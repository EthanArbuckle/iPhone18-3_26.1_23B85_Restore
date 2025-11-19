int16x8_t *sub_2772A3368(int16x8_t *result, int16x8_t *a2, int16x8_t *a3, uint64_t a4, _BYTE *a5, _BYTE *a6, _OWORD *a7, int a8)
{
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = vshlq_u16(*(asc_2773B6110 + ((*a5 >> 1) & 0x70)), vdupq_n_s16(*a5 & 0x1F));
    v10 = vshlq_u16(*(asc_2773B6110 + ((*a6 >> 1) & 0x70)), vdupq_n_s16(*a6 & 0x1F));
    v11 = vzip2q_s16(vdupq_lane_s64(result->i64[0], 0), *result);
    v12 = vqtbl1q_s8(vzip1q_s16(vqtbl1q_s8(v9, xmmword_2773B3DC0), vqtbl1q_s8(v10, xmmword_2773B3DC0)), xmmword_2773B3DF0);
    v13 = vmulq_s16(v11, v12);
    if (a8)
    {
      v14 = vuzp2q_s16(vmull_s16(*v11.i8, *v12.i8), vmull_high_s16(v11, v12));
      v15 = vzip1q_s16(v13, v14);
      v16 = vzip2q_s16(v13, v14);
      v17 = vaddq_s32(v15, v16);
      v18 = vsubq_s32(v15, v16);
      v19 = vzip2q_s64(v17, v18);
      v17.i64[1] = v18.i64[0];
      v20 = vaddq_s32(v17, v19);
      v21 = vsubq_s32(v17, v19);
      v22 = vzip2q_s64(v20, v21);
      v20.i64[1] = v21.i64[0];
      v23 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v20, 5uLL)), vshrq_n_s32(v22, 5uLL));
    }

    else
    {
      v24 = vqtbl1q_s8(v13, xmmword_2773B4400);
      v25 = vzip1q_s32(vqaddq_s16(v13, v24), vqsubq_s16(v13, v24));
      v26 = vqtbl1q_s8(v25, xmmword_2773B4400);
      v23 = vshrq_n_s16(vzip1q_s32(vqaddq_s16(v25, v26), vqsubq_s16(v25, v26)), 1uLL);
    }

    v27 = vqaddq_s16(v23, vqtbl1q_s8(xmmword_2773B5730, xmmword_2773B3DF0));
    if ((v8 & 2) != 0)
    {
      v32 = 0;
      v33 = vzip1q_s16(v9, v10);
      v34 = vzip2q_s16(v9, v10);
      v35 = a2 + 1;
      v36 = a3 + 1;
      v37.i64[0] = 0xFFFF00000000;
      v37.i64[1] = 0xFFFF00000000;
      do
      {
        v38 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(v35[-1], v37), 0xCuLL), vandq_s8(v35[-1], xmmword_2773B56B0)), vextq_s8(vandq_s8(v35[-1], xmmword_2773B56C0), 0, 2uLL));
        v39 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(v36[-1], v37), 0xCuLL), vandq_s8(v36[-1], xmmword_2773B56B0)), vextq_s8(vandq_s8(v36[-1], xmmword_2773B56C0), 0, 2uLL));
        v40 = vzip1q_s16(v38, v39);
        v41 = vzip2q_s16(v38, v39);
        v42 = vzip1q_s16(*v35, *v36);
        v43 = vzip2q_s16(*v35, *v36);
        if (a8)
        {
          v44 = vqtbl1q_s8(xmmword_2773B4420, xmmword_2773B3DF0);
          v45 = vmulq_s16(v40, v33);
          v46 = vuzp2q_s16(vmull_s16(*v40.i8, *v33.i8), vmull_high_s16(v40, v33));
          v47 = vshrq_n_u32(vaddq_s32(vzip2q_s16(v45, v46), v44), 4uLL);
          v48.i64[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u32(vaddq_s32(vzip1q_s16(v45, v46), v44), 4uLL), xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v48.i64[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v47, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v49 = vmulq_s16(v41, v34);
          v50 = vuzp2q_s16(vmull_s16(*v41.i8, *v34.i8), vmull_high_s16(v41, v34));
          v51 = vzip1q_s16(v49, v50);
          v52 = vzip2q_s16(v49, v50);
          v53 = vshrq_n_u32(vaddq_s32(v51, v44), 4uLL);
          v54 = vshrq_n_u32(vaddq_s32(v52, v44), 4uLL);
          v55.i64[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v53, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v55.i64[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v54, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v56 = vmulq_s16(v42, v33);
          v57 = vuzp2q_s16(vmull_s16(*v42.i8, *v33.i8), vmull_high_s16(v42, v33));
          v58 = vzip1q_s16(v56, v57);
          v59 = vzip2q_s16(v56, v57);
          v60 = vshrq_n_u32(vaddq_s32(v58, v44), 4uLL);
          v61 = vshrq_n_u32(vaddq_s32(v59, v44), 4uLL);
          v62.i64[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v60, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v62.i64[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v61, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v63 = vmulq_s16(v43, v34);
          v64 = vuzp2q_s16(vmull_s16(*v43.i8, *v34.i8), vmull_high_s16(v43, v34));
          v65 = vzip1q_s16(v63, v64);
          v66 = vshrq_n_u32(vaddq_s32(vzip2q_s16(v63, v64), v44), 4uLL);
          v67.i64[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u32(vaddq_s32(v65, v44), 4uLL), xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v67.i64[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v66, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
        }

        else
        {
          v48 = vmulq_s16(v40, v33);
          v55 = vmulq_s16(v41, v34);
          v62 = vmulq_s16(v42, v33);
          v67 = vmulq_s16(v43, v34);
        }

        v68 = (a7 + *(&word_2773B60E0 + v32 + 16));
        v48.i32[0] = v27.i32[0];
        v69 = vaddq_s16(v48, v62);
        v70 = vsubq_s16(v48, v62);
        v71 = vsubq_s16(vshrq_n_s16(v55, 1uLL), v67);
        v72 = vsraq_n_s16(v55, v67, 1uLL);
        v73 = vaddq_s16(v72, v69);
        v74 = vaddq_s16(v70, v71);
        v75 = vsubq_s16(v70, v71);
        v76 = vsubq_s16(v69, v72);
        v77 = vzip1q_s32(v73, v75);
        v78 = vzip2q_s32(v73, v75);
        v79 = vzip1q_s32(v74, v76);
        v80 = vzip2q_s32(v74, v76);
        v81 = vzip1q_s32(v77, v79);
        v82 = vzip2q_s32(v77, v79);
        v83 = vzip1q_s32(v78, v80);
        v84 = vzip2q_s32(v78, v80);
        v85 = vaddq_s16(v81, v83);
        v86 = vsubq_s16(v81, v83);
        v87 = vsubq_s16(vshrq_n_s16(v82, 1uLL), v84);
        v88 = vsraq_n_s16(v82, v84, 1uLL);
        *v68 = vshrq_n_s16(vaddq_s16(v85, v88), 6uLL);
        v68[2] = vshrq_n_s16(vaddq_s16(v86, v87), 6uLL);
        v68[4] = vshrq_n_s16(vsubq_s16(v86, v87), 6uLL);
        v68[6] = vshrq_n_s16(vsubq_s16(v85, v88), 6uLL);
        v27 = vqtbl1q_s8(v27, xmmword_2773B57E0);
        ++v32;
        v35 += 2;
        v36 += 2;
      }

      while (v32 != 4);
    }

    else
    {
      v28 = 0;
      v29 = vshrq_n_s16(v27, 6uLL);
      do
      {
        v30 = (a7 + *(&word_2773B60E0 + v28 + 16));
        v31 = vqtbl1q_s8(v29, xmmword_2773B3DF0);
        *v30 = v31;
        v30[2] = v31;
        v30[4] = v31;
        v30[6] = v31;
        v29 = vqtbl1q_s8(v29, xmmword_2773B57E0);
        ++v28;
      }

      while (v28 != 4);
    }
  }

  else
  {
    a7[14] = 0u;
    a7[15] = 0u;
    a7[12] = 0u;
    a7[13] = 0u;
    a7[10] = 0u;
    a7[11] = 0u;
    a7[8] = 0u;
    a7[9] = 0u;
    a7[6] = 0u;
    a7[7] = 0u;
    a7[4] = 0u;
    a7[5] = 0u;
    a7[2] = 0u;
    a7[3] = 0u;
    *a7 = 0u;
    a7[1] = 0u;
  }

  return result;
}

int16x8_t *sub_2772A376C(int16x8_t *result, unsigned __int8 a2, uint64_t a3, uint64_t a4, _DWORD *a5, int16x8_t *a6)
{
  v108 = *MEMORY[0x277D85DE8];
  v6 = a2 & 0x1F;
  v7 = v6 + 15;
  v8 = 1431655766 * (1 << ((a2 & 0x1F) + 15));
  v9 = 2 * (HIDWORD(v8) + (v8 >> 63));
  v10 = a2 >> 5;
  *a5 = 0;
  if (v6 < 6)
  {
    v54 = vdupq_n_s32(v9);
    v55 = vdupq_n_s32(~v7);
    v56 = vdupq_n_s32(0x20u >> v6);
    v57 = vdupq_n_s32((a2 & 0x1Fu) - 6);
    v58 = result + 1;
    v59 = a6 + 1;
    v60 = (v10 << 7) | 0x10;
    v61 = (&unk_2773B5A60 + v60);
    v62 = (&unk_2773B5D60 + v60);
    v63 = v107;
    v64 = -16;
    do
    {
      v65 = v58[-1];
      v66 = v61[-1];
      v67 = vcltzq_s16(v65);
      v68 = vcltzq_s16(*v58);
      v69 = vsubq_s16(veorq_s8(v67, v65), v67);
      v70 = vsubq_s16(veorq_s8(v68, *v58), v68);
      v71 = vmulq_s16(v69, v66);
      v72 = vuzp2q_s16(vmull_s16(*v69.i8, *v66.i8), vmull_high_s16(v69, v66));
      v73 = vzip1q_s16(v71, v72);
      v74 = vmulq_s16(v70, *v61);
      v75 = vuzp2q_s16(vmull_s16(*v70.i8, *v61->i8), vmull_high_s16(v70, *v61));
      v76 = vshlq_u32(vaddq_s32(v54, vzip2q_s16(v71, v72)), v55);
      v77 = vzip1q_s16(v67, v67);
      v78 = vsubq_s32(veorq_s8(vshlq_u32(vaddq_s32(v54, v73), v55), v77), v77);
      v79 = vzip2q_s16(v67, v67);
      v80 = vzip1q_s16(v68, v68);
      v81 = vsubq_s32(veorq_s8(v76, v79), v79);
      v82 = vzip2q_s16(v68, v68);
      v83 = vsubq_s32(veorq_s8(vshlq_u32(vaddq_s32(v54, vzip2q_s16(v74, v75)), v55), v82), v82);
      *v78.i8 = vqmovn_s32(v78);
      v84 = vqmovn_high_s32(*v78.i8, v81);
      v85 = vqmovn_s32(vsubq_s32(veorq_s8(vshlq_u32(vaddq_s32(v54, vzip1q_s16(v74, v75)), v55), v80), v80));
      v86 = vqmovn_high_s32(v85, v83);
      v87 = vandq_s8(vceqzq_s16(v84), xmmword_2773B5400);
      v88 = vpaddq_s8(v87, v87);
      v89 = vpaddq_s8(v88, v88);
      v90 = vandq_s8(vceqzq_s16(v86), xmmword_2773B5400);
      v91 = vpaddq_s8(v89, v89).u16[0];
      v92 = vpaddq_s8(v90, v90);
      v93 = vpaddq_s8(v92, v92);
      *a5 |= ~(vpaddq_s8(v93, v93).u16[0] | (v91 << 16));
      v94 = v62[-1];
      v95 = vmull_s16(vqmovn_s32(v81), *&vextq_s8(v94, v94, 8uLL));
      v96 = vmull_s16(*v78.i8, *v94.i8);
      v97 = vmulq_s16(v94, v84);
      v98 = vuzp2q_s16(v96, v95);
      v99 = vmulq_s16(*v62, v86);
      v100 = vuzp2q_s16(vmull_s16(v85, *v62->i8), vmull_s16(vqmovn_s32(v83), *&vextq_s8(*v62, *v62, 8uLL)));
      v59[-1] = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vshlq_n_s32(vzip1q_s16(v97, v98), 4uLL), v56), v57)), vshlq_s32(vaddq_s32(vshlq_n_s32(vzip2q_s16(v97, v98), 4uLL), v56), v57));
      *v59 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vshlq_n_s32(vzip1q_s16(v99, v100), 4uLL), v56), v57)), vshlq_s32(vaddq_s32(vshlq_n_s32(vzip2q_s16(v99, v100), 4uLL), v56), v57));
      v64 += 16;
      v58 += 2;
      v59 += 2;
      v63[-1] = v84;
      *v63 = v86;
      v61 += 2;
      v62 += 2;
      v63 += 2;
    }

    while (v64 < 0x30);
  }

  else
  {
    v11 = vdupq_n_s32(v9);
    v12 = vdupq_n_s32(~v7);
    v13 = vdupq_n_s32(v6 - 2);
    v14 = result + 1;
    v15 = a6 + 1;
    v16 = (v10 << 7) | 0x10;
    v17 = (&unk_2773B5A60 + v16);
    v18 = (&unk_2773B5D60 + v16);
    v19 = v107;
    v20 = -16;
    do
    {
      v21 = v14[-1];
      v22 = v17[-1];
      v23 = vcltzq_s16(v21);
      v24 = vcltzq_s16(*v14);
      v25 = vsubq_s16(veorq_s8(v23, v21), v23);
      v26 = vsubq_s16(veorq_s8(v24, *v14), v24);
      v27 = vmulq_s16(v25, v22);
      v28 = vuzp2q_s16(vmull_s16(*v25.i8, *v22.i8), vmull_high_s16(v25, v22));
      v29 = vzip1q_s16(v27, v28);
      v30 = vmulq_s16(v26, *v17);
      v31 = vuzp2q_s16(vmull_s16(*v26.i8, *v17->i8), vmull_high_s16(v26, *v17));
      v32 = vshlq_u32(vaddq_s32(v11, vzip2q_s16(v27, v28)), v12);
      v33 = vzip1q_s16(v23, v23);
      v34 = vsubq_s32(veorq_s8(vshlq_u32(vaddq_s32(v11, v29), v12), v33), v33);
      v35 = vzip2q_s16(v23, v23);
      v36 = vzip1q_s16(v24, v24);
      v37 = vsubq_s32(veorq_s8(v32, v35), v35);
      v38 = vzip2q_s16(v24, v24);
      v39 = vsubq_s32(veorq_s8(vshlq_u32(vaddq_s32(v11, vzip2q_s16(v30, v31)), v12), v38), v38);
      *v34.i8 = vqmovn_s32(v34);
      v40 = vqmovn_high_s32(*v34.i8, v37);
      v41 = vqmovn_s32(vsubq_s32(veorq_s8(vshlq_u32(vaddq_s32(v11, vzip1q_s16(v30, v31)), v12), v36), v36));
      v42 = vqmovn_high_s32(v41, v39);
      v43 = vandq_s8(vceqzq_s16(v40), xmmword_2773B5400);
      v44 = vpaddq_s8(v43, v43);
      v45 = vpaddq_s8(v44, v44);
      v46 = vandq_s8(vceqzq_s16(v42), xmmword_2773B5400);
      v47 = vpaddq_s8(v46, v46);
      v48 = vpaddq_s8(v47, v47);
      *a5 |= ~(vpaddq_s8(v48, v48).u16[0] | (vpaddq_s8(v45, v45).u16[0] << 16));
      v49 = v18[-1];
      v50 = vmulq_s16(v49, v40);
      v51 = vuzp2q_s16(vmull_s16(*v34.i8, *v49.i8), vmull_s16(vqmovn_s32(v37), *&vextq_s8(v49, v49, 8uLL)));
      v52 = vmulq_s16(*v18, v42);
      v53 = vuzp2q_s16(vmull_s16(v41, *v18->i8), vmull_s16(vqmovn_s32(v39), *&vextq_s8(*v18, *v18, 8uLL)));
      v15[-1] = vqmovn_high_s32(vqmovn_s32(vshlq_u32(vzip1q_s16(v50, v51), v13)), vshlq_u32(vzip2q_s16(v50, v51), v13));
      *v15 = vqmovn_high_s32(vqmovn_s32(vshlq_u32(vzip1q_s16(v52, v53), v13)), vshlq_u32(vzip2q_s16(v52, v53), v13));
      v20 += 16;
      v14 += 2;
      v15 += 2;
      v19[-1] = v40;
      *v19 = v42;
      v17 += 2;
      v18 += 2;
      v19 += 2;
    }

    while (v20 < 0x30);
  }

  v101 = v104;
  *a4 = v103;
  *(a4 + 10) = v101;
  v102 = v106;
  *(a4 + 28) = v105;
  *(a4 + 54) = v102;
  *(a4 + 4) = v107[0];
  *(a4 + 8) = v107[1];
  *(a4 + 14) = v107[2];
  *(a4 + 26) = v107[3];
  *(a4 + 32) = v107[4];
  *(a4 + 52) = v107[5];
  *(a4 + 58) = v107[6];
  *(a4 + 84) = v107[7];
  *(a4 + 6) = v107[8];
  *(a4 + 16) = v107[9];
  *(a4 + 24) = v107[10];
  *(a4 + 34) = v107[11];
  *(a4 + 50) = v107[12];
  *(a4 + 60) = v107[13];
  *(a4 + 82) = v107[14];
  *(a4 + 86) = v107[15];
  *(a4 + 18) = v107[16];
  *(a4 + 22) = v107[17];
  *(a4 + 36) = v107[18];
  *(a4 + 48) = v107[19];
  *(a4 + 62) = v107[20];
  *(a4 + 80) = v107[21];
  *(a4 + 88) = v107[22];
  *(a4 + 106) = v107[23];
  *(a4 + 20) = v107[24];
  *(a4 + 38) = v107[25];
  *(a4 + 46) = v107[26];
  *(a4 + 64) = v107[27];
  *(a4 + 78) = v107[28];
  *(a4 + 90) = v107[29];
  *(a4 + 104) = v107[30];
  *(a4 + 108) = v107[31];
  *(a4 + 40) = v107[32];
  *(a4 + 44) = v107[33];
  *(a4 + 66) = v107[34];
  *(a4 + 76) = v107[35];
  *(a4 + 92) = v107[36];
  *(a4 + 102) = v107[37];
  *(a4 + 110) = v107[38];
  *(a4 + 120) = v107[39];
  *(a4 + 42) = v107[40];
  *(a4 + 68) = v107[41];
  *(a4 + 74) = v107[42];
  *(a4 + 94) = v107[43];
  *(a4 + 100) = v107[44];
  *(a4 + 112) = v107[45];
  *(a4 + 118) = v107[46];
  *(a4 + 122) = v107[47];
  *(a4 + 70) = v107[48];
  *(a4 + 72) = v107[49];
  *(a4 + 96) = v107[50];
  *(a4 + 98) = v107[51];
  *(a4 + 114) = v107[52];
  *(a4 + 116) = v107[53];
  *(a4 + 124) = v107[54];
  *(a4 + 126) = v107[55];
  return result;
}

int16x8_t sub_2772A3D9C(int16x8_t *a1, int16x8_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = vzip1q_s16(*a1, v2);
  v10 = vzip2q_s16(*a1, v2);
  v11 = vzip1q_s16(v3, v4);
  v12 = vzip2q_s16(v3, v4);
  v13 = vzip1q_s16(v5, v6);
  v14 = vzip2q_s16(v5, v6);
  v15 = vzip1q_s16(v7, v8);
  v16 = vzip2q_s16(v7, v8);
  v17 = vzip1q_s32(v9, v11);
  v18 = vzip2q_s32(v9, v11);
  v19 = vzip1q_s32(v10, v12);
  v20 = vzip2q_s32(v10, v12);
  v21 = vzip1q_s32(v13, v15);
  v22 = vzip2q_s32(v13, v15);
  v23 = vzip1q_s32(v14, v16);
  v24 = vzip2q_s32(v14, v16);
  v25 = vzip2q_s64(v17, v21);
  v17.i64[1] = v21.i64[0];
  v26 = vzip2q_s64(v19, v23);
  v19.i64[1] = v23.i64[0];
  v27 = vzip2q_s64(v18, v22);
  v18.i64[1] = v22.i64[0];
  v28 = vzip2q_s64(v20, v24);
  v20.i64[1] = v24.i64[0];
  v29 = vaddq_s16(v28, v17);
  v30 = vsubq_s16(vaddq_s16(v17, v17), v29);
  v31 = vaddq_s16(v20, v25);
  v32 = vsubq_s16(vaddq_s16(v25, v25), v31);
  v33 = vaddq_s16(v26, v18);
  v34 = vsubq_s16(vaddq_s16(v18, v18), v33);
  v35 = vaddq_s16(v19, v27);
  v36 = vsubq_s16(vaddq_s16(v27, v27), v35);
  v37 = vaddq_s16(v35, v29);
  v38 = vsubq_s16(vaddq_s16(v29, v29), v37);
  v39 = vaddq_s16(v33, v31);
  v40 = vsubq_s16(vaddq_s16(v31, v31), v39);
  v41 = vaddq_s16(v36, v30);
  v42 = vaddq_s16(v30, v30);
  v43 = vaddq_s16(vsraq_n_s16(v30, v30, 1uLL), vaddq_s16(v32, v34));
  v44 = vsubq_s16(vaddq_s16(vsraq_n_s16(v36, v36, 1uLL), v32), v34);
  v45 = vsubq_s16(v42, vaddq_s16(vsraq_n_s16(v34, v34, 1uLL), v41));
  v46 = vsubq_s16(v41, vsraq_n_s16(v32, v32, 1uLL));
  v47 = vaddq_s16(v39, v37);
  v48 = vsubq_s16(vaddq_s16(v37, v37), v47);
  v49 = vshrq_n_s16(v43, 2uLL);
  v50 = vsraq_n_s16(v43, v44, 2uLL);
  v51 = vsubq_s16(v49, v44);
  v52 = vshrq_n_s16(v38, 1uLL);
  v53 = vsraq_n_s16(v38, v40, 1uLL);
  v54 = vsubq_s16(v52, v40);
  v55 = vshrq_n_s16(v45, 2uLL);
  v56 = vsraq_n_s16(v45, v46, 2uLL);
  v57 = vsubq_s16(v46, v55);
  v58 = vzip1q_s16(v47, v50);
  v59 = vzip2q_s16(v47, v50);
  v60 = vzip1q_s16(v53, v56);
  v61 = vzip2q_s16(v53, v56);
  v62 = vzip1q_s16(v48, v57);
  v63 = vzip2q_s16(v48, v57);
  v64 = vzip1q_s16(v54, v51);
  v65 = vzip2q_s16(v54, v51);
  v66 = vzip1q_s32(v58, v60);
  v67 = vzip2q_s32(v58, v60);
  v68 = vzip1q_s32(v59, v61);
  v69 = vzip2q_s32(v59, v61);
  v70 = vzip1q_s32(v62, v64);
  v71 = vzip2q_s32(v62, v64);
  v72 = vzip1q_s32(v63, v65);
  v73 = vzip2q_s32(v63, v65);
  v74 = vzip2q_s64(v66, v70);
  v66.i64[1] = v70.i64[0];
  v75 = vzip2q_s64(v68, v72);
  v68.i64[1] = v72.i64[0];
  v76 = vzip2q_s64(v67, v71);
  v67.i64[1] = v71.i64[0];
  v77 = vzip2q_s64(v69, v73);
  v69.i64[1] = v73.i64[0];
  v78 = vaddq_s16(v77, v66);
  v79 = vsubq_s16(vaddq_s16(v66, v66), v78);
  v80 = vaddq_s16(v69, v74);
  v81 = vsubq_s16(vaddq_s16(v74, v74), v80);
  v82 = vaddq_s16(v75, v67);
  v83 = vsubq_s16(vaddq_s16(v67, v67), v82);
  v84 = vaddq_s16(v68, v76);
  v85 = vsubq_s16(vaddq_s16(v76, v76), v84);
  v86 = vaddq_s16(v85, v79);
  v87 = vaddq_s16(v79, v79);
  v88 = vaddq_s16(vsraq_n_s16(v79, v79, 1uLL), vaddq_s16(v81, v83));
  v89 = vaddq_s16(v84, v78);
  v90 = vsubq_s16(vaddq_s16(v78, v78), v89);
  v91 = vaddq_s16(v82, v80);
  v92 = vsubq_s16(vaddq_s16(v80, v80), v91);
  v93 = vsubq_s16(vaddq_s16(vsraq_n_s16(v85, v85, 1uLL), v81), v83);
  v94 = vsubq_s16(v87, vaddq_s16(vsraq_n_s16(v83, v83, 1uLL), v86));
  v95 = vsubq_s16(v86, vsraq_n_s16(v81, v81, 1uLL));
  v96 = vaddq_s16(v91, v89);
  *a2 = v96;
  a2[1] = vsraq_n_s16(v88, v93, 2uLL);
  a2[2] = vsraq_n_s16(v90, v92, 1uLL);
  a2[3] = vsraq_n_s16(v94, v95, 2uLL);
  a2[4] = vsubq_s16(vaddq_s16(v89, v89), v96);
  a2[5] = vsubq_s16(v95, vshrq_n_s16(v94, 2uLL));
  result = vsubq_s16(vshrq_n_s16(v90, 1uLL), v92);
  a2[6] = result;
  a2[7] = vsubq_s16(vshrq_n_s16(v88, 2uLL), v93);
  return result;
}

int16x8_t sub_2772A3FD8(int16x8_t *a1, int16x8_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = vzip1q_s16(*a1, v2);
  v10 = vzip2q_s16(*a1, v2);
  v11 = vzip1q_s16(v3, v4);
  v12 = vzip2q_s16(v3, v4);
  v13 = vzip1q_s16(v5, v6);
  v14 = vzip2q_s16(v5, v6);
  v15 = vzip1q_s16(v7, v8);
  v16 = vzip2q_s16(v7, v8);
  v17 = vzip1q_s32(v9, v11);
  v18 = vzip2q_s32(v9, v11);
  v19 = vzip1q_s32(v10, v12);
  v20 = vzip2q_s32(v10, v12);
  v21 = vzip1q_s32(v13, v15);
  v22 = vzip2q_s32(v13, v15);
  v23 = vzip1q_s32(v14, v16);
  v24 = vzip2q_s64(v17, v21);
  v17.i64[1] = v21.i64[0];
  v25 = vzip2q_s64(v19, v23);
  v19.i64[1] = v23.i64[0];
  v26 = vzip2q_s64(v18, v22);
  v18.i64[1] = v22.i64[0];
  v27 = vzip2q_s32(v14, v16);
  v28 = vzip2q_s64(v20, v27);
  v20.i64[1] = v27.i64[0];
  v29 = vaddq_s16(v19, v17);
  v30 = vsubq_s16(vaddq_s16(v17, v17), v29);
  v31 = vsubq_s16(vshrq_n_s16(v18, 1uLL), v20);
  v32 = vsraq_n_s16(v18, v20, 1uLL);
  v33 = vaddq_s16(v26, v25);
  v34 = vsubq_s16(v25, vsraq_n_s16(vaddq_s16(v26, v28), v28, 1uLL));
  v35 = vsubq_s16(vaddq_s16(vsraq_n_s16(v25, v25, 1uLL), v28), v24);
  v36 = vaddq_s16(vsraq_n_s16(v24, v24, 1uLL), v33);
  v37 = vsubq_s16(vaddq_s16(v28, v24), vsraq_n_s16(v26, v26, 1uLL));
  v38 = vaddq_s16(v32, v29);
  v39 = vsubq_s16(vaddq_s16(v29, v29), v38);
  v40 = vaddq_s16(v30, v31);
  v41 = vsubq_s16(vaddq_s16(v30, v30), v40);
  v42 = vshrq_n_s16(v34, 2uLL);
  v43 = vsraq_n_s16(v34, v36, 2uLL);
  v44 = vsubq_s16(v36, v42);
  v45 = vshrq_n_s16(v37, 2uLL);
  v46 = vsraq_n_s16(v37, v35, 2uLL);
  v47 = vaddq_s16(v44, v38);
  v48 = vsubq_s16(vaddq_s16(v38, v38), v47);
  v49 = vaddq_s16(vsubq_s16(v45, v35), v40);
  v50 = vsubq_s16(vaddq_s16(v40, v40), v49);
  v51 = vaddq_s16(v46, v41);
  v52 = vsubq_s16(vaddq_s16(v41, v41), v51);
  v53 = vaddq_s16(v43, v39);
  v54 = vsubq_s16(vaddq_s16(v39, v39), v53);
  v55 = vzip1q_s16(v47, v49);
  v56 = vzip2q_s16(v47, v49);
  v57 = vzip1q_s16(v51, v53);
  v58 = vzip2q_s16(v51, v53);
  v59 = vzip1q_s16(v54, v52);
  v60 = vzip2q_s16(v54, v52);
  v61 = vzip1q_s16(v50, v48);
  v62 = vzip2q_s16(v50, v48);
  v63 = vzip1q_s32(v55, v57);
  v64 = vzip2q_s32(v55, v57);
  v65 = vzip1q_s32(v56, v58);
  v66 = vzip2q_s32(v56, v58);
  v67 = vzip1q_s32(v59, v61);
  v68 = vzip2q_s32(v59, v61);
  v69 = vzip1q_s32(v60, v62);
  v70 = vzip2q_s64(v63, v67);
  v63.i64[1] = v67.i64[0];
  v71 = vzip2q_s64(v65, v69);
  v65.i64[1] = v69.i64[0];
  v72 = vzip2q_s32(v60, v62);
  v73 = vzip2q_s64(v64, v68);
  v64.i64[1] = v68.i64[0];
  v74 = vzip2q_s64(v66, v72);
  v66.i64[1] = v72.i64[0];
  v72.i64[0] = 0x20002000200020;
  v72.i64[1] = 0x20002000200020;
  v75 = vaddq_s16(v63, v72);
  v76 = vaddq_s16(v75, v65);
  v77 = vsubq_s16(vaddq_s16(v75, v75), v76);
  v78 = vsubq_s16(vshrq_n_s16(v64, 1uLL), v66);
  v79 = vsraq_n_s16(v64, v66, 1uLL);
  v80 = vsubq_s16(vaddq_s16(vsraq_n_s16(v71, v71, 1uLL), v74), v70);
  v81 = vaddq_s16(v74, v70);
  v82 = vaddq_s16(vsraq_n_s16(v70, v70, 1uLL), vaddq_s16(v73, v71));
  v83 = vaddq_s16(vsraq_n_s16(v74, v74, 1uLL), v73);
  v84 = vsubq_s16(v81, vsraq_n_s16(v73, v73, 1uLL));
  v85 = vsubq_s16(v71, v83);
  v86 = vaddq_s16(v79, v76);
  v87 = vsubq_s16(vaddq_s16(v76, v76), v86);
  v88 = vaddq_s16(v77, v78);
  v89 = vsubq_s16(vaddq_s16(v77, v77), v88);
  v90 = vshrq_n_s16(v84, 2uLL);
  v91 = vsraq_n_s16(v84, v80, 2uLL);
  v92 = vaddq_s16(vsubq_s16(v82, vshrq_n_s16(v85, 2uLL)), v86);
  v93 = vaddq_s16(vsubq_s16(v90, v80), v88);
  v94 = vsubq_s16(vaddq_s16(v88, v88), v93);
  v95 = vaddq_s16(v91, v89);
  v96 = vaddq_s16(vsraq_n_s16(v85, v82, 2uLL), v87);
  *a2 = vshrq_n_s16(v92, 6uLL);
  a2[1] = vshrq_n_s16(v93, 6uLL);
  a2[2] = vshrq_n_s16(v95, 6uLL);
  a2[3] = vshrq_n_s16(v96, 6uLL);
  a2[4] = vshrq_n_s16(vsubq_s16(vaddq_s16(v87, v87), v96), 6uLL);
  a2[5] = vshrq_n_s16(vsubq_s16(vaddq_s16(v89, v89), v95), 6uLL);
  result = vshrq_n_s16(vsubq_s16(vaddq_s16(v86, v86), v92), 6uLL);
  a2[6] = vshrq_n_s16(v94, 6uLL);
  a2[7] = result;
  return result;
}

int32x4_t sub_2772A4238(uint64_t a1, int32x4_t *a2, int a3, int a4, unsigned int a5, __int32 a6, unsigned int a7, uint16x8_t a8)
{
  v8 = *(a1 + 16);
  v9.i64[0] = 0xFFFF00000000;
  v9.i64[1] = 0xFFFF00000000;
  v10 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(*a1, v9), 0xCuLL), vandq_s8(*a1, xmmword_2773B56B0)), vextq_s8(vandq_s8(*a1, xmmword_2773B56C0), 0, 2uLL));
  v11 = vzip1q_s64(v10, v8);
  v12 = vzip2q_s64(v10, v8);
  if (!a4)
  {
    if ((a8.i8[0] & 3) != 0)
    {
      v25 = xmmword_2773B5720;
    }

    else
    {
      a8 = vshrq_n_u16(a8, 2uLL);
      v25 = 0uLL;
    }

    v30 = vuzp2q_s16(vmull_s16(*v11.i8, *a8.i8), vmull_high_s16(v11, a8));
    v31 = vmulq_s16(a8, v11);
    v18 = vzip2q_s16(v31, v30);
    v19 = vaddq_s32(v25, vzip1q_s16(v31, v30));
    v28 = vuzp2q_s16(vmull_s16(*v12.i8, *a8.i8), vmull_high_s16(v12, a8));
    v29 = vmulq_s16(a8, v12);
    goto LABEL_9;
  }

  if (!a3)
  {
    v25.i32[0] = a6;
    v26 = vuzp2q_s16(vmull_s16(*v11.i8, *a8.i8), vmull_high_s16(v11, a8));
    v27 = vmulq_s16(v11, a8);
    v18 = vzip2q_s16(v27, v26);
    v19 = vaddq_s32(a7, vzip1q_s16(v27, v26));
    v28 = vuzp2q_s16(vmull_s16(*v12.i8, *a8.i8), vmull_high_s16(v12, a8));
    v29 = vmulq_s16(v12, a8);
LABEL_9:
    v23 = vzip2q_s16(v29, v28);
    v24 = vzip1q_s16(v29, v28);
    goto LABEL_10;
  }

  v13 = vuzp2q_s16(vmull_s16(*v11.i8, *a8.i8), vmull_high_s16(v11, a8));
  v14 = vmulq_s16(v11, a8);
  v15 = vzip2q_s16(v14, v13);
  v16 = vdupq_n_s32(a5);
  v17 = vzip1q_s16(v14, v13);
  v18 = vshlq_u32(v15, v16);
  v19 = vshlq_u32(v17, v16);
  v20 = vuzp2q_s16(vmull_s16(*v12.i8, *a8.i8), vmull_high_s16(v12, a8));
  v21 = vmulq_s16(v12, a8);
  v22 = vzip2q_s16(v21, v20);
  v25 = vzip1q_s16(v21, v20);
  v23 = vshlq_u32(v22, v16);
  v24 = vshlq_u32(v25, v16);
  v25.i32[0] = 0;
LABEL_10:
  v32 = vaddq_s32(v19, v24);
  v33 = vaddq_s32(v18, v23);
  v34 = vsubq_s32(v19, v24);
  v35 = vsubq_s32(v18, v23);
  v36 = vaddq_s32(v32, v33);
  v37 = vsubq_s32(v32, v33);
  v38 = vsubq_s32(v34, v35);
  v39 = vaddq_s32(v34, v35);
  v40 = vzip1q_s32(v36, v38);
  v41 = vzip2q_s32(v36, v38);
  v42 = vzip1q_s32(v37, v39);
  v43 = vzip2q_s32(v37, v39);
  v44 = vzip1q_s32(v40, v42);
  v45 = vzip2q_s32(v40, v42);
  v46 = vzip1q_s32(v41, v43);
  v47 = vzip2q_s32(v41, v43);
  v48 = vaddq_s32(v44, v45);
  v49 = vsubq_s32(v44, v45);
  v50 = vaddq_s32(v46, v47);
  v51 = vsubq_s32(v46, v47);
  v52 = vaddq_s32(v48, v50);
  v53 = vsubq_s32(v48, v50);
  v54 = vsubq_s32(v49, v51);
  v55 = vaddq_s32(v49, v51);
  v56 = vdupq_n_s32(-v25.i32[0]);
  v57 = vshlq_s32(v52, v56);
  v58 = vshlq_s32(v53, v56);
  v59 = vshlq_s32(v54, v56);
  v60 = vshlq_s32(v55, v56);
  *v56.i8 = vqmovn_s32(v57);
  *v57.i8 = vqmovn_s32(v58);
  *v58.i8 = vqmovn_s32(v59);
  *v60.i8 = vqmovn_s32(v60);
  result = vzip1q_s32(v58, v60);
  *a2 = vzip1q_s32(v56, v57);
  a2[1] = result;
  return result;
}

int16x8_t sub_2772A43FC(uint64_t a1, uint64_t a2, int16x8_t *a3, int a4, unsigned int a5, int a6, unsigned int a7, int a8, int16x8_t a9, __n128 a10, int16x8_t a11)
{
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v13.i64[0] = 0xFFFF00000000;
  v13.i64[1] = 0xFFFF00000000;
  v14 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(*a1, v13), 0xCuLL), vandq_s8(*a1, xmmword_2773B56B0)), vextq_s8(vandq_s8(*a1, xmmword_2773B56C0), 0, 2uLL));
  v15 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(*a2, v13), 0xCuLL), vandq_s8(*a2, xmmword_2773B56B0)), vextq_s8(vandq_s8(*a2, xmmword_2773B56C0), 0, 2uLL));
  if (a8)
  {
    if (a4)
    {
      v16 = vdupq_n_s16(a5);
      v17 = vshlq_u16(vmulq_s16(v14, a11), v16);
      v18 = vshlq_u16(vmulq_s16(v11, a11), v16);
      v19 = vshlq_u16(vmulq_s16(v15, a11), v16);
      v20 = vshlq_u16(vmulq_s16(v12, a11), v16);
    }

    else
    {
      v23 = vqtbl1q_s8(a7, xmmword_2773B3DF0);
      v24 = vuzp2q_s16(vmull_s16(*v14.i8, *a11.i8), vmull_high_s16(v14, a11));
      v25 = vmulq_s16(v14, a11);
      v26 = vzip2q_s16(v25, v24);
      v27 = vzip1q_s16(v25, v24);
      v28 = vaddq_s32(v26, v23);
      v29 = vdupq_n_s32(-a6);
      v17 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(v27, v23), v29)), vshlq_s32(v28, v29));
      v30 = vuzp2q_s16(vmull_s16(*v11.i8, *a11.i8), vmull_high_s16(v11, a11));
      v31 = vmulq_s16(v11, a11);
      v18 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v31, v30), v23), v29)), vshlq_s32(vaddq_s32(vzip2q_s16(v31, v30), v23), v29));
      v32 = vuzp2q_s16(vmull_s16(*v15.i8, *a11.i8), vmull_high_s16(v15, a11));
      v33 = vmulq_s16(v15, a11);
      v19 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v33, v32), v23), v29)), vshlq_s32(vaddq_s32(vzip2q_s16(v33, v32), v23), v29));
      v34 = vuzp2q_s16(vmull_s16(*v12.i8, *a11.i8), vmull_high_s16(v12, a11));
      v35 = vmulq_s16(v12, a11);
      v20 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v35, v34), v23), v29)), vshlq_s32(vaddq_s32(vzip2q_s16(v35, v34), v23), v29));
    }

    v21 = vaddq_s16(v17, a9);
    v22 = vaddq_s16(v19, a9);
  }

  else
  {
    v21 = vmlaq_s16(a9, v14, a11);
    v18 = vmulq_s16(v11, a11);
    v22 = vmlaq_s16(a9, v15, a11);
    v20 = vmulq_s16(v12, a11);
  }

  v36.i64[0] = v21.i64[0];
  v36.i16[0] = a9.i16[0];
  v37 = vzip2q_s64(v21, v22);
  v22.i16[0] = a10.n128_u16[0];
  v36.i64[1] = v22.i64[0];
  v38.i64[0] = v18.i64[0];
  v38.i64[1] = v20.i64[0];
  v39 = vzip2q_s64(v18, v20);
  v40 = vaddq_s16(v38, v36);
  v41 = vsubq_s16(v36, v38);
  v42 = vsubq_s16(vshrq_n_s16(v37, 1uLL), v39);
  v43 = vsraq_n_s16(v37, v39, 1uLL);
  v44 = vaddq_s16(v40, v43);
  v45 = vaddq_s16(v41, v42);
  v46 = vsubq_s16(v41, v42);
  v47 = vsubq_s16(v40, v43);
  v48 = vzip1q_s16(v44, v46);
  v49 = vzip2q_s16(v44, v46);
  v50 = vzip2q_s16(v45, v47);
  v51 = vzip1q_s16(v45, v47);
  v52 = vzip1q_s16(v48, v51);
  v53 = vzip2q_s16(vdupq_lane_s64(v49.i64[0], 0), vdupq_lane_s64(v50.i64[0], 0));
  v54.i64[0] = v52.i64[0];
  v54.i64[1] = v53.i64[0];
  v55 = vzip2q_s64(v52, v53);
  v64.val[1] = vdupq_laneq_s64(v48, 1);
  v64.val[0] = vdupq_laneq_s64(v51, 1);
  v56 = vqtbl2q_s8(v64, xmmword_2773B4490);
  v57 = vzip2q_s16(v49, v50);
  v48.i64[0] = v56.i64[0];
  v48.i64[1] = v57.i64[0];
  v58 = vzip2q_s64(v56, v57);
  v59 = vaddq_s16(v54, v48);
  v60 = vsubq_s16(v54, v48);
  v61 = vsubq_s16(vshrq_n_s16(v55, 1uLL), v58);
  v62 = vsraq_n_s16(v55, v58, 1uLL);
  *a3 = vshrq_n_s16(vaddq_s16(v59, v62), 6uLL);
  a3[2] = vshrq_n_s16(vaddq_s16(v60, v61), 6uLL);
  result = vshrq_n_s16(vsubq_s16(v59, v62), 6uLL);
  a3[4] = vshrq_n_s16(vsubq_s16(v60, v61), 6uLL);
  a3[6] = result;
  return result;
}

int16x8_t sub_2772A4660(int8x16_t *a1, int8x16_t *a2, int16x8_t *a3, int a4, unsigned int a5, int a6, unsigned int a7, int16x8_t a8, int16x8_t a9)
{
  v9 = a1[1];
  v10 = a2[1];
  v65.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*a1, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
  v65.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v9, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
  v11 = vqtbl2q_s8(v65, xmmword_2773B5790);
  v66.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*a1, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
  v66.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v9, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
  v12 = vqtbl2q_s8(v66, xmmword_2773B57D0);
  v63.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*a2, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
  v63.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v10, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
  v13 = vqtbl2q_s8(v63, xmmword_2773B5790);
  v63.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*a2, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
  v63.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v10, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
  v14 = vqtbl2q_s8(v63, xmmword_2773B57D0);
  if (a4)
  {
    v15 = vdupq_n_s16(a5);
    v16 = vshlq_u16(vmulq_s16(v11, a9), v15);
    v17 = vshlq_u16(vmulq_s16(v12, a9), v15);
    v18 = vshlq_u16(vmulq_s16(v13, a9), v15);
    v19 = vshlq_u16(vmulq_s16(v14, a9), v15);
  }

  else
  {
    v20 = vqtbl1q_s8(a7, xmmword_2773B3DF0);
    v21 = vuzp2q_s16(vmull_s16(*v11.i8, *a9.i8), vmull_high_s16(v11, a9));
    v22 = vmulq_s16(v11, a9);
    v23 = vzip2q_s16(v22, v21);
    v24 = vzip1q_s16(v22, v21);
    v25 = vaddq_s32(v23, v20);
    v26 = vdupq_n_s32(-a6);
    v16 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(v24, v20), v26)), vshlq_s32(v25, v26));
    v27 = vuzp2q_s16(vmull_s16(*v12.i8, *a9.i8), vmull_high_s16(v12, a9));
    v28 = vmulq_s16(v12, a9);
    v17 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v28, v27), v20), v26)), vshlq_s32(vaddq_s32(vzip2q_s16(v28, v27), v20), v26));
    v29 = vuzp2q_s16(vmull_s16(*v13.i8, *a9.i8), vmull_high_s16(v13, a9));
    v30 = vmulq_s16(v13, a9);
    v18 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v30, v29), v20), v26)), vshlq_s32(vaddq_s32(vzip2q_s16(v30, v29), v20), v26));
    v31 = vuzp2q_s16(vmull_s16(*v14.i8, *a9.i8), vmull_high_s16(v14, a9));
    v32 = vmulq_s16(v14, a9);
    v19 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v32, v31), v20), v26)), vshlq_s32(vaddq_s32(vzip2q_s16(v32, v31), v20), v26));
  }

  v33 = vaddq_s16(v16, a8);
  v34 = vaddq_s16(v18, a8);
  v35.i64[0] = v33.i64[0];
  v35.i64[1] = v34.i64[0];
  v36.i64[0] = v17.i64[0];
  v36.i64[1] = v19.i64[0];
  v37 = vzip2q_s64(v33, v34);
  v38 = vzip2q_s64(v17, v19);
  v39 = vaddq_s16(v35, v36);
  v40 = vsubq_s16(v35, v36);
  v41 = vsubq_s16(vshrq_n_s16(v37, 1uLL), v38);
  v42 = vsraq_n_s16(v37, v38, 1uLL);
  v43 = vaddq_s16(v39, v42);
  v44 = vaddq_s16(v40, v41);
  v45 = vsubq_s16(v40, v41);
  v46 = vsubq_s16(v39, v42);
  v47 = vzip1q_s16(v43, v45);
  v48 = vzip2q_s16(v43, v45);
  v49 = vzip2q_s16(v44, v46);
  v50 = vzip1q_s16(v44, v46);
  v51 = vzip1q_s16(v47, v50);
  v52 = vzip2q_s16(vdupq_lane_s64(v48.i64[0], 0), vdupq_lane_s64(v49.i64[0], 0));
  v53.i64[0] = v51.i64[0];
  v53.i64[1] = v52.i64[0];
  v54 = vzip2q_s64(v51, v52);
  v64.val[1] = vdupq_laneq_s64(v47, 1);
  v64.val[0] = vdupq_laneq_s64(v50, 1);
  v55 = vqtbl2q_s8(v64, xmmword_2773B4490);
  v56 = vzip2q_s16(v48, v49);
  v47.i64[0] = v55.i64[0];
  v47.i64[1] = v56.i64[0];
  v57 = vzip2q_s64(v55, v56);
  v58 = vaddq_s16(v53, v47);
  v59 = vsubq_s16(v53, v47);
  v60 = vsubq_s16(vshrq_n_s16(v54, 1uLL), v57);
  v61 = vsraq_n_s16(v54, v57, 1uLL);
  *a3 = vshrq_n_s16(vaddq_s16(v58, v61), 6uLL);
  a3[2] = vshrq_n_s16(vaddq_s16(v59, v60), 6uLL);
  result = vshrq_n_s16(vsubq_s16(v58, v61), 6uLL);
  a3[4] = vshrq_n_s16(vsubq_s16(v59, v60), 6uLL);
  a3[6] = result;
  return result;
}

int16x8_t sub_2772A492C(_OWORD *a1, _OWORD *a2, int16x8_t *a3, int a4, int16x8_t a5, int16x8_t a6)
{
  v7 = *a1;
  v6 = *(a1 + 1);
  v9 = *a2;
  v8 = *(a2 + 1);
  if (a4)
  {
    v10.i64[0] = 0xFFFF00000000;
    v10.i64[1] = 0xFFFF00000000;
    v11 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(v7, v10), 0xCuLL), vandq_s8(v7, xmmword_2773B56B0)), vextq_s8(vandq_s8(v7, xmmword_2773B56C0), 0, 2uLL));
    v12 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(v9, v10), 0xCuLL), vandq_s8(v9, xmmword_2773B56B0)), vextq_s8(vandq_s8(v9, xmmword_2773B56C0), 0, 2uLL));
  }

  else
  {
    v46.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v7, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
    v46.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v6, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
    v11 = vqtbl2q_s8(v46, xmmword_2773B5790);
    v47.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v7, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
    v47.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v6, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
    v6 = vqtbl2q_s8(v47, xmmword_2773B57D0);
    v43.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v9, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
    v43.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v8, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
    v12 = vqtbl2q_s8(v43, xmmword_2773B5790);
    v44.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v9, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
    v44.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v8, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
    v8 = vqtbl2q_s8(v44, xmmword_2773B57D0);
  }

  v13 = vmlaq_s16(a5, v11, a6);
  v14 = vmulq_s16(v6, a6);
  v15 = vmlaq_s16(a5, v12, a6);
  v16 = vmulq_s16(v8, a6);
  v17 = vzip2q_s64(v13, v15);
  v13.i64[1] = v15.i64[0];
  v18 = vzip2q_s64(v14, v16);
  v14.i64[1] = v16.i64[0];
  v19 = vaddq_s16(v13, v14);
  v20 = vsubq_s16(v13, v14);
  v21 = vsubq_s16(vshrq_n_s16(v17, 1uLL), v18);
  v22 = vsraq_n_s16(v17, v18, 1uLL);
  v23 = vaddq_s16(v19, v22);
  v24 = vaddq_s16(v20, v21);
  v25 = vsubq_s16(v20, v21);
  v26 = vsubq_s16(v19, v22);
  v27 = vzip1q_s16(v23, v25);
  v28 = vzip2q_s16(v23, v25);
  v29 = vzip2q_s16(v24, v26);
  v30 = vzip1q_s16(v24, v26);
  v31 = vzip1q_s16(v27, v30);
  v32 = vzip2q_s16(vdupq_lane_s64(v28.i64[0], 0), vdupq_lane_s64(v29.i64[0], 0));
  v33.i64[0] = v31.i64[0];
  v33.i64[1] = v32.i64[0];
  v34 = vzip2q_s64(v31, v32);
  v45.val[1] = vdupq_laneq_s64(v27, 1);
  v45.val[0] = vdupq_laneq_s64(v30, 1);
  v35 = vqtbl2q_s8(v45, xmmword_2773B4490);
  v36 = vzip2q_s16(v28, v29);
  v27.i64[0] = v35.i64[0];
  v27.i64[1] = v36.i64[0];
  v37 = vzip2q_s64(v35, v36);
  v38 = vaddq_s16(v33, v27);
  v39 = vsubq_s16(v33, v27);
  v40 = vsubq_s16(vshrq_n_s16(v34, 1uLL), v37);
  v41 = vsraq_n_s16(v34, v37, 1uLL);
  *a3 = vshrq_n_s16(vaddq_s16(v38, v41), 6uLL);
  a3[2] = vshrq_n_s16(vaddq_s16(v39, v40), 6uLL);
  result = vshrq_n_s16(vsubq_s16(v38, v41), 6uLL);
  a3[4] = vshrq_n_s16(vsubq_s16(v39, v40), 6uLL);
  a3[6] = result;
  return result;
}

uint64_t sub_2772A4B4C(unsigned __int16 *a1, unsigned __int16 *a2, __int16 *a3, __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, _WORD *a7, int a8, int a9, char a10, char a11, char a12, __int16 a13, int a14)
{
  v14 = a2[13];
  v15 = a8 == 0;
  if (a8)
  {
    v16 = a2[14];
  }

  else
  {
    v16 = a2[13];
  }

  if (!a8)
  {
    v14 = a2[12];
  }

  v309 = v14;
  if (a8)
  {
    v17 = a2[12];
  }

  else
  {
    v17 = a2[6];
  }

  v243 = v17;
  if (a8)
  {
    v18 = a2[11];
  }

  else
  {
    v18 = a2[14];
  }

  v235 = v18;
  if (a8)
  {
    v19 = a2[10];
  }

  else
  {
    v19 = a2[11];
  }

  v245 = v19;
  if (a8)
  {
    v20 = a2[7];
  }

  else
  {
    v20 = a2[10];
  }

  v269 = v16;
  v271 = v20;
  if (a8)
  {
    v21 = a2[9];
  }

  else
  {
    v21 = a2[7];
  }

  v248 = v21;
  if (a8)
  {
    v22 = a2[6];
  }

  else
  {
    v22 = a2[8];
  }

  v263 = v22;
  if (a8)
  {
    v23 = a2[8];
  }

  else
  {
    v23 = a2[5];
  }

  v253 = v23;
  if (a8)
  {
    v24 = a2[5];
  }

  else
  {
    v24 = a2[4];
  }

  v250 = v24;
  if (a8)
  {
    v25 = a2[4];
  }

  else
  {
    v25 = a2[9];
  }

  v226 = v25;
  if (a8)
  {
    v26 = a2[2];
  }

  else
  {
    v26 = a2[1];
  }

  if (a8)
  {
    v27 = a2[1];
  }

  else
  {
    v27 = a2[2];
  }

  if (v15)
  {
    v28 = a1[13];
  }

  else
  {
    v28 = a1[14];
  }

  v260 = v28;
  if (v15)
  {
    v29 = a1[12];
  }

  else
  {
    v29 = a1[13];
  }

  v240 = v29;
  if (v15)
  {
    v30 = a1[6];
  }

  else
  {
    v30 = a1[12];
  }

  v229 = v30;
  v232 = v26;
  if (v15)
  {
    v31 = a1[14];
  }

  else
  {
    v31 = a1[11];
  }

  v223 = v31;
  if (v15)
  {
    v32 = a1[11];
  }

  else
  {
    v32 = a1[10];
  }

  if (v15)
  {
    v33 = a1[10];
  }

  else
  {
    v33 = a1[7];
  }

  v266 = v33;
  if (v15)
  {
    v34 = a1[7];
  }

  else
  {
    v34 = a1[9];
  }

  if (v15)
  {
    v35 = a1[8];
  }

  else
  {
    v35 = a1[6];
  }

  v257 = v35;
  v36 = a1[5];
  if (v15)
  {
    v37 = a1[5];
  }

  else
  {
    v37 = a1[8];
  }

  if (v15)
  {
    v36 = a1[4];
  }

  v237 = v36;
  if (v15)
  {
    v38 = a1[9];
  }

  else
  {
    v38 = a1[4];
  }

  if (v15)
  {
    v39 = a1[1];
  }

  else
  {
    v39 = a1[2];
  }

  if (v15)
  {
    v40 = a1[2];
  }

  else
  {
    v40 = a1[1];
  }

  v41 = *a3;
  v42 = a3[1];
  v43 = a3[2];
  v44 = a3[3];
  v45 = a3[4];
  v46 = a3[5];
  v47 = a3[6];
  v48 = a3[7];
  v285 = *a4;
  v289 = a4[1];
  v293 = a4[2];
  v295 = a4[3];
  v300 = a4[4];
  v302 = a4[5];
  v304 = a4[6];
  v306 = a4[7];
  v273 = *a5;
  v275 = a5[1];
  v277 = a5[2];
  v279 = a5[3];
  v281 = a5[4];
  v283 = a5[5];
  v287 = a5[6];
  v291 = a5[7];
  v49 = *a6;
  v50 = a6[1];
  v51 = a6[2];
  v52 = a6[3];
  v53 = a6[4];
  v54 = a6[5];
  v55 = a6[6];
  v56 = a6[7];
  v57 = *a1;
  v58 = a1[3];
  v59 = a1[15];
  v60 = *a2;
  v214 = a2[3];
  v61 = a2[15];
  v297 = v41;
  if (a14)
  {
    v190 = v52;
    v192 = v38;
    v194 = v53;
    v197 = v39;
    v199 = v55;
    v209 = v48;
    v211 = v59;
    v217 = v61;
    v220 = v56;
    v201 = v42;
    v202 = v43;
    v203 = v44;
    v204 = v45;
    v205 = v46;
    v207 = v47;
    if (a9)
    {
      v188 = v37 * v49;
      v186 = v60 * v49;
      v62 = v253 * v49;
      v63 = v40 * v50;
      v64 = v34 * v50;
      v189 = v27 * v50;
      v254 = v248 * v50;
      v65 = v58 * v51;
      v66 = v32 * v51;
      v67 = v214 * v51;
      v68 = v245 * v51;
      v69 = v226 * v190;
      v70 = v232 * v53;
      v71 = v243 * v53;
      v72 = v240 * v54;
      v73 = v250 * v54;
      v74 = v309 * v54;
      v75 = v260 * v199;
      v76 = v263 * v199;
      v77 = v269 * v199;
      v78 = v266 * v56;
      v79 = v211 * v220;
      v80 = v271 * v220;
      v81 = v217 * v220;
      v82 = (v57 * v49) << a10;
      v221 = v63 << a10;
      v267 = v65 << a10;
      v261 = (v197 * v194) << a10;
      v264 = (v192 * v190) << a10;
      v238 = (v237 * v54) << a10;
      v258 = (v257 * v199) << a10;
      v251 = v78 << a10;
      v56 = v188 << a10;
      v218 = v64 << a10;
      v212 = v66 << a10;
      v241 = (v223 * v190) << a10;
      v83 = (v229 * v194) << a10;
      v215 = v72 << a10;
      v195 = v75 << a10;
      v227 = v79 << a10;
      v230 = v83;
      v84 = v186 << a10;
      v85 = v189 << a10;
      v233 = v67 << a10;
      v224 = v69 << a10;
      v198 = v73 << a10;
      v200 = v70 << a10;
      v196 = v76 << a10;
      v193 = v80 << a10;
      v86 = v62 << a10;
      v87 = v254 << a10;
      v88 = v68 << a10;
      v89 = (v235 * v190) << a10;
      v90 = v71 << a10;
      v91 = v74 << a10;
      v92 = v77 << a10;
      v93 = v81 << a10;
    }

    else
    {
      v185 = a13 + v37 * v49;
      v187 = a13 + v60 * v49;
      v256 = a13 + v253 * v49;
      v117 = a13 + v58 * v51;
      v118 = a13 + v32 * v51;
      v191 = a13 + v214 * v51;
      v247 = a13 + v245 * v51;
      v119 = a13 + v226 * v52;
      v120 = a13 + v232 * v53;
      v121 = a13 + v240 * v54;
      v122 = a13 + v250 * v54;
      v123 = a13 + v309 * v54;
      v124 = a13 + v260 * v55;
      v125 = a13 + v263 * v55;
      v126 = a13 + v266 * v220;
      v127 = a13 + v59 * v220;
      v128 = a13 + v271 * v220;
      v129 = a13 + v217 * v220;
      v82 = (a13 + v57 * v49) >> a12;
      v221 = (a13 + v40 * v50) >> a12;
      v267 = v117 >> a12;
      v264 = (a13 + v192 * v52) >> a12;
      v261 = (a13 + v39 * v53) >> a12;
      v238 = (a13 + v237 * v54) >> a12;
      v258 = (a13 + v257 * v55) >> a12;
      v251 = v126 >> a12;
      v56 = v185 >> a12;
      v212 = v118 >> a12;
      v241 = (a13 + v223 * v52) >> a12;
      v215 = v121 >> a12;
      v218 = (a13 + v34 * v50) >> a12;
      v227 = v127 >> a12;
      v230 = (a13 + v229 * v53) >> a12;
      v84 = v187 >> a12;
      v85 = (a13 + v27 * v50) >> a12;
      v233 = v191 >> a12;
      v224 = v119 >> a12;
      v198 = v122 >> a12;
      v200 = v120 >> a12;
      v195 = v124 >> a12;
      v196 = v125 >> a12;
      v193 = v128 >> a12;
      v86 = v256 >> a12;
      v87 = (a13 + v248 * v50) >> a12;
      v88 = v247 >> a12;
      v89 = (a13 + v235 * v52) >> a12;
      v90 = (a13 + v243 * v53) >> a12;
      v91 = v123 >> a12;
      v92 = (a13 + v269 * v55) >> a12;
      v93 = v129 >> a12;
    }

    v244 = v90;
    v246 = v88;
    v310 = v91;
    v236 = v89;
    v270 = v92;
    v272 = v93;
    v249 = v87;
    v255 = v86;
    v116 = v297;
    v112 = v297 + v82;
    v113 = v297 + v84;
    v114 = v207;
    v48 = v209;
    v115 = v204;
    v46 = v205;
    v43 = v202;
    v44 = v203;
    v101 = v200;
    v42 = v201;
    v97 = v264;
    v95 = v267;
    v98 = v241;
    v105 = v258;
    v100 = v261;
    v108 = v251;
    v96 = v233;
    v99 = v224;
    v109 = v227;
    v102 = v215;
    v107 = v196;
    v104 = v198;
    v110 = v193;
    v106 = v195;
  }

  else
  {
    v208 = v41 + v57 * v49;
    v206 = v37 * v49;
    v210 = v41 + v60 * v49;
    v255 = v253 * v49;
    v221 = v42 + v40 * v50;
    v94 = v59;
    v218 = v34 * v50;
    v85 = v42 + v27 * v50;
    v249 = v248 * v50;
    v95 = v43 + v58 * v51;
    LOWORD(v212) = v32 * v51;
    v96 = v43 + v214 * v51;
    v246 = v245 * v51;
    v97 = v44 + v38 * v52;
    v98 = v223 * v52;
    v99 = v44 + v226 * v52;
    v236 = v235 * v52;
    v100 = v45 + v39 * v53;
    v230 = v229 * v53;
    v101 = v45 + v232 * v53;
    v244 = v243 * v53;
    v238 = v46 + v237 * v54;
    v102 = v240 * v54;
    v103 = v61;
    v104 = v46 + v250 * v54;
    v310 = v309 * v54;
    v105 = v47 + v257 * v55;
    v106 = v260 * v55;
    v107 = v47 + v263 * v55;
    v270 = v269 * v55;
    v108 = v48 + v266 * v56;
    v109 = v94 * v56;
    v110 = v48 + v271 * v56;
    v111 = v103 * v56;
    LOWORD(v56) = v206;
    v112 = v208;
    v272 = v111;
    v113 = v210;
    v114 = v47;
    v115 = v45;
    v116 = v297;
  }

  if (v273)
  {
    v130 = v116;
  }

  else
  {
    v130 = v112;
  }

  if (v273)
  {
    v131 = v285;
  }

  else
  {
    v131 = v113;
  }

  v298 = v131;
  if (v275)
  {
    v132 = v289;
  }

  else
  {
    v42 = v221;
    v132 = v85;
  }

  v290 = v132;
  if (v277)
  {
    v95 = v43;
    v133 = v293;
  }

  else
  {
    v133 = v96;
  }

  v294 = v133;
  if (v279)
  {
    v134 = v44;
  }

  else
  {
    v134 = v97;
  }

  if (v279)
  {
    v135 = v295;
  }

  else
  {
    v135 = v99;
  }

  v296 = v135;
  if (v281)
  {
    v136 = v300;
  }

  else
  {
    v115 = v100;
    v136 = v101;
  }

  if (v283)
  {
    v137 = v46;
  }

  else
  {
    v137 = v238;
  }

  if (v283)
  {
    v138 = v302;
  }

  else
  {
    v138 = v104;
  }

  if (v287)
  {
    v139 = v114;
  }

  else
  {
    v139 = v105;
  }

  if (v287)
  {
    v140 = v304;
  }

  else
  {
    v140 = v107;
  }

  if (v291)
  {
    v141 = v48;
  }

  else
  {
    v141 = v108;
  }

  if (v291)
  {
    v142 = v306;
  }

  else
  {
    v142 = v110;
  }

  v143 = v130 + v56;
  v144 = v130 - v56;
  v145 = v42 + v218;
  v146 = v42 - v218;
  v147 = v95 + v212;
  v148 = v95 - v212;
  v149 = v134 + v98;
  v150 = v134 - v98;
  v151 = v115 + (v230 >> 1);
  v152 = (v115 >> 1) - v230;
  v153 = v137 + (v102 >> 1);
  v154 = (v137 >> 1) - v102;
  v155 = v139 + (v106 >> 1);
  v156 = (v139 >> 1) - v106;
  v157 = v141 + (v109 >> 1);
  v158 = (v141 >> 1) - v109;
  v242 = v144 + v152;
  v228 = v144 - v152;
  v262 = v146 + v154;
  v252 = v146 - v154;
  v307 = v149 + v157;
  v301 = v145 + v153;
  v303 = v145 + v153 + ((v149 + v157) >> 1);
  v292 = v143 + v151;
  v288 = v147 + v155;
  v305 = v143 + v151 + v147 + v155;
  *a7 = (v305 + v303) >> 6;
  v265 = v150 + v158;
  v239 = v148 + v156;
  v280 = v146 + v154 + ((v150 + v158) >> 1);
  v282 = v144 + v152 + v148 + v156;
  a7[1] = (v282 + v280) >> 6;
  v259 = v150 - v158;
  v276 = v146 - v154 + ((v150 - v158) >> 1);
  v278 = v144 - v152 + v148 - v156;
  a7[2] = (v278 + v276) >> 6;
  v222 = v143 - v151;
  v225 = v148 - v156;
  v219 = v147 - v155;
  v231 = v145 - v153;
  v234 = v149 - v157;
  v268 = v145 - v153 + ((v149 - v157) >> 1);
  v274 = v143 - v151 + v147 - v155;
  a7[3] = (v274 + v268) >> 6;
  v159 = v136 + (v244 >> 1);
  v160 = v138 + (v310 >> 1);
  v161 = v140 + (v270 >> 1);
  v162 = v142 + (v272 >> 1);
  v216 = v296 + v236 + v162;
  v213 = v290 + v249 + v160;
  v163 = v298 + v255;
  v164 = v298 + v255 + v159;
  v165 = v294 + v246 + v161;
  v284 = v213 + (v216 >> 1);
  v286 = v164 + v165;
  a7[4] = (v164 + v165 + v284) >> 6;
  LOWORD(v156) = v298 - v255;
  v166 = (v136 >> 1) - v244;
  v167 = (v138 >> 1) - v310;
  v168 = (v140 >> 1) - v270;
  LOWORD(v152) = (v142 >> 1) - v272;
  LOWORD(v145) = v296 - v236 + v152;
  v169 = v290 - v249 + v167;
  v299 = v290 - v249 + v167 + (v145 >> 1);
  v170 = v156 + v166;
  LOWORD(v157) = v294 - v246 + v168;
  v311 = v156 + v166 + v157;
  a7[5] = (v311 + v299) >> 6;
  LOWORD(v166) = v156 - v166;
  v171 = v290 - v249 - v167;
  LOWORD(v168) = v294 - v246 - v168;
  LOWORD(v152) = v296 - v236 - v152;
  v172 = v163 - v159;
  v173 = v290 + v249 - v160;
  LOWORD(v158) = v296 + v236 - v162;
  v174 = v164 - v165;
  LOWORD(v159) = v170 - v157;
  LOWORD(v160) = v166 + v168;
  v175 = v166 - v168;
  LOWORD(v168) = v172 + v294 + v246 - v161;
  LOWORD(v155) = v172 - (v294 + v246 - v161);
  v176 = (v301 >> 1) - v307;
  LOWORD(v162) = (v262 >> 1) - v265;
  v177 = (v252 >> 1) - v259;
  v178 = (v231 >> 1) - v234;
  v179 = (v213 >> 1) - v216;
  v180 = (v169 >> 1) - v145;
  v181 = v171 + (v152 >> 1);
  LOWORD(v171) = (v171 >> 1) - v152;
  v182 = v173 + (v158 >> 1);
  v183 = (v173 >> 1) - v158;
  a7[6] = (v160 + v181) >> 6;
  a7[7] = (v168 + v173 + (v158 >> 1)) >> 6;
  a7[16] = (v292 - v288 + v176) >> 6;
  a7[17] = (v242 - v239 + v162) >> 6;
  a7[18] = (v228 - v225 + v177) >> 6;
  a7[19] = (v222 - v219 + v178) >> 6;
  a7[20] = (v174 + v179) >> 6;
  result = (v242 - v239 - v162) >> 6;
  a7[21] = (v159 + v180) >> 6;
  a7[22] = (v175 + v171) >> 6;
  a7[23] = (v155 + v183) >> 6;
  a7[32] = (v292 - v288 - v176) >> 6;
  a7[33] = result;
  a7[34] = (v228 - v225 - v177) >> 6;
  a7[35] = (v222 - v219 - v178) >> 6;
  a7[36] = (v174 - v179) >> 6;
  a7[37] = (v159 - v180) >> 6;
  a7[38] = (v175 - v171) >> 6;
  a7[39] = (v155 - v183) >> 6;
  a7[48] = (v305 - v303) >> 6;
  a7[49] = (v282 - v280) >> 6;
  a7[50] = (v278 - v276) >> 6;
  a7[51] = (v274 - v268) >> 6;
  a7[52] = (v286 - v284) >> 6;
  a7[53] = (v311 - v299) >> 6;
  a7[54] = (v160 - v181) >> 6;
  a7[55] = (v168 - v182) >> 6;
  return result;
}

uint64_t sub_2772A5984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a2;
  while (!v4 || v4 == a1 + 22040)
  {
    v4 = a1;
    if (a1)
    {
      goto LABEL_11;
    }

LABEL_15:
    if (v4 != a2 && v4 != a3 && ++v3 != 30)
    {
      continue;
    }

    return v4;
  }

  v5 = a1;
  v6 = 29;
  while (v5 != v4)
  {
    v5 += 760;
    if (!--v6)
    {
      v4 = 0;
      goto LABEL_15;
    }
  }

  v4 = v5 + 760;
LABEL_11:
  v7 = *(v4 + 12);
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = 216;
  while (*(*(v4 + v8) + 1377))
  {
    v8 += 8;
    if (!--v7)
    {
      goto LABEL_15;
    }
  }

  return v4;
}

uint64_t sub_2772A5A1C(int32x2_t *a1, int64x2_t a2)
{
  if (!a1[170].i8[2])
  {
    return 0;
  }

  a1[4].i8[0] = 0;
  v3 = &a1[4];
  *(v3 + 1330) = 0;
  *(v3 + 5) = 0;
  v4 = *(v3 + 104);
  if (*(v3 + 1))
  {
    v4 *= 2;
    v5 = 2 * a1[17].i32[1];
    v6 = vadd_s32(a1[19], a1[19]);
  }

  else
  {
    v5 = a1[17].u32[1];
    v6 = a1[19];
  }

  a1[16].i32[0] = v4;
  a1[16].i32[1] = v5;
  a1[18] = v6;
  v8 = a1[169];
  if (!*&v8)
  {
    return 4294958327;
  }

  if (a1[4].i8[6])
  {
    v9 = *(*&v8 + 1284);
    a1[160].i32[1] = v9;
    v10 = a1[161].i32[0];
  }

  else
  {
    v10 = *(*&v8 + 1288);
    a1[161].i32[0] = v10;
    v9 = a1[160].i32[1];
  }

  if (v10 < v9)
  {
    v9 = v10;
  }

  a1[160].i32[0] = v9;
  *a2.i8 = vadd_s32(vdup_n_s32(v5), 0xFFFFFFFF00000002);
  a1[75] = *a2.i8;
  v11 = a1[52];
  if (v11)
  {
    *(*&v11 + 72) = 1;
    *(*&v11 + 64) = 0x100000001;
    a2 = xmmword_2773B4190;
    *(*&v11 + 128) = xmmword_2773B4190;
  }

  v12 = a1[53];
  if (v12)
  {
    *(*&v12 + 72) = 1;
    *(*&v12 + 64) = 0x100000001;
    a2 = xmmword_2773B4190;
    *(*&v12 + 128) = xmmword_2773B4190;
  }

  v13 = a1[54];
  if (v13)
  {
    *(*&v13 + 72) = 1;
    *(*&v13 + 64) = 0x100000001;
    a2 = xmmword_2773B4190;
    *(*&v13 + 128) = xmmword_2773B4190;
  }

  sub_2772CBAC8(v3, a1[23].i32[0], a2);
  if (a1->i8[3])
  {
    return 0;
  }

  result = 0;
  v14 = a1[21].i32[0];
  if (v14)
  {
    v15 = a1[23].i32[0];
    if (v15)
    {
      v16 = 0;
      v18 = a1[8];
      v17 = a1[9];
      v19 = a1[22].i32[1];
      v20 = a1[16].i32[1];
      v21 = a1[18].i32[1];
      v22 = a1[20].i32[1];
      v23 = *&v18 - 32;
      v24 = 2 * v14;
      v25 = -2 * v14;
      v26 = v22 + 48;
      do
      {
        if (v22 >= -63)
        {
          v27 = 0;
          do
          {
            v28 = *(v23 + v27);
            *(v23 - v14 + v27) = v28;
            *(v23 + v25 + v27) = v28;
            v29 = v27 < v26;
            v27 += 16;
          }

          while (v29);
        }

        v23 += v25;
        ++v16;
      }

      while (v16 != 10);
      v30 = 0;
      v31 = (v20 - 1) * v14;
      v32 = *&v18 + v31 - 32;
      v33 = v14 + v31 + *&v18 - 32;
      v34 = v24 + v31 + *&v18 - 32;
      do
      {
        if (v22 >= -63)
        {
          v35 = 0;
          do
          {
            v36 = *(v32 + v35);
            *(v33 + v35) = v36;
            *(v34 + v35) = v36;
            v29 = v35 < v26;
            v35 += 16;
          }

          while (v29);
        }

        v32 += v24;
        ++v30;
        v33 += v24;
        v34 += v24;
      }

      while (v30 != 10);
      v37 = 0;
      v38 = *&v17 - 16;
      v39 = v19 + 16;
      do
      {
        if (v19 >= -31)
        {
          v40 = 0;
          do
          {
            *(v38 - v15 + v40) = *(v38 + v40);
            v29 = v40 < v39;
            v40 += 16;
          }

          while (v29);
        }

        v38 -= v15;
        ++v37;
      }

      while (v37 != 8);
      v41 = 0;
      v42 = *&v17 + (v21 - 1) * v15 - 16;
      do
      {
        if (v19 >= -31)
        {
          v43 = 0;
          do
          {
            *(v42 + v15 + v43) = *(v42 + v43);
            v29 = v43 < v39;
            v43 += 16;
          }

          while (v29);
        }

        v42 += v15;
        ++v41;
      }

      while (v41 != 8);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2772A5CE4(int a1, int a2, uint64_t a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = -1;
  v5 = 0x7FFFFFFF;
  do
  {
    v6 = *(a3 + 8 * v3);
    if (!v6)
    {
      break;
    }

    if (*(v6 + 1376) && *(v6 + 1372) && *(v6 + 1364))
    {
      v7 = *(v6 + 1300);
      if (v7 > a1 && v7 < v5)
      {
        v4 = v3;
        v5 = v7;
      }
    }

    ++v3;
  }

  while (a2 != v3);
  if (v4 == -1)
  {
    return 0;
  }

  else
  {
    return *(a3 + 8 * v4);
  }
}

uint64_t sub_2772A5D60(int a1, int *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 1)
  {
    goto LABEL_16;
  }

  v5 = 0;
  v6 = -2147483647;
  v7 = -1;
  do
  {
    v8 = *(a4 + 8 * v5);
    if (!v8)
    {
      break;
    }

    if (v8 != a5 && *(v8 + 1372))
    {
      if (*(v8 + 1364))
      {
        v9 = 0;
      }

      else
      {
        v9 = *(v8 + 37) == a1;
      }

      if (v9)
      {
        v10 = *(v8 + 1280);
        if (v10 < *a2 && v10 > v6)
        {
          v6 = v10;
          v7 = v5;
        }
      }
    }

    ++v5;
  }

  while (a3 != v5);
  if (v7 == -1)
  {
LABEL_16:
    result = 0;
    *a2 = -2147483647;
  }

  else
  {
    *a2 = v6;
    return *(a4 + 8 * v7);
  }

  return result;
}

uint64_t sub_2772A5DF8(int a1, int *a2, int a3, uint64_t a4)
{
  if (a3 < 1)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0x7FFFFFFF;
  v6 = -1;
  do
  {
    v7 = *(a4 + 8 * v4);
    if (!v7)
    {
      break;
    }

    if (*(v7 + 1376) && *(v7 + 1372))
    {
      if (*(v7 + 1364))
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v7 + 37) == a1;
      }

      if (v8)
      {
        v9 = *(v7 + 1280);
        if (v9 > *a2 && v9 < v5)
        {
          v5 = v9;
          v6 = v4;
        }
      }
    }

    ++v4;
  }

  while (a3 != v4);
  if (v6 == -1)
  {
LABEL_16:
    result = 0;
    *a2 = 0x7FFFFFFF;
  }

  else
  {
    *a2 = v5;
    return *(a4 + 8 * v6);
  }

  return result;
}

void sub_2772A5E90(uint32x2_t *a1, int64x2_t a2)
{
  if (!a1[170].i8[2])
  {
    a1[4].i8[0] = 1;
    v3 = &a1[4];
    *(v3 + 1330) = 1;
    v4 = *(v3 + 104);
    if (*(v3 + 1))
    {
      v5 = a1[17].u32[1];
      a1[16].i32[0] = v4;
      a1[16].i32[1] = v5;
      a1[18] = a1[19];
      v6 = a1[4].u8[6];
      a1[4].i8[5] = v6;
      if (v6)
      {
        a1[160].i32[1] = 0x7FFFFFFF;
        v7 = 322;
      }

      else
      {
        a1[161].i32[0] = 0x7FFFFFFF;
        v7 = 321;
      }
    }

    else
    {
      v5 = a1[17].i32[1] >> 1;
      a1[16].i32[0] = v4 >> 1;
      a1[16].i32[1] = v5;
      a1[18] = vshr_n_u32(a1[19], 1uLL);
      v7 = 322;
      if (!a1[4].i8[6])
      {
        v7 = 321;
      }
    }

    a1[160].i32[0] = a1->i32[v7];
    *a2.i8 = vadd_s32(vdup_n_s32(v5), 0xFFFFFFFF00000002);
    a1[75] = *a2.i8;
    v8 = a1[52];
    if (v8)
    {
      *(*&v8 + 72) = 1;
      *(*&v8 + 64) = 0x100000001;
      a2 = xmmword_2773B4190;
      *(*&v8 + 128) = xmmword_2773B4190;
    }

    v9 = a1[53];
    if (v9)
    {
      *(*&v9 + 72) = 1;
      *(*&v9 + 64) = 0x100000001;
      a2 = xmmword_2773B4190;
      *(*&v9 + 128) = xmmword_2773B4190;
    }

    v10 = a1[54];
    if (v10)
    {
      *(*&v10 + 72) = 1;
      *(*&v10 + 64) = 0x100000001;
      a2 = xmmword_2773B4190;
      *(*&v10 + 128) = xmmword_2773B4190;
    }

    sub_2772CBAC8(v3, a1[23].i32[0], a2);
    if (!a1->i8[3])
    {
      v11 = a1[21].i32[0];
      if (v11)
      {
        v12 = a1[23].i32[0];
        if (v12)
        {
          v13 = 0;
          v15 = a1[8];
          v14 = a1[9];
          v16 = a1[22].i32[1];
          v17 = 2 * a1[16].i32[1];
          v18 = 2 * a1[18].i32[1];
          v19 = 2 * v11;
          v20 = a1[20].i32[1];
          v21 = *&v15 - 32;
          v22 = -2 * v11;
          v23 = v20 + 48;
          v24 = *&v15 - v19;
          v25 = *&v15 + v11;
          v26 = *&v15 - v11;
          do
          {
            if (v20 >= -63)
            {
              v27 = -16;
              do
              {
                *(v24 + v27 - 16) = *(v21 + v27 + 16);
                *(v26 + v27 - 16) = *(v25 + v27 - 16);
                v27 += 16;
              }

              while (v27 < v23);
            }

            v21 += v22;
            ++v13;
            v24 += v22;
            v25 += v22;
            v26 += v22;
          }

          while (v13 != 20);
          v28 = 0;
          v29 = (v17 - 2) * v11;
          v30 = *&v15 + v29 - 32;
          v31 = 3 * v11;
          v32 = v11 + v29;
          v33 = v19 + v29 + *&v15 - 32;
          v34 = v32 + *&v15 - 32;
          v35 = v29 + v31 + *&v15 - 32;
          do
          {
            if (v20 >= -63)
            {
              v36 = -16;
              do
              {
                *(v33 + v36 + 16) = *(v30 + v36 + 16);
                *(v35 + v36 + 16) = *(v34 + v36 + 16);
                v36 += 16;
              }

              while (v36 < v23);
            }

            v30 += v19;
            ++v28;
            v33 += v19;
            v34 += v19;
            v35 += v19;
          }

          while (v28 != 20);
          v37 = 0;
          v38 = *&v14 - 16;
          v39 = 2 * v12;
          v40 = v16 + 16;
          v41 = -2 * v12;
          do
          {
            if (v16 >= -31)
            {
              v42 = 0;
              do
              {
                *(v38 + v41 + v42) = *(v38 + v42);
                *(v38 - v12 + v42) = *(v38 + v12 + v42);
                v43 = v42 < v40;
                v42 += 16;
              }

              while (v43);
            }

            v38 += v41;
            ++v37;
          }

          while (v37 != 8);
          v44 = 0;
          v45 = (v18 - 2) * v12;
          v46 = *&v14 + v45 - 16;
          v47 = 3 * v12;
          v48 = v12 + v45;
          v49 = v39 + v45 + *&v14 - 16;
          v50 = v48 + *&v14 - 16;
          v51 = v45 + v47 + *&v14 - 16;
          do
          {
            if (v16 >= -31)
            {
              v52 = -16;
              do
              {
                *(v49 + v52 + 16) = *(v46 + v52 + 16);
                *(v51 + v52 + 16) = *(v50 + v52 + 16);
                v52 += 16;
              }

              while (v52 < v40);
            }

            v46 += v39;
            ++v44;
            v49 += v39;
            v50 += v39;
            v51 += v39;
          }

          while (v44 != 8);
        }
      }
    }
  }
}

uint64_t sub_2772A6210(int a1, int *a2, int a3, uint64_t a4)
{
  if (a3 < 1)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = -2147483647;
  v6 = -1;
  do
  {
    v7 = *(a4 + 8 * v4);
    if (!v7)
    {
      break;
    }

    if (*(v7 + 1376) && *(v7 + 1372))
    {
      if (*(v7 + 1364))
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v7 + 37) == a1;
      }

      if (v8)
      {
        v9 = *(v7 + 1292);
        if (v9 < *a2 && v9 > v5)
        {
          v5 = v9;
          v6 = v4;
        }
      }
    }

    ++v4;
  }

  while (a3 != v4);
  if (v6 == -1)
  {
LABEL_16:
    result = 0;
    *a2 = -2147483647;
  }

  else
  {
    *a2 = v5;
    return *(a4 + 8 * v6);
  }

  return result;
}

uint64_t sub_2772A62A8(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 4294958327;
  }

  v2 = *(a1 + 204);
  if (v2 <= 33)
  {
    v3 = &a1[v2];
    v4 = v2 + 1;
    do
    {
      *v3++ = v1;
      v5 = v4++ == 34;
    }

    while (!v5);
  }

  v6 = *(a1 + 205);
  if (v6 <= 33)
  {
    v7 = &a1[v6 + 34];
    v8 = v6 + 1;
    do
    {
      *v7++ = v1;
      v5 = v8++ == 34;
    }

    while (!v5);
  }

  return 0;
}

uint64_t sub_2772A6314(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 12);
  if (v3 < 1)
  {
    return (v2 >> 31) & 0xFFFFDCF7;
  }

  v4 = 0;
  v5 = 0;
  v6 = (a2 + 216);
  v7 = -1;
  v8 = 0x7FFFFFFF;
  do
  {
    v9 = v6[v4];
    if (*(v9 + 1372) && *(v9 + 1376) && (!*(v9 + 34) || !*(v9 + 1352)))
    {
      if (*(v9 + 1292) < v8 && !*(v9 + 1364))
      {
        v7 = v4;
        v8 = *(v9 + 1292);
      }

      ++v5;
    }

    ++v4;
  }

  while (v3 != v4);
  if (v5 > v2)
  {
    result = 4294958327;
  }

  else
  {
    result = 0;
  }

  if (v5 > v2 && (v7 & 0x80000000) == 0)
  {
    do
    {
      v11 = *v6;
      if (*(*v6 + 1292) == v8)
      {
        if (*(v11 + 1376))
        {
          *(v11 + 1372) = 0;
          v12 = *(v11 + 1352);
          if (v12)
          {
            if (v12[36])
            {
              v12[1372] = 0;
              v12[1377] = 1;
              *(v11 + 1352) = 0;
            }
          }
        }
      }

      ++v6;
      --v3;
    }

    while (v3);
    if (v5 - 1 == v2)
    {
      return 0;
    }

    else
    {
      return 4294958327;
    }
  }

  return result;
}

uint64_t sub_2772A6404(uint64_t result, int a2)
{
  v2 = *(result + 22816);
  if (*(v2 + 12))
  {
    v3 = 0;
    v4 = v2 + 216;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (*(v5 + 1376))
      {
        if (*(v5 + 1364))
        {
          if (*(v5 + 1300) == a2)
          {
            *(v5 + 1372) = 0;
            *(*(v4 + 8 * v3) + 1364) = 0;
            *(*(v4 + 8 * v3) + 1300) = -1;
            v6 = *(*(v4 + 8 * v3) + 1352);
            if (v6)
            {
              if (*(v6 + 36))
              {
                *(v6 + 1372) = 0;
                *(v6 + 1377) = 1;
                *(v6 + 1364) = 0;
                *(v6 + 1300) = -1;
                *(*(v4 + 8 * v3) + 1352) = 0;
              }
            }
          }
        }
      }

      ++v3;
    }

    while (v3 < *(v2 + 12));
  }

  return result;
}

uint64_t sub_2772A6494(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 276);
  if (v3 == 2)
  {
    v20 = *(a2 + 33);
    v15 = *(a2 + 28);
    if (*(a2 + 8) == 5)
    {
      v21 = 0;
      if (v15)
      {
        v20 = 4294966630;
        v19 = 0;
        goto LABEL_70;
      }

      v19 = 0;
    }

    else
    {
      v23 = *(a1 + 1868);
      if (v15 >= a3[9])
      {
        v23 = 0;
      }

      v19 = v23 + a3[8];
    }

    v21 = (__PAIR64__(2 * (v19 + v15), *(a2 + 4)) - 1) >> 32;
    if (*(a2 + 32))
    {
      if (!*(a2 + 33))
      {
        a3[7] = v21;
        do
        {
LABEL_70:
          result = v20;
          *a3 = v21;
          v20 = 4294958327;
        }

        while (*(a2 + 8) == 5 && v21 != 0);
        goto LABEL_75;
      }

      v20 = 0;
    }

    else
    {
      v20 = 0;
      a3[7] = v21;
    }

    a3[6] = v21;
    goto LABEL_70;
  }

  if (v3 == 1)
  {
    v12 = *(a1 + 288);
    v13 = *(a1 + 296);
    v14 = *(a1 + 292);
    v15 = *(a2 + 28);
    v16 = *(a2 + 48);
    v17 = *(a2 + 4);
    if (*(a2 + 8) == 5)
    {
      v18 = 0;
      if (v15)
      {
        result = 4294958327;
        v19 = 0;
LABEL_68:
        *a3 = v18;
LABEL_75:
        if (a3[52])
        {
          v19 = 0;
          v15 = 0;
        }

        a3[8] = v19;
        a3[9] = v15;
        goto LABEL_78;
      }

      v19 = 0;
    }

    else
    {
      v22 = *(a1 + 1868);
      if (v15 >= a3[9])
      {
        v22 = 0;
      }

      v19 = v22 + a3[8];
    }

    v27 = (a1 + 300);
    v28 = v19 + v15;
    if (!v13)
    {
      v28 = 0;
    }

    if (v17)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28 <= 0;
    }

    v30 = !v29;
    v31 = v28 - v30;
    if (v13 < 1)
    {
      v32 = 0;
      if (v31)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v32 = 0;
      v33 = v27;
      v34 = v13;
      do
      {
        v35 = *v33++;
        v32 += v35;
        --v34;
      }

      while (v34);
      if (v31)
      {
LABEL_40:
        v36 = v31 - 1;
        v37 = v36 / v13;
        v38 = v36 % v13;
        v39 = v37 * v32;
        if ((v38 & 0x80000000) == 0)
        {
          v40 = (v38 + 1);
          do
          {
            v41 = *v27++;
            v39 += v41;
            --v40;
          }

          while (v40);
        }

        goto LABEL_46;
      }
    }

    v39 = 0;
LABEL_46:
    if (v17)
    {
      v12 = 0;
    }

    v42 = v39 + v12;
    if (*(a2 + 32))
    {
      if (*(a2 + 33))
      {
        v18 = v16 + v14 + v42;
        a3[6] = v18;
      }

      else
      {
        v18 = v42 + v16;
        a3[7] = v42 + v16;
      }
    }

    else
    {
      v43 = v42 + v16;
      v44 = *(a2 + 52) + v14 + v43;
      a3[6] = v44;
      a3[7] = v43;
      if (v43 >= v44)
      {
        v18 = v44;
      }

      else
      {
        v18 = v43;
      }
    }

    if (v18)
    {
      v45 = *(a2 + 8) == 5;
    }

    else
    {
      v45 = 0;
    }

    if (v45)
    {
      result = 4294958327;
    }

    else
    {
      result = 0;
    }

    goto LABEL_68;
  }

  if (*(a1 + 276))
  {
    return 4294958327;
  }

  v4 = *(a2 + 40);
  v5 = *(a2 + 44);
  v6 = *(a2 + 32);
  v7 = *(a2 + 33);
  if (*(a2 + 8) == 5)
  {
    if (!*(a2 + 28))
    {
      result = 0;
      a3[6] = v5;
      goto LABEL_78;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = 4294958327;
  }

  else
  {
    v24 = *(a1 + 1872);
    v26 = a3[1];
    v25 = a3[2];
    if (v4 < v26 && v26 - v4 >= v24 / 2)
    {
      v9 = v25 + v24;
    }

    else
    {
      if (v4 - v26 <= v24 / 2)
      {
        v24 = 0;
      }

      v9 = v25 - v24;
      if (v4 <= v26)
      {
        v9 = a3[2];
      }
    }

    v10 = v9 + v4;
    result = 0;
    if (*(a2 + 32))
    {
      if (*(a2 + 33))
      {
        a3[6] = v10;
      }

      else
      {
        a3[7] = v10;
      }

      v8 = v9 + v4;
    }

    else
    {
      v8 = v10 + v5;
      a3[6] = v8;
      a3[7] = v10;
      if (v10 < v8)
      {
        v8 = v9 + v4;
      }
    }
  }

  *a3 = v8;
  if (*(a2 + 4))
  {
    if (a3[52])
    {
      if (v6)
      {
        a3[2] = 0;
        if (v7)
        {
          a3[1] = 0;
          goto LABEL_78;
        }
      }

      else
      {
        a3[2] = 0;
      }

      a3[1] = v10;
    }

    else
    {
      a3[1] = v4;
      a3[2] = v9;
    }
  }

LABEL_78:
  a3[52] = 0;
  if (*(a2 + 32))
  {
    if (*(a2 + 33))
    {
      a3[7] = 0x7FFFFFFF;
    }

    else
    {
      a3[6] = 0x7FFFFFFF;
    }
  }

  return result;
}

uint64_t sub_2772A67B8(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, int a10)
{
  v17 = *(a9 + 22816);
  *(a1 + 32) = a2;
  v18 = a1 + 32;
  *(v18 + 1330) = a2;
  *(v18 + 1236) = *(v18 + 1264) + 1000 * a2 + 1000;
  *(v18 + 1) = a2;
  *(v18 + 4) = 0;
  *(v18 + 5) = a3;
  *(v18 + 6) = a3;
  *(v18 - 20) = -1;
  v19 = 32 - 16 * *(a4 + 1336);
  v20 = (v19 + v19 * *(a4 + 1332)) >> (a2 != 0);
  v21 = vdupq_n_s32(v20);
  *(v18 + 96) = v21;
  *(v18 + 112) = vdupq_n_s32(v20 >> 1);
  *(v18 + 568) = v20 | 2;
  *(v18 + 572) = v20 - 1;
  if (a10 != 2)
  {
    v22 = *(a1 + 416);
    if (v22)
    {
      *(v22 + 72) = 1;
      *(v22 + 64) = 0x100000001;
      v21 = xmmword_2773B4190;
      *(v22 + 128) = xmmword_2773B4190;
    }

    v23 = *(a1 + 424);
    if (v23)
    {
      *(v23 + 72) = 1;
      *(v23 + 64) = 0x100000001;
      v21 = xmmword_2773B4190;
      *(v23 + 128) = xmmword_2773B4190;
    }

    v24 = *(a1 + 432);
    if (v24)
    {
      *(v24 + 72) = 1;
      *(v24 + 64) = 0x100000001;
      v21 = xmmword_2773B4190;
      *(v24 + 128) = xmmword_2773B4190;
    }

    sub_2772CBAC8(v18, *(a1 + 184), v21);
  }

  *(a1 + 34) = 0;
  if (a2)
  {
    *(a1 + 37) = a3;
    *(a1 + 38) = a3;
    *(a1 + 1352) = 0;
    if (a6 < 1)
    {
      goto LABEL_25;
    }

    v25 = 0;
    v26 = a6;
    do
    {
      v27 = *a7;
      if (*a7 && *(v27 + 1362) && !*(v27 + 1352) && *(v27 + 1296) == *(a1 + 1296) && *(v27 + 1372) == *(a1 + 1372) && v27 != a1 && *(v27 + 37) != *(a1 + 37))
      {
        *(v27 + 1352) = a1;
        *(a1 + 1352) = v27;
        v25 = v27;
      }

      ++a7;
      --v26;
    }

    while (v26);
    if (!v25)
    {
      goto LABEL_25;
    }

    *(a1 + 34) = 1;
    v28 = a1;
    goto LABEL_23;
  }

  if (!*(a4 + 1336) && *(a1 + 1372))
  {
    *(a1 + 37) = 0;
    result = sub_27739788C(a8, 1);
    if (!result)
    {
      return result;
    }

    v28 = result;
    if (*(result + 1363) != 1)
    {
      return result;
    }

    result = sub_27737B698(result, a9);
    if (result)
    {
      return result;
    }

    *(v28 + 32) = 1;
    *(v28 + 1362) = 1;
    *(v28 + 36) = 1;
    *(v28 + 33) = 257;
    *(v28 + 37) = 257;
    *(v28 + 1268) = *(a1 + 1296) + 5000;
    v40 = *(v17 + 24);
    v41 = *(a5 + 2709);
    v42 = *(a5 + 2712);
    v43 = *(a1 + 1372);
    v44 = *(a5 + 20);
    v45 = *(a5 + 28);
    v46 = *(a5 + 60);
    v47 = *(a1 + 1264);
    *(v28 + 1280) = v40;
    *(v28 + 1284) = 0x7FFFFFFF;
    *(v28 + 1288) = v40;
    *(v28 + 1364) = v41;
    *(v28 + 1300) = v42;
    *(v28 + 1372) = v43;
    *(v28 + 1371) = 0;
    *(v28 + 1379) = 0;
    *(v28 + 1376) = 0;
    *(v28 + 1369) = v44;
    *(v28 + 1292) = v45;
    *(v28 + 1296) = v45;
    *(v28 + 1366) = v46;
    *(v28 + 1352) = 0;
    *(v28 + 1264) = v47;
    *(v28 + 4) = 0;
    v48 = 32 - 16 * *(a4 + 1336);
    v49 = v48 + v48 * *(a4 + 1332);
    v50 = vdupq_n_s32(v49 >> 1);
    *(v28 + 128) = v50;
    *(v28 + 144) = vdupq_n_s32(v49 >> 2);
    *(v28 + 600) = (v49 >> 1) | 2;
    *(v28 + 604) = (v49 >> 1) - 1;
    if (a10 != 2)
    {
      v51 = *(v28 + 416);
      if (v51)
      {
        *(v51 + 72) = 1;
        *(v51 + 64) = 0x100000001;
        v50 = xmmword_2773B4190;
        *(v51 + 128) = xmmword_2773B4190;
      }

      v52 = *(v28 + 424);
      if (v52)
      {
        *(v52 + 72) = 1;
        *(v52 + 64) = 0x100000001;
        v50 = xmmword_2773B4190;
        *(v52 + 128) = xmmword_2773B4190;
      }

      v53 = *(v28 + 432);
      if (v53)
      {
        *(v53 + 72) = 1;
        *(v53 + 64) = 0x100000001;
        v50 = xmmword_2773B4190;
        *(v53 + 128) = xmmword_2773B4190;
      }

      sub_2772CBAC8(v28 + 32, *(v28 + 184), v50);
    }

    *(v28 + 1352) = a1;
    *(a1 + 1352) = v28;
    v25 = a1;
LABEL_23:
    *(v28 + 64) = *(v25 + 64);
    *(v28 + 72) = *(v25 + 72);
  }

LABEL_25:
  result = sub_277389554(a4, v55, 1);
  if (!result)
  {
    *(a1 + 328) = v59;
    v30 = v55[0];
    v31 = v55[1];
    v32 = v55[2];
    v33 = v56;
    v34 = v57;
    v35 = v58;
    *(a1 + 240) = v56;
    *(a1 + 244) = v34;
    *(a1 + 248) = v35;
    *(a1 + 216) = v30;
    *(a1 + 220) = v33 - v32;
    v36 = v35 - v34;
    v37 = (v35 - v34) / 2;
    if (a2)
    {
      v36 = v37;
    }

    *(a1 + 232) = v36;
    *(a1 + 236) = v32;
    v38 = v31 / 2;
    if (!a2)
    {
      v38 = v31;
    }

    *(a1 + 224) = v31;
    *(a1 + 228) = v38;
    *(a1 + 208) = 2 * v30;
    *(a1 + 256) = a2;
    *(a1 + 260) = a3;
    v39 = *(a1 + 34);
    *(a1 + 264) = v39;
    *(a1 + 268) = v39;
    *(a1 + 300) = 99999;
    *(a1 + 324) = *(a4 + 16) == 0;
  }

  return result;
}

uint64_t sub_2772A6BFC(uint64_t result, uint64_t a2)
{
  if (*(result + 1372))
  {
    v2 = *(a2 + 12);
    if (!*(result + 1361) && v2 >= 1)
    {
      v4 = *(result + 37);
      v5 = *(result + 1292);
      v6 = (a2 + 216);
      do
      {
        v7 = *v6;
        if (!*v6)
        {
          break;
        }

        if (v7 != result && *(v7 + 1372))
        {
          if (!*(v7 + 1376))
          {
            *(v7 + 1376) = 1;
          }

          if (!*(v7 + 1364) && (*(v7 + 37) == v4 || *(v7 + 1362) == 0) && *(v7 + 1292) >= v5)
          {
            *(v7 + 1372) = 0;
            *(v7 + 1377) = 1;
            *(v7 + 2) = 0;
          }
        }

        ++v6;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_2772A6C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a5 + 23656))
  {
LABEL_2:

    return sub_2772A62A8((a5 + 22840));
  }

  v13 = *(a5 + 22816);
  v14 = sub_27739788C(a4, 1);
  if (!v14)
  {
    return 4294967188;
  }

  v15 = v14;
  *(v14 + 1264) = -1;
  result = sub_27737B698(v14, a5);
  if (result)
  {
    return result;
  }

  v16 = *(a2 + 60);
  v17 = *(a3 + 1264);
  v18 = v17 != 0;
  v19 = v17 - 1;
  if (v19 == 0 || !v18)
  {
    v19 = 1;
  }

  *(v15 + 1280) = 0;
  *(v15 + 1288) = 0;
  *(v15 + 1364) = 0;
  *(v15 + 1300) = -1;
  *(v15 + 1371) = 256;
  *(v15 + 1379) = 0;
  *(v15 + 1376) = 257;
  *(v15 + 1369) = 2;
  *(v15 + 1292) = 0;
  *(v15 + 1366) = v16;
  *(v15 + 1367) = 0;
  *(v15 + 1352) = 0;
  *(v15 + 1264) = v19;
  *(v15 + 4) = 1;
  if (*(a4 + 48) - 256 > -2)
  {
    return 4294967188;
  }

  sub_2772A67B8(v15, 0, 0, a1, a2, *(v13 + 12), 0, a4, a5, a6);
  sub_2772C99B0(v15 + 32);
  result = sub_27737AC18((a5 + 22840), *(a2 + 20), a3, *(a5 + 22816), v20, v21, 0, 0, 0, 0);
  if (!result)
  {
    if (*(a5 + 23656) < 1)
    {
      return 4294958327;
    }

    goto LABEL_2;
  }

  return result;
}

uint64_t sub_2772A6E48(int a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a2 + 22824);
  v6 = *(a2 + 22816);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    result = 0;
    v10 = a2 + 16;
    v11 = a2 + 22056;
    v12 = a2 + 776;
    while (1)
    {
      v13 = v5;
      v14 = *(v5 + 12);
      v15 = (v13 + 216);
      if ((a3 & 0xFFFFFFFD) == 1)
      {
        if (v14 < 1)
        {
          goto LABEL_30;
        }

        v16 = 0;
        do
        {
          v17 = *v15;
          if (!*v15)
          {
            break;
          }

          if (*(v17 + 1264) == a1 && (!*(v17 + 1362) || !*(v17 + 37)) && *(v17 + 1361) == a4)
          {
            v16 = *v15;
          }

          ++v15;
          --v14;
        }

        while (v14);
      }

      else
      {
        if (v14 < 1)
        {
          goto LABEL_30;
        }

        v16 = 0;
        do
        {
          v18 = *v15;
          if (!*v15)
          {
            break;
          }

          if (*(v18 + 1264) == a1 && (!*(v18 + 1362) || *(v18 + 37) == a5))
          {
            v16 = *v15;
          }

          ++v15;
          --v14;
        }

        while (v14);
      }

      if (v16)
      {
        if (*(v16 + 4))
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_31;
      }

LABEL_30:
      v19 = 0;
LABEL_31:
      if (v19)
      {
        result = v19;
      }

      if (v13 == v6)
      {
        return result;
      }

      v5 = v10;
      if (v13 != v11)
      {
        v5 = v12;
        v20 = 29;
        while (v5 - 760 != v13)
        {
          v5 += 760;
          if (!--v20)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2772A6F7C(uint64_t *a1, uint64_t a2, int a3, int *a4, int a5, int *a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 32))
  {
    a3 *= 2;
    v8 = (2 * *(a2 + 28)) | 1;
  }

  else
  {
    v8 = *(a2 + 28);
  }

  v9 = *a6;
  if (*a6 == 3)
  {
    v10 = *a4;
LABEL_6:
    result = 0;
    if (v10 > a5 + 1)
    {
      *a4 = a5 + 1;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = v8;
    while (v9 <= 3)
    {
      if (v9 <= 1)
      {
        v15 = *(a7 + 4 * v12);
        v16 = v14 + v15 + 1;
        if (v16 >= a3)
        {
          v17 = a3;
        }

        else
        {
          v17 = 0;
        }

        v18 = v16 - v17;
        v14 += (a3 & ((v14 + ~v15) >> 31)) + ~v15;
        if (v9)
        {
          v14 = v18;
        }

        if (v14 <= v8)
        {
          v19 = 0;
        }

        else
        {
          v19 = a3;
        }

        v20 = v14 - v19;
        v21 = *a4;
        v22 = *(a2 + 33);
        if (*a4 < 1)
        {
          v23 = 0;
          goto LABEL_58;
        }

        v23 = 0;
        v24 = 0x7FFFFFFF;
        v25 = a1;
        v26 = *a4;
        v27 = 0x7FFFFFFF;
        while (1)
        {
          v28 = *v25;
          if (*v25)
          {
            if (v27 == 0x7FFFFFFF)
            {
              v27 = *(v28 + 1362);
            }

            if (*(v28 + 1362))
            {
              v29 = (*(v28 + 37) == v22) | (2 * *(v28 + 1292));
            }

            else
            {
              v29 = *(v28 + 1292);
            }

            if (*(v28 + 1364))
            {
              v30 = 0;
            }

            else
            {
              v30 = v29 == v20;
            }

            if (v30)
            {
              v23 = *v25;
LABEL_58:
              v40 = v21;
              if (v13 < v21)
              {
                v41 = *(a2 + 32);
                do
                {
                  a1[v40] = a1[v40 - 1];
                  --v40;
                }

                while (v40 > v13);
                v42 = v13 + 1;
                a1[v13] = v23;
                v43 = v21 - v13;
                v44 = &a1[v42];
                v10 = v42;
                do
                {
                  v45 = *v44;
                  if (*v44)
                  {
                    if (v41)
                    {
                      v46 = (*(v45 + 37) == v22) | (2 * *(v45 + 1292));
                    }

                    else
                    {
                      v46 = *(v45 + 1292);
                    }

                    if (v46 != v20)
                    {
                      a1[v10++] = v45;
                    }
                  }

                  ++v44;
                  --v43;
                }

                while (v43);
                v13 = v42;
                goto LABEL_71;
              }

LABEL_70:
              v10 = v13 + 1;
              a1[v13++] = v23;
              goto LABEL_71;
            }

            if (v24 == 0x7FFFFFFF)
            {
              v24 = v29;
              v23 = *v25;
            }

            if (v27 && *(v23 + 37) != v22 && *(v28 + 37) == v22)
            {
              v24 = v29;
              v23 = *v25;
            }
          }

          ++v25;
          if (!--v26)
          {
            goto LABEL_58;
          }
        }
      }

      v31 = *(a8 + 4 * v12);
      v32 = *a4;
      if (*a4 < 1)
      {
LABEL_46:
        v23 = 0;
      }

      else
      {
        v33 = a1;
        v34 = *a4;
        while (1)
        {
          v23 = *v33;
          if (*v33)
          {
            if (*(v23 + 1376) && *(v23 + 1364) && *(v23 + 1300) == v31)
            {
              break;
            }
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_46;
          }
        }
      }

      v35 = v32;
      if (v13 >= v32)
      {
        goto LABEL_70;
      }

      do
      {
        a1[v35] = a1[v35 - 1];
        --v35;
      }

      while (v35 > v13);
      v36 = v13 + 1;
      a1[v13] = v23;
      v37 = v32 - v13;
      v38 = &a1[v36];
      v10 = v36;
      do
      {
        v39 = *v38;
        if (!*(*v38 + 1376) || !*(v39 + 1364) || *(v39 + 1300) != v31)
        {
          a1[v10++] = v39;
        }

        ++v38;
        --v37;
      }

      while (v37);
      v13 = v36;
LABEL_71:
      *a4 = v10;
      if (v12 <= 0x30)
      {
        v9 = a6[++v12];
        if (v9 != 3)
        {
          continue;
        }
      }

      goto LABEL_6;
    }

    return 4294958327;
  }

  return result;
}

_BYTE *sub_2772A7278(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 12);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 216;
  v6 = 0x7FFFFFFF;
  v7 = -1;
  do
  {
    v8 = *(v5 + 8 * v4);
    if (!v8)
    {
      return *(v5 + 8 * v7);
    }

    if (!*(v8 + 1377) && !*(v8 + 36))
    {
      v9 = *(v8 + 1280);
      if (v9 < v6)
      {
        v6 = v9;
        v7 = v4;
      }
    }

    ++v4;
  }

  while (v3 != v4);
  if (v7 == -1)
  {
    return 0;
  }

  result = *(v5 + 8 * v7);
  if (!result[4] || !result[1376] || (a2 & 0xFFFFFFFD) == 1 && result[1361] != a3)
  {
    return 0;
  }

  return result;
}

void sub_2772A730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, _DWORD *a9, _DWORD *a10, _BYTE *a11)
{
  v14 = *(a2 + 4);
  v15 = *(a2 + 16);
  v16 = *(a2 + 560);
  v17 = *(a2 + 568);
  *(a5 + 12) = *(a5 + 1423168);
  v18 = *(a5 + 1016);
  *(a5 + 13) = *(v18 + 56);
  *(a5 + 14) = *(v18 + 57);
  *(a5 + 16) = *(a5 + 996);
  *(a5 + 20) = *(a5 + 1005);
  *(a5 + 24) = *(a5 + 1164);
  v19 = *(a5 + 1192);
  *(a5 + 22) = *(v19 + 1363);
  *(a5 + 23) = 0;
  *(a5 + 64) = a5 + 1200;
  *(a5 + 72) = v19 + 32;
  *(a5 + 80) = *(a5 + 1312);
  *(a5 + 928) = *(*(a5 + 1024) + 4);
  *(a5 + 36) = 0;
  *(a5 + 28) = 0;
  *(a2 + 632) = a2;
  *(a2 + 640) = a1;
  *(a2 + 648) = a3;
  *(a2 + 656) = a4;
  *(a2 + 664) = a5;
  *(a2 + 672) = a6;
  *(a2 + 676) = a7;
  *(a2 + 680) = a8;
  *(a2 + 688) = a9;
  *(a2 + 696) = a10;
  *(a2 + 704) = v16;
  *(a2 + 728) = v16;
  *(a2 + 736) = a5;
  *(a2 + 744) = v17;
  *(a2 + 752) = v14;
  *(a2 + 756) = v15;
  *a5 = *(a5 + 1428264) + *(a4 + 72) + 26;
  v20 = (*(*(a5 + 1312) + 48) + 12 * a6);
  *v20 = (63 * *(a2 + 156)) >> 6;
  v20[1] = 1;
  *(a5 + 4) = 0;
  *(a5 + 8) = 0;
  v21 = *(a5 + 1425560);
  if (*(a5 + 1161))
  {
    v22 = v21 % (2 * v14) / 2;
    if (*(a5 + 1007) + 2 * (v21 / (2 * v14)) == 1)
    {
      v23 = *(a5 + 1425560) & 1;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = v21 / v14;
    v22 = v21 % v14;
  }

  *(a5 + 40) = v22;
  *(a5 + 44) = v14 - 1;
  *(a5 + 48) = v23;
  *(a5 + 52) = v15;
  *(a5 + 56) = v21;
  *(a2 + 796) = 0u;
  *(a2 + 768) = 0u;
  *(a2 + 784) = 0u;
  if (v23)
  {
    *(a2 + 772) = v23;
    *(a2 + 780) = v23;
    *(a2 + 788) = v23;
    *(a2 + 796) = v23;
  }

  *(a2 + 800) = *(a2 + 16);
  *(*(a1 + 5041656) + 824) = sub_2773B1D38(1, 0);
  if (a11)
  {
    *a11 = 1;
  }

  sub_2773B13C8(a2 + 576);
  if (a9)
  {
    *a9 = *(a5 + 4) == 0;
  }

  if (a10)
  {
    *a10 = *(a5 + 8) == 0;
  }

  sub_2773B1D98(*(*(a1 + 5041656) + 824));
  *(*(a1 + 5041656) + 824) = 0;
}

uint64_t sub_2772A754C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int *a7, _DWORD *a8, _DWORD *a9, unsigned __int8 a10, int a11)
{
  v130[1] = *MEMORY[0x277D85DE8];
  v11 = a4 + 1425504;
  v129 = -1;
  v130[0] = -1;
  v12 = *(a4 + 1425564);
  v13 = v12 == 6 || v12 == 1;
  if (!v13 || *(a4 + 1164) || *(a2 + 1337) || *(a4 + 1425576))
  {
    return 4294958327;
  }

  v106 = 0;
  v113 = 0;
  v108 = 0;
  v16 = 0;
  v121 = (a4 + 1458248);
  v17 = (a4 + 976);
  v18 = *(a1 + 4);
  v19 = *(a1 + 16) * v18;
  v124 = *(a4 + 1428264) + *(a3 + 72) + 26;
  v20 = (*(*(a4 + 1312) + 48) + 12 * a5);
  v120 = *(a4 + 1016);
  v111 = *(a4 + 1425540);
  v110 = *(a4 + 1425520);
  v123 = v18;
  v109 = 2 * v18;
  v119 = a4 + 1458264;
  v22 = (a10 & 0xFD) == 1 && a11 != 0;
  v107 = v22;
  v23 = *(a4 + 1425560);
  v116 = a5;
  v115 = a5;
  *v20 = (63 * *(a1 + 156)) >> 6;
  v20[1] = 1;
  v126 = a4 + 976;
  do
  {
    **(a4 + 1152) = v23;
    *(a4 + 992) = v23;
    if (v23 >= v19 || (*(a4 + 1004) - 2) < 8u && ((0xA5u >> (*(a4 + 1004) - 2)) & 1) != 0)
    {
      return 4294958327;
    }

    v25 = *(v11 + 16);
    v24 = *(v11 + 24);
    v26 = *(v11 + 32);
    v27 = *(v11 + 36);
    v28 = __clz(v26 | 1);
    if (!v26)
    {
      ++v28;
    }

    if (v28 > 0xC)
    {
      v35 = v27 + 1;
      v36 = (v27 + 1) & 7;
      v37 = (v25 + (v35 >> 3));
      v38 = bswap32(*v37) << v36;
      if (v37 <= v24)
      {
        v39 = v37;
      }

      else
      {
        v39 = *(v11 + 24);
      }

      if (v26 < 0)
      {
        v43 = 0;
      }

      else
      {
        v40 = 0;
        do
        {
          v41 = v38;
          v42 = v36;
          v43 = v40 + 1;
          v44 = (v36 + 1);
          v36 = (v36 + 1) & 7;
          v39 = (v39 + (v44 >> 3));
          v38 = bswap32(*v39) << (v44 & 7);
          if (v39 > v24)
          {
            v39 = *(v11 + 24);
          }

          if ((v41 & 0x80000000) != 0)
          {
            break;
          }
        }

        while (v40++ < 0x1F);
        if (v43 - 1 > 0x17)
        {
          v46 = v38 >> (48 - v43);
          v47 = ((v42 + 1) & 7) + v43;
          v48 = v47 - 16;
          v32 = v47 & 7;
          v49 = (v39 + (v48 >> 3));
          v50 = bswap32(*v49) << v32;
          if (v49 <= v24)
          {
            v51 = v49;
          }

          else
          {
            v51 = *(v11 + 24);
          }

          v53 = *(v51 + 2);
          v52 = (v51 + 2);
          v34 = bswap32(v53) << v32;
          if (v52 <= v24)
          {
            v24 = v52;
          }

          v54 = __PAIR64__(v46, v50) >> 16;
LABEL_49:
          v30 = v54 + ~(-1 << v43);
          goto LABEL_50;
        }
      }

      v54 = v38 >> -v43;
      v55 = v43 + v36;
      v32 = (v43 + v36) & 7;
      v56 = (v39 + (v55 >> 3));
      v34 = bswap32(*v56) << v32;
      if (v56 <= v24)
      {
        v24 = v56;
      }

      goto LABEL_49;
    }

    v29 = (v26 << (v28 + 1)) >> -v28;
    if (!v28)
    {
      v29 = 0;
    }

    v30 = v29 + ~(-1 << v28);
    v31 = v27 + 2 * v28 + 1;
    v32 = v31 & 7;
    v33 = (v25 + (v31 >> 3));
    v34 = bswap32(*v33) << (v31 & 7);
    if (v33 <= v24)
    {
      v24 = v33;
    }

LABEL_50:
    *(v11 + 16) = v24;
    *(v11 + 32) = v34;
    *(v11 + 36) = v32;
    if ((v30 + v23) > v19)
    {
      return 4294958327;
    }

    v57 = sub_27737A524(v11);
    v122 = !v57;
    if (v57 + v30)
    {
      v58 = v57 + v30 - 1;
      v112 = v19;
      while (1)
      {
        **(a4 + 1152) = v23;
        *(a4 + 992) = v23;
        if (v23 >= v19)
        {
          return 4294958327;
        }

        if (*(a4 + 1161))
        {
          v59 = v23 % v109 / 2;
          if (*(a4 + 1007) + 2 * (v23 / v109) == 1)
          {
            v60 = v23 & 1;
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v60 = v23 / v123;
          v59 = v23 % v123;
        }

        *(a4 + 976) = v59;
        *(a4 + 980) = v60;
        v61 = *(v119 + 8 * !(v60 & 1));
        *v121 = *(v119 + 8 * (v60 & 1));
        v121[1] = v61;
        *(a4 + 1152) = v61 + 400 * v59;
        *(v121[1] + 400 * v59 + 112) = sub_277398150(*(*(*(a4 + 1192) + 1152) + 8 * a6));
        sub_277395868(*(v11 + 56), *v121, v121[1], v17);
        if (v58 | v122)
        {
          sub_277396C1C(*(a4 + 1016), *(a4 + 1024), *(a4 + 1007));
          *(*(a4 + 1152) + 126) = *(*(a4 + 1024) + 272);
          result = sub_2772C45F0(v17, v62, v63);
          v72 = v120;
          if (result)
          {
            return result;
          }

          if (*(a4 + 1007) || (v73 = *(a4 + 1024), *(v73 + 272) != 1) || (v74 = *(*(a4 + 1152) + 112), v75 = *(v73 + 24), v76 = *(v73 + 25), v75 != 32) && *v74 || v76 != 32 && v74[1] || *(v73 + 356) || *(v73 + 360))
          {
            if (v16)
            {
              result = sub_27737E8DC(v17, v130, &v129, v128);
              if (result)
              {
                return result;
              }
            }

            result = sub_277395CB8(v17, v64, v65, v66, v67, v68, v69, v70, v71);
            if (result)
            {
              return result;
            }

            v77 = 0;
            v16 = 0;
            v78 = 0;
            goto LABEL_73;
          }

          if (v16)
          {
            if (__PAIR64__(v75, v76) == v106)
            {
              v77 = 0;
              v103 = v17;
              v78 = 0;
              ++v16;
              v129 = *v103;
LABEL_73:
              v113 = 1;
              goto LABEL_96;
            }

            result = sub_27737E8DC(v17, v130, &v129, v128);
            if (result)
            {
              return result;
            }
          }

          v77 = 0;
          v78 = 0;
          v128[0] = v75;
          v128[1] = v76;
          v104 = *(a4 + 980);
          LODWORD(v130[0]) = *(a4 + 976);
          HIDWORD(v130[0]) = v104;
          v129 = __PAIR64__(v104, v130[0]);
          v113 = 1;
          v106 = __PAIR64__(v75, v76);
          v16 = 1;
        }

        else
        {
          v72 = v120;
          if (v16)
          {
            result = sub_27737E8DC(v17, v130, &v129, v128);
            if (result)
            {
              return result;
            }
          }

          if ((a10 & 0xFD) == 1)
          {
            v79 = a10;
            v80 = a11;
          }

          else
          {
            v79 = 0;
            v80 = 0;
          }

          result = sub_277399C6C(v11, v17, v79, v80);
          if (result)
          {
            return result;
          }

          if (*(v11 + 16) - *v11 > *(v11 + 12) || (v120[54] - 26) < 0xCCu)
          {
            return 4294958327;
          }

          v124 = v120[54] + v124 + 52 - 52 * (((20165 * (v120[54] + v124 + 52)) >> 20) + ((20165 * (v120[54] + v124 + 52)) >> 31));
          v120[55] = v124;
          if (v120[1] - 2 >= 4)
          {
            if (v120[1])
            {
              return 4294958327;
            }

            if (v120[2] == 25)
            {
              result = sub_277395D88(v17);
            }

            else if (v107)
            {
              result = sub_2772C0DBC(v17, *v81.i64, v82, v83, v84, v85, v86);
            }

            else
            {
              result = sub_2772C0ACC(v17, v81, v82, v83, v84, v85, v86);
            }

            if (result)
            {
              return result;
            }
          }

          else
          {
            result = sub_2772C45F0(v17, v81, v82);
            if (result)
            {
              return result;
            }

            v127 = 0;
            result = sub_277395AA8(v17, &v127, v87, v88, v89, v90, v91, v92, v93, v94);
            if (result)
            {
              return result;
            }

            if (v127)
            {
              sub_277370A08(*(a4 + 1312), v59, v60, (*(a4 + 1152) + 80));
            }

            v113 = 1;
          }

          v16 = 0;
          v77 = *(v11 + 36) - v111 + 8 * (*(v11 + 16) - v110);
          v78 = -1;
          v108 = 1;
          v110 = *(v11 + 16);
          v111 = *(v11 + 36);
        }

LABEL_96:
        if (*(a1 + 544))
        {
          sub_27737DF04((a4 + 1458280), v126, v77);
        }

        if (*(*(a4 + 1192) + 1164) <= *(a4 + 992))
        {
          return 4294958327;
        }

        sub_277395954(v126, a6);
        if (v72[1] || v72[2] != 25)
        {
          v95 = v124;
          v96 = sub_2773A31D4(v124, *(*(a4 + 1016) + 56));
          v97 = sub_2773A31D4(v124, *(*(a4 + 1016) + 57));
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
        }

        v98 = *(a4 + 1312);
        v99 = *(*(a4 + 1016) + 3);
        v100 = *(a4 + 1007);
        v101 = *(a4 + 976) + *(v98 + 12) * *(a4 + 980);
        *(*(v98 + 72) + 2 * v101) = v116;
        *(*(v98 + 112) + v101) = v95;
        *(*(v98 + 120) + v101) = v96;
        *(*(v98 + 128) + v101) = v97;
        *(*(v98 + 136) + v101) = v99;
        *(*(v98 + 144) + v101) = v100;
        *(*(v98 + 48) + 12 * v115) = vadd_s32(*(*(v98 + 48) + 12 * v115), vand_s8((v95 | 0x100000000), vdup_n_s32(v78)));
        if (*(a3 + 8))
        {
          return 4294958327;
        }

        v102 = sub_27737A524(v11);
        *a7 = v23;
        v23 = sub_277396C68(v23);
        --v58;
        v17 = v126;
        v19 = v112;
        if (v58 == -1)
        {
          goto LABEL_112;
        }
      }
    }

    v102 = v57;
LABEL_112:
    ;
  }

  while (v102 && v23 < v19);
  if (!v16 || (result = sub_27737E8DC(v17, v130, &v129, v128), !result))
  {
    if (a8)
    {
      *a8 = v113 == 0;
    }

    result = 0;
    if (a9)
    {
      *a9 = v108 == 0;
    }
  }

  return result;
}

void sub_2772A7E00(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int *a7, _DWORD *a8, _DWORD *a9, char a10, int a11)
{
  v133[1] = *MEMORY[0x277D85DE8];
  v11 = a4 + 1425504;
  v132 = -1;
  v133[0] = -1;
  v12 = *(a4 + 1425564);
  v13 = v12 == 5 || v12 == 0;
  if (!v13 || *(a4 + 1164) || *(a2 + 1337) || *(a4 + 1425576))
  {
    return;
  }

  v17 = a3;
  v112 = 0;
  v118 = 0;
  v114 = 0;
  v128 = 0;
  v124 = (a4 + 1458248);
  v129 = (a4 + 976);
  v122 = *(a4 + 1016);
  v18 = a1[1];
  v19 = a1[4] * v18;
  v126 = v18;
  v127 = *(a4 + 1428264) + *(a3 + 72) + 26;
  v20 = (*(*(a4 + 1312) + 48) + 12 * a5);
  v115 = 2 * v18;
  v123 = a4 + 1458264;
  v21 = (a10 & 0xFD) != 1 || a11 == 0;
  v22 = *(a4 + 1425560);
  v23 = !v21;
  v113 = v23;
  v120 = a5;
  *v20 = (63 * a1[39]) >> 6;
  v20[1] = 1;
  v121 = a5;
  do
  {
    **(a4 + 1152) = v22;
    *(a4 + 992) = v22;
    if (v22 >= v19 || (*(a4 + 1004) - 2) < 8u && ((0xA5u >> (*(a4 + 1004) - 2)) & 1) != 0 || *(a4 + 1164))
    {
      return;
    }

    v25 = *(v11 + 16);
    v24 = *(v11 + 24);
    v26 = *(v11 + 32);
    v27 = *(v11 + 36);
    v28 = __clz(v26 | 1);
    if (!v26)
    {
      ++v28;
    }

    if (v28 > 0xC)
    {
      v35 = v27 + 1;
      v36 = (v27 + 1) & 7;
      v37 = (v25 + (v35 >> 3));
      v38 = bswap32(*v37) << v36;
      if (v37 <= v24)
      {
        v39 = v37;
      }

      else
      {
        v39 = *(v11 + 24);
      }

      if (v26 < 0)
      {
        v43 = 0;
      }

      else
      {
        v40 = 0;
        do
        {
          v41 = v38;
          v42 = v36;
          v43 = v40 + 1;
          v44 = (v36 + 1);
          v36 = (v36 + 1) & 7;
          v39 = (v39 + (v44 >> 3));
          v38 = bswap32(*v39) << (v44 & 7);
          if (v39 > v24)
          {
            v39 = *(v11 + 24);
          }

          if ((v41 & 0x80000000) != 0)
          {
            break;
          }
        }

        while (v40++ < 0x1F);
        if (v43 - 1 > 0x17)
        {
          v46 = v38 >> (48 - v43);
          v47 = ((v42 + 1) & 7) + v43;
          v48 = v47 - 16;
          v32 = v47 & 7;
          v49 = (v39 + (v48 >> 3));
          v50 = bswap32(*v49) << v32;
          if (v49 <= v24)
          {
            v51 = v49;
          }

          else
          {
            v51 = *(v11 + 24);
          }

          v53 = *(v51 + 2);
          v52 = (v51 + 2);
          v34 = bswap32(v53) << v32;
          if (v52 <= v24)
          {
            v24 = v52;
          }

          v54 = __PAIR64__(v46, v50) >> 16;
LABEL_49:
          v30 = v54 + ~(-1 << v43);
          goto LABEL_50;
        }
      }

      v54 = v38 >> -v43;
      v55 = v43 + v36;
      v32 = (v43 + v36) & 7;
      v56 = (v39 + (v55 >> 3));
      v34 = bswap32(*v56) << v32;
      if (v56 <= v24)
      {
        v24 = v56;
      }

      goto LABEL_49;
    }

    v29 = (v26 << (v28 + 1)) >> -v28;
    if (!v28)
    {
      v29 = 0;
    }

    v30 = v29 + ~(-1 << v28);
    v31 = v27 + 2 * v28 + 1;
    v32 = v31 & 7;
    v33 = (v25 + (v31 >> 3));
    v34 = bswap32(*v33) << (v31 & 7);
    if (v33 <= v24)
    {
      v24 = v33;
    }

LABEL_50:
    *(v11 + 16) = v24;
    *(v11 + 32) = v34;
    *(v11 + 36) = v32;
    if ((v30 + v22) > v19)
    {
      return;
    }

    v57 = sub_27737A524(v11);
    v125 = !v57;
    if (v57 + v30)
    {
      v58 = v57 + v30 - 1;
      v117 = a7;
      v119 = v17;
      v116 = v19;
      while (1)
      {
        **(a4 + 1152) = v22;
        *(a4 + 992) = v22;
        if (v22 >= v19)
        {
          return;
        }

        if (*(a4 + 1161))
        {
          v59 = v22 % v115 / 2;
          if (*(a4 + 1007) + 2 * (v22 / v115) == 1)
          {
            v60 = v22 & 1;
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v60 = v22 / v126;
          v59 = v22 % v126;
        }

        *(a4 + 976) = v59;
        *(a4 + 980) = v60;
        v61 = *(v123 + 8 * !(v60 & 1));
        *v124 = *(v123 + 8 * (v60 & 1));
        v124[1] = v61;
        *(a4 + 1152) = v61 + 400 * v59;
        *(v124[1] + 400 * v59 + 112) = sub_277398150(*(*(*(a4 + 1192) + 1152) + 8 * a6));
        sub_277395868(*(v11 + 56), *v124, v124[1], v129);
        if (v58 | v125)
        {
          v64 = v122;
          if (sub_277396BEC(*(a4 + 1016), *(a4 + 1024)))
          {
            return;
          }

          *(*(a4 + 1152) + 126) = *(*(a4 + 1024) + 272);
          *&v65 = sub_2772C76A8(v129, v62, v63).u64[0];
          if (v73)
          {
            return;
          }

          if (*(a4 + 1007) || (v74 = *(a4 + 1024), *(v74 + 272) != 1) || (v75 = *(*(a4 + 1152) + 112), v76 = *(v74 + 24), v77 = *(v74 + 25), v76 != 32) && *v75 || v77 != 32 && v75[1] || *(v74 + 356) || *(v74 + 360))
          {
            v78 = v129;
            v79 = v121;
            if (v128 && sub_27737E8DC(v129, v133, &v132, v131) || sub_277395CB8(v129, v65, v66, v67, v68, v69, v70, v71, v72))
            {
              return;
            }

            v80 = 0;
            v81 = 0;
          }

          else
          {
            v79 = v121;
            if (!v128)
            {
              goto LABEL_107;
            }

            if (__PAIR64__(v76, v77) != v112)
            {
              if (sub_27737E8DC(v129, v133, &v132, v131))
              {
                return;
              }

LABEL_107:
              v81 = 0;
              v131[0] = v76;
              v131[1] = v77;
              v110 = *(a4 + 980);
              LODWORD(v133[0]) = *(a4 + 976);
              HIDWORD(v133[0]) = v110;
              v132 = __PAIR64__(v110, v133[0]);
              v118 = 1;
              v112 = __PAIR64__(v76, v77);
              v80 = 1;
LABEL_86:
              v78 = v129;
              goto LABEL_95;
            }

            v81 = 0;
            v80 = v128 + 1;
            v78 = v129;
            v132 = *v129;
          }

          v118 = 1;
        }

        else
        {
          v64 = v122;
          if (v128 && sub_27737E8DC(v129, v133, &v132, v131) || sub_27739A35C(v11, v129, 0, 0) || *(v11 + 16) - *v11 > *(v11 + 12) || (v122[54] - 26) < 0xCCu)
          {
            return;
          }

          v127 = v122[54] + v127 + 52 - 52 * (((20165 * (v122[54] + v127 + 52)) >> 20) + ((20165 * (v122[54] + v127 + 52)) >> 31));
          v122[55] = v127;
          if (v122[1] - 2 < 4)
          {
            *&v88 = sub_2772C76A8(v129, v82, v83).u64[0];
            v79 = v121;
            if (v96)
            {
              return;
            }

            v130 = 0;
            if (sub_277395AA8(v129, &v130, v88, v89, v90, v91, v92, v93, v94, v95))
            {
              return;
            }

            if (v130)
            {
              sub_277370A08(*(a4 + 1312), v59, v60, (*(a4 + 1152) + 80));
            }

            v80 = 0;
            v81 = -1;
            v118 = 1;
            v114 = 1;
            goto LABEL_86;
          }

          v79 = v121;
          if (v122[1])
          {
            return;
          }

          if (v122[2] == 25)
          {
            v78 = v129;
            v97 = sub_277395D88(v129);
          }

          else
          {
            v78 = v129;
            v97 = v113 ? sub_2772C0DBC(v129, *v82.i64, v83, v84, v85, v86, v87) : sub_2772C0ACC(v129, v82, v83, v84, v85, v86, v87);
          }

          if (v97)
          {
            return;
          }

          v80 = 0;
          v81 = -1;
          v114 = 1;
        }

LABEL_95:
        if (*(*(a4 + 1192) + 1164) <= *(a4 + 992))
        {
          return;
        }

        v98 = a6;
        v99 = v79;
        v100 = v81;
        v128 = v80;
        v101 = v98;
        sub_277395954(v78, v98);
        if (v64[1] || v64[2] != 25)
        {
          v102 = v127;
          v103 = sub_2773A31D4(v127, *(*(a4 + 1016) + 56));
          v104 = sub_2773A31D4(v127, *(*(a4 + 1016) + 57));
        }

        else
        {
          v102 = 0;
          v103 = 0;
          v104 = 0;
        }

        v105 = *(a4 + 1312);
        v106 = *(*(a4 + 1016) + 3);
        v107 = *(a4 + 1007);
        v108 = *(a4 + 976) + *(v105 + 12) * *(a4 + 980);
        *(*(v105 + 72) + 2 * v108) = v99;
        *(*(v105 + 112) + v108) = v102;
        *(*(v105 + 120) + v108) = v103;
        *(*(v105 + 128) + v108) = v104;
        *(*(v105 + 136) + v108) = v106;
        *(*(v105 + 144) + v108) = v107;
        v17 = v119;
        *(*(v105 + 48) + 12 * v120) = vadd_s32(*(*(v105 + 48) + 12 * v120), vand_s8((v102 | 0x100000000), vdup_n_s32(v100)));
        if (*(v119 + 8))
        {
          return;
        }

        v109 = sub_27737A524(v11);
        a7 = v117;
        *v117 = v22;
        v22 = sub_277396C68(v22);
        --v58;
        v19 = v116;
        a6 = v101;
        if (v58 == -1)
        {
          goto LABEL_109;
        }
      }
    }

    v109 = v57;
LABEL_109:
    ;
  }

  while (v109 && v22 < v19);
  if (!v128 || !sub_27737E8DC(v129, v133, &v132, v131))
  {
    if (a8)
    {
      *a8 = v118 == 0;
    }

    if (a9)
    {
      *a9 = v114 == 0;
    }
  }
}

uint64_t sub_2772A868C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int *a7, _DWORD *a8, _DWORD *a9, unsigned __int8 a10, int a11)
{
  v11 = a4 + 1425504;
  v12 = *(a4 + 1425564);
  v13 = v12 == 7 || v12 == 2;
  if (v13 && !*(a4 + 1164) && !*(a2 + 1337) && !*(a4 + 1425576))
  {
    v18 = a5;
    v19 = (a4 + 1458248);
    v56 = *(a4 + 1016);
    v20 = a1[1];
    v21 = a1[4] * v20;
    v22 = *(a4 + 1425560);
    v54 = v20;
    v55 = *(a4 + 1428264) + *(a3 + 72) + 26;
    v23 = (*(*(a4 + 1312) + 48) + 12 * a5);
    v50 = 2 * v20;
    v53 = a4 + 1458264;
    v25 = (a10 & 0xFD) == 1 && a11 != 0;
    v49 = v25;
    *v23 = (63 * a1[39]) >> 6;
    v23[1] = 1;
    v51 = a5;
    v52 = v21;
    v48 = (a4 + 1458248);
    while (1)
    {
      **(a4 + 1152) = v22;
      *(a4 + 992) = v22;
      if (v22 >= v21)
      {
        break;
      }

      **(a4 + 1152) = v22;
      *(a4 + 992) = v22;
      if (*(a4 + 1161))
      {
        v26 = v22 % v50 / 2;
        if (*(a4 + 1007) + 2 * (v22 / v50) == 1)
        {
          v27 = v22 & 1;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = v22 / v54;
        v26 = v22 % v54;
      }

      *(a4 + 976) = v26;
      *(a4 + 980) = v27;
      v28 = v27 & 1;
      v29 = *(v53 + 8 * (v28 ^ 1));
      *v19 = *(v53 + 8 * v28);
      v19[1] = v29;
      *(a4 + 1152) = v29 + 400 * v26;
      *(v19[1] + 400 * v26 + 112) = sub_277398150(*(*(*(a4 + 1192) + 1152) + 8 * a6));
      sub_277395868(*(v11 + 56), *v19, v19[1], (a4 + 976));
      result = sub_27739AA34(v11, a4 + 976, a10, a11);
      if (result)
      {
        return result;
      }

      if (*(v11 + 16) - *v11 > *(v11 + 12))
      {
        return 4294958327;
      }

      if ((v56[54] - 26) < 0xCCu)
      {
        return 4294958327;
      }

      v36 = v56[54] + v55 + 52;
      v37 = v36 - 52 * (((20165 * v36) >> 20) + ((20165 * v36) >> 31));
      v56[55] = v36 - 52 * (((20165 * v36) >> 20) + (20165 * v36 < 0));
      if (v56[1])
      {
        return 4294958327;
      }

      if (v56[2] == 25)
      {
        result = sub_277395D88(a4 + 976);
      }

      else
      {
        result = v49 ? sub_2772C0DBC(a4 + 976, *v30.i64, v31, v32, v33, v34, v35) : sub_2772C0ACC(a4 + 976, v30, v31, v32, v33, v34, v35);
      }

      if (result)
      {
        return result;
      }

      if (*(*(a4 + 1192) + 1164) <= *(a4 + 992))
      {
        return 4294958327;
      }

      sub_277395954(a4 + 976, a6);
      if (v56[1])
      {
        return 4294958327;
      }

      v38 = v37;
      LOBYTE(v55) = v37;
      if (v56[2] == 25)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
      }

      else
      {
        v39 = sub_2773A31D4(v37, *(*(a4 + 1016) + 56));
        v19 = v48;
        v40 = sub_2773A31D4(v38, *(*(a4 + 1016) + 57));
      }

      v41 = *(a4 + 1312);
      v42 = *(*(a4 + 1016) + 3);
      v43 = *(a4 + 1007);
      v44 = *(a4 + 976) + *(v41 + 12) * *(a4 + 980);
      *(*(v41 + 72) + 2 * v44) = v18;
      *(*(v41 + 112) + v44) = v38;
      *(*(v41 + 120) + v44) = v39;
      *(*(v41 + 128) + v44) = v40;
      *(*(v41 + 136) + v44) = v42;
      *(*(v41 + 144) + v44) = v43;
      *(*(v41 + 48) + 12 * v51) = vadd_s32(*(*(v41 + 48) + 12 * v51), (v38 | 0x100000000));
      v45 = sub_27737A524(v11);
      *a7 = v22;
      v46 = sub_277396C68(v22);
      v21 = v52;
      if (v45)
      {
        v22 = v46;
        if (v46 < v52)
        {
          continue;
        }
      }

      if (a8)
      {
        *a8 = 1;
      }

      result = 0;
      if (a9)
      {
        *a9 = 0;
      }

      return result;
    }
  }

  return 4294958327;
}

void sub_2772A8A70(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 1458176;
    v3 = (a1 + 1458248);
    if (*(a1 + 1458248))
    {
      j__free(*(a1 + 1458264));
      j__free(*(v2 + 96));
      *v3 = 0u;
      v3[1] = 0u;
    }

    j__free(*(a1 + 1040));

    j__free(a1);
  }
}

uint64_t sub_2772A8AE4(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int a5, unsigned int *a6, unsigned int *a7, unsigned int a8, uint64_t a9, unsigned int *a10, unsigned int a11)
{
  result = 4294958327;
  if (!a5 || !a8)
  {
    return result;
  }

  v18 = a11;
  v21 = a5;
  *a2 = 0;
  a2[36647] = 0;
  do
  {
    v22 = *a3 & 0x1F;
    switch(v22)
    {
      case 6:
        result = sub_27738947C(a3, *a4, a2);
        break;
      case 13:
        result = sub_277389368();
        break;
      case 7:
        if (*a2 || a2[2])
        {
          result = sub_277389120(a3, *a4, a2);
        }

        else
        {
          sub_277389254(a3, *a4, a2);
          result = sub_2773894D4(a3, *a4, v30);
          if (a1)
          {
            *(a1 + 5041852) = v31;
          }
        }

        break;
      default:
        goto LABEL_13;
    }

    if (result)
    {
      return result;
    }

LABEL_13:
    v23 = *a4++;
    a3 = (a3 + v23);
    --v21;
  }

  while (v21);
  if (a11)
  {
    while (1)
    {
      result = sub_277389368();
      if (result)
      {
        break;
      }

      v24 = *a10++;
      a9 += v24;
      if (!--v18)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v25 = a2[2];
    if (!v25 || (result = 4294966630, v25 <= 1) && *a2 <= 1)
    {
      v26 = a8;
      do
      {
        v27 = *a6 & 0x1F;
        if (v27 == 6)
        {
          result = sub_27738947C(a6, *a7, a2);
          if (result)
          {
            return result;
          }
        }

        else if (v27 == 8)
        {
          result = sub_277389370(a6, *a7, a2);
          if (result)
          {
            return result;
          }
        }

        v28 = *a7++;
        a6 = (a6 + v28);
        --v26;
      }

      while (v26);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2772A8CCC(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, int a5)
{
  v7 = *(a2 + 40);
  v6 = *(a2 + 48);
  v8 = *(a2 + 32);
  *(a2 + 64) = 0;
  if (v8 >= 1)
  {
    v32 = a1;
    v9 = 0;
    v10 = 0;
    v33 = 0;
    v11 = (a4 & 0xFFFFFFFD) == 1;
    if (!a5)
    {
      v11 = 0;
    }

    v39 = v11;
    v12 = (a4 & 0xFFFFFFFD) != 1 || a5 != 0;
    v36 = 0;
    v37 = v12;
    v35 = a4 & 0xFD;
    while (1)
    {
      v13 = v6[v9];
      v14 = v7[v9];
      v15 = *v13;
      v16 = *v13 & 0x1F;
      fflush(*MEMORY[0x277D85DF8]);
      v17 = v39;
      if (v16 == 19)
      {
        v17 = 0;
      }

      if (v17)
      {
        break;
      }

      if (v37)
      {
        if (v35 != 1 && (v15 & 0x1B) != 1)
        {
          break;
        }
      }

      else
      {
        if (v16 > 7)
        {
          if (v16 != 8)
          {
LABEL_33:
            if (v16 != 13)
            {
              if (v16 != 19)
              {
                goto LABEL_35;
              }

LABEL_52:
              v6[v9] = 0;
              v7[v9] = 0;
              goto LABEL_53;
            }

            v24 = sub_277389368();
LABEL_46:
            v10 = v24;
            goto LABEL_52;
          }

LABEL_41:
          if (v14 >= 1)
          {
            v20 = *(a2 + 64);
            v21 = v14;
            v22 = v13;
            do
            {
              v23 = *v22;
              v22 = (v22 + 1);
              v20 += v23;
              *(a2 + 64) = v20;
              --v21;
            }

            while (v21);
          }

          v24 = sub_277389370(v13, v14, a3);
          goto LABEL_46;
        }

        if (v16 != 1 && v16 != 5)
        {
          if (v16 == 7)
          {
LABEL_51:
            v10 = sub_277389120(v13, v14, a3);
            v36 = 1;
            goto LABEL_52;
          }

LABEL_35:
          if (v16 == 6 && v14 >= 2)
          {
            v10 = sub_27738947C(v13, v14, a3);
            if (v10)
            {
              return v10;
            }
          }

          goto LABEL_52;
        }
      }

      v10 = sub_277387398(v13, v14, a3, v40, a4, 0);
      if (!v10 && (v41 == 7 || v41 == 2))
      {
        v33 = 1;
      }

      if (v36)
      {
        if (v42)
        {
          goto LABEL_52;
        }

        v36 = 1;
      }

      else
      {
        if (!(a3[36646] | v33) || v42)
        {
          goto LABEL_52;
        }

        v36 = 0;
      }

LABEL_53:
      if (++v9 == v8)
      {
        v25 = 0;
        v26 = v6;
        v27 = v7;
        do
        {
          v29 = *v27++;
          v28 = v29;
          if (*v26)
          {
            v30 = v28 == 0;
          }

          else
          {
            v30 = 1;
          }

          if (!v30)
          {
            v6[v25] = *v26;
            v7[v25++] = v28;
          }

          ++v26;
          --v8;
        }

        while (v8);
        a1 = v32;
        goto LABEL_63;
      }
    }

    if (v16 > 12)
    {
      goto LABEL_33;
    }

    if (v16 == 7)
    {
      goto LABEL_51;
    }

    if (v16 != 8)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v10 = 0;
  v25 = 0;
LABEL_63:
  *(a2 + 32) = v25;
  if (v25 > *(a1 + 12))
  {
    return 4294958327;
  }

  *(a2 + 56) = 0;
  return v10;
}

uint64_t sub_2772A8FB4(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5, _DWORD *a6, uint64_t a7, unsigned int a8, unsigned __int8 a9, int a10, uint64_t *a11, int a12, int a13, int a14)
{
  v19 = a11;
  v20 = a10;
  v227 = *MEMORY[0x277D85DE8];
  v226 = 0;
  v21 = 0uLL;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v217 = 0u;
  if (a14)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0uLL;
    v25 = 4294954948;
    if (!a4 || !a6)
    {
      v203 = 0;
      v204 = 0;
      v205 = 0;
      v29 = 0;
      v202 = 0uLL;
      v201 = 0;
      v30 = 0;
      goto LABEL_26;
    }

    v192 = a8;
    v193 = a5;
    v198 = a13;
    v196 = (a1 + 5041656);
    v26 = a11;
    *(a4 + 76) = 0;
    v27 = (a4 + 76);
    v210 = 0;
    v28 = sub_27737A584((a1 + 4723776), *(a1 + 4870356), &v210);
    if (v28 || (v28 = sub_277389554(v210, &v211, a13), v28))
    {
      v25 = v28;
      v23 = 0;
      v203 = 0;
      v22 = 0;
      v204 = 0;
      v29 = 0;
      v205 = 0;
      v201 = 0;
      v202 = 0uLL;
      v30 = 0;
      v24 = 0uLL;
      v19 = a11;
      goto LABEL_26;
    }

    v191 = a7;
    v200 = 0;
    *(a4 + 136) = v216;
    v21 = *a4;
    v30 = *(a4 + 16);
    v42 = *(a4 + 20);
    v43 = *(a4 + 36);
    HIDWORD(v202) = *(a4 + 60);
    LODWORD(v205) = *(a4 + 64);
    HIDWORD(v205) = *(a4 + 32);
    v226 = *(a4 + 220);
    v22 = *(a4 + 68);
    v204 = *(a4 + 72);
    v44 = *(a4 + 92);
    v217 = *v27;
    v218 = v44;
    v45 = *(a4 + 188);
    v223 = *(a4 + 172);
    v224 = v45;
    v225 = *(a4 + 204);
    v46 = *(a4 + 124);
    v219 = *(a4 + 108);
    v220 = v46;
    v47 = *(a4 + 156);
    v221 = *(a4 + 140);
    v222 = v47;
    if (!*(*(*v196 + 40) + 216))
    {
      v23 = v43;
      v20 = a10;
      if (v42 != 875704438)
      {
        if (HIDWORD(v205) && SHIDWORD(v205) < v212 || v30 && v30 < v211 << (a10 == 0))
        {
          v207 = v21;
          if (a10)
          {
            v48 = sub_277395300((v211 * v212));
            v49 = v211;
          }

          else
          {
            v48 = sub_277395300((2 * v212 * v211));
            v49 = 2 * v211;
          }

          *a4 = v48;
          *(a4 + 16) = v49;
          v200 = 1;
          v21 = v207;
          goto LABEL_85;
        }

        v200 = 0;
      }

LABEL_86:
      v203 = v42;
      v107 = v211;
      *(a4 + 32) = v212;
      v109 = v213;
      v108 = v214;
      *(a4 + 44) = v213;
      *(a4 + 48) = v108;
      v110 = HIDWORD(v215);
      *(&v202 + 4) = v215;
      *(a4 + 52) = v215;
      *(a4 + 56) = v110;
      HIDWORD(v201) = v109;
      LODWORD(v202) = v108;
      *(a4 + 24) = v107;
      *(a4 + 28) = v108 - v109;
      LODWORD(v201) = v108 - v109;
      goto LABEL_8;
    }

    v23 = v43;
LABEL_85:
    v20 = a10;
    goto LABEL_86;
  }

  v192 = a8;
  v193 = a5;
  v198 = a13;
  v196 = (a1 + 5041656);
  v191 = a7;
  v26 = a11;
  v23 = 0;
  v203 = 0;
  v22 = 0;
  v204 = 0;
  v200 = 0;
  v205 = 0;
  v201 = 0;
  v202 = 0uLL;
  v30 = 0;
LABEL_8:
  v206 = v21;
  v197 = v20;
  if ((a9 & 0xFD) == 1)
  {
    v31 = a9;
    v32 = v20;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33 = sub_27737CAE0(a1 + 5016960, a2, a3 != 0, v31, v32, a12);
  v40 = v33;
  v19 = v26;
  if (a14)
  {
    v24 = v206;
    if (!a6)
    {
      v25 = 4294954948;
      goto LABEL_142;
    }

    if (v33)
    {
      if (*(v33 + 1379))
      {
        *a6 = 0;
        *(a4 + 76) = 1;
        v25 = 4294954946;
LABEL_77:
        *v19 = v40;
LABEL_143:
        *(v40 + 1377) = 1;
        if (!*(v40 + 33))
        {
          v174 = *(v40 + 1352);
          if (v174)
          {
            *(v174 + 1377) = 1;
          }
        }

LABEL_146:
        if (!v200)
        {
          return v25;
        }

        goto LABEL_147;
      }

      v50 = *a4;
      v51 = *(a4 + 16);
      v52 = *(a4 + 24);
      v53 = *(a4 + 32);
      v54 = (v33 + 32);
      if (v198)
      {
        v55 = *(v33 + 33) == 0;
      }

      else
      {
        v55 = 1;
      }

      v56 = !v55;
      *(a4 + 64) = v56;
      v22 = *(v33 + 38);
      *(a4 + 68) = v22;
      v204 = *(v33 + 34);
      LODWORD(v205) = v56;
      *(a4 + 72) = v204;
      v57 = (*(a4 + 56) - *(a4 + 52)) >> v56;
      *(a4 + 36) = v53 >> v56;
      *(a4 + 40) = v57;
      v58 = *(*v196 + 40);
      if ((*(v58 + 184) || *(v58 + 216)) && !*(v33 + 1378))
      {
        if ((a9 & 0xFD) != 1 || !v197)
        {
          goto LABEL_141;
        }

        goto LABEL_112;
      }

      v59 = *(v33 + 33);
      v190 = v26;
      if (*(v33 + 1362) != v59)
      {
        *(v33 + 1362) = v59;
        *(v33 + 32) = v59;
        *(v33 + 37) = *(v33 + 38);
        v60 = *(v33 + 136);
        *(v33 + 128) = v60;
        *(v33 + 144) = *(v33 + 152);
        *v24.i8 = vadd_s32(vdup_lane_s32(v60, 1), 0xFFFFFFFF00000002);
        *(v33 + 600) = v24.i64[0];
        v61 = *(v33 + 416);
        if (v61)
        {
          *(v61 + 72) = 1;
          *(v61 + 64) = 0x100000001;
          v24 = xmmword_2773B4190;
          *(v61 + 128) = xmmword_2773B4190;
        }

        v62 = *(v33 + 424);
        if (v62)
        {
          *(v62 + 72) = 1;
          *(v62 + 64) = 0x100000001;
          v24 = xmmword_2773B4190;
          *(v62 + 128) = xmmword_2773B4190;
        }

        v183 = v52;
        v185 = v53;
        v63 = v50;
        v187 = v51;
        v64 = *(v33 + 432);
        if (v64)
        {
          *(v64 + 72) = 1;
          *(v64 + 64) = 0x100000001;
          v24 = xmmword_2773B4190;
          *(v64 + 128) = xmmword_2773B4190;
        }

        sub_2772CBAC8(v33 + 32, *(v33 + 184), v24);
        if (*(v40 + 33))
        {
          v19 = v26;
          v53 = v185;
          v51 = v187;
          v50 = v63;
          v52 = v183;
          if (!*(v40 + 3))
          {
            v65 = *(v40 + 168);
            if (v65)
            {
              v66 = *(v40 + 184);
              if (v66)
              {
                v67 = 0;
                v69 = *(v40 + 64);
                v68 = *(v40 + 72);
                v70 = *(v40 + 180);
                v71 = 2 * *(v40 + 132);
                v72 = 2 * *(v40 + 148);
                v73 = 2 * v65;
                v74 = *(v40 + 164);
                v75 = v69 - 32;
                v76 = -2 * v65;
                v77 = v74 + 48;
                v78 = v69 - v73;
                v79 = v69 + v65;
                v80 = v69 - v65;
                do
                {
                  if (v74 >= -63)
                  {
                    v81 = -16;
                    do
                    {
                      *(v78 + v81 - 16) = *(v75 + v81 + 16);
                      *(v80 + v81 - 16) = *(v79 + v81 - 16);
                      v81 += 16;
                    }

                    while (v81 < v77);
                  }

                  v75 += v76;
                  ++v67;
                  v78 += v76;
                  v79 += v76;
                  v80 += v76;
                }

                while (v67 != 20);
                v82 = 0;
                v83 = (v71 - 2) * v65;
                v84 = v69 + v83 - 32;
                v85 = 3 * v65;
                v86 = v65 + v83;
                v87 = v73 + v83 + v69 - 32;
                v88 = v86 + v69 - 32;
                v89 = v83 + v85 + v69 - 32;
                v50 = v63;
                v53 = v185;
                do
                {
                  if (v74 >= -63)
                  {
                    v90 = -16;
                    do
                    {
                      *(v87 + v90 + 16) = *(v84 + v90 + 16);
                      *(v89 + v90 + 16) = *(v88 + v90 + 16);
                      v90 += 16;
                    }

                    while (v90 < v77);
                  }

                  v84 += v73;
                  ++v82;
                  v87 += v73;
                  v88 += v73;
                  v89 += v73;
                }

                while (v82 != 20);
                v91 = 0;
                v92 = v68 - 16;
                v93 = 2 * v66;
                v94 = v70 + 16;
                v95 = -2 * v66;
                do
                {
                  if (v70 >= -31)
                  {
                    v96 = 0;
                    do
                    {
                      *(v92 + v95 + v96) = *(v92 + v96);
                      *(v92 - v66 + v96) = *(v92 + v66 + v96);
                      v97 = v96 < v94;
                      v96 += 16;
                    }

                    while (v97);
                  }

                  v92 += v95;
                  ++v91;
                }

                while (v91 != 8);
                v98 = 0;
                v99 = (v72 - 2) * v66;
                v100 = v68 + v99 - 16;
                v101 = 3 * v66;
                v102 = v66 + v99;
                v103 = v93 + v99 + v68 - 16;
                v104 = v102 + v68 - 16;
                v105 = v99 + v101 + v68 - 16;
                v19 = v26;
                v51 = v187;
                v52 = v183;
                do
                {
                  if (v70 >= -31)
                  {
                    v106 = -16;
                    do
                    {
                      *(v103 + v106 + 16) = *(v100 + v106 + 16);
                      *(v105 + v106 + 16) = *(v104 + v106 + 16);
                      v106 += 16;
                    }

                    while (v106 < v94);
                  }

                  v100 += v93;
                  ++v98;
                  v103 += v93;
                  v104 += v93;
                  v105 += v93;
                }

                while (v98 != 8);
              }
            }
          }
        }

        else
        {
          v19 = v26;
          v53 = v185;
          v51 = v187;
          v50 = v63;
          v52 = v183;
          if (!*(v40 + 3))
          {
            v111 = *(v40 + 168);
            if (v111)
            {
              v112 = *(v40 + 184);
              if (v112)
              {
                v113 = 0;
                v115 = *(v40 + 64);
                v114 = *(v40 + 72);
                v116 = *(v40 + 180);
                v117 = *(v40 + 132);
                v118 = *(v40 + 148);
                v119 = *(v40 + 164);
                v120 = v115 - 32;
                v121 = 2 * v111;
                v122 = -2 * v111;
                v123 = v119 + 48;
                do
                {
                  if (v119 >= -63)
                  {
                    v124 = 0;
                    do
                    {
                      v125 = *(v120 + v124);
                      *(v120 - v111 + v124) = v125;
                      *(v120 + v122 + v124) = v125;
                      v97 = v124 < v123;
                      v124 += 16;
                    }

                    while (v97);
                  }

                  v120 += v122;
                  ++v113;
                }

                while (v113 != 10);
                v126 = 0;
                v127 = (v117 - 1) * v111;
                v128 = v115 + v127 - 32;
                v129 = v111 + v127 + v115 - 32;
                v130 = v121 + v127 + v115 - 32;
                v53 = v185;
                v51 = v187;
                v50 = v63;
                do
                {
                  if (v119 >= -63)
                  {
                    v131 = 0;
                    do
                    {
                      v132 = *(v128 + v131);
                      *(v129 + v131) = v132;
                      *(v130 + v131) = v132;
                      v97 = v131 < v123;
                      v131 += 16;
                    }

                    while (v97);
                  }

                  v128 += v121;
                  ++v126;
                  v129 += v121;
                  v130 += v121;
                }

                while (v126 != 10);
                v133 = 0;
                v134 = v114 - 16;
                v135 = v116 + 16;
                v19 = v26;
                v52 = v183;
                do
                {
                  if (v116 >= -31)
                  {
                    v136 = 0;
                    do
                    {
                      *(v134 - v112 + v136) = *(v134 + v136);
                      v97 = v136 < v135;
                      v136 += 16;
                    }

                    while (v97);
                  }

                  v134 -= v112;
                  ++v133;
                }

                while (v133 != 8);
                v137 = 0;
                v138 = v114 + (v118 - 1) * v112 - 16;
                do
                {
                  if (v116 >= -31)
                  {
                    v139 = 0;
                    do
                    {
                      *(v138 + v112 + v139) = *(v138 + v139);
                      v97 = v139 < v135;
                      v139 += 16;
                    }

                    while (v97);
                  }

                  v138 += v112;
                  ++v137;
                }

                while (v137 != 8);
              }
            }
          }
        }
      }

      if ((a9 & 0xFD) == 1 && v197)
      {
LABEL_112:
        v140 = v19;
        sub_2772C9A3C(v54, a4, v193);
        v19 = v140;
        v24 = v206;
LABEL_141:
        v25 = 0;
        *a6 = 1;
LABEL_142:
        *v19 = v40;
        if (!v40)
        {
          goto LABEL_146;
        }

        goto LABEL_143;
      }

      v141 = *(v40 + 1384);
      v142 = *(v40 + 1304);
      v143 = *(v40 + 1306);
      v144 = *(v40 + 1305);
      *(a4 + 133) = v143 == 4;
      v145 = *v196;
      v34.i32[0] = *(v40 + 1307);
      v146 = vmovl_u8(v34);
      v211 = v34.i32[0];
      if (v146.i16[0])
      {
        v147 = v146.i8[4];
        v148 = 1;
      }

      else
      {
        v146.i32[0] = *(v40 + 1311);
        v34 = vmovl_u8(*v146.i8).u64[0];
        v211 = v146.i32[0];
        v148 = v34.i8[0] != 0;
        v147 = v34.i8[4];
      }

      if (v148 && v147 && !*(v40 + 33))
      {
        v156 = v23;
        v157 = *(v40 + 1280);
        v158 = *(v40 + 1316);
        v160 = v196 + 1;
        v159 = v196[1];
        if (!v159)
        {
          v184 = v52;
          v186 = v53;
          v195 = v50;
          v189 = v51;
          v182 = sub_277398440(v160);
          if (v182)
          {
            v25 = v182;
            v23 = v156;
            goto LABEL_155;
          }

          v159 = *v160;
          v53 = v186;
          v51 = v189;
          v50 = v195;
          v52 = v184;
        }

        v161 = sub_2773985A8(v54, a4, v50, v51, v52, v53, v191, v192, v198, v157, v158, &v211, v159);
        v23 = v156;
        if (v161)
        {
LABEL_154:
          v25 = v161;
LABEL_155:
          v24 = v206;
          v19 = v190;
          goto LABEL_77;
        }
      }

      else
      {
        if (v142 && v144 == 1 && v141 <= 0x10000)
        {
          v149 = *(v145 + 848);
          if (v149)
          {
LABEL_123:
            v149[66] = *(*(v145 + 40) + 264);
            *(v149 + 112) = 257;
            *(v149 + 226) = v143 == 1;
            *(v149 + 22) = v50;
            v149[46] = v51;
            v149[22] = *(a4 + 20);
            *(v149 + 12) = *(a4 + 176);
            v149[26] = *(a4 + 184);
            *(v149 + 30) = v191;
            v150 = *(v149 + 14);
            *(v149 + 14) = *(v40 + 1392);
            *(v40 + 1392) = v150;
            v151 = *(v149 + 15);
            *(v149 + 15) = *(v40 + 1400);
            *(v40 + 1400) = v151;
            v152 = *(v149 + 16);
            *(v149 + 16) = *(v40 + 1408);
            *(v40 + 1408) = v152;
            v153 = *(v149 + 17);
            *(v149 + 17) = *(v40 + 1416);
            *(v40 + 1416) = v153;
            v154 = *(v149 + 9);
            *(v149 + 9) = *(v40 + 1424);
            *(v40 + 1424) = v154;
            if (sub_2773B17D4(*(*v196 + 80)) <= 2)
            {
              v155 = sub_2773B17D4(*(*v196 + 80));
            }

            else
            {
              v155 = 2;
            }

            v199 = v155;
            v162 = sub_277395300((32 * v155));
            v163 = sub_277395300((16 * v155));
            v164 = v163;
            if (v155)
            {
              v165 = v163 + 1;
              v166 = v162;
              v167 = v155;
              do
              {
                *v166 = 0;
                v166[1] = v149;
                v166[2] = v54;
                v166[3] = v40 + 1152;
                *(v165 - 1) = sub_2773AD200;
                *v165 = v166;
                v166 += 4;
                v165 += 2;
                --v167;
              }

              while (v167);
            }

            v168 = v149[5];
            sub_2773B1C78(*(v149 + 20));
            if (v168)
            {
              memset(*(v149 + 21), 10, v168);
            }

            sub_2773B1C84(*(v149 + 20));
            sub_2773B16E4(*(v145 + 80), v164, v199);
            v169 = *(v149 + 14);
            *(v149 + 14) = *(v40 + 1392);
            *(v40 + 1392) = v169;
            v170 = *(v149 + 15);
            *(v149 + 15) = *(v40 + 1400);
            *(v40 + 1400) = v170;
            v171 = *(v149 + 16);
            *(v149 + 16) = *(v40 + 1408);
            *(v40 + 1408) = v171;
            v172 = *(v149 + 17);
            *(v149 + 17) = *(v40 + 1416);
            *(v40 + 1416) = v172;
            v173 = *(v149 + 9);
            *(v149 + 9) = *(v40 + 1424);
            *(v40 + 1424) = v173;
            j__free(v162);
            j__free(v164);
            goto LABEL_140;
          }

          v194 = v50;
          v188 = v51;
          v149 = sub_2773952EC(0x110uLL);
          *(v145 + 848) = v149;
          v161 = sub_2773AD06C(v149, *(v145 + 4), *(v145 + 8));
          if (!v161)
          {
            bzero(*(v149 + 18), v149[5]);
            bzero(*(v149 + 6), 12 * v149[14]);
            v51 = v188;
            v50 = v194;
            goto LABEL_123;
          }

          goto LABEL_154;
        }

        if (v142 && v143 == 1 && v141 <= 0x10000)
        {
          sub_2772C95C4(v54, a4, v50, v51, v52, v53, v191, v192, v198);
        }

        else
        {
          sub_2772C939C(v54, a4, v50, v51, v146, *&v34, v35, v36, v37, v38, v39, v52, v53, v191, v192, v198);
        }
      }

LABEL_140:
      v24 = v206;
      v19 = v190;
      goto LABEL_141;
    }

    if (*(a4 + 140) == -12356)
    {
      *(a4 + 140) = -12349;
    }

    v25 = 0;
    *a6 = 0;
  }

  else
  {
    v24 = v206;
    if (v33)
    {
      v41 = *(v33 + 1352);
      v25 = 0;
      if (v41)
      {
        *(v41 + 1377) = 1;
      }

      goto LABEL_77;
    }

    v25 = 0;
  }

  v29 = v200;
LABEL_26:
  *v19 = 0;
  if (!v29)
  {
    return v25;
  }

LABEL_147:
  v208 = v24;
  if (*a6 == 1 && SHIDWORD(v205) >= 1)
  {
    v175 = 0;
    v176 = 0;
    do
    {
      memcpy((v208.i64[0] + v175), (*a4 + (*(a4 + 16) * v176++)), v30);
      v175 += v30;
    }

    while (HIDWORD(v205) != v176);
  }

  j__free(*a4);
  *a4 = v208;
  v177 = v224;
  *(a4 + 172) = v223;
  *(a4 + 188) = v177;
  *(a4 + 204) = v225;
  v178 = v220;
  *(a4 + 108) = v219;
  *(a4 + 124) = v178;
  v179 = v222;
  *(a4 + 140) = v221;
  *(a4 + 156) = v179;
  v180 = v218;
  *(a4 + 76) = v217;
  *(a4 + 16) = v30;
  *(a4 + 20) = v203;
  *(a4 + 28) = v201;
  *(a4 + 32) = HIDWORD(v205);
  *(a4 + 36) = v23;
  *(a4 + 44) = HIDWORD(v201);
  *(a4 + 48) = v202;
  *(a4 + 64) = v205;
  *(a4 + 68) = v22;
  *(a4 + 72) = v204;
  *(a4 + 220) = v226;
  *(a4 + 92) = v180;
  return v25;
}

pthread_mutex_t *sub_2772A9E48(pthread_mutex_t *result)
{
  if (SHIDWORD(result->__sig) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = &result->__opaque[24];
    do
    {
      sub_2773B1C78(*&v1->__opaque[8]);
      while (*&v3[147616 * v2] && v2 != LODWORD(v1->__sig))
      {
        sub_2773B1D28(*&v1->__opaque[16], *&v1->__opaque[8]);
      }

      result = sub_2773B1C84(*&v1->__opaque[8]);
      ++v2;
    }

    while (v2 < SHIDWORD(v1->__sig));
  }

  return result;
}

uint64_t sub_2772A9EDC()
{
  sub_2772C15D0();
  sub_2772C17E4();
  v0 = (nullsub_3)();
  nullsub_3(v0);
  sub_2772C190C();
  sub_2772C1928();
  sub_2772C1974();
  nullsub_3(v1);
  sub_2772C1AA0();

  return nullsub_3(v2);
}

uint64_t sub_2772A9F50(uint64_t a1)
{
  *(a1 + 4) = 1;
  v8 = 0;
  v9 = 1;
  v13 = 0;
  sub_277397984(&v8, 3, 0, 2u);
  v2 = 0;
  *(a1 + 1369) = v8;
  *(a1 + 1371) = BYTE4(v8);
  *(a1 + 1370) = BYTE5(v8);
  *(a1 + 1374) = v10;
  *(a1 + 1364) = 0;
  *(a1 + 1366) = v9;
  if ((v11 - 6) <= 0xF)
  {
    v2 = byte_2773B9EA0[v11 - 6];
  }

  *(a1 + 1375) = v2;
  *(a1 + 1382) = v12;
  *(a1 + 1381) = v13;
  *(a1 + 1372) = 0;
  *(a1 + 1376) = 256;
  *(a1 + 1380) = 0;
  *(a1 + 12) = -1;
  *(a1 + 1) = 0;
  *(a1 + 6980) = 0;
  *(a1 + 6984) = 0;
  *(a1 + 6988) = 0;
  *(a1 + 1264) = 0;
  if (!*a1)
  {
    v3 = *(a1 + 416);
    if (v3)
    {
      *(v3 + 72) = 1;
      *(v3 + 64) = 0x100000001;
      *(v3 + 128) = xmmword_2773B4190;
    }

    v4 = *(a1 + 424);
    if (v4)
    {
      *(v4 + 72) = 1;
      *(v4 + 64) = 0x100000001;
      *(v4 + 128) = xmmword_2773B4190;
    }

    v5 = *(a1 + 432);
    if (v5)
    {
      *(v5 + 72) = 1;
      *(v5 + 64) = 0x100000001;
      *(v5 + 128) = xmmword_2773B4190;
    }

    sub_2773983D8(a1 + 1152);
  }

  v6 = *(a1 + 1352);
  if (v6)
  {
    *(v6 + 1352) = 0;
    *(a1 + 1352) = 0;
  }

  *(a1 + 6884) = -1;
  *(a1 + 6892) = -1;
  *(a1 + 6912) = 0u;
  *(a1 + 6928) = 0u;
  *(a1 + 6944) = 0u;
  *(a1 + 6960) = 0;
  sub_27737DED0(a1 + 6996);
  return sub_27737E864(a1 + 7224);
}

uint64_t sub_2772AA154(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = a2 + 672;
  v6 = (a3 & 0xFFFFFFFD) == 1;
  v7 = a4 != 0;
  v8 = v6 && v7;
  if (v6 && v7)
  {
    v5 = 0;
  }

  v9 = *(result + 16);
  v10 = *(result + 24);
  if (*(result + 36))
  {
    v9 = (v9 + 1);
  }

  if (v9 > v10)
  {
    v9 = *(result + 24);
  }

  v11 = bswap32(*v9);
  do
  {
    v12 = HIBYTE(v11);
    v13 = *(v9 + 1);
    v9 = (v9 + 1);
    v11 = bswap32(v13);
    if (v9 > v10)
    {
      v9 = v10;
    }

    *(a2 + 32 + v4) = v12;
    v4 += 2;
  }

  while (v4 != 512);
  if (!v8)
  {
    for (i = 0; i != 128; i += 2)
    {
      v15 = HIBYTE(v11);
      v16 = *(v9 + 1);
      v9 = (v9 + 1);
      v11 = bswap32(v16);
      if (v9 > v10)
      {
        v9 = v10;
      }

      *(a2 + 544 + i) = v15;
    }

    for (j = 0; j != 128; j += 2)
    {
      v18 = HIBYTE(v11);
      v19 = *(v9 + 1);
      v9 = (v9 + 1);
      v11 = bswap32(v19);
      if (v9 > v10)
      {
        v9 = v10;
      }

      *(v5 + j) = v18;
    }
  }

  *(result + 16) = v9;
  *(result + 32) = v11;
  *(result + 36) = 0;
  return result;
}

uint64_t sub_2772AA230(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v11 = *(a1 + 36);
  if ((a2 - 4) >= 0xFFFFFFFE)
  {
    v13 = *(a9 + 2);
    v14 = *(a9 + 3);
    v15 = *(a1 + 24);
    if ((a7 == 2 || *(a9 + 2)) && (a2 != 2 || a3 != 4))
    {
      v16 = 0;
      v17 = 0;
      if (a7 == 2)
      {
        v13 = 2 * v13 + 1;
      }

      if (a8)
      {
        v18 = 16;
      }

      else
      {
        v18 = 32;
      }

      do
      {
        if (a2 == 3 && !*(a4 + 4 * v16) || *(a5 + 4 * v16) == 5)
        {
          LOBYTE(v19) = 32;
        }

        else if (v13 == 1)
        {
          v20 = (v11 + 1);
          v11 = (v11 + 1) & 7;
          v9 = (v9 + (v20 >> 3));
          v21 = ~v10;
          v22 = bswap32(*v9) << (v20 & 7);
          if (v9 > v15)
          {
            v9 = v15;
          }

          v19 = v21 >> 31;
          v10 = v22;
        }

        else
        {
          v23 = __clz(v10 | 1);
          if (v10)
          {
            v24 = v23;
          }

          else
          {
            v24 = v23 + 1;
          }

          v25 = v10 << (v24 + 1) >> -v24;
          if (!v24)
          {
            v25 = 0;
          }

          v19 = v25 + ~(-1 << v24);
          v26 = v11 + 2 * v24 + 1;
          v11 = (v11 + 2 * v24 + 1) & 7;
          v9 = (v9 + (v26 >> 3));
          v10 = bswap32(*v9) << (v26 & 7);
          if (v9 > v15)
          {
            v9 = v15;
          }

          if (v18 <= v19)
          {
LABEL_159:
            v12 = 4294958327;
            goto LABEL_158;
          }
        }

        if (*(a6 + 4 * v16) >= 1)
        {
          v27 = 0;
          v28 = (a9 + 24 + 16 * v17);
          do
          {
            *v28 = v19;
            v28 += 16;
            ++v27;
            ++v17;
          }

          while (v27 < *(a6 + 4 * v16));
        }

        ++v16;
      }

      while (v16 != 4);
    }

    if ((a7 == 2 || v14) && (a2 != 2 || a3 != 4))
    {
      v29 = 0;
      v30 = 0;
      if (a7 == 2)
      {
        v14 = 2 * v14 + 1;
      }

      if (a8)
      {
        v31 = 16;
      }

      else
      {
        v31 = 32;
      }

      do
      {
        if (a2 == 3 && !*(a4 + 4 * v29) || *(a5 + 4 * v29) == 4)
        {
          LOBYTE(v32) = 32;
        }

        else if (v14 == 1)
        {
          v33 = (v11 + 1);
          v11 = (v11 + 1) & 7;
          v9 = (v9 + (v33 >> 3));
          v34 = ~v10;
          v35 = bswap32(*v9) << (v33 & 7);
          if (v9 > v15)
          {
            v9 = v15;
          }

          v32 = v34 >> 31;
          v10 = v35;
        }

        else
        {
          v36 = __clz(v10 | 1);
          if (v10)
          {
            v37 = v36;
          }

          else
          {
            v37 = v36 + 1;
          }

          v38 = v10 << (v37 + 1) >> -v37;
          if (!v37)
          {
            v38 = 0;
          }

          v32 = v38 + ~(-1 << v37);
          v39 = v11 + 2 * v37 + 1;
          v11 = (v11 + 2 * v37 + 1) & 7;
          v9 = (v9 + (v39 >> 3));
          v10 = bswap32(*v9) << (v39 & 7);
          if (v9 > v15)
          {
            v9 = v15;
          }

          if (v31 <= v32)
          {
            goto LABEL_159;
          }
        }

        if (*(a6 + 4 * v29) >= 1)
        {
          v40 = 0;
          v41 = (a9 + 25 + 16 * v30);
          do
          {
            *v41 = v32;
            v41 += 16;
            ++v40;
            ++v30;
          }

          while (v40 < *(a6 + 4 * v29));
        }

        ++v29;
      }

      while (v29 != 4);
    }

    v42 = 0;
    LODWORD(v43) = 0;
    v44 = a9 + 16;
    while (1)
    {
      if (a2 == 3 && !*(a4 + 4 * v42) || *(a5 + 4 * v42) == 5)
      {
        if (*(a6 + 4 * v42) >= 1)
        {
          v45 = 0;
          v46 = (a9 + 16 + 16 * v43);
          do
          {
            *v46 = 0;
            v46 += 4;
            ++v45;
            LODWORD(v43) = v43 + 1;
          }

          while (v45 < *(a6 + 4 * v42));
        }

        goto LABEL_108;
      }

      if (*(a6 + 4 * v42) >= 1)
      {
        break;
      }

LABEL_108:
      if (++v42 == 4)
      {
        v82 = 0;
        LODWORD(v83) = 0;
        while (1)
        {
          if (a2 == 3 && !*(a4 + 4 * v82) || *(a5 + 4 * v82) == 4)
          {
            if (*(a6 + 4 * v82) >= 1)
            {
              v84 = 0;
              v85 = (a9 + 20 + 16 * v83);
              do
              {
                *v85 = 0;
                v85 += 4;
                ++v84;
                LODWORD(v83) = v83 + 1;
              }

              while (v84 < *(a6 + 4 * v82));
            }

            goto LABEL_156;
          }

          if (*(a6 + 4 * v82) >= 1)
          {
            break;
          }

LABEL_156:
          if (++v82 == 4)
          {
            v12 = 0;
            goto LABEL_158;
          }
        }

        v86 = 0;
        v83 = v83;
        while (2)
        {
          v87 = __clz(v10 | 1);
          if (!v10)
          {
            ++v87;
          }

          if (v87 <= 0xC)
          {
            v88 = v10 << (v87 + 1) >> -v87;
            if (v87)
            {
              v89 = v88;
            }

            else
            {
              v89 = 0;
            }

            v90 = 1 << v87;
            v91 = v11 + 2 * v87 + 1;
            v92 = v91 & 7;
            v93 = (v9 + (v91 >> 3));
            v94 = bswap32(*v93) << v92;
            if (v93 <= v15)
            {
              v95 = v93;
            }

            else
            {
              v95 = v15;
            }

            v96 = v89 + v90;
LABEL_149:
            v115 = v44 + 16 * v83;
            *(v115 + 4) = (v96 >> 1) - (v96 >> 1) * 2 * (v96 & 1);
            v116 = __clz(v94 | 1);
            if (!v94)
            {
              ++v116;
            }

            v117 = v94 << (v116 + 1) >> -v116;
            if (!v116)
            {
              v117 = 0;
            }

            v118 = 1 << v116;
            v119 = v92 + 2 * v116 + 1;
            v11 = v119 & 7;
            v9 = (v95 + (v119 >> 3));
            v10 = bswap32(*v9) << (v119 & 7);
            if (v9 > v15)
            {
              v9 = v15;
            }

            *(v115 + 6) = ((v117 + v118) >> 1) - ((v117 + v118) >> 1) * 2 * ((v117 + v118) & 1);
            ++v83;
            if (++v86 >= *(a6 + 4 * v82))
            {
              goto LABEL_156;
            }

            continue;
          }

          break;
        }

        v97 = (v11 + 1);
        v98 = v97 & 7;
        v99 = (v9 + (v97 >> 3));
        v100 = bswap32(*v99) << v98;
        if (v99 <= v15)
        {
          v101 = v99;
        }

        else
        {
          v101 = v15;
        }

        if ((v10 & 0x80000000) != 0)
        {
          v105 = 0;
        }

        else
        {
          v102 = 0;
          do
          {
            v103 = v98;
            v104 = v100;
            v105 = v102 + 1;
            v106 = (v98 + 1);
            v98 = (v98 + 1) & 7;
            v101 = (v101 + (v106 >> 3));
            v100 = bswap32(*v101) << (v106 & 7);
            if (v101 > v15)
            {
              v101 = v15;
            }

            if ((v104 & 0x80000000) != 0)
            {
              break;
            }

            v68 = v102++ >= 0x1F;
          }

          while (!v68);
          if (v105 - 1 > 0x17)
          {
            v107 = v100 >> (48 - v105);
            v108 = ((v103 + 1) & 7) + v105;
            v109 = v108 - 16;
            v92 = v108 & 7;
            v110 = (v101 + (v109 >> 3));
            v111 = bswap32(*v110) << v92;
            if (v110 > v15)
            {
              v110 = v15;
            }

            v112 = *(v110 + 2);
            v95 = (v110 + 2);
            v94 = bswap32(v112) << v92;
            if (v95 > v15)
            {
              v95 = v15;
            }

            v113 = __PAIR64__(v107, v111) >> 16;
LABEL_148:
            v96 = v113 + (1 << v105);
            goto LABEL_149;
          }
        }

        v113 = v100 >> -v105;
        v114 = v98 + v105;
        v92 = v114 & 7;
        v95 = (v101 + (v114 >> 3));
        v94 = bswap32(*v95) << (v114 & 7);
        if (v95 > v15)
        {
          v95 = v15;
        }

        goto LABEL_148;
      }
    }

    v47 = 0;
    v43 = v43;
    while (1)
    {
      v48 = __clz(v10 | 1);
      if (!v10)
      {
        ++v48;
      }

      if (v48 <= 0xC)
      {
        v49 = v10 << (v48 + 1) >> -v48;
        if (v48)
        {
          v50 = v49;
        }

        else
        {
          v50 = 0;
        }

        v51 = 1 << v48;
        v52 = v11 + 2 * v48 + 1;
        v53 = v52 & 7;
        v54 = (v9 + (v52 >> 3));
        v55 = bswap32(*v54) << v53;
        if (v54 <= v15)
        {
          v56 = v54;
        }

        else
        {
          v56 = v15;
        }

        v57 = v50 + v51;
        goto LABEL_101;
      }

      v58 = (v11 + 1);
      v59 = v58 & 7;
      v60 = (v9 + (v58 >> 3));
      v61 = bswap32(*v60) << v59;
      v62 = v60 <= v15 ? v60 : v15;
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }

      v63 = 0;
      do
      {
        v64 = v59;
        v65 = v61;
        v66 = v63 + 1;
        v67 = (v59 + 1);
        v59 = (v59 + 1) & 7;
        v62 = (v62 + (v67 >> 3));
        v61 = bswap32(*v62) << (v67 & 7);
        if (v62 > v15)
        {
          v62 = v15;
        }

        if ((v65 & 0x80000000) != 0)
        {
          break;
        }

        v68 = v63++ >= 0x1F;
      }

      while (!v68);
      if (v66 - 1 <= 0x17)
      {
        goto LABEL_98;
      }

      v69 = v61 >> (48 - v66);
      v70 = ((v64 + 1) & 7) + v66;
      v71 = v70 - 16;
      v53 = v70 & 7;
      v72 = (v62 + (v71 >> 3));
      v73 = bswap32(*v72) << v53;
      if (v72 > v15)
      {
        v72 = v15;
      }

      v74 = *(v72 + 2);
      v56 = (v72 + 2);
      v55 = bswap32(v74) << v53;
      if (v56 > v15)
      {
        v56 = v15;
      }

      v75 = __PAIR64__(v69, v73) >> 16;
LABEL_100:
      v57 = v75 + (1 << v66);
LABEL_101:
      v77 = (v44 + 16 * v43);
      *v77 = (v57 >> 1) - (v57 >> 1) * 2 * (v57 & 1);
      v78 = __clz(v55 | 1);
      if (!v55)
      {
        ++v78;
      }

      v79 = v55 << (v78 + 1) >> -v78;
      if (!v78)
      {
        v79 = 0;
      }

      v80 = 1 << v78;
      v81 = v53 + 2 * v78 + 1;
      v11 = v81 & 7;
      v9 = (v56 + (v81 >> 3));
      v10 = bswap32(*v9) << (v81 & 7);
      if (v9 > v15)
      {
        v9 = v15;
      }

      v77[1] = ((v79 + v80) >> 1) - ((v79 + v80) >> 1) * 2 * ((v79 + v80) & 1);
      ++v43;
      if (++v47 >= *(a6 + 4 * v42))
      {
        goto LABEL_108;
      }
    }

    v66 = 0;
LABEL_98:
    v75 = v61 >> -v66;
    v76 = v59 + v66;
    v53 = v76 & 7;
    v56 = (v62 + (v76 >> 3));
    v55 = bswap32(*v56) << (v76 & 7);
    if (v56 > v15)
    {
      v56 = v15;
    }

    goto LABEL_100;
  }

  v12 = 4294958327;
LABEL_158:
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 36) = v11;
  return v12;
}

uint64_t sub_2772AA9D4(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int8 a9, uint64_t a10, char a11, int a12)
{
  v92 = *MEMORY[0x277D85DE8];
  if (*(a4 + 29))
  {
    v18 = 1;
  }

  else
  {
    v18 = *(a4 + 31) == 2;
  }

  v19 = *(*(a4 + 40) + 1);
  v86 = v19;
  if (a2)
  {
    v20 = *(a4 + 128);
    v21 = 5;
    if (v20 && (*(a4 + 185) & 1) != 0)
    {
      v22 = *(v20 + 144);
      v23 = (*(a4 + 16) & 1) != 0 && v22 == 1;
      v24 = v23 && *(a4 + 31) == 1;
      v21 = 13;
      if (!v24)
      {
        v21 = 5;
      }
    }

    if (a6)
    {
      v25 = *(a6 + v21);
      v26 = 1;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v29 = a6;
    if (a7)
    {
      v30 = *(a7 + 10);
      v31 = 1;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    if (sub_2772AC7A8(a1, byte_2773B73E8[(v30 + v25 + (v31 & v26)) >> (v31 & v26)], a10, 0x10u) == 999)
    {
      return 4294958327;
    }

    v28 = 15;
    v27 = 1;
    a6 = v29;
    v19 = v86;
  }

  else
  {
    v27 = 0;
    v28 = 16;
  }

  v87 = v27;
  v89 = a7;
  v90 = a1;
  if (a3)
  {
    v33 = v91;
    memset(v91, 0, sizeof(v91));
  }

  else
  {
    v33 = (a10 + 32);
  }

  v34 = 0;
  v35 = v33 + 2 * v87;
  v36 = 48;
  if (!v19)
  {
    v36 = 0;
  }

  v37 = a4 + 1422194;
  v85 = v18;
  if (v18)
  {
    v37 = a4 + 1422418;
  }

  v38 = v37 + v87 + v36;
  do
  {
    if ((a8 >> (v34 >> 2)))
    {
      v39 = a6;
      v40 = sub_27737D980(v34, a5, a6, v89, a4);
      v41 = sub_2772AC7A8(v90, v40, v35, v28);
      if (v41 == 999)
      {
        return 4294958327;
      }

      *(a5 + v34) = v41;
      a6 = v39;
      if (!a3 && *(a4 + 1422192))
      {
        v42 = 0;
        do
        {
          *(v35 + 2 * v42) *= *(v38 + v42);
          ++v42;
        }

        while (16 - v87 != v42);
      }
    }

    v35 += 32;
    ++v34;
  }

  while (v34 != 16);
  if (a3)
  {
    v43 = 0;
    v44 = a10 + 2 * v87 + 32;
    v45 = v91;
    do
    {
      v46 = 0;
      v47 = v44;
      v48 = v45;
      do
      {
        v49 = 0;
        v50 = v47;
        do
        {
          *v50 = *(v48 + v49);
          v50 += 4;
          v49 += 2;
        }

        while (v49 != 32);
        ++v46;
        v48 += 2;
        ++v47;
      }

      while (v46 != 4);
      v44 += 128;
      ++v43;
      v45 += 8;
    }

    while (v43 != 4);
  }

  v51 = a11 & 0xFD;
  if (v51 != 1 || !a12)
  {
    if (a12 || v51 != 1)
    {
      v52 = a9;
      if (!a9 && v51 != 1)
      {
        return 0;
      }
    }

    else
    {
      v52 = a9;
      if (!a9)
      {
        return 0;
      }
    }

    v88 = a6;
    if (sub_2772AC7A8(v90, 0, a10 + 800, 4u) == 999 || sub_2772AC7A8(v90, 0, a10 + 808, 4u) == 999)
    {
      return 4294958327;
    }

    if (*(a4 + 1422192))
    {
      v53 = 0;
      v54 = 64;
      if (!v86)
      {
        v54 = 16;
      }

      if (v18)
      {
        v55 = a4 + 1422418;
      }

      else
      {
        v55 = a4 + 1422194;
      }

      do
      {
        *(a10 + 800 + v53) *= *(v55 + v54);
        v53 += 2;
      }

      while (v53 != 8);
      v56 = 0;
      v57 = 80;
      if (!v86)
      {
        v57 = 32;
      }

      if (v18)
      {
        v58 = a4 + 1422418;
      }

      else
      {
        v58 = a4 + 1422194;
      }

      do
      {
        *(a10 + 808 + v56) *= *(v58 + v57);
        v56 += 2;
      }

      while (v56 != 8);
    }

    if (v52 != 1)
    {
      v59 = 0;
      if (v88)
      {
        v60 = v88 + 16;
      }

      else
      {
        v60 = 0;
      }

      if (v89)
      {
        v61 = v89 + 16;
      }

      else
      {
        v61 = 0;
      }

      v62 = *(a4 + 168);
      if (v62)
      {
        v63 = v62 + 96;
      }

      else
      {
        v63 = 0;
      }

      if (a5)
      {
        v64 = a5 + 16;
      }

      else
      {
        v64 = 0;
      }

      v65 = 64;
      if (!v86)
      {
        v65 = 16;
      }

      if (v18)
      {
        v66 = a4 + 1422418;
      }

      else
      {
        v66 = a4 + 1422194;
      }

      v67 = a10 + 546;
      v68 = v66 + v65 + 1;
      while (1)
      {
        v69 = sub_27737DA74(v59, v64, v60, v61, v63, a4);
        v70 = sub_2772AC7A8(v90, v69, v67, 0xFu);
        if (v70 == 999)
        {
          break;
        }

        *(v64 + v59) = v70;
        if (*(a4 + 1422192))
        {
          for (i = 0; i != 15; ++i)
          {
            *(v67 + 2 * i) *= *(v68 + i);
          }
        }

        v67 += 32;
        if (++v59 == 4)
        {
          v72 = 0;
          if (v88)
          {
            v73 = v88 + 20;
          }

          else
          {
            v73 = 0;
          }

          if (v89)
          {
            v74 = v89 + 20;
          }

          else
          {
            v74 = 0;
          }

          v75 = *(a4 + 168);
          if (v75)
          {
            v76 = v75 + 100;
          }

          else
          {
            v76 = 0;
          }

          if (a5)
          {
            v77 = a5 + 20;
          }

          else
          {
            v77 = 0;
          }

          v78 = 80;
          if (!v86)
          {
            v78 = 32;
          }

          v79 = a10 + 674;
          v80 = a4 + 1422418;
          if (!v85)
          {
            v80 = a4 + 1422194;
          }

          v81 = v80 + v78 + 1;
          while (1)
          {
            v82 = sub_27737DA74(v72, v77, v73, v74, v76, a4);
            v83 = sub_2772AC7A8(v90, v82, v79, 0xFu);
            if (v83 == 999)
            {
              break;
            }

            *(v77 + v72) = v83;
            if (*(a4 + 1422192))
            {
              for (j = 0; j != 15; ++j)
              {
                *(v79 + 2 * j) *= *(v81 + j);
              }
            }

            result = 0;
            v79 += 32;
            if (++v72 == 4)
            {
              return result;
            }
          }

          return 4294958327;
        }
      }

      return 4294958327;
    }
  }

  return 0;
}

uint64_t sub_2772AB010(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 - 4) >= 0xFFFFFFFE)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    v8 = a6 + 16;
    v9 = *(result + 36);
    v10 = *(result + 32);
    v12 = *(result + 16);
    v11 = *(result + 24);
    while (1)
    {
      if (a2 == 3 && !*(a3 + 4 * v6) || *(a4 + 4 * v6) == 5)
      {
        if (*(a5 + 4 * v6) >= 1)
        {
          v13 = 0;
          v14 = (v8 + 16 * v7);
          do
          {
            *v14 = 0;
            v14 += 4;
            ++v13;
            LODWORD(v7) = v7 + 1;
          }

          while (v13 < *(a5 + 4 * v6));
        }

        goto LABEL_49;
      }

      if (*(a5 + 4 * v6) >= 1)
      {
        break;
      }

LABEL_49:
      if (++v6 == 4)
      {
        v50 = 0;
        LODWORD(v51) = 0;
        v52 = a6 + 20;
        while (1)
        {
          if (a2 == 3 && !*(a3 + 4 * v50) || *(a4 + 4 * v50) == 4)
          {
            if (*(a5 + 4 * v50) >= 1)
            {
              v53 = 0;
              v54 = (v52 + 16 * v51);
              do
              {
                *v54 = 0;
                v54 += 4;
                ++v53;
                LODWORD(v51) = v51 + 1;
              }

              while (v53 < *(a5 + 4 * v50));
            }

            goto LABEL_97;
          }

          if (*(a5 + 4 * v50) >= 1)
          {
            break;
          }

LABEL_97:
          if (++v50 == 4)
          {
            *(result + 16) = v12;
            *(result + 32) = v10;
            *(result + 36) = v9;
            return result;
          }
        }

        v55 = 0;
        v51 = v51;
        while (2)
        {
          v56 = __clz(v10 | 1);
          if (!v10)
          {
            ++v56;
          }

          if (v56 <= 0xC)
          {
            v57 = v10 << (v56 + 1) >> -v56;
            if (v56)
            {
              v58 = v57;
            }

            else
            {
              v58 = 0;
            }

            v59 = 1 << v56;
            v60 = v9 + 2 * v56 + 1;
            v61 = v60 & 7;
            v62 = (v12 + (v60 >> 3));
            v63 = bswap32(*v62) << v61;
            if (v62 <= v11)
            {
              v64 = v62;
            }

            else
            {
              v64 = v11;
            }

            v65 = v58 + v59;
LABEL_90:
            v84 = v8 + 16 * v51;
            *(v84 + 4) = (v65 >> 1) - (v65 >> 1) * 2 * (v65 & 1);
            v85 = __clz(v63 | 1);
            if (!v63)
            {
              ++v85;
            }

            v86 = v63 << (v85 + 1) >> -v85;
            if (!v85)
            {
              v86 = 0;
            }

            v87 = 1 << v85;
            v88 = v61 + 2 * v85 + 1;
            v9 = v88 & 7;
            v12 = (v64 + (v88 >> 3));
            v10 = bswap32(*v12) << (v88 & 7);
            if (v12 > v11)
            {
              v12 = v11;
            }

            *(v84 + 6) = ((v86 + v87) >> 1) - ((v86 + v87) >> 1) * 2 * ((v86 + v87) & 1);
            ++v51;
            if (++v55 >= *(a5 + 4 * v50))
            {
              goto LABEL_97;
            }

            continue;
          }

          break;
        }

        v66 = (v9 + 1);
        v67 = v66 & 7;
        v68 = (v12 + (v66 >> 3));
        v69 = bswap32(*v68) << v67;
        if (v68 <= v11)
        {
          v70 = v68;
        }

        else
        {
          v70 = v11;
        }

        if ((v10 & 0x80000000) != 0)
        {
          v74 = 0;
        }

        else
        {
          v71 = 0;
          do
          {
            v72 = v67;
            v73 = v69;
            v74 = v71 + 1;
            v75 = (v67 + 1);
            v67 = (v67 + 1) & 7;
            v70 = (v70 + (v75 >> 3));
            v69 = bswap32(*v70) << (v75 & 7);
            if (v70 > v11)
            {
              v70 = v11;
            }

            if ((v73 & 0x80000000) != 0)
            {
              break;
            }

            v36 = v71++ >= 0x1F;
          }

          while (!v36);
          if (v74 - 1 > 0x17)
          {
            v76 = v69 >> (48 - v74);
            v77 = ((v72 + 1) & 7) + v74;
            v78 = v77 - 16;
            v61 = v77 & 7;
            v79 = (v70 + (v78 >> 3));
            v80 = bswap32(*v79) << v61;
            if (v79 > v11)
            {
              v79 = v11;
            }

            v81 = *(v79 + 2);
            v64 = (v79 + 2);
            v63 = bswap32(v81) << v61;
            if (v64 > v11)
            {
              v64 = v11;
            }

            v82 = __PAIR64__(v76, v80) >> 16;
LABEL_89:
            v65 = v82 + (1 << v74);
            goto LABEL_90;
          }
        }

        v82 = v69 >> -v74;
        v83 = v67 + v74;
        v61 = v83 & 7;
        v64 = (v70 + (v83 >> 3));
        v63 = bswap32(*v64) << (v83 & 7);
        if (v64 > v11)
        {
          v64 = v11;
        }

        goto LABEL_89;
      }
    }

    v15 = 0;
    v7 = v7;
    while (1)
    {
      v16 = __clz(v10 | 1);
      if (!v10)
      {
        ++v16;
      }

      if (v16 <= 0xC)
      {
        v17 = v10 << (v16 + 1) >> -v16;
        if (v16)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = 1 << v16;
        v20 = v9 + 2 * v16 + 1;
        v21 = v20 & 7;
        v22 = (v12 + (v20 >> 3));
        v23 = bswap32(*v22) << v21;
        if (v22 <= v11)
        {
          v24 = v22;
        }

        else
        {
          v24 = v11;
        }

        v25 = v18 + v19;
        goto LABEL_42;
      }

      v26 = (v9 + 1);
      v27 = v26 & 7;
      v28 = (v12 + (v26 >> 3));
      v29 = bswap32(*v28) << v27;
      v30 = v28 <= v11 ? v28 : v11;
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }

      v31 = 0;
      do
      {
        v32 = v27;
        v33 = v29;
        v34 = v31 + 1;
        v35 = (v27 + 1);
        v27 = (v27 + 1) & 7;
        v30 = (v30 + (v35 >> 3));
        v29 = bswap32(*v30) << (v35 & 7);
        if (v30 > v11)
        {
          v30 = v11;
        }

        if ((v33 & 0x80000000) != 0)
        {
          break;
        }

        v36 = v31++ >= 0x1F;
      }

      while (!v36);
      if (v34 - 1 <= 0x17)
      {
        goto LABEL_39;
      }

      v37 = v29 >> (48 - v34);
      v38 = ((v32 + 1) & 7) + v34;
      v39 = v38 - 16;
      v21 = v38 & 7;
      v40 = (v30 + (v39 >> 3));
      v41 = bswap32(*v40) << v21;
      if (v40 > v11)
      {
        v40 = v11;
      }

      v42 = *(v40 + 2);
      v24 = (v40 + 2);
      v23 = bswap32(v42) << v21;
      if (v24 > v11)
      {
        v24 = v11;
      }

      v43 = __PAIR64__(v37, v41) >> 16;
LABEL_41:
      v25 = v43 + (1 << v34);
LABEL_42:
      v45 = (v8 + 16 * v7);
      *v45 = (v25 >> 1) - (v25 >> 1) * 2 * (v25 & 1);
      v46 = __clz(v23 | 1);
      if (!v23)
      {
        ++v46;
      }

      v47 = v23 << (v46 + 1) >> -v46;
      if (!v46)
      {
        v47 = 0;
      }

      v48 = 1 << v46;
      v49 = v21 + 2 * v46 + 1;
      v9 = v49 & 7;
      v12 = (v24 + (v49 >> 3));
      v10 = bswap32(*v12) << (v49 & 7);
      if (v12 > v11)
      {
        v12 = v11;
      }

      v45[1] = ((v47 + v48) >> 1) - ((v47 + v48) >> 1) * 2 * ((v47 + v48) & 1);
      ++v7;
      if (++v15 >= *(a5 + 4 * v6))
      {
        goto LABEL_49;
      }
    }

    v34 = 0;
LABEL_39:
    v43 = v29 >> -v34;
    v44 = v27 + v34;
    v21 = v44 & 7;
    v24 = (v30 + (v44 >> 3));
    v23 = bswap32(*v24) << (v44 & 7);
    if (v24 > v11)
    {
      v24 = v11;
    }

    goto LABEL_41;
  }

  return result;
}

uint64_t sub_2772AB500(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  if (v4 <= 7 && ((1 << v4) & 0x86) != 0)
  {
    v6 = *(a2 + 1);
    v7 = (a2 + 290);
    v8 = (result + 36);
    v9 = *(result + 36);
    v10 = *(result + 16);
    v11 = *(result + 24);
    v12 = *(result + 32);
    if ((a3 & 0xFFFFFFFD) == 1)
    {
      if (v4 == 1)
      {
        v13 = 16;
        do
        {
          v14 = (v9 + 1);
          v9 = (v9 + 1) & 7;
          v10 = (v10 + (v14 >> 3));
          v15 = bswap32(*v10) << (v14 & 7);
          if (v10 > v11)
          {
            v10 = v11;
          }

          if ((v12 & 0x80000000) == 0)
          {
            v16 = v15 >> 29;
            v17 = (v9 + 3);
            v9 = (v9 + 3) & 7;
            v10 = (v10 + (v17 >> 3));
            v15 = bswap32(*v10) << (v17 & 7);
            if (v10 > v11)
            {
              v10 = v11;
            }

            v7[20] = v16;
          }

          *v7++ = v12 < 0;
          v12 = v15;
          --v13;
        }

        while (v13);
      }

      else
      {
        v15 = *(result + 32);
      }

      if (v4 == 7)
      {
        v99 = (a2 + 306);
        v100 = 4;
        do
        {
          v101 = (v9 + 1);
          v9 = (v9 + 1) & 7;
          v10 = (v10 + (v101 >> 3));
          v102 = bswap32(*v10) << (v101 & 7);
          if (v10 > v11)
          {
            v10 = v11;
          }

          if ((v15 & 0x80000000) == 0)
          {
            v103 = v102 >> 29;
            v104 = (v9 + 3);
            v9 = (v9 + 3) & 7;
            v10 = (v10 + (v104 >> 3));
            v102 = bswap32(*v10) << (v104 & 7);
            if (v10 > v11)
            {
              v10 = v11;
            }

            v99[20] = v103;
          }

          *v99++ = v15 < 0;
          v15 = v102;
          --v100;
        }

        while (v100);
      }

      else
      {
        v102 = v15;
      }

      LOBYTE(v114) = 0;
      if (a4 != 1 && v6)
      {
        v115 = __clz(v102 | 1);
        if (!v102)
        {
          ++v115;
        }

        v116 = v102 << (v115 + 1) >> -v115;
        if (!v115)
        {
          v116 = 0;
        }

        v114 = v116 + ~(-1 << v115);
        v117 = v9 + 2 * v115 + 1;
        LOBYTE(v9) = v117 & 7;
        v10 = (v10 + (v117 >> 3));
        v102 = bswap32(*v10) << (v117 & 7);
        if (v10 > v11)
        {
          v10 = v11;
        }
      }

      *(a2 + 289) = v114;
      goto LABEL_150;
    }

    if (v4 == 1)
    {
      v18 = 16;
      do
      {
        v19 = (v9 + 1);
        v9 = (v9 + 1) & 7;
        v10 = (v10 + (v19 >> 3));
        v20 = bswap32(*v10) << (v19 & 7);
        if (v10 > v11)
        {
          v10 = v11;
        }

        if ((v12 & 0x80000000) == 0)
        {
          v21 = v20 >> 29;
          v22 = (v9 + 3);
          v9 = (v9 + 3) & 7;
          v10 = (v10 + (v22 >> 3));
          v20 = bswap32(*v10) << (v22 & 7);
          if (v10 > v11)
          {
            v10 = v11;
          }

          v7[20] = v21;
        }

        *v7++ = v12 < 0;
        v12 = v20;
        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = *(result + 32);
    }

    if (v4 == 7)
    {
      v105 = (a2 + 306);
      v106 = 4;
      do
      {
        v107 = (v9 + 1);
        v9 = (v9 + 1) & 7;
        v10 = (v10 + (v107 >> 3));
        v102 = bswap32(*v10) << (v107 & 7);
        if (v10 > v11)
        {
          v10 = v11;
        }

        if ((v20 & 0x80000000) == 0)
        {
          v108 = v102 >> 29;
          v109 = (v9 + 3);
          v9 = (v9 + 3) & 7;
          v10 = (v10 + (v109 >> 3));
          v102 = bswap32(*v10) << (v109 & 7);
          if (v10 > v11)
          {
            v10 = v11;
          }

          v105[20] = v108;
        }

        *v105++ = v20 < 0;
        v20 = v102;
        --v106;
      }

      while (v106);
      if (!v6)
      {
        goto LABEL_139;
      }
    }

    else
    {
      v102 = v20;
      if (!v6)
      {
LABEL_139:
        *(a2 + 289) = v6;
LABEL_150:
        *(result + 16) = v10;
        *(result + 32) = v102;
        goto LABEL_151;
      }
    }

    v110 = __clz(v102 | 1);
    if (v102)
    {
      v111 = v110;
    }

    else
    {
      v111 = v110 + 1;
    }

    v112 = v102 << (v111 + 1) >> -v111;
    if (!v111)
    {
      v112 = 0;
    }

    v6 = v112 + ~(-1 << v111);
    v113 = v9 + 2 * v111 + 1;
    LOBYTE(v9) = (v9 + 2 * v111 + 1) & 7;
    v10 = (v10 + (v113 >> 3));
    v102 = bswap32(*v10) << (v113 & 7);
    if (v10 > v11)
    {
      v10 = v11;
    }

    goto LABEL_139;
  }

  v8 = (result + 36);
  v9 = *(result + 36);
  v23 = *(result + 16);
  v24 = *(result + 32);
  v25 = *(a2 + 272);
  if (*(a2 + 272))
  {
    v26 = 0;
    v27 = *(result + 24);
    v28 = a2 + 16;
    while (1)
    {
      v29 = v28 + 16 * v26;
      if (*(v29 + 15) != 5)
      {
        break;
      }

LABEL_67:
      if (++v26 == v25)
      {
        v64 = 0;
        while (1)
        {
          v65 = v28 + 16 * v64;
          if (*(v65 + 15) != 4)
          {
            break;
          }

LABEL_108:
          if (++v64 == v25)
          {
            goto LABEL_109;
          }
        }

        v66 = __clz(v24 | 1);
        if (!v24)
        {
          ++v66;
        }

        if (v66 <= 0xC)
        {
          v67 = v24 << (v66 + 1) >> -v66;
          if (v66)
          {
            v68 = v67;
          }

          else
          {
            v68 = 0;
          }

          v69 = 1 << v66;
          v70 = v9 + 2 * v66 + 1;
          v71 = v70 & 7;
          v72 = (v23 + (v70 >> 3));
          v73 = bswap32(*v72) << v71;
          if (v72 <= v27)
          {
            v74 = v72;
          }

          else
          {
            v74 = v27;
          }

          v75 = v68 + v69;
          goto LABEL_100;
        }

        v76 = (v9 + 1);
        v77 = v76 & 7;
        v78 = (v23 + (v76 >> 3));
        v79 = bswap32(*v78) << v77;
        if (v78 <= v27)
        {
          v80 = v78;
        }

        else
        {
          v80 = v27;
        }

        if ((v24 & 0x80000000) != 0)
        {
          v84 = 0;
        }

        else
        {
          v81 = 0;
          do
          {
            v82 = v77;
            v83 = v79;
            v84 = v81 + 1;
            v85 = (v77 + 1);
            v77 = (v77 + 1) & 7;
            v80 = (v80 + (v85 >> 3));
            v79 = bswap32(*v80) << (v85 & 7);
            if (v80 > v27)
            {
              v80 = v27;
            }

            if ((v83 & 0x80000000) != 0)
            {
              break;
            }

            v50 = v81++ >= 0x1F;
          }

          while (!v50);
          if (v84 - 1 > 0x17)
          {
            v86 = v79 >> (48 - v84);
            v87 = ((v82 + 1) & 7) + v84;
            v88 = v87 - 16;
            v71 = v87 & 7;
            v89 = (v80 + (v88 >> 3));
            v90 = bswap32(*v89) << v71;
            if (v89 > v27)
            {
              v89 = v27;
            }

            v91 = *(v89 + 2);
            v74 = (v89 + 2);
            v73 = bswap32(v91) << v71;
            if (v74 > v27)
            {
              v74 = v27;
            }

            v92 = __PAIR64__(v86, v90) >> 16;
LABEL_99:
            v75 = v92 + (1 << v84);
LABEL_100:
            *(v65 + 4) = (v75 >> 1) - (v75 >> 1) * 2 * (v75 & 1);
            v94 = __clz(v73 | 1);
            if (!v73)
            {
              ++v94;
            }

            v95 = v73 << (v94 + 1) >> -v94;
            if (v94)
            {
              v96 = v95;
            }

            else
            {
              v96 = 0;
            }

            v97 = 1 << v94;
            v98 = v71 + 2 * v94 + 1;
            v9 = v98 & 7;
            v23 = (v74 + (v98 >> 3));
            v24 = bswap32(*v23) << (v98 & 7);
            if (v23 > v27)
            {
              v23 = v27;
            }

            *(v65 + 6) = ((v96 + v97) >> 1) - ((v96 + v97) >> 1) * 2 * ((v96 + v97) & 1);
            goto LABEL_108;
          }
        }

        v92 = v79 >> -v84;
        v93 = v77 + v84;
        v71 = (v77 + v84) & 7;
        v74 = (v80 + (v93 >> 3));
        v73 = bswap32(*v74) << (v93 & 7);
        if (v74 > v27)
        {
          v74 = v27;
        }

        goto LABEL_99;
      }
    }

    v30 = __clz(v24 | 1);
    if (!v24)
    {
      ++v30;
    }

    if (v30 <= 0xC)
    {
      v31 = v24 << (v30 + 1) >> -v30;
      if (v30)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = 1 << v30;
      v34 = v9 + 2 * v30 + 1;
      v35 = v34 & 7;
      v36 = (v23 + (v34 >> 3));
      v37 = bswap32(*v36) << v35;
      if (v36 <= v27)
      {
        v38 = v36;
      }

      else
      {
        v38 = v27;
      }

      v39 = v32 + v33;
      goto LABEL_59;
    }

    v40 = (v9 + 1);
    v41 = v40 & 7;
    v42 = (v23 + (v40 >> 3));
    v43 = bswap32(*v42) << v41;
    if (v42 <= v27)
    {
      v44 = v42;
    }

    else
    {
      v44 = v27;
    }

    if ((v24 & 0x80000000) != 0)
    {
      v48 = 0;
    }

    else
    {
      v45 = 0;
      do
      {
        v46 = v41;
        v47 = v43;
        v48 = v45 + 1;
        v49 = (v41 + 1);
        v41 = (v41 + 1) & 7;
        v44 = (v44 + (v49 >> 3));
        v43 = bswap32(*v44) << (v49 & 7);
        if (v44 > v27)
        {
          v44 = v27;
        }

        if ((v47 & 0x80000000) != 0)
        {
          break;
        }

        v50 = v45++ >= 0x1F;
      }

      while (!v50);
      if (v48 - 1 > 0x17)
      {
        v51 = v43 >> (48 - v48);
        v52 = ((v46 + 1) & 7) + v48;
        v53 = v52 - 16;
        v35 = v52 & 7;
        v54 = (v44 + (v53 >> 3));
        v55 = bswap32(*v54) << v35;
        if (v54 > v27)
        {
          v54 = v27;
        }

        v56 = *(v54 + 2);
        v38 = (v54 + 2);
        v37 = bswap32(v56) << v35;
        if (v38 > v27)
        {
          v38 = v27;
        }

        v57 = __PAIR64__(v51, v55) >> 16;
LABEL_58:
        v39 = v57 + (1 << v48);
LABEL_59:
        *v29 = (v39 >> 1) - (v39 >> 1) * 2 * (v39 & 1);
        v59 = __clz(v37 | 1);
        if (!v37)
        {
          ++v59;
        }

        v60 = v37 << (v59 + 1) >> -v59;
        if (v59)
        {
          v61 = v60;
        }

        else
        {
          v61 = 0;
        }

        v62 = 1 << v59;
        v63 = v35 + 2 * v59 + 1;
        v9 = v63 & 7;
        v23 = (v38 + (v63 >> 3));
        v24 = bswap32(*v23) << (v63 & 7);
        if (v23 > v27)
        {
          v23 = v27;
        }

        *(v29 + 2) = ((v61 + v62) >> 1) - ((v61 + v62) >> 1) * 2 * ((v61 + v62) & 1);
        goto LABEL_67;
      }
    }

    v57 = v43 >> -v48;
    v58 = v41 + v48;
    v35 = (v41 + v48) & 7;
    v38 = (v44 + (v58 >> 3));
    v37 = bswap32(*v38) << (v58 & 7);
    if (v38 > v27)
    {
      v38 = v27;
    }

    goto LABEL_58;
  }

LABEL_109:
  *(result + 16) = v23;
  *(result + 32) = v24;
LABEL_151:
  *v8 = v9;
  return result;
}

uint64_t sub_2772ABC18(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 2)
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v7 = a5 + 16;
    v8 = *(result + 36);
    v9 = *(result + 32);
    v11 = *(result + 16);
    v10 = *(result + 24);
    while (1)
    {
      if (*(a3 + 4 * v5) == 5)
      {
        return result;
      }

      if (*(a4 + 4 * v5) >= 1)
      {
        break;
      }

LABEL_43:
      if (++v5 == 4)
      {
        *(result + 16) = v11;
        *(result + 32) = v9;
        *(result + 36) = v8;
        return result;
      }
    }

    v12 = 0;
    v6 = v6;
    while (1)
    {
      v13 = __clz(v9 | 1);
      if (!v9)
      {
        ++v13;
      }

      if (v13 <= 0xC)
      {
        v14 = v9 << (v13 + 1) >> -v13;
        if (v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = 1 << v13;
        v17 = v8 + 2 * v13 + 1;
        v18 = v17 & 7;
        v19 = (v11 + (v17 >> 3));
        v20 = bswap32(*v19) << v18;
        if (v19 <= v10)
        {
          v21 = v19;
        }

        else
        {
          v21 = v10;
        }

        v22 = v15 + v16;
        goto LABEL_36;
      }

      v23 = (v8 + 1);
      v24 = v23 & 7;
      v25 = (v11 + (v23 >> 3));
      v26 = bswap32(*v25) << v24;
      v27 = v25 <= v10 ? v25 : v10;
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      v28 = 0;
      do
      {
        v29 = v24;
        v30 = v26;
        v31 = v28 + 1;
        v32 = (v24 + 1);
        v24 = (v24 + 1) & 7;
        v27 = (v27 + (v32 >> 3));
        v26 = bswap32(*v27) << (v32 & 7);
        if (v27 > v10)
        {
          v27 = v10;
        }

        if ((v30 & 0x80000000) != 0)
        {
          break;
        }
      }

      while (v28++ < 0x1F);
      if (v31 - 1 <= 0x17)
      {
        goto LABEL_33;
      }

      v34 = v26 >> (48 - v31);
      v35 = ((v29 + 1) & 7) + v31;
      v36 = v35 - 16;
      v18 = v35 & 7;
      v37 = (v27 + (v36 >> 3));
      v38 = bswap32(*v37) << v18;
      if (v37 > v10)
      {
        v37 = v10;
      }

      v39 = *(v37 + 2);
      v21 = (v37 + 2);
      v20 = bswap32(v39) << v18;
      if (v21 > v10)
      {
        v21 = v10;
      }

      v40 = __PAIR64__(v34, v38) >> 16;
LABEL_35:
      v22 = v40 + (1 << v31);
LABEL_36:
      v42 = (v7 + 16 * v6);
      *v42 = (v22 >> 1) - (v22 >> 1) * 2 * (v22 & 1);
      v43 = __clz(v20 | 1);
      if (!v20)
      {
        ++v43;
      }

      v44 = v20 << (v43 + 1) >> -v43;
      if (!v43)
      {
        v44 = 0;
      }

      v45 = 1 << v43;
      v46 = v18 + 2 * v43 + 1;
      v8 = v46 & 7;
      v11 = (v21 + (v46 >> 3));
      v9 = bswap32(*v11) << (v46 & 7);
      if (v11 > v10)
      {
        v11 = v10;
      }

      v42[1] = ((v44 + v45) >> 1) - ((v44 + v45) >> 1) * 2 * ((v44 + v45) & 1);
      ++v6;
      if (++v12 >= *(a4 + 4 * v5))
      {
        goto LABEL_43;
      }
    }

    v31 = 0;
LABEL_33:
    v40 = v26 >> -v31;
    v41 = v24 + v31;
    v18 = v41 & 7;
    v21 = (v27 + (v41 >> 3));
    v20 = bswap32(*v21) << (v41 & 7);
    if (v21 > v10)
    {
      v21 = v10;
    }

    goto LABEL_35;
  }

  return result;
}

uint64_t sub_2772ABE5C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 <= 7 && ((1 << v2) & 0x86) != 0)
  {
    v4 = *(a2 + 1);
    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = *(result + 32);
    v8 = *(result + 36);
    if (v2 == 1)
    {
      v9 = (a2 + 290);
      v10 = 16;
      do
      {
        v11 = (v8 + 1);
        v8 = (v8 + 1) & 7;
        v6 = (v6 + (v11 >> 3));
        v12 = bswap32(*v6) << (v11 & 7);
        if (v6 > v5)
        {
          v6 = v5;
        }

        if ((v7 & 0x80000000) == 0)
        {
          v13 = v12 >> 29;
          v14 = (v8 + 3);
          v8 = (v8 + 3) & 7;
          v6 = (v6 + (v14 >> 3));
          v12 = bswap32(*v6) << (v14 & 7);
          if (v6 > v5)
          {
            v6 = v5;
          }

          v9[20] = v13;
        }

        *v9++ = v7 < 0;
        v7 = v12;
        --v10;
      }

      while (v10);
    }

    else
    {
      v12 = *(result + 32);
    }

    if (v2 == 7)
    {
      v15 = (a2 + 306);
      v16 = 4;
      do
      {
        v17 = (v8 + 1);
        v8 = (v8 + 1) & 7;
        v6 = (v6 + (v17 >> 3));
        v18 = bswap32(*v6) << (v17 & 7);
        if (v6 > v5)
        {
          v6 = v5;
        }

        if ((v12 & 0x80000000) == 0)
        {
          v19 = v18 >> 29;
          v20 = (v8 + 3);
          v8 = (v8 + 3) & 7;
          v6 = (v6 + (v20 >> 3));
          v18 = bswap32(*v6) << (v20 & 7);
          if (v6 > v5)
          {
            v6 = v5;
          }

          v15[20] = v19;
        }

        *v15++ = v12 < 0;
        v12 = v18;
        --v16;
      }

      while (v16);
      if (!v4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = v12;
      if (!v4)
      {
LABEL_33:
        *(a2 + 289) = v4;
        *(result + 16) = v6;
        *(result + 32) = v18;
        *(result + 36) = v8;
        return result;
      }
    }

    v21 = __clz(v18 | 1);
    if (v18)
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 + 1;
    }

    v23 = v18 << (v22 + 1) >> -v22;
    if (!v22)
    {
      v23 = 0;
    }

    v4 = v23 + ~(-1 << v22);
    v24 = v8 + 2 * v22 + 1;
    LOBYTE(v8) = v24 & 7;
    v6 = (v6 + (v24 >> 3));
    v18 = bswap32(*v6) << (v24 & 7);
    if (v6 > v5)
    {
      v6 = v5;
    }

    goto LABEL_33;
  }

  if (v2 != 3)
  {
    v25 = *(result + 36);
    v26 = *(result + 32);
    v27 = *(result + 16);
    v28 = *(a2 + 272);
    if (*(a2 + 272))
    {
      v29 = 0;
      v30 = *(result + 24);
      v31 = a2 + 16;
      while (1)
      {
        v32 = v31 + 16 * v29;
        if (*(v32 + 15) == 5)
        {
          return result;
        }

        v33 = __clz(v26 | 1);
        if (!v26)
        {
          ++v33;
        }

        if (v33 <= 0xC)
        {
          v34 = v26 << (v33 + 1) >> -v33;
          if (v33)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          v36 = 1 << v33;
          v37 = v25 + 2 * v33 + 1;
          v38 = v37 & 7;
          v39 = (v27 + (v37 >> 3));
          v40 = bswap32(*v39) << v38;
          if (v39 <= v30)
          {
            v41 = v39;
          }

          else
          {
            v41 = v30;
          }

          v42 = v35 + v36;
          goto LABEL_70;
        }

        v43 = (v25 + 1);
        v44 = v43 & 7;
        v45 = (v27 + (v43 >> 3));
        v46 = bswap32(*v45) << v44;
        v47 = v45 <= v30 ? v45 : v30;
        if ((v26 & 0x80000000) != 0)
        {
          break;
        }

        v48 = 0;
        do
        {
          v49 = v44;
          v50 = v46;
          v51 = v48 + 1;
          v52 = (v44 + 1);
          v44 = (v44 + 1) & 7;
          v47 = (v47 + (v52 >> 3));
          v46 = bswap32(*v47) << (v52 & 7);
          if (v47 > v30)
          {
            v47 = v30;
          }

          if ((v50 & 0x80000000) != 0)
          {
            break;
          }
        }

        while (v48++ < 0x1F);
        if (v51 - 1 <= 0x17)
        {
          goto LABEL_67;
        }

        v54 = v46 >> (48 - v51);
        v55 = ((v49 + 1) & 7) + v51;
        v56 = v55 - 16;
        v38 = v55 & 7;
        v57 = (v47 + (v56 >> 3));
        v58 = bswap32(*v57) << v38;
        if (v57 > v30)
        {
          v57 = v30;
        }

        v59 = *(v57 + 2);
        v41 = (v57 + 2);
        v40 = bswap32(v59) << v38;
        if (v41 > v30)
        {
          v41 = v30;
        }

        v60 = __PAIR64__(v54, v58) >> 16;
LABEL_69:
        v42 = v60 + (1 << v51);
LABEL_70:
        *v32 = (v42 >> 1) - (v42 >> 1) * 2 * (v42 & 1);
        v62 = __clz(v40 | 1);
        if (!v40)
        {
          ++v62;
        }

        v63 = v40 << (v62 + 1) >> -v62;
        if (!v62)
        {
          v63 = 0;
        }

        v64 = 1 << v62;
        v65 = v38 + 2 * v62 + 1;
        v25 = v65 & 7;
        v27 = (v41 + (v65 >> 3));
        v26 = bswap32(*v27) << (v65 & 7);
        if (v27 > v30)
        {
          v27 = v30;
        }

        *(v32 + 2) = ((v63 + v64) >> 1) - ((v63 + v64) >> 1) * 2 * ((v63 + v64) & 1);
        if (++v29 == v28)
        {
          goto LABEL_77;
        }
      }

      v51 = 0;
LABEL_67:
      v60 = v46 >> -v51;
      v61 = v44 + v51;
      v38 = v61 & 7;
      v41 = (v47 + (v61 >> 3));
      v40 = bswap32(*v41) << (v61 & 7);
      if (v41 > v30)
      {
        v41 = v30;
      }

      goto LABEL_69;
    }

LABEL_77:
    *(result + 16) = v27;
    *(result + 32) = v26;
    *(result + 36) = v25;
  }

  return result;
}

uint64_t sub_2772AC218(uint64_t a1, uint64_t a2, int a3, int a4, int64x2_t *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a5[1].u8[12];
  v9 = a5[2].i64[1];
  v10 = a5[3].i64[0];
  v11 = a5[3].i64[1];
  v61 = *(v9 + 54);
  v12 = a5[13].i64[0];
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v62 = vbicq_s8(vaddq_s64(a5[8], vdupq_n_s64(0x78uLL)), vceqzq_s64(a5[8]));
  v13 = a5[10].i64[1];
  v14 = a5[10].i64[0];
  v15 = v13 == 0;
  v16 = v13 + 120;
  if (v15)
  {
    v16 = 0;
  }

  v63 = (a5[11].i64[0] + 120);
  v64 = v16;
  if (v14)
  {
    v17 = v14 + 120;
  }

  else
  {
    v17 = 0;
  }

  sub_27739C1E4(v12, v62.i64, v8, &v60 + 1);
  v18 = sub_2773963B8(v8, HIBYTE(v60), &v60, &v59);
  if (v18)
  {
    return v18;
  }

  v52 = v11;
  v53 = v12;
  v51 = v17;
  *v9 = HIBYTE(v60);
  v21 = v60;
  *(v9 + 1) = v60;
  v22 = v59;
  *(v9 + 2) = v59;
  v63[1] = v21;
  v63[2] = v22;
  *(v9 + 3) = 0;
  if (!v21 && v22 == 25)
  {
    *(v9 + 54) = 0;
    sub_2772AA154(a1, v11, a3, a4);
    v23 = a5[11].i64[0];
    if (v23)
    {
      v24 = (v23 + 80);
    }

    else
    {
      v24 = 0;
    }

    *v24 = 0x1010101010101010;
    v24[1] = 0x1010101010101010;
    if ((a3 & 0xFFFFFFFD) != 1 || !a4)
    {
      v24[2] = 0x1010101010101010;
    }

    if (*(a1 + 16) - *a1 > *(a1 + 12))
    {
      return 4294958327;
    }

    v63[23] = 0;
    *(a5[3].i64[0] + 272) = 0;
    *(a5[2].i64[1] + 54) = 0;
    if (*(a1 + 36))
    {
      return 0xFFFFFFFFLL;
    }

    sub_27737D728(v12, a1);
    return 0;
  }

  v63[23] = 0;
  if (a5[11].i8[8])
  {
    v25 = a5[2].i64[1];
    v26 = v12;
    v27 = v10;
    if (!*(v25 + 1) && !*(v25 + 2))
    {
      HIBYTE(v57) = 0;
      sub_27739C768(v12, &v62, &v57 + 1);
      *(v9 + 3) = HIBYTE(v57);
      v21 = v60;
      v22 = v59;
    }
  }

  else
  {
    v26 = v12;
    v27 = v10;
  }

  v18 = sub_277396480(v21, v22, *(v9 + 3), v27, a5[1].u8[15]);
  if (v18)
  {
    return v18;
  }

  v28 = v27[272];
  *(a5[11].i64[0] + 126) = *(a5[3].i64[0] + 272);
  v29 = *(v27 + 2);
  if (v29 == 3)
  {
    v30 = v27[272];
LABEL_29:
    v31 = a4;
    sub_27739C830(v26, &v62, &v58, v27[1], a4, a5[1].i32[0] & a5[11].u8[9]);
    v32 = 0;
    goto LABEL_30;
  }

  v36 = a5[2].i64[1];
  if ((*(v36 + 1) || *(v36 + 2) == 25) && v28 == 4)
  {
    sub_27739C5FC(v26, v8, v9 + 4);
    v18 = sub_277396814(*v27, *(v9 + 1), v9 + 4, v9 + 20, (v9 + 36), (v27 + 16), 0, 3);
    if (!v18)
    {
      v63[6] = v27[272];
      v37 = 7;
      v38 = 31;
      do
      {
        v63[v37++] = v27[v38];
        v38 += 16;
      }

      while (v37 != 23);
      LODWORD(v50) = a2;
      v39 = sub_27739D1C8(v26, v62.i64, v60, v59, v9 + 4, v9 + 20, v9 + 36, a5[1].u8[15], v50, v27, a5[1].i32[0] & a5[11].u8[9]);
      goto LABEL_53;
    }

    return v18;
  }

  v63[6] = v27[272];
  v47 = 7;
  v48 = 31;
  do
  {
    v63[v47++] = v27[v48];
    v48 += 16;
  }

  while (v47 != 23);
  v39 = sub_27739CC7C(v26, v62.i64, a5[1].u8[15], a2, v27, a4, a5[1].i32[0] & a5[11].u8[9]);
LABEL_53:
  v19 = v39;
  if (v39)
  {
    return v19;
  }

  v30 = v27[272];
  if (v29 != 2)
  {
    goto LABEL_29;
  }

  v32 = 1;
  v31 = a4;
LABEL_30:
  v57 = 0;
  if ((a3 & 0xFFFFFFFD) == 1)
  {
    v33 = a3;
    v34 = v58;
    v35 = v31;
  }

  else
  {
    v34 = v58;
    v33 = 0;
    v35 = 0;
  }

  v19 = sub_277396764(*(v9 + 1), *(v9 + 2), v34, &v57, &v57 + 1, v33, v35);
  if (!v19)
  {
    v40 = v57;
    *(v9 + 53) = v57;
    v41 = HIBYTE(v57);
    *(v9 + 52) = HIBYTE(v57);
    v63[4] = v41;
    v63[5] = v40;
    v42 = v58;
    if ((v58 & 0xF) != 0 && a5[11].i8[8])
    {
      v43 = a5[2].i64[1];
      if (*(v43 + 1))
      {
        if (v30 <= 4)
        {
          v44 = a2;
          v46 = v51;
          v45 = v52;
          if (*(v43 + 1) == 3 && !*(v43 + 2) && !*a5[3].i64[0])
          {
LABEL_60:
            if (((v42 < 1) & ~v32) != 0)
            {
              v49 = 0;
            }

            else
            {
              bzero(v45, 0x330uLL);
              sub_27739CBA4(v53, v46, v63, &v61);
              sub_27739D6A8(v53, v62.i64, v44, a5[1].u8[15] - 1, a5[11].i64[0] + 80, v45, *(v9 + 3), a5);
              v49 = v61;
            }

            *(v9 + 54) = v49;
            return v19;
          }

LABEL_58:
          v56 = 0;
          sub_27739C768(v53, &v62, &v56);
          *(v9 + 3) = v56;
          v42 = v58;
          goto LABEL_60;
        }
      }

      else if (*(v43 + 2))
      {
        v44 = a2;
        v46 = v51;
        v45 = v52;
        if (v30 >= 5)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }
    }

    v44 = a2;
    v46 = v51;
    v45 = v52;
    goto LABEL_60;
  }

  return v19;
}

uint64_t sub_2772AC7A8(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 36);
  if (a4 == 4)
  {
    if (a2)
    {
      return 999;
    }

    v12 = off_27A715388;
    v13 = 0x800000;
    v11 = &off_27A715948;
  }

  else
  {
    if (a2 == 3)
    {
      v9 = v6 >> 28;
      if (v6 >> 26 == 3)
      {
        v10 = 6;
LABEL_18:
        v19 = (v10 + v7);
        LOBYTE(v7) = (v10 + v7) & 7;
        v20 = (v4 + (v19 >> 3));
        v21 = bswap32(*v20);
        if (v20 <= v5)
        {
          v4 = v20;
        }

        else
        {
          v4 = *(a1 + 24);
        }

        v22 = v21 << v7;
        goto LABEL_101;
      }

      v25 = (v6 >> 26) & 3;
      v26 = v25 != 3;
      if ((v26 & (v6 >> 29 > 4)) != 0)
      {
        v27 = 256;
      }

      else
      {
        v27 = 0;
      }

      v23 = v27 | (v26 << 7);
      ++v9;
      v24 = 6;
      v12 = &off_27A7153B8;
      goto LABEL_28;
    }

    v11 = off_27A715378[a2 + 1];
    v12 = &off_27A7153B8;
    v13 = 0x8000;
  }

  v14 = v13 | v6;
  v15 = __clz(v14);
  v16 = &v11[2 * v15];
  if (!*(v16 + 8))
  {
    v9 = 999;
    v22 = *(a1 + 32);
    goto LABEL_101;
  }

  if (a4 == 4)
  {
    v17 = 31;
  }

  else
  {
    v17 = 32;
  }

  v18 = 1 << a2;
  if (a4 == 4)
  {
    v10 = v18 + 1;
  }

  else
  {
    v10 = 1 << a2;
  }

  if (v6 >> (v17 - v18) == *(&off_27A715378[55] + a2 + 4))
  {
    v9 = 0;
    goto LABEL_18;
  }

  v23 = *(*v16 + (((2 * v14) << v15 >> (*(v16 + 8) - 1)) & 0xFFFFFFFE));
  v24 = v23 >> 9;
  v9 = (v23 >> 2) & 0x1F;
  v25 = v23 & 3;
LABEL_28:
  v28 = v25 + v7 + v24;
  v7 = (v25 + v7 + v24) & 7;
  v4 = (v4 + (v28 >> 3));
  v29 = bswap32(*v4);
  if (v4 > v5)
  {
    v4 = *(a1 + 24);
  }

  v22 = v29 << v7;
  if (v25)
  {
    v30 = v6 << v24;
    v31 = v95;
    v32 = v25;
    do
    {
      *v31++ = (v30 >> 30) | 1;
      v30 *= 2;
      --v32;
    }

    while (v32);
  }

  v33 = v9 - v25;
  if (v9 != v25)
  {
    if ((v33 & 0x80000000) != 0)
    {
      return 999;
    }

    v57 = v25;
    v58 = ((v23 >> 6) & 2) + 2;
    v59 = (v23 >> 8) & 1;
    v60 = !(v23 & 0x100);
    v61 = &v95[v57];
    while (v22 < 0x20000)
    {
      v74 = __clz(v22 | 1);
      if (v22)
      {
        v75 = v74;
      }

      else
      {
        v75 = v74 + 1;
      }

      v76 = v75 - 15;
      if (v75 == 15)
      {
        v77 = bswap32(*(v4 + 1)) << v7;
        v71 = ((15 << (v59 + v60)) + v58 + ((v77 >> 12) & 0xFFF)) >> 1;
        v72 = (-((v77 >> 12) & 1) ^ v71) + ((v77 >> 12) & 1);
        v73 = (v7 + 28);
LABEL_75:
        v7 = v73 & 7;
        v4 = (v4 + (v73 >> 3));
        v78 = bswap32(*v4);
        if (v4 > v5)
        {
          v4 = v5;
        }

        v22 = v78 << v7;
        goto LABEL_89;
      }

      if (v76 > 9)
      {
        return 999;
      }

      v79 = v7 + v75 + 1;
      v80 = v79 & 7;
      v81 = (v4 + (v79 >> 3));
      v82 = bswap32(*v81);
      if (v81 <= v5)
      {
        v83 = v81;
      }

      else
      {
        v83 = v5;
      }

      v84 = v82 << v80;
      v85 = v75 + v80;
      v86 = v84 >> (35 - v75);
      v87 = (v85 - 3);
      v7 = v87 & 7;
      v4 = (v83 + (v87 >> 3));
      v22 = bswap32(*v4) << v7;
      if (v4 > v5)
      {
        v4 = v5;
      }

      v88 = 15 << v59;
      if (!v59)
      {
        v88 = 30;
      }

      v71 = (v86 + v58 + v88 + (4096 << v76) - 4096) >> 1;
      if (v86)
      {
        v72 = -v71;
      }

      else
      {
        v72 = v71;
      }

LABEL_89:
      v89 = v59 + v60;
      if (v89 > 6)
      {
        return 999;
      }

      if (v71 <= *(&off_27A715378[53] + v89 + 3))
      {
        v59 = v89;
      }

      else
      {
        v59 = v89 + 1;
      }

      v8 = 999;
      if (HIWORD(v71) || v59 > 6)
      {
        return v8;
      }

      v60 = 0;
      *v61++ = v72;
      v58 = 2;
      if (!--v33)
      {
        goto LABEL_34;
      }
    }

    v62 = __clz(v22);
    v63 = (2 * v22) << v62;
    v64 = v59 + v62;
    v65 = v63 >> ~v59 >> 1;
    v66 = (v62 << v59) + v58;
    v67 = v63 >> 28;
    if (v62 == 14)
    {
      v58 += 14;
    }

    else
    {
      v67 = v62;
    }

    if (v62 == 14)
    {
      v68 = v59 + v62 + 5;
    }

    else
    {
      v68 = v64 + 1;
    }

    if (v59)
    {
      v58 = v66;
      v67 = v65;
      v69 = v64 + 1;
    }

    else
    {
      v69 = v68;
    }

    v70 = v67 + v58;
    v71 = (v67 + v58) >> 1;
    v72 = (-(v67 & 1) ^ (v70 >> 1)) + (v67 & 1);
    v73 = (v69 + v7);
    goto LABEL_75;
  }

LABEL_34:
  v34 = a3 + 2 * a4;
  v35 = &v94;
  if (v9 >= a4)
  {
    goto LABEL_97;
  }

  v36 = &v12[2 * v9];
  v37 = *(v36 + 2);
  v38 = v37 | v22;
  if (v38 < 0x800000)
  {
    return 999;
  }

  v39 = __clz(v38);
  v40 = *((*v36)[v39] + (((2 * v38) << v39 >> (v37 - 1)) >> 1));
  v41 = v7 + (v40 >> 4);
  v7 = (v7 + (v40 >> 4)) & 7;
  v4 = (v4 + (v41 >> 3));
  v42 = bswap32(*v4);
  if (v4 > v5)
  {
    v4 = v5;
  }

  v22 = v42 << v7;
  v43 = v40 & 0xF;
  v44 = a4 - (v43 + v9);
  if (a4 < v43 + v9)
  {
    v44 = 0;
  }

  v34 -= 2 * v44;
  if (!v43)
  {
LABEL_97:
    v45 = v9;
    goto LABEL_98;
  }

  v45 = v9 - 1;
  if (v9 == 1)
  {
LABEL_56:
    v45 = 1;
    goto LABEL_99;
  }

  v35 = v95;
  while (1)
  {
    v46 = *(&off_27A715378[55] + v43 + 6);
    *(v34 - 2) = *v35;
    v47 = v34 - 2;
    v48 = &off_27A715378[2 * v46];
    v49 = *(v48 + 78) | v22;
    v50 = __clz(v49);
    v51 = *(v48[38][v50] + (((2 * v49) << v50 >> (*(v48 + 78) - 1)) >> 1));
    v52 = v51 & 0xF;
    v53 = v7 + (v51 >> 4);
    v7 = v53 & 7;
    v4 = (v4 + (v53 >> 3));
    v54 = bswap32(*v4);
    if (v4 > v5)
    {
      v4 = v5;
    }

    v22 = v54 << v7;
    v34 = v47 - 2 * v52;
    v55 = v43 - v52;
    if (v55)
    {
      v56 = 0;
    }

    else
    {
      v56 = 10;
    }

    if (v55 < 0)
    {
      v56 = 3;
    }

    if (v56)
    {
      break;
    }

    if (v55 >= 0)
    {
      v43 = v55;
    }

    else
    {
      v43 = 999;
    }

    ++v35;
    if (!--v45)
    {
      --v35;
      goto LABEL_56;
    }
  }

  if (v56 == 3)
  {
    goto LABEL_101;
  }

  if ((v45 & 0x80000000) == 0)
  {
LABEL_98:
    if (!v45)
    {
      goto LABEL_101;
    }

LABEL_99:
    v90 = (v34 - 2);
    v91 = v35 + 1;
    do
    {
      v92 = *v91++;
      *v90-- = v92;
      --v45;
    }

    while (v45);
    goto LABEL_101;
  }

  v9 = 999;
LABEL_101:
  *(a1 + 16) = v4;
  *(a1 + 32) = v22;
  *(a1 + 36) = v7;
  if (v4 - *a1 <= *(a1 + 12))
  {
    return v9;
  }

  else
  {
    return 999;
  }
}

uint64_t sub_2772ACD54(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = 0;
  if (sub_27737D7D4(a1, a2))
  {
    do
    {
      v6 = (v6 + 1);
    }

    while (sub_27737D7D4(a1, a2 + 2) && v6 < a3);
  }

  return v6;
}

uint64_t sub_2772ACDB0(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, unint64_t a5, int a6, int a7)
{
  v9 = *a3;
  if (!*a3)
  {
    goto LABEL_5;
  }

  if (*(a3[2] + 24))
  {
    if (*(a3[2] + 24) != 1 || *(v9 + 24))
    {
LABEL_5:
      v10 = 0;
      v11 = byte_280A6AA70;
      goto LABEL_13;
    }

    v10 = 0;
    if (a4 >= 8)
    {
      v9 = a3[3];
    }

    v11 = &unk_280A6AAA8;
  }

  else
  {
    v12 = *(v9 + 24);
    v11 = byte_280A6AA70;
    v13 = &unk_280A6AAD8;
    if (a7)
    {
      v13 = &unk_280A6AB08;
    }

    v10 = v12 == 1;
    if (v12 == 1)
    {
      v11 = v13;
    }
  }

LABEL_13:
  v14 = a3[1];
  v15 = v14 && !*(a3[2] + 24) && *(v14 + 24) == 1;
  v16 = &v11[a4];
  v17 = *v16;
  v18 = v16[16];
  v19 = (v17 & 1) == 0 && v10;
  v20 = (v18 & 1) == 0 && v15;
  if (v17)
  {
    v9 = a3[2];
    v22 = a5;
    if (a5 >= 0x103)
    {
      v22 = 259;
    }

LABEL_31:
    v23 = *(&word_280A6AB60[40 * v22] + ((v17 >> 1) & 0xF));
    v24 = *(v9 + 16 * (a6 != 0) + v23 + 168);
    if (v24 != 32 && v19 < v24)
    {
      v27 = *(v9 + v23 + 7);
      if (!a6)
      {
        LODWORD(v9) = (v27 & 0xFFFFFFFD) == 4;
        if ((v18 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_37;
      }

      LODWORD(v9) = (v27 - 5) < 2;
LABEL_42:
      if ((v18 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_37:
      v14 = a3[2];
      v26 = a5;
      if (a5 >= 0x103)
      {
        v26 = 259;
      }

      goto LABEL_48;
    }

    goto LABEL_36;
  }

  if (!v9)
  {
    goto LABEL_42;
  }

  v21 = *(v9 + 1);
  if (v21 >= 6 || ((0x33u >> v21) & 1) == 0)
  {
    v22 = *(*(v9 + 200) + 10);
    if (v22 >= 0x103)
    {
      v22 = 259;
    }

    goto LABEL_31;
  }

LABEL_36:
  LODWORD(v9) = 0;
  if (v18)
  {
    goto LABEL_37;
  }

LABEL_43:
  if (!v14)
  {
    goto LABEL_59;
  }

  v28 = *(v14 + 1);
  if (v28 < 6 && ((0x33u >> v28) & 1) != 0)
  {
    goto LABEL_58;
  }

  v26 = *(*(v14 + 200) + 10);
  if (v26 >= 0x103)
  {
    v26 = 259;
  }

LABEL_48:
  v29 = *(&word_280A6AB60[40 * v26] + ((v18 >> 1) & 0xF));
  v30 = *(v14 + 16 * (a6 != 0) + v29 + 168);
  if (v30 != 32 && v20 < v30)
  {
    v32 = *(v14 + v29 + 7);
    if (a6)
    {
      if ((v32 - 5) < 2u)
      {
LABEL_54:
        v14 = 2;
        goto LABEL_59;
      }
    }

    else if ((v32 & 0xFD) == 4)
    {
      goto LABEL_54;
    }
  }

LABEL_58:
  v14 = 0;
LABEL_59:
  v33 = v9 == 0;
  v34 = 54;
  if (!v33)
  {
    v34 = 55;
  }

  result = sub_27737D7D4(a1, (a2 + 2 * (v34 + v14) + 16));
  if (result)
  {
    return (sub_2772ACD54(a1, (a2 + 132), 0x1Eu) + 1) & 0x1F;
  }

  return result;
}

uint64_t sub_2772AD050(int *a1, uint64_t a2, uint64_t *a3, int a4, unint64_t a5, unsigned int a6, int a7, int a8)
{
  v14 = *a3;
  if (!*a3)
  {
    goto LABEL_5;
  }

  if (*(a3[2] + 24))
  {
    if (*(a3[2] + 24) != 1 || *(v14 + 24))
    {
LABEL_5:
      v15 = 1;
      v16 = byte_280A6AA70;
      v17 = 1;
      goto LABEL_22;
    }

    if (a4 >= 8)
    {
      v14 = a3[3];
    }

    v17 = 1;
    if (a6)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v16 = &unk_280A6AAA8;
  }

  else
  {
    v18 = *(v14 + 24);
    v16 = byte_280A6AA70;
    v19 = &unk_280A6AB08;
    if (!a8)
    {
      v19 = &unk_280A6AAD8;
    }

    if (a6)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v21 = v18 == 1;
    if (v18 == 1)
    {
      v16 = v19;
    }

    v15 = 1;
    if (v21)
    {
      v17 = v20;
    }

    else
    {
      v17 = 1;
    }
  }

LABEL_22:
  v22 = a3[1];
  v23 = 1;
  v24 = 1;
  if (a6 && v22)
  {
    if (*(a3[2] + 24))
    {
      if (*(a3[2] + 24) == 1)
      {
        if (*(v22 + 24))
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }
      }
    }

    else if (*(v22 + 24) == 1)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  v25 = &v16[a4];
  v26 = *v25;
  v27 = *v25;
  v28 = v25[16];
  v29 = (v28 >> 1) & 0xF;
  if (v28)
  {
    v33 = a5;
    if (a5 >= 0x103)
    {
      v33 = 259;
    }

    v32 = *(a3[2] + ((a7 != 0) << 6) + 4 * *(&word_280A6AB60[40 * v33] + v29) + 2 * a6 + 40);
    if ((v32 & 0x80000000) != 0)
    {
      v32 = -v32;
    }
  }

  else if (!v22 || ((v30 = *(v22 + 1), !*(v22 + 2)) ? (v31 = v30 == 3) : (v31 = 0), v31 || v30 < 6 && ((0x33u >> v30) & 1) != 0))
  {
    v32 = 0;
  }

  else
  {
    v34 = v22 + ((a7 != 0) << 6);
    v35 = *(*(v22 + 200) + 10);
    if (v35 >= 0x103)
    {
      v35 = 259;
    }

    v36 = *(v34 + 4 * *(&word_280A6AB60[40 * v35] + v29) + 2 * a6 + 40);
    if ((v36 & 0x8000u) != 0)
    {
      v36 = -v36;
    }

    v32 = v36 * v24 / v23;
  }

  v37 = (v26 >> 1) & 0xF;
  if (v27)
  {
    v40 = a5;
    if (a5 >= 0x103)
    {
      v40 = 259;
    }

    LODWORD(v14) = *(a3[2] + ((a7 != 0) << 6) + 4 * *(&word_280A6AB60[40 * v40] + v37) + 2 * a6 + 40);
    if ((v14 & 0x80000000) != 0)
    {
      LODWORD(v14) = -v14;
    }
  }

  else if (v14)
  {
    v38 = *(v14 + 1);
    if (*(v14 + 2))
    {
      v39 = 0;
    }

    else
    {
      v39 = v38 == 3;
    }

    if (v39 || v38 < 6 && ((0x33u >> v38) & 1) != 0)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v41 = v14 + ((a7 != 0) << 6);
      v42 = *(*(v14 + 200) + 10);
      if (v42 >= 0x103)
      {
        v42 = 259;
      }

      v43 = *(v41 + 4 * *(&word_280A6AB60[40 * v42] + v37) + 2 * a6 + 40);
      if ((v43 & 0x8000u) != 0)
      {
        v43 = -v43;
      }

      LODWORD(v14) = v43 * v17 / v15;
    }
  }

  v44 = v14 + v32;
  v45 = 8 * a6;
  if (v44 > 2)
  {
    v47 = 7 * a6;
    if (v44 < 0x21)
    {
      v46 = v47 + 41;
    }

    else
    {
      v46 = v47 + 42;
    }
  }

  else
  {
    v46 = 7 * a6 + 40;
  }

  v48 = a2 + 16;
  if (sub_27737D7D4(a1, (a2 + 16 + 2 * v46)))
  {
    v49 = (v48 + 2 * (v45 - a6 + 43));
    if (sub_27737D7D4(a1, v49))
    {
      v50 = 0;
      v51 = v49 + 2;
      do
      {
        v52 = sub_27737D7D4(a1, v51);
        v53 = v50 - 1;
        if (!v52)
        {
          break;
        }

        v51 += 2 * (v50 == 0) + 2 * (v50 == -1);
        v21 = v50-- == -6;
      }

      while (!v21);
      if (v52)
      {
        v54 = sub_2772AD958(a1, 3) - v53 + 1;
      }

      else
      {
        v54 = -v53;
      }
    }

    else
    {
      LOWORD(v54) = 0;
    }

    v56 = sub_27737D89C(a1);
    v55 = ~v54;
    if (!v56)
    {
      v55 = v54 + 1;
    }
  }

  else
  {
    v55 = 0;
  }

  v57 = a5;
  if (a5 >= 0x103)
  {
    v57 = 259;
  }

  *(a3[2] + ((a7 != 0) << 6) + 4 * *(&word_280A6AB60[40 * v57] + a4) + 2 * a6 + 40) = v55;
  return v55;
}