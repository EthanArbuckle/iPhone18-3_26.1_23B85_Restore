__int16 *ExtractInterleaved4_B44<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(__int16 *result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  if (*&a11[1] >= a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = a11[1];
  }

  v24 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a3 + 8) + 48), a11[3]), *(*(a3 + 8) + 48)).u32[0];
  if (v24 <= 0xFFFFFFFC)
  {
    v25 = (v24 + 3) >> 2;
  }

  else
  {
    v25 = 0x40000000;
  }

  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(v267, a4);
  v27 = a11[3];
  v28 = a11[7].u32[1];
  v29 = *(a5 + 8);
  v30 = *(*&v29[5] + 8 * v28);
  v31 = v30[2];
  v32 = vmin_u32(vmls_s32(v31, v29[6], v27), v29[6]).u32[0];
  v33 = (v32 + 3) >> 2;
  v34 = *(a6 + 8);
  v35 = *(*&v34[5] + 8 * v28);
  if (v32 > 0xFFFFFFFC)
  {
    v33 = 0x40000000;
  }

  v36 = v35[2];
  v37 = vmin_u32(vmls_s32(v36, v34[6], v27), v34[6]).u32[0];
  v38 = v37 <= 0xFFFFFFFC ? (v37 + 3) >> 2 : 0x40000000;
  if (v23 < 0xE)
  {
    return result;
  }

  v39 = *(a13 + 60);
  v40 = *(a3 + 8);
  if (v40)
  {
    v41 = (v27.i32[1] * v39);
    v42 = *(*(v40 + 40) + 8 * v28);
    if (*(v42 + 12) - 1 < v41)
    {
      v41 = *(v42 + 12) - 1;
    }

    if (*(v40 + 104) == 1)
    {
      v43 = (*(v42 + 8 * v27.u32[0] + 24) + 8 * v41);
    }

    else
    {
      v44 = (v41 * *(v40 + 108)) >> *(v40 + 112);
      if (v44 >= *(v42 + 20) - 1)
      {
        LODWORD(v44) = *(v42 + 20) - 1;
      }

      v43 = (*(v42 + 8 * v27.u32[0] + 24) + 8 * v44);
    }

    v40 = *v43;
  }

  v45 = a4[1];
  v46 = (v27.i32[1] * v39);
  if (v45)
  {
    v47 = *(*(v45 + 40) + 8 * v28);
    v48 = *(v47 + 12) - 1;
    if (v48 >= v46)
    {
      v48 = v46;
    }

    if (*(v45 + 104) == 1)
    {
      v49 = (*(v47 + 8 * v27.u32[0] + 24) + 8 * v48);
    }

    else
    {
      v50 = (v48 * *(v45 + 108)) >> *(v45 + 112);
      if (v50 >= *(v47 + 20) - 1)
      {
        LODWORD(v50) = *(v47 + 20) - 1;
      }

      v49 = (*(v47 + 8 * v27.u32[0] + 24) + 8 * v50);
    }

    v45 = *v49;
  }

  v51 = v30[1].u32[1] - 1;
  if (v51 >= v46)
  {
    v51 = v46;
  }

  v52 = &v30[v27.u32[0]];
  if (v29[13].i32[0] == 1)
  {
    v53 = (*&v52[3] + 8 * v51);
  }

  else
  {
    v54 = (v51 * v29[13].u32[1]) >> v29[14].i32[0];
    if (v54 >= v31.i32[1] - 1)
    {
      LODWORD(v54) = v31.i32[1] - 1;
    }

    v53 = (*&v52[3] + 8 * v54);
  }

  v55 = v22 + v23 - 14;
  v56 = v35[1].u32[1] - 1;
  if (v56 >= v46)
  {
    v56 = v46;
  }

  v57 = &v35[v27.u32[0]];
  if (v34[13].i32[0] == 1)
  {
    v58 = (*&v57[3] + 8 * v56);
  }

  else
  {
    v59 = (v56 * v34[13].u32[1]) >> v34[14].i32[0];
    if (v59 >= v36.i32[1] - 1)
    {
      LODWORD(v59) = v36.i32[1] - 1;
    }

    v58 = (*&v57[3] + 8 * v59);
  }

  v60 = a12[2];
  v266 = v22 + v45 > v55;
  result = a12[6];
  if (v60 > result)
  {
    return result;
  }

  v62 = 14 * v33;
  v63 = 14 * v38;
  v64 = v267;
  v65 = vld1q_dup_s16(v64);
  v66 = 14 * *a12;
  v264 = v62;
  v265 = 14 * v25;
  v67 = (v22 + v40 + v66 + v265 * v60);
  v68 = (v22 + *v53 + v66 + v62 * v60);
  v263 = v63;
  v69 = (&v22[v66 / 2] + *v58 + v63 * v60);
  v70 = xmmword_296B6EDE0;
  v71 = xmmword_296B6EDF0;
  v72.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v72.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v73 = (a14 + a17);
    v74 = (a14 + a17 + a17);
    v75 = (v74 + a17);
    if (!a16)
    {
      v78 = (v74 + a17);
      goto LABEL_64;
    }

    if (v60 == a12[2])
    {
      v76 = a12[3] + 1;
      v77 = a14;
      a14 = (a14 + a17);
      v73 = v74;
      v74 = (v74 + a17);
      do
      {
        v78 = v74;
        v74 = v73;
        v73 = a14;
        a14 = v77;
        v77 = a16;
        --v76;
      }

      while (v76);
    }

    else
    {
      v78 = (v74 + a17);
    }

    if (v60 == result)
    {
      v79 = a12[7];
      switch(v79)
      {
        case 1u:
          goto LABEL_62;
        case 2u:
          goto LABEL_61;
        case 3u:
          v73 = a16;
LABEL_61:
          v74 = a16;
LABEL_62:
          v75 = a16;
          goto LABEL_64;
      }
    }

    v75 = v78;
LABEL_64:
    result = *a12;
    v80 = a12[1];
    if (!v80)
    {
      v148 = a12[4];
      v149 = v67;
      v150 = v68;
      v151 = v69;
      goto LABEL_91;
    }

    v81 = v266;
    if (v67 > v55)
    {
      v81 = 1;
    }

    if ((v81 & 1) != 0 || v68 > v55 || v69 > v55)
    {
      return result;
    }

    v82.i64[0] = *(v67 + 1);
    v82.i64[1] = *(v67 + 3);
    v83 = vqtbl1q_s8(v82, v70);
    v84 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v83, 8uLL), xmmword_296B6EE00), vshlq_u8(v83, v71)), xmmword_296B6EE10);
    v85 = vaddq_s8(v84, v72);
    v84.i8[1] = 0;
    v86 = vqtbl1q_s8(v85, xmmword_296B6EE20);
    v87 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v86, xmmword_296B6EE30), v86), vqtbl1q_s8(v86, xmmword_296B6EE40));
    v88 = vdupq_lane_s16(*v84.i8, 0);
    v89 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v87.i8), xmmword_296B6EE50), *v87.i8), v88);
    v90 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v87), xmmword_296B6EE50), v87), v88);
    v91 = vdupq_n_s16(bswap32(*v67) >> 16);
    v92 = vaddq_s16(v90, v91);
    v93 = vaddq_s16(v89, v91);
    v94 = veorq_s8((*&v92 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v92));
    v95 = veorq_s8((*&v93 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v93));
    if (a7)
    {
      v95.i64[0] = (*(a7 + ((v95.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v95.u16[2]) << 32) | (*(a7 + 2 * v95.u16[1]) << 16) | *(a7 + 2 * v95.u16[0]);
      v95.i64[1] = (*(a7 + ((v95.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v95.u16[6]) << 32) | (*(a7 + 2 * v95.u16[5]) << 16) | *(a7 + 2 * v95.u16[4]);
      v94.i64[0] = (*(a7 + ((v94.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v94.u16[2]) << 32) | (*(a7 + 2 * v94.u16[1]) << 16) | *(a7 + 2 * v94.u16[0]);
      v94.i64[1] = (*(a7 + ((v94.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v94.u16[6]) << 32) | (*(a7 + 2 * v94.u16[5]) << 16) | *(a7 + 2 * v94.u16[4]);
    }

    v96.i64[0] = *(v68 + 1);
    v96.i64[1] = *(v68 + 3);
    v97 = vqtbl1q_s8(v96, v70);
    v98 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v97, 8uLL), xmmword_296B6EE00), vshlq_u8(v97, v71)), xmmword_296B6EE10);
    v99 = vaddq_s8(v98, v72);
    v98.i8[1] = 0;
    v100 = vqtbl1q_s8(v99, xmmword_296B6EE20);
    v101 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v100, xmmword_296B6EE30), v100), vqtbl1q_s8(v100, xmmword_296B6EE40));
    v102 = vdupq_lane_s16(*v98.i8, 0);
    v103 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v101.i8), xmmword_296B6EE50), *v101.i8), v102);
    v104 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v101), xmmword_296B6EE50), v101), v102);
    v105 = vdupq_n_s16(bswap32(*v68) >> 16);
    v106 = vaddq_s16(v104, v105);
    v107 = vaddq_s16(v103, v105);
    v108 = veorq_s8((*&v106 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v106));
    v109 = veorq_s8((*&v107 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v107));
    if (a9)
    {
      v109.i64[0] = (*(a9 + ((v109.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v109.u16[2]) << 32) | (*(a9 + 2 * v109.u16[1]) << 16) | *(a9 + 2 * v109.u16[0]);
      v109.i64[1] = (*(a9 + ((v109.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v109.u16[6]) << 32) | (*(a9 + 2 * v109.u16[5]) << 16) | *(a9 + 2 * v109.u16[4]);
      v108.i64[0] = (*(a9 + ((v108.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v108.u16[2]) << 32) | (*(a9 + 2 * v108.u16[1]) << 16) | *(a9 + 2 * v108.u16[0]);
      v108.i64[1] = (*(a9 + ((v108.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v108.u16[6]) << 32) | (*(a9 + 2 * v108.u16[5]) << 16) | *(a9 + 2 * v108.u16[4]);
    }

    v110.i64[0] = *(v69 + 1);
    v110.i64[1] = *(v69 + 3);
    v111 = vqtbl1q_s8(v110, v70);
    v112 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v111, 8uLL), xmmword_296B6EE00), vshlq_u8(v111, v71)), xmmword_296B6EE10);
    v113 = vaddq_s8(v112, v72);
    v112.i8[1] = 0;
    v114 = vqtbl1q_s8(v113, xmmword_296B6EE20);
    v115 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v114, xmmword_296B6EE30), v114), vqtbl1q_s8(v114, xmmword_296B6EE40));
    v116 = vdupq_lane_s16(*v112.i8, 0);
    v117 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v115.i8), xmmword_296B6EE50), *v115.i8), v116);
    v118 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v115), xmmword_296B6EE50), v115), v116);
    v119 = vdupq_n_s16(bswap32(*v69) >> 16);
    v120 = vaddq_s16(v118, v119);
    v121 = vaddq_s16(v117, v119);
    v122 = veorq_s8((*&v120 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v120));
    v123 = veorq_s8((*&v121 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v121));
    if (a10)
    {
      v123.i64[0] = (*(a10 + ((v123.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v123.u16[2]) << 32) | (*(a10 + 2 * v123.u16[1]) << 16) | *(a10 + 2 * v123.u16[0]);
      v123.i64[1] = (*(a10 + ((v123.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v123.u16[6]) << 32) | (*(a10 + 2 * v123.u16[5]) << 16) | *(a10 + 2 * v123.u16[4]);
      v122.i64[0] = (*(a10 + ((v122.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v122.u16[2]) << 32) | (*(a10 + 2 * v122.u16[1]) << 16) | *(a10 + 2 * v122.u16[0]);
      v122.i64[1] = (*(a10 + ((v122.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v122.u16[6]) << 32) | (*(a10 + 2 * v122.u16[5]) << 16) | *(a10 + 2 * v122.u16[4]);
    }

    v26.i32[0] = 0;
    v124 = v65;
    v270.val[1] = vqtbl2q_s8(*(&v122 - 1), xmmword_296B6EF40);
    v125 = v108;
    v270.val[0] = vqtbl2q_s8(*v94.i8, xmmword_296B6EE70);
    v273.val[1] = vqtbl2q_s8(*(&v122 - 1), xmmword_296B6EF50);
    v273.val[0] = vqtbl2q_s8(*v94.i8, xmmword_296B6EE90);
    v277.val[1] = vqtbl2q_s8(*(&v122 - 1), xmmword_296B6EF60);
    v277.val[0] = vqtbl2q_s8(*v94.i8, xmmword_296B6EEA0);
    v281.val[1] = vqtbl2q_s8(*(&v122 - 1), xmmword_296B6EF70);
    v281.val[0] = vqtbl2q_s8(*v94.i8, xmmword_296B6EEB0);
    v126 = vqtbl2q_s8(v270, xmmword_296B6EDD0);
    v127 = vqtbl2q_s8(v273, xmmword_296B6EDD0);
    v128 = vqtbl2q_s8(v277, xmmword_296B6EDD0);
    v129 = vqtbl2q_s8(v281, xmmword_296B6EDD0);
    if (a12[4] == result)
    {
      v130 = 4 - a12[5];
    }

    else
    {
      v130 = 4;
    }

    v94.i32[0] = a12[1] & 2;
    v26 = vdupq_lane_s32(*&vceqq_s32(v94, v26), 0);
    v131 = v65;
    v275.val[1] = vqtbl2q_s8(*(&v123 - 1), xmmword_296B6EF60);
    v132 = v109;
    v275.val[0] = vqtbl2q_s8(*v95.i8, xmmword_296B6EEA0);
    v133 = vqtbl2q_s8(v275, xmmword_296B6EDD0);
    v275.val[1] = vqtbl2q_s8(*(&v123 - 1), xmmword_296B6EF70);
    v275.val[0] = vqtbl2q_s8(*v95.i8, xmmword_296B6EEB0);
    v134 = vqtbl2q_s8(v275, xmmword_296B6EDD0);
    v135 = vbslq_s8(v26, v134, v133);
    v136 = vbslq_s8(v26, v133, v134);
    v268.val[1] = vqtbl2q_s8(*(&v123 - 1), xmmword_296B6EF40);
    v268.val[0] = vqtbl2q_s8(*v95.i8, xmmword_296B6EE70);
    v268.val[0] = vqtbl2q_s8(v268, xmmword_296B6EDD0);
    v279.val[1] = vqtbl2q_s8(*(&v123 - 1), xmmword_296B6EF50);
    v279.val[0] = vqtbl2q_s8(*v95.i8, xmmword_296B6EE90);
    v268.val[1] = vqtbl2q_s8(v279, xmmword_296B6EDD0);
    v137 = vbslq_s8(v26, v268.val[1], v268.val[0]);
    v138 = vbslq_s8(v26, v268.val[0], v268.val[1]);
    v139 = vbslq_s8(v26, v129, v128);
    v140 = vbslq_s8(v26, v128, v129);
    v141 = vbslq_s8(v26, v127, v126);
    v142 = vbslq_s8(v26, v126, v127);
    if ((v80 & 2) != 0)
    {
      v130 -= 2;
    }

    if (v80)
    {
      v143 = vextq_s8(v137, v138, 8uLL).u64[0];
      v138 = vextq_s8(v138, v137, 8uLL);
      v144 = vextq_s8(v135, v136, 8uLL).u64[0];
      v136 = vextq_s8(v136, v135, 8uLL);
      v145 = vextq_s8(v141, v142, 8uLL).u64[0];
      v142 = vextq_s8(v142, v141, 8uLL);
      v146 = vextq_s8(v139, v140, 8uLL).u64[0];
      --v130;
      v140 = vextq_s8(v140, v139, 8uLL);
      v137.i64[0] = v143;
      v135.i64[0] = v144;
      v141.i64[0] = v145;
      v139.i64[0] = v146;
    }

    v70 = xmmword_296B6EDE0;
    v71 = xmmword_296B6EDF0;
    v72.i64[0] = 0xE0E0E0E0E0E0E0E0;
    v72.i64[1] = 0xE0E0E0E0E0E0E0E0;
    if (v130 <= 1)
    {
      v147 = 0;
    }

    else
    {
      *a14 = v138;
      *v73 = v136;
      v130 -= 2;
      v138.i64[0] = v137.i64[0];
      v136.i64[0] = v135.i64[0];
      *v74 = v142;
      v142.i64[0] = v141.i64[0];
      *v75 = v140;
      v140.i64[0] = v139.i64[0];
      v147 = 16;
    }

    if (v130 >= 1)
    {
      *(a14->i64 + v147) = v138.i64[0];
      *(v73->i64 + v147) = v136.i64[0];
      *(v74->i64 + v147) = v142.i64[0];
      *(v75->i64 + v147) = v140.i64[0];
      v147 |= 8uLL;
    }

    v148 = a12[4];
    if (v148 != result)
    {
      break;
    }

LABEL_123:
    a14 = (v78 + a17);
    v69 = (v69 + v263);
    v68 = (v68 + v264);
    v67 = (v67 + v265);
    result = a12[6];
    v262 = v60 >= result;
    v60 = (v60 + 1);
    if (v262)
    {
      return result;
    }
  }

  v149 = v67 + 7;
  v150 = v68 + 7;
  v151 = v69 + 7;
  a14 = (a14 + v147);
  v73 = (v73 + v147);
  v74 = (v74 + v147);
  v75 = (v75 + v147);
  result = (result + 1);
LABEL_91:
  v152 = a12[5];
  v153 = v152 != 0;
  if (v148 == 0 && v153 || (v154 = v148 - v153, result > v154))
  {
    result = a14;
    v206 = v73;
    v207 = v74;
    v208 = v75;
    if (v152)
    {
LABEL_108:
      v209 = v266;
      if (v149 > v55)
      {
        v209 = 1;
      }

      if ((v209 & 1) != 0 || v150 > v55 || v151 > v55)
      {
        return result;
      }

      v210.i64[0] = *(v149 + 1);
      v210.i64[1] = *(v149 + 3);
      v211 = vqtbl1q_s8(v210, v70);
      v212 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v211, 8uLL), xmmword_296B6EE00), vshlq_u8(v211, v71)), xmmword_296B6EE10);
      v213 = vaddq_s8(v212, v72);
      v212.i8[1] = 0;
      v214 = vqtbl1q_s8(v213, xmmword_296B6EE20);
      v215 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v214, xmmword_296B6EE30), v214), vqtbl1q_s8(v214, xmmword_296B6EE40));
      v216 = vdupq_lane_s16(*v212.i8, 0);
      v217 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v215.i8), xmmword_296B6EE50), *v215.i8), v216);
      v218 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v215), xmmword_296B6EE50), v215), v216);
      v219 = vdupq_n_s16(bswap32(*v149) >> 16);
      v220 = vaddq_s16(v218, v219);
      v221 = vaddq_s16(v217, v219);
      v222 = veorq_s8((*&v220 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v220));
      v223 = veorq_s8((*&v221 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v221));
      if (a7)
      {
        v223.i64[0] = (*(a7 + ((v223.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v223.u16[2]) << 32) | (*(a7 + 2 * v223.u16[1]) << 16) | *(a7 + 2 * v223.u16[0]);
        v223.i64[1] = (*(a7 + ((v223.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v223.u16[6]) << 32) | (*(a7 + 2 * v223.u16[5]) << 16) | *(a7 + 2 * v223.u16[4]);
        v222.i64[0] = (*(a7 + ((v222.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v222.u16[2]) << 32) | (*(a7 + 2 * v222.u16[1]) << 16) | *(a7 + 2 * v222.u16[0]);
        v222.i64[1] = (*(a7 + ((v222.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v222.u16[6]) << 32) | (*(a7 + 2 * v222.u16[5]) << 16) | *(a7 + 2 * v222.u16[4]);
      }

      v224.i64[0] = *(v150 + 1);
      v224.i64[1] = *(v150 + 3);
      v225 = vqtbl1q_s8(v224, v70);
      v226 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v225, 8uLL), xmmword_296B6EE00), vshlq_u8(v225, v71)), xmmword_296B6EE10);
      v227 = vaddq_s8(v226, v72);
      v226.i8[1] = 0;
      v228 = vqtbl1q_s8(v227, xmmword_296B6EE20);
      v229 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v228, xmmword_296B6EE30), v228), vqtbl1q_s8(v228, xmmword_296B6EE40));
      v230 = vdupq_lane_s16(*v226.i8, 0);
      v231 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v229.i8), xmmword_296B6EE50), *v229.i8), v230);
      v232 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v229), xmmword_296B6EE50), v229), v230);
      v233 = vdupq_n_s16(bswap32(*v150) >> 16);
      v234 = vaddq_s16(v232, v233);
      v235 = vaddq_s16(v231, v233);
      v236 = veorq_s8((*&v234 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v234));
      v237 = veorq_s8((*&v235 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v235));
      if (a9)
      {
        v237.i64[0] = (*(a9 + ((v237.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v237.u16[2]) << 32) | (*(a9 + 2 * v237.u16[1]) << 16) | *(a9 + 2 * v237.u16[0]);
        v237.i64[1] = (*(a9 + ((v237.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v237.u16[6]) << 32) | (*(a9 + 2 * v237.u16[5]) << 16) | *(a9 + 2 * v237.u16[4]);
        v236.i64[0] = (*(a9 + ((v236.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v236.u16[2]) << 32) | (*(a9 + 2 * v236.u16[1]) << 16) | *(a9 + 2 * v236.u16[0]);
        v236.i64[1] = (*(a9 + ((v236.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v236.u16[6]) << 32) | (*(a9 + 2 * v236.u16[5]) << 16) | *(a9 + 2 * v236.u16[4]);
      }

      v238.i64[0] = *(v151 + 1);
      v238.i64[1] = *(v151 + 3);
      v239 = vqtbl1q_s8(v238, v70);
      v240 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v239, 8uLL), xmmword_296B6EE00), vshlq_u8(v239, v71)), xmmword_296B6EE10);
      v241 = vaddq_s8(v240, v72);
      v240.i8[1] = 0;
      v242 = vqtbl1q_s8(v241, xmmword_296B6EE20);
      v243 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v242, xmmword_296B6EE30), v242), vqtbl1q_s8(v242, xmmword_296B6EE40));
      v244 = vdupq_lane_s16(*v240.i8, 0);
      v245 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v243.i8), xmmword_296B6EE50), *v243.i8), v244);
      v246 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v243), xmmword_296B6EE50), v243), v244);
      v247 = vdupq_n_s16(bswap32(*v151) >> 16);
      v248 = vaddq_s16(v246, v247);
      v249 = vaddq_s16(v245, v247);
      v250 = veorq_s8((*&v248 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v248));
      v251 = veorq_s8((*&v249 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v249));
      if (a10)
      {
        v251.i64[0] = (*(a10 + ((v251.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v251.u16[2]) << 32) | (*(a10 + 2 * v251.u16[1]) << 16) | *(a10 + 2 * v251.u16[0]);
        v251.i64[1] = (*(a10 + ((v251.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v251.u16[6]) << 32) | (*(a10 + 2 * v251.u16[5]) << 16) | *(a10 + 2 * v251.u16[4]);
        v250.i64[0] = (*(a10 + ((v250.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v250.u16[2]) << 32) | (*(a10 + 2 * v250.u16[1]) << 16) | *(a10 + 2 * v250.u16[0]);
        v250.i64[1] = (*(a10 + ((v250.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v250.u16[6]) << 32) | (*(a10 + 2 * v250.u16[5]) << 16) | *(a10 + 2 * v250.u16[4]);
      }

      v252 = v65;
      v253 = v237;
      v284.val[1] = vqtbl2q_s8(*(&v251 - 1), xmmword_296B6EF60);
      v284.val[0] = vqtbl2q_s8(*v223.i8, xmmword_296B6EEA0);
      v254 = vqtbl2q_s8(v284, xmmword_296B6EDD0);
      v255 = vqtbl2q_s8(*(&v251 - 1), xmmword_296B6EF40);
      v284.val[1] = vqtbl2q_s8(*v223.i8, xmmword_296B6EE70);
      v26 = vqtbl2q_s8(*(&v284 + 16), xmmword_296B6EDD0);
      v256 = v65;
      v257 = v236;
      v272.val[1] = vqtbl2q_s8(*(&v250 - 1), xmmword_296B6EF60);
      v272.val[0] = vqtbl2q_s8(*v222.i8, xmmword_296B6EEA0);
      v258 = vqtbl2q_s8(v272, xmmword_296B6EDD0);
      v269.val[1] = vqtbl2q_s8(*(&v250 - 1), xmmword_296B6EF40);
      v269.val[0] = vqtbl2q_s8(*v222.i8, xmmword_296B6EE70);
      v259 = vqtbl2q_s8(v269, xmmword_296B6EDD0);
      if (((4 - v152) & 2) != 0)
      {
        *result = v26;
        *v206 = v254;
        *v207 = v259;
        *v208 = v258;
        if ((4 - v152))
        {
          v26 = vqtbl2q_s8(*(&v251 - 1), xmmword_296B6EF70);
          v260 = vqtbl2q_s8(*v223.i8, xmmword_296B6EEB0);
          v283.val[1] = vqtbl2q_s8(*(&v251 - 1), xmmword_296B6EF50);
          v283.val[0] = vqtbl2q_s8(*v223.i8, xmmword_296B6EE90);
          v261 = vqtbl2q_s8(v283, xmmword_296B6EDD0).u64[0];
          v283.val[1] = vqtbl2q_s8(*(&v250 - 1), xmmword_296B6EF70);
          v283.val[0] = vqtbl2q_s8(*v222.i8, xmmword_296B6EEB0);
          v278.val[1] = vqtbl2q_s8(*(&v250 - 1), xmmword_296B6EF50);
          v278.val[0] = vqtbl2q_s8(*v222.i8, xmmword_296B6EE90);
          *(result + 2) = v261;
          v206[1].i64[0] = vqtbl2q_s8(*(&v26 - 1), xmmword_296B6EDD0).u64[0];
          v207[1].i64[0] = vqtbl2q_s8(v278, xmmword_296B6EDD0).u64[0];
          v208[1].i64[0] = vqtbl2q_s8(v283, xmmword_296B6EDD0).u64[0];
        }
      }

      else
      {
        *result = v26.i64[0];
        v206->i64[0] = v254.i64[0];
        v207->i64[0] = v259.i64[0];
        v208->i64[0] = v258.i64[0];
      }
    }

    goto LABEL_123;
  }

  if (!v266)
  {
    result = (v154 - result);
    v155 = result + 1;
    while (v149 <= v55 && v150 <= v55 && v151 <= v55)
    {
      v156.i64[0] = *(v149 + 1);
      v156.i64[1] = *(v149 + 3);
      v157 = vqtbl1q_s8(v156, v70);
      v158 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v157, 8uLL), xmmword_296B6EE00), vshlq_u8(v157, v71)), xmmword_296B6EE10);
      v159 = vaddq_s8(v158, v72);
      v158.i8[1] = 0;
      v160 = vqtbl1q_s8(v159, xmmword_296B6EE20);
      v161 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v160, xmmword_296B6EE30), v160), vqtbl1q_s8(v160, xmmword_296B6EE40));
      v162 = vdupq_lane_s16(*v158.i8, 0);
      v163 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v161.i8), xmmword_296B6EE50), *v161.i8), v162);
      v164 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v161), xmmword_296B6EE50), v161), v162);
      v165 = vdupq_n_s16(bswap32(*v149) >> 16);
      v166 = vaddq_s16(v164, v165);
      v167 = vaddq_s16(v163, v165);
      v168 = veorq_s8((*&v166 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v166));
      v169 = veorq_s8((*&v167 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v167));
      if (a7)
      {
        v169.i64[0] = (*(a7 + ((v169.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v169.u16[2]) << 32) | (*(a7 + 2 * v169.u16[1]) << 16) | *(a7 + 2 * v169.u16[0]);
        v169.i64[1] = (*(a7 + ((v169.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v169.u16[6]) << 32) | (*(a7 + 2 * v169.u16[5]) << 16) | *(a7 + 2 * v169.u16[4]);
        v168.i64[0] = (*(a7 + ((v168.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v168.u16[2]) << 32) | (*(a7 + 2 * v168.u16[1]) << 16) | *(a7 + 2 * v168.u16[0]);
        v168.i64[1] = (*(a7 + ((v168.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v168.u16[6]) << 32) | (*(a7 + 2 * v168.u16[5]) << 16) | *(a7 + 2 * v168.u16[4]);
      }

      v170.i64[0] = *(v150 + 1);
      v170.i64[1] = *(v150 + 3);
      v171 = vqtbl1q_s8(v170, v70);
      v172 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v171, 8uLL), xmmword_296B6EE00), vshlq_u8(v171, v71)), xmmword_296B6EE10);
      v173 = vaddq_s8(v172, v72);
      v172.i8[1] = 0;
      v174 = vqtbl1q_s8(v173, xmmword_296B6EE20);
      v175 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v174, xmmword_296B6EE30), v174), vqtbl1q_s8(v174, xmmword_296B6EE40));
      v176 = vdupq_lane_s16(*v172.i8, 0);
      v177 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v175.i8), xmmword_296B6EE50), *v175.i8), v176);
      v178 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v175), xmmword_296B6EE50), v175), v176);
      v179 = vdupq_n_s16(bswap32(*v150) >> 16);
      v180 = vaddq_s16(v178, v179);
      v181 = vaddq_s16(v177, v179);
      v182 = veorq_s8((*&v180 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v180));
      v183 = veorq_s8((*&v181 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v181));
      if (a9)
      {
        v183.i64[0] = (*(a9 + ((v183.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v183.u16[2]) << 32) | (*(a9 + 2 * v183.u16[1]) << 16) | *(a9 + 2 * v183.u16[0]);
        v183.i64[1] = (*(a9 + ((v183.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v183.u16[6]) << 32) | (*(a9 + 2 * v183.u16[5]) << 16) | *(a9 + 2 * v183.u16[4]);
        v182.i64[0] = (*(a9 + ((v182.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v182.u16[2]) << 32) | (*(a9 + 2 * v182.u16[1]) << 16) | *(a9 + 2 * v182.u16[0]);
        v182.i64[1] = (*(a9 + ((v182.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v182.u16[6]) << 32) | (*(a9 + 2 * v182.u16[5]) << 16) | *(a9 + 2 * v182.u16[4]);
      }

      v184.i64[0] = *(v151 + 1);
      v184.i64[1] = *(v151 + 3);
      v185 = vqtbl1q_s8(v184, v70);
      v186 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v185, 8uLL), xmmword_296B6EE00), vshlq_u8(v185, v71)), xmmword_296B6EE10);
      v187 = vaddq_s8(v186, v72);
      v186.i8[1] = 0;
      v188 = vqtbl1q_s8(v187, xmmword_296B6EE20);
      v189 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v188, xmmword_296B6EE30), v188), vqtbl1q_s8(v188, xmmword_296B6EE40));
      v190 = vdupq_lane_s16(*v186.i8, 0);
      v191 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v189.i8), xmmword_296B6EE50), *v189.i8), v190);
      v192 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v189), xmmword_296B6EE50), v189), v190);
      v193 = vdupq_n_s16(bswap32(*v151) >> 16);
      v194 = vaddq_s16(v192, v193);
      v195 = vaddq_s16(v191, v193);
      v196 = veorq_s8((*&v194 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v194));
      v197 = veorq_s8((*&v195 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v195));
      if (a10)
      {
        v197.i64[0] = (*(a10 + ((v197.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v197.u16[2]) << 32) | (*(a10 + 2 * v197.u16[1]) << 16) | *(a10 + 2 * v197.u16[0]);
        v197.i64[1] = (*(a10 + ((v197.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v197.u16[6]) << 32) | (*(a10 + 2 * v197.u16[5]) << 16) | *(a10 + 2 * v197.u16[4]);
        v196.i64[0] = (*(a10 + ((v196.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v196.u16[2]) << 32) | (*(a10 + 2 * v196.u16[1]) << 16) | *(a10 + 2 * v196.u16[0]);
        v196.i64[1] = (*(a10 + ((v196.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v196.u16[6]) << 32) | (*(a10 + 2 * v196.u16[5]) << 16) | *(a10 + 2 * v196.u16[4]);
      }

      v149 += 7;
      v150 += 7;
      v198 = v196;
      v282.val[1] = vqtbl2q_s8(*v65.i8, xmmword_296B6EF60);
      v199 = v182;
      v282.val[0] = vqtbl2q_s8(*v168.i8, xmmword_296B6EEA0);
      v200 = vqtbl2q_s8(v282, xmmword_296B6EDD0);
      v201 = vqtbl2q_s8(*v65.i8, xmmword_296B6EF70);
      v26 = xmmword_296B6EEB0;
      v282.val[1] = vqtbl2q_s8(*v168.i8, xmmword_296B6EEB0);
      v271.val[1] = vqtbl2q_s8(*v65.i8, xmmword_296B6EF40);
      v271.val[0] = vqtbl2q_s8(*v168.i8, xmmword_296B6EE70);
      v274.val[1] = vqtbl2q_s8(*v65.i8, xmmword_296B6EF50);
      v274.val[0] = vqtbl2q_s8(*v168.i8, xmmword_296B6EE90);
      v202 = vqtbl2q_s8(v274, xmmword_296B6EDD0);
      v203 = v65;
      v274.val[1] = vqtbl2q_s8(*(&v197 - 1), xmmword_296B6EF60);
      v204 = v183;
      v274.val[0] = vqtbl2q_s8(*v169.i8, xmmword_296B6EEA0);
      v205 = vqtbl2q_s8(v274, xmmword_296B6EDD0);
      v274.val[1] = vqtbl2q_s8(*(&v197 - 1), xmmword_296B6EF70);
      v276.val[1] = vqtbl2q_s8(*(&v197 - 1), xmmword_296B6EF40);
      v276.val[0] = vqtbl2q_s8(*v169.i8, xmmword_296B6EE70);
      v280.val[1] = vqtbl2q_s8(*(&v197 - 1), xmmword_296B6EF50);
      v280.val[0] = vqtbl2q_s8(*v169.i8, xmmword_296B6EE90);
      *a14 = vqtbl2q_s8(v276, xmmword_296B6EDD0);
      a14[1] = vqtbl2q_s8(v280, xmmword_296B6EDD0);
      v274.val[0] = vqtbl2q_s8(*v169.i8, xmmword_296B6EEB0);
      v151 += 7;
      result = a14[2].i16;
      *v73 = v205;
      v73[1] = vqtbl2q_s8(v274, xmmword_296B6EDD0);
      v206 = v73 + 2;
      v207 = v74 + 2;
      *v74 = vqtbl2q_s8(v271, xmmword_296B6EDD0);
      v74[1] = v202;
      v208 = v75 + 2;
      *v75 = v200;
      v75[1] = vqtbl2q_s8(*(&v282 + 16), xmmword_296B6EDD0);
      v75 += 2;
      v74 += 2;
      v73 += 2;
      a14 += 2;
      --v155;
      v71 = xmmword_296B6EDF0;
      v72.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v72.i64[1] = 0xE0E0E0E0E0E0E0E0;
      if (!v155)
      {
        v152 = a12[5];
        if (v152)
        {
          goto LABEL_108;
        }

        goto LABEL_123;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (*&a11[1] >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a11[1];
  }

  v23 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a3 + 8) + 48), a11[3]), *(*(a3 + 8) + 48)).u32[0];
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v252, a4);
  v24 = a11[3];
  v25 = a11[7].u32[1];
  v26 = *(a5 + 8);
  v27 = *(*&v26[5] + 8 * v25);
  v28.i64[0] = *(v27 + 16);
  result = vmin_u32(vmls_s32(*v28.i8, v26[6], v24), v26[6]).u32[0];
  v29 = *(a6 + 8);
  v30 = *(*&v29[5] + 8 * v25);
  v31 = v30[2];
  v32 = vmin_u32(vmls_s32(v31, v29[6], v24), v29[6]).u32[0];
  v33 = 12 * v23 + 16;
  if (v33 <= 12 * result + 16)
  {
    v33 = 12 * result + 16;
  }

  v34 = 12 * v32 + 16;
  if (v33 > v34)
  {
    v34 = v33;
  }

  v35 = v22 >= v34;
  v36 = v22 - v34;
  if (!v35)
  {
    return result;
  }

  v37 = *(a13 + 60);
  v38 = *(a3 + 8);
  if (v38)
  {
    v39 = (v24.i32[1] * v37);
    v40 = *(*(v38 + 40) + 8 * v25);
    if (*(v40 + 12) - 1 < v39)
    {
      v39 = *(v40 + 12) - 1;
    }

    if (*(v38 + 104) == 1)
    {
      v41 = (*(v40 + 8 * v24.u32[0] + 24) + 8 * v39);
    }

    else
    {
      v43 = (v39 * *(v38 + 108)) >> *(v38 + 112);
      if (v43 >= *(v40 + 20) - 1)
      {
        LODWORD(v43) = *(v40 + 20) - 1;
      }

      v41 = (*(v40 + 8 * v24.u32[0] + 24) + 8 * v43);
    }

    v42 = *v41;
  }

  else
  {
    v42 = 0;
  }

  v44 = a4[1];
  v45 = (v24.i32[1] * v37);
  if (v44)
  {
    v46 = *(*(v44 + 40) + 8 * v25);
    v47 = *(v46 + 12) - 1;
    if (v47 >= v45)
    {
      v47 = v45;
    }

    if (*(v44 + 104) == 1)
    {
      v48 = (*(v46 + 8 * v24.u32[0] + 24) + 8 * v47);
    }

    else
    {
      v49 = (v47 * *(v44 + 108)) >> *(v44 + 112);
      if (v49 >= *(v46 + 20) - 1)
      {
        LODWORD(v49) = *(v46 + 20) - 1;
      }

      v48 = (*(v46 + 8 * v24.u32[0] + 24) + 8 * v49);
    }

    v44 = *v48;
  }

  v50 = *(v27 + 12) - 1;
  if (v50 >= v45)
  {
    v50 = v45;
  }

  v51 = v27 + 8 * v24.u32[0];
  if (v26[13].i32[0] == 1)
  {
    v52 = (*(v51 + 24) + 8 * v50);
  }

  else
  {
    v53 = (v50 * v26[13].u32[1]) >> v26[14].i32[0];
    if (v53 >= v28.i32[1] - 1)
    {
      LODWORD(v53) = v28.i32[1] - 1;
    }

    v52 = (*(v51 + 24) + 8 * v53);
  }

  v54 = v36 + v21;
  v55 = v30[1].u32[1] - 1;
  if (v55 >= v45)
  {
    v55 = v45;
  }

  v56 = &v30[v24.u32[0]];
  if (v29[13].i32[0] == 1)
  {
    v57 = (*&v56[3] + 8 * v55);
  }

  else
  {
    v58 = (v55 * v29[13].u32[1]) >> v29[14].i32[0];
    if (v58 >= v31.i32[1] - 1)
    {
      LODWORD(v58) = v31.i32[1] - 1;
    }

    v57 = (*&v56[3] + 8 * v58);
  }

  v59 = a12[2];
  v60 = v44 + v21 > v54;
  v61 = a12[6];
  if (v59 > v61)
  {
    return result;
  }

  v63 = 4 * v23;
  v64 = 4 * result;
  v65 = 4 * v32;
  result *= 16;
  v66 = 16 * v32;
  v67 = &v252;
  v68 = vld1q_dup_f32(v67);
  v69 = *a12;
  v250 = result;
  v251 = 16 * v23;
  v70 = v42 + v21 + 16 * v69 + 16 * v23 * v59;
  v71 = (*v52 + v21 + 16 * v69 + result * v59);
  v72 = (v21 + 16 * v69 + *v57 + v66 * v59);
  while (1)
  {
    v73 = a14 + a17;
    v74 = a14 + a17 + a17;
    v75 = v74 + a17;
    if (!a16)
    {
      v78 = v74 + a17;
      goto LABEL_62;
    }

    if (v59 == a12[2])
    {
      v76 = a12[3] + 1;
      v77 = a14;
      a14 += a17;
      v73 = v74;
      v74 += a17;
      do
      {
        v78 = v74;
        v74 = v73;
        v73 = a14;
        a14 = v77;
        v77 = a16;
        --v76;
      }

      while (v76);
    }

    else
    {
      v78 = v74 + a17;
    }

    if (v59 == v61)
    {
      v79 = a12[7];
      switch(v79)
      {
        case 1u:
          goto LABEL_60;
        case 2u:
          goto LABEL_59;
        case 3u:
          v73 = a16;
LABEL_59:
          v74 = a16;
LABEL_60:
          v75 = a16;
          goto LABEL_62;
      }
    }

    v75 = v78;
LABEL_62:
    v81 = *a12;
    v80 = a12[1];
    if (!v80)
    {
      v147 = a12[4];
      v148 = v70;
      v149 = v71;
      v150 = v72;
      goto LABEL_82;
    }

    v82 = v70 > v54 || v60;
    if ((v82 & 1) != 0 || v71 > v54 || v72 > v54)
    {
      return result;
    }

    v28.i32[0] = 0;
    v83 = *(v70 + v63);
    v84 = (v70 + v63 + v63);
    v85 = *(v84 + v63);
    v86 = (v71 + v64 + v64);
    v87 = *(v86 + v64);
    v88 = *(v71 + v64);
    v89 = (v72 + v65 + v65);
    v90 = *(v89 + v65);
    v91 = vuzp1q_s32(v68, v90);
    v92 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v85, v87)), vextq_s8(v68, v91, 0xCuLL));
    v93 = vuzp2q_s32(v85, v87);
    v87.i32[0] = *(&v84->i64[1] + v63);
    v94 = vtrn2q_s32(vrev64q_s32(v87), v91);
    v95 = v68;
    v95.i32[3] = HIDWORD(*(v89->i64 + v65));
    v96 = vtrn2q_s32(vrev64q_s32(v93), v95);
    v97 = *v70;
    v98 = *v71;
    v99 = *v86;
    v100 = *v72;
    v101 = *(v72 + v65);
    v102 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v93, v85)), vuzp2q_s32(v68, v90));
    v103 = vuzp1q_s32(v68, *v89);
    v104 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(*v84, *v86)), vextq_s8(v68, v103, 0xCuLL));
    v105 = vuzp2q_s32(*v84, *v86);
    v99.i32[0] = v84->i64[1];
    v106 = vtrn2q_s32(vrev64q_s32(v99), v103);
    v107 = v68;
    v107.i32[3] = HIDWORD(v89->i64[0]);
    v108 = vtrn2q_s32(vrev64q_s32(v105), v107);
    v109 = vrev64q_s32(vtrn2q_s32(v105, *v84));
    v110 = vtrn2q_s32(v109, vuzp2q_s32(v68, *v89));
    if (a12[4] == v81)
    {
      v111 = 4 - a12[5];
    }

    else
    {
      v111 = 4;
    }

    v109.i32[0] = a12[1] & 2;
    v112 = vdupq_lane_s32(*&vceqq_s32(v109, v28), 0);
    v113 = vbslq_s8(v112, v108, v110);
    v114 = vbslq_s8(v112, v104, v106);
    v115 = vbslq_s8(v112, v96, v102);
    v116 = vbslq_s8(v112, v92, v94);
    v117 = vuzp2q_s32(v83, v88);
    v118 = v68;
    v118.i32[3] = HIDWORD(*(v72->i64 + v65));
    v119 = vtrn2q_s32(vrev64q_s32(v117), v118);
    v120 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v117, v83)), vuzp2q_s32(v68, v101));
    v121 = vbslq_s8(v112, v119, v120);
    v122 = vuzp1q_s32(v68, v101);
    v123 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v83, v88)), vextq_s8(v68, v122, 0xCuLL));
    v88.i32[0] = *(v70 + v63 + 8);
    v124 = vtrn2q_s32(vrev64q_s32(v88), v122);
    v125 = vbslq_s8(v112, v123, v124);
    v126 = v68;
    v126.i32[3] = HIDWORD(v72->i64[0]);
    v127 = vuzp2q_s32(v97, v98);
    v128 = vtrn2q_s32(vrev64q_s32(v127), v126);
    v129 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v127, v97)), vuzp2q_s32(v68, v100));
    v130 = vbslq_s8(v112, v128, v129);
    v131 = vuzp1q_s32(v68, v100);
    v132 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v97, v98)), vextq_s8(v68, v131, 0xCuLL));
    v98.i32[0] = *(v70 + 8);
    v133 = vtrn2q_s32(vrev64q_s32(v98), v131);
    if ((v80 & 2) != 0)
    {
      v111 -= 2;
    }

    v134 = v80 & 1;
    v135 = v111 - v134;
    v131.i32[0] = v134;
    v136 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v131, v28)), 0);
    v137 = vbslq_s8(v136, v130, vbslq_s8(v112, v132, v133));
    v138 = vbslq_s8(v136, v121, v125);
    v28 = vbslq_s8(v136, v115, v116);
    v139 = vbslq_s8(v136, v113, v114);
    if (v111 - v134 <= 1)
    {
      v146 = 0;
    }

    else
    {
      v140 = vbslq_s8(v112, v106, v104);
      v141 = vbslq_s8(v112, v110, v108);
      v142 = vbslq_s8(v112, v94, v92);
      v143 = vbslq_s8(v112, v102, v96);
      v144 = vbslq_s8(v112, v124, v123);
      v145 = vbslq_s8(v112, v133, v132);
      *a14 = v137;
      *(a14 + 16) = vbslq_s8(v136, v145, v130);
      *v73 = v138;
      *(v73 + 16) = vbslq_s8(v136, v144, v121);
      *v74 = v139;
      *(v74 + 16) = vbslq_s8(v136, v140, v113);
      v135 -= 2;
      v137 = vbslq_s8(v136, vbslq_s8(v112, v129, v128), v145);
      *v75 = v28;
      *(v75 + 16) = vbslq_s8(v136, v142, v115);
      v138 = vbslq_s8(v136, vbslq_s8(v112, v120, v119), v144);
      v139 = vbslq_s8(v136, v141, v140);
      v28 = vbslq_s8(v136, v143, v142);
      v146 = 32;
    }

    if (v135 >= 1)
    {
      *(v146 + a14) = v137;
      *(v146 + v73) = v138;
      *(v146 + v74) = v139;
      *(v146 + v75) = v28;
      v146 |= 0x10uLL;
    }

    v147 = a12[4];
    if (v147 != v81)
    {
      break;
    }

LABEL_139:
    a14 = v78 + a17;
    v72 = (v72 + v66);
    v71 = (v71 + result);
    v70 += v251;
    v61 = a12[6];
    v35 = v59++ >= v61;
    if (v35)
    {
      return result;
    }
  }

  v148 = (v70 + 16);
  v149 = v71 + 1;
  v150 = v72 + 1;
  a14 += v146;
  v73 += v146;
  v74 += v146;
  v75 += v146;
  ++v81;
LABEL_82:
  v151 = a12[5];
  v152 = v151 != 0;
  if (v147 == 0 && v152 || (v153 = v147 - v152, v81 > v153))
  {
    v195 = a14;
    v196 = v73;
    v197 = v74;
    v198 = v75;
    if (v151)
    {
LABEL_93:
      if (v59 == a12[6])
      {
        v199 = 4 - a12[7];
      }

      else
      {
        v199 = 4;
      }

      v200 = v148 > v54 || v60;
      if ((v200 & 1) != 0 || v149 > v54 || v150 > v54)
      {
        return result;
      }

      if (v199 < 2)
      {
        v202 = 0;
        v201 = v148;
        v203 = v148;
      }

      else
      {
        v201 = (v148 + v63);
        if (v199 == 2)
        {
          v202 = 0;
          v203 = (v148 + v63);
        }

        else
        {
          v203 = (v148 + v63);
          v201 = (v201 + v63);
          if (v199 <= 3)
          {
            v202 = 0;
          }

          else
          {
            v202 = v63;
          }
        }
      }

      v204 = (v201 + v202);
      v205 = 0uLL;
      v206 = 0uLL;
      v28 = 0uLL;
      v207 = 0uLL;
      if ((4 - v151))
      {
        v207.i32[0] = *(v148 + 3 - v151);
        v205.i32[0] = *(v203 + 3 - v151);
        v206.i32[0] = *(v201 + 3 - v151);
        result = v250;
        v28.i32[0] = *(v204 + 3 - v151);
      }

      if (((4 - v151) & 2) != 0)
      {
        v208.i64[0] = *v148;
        v208.i64[1] = v207.i64[0];
        v209.i64[0] = *v203;
        v209.i64[1] = v205.i64[0];
        v210.i64[0] = *v201;
        v210.i64[1] = v206.i64[0];
        v211.i64[0] = *v204;
        v211.i64[1] = v28.i64[0];
        v205 = v209;
        v206 = v210;
        v28 = v211;
        v207 = v208;
      }

      if (v199 < 2)
      {
        v213 = 0;
        v212 = v149;
        v214 = v149;
      }

      else
      {
        v212 = (v149->i64 + v64);
        if (v199 == 2)
        {
          v213 = 0;
          v214 = (v149->i64 + v64);
        }

        else
        {
          v214 = (v149->i64 + v64);
          v212 = (v212 + v64);
          if (v199 <= 3)
          {
            v213 = 0;
          }

          else
          {
            v213 = v64;
          }
        }
      }

      v215 = (v212 + v213);
      v216 = 0uLL;
      v217 = 0uLL;
      v218 = 0uLL;
      v219 = 0uLL;
      if ((4 - v151))
      {
        v219.i32[0] = v149->i32[3 - v151];
        v216.i32[0] = *(v214 + 3 - v151);
        v217.i32[0] = *(v212 + 3 - v151);
        result = v250;
        v218.i32[0] = *(v215 + 3 - v151);
      }

      if (((4 - v151) & 2) != 0)
      {
        v220.i64[0] = v149->i64[0];
        v220.i64[1] = v219.i64[0];
        v221.i64[0] = *v214;
        v221.i64[1] = v216.i64[0];
        v222.i64[0] = *v212;
        v222.i64[1] = v217.i64[0];
        v223.i64[0] = *v215;
        v223.i64[1] = v218.i64[0];
        v216 = v221;
        v217 = v222;
        v218 = v223;
        v219 = v220;
      }

      if (v199 < 2)
      {
        v225 = 0;
        v224 = v150;
        v226 = v150;
      }

      else
      {
        v224 = (v150->i64 + v65);
        if (v199 == 2)
        {
          v225 = 0;
          v226 = (v150->i64 + v65);
        }

        else
        {
          v226 = (v150->i64 + v65);
          v224 = (v224 + v65);
          if (v199 <= 3)
          {
            v225 = 0;
          }

          else
          {
            v225 = v65;
          }
        }
      }

      v227 = (v224 + v225);
      v228 = 0uLL;
      v229 = 0uLL;
      v230 = 0uLL;
      v231 = 0uLL;
      if ((4 - v151))
      {
        v231.i32[0] = v150->i32[3 - v151];
        v228.i32[0] = *(v226 + 3 - v151);
        v229.i32[0] = *(v224 + 3 - v151);
        result = v250;
        v230.i32[0] = *(v227 + 3 - v151);
      }

      if (((4 - v151) & 2) != 0)
      {
        v232.i64[0] = v150->i64[0];
        v232.i64[1] = v231.i64[0];
        v233.i64[0] = *v226;
        v233.i64[1] = v228.i64[0];
        v234.i64[0] = *v224;
        v234.i64[1] = v229.i64[0];
        v235.i64[0] = *v227;
        v235.i64[1] = v230.i64[0];
        v228 = v233;
        v229 = v234;
        v230 = v235;
        v231 = v232;
      }

      v236 = vuzp1q_s32(v68, v231);
      v237 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v207, v219)), vextq_s8(v68, v236, 0xCuLL));
      v238 = vuzp1q_s32(v68, v228);
      v239 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v205, v216)), vextq_s8(v68, v238, 0xCuLL));
      v240 = vuzp1q_s32(v68, v229);
      v241 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v206, v217)), vextq_s8(v68, v240, 0xCuLL));
      v242 = vuzp1q_s32(v68, v230);
      v243 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v28, v218)), vextq_s8(v68, v242, 0xCuLL));
      if (((4 - v151) & 2) != 0)
      {
        v244 = v68;
        v244.i32[3] = v231.i32[1];
        v245 = v68;
        v245.i32[3] = v228.i32[1];
        v246 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v207, v219)), v244);
        v247 = v68;
        v247.i32[3] = v229.i32[1];
        v248 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v205, v216)), v245);
        v249 = v68;
        v249.i32[3] = v230.i32[1];
        *v195 = v237;
        v195[1] = v246;
        *v196 = v239;
        v196[1] = v248;
        *v197 = v241;
        v197[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v206, v217)), v247);
        *v198 = v243;
        v198[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v28, v218)), v249);
        if ((4 - v151))
        {
          v219.i32[0] = v207.i32[2];
          v216.i32[0] = v205.i32[2];
          v217.i32[0] = v206.i32[2];
          v218.i32[0] = v28.i32[2];
          v195[2] = vtrn2q_s32(vrev64q_s32(v219), v236);
          v196[2] = vtrn2q_s32(vrev64q_s32(v216), v238);
          v28 = vtrn2q_s32(vrev64q_s32(v218), v242);
          v197[2] = vtrn2q_s32(vrev64q_s32(v217), v240);
          v198[2] = v28;
        }
      }

      else
      {
        *v195 = v237;
        *v196 = v239;
        *v197 = v241;
        *v198 = v243;
      }
    }

    goto LABEL_139;
  }

  if (!v60)
  {
    v154 = v153 - v81 + 1;
    while (v148 <= v54 && v149 <= v54 && v150 <= v54)
    {
      v155 = (v148 + v63);
      v156 = (v148 + v63 + v63);
      v157 = *(v156 + v63);
      v158 = (v149 + v64 + v64);
      v159 = *(v158 + v64);
      v160 = vuzp2q_s32(v157, v159);
      v161 = *v158;
      v162 = (v150 + v65 + v65);
      v163 = *(v162 + v65);
      v164 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v160, v157)), vuzp2q_s32(v68, v163));
      v165 = vuzp2q_s32(*v156, v161);
      v166 = vuzp1q_s32(*v156, v161);
      v161.i32[0] = v156->i64[1];
      v167 = vuzp1q_s32(v68, *v162);
      v168 = vtrn2q_s32(vrev64q_s32(v161), v167);
      v169 = v68;
      v169.i32[3] = HIDWORD(v162->i64[0]);
      v170 = *v148;
      v148 += 2;
      v171 = v170;
      v172 = *v155;
      v173 = vtrn2q_s32(vrev64q_s32(v165), v169);
      v174 = *(v149 + v64);
      v175 = vtrn2q_s32(vrev64q_s32(v166), vextq_s8(v68, v167, 0xCuLL));
      v176 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v165, *v156)), vuzp2q_s32(v68, *v162));
      v177 = vuzp2q_s32(*v155, v174);
      v178 = *v149++;
      v179 = v178;
      v180 = *(v150 + v65);
      v181 = v68;
      v181.i32[3] = HIDWORD(*(v150->i64 + v65));
      v182 = *v150++;
      v183 = vuzp2q_s32(v171, v179);
      v184 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v183, v171)), vuzp2q_s32(v68, v182));
      v185 = vuzp1q_s32(v68, v182);
      v186 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v171, v179)), vextq_s8(v68, v185, 0xCuLL));
      v187 = v68;
      v187.i32[3] = v182.i32[1];
      v188 = vtrn2q_s32(vrev64q_s32(v183), v187);
      v189 = v68;
      v189.i32[3] = HIDWORD(*(v162->i64 + v65));
      v179.i32[0] = v171.i32[2];
      v190 = vuzp1q_s32(v157, v159);
      v191 = vuzp1q_s32(v68, v163);
      v192 = vtrn2q_s32(vrev64q_s32(v179), v185);
      v193 = vuzp1q_s32(*v155, v174);
      v174.i32[0] = v155->i64[1];
      *a14 = v186;
      *(a14 + 16) = v188;
      v194 = vuzp1q_s32(v68, v180);
      v195 = (a14 + 64);
      *(a14 + 32) = v192;
      *(a14 + 48) = v184;
      v196 = (v73 + 64);
      *v73 = vtrn2q_s32(vrev64q_s32(v193), vextq_s8(v68, v194, 0xCuLL));
      *(v73 + 16) = vtrn2q_s32(vrev64q_s32(v177), v181);
      *(v73 + 32) = vtrn2q_s32(vrev64q_s32(v174), v194);
      *(v73 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v177, v172)), vuzp2q_s32(v68, v180));
      v197 = (v74 + 64);
      *v74 = v175;
      *(v74 + 16) = v173;
      *(v74 + 32) = v168;
      *(v74 + 48) = v176;
      v198 = (v75 + 64);
      v159.i32[0] = v157.i32[2];
      *(v75 + 32) = vtrn2q_s32(vrev64q_s32(v159), v191);
      *(v75 + 48) = v164;
      v28 = vtrn2q_s32(vrev64q_s32(v160), v189);
      *v75 = vtrn2q_s32(vrev64q_s32(v190), vextq_s8(v68, v191, 0xCuLL));
      *(v75 + 16) = v28;
      v75 += 64;
      v74 += 64;
      v73 += 64;
      a14 += 64;
      if (!--v154)
      {
        v151 = a12[5];
        if (v151)
        {
          goto LABEL_93;
        }

        goto LABEL_139;
      }
    }
  }

  return result;
}

unint64_t ExtractInterleaved4_B44<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(unint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  if (*(a11 + 8) >= a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = *(a11 + 8);
  }

  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(v271, a3);
  v24 = *(a11 + 24);
  result = *(a11 + 60);
  v25 = *(a4 + 8);
  v26 = *(*&v25[5] + 8 * result);
  v27 = v26[2];
  v28 = vmin_u32(vmls_s32(v27, v25[6], v24), v25[6]).u32[0];
  if (v28 <= 0xFFFFFFFC)
  {
    v29 = (v28 + 3) >> 2;
  }

  else
  {
    v29 = 0x40000000;
  }

  v30 = *(a5 + 8);
  v31 = *(*&v30[5] + 8 * result);
  v32 = v31[2];
  v33 = vmin_u32(vmls_s32(v32, v30[6], v24), v30[6]).u32[0];
  v34 = *(a6 + 8);
  v35 = *(*&v34[5] + 8 * result);
  if (v33 <= 0xFFFFFFFC)
  {
    v36 = (v33 + 3) >> 2;
  }

  else
  {
    v36 = 0x40000000;
  }

  v37 = v35[2];
  v38 = vmin_u32(vmls_s32(v37, v34[6], v24), v34[6]).u32[0];
  v39 = (v38 + 3) >> 2;
  if (v38 > 0xFFFFFFFC)
  {
    v39 = 0x40000000;
  }

  if (v23 < 0xE)
  {
    return result;
  }

  v40 = a3[1];
  v41 = (v24.i32[1] * *(a13 + 60));
  if (v40)
  {
    v42 = *(*(v40 + 40) + 8 * result);
    v43 = *(v42 + 12) - 1;
    if (v43 >= v41)
    {
      v43 = (v24.i32[1] * *(a13 + 60));
    }

    if (*(v40 + 104) == 1)
    {
      v44 = (*(v42 + 8 * v24.u32[0] + 24) + 8 * v43);
    }

    else
    {
      v46 = (v43 * *(v40 + 108)) >> *(v40 + 112);
      if (v46 >= *(v42 + 20) - 1)
      {
        LODWORD(v46) = *(v42 + 20) - 1;
      }

      v44 = (*(v42 + 8 * v24.u32[0] + 24) + 8 * v46);
    }

    v45 = *v44;
  }

  else
  {
    v45 = 0;
  }

  v47 = v26[1].u32[1] - 1;
  if (v47 >= v41)
  {
    v47 = (v24.i32[1] * *(a13 + 60));
  }

  v48 = &v26[v24.u32[0]];
  if (v25[13].i32[0] == 1)
  {
    v49 = (*&v48[3] + 8 * v47);
  }

  else
  {
    v50 = (v47 * v25[13].u32[1]) >> v25[14].i32[0];
    if (v50 >= v27.i32[1] - 1)
    {
      LODWORD(v50) = v27.i32[1] - 1;
    }

    v49 = (*&v48[3] + 8 * v50);
  }

  v51 = v31[1].u32[1] - 1;
  if (v51 >= v41)
  {
    v51 = (v24.i32[1] * *(a13 + 60));
  }

  v52 = &v31[v24.u32[0]];
  if (v30[13].i32[0] == 1)
  {
    v53 = (*&v52[3] + 8 * v51);
  }

  else
  {
    v54 = (v51 * v30[13].u32[1]) >> v30[14].i32[0];
    if (v54 >= v32.i32[1] - 1)
    {
      LODWORD(v54) = v32.i32[1] - 1;
    }

    v53 = (*&v52[3] + 8 * v54);
  }

  v55 = v22 + v23 - 14;
  v56 = v35[1].u32[1] - 1;
  if (v56 >= v41)
  {
    v56 = (v24.i32[1] * *(a13 + 60));
  }

  v57 = &v35[v24.u32[0]];
  if (v34[13].i32[0] == 1)
  {
    v58 = (*&v57[3] + 8 * v56);
  }

  else
  {
    v59 = (v56 * v34[13].u32[1]) >> v34[14].i32[0];
    if (v59 >= v37.i32[1] - 1)
    {
      LODWORD(v59) = v37.i32[1] - 1;
    }

    v58 = (*&v57[3] + 8 * v59);
  }

  v60 = a12[2];
  v270 = v45 + v22 > v55;
  result = a12[6];
  if (v60 > result)
  {
    return result;
  }

  v62 = 14 * v29;
  v63 = 14 * v36;
  v64 = 14 * v39;
  v65 = v271;
  v66 = vld1q_dup_s16(v65);
  v67 = 14 * *a12;
  v268 = v63;
  v269 = v62;
  v68 = (*v49 + v22 + v67 + v62 * v60);
  v69 = (*v53 + v22 + v67 + v63 * v60);
  v267 = v64;
  v70 = (v67 + v22 + *v58 + v64 * v60);
  v71 = xmmword_296B6EDE0;
  v72 = xmmword_296B6EDF0;
  v73.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v73.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v74 = (a14 + a17);
    v75 = (a14 + a17 + a17);
    v76 = (v75 + a17);
    if (!a16)
    {
      v79 = (v75 + a17);
      goto LABEL_63;
    }

    if (v60 == a12[2])
    {
      v77 = a12[3] + 1;
      v78 = a14;
      a14 = (a14 + a17);
      v74 = v75;
      v75 = (v75 + a17);
      do
      {
        v79 = v75;
        v75 = v74;
        v74 = a14;
        a14 = v78;
        v78 = a16;
        --v77;
      }

      while (v77);
    }

    else
    {
      v79 = (v75 + a17);
    }

    if (v60 == result)
    {
      v80 = a12[7];
      switch(v80)
      {
        case 1u:
          goto LABEL_61;
        case 2u:
          goto LABEL_60;
        case 3u:
          v74 = a16;
LABEL_60:
          v75 = a16;
LABEL_61:
          v76 = a16;
          goto LABEL_63;
      }
    }

    v76 = v79;
LABEL_63:
    result = *a12;
    v81 = a12[1];
    if (!v81)
    {
      v154 = a12[4];
      v155 = v68;
      v156 = v69;
      v157 = v70;
      goto LABEL_90;
    }

    v82 = v270;
    if (v68 > v55)
    {
      v82 = 1;
    }

    if ((v82 & 1) != 0 || v69 > v55 || v70 > v55)
    {
      return result;
    }

    v83.i64[0] = *(v68 + 1);
    v83.i64[1] = *(v68 + 3);
    v84 = vqtbl1q_s8(v83, v71);
    v85 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v84, 8uLL), xmmword_296B6EE00), vshlq_u8(v84, v72)), xmmword_296B6EE10);
    v86 = vaddq_s8(v85, v73);
    v85.i8[1] = 0;
    v87 = vqtbl1q_s8(v86, xmmword_296B6EE20);
    v88 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v87, xmmword_296B6EE30), v87), vqtbl1q_s8(v87, xmmword_296B6EE40));
    v89 = vdupq_lane_s16(*v85.i8, 0);
    v90 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v88.i8), xmmword_296B6EE50), *v88.i8), v89);
    v91 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v88), xmmword_296B6EE50), v88), v89);
    v92 = vdupq_n_s16(bswap32(*v68) >> 16);
    v93 = vaddq_s16(v91, v92);
    v94 = vaddq_s16(v90, v92);
    v95 = veorq_s8((*&v93 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v93));
    v96 = veorq_s8((*&v94 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v94));
    if (a8)
    {
      v96.i64[0] = (*(a8 + ((v96.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v96.u16[2]) << 32) | (*(a8 + 2 * v96.u16[1]) << 16) | *(a8 + 2 * v96.u16[0]);
      v96.i64[1] = (*(a8 + ((v96.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v96.u16[6]) << 32) | (*(a8 + 2 * v96.u16[5]) << 16) | *(a8 + 2 * v96.u16[4]);
      v95.i64[0] = (*(a8 + ((v95.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v95.u16[2]) << 32) | (*(a8 + 2 * v95.u16[1]) << 16) | *(a8 + 2 * v95.u16[0]);
      v95.i64[1] = (*(a8 + ((v95.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v95.u16[6]) << 32) | (*(a8 + 2 * v95.u16[5]) << 16) | *(a8 + 2 * v95.u16[4]);
    }

    v97.i64[0] = *(v69 + 1);
    v97.i64[1] = *(v69 + 3);
    v98 = vqtbl1q_s8(v97, v71);
    v99 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v98, 8uLL), xmmword_296B6EE00), vshlq_u8(v98, v72)), xmmword_296B6EE10);
    v100 = vaddq_s8(v99, v73);
    v99.i8[1] = 0;
    v101 = vqtbl1q_s8(v100, xmmword_296B6EE20);
    v102 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v101, xmmword_296B6EE30), v101), vqtbl1q_s8(v101, xmmword_296B6EE40));
    v103 = vdupq_lane_s16(*v99.i8, 0);
    v104 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v102.i8), xmmword_296B6EE50), *v102.i8), v103);
    v105 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v102), xmmword_296B6EE50), v102), v103);
    v106 = vdupq_n_s16(bswap32(*v69) >> 16);
    v107 = vaddq_s16(v105, v106);
    v108 = vaddq_s16(v104, v106);
    v109 = veorq_s8((*&v107 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v107));
    v110 = veorq_s8((*&v108 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v108));
    if (a9)
    {
      v110.i64[0] = (*(a9 + ((v110.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v110.u16[2]) << 32) | (*(a9 + 2 * v110.u16[1]) << 16) | *(a9 + 2 * v110.u16[0]);
      v110.i64[1] = (*(a9 + ((v110.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v110.u16[6]) << 32) | (*(a9 + 2 * v110.u16[5]) << 16) | *(a9 + 2 * v110.u16[4]);
      v109.i64[0] = (*(a9 + ((v109.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v109.u16[2]) << 32) | (*(a9 + 2 * v109.u16[1]) << 16) | *(a9 + 2 * v109.u16[0]);
      v109.i64[1] = (*(a9 + ((v109.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v109.u16[6]) << 32) | (*(a9 + 2 * v109.u16[5]) << 16) | *(a9 + 2 * v109.u16[4]);
    }

    v111.i64[0] = *(v70 + 1);
    v111.i64[1] = *(v70 + 3);
    v112 = vqtbl1q_s8(v111, v71);
    v113 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v112, 8uLL), xmmword_296B6EE00), vshlq_u8(v112, v72)), xmmword_296B6EE10);
    v114 = vaddq_s8(v113, v73);
    v113.i8[1] = 0;
    v115 = vqtbl1q_s8(v114, xmmword_296B6EE20);
    v116 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v115, xmmword_296B6EE30), v115), vqtbl1q_s8(v115, xmmword_296B6EE40));
    v117 = vdupq_lane_s16(*v113.i8, 0);
    v118 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v116.i8), xmmword_296B6EE50), *v116.i8), v117);
    v119 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v116), xmmword_296B6EE50), v116), v117);
    v120 = vdupq_n_s16(bswap32(*v70) >> 16);
    v121 = vaddq_s16(v119, v120);
    v122 = vaddq_s16(v118, v120);
    v123 = vcgezq_s16(v122);
    v124 = *&v122 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL);
    v125 = veorq_s8((*&v121 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v121));
    v126 = veorq_s8(v124, v123);
    if (a10)
    {
      v126.i64[0] = (*(a10 + ((v126.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v126.u16[2]) << 32) | (*(a10 + 2 * v126.u16[1]) << 16) | *(a10 + 2 * v126.u16[0]);
      v126.i64[1] = (*(a10 + ((v126.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v126.u16[6]) << 32) | (*(a10 + 2 * v126.u16[5]) << 16) | *(a10 + 2 * v126.u16[4]);
      v125.i64[0] = (*(a10 + ((v125.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v125.u16[2]) << 32) | (*(a10 + 2 * v125.u16[1]) << 16) | *(a10 + 2 * v125.u16[0]);
      v125.i64[1] = (*(a10 + ((v125.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v125.u16[6]) << 32) | (*(a10 + 2 * v125.u16[5]) << 16) | *(a10 + 2 * v125.u16[4]);
    }

    LODWORD(v124) = 0;
    v127 = v125;
    v289.val[1] = vqtbl2q_s8(*v95.i8, xmmword_296B6EF40);
    v128 = v66;
    v289.val[0] = vqtbl2q_s8(*(&v109 - 1), xmmword_296B6EE70);
    v276.val[1] = vqtbl2q_s8(*v95.i8, xmmword_296B6EF50);
    v276.val[0] = vqtbl2q_s8(*(&v109 - 1), xmmword_296B6EE90);
    v279.val[1] = vqtbl2q_s8(*v95.i8, xmmword_296B6EF60);
    v279.val[0] = vqtbl2q_s8(*(&v109 - 1), xmmword_296B6EEA0);
    v129 = vqtbl2q_s8(*v95.i8, xmmword_296B6EF70);
    v130 = vqtbl2q_s8(*(&v109 - 1), xmmword_296B6EEB0);
    v131 = vqtbl2q_s8(v289, xmmword_296B6EDD0);
    v132 = vqtbl2q_s8(v276, xmmword_296B6EDD0);
    v133 = vqtbl2q_s8(v279, xmmword_296B6EDD0);
    v134 = vqtbl2q_s8(*v130.i8, xmmword_296B6EDD0);
    if (a12[4] == result)
    {
      v135 = 4 - a12[5];
    }

    else
    {
      v135 = 4;
    }

    v130.i32[0] = a12[1] & 2;
    v136 = vdupq_lane_s32(*&vceqq_s32(v130, v124), 0);
    v137 = v126;
    v278.val[1] = vqtbl2q_s8(*v96.i8, xmmword_296B6EF60);
    v138 = v66;
    v278.val[0] = vqtbl2q_s8(*(&v110 - 1), xmmword_296B6EEA0);
    v139 = vqtbl2q_s8(v278, xmmword_296B6EDD0);
    v278.val[1] = vqtbl2q_s8(*v96.i8, xmmword_296B6EF70);
    v278.val[0] = vqtbl2q_s8(*(&v110 - 1), xmmword_296B6EEB0);
    v140 = vqtbl2q_s8(v278, xmmword_296B6EDD0);
    v141 = vbslq_s8(v136, v140, v139);
    v142 = vbslq_s8(v136, v139, v140);
    v272.val[1] = vqtbl2q_s8(*v96.i8, xmmword_296B6EF40);
    v272.val[0] = vqtbl2q_s8(*(&v110 - 1), xmmword_296B6EE70);
    v272.val[0] = vqtbl2q_s8(v272, xmmword_296B6EDD0);
    v282.val[1] = vqtbl2q_s8(*v96.i8, xmmword_296B6EF50);
    v282.val[0] = vqtbl2q_s8(*(&v110 - 1), xmmword_296B6EE90);
    v272.val[1] = vqtbl2q_s8(v282, xmmword_296B6EDD0);
    v143 = vbslq_s8(v136, v272.val[1], v272.val[0]);
    v144 = vbslq_s8(v136, v272.val[0], v272.val[1]);
    v145 = vbslq_s8(v136, v134, v133);
    v146 = vbslq_s8(v136, v133, v134);
    v147 = vbslq_s8(v136, v132, v131);
    v148 = vbslq_s8(v136, v131, v132);
    if ((v81 & 2) != 0)
    {
      v135 -= 2;
    }

    if (v81)
    {
      v149 = vextq_s8(v143, v144, 8uLL).u64[0];
      v144 = vextq_s8(v144, v143, 8uLL);
      v150 = vextq_s8(v141, v142, 8uLL).u64[0];
      v142 = vextq_s8(v142, v141, 8uLL);
      v151 = vextq_s8(v147, v148, 8uLL).u64[0];
      v148 = vextq_s8(v148, v147, 8uLL);
      v152 = vextq_s8(v145, v146, 8uLL).u64[0];
      --v135;
      v146 = vextq_s8(v146, v145, 8uLL);
      v143.i64[0] = v149;
      v141.i64[0] = v150;
      v147.i64[0] = v151;
      v145.i64[0] = v152;
    }

    v72 = xmmword_296B6EDF0;
    v71 = xmmword_296B6EDE0;
    v73.i64[0] = 0xE0E0E0E0E0E0E0E0;
    v73.i64[1] = 0xE0E0E0E0E0E0E0E0;
    if (v135 <= 1)
    {
      v153 = 0;
    }

    else
    {
      *a14 = v144;
      *v74 = v142;
      v135 -= 2;
      v144.i64[0] = v143.i64[0];
      v142.i64[0] = v141.i64[0];
      *v75 = v148;
      v148.i64[0] = v147.i64[0];
      *v76 = v146;
      v146.i64[0] = v145.i64[0];
      v153 = 16;
    }

    if (v135 >= 1)
    {
      *(a14->i64 + v153) = v144.i64[0];
      *(v74->i64 + v153) = v142.i64[0];
      *(v75->i64 + v153) = v148.i64[0];
      *(v76->i64 + v153) = v146.i64[0];
      v153 |= 8uLL;
    }

    v154 = a12[4];
    if (v154 != result)
    {
      break;
    }

LABEL_122:
    a14 = (v79 + a17);
    v70 = (v70 + v267);
    v69 = (v69 + v268);
    v68 = (v68 + v269);
    result = a12[6];
    v266 = v60 >= result;
    v60 = (v60 + 1);
    if (v266)
    {
      return result;
    }
  }

  v155 = v68 + 7;
  v156 = v69 + 7;
  v157 = v70 + 7;
  a14 = (a14 + v153);
  v74 = (v74 + v153);
  v75 = (v75 + v153);
  v76 = (v76 + v153);
  ++result;
LABEL_90:
  v158 = a12[5];
  v159 = v158 != 0;
  if (v154 == 0 && v159 || (v160 = v154 - v159, result > v160))
  {
    result = a14;
    v211 = v74;
    v212 = v75;
    v213 = v76;
    if (v158)
    {
LABEL_107:
      v214 = v270;
      if (v155 > v55)
      {
        v214 = 1;
      }

      if ((v214 & 1) != 0 || v156 > v55 || v157 > v55)
      {
        return result;
      }

      v215.i64[0] = *(v155 + 1);
      v215.i64[1] = *(v155 + 3);
      v216 = vqtbl1q_s8(v215, v71);
      v217 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v216, 8uLL), xmmword_296B6EE00), vshlq_u8(v216, v72)), xmmword_296B6EE10);
      v218 = vaddq_s8(v217, v73);
      v217.i8[1] = 0;
      v219 = vqtbl1q_s8(v218, xmmword_296B6EE20);
      v220 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v219, xmmword_296B6EE30), v219), vqtbl1q_s8(v219, xmmword_296B6EE40));
      v221 = vdupq_lane_s16(*v217.i8, 0);
      v222 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v220.i8), xmmword_296B6EE50), *v220.i8), v221);
      v223 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v220), xmmword_296B6EE50), v220), v221);
      v224 = vdupq_n_s16(bswap32(*v155) >> 16);
      v225 = vaddq_s16(v223, v224);
      v226 = vaddq_s16(v222, v224);
      v227 = veorq_s8((*&v225 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v225));
      v228 = veorq_s8((*&v226 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v226));
      if (a8)
      {
        v228.i64[0] = (*(a8 + ((v228.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v228.u16[2]) << 32) | (*(a8 + 2 * v228.u16[1]) << 16) | *(a8 + 2 * v228.u16[0]);
        v228.i64[1] = (*(a8 + ((v228.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v228.u16[6]) << 32) | (*(a8 + 2 * v228.u16[5]) << 16) | *(a8 + 2 * v228.u16[4]);
        v227.i64[0] = (*(a8 + ((v227.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v227.u16[2]) << 32) | (*(a8 + 2 * v227.u16[1]) << 16) | *(a8 + 2 * v227.u16[0]);
        v227.i64[1] = (*(a8 + ((v227.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v227.u16[6]) << 32) | (*(a8 + 2 * v227.u16[5]) << 16) | *(a8 + 2 * v227.u16[4]);
      }

      v229.i64[0] = *(v156 + 1);
      v229.i64[1] = *(v156 + 3);
      v230 = vqtbl1q_s8(v229, v71);
      v231 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v230, 8uLL), xmmword_296B6EE00), vshlq_u8(v230, v72)), xmmword_296B6EE10);
      v232 = vaddq_s8(v231, v73);
      v231.i8[1] = 0;
      v233 = vqtbl1q_s8(v232, xmmword_296B6EE20);
      v234 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v233, xmmword_296B6EE30), v233), vqtbl1q_s8(v233, xmmword_296B6EE40));
      v235 = vdupq_lane_s16(*v231.i8, 0);
      v236 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v234.i8), xmmword_296B6EE50), *v234.i8), v235);
      v237 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v234), xmmword_296B6EE50), v234), v235);
      v238 = vdupq_n_s16(bswap32(*v156) >> 16);
      v239 = vaddq_s16(v237, v238);
      v240 = vaddq_s16(v236, v238);
      v241 = veorq_s8((*&v239 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v239));
      v242 = veorq_s8((*&v240 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v240));
      if (a9)
      {
        v242.i64[0] = (*(a9 + ((v242.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v242.u16[2]) << 32) | (*(a9 + 2 * v242.u16[1]) << 16) | *(a9 + 2 * v242.u16[0]);
        v242.i64[1] = (*(a9 + ((v242.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v242.u16[6]) << 32) | (*(a9 + 2 * v242.u16[5]) << 16) | *(a9 + 2 * v242.u16[4]);
        v241.i64[0] = (*(a9 + ((v241.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v241.u16[2]) << 32) | (*(a9 + 2 * v241.u16[1]) << 16) | *(a9 + 2 * v241.u16[0]);
        v241.i64[1] = (*(a9 + ((v241.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v241.u16[6]) << 32) | (*(a9 + 2 * v241.u16[5]) << 16) | *(a9 + 2 * v241.u16[4]);
      }

      v243.i64[0] = *(v157 + 1);
      v243.i64[1] = *(v157 + 3);
      v244 = vqtbl1q_s8(v243, v71);
      v245 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v244, 8uLL), xmmword_296B6EE00), vshlq_u8(v244, v72)), xmmword_296B6EE10);
      v246 = vaddq_s8(v245, v73);
      v245.i8[1] = 0;
      v247 = vqtbl1q_s8(v246, xmmword_296B6EE20);
      v248 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v247, xmmword_296B6EE30), v247), vqtbl1q_s8(v247, xmmword_296B6EE40));
      v249 = vdupq_lane_s16(*v245.i8, 0);
      v250 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v248.i8), xmmword_296B6EE50), *v248.i8), v249);
      v251 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v248), xmmword_296B6EE50), v248), v249);
      v252 = vdupq_n_s16(bswap32(*v157) >> 16);
      v253 = vaddq_s16(v251, v252);
      v254 = vaddq_s16(v250, v252);
      v255 = veorq_s8((*&v253 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v253));
      v256 = veorq_s8((*&v254 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v254));
      if (a10)
      {
        v256.i64[0] = (*(a10 + ((v256.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v256.u16[2]) << 32) | (*(a10 + 2 * v256.u16[1]) << 16) | *(a10 + 2 * v256.u16[0]);
        v256.i64[1] = (*(a10 + ((v256.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v256.u16[6]) << 32) | (*(a10 + 2 * v256.u16[5]) << 16) | *(a10 + 2 * v256.u16[4]);
        v255.i64[0] = (*(a10 + ((v255.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v255.u16[2]) << 32) | (*(a10 + 2 * v255.u16[1]) << 16) | *(a10 + 2 * v255.u16[0]);
        v255.i64[1] = (*(a10 + ((v255.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v255.u16[6]) << 32) | (*(a10 + 2 * v255.u16[5]) << 16) | *(a10 + 2 * v255.u16[4]);
      }

      v257 = v256;
      v258 = v66;
      v287.val[1] = vqtbl2q_s8(*v228.i8, xmmword_296B6EF60);
      v287.val[0] = vqtbl2q_s8(*(&v242 - 1), xmmword_296B6EEA0);
      v259 = vqtbl2q_s8(v287, xmmword_296B6EDD0);
      v260 = vqtbl2q_s8(*v228.i8, xmmword_296B6EF40);
      v287.val[1] = vqtbl2q_s8(*(&v242 - 1), xmmword_296B6EE70);
      v261 = vqtbl2q_s8(*(&v287 + 16), xmmword_296B6EDD0);
      v262 = v255;
      v263 = v66;
      v275.val[1] = vqtbl2q_s8(*v227.i8, xmmword_296B6EF60);
      v275.val[0] = vqtbl2q_s8(*(&v241 - 1), xmmword_296B6EEA0);
      v264 = vqtbl2q_s8(v275, xmmword_296B6EDD0);
      v273.val[1] = vqtbl2q_s8(*v227.i8, xmmword_296B6EF40);
      v273.val[0] = vqtbl2q_s8(*(&v241 - 1), xmmword_296B6EE70);
      v265 = vqtbl2q_s8(v273, xmmword_296B6EDD0);
      if (((4 - v158) & 2) != 0)
      {
        *result = v261;
        *v211 = v259;
        *v212 = v265;
        *v213 = v264;
        if ((4 - v158))
        {
          v288.val[1] = vqtbl2q_s8(*v228.i8, xmmword_296B6EF70);
          v288.val[0] = vqtbl2q_s8(*(&v242 - 1), xmmword_296B6EEB0);
          v283.val[1] = vqtbl2q_s8(*v228.i8, xmmword_296B6EF50);
          v283.val[0] = vqtbl2q_s8(*(&v242 - 1), xmmword_296B6EE90);
          v284.val[1] = vqtbl2q_s8(*v227.i8, xmmword_296B6EF70);
          v284.val[0] = vqtbl2q_s8(*(&v241 - 1), xmmword_296B6EEB0);
          v281.val[1] = vqtbl2q_s8(*v227.i8, xmmword_296B6EF50);
          v281.val[0] = vqtbl2q_s8(*(&v241 - 1), xmmword_296B6EE90);
          *(result + 16) = vqtbl2q_s8(v283, xmmword_296B6EDD0).u64[0];
          v211[1].i64[0] = vqtbl2q_s8(v288, xmmword_296B6EDD0).u64[0];
          v212[1].i64[0] = vqtbl2q_s8(v281, xmmword_296B6EDD0).u64[0];
          v213[1].i64[0] = vqtbl2q_s8(v284, xmmword_296B6EDD0).u64[0];
        }
      }

      else
      {
        *result = v261.i64[0];
        v211->i64[0] = v259.i64[0];
        v212->i64[0] = v265.i64[0];
        v213->i64[0] = v264.i64[0];
      }
    }

    goto LABEL_122;
  }

  if (!v270)
  {
    result = v160 - result;
    v161 = (result + 1);
    while (v155 <= v55 && v156 <= v55 && v157 <= v55)
    {
      v162.i64[0] = *(v155 + 1);
      v162.i64[1] = *(v155 + 3);
      v163 = vqtbl1q_s8(v162, v71);
      v164 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v163, 8uLL), xmmword_296B6EE00), vshlq_u8(v163, v72)), xmmword_296B6EE10);
      v165 = vaddq_s8(v164, v73);
      v164.i8[1] = 0;
      v166 = vqtbl1q_s8(v165, xmmword_296B6EE20);
      v167 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v166, xmmword_296B6EE30), v166), vqtbl1q_s8(v166, xmmword_296B6EE40));
      v168 = vdupq_lane_s16(*v164.i8, 0);
      v169 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v167.i8), xmmword_296B6EE50), *v167.i8), v168);
      v170 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v167), xmmword_296B6EE50), v167), v168);
      v171 = vdupq_n_s16(bswap32(*v155) >> 16);
      v172 = vaddq_s16(v170, v171);
      v173 = vaddq_s16(v169, v171);
      v174 = veorq_s8((*&v172 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v172));
      v175 = veorq_s8((*&v173 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v173));
      if (a8)
      {
        v175.i64[0] = (*(a8 + ((v175.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v175.u16[2]) << 32) | (*(a8 + 2 * v175.u16[1]) << 16) | *(a8 + 2 * v175.u16[0]);
        v175.i64[1] = (*(a8 + ((v175.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v175.u16[6]) << 32) | (*(a8 + 2 * v175.u16[5]) << 16) | *(a8 + 2 * v175.u16[4]);
        v174.i64[0] = (*(a8 + ((v174.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v174.u16[2]) << 32) | (*(a8 + 2 * v174.u16[1]) << 16) | *(a8 + 2 * v174.u16[0]);
        v174.i64[1] = (*(a8 + ((v174.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v174.u16[6]) << 32) | (*(a8 + 2 * v174.u16[5]) << 16) | *(a8 + 2 * v174.u16[4]);
      }

      v176.i64[0] = *(v156 + 1);
      v176.i64[1] = *(v156 + 3);
      v177 = vqtbl1q_s8(v176, v71);
      v178 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v177, 8uLL), xmmword_296B6EE00), vshlq_u8(v177, v72)), xmmword_296B6EE10);
      v179 = vaddq_s8(v178, v73);
      v178.i8[1] = 0;
      v180 = vqtbl1q_s8(v179, xmmword_296B6EE20);
      v181 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v180, xmmword_296B6EE30), v180), vqtbl1q_s8(v180, xmmword_296B6EE40));
      v182 = vdupq_lane_s16(*v178.i8, 0);
      v183 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v181.i8), xmmword_296B6EE50), *v181.i8), v182);
      v184 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v181), xmmword_296B6EE50), v181), v182);
      v185 = vdupq_n_s16(bswap32(*v156) >> 16);
      v186 = vaddq_s16(v184, v185);
      v187 = vaddq_s16(v183, v185);
      v188 = veorq_s8((*&v186 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v186));
      v189 = veorq_s8((*&v187 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v187));
      if (a9)
      {
        v189.i64[0] = (*(a9 + ((v189.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v189.u16[2]) << 32) | (*(a9 + 2 * v189.u16[1]) << 16) | *(a9 + 2 * v189.u16[0]);
        v189.i64[1] = (*(a9 + ((v189.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v189.u16[6]) << 32) | (*(a9 + 2 * v189.u16[5]) << 16) | *(a9 + 2 * v189.u16[4]);
        v188.i64[0] = (*(a9 + ((v188.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v188.u16[2]) << 32) | (*(a9 + 2 * v188.u16[1]) << 16) | *(a9 + 2 * v188.u16[0]);
        v188.i64[1] = (*(a9 + ((v188.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v188.u16[6]) << 32) | (*(a9 + 2 * v188.u16[5]) << 16) | *(a9 + 2 * v188.u16[4]);
      }

      v190.i64[0] = *(v157 + 1);
      v190.i64[1] = *(v157 + 3);
      v191 = vqtbl1q_s8(v190, v71);
      v192 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v191, 8uLL), xmmword_296B6EE00), vshlq_u8(v191, v72)), xmmword_296B6EE10);
      v193 = vaddq_s8(v192, v73);
      v192.i8[1] = 0;
      v194 = vqtbl1q_s8(v193, xmmword_296B6EE20);
      v195 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v194, xmmword_296B6EE30), v194), vqtbl1q_s8(v194, xmmword_296B6EE40));
      v196 = vdupq_lane_s16(*v192.i8, 0);
      v197 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v195.i8), xmmword_296B6EE50), *v195.i8), v196);
      v198 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v195), xmmword_296B6EE50), v195), v196);
      v199 = vdupq_n_s16(bswap32(*v157) >> 16);
      v200 = vaddq_s16(v198, v199);
      v201 = vaddq_s16(v197, v199);
      v202 = veorq_s8((*&v200 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v200));
      v203 = veorq_s8((*&v201 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v201));
      if (a10)
      {
        v203.i64[0] = (*(a10 + ((v203.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v203.u16[2]) << 32) | (*(a10 + 2 * v203.u16[1]) << 16) | *(a10 + 2 * v203.u16[0]);
        v203.i64[1] = (*(a10 + ((v203.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v203.u16[6]) << 32) | (*(a10 + 2 * v203.u16[5]) << 16) | *(a10 + 2 * v203.u16[4]);
        v202.i64[0] = (*(a10 + ((v202.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v202.u16[2]) << 32) | (*(a10 + 2 * v202.u16[1]) << 16) | *(a10 + 2 * v202.u16[0]);
        v202.i64[1] = (*(a10 + ((v202.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v202.u16[6]) << 32) | (*(a10 + 2 * v202.u16[5]) << 16) | *(a10 + 2 * v202.u16[4]);
      }

      v155 += 7;
      v156 += 7;
      v204 = v202;
      v286.val[1] = vqtbl2q_s8(*v174.i8, xmmword_296B6EF60);
      v205 = v188;
      v286.val[0] = vqtbl2q_s8(*v66.i8, xmmword_296B6EEA0);
      v206 = vqtbl2q_s8(v286, xmmword_296B6EDD0);
      v286.val[1] = vqtbl2q_s8(*v174.i8, xmmword_296B6EF70);
      v286.val[0] = vqtbl2q_s8(*v66.i8, xmmword_296B6EEB0);
      v274.val[1] = vqtbl2q_s8(*v174.i8, xmmword_296B6EF40);
      v274.val[0] = vqtbl2q_s8(*v66.i8, xmmword_296B6EE70);
      v280.val[1] = vqtbl2q_s8(*v174.i8, xmmword_296B6EF50);
      v280.val[0] = vqtbl2q_s8(*v66.i8, xmmword_296B6EE90);
      v280.val[0] = vqtbl2q_s8(v280, xmmword_296B6EDD0);
      v207 = v203;
      v277.val[1] = vqtbl2q_s8(*v175.i8, xmmword_296B6EF60);
      v208 = v66;
      v277.val[0] = vqtbl2q_s8(*(&v189 - 1), xmmword_296B6EEA0);
      v209 = vqtbl2q_s8(v277, xmmword_296B6EDD0);
      v285.val[1] = vqtbl2q_s8(*v175.i8, xmmword_296B6EF70);
      v277.val[1] = vqtbl2q_s8(*v175.i8, xmmword_296B6EF40);
      v277.val[0] = vqtbl2q_s8(*(&v189 - 1), xmmword_296B6EE70);
      v210 = vqtbl2q_s8(*v175.i8, xmmword_296B6EF50);
      v280.val[1] = vqtbl2q_s8(*(&v189 - 1), xmmword_296B6EE90);
      *a14 = vqtbl2q_s8(v277, xmmword_296B6EDD0);
      a14[1] = vqtbl2q_s8(*(&v280 + 16), xmmword_296B6EDD0);
      v285.val[0] = vqtbl2q_s8(*(&v189 - 1), xmmword_296B6EEB0);
      v157 += 7;
      result = &a14[2];
      *v74 = v209;
      v74[1] = vqtbl2q_s8(v285, xmmword_296B6EDD0);
      v211 = v74 + 2;
      v212 = v75 + 2;
      *v75 = vqtbl2q_s8(v274, xmmword_296B6EDD0);
      v75[1] = v280.val[0];
      v213 = v76 + 2;
      *v76 = v206;
      v76[1] = vqtbl2q_s8(v286, xmmword_296B6EDD0);
      v76 += 2;
      v75 += 2;
      v74 += 2;
      a14 += 2;
      if (!--v161)
      {
        v158 = a12[5];
        if (v158)
        {
          goto LABEL_107;
        }

        goto LABEL_122;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (*&a11[1] >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a11[1];
  }

  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v252, a3);
  v23 = a11[3];
  v24 = a11[7].u32[1];
  v25 = *(a4 + 8);
  v26 = *(*&v25[5] + 8 * v24);
  v27 = v26[2];
  v28 = vmin_u32(vmls_s32(v27, v25[6], v23), v25[6]).u32[0];
  v29 = *(a5 + 8);
  v30 = *(*&v29[5] + 8 * v24);
  v31.i64[0] = *(v30 + 16);
  result = vmin_u32(vmls_s32(*v31.i8, v29[6], v23), v29[6]).u32[0];
  v32 = *(a6 + 8);
  v33 = *(*&v32[5] + 8 * v24);
  v34 = v33[2];
  v35 = vmin_u32(vmls_s32(v34, v32[6], v23), v32[6]).u32[0];
  v36 = 12 * v28 + 16;
  if (v36 <= 12 * result + 16)
  {
    v36 = 12 * result + 16;
  }

  v37 = 12 * v35 + 16;
  if (v36 > v37)
  {
    v37 = v36;
  }

  v38 = v22 >= v37;
  v39 = v22 - v37;
  if (!v38)
  {
    return result;
  }

  v40 = a3[1];
  v41 = (v23.i32[1] * *(a13 + 60));
  if (v40)
  {
    v42 = *(*(v40 + 40) + 8 * v24);
    v43 = *(v42 + 12) - 1;
    if (v43 >= v41)
    {
      v43 = (v23.i32[1] * *(a13 + 60));
    }

    if (*(v40 + 104) == 1)
    {
      v44 = (*(v42 + 8 * v23.u32[0] + 24) + 8 * v43);
    }

    else
    {
      v46 = (v43 * *(v40 + 108)) >> *(v40 + 112);
      if (v46 >= *(v42 + 20) - 1)
      {
        LODWORD(v46) = *(v42 + 20) - 1;
      }

      v44 = (*(v42 + 8 * v23.u32[0] + 24) + 8 * v46);
    }

    v45 = *v44;
  }

  else
  {
    v45 = 0;
  }

  v47 = v26[1].u32[1] - 1;
  if (v47 >= v41)
  {
    v47 = (v23.i32[1] * *(a13 + 60));
  }

  v48 = &v26[v23.u32[0]];
  if (v25[13].i32[0] == 1)
  {
    v49 = (*&v48[3] + 8 * v47);
  }

  else
  {
    v50 = (v47 * v25[13].u32[1]) >> v25[14].i32[0];
    if (v50 >= v27.i32[1] - 1)
    {
      LODWORD(v50) = v27.i32[1] - 1;
    }

    v49 = (*&v48[3] + 8 * v50);
  }

  v51 = *(v30 + 12) - 1;
  if (v51 >= v41)
  {
    v51 = (v23.i32[1] * *(a13 + 60));
  }

  v52 = v30 + 8 * v23.u32[0];
  if (v29[13].i32[0] == 1)
  {
    v53 = (*(v52 + 24) + 8 * v51);
  }

  else
  {
    v54 = (v51 * v29[13].u32[1]) >> v29[14].i32[0];
    if (v54 >= v31.i32[1] - 1)
    {
      LODWORD(v54) = v31.i32[1] - 1;
    }

    v53 = (*(v52 + 24) + 8 * v54);
  }

  v55 = v39 + v21;
  v56 = v33[1].u32[1] - 1;
  if (v56 >= v41)
  {
    v56 = (v23.i32[1] * *(a13 + 60));
  }

  v57 = &v33[v23.u32[0]];
  if (v32[13].i32[0] == 1)
  {
    v58 = (*&v57[3] + 8 * v56);
  }

  else
  {
    v59 = (v56 * v32[13].u32[1]) >> v32[14].i32[0];
    if (v59 >= v34.i32[1] - 1)
    {
      LODWORD(v59) = v34.i32[1] - 1;
    }

    v58 = (*&v57[3] + 8 * v59);
  }

  v60 = a12[2];
  v61 = v45 + v21 > v55;
  v62 = a12[6];
  if (v60 > v62)
  {
    return result;
  }

  v64 = 4 * v28;
  v65 = 4 * result;
  v66 = 4 * v35;
  result *= 16;
  v67 = 16 * v35;
  v68 = &v252;
  v69 = vld1q_dup_f32(v68);
  v70 = *a12;
  v251 = result;
  v71 = (*v49 + v21 + 16 * v70 + 16 * v28 * v60);
  v72 = (*v53 + v21 + 16 * v70 + result * v60);
  v73 = (v21 + 16 * v70 + *v58 + v67 * v60);
  while (1)
  {
    v74 = a14 + a17;
    v75 = a14 + a17 + a17;
    v76 = v75 + a17;
    if (!a16)
    {
      v79 = v75 + a17;
      goto LABEL_60;
    }

    if (v60 == a12[2])
    {
      v77 = a12[3] + 1;
      v78 = a14;
      a14 += a17;
      v74 = v75;
      v75 += a17;
      do
      {
        v79 = v75;
        v75 = v74;
        v74 = a14;
        a14 = v78;
        v78 = a16;
        --v77;
      }

      while (v77);
    }

    else
    {
      v79 = v75 + a17;
    }

    if (v60 == v62)
    {
      v80 = a12[7];
      switch(v80)
      {
        case 1u:
          goto LABEL_58;
        case 2u:
          goto LABEL_57;
        case 3u:
          v74 = a16;
LABEL_57:
          v75 = a16;
LABEL_58:
          v76 = a16;
          goto LABEL_60;
      }
    }

    v76 = v79;
LABEL_60:
    v82 = *a12;
    v81 = a12[1];
    if (!v81)
    {
      v152 = a12[4];
      v153 = v71;
      v154 = v72;
      v155 = v73;
      goto LABEL_80;
    }

    v83 = v71 > v55 || v61;
    if ((v83 & 1) != 0 || v72 > v55 || v73 > v55)
    {
      return result;
    }

    v31.i32[0] = 0;
    v84 = *(v71 + 4 * v28);
    v85 = (v71 + v64 + v64);
    v86 = *(v85 + 4 * v28);
    v87 = (v73 + v66 + v66);
    v88 = *(v87 + v66);
    v89 = vuzp1q_s32(v86, v88);
    v90 = *v85;
    v91 = *(v72 + v65);
    v92 = (v72 + v65 + v65);
    v93 = *(v92 + v65);
    v94 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, v93)), vextq_s8(v86, v89, 0xCuLL));
    v95 = vuzp2q_s32(v69, v93);
    v93.i32[0] = v69.i32[2];
    v96 = vtrn2q_s32(vrev64q_s32(v93), v89);
    v97 = vuzp2q_s32(v86, v88);
    v86.i32[3] = HIDWORD(*(v87->i64 + v66));
    v98 = *v71;
    v99 = *v72;
    v100 = *v92;
    v101 = *v73;
    v102 = *(v73 + v66);
    v103 = vtrn2q_s32(vrev64q_s32(v95), v86);
    v104 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v95, v69)), v97);
    v105 = vuzp1q_s32(v90, *v87);
    v106 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, *v92)), vextq_s8(v90, v105, 0xCuLL));
    v107 = vuzp2q_s32(v69, *v92);
    v100.i32[0] = v69.i32[2];
    v108 = vtrn2q_s32(vrev64q_s32(v100), v105);
    v109 = vuzp2q_s32(v90, *v87);
    v90.i32[3] = HIDWORD(v87->i64[0]);
    v110 = vtrn2q_s32(vrev64q_s32(v107), v90);
    v111 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v107, v69)), v109);
    v112 = 4 - a12[5];
    if (a12[4] != v82)
    {
      v112 = 4;
    }

    v109.i32[0] = a12[1] & 2;
    v113 = vdupq_lane_s32(*&vceqq_s32(v109, v31), 0);
    v114 = vbslq_s8(v113, v110, v111);
    v115 = vbslq_s8(v113, v106, v108);
    v116 = vbslq_s8(v113, v103, v104);
    v117 = vbslq_s8(v113, v94, v96);
    v118 = vuzp2q_s32(v84, v102);
    v119 = vuzp1q_s32(v84, v102);
    v120 = vextq_s8(v84, v119, 0xCuLL);
    v84.i32[3] = HIDWORD(*(v73->i64 + v66));
    v121 = vuzp2q_s32(v69, v91);
    v122 = vtrn2q_s32(vrev64q_s32(v121), v84);
    v123 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v121, v69)), v118);
    v124 = vbslq_s8(v113, v122, v123);
    v125 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, v91)), v120);
    v91.i32[0] = v69.i32[2];
    v126 = vtrn2q_s32(vrev64q_s32(v91), v119);
    v127 = vbslq_s8(v113, v125, v126);
    v128 = vuzp2q_s32(v98, v101);
    v129 = vuzp1q_s32(v98, v101);
    v130 = vextq_s8(v98, v129, 0xCuLL);
    v98.i32[3] = HIDWORD(v73->i64[0]);
    v131 = vuzp2q_s32(v69, v99);
    v132 = vtrn2q_s32(vrev64q_s32(v131), v98);
    v133 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v131, v69)), v128);
    v134 = vbslq_s8(v113, v132, v133);
    v135 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, v99)), v130);
    v99.i32[0] = v69.i32[2];
    v136 = vrev64q_s32(v99);
    v137 = vtrn2q_s32(v136, v129);
    if ((v81 & 2) != 0)
    {
      v138 = v112 - 2;
    }

    else
    {
      v138 = v112;
    }

    v139 = v81 & 1;
    v140 = v138 - v139;
    v136.i32[0] = v139;
    v141 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v136, v31)), 0);
    v142 = vbslq_s8(v141, v134, vbslq_s8(v113, v135, v137));
    v143 = vbslq_s8(v141, v124, v127);
    v31 = vbslq_s8(v141, v116, v117);
    v144 = vbslq_s8(v141, v114, v115);
    if (v138 - v139 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v145 = vbslq_s8(v113, v108, v106);
      v146 = vbslq_s8(v113, v111, v110);
      v147 = vbslq_s8(v113, v96, v94);
      v148 = vbslq_s8(v113, v104, v103);
      v149 = vbslq_s8(v113, v126, v125);
      v150 = vbslq_s8(v113, v137, v135);
      *a14 = v142;
      *(a14 + 16) = vbslq_s8(v141, v150, v134);
      *v74 = v143;
      *(v74 + 16) = vbslq_s8(v141, v149, v124);
      *v75 = v144;
      *(v75 + 16) = vbslq_s8(v141, v145, v114);
      v140 -= 2;
      v142 = vbslq_s8(v141, vbslq_s8(v113, v133, v132), v150);
      *v76 = v31;
      *(v76 + 16) = vbslq_s8(v141, v147, v116);
      v143 = vbslq_s8(v141, vbslq_s8(v113, v123, v122), v149);
      v144 = vbslq_s8(v141, v146, v145);
      v31 = vbslq_s8(v141, v148, v147);
      v151 = 32;
    }

    if (v140 >= 1)
    {
      *(v151 + a14) = v142;
      *(v151 + v74) = v143;
      *(v151 + v75) = v144;
      *(v151 + v76) = v31;
      v151 |= 0x10uLL;
    }

    v152 = a12[4];
    if (v152 != v82)
    {
      break;
    }

LABEL_137:
    a14 = v79 + a17;
    v73 = (v73 + v67);
    v72 = (v72 + result);
    v71 += v28;
    v62 = a12[6];
    v38 = v60++ >= v62;
    if (v38)
    {
      return result;
    }
  }

  v153 = v71 + 1;
  v154 = v72 + 1;
  v155 = v73 + 1;
  a14 += v151;
  v74 += v151;
  v75 += v151;
  v76 += v151;
  ++v82;
LABEL_80:
  v156 = a12[5];
  v157 = v156 != 0;
  if (v152 == 0 && v157 || (v158 = v152 - v157, v82 > v158))
  {
    v202 = a14;
    v203 = v74;
    v204 = v75;
    v205 = v76;
    if (v156)
    {
LABEL_91:
      if (v60 == a12[6])
      {
        v206 = 4 - a12[7];
      }

      else
      {
        v206 = 4;
      }

      v207 = v153 > v55 || v61;
      if ((v207 & 1) != 0 || v154 > v55 || v155 > v55)
      {
        return result;
      }

      if (v206 < 2)
      {
        v209 = 0;
        v208 = v153;
        v210 = v153;
      }

      else
      {
        v208 = (v153->i64 + v64);
        if (v206 == 2)
        {
          v209 = 0;
          v210 = (v153->i64 + v64);
        }

        else
        {
          v210 = (v153->i64 + v64);
          v208 = (v208 + v64);
          if (v206 <= 3)
          {
            v209 = 0;
          }

          else
          {
            v209 = 4 * v28;
          }
        }
      }

      v211 = (v208 + v209);
      v212 = 0uLL;
      v213 = 0uLL;
      v31 = 0uLL;
      v214 = 0uLL;
      if ((4 - v156))
      {
        v214.i32[0] = v153->i32[3 - v156];
        v212.i32[0] = *(v210 + 3 - v156);
        v213.i32[0] = *(v208 + 3 - v156);
        result = v251;
        v31.i32[0] = *(v211 + 3 - v156);
      }

      if (((4 - v156) & 2) != 0)
      {
        v215.i64[0] = v153->i64[0];
        v215.i64[1] = v214.i64[0];
        v216.i64[0] = *v210;
        v216.i64[1] = v212.i64[0];
        v217.i64[0] = *v208;
        v217.i64[1] = v213.i64[0];
        v218.i64[0] = *v211;
        v218.i64[1] = v31.i64[0];
        v212 = v216;
        v213 = v217;
        v31 = v218;
        v214 = v215;
      }

      if (v206 < 2)
      {
        v220 = 0;
        v219 = v154;
        v221 = v154;
      }

      else
      {
        v219 = (v154->i64 + v65);
        if (v206 == 2)
        {
          v220 = 0;
          v221 = (v154->i64 + v65);
        }

        else
        {
          v221 = (v154->i64 + v65);
          v219 = (v219 + v65);
          if (v206 <= 3)
          {
            v220 = 0;
          }

          else
          {
            v220 = v65;
          }
        }
      }

      v222 = (v219 + v220);
      v223 = 0uLL;
      v224 = 0uLL;
      v225 = 0uLL;
      v226 = 0uLL;
      if ((4 - v156))
      {
        v226.i32[0] = v154->i32[3 - v156];
        v223.i32[0] = *(v221 + 3 - v156);
        v224.i32[0] = *(v219 + 3 - v156);
        result = v251;
        v225.i32[0] = *(v222 + 3 - v156);
      }

      if (((4 - v156) & 2) != 0)
      {
        v227.i64[0] = v154->i64[0];
        v227.i64[1] = v226.i64[0];
        v228.i64[0] = *v221;
        v228.i64[1] = v223.i64[0];
        v229.i64[0] = *v219;
        v229.i64[1] = v224.i64[0];
        v230.i64[0] = *v222;
        v230.i64[1] = v225.i64[0];
        v223 = v228;
        v224 = v229;
        v225 = v230;
        v226 = v227;
      }

      if (v206 < 2)
      {
        v232 = 0;
        v231 = v155;
        v233 = v155;
      }

      else
      {
        v231 = (v155->i64 + v66);
        if (v206 == 2)
        {
          v232 = 0;
          v233 = (v155->i64 + v66);
        }

        else
        {
          v233 = (v155->i64 + v66);
          v231 = (v231 + v66);
          if (v206 <= 3)
          {
            v232 = 0;
          }

          else
          {
            v232 = v66;
          }
        }
      }

      v234 = (v231 + v232);
      v235 = 0uLL;
      v236 = 0uLL;
      v237 = 0uLL;
      v238 = 0uLL;
      if ((4 - v156))
      {
        v238.i32[0] = v155->i32[3 - v156];
        v235.i32[0] = *(v233 + 3 - v156);
        v236.i32[0] = *(v231 + 3 - v156);
        result = v251;
        v237.i32[0] = *(v234 + 3 - v156);
      }

      if (((4 - v156) & 2) != 0)
      {
        v239.i64[0] = v155->i64[0];
        v239.i64[1] = v238.i64[0];
        v240.i64[0] = *v233;
        v240.i64[1] = v235.i64[0];
        v241.i64[0] = *v231;
        v241.i64[1] = v236.i64[0];
        v242.i64[0] = *v234;
        v242.i64[1] = v237.i64[0];
        v235 = v240;
        v236 = v241;
        v237 = v242;
        v238 = v239;
      }

      v243 = vuzp1q_s32(v214, v238);
      v244 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, v226)), vextq_s8(v214, v243, 0xCuLL));
      v245 = vuzp1q_s32(v212, v235);
      v246 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, v223)), vextq_s8(v212, v245, 0xCuLL));
      v247 = vuzp1q_s32(v213, v236);
      v248 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, v224)), vextq_s8(v213, v247, 0xCuLL));
      v249 = vuzp1q_s32(v31, v237);
      v250 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, v225)), vextq_s8(v31, v249, 0xCuLL));
      if (((4 - v156) & 2) != 0)
      {
        v214.i32[3] = v238.i32[1];
        v212.i32[3] = v235.i32[1];
        v213.i32[3] = v236.i32[1];
        v31.i32[3] = v237.i32[1];
        *v202 = v244;
        v202[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v69, v226)), v214);
        *v203 = v246;
        v203[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v69, v223)), v212);
        *v204 = v248;
        v204[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v69, v224)), v213);
        v31 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v69, v225)), v31);
        *v205 = v250;
        v205[1] = v31;
        if ((4 - v156))
        {
          v226.i32[0] = v69.i32[2];
          v223.i32[0] = v69.i32[2];
          v224.i32[0] = v69.i32[2];
          v225.i32[0] = v69.i32[2];
          v202[2] = vtrn2q_s32(vrev64q_s32(v226), v243);
          v203[2] = vtrn2q_s32(vrev64q_s32(v223), v245);
          v31 = vtrn2q_s32(vrev64q_s32(v225), v249);
          v204[2] = vtrn2q_s32(vrev64q_s32(v224), v247);
          v205[2] = v31;
        }
      }

      else
      {
        *v202 = v244;
        *v203 = v246;
        *v204 = v248;
        *v205 = v250;
      }
    }

    goto LABEL_137;
  }

  if (!v61)
  {
    v159 = v158 - v82 + 1;
    while (v153 <= v55 && v154 <= v55 && v155 <= v55)
    {
      v160 = (v153 + v64);
      v161 = (v153 + v64 + v64);
      v162 = *v161;
      v163 = *(v161 + 4 * v28);
      v164 = (v154 + v65);
      v165 = (v154 + v65 + v65);
      v166 = *v165;
      v167 = *(v165 + v65);
      v168 = (v155 + v66 + v66);
      v169 = *(v168 + v66);
      v170 = vuzp1q_s32(v163, v169);
      v171 = vextq_s8(v163, v170, 0xCuLL);
      v172 = vuzp2q_s32(v163, v169);
      v163.i32[3] = HIDWORD(*(v168->i64 + v66));
      v173 = vuzp2q_s32(v69, v167);
      v174 = vuzp2q_s32(v69, *v165);
      v166.i32[0] = v69.i32[2];
      v175 = vuzp1q_s32(v162, *v168);
      v176 = *v153++;
      v177 = v176;
      v178 = *v160;
      v179 = *v154++;
      v180 = v179;
      v181 = *v164;
      v182 = vextq_s8(v162, v175, 0xCuLL);
      v183 = vuzp2q_s32(v162, *v168);
      v184 = v162;
      v184.i32[3] = HIDWORD(v168->i64[0]);
      v185 = *(v155 + v66);
      v186 = vtrn2q_s32(vrev64q_s32(v166), v175);
      v187 = vtrn2q_s32(vrev64q_s32(v174), v184);
      v188 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, *v165)), v182);
      v189 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v174, v69)), v183);
      v190 = vuzp1q_s32(*v160, v185);
      v191 = vuzp2q_s32(v69, *v164);
      v192 = vuzp1q_s32(v69, *v164);
      v181.i32[0] = v69.i32[2];
      v193 = *v155++;
      v194 = vtrn2q_s32(vrev64q_s32(v181), v190);
      v195 = vextq_s8(*v160, v190, 0xCuLL);
      v196 = vuzp2q_s32(*v160, v185);
      v178.i32[3] = v185.i32[1];
      v197 = vuzp2q_s32(v69, v180);
      v198 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v197, v69)), vuzp2q_s32(v177, v193));
      v199 = vuzp1q_s32(v177, v193);
      v200 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v69, v180)), vextq_s8(v177, v199, 0xCuLL));
      v177.i32[3] = v193.i32[1];
      v180.i32[0] = v69.i32[2];
      v201 = vuzp1q_s32(v69, v167);
      *a14 = v200;
      *(a14 + 16) = vtrn2q_s32(vrev64q_s32(v197), v177);
      v202 = (a14 + 64);
      *(a14 + 32) = vtrn2q_s32(vrev64q_s32(v180), v199);
      *(a14 + 48) = v198;
      v203 = (v74 + 64);
      *v74 = vtrn2q_s32(vrev64q_s32(v192), v195);
      *(v74 + 16) = vtrn2q_s32(vrev64q_s32(v191), v178);
      *(v74 + 32) = v194;
      *(v74 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v191, v69)), v196);
      v204 = (v75 + 64);
      *v75 = v188;
      *(v75 + 16) = v187;
      *(v75 + 32) = v186;
      *(v75 + 48) = v189;
      v205 = (v76 + 64);
      v167.i32[0] = v69.i32[2];
      *(v76 + 32) = vtrn2q_s32(vrev64q_s32(v167), v170);
      *(v76 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v173, v69)), v172);
      v31 = vtrn2q_s32(vrev64q_s32(v173), v163);
      *v76 = vtrn2q_s32(vrev64q_s32(v201), v171);
      *(v76 + 16) = v31;
      v76 += 64;
      v75 += 64;
      v74 += 64;
      a14 += 64;
      if (!--v159)
      {
        v156 = a12[5];
        if (v156)
        {
          goto LABEL_91;
        }

        goto LABEL_137;
      }
    }
  }

  return result;
}

unint64_t ExtractInterleaved4_B44<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  if (*(a11 + 8) >= a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = *(a11 + 8);
  }

  v18 = *(a11 + 24);
  v19 = *(a11 + 60);
  v20 = *(a3 + 8);
  v21 = *(*&v20[5] + 8 * v19);
  v22 = v21[2];
  v23 = vmin_u32(vmls_s32(v22, v20[6], v18), v20[6]).u32[0];
  if (v23 <= 0xFFFFFFFC)
  {
    v24 = (v23 + 3) >> 2;
  }

  else
  {
    v24 = 0x40000000;
  }

  v25 = *(a4 + 8);
  v26 = *(*&v25[5] + 8 * v19);
  v27 = v26[2];
  v28 = vmin_u32(vmls_s32(v27, v25[6], v18), v25[6]).u32[0];
  if (v28 <= 0xFFFFFFFC)
  {
    v29 = (v28 + 3) >> 2;
  }

  else
  {
    v29 = 0x40000000;
  }

  v30 = *(a5 + 8);
  v31 = *(*&v30[5] + 8 * v19);
  v32 = v31[2];
  v33 = vmin_u32(vmls_s32(v32, v30[6], v18), v30[6]).u32[0];
  v34 = (v33 + 3) >> 2;
  v35 = *(a6 + 8);
  v36 = *(*&v35[5] + 8 * v19);
  if (v33 > 0xFFFFFFFC)
  {
    v34 = 0x40000000;
  }

  v37 = v36[2];
  v38 = vmin_u32(vmls_s32(v37, v35[6], v18), v35[6]).u32[0];
  v39 = v38 <= 0xFFFFFFFC ? (v38 + 3) >> 2 : 0x40000000;
  if (v17 < 0xE)
  {
    return result;
  }

  v40 = (v18.i32[1] * *(a13 + 60));
  v41 = v21[1].u32[1] - 1 >= v40 ? (v18.i32[1] * *(a13 + 60)) : v21[1].u32[1] - 1;
  v42 = &v21[v18.u32[0]];
  if (v20[13].i32[0] == 1)
  {
    v43 = (*&v42[3] + 8 * v41);
  }

  else
  {
    v44 = (v41 * v20[13].u32[1]) >> v20[14].i32[0];
    if (v44 >= v22.i32[1] - 1)
    {
      LODWORD(v44) = v22.i32[1] - 1;
    }

    v43 = (*&v42[3] + 8 * v44);
  }

  v45 = v26[1].u32[1] - 1 >= v40 ? (v18.i32[1] * *(a13 + 60)) : v26[1].u32[1] - 1;
  v46 = &v26[v18.u32[0]];
  if (v25[13].i32[0] == 1)
  {
    v47 = (*&v46[3] + 8 * v45);
  }

  else
  {
    v48 = (v45 * v25[13].u32[1]) >> v25[14].i32[0];
    if (v48 >= v27.i32[1] - 1)
    {
      LODWORD(v48) = v27.i32[1] - 1;
    }

    v47 = (*&v46[3] + 8 * v48);
  }

  v49 = v31[1].u32[1] - 1;
  if (v49 >= v40)
  {
    v49 = (v18.i32[1] * *(a13 + 60));
  }

  v50 = &v31[v18.u32[0]];
  if (v30[13].i32[0] == 1)
  {
    v51 = (*&v50[3] + 8 * v49);
  }

  else
  {
    v52 = (v49 * v30[13].u32[1]) >> v30[14].i32[0];
    if (v52 >= v32.i32[1] - 1)
    {
      LODWORD(v52) = v32.i32[1] - 1;
    }

    v51 = (*&v50[3] + 8 * v52);
  }

  v53 = v36[1].u32[1] - 1;
  if (v53 >= v40)
  {
    v53 = (v18.i32[1] * *(a13 + 60));
  }

  v54 = &v36[v18.u32[0]];
  if (v35[13].i32[0] == 1)
  {
    v55 = (*&v54[3] + 8 * v53);
  }

  else
  {
    v56 = (v53 * v35[13].u32[1]) >> v35[14].i32[0];
    if (v56 >= v37.i32[1] - 1)
    {
      LODWORD(v56) = v37.i32[1] - 1;
    }

    v55 = (*&v54[3] + 8 * v56);
  }

  v57 = a12[2];
  v58 = a12[6];
  if (v57 > v58)
  {
    return result;
  }

  v60 = result + v17 - 14;
  v61 = 14 * v29;
  v62 = 14 * *a12;
  v308 = v61;
  v309 = 14 * v24;
  v63 = (*v43 + result + v62 + v309 * v57);
  v64 = (*v47 + result + v62 + v61 * v57);
  v306 = 14 * v39;
  v307 = 14 * v34;
  v65 = (*v51 + result + v62 + v307 * v57);
  v66 = (v62 + result + *v55 + v306 * v57);
  v67 = xmmword_296B6EDE0;
  v68.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v68.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v69 = (a14 + a17);
    v70 = (a14 + a17 + a17);
    v71 = (v70 + a17);
    if (!a16)
    {
      v74 = (v70 + a17);
      goto LABEL_65;
    }

    if (v57 == a12[2])
    {
      v72 = a12[3] + 1;
      v73 = a14;
      a14 = (a14 + a17);
      v69 = v70;
      v70 = (v70 + a17);
      do
      {
        v74 = v70;
        v70 = v69;
        v69 = a14;
        a14 = v73;
        v73 = a16;
        --v72;
      }

      while (v72);
    }

    else
    {
      v74 = (v70 + a17);
    }

    if (v57 == v58)
    {
      v75 = a12[7];
      switch(v75)
      {
        case 1u:
          goto LABEL_63;
        case 2u:
          goto LABEL_62;
        case 3u:
          v69 = a16;
LABEL_62:
          v70 = a16;
LABEL_63:
          v71 = a16;
          goto LABEL_65;
      }
    }

    v71 = v74;
LABEL_65:
    v76 = *a12;
    result = a12[1];
    if (!result)
    {
      v163 = a12[4];
      v164 = v63;
      v165 = v64;
      v166 = v65;
      result = v66;
      goto LABEL_93;
    }

    if (v63 > v60 || v64 > v60 || v65 > v60 || v66 > v60)
    {
      return result;
    }

    v77.i64[0] = *(v63 + 1);
    v77.i64[1] = *(v63 + 3);
    v78 = vqtbl1q_s8(v77, v67);
    v79 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v78, 8uLL), xmmword_296B6EE00), vshlq_u8(v78, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v80 = vaddq_s8(v79, v68);
    v79.i8[1] = 0;
    v81 = vqtbl1q_s8(v80, xmmword_296B6EE20);
    v82 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v81, xmmword_296B6EE30), v81), vqtbl1q_s8(v81, xmmword_296B6EE40));
    v83 = vdupq_lane_s16(*v79.i8, 0);
    v84 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v82.i8), xmmword_296B6EE50), *v82.i8), v83);
    v85 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v82), xmmword_296B6EE50), v82), v83);
    v86 = vdupq_n_s16(bswap32(*v63) >> 16);
    v87 = vaddq_s16(v85, v86);
    v88 = vaddq_s16(v84, v86);
    v89 = veorq_s8((*&v87 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v87));
    v90 = veorq_s8((*&v88 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v88));
    if (a7)
    {
      v90.i64[0] = (*(a7 + ((v90.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v90.u16[2]) << 32) | (*(a7 + 2 * v90.u16[1]) << 16) | *(a7 + 2 * v90.u16[0]);
      v90.i64[1] = (*(a7 + ((v90.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v90.u16[6]) << 32) | (*(a7 + 2 * v90.u16[5]) << 16) | *(a7 + 2 * v90.u16[4]);
      v89.i64[0] = (*(a7 + ((v89.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v89.u16[2]) << 32) | (*(a7 + 2 * v89.u16[1]) << 16) | *(a7 + 2 * v89.u16[0]);
      v89.i64[1] = (*(a7 + ((v89.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v89.u16[6]) << 32) | (*(a7 + 2 * v89.u16[5]) << 16) | *(a7 + 2 * v89.u16[4]);
    }

    v91.i64[0] = *(v64 + 1);
    v91.i64[1] = *(v64 + 3);
    v92 = vqtbl1q_s8(v91, v67);
    v93 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v92, 8uLL), xmmword_296B6EE00), vshlq_u8(v92, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v94 = vaddq_s8(v93, v68);
    v93.i8[1] = 0;
    v95 = vqtbl1q_s8(v94, xmmword_296B6EE20);
    v96 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v95, xmmword_296B6EE30), v95), vqtbl1q_s8(v95, xmmword_296B6EE40));
    v97 = vdupq_lane_s16(*v93.i8, 0);
    v98 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v96.i8), xmmword_296B6EE50), *v96.i8), v97);
    v99 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v96), xmmword_296B6EE50), v96), v97);
    v100 = vdupq_n_s16(bswap32(*v64) >> 16);
    v101 = vaddq_s16(v99, v100);
    v102 = vaddq_s16(v98, v100);
    v103 = veorq_s8((*&v101 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v101));
    v104 = veorq_s8((*&v102 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v102));
    if (a8)
    {
      v104.i64[0] = (*(a8 + ((v104.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v104.u16[2]) << 32) | (*(a8 + 2 * v104.u16[1]) << 16) | *(a8 + 2 * v104.u16[0]);
      v104.i64[1] = (*(a8 + ((v104.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v104.u16[6]) << 32) | (*(a8 + 2 * v104.u16[5]) << 16) | *(a8 + 2 * v104.u16[4]);
      v103.i64[0] = (*(a8 + ((v103.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v103.u16[2]) << 32) | (*(a8 + 2 * v103.u16[1]) << 16) | *(a8 + 2 * v103.u16[0]);
      v103.i64[1] = (*(a8 + ((v103.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v103.u16[6]) << 32) | (*(a8 + 2 * v103.u16[5]) << 16) | *(a8 + 2 * v103.u16[4]);
    }

    v105.i64[0] = *(v65 + 1);
    v105.i64[1] = *(v65 + 3);
    v106 = vqtbl1q_s8(v105, v67);
    v107 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v106, 8uLL), xmmword_296B6EE00), vshlq_u8(v106, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v108 = vaddq_s8(v107, v68);
    v107.i8[1] = 0;
    v109 = vqtbl1q_s8(v108, xmmword_296B6EE20);
    v110 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v109, xmmword_296B6EE30), v109), vqtbl1q_s8(v109, xmmword_296B6EE40));
    v111 = vdupq_lane_s16(*v107.i8, 0);
    v112 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v110.i8), xmmword_296B6EE50), *v110.i8), v111);
    v113 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v110), xmmword_296B6EE50), v110), v111);
    v114 = vdupq_n_s16(bswap32(*v65) >> 16);
    v115 = vaddq_s16(v113, v114);
    v116 = vaddq_s16(v112, v114);
    v117 = veorq_s8((*&v115 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v115));
    v118 = veorq_s8((*&v116 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v116));
    if (a9)
    {
      v118.i64[0] = (*(a9 + ((v118.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v118.u16[2]) << 32) | (*(a9 + 2 * v118.u16[1]) << 16) | *(a9 + 2 * v118.u16[0]);
      v118.i64[1] = (*(a9 + ((v118.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v118.u16[6]) << 32) | (*(a9 + 2 * v118.u16[5]) << 16) | *(a9 + 2 * v118.u16[4]);
      v117.i64[0] = (*(a9 + ((v117.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v117.u16[2]) << 32) | (*(a9 + 2 * v117.u16[1]) << 16) | *(a9 + 2 * v117.u16[0]);
      v117.i64[1] = (*(a9 + ((v117.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v117.u16[6]) << 32) | (*(a9 + 2 * v117.u16[5]) << 16) | *(a9 + 2 * v117.u16[4]);
    }

    v119.i64[0] = *(v66 + 1);
    v119.i64[1] = *(v66 + 3);
    v120 = vqtbl1q_s8(v119, v67);
    v121 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v120, 8uLL), xmmword_296B6EE00), vshlq_u8(v120, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v122 = vaddq_s8(v121, v68);
    v121.i8[1] = 0;
    v123 = vqtbl1q_s8(v122, xmmword_296B6EE20);
    v124 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v123, xmmword_296B6EE30), v123), vqtbl1q_s8(v123, xmmword_296B6EE40));
    v125 = vdupq_lane_s16(*v121.i8, 0);
    v126 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v124.i8), xmmword_296B6EE50), *v124.i8), v125);
    v127 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v124), xmmword_296B6EE50), v124), v125);
    v128 = vdupq_n_s16(bswap32(*v66) >> 16);
    v129 = vaddq_s16(v127, v128);
    v130 = vaddq_s16(v126, v128);
    v131 = vcgezq_s16(v130);
    v132 = *&v130 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL);
    v133 = veorq_s8((*&v129 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v129));
    v134 = veorq_s8(v132, v131);
    if (a10)
    {
      v134.i64[0] = (*(a10 + ((v134.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v134.u16[2]) << 32) | (*(a10 + 2 * v134.u16[1]) << 16) | *(a10 + 2 * v134.u16[0]);
      v134.i64[1] = (*(a10 + ((v134.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v134.u16[6]) << 32) | (*(a10 + 2 * v134.u16[5]) << 16) | *(a10 + 2 * v134.u16[4]);
      v133.i64[0] = (*(a10 + ((v133.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v133.u16[2]) << 32) | (*(a10 + 2 * v133.u16[1]) << 16) | *(a10 + 2 * v133.u16[0]);
      v133.i64[1] = (*(a10 + ((v133.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v133.u16[6]) << 32) | (*(a10 + 2 * v133.u16[5]) << 16) | *(a10 + 2 * v133.u16[4]);
    }

    LODWORD(v132) = 0;
    v135 = v133;
    v324.val[1] = vqtbl2q_s8(*v103.i8, xmmword_296B6EF40);
    v136 = v117;
    v324.val[0] = vqtbl2q_s8(*v89.i8, xmmword_296B6EE70);
    v311.val[1] = vqtbl2q_s8(*v103.i8, xmmword_296B6EF50);
    v311.val[0] = vqtbl2q_s8(*v89.i8, xmmword_296B6EE90);
    v313.val[1] = vqtbl2q_s8(*v103.i8, xmmword_296B6EF60);
    v313.val[0] = vqtbl2q_s8(*v89.i8, xmmword_296B6EEA0);
    v315.val[1] = vqtbl2q_s8(*v103.i8, xmmword_296B6EF70);
    v315.val[0] = vqtbl2q_s8(*v89.i8, xmmword_296B6EEB0);
    v137 = vqtbl2q_s8(v324, xmmword_296B6EDD0);
    v138 = vqtbl2q_s8(v311, xmmword_296B6EDD0);
    v139 = vqtbl2q_s8(v313, xmmword_296B6EDD0);
    v140 = vqtbl2q_s8(v315, xmmword_296B6EDD0);
    if (a12[4] == v76)
    {
      v141 = 4 - a12[5];
    }

    else
    {
      v141 = 4;
    }

    v89.i32[0] = a12[1] & 2;
    v142 = vdupq_lane_s32(*&vceqq_s32(v89, v132), 0);
    v143 = v134;
    v316.val[1] = vqtbl2q_s8(*v104.i8, xmmword_296B6EF60);
    v144 = v118;
    v316.val[0] = vqtbl2q_s8(*v90.i8, xmmword_296B6EEA0);
    v145 = vqtbl2q_s8(v316, xmmword_296B6EDD0);
    v316.val[1] = vqtbl2q_s8(*v104.i8, xmmword_296B6EF70);
    v316.val[0] = vqtbl2q_s8(*v90.i8, xmmword_296B6EEB0);
    v146 = vqtbl2q_s8(v316, xmmword_296B6EDD0);
    v147 = vbslq_s8(v142, v146, v145);
    v148 = vbslq_s8(v142, v145, v146);
    v320.val[1] = vqtbl2q_s8(*v104.i8, xmmword_296B6EF40);
    v320.val[0] = vqtbl2q_s8(*v90.i8, xmmword_296B6EE70);
    v149 = vqtbl2q_s8(v320, xmmword_296B6EDD0);
    v150 = vqtbl2q_s8(*v104.i8, xmmword_296B6EF50);
    v316.val[1] = vqtbl2q_s8(*v90.i8, xmmword_296B6EE90);
    v151 = vqtbl2q_s8(*(&v316 + 16), xmmword_296B6EDD0);
    v152 = vbslq_s8(v142, v151, v149);
    v153 = vbslq_s8(v142, v149, v151);
    v154 = vbslq_s8(v142, v140, v139);
    v155 = vbslq_s8(v142, v139, v140);
    v156 = vbslq_s8(v142, v138, v137);
    v157 = vbslq_s8(v142, v137, v138);
    if ((result & 2) != 0)
    {
      v141 -= 2;
    }

    if (result)
    {
      v158 = vextq_s8(v152, v153, 8uLL).u64[0];
      v153 = vextq_s8(v153, v152, 8uLL);
      v159 = vextq_s8(v147, v148, 8uLL).u64[0];
      v148 = vextq_s8(v148, v147, 8uLL);
      v160 = vextq_s8(v156, v157, 8uLL).u64[0];
      v157 = vextq_s8(v157, v156, 8uLL);
      v161 = vextq_s8(v154, v155, 8uLL).u64[0];
      --v141;
      v155 = vextq_s8(v155, v154, 8uLL);
      v152.i64[0] = v158;
      v147.i64[0] = v159;
      v156.i64[0] = v160;
      v154.i64[0] = v161;
    }

    v67 = xmmword_296B6EDE0;
    v68.i64[0] = 0xE0E0E0E0E0E0E0E0;
    v68.i64[1] = 0xE0E0E0E0E0E0E0E0;
    if (v141 <= 1)
    {
      v162 = 0;
    }

    else
    {
      *a14 = v153;
      *v69 = v148;
      v141 -= 2;
      v153.i64[0] = v152.i64[0];
      v148.i64[0] = v147.i64[0];
      *v70 = v157;
      v157.i64[0] = v156.i64[0];
      *v71 = v155;
      v155.i64[0] = v154.i64[0];
      v162 = 16;
    }

    if (v141 >= 1)
    {
      *(a14->i64 + v162) = v153.i64[0];
      *(v69->i64 + v162) = v148.i64[0];
      *(v70->i64 + v162) = v157.i64[0];
      *(v71->i64 + v162) = v155.i64[0];
      v162 |= 8uLL;
    }

    v163 = a12[4];
    if (v163 != v76)
    {
      break;
    }

LABEL_128:
    a14 = (v74 + a17);
    v66 = (v66 + v306);
    v65 = (v65 + v307);
    v64 = (v64 + v308);
    v63 = (v63 + v309);
    v58 = a12[6];
    if (v57++ >= v58)
    {
      return result;
    }
  }

  v164 = v63 + 7;
  v165 = v64 + 7;
  v166 = v65 + 7;
  result = (v66 + 7);
  a14 = (a14 + v162);
  v69 = (v69 + v162);
  v70 = (v70 + v162);
  v71 = (v71 + v162);
  ++v76;
LABEL_93:
  v167 = a12[5];
  v168 = v167 != 0;
  if (v163 == 0 && v168 || (v169 = v163 - v168, v76 > v169))
  {
    v236 = a14;
    v237 = v69;
    v238 = v70;
    v239 = v71;
    if (v167)
    {
LABEL_112:
      if (v164 > v60 || v165 > v60 || v166 > v60 || result > v60)
      {
        return result;
      }

      v240.i64[0] = *(v164 + 1);
      v240.i64[1] = *(v164 + 3);
      v241 = vqtbl1q_s8(v240, v67);
      v242 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v241, 8uLL), xmmword_296B6EE00), vshlq_u8(v241, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v243 = vaddq_s8(v242, v68);
      v242.i8[1] = 0;
      v244 = vqtbl1q_s8(v243, xmmword_296B6EE20);
      v245 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v244, xmmword_296B6EE30), v244), vqtbl1q_s8(v244, xmmword_296B6EE40));
      v246 = vdupq_lane_s16(*v242.i8, 0);
      v247 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v245.i8), xmmword_296B6EE50), *v245.i8), v246);
      v248 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v245), xmmword_296B6EE50), v245), v246);
      v249 = vdupq_n_s16(bswap32(*v164) >> 16);
      v250 = vaddq_s16(v248, v249);
      v251 = vaddq_s16(v247, v249);
      v252 = veorq_s8((*&v250 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v250));
      v253 = veorq_s8((*&v251 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v251));
      if (a7)
      {
        v253.i64[0] = (*(a7 + ((v253.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v253.u16[2]) << 32) | (*(a7 + 2 * v253.u16[1]) << 16) | *(a7 + 2 * v253.u16[0]);
        v253.i64[1] = (*(a7 + ((v253.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v253.u16[6]) << 32) | (*(a7 + 2 * v253.u16[5]) << 16) | *(a7 + 2 * v253.u16[4]);
        v252.i64[0] = (*(a7 + ((v252.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v252.u16[2]) << 32) | (*(a7 + 2 * v252.u16[1]) << 16) | *(a7 + 2 * v252.u16[0]);
        v252.i64[1] = (*(a7 + ((v252.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v252.u16[6]) << 32) | (*(a7 + 2 * v252.u16[5]) << 16) | *(a7 + 2 * v252.u16[4]);
      }

      v254.i64[0] = *(v165 + 1);
      v254.i64[1] = *(v165 + 3);
      v255 = vqtbl1q_s8(v254, v67);
      v256 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v255, 8uLL), xmmword_296B6EE00), vshlq_u8(v255, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v257 = vaddq_s8(v256, v68);
      v256.i8[1] = 0;
      v258 = vqtbl1q_s8(v257, xmmword_296B6EE20);
      v259 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v258, xmmword_296B6EE30), v258), vqtbl1q_s8(v258, xmmword_296B6EE40));
      v260 = vdupq_lane_s16(*v256.i8, 0);
      v261 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v259.i8), xmmword_296B6EE50), *v259.i8), v260);
      v262 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v259), xmmword_296B6EE50), v259), v260);
      v263 = vdupq_n_s16(bswap32(*v165) >> 16);
      v264 = vaddq_s16(v262, v263);
      v265 = vaddq_s16(v261, v263);
      v266 = veorq_s8((*&v264 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v264));
      v267 = veorq_s8((*&v265 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v265));
      if (a8)
      {
        v267.i64[0] = (*(a8 + ((v267.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v267.u16[2]) << 32) | (*(a8 + 2 * v267.u16[1]) << 16) | *(a8 + 2 * v267.u16[0]);
        v267.i64[1] = (*(a8 + ((v267.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v267.u16[6]) << 32) | (*(a8 + 2 * v267.u16[5]) << 16) | *(a8 + 2 * v267.u16[4]);
        v266.i64[0] = (*(a8 + ((v266.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v266.u16[2]) << 32) | (*(a8 + 2 * v266.u16[1]) << 16) | *(a8 + 2 * v266.u16[0]);
        v266.i64[1] = (*(a8 + ((v266.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v266.u16[6]) << 32) | (*(a8 + 2 * v266.u16[5]) << 16) | *(a8 + 2 * v266.u16[4]);
      }

      v268.i64[0] = *(v166 + 1);
      v268.i64[1] = *(v166 + 3);
      v269 = vqtbl1q_s8(v268, v67);
      v270 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v269, 8uLL), xmmword_296B6EE00), vshlq_u8(v269, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v271 = vaddq_s8(v270, v68);
      v270.i8[1] = 0;
      v272 = vqtbl1q_s8(v271, xmmword_296B6EE20);
      v273 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v272, xmmword_296B6EE30), v272), vqtbl1q_s8(v272, xmmword_296B6EE40));
      v274 = vdupq_lane_s16(*v270.i8, 0);
      v275 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v273.i8), xmmword_296B6EE50), *v273.i8), v274);
      v276 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v273), xmmword_296B6EE50), v273), v274);
      v277 = vdupq_n_s16(bswap32(*v166) >> 16);
      v278 = vaddq_s16(v276, v277);
      v279 = vaddq_s16(v275, v277);
      v280 = veorq_s8((*&v278 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v278));
      v281 = veorq_s8((*&v279 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v279));
      if (a9)
      {
        v281.i64[0] = (*(a9 + ((v281.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v281.u16[2]) << 32) | (*(a9 + 2 * v281.u16[1]) << 16) | *(a9 + 2 * v281.u16[0]);
        v281.i64[1] = (*(a9 + ((v281.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v281.u16[6]) << 32) | (*(a9 + 2 * v281.u16[5]) << 16) | *(a9 + 2 * v281.u16[4]);
        v280.i64[0] = (*(a9 + ((v280.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v280.u16[2]) << 32) | (*(a9 + 2 * v280.u16[1]) << 16) | *(a9 + 2 * v280.u16[0]);
        v280.i64[1] = (*(a9 + ((v280.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v280.u16[6]) << 32) | (*(a9 + 2 * v280.u16[5]) << 16) | *(a9 + 2 * v280.u16[4]);
      }

      v282.i64[0] = *(result + 2);
      v282.i64[1] = *(result + 6);
      v283 = vqtbl1q_s8(v282, v67);
      v284 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v283, 8uLL), xmmword_296B6EE00), vshlq_u8(v283, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v285 = vaddq_s8(v284, v68);
      v284.i8[1] = 0;
      v286 = vqtbl1q_s8(v285, xmmword_296B6EE20);
      v287 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v286, xmmword_296B6EE30), v286), vqtbl1q_s8(v286, xmmword_296B6EE40));
      v288 = vdupq_lane_s16(*v284.i8, 0);
      v289 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v287.i8), xmmword_296B6EE50), *v287.i8), v288);
      v290 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v287), xmmword_296B6EE50), v287), v288);
      v291 = vdupq_n_s16(bswap32(*result) >> 16);
      v292 = vaddq_s16(v290, v291);
      v293 = vaddq_s16(v289, v291);
      v294 = veorq_s8((*&v292 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v292));
      v295 = veorq_s8((*&v293 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v293));
      if (a10)
      {
        result = (*(a10 + ((v294.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v294.u16[6]) << 32) | (*(a10 + 2 * v294.u16[5]) << 16) | *(a10 + 2 * v294.u16[4]);
        v295.i64[0] = (*(a10 + ((v295.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v295.u16[2]) << 32) | (*(a10 + 2 * v295.u16[1]) << 16) | *(a10 + 2 * v295.u16[0]);
        v295.i64[1] = (*(a10 + ((v295.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v295.u16[6]) << 32) | (*(a10 + 2 * v295.u16[5]) << 16) | *(a10 + 2 * v295.u16[4]);
        v294.i64[0] = (*(a10 + ((v294.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v294.u16[2]) << 32) | (*(a10 + 2 * v294.u16[1]) << 16) | *(a10 + 2 * v294.u16[0]);
        v294.i64[1] = result;
      }

      v296 = v295;
      v297 = v281;
      v322.val[1] = vqtbl2q_s8(*v267.i8, xmmword_296B6EF60);
      v322.val[0] = vqtbl2q_s8(*v253.i8, xmmword_296B6EEA0);
      v298 = vqtbl2q_s8(v322, xmmword_296B6EDD0);
      v310.val[1] = vqtbl2q_s8(*v267.i8, xmmword_296B6EF40);
      v310.val[0] = vqtbl2q_s8(*v253.i8, xmmword_296B6EE70);
      v299 = vqtbl2q_s8(v310, xmmword_296B6EDD0);
      v300 = v294;
      v301 = v280;
      v310.val[1] = vqtbl2q_s8(*v266.i8, xmmword_296B6EF60);
      v310.val[0] = vqtbl2q_s8(*v252.i8, xmmword_296B6EEA0);
      v302 = vqtbl2q_s8(v310, xmmword_296B6EDD0);
      v310.val[1] = vqtbl2q_s8(*v266.i8, xmmword_296B6EF40);
      v310.val[0] = vqtbl2q_s8(*v252.i8, xmmword_296B6EE70);
      v303 = vqtbl2q_s8(v310, xmmword_296B6EDD0);
      if (((4 - v167) & 2) != 0)
      {
        *v236 = v299;
        *v237 = v298;
        *v238 = v303;
        *v239 = v302;
        if ((4 - v167))
        {
          v321.val[1] = vqtbl2q_s8(*v267.i8, xmmword_296B6EF70);
          v321.val[0] = vqtbl2q_s8(*v253.i8, xmmword_296B6EEB0);
          v319.val[1] = vqtbl2q_s8(*v267.i8, xmmword_296B6EF50);
          v319.val[0] = vqtbl2q_s8(*v253.i8, xmmword_296B6EE90);
          v304 = vqtbl2q_s8(v319, xmmword_296B6EDD0).u64[0];
          v319.val[1] = vqtbl2q_s8(*v266.i8, xmmword_296B6EF70);
          v319.val[0] = vqtbl2q_s8(*v252.i8, xmmword_296B6EEB0);
          v314.val[1] = vqtbl2q_s8(*v266.i8, xmmword_296B6EF50);
          v314.val[0] = vqtbl2q_s8(*v252.i8, xmmword_296B6EE90);
          v236[1].i64[0] = v304;
          v237[1].i64[0] = vqtbl2q_s8(v321, xmmword_296B6EDD0).u64[0];
          v238[1].i64[0] = vqtbl2q_s8(v314, xmmword_296B6EDD0).u64[0];
          v239[1].i64[0] = vqtbl2q_s8(v319, xmmword_296B6EDD0).u64[0];
        }
      }

      else
      {
        v236->i64[0] = v299.i64[0];
        v237->i64[0] = v298.i64[0];
        v238->i64[0] = v303.i64[0];
        v239->i64[0] = v302.i64[0];
      }
    }

    goto LABEL_128;
  }

  v170 = v169 - v76 + 1;
  while (v164 <= v60 && v165 <= v60 && v166 <= v60 && result <= v60)
  {
    v171.i64[0] = *(v164 + 1);
    v171.i64[1] = *(v164 + 3);
    v172 = vqtbl1q_s8(v171, v67);
    v173 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v172, 8uLL), xmmword_296B6EE00), vshlq_u8(v172, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v174 = vaddq_s8(v173, v68);
    v173.i8[1] = 0;
    v175 = vqtbl1q_s8(v174, xmmword_296B6EE20);
    v176 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v175, xmmword_296B6EE30), v175), vqtbl1q_s8(v175, xmmword_296B6EE40));
    v177 = vdupq_lane_s16(*v173.i8, 0);
    v178 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v176.i8), xmmword_296B6EE50), *v176.i8), v177);
    v179 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v176), xmmword_296B6EE50), v176), v177);
    v180 = vdupq_n_s16(bswap32(*v164) >> 16);
    v181 = vaddq_s16(v179, v180);
    v182 = vaddq_s16(v178, v180);
    v183 = veorq_s8((*&v181 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v181));
    v184 = veorq_s8((*&v182 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v182));
    if (a7)
    {
      v184.i64[0] = (*(a7 + ((v184.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v184.u16[2]) << 32) | (*(a7 + 2 * v184.u16[1]) << 16) | *(a7 + 2 * v184.u16[0]);
      v184.i64[1] = (*(a7 + ((v184.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v184.u16[6]) << 32) | (*(a7 + 2 * v184.u16[5]) << 16) | *(a7 + 2 * v184.u16[4]);
      v183.i64[0] = (*(a7 + ((v183.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v183.u16[2]) << 32) | (*(a7 + 2 * v183.u16[1]) << 16) | *(a7 + 2 * v183.u16[0]);
      v183.i64[1] = (*(a7 + ((v183.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v183.u16[6]) << 32) | (*(a7 + 2 * v183.u16[5]) << 16) | *(a7 + 2 * v183.u16[4]);
    }

    v185.i64[0] = *(v165 + 1);
    v185.i64[1] = *(v165 + 3);
    v186 = vqtbl1q_s8(v185, v67);
    v187 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v186, 8uLL), xmmword_296B6EE00), vshlq_u8(v186, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v188 = vaddq_s8(v187, v68);
    v187.i8[1] = 0;
    v189 = vqtbl1q_s8(v188, xmmword_296B6EE20);
    v190 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v189, xmmword_296B6EE30), v189), vqtbl1q_s8(v189, xmmword_296B6EE40));
    v191 = vdupq_lane_s16(*v187.i8, 0);
    v192 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v190.i8), xmmword_296B6EE50), *v190.i8), v191);
    v193 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v190), xmmword_296B6EE50), v190), v191);
    v194 = vdupq_n_s16(bswap32(*v165) >> 16);
    v195 = vaddq_s16(v193, v194);
    v196 = vaddq_s16(v192, v194);
    v197 = veorq_s8((*&v195 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v195));
    v198 = veorq_s8((*&v196 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v196));
    if (a8)
    {
      v198.i64[0] = (*(a8 + ((v198.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v198.u16[2]) << 32) | (*(a8 + 2 * v198.u16[1]) << 16) | *(a8 + 2 * v198.u16[0]);
      v198.i64[1] = (*(a8 + ((v198.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v198.u16[6]) << 32) | (*(a8 + 2 * v198.u16[5]) << 16) | *(a8 + 2 * v198.u16[4]);
      v197.i64[0] = (*(a8 + ((v197.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v197.u16[2]) << 32) | (*(a8 + 2 * v197.u16[1]) << 16) | *(a8 + 2 * v197.u16[0]);
      v197.i64[1] = (*(a8 + ((v197.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v197.u16[6]) << 32) | (*(a8 + 2 * v197.u16[5]) << 16) | *(a8 + 2 * v197.u16[4]);
    }

    v199.i64[0] = *(v166 + 1);
    v199.i64[1] = *(v166 + 3);
    v200 = vqtbl1q_s8(v199, v67);
    v201 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v200, 8uLL), xmmword_296B6EE00), vshlq_u8(v200, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v202 = vaddq_s8(v201, v68);
    v201.i8[1] = 0;
    v203 = vqtbl1q_s8(v202, xmmword_296B6EE20);
    v204 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v203, xmmword_296B6EE30), v203), vqtbl1q_s8(v203, xmmword_296B6EE40));
    v205 = vdupq_lane_s16(*v201.i8, 0);
    v206 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v204.i8), xmmword_296B6EE50), *v204.i8), v205);
    v207 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v204), xmmword_296B6EE50), v204), v205);
    v208 = vdupq_n_s16(bswap32(*v166) >> 16);
    v209 = vaddq_s16(v207, v208);
    v210 = vaddq_s16(v206, v208);
    v211 = veorq_s8((*&v209 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v209));
    v212 = veorq_s8((*&v210 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v210));
    if (a9)
    {
      v212.i64[0] = (*(a9 + ((v212.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v212.u16[2]) << 32) | (*(a9 + 2 * v212.u16[1]) << 16) | *(a9 + 2 * v212.u16[0]);
      v212.i64[1] = (*(a9 + ((v212.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v212.u16[6]) << 32) | (*(a9 + 2 * v212.u16[5]) << 16) | *(a9 + 2 * v212.u16[4]);
      v211.i64[0] = (*(a9 + ((v211.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v211.u16[2]) << 32) | (*(a9 + 2 * v211.u16[1]) << 16) | *(a9 + 2 * v211.u16[0]);
      v211.i64[1] = (*(a9 + ((v211.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v211.u16[6]) << 32) | (*(a9 + 2 * v211.u16[5]) << 16) | *(a9 + 2 * v211.u16[4]);
    }

    v213.i64[0] = *(result + 2);
    v213.i64[1] = *(result + 6);
    v214 = vqtbl1q_s8(v213, v67);
    v215 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v214, 8uLL), xmmword_296B6EE00), vshlq_u8(v214, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v216 = vaddq_s8(v215, v68);
    v215.i8[1] = 0;
    v217 = vqtbl1q_s8(v216, xmmword_296B6EE20);
    v218 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v217, xmmword_296B6EE30), v217), vqtbl1q_s8(v217, xmmword_296B6EE40));
    v219 = vdupq_lane_s16(*v215.i8, 0);
    v220 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v218.i8), xmmword_296B6EE50), *v218.i8), v219);
    v221 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v218), xmmword_296B6EE50), v218), v219);
    v222 = vdupq_n_s16(bswap32(*result) >> 16);
    v223 = vaddq_s16(v221, v222);
    v224 = vaddq_s16(v220, v222);
    v225 = veorq_s8((*&v223 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v223));
    v226 = veorq_s8((*&v224 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v224));
    if (a10)
    {
      v226.i64[0] = (*(a10 + ((v226.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v226.u16[2]) << 32) | (*(a10 + 2 * v226.u16[1]) << 16) | *(a10 + 2 * v226.u16[0]);
      v226.i64[1] = (*(a10 + ((v226.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v226.u16[6]) << 32) | (*(a10 + 2 * v226.u16[5]) << 16) | *(a10 + 2 * v226.u16[4]);
      v225.i64[0] = (*(a10 + ((v225.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v225.u16[2]) << 32) | (*(a10 + 2 * v225.u16[1]) << 16) | *(a10 + 2 * v225.u16[0]);
      v225.i64[1] = (*(a10 + ((v225.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v225.u16[6]) << 32) | (*(a10 + 2 * v225.u16[5]) << 16) | *(a10 + 2 * v225.u16[4]);
    }

    v164 += 7;
    v165 += 7;
    v166 += 7;
    v227 = v225;
    v323.val[1] = vqtbl2q_s8(*v197.i8, xmmword_296B6EF60);
    v228 = v211;
    v323.val[0] = vqtbl2q_s8(*v183.i8, xmmword_296B6EEA0);
    v229 = vqtbl2q_s8(v323, xmmword_296B6EDD0);
    v230 = vqtbl2q_s8(*v197.i8, xmmword_296B6EF70);
    v323.val[1] = vqtbl2q_s8(*v183.i8, xmmword_296B6EEB0);
    v312.val[1] = vqtbl2q_s8(*v197.i8, xmmword_296B6EF40);
    v312.val[0] = vqtbl2q_s8(*v183.i8, xmmword_296B6EE70);
    v317.val[1] = vqtbl2q_s8(*v197.i8, xmmword_296B6EF50);
    v317.val[0] = vqtbl2q_s8(*v183.i8, xmmword_296B6EE90);
    v231 = vqtbl2q_s8(v317, xmmword_296B6EDD0);
    v232 = v226;
    v317.val[1] = vqtbl2q_s8(*v198.i8, xmmword_296B6EF60);
    v233 = v212;
    v317.val[0] = vqtbl2q_s8(*v184.i8, xmmword_296B6EEA0);
    v234 = vqtbl2q_s8(v317, xmmword_296B6EDD0);
    v317.val[1] = vqtbl2q_s8(*v198.i8, xmmword_296B6EF70);
    v323.val[0] = vqtbl2q_s8(*v198.i8, xmmword_296B6EF40);
    v235 = vqtbl2q_s8(*v184.i8, xmmword_296B6EE70);
    v318.val[1] = vqtbl2q_s8(*v198.i8, xmmword_296B6EF50);
    v318.val[0] = vqtbl2q_s8(*v184.i8, xmmword_296B6EE90);
    *a14 = vqtbl2q_s8(v323, xmmword_296B6EDD0);
    a14[1] = vqtbl2q_s8(v318, xmmword_296B6EDD0);
    v317.val[0] = vqtbl2q_s8(*v184.i8, xmmword_296B6EEB0);
    result += 14;
    v236 = a14 + 2;
    *v69 = v234;
    v69[1] = vqtbl2q_s8(v317, xmmword_296B6EDD0);
    v237 = v69 + 2;
    v238 = v70 + 2;
    *v70 = vqtbl2q_s8(v312, xmmword_296B6EDD0);
    v70[1] = v231;
    v239 = v71 + 2;
    *v71 = v229;
    v71[1] = vqtbl2q_s8(*(&v323 + 16), xmmword_296B6EDD0);
    v71 += 2;
    v70 += 2;
    v69 += 2;
    a14 += 2;
    if (!--v170)
    {
      v167 = a12[5];
      if (v167)
      {
        goto LABEL_112;
      }

      goto LABEL_128;
    }
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x4_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int32x2_t *a12, unsigned int *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!result)
  {
    return result;
  }

  if (*&a12[1] >= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = a12[1];
  }

  v19 = a12[3];
  v20 = a12[7].u32[1];
  v21 = *(a3 + 8);
  v22 = *(*&v21[5] + 8 * v20);
  v23 = v22[2];
  v24 = vmin_u32(vmls_s32(v23, v21[6], v19), v21[6]).u32[0];
  v25 = *(a4 + 8);
  v26 = *(*&v25[5] + 8 * v20);
  v27 = v26[2];
  v28 = vmin_u32(vmls_s32(v27, v25[6], v19), v25[6]).u32[0];
  v29 = *(a5 + 8);
  v30 = *(*&v29[5] + 8 * v20);
  v31 = v30[2];
  v32 = vmin_u32(vmls_s32(v31, v29[6], v19), v29[6]).u32[0];
  v33 = *(a6 + 8);
  v34 = *(*&v33[5] + 8 * v20);
  a7.i64[0] = *(v34 + 16);
  v35 = vmin_u32(vmls_s32(*a7.i8, v33[6], v19), v33[6]).u32[0];
  v36 = 12 * v24 + 16;
  if (v36 <= 12 * v28 + 16)
  {
    v36 = 12 * v28 + 16;
  }

  if (v36 <= 12 * v32 + 16)
  {
    v36 = 12 * v32 + 16;
  }

  v37 = 12 * v35 + 16;
  if (v36 > v37)
  {
    v37 = v36;
  }

  v38 = v18 >= v37;
  v39 = v18 - v37;
  if (!v38)
  {
    return result;
  }

  v40 = (v19.i32[1] * *(a14 + 60));
  v41 = v22[1].u32[1] - 1 >= v40 ? (v19.i32[1] * *(a14 + 60)) : v22[1].u32[1] - 1;
  v42 = &v22[v19.u32[0]];
  if (v21[13].i32[0] == 1)
  {
    v43 = (*&v42[3] + 8 * v41);
  }

  else
  {
    v44 = (v41 * v21[13].u32[1]) >> v21[14].i32[0];
    if (v44 >= v23.i32[1] - 1)
    {
      LODWORD(v44) = v23.i32[1] - 1;
    }

    v43 = (*&v42[3] + 8 * v44);
  }

  v45 = v26[1].u32[1] - 1 >= v40 ? (v19.i32[1] * *(a14 + 60)) : v26[1].u32[1] - 1;
  v46 = &v26[v19.u32[0]];
  if (v25[13].i32[0] == 1)
  {
    v47 = (*&v46[3] + 8 * v45);
  }

  else
  {
    v48 = (v45 * v25[13].u32[1]) >> v25[14].i32[0];
    if (v48 >= v27.i32[1] - 1)
    {
      LODWORD(v48) = v27.i32[1] - 1;
    }

    v47 = (*&v46[3] + 8 * v48);
  }

  v49 = v30[1].u32[1] - 1;
  if (v49 >= v40)
  {
    v49 = (v19.i32[1] * *(a14 + 60));
  }

  v50 = &v30[v19.u32[0]];
  if (v29[13].i32[0] == 1)
  {
    v51 = (*&v50[3] + 8 * v49);
  }

  else
  {
    v52 = (v49 * v29[13].u32[1]) >> v29[14].i32[0];
    if (v52 >= v31.i32[1] - 1)
    {
      LODWORD(v52) = v31.i32[1] - 1;
    }

    v51 = (*&v50[3] + 8 * v52);
  }

  v53 = *(v34 + 12) - 1;
  if (v53 >= v40)
  {
    v53 = (v19.i32[1] * *(a14 + 60));
  }

  v54 = v34 + 8 * v19.u32[0];
  if (v33[13].i32[0] == 1)
  {
    v55 = (*(v54 + 24) + 8 * v53);
  }

  else
  {
    v56 = (v53 * v33[13].u32[1]) >> v33[14].i32[0];
    if (v56 >= a7.i32[1] - 1)
    {
      LODWORD(v56) = a7.i32[1] - 1;
    }

    v55 = (*(v54 + 24) + 8 * v56);
  }

  v57 = a13[2];
  v58 = a13[6];
  if (v57 > v58)
  {
    return result;
  }

  v60 = 4 * v24;
  v61 = 4 * v28;
  v62 = 4 * v32;
  v63 = 4 * v35;
  v64 = (result + v39);
  v65 = 16 * v32;
  v66 = a18;
  v67 = *a13;
  v273 = 16 * v28;
  v274 = 16 * v24;
  v68 = result[v67].u64 + *v43 + 16 * v24 * v57;
  v69 = (&result[v67] + *v47 + v273 * v57);
  v271 = 16 * v35;
  v272 = v65;
  v70 = (&result[v67] + *v51 + v65 * v57);
  result = (result + 16 * v67 + *v55 + v271 * v57);
  while (1)
  {
    v71 = a15 + v66;
    v72 = a15 + v66 + v66;
    v73 = v72 + v66;
    if (!a17)
    {
      v76 = v72 + v66;
      goto LABEL_61;
    }

    if (v57 == a13[2])
    {
      v74 = a13[3] + 1;
      v75 = a15;
      a15 += v66;
      v71 = v72;
      v72 += v66;
      do
      {
        v76 = v72;
        v72 = v71;
        v71 = a15;
        a15 = v75;
        v75 = a17;
        --v74;
      }

      while (v74);
    }

    else
    {
      v76 = v72 + v66;
    }

    if (v57 == v58)
    {
      v77 = a13[7];
      switch(v77)
      {
        case 1u:
          goto LABEL_59;
        case 2u:
          goto LABEL_58;
        case 3u:
          v71 = a17;
LABEL_58:
          v72 = a17;
LABEL_59:
          v73 = a17;
          goto LABEL_61;
      }
    }

    v73 = v76;
LABEL_61:
    v79 = *a13;
    v78 = a13[1];
    if (v78)
    {
      if (v68 > v64 || v69 > v64 || v70 > v64 || result > v64)
      {
        return result;
      }

      a7.i32[0] = 0;
      v80 = *(v68 + v60);
      v81 = (v68 + v60 + v60);
      v82 = *(v81 + v60);
      v83 = (v69 + v61 + v61);
      v84 = *(v83 + v61);
      v85 = *(v69 + v61);
      v86 = (result + v63 + v63);
      v87 = *(v86 + v63);
      v88 = vuzp1q_s32(v84, v87);
      v89 = *v83;
      v90 = *(v70 + v62);
      v91 = (v70 + v62 + v62);
      v92 = *(v91 + v62);
      v93 = vrev64q_s32(vuzp1q_s32(v82, v92));
      v94 = vuzp2q_s32(v82, v92);
      v92.i32[0] = *(&v81->i64[1] + v60);
      v95 = vtrn2q_s32(v93, vextq_s8(v84, v88, 0xCuLL));
      v96 = vuzp2q_s32(v84, v87);
      v97 = v84;
      v97.i32[3] = HIDWORD(*(v86->i64 + v63));
      v98 = vtrn2q_s32(vrev64q_s32(v92), v88);
      v99 = *v68;
      v100 = *v69;
      v101 = *v70;
      v102 = *v91;
      v103 = *result;
      v104 = *(result + v63);
      v105 = vtrn2q_s32(vrev64q_s32(v94), v97);
      v106 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v94, v82)), v96);
      v107 = vuzp1q_s32(v89, *v86);
      v108 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(*v81, *v91)), vextq_s8(v89, v107, 0xCuLL));
      v109 = vuzp2q_s32(*v81, *v91);
      v102.i32[0] = v81->i64[1];
      v110 = vtrn2q_s32(vrev64q_s32(v102), v107);
      v111 = vuzp2q_s32(v89, *v86);
      v89.i32[3] = HIDWORD(v86->i64[0]);
      v112 = vtrn2q_s32(vrev64q_s32(v109), v89);
      v113 = vrev64q_s32(vtrn2q_s32(v109, *v81));
      v114 = vtrn2q_s32(v113, v111);
      v115 = 4 - a13[5];
      if (a13[4] != v79)
      {
        v115 = 4;
      }

      v113.i32[0] = a13[1] & 2;
      v116 = vdupq_lane_s32(*&vceqq_s32(v113, a7), 0);
      v117 = vbslq_s8(v116, v112, v114);
      v118 = vbslq_s8(v116, v108, v110);
      v119 = vbslq_s8(v116, v105, v106);
      v120 = vbslq_s8(v116, v95, v98);
      v121 = vuzp2q_s32(v85, v104);
      v122 = vuzp1q_s32(v85, v104);
      v123 = vextq_s8(v85, v122, 0xCuLL);
      v85.i32[3] = HIDWORD(*(result->i64 + v63));
      v124 = vuzp2q_s32(v80, v90);
      v125 = vtrn2q_s32(vrev64q_s32(v124), v85);
      v126 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v124, v80)), v121);
      v127 = vbslq_s8(v116, v125, v126);
      v128 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v80, v90)), v123);
      v90.i32[0] = *(v68 + v60 + 8);
      v129 = vtrn2q_s32(vrev64q_s32(v90), v122);
      v130 = vbslq_s8(v116, v128, v129);
      v131 = vuzp2q_s32(v100, v103);
      v132 = vuzp1q_s32(v100, v103);
      v133 = vextq_s8(v100, v132, 0xCuLL);
      v100.i32[3] = HIDWORD(result->i64[0]);
      v134 = vuzp2q_s32(v99, v101);
      v135 = vtrn2q_s32(vrev64q_s32(v134), v100);
      v136 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v134, v99)), v131);
      v137 = vbslq_s8(v116, v135, v136);
      v138 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v99, v101)), v133);
      v101.i32[0] = *(v68 + 8);
      v139 = vrev64q_s32(v101);
      v140 = vtrn2q_s32(v139, v132);
      if ((v78 & 2) != 0)
      {
        v141 = v115 - 2;
      }

      else
      {
        v141 = v115;
      }

      v142 = v78 & 1;
      v143 = v141 - v142;
      v139.i32[0] = v142;
      v144 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v139, a7)), 0);
      v145 = vbslq_s8(v144, v137, vbslq_s8(v116, v138, v140));
      v146 = vbslq_s8(v144, v127, v130);
      a7 = vbslq_s8(v144, v119, v120);
      v147 = vbslq_s8(v144, v117, v118);
      if (v141 - v142 <= 1)
      {
        v153 = 0;
      }

      else
      {
        v148 = vbslq_s8(v116, v110, v108);
        v149 = vbslq_s8(v116, v98, v95);
        v150 = vbslq_s8(v116, v106, v105);
        v151 = vbslq_s8(v116, v129, v128);
        v152 = vbslq_s8(v116, v140, v138);
        *a15 = v145;
        *(a15 + 16) = vbslq_s8(v144, v152, v137);
        *v71 = v146;
        *(v71 + 16) = vbslq_s8(v144, v151, v127);
        *v72 = v147;
        *(v72 + 16) = vbslq_s8(v144, v148, v117);
        v143 -= 2;
        v145 = vbslq_s8(v144, vbslq_s8(v116, v136, v135), v152);
        *v73 = a7;
        *(v73 + 16) = vbslq_s8(v144, v149, v119);
        v146 = vbslq_s8(v144, vbslq_s8(v116, v126, v125), v151);
        v147 = vbslq_s8(v144, vbslq_s8(v116, v114, v112), v148);
        a7 = vbslq_s8(v144, v150, v149);
        v153 = 32;
      }

      if (v143 >= 1)
      {
        *(v153 + a15) = v145;
        *(v153 + v71) = v146;
        *(v153 + v72) = v147;
        *(v153 + v73) = a7;
        v153 |= 0x10uLL;
      }

      v154 = a13[4];
      if (v154 == v79)
      {
        goto LABEL_145;
      }

      v155 = (v68 + 16);
      v156 = v69 + 1;
      v157 = v70 + 1;
      v158 = result + 1;
      a15 += v153;
      v71 += v153;
      v72 += v153;
      v73 += v153;
      ++v79;
    }

    else
    {
      v154 = a13[4];
      v155 = v68;
      v156 = v69;
      v157 = v70;
      v158 = result;
    }

    v159 = a13[5];
    v160 = v159 != 0;
    if (v154 != 0 || !v160)
    {
      v161 = v154 - v160;
      if (v79 <= v161)
      {
        break;
      }
    }

    v211 = a15;
    v212 = v71;
    v213 = v72;
    v214 = v73;
    if (v159)
    {
LABEL_90:
      if (v57 == a13[6])
      {
        v215 = 4 - a13[7];
      }

      else
      {
        v215 = 4;
      }

      if (v155 > v64 || v156 > v64 || v157 > v64 || v158 > v64)
      {
        return result;
      }

      if (v215 < 2)
      {
        v217 = 0;
        v216 = v155;
        v218 = v155;
      }

      else
      {
        v216 = (v155->i64 + v60);
        if (v215 == 2)
        {
          v217 = 0;
          v218 = (v155->i64 + v60);
        }

        else
        {
          v218 = (v155->i64 + v60);
          v216 = (v216 + v60);
          if (v215 <= 3)
          {
            v217 = 0;
          }

          else
          {
            v217 = v60;
          }
        }
      }

      v219 = (v216 + v217);
      v220 = 0uLL;
      v221 = 0uLL;
      a7 = 0uLL;
      v222 = 0uLL;
      if ((4 - v159))
      {
        v222.i32[0] = v155->i32[3 - v159];
        v220.i32[0] = *(v218 + 3 - v159);
        v221.i32[0] = *(v216 + 3 - v159);
        v66 = a18;
        a7.i32[0] = *(v219 + 3 - v159);
      }

      if (((4 - v159) & 2) != 0)
      {
        v223.i64[0] = v155->i64[0];
        v223.i64[1] = v222.i64[0];
        v224.i64[0] = *v218;
        v224.i64[1] = v220.i64[0];
        v225.i64[0] = *v216;
        v225.i64[1] = v221.i64[0];
        v226.i64[0] = *v219;
        v226.i64[1] = a7.i64[0];
        v220 = v224;
        v221 = v225;
        a7 = v226;
        v222 = v223;
      }

      if (v215 < 2)
      {
        v228 = 0;
        v227 = v156;
        v229 = v156;
      }

      else
      {
        v227 = (v156->i64 + v61);
        if (v215 == 2)
        {
          v228 = 0;
          v229 = (v156->i64 + v61);
        }

        else
        {
          v229 = (v156->i64 + v61);
          v227 = (v227 + v61);
          if (v215 <= 3)
          {
            v228 = 0;
          }

          else
          {
            v228 = v61;
          }
        }
      }

      v230 = (v227 + v228);
      v231 = 0uLL;
      v232 = 0uLL;
      v233 = 0uLL;
      v234 = 0uLL;
      if ((4 - v159))
      {
        v234.i32[0] = v156->i32[3 - v159];
        v231.i32[0] = *(v229 + 3 - v159);
        v232.i32[0] = *(v227 + 3 - v159);
        v66 = a18;
        v233.i32[0] = *(v230 + 3 - v159);
      }

      if (((4 - v159) & 2) != 0)
      {
        v235.i64[0] = v156->i64[0];
        v235.i64[1] = v234.i64[0];
        v236.i64[0] = *v229;
        v236.i64[1] = v231.i64[0];
        v237.i64[0] = *v227;
        v237.i64[1] = v232.i64[0];
        v238.i64[0] = *v230;
        v238.i64[1] = v233.i64[0];
        v231 = v236;
        v232 = v237;
        v233 = v238;
        v234 = v235;
      }

      if (v215 < 2)
      {
        v240 = 0;
        v239 = v157;
        v241 = v157;
      }

      else
      {
        v239 = (v157->i64 + v62);
        if (v215 == 2)
        {
          v240 = 0;
          v241 = (v157->i64 + v62);
        }

        else
        {
          v241 = (v157->i64 + v62);
          v239 = (v239 + v62);
          if (v215 <= 3)
          {
            v240 = 0;
          }

          else
          {
            v240 = v62;
          }
        }
      }

      v242 = (v239 + v240);
      v243 = 0uLL;
      v244 = 0uLL;
      v245 = 0uLL;
      v246 = 0uLL;
      if ((4 - v159))
      {
        v246.i32[0] = v157->i32[3 - v159];
        v243.i32[0] = *(v241 + 3 - v159);
        v244.i32[0] = *(v239 + 3 - v159);
        v66 = a18;
        v245.i32[0] = *(v242 + 3 - v159);
      }

      if (((4 - v159) & 2) != 0)
      {
        v247.i64[0] = v157->i64[0];
        v247.i64[1] = v246.i64[0];
        v248.i64[0] = *v241;
        v248.i64[1] = v243.i64[0];
        v249.i64[0] = *v239;
        v249.i64[1] = v244.i64[0];
        v250.i64[0] = *v242;
        v250.i64[1] = v245.i64[0];
        v243 = v248;
        v244 = v249;
        v245 = v250;
        v246 = v247;
      }

      if (v215 < 2)
      {
        v252 = 0;
        v251 = v158;
        v253 = v158;
      }

      else
      {
        v251 = (v158->i64 + v63);
        if (v215 == 2)
        {
          v252 = 0;
          v253 = (v158->i64 + v63);
        }

        else
        {
          v253 = (v158->i64 + v63);
          v251 = (v251 + v63);
          if (v215 <= 3)
          {
            v252 = 0;
          }

          else
          {
            v252 = v63;
          }
        }
      }

      v254 = (v251 + v252);
      v255 = 0uLL;
      v256 = 0uLL;
      v257 = 0uLL;
      v258 = 0uLL;
      if ((4 - v159))
      {
        v258.i32[0] = v158->i32[3 - v159];
        v255.i32[0] = *(v253 + 3 - v159);
        v256.i32[0] = *(v251 + 3 - v159);
        v257.i32[0] = *(v254 + 3 - v159);
      }

      if (((4 - v159) & 2) != 0)
      {
        v259.i64[0] = v158->i64[0];
        v259.i64[1] = v258.i64[0];
        v260.i64[0] = *v253;
        v260.i64[1] = v255.i64[0];
        v261.i64[0] = *v251;
        v261.i64[1] = v256.i64[0];
        v262.i64[0] = *v254;
        v262.i64[1] = v257.i64[0];
        v255 = v260;
        v256 = v261;
        v257 = v262;
        v258 = v259;
      }

      v263 = vuzp1q_s32(v234, v258);
      v264 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v222, v246)), vextq_s8(v234, v263, 0xCuLL));
      v265 = vuzp1q_s32(v231, v255);
      v266 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v220, v243)), vextq_s8(v231, v265, 0xCuLL));
      v267 = vuzp1q_s32(v232, v256);
      v268 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v221, v244)), vextq_s8(v232, v267, 0xCuLL));
      v269 = vuzp1q_s32(v233, v257);
      v270 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(a7, v245)), vextq_s8(v233, v269, 0xCuLL));
      if (((4 - v159) & 2) != 0)
      {
        v234.i32[3] = v258.i32[1];
        v231.i32[3] = v255.i32[1];
        v232.i32[3] = v256.i32[1];
        v233.i32[3] = v257.i32[1];
        *v211 = v264;
        v211[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v222, v246)), v234);
        *v212 = v266;
        v212[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v220, v243)), v231);
        *v213 = v268;
        v213[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v221, v244)), v232);
        *v214 = v270;
        v214[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(a7, v245)), v233);
        if ((4 - v159))
        {
          v246.i32[0] = v222.i32[2];
          v243.i32[0] = v220.i32[2];
          v244.i32[0] = v221.i32[2];
          v245.i32[0] = a7.i32[2];
          v211[2] = vtrn2q_s32(vrev64q_s32(v246), v263);
          v212[2] = vtrn2q_s32(vrev64q_s32(v243), v265);
          a7 = vtrn2q_s32(vrev64q_s32(v245), v269);
          v213[2] = vtrn2q_s32(vrev64q_s32(v244), v267);
          v214[2] = a7;
        }
      }

      else
      {
        *v211 = v264;
        *v212 = v266;
        *v213 = v268;
        *v214 = v270;
      }
    }

LABEL_145:
    a15 = v76 + v66;
    result = (result + v271);
    v70 = (v70 + v272);
    v69 = (v69 + v273);
    v68 += v274;
    v58 = a13[6];
    v38 = v57++ >= v58;
    if (v38)
    {
      return result;
    }
  }

  v162 = v161 - v79 + 1;
  while (v155 <= v64 && v156 <= v64 && v157 <= v64 && v158 <= v64)
  {
    v163 = (v155 + v60);
    v164 = (v155 + v60 + v60);
    v165 = *v164;
    v166 = *(v164 + v60);
    v167 = (v156 + v61);
    v168 = (v156 + v61 + v61);
    v169 = *v168;
    v170 = *(v168 + v61);
    v171 = (v157 + v62);
    v172 = (v157 + v62 + v62);
    v173 = *(v172 + v62);
    v174 = *v172;
    v175 = (v158 + v63 + v63);
    v176 = *(v175 + v63);
    v177 = vuzp1q_s32(v170, v176);
    v178 = vextq_s8(v170, v177, 0xCuLL);
    v179 = vuzp2q_s32(v170, v176);
    v170.i32[3] = HIDWORD(*(v175->i64 + v63));
    v180 = vuzp2q_s32(v166, v173);
    v181 = vuzp1q_s32(v169, *v175);
    v182 = vuzp2q_s32(v165, *v172);
    v174.i32[0] = v165.i32[2];
    v183 = vtrn2q_s32(vrev64q_s32(v174), v181);
    v184 = *v155++;
    v185 = v184;
    v186 = *v163;
    v187 = *v156++;
    v188 = v187;
    v189 = *v167;
    v190 = *v157++;
    v191 = v190;
    v192 = *v171;
    v193 = vextq_s8(v169, v181, 0xCuLL);
    v194 = vuzp2q_s32(v169, *v175);
    v169.i32[3] = HIDWORD(v175->i64[0]);
    v195 = *(v158 + v63);
    v196 = vtrn2q_s32(vrev64q_s32(v182), v169);
    v197 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v165, *v172)), v193);
    v198 = vtrn2q_s32(v182, v165);
    v199 = vuzp1q_s32(*v167, v195);
    v200 = vuzp2q_s32(*v163, *v171);
    v201 = vuzp1q_s32(*v163, *v171);
    v192.i32[0] = v163->i64[1];
    v202 = vtrn2q_s32(vrev64q_s32(v192), v199);
    v203 = vextq_s8(*v167, v199, 0xCuLL);
    v204 = *v158++;
    v205 = vuzp2q_s32(*v167, v195);
    v189.i32[3] = v195.i32[1];
    v206 = vuzp2q_s32(v185, v191);
    v207 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v206, v185)), vuzp2q_s32(v188, v204));
    v208 = vuzp1q_s32(v188, v204);
    v209 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v185, v191)), vextq_s8(v188, v208, 0xCuLL));
    v188.i32[3] = v204.i32[1];
    v191.i32[0] = v185.i32[2];
    *a15 = v209;
    *(a15 + 16) = vtrn2q_s32(vrev64q_s32(v206), v188);
    v210 = vrev64q_s32(vuzp1q_s32(v166, v173));
    *(a15 + 32) = vtrn2q_s32(vrev64q_s32(v191), v208);
    *(a15 + 48) = v207;
    v211 = (a15 + 64);
    v212 = (v71 + 64);
    *v71 = vtrn2q_s32(vrev64q_s32(v201), v203);
    *(v71 + 16) = vtrn2q_s32(vrev64q_s32(v200), v189);
    *(v71 + 32) = v202;
    *(v71 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v200, v186)), v205);
    v213 = (v72 + 64);
    *v72 = v197;
    *(v72 + 16) = v196;
    *(v72 + 32) = v183;
    *(v72 + 48) = vtrn2q_s32(vrev64q_s32(v198), v194);
    v173.i32[0] = v166.i32[2];
    v214 = (v73 + 64);
    *(v73 + 32) = vtrn2q_s32(vrev64q_s32(v173), v177);
    *(v73 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v180, v166)), v179);
    a7 = vtrn2q_s32(v210, v178);
    *v73 = a7;
    *(v73 + 16) = vtrn2q_s32(vrev64q_s32(v180), v170);
    v73 += 64;
    v72 += 64;
    v71 += 64;
    a15 += 64;
    if (!--v162)
    {
      v159 = a13[5];
      if (v159)
      {
        goto LABEL_90;
      }

      goto LABEL_145;
    }
  }

  return result;
}

void TileDecoder_B44::ExtractPlane(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a5 + 8);
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  TileDecoder::GetBlockChannelTileInfo(a1, a5, *(*(a4 + 8) + 80), *(*(a4 + 8) + 104), 4u, 4u, &v21);
  if (DWORD2(v21) <= DWORD2(v22) && v21 <= v22)
  {
    CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(*a5, *(a1[3] + 208), v14);
    if (a1[16] == a2)
    {
      v16 = 0;
    }

    else
    {
      v16 = a2;
    }

    v17 = *(a1[8] + 8);
    v18 = v17 != 0;
    v19 = *(v17 + 72) != 1;
    if (*(*(a4 + 8) + 132))
    {
      v20 = &TileDecoder_B44::LogLUT;
    }

    else
    {
      v20 = 0;
    }

    (*(TileDecoder_B44::ExtractPlane(void const*,unsigned long,ChannelInfo const&,TileInfo const&,void *,unsigned long,long)const::funcTable + ((8 * v19) | (16 * v18))))(CompressedDataPtr, v14, a4, v20, a5, &v21, a1, a6, v16, a8);
  }
}

__int16 *ExtractPlane_B44<unsigned short,(StreamType)0>(__int16 *result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, __int16 *a8, __int16 *a9, uint64_t a10)
{
  if (result)
  {
    v15 = result;
    v16 = *(a5 + 8) >= a2 ? a2 : *(a5 + 8);
    result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v51, a3);
    v17 = a3[1];
    if (v17)
    {
      v18 = *(a5 + 24);
      v19 = (HIDWORD(v18) * *(a7 + 60));
      v20 = *(*(v17 + 40) + 8 * *(a5 + 60));
      if (*(v20 + 12) - 1 < v19)
      {
        v19 = *(v20 + 12) - 1;
      }

      if (*(v17 + 104) == 1)
      {
        v21 = (*(v20 + 8 * v18 + 24) + 8 * v19);
      }

      else
      {
        v23 = (v19 * *(v17 + 108)) >> *(v17 + 112);
        if (v23 >= *(v20 + 20) - 1)
        {
          LODWORD(v23) = *(v20 + 20) - 1;
        }

        v21 = (*(v20 + 8 * v18 + 24) + 8 * v23);
      }

      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    v24 = a6[2];
    v25 = a6[6];
    if (v24 <= v25)
    {
      v26 = v15 + v16;
      v27 = v15 + v22;
      while (1)
      {
        v28 = (a8 + a10);
        v29 = (a8 + a10 + a10);
        result = (v29 + a10);
        if (!a9)
        {
          v32 = (v29 + a10);
          goto LABEL_32;
        }

        if (v24 == a6[2])
        {
          v30 = a6[3] + 1;
          v31 = a8;
          a8 = (a8 + a10);
          v28 = v29;
          v29 = (v29 + a10);
          do
          {
            v32 = v29;
            v29 = v28;
            v28 = a8;
            a8 = v31;
            v31 = a9;
            --v30;
          }

          while (v30);
        }

        else
        {
          v32 = (v29 + a10);
        }

        if (v24 == v25)
        {
          v33 = a6[7];
          if (v33 == 1)
          {
            goto LABEL_30;
          }

          if (v33 == 2)
          {
            goto LABEL_29;
          }

          if (v33 == 3)
          {
            break;
          }
        }

        result = v32;
LABEL_32:
        v34 = *a6;
        v35 = a6[1];
        if (!v35)
        {
          v40 = a6[4];
          goto LABEL_47;
        }

        if (v27 > v26)
        {
          return result;
        }

        v36 = v51;
        if (a6[4] == v34)
        {
          v37 = 4 - a6[5];
        }

        else
        {
          v37 = 4;
        }

        if ((v35 & 2) != 0)
        {
          v37 -= 2;
        }

        v38 = v37 - (v35 & 1);
        if (v38 <= 1)
        {
          v39 = 0;
        }

        else
        {
          a8[1] = v51;
          *a8 = v36;
          v28[1] = v36;
          *v28 = v36;
          v29[1] = v36;
          *v29 = v36;
          result[1] = v36;
          v38 -= 2;
          v39 = 4;
          *result = v36;
        }

        if (v38 >= 1)
        {
          *(a8 + v39) = v36;
          *(v28 + v39) = v36;
          *(v29 + v39) = v36;
          *(result + v39) = v36;
          v39 |= 2uLL;
        }

        v40 = a6[4];
        if (v40 != v34)
        {
          a8 = (a8 + v39);
          v28 = (v28 + v39);
          v29 = (v29 + v39);
          result = (result + v39);
          ++v34;
LABEL_47:
          v41 = a6[5];
          v42 = v40 - (v41 != 0);
          if (v41)
          {
            v43 = v40 == 0;
          }

          else
          {
            v43 = 0;
          }

          if (!v43 && v34 <= v42 && v27 <= v26)
          {
            v46 = vld1_dup_s16(&v51);
            v47 = v34 - 1;
            do
            {
              *a8 = v46;
              a8 += 4;
              *v28 = v46;
              v28 += 4;
              *v29 = v46;
              v29 += 4;
              *result = v46;
              result += 4;
              ++v47;
            }

            while (v47 < v42);
            v41 = a6[5];
          }

          if (v41)
          {
            if (v27 > v26)
            {
              return result;
            }

            v48 = v51;
            v49 = v51;
            if (((4 - v41) & 2) != 0)
            {
              a8[1] = v51;
              *a8 = v49;
              v28[1] = v49;
              *v28 = v49;
              v29[1] = v49;
              *v29 = v49;
              result[1] = v49;
              *result = v49;
              if ((4 - v41))
              {
                a8[2] = v49;
                v28[2] = v49;
                v29[2] = v49;
                result[2] = v49;
              }
            }

            else
            {
              *a8 = v51;
              *v28 = v49;
              *v29 = v49;
              *result = v48;
            }
          }
        }

        a8 = (v32 + a10);
        v25 = a6[6];
        if (v24++ >= v25)
        {
          return result;
        }
      }

      v28 = a9;
LABEL_29:
      v29 = a9;
LABEL_30:
      result = a9;
      goto LABEL_32;
    }
  }

  return result;
}

_DWORD *ExtractPlane_B44<unsigned int,(StreamType)0>(_DWORD *result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, char *a8, char *a9, uint64_t a10)
{
  if (result)
  {
    v15 = result;
    v16 = *(a5 + 8) >= a2 ? a2 : *(a5 + 8);
    result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v49, a3);
    v18 = a3[1];
    if (v18)
    {
      v17.i64[0] = *(a5 + 24);
      v19 = (v17.i32[1] * *(a7 + 60));
      v20 = *(*(v18 + 40) + 8 * *(a5 + 60));
      if (*(v20 + 12) - 1 < v19)
      {
        v19 = *(v20 + 12) - 1;
      }

      if (*(v18 + 104) == 1)
      {
        v21 = (*(v20 + 8 * v17.u32[0] + 24) + 8 * v19);
      }

      else
      {
        v23 = (v19 * *(v18 + 108)) >> *(v18 + 112);
        if (v23 >= *(v20 + 20) - 1)
        {
          LODWORD(v23) = *(v20 + 20) - 1;
        }

        v21 = (*(v20 + 8 * v17.u32[0] + 24) + 8 * v23);
      }

      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    v24 = a6[2];
    v25 = a6[6];
    if (v24 <= v25)
    {
      v26 = v15 + v16;
      v27 = v15 + v22;
      while (1)
      {
        v28 = &a8[a10];
        v29 = &a8[a10 + a10];
        result = (v29 + a10);
        if (!a9)
        {
          v32 = (v29 + a10);
          goto LABEL_32;
        }

        if (v24 == a6[2])
        {
          v30 = a6[3] + 1;
          v31 = a8;
          a8 += a10;
          v28 = v29;
          v29 = (v29 + a10);
          do
          {
            v32 = v29;
            v29 = v28;
            v28 = a8;
            a8 = v31;
            v31 = a9;
            --v30;
          }

          while (v30);
        }

        else
        {
          v32 = (v29 + a10);
        }

        if (v24 == v25)
        {
          v33 = a6[7];
          if (v33 == 1)
          {
            goto LABEL_30;
          }

          if (v33 == 2)
          {
            goto LABEL_29;
          }

          if (v33 == 3)
          {
            break;
          }
        }

        result = v32;
LABEL_32:
        v34 = *a6;
        v35 = a6[1];
        if (!v35)
        {
          v40 = a6[4];
          goto LABEL_47;
        }

        if (v27 > v26)
        {
          return result;
        }

        v36 = v49;
        if (a6[4] == v34)
        {
          v37 = 4 - a6[5];
        }

        else
        {
          v37 = 4;
        }

        if ((v35 & 2) != 0)
        {
          v37 -= 2;
        }

        v38 = v37 - (v35 & 1);
        if (v38 <= 1)
        {
          v39 = 0;
        }

        else
        {
          *v17.f32 = vdup_n_s32(v49);
          *a8 = v17.i64[0];
          *v28 = v17.i64[0];
          *v29 = v17.i64[0];
          *result = v17.i64[0];
          v38 -= 2;
          v39 = 8;
        }

        if (v38 >= 1)
        {
          *&a8[v39] = v36;
          *(v28 + v39) = v36;
          *(v29 + v39) = v36;
          *(result + v39) = v36;
          v39 |= 4uLL;
        }

        v40 = a6[4];
        if (v40 != v34)
        {
          a8 += v39;
          v28 = (v28 + v39);
          v29 = (v29 + v39);
          result = (result + v39);
          ++v34;
LABEL_47:
          v41 = a6[5];
          v42 = v40 - (v41 != 0);
          if (v41)
          {
            v43 = v40 == 0;
          }

          else
          {
            v43 = 0;
          }

          if (!v43 && v34 <= v42 && v27 <= v26)
          {
            v17 = vld1q_dup_f32(&v49);
            v46 = v34 - 1;
            do
            {
              *a8 = v17;
              a8 += 16;
              *v28 = v17;
              v28 += 4;
              *v29 = v17;
              v29 += 4;
              *result = v17;
              result += 4;
              ++v46;
            }

            while (v46 < v42);
            v41 = a6[5];
          }

          if (v41)
          {
            if (v27 > v26)
            {
              return result;
            }

            v47 = v49;
            if (((4 - v41) & 2) != 0)
            {
              v17.i32[0] = v49;
              *v17.f32 = vdup_lane_s32(*v17.f32, 0);
              *a8 = v17.i64[0];
              *v28 = v17.i64[0];
              *v29 = v17.i64[0];
              *result = v17.i64[0];
              if ((4 - v41))
              {
                *(a8 + 2) = v47;
                v28[2] = v47;
                v29[2] = v47;
                result[2] = v47;
              }
            }

            else
            {
              *a8 = v49;
              *v28 = v47;
              *v29 = v47;
              *result = v47;
            }
          }
        }

        a8 = v32 + a10;
        v25 = a6[6];
        if (v24++ >= v25)
        {
          return result;
        }
      }

      v28 = a9;
LABEL_29:
      v29 = a9;
LABEL_30:
      result = a9;
      goto LABEL_32;
    }
  }

  return result;
}

char *ExtractPlane_B44<unsigned short,(StreamType)1>(char *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, char *a8, char *a9, uint64_t a10)
{
  if (result)
  {
    if (*(a5 + 8) >= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = *(a5 + 8);
    }

    v11 = *(a5 + 24);
    v12 = *(a3 + 8);
    v13 = *(*&v12[5] + 8 * *(a5 + 60));
    v14 = v13[2];
    v15 = vmin_u32(vmls_s32(v14, v12[6], v11), v12[6]).u32[0];
    v16 = (v15 + 3) >> 2;
    if (v15 > 0xFFFFFFFC)
    {
      v16 = 0x40000000;
    }

    if (v10 >= 0xE)
    {
      v17 = (v11.i32[1] * *(a7 + 60));
      if (v13[1].u32[1] - 1 < v17)
      {
        v17 = v13[1].u32[1] - 1;
      }

      v18 = &v13[v11.u32[0]];
      if (v12[13].i32[0] == 1)
      {
        v19 = (*&v18[3] + 8 * v17);
      }

      else
      {
        v20 = (v17 * v12[13].u32[1]) >> v12[14].i32[0];
        if (v20 >= v14.i32[1] - 1)
        {
          LODWORD(v20) = v14.i32[1] - 1;
        }

        v19 = (*&v18[3] + 8 * v20);
      }

      v21 = a6[2];
      v22 = a6[6];
      if (v21 <= v22)
      {
        v23 = &result[v10 - 14];
        v24 = 14 * v16;
        v25 = &result[14 * *a6 + *v19 + v24 * v21];
        v26.i64[0] = 0xE0E0E0E0E0E0E0E0;
        v26.i64[1] = 0xE0E0E0E0E0E0E0E0;
        while (1)
        {
          v27 = &a8[a10];
          v28 = &a8[a10 + a10];
          v29 = &v28[a10];
          if (!a9)
          {
            result = &v28[a10];
            goto LABEL_32;
          }

          if (v21 == a6[2])
          {
            v30 = a6[3] + 1;
            v31 = a8;
            a8 += a10;
            v27 = v28;
            v28 += a10;
            do
            {
              result = v28;
              v28 = v27;
              v27 = a8;
              a8 = v31;
              v31 = a9;
              --v30;
            }

            while (v30);
          }

          else
          {
            result = &v28[a10];
          }

          if (v21 == v22)
          {
            v32 = a6[7];
            if (v32 == 1)
            {
              goto LABEL_30;
            }

            if (v32 == 2)
            {
              goto LABEL_29;
            }

            if (v32 == 3)
            {
              break;
            }
          }

          v29 = result;
LABEL_32:
          v33 = *a6;
          v34 = a6[1];
          if (!v34)
          {
            v51 = a6[4];
            v52 = v25;
            goto LABEL_51;
          }

          if (v25 > v23)
          {
            return result;
          }

          v35.i64[0] = *(v25 + 2);
          v35.i64[1] = *(v25 + 6);
          v36 = vqtbl1q_s8(v35, xmmword_296B6EDE0);
          v37 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v36, 8uLL), xmmword_296B6EE00), vshlq_u8(v36, xmmword_296B6EDF0)), xmmword_296B6EE10);
          v38 = vaddq_s8(v37, v26);
          v37.i8[1] = 0;
          v39 = vqtbl1q_s8(v38, xmmword_296B6EE20);
          v40 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v39, xmmword_296B6EE30), v39), vqtbl1q_s8(v39, xmmword_296B6EE40));
          v41 = vdupq_lane_s16(*v37.i8, 0);
          v42 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v40.i8), xmmword_296B6EE50), *v40.i8), v41);
          v43 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v40), xmmword_296B6EE50), v40), v41);
          v44 = vdupq_n_s16(bswap32(*v25) >> 16);
          v45 = vaddq_s16(v43, v44);
          v46 = vaddq_s16(v42, v44);
          v47 = veorq_s8((*&v45 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v45));
          v48 = veorq_s8((*&v46 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v46));
          if (a4)
          {
            v48.i64[0] = (*(a4 + ((v48.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v48.u16[2]) << 32) | (*(a4 + 2 * v48.u16[1]) << 16) | *(a4 + 2 * v48.u16[0]);
            v48.i64[1] = (*(a4 + ((v48.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v48.u16[6]) << 32) | (*(a4 + 2 * v48.u16[5]) << 16) | *(a4 + 2 * v48.u16[4]);
            v47.i64[0] = (*(a4 + ((v47.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v47.u16[2]) << 32) | (*(a4 + 2 * v47.u16[1]) << 16) | *(a4 + 2 * v47.u16[0]);
            v47.i64[1] = (*(a4 + ((v47.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v47.u16[6]) << 32) | (*(a4 + 2 * v47.u16[5]) << 16) | *(a4 + 2 * v47.u16[4]);
          }

          if (a6[4] == v33)
          {
            v49 = 4 - a6[5];
          }

          else
          {
            v49 = 4;
          }

          if ((v34 & 2) != 0)
          {
            v48 = vrev64q_s32(v48);
            v47 = vrev64q_s32(v47);
            v49 -= 2;
          }

          if (v34)
          {
            v47 = vqtbl1q_s8(v47, xmmword_296B6EF80);
            v48 = vqtbl1q_s8(v48, xmmword_296B6EF80);
            --v49;
          }

          if (v49 <= 1)
          {
            v50 = 0;
          }

          else
          {
            *a8 = v48.i32[0];
            *v27 = v48.i32[2];
            *v28 = v47.i32[0];
            *(v29 + 1) = v47.i16[5];
            v48 = vrev64q_s32(v48);
            *v29 = v47.i16[4];
            v47 = vrev64q_s32(v47);
            v49 -= 2;
            v50 = 4;
          }

          if (v49 >= 1)
          {
            *&a8[v50] = v48.i16[0];
            *&v27[v50] = v48.i16[4];
            *&v28[v50] = v47.i16[0];
            *&v29[v50] = v47.i16[4];
            v50 |= 2uLL;
          }

          v51 = a6[4];
          if (v51 != v33)
          {
            v52 = v25 + 14;
            a8 += v50;
            v27 += v50;
            v28 += v50;
            v29 += v50;
            ++v33;
LABEL_51:
            v53 = a6[5];
            if (!v51 && v53)
            {
              goto LABEL_63;
            }

            v54 = v51 - (v53 != 0);
            if (v33 <= v54 && v52 <= v23)
            {
              do
              {
                v56.i64[0] = *(v52 + 2);
                v56.i64[1] = *(v52 + 6);
                v57 = vqtbl1q_s8(v56, xmmword_296B6EDE0);
                v58 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v57, 8uLL), xmmword_296B6EE00), vshlq_u8(v57, xmmword_296B6EDF0)), xmmword_296B6EE10);
                v59 = vaddq_s8(v58, v26);
                v58.i8[1] = 0;
                v60 = vqtbl1q_s8(v59, xmmword_296B6EE20);
                v61 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v60, xmmword_296B6EE30), v60), vqtbl1q_s8(v60, xmmword_296B6EE40));
                v62 = vdupq_lane_s16(*v58.i8, 0);
                v63 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v61.i8), xmmword_296B6EE50), *v61.i8), v62);
                v64 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v61), xmmword_296B6EE50), v61), v62);
                v65 = vdupq_n_s16(bswap32(*v52) >> 16);
                v66 = vaddq_s16(v64, v65);
                v67 = vaddq_s16(v63, v65);
                v68 = veorq_s8((*&v66 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v66));
                v69 = veorq_s8((*&v67 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v67));
                if (a4)
                {
                  v69.i64[0] = (*(a4 + ((v69.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v69.u16[2]) << 32) | (*(a4 + 2 * v69.u16[1]) << 16) | *(a4 + 2 * v69.u16[0]);
                  v69.i64[1] = (*(a4 + ((v69.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v69.u16[6]) << 32) | (*(a4 + 2 * v69.u16[5]) << 16) | *(a4 + 2 * v69.u16[4]);
                  v68.i64[0] = (*(a4 + ((v68.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v68.u16[2]) << 32) | (*(a4 + 2 * v68.u16[1]) << 16) | *(a4 + 2 * v68.u16[0]);
                  v68.i64[1] = (*(a4 + ((v68.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v68.u16[6]) << 32) | (*(a4 + 2 * v68.u16[5]) << 16) | *(a4 + 2 * v68.u16[4]);
                }

                v52 += 14;
                *a8 = v69.i64[0];
                a8 += 8;
                *v27 = vextq_s8(v69, v69, 8uLL).u64[0];
                v27 += 8;
                *v28 = v68.i64[0];
                v28 += 8;
                *v29 = vextq_s8(v68, v68, 8uLL).u64[0];
                v29 += 8;
                if (v33 >= v54)
                {
                  break;
                }

                ++v33;
              }

              while (v52 <= v23);
              v53 = a6[5];
            }

            if (v53)
            {
LABEL_63:
              if (v52 > v23)
              {
                return result;
              }

              v70.i64[0] = *(v52 + 2);
              v70.i64[1] = *(v52 + 6);
              v71 = vqtbl1q_s8(v70, xmmword_296B6EDE0);
              v72 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v71, 8uLL), xmmword_296B6EE00), vshlq_u8(v71, xmmword_296B6EDF0)), xmmword_296B6EE10);
              v73 = vaddq_s8(v72, v26);
              v72.i8[1] = 0;
              v74 = vqtbl1q_s8(v73, xmmword_296B6EE20);
              v75 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v74, xmmword_296B6EE30), v74), vqtbl1q_s8(v74, xmmword_296B6EE40));
              v76 = vdupq_lane_s16(*v72.i8, 0);
              v77 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v75.i8), xmmword_296B6EE50), *v75.i8), v76);
              v78 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v75), xmmword_296B6EE50), v75), v76);
              v79 = vdupq_n_s16(bswap32(*v52) >> 16);
              v80 = vaddq_s16(v78, v79);
              v81 = vaddq_s16(v77, v79);
              v82 = veorq_s8((*&v80 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v80));
              v83 = veorq_s8((*&v81 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v81));
              if (a4)
              {
                v83.i64[0] = (*(a4 + ((v83.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v83.u16[2]) << 32) | (*(a4 + 2 * v83.u16[1]) << 16) | *(a4 + 2 * v83.u16[0]);
                v83.i64[1] = (*(a4 + ((v83.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v83.u16[6]) << 32) | (*(a4 + 2 * v83.u16[5]) << 16) | *(a4 + 2 * v83.u16[4]);
                v82.i64[0] = (*(a4 + ((v82.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v82.u16[2]) << 32) | (*(a4 + 2 * v82.u16[1]) << 16) | *(a4 + 2 * v82.u16[0]);
                v82.i64[1] = (*(a4 + ((v82.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a4 + 2 * v82.u16[6]) << 32) | (*(a4 + 2 * v82.u16[5]) << 16) | *(a4 + 2 * v82.u16[4]);
              }

              if (((4 - v53) & 2) != 0)
              {
                *a8 = v83.i32[0];
                *v27 = v83.i32[2];
                *v28 = v82.i32[0];
                *v29 = v82.i32[2];
                if ((4 - v53))
                {
                  *(a8 + 2) = v83.i16[2];
                  *(v27 + 2) = v83.i16[6];
                  *(v28 + 2) = v82.i16[2];
                  *(v29 + 2) = v82.i16[6];
                }
              }

              else
              {
                *a8 = v83.i16[0];
                *v27 = v83.i16[4];
                *v28 = v82.i16[0];
                *v29 = v82.i16[4];
              }
            }
          }

          a8 = &result[a10];
          v25 += v24;
          v22 = a6[6];
          if (v21++ >= v22)
          {
            return result;
          }
        }

        v27 = a9;
LABEL_29:
        v28 = a9;
LABEL_30:
        v29 = a9;
        goto LABEL_32;
      }
    }
  }

  return result;
}

uint64_t ExtractPlane_B44<unsigned int,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5, unsigned int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result)
  {
    v10 = *&a5[1] >= a2 ? a2 : *&a5[1];
    v11 = a5[3];
    v12 = *(a3 + 8);
    v13 = *(*&v12[5] + 8 * a5[7].u32[1]);
    v14 = v13[2];
    v15 = vmin_u32(vmls_s32(v14, v12[6], v11), v12[6]).u32[0];
    v16 = 12 * v15 + 16;
    v55 = v10 >= v16;
    v17 = v10 - v16;
    if (v55)
    {
      v18 = (v11.i32[1] * *(a7 + 60));
      if (v13[1].u32[1] - 1 < v18)
      {
        v18 = v13[1].u32[1] - 1;
      }

      v19 = &v13[v11.u32[0]];
      if (v12[13].i32[0] == 1)
      {
        v20 = (*&v19[3] + 8 * v18);
      }

      else
      {
        v21 = (v18 * v12[13].u32[1]) >> v12[14].i32[0];
        if (v21 >= v14.i32[1] - 1)
        {
          LODWORD(v21) = v14.i32[1] - 1;
        }

        v20 = (*&v19[3] + 8 * v21);
      }

      v22 = a6[2];
      v23 = a6[6];
      if (v22 <= v23)
      {
        v24 = 4 * v15;
        v25 = v17 + result;
        v26 = 16 * v15;
        v27 = (*v20 + result + 16 * *a6 + v26 * v22);
        while (1)
        {
          v28 = a8 + a10;
          result = a8 + a10 + a10;
          v29 = result + a10;
          if (!a9)
          {
            v32 = result + a10;
            goto LABEL_31;
          }

          if (v22 == a6[2])
          {
            v30 = a6[3] + 1;
            v31 = a8;
            a8 += a10;
            v28 = result;
            result += a10;
            do
            {
              v32 = result;
              result = v28;
              v28 = a8;
              a8 = v31;
              v31 = a9;
              --v30;
            }

            while (v30);
          }

          else
          {
            v32 = result + a10;
          }

          if (v22 == v23)
          {
            v33 = a6[7];
            if (v33 == 1)
            {
              goto LABEL_29;
            }

            if (v33 == 2)
            {
              goto LABEL_28;
            }

            if (v33 == 3)
            {
              break;
            }
          }

          v29 = v32;
LABEL_31:
          v34 = *a6;
          v35 = a6[1];
          if (v35)
          {
            if (v27 > v25)
            {
              return result;
            }

            v36 = *v27;
            v37 = *(v27 + v24);
            v38 = (v27 + v24 + v24);
            v39 = *(v38 + v24);
            v40 = *v38;
            if (a6[4] == v34)
            {
              v41 = 4 - a6[5];
            }

            else
            {
              v41 = 4;
            }

            if ((v35 & 2) != 0)
            {
              v36 = vextq_s8(v36, v36, 8uLL);
              v37 = vextq_s8(v37, v37, 8uLL);
              v40 = vextq_s8(v40, v40, 8uLL);
              v41 -= 2;
              v39 = vextq_s8(v39, v39, 8uLL);
            }

            if (v35)
            {
              v36 = vextq_s8(v36, v36, 4uLL);
              v37 = vextq_s8(v37, v37, 4uLL);
              v40 = vextq_s8(v40, v40, 4uLL);
              --v41;
              v39 = vextq_s8(v39, v39, 4uLL);
            }

            if (v41 <= 1)
            {
              v42 = 0;
            }

            else
            {
              *a8 = v36.i64[0];
              *v28 = v37.i64[0];
              v36.i32[0] = vextq_s8(v36, v36, 8uLL).u32[0];
              v37.i32[0] = vextq_s8(v37, v37, 8uLL).u32[0];
              *result = v40.i64[0];
              v40.i32[0] = vextq_s8(v40, v40, 8uLL).u32[0];
              *v29 = v39.i64[0];
              v39.i32[0] = vextq_s8(v39, v39, 8uLL).u32[0];
              v41 -= 2;
              v42 = 8;
            }

            if (v41 >= 1)
            {
              *(v42 + a8) = v36.i32[0];
              *(v42 + v28) = v37.i32[0];
              *(v42 + result) = v40.i32[0];
              *(v42 + v29) = v39.i32[0];
              v42 |= 4uLL;
            }

            v43 = a6[4];
            if (v43 == v34)
            {
              goto LABEL_83;
            }

            v44 = v27 + 1;
            a8 += v42;
            v28 += v42;
            result += v42;
            v29 += v42;
            ++v34;
          }

          else
          {
            v43 = a6[4];
            v44 = v27;
          }

          v45 = a6[5];
          if (!v43 && v45)
          {
            goto LABEL_58;
          }

          v46 = v43 - (v45 != 0);
          if (v34 <= v46 && v44 <= v25)
          {
            do
            {
              v48 = *(v44 + v24);
              v49 = (v44 + v24 + v24);
              v50 = *v49;
              v51 = *(v49 + v24);
              *a8 = *v44;
              a8 += 16;
              *v28 = v48;
              v28 += 16;
              ++v44;
              *result = v50;
              result += 16;
              *v29 = v51;
              v29 += 16;
              if (v34 >= v46)
              {
                break;
              }

              ++v34;
            }

            while (v44 <= v25);
            v45 = a6[5];
          }

          if (v45)
          {
LABEL_58:
            v52 = 4 - a6[7];
            if (v22 != a6[6])
            {
              v52 = 4;
            }

            if (v44 > v25)
            {
              return result;
            }

            v53 = 4 - v45;
            if (v52 <= 3)
            {
              v54 = 0;
            }

            else
            {
              v54 = v24;
            }

            v55 = v52 >= 2;
            v56 = v52 == 2;
            if (v52 == 2)
            {
              v57 = v44 + v24;
            }

            else
            {
              v57 = v44 + v24 + v24;
            }

            v58 = (v44 + v24);
            if (v56)
            {
              v54 = 0;
            }

            if (v55)
            {
              v59 = v57;
            }

            else
            {
              v59 = v44;
            }

            if (v55)
            {
              v60 = v54;
            }

            else
            {
              v58 = v44;
              v60 = 0;
            }

            v61 = (v59 + v60);
            *&v62 = 0;
            DWORD2(v62) = 0;
            *&v63 = 0;
            DWORD2(v63) = 0;
            *&v64 = 0;
            DWORD2(v64) = 0;
            *&v65 = 0;
            DWORD2(v65) = 0;
            if ((4 - v45))
            {
              v66 = 3 - v45;
              LODWORD(v65) = *(v44 + v66);
              LODWORD(v62) = *(v58 + v66);
              LODWORD(v63) = *(v59 + v66);
              LODWORD(v64) = *(v61 + v66);
              if ((v53 & 2) == 0)
              {
                goto LABEL_77;
              }
            }

            else if (((4 - v45) & 2) == 0)
            {
LABEL_77:
              if ((v53 & 2) != 0)
              {
                goto LABEL_81;
              }

LABEL_78:
              *a8 = v65;
              *v28 = v62;
              *result = v63;
              *v29 = v64;
              goto LABEL_83;
            }

            *&v67 = *v44;
            *(&v67 + 1) = v65;
            *&v68 = *v58;
            *(&v68 + 1) = v62;
            *&v69 = *v59;
            *(&v69 + 1) = v63;
            *&v70 = *v61;
            *(&v70 + 1) = v64;
            v62 = v68;
            v63 = v69;
            v64 = v70;
            v65 = v67;
            if ((v53 & 2) != 0)
            {
LABEL_81:
              *a8 = v65;
              *v28 = v62;
              *result = v63;
              *v29 = v64;
              if (v53)
              {
                *(a8 + 8) = DWORD2(v65);
                *(v28 + 8) = DWORD2(v62);
                *(result + 8) = DWORD2(v63);
                *(v29 + 8) = DWORD2(v64);
              }

              goto LABEL_83;
            }

            goto LABEL_78;
          }

LABEL_83:
          a8 = v32 + a10;
          v27 = (v27 + v26);
          v23 = a6[6];
          v55 = v22++ >= v23;
          if (v55)
          {
            return result;
          }
        }

        v28 = a9;
LABEL_28:
        result = a9;
LABEL_29:
        v29 = a9;
        goto LABEL_31;
      }
    }
  }

  return result;
}

void TileDecoder_B44A::Interleave(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD **a4, unsigned int a5, unsigned int a6)
{
  v8 = a4[1];
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  TileDecoder::GetBlockChannelTileInfo(a1, a4, a5, a6, 4u, 4u, &v15);
  if (DWORD2(v15) <= DWORD2(v16) && v15 <= v16)
  {
    v9 = *(*(a1 + 24) + 208);
    CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(*a4, v9, v8);
    AXRChunkHeader::GetCompressedDataSize(*a4, v9, a4[1]);
    v11 = *(a1 + 64);
    v12 = v11[3];
    v13 = *(v11[1] + 72);
    if (*(a1 + 72) == 2)
    {
      (*(&TileDecoder_B44A::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable[2] + ((8 * (v13 != 1)) | (32 * (v12 != 0)))))(CompressedDataPtr);
    }

    else
    {
      v14 = v11[7];
      if (v14)
      {
        v14 = 16;
      }

      (TileDecoder_B44A::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable[((v13 != 1) | (4 * (v12 != 0)) | (8 * (v11[5] != 0)) | v14) + 2])(CompressedDataPtr);
    }
  }
}

uint64_t AXRChunkHeader::GetCompressedDataSize(_DWORD *a1, int a2, unint64_t a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = a1[4];
        if (v3 <= a3)
        {
          v4 = a3 >= 0x14;
          v5 = a3 - 20;
LABEL_12:
          if (!v4)
          {
            v5 = 0;
          }

          if (v3 >= v5)
          {
            return v5;
          }

          else
          {
            return v3;
          }
        }
      }
    }

    else
    {
      v3 = a1[1];
      if (v3 <= a3)
      {
        v4 = a3 >= 8;
        v5 = a3 - 8;
        goto LABEL_12;
      }
    }

    return 0;
  }

  if (a2 == 2)
  {
    if (a3 < 0x14)
    {
      return 0;
    }

    v6 = a1[1] & ~(a1[1] >> 31);
    v7 = a1[2] & ~(a1[2] >> 31);
    v8 = a3 - 20;
  }

  else
  {
    if (a2 != 3 || a3 < 0x20)
    {
      return 0;
    }

    v6 = a1[4] & ~(a1[4] >> 31);
    v7 = a1[5] & ~(a1[5] >> 31);
    v8 = a3 - 32;
  }

  v4 = v8 >= v6;
  v10 = v8 - v6;
  if (!v4)
  {
    v10 = 0;
  }

  if (v7 >= v10)
  {
    return v10;
  }

  else
  {
    return v7;
  }
}

__int16 *ExtractInterleaved2_B44A<unsigned short,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9, char *a10, uint64_t a11, __int16 *a12, uint64_t a13, uint64_t a14)
{
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v47, a3);
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v46, a4);
  v19 = a8[2];
  v20 = a8[6];
  if (v19 <= v20)
  {
    v21 = &a10[a11];
    v22 = a12 + a13;
    v48.val[1] = vdupq_n_s16(v46);
    v48.val[0] = vdupq_n_s16(v47);
    v23 = vqtbl2q_s8(v48, xmmword_296B6EDD0);
    LOWORD(v24) = v47;
    WORD1(v24) = v46;
    WORD2(v24) = v47;
    HIWORD(v24) = v46;
    v25 = a10;
    while (1)
    {
      v26 = &v25[a14];
      v27 = &v25[a14 + a14];
      v28 = &v27[a14];
      if (!a12)
      {
        result = &v27[a14];
        goto LABEL_18;
      }

      if (v19 == a8[2])
      {
        v29 = a8[3] + 1;
        v30 = v25;
        v25 += a14;
        v26 = v27;
        v27 += a14;
        do
        {
          result = v27;
          v27 = v26;
          v26 = v25;
          v25 = v30;
          v30 = a12;
          --v29;
        }

        while (v29);
      }

      else
      {
        result = &v27[a14];
      }

      if (v19 == v20)
      {
        v31 = a8[7];
        if (v31 == 1)
        {
          goto LABEL_16;
        }

        if (v31 == 2)
        {
          goto LABEL_15;
        }

        if (v31 == 3)
        {
          break;
        }
      }

      v28 = result;
LABEL_18:
      v32 = *a8;
      v33 = a8[1];
      v35 = a8[4];
      v34 = a8[5];
      if (!v33)
      {
        goto LABEL_32;
      }

      v17.i32[0] = 0;
      v36 = 4 - v34;
      if (v35 != v32)
      {
        v36 = 4;
      }

      v18.i32[0] = a8[1] & 2;
      v17 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v18, v17), 0), v23, v23);
      v18 = v17;
      v37 = v17;
      v38 = v17;
      if ((v33 & 2) != 0)
      {
        v36 -= 2;
      }

      if (v33)
      {
        v38 = vextq_s8(v17, v17, 4uLL);
        v37 = v38;
        v18 = v38;
        --v36;
        v17 = v38;
      }

      if (v36 <= 1)
      {
        v39 = 0;
      }

      else
      {
        *v25 = v38.i64[0];
        *v26 = v37.i64[0];
        v38.i32[0] = vextq_s8(v38, v38, 8uLL).u32[0];
        v37.i32[0] = vextq_s8(v37, v37, 8uLL).u32[0];
        *v27 = v18.i64[0];
        v18 = vextq_s8(v18, v18, 8uLL);
        *v28 = v17.i64[0];
        v17 = vextq_s8(v17, v17, 8uLL);
        v36 -= 2;
        v39 = 8;
      }

      if (v36 >= 1)
      {
        *&v25[v39] = v38.i32[0];
        *&v26[v39] = v37.i32[0];
        *&v27[v39] = v18.i32[0];
        v40 = (v28 + v39);
        *(v28 + v39 + 2) = v17.i16[1];
        v39 |= 4uLL;
        *v40 = v17.i16[0];
      }

      v35 = a8[4];
      if (v35 != v32)
      {
        v25 += v39;
        v26 += v39;
        v27 += v39;
        v28 = (v28 + v39);
        LODWORD(v34) = a8[5];
        ++v32;
LABEL_32:
        if (v35)
        {
          v41 = 0;
        }

        else
        {
          v41 = v34 != 0;
        }

        if (!v41)
        {
          v42 = v35 - (v34 != 0);
          if (v32 <= v42)
          {
            v43 = v42 - v32 + 1;
            do
            {
              if ((v25 < a10 || v25 >= v21) && (v25 < a12 || v25 >= v22) || (v26 < a10 || v26 >= v21) && (v26 < a12 || v26 >= v22) || (v27 < a10 || v27 >= v21) && (v27 < a12 || v27 >= v22) || (v28 < a10 || v28 >= v21) && (v28 < a12 || v28 >= v22))
              {
                goto LABEL_80;
              }

              *v25 = v23;
              v25 += 16;
              *v26 = v23;
              v26 += 16;
              *v27 = v23;
              v27 += 16;
              *v28 = v23;
              v28 += 8;
              --v43;
            }

            while (v43);
            LODWORD(v34) = a8[5];
          }
        }

        if (v34)
        {
          if ((v25 < a10 || v25 >= v21) && (v25 < a12 || v25 >= v22) || (v26 < a10 || v26 >= v21) && (v26 < a12 || v26 >= v22) || (v27 < a10 || v27 >= v21) && (v27 < a12 || v27 >= v22) || (v28 < a10 || v28 >= v21) && (v28 < a12 || v28 >= v22))
          {
LABEL_80:
            exception = __cxa_allocate_exception(8uLL);
            *exception = -6;
          }

          if (((4 - v34) & 2) != 0)
          {
            *v25 = v24;
            *v26 = v24;
            *v27 = v24;
            *v28 = v24;
            if ((4 - v34))
            {
              *(v25 + 2) = v23.i32[2];
              *(v26 + 2) = v23.i32[2];
              *(v27 + 2) = v23.i32[2];
              *(v28 + 2) = v23.i32[2];
            }
          }

          else
          {
            *v25 = v23.i32[0];
            *v26 = v23.i32[0];
            *v27 = v23.i32[0];
            *v28 = v23.i32[0];
          }
        }
      }

      v25 = result + a14;
      v20 = a8[6];
      if (v19++ >= v20)
      {
        return result;
      }
    }

    v26 = a12;
LABEL_15:
    v27 = a12;
LABEL_16:
    v28 = a12;
    goto LABEL_18;
  }

  return result;
}

int8x16_t *ExtractInterleaved2_B44A<unsigned int,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9, int8x16_t *a10, uint64_t a11, int8x16_t *a12, uint64_t a13, uint64_t a14)
{
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v56, a3);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v55, a4);
  v19 = a8[2];
  v20 = a8[6];
  if (v19 <= v20)
  {
    v21 = a10->u64 + a11;
    v22.i64[0] = __PAIR64__(v55, v56);
    v22.i64[1] = __PAIR64__(v55, v56);
    v23 = a12->u64 + a13;
    v24 = __PAIR64__(v55, v56);
    v25 = a10;
    while (1)
    {
      result = (v25 + a14);
      v26 = (v25 + a14 + a14);
      v27 = (v26 + a14);
      if (!a12)
      {
        v30 = (v26 + a14);
        goto LABEL_18;
      }

      if (v19 == a8[2])
      {
        v28 = a8[3] + 1;
        v29 = v25;
        v25 = (v25 + a14);
        result = v26;
        v26 = (v26 + a14);
        do
        {
          v30 = v26;
          v26 = result;
          result = v25;
          v25 = v29;
          v29 = a12;
          --v28;
        }

        while (v28);
      }

      else
      {
        v30 = (v26 + a14);
      }

      if (v19 == v20)
      {
        v31 = a8[7];
        if (v31 == 1)
        {
          goto LABEL_16;
        }

        if (v31 == 2)
        {
          goto LABEL_15;
        }

        if (v31 == 3)
        {
          break;
        }
      }

      v27 = v30;
LABEL_18:
      v32 = *a8;
      v33 = a8[1];
      v35 = a8[4];
      v34 = a8[5];
      if (v33)
      {
        v17.i32[0] = 0;
        v36 = 4 - v34;
        if (v35 != v32)
        {
          v36 = 4;
        }

        v18.i32[0] = a8[1] & 2;
        v17 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v18, v17), 0), v22, v22);
        v37 = v17.i64[0];
        v38 = v17;
        v39 = v17.i64[0];
        v40 = v17;
        v41 = v17;
        v18 = v17;
        v42 = v17;
        if ((v33 & 2) != 0)
        {
          v36 -= 2;
        }

        if (v33)
        {
          v43 = vextq_s8(v17, v17, 8uLL).u64[0];
          v40 = vextq_s8(v17, v17, 8uLL);
          v38 = v40;
          v17 = v40;
          v44 = vextq_s8(v42, v18, 8uLL);
          --v36;
          v18 = vextq_s8(v18, v42, 8uLL);
          v39 = v43;
          v37 = v43;
          v41 = v40;
          v42 = v44;
        }

        if (v36 <= 1)
        {
          v45 = 0;
        }

        else
        {
          *v25 = v40;
          *result = v38;
          v36 -= 2;
          v40.i64[0] = v39;
          v38.i64[0] = v37;
          *v26 = v17;
          v17 = v41;
          *v27 = v18;
          v18 = v42;
          v45 = 16;
        }

        if (v36 >= 1)
        {
          *(v25->i64 + v45) = v40.i64[0];
          *(result->i64 + v45) = v38.i64[0];
          *(v26->i64 + v45) = v17.i64[0];
          *(v27->i64 + v45) = v18.i64[0];
          v45 |= 8uLL;
        }

        v35 = a8[4];
        if (v35 == v32)
        {
          goto LABEL_78;
        }

        v25 = (v25 + v45);
        result = (result + v45);
        v26 = (v26 + v45);
        v27 = (v27 + v45);
        LODWORD(v34) = a8[5];
        ++v32;
      }

      if (v35)
      {
        v46 = 0;
      }

      else
      {
        v46 = v34 != 0;
      }

      if (!v46)
      {
        v47 = v35 - (v34 != 0);
        if (v32 <= v47)
        {
          v48 = v47 - v32 + 1;
          do
          {
            if ((v25 < a10 || v25 >= v21) && (v25 < a12 || v25 >= v23) || (result < a10 || result >= v21) && (result < a12 || result >= v23) || (v26 < a10 || v26 >= v21) && (v26 < a12 || v26 >= v23) || (v27 < a10 || v27 >= v21) && (v27 < a12 || v27 >= v23))
            {
              goto LABEL_81;
            }

            v49 = v25 + 2;
            *v25 = v22;
            v25[1] = v22;
            v50 = result + 2;
            *result = v22;
            result[1] = v22;
            v51 = v26 + 2;
            v52 = v27 + 2;
            *v26 = v22;
            v26[1] = v22;
            *v27 = v22;
            v27[1] = v22;
            v27 += 2;
            v26 += 2;
            result += 2;
            v25 += 2;
            --v48;
          }

          while (v48);
          LODWORD(v34) = a8[5];
          if (!v34)
          {
            goto LABEL_78;
          }

LABEL_58:
          if ((v49 < a10 || v49 >= v21) && (v49 < a12 || v49 >= v23) || (v50 < a10 || v50 >= v21) && (v50 < a12 || v50 >= v23) || (v51 < a10 || v51 >= v21) && (v51 < a12 || v51 >= v23) || (v52 < a10 || v52 >= v21) && (v52 < a12 || v52 >= v23))
          {
LABEL_81:
            exception = __cxa_allocate_exception(8uLL);
            *exception = -6;
          }

          if (((4 - v34) & 2) != 0)
          {
            *v49 = v22;
            *v50 = v22;
            *v51 = v22;
            *v52 = v22;
            if ((4 - v34))
            {
              v49[1].i64[0] = v24;
              v50[1].i64[0] = v24;
              v51[1].i64[0] = v24;
              v52[1].i64[0] = v24;
            }
          }

          else
          {
            v49->i64[0] = v24;
            v50->i64[0] = v24;
            v51->i64[0] = v24;
            v52->i64[0] = v24;
          }

          goto LABEL_78;
        }
      }

      v49 = v25;
      v50 = result;
      v51 = v26;
      v52 = v27;
      if (v34)
      {
        goto LABEL_58;
      }

LABEL_78:
      v25 = (v30 + a14);
      v20 = a8[6];
      if (v19++ >= v20)
      {
        return result;
      }
    }

    result = a12;
LABEL_15:
    v26 = a12;
LABEL_16:
    v27 = a12;
    goto LABEL_18;
  }

  return result;
}

uint64_t ExtractInterleaved2_B44A<unsigned short,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v88 = 0;
  v89 = 0;
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v87, a4);
  v16 = a8[2];
  v17 = a8[6];
  if (v16 <= v17)
  {
    v18 = a8;
    v19 = a10 + a11;
    v20 = a12 + a13;
    v73 = *(a9 + 60);
    v21 = a10;
    v79 = v18;
    while (1)
    {
      v22 = *(a3 + 8);
      if (v22)
      {
        v23 = *(a7 + 24);
        v24 = *(*(v22 + 40) + 8 * *(a7 + 60));
        v25 = *(v24 + 12) - 1;
        if (v25 >= (HIDWORD(v23) * v73) + 4 * v16)
        {
          v25 = (HIDWORD(*(a7 + 24)) * v73) + 4 * v16;
        }

        v26 = v24 + 8 * v23;
        if (*(v22 + 104) == 1)
        {
          v27 = (*(v26 + 24) + 8 * v25);
        }

        else
        {
          v29 = (v25 * *(v22 + 108)) >> *(v22 + 112);
          v30 = *(v24 + 20) - 1;
          if (v29 >= v30)
          {
            LODWORD(v29) = v30;
          }

          v27 = (*(v26 + 24) + 8 * v29);
        }

        v31 = *v27;
        v32 = HIDWORD(*v27);
        v33 = a1 + *v27;
        v34 = a2 - *v27;
        if (a2 >= *v27)
        {
          v28 = (a1 + v31);
        }

        else
        {
          v28 = 0;
        }

        if (v34 < HIDWORD(v31))
        {
          v32 = a2 - v31;
        }

        v35 = a2 >= v31;
        v36 = v33 + v32;
        if (!v35)
        {
          v36 = 0;
        }

        v88 = v28;
        v89 = v36;
      }

      else
      {
        v28 = v88;
      }

      v37 = v21 + a14;
      v38 = v21 + a14 + a14;
      v39 = v38 + a14;
      if (!v28)
      {
        goto LABEL_93;
      }

      v78 = v16;
      if (!a12)
      {
        break;
      }

      if (v16 == v18[2])
      {
        v40 = v18[3] + 1;
        v41 = v21;
        v21 += a14;
        v37 = v38;
        v38 += a14;
        do
        {
          v39 = v38;
          v38 = v37;
          v37 = v21;
          v21 = v41;
          v41 = a12;
          --v40;
        }

        while (v40);
      }

      if (v16 != v17)
      {
        break;
      }

      v42 = v18[7];
      if (v42 != 1)
      {
        if (v42 != 2)
        {
          if (v42 != 3)
          {
            break;
          }

          v37 = a12;
        }

        v38 = a12;
      }

      v43 = a12;
LABEL_33:
      v44 = *v18;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v88, v44);
      v18 = v79;
      if (!result)
      {
        return result;
      }

      if (!v79[1])
      {
        v54 = v79[4];
        goto LABEL_50;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v88, a5, &v85);
      v18 = v79;
      v45 = &v87;
      v46 = vld1q_dup_s16(v45);
      v47 = vzip2q_s16(v86, v46);
      v48 = vzip1q_s16(v86, v46);
      v49 = vzip2q_s16(v85, v46);
      v50 = vzip1q_s16(v85, v46);
      if (v79[4] == v44)
      {
        v51 = 4 - v79[5];
      }

      else
      {
        v51 = 4;
      }

      v52 = v79[1];
      if ((v52 & 2) != 0)
      {
        v50 = vextq_s8(v50, v50, 8uLL);
        v49 = vextq_s8(v49, v49, 8uLL);
        v48 = vextq_s8(v48, v48, 8uLL);
        v51 -= 2;
        v47 = vextq_s8(v47, v47, 8uLL);
      }

      v16 = v78;
      if (v52)
      {
        v50 = vextq_s8(v50, v50, 4uLL);
        v49 = vextq_s8(v49, v49, 4uLL);
        v48 = vextq_s8(v48, v48, 4uLL);
        --v51;
        v47 = vextq_s8(v47, v47, 4uLL);
      }

      if (v51 <= 1)
      {
        v53 = 0;
      }

      else
      {
        *v21 = v50.i64[0];
        *v37 = v49.i64[0];
        v50.i32[0] = vextq_s8(v50, v50, 8uLL).u32[0];
        v49.i32[0] = vextq_s8(v49, v49, 8uLL).u32[0];
        *v38 = v48.i64[0];
        v48.i32[0] = vextq_s8(v48, v48, 8uLL).u32[0];
        *v43 = v47.i64[0];
        v47.i32[0] = vextq_s8(v47, v47, 8uLL).u32[0];
        v51 -= 2;
        v53 = 8;
      }

      if (v51 >= 1)
      {
        *(v53 + v21) = v50.i32[0];
        *(v53 + v37) = v49.i32[0];
        *(v53 + v38) = v48.i32[0];
        v55 = (v53 + v43);
        *(v53 + v43 + 2) = v47.i16[1];
        v53 |= 4uLL;
        *v55 = v47.i16[0];
      }

      v54 = v79[4];
      if (v54 != v44)
      {
        v21 += v53;
        v37 += v53;
        v38 += v53;
        v43 += v53;
        ++v44;
LABEL_50:
        v56 = v18[5];
        v57 = v56 != 0;
        if (v54 != 0 || !v57)
        {
          v58 = v54 - v57;
          if (v44 <= v58)
          {
            v59 = v58 - v44 + 1;
            do
            {
              result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v88, a5, &v83);
              v60 = v84;
              v61 = &v87;
              v62 = vld1q_dup_s16(v61);
              if ((v21 < a10 || v21 >= v19) && (v21 < a12 || v21 >= v20) || (v37 < a10 || v37 >= v19) && (v37 < a12 || v37 >= v20) || (v38 < a10 || v38 >= v19) && (v38 < a12 || v38 >= v20) || (v43 < a10 || v43 >= v19) && (v43 < a12 || v43 >= v20))
              {
                goto LABEL_96;
              }

              v63 = vzip2q_s16(v84, v62);
              v64 = vzip2q_s16(v83, v62);
              *v21 = vzip1q_s16(v83, v62);
              v21 += 16;
              *v37 = v64;
              v37 += 16;
              *v38 = vzip1q_s16(v60, v62);
              v38 += 16;
              *v43 = v63;
              v43 += 16;
              --v59;
            }

            while (v59);
            v18 = v79;
            v56 = v79[5];
          }
        }

        if (v56)
        {
          result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v88, a5, &v81);
          v65 = &v87;
          v66 = vld1q_dup_s16(v65);
          if ((v21 < a10 || v21 >= v19) && (v21 < a12 || v21 >= v20) || (v37 < a10 || v37 >= v19) && (v37 < a12 || v37 >= v20) || (v38 < a10 || v38 >= v19) && (v38 < a12 || v38 >= v20) || (v43 < a10 || v43 >= v19) && (v43 < a12 || v43 >= v20))
          {
LABEL_96:
            exception = __cxa_allocate_exception(8uLL);
            *exception = -6;
          }

          v67 = vzip2q_s16(v82, v66);
          v68 = vzip1q_s16(v82, v66);
          v69 = vzip2q_s16(v81, v66);
          v70 = vzip1q_s16(v81, v66);
          v16 = v78;
          v18 = v79;
          v71 = 4 - v79[5];
          if ((v71 & 2) != 0)
          {
            *v21 = v70.i64[0];
            *v37 = v69.i64[0];
            *v38 = v68.i64[0];
            *v43 = v67.i64[0];
            if (v71)
            {
              *(v21 + 8) = v70.i32[2];
              *(v37 + 8) = v69.i32[2];
              *(v38 + 8) = v68.i32[2];
              *(v43 + 8) = v67.i32[2];
            }
          }

          else
          {
            *v21 = v70.i32[0];
            *v37 = v69.i32[0];
            *v38 = v68.i32[0];
            *v43 = v67.i32[0];
          }
        }

        else
        {
          v16 = v78;
        }
      }

LABEL_93:
      v21 = v39 + a14;
      v17 = v18[6];
      v35 = v16++ >= v17;
      if (v35)
      {
        return result;
      }
    }

    v43 = v39;
    goto LABEL_33;
  }

  return result;
}

_DWORD *ExtractInterleaved2_B44A<unsigned int,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, unsigned int *a8, uint64_t a9, int8x16_t *a10, uint64_t a11, int8x16_t *a12, uint64_t a13, uint64_t a14)
{
  v19 = a7[3];
  v20 = *(a3 + 8);
  v21 = v20[6];
  v22 = *(*(*&v20[5] + 8 * a7[7].u32[1]) + 16);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v116, a4);
  v28 = a8[2];
  v29 = a8[6];
  if (v28 <= v29)
  {
    v30 = 4 * vmin_u32(vmls_s32(v22, v21, v19), v21).u32[0];
    v31 = a10->u64 + a11;
    v32 = a12->u64 + a13;
    v33 = *(a9 + 60);
    v34 = vld1q_dup_f32(&v116);
    v35 = a10;
    while (1)
    {
      v36 = *(a3 + 8);
      if (v36)
      {
        v37 = a7[3];
        v38 = (v37.i32[1] * v33) + 4 * v28;
        v39 = *(*(v36 + 40) + 8 * a7[7].u32[1]);
        if (*(v39 + 12) - 1 < v38)
        {
          v38 = *(v39 + 12) - 1;
        }

        if (*(v36 + 104) == 1)
        {
          v40 = (*(v39 + 8 * v37.u32[0] + 24) + 8 * v38);
        }

        else
        {
          v41 = (v38 * *(v36 + 108)) >> *(v36 + 112);
          if (v41 >= *(v39 + 20) - 1)
          {
            LODWORD(v41) = *(v39 + 20) - 1;
          }

          v40 = (*(v39 + 8 * v37.u32[0] + 24) + 8 * v41);
        }

        v42 = *v40;
        if (a2 <= v42)
        {
          v24 = 0;
          v25 = 0;
          v47 = (v35 + 2 * a14 + a14);
          goto LABEL_142;
        }

        v43 = v42;
        if (a2 - v42 >= HIDWORD(v42))
        {
          v44 = HIDWORD(v42);
        }

        else
        {
          v44 = a2 - v42;
        }

        v25 = (v43 + a1);
        v24 = v44 + v43 + a1;
      }

      v45 = (v35 + a14);
      v46 = (v35 + a14 + a14);
      v47 = (v46 + a14);
      if (v25)
      {
        break;
      }

LABEL_142:
      v35 = (v47 + a14);
      result = (v28 + 1);
      v29 = a8[6];
      if (v28++ >= v29)
      {
        return result;
      }
    }

    if (a12)
    {
      if (v28 == a8[2])
      {
        v48 = a8[3] + 1;
        v49 = v35;
        v35 = (v35 + a14);
        v45 = v46;
        v46 = (v46 + a14);
        do
        {
          v47 = v46;
          v46 = v45;
          v45 = v35;
          v35 = v49;
          v49 = a12;
          --v48;
        }

        while (v48);
      }

      if (v28 == v29)
      {
        v50 = a8[7];
        switch(v50)
        {
          case 1u:
LABEL_27:
            v51 = a12;
LABEL_29:
            v52 = *a8;
            v25 += v52;
            if (&v25[-1].u64[1] + 7 >= v24)
            {
              return result;
            }

            v53 = a8[1];
            if (v53)
            {
              if (&v25[1] <= v24)
              {
                v54 = *v25;
              }

              else
              {
                v54 = 0uLL;
              }

              v56 = 0uLL;
              v57 = 0uLL;
              v58 = 0uLL;
              v59 = (v25 + v30);
              if (v25[1].u64 + v30 <= v24)
              {
                v56 = *v59;
              }

              v60 = (v59 + v30);
              if (&v60[1] <= v24)
              {
                v57 = *v60;
              }

              v61 = (v60 + v30);
              if (&v61[1] <= v24)
              {
                v58 = *v61;
              }

              v26.i32[0] = 0;
              v62 = vzip1q_s32(v54, v34);
              v63 = vzip2q_s32(v54, v34);
              v64 = vzip1q_s32(v56, v34);
              v65 = vzip2q_s32(v56, v34);
              v66 = vzip1q_s32(v57, v34);
              v67 = vzip2q_s32(v57, v34);
              v68 = vzip1q_s32(v58, v34);
              v69 = vzip2q_s32(v58, v34);
              if (a8[4] == v52)
              {
                v70 = 4 - a8[5];
              }

              else
              {
                v70 = 4;
              }

              v27.i32[0] = a8[1] & 2;
              v71 = vdupq_lane_s32(*&vceqq_s32(v27, v26), 0);
              v26 = vbslq_s8(v71, v69, v68);
              v72 = vbslq_s8(v71, v68, v69);
              v27 = vbslq_s8(v71, v67, v66);
              v73 = vbslq_s8(v71, v66, v67);
              v74 = vbslq_s8(v71, v65, v64);
              v75 = vbslq_s8(v71, v64, v65);
              v76 = vbslq_s8(v71, v63, v62);
              v77 = vbslq_s8(v71, v62, v63);
              if ((v53 & 2) != 0)
              {
                v70 -= 2;
              }

              if (v53)
              {
                v78 = vextq_s8(v76, v77, 8uLL).u64[0];
                v77 = vextq_s8(v77, v76, 8uLL);
                v79 = vextq_s8(v74, v75, 8uLL).u64[0];
                v75 = vextq_s8(v75, v74, 8uLL);
                v80 = vextq_s8(v27, v73, 8uLL);
                v73 = vextq_s8(v73, v27, 8uLL);
                v81 = vextq_s8(v26, v72, 8uLL);
                --v70;
                v72 = vextq_s8(v72, v26, 8uLL);
                v76.i64[0] = v78;
                v74.i64[0] = v79;
                v27 = v80;
                v26 = v81;
              }

              if (v70 <= 1)
              {
                v82 = 0;
              }

              else
              {
                *v35 = v77;
                *v45 = v75;
                v70 -= 2;
                v77.i64[0] = v76.i64[0];
                v75.i64[0] = v74.i64[0];
                *v46 = v73;
                v73.i64[0] = v27.i64[0];
                *v51 = v72;
                v72.i64[0] = v26.i64[0];
                v82 = 16;
              }

              if (v70 >= 1)
              {
                *(v35->i64 + v82) = v77.i64[0];
                *(v45->i64 + v82) = v75.i64[0];
                *(v46->i64 + v82) = v73.i64[0];
                *(v51->i64 + v82) = v72.i64[0];
                v82 |= 8uLL;
              }

              ++v25;
              v55 = a8[4];
              if (v55 == v52)
              {
                goto LABEL_142;
              }

              v35 = (v35 + v82);
              v45 = (v45 + v82);
              v46 = (v46 + v82);
              v51 = (v51 + v82);
              ++v52;
            }

            else
            {
              v55 = a8[4];
            }

            v83 = a8[5];
            v84 = v83 != 0;
            if (v55 != 0 || !v84)
            {
              v85 = v55 - v84;
              if (v52 <= v85)
              {
                v86 = v85 - v52 + 1;
                do
                {
                  if (v25)
                  {
                    if (&v25[1] <= v24)
                    {
                      v87 = *v25;
                    }

                    else
                    {
                      v87 = 0uLL;
                    }

                    v88 = 0uLL;
                    v89 = 0uLL;
                    v90 = 0uLL;
                    v91 = (v25 + v30);
                    if (v25[1].u64 + v30 <= v24)
                    {
                      v88 = *v91;
                    }

                    v92 = (v91 + v30);
                    if (&v92[1] <= v24)
                    {
                      v89 = *v92;
                    }

                    v93 = (v92 + v30);
                    if (&v93[1] <= v24)
                    {
                      v90 = *v93;
                    }

                    ++v25;
                  }

                  else
                  {
                    v87 = 0uLL;
                    v88 = 0uLL;
                    v89 = 0uLL;
                    v90 = 0uLL;
                  }

                  if ((v35 < a10 || v35 >= v31) && (v35 < a12 || v35 >= v32) || (v45 < a10 || v45 >= v31) && (v45 < a12 || v45 >= v32) || (v46 < a10 || v46 >= v31) && (v46 < a12 || v46 >= v32) || (v51 < a10 || v51 >= v31) && (v51 < a12 || v51 >= v32))
                  {
                    goto LABEL_145;
                  }

                  v26 = vzip2q_s32(v87, v34);
                  v27 = vzip2q_s32(v88, v34);
                  *v35 = vzip1q_s32(v87, v34);
                  v35[1] = v26;
                  v94 = &v35[2];
                  *v45 = vzip1q_s32(v88, v34);
                  v45[1] = v27;
                  v95 = &v45[2];
                  v96 = &v46[2];
                  *v46 = vzip1q_s32(v89, v34);
                  v46[1] = vzip2q_s32(v89, v34);
                  v97 = v51 + 2;
                  *v51 = vzip1q_s32(v90, v34);
                  v51[1] = vzip2q_s32(v90, v34);
                  v51 += 2;
                  v46 += 2;
                  v45 += 2;
                  v35 += 2;
                  --v86;
                }

                while (v86);
                v83 = a8[5];
                if (!v83)
                {
                  goto LABEL_142;
                }

LABEL_91:
                v98 = 4 - v83;
                if (v28 == a8[6])
                {
                  v99 = 4 - a8[7];
                }

                else
                {
                  v99 = 4;
                }

                if (v25)
                {
                  if (v99 < 2)
                  {
                    v101 = 0;
                    v100 = v25;
                    v102 = v25;
                  }

                  else
                  {
                    v100 = (v25->i64 + v30);
                    if (v99 == 2)
                    {
                      v101 = 0;
                      v102 = (v25->i64 + v30);
                    }

                    else
                    {
                      v102 = (v25->i64 + v30);
                      v100 = (v100 + v30);
                      if (v99 <= 3)
                      {
                        v101 = 0;
                      }

                      else
                      {
                        v101 = v30;
                      }
                    }
                  }

                  v107 = (v100 + v101);
                  v104 = 0uLL;
                  v105 = 0uLL;
                  v106 = 0uLL;
                  v103 = 0uLL;
                  if ((4 - v83))
                  {
                    if (v25 + 4 * v98 <= v24)
                    {
                      v103.i32[0] = v25->i32[3 - v83];
                    }

                    if (v102 + 4 * v98 <= v24)
                    {
                      v104.i32[0] = *(v102 + 3 - v83);
                    }

                    if (v100 + 4 * v98 <= v24)
                    {
                      v105.i32[0] = *(v100 + 3 - v83);
                    }

                    if (v107 + 4 * v98 <= v24)
                    {
                      v106.i32[0] = *(v107 + 3 - v83);
                    }
                  }

                  if (((4 - v83) & 2) != 0)
                  {
                    v103 = vextq_s8(v103, v103, 8uLL);
                    if (&v25->u64[1] <= v24)
                    {
                      v108.i64[0] = v25->i64[0];
                      v108.i64[1] = vextq_s8(v103, v103, 8uLL).u64[0];
                      v103 = v108;
                    }

                    v104 = vextq_s8(v104, v104, 8uLL);
                    if ((v102 + 1) <= v24)
                    {
                      v109.i64[0] = *v102;
                      v109.i64[1] = vextq_s8(v104, v104, 8uLL).u64[0];
                      v104 = v109;
                    }

                    v105 = vextq_s8(v105, v105, 8uLL);
                    if ((v100 + 1) <= v24)
                    {
                      v110.i64[0] = *v100;
                      v110.i64[1] = vextq_s8(v105, v105, 8uLL).u64[0];
                      v105 = v110;
                    }

                    v106 = vextq_s8(v106, v106, 8uLL);
                    if ((v107 + 1) <= v24)
                    {
                      v111.i64[0] = *v107;
                      v111.i64[1] = vextq_s8(v106, v106, 8uLL).u64[0];
                      v106 = v111;
                    }
                  }

                  v25 = (v25 + 4 * v98);
                }

                else
                {
                  v103 = 0uLL;
                  v104 = 0uLL;
                  v105 = 0uLL;
                  v106 = 0uLL;
                }

                if ((v94 < a10 || v94 >= v31) && (v94 < a12 || v94 >= v32) || (v95 < a10 || v95 >= v31) && (v95 < a12 || v95 >= v32) || (v96 < a10 || v96 >= v31) && (v96 < a12 || v96 >= v32) || (v97 < a10 || v97 >= v31) && (v97 < a12 || v97 >= v32))
                {
LABEL_145:
                  exception = __cxa_allocate_exception(8uLL);
                  *exception = -6;
                }

                v112 = vzip1q_s32(v103, v34);
                v113 = vzip1q_s32(v104, v34);
                v27 = vzip1q_s32(v105, v34);
                v26 = vzip1q_s32(v106, v34);
                if (((4 - v83) & 2) != 0)
                {
                  *v94 = v112;
                  *v95 = v113;
                  *v96 = v27;
                  *v97 = v26;
                  if ((4 - v83))
                  {
                    v94[1].i64[0] = vzip2q_s32(v103, v34).u64[0];
                    v95[1].i64[0] = vzip2q_s32(v104, v34).u64[0];
                    v96[1].i64[0] = vzip2q_s32(v105, v34).u64[0];
                    v97[1].i64[0] = vzip2q_s32(v106, v34).u64[0];
                  }
                }

                else
                {
                  v94->i64[0] = v112.i64[0];
                  v95->i64[0] = v113.i64[0];
                  v96->i64[0] = v27.i64[0];
                  v97->i64[0] = v26.i64[0];
                }

                goto LABEL_142;
              }
            }

            v94 = v35;
            v95 = v45;
            v96 = v46;
            v97 = v51;
            if (v83)
            {
              goto LABEL_91;
            }

            goto LABEL_142;
          case 2u:
LABEL_26:
            v46 = a12;
            goto LABEL_27;
          case 3u:
            v45 = a12;
            goto LABEL_26;
        }
      }
    }

    v51 = v47;
    goto LABEL_29;
  }

  return result;
}

uint64_t ExtractInterleaved2_B44A<unsigned short,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(v92, a3);
  v90 = 0;
  v91 = 0;
  v16 = a8[2];
  v17 = a8[6];
  if (v16 <= v17)
  {
    v18 = a8;
    v19 = a10 + a11;
    v20 = a12 + a13;
    v73 = *(a9 + 60);
    v21 = a10;
    v79 = v18;
    while (1)
    {
      v22 = *(a4 + 8);
      if (v22)
      {
        v23 = *(a7 + 24);
        v24 = *(*(v22 + 40) + 8 * *(a7 + 60));
        v25 = *(v24 + 12) - 1;
        if (v25 >= (HIDWORD(v23) * v73) + 4 * v16)
        {
          v25 = (HIDWORD(*(a7 + 24)) * v73) + 4 * v16;
        }

        v26 = v24 + 8 * v23;
        if (*(v22 + 104) == 1)
        {
          v27 = (*(v26 + 24) + 8 * v25);
        }

        else
        {
          v29 = (v25 * *(v22 + 108)) >> *(v22 + 112);
          v30 = *(v24 + 20) - 1;
          if (v29 >= v30)
          {
            LODWORD(v29) = v30;
          }

          v27 = (*(v26 + 24) + 8 * v29);
        }

        v31 = *v27;
        v32 = HIDWORD(*v27);
        v33 = a1 + *v27;
        v34 = a2 - *v27;
        if (a2 >= *v27)
        {
          v28 = (a1 + v31);
        }

        else
        {
          v28 = 0;
        }

        if (v34 < HIDWORD(v31))
        {
          v32 = a2 - v31;
        }

        v35 = a2 >= v31;
        v36 = v33 + v32;
        if (!v35)
        {
          v36 = 0;
        }

        v90 = v28;
        v91 = v36;
      }

      else
      {
        v28 = v90;
      }

      v37 = v21 + a14;
      v38 = v21 + a14 + a14;
      v39 = v38 + a14;
      if (!v28)
      {
        goto LABEL_93;
      }

      v78 = v16;
      if (!a12)
      {
        break;
      }

      if (v16 == v18[2])
      {
        v40 = v18[3] + 1;
        v41 = v21;
        v21 += a14;
        v37 = v38;
        v38 += a14;
        do
        {
          v39 = v38;
          v38 = v37;
          v37 = v21;
          v21 = v41;
          v41 = a12;
          --v40;
        }

        while (v40);
      }

      if (v16 != v17)
      {
        break;
      }

      v42 = v18[7];
      if (v42 != 1)
      {
        if (v42 != 2)
        {
          if (v42 != 3)
          {
            break;
          }

          v37 = a12;
        }

        v38 = a12;
      }

      v43 = a12;
LABEL_33:
      v44 = *v18;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v90, v44);
      v18 = v79;
      if (!result)
      {
        return result;
      }

      if (!v79[1])
      {
        v54 = v79[4];
        goto LABEL_50;
      }

      v45 = v92;
      v46 = vld1q_dup_s16(v45);
      v81 = v46;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v90, a6, &v88);
      v18 = v79;
      v47 = vzip2q_s16(v81, v89);
      v48 = vzip1q_s16(v81, v89);
      v49 = vzip2q_s16(v81, v88);
      v50 = vzip1q_s16(v81, v88);
      if (v79[4] == v44)
      {
        v51 = 4 - v79[5];
      }

      else
      {
        v51 = 4;
      }

      v52 = v79[1];
      if ((v52 & 2) != 0)
      {
        v50 = vextq_s8(v50, v50, 8uLL);
        v49 = vextq_s8(v49, v49, 8uLL);
        v48 = vextq_s8(v48, v48, 8uLL);
        v51 -= 2;
        v47 = vextq_s8(v47, v47, 8uLL);
      }

      v16 = v78;
      if (v52)
      {
        v50 = vextq_s8(v50, v50, 4uLL);
        v49 = vextq_s8(v49, v49, 4uLL);
        v48 = vextq_s8(v48, v48, 4uLL);
        --v51;
        v47 = vextq_s8(v47, v47, 4uLL);
      }

      if (v51 <= 1)
      {
        v53 = 0;
      }

      else
      {
        *v21 = v50.i64[0];
        *v37 = v49.i64[0];
        v50.i32[0] = vextq_s8(v50, v50, 8uLL).u32[0];
        v49.i32[0] = vextq_s8(v49, v49, 8uLL).u32[0];
        *v38 = v48.i64[0];
        v48.i32[0] = vextq_s8(v48, v48, 8uLL).u32[0];
        *v43 = v47.i64[0];
        v47.i32[0] = vextq_s8(v47, v47, 8uLL).u32[0];
        v51 -= 2;
        v53 = 8;
      }

      if (v51 >= 1)
      {
        *(v53 + v21) = v50.i32[0];
        *(v53 + v37) = v49.i32[0];
        *(v53 + v38) = v48.i32[0];
        v55 = (v53 + v43);
        *(v53 + v43 + 2) = v47.i16[1];
        v53 |= 4uLL;
        *v55 = v47.i16[0];
      }

      v54 = v79[4];
      if (v54 != v44)
      {
        v21 += v53;
        v37 += v53;
        v38 += v53;
        v43 += v53;
        ++v44;
LABEL_50:
        v56 = v18[5];
        v57 = v56 != 0;
        if (v54 != 0 || !v57)
        {
          v58 = v54 - v57;
          if (v44 <= v58)
          {
            v59 = v58 - v44 + 1;
            do
            {
              v60 = v92;
              v61 = vld1q_dup_s16(v60);
              v82 = v61;
              result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v90, a6, &v86);
              v62 = v87;
              if ((v21 < a10 || v21 >= v19) && (v21 < a12 || v21 >= v20) || (v37 < a10 || v37 >= v19) && (v37 < a12 || v37 >= v20) || (v38 < a10 || v38 >= v19) && (v38 < a12 || v38 >= v20) || (v43 < a10 || v43 >= v19) && (v43 < a12 || v43 >= v20))
              {
                goto LABEL_96;
              }

              v63 = vzip2q_s16(v82, v87);
              v64 = vzip2q_s16(v82, v86);
              *v21 = vzip1q_s16(v82, v86);
              v21 += 16;
              *v37 = v64;
              v37 += 16;
              *v38 = vzip1q_s16(v82, v62);
              v38 += 16;
              *v43 = v63;
              v43 += 16;
              --v59;
            }

            while (v59);
            v18 = v79;
            v56 = v79[5];
          }
        }

        if (v56)
        {
          v65 = v92;
          v66 = vld1q_dup_s16(v65);
          v83 = v66;
          result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v90, a6, &v84);
          if ((v21 < a10 || v21 >= v19) && (v21 < a12 || v21 >= v20) || (v37 < a10 || v37 >= v19) && (v37 < a12 || v37 >= v20) || (v38 < a10 || v38 >= v19) && (v38 < a12 || v38 >= v20) || (v43 < a10 || v43 >= v19) && (v43 < a12 || v43 >= v20))
          {
LABEL_96:
            exception = __cxa_allocate_exception(8uLL);
            *exception = -6;
          }

          v67 = vzip2q_s16(v83, v85);
          v68 = vzip1q_s16(v83, v85);
          v69 = vzip2q_s16(v83, v84);
          v70 = vzip1q_s16(v83, v84);
          v16 = v78;
          v18 = v79;
          v71 = 4 - v79[5];
          if ((v71 & 2) != 0)
          {
            *v21 = v70.i64[0];
            *v37 = v69.i64[0];
            *v38 = v68.i64[0];
            *v43 = v67.i64[0];
            if (v71)
            {
              *(v21 + 8) = v70.i32[2];
              *(v37 + 8) = v69.i32[2];
              *(v38 + 8) = v68.i32[2];
              *(v43 + 8) = v67.i32[2];
            }
          }

          else
          {
            *v21 = v70.i32[0];
            *v37 = v69.i32[0];
            *v38 = v68.i32[0];
            *v43 = v67.i32[0];
          }
        }

        else
        {
          v16 = v78;
        }
      }

LABEL_93:
      v21 = v39 + a14;
      v17 = v18[6];
      v35 = v16++ >= v17;
      if (v35)
      {
        return result;
      }
    }

    v43 = v39;
    goto LABEL_33;
  }

  return result;
}

_DWORD *ExtractInterleaved2_B44A<unsigned int,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7, unsigned int *a8, uint64_t a9, int8x16_t *a10, uint64_t a11, int8x16_t *a12, uint64_t a13, uint64_t a14)
{
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v112, a3);
  v24 = a8[2];
  v25 = a8[6];
  if (v24 <= v25)
  {
    v26 = 4 * vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * a7[7].u32[1]) + 16), *(*(a4 + 8) + 48), a7[3]), *(*(a4 + 8) + 48)).u32[0];
    v27 = a10->u64 + a11;
    v28 = a12->u64 + a13;
    v29 = *(a9 + 60);
    v30 = vld1q_dup_f32(&v112);
    v31 = a10;
    while (1)
    {
      v32 = *(a4 + 8);
      if (v32)
      {
        v33 = a7[3];
        v34 = (v33.i32[1] * v29) + 4 * v24;
        v35 = *(*(v32 + 40) + 8 * a7[7].u32[1]);
        if (*(v35 + 12) - 1 < v34)
        {
          v34 = *(v35 + 12) - 1;
        }

        if (*(v32 + 104) == 1)
        {
          v36 = (*(v35 + 8 * v33.u32[0] + 24) + 8 * v34);
        }

        else
        {
          v37 = (v34 * *(v32 + 108)) >> *(v32 + 112);
          if (v37 >= *(v35 + 20) - 1)
          {
            LODWORD(v37) = *(v35 + 20) - 1;
          }

          v36 = (*(v35 + 8 * v33.u32[0] + 24) + 8 * v37);
        }

        v38 = *v36;
        if (a2 <= v38)
        {
          v20 = 0;
          v21 = 0;
          v43 = (v31 + 3 * a14);
          goto LABEL_142;
        }

        v39 = v38;
        if (a2 - v38 >= HIDWORD(v38))
        {
          v40 = HIDWORD(v38);
        }

        else
        {
          v40 = a2 - v38;
        }

        v21 = (v39 + a1);
        v20 = v40 + v39 + a1;
      }

      v41 = (v31 + a14);
      v42 = (v31 + a14 + a14);
      v43 = (v42 + a14);
      if (v21)
      {
        break;
      }

LABEL_142:
      v31 = (v43 + a14);
      result = (v24 + 1);
      v25 = a8[6];
      if (v24++ >= v25)
      {
        return result;
      }
    }

    if (a12)
    {
      if (v24 == a8[2])
      {
        v44 = a8[3] + 1;
        v45 = v31;
        v31 = (v31 + a14);
        v41 = v42;
        v42 = (v42 + a14);
        do
        {
          v43 = v42;
          v42 = v41;
          v41 = v31;
          v31 = v45;
          v45 = a12;
          --v44;
        }

        while (v44);
      }

      if (v24 == v25)
      {
        v46 = a8[7];
        switch(v46)
        {
          case 1u:
LABEL_27:
            v47 = a12;
LABEL_29:
            v48 = *a8;
            v21 += v48;
            if (&v21[-1].u64[1] + 7 >= v20)
            {
              return result;
            }

            v49 = a8[1];
            if (v49)
            {
              if (&v21[1] <= v20)
              {
                v50 = *v21;
              }

              else
              {
                v50 = 0uLL;
              }

              v52 = 0uLL;
              v53 = 0uLL;
              v54 = 0uLL;
              v55 = (v21 + v26);
              if (v21[1].u64 + v26 <= v20)
              {
                v52 = *v55;
              }

              v56 = (v55 + v26);
              if (&v56[1] <= v20)
              {
                v53 = *v56;
              }

              v57 = (v56 + v26);
              if (&v57[1] <= v20)
              {
                v54 = *v57;
              }

              v22.i32[0] = 0;
              v58 = vzip1q_s32(v30, v50);
              v59 = vzip2q_s32(v30, v50);
              v60 = vzip1q_s32(v30, v52);
              v61 = vzip2q_s32(v30, v52);
              v62 = vzip1q_s32(v30, v53);
              v63 = vzip2q_s32(v30, v53);
              v64 = vzip1q_s32(v30, v54);
              v65 = vzip2q_s32(v30, v54);
              if (a8[4] == v48)
              {
                v66 = 4 - a8[5];
              }

              else
              {
                v66 = 4;
              }

              v23.i32[0] = a8[1] & 2;
              v67 = vdupq_lane_s32(*&vceqq_s32(v23, v22), 0);
              v22 = vbslq_s8(v67, v65, v64);
              v68 = vbslq_s8(v67, v64, v65);
              v23 = vbslq_s8(v67, v63, v62);
              v69 = vbslq_s8(v67, v62, v63);
              v70 = vbslq_s8(v67, v61, v60);
              v71 = vbslq_s8(v67, v60, v61);
              v72 = vbslq_s8(v67, v59, v58);
              v73 = vbslq_s8(v67, v58, v59);
              if ((v49 & 2) != 0)
              {
                v66 -= 2;
              }

              if (v49)
              {
                v74 = vextq_s8(v72, v73, 8uLL).u64[0];
                v73 = vextq_s8(v73, v72, 8uLL);
                v75 = vextq_s8(v70, v71, 8uLL).u64[0];
                v71 = vextq_s8(v71, v70, 8uLL);
                v76 = vextq_s8(v23, v69, 8uLL);
                v69 = vextq_s8(v69, v23, 8uLL);
                v77 = vextq_s8(v22, v68, 8uLL);
                --v66;
                v68 = vextq_s8(v68, v22, 8uLL);
                v72.i64[0] = v74;
                v70.i64[0] = v75;
                v23 = v76;
                v22 = v77;
              }

              if (v66 <= 1)
              {
                v78 = 0;
              }

              else
              {
                *v31 = v73;
                *v41 = v71;
                v66 -= 2;
                v73.i64[0] = v72.i64[0];
                v71.i64[0] = v70.i64[0];
                *v42 = v69;
                v69.i64[0] = v23.i64[0];
                *v47 = v68;
                v68.i64[0] = v22.i64[0];
                v78 = 16;
              }

              if (v66 >= 1)
              {
                *(v31->i64 + v78) = v73.i64[0];
                *(v41->i64 + v78) = v71.i64[0];
                *(v42->i64 + v78) = v69.i64[0];
                *(v47->i64 + v78) = v68.i64[0];
                v78 |= 8uLL;
              }

              ++v21;
              v51 = a8[4];
              if (v51 == v48)
              {
                goto LABEL_142;
              }

              v31 = (v31 + v78);
              v41 = (v41 + v78);
              v42 = (v42 + v78);
              v47 = (v47 + v78);
              ++v48;
            }

            else
            {
              v51 = a8[4];
            }

            v79 = a8[5];
            v80 = v79 != 0;
            if (v51 != 0 || !v80)
            {
              v81 = v51 - v80;
              if (v48 <= v81)
              {
                v82 = v81 - v48 + 1;
                do
                {
                  if (v21)
                  {
                    if (&v21[1] <= v20)
                    {
                      v83 = *v21;
                    }

                    else
                    {
                      v83 = 0uLL;
                    }

                    v84 = 0uLL;
                    v85 = 0uLL;
                    v86 = 0uLL;
                    v87 = (v21 + v26);
                    if (v21[1].u64 + v26 <= v20)
                    {
                      v84 = *v87;
                    }

                    v88 = (v87 + v26);
                    if (&v88[1] <= v20)
                    {
                      v85 = *v88;
                    }

                    v89 = (v88 + v26);
                    if (&v89[1] <= v20)
                    {
                      v86 = *v89;
                    }

                    ++v21;
                  }

                  else
                  {
                    v83 = 0uLL;
                    v84 = 0uLL;
                    v85 = 0uLL;
                    v86 = 0uLL;
                  }

                  if ((v31 < a10 || v31 >= v27) && (v31 < a12 || v31 >= v28) || (v41 < a10 || v41 >= v27) && (v41 < a12 || v41 >= v28) || (v42 < a10 || v42 >= v27) && (v42 < a12 || v42 >= v28) || (v47 < a10 || v47 >= v27) && (v47 < a12 || v47 >= v28))
                  {
                    goto LABEL_145;
                  }

                  v22 = vzip2q_s32(v30, v83);
                  v23 = vzip2q_s32(v30, v84);
                  *v31 = vzip1q_s32(v30, v83);
                  v31[1] = v22;
                  v90 = &v31[2];
                  *v41 = vzip1q_s32(v30, v84);
                  v41[1] = v23;
                  v91 = &v41[2];
                  v92 = &v42[2];
                  *v42 = vzip1q_s32(v30, v85);
                  v42[1] = vzip2q_s32(v30, v85);
                  v93 = v47 + 2;
                  *v47 = vzip1q_s32(v30, v86);
                  v47[1] = vzip2q_s32(v30, v86);
                  v47 += 2;
                  v42 += 2;
                  v41 += 2;
                  v31 += 2;
                  --v82;
                }

                while (v82);
                v79 = a8[5];
                if (!v79)
                {
                  goto LABEL_142;
                }

LABEL_91:
                v94 = 4 - v79;
                if (v24 == a8[6])
                {
                  v95 = 4 - a8[7];
                }

                else
                {
                  v95 = 4;
                }

                if (v21)
                {
                  if (v95 < 2)
                  {
                    v97 = 0;
                    v96 = v21;
                    v98 = v21;
                  }

                  else
                  {
                    v96 = (v21->i64 + v26);
                    if (v95 == 2)
                    {
                      v97 = 0;
                      v98 = (v21->i64 + v26);
                    }

                    else
                    {
                      v98 = (v21->i64 + v26);
                      v96 = (v96 + v26);
                      if (v95 <= 3)
                      {
                        v97 = 0;
                      }

                      else
                      {
                        v97 = v26;
                      }
                    }
                  }

                  v103 = (v96 + v97);
                  v100 = 0uLL;
                  v101 = 0uLL;
                  v102 = 0uLL;
                  v99 = 0uLL;
                  if ((4 - v79))
                  {
                    if (v21 + 4 * v94 <= v20)
                    {
                      v99.i32[0] = v21->i32[3 - v79];
                    }

                    if (v98 + 4 * v94 <= v20)
                    {
                      v100.i32[0] = *(v98 + 3 - v79);
                    }

                    if (v96 + 4 * v94 <= v20)
                    {
                      v101.i32[0] = *(v96 + 3 - v79);
                    }

                    if (v103 + 4 * v94 <= v20)
                    {
                      v102.i32[0] = *(v103 + 3 - v79);
                    }
                  }

                  if (((4 - v79) & 2) != 0)
                  {
                    v99 = vextq_s8(v99, v99, 8uLL);
                    if (&v21->u64[1] <= v20)
                    {
                      v104.i64[0] = v21->i64[0];
                      v104.i64[1] = vextq_s8(v99, v99, 8uLL).u64[0];
                      v99 = v104;
                    }

                    v100 = vextq_s8(v100, v100, 8uLL);
                    if ((v98 + 1) <= v20)
                    {
                      v105.i64[0] = *v98;
                      v105.i64[1] = vextq_s8(v100, v100, 8uLL).u64[0];
                      v100 = v105;
                    }

                    v101 = vextq_s8(v101, v101, 8uLL);
                    if ((v96 + 1) <= v20)
                    {
                      v106.i64[0] = *v96;
                      v106.i64[1] = vextq_s8(v101, v101, 8uLL).u64[0];
                      v101 = v106;
                    }

                    v102 = vextq_s8(v102, v102, 8uLL);
                    if ((v103 + 1) <= v20)
                    {
                      v107.i64[0] = *v103;
                      v107.i64[1] = vextq_s8(v102, v102, 8uLL).u64[0];
                      v102 = v107;
                    }
                  }

                  v21 = (v21 + 4 * v94);
                }

                else
                {
                  v99 = 0uLL;
                  v100 = 0uLL;
                  v101 = 0uLL;
                  v102 = 0uLL;
                }

                if ((v90 < a10 || v90 >= v27) && (v90 < a12 || v90 >= v28) || (v91 < a10 || v91 >= v27) && (v91 < a12 || v91 >= v28) || (v92 < a10 || v92 >= v27) && (v92 < a12 || v92 >= v28) || (v93 < a10 || v93 >= v27) && (v93 < a12 || v93 >= v28))
                {
LABEL_145:
                  exception = __cxa_allocate_exception(8uLL);
                  *exception = -6;
                }

                v108 = vzip1q_s32(v30, v99);
                v109 = vzip1q_s32(v30, v100);
                v23 = vzip1q_s32(v30, v101);
                v22 = vzip1q_s32(v30, v102);
                if (((4 - v79) & 2) != 0)
                {
                  *v90 = v108;
                  *v91 = v109;
                  *v92 = v23;
                  *v93 = v22;
                  if ((4 - v79))
                  {
                    v90[1].i64[0] = vzip2q_s32(v30, v99).u64[0];
                    v91[1].i64[0] = vzip2q_s32(v30, v100).u64[0];
                    v92[1].i64[0] = vzip2q_s32(v30, v101).u64[0];
                    v93[1].i64[0] = vzip2q_s32(v30, v102).u64[0];
                  }
                }

                else
                {
                  v90->i64[0] = v108.i64[0];
                  v91->i64[0] = v109.i64[0];
                  v92->i64[0] = v23.i64[0];
                  v93->i64[0] = v22.i64[0];
                }

                goto LABEL_142;
              }
            }

            v90 = v31;
            v91 = v41;
            v92 = v42;
            v93 = v47;
            if (v79)
            {
              goto LABEL_91;
            }

            goto LABEL_142;
          case 2u:
LABEL_26:
            v42 = a12;
            goto LABEL_27;
          case 3u:
            v41 = a12;
            goto LABEL_26;
        }
      }
    }

    v47 = v43;
    goto LABEL_29;
  }

  return result;
}

uint64_t ExtractInterleaved2_B44A<unsigned short,(StreamType)1,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v80 = result;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v14 = a8[6];
  v83 = a8[2];
  if (v83 <= v14)
  {
    v15 = a10 + a11;
    v16 = a12 + a13;
    v79 = *(a9 + 60);
    v17 = a10;
    v78 = a8;
    while (1)
    {
      v18 = *(a3 + 8);
      v19 = v83;
      if (v18)
      {
        v20 = *(a7 + 24);
        v21 = *(*(v18 + 40) + 8 * *(a7 + 60));
        v22 = *(v21 + 12) - 1;
        if (v22 >= (HIDWORD(v20) * v79) + 4 * v83)
        {
          v22 = (HIDWORD(*(a7 + 24)) * v79) + 4 * v83;
        }

        v23 = v21 + 8 * v20;
        if (*(v18 + 104) == 1)
        {
          v24 = (*(v23 + 24) + 8 * v22);
        }

        else
        {
          v25 = (v22 * *(v18 + 108)) >> *(v18 + 112);
          v26 = *(v21 + 20) - 1;
          if (v25 >= v26)
          {
            LODWORD(v25) = v26;
          }

          v24 = (*(v23 + 24) + 8 * v25);
        }

        v27 = *v24;
        v28 = HIDWORD(v27);
        if (a2 >= v27)
        {
          v29 = (v80 + v27);
        }

        else
        {
          v29 = 0;
        }

        if (a2 - v27 < HIDWORD(v27))
        {
          v28 = a2 - v27;
        }

        v30 = a2 >= v27;
        v31 = v80 + v27 + v28;
        if (!v30)
        {
          v31 = 0;
        }

        v103 = v29;
        v104 = v31;
      }

      v32 = *(a4 + 8);
      if (v32)
      {
        v33 = *(a7 + 24);
        v34 = *(*(v32 + 40) + 8 * *(a7 + 60));
        v35 = *(v34 + 12) - 1;
        if (v35 >= (HIDWORD(v33) * v79) + 4 * v83)
        {
          v35 = (HIDWORD(*(a7 + 24)) * v79) + 4 * v83;
        }

        v36 = v34 + 8 * v33;
        if (*(v32 + 104) == 1)
        {
          v37 = (*(v36 + 24) + 8 * v35);
        }

        else
        {
          v39 = (v35 * *(v32 + 108)) >> *(v32 + 112);
          v40 = *(v34 + 20) - 1;
          if (v39 >= v40)
          {
            LODWORD(v39) = v40;
          }

          v37 = (*(v36 + 24) + 8 * v39);
        }

        v41 = *v37;
        v42 = HIDWORD(*v37);
        v43 = v80 + *v37;
        v44 = a2 - *v37;
        if (a2 >= *v37)
        {
          v38 = (v80 + v41);
        }

        else
        {
          v38 = 0;
        }

        if (v44 < HIDWORD(v41))
        {
          v42 = a2 - v41;
        }

        v30 = a2 >= v41;
        v45 = v43 + v42;
        if (!v30)
        {
          v45 = 0;
        }

        v101 = v38;
        v102 = v45;
      }

      else
      {
        v38 = v101;
      }

      v46 = v17 + a14;
      v47 = v17 + a14 + a14;
      v48 = v47 + a14;
      if (!v103 || !v38)
      {
        goto LABEL_111;
      }

      if (!a12)
      {
        break;
      }

      if (v83 == a8[2])
      {
        v49 = a8[3] + 1;
        v50 = v17;
        v17 += a14;
        v46 = v47;
        v47 += a14;
        do
        {
          v48 = v47;
          v47 = v46;
          v46 = v17;
          v17 = v50;
          v50 = a12;
          --v49;
        }

        while (v49);
      }

      if (v83 != v14)
      {
        break;
      }

      v51 = a8[7];
      if (v51 != 1)
      {
        if (v51 != 2)
        {
          if (v51 != 3)
          {
            break;
          }

          v46 = a12;
        }

        v47 = a12;
      }

      v52 = a12;
LABEL_50:
      v53 = *a8;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v103, v53);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v101, v53);
      a8 = v78;
      if (!result)
      {
        return result;
      }

      if (!v78[1])
      {
        v61 = v78[4];
        goto LABEL_68;
      }

      AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v103, a5, v100);
      v86 = v100[1];
      v89 = v100[0];
      result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v101, a6, &v98);
      a8 = v78;
      v54 = vzip2q_s16(v86, v99);
      v55 = vzip1q_s16(v86, v99);
      v56 = vzip2q_s16(v89, v98);
      v57 = vzip1q_s16(v89, v98);
      if (v78[4] == v53)
      {
        v58 = 4 - v78[5];
      }

      else
      {
        v58 = 4;
      }

      v59 = v78[1];
      if ((v59 & 2) != 0)
      {
        v57 = vextq_s8(v57, v57, 8uLL);
        v56 = vextq_s8(v56, v56, 8uLL);
        v55 = vextq_s8(v55, v55, 8uLL);
        v58 -= 2;
        v54 = vextq_s8(v54, v54, 8uLL);
      }

      if (v59)
      {
        v57 = vextq_s8(v57, v57, 4uLL);
        v56 = vextq_s8(v56, v56, 4uLL);
        v55 = vextq_s8(v55, v55, 4uLL);
        --v58;
        v54 = vextq_s8(v54, v54, 4uLL);
      }

      if (v58 <= 1)
      {
        v60 = 0;
      }

      else
      {
        *v17 = v57.i64[0];
        *v46 = v56.i64[0];
        v57.i32[0] = vextq_s8(v57, v57, 8uLL).u32[0];
        v56.i32[0] = vextq_s8(v56, v56, 8uLL).u32[0];
        *v47 = v55.i64[0];
        v55.i32[0] = vextq_s8(v55, v55, 8uLL).u32[0];
        *v52 = v54.i64[0];
        v54.i32[0] = vextq_s8(v54, v54, 8uLL).u32[0];
        v58 -= 2;
        v60 = 8;
      }

      if (v58 >= 1)
      {
        *(v60 + v17) = v57.i32[0];
        *(v60 + v46) = v56.i32[0];
        *(v60 + v47) = v55.i32[0];
        v62 = (v60 + v52);
        *(v60 + v52 + 2) = v54.i16[1];
        v60 |= 4uLL;
        *v62 = v54.i16[0];
      }

      v61 = v78[4];
      if (v61 != v53)
      {
        v17 += v60;
        v46 += v60;
        v47 += v60;
        v52 += v60;
        ++v53;
LABEL_68:
        v63 = a8[5];
        v64 = v63 != 0;
        if (v61 != 0 || !v64)
        {
          v65 = v61 - v64;
          if (v53 <= v65)
          {
            v66 = v65 - v53 + 1;
            do
            {
              AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v103, a5, v97);
              v87 = v97[0];
              v90 = v97[1];
              result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v101, a6, &v95);
              v67 = v96;
              if ((v17 < a10 || v17 >= v15) && (v17 < a12 || v17 >= v16) || (v46 < a10 || v46 >= v15) && (v46 < a12 || v46 >= v16) || (v47 < a10 || v47 >= v15) && (v47 < a12 || v47 >= v16) || (v52 < a10 || v52 >= v15) && (v52 < a12 || v52 >= v16))
              {
                goto LABEL_113;
              }

              v68 = vzip2q_s16(v90, v96);
              v69 = vzip2q_s16(v87, v95);
              *v17 = vzip1q_s16(v87, v95);
              v17 += 16;
              *v46 = v69;
              v46 += 16;
              *v47 = vzip1q_s16(v90, v67);
              v47 += 16;
              *v52 = v68;
              v52 += 16;
              --v66;
            }

            while (v66);
            a8 = v78;
            v63 = v78[5];
          }
        }

        if (v63)
        {
          AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v103, a5, v94);
          v88 = v94[1];
          v91 = v94[0];
          result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v101, a6, &v92);
          if ((v17 < a10 || v17 >= v15) && (v17 < a12 || v17 >= v16) || (v46 < a10 || v46 >= v15) && (v46 < a12 || v46 >= v16) || (v47 < a10 || v47 >= v15) && (v47 < a12 || v47 >= v16) || (v52 < a10 || v52 >= v15) && (v52 < a12 || v52 >= v16))
          {
LABEL_113:
            exception = __cxa_allocate_exception(8uLL);
            *exception = -6;
          }

          v70 = vzip2q_s16(v88, v93);
          v71 = vzip1q_s16(v88, v93);
          v72 = vzip2q_s16(v91, v92);
          v73 = vzip1q_s16(v91, v92);
          a8 = v78;
          v74 = 4 - v78[5];
          if ((v74 & 2) != 0)
          {
            *v17 = v73.i64[0];
            *v46 = v72.i64[0];
            *v47 = v71.i64[0];
            *v52 = v70.i64[0];
            if (v74)
            {
              *(v17 + 8) = v73.i32[2];
              *(v46 + 8) = v72.i32[2];
              *(v47 + 8) = v71.i32[2];
              *(v52 + 8) = v70.i32[2];
            }
          }

          else
          {
            *v17 = v73.i32[0];
            *v46 = v72.i32[0];
            *v47 = v71.i32[0];
            *v52 = v70.i32[0];
          }
        }
      }

      v19 = v83;
LABEL_111:
      v17 = v48 + a14;
      v14 = a8[6];
      v83 = v19 + 1;
      if (v19 >= v14)
      {
        return result;
      }
    }

    v52 = v48;
    goto LABEL_50;
  }

  return result;
}

uint64_t ExtractInterleaved2_B44A<unsigned int,(StreamType)1,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7, unsigned int *a8, uint64_t a9, int32x2_t *a10, uint64_t a11, int32x2_t *a12, uint64_t a13, uint64_t a14)
{
  v19 = a8[2];
  v20 = a8[6];
  if (v19 > v20)
  {
    return result;
  }

  v21 = result;
  v22 = a7[7].u32[1];
  v23 = a7[3];
  v24 = 4 * vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * v22) + 16), *(*(a3 + 8) + 48), v23), *(*(a3 + 8) + 48)).u32[0];
  result = *(a4 + 8);
  v142 = a4;
  v25 = 4 * vmin_u32(vmls_s32(*(*(*(result + 40) + 8 * v22) + 16), *(result + 48), v23), *(result + 48)).u32[0];
  v26 = a10 + a11;
  v27 = a12 + a13;
  v28 = *(a9 + 60);
  v144 = v21;
  v29 = a10;
  v143 = v28;
  while (1)
  {
    v30 = *(a3 + 8);
    if (v30)
    {
      v31 = a7[3];
      result = *(*(v30 + 40) + 8 * a7[7].u32[1]);
      v32 = *(result + 12) - 1;
      if (v32 >= (v31.i32[1] * v28) + 4 * v19)
      {
        v32 = (HIDWORD(*&a7[3]) * v28) + 4 * v19;
      }

      v33 = (result + 8 * v31.u32[0]);
      if (*(v30 + 104) == 1)
      {
        v34 = (*&v33[3] + 8 * v32);
      }

      else
      {
        v35 = (v32 * *(v30 + 108)) >> *(v30 + 112);
        v36 = *(result + 20) - 1;
        if (v35 >= v36)
        {
          LODWORD(v35) = v36;
        }

        result = v33[3];
        v34 = (result + 8 * v35);
      }

      v37 = *v34;
      if (a2 <= v37.u32[0])
      {
        v16 = 0;
        v15 = 0;
      }

      else
      {
        result = v37.u32[0];
        if (a2 - v37.u32[0] >= HIDWORD(*&v37))
        {
          v38 = HIDWORD(*&v37);
        }

        else
        {
          v38 = a2 - v37.u32[0];
        }

        v16 = (result + v21);
        v15 = v38 + result + v21;
      }
    }

    v39 = *(a4 + 8);
    if (v39)
    {
      v40 = a7[3];
      result = *(*(v39 + 40) + 8 * a7[7].u32[1]);
      v41 = *(result + 12) - 1;
      if (v41 >= (v40.i32[1] * v28) + 4 * v19)
      {
        v41 = (HIDWORD(*&a7[3]) * v28) + 4 * v19;
      }

      v42 = (result + 8 * v40.u32[0]);
      if (*(v39 + 104) == 1)
      {
        v43 = (*&v42[3] + 8 * v41);
      }

      else
      {
        v44 = (v41 * *(v39 + 108)) >> *(v39 + 112);
        v45 = *(result + 20) - 1;
        if (v44 >= v45)
        {
          LODWORD(v44) = v45;
        }

        result = v42[3];
        v43 = (result + 8 * v44);
      }

      v46 = *v43;
      if (a2 <= v46.u32[0])
      {
        v14 = 0;
        v17 = 0;
        v50 = v29 + 3 * a14;
        goto LABEL_207;
      }

      result = v46.u32[0];
      if (a2 - v46.u32[0] >= HIDWORD(*&v46))
      {
        v47 = HIDWORD(*&v46);
      }

      else
      {
        v47 = a2 - v46.u32[0];
      }

      v17 = (result + v21);
      v14 = v47 + result + v21;
    }

    v48 = (v29 + a14);
    v49 = (v29 + a14 + a14);
    v50 = v49 + a14;
    if (v16)
    {
      if (v17)
      {
        break;
      }
    }

LABEL_207:
    v29 = &v50[a14];
    v20 = a8[6];
    if (v19++ >= v20)
    {
      return result;
    }
  }

  if (!a12)
  {
    goto LABEL_44;
  }

  if (v19 == a8[2])
  {
    v51 = a8[3] + 1;
    result = v29;
    v29 = (v29 + a14);
    v48 = v49;
    v49 = (v49 + a14);
    do
    {
      v50 = v49;
      v49 = v48;
      v48 = v29;
      v29 = result;
      result = a12;
      --v51;
    }

    while (v51);
  }

  if (v19 != v20)
  {
    goto LABEL_44;
  }

  v52 = a8[7];
  if (v52 != 1)
  {
    if (v52 == 2)
    {
LABEL_41:
      v49 = a12;
      goto LABEL_42;
    }

    if (v52 == 3)
    {
      v48 = a12;
      goto LABEL_41;
    }

LABEL_44:
    v53 = v50;
    goto LABEL_45;
  }

LABEL_42:
  v53 = a12;
LABEL_45:
  v54 = *a8;
  v16 += v54;
  if (&v16[-1].u64[1] + 7 < v15)
  {
    v17 += v54;
    if (&v17[-1].u64[1] + 7 < v14)
    {
      v55 = a8[1];
      if (v55)
      {
        if (&v16[1] <= v15)
        {
          v56 = *v16;
        }

        else
        {
          v56 = 0uLL;
        }

        v58 = 0uLL;
        v59 = 0uLL;
        v60 = 0uLL;
        v61 = (v16 + v24);
        if (v16[1].u64 + v24 <= v15)
        {
          v58 = *v61;
        }

        v62 = (v61 + v24);
        if (&v62[1] <= v15)
        {
          v59 = *v62;
        }

        v63 = (v62 + v24);
        if (&v63[1] <= v15)
        {
          v60 = *v63;
        }

        if (&v17[1] <= v14)
        {
          v64 = *v17;
        }

        else
        {
          v64 = 0uLL;
        }

        v65 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v68 = (v17 + v25);
        if (v17[1].u64 + v25 <= v14)
        {
          v65 = *v68;
        }

        v69 = (v68 + v25);
        if (&v69[1] <= v14)
        {
          v66 = *v69;
        }

        v70 = (v69 + v25);
        if (&v70[1] <= v14)
        {
          v67 = *v70;
        }

        v18.i32[0] = 0;
        v71 = vzip1q_s32(v56, v64);
        v72 = vzip2q_s32(v56, v64);
        v73 = vzip1q_s32(v58, v65);
        v74 = vzip2q_s32(v58, v65);
        v75 = vzip1q_s32(v59, v66);
        v76 = vzip2q_s32(v59, v66);
        v77 = vzip1q_s32(v60, v67);
        v78 = vzip2q_s32(v60, v67);
        if (a8[4] == v54)
        {
          v79 = 4 - a8[5];
        }

        else
        {
          v79 = 4;
        }

        v64.i32[0] = a8[1] & 2;
        v18 = vdupq_lane_s32(*&vceqq_s32(v64, v18), 0);
        result = v79 - 2;
        v80 = vbslq_s8(v18, v78, v77);
        v81 = vbslq_s8(v18, v77, v78);
        v82 = vbslq_s8(v18, v76, v75);
        v83 = vbslq_s8(v18, v75, v76);
        v84 = vbslq_s8(v18, v74, v73);
        v85 = vbslq_s8(v18, v73, v74);
        v86 = vbslq_s8(v18, v72, v71);
        v87 = vbslq_s8(v18, v71, v72);
        if ((v55 & 2) != 0)
        {
          v79 -= 2;
        }

        if (v55)
        {
          v18 = vextq_s8(v86, v87, 8uLL);
          v87 = vextq_s8(v87, v86, 8uLL);
          v88 = vextq_s8(v84, v85, 8uLL).u64[0];
          v85 = vextq_s8(v85, v84, 8uLL);
          v89 = vextq_s8(v82, v83, 8uLL).u64[0];
          v83 = vextq_s8(v83, v82, 8uLL);
          v90 = vextq_s8(v80, v81, 8uLL).u64[0];
          --v79;
          v81 = vextq_s8(v81, v80, 8uLL);
          v86.i64[0] = v18.i64[0];
          v84.i64[0] = v88;
          v82.i64[0] = v89;
          v80.i64[0] = v90;
        }

        if (v79 <= 1)
        {
          v91 = 0;
        }

        else
        {
          *v29->i8 = v87;
          *v48->i8 = v85;
          v79 -= 2;
          v87.i64[0] = v86.i64[0];
          v85.i64[0] = v84.i64[0];
          *v49->i8 = v83;
          v83.i64[0] = v82.i64[0];
          *v53 = v81;
          v81.i64[0] = v80.i64[0];
          v91 = 16;
        }

        if (v79 >= 1)
        {
          *(v29 + v91) = *v87.i8;
          *(v48 + v91) = *v85.i8;
          *(v49 + v91) = *v83.i8;
          *(v53->i64 + v91) = v81.i64[0];
          v91 |= 8uLL;
        }

        ++v16;
        ++v17;
        v57 = a8[4];
        if (v57 == v54)
        {
          goto LABEL_207;
        }

        v29 = (v29 + v91);
        v48 = (v48 + v91);
        v49 = (v49 + v91);
        v53 = (v53 + v91);
        ++v54;
      }

      else
      {
        v57 = a8[4];
      }

      v92 = a8[5];
      result = v92 != 0;
      if (((v57 == 0) & result) != 0 || (v93 = v57 - result, v54 > v93))
      {
        v109 = v29;
        v110 = v48;
        v111 = v49;
        v112 = v53;
        if (!v92)
        {
          goto LABEL_206;
        }

        goto LABEL_126;
      }

      v94 = v93 - v54 + 1;
      while (1)
      {
        v95 = 0uLL;
        if (v16)
        {
          if (&v16[1] <= v15)
          {
            v96 = *v16;
          }

          else
          {
            v96 = 0uLL;
          }

          v97 = 0uLL;
          v98 = 0uLL;
          v99 = 0uLL;
          v103 = (v16 + v24);
          if (v16[1].u64 + v24 <= v15)
          {
            v97 = *v103;
          }

          v104 = (v103 + v24);
          if (&v104[1] <= v15)
          {
            v98 = *v104;
          }

          v105 = (v104 + v24);
          result = v105[1].i64;
          if (&v105[1] <= v15)
          {
            v99 = *v105;
          }

          ++v16;
          if (v17)
          {
LABEL_97:
            if (&v17[1] <= v14)
            {
              v95 = *v17;
            }

            v100 = 0uLL;
            v101 = 0uLL;
            v102 = 0uLL;
            v106 = (v17 + v25);
            if (v17[1].u64 + v25 <= v14)
            {
              v100 = *v106;
            }

            v107 = (v106 + v25);
            if (&v107[1] <= v14)
            {
              v101 = *v107;
            }

            v108 = (v107 + v25);
            result = v108[1].i64;
            if (&v108[1] <= v14)
            {
              v102 = *v108;
            }

            ++v17;
            goto LABEL_106;
          }
        }

        else
        {
          v96 = 0uLL;
          v97 = 0uLL;
          v98 = 0uLL;
          v99 = 0uLL;
          if (v17)
          {
            goto LABEL_97;
          }
        }

        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
LABEL_106:
        if ((v29 < a10 || v29 >= v26) && (v29 < a12 || v29 >= v27) || (v48 < a10 || v48 >= v26) && (v48 < a12 || v48 >= v27) || (v49 < a10 || v49 >= v26) && (v49 < a12 || v49 >= v27) || (v53 < a10 || v53 >= v26) && (v53 < a12 || v53 >= v27))
        {
          goto LABEL_210;
        }

        v18 = vzip2q_s32(v96, v95);
        *v29->i8 = vzip1q_s32(v96, v95);
        *v29[2].i8 = v18;
        v109 = &v29[4];
        *v48->i8 = vzip1q_s32(v97, v100);
        *v48[2].i8 = vzip2q_s32(v97, v100);
        v110 = &v48[4];
        v111 = &v49[4];
        *v49->i8 = vzip1q_s32(v98, v101);
        *v49[2].i8 = vzip2q_s32(v98, v101);
        v112 = v53 + 2;
        *v53 = vzip1q_s32(v99, v102);
        v53[1] = vzip2q_s32(v99, v102);
        v53 += 2;
        v49 += 4;
        v48 += 4;
        v29 += 4;
        if (!--v94)
        {
          v92 = a8[5];
          if (!v92)
          {
            goto LABEL_206;
          }

LABEL_126:
          v113 = 4 - v92;
          result = 4 - a8[7];
          if (v19 == a8[6])
          {
            v114 = 4 - a8[7];
          }

          else
          {
            v114 = 4;
          }

          v115 = 0uLL;
          if (v16)
          {
            if (v114 < 2)
            {
              v117 = 0;
              v116 = v16;
              result = v16;
            }

            else
            {
              v116 = (v16->i64 + v24);
              if (v114 == 2)
              {
                v117 = 0;
                result = v16->i64 + v24;
              }

              else
              {
                result = v16->i64 + v24;
                v116 = (v116 + v24);
                if (v114 <= 3)
                {
                  v117 = 0;
                }

                else
                {
                  v117 = v24;
                }
              }
            }

            v125 = (v116 + v117);
            v119 = 0uLL;
            v120 = 0uLL;
            v121 = 0uLL;
            v118 = 0uLL;
            if ((4 - v92))
            {
              if (v16 + 4 * v113 <= v15)
              {
                v118.i32[0] = v16->i32[3 - v92];
              }

              if (result + 4 * v113 <= v15)
              {
                v119.i32[0] = *(result + 4 * (3 - v92));
              }

              if (v116 + 4 * v113 <= v15)
              {
                v120.i32[0] = *(v116 + 3 - v92);
              }

              if (v125 + 4 * v113 <= v15)
              {
                v121.i32[0] = v125->i32[3 - v92];
              }

              a4 = v142;
            }

            if (((4 - v92) & 2) != 0)
            {
              v118 = vextq_s8(v118, v118, 8uLL);
              if (&v16->u64[1] <= v15)
              {
                v126.i64[0] = v16->i64[0];
                v126.i64[1] = vextq_s8(v118, v118, 8uLL).u64[0];
                v118 = v126;
              }

              v119 = vextq_s8(v119, v119, 8uLL);
              if (result + 8 <= v15)
              {
                v127.i64[0] = *result;
                v127.i64[1] = vextq_s8(v119, v119, 8uLL).u64[0];
                v119 = v127;
              }

              a4 = v142;
              v120 = vextq_s8(v120, v120, 8uLL);
              if ((v116 + 1) <= v15)
              {
                v128.i64[0] = *v116;
                v128.i64[1] = vextq_s8(v120, v120, 8uLL).u64[0];
                v120 = v128;
              }

              v121 = vextq_s8(v121, v121, 8uLL);
              result = &v125[1];
              if (&v125[1] <= v15)
              {
                *v129.i8 = *v125;
                v129.i64[1] = vextq_s8(v121, v121, 8uLL).u64[0];
                v121 = v129;
              }
            }

            v16 = (v16 + 4 * v113);
            if (v17)
            {
LABEL_159:
              if (v114 < 2)
              {
                v131 = 0;
                v130 = v17;
                result = v17;
              }

              else
              {
                v130 = (v17->i64 + v25);
                if (v114 == 2)
                {
                  v131 = 0;
                  result = v17->i64 + v25;
                }

                else
                {
                  result = v17->i64 + v25;
                  v130 = (v130 + v25);
                  if (v114 <= 3)
                  {
                    v131 = 0;
                  }

                  else
                  {
                    v131 = v25;
                  }
                }
              }

              v132 = (v130 + v131);
              v122 = 0uLL;
              v123 = 0uLL;
              v124 = 0uLL;
              if ((4 - v92))
              {
                if (v17 + 4 * v113 <= v14)
                {
                  v115.i32[0] = v17->i32[3 - v92];
                }

                if (result + 4 * v113 <= v14)
                {
                  v122.i32[0] = *(result + 4 * (3 - v92));
                }

                if (v130 + 4 * v113 <= v14)
                {
                  v123.i32[0] = *(v130 + 3 - v92);
                }

                if (v132 + 4 * v113 <= v14)
                {
                  v124.i32[0] = *(v132 + 3 - v92);
                }

                a4 = v142;
              }

              if (((4 - v92) & 2) != 0)
              {
                v115 = vextq_s8(v115, v115, 8uLL);
                if (&v17->u64[1] <= v14)
                {
                  v133.i64[0] = v17->i64[0];
                  v133.i64[1] = vextq_s8(v115, v115, 8uLL).u64[0];
                  v115 = v133;
                }

                v122 = vextq_s8(v122, v122, 8uLL);
                if (result + 8 <= v14)
                {
                  v134.i64[0] = *result;
                  v134.i64[1] = vextq_s8(v122, v122, 8uLL).u64[0];
                  v122 = v134;
                }

                v123 = vextq_s8(v123, v123, 8uLL);
                if ((v130 + 1) <= v14)
                {
                  v135.i64[0] = *v130;
                  v135.i64[1] = vextq_s8(v123, v123, 8uLL).u64[0];
                  v123 = v135;
                }

                v124 = vextq_s8(v124, v124, 8uLL);
                if ((v132 + 1) <= v14)
                {
                  v136.i64[0] = *v132;
                  v136.i64[1] = vextq_s8(v124, v124, 8uLL).u64[0];
                  v124 = v136;
                }
              }

              v17 = (v17 + 4 * v113);
              goto LABEL_186;
            }
          }

          else
          {
            v118 = 0uLL;
            v119 = 0uLL;
            v120 = 0uLL;
            v121 = 0uLL;
            if (v17)
            {
              goto LABEL_159;
            }
          }

          v122 = 0uLL;
          v123 = 0uLL;
          v124 = 0uLL;
LABEL_186:
          if ((v109 < a10 || v109 >= v26) && (v109 < a12 || v109 >= v27) || (v110 < a10 || v110 >= v26) && (v110 < a12 || v110 >= v27) || (v111 < a10 || v111 >= v26) && (v111 < a12 || v111 >= v27) || (v112 < a10 || v112 >= v26) && (v112 < a12 || v112 >= v27))
          {
LABEL_210:
            exception = __cxa_allocate_exception(8uLL);
            *exception = -6;
          }

          v137 = vzip1q_s32(v118, v115);
          v138 = vzip1q_s32(v119, v122);
          v139 = vzip1q_s32(v120, v123);
          v18 = vzip1q_s32(v121, v124);
          if (((4 - v92) & 2) != 0)
          {
            *v109 = v137;
            *v110 = v138;
            *v111 = v139;
            *v112 = v18;
            if ((4 - v92))
            {
              v109[1].i64[0] = vzip2q_s32(v118, v115).u64[0];
              v110[1].i64[0] = vzip2q_s32(v119, v122).u64[0];
              v111[1].i64[0] = vzip2q_s32(v120, v123).u64[0];
              v112[1].i64[0] = vzip2q_s32(v121, v124).u64[0];
            }
          }

          else
          {
            v109->i64[0] = v137.i64[0];
            v110->i64[0] = v138.i64[0];
            v111->i64[0] = v139.i64[0];
            v112->i64[0] = v18.i64[0];
          }

LABEL_206:
          v21 = v144;
          v28 = v143;
          goto LABEL_207;
        }
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v57, a3);
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v56, a4);
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v55, a5);
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v54, a6);
  v23 = a12[2];
  v24 = a12[6];
  if (v23 <= v24)
  {
    LOWORD(v27) = v57;
    v25.i16[0] = v57;
    v25.i16[1] = v56;
    v25.i16[2] = v55;
    v25.i16[3] = v54;
    v25.i16[4] = v57;
    v25.i16[5] = v56;
    v25.i16[6] = v55;
    v25.i16[7] = v54;
    WORD1(v27) = v56;
    WORD2(v27) = v55;
    HIWORD(v27) = v54;
    while (1)
    {
      v28 = (a14 + a17);
      v29 = &a14->i8[a17 + a17];
      v30 = &v29[a17];
      if (a16)
      {
        if (v23 == a12[2])
        {
          v31 = a12[3] + 1;
          v32 = &v29[a17];
          v33 = &a14->i8[a17 + a17];
          v34 = (a14 + a17);
          v35 = a14;
          do
          {
            a14 = v35;
            v28 = v34;
            v29 = v33;
            v30 = v32;
            v32 = v33;
            v33 = v34;
            v34 = v35;
            v35 = a16;
            --v31;
          }

          while (v31);
        }

        if (v23 == v24)
        {
          v36 = a12[7];
          if (v36 == 1)
          {
            goto LABEL_13;
          }

          if (v36 == 2)
          {
            goto LABEL_12;
          }

          if (v36 == 3)
          {
            break;
          }
        }
      }

      v37 = v30;
LABEL_15:
      v39 = *a12;
      v38 = a12[1];
      v40 = a12[4];
      result = a12[5];
      if (v38)
      {
        v21.i32[0] = 0;
        result = 4 - result;
        if (v40 != v39)
        {
          result = 4;
        }

        v22.i32[0] = a12[1] & 2;
        v21 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v22, v21), 0), v25, v25);
        v41 = v21.i64[0];
        v42 = v21;
        v43 = v21.i64[0];
        v44 = v21;
        v45 = v21;
        v22 = v21;
        v46 = v21;
        if ((v38 & 2) != 0)
        {
          result -= 2;
        }

        if (v38)
        {
          v47 = vextq_s8(v21, v21, 8uLL).u64[0];
          v44 = vextq_s8(v21, v21, 8uLL);
          v42 = v44;
          v21 = v44;
          v48 = vextq_s8(v46, v22, 8uLL);
          --result;
          v22 = vextq_s8(v22, v46, 8uLL);
          v43 = v47;
          v41 = v47;
          v45 = v44;
          v46 = v48;
        }

        if (result <= 1)
        {
          v49 = 0;
        }

        else
        {
          *a14 = v44;
          *v28 = v42;
          result -= 2;
          v44.i64[0] = v43;
          v42.i64[0] = v41;
          *v29 = v21;
          v21 = v45;
          *v37 = v22;
          v22 = v46;
          v49 = 16;
        }

        if (result >= 1)
        {
          *(a14->i64 + v49) = v44.i64[0];
          *(v28->i64 + v49) = v42.i64[0];
          *&v29[v49] = v21.i64[0];
          *(v37 + v49) = v22.i64[0];
          v49 |= 8uLL;
        }

        v40 = a12[4];
        if (v40 == v39)
        {
          goto LABEL_42;
        }

        a14 = (a14 + v49);
        v28 = (v28 + v49);
        v29 += v49;
        v37 = (v37 + v49);
        result = a12[5];
        ++v39;
      }

      if (v40)
      {
        v50 = 0;
      }

      else
      {
        v50 = result != 0;
      }

      if (!v50)
      {
        v51 = v40 - (result != 0);
        if (v39 <= v51)
        {
          v52 = v51 - v39 + 1;
          do
          {
            *a14 = v25;
            a14[1] = v25;
            a14 += 2;
            *v28 = v25;
            v28[1] = v25;
            v28 += 2;
            *v29 = v25;
            *(v29 + 1) = v25;
            v29 += 32;
            *v37 = v25;
            v37[1] = v25;
            v37 += 2;
            --v52;
          }

          while (v52);
          result = a12[5];
        }
      }

      if (result)
      {
        if (((4 - result) & 2) != 0)
        {
          *a14 = v25;
          *v28 = v25;
          *v29 = v25;
          *v37 = v25;
          if ((4 - result))
          {
            a14[1].i64[0] = v27;
            v28[1].i64[0] = v27;
            *(v29 + 2) = v27;
            *(v37 + 2) = v27;
          }
        }

        else
        {
          a14->i64[0] = v27;
          v28->i64[0] = v27;
          *v29 = v27;
          *v37 = v27;
        }
      }

LABEL_42:
      a14 = &v30[a17];
      v24 = a12[6];
      if (v23++ >= v24)
      {
        return result;
      }
    }

    v28 = a16;
LABEL_12:
    v29 = a16;
LABEL_13:
    v37 = a16;
    goto LABEL_15;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, _OWORD *a14, uint64_t a15, _OWORD *a16, uint64_t a17)
{
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v54, a3);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v53, a4);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v52, a5);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v51, a6);
  v24 = a12[2];
  v25 = a12[6];
  if (v24 <= v25)
  {
    v27.i64[0] = __PAIR64__(v53, v54);
    v27.i64[1] = __PAIR64__(v51, v52);
    while (1)
    {
      v28 = (a14 + a17);
      v29 = (a14 + a17 + a17);
      v30 = (v29 + a17);
      if (a16)
      {
        if (v24 == a12[2])
        {
          v31 = a12[3] + 1;
          v32 = v29 + a17;
          v33 = (a14 + a17 + a17);
          v34 = (a14 + a17);
          v35 = a14;
          do
          {
            a14 = v35;
            v28 = v34;
            v29 = v33;
            v30 = v32;
            v32 = v33;
            v33 = v34;
            v34 = v35;
            v35 = a16;
            --v31;
          }

          while (v31);
        }

        if (v24 == v25)
        {
          v36 = a12[7];
          if (v36 == 1)
          {
            goto LABEL_13;
          }

          if (v36 == 2)
          {
            goto LABEL_12;
          }

          if (v36 == 3)
          {
            break;
          }
        }
      }

      v37 = v30;
LABEL_15:
      v39 = *a12;
      v38 = a12[1];
      v40 = a12[4];
      result = a12[5];
      if (v38)
      {
        v21.i32[0] = 0;
        v41 = 4 - result;
        if (v40 != v39)
        {
          v41 = 4;
        }

        v22.i32[0] = a12[1] & 2;
        v42 = vdupq_lane_s32(*&vceqq_s32(v22, v21), 0);
        if ((v38 & 2) != 0)
        {
          v41 -= 2;
        }

        result = v41 - (v38 & 1);
        v23.i32[0] = a12[1] & 1;
        v43 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v23, v21)), 0);
        v44 = vbslq_s8(v42, v27, v27);
        v21 = vbslq_s8(v43, v44, v44);
        v45 = v21;
        v22 = v21;
        v23 = v21;
        if (result <= 1)
        {
          v46 = 0;
        }

        else
        {
          *a14 = v21;
          a14[1] = v21;
          *v28 = v21;
          v28[1] = v21;
          *v29 = v21;
          v29[1] = v21;
          v45 = v21;
          v22 = v21;
          *v37 = v21;
          v23 = vbslq_s8(v43, v44, v44);
          result -= 2;
          v37[1] = v23;
          v46 = 32;
        }

        if (result >= 1)
        {
          *(a14 + v46) = v21;
          *(v28 + v46) = v45;
          *(v29 + v46) = v22;
          *(v37 + v46) = v23;
          v46 |= 0x10uLL;
        }

        v40 = a12[4];
        if (v40 == v39)
        {
          goto LABEL_40;
        }

        a14 = (a14 + v46);
        v28 = (v28 + v46);
        v29 = (v29 + v46);
        v37 = (v37 + v46);
        result = a12[5];
        ++v39;
      }

      if (v40)
      {
        v47 = 0;
      }

      else
      {
        v47 = result != 0;
      }

      if (!v47)
      {
        v48 = v40 - (result != 0);
        if (v39 <= v48)
        {
          v49 = v48 - v39 + 1;
          do
          {
            *a14 = v27;
            a14[1] = v27;
            a14[2] = v27;
            a14[3] = v27;
            a14 += 4;
            *v28 = v27;
            v28[1] = v27;
            v28[2] = v27;
            v28[3] = v27;
            v28 += 4;
            *v29 = v27;
            v29[1] = v27;
            v29[2] = v27;
            v29[3] = v27;
            v29 += 4;
            v37[2] = v27;
            v37[3] = v27;
            *v37 = v27;
            v37[1] = v27;
            v37 += 4;
            --v49;
          }

          while (v49);
          result = a12[5];
        }
      }

      if (result)
      {
        if (((4 - result) & 2) != 0)
        {
          *a14 = v27;
          a14[1] = v27;
          *v28 = v27;
          v28[1] = v27;
          *v29 = v27;
          v29[1] = v27;
          *v37 = v27;
          v37[1] = v27;
          if ((4 - result))
          {
            a14[2] = v27;
            v28[2] = v27;
            v29[2] = v27;
            v37[2] = v27;
          }
        }

        else
        {
          *a14 = v27;
          *v28 = v27;
          *v29 = v27;
          *v37 = v27;
        }
      }

LABEL_40:
      a14 = (v30 + a17);
      v25 = a12[6];
      if (v24++ >= v25)
      {
        return result;
      }
    }

    v28 = a16;
LABEL_12:
    v29 = a16;
LABEL_13:
    v37 = a16;
    goto LABEL_15;
  }

  return result;
}