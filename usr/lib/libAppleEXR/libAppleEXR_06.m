uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      v12 = **a4;
    }

    if (*(*a5 + 24))
    {
      v13 = **a5;
    }

    v129 = 4;
    v18 = *(a6 + 8);
    v19 = a3[3];
    v127 = v19.i32[0];
    v125 = v18;
    v123[1] = result;
    v126 = a3[6].i32[1] + v19.i32[1] * v17;
    v20 = a3[7].u32[1];
    v124 = vmin_u32(vmls_s32(*(*(*&v18[5] + 8 * v20) + 16), v18[6], v19), v18[6]).u32[0];
    v128 = v20;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
    if (*(*a7 + 24))
    {
      LODWORD(a7) = **a7;
    }

    v22 = a3[6].u32[1];
    if (a3[7].u32[0] + v22 < v17)
    {
      v24 = a3[3].i32[1] * *(a2 + 60);
      v25 = a3[5].u32[1];
      v26 = v25 + a9;
      v27.i64[0] = __PAIR64__(a7, v13);
      v27.i64[1] = __PAIR64__(a7, v13);
      v120 = vdupq_n_s32(v12);
      do
      {
        v121 = v21;
        v122 = v27;
        v126 = v24 + v22;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
        v21 = v121;
        v27 = v122;
        v32 = v123[0];
        if (v123[0])
        {
          if (v25 >= 0x20)
          {
            v44 = 0;
            v33 = 0;
            v45 = v124 + v123[0];
            v46 = v124 + v123[0] + 2 * v124;
            v47 = v123[0] + 2 * v124;
            v36 = xmmword_296B8F010;
            v35 = xmmword_296B8F000;
            v38 = xmmword_296B8F030;
            v37 = xmmword_296B8F020;
            v40 = xmmword_296B8F050;
            v39 = xmmword_296B8F040;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F060;
            v43 = xmmword_296B8F080;
            do
            {
              v133.val[1] = *(v123[0] + v44);
              v130.val[1] = *(v123[0] + v44 + 16);
              v137.val[1] = *(v45 + v44);
              v135.val[1] = *(v45 + v44 + 16);
              v133.val[0] = *(v47 + v44);
              v130.val[0] = *(v47 + v44 + 16);
              v137.val[0] = *(v46 + v44);
              v135.val[0] = *(v46 + v44 + 16);
              v139.val[1] = vqtbl2q_s8(v130, xmmword_296B8F000);
              v139.val[0] = vqtbl2q_s8(v135, xmmword_296B8F010);
              v139.val[0] = vqtbl2q_s8(v139, xmmword_296B8F020);
              v48 = vqtbl2q_s8(v130, xmmword_296B8F030);
              v139.val[1] = vqtbl2q_s8(v135, xmmword_296B8F040);
              v141.val[1] = vqtbl2q_s8(v130, xmmword_296B8F050);
              v141.val[0] = vqtbl2q_s8(v135, xmmword_296B8F060);
              v139.val[1] = vqtbl2q_s8(*(&v139 + 16), xmmword_296B8F020);
              v49 = vqtbl2q_s8(v141, xmmword_296B8F020);
              v130.val[1] = vqtbl2q_s8(v130, xmmword_296B8F070);
              v130.val[0] = vqtbl2q_s8(v135, xmmword_296B8F080);
              v135.val[1] = vqtbl2q_s8(v133, xmmword_296B8F050);
              v135.val[0] = vqtbl2q_s8(v137, xmmword_296B8F060);
              v130.val[0] = vqtbl2q_s8(v130, xmmword_296B8F020);
              v130.val[1] = vqtbl2q_s8(v135, xmmword_296B8F020);
              v135.val[1] = vqtbl2q_s8(v133, xmmword_296B8F070);
              v135.val[0] = vqtbl2q_s8(v137, xmmword_296B8F080);
              v141.val[1] = vqtbl2q_s8(v133, xmmword_296B8F000);
              v141.val[0] = vqtbl2q_s8(v137, xmmword_296B8F010);
              v135.val[0] = vqtbl2q_s8(v135, xmmword_296B8F020);
              v135.val[1] = vqtbl2q_s8(v141, xmmword_296B8F020);
              v133.val[1] = vqtbl2q_s8(v133, xmmword_296B8F030);
              v133.val[0] = vqtbl2q_s8(v137, xmmword_296B8F040);
              v133.val[0] = vqtbl2q_s8(v133, xmmword_296B8F020);
              v139.val[0] = vaddq_s32(vshlq_n_s64(v139.val[0], 0x20uLL), v139.val[0]);
              v139.val[1] = vaddq_s32(vshlq_n_s64(v139.val[1], 0x20uLL), v139.val[1]);
              v50 = vaddq_s32(vshlq_n_s64(v49, 0x20uLL), v49);
              v130.val[0] = vaddq_s32(vshlq_n_s64(v130.val[0], 0x20uLL), v130.val[0]);
              v130.val[1] = vaddq_s32(vshlq_n_s64(v130.val[1], 0x20uLL), v130.val[1]);
              v135.val[0] = vaddq_s32(vshlq_n_s64(v135.val[0], 0x20uLL), v135.val[0]);
              v135.val[1] = vaddq_s32(vshlq_n_s64(v135.val[1], 0x20uLL), v135.val[1]);
              v133.val[0] = vaddq_s32(vshlq_n_s64(v133.val[0], 0x20uLL), v133.val[0]);
              v30 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v133.val[0].i8, 1), v133.val[0]), vaddq_s32(vdupq_lane_s32(*v135.val[1].i8, 1), v135.val[1]));
              v31 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v139.val[1].i8, 1), v139.val[1]), vaddq_s32(vdupq_lane_s32(*v139.val[0].i8, 1), v139.val[0]));
              v29 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v135.val[0].i8, 1), v135.val[0]), vaddq_s32(vdupq_lane_s32(*v130.val[1].i8, 1), v130.val[1])), v30);
              v28 = vaddq_s32(vaddq_s32(v31, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v130.val[0].i8, 1), v130.val[0]), vaddq_s32(vdupq_lane_s32(*v50.i8, 1), v50))), v29);
              v33 += v28.u32[3];
              v51 = v44 + 64;
              v44 += 32;
            }

            while (v51 <= v25);
            v34 = v25 & 0xFFFFFFE0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v36 = xmmword_296B8F010;
            v35 = xmmword_296B8F000;
            v38 = xmmword_296B8F030;
            v37 = xmmword_296B8F020;
            v40 = xmmword_296B8F050;
            v39 = xmmword_296B8F040;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F060;
            v43 = xmmword_296B8F080;
          }

          if ((v34 | 8) <= v25)
          {
            do
            {
              v28.i64[0] = *(v123[0] + v34);
              v29.i64[0] = *(v124 + v123[0] + v34);
              v30.i64[0] = *(v123[0] + 2 * v124 + v34);
              v31.i64[0] = *(v124 + v123[0] + 2 * v124 + v34);
              v53 = vzip1q_s8(v31, v29);
              v54 = vzip1q_s8(v30, v28);
              v55 = vzip1q_s8(v53, v54);
              v56 = vzip2q_s8(v53, v54);
              v57 = vaddq_s32(vshlq_n_s64(v55, 0x20uLL), v55);
              v58 = vaddq_s32(vshlq_n_s64(v56, 0x20uLL), v56);
              v29 = vdupq_lane_s32(*v58.i8, 1);
              v31 = vdupq_lane_s32(*v57.i8, 1);
              v30 = vaddq_s32(v31, v57);
              v28 = vaddq_s32(v29, v58);
              v33 += v28.i32[3] + v30.i32[3];
              v52 = v34 + 8;
              v59 = v34 + 16;
              v34 += 8;
            }

            while (v59 <= v25);
          }

          else
          {
            v52 = v34;
          }

          v60 = v25 - v52;
          if (v25 > v52)
          {
            v61 = (v52 + v123[0]);
            v62 = &v61[2 * v124];
            v63 = &v61[v124];
            do
            {
              v64 = *v61++;
              v65 = v64 << 24;
              v66 = *v63++;
              v67 = v65 | (v66 << 16);
              v68 = *v62++;
              v33 += v67 | (v68 << 8) | v68;
              --v60;
            }

            while (v60);
            v52 = v25;
          }

          if (v52 + 32 <= v26)
          {
            v71 = v124 + v123[0];
            v72 = v124 + v123[0] + 2 * v124;
            v73 = v123[0] + 2 * v124;
            v74 = a11;
            do
            {
              v131.val[1] = *(v32 + v52);
              v134.val[1] = *(v32 + v52 + 16);
              v136.val[1] = *(v71 + v52);
              v138.val[1] = *(v71 + v52 + 16);
              v131.val[0] = *(v73 + v52);
              v134.val[0] = *(v73 + v52 + 16);
              v136.val[0] = *(v72 + v52);
              v138.val[0] = *(v72 + v52 + 16);
              v140.val[1] = vqtbl2q_s8(v131, v42);
              v140.val[0] = vqtbl2q_s8(v136, v43);
              v140.val[0] = vqtbl2q_s8(v140, v37);
              v75 = vqtbl2q_s8(v131, v38);
              v140.val[1] = vqtbl2q_s8(v136, v39);
              v142.val[1] = vqtbl2q_s8(v134, v42);
              v142.val[0] = vqtbl2q_s8(v138, v43);
              v140.val[1] = vqtbl2q_s8(*(&v140 + 16), v37);
              v76 = vqtbl2q_s8(v142, v37);
              v142.val[1] = vqtbl2q_s8(v134, v38);
              v142.val[0] = vqtbl2q_s8(v138, v39);
              v143.val[1] = vqtbl2q_s8(v134, v35);
              v143.val[0] = vqtbl2q_s8(v138, v36);
              v142.val[0] = vqtbl2q_s8(v142, v37);
              v142.val[1] = vqtbl2q_s8(v143, v37);
              v134.val[1] = vqtbl2q_s8(v134, v40);
              v134.val[0] = vqtbl2q_s8(v138, v41);
              v138.val[1] = vqtbl2q_s8(v131, v35);
              v138.val[0] = vqtbl2q_s8(v136, v36);
              v134.val[0] = vqtbl2q_s8(v134, v37);
              v134.val[1] = vqtbl2q_s8(v138, v37);
              v131.val[1] = vqtbl2q_s8(v131, v40);
              v131.val[0] = vqtbl2q_s8(v136, v41);
              v131.val[0] = vqtbl2q_s8(v131, v37);
              v140.val[0] = vaddq_s32(vshlq_n_s64(v140.val[0], 0x20uLL), v140.val[0]);
              v140.val[1] = vaddq_s32(vshlq_n_s64(v140.val[1], 0x20uLL), v140.val[1]);
              v77 = vaddq_s32(vshlq_n_s64(v76, 0x20uLL), v76);
              v138.val[1] = vaddq_s32(vshlq_n_s64(v142.val[0], 0x20uLL), v142.val[0]);
              v138.val[0] = vaddq_s32(vshlq_n_s64(v142.val[1], 0x20uLL), v142.val[1]);
              v134.val[0] = vaddq_s32(vshlq_n_s64(v134.val[0], 0x20uLL), v134.val[0]);
              v134.val[1] = vaddq_s32(vshlq_n_s64(v134.val[1], 0x20uLL), v134.val[1]);
              v131.val[0] = vaddq_s32(vshlq_n_s64(v131.val[0], 0x20uLL), v131.val[0]);
              v131.val[1] = vdupq_lane_s32(*v131.val[0].i8, 1);
              v136.val[0] = vdupq_lane_s32(*v134.val[1].i8, 1);
              v136.val[1] = vdupq_lane_s32(*v134.val[0].i8, 1);
              v142.val[0] = vdupq_lane_s32(*v138.val[0].i8, 1);
              v142.val[1] = vdupq_lane_s32(*v138.val[1].i8, 1);
              v143.val[0] = vdupq_lane_s32(*v77.i8, 1);
              v143.val[1] = vdupq_lane_s32(*v140.val[0].i8, 1);
              v131.val[1].i64[0] = 0;
              v131.val[1] = vaddq_s32(v131.val[1], v131.val[0]);
              v136.val[0].i64[0] = 0;
              v134.val[1] = vaddq_s32(v136.val[0], v134.val[1]);
              v136.val[0] = vdupq_lane_s32(*v140.val[1].i8, 1);
              v143.val[1].i64[0] = 0;
              v143.val[0].i64[0] = 0;
              v136.val[0].i64[0] = 0;
              v142.val[1].i64[0] = 0;
              v142.val[0].i64[0] = 0;
              v136.val[1].i64[0] = 0;
              v134.val[0] = vaddq_s32(v136.val[1], v134.val[0]);
              v136.val[1] = vaddq_s32(v142.val[0], v138.val[0]);
              v131.val[0] = vaddq_s32(v142.val[1], v138.val[1]);
              v138.val[0] = vaddq_s32(v143.val[0], v77);
              v78 = vaddq_s32(v143.val[1], v140.val[0]);
              v140.val[0] = vaddq_s32(v136.val[0], v140.val[1]);
              v136.val[0] = vaddq_s32(vdupq_laneq_s32(v138.val[0], 3), v134.val[0]);
              v142.val[0] = vaddq_s32(vdupq_laneq_s32(v78, 3), v131.val[1]);
              v140.val[1] = vdupq_laneq_s32(v142.val[0], 3);
              v138.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v140.val[0], 3), v134.val[1]), v140.val[1]);
              v134.val[1] = vdupq_laneq_s32(v136.val[0], 3);
              v131.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v131.val[0], 3), v136.val[1]), v134.val[1]);
              v134.val[0] = vdupq_laneq_s32(v138.val[1], 3);
              v136.val[1] = vdupq_n_s32(v33);
              v29 = vaddq_s32(vaddq_s32(v131.val[1], v136.val[1]), v134.val[0]);
              v142.val[0] = vaddq_s32(v142.val[0], v136.val[1]);
              v79 = vaddq_s32(v78, v136.val[1]);
              v21 = vzip2q_s32(v120, v29);
              v142.val[1] = vzip1q_s32(v120, v79);
              v80 = v74 + 16;
              v143.val[0] = v122;
              v81 = v74;
              vst2q_f32(v81, *(&v142 + 16));
              v81 += 8;
              v142.val[1] = vzip1q_s32(v120, v142.val[0]);
              v143.val[0] = v122;
              vst2q_f32(v80, *(&v142 + 16));
              v82 = v74 + 24;
              v83 = v74 + 32;
              v140.val[0] = vaddq_s32(vaddq_s32(v140.val[0], v136.val[1]), v140.val[1]);
              v142.val[0] = vzip2q_s32(v120, v142.val[0]);
              v142.val[1] = v122;
              vst2q_f32(v82, v142);
              v142.val[0] = vzip1q_s32(v120, v140.val[0]);
              v142.val[1] = v122;
              vst2q_f32(v83, v142);
              v84 = v74 + 40;
              v85 = v74 + 48;
              v138.val[1] = vaddq_s32(v138.val[1], v136.val[1]);
              v140.val[0] = vzip2q_s32(v120, v140.val[0]);
              v140.val[1] = v122;
              vst2q_f32(v84, v140);
              v140.val[0] = vzip1q_s32(v120, v138.val[1]);
              v140.val[1] = v122;
              vst2q_f32(v85, v140);
              v140.val[0] = vzip2q_s32(v120, v79);
              v140.val[1] = v122;
              vst2q_f32(v81, v140);
              v86 = v74 + 56;
              v87 = v74 + 64;
              v138.val[0] = vaddq_s32(vaddq_s32(v138.val[0], v136.val[1]), v134.val[0]);
              v140.val[0] = vzip2q_s32(v120, v138.val[1]);
              v140.val[1] = v122;
              vst2q_f32(v86, v140);
              v140.val[0] = vzip1q_s32(v120, v138.val[0]);
              v140.val[1] = v122;
              vst2q_f32(v87, v140);
              v88 = v74 + 72;
              v89 = v74 + 80;
              v136.val[0] = vaddq_s32(vaddq_s32(v136.val[0], v136.val[1]), v134.val[0]);
              v138.val[0] = vzip2q_s32(v120, v138.val[0]);
              v138.val[1] = v122;
              vst2q_f32(v88, v138);
              v138.val[0] = vzip1q_s32(v120, v136.val[0]);
              v138.val[1] = v122;
              vst2q_f32(v89, v138);
              v90 = v74 + 88;
              v91 = v74 + 96;
              v28 = vaddq_s32(vaddq_s32(vaddq_s32(v131.val[0], v134.val[1]), v136.val[1]), v134.val[0]);
              v134.val[0] = vzip2q_s32(v120, v136.val[0]);
              v134.val[1] = v122;
              vst2q_f32(v90, v134);
              v134.val[0] = vzip1q_s32(v120, v28);
              v134.val[1] = v122;
              vst2q_f32(v91, v134);
              v92 = v74 + 104;
              v93 = v74 + 112;
              v134.val[0] = vzip2q_s32(v120, v28);
              v134.val[1] = v122;
              vst2q_f32(v92, v134);
              v30 = vzip1q_s32(v120, v29);
              v31 = v122;
              vst2q_f32(v93, *v30.i8);
              v33 = v29.u32[3];
              v94 = v74 + 120;
              vst2q_f32(v94, *v21.i8);
              v70 = v74 + 128;
              v69 = v52 + 32;
              v95 = v52 + 64;
              v52 += 32;
              v74 += 128;
            }

            while (v95 <= v26);
          }

          else
          {
            v69 = v52;
            v70 = a11;
          }

          if (v69 + 8 <= v26)
          {
            v98 = v124 + v32;
            v99 = v124 + v32 + 2 * v124;
            v100 = v32 + 2 * v124;
            do
            {
              v28.i64[0] = *(v32 + v69);
              v29.i64[0] = *(v98 + v69);
              v30.i64[0] = *(v100 + v69);
              v31.i64[0] = *(v99 + v69);
              v101 = vzip1q_s8(v31, v29);
              v102 = vzip1q_s8(v30, v28);
              v103 = vzip1q_s8(v101, v102);
              v104 = vzip2q_s8(v101, v102);
              v105 = vaddq_s32(vshlq_n_s64(v103, 0x20uLL), v103);
              v106 = vaddq_s32(vshlq_n_s64(v104, 0x20uLL), v104);
              v107 = vdupq_lane_s32(*v106.i8, 1);
              v108 = vdupq_lane_s32(*v105.i8, 1);
              v108.i64[0] = 0;
              v107.i64[0] = 0;
              v109 = vaddq_s32(v108, v105);
              v110 = vdupq_laneq_s32(v109, 3);
              v111 = vdupq_n_s32(v33);
              v112 = vaddq_s32(v109, v111);
              v113 = vaddq_s32(vaddq_s32(v107, vaddq_s32(v106, v111)), v110);
              v33 = v113.u32[3];
              v31 = vzip1q_s32(v120, v112);
              v114 = v122;
              v115 = v70 + 16;
              v116 = v70 + 24;
              v117 = v70;
              vst2q_f32(v117, *v31.i8);
              v117 += 8;
              v132.val[0] = vzip2q_s32(v120, v112);
              v132.val[1] = v122;
              vst2q_f32(v117, v132);
              v132.val[0] = vzip1q_s32(v120, v113);
              v30 = v122;
              vst2q_f32(v115, *(&v30 - 1));
              v28 = vzip2q_s32(v120, v113);
              v29 = v122;
              vst2q_f32(v116, *v28.i8);
              v97 = v70 + 32;
              v96 = v69 + 8;
              v118 = v69 + 16;
              v69 += 8;
              v70 += 32;
            }

            while (v118 <= v26);
          }

          else
          {
            v96 = v69;
            v97 = v70;
          }

          if (v96 < v26)
          {
            do
            {
              v33 += (*(v123[0] + v96) << 24) | (*(v123[0] + v96 + v124) << 16) | (*(v123[0] + v96 + 2 * v124) << 8) | *(v123[0] + v96 + 2 * v124);
              *&v119 = __PAIR64__(v13, v12);
              *(&v119 + 1) = __PAIR64__(a7, v33);
              *v97 = v119;
              v97 += 4;
              ++v96;
            }

            while (v26 != v96);
          }
        }

        a11 = (a11 + a12);
        v22 += a10;
      }

      while (v22 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

__int16 *CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(__int16 *result, uint64_t a2, int32x2_t *a3, uint64_t **a4, uint64_t **a5, uint64_t a6, uint64_t **a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v15 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v16 = _D0;
    }

    else
    {
      v16 = 32256;
    }

    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v22 = _D0;
    }

    else
    {
      v22 = 32256;
    }

    v129 = 2;
    v24 = *(a6 + 8);
    v25 = a3[3];
    v127 = v25.i32[0];
    v125 = v24;
    v123[1] = result;
    v126 = a3[6].i32[1] + v25.i32[1] * v15;
    v26 = a3[7].u32[1];
    v124 = vmin_u32(vmls_s32(*(*(*&v24[5] + 8 * v26) + 16), v24[6], v25), v24[6]).u32[0];
    v128 = v26;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
    if (*(*a7 + 24))
    {
      _D0 = **a7;
      __asm { FCVT            H0, D0 }

      v29 = _D0;
    }

    else
    {
      v29 = 32256;
    }

    v30 = a3[6].u32[1];
    if (a3[7].u32[0] + v30 < v15)
    {
      v32 = a3[3].i32[1] * *(a2 + 60);
      v33 = a3[5].u32[1];
      v34 = v33 + a9;
      v130.val[1] = vdupq_n_s16(v29);
      v130.val[0] = vdupq_n_s16(v22);
      v35 = vqtbl2q_s8(v130, xmmword_296B6EDD0);
      LOWORD(v36) = v16;
      HIWORD(v36) = v22;
      v119 = v36;
      v120 = vdupq_n_s16(v16);
      do
      {
        v121 = v27;
        v122 = v35;
        v126 = v32 + v30;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
        v39.i64[0] = 0xFFFFFFFF00000000;
        v39.i64[1] = 0xFFFFFFFF00000000;
        v27 = v121;
        v35 = v122;
        v40 = v123[0];
        if (v123[0])
        {
          if (v33 >= 0x20)
          {
            v43 = 0;
            v41 = 0;
            v44 = v124 + v123[0];
            do
            {
              v46 = *(v123[0] + v43);
              v45 = *(v123[0] + v43 + 16);
              v48 = *(v44 + v43);
              v47 = *(v44 + v43 + 16);
              v49 = vzip1q_s8(v48, v46);
              v50 = vzip2q_s8(v48, v46);
              v51 = vzip1q_s8(v47, v45);
              v52 = vzip2q_s8(v47, v45);
              v53 = vaddq_s16(vshlq_n_s32(v49, 0x10uLL), v49);
              v54 = vaddq_s16(vshlq_n_s32(v50, 0x10uLL), v50);
              v55 = vaddq_s16(vshlq_n_s32(v51, 0x10uLL), v51);
              v56 = vaddq_s16(vshlq_n_s32(v52, 0x10uLL), v52);
              v57 = vaddq_s16(vandq_s8(vqtbl1q_s8(v55, xmmword_296B8F090), v39), v55);
              v58 = vaddq_s16(vandq_s8(vqtbl1q_s8(v54, xmmword_296B8F090), v39), v54);
              v59 = vaddq_s16(vandq_s8(vqtbl1q_s8(v53, xmmword_296B8F090), v39), v53);
              v60 = vaddq_s16(vandq_s8(vqtbl1q_s8(v56, xmmword_296B8F090), v39), v56);
              v38 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v59.i8, 3), v59), vaddq_s16(vdupq_lane_s16(*v58.i8, 3), v58));
              v37 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v57.i8, 3), v57), vaddq_s16(vdupq_lane_s16(*v60.i8, 3), v60)), v38);
              v41 += v37.u16[7];
              v61 = v43 + 64;
              v43 += 32;
            }

            while (v61 <= v33);
            v42 = v33 & 0xFFFFFFE0;
          }

          else
          {
            v41 = 0;
            v42 = 0;
          }

          if ((v42 | 8) <= v33)
          {
            do
            {
              v37.i64[0] = *(v123[0] + v42);
              v38.i64[0] = *(v124 + v123[0] + v42);
              v63 = vzip1q_s8(v38, v37);
              v64 = vaddq_s16(vshlq_n_s32(v63, 0x10uLL), v63);
              v38 = vextq_s8(v64, v64, 0xCuLL);
              v37 = vaddq_s16(v38, v64);
              v41 += v37.u16[7] + v37.u16[3];
              v62 = v42 + 8;
              v65 = v42 + 16;
              v42 += 8;
            }

            while (v65 <= v33);
          }

          else
          {
            v62 = v42;
          }

          v66 = v33 - v62;
          if (v33 > v62)
          {
            v67 = (v62 + v123[0] + v124);
            v68 = (v123[0] + v62);
            do
            {
              v70 = *v68++;
              v69 = v70;
              v71 = *v67++;
              v41 += v71 | (v69 << 8);
              --v66;
            }

            while (v66);
            v62 = v33;
          }

          if (v62 + 32 <= v34)
          {
            v74 = v124 + v123[0];
            v75 = a11;
            do
            {
              v77 = *(v40 + v62);
              v76 = *(v40 + v62 + 16);
              v79 = *(v74 + v62);
              v78 = *(v74 + v62 + 16);
              v80 = vzip2q_s8(v79, v77);
              v81 = vzip2q_s8(v78, v76);
              v82 = vzip1q_s8(v79, v77);
              v83 = vzip1q_s8(v78, v76);
              v84 = vaddq_s16(vshlq_n_s32(v80, 0x10uLL), v80);
              v85 = vaddq_s16(vshlq_n_s32(v81, 0x10uLL), v81);
              v86 = vaddq_s16(vshlq_n_s32(v83, 0x10uLL), v83);
              v87 = vaddq_s16(vshlq_n_s32(v82, 0x10uLL), v82);
              v88 = vaddq_s16(vandq_s8(vqtbl1q_s8(v86, xmmword_296B8F090), v39), v86);
              v89 = vaddq_s16(vandq_s8(vqtbl1q_s8(v85, xmmword_296B8F090), v39), v85);
              v90 = vaddq_s16(vandq_s8(vqtbl1q_s8(v84, xmmword_296B8F090), v39), v84);
              v91 = vaddq_s16(vandq_s8(vqtbl1q_s8(v87, xmmword_296B8F090), v39), v87);
              v92 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v91.i8, 3), xmmword_296B8F0A0), v91);
              v93 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v88.i8, 3), xmmword_296B8F0A0), v88);
              v94 = vaddq_s16(vdupq_laneq_s16(v92, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v90.i8, 3), xmmword_296B8F0A0), v90));
              v95 = vdupq_laneq_s16(v94, 7);
              v96 = vaddq_s16(vdupq_laneq_s16(v93, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v89.i8, 3), xmmword_296B8F0A0), v89));
              v97 = vdupq_n_s16(v41);
              v98 = vaddq_s16(v94, v97);
              v37 = vaddq_s16(vaddq_s16(v96, v97), v95);
              v99 = vaddq_s16(vaddq_s16(v93, v97), v95);
              v100 = vaddq_s16(v92, v97);
              v133.val[0] = vzip1q_s16(v120, v100);
              v101 = v75 + 32;
              v27 = vzip2q_s16(v120, v37);
              v102 = v75 + 48;
              v103 = v75 + 64;
              v104 = v75 + 80;
              v105 = v75 + 96;
              v106 = v75 + 112;
              v133.val[1] = v122;
              v107 = v75;
              vst2q_s16(v107, v133);
              result = v107 + 16;
              v133.val[0] = vzip1q_s16(v120, v98);
              v133.val[1] = v122;
              vst2q_s16(v101, v133);
              v132.val[0] = vzip2q_s16(v120, v98);
              v132.val[1] = v122;
              vst2q_s16(v102, v132);
              v132.val[0] = vzip1q_s16(v120, v99);
              v132.val[1] = v122;
              vst2q_s16(v103, v132);
              v132.val[0] = vzip2q_s16(v120, v99);
              v132.val[1] = v122;
              vst2q_s16(v104, v132);
              v132.val[0] = vzip1q_s16(v120, v37);
              v132.val[1] = v122;
              vst2q_s16(v105, v132);
              v38 = vzip2q_s16(v120, v100);
              v132.val[0] = v122;
              vst2q_s16(result, *v38.i8);
              v41 = v37.u16[7];
              vst2q_s16(v106, *v27.i8);
              v73 = v75 + 128;
              v72 = v62 + 32;
              v108 = v62 + 64;
              v62 += 32;
              v75 += 128;
            }

            while (v108 <= v34);
          }

          else
          {
            v72 = v62;
            v73 = a11;
          }

          if (v72 + 8 <= v34)
          {
            v111 = v124 + v40;
            do
            {
              v37.i64[0] = *(v40 + v72);
              v38.i64[0] = *(v111 + v72);
              v112 = vzip1q_s8(v38, v37);
              v113 = vaddq_s16(vshlq_n_s32(v112, 0x10uLL), v112);
              v114 = vaddq_s16(vandq_s8(vqtbl1q_s8(v113, xmmword_296B8F090), v39), v113);
              v115 = vaddq_s16(vaddq_s16(v114, vdupq_n_s16(v41)), vandq_s8(vdupq_lane_s16(*v114.i8, 3), xmmword_296B8F0A0));
              v41 = v115.u16[7];
              v131.val[0] = vzip1q_s16(v120, v115);
              v131.val[1] = v122;
              v110 = v73 + 32;
              vst2q_s16(v73, v131);
              v116 = v73 + 16;
              v37 = vzip2q_s16(v120, v115);
              v38 = v122;
              vst2q_s16(v116, *v37.i8);
              v109 = v72 + 8;
              v117 = v72 + 16;
              v72 += 8;
              v73 = v110;
            }

            while (v117 <= v34);
          }

          else
          {
            v109 = v72;
            v110 = v73;
          }

          if (v109 < v34)
          {
            do
            {
              v41 += *(v123[0] + v109 + v124) | (*(v123[0] + v109) << 8);
              LODWORD(v118) = v119;
              WORD2(v118) = v41;
              HIWORD(v118) = v29;
              *v110 = v118;
              v110 += 4;
              ++v109;
            }

            while (v34 != v109);
          }
        }

        a11 = (a11 + a12);
        v30 += a10;
      }

      while (v30 + a3[7].u32[0] < v15);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<float,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, int32x2_t *a3, double **a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, uint64_t a9, uint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  if (a10)
  {
    v16 = HIDWORD(*(a2 + 56));
    v17 = *a4;
    if (*(*a4 + 24))
    {
      a8 = *v17;
      *&a8 = *v17;
    }

    else
    {
      LODWORD(a8) = 2143289344;
    }

    v129 = *&a8;
    v18 = *(*a5 + 24) ? **a5 : NAN;
    v126 = v18;
    v137 = 3;
    v19 = *(a6 + 8);
    v20 = a3[3];
    v135 = v20.i32[0];
    v133 = v19;
    v131[1] = result;
    v134 = a3[6].i32[1] + v20.i32[1] * v16;
    v21 = a3[7].u32[1];
    v132 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v136 = v21;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v131);
    if (*(*a7 + 24))
    {
      v23 = **a7;
    }

    else
    {
      v23 = NAN;
    }

    LODWORD(v24) = v129.i32[0];
    v25 = a3[6].u32[1];
    if (a3[7].u32[0] + v25 < v16)
    {
      v27 = a3[3].i32[1] * *(a2 + 60);
      v28 = a3[5].u32[1];
      v29 = vdupq_lane_s32(v129, 0);
      v30 = v28 + a10;
      v31.i64[0] = __PAIR64__(LODWORD(v23), LODWORD(v126));
      v31.i64[1] = __PAIR64__(LODWORD(v23), LODWORD(v126));
      *(&v24 + 1) = v126;
      v130 = v24;
      v124 = v29;
      v125 = v23;
      do
      {
        v127 = v22;
        v128 = v31;
        v134 = v27 + v25;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v131);
        v22 = v127;
        v31 = v128;
        v35 = v131[0];
        if (v131[0])
        {
          if (v28 >= 0x20)
          {
            v47 = 0;
            v48 = v131[0] + 2 * v132;
            v49 = v132 + v131[0];
            v37.i64[0] = 0;
            v38 = xmmword_296B8F0B0;
            v39 = xmmword_296B8F050;
            v41 = xmmword_296B8F000;
            v40 = xmmword_296B8F020;
            v43 = xmmword_296B8F070;
            v42 = xmmword_296B8F0C0;
            v45 = xmmword_296B8F030;
            v44 = xmmword_296B8F0D0;
            v46 = xmmword_296B8F0E0;
            do
            {
              v138.val[1] = *(v131[0] + v47);
              v141.val[1] = *(v131[0] + v47 + 16);
              v51 = *(v49 + v47);
              v50 = *(v49 + v47 + 16);
              v138.val[0] = *(v48 + v47);
              v141.val[0] = *(v48 + v47 + 16);
              v144.val[1] = vqtbl2q_s8(v138, xmmword_296B8F050);
              v144.val[0] = vqtbl1q_s8(v51, xmmword_296B8F0B0);
              v52 = vqtbl2q_s8(v144, xmmword_296B8F020);
              v144.val[1] = vqtbl2q_s8(v141, xmmword_296B8F050);
              v144.val[0] = vqtbl1q_s8(v50, xmmword_296B8F0B0);
              v144.val[0] = vqtbl2q_s8(v144, xmmword_296B8F020);
              v53 = vqtbl2q_s8(v141, xmmword_296B8F000);
              v144.val[1] = vqtbl1q_s8(v50, xmmword_296B8F0C0);
              v144.val[1] = vqtbl2q_s8(*(&v144 + 16), xmmword_296B8F020);
              v146.val[1] = vqtbl2q_s8(v138, xmmword_296B8F070);
              v146.val[0] = vqtbl1q_s8(v51, xmmword_296B8F0D0);
              v146.val[0] = vqtbl2q_s8(v146, xmmword_296B8F020);
              v54 = vqtbl2q_s8(v138, xmmword_296B8F000);
              v146.val[1] = vqtbl1q_s8(v51, xmmword_296B8F0C0);
              v138.val[1] = vqtbl2q_s8(v138, xmmword_296B8F030);
              v138.val[0] = vqtbl1q_s8(v51, xmmword_296B8F0E0);
              v149.val[1] = vqtbl2q_s8(v141, xmmword_296B8F070);
              v55 = vqtbl2q_s8(*(&v146 + 16), xmmword_296B8F020);
              v149.val[0] = vqtbl1q_s8(v50, xmmword_296B8F0D0);
              v146.val[1] = vqtbl2q_s8(v149, xmmword_296B8F020);
              v141.val[1] = vqtbl2q_s8(v141, xmmword_296B8F030);
              v141.val[0] = vqtbl1q_s8(v50, xmmword_296B8F0E0);
              v141.val[0] = vqtbl2q_s8(v141, xmmword_296B8F020);
              v138.val[0] = vqtbl2q_s8(v138, xmmword_296B8F020);
              v56 = vaddq_s32(vshlq_n_s64(v52, 0x20uLL), v52);
              v144.val[0] = vaddq_s32(vshlq_n_s64(v144.val[0], 0x20uLL), v144.val[0]);
              v144.val[1] = vaddq_s32(vshlq_n_s64(v144.val[1], 0x20uLL), v144.val[1]);
              v146.val[0] = vaddq_s32(vshlq_n_s64(v146.val[0], 0x20uLL), v146.val[0]);
              v57 = vaddq_s32(vshlq_n_s64(v55, 0x20uLL), v55);
              v138.val[0] = vaddq_s32(vshlq_n_s64(v138.val[0], 0x20uLL), v138.val[0]);
              v141.val[1] = vaddq_s32(vshlq_n_s64(v146.val[1], 0x20uLL), v146.val[1]);
              v138.val[1] = vaddq_s32(vshlq_n_s64(v141.val[0], 0x20uLL), v141.val[0]);
              v149.val[1] = vdupq_lane_s32(*v144.val[1].i8, 1);
              v58 = vdupq_lane_s32(*v144.val[0].i8, 1);
              v59 = vdupq_lane_s32(*v56.i8, 1);
              v59.i64[0] = 0;
              v58.i64[0] = 0;
              v149.val[1].i64[0] = 0;
              v34 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v146.val[0].i8, 1), v146.val[0]), vaddq_s32(v59, v56));
              v33 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v138.val[1].i8, 1), v138.val[1]), 3), vaddq_s32(v149.val[1], v144.val[1])), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v141.val[1].i8, 1), v141.val[1]), 3), vaddq_s32(v58, v144.val[0])));
              v32 = vaddq_s32(v33, vaddq_s32(v34, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v138.val[0].i8, 1), v138.val[0]), vaddq_s32(vdupq_lane_s32(*v57.i8, 1), v57))));
              v37 = vaddq_s32(v32, vdupq_lane_s32(*v37.i8, 0));
              v37.i32[0] = v37.i32[3];
              v60 = v47 + 64;
              v47 += 32;
            }

            while (v60 <= v28);
            v36 = v28 & 0xFFFFFFE0;
          }

          else
          {
            v36 = 0;
            v37.i64[0] = 0;
            v38 = xmmword_296B8F0B0;
            v39 = xmmword_296B8F050;
            v41 = xmmword_296B8F000;
            v40 = xmmword_296B8F020;
            v43 = xmmword_296B8F070;
            v42 = xmmword_296B8F0C0;
            v45 = xmmword_296B8F030;
            v44 = xmmword_296B8F0D0;
            v46 = xmmword_296B8F0E0;
          }

          if ((v36 | 8) <= v28)
          {
            do
            {
              v32.i64[0] = *(v131[0] + v36);
              v33.i64[0] = *(v132 + v131[0] + v36);
              v34.i64[0] = *(v131[0] + 2 * v132 + v36);
              v62 = vzip1q_s8(0, v33);
              v63 = vzip1q_s8(v34, v32);
              v64 = vzip1q_s8(v62, v63);
              v65 = vzip2q_s8(v62, v63);
              v32 = vaddq_s32(vshlq_n_s64(v65, 0x20uLL), v65);
              v33 = vdupq_lane_s32(*v32.i8, 1);
              v66 = vaddq_s32(vshlq_n_s64(v64, 0x20uLL), v64);
              v34 = vaddq_s32(vdupq_lane_s32(*v66.i8, 1), v66);
              v37 = vaddq_s32(v33, vaddq_s32(v32, vdupq_lane_s32(*v37.i8, 0)));
              v37.i32[0] = v37.i32[3] + v34.i32[3];
              v61 = v36 + 8;
              v67 = v36 + 16;
              v36 += 8;
            }

            while (v67 <= v28);
          }

          else
          {
            v61 = v36;
          }

          if (v61 <= v28)
          {
            v68 = v28;
          }

          else
          {
            v68 = v61;
          }

          if (v68 + 32 <= v30)
          {
            v71 = v131[0] + 2 * v132;
            v72 = v132 + v131[0];
            v73 = a12;
            do
            {
              v139.val[1] = *(v35 + v68);
              v142.val[1] = *(v35 + v68 + 16);
              v75 = *(v72 + v68);
              v74 = *(v72 + v68 + 16);
              v139.val[0] = *(v71 + v68);
              v142.val[0] = *(v71 + v68 + 16);
              v145.val[1] = vqtbl2q_s8(v139, v43);
              v145.val[0] = vqtbl1q_s8(v75, v44);
              v76 = vqtbl2q_s8(v145, v40);
              v145.val[1] = vqtbl2q_s8(v139, v45);
              v145.val[0] = vqtbl1q_s8(v75, v46);
              v147.val[1] = vqtbl2q_s8(v142, v43);
              v147.val[0] = vqtbl1q_s8(v74, v44);
              v145.val[0] = vqtbl2q_s8(v145, v40);
              v145.val[1] = vqtbl2q_s8(v147, v40);
              v147.val[1] = vqtbl2q_s8(v142, v45);
              v147.val[0] = vqtbl1q_s8(v74, v46);
              v148.val[1] = vqtbl2q_s8(v142, v41);
              v148.val[0] = vqtbl1q_s8(v74, v42);
              v147.val[0] = vqtbl2q_s8(v147, v40);
              v147.val[1] = vqtbl2q_s8(v148, v40);
              v142.val[1] = vqtbl2q_s8(v142, v39);
              v142.val[0] = vqtbl1q_s8(v74, v38);
              v148.val[1] = vqtbl2q_s8(v139, v41);
              v148.val[0] = vqtbl1q_s8(v75, v42);
              v142.val[0] = vqtbl2q_s8(v142, v40);
              v142.val[1] = vqtbl2q_s8(v148, v40);
              v139.val[1] = vqtbl2q_s8(v139, v39);
              v139.val[0] = vqtbl1q_s8(v75, v38);
              v139.val[0] = vqtbl2q_s8(v139, v40);
              v77 = vaddq_s32(vshlq_n_s64(v76, 0x20uLL), v76);
              v145.val[0] = vaddq_s32(vshlq_n_s64(v145.val[0], 0x20uLL), v145.val[0]);
              v145.val[1] = vaddq_s32(vshlq_n_s64(v145.val[1], 0x20uLL), v145.val[1]);
              v147.val[0] = vaddq_s32(vshlq_n_s64(v147.val[0], 0x20uLL), v147.val[0]);
              v147.val[1] = vaddq_s32(vshlq_n_s64(v147.val[1], 0x20uLL), v147.val[1]);
              v142.val[0] = vaddq_s32(vshlq_n_s64(v142.val[0], 0x20uLL), v142.val[0]);
              v142.val[1] = vaddq_s32(vshlq_n_s64(v142.val[1], 0x20uLL), v142.val[1]);
              v139.val[0] = vaddq_s32(vshlq_n_s64(v139.val[0], 0x20uLL), v139.val[0]);
              v139.val[1] = vdupq_lane_s32(*v139.val[0].i8, 1);
              v78 = vdupq_lane_s32(*v142.val[1].i8, 1);
              v79 = vdupq_lane_s32(*v142.val[0].i8, 1);
              v148.val[0] = vdupq_lane_s32(*v147.val[1].i8, 1);
              v148.val[1] = vdupq_lane_s32(*v147.val[0].i8, 1);
              v80 = vdupq_lane_s32(*v145.val[1].i8, 1);
              v81 = vdupq_lane_s32(*v77.i8, 1);
              v139.val[1].i64[0] = 0;
              v139.val[1] = vaddq_s32(v139.val[1], v139.val[0]);
              v78.i64[0] = 0;
              v82 = vaddq_s32(v78, v142.val[1]);
              v142.val[1] = vdupq_lane_s32(*v145.val[0].i8, 1);
              v81.i64[0] = 0;
              v80.i64[0] = 0;
              v142.val[1].i64[0] = 0;
              v148.val[1].i64[0] = 0;
              v148.val[0].i64[0] = 0;
              v79.i64[0] = 0;
              v142.val[0] = vaddq_s32(v79, v142.val[0]);
              v139.val[0] = vaddq_s32(v148.val[1], v147.val[0]);
              v83 = vaddq_s32(v80, v145.val[1]);
              v147.val[0] = vaddq_s32(v81, v77);
              v145.val[0] = vaddq_s32(v142.val[1], v145.val[0]);
              v147.val[1] = vaddq_s32(vdupq_laneq_s32(v139.val[0], 3), vaddq_s32(v148.val[0], v147.val[1]));
              v142.val[1] = vaddq_s32(vdupq_laneq_s32(v83, 3), v142.val[0]);
              v148.val[0] = vaddq_s32(vdupq_laneq_s32(v147.val[0], 3), v139.val[1]);
              v145.val[1] = vdupq_laneq_s32(v148.val[0], 3);
              v84 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v145.val[0], 3), v82), v145.val[1]);
              v142.val[0] = vdupq_laneq_s32(v142.val[1], 3);
              v139.val[1] = vdupq_laneq_s32(v84, 3);
              v85 = vdupq_lane_s32(*v37.i8, 0);
              v37 = vaddq_s32(vaddq_s32(vaddq_s32(v147.val[1], v142.val[0]), v85), v139.val[1]);
              v147.val[1] = vaddq_s32(v148.val[0], v85);
              v147.val[0] = vaddq_s32(v147.val[0], v85);
              v22 = vzip2q_s32(v124, v37);
              v148.val[0] = vzip1q_s32(v124, v147.val[0]);
              v86 = v73 + 16;
              v148.val[1] = v128;
              v87 = v73;
              vst2q_f32(v87, v148);
              v87 += 8;
              v148.val[0] = vzip1q_s32(v124, v147.val[1]);
              v148.val[1] = v128;
              vst2q_f32(v86, v148);
              v88 = v73 + 24;
              v89 = v73 + 32;
              v145.val[0] = vaddq_s32(vaddq_s32(v145.val[0], v85), v145.val[1]);
              v147.val[1] = vzip2q_s32(v124, v147.val[1]);
              v148.val[0] = v128;
              vst2q_f32(v88, *(&v147 + 16));
              v147.val[1] = vzip1q_s32(v124, v145.val[0]);
              v148.val[0] = v128;
              vst2q_f32(v89, *(&v147 + 16));
              v90 = v73 + 40;
              v91 = v73 + 48;
              v92 = vaddq_s32(v84, v85);
              v145.val[0] = vzip2q_s32(v124, v145.val[0]);
              v145.val[1] = v128;
              vst2q_f32(v90, v145);
              v145.val[0] = vzip1q_s32(v124, v92);
              v145.val[1] = v128;
              vst2q_f32(v91, v145);
              v145.val[0] = vzip2q_s32(v124, v147.val[0]);
              v145.val[1] = v128;
              vst2q_f32(v87, v145);
              v93 = v73 + 56;
              v94 = v73 + 64;
              v95 = vaddq_s32(vaddq_s32(v83, v85), v139.val[1]);
              v145.val[0] = vzip2q_s32(v124, v92);
              v145.val[1] = v128;
              vst2q_f32(v93, v145);
              v145.val[0] = vzip1q_s32(v124, v95);
              v145.val[1] = v128;
              vst2q_f32(v94, v145);
              v96 = v73 + 72;
              v97 = v73 + 80;
              v142.val[1] = vaddq_s32(vaddq_s32(v142.val[1], v85), v139.val[1]);
              v143.val[0] = vzip2q_s32(v124, v95);
              v143.val[1] = v128;
              vst2q_f32(v96, v143);
              v143.val[0] = vzip1q_s32(v124, v142.val[1]);
              v143.val[1] = v128;
              vst2q_f32(v97, v143);
              v98 = v73 + 88;
              v99 = v73 + 96;
              v139.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v139.val[0], v142.val[0]), v85), v139.val[1]);
              v139.val[1] = vzip2q_s32(v124, v142.val[1]);
              v142.val[0] = v128;
              vst2q_f32(v98, *(&v139 + 16));
              v139.val[1] = vzip1q_s32(v124, v139.val[0]);
              v34 = v128;
              vst2q_f32(v99, *(&v34 - 1));
              v100 = v73 + 104;
              v101 = v73 + 112;
              v139.val[0] = vzip2q_s32(v124, v139.val[0]);
              v139.val[1] = v128;
              vst2q_f32(v100, v139);
              v32 = vzip1q_s32(v124, v37);
              v33 = v128;
              vst2q_f32(v101, *v32.i8);
              v70 = v73 + 128;
              v102 = v73 + 120;
              vst2q_f32(v102, *v22.i8);
              v37.i32[0] = v37.i32[3];
              v69 = v68 + 32;
              v103 = v68 + 64;
              v68 += 32;
              v73 = v70;
            }

            while (v103 <= v30);
          }

          else
          {
            v69 = v68;
            v70 = a12;
          }

          if (v69 + 8 <= v30)
          {
            v106 = v35 + 2 * v132;
            v107 = v132 + v35;
            do
            {
              v32.i64[0] = *(v35 + v69);
              v33.i64[0] = *(v107 + v69);
              v34.i64[0] = *(v106 + v69);
              v108 = vzip1q_s8(0, v33);
              v109 = vzip1q_s8(v34, v32);
              v110 = vzip1q_s8(v108, v109);
              v111 = vzip2q_s8(v108, v109);
              v112 = vaddq_s32(vshlq_n_s64(v110, 0x20uLL), v110);
              v113 = vaddq_s32(vshlq_n_s64(v111, 0x20uLL), v111);
              v114 = vdupq_lane_s32(*v113.i8, 1);
              v115 = vdupq_lane_s32(*v112.i8, 1);
              v115.i64[0] = 0;
              v114.i64[0] = 0;
              v116 = vaddq_s32(v115, v112);
              v117 = vdupq_laneq_s32(v116, 3);
              v118 = vdupq_lane_s32(*v37.i8, 0);
              v34 = vaddq_s32(v116, v118);
              v37 = vaddq_s32(vaddq_s32(v114, vaddq_s32(v113, v118)), v117);
              v140.val[0] = vzip1q_s32(v124, v34);
              v140.val[1] = v128;
              v105 = v70 + 32;
              v119 = v70 + 16;
              v120 = v70 + 24;
              vst2q_f32(v70, v140);
              v121 = v70 + 8;
              v140.val[0] = vzip2q_s32(v124, v34);
              v140.val[1] = v128;
              vst2q_f32(v121, v140);
              v140.val[0] = vzip1q_s32(v124, v37);
              v140.val[1] = v128;
              vst2q_f32(v119, v140);
              v32 = vzip2q_s32(v124, v37);
              v33 = v128;
              vst2q_f32(v120, *v32.i8);
              v37.i32[0] = v37.i32[3];
              v104 = v69 + 8;
              v122 = v69 + 16;
              v69 += 8;
              v70 = v105;
            }

            while (v122 <= v30);
          }

          else
          {
            v104 = v69;
            v105 = v70;
          }

          if (v104 < v30)
          {
            do
            {
              *&v123 = v130;
              *(&v123 + 1) = __PAIR64__(LODWORD(v125), ((*(v131[0] + v104) << 24) | (*(v131[0] + v104 + v132) << 16) | (*(v131[0] + v104 + 2 * v132) << 8)) + v37.i32[0]);
              *v105 = v123;
              v105 += 4;
              ++v104;
            }

            while (v30 != v104);
          }
        }

        a12 = (a12 + a13);
        v25 += a11;
      }

      while (v25 + a3[7].u32[0] < v16);
    }
  }

  return result;
}

float *CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(float *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v18 = result;
    v19 = HIDWORD(*(a2 + 56));
    v186 = 4;
    v20 = *(a4 + 8);
    v21 = a3[3];
    v184 = v21.i32[0];
    v182 = v20;
    v180[1] = result;
    v183 = a3[6].i32[1] + v21.i32[1] * v19;
    v22 = a3[7].u32[1];
    v181 = vmin_u32(vmls_s32(*(*(*&v20[5] + 8 * v22) + 16), v20[6], v21), v20[6]).u32[0];
    v185 = v22;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v180);
    if (*(*a5 + 24))
    {
      LODWORD(a5) = **a5;
    }

    v179 = 4;
    v23 = *(a6 + 8);
    v24 = a3[3];
    v177 = v24.i32[0];
    v175 = v23;
    v173[1] = v18;
    v176 = a3[6].i32[1] + v24.i32[1] * v19;
    v25 = a3[7].u32[1];
    v174 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v178 = v25;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v173);
    if (*(*a7 + 24))
    {
      LODWORD(a7) = **a7;
    }

    v26 = a3[6].u32[1];
    if (a3[7].u32[0] + v26 < v19)
    {
      v28 = a3[3].i32[1] * *(a2 + 60);
      v29 = a3[5].u32[1];
      v30 = v29 + a9;
      v31.i64[0] = __PAIR64__(a7, a5);
      v31.i64[1] = __PAIR64__(a7, a5);
      do
      {
        v169 = v12;
        v170 = v31;
        v183 = v28 + v26;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v180);
        v176 = v28 + v26;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v173);
        v40 = v180[0];
        if (v180[0])
        {
          v41 = v173[0];
          if (v173[0])
          {
            if (v29 >= 0x20)
            {
              v44 = v181 + v180[0];
              v45 = v181 + v180[0] + 2 * v181;
              v46 = v180[0] + 2 * v181;
              v47 = v174 + v173[0];
              v48 = v174 + v173[0] + 2 * v174;
              v49 = v173[0] + 2 * v174;
              v43 = 0uLL;
              v50 = 32;
              v51 = xmmword_296B8F040;
              do
              {
                v171 = v43;
                result = (v44 + v50);
                v200.val[1] = *(v180[0] + v50 - 32);
                v209.val[1] = *(v180[0] + v50 - 16);
                v203.val[1] = *(v44 + v50 - 32);
                v208.val[1] = *(v44 + v50 - 16);
                v200.val[0] = *(v46 + v50 - 32);
                v209.val[0] = *(v46 + v50 - 16);
                v203.val[0] = *(v45 + v50 - 32);
                v208.val[0] = *(v45 + v50 - 16);
                v167.val[0] = vqtbl2q_s8(v203, v51);
                v167.val[1] = vqtbl2q_s8(v200, xmmword_296B8F030);
                v166.val[0] = vqtbl2q_s8(v203, xmmword_296B8F010);
                v166.val[1] = vqtbl2q_s8(v200, xmmword_296B8F000);
                v165.val[0] = vqtbl2q_s8(v203, xmmword_296B8F080);
                v165.val[1] = vqtbl2q_s8(v200, xmmword_296B8F070);
                v163 = vqtbl2q_s8(v203, xmmword_296B8F060);
                v164 = vqtbl2q_s8(v200, xmmword_296B8F050);
                v161 = vqtbl2q_s8(v208, xmmword_296B8F010);
                v162 = vqtbl2q_s8(v209, xmmword_296B8F000);
                v203.val[0] = vqtbl2q_s8(v209, xmmword_296B8F050);
                v200.val[1] = vqtbl2q_s8(v208, xmmword_296B8F060);
                v206.val[1] = vqtbl2q_s8(v209, xmmword_296B8F070);
                v206.val[0] = vqtbl2q_s8(v208, xmmword_296B8F080);
                v209.val[1] = vqtbl2q_s8(v209, xmmword_296B8F030);
                v211.val[1] = *(v173[0] + v50 - 32);
                v213.val[1] = *(v173[0] + v50 - 16);
                v198.val[1] = *(v47 + v50 - 32);
                v199.val[1] = *(v47 + v50 - 16);
                v209.val[0] = vqtbl2q_s8(v208, xmmword_296B8F040);
                v211.val[0] = *(v49 + v50 - 32);
                v213.val[0] = *(v49 + v50 - 16);
                v198.val[0] = *(v48 + v50 - 32);
                v199.val[0] = *(v48 + v50 - 16);
                v208.val[1] = vqtbl2q_s8(v211, xmmword_296B8F030);
                v208.val[0] = vqtbl2q_s8(v198, xmmword_296B8F040);
                v196.val[1] = vqtbl2q_s8(v211, xmmword_296B8F000);
                v196.val[0] = vqtbl2q_s8(v198, xmmword_296B8F010);
                v194.val[1] = vqtbl2q_s8(v211, xmmword_296B8F070);
                v194.val[0] = vqtbl2q_s8(v198, xmmword_296B8F080);
                v211.val[1] = vqtbl2q_s8(v211, xmmword_296B8F050);
                v211.val[0] = vqtbl2q_s8(v198, xmmword_296B8F060);
                v198.val[1] = vqtbl2q_s8(v213, xmmword_296B8F000);
                v198.val[0] = vqtbl2q_s8(v199, xmmword_296B8F010);
                v189.val[1] = vqtbl2q_s8(v213, xmmword_296B8F050);
                v189.val[0] = vqtbl2q_s8(v199, xmmword_296B8F060);
                v187.val[1] = vqtbl2q_s8(v213, xmmword_296B8F070);
                v187.val[0] = vqtbl2q_s8(v199, xmmword_296B8F080);
                v213.val[1] = vqtbl2q_s8(v213, xmmword_296B8F030);
                v213.val[0] = vqtbl2q_s8(v199, xmmword_296B8F040);
                v52 = vqtbl2q_s8(v167, xmmword_296B8F020);
                v199.val[0] = vqtbl2q_s8(v166, xmmword_296B8F020);
                v53 = vqtbl2q_s8(v165, xmmword_296B8F020);
                v203.val[1] = v163;
                v54 = v164;
                v55 = vqtbl2q_s8(*(&v203 + 16), xmmword_296B8F020);
                v203.val[1] = v161;
                v56 = v162;
                v200.val[0] = vqtbl2q_s8(*(&v203 + 16), xmmword_296B8F020);
                v57 = vqtbl2q_s8(*(&v200 + 16), xmmword_296B8F020);
                v58 = vqtbl2q_s8(v206, xmmword_296B8F020);
                v206.val[0] = vqtbl2q_s8(v209, xmmword_296B8F020);
                v43.i64[1] = v171.i64[1];
                v51 = xmmword_296B8F040;
                v200.val[1] = vaddq_s32(vshlq_n_s64(v52, 0x20uLL), v52);
                v203.val[0] = vaddq_s32(vshlq_n_s64(v199.val[0], 0x20uLL), v199.val[0]);
                v203.val[1] = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
                v59 = vaddq_s32(vshlq_n_s64(v55, 0x20uLL), v55);
                v60 = vaddq_s32(vshlq_n_s64(v200.val[0], 0x20uLL), v200.val[0]);
                v61 = vaddq_s32(vshlq_n_s64(v57, 0x20uLL), v57);
                v200.val[0] = vaddq_s32(vshlq_n_s64(v58, 0x20uLL), v58);
                v62 = vqtbl2q_s8(v208, xmmword_296B8F020);
                v63 = vqtbl2q_s8(v196, xmmword_296B8F020);
                v206.val[0] = vaddq_s32(vshlq_n_s64(v206.val[0], 0x20uLL), v206.val[0]);
                v206.val[1] = vqtbl2q_s8(v194, xmmword_296B8F020);
                v208.val[0] = vqtbl2q_s8(v211, xmmword_296B8F020);
                v208.val[1] = vqtbl2q_s8(v198, xmmword_296B8F020);
                v189.val[0] = vqtbl2q_s8(v189, xmmword_296B8F020);
                v187.val[0] = vqtbl2q_s8(v187, xmmword_296B8F020);
                v187.val[1] = vqtbl2q_s8(v213, xmmword_296B8F020);
                v35 = vaddq_s32(vshlq_n_s64(v62, 0x20uLL), v62);
                v64 = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
                v65 = vaddq_s32(vshlq_n_s64(v206.val[1], 0x20uLL), v206.val[1]);
                v206.val[1] = vaddq_s32(vshlq_n_s64(v208.val[0], 0x20uLL), v208.val[0]);
                v208.val[0] = vaddq_s32(vshlq_n_s64(v208.val[1], 0x20uLL), v208.val[1]);
                v189.val[0] = vaddq_s32(vshlq_n_s64(v189.val[0], 0x20uLL), v189.val[0]);
                v187.val[0] = vaddq_s32(vshlq_n_s64(v187.val[0], 0x20uLL), v187.val[0]);
                v187.val[1] = vaddq_s32(vshlq_n_s64(v187.val[1], 0x20uLL), v187.val[1]);
                v187.val[0] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v187.val[0].i8, 1), v187.val[0]), 3);
                v32 = vextq_s8(v187.val[0], v187.val[0], 8uLL);
                *v32.i8 = vadd_s32(*v32.i8, vadd_s32(vdup_lane_s32(*v189.val[0].i8, 1), *&vextq_s8(v189.val[0], v189.val[0], 8uLL)));
                v34 = vextq_s8(v65, v65, 8uLL);
                v187.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v187.val[1].i8, 1), v187.val[1]), 3);
                *v34.i8 = vadd_s32(vadd_s32(vadd_s32(*v65.i8, *v34.i8), vadd_s32(*v206.val[1].i8, *&vextq_s8(v206.val[1], v206.val[1], 8uLL))), vadd_s32(vadd_s32(*v35.i8, *&vextq_s8(v35, v35, 8uLL)), vadd_s32(*v64.i8, *&vextq_s8(v64, v64, 8uLL))));
                v39 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v200.val[0].i8, 1), v200.val[0]), 3);
                *v35.i8 = vadd_s32(*&vextq_s8(v39, v39, 8uLL), vadd_s32(vdup_lane_s32(*v61.i8, 1), *&vextq_s8(v61, v61, 8uLL)));
                v66 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v206.val[0].i8, 1), v206.val[0]), 3);
                v38 = vextq_s8(v66, v66, 8uLL);
                *v32.i8 = vadd_s32(vadd_s32(*&vextq_s8(v187.val[1], v187.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v208.val[0].i8, 1), *&vextq_s8(v208.val[0], v208.val[0], 8uLL))), *v32.i8);
                v33 = vextq_s8(v59, v59, 8uLL);
                *v33.i8 = vadd_s32(vadd_s32(*v203.val[1].i8, *&vextq_s8(v203.val[1], v203.val[1], 8uLL)), vadd_s32(*v59.i8, *v33.i8));
                *v35.i8 = vadd_s32(vadd_s32(*v38.i8, vadd_s32(vdup_lane_s32(*v60.i8, 1), *&vextq_s8(v60, v60, 8uLL))), *v35.i8);
                v36 = vextq_s8(v203.val[0], v203.val[0], 8uLL);
                v37 = vextq_s8(v200.val[1], v200.val[1], 8uLL);
                *v33.i8 = vadd_s32(*v35.i8, vadd_s32(*v33.i8, vadd_s32(vadd_s32(*v200.val[1].i8, *v37.i8), vadd_s32(*v203.val[0].i8, *v36.i8))));
                *v32.i8 = vzip2_s32(*v33.i8, vadd_s32(*v32.i8, *v34.i8));
                *v43.i8 = vadd_s32(*v32.i8, *v171.i8);
                v50 += 32;
              }

              while (v50 <= v29);
              v42 = v29 & 0xFFFFFFE0;
              v12 = v169;
              v31 = v170;
            }

            else
            {
              v42 = 0;
              v43.i64[0] = 0;
            }

            if ((v42 | 8) <= v29)
            {
              do
              {
                v32.i64[0] = *(v180[0] + v42);
                v33.i64[0] = *(v181 + v180[0] + v42);
                v34.i64[0] = *(v180[0] + 2 * v181 + v42);
                v35.i64[0] = *(v181 + v180[0] + 2 * v181 + v42);
                v68 = vzip1q_s8(v35, v33);
                v69 = vzip1q_s8(v34, v32);
                v70 = vzip1q_s8(v68, v69);
                v71 = vzip2q_s8(v68, v69);
                v72 = vshlq_n_s64(v71, 0x20uLL);
                v73 = vshlq_n_s64(v70, 0x20uLL);
                v34 = vaddq_s32(v73, v70);
                v32 = vaddq_s32(v72, v71);
                v72.i64[0] = *(v173[0] + v42);
                v73.i64[0] = *(v174 + v173[0] + v42);
                v36.i64[0] = *(v173[0] + 2 * v174 + v42);
                v37.i64[0] = *(v174 + v173[0] + 2 * v174 + v42);
                v74 = vzip1q_s8(v37, v73);
                v75 = vzip1q_s8(v36, v72);
                v76 = vzip1q_s8(v74, v75);
                v77 = vzip2q_s8(v74, v75);
                v37 = vshlq_n_s64(v76, 0x20uLL);
                v36 = vaddq_s32(v37, v76);
                v78 = vaddq_s32(vshlq_n_s64(v77, 0x20uLL), v77);
                *v32.i8 = vadd_s32(vzip2_s32(vadd_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)), vadd_s32(*v78.i8, *&vextq_s8(v78, v78, 8uLL))), *v43.i8);
                v33 = vextq_s8(v36, v36, 8uLL);
                v35 = vextq_s8(v34, v34, 8uLL);
                *v33.i8 = vzip2_s32(vadd_s32(*v34.i8, *v35.i8), vadd_s32(*v36.i8, *v33.i8));
                *v43.i8 = vadd_s32(*v32.i8, *v33.i8);
                v67 = v42 + 8;
                result = (v42 + 16);
                v42 += 8;
              }

              while (result <= v29);
            }

            else
            {
              v67 = v42;
            }

            if (v67 < v29)
            {
              do
              {
                result = (v173[0] + v67);
                v32.i8[0] = *(v181 + v180[0] + v67);
                v32.i8[4] = *(v173[0] + v67);
                v33.i8[0] = *(v180[0] + v67);
                v33.i8[4] = *(v174 + v173[0] + v67);
                v79 = vshl_u32(vand_s8(*v33.i8, 0xFF000000FFLL), 0x1000000018);
                v80 = vorr_s8(v79, vshl_u32(vand_s8(*v32.i8, 0xFF000000FFLL), 0x1800000010));
                v79.i8[0] = *(v180[0] + 2 * v181 + v67);
                v79.i8[4] = *(v173[0] + 2 * v174 + v67);
                v81 = vand_s8(v79, 0xFF000000FFLL);
                *v33.i8 = vorr_s8(vshl_n_s32(v81, 8uLL), v81);
                *v32.i8 = vorr_s8(v80, *v33.i8);
                *v43.i8 = vadd_s32(*v32.i8, *v43.i8);
                ++v67;
              }

              while (v29 != v67);
              v67 = v29;
            }

            if (v67 + 32 <= v30)
            {
              v85 = v181 + v180[0];
              v86 = v181 + v180[0] + 2 * v181;
              v87 = v180[0] + 2 * v181;
              v88 = v174 + v173[0];
              v89 = v174 + v173[0] + 2 * v174;
              v90 = v173[0] + 2 * v174;
              v84 = a11;
              do
              {
                v172 = *v43.i8;
                v188.val[1] = *(v40 + v67);
                v190.val[1] = *(v40 + v67 + 16);
                v188.val[0] = *(v87 + v67);
                v190.val[0] = *(v87 + v67 + 16);
                v192.val[1] = vqtbl2q_s8(v188, xmmword_296B8F070);
                v193.val[1] = *(v85 + v67);
                v201.val[1] = *(v85 + v67 + 16);
                v193.val[0] = *(v86 + v67);
                v201.val[0] = *(v86 + v67 + 16);
                v192.val[0] = vqtbl2q_s8(v193, xmmword_296B8F080);
                v192.val[0] = vqtbl2q_s8(v192, xmmword_296B8F020);
                v204.val[1] = vqtbl2q_s8(v188, xmmword_296B8F030);
                v204.val[0] = vqtbl2q_s8(v193, xmmword_296B8F040);
                v205.val[1] = vqtbl2q_s8(v190, xmmword_296B8F070);
                v205.val[0] = vqtbl2q_s8(v201, xmmword_296B8F080);
                v192.val[1] = vqtbl2q_s8(v204, xmmword_296B8F020);
                v204.val[0] = vqtbl2q_s8(v205, xmmword_296B8F020);
                v205.val[0] = vqtbl2q_s8(v190, xmmword_296B8F030);
                v204.val[1] = vqtbl2q_s8(v201, xmmword_296B8F040);
                v91 = vqtbl2q_s8(v190, xmmword_296B8F000);
                v205.val[1] = vqtbl2q_s8(v201, xmmword_296B8F010);
                v204.val[1] = vqtbl2q_s8(*(&v204 + 16), xmmword_296B8F020);
                v205.val[0] = vqtbl2q_s8(*(&v205 + 16), xmmword_296B8F020);
                v190.val[1] = vqtbl2q_s8(v190, xmmword_296B8F050);
                v190.val[0] = vqtbl2q_s8(v201, xmmword_296B8F060);
                v201.val[1] = vqtbl2q_s8(v188, xmmword_296B8F000);
                v201.val[0] = vqtbl2q_s8(v193, xmmword_296B8F010);
                v205.val[1] = vqtbl2q_s8(v190, xmmword_296B8F020);
                v201.val[0] = vqtbl2q_s8(v201, xmmword_296B8F020);
                v188.val[1] = vqtbl2q_s8(v188, xmmword_296B8F050);
                v188.val[0] = vqtbl2q_s8(v193, xmmword_296B8F060);
                v188.val[0] = vqtbl2q_s8(v188, xmmword_296B8F020);
                v192.val[0] = vaddq_s32(vshlq_n_s64(v192.val[0], 0x20uLL), v192.val[0]);
                v192.val[1] = vaddq_s32(vshlq_n_s64(v192.val[1], 0x20uLL), v192.val[1]);
                v190.val[1] = vaddq_s32(vshlq_n_s64(v204.val[0], 0x20uLL), v204.val[0]);
                v190.val[0] = vaddq_s32(vshlq_n_s64(v204.val[1], 0x20uLL), v204.val[1]);
                v204.val[0] = vaddq_s32(vshlq_n_s64(v205.val[0], 0x20uLL), v205.val[0]);
                v205.val[0] = vaddq_s32(vshlq_n_s64(v205.val[1], 0x20uLL), v205.val[1]);
                v92 = vaddq_s32(vshlq_n_s64(v201.val[0], 0x20uLL), v201.val[0]);
                v188.val[0] = vaddq_s32(vshlq_n_s64(v188.val[0], 0x20uLL), v188.val[0]);
                v93 = vdupq_lane_s32(*v188.val[0].i8, 1);
                v94 = vdupq_lane_s32(*v92.i8, 1);
                v205.val[1] = vdupq_lane_s32(*v205.val[0].i8, 1);
                v204.val[1] = vdupq_lane_s32(*v204.val[0].i8, 1);
                v201.val[1] = vdupq_lane_s32(*v190.val[0].i8, 1);
                v201.val[0] = vdupq_lane_s32(*v190.val[1].i8, 1);
                v193.val[1] = vdupq_lane_s32(*v192.val[1].i8, 1);
                v193.val[0] = vdupq_lane_s32(*v192.val[0].i8, 1);
                v193.val[0].i64[0] = 0;
                v193.val[1].i64[0] = 0;
                v201.val[0].i64[0] = 0;
                v201.val[1].i64[0] = 0;
                v188.val[1] = vdupq_lane_s32(*v43.i8, 0);
                v205.val[1].i64[0] = 0;
                v210.val[1] = *(v41 + v67);
                v212.val[1] = *(v41 + v67 + 16);
                v94.i64[0] = 0;
                v214.val[1] = *(v88 + v67);
                v195.val[1] = *(v88 + v67 + 16);
                v93.i64[0] = 0;
                v210.val[0] = *(v90 + v67);
                v212.val[0] = *(v90 + v67 + 16);
                v214.val[0] = *(v89 + v67);
                v195.val[0] = *(v89 + v67 + 16);
                v168 = vaddq_s32(v93, v188.val[0]);
                v197.val[1] = vqtbl2q_s8(v210, xmmword_296B8F070);
                v197.val[0] = vqtbl2q_s8(v214, xmmword_296B8F080);
                v188.val[0] = vqtbl2q_s8(v197, xmmword_296B8F020);
                v197.val[1] = vqtbl2q_s8(v210, xmmword_296B8F030);
                v197.val[0] = vqtbl2q_s8(v214, xmmword_296B8F040);
                v95 = vaddq_s32(v94, v92);
                v96 = vqtbl2q_s8(v197, xmmword_296B8F020);
                v197.val[1] = vqtbl2q_s8(v212, xmmword_296B8F070);
                v197.val[0] = vqtbl2q_s8(v195, xmmword_296B8F080);
                v97 = vqtbl2q_s8(v197, xmmword_296B8F020);
                v197.val[1] = vqtbl2q_s8(v212, xmmword_296B8F030);
                v205.val[0] = vaddq_s32(v205.val[1], v205.val[0]);
                v197.val[0] = vqtbl2q_s8(v195, xmmword_296B8F040);
                v205.val[1] = vqtbl2q_s8(v197, xmmword_296B8F020);
                v197.val[1] = vqtbl2q_s8(v212, xmmword_296B8F000);
                v197.val[0] = vqtbl2q_s8(v195, xmmword_296B8F010);
                v204.val[1].i64[0] = 0;
                v197.val[0] = vqtbl2q_s8(v197, xmmword_296B8F020);
                v212.val[1] = vqtbl2q_s8(v212, xmmword_296B8F050);
                v212.val[0] = vqtbl2q_s8(v195, xmmword_296B8F060);
                v212.val[0] = vqtbl2q_s8(v212, xmmword_296B8F020);
                v195.val[1] = vqtbl2q_s8(v210, xmmword_296B8F000);
                v204.val[0] = vaddq_s32(v204.val[1], v204.val[0]);
                v195.val[0] = vqtbl2q_s8(v214, xmmword_296B8F010);
                v204.val[1] = vqtbl2q_s8(v195, xmmword_296B8F020);
                v210.val[1] = vqtbl2q_s8(v210, xmmword_296B8F050);
                v210.val[0] = vqtbl2q_s8(v214, xmmword_296B8F060);
                v210.val[0] = vqtbl2q_s8(v210, xmmword_296B8F020);
                v190.val[0] = vaddq_s32(v201.val[1], v190.val[0]);
                v190.val[1] = vaddq_s32(v201.val[0], v190.val[1]);
                v188.val[0] = vaddq_s32(vshlq_n_s64(v188.val[0], 0x20uLL), v188.val[0]);
                v195.val[1] = vaddq_s32(vshlq_n_s64(v96, 0x20uLL), v96);
                v201.val[0] = vaddq_s32(v193.val[1], v192.val[1]);
                v98 = vaddq_s32(vshlq_n_s64(v97, 0x20uLL), v97);
                v99 = vaddq_s32(vshlq_n_s64(v197.val[0], 0x20uLL), v197.val[0]);
                v212.val[0] = vaddq_s32(vshlq_n_s64(v212.val[0], 0x20uLL), v212.val[0]);
                v193.val[1] = vaddq_s32(vshlq_n_s64(v204.val[1], 0x20uLL), v204.val[1]);
                v201.val[1] = vaddq_s32(vshlq_n_s64(v210.val[0], 0x20uLL), v210.val[0]);
                v192.val[0] = vaddq_s32(v193.val[0], v192.val[0]);
                v193.val[0] = vdupq_lane_s32(*v201.val[1].i8, 1);
                v204.val[1] = vdupq_lane_s32(*v193.val[1].i8, 1);
                v210.val[1] = vdupq_lane_s32(*v212.val[0].i8, 1);
                v212.val[1] = vdupq_lane_s32(*v99.i8, 1);
                v214.val[0] = vaddq_s32(vshlq_n_s64(v205.val[1], 0x20uLL), v205.val[1]);
                v214.val[1] = vdupq_lane_s32(*v214.val[0].i8, 1);
                v195.val[0] = vdupq_lane_s32(*v98.i8, 1);
                v197.val[0] = vdupq_lane_s32(*v195.val[1].i8, 1);
                v197.val[1] = vdupq_lane_s32(*v188.val[0].i8, 1);
                v192.val[1] = vaddq_s32(vdupq_laneq_s32(v190.val[1], 3), v205.val[0]);
                v197.val[1].i64[0] = 0;
                v197.val[0].i64[0] = 0;
                v205.val[0] = vaddq_s32(vdupq_laneq_s32(v201.val[0], 3), v95);
                v195.val[0].i64[0] = 0;
                v214.val[1].i64[0] = 0;
                v100 = vaddq_s32(vdupq_laneq_s32(v192.val[0], 3), v168);
                v193.val[0].i64[0] = 0;
                v193.val[0] = vaddq_s32(v193.val[0], v201.val[1]);
                v101 = vdupq_laneq_s32(v100, 3);
                v204.val[1].i64[0] = 0;
                v204.val[1] = vaddq_s32(v204.val[1], v193.val[1]);
                v39 = vdupq_laneq_s32(v192.val[1], 3);
                v205.val[1] = vaddq_s32(v192.val[0], v188.val[1]);
                v212.val[1].i64[0] = 0;
                v210.val[1].i64[0] = 0;
                v210.val[0] = vaddq_s32(v100, v188.val[1]);
                v192.val[0] = vaddq_s32(v210.val[1], v212.val[0]);
                v102 = vaddq_s32(v212.val[1], v99);
                v201.val[1] = vaddq_s32(v214.val[1], v214.val[0]);
                v103 = vaddq_s32(v195.val[0], v98);
                v210.val[1] = vaddq_s32(v197.val[0], v195.val[1]);
                v104 = vaddq_s32(v205.val[0], v101);
                v214.val[0] = vaddq_s32(v197.val[1], v188.val[0]);
                v212.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v190.val[0], 3), v204.val[0]), v39);
                v204.val[0] = vdupq_laneq_s32(v104, 3);
                v214.val[1] = vaddq_s32(vdupq_laneq_s32(v201.val[1], 3), v102);
                v105 = vaddq_s32(vdupq_laneq_s32(v103, 3), v192.val[0]);
                v195.val[0] = vaddq_s32(vdupq_laneq_s32(v214.val[0], 3), v193.val[0]);
                v212.val[1] = vdupq_laneq_s32(v195.val[0], 3);
                v188.val[0] = vaddq_s32(v212.val[0], v188.val[1]);
                v212.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v210.val[1], 3), v204.val[1]), v212.val[1]);
                v204.val[1] = vdupq_laneq_s32(v105, 3);
                v106 = vaddq_s32(v188.val[0], v204.val[0]);
                v205.val[0] = vdupq_laneq_s32(v212.val[0], 3);
                v188.val[0] = vdupq_lane_s32(v172, 1);
                v38 = vaddq_s32(vaddq_s32(vaddq_s32(v214.val[1], v204.val[1]), v188.val[0]), v205.val[0]);
                v214.val[1] = vaddq_s32(v195.val[0], v188.val[0]);
                v214.val[0] = vaddq_s32(v214.val[0], v188.val[0]);
                v12 = vzip2q_s32(v106, v38);
                v195.val[0] = vzip1q_s32(v205.val[1], v214.val[0]);
                v107 = v84;
                v195.val[1] = v31;
                vst2q_f32(v107, v195);
                v107 += 8;
                v195.val[0] = vzip1q_s32(v210.val[0], v214.val[1]);
                v195.val[1] = v31;
                v108 = v84 + 16;
                vst2q_f32(v108, v195);
                v201.val[0] = vaddq_s32(vaddq_s32(v201.val[0], v188.val[1]), v101);
                v109 = vaddq_s32(vaddq_s32(v210.val[1], v188.val[0]), v212.val[1]);
                v210.val[0] = vzip2q_s32(v210.val[0], v214.val[1]);
                v210.val[1] = v31;
                v110 = v84 + 24;
                vst2q_f32(v110, v210);
                v210.val[0] = vzip1q_s32(v201.val[0], v109);
                v210.val[1] = v31;
                v111 = v84 + 32;
                vst2q_f32(v111, v210);
                v112 = vaddq_s32(v104, v188.val[1]);
                v43 = vaddq_s32(v212.val[0], v188.val[0]);
                v210.val[1] = vzip2q_s32(v201.val[0], v109);
                v212.val[0] = v31;
                v113 = v84 + 40;
                vst2q_f32(v113, *(&v210 + 16));
                v210.val[1] = vzip1q_s32(v112, v43);
                v212.val[0] = v31;
                v114 = v84 + 48;
                vst2q_f32(v114, *(&v210 + 16));
                v210.val[1] = vzip2q_s32(v205.val[1], v214.val[0]);
                v212.val[0] = v31;
                vst2q_f32(v107, *(&v210 + 16));
                v190.val[1] = vaddq_s32(vaddq_s32(v190.val[1], v188.val[1]), v204.val[0]);
                v201.val[0] = vaddq_s32(vaddq_s32(v103, v188.val[0]), v205.val[0]);
                v207.val[0] = vzip2q_s32(v112, v43);
                v207.val[1] = v31;
                v115 = v84 + 56;
                vst2q_f32(v115, v207);
                v207.val[0] = vzip1q_s32(v190.val[1], v201.val[0]);
                v207.val[1] = v31;
                v116 = v84 + 64;
                vst2q_f32(v116, v207);
                v37 = vaddq_s32(vaddq_s32(v192.val[1], v188.val[1]), v204.val[0]);
                v117 = v84 + 72;
                v205.val[1] = vaddq_s32(v105, v188.val[0]);
                v118 = vzip2q_s32(v190.val[1], v201.val[0]);
                v207.val[0] = v31;
                v190.val[1] = vaddq_s32(v205.val[1], v205.val[0]);
                vst2q_f32(v117, v207);
                v205.val[1] = vzip1q_s32(v37, v190.val[1]);
                v119 = v31;
                v120 = v84 + 80;
                vst2q_f32(v120, *(&v205 + 16));
                v188.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v190.val[0], v39), v188.val[1]), v204.val[0]);
                v188.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v201.val[1], v204.val[1]), v188.val[0]), v205.val[0]);
                v121 = v84 + 88;
                v122 = v84 + 96;
                v190.val[0] = vzip2q_s32(v37, v190.val[1]);
                v190.val[1] = v31;
                vst2q_f32(v121, v190);
                v34 = vzip1q_s32(v188.val[1], v188.val[0]);
                v35 = v31;
                vst2q_f32(v122, *v34.i8);
                v188.val[0] = vzip2q_s32(v188.val[1], v188.val[0]);
                v188.val[1] = v31;
                v123 = v84 + 104;
                vst2q_f32(v123, v188);
                v188.val[0] = vzip1q_s32(v106, v38);
                v188.val[1] = v31;
                v124 = v84 + 112;
                vst2q_f32(v124, v188);
                v32 = vextq_s8(v38, v38, 8uLL);
                v33 = vextq_s8(v106, v106, 8uLL);
                *v43.i8 = vzip2_s32(*v33.i8, *v32.i8);
                result = v84 + 120;
                v84 += 128;
                v125 = v67 + 64;
                v67 += 32;
                vst2q_f32(result, *v12.i8);
              }

              while (v125 <= v30);
              v83 = v38.u32[3];
              v82 = v106.u32[3];
            }

            else
            {
              v82 = v43.i32[0];
              v83 = v43.u32[1];
              v84 = a11;
            }

            if (v67 + 8 <= v30)
            {
              v128 = v181 + v40;
              v129 = v181 + v40 + 2 * v181;
              v130 = v40 + 2 * v181;
              v131 = v174 + v41;
              result = (v174 + v41 + 2 * v174);
              v132 = v41 + 2 * v174;
              do
              {
                v32.i64[0] = *(v40 + v67);
                v33.i64[0] = *(v128 + v67);
                v34.i64[0] = *(v130 + v67);
                v35.i64[0] = *(v129 + v67);
                v133 = vzip1q_s8(v35, v33);
                v134 = vzip1q_s8(v34, v32);
                v135 = vzip1q_s8(v133, v134);
                v136 = vzip2q_s8(v133, v134);
                v137 = vaddq_s32(vshlq_n_s64(v135, 0x20uLL), v135);
                v138 = vaddq_s32(vshlq_n_s64(v136, 0x20uLL), v136);
                v139 = vdupq_lane_s32(*v138.i8, 1);
                v140 = vdupq_lane_s32(*v137.i8, 1);
                v140.i64[0] = 0;
                v141 = vdupq_n_s32(v82);
                v139.i64[0] = 0;
                v37.i64[0] = *(v41 + v67);
                v38.i64[0] = *(v131 + v67);
                v142 = vaddq_s32(v140, v137);
                v140.i64[0] = *(v132 + v67);
                v39.i64[0] = *(result + v67);
                v143 = vzip1q_s8(v39, v38);
                v144 = vaddq_s32(v139, vaddq_s32(v138, v141));
                v145 = vzip1q_s8(v140, v37);
                v146 = vzip1q_s8(v143, v145);
                v147 = vaddq_s32(vshlq_n_s64(v146, 0x20uLL), v146);
                v37 = vdupq_laneq_s32(v142, 3);
                v148 = vdupq_lane_s32(*v147.i8, 1);
                v148.i64[0] = 0;
                v149 = vaddq_s32(v148, v147);
                v150 = vaddq_s32(v142, v141);
                v151 = vdupq_n_s32(v83);
                v39 = vaddq_s32(v149, v151);
                v202.val[0] = vzip1q_s32(v150, v39);
                v152 = v84 + 16;
                v202.val[1] = v31;
                v153 = v84;
                vst2q_f32(v153, v202);
                v153 += 8;
                v154 = vzip2q_s8(v143, v145);
                v155 = vaddq_s32(vshlq_n_s64(v154, 0x20uLL), v154);
                v38 = vdupq_lane_s32(*v155.i8, 1);
                v156 = vaddq_s32(v144, v37);
                v38.i64[0] = 0;
                v82 = v156.u32[3];
                v157 = v84 + 24;
                v158 = vaddq_s32(vaddq_s32(v38, vaddq_s32(v155, v151)), vdupq_laneq_s32(v149, 3));
                v83 = v158.u32[3];
                v191.val[0] = vzip2q_s32(v150, v39);
                v191.val[1] = v31;
                vst2q_f32(v153, v191);
                v34 = vzip1q_s32(v156, v158);
                v35 = v31;
                vst2q_f32(v152, *v34.i8);
                v32 = vzip2q_s32(v156, v158);
                v33 = v31;
                vst2q_f32(v157, *v32.i8);
                v127 = v84 + 32;
                v126 = v67 + 8;
                v159 = v67 + 16;
                v67 += 8;
                v84 += 32;
              }

              while (v159 <= v30);
            }

            else
            {
              v126 = v67;
              v127 = v84;
            }

            if (v126 < v30)
            {
              do
              {
                v82 += (*(v180[0] + v126) << 24) | (*(v180[0] + v126 + v181) << 16) | (*(v180[0] + v126 + 2 * v181) << 8) | *(v180[0] + v126 + 2 * v181);
                v83 += (*(v173[0] + v126) << 24) | (*(v173[0] + v126 + v174) << 16) | (*(v173[0] + v126 + 2 * v174) << 8) | *(v173[0] + v126 + 2 * v174);
                *&v160 = __PAIR64__(a5, v82);
                *(&v160 + 1) = __PAIR64__(a7, v83);
                *v127 = v160;
                v127 += 4;
                ++v126;
              }

              while (v30 != v126);
            }
          }
        }

        a11 = (a11 + a12);
        v26 += a10;
      }

      while (v26 + a3[7].u32[0] < v19);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t **a5, uint64_t a6, uint64_t **a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v207 = 2;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v205 = v20.i32[0];
    v203 = v19;
    v201[1] = result;
    v204 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v202 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v206 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v201);
    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v22 = _D0;
    }

    else
    {
      v22 = 32256;
    }

    v200 = 2;
    v28 = *(a6 + 8);
    v29 = a3[3];
    v198 = v29.i32[0];
    v196 = v28;
    v194[1] = v17;
    v197 = a3[6].i32[1] + v29.i32[1] * v18;
    v30 = a3[7].u32[1];
    v195 = vmin_u32(vmls_s32(*(*(*&v28[5] + 8 * v30) + 16), v28[6], v29), v28[6]).u32[0];
    v199 = v30;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v194);
    if (*(*a7 + 24))
    {
      _D0 = **a7;
      __asm { FCVT            H0, D0 }

      v33 = _D0;
    }

    else
    {
      v33 = 32256;
    }

    v34 = a3[6].u32[1];
    if (a3[7].u32[0] + v34 < v18)
    {
      v36 = a3[3].i32[1] * *(a2 + 60);
      v37 = a3[5].u32[1];
      v208.val[1] = vdupq_n_s16(v33);
      v38 = v37 + a9;
      v208.val[0] = vdupq_n_s16(v22);
      v39 = vqtbl2q_s8(v208, xmmword_296B6EDD0);
      do
      {
        v192 = v31;
        v193 = v39;
        v204 = v36 + v34;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v201);
        v197 = v36 + v34;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v194);
        v42.i64[0] = 0xFFFFFFFF00000000;
        v42.i64[1] = 0xFFFFFFFF00000000;
        v31 = v192;
        v39 = v193;
        v43 = v201[0];
        if (v201[0])
        {
          v44 = v194[0];
          if (v194[0])
          {
            if (v37 >= 0x20)
            {
              v48 = 0;
              v46 = 0;
              v45 = 0;
              v49 = v202 + v201[0];
              v50 = v195 + v194[0];
              do
              {
                v52 = *(v201[0] + v48);
                v51 = *(v201[0] + v48 + 16);
                v54 = *(v49 + v48);
                v53 = *(v49 + v48 + 16);
                v55 = vzip1q_s8(v54, v52);
                v56 = vzip2q_s8(v54, v52);
                v57 = vzip1q_s8(v53, v51);
                v58 = vzip2q_s8(v53, v51);
                v59 = vaddq_s16(vshlq_n_s32(v55, 0x10uLL), v55);
                v60 = vaddq_s16(vshlq_n_s32(v56, 0x10uLL), v56);
                v61 = vaddq_s16(vshlq_n_s32(v57, 0x10uLL), v57);
                v62 = vaddq_s16(vshlq_n_s32(v58, 0x10uLL), v58);
                v63 = vaddq_s16(vandq_s8(vqtbl1q_s8(v62, xmmword_296B8F090), v42), v62);
                v64 = vaddq_s16(vandq_s8(vqtbl1q_s8(v61, xmmword_296B8F090), v42), v61);
                v65 = vaddq_s16(vandq_s8(vqtbl1q_s8(v60, xmmword_296B8F090), v42), v60);
                v66 = vaddq_s16(vandq_s8(vqtbl1q_s8(v59, xmmword_296B8F090), v42), v59);
                v68 = *(v194[0] + v48);
                v67 = *(v194[0] + v48 + 16);
                v70 = *(v50 + v48);
                v69 = *(v50 + v48 + 16);
                v71 = vzip1q_s8(v70, v68);
                v72 = vzip2q_s8(v70, v68);
                v73 = vzip1q_s8(v69, v67);
                v74 = vzip2q_s8(v69, v67);
                v75 = vaddq_s16(vshlq_n_s32(v71, 0x10uLL), v71);
                v76 = vaddq_s16(vshlq_n_s32(v72, 0x10uLL), v72);
                v77 = vaddq_s16(vshlq_n_s32(v73, 0x10uLL), v73);
                v78 = vaddq_s16(vshlq_n_s32(v74, 0x10uLL), v74);
                v79 = vaddq_s16(vandq_s8(vqtbl1q_s8(v78, xmmword_296B8F090), v42), v78);
                v80 = vaddq_s16(vandq_s8(vqtbl1q_s8(v77, xmmword_296B8F090), v42), v77);
                v81 = vaddq_s16(vandq_s8(vqtbl1q_s8(v76, xmmword_296B8F090), v42), v76);
                v82 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v66.i8, 3), v66), vaddq_s16(vdupq_lane_s16(*v65.i8, 3), v65));
                v83 = vaddq_s16(vandq_s8(vqtbl1q_s8(v75, xmmword_296B8F090), v42), v75);
                v84 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*&v64, 3), v64), vaddq_s16(vdupq_lane_s16(*&v63, 3), v63)), v82).u16[7];
                v41 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v80.i8, 3), v80), vaddq_s16(vdupq_lane_s16(*v79.i8, 3), v79));
                v40 = vaddq_s16(v41, vaddq_s16(vaddq_s16(vdupq_lane_s16(*v83.i8, 3), v83), vaddq_s16(vdupq_lane_s16(*v81.i8, 3), v81)));
                v46 += v84;
                v45 += v40.u16[7];
                v85 = v48 + 64;
                v48 += 32;
              }

              while (v85 <= v37);
              v47 = v37 & 0xFFFFFFE0;
            }

            else
            {
              v45 = 0;
              v46 = 0;
              v47 = 0;
            }

            if ((v47 | 8) <= v37)
            {
              do
              {
                v40.i64[0] = *(v201[0] + v47);
                v41.i64[0] = *(v202 + v201[0] + v47);
                v87 = vzip1q_s8(v41, v40);
                v88 = vaddq_s16(vshlq_n_s32(v87, 0x10uLL), v87);
                v89 = vextq_s8(v88, v88, 0xCuLL);
                v90 = vaddq_s16(v89, v88);
                v91 = v90.u16[3];
                v90.i64[0] = *(v194[0] + v47);
                v46 += v90.u16[7] + v91;
                v89.i64[0] = *(v195 + v194[0] + v47);
                v92 = vzip1q_s8(v89, v90);
                v93 = vaddq_s16(vshlq_n_s32(v92, 0x10uLL), v92);
                v41 = vextq_s8(v93, v93, 0xCuLL);
                v40 = vaddq_s16(v41, v93);
                v45 += v40.u16[7] + v40.u16[3];
                v86 = v47 + 8;
                v94 = v47 + 16;
                v47 += 8;
              }

              while (v94 <= v37);
            }

            else
            {
              v86 = v47;
            }

            v95 = v37 - v86;
            if (v37 > v86)
            {
              v96 = (v86 + v201[0] + v202);
              v97 = (v201[0] + v86);
              v98 = (v86 + v194[0] + v195);
              v99 = (v194[0] + v86);
              do
              {
                v101 = *v97++;
                v100 = v101;
                v102 = *v96++;
                v103 = v102 | (v100 << 8);
                v104 = *v99++;
                result = v104;
                v46 += v103;
                v105 = *v98++;
                v45 += v105 | (result << 8);
                --v95;
              }

              while (v95);
              v86 = v37;
            }

            if (v86 + 32 <= v38)
            {
              v108 = v202 + v201[0];
              v109 = v195 + v194[0];
              v110 = a11;
              do
              {
                v112 = *(v43 + v86);
                v111 = *(v43 + v86 + 16);
                v114 = *(v108 + v86);
                v113 = *(v108 + v86 + 16);
                v115 = vzip2q_s8(v114, v112);
                v116 = vzip2q_s8(v113, v111);
                v117 = vzip1q_s8(v113, v111);
                v118 = vzip1q_s8(v114, v112);
                v119 = vaddq_s16(vshlq_n_s32(v115, 0x10uLL), v115);
                v120 = vaddq_s16(vshlq_n_s32(v116, 0x10uLL), v116);
                v121 = vaddq_s16(vshlq_n_s32(v117, 0x10uLL), v117);
                v122 = vaddq_s16(vshlq_n_s32(v118, 0x10uLL), v118);
                v123 = vaddq_s16(vandq_s8(vqtbl1q_s8(v122, xmmword_296B8F090), v42), v122);
                v124 = vaddq_s16(vandq_s8(vqtbl1q_s8(v120, xmmword_296B8F090), v42), v120);
                v125 = vaddq_s16(vandq_s8(vqtbl1q_s8(v119, xmmword_296B8F090), v42), v119);
                v126 = vaddq_s16(vandq_s8(vqtbl1q_s8(v121, xmmword_296B8F090), v42), v121);
                v127 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v126.i8, 3), xmmword_296B8F0A0), v126);
                v128 = vdupq_n_s16(v46);
                v130 = *(v44 + v86);
                v129 = *(v44 + v86 + 16);
                v131 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v123.i8, 3), xmmword_296B8F0A0), v123);
                v133 = *(v109 + v86);
                v132 = *(v109 + v86 + 16);
                v134 = vzip2q_s8(v133, v130);
                v135 = vdupq_laneq_s16(v131, 7);
                v136 = vzip2q_s8(v132, v129);
                v137 = vzip1q_s8(v132, v129);
                v138 = vzip1q_s8(v133, v130);
                v139 = vdupq_laneq_s16(v127, 7);
                v140 = vaddq_s16(vshlq_n_s32(v134, 0x10uLL), v134);
                v141 = vaddq_s16(vshlq_n_s32(v136, 0x10uLL), v136);
                v142 = vaddq_s16(v127, v128);
                v143 = vaddq_s16(vshlq_n_s32(v137, 0x10uLL), v137);
                v144 = vaddq_s16(vshlq_n_s32(v138, 0x10uLL), v138);
                v145 = vaddq_s16(v131, v128);
                v146 = vaddq_s16(v139, vaddq_s16(vandq_s8(vdupq_lane_s16(*v124.i8, 3), xmmword_296B8F0A0), v124));
                v147 = vaddq_s16(vandq_s8(vqtbl1q_s8(v143, xmmword_296B8F090), v42), v143);
                v148 = vaddq_s16(vandq_s8(vqtbl1q_s8(v141, xmmword_296B8F090), v42), v141);
                v149 = vaddq_s16(vandq_s8(vqtbl1q_s8(v140, xmmword_296B8F090), v42), v140);
                v150 = vaddq_s16(v135, vaddq_s16(vandq_s8(vdupq_lane_s16(*v125.i8, 3), xmmword_296B8F0A0), v125));
                v151 = vdupq_laneq_s16(v150, 7);
                v152 = vaddq_s16(vandq_s8(vqtbl1q_s8(v144, xmmword_296B8F090), v42), v144);
                v153 = vaddq_s16(v146, v128);
                v154 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v149.i8, 3), xmmword_296B8F0A0), v149);
                v155 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v147.i8, 3), xmmword_296B8F0A0), v147);
                v156 = vaddq_s16(v150, v128);
                v157 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v152.i8, 3), xmmword_296B8F0A0), v152);
                v158 = vaddq_s16(v153, v151);
                v159 = vaddq_s16(vdupq_laneq_s16(v157, 7), v154);
                v160 = vdupq_laneq_s16(v159, 7);
                v161 = vdupq_n_s16(v45);
                v162 = vaddq_s16(v142, v151);
                v163 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v155, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v148.i8, 3), xmmword_296B8F0A0), v148)), v161), v160);
                v164 = vaddq_s16(v159, v161);
                v46 = v158.u16[7];
                v165 = vaddq_s16(vaddq_s16(v155, v161), v160);
                v166 = vaddq_s16(v157, v161);
                v211.val[0] = vzip1q_s16(v145, v166);
                v167 = v110 + 32;
                v31 = vzip2q_s16(v158, v163);
                v168 = v110 + 48;
                v169 = v110 + 64;
                v170 = v110 + 80;
                v171 = v110 + 96;
                v172 = v110 + 112;
                v211.val[1] = v193;
                v173 = v110;
                vst2q_s16(v173, v211);
                v173 += 16;
                v211.val[0] = vzip1q_s16(v156, v164);
                v211.val[1] = v193;
                vst2q_s16(v167, v211);
                v210.val[0] = vzip2q_s16(v156, v164);
                v210.val[1] = v193;
                vst2q_s16(v168, v210);
                v210.val[0] = vzip1q_s16(v162, v165);
                v210.val[1] = v193;
                vst2q_s16(v169, v210);
                v174 = vzip2q_s16(v162, v165);
                v210.val[0] = v193;
                vst2q_s16(v170, v210);
                v175 = vzip1q_s16(v158, v163);
                v210.val[0] = v193;
                vst2q_s16(v171, v210);
                v40 = vzip2q_s16(v145, v166);
                v41 = v193;
                vst2q_s16(v173, *v40.i8);
                v45 = v163.u16[7];
                vst2q_s16(v172, *v31.i8);
                v107 = v110 + 128;
                v106 = v86 + 32;
                result = v86 + 64;
                v86 += 32;
                v110 += 128;
              }

              while (result <= v38);
            }

            else
            {
              v106 = v86;
              v107 = a11;
            }

            if (v106 + 8 <= v38)
            {
              v178 = v202 + v43;
              v179 = v195 + v44;
              do
              {
                v40.i64[0] = *(v43 + v106);
                v41.i64[0] = *(v178 + v106);
                v180 = vzip1q_s8(v41, v40);
                v181 = vaddq_s16(vshlq_n_s32(v180, 0x10uLL), v180);
                v182 = vaddq_s16(vandq_s8(vqtbl1q_s8(v181, xmmword_296B8F090), v42), v181);
                v183 = vandq_s8(vdupq_lane_s16(*v182.i8, 3), xmmword_296B8F0A0);
                v184 = vdupq_n_s16(v46);
                v185 = vaddq_s16(vaddq_s16(v182, v184), v183);
                v46 = v185.u16[7];
                v183.i64[0] = *(v44 + v106);
                v184.i64[0] = *(v179 + v106);
                v186 = vzip1q_s8(v184, v183);
                v187 = vaddq_s16(vshlq_n_s32(v186, 0x10uLL), v186);
                v188 = vaddq_s16(vandq_s8(vqtbl1q_s8(v187, xmmword_296B8F090), v42), v187);
                v189 = vaddq_s16(vaddq_s16(v188, vdupq_n_s16(v45)), vandq_s8(vdupq_lane_s16(*v188.i8, 3), xmmword_296B8F0A0));
                v45 = v189.u16[7];
                v209.val[0] = vzip1q_s16(v185, v189);
                v209.val[1] = v193;
                v177 = v107 + 32;
                vst2q_s16(v107, v209);
                v190 = v107 + 16;
                v40 = vzip2q_s16(v185, v189);
                v41 = v193;
                vst2q_s16(v190, *v40.i8);
                v176 = v106 + 8;
                result = v106 + 16;
                v106 += 8;
                v107 = v177;
              }

              while (result <= v38);
            }

            else
            {
              v176 = v106;
              v177 = v107;
            }

            if (v176 < v38)
            {
              do
              {
                v46 += *(v201[0] + v176 + v202) | (*(v201[0] + v176) << 8);
                v45 += *(v194[0] + v176 + v195) | (*(v194[0] + v176) << 8);
                LOWORD(v191) = v46;
                WORD1(v191) = v22;
                WORD2(v191) = v45;
                HIWORD(v191) = v33;
                *v177 = v191;
                v177 += 4;
                ++v176;
              }

              while (v38 != v176);
            }
          }
        }

        a11 = (a11 + a12);
        v34 += a10;
      }

      while (v34 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v231 = 3;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v229 = v20.i32[0];
    v227 = v19;
    v225[1] = result;
    v228 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v226 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v230 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v225);
    v22 = *(*a5 + 24) ? **a5 : NAN;
    v217 = v22;
    v224 = 3;
    v23 = *(a6 + 8);
    v24 = a3[3];
    v222 = v24.i32[0];
    v220 = v23;
    v218[1] = v17;
    v221 = a3[6].i32[1] + v24.i32[1] * v18;
    v25 = a3[7].u32[1];
    v219 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v223 = v25;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v218);
    if (*(*a7 + 24))
    {
      v26 = **a7;
    }

    else
    {
      v26 = NAN;
    }

    v27 = a3[6].u32[1];
    if (a3[7].u32[0] + v27 < v18)
    {
      v29 = a3[3].i32[1] * *(a2 + 60);
      v30 = a3[5].u32[1];
      v31 = v30 + a9;
      v32.i64[0] = __PAIR64__(LODWORD(v26), LODWORD(v217));
      v32.i64[1] = __PAIR64__(LODWORD(v26), LODWORD(v217));
      do
      {
        v228 = v29 + v27;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v225);
        v221 = v29 + v27;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v218);
        v38 = v225[0];
        if (v225[0])
        {
          v39 = v218[0];
          if (v218[0])
          {
            if (v30 >= 0x20)
            {
              v52 = 0;
              v53 = v225[0] + 2 * v226;
              v54 = v226 + v225[0];
              v55 = v218[0] + 2 * v219;
              v56 = v219 + v218[0];
              v42.i64[0] = 0;
              v41.i64[0] = 0;
              v44 = xmmword_296B8F050;
              v43 = xmmword_296B8F0E0;
              v46 = xmmword_296B8F0B0;
              v45 = xmmword_296B8F020;
              v48 = xmmword_296B8F0C0;
              v47 = xmmword_296B8F000;
              v50 = xmmword_296B8F0D0;
              v49 = xmmword_296B8F070;
              v51 = xmmword_296B8F030;
              do
              {
                v232.val[1] = *(v225[0] + v52);
                v235.val[1] = *(v225[0] + v52 + 16);
                v232.val[0] = *(v53 + v52);
                v235.val[0] = *(v53 + v52 + 16);
                v237.val[1] = vqtbl2q_s8(v232, v44);
                v58 = *(v54 + v52);
                v57 = *(v54 + v52 + 16);
                v237.val[0] = vqtbl1q_s8(v58, v46);
                v237.val[0] = vqtbl2q_s8(v237, v45);
                v241.val[1] = vqtbl2q_s8(v235, v44);
                v241.val[0] = vqtbl1q_s8(v57, v46);
                v237.val[1] = vqtbl2q_s8(v241, v45);
                v241.val[1] = vqtbl2q_s8(v235, v47);
                v241.val[0] = vqtbl1q_s8(v57, v48);
                v241.val[0] = vqtbl2q_s8(v241, v45);
                v59 = vqtbl2q_s8(v232, v49);
                v241.val[1] = vqtbl1q_s8(v58, v50);
                v241.val[1] = vqtbl2q_s8(*(&v241 + 16), v45);
                v242.val[1] = vqtbl2q_s8(v232, v47);
                v242.val[0] = vqtbl1q_s8(v58, v48);
                v242.val[0] = vqtbl2q_s8(v242, xmmword_296B8F020);
                v232.val[1] = vqtbl2q_s8(v232, v51);
                v232.val[0] = vqtbl1q_s8(v58, v43);
                v60 = vqtbl2q_s8(v232, xmmword_296B8F020);
                v232.val[1] = vqtbl2q_s8(v235, v49);
                v232.val[0] = vqtbl1q_s8(v57, v50);
                v242.val[1] = vqtbl2q_s8(v232, xmmword_296B8F020);
                v232.val[1] = vqtbl2q_s8(v235, v51);
                v232.val[0] = vqtbl1q_s8(v57, v43);
                v235.val[1] = vqtbl2q_s8(v232, xmmword_296B8F020);
                v232.val[0] = vaddq_s32(vshlq_n_s64(v237.val[0], 0x20uLL), v237.val[0]);
                v232.val[1] = vaddq_s32(vshlq_n_s64(v237.val[1], 0x20uLL), v237.val[1]);
                v235.val[0] = vaddq_s32(vshlq_n_s64(v241.val[0], 0x20uLL), v241.val[0]);
                v241.val[1] = vaddq_s32(vshlq_n_s64(v241.val[1], 0x20uLL), v241.val[1]);
                v61 = vaddq_s32(vshlq_n_s64(v60, 0x20uLL), v60);
                v237.val[1] = vaddq_s32(vshlq_n_s64(v242.val[1], 0x20uLL), v242.val[1]);
                v235.val[1] = vaddq_s32(vshlq_n_s64(v235.val[1], 0x20uLL), v235.val[1]);
                v242.val[0] = vaddq_s32(vshlq_n_s64(v242.val[0], 0x20uLL), v242.val[0]);
                v244.val[1] = *(v218[0] + v52);
                v245.val[1] = *(v218[0] + v52 + 16);
                v63 = *(v56 + v52);
                v62 = *(v56 + v52 + 16);
                v244.val[0] = *(v55 + v52);
                v245.val[0] = *(v55 + v52 + 16);
                v248.val[1] = vqtbl2q_s8(v244, v44);
                v248.val[0] = vqtbl1q_s8(v63, xmmword_296B8F0B0);
                v242.val[1] = vdupq_lane_s32(*v235.val[0].i8, 1);
                v248.val[0] = vqtbl2q_s8(v248, xmmword_296B8F020);
                v238.val[1] = vqtbl2q_s8(v245, v44);
                v238.val[0] = vqtbl1q_s8(v62, xmmword_296B8F0B0);
                v248.val[1] = vqtbl2q_s8(v238, xmmword_296B8F020);
                v238.val[1] = vqtbl2q_s8(v245, xmmword_296B8F000);
                v238.val[0] = vqtbl1q_s8(v62, xmmword_296B8F0C0);
                v64 = vqtbl2q_s8(v238, xmmword_296B8F020);
                v238.val[1] = vqtbl2q_s8(v244, xmmword_296B8F070);
                v238.val[0] = vqtbl1q_s8(v63, xmmword_296B8F0D0);
                v238.val[0] = vqtbl2q_s8(v238, xmmword_296B8F020);
                v65 = vqtbl2q_s8(v244, xmmword_296B8F000);
                v238.val[1] = vqtbl1q_s8(v63, xmmword_296B8F0C0);
                v66 = vqtbl2q_s8(*(&v238 + 16), xmmword_296B8F020);
                v238.val[1] = vdupq_lane_s32(*v232.val[1].i8, 1);
                v244.val[1] = vqtbl2q_s8(v244, xmmword_296B8F030);
                v44 = xmmword_296B8F050;
                v244.val[0] = vqtbl1q_s8(v63, xmmword_296B8F0E0);
                v241.val[0] = vqtbl2q_s8(v244, xmmword_296B8F020);
                v244.val[1] = vqtbl2q_s8(v245, xmmword_296B8F070);
                v244.val[0] = vqtbl1q_s8(v62, xmmword_296B8F0D0);
                v67 = vqtbl2q_s8(v244, xmmword_296B8F020);
                v244.val[1] = vqtbl2q_s8(v245, xmmword_296B8F030);
                v244.val[0] = vqtbl1q_s8(v62, xmmword_296B8F0E0);
                v245.val[0] = vdupq_lane_s32(*v232.val[0].i8, 1);
                v245.val[0].i64[0] = 0;
                v238.val[1].i64[0] = 0;
                v242.val[1].i64[0] = 0;
                v237.val[0] = vqtbl2q_s8(v244, xmmword_296B8F020);
                v244.val[0] = vaddq_s32(vshlq_n_s64(v248.val[0], 0x20uLL), v248.val[0]);
                v244.val[1] = vaddq_s32(vshlq_n_s64(v248.val[1], 0x20uLL), v248.val[1]);
                v51 = xmmword_296B8F030;
                v50 = xmmword_296B8F0D0;
                v68 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v61.i8, 1), v61), vaddq_s32(vdupq_lane_s32(*v242.val[0].i8, 1), v242.val[0]));
                v242.val[0] = vaddq_s32(vshlq_n_s64(v64, 0x20uLL), v64);
                v49 = xmmword_296B8F070;
                v245.val[1] = vaddq_s32(vshlq_n_s64(v238.val[0], 0x20uLL), v238.val[0]);
                v43 = xmmword_296B8F0E0;
                v235.val[0] = vaddq_s32(v242.val[1], v235.val[0]);
                v242.val[1] = vaddq_s32(vshlq_n_s64(v66, 0x20uLL), v66);
                v69 = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
                v237.val[0] = vaddq_s32(vshlq_n_s64(v237.val[0], 0x20uLL), v237.val[0]);
                v241.val[0] = vaddq_s32(vshlq_n_s64(v241.val[0], 0x20uLL), v241.val[0]);
                v70 = vdupq_lane_s32(*v242.val[0].i8, 1);
                v232.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v241.val[1].i8, 1), v241.val[1]), vaddq_s32(v245.val[0], v232.val[0]));
                v70.i64[0] = 0;
                v241.val[1] = vaddq_s32(v70, v242.val[0]);
                v48 = xmmword_296B8F0C0;
                v242.val[0] = vdupq_lane_s32(*v244.val[1].i8, 1);
                v232.val[1] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v237.val[1].i8, 1), v237.val[1]), 3), vaddq_s32(v238.val[1], v232.val[1]));
                v242.val[0].i64[0] = 0;
                v37 = vaddq_s32(v242.val[0], v244.val[1]);
                v244.val[1] = vdupq_lane_s32(*v244.val[0].i8, 1);
                v244.val[1].i64[0] = 0;
                v242.val[0] = vaddq_s32(vdupq_lane_s32(*v242.val[1].i8, 1), v242.val[1]);
                v46 = xmmword_296B8F0B0;
                v45 = xmmword_296B8F020;
                v232.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v235.val[1].i8, 1), v235.val[1]), 3), v235.val[0]), v232.val[1]), vaddq_s32(v232.val[0], v68));
                v47 = xmmword_296B8F000;
                v35 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v245.val[1].i8, 1), v245.val[1]), vaddq_s32(v244.val[1], v244.val[0]));
                v36 = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v237.val[0].i8, 1), v237.val[0]), 3), v241.val[1]);
                v42 = vaddq_s32(v232.val[0], vdupq_lane_s32(*v42.i8, 0));
                v34 = vaddq_s32(v35, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v241.val[0].i8, 1), v241.val[0]), v242.val[0]));
                v71 = v52 + 64;
                v42.i32[0] = v42.i32[3];
                v33 = vaddq_s32(vaddq_s32(v36, vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v69.i8, 1), v69), 3), v37)), v34);
                v52 += 32;
                v41 = vaddq_s32(v33, vdupq_lane_s32(*v41.i8, 0));
                v41.i32[0] = v41.i32[3];
              }

              while (v71 <= v30);
              v40 = v30 & 0xFFFFFFE0;
            }

            else
            {
              v40 = 0;
              v41.i64[0] = 0;
              v42.i64[0] = 0;
              v44 = xmmword_296B8F050;
              v43 = xmmword_296B8F0E0;
              v46 = xmmword_296B8F0B0;
              v45 = xmmword_296B8F020;
              v48 = xmmword_296B8F0C0;
              v47 = xmmword_296B8F000;
              v50 = xmmword_296B8F0D0;
              v49 = xmmword_296B8F070;
              v51 = xmmword_296B8F030;
            }

            if ((v40 | 8) <= v30)
            {
              do
              {
                v33.i64[0] = *(v225[0] + v40);
                v34.i64[0] = *(v226 + v225[0] + v40);
                v35.i64[0] = *(v225[0] + 2 * v226 + v40);
                v73 = vzip1q_s8(0, v34);
                v74 = vzip1q_s8(v35, v33);
                v75 = vzip1q_s8(v73, v74);
                v76 = vzip2q_s8(v73, v74);
                v77 = vaddq_s32(vshlq_n_s64(v76, 0x20uLL), v76);
                v78 = vdupq_lane_s32(*v77.i8, 1);
                v79 = vaddq_s32(vshlq_n_s64(v75, 0x20uLL), v75);
                v80 = vaddq_s32(vdupq_lane_s32(*v79.i8, 1), v79);
                v42 = vaddq_s32(v78, vaddq_s32(v77, vdupq_lane_s32(*v42.i8, 0)));
                v77.i64[0] = *(v218[0] + v40);
                v78.i64[0] = *(v219 + v218[0] + v40);
                v42.i32[0] = v42.i32[3] + v80.i32[3];
                v80.i64[0] = *(v218[0] + 2 * v219 + v40);
                v81 = vzip1q_s8(0, v78);
                v82 = vzip1q_s8(v80, v77);
                v83 = vzip1q_s8(v81, v82);
                v84 = vzip2q_s8(v81, v82);
                v33 = vaddq_s32(vshlq_n_s64(v84, 0x20uLL), v84);
                v34 = vdupq_lane_s32(*v33.i8, 1);
                v85 = vaddq_s32(vshlq_n_s64(v83, 0x20uLL), v83);
                v35 = vaddq_s32(vdupq_lane_s32(*v85.i8, 1), v85);
                v41 = vaddq_s32(v34, vaddq_s32(v33, vdupq_lane_s32(*v41.i8, 0)));
                v41.i32[0] = v41.i32[3] + v35.i32[3];
                v72 = v40 + 8;
                v86 = v40 + 16;
                v40 += 8;
              }

              while (v86 <= v30);
            }

            else
            {
              v72 = v40;
            }

            if (v72 <= v30)
            {
              v87 = v30;
            }

            else
            {
              v87 = v72;
            }

            if (v87 + 32 <= v31)
            {
              v90 = v225[0] + 2 * v226;
              v91 = v226 + v225[0];
              v92 = v218[0] + 2 * v219;
              v93 = v219 + v218[0];
              v94 = a11;
              do
              {
                v236.val[1] = *(v38 + v87);
                v233.val[1] = *(v38 + v87 + 16);
                v236.val[0] = *(v90 + v87);
                v233.val[0] = *(v90 + v87 + 16);
                v96 = *(v91 + v87);
                v95 = *(v91 + v87 + 16);
                v240.val[1] = vqtbl2q_s8(v236, v49);
                v240.val[0] = vqtbl1q_s8(v96, v50);
                v240.val[0] = vqtbl2q_s8(v240, v45);
                v97 = vqtbl2q_s8(v236, v51);
                v240.val[1] = vqtbl1q_s8(v96, v43);
                v98 = vqtbl2q_s8(*(&v240 + 16), v45);
                v99 = vqtbl2q_s8(v233, v49);
                v240.val[1] = vqtbl1q_s8(v95, v50);
                v100 = vqtbl2q_s8(*(&v240 + 16), v45);
                v101 = vqtbl2q_s8(v233, v51);
                v240.val[1] = vqtbl1q_s8(v95, v43);
                v240.val[1] = vqtbl2q_s8(*(&v240 + 16), v45);
                v243.val[1] = vqtbl2q_s8(v233, v44);
                v243.val[0] = vqtbl1q_s8(v95, v46);
                v243.val[0] = vqtbl2q_s8(v243, xmmword_296B8F020);
                v102 = vqtbl2q_s8(v236, v47);
                v243.val[1] = vqtbl1q_s8(v96, v48);
                v243.val[1] = vqtbl2q_s8(*(&v243 + 16), xmmword_296B8F020);
                v236.val[1] = vqtbl2q_s8(v236, v44);
                v236.val[0] = vqtbl1q_s8(v96, v46);
                v236.val[0] = vqtbl2q_s8(v236, xmmword_296B8F020);
                v103 = vaddq_s32(vshlq_n_s64(v240.val[0], 0x20uLL), v240.val[0]);
                v104 = vaddq_s32(vshlq_n_s64(v98, 0x20uLL), v98);
                v240.val[0] = vaddq_s32(vshlq_n_s64(v100, 0x20uLL), v100);
                v105 = vaddq_s32(vshlq_n_s64(v243.val[0], 0x20uLL), v243.val[0]);
                v106 = vaddq_s32(vshlq_n_s64(v243.val[1], 0x20uLL), v243.val[1]);
                v107 = vaddq_s32(vshlq_n_s64(v236.val[0], 0x20uLL), v236.val[0]);
                v108 = vdupq_lane_s32(*v107.i8, 1);
                v109 = vdupq_lane_s32(*v104.i8, 1);
                v110 = vdupq_lane_s32(*v103.i8, 1);
                v110.i64[0] = 0;
                v109.i64[0] = 0;
                v111 = vdupq_lane_s32(*v42.i8, 0);
                v108.i64[0] = 0;
                v243.val[1] = *(v39 + v87);
                v36 = *(v39 + v87 + 16);
                v112 = vaddq_s32(v108, v107);
                v113 = *(v93 + v87);
                v37 = *(v93 + v87 + 16);
                v243.val[0] = *(v92 + v87);
                v236.val[0] = *(v92 + v87 + 16);
                v247.val[1] = vqtbl2q_s8(v243, xmmword_296B8F070);
                v114 = vaddq_s32(v109, v104);
                v247.val[0] = vqtbl1q_s8(v113, xmmword_296B8F0D0);
                v115 = vqtbl2q_s8(v247, xmmword_296B8F020);
                v247.val[1] = vqtbl2q_s8(v243, v51);
                v247.val[0] = vqtbl1q_s8(v113, v43);
                v247.val[0] = vqtbl2q_s8(v247, xmmword_296B8F020);
                v247.val[1] = vaddq_s32(v110, v103);
                v246.val[1] = vqtbl2q_s8(v243, v44);
                v246.val[0] = vqtbl1q_s8(v113, xmmword_296B8F0B0);
                v246.val[1] = vqtbl2q_s8(v246, xmmword_296B8F020);
                v116 = vaddq_s32(vshlq_n_s64(v115, 0x20uLL), v115);
                v246.val[0] = vaddq_s32(vshlq_n_s64(v247.val[0], 0x20uLL), v247.val[0]);
                v247.val[0] = vaddq_s32(vshlq_n_s64(v246.val[1], 0x20uLL), v246.val[1]);
                v246.val[1] = vaddq_s32(vdupq_laneq_s32(v247.val[1], 3), v112);
                v117 = vdupq_lane_s32(*v247.val[0].i8, 1);
                v118 = vdupq_lane_s32(*v116.i8, 1);
                v118.i64[0] = 0;
                v119 = vaddq_s32(v247.val[1], v111);
                v117.i64[0] = 0;
                v247.val[1] = vaddq_s32(v118, v116);
                v120 = vaddq_s32(vdupq_laneq_s32(v247.val[1], 3), vaddq_s32(v117, v247.val[0]));
                v121 = vdupq_lane_s32(*v41.i8, 0);
                v247.val[0] = vaddq_s32(v247.val[1], v121);
                v247.val[1] = vzip2q_s32(v119, v247.val[0]);
                v122 = vzip1q_s32(v119, v247.val[0]);
                v123 = v94 + 16;
                v124 = v94 + 24;
                v125 = v94 + 32;
                v126 = v94;
                v247.val[0] = vaddq_s32(v246.val[1], v111);
                vst2q_f32(v126, *(&v32 - 1));
                v126 += 8;
                v127 = vaddq_s32(v120, v121);
                v128 = v32;
                vst2q_f32(v126, *(&v247 + 16));
                v247.val[1] = vzip1q_s32(v247.val[0], v127);
                v129 = v32;
                vst2q_f32(v123, *(&v247 + 16));
                v130 = vdupq_lane_s32(*v246.val[0].i8, 1);
                v130.i64[0] = 0;
                v131 = vdupq_laneq_s32(v246.val[1], 3);
                v132 = vaddq_s32(v130, v246.val[0]);
                v246.val[0] = vdupq_laneq_s32(v120, 3);
                v239.val[0] = vzip2q_s32(v247.val[0], v127);
                v246.val[1] = vaddq_s32(vaddq_s32(v114, v111), v131);
                v239.val[1] = v32;
                vst2q_f32(v124, v239);
                v43 = xmmword_296B8F0E0;
                v133 = vaddq_s32(vaddq_s32(v132, v121), v246.val[0]);
                v247.val[0] = vzip1q_s32(v246.val[1], v133);
                v247.val[1] = v32;
                vst2q_f32(v125, v247);
                v247.val[0] = vdupq_lane_s32(*v106.i8, 1);
                v247.val[1] = vdupq_lane_s32(*v105.i8, 1);
                v247.val[0].i64[0] = 0;
                v240.val[1] = vaddq_s32(vshlq_n_s64(v240.val[1], 0x20uLL), v240.val[1]);
                v134 = vaddq_s32(v247.val[0], v106);
                v135 = vdupq_lane_s32(*v240.val[1].i8, 1);
                v247.val[1].i64[0] = 0;
                v136 = vaddq_s32(v247.val[1], v105);
                v50 = xmmword_296B8F0D0;
                v49 = xmmword_296B8F070;
                v135.i64[0] = 0;
                v240.val[1] = vaddq_s32(v135, v240.val[1]);
                v243.val[0] = vqtbl2q_s8(v243, xmmword_296B8F000);
                v137 = vqtbl1q_s8(v113, xmmword_296B8F0C0);
                v138 = vqtbl2q_s8(v243, xmmword_296B8F020);
                v139 = v94 + 40;
                v140 = v94 + 48;
                v141 = v94 + 56;
                v142 = v94 + 64;
                v143 = v94 + 72;
                v144 = v94 + 80;
                v145 = v94 + 88;
                v146 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v114, 3), v134), v131);
                v51 = xmmword_296B8F030;
                v147 = vaddq_s32(vshlq_n_s64(v138, 0x20uLL), v138);
                v243.val[0] = vdupq_lane_s32(*v147.i8, 1);
                v243.val[0].i64[0] = 0;
                v148 = v94 + 96;
                v149 = vaddq_s32(v243.val[0], v147);
                v243.val[0] = vdupq_lane_s32(*v240.val[0].i8, 1);
                v243.val[0].i64[0] = 0;
                v243.val[1] = vaddq_s32(v146, v111);
                v150 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v132, 3), v149), v246.val[0]);
                v151 = vaddq_s32(v150, v121);
                v152 = vzip2q_s32(v246.val[1], v133);
                v246.val[0] = v32;
                vst2q_f32(v139, v246);
                v153 = vzip1q_s32(v243.val[1], v151);
                v246.val[0] = v32;
                vst2q_f32(v140, v246);
                v240.val[0] = vaddq_s32(v243.val[0], v240.val[0]);
                v154 = vaddq_s32(v240.val[0], v111);
                v246.val[1] = vqtbl2q_s8(*(&v36 - 1), xmmword_296B8F070);
                v243.val[0] = vaddq_s32(vdupq_laneq_s32(v240.val[0], 3), v136);
                v246.val[0] = vqtbl1q_s8(v37, xmmword_296B8F0D0);
                v46 = xmmword_296B8F0B0;
                v240.val[0] = vqtbl2q_s8(v246, xmmword_296B8F020);
                v246.val[0] = vaddq_s32(vshlq_n_s64(v240.val[0], 0x20uLL), v240.val[0]);
                v155 = vdupq_laneq_s32(v243.val[0], 3);
                v246.val[1] = vdupq_lane_s32(*v246.val[0].i8, 1);
                v246.val[1].i64[0] = 0;
                v240.val[0] = vdupq_laneq_s32(v146, 3);
                v243.val[1] = vzip2q_s32(v243.val[1], v151);
                v156 = v32;
                vst2q_f32(v141, *(&v243 + 16));
                v243.val[1] = vaddq_s32(v154, v240.val[0]);
                v157 = vaddq_s32(v246.val[1], v246.val[0]);
                v158 = vdupq_laneq_s32(v150, 3);
                v159 = vaddq_s32(vaddq_s32(v157, v121), v158);
                v160 = vzip1q_s32(v243.val[1], v159);
                v246.val[0] = v32;
                vst2q_f32(v142, v246);
                v246.val[0] = vqtbl2q_s8(*(&v36 - 1), v44);
                v161 = vqtbl1q_s8(v37, xmmword_296B8F0B0);
                v162 = vqtbl2q_s8(v246, xmmword_296B8F020);
                v163 = vaddq_s32(vshlq_n_s64(v162, 0x20uLL), v162);
                v246.val[0] = vdupq_lane_s32(*v163.i8, 1);
                v246.val[0].i64[0] = 0;
                v243.val[0] = vaddq_s32(vaddq_s32(v243.val[0], v111), v240.val[0]);
                v164 = vaddq_s32(vdupq_laneq_s32(v157, 3), vaddq_s32(v246.val[0], v163));
                v165 = vaddq_s32(vaddq_s32(v164, v121), v158);
                v246.val[1] = vzip2q_s32(v243.val[1], v159);
                v166 = v32;
                vst2q_f32(v143, *(&v246 + 16));
                v246.val[1] = vzip1q_s32(v243.val[0], v165);
                v167 = v32;
                vst2q_f32(v144, *(&v246 + 16));
                v168 = vqtbl2q_s8(*(&v36 - 1), xmmword_296B8F030);
                v246.val[1] = vqtbl1q_s8(v37, xmmword_296B8F0E0);
                v169 = vqtbl2q_s8(*(&v246 + 16), xmmword_296B8F020);
                v170 = vaddq_s32(vshlq_n_s64(v169, 0x20uLL), v169);
                v246.val[0] = vdupq_lane_s32(*v170.i8, 1);
                v246.val[0].i64[0] = 0;
                v171 = vaddq_s32(v246.val[0], v170);
                v243.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v240.val[1], v155), v111), v240.val[0]);
                v172 = vdupq_laneq_s32(v164, 3);
                v246.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v171, v172), v121), v158);
                v246.val[1] = vzip2q_s32(v243.val[0], v165);
                v45 = xmmword_296B8F020;
                v173 = v32;
                vst2q_f32(v145, *(&v246 + 16));
                v246.val[1] = vzip1q_s32(v243.val[1], v246.val[0]);
                v174 = v32;
                vst2q_f32(v148, *(&v246 + 16));
                v48 = xmmword_296B8F0C0;
                v47 = xmmword_296B8F000;
                v233.val[1] = vqtbl2q_s8(v233, xmmword_296B8F000);
                v233.val[0] = vqtbl1q_s8(v95, xmmword_296B8F0C0);
                v233.val[0] = vqtbl2q_s8(v233, xmmword_296B8F020);
                v233.val[0] = vaddq_s32(vshlq_n_s64(v233.val[0], 0x20uLL), v233.val[0]);
                v233.val[1] = vdupq_lane_s32(*v233.val[0].i8, 1);
                v233.val[1].i64[0] = 0;
                v233.val[0] = vaddq_s32(vdupq_laneq_s32(v240.val[1], 3), vaddq_s32(v233.val[1], v233.val[0]));
                v175 = vqtbl2q_s8(*(&v36 - 1), xmmword_296B8F000);
                v233.val[1] = vqtbl1q_s8(v37, xmmword_296B8F0C0);
                v233.val[1] = vqtbl2q_s8(*(&v233 + 16), xmmword_296B8F020);
                v233.val[1] = vaddq_s32(vshlq_n_s64(v233.val[1], 0x20uLL), v233.val[1]);
                v35 = vdupq_lane_s32(*v233.val[1].i8, 1);
                v35.i64[0] = 0;
                v42 = vaddq_s32(vaddq_s32(vaddq_s32(v233.val[0], v155), v111), v240.val[0]);
                v41 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v171, 3), vaddq_s32(v35, v233.val[1])), v172), v121), v158);
                v176 = v94 + 104;
                v177 = v94 + 112;
                v178 = v94 + 120;
                v233.val[0] = vzip2q_s32(v243.val[1], v246.val[0]);
                v233.val[1] = v32;
                vst2q_f32(v176, v233);
                v233.val[0] = vzip1q_s32(v42, v41);
                v233.val[1] = v32;
                vst2q_f32(v177, v233);
                v33 = vzip2q_s32(v42, v41);
                v34 = v32;
                vst2q_f32(v178, *v33.i8);
                v89 = v94 + 128;
                v88 = v87 + 32;
                result = v87 + 64;
                v87 += 32;
                v42.i32[0] = v42.i32[3];
                v94 += 128;
                v41.i32[0] = v41.i32[3];
              }

              while (result <= v31);
            }

            else
            {
              v88 = v87;
              v89 = a11;
            }

            if (v88 + 8 <= v31)
            {
              v181 = v38 + 2 * v226;
              v182 = v226 + v38;
              v183 = v39 + 2 * v219;
              v184 = v219 + v39;
              do
              {
                v33.i64[0] = *(v38 + v88);
                v34.i64[0] = *(v182 + v88);
                v35.i64[0] = *(v181 + v88);
                v185 = vzip1q_s8(0, v34);
                v186 = vzip1q_s8(v35, v33);
                v187 = vzip1q_s8(v185, v186);
                v188 = vzip2q_s8(v185, v186);
                v189 = vshlq_n_s64(v188, 0x20uLL);
                v190 = vaddq_s32(vshlq_n_s64(v187, 0x20uLL), v187);
                v191 = vaddq_s32(v189, v188);
                v192 = vdupq_lane_s32(*v42.i8, 0);
                v189.i64[0] = *(v39 + v88);
                v193 = vdupq_lane_s32(*v191.i8, 1);
                v36.i64[0] = *(v184 + v88);
                v37.i64[0] = *(v183 + v88);
                v194 = vdupq_lane_s32(*v190.i8, 1);
                v195 = vaddq_s32(v191, v192);
                v196 = vzip1q_s8(0, v36);
                v197 = vzip1q_s8(v37, v189);
                v198 = vzip1q_s8(v196, v197);
                v194.i64[0] = 0;
                v199 = vzip2q_s8(v196, v197);
                v200 = vaddq_s32(vshlq_n_s64(v198, 0x20uLL), v198);
                v193.i64[0] = 0;
                v201 = vaddq_s32(vshlq_n_s64(v199, 0x20uLL), v199);
                v202 = vdupq_lane_s32(*v201.i8, 1);
                v203 = vdupq_lane_s32(*v200.i8, 1);
                v204 = vaddq_s32(v194, v190);
                v203.i64[0] = 0;
                v202.i64[0] = 0;
                v205 = vdupq_laneq_s32(v204, 3);
                v37 = vaddq_s32(v203, v200);
                v206 = vdupq_lane_s32(*v41.i8, 0);
                v42 = vaddq_s32(v204, v192);
                v207 = vaddq_s32(v193, v195);
                v208 = vaddq_s32(v37, v206);
                v209 = vaddq_s32(v202, vaddq_s32(v201, v206));
                v210 = vzip2q_s32(v42, v208);
                v234.val[0] = vzip1q_s32(v42, v208);
                v180 = v89 + 32;
                v234.val[1] = v32;
                v211 = v89 + 16;
                v212 = v89 + 24;
                v213 = vaddq_s32(v207, v205);
                vst2q_f32(v89, v234);
                v214 = v89 + 8;
                v41 = vaddq_s32(v209, vdupq_laneq_s32(v37, 3));
                v36 = v32;
                vst2q_f32(v214, *(&v36 - 1));
                v42.i32[0] = v213.i32[3];
                v234.val[0] = vzip1q_s32(v213, v41);
                v35 = v32;
                vst2q_f32(v211, *(&v35 - 1));
                v33 = vzip2q_s32(v213, v41);
                v34 = v32;
                vst2q_f32(v212, *v33.i8);
                v41.i32[0] = v41.i32[3];
                v179 = v88 + 8;
                result = v88 + 16;
                v88 += 8;
                v89 = v180;
              }

              while (result <= v31);
            }

            else
            {
              v179 = v88;
              v180 = v89;
            }

            if (v179 < v31)
            {
              v215 = v42.i32[0];
              do
              {
                LODWORD(v216) = ((*(v225[0] + v179) << 24) | (*(v225[0] + v179 + v226) << 16) | (*(v225[0] + v179 + 2 * v226) << 8)) + v215;
                *(&v216 + 1) = v217;
                DWORD2(v216) = ((*(v218[0] + v179) << 24) | (*(v218[0] + v179 + v219) << 16) | (*(v218[0] + v179 + 2 * v219) << 8)) + v41.i32[0];
                *(&v216 + 3) = v26;
                *v180 = v216;
                v180 += 4;
                ++v179;
              }

              while (v31 != v179);
            }
          }
        }

        a11 = (a11 + a12);
        v27 += a10;
      }

      while (v27 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      v12 = **a4;
    }

    v195 = 4;
    v19 = *(a5 + 8);
    v20 = a3[3];
    v193 = v20.i32[0];
    v191 = v19;
    v189[1] = result;
    v192 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v190 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v194 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v189);
    v188 = 4;
    v22 = *(a6 + 8);
    v23 = a3[3];
    v186 = v23.i32[0];
    v184 = v22;
    v182[1] = v17;
    v185 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v183 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v187 = v24;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v182);
    if (*(*a7 + 24))
    {
      LODWORD(a7) = **a7;
    }

    v25 = a3[6].u32[1];
    if (a3[7].u32[0] + v25 < v18)
    {
      v27 = a3[3].i32[1] * *(a2 + 60);
      v28 = a3[5].u32[1];
      v29 = v28 + a9;
      v176 = vdupq_n_s32(a7);
      v177 = vdupq_n_s32(v12);
      do
      {
        v192 = v27 + v25;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v189);
        v185 = v27 + v25;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v182);
        v37 = v177;
        v38 = v12;
        v39 = v176;
        v40 = v189[0];
        if (v189[0])
        {
          v41 = v182[0];
          if (v182[0])
          {
            if (v28 >= 0x20)
            {
              v45 = v190 + v189[0];
              v46 = v190 + v189[0] + 2 * v190;
              v47 = v189[0] + 2 * v190;
              v48 = v183 + v182[0];
              v49 = v183 + v182[0] + 2 * v183;
              v50 = v182[0] + 2 * v183;
              v43 = 0uLL;
              v51 = 32;
              v52 = xmmword_296B8F040;
              v44 = xmmword_296B8F060;
              do
              {
                v181 = v43;
                result = v45 + v51;
                v208.val[1] = *(v189[0] + v51 - 32);
                v218.val[1] = *(v189[0] + v51 - 16);
                v211.val[1] = *(v45 + v51 - 32);
                v216.val[1] = *(v45 + v51 - 16);
                v208.val[0] = *(v47 + v51 - 32);
                v218.val[0] = *(v47 + v51 - 16);
                v211.val[0] = *(v46 + v51 - 32);
                v216.val[0] = *(v46 + v51 - 16);
                v180.val[0] = vqtbl2q_s8(v211, v52);
                v180.val[1] = vqtbl2q_s8(v208, xmmword_296B8F030);
                v179.val[0] = vqtbl2q_s8(v211, xmmword_296B8F010);
                v179.val[1] = vqtbl2q_s8(v208, xmmword_296B8F000);
                v178.val[0] = vqtbl2q_s8(v211, xmmword_296B8F080);
                v178.val[1] = vqtbl2q_s8(v208, xmmword_296B8F070);
                v208.val[1] = vqtbl2q_s8(v208, xmmword_296B8F050);
                v208.val[0] = vqtbl2q_s8(v211, v44);
                v211.val[1] = vqtbl2q_s8(v218, xmmword_296B8F000);
                v211.val[0] = vqtbl2q_s8(v216, xmmword_296B8F010);
                v213.val[1] = vqtbl2q_s8(v218, xmmword_296B8F050);
                v213.val[0] = vqtbl2q_s8(v216, v44);
                v215.val[1] = vqtbl2q_s8(v218, xmmword_296B8F070);
                v215.val[0] = vqtbl2q_s8(v216, xmmword_296B8F080);
                v218.val[1] = vqtbl2q_s8(v218, xmmword_296B8F030);
                v220.val[1] = *(v182[0] + v51 - 32);
                v222.val[1] = *(v182[0] + v51 - 16);
                v206.val[1] = *(v48 + v51 - 32);
                v207.val[1] = *(v48 + v51 - 16);
                v218.val[0] = vqtbl2q_s8(v216, xmmword_296B8F040);
                v220.val[0] = *(v50 + v51 - 32);
                v222.val[0] = *(v50 + v51 - 16);
                v206.val[0] = *(v49 + v51 - 32);
                v207.val[0] = *(v49 + v51 - 16);
                v216.val[1] = vqtbl2q_s8(v220, xmmword_296B8F030);
                v216.val[0] = vqtbl2q_s8(v206, xmmword_296B8F040);
                v204.val[1] = vqtbl2q_s8(v220, xmmword_296B8F000);
                v204.val[0] = vqtbl2q_s8(v206, xmmword_296B8F010);
                v202.val[1] = vqtbl2q_s8(v220, xmmword_296B8F070);
                v202.val[0] = vqtbl2q_s8(v206, xmmword_296B8F080);
                v220.val[1] = vqtbl2q_s8(v220, xmmword_296B8F050);
                v220.val[0] = vqtbl2q_s8(v206, xmmword_296B8F060);
                v206.val[1] = vqtbl2q_s8(v222, xmmword_296B8F000);
                v206.val[0] = vqtbl2q_s8(v207, xmmword_296B8F010);
                v198.val[1] = vqtbl2q_s8(v222, xmmword_296B8F050);
                v198.val[0] = vqtbl2q_s8(v207, xmmword_296B8F060);
                v196.val[1] = vqtbl2q_s8(v222, xmmword_296B8F070);
                v196.val[0] = vqtbl2q_s8(v207, xmmword_296B8F080);
                v222.val[1] = vqtbl2q_s8(v222, xmmword_296B8F030);
                v222.val[0] = vqtbl2q_s8(v207, xmmword_296B8F040);
                v52 = xmmword_296B8F040;
                v53 = vqtbl2q_s8(v180, xmmword_296B8F020);
                v207.val[0] = vqtbl2q_s8(v179, xmmword_296B8F020);
                v54 = vqtbl2q_s8(v178, xmmword_296B8F020);
                v55 = vqtbl2q_s8(v208, xmmword_296B8F020);
                v208.val[0] = vqtbl2q_s8(v211, xmmword_296B8F020);
                v213.val[0] = vqtbl2q_s8(v213, xmmword_296B8F020);
                v213.val[1] = vqtbl2q_s8(v215, xmmword_296B8F020);
                v215.val[0] = vqtbl2q_s8(v218, xmmword_296B8F020);
                v208.val[1] = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
                v211.val[0] = vaddq_s32(vshlq_n_s64(v207.val[0], 0x20uLL), v207.val[0]);
                v211.val[1] = vaddq_s32(vshlq_n_s64(v54, 0x20uLL), v54);
                v56 = vaddq_s32(vshlq_n_s64(v55, 0x20uLL), v55);
                v57 = vaddq_s32(vshlq_n_s64(v208.val[0], 0x20uLL), v208.val[0]);
                v58 = vaddq_s32(vshlq_n_s64(v213.val[0], 0x20uLL), v213.val[0]);
                v208.val[0] = vaddq_s32(vshlq_n_s64(v213.val[1], 0x20uLL), v213.val[1]);
                v213.val[0] = vqtbl2q_s8(v216, xmmword_296B8F020);
                v213.val[1] = vqtbl2q_s8(v204, xmmword_296B8F020);
                v215.val[0] = vaddq_s32(vshlq_n_s64(v215.val[0], 0x20uLL), v215.val[0]);
                v215.val[1] = vqtbl2q_s8(v202, xmmword_296B8F020);
                v216.val[0] = vqtbl2q_s8(v220, xmmword_296B8F020);
                v216.val[1] = vqtbl2q_s8(v206, xmmword_296B8F020);
                v198.val[0] = vqtbl2q_s8(v198, xmmword_296B8F020);
                v196.val[0] = vqtbl2q_s8(v196, xmmword_296B8F020);
                v196.val[1] = vqtbl2q_s8(v222, xmmword_296B8F020);
                v44 = xmmword_296B8F060;
                v33 = vaddq_s32(vshlq_n_s64(v213.val[0], 0x20uLL), v213.val[0]);
                v213.val[0] = vaddq_s32(vshlq_n_s64(v213.val[1], 0x20uLL), v213.val[1]);
                v213.val[1] = vaddq_s32(vshlq_n_s64(v215.val[1], 0x20uLL), v215.val[1]);
                v215.val[1] = vaddq_s32(vshlq_n_s64(v216.val[0], 0x20uLL), v216.val[0]);
                v216.val[0] = vaddq_s32(vshlq_n_s64(v216.val[1], 0x20uLL), v216.val[1]);
                v198.val[0] = vaddq_s32(vshlq_n_s64(v198.val[0], 0x20uLL), v198.val[0]);
                v196.val[0] = vaddq_s32(vshlq_n_s64(v196.val[0], 0x20uLL), v196.val[0]);
                v196.val[1] = vaddq_s32(vshlq_n_s64(v196.val[1], 0x20uLL), v196.val[1]);
                v196.val[0] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v196.val[0].i8, 1), v196.val[0]), 3);
                v30 = vextq_s8(v196.val[0], v196.val[0], 8uLL);
                *v30.i8 = vadd_s32(*v30.i8, vadd_s32(vdup_lane_s32(*v198.val[0].i8, 1), *&vextq_s8(v198.val[0], v198.val[0], 8uLL)));
                v32 = vextq_s8(v213.val[1], v213.val[1], 8uLL);
                v196.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v196.val[1].i8, 1), v196.val[1]), 3);
                *v32.i8 = vadd_s32(vadd_s32(vadd_s32(*v213.val[1].i8, *v32.i8), vadd_s32(*v215.val[1].i8, *&vextq_s8(v215.val[1], v215.val[1], 8uLL))), vadd_s32(vadd_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL)), vadd_s32(*v213.val[0].i8, *&vextq_s8(v213.val[0], v213.val[0], 8uLL))));
                v36 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v208.val[0].i8, 1), v208.val[0]), 3);
                *v33.i8 = vadd_s32(*&vextq_s8(v36, v36, 8uLL), vadd_s32(vdup_lane_s32(*v58.i8, 1), *&vextq_s8(v58, v58, 8uLL)));
                v59 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v215.val[0].i8, 1), v215.val[0]), 3);
                *v57.i8 = vadd_s32(*&vextq_s8(v59, v59, 8uLL), vadd_s32(vdup_lane_s32(*v57.i8, 1), *&vextq_s8(v57, v57, 8uLL)));
                v43.i64[1] = v181.i64[1];
                *v30.i8 = vadd_s32(vadd_s32(*&vextq_s8(v196.val[1], v196.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v216.val[0].i8, 1), *&vextq_s8(v216.val[0], v216.val[0], 8uLL))), *v30.i8);
                v31 = vextq_s8(v56, v56, 8uLL);
                *v31.i8 = vadd_s32(vadd_s32(*v211.val[1].i8, *&vextq_s8(v211.val[1], v211.val[1], 8uLL)), vadd_s32(*v56.i8, *v31.i8));
                *v33.i8 = vadd_s32(*v57.i8, *v33.i8);
                v34 = vextq_s8(v211.val[0], v211.val[0], 8uLL);
                v35 = vextq_s8(v208.val[1], v208.val[1], 8uLL);
                *v31.i8 = vadd_s32(*v33.i8, vadd_s32(*v31.i8, vadd_s32(vadd_s32(*v208.val[1].i8, *v35.i8), vadd_s32(*v211.val[0].i8, *v34.i8))));
                *v30.i8 = vzip2_s32(*v31.i8, vadd_s32(*v30.i8, *v32.i8));
                *v43.i8 = vadd_s32(*v30.i8, *v181.i8);
                v51 += 32;
              }

              while (v51 <= v28);
              v42 = v28 & 0xFFFFFFE0;
              v39 = v176;
              v37 = v177;
              v38 = v12;
            }

            else
            {
              v42 = 0;
              v43 = 0uLL;
              v44 = xmmword_296B8F060;
            }

            v61 = xmmword_296B8F000;
            v60 = xmmword_296B8F030;
            v62 = xmmword_296B8F020;
            v63 = xmmword_296B8F010;
            if ((v42 | 8) <= v28)
            {
              do
              {
                v30.i64[0] = *(v189[0] + v42);
                v31.i64[0] = *(v190 + v189[0] + v42);
                v32.i64[0] = *(v189[0] + 2 * v190 + v42);
                v33.i64[0] = *(v190 + v189[0] + 2 * v190 + v42);
                v65 = vzip1q_s8(v33, v31);
                v66 = vzip1q_s8(v32, v30);
                v67 = vzip1q_s8(v65, v66);
                v68 = vzip2q_s8(v65, v66);
                v69 = vshlq_n_s64(v68, 0x20uLL);
                v70 = vshlq_n_s64(v67, 0x20uLL);
                v32 = vaddq_s32(v70, v67);
                v30 = vaddq_s32(v69, v68);
                v69.i64[0] = *(v182[0] + v42);
                v70.i64[0] = *(v183 + v182[0] + v42);
                v34.i64[0] = *(v182[0] + 2 * v183 + v42);
                v35.i64[0] = *(v183 + v182[0] + 2 * v183 + v42);
                v71 = vzip1q_s8(v35, v70);
                v72 = vzip1q_s8(v34, v69);
                v73 = vzip1q_s8(v71, v72);
                v74 = vzip2q_s8(v71, v72);
                v35 = vshlq_n_s64(v73, 0x20uLL);
                v34 = vaddq_s32(v35, v73);
                v75 = vaddq_s32(vshlq_n_s64(v74, 0x20uLL), v74);
                *v30.i8 = vadd_s32(vzip2_s32(vadd_s32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)), vadd_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL))), *v43.i8);
                v31 = vextq_s8(v34, v34, 8uLL);
                v33 = vextq_s8(v32, v32, 8uLL);
                *v31.i8 = vzip2_s32(vadd_s32(*v32.i8, *v33.i8), vadd_s32(*v34.i8, *v31.i8));
                *v43.i8 = vadd_s32(*v30.i8, *v31.i8);
                v64 = v42 + 8;
                result = v42 + 16;
                v42 += 8;
              }

              while (result <= v28);
            }

            else
            {
              v64 = v42;
            }

            if (v64 < v28)
            {
              do
              {
                result = v182[0] + v64;
                v30.i8[0] = *(v190 + v189[0] + v64);
                v30.i8[4] = *(v182[0] + v64);
                v31.i8[0] = *(v189[0] + v64);
                v31.i8[4] = *(v183 + v182[0] + v64);
                v76 = vshl_u32(vand_s8(*v31.i8, 0xFF000000FFLL), 0x1000000018);
                v77 = vorr_s8(v76, vshl_u32(vand_s8(*v30.i8, 0xFF000000FFLL), 0x1800000010));
                v76.i8[0] = *(v189[0] + 2 * v190 + v64);
                v76.i8[4] = *(v182[0] + 2 * v183 + v64);
                v78 = vand_s8(v76, 0xFF000000FFLL);
                *v31.i8 = vorr_s8(vshl_n_s32(v78, 8uLL), v78);
                *v30.i8 = vorr_s8(v77, *v31.i8);
                *v43.i8 = vadd_s32(*v30.i8, *v43.i8);
                ++v64;
              }

              while (v28 != v64);
              v64 = v28;
            }

            if (v64 + 32 <= v29)
            {
              v82 = v190 + v189[0];
              v83 = v190 + v189[0] + 2 * v190;
              v84 = v189[0] + 2 * v190;
              v85 = v183 + v182[0];
              v86 = v183 + v182[0] + 2 * v183;
              v87 = v182[0] + 2 * v183;
              v81 = a11;
              v89 = xmmword_296B8F080;
              v88 = xmmword_296B8F070;
              v90 = xmmword_296B8F050;
              do
              {
                v209.val[1] = *(v40 + v64);
                v199.val[1] = *(v40 + v64 + 16);
                v212.val[1] = *(v82 + v64);
                v197.val[1] = *(v82 + v64 + 16);
                v209.val[0] = *(v84 + v64);
                v199.val[0] = *(v84 + v64 + 16);
                v91 = *v43.i8;
                v201.val[1] = vqtbl2q_s8(v209, v88);
                v212.val[0] = *(v83 + v64);
                v197.val[0] = *(v83 + v64 + 16);
                v201.val[0] = vqtbl2q_s8(v212, v89);
                v214.val[1] = vqtbl2q_s8(v209, v60);
                v92 = vqtbl2q_s8(v201, v62);
                v214.val[0] = vqtbl2q_s8(v212, xmmword_296B8F040);
                v93 = vqtbl2q_s8(v214, xmmword_296B8F020);
                v201.val[1] = vqtbl2q_s8(v199, v88);
                v201.val[0] = vqtbl2q_s8(v197, v89);
                v214.val[1] = vqtbl2q_s8(v199, v90);
                v201.val[0] = vqtbl2q_s8(v201, xmmword_296B8F020);
                v214.val[0] = vqtbl2q_s8(v197, v44);
                v201.val[1] = vqtbl2q_s8(v214, xmmword_296B8F020);
                v214.val[1] = vqtbl2q_s8(v209, v61);
                v214.val[0] = vqtbl2q_s8(v212, v63);
                v209.val[1] = vqtbl2q_s8(v209, v90);
                v94 = vqtbl2q_s8(v214, xmmword_296B8F020);
                v209.val[0] = vqtbl2q_s8(v212, v44);
                v212.val[1] = vqtbl2q_s8(v209, xmmword_296B8F020);
                v95 = vaddq_s32(vshlq_n_s64(v92, 0x20uLL), v92);
                v217.val[1] = *(v41 + v64);
                v209.val[1] = *(v41 + v64 + 16);
                v96 = vaddq_s32(vshlq_n_s64(v93, 0x20uLL), v93);
                v219.val[1] = *(v85 + v64);
                v212.val[0] = *(v85 + v64 + 16);
                v217.val[0] = *(v87 + v64);
                v219.val[0] = *(v86 + v64);
                v97 = vaddq_s32(vshlq_n_s64(v212.val[1], 0x20uLL), v212.val[1]);
                v221.val[1] = vqtbl2q_s8(v217, v88);
                v221.val[0] = vqtbl2q_s8(v219, v89);
                v203.val[1] = vqtbl2q_s8(v217, xmmword_296B8F030);
                v203.val[0] = vqtbl2q_s8(v219, xmmword_296B8F040);
                v212.val[1] = vdupq_lane_s32(*v97.i8, 1);
                v214.val[1] = vqtbl2q_s8(v217, xmmword_296B8F000);
                v214.val[0] = vqtbl2q_s8(v219, xmmword_296B8F010);
                v205.val[1] = vqtbl2q_s8(v217, xmmword_296B8F050);
                v205.val[0] = vqtbl2q_s8(v219, xmmword_296B8F060);
                v217.val[1] = vdupq_lane_s32(*v96.i8, 1);
                v219.val[0] = vdupq_lane_s32(*v95.i8, 1);
                v219.val[0].i64[0] = 0;
                v212.val[1].i64[0] = 0;
                v98 = vaddq_s32(v212.val[1], v97);
                v219.val[1] = vqtbl2q_s8(v221, xmmword_296B8F020);
                v212.val[1] = vdupq_lane_s32(v91, 0);
                v217.val[1].i64[0] = 0;
                v217.val[0] = vqtbl2q_s8(v203, xmmword_296B8F020);
                v221.val[0] = vqtbl2q_s8(v205, xmmword_296B8F020);
                v90 = xmmword_296B8F050;
                v219.val[1] = vaddq_s32(vshlq_n_s64(v219.val[1], 0x20uLL), v219.val[1]);
                v99 = vaddq_s32(v217.val[1], v96);
                v221.val[0] = vaddq_s32(vshlq_n_s64(v221.val[0], 0x20uLL), v221.val[0]);
                v221.val[1] = vdupq_lane_s32(*v221.val[0].i8, 1);
                v100 = vdupq_lane_s32(*v219.val[1].i8, 1);
                v101 = vaddq_s32(v219.val[0], v95);
                v100.i64[0] = 0;
                v221.val[1].i64[0] = 0;
                v217.val[1] = vaddq_s32(v101, v212.val[1]);
                v219.val[0] = vaddq_s32(v221.val[1], v221.val[0]);
                v221.val[0] = vaddq_s32(v100, v219.val[1]);
                v219.val[1] = vdupq_laneq_s32(v221.val[0], 3);
                v102 = vaddq_s32(vdupq_laneq_s32(v101, 3), v98);
                v89 = xmmword_296B8F080;
                v88 = xmmword_296B8F070;
                v103 = vdupq_lane_s32(v91, 1);
                v221.val[0] = vaddq_s32(v221.val[0], v103);
                v221.val[1] = vzip2q_s32(v37, v221.val[0]);
                v104 = vzip2q_s32(v217.val[1], v39);
                v219.val[0] = vaddq_s32(v219.val[1], v219.val[0]);
                v219.val[1] = vzip1q_s32(v37, v221.val[0]);
                v221.val[0] = vzip1q_s32(v217.val[1], v39);
                v209.val[0] = *(v87 + v64 + 16);
                v105 = *(v86 + v64 + 16);
                v106 = v81;
                vst2q_f32(v106, *(&v219 + 16));
                v106 += 8;
                v217.val[1] = vaddq_s32(v102, v212.val[1]);
                v219.val[1] = vaddq_s32(v219.val[0], v103);
                vst2q_f32(v106, *(&v221 + 16));
                v221.val[0] = vzip1q_s32(v37, v219.val[1]);
                v221.val[1] = vzip1q_s32(v217.val[1], v39);
                v107 = v81 + 16;
                vst2q_f32(v107, v221);
                v217.val[0] = vaddq_s32(vshlq_n_s64(v217.val[0], 0x20uLL), v217.val[0]);
                v221.val[0] = vdupq_lane_s32(*v217.val[0].i8, 1);
                v108 = vdupq_laneq_s32(v102, 3);
                v221.val[0].i64[0] = 0;
                v219.val[0] = vdupq_laneq_s32(v219.val[0], 3);
                v221.val[1] = vaddq_s32(vaddq_s32(v99, v212.val[1]), v108);
                v217.val[0] = vaddq_s32(v221.val[0], v217.val[0]);
                v219.val[1] = vzip2q_s32(v37, v219.val[1]);
                v221.val[0] = vzip2q_s32(v217.val[1], v39);
                v109 = v81 + 24;
                v217.val[1] = vaddq_s32(vaddq_s32(v217.val[0], v103), v219.val[0]);
                vst2q_f32(v109, *(&v219 + 16));
                v219.val[1] = vzip1q_s32(v37, v217.val[1]);
                v221.val[0] = vzip1q_s32(v221.val[1], v39);
                v110 = v81 + 32;
                vst2q_f32(v110, *(&v219 + 16));
                v201.val[0] = vaddq_s32(vshlq_n_s64(v201.val[0], 0x20uLL), v201.val[0]);
                v111 = vaddq_s32(vshlq_n_s64(v94, 0x20uLL), v94);
                v219.val[1] = vdupq_lane_s32(*v111.i8, 1);
                v201.val[1] = vaddq_s32(vshlq_n_s64(v201.val[1], 0x20uLL), v201.val[1]);
                v221.val[0] = vdupq_lane_s32(*v201.val[1].i8, 1);
                v219.val[1].i64[0] = 0;
                v112 = vaddq_s32(v219.val[1], v111);
                v219.val[1] = vdupq_lane_s32(*v201.val[0].i8, 1);
                v219.val[1].i64[0] = 0;
                v221.val[0].i64[0] = 0;
                v221.val[0] = vaddq_s32(v221.val[0], v201.val[1]);
                v219.val[1] = vaddq_s32(v219.val[1], v201.val[0]);
                v201.val[0] = vqtbl2q_s8(v214, xmmword_296B8F020);
                v201.val[1] = vaddq_s32(vdupq_laneq_s32(v99, 3), v112);
                v201.val[0] = vaddq_s32(vshlq_n_s64(v201.val[0], 0x20uLL), v201.val[0]);
                v113 = vdupq_lane_s32(*v201.val[0].i8, 1);
                v113.i64[0] = 0;
                v201.val[1] = vaddq_s32(v201.val[1], v108);
                v214.val[0] = vzip2q_s32(v37, v217.val[1]);
                v214.val[1] = vzip2q_s32(v221.val[1], v39);
                v114 = vaddq_s32(v201.val[1], v212.val[1]);
                v115 = v81 + 40;
                vst2q_f32(v115, v214);
                v116 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v217.val[0], 3), vaddq_s32(v113, v201.val[0])), v219.val[0]);
                v214.val[0] = vaddq_s32(v116, v103);
                v117 = vzip1q_s32(v37, v214.val[0]);
                v118 = v81 + 48;
                v217.val[0] = vzip1q_s32(v114, v39);
                vst2q_f32(v118, v217);
                v217.val[0] = vqtbl2q_s8(v209, xmmword_296B8F070);
                v119 = vqtbl2q_s8(v212, xmmword_296B8F080);
                v44 = xmmword_296B8F060;
                v201.val[0] = vqtbl2q_s8(v217, xmmword_296B8F020);
                v120 = vaddq_s32(vshlq_n_s64(v201.val[0], 0x20uLL), v201.val[0]);
                v35 = vdupq_laneq_s32(v201.val[1], 3);
                v201.val[1] = vdupq_lane_s32(*v120.i8, 1);
                v201.val[1].i64[0] = 0;
                v121 = vaddq_s32(v201.val[1], v120);
                v214.val[1] = vaddq_s32(vaddq_s32(v219.val[1], v212.val[1]), v35);
                v43 = vdupq_laneq_s32(v116, 3);
                v217.val[0] = vzip2q_s32(v37, v214.val[0]);
                v217.val[1] = vzip2q_s32(v114, v39);
                v122 = vaddq_s32(vaddq_s32(v121, v103), v43);
                v123 = v81 + 56;
                vst2q_f32(v123, v217);
                v217.val[0] = vzip1q_s32(v37, v122);
                v217.val[1] = vzip1q_s32(v214.val[1], v39);
                v124 = v81 + 64;
                vst2q_f32(v124, v217);
                v217.val[1] = vqtbl2q_s8(v209, xmmword_296B8F050);
                v217.val[0] = vqtbl2q_s8(v212, xmmword_296B8F060);
                v214.val[0] = vqtbl2q_s8(v217, xmmword_296B8F020);
                v125 = vaddq_s32(vdupq_laneq_s32(v219.val[1], 3), v221.val[0]);
                v214.val[0] = vaddq_s32(vshlq_n_s64(v214.val[0], 0x20uLL), v214.val[0]);
                v217.val[0] = vdupq_lane_s32(*v214.val[0].i8, 1);
                v217.val[0].i64[0] = 0;
                v214.val[0] = vaddq_s32(v217.val[0], v214.val[0]);
                v217.val[0] = vzip2q_s32(v37, v122);
                v217.val[1] = vzip2q_s32(v214.val[1], v39);
                v126 = vaddq_s32(vaddq_s32(v125, v212.val[1]), v35);
                v127 = v81 + 72;
                vst2q_f32(v127, v217);
                v61 = xmmword_296B8F000;
                v60 = xmmword_296B8F030;
                v214.val[0] = vaddq_s32(vdupq_laneq_s32(v121, 3), v214.val[0]);
                v214.val[1] = vaddq_s32(vaddq_s32(v214.val[0], v103), v43);
                v128 = vzip1q_s32(v37, v214.val[1]);
                v129 = v81 + 80;
                v217.val[0] = vzip1q_s32(v126, v39);
                vst2q_f32(v129, v217);
                v217.val[0] = vqtbl2q_s8(v199, xmmword_296B8F030);
                v130 = vqtbl2q_s8(v197, xmmword_296B8F040);
                v131 = vqtbl2q_s8(v217, xmmword_296B8F020);
                v63 = xmmword_296B8F010;
                v199.val[1] = vqtbl2q_s8(v199, xmmword_296B8F000);
                v132 = vaddq_s32(vshlq_n_s64(v131, 0x20uLL), v131);
                v217.val[0] = vdupq_lane_s32(*v132.i8, 1);
                v199.val[0] = vqtbl2q_s8(v197, xmmword_296B8F010);
                v197.val[1] = vqtbl2q_s8(v209, xmmword_296B8F030);
                v197.val[0] = vqtbl2q_s8(v212, xmmword_296B8F040);
                v209.val[1] = vqtbl2q_s8(v209, xmmword_296B8F000);
                v217.val[0].i64[0] = 0;
                v209.val[0] = vqtbl2q_s8(v212, xmmword_296B8F010);
                v133 = vaddq_s32(v217.val[0], v132);
                v212.val[0] = vdupq_laneq_s32(v125, 3);
                v197.val[0] = vqtbl2q_s8(v197, xmmword_296B8F020);
                v197.val[0] = vaddq_s32(vshlq_n_s64(v197.val[0], 0x20uLL), v197.val[0]);
                v197.val[1] = vdupq_lane_s32(*v197.val[0].i8, 1);
                v134 = vaddq_s32(vaddq_s32(vaddq_s32(v133, v212.val[0]), v212.val[1]), v35);
                v197.val[1].i64[0] = 0;
                v197.val[0] = vaddq_s32(v197.val[1], v197.val[0]);
                v197.val[1] = vdupq_laneq_s32(v214.val[0], 3);
                v214.val[0] = vzip2q_s32(v37, v214.val[1]);
                v214.val[1] = vzip2q_s32(v126, v39);
                v135 = v81 + 88;
                vst2q_f32(v135, v214);
                v136 = vaddq_s32(vaddq_s32(vaddq_s32(v197.val[0], v197.val[1]), v103), v43);
                v214.val[0] = vzip1q_s32(v37, v136);
                v137 = v81 + 96;
                v214.val[1] = vzip1q_s32(v134, v39);
                vst2q_f32(v137, v214);
                v214.val[0] = vzip2q_s32(v37, v136);
                v214.val[1] = vzip2q_s32(v134, v39);
                v138 = v81 + 104;
                vst2q_f32(v138, v214);
                v199.val[0] = vqtbl2q_s8(v199, xmmword_296B8F020);
                v199.val[0] = vaddq_s32(vshlq_n_s64(v199.val[0], 0x20uLL), v199.val[0]);
                v199.val[1] = vdupq_lane_s32(*v199.val[0].i8, 1);
                v199.val[1].i64[0] = 0;
                v199.val[0] = vaddq_s32(v199.val[1], v199.val[0]);
                v199.val[1] = vdupq_laneq_s32(v133, 3);
                v62 = xmmword_296B8F020;
                v199.val[0] = vaddq_s32(v199.val[1], v199.val[0]);
                v199.val[1] = vqtbl2q_s8(v209, xmmword_296B8F020);
                v199.val[1] = vaddq_s32(vshlq_n_s64(v199.val[1], 0x20uLL), v199.val[1]);
                v36 = vdupq_lane_s32(*v199.val[1].i8, 1);
                v36.i64[0] = 0;
                v199.val[1] = vaddq_s32(vdupq_laneq_s32(v197.val[0], 3), vaddq_s32(v36, v199.val[1]));
                v31 = vaddq_s32(vaddq_s32(vaddq_s32(v199.val[0], v212.val[0]), v212.val[1]), v35);
                v32 = vaddq_s32(vaddq_s32(vaddq_s32(v199.val[1], v197.val[1]), v103), v43);
                v199.val[0] = vzip1q_s32(v37, v32);
                v139 = v81 + 112;
                v199.val[1] = vzip1q_s32(v31, v39);
                vst2q_f32(v139, v199);
                v199.val[0] = vzip2q_s32(v37, v32);
                v199.val[1] = vzip2q_s32(v31, v39);
                v140 = v81 + 120;
                vst2q_f32(v140, v199);
                v30 = vextq_s8(v32, v32, 8uLL);
                v33 = vextq_s8(v31, v31, 8uLL);
                *v43.i8 = vzip2_s32(*v33.i8, *v30.i8);
                v81 += 128;
                result = v64 + 64;
                v64 += 32;
              }

              while (result <= v29);
              v80 = v32.u32[3];
              v79 = v31.u32[3];
              v38 = v12;
            }

            else
            {
              v79 = v43.i32[0];
              v80 = v43.u32[1];
              v81 = a11;
            }

            if (v64 + 8 <= v29)
            {
              v143 = v190 + v40;
              v144 = v190 + v40 + 2 * v190;
              v145 = v40 + 2 * v190;
              v146 = v183 + v41;
              result = v183 + v41 + 2 * v183;
              v147 = v41 + 2 * v183;
              do
              {
                v30.i64[0] = *(v40 + v64);
                v31.i64[0] = *(v143 + v64);
                v32.i64[0] = *(v145 + v64);
                v33.i64[0] = *(v144 + v64);
                v148 = vzip1q_s8(v33, v31);
                v149 = vzip1q_s8(v32, v30);
                v150 = vzip1q_s8(v148, v149);
                v151 = vzip2q_s8(v148, v149);
                v152 = vaddq_s32(vshlq_n_s64(v150, 0x20uLL), v150);
                v153 = vaddq_s32(vshlq_n_s64(v151, 0x20uLL), v151);
                v154 = vdupq_lane_s32(*v153.i8, 1);
                v155 = vdupq_lane_s32(*v152.i8, 1);
                v155.i64[0] = 0;
                v156 = vdupq_n_s32(v79);
                v154.i64[0] = 0;
                v35.i64[0] = *(v41 + v64);
                v43.i64[0] = *(v146 + v64);
                v157 = vaddq_s32(v155, v152);
                v155.i64[0] = *(v147 + v64);
                v36.i64[0] = *(result + v64);
                v158 = vzip1q_s8(v36, v43);
                v159 = vaddq_s32(v154, vaddq_s32(v153, v156));
                v160 = vzip1q_s8(v155, v35);
                v161 = vzip1q_s8(v158, v160);
                v162 = vaddq_s32(vshlq_n_s64(v161, 0x20uLL), v161);
                v35 = vdupq_laneq_s32(v157, 3);
                v163 = vdupq_lane_s32(*v162.i8, 1);
                v163.i64[0] = 0;
                v164 = vaddq_s32(v163, v162);
                v165 = vaddq_s32(v157, v156);
                v166 = vdupq_n_s32(v80);
                v36 = vaddq_s32(v164, v166);
                v210.val[0] = vzip1q_s32(v37, v36);
                v167 = v81 + 16;
                v210.val[1] = vzip1q_s32(v165, v39);
                v168 = v81;
                vst2q_f32(v168, v210);
                v168 += 8;
                v169 = vzip2q_s8(v158, v160);
                v170 = vaddq_s32(vshlq_n_s64(v169, 0x20uLL), v169);
                v43 = vdupq_lane_s32(*v170.i8, 1);
                v30 = vaddq_s32(v159, v35);
                v43.i64[0] = 0;
                v79 = v30.u32[3];
                v171 = v81 + 24;
                v172 = vaddq_s32(vaddq_s32(v43, vaddq_s32(v170, v166)), vdupq_laneq_s32(v164, 3));
                v80 = v172.u32[3];
                v200.val[0] = vzip2q_s32(v37, v36);
                v200.val[1] = vzip2q_s32(v165, v39);
                vst2q_f32(v168, v200);
                v173 = vzip1q_s32(v37, v172);
                v33 = vzip1q_s32(v30, v39);
                vst2q_f32(v167, *(&v33 - 1));
                v31 = vzip2q_s32(v37, v172);
                v32 = vzip2q_s32(v30, v39);
                vst2q_f32(v171, *v31.i8);
                v142 = v81 + 32;
                v141 = v64 + 8;
                v174 = v64 + 16;
                v64 += 8;
                v81 += 32;
              }

              while (v174 <= v29);
            }

            else
            {
              v141 = v64;
              v142 = v81;
            }

            if (v141 < v29)
            {
              do
              {
                v79 += (*(v189[0] + v141) << 24) | (*(v189[0] + v141 + v190) << 16) | (*(v189[0] + v141 + 2 * v190) << 8) | *(v189[0] + v141 + 2 * v190);
                v80 += (*(v182[0] + v141) << 24) | (*(v182[0] + v141 + v183) << 16) | (*(v182[0] + v141 + 2 * v183) << 8) | *(v182[0] + v141 + 2 * v183);
                *&v175 = __PAIR64__(v79, v38);
                *(&v175 + 1) = __PAIR64__(a7, v80);
                *v142 = v175;
                v142 += 4;
                ++v141;
              }

              while (v29 != v141);
            }
          }
        }

        a11 = (a11 + a12);
        v25 += a10;
      }

      while (v25 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t **a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v16 = result;
    v17 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v18 = _D0;
    }

    else
    {
      v18 = 32256;
    }

    v203 = 2;
    v24 = *(a5 + 8);
    v25 = a3[3];
    v201 = v25.i32[0];
    v199 = v24;
    v197[1] = result;
    v200 = a3[6].i32[1] + v25.i32[1] * v17;
    v26 = a3[7].u32[1];
    v198 = vmin_u32(vmls_s32(*(*(*&v24[5] + 8 * v26) + 16), v24[6], v25), v24[6]).u32[0];
    v202 = v26;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v197);
    v196 = 2;
    v27 = *(a6 + 8);
    v28 = a3[3];
    v194 = v28.i32[0];
    v192 = v27;
    v190[1] = v16;
    v193 = a3[6].i32[1] + v28.i32[1] * v17;
    v29 = a3[7].u32[1];
    v191 = vmin_u32(vmls_s32(*(*(*&v27[5] + 8 * v29) + 16), v27[6], v28), v27[6]).u32[0];
    v195 = v29;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v190);
    if (*(*a7 + 24))
    {
      _D0 = **a7;
      __asm { FCVT            H0, D0 }

      v31 = _D0;
    }

    else
    {
      v31 = 32256;
    }

    v32 = a3[6].u32[1];
    if (a3[7].u32[0] + v32 < v17)
    {
      v34 = a3[3].i32[1] * *(a2 + 60);
      v35 = a3[5].u32[1];
      v36 = v35 + a9;
      v188 = vdupq_n_s16(v31);
      v189 = vdupq_n_s16(v18);
      do
      {
        v200 = v34 + v32;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v197);
        v193 = v34 + v32;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v190);
        v39.i64[0] = 0xFFFFFFFF00000000;
        v39.i64[1] = 0xFFFFFFFF00000000;
        v40 = v197[0];
        if (v197[0])
        {
          v41 = v190[0];
          if (v190[0])
          {
            if (v35 >= 0x20)
            {
              v45 = 0;
              v43 = 0;
              v42 = 0;
              v46 = v198 + v197[0];
              v47 = v191 + v190[0];
              do
              {
                v49 = *(v197[0] + v45);
                v48 = *(v197[0] + v45 + 16);
                v51 = *(v46 + v45);
                v50 = *(v46 + v45 + 16);
                v52 = vzip1q_s8(v51, v49);
                v53 = vzip2q_s8(v51, v49);
                v54 = vzip1q_s8(v50, v48);
                v55 = vzip2q_s8(v50, v48);
                v56 = vaddq_s16(vshlq_n_s32(v52, 0x10uLL), v52);
                v57 = vaddq_s16(vshlq_n_s32(v53, 0x10uLL), v53);
                v58 = vaddq_s16(vshlq_n_s32(v54, 0x10uLL), v54);
                v59 = vaddq_s16(vshlq_n_s32(v55, 0x10uLL), v55);
                v60 = vaddq_s16(vandq_s8(vqtbl1q_s8(v59, xmmword_296B8F090), v39), v59);
                v61 = vaddq_s16(vandq_s8(vqtbl1q_s8(v58, xmmword_296B8F090), v39), v58);
                v62 = vaddq_s16(vandq_s8(vqtbl1q_s8(v57, xmmword_296B8F090), v39), v57);
                v63 = vaddq_s16(vandq_s8(vqtbl1q_s8(v56, xmmword_296B8F090), v39), v56);
                v65 = *(v190[0] + v45);
                v64 = *(v190[0] + v45 + 16);
                v67 = *(v47 + v45);
                v66 = *(v47 + v45 + 16);
                v68 = vzip1q_s8(v67, v65);
                v69 = vzip2q_s8(v67, v65);
                v70 = vzip1q_s8(v66, v64);
                v71 = vzip2q_s8(v66, v64);
                v72 = vaddq_s16(vshlq_n_s32(v68, 0x10uLL), v68);
                v73 = vaddq_s16(vshlq_n_s32(v69, 0x10uLL), v69);
                v74 = vaddq_s16(vshlq_n_s32(v70, 0x10uLL), v70);
                v75 = vaddq_s16(vshlq_n_s32(v71, 0x10uLL), v71);
                v76 = vaddq_s16(vandq_s8(vqtbl1q_s8(v75, xmmword_296B8F090), v39), v75);
                v77 = vaddq_s16(vandq_s8(vqtbl1q_s8(v74, xmmword_296B8F090), v39), v74);
                v78 = vaddq_s16(vandq_s8(vqtbl1q_s8(v73, xmmword_296B8F090), v39), v73);
                v79 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v63.i8, 3), v63), vaddq_s16(vdupq_lane_s16(*v62.i8, 3), v62));
                v80 = vaddq_s16(vandq_s8(vqtbl1q_s8(v72, xmmword_296B8F090), v39), v72);
                v81 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*&v61, 3), v61), vaddq_s16(vdupq_lane_s16(*&v60, 3), v60)), v79).u16[7];
                v38 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v77.i8, 3), v77), vaddq_s16(vdupq_lane_s16(*v76.i8, 3), v76));
                v37 = vaddq_s16(v38, vaddq_s16(vaddq_s16(vdupq_lane_s16(*v80.i8, 3), v80), vaddq_s16(vdupq_lane_s16(*v78.i8, 3), v78)));
                v43 += v81;
                v42 += v37.u16[7];
                v82 = v45 + 64;
                v45 += 32;
              }

              while (v82 <= v35);
              v44 = v35 & 0xFFFFFFE0;
            }

            else
            {
              v42 = 0;
              v43 = 0;
              v44 = 0;
            }

            if ((v44 | 8) <= v35)
            {
              do
              {
                v37.i64[0] = *(v197[0] + v44);
                v38.i64[0] = *(v198 + v197[0] + v44);
                v84 = vzip1q_s8(v38, v37);
                v85 = vaddq_s16(vshlq_n_s32(v84, 0x10uLL), v84);
                v86 = vextq_s8(v85, v85, 0xCuLL);
                v87 = vaddq_s16(v86, v85);
                v88 = v87.u16[3];
                v87.i64[0] = *(v190[0] + v44);
                v43 += v87.u16[7] + v88;
                v86.i64[0] = *(v191 + v190[0] + v44);
                v89 = vzip1q_s8(v86, v87);
                v90 = vaddq_s16(vshlq_n_s32(v89, 0x10uLL), v89);
                v38 = vextq_s8(v90, v90, 0xCuLL);
                v37 = vaddq_s16(v38, v90);
                v42 += v37.u16[7] + v37.u16[3];
                v83 = v44 + 8;
                v91 = v44 + 16;
                v44 += 8;
              }

              while (v91 <= v35);
            }

            else
            {
              v83 = v44;
            }

            v92 = v35 - v83;
            if (v35 > v83)
            {
              v93 = (v83 + v197[0] + v198);
              v94 = (v197[0] + v83);
              v95 = (v83 + v190[0] + v191);
              v96 = (v190[0] + v83);
              do
              {
                v98 = *v94++;
                v97 = v98;
                v99 = *v93++;
                v100 = v99 | (v97 << 8);
                v101 = *v96++;
                result = v101;
                v43 += v100;
                v102 = *v95++;
                v42 += v102 | (result << 8);
                --v92;
              }

              while (v92);
              v83 = v35;
            }

            if (v83 + 32 <= v36)
            {
              v105 = v198 + v197[0];
              v106 = v191 + v190[0];
              v107 = a11;
              do
              {
                v109 = *(v40 + v83);
                v108 = *(v40 + v83 + 16);
                v111 = *(v105 + v83);
                v110 = *(v105 + v83 + 16);
                v112 = vzip2q_s8(v111, v109);
                v113 = vzip2q_s8(v110, v108);
                v114 = vzip1q_s8(v110, v108);
                v115 = vzip1q_s8(v111, v109);
                v116 = vaddq_s16(vshlq_n_s32(v112, 0x10uLL), v112);
                v117 = vaddq_s16(vshlq_n_s32(v113, 0x10uLL), v113);
                v118 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                v119 = vaddq_s16(vshlq_n_s32(v115, 0x10uLL), v115);
                v120 = vaddq_s16(vandq_s8(vqtbl1q_s8(v119, xmmword_296B8F090), v39), v119);
                v121 = vaddq_s16(vandq_s8(vqtbl1q_s8(v118, xmmword_296B8F090), v39), v118);
                v122 = vaddq_s16(vandq_s8(vqtbl1q_s8(v117, xmmword_296B8F090), v39), v117);
                v123 = vaddq_s16(vandq_s8(vqtbl1q_s8(v116, xmmword_296B8F090), v39), v116);
                v124 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v121.i8, 3), xmmword_296B8F0A0), v121);
                v125 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v120.i8, 3), xmmword_296B8F0A0), v120);
                v126 = vdupq_n_s16(v43);
                v128 = *(v41 + v83);
                v127 = *(v41 + v83 + 16);
                v129 = vdupq_laneq_s16(v125, 7);
                v131 = *(v106 + v83);
                v130 = *(v106 + v83 + 16);
                v132 = vdupq_laneq_s16(v124, 7);
                v133 = vzip2q_s8(v131, v128);
                v134 = vzip1q_s8(v131, v128);
                v135 = vaddq_s16(vshlq_n_s32(v134, 0x10uLL), v134);
                v136 = vaddq_s16(v124, v126);
                v137 = vaddq_s16(vandq_s8(vqtbl1q_s8(v135, xmmword_296B8F090), v39), v135);
                v138 = vaddq_s16(v125, v126);
                v139 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v137.i8, 3), xmmword_296B8F0A0), v137);
                v140 = vdupq_n_s16(v42);
                v141 = vaddq_s16(v139, v140);
                v142 = v107 + 32;
                v208.val[0] = vzip1q_s16(v189, v141);
                v143 = v107 + 48;
                v144 = v107 + 64;
                v145 = v107 + 80;
                v146 = v107 + 96;
                v147 = v107 + 112;
                v208.val[1] = vzip1q_s16(v138, v188);
                v148 = v107;
                vst2q_s16(v148, v208);
                v148 += 16;
                v149 = vzip2q_s16(v189, v141);
                v208.val[0] = vzip2q_s16(v138, v188);
                vst2q_s16(v148, v208);
                v150 = vzip2q_s8(v130, v127);
                v151 = vzip1q_s8(v130, v127);
                v152 = vaddq_s16(v132, vaddq_s16(vandq_s8(vdupq_lane_s16(*v122.i8, 3), xmmword_296B8F0A0), v122));
                v153 = vaddq_s16(vshlq_n_s32(v133, 0x10uLL), v133);
                v154 = vaddq_s16(vshlq_n_s32(v150, 0x10uLL), v150);
                v155 = vaddq_s16(vshlq_n_s32(v151, 0x10uLL), v151);
                v156 = vaddq_s16(v129, vaddq_s16(vandq_s8(vdupq_lane_s16(*v123.i8, 3), xmmword_296B8F0A0), v123));
                v157 = vdupq_laneq_s16(v156, 7);
                v158 = vaddq_s16(vandq_s8(vqtbl1q_s8(v155, xmmword_296B8F090), v39), v155);
                v159 = vaddq_s16(vandq_s8(vqtbl1q_s8(v154, xmmword_296B8F090), v39), v154);
                v160 = vaddq_s16(vandq_s8(vqtbl1q_s8(v153, xmmword_296B8F090), v39), v153);
                v161 = vaddq_s16(v152, v126);
                v162 = vaddq_s16(v156, v126);
                v163 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v158.i8, 3), xmmword_296B8F0A0), v158);
                v164 = vaddq_s16(v161, v157);
                v165 = vaddq_s16(v136, v157);
                v166 = vaddq_s16(vdupq_laneq_s16(v139, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v160.i8, 3), xmmword_296B8F0A0), v160));
                v167 = vdupq_laneq_s16(v166, 7);
                v168 = vaddq_s16(v166, v140);
                v169 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v163, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v159.i8, 3), xmmword_296B8F0A0), v159)), v140), v167);
                v170 = vaddq_s16(v163, v140);
                v206.val[0] = vzip2q_s16(v189, v168);
                v206.val[1] = vzip2q_s16(v162, v188);
                v207.val[0] = vzip1q_s16(v189, v168);
                v207.val[1] = vzip1q_s16(v162, v188);
                v171 = vaddq_s16(v170, v167);
                vst2q_s16(v142, v207);
                v43 = v164.u16[7];
                vst2q_s16(v143, v206);
                v42 = v169.u16[7];
                v205.val[0] = vzip1q_s16(v189, v171);
                v205.val[1] = vzip1q_s16(v165, v188);
                vst2q_s16(v144, v205);
                v205.val[0] = vzip2q_s16(v189, v171);
                v205.val[1] = vzip2q_s16(v165, v188);
                vst2q_s16(v145, v205);
                v172 = vzip1q_s16(v189, v169);
                v205.val[0] = vzip1q_s16(v164, v188);
                vst2q_s16(v146, v205);
                v37 = vzip2q_s16(v189, v169);
                v38 = vzip2q_s16(v164, v188);
                vst2q_s16(v147, *v37.i8);
                v104 = v107 + 128;
                v103 = v83 + 32;
                result = v83 + 64;
                v83 += 32;
                v107 += 128;
              }

              while (result <= v36);
            }

            else
            {
              v103 = v83;
              v104 = a11;
            }

            if (v103 + 8 <= v36)
            {
              v175 = v198 + v40;
              v176 = v191 + v41;
              do
              {
                v37.i64[0] = *(v40 + v103);
                v38.i64[0] = *(v175 + v103);
                v177 = vzip1q_s8(v38, v37);
                v178 = vaddq_s16(vshlq_n_s32(v177, 0x10uLL), v177);
                v179 = vaddq_s16(vandq_s8(vqtbl1q_s8(v178, xmmword_296B8F090), v39), v178);
                v180 = vandq_s8(vdupq_lane_s16(*v179.i8, 3), xmmword_296B8F0A0);
                v181 = vdupq_n_s16(v43);
                v37 = vaddq_s16(vaddq_s16(v179, v181), v180);
                v43 = v37.u16[7];
                v180.i64[0] = *(v41 + v103);
                v181.i64[0] = *(v176 + v103);
                v182 = vzip1q_s8(v181, v180);
                v183 = vaddq_s16(vshlq_n_s32(v182, 0x10uLL), v182);
                v184 = vaddq_s16(vandq_s8(vqtbl1q_s8(v183, xmmword_296B8F090), v39), v183);
                v185 = vaddq_s16(vaddq_s16(v184, vdupq_n_s16(v42)), vandq_s8(vdupq_lane_s16(*v184.i8, 3), xmmword_296B8F0A0));
                v42 = v185.u16[7];
                v204.val[0] = vzip1q_s16(v189, v185);
                v204.val[1] = vzip1q_s16(v37, v188);
                v174 = v104 + 32;
                vst2q_s16(v104, v204);
                v186 = v104 + 16;
                v38 = vzip2q_s16(v189, v185);
                v204.val[0] = vzip2q_s16(v37, v188);
                vst2q_s16(v186, *v38.i8);
                v173 = v103 + 8;
                result = v103 + 16;
                v103 += 8;
                v104 = v174;
              }

              while (result <= v36);
            }

            else
            {
              v173 = v103;
              v174 = v104;
            }

            if (v173 < v36)
            {
              do
              {
                v43 += *(v197[0] + v173 + v198) | (*(v197[0] + v173) << 8);
                v42 += *(v190[0] + v173 + v191) | (*(v190[0] + v173) << 8);
                LOWORD(v187) = v18;
                WORD1(v187) = v43;
                WORD2(v187) = v42;
                HIWORD(v187) = v31;
                *v174 = v187;
                v174 += 4;
                ++v173;
              }

              while (v36 != v173);
            }
          }
        }

        a11 = (a11 + a12);
        v32 += a10;
      }

      while (v32 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(unint64_t result, uint64_t a2, int32x2_t *a3, double **a4, uint64_t a5, uint64_t a6, int32x2_t **a7, double a8, uint64_t a9, uint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  if (a10)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v19 = *a4;
    if (*(*a4 + 24))
    {
      a8 = *v19;
      *&a8 = *v19;
    }

    else
    {
      LODWORD(a8) = 2143289344;
    }

    v199 = *&a8;
    v216 = 3;
    v20 = *(a5 + 8);
    v21 = a3[3];
    v214 = v21.i32[0];
    v212 = v20;
    v210[1] = result;
    v213 = a3[6].i32[1] + v21.i32[1] * v18;
    v22 = a3[7].u32[1];
    v211 = vmin_u32(vmls_s32(*(*(*&v20[5] + 8 * v22) + 16), v20[6], v21), v20[6]).u32[0];
    v215 = v22;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v210);
    v209 = 3;
    v23 = *(a6 + 8);
    v24 = a3[3];
    v207 = v24.i32[0];
    v205 = v23;
    v203[1] = v17;
    v206 = a3[6].i32[1] + v24.i32[1] * v18;
    v25 = a3[7].u32[1];
    v204 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v208 = v25;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v203);
    v27 = *a7;
    if ((*a7)[3].i8[0])
    {
      v26 = *v27;
      *v26.i32 = *v27->i32;
    }

    else
    {
      v26.i32[0] = 2143289344;
    }

    v200 = v26.i32[0];
    v28 = a3[6].u32[1];
    if (a3[7].u32[0] + v28 < v18)
    {
      v30 = a3[3].i32[1] * *(a2 + 60);
      v31 = a3[5].u32[1];
      v32 = v31 + a10;
      v202 = vdupq_lane_s32(v199, 0);
      v198 = vdupq_lane_s32(v26, 0);
      do
      {
        v213 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v210);
        v206 = v30 + v28;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v203);
        v37 = 0uLL;
        v38 = v210[0];
        if (v210[0])
        {
          v39 = v203[0];
          if (v203[0])
          {
            if (v31 >= 0x20)
            {
              v49 = 0;
              v50 = v210[0] + 2 * v211;
              v51 = v211 + v210[0];
              v52 = v203[0] + 2 * v204;
              v53 = v204 + v203[0];
              v42.i64[0] = 0;
              v41.i64[0] = 0;
              v44 = xmmword_296B8F020;
              v43 = xmmword_296B8F050;
              v45 = xmmword_296B8F000;
              v46 = xmmword_296B8F0B0;
              v48 = xmmword_296B8F030;
              v47 = xmmword_296B8F0C0;
              do
              {
                v217.val[1] = *(v210[0] + v49);
                v220.val[1] = *(v210[0] + v49 + 16);
                v217.val[0] = *(v50 + v49);
                v220.val[0] = *(v50 + v49 + 16);
                v222.val[1] = vqtbl2q_s8(v217, v43);
                v55 = *(v51 + v49);
                v54 = *(v51 + v49 + 16);
                v222.val[0] = vqtbl1q_s8(v55, v46);
                v222.val[0] = vqtbl2q_s8(v222, xmmword_296B8F020);
                v226.val[1] = vqtbl2q_s8(v220, v43);
                v226.val[0] = vqtbl1q_s8(v54, v46);
                v222.val[1] = vqtbl2q_s8(v226, xmmword_296B8F020);
                v226.val[1] = vqtbl2q_s8(v220, v45);
                v226.val[0] = vqtbl1q_s8(v54, v47);
                v226.val[0] = vqtbl2q_s8(v226, xmmword_296B8F020);
                v56 = vqtbl2q_s8(v217, xmmword_296B8F070);
                v226.val[1] = vqtbl1q_s8(v55, xmmword_296B8F0D0);
                v226.val[1] = vqtbl2q_s8(*(&v226 + 16), xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v217, v45);
                v228.val[0] = vqtbl1q_s8(v55, v47);
                v228.val[0] = vqtbl2q_s8(v228, xmmword_296B8F020);
                v217.val[1] = vqtbl2q_s8(v217, v48);
                v217.val[0] = vqtbl1q_s8(v55, xmmword_296B8F0E0);
                v57 = vqtbl2q_s8(v217, xmmword_296B8F020);
                v217.val[1] = vqtbl2q_s8(v220, xmmword_296B8F070);
                v217.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0D0);
                v228.val[1] = vqtbl2q_s8(v217, xmmword_296B8F020);
                v217.val[1] = vqtbl2q_s8(v220, v48);
                v217.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0E0);
                v220.val[1] = vqtbl2q_s8(v217, xmmword_296B8F020);
                v217.val[0] = vaddq_s32(vshlq_n_s64(v222.val[0], 0x20uLL), v222.val[0]);
                v217.val[1] = vaddq_s32(vshlq_n_s64(v222.val[1], 0x20uLL), v222.val[1]);
                v220.val[0] = vaddq_s32(vshlq_n_s64(v226.val[0], 0x20uLL), v226.val[0]);
                v226.val[1] = vaddq_s32(vshlq_n_s64(v226.val[1], 0x20uLL), v226.val[1]);
                v58 = vaddq_s32(vshlq_n_s64(v57, 0x20uLL), v57);
                v222.val[1] = vaddq_s32(vshlq_n_s64(v228.val[1], 0x20uLL), v228.val[1]);
                v220.val[1] = vaddq_s32(vshlq_n_s64(v220.val[1], 0x20uLL), v220.val[1]);
                v228.val[0] = vaddq_s32(vshlq_n_s64(v228.val[0], 0x20uLL), v228.val[0]);
                v230.val[1] = *(v203[0] + v49);
                v232.val[1] = *(v203[0] + v49 + 16);
                v60 = *(v53 + v49);
                v59 = *(v53 + v49 + 16);
                v230.val[0] = *(v52 + v49);
                v232.val[0] = *(v52 + v49 + 16);
                v235.val[1] = vqtbl2q_s8(v230, v43);
                v235.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0B0);
                v228.val[1] = vdupq_lane_s32(*v220.val[0].i8, 1);
                v235.val[0] = vqtbl2q_s8(v235, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v232, v43);
                v223.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0B0);
                v235.val[1] = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v232, xmmword_296B8F000);
                v223.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0C0);
                v61 = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v230, xmmword_296B8F070);
                v223.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0D0);
                v223.val[0] = vqtbl2q_s8(v223, xmmword_296B8F020);
                v62 = vqtbl2q_s8(v230, xmmword_296B8F000);
                v223.val[1] = vqtbl1q_s8(v60, xmmword_296B8F0C0);
                v63 = vqtbl2q_s8(*(&v223 + 16), xmmword_296B8F020);
                v43 = xmmword_296B8F050;
                v223.val[1] = vdupq_lane_s32(*v217.val[1].i8, 1);
                v230.val[1] = vqtbl2q_s8(v230, xmmword_296B8F030);
                v230.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0E0);
                v226.val[0] = vqtbl2q_s8(v230, xmmword_296B8F020);
                v230.val[1] = vqtbl2q_s8(v232, xmmword_296B8F070);
                v230.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0D0);
                v64 = vqtbl2q_s8(v230, xmmword_296B8F020);
                v230.val[1] = vqtbl2q_s8(v232, xmmword_296B8F030);
                v230.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0E0);
                v232.val[0] = vdupq_lane_s32(*v217.val[0].i8, 1);
                v232.val[0].i64[0] = 0;
                v223.val[1].i64[0] = 0;
                v228.val[1].i64[0] = 0;
                v222.val[0] = vqtbl2q_s8(v230, xmmword_296B8F020);
                v230.val[0] = vaddq_s32(vshlq_n_s64(v235.val[0], 0x20uLL), v235.val[0]);
                v48 = xmmword_296B8F030;
                v230.val[1] = vaddq_s32(vshlq_n_s64(v235.val[1], 0x20uLL), v235.val[1]);
                v65 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v58.i8, 1), v58), vaddq_s32(vdupq_lane_s32(*v228.val[0].i8, 1), v228.val[0]));
                v228.val[0] = vaddq_s32(vshlq_n_s64(v61, 0x20uLL), v61);
                v232.val[1] = vaddq_s32(vshlq_n_s64(v223.val[0], 0x20uLL), v223.val[0]);
                v220.val[0] = vaddq_s32(v228.val[1], v220.val[0]);
                v228.val[1] = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
                v66 = vaddq_s32(vshlq_n_s64(v64, 0x20uLL), v64);
                v222.val[0] = vaddq_s32(vshlq_n_s64(v222.val[0], 0x20uLL), v222.val[0]);
                v226.val[0] = vaddq_s32(vshlq_n_s64(v226.val[0], 0x20uLL), v226.val[0]);
                v67 = vdupq_lane_s32(*v228.val[0].i8, 1);
                v217.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v226.val[1].i8, 1), v226.val[1]), vaddq_s32(v232.val[0], v217.val[0]));
                v67.i64[0] = 0;
                v226.val[1] = vaddq_s32(v67, v228.val[0]);
                v228.val[0] = vdupq_lane_s32(*v230.val[1].i8, 1);
                v217.val[1] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v222.val[1].i8, 1), v222.val[1]), 3), vaddq_s32(v223.val[1], v217.val[1]));
                v228.val[0].i64[0] = 0;
                v36 = vaddq_s32(v228.val[0], v230.val[1]);
                v220.val[0] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v220.val[1].i8, 1), v220.val[1]), 3), v220.val[0]);
                v220.val[1] = vaddq_s32(vdupq_lane_s32(*v232.val[1].i8, 1), v232.val[1]);
                v230.val[1] = vdupq_lane_s32(*v230.val[0].i8, 1);
                v230.val[1].i64[0] = 0;
                v46 = xmmword_296B8F0B0;
                v217.val[0] = vaddq_s32(vaddq_s32(v220.val[0], v217.val[1]), vaddq_s32(v217.val[0], v65));
                v47 = xmmword_296B8F0C0;
                v45 = xmmword_296B8F000;
                v35 = vaddq_s32(v220.val[1], vaddq_s32(v230.val[1], v230.val[0]));
                v42 = vaddq_s32(v217.val[0], vdupq_lane_s32(*v42.i8, 0));
                v34 = vaddq_s32(v35, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v226.val[0].i8, 1), v226.val[0]), vaddq_s32(vdupq_lane_s32(*v228.val[1].i8, 1), v228.val[1])));
                v68 = v49 + 64;
                v42.i32[0] = v42.i32[3];
                v33 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v222.val[0].i8, 1), v222.val[0]), 3), v226.val[1]), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v66.i8, 1), v66), 3), v36)), v34);
                v49 += 32;
                v41 = vaddq_s32(v33, vdupq_lane_s32(*v41.i8, 0));
                v41.i32[0] = v41.i32[3];
              }

              while (v68 <= v31);
              v40 = v31 & 0xFFFFFFE0;
              v37 = 0uLL;
            }

            else
            {
              v40 = 0;
              v41.i64[0] = 0;
              v42.i64[0] = 0;
              v44 = xmmword_296B8F020;
              v43 = xmmword_296B8F050;
              v45 = xmmword_296B8F000;
              v46 = xmmword_296B8F0B0;
              v48 = xmmword_296B8F030;
              v47 = xmmword_296B8F0C0;
            }

            if ((v40 | 8) <= v31)
            {
              do
              {
                v33.i64[0] = *(v210[0] + v40);
                v34.i64[0] = *(v211 + v210[0] + v40);
                v35.i64[0] = *(v210[0] + 2 * v211 + v40);
                v70 = vzip1q_s8(v37, v34);
                v71 = vzip1q_s8(v35, v33);
                v72 = vzip1q_s8(v70, v71);
                v73 = vzip2q_s8(v70, v71);
                v74 = vaddq_s32(vshlq_n_s64(v73, 0x20uLL), v73);
                v75 = vdupq_lane_s32(*v74.i8, 1);
                v76 = vaddq_s32(vshlq_n_s64(v72, 0x20uLL), v72);
                v77 = vaddq_s32(vdupq_lane_s32(*v76.i8, 1), v76);
                v42 = vaddq_s32(v75, vaddq_s32(v74, vdupq_lane_s32(*v42.i8, 0)));
                v74.i64[0] = *(v203[0] + v40);
                v75.i64[0] = *(v204 + v203[0] + v40);
                v42.i32[0] = v42.i32[3] + v77.i32[3];
                v77.i64[0] = *(v203[0] + 2 * v204 + v40);
                v78 = vzip1q_s8(v37, v75);
                v79 = vzip1q_s8(v77, v74);
                v80 = vzip1q_s8(v78, v79);
                v81 = vzip2q_s8(v78, v79);
                v33 = vaddq_s32(vshlq_n_s64(v81, 0x20uLL), v81);
                v34 = vdupq_lane_s32(*v33.i8, 1);
                v82 = vaddq_s32(vshlq_n_s64(v80, 0x20uLL), v80);
                v35 = vaddq_s32(vdupq_lane_s32(*v82.i8, 1), v82);
                v41 = vaddq_s32(v34, vaddq_s32(v33, vdupq_lane_s32(*v41.i8, 0)));
                v41.i32[0] = v41.i32[3] + v35.i32[3];
                v69 = v40 + 8;
                v83 = v40 + 16;
                v40 += 8;
              }

              while (v83 <= v31);
            }

            else
            {
              v69 = v40;
            }

            if (v69 <= v31)
            {
              v84 = v31;
            }

            else
            {
              v84 = v69;
            }

            if (v84 + 32 <= v32)
            {
              v87 = v210[0] + 2 * v211;
              v88 = v211 + v210[0];
              v89 = v203[0] + 2 * v204;
              v90 = v204 + v203[0];
              v91 = a12;
              do
              {
                v221.val[1] = *(v38 + v84);
                v218.val[1] = *(v38 + v84 + 16);
                v92 = *(v88 + v84);
                v93 = *(v88 + v84 + 16);
                v221.val[0] = *(v87 + v84);
                v218.val[0] = *(v87 + v84 + 16);
                v225.val[1] = vqtbl2q_s8(v221, xmmword_296B8F070);
                v225.val[0] = vqtbl1q_s8(v92, xmmword_296B8F0D0);
                v225.val[0] = vqtbl2q_s8(v225, v44);
                v94 = vqtbl2q_s8(v221, v48);
                v225.val[1] = vqtbl1q_s8(v92, xmmword_296B8F0E0);
                v227.val[1] = vqtbl2q_s8(v218, xmmword_296B8F070);
                v225.val[1] = vqtbl2q_s8(*(&v225 + 16), v44);
                v227.val[0] = vqtbl1q_s8(v93, xmmword_296B8F0D0);
                v95 = vqtbl2q_s8(v227, v44);
                v227.val[1] = vqtbl2q_s8(v218, v48);
                v227.val[0] = vqtbl1q_s8(v93, xmmword_296B8F0E0);
                v201 = v93;
                v229.val[1] = vqtbl2q_s8(v218, v43);
                v227.val[0] = vqtbl2q_s8(v227, v44);
                v229.val[0] = vqtbl1q_s8(v93, v46);
                v229.val[0] = vqtbl2q_s8(v229, v44);
                v96 = vqtbl2q_s8(v221, v45);
                v229.val[1] = vqtbl1q_s8(v92, v47);
                v221.val[1] = vqtbl2q_s8(v221, v43);
                v229.val[1] = vqtbl2q_s8(*(&v229 + 16), v44);
                v221.val[0] = vqtbl1q_s8(v92, v46);
                v221.val[0] = vqtbl2q_s8(v221, v44);
                v97 = vaddq_s32(vshlq_n_s64(v225.val[0], 0x20uLL), v225.val[0]);
                v98 = vaddq_s32(vshlq_n_s64(v225.val[1], 0x20uLL), v225.val[1]);
                v227.val[1] = vaddq_s32(vshlq_n_s64(v95, 0x20uLL), v95);
                v225.val[0] = vaddq_s32(vshlq_n_s64(v227.val[0], 0x20uLL), v227.val[0]);
                v225.val[1] = vaddq_s32(vshlq_n_s64(v229.val[0], 0x20uLL), v229.val[0]);
                v229.val[1] = vaddq_s32(vshlq_n_s64(v229.val[1], 0x20uLL), v229.val[1]);
                v221.val[0] = vaddq_s32(vshlq_n_s64(v221.val[0], 0x20uLL), v221.val[0]);
                v221.val[1] = vdupq_lane_s32(*v221.val[0].i8, 1);
                v99 = vdupq_lane_s32(*v229.val[1].i8, 1);
                v100 = vdupq_lane_s32(*v225.val[1].i8, 1);
                v101 = vdupq_lane_s32(*v225.val[0].i8, 1);
                v102 = vdupq_lane_s32(*v227.val[1].i8, 1);
                v103 = vdupq_lane_s32(*v98.i8, 1);
                v104 = vdupq_lane_s32(*v97.i8, 1);
                v104.i64[0] = 0;
                v101.i64[0] = 0;
                v100.i64[0] = 0;
                v99.i64[0] = 0;
                v221.val[1].i64[0] = 0;
                v105 = vaddq_s32(v221.val[1], v221.val[0]);
                v227.val[0] = *(v39 + v84);
                v37 = *(v39 + v84 + 16);
                v229.val[0] = *(v90 + v84);
                v36 = *(v90 + v84 + 16);
                v229.val[1] = vaddq_s32(v99, v229.val[1]);
                v106 = *(v89 + v84);
                v221.val[0] = *(v89 + v84 + 16);
                v224.val[1] = vqtbl2q_s8(v227, xmmword_296B8F070);
                v224.val[0] = vqtbl1q_s8(v229.val[0], xmmword_296B8F0D0);
                v225.val[1] = vaddq_s32(v100, v225.val[1]);
                v107 = vqtbl2q_s8(v224, v44);
                v224.val[1] = vqtbl2q_s8(v227, xmmword_296B8F030);
                v224.val[0] = vqtbl1q_s8(v229.val[0], xmmword_296B8F0E0);
                v108 = vqtbl2q_s8(v224, v44);
                v224.val[1] = vqtbl2q_s8(*(&v37 - 1), xmmword_296B8F070);
                v225.val[0] = vaddq_s32(v101, v225.val[0]);
                v224.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0D0);
                v109 = vqtbl2q_s8(v224, v44);
                v224.val[1] = vqtbl2q_s8(v227, v43);
                v224.val[0] = vqtbl1q_s8(v229.val[0], xmmword_296B8F0B0);
                v44 = xmmword_296B8F020;
                v103.i64[0] = 0;
                v224.val[0] = vqtbl2q_s8(v224, xmmword_296B8F020);
                v102.i64[0] = 0;
                v110 = vdupq_lane_s32(*v42.i8, 0);
                v227.val[1] = vaddq_s32(v102, v227.val[1]);
                v111 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                v112 = vaddq_s32(vshlq_n_s64(v108, 0x20uLL), v108);
                v113 = vaddq_s32(v103, v98);
                v114 = vaddq_s32(vshlq_n_s64(v224.val[0], 0x20uLL), v224.val[0]);
                v115 = vdupq_lane_s32(*v114.i8, 1);
                v224.val[0] = vdupq_lane_s32(*v111.i8, 1);
                v116 = vaddq_s32(v104, v97);
                v224.val[0].i64[0] = 0;
                v115.i64[0] = 0;
                v117 = vaddq_s32(v116, v110);
                v118 = vaddq_s32(v115, v114);
                v119 = vaddq_s32(v224.val[0], v111);
                v120 = vaddq_s32(vdupq_laneq_s32(v116, 3), v105);
                v121 = vdupq_lane_s32(*v41.i8, 0);
                v122 = vaddq_s32(v119, v121);
                v224.val[0] = vzip2q_s32(v202, v122);
                v224.val[1] = vzip2q_s32(v117, v198);
                v123 = vaddq_s32(vdupq_laneq_s32(v119, 3), v118);
                v234.val[0] = vzip1q_s32(v202, v122);
                v234.val[1] = vzip1q_s32(v117, v198);
                v124 = v91 + 16;
                v125 = v91 + 24;
                v126 = v91 + 32;
                v127 = v91;
                vst2q_f32(v127, v234);
                v127 += 8;
                v128 = vaddq_s32(v120, v110);
                v234.val[0] = vaddq_s32(v123, v121);
                vst2q_f32(v127, v224);
                v234.val[1] = vzip1q_s32(v202, v234.val[0]);
                v129 = vzip1q_s32(v128, v198);
                vst2q_f32(v124, *(&v234 + 16));
                v130 = vdupq_lane_s32(*v112.i8, 1);
                v130.i64[0] = 0;
                v131 = vdupq_laneq_s32(v120, 3);
                v132 = vaddq_s32(v130, v112);
                v133 = vdupq_laneq_s32(v123, 3);
                v224.val[0] = vzip2q_s32(v202, v234.val[0]);
                v224.val[1] = vzip2q_s32(v128, v198);
                v134 = vaddq_s32(vaddq_s32(v113, v110), v131);
                v48 = xmmword_296B8F030;
                vst2q_f32(v125, v224);
                v234.val[0] = vaddq_s32(vaddq_s32(v132, v121), v133);
                v224.val[0] = vzip1q_s32(v202, v234.val[0]);
                v224.val[1] = vzip1q_s32(v134, v198);
                vst2q_f32(v126, v224);
                v224.val[1] = vqtbl2q_s8(*(&v37 - 1), xmmword_296B8F030);
                v224.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0E0);
                v135 = vqtbl2q_s8(v224, xmmword_296B8F020);
                v227.val[0] = vqtbl2q_s8(v227, xmmword_296B8F000);
                v136 = vqtbl1q_s8(v229.val[0], xmmword_296B8F0C0);
                v137 = vqtbl2q_s8(v227, xmmword_296B8F020);
                v227.val[0] = vaddq_s32(vshlq_n_s64(v109, 0x20uLL), v109);
                v229.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v113, 3), v229.val[1]), v131);
                v138 = vaddq_s32(vshlq_n_s64(v137, 0x20uLL), v137);
                v229.val[1] = vdupq_lane_s32(*v138.i8, 1);
                v229.val[1].i64[0] = 0;
                v139 = v91 + 40;
                v140 = v91 + 48;
                v141 = v91 + 56;
                v142 = v91 + 64;
                v143 = vaddq_s32(vdupq_laneq_s32(v132, 3), vaddq_s32(v229.val[1], v138));
                v229.val[1] = vaddq_s32(v229.val[0], v110);
                v144 = vaddq_s32(v143, v133);
                v145 = vzip2q_s32(v202, v234.val[0]);
                v234.val[0] = vzip2q_s32(v134, v198);
                v146 = vaddq_s32(v144, v121);
                vst2q_f32(v139, v234);
                v46 = xmmword_296B8F0B0;
                v233.val[0] = vzip1q_s32(v202, v146);
                v233.val[1] = vzip1q_s32(v229.val[1], v198);
                vst2q_f32(v140, v233);
                v233.val[1] = vdupq_lane_s32(*v227.val[0].i8, 1);
                v233.val[1].i64[0] = 0;
                v147 = vdupq_laneq_s32(v229.val[0], 3);
                v229.val[0] = vaddq_s32(v233.val[1], v227.val[0]);
                v227.val[0] = vdupq_laneq_s32(v144, 3);
                v231.val[0] = vzip2q_s32(v202, v146);
                v231.val[1] = vzip2q_s32(v229.val[1], v198);
                v229.val[1] = vaddq_s32(vaddq_s32(v227.val[1], v110), v147);
                vst2q_f32(v141, v231);
                v231.val[0] = vaddq_s32(vaddq_s32(v229.val[0], v121), v227.val[0]);
                v233.val[0] = vzip1q_s32(v202, v231.val[0]);
                v233.val[1] = vzip1q_s32(v229.val[1], v198);
                vst2q_f32(v142, v233);
                v233.val[1] = vqtbl2q_s8(*(&v37 - 1), v43);
                v233.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0B0);
                v231.val[1] = vqtbl2q_s8(v233, xmmword_296B8F020);
                v231.val[1] = vaddq_s32(vshlq_n_s64(v231.val[1], 0x20uLL), v231.val[1]);
                v148 = v91 + 72;
                v149 = v91 + 80;
                v150 = v91 + 88;
                v151 = v91 + 96;
                v225.val[1] = vaddq_s32(vdupq_laneq_s32(v227.val[1], 3), v225.val[1]);
                v227.val[1] = vdupq_lane_s32(*v231.val[1].f32, 1);
                v227.val[1].i64[0] = 0;
                v227.val[1] = vaddq_s32(v227.val[1], v231.val[1]);
                v231.val[1] = vaddq_s32(vaddq_s32(v225.val[1], v110), v147);
                v227.val[1] = vaddq_s32(vdupq_laneq_s32(v229.val[0], 3), v227.val[1]);
                v233.val[0] = vzip2q_s32(v202, v231.val[0]);
                v233.val[1] = vzip2q_s32(v229.val[1], v198);
                v229.val[0] = vaddq_s32(vaddq_s32(v227.val[1], v121), v227.val[0]);
                vst2q_f32(v148, v233);
                v229.val[1] = vzip1q_s32(v202, v229.val[0]);
                v231.val[0] = vzip1q_s32(v231.val[1], v198);
                vst2q_f32(v149, *(&v229 + 16));
                v229.val[1] = vaddq_s32(vshlq_n_s64(v135, 0x20uLL), v135);
                v231.val[0] = vdupq_lane_s32(*v229.val[1].i8, 1);
                v225.val[1] = vdupq_laneq_s32(v225.val[1], 3);
                v231.val[0].i64[0] = 0;
                v227.val[1] = vdupq_laneq_s32(v227.val[1], 3);
                v229.val[1] = vaddq_s32(v231.val[0], v229.val[1]);
                v233.val[0] = vzip2q_s32(v202, v229.val[0]);
                v233.val[1] = vzip2q_s32(v231.val[1], v198);
                v231.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v225.val[0], v225.val[1]), v110), v147);
                v229.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v229.val[1], v227.val[1]), v121), v227.val[0]);
                vst2q_f32(v150, v233);
                v231.val[1] = vzip1q_s32(v202, v229.val[0]);
                v152 = vzip1q_s32(v231.val[0], v198);
                vst2q_f32(v151, *(&v231 + 16));
                v47 = xmmword_296B8F0C0;
                v45 = xmmword_296B8F000;
                v218.val[1] = vqtbl2q_s8(v218, xmmword_296B8F000);
                v218.val[0] = vqtbl1q_s8(v201, xmmword_296B8F0C0);
                v153 = vqtbl2q_s8(v218, xmmword_296B8F020);
                v154 = vaddq_s32(vshlq_n_s64(v153, 0x20uLL), v153);
                v218.val[0] = vdupq_lane_s32(*v154.i8, 1);
                v218.val[0].i64[0] = 0;
                v155 = vaddq_s32(vdupq_laneq_s32(v225.val[0], 3), vaddq_s32(v218.val[0], v154));
                v218.val[1] = vqtbl2q_s8(*(&v37 - 1), xmmword_296B8F000);
                v218.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0C0);
                v218.val[0] = vqtbl2q_s8(v218, xmmword_296B8F020);
                v218.val[0] = vaddq_s32(vshlq_n_s64(v218.val[0], 0x20uLL), v218.val[0]);
                v35 = vdupq_lane_s32(*v218.val[0].i8, 1);
                v35.i64[0] = 0;
                v42 = vaddq_s32(vaddq_s32(vaddq_s32(v155, v225.val[1]), v110), v147);
                v41 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v229.val[1], 3), vaddq_s32(v35, v218.val[0])), v227.val[1]), v121), v227.val[0]);
                v156 = vzip2q_s32(v202, v229.val[0]);
                v218.val[0] = vzip2q_s32(v231.val[0], v198);
                v157 = v91 + 104;
                v158 = v91 + 112;
                v159 = v91 + 120;
                vst2q_f32(v157, v218);
                v160 = vzip1q_s32(v202, v41);
                v218.val[0] = vzip1q_s32(v42, v198);
                vst2q_f32(v158, v218);
                v33 = vzip2q_s32(v202, v41);
                v34 = vzip2q_s32(v42, v198);
                vst2q_f32(v159, *v33.i8);
                v86 = v91 + 128;
                v85 = v84 + 32;
                result = v84 + 64;
                v84 += 32;
                v42.i32[0] = v42.i32[3];
                v91 += 128;
                v41.i32[0] = v41.i32[3];
              }

              while (result <= v32);
            }

            else
            {
              v85 = v84;
              v86 = a12;
            }

            if (v85 + 8 <= v32)
            {
              v163 = v38 + 2 * v211;
              v164 = v211 + v38;
              v165 = v39 + 2 * v204;
              v166 = v204 + v39;
              do
              {
                v33.i64[0] = *(v38 + v85);
                v34.i64[0] = *(v164 + v85);
                v35.i64[0] = *(v163 + v85);
                v167 = vzip1q_s8(0, v34);
                v168 = vzip1q_s8(v35, v33);
                v169 = vzip1q_s8(v167, v168);
                v170 = vzip2q_s8(v167, v168);
                v171 = vshlq_n_s64(v170, 0x20uLL);
                v172 = vaddq_s32(vshlq_n_s64(v169, 0x20uLL), v169);
                v173 = vaddq_s32(v171, v170);
                v174 = vdupq_lane_s32(*v42.i8, 0);
                v171.i64[0] = *(v39 + v85);
                v175 = vdupq_lane_s32(*v173.i8, 1);
                v37.i64[0] = *(v166 + v85);
                v36.i64[0] = *(v165 + v85);
                v176 = vdupq_lane_s32(*v172.i8, 1);
                v177 = vaddq_s32(v173, v174);
                v178 = vzip1q_s8(0, v37);
                v179 = vzip1q_s8(v36, v171);
                v180 = vzip1q_s8(v178, v179);
                v176.i64[0] = 0;
                v181 = vzip2q_s8(v178, v179);
                v182 = vaddq_s32(vshlq_n_s64(v180, 0x20uLL), v180);
                v175.i64[0] = 0;
                v183 = vaddq_s32(vshlq_n_s64(v181, 0x20uLL), v181);
                v184 = vdupq_lane_s32(*v183.i8, 1);
                v185 = vdupq_lane_s32(*v182.i8, 1);
                v186 = vaddq_s32(v176, v172);
                v185.i64[0] = 0;
                v184.i64[0] = 0;
                v187 = vdupq_laneq_s32(v186, 3);
                v36 = vaddq_s32(v185, v182);
                v188 = vdupq_laneq_s32(v36, 3);
                v189 = vdupq_lane_s32(*v41.i8, 0);
                v42 = vaddq_s32(v186, v174);
                v190 = vaddq_s32(v175, v177);
                v191 = vaddq_s32(v36, v189);
                v192 = vaddq_s32(v184, vaddq_s32(v183, v189));
                v36.i64[1] = v202.i64[1];
                v193 = vzip2q_s32(v202, v191);
                v219.val[0] = vzip1q_s32(v202, v191);
                v219.val[1] = vzip1q_s32(v42, v198);
                v162 = v86 + 32;
                v194 = v86 + 16;
                v195 = v86 + 24;
                v33 = vaddq_s32(v190, v187);
                vst2q_f32(v86, v219);
                v196 = v86 + 8;
                v41 = vaddq_s32(v192, v188);
                v37 = vzip2q_s32(v42, v198);
                vst2q_f32(v196, *(&v37 - 1));
                v42.i32[0] = v33.i32[3];
                v219.val[0] = vzip1q_s32(v202, v41);
                v219.val[1] = vzip1q_s32(v33, v198);
                vst2q_f32(v194, v219);
                v34 = vzip2q_s32(v202, v41);
                v35 = vzip2q_s32(v33, v198);
                vst2q_f32(v195, *v34.i8);
                v41.i32[0] = v41.i32[3];
                v161 = v85 + 8;
                result = v85 + 16;
                v85 += 8;
                v86 = v162;
              }

              while (result <= v32);
            }

            else
            {
              v161 = v85;
              v162 = v86;
            }

            if (v161 < v32)
            {
              do
              {
                LODWORD(v197) = v199.i32[0];
                DWORD1(v197) = ((*(v210[0] + v161) << 24) | (*(v210[0] + v161 + v211) << 16) | (*(v210[0] + v161 + 2 * v211) << 8)) + v42.i32[0];
                DWORD2(v197) = ((*(v203[0] + v161) << 24) | (*(v203[0] + v161 + v204) << 16) | (*(v203[0] + v161 + 2 * v204) << 8)) + v41.i32[0];
                HIDWORD(v197) = v200;
                *v162 = v197;
                v162 += 4;
                ++v161;
              }

              while (v32 != v161);
            }
          }
        }

        a12 = (a12 + a13);
        v28 += a11;
      }

      while (v28 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v278 = 4;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v276 = v20.i32[0];
    v274 = v19;
    v272[1] = result;
    v275 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v273 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v277 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v272);
    v271 = 4;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v269 = v23.i32[0];
    v267 = v22;
    v265[1] = v17;
    v268 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v266 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v270 = v24;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v265);
    v264 = 4;
    v25 = *(a6 + 8);
    v26 = a3[3];
    v262 = v26.i32[0];
    v260 = v25;
    v258[1] = v17;
    v261 = a3[6].i32[1] + v26.i32[1] * v18;
    v27 = a3[7].u32[1];
    v259 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v263 = v27;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v258);
    if (*(*a7 + 24))
    {
      LODWORD(a7) = **a7;
    }

    v28 = a3[6].u32[1];
    if (a3[7].u32[0] + v28 < v18)
    {
      v30 = a3[3].i32[1] * *(a2 + 60);
      v31 = a3[5].u32[1];
      v32 = v31 + a9;
      v33 = 0x1800000010;
      v34 = 0x1000000018;
      v257 = vdupq_n_s32(a7);
      do
      {
        v275 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v272);
        v268 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v265);
        v261 = v30 + v28;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v258);
        v44 = v257;
        v45 = v272[0];
        if (v272[0])
        {
          v46 = v265[0];
          if (v265[0])
          {
            v47 = v258[0];
            if (v258[0])
            {
              v236 = v34;
              v237 = v33;
              v48 = 0;
              if (v31 >= 0x20)
              {
                v52 = v273 + v272[0];
                v53 = v273 + v272[0] + 2 * v273;
                v54 = v272[0] + 2 * v273;
                v55 = v266 + v265[0];
                v56 = v266 + v265[0] + 2 * v266;
                v57 = v265[0] + 2 * v266;
                result = v259 + v258[0];
                v58 = v259 + v258[0] + 2 * v259;
                v59 = v258[0] + 2 * v259;
                v50 = 0uLL;
                v60 = 32;
                v61 = xmmword_296B8F040;
                v62 = xmmword_296B8F030;
                v63 = xmmword_296B8F020;
                v51 = xmmword_296B8F000;
                do
                {
                  v255.val[0] = v50;
                  v285.val[1] = *(v272[0] + v60 - 32);
                  v295.val[1] = *(v272[0] + v60 - 16);
                  v286.val[1] = *(v52 + v60 - 32);
                  v297.val[1] = *(v52 + v60 - 16);
                  v285.val[0] = *(v54 + v60 - 32);
                  v295.val[0] = *(v54 + v60 - 16);
                  v286.val[0] = *(v53 + v60 - 32);
                  v297.val[0] = *(v53 + v60 - 16);
                  v279.val[1] = vqtbl2q_s8(v285, v62);
                  v279.val[0] = vqtbl2q_s8(v286, v61);
                  v279.val[0] = vqtbl2q_s8(v279, v63);
                  v64 = vqtbl2q_s8(v285, v51);
                  v279.val[1] = vqtbl2q_s8(v286, xmmword_296B8F010);
                  v279.val[1] = vqtbl2q_s8(*(&v279 + 16), v63);
                  v299.val[1] = vqtbl2q_s8(v285, xmmword_296B8F070);
                  v299.val[0] = vqtbl2q_s8(v286, xmmword_296B8F080);
                  v65 = vqtbl2q_s8(v299, v63);
                  v285.val[1] = vqtbl2q_s8(v285, xmmword_296B8F050);
                  v285.val[0] = vqtbl2q_s8(v286, xmmword_296B8F060);
                  v285.val[1] = vqtbl2q_s8(v285, v63);
                  v286.val[1] = vqtbl2q_s8(v295, v51);
                  v286.val[0] = vqtbl2q_s8(v297, xmmword_296B8F010);
                  v286.val[0] = vqtbl2q_s8(v286, v63);
                  v299.val[1] = vqtbl2q_s8(v295, xmmword_296B8F050);
                  v299.val[0] = vqtbl2q_s8(v297, xmmword_296B8F060);
                  v286.val[1] = vqtbl2q_s8(v299, v63);
                  v299.val[1] = vqtbl2q_s8(v295, xmmword_296B8F070);
                  v299.val[0] = vqtbl2q_s8(v297, xmmword_296B8F080);
                  v66 = vqtbl2q_s8(v299, v63);
                  v295.val[1] = vqtbl2q_s8(v295, v62);
                  v295.val[0] = vqtbl2q_s8(v297, v61);
                  v285.val[0] = vqtbl2q_s8(v295, v63);
                  v302.val[1] = *(v265[0] + v60 - 32);
                  v304.val[1] = *(v265[0] + v60 - 16);
                  v306.val[1] = *(v55 + v60 - 32);
                  v288.val[1] = *(v55 + v60 - 16);
                  v302.val[0] = *(v57 + v60 - 32);
                  v304.val[0] = *(v57 + v60 - 16);
                  v253 = vaddq_s32(vshlq_n_s64(v279.val[0], 0x20uLL), v279.val[0]);
                  v306.val[0] = *(v56 + v60 - 32);
                  v288.val[0] = *(v56 + v60 - 16);
                  v290.val[1] = vqtbl2q_s8(v302, xmmword_296B8F030);
                  v290.val[0] = vqtbl2q_s8(v306, xmmword_296B8F040);
                  v251 = vaddq_s32(vshlq_n_s64(v279.val[1], 0x20uLL), v279.val[1]);
                  v67 = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v290.val[1] = vqtbl2q_s8(v302, v51);
                  v290.val[0] = vqtbl2q_s8(v306, xmmword_296B8F010);
                  v68 = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v290.val[1] = vqtbl2q_s8(v302, xmmword_296B8F070);
                  v290.val[0] = vqtbl2q_s8(v306, xmmword_296B8F080);
                  v299.val[1] = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v302.val[0] = vqtbl2q_s8(v302, xmmword_296B8F050);
                  v69 = vqtbl2q_s8(v306, xmmword_296B8F060);
                  v302.val[0] = vqtbl2q_s8(v302, xmmword_296B8F020);
                  v248 = vaddq_s32(vshlq_n_s64(v285.val[1], 0x20uLL), v285.val[1]);
                  v306.val[1] = vqtbl2q_s8(v304, xmmword_296B8F000);
                  v306.val[0] = vqtbl2q_s8(v288, xmmword_296B8F010);
                  v40.i64[1] = 0xFF1FFF0FFF1EFF0ELL;
                  v299.val[0] = vqtbl2q_s8(v306, xmmword_296B8F020);
                  v306.val[1] = vqtbl2q_s8(v304, xmmword_296B8F050);
                  v306.val[0] = vqtbl2q_s8(v288, xmmword_296B8F060);
                  v286.val[0] = vaddq_s32(vshlq_n_s64(v286.val[0], 0x20uLL), v286.val[0]);
                  v297.val[1] = vqtbl2q_s8(v306, xmmword_296B8F020);
                  v306.val[1] = vqtbl2q_s8(v304, xmmword_296B8F070);
                  v306.val[0] = vqtbl2q_s8(v288, xmmword_296B8F080);
                  v306.val[0] = vqtbl2q_s8(v306, xmmword_296B8F020);
                  v304.val[0] = vqtbl2q_s8(v304, xmmword_296B8F030);
                  v286.val[1] = vaddq_s32(vshlq_n_s64(v286.val[1], 0x20uLL), v286.val[1]);
                  v302.val[1] = vqtbl2q_s8(v288, xmmword_296B8F040);
                  v297.val[0] = vqtbl2q_s8(*(&v302 + 16), xmmword_296B8F020);
                  v70 = vaddq_s32(vshlq_n_s64(v66, 0x20uLL), v66);
                  v71 = vaddq_s32(vshlq_n_s64(v285.val[0], 0x20uLL), v285.val[0]);
                  v39 = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
                  v72 = vaddq_s32(vshlq_n_s64(v68, 0x20uLL), v68);
                  v73 = vaddq_s32(vshlq_n_s64(v299.val[1], 0x20uLL), v299.val[1]);
                  v288.val[0] = vaddq_s32(vshlq_n_s64(v302.val[0], 0x20uLL), v302.val[0]);
                  v295.val[1] = vaddq_s32(vshlq_n_s64(v299.val[0], 0x20uLL), v299.val[0]);
                  v295.val[0] = vaddq_s32(vshlq_n_s64(v297.val[1], 0x20uLL), v297.val[1]);
                  v302.val[0] = vaddq_s32(vshlq_n_s64(v306.val[0], 0x20uLL), v306.val[0]);
                  v299.val[0] = vaddq_s32(vshlq_n_s64(v297.val[0], 0x20uLL), v297.val[0]);
                  *v39.i8 = vadd_s32(vadd_s32(vadd_s32(*v73.i8, *&vextq_s8(v73, v73, 8uLL)), vadd_s32(*v288.val[0].i8, *&vextq_s8(v288.val[0], v288.val[0], 8uLL))), vadd_s32(vadd_s32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)), vadd_s32(*v72.i8, *&vextq_s8(v72, v72, 8uLL))));
                  v74 = vaddq_s32(vdupq_lane_s32(*v71.i8, 1), v71);
                  v306.val[1] = *(v258[0] + v60 - 32);
                  v75 = *(v258[0] + v60 - 16);
                  v290.val[1] = *(result + v60 - 32);
                  v288.val[1] = *(result + v60 - 16);
                  v279.val[1] = vaddq_s32(vdupq_lane_s32(*v302.val[0].i8, 1), v302.val[0]);
                  v306.val[0] = *(v59 + v60 - 32);
                  v304.val[1] = *(v59 + v60 - 16);
                  v290.val[0] = *(v58 + v60 - 32);
                  v288.val[0] = *(v58 + v60 - 16);
                  v302.val[1] = vaddq_s32(vdupq_lane_s32(*v299.val[0].i8, 1), v299.val[0]);
                  v299.val[1] = vqtbl2q_s8(*(&v304 + 16), xmmword_296B8F000);
                  v299.val[0] = vqtbl2q_s8(v288, xmmword_296B8F010);
                  v291.val[1] = vqtbl2q_s8(*(&v304 + 16), xmmword_296B8F030);
                  v291.val[0] = vqtbl2q_s8(v288, xmmword_296B8F040);
                  v293.val[1] = vqtbl2q_s8(*(&v304 + 16), xmmword_296B8F050);
                  v293.val[0] = vqtbl2q_s8(v288, xmmword_296B8F060);
                  v304.val[1] = vqtbl2q_s8(*(&v304 + 16), xmmword_296B8F070);
                  v304.val[0] = vqtbl2q_s8(v288, xmmword_296B8F080);
                  v288.val[1] = vqtbl2q_s8(v306, xmmword_296B8F050);
                  v288.val[0] = vqtbl2q_s8(v290, xmmword_296B8F060);
                  v279.val[0] = vqtbl2q_s8(v306, xmmword_296B8F070);
                  v76 = vqtbl2q_s8(v290, xmmword_296B8F080);
                  v302.val[0] = vqtbl2q_s8(v306, xmmword_296B8F000);
                  v77 = vqtbl2q_s8(v290, xmmword_296B8F010);
                  v306.val[0] = vqtbl2q_s8(v306, xmmword_296B8F030);
                  v78 = vqtbl2q_s8(v290, xmmword_296B8F040);
                  v61 = xmmword_296B8F040;
                  v62 = xmmword_296B8F030;
                  v38 = vaddq_s32(vshlq_n_s64(v65, 0x20uLL), v65);
                  v279.val[1] = vdupq_laneq_s32(v279.val[1], 3);
                  *v40.i8 = vadd_s32(*&vextq_s8(v279.val[1], v279.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v295.val[0].i8, 1), *&vextq_s8(v295.val[0], v295.val[0], 8uLL)));
                  v279.val[1] = vdupq_laneq_s32(v302.val[1], 3);
                  *v295.val[0].i8 = vadd_s32(*&vextq_s8(v279.val[1], v279.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v295.val[1].i8, 1), *&vextq_s8(v295.val[1], v295.val[1], 8uLL)));
                  v279.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v70.i8, 1), v70), 3);
                  v37 = vextq_s8(v279.val[1], v279.val[1], 8uLL);
                  *v37.i8 = vadd_s32(*v37.i8, vadd_s32(vdup_lane_s32(*v286.val[1].i8, 1), *&vextq_s8(v286.val[1], v286.val[1], 8uLL)));
                  v286.val[1] = vdupq_laneq_s32(v74, 3);
                  v51 = xmmword_296B8F000;
                  *v286.val[0].i8 = vadd_s32(*&vextq_s8(v286.val[1], v286.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v286.val[0].i8, 1), *&vextq_s8(v286.val[0], v286.val[0], 8uLL)));
                  v286.val[1] = vqtbl2q_s8(v299, xmmword_296B8F020);
                  v79 = vqtbl2q_s8(v291, xmmword_296B8F020);
                  v295.val[1] = vqtbl2q_s8(v293, xmmword_296B8F020);
                  v297.val[0] = vqtbl2q_s8(v304, xmmword_296B8F020);
                  v63 = xmmword_296B8F020;
                  v297.val[1] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  *v40.i8 = vadd_s32(*v295.val[0].i8, *v40.i8);
                  v80 = vqtbl2q_s8(v279, xmmword_296B8F020);
                  v279.val[0] = vqtbl2q_s8(v302, xmmword_296B8F020);
                  v295.val[0] = vqtbl2q_s8(v306, xmmword_296B8F020);
                  v286.val[1] = vaddq_s32(vshlq_n_s64(v286.val[1], 0x20uLL), v286.val[1]);
                  v81 = vaddq_s32(vshlq_n_s64(v79, 0x20uLL), v79);
                  v295.val[1] = vaddq_s32(vshlq_n_s64(v295.val[1], 0x20uLL), v295.val[1]);
                  v297.val[0] = vaddq_s32(vshlq_n_s64(v297.val[0], 0x20uLL), v297.val[0]);
                  v297.val[1] = vaddq_s32(vshlq_n_s64(v297.val[1], 0x20uLL), v297.val[1]);
                  v82 = vaddq_s32(vshlq_n_s64(v80, 0x20uLL), v80);
                  v279.val[0] = vaddq_s32(vshlq_n_s64(v279.val[0], 0x20uLL), v279.val[0]);
                  v295.val[0] = vaddq_s32(vshlq_n_s64(v295.val[0], 0x20uLL), v295.val[0]);
                  v42 = vaddq_s32(vdupq_lane_s32(*v81.i8, 1), v81);
                  v43 = vaddq_s32(vdupq_lane_s32(*v295.val[1].i8, 1), v295.val[1]);
                  v36 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v295.val[0].i8, 1), v295.val[0]), vaddq_s32(vdupq_lane_s32(*v279.val[0].i8, 1), v279.val[0]));
                  v41 = vaddq_s32(v42, vaddq_s32(vdupq_lane_s32(*v286.val[1].i8, 1), v286.val[1]));
                  v35 = vaddq_s32(vaddq_s32(v41, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v297.val[0].i8, 1), v297.val[0]), v43)), vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v82.i8, 1), v82), vaddq_s32(vdupq_lane_s32(*v297.val[1].i8, 1), v297.val[1])), v36));
                  v50.i64[1] = v255.val[0].i64[1];
                  *v36.i8 = vadd_s32(vadd_s32(*v286.val[0].i8, *v37.i8), vadd_s32(vadd_s32(vadd_s32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)), vadd_s32(*v248.i8, *&vextq_s8(v248, v248, 8uLL))), vadd_s32(vadd_s32(*v253.i8, *&vextq_s8(v253, v253, 8uLL)), vadd_s32(*v251.i8, *&vextq_s8(v251, v251, 8uLL)))));
                  *v35.i8 = vzip2_s32(*v36.i8, vadd_s32(*v40.i8, *v39.i8));
                  *v50.i8 = vadd_s32(*v35.i8, *v255.val[0].i8);
                  v48 += v35.u32[3];
                  v60 += 32;
                }

                while (v60 <= v31);
                v49 = v31 & 0xFFFFFFE0;
                v44 = v257;
                v34 = v236;
                v33 = v237;
              }

              else
              {
                v49 = 0;
                v50.i64[0] = 0;
                v51 = xmmword_296B8F000;
              }

              if ((v49 | 8) <= v31)
              {
                result = v265[0] + 2 * v266;
                do
                {
                  v35.i64[0] = *(v272[0] + v49);
                  v36.i64[0] = *(v273 + v272[0] + v49);
                  v37.i64[0] = *(v272[0] + 2 * v273 + v49);
                  v38.i64[0] = *(v273 + v272[0] + 2 * v273 + v49);
                  v84 = vzip1q_s8(v38, v36);
                  v85 = vzip1q_s8(v37, v35);
                  v86 = vzip1q_s8(v84, v85);
                  v87 = vzip2q_s8(v84, v85);
                  v88 = vshlq_n_s64(v87, 0x20uLL);
                  v89 = vshlq_n_s64(v86, 0x20uLL);
                  v90 = vaddq_s32(v89, v86);
                  v91 = vaddq_s32(v88, v87);
                  v88.i64[0] = *(v265[0] + v49);
                  v89.i64[0] = *(v266 + v265[0] + v49);
                  v39.i64[0] = *(result + v49);
                  v40.i64[0] = *(v266 + v265[0] + 2 * v266 + v49);
                  v92 = vzip1q_s8(v40, v89);
                  v93 = vzip1q_s8(v39, v88);
                  v94 = vzip1q_s8(v92, v93);
                  v95 = vzip2q_s8(v92, v93);
                  v40 = vshlq_n_s64(v94, 0x20uLL);
                  v39 = vaddq_s32(v40, v94);
                  v96 = vaddq_s32(vshlq_n_s64(v95, 0x20uLL), v95);
                  *v91.i8 = vadd_s32(vzip2_s32(vadd_s32(*v91.i8, *&vextq_s8(v91, v91, 8uLL)), vadd_s32(*v96.i8, *&vextq_s8(v96, v96, 8uLL))), *v50.i8);
                  v97 = vextq_s8(v39, v39, 8uLL);
                  v98 = vextq_s8(v90, v90, 8uLL);
                  *v50.i8 = vadd_s32(*v91.i8, vzip2_s32(vadd_s32(*v90.i8, *v98.i8), vadd_s32(*v39.i8, *v97.i8)));
                  v91.i64[0] = *(v258[0] + v49);
                  v97.i64[0] = *(v259 + v258[0] + v49);
                  v90.i64[0] = *(v258[0] + 2 * v259 + v49);
                  v98.i64[0] = *(v259 + v258[0] + 2 * v259 + v49);
                  v99 = vzip1q_s8(v98, v97);
                  v100 = vzip1q_s8(v90, v91);
                  v101 = vzip1q_s8(v99, v100);
                  v102 = vzip2q_s8(v99, v100);
                  v103 = vaddq_s32(vshlq_n_s64(v101, 0x20uLL), v101);
                  v104 = vaddq_s32(vshlq_n_s64(v102, 0x20uLL), v102);
                  v36 = vdupq_lane_s32(*v104.i8, 1);
                  v38 = vdupq_lane_s32(*v103.i8, 1);
                  v37 = vaddq_s32(v38, v103);
                  v35 = vaddq_s32(v36, v104);
                  v48 += v35.i32[3] + v37.i32[3];
                  v83 = v49 + 8;
                  v105 = v49 + 16;
                  v49 += 8;
                }

                while (v105 <= v31);
              }

              else
              {
                v83 = v49;
              }

              if (v83 < v31)
              {
                do
                {
                  v35.i8[0] = *(v273 + v272[0] + v83);
                  v35.i8[4] = *(v265[0] + v83);
                  v36.i8[0] = *(v272[0] + v83);
                  v36.i8[4] = *(v266 + v265[0] + v83);
                  v106 = vshl_u32(vand_s8(*v36.i8, 0xFF000000FFLL), v34);
                  v107 = vorr_s8(v106, vshl_u32(vand_s8(*v35.i8, 0xFF000000FFLL), v33));
                  v106.i8[0] = *(v272[0] + 2 * v273 + v83);
                  v106.i8[4] = *(v265[0] + 2 * v266 + v83);
                  v108 = vand_s8(v106, 0xFF000000FFLL);
                  *v36.i8 = vorr_s8(vshl_n_s32(v108, 8uLL), v108);
                  *v35.i8 = vorr_s8(v107, *v36.i8);
                  *v50.i8 = vadd_s32(*v35.i8, *v50.i8);
                  v109 = *(v258[0] + 2 * v259 + v83);
                  result = (*(v258[0] + v83) << 24) | (*(v259 + v258[0] + v83) << 16) | (v109 << 8) | v109;
                  v48 += result;
                  ++v83;
                }

                while (v31 != v83);
                v83 = v31;
              }

              if (v83 + 32 <= v32)
              {
                v113 = v273 + v272[0];
                v114 = v273 + v272[0] + 2 * v273;
                v115 = v272[0] + 2 * v273;
                v116 = v266 + v265[0];
                v117 = v266 + v265[0] + 2 * v266;
                v118 = v265[0] + 2 * v266;
                result = v259 + v258[0];
                v119 = v259 + v258[0] + 2 * v259;
                v120 = v258[0] + 2 * v259;
                v112 = a11;
                do
                {
                  v289.val[1] = *(v45 + v83);
                  v296.val[1] = *(v45 + v83 + 16);
                  v283.val[1] = *(v113 + v83);
                  v294.val[1] = *(v113 + v83 + 16);
                  v289.val[0] = *(v115 + v83);
                  v296.val[0] = *(v115 + v83 + 16);
                  v294.val[0] = *(v114 + v83 + 16);
                  v280.val[1] = vqtbl2q_s8(v289, xmmword_296B8F070);
                  v252.val[0] = *(v114 + v83);
                  v283.val[0] = v252.val[0];
                  v252.val[1] = v283.val[1];
                  v280.val[0] = vqtbl2q_s8(v283, xmmword_296B8F080);
                  v241 = vdupq_lane_s32(*v50.i8, 0);
                  v121 = vqtbl2q_s8(v280, xmmword_296B8F020);
                  v283.val[1] = *(v46 + v83);
                  v283.val[0] = *(v118 + v83);
                  v250.val[0] = *(v118 + v83 + 16);
                  v250.val[1] = *(v46 + v83 + 16);
                  v249 = v283;
                  v283.val[0] = vqtbl2q_s8(v283, xmmword_296B8F070);
                  v298.val[1] = *(v116 + v83);
                  v307.val[1] = *(v116 + v83 + 16);
                  v280.val[0] = vaddq_s32(vshlq_n_s64(v121, 0x20uLL), v121);
                  v307.val[0] = *(v117 + v83 + 16);
                  v247.val[0] = *(v117 + v83);
                  v298.val[0] = v247.val[0];
                  v247.val[1] = v298.val[1];
                  v280.val[1] = vqtbl2q_s8(v298, xmmword_296B8F080);
                  v122 = vqtbl2q_s8(v283, xmmword_296B8F020);
                  v280.val[1] = vdupq_lane_s32(*v280.val[0].i8, 1);
                  v283.val[1] = vaddq_s32(vshlq_n_s64(v122, 0x20uLL), v122);
                  v283.val[0] = vdupq_lane_s32(*v283.val[1].i8, 1);
                  v280.val[1].i64[0] = 0;
                  v240 = vdupq_lane_s32(*v50.i8, 1);
                  v301.val[1] = *(v47 + v83);
                  v283.val[0].i64[0] = 0;
                  v301.val[0] = *(v120 + v83);
                  v246.val[0] = *(v120 + v83 + 16);
                  v246.val[1] = *(v47 + v83 + 16);
                  v256 = v301;
                  v298.val[1] = vqtbl2q_s8(v301, xmmword_296B8F070);
                  v123 = vaddq_s32(v280.val[1], v280.val[0]);
                  v301.val[1] = *(result + v83);
                  v301.val[0] = *(v119 + v83);
                  v245.val[0] = *(v119 + v83 + 16);
                  v245.val[1] = *(result + v83 + 16);
                  v124 = vaddq_s32(v283.val[0], v283.val[1]);
                  v254 = v301.val[0];
                  v298.val[0] = vqtbl2q_s8(v301, xmmword_296B8F080);
                  v125 = vqtbl2q_s8(v298, xmmword_296B8F020);
                  v126 = vaddq_s32(vshlq_n_s64(v125, 0x20uLL), v125);
                  v280.val[0] = vaddq_s32(v123, v241);
                  v280.val[1] = vdupq_lane_s32(*v126.i8, 1);
                  v280.val[1].i64[0] = 0;
                  v127 = vaddq_s32(v280.val[1], v126);
                  v280.val[1] = vaddq_s32(v124, v240);
                  v301.val[0] = vdupq_n_s32(v48);
                  v128 = vaddq_s32(v127, v301.val[0]);
                  v283.val[0] = vzip1q_s32(v280.val[0], v128);
                  v283.val[1] = vzip1q_s32(v280.val[1], v44);
                  v129 = v112;
                  vst2q_f32(v129, v283);
                  v129 += 8;
                  v130 = vzip2q_s32(v280.val[0], v128);
                  v280.val[0] = vzip2q_s32(v280.val[1], v44);
                  vst2q_f32(v129, v280);
                  v239.val[0] = vqtbl2q_s8(v294, xmmword_296B8F080);
                  v239.val[1] = vqtbl2q_s8(v296, xmmword_296B8F070);
                  v243.val[0] = vqtbl2q_s8(v294, xmmword_296B8F040);
                  v243.val[1] = vqtbl2q_s8(v296, xmmword_296B8F030);
                  v244.val[0] = vqtbl2q_s8(v294, xmmword_296B8F010);
                  v244.val[1] = vqtbl2q_s8(v296, v51);
                  v292.val[1] = vqtbl2q_s8(v296, xmmword_296B8F050);
                  v292.val[0] = vqtbl2q_s8(v294, xmmword_296B8F060);
                  v281 = v289;
                  v296.val[1] = vqtbl2q_s8(v289, xmmword_296B8F030);
                  v296.val[0] = vqtbl2q_s8(v252, xmmword_296B8F040);
                  v289.val[1] = vqtbl2q_s8(v289, v51);
                  v289.val[0] = vqtbl2q_s8(v252, xmmword_296B8F010);
                  v294.val[1] = vqtbl2q_s8(v281, xmmword_296B8F050);
                  v294.val[0] = vqtbl2q_s8(v252, xmmword_296B8F060);
                  v294.val[0] = vqtbl2q_s8(v294, xmmword_296B8F020);
                  v298.val[0] = vaddq_s32(vshlq_n_s64(v294.val[0], 0x20uLL), v294.val[0]);
                  v282 = v250;
                  v238.val[0] = vqtbl2q_s8(v307, xmmword_296B8F080);
                  v238.val[1] = vqtbl2q_s8(v250, xmmword_296B8F070);
                  v242.val[0] = vqtbl2q_s8(v307, xmmword_296B8F040);
                  v242.val[1] = vqtbl2q_s8(v250, xmmword_296B8F030);
                  v252.val[0] = vqtbl2q_s8(v307, xmmword_296B8F010);
                  v252.val[1] = vqtbl2q_s8(v250, v51);
                  v131 = vdupq_lane_s32(*v298.val[0].i8, 1);
                  v131.i64[0] = 0;
                  v250.val[0] = vqtbl2q_s8(v307, xmmword_296B8F060);
                  v250.val[1] = vqtbl2q_s8(v282, xmmword_296B8F050);
                  v132 = vaddq_s32(v131, v298.val[0]);
                  v283.val[1] = v249.val[0];
                  v133 = v249.val[1];
                  v307.val[1] = vqtbl2q_s8(*(&v283 + 16), xmmword_296B8F050);
                  v307.val[0] = vqtbl2q_s8(v247, xmmword_296B8F060);
                  v283.val[0] = vqtbl2q_s8(v307, xmmword_296B8F020);
                  v283.val[0] = vaddq_s32(vshlq_n_s64(v283.val[0], 0x20uLL), v283.val[0]);
                  v298.val[0] = vdupq_lane_s32(*v283.val[0].i8, 1);
                  v298.val[0].i64[0] = 0;
                  v282.val[0] = vaddq_s32(v298.val[0], v283.val[0]);
                  v282.val[1] = v256.val[0];
                  v283.val[0] = v256.val[1];
                  v307.val[1] = vqtbl2q_s8(v283, xmmword_296B8F050);
                  v287.val[0] = v254;
                  v287.val[1] = v301.val[1];
                  v307.val[0] = vqtbl2q_s8(v287, xmmword_296B8F060);
                  v298.val[0] = vqtbl2q_s8(v307, xmmword_296B8F020);
                  v134 = vaddq_s32(vdupq_laneq_s32(v123, 3), v132);
                  v298.val[0] = vaddq_s32(vshlq_n_s64(v298.val[0], 0x20uLL), v298.val[0]);
                  v307.val[1] = vdupq_lane_s32(*v298.val[0].i8, 1);
                  v135 = vaddq_s32(vdupq_laneq_s32(v124, 3), v282.val[0]);
                  v307.val[1].i64[0] = 0;
                  v298.val[0] = vaddq_s32(vdupq_laneq_s32(v127, 3), vaddq_s32(v307.val[1], v298.val[0]));
                  v307.val[0] = vaddq_s32(v134, v241);
                  v307.val[1] = vaddq_s32(v135, v240);
                  v136 = vaddq_s32(v298.val[0], v301.val[0]);
                  v137 = vzip1q_s32(v307.val[0], v136);
                  v282.val[0] = vzip1q_s32(v307.val[1], v257);
                  v138 = v112 + 16;
                  vst2q_f32(v138, v282);
                  v139 = vzip2q_s32(v307.val[0], v136);
                  v282.val[0] = vzip2q_s32(v307.val[1], v257);
                  v140 = v112 + 24;
                  vst2q_f32(v140, v282);
                  v141 = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v142 = vqtbl2q_s8(*(&v283 + 16), xmmword_296B8F030);
                  v283.val[1] = vqtbl2q_s8(v247, xmmword_296B8F040);
                  v282.val[0] = vqtbl2q_s8(*(&v283 + 16), xmmword_296B8F020);
                  v143 = vaddq_s32(vshlq_n_s64(v141, 0x20uLL), v141);
                  v282.val[0] = vaddq_s32(vshlq_n_s64(v282.val[0], 0x20uLL), v282.val[0]);
                  v144 = vqtbl2q_s8(v283, xmmword_296B8F030);
                  v283.val[1] = vqtbl2q_s8(v287, xmmword_296B8F040);
                  v283.val[1] = vqtbl2q_s8(*(&v283 + 16), xmmword_296B8F020);
                  v283.val[1] = vaddq_s32(vshlq_n_s64(v283.val[1], 0x20uLL), v283.val[1]);
                  v145 = vdupq_lane_s32(*v143.i8, 1);
                  v145.i64[0] = 0;
                  v146 = vaddq_s32(v145, v143);
                  v147 = vdupq_lane_s32(*v282.val[0].i8, 1);
                  v147.i64[0] = 0;
                  v307.val[0] = vdupq_lane_s32(*v283.val[1].i8, 1);
                  v282.val[0] = vaddq_s32(v147, v282.val[0]);
                  v307.val[0].i64[0] = 0;
                  v148 = vaddq_s32(v307.val[0], v283.val[1]);
                  v283.val[1] = vdupq_laneq_s32(v134, 3);
                  v307.val[0] = vaddq_s32(vaddq_s32(v146, v241), v283.val[1]);
                  v149 = vdupq_laneq_s32(v135, 3);
                  v307.val[1] = vaddq_s32(vaddq_s32(v282.val[0], v240), v149);
                  v298.val[0] = vdupq_laneq_s32(v298.val[0], 3);
                  v150 = vaddq_s32(vaddq_s32(v148, v301.val[0]), v298.val[0]);
                  v282.val[1] = vzip1q_s32(v307.val[0], v150);
                  v283.val[0] = vzip1q_s32(v307.val[1], v257);
                  v51 = xmmword_296B8F000;
                  v151 = v112 + 32;
                  vst2q_f32(v151, v283);
                  v283.val[0] = vqtbl2q_s8(v249, xmmword_296B8F000);
                  v282.val[1] = vqtbl2q_s8(v247, xmmword_296B8F010);
                  v298.val[1] = vqtbl2q_s8(v239, xmmword_296B8F020);
                  v296.val[0] = vqtbl2q_s8(v292, xmmword_296B8F020);
                  v287.val[1] = vqtbl2q_s8(v289, xmmword_296B8F020);
                  v296.val[1] = vaddq_s32(vshlq_n_s64(v298.val[1], 0x20uLL), v298.val[1]);
                  v287.val[0] = vaddq_s32(vshlq_n_s64(v296.val[0], 0x20uLL), v296.val[0]);
                  v287.val[1] = vaddq_s32(vshlq_n_s64(v287.val[1], 0x20uLL), v287.val[1]);
                  v296.val[0] = vdupq_lane_s32(*v296.val[1].i8, 1);
                  v296.val[0].i64[0] = 0;
                  v298.val[1] = vdupq_lane_s32(*v287.val[1].i8, 1);
                  v298.val[1].i64[0] = 0;
                  v298.val[1] = vaddq_s32(v298.val[1], v287.val[1]);
                  v287.val[1] = vaddq_s32(v296.val[0], v296.val[1]);
                  v294.val[0] = vqtbl2q_s8(v238, xmmword_296B8F020);
                  v282.val[1] = vqtbl2q_s8(v283, xmmword_296B8F020);
                  v283.val[0] = vaddq_s32(vshlq_n_s64(v294.val[0], 0x20uLL), v294.val[0]);
                  v282.val[1] = vaddq_s32(vshlq_n_s64(v282.val[1], 0x20uLL), v282.val[1]);
                  v152 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v146, 3), v298.val[1]), v283.val[1]);
                  v283.val[1] = vdupq_lane_s32(*v282.val[1].i8, 1);
                  v283.val[1].i64[0] = 0;
                  v294.val[0] = vdupq_lane_s32(*v283.val[0].i8, 1);
                  v282.val[1] = vaddq_s32(v283.val[1], v282.val[1]);
                  v294.val[0].i64[0] = 0;
                  v283.val[1] = vaddq_s32(v294.val[0], v283.val[0]);
                  v282.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v282.val[0], 3), v282.val[1]), v149);
                  v283.val[0] = vqtbl2q_s8(v246, xmmword_296B8F070);
                  v282.val[1] = vqtbl2q_s8(v245, xmmword_296B8F080);
                  v282.val[1] = vqtbl2q_s8(v283, xmmword_296B8F020);
                  v294.val[1] = vqtbl2q_s8(v256, xmmword_296B8F000);
                  v296.val[0] = v254;
                  v296.val[1] = v301.val[1];
                  v294.val[0] = vqtbl2q_s8(v296, xmmword_296B8F010);
                  v283.val[0] = vqtbl2q_s8(v294, xmmword_296B8F020);
                  v298.val[1] = vdupq_lane_s32(*v287.val[0].i8, 1);
                  v282.val[1] = vaddq_s32(vshlq_n_s64(v282.val[1], 0x20uLL), v282.val[1]);
                  v283.val[0] = vaddq_s32(vshlq_n_s64(v283.val[0], 0x20uLL), v283.val[0]);
                  v153 = vdupq_lane_s32(*v283.val[0].i8, 1);
                  v294.val[0] = vdupq_lane_s32(*v282.val[1].i8, 1);
                  v294.val[0].i64[0] = 0;
                  v153.i64[0] = 0;
                  v43 = vdupq_laneq_s32(v152, 3);
                  v282.val[1] = vaddq_s32(v294.val[0], v282.val[1]);
                  v154 = vaddq_s32(v152, v241);
                  v296.val[1] = vdupq_laneq_s32(v282.val[0], 3);
                  v282.val[0] = vaddq_s32(v282.val[0], v240);
                  v294.val[0] = vzip2q_s32(v307.val[0], v150);
                  v294.val[1] = vzip2q_s32(v307.val[1], v257);
                  v155 = v112 + 40;
                  vst2q_f32(v155, v294);
                  v283.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v148, 3), vaddq_s32(v153, v283.val[0])), v298.val[0]);
                  v156 = v301.val[0];
                  v307.val[0] = vaddq_s32(v283.val[0], v301.val[0]);
                  v294.val[0] = vzip1q_s32(v154, v307.val[0]);
                  v294.val[1] = vzip1q_s32(v282.val[0], v257);
                  v157 = v112 + 48;
                  v158 = vaddq_s32(vaddq_s32(v287.val[1], v241), v43);
                  vst2q_f32(v157, v294);
                  v294.val[1] = vqtbl2q_s8(v246, xmmword_296B8F030);
                  v301.val[0] = vaddq_s32(vaddq_s32(v283.val[1], v240), v296.val[1]);
                  v298.val[0] = vdupq_laneq_s32(v283.val[0], 3);
                  v307.val[0] = vzip2q_s32(v154, v307.val[0]);
                  v307.val[1] = vzip2q_s32(v282.val[0], v257);
                  v283.val[0] = vaddq_s32(vaddq_s32(v282.val[1], v156), v298.val[0]);
                  v159 = v112 + 56;
                  vst2q_f32(v159, v307);
                  v160 = vzip1q_s32(v158, v283.val[0]);
                  v282.val[0] = vzip1q_s32(v301.val[0], v257);
                  v161 = v112 + 64;
                  vst2q_f32(v161, v282);
                  v294.val[0] = vqtbl2q_s8(v245, xmmword_296B8F040);
                  v282.val[0] = vqtbl2q_s8(v246, xmmword_296B8F000);
                  v162 = vqtbl2q_s8(v245, xmmword_296B8F010);
                  v307.val[1] = vqtbl2q_s8(v246, xmmword_296B8F050);
                  v298.val[1].i64[0] = 0;
                  v307.val[0] = vqtbl2q_s8(v245, xmmword_296B8F060);
                  v287.val[0] = vaddq_s32(v298.val[1], v287.val[0]);
                  v301.val[1] = v250.val[0];
                  v163 = v250.val[1];
                  v298.val[1] = vqtbl2q_s8(*(&v301 + 16), xmmword_296B8F020);
                  v287.val[0] = vaddq_s32(vdupq_laneq_s32(v287.val[1], 3), v287.val[0]);
                  v287.val[1] = vaddq_s32(vshlq_n_s64(v298.val[1], 0x20uLL), v298.val[1]);
                  v298.val[1] = vdupq_lane_s32(*v287.val[1].i8, 1);
                  v298.val[1].i64[0] = 0;
                  v287.val[1] = vaddq_s32(v298.val[1], v287.val[1]);
                  v298.val[1] = vqtbl2q_s8(v307, xmmword_296B8F020);
                  v298.val[1] = vaddq_s32(vshlq_n_s64(v298.val[1], 0x20uLL), v298.val[1]);
                  v164 = vdupq_lane_s32(*v298.val[1].i8, 1);
                  v164.i64[0] = 0;
                  v283.val[1] = vaddq_s32(vdupq_laneq_s32(v283.val[1], 3), v287.val[1]);
                  v282.val[1] = vaddq_s32(vdupq_laneq_s32(v282.val[1], 3), vaddq_s32(v164, v298.val[1]));
                  v287.val[1] = vaddq_s32(vaddq_s32(v287.val[0], v241), v43);
                  v298.val[1] = vaddq_s32(vaddq_s32(v283.val[1], v240), v296.val[1]);
                  v303.val[0] = vzip2q_s32(v158, v283.val[0]);
                  v303.val[1] = vzip2q_s32(v301.val[0], v257);
                  v165 = v112 + 72;
                  v283.val[0] = vaddq_s32(vaddq_s32(v282.val[1], v156), v298.val[0]);
                  vst2q_f32(v165, v303);
                  v303.val[0] = vzip1q_s32(v287.val[1], v283.val[0]);
                  v303.val[1] = vzip1q_s32(v298.val[1], v257);
                  v166 = v112 + 80;
                  vst2q_f32(v166, v303);
                  v167 = vqtbl2q_s8(v243, xmmword_296B8F020);
                  v168 = vaddq_s32(vshlq_n_s64(v167, 0x20uLL), v167);
                  v301.val[0] = vdupq_lane_s32(*v168.i8, 1);
                  v301.val[0].i64[0] = 0;
                  v169 = vaddq_s32(v301.val[0], v168);
                  v301.val[0] = vqtbl2q_s8(v242, xmmword_296B8F020);
                  v301.val[0] = vaddq_s32(vshlq_n_s64(v301.val[0], 0x20uLL), v301.val[0]);
                  v287.val[0] = vdupq_laneq_s32(v287.val[0], 3);
                  v303.val[0] = vdupq_lane_s32(*v301.val[0].i8, 1);
                  v303.val[0].i64[0] = 0;
                  v301.val[0] = vaddq_s32(v303.val[0], v301.val[0]);
                  v283.val[1] = vdupq_laneq_s32(v283.val[1], 3);
                  v294.val[0] = vqtbl2q_s8(v294, xmmword_296B8F020);
                  v294.val[0] = vaddq_s32(vshlq_n_s64(v294.val[0], 0x20uLL), v294.val[0]);
                  v303.val[0] = vdupq_lane_s32(*v294.val[0].i8, 1);
                  v303.val[0].i64[0] = 0;
                  v42 = vaddq_s32(v303.val[0], v294.val[0]);
                  v294.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v169, v287.val[0]), v241), v43);
                  v303.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v301.val[0], v283.val[1]), v240), v296.val[1]);
                  v303.val[1] = vdupq_laneq_s32(v282.val[1], 3);
                  v282.val[1] = vzip2q_s32(v287.val[1], v283.val[0]);
                  v283.val[0] = vzip2q_s32(v298.val[1], v257);
                  v170 = v112 + 88;
                  vst2q_f32(v170, v283);
                  v283.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v42, v303.val[1]), v156), v298.val[0]);
                  v305.val[0] = vzip1q_s32(v294.val[1], v283.val[0]);
                  v171 = v112 + 96;
                  v305.val[1] = vzip1q_s32(v303.val[0], v257);
                  vst2q_f32(v171, v305);
                  v44 = v257;
                  v282.val[1] = vqtbl2q_s8(v244, xmmword_296B8F020);
                  v282.val[1] = vaddq_s32(vshlq_n_s64(v282.val[1], 0x20uLL), v282.val[1]);
                  v41 = vdupq_lane_s32(*v282.val[1].i8, 1);
                  v41.i64[0] = 0;
                  v282.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v169, 3), vaddq_s32(v41, v282.val[1])), v287.val[0]);
                  v172 = v252.val[0];
                  v287.val[0] = v252.val[1];
                  v173 = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v174 = vaddq_s32(vshlq_n_s64(v173, 0x20uLL), v173);
                  v50 = vdupq_lane_s32(*v174.i8, 1);
                  v50.i64[0] = 0;
                  v37 = vaddq_s32(vaddq_s32(v282.val[1], v241), v43);
                  v283.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v301.val[0], 3), vaddq_s32(v50, v174)), v283.val[1]), v240);
                  v175 = vqtbl2q_s8(v282, xmmword_296B8F020);
                  v176 = vaddq_s32(vshlq_n_s64(v175, 0x20uLL), v175);
                  v40 = vdupq_lane_s32(*v176.i8, 1);
                  v36 = vaddq_s32(v283.val[1], v296.val[1]);
                  v40.i64[0] = 0;
                  v177 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v42, 3), vaddq_s32(v40, v176)), v303.val[1]), v156), v298.val[0]);
                  v283.val[0] = vzip2q_s32(v294.val[1], v283.val[0]);
                  v283.val[1] = vzip2q_s32(v303.val[0], v257);
                  v178 = v112 + 104;
                  v179 = v112 + 112;
                  vst2q_f32(v178, v283);
                  v283.val[0] = vzip1q_s32(v37, v177);
                  v283.val[1] = vzip1q_s32(v36, v257);
                  vst2q_f32(v179, v283);
                  v48 = v177.u32[3];
                  v283.val[0] = vzip2q_s32(v37, v177);
                  v283.val[1] = vzip2q_s32(v36, v257);
                  v180 = v112 + 120;
                  vst2q_f32(v180, v283);
                  v35 = vextq_s8(v36, v36, 8uLL);
                  v38 = vextq_s8(v37, v37, 8uLL);
                  *v50.i8 = vzip2_s32(*v38.i8, *v35.i8);
                  v112 += 128;
                  v181 = v83 + 64;
                  v83 += 32;
                }

                while (v181 <= v32);
                v111 = v36.u32[3];
                v110 = v37.u32[3];
                v34 = v236;
                v33 = v237;
              }

              else
              {
                v110 = v50.i32[0];
                v111 = v50.u32[1];
                v112 = a11;
              }

              if (v83 + 8 <= v32)
              {
                v184 = v273 + v45;
                v185 = v273 + v45 + 2 * v273;
                v186 = v45 + 2 * v273;
                v187 = v266 + v46;
                result = v266 + v46 + 2 * v266;
                v188 = v46 + 2 * v266;
                v189 = v259 + v47;
                v190 = v259 + v47 + 2 * v259;
                v191 = v47 + 2 * v259;
                do
                {
                  v35.i64[0] = *(v45 + v83);
                  v36.i64[0] = *(v184 + v83);
                  v37.i64[0] = *(v186 + v83);
                  v38.i64[0] = *(v185 + v83);
                  v192 = vzip1q_s8(v38, v36);
                  v193 = vzip1q_s8(v37, v35);
                  v194 = vzip1q_s8(v192, v193);
                  v195 = vzip2q_s8(v192, v193);
                  v196 = vaddq_s32(vshlq_n_s64(v194, 0x20uLL), v194);
                  v197 = vaddq_s32(vshlq_n_s64(v195, 0x20uLL), v195);
                  v198 = vdupq_lane_s32(*v197.i8, 1);
                  v199 = vdupq_lane_s32(*v196.i8, 1);
                  v200 = vdupq_n_s32(v110);
                  v40.i64[0] = *(v46 + v83);
                  v201 = vaddq_s32(v197, v200);
                  v197.i64[0] = *(v187 + v83);
                  v41.i64[0] = *(v188 + v83);
                  v199.i64[0] = 0;
                  v42.i64[0] = *(result + v83);
                  v202 = vzip1q_s8(v42, v197);
                  v203 = vzip1q_s8(v41, v40);
                  v198.i64[0] = 0;
                  v204 = vzip1q_s8(v202, v203);
                  v205 = vaddq_s32(vshlq_n_s64(v204, 0x20uLL), v204);
                  v206 = vdupq_lane_s32(*v205.i8, 1);
                  v207 = vaddq_s32(v199, v196);
                  v208 = vzip2q_s8(v202, v203);
                  v206.i64[0] = 0;
                  v209 = vdupq_n_s32(v111);
                  v210 = vaddq_s32(v198, v201);
                  v201.i64[0] = *(v47 + v83);
                  v43.i64[0] = *(v189 + v83);
                  v211 = vaddq_s32(v206, v205);
                  v205.i64[0] = *(v191 + v83);
                  v206.i64[0] = *(v190 + v83);
                  v212 = vdupq_laneq_s32(v207, 3);
                  v42 = vzip1q_s8(v206, v43);
                  v213 = vzip1q_s8(v205, v201);
                  v214 = vzip1q_s8(v42, v213);
                  v215 = vaddq_s32(vshlq_n_s64(v214, 0x20uLL), v214);
                  v216 = vaddq_s32(v207, v200);
                  v217 = vdupq_lane_s32(*v215.i8, 1);
                  v217.i64[0] = 0;
                  v41 = vaddq_s32(v217, v215);
                  v218 = vaddq_s32(v211, v209);
                  v43 = vdupq_n_s32(v48);
                  v219 = vaddq_s32(v41, v43);
                  v300.val[0] = vzip1q_s32(v216, v219);
                  v220 = v112 + 16;
                  v300.val[1] = vzip1q_s32(v218, v44);
                  v221 = v112;
                  vst2q_f32(v221, v300);
                  v221 += 8;
                  v222 = vaddq_s32(vshlq_n_s64(v208, 0x20uLL), v208);
                  v223 = vdupq_lane_s32(*v222.i8, 1);
                  v223.i64[0] = 0;
                  v224 = vaddq_s32(v210, v212);
                  v225 = vaddq_s32(v223, vaddq_s32(v222, v209));
                  v226 = vzip2q_s8(v42, v213);
                  v35 = vaddq_s32(v225, vdupq_laneq_s32(v211, 3));
                  v227 = vaddq_s32(vshlq_n_s64(v226, 0x20uLL), v226);
                  v228 = vdupq_lane_s32(*v227.i8, 1);
                  v110 = v224.u32[3];
                  v228.i64[0] = 0;
                  v40 = vdupq_laneq_s32(v41, 3);
                  v111 = v35.u32[3];
                  v229 = v112 + 24;
                  v230 = vaddq_s32(vaddq_s32(v228, vaddq_s32(v227, v43)), v40);
                  v48 = v230.u32[3];
                  v284.val[0] = vzip2q_s32(v216, v219);
                  v284.val[1] = vzip2q_s32(v218, v44);
                  vst2q_f32(v221, v284);
                  v38 = vzip1q_s32(v224, v230);
                  v284.val[1] = vzip1q_s32(v35, v44);
                  vst2q_f32(v220, *v38.i8);
                  v36 = vzip2q_s32(v224, v230);
                  v37 = vzip2q_s32(v35, v44);
                  vst2q_f32(v229, *v36.i8);
                  v183 = v112 + 32;
                  v182 = v83 + 8;
                  v231 = v83 + 16;
                  v83 += 8;
                  v112 += 32;
                }

                while (v231 <= v32);
              }

              else
              {
                v182 = v83;
                v183 = v112;
              }

              if (v182 < v32)
              {
                do
                {
                  v232 = *(v272[0] + v182 + 2 * v273);
                  v233 = *(v265[0] + v182 + 2 * v266);
                  v110 += (*(v272[0] + v182) << 24) | (*(v272[0] + v182 + v273) << 16) | (v232 << 8) | v232;
                  v234 = *(v258[0] + v182 + 2 * v259);
                  v111 += (*(v265[0] + v182) << 24) | (*(v265[0] + v182 + v266) << 16) | (v233 << 8) | v233;
                  v48 += (*(v258[0] + v182) << 24) | (*(v258[0] + v182 + v259) << 16) | (v234 << 8) | v234;
                  *&v235 = __PAIR64__(v111, v110);
                  *(&v235 + 1) = __PAIR64__(a7, v48);
                  *v183 = v235;
                  v183 += 4;
                  ++v182;
                }

                while (v32 != v182);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v28 += a10;
      }

      while (v28 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

__int16 *CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(__int16 *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t **a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v286 = 2;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v284 = v20.i32[0];
    v282 = v19;
    v280[1] = result;
    v283 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v281 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v285 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v280);
    v279 = 2;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v277 = v23.i32[0];
    v275 = v22;
    v273[1] = v17;
    v276 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v274 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v278 = v24;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v273);
    v272 = 2;
    v25 = *(a6 + 8);
    v26 = a3[3];
    v270 = v26.i32[0];
    v268 = v25;
    v266[1] = v17;
    v269 = a3[6].i32[1] + v26.i32[1] * v18;
    v27 = a3[7].u32[1];
    v267 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v271 = v27;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v266);
    if (*(*a7 + 24))
    {
      _D0 = **a7;
      __asm { FCVT            H0, D0 }

      v33 = _D0;
    }

    else
    {
      v33 = 32256;
    }

    v34 = a3[6].u32[1];
    if (a3[7].u32[0] + v34 < v18)
    {
      v36 = a3[3].i32[1] * *(a2 + 60);
      v37 = a3[5].u32[1];
      v38 = v37 + a9;
      v265 = vdupq_n_s16(v33);
      do
      {
        v283 = v36 + v34;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v280);
        v276 = v36 + v34;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v273);
        v269 = v36 + v34;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v266);
        v41.i64[0] = 0xFFFFFFFF00000000;
        v41.i64[1] = 0xFFFFFFFF00000000;
        v42 = v280[0];
        if (v280[0])
        {
          v43 = v273[0];
          if (v273[0])
          {
            v44 = v266[0];
            if (v266[0])
            {
              if (v37 >= 0x20)
              {
                v49 = 0;
                v47 = 0;
                v46 = 0;
                v45 = 0;
                v50 = v281 + v280[0];
                v51 = v274 + v273[0];
                v52 = v267 + v266[0];
                do
                {
                  v54 = *(v280[0] + v49);
                  v53 = *(v280[0] + v49 + 16);
                  v56 = *(v50 + v49);
                  v55 = *(v50 + v49 + 16);
                  v57 = vzip1q_s8(v56, v54);
                  v58 = vzip2q_s8(v56, v54);
                  v59 = vzip1q_s8(v55, v53);
                  v60 = vzip2q_s8(v55, v53);
                  v61 = vaddq_s16(vshlq_n_s32(v57, 0x10uLL), v57);
                  v62 = vaddq_s16(vshlq_n_s32(v58, 0x10uLL), v58);
                  v63 = vaddq_s16(vshlq_n_s32(v59, 0x10uLL), v59);
                  v64 = vaddq_s16(vshlq_n_s32(v60, 0x10uLL), v60);
                  v65 = vaddq_s16(vandq_s8(vqtbl1q_s8(v64, xmmword_296B8F090), v41), v64);
                  v66 = vaddq_s16(vandq_s8(vqtbl1q_s8(v63, xmmword_296B8F090), v41), v63);
                  v67 = vaddq_s16(vandq_s8(vqtbl1q_s8(v62, xmmword_296B8F090), v41), v62);
                  v68 = vaddq_s16(vandq_s8(vqtbl1q_s8(v61, xmmword_296B8F090), v41), v61);
                  v70 = *(v273[0] + v49);
                  v69 = *(v273[0] + v49 + 16);
                  v72 = *(v51 + v49);
                  v71 = *(v51 + v49 + 16);
                  v73 = vzip1q_s8(v72, v70);
                  v74 = vzip2q_s8(v72, v70);
                  v75 = vzip1q_s8(v71, v69);
                  v76 = vzip2q_s8(v71, v69);
                  v77 = vaddq_s16(vshlq_n_s32(v73, 0x10uLL), v73);
                  v78 = vaddq_s16(vshlq_n_s32(v74, 0x10uLL), v74);
                  v79 = vaddq_s16(vshlq_n_s32(v75, 0x10uLL), v75);
                  v80 = vaddq_s16(vshlq_n_s32(v76, 0x10uLL), v76);
                  v81 = vaddq_s16(vandq_s8(vqtbl1q_s8(v80, xmmword_296B8F090), v41), v80);
                  v82 = vaddq_s16(vandq_s8(vqtbl1q_s8(v79, xmmword_296B8F090), v41), v79);
                  v83 = vaddq_s16(vandq_s8(vqtbl1q_s8(v78, xmmword_296B8F090), v41), v78);
                  v84 = vaddq_s16(vandq_s8(vqtbl1q_s8(v77, xmmword_296B8F090), v41), v77);
                  v85 = vaddq_s16(vdupq_lane_s16(*v82.i8, 3), v82);
                  v87 = *(v266[0] + v49);
                  v86 = *(v266[0] + v49 + 16);
                  v89 = *(v52 + v49);
                  v88 = *(v52 + v49 + 16);
                  v90 = vzip1q_s8(v89, v87);
                  v91 = vzip2q_s8(v89, v87);
                  v92 = vzip1q_s8(v88, v86);
                  v93 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v68.i8, 3), v68), vaddq_s16(vdupq_lane_s16(*v67.i8, 3), v67));
                  v94 = vzip2q_s8(v88, v86);
                  v95 = vaddq_s16(vshlq_n_s32(v90, 0x10uLL), v90);
                  v96 = vaddq_s16(vshlq_n_s32(v91, 0x10uLL), v91);
                  v97 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v66.i8, 3), v66), vaddq_s16(vdupq_lane_s16(*v65.i8, 3), v65));
                  v98 = vaddq_s16(vshlq_n_s32(v92, 0x10uLL), v92);
                  v99 = vaddq_s16(vshlq_n_s32(v94, 0x10uLL), v94);
                  v100 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v84.i8, 3), v84), vaddq_s16(vdupq_lane_s16(*v83.i8, 3), v83));
                  v101 = vaddq_s16(vandq_s8(vqtbl1q_s8(v99, xmmword_296B8F090), v41), v99);
                  v102 = vaddq_s16(vandq_s8(vqtbl1q_s8(v98, xmmword_296B8F090), v41), v98);
                  v103 = vaddq_s16(vandq_s8(vqtbl1q_s8(v96, xmmword_296B8F090), v41), v96);
                  v104 = vaddq_s16(v97, v93);
                  v105 = vaddq_s16(vandq_s8(vqtbl1q_s8(v95, xmmword_296B8F090), v41), v95);
                  v106 = v104.u16[7];
                  v40 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v105.i8, 3), v105), vaddq_s16(vdupq_lane_s16(*v103.i8, 3), v103));
                  v39 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v102.i8, 3), v102), vaddq_s16(vdupq_lane_s16(*v101.i8, 3), v101)), v40);
                  v47 += v106;
                  v46 += vaddq_s16(vaddq_s16(v85, vaddq_s16(vdupq_lane_s16(*&v81, 3), v81)), v100).u16[7];
                  v45 += v39.u16[7];
                  result = (v49 + 64);
                  v49 += 32;
                }

                while (result <= v37);
                v48 = v37 & 0xFFFFFFE0;
              }

              else
              {
                v45 = 0;
                v46 = 0;
                v47 = 0;
                v48 = 0;
              }

              if ((v48 | 8) <= v37)
              {
                result = (v267 + v266[0]);
                do
                {
                  v39.i64[0] = *(v280[0] + v48);
                  v40.i64[0] = *(v281 + v280[0] + v48);
                  v108 = vzip1q_s8(v40, v39);
                  v109 = vaddq_s16(vshlq_n_s32(v108, 0x10uLL), v108);
                  v110 = vextq_s8(v109, v109, 0xCuLL);
                  v111 = vaddq_s16(v110, v109);
                  v112 = v111.u16[3];
                  v113 = v111.u16[7] + v47;
                  v111.i64[0] = *(v273[0] + v48);
                  v110.i64[0] = *(v274 + v273[0] + v48);
                  v114 = vzip1q_s8(v110, v111);
                  v115 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                  v116 = vextq_s8(v115, v115, 0xCuLL);
                  v117 = vaddq_s16(v116, v115);
                  v47 = v113 + v112;
                  v118 = v117.u16[3];
                  v117.i64[0] = *(v266[0] + v48);
                  v46 += v117.u16[7] + v118;
                  v116.i64[0] = *(result + v48);
                  v119 = vzip1q_s8(v116, v117);
                  v120 = vaddq_s16(vshlq_n_s32(v119, 0x10uLL), v119);
                  v40 = vextq_s8(v120, v120, 0xCuLL);
                  v39 = vaddq_s16(v40, v120);
                  v45 += v39.u16[7] + v39.u16[3];
                  v107 = v48 + 8;
                  v121 = v48 + 16;
                  v48 += 8;
                }

                while (v121 <= v37);
              }

              else
              {
                v107 = v48;
              }

              v122 = v37 - v107;
              if (v37 > v107)
              {
                v123 = (v107 + v280[0] + v281);
                v124 = (v280[0] + v107);
                result = (v107 + v273[0] + v274);
                v125 = (v273[0] + v107);
                v126 = (v107 + v266[0] + v267);
                v127 = (v266[0] + v107);
                do
                {
                  v129 = *v124++;
                  v128 = v129;
                  v130 = *v123++;
                  v131 = v130 | (v128 << 8);
                  v133 = *v125++;
                  v132 = v133;
                  v47 += v131;
                  v134 = *result;
                  result = (result + 1);
                  v135 = v134 | (v132 << 8);
                  v137 = *v127++;
                  v136 = v137;
                  v46 += v135;
                  v138 = *v126++;
                  v45 += v138 | (v136 << 8);
                  --v122;
                }

                while (v122);
                v107 = v37;
              }

              if (v107 + 32 <= v38)
              {
                v141 = v281 + v280[0];
                v142 = v274 + v273[0];
                v143 = v267 + v266[0];
                result = a11;
                do
                {
                  v145 = *(v42 + v107);
                  v144 = *(v42 + v107 + 16);
                  v147 = *(v141 + v107);
                  v146 = *(v141 + v107 + 16);
                  v148 = vzip2q_s8(v147, v145);
                  v149 = vzip2q_s8(v146, v144);
                  v150 = vzip1q_s8(v146, v144);
                  v151 = vzip1q_s8(v147, v145);
                  v152 = vaddq_s16(vshlq_n_s32(v148, 0x10uLL), v148);
                  v153 = vaddq_s16(vshlq_n_s32(v149, 0x10uLL), v149);
                  v154 = vaddq_s16(vshlq_n_s32(v150, 0x10uLL), v150);
                  v155 = vaddq_s16(vshlq_n_s32(v151, 0x10uLL), v151);
                  v156 = vaddq_s16(vandq_s8(vqtbl1q_s8(v155, xmmword_296B8F090), v41), v155);
                  v157 = vaddq_s16(vandq_s8(vqtbl1q_s8(v154, xmmword_296B8F090), v41), v154);
                  v158 = vaddq_s16(vandq_s8(vqtbl1q_s8(v153, xmmword_296B8F090), v41), v153);
                  v159 = vaddq_s16(vandq_s8(vqtbl1q_s8(v152, xmmword_296B8F090), v41), v152);
                  v160 = vdupq_n_s16(v47);
                  v162 = *(v43 + v107);
                  v161 = *(v43 + v107 + 16);
                  v164 = *(v142 + v107);
                  v163 = *(v142 + v107 + 16);
                  v165 = vzip2q_s8(v164, v162);
                  v166 = vzip2q_s8(v163, v161);
                  v167 = vzip1q_s8(v163, v161);
                  v168 = vzip1q_s8(v164, v162);
                  v169 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v159.i8, 3), xmmword_296B8F0A0), v159);
                  v170 = vaddq_s16(vshlq_n_s32(v165, 0x10uLL), v165);
                  v171 = vaddq_s16(vshlq_n_s32(v166, 0x10uLL), v166);
                  v172 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v158.i8, 3), xmmword_296B8F0A0), v158);
                  v173 = vaddq_s16(vshlq_n_s32(v167, 0x10uLL), v167);
                  v174 = vaddq_s16(vshlq_n_s32(v168, 0x10uLL), v168);
                  v175 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v157.i8, 3), xmmword_296B8F0A0), v157);
                  v176 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v156.i8, 3), xmmword_296B8F0A0), v156);
                  v177 = vaddq_s16(vandq_s8(vqtbl1q_s8(v174, xmmword_296B8F090), v41), v174);
                  v178 = vaddq_s16(vandq_s8(vqtbl1q_s8(v173, xmmword_296B8F090), v41), v173);
                  v179 = vaddq_s16(vandq_s8(vqtbl1q_s8(v171, xmmword_296B8F090), v41), v171);
                  v180 = vaddq_s16(vandq_s8(vqtbl1q_s8(v170, xmmword_296B8F090), v41), v170);
                  v181 = vdupq_laneq_s16(v176, 7);
                  v182 = vdupq_laneq_s16(v175, 7);
                  v183 = vaddq_s16(v175, v160);
                  v184 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v179.i8, 3), xmmword_296B8F0A0), v179);
                  v185 = vaddq_s16(v176, v160);
                  v186 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v178.i8, 3), xmmword_296B8F0A0), v178);
                  v187 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v177.i8, 3), xmmword_296B8F0A0), v177);
                  v188 = vdupq_laneq_s16(v187, 7);
                  v189 = vdupq_laneq_s16(v186, 7);
                  v190 = vdupq_n_s16(v46);
                  v191 = vaddq_s16(v186, v190);
                  v193 = *(v44 + v107);
                  v192 = *(v44 + v107 + 16);
                  v194 = vaddq_s16(v187, v190);
                  v196 = *(v143 + v107);
                  v195 = *(v143 + v107 + 16);
                  v197 = vzip2q_s8(v196, v193);
                  v198 = vaddq_s16(v182, v172);
                  v199 = vzip2q_s8(v195, v192);
                  v200 = vzip1q_s8(v195, v192);
                  v201 = vzip1q_s8(v196, v193);
                  v202 = vaddq_s16(v181, v169);
                  v203 = vaddq_s16(vshlq_n_s32(v197, 0x10uLL), v197);
                  v204 = vaddq_s16(vshlq_n_s32(v199, 0x10uLL), v199);
                  v205 = vaddq_s16(vshlq_n_s32(v200, 0x10uLL), v200);
                  v206 = vaddq_s16(v189, v184);
                  v207 = vaddq_s16(vshlq_n_s32(v201, 0x10uLL), v201);
                  v208 = vaddq_s16(v188, vaddq_s16(vandq_s8(vdupq_lane_s16(*v180.i8, 3), xmmword_296B8F0A0), v180));
                  v209 = vaddq_s16(vandq_s8(vqtbl1q_s8(v207, xmmword_296B8F090), v41), v207);
                  v210 = vdupq_laneq_s16(v202, 7);
                  v211 = vaddq_s16(vandq_s8(vqtbl1q_s8(v205, xmmword_296B8F090), v41), v205);
                  v212 = vaddq_s16(vandq_s8(vqtbl1q_s8(v203, xmmword_296B8F090), v41), v203);
                  v213 = vaddq_s16(v198, v160);
                  v214 = vaddq_s16(vandq_s8(vqtbl1q_s8(v204, xmmword_296B8F090), v41), v204);
                  v215 = vaddq_s16(v202, v160);
                  v216 = vdupq_laneq_s16(v208, 7);
                  v217 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v211.i8, 3), xmmword_296B8F0A0), v211);
                  v218 = vaddq_s16(v206, v190);
                  v219 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v209.i8, 3), xmmword_296B8F0A0), v209);
                  v220 = vaddq_s16(v208, v190);
                  v221 = vaddq_s16(vdupq_laneq_s16(v217, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v214.i8, 3), xmmword_296B8F0A0), v214));
                  v222 = vaddq_s16(vdupq_laneq_s16(v219, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v212.i8, 3), xmmword_296B8F0A0), v212));
                  v223 = vdupq_n_s16(v45);
                  v224 = vdupq_laneq_s16(v222, 7);
                  v225 = vaddq_s16(v221, v223);
                  v226 = vaddq_s16(v222, v223);
                  v227 = vaddq_s16(v217, v223);
                  v228 = vaddq_s16(v219, v223);
                  v292.val[0] = vzip2q_s16(v215, v226);
                  v229 = vaddq_s16(v213, v210);
                  v292.val[1] = vzip2q_s16(v220, v265);
                  v290.val[0] = vzip1q_s16(v215, v226);
                  v290.val[1] = vzip1q_s16(v220, v265);
                  v293.val[0] = vzip2q_s16(v185, v228);
                  v293.val[1] = vzip2q_s16(v194, v265);
                  v230 = vaddq_s16(v183, v210);
                  v140 = result + 128;
                  v231 = result + 32;
                  v232 = result + 48;
                  v233 = result + 64;
                  v234 = result + 80;
                  v235 = vaddq_s16(v218, v216);
                  v236 = result + 96;
                  v237 = result + 112;
                  v291.val[0] = vzip1q_s16(v185, v228);
                  v291.val[1] = vzip1q_s16(v194, v265);
                  v238 = vaddq_s16(v191, v216);
                  vst2q_s16(result, v291);
                  v239 = result + 16;
                  v240 = vaddq_s16(v225, v224);
                  vst2q_s16(v239, v293);
                  v47 = v229.u16[7];
                  vst2q_s16(v231, v290);
                  v46 = v235.u16[7];
                  vst2q_s16(v232, v292);
                  v45 = v240.u16[7];
                  v241 = vaddq_s16(v227, v224);
                  v289.val[0] = vzip2q_s16(v229, v240);
                  v289.val[1] = vzip2q_s16(v235, v265);
                  v139 = v107 + 32;
                  v242 = v107 + 64;
                  v290.val[0] = vzip1q_s16(v230, v241);
                  v107 += 32;
                  v290.val[1] = vzip1q_s16(v238, v265);
                  vst2q_s16(v233, v290);
                  v287.val[0] = vzip2q_s16(v230, v241);
                  v287.val[1] = vzip2q_s16(v238, v265);
                  vst2q_s16(v234, v287);
                  v39 = vzip1q_s16(v229, v240);
                  v40 = vzip1q_s16(v235, v265);
                  vst2q_s16(v236, *v39.i8);
                  vst2q_s16(v237, v289);
                  result = v140;
                }

                while (v242 <= v38);
              }

              else
              {
                v139 = v107;
                v140 = a11;
              }

              if (v139 + 8 <= v38)
              {
                v245 = v281 + v42;
                v246 = v274 + v43;
                result = (v267 + v44);
                do
                {
                  v39.i64[0] = *(v42 + v139);
                  v40.i64[0] = *(v245 + v139);
                  v247 = vzip1q_s8(v40, v39);
                  v248 = vaddq_s16(vshlq_n_s32(v247, 0x10uLL), v247);
                  v249 = vaddq_s16(vandq_s8(vqtbl1q_s8(v248, xmmword_296B8F090), v41), v248);
                  v250 = vandq_s8(vdupq_lane_s16(*v249.i8, 3), xmmword_296B8F0A0);
                  v251 = vdupq_n_s16(v47);
                  v39 = vaddq_s16(vaddq_s16(v249, v251), v250);
                  v47 = v39.u16[7];
                  v250.i64[0] = *(v43 + v139);
                  v251.i64[0] = *(v246 + v139);
                  v252 = vzip1q_s8(v251, v250);
                  v253 = vaddq_s16(vshlq_n_s32(v252, 0x10uLL), v252);
                  v254 = vaddq_s16(vandq_s8(vqtbl1q_s8(v253, xmmword_296B8F090), v41), v253);
                  v255 = vandq_s8(vdupq_lane_s16(*v254.i8, 3), xmmword_296B8F0A0);
                  v256 = vdupq_n_s16(v46);
                  v40 = vaddq_s16(vaddq_s16(v254, v256), v255);
                  v46 = v40.u16[7];
                  v255.i64[0] = *(v44 + v139);
                  v256.i64[0] = *(result + v139);
                  v257 = vzip1q_s8(v256, v255);
                  v258 = vaddq_s16(vshlq_n_s32(v257, 0x10uLL), v257);
                  v259 = vaddq_s16(vandq_s8(vqtbl1q_s8(v258, xmmword_296B8F090), v41), v258);
                  v260 = vaddq_s16(vaddq_s16(v259, vdupq_n_s16(v45)), vandq_s8(vdupq_lane_s16(*v259.i8, 3), xmmword_296B8F0A0));
                  v45 = v260.u16[7];
                  v288.val[0] = vzip1q_s16(v39, v260);
                  v288.val[1] = vzip1q_s16(v40, v265);
                  v244 = v140 + 32;
                  vst2q_s16(v140, v288);
                  v261 = v140 + 16;
                  v262 = vzip2q_s16(v39, v260);
                  v288.val[0] = vzip2q_s16(v40, v265);
                  vst2q_s16(v261, v288);
                  v243 = v139 + 8;
                  v263 = v139 + 16;
                  v139 += 8;
                  v140 = v244;
                }

                while (v263 <= v38);
              }

              else
              {
                v243 = v139;
                v244 = v140;
              }

              if (v243 < v38)
              {
                do
                {
                  v47 += *(v280[0] + v243 + v281) | (*(v280[0] + v243) << 8);
                  v46 += *(v273[0] + v243 + v274) | (*(v273[0] + v243) << 8);
                  v45 += *(v266[0] + v243 + v267) | (*(v266[0] + v243) << 8);
                  LOWORD(v264) = v47;
                  WORD1(v264) = v46;
                  WORD2(v264) = v45;
                  HIWORD(v264) = v33;
                  *v244 = v264;
                  v244 += 4;
                  ++v243;
                }

                while (v38 != v243);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v34 += a10;
      }

      while (v34 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v276 = 3;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v274 = v20.i32[0];
    v272 = v19;
    v270[1] = result;
    v273 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v271 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v275 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v270);
    v269 = 3;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v267 = v23.i32[0];
    v265 = v22;
    v263[1] = v17;
    v266 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v264 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v268 = v24;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v263);
    v262 = 3;
    v25 = *(a6 + 8);
    v26 = a3[3];
    v260 = v26.i32[0];
    v258 = v25;
    v256[1] = v17;
    v259 = a3[6].i32[1] + v26.i32[1] * v18;
    v27 = a3[7].u32[1];
    v257 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v261 = v27;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v256);
    if (*(*a7 + 24))
    {
      *v28.i32 = **a7;
    }

    else
    {
      v28.i32[0] = 2143289344;
    }

    v29 = a3[6].u32[1];
    if (a3[7].u32[0] + v29 < v18)
    {
      v31 = a3[3].i32[1] * *(a2 + 60);
      v32 = a3[5].u32[1];
      v33 = v32 + a9;
      v243 = v28.i32[0];
      v255 = vdupq_lane_s32(v28, 0);
      do
      {
        v273 = v31 + v29;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v270);
        v266 = v31 + v29;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v263);
        v259 = v31 + v29;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v256);
        v38 = 0uLL;
        v39 = v255;
        v40 = v270[0];
        if (v270[0])
        {
          v41 = v263[0];
          if (v263[0])
          {
            v42 = v256[0];
            if (v256[0])
            {
              if (v32 >= 0x20)
              {
                v52 = v270[0] + 2 * v271;
                v53 = v271 + v270[0];
                v54 = v263[0] + 2 * v264;
                v55 = v264 + v263[0];
                v56 = v256[0] + 2 * v257;
                v57 = v257 + v256[0];
                v46.i64[0] = 0;
                v58 = 32;
                v45.i64[0] = 0;
                v44.i64[0] = 0;
                v47 = xmmword_296B8F050;
                v48 = xmmword_296B8F0B0;
                v50 = xmmword_296B8F0D0;
                v49 = xmmword_296B8F070;
                v51 = xmmword_296B8F030;
                do
                {
                  v251 = *v44.i8;
                  v278.val[1] = *(v270[0] + v58 - 32);
                  v280.val[1] = *(v270[0] + v58 - 16);
                  v278.val[0] = *(v52 + v58 - 32);
                  v280.val[0] = *(v52 + v58 - 16);
                  v290.val[1] = vqtbl2q_s8(v278, v47);
                  v60 = *(v53 + v58 - 32);
                  v59 = *(v53 + v58 - 16);
                  v290.val[0] = vqtbl1q_s8(v60, v48);
                  v293.val[1] = vqtbl2q_s8(v280, v47);
                  v293.val[0] = vqtbl1q_s8(v59, v48);
                  v290.val[0] = vqtbl2q_s8(v290, xmmword_296B8F020);
                  v290.val[1] = vqtbl2q_s8(v293, xmmword_296B8F020);
                  v293.val[1] = vqtbl2q_s8(v280, xmmword_296B8F000);
                  v293.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0C0);
                  v295.val[1] = vqtbl2q_s8(v278, v49);
                  v295.val[0] = vqtbl1q_s8(v60, v50);
                  v293.val[0] = vqtbl2q_s8(v293, xmmword_296B8F020);
                  v293.val[1] = vqtbl2q_s8(v295, xmmword_296B8F020);
                  v295.val[1] = vqtbl2q_s8(v278, xmmword_296B8F000);
                  v295.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0C0);
                  v278.val[1] = vqtbl2q_s8(v278, v51);
                  v278.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0E0);
                  v61 = vqtbl2q_s8(v295, xmmword_296B8F020);
                  v295.val[0] = vqtbl2q_s8(v278, xmmword_296B8F020);
                  v278.val[1] = vqtbl2q_s8(v280, v49);
                  v278.val[0] = vqtbl1q_s8(v59, v50);
                  v280.val[1] = vqtbl2q_s8(v280, v51);
                  v280.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0E0);
                  v295.val[1] = vqtbl2q_s8(v278, xmmword_296B8F020);
                  v62 = vqtbl2q_s8(v280, xmmword_296B8F020);
                  v246 = vaddq_s32(vshlq_n_s64(v290.val[0], 0x20uLL), v290.val[0]);
                  v278.val[0] = vaddq_s32(vshlq_n_s64(v290.val[1], 0x20uLL), v290.val[1]);
                  v290.val[0] = vaddq_s32(vshlq_n_s64(v293.val[0], 0x20uLL), v293.val[0]);
                  v293.val[0] = vaddq_s32(vshlq_n_s64(v293.val[1], 0x20uLL), v293.val[1]);
                  v290.val[1] = vaddq_s32(vshlq_n_s64(v61, 0x20uLL), v61);
                  v280.val[1] = vaddq_s32(vshlq_n_s64(v295.val[0], 0x20uLL), v295.val[0]);
                  v63 = vaddq_s32(vshlq_n_s64(v62, 0x20uLL), v62);
                  v64 = vaddq_s32(vshlq_n_s64(v295.val[1], 0x20uLL), v295.val[1]);
                  v297.val[1] = *(v263[0] + v58 - 32);
                  v301.val[1] = *(v263[0] + v58 - 16);
                  v65 = *(v55 + v58 - 32);
                  v295.val[0] = *(v55 + v58 - 16);
                  v297.val[0] = *(v54 + v58 - 32);
                  v301.val[0] = *(v54 + v58 - 16);
                  v299.val[1] = vqtbl2q_s8(v297, v47);
                  v299.val[0] = vqtbl1q_s8(v65, v48);
                  v66 = vqtbl2q_s8(v299, xmmword_296B8F020);
                  v299.val[1] = vqtbl2q_s8(v301, v47);
                  v299.val[0] = vqtbl1q_s8(v295.val[0], v48);
                  v67 = vqtbl2q_s8(v299, xmmword_296B8F020);
                  v299.val[1] = vqtbl2q_s8(v301, xmmword_296B8F000);
                  v299.val[0] = vqtbl1q_s8(v295.val[0], xmmword_296B8F0C0);
                  v68 = vqtbl2q_s8(v299, xmmword_296B8F020);
                  v286.val[1] = vqtbl2q_s8(v297, xmmword_296B8F070);
                  v299.val[1] = vdupq_lane_s32(*v290.val[0].i8, 1);
                  v286.val[0] = vqtbl1q_s8(v65, xmmword_296B8F0D0);
                  v286.val[0] = vqtbl2q_s8(v286, xmmword_296B8F020);
                  v69 = vqtbl2q_s8(v297, xmmword_296B8F000);
                  v286.val[1] = vqtbl1q_s8(v65, xmmword_296B8F0C0);
                  v299.val[0] = vdupq_lane_s32(*v278.val[0].i8, 1);
                  v286.val[1] = vqtbl2q_s8(*(&v286 + 16), xmmword_296B8F020);
                  v297.val[1] = vqtbl2q_s8(v297, xmmword_296B8F030);
                  v297.val[0] = vqtbl1q_s8(v65, xmmword_296B8F0E0);
                  v70 = vqtbl2q_s8(v297, xmmword_296B8F020);
                  v297.val[0] = vdupq_lane_s32(*v246.i8, 1);
                  v287.val[1] = vqtbl2q_s8(v301, xmmword_296B8F070);
                  v287.val[0] = vqtbl1q_s8(v295.val[0], xmmword_296B8F0D0);
                  v287.val[0] = vqtbl2q_s8(v287, xmmword_296B8F020);
                  v301.val[1] = vqtbl2q_s8(v301, xmmword_296B8F030);
                  v297.val[0].i64[0] = 0;
                  v301.val[0] = vqtbl1q_s8(v295.val[0], xmmword_296B8F0E0);
                  v301.val[0] = vqtbl2q_s8(v301, xmmword_296B8F020);
                  v295.val[0] = vaddq_s32(vshlq_n_s64(v66, 0x20uLL), v66);
                  v299.val[0].i64[0] = 0;
                  v297.val[1] = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
                  v71 = vaddq_s32(vshlq_n_s64(v68, 0x20uLL), v68);
                  v299.val[1].i64[0] = 0;
                  v72 = vaddq_s32(vshlq_n_s64(v286.val[0], 0x20uLL), v286.val[0]);
                  v73 = vaddq_s32(vshlq_n_s64(v70, 0x20uLL), v70);
                  v301.val[0] = vaddq_s32(vshlq_n_s64(v301.val[0], 0x20uLL), v301.val[0]);
                  v74 = vaddq_s32(vdupq_lane_s32(*v290.val[1].i8, 1), v290.val[1]);
                  v75 = vaddq_s32(vshlq_n_s64(v287.val[0], 0x20uLL), v287.val[0]);
                  v290.val[1] = vaddq_s32(vdupq_lane_s32(*v64.i8, 1), v64);
                  v76 = vaddq_s32(vshlq_n_s64(v286.val[1], 0x20uLL), v286.val[1]);
                  v286.val[1] = vdupq_lane_s32(*v71.i8, 1);
                  v287.val[1] = vdupq_lane_s32(*v297.val[1].i8, 1);
                  v77 = vdupq_lane_s32(*v295.val[0].i8, 1);
                  v77.i64[0] = 0;
                  v287.val[1].i64[0] = 0;
                  v286.val[1].i64[0] = 0;
                  v290.val[0] = vaddq_s32(v299.val[1], v290.val[0]);
                  v280.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v280.val[1].i8, 1), v280.val[1]), v74);
                  v280.val[1] = vaddq_s32(vdupq_lane_s32(*v72.i8, 1), v72);
                  v293.val[1] = vaddq_s32(vdupq_lane_s32(*v76.i8, 1), v76);
                  v47 = xmmword_296B8F050;
                  v78 = vaddq_s32(vdupq_lane_s32(*v75.i8, 1), v75);
                  v299.val[0] = vaddq_s32(v299.val[0], v278.val[0]);
                  v299.val[1] = vaddq_s32(vdupq_lane_s32(*v301.val[0].i8, 1), v301.val[0]);
                  v249 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v73.i8, 1), v73), v293.val[1]);
                  v301.val[0] = *(v256[0] + v58 - 32);
                  v79 = *(v256[0] + v58 - 16);
                  v295.val[1] = vaddq_s32(v297.val[0], v246);
                  v80 = *(v57 + v58 - 32);
                  v297.val[0] = *(v57 + v58 - 16);
                  v81 = *(v56 + v58 - 32);
                  v301.val[1] = *(v56 + v58 - 16);
                  v293.val[1] = vaddq_s32(v286.val[1], v71);
                  v284.val[1] = vqtbl2q_s8(v301, xmmword_296B8F050);
                  v284.val[0] = vqtbl1q_s8(v80, xmmword_296B8F0B0);
                  v82 = vqtbl2q_s8(v284, xmmword_296B8F020);
                  v284.val[1] = vqtbl2q_s8(*(&v301 + 16), xmmword_296B8F050);
                  v297.val[1] = vaddq_s32(v287.val[1], v297.val[1]);
                  v48 = xmmword_296B8F0B0;
                  v284.val[0] = vqtbl1q_s8(v297.val[0], xmmword_296B8F0B0);
                  v278.val[0] = vqtbl2q_s8(v284, xmmword_296B8F020);
                  v284.val[1] = vqtbl2q_s8(*(&v301 + 16), xmmword_296B8F000);
                  v284.val[0] = vqtbl1q_s8(v297.val[0], xmmword_296B8F0C0);
                  v284.val[0] = vqtbl2q_s8(v284, xmmword_296B8F020);
                  v286.val[0] = vqtbl2q_s8(v301, xmmword_296B8F070);
                  v284.val[1] = vqtbl1q_s8(v80, xmmword_296B8F0D0);
                  v284.val[1] = vqtbl2q_s8(v286, xmmword_296B8F020);
                  v286.val[1] = vqtbl2q_s8(v301, xmmword_296B8F000);
                  v286.val[0] = vqtbl1q_s8(v80, xmmword_296B8F0C0);
                  v293.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v293.val[0].i8, 1), v293.val[0]), v295.val[1]);
                  v295.val[1] = vqtbl2q_s8(v286, xmmword_296B8F020);
                  v50 = xmmword_296B8F0D0;
                  v49 = xmmword_296B8F070;
                  v290.val[1] = vaddq_s32(vdupq_laneq_s32(v290.val[1], 3), v299.val[0]);
                  v301.val[0] = vqtbl2q_s8(v301, xmmword_296B8F030);
                  v83 = vqtbl1q_s8(v80, xmmword_296B8F0E0);
                  v51 = xmmword_296B8F030;
                  v299.val[0] = vqtbl2q_s8(v301, xmmword_296B8F020);
                  v301.val[0] = vqtbl2q_s8(*(&v301 + 16), xmmword_296B8F070);
                  v84 = vqtbl1q_s8(v297.val[0], xmmword_296B8F0D0);
                  v85 = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v63.i8, 1), v63), 3), v290.val[0]);
                  v290.val[0] = vqtbl2q_s8(v301, xmmword_296B8F020);
                  v280.val[1] = vaddq_s32(v280.val[1], vaddq_s32(v77, v295.val[0]));
                  v301.val[0] = vqtbl2q_s8(*(&v301 + 16), xmmword_296B8F030);
                  v86 = vqtbl1q_s8(v297.val[0], xmmword_296B8F0E0);
                  v295.val[0] = vqtbl2q_s8(v301, xmmword_296B8F020);
                  v87 = vaddq_s32(vdupq_laneq_s32(v78, 3), v297.val[1]);
                  v297.val[1] = vaddq_s32(vshlq_n_s64(v82, 0x20uLL), v82);
                  v301.val[0] = vaddq_s32(vshlq_n_s64(v284.val[0], 0x20uLL), v284.val[0]);
                  v295.val[1] = vaddq_s32(vshlq_n_s64(v295.val[1], 0x20uLL), v295.val[1]);
                  v290.val[0] = vaddq_s32(vshlq_n_s64(v290.val[0], 0x20uLL), v290.val[0]);
                  v88 = vaddq_s32(v85, v290.val[1]);
                  v290.val[1] = vaddq_s32(vshlq_n_s64(v295.val[0], 0x20uLL), v295.val[0]);
                  v280.val[0] = vaddq_s32(v293.val[0], v280.val[0]);
                  v293.val[0] = vaddq_s32(vshlq_n_s64(v299.val[0], 0x20uLL), v299.val[0]);
                  v89 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v299.val[1], 3), v293.val[1]), v87);
                  v293.val[1] = vaddq_s32(vshlq_n_s64(v284.val[1], 0x20uLL), v284.val[1]);
                  v90 = vdupq_lane_s32(*v301.val[0].i8, 1);
                  v278.val[1] = vaddq_s32(v280.val[1], v249);
                  v278.val[0] = vaddq_s32(vshlq_n_s64(v278.val[0], 0x20uLL), v278.val[0]);
                  v280.val[1] = vdupq_lane_s32(*v278.val[0].i8, 1);
                  v90.i64[0] = 0;
                  v91 = vdupq_lane_s32(*v297.val[1].i8, 1);
                  v280.val[1].i64[0] = 0;
                  v91.i64[0] = 0;
                  v46 = vaddq_s32(vaddq_s32(v88, v280.val[0]), vdupq_lane_s32(*v46.i8, 0));
                  v37 = vaddq_s32(vdupq_lane_s32(*v293.val[0].i8, 1), v293.val[0]);
                  v45 = vaddq_s32(vaddq_s32(v89, v278.val[1]), vdupq_lane_s32(*v45.i8, 0));
                  v36 = vaddq_s32(v37, vaddq_s32(vdupq_lane_s32(*v295.val[1].i8, 1), v295.val[1]));
                  v46.i32[0] = v46.i32[3];
                  v35 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v293.val[1].i8, 1), v293.val[1]), vaddq_s32(v91, v297.val[1])), v36);
                  v34 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v290.val[1].i8, 1), v290.val[1]), 3), vaddq_s32(v90, v301.val[0])), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v290.val[0].i8, 1), v290.val[0]), 3), vaddq_s32(v280.val[1], v278.val[0]))), v35);
                  v45.i32[0] = v45.i32[3];
                  v44 = vaddq_s32(v34, vdupq_lane_s32(v251, 0));
                  v58 += 32;
                  v44.i32[0] = v44.i32[3];
                }

                while (v58 <= v32);
                v43 = v32 & 0xFFFFFFE0;
                v39 = v255;
                v38 = 0uLL;
              }

              else
              {
                v43 = 0;
                v44.i64[0] = 0;
                v45.i64[0] = 0;
                v46.i64[0] = 0;
                v47 = xmmword_296B8F050;
                v48 = xmmword_296B8F0B0;
                v50 = xmmword_296B8F0D0;
                v49 = xmmword_296B8F070;
                v51 = xmmword_296B8F030;
              }

              v92 = xmmword_296B8F020;
              v93 = xmmword_296B8F0E0;
              if ((v43 | 8) <= v32)
              {
                do
                {
                  v34.i64[0] = *(v270[0] + v43);
                  v35.i64[0] = *(v271 + v270[0] + v43);
                  v36.i64[0] = *(v270[0] + 2 * v271 + v43);
                  v95 = vzip1q_s8(v38, v35);
                  v96 = vzip1q_s8(v36, v34);
                  v97 = vzip1q_s8(v95, v96);
                  v98 = vzip2q_s8(v95, v96);
                  v99 = vaddq_s32(vshlq_n_s64(v97, 0x20uLL), v97);
                  v100 = vaddq_s32(vshlq_n_s64(v98, 0x20uLL), v98);
                  v101 = vdupq_lane_s32(*v100.i8, 1);
                  v102 = vaddq_s32(v101, vaddq_s32(v100, vdupq_lane_s32(*v46.i8, 0)));
                  v102.i64[0] = *(v263[0] + v43);
                  v100.i64[0] = *(v264 + v263[0] + v43);
                  v103 = v102.i32[3] + vaddq_s32(vdupq_lane_s32(*&v99, 1), v99).i32[3];
                  v101.i64[0] = *(v263[0] + 2 * v264 + v43);
                  v104 = vzip1q_s8(v38, v100);
                  v105 = vzip1q_s8(v101, v102);
                  v106 = vzip1q_s8(v104, v105);
                  v107 = vzip2q_s8(v104, v105);
                  v46 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                  v108 = vdupq_lane_s32(*v46.i8, 1);
                  v109 = vaddq_s32(vshlq_n_s64(v106, 0x20uLL), v106);
                  v110 = vdupq_lane_s32(*v109.i8, 1);
                  v111 = vaddq_s32(v110, v109);
                  v45 = vaddq_s32(v108, vaddq_s32(v46, vdupq_lane_s32(*v45.i8, 0)));
                  v46.i32[0] = v103;
                  v108.i64[0] = *(v256[0] + v43);
                  v111.i64[0] = *(v257 + v256[0] + v43);
                  v45.i32[0] = v45.i32[3] + v111.i32[3];
                  v110.i64[0] = *(v256[0] + 2 * v257 + v43);
                  v112 = vzip1q_s8(v38, v111);
                  v113 = vzip1q_s8(v110, v108);
                  v114 = vzip1q_s8(v112, v113);
                  v115 = vzip2q_s8(v112, v113);
                  v34 = vaddq_s32(vshlq_n_s64(v115, 0x20uLL), v115);
                  v35 = vdupq_lane_s32(*v34.i8, 1);
                  v116 = vaddq_s32(vshlq_n_s64(v114, 0x20uLL), v114);
                  v36 = vaddq_s32(vdupq_lane_s32(*v116.i8, 1), v116);
                  v44 = vaddq_s32(v35, vaddq_s32(v34, vdupq_lane_s32(*v44.i8, 0)));
                  v44.i32[0] = v44.i32[3] + v36.i32[3];
                  v94 = v43 + 8;
                  v117 = v43 + 16;
                  v43 += 8;
                }

                while (v117 <= v32);
              }

              else
              {
                v94 = v43;
              }

              if (v94 <= v32)
              {
                v118 = v32;
              }

              else
              {
                v118 = v94;
              }

              if (v118 + 32 <= v33)
              {
                v121 = v270[0] + 2 * v271;
                v122 = v271 + v270[0];
                v123 = v263[0] + 2 * v264;
                v124 = v264 + v263[0];
                v125 = v256[0] + 2 * v257;
                v126 = v257 + v256[0];
                v127 = a11;
                do
                {
                  v291.val[1] = *(v40 + v118);
                  v291.val[0] = *(v121 + v118);
                  v254.val[0] = *(v121 + v118 + 16);
                  v254.val[1] = *(v40 + v118 + 16);
                  v282.val[1] = vqtbl2q_s8(v291, v49);
                  v128 = *(v122 + v118);
                  v253 = *(v122 + v118 + 16);
                  v282.val[0] = vqtbl1q_s8(v128, v50);
                  v282.val[0] = vqtbl2q_s8(v282, v92);
                  v294.val[1] = vqtbl2q_s8(v291, v51);
                  v294.val[0] = vqtbl1q_s8(v128, v93);
                  v296.val[1] = vqtbl2q_s8(v291, v47);
                  v296.val[0] = vqtbl1q_s8(v128, v48);
                  v282.val[1] = vqtbl2q_s8(v294, v92);
                  v129 = vqtbl2q_s8(v296, xmmword_296B8F020);
                  v294.val[0] = vaddq_s32(vshlq_n_s64(v282.val[1], 0x20uLL), v282.val[1]);
                  v294.val[1] = vaddq_s32(vshlq_n_s64(v129, 0x20uLL), v129);
                  v296.val[0] = vdupq_lane_s32(*v294.val[1].i8, 1);
                  v130 = vdupq_lane_s32(*v46.i8, 0);
                  v131 = vdupq_lane_s32(*v294.val[0].i8, 1);
                  v132 = vaddq_s32(vshlq_n_s64(v282.val[0], 0x20uLL), v282.val[0]);
                  v133 = *(v41 + v118);
                  v279.val[1] = *(v41 + v118 + 16);
                  v134 = vdupq_lane_s32(*v132.i8, 1);
                  v296.val[1] = *(v123 + v118);
                  v279.val[0] = *(v123 + v118 + 16);
                  v302.val[1] = vqtbl2q_s8(*(&v296 + 16), v49);
                  v134.i64[0] = 0;
                  v135 = *(v124 + v118);
                  v252 = *(v124 + v118 + 16);
                  v302.val[0] = vqtbl1q_s8(v135, v50);
                  v131.i64[0] = 0;
                  v302.val[0] = vqtbl2q_s8(v302, xmmword_296B8F020);
                  v136 = vqtbl2q_s8(*(&v296 + 16), v51);
                  v302.val[1] = vqtbl1q_s8(v135, v93);
                  v302.val[1] = vqtbl2q_s8(*(&v302 + 16), xmmword_296B8F020);
                  v296.val[0].i64[0] = 0;
                  v283.val[1] = vqtbl2q_s8(*(&v296 + 16), v47);
                  v283.val[0] = vqtbl1q_s8(v135, v48);
                  v283.val[0] = vqtbl2q_s8(v283, xmmword_296B8F020);
                  v137 = vaddq_s32(v296.val[0], v294.val[1]);
                  v294.val[1] = vaddq_s32(vshlq_n_s64(v302.val[0], 0x20uLL), v302.val[0]);
                  v296.val[0] = vaddq_s32(vshlq_n_s64(v283.val[0], 0x20uLL), v283.val[0]);
                  v283.val[0] = vdupq_lane_s32(*v296.val[0].i8, 1);
                  v138 = vaddq_s32(v131, v294.val[0]);
                  v302.val[0] = vaddq_s32(vshlq_n_s64(v302.val[1], 0x20uLL), v302.val[1]);
                  v294.val[0] = vdupq_lane_s32(*v294.val[1].i8, 1);
                  v294.val[0].i64[0] = 0;
                  v283.val[1] = vaddq_s32(v134, v132);
                  v283.val[0].i64[0] = 0;
                  v139 = vaddq_s32(v294.val[0], v294.val[1]);
                  v140 = vdupq_lane_s32(*v45.i8, 0);
                  v300.val[1] = *(v42 + v118);
                  v302.val[1] = *(v126 + v118);
                  v250 = *(v126 + v118 + 16);
                  v141 = vaddq_s32(vdupq_laneq_s32(v283.val[1], 3), v137);
                  v300.val[0] = *(v125 + v118);
                  v288.val[1] = vqtbl2q_s8(v300, xmmword_296B8F070);
                  v288.val[0] = vqtbl1q_s8(v302.val[1], xmmword_296B8F0D0);
                  v288.val[0] = vqtbl2q_s8(v288, xmmword_296B8F020);
                  v142 = vqtbl2q_s8(v300, xmmword_296B8F050);
                  v283.val[0] = vaddq_s32(vdupq_laneq_s32(v139, 3), vaddq_s32(v283.val[0], v296.val[0]));
                  v288.val[1] = vqtbl1q_s8(v302.val[1], xmmword_296B8F0B0);
                  v143 = vqtbl2q_s8(*(&v288 + 16), xmmword_296B8F020);
                  v144 = vdupq_lane_s32(*v302.val[0].i8, 1);
                  v288.val[0] = vaddq_s32(vshlq_n_s64(v288.val[0], 0x20uLL), v288.val[0]);
                  v145 = vaddq_s32(vshlq_n_s64(v143, 0x20uLL), v143);
                  v288.val[1] = vdupq_lane_s32(*v145.i8, 1);
                  v146 = vdupq_lane_s32(*v288.val[0].i8, 1);
                  v247 = *(v125 + v118 + 16);
                  v248 = *(v42 + v118 + 16);
                  v146.i64[0] = 0;
                  v288.val[1].i64[0] = 0;
                  v283.val[1] = vaddq_s32(v283.val[1], v130);
                  v147 = vaddq_s32(v139, v140);
                  v288.val[0] = vaddq_s32(v146, v288.val[0]);
                  v148 = vaddq_s32(vdupq_laneq_s32(v288.val[0], 3), vaddq_s32(v288.val[1], v145));
                  v294.val[1] = vdupq_lane_s32(*v44.i8, 0);
                  v288.val[0] = vaddq_s32(v288.val[0], v294.val[1]);
                  v288.val[1] = vzip2q_s32(v283.val[1], v288.val[0]);
                  v277.val[0] = vzip1q_s32(v283.val[1], v288.val[0]);
                  v149 = vzip2q_s32(v147, v255);
                  v277.val[1] = vzip1q_s32(v147, v255);
                  v150 = v127 + 16;
                  v151 = v127 + 24;
                  v152 = v127 + 32;
                  v153 = v127;
                  v244 = v130;
                  v282.val[1] = vaddq_s32(v141, v130);
                  vst2q_f32(v153, v277);
                  v153 += 8;
                  v277.val[0] = vaddq_s32(v283.val[0], v140);
                  v277.val[1] = vaddq_s32(v148, v294.val[1]);
                  vst2q_f32(v153, *(&v288 + 16));
                  v288.val[0] = vzip1q_s32(v282.val[1], v277.val[1]);
                  v288.val[1] = vzip1q_s32(v277.val[0], v255);
                  vst2q_f32(v150, v288);
                  v144.i64[0] = 0;
                  v288.val[0] = vaddq_s32(v144, v302.val[0]);
                  v285.val[1] = vqtbl2q_s8(v300, xmmword_296B8F030);
                  v288.val[1] = vdupq_laneq_s32(v141, 3);
                  v285.val[0] = vqtbl1q_s8(v302.val[1], xmmword_296B8F0E0);
                  v302.val[0] = vqtbl2q_s8(v285, xmmword_296B8F020);
                  v302.val[0] = vaddq_s32(vshlq_n_s64(v302.val[0], 0x20uLL), v302.val[0]);
                  v285.val[0] = vdupq_laneq_s32(v283.val[0], 3);
                  v154 = vdupq_lane_s32(*v302.val[0].i8, 1);
                  v154.i64[0] = 0;
                  v283.val[0] = vaddq_s32(v154, v302.val[0]);
                  v302.val[0] = vaddq_s32(vaddq_s32(v138, v130), v288.val[1]);
                  v283.val[1] = vdupq_laneq_s32(v148, 3);
                  v285.val[1] = vzip2q_s32(v282.val[1], v277.val[1]);
                  v155 = vzip2q_s32(v277.val[0], v255);
                  v156 = vaddq_s32(vaddq_s32(v288.val[0], v140), v285.val[0]);
                  vst2q_f32(v151, *(&v285 + 16));
                  v285.val[1] = vaddq_s32(vaddq_s32(v283.val[0], v294.val[1]), v283.val[1]);
                  v277.val[0] = vzip1q_s32(v302.val[0], v285.val[1]);
                  v277.val[1] = vzip1q_s32(v156, v255);
                  vst2q_f32(v152, v277);
                  v277.val[1] = vqtbl2q_s8(v254, xmmword_296B8F070);
                  v277.val[0] = vqtbl1q_s8(v253, xmmword_296B8F0D0);
                  v277.val[0] = vqtbl2q_s8(v277, xmmword_296B8F020);
                  v289.val[1] = vqtbl2q_s8(v254, xmmword_296B8F030);
                  v289.val[0] = vqtbl1q_s8(v253, xmmword_296B8F0E0);
                  v277.val[1] = vqtbl2q_s8(v289, xmmword_296B8F020);
                  v291.val[0] = vqtbl2q_s8(v291, xmmword_296B8F000);
                  v289.val[1] = vqtbl1q_s8(v128, xmmword_296B8F0C0);
                  v157 = vqtbl2q_s8(v254, xmmword_296B8F050);
                  v291.val[1] = vqtbl1q_s8(v253, xmmword_296B8F0B0);
                  v282.val[1] = vqtbl2q_s8(*(&v291 + 16), xmmword_296B8F020);
                  v289.val[1] = vqtbl2q_s8(v291, xmmword_296B8F020);
                  v291.val[1] = vaddq_s32(vshlq_n_s64(v277.val[0], 0x20uLL), v277.val[0]);
                  v277.val[0] = vaddq_s32(vshlq_n_s64(v277.val[1], 0x20uLL), v277.val[1]);
                  v277.val[1] = vaddq_s32(vshlq_n_s64(v289.val[1], 0x20uLL), v289.val[1]);
                  v289.val[1] = vdupq_lane_s32(*v277.val[1].f32, 1);
                  v289.val[1].i64[0] = 0;
                  v282.val[1] = vaddq_s32(vshlq_n_s64(v282.val[1], 0x20uLL), v282.val[1]);
                  v277.val[1] = vaddq_s32(v289.val[1], v277.val[1]);
                  v289.val[1] = vdupq_lane_s32(*v282.val[1].i8, 1);
                  v289.val[1].i64[0] = 0;
                  v158 = vaddq_s32(v289.val[1], v282.val[1]);
                  v282.val[1] = vdupq_lane_s32(*v277.val[0].f32, 1);
                  v282.val[1].i64[0] = 0;
                  v291.val[0] = vaddq_s32(v282.val[1], v277.val[0]);
                  v289.val[1] = vqtbl2q_s8(v279, xmmword_296B8F070);
                  v289.val[0] = vqtbl1q_s8(v252, xmmword_296B8F0D0);
                  v159 = vqtbl2q_s8(v289, xmmword_296B8F020);
                  v277.val[0] = vaddq_s32(vdupq_laneq_s32(v138, 3), v277.val[1]);
                  v160 = vqtbl2q_s8(*(&v296 + 16), xmmword_296B8F000);
                  v296.val[1] = vqtbl1q_s8(v135, xmmword_296B8F0C0);
                  v277.val[1] = vqtbl2q_s8(*(&v296 + 16), xmmword_296B8F020);
                  v277.val[1] = vaddq_s32(vshlq_n_s64(v277.val[1], 0x20uLL), v277.val[1]);
                  v296.val[1] = vaddq_s32(v277.val[0], v288.val[1]);
                  v48 = xmmword_296B8F0B0;
                  v277.val[0] = vdupq_lane_s32(*v277.val[1].f32, 1);
                  v277.val[0].i64[0] = 0;
                  v282.val[1] = vdupq_laneq_s32(v288.val[0], 3);
                  v47 = xmmword_296B8F050;
                  v277.val[0] = vaddq_s32(v282.val[1], vaddq_s32(v277.val[0], v277.val[1]));
                  v298.val[1] = vqtbl2q_s8(v300, xmmword_296B8F000);
                  v298.val[0] = vqtbl1q_s8(v302.val[1], xmmword_296B8F0C0);
                  v161 = v127 + 40;
                  v162 = v127 + 48;
                  v163 = v127 + 56;
                  v164 = v127 + 64;
                  v165 = v127 + 72;
                  v166 = v127 + 80;
                  v277.val[1] = vqtbl2q_s8(v298, xmmword_296B8F020);
                  v277.val[1] = vaddq_s32(vshlq_n_s64(v277.val[1], 0x20uLL), v277.val[1]);
                  v282.val[1] = vdupq_lane_s32(*v291.val[1].i8, 1);
                  v282.val[1].i64[0] = 0;
                  v277.val[0] = vaddq_s32(v277.val[0], v285.val[0]);
                  v289.val[1] = vdupq_lane_s32(*v277.val[1].f32, 1);
                  v289.val[1].i64[0] = 0;
                  v277.val[1] = vaddq_s32(v289.val[1], v277.val[1]);
                  v289.val[1] = vaddq_s32(v296.val[1], v130);
                  v298.val[1] = vaddq_s32(v277.val[0], v140);
                  v277.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v283.val[0], 3), v277.val[1]), v283.val[1]);
                  v167 = vaddq_s32(v277.val[1], v294.val[1]);
                  v300.val[0] = vzip2q_s32(v302.val[0], v285.val[1]);
                  v49 = xmmword_296B8F070;
                  v300.val[1] = vzip2q_s32(v156, v255);
                  vst2q_f32(v161, v300);
                  v300.val[0] = vzip1q_s32(v289.val[1], v167);
                  v300.val[1] = vzip1q_s32(v298.val[1], v255);
                  vst2q_f32(v162, v300);
                  v245 = v279;
                  v300.val[1] = vqtbl2q_s8(v279, xmmword_296B8F030);
                  v300.val[0] = vqtbl1q_s8(v252, xmmword_296B8F0E0);
                  v298.val[0] = vqtbl2q_s8(v300, xmmword_296B8F020);
                  v300.val[1] = vqtbl2q_s8(v279, xmmword_296B8F050);
                  v300.val[0] = vqtbl1q_s8(v252, xmmword_296B8F0B0);
                  v282.val[1] = vaddq_s32(v282.val[1], v291.val[1]);
                  v291.val[1] = vqtbl2q_s8(v300, xmmword_296B8F020);
                  v300.val[1] = vaddq_s32(vshlq_n_s64(v159, 0x20uLL), v159);
                  v50 = xmmword_296B8F0D0;
                  v298.val[0] = vaddq_s32(vshlq_n_s64(v298.val[0], 0x20uLL), v298.val[0]);
                  v291.val[1] = vaddq_s32(vshlq_n_s64(v291.val[1], 0x20uLL), v291.val[1]);
                  v300.val[0] = vdupq_lane_s32(*v291.val[1].i8, 1);
                  v302.val[0] = vaddq_s32(vdupq_laneq_s32(v282.val[1], 3), v158);
                  v168 = vdupq_lane_s32(*v300.val[1].i8, 1);
                  v168.i64[0] = 0;
                  v300.val[0].i64[0] = 0;
                  v300.val[0] = vaddq_s32(v300.val[0], v291.val[1]);
                  v300.val[1] = vaddq_s32(v168, v300.val[1]);
                  v169 = v247;
                  v279.val[0] = v248;
                  v170 = vqtbl2q_s8(v279, xmmword_296B8F070);
                  v296.val[1] = vdupq_laneq_s32(v296.val[1], 3);
                  v291.val[1] = vqtbl1q_s8(v250, xmmword_296B8F0D0);
                  v291.val[1] = vqtbl2q_s8(*(&v291 + 16), xmmword_296B8F020);
                  v171 = vaddq_s32(vshlq_n_s64(v291.val[1], 0x20uLL), v291.val[1]);
                  v291.val[1] = vdupq_laneq_s32(v277.val[0], 3);
                  v277.val[0] = vdupq_lane_s32(*v171.i8, 1);
                  v277.val[0].i64[0] = 0;
                  v277.val[0] = vaddq_s32(v277.val[0], v171);
                  v282.val[1] = vaddq_s32(vaddq_s32(v282.val[1], v244), v296.val[1]);
                  v37 = vdupq_laneq_s32(v277.val[1], 3);
                  v283.val[0] = vzip2q_s32(v289.val[1], v167);
                  v283.val[1] = vzip2q_s32(v298.val[1], v255);
                  v277.val[1] = vaddq_s32(vaddq_s32(v300.val[1], v140), v291.val[1]);
                  vst2q_f32(v163, v283);
                  v289.val[1] = vaddq_s32(vaddq_s32(v277.val[0], v294.val[1]), v37);
                  v298.val[1] = vzip1q_s32(v282.val[1], v289.val[1]);
                  v172 = vzip1q_s32(v277.val[1], v255);
                  vst2q_f32(v164, *(&v298 + 16));
                  v298.val[1] = vaddq_s32(vdupq_laneq_s32(v300.val[1], 3), v300.val[0]);
                  v300.val[0] = vqtbl2q_s8(v279, xmmword_296B8F050);
                  v283.val[1] = v247;
                  v285.val[0] = v248;
                  v300.val[1] = vdupq_lane_s32(*v298.val[0].i8, 1);
                  v173 = vqtbl1q_s8(v250, xmmword_296B8F0B0);
                  v174 = vqtbl2q_s8(v300, xmmword_296B8F020);
                  v175 = vaddq_s32(vshlq_n_s64(v174, 0x20uLL), v174);
                  v300.val[0] = vdupq_lane_s32(*v175.i8, 1);
                  v176 = v127 + 88;
                  v300.val[0].i64[0] = 0;
                  v177 = vaddq_s32(v300.val[0], v175);
                  v300.val[0] = vdupq_laneq_s32(v302.val[0], 3);
                  v178 = v127 + 96;
                  v300.val[1].i64[0] = 0;
                  v302.val[0] = vaddq_s32(vaddq_s32(v302.val[0], v244), v296.val[1]);
                  v277.val[0] = vaddq_s32(vdupq_laneq_s32(v277.val[0], 3), v177);
                  v179 = vaddq_s32(vaddq_s32(v298.val[1], v140), v291.val[1]);
                  v302.val[1] = vzip2q_s32(v282.val[1], v289.val[1]);
                  v180 = vzip2q_s32(v277.val[1], v255);
                  v277.val[1] = vaddq_s32(vaddq_s32(v277.val[0], v294.val[1]), v37);
                  vst2q_f32(v165, *(&v302 + 16));
                  v302.val[1] = vzip1q_s32(v302.val[0], v277.val[1]);
                  v181 = vzip1q_s32(v179, v255);
                  vst2q_f32(v166, *(&v302 + 16));
                  v282.val[1] = vaddq_s32(v300.val[1], v298.val[0]);
                  v289.val[1] = vdupq_laneq_s32(v298.val[1], 3);
                  v298.val[1] = vqtbl2q_s8(*(&v283 + 16), xmmword_296B8F030);
                  v298.val[0] = vqtbl1q_s8(v250, xmmword_296B8F0E0);
                  v298.val[0] = vqtbl2q_s8(v298, xmmword_296B8F020);
                  v298.val[0] = vaddq_s32(vshlq_n_s64(v298.val[0], 0x20uLL), v298.val[0]);
                  v298.val[1] = vdupq_lane_s32(*v298.val[0].i8, 1);
                  v298.val[1].i64[0] = 0;
                  v298.val[0] = vaddq_s32(v298.val[1], v298.val[0]);
                  v300.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v291.val[0], v300.val[0]), v244), v296.val[1]);
                  v277.val[0] = vdupq_laneq_s32(v277.val[0], 3);
                  v302.val[0] = vzip2q_s32(v302.val[0], v277.val[1]);
                  v302.val[1] = vzip2q_s32(v179, v255);
                  v298.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v282.val[1], v289.val[1]), v140), v291.val[1]);
                  v277.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v298.val[0], v277.val[0]), v294.val[1]), v37);
                  vst2q_f32(v176, v302);
                  v302.val[0] = vzip1q_s32(v300.val[1], v277.val[1]);
                  v302.val[1] = vzip1q_s32(v298.val[1], v255);
                  vst2q_f32(v178, v302);
                  v182 = v254.val[0];
                  v279.val[0] = v254.val[1];
                  v279.val[1] = vqtbl2q_s8(v279, xmmword_296B8F000);
                  v279.val[0] = vqtbl1q_s8(v253, xmmword_296B8F0C0);
                  v279.val[0] = vqtbl2q_s8(v279, xmmword_296B8F020);
                  v279.val[0] = vaddq_s32(vshlq_n_s64(v279.val[0], 0x20uLL), v279.val[0]);
                  v279.val[1] = vdupq_lane_s32(*v279.val[0].i8, 1);
                  v279.val[1].i64[0] = 0;
                  v279.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v291.val[0], 3), vaddq_s32(v279.val[1], v279.val[0])), v300.val[0]);
                  v183 = v245.val[0];
                  v300.val[0] = v245.val[1];
                  v300.val[0] = vqtbl2q_s8(v300, xmmword_296B8F000);
                  v184 = vqtbl1q_s8(v252, xmmword_296B8F0C0);
                  v279.val[1] = vqtbl2q_s8(v300, xmmword_296B8F020);
                  v279.val[1] = vaddq_s32(vshlq_n_s64(v279.val[1], 0x20uLL), v279.val[1]);
                  v291.val[0] = vdupq_lane_s32(*v279.val[1].i8, 1);
                  v185 = vaddq_s32(v279.val[0], v244);
                  v51 = xmmword_296B8F030;
                  v291.val[0].i64[0] = 0;
                  v279.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v282.val[1], 3), vaddq_s32(v291.val[0], v279.val[1])), v289.val[1]);
                  v291.val[0] = vqtbl2q_s8(*(&v283 + 16), xmmword_296B8F000);
                  v93 = xmmword_296B8F0E0;
                  v39 = v255;
                  v289.val[1] = vqtbl1q_s8(v250, xmmword_296B8F0C0);
                  v279.val[1] = vqtbl2q_s8(v291, xmmword_296B8F020);
                  v92 = xmmword_296B8F020;
                  v34 = vaddq_s32(v185, v296.val[1]);
                  v279.val[1] = vaddq_s32(vshlq_n_s64(v279.val[1], 0x20uLL), v279.val[1]);
                  v282.val[1] = vdupq_lane_s32(*v279.val[1].i8, 1);
                  v282.val[1].i64[0] = 0;
                  v186 = vaddq_s32(v279.val[0], v140);
                  v35 = vaddq_s32(vdupq_laneq_s32(v298.val[0], 3), vaddq_s32(v282.val[1], v279.val[1]));
                  v36 = vaddq_s32(v186, v291.val[1]);
                  v44 = vaddq_s32(vaddq_s32(vaddq_s32(v35, v277.val[0]), v294.val[1]), v37);
                  v277.val[1] = vzip2q_s32(v300.val[1], v277.val[1]);
                  v187 = vzip2q_s32(v298.val[1], v255);
                  v188 = v127 + 104;
                  v189 = v127 + 112;
                  v190 = v127 + 120;
                  vst2q_f32(v188, *(&v277 + 16));
                  v277.val[1] = vzip1q_s32(v34, v44);
                  v191 = vzip1q_s32(v36, v255);
                  vst2q_f32(v189, *(&v277 + 16));
                  v45 = vzip2q_s32(v34, v44);
                  v46 = vzip2q_s32(v36, v255);
                  vst2q_f32(v190, *v45.i8);
                  v120 = v127 + 128;
                  v119 = v118 + 32;
                  v192 = v118 + 64;
                  v46.i32[0] = v34.i32[3];
                  v118 += 32;
                  v45.i32[0] = v36.i32[3];
                  v127 += 128;
                  v44.i32[0] = v44.i32[3];
                }

                while (v192 <= v33);
              }

              else
              {
                v119 = v118;
                v120 = a11;
              }

              if (v119 + 8 <= v33)
              {
                v194 = v40 + 2 * v271;
                v195 = v271 + v40;
                v196 = v41 + 2 * v264;
                v197 = v264 + v41;
                v198 = v42 + 2 * v257;
                v199 = v257 + v42;
                do
                {
                  v34.i64[0] = *(v40 + v119);
                  v35.i64[0] = *(v195 + v119);
                  v36.i64[0] = *(v194 + v119);
                  v200 = vzip1q_s8(0, v35);
                  v201 = vzip1q_s8(v36, v34);
                  v202 = vzip1q_s8(v200, v201);
                  v203 = vzip2q_s8(v200, v201);
                  v204 = vshlq_n_s64(v203, 0x20uLL);
                  v205 = vshlq_n_s64(v202, 0x20uLL);
                  v206 = vaddq_s32(v205, v202);
                  v207 = vdupq_lane_s32(*v46.i8, 0);
                  v208 = vaddq_s32(v204, v203);
                  v204.i64[0] = *(v41 + v119);
                  v205.i64[0] = *(v197 + v119);
                  v209 = vdupq_lane_s32(*v208.i8, 1);
                  v92.i64[0] = *(v196 + v119);
                  v210 = vzip1q_s8(0, v205);
                  v211 = vzip1q_s8(v92, v204);
                  v212 = vdupq_lane_s32(*v206.i8, 1);
                  v213 = vzip1q_s8(v210, v211);
                  v214 = vzip2q_s8(v210, v211);
                  v212.i64[0] = 0;
                  v215 = vaddq_s32(vshlq_n_s64(v213, 0x20uLL), v213);
                  v216 = vaddq_s32(vshlq_n_s64(v214, 0x20uLL), v214);
                  v217 = vdupq_lane_s32(*v216.i8, 1);
                  v209.i64[0] = 0;
                  v218 = vdupq_lane_s32(*v215.i8, 1);
                  v218.i64[0] = 0;
                  v217.i64[0] = 0;
                  v219 = vdupq_lane_s32(*v45.i8, 0);
                  v37.i64[0] = *(v42 + v119);
                  v220 = vaddq_s32(v212, v206);
                  v221 = vaddq_s32(v209, vaddq_s32(v208, v207));
                  v209.i64[0] = *(v199 + v119);
                  v212.i64[0] = *(v198 + v119);
                  v222 = vaddq_s32(v218, v215);
                  v223 = vzip1q_s8(0, v209);
                  v224 = vzip1q_s8(v212, v37);
                  v225 = vzip1q_s8(v223, v224);
                  v37 = vdupq_laneq_s32(v220, 3);
                  v226 = vzip2q_s8(v223, v224);
                  v227 = vaddq_s32(vshlq_n_s64(v225, 0x20uLL), v225);
                  v228 = vaddq_s32(vshlq_n_s64(v226, 0x20uLL), v226);
                  v46 = vaddq_s32(v220, v207);
                  v229 = vdupq_lane_s32(*v228.i8, 1);
                  v230 = vdupq_lane_s32(*v227.i8, 1);
                  v231 = vdupq_laneq_s32(v222, 3);
                  v232 = vaddq_s32(v217, vaddq_s32(v216, v219));
                  v230.i64[0] = 0;
                  v229.i64[0] = 0;
                  v45 = vaddq_s32(v222, v219);
                  v233 = vaddq_s32(v230, v227);
                  v92 = vdupq_laneq_s32(v233, 3);
                  v234 = vdupq_lane_s32(*v44.i8, 0);
                  v34 = vaddq_s32(v221, v37);
                  v235 = vaddq_s32(v233, v234);
                  v236 = vaddq_s32(v229, vaddq_s32(v228, v234));
                  v292.val[0] = vzip2q_s32(v46, v235);
                  v281.val[0] = vzip1q_s32(v46, v235);
                  v35 = vaddq_s32(v232, v231);
                  v281.val[1] = vzip1q_s32(v45, v39);
                  v193 = v120 + 32;
                  v237 = v120 + 16;
                  v238 = v120 + 24;
                  v44 = vaddq_s32(v236, v92);
                  vst2q_f32(v120, v281);
                  v239 = v120 + 8;
                  v46.i32[0] = v34.i32[3];
                  v292.val[1] = vzip2q_s32(v45, v39);
                  vst2q_f32(v239, v292);
                  v45.i32[0] = v35.i32[3];
                  v281.val[0] = vzip1q_s32(v34, v44);
                  v281.val[1] = vzip1q_s32(v35, v39);
                  vst2q_f32(v237, v281);
                  v36 = vzip2q_s32(v34, v44);
                  v281.val[1] = vzip2q_s32(v35, v39);
                  vst2q_f32(v238, *v36.i8);
                  v44.i32[0] = v44.i32[3];
                  result = v119 + 8;
                  v240 = v119 + 16;
                  v119 += 8;
                  v120 = v193;
                }

                while (v240 <= v33);
              }

              else
              {
                result = v119;
                v193 = v120;
              }

              if (result < v33)
              {
                v241 = v44.i32[0];
                do
                {
                  LODWORD(v242) = ((*(v270[0] + result) << 24) | (*(v270[0] + result + v271) << 16) | (*(v270[0] + result + 2 * v271) << 8)) + v46.i32[0];
                  DWORD1(v242) = ((*(v263[0] + result) << 24) | (*(v263[0] + result + v264) << 16) | (*(v263[0] + result + 2 * v264) << 8)) + v45.i32[0];
                  DWORD2(v242) = ((*(v256[0] + result) << 24) | (*(v256[0] + result + v257) << 16) | (*(v256[0] + result + 2 * v257) << 8)) + v241;
                  HIDWORD(v242) = v243;
                  *v193 = v242;
                  v193 += 4;
                  ++result;
                }

                while (v33 != result);
              }
            }
          }
        }

        a11 = (a11 + a12);
        v29 += a10;
      }

      while (v29 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    if (*(*a4 + 24))
    {
      v14 = **a4;
    }

    v17 = HIDWORD(*(a2 + 56));
    if (*(*a5 + 24))
    {
      v12 = **a5;
    }

    if (*(*a6 + 24))
    {
      v13 = **a6;
    }

    v131 = 4;
    v18 = *(a7 + 8);
    v19 = a3[3];
    v129 = v19.i32[0];
    v127 = v18;
    v125[1] = result;
    v128 = a3[6].i32[1] + v19.i32[1] * v17;
    v20 = a3[7].u32[1];
    v126 = vmin_u32(vmls_s32(*(*(*&v18[5] + 8 * v20) + 16), v18[6], v19), v18[6]).u32[0];
    v130 = v20;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v125);
    v23 = a3[6].u32[1];
    if (a3[7].u32[0] + v23 < v17)
    {
      v25 = a3[3].i32[1] * *(a2 + 60);
      v26 = a3[5].u32[1];
      *&v21 = __PAIR64__(v12, v14);
      v27.i64[0] = __PAIR64__(v13, v14);
      v27.i64[1] = __PAIR64__(v13, v14);
      v28 = v26 + a9;
      DWORD2(v21) = v13;
      v121 = v21;
      v122 = vdupq_n_s32(v12);
      do
      {
        v123 = v27;
        v124 = v22;
        v128 = v25 + v23;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v125);
        v27 = v123;
        v22 = v124;
        v33 = v125[0];
        if (v125[0])
        {
          if (v26 >= 0x20)
          {
            v45 = 0;
            v34 = 0;
            v46 = v126 + v125[0];
            v47 = v126 + v125[0] + 2 * v126;
            v48 = v125[0] + 2 * v126;
            v37 = xmmword_296B8F010;
            v36 = xmmword_296B8F000;
            v39 = xmmword_296B8F030;
            v38 = xmmword_296B8F020;
            v41 = xmmword_296B8F050;
            v40 = xmmword_296B8F040;
            v43 = xmmword_296B8F070;
            v42 = xmmword_296B8F060;
            v44 = xmmword_296B8F080;
            do
            {
              v135.val[1] = *(v125[0] + v45);
              v132.val[1] = *(v125[0] + v45 + 16);
              v139.val[1] = *(v46 + v45);
              v137.val[1] = *(v46 + v45 + 16);
              v135.val[0] = *(v48 + v45);
              v132.val[0] = *(v48 + v45 + 16);
              v139.val[0] = *(v47 + v45);
              v137.val[0] = *(v47 + v45 + 16);
              v141.val[1] = vqtbl2q_s8(v132, xmmword_296B8F000);
              v141.val[0] = vqtbl2q_s8(v137, xmmword_296B8F010);
              v141.val[0] = vqtbl2q_s8(v141, xmmword_296B8F020);
              v49 = vqtbl2q_s8(v132, xmmword_296B8F030);
              v141.val[1] = vqtbl2q_s8(v137, xmmword_296B8F040);
              v143.val[1] = vqtbl2q_s8(v132, xmmword_296B8F050);
              v143.val[0] = vqtbl2q_s8(v137, xmmword_296B8F060);
              v141.val[1] = vqtbl2q_s8(*(&v141 + 16), xmmword_296B8F020);
              v50 = vqtbl2q_s8(v143, xmmword_296B8F020);
              v132.val[1] = vqtbl2q_s8(v132, xmmword_296B8F070);
              v132.val[0] = vqtbl2q_s8(v137, xmmword_296B8F080);
              v137.val[1] = vqtbl2q_s8(v135, xmmword_296B8F050);
              v137.val[0] = vqtbl2q_s8(v139, xmmword_296B8F060);
              v132.val[0] = vqtbl2q_s8(v132, xmmword_296B8F020);
              v132.val[1] = vqtbl2q_s8(v137, xmmword_296B8F020);
              v137.val[1] = vqtbl2q_s8(v135, xmmword_296B8F070);
              v137.val[0] = vqtbl2q_s8(v139, xmmword_296B8F080);
              v143.val[1] = vqtbl2q_s8(v135, xmmword_296B8F000);
              v143.val[0] = vqtbl2q_s8(v139, xmmword_296B8F010);
              v137.val[0] = vqtbl2q_s8(v137, xmmword_296B8F020);
              v137.val[1] = vqtbl2q_s8(v143, xmmword_296B8F020);
              v135.val[1] = vqtbl2q_s8(v135, xmmword_296B8F030);
              v135.val[0] = vqtbl2q_s8(v139, xmmword_296B8F040);
              v135.val[0] = vqtbl2q_s8(v135, xmmword_296B8F020);
              v141.val[0] = vaddq_s32(vshlq_n_s64(v141.val[0], 0x20uLL), v141.val[0]);
              v141.val[1] = vaddq_s32(vshlq_n_s64(v141.val[1], 0x20uLL), v141.val[1]);
              v51 = vaddq_s32(vshlq_n_s64(v50, 0x20uLL), v50);
              v132.val[0] = vaddq_s32(vshlq_n_s64(v132.val[0], 0x20uLL), v132.val[0]);
              v132.val[1] = vaddq_s32(vshlq_n_s64(v132.val[1], 0x20uLL), v132.val[1]);
              v137.val[0] = vaddq_s32(vshlq_n_s64(v137.val[0], 0x20uLL), v137.val[0]);
              v137.val[1] = vaddq_s32(vshlq_n_s64(v137.val[1], 0x20uLL), v137.val[1]);
              v135.val[0] = vaddq_s32(vshlq_n_s64(v135.val[0], 0x20uLL), v135.val[0]);
              v31 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v135.val[0].i8, 1), v135.val[0]), vaddq_s32(vdupq_lane_s32(*v137.val[1].i8, 1), v137.val[1]));
              v32 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v141.val[1].i8, 1), v141.val[1]), vaddq_s32(vdupq_lane_s32(*v141.val[0].i8, 1), v141.val[0]));
              v30 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v137.val[0].i8, 1), v137.val[0]), vaddq_s32(vdupq_lane_s32(*v132.val[1].i8, 1), v132.val[1])), v31);
              v29 = vaddq_s32(vaddq_s32(v32, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v132.val[0].i8, 1), v132.val[0]), vaddq_s32(vdupq_lane_s32(*v51.i8, 1), v51))), v30);
              v34 += v29.u32[3];
              v52 = v45 + 64;
              v45 += 32;
            }

            while (v52 <= v26);
            v35 = v26 & 0xFFFFFFE0;
          }

          else
          {
            v34 = 0;
            v35 = 0;
            v37 = xmmword_296B8F010;
            v36 = xmmword_296B8F000;
            v39 = xmmword_296B8F030;
            v38 = xmmword_296B8F020;
            v41 = xmmword_296B8F050;
            v40 = xmmword_296B8F040;
            v43 = xmmword_296B8F070;
            v42 = xmmword_296B8F060;
            v44 = xmmword_296B8F080;
          }

          if ((v35 | 8) <= v26)
          {
            do
            {
              v29.i64[0] = *(v125[0] + v35);
              v30.i64[0] = *(v126 + v125[0] + v35);
              v31.i64[0] = *(v125[0] + 2 * v126 + v35);
              v32.i64[0] = *(v126 + v125[0] + 2 * v126 + v35);
              v54 = vzip1q_s8(v32, v30);
              v55 = vzip1q_s8(v31, v29);
              v56 = vzip1q_s8(v54, v55);
              v57 = vzip2q_s8(v54, v55);
              v58 = vaddq_s32(vshlq_n_s64(v56, 0x20uLL), v56);
              v59 = vaddq_s32(vshlq_n_s64(v57, 0x20uLL), v57);
              v30 = vdupq_lane_s32(*v59.i8, 1);
              v32 = vdupq_lane_s32(*v58.i8, 1);
              v31 = vaddq_s32(v32, v58);
              v29 = vaddq_s32(v30, v59);
              v34 += v29.i32[3] + v31.i32[3];
              v53 = v35 + 8;
              v60 = v35 + 16;
              v35 += 8;
            }

            while (v60 <= v26);
          }

          else
          {
            v53 = v35;
          }

          v61 = v26 - v53;
          if (v26 > v53)
          {
            v62 = (v53 + v125[0]);
            v63 = &v62[2 * v126];
            v64 = &v62[v126];
            do
            {
              v65 = *v62++;
              v66 = v65 << 24;
              v67 = *v64++;
              v68 = v66 | (v67 << 16);
              v69 = *v63++;
              v34 += v68 | (v69 << 8) | v69;
              --v61;
            }

            while (v61);
            v53 = v26;
          }

          if (v53 + 32 <= v28)
          {
            v72 = v126 + v125[0];
            v73 = v126 + v125[0] + 2 * v126;
            v74 = v125[0] + 2 * v126;
            v75 = a11;
            do
            {
              v133.val[1] = *(v33 + v53);
              v136.val[1] = *(v33 + v53 + 16);
              v138.val[1] = *(v72 + v53);
              v140.val[1] = *(v72 + v53 + 16);
              v133.val[0] = *(v74 + v53);
              v136.val[0] = *(v74 + v53 + 16);
              v138.val[0] = *(v73 + v53);
              v140.val[0] = *(v73 + v53 + 16);
              v142.val[1] = vqtbl2q_s8(v133, v43);
              v142.val[0] = vqtbl2q_s8(v138, v44);
              v142.val[0] = vqtbl2q_s8(v142, v38);
              v76 = vqtbl2q_s8(v133, v39);
              v142.val[1] = vqtbl2q_s8(v138, v40);
              v144.val[1] = vqtbl2q_s8(v136, v43);
              v144.val[0] = vqtbl2q_s8(v140, v44);
              v142.val[1] = vqtbl2q_s8(*(&v142 + 16), v38);
              v77 = vqtbl2q_s8(v144, v38);
              v144.val[1] = vqtbl2q_s8(v136, v39);
              v144.val[0] = vqtbl2q_s8(v140, v40);
              v145.val[1] = vqtbl2q_s8(v136, v36);
              v145.val[0] = vqtbl2q_s8(v140, v37);
              v144.val[0] = vqtbl2q_s8(v144, v38);
              v144.val[1] = vqtbl2q_s8(v145, v38);
              v136.val[1] = vqtbl2q_s8(v136, v41);
              v136.val[0] = vqtbl2q_s8(v140, v42);
              v140.val[1] = vqtbl2q_s8(v133, v36);
              v140.val[0] = vqtbl2q_s8(v138, v37);
              v136.val[0] = vqtbl2q_s8(v136, v38);
              v136.val[1] = vqtbl2q_s8(v140, v38);
              v133.val[1] = vqtbl2q_s8(v133, v41);
              v133.val[0] = vqtbl2q_s8(v138, v42);
              v133.val[0] = vqtbl2q_s8(v133, v38);
              v142.val[0] = vaddq_s32(vshlq_n_s64(v142.val[0], 0x20uLL), v142.val[0]);
              v142.val[1] = vaddq_s32(vshlq_n_s64(v142.val[1], 0x20uLL), v142.val[1]);
              v78 = vaddq_s32(vshlq_n_s64(v77, 0x20uLL), v77);
              v140.val[1] = vaddq_s32(vshlq_n_s64(v144.val[0], 0x20uLL), v144.val[0]);
              v140.val[0] = vaddq_s32(vshlq_n_s64(v144.val[1], 0x20uLL), v144.val[1]);
              v136.val[0] = vaddq_s32(vshlq_n_s64(v136.val[0], 0x20uLL), v136.val[0]);
              v136.val[1] = vaddq_s32(vshlq_n_s64(v136.val[1], 0x20uLL), v136.val[1]);
              v133.val[0] = vaddq_s32(vshlq_n_s64(v133.val[0], 0x20uLL), v133.val[0]);
              v133.val[1] = vdupq_lane_s32(*v133.val[0].i8, 1);
              v138.val[0] = vdupq_lane_s32(*v136.val[1].i8, 1);
              v138.val[1] = vdupq_lane_s32(*v136.val[0].i8, 1);
              v144.val[0] = vdupq_lane_s32(*v140.val[0].i8, 1);
              v144.val[1] = vdupq_lane_s32(*v140.val[1].i8, 1);
              v145.val[0] = vdupq_lane_s32(*v78.i8, 1);
              v145.val[1] = vdupq_lane_s32(*v142.val[0].i8, 1);
              v133.val[1].i64[0] = 0;
              v133.val[1] = vaddq_s32(v133.val[1], v133.val[0]);
              v138.val[0].i64[0] = 0;
              v136.val[1] = vaddq_s32(v138.val[0], v136.val[1]);
              v138.val[0] = vdupq_lane_s32(*v142.val[1].i8, 1);
              v145.val[1].i64[0] = 0;
              v145.val[0].i64[0] = 0;
              v138.val[0].i64[0] = 0;
              v144.val[1].i64[0] = 0;
              v144.val[0].i64[0] = 0;
              v138.val[1].i64[0] = 0;
              v136.val[0] = vaddq_s32(v138.val[1], v136.val[0]);
              v138.val[1] = vaddq_s32(v144.val[0], v140.val[0]);
              v133.val[0] = vaddq_s32(v144.val[1], v140.val[1]);
              v140.val[0] = vaddq_s32(v145.val[0], v78);
              v79 = vaddq_s32(v145.val[1], v142.val[0]);
              v142.val[0] = vaddq_s32(v138.val[0], v142.val[1]);
              v138.val[0] = vaddq_s32(vdupq_laneq_s32(v140.val[0], 3), v136.val[0]);
              v144.val[0] = vaddq_s32(vdupq_laneq_s32(v79, 3), v133.val[1]);
              v142.val[1] = vdupq_laneq_s32(v144.val[0], 3);
              v140.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v142.val[0], 3), v136.val[1]), v142.val[1]);
              v136.val[1] = vdupq_laneq_s32(v138.val[0], 3);
              v133.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v133.val[0], 3), v138.val[1]), v136.val[1]);
              v136.val[0] = vdupq_laneq_s32(v140.val[1], 3);
              v138.val[1] = vdupq_n_s32(v34);
              v30 = vaddq_s32(vaddq_s32(v133.val[1], v138.val[1]), v136.val[0]);
              v144.val[0] = vaddq_s32(v144.val[0], v138.val[1]);
              v80 = vaddq_s32(v79, v138.val[1]);
              v22 = vzip2q_s32(v122, v30);
              v145.val[0] = vzip1q_s32(v122, v80);
              v81 = v75 + 16;
              v144.val[1] = v123;
              v82 = v75;
              vst2q_f32(v82, *(&v144 + 16));
              v82 += 8;
              v145.val[0] = vzip1q_s32(v122, v144.val[0]);
              v144.val[1] = v123;
              vst2q_f32(v81, *(&v144 + 16));
              v83 = v75 + 24;
              v84 = v75 + 32;
              v142.val[0] = vaddq_s32(vaddq_s32(v142.val[0], v138.val[1]), v142.val[1]);
              v144.val[1] = vzip2q_s32(v122, v144.val[0]);
              v144.val[0] = v123;
              vst2q_f32(v83, v144);
              v144.val[1] = vzip1q_s32(v122, v142.val[0]);
              v144.val[0] = v123;
              vst2q_f32(v84, v144);
              v85 = v75 + 40;
              v86 = v75 + 48;
              v140.val[1] = vaddq_s32(v140.val[1], v138.val[1]);
              v142.val[1] = vzip2q_s32(v122, v142.val[0]);
              v142.val[0] = v123;
              vst2q_f32(v85, v142);
              v142.val[1] = vzip1q_s32(v122, v140.val[1]);
              v142.val[0] = v123;
              vst2q_f32(v86, v142);
              v142.val[1] = vzip2q_s32(v122, v80);
              v142.val[0] = v123;
              vst2q_f32(v82, v142);
              v87 = v75 + 56;
              v88 = v75 + 64;
              v140.val[0] = vaddq_s32(vaddq_s32(v140.val[0], v138.val[1]), v136.val[0]);
              v142.val[1] = vzip2q_s32(v122, v140.val[1]);
              v142.val[0] = v123;
              vst2q_f32(v87, v142);
              v142.val[1] = vzip1q_s32(v122, v140.val[0]);
              v142.val[0] = v123;
              vst2q_f32(v88, v142);
              v89 = v75 + 72;
              v90 = v75 + 80;
              v138.val[0] = vaddq_s32(vaddq_s32(v138.val[0], v138.val[1]), v136.val[0]);
              v140.val[1] = vzip2q_s32(v122, v140.val[0]);
              v140.val[0] = v123;
              vst2q_f32(v89, v140);
              v140.val[1] = vzip1q_s32(v122, v138.val[0]);
              v140.val[0] = v123;
              vst2q_f32(v90, v140);
              v91 = v75 + 88;
              v92 = v75 + 96;
              v29 = vaddq_s32(vaddq_s32(vaddq_s32(v133.val[0], v136.val[1]), v138.val[1]), v136.val[0]);
              v136.val[1] = vzip2q_s32(v122, v138.val[0]);
              v136.val[0] = v123;
              vst2q_f32(v91, v136);
              v136.val[1] = vzip1q_s32(v122, v29);
              v136.val[0] = v123;
              vst2q_f32(v92, v136);
              v93 = v75 + 104;
              v94 = v75 + 112;
              v136.val[1] = vzip2q_s32(v122, v29);
              v136.val[0] = v123;
              vst2q_f32(v93, v136);
              v32 = vzip1q_s32(v122, v30);
              v31 = v123;
              vst2q_f32(v94, *v31.i8);
              v34 = v30.u32[3];
              v95 = v75 + 120;
              vst2q_f32(v95, *(&v22 - 1));
              v71 = v75 + 128;
              v70 = v53 + 32;
              v96 = v53 + 64;
              v53 += 32;
              v75 += 128;
            }

            while (v96 <= v28);
          }

          else
          {
            v70 = v53;
            v71 = a11;
          }

          if (v70 + 8 <= v28)
          {
            v99 = v126 + v33;
            v100 = v126 + v33 + 2 * v126;
            v101 = v33 + 2 * v126;
            do
            {
              v29.i64[0] = *(v33 + v70);
              v30.i64[0] = *(v99 + v70);
              v31.i64[0] = *(v101 + v70);
              v32.i64[0] = *(v100 + v70);
              v102 = vzip1q_s8(v32, v30);
              v103 = vzip1q_s8(v31, v29);
              v104 = vzip1q_s8(v102, v103);
              v105 = vzip2q_s8(v102, v103);
              v106 = vaddq_s32(vshlq_n_s64(v104, 0x20uLL), v104);
              v107 = vaddq_s32(vshlq_n_s64(v105, 0x20uLL), v105);
              v108 = vdupq_lane_s32(*v107.i8, 1);
              v109 = vdupq_lane_s32(*v106.i8, 1);
              v109.i64[0] = 0;
              v108.i64[0] = 0;
              v110 = vaddq_s32(v109, v106);
              v111 = vdupq_laneq_s32(v110, 3);
              v112 = vdupq_n_s32(v34);
              v113 = vaddq_s32(v110, v112);
              v114 = vaddq_s32(vaddq_s32(v108, vaddq_s32(v107, v112)), v111);
              v34 = v114.u32[3];
              v115 = vzip1q_s32(v122, v113);
              v32 = v123;
              v116 = v71 + 16;
              v117 = v71 + 24;
              v118 = v71;
              vst2q_f32(v118, *v32.i8);
              v118 += 8;
              v134.val[1] = vzip2q_s32(v122, v113);
              v134.val[0] = v123;
              vst2q_f32(v118, v134);
              v31 = vzip1q_s32(v122, v114);
              v134.val[0] = v123;
              vst2q_f32(v116, *(&v31 - 1));
              v30 = vzip2q_s32(v122, v114);
              v29 = v123;
              vst2q_f32(v117, *v29.i8);
              v98 = v71 + 32;
              v97 = v70 + 8;
              v119 = v70 + 16;
              v70 += 8;
              v71 += 32;
            }

            while (v119 <= v28);
          }

          else
          {
            v97 = v70;
            v98 = v71;
          }

          if (v97 < v28)
          {
            do
            {
              v34 += (*(v125[0] + v97) << 24) | (*(v125[0] + v97 + v126) << 16) | (*(v125[0] + v97 + 2 * v126) << 8) | *(v125[0] + v97 + 2 * v126);
              v120 = v121;
              HIDWORD(v120) = v34;
              *v98 = v120;
              v98 += 4;
              ++v97;
            }

            while (v28 != v97);
          }
        }

        a11 = (a11 + a12);
        v23 += a10;
      }

      while (v23 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

__int16 *CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(__int16 *result, uint64_t a2, int32x2_t *a3, uint64_t **a4, uint64_t **a5, uint64_t **a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v14 = _D0;
    }

    else
    {
      v14 = 32256;
    }

    v20 = HIDWORD(*(a2 + 56));
    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v21 = _D0;
    }

    else
    {
      v21 = 32256;
    }

    if (*(*a6 + 24))
    {
      _D0 = **a6;
      __asm { FCVT            H0, D0 }

      v23 = _D0;
    }

    else
    {
      v23 = 32256;
    }

    v128 = 2;
    v25 = *(a7 + 8);
    v26 = a3[3];
    v126 = v26.i32[0];
    v124 = v25;
    v122[1] = result;
    v125 = a3[6].i32[1] + v26.i32[1] * v20;
    v27 = a3[7].u32[1];
    v123 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v127 = v27;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v122);
    v30 = a3[6].u32[1];
    if (a3[7].u32[0] + v30 < v20)
    {
      v32 = a3[3].i32[1] * *(a2 + 60);
      v33 = a3[5].u32[1];
      v34 = v33 + a9;
      v129.val[1] = vdupq_n_s16(v23);
      v129.val[0] = vdupq_n_s16(v14);
      v35 = vqtbl2q_s8(v129, xmmword_296B6EDD0);
      LOWORD(v29) = v14;
      WORD1(v29) = v21;
      WORD2(v29) = v23;
      v118 = v29;
      v119 = vdupq_n_s16(v21);
      do
      {
        v120 = v35;
        v121 = v28;
        v125 = v32 + v30;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v122);
        v38.i64[0] = 0xFFFFFFFF00000000;
        v38.i64[1] = 0xFFFFFFFF00000000;
        v35 = v120;
        v28 = v121;
        v39 = v122[0];
        if (v122[0])
        {
          if (v33 >= 0x20)
          {
            v42 = 0;
            v40 = 0;
            v43 = v123 + v122[0];
            do
            {
              v45 = *(v122[0] + v42);
              v44 = *(v122[0] + v42 + 16);
              v47 = *(v43 + v42);
              v46 = *(v43 + v42 + 16);
              v48 = vzip1q_s8(v47, v45);
              v49 = vzip2q_s8(v47, v45);
              v50 = vzip1q_s8(v46, v44);
              v51 = vzip2q_s8(v46, v44);
              v52 = vaddq_s16(vshlq_n_s32(v48, 0x10uLL), v48);
              v53 = vaddq_s16(vshlq_n_s32(v49, 0x10uLL), v49);
              v54 = vaddq_s16(vshlq_n_s32(v50, 0x10uLL), v50);
              v55 = vaddq_s16(vshlq_n_s32(v51, 0x10uLL), v51);
              v56 = vaddq_s16(vandq_s8(vqtbl1q_s8(v54, xmmword_296B8F090), v38), v54);
              v57 = vaddq_s16(vandq_s8(vqtbl1q_s8(v53, xmmword_296B8F090), v38), v53);
              v58 = vaddq_s16(vandq_s8(vqtbl1q_s8(v52, xmmword_296B8F090), v38), v52);
              v59 = vaddq_s16(vandq_s8(vqtbl1q_s8(v55, xmmword_296B8F090), v38), v55);
              v37 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v58.i8, 3), v58), vaddq_s16(vdupq_lane_s16(*v57.i8, 3), v57));
              v36 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v56.i8, 3), v56), vaddq_s16(vdupq_lane_s16(*v59.i8, 3), v59)), v37);
              v40 += v36.u16[7];
              v60 = v42 + 64;
              v42 += 32;
            }

            while (v60 <= v33);
            v41 = v33 & 0xFFFFFFE0;
          }

          else
          {
            v40 = 0;
            v41 = 0;
          }

          if ((v41 | 8) <= v33)
          {
            do
            {
              v36.i64[0] = *(v122[0] + v41);
              v37.i64[0] = *(v123 + v122[0] + v41);
              v62 = vzip1q_s8(v37, v36);
              v63 = vaddq_s16(vshlq_n_s32(v62, 0x10uLL), v62);
              v37 = vextq_s8(v63, v63, 0xCuLL);
              v36 = vaddq_s16(v37, v63);
              v40 += v36.u16[7] + v36.u16[3];
              v61 = v41 + 8;
              v64 = v41 + 16;
              v41 += 8;
            }

            while (v64 <= v33);
          }

          else
          {
            v61 = v41;
          }

          v65 = v33 - v61;
          if (v33 > v61)
          {
            v66 = (v61 + v122[0] + v123);
            v67 = (v122[0] + v61);
            do
            {
              v69 = *v67++;
              v68 = v69;
              v70 = *v66++;
              v40 += v70 | (v68 << 8);
              --v65;
            }

            while (v65);
            v61 = v33;
          }

          if (v61 + 32 <= v34)
          {
            v73 = v123 + v122[0];
            v74 = a11;
            do
            {
              v76 = *(v39 + v61);
              v75 = *(v39 + v61 + 16);
              v78 = *(v73 + v61);
              v77 = *(v73 + v61 + 16);
              v79 = vzip2q_s8(v78, v76);
              v80 = vzip2q_s8(v77, v75);
              v81 = vzip1q_s8(v78, v76);
              v82 = vzip1q_s8(v77, v75);
              v83 = vaddq_s16(vshlq_n_s32(v79, 0x10uLL), v79);
              v84 = vaddq_s16(vshlq_n_s32(v80, 0x10uLL), v80);
              v85 = vaddq_s16(vshlq_n_s32(v82, 0x10uLL), v82);
              v86 = vaddq_s16(vshlq_n_s32(v81, 0x10uLL), v81);
              v87 = vaddq_s16(vandq_s8(vqtbl1q_s8(v85, xmmword_296B8F090), v38), v85);
              v88 = vaddq_s16(vandq_s8(vqtbl1q_s8(v84, xmmword_296B8F090), v38), v84);
              v89 = vaddq_s16(vandq_s8(vqtbl1q_s8(v83, xmmword_296B8F090), v38), v83);
              v90 = vaddq_s16(vandq_s8(vqtbl1q_s8(v86, xmmword_296B8F090), v38), v86);
              v91 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v90.i8, 3), xmmword_296B8F0A0), v90);
              v92 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v87.i8, 3), xmmword_296B8F0A0), v87);
              v93 = vaddq_s16(vdupq_laneq_s16(v91, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v89.i8, 3), xmmword_296B8F0A0), v89));
              v94 = vdupq_laneq_s16(v93, 7);
              v95 = vdupq_n_s16(v40);
              v96 = vaddq_s16(v92, v95);
              v36 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v92, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v88.i8, 3), xmmword_296B8F0A0), v88)), v95), v94);
              v97 = vaddq_s16(v96, v94);
              v98 = vaddq_s16(v93, v95);
              v99 = vaddq_s16(v91, v95);
              v132.val[1] = vzip1q_s16(v119, v99);
              v100 = v74 + 32;
              v28 = vzip2q_s16(v119, v36);
              v101 = v74 + 48;
              v102 = v74 + 64;
              v103 = v74 + 80;
              v104 = v74 + 96;
              v105 = v74 + 112;
              v132.val[0] = v120;
              v106 = v74;
              vst2q_s16(v106, v132);
              result = v106 + 16;
              v132.val[1] = vzip1q_s16(v119, v98);
              v132.val[0] = v120;
              vst2q_s16(v100, v132);
              v132.val[1] = vzip2q_s16(v119, v98);
              v132.val[0] = v120;
              vst2q_s16(v101, v132);
              v132.val[1] = vzip1q_s16(v119, v97);
              v132.val[0] = v120;
              vst2q_s16(v102, v132);
              v131.val[1] = vzip2q_s16(v119, v97);
              v131.val[0] = v120;
              vst2q_s16(v103, v131);
              v131.val[1] = vzip1q_s16(v119, v36);
              v131.val[0] = v120;
              vst2q_s16(v104, v131);
              v131.val[0] = vzip2q_s16(v119, v99);
              v37 = v120;
              vst2q_s16(result, *v37.i8);
              v40 = v36.u16[7];
              vst2q_s16(v105, *(&v28 - 1));
              v72 = v74 + 128;
              v71 = v61 + 32;
              v107 = v61 + 64;
              v61 += 32;
              v74 += 128;
            }

            while (v107 <= v34);
          }

          else
          {
            v71 = v61;
            v72 = a11;
          }

          if (v71 + 8 <= v34)
          {
            v110 = v123 + v39;
            do
            {
              v36.i64[0] = *(v39 + v71);
              v37.i64[0] = *(v110 + v71);
              v111 = vzip1q_s8(v37, v36);
              v112 = vaddq_s16(vshlq_n_s32(v111, 0x10uLL), v111);
              v113 = vaddq_s16(vandq_s8(vqtbl1q_s8(v112, xmmword_296B8F090), v38), v112);
              v114 = vaddq_s16(vaddq_s16(v113, vdupq_n_s16(v40)), vandq_s8(vdupq_lane_s16(*v113.i8, 3), xmmword_296B8F0A0));
              v40 = v114.u16[7];
              v130.val[1] = vzip1q_s16(v119, v114);
              v109 = v72 + 32;
              v130.val[0] = v120;
              vst2q_s16(v72, v130);
              v115 = v72 + 16;
              v37 = vzip2q_s16(v119, v114);
              v36 = v120;
              vst2q_s16(v115, *v36.i8);
              v108 = v71 + 8;
              v116 = v71 + 16;
              v71 += 8;
              v72 = v109;
            }

            while (v116 <= v34);
          }

          else
          {
            v108 = v71;
            v109 = v72;
          }

          if (v108 < v34)
          {
            do
            {
              v40 += *(v122[0] + v108 + v123) | (*(v122[0] + v108) << 8);
              v117 = v118;
              HIWORD(v117) = v40;
              *v109 = v117;
              v109 += 4;
              ++v108;
            }

            while (v34 != v108);
          }
        }

        a11 = (a11 + a12);
        v30 += a10;
      }

      while (v30 + a3[7].u32[0] < v20);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<float,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, double **a4, double **a5, uint64_t a6, uint64_t a7, double a8, __n128 a9, uint64_t a10, uint64_t a11, unsigned int a12, float *a13, uint64_t a14)
{
  if (a11)
  {
    v16 = *a4;
    if (*(*a4 + 24))
    {
      a8 = *v16;
      a9.n128_f32[0] = *v16;
    }

    else
    {
      a9.n128_u32[0] = 2143289344;
    }

    v17 = HIDWORD(*(a2 + 56));
    v18 = *a5;
    if (*(*a5 + 24))
    {
      a8 = *v18;
      *&a8 = *v18;
    }

    else
    {
      LODWORD(a8) = 2143289344;
    }

    v125 = *&a8;
    v128 = a9;
    v19 = *(*a6 + 24) ? **a6 : NAN;
    v123 = v19;
    v136 = 3;
    v20 = *(a7 + 8);
    v21 = a3[3];
    v134 = v21.i32[0];
    v132 = v20;
    v130[1] = result;
    v133 = a3[6].i32[1] + v21.i32[1] * v17;
    v22 = a3[7].u32[1];
    v131 = vmin_u32(vmls_s32(*(*(*&v20[5] + 8 * v22) + 16), v20[6], v21), v20[6]).u32[0];
    v135 = v22;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v130);
    v24 = a3[6].u32[1];
    if (a3[7].u32[0] + v24 < v17)
    {
      v26 = a3[3].i32[1] * *(a2 + 60);
      v27 = a3[5].u32[1];
      v28 = v27 + a11;
      v29 = v128;
      v30.i64[0] = __PAIR64__(LODWORD(v123), v128.n128_u32[0]);
      v30.i64[1] = __PAIR64__(LODWORD(v123), v128.n128_u32[0]);
      v29.n128_u32[1] = v125.i32[0];
      v29.n128_f32[2] = v123;
      v129 = v29;
      v124 = vdupq_lane_s32(v125, 0);
      do
      {
        v126 = v30;
        v127 = v23;
        v133 = v26 + v24;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v130);
        v30 = v126;
        v23 = v127;
        v34 = v130[0];
        if (v130[0])
        {
          if (v27 >= 0x20)
          {
            v46 = 0;
            v47 = v130[0] + 2 * v131;
            v48 = v131 + v130[0];
            v36.i64[0] = 0;
            v38 = xmmword_296B8F0B0;
            v37 = xmmword_296B8F050;
            v40 = xmmword_296B8F000;
            v39 = xmmword_296B8F020;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F0C0;
            v44 = xmmword_296B8F030;
            v43 = xmmword_296B8F0D0;
            v45 = xmmword_296B8F0E0;
            do
            {
              v137.val[1] = *(v130[0] + v46);
              v140.val[1] = *(v130[0] + v46 + 16);
              v50 = *(v48 + v46);
              v49 = *(v48 + v46 + 16);
              v137.val[0] = *(v47 + v46);
              v140.val[0] = *(v47 + v46 + 16);
              v143.val[1] = vqtbl2q_s8(v137, xmmword_296B8F050);
              v143.val[0] = vqtbl1q_s8(v50, xmmword_296B8F0B0);
              v51 = vqtbl2q_s8(v143, xmmword_296B8F020);
              v143.val[1] = vqtbl2q_s8(v140, xmmword_296B8F050);
              v143.val[0] = vqtbl1q_s8(v49, xmmword_296B8F0B0);
              v143.val[0] = vqtbl2q_s8(v143, xmmword_296B8F020);
              v52 = vqtbl2q_s8(v140, xmmword_296B8F000);
              v143.val[1] = vqtbl1q_s8(v49, xmmword_296B8F0C0);
              v143.val[1] = vqtbl2q_s8(*(&v143 + 16), xmmword_296B8F020);
              v145.val[1] = vqtbl2q_s8(v137, xmmword_296B8F070);
              v145.val[0] = vqtbl1q_s8(v50, xmmword_296B8F0D0);
              v145.val[0] = vqtbl2q_s8(v145, xmmword_296B8F020);
              v53 = vqtbl2q_s8(v137, xmmword_296B8F000);
              v145.val[1] = vqtbl1q_s8(v50, xmmword_296B8F0C0);
              v137.val[1] = vqtbl2q_s8(v137, xmmword_296B8F030);
              v137.val[0] = vqtbl1q_s8(v50, xmmword_296B8F0E0);
              v148.val[1] = vqtbl2q_s8(v140, xmmword_296B8F070);
              v54 = vqtbl2q_s8(*(&v145 + 16), xmmword_296B8F020);
              v148.val[0] = vqtbl1q_s8(v49, xmmword_296B8F0D0);
              v145.val[1] = vqtbl2q_s8(v148, xmmword_296B8F020);
              v140.val[1] = vqtbl2q_s8(v140, xmmword_296B8F030);
              v140.val[0] = vqtbl1q_s8(v49, xmmword_296B8F0E0);
              v140.val[0] = vqtbl2q_s8(v140, xmmword_296B8F020);
              v137.val[0] = vqtbl2q_s8(v137, xmmword_296B8F020);
              v55 = vaddq_s32(vshlq_n_s64(v51, 0x20uLL), v51);
              v143.val[0] = vaddq_s32(vshlq_n_s64(v143.val[0], 0x20uLL), v143.val[0]);
              v143.val[1] = vaddq_s32(vshlq_n_s64(v143.val[1], 0x20uLL), v143.val[1]);
              v145.val[0] = vaddq_s32(vshlq_n_s64(v145.val[0], 0x20uLL), v145.val[0]);
              v56 = vaddq_s32(vshlq_n_s64(v54, 0x20uLL), v54);
              v137.val[0] = vaddq_s32(vshlq_n_s64(v137.val[0], 0x20uLL), v137.val[0]);
              v140.val[1] = vaddq_s32(vshlq_n_s64(v145.val[1], 0x20uLL), v145.val[1]);
              v137.val[1] = vaddq_s32(vshlq_n_s64(v140.val[0], 0x20uLL), v140.val[0]);
              v148.val[1] = vdupq_lane_s32(*v143.val[1].i8, 1);
              v57 = vdupq_lane_s32(*v143.val[0].i8, 1);
              v58 = vdupq_lane_s32(*v55.i8, 1);
              v58.i64[0] = 0;
              v57.i64[0] = 0;
              v148.val[1].i64[0] = 0;
              v33 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v145.val[0].i8, 1), v145.val[0]), vaddq_s32(v58, v55));
              v32 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v137.val[1].i8, 1), v137.val[1]), 3), vaddq_s32(v148.val[1], v143.val[1])), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v140.val[1].i8, 1), v140.val[1]), 3), vaddq_s32(v57, v143.val[0])));
              v31 = vaddq_s32(v32, vaddq_s32(v33, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v137.val[0].i8, 1), v137.val[0]), vaddq_s32(vdupq_lane_s32(*v56.i8, 1), v56))));
              v36 = vaddq_s32(v31, vdupq_lane_s32(*v36.i8, 0));
              v36.i32[0] = v36.i32[3];
              v59 = v46 + 64;
              v46 += 32;
            }

            while (v59 <= v27);
            v35 = v27 & 0xFFFFFFE0;
          }

          else
          {
            v35 = 0;
            v36.i64[0] = 0;
            v38 = xmmword_296B8F0B0;
            v37 = xmmword_296B8F050;
            v40 = xmmword_296B8F000;
            v39 = xmmword_296B8F020;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F0C0;
            v44 = xmmword_296B8F030;
            v43 = xmmword_296B8F0D0;
            v45 = xmmword_296B8F0E0;
          }

          if ((v35 | 8) <= v27)
          {
            do
            {
              v31.i64[0] = *(v130[0] + v35);
              v32.i64[0] = *(v131 + v130[0] + v35);
              v33.i64[0] = *(v130[0] + 2 * v131 + v35);
              v61 = vzip1q_s8(0, v32);
              v62 = vzip1q_s8(v33, v31);
              v63 = vzip1q_s8(v61, v62);
              v64 = vzip2q_s8(v61, v62);
              v31 = vaddq_s32(vshlq_n_s64(v64, 0x20uLL), v64);
              v32 = vdupq_lane_s32(*v31.i8, 1);
              v65 = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
              v33 = vaddq_s32(vdupq_lane_s32(*v65.i8, 1), v65);
              v36 = vaddq_s32(v32, vaddq_s32(v31, vdupq_lane_s32(*v36.i8, 0)));
              v36.i32[0] = v36.i32[3] + v33.i32[3];
              v60 = v35 + 8;
              v66 = v35 + 16;
              v35 += 8;
            }

            while (v66 <= v27);
          }

          else
          {
            v60 = v35;
          }

          if (v60 <= v27)
          {
            v67 = v27;
          }

          else
          {
            v67 = v60;
          }

          if (v67 + 32 <= v28)
          {
            v70 = v130[0] + 2 * v131;
            v71 = v131 + v130[0];
            v72 = a13;
            do
            {
              v138.val[1] = *(v34 + v67);
              v141.val[1] = *(v34 + v67 + 16);
              v74 = *(v71 + v67);
              v73 = *(v71 + v67 + 16);
              v138.val[0] = *(v70 + v67);
              v141.val[0] = *(v70 + v67 + 16);
              v144.val[1] = vqtbl2q_s8(v138, v42);
              v144.val[0] = vqtbl1q_s8(v74, v43);
              v75 = vqtbl2q_s8(v144, v39);
              v144.val[1] = vqtbl2q_s8(v138, v44);
              v144.val[0] = vqtbl1q_s8(v74, v45);
              v146.val[1] = vqtbl2q_s8(v141, v42);
              v146.val[0] = vqtbl1q_s8(v73, v43);
              v144.val[0] = vqtbl2q_s8(v144, v39);
              v144.val[1] = vqtbl2q_s8(v146, v39);
              v146.val[1] = vqtbl2q_s8(v141, v44);
              v146.val[0] = vqtbl1q_s8(v73, v45);
              v147.val[1] = vqtbl2q_s8(v141, v40);
              v147.val[0] = vqtbl1q_s8(v73, v41);
              v146.val[0] = vqtbl2q_s8(v146, v39);
              v146.val[1] = vqtbl2q_s8(v147, v39);
              v141.val[1] = vqtbl2q_s8(v141, v37);
              v141.val[0] = vqtbl1q_s8(v73, v38);
              v147.val[1] = vqtbl2q_s8(v138, v40);
              v147.val[0] = vqtbl1q_s8(v74, v41);
              v141.val[0] = vqtbl2q_s8(v141, v39);
              v141.val[1] = vqtbl2q_s8(v147, v39);
              v138.val[1] = vqtbl2q_s8(v138, v37);
              v138.val[0] = vqtbl1q_s8(v74, v38);
              v138.val[0] = vqtbl2q_s8(v138, v39);
              v76 = vaddq_s32(vshlq_n_s64(v75, 0x20uLL), v75);
              v144.val[0] = vaddq_s32(vshlq_n_s64(v144.val[0], 0x20uLL), v144.val[0]);
              v144.val[1] = vaddq_s32(vshlq_n_s64(v144.val[1], 0x20uLL), v144.val[1]);
              v146.val[0] = vaddq_s32(vshlq_n_s64(v146.val[0], 0x20uLL), v146.val[0]);
              v146.val[1] = vaddq_s32(vshlq_n_s64(v146.val[1], 0x20uLL), v146.val[1]);
              v141.val[0] = vaddq_s32(vshlq_n_s64(v141.val[0], 0x20uLL), v141.val[0]);
              v141.val[1] = vaddq_s32(vshlq_n_s64(v141.val[1], 0x20uLL), v141.val[1]);
              v138.val[0] = vaddq_s32(vshlq_n_s64(v138.val[0], 0x20uLL), v138.val[0]);
              v138.val[1] = vdupq_lane_s32(*v138.val[0].i8, 1);
              v77 = vdupq_lane_s32(*v141.val[1].i8, 1);
              v78 = vdupq_lane_s32(*v141.val[0].i8, 1);
              v147.val[0] = vdupq_lane_s32(*v146.val[1].i8, 1);
              v147.val[1] = vdupq_lane_s32(*v146.val[0].i8, 1);
              v79 = vdupq_lane_s32(*v144.val[1].i8, 1);
              v80 = vdupq_lane_s32(*v76.i8, 1);
              v138.val[1].i64[0] = 0;
              v138.val[1] = vaddq_s32(v138.val[1], v138.val[0]);
              v77.i64[0] = 0;
              v81 = vaddq_s32(v77, v141.val[1]);
              v141.val[1] = vdupq_lane_s32(*v144.val[0].i8, 1);
              v80.i64[0] = 0;
              v79.i64[0] = 0;
              v141.val[1].i64[0] = 0;
              v147.val[1].i64[0] = 0;
              v147.val[0].i64[0] = 0;
              v78.i64[0] = 0;
              v141.val[0] = vaddq_s32(v78, v141.val[0]);
              v138.val[0] = vaddq_s32(v147.val[1], v146.val[0]);
              v82 = vaddq_s32(v79, v144.val[1]);
              v146.val[0] = vaddq_s32(v80, v76);
              v144.val[0] = vaddq_s32(v141.val[1], v144.val[0]);
              v146.val[1] = vaddq_s32(vdupq_laneq_s32(v138.val[0], 3), vaddq_s32(v147.val[0], v146.val[1]));
              v141.val[1] = vaddq_s32(vdupq_laneq_s32(v82, 3), v141.val[0]);
              v147.val[0] = vaddq_s32(vdupq_laneq_s32(v146.val[0], 3), v138.val[1]);
              v144.val[1] = vdupq_laneq_s32(v147.val[0], 3);
              v83 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v144.val[0], 3), v81), v144.val[1]);
              v141.val[0] = vdupq_laneq_s32(v141.val[1], 3);
              v138.val[1] = vdupq_laneq_s32(v83, 3);
              v84 = vdupq_lane_s32(*v36.i8, 0);
              v36 = vaddq_s32(vaddq_s32(vaddq_s32(v146.val[1], v141.val[0]), v84), v138.val[1]);
              v146.val[1] = vaddq_s32(v147.val[0], v84);
              v146.val[0] = vaddq_s32(v146.val[0], v84);
              v23 = vzip2q_s32(v124, v36);
              v147.val[1] = vzip1q_s32(v124, v146.val[0]);
              v85 = v72 + 16;
              v147.val[0] = v126;
              v86 = v72;
              vst2q_f32(v86, v147);
              v86 += 8;
              v147.val[1] = vzip1q_s32(v124, v146.val[1]);
              v147.val[0] = v126;
              vst2q_f32(v85, v147);
              v87 = v72 + 24;
              v88 = v72 + 32;
              v144.val[0] = vaddq_s32(vaddq_s32(v144.val[0], v84), v144.val[1]);
              v147.val[0] = vzip2q_s32(v124, v146.val[1]);
              v146.val[1] = v126;
              vst2q_f32(v87, *(&v146 + 16));
              v147.val[0] = vzip1q_s32(v124, v144.val[0]);
              v146.val[1] = v126;
              vst2q_f32(v88, *(&v146 + 16));
              v89 = v72 + 40;
              v90 = v72 + 48;
              v91 = vaddq_s32(v83, v84);
              v144.val[1] = vzip2q_s32(v124, v144.val[0]);
              v144.val[0] = v126;
              vst2q_f32(v89, v144);
              v144.val[1] = vzip1q_s32(v124, v91);
              v144.val[0] = v126;
              vst2q_f32(v90, v144);
              v144.val[1] = vzip2q_s32(v124, v146.val[0]);
              v144.val[0] = v126;
              vst2q_f32(v86, v144);
              v92 = v72 + 56;
              v93 = v72 + 64;
              v94 = vaddq_s32(vaddq_s32(v82, v84), v138.val[1]);
              v144.val[1] = vzip2q_s32(v124, v91);
              v144.val[0] = v126;
              vst2q_f32(v92, v144);
              v144.val[1] = vzip1q_s32(v124, v94);
              v144.val[0] = v126;
              vst2q_f32(v93, v144);
              v95 = v72 + 72;
              v96 = v72 + 80;
              v141.val[1] = vaddq_s32(vaddq_s32(v141.val[1], v84), v138.val[1]);
              v142.val[1] = vzip2q_s32(v124, v94);
              v142.val[0] = v126;
              vst2q_f32(v95, v142);
              v142.val[1] = vzip1q_s32(v124, v141.val[1]);
              v142.val[0] = v126;
              vst2q_f32(v96, v142);
              v97 = v72 + 88;
              v98 = v72 + 96;
              v138.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v138.val[0], v141.val[0]), v84), v138.val[1]);
              v141.val[0] = vzip2q_s32(v124, v141.val[1]);
              v138.val[1] = v126;
              vst2q_f32(v97, *(&v138 + 16));
              v33 = vzip1q_s32(v124, v138.val[0]);
              v138.val[1] = v126;
              vst2q_f32(v98, *(&v33 - 1));
              v99 = v72 + 104;
              v100 = v72 + 112;
              v138.val[1] = vzip2q_s32(v124, v138.val[0]);
              v138.val[0] = v126;
              vst2q_f32(v99, v138);
              v32 = vzip1q_s32(v124, v36);
              v31 = v126;
              vst2q_f32(v100, *v31.i8);
              v69 = v72 + 128;
              v101 = v72 + 120;
              vst2q_f32(v101, *(&v23 - 1));
              v36.i32[0] = v36.i32[3];
              v68 = v67 + 32;
              v102 = v67 + 64;
              v67 += 32;
              v72 = v69;
            }

            while (v102 <= v28);
          }

          else
          {
            v68 = v67;
            v69 = a13;
          }

          if (v68 + 8 <= v28)
          {
            v105 = v34 + 2 * v131;
            v106 = v131 + v34;
            do
            {
              v31.i64[0] = *(v34 + v68);
              v32.i64[0] = *(v106 + v68);
              v33.i64[0] = *(v105 + v68);
              v107 = vzip1q_s8(0, v32);
              v108 = vzip1q_s8(v33, v31);
              v109 = vzip1q_s8(v107, v108);
              v110 = vzip2q_s8(v107, v108);
              v111 = vaddq_s32(vshlq_n_s64(v109, 0x20uLL), v109);
              v112 = vaddq_s32(vshlq_n_s64(v110, 0x20uLL), v110);
              v113 = vdupq_lane_s32(*v112.i8, 1);
              v114 = vdupq_lane_s32(*v111.i8, 1);
              v114.i64[0] = 0;
              v113.i64[0] = 0;
              v115 = vaddq_s32(v114, v111);
              v116 = vdupq_laneq_s32(v115, 3);
              v117 = vdupq_lane_s32(*v36.i8, 0);
              v33 = vaddq_s32(v115, v117);
              v36 = vaddq_s32(vaddq_s32(v113, vaddq_s32(v112, v117)), v116);
              v139.val[1] = vzip1q_s32(v124, v33);
              v104 = v69 + 32;
              v139.val[0] = v126;
              v118 = v69 + 16;
              v119 = v69 + 24;
              vst2q_f32(v69, v139);
              v120 = v69 + 8;
              v139.val[1] = vzip2q_s32(v124, v33);
              v139.val[0] = v126;
              vst2q_f32(v120, v139);
              v139.val[1] = vzip1q_s32(v124, v36);
              v139.val[0] = v126;
              vst2q_f32(v118, v139);
              v32 = vzip2q_s32(v124, v36);
              v31 = v126;
              vst2q_f32(v119, *v31.i8);
              v36.i32[0] = v36.i32[3];
              v103 = v68 + 8;
              v121 = v68 + 16;
              v68 += 8;
              v69 = v104;
            }

            while (v121 <= v28);
          }

          else
          {
            v103 = v68;
            v104 = v69;
          }

          if (v103 < v28)
          {
            do
            {
              v122 = v129;
              v122.n128_u32[3] = ((*(v130[0] + v103) << 24) | (*(v130[0] + v103 + v131) << 16) | (*(v130[0] + v103 + 2 * v131) << 8)) + v36.i32[0];
              *v104 = v122;
              v104 += 4;
              ++v103;
            }

            while (v28 != v103);
          }
        }

        a13 = (a13 + a14);
        v24 += a12;
      }

      while (v24 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v193 = 4;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v191 = v20.i32[0];
    v189 = v19;
    v187[1] = result;
    v190 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v188 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v192 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v187);
    if (*(*a5 + 24))
    {
      LODWORD(a5) = **a5;
    }

    if (*(*a6 + 24))
    {
      LODWORD(a6) = **a6;
    }

    v186 = 4;
    v22 = *(a7 + 8);
    v23 = a3[3];
    v184 = v23.i32[0];
    v182 = v22;
    v180[1] = v17;
    v183 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v181 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v185 = v24;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v180);
    v25 = a3[6].u32[1];
    if (a3[7].u32[0] + v25 < v18)
    {
      v27 = a3[3].i32[1] * *(a2 + 60);
      v28 = a3[5].u32[1];
      v29 = v28 + a9;
      v174 = vdupq_n_s32(a6);
      v175 = vdupq_n_s32(a5);
      do
      {
        v190 = v27 + v25;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v187);
        v183 = v27 + v25;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v180);
        v38 = v174;
        v37 = v175;
        v39 = v187[0];
        if (v187[0])
        {
          v40 = v180[0];
          if (v180[0])
          {
            if (v28 >= 0x20)
            {
              v44 = v188 + v187[0];
              v45 = v188 + v187[0] + 2 * v188;
              v46 = v187[0] + 2 * v188;
              v47 = v181 + v180[0];
              v48 = v181 + v180[0] + 2 * v181;
              v49 = v180[0] + 2 * v181;
              v42 = 0uLL;
              v50 = 32;
              v51 = xmmword_296B8F040;
              v43 = xmmword_296B8F060;
              do
              {
                v179 = v42;
                result = v44 + v50;
                v206.val[1] = *(v187[0] + v50 - 32);
                v216.val[1] = *(v187[0] + v50 - 16);
                v209.val[1] = *(v44 + v50 - 32);
                v214.val[1] = *(v44 + v50 - 16);
                v206.val[0] = *(v46 + v50 - 32);
                v216.val[0] = *(v46 + v50 - 16);
                v209.val[0] = *(v45 + v50 - 32);
                v214.val[0] = *(v45 + v50 - 16);
                v178.val[0] = vqtbl2q_s8(v209, v51);
                v178.val[1] = vqtbl2q_s8(v206, xmmword_296B8F030);
                v177.val[0] = vqtbl2q_s8(v209, xmmword_296B8F010);
                v177.val[1] = vqtbl2q_s8(v206, xmmword_296B8F000);
                v176.val[0] = vqtbl2q_s8(v209, xmmword_296B8F080);
                v176.val[1] = vqtbl2q_s8(v206, xmmword_296B8F070);
                v206.val[1] = vqtbl2q_s8(v206, xmmword_296B8F050);
                v206.val[0] = vqtbl2q_s8(v209, v43);
                v209.val[1] = vqtbl2q_s8(v216, xmmword_296B8F000);
                v209.val[0] = vqtbl2q_s8(v214, xmmword_296B8F010);
                v211.val[1] = vqtbl2q_s8(v216, xmmword_296B8F050);
                v211.val[0] = vqtbl2q_s8(v214, v43);
                v213.val[1] = vqtbl2q_s8(v216, xmmword_296B8F070);
                v213.val[0] = vqtbl2q_s8(v214, xmmword_296B8F080);
                v216.val[1] = vqtbl2q_s8(v216, xmmword_296B8F030);
                v218.val[1] = *(v180[0] + v50 - 32);
                v220.val[1] = *(v180[0] + v50 - 16);
                v204.val[1] = *(v47 + v50 - 32);
                v205.val[1] = *(v47 + v50 - 16);
                v216.val[0] = vqtbl2q_s8(v214, xmmword_296B8F040);
                v218.val[0] = *(v49 + v50 - 32);
                v220.val[0] = *(v49 + v50 - 16);
                v204.val[0] = *(v48 + v50 - 32);
                v205.val[0] = *(v48 + v50 - 16);
                v214.val[1] = vqtbl2q_s8(v218, xmmword_296B8F030);
                v214.val[0] = vqtbl2q_s8(v204, xmmword_296B8F040);
                v202.val[1] = vqtbl2q_s8(v218, xmmword_296B8F000);
                v202.val[0] = vqtbl2q_s8(v204, xmmword_296B8F010);
                v200.val[1] = vqtbl2q_s8(v218, xmmword_296B8F070);
                v200.val[0] = vqtbl2q_s8(v204, xmmword_296B8F080);
                v218.val[1] = vqtbl2q_s8(v218, xmmword_296B8F050);
                v218.val[0] = vqtbl2q_s8(v204, xmmword_296B8F060);
                v204.val[1] = vqtbl2q_s8(v220, xmmword_296B8F000);
                v204.val[0] = vqtbl2q_s8(v205, xmmword_296B8F010);
                v196.val[1] = vqtbl2q_s8(v220, xmmword_296B8F050);
                v196.val[0] = vqtbl2q_s8(v205, xmmword_296B8F060);
                v194.val[1] = vqtbl2q_s8(v220, xmmword_296B8F070);
                v194.val[0] = vqtbl2q_s8(v205, xmmword_296B8F080);
                v220.val[1] = vqtbl2q_s8(v220, xmmword_296B8F030);
                v220.val[0] = vqtbl2q_s8(v205, xmmword_296B8F040);
                v51 = xmmword_296B8F040;
                v52 = vqtbl2q_s8(v178, xmmword_296B8F020);
                v205.val[0] = vqtbl2q_s8(v177, xmmword_296B8F020);
                v53 = vqtbl2q_s8(v176, xmmword_296B8F020);
                v54 = vqtbl2q_s8(v206, xmmword_296B8F020);
                v206.val[0] = vqtbl2q_s8(v209, xmmword_296B8F020);
                v211.val[0] = vqtbl2q_s8(v211, xmmword_296B8F020);
                v211.val[1] = vqtbl2q_s8(v213, xmmword_296B8F020);
                v213.val[0] = vqtbl2q_s8(v216, xmmword_296B8F020);
                v206.val[1] = vaddq_s32(vshlq_n_s64(v52, 0x20uLL), v52);
                v209.val[0] = vaddq_s32(vshlq_n_s64(v205.val[0], 0x20uLL), v205.val[0]);
                v209.val[1] = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
                v55 = vaddq_s32(vshlq_n_s64(v54, 0x20uLL), v54);
                v56 = vaddq_s32(vshlq_n_s64(v206.val[0], 0x20uLL), v206.val[0]);
                v57 = vaddq_s32(vshlq_n_s64(v211.val[0], 0x20uLL), v211.val[0]);
                v206.val[0] = vaddq_s32(vshlq_n_s64(v211.val[1], 0x20uLL), v211.val[1]);
                v211.val[0] = vqtbl2q_s8(v214, xmmword_296B8F020);
                v211.val[1] = vqtbl2q_s8(v202, xmmword_296B8F020);
                v213.val[0] = vaddq_s32(vshlq_n_s64(v213.val[0], 0x20uLL), v213.val[0]);
                v213.val[1] = vqtbl2q_s8(v200, xmmword_296B8F020);
                v214.val[0] = vqtbl2q_s8(v218, xmmword_296B8F020);
                v214.val[1] = vqtbl2q_s8(v204, xmmword_296B8F020);
                v196.val[0] = vqtbl2q_s8(v196, xmmword_296B8F020);
                v194.val[0] = vqtbl2q_s8(v194, xmmword_296B8F020);
                v194.val[1] = vqtbl2q_s8(v220, xmmword_296B8F020);
                v43 = xmmword_296B8F060;
                v33 = vaddq_s32(vshlq_n_s64(v211.val[0], 0x20uLL), v211.val[0]);
                v211.val[0] = vaddq_s32(vshlq_n_s64(v211.val[1], 0x20uLL), v211.val[1]);
                v211.val[1] = vaddq_s32(vshlq_n_s64(v213.val[1], 0x20uLL), v213.val[1]);
                v213.val[1] = vaddq_s32(vshlq_n_s64(v214.val[0], 0x20uLL), v214.val[0]);
                v214.val[0] = vaddq_s32(vshlq_n_s64(v214.val[1], 0x20uLL), v214.val[1]);
                v196.val[0] = vaddq_s32(vshlq_n_s64(v196.val[0], 0x20uLL), v196.val[0]);
                v194.val[0] = vaddq_s32(vshlq_n_s64(v194.val[0], 0x20uLL), v194.val[0]);
                v194.val[1] = vaddq_s32(vshlq_n_s64(v194.val[1], 0x20uLL), v194.val[1]);
                v194.val[0] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v194.val[0].i8, 1), v194.val[0]), 3);
                v30 = vextq_s8(v194.val[0], v194.val[0], 8uLL);
                *v30.i8 = vadd_s32(*v30.i8, vadd_s32(vdup_lane_s32(*v196.val[0].i8, 1), *&vextq_s8(v196.val[0], v196.val[0], 8uLL)));
                v32 = vextq_s8(v211.val[1], v211.val[1], 8uLL);
                v194.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v194.val[1].i8, 1), v194.val[1]), 3);
                *v32.i8 = vadd_s32(vadd_s32(vadd_s32(*v211.val[1].i8, *v32.i8), vadd_s32(*v213.val[1].i8, *&vextq_s8(v213.val[1], v213.val[1], 8uLL))), vadd_s32(vadd_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL)), vadd_s32(*v211.val[0].i8, *&vextq_s8(v211.val[0], v211.val[0], 8uLL))));
                v36 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v206.val[0].i8, 1), v206.val[0]), 3);
                *v33.i8 = vadd_s32(*&vextq_s8(v36, v36, 8uLL), vadd_s32(vdup_lane_s32(*v57.i8, 1), *&vextq_s8(v57, v57, 8uLL)));
                v58 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v213.val[0].i8, 1), v213.val[0]), 3);
                *v56.i8 = vadd_s32(*&vextq_s8(v58, v58, 8uLL), vadd_s32(vdup_lane_s32(*v56.i8, 1), *&vextq_s8(v56, v56, 8uLL)));
                v42.i64[1] = v179.i64[1];
                *v30.i8 = vadd_s32(vadd_s32(*&vextq_s8(v194.val[1], v194.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v214.val[0].i8, 1), *&vextq_s8(v214.val[0], v214.val[0], 8uLL))), *v30.i8);
                v31 = vextq_s8(v55, v55, 8uLL);
                *v31.i8 = vadd_s32(vadd_s32(*v209.val[1].i8, *&vextq_s8(v209.val[1], v209.val[1], 8uLL)), vadd_s32(*v55.i8, *v31.i8));
                *v33.i8 = vadd_s32(*v56.i8, *v33.i8);
                v34 = vextq_s8(v209.val[0], v209.val[0], 8uLL);
                v35 = vextq_s8(v206.val[1], v206.val[1], 8uLL);
                *v31.i8 = vadd_s32(*v33.i8, vadd_s32(*v31.i8, vadd_s32(vadd_s32(*v206.val[1].i8, *v35.i8), vadd_s32(*v209.val[0].i8, *v34.i8))));
                *v30.i8 = vzip2_s32(*v31.i8, vadd_s32(*v30.i8, *v32.i8));
                *v42.i8 = vadd_s32(*v30.i8, *v179.i8);
                v50 += 32;
              }

              while (v50 <= v28);
              v41 = v28 & 0xFFFFFFE0;
              v38 = v174;
              v37 = v175;
            }

            else
            {
              v41 = 0;
              v42 = 0uLL;
              v43 = xmmword_296B8F060;
            }

            v60 = xmmword_296B8F000;
            v59 = xmmword_296B8F030;
            v61 = xmmword_296B8F020;
            v62 = xmmword_296B8F010;
            if ((v41 | 8) <= v28)
            {
              do
              {
                v30.i64[0] = *(v187[0] + v41);
                v31.i64[0] = *(v188 + v187[0] + v41);
                v32.i64[0] = *(v187[0] + 2 * v188 + v41);
                v33.i64[0] = *(v188 + v187[0] + 2 * v188 + v41);
                v64 = vzip1q_s8(v33, v31);
                v65 = vzip1q_s8(v32, v30);
                v66 = vzip1q_s8(v64, v65);
                v67 = vzip2q_s8(v64, v65);
                v68 = vshlq_n_s64(v67, 0x20uLL);
                v69 = vshlq_n_s64(v66, 0x20uLL);
                v32 = vaddq_s32(v69, v66);
                v30 = vaddq_s32(v68, v67);
                v68.i64[0] = *(v180[0] + v41);
                v69.i64[0] = *(v181 + v180[0] + v41);
                v34.i64[0] = *(v180[0] + 2 * v181 + v41);
                v35.i64[0] = *(v181 + v180[0] + 2 * v181 + v41);
                v70 = vzip1q_s8(v35, v69);
                v71 = vzip1q_s8(v34, v68);
                v72 = vzip1q_s8(v70, v71);
                v73 = vzip2q_s8(v70, v71);
                v35 = vshlq_n_s64(v72, 0x20uLL);
                v34 = vaddq_s32(v35, v72);
                v74 = vaddq_s32(vshlq_n_s64(v73, 0x20uLL), v73);
                *v30.i8 = vadd_s32(vzip2_s32(vadd_s32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)), vadd_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL))), *v42.i8);
                v31 = vextq_s8(v34, v34, 8uLL);
                v33 = vextq_s8(v32, v32, 8uLL);
                *v31.i8 = vzip2_s32(vadd_s32(*v32.i8, *v33.i8), vadd_s32(*v34.i8, *v31.i8));
                *v42.i8 = vadd_s32(*v30.i8, *v31.i8);
                v63 = v41 + 8;
                result = v41 + 16;
                v41 += 8;
              }

              while (result <= v28);
            }

            else
            {
              v63 = v41;
            }

            if (v63 < v28)
            {
              do
              {
                result = v180[0] + v63;
                v30.i8[0] = *(v188 + v187[0] + v63);
                v30.i8[4] = *(v180[0] + v63);
                v31.i8[0] = *(v187[0] + v63);
                v31.i8[4] = *(v181 + v180[0] + v63);
                v75 = vshl_u32(vand_s8(*v31.i8, 0xFF000000FFLL), 0x1000000018);
                v76 = vorr_s8(v75, vshl_u32(vand_s8(*v30.i8, 0xFF000000FFLL), 0x1800000010));
                v75.i8[0] = *(v187[0] + 2 * v188 + v63);
                v75.i8[4] = *(v180[0] + 2 * v181 + v63);
                v77 = vand_s8(v75, 0xFF000000FFLL);
                *v31.i8 = vorr_s8(vshl_n_s32(v77, 8uLL), v77);
                *v30.i8 = vorr_s8(v76, *v31.i8);
                *v42.i8 = vadd_s32(*v30.i8, *v42.i8);
                ++v63;
              }

              while (v28 != v63);
              v63 = v28;
            }

            if (v63 + 32 <= v29)
            {
              v81 = v188 + v187[0];
              v82 = v188 + v187[0] + 2 * v188;
              v83 = v187[0] + 2 * v188;
              v84 = v181 + v180[0];
              v85 = v181 + v180[0] + 2 * v181;
              v86 = v180[0] + 2 * v181;
              v80 = a11;
              v87 = xmmword_296B8F080;
              v88 = xmmword_296B8F070;
              v89 = xmmword_296B8F050;
              do
              {
                v207.val[1] = *(v39 + v63);
                v198.val[1] = *(v39 + v63 + 16);
                v210.val[1] = *(v81 + v63);
                v195.val[1] = *(v81 + v63 + 16);
                v207.val[0] = *(v83 + v63);
                v198.val[0] = *(v83 + v63 + 16);
                v90 = *v42.i8;
                v199.val[1] = vqtbl2q_s8(v207, v88);
                v210.val[0] = *(v82 + v63);
                v195.val[0] = *(v82 + v63 + 16);
                v199.val[0] = vqtbl2q_s8(v210, v87);
                v212.val[1] = vqtbl2q_s8(v207, v59);
                v91 = vqtbl2q_s8(v199, v61);
                v212.val[0] = vqtbl2q_s8(v210, xmmword_296B8F040);
                v92 = vqtbl2q_s8(v212, xmmword_296B8F020);
                v199.val[1] = vqtbl2q_s8(v198, v88);
                v199.val[0] = vqtbl2q_s8(v195, v87);
                v212.val[1] = vqtbl2q_s8(v198, v89);
                v199.val[0] = vqtbl2q_s8(v199, xmmword_296B8F020);
                v212.val[0] = vqtbl2q_s8(v195, v43);
                v199.val[1] = vqtbl2q_s8(v212, xmmword_296B8F020);
                v212.val[1] = vqtbl2q_s8(v207, v60);
                v212.val[0] = vqtbl2q_s8(v210, v62);
                v207.val[1] = vqtbl2q_s8(v207, v89);
                v93 = vqtbl2q_s8(v212, xmmword_296B8F020);
                v207.val[0] = vqtbl2q_s8(v210, v43);
                v210.val[1] = vqtbl2q_s8(v207, xmmword_296B8F020);
                v94 = vaddq_s32(vshlq_n_s64(v91, 0x20uLL), v91);
                v215.val[1] = *(v40 + v63);
                v207.val[1] = *(v40 + v63 + 16);
                v95 = vaddq_s32(vshlq_n_s64(v92, 0x20uLL), v92);
                v217.val[1] = *(v84 + v63);
                v210.val[0] = *(v84 + v63 + 16);
                v215.val[0] = *(v86 + v63);
                v217.val[0] = *(v85 + v63);
                v96 = vaddq_s32(vshlq_n_s64(v210.val[1], 0x20uLL), v210.val[1]);
                v219.val[1] = vqtbl2q_s8(v215, v88);
                v219.val[0] = vqtbl2q_s8(v217, v87);
                v201.val[1] = vqtbl2q_s8(v215, xmmword_296B8F030);
                v201.val[0] = vqtbl2q_s8(v217, xmmword_296B8F040);
                v210.val[1] = vdupq_lane_s32(*v96.i8, 1);
                v212.val[1] = vqtbl2q_s8(v215, xmmword_296B8F000);
                v212.val[0] = vqtbl2q_s8(v217, xmmword_296B8F010);
                v203.val[1] = vqtbl2q_s8(v215, xmmword_296B8F050);
                v203.val[0] = vqtbl2q_s8(v217, xmmword_296B8F060);
                v215.val[1] = vdupq_lane_s32(*v95.i8, 1);
                v217.val[0] = vdupq_lane_s32(*v94.i8, 1);
                v217.val[0].i64[0] = 0;
                v210.val[1].i64[0] = 0;
                v97 = vaddq_s32(v210.val[1], v96);
                v217.val[1] = vqtbl2q_s8(v219, xmmword_296B8F020);
                v210.val[1] = vdupq_lane_s32(v90, 0);
                v215.val[1].i64[0] = 0;
                v215.val[0] = vqtbl2q_s8(v201, xmmword_296B8F020);
                v219.val[0] = vqtbl2q_s8(v203, xmmword_296B8F020);
                v217.val[1] = vaddq_s32(vshlq_n_s64(v217.val[1], 0x20uLL), v217.val[1]);
                v98 = vaddq_s32(v215.val[1], v95);
                v219.val[0] = vaddq_s32(vshlq_n_s64(v219.val[0], 0x20uLL), v219.val[0]);
                v219.val[1] = vdupq_lane_s32(*v219.val[0].i8, 1);
                v99 = vdupq_lane_s32(*v217.val[1].i8, 1);
                v100 = vaddq_s32(v217.val[0], v94);
                v99.i64[0] = 0;
                v219.val[1].i64[0] = 0;
                v215.val[1] = vaddq_s32(v100, v210.val[1]);
                v217.val[0] = vaddq_s32(v219.val[1], v219.val[0]);
                v219.val[0] = vaddq_s32(v99, v217.val[1]);
                v217.val[1] = vdupq_laneq_s32(v219.val[0], 3);
                v101 = vaddq_s32(vdupq_laneq_s32(v100, 3), v97);
                v102 = vdupq_lane_s32(v90, 1);
                v219.val[0] = vaddq_s32(v219.val[0], v102);
                v219.val[1] = vzip2q_s32(v215.val[1], v38);
                v103 = vzip2q_s32(v37, v219.val[0]);
                v217.val[0] = vaddq_s32(v217.val[1], v217.val[0]);
                v201.val[0] = vzip1q_s32(v215.val[1], v38);
                v201.val[1] = vzip1q_s32(v37, v219.val[0]);
                v207.val[0] = *(v86 + v63 + 16);
                v104 = *(v85 + v63 + 16);
                v105 = v80;
                vst2q_f32(v105, v201);
                v105 += 8;
                v215.val[1] = vaddq_s32(v101, v210.val[1]);
                v217.val[1] = vaddq_s32(v217.val[0], v102);
                vst2q_f32(v105, *(&v219 + 16));
                v219.val[0] = vzip1q_s32(v215.val[1], v38);
                v219.val[1] = vzip1q_s32(v37, v217.val[1]);
                v106 = v80 + 16;
                vst2q_f32(v106, v219);
                v215.val[0] = vaddq_s32(vshlq_n_s64(v215.val[0], 0x20uLL), v215.val[0]);
                v219.val[0] = vdupq_lane_s32(*v215.val[0].i8, 1);
                v107 = vdupq_laneq_s32(v101, 3);
                v219.val[0].i64[0] = 0;
                v217.val[0] = vdupq_laneq_s32(v217.val[0], 3);
                v219.val[1] = vaddq_s32(vaddq_s32(v98, v210.val[1]), v107);
                v215.val[0] = vaddq_s32(v219.val[0], v215.val[0]);
                v201.val[0] = vzip2q_s32(v215.val[1], v38);
                v201.val[1] = vzip2q_s32(v37, v217.val[1]);
                v108 = v80 + 24;
                v215.val[1] = vaddq_s32(vaddq_s32(v215.val[0], v102), v217.val[0]);
                vst2q_f32(v108, v201);
                v88 = xmmword_296B8F070;
                v89 = xmmword_296B8F050;
                v87 = xmmword_296B8F080;
                v217.val[1] = vzip1q_s32(v219.val[1], v38);
                v219.val[0] = vzip1q_s32(v37, v215.val[1]);
                v109 = v80 + 32;
                vst2q_f32(v109, *(&v217 + 16));
                v199.val[0] = vaddq_s32(vshlq_n_s64(v199.val[0], 0x20uLL), v199.val[0]);
                v110 = vaddq_s32(vshlq_n_s64(v93, 0x20uLL), v93);
                v217.val[1] = vdupq_lane_s32(*v110.i8, 1);
                v199.val[1] = vaddq_s32(vshlq_n_s64(v199.val[1], 0x20uLL), v199.val[1]);
                v219.val[0] = vdupq_lane_s32(*v199.val[1].i8, 1);
                v217.val[1].i64[0] = 0;
                v111 = vaddq_s32(v217.val[1], v110);
                v217.val[1] = vdupq_lane_s32(*v199.val[0].i8, 1);
                v217.val[1].i64[0] = 0;
                v219.val[0].i64[0] = 0;
                v219.val[0] = vaddq_s32(v219.val[0], v199.val[1]);
                v217.val[1] = vaddq_s32(v217.val[1], v199.val[0]);
                v199.val[0] = vqtbl2q_s8(v212, xmmword_296B8F020);
                v199.val[1] = vaddq_s32(vdupq_laneq_s32(v98, 3), v111);
                v199.val[0] = vaddq_s32(vshlq_n_s64(v199.val[0], 0x20uLL), v199.val[0]);
                v112 = vdupq_lane_s32(*v199.val[0].i8, 1);
                v112.i64[0] = 0;
                v199.val[1] = vaddq_s32(v199.val[1], v107);
                v212.val[0] = vzip2q_s32(v219.val[1], v38);
                v212.val[1] = vzip2q_s32(v37, v215.val[1]);
                v113 = vaddq_s32(v199.val[1], v210.val[1]);
                v114 = v80 + 40;
                vst2q_f32(v114, v212);
                v115 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v215.val[0], 3), vaddq_s32(v112, v199.val[0])), v217.val[0]);
                v212.val[0] = vaddq_s32(v115, v102);
                v116 = vzip1q_s32(v113, v38);
                v117 = v80 + 48;
                v215.val[0] = vzip1q_s32(v37, v212.val[0]);
                vst2q_f32(v117, v215);
                v215.val[0] = vqtbl2q_s8(v207, xmmword_296B8F070);
                v118 = vqtbl2q_s8(v210, xmmword_296B8F080);
                v43 = xmmword_296B8F060;
                v199.val[0] = vqtbl2q_s8(v215, xmmword_296B8F020);
                v119 = vaddq_s32(vshlq_n_s64(v199.val[0], 0x20uLL), v199.val[0]);
                v35 = vdupq_laneq_s32(v199.val[1], 3);
                v199.val[1] = vdupq_lane_s32(*v119.i8, 1);
                v199.val[1].i64[0] = 0;
                v120 = vaddq_s32(v199.val[1], v119);
                v212.val[1] = vaddq_s32(vaddq_s32(v217.val[1], v210.val[1]), v35);
                v42 = vdupq_laneq_s32(v115, 3);
                v215.val[0] = vzip2q_s32(v113, v38);
                v215.val[1] = vzip2q_s32(v37, v212.val[0]);
                v121 = vaddq_s32(vaddq_s32(v120, v102), v42);
                v122 = v80 + 56;
                vst2q_f32(v122, v215);
                v215.val[0] = vzip1q_s32(v212.val[1], v38);
                v215.val[1] = vzip1q_s32(v37, v121);
                v123 = v80 + 64;
                vst2q_f32(v123, v215);
                v215.val[1] = vqtbl2q_s8(v207, xmmword_296B8F050);
                v215.val[0] = vqtbl2q_s8(v210, xmmword_296B8F060);
                v212.val[0] = vqtbl2q_s8(v215, xmmword_296B8F020);
                v124 = vaddq_s32(vdupq_laneq_s32(v217.val[1], 3), v219.val[0]);
                v212.val[0] = vaddq_s32(vshlq_n_s64(v212.val[0], 0x20uLL), v212.val[0]);
                v215.val[0] = vdupq_lane_s32(*v212.val[0].i8, 1);
                v215.val[0].i64[0] = 0;
                v212.val[0] = vaddq_s32(v215.val[0], v212.val[0]);
                v215.val[0] = vzip2q_s32(v212.val[1], v38);
                v215.val[1] = vzip2q_s32(v37, v121);
                v125 = vaddq_s32(vaddq_s32(v124, v210.val[1]), v35);
                v126 = v80 + 72;
                vst2q_f32(v126, v215);
                v60 = xmmword_296B8F000;
                v59 = xmmword_296B8F030;
                v212.val[0] = vaddq_s32(vdupq_laneq_s32(v120, 3), v212.val[0]);
                v212.val[1] = vaddq_s32(vaddq_s32(v212.val[0], v102), v42);
                v127 = vzip1q_s32(v125, v38);
                v128 = v80 + 80;
                v215.val[0] = vzip1q_s32(v37, v212.val[1]);
                vst2q_f32(v128, v215);
                v215.val[0] = vqtbl2q_s8(v198, xmmword_296B8F030);
                v129 = vqtbl2q_s8(v195, xmmword_296B8F040);
                v130 = vqtbl2q_s8(v215, xmmword_296B8F020);
                v62 = xmmword_296B8F010;
                v198.val[1] = vqtbl2q_s8(v198, xmmword_296B8F000);
                v131 = vaddq_s32(vshlq_n_s64(v130, 0x20uLL), v130);
                v215.val[0] = vdupq_lane_s32(*v131.i8, 1);
                v198.val[0] = vqtbl2q_s8(v195, xmmword_296B8F010);
                v195.val[1] = vqtbl2q_s8(v207, xmmword_296B8F030);
                v195.val[0] = vqtbl2q_s8(v210, xmmword_296B8F040);
                v207.val[1] = vqtbl2q_s8(v207, xmmword_296B8F000);
                v215.val[0].i64[0] = 0;
                v207.val[0] = vqtbl2q_s8(v210, xmmword_296B8F010);
                v132 = vaddq_s32(v215.val[0], v131);
                v210.val[0] = vdupq_laneq_s32(v124, 3);
                v195.val[0] = vqtbl2q_s8(v195, xmmword_296B8F020);
                v195.val[0] = vaddq_s32(vshlq_n_s64(v195.val[0], 0x20uLL), v195.val[0]);
                v195.val[1] = vdupq_lane_s32(*v195.val[0].i8, 1);
                v133 = vaddq_s32(vaddq_s32(vaddq_s32(v132, v210.val[0]), v210.val[1]), v35);
                v195.val[1].i64[0] = 0;
                v195.val[0] = vaddq_s32(v195.val[1], v195.val[0]);
                v195.val[1] = vdupq_laneq_s32(v212.val[0], 3);
                v134 = vzip2q_s32(v125, v38);
                v215.val[0] = vzip2q_s32(v37, v212.val[1]);
                v135 = v80 + 88;
                vst2q_f32(v135, v215);
                v136 = vaddq_s32(vaddq_s32(vaddq_s32(v195.val[0], v195.val[1]), v102), v42);
                v212.val[0] = vzip1q_s32(v133, v38);
                v137 = v80 + 96;
                v212.val[1] = vzip1q_s32(v37, v136);
                vst2q_f32(v137, v212);
                v212.val[0] = vzip2q_s32(v133, v38);
                v212.val[1] = vzip2q_s32(v37, v136);
                v138 = v80 + 104;
                vst2q_f32(v138, v212);
                v198.val[0] = vqtbl2q_s8(v198, xmmword_296B8F020);
                v198.val[0] = vaddq_s32(vshlq_n_s64(v198.val[0], 0x20uLL), v198.val[0]);
                v198.val[1] = vdupq_lane_s32(*v198.val[0].i8, 1);
                v198.val[1].i64[0] = 0;
                v198.val[0] = vaddq_s32(v198.val[1], v198.val[0]);
                v198.val[1] = vdupq_laneq_s32(v132, 3);
                v61 = xmmword_296B8F020;
                v198.val[0] = vaddq_s32(v198.val[1], v198.val[0]);
                v198.val[1] = vqtbl2q_s8(v207, xmmword_296B8F020);
                v198.val[1] = vaddq_s32(vshlq_n_s64(v198.val[1], 0x20uLL), v198.val[1]);
                v36 = vdupq_lane_s32(*v198.val[1].i8, 1);
                v36.i64[0] = 0;
                v198.val[1] = vaddq_s32(vdupq_laneq_s32(v195.val[0], 3), vaddq_s32(v36, v198.val[1]));
                v31 = vaddq_s32(vaddq_s32(vaddq_s32(v198.val[0], v210.val[0]), v210.val[1]), v35);
                v32 = vaddq_s32(vaddq_s32(vaddq_s32(v198.val[1], v195.val[1]), v102), v42);
                v198.val[0] = vzip1q_s32(v31, v38);
                v139 = v80 + 112;
                v198.val[1] = vzip1q_s32(v37, v32);
                vst2q_f32(v139, v198);
                v198.val[0] = vzip2q_s32(v31, v38);
                v198.val[1] = vzip2q_s32(v37, v32);
                v140 = v80 + 120;
                vst2q_f32(v140, v198);
                v30 = vextq_s8(v32, v32, 8uLL);
                v33 = vextq_s8(v31, v31, 8uLL);
                *v42.i8 = vzip2_s32(*v33.i8, *v30.i8);
                v80 += 128;
                result = v63 + 64;
                v63 += 32;
              }

              while (result <= v29);
              v79 = v32.u32[3];
              v78 = v31.u32[3];
            }

            else
            {
              v78 = v42.i32[0];
              v79 = v42.u32[1];
              v80 = a11;
            }

            if (v63 + 8 <= v29)
            {
              v143 = v188 + v39;
              v144 = v188 + v39 + 2 * v188;
              v145 = v39 + 2 * v188;
              v146 = v181 + v40;
              result = v181 + v40 + 2 * v181;
              v147 = v40 + 2 * v181;
              do
              {
                v30.i64[0] = *(v39 + v63);
                v31.i64[0] = *(v143 + v63);
                v32.i64[0] = *(v145 + v63);
                v33.i64[0] = *(v144 + v63);
                v148 = vzip1q_s8(v33, v31);
                v149 = vzip1q_s8(v32, v30);
                v150 = vzip1q_s8(v148, v149);
                v151 = vzip2q_s8(v148, v149);
                v152 = vaddq_s32(vshlq_n_s64(v150, 0x20uLL), v150);
                v153 = vaddq_s32(vshlq_n_s64(v151, 0x20uLL), v151);
                v154 = vdupq_lane_s32(*v153.i8, 1);
                v155 = vdupq_lane_s32(*v152.i8, 1);
                v155.i64[0] = 0;
                v156 = vdupq_n_s32(v78);
                v154.i64[0] = 0;
                v35.i64[0] = *(v40 + v63);
                v42.i64[0] = *(v146 + v63);
                v157 = vaddq_s32(v155, v152);
                v155.i64[0] = *(v147 + v63);
                v36.i64[0] = *(result + v63);
                v158 = vzip1q_s8(v36, v42);
                v159 = vaddq_s32(v154, vaddq_s32(v153, v156));
                v160 = vzip1q_s8(v155, v35);
                v161 = vzip1q_s8(v158, v160);
                v162 = vaddq_s32(vshlq_n_s64(v161, 0x20uLL), v161);
                v35 = vdupq_laneq_s32(v157, 3);
                v163 = vdupq_lane_s32(*v162.i8, 1);
                v163.i64[0] = 0;
                v164 = vaddq_s32(v163, v162);
                v165 = vaddq_s32(v157, v156);
                v166 = vdupq_n_s32(v79);
                v36 = vaddq_s32(v164, v166);
                v208.val[0] = vzip1q_s32(v165, v38);
                v167 = v80 + 16;
                v208.val[1] = vzip1q_s32(v37, v36);
                v168 = v80;
                vst2q_f32(v168, v208);
                v168 += 8;
                v169 = vzip2q_s8(v158, v160);
                v170 = vaddq_s32(vshlq_n_s64(v169, 0x20uLL), v169);
                v42 = vdupq_lane_s32(*v170.i8, 1);
                v30 = vaddq_s32(v159, v35);
                v42.i64[0] = 0;
                v78 = v30.u32[3];
                v171 = v80 + 24;
                v31 = vaddq_s32(vaddq_s32(v42, vaddq_s32(v170, v166)), vdupq_laneq_s32(v164, 3));
                v79 = v31.u32[3];
                v197.val[0] = vzip2q_s32(v165, v38);
                v197.val[1] = vzip2q_s32(v37, v36);
                vst2q_f32(v168, v197);
                v197.val[0] = vzip1q_s32(v30, v38);
                v197.val[1] = vzip1q_s32(v37, v31);
                vst2q_f32(v167, v197);
                v32 = vzip2q_s32(v30, v38);
                v33 = vzip2q_s32(v37, v31);
                vst2q_f32(v171, *v32.i8);
                v142 = v80 + 32;
                v141 = v63 + 8;
                v172 = v63 + 16;
                v63 += 8;
                v80 += 32;
              }

              while (v172 <= v29);
            }

            else
            {
              v141 = v63;
              v142 = v80;
            }

            if (v141 < v29)
            {
              do
              {
                v78 += (*(v187[0] + v141) << 24) | (*(v187[0] + v141 + v188) << 16) | (*(v187[0] + v141 + 2 * v188) << 8) | *(v187[0] + v141 + 2 * v188);
                *&v173 = __PAIR64__(a5, v78);
                DWORD2(v173) = a6;
                v79 += (*(v180[0] + v141) << 24) | (*(v180[0] + v141 + v181) << 16) | (*(v180[0] + v141 + 2 * v181) << 8) | *(v180[0] + v141 + 2 * v181);
                HIDWORD(v173) = v79;
                *v142 = v173;
                v142 += 4;
                ++v141;
              }

              while (v29 != v141);
            }
          }
        }

        a11 = (a11 + a12);
        v25 += a10;
      }

      while (v25 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t **a5, uint64_t **a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v201 = 2;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v199 = v20.i32[0];
    v197 = v19;
    v195[1] = result;
    v198 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v196 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v200 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v195);
    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v22 = _D0;
    }

    else
    {
      v22 = 32256;
    }

    if (*(*a6 + 24))
    {
      _D0 = **a6;
      __asm { FCVT            H0, D0 }

      v28 = _D0;
    }

    else
    {
      v28 = 32256;
    }

    v194 = 2;
    v30 = *(a7 + 8);
    v31 = a3[3];
    v192 = v31.i32[0];
    v190 = v30;
    v188[1] = v17;
    v191 = a3[6].i32[1] + v31.i32[1] * v18;
    v32 = a3[7].u32[1];
    v189 = vmin_u32(vmls_s32(*(*(*&v30[5] + 8 * v32) + 16), v30[6], v31), v30[6]).u32[0];
    v193 = v32;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v188);
    v33 = a3[6].u32[1];
    if (a3[7].u32[0] + v33 < v18)
    {
      v35 = a3[3].i32[1] * *(a2 + 60);
      v36 = a3[5].u32[1];
      v37 = v36 + a9;
      v186 = vdupq_n_s16(v28);
      v187 = vdupq_n_s16(v22);
      do
      {
        v198 = v35 + v33;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v195);
        v191 = v35 + v33;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v188);
        v40.i64[0] = 0xFFFFFFFF00000000;
        v40.i64[1] = 0xFFFFFFFF00000000;
        v41 = v195[0];
        if (v195[0])
        {
          v42 = v188[0];
          if (v188[0])
          {
            if (v36 >= 0x20)
            {
              v46 = 0;
              v44 = 0;
              v43 = 0;
              v47 = v196 + v195[0];
              v48 = v189 + v188[0];
              do
              {
                v50 = *(v195[0] + v46);
                v49 = *(v195[0] + v46 + 16);
                v52 = *(v47 + v46);
                v51 = *(v47 + v46 + 16);
                v53 = vzip1q_s8(v52, v50);
                v54 = vzip2q_s8(v52, v50);
                v55 = vzip1q_s8(v51, v49);
                v56 = vzip2q_s8(v51, v49);
                v57 = vaddq_s16(vshlq_n_s32(v53, 0x10uLL), v53);
                v58 = vaddq_s16(vshlq_n_s32(v54, 0x10uLL), v54);
                v59 = vaddq_s16(vshlq_n_s32(v55, 0x10uLL), v55);
                v60 = vaddq_s16(vshlq_n_s32(v56, 0x10uLL), v56);
                v61 = vaddq_s16(vandq_s8(vqtbl1q_s8(v60, xmmword_296B8F090), v40), v60);
                v62 = vaddq_s16(vandq_s8(vqtbl1q_s8(v59, xmmword_296B8F090), v40), v59);
                v63 = vaddq_s16(vandq_s8(vqtbl1q_s8(v58, xmmword_296B8F090), v40), v58);
                v64 = vaddq_s16(vandq_s8(vqtbl1q_s8(v57, xmmword_296B8F090), v40), v57);
                v66 = *(v188[0] + v46);
                v65 = *(v188[0] + v46 + 16);
                v68 = *(v48 + v46);
                v67 = *(v48 + v46 + 16);
                v69 = vzip1q_s8(v68, v66);
                v70 = vzip2q_s8(v68, v66);
                v71 = vzip1q_s8(v67, v65);
                v72 = vzip2q_s8(v67, v65);
                v73 = vaddq_s16(vshlq_n_s32(v69, 0x10uLL), v69);
                v74 = vaddq_s16(vshlq_n_s32(v70, 0x10uLL), v70);
                v75 = vaddq_s16(vshlq_n_s32(v71, 0x10uLL), v71);
                v76 = vaddq_s16(vshlq_n_s32(v72, 0x10uLL), v72);
                v77 = vaddq_s16(vandq_s8(vqtbl1q_s8(v76, xmmword_296B8F090), v40), v76);
                v78 = vaddq_s16(vandq_s8(vqtbl1q_s8(v75, xmmword_296B8F090), v40), v75);
                v79 = vaddq_s16(vandq_s8(vqtbl1q_s8(v74, xmmword_296B8F090), v40), v74);
                v80 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v64.i8, 3), v64), vaddq_s16(vdupq_lane_s16(*v63.i8, 3), v63));
                v81 = vaddq_s16(vandq_s8(vqtbl1q_s8(v73, xmmword_296B8F090), v40), v73);
                v82 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*&v62, 3), v62), vaddq_s16(vdupq_lane_s16(*&v61, 3), v61)), v80).u16[7];
                v39 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v78.i8, 3), v78), vaddq_s16(vdupq_lane_s16(*v77.i8, 3), v77));
                v38 = vaddq_s16(v39, vaddq_s16(vaddq_s16(vdupq_lane_s16(*v81.i8, 3), v81), vaddq_s16(vdupq_lane_s16(*v79.i8, 3), v79)));
                v44 += v82;
                v43 += v38.u16[7];
                v83 = v46 + 64;
                v46 += 32;
              }

              while (v83 <= v36);
              v45 = v36 & 0xFFFFFFE0;
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
            }

            if ((v45 | 8) <= v36)
            {
              do
              {
                v38.i64[0] = *(v195[0] + v45);
                v39.i64[0] = *(v196 + v195[0] + v45);
                v85 = vzip1q_s8(v39, v38);
                v86 = vaddq_s16(vshlq_n_s32(v85, 0x10uLL), v85);
                v87 = vextq_s8(v86, v86, 0xCuLL);
                v88 = vaddq_s16(v87, v86);
                v89 = v88.u16[3];
                v88.i64[0] = *(v188[0] + v45);
                v44 += v88.u16[7] + v89;
                v87.i64[0] = *(v189 + v188[0] + v45);
                v90 = vzip1q_s8(v87, v88);
                v91 = vaddq_s16(vshlq_n_s32(v90, 0x10uLL), v90);
                v39 = vextq_s8(v91, v91, 0xCuLL);
                v38 = vaddq_s16(v39, v91);
                v43 += v38.u16[7] + v38.u16[3];
                v84 = v45 + 8;
                v92 = v45 + 16;
                v45 += 8;
              }

              while (v92 <= v36);
            }

            else
            {
              v84 = v45;
            }

            v93 = v36 - v84;
            if (v36 > v84)
            {
              v94 = (v84 + v195[0] + v196);
              v95 = (v195[0] + v84);
              v96 = (v84 + v188[0] + v189);
              v97 = (v188[0] + v84);
              do
              {
                v99 = *v95++;
                v98 = v99;
                v100 = *v94++;
                v101 = v100 | (v98 << 8);
                v102 = *v97++;
                result = v102;
                v44 += v101;
                v103 = *v96++;
                v43 += v103 | (result << 8);
                --v93;
              }

              while (v93);
              v84 = v36;
            }

            if (v84 + 32 <= v37)
            {
              v106 = v196 + v195[0];
              v107 = v189 + v188[0];
              v108 = a11;
              do
              {
                v110 = *(v41 + v84);
                v109 = *(v41 + v84 + 16);
                v112 = *(v106 + v84);
                v111 = *(v106 + v84 + 16);
                v113 = vzip2q_s8(v112, v110);
                v114 = vzip2q_s8(v111, v109);
                v115 = vzip1q_s8(v111, v109);
                v116 = vzip1q_s8(v112, v110);
                v117 = vaddq_s16(vshlq_n_s32(v113, 0x10uLL), v113);
                v118 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                v119 = vaddq_s16(vshlq_n_s32(v115, 0x10uLL), v115);
                v120 = vaddq_s16(vshlq_n_s32(v116, 0x10uLL), v116);
                v121 = vaddq_s16(vandq_s8(vqtbl1q_s8(v120, xmmword_296B8F090), v40), v120);
                v122 = vaddq_s16(vandq_s8(vqtbl1q_s8(v119, xmmword_296B8F090), v40), v119);
                v123 = vaddq_s16(vandq_s8(vqtbl1q_s8(v118, xmmword_296B8F090), v40), v118);
                v124 = vaddq_s16(vandq_s8(vqtbl1q_s8(v117, xmmword_296B8F090), v40), v117);
                v125 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v122.i8, 3), xmmword_296B8F0A0), v122);
                v126 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v121.i8, 3), xmmword_296B8F0A0), v121);
                v127 = vdupq_n_s16(v44);
                v129 = *(v42 + v84);
                v128 = *(v42 + v84 + 16);
                v130 = vdupq_laneq_s16(v126, 7);
                v132 = *(v107 + v84);
                v131 = *(v107 + v84 + 16);
                v133 = vdupq_laneq_s16(v125, 7);
                v134 = vzip2q_s8(v132, v129);
                v135 = vzip1q_s8(v132, v129);
                v136 = vaddq_s16(vshlq_n_s32(v135, 0x10uLL), v135);
                v137 = vaddq_s16(v125, v127);
                v138 = vaddq_s16(vandq_s8(vqtbl1q_s8(v136, xmmword_296B8F090), v40), v136);
                v139 = vaddq_s16(v126, v127);
                v140 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v138.i8, 3), xmmword_296B8F0A0), v138);
                v141 = vdupq_n_s16(v43);
                v142 = vaddq_s16(v140, v141);
                v143 = v108 + 32;
                v207.val[0] = vzip1q_s16(v139, v186);
                v144 = v108 + 48;
                v145 = v108 + 64;
                v146 = v108 + 80;
                v147 = v108 + 96;
                v148 = v108 + 112;
                v207.val[1] = vzip1q_s16(v187, v142);
                v149 = v108;
                vst2q_s16(v149, v207);
                v149 += 16;
                v207.val[0] = vzip2q_s16(v139, v186);
                v207.val[1] = vzip2q_s16(v187, v142);
                vst2q_s16(v149, v207);
                v150 = vzip2q_s8(v131, v128);
                v151 = vzip1q_s8(v131, v128);
                v152 = vaddq_s16(v133, vaddq_s16(vandq_s8(vdupq_lane_s16(*v123.i8, 3), xmmword_296B8F0A0), v123));
                v153 = vaddq_s16(vshlq_n_s32(v134, 0x10uLL), v134);
                v154 = vaddq_s16(vshlq_n_s32(v150, 0x10uLL), v150);
                v155 = vaddq_s16(vshlq_n_s32(v151, 0x10uLL), v151);
                v156 = vaddq_s16(v130, vaddq_s16(vandq_s8(vdupq_lane_s16(*v124.i8, 3), xmmword_296B8F0A0), v124));
                v157 = vdupq_laneq_s16(v156, 7);
                v158 = vaddq_s16(vandq_s8(vqtbl1q_s8(v155, xmmword_296B8F090), v40), v155);
                v159 = vaddq_s16(vandq_s8(vqtbl1q_s8(v154, xmmword_296B8F090), v40), v154);
                v160 = vaddq_s16(vandq_s8(vqtbl1q_s8(v153, xmmword_296B8F090), v40), v153);
                v161 = vaddq_s16(v152, v127);
                v162 = vaddq_s16(v156, v127);
                v163 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v158.i8, 3), xmmword_296B8F0A0), v158);
                v164 = vaddq_s16(v161, v157);
                v165 = vaddq_s16(v137, v157);
                v166 = vaddq_s16(vdupq_laneq_s16(v140, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v160.i8, 3), xmmword_296B8F0A0), v160));
                v167 = vdupq_laneq_s16(v166, 7);
                v168 = vaddq_s16(v166, v141);
                v39 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v163, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v159.i8, 3), xmmword_296B8F0A0), v159)), v141), v167);
                v169 = vaddq_s16(v163, v141);
                v205.val[0] = vzip2q_s16(v162, v186);
                v205.val[1] = vzip2q_s16(v187, v168);
                v206.val[0] = vzip1q_s16(v162, v186);
                v206.val[1] = vzip1q_s16(v187, v168);
                v38 = vaddq_s16(v169, v167);
                vst2q_s16(v143, v206);
                v44 = v164.u16[7];
                vst2q_s16(v144, v205);
                v43 = v39.u16[7];
                v204.val[0] = vzip1q_s16(v165, v186);
                v204.val[1] = vzip1q_s16(v187, v38);
                vst2q_s16(v145, v204);
                v170 = vzip2q_s16(v165, v186);
                v204.val[0] = vzip2q_s16(v187, v38);
                vst2q_s16(v146, v204);
                v171 = vzip1q_s16(v164, v186);
                v204.val[0] = vzip1q_s16(v187, v39);
                vst2q_s16(v147, v204);
                v202.val[0] = vzip2q_s16(v164, v186);
                v202.val[1] = vzip2q_s16(v187, v39);
                vst2q_s16(v148, v202);
                v105 = v108 + 128;
                v104 = v84 + 32;
                result = v84 + 64;
                v84 += 32;
                v108 += 128;
              }

              while (result <= v37);
            }

            else
            {
              v104 = v84;
              v105 = a11;
            }

            if (v104 + 8 <= v37)
            {
              v174 = v196 + v41;
              v175 = v189 + v42;
              do
              {
                v38.i64[0] = *(v41 + v104);
                v39.i64[0] = *(v174 + v104);
                v176 = vzip1q_s8(v39, v38);
                v177 = vaddq_s16(vshlq_n_s32(v176, 0x10uLL), v176);
                v178 = vaddq_s16(vandq_s8(vqtbl1q_s8(v177, xmmword_296B8F090), v40), v177);
                v179 = vandq_s8(vdupq_lane_s16(*v178.i8, 3), xmmword_296B8F0A0);
                v180 = vdupq_n_s16(v44);
                v38 = vaddq_s16(vaddq_s16(v178, v180), v179);
                v44 = v38.u16[7];
                v179.i64[0] = *(v42 + v104);
                v180.i64[0] = *(v175 + v104);
                v181 = vzip1q_s8(v180, v179);
                v182 = vaddq_s16(vshlq_n_s32(v181, 0x10uLL), v181);
                v183 = vaddq_s16(vandq_s8(vqtbl1q_s8(v182, xmmword_296B8F090), v40), v182);
                v39 = vaddq_s16(vaddq_s16(v183, vdupq_n_s16(v43)), vandq_s8(vdupq_lane_s16(*v183.i8, 3), xmmword_296B8F0A0));
                v43 = v39.u16[7];
                v203.val[0] = vzip1q_s16(v38, v186);
                v203.val[1] = vzip1q_s16(v187, v39);
                v173 = v105 + 32;
                vst2q_s16(v105, v203);
                v184 = v105 + 16;
                v203.val[0] = vzip2q_s16(v38, v186);
                v203.val[1] = vzip2q_s16(v187, v39);
                vst2q_s16(v184, v203);
                v172 = v104 + 8;
                result = v104 + 16;
                v104 += 8;
                v105 = v173;
              }

              while (result <= v37);
            }

            else
            {
              v172 = v104;
              v173 = v105;
            }

            if (v172 < v37)
            {
              do
              {
                v44 += *(v195[0] + v172 + v196) | (*(v195[0] + v172) << 8);
                LOWORD(v185) = v44;
                WORD1(v185) = v22;
                WORD2(v185) = v28;
                v43 += *(v188[0] + v172 + v189) | (*(v188[0] + v172) << 8);
                HIWORD(v185) = v43;
                *v173 = v185;
                v173 += 4;
                ++v172;
              }

              while (v37 != v172);
            }
          }
        }

        a11 = (a11 + a12);
        v33 += a10;
      }

      while (v33 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, double **a5, double **a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v222 = 3;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v220 = v20.i32[0];
    v218 = v19;
    v216[1] = result;
    v219 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v217 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v221 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v216);
    v23 = *a5;
    if (*(*a5 + 24))
    {
      v22 = *v23;
      *&v22 = *v23;
    }

    else
    {
      LODWORD(v22) = 2143289344;
    }

    v205 = *&v22;
    v24 = *a6;
    if (*(*a6 + 24))
    {
      v22 = *v24;
      *&v22 = *v24;
    }

    else
    {
      LODWORD(v22) = 2143289344;
    }

    v206 = *&v22;
    v215 = 3;
    v25 = *(a7 + 8);
    v26 = a3[3];
    v213 = v26.i32[0];
    v211 = v25;
    v209[1] = v17;
    v212 = a3[6].i32[1] + v26.i32[1] * v18;
    v27 = a3[7].u32[1];
    v210 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v214 = v27;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v209);
    v28 = a3[6].u32[1];
    if (a3[7].u32[0] + v28 < v18)
    {
      v30 = a3[3].i32[1] * *(a2 + 60);
      v31 = a3[5].u32[1];
      v32 = v31 + a9;
      v208 = vdupq_lane_s32(v205, 0);
      v204 = vdupq_lane_s32(v206, 0);
      do
      {
        v219 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v216);
        v212 = v30 + v28;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v209);
        v37 = 0uLL;
        v38 = v216[0];
        if (v216[0])
        {
          v39 = v209[0];
          if (v209[0])
          {
            if (v31 >= 0x20)
            {
              v48 = 0;
              v49 = v216[0] + 2 * v217;
              v50 = v217 + v216[0];
              v51 = v209[0] + 2 * v210;
              v52 = v210 + v209[0];
              v42.i64[0] = 0;
              v41.i64[0] = 0;
              v44 = xmmword_296B8F020;
              v43 = xmmword_296B8F050;
              v46 = xmmword_296B8F0B0;
              v53 = xmmword_296B8F000;
              v47 = xmmword_296B8F030;
              v45 = xmmword_296B8F0C0;
              do
              {
                v223.val[1] = *(v216[0] + v48);
                v225.val[1] = *(v216[0] + v48 + 16);
                v223.val[0] = *(v49 + v48);
                v225.val[0] = *(v49 + v48 + 16);
                v227.val[1] = vqtbl2q_s8(v223, v43);
                v55 = *(v50 + v48);
                v54 = *(v50 + v48 + 16);
                v227.val[0] = vqtbl1q_s8(v55, v46);
                v227.val[0] = vqtbl2q_s8(v227, xmmword_296B8F020);
                v231.val[1] = vqtbl2q_s8(v225, v43);
                v231.val[0] = vqtbl1q_s8(v54, v46);
                v227.val[1] = vqtbl2q_s8(v231, xmmword_296B8F020);
                v231.val[1] = vqtbl2q_s8(v225, v53);
                v231.val[0] = vqtbl1q_s8(v54, v45);
                v231.val[0] = vqtbl2q_s8(v231, xmmword_296B8F020);
                v56 = vqtbl2q_s8(v223, xmmword_296B8F070);
                v231.val[1] = vqtbl1q_s8(v55, xmmword_296B8F0D0);
                v231.val[1] = vqtbl2q_s8(*(&v231 + 16), xmmword_296B8F020);
                v234.val[1] = vqtbl2q_s8(v223, v53);
                v234.val[0] = vqtbl1q_s8(v55, v45);
                v234.val[0] = vqtbl2q_s8(v234, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v223, v47);
                v223.val[0] = vqtbl1q_s8(v55, xmmword_296B8F0E0);
                v57 = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v225, xmmword_296B8F070);
                v223.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0D0);
                v234.val[1] = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v225, v47);
                v223.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0E0);
                v225.val[1] = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[0] = vaddq_s32(vshlq_n_s64(v227.val[0], 0x20uLL), v227.val[0]);
                v223.val[1] = vaddq_s32(vshlq_n_s64(v227.val[1], 0x20uLL), v227.val[1]);
                v225.val[0] = vaddq_s32(vshlq_n_s64(v231.val[0], 0x20uLL), v231.val[0]);
                v231.val[1] = vaddq_s32(vshlq_n_s64(v231.val[1], 0x20uLL), v231.val[1]);
                v58 = vaddq_s32(vshlq_n_s64(v57, 0x20uLL), v57);
                v227.val[1] = vaddq_s32(vshlq_n_s64(v234.val[1], 0x20uLL), v234.val[1]);
                v225.val[1] = vaddq_s32(vshlq_n_s64(v225.val[1], 0x20uLL), v225.val[1]);
                v234.val[0] = vaddq_s32(vshlq_n_s64(v234.val[0], 0x20uLL), v234.val[0]);
                v236.val[1] = *(v209[0] + v48);
                v238.val[1] = *(v209[0] + v48 + 16);
                v60 = *(v52 + v48);
                v59 = *(v52 + v48 + 16);
                v236.val[0] = *(v51 + v48);
                v238.val[0] = *(v51 + v48 + 16);
                v240.val[1] = vqtbl2q_s8(v236, v43);
                v240.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0B0);
                v234.val[1] = vdupq_lane_s32(*v225.val[0].i8, 1);
                v240.val[0] = vqtbl2q_s8(v240, xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v238, v43);
                v228.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0B0);
                v240.val[1] = vqtbl2q_s8(v228, xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v238, xmmword_296B8F000);
                v228.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0C0);
                v61 = vqtbl2q_s8(v228, xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v236, xmmword_296B8F070);
                v228.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0D0);
                v228.val[0] = vqtbl2q_s8(v228, xmmword_296B8F020);
                v62 = vqtbl2q_s8(v236, xmmword_296B8F000);
                v228.val[1] = vqtbl1q_s8(v60, xmmword_296B8F0C0);
                v63 = vqtbl2q_s8(*(&v228 + 16), xmmword_296B8F020);
                v43 = xmmword_296B8F050;
                v228.val[1] = vdupq_lane_s32(*v223.val[1].i8, 1);
                v236.val[1] = vqtbl2q_s8(v236, xmmword_296B8F030);
                v236.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0E0);
                v231.val[0] = vqtbl2q_s8(v236, xmmword_296B8F020);
                v236.val[1] = vqtbl2q_s8(v238, xmmword_296B8F070);
                v236.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0D0);
                v64 = vqtbl2q_s8(v236, xmmword_296B8F020);
                v236.val[1] = vqtbl2q_s8(v238, xmmword_296B8F030);
                v236.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0E0);
                v238.val[0] = vdupq_lane_s32(*v223.val[0].i8, 1);
                v238.val[0].i64[0] = 0;
                v228.val[1].i64[0] = 0;
                v234.val[1].i64[0] = 0;
                v227.val[0] = vqtbl2q_s8(v236, xmmword_296B8F020);
                v236.val[0] = vaddq_s32(vshlq_n_s64(v240.val[0], 0x20uLL), v240.val[0]);
                v47 = xmmword_296B8F030;
                v236.val[1] = vaddq_s32(vshlq_n_s64(v240.val[1], 0x20uLL), v240.val[1]);
                v65 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v58.i8, 1), v58), vaddq_s32(vdupq_lane_s32(*v234.val[0].i8, 1), v234.val[0]));
                v234.val[0] = vaddq_s32(vshlq_n_s64(v61, 0x20uLL), v61);
                v238.val[1] = vaddq_s32(vshlq_n_s64(v228.val[0], 0x20uLL), v228.val[0]);
                v225.val[0] = vaddq_s32(v234.val[1], v225.val[0]);
                v234.val[1] = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
                v66 = vaddq_s32(vshlq_n_s64(v64, 0x20uLL), v64);
                v227.val[0] = vaddq_s32(vshlq_n_s64(v227.val[0], 0x20uLL), v227.val[0]);
                v231.val[0] = vaddq_s32(vshlq_n_s64(v231.val[0], 0x20uLL), v231.val[0]);
                v67 = vdupq_lane_s32(*v234.val[0].i8, 1);
                v223.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v231.val[1].i8, 1), v231.val[1]), vaddq_s32(v238.val[0], v223.val[0]));
                v67.i64[0] = 0;
                v231.val[1] = vaddq_s32(v67, v234.val[0]);
                v234.val[0] = vdupq_lane_s32(*v236.val[1].i8, 1);
                v223.val[1] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v227.val[1].i8, 1), v227.val[1]), 3), vaddq_s32(v228.val[1], v223.val[1]));
                v234.val[0].i64[0] = 0;
                v36 = vaddq_s32(v234.val[0], v236.val[1]);
                v236.val[1] = vdupq_lane_s32(*v236.val[0].i8, 1);
                v223.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v225.val[1].i8, 1), v225.val[1]), 3), v225.val[0]), v223.val[1]);
                v236.val[1].i64[0] = 0;
                v225.val[0] = vaddq_s32(v236.val[1], v236.val[0]);
                v46 = xmmword_296B8F0B0;
                v53 = xmmword_296B8F000;
                v45 = xmmword_296B8F0C0;
                v35 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v238.val[1].i8, 1), v238.val[1]), v225.val[0]);
                v42 = vaddq_s32(vaddq_s32(v223.val[1], vaddq_s32(v223.val[0], v65)), vdupq_lane_s32(*v42.i8, 0));
                v34 = vaddq_s32(v35, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v231.val[0].i8, 1), v231.val[0]), vaddq_s32(vdupq_lane_s32(*v234.val[1].i8, 1), v234.val[1])));
                v68 = v48 + 64;
                v42.i32[0] = v42.i32[3];
                v33 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v227.val[0].i8, 1), v227.val[0]), 3), v231.val[1]), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v66.i8, 1), v66), 3), v36)), v34);
                v48 += 32;
                v41 = vaddq_s32(v33, vdupq_lane_s32(*v41.i8, 0));
                v41.i32[0] = v41.i32[3];
              }

              while (v68 <= v31);
              v40 = v31 & 0xFFFFFFE0;
              v37 = 0uLL;
            }

            else
            {
              v40 = 0;
              v41.i64[0] = 0;
              v42.i64[0] = 0;
              v44 = xmmword_296B8F020;
              v43 = xmmword_296B8F050;
              v45 = xmmword_296B8F0C0;
              v46 = xmmword_296B8F0B0;
              v47 = xmmword_296B8F030;
            }

            if ((v40 | 8) <= v31)
            {
              do
              {
                v33.i64[0] = *(v216[0] + v40);
                v34.i64[0] = *(v217 + v216[0] + v40);
                v35.i64[0] = *(v216[0] + 2 * v217 + v40);
                v70 = vzip1q_s8(v37, v34);
                v71 = vzip1q_s8(v35, v33);
                v72 = vzip1q_s8(v70, v71);
                v73 = vzip2q_s8(v70, v71);
                v74 = vaddq_s32(vshlq_n_s64(v73, 0x20uLL), v73);
                v75 = vdupq_lane_s32(*v74.i8, 1);
                v76 = vaddq_s32(vshlq_n_s64(v72, 0x20uLL), v72);
                v77 = vaddq_s32(vdupq_lane_s32(*v76.i8, 1), v76);
                v42 = vaddq_s32(v75, vaddq_s32(v74, vdupq_lane_s32(*v42.i8, 0)));
                v74.i64[0] = *(v209[0] + v40);
                v75.i64[0] = *(v210 + v209[0] + v40);
                v42.i32[0] = v42.i32[3] + v77.i32[3];
                v77.i64[0] = *(v209[0] + 2 * v210 + v40);
                v78 = vzip1q_s8(v37, v75);
                v79 = vzip1q_s8(v77, v74);
                v80 = vzip1q_s8(v78, v79);
                v81 = vzip2q_s8(v78, v79);
                v33 = vaddq_s32(vshlq_n_s64(v81, 0x20uLL), v81);
                v34 = vdupq_lane_s32(*v33.i8, 1);
                v82 = vaddq_s32(vshlq_n_s64(v80, 0x20uLL), v80);
                v35 = vaddq_s32(vdupq_lane_s32(*v82.i8, 1), v82);
                v41 = vaddq_s32(v34, vaddq_s32(v33, vdupq_lane_s32(*v41.i8, 0)));
                v41.i32[0] = v41.i32[3] + v35.i32[3];
                v69 = v40 + 8;
                v83 = v40 + 16;
                v40 += 8;
              }

              while (v83 <= v31);
            }

            else
            {
              v69 = v40;
            }

            if (v69 <= v31)
            {
              v84 = v31;
            }

            else
            {
              v84 = v69;
            }

            if (v84 + 32 <= v32)
            {
              v87 = v216[0] + 2 * v217;
              v88 = v217 + v216[0];
              v89 = v209[0] + 2 * v210;
              v90 = v210 + v209[0];
              v91 = a11;
              do
              {
                v226.val[1] = *(v38 + v84);
                v224.val[1] = *(v38 + v84 + 16);
                v92 = *(v88 + v84);
                v93 = *(v88 + v84 + 16);
                v226.val[0] = *(v87 + v84);
                v224.val[0] = *(v87 + v84 + 16);
                v230.val[1] = vqtbl2q_s8(v226, xmmword_296B8F070);
                v230.val[0] = vqtbl1q_s8(v92, xmmword_296B8F0D0);
                v230.val[0] = vqtbl2q_s8(v230, v44);
                v94 = vqtbl2q_s8(v226, v47);
                v230.val[1] = vqtbl1q_s8(v92, xmmword_296B8F0E0);
                v233.val[1] = vqtbl2q_s8(v224, xmmword_296B8F070);
                v230.val[1] = vqtbl2q_s8(*(&v230 + 16), v44);
                v233.val[0] = vqtbl1q_s8(v93, xmmword_296B8F0D0);
                v95 = vqtbl2q_s8(v233, v44);
                v233.val[1] = vqtbl2q_s8(v224, v47);
                v233.val[0] = vqtbl1q_s8(v93, xmmword_296B8F0E0);
                v207 = v93;
                v235.val[1] = vqtbl2q_s8(v224, v43);
                v233.val[0] = vqtbl2q_s8(v233, v44);
                v235.val[0] = vqtbl1q_s8(v93, v46);
                v235.val[0] = vqtbl2q_s8(v235, v44);
                v96 = vqtbl2q_s8(v226, xmmword_296B8F000);
                v235.val[1] = vqtbl1q_s8(v92, v45);
                v226.val[1] = vqtbl2q_s8(v226, v43);
                v235.val[1] = vqtbl2q_s8(*(&v235 + 16), v44);
                v226.val[0] = vqtbl1q_s8(v92, v46);
                v226.val[0] = vqtbl2q_s8(v226, v44);
                v97 = vaddq_s32(vshlq_n_s64(v230.val[0], 0x20uLL), v230.val[0]);
                v98 = vaddq_s32(vshlq_n_s64(v230.val[1], 0x20uLL), v230.val[1]);
                v233.val[1] = vaddq_s32(vshlq_n_s64(v95, 0x20uLL), v95);
                v230.val[0] = vaddq_s32(vshlq_n_s64(v233.val[0], 0x20uLL), v233.val[0]);
                v230.val[1] = vaddq_s32(vshlq_n_s64(v235.val[0], 0x20uLL), v235.val[0]);
                v235.val[1] = vaddq_s32(vshlq_n_s64(v235.val[1], 0x20uLL), v235.val[1]);
                v226.val[0] = vaddq_s32(vshlq_n_s64(v226.val[0], 0x20uLL), v226.val[0]);
                v226.val[1] = vdupq_lane_s32(*v226.val[0].i8, 1);
                v99 = vdupq_lane_s32(*v235.val[1].i8, 1);
                v100 = vdupq_lane_s32(*v230.val[1].i8, 1);
                v101 = vdupq_lane_s32(*v230.val[0].i8, 1);
                v102 = vdupq_lane_s32(*v233.val[1].i8, 1);
                v103 = vdupq_lane_s32(*v98.i8, 1);
                v104 = vdupq_lane_s32(*v97.i8, 1);
                v104.i64[0] = 0;
                v101.i64[0] = 0;
                v100.i64[0] = 0;
                v99.i64[0] = 0;
                v226.val[1].i64[0] = 0;
                v105 = vaddq_s32(v226.val[1], v226.val[0]);
                v233.val[0] = *(v39 + v84);
                v37 = *(v39 + v84 + 16);
                v235.val[0] = *(v90 + v84);
                v36 = *(v90 + v84 + 16);
                v235.val[1] = vaddq_s32(v99, v235.val[1]);
                v106 = *(v89 + v84);
                v226.val[0] = *(v89 + v84 + 16);
                v229.val[1] = vqtbl2q_s8(v233, xmmword_296B8F070);
                v229.val[0] = vqtbl1q_s8(v235.val[0], xmmword_296B8F0D0);
                v230.val[1] = vaddq_s32(v100, v230.val[1]);
                v107 = vqtbl2q_s8(v229, v44);
                v229.val[1] = vqtbl2q_s8(v233, xmmword_296B8F030);
                v229.val[0] = vqtbl1q_s8(v235.val[0], xmmword_296B8F0E0);
                v108 = vqtbl2q_s8(v229, v44);
                v229.val[1] = vqtbl2q_s8(*(&v37 - 1), xmmword_296B8F070);
                v230.val[0] = vaddq_s32(v101, v230.val[0]);
                v229.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0D0);
                v109 = vqtbl2q_s8(v229, v44);
                v229.val[1] = vqtbl2q_s8(v233, v43);
                v229.val[0] = vqtbl1q_s8(v235.val[0], xmmword_296B8F0B0);
                v44 = xmmword_296B8F020;
                v103.i64[0] = 0;
                v229.val[0] = vqtbl2q_s8(v229, xmmword_296B8F020);
                v102.i64[0] = 0;
                v110 = vdupq_lane_s32(*v42.i8, 0);
                v233.val[1] = vaddq_s32(v102, v233.val[1]);
                v111 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                v112 = vaddq_s32(vshlq_n_s64(v108, 0x20uLL), v108);
                v113 = vaddq_s32(v103, v98);
                v114 = vaddq_s32(vshlq_n_s64(v229.val[0], 0x20uLL), v229.val[0]);
                v115 = vdupq_lane_s32(*v114.i8, 1);
                v229.val[0] = vdupq_lane_s32(*v111.i8, 1);
                v116 = vaddq_s32(v104, v97);
                v229.val[0].i64[0] = 0;
                v115.i64[0] = 0;
                v117 = vaddq_s32(v116, v110);
                v118 = vaddq_s32(v115, v114);
                v119 = vaddq_s32(v229.val[0], v111);
                v120 = vaddq_s32(vdupq_laneq_s32(v116, 3), v105);
                v121 = vdupq_lane_s32(*v41.i8, 0);
                v122 = vaddq_s32(v119, v121);
                v229.val[0] = vzip2q_s32(v117, v204);
                v229.val[1] = vzip2q_s32(v208, v122);
                v123 = vaddq_s32(vdupq_laneq_s32(v119, 3), v118);
                v241.val[0] = vzip1q_s32(v117, v204);
                v241.val[1] = vzip1q_s32(v208, v122);
                v124 = v91 + 16;
                v125 = v91 + 24;
                v126 = v91 + 32;
                v127 = v91;
                vst2q_f32(v127, v241);
                v127 += 8;
                v128 = vaddq_s32(v120, v110);
                v129 = vaddq_s32(v123, v121);
                vst2q_f32(v127, v229);
                v241.val[0] = vzip1q_s32(v128, v204);
                v241.val[1] = vzip1q_s32(v208, v129);
                vst2q_f32(v124, v241);
                v241.val[1] = vdupq_lane_s32(*v112.i8, 1);
                v241.val[1].i64[0] = 0;
                v130 = vdupq_laneq_s32(v120, 3);
                v241.val[1] = vaddq_s32(v241.val[1], v112);
                v131 = vdupq_laneq_s32(v123, 3);
                v229.val[0] = vzip2q_s32(v128, v204);
                v229.val[1] = vzip2q_s32(v208, v129);
                v132 = vaddq_s32(vaddq_s32(v113, v110), v130);
                v47 = xmmword_296B8F030;
                vst2q_f32(v125, v229);
                v133 = vaddq_s32(vaddq_s32(v241.val[1], v121), v131);
                v229.val[0] = vzip1q_s32(v132, v204);
                v229.val[1] = vzip1q_s32(v208, v133);
                vst2q_f32(v126, v229);
                v229.val[1] = vqtbl2q_s8(*(&v37 - 1), xmmword_296B8F030);
                v229.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0E0);
                v134 = vqtbl2q_s8(v229, xmmword_296B8F020);
                v233.val[0] = vqtbl2q_s8(v233, xmmword_296B8F000);
                v135 = vqtbl1q_s8(v235.val[0], xmmword_296B8F0C0);
                v136 = vqtbl2q_s8(v233, xmmword_296B8F020);
                v233.val[0] = vaddq_s32(vshlq_n_s64(v109, 0x20uLL), v109);
                v235.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v113, 3), v235.val[1]), v130);
                v137 = vaddq_s32(vshlq_n_s64(v136, 0x20uLL), v136);
                v235.val[1] = vdupq_lane_s32(*v137.i8, 1);
                v235.val[1].i64[0] = 0;
                v138 = v91 + 40;
                v139 = v91 + 48;
                v140 = v91 + 56;
                v141 = v91 + 64;
                v142 = vaddq_s32(vdupq_laneq_s32(v241.val[1], 3), vaddq_s32(v235.val[1], v137));
                v235.val[1] = vaddq_s32(v235.val[0], v110);
                v143 = vaddq_s32(v142, v131);
                v46 = xmmword_296B8F0B0;
                v239.val[0] = vzip2q_s32(v132, v204);
                v239.val[1] = vzip2q_s32(v208, v133);
                v144 = vaddq_s32(v143, v121);
                vst2q_f32(v138, v239);
                v239.val[0] = vzip1q_s32(v235.val[1], v204);
                v239.val[1] = vzip1q_s32(v208, v144);
                vst2q_f32(v139, v239);
                v239.val[1] = vdupq_lane_s32(*v233.val[0].i8, 1);
                v239.val[1].i64[0] = 0;
                v145 = vdupq_laneq_s32(v235.val[0], 3);
                v235.val[0] = vaddq_s32(v239.val[1], v233.val[0]);
                v233.val[0] = vdupq_laneq_s32(v143, 3);
                v235.val[1] = vzip2q_s32(v235.val[1], v204);
                v146 = vzip2q_s32(v208, v144);
                v147 = vaddq_s32(vaddq_s32(v233.val[1], v110), v145);
                vst2q_f32(v140, *(&v235 + 16));
                v235.val[1] = vaddq_s32(vaddq_s32(v235.val[0], v121), v233.val[0]);
                v239.val[0] = vzip1q_s32(v147, v204);
                v239.val[1] = vzip1q_s32(v208, v235.val[1]);
                vst2q_f32(v141, v239);
                v239.val[1] = vqtbl2q_s8(*(&v37 - 1), v43);
                v239.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0B0);
                v148 = vqtbl2q_s8(v239, xmmword_296B8F020);
                v149 = vaddq_s32(vshlq_n_s64(v148, 0x20uLL), v148);
                v150 = v91 + 72;
                v151 = v91 + 80;
                v152 = v91 + 88;
                v153 = v91 + 96;
                v230.val[1] = vaddq_s32(vdupq_laneq_s32(v233.val[1], 3), v230.val[1]);
                v233.val[1] = vdupq_lane_s32(*v149.i8, 1);
                v233.val[1].i64[0] = 0;
                v233.val[1] = vaddq_s32(v233.val[1], v149);
                v154 = vaddq_s32(vaddq_s32(v230.val[1], v110), v145);
                v233.val[1] = vaddq_s32(vdupq_laneq_s32(v235.val[0], 3), v233.val[1]);
                v239.val[0] = vzip2q_s32(v147, v204);
                v239.val[1] = vzip2q_s32(v208, v235.val[1]);
                v235.val[0] = vaddq_s32(vaddq_s32(v233.val[1], v121), v233.val[0]);
                vst2q_f32(v150, v239);
                v239.val[0] = vzip1q_s32(v154, v204);
                v239.val[1] = vzip1q_s32(v208, v235.val[0]);
                vst2q_f32(v151, v239);
                v235.val[1] = vaddq_s32(vshlq_n_s64(v134, 0x20uLL), v134);
                v155 = vdupq_lane_s32(*v235.val[1].i8, 1);
                v230.val[1] = vdupq_laneq_s32(v230.val[1], 3);
                v155.i64[0] = 0;
                v233.val[1] = vdupq_laneq_s32(v233.val[1], 3);
                v235.val[1] = vaddq_s32(v155, v235.val[1]);
                v237.val[0] = vzip2q_s32(v154, v204);
                v237.val[1] = vzip2q_s32(v208, v235.val[0]);
                v156 = vaddq_s32(vaddq_s32(vaddq_s32(v230.val[0], v230.val[1]), v110), v145);
                v235.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v235.val[1], v233.val[1]), v121), v233.val[0]);
                vst2q_f32(v152, v237);
                v237.val[0] = vzip1q_s32(v156, v204);
                v237.val[1] = vzip1q_s32(v208, v235.val[0]);
                vst2q_f32(v153, v237);
                v45 = xmmword_296B8F0C0;
                v224.val[1] = vqtbl2q_s8(v224, xmmword_296B8F000);
                v224.val[0] = vqtbl1q_s8(v207, xmmword_296B8F0C0);
                v157 = vqtbl2q_s8(v224, xmmword_296B8F020);
                v158 = vaddq_s32(vshlq_n_s64(v157, 0x20uLL), v157);
                v224.val[0] = vdupq_lane_s32(*v158.i8, 1);
                v224.val[0].i64[0] = 0;
                v159 = vaddq_s32(vdupq_laneq_s32(v230.val[0], 3), vaddq_s32(v224.val[0], v158));
                v224.val[1] = vqtbl2q_s8(*(&v37 - 1), xmmword_296B8F000);
                v224.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0C0);
                v224.val[0] = vqtbl2q_s8(v224, xmmword_296B8F020);
                v224.val[0] = vaddq_s32(vshlq_n_s64(v224.val[0], 0x20uLL), v224.val[0]);
                v35 = vdupq_lane_s32(*v224.val[0].i8, 1);
                v35.i64[0] = 0;
                v42 = vaddq_s32(vaddq_s32(vaddq_s32(v159, v230.val[1]), v110), v145);
                v41 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v235.val[1], 3), vaddq_s32(v35, v224.val[0])), v233.val[1]), v121), v233.val[0]);
                v160 = vzip2q_s32(v156, v204);
                v224.val[0] = vzip2q_s32(v208, v235.val[0]);
                v161 = v91 + 104;
                v162 = v91 + 112;
                v163 = v91 + 120;
                vst2q_f32(v161, v224);
                v164 = vzip1q_s32(v42, v204);
                v224.val[0] = vzip1q_s32(v208, v41);
                vst2q_f32(v162, v224);
                v33 = vzip2q_s32(v42, v204);
                v34 = vzip2q_s32(v208, v41);
                vst2q_f32(v163, *v33.i8);
                v86 = v91 + 128;
                v85 = v84 + 32;
                result = v84 + 64;
                v84 += 32;
                v42.i32[0] = v42.i32[3];
                v91 += 128;
                v41.i32[0] = v41.i32[3];
              }

              while (result <= v32);
            }

            else
            {
              v85 = v84;
              v86 = a11;
            }

            if (v85 + 8 <= v32)
            {
              v167 = v38 + 2 * v217;
              v168 = v217 + v38;
              v169 = v39 + 2 * v210;
              v170 = v210 + v39;
              do
              {
                v33.i64[0] = *(v38 + v85);
                v34.i64[0] = *(v168 + v85);
                v35.i64[0] = *(v167 + v85);
                v171 = vzip1q_s8(0, v34);
                v172 = vzip1q_s8(v35, v33);
                v173 = vzip1q_s8(v171, v172);
                v174 = vzip2q_s8(v171, v172);
                v175 = vshlq_n_s64(v174, 0x20uLL);
                v176 = vaddq_s32(vshlq_n_s64(v173, 0x20uLL), v173);
                v177 = vaddq_s32(v175, v174);
                v178 = vdupq_lane_s32(*v42.i8, 0);
                v175.i64[0] = *(v39 + v85);
                v179 = vdupq_lane_s32(*v177.i8, 1);
                v37.i64[0] = *(v170 + v85);
                v36.i64[0] = *(v169 + v85);
                v180 = vdupq_lane_s32(*v176.i8, 1);
                v181 = vaddq_s32(v177, v178);
                v182 = vzip1q_s8(0, v37);
                v183 = vzip1q_s8(v36, v175);
                v184 = vzip1q_s8(v182, v183);
                v180.i64[0] = 0;
                v185 = vzip2q_s8(v182, v183);
                v186 = vaddq_s32(vshlq_n_s64(v184, 0x20uLL), v184);
                v179.i64[0] = 0;
                v187 = vaddq_s32(vshlq_n_s64(v185, 0x20uLL), v185);
                v188 = vdupq_lane_s32(*v187.i8, 1);
                v189 = vdupq_lane_s32(*v186.i8, 1);
                v190 = vaddq_s32(v180, v176);
                v189.i64[0] = 0;
                v188.i64[0] = 0;
                v191 = vdupq_laneq_s32(v190, 3);
                v36 = vaddq_s32(v189, v186);
                v192 = vdupq_laneq_s32(v36, 3);
                v193 = vdupq_lane_s32(*v41.i8, 0);
                v42 = vaddq_s32(v190, v178);
                v194 = vaddq_s32(v179, v181);
                v195 = vaddq_s32(v36, v193);
                v196 = vzip2q_s32(v42, v204);
                v232.val[0] = vzip1q_s32(v42, v204);
                v36.i64[1] = v208.i64[1];
                v232.val[1] = vzip1q_s32(v208, v195);
                v166 = v86 + 32;
                v197 = v86 + 16;
                v198 = v86 + 24;
                v199 = vaddq_s32(v194, v191);
                vst2q_f32(v86, v232);
                v200 = v86 + 8;
                v41 = vaddq_s32(vaddq_s32(v188, vaddq_s32(v187, v193)), v192);
                v37 = vzip2q_s32(v208, v195);
                vst2q_f32(v200, *(&v37 - 1));
                v42.i32[0] = v199.i32[3];
                v201 = vzip1q_s32(v199, v204);
                v35 = vzip1q_s32(v208, v41);
                vst2q_f32(v197, *(&v35 - 1));
                v33 = vzip2q_s32(v199, v204);
                v34 = vzip2q_s32(v208, v41);
                vst2q_f32(v198, *v33.i8);
                v41.i32[0] = v41.i32[3];
                v165 = v85 + 8;
                result = v85 + 16;
                v85 += 8;
                v86 = v166;
              }

              while (result <= v32);
            }

            else
            {
              v165 = v85;
              v166 = v86;
            }

            if (v165 < v32)
            {
              v202 = v41.i32[0];
              do
              {
                LODWORD(v203) = ((*(v216[0] + v165) << 24) | (*(v216[0] + v165 + v217) << 16) | (*(v216[0] + v165 + 2 * v217) << 8)) + v42.i32[0];
                DWORD1(v203) = v205.i32[0];
                DWORD2(v203) = v206.i32[0];
                HIDWORD(v203) = ((*(v209[0] + v165) << 24) | (*(v209[0] + v165 + v210) << 16) | (*(v209[0] + v165 + 2 * v210) << 8)) + v202;
                *v166 = v203;
                v166 += 4;
                ++v165;
              }

              while (v32 != v165);
            }
          }
        }

        a11 = (a11 + a12);
        v28 += a10;
      }

      while (v28 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

float *CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(float *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v18 = result;
    v19 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      v12 = **a4;
    }

    v187 = 4;
    v20 = *(a5 + 8);
    v21 = a3[3];
    v185 = v21.i32[0];
    v183 = v20;
    v181[1] = result;
    v184 = a3[6].i32[1] + v21.i32[1] * v19;
    v22 = a3[7].u32[1];
    v182 = vmin_u32(vmls_s32(*(*(*&v20[5] + 8 * v22) + 16), v20[6], v21), v20[6]).u32[0];
    v186 = v22;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v181);
    if (*(*a6 + 24))
    {
      LODWORD(a6) = **a6;
    }

    v180 = 4;
    v23 = *(a7 + 8);
    v24 = a3[3];
    v178 = v24.i32[0];
    v176 = v23;
    v174[1] = v18;
    v177 = a3[6].i32[1] + v24.i32[1] * v19;
    v25 = a3[7].u32[1];
    v175 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v179 = v25;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v174);
    v26 = a3[6].u32[1];
    if (a3[7].u32[0] + v26 < v19)
    {
      v28 = a3[3].i32[1] * *(a2 + 60);
      v29 = a3[5].u32[1];
      v30 = v29 + a9;
      v31.i64[0] = __PAIR64__(a6, v12);
      v31.i64[1] = __PAIR64__(a6, v12);
      do
      {
        v170 = v31;
        v171 = v13;
        v184 = v28 + v26;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v181);
        v177 = v28 + v26;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v174);
        v40 = v12;
        v41 = v181[0];
        if (v181[0])
        {
          v42 = v174[0];
          if (v174[0])
          {
            if (v29 >= 0x20)
            {
              v45 = v182 + v181[0];
              v46 = v182 + v181[0] + 2 * v182;
              v47 = v181[0] + 2 * v182;
              v48 = v175 + v174[0];
              v49 = v175 + v174[0] + 2 * v175;
              v50 = v174[0] + 2 * v175;
              v44 = 0uLL;
              v51 = 32;
              v52 = xmmword_296B8F040;
              do
              {
                v172 = v44;
                result = (v45 + v51);
                v201.val[1] = *(v181[0] + v51 - 32);
                v210.val[1] = *(v181[0] + v51 - 16);
                v204.val[1] = *(v45 + v51 - 32);
                v209.val[1] = *(v45 + v51 - 16);
                v201.val[0] = *(v47 + v51 - 32);
                v210.val[0] = *(v47 + v51 - 16);
                v204.val[0] = *(v46 + v51 - 32);
                v209.val[0] = *(v46 + v51 - 16);
                v168.val[0] = vqtbl2q_s8(v204, v52);
                v168.val[1] = vqtbl2q_s8(v201, xmmword_296B8F030);
                v167.val[0] = vqtbl2q_s8(v204, xmmword_296B8F010);
                v167.val[1] = vqtbl2q_s8(v201, xmmword_296B8F000);
                v166.val[0] = vqtbl2q_s8(v204, xmmword_296B8F080);
                v166.val[1] = vqtbl2q_s8(v201, xmmword_296B8F070);
                v164 = vqtbl2q_s8(v204, xmmword_296B8F060);
                v165 = vqtbl2q_s8(v201, xmmword_296B8F050);
                v162 = vqtbl2q_s8(v209, xmmword_296B8F010);
                v163 = vqtbl2q_s8(v210, xmmword_296B8F000);
                v204.val[0] = vqtbl2q_s8(v210, xmmword_296B8F050);
                v201.val[1] = vqtbl2q_s8(v209, xmmword_296B8F060);
                v207.val[1] = vqtbl2q_s8(v210, xmmword_296B8F070);
                v207.val[0] = vqtbl2q_s8(v209, xmmword_296B8F080);
                v210.val[1] = vqtbl2q_s8(v210, xmmword_296B8F030);
                v212.val[1] = *(v174[0] + v51 - 32);
                v214.val[1] = *(v174[0] + v51 - 16);
                v199.val[1] = *(v48 + v51 - 32);
                v200.val[1] = *(v48 + v51 - 16);
                v210.val[0] = vqtbl2q_s8(v209, xmmword_296B8F040);
                v212.val[0] = *(v50 + v51 - 32);
                v214.val[0] = *(v50 + v51 - 16);
                v199.val[0] = *(v49 + v51 - 32);
                v200.val[0] = *(v49 + v51 - 16);
                v209.val[1] = vqtbl2q_s8(v212, xmmword_296B8F030);
                v209.val[0] = vqtbl2q_s8(v199, xmmword_296B8F040);
                v197.val[1] = vqtbl2q_s8(v212, xmmword_296B8F000);
                v197.val[0] = vqtbl2q_s8(v199, xmmword_296B8F010);
                v195.val[1] = vqtbl2q_s8(v212, xmmword_296B8F070);
                v195.val[0] = vqtbl2q_s8(v199, xmmword_296B8F080);
                v212.val[1] = vqtbl2q_s8(v212, xmmword_296B8F050);
                v212.val[0] = vqtbl2q_s8(v199, xmmword_296B8F060);
                v199.val[1] = vqtbl2q_s8(v214, xmmword_296B8F000);
                v199.val[0] = vqtbl2q_s8(v200, xmmword_296B8F010);
                v190.val[1] = vqtbl2q_s8(v214, xmmword_296B8F050);
                v190.val[0] = vqtbl2q_s8(v200, xmmword_296B8F060);
                v188.val[1] = vqtbl2q_s8(v214, xmmword_296B8F070);
                v188.val[0] = vqtbl2q_s8(v200, xmmword_296B8F080);
                v214.val[1] = vqtbl2q_s8(v214, xmmword_296B8F030);
                v214.val[0] = vqtbl2q_s8(v200, xmmword_296B8F040);
                v53 = vqtbl2q_s8(v168, xmmword_296B8F020);
                v200.val[0] = vqtbl2q_s8(v167, xmmword_296B8F020);
                v54 = vqtbl2q_s8(v166, xmmword_296B8F020);
                v204.val[1] = v164;
                v55 = v165;
                v56 = vqtbl2q_s8(*(&v204 + 16), xmmword_296B8F020);
                v204.val[1] = v162;
                v57 = v163;
                v201.val[0] = vqtbl2q_s8(*(&v204 + 16), xmmword_296B8F020);
                v58 = vqtbl2q_s8(*(&v201 + 16), xmmword_296B8F020);
                v59 = vqtbl2q_s8(v207, xmmword_296B8F020);
                v207.val[0] = vqtbl2q_s8(v210, xmmword_296B8F020);
                v44.i64[1] = v172.i64[1];
                v52 = xmmword_296B8F040;
                v201.val[1] = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
                v204.val[0] = vaddq_s32(vshlq_n_s64(v200.val[0], 0x20uLL), v200.val[0]);
                v204.val[1] = vaddq_s32(vshlq_n_s64(v54, 0x20uLL), v54);
                v60 = vaddq_s32(vshlq_n_s64(v56, 0x20uLL), v56);
                v61 = vaddq_s32(vshlq_n_s64(v201.val[0], 0x20uLL), v201.val[0]);
                v62 = vaddq_s32(vshlq_n_s64(v58, 0x20uLL), v58);
                v201.val[0] = vaddq_s32(vshlq_n_s64(v59, 0x20uLL), v59);
                v63 = vqtbl2q_s8(v209, xmmword_296B8F020);
                v64 = vqtbl2q_s8(v197, xmmword_296B8F020);
                v207.val[0] = vaddq_s32(vshlq_n_s64(v207.val[0], 0x20uLL), v207.val[0]);
                v207.val[1] = vqtbl2q_s8(v195, xmmword_296B8F020);
                v209.val[0] = vqtbl2q_s8(v212, xmmword_296B8F020);
                v209.val[1] = vqtbl2q_s8(v199, xmmword_296B8F020);
                v190.val[0] = vqtbl2q_s8(v190, xmmword_296B8F020);
                v188.val[0] = vqtbl2q_s8(v188, xmmword_296B8F020);
                v188.val[1] = vqtbl2q_s8(v214, xmmword_296B8F020);
                v35 = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
                v65 = vaddq_s32(vshlq_n_s64(v64, 0x20uLL), v64);
                v66 = vaddq_s32(vshlq_n_s64(v207.val[1], 0x20uLL), v207.val[1]);
                v207.val[1] = vaddq_s32(vshlq_n_s64(v209.val[0], 0x20uLL), v209.val[0]);
                v209.val[0] = vaddq_s32(vshlq_n_s64(v209.val[1], 0x20uLL), v209.val[1]);
                v190.val[0] = vaddq_s32(vshlq_n_s64(v190.val[0], 0x20uLL), v190.val[0]);
                v188.val[0] = vaddq_s32(vshlq_n_s64(v188.val[0], 0x20uLL), v188.val[0]);
                v188.val[1] = vaddq_s32(vshlq_n_s64(v188.val[1], 0x20uLL), v188.val[1]);
                v188.val[0] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v188.val[0].i8, 1), v188.val[0]), 3);
                v32 = vextq_s8(v188.val[0], v188.val[0], 8uLL);
                *v32.i8 = vadd_s32(*v32.i8, vadd_s32(vdup_lane_s32(*v190.val[0].i8, 1), *&vextq_s8(v190.val[0], v190.val[0], 8uLL)));
                v34 = vextq_s8(v66, v66, 8uLL);
                v188.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v188.val[1].i8, 1), v188.val[1]), 3);
                *v34.i8 = vadd_s32(vadd_s32(vadd_s32(*v66.i8, *v34.i8), vadd_s32(*v207.val[1].i8, *&vextq_s8(v207.val[1], v207.val[1], 8uLL))), vadd_s32(vadd_s32(*v35.i8, *&vextq_s8(v35, v35, 8uLL)), vadd_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL))));
                v39 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v201.val[0].i8, 1), v201.val[0]), 3);
                *v35.i8 = vadd_s32(*&vextq_s8(v39, v39, 8uLL), vadd_s32(vdup_lane_s32(*v62.i8, 1), *&vextq_s8(v62, v62, 8uLL)));
                v67 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v207.val[0].i8, 1), v207.val[0]), 3);
                v38 = vextq_s8(v67, v67, 8uLL);
                *v32.i8 = vadd_s32(vadd_s32(*&vextq_s8(v188.val[1], v188.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v209.val[0].i8, 1), *&vextq_s8(v209.val[0], v209.val[0], 8uLL))), *v32.i8);
                v33 = vextq_s8(v60, v60, 8uLL);
                *v33.i8 = vadd_s32(vadd_s32(*v204.val[1].i8, *&vextq_s8(v204.val[1], v204.val[1], 8uLL)), vadd_s32(*v60.i8, *v33.i8));
                *v35.i8 = vadd_s32(vadd_s32(*v38.i8, vadd_s32(vdup_lane_s32(*v61.i8, 1), *&vextq_s8(v61, v61, 8uLL))), *v35.i8);
                v36 = vextq_s8(v204.val[0], v204.val[0], 8uLL);
                v37 = vextq_s8(v201.val[1], v201.val[1], 8uLL);
                *v33.i8 = vadd_s32(*v35.i8, vadd_s32(*v33.i8, vadd_s32(vadd_s32(*v201.val[1].i8, *v37.i8), vadd_s32(*v204.val[0].i8, *v36.i8))));
                *v32.i8 = vzip2_s32(*v33.i8, vadd_s32(*v32.i8, *v34.i8));
                *v44.i8 = vadd_s32(*v32.i8, *v172.i8);
                v51 += 32;
              }

              while (v51 <= v29);
              v43 = v29 & 0xFFFFFFE0;
              v40 = v12;
              v31 = v170;
              v13 = v171;
            }

            else
            {
              v43 = 0;
              v44.i64[0] = 0;
            }

            if ((v43 | 8) <= v29)
            {
              do
              {
                v32.i64[0] = *(v181[0] + v43);
                v33.i64[0] = *(v182 + v181[0] + v43);
                v34.i64[0] = *(v181[0] + 2 * v182 + v43);
                v35.i64[0] = *(v182 + v181[0] + 2 * v182 + v43);
                v69 = vzip1q_s8(v35, v33);
                v70 = vzip1q_s8(v34, v32);
                v71 = vzip1q_s8(v69, v70);
                v72 = vzip2q_s8(v69, v70);
                v73 = vshlq_n_s64(v72, 0x20uLL);
                v74 = vshlq_n_s64(v71, 0x20uLL);
                v34 = vaddq_s32(v74, v71);
                v32 = vaddq_s32(v73, v72);
                v73.i64[0] = *(v174[0] + v43);
                v74.i64[0] = *(v175 + v174[0] + v43);
                v36.i64[0] = *(v174[0] + 2 * v175 + v43);
                v37.i64[0] = *(v175 + v174[0] + 2 * v175 + v43);
                v75 = vzip1q_s8(v37, v74);
                v76 = vzip1q_s8(v36, v73);
                v77 = vzip1q_s8(v75, v76);
                v78 = vzip2q_s8(v75, v76);
                v37 = vshlq_n_s64(v77, 0x20uLL);
                v36 = vaddq_s32(v37, v77);
                v79 = vaddq_s32(vshlq_n_s64(v78, 0x20uLL), v78);
                *v32.i8 = vadd_s32(vzip2_s32(vadd_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)), vadd_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL))), *v44.i8);
                v33 = vextq_s8(v36, v36, 8uLL);
                v35 = vextq_s8(v34, v34, 8uLL);
                *v33.i8 = vzip2_s32(vadd_s32(*v34.i8, *v35.i8), vadd_s32(*v36.i8, *v33.i8));
                *v44.i8 = vadd_s32(*v32.i8, *v33.i8);
                v68 = v43 + 8;
                result = (v43 + 16);
                v43 += 8;
              }

              while (result <= v29);
            }

            else
            {
              v68 = v43;
            }

            if (v68 < v29)
            {
              do
              {
                result = (v174[0] + v68);
                v32.i8[0] = *(v182 + v181[0] + v68);
                v32.i8[4] = *(v174[0] + v68);
                v33.i8[0] = *(v181[0] + v68);
                v33.i8[4] = *(v175 + v174[0] + v68);
                v80 = vshl_u32(vand_s8(*v33.i8, 0xFF000000FFLL), 0x1000000018);
                v81 = vorr_s8(v80, vshl_u32(vand_s8(*v32.i8, 0xFF000000FFLL), 0x1800000010));
                v80.i8[0] = *(v181[0] + 2 * v182 + v68);
                v80.i8[4] = *(v174[0] + 2 * v175 + v68);
                v82 = vand_s8(v80, 0xFF000000FFLL);
                *v33.i8 = vorr_s8(vshl_n_s32(v82, 8uLL), v82);
                *v32.i8 = vorr_s8(v81, *v33.i8);
                *v44.i8 = vadd_s32(*v32.i8, *v44.i8);
                ++v68;
              }

              while (v29 != v68);
              v68 = v29;
            }

            if (v68 + 32 <= v30)
            {
              v86 = v182 + v181[0];
              v87 = v182 + v181[0] + 2 * v182;
              v88 = v181[0] + 2 * v182;
              v89 = v175 + v174[0];
              v90 = v175 + v174[0] + 2 * v175;
              v91 = v174[0] + 2 * v175;
              v85 = a11;
              do
              {
                v173 = *v44.i8;
                v189.val[1] = *(v41 + v68);
                v191.val[1] = *(v41 + v68 + 16);
                v189.val[0] = *(v88 + v68);
                v191.val[0] = *(v88 + v68 + 16);
                v193.val[1] = vqtbl2q_s8(v189, xmmword_296B8F070);
                v194.val[1] = *(v86 + v68);
                v202.val[1] = *(v86 + v68 + 16);
                v194.val[0] = *(v87 + v68);
                v202.val[0] = *(v87 + v68 + 16);
                v193.val[0] = vqtbl2q_s8(v194, xmmword_296B8F080);
                v193.val[0] = vqtbl2q_s8(v193, xmmword_296B8F020);
                v205.val[1] = vqtbl2q_s8(v189, xmmword_296B8F030);
                v205.val[0] = vqtbl2q_s8(v194, xmmword_296B8F040);
                v206.val[1] = vqtbl2q_s8(v191, xmmword_296B8F070);
                v206.val[0] = vqtbl2q_s8(v202, xmmword_296B8F080);
                v193.val[1] = vqtbl2q_s8(v205, xmmword_296B8F020);
                v205.val[0] = vqtbl2q_s8(v206, xmmword_296B8F020);
                v206.val[0] = vqtbl2q_s8(v191, xmmword_296B8F030);
                v205.val[1] = vqtbl2q_s8(v202, xmmword_296B8F040);
                v92 = vqtbl2q_s8(v191, xmmword_296B8F000);
                v206.val[1] = vqtbl2q_s8(v202, xmmword_296B8F010);
                v205.val[1] = vqtbl2q_s8(*(&v205 + 16), xmmword_296B8F020);
                v206.val[0] = vqtbl2q_s8(*(&v206 + 16), xmmword_296B8F020);
                v191.val[1] = vqtbl2q_s8(v191, xmmword_296B8F050);
                v191.val[0] = vqtbl2q_s8(v202, xmmword_296B8F060);
                v202.val[1] = vqtbl2q_s8(v189, xmmword_296B8F000);
                v202.val[0] = vqtbl2q_s8(v194, xmmword_296B8F010);
                v206.val[1] = vqtbl2q_s8(v191, xmmword_296B8F020);
                v202.val[0] = vqtbl2q_s8(v202, xmmword_296B8F020);
                v189.val[1] = vqtbl2q_s8(v189, xmmword_296B8F050);
                v189.val[0] = vqtbl2q_s8(v194, xmmword_296B8F060);
                v189.val[0] = vqtbl2q_s8(v189, xmmword_296B8F020);
                v193.val[0] = vaddq_s32(vshlq_n_s64(v193.val[0], 0x20uLL), v193.val[0]);
                v193.val[1] = vaddq_s32(vshlq_n_s64(v193.val[1], 0x20uLL), v193.val[1]);
                v191.val[1] = vaddq_s32(vshlq_n_s64(v205.val[0], 0x20uLL), v205.val[0]);
                v191.val[0] = vaddq_s32(vshlq_n_s64(v205.val[1], 0x20uLL), v205.val[1]);
                v205.val[0] = vaddq_s32(vshlq_n_s64(v206.val[0], 0x20uLL), v206.val[0]);
                v206.val[0] = vaddq_s32(vshlq_n_s64(v206.val[1], 0x20uLL), v206.val[1]);
                v93 = vaddq_s32(vshlq_n_s64(v202.val[0], 0x20uLL), v202.val[0]);
                v189.val[0] = vaddq_s32(vshlq_n_s64(v189.val[0], 0x20uLL), v189.val[0]);
                v94 = vdupq_lane_s32(*v189.val[0].i8, 1);
                v95 = vdupq_lane_s32(*v93.i8, 1);
                v206.val[1] = vdupq_lane_s32(*v206.val[0].i8, 1);
                v205.val[1] = vdupq_lane_s32(*v205.val[0].i8, 1);
                v202.val[1] = vdupq_lane_s32(*v191.val[0].i8, 1);
                v202.val[0] = vdupq_lane_s32(*v191.val[1].i8, 1);
                v194.val[1] = vdupq_lane_s32(*v193.val[1].i8, 1);
                v194.val[0] = vdupq_lane_s32(*v193.val[0].i8, 1);
                v194.val[0].i64[0] = 0;
                v194.val[1].i64[0] = 0;
                v202.val[0].i64[0] = 0;
                v202.val[1].i64[0] = 0;
                v189.val[1] = vdupq_lane_s32(*v44.i8, 0);
                v206.val[1].i64[0] = 0;
                v211.val[1] = *(v42 + v68);
                v213.val[1] = *(v42 + v68 + 16);
                v95.i64[0] = 0;
                v215.val[1] = *(v89 + v68);
                v196.val[1] = *(v89 + v68 + 16);
                v94.i64[0] = 0;
                v211.val[0] = *(v91 + v68);
                v213.val[0] = *(v91 + v68 + 16);
                v215.val[0] = *(v90 + v68);
                v196.val[0] = *(v90 + v68 + 16);
                v169 = vaddq_s32(v94, v189.val[0]);
                v198.val[1] = vqtbl2q_s8(v211, xmmword_296B8F070);
                v198.val[0] = vqtbl2q_s8(v215, xmmword_296B8F080);
                v189.val[0] = vqtbl2q_s8(v198, xmmword_296B8F020);
                v198.val[1] = vqtbl2q_s8(v211, xmmword_296B8F030);
                v198.val[0] = vqtbl2q_s8(v215, xmmword_296B8F040);
                v96 = vaddq_s32(v95, v93);
                v97 = vqtbl2q_s8(v198, xmmword_296B8F020);
                v198.val[1] = vqtbl2q_s8(v213, xmmword_296B8F070);
                v198.val[0] = vqtbl2q_s8(v196, xmmword_296B8F080);
                v98 = vqtbl2q_s8(v198, xmmword_296B8F020);
                v198.val[1] = vqtbl2q_s8(v213, xmmword_296B8F030);
                v206.val[0] = vaddq_s32(v206.val[1], v206.val[0]);
                v198.val[0] = vqtbl2q_s8(v196, xmmword_296B8F040);
                v206.val[1] = vqtbl2q_s8(v198, xmmword_296B8F020);
                v198.val[1] = vqtbl2q_s8(v213, xmmword_296B8F000);
                v198.val[0] = vqtbl2q_s8(v196, xmmword_296B8F010);
                v205.val[1].i64[0] = 0;
                v198.val[0] = vqtbl2q_s8(v198, xmmword_296B8F020);
                v213.val[1] = vqtbl2q_s8(v213, xmmword_296B8F050);
                v213.val[0] = vqtbl2q_s8(v196, xmmword_296B8F060);
                v213.val[0] = vqtbl2q_s8(v213, xmmword_296B8F020);
                v196.val[1] = vqtbl2q_s8(v211, xmmword_296B8F000);
                v205.val[0] = vaddq_s32(v205.val[1], v205.val[0]);
                v196.val[0] = vqtbl2q_s8(v215, xmmword_296B8F010);
                v205.val[1] = vqtbl2q_s8(v196, xmmword_296B8F020);
                v211.val[1] = vqtbl2q_s8(v211, xmmword_296B8F050);
                v211.val[0] = vqtbl2q_s8(v215, xmmword_296B8F060);
                v211.val[0] = vqtbl2q_s8(v211, xmmword_296B8F020);
                v191.val[0] = vaddq_s32(v202.val[1], v191.val[0]);
                v191.val[1] = vaddq_s32(v202.val[0], v191.val[1]);
                v189.val[0] = vaddq_s32(vshlq_n_s64(v189.val[0], 0x20uLL), v189.val[0]);
                v196.val[1] = vaddq_s32(vshlq_n_s64(v97, 0x20uLL), v97);
                v202.val[0] = vaddq_s32(v194.val[1], v193.val[1]);
                v99 = vaddq_s32(vshlq_n_s64(v98, 0x20uLL), v98);
                v100 = vaddq_s32(vshlq_n_s64(v198.val[0], 0x20uLL), v198.val[0]);
                v213.val[0] = vaddq_s32(vshlq_n_s64(v213.val[0], 0x20uLL), v213.val[0]);
                v194.val[1] = vaddq_s32(vshlq_n_s64(v205.val[1], 0x20uLL), v205.val[1]);
                v202.val[1] = vaddq_s32(vshlq_n_s64(v211.val[0], 0x20uLL), v211.val[0]);
                v193.val[0] = vaddq_s32(v194.val[0], v193.val[0]);
                v194.val[0] = vdupq_lane_s32(*v202.val[1].i8, 1);
                v205.val[1] = vdupq_lane_s32(*v194.val[1].i8, 1);
                v211.val[1] = vdupq_lane_s32(*v213.val[0].i8, 1);
                v213.val[1] = vdupq_lane_s32(*v100.i8, 1);
                v215.val[0] = vaddq_s32(vshlq_n_s64(v206.val[1], 0x20uLL), v206.val[1]);
                v215.val[1] = vdupq_lane_s32(*v215.val[0].i8, 1);
                v196.val[0] = vdupq_lane_s32(*v99.i8, 1);
                v198.val[0] = vdupq_lane_s32(*v196.val[1].i8, 1);
                v198.val[1] = vdupq_lane_s32(*v189.val[0].i8, 1);
                v193.val[1] = vaddq_s32(vdupq_laneq_s32(v191.val[1], 3), v206.val[0]);
                v198.val[1].i64[0] = 0;
                v198.val[0].i64[0] = 0;
                v206.val[0] = vaddq_s32(vdupq_laneq_s32(v202.val[0], 3), v96);
                v196.val[0].i64[0] = 0;
                v215.val[1].i64[0] = 0;
                v101 = vaddq_s32(vdupq_laneq_s32(v193.val[0], 3), v169);
                v194.val[0].i64[0] = 0;
                v194.val[0] = vaddq_s32(v194.val[0], v202.val[1]);
                v102 = vdupq_laneq_s32(v101, 3);
                v205.val[1].i64[0] = 0;
                v205.val[1] = vaddq_s32(v205.val[1], v194.val[1]);
                v39 = vdupq_laneq_s32(v193.val[1], 3);
                v206.val[1] = vaddq_s32(v193.val[0], v189.val[1]);
                v213.val[1].i64[0] = 0;
                v211.val[1].i64[0] = 0;
                v211.val[0] = vaddq_s32(v101, v189.val[1]);
                v193.val[0] = vaddq_s32(v211.val[1], v213.val[0]);
                v103 = vaddq_s32(v213.val[1], v100);
                v202.val[1] = vaddq_s32(v215.val[1], v215.val[0]);
                v104 = vaddq_s32(v196.val[0], v99);
                v211.val[1] = vaddq_s32(v198.val[0], v196.val[1]);
                v105 = vaddq_s32(v206.val[0], v102);
                v215.val[0] = vaddq_s32(v198.val[1], v189.val[0]);
                v213.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v191.val[0], 3), v205.val[0]), v39);
                v205.val[0] = vdupq_laneq_s32(v105, 3);
                v215.val[1] = vaddq_s32(vdupq_laneq_s32(v202.val[1], 3), v103);
                v106 = vaddq_s32(vdupq_laneq_s32(v104, 3), v193.val[0]);
                v196.val[0] = vaddq_s32(vdupq_laneq_s32(v215.val[0], 3), v194.val[0]);
                v213.val[1] = vdupq_laneq_s32(v196.val[0], 3);
                v189.val[0] = vaddq_s32(v213.val[0], v189.val[1]);
                v213.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v211.val[1], 3), v205.val[1]), v213.val[1]);
                v205.val[1] = vdupq_laneq_s32(v106, 3);
                v107 = vaddq_s32(v189.val[0], v205.val[0]);
                v206.val[0] = vdupq_laneq_s32(v213.val[0], 3);
                v189.val[0] = vdupq_lane_s32(v173, 1);
                v38 = vaddq_s32(vaddq_s32(vaddq_s32(v215.val[1], v205.val[1]), v189.val[0]), v206.val[0]);
                v215.val[1] = vaddq_s32(v196.val[0], v189.val[0]);
                v215.val[0] = vaddq_s32(v215.val[0], v189.val[0]);
                v13 = vzip2q_s32(v107, v38);
                v196.val[1] = vzip1q_s32(v206.val[1], v215.val[0]);
                v108 = v85;
                v196.val[0] = v31;
                vst2q_f32(v108, v196);
                v108 += 8;
                v196.val[1] = vzip1q_s32(v211.val[0], v215.val[1]);
                v109 = v85 + 16;
                vst2q_f32(v109, v196);
                v202.val[0] = vaddq_s32(vaddq_s32(v202.val[0], v189.val[1]), v102);
                v110 = vaddq_s32(vaddq_s32(v211.val[1], v189.val[0]), v213.val[1]);
                v211.val[1] = vzip2q_s32(v211.val[0], v215.val[1]);
                v211.val[0] = v31;
                v111 = v85 + 24;
                vst2q_f32(v111, v211);
                v211.val[1] = vzip1q_s32(v202.val[0], v110);
                v211.val[0] = v31;
                v112 = v85 + 32;
                vst2q_f32(v112, v211);
                v113 = vaddq_s32(v105, v189.val[1]);
                v44 = vaddq_s32(v213.val[0], v189.val[0]);
                v213.val[0] = vzip2q_s32(v202.val[0], v110);
                v211.val[1] = v31;
                v114 = v85 + 40;
                vst2q_f32(v114, *(&v211 + 16));
                v213.val[0] = vzip1q_s32(v113, v44);
                v211.val[1] = v31;
                v115 = v85 + 48;
                vst2q_f32(v115, *(&v211 + 16));
                v213.val[0] = vzip2q_s32(v206.val[1], v215.val[0]);
                v211.val[1] = v31;
                vst2q_f32(v108, *(&v211 + 16));
                v191.val[1] = vaddq_s32(vaddq_s32(v191.val[1], v189.val[1]), v205.val[0]);
                v202.val[0] = vaddq_s32(vaddq_s32(v104, v189.val[0]), v206.val[0]);
                v208.val[1] = vzip2q_s32(v113, v44);
                v208.val[0] = v31;
                v116 = v85 + 56;
                vst2q_f32(v116, v208);
                v208.val[1] = vzip1q_s32(v191.val[1], v202.val[0]);
                v208.val[0] = v31;
                v117 = v85 + 64;
                vst2q_f32(v117, v208);
                v37 = vaddq_s32(vaddq_s32(v193.val[1], v189.val[1]), v205.val[0]);
                v118 = v85 + 72;
                v206.val[1] = vaddq_s32(v106, v189.val[0]);
                v208.val[0] = vzip2q_s32(v191.val[1], v202.val[0]);
                v119 = v31;
                v191.val[1] = vaddq_s32(v206.val[1], v206.val[0]);
                vst2q_f32(v118, v208);
                v120 = vzip1q_s32(v37, v191.val[1]);
                v206.val[1] = v31;
                v121 = v85 + 80;
                vst2q_f32(v121, *(&v206 + 16));
                v189.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v191.val[0], v39), v189.val[1]), v205.val[0]);
                v189.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v202.val[1], v205.val[1]), v189.val[0]), v206.val[0]);
                v122 = v85 + 88;
                v123 = v85 + 96;
                v191.val[1] = vzip2q_s32(v37, v191.val[1]);
                v191.val[0] = v31;
                vst2q_f32(v122, v191);
                v35 = vzip1q_s32(v189.val[1], v189.val[0]);
                v34 = v31;
                vst2q_f32(v123, *v34.i8);
                v189.val[1] = vzip2q_s32(v189.val[1], v189.val[0]);
                v189.val[0] = v31;
                v124 = v85 + 104;
                vst2q_f32(v124, v189);
                v189.val[1] = vzip1q_s32(v107, v38);
                v189.val[0] = v31;
                v125 = v85 + 112;
                vst2q_f32(v125, v189);
                v32 = vextq_s8(v38, v38, 8uLL);
                v33 = vextq_s8(v107, v107, 8uLL);
                *v44.i8 = vzip2_s32(*v33.i8, *v32.i8);
                result = v85 + 120;
                v85 += 128;
                v126 = v68 + 64;
                v68 += 32;
                vst2q_f32(result, *(&v13 - 1));
              }

              while (v126 <= v30);
              v84 = v38.u32[3];
              v83 = v107.u32[3];
              v40 = v12;
            }

            else
            {
              v83 = v44.i32[0];
              v84 = v44.u32[1];
              v85 = a11;
            }

            if (v68 + 8 <= v30)
            {
              v129 = v182 + v41;
              v130 = v182 + v41 + 2 * v182;
              v131 = v41 + 2 * v182;
              v132 = v175 + v42;
              result = (v175 + v42 + 2 * v175);
              v133 = v42 + 2 * v175;
              do
              {
                v32.i64[0] = *(v41 + v68);
                v33.i64[0] = *(v129 + v68);
                v34.i64[0] = *(v131 + v68);
                v35.i64[0] = *(v130 + v68);
                v134 = vzip1q_s8(v35, v33);
                v135 = vzip1q_s8(v34, v32);
                v136 = vzip1q_s8(v134, v135);
                v137 = vzip2q_s8(v134, v135);
                v138 = vaddq_s32(vshlq_n_s64(v136, 0x20uLL), v136);
                v139 = vaddq_s32(vshlq_n_s64(v137, 0x20uLL), v137);
                v140 = vdupq_lane_s32(*v139.i8, 1);
                v141 = vdupq_lane_s32(*v138.i8, 1);
                v141.i64[0] = 0;
                v142 = vdupq_n_s32(v83);
                v140.i64[0] = 0;
                v37.i64[0] = *(v42 + v68);
                v38.i64[0] = *(v132 + v68);
                v143 = vaddq_s32(v141, v138);
                v141.i64[0] = *(v133 + v68);
                v39.i64[0] = *(result + v68);
                v144 = vzip1q_s8(v39, v38);
                v145 = vaddq_s32(v140, vaddq_s32(v139, v142));
                v146 = vzip1q_s8(v141, v37);
                v147 = vzip1q_s8(v144, v146);
                v148 = vaddq_s32(vshlq_n_s64(v147, 0x20uLL), v147);
                v37 = vdupq_laneq_s32(v143, 3);
                v149 = vdupq_lane_s32(*v148.i8, 1);
                v149.i64[0] = 0;
                v150 = vaddq_s32(v149, v148);
                v151 = vaddq_s32(v143, v142);
                v152 = vdupq_n_s32(v84);
                v39 = vaddq_s32(v150, v152);
                v203.val[1] = vzip1q_s32(v151, v39);
                v153 = v85 + 16;
                v203.val[0] = v31;
                v154 = v85;
                vst2q_f32(v154, v203);
                v154 += 8;
                v155 = vzip2q_s8(v144, v146);
                v156 = vaddq_s32(vshlq_n_s64(v155, 0x20uLL), v155);
                v38 = vdupq_lane_s32(*v156.i8, 1);
                v157 = vaddq_s32(v145, v37);
                v38.i64[0] = 0;
                v83 = v157.u32[3];
                v158 = v85 + 24;
                v159 = vaddq_s32(vaddq_s32(v38, vaddq_s32(v156, v152)), vdupq_laneq_s32(v150, 3));
                v84 = v159.u32[3];
                v192.val[1] = vzip2q_s32(v151, v39);
                v192.val[0] = v31;
                vst2q_f32(v154, v192);
                v35 = vzip1q_s32(v157, v159);
                v34 = v31;
                vst2q_f32(v153, *v34.i8);
                v33 = vzip2q_s32(v157, v159);
                v32 = v31;
                vst2q_f32(v158, *v32.i8);
                v128 = v85 + 32;
                v127 = v68 + 8;
                v160 = v68 + 16;
                v68 += 8;
                v85 += 32;
              }

              while (v160 <= v30);
            }

            else
            {
              v127 = v68;
              v128 = v85;
            }

            if (v127 < v30)
            {
              do
              {
                v83 += (*(v181[0] + v127) << 24) | (*(v181[0] + v127 + v182) << 16) | (*(v181[0] + v127 + 2 * v182) << 8) | *(v181[0] + v127 + 2 * v182);
                *&v161 = __PAIR64__(v83, v40);
                DWORD2(v161) = a6;
                v84 += (*(v174[0] + v127) << 24) | (*(v174[0] + v127 + v175) << 16) | (*(v174[0] + v127 + 2 * v175) << 8) | *(v174[0] + v127 + 2 * v175);
                HIDWORD(v161) = v84;
                *v128 = v161;
                v128 += 4;
                ++v127;
              }

              while (v30 != v127);
            }
          }
        }

        a11 = (a11 + a12);
        v26 += a10;
      }

      while (v26 + a3[7].u32[0] < v19);
    }
  }

  return result;
}