uint64_t sub_100014CD8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1176))
  {
    v2 = (*(a1 + 1160) + 4 * a2);
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v5 = (*(a1 + 1144) + 2 * a2);
    v3 = *v5;
    v4 = v5[1];
  }

  v6 = v4 - v3;
  if (v6 < 1)
  {
    v16 = 0x40000000;
    return (((*(a1 + 1568) + v16) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  if (*(a1 + 2012))
  {
    v7 = a2;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(a1 + 1552);
  v9 = *(a1 + 32);
  v10 = (v9 + 4 * v7);
  v11 = *(a1 + 136) + 4 * (6 * v7);
  v12.i16[0] = *v8;
  v12.i16[1] = BYTE2(*v8);
  v12.i16[2] = BYTE4(*v8);
  v12.i16[3] = BYTE6(*v8);
  v12.i16[4] = *(v8 + 8);
  v12.i16[5] = BYTE2(*(v8 + 8));
  v12.i16[6] = BYTE12(*v8);
  v12.i16[7] = BYTE14(*v8);
  v13 = *&vshrq_n_u32(*v8, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
  v14.i16[0] = *(v8 + 16);
  v14.i16[1] = BYTE2(*(v8 + 16));
  v14.i16[2] = BYTE4(*(v8 + 16));
  v14.i16[3] = BYTE6(*(v8 + 16));
  v15 = *&vshr_n_u32(*(v8 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL;
  if (v6 >= 8)
  {
    v18 = v7;
    v19 = v6;
    v20 = v6 & 0x7FFFFFF8;
    v6 -= v20;
    v10 += v20;
    v84 = vdupq_lane_s32(*&v13, 0);
    v85 = vdupq_lane_s32(*v12.i8, 0);
    v82 = vdupq_lane_s32(*&v13, 1);
    v83 = vdupq_lane_s32(*v12.i8, 1);
    v21 = vdupq_laneq_s32(v12, 2);
    v22 = vdupq_laneq_s32(v13, 2);
    v17 = v11 + 24 * v20;
    v80 = v13;
    v81 = v12;
    v23 = vdupq_laneq_s32(v12, 3);
    v24 = vdupq_laneq_s32(v13, 3);
    v25 = vdupq_lane_s32(v14, 0);
    v26 = (v9 + 4 * v18 + 16);
    v27 = vdupq_lane_s32(v15, 0);
    v28.i64[0] = 0x4000000040000000;
    v28.i64[1] = 0x4000000040000000;
    v78 = v15;
    v79 = v14;
    v29 = vdupq_lane_s32(v14, 1);
    v30 = v20;
    v31 = vdupq_lane_s32(v15, 1);
    v32.i64[0] = 0x4000000040000000;
    v32.i64[1] = 0x4000000040000000;
    do
    {
      v33 = *(v11 + 64);
      v34 = *(v11 + 80);
      v36 = *(v11 + 32);
      v35 = *(v11 + 48);
      v37 = *v11;
      v38 = *(v11 + 16);
      v40 = *(v11 + 160);
      v39 = *(v11 + 176);
      v42 = *(v11 + 128);
      v41 = *(v11 + 144);
      v43 = *(v11 + 96);
      v44 = *(v11 + 112);
      v45.i64[0] = vextq_s8(vtrn2q_s32(v38, *v11), *v11, 4uLL).u64[0];
      v46.i64[0] = vzip2q_s32(*v11, vuzp1q_s32(*v11, v36)).u64[0];
      v47.i32[1] = HIDWORD(*(v11 + 32));
      v47.i32[0] = HIDWORD(*v11);
      v48 = vtrn1q_s32(vuzp1q_s32(v35, v35), v33);
      v49.i64[0] = vzip2q_s32(v43, vuzp1q_s32(v43, v42)).u64[0];
      v37.i32[1] = *(v11 + 24);
      v50.i32[0] = v43.i32[0];
      LODWORD(v51) = *(v11 + 56);
      HIDWORD(v51) = v34.i32[0];
      v50.i32[1] = *(v11 + 120);
      LODWORD(v52) = *(v11 + 152);
      HIDWORD(v52) = v39.i32[0];
      v53 = vextq_s8(v35, v34, 8uLL);
      v46.i64[1] = v51;
      v54 = vtrn1q_s32(vuzp1q_s32(v33, v33), v34);
      v34.i32[2] = HIDWORD(*(v11 + 64));
      v49.i64[1] = v52;
      v33.i32[2] = HIDWORD(*(v11 + 48));
      v37.i64[1] = v48.i64[1];
      v47.i64[1] = vzip2q_s32(v35, v53).i64[1];
      v50.i64[1] = vtrn1q_s32(vuzp1q_s32(v41, v41), v40).i64[1];
      v55.i32[1] = HIDWORD(*(v11 + 128));
      v56 = vextq_s8(v41, v39, 8uLL);
      v55.i32[0] = v43.i32[3];
      v57 = vtrn1q_s32(vuzp1q_s32(v40, v40), v39);
      v39.i32[2] = HIDWORD(*(v11 + 160));
      v40.i32[2] = HIDWORD(*(v11 + 144));
      v43.i64[0] = vextq_s8(vtrn2q_s32(v44, v43), v43, 4uLL).u64[0];
      v55.i64[1] = vzip2q_s32(v41, v56).i64[1];
      v45.i64[1] = v33.i64[1];
      v48.i32[0] = v38.i32[0];
      v48.i32[1] = *(v11 + 40);
      v48.i64[1] = v54.i64[1];
      v58.i32[0] = v44.i32[0];
      v58.i32[1] = *(v11 + 136);
      v58.i64[1] = v57.i64[1];
      v43.i64[1] = v40.i64[1];
      v36.i64[0] = vextq_s8(vtrn2q_s32(v36, v38), v38, 4uLL).u64[0];
      v36.i64[1] = v34.i64[1];
      v34.i64[0] = vextq_s8(vtrn2q_s32(v42, v44), v44, 4uLL).u64[0];
      v34.i64[1] = v39.i64[1];
      v59 = vshrq_n_u32(v37, 8uLL);
      v37.i16[0] = *v11;
      v37.i16[1] = BYTE2(*v11);
      v37.i16[2] = *(v11 + 24);
      v37.i16[3] = BYTE2(*(v11 + 24));
      v37.i64[1] &= 0xFF00FF00FF00FFuLL;
      v60 = vmlaq_s32(vmulq_s32(v37, v85), (*&v59 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v84);
      v61 = vshrq_n_u32(v50, 8uLL);
      v50.i16[0] = *(v11 + 96);
      v50.i16[1] = BYTE2(*(v11 + 96));
      v50.i16[2] = *(v11 + 120);
      v50.i16[3] = BYTE2(*(v11 + 120));
      v50.i64[1] &= 0xFF00FF00FF00FFuLL;
      v62 = vmlaq_s32(vmulq_s32(v50, v85), (*&v61 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v84);
      v63 = vshrq_n_u32(v43, 8uLL);
      v43.i64[0] &= 0xFF00FF00FF00FFuLL;
      v43.i16[4] = v40.u8[8];
      v43.i16[5] = BYTE6(*(v11 + 144));
      v43.i16[6] = BYTE12(*(v11 + 160));
      v43.i16[7] = BYTE14(*(v11 + 160));
      v64 = vshrq_n_u32(v47, 8uLL);
      v47.i16[0] = v47.u8[0];
      v47.i16[1] = BYTE14(*v11);
      v47.i16[2] = v47.u8[4];
      v47.i16[3] = BYTE6(*(v11 + 32));
      v47.i64[1] &= 0xFF00FF00FF00FFuLL;
      v65 = vmlaq_s32(vmulq_s32(v47, v23), (*&v64 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v24);
      v66 = vshrq_n_u32(v48, 8uLL);
      v48.i16[0] = *(v11 + 16);
      v48.i16[1] = BYTE2(*(v11 + 16));
      v48.i16[2] = *(v11 + 40);
      v48.i16[3] = BYTE2(*(v11 + 40));
      v48.i64[1] = v54.i64[1] & 0xFF00FF00FF00FFLL;
      v67 = vmlaq_s32(vmulq_s32(v48, v25), (*&v66 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v27);
      v68 = vshrq_n_u32(v55, 8uLL);
      v55.i16[0] = BYTE12(*(v11 + 96));
      v55.i16[1] = BYTE14(*(v11 + 96));
      v55.i16[2] = v55.u8[4];
      v55.i16[3] = BYTE6(*(v11 + 128));
      v55.i64[1] &= 0xFF00FF00FF00FFuLL;
      v69 = vmlaq_s32(vmulq_s32(v55, v23), (*&v68 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v24);
      v70 = vshrq_n_u32(v58, 8uLL);
      v58.i16[0] = v44.u8[0];
      v58.i16[1] = v44.u8[2];
      v58.i16[2] = *(v11 + 136);
      v58.i16[3] = BYTE2(*(v11 + 136));
      v58.i64[1] = v57.i64[1] & 0xFF00FF00FF00FFLL;
      v28 = vminq_s32(vsubq_s32(v26[-1], vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v60, 0xFuLL), vmlaq_s32(vmulq_s32((*&v45 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v83), (*&vshrq_n_u32(v45, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v82), 0xFuLL), vmlaq_s32(vmulq_s32((*&v46 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v21), (*&vshrq_n_u32(v46, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v22), 0xFuLL), v65, 0xFuLL), v67, 0xFuLL), vmlaq_s32(vmulq_s32((*&v36 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v29), (*&vshrq_n_u32(v36, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v31), 0xFuLL)), v28);
      v32 = vminq_s32(vsubq_s32(*v26, vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v62, 0xFuLL), vmlaq_s32(vmulq_s32(v43, v83), (*&v63 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v82), 0xFuLL), vmlaq_s32(vmulq_s32((*&v49 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v21), (*&vshrq_n_u32(v49, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v22), 0xFuLL), v69, 0xFuLL), vmlaq_s32(vmulq_s32(v58, v25), (*&v70 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v27), 0xFuLL), vmlaq_s32(vmulq_s32((*&v34 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v29), (*&vshrq_n_u32(v34, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v31), 0xFuLL)), v32);
      v26 += 2;
      v11 += 192;
      v30 -= 8;
    }

    while (v30);
    v16 = vminvq_s32(vminq_s32(v28, v32));
    v13 = v80;
    v12 = v81;
    v15 = v78;
    v14 = v79;
    if (v20 == v19)
    {
      return (((*(a1 + 1568) + v16) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  else
  {
    v16 = 0x40000000;
    v17 = *(a1 + 136) + 4 * (6 * v7);
  }

  v71 = v6 + 1;
  do
  {
    v72.i16[0] = *v17;
    v72.i16[1] = BYTE2(*v17);
    v72.i16[2] = BYTE4(*v17);
    v72.i16[3] = BYTE6(*v17);
    v72.i16[4] = *(v17 + 8);
    v72.i16[5] = BYTE2(*(v17 + 8));
    v72.i16[6] = BYTE12(*v17);
    v72.i16[7] = BYTE14(*v17);
    v73.i16[0] = *(v17 + 16);
    v73.i16[1] = BYTE2(*(v17 + 16));
    v73.i16[2] = BYTE4(*(v17 + 16));
    v73.i16[3] = BYTE6(*(v17 + 16));
    v74 = vshr_n_u32(vmla_s32(vmul_s32(v73, v14), (*&vshr_n_u32(*(v17 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL), v15), 0xFuLL);
    v75 = *v10++;
    v76 = v75 - (vaddvq_s32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v72, v12), (*&vshrq_n_u32(*v17, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v13), 0xFuLL)) + v74.i32[0]) - v74.i32[1];
    if (v76 < v16)
    {
      v16 = v76;
    }

    --v71;
    v17 += 24;
  }

  while (v71 > 1);
  return (((*(a1 + 1568) + v16) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100015108(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1176))
  {
    v2 = (*(a1 + 1160) + 4 * a2);
    v3 = *v2;
    v4 = v2[1] - *v2;
    if (v4 >= 1)
    {
LABEL_3:
      if (*(a1 + 2012))
      {
        v5 = a2;
      }

      else
      {
        v5 = v3;
      }

      v6 = *(a1 + 1552);
      v7 = (*(a1 + 32) + 4 * v5);
      v8 = *(a1 + 136) + 4 * (*(a1 + 1128) * v5);
      v9.i16[0] = *v6;
      v9.i16[1] = BYTE2(*v6);
      v9.i16[2] = BYTE4(*v6);
      v9.i16[3] = BYTE6(*v6);
      v9.i16[4] = *(v6 + 8);
      v9.i16[5] = BYTE2(*(v6 + 8));
      v9.i16[6] = BYTE12(*v6);
      v9.i16[7] = BYTE14(*v6);
      v10 = *&vshrq_n_u32(*v6, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
      v11.i16[0] = *(v6 + 16);
      v11.i16[1] = BYTE2(*(v6 + 16));
      v11.i16[2] = BYTE4(*(v6 + 16));
      v11.i16[3] = BYTE6(*(v6 + 16));
      v12 = *&vshr_n_u32(*(v6 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL;
      v13 = (v6 + 24);
      HIDWORD(v15) = *(a1 + 1100) - 24;
      LODWORD(v15) = HIDWORD(v15);
      v14 = v15 >> 2;
      v16 = (v6 + 28);
      v17 = v4 + 1;
      v18 = 0x40000000;
      while (1)
      {
        v23 = *v7++;
        v24.i16[0] = *v8;
        v24.i16[1] = BYTE2(*v8);
        v24.i16[2] = BYTE4(*v8);
        v24.i16[3] = BYTE6(*v8);
        v24.i16[4] = *(v8 + 8);
        v24.i16[5] = BYTE2(*(v8 + 8));
        v24.i16[6] = BYTE12(*v8);
        v24.i16[7] = BYTE14(*v8);
        v25.i16[0] = *(v8 + 16);
        v25.i16[1] = BYTE2(*(v8 + 16));
        v25.i16[2] = BYTE4(*(v8 + 16));
        v25.i16[3] = BYTE6(*(v8 + 16));
        v26 = vshr_n_u32(vmla_s32(vmul_s32(v25, v11), (*&vshr_n_u32(*(v8 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL), v12), 0xFuLL);
        v20 = (v8 + 24);
        v22 = v23 - (vaddvq_s32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v24, v9), (*&vshrq_n_u32(*v8, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v10), 0xFuLL)) + v26.i32[0]) - v26.i32[1];
        if (v14 == 1)
        {
          v19 = v13;
        }

        else
        {
          if (v14 == 2)
          {
            v27 = v13;
          }

          else
          {
            if (v14 != 3)
            {
              goto LABEL_9;
            }

            v20 = (v8 + 28);
            v22 -= ((*v13 & 0xFF00FF) * (*(v8 + 24) & 0xFF00FF) + ((*v13 >> 8) & 0xFF00FF) * ((*(v8 + 24) >> 8) & 0xFF00FFu)) >> 15;
            v27 = v16;
          }

          v29 = *v20++;
          v28 = v29;
          v30 = *v27;
          v19 = v27 + 1;
          v22 -= ((v30 & 0xFF00FF) * (v28 & 0xFF00FF) + ((v30 >> 8) & 0xFF00FF) * ((v28 >> 8) & 0xFF00FF)) >> 15;
        }

        v21 = *v20++;
        v22 -= ((*v19 & 0xFF00FF) * (v21 & 0xFF00FF) + ((*v19 >> 8) & 0xFF00FF) * ((v21 >> 8) & 0xFF00FF)) >> 15;
LABEL_9:
        if (v22 < v18)
        {
          v18 = v22;
        }

        --v17;
        v8 = v20;
        if (v17 <= 1)
        {
          return (((*(a1 + 1568) + v18) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
        }
      }
    }
  }

  else
  {
    v31 = (*(a1 + 1144) + 2 * a2);
    v3 = *v31;
    v4 = v31[1] - v3;
    if (v4 >= 1)
    {
      goto LABEL_3;
    }
  }

  v18 = 0x40000000;
  return (((*(a1 + 1568) + v18) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_1000152F4(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1176))
  {
    v2 = (*(a1 + 1160) + 4 * a2);
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v5 = (*(a1 + 1144) + 2 * a2);
    v3 = *v5;
    v4 = v5[1];
  }

  v6 = v4 - v3;
  if ((v4 - v3) < 1)
  {
    v18 = 0x40000000;
    return (((*(a1 + 1568) + v18) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  if (*(a1 + 2012))
  {
    v3 = a2;
  }

  v7 = *(a1 + 1552);
  v8 = (*(a1 + 32) + 4 * v3);
  v9 = *(a1 + 136);
  v10 = 9 * v3;
  v11 = v9 + 4 * (9 * v3);
  v12.i16[0] = *&v7[1];
  v12.i16[1] = BYTE2(*&v7[1]);
  v12.i16[2] = BYTE4(v7[1].i64[0]);
  v12.i16[3] = BYTE6(v7[1].i64[0]);
  v12.i16[4] = v7[1].i64[1];
  v12.i16[5] = BYTE2(v7[1].i64[1]);
  v12.i16[6] = BYTE12(*&v7[1]);
  v12.i16[7] = BYTE14(*&v7[1]);
  v13.i16[0] = v7->u8[0];
  v13.i16[1] = BYTE2(v7->u32[0]);
  v13.i16[2] = BYTE4(v7->i64[0]);
  v13.i16[3] = BYTE6(v7->i64[0]);
  v13.i16[4] = v7->i64[1];
  v13.i16[5] = BYTE2(v7->i64[1]);
  v13.i16[6] = BYTE12(*v7);
  v13.i16[7] = BYTE14(*v7);
  v14 = *&vshrq_n_u32(v7[1], 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
  v15 = *&vshrq_n_u32(*v7, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
  LODWORD(v7) = v7[2].i32[0];
  v16 = v7 & 0xFF00FF;
  v17 = (v7 >> 8) & 0xFF00FF;
  if (v6 >= 4)
  {
    v20 = v10;
    v72 = vdupq_lane_s32(*&v15, 0);
    v73 = vdupq_lane_s32(*v13.i8, 0);
    v21 = v6;
    v22 = v6 & 0x7FFFFFFC;
    v70 = vdupq_lane_s32(*&v15, 1);
    v71 = vdupq_lane_s32(*v13.i8, 1);
    v6 -= v22;
    v19 = (v8 + 4 * v22);
    v11 += 36 * v22;
    v69 = vdupq_laneq_s32(v13, 2);
    v23 = vdupq_laneq_s32(v15, 2);
    v24 = vdupq_laneq_s32(v13, 3);
    v25 = vdupq_laneq_s32(v15, 3);
    v26 = vdupq_lane_s32(*v12.i8, 0);
    v27 = vdupq_lane_s32(*&v14, 0);
    v28 = vdupq_lane_s32(*v12.i8, 1);
    v29 = vdupq_lane_s32(*&v14, 1);
    v30 = vdupq_laneq_s32(v12, 2);
    v31 = vdupq_laneq_s32(v14, 2);
    v32 = vdupq_laneq_s32(v12, 3);
    v33 = vdupq_laneq_s32(v14, 3);
    v34 = (v9 + 4 * v20 + 72);
    v35 = vdupq_n_s32(v16);
    v36.i64[0] = 0x4000000040000000;
    v36.i64[1] = 0x4000000040000000;
    v37 = v22;
    v38 = vdupq_n_s32(v17);
    do
    {
      v39.i32[0] = *(v34 - 18);
      v39.i32[1] = *(v34 - 9);
      v40 = *v8++;
      v39.i32[2] = *v34;
      v39.i32[3] = v34[9];
      v41.i32[0] = *(v34 - 17);
      v41.i32[1] = *(v34 - 8);
      v42.i32[0] = *(v34 - 16);
      v41.i32[2] = v34[1];
      v42.i32[1] = *(v34 - 7);
      v42.i32[2] = v34[2];
      v42.i32[3] = v34[11];
      v41.i32[3] = v34[10];
      v43.i32[0] = *(v34 - 15);
      v44 = vshrq_n_u32(v39, 8uLL);
      v39.i16[0] = v39.u8[0];
      v39.i16[1] = BYTE2(*(v34 - 18));
      v39.i16[2] = v39.u8[4];
      v39.i16[3] = BYTE2(*(v34 - 9));
      v39.i16[4] = *v34;
      v39.i16[5] = BYTE2(*v34);
      v39.i16[6] = v39.u8[12];
      v39.i16[7] = BYTE2(v34[9]);
      v45 = vmlaq_s32(vmulq_s32(v39, v73), (*&v44 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v72);
      v43.i32[1] = *(v34 - 6);
      v43.i32[2] = v34[3];
      v46 = vshrq_n_u32(v42, 8uLL);
      v42.i16[0] = v42.u8[0];
      v42.i16[1] = BYTE2(*(v34 - 16));
      v42.i16[2] = v42.u8[4];
      v42.i16[3] = BYTE2(*(v34 - 7));
      v42.i16[4] = v42.u8[8];
      v42.i16[5] = BYTE2(v34[2]);
      v42.i16[6] = v42.u8[12];
      v42.i16[7] = BYTE2(v34[11]);
      v43.i32[3] = v34[12];
      v47.i32[0] = *(v34 - 14);
      v47.i32[1] = *(v34 - 5);
      v47.i32[2] = v34[4];
      v48 = vshrq_n_u32(v41, 8uLL);
      v47.i32[3] = v34[13];
      v41.i16[0] = v41.u8[0];
      v41.i16[1] = BYTE2(*(v34 - 17));
      v41.i16[2] = v41.u8[4];
      v41.i16[3] = BYTE2(*(v34 - 8));
      v41.i16[4] = v41.u8[8];
      v41.i16[5] = BYTE2(v34[1]);
      v41.i16[6] = v41.u8[12];
      v41.i16[7] = BYTE2(v34[10]);
      v49.i32[0] = *(v34 - 13);
      v49.i32[1] = *(v34 - 4);
      v49.i32[2] = v34[5];
      v49.i32[3] = v34[14];
      v50 = vshrq_n_u32(v43, 8uLL);
      v43.i16[0] = v43.u8[0];
      v43.i16[1] = BYTE2(*(v34 - 15));
      v43.i16[2] = v43.u8[4];
      v43.i16[3] = BYTE2(*(v34 - 6));
      v43.i16[4] = v43.u8[8];
      v43.i16[5] = BYTE2(v34[3]);
      v43.i16[6] = v43.u8[12];
      v43.i16[7] = BYTE2(v34[12]);
      v51 = vshrq_n_u32(v47, 8uLL);
      v47.i16[0] = v47.u8[0];
      v47.i16[1] = BYTE2(*(v34 - 14));
      v47.i16[2] = v47.u8[4];
      v47.i16[3] = BYTE2(*(v34 - 5));
      v47.i16[4] = v47.u8[8];
      v47.i16[5] = BYTE2(v34[4]);
      v47.i16[6] = v47.u8[12];
      v47.i16[7] = BYTE2(v34[13]);
      v52 = vshrq_n_u32(v49, 8uLL);
      v49.i16[0] = v49.u8[0];
      v49.i16[1] = BYTE2(*(v34 - 13));
      v49.i16[2] = v49.u8[4];
      v49.i16[3] = BYTE2(*(v34 - 4));
      v49.i16[4] = v49.u8[8];
      v49.i16[5] = BYTE2(v34[5]);
      v49.i16[6] = v49.u8[12];
      v49.i16[7] = BYTE2(v34[14]);
      v53.i32[0] = *(v34 - 12);
      v53.i32[1] = *(v34 - 3);
      v53.i32[2] = v34[6];
      v53.i32[3] = v34[15];
      v54.i32[0] = *(v34 - 11);
      v54.i32[1] = *(v34 - 2);
      v54.i32[2] = v34[7];
      v55 = vmlaq_s32(vmulq_s32(v43, v24), (*&v50 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v25);
      v54.i32[3] = v34[16];
      v50.i32[0] = *(v34 - 10);
      v50.i32[1] = *(v34 - 1);
      v50.i32[2] = v34[8];
      v56 = vmlaq_s32(vmulq_s32(v47, v26), (*&v51 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v27);
      v50.i32[3] = v34[17];
      v57 = vshrq_n_u32(v53, 8uLL);
      v53.i16[0] = v53.u8[0];
      v53.i16[1] = BYTE2(*(v34 - 12));
      v53.i16[2] = v53.u8[4];
      v53.i16[3] = BYTE2(*(v34 - 3));
      v53.i16[4] = v53.u8[8];
      v53.i16[5] = BYTE2(v34[6]);
      v53.i16[6] = v53.u8[12];
      v53.i16[7] = BYTE2(v34[15]);
      v58 = vmlaq_s32(vmulq_s32(v49, v28), (*&v52 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v29);
      v59 = vshrq_n_u32(v54, 8uLL);
      v54.i16[0] = v54.u8[0];
      v54.i16[1] = BYTE2(*(v34 - 11));
      v54.i16[2] = v54.u8[4];
      v54.i16[3] = BYTE2(*(v34 - 2));
      v54.i16[4] = v54.u8[8];
      v54.i16[5] = BYTE2(v34[7]);
      v54.i16[6] = v54.u8[12];
      v54.i16[7] = BYTE2(v34[16]);
      v60 = vmlaq_s32(vmulq_s32(v30, v53), v31, (*&v57 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
      v61 = vshrq_n_u32(v50, 8uLL);
      v50.i16[0] = v50.u8[0];
      v50.i16[1] = BYTE2(*(v34 - 10));
      v50.i16[2] = v50.u8[4];
      v50.i16[3] = BYTE2(*(v34 - 1));
      v50.i16[4] = v50.u8[8];
      v50.i16[5] = BYTE2(v34[8]);
      v50.i16[6] = v50.u8[12];
      v50.i16[7] = BYTE2(v34[17]);
      v36 = vminq_s32(vsubq_s32(v40, vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v45, 0xFuLL), vmlaq_s32(vmulq_s32(v41, v71), (*&v48 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v70), 0xFuLL), vmlaq_s32(vmulq_s32(v42, v69), (*&v46 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v23), 0xFuLL), v55, 0xFuLL), v56, 0xFuLL), v58, 0xFuLL), v60, 0xFuLL), vmlaq_s32(vmulq_s32(v32, v54), v33, (*&v59 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL), vmlaq_s32(vmulq_s32(v35, v50), v38, (*&v61 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL)), v36);
      v34 += 36;
      v37 -= 4;
    }

    while (v37);
    v18 = vminvq_s32(v36);
    if (v22 == v21)
    {
      return (((*(a1 + 1568) + v18) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  else
  {
    v18 = 0x40000000;
    v19 = v8;
  }

  v62 = v6 + 1;
  v63 = (v11 + 32);
  do
  {
    v64 = v19->i32[0];
    v19 = (v19 + 4);
    v65.i16[0] = *(v63 - 1);
    v65.i16[1] = BYTE2(*(v63 - 1));
    v65.i16[2] = BYTE4(*(v63 - 2));
    v65.i16[3] = BYTE6(*(v63 - 2));
    v65.i16[4] = *(v63 - 1);
    v65.i16[5] = BYTE2(*(v63 - 1));
    v65.i16[6] = BYTE12(*(v63 - 1));
    v65.i16[7] = BYTE14(*(v63 - 1));
    v66.i16[0] = *(v63 - 2);
    v66.i16[1] = BYTE2(*(v63 - 2));
    v66.i16[2] = BYTE4(*(v63 - 4));
    v66.i16[3] = BYTE6(*(v63 - 4));
    v66.i16[4] = *(v63 - 3);
    v66.i16[5] = BYTE2(*(v63 - 3));
    v66.i16[6] = BYTE12(*(v63 - 2));
    v66.i16[7] = BYTE14(*(v63 - 2));
    v67 = v64 - (vaddvq_s32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v13, v66), v15, (*&vshrq_n_u32(*(v63 - 2), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL), vmlaq_s32(vmulq_s32(v12, v65), v14, (*&vshrq_n_u32(*(v63 - 1), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL)) + ((v16 * (*v63 & 0xFF00FF) + v17 * ((*v63 >> 8) & 0xFF00FF)) >> 15));
    if (v67 < v18)
    {
      v18 = v67;
    }

    --v62;
    v63 += 9;
  }

  while (v62 > 1);
  return (((*(a1 + 1568) + v18) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100015708(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1176);
  if (v3)
  {
    v4 = (*(a1 + 1160) + 4 * a2);
    v5 = v4[1] - *v4;
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = (*(a1 + 1144) + 2 * a2);
    v5 = v6[1] - *v6;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if (!*(a1 + 2012))
      {
        if (v3)
        {
          a2 = *(*(a1 + 1160) + 4 * a2);
        }

        else
        {
          a2 = *(*(a1 + 1144) + 2 * a2);
        }
      }

      v8 = (v5 >> 1);
      if (v8 < 1)
      {
        v19 = 0x40000000;
      }

      else
      {
        v9 = *(a1 + 1552);
        v10 = v9[1].u32[0];
        v11 = *(a1 + 32);
        v12 = (v11 + 4 * a2);
        v13 = *(a1 + 136);
        v14 = v13 + 4 * (6 * a2);
        v15.i16[0] = v9->u8[0];
        v15.i16[1] = BYTE2(v9->u32[0]);
        v15.i16[2] = BYTE4(*v9);
        v15.i16[3] = BYTE6(*v9);
        v16 = *&vshr_n_u32(*v9, 8uLL) & 0xFFFF00FFFFFF00FFLL;
        v17 = v10 & 0xFF00FF;
        v18 = (v10 >> 8) & 0xFF00FF;
        if (v8 < 8)
        {
          v19 = 0x40000000;
          v20 = v8;
          goto LABEL_18;
        }

        v20 = v8 - (v8 & 0x7FFFFFF8);
        v12 += 2 * (v8 & 0x7FFFFFF8);
        v21 = vdupq_lane_s32(v15, 0);
        v22 = vdupq_lane_s32(v16, 0);
        v23 = vdupq_lane_s32(v15, 1);
        v24 = vdupq_lane_s32(v16, 1);
        v14 += 48 * (v8 & 0x7FFFFFF8);
        v25 = vdupq_n_s32(v17);
        v26 = vdupq_n_s32(v18);
        v27 = (v13 + 4 * (6 * a2) + 192);
        v28 = (v11 + 4 * a2 + 32);
        v29.i64[0] = 0x4000000040000000;
        v29.i64[1] = 0x4000000040000000;
        v30 = v8 & 0x7FFFFFF8;
        v31.i64[0] = 0x4000000040000000;
        v31.i64[1] = 0x4000000040000000;
        do
        {
          v77 = vld2q_f32(v28);
          v32 = v28 - 8;
          v78 = vld2q_f32(v32);
          v33.i32[0] = *v27;
          v34.i32[0] = v27[1];
          v33.i32[1] = v27[12];
          v34.i32[1] = v27[13];
          v33.i32[2] = v27[24];
          v35.i32[0] = *(v27 - 48);
          v35.i32[1] = *(v27 - 36);
          v34.i32[2] = v27[25];
          v36.i32[0] = *(v27 - 47);
          v36.i32[1] = *(v27 - 35);
          v33.i32[3] = v27[36];
          v37.i32[0] = *(v27 - 46);
          v37.i32[1] = *(v27 - 34);
          v34.i32[3] = v27[37];
          v35.i32[2] = *(v27 - 24);
          v36.i32[2] = *(v27 - 23);
          v37.i32[2] = *(v27 - 22);
          v38.i32[0] = v27[2];
          v35.i32[3] = *(v27 - 12);
          v38.i32[1] = v27[14];
          v38.i32[2] = v27[26];
          v36.i32[3] = *(v27 - 11);
          v38.i32[3] = v27[38];
          v37.i32[3] = *(v27 - 10);
          v39 = vshrq_n_u32(v35, 8uLL);
          v35.i16[0] = v35.u8[0];
          v35.i16[1] = BYTE2(*(v27 - 48));
          v35.i16[2] = v35.u8[4];
          v35.i16[3] = BYTE2(*(v27 - 36));
          v35.i16[4] = v35.u8[8];
          v35.i16[5] = BYTE2(*(v27 - 24));
          v35.i16[6] = v35.u8[12];
          v35.i16[7] = BYTE2(*(v27 - 12));
          v40.i32[0] = *(v27 - 42);
          v41 = vshrq_n_u32(v33, 8uLL);
          v33.i16[0] = *v27;
          v33.i16[1] = BYTE2(*v27);
          v33.i16[2] = v33.u8[4];
          v33.i16[3] = BYTE2(v27[12]);
          v33.i16[4] = v33.u8[8];
          v33.i16[5] = BYTE2(v27[24]);
          v33.i16[6] = v33.u8[12];
          v33.i16[7] = BYTE2(v27[36]);
          v42 = vshrq_n_u32(v36, 8uLL);
          v36.i16[0] = v36.u8[0];
          v36.i16[1] = BYTE2(*(v27 - 47));
          v36.i16[2] = v36.u8[4];
          v36.i16[3] = BYTE2(*(v27 - 35));
          v36.i16[4] = v36.u8[8];
          v36.i16[5] = BYTE2(*(v27 - 23));
          v36.i16[6] = v36.u8[12];
          v36.i16[7] = BYTE2(*(v27 - 11));
          v43 = vmlaq_s32(vmulq_s32(v33, v21), (*&v41 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v22);
          v44 = vshrq_n_u32(v34, 8uLL);
          v34.i16[0] = v34.u8[0];
          v34.i16[1] = BYTE2(v27[1]);
          v34.i16[2] = v34.u8[4];
          v34.i16[3] = BYTE2(v27[13]);
          v34.i16[4] = v34.u8[8];
          v34.i16[5] = BYTE2(v27[25]);
          v34.i16[6] = v34.u8[12];
          v34.i16[7] = BYTE2(v27[37]);
          v45 = vmulq_s32(v34, v23);
          v46 = vshrq_n_u32(v37, 8uLL);
          v47 = vmulq_s32(v36, v23);
          v37.i16[0] = v37.u8[0];
          v37.i16[1] = BYTE2(*(v27 - 46));
          v37.i16[2] = v37.u8[4];
          v37.i16[3] = BYTE2(*(v27 - 34));
          v37.i16[4] = v37.u8[8];
          v37.i16[5] = BYTE2(*(v27 - 22));
          v37.i16[6] = v37.u8[12];
          v37.i16[7] = BYTE2(*(v27 - 10));
          v48 = vshrq_n_u32(v38, 8uLL);
          v38.i16[0] = v38.u8[0];
          v38.i16[1] = BYTE2(v27[2]);
          v38.i16[2] = v38.u8[4];
          v38.i16[3] = BYTE2(v27[14]);
          v38.i16[4] = v38.u8[8];
          v38.i16[5] = BYTE2(v27[26]);
          v38.i16[6] = v38.u8[12];
          v38.i16[7] = BYTE2(v27[38]);
          v40.i32[1] = *(v27 - 30);
          v49 = vmulq_s32(v38, v25);
          v40.i32[2] = *(v27 - 18);
          v40.i32[3] = *(v27 - 6);
          v50 = vmlaq_s32(v45, (*&v44 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v24);
          v38.i32[0] = v27[6];
          v44.i32[0] = v27[7];
          v38.i32[1] = v27[18];
          v51 = vmulq_s32(v37, v25);
          v38.i32[2] = v27[30];
          v38.i32[3] = v27[42];
          v37.i32[0] = *(v27 - 41);
          v37.i32[1] = *(v27 - 29);
          v37.i32[2] = *(v27 - 17);
          v37.i32[3] = *(v27 - 5);
          v52 = vmlaq_s32(vmulq_s32(v35, v21), (*&v39 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v22);
          v44.i32[1] = v27[19];
          v44.i32[2] = v27[31];
          v53 = vmlaq_s32(v47, (*&v42 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v24);
          v44.i32[3] = v27[43];
          v39.i32[0] = *(v27 - 40);
          v39.i32[1] = *(v27 - 28);
          v39.i32[2] = *(v27 - 16);
          v39.i32[3] = *(v27 - 4);
          v54 = vshrq_n_u32(v40, 8uLL);
          v40.i16[0] = v40.u8[0];
          v40.i16[1] = BYTE2(*(v27 - 42));
          v40.i16[2] = v40.u8[4];
          v40.i16[3] = BYTE2(*(v27 - 30));
          v40.i16[4] = v40.u8[8];
          v40.i16[5] = BYTE2(*(v27 - 18));
          v40.i16[6] = v40.u8[12];
          v40.i16[7] = BYTE2(*(v27 - 6));
          v55 = vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v43, 0xFuLL), v50, 0xFuLL), vmlaq_s32(v49, (*&v48 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v26), 0xFuLL);
          v56 = vshrq_n_u32(v38, 8uLL);
          v38.i16[0] = v38.u8[0];
          v38.i16[1] = BYTE2(v27[6]);
          v38.i16[2] = v38.u8[4];
          v38.i16[3] = BYTE2(v27[18]);
          v38.i16[4] = v38.u8[8];
          v38.i16[5] = BYTE2(v27[30]);
          v38.i16[6] = v38.u8[12];
          v38.i16[7] = BYTE2(v27[42]);
          v57 = vmlaq_s32(vmulq_s32(v38, v21), (*&v56 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v22);
          v56.i32[0] = v27[8];
          v56.i32[1] = v27[20];
          v56.i32[2] = v27[32];
          v56.i32[3] = v27[44];
          v58 = vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v52, 0xFuLL), v53, 0xFuLL), vmlaq_s32(v51, (*&v46 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v26), 0xFuLL);
          v59 = vshrq_n_u32(v57, 0xFuLL);
          v60 = vshrq_n_u32(v37, 8uLL);
          v37.i16[0] = v37.u8[0];
          v37.i16[1] = BYTE2(*(v27 - 41));
          v37.i16[2] = v37.u8[4];
          v37.i16[3] = BYTE2(*(v27 - 29));
          v37.i16[4] = v37.u8[8];
          v37.i16[5] = BYTE2(*(v27 - 17));
          v37.i16[6] = v37.u8[12];
          v37.i16[7] = BYTE2(*(v27 - 5));
          v61 = vmlaq_s32(vmulq_s32(v37, v23), (*&v60 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v24);
          v62 = vshrq_n_u32(v44, 8uLL);
          v44.i16[0] = v44.u8[0];
          v44.i16[1] = BYTE2(v27[7]);
          v44.i16[2] = v44.u8[4];
          v44.i16[3] = BYTE2(v27[19]);
          v44.i16[4] = v44.u8[8];
          v44.i16[5] = BYTE2(v27[31]);
          v44.i16[6] = v44.u8[12];
          v44.i16[7] = BYTE2(v27[43]);
          v63 = vmlaq_s32(vmulq_s32(v44, v23), (*&v62 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v24);
          v64 = vshrq_n_u32(v39, 8uLL);
          v39.i16[0] = v39.u8[0];
          v39.i16[1] = BYTE2(*(v27 - 40));
          v39.i16[2] = v39.u8[4];
          v39.i16[3] = BYTE2(*(v27 - 28));
          v39.i16[4] = v39.u8[8];
          v39.i16[5] = BYTE2(*(v27 - 16));
          v39.i16[6] = v39.u8[12];
          v39.i16[7] = BYTE2(*(v27 - 4));
          v65 = vmlaq_s32(vmulq_s32(v39, v25), (*&v64 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v26);
          v66 = vshrq_n_u32(v56, 8uLL);
          v56.i16[0] = v56.u8[0];
          v56.i16[1] = BYTE2(v27[8]);
          v56.i16[2] = v56.u8[4];
          v56.i16[3] = BYTE2(v27[20]);
          v56.i16[4] = v56.u8[8];
          v56.i16[5] = BYTE2(v27[32]);
          v56.i16[6] = v56.u8[12];
          v56.i16[7] = BYTE2(v27[44]);
          v27 += 96;
          v29 = vminq_s32(vsubq_s32(v78.val[1], vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v40, v21), (*&v54 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v22), 0xFuLL), v61, 0xFuLL), v65, 0xFuLL)), vminq_s32(vsubq_s32(v78.val[0], v58), v29));
          v28 += 16;
          v31 = vminq_s32(vsubq_s32(v77.val[1], vsraq_n_u32(vsraq_n_u32(v59, v63, 0xFuLL), vmlaq_s32(vmulq_s32(v56, v25), (*&v66 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v26), 0xFuLL)), vminq_s32(vsubq_s32(v77.val[0], v55), v31));
          v30 -= 8;
        }

        while (v30);
        v19 = vminvq_s32(vminq_s32(v29, v31));
        if ((v8 & 0x7FFFFFF8) != v8)
        {
LABEL_18:
          v67 = v20 + 1;
          v68 = (v14 + 32);
          do
          {
            v69.i16[0] = *(v68 - 4);
            v69.i16[1] = BYTE2(*(v68 - 4));
            v69.i16[2] = BYTE4(*(v68 - 4));
            v69.i16[3] = BYTE6(*(v68 - 4));
            v70 = vmla_s32(vmul_s32(v69, v15), (*&vshr_n_u32(*(v68 - 8), 8uLL) & 0xFFFF00FFFFFF00FFLL), v16);
            v71 = *v12;
            v72 = v12[1];
            v12 += 2;
            v73 = vsra_n_u32(vdup_lane_s32(vshr_n_u32(v70, 0xFuLL), 1), v70, 0xFuLL).u32[0];
            v70.i16[0] = *(v68 - 1);
            v70.i16[1] = BYTE2(*(v68 - 1));
            v70.i16[2] = BYTE4(*(v68 - 1));
            v70.i16[3] = BYTE6(*(v68 - 1));
            v74 = vmla_s32(vmul_s32(v70, v15), (*&vshr_n_u32(*(v68 - 2), 8uLL) & 0xFFFF00FFFFFF00FFLL), v16);
            v75 = v71 - (v73 + (((*(v68 - 6) & 0xFF00FF) * v17 + ((*(v68 - 6) >> 8) & 0xFF00FF) * v18) >> 15));
            v76 = v72 - (vsra_n_u32(vdup_lane_s32(vshr_n_u32(v74, 0xFuLL), 1), v74, 0xFuLL).u32[0] + (((*v68 & 0xFF00FF) * v17 + ((*v68 >> 8) & 0xFF00FF) * v18) >> 15));
            if (v75 >= v19)
            {
              v75 = v19;
            }

            if (v76 >= v75)
            {
              v19 = v75;
            }

            else
            {
              v19 = v76;
            }

            --v67;
            v68 += 12;
          }

          while (v67 > 1);
        }
      }

      return (((*(a1 + 1568) + v19) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  return sub_100012DA0(a1, a2);
}

float sub_100015BE0(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, float *a5, int8x16_t a6, int8x16_t a7)
{
  v7 = *(a1 + 1072);
  v8 = __OFSUB__(a2, v7);
  v9 = a2 - v7;
  if (v9 < 0 != v8)
  {
    v10 = a2;
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        v11 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        v11 = *(*(a1 + 1144) + 2 * a2);
      }

      v10 = v11 + a3;
    }

    v13 = *(a1 + 1128) * v10;
    v12 = (a1 + 136);
    if (*(a1 + 1080) <= a2)
    {
      v12 = (a1 + 144);
    }
  }

  else
  {
    v12 = (a1 + 792);
    v13 = 6 * v9;
  }

  v14 = *v12 + 4 * v13;
  *a7.i8 = vsra_n_u32(vshl_n_s32(*v14, 0x10uLL), *v14, 0x10uLL);
  a6.i16[0] = *v14;
  a6.i16[1] = BYTE2(*v14);
  a6.i16[2] = BYTE4(*v14);
  a6.i16[3] = BYTE6(*v14);
  v15 = vshr_n_u32(*a7.i8, 8uLL);
  a7.i32[0] &= 0xFF00FFu;
  a7.i16[2] = a7.u8[4];
  a7.i16[3] = a7.u8[6];
  *a6.i8 = vmla_s32(vmul_s32(*a7.i8, *a6.i8), (*&v15 & 0xFFFF00FFFFFF00FFLL), (*&vshr_n_u32(*v14, 8uLL) & 0xFFFF00FFFFFF00FFLL));
  a7.i32[0] = vsra_n_u32(vdup_lane_s32(vshr_n_u32(*a6.i8, 0x10uLL), 1), *a6.i8, 0x10uLL).u32[0];
  a6.i32[0] = *(v14 + 8);
  *a4 = a7.i32[0];
  a7.i64[0] = *(v14 + 12);
  v16 = vextq_s8(vextq_s8(a6, a6, 4uLL), a7, 0xCuLL);
  v16.i32[3] = *(v14 + 20);
  v17 = vsraq_n_u32(vshlq_n_s32(v16, 0x10uLL), v16, 0x10uLL);
  v18 = vshrq_n_u32(v16, 8uLL);
  v16.i64[0] &= 0xFF00FF00FF00FFuLL;
  v16.i32[2] &= 0xFF00FFu;
  v16.i16[6] = v16.u8[12];
  v16.i16[7] = BYTE2(*(v14 + 20));
  result = COERCE_FLOAT(vaddvq_s32(vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v17 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v16), (*&vshrq_n_u32(v17, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), (*&v18 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0x10uLL)));
  *a5 = result;
  return result;
}

uint32x2_t sub_100015CD8(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *(a1 + 1072);
  v6 = __OFSUB__(a2, v5);
  v7 = a2 - v5;
  if (v7 < 0 != v6)
  {
    v8 = a2;
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        v9 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        v9 = *(*(a1 + 1144) + 2 * a2);
      }

      v8 = v9 + a3;
    }

    v11 = *(a1 + 1128) * v8;
    v10 = (a1 + 136);
    if (*(a1 + 1080) <= a2)
    {
      v10 = (a1 + 144);
    }
  }

  else
  {
    v10 = (a1 + 792);
    v11 = 6 * v7;
  }

  v12 = (*v10 + 4 * v11);
  v13 = v12[1].u32[0];
  v14 = vsra_n_u32(vshl_n_s32(*v12, 0x10uLL), *v12, 0x10uLL);
  v15.i16[0] = v12->u8[0];
  v15.i16[1] = BYTE2(v12->u32[0]);
  v15.i16[2] = BYTE4(*v12);
  v15.i16[3] = BYTE6(*v12);
  result = vmla_s32(vmul_s32((*&v14 & 0xFF00FF00FF00FFLL), v15), (*&vshr_n_u32(v14, 8uLL) & 0xFFFF00FFFFFF00FFLL), (*&vshr_n_u32(*v12, 8uLL) & 0xFFFF00FFFFFF00FFLL));
  *a4 = vsra_n_u32(vdup_lane_s32(vshr_n_u32(result, 0x10uLL), 1), result, 0x10uLL).u32[0];
  HIDWORD(v17) = v13;
  LODWORD(v17) = v13;
  *a5 = (((v17 >> 16) & 0xFF00FF) * (v13 & 0xFF00FF) + (((v17 >> 16) >> 8) & 0xFF00FF) * ((v13 >> 8) & 0xFF00FF)) >> 16;
  return result;
}

uint64_t sub_100015DB4(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1072) <= a2)
  {
    return sub_100012700(a1, a2);
  }

  v2 = *(a1 + 1176);
  if (v2)
  {
    v3 = (*(a1 + 1160) + 4 * a2);
    v4 = v3[1] - *v3;
    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    return sub_100012700(a1, a2);
  }

  v47 = (*(a1 + 1144) + 2 * a2);
  v4 = v47[1] - *v47;
  if (v4)
  {
    return sub_100012700(a1, a2);
  }

LABEL_4:
  v5 = a2;
  if (!*(a1 + 2012))
  {
    if (!v2)
    {
      v5 = *(*(a1 + 1144) + 2 * a2);
      v6 = v4 >> 1;
      if (v4 >> 1 >= 1)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

    v5 = *(*(a1 + 1160) + 4 * a2);
  }

  v6 = v4 >> 1;
  if (v4 >> 1 >= 1)
  {
LABEL_8:
    v7 = *(a1 + 1064);
    v8 = *(a1 + 1068);
    v9 = *(a1 + 1552);
    v10 = v9[1].u32[0];
    v11 = *(a1 + 1080) <= a2;
    v12 = 120;
    if (*(a1 + 1080) > a2)
    {
      v12 = 48;
    }

    v13 = *(a1 + v12);
    v14 = 4 * v5;
    v15 = v13 + v14;
    v16 = 104;
    if (!v11)
    {
      v16 = 32;
    }

    v17 = 144;
    if (!v11)
    {
      v17 = 136;
    }

    v18 = v13 == 0;
    v19 = (*(a1 + v16) + v14);
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v15;
    }

    v21 = *(a1 + v17) + 4 * *(a1 + 1128) * v5;
    v22.i16[0] = v9->u8[0];
    v22.i16[1] = BYTE2(v9->u32[0]);
    v22.i16[2] = BYTE4(*v9);
    v22.i16[3] = BYTE6(*v9);
    v23 = *&vshr_n_u32(*v9, 8uLL) & 0xFFFF00FFFFFF00FFLL;
    v24 = (v10 >> 8) & 0xFF00FF;
    v25 = v10 & 0xFF00FF;
    v26 = v6 + 1;
    v27 = (v20 + 4);
    v28 = 0x40000000;
    do
    {
      v35.i16[0] = *v21;
      v35.i16[1] = BYTE2(*v21);
      v35.i16[2] = BYTE4(*v21);
      v35.i16[3] = BYTE6(*v21);
      v36 = vmla_s32(vmul_s32(v35, v22), (*&vshr_n_u32(*v21, 8uLL) & 0xFFFF00FFFFFF00FFLL), v23);
      v37 = *v19 - vsra_n_u32(vdup_lane_s32(vshr_n_u32(v36, 0xFuLL), 1), v36, 0xFuLL).u32[0];
      if (v37 <= v7)
      {
        v39 = v9[1].u32[1];
        LOWORD(v40) = *&v9[2];
        WORD1(v40) = BYTE2(*&v9[2]);
        WORD2(v40) = BYTE4(*&v9[2]);
        HIWORD(v40) = BYTE6(*&v9[2]);
        v41.i16[0] = *(v21 + 8);
        v41.i16[1] = BYTE2(*(v21 + 8));
        v41.i16[2] = BYTE4(*(v21 + 8));
        v41.i16[3] = BYTE6(*(v21 + 8));
        v41.i16[4] = *(v21 + 16);
        v41.i16[5] = BYTE2(*(v21 + 16));
        v41.i16[6] = BYTE12(*(v21 + 8));
        v41.i16[7] = BYTE14(*(v21 + 8));
        v42.i32[0] = v25;
        v42.i32[1] = v39 & 0xFF00FF;
        v42.i64[1] = v40;
        v43 = vmulq_s32(v41, v42);
        v41.i32[0] = v24;
        v41.i32[1] = (v39 >> 8) & 0xFF00FF;
        v41.i64[1] = *&vshr_n_u32(v9[2], 8uLL) & 0xFFFF00FFFFFF00FFLL;
        v38 = *(v27 - 1) + v37 - vaddvq_s32(vshrq_n_u32(vmlaq_s32(v43, (*&vshrq_n_u32(*(v21 + 8), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v41), 0xFuLL));
      }

      else
      {
        v38 = v37 + v8;
      }

      if (v38 < v28)
      {
        v28 = v38;
      }

      v44.i16[0] = *(v21 + 24);
      v44.i16[1] = BYTE2(*(v21 + 24));
      v44.i16[2] = BYTE4(*(v21 + 24));
      v44.i16[3] = BYTE6(*(v21 + 24));
      v45 = vmla_s32(vmul_s32(v44, v22), (*&vshr_n_u32(*(v21 + 24), 8uLL) & 0xFFFF00FFFFFF00FFLL), v23);
      v46 = v19[1] - vsra_n_u32(vdup_lane_s32(vshr_n_u32(v45, 0xFuLL), 1), v45, 0xFuLL).u32[0];
      if (v46 <= v7)
      {
        v29 = v9[1].u32[1];
        LOWORD(v30) = *&v9[2];
        WORD1(v30) = BYTE2(*&v9[2]);
        WORD2(v30) = BYTE4(*&v9[2]);
        HIWORD(v30) = BYTE6(*&v9[2]);
        v31.i16[0] = *(v21 + 32);
        v31.i16[1] = BYTE2(*(v21 + 32));
        v31.i16[2] = BYTE4(*(v21 + 32));
        v31.i16[3] = BYTE6(*(v21 + 32));
        v31.i16[4] = *(v21 + 40);
        v31.i16[5] = BYTE2(*(v21 + 40));
        v31.i16[6] = BYTE12(*(v21 + 32));
        v31.i16[7] = BYTE14(*(v21 + 32));
        v32.i32[0] = v25;
        v32.i32[1] = v29 & 0xFF00FF;
        v32.i64[1] = v30;
        v33 = vmulq_s32(v31, v32);
        v31.i32[0] = v24;
        v31.i32[1] = (v29 >> 8) & 0xFF00FF;
        v31.i64[1] = *&vshr_n_u32(v9[2], 8uLL) & 0xFFFF00FFFFFF00FFLL;
        v34 = *v27 + v46 - vaddvq_s32(vshrq_n_u32(vmlaq_s32(v33, (*&vshrq_n_u32(*(v21 + 32), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v31), 0xFuLL));
      }

      else
      {
        v34 = v46 + v8;
      }

      if (v34 < v28)
      {
        v28 = v34;
      }

      --v26;
      v27 += 2;
      v19 += 2;
      v21 += 48;
    }

    while (v26 > 1);
    return (((*(a1 + 1568) + v28) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

LABEL_32:
  v28 = 0x40000000;
  return (((*(a1 + 1568) + v28) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100016074(uint64_t a1, signed int a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = *(a1 + 1072);
  v7 = a2 - v6;
  if (a2 >= v6)
  {
    v11 = (a1 + 792);
    v12 = (a1 + 800);
    v13 = (a1 + 808);
    v14 = 6 * v7;
    v15 = 1;
  }

  else
  {
    if (*(a1 + 1176))
    {
      v8 = (*(a1 + 1160) + 4 * a2);
      v9 = *v8;
      v10 = v8[1];
    }

    else
    {
      v16 = (*(a1 + 1144) + 2 * a2);
      v9 = *v16;
      v10 = v16[1];
    }

    v15 = v10 - v9;
    if (*(a1 + 2012))
    {
      v7 = a2;
    }

    else
    {
      v7 = v9;
    }

    v14 = *(a1 + 1128) * v7;
    v17 = *(a1 + 1080) <= a2;
    v11 = (a1 + 136);
    if (*(a1 + 1080) > a2)
    {
      v12 = (a1 + 32);
    }

    else
    {
      v11 = (a1 + 144);
      v12 = (a1 + 104);
    }

    if (v17)
    {
      v13 = (a1 + 120);
    }

    else
    {
      v13 = (a1 + 48);
    }
  }

  v18 = *v13;
  v19 = *v11;
  if (v18)
  {
    v20 = v18 + 4 * v7;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 1552);
  v22 = v21[1].u32[0];
  if (v15 < 1)
  {
    v24 = 0;
    v31 = 0x40000000;
LABEL_30:
    v41 = v19 + 4 * v14;
    *a3.i8 = *(v21 + 12);
    v42 = &v21[2] + 1;
    v43.i16[0] = *(v41 + 24 * v24 + 8);
    v43.i16[1] = BYTE2(*(v41 + 24 * v24 + 8));
    v43.i16[2] = BYTE4(*(v41 + 24 * v24 + 8));
    v43.i16[3] = BYTE6(*(v41 + 24 * v24 + 8));
    v43.i16[4] = *(v41 + 24 * v24 + 16);
    v43.i16[5] = BYTE2(*(v41 + 24 * v24 + 16));
    v43.i16[6] = BYTE12(*(v41 + 24 * v24 + 8));
    v43.i16[7] = BYTE14(*(v41 + 24 * v24 + 8));
    a6.i32[0] = v22;
    v44 = vextq_s8(vextq_s8(a6, a6, 4uLL), a3, 0xCuLL);
    v44.i32[3] = *v42;
    v45 = vshrq_n_u32(v44, 8uLL);
    v44.i64[0] &= 0xFF00FF00FF00FFuLL;
    v44.i32[2] &= 0xFF00FFu;
    v44.i16[6] = *v42;
    v44.i16[7] = BYTE2(*v42);
    v30 = *(v20 + 4 * v24) + v31 - vaddvq_s32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v43, v44), (*&vshrq_n_u32(*(v41 + 24 * v24 + 8), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), (*&v45 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL));
    return (((*(a1 + 1568) + v30) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  v23 = 0;
  v24 = 0;
  v25 = *v12 + 4 * v7;
  v27 = *&vshr_n_u32(*v21, 8uLL) & 0xFFFF00FFFFFF00FFLL;
  v28 = v15;
  v29 = (v19 + 4 * v14 + 8);
  v30 = 0x40000000;
  v31 = 0x40000000;
  do
  {
    while (1)
    {
      v38.i16[0] = *(v29 - 1);
      v38.i16[1] = BYTE2(*(v29 - 1));
      v38.i16[2] = BYTE4(*(v29 - 1));
      v38.i16[3] = BYTE6(*(v29 - 1));
      v26.i16[3] = BYTE6(*v21);
      v26.i16[2] = BYTE4(*v21);
      v26.i16[1] = BYTE2(v21->u32[0]);
      v26.i16[0] = v21->u8[0];
      v39 = vmla_s32(vmul_s32(v38, v26), (*&vshr_n_u32(*(v29 - 8), 8uLL) & 0xFFFF00FFFFFF00FFLL), v27);
      v40 = *(v25 + 4 * v23) - vsra_n_u32(vdup_lane_s32(vshr_n_u32(v39, 0xFuLL), 1), v39, 0xFuLL).u32[0];
      if (v40 <= *(a1 + 1064))
      {
        break;
      }

      if (v40 < v31)
      {
        v31 = v40;
        v24 = v23;
      }

      ++v23;
      v29 = (v29 + 24);
      if (v28 == v23)
      {
        goto LABEL_27;
      }
    }

    v32 = v21[1].u32[1];
    LOWORD(v33) = *&v21[2];
    WORD1(v33) = BYTE2(*&v21[2]);
    WORD2(v33) = BYTE4(*&v21[2]);
    HIWORD(v33) = BYTE6(*&v21[2]);
    v34 = *v29;
    v29 = (v29 + 24);
    v35.i32[0] = v22 & 0xFF00FF;
    v35.i32[1] = v32 & 0xFF00FF;
    v35.i64[1] = v33;
    v36.i32[0] = (v22 >> 8) & 0xFF00FF;
    v36.i32[1] = (v32 >> 8) & 0xFF00FF;
    v36.i64[1] = *&vshr_n_u32(v21[2], 8uLL) & 0xFFFF00FFFFFF00FFLL;
    v37 = *(v20 + 4 * v23) + v40 - vaddvq_s32(vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v34 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v35), (*&vshrq_n_u32(v34, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v36), 0xFuLL));
    if (v37 < v30)
    {
      v30 = v37;
    }

    ++v23;
  }

  while (v28 != v23);
LABEL_27:
  if (v30 == 0x40000000)
  {
    goto LABEL_30;
  }

  return (((*(a1 + 1568) + v30) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100016304(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1544);
  v3 = *(a1 + 1072);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 == v4)
  {
    v9 = *(a1 + 1120);
    v10 = (*(a1 + 784) + v9 * v5);
    v11 = 1;
LABEL_12:
    v14 = v2 + 1;
    v15 = v2[1];
    v16 = *v2;
    v17 = v2[3];
    v18 = v2[2];
    v19 = v2[5];
    v20 = v2[4];
    v21 = (v2 + 8);
    v22 = 0x40000000;
    v23 = v2[7];
    v24.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v24.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v25 = v2[6];
    while (1)
    {
      v28 = v10[1];
      v26 = ((*v10 & 0xF) - v16) * ((*v10 & 0xF) - v16) + ((*v10 >> 4) - v15) * ((*v10 >> 4) - v15) + ((v28 >> 4) - v17) * ((v28 >> 4) - v17) + ((v28 & 0xF) - v18) * ((v28 & 0xF) - v18) + ((v10[2] >> 4) - v19) * ((v10[2] >> 4) - v19) + ((v10[2] & 0xF) - v20) * ((v10[2] & 0xF) - v20) + ((v10[3] >> 4) - v23) * ((v10[3] >> 4) - v23) + ((v10[3] & 0xF) - v25) * ((v10[3] & 0xF) - v25);
      if (v26 > *(a1 + 1056))
      {
        v26 += *(a1 + 1060);
      }

      else
      {
        v29 = *(a1 + 1104);
        if (v29 >= 9)
        {
          if (v29 <= 0xA)
          {
            v30 = 10;
          }

          else
          {
            v30 = *(a1 + 1104);
          }

          v31 = v30 - 9;
          if ((v30 - 9) < 0xE)
          {
            v32 = 8;
            goto LABEL_35;
          }

          v33 = (v31 >> 1) + 1;
          if (v31 >= 0x1E)
          {
            v42 = 0;
            v34 = v33 & 0x7FFFFFFFFFFFFFF0;
            v43 = 0uLL;
            v44 = v26;
            v45 = v21;
            v46 = 0uLL;
            v47 = 0uLL;
            do
            {
              v48 = *&v10[(v42 & 0x7FFFFFFFFFFFFFF0) + 4];
              v49 = vshrq_n_u8(v48, 4uLL);
              v62 = vld2q_s8(v45);
              v45 += 32;
              v50 = vsubl_high_u8(v49, v62.val[1]);
              v51 = vsubl_u8(*v49.i8, *v62.val[1].i8);
              v52 = vandq_s8(v48, v24);
              v53 = vsubl_u8(*v52.i8, *v62.val[0].i8);
              v54 = vsubl_high_u8(v52, v62.val[0]);
              v47 = vmlal_high_s16(vmlal_high_s16(v47, v50, v50), v54, v54);
              v46 = vmlal_s16(vmlal_s16(v46, *v50.i8, *v50.i8), *v54.i8, *v54.i8);
              v43 = vmlal_high_s16(vmlal_high_s16(v43, v51, v51), v53, v53);
              v44 = vmlal_s16(vmlal_s16(v44, *v51.i8, *v51.i8), *v53.i8, *v53.i8);
              v42 += 16;
            }

            while (v34 != v42);
            v26 = vaddvq_s32(vaddq_s32(vaddq_s32(v44, v46), vaddq_s32(v43, v47)));
            if (v33 == v34)
            {
              goto LABEL_14;
            }

            if ((v33 & 8) == 0)
            {
              v32 = (2 * v34) | 8;
LABEL_35:
              v55 = v32 >> 1;
              v56 = &v14[v32];
              do
              {
                v57 = v10[v55];
                v58 = (v57 >> 4) - *v56;
                v59 = (v57 & 0xF) - *(v56 - 1);
                v26 += v58 * v58 + v59 * v59;
                v32 += 2;
                ++v55;
                v56 += 2;
              }

              while (v32 < v29);
              goto LABEL_14;
            }
          }

          else
          {
            v34 = 0;
          }

          v35 = v33 & 0x7FFFFFFFFFFFFFF8;
          v32 = (16 * ((v33 & 0x7FFFFFFFFFFFFFF8uLL) >> 3)) | 8;
          v36 = 0uLL;
          v37 = v26;
          v38 = &v21[2 * v34];
          do
          {
            v39 = *&v10[(v34 & 0x7FFFFFFFFFFFFFF8) + 4];
            v61 = vld2_s8(v38);
            v38 += 16;
            v40 = vsubl_u8(vshr_n_u8(v39, 4uLL), v61.val[1]);
            v41 = vsubl_u8(vand_s8(v39, 0xF0F0F0F0F0F0F0FLL), v61.val[0]);
            v36 = vmlal_high_s16(vmlal_high_s16(v36, v40, v40), v41, v41);
            v37 = vmlal_s16(vmlal_s16(v37, *v40.i8, *v40.i8), *v41.i8, *v41.i8);
            v34 += 8;
          }

          while (v35 != v34);
          v26 = vaddvq_s32(vaddq_s32(v37, v36));
          if (v33 == v35)
          {
            goto LABEL_14;
          }

          goto LABEL_35;
        }
      }

LABEL_14:
      if (v26 < v22)
      {
        v22 = v26;
      }

      v10 += v9;
      if (v11-- <= 1)
      {
        return ((*(a1 + 1052) * v22 + *(a1 + 1192) / 2) >> *(a1 + 1196));
      }
    }
  }

  if (*(a1 + 1176))
  {
    v6 = (*(a1 + 1160) + 4 * a2);
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v12 = (*(a1 + 1144) + 2 * a2);
    v8 = *v12;
    v7 = v12[1];
  }

  v11 = v7 - v8;
  if (*(a1 + 2012))
  {
    v8 = a2;
  }

  v13 = 96;
  if (*(a1 + 1080) > a2)
  {
    v13 = 16;
  }

  if (v11 >= 1)
  {
    v9 = *(a1 + 1120);
    v10 = (*(a1 + v13) + (v9 * v8));
    goto LABEL_12;
  }

  v22 = 0x40000000;
  return ((*(a1 + 1052) * v22 + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_10001664C(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 1072);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 == v4)
  {
    v8 = *(a1 + 792) + 12 * v5;
    goto LABEL_9;
  }

  if (!*(a1 + 1176))
  {
    v6 = 3 * (*(*(a1 + 1144) + 2 * a2) + a3);
    if (*(a1 + 1080) > a2)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = *(a1 + 144);
    goto LABEL_8;
  }

  v6 = 3 * (*(*(a1 + 1160) + 4 * a2) + a3);
  if (*(a1 + 1080) <= a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = *(a1 + 136);
LABEL_8:
  v8 = v7 + 4 * v6;
LABEL_9:
  v9 = *(a1 + 1560);
  v10 = *v9 - *v8;
  if (*v8 >= *v9)
  {
    v10 = *v8 - *v9;
  }

  v11 = ((*v8 ^ *v9 ^ v10) & 0x11111111) - (((*v8 ^ *v9 ^ v10) & 0x11111111u) >> 4);
  v12 = (16843009 * (((((v11 + v10) ^ v11) >> 4) & 0xF0F0F0F) + (((v11 + v10) ^ v11) & 0xF0F0F0F))) >> 24;
  if (v12 <= *(a1 + 1056))
  {
    v14 = *(v8 + 4);
    v15 = *(v9 + 4);
    v16 = vabd_u32(v14, v15);
    v17 = vand_s8(vrev64_s32(veor_s8(veor_s8(v15, v14), v16)), 0x1111111111111111);
    v18 = vsub_s32(v17, vshr_n_u32(v17, 4uLL));
    v19 = veor_s8(vadd_s32(v18, vrev64_s32(v16)), v18);
    v20 = vshr_n_u32(vmul_s32(vadd_s32(vand_s8(vshr_n_u32(v19, 4uLL), 0xF0F0F0F0F0F0F0FLL), vand_s8(v19, 0xF0F0F0F0F0F0F0FLL)), 0x101010101010101), 0x18uLL);
    v13 = v20.i32[0] + v12 + v20.i32[1];
  }

  else
  {
    v13 = *(a1 + 1060) + v12;
  }

  return ((*(a1 + 1052) * v13 + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_1000167AC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1072);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (v4 < 0 == v3)
  {
    v39 = *(a1 + 792) + 12 * v4;
    v40 = 1;
    goto LABEL_31;
  }

  if (*(a1 + 1176))
  {
    v5 = (*(a1 + 1160) + 4 * a2);
    v6 = *v5;
    v40 = v5[1] - *v5;
    if ((v40 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_27:
    v42 = 144;
    if (*(a1 + 1080) > a2)
    {
      v42 = 136;
    }

    if (v40 >= 1)
    {
      v39 = *(a1 + v42) + 12 * v6;
LABEL_31:
      v43 = *(a1 + 1560);
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = vrev64_s32(v45);
      v47 = v40 + 1;
      v48 = (v39 + 4);
      v16 = 0x40000000;
      do
      {
        while (1)
        {
          v56 = *(v48 - 1);
          v57 = v44 - v56;
          if (v56 >= v44)
          {
            v57 = v56 - v44;
          }

          v58 = ((v56 ^ v44 ^ v57) & 0x11111111) - (((v56 ^ v44 ^ v57) & 0x11111111) >> 4);
          v59 = (16843009 * (((((v58 + v57) ^ v58) >> 4) & 0xF0F0F0F) + (((v58 + v57) ^ v58) & 0xF0F0F0F))) >> 24;
          if (v59 <= *(a1 + 1056))
          {
            break;
          }

          v60 = *(a1 + 1060) + v59;
          if (v60 < v16)
          {
            v16 = v60;
          }

          --v47;
          v48 = (v48 + 12);
          if (v47 <= 1)
          {
            return ((*(a1 + 1052) * v16 + *(a1 + 1192) / 2) >> *(a1 + 1196));
          }
        }

        v49 = *v48;
        v48 = (v48 + 12);
        v50 = vrev64_s32(v49);
        v51 = vand_s8(veor_s8(vrev64_s32(veor_s8(v49, v45)), vabd_u32(v50, v46)), 0x1111111111111111);
        v52 = vsub_s32(v51, vshr_n_u32(v51, 4uLL));
        v53 = veor_s8(vaba_u32(v52, v50, v46), v52);
        v54 = vshr_n_u32(vmul_s32(vadd_s32(vand_s8(vshr_n_u32(v53, 4uLL), 0xF0F0F0F0F0F0F0FLL), vand_s8(v53, 0xF0F0F0F0F0F0F0FLL)), 0x101010101010101), 0x18uLL);
        v55 = v54.i32[0] + v59 + v54.i32[1];
        if (v55 < v16)
        {
          v16 = v55;
        }

        --v47;
      }

      while (v47 > 1);
      return ((*(a1 + 1052) * v16 + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }

LABEL_42:
    v16 = 0x40000000;
    return ((*(a1 + 1052) * v16 + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  v41 = (*(a1 + 1144) + 2 * a2);
  v6 = *v41;
  v40 = v41[1] - v6;
  if (v40)
  {
    goto LABEL_27;
  }

LABEL_5:
  v7 = v40 >> 1;
  if (v40 >> 1 < 1)
  {
    goto LABEL_42;
  }

  v8 = *(a1 + 1560);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = 144;
  if (*(a1 + 1080) > a2)
  {
    v11 = 136;
  }

  v12 = *(a1 + v11) + 12 * v6;
  v13 = *(a1 + 1056);
  v14 = vrev64_s32(v10);
  v15 = v7 + 1;
  v16 = 0x40000000;
  do
  {
    while (1)
    {
      v24 = v9 - *v12;
      if (*v12 >= v9)
      {
        v24 = *v12 - v9;
      }

      v25 = ((*v12 ^ v9 ^ v24) & 0x11111111) - (((*v12 ^ v9 ^ v24) & 0x11111111) >> 4);
      v26 = (16843009 * (((((v25 + v24) ^ v25) >> 4) & 0xF0F0F0F) + (((v25 + v24) ^ v25) & 0xF0F0F0F))) >> 24;
      if (v26 <= v13)
      {
        v28 = *(v12 + 4);
        v29 = vand_s8(veor_s8(veor_s8(v28, v10), vabd_u32(v28, v10)), 0x1111111111111111);
        v30 = vsub_s32(v29, vshr_n_u32(v29, 4uLL));
        v31 = veor_s8(vaba_u32(v30, v28, v10), v30);
        v32 = vshr_n_u32(vmul_s32(vadd_s32(vand_s8(vshr_n_u32(v31, 4uLL), 0xF0F0F0F0F0F0F0FLL), vand_s8(v31, 0xF0F0F0F0F0F0F0FLL)), 0x101010101010101), 0x18uLL);
        v27 = v32.i32[1];
        v26 += v32.i32[0];
      }

      else
      {
        v27 = *(a1 + 1060);
      }

      v33 = v27 + v26;
      if (v33 < v16)
      {
        v16 = v33;
      }

      v34 = *(v12 + 12);
      v35 = v9 - v34;
      if (v34 >= v9)
      {
        v35 = v34 - v9;
      }

      v36 = ((v34 ^ v9 ^ v35) & 0x11111111) - (((v34 ^ v9 ^ v35) & 0x11111111) >> 4);
      v37 = (16843009 * (((((v36 + v35) ^ v36) >> 4) & 0xF0F0F0F) + (((v36 + v35) ^ v36) & 0xF0F0F0F))) >> 24;
      if (v37 <= v13)
      {
        break;
      }

      v38 = *(a1 + 1060) + v37;
      if (v38 < v16)
      {
        v16 = v38;
      }

      --v15;
      v12 += 24;
      if (v15 <= 1)
      {
        return ((*(a1 + 1052) * v16 + *(a1 + 1192) / 2) >> *(a1 + 1196));
      }
    }

    v17 = *(v12 + 16);
    v18 = vrev64_s32(v17);
    v19 = vand_s8(veor_s8(vrev64_s32(veor_s8(v17, v10)), vabd_u32(v18, v14)), 0x1111111111111111);
    v20 = vsub_s32(v19, vshr_n_u32(v19, 4uLL));
    v21 = veor_s8(vaba_u32(v20, v18, v14), v20);
    v22 = vshr_n_u32(vmul_s32(vadd_s32(vand_s8(vshr_n_u32(v21, 4uLL), 0xF0F0F0F0F0F0F0FLL), vand_s8(v21, 0xF0F0F0F0F0F0F0FLL)), 0x101010101010101), 0x18uLL);
    v23 = v22.i32[0] + v37 + v22.i32[1];
    if (v23 < v16)
    {
      v16 = v23;
    }

    --v15;
    v12 += 24;
  }

  while (v15 > 1);
  return ((*(a1 + 1052) * v16 + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100016B44(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 1072);
  v7 = __OFSUB__(a2, v6);
  v8 = a2 - v6;
  if (v8 < 0 == v7)
  {
    v11 = *(a1 + 792) + 12 * v8;
    goto LABEL_9;
  }

  if (!*(a1 + 1176))
  {
    v9 = 3 * (*(*(a1 + 1144) + 2 * a2) + a3);
    if (*(a1 + 1080) > a2)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = *(a1 + 144);
    goto LABEL_8;
  }

  v9 = 3 * (*(*(a1 + 1160) + 4 * a2) + a3);
  if (*(a1 + 1080) <= a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = *(a1 + 136);
LABEL_8:
  v11 = v10 + 4 * v9;
LABEL_9:
  v12 = sub_100002168(a1, a2, a3);
  v13 = sub_1000021CC(a1, a2, a3);
  v14 = *(a1 + 1560);
  v15 = *v14 - *v11;
  if (*v11 >= *v14)
  {
    v15 = *v11 - *v14;
  }

  v16 = ((*v11 ^ *v14 ^ v15) & 0x11111111) - (((*v11 ^ *v14 ^ v15) & 0x11111111u) >> 4);
  v17 = ((((((v16 + v15) ^ v16) >> 4) & 0xF0F0F0F) * ((*v12 >> 4) & 0xF0F0F0F)) >> 24) + (((((v16 + v15) ^ v16) & 0xF0F0F0F) * (*v12 & 0xF0F0F0F)) >> 24);
  if (v17 <= *(a1 + 1056))
  {
    v19 = *(v12 + 4);
    v20 = *(v11 + 4);
    v21 = *(v14 + 4);
    v22 = vand_s8(veor_s8(veor_s8(v21, v20), vabd_u32(v20, v21)), 0x1111111111111111);
    v23 = vsub_s32(v22, vshr_n_u32(v22, 4uLL));
    v24 = veor_s8(vaba_u32(v23, v20, v21), v23);
    v25 = vshr_n_u32(vmul_s32(vand_s8(v24, 0xF0F0F0F0F0F0F0FLL), vand_s8(v19, 0xF0F0F0F0F0F0F0FLL)), 0x18uLL);
    v26 = vshr_n_u32(vmul_s32(vand_s8(vshr_n_u32(v24, 4uLL), 0xF0F0F0F0F0F0F0FLL), vand_s8(vshr_n_u32(v19, 4uLL), 0xF0F0F0F0F0F0F0FLL)), 0x18uLL);
    v18 = v25.i32[1] + v17 + v25.i32[0] + v26.i32[0] + v26.i32[1];
  }

  else
  {
    v18 = *(a1 + 1060) + v17;
  }

  return (((*v13 + v18) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100016D30(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 1296);
  v5 = *(a1 + 1072);
  v6 = __OFSUB__(a2, v5);
  v7 = a2 - v5;
  if (v7 < 0 == v6)
  {
    v44 = *(a1 + 792) + 12 * v7;
    v45 = 1;
    goto LABEL_47;
  }

  if (*(a1 + 1176))
  {
    v8 = (*(a1 + 1160) + 4 * a2);
    v9 = *v8;
    v45 = v8[1] - *v8;
    if ((v45 & 1) == 0)
    {
LABEL_5:
      v10 = 144;
      if (*(a1 + 1080) > a2)
      {
        v10 = 136;
      }

      v11 = *(a1 + v10);
      v12 = sub_100002168(a1, a2, 0);
      v13 = sub_1000021CC(a1, a2, 0);
      if (v45 >> 1 < 1)
      {
        goto LABEL_60;
      }

      v14 = *(a1 + 1560);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = (v11 + 12 * v9);
      v19 = (v45 >> 1) + 1;
      v20 = 0x40000000;
      v21 = v12;
      while (1)
      {
        if (v4 == 2)
        {
          v22 = v12;
        }

        else
        {
          v22 = v21;
        }

        v23 = v18[1];
        v24 = v18[2];
        v25 = v15 - *v18;
        if (*v18 >= v15)
        {
          v25 = *v18 - v15;
        }

        v26 = ((*v18 ^ v15 ^ v25) & 0x11111111) - (((*v18 ^ v15 ^ v25) & 0x11111111) >> 4);
        v71 = (((((v26 + v25) ^ v26) & 0xF0F0F0F) * (*v22 & 0xF0F0F0F)) >> 24) + ((((((v26 + v25) ^ v26) >> 4) & 0xF0F0F0F) * ((*v22 >> 4) & 0xF0F0F0F)) >> 24);
        v27 = *(a1 + 1056);
        if (v71 <= v27)
        {
          v29 = v16 - v23;
          if (v23 >= v16)
          {
            v29 = v23 - v16;
          }

          v30 = ((v23 ^ v16 ^ v29) & 0x11111111) - (((v23 ^ v16 ^ v29) & 0x11111111) >> 4);
          v74 = v71 + (((((v30 + v29) ^ v30) & 0xF0F0F0F) * (v22[1] & 0xF0F0F0F)) >> 24) + ((((((v30 + v29) ^ v30) >> 4) & 0xF0F0F0F) * ((v22[1] >> 4) & 0xF0F0F0F)) >> 24);
          v31 = v17 - v24;
          if (v24 >= v17)
          {
            v31 = v24 - v17;
          }

          v32 = ((v24 ^ v17 ^ v31) & 0x11111111) - (((v24 ^ v17 ^ v31) & 0x11111111) >> 4);
          v72 = v74 + (((((v32 + v31) ^ v32) & 0xF0F0F0F) * (v22[2] & 0xF0F0F0F)) >> 24) + ((((((v32 + v31) ^ v32) >> 4) & 0xF0F0F0F) * ((v22[2] >> 4) & 0xF0F0F0F)) >> 24);
          if (v4 == 2)
          {
LABEL_25:
            v73 = v72 + *v13;
            if (v73 >= v20)
            {
              goto LABEL_27;
            }

LABEL_26:
            v20 = v73;
            goto LABEL_27;
          }
        }

        else
        {
          v72 = v71 + *(a1 + 1060);
          if (v4 == 2)
          {
            goto LABEL_25;
          }
        }

        v28 = *v13++;
        v73 = v72 + v28;
        if (v73 < v20)
        {
          goto LABEL_26;
        }

LABEL_27:
        v33 = v22 + 3;
        if (v4 == 2)
        {
          v33 = v12;
        }

        v35 = v18[3];
        v34 = v18[4];
        v36 = v18[5];
        v37 = v15 - v35;
        if (v35 >= v15)
        {
          v37 = v35 - v15;
        }

        v38 = ((v35 ^ v15 ^ v37) & 0x11111111) - (((v35 ^ v15 ^ v37) & 0x11111111) >> 4);
        v75 = (((((v38 + v37) ^ v38) & 0xF0F0F0F) * (*v33 & 0xF0F0F0F)) >> 24) + ((((((v38 + v37) ^ v38) >> 4) & 0xF0F0F0F) * ((*v33 >> 4) & 0xF0F0F0F)) >> 24);
        if (v75 <= v27)
        {
          v40 = v16 - v34;
          if (v34 >= v16)
          {
            v40 = v34 - v16;
          }

          v41 = ((v34 ^ v16 ^ v40) & 0x11111111) - (((v34 ^ v16 ^ v40) & 0x11111111) >> 4);
          v78 = v75 + (((((v41 + v40) ^ v41) & 0xF0F0F0F) * (v33[1] & 0xF0F0F0F)) >> 24) + ((((((v41 + v40) ^ v41) >> 4) & 0xF0F0F0F) * ((v33[1] >> 4) & 0xF0F0F0F)) >> 24);
          v42 = v17 - v36;
          if (v36 >= v17)
          {
            v42 = v36 - v17;
          }

          v43 = ((v36 ^ v17 ^ v42) & 0x11111111) - (((v36 ^ v17 ^ v42) & 0x11111111) >> 4);
          v76 = v78 + (((((v43 + v42) ^ v43) & 0xF0F0F0F) * (v33[2] & 0xF0F0F0F)) >> 24) + ((((((v43 + v42) ^ v43) >> 4) & 0xF0F0F0F) * ((v33[2] >> 4) & 0xF0F0F0F)) >> 24);
          if (v4 != 2)
          {
LABEL_33:
            v39 = *v13++;
            v77 = v76 + v39;
            if (v77 >= v20)
            {
              goto LABEL_10;
            }

            goto LABEL_9;
          }
        }

        else
        {
          v76 = v75 + *(a1 + 1060);
          if (v4 != 2)
          {
            goto LABEL_33;
          }
        }

        v77 = v76 + *v13;
        if (v77 >= v20)
        {
          goto LABEL_10;
        }

LABEL_9:
        v20 = v77;
LABEL_10:
        v21 = v33 + 3;
        --v19;
        v18 += 6;
        if (v19 <= 1)
        {
          return ((*(a1 + 1052) * v20 + *(a1 + 1192) / 2) >> *(a1 + 1196));
        }
      }
    }
  }

  else
  {
    v46 = (*(a1 + 1144) + 2 * a2);
    v9 = *v46;
    v45 = v46[1] - v9;
    if ((v45 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (*(a1 + 1080) <= a2)
  {
    v47 = *(a1 + 144);
  }

  else
  {
    v47 = *(a1 + 136);
  }

  v44 = v47 + 12 * v9;
LABEL_47:
  v48 = sub_100002168(a1, a2, 0);
  v49 = sub_1000021CC(a1, a2, 0);
  if (v45 < 1)
  {
LABEL_60:
    v20 = 0x40000000;
    return ((*(a1 + 1052) * v20 + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  v50 = *(a1 + 1560);
  v51 = *v50;
  v52 = *(v50 + 1);
  v53 = v45 + 1;
  v54 = (v44 + 4);
  v20 = 0x40000000;
  v55 = v48;
  do
  {
    if (v4 == 2)
    {
      v59 = v48;
    }

    else
    {
      v59 = v55;
    }

    v60 = v54[-1].u32[1];
    v55 = v59 + 12;
    v61 = v51 - v60;
    if (v60 >= v51)
    {
      v61 = v60 - v51;
    }

    v62 = ((v60 ^ v51 ^ v61) & 0x11111111) - (((v60 ^ v51 ^ v61) & 0x11111111) >> 4);
    v63 = ((((((v62 + v61) ^ v62) >> 4) & 0xF0F0F0F) * ((*v59 >> 4) & 0xF0F0F0F)) >> 24) + (((((v62 + v61) ^ v62) & 0xF0F0F0F) * (*v59 & 0xF0F0F0F)) >> 24);
    if (v63 > *(a1 + 1056))
    {
      v56 = *(a1 + 1060) + v63;
    }

    else
    {
      v64 = *(v59 + 4);
      v65 = vand_s8(veor_s8(veor_s8(*v54, v52), vabd_u32(*v54, v52)), 0x1111111111111111);
      v66 = vsub_s32(v65, vshr_n_u32(v65, 4uLL));
      v67 = veor_s8(vaba_u32(v66, *v54, v52), v66);
      v68 = vshr_n_u32(vmul_s32(vand_s8(v67, 0xF0F0F0F0F0F0F0FLL), vand_s8(v64, 0xF0F0F0F0F0F0F0FLL)), 0x18uLL);
      v69 = vshr_n_u32(vmul_s32(vand_s8(vshr_n_u32(v67, 4uLL), 0xF0F0F0F0F0F0F0FLL), vand_s8(vshr_n_u32(v64, 4uLL), 0xF0F0F0F0F0F0F0FLL)), 0x18uLL);
      v56 = v68.i32[1] + v63 + v68.i32[0] + v69.i32[0] + v69.i32[1];
    }

    v57 = *v49;
    v49 += v4 != 2;
    v58 = v57 + v56;
    if (v58 < v20)
    {
      v20 = v58;
    }

    --v53;
    v54 = (v54 + 12);
  }

  while (v53 > 1);
  return ((*(a1 + 1052) * v20 + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100017328(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 1072);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (v4 < 0 == v3)
  {
    v27 = *(a1 + 792) + 12 * v4;
    v28 = (*(a1 + 816) + 2 * v4);
    v29 = 1;
LABEL_23:
    v33 = *(a1 + 1552);
    v34 = v33[1].u32[0];
    v35 = vand_s8(*v33, 0xF000F000F000FLL);
    v36 = vand_s8(vshr_n_u32(*v33, 4uLL), 0xF000F000F000FLL);
    v37 = vand_s8(vshr_n_u32(*v33, 8uLL), 0xF000F000F000FLL);
    v38 = vand_s8(vshr_n_u32(*v33, 0xCuLL), 0xF000F000F000FLL);
    v39 = v34 & 0xF000F;
    v40 = vdup_n_s32(v34);
    v41 = (v34 >> 4) & 0xF000F;
    v42 = vand_s8(vshl_u32(v40, 0xFFFFFFF4FFFFFFF8), 0xF000F000F000FLL);
    if (v29 >= 8)
    {
      v45 = v29;
      v46 = v29 & 0x7FFFFFF8;
      v29 -= v46;
      v43 = (v28 + 2 * v46);
      v44 = v27 + 12 * v46;
      v132 = vdupq_lane_s32(v36, 0);
      v134 = vdupq_lane_s32(v35, 0);
      v47 = vdupq_lane_s32(v37, 0);
      v48 = vdupq_lane_s32(v38, 0);
      v49 = vdupq_lane_s32(v35, 1);
      v50 = vdupq_lane_s32(v36, 1);
      v51 = vdupq_lane_s32(v37, 1);
      v52 = vdupq_lane_s32(v38, 1);
      v53.i64[0] = 0x4000000040000000;
      v53.i64[1] = 0x4000000040000000;
      v54 = vdupq_n_s32(v39);
      v55 = vdupq_n_s32(v41);
      v56.i64[0] = 0xF000F000F000FLL;
      v56.i64[1] = 0xF000F000F000FLL;
      v57 = v46;
      v58 = vdupq_lane_s32(v42, 0);
      v59.i64[0] = 0x4000000040000000;
      v59.i64[1] = 0x4000000040000000;
      v125 = v42;
      v60 = vdupq_lane_s32(v42, 1);
      do
      {
        v61 = *v28++;
        v62 = v27;
        v137 = vld3q_f32(v62);
        v62 += 12;
        v138 = vld3q_f32(v62);
        v53 = vminq_s32(vsubq_s32(vmovl_s16(*v61.i8), vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v137.val[0], v56), v134), vandq_s8(vshrq_n_u32(v137.val[0], 4uLL), v56), v132), vandq_s8(vshrq_n_u32(v137.val[0], 8uLL), v56), v47), vandq_s8(vshrq_n_u32(v137.val[0], 0xCuLL), v56), v48), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v137.val[1], v56), v49), vandq_s8(vshrq_n_u32(v137.val[1], 4uLL), v56), v50), vandq_s8(vshrq_n_u32(v137.val[1], 8uLL), v56), v51), vandq_s8(vshrq_n_u32(v137.val[1], 0xCuLL), v56), v52), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v137.val[2], v56), v54), vandq_s8(vshrq_n_u32(v137.val[2], 4uLL), v56), v55), vandq_s8(vshrq_n_u32(v137.val[2], 8uLL), v56), v58), vandq_s8(vshrq_n_u32(v137.val[2], 0xCuLL), v56), v60), 0xFuLL)), v53);
        v59 = vminq_s32(vsubq_s32(vmovl_high_s16(v61), vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v138.val[0], v56), v134), vandq_s8(vshrq_n_u32(v138.val[0], 4uLL), v56), v132), vandq_s8(vshrq_n_u32(v138.val[0], 8uLL), v56), v47), vandq_s8(vshrq_n_u32(v138.val[0], 0xCuLL), v56), v48), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v138.val[1], v56), v49), vandq_s8(vshrq_n_u32(v138.val[1], 4uLL), v56), v50), vandq_s8(vshrq_n_u32(v138.val[1], 8uLL), v56), v51), vandq_s8(vshrq_n_u32(v138.val[1], 0xCuLL), v56), v52), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v138.val[2], v56), v54), vandq_s8(vshrq_n_u32(v138.val[2], 4uLL), v56), v55), vandq_s8(vshrq_n_u32(v138.val[2], 8uLL), v56), v58), vandq_s8(vshrq_n_u32(v138.val[2], 0xCuLL), v56), v60), 0xFuLL)), v59);
        v27 += 96;
        v57 -= 8;
      }

      while (v57);
      v23 = vminvq_s32(vminq_s32(v53, v59));
      v42 = v125;
      if (v46 == v45)
      {
        return (((*(a1 + 1568) + v23) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
      }
    }

    else
    {
      v23 = 0x40000000;
      v43 = v28;
      v44 = v27;
    }

    v63 = v29 + 1;
    v64 = (v44 + 8);
    do
    {
      v65 = *(v64 - 2);
      v67 = *v64;
      v64 += 3;
      v66 = v67;
      v68 = v43->i16[0];
      v43 = (v43 + 2);
      v69 = vmla_s32(vmla_s32(vmla_s32(vmul_s32(vand_s8(v65, 0xF000F000F000FLL), v35), vand_s8(vshr_n_u32(v65, 4uLL), 0xF000F000F000FLL), v36), vand_s8(vshr_n_u32(v65, 8uLL), 0xF000F000F000FLL), v37), vand_s8(vshr_n_u32(v65, 0xCuLL), 0xF000F000F000FLL), v38);
      v70 = vmul_s32(vand_s8(vshl_u32(vdup_n_s32(v66), 0xFFFFFFF4FFFFFFF8), 0xF000F000F000FLL), v42);
      v71 = v68 - (vsra_n_u32(vdup_lane_s32(vshr_n_u32(v69, 0xFuLL), 1), v69, 0xFuLL).u32[0] + (((v66 & 0xF000F) * v39 + ((v66 >> 4) & 0xF000F) * v41 + v70.i32[0] + v70.i32[1]) >> 15));
      if (v71 < v23)
      {
        v23 = v71;
      }

      --v63;
    }

    while (v63 > 1);
    return (((*(a1 + 1568) + v23) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  if (*(a1 + 1176))
  {
    v5 = (*(a1 + 1160) + 4 * a2);
    v6 = *v5;
    v29 = v5[1] - *v5;
    if ((v29 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    if (*(a1 + 2012))
    {
      v6 = a2;
    }

    v31 = 144;
    if (*(a1 + 1080) > a2)
    {
      v31 = 136;
    }

    v32 = 112;
    if (*(a1 + 1080) > a2)
    {
      v32 = 64;
    }

    if (v29 >= 1)
    {
      v27 = *(a1 + v31) + 12 * v6;
      v28 = (*(a1 + v32) + 2 * v6);
      goto LABEL_23;
    }

LABEL_33:
    v23 = 0x40000000;
    return (((*(a1 + 1568) + v23) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  v30 = (*(a1 + 1144) + 2 * a2);
  v6 = *v30;
  v29 = v30[1] - v6;
  if (v29)
  {
    goto LABEL_15;
  }

LABEL_5:
  v7 = (v29 >> 1);
  if (v7 < 1)
  {
    goto LABEL_33;
  }

  if (*(a1 + 2012))
  {
    v6 = a2;
  }

  v8 = 112;
  if (*(a1 + 1080) > a2)
  {
    v8 = 64;
  }

  v9 = *(a1 + v8);
  v10 = 144;
  if (*(a1 + 1080) > a2)
  {
    v10 = 136;
  }

  v11 = (v9 + 2 * v6);
  v12 = *(a1 + v10) + 12 * v6;
  v13 = *(a1 + 1552);
  v14 = v13[1].u32[0];
  v15 = vand_s8(*v13, 0xF000F000F000FLL);
  v16 = vand_s8(vshr_n_u32(*v13, 4uLL), 0xF000F000F000FLL);
  v17 = vand_s8(vshr_n_u32(*v13, 8uLL), 0xF000F000F000FLL);
  v18 = vand_s8(vshr_n_u32(*v13, 0xCuLL), 0xF000F000F000FLL);
  v19 = v14 & 0xF000F;
  v20 = vdup_n_s32(v14);
  v21 = (v14 >> 4) & 0xF000F;
  v22 = vand_s8(vshl_u32(v20, 0xFFFFFFF4FFFFFFF8), 0xF000F000F000FLL);
  if (v7 >= 8)
  {
    v24 = v7 - (v7 & 0x7FFFFFF8);
    v25 = &v11[2 * (v7 & 0x7FFFFFF8)];
    v26 = v12 + 24 * (v7 & 0x7FFFFFF8);
    v129 = vdupq_lane_s32(v16, 0);
    v130 = vdupq_lane_s32(v15, 0);
    v127 = vdupq_lane_s32(v18, 0);
    v128 = vdupq_lane_s32(v17, 0);
    v116 = v16;
    v117 = v15;
    v124 = vdupq_lane_s32(v16, 1);
    v126 = vdupq_lane_s32(v15, 1);
    v114 = v18;
    v115 = v17;
    v122 = vdupq_lane_s32(v18, 1);
    v123 = vdupq_lane_s32(v17, 1);
    v72.i64[0] = 0x4000000040000000;
    v72.i64[1] = 0x4000000040000000;
    v120 = vdupq_n_s32(v21);
    v121 = vdupq_n_s32(v19);
    v73.i64[0] = 0xF000F000F000FLL;
    v73.i64[1] = 0xF000F000F000FLL;
    v74 = v7 & 0x7FFFFFF8;
    v75.i64[0] = 0x4000000040000000;
    v75.i64[1] = 0x4000000040000000;
    v113 = v22;
    v118 = vdupq_lane_s32(v22, 1);
    v119 = vdupq_lane_s32(v22, 0);
    do
    {
      v133 = v72;
      v135 = v75;
      v136 = vld2q_s16(v11);
      v11 += 16;
      v131 = v136.val[1];
      v77 = *(v12 + 32);
      v76 = *(v12 + 48);
      v79 = *(v12 + 128);
      v78 = *(v12 + 144);
      v80 = *(v12 + 16);
      v82 = *(v12 + 160);
      v81 = *(v12 + 176);
      v83 = vtrn1q_s32(vuzp1q_s32(v78, v78), v82);
      LODWORD(v84) = *(v12 + 152);
      HIDWORD(v84) = v81.i32[0];
      v85 = vextq_s8(v78, v81, 8uLL);
      v86.i64[0] = vzip2q_s32(*v12, vuzp1q_s32(*v12, v77)).u64[0];
      v87 = vtrn1q_s32(vuzp1q_s32(v82, v82), v81);
      v81.i32[2] = HIDWORD(*(v12 + 160));
      v136.val[1].i32[0] = *v12;
      v136.val[1].i32[1] = *(v12 + 24);
      v89 = *(v12 + 64);
      v88 = *(v12 + 80);
      LODWORD(v90) = *(v12 + 56);
      v82.i32[2] = HIDWORD(*(v12 + 144));
      HIDWORD(v90) = v88.i32[0];
      v91 = *(v12 + 96);
      v86.i64[1] = v90;
      v92.i64[0] = vzip2q_s32(v91, vuzp1q_s32(v91, v79)).u64[0];
      v93.i32[1] = HIDWORD(*(v12 + 128));
      v93.i32[0] = v91.i32[3];
      v92.i64[1] = v84;
      v93.i64[1] = vzip2q_s32(v78, v85).i64[1];
      v136.val[1].i64[1] = vtrn1q_s32(vuzp1q_s32(v76, v76), v89).i64[1];
      v94 = vextq_s8(v76, v88, 8uLL);
      v95.i32[1] = HIDWORD(*(v12 + 32));
      v95.i32[0] = HIDWORD(*v12);
      v96 = vtrn1q_s32(vuzp1q_s32(v89, v89), v88);
      v88.i32[2] = HIDWORD(*(v12 + 64));
      v89.i32[2] = HIDWORD(*(v12 + 48));
      v97.i64[0] = vextq_s8(vtrn2q_s32(v80, *v12), *v12, 4uLL).u64[0];
      v98 = *(v12 + 112);
      v95.i64[1] = vzip2q_s32(v76, v94).i64[1];
      v94.i64[0] = vextq_s8(vtrn2q_s32(v98, v91), v91, 4uLL).u64[0];
      v91.i32[1] = *(v12 + 120);
      v91.i64[1] = v83.i64[1];
      v99.i32[0] = v80.i32[0];
      v99.i32[1] = *(v12 + 40);
      v99.i64[1] = v96.i64[1];
      v83.i32[0] = v98.i32[0];
      v83.i32[1] = *(v12 + 136);
      v83.i64[1] = v87.i64[1];
      v94.i64[1] = v82.i64[1];
      v79.i64[0] = vextq_s8(vtrn2q_s32(v79, v98), v98, 4uLL).u64[0];
      v79.i64[1] = v81.i64[1];
      v97.i64[1] = v89.i64[1];
      v77.i64[0] = vextq_s8(vtrn2q_s32(v77, v80), v80, 4uLL).u64[0];
      v77.i64[1] = v88.i64[1];
      v75 = vminq_s32(vsubq_s32(vmovl_high_s16(v131), vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v93, v73), v130), vandq_s8(vshrq_n_u32(v93, 4uLL), v73), v129), vandq_s8(vshrq_n_u32(v93, 8uLL), v73), v128), vandq_s8(vshrq_n_u32(v93, 0xCuLL), v73), v127), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v83, v73), v126), vandq_s8(vshrq_n_u32(v83, 4uLL), v73), v124), vandq_s8(vshrq_n_u32(v83, 8uLL), v73), v123), vandq_s8(vshrq_n_u32(v83, 0xCuLL), v73), v122), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v79, v73), v121), vandq_s8(vshrq_n_u32(v79, 4uLL), v73), v120), vandq_s8(vshrq_n_u32(v79, 8uLL), v73), v119), vandq_s8(vshrq_n_u32(v79, 0xCuLL), v73), v118), 0xFuLL)), vminq_s32(vsubq_s32(vmovl_high_s16(v136.val[0]), vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v91, v73), v130), vandq_s8(vshrq_n_u32(v91, 4uLL), v73), v129), vandq_s8(vshrq_n_u32(v91, 8uLL), v73), v128), vandq_s8(vshrq_n_u32(v91, 0xCuLL), v73), v127), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v94, v73), v126), vandq_s8(vshrq_n_u32(v94, 4uLL), v73), v124), vandq_s8(vshrq_n_u32(v94, 8uLL), v73), v123), vandq_s8(vshrq_n_u32(v94, 0xCuLL), v73), v122), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v92, v73), v121), vandq_s8(vshrq_n_u32(v92, 4uLL), v73), v120), vandq_s8(vshrq_n_u32(v92, 8uLL), v73), v119), vandq_s8(vshrq_n_u32(v92, 0xCuLL), v73), v118), 0xFuLL)), v135));
      v12 += 192;
      v72 = vminq_s32(vsubq_s32(vmovl_s16(*v131.i8), vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v95, v73), v130), vandq_s8(vshrq_n_u32(v95, 4uLL), v73), v129), vandq_s8(vshrq_n_u32(v95, 8uLL), v73), v128), vandq_s8(vshrq_n_u32(v95, 0xCuLL), v73), v127), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v99, v73), v126), vandq_s8(vshrq_n_u32(v99, 4uLL), v73), v124), vandq_s8(vshrq_n_u32(v99, 8uLL), v73), v123), vandq_s8(vshrq_n_u32(v99, 0xCuLL), v73), v122), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v77, v73), v121), vandq_s8(vshrq_n_u32(v77, 4uLL), v73), v120), vandq_s8(vshrq_n_u32(v77, 8uLL), v73), v119), vandq_s8(vshrq_n_u32(v77, 0xCuLL), v73), v118), 0xFuLL)), vminq_s32(vsubq_s32(vmovl_s16(*v136.val[0].i8), vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v136.val[1], v73), v130), vandq_s8(vshrq_n_u32(v136.val[1], 4uLL), v73), v129), vandq_s8(vshrq_n_u32(v136.val[1], 8uLL), v73), v128), vandq_s8(vshrq_n_u32(v136.val[1], 0xCuLL), v73), v127), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v97, v73), v126), vandq_s8(vshrq_n_u32(v97, 4uLL), v73), v124), vandq_s8(vshrq_n_u32(v97, 8uLL), v73), v123), vandq_s8(vshrq_n_u32(v97, 0xCuLL), v73), v122), 0xFuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vandq_s8(v86, v73), v121), vandq_s8(vshrq_n_u32(v86, 4uLL), v73), v120), vandq_s8(vshrq_n_u32(v86, 8uLL), v73), v119), vandq_s8(vshrq_n_u32(v86, 0xCuLL), v73), v118), 0xFuLL)), v133));
      v74 -= 8;
    }

    while (v74);
    v23 = vminvq_s32(vminq_s32(v72, v75));
    v16 = v116;
    v15 = v117;
    v18 = v114;
    v17 = v115;
    v22 = v113;
    if ((v7 & 0x7FFFFFF8) == v7)
    {
      return (((*(a1 + 1568) + v23) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  else
  {
    v23 = 0x40000000;
    v24 = v7;
    v25 = v11;
    v26 = v12;
  }

  v100 = v24 + 1;
  v101 = (v26 + 12);
  do
  {
    v102 = v101[-1].u32[1];
    v103 = vmla_s32(vmla_s32(vmla_s32(vmul_s32(vand_s8(*(v101 - 12), 0xF000F000F000FLL), v15), vand_s8(vshr_n_u32(*(&v101[-2] + 4), 4uLL), 0xF000F000F000FLL), v16), vand_s8(vshr_n_u32(*(&v101[-2] + 4), 8uLL), 0xF000F000F000FLL), v17), vand_s8(vshr_n_u32(*(&v101[-2] + 4), 0xCuLL), 0xF000F000F000FLL), v18);
    v104 = vmul_s32(vand_s8(vshl_u32(vdup_n_s32(v102), 0xFFFFFFF4FFFFFFF8), 0xF000F000F000FLL), v22);
    v105 = v101[1].u32[0];
    v106 = (v102 & 0xF000F) * v19 + ((v102 >> 4) & 0xF000F) * v21 + v104.i32[0] + v104.i32[1];
    v104.i32[0] = vsra_n_u32(vdup_lane_s32(vshr_n_u32(v103, 0xFuLL), 1), v103, 0xFuLL).u32[0];
    v107 = vmul_s32(vand_s8(vshl_u32(vdup_n_s32(v105), 0xFFFFFFF4FFFFFFF8), 0xF000F000F000FLL), v22);
    v108 = *v101;
    v101 += 3;
    v109 = *v25 - (v104.i32[0] + (v106 >> 15));
    v110 = vmla_s32(vmla_s32(vmla_s32(vmul_s32(vand_s8(v108, 0xF000F000F000FLL), v15), vand_s8(vshr_n_u32(v108, 4uLL), 0xF000F000F000FLL), v16), vand_s8(vshr_n_u32(v108, 8uLL), 0xF000F000F000FLL), v17), vand_s8(vshr_n_u32(v108, 0xCuLL), 0xF000F000F000FLL), v18);
    v111 = v25[1] - (vsra_n_u32(vdup_lane_s32(vshr_n_u32(v110, 0xFuLL), 1), v110, 0xFuLL).u32[0] + (((v105 & 0xF000F) * v19 + ((v105 >> 4) & 0xF000F) * v21 + v107.i32[0] + v107.i32[1]) >> 15));
    if (v109 >= v23)
    {
      v109 = v23;
    }

    if (v111 >= v109)
    {
      v23 = v109;
    }

    else
    {
      v23 = v111;
    }

    --v100;
    v25 += 2;
  }

  while (v100 > 1);
  return (((*(a1 + 1568) + v23) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100017D58(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 1072);
  v3 = a2 - v2;
  if (a2 >= v2)
  {
    v7 = *(a1 + 792) + 12 * v3;
    v8 = 2 * v3;
    v9 = *(a1 + 816) + v8;
    v10 = *(a1 + 824) + v8;
    v11 = *(a1 + 1552);
    v12 = *(v11 + 4);
    v13 = 1;
  }

  else
  {
    if (*(a1 + 1176))
    {
      v4 = (*(a1 + 1160) + 4 * a2);
      v5 = *v4;
      v6 = v4[1];
    }

    else
    {
      v14 = (*(a1 + 1144) + 2 * a2);
      v5 = *v14;
      v6 = v14[1];
    }

    v13 = v6 - v5;
    if (*(a1 + 2012))
    {
      v15 = a2;
    }

    else
    {
      v15 = v5;
    }

    v16 = 144;
    if (*(a1 + 1080) > a2)
    {
      v16 = 136;
    }

    v17 = 112;
    if (*(a1 + 1080) > a2)
    {
      v17 = 64;
    }

    v18 = 80;
    if (*(a1 + 1080) <= a2)
    {
      v18 = 128;
    }

    v7 = *(a1 + v16) + 12 * v15;
    v19 = 2 * v15;
    v10 = *(a1 + v18) + v19;
    v11 = *(a1 + 1552);
    v12 = *(v11 + 4);
    if (v13 < 1)
    {
      v21 = 0;
      v33 = 0x40000000;
LABEL_28:
      v40 = *(v7 + 12 * v21 + 4);
      v41 = vmla_s32(vmla_s32(vmla_s32(vmul_s32(vand_s8(v40, 0xF000F000F000FLL), vand_s8(v12, 0xF000F000F000FLL)), vand_s8(vshr_n_u32(v40, 4uLL), 0xF000F000F000FLL), vand_s8(vshr_n_u32(v12, 4uLL), 0xF000F000F000FLL)), vand_s8(vshr_n_u32(v40, 8uLL), 0xF000F000F000FLL), vand_s8(vshr_n_u32(v12, 8uLL), 0xF000F000F000FLL)), vand_s8(vshr_n_u32(v40, 0xCuLL), 0xF000F000F000FLL), vand_s8(vshr_n_u32(v12, 0xCuLL), 0xF000F000F000FLL));
      v32 = v33 + *(v10 + 2 * v21) - vsra_n_u32(vdup_lane_s32(vshr_n_u32(v41, 0xFuLL), 1), v41, 0xFuLL).u32[0];
      return (((*(a1 + 1568) + v32) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }

    v9 = *(a1 + v17) + v19;
  }

  v20 = 0;
  v21 = 0;
  v22 = *v11;
  v23 = *v11 & 0xF000F;
  v24 = (v22 >> 4) & 0xF000F;
  v25 = vand_s8(vshl_u32(vdup_n_s32(v22), 0xFFFFFFF4FFFFFFF8), 0xF000F000F000FLL);
  v26 = vand_s8(v12, 0xF000F000F000FLL);
  v27 = vand_s8(vshr_n_u32(v12, 4uLL), 0xF000F000F000FLL);
  v28 = vand_s8(vshr_n_u32(v12, 8uLL), 0xF000F000F000FLL);
  v29 = vand_s8(vshr_n_u32(v12, 0xCuLL), 0xF000F000F000FLL);
  v30 = v13;
  v31 = (v7 + 4);
  v32 = 0x40000000;
  v33 = 0x40000000;
  do
  {
    while (1)
    {
      v37 = *(v31 - 1);
      v38 = vmul_s32(vand_s8(vshl_u32(vdup_n_s32(v37), 0xFFFFFFF4FFFFFFF8), 0xF000F000F000FLL), v25);
      v39 = *(v9 + 2 * v20) - (((v37 & 0xF000F) * v23 + ((v37 >> 4) & 0xF000F) * v24 + v38.i32[0] + v38.i32[1]) >> 15);
      if (v39 <= *(a1 + 1064))
      {
        break;
      }

      if (v39 < v33)
      {
        v33 = v39;
        v21 = v20;
      }

      ++v20;
      v31 = (v31 + 12);
      if (v30 == v20)
      {
        goto LABEL_25;
      }
    }

    v34 = *v31;
    v31 = (v31 + 12);
    v35 = vmla_s32(vmla_s32(vmla_s32(vmul_s32(vand_s8(v34, 0xF000F000F000FLL), v26), vand_s8(vshr_n_u32(v34, 4uLL), 0xF000F000F000FLL), v27), vand_s8(vshr_n_u32(v34, 8uLL), 0xF000F000F000FLL), v28), vand_s8(vshr_n_u32(v34, 0xCuLL), 0xF000F000F000FLL), v29);
    v36 = v39 + *(v10 + 2 * v20) - vsra_n_u32(vdup_lane_s32(vshr_n_u32(v35, 0xFuLL), 1), v35, 0xFuLL).u32[0];
    if (v36 < v32)
    {
      v32 = v36;
    }

    ++v20;
  }

  while (v30 != v20);
LABEL_25:
  if (v32 == 0x40000000)
  {
    goto LABEL_28;
  }

  return (((*(a1 + 1568) + v32) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_10001800C(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 1072);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (v4 < 0 == v3)
  {
    v40 = *(a1 + 792) + 12 * v4;
    v41 = 2 * v4;
    v42 = (*(a1 + 816) + v41);
    v43 = (*(a1 + 824) + v41);
    v44 = 1;
    goto LABEL_39;
  }

  if (*(a1 + 1176))
  {
    v5 = (*(a1 + 1160) + 4 * a2);
    v6 = *v5;
    v44 = v5[1] - *v5;
    if ((v44 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_28:
    if (*(a1 + 2012))
    {
      v46 = a2;
    }

    else
    {
      v46 = v6;
    }

    v47 = 144;
    if (*(a1 + 1080) > a2)
    {
      v47 = 136;
    }

    v48 = 64;
    if (*(a1 + 1080) <= a2)
    {
      v48 = 112;
    }

    v49 = 128;
    if (*(a1 + 1080) > a2)
    {
      v49 = 80;
    }

    if (v44 >= 1)
    {
      v40 = *(a1 + v47) + 12 * v46;
      v50 = 2 * v46;
      v42 = (*(a1 + v48) + v50);
      v43 = (*(a1 + v49) + v50);
LABEL_39:
      v51 = *(a1 + 1552);
      v52 = *v51 & 0xF000F;
      v53 = (*v51 >> 4) & 0xF000F;
      v54 = vand_s8(vshl_u32(vdup_n_s32(*v51), 0xFFFFFFF4FFFFFFF8), 0xF000F000F000FLL);
      v55 = *(v51 + 4);
      v56 = vshr_n_u32(v55, 4uLL);
      v57 = vshr_n_u32(v55, 8uLL);
      v58 = vshr_n_u32(v55, 0xCuLL);
      v59 = vand_s8(v55, 0xF000F000F000FLL);
      v60 = vand_s8(v56, 0xF000F000F000FLL);
      v61 = vand_s8(v57, 0xF000F000F000FLL);
      v62 = vand_s8(v58, 0xF000F000F000FLL);
      v63 = v44 + 1;
      v64 = (v40 + 4);
      v33 = 0x40000000;
      do
      {
        v67 = v64[-1].u32[1];
        v68 = *v42++;
        v69 = vmul_s32(vand_s8(vshl_u32(vdup_n_s32(v67), 0xFFFFFFF4FFFFFFF8), 0xF000F000F000FLL), v54);
        v70 = v68 - (((v67 & 0xF000F) * v52 + ((v67 >> 4) & 0xF000F) * v53 + v69.i32[0] + v69.i32[1]) >> 15);
        if (v70 <= *(a1 + 1064))
        {
          v65 = vmla_s32(vmla_s32(vmla_s32(vmul_s32(vand_s8(*v64, 0xF000F000F000FLL), v59), vand_s8(vshr_n_u32(*v64, 4uLL), 0xF000F000F000FLL), v60), vand_s8(vshr_n_u32(*v64, 8uLL), 0xF000F000F000FLL), v61), vand_s8(vshr_n_u32(*v64, 0xCuLL), 0xF000F000F000FLL), v62);
          v66 = v70 + *v43 - vsra_n_u32(vdup_lane_s32(vshr_n_u32(v65, 0xFuLL), 1), v65, 0xFuLL).u32[0];
        }

        else
        {
          v66 = v70 + *(a1 + 1068);
        }

        ++v43;
        if (v66 < v33)
        {
          v33 = v66;
        }

        --v63;
        v64 = (v64 + 12);
      }

      while (v63 > 1);
      return (((*(a1 + 1568) + v33) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }

LABEL_46:
    v33 = 0x40000000;
    return (((*(a1 + 1568) + v33) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  v45 = (*(a1 + 1144) + 2 * a2);
  v6 = *v45;
  v44 = v45[1] - v6;
  if (v44)
  {
    goto LABEL_28;
  }

LABEL_5:
  v7 = v44 >> 1;
  if (v7 < 1)
  {
    goto LABEL_46;
  }

  v8 = *(a1 + 1064);
  v9 = *(a1 + 1068);
  if (*(a1 + 2012))
  {
    v10 = a2;
  }

  else
  {
    v10 = v6;
  }

  v11 = 128;
  if (*(a1 + 1080) > a2)
  {
    v11 = 80;
  }

  v12 = *(a1 + v11);
  v13 = 112;
  if (*(a1 + 1080) > a2)
  {
    v13 = 64;
  }

  v14 = 2 * v10;
  v15 = (*(a1 + v13) + v14);
  v16 = 144;
  if (*(a1 + 1080) > a2)
  {
    v16 = 136;
  }

  v17 = *(a1 + v16) + 12 * v10;
  v18 = *(a1 + 1552);
  v19 = *v18 & 0xF000F;
  v20 = (*v18 >> 4) & 0xF000F;
  v21 = (*v18 >> 8) & 0xF000F;
  v22 = (*v18 >> 12) & 0xF000F;
  v23 = *(v18 + 4);
  v24 = vshr_n_u32(v23, 4uLL);
  v25 = vshr_n_u32(v23, 8uLL);
  v26 = vshr_n_u32(v23, 0xCuLL);
  v27 = vand_s8(v23, 0xF000F000F000FLL);
  v28 = vand_s8(v24, 0xF000F000F000FLL);
  v29 = vand_s8(v25, 0xF000F000F000FLL);
  v30 = vand_s8(v26, 0xF000F000F000FLL);
  v31 = v7 + 1;
  v32 = (v14 + v12 + 2);
  v33 = 0x40000000;
  do
  {
    v36 = *v15 - (((*v17 & 0xF000F) * v19 + ((*v17 >> 4) & 0xF000F) * v20 + ((*v17 >> 8) & 0xF000F) * v21 + ((*v17 >> 12) & 0xF000Fu) * v22) >> 15);
    if (v36 <= v8)
    {
      v38 = vmla_s32(vmla_s32(vmla_s32(vmul_s32(vand_s8(*(v17 + 4), 0xF000F000F000FLL), v27), vand_s8(vshr_n_u32(*(v17 + 4), 4uLL), 0xF000F000F000FLL), v28), vand_s8(vshr_n_u32(*(v17 + 4), 8uLL), 0xF000F000F000FLL), v29), vand_s8(vshr_n_u32(*(v17 + 4), 0xCuLL), 0xF000F000F000FLL), v30);
      v37 = v36 + *(v32 - 1) - vsra_n_u32(vdup_lane_s32(vshr_n_u32(v38, 0xFuLL), 1), v38, 0xFuLL).u32[0];
    }

    else
    {
      v37 = v36 + v9;
    }

    if (v37 < v33)
    {
      v33 = v37;
    }

    v39 = v15[1] - (((*(v17 + 12) & 0xF000F) * v19 + ((*(v17 + 12) >> 4) & 0xF000F) * v20 + ((*(v17 + 12) >> 8) & 0xF000F) * v21 + ((*(v17 + 12) >> 12) & 0xF000Fu) * v22) >> 15);
    if (v39 <= v8)
    {
      v34 = vmla_s32(vmla_s32(vmla_s32(vmul_s32(vand_s8(*(v17 + 16), 0xF000F000F000FLL), v27), vand_s8(vshr_n_u32(*(v17 + 16), 4uLL), 0xF000F000F000FLL), v28), vand_s8(vshr_n_u32(*(v17 + 16), 8uLL), 0xF000F000F000FLL), v29), vand_s8(vshr_n_u32(*(v17 + 16), 0xCuLL), 0xF000F000F000FLL), v30);
      v35 = v39 + *v32 - vsra_n_u32(vdup_lane_s32(vshr_n_u32(v34, 0xFuLL), 1), v34, 0xFuLL).u32[0];
    }

    else
    {
      v35 = v39 + v9;
    }

    if (v35 < v33)
    {
      v33 = v35;
    }

    --v31;
    v32 += 2;
    v17 += 24;
    v15 += 2;
  }

  while (v31 > 1);
  return (((*(a1 + 1568) + v33) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100018424(uint64_t result, uint8x8_t a2)
{
  v2 = *(result + 632);
  v3 = *(result + 536);
  v4 = *(result + 552);
  v5 = *(result + 1544);
  a2.i32[0] = *v5;
  v6 = vmull_u8(a2, a2).u64[0];
  **(result + 568) = vaddv_s16(v6);
  v6.i32[0] = v5[1];
  v7 = vmull_u8(v6, v6).u64[0];
  *(*(result + 568) + 2) = vaddv_s16(v7);
  v7.i32[0] = v5[2];
  v8 = vmull_u8(v7, v7).u64[0];
  *(*(result + 568) + 4) = vaddv_s16(v8);
  v8.i32[0] = v5[3];
  v9 = vmull_u8(v8, v8).u64[0];
  *(*(result + 568) + 6) = vaddv_s16(v9);
  v9.i32[0] = v5[4];
  v10 = vmull_u8(v9, v9).u64[0];
  *(*(result + 568) + 8) = vaddv_s16(v10);
  v10.i32[0] = v5[5];
  *(*(result + 568) + 10) = vaddv_s16(*&vmull_u8(v10, v10));
  v11 = *(result + 1552);
  v12 = **(result + 568);
  v13 = *v11 & 0xFF00FF;
  v14 = (*v11 >> 8) & 0xFF00FF;
  v15 = v2 + 32;
  v16 = &v3[64];
  v18 = v2 < &v4[32] && v4 < v15;
  v19 = v3 >= v15 || v2 >= v16;
  if (!v19 || v18)
  {
    v26 = 256;
    do
    {
      v28 = v3->i32[0];
      v3 = (v3 + 4);
      v27 = v28;
      LOWORD(v28) = v4->i16[0];
      v4 = (v4 + 2);
      v2->i16[0] = v28 + v12 - (((v27 & 0xFF00FF) * v13 + ((v27 >> 8) & 0xFF00FF) * v14) >> 15);
      v2 = (v2 + 2);
      --v26;
    }

    while (v26);
  }

  else
  {
    v20 = 0;
    v21 = vdupq_n_s32(v12);
    v22 = vdupq_n_s32(v13);
    v23 = vdupq_n_s32(v14);
    do
    {
      v24 = *v3;
      v25 = v3[1];
      v3 += 2;
      v2[v20] = vuzp1q_s16(vsubq_s32(vaddw_u16(v21, *v4[v20].i8), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v24 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v22), (*&vshrq_n_u32(v24, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v23), 0xFuLL)), vsubq_s32(vaddw_high_u16(v21, v4[v20]), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v25 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v22), (*&vshrq_n_u32(v25, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v23), 0xFuLL)));
      ++v20;
    }

    while (v20 != 32);
    v4 += 32;
    v2 += 32;
    v3 = v16;
  }

  v29 = v11[1];
  v30 = *(*(result + 568) + 2);
  v31 = v29 & 0xFF00FF;
  v32 = (v29 >> 8) & 0xFF00FF;
  v33 = v2 + 32;
  v34 = &v3[64];
  v36 = v2 < &v4[32] && v4 < v33;
  v37 = v3 >= v33 || v2 >= v34;
  if (!v37 || v36)
  {
    v44 = 256;
    do
    {
      v46 = v3->i32[0];
      v3 = (v3 + 4);
      v45 = v46;
      LOWORD(v46) = v4->i16[0];
      v4 = (v4 + 2);
      v2->i16[0] = v46 + v30 - (((v45 & 0xFF00FF) * v31 + ((v45 >> 8) & 0xFF00FF) * v32) >> 15);
      v2 = (v2 + 2);
      --v44;
    }

    while (v44);
  }

  else
  {
    v38 = 0;
    v39 = vdupq_n_s32(v30);
    v40 = vdupq_n_s32(v31);
    v41 = vdupq_n_s32(v32);
    do
    {
      v42 = *v3;
      v43 = v3[1];
      v3 += 2;
      v2[v38] = vuzp1q_s16(vsubq_s32(vaddw_u16(v39, *v4[v38].i8), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v42 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v40), (*&vshrq_n_u32(v42, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v41), 0xFuLL)), vsubq_s32(vaddw_high_u16(v39, v4[v38]), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v43 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v40), (*&vshrq_n_u32(v43, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v41), 0xFuLL)));
      ++v38;
    }

    while (v38 != 32);
    v4 += 32;
    v2 += 32;
    v3 = v34;
  }

  v47 = v11[2];
  v48 = *(*(result + 568) + 4);
  v49 = v47 & 0xFF00FF;
  v50 = (v47 >> 8) & 0xFF00FF;
  v51 = v2 + 32;
  v52 = &v3[64];
  v54 = v2 < &v4[32] && v4 < v51;
  v55 = v3 >= v51 || v2 >= v52;
  if (!v55 || v54)
  {
    v62 = 256;
    do
    {
      v64 = v3->i32[0];
      v3 = (v3 + 4);
      v63 = v64;
      LOWORD(v64) = v4->i16[0];
      v4 = (v4 + 2);
      v2->i16[0] = v64 + v48 - (((v63 & 0xFF00FF) * v49 + ((v63 >> 8) & 0xFF00FF) * v50) >> 15);
      v2 = (v2 + 2);
      --v62;
    }

    while (v62);
  }

  else
  {
    v56 = 0;
    v57 = vdupq_n_s32(v48);
    v58 = vdupq_n_s32(v49);
    v59 = vdupq_n_s32(v50);
    do
    {
      v60 = *v3;
      v61 = v3[1];
      v3 += 2;
      v2[v56] = vuzp1q_s16(vsubq_s32(vaddw_u16(v57, *v4[v56].i8), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v60 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v58), (*&vshrq_n_u32(v60, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v59), 0xFuLL)), vsubq_s32(vaddw_high_u16(v57, v4[v56]), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v61 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v58), (*&vshrq_n_u32(v61, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v59), 0xFuLL)));
      ++v56;
    }

    while (v56 != 32);
    v4 += 32;
    v2 += 32;
    v3 = v52;
  }

  v65 = v11[3];
  v66 = *(*(result + 568) + 6);
  v67 = v65 & 0xFF00FF;
  v68 = (v65 >> 8) & 0xFF00FF;
  v69 = v2 + 32;
  v70 = &v3[64];
  v72 = v2 < &v4[32] && v4 < v69;
  v73 = v3 >= v69 || v2 >= v70;
  if (!v73 || v72)
  {
    v80 = 256;
    do
    {
      v82 = v3->i32[0];
      v3 = (v3 + 4);
      v81 = v82;
      LOWORD(v82) = v4->i16[0];
      v4 = (v4 + 2);
      v2->i16[0] = v82 + v66 - (((v81 & 0xFF00FF) * v67 + ((v81 >> 8) & 0xFF00FF) * v68) >> 15);
      v2 = (v2 + 2);
      --v80;
    }

    while (v80);
  }

  else
  {
    v74 = 0;
    v75 = vdupq_n_s32(v66);
    v76 = vdupq_n_s32(v67);
    v77 = vdupq_n_s32(v68);
    do
    {
      v78 = *v3;
      v79 = v3[1];
      v3 += 2;
      v2[v74] = vuzp1q_s16(vsubq_s32(vaddw_u16(v75, *v4[v74].i8), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v78 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v76), (*&vshrq_n_u32(v78, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v77), 0xFuLL)), vsubq_s32(vaddw_high_u16(v75, v4[v74]), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v79 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v76), (*&vshrq_n_u32(v79, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v77), 0xFuLL)));
      ++v74;
    }

    while (v74 != 32);
    v4 += 32;
    v2 += 32;
    v3 = v70;
  }

  v83 = v11[4];
  v84 = *(*(result + 568) + 8);
  v85 = v83 & 0xFF00FF;
  v86 = (v83 >> 8) & 0xFF00FF;
  v87 = v2 + 32;
  v88 = &v3[64];
  v90 = v2 < &v4[32] && v4 < v87;
  v91 = v3 >= v87 || v2 >= v88;
  if (!v91 || v90)
  {
    v98 = 256;
    do
    {
      v100 = v3->i32[0];
      v3 = (v3 + 4);
      v99 = v100;
      LOWORD(v100) = v4->i16[0];
      v4 = (v4 + 2);
      v2->i16[0] = v100 + v84 - (((v99 & 0xFF00FF) * v85 + ((v99 >> 8) & 0xFF00FF) * v86) >> 15);
      v2 = (v2 + 2);
      --v98;
    }

    while (v98);
  }

  else
  {
    v92 = 0;
    v93 = vdupq_n_s32(v84);
    v94 = vdupq_n_s32(v85);
    v95 = vdupq_n_s32(v86);
    do
    {
      v96 = *v3;
      v97 = v3[1];
      v3 += 2;
      v2[v92] = vuzp1q_s16(vsubq_s32(vaddw_u16(v93, *v4[v92].i8), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v96 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v94), (*&vshrq_n_u32(v96, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v95), 0xFuLL)), vsubq_s32(vaddw_high_u16(v93, v4[v92]), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v97 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v94), (*&vshrq_n_u32(v97, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v95), 0xFuLL)));
      ++v92;
    }

    while (v92 != 32);
    v4 += 32;
    v2 += 32;
    v3 = v88;
  }

  v101 = v11[5];
  v102 = *(*(result + 568) + 10);
  v103 = v101 & 0xFF00FF;
  v104 = (v101 >> 8) & 0xFF00FF;
  v105 = v2 + 32;
  v107 = v2 < &v4[32] && v4 < v105;
  v108 = v3 >= v105 || v2 >= &v3[64];
  if (!v108 || v107)
  {
    v115 = 0;
    do
    {
      v116 = v3->u32[v115];
      result = (v116 & 0xFF00FF) * v103;
      v2->i16[v115] = v4->i16[v115] + v102 - ((result + ((v116 >> 8) & 0xFF00FF) * v104) >> 15);
      ++v115;
    }

    while (v115 != 256);
  }

  else
  {
    v109 = 0;
    v110 = vdupq_n_s32(v102);
    v111 = vdupq_n_s32(v103);
    v112 = vdupq_n_s32(v104);
    do
    {
      v113 = *v3;
      v114 = v3[1];
      v3 += 2;
      v2[v109] = vuzp1q_s16(vsubq_s32(vaddw_u16(v110, *v4[v109].i8), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v113 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v111), (*&vshrq_n_u32(v113, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v112), 0xFuLL)), vsubq_s32(vaddw_high_u16(v110, v4[v109]), vshrq_n_u32(vmlaq_s32(vmulq_s32((*&v114 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v111), (*&vshrq_n_u32(v114, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v112), 0xFuLL)));
      ++v109;
    }

    while (v109 != 32);
  }

  return result;
}

uint64_t sub_100018A24(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 616);
  v3 = *(a1 + 576);
  v4 = *(a1 + 632);
  v5 = *(a1 + 736);
  v6 = (*(a1 + 1144) + 2 * a2);
  v7 = *v6;
  v8 = *(a1 + 640);
  if (*(a1 + 1072) > a2)
  {
    if (*(a1 + 1176))
    {
      v9 = (*(a1 + 1160) + 4 * a2);
      v10 = v9[1] - *v9;
      if (v10 >= 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = v6[1] - v7;
      if (v10 >= 1)
      {
LABEL_4:
        v11 = v10 - 1;
        if (v3 > 0)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    v15 = 0x40000000;
    goto LABEL_32;
  }

  v10 = 1;
  v11 = 0;
  if (v3 > 0)
  {
LABEL_5:
    v12 = v3 * v7;
    v13 = (v8 + v12);
    if (v3 == 1)
    {
      v14 = *v2;
      v15 = 0x40000000;
      do
      {
        if (v5 + *(v4 + 2 * (v14 + *v13)) < v15)
        {
          v15 = v5 + *(v4 + 2 * (v14 + *v13));
        }

        v13 += v3;
        v16 = __OFSUB__(v10--, 1);
      }

      while (!((v10 < 0) ^ v16 | (v10 == 0)));
    }

    else
    {
      v17 = v12 + v3 + v8 - 1;
      v15 = 0x40000000;
      do
      {
        v19 = 0;
        v20 = &v2[v3 - 1];
        v21 = v17;
        v22 = v3 & 0x7FFFFFFE;
        v23 = *(a1 + 736);
        do
        {
          v23 += *(v4 + 2 * (*v20 + *v21));
          v19 += *(v4 + 2 * (*(v20 - 1) + *(v21 - 1)));
          v21 -= 2;
          v20 -= 2;
          v22 -= 2;
        }

        while (v22);
        v24 = v19 + v23;
        if ((v3 & 0x7FFFFFFE) != v3)
        {
          v24 += *(v4 + 2 * (v2[(v3 & 1) - 1] + v13[(v3 & 1) - 1]));
        }

        if (v24 < v15)
        {
          v15 = v24;
        }

        v13 += v3;
        v17 += v3;
      }

      while (v11-- > 0);
    }

    goto LABEL_32;
  }

LABEL_13:
  if (v10 > 7)
  {
    v11 -= v10 & 0x7FFFFFF8;
    v25 = vdupq_n_s32(v5);
    v26.i64[0] = 0x4000000040000000;
    v26.i64[1] = 0x4000000040000000;
    v27 = v10 & 0x7FFFFFF8;
    v28.i64[0] = 0x4000000040000000;
    v28.i64[1] = 0x4000000040000000;
    do
    {
      v26 = vminq_s32(v25, v26);
      v28 = vminq_s32(v25, v28);
      v27 -= 8;
    }

    while (v27);
    v15 = vminvq_s32(vminq_s32(v26, v28));
    if (v10 == (v10 & 0x7FFFFFF8))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v15 = 0x40000000;
  }

  v29 = v11 + 1;
  do
  {
    if (v5 < v15)
    {
      v15 = *(a1 + 736);
    }

    --v29;
  }

  while (v29);
LABEL_32:
  if (*(a1 + 1296) == 5)
  {
    v30 = (*(a1 + 732) + *(a1 + 1052) * v15) >> *(a1 + 728);
  }

  else
  {
    LODWORD(v30) = (v15 * *(a1 + 512) + 0.5);
  }

  v31 = *(a1 + 1136);
  if (v31 >= v30)
  {
    return v30;
  }

  else
  {
    return v31;
  }
}

uint64_t sub_100018C5C(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 1144) + 2 * a2);
  v4 = *v3;
  if (*(a1 + 1072) <= a2)
  {
    v6 = 1;
  }

  else if (*(a1 + 1176))
  {
    v5 = (*(a1 + 1160) + 4 * a2);
    v6 = v5[1] - *v5;
    if (v6 < 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = v3[1] - v4;
    if (v6 < 1)
    {
LABEL_14:
      v9 = 0x40000000;
      goto LABEL_10;
    }
  }

  v7 = (*(a1 + 640) + 6 * v4);
  v8 = v6 + 1;
  v9 = 0x40000000;
  do
  {
    v2 = *(a1 + 632);
    if (*(v2 + 512 + 2 * v7[1]) + *(v2 + 2 * *v7) + *(v2 + 1024 + 2 * v7[2]) + *(v2 + 1536 + 2 * v7[3]) + *(v2 + 2048 + 2 * v7[4]) + *(v2 + 2560 + 2 * v7[5]) < v9)
    {
      v9 = *(v2 + 512 + 2 * v7[1]) + *(v2 + 2 * *v7) + *(v2 + 1024 + 2 * v7[2]) + *(v2 + 1536 + 2 * v7[3]) + *(v2 + 2048 + 2 * v7[4]) + *(v2 + 2560 + 2 * v7[5]);
    }

    --v8;
    v7 += 6;
  }

  while (v8 > 1);
LABEL_10:
  v10 = ((*(a1 + 732) + (*(a1 + 736) + v9) * *(a1 + 1052)) >> *(a1 + 728));
  v11 = *(a1 + 1136);
  if (v11 >= v10)
  {
    return v10;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_100018D70(uint64_t a1, uint64_t a2, char *a3, int a4, int a5)
{
  v7 = "bamp2";
  if (!a5)
  {
    v7 = "bamp0";
  }

  if (a4)
  {
    v8 = "bamp1";
  }

  else
  {
    v8 = v7;
  }

  result = sub_1000BCAA0(a2, v8, a3);
  if (result)
  {
    v10 = *(a1 + 984);
    if (v10 && *(v10 + 168))
    {
      return 0;
    }

    if (*(a1 + 2008) || *(a1 + 1004) && *(a1 + 528))
    {
      return 0;
    }

    v11 = result;
    if (!sub_1000BCBAC(result, *(a1 + 2000)))
    {
      goto LABEL_101;
    }

    if (*(a1 + 2000))
    {
      v12 = *(a1 + 1120) * *(a1 + 1184);
      v13 = *(a1 + 1032);
      if (*(a1 + 996))
      {
        if (v13)
        {
          if (*(a1 + 1760))
          {
            v14 = 0;
          }

          else
          {
            v14 = *(a1 + 1184);
          }

          goto LABEL_24;
        }
      }

      else if (v13)
      {
        v14 = 0;
LABEL_24:
        v15 = v12 / 4;
        sub_1000C0160(*(a1 + 152));
        v16 = *(a1 + 152);
        if (v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0;
        }

        if (!sub_1000BCC04(v11, v16, v17, 4))
        {
          goto LABEL_101;
        }

        sub_1000C0160(*(a1 + 72));
        v18 = *(a1 + 72);
        v19 = v18 ? v14 : 0;
        if (!sub_1000BCC04(v11, v18, v19, 2))
        {
          goto LABEL_101;
        }

        sub_1000C0160(*(a1 + 88));
        v20 = *(a1 + 88);
        v21 = v20 ? v14 : 0;
        if (!sub_1000BCC04(v11, v20, v21, 2))
        {
          goto LABEL_101;
        }

        sub_1000C0160(*(a1 + 40));
        v22 = *(a1 + 40);
        v23 = v22 ? v14 : 0;
        if (!sub_1000BCC04(v11, v22, v23, 4))
        {
          goto LABEL_101;
        }

        sub_1000C0160(*(a1 + 56));
        v24 = *(a1 + 56);
        v25 = v24 ? v14 : 0;
        if (!sub_1000BCC04(v11, v24, v25, 4))
        {
          goto LABEL_101;
        }

        goto LABEL_59;
      }

      if (*(a1 + 1036))
      {
        v26 = *(a1 + 1180);
        v27 = *(a1 + 1132);
        sub_1000C0160(*(a1 + 168));
        v28 = *(a1 + 168);
        if (v28)
        {
          v29 = *(a1 + 1180);
        }

        else
        {
          v29 = 0;
        }

        if (!sub_1000BCC04(v11, v28, v29, 4))
        {
          goto LABEL_101;
        }

        v32 = v27 * v26;
        sub_1000C0160(*(a1 + 200));
        v33 = *(a1 + 200);
        v34 = v33 ? v32 : 0;
        if (!sub_1000BCC04(v11, v33, v34, 4))
        {
          goto LABEL_101;
        }
      }

      else
      {
        sub_1000C0160(*(a1 + 24));
        v30 = *(a1 + 24);
        if (v30)
        {
          v31 = v12;
        }

        else
        {
          v31 = 0;
        }

        if (!sub_1000BCC04(v11, v30, v31, 1))
        {
          goto LABEL_101;
        }
      }
    }

LABEL_59:
    if (!*(a1 + 1024) || ((v35 = *(a1 + 776), v36 = *(a1 + 1120), v37 = *(a1 + 1128) * v35, v35 >= -7) ? (v38 = v35 + 7) : (v38 = v35 + 14), (v39 = *(a1 + 752), v41 = v39 + 8, v40 = v39 < -8, v42 = v39 + 15, !v40) ? (v43 = v41) : (v43 = v42), (sub_1000C0160(*(a1 + 792)), (v44 = *(a1 + 792)) != 0) ? (v45 = v37) : (v45 = 0), sub_1000BCC04(v11, v44, v45, 4) && ((v46 = v36 * v35, sub_1000C0160(*(a1 + 784)), (v47 = *(a1 + 784)) != 0) ? (v48 = v46) : (v48 = 0), sub_1000BCC04(v11, v47, v48, 1) && ((sub_1000C0160(*(a1 + 800)), (v49 = *(a1 + 800)) == 0) ? (v50 = 0) : (v50 = *(a1 + 776)), sub_1000BCC04(v11, v49, v50, 4) && ((sub_1000C0160(*(a1 + 808)), (v51 = *(a1 + 808)) == 0) ? (v52 = 0) : (v52 = *(a1 + 776)), sub_1000BCC04(v11, v51, v52, 4) && ((sub_1000C0160(*(a1 + 816)), (v53 = *(a1 + 816)) == 0) ? (v54 = 0) : (v54 = *(a1 + 776)), sub_1000BCC04(v11, v53, v54, 2) && ((sub_1000C0160(*(a1 + 824)), (v55 = *(a1 + 824)) == 0) ? (v56 = 0) : (v56 = *(a1 + 776)), sub_1000BCC04(v11, v55, v56, 2) && ((v57 = v43 >> 3, sub_1000C0160(*(a1 + 760)), (v58 = *(a1 + 760)) != 0) ? (v59 = v57) : (v59 = 0), sub_1000BCC04(v11, v58, v59, 1) && ((v60 = v38 >> 3, sub_1000C0160(*(a1 + 768)), (v61 = *(a1 + 768)) != 0) ? (v62 = v60) : (v62 = 0), sub_1000BCC04(v11, v61, v62, 1))))))))))
    {
      if (sub_1000BCBAC(v11, *(a1 + 1992)) && sub_1000BCBAC(v11, *(a1 + 1996)))
      {
        v63 = sub_1000BCBAC(v11, *(a1 + 292));
LABEL_102:
        sub_1000BCB64(v11);
        return v63;
      }
    }

LABEL_101:
    v63 = 0;
    goto LABEL_102;
  }

  return result;
}

void *sub_1000191A8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = "bamp2";
  if (!a5)
  {
    v10 = "bamp0";
  }

  if (a4)
  {
    v11 = "bamp1";
  }

  else
  {
    v11 = v10;
  }

  result = sub_1000BBAE0(a2, v11, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v13 = *(a1 + 984);
    if (v13 && *(v13 + 168))
    {
      return 0;
    }

    if (*(a1 + 2008) || *(a1 + 1004) && *(a1 + 528))
    {
      return 0;
    }

    v14 = result;
    if (!sub_1000BBD04(result, (a1 + 2000)))
    {
      goto LABEL_96;
    }

    if (*(a1 + 2000))
    {
      v15 = *(a1 + 1120) * *(a1 + 1184);
      v16 = *(a1 + 1032);
      if (*(a1 + 996))
      {
        if (v16)
        {
          if (*(a1 + 1760))
          {
            v17 = 0;
          }

          else
          {
            v17 = *(a1 + 1184);
          }

LABEL_24:
          v18 = v15 / 4;
          v20 = (a1 + 152);
          v19 = *(a1 + 152);
          if (v19)
          {
            sub_1000C0160(v19);
            if (!sub_1000BBE54(v14, *v20, v18, 4))
            {
              goto LABEL_96;
            }
          }

          else
          {
            v57 = 0;
            if (!sub_1000BBF0C(v14, 4, (a1 + 152), &v57))
            {
              goto LABEL_96;
            }

            v38 = *v20;
            if (*v20)
            {
              if (v57 != v18)
              {
                goto LABEL_96;
              }
            }

            if (v38)
            {
              *(a1 + 136) = v38;
            }
          }

          v22 = (a1 + 72);
          v21 = *(a1 + 72);
          if (v21)
          {
            sub_1000C0160(v21);
            if (!sub_1000BBE54(v14, *v22, v17, 2))
            {
              goto LABEL_96;
            }
          }

          else
          {
            v57 = 0;
            if (!sub_1000BBF0C(v14, 2, (a1 + 72), &v57))
            {
              goto LABEL_96;
            }

            v52 = *v22;
            if (*v22)
            {
              if (v57 != v17)
              {
                goto LABEL_96;
              }
            }

            if (v52)
            {
              *(a1 + 64) = v52;
            }
          }

          v24 = (a1 + 88);
          v23 = *(a1 + 88);
          if (v23)
          {
            sub_1000C0160(v23);
            if (!sub_1000BBE54(v14, *v24, v17, 2))
            {
              goto LABEL_96;
            }
          }

          else
          {
            v57 = 0;
            if (!sub_1000BBF0C(v14, 2, (a1 + 88), &v57))
            {
              goto LABEL_96;
            }

            v53 = *v24;
            if (*v24)
            {
              if (v57 != v17)
              {
                goto LABEL_96;
              }
            }

            if (v53)
            {
              *(a1 + 80) = v53;
            }
          }

          v26 = (a1 + 40);
          v25 = *(a1 + 40);
          if (v25)
          {
            sub_1000C0160(v25);
            if (!sub_1000BBE54(v14, *v26, v17, 4))
            {
              goto LABEL_96;
            }
          }

          else
          {
            v57 = 0;
            if (!sub_1000BBF0C(v14, 4, (a1 + 40), &v57))
            {
              goto LABEL_96;
            }

            v56 = *v26;
            if (*v26)
            {
              if (v57 != v17)
              {
                goto LABEL_96;
              }
            }

            if (v56)
            {
              *(a1 + 32) = v56;
            }
          }

          v28 = (a1 + 56);
          v27 = *(a1 + 56);
          if (!v27)
          {
            v57 = 0;
            if (!sub_1000BBF0C(v14, 4, (a1 + 56), &v57))
            {
              goto LABEL_96;
            }

            v29 = *v28;
            if (*v28)
            {
              if (v57 != v17)
              {
                goto LABEL_96;
              }
            }

            if (v29)
            {
              *(a1 + 48) = v29;
            }

            goto LABEL_51;
          }

          goto LABEL_42;
        }
      }

      else if (v16)
      {
        v17 = 0;
        goto LABEL_24;
      }

      if (*(a1 + 1036))
      {
        v31 = (a1 + 168);
        v30 = *(a1 + 168);
        v32 = *(a1 + 1180);
        v33 = *(a1 + 1132);
        if (v30)
        {
          sub_1000C0160(v30);
          if (!sub_1000BBE54(v14, *(a1 + 168), *(a1 + 1180), 4))
          {
            goto LABEL_96;
          }
        }

        else
        {
          v57 = 0;
          if (!sub_1000BBF0C(v14, 4, (a1 + 168), &v57))
          {
            goto LABEL_96;
          }

          if (*v31)
          {
            if (v57 != *(a1 + 1180))
            {
              goto LABEL_96;
            }

            *(a1 + 160) = *v31;
          }
        }

        v17 = v33 * v32;
        v28 = (a1 + 200);
        v27 = *(a1 + 200);
        if (v27)
        {
LABEL_42:
          sub_1000C0160(v27);
          v34 = *v28;
          v35 = v14;
          v36 = v17;
          v37 = 4;
          goto LABEL_50;
        }

        v57 = 0;
        if (!sub_1000BBF0C(v14, 4, (a1 + 200), &v57))
        {
          goto LABEL_96;
        }

        v55 = *v28;
        if (*v28)
        {
          if (v57 != v17)
          {
            goto LABEL_96;
          }
        }

        if (v55)
        {
          *(a1 + 192) = v55;
        }
      }

      else
      {
        v40 = (a1 + 24);
        v39 = *(a1 + 24);
        if (v39)
        {
          sub_1000C0160(v39);
          v34 = *v40;
          v35 = v14;
          v36 = v15;
          v37 = 1;
LABEL_50:
          if (!sub_1000BBE54(v35, v34, v36, v37))
          {
            goto LABEL_96;
          }

          goto LABEL_51;
        }

        v57 = 0;
        if (!sub_1000BBF0C(v14, 1, (a1 + 24), &v57))
        {
          goto LABEL_96;
        }

        v54 = *v40;
        if (*v40)
        {
          if (v57 != v15)
          {
            goto LABEL_96;
          }
        }

        if (v54)
        {
          *(a1 + 16) = v54;
        }
      }
    }

LABEL_51:
    if (!*(a1 + 1024) || ((v41 = *(a1 + 776), v42 = *(a1 + 1120), v41 >= -7) ? (v43 = v41 + 7) : (v43 = v41 + 14), (v44 = *(a1 + 752), v46 = v44 + 8, v45 = v44 < -8, v47 = v44 + 15, !v45) ? (v48 = v46) : (v48 = v47), sub_1000BBE54(v14, *(a1 + 792), *(a1 + 1128) * v41, 4) && sub_1000BBE54(v14, *(a1 + 784), v42 * v41, 1) && sub_1000BBE54(v14, *(a1 + 800), *(a1 + 776), 4) && sub_1000BBE54(v14, *(a1 + 808), *(a1 + 776), 4) && sub_1000BBE54(v14, *(a1 + 816), *(a1 + 776), 2) && sub_1000BBE54(v14, *(a1 + 824), *(a1 + 776), 2) && sub_1000BBE54(v14, *(a1 + 760), v48 >> 3, 1) && sub_1000BBE54(v14, *(a1 + 768), v43 >> 3, 1)))
    {
      if (sub_1000BBD04(v14, (a1 + 1992)) && sub_1000BBD54(v14, (a1 + 1996)))
      {
        v49 = sub_1000BBDA4(v14, (a1 + 292));
        v50 = v14;
        v51 = v49 != 0;
LABEL_97:
        sub_1000BBBC4(v50);
        return v51;
      }
    }

LABEL_96:
    v51 = 0;
    v50 = v14;
    goto LABEL_97;
  }

  return result;
}

void *sub_10001972C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a1 + 752) - *(a1 + 1884));
  v11 = sub_1000C9FC0(*(a1 + 1100), a2, a3, a4, a5, a6, a7, a8);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v19 = *(a1 + 1884);
      v20 = *(a1 + 760);
      v21 = (v19 + i) >> 3;
      v22 = *(v20 + v21);
      v23 = byte_1000F1D9C[(v19 + i) & 7];
      if (*(a2 + i) == 255 && (v23 & v22) != 0)
      {
        v25 = *(a1 + 1096);
        if (v25 >= 1)
        {
          v26 = 0;
          v27 = v19 + i;
          do
          {
            sub_100019874(a1, (v26++ + *(a1 + 1072) + v25 * (v27 - *(a1 + 1884))), 0, v11, v12, v13, v14, v15, v16, v17);
            v25 = *(a1 + 1096);
          }

          while (v26 < v25);
          v20 = *(a1 + 760);
          LOBYTE(v22) = *(v20 + v21);
        }

        *(v20 + v21) = v22 & ~v23;
      }
    }
  }

  v28 = *(a1 + 1100);

  return sub_1000CA03C(v11, v28);
}

uint64_t sub_100019874(uint64_t a1, unsigned int a2, int a3, uint64_t a4, double a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10)
{
  *(*(a1 + 768) + ((a2 - *(a1 + 1072)) >> 3)) |= byte_1000F1D9C[(a2 - *(a1 + 1072)) & 7];
  result = sub_1000017DC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  if (*(a1 + 1032))
  {
    v46 = 0;
    sub_100001370(a1, a2, a3, &v46);
    v15 = *v46 * *v46 + v46[1] * v46[1] + v46[2] * v46[2] + v46[3] * v46[3] + v46[4] * v46[4] + v46[5] * v46[5] + v46[6] * v46[6] + v46[7] * v46[7];
    v16 = *(a1 + 1100);
    if (v16 < 9)
    {
      v18 = 0;
LABEL_19:
      if (*(a1 + 1108))
      {
        v44 = 0;
        v45 = 0;
        result = sub_1000020E0(a1, a2, a3, &v45, &v44);
        if (*(a1 + 1044))
        {
          *v45 = v15;
          *v44 = v18;
        }

        else
        {
          *v45 = v18 + v15;
        }
      }

      else
      {
        v44 = 0;
        v45 = 0;
        result = sub_100002058(a1, a2, a3, &v45, &v44);
        if (*(a1 + 1044))
        {
          *v45 = v15;
          *v44 = v18;
        }

        else
        {
          *v45 = v18 + v15;
        }
      }

      return result;
    }

    v17 = v16 - 8;
    if ((v16 - 8) < 4)
    {
      v18 = 0;
      v19 = 8;
      goto LABEL_17;
    }

    if (v17 >= 0x20)
    {
      v21 = 0uLL;
      v20 = v17 & 0xFFFFFFFFFFFFFFE0;
      v22 = 0uLL;
      v23 = (v46 + 24);
      v24 = v17 & 0xFFFFFFFFFFFFFFE0;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v31 = v23[-1];
        v32 = *v23;
        v33 = vmull_u8(*v31.i8, *v31.i8);
        v34 = vmull_high_u8(v31, v31);
        v35 = vmull_u8(*v32.i8, *v32.i8);
        v36 = vmull_high_u8(v32, v32);
        v26 = vaddw_high_u16(v26, v34);
        v25 = vaddw_u16(v25, *v34.i8);
        v22 = vaddw_high_u16(v22, v33);
        v21 = vaddw_u16(v21, *v33.i8);
        v30 = vaddw_high_u16(v30, v36);
        v29 = vaddw_u16(v29, *v36.i8);
        v28 = vaddw_high_u16(v28, v35);
        v27 = vaddw_u16(v27, *v35.i8);
        v23 += 2;
        v24 -= 32;
      }

      while (v24);
      v14 = vaddq_s32(vaddq_s32(v28, v22), vaddq_s32(v30, v26));
      v18 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v27, v21), vaddq_s32(v29, v25)), v14));
      if (v17 == v20)
      {
        goto LABEL_19;
      }

      if ((v17 & 0x1C) == 0)
      {
        v19 = v20 | 8;
LABEL_17:
        v41 = &v46[v19];
        v42 = v16 - v19;
        do
        {
          v43 = *v41++;
          v18 += v43 * v43;
          --v42;
        }

        while (v42);
        goto LABEL_19;
      }
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v19 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    v37 = v18;
    v38 = &v46[v20 + 8];
    v39 = v20 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v40 = *v38;
      v38 += 4;
      v14.i32[0] = v40;
      v14.i64[0] = vmovl_u8(*v14.i8).u64[0];
      v37 = vmlal_u16(v37, *v14.i8, *v14.i8);
      v39 += 4;
    }

    while (v39);
    v18 = vaddvq_s32(v37);
    if (v17 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t sub_100019B58(uint64_t a1)
{
  if (*(a1 + 784) || *(a1 + 792))
  {
    return 1;
  }

  v2 = *(a1 + 752);
  v3 = *(a1 + 1884);
  v4 = *(a1 + 1096);
  v5 = v2 + 8;
  if (v2 < -8)
  {
    v5 = v2 + 15;
  }

  result = sub_1000C0034(v5 >> 3);
  *(a1 + 760) = result;
  if (result)
  {
    v7 = v4 * (v2 - v3 + 1);
    v8 = v7 + 7;
    if (v7 < -7)
    {
      v8 = v7 + 14;
    }

    result = sub_1000C0034(v8 >> 3);
    *(a1 + 768) = result;
    if (result)
    {
      *(a1 + 776) = v7;
      *(a1 + 800) = 0u;
      *(a1 + 816) = 0u;
      if (*(a1 + 1032))
      {
        result = sub_1000C0034(4 * *(a1 + 1128) * v7);
        *(a1 + 792) = result;
        if (!result)
        {
          return result;
        }

        v9 = v7;
        if (*(a1 + 1108))
        {
          v10 = 2 * v7;
          result = sub_1000C0034(2 * v9);
          *(a1 + 816) = result;
          if (!result)
          {
            return result;
          }

          v11 = a1;
          v12 = (a1 + 824);
        }

        else
        {
          v10 = 4 * v7;
          result = sub_1000C0034(4 * v9);
          *(a1 + 800) = result;
          if (!result)
          {
            return result;
          }

          v11 = a1;
          v12 = (a1 + 808);
        }

        if (*(v11 + 1044))
        {
          result = sub_1000C0034(v10);
          *v12 = result;
          if (!result)
          {
            return result;
          }
        }

        else
        {
          *v12 = 0;
        }
      }

      else
      {
        result = sub_1000C0034(*(a1 + 1120) * v7);
        *(a1 + 784) = result;
        if (!result)
        {
          return result;
        }
      }

      return 1;
    }
  }

  return result;
}

double sub_100019CB0(uint64_t a1)
{
  sub_1000BFEC4(*(a1 + 800));
  sub_1000BFEC4(*(a1 + 816));
  if (*(a1 + 1044))
  {
    sub_1000BFEC4(*(a1 + 808));
    sub_1000BFEC4(*(a1 + 824));
  }

  sub_1000BFEC4(*(a1 + 784));
  sub_1000BFEC4(*(a1 + 792));
  sub_1000BFEC4(*(a1 + 768));
  sub_1000BFEC4(*(a1 + 760));
  *(a1 + 784) = 0;
  result = 0.0;
  *(a1 + 760) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  return result;
}

uint64_t sub_100019D2C(uint64_t result, uint64_t a2)
{
  if (qword_1001065A8)
  {
    v2 = *(qword_1001065A8 + 592);
    v3 = *(result + 1984);
    if (*(v3 + 8) < 1)
    {
      return result;
    }
  }

  else
  {
    v2 = 0;
    v3 = *(result + 1984);
    if (*(v3 + 8) < 1)
    {
      return result;
    }
  }

  v4 = *(v3 + 12);
  v5 = v4 - v2;
  v6 = v4 / 2;
  if (v4 <= v2)
  {
    v16 = 0;
    v17 = v6 / v5;
    do
    {
      v18 = *(result + 1771);
      if (v17 < v18)
      {
        v18 = v17;
      }

      if (v18 <= *(result + 1770))
      {
        LOBYTE(v18) = *(result + 1770);
      }

      *(*(v3 + 48) + v16++) = v18;
    }

    while (v16 < *(v3 + 8));
  }

  else
  {
    v7 = v2;
    v8 = v4 - v2;
    if (v8 > 1)
    {
      v19 = v8 & 0xFFFFFFFFFFFFFFFELL;
      v20 = v8 - (v8 & 0xFFFFFFFFFFFFFFFELL);
      if (v8 == (v8 & 0xFFFFFFFFFFFFFFFELL))
      {
        v21 = a2 + 8 * v7 + 8;
        do
        {
          v22 = 0;
          v23 = 0;
          v24 = v21;
          v25 = v19;
          do
          {
            v22 += *(*(v24 - 1) + v20);
            v23 += *(*v24 + v20);
            v24 += 2;
            v25 -= 2;
          }

          while (v25);
          v26 = (v23 + v22 + v6) / v5;
          if (v26 >= *(result + 1771))
          {
            v26 = *(result + 1771);
          }

          if (v26 <= *(result + 1770))
          {
            LOBYTE(v26) = *(result + 1770);
          }

          *(*(v3 + 48) + v20++) = v26;
        }

        while (v20 < *(v3 + 8));
      }

      else
      {
        v27 = 0;
        v28 = a2 + 8 * v7;
        v29 = (v28 + 8);
        v30 = (v28 + 16 * (v8 >> 1));
        do
        {
          v31 = 0;
          v32 = 0;
          v33 = v19;
          v34 = v29;
          do
          {
            v31 += *(*(v34 - 1) + v27);
            v32 += *(*v34 + v27);
            v34 += 2;
            v33 -= 2;
          }

          while (v33);
          v35 = v32 + v31;
          v36 = v20;
          v37 = v30;
          do
          {
            v38 = *v37++;
            v35 += *(v38 + v27);
            --v36;
          }

          while (v36);
          v39 = (v35 + v6) / v5;
          if (v39 >= *(result + 1771))
          {
            v39 = *(result + 1771);
          }

          if (v39 <= *(result + 1770))
          {
            LOBYTE(v39) = *(result + 1770);
          }

          *(*(v3 + 48) + v27++) = v39;
        }

        while (v27 < *(v3 + 8));
      }
    }

    else
    {
      v9 = 0;
      v10 = (a2 + 8 * v7);
      do
      {
        v11 = 0;
        v12 = v10;
        v13 = v8;
        do
        {
          v14 = *v12++;
          v11 += *(v14 + v9);
          --v13;
        }

        while (v13);
        v15 = (v11 + v6) / v5;
        if (v15 >= *(result + 1771))
        {
          v15 = *(result + 1771);
        }

        if (v15 <= *(result + 1770))
        {
          LOBYTE(v15) = *(result + 1770);
        }

        *(*(v3 + 48) + v9++) = v15;
      }

      while (v9 < *(v3 + 8));
    }
  }

  return result;
}

uint64_t sub_100019F54(uint64_t a1, unsigned int a2, double a3, int32x4_t a4, int32x4_t a5)
{
  v5 = *(a1 + 1984);
  v6 = *(*(v5 + 32) + 2 * a2);
  if (v6 == -1)
  {
    return 1;
  }

  v7 = *(v5 + 8);
  if (*(v5 + 40))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(*(v5 + 32) + 2 * a2);
  }

  v9 = *(*(v5 + 72) + 4 * v8);
  if (v7 >= 1)
  {
    v10 = *(v5 + 48);
    v11 = *(v5 + 56);
    v12 = v7 * v6;
    v13 = *(v5 + 64);
    v14 = v7 * v8;
    if (v7 < 4)
    {
      v15 = *(v5 + 8);
      goto LABEL_20;
    }

    if (v7 >= 0x20)
    {
      v17 = v7 & 0x7FFFFFE0;
      v18 = 0uLL;
      v19 = v9;
      v20 = (v12 + v7 + v11 - 16);
      v21 = (2 * v14 + 2 * v7 + v13 - 32);
      v22 = (v7 + v10 - 16);
      v23 = v17;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = vrev64q_s8(*v20);
        v31 = vextq_s8(v30, v30, 8uLL);
        v32 = vrev64q_s8(v20[-1]);
        v33 = vextq_s8(v32, v32, 8uLL);
        v34 = vrev64q_s8(*v22);
        v35 = vextq_s8(v34, v34, 8uLL);
        v36 = vrev64q_s8(v22[-1]);
        v37 = vextq_s8(v36, v36, 8uLL);
        v38 = vsubl_u8(*v31.i8, *v35.i8);
        v39 = vsubl_high_u8(v31, v35);
        v40 = vsubl_u8(*v33.i8, *v37.i8);
        v41 = vsubl_high_u8(v33, v37);
        v42 = vrev64q_s16(v21[1]);
        v43 = vextq_s8(v42, v42, 8uLL);
        v44 = vrev64q_s16(*v21);
        v45 = vextq_s8(v44, v44, 8uLL);
        v46 = vrev64q_s16(v21[-1]);
        v47 = vextq_s8(v46, v46, 8uLL);
        v48 = vrev64q_s16(v21[-2]);
        v49 = vextq_s8(v48, v48, 8uLL);
        v25 = vmlaq_s32(v25, vmull_high_s16(v39, v39), vmovl_high_u16(v45));
        v24 = vmlaq_s32(v24, vmull_s16(*v39.i8, *v39.i8), vmovl_u16(*v45.i8));
        v18 = vmlaq_s32(v18, vmull_high_s16(v38, v38), vmovl_high_u16(v43));
        v19 = vmlaq_s32(v19, vmull_s16(*v38.i8, *v38.i8), vmovl_u16(*v43.i8));
        v29 = vmlaq_s32(v29, vmull_high_s16(v41, v41), vmovl_high_u16(v49));
        v28 = vmlaq_s32(v28, vmull_s16(*v41.i8, *v41.i8), vmovl_u16(*v49.i8));
        v27 = vmlaq_s32(v27, vmull_high_s16(v40, v40), vmovl_high_u16(v47));
        v26 = vmlaq_s32(v26, vmull_s16(*v40.i8, *v40.i8), vmovl_u16(*v47.i8));
        v20 -= 2;
        v21 -= 4;
        v22 -= 2;
        v23 -= 32;
      }

      while (v23);
      a5 = vaddq_s32(v28, v24);
      a4 = vaddq_s32(vaddq_s32(v27, v18), vaddq_s32(v29, v25));
      v9 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v19), a5), a4));
      if (v17 == v7)
      {
        goto LABEL_22;
      }

      if ((v7 & 0x1C) == 0)
      {
        v15 = v7 & 0x1F;
LABEL_20:
        v59 = v11 + v12;
        v60 = v13 + 2 * v14;
        v61 = v15 - 1;
        do
        {
          v62 = *(v59 + v61) - *(v10 + v61);
          v9 += v62 * v62 * *(v60 + 2 * v61);
          v63 = v61-- + 1;
        }

        while (v63 > 1);
        goto LABEL_22;
      }
    }

    else
    {
      v17 = 0;
    }

    v15 = v7 & 3;
    v50 = v9;
    v51 = (v13 - 2 * v17 + 2 * (v14 + v7) - 8);
    v52 = (v7 - v17 + v10 - 4);
    v53 = (v12 + v7 - v17 + v11 - 4);
    v54 = v17 - (v7 & 0x7FFFFFFC);
    do
    {
      v55 = *v53--;
      a4.i32[0] = v55;
      v56 = *v52--;
      a5.i32[0] = v56;
      v57 = vsubl_u16(vrev64_s16(*&vmovl_u8(*a4.i8)), vrev64_s16(*&vmovl_u8(*a5.i8)));
      a4 = vmulq_s32(v57, v57);
      v58 = *v51--;
      a5 = vmovl_u16(vrev64_s16(v58));
      v50 = vmlaq_s32(v50, a4, a5);
      v54 += 4;
    }

    while (v54);
    v9 = vaddvq_s32(v50);
    if ((v7 & 0x7FFFFFFC) != v7)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v64 = (v9 * *v5 + 0.5);
  if (*(a1 + 1136) < v64)
  {
    LOWORD(v64) = *(a1 + 1136);
  }

  return v64;
}

uint64_t sub_10001A210(uint64_t result)
{
  if (*(result + 576) >= 1)
  {
    v1 = 0;
    v2 = *(result + 1544);
    v3 = *(result + 1208);
    v4 = *(result + 520);
    v5 = *(result + 616);
    do
    {
      v6 = v1++;
      v7 = *(v5 + 4 * v6);
      if (v7 < *(v5 + 4 * v1))
      {
        v8 = *(result + 600);
        v9 = *(v8 + 4 * v6);
        v10 = *(v8 + 4 * v1);
        if (v9 >= v10)
        {
          do
          {
            *(*(result + 632) + 2 * v7++) = 0;
            v5 = *(result + 616);
          }

          while (v7 < *(v5 + 4 * v1));
        }

        else
        {
          v11 = v10 - v9;
          if (v11 >= 0x20)
          {
            v23 = v11 & 0xFFFFFFFFFFFFFFE0;
            v24 = (v11 & 0xFFFFFFFFFFFFFFE0) + v9;
            v25 = 2 * v9;
            v26 = v3 + 32 + 2 * v9;
            v27 = (v2 + 16 + v9);
            v28 = (v2 + v24);
            v29 = (v3 + v25 + (v11 >> 5 << 6));
            do
            {
              v31 = 0uLL;
              v32 = 0uLL;
              v33 = v4 + 2;
              v4 = (v4 + v23);
              v34 = v27;
              v35 = v11 & 0xFFFFFFFFFFFFFFE0;
              v36 = v26;
              v37 = 0uLL;
              v38 = 0uLL;
              v39 = 0uLL;
              v40 = 0uLL;
              v41 = 0uLL;
              v42 = 0uLL;
              do
              {
                v43 = *v33[-2].i8;
                v44 = *v34[-2].i8;
                v45 = vsubl_u8(*v43.i8, *v44.i8);
                v46 = vsubl_high_u8(v43, v44);
                v47 = vsubl_u8(*v33, *v34);
                v48 = vsubl_high_u8(*v33->i8, *v34->i8);
                v49 = v36[-2];
                v50 = v36[-1];
                v51 = *v36;
                v52 = v36[1];
                v36 += 4;
                v38 = vmlaq_s32(v38, vmull_high_s16(v46, v46), vmovl_high_u16(v50));
                v37 = vmlaq_s32(v37, vmull_s16(*v46.i8, *v46.i8), vmovl_u16(*v50.i8));
                v32 = vmlaq_s32(v32, vmull_high_s16(v45, v45), vmovl_high_u16(v49));
                v31 = vmlaq_s32(v31, vmull_s16(*v45.i8, *v45.i8), vmovl_u16(*v49.i8));
                v42 = vmlaq_s32(v42, vmull_high_s16(v48, v48), vmovl_high_u16(v52));
                v41 = vmlaq_s32(v41, vmull_s16(*v48.i8, *v48.i8), vmovl_u16(*v52.i8));
                v40 = vmlaq_s32(v40, vmull_high_s16(v47, v47), vmovl_high_u16(v51));
                v39 = vmlaq_s32(v39, vmull_s16(*v47.i8, *v47.i8), vmovl_u16(*v51.i8));
                v33 += 4;
                v34 += 4;
                v35 -= 32;
              }

              while (v35);
              v30 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v39, v31), vaddq_s32(v41, v37)), vaddq_s32(vaddq_s32(v40, v32), vaddq_s32(v42, v38))));
              if (v11 != v23)
              {
                v53 = v11 - (v11 & 0xFFFFFFFFFFFFFFE0);
                v54 = v29;
                v55 = v28;
                do
                {
                  v57 = v4->u8[0];
                  v4 = (v4 + 1);
                  v56 = v57;
                  v58 = *v55++;
                  v59 = (v56 - v58) * (v56 - v58);
                  v60 = *v54++;
                  v30 += v59 * v60;
                  --v53;
                }

                while (v53);
              }

              if (v30 >= 0xFFFF)
              {
                LOWORD(v30) = -1;
              }

              *(*(result + 632) + 2 * v7++) = v30;
              v5 = *(result + 616);
            }

            while (v7 < *(v5 + 4 * v1));
          }

          else
          {
            v12 = (v3 + 2 * v9);
            v13 = (v2 + v9);
            do
            {
              v14 = 0;
              v15 = v13;
              v16 = v12;
              v17 = v11;
              do
              {
                v19 = v4->u8[0];
                v4 = (v4 + 1);
                v18 = v19;
                v20 = *v15++;
                v21 = (v18 - v20) * (v18 - v20);
                v22 = *v16++;
                v14 += v21 * v22;
                --v17;
              }

              while (v17);
              if (v14 >= 0xFFFF)
              {
                LOWORD(v14) = -1;
              }

              *(*(result + 632) + 2 * v7++) = v14;
              v5 = *(result + 616);
            }

            while (v7 < *(v5 + 4 * v1));
          }
        }
      }
    }

    while (v1 < *(result + 576));
  }

  return result;
}

void sub_10001A488(uint64_t a1)
{
  if (*(a1 + 576) >= 1)
  {
    v2 = 0;
    v58 = *(a1 + 1544);
    v3 = **(a1 + 600);
    v4 = **(a1 + 616);
    v5 = *(a1 + 520);
    do
    {
      ++v2;
      v6 = *(*(a1 + 600) + 4 * v2);
      v7 = *(*(a1 + 616) + 4 * v2);
      v8 = (v7 + ~v4);
      if (v7 + ~v4 >= 0)
      {
        v9 = v3;
        v10 = (v6 - v3);
        v11 = (*(a1 + 632) + 2 * v4);
        v12 = v10;
        if (v10 > 0)
        {
          v13 = v58 + v3;
          v14 = (v6 + ~v3);
          if (v14 < 7)
          {
            do
            {
              v15 = 0;
              v16 = v10 - 1;
              v17 = v6 - v9 + 1;
              do
              {
                v18 = *(v5 + v16) - *(v13 + v16);
                v15 += v18 * v18;
                --v17;
                --v16;
              }

              while (v17 > 1);
              if (v15 >= 0xFFFF)
              {
                LOWORD(v15) = -1;
              }

              *v11++ = v15;
              v5 += v10;
              v19 = v8 <= 0;
              LODWORD(v8) = v8 - 1;
            }

            while (!v19);
            goto LABEL_4;
          }

          v20 = v14 + 1;
          v21 = (v14 + 1) & 0x1FFFFFFF8;
          v22 = v10 - 1;
          while (2)
          {
            if (v14 >= 0x1F)
            {
              v25 = 0uLL;
              v26 = (v14 + 1) & 0x1FFFFFFE0;
              v27 = 0uLL;
              v28 = v22;
              v29 = 0uLL;
              v30 = 0uLL;
              v31 = 0uLL;
              v32 = 0uLL;
              v33 = 0uLL;
              v34 = 0uLL;
              do
              {
                v35 = v5 + v28;
                v36 = vrev64q_s8(*(v35 - 15));
                v37 = vextq_s8(v36, v36, 8uLL);
                v38 = vrev64q_s8(*(v35 - 31));
                v39 = vextq_s8(v38, v38, 8uLL);
                v40 = v13 + v28;
                v41 = vrev64q_s8(*(v40 - 15));
                v42 = vextq_s8(v41, v41, 8uLL);
                v43 = vrev64q_s8(*(v40 - 31));
                v44 = vextq_s8(v43, v43, 8uLL);
                v45 = vsubl_u8(*v37.i8, *v42.i8);
                v46 = vsubl_high_u8(v37, v42);
                v47 = vsubl_u8(*v39.i8, *v44.i8);
                v48 = vsubl_high_u8(v39, v44);
                v30 = vmlal_high_s16(v30, v46, v46);
                v29 = vmlal_s16(v29, *v46.i8, *v46.i8);
                v27 = vmlal_high_s16(v27, v45, v45);
                v25 = vmlal_s16(v25, *v45.i8, *v45.i8);
                v34 = vmlal_high_s16(v34, v48, v48);
                v33 = vmlal_s16(v33, *v48.i8, *v48.i8);
                v32 = vmlal_high_s16(v32, v47, v47);
                v31 = vmlal_s16(v31, *v47.i8, *v47.i8);
                v28 -= 32;
                v26 -= 32;
              }

              while (v26);
              v23 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v31, v25), vaddq_s32(v33, v29)), vaddq_s32(vaddq_s32(v32, v27), vaddq_s32(v34, v30))));
              if (v20 != ((v14 + 1) & 0x1FFFFFFE0))
              {
                v24 = (v14 + 1) & 0x1FFFFFFE0;
                v49 = v24;
                if (((v14 + 1) & 0x18) != 0)
                {
                  goto LABEL_25;
                }

                goto LABEL_28;
              }
            }

            else
            {
              v23 = 0;
              v24 = 0;
LABEL_25:
              v50 = 0uLL;
              v51 = v23;
              v52 = v22 - v24;
              v53 = v24 - v21;
              do
              {
                v54 = vsubl_u8(vrev64_s8(*(v5 - 7 + v52)), vrev64_s8(*(v13 - 7 + v52)));
                v50 = vmlal_high_s16(v50, v54, v54);
                v51 = vmlal_s16(v51, *v54.i8, *v54.i8);
                v52 -= 8;
                v53 += 8;
              }

              while (v53);
              v23 = vaddvq_s32(vaddq_s32(v51, v50));
              v49 = (v14 + 1) & 0x1FFFFFFF8;
              if (v20 != v21)
              {
LABEL_28:
                v55 = v6 - v9 + 1 - v49;
                v56 = v22 - v49;
                do
                {
                  v57 = *(v5 + v56) - *(v13 + v56);
                  v23 += v57 * v57;
                  --v55;
                  --v56;
                }

                while (v55 > 1);
              }
            }

            if (v23 >= 0xFFFF)
            {
              LOWORD(v23) = -1;
            }

            *v11++ = v23;
            v5 += v12;
            v19 = v8 <= 0;
            LODWORD(v8) = v8 - 1;
            if (v19)
            {
              goto LABEL_4;
            }

            continue;
          }
        }

        bzero(v11, 2 * (v7 - v4));
        v5 += v6 + v12 * v8 - v9;
      }

LABEL_4:
      v3 = v6;
      v4 = v7;
    }

    while (v2 < *(a1 + 576));
  }
}

uint64_t sub_10001A7AC(uint64_t a1)
{
  v1 = *(a1 + 576);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(a1 + 616);
    v5 = *v4;
    v6 = *(a1 + 632);
    v7 = *v4;
    while (1)
    {
      v9 = v7;
      v7 = v5;
      v5 = v4[++v2];
      v10 = (v5 + ~v7);
      if (v5 + ~v7 < 0)
      {
        v8 = 0x40000000;
      }

      else
      {
        v11 = (v5 - v7);
        if (v11 < 4)
        {
          v8 = 0x40000000;
          v12 = (v5 + ~v7);
          goto LABEL_19;
        }

        v13 = 2 * v9;
        if (v11 >= 0x10)
        {
          v14 = v11 & 0xFFFFFFF0;
          v15 = (v6 - 14 + v13 + 2 * v10);
          v16.i64[0] = 0x4000000040000000;
          v16.i64[1] = 0x4000000040000000;
          v17 = v14;
          v18.i64[0] = 0x4000000040000000;
          v18.i64[1] = 0x4000000040000000;
          v19.i64[0] = 0x4000000040000000;
          v19.i64[1] = 0x4000000040000000;
          v20.i64[0] = 0x4000000040000000;
          v20.i64[1] = 0x4000000040000000;
          do
          {
            v21 = vrev64q_s16(*v15);
            v22 = vextq_s8(v21, v21, 8uLL);
            v23 = vrev64q_s16(v15[-1]);
            v24 = vextq_s8(v23, v23, 8uLL);
            v18 = vminq_s32(v18, vmovl_high_u16(v22));
            v16 = vminq_s32(v16, vmovl_u16(*v22.i8));
            v20 = vminq_s32(v20, vmovl_high_u16(v24));
            v19 = vminq_s32(v19, vmovl_u16(*v24.i8));
            v15 -= 2;
            v17 -= 16;
          }

          while (v17);
          v8 = vminvq_s32(vminq_s32(vminq_s32(v16, v19), vminq_s32(v18, v20)));
          if (v14 == v11)
          {
            goto LABEL_4;
          }

          if (((v5 - v7) & 0xC) == 0)
          {
            v12 = v10 - v14;
LABEL_19:
            v29 = v12 + 1;
            v30 = (v6 + 2 * v12 + 2 * v9);
            do
            {
              v32 = *v30--;
              v31 = v32;
              if (v8 >= v32)
              {
                v8 = v31;
              }

              --v29;
            }

            while (v29 > 0);
            goto LABEL_4;
          }
        }

        else
        {
          v14 = 0;
          v8 = 0x40000000;
        }

        v12 = v10 - (v11 & 0xFFFFFFFC);
        v25 = vdupq_n_s32(v8);
        v26 = v14 - (v11 & 0xFFFFFFFC);
        v27 = (v6 - 6 + v13 + 2 * v10 - 2 * v14);
        do
        {
          v28 = *v27--;
          v25 = vminq_s32(v25, vmovl_u16(vrev64_s16(v28)));
          v26 += 4;
        }

        while (v26);
        v8 = vminvq_s32(v25);
        if ((v11 & 0xFFFFFFFC) != v11)
        {
          goto LABEL_19;
        }
      }

LABEL_4:
      v3 += v8;
      if (v2 == v1)
      {
        goto LABEL_25;
      }
    }
  }

  v3 = 0;
LABEL_25:
  if (*(a1 + 1296) == 5)
  {
    v33 = *(a1 + 1136);
    v34 = ((*(a1 + 732) + *(a1 + 1052) * v3) >> *(a1 + 728));
    if (v33 >= v34)
    {
      return v34;
    }

    else
    {
      return v33;
    }
  }

  else
  {
    v36 = *(a1 + 1136);
    v37 = (v3 * *(a1 + 8) + 0.5);
    if (v36 >= v37)
    {
      return v37;
    }

    else
    {
      return v36;
    }
  }
}

uint64_t sub_10001A998(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 576);
  v4 = *(a1 + 1296);
  if (v4 == 5)
  {
    v5 = 0;
    if (v3 < 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = **(a1 + 1240);
    if (v3 < 1)
    {
      goto LABEL_12;
    }
  }

  v6 = *(a1 + 632);
  v7 = *(a1 + 616);
  v8 = *(*(a1 + 1144) + 2 * a2);
  v9 = *(a1 + 640);
  v10 = (v8 + a3) * v3;
  v11 = (v9 + v10);
  if (v3 == 1)
  {
    v12 = 1;
  }

  else
  {
    v13 = 0;
    v12 = v3 - (v3 & 0x7FFFFFFE);
    v11 += v3 & 0x7FFFFFFE;
    v14 = v7 + 1;
    v15 = (v10 + v9 + 1);
    v16 = v3 & 0x7FFFFFFE;
    v7 += v16;
    do
    {
      v17 = *(v15 - 1);
      v18 = *v15;
      v15 += 2;
      v5 += *(v6 + 2 * (*(v14 - 1) + v17));
      v13 += *(v6 + 2 * (*v14 + v18));
      v14 += 2;
      v16 -= 2;
    }

    while (v16);
    v5 += v13;
    if ((v3 & 0x7FFFFFFE) == v3)
    {
      goto LABEL_12;
    }
  }

  v19 = v12 + 1;
  do
  {
    v21 = *v7++;
    v20 = v21;
    v22 = *v11++;
    v5 += *(v6 + 2 * (v20 + v22));
    --v19;
  }

  while (v19 > 1);
LABEL_12:
  if (v4 == 5)
  {
    v23 = *(a1 + 1136);
    v24 = ((*(a1 + 732) + *(a1 + 1052) * v5) >> *(a1 + 728));
    if (v23 >= v24)
    {
      return v24;
    }

    else
    {
      return v23;
    }
  }

  else
  {
    v26 = *(a1 + 1136);
    v27 = (v5 * *(a1 + 8) + 0.5);
    if (v26 >= v27)
    {
      return v27;
    }

    else
    {
      return v26;
    }
  }
}

uint64_t sub_10001AAD8(uint64_t result)
{
  v1 = *(result + 704);
  if (v1)
  {
    v2 = result;
    sub_1000BFEC4(*v1);
    sub_1000BFEC4(*(*(v2 + 704) + 8));
    **(v2 + 704) = 0;
    *(*(v2 + 704) + 8) = 0;
    result = sub_1000BFEC4(*(v2 + 704));
    *(v2 + 704) = 0;
  }

  return result;
}

uint64_t sub_10001AB34(uint64_t a1, uint64_t a2, int a3)
{
  v4 = 0;
  if (!a3 && qword_1001065A8)
  {
    v4 = *(qword_1001065A8 + 944);
  }

  v5 = *(a1 + 704);
  if (v5)
  {
    sub_1000BFEC4(*v5);
    sub_1000BFEC4(*(*(a1 + 704) + 8));
    **(a1 + 704) = 0;
    *(*(a1 + 704) + 8) = 0;
    sub_1000BFEC4(*(a1 + 704));
    *(a1 + 704) = 0;
  }

  v6 = *(a1 + 576);
  v7 = *(*(a1 + 616) + 4 * v6);
  v8 = *(*(a1 + 584) + 4 * v6);
  result = sub_1000C0034(16);
  *(a1 + 704) = result;
  if (result)
  {
    *(*(a1 + 704) + 8) = sub_1000C0034(2 * v8);
    if (*(*(a1 + 704) + 8) && (**(a1 + 704) = sub_1000C0034(2 * v7)) != 0)
    {
      *(a1 + 712) = v4;
      if (v7 >= 1)
      {
        v10 = 0;
        v11 = *(a1 + 1404) * v4;
        do
        {
          *(**(a1 + 704) + v10) = v11;
          v10 += 2;
        }

        while (2 * v7 != v10);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001AC58(uint64_t a1, unsigned __int8 *a2, unsigned int a3, int a4, __int16 a5)
{
  v5 = *(a1 + 576);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 704);
    v8 = *v7;
    v9 = v7[1];
    v10 = *(a1 + 640) + v5 * (*(*(a1 + 1144) + 2 * a3) + a4);
    do
    {
      v11 = *(a1 + 600);
      v12 = *(v11 + 4 * v6);
      v13 = *(*(a1 + 616) + 4 * v6);
      v14 = *(v10 + v6);
      v15 = *(*(a1 + 584) + 4 * v6++);
      v16 = *(v11 + 4 * v6);
      v17 = v13 + v14;
      v18 = v16 - v12;
      v19 = *(v8 + 2 * v17) + a5;
      *(v8 + 2 * v17) = v19;
      v20 = v19 - 16385;
      if (v16 - v12 < 1)
      {
        if (v20 <= 0x7FFEu)
        {
          *(v8 + 2 * v17) = (v19 + ((v19 & 0x8000) >> 15)) >> 1;
        }

        continue;
      }

      v21 = v20 < 0x7FFFu;
      v22 = v15 + v18 * v14;
      v23 = v22;
      do
      {
        v24 = *a2++;
        v25 = *(v9 + 2 * v23) + (v24 - *(*(a1 + 520) + v23)) * a5;
        *(v9 + 2 * v23) = v25;
        if ((v25 - 16385) < 0x7FFFu)
        {
          v21 = 1;
        }

        ++v23;
        --v18;
      }

      while (v18);
      if (v21)
      {
        *(v8 + 2 * v17) = (*(v8 + 2 * v17) + (*(v8 + 2 * v17) >> 15)) >> 1;
        v26 = (v16 + ~v12);
        if (v26 >= 7)
        {
          v29 = v26 + 1;
          v27 = (v26 + 1) & 0x1FFFFFFF8;
          v28 = v27 + v22;
          v30 = (v9 + 2 * v22);
          v31 = v27;
          do
          {
            *v30 = vshrq_n_s16(vsraq_n_u16(*v30, *v30, 0xFuLL), 1uLL);
            ++v30;
            v31 -= 8;
          }

          while (v31);
          if (v29 == v27)
          {
            continue;
          }
        }

        else
        {
          LODWORD(v27) = 0;
          v28 = v22;
        }

        v32 = (v9 + 2 * v28);
        v33 = v27 + v12 - v16;
        do
        {
          *v32 = (*v32 + (*v32 >> 15)) >> 1;
          ++v32;
        }

        while (!__CFADD__(v33++, 1));
      }
    }

    while (v6 < *(a1 + 576));
  }

  return 1;
}

uint64_t sub_10001ADF4(uint64_t result, double a2, int32x4_t a3, int32x4_t a4)
{
  v4 = *(*(result + 984) + 312);
  v5 = *(v4 + 40);
  v6 = *v5;
  if (v6 != 0xFFFF)
  {
    goto LABEL_2;
  }

  v7 = *(v4 + 48);
  v8 = *(v4 + 56);
  v9 = *(v4 + 16);
  v10 = *(v4 + 80);
  if (v9 > 0)
  {
    v11 = 0;
    v12 = *(result + 1544);
    v13 = v9 & 0x7FFFFFE0;
    result = v9 & 0x7FFFFFFC;
    v15 = *(v4 + 64);
    v14 = *(v4 + 72);
    v16 = v15 + v9 - 16;
    v17 = v14 + 2 * v9 - 32;
    v18 = v14 - 8;
    v19 = v12 + v9 - 4;
    v20 = v15 + v9 - 4;
    while (1)
    {
      v21 = v11;
      v22 = *(v7 + 2 * v11);
      v23 = v9 * v22;
      v24 = *(v10 + 4 * v22);
      if (v9 < 4)
      {
        v25 = *(v4 + 16);
LABEL_20:
        v68 = v14 + 2 * v23;
        v69 = v15 + v23;
        v70 = v25 - 1;
        do
        {
          v71 = *(v69 + v70) - *(v12 + v70);
          v24 += v71 * v71 * *(v68 + 2 * v70);
          v72 = v70-- + 1;
        }

        while (v72 > 1);
        goto LABEL_22;
      }

      if (v9 >= 0x20)
      {
        v27 = 0uLL;
        v28 = *(v10 + 4 * v22);
        v29 = (v16 + v23);
        v30 = (v17 + 2 * v23);
        v31 = (v12 + v9 - 16);
        v32 = v9 & 0x7FFFFFE0;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        do
        {
          v39 = vrev64q_s8(*v29);
          v40 = vextq_s8(v39, v39, 8uLL);
          v41 = vrev64q_s8(v29[-1]);
          v42 = vextq_s8(v41, v41, 8uLL);
          v43 = vrev64q_s8(*v31);
          v44 = vextq_s8(v43, v43, 8uLL);
          v45 = vrev64q_s8(v31[-1]);
          v46 = vextq_s8(v45, v45, 8uLL);
          v47 = vsubl_u8(*v40.i8, *v44.i8);
          v48 = vsubl_high_u8(v40, v44);
          v49 = vsubl_u8(*v42.i8, *v46.i8);
          v50 = vsubl_high_u8(v42, v46);
          v51 = vrev64q_s16(v30[1]);
          v52 = vextq_s8(v51, v51, 8uLL);
          v53 = vrev64q_s16(*v30);
          v54 = vextq_s8(v53, v53, 8uLL);
          v55 = vrev64q_s16(v30[-1]);
          v56 = vextq_s8(v55, v55, 8uLL);
          v57 = vrev64q_s16(v30[-2]);
          v58 = vextq_s8(v57, v57, 8uLL);
          v34 = vmlaq_s32(v34, vmull_high_s16(v48, v48), vmovl_high_u16(v54));
          v33 = vmlaq_s32(v33, vmull_s16(*v48.i8, *v48.i8), vmovl_u16(*v54.i8));
          v27 = vmlaq_s32(v27, vmull_high_s16(v47, v47), vmovl_high_u16(v52));
          v28 = vmlaq_s32(v28, vmull_s16(*v47.i8, *v47.i8), vmovl_u16(*v52.i8));
          v38 = vmlaq_s32(v38, vmull_high_s16(v50, v50), vmovl_high_u16(v58));
          v37 = vmlaq_s32(v37, vmull_s16(*v50.i8, *v50.i8), vmovl_u16(*v58.i8));
          v36 = vmlaq_s32(v36, vmull_high_s16(v49, v49), vmovl_high_u16(v56));
          v35 = vmlaq_s32(v35, vmull_s16(*v49.i8, *v49.i8), vmovl_u16(*v56.i8));
          v29 -= 2;
          v30 -= 4;
          v31 -= 2;
          v32 -= 32;
        }

        while (v32);
        a4 = vaddq_s32(v37, v33);
        a3 = vaddq_s32(vaddq_s32(v36, v27), vaddq_s32(v38, v34));
        v24 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v35, v28), a4), a3));
        if (v13 == v9)
        {
          goto LABEL_22;
        }

        v26 = v9 & 0x7FFFFFE0;
        v25 = v9 & 0x1F;
        if ((v9 & 0x1C) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v26 = 0;
      }

      v59 = v24;
      v60 = (v18 - 2 * v26 + 2 * (v9 + v23));
      v61 = (v19 - v26);
      v62 = (v20 + v23 - v26);
      v63 = v26 - (v9 & 0x7FFFFFFC);
      do
      {
        v64 = *v62--;
        a3.i32[0] = v64;
        v65 = *v61--;
        a4.i32[0] = v65;
        v66 = vsubl_u16(vrev64_s16(*&vmovl_u8(*a3.i8)), vrev64_s16(*&vmovl_u8(*a4.i8)));
        a3 = vmulq_s32(v66, v66);
        v67 = *v60--;
        a4 = vmovl_u16(vrev64_s16(v67));
        v59 = vmlaq_s32(v59, a3, a4);
        v63 += 4;
      }

      while (v63);
      v24 = vaddvq_s32(v59);
      v25 = v9 & 3;
      if (result != v9)
      {
        goto LABEL_20;
      }

LABEL_22:
      v73 = *(v8 + 2 * v21);
      v74 = v9 * v73;
      v75 = *(v10 + 4 * v73);
      if (v9 < 4)
      {
        v76 = *(v4 + 16);
LABEL_33:
        v119 = v14 + 2 * v74;
        v120 = v15 + v74;
        v121 = v76 - 1;
        do
        {
          v122 = *(v120 + v121) - *(v12 + v121);
          v75 += v122 * v122 * *(v119 + 2 * v121);
          v123 = v121-- + 1;
        }

        while (v123 > 1);
        goto LABEL_5;
      }

      if (v9 >= 0x20)
      {
        v78 = 0uLL;
        v79 = *(v10 + 4 * v73);
        v80 = (v16 + v74);
        v81 = (v17 + 2 * v74);
        v82 = (v12 + v9 - 16);
        v83 = v9 & 0x7FFFFFE0;
        v84 = 0uLL;
        v85 = 0uLL;
        v86 = 0uLL;
        v87 = 0uLL;
        v88 = 0uLL;
        v89 = 0uLL;
        do
        {
          v90 = vrev64q_s8(*v80);
          v91 = vextq_s8(v90, v90, 8uLL);
          v92 = vrev64q_s8(v80[-1]);
          v93 = vextq_s8(v92, v92, 8uLL);
          v94 = vrev64q_s8(*v82);
          v95 = vextq_s8(v94, v94, 8uLL);
          v96 = vrev64q_s8(v82[-1]);
          v97 = vextq_s8(v96, v96, 8uLL);
          v98 = vsubl_u8(*v91.i8, *v95.i8);
          v99 = vsubl_high_u8(v91, v95);
          v100 = vsubl_u8(*v93.i8, *v97.i8);
          v101 = vsubl_high_u8(v93, v97);
          v102 = vrev64q_s16(v81[1]);
          v103 = vextq_s8(v102, v102, 8uLL);
          v104 = vrev64q_s16(*v81);
          v105 = vextq_s8(v104, v104, 8uLL);
          v106 = vrev64q_s16(v81[-1]);
          v107 = vextq_s8(v106, v106, 8uLL);
          v108 = vrev64q_s16(v81[-2]);
          v109 = vextq_s8(v108, v108, 8uLL);
          v85 = vmlaq_s32(v85, vmull_high_s16(v99, v99), vmovl_high_u16(v105));
          v84 = vmlaq_s32(v84, vmull_s16(*v99.i8, *v99.i8), vmovl_u16(*v105.i8));
          v78 = vmlaq_s32(v78, vmull_high_s16(v98, v98), vmovl_high_u16(v103));
          v79 = vmlaq_s32(v79, vmull_s16(*v98.i8, *v98.i8), vmovl_u16(*v103.i8));
          v89 = vmlaq_s32(v89, vmull_high_s16(v101, v101), vmovl_high_u16(v109));
          v88 = vmlaq_s32(v88, vmull_s16(*v101.i8, *v101.i8), vmovl_u16(*v109.i8));
          v87 = vmlaq_s32(v87, vmull_high_s16(v100, v100), vmovl_high_u16(v107));
          v86 = vmlaq_s32(v86, vmull_s16(*v100.i8, *v100.i8), vmovl_u16(*v107.i8));
          v80 -= 2;
          v81 -= 4;
          v82 -= 2;
          v83 -= 32;
        }

        while (v83);
        a4 = vaddq_s32(v88, v84);
        a3 = vaddq_s32(vaddq_s32(v87, v78), vaddq_s32(v89, v85));
        v75 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v86, v79), a4), a3));
        if (v13 == v9)
        {
          goto LABEL_5;
        }

        v77 = v9 & 0x7FFFFFE0;
        v76 = v9 & 0x1F;
        if ((v9 & 0x1C) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v77 = 0;
      }

      v110 = v75;
      v111 = (v18 - 2 * v77 + 2 * (v9 + v74));
      v112 = (v19 - v77);
      v113 = (v20 + v74 - v77);
      v114 = v77 - (v9 & 0x7FFFFFFC);
      do
      {
        v115 = *v113--;
        a3.i32[0] = v115;
        v116 = *v112--;
        a4.i32[0] = v116;
        v117 = vsubl_u16(vrev64_s16(*&vmovl_u8(*a3.i8)), vrev64_s16(*&vmovl_u8(*a4.i8)));
        a3 = vmulq_s32(v117, v117);
        v118 = *v111--;
        a4 = vmovl_u16(vrev64_s16(v118));
        v110 = vmlaq_s32(v110, a3, a4);
        v114 += 4;
      }

      while (v114);
      v75 = vaddvq_s32(v110);
      v76 = v9 & 3;
      if (result != v9)
      {
        goto LABEL_33;
      }

LABEL_5:
      if (v24 <= v75)
      {
        v11 = v22;
      }

      else
      {
        v11 = v73;
      }

      v6 = v5[v11];
      if (v6 != 0xFFFF)
      {
        goto LABEL_2;
      }
    }
  }

  LOWORD(v124) = 0;
  do
  {
    v125 = *(v7 + 2 * v124);
    v124 = *(v8 + 2 * v124);
    if (*(v10 + 4 * v125) <= *(v10 + 4 * v124))
    {
      LODWORD(v124) = v125;
    }

    v6 = v5[v124];
  }

  while (v6 == 0xFFFF);
LABEL_2:
  *(v4 + 32) = v6;
  return result;
}

uint64_t sub_10001B364(uint64_t a1)
{
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  v1 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v2 = (*(qword_1001065A8 + 5464) + 255) >> 8;
  }

  else
  {
    LODWORD(v2) = 0;
  }

  *(a1 + 168) = v2;
  *(a1 + 192) = v2;
  *(a1 + 228) = 0;
  *(a1 + 172) = 0;
  *(a1 + 196) = 0xFFFFFFFF00000000;
  *(a1 + 208) = 0;
  if (v1)
  {
    v3 = *(v1 + 5472) * *(v1 + 5464);
    v4 = v3 + 510;
    if (v3 >= -255)
    {
      v4 = v3 + 255;
    }

    v5 = v4 >> 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 216) = v5;
  *(a1 + 248) = v5;
  *(a1 + 280) = v5;
  *(a1 + 224) = 0;
  *(a1 + 292) = -1;
  v6 = *(a1 + 88);
  *(a1 + 288) = v6 - 1;
  if (!v1)
  {
    *(a1 + 268) = (v6 + 255) >> 8;
    *(a1 + 204) = 0;
    return 1;
  }

  *(a1 + 268) = (v6 + *(v1 + 5464) + 255) >> 8;
  v7 = *(v1 + 808);
  *(a1 + 204) = v7;
  if (!v6 || !v7)
  {
    return 1;
  }

  v8 = (a1 + 264);
  v9 = *(a1 + 264);
  if (sub_1000C06E8((a1 + 256), (a1 + 268), (a1 + 264), 8, 2, v6))
  {
    if (v9 < *v8)
    {
      if (*(a1 + 204))
      {
        v11 = *v8 << 8;
        if (v11 >= 1)
        {
          for (i = 0; i != v11; ++i)
          {
            v14 = *(a1 + 224);
            v15 = v14 - 1;
            if (v14 < 1)
            {
              LOWORD(v13) = 0;
            }

            else
            {
              v13 = 0;
              do
              {
                v16 = (v13 + v15) >> 1;
                if (*(*(*(a1 + 208) + ((*(*(*(a1 + 240) + 8 * ((v13 + v15) >> 9)) + 2 * v16) >> 5) & 0x7F8)) + 2 * *(*(*(a1 + 240) + 8 * ((v13 + v15) >> 9)) + 2 * v16)) >= i)
                {
                  v15 = v16 - 1;
                }

                else
                {
                  v13 = v16 + 1;
                }
              }

              while (v13 <= v15);
            }

            *(*(*(a1 + 256) + 8 * (i >> 8)) + 2 * i) = v13;
          }
        }
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10001B560(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 172) >= 1)
    {
      v2 = 0;
      do
      {
        sub_1000BFEC4(*(*(v1 + 160) + 8 * v2));
        sub_1000BFEC4(*(*(v1 + 184) + 8 * v2++));
      }

      while (v2 < *(v1 + 172));
    }

    sub_1000BFEC4(*(v1 + 160));
    sub_1000BFEC4(*(v1 + 184));
    if (*(v1 + 220) >= 1)
    {
      v3 = 0;
      do
      {
        sub_1000BFEC4(*(*(v1 + 208) + 8 * v3++));
      }

      while (v3 < *(v1 + 220));
    }

    sub_1000BFEC4(*(v1 + 208));
    if (*(v1 + 220) >= 1)
    {
      v4 = 0;
      do
      {
        sub_1000BFEC4(*(*(v1 + 240) + 8 * v4++));
      }

      while (v4 < *(v1 + 220));
    }

    sub_1000BFEC4(*(v1 + 240));
    if (*(v1 + 204))
    {
      if (*(v1 + 264) >= 1)
      {
        v5 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 256) + 8 * v5++));
        }

        while (v5 < *(v1 + 264));
      }

      sub_1000BFEC4(*(v1 + 256));
    }

    if (*(v1 + 220) >= 1)
    {
      v6 = 0;
      do
      {
        sub_1000BFEC4(*(*(v1 + 272) + 8 * v6++));
      }

      while (v6 < *(v1 + 220));
    }

    v7 = *(v1 + 272);

    return sub_1000BFEC4(v7);
  }

  return result;
}

uint64_t sub_10001B6B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10001B560(result);
    sub_1000BFEC4(v1[10]);
    sub_1000BFEC4(v1[3]);
    sub_1000BFEC4(v1[6]);
    sub_1000BFEC4(v1[13]);
    sub_1000BFEC4(v1[39]);
    sub_1000BFEC4(v1[40]);
    sub_1000BFEC4(v1[17]);
    sub_1000BFEC4(v1[19]);
    sub_1000BFEC4(v1[15]);
    sub_1000C0F40(v1[38]);

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10001B744(uint64_t result)
{
  if (*(result + 204))
  {
    v1 = *(result + 264) << 8;
    if (v1 >= 1)
    {
      for (i = 0; i != v1; ++i)
      {
        v4 = *(result + 224);
        v5 = v4 - 1;
        if (v4 < 1)
        {
          LOWORD(v3) = 0;
        }

        else
        {
          v3 = 0;
          do
          {
            v6 = (v3 + v5) >> 1;
            if (*(*(*(result + 208) + ((*(*(*(result + 240) + 8 * ((v3 + v5) >> 9)) + 2 * v6) >> 5) & 0x7F8)) + 2 * *(*(*(result + 240) + 8 * ((v3 + v5) >> 9)) + 2 * v6)) >= i)
            {
              v5 = v6 - 1;
            }

            else
            {
              v3 = v6 + 1;
            }
          }

          while (v3 <= v5);
        }

        *(*(*(result + 256) + 8 * (i >> 8)) + 2 * i) = v3;
      }
    }
  }

  return result;
}

uint64_t sub_10001B7EC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFFFD)
  {
    return 0xFFFFFFLL;
  }

  v3 = *(a1 + 88);
  if (v3 <= a2)
  {
    v4 = (a2 - v3);
    if (v4 >= *(a1 + 172) << 8)
    {
      return 0xFFFFFFLL;
    }

    return *(*(*(a1 + 160) + 8 * (v4 >> 8)) + 4 * v4);
  }

  else if (*a1)
  {
    return *(a1 + 8) + a2;
  }

  else
  {
    v5 = *(a1 + 72);
    if (!v5)
    {
      v6 = *(a1 + 56);
      v7 = 0;
      v8 = v6 - 1;
      if (v6 <= 1)
      {
        v9 = *(a1 + 40);
      }

      else
      {
        v9 = *(a1 + 40);
        do
        {
          v10 = (v7 + v8 + 1) >> 1;
          if (*(v9 + 2 * v10) > a2)
          {
            v8 = v10 - 1;
          }

          else
          {
            v7 = (v7 + v8 + 1) >> 1;
          }
        }

        while (v7 < v8);
      }

      v11 = *(v9 + 2 * v7);
      v12 = *(a1 + 64);
      result = *(a1 + 8) + *(a1 + 60) * v7;
      v14 = *(a1 + 16);
      v15 = (v7 << (v12 - 3));
      v16 = *(v14 + v15);
      v17 = byte_1000F1DA4[*(v14 + v15)] + v11;
      if (v17 <= a2)
      {
        v18 = (v15 + v14 + 1);
        do
        {
          LOWORD(v11) = v17;
          result = (result + 8);
          v19 = *v18++;
          v16 = v19;
          v17 = byte_1000F1DA4[v19] + v17;
        }

        while (v17 <= a2);
      }

      v20 = byte_1000F1D9C;
      while (1)
      {
        v21 = *v20++;
        if ((v21 & v16) != 0)
        {
          if (a2 == v11)
          {
            return result;
          }

          LOWORD(v11) = v11 + 1;
        }

        result = (result + 1);
      }
    }

    return *(v5 + 4 * a2);
  }
}

uint64_t sub_10001B934(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  if (a2 >= 0xFFFE)
  {
    if (a2 == 65534)
    {
      return -2;
    }

    else
    {
      return -1;
    }
  }

  v5 = a2 - *(a1 + 92);
  if (v5 >= 0)
  {
    if (v5 > *(a1 + 292))
    {
      return 0xFFFFLL;
    }

    v7 = v5 >> 8;
    v12 = (a2 - *(a1 + 92));
    if (a3)
    {
      *a3 = *(*(*(a1 + 272) + 8 * v7) + v12);
    }

    LOWORD(v7) = *(*(*(a1 + 208) + 8 * v7) + 2 * v12);
    return v7;
  }

  v6 = *(a1 + 96);
  LODWORD(v7) = *(v6 + 2 * a2);
  if (!a3)
  {
    return v7;
  }

  v8 = a2;
  v9 = v6 - 2;
  while (1)
  {
    v10 = v8 - 1;
    if (v8 < 1)
    {
      break;
    }

    v11 = *(v9 + 2 * v8--);
    if (v7 != v11)
    {
      *a3 = a2 - (v10 + 1);
      return v7;
    }
  }

  *a3 = a2;
  return v7;
}

uint64_t sub_10001BA00(uint64_t a1, int a2)
{
  if (a2 == 0xFFFFFF)
  {
    return 0xFFFFLL;
  }

  if (*a1)
  {
    v2 = *(a1 + 8);
    LOWORD(v3) = a2 - v2;
    if (a2 < v2 || *(a1 + 88) + v2 <= a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      v6 = *(a1 + 88);
      if (v6 < 1)
      {
        goto LABEL_24;
      }

      v3 = 0;
      while (*(v5 + 4 * v3) != a2)
      {
        if (v6 == ++v3)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v7 = *(a1 + 8);
      v8 = a2 - v7;
      if (a2 < v7)
      {
        goto LABEL_24;
      }

      if (*(a1 + 12) < a2)
      {
        goto LABEL_24;
      }

      v9 = *(a1 + 16);
      if ((byte_1000F1D9C[(a2 - v7) & 7] & *(v9 + ((a2 - v7) >> 3))) == 0)
      {
        goto LABEL_24;
      }

      v10 = *(a1 + 64);
      v11 = v8 >> v10;
      v12 = *(*(a1 + 40) + 2 * (v8 >> v10)) - 1;
      v13 = v7 + *(a1 + 60) * v11;
      v14 = v13 - 1;
      v15 = (v11 << (v10 - 3));
      v16 = (v9 + v15);
      v17 = v13 + 7;
      if (v13 + 7 < a2)
      {
        v18 = v13 + 15;
        if (a2 > v13 + 15)
        {
          v18 = a2;
        }

        v19 = v18 - v13 - 8;
        if (v19 < 8)
        {
          goto LABEL_39;
        }

        v20 = 0;
        v21 = (v19 >> 3) + 1;
        v22 = 8 * (v21 & 0x3FFFFFFE);
        v17 += v22;
        v16 += v21 & 0x3FFFFFFE;
        v23 = (v15 + v9 + 1);
        v24 = v21 & 0x3FFFFFFE;
        do
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v23 += 2;
          v12 += byte_1000F1DA4[v25];
          v20 += byte_1000F1DA4[v26];
          v24 -= 2;
        }

        while (v24);
        v12 += v20;
        if ((v21 & 0x3FFFFFFE) == v21)
        {
          v14 += v22;
        }

        else
        {
LABEL_39:
          do
          {
            v32 = *v16++;
            v12 += byte_1000F1DA4[v32];
            v17 += 8;
          }

          while (v17 < a2);
          v14 = v17 - 8;
        }
      }

      LOWORD(v3) = v12 + byte_1000F1DA4[*v16 & ~(255 << (a2 - v14))];
    }
  }

  if (v3 != 0xFFFF)
  {
    return v3;
  }

LABEL_24:
  v27 = *(a1 + 176);
  v28 = v27 - 1;
  if (v27 >= 1)
  {
    v29 = 0;
    do
    {
      v30 = (v28 + v29) >> 1;
      if (*(*(*(a1 + 160) + ((*(*(*(a1 + 184) + 8 * ((v28 + v29) >> 9)) + 2 * v30) >> 5) & 0x7F8)) + 4 * *(*(*(a1 + 184) + 8 * ((v28 + v29) >> 9)) + 2 * v30)) >= a2)
      {
        v28 = v30 - 1;
      }

      else
      {
        v29 = v30 + 1;
      }
    }

    while (v29 <= v28);
    if (v29 < v27)
    {
      v31 = *(*(*(a1 + 184) + 8 * (v29 >> 8)) + 2 * v29);
      if (*(*(*(a1 + 160) + ((v31 >> 5) & 0x7F8)) + 4 * v31) == a2)
      {
        return (v31 + *(a1 + 88));
      }
    }
  }

  return 0xFFFFLL;
}

uint64_t sub_10001BC64(uint64_t a1, int a2)
{
  v2 = (a1 + 168);
  v3 = *(a1 + 176);
  if (v3 == *(a1 + 168) << 8)
  {
    goto LABEL_2;
  }

  v6 = (a1 + 172);
  v7 = *(a1 + 172) << 8;
  v8 = *(a1 + 200);
  if (v8 == v3 - 1)
  {
    v9 = *(a1 + 176);
  }

  else
  {
    v9 = 0;
  }

  if (v9 < v7)
  {
    while (*(*(*(a1 + 160) + 8 * (v9 >> 8)) + 4 * v9) != 0xFFFFFF)
    {
      if (v7 == ++v9)
      {
        v9 = *(a1 + 172) << 8;
        break;
      }
    }
  }

  v4 = *(a1 + 88) + v9;
  if (v4 > 65530)
  {
    LOWORD(v4) = 0;
    return v4;
  }

  v10 = (*(a1 + 88) + v9);
  if (v10 >= *(a1 + 288))
  {
    if (*(a1 + 204))
    {
      v11 = a2;
      v12 = *(a1 + 264);
      if (!sub_1000C06E8((a1 + 256), (a1 + 268), (a1 + 264), 8, 2, v10 + 1))
      {
LABEL_2:
        LOWORD(v4) = -1;
        return v4;
      }

      a2 = v11;
      if (v12 < *(a1 + 264))
      {
        sub_10001B744(a1);
        a2 = v11;
      }
    }

    *(a1 + 288) = v10;
    v8 = *(a1 + 200);
  }

  if (v9 > v8)
  {
    v13 = a2;
    v14 = *(a1 + 172);
    if (!sub_1000C06E8((a1 + 160), v2, v6, 8, 4, v9 + 1))
    {
      goto LABEL_2;
    }

    if (v14 < *v6)
    {
      do
      {
        memset_pattern16(*(*(a1 + 160) + 8 * v14++), &unk_1000F0D00, 0x400uLL);
      }

      while (v14 < *v6);
    }

    if (!sub_1000C06E8((a1 + 184), (a1 + 192), (a1 + 196), 8, 2, v9 + 1))
    {
      goto LABEL_2;
    }

    *(a1 + 200) = v9;
    a2 = v13;
  }

  *(*(*(a1 + 160) + 8 * (v9 >> 8)) + 4 * v9) = a2;
  v15 = *(a1 + 176);
  v16 = 0;
  v17 = v15 - 1;
  if (v15 >= 1)
  {
    do
    {
      v18 = (v17 + v16) >> 1;
      if (*(*(*(a1 + 160) + ((*(*(*(a1 + 184) + 8 * ((v17 + v16) >> 9)) + 2 * v18) >> 5) & 0x7F8)) + 4 * *(*(*(a1 + 184) + 8 * ((v17 + v16) >> 9)) + 2 * v18)) >= a2)
      {
        v17 = v18 - 1;
      }

      else
      {
        v16 = v18 + 1;
      }
    }

    while (v16 <= v17);
  }

  if (v15 > v16)
  {
    sub_1000C0C08(*(a1 + 184), *(a1 + 176), 256, 2, v16, v15 - v16, v16 + 1);
  }

  *(*(*(a1 + 184) + 8 * (v16 >> 8)) + 2 * v16) = v9;
  ++*(a1 + 176);
  return v4;
}

uint64_t sub_10001BEE0(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 92) + *(a1 + 224) > 65532)
  {
    return 0xFFFFLL;
  }

  if (*(a1 + 288) <= a2)
  {
    *(a1 + 288) = a2;
    if (*(a1 + 204))
    {
      v5 = *(a1 + 264);
      if (!sub_1000C06E8((a1 + 256), (a1 + 268), (a1 + 264), 8, 2, a2 + 1))
      {
        goto LABEL_34;
      }

      v6 = *(a1 + 264);
      if (v5 < v6)
      {
        if (*(a1 + 204))
        {
          v7 = v6 << 8;
          if (v7 >= 1)
          {
            for (i = 0; i != v7; ++i)
            {
              v10 = *(a1 + 224);
              v11 = v10 - 1;
              if (v10 < 1)
              {
                LOWORD(v9) = 0;
              }

              else
              {
                v9 = 0;
                do
                {
                  v12 = (v9 + v11) >> 1;
                  if (*(*(*(a1 + 208) + ((*(*(*(a1 + 240) + 8 * ((v9 + v11) >> 9)) + 2 * v12) >> 5) & 0x7F8)) + 2 * *(*(*(a1 + 240) + 8 * ((v9 + v11) >> 9)) + 2 * v12)) >= i)
                  {
                    v11 = v12 - 1;
                  }

                  else
                  {
                    v9 = v12 + 1;
                  }
                }

                while (v9 <= v11);
              }

              *(*(*(a1 + 256) + 8 * (i >> 8)) + 2 * i) = v9;
            }
          }
        }
      }
    }
  }

  v13 = (a1 + 220);
  v14 = *(a1 + 220);
  v15 = *(a1 + 224);
  if (sub_1000C06E8((a1 + 208), (a1 + 216), (a1 + 220), 8, 2, v15 + 1))
  {
    if (v14 < *v13)
    {
      *&v16 = -1;
      *(&v16 + 1) = -1;
      do
      {
        v17 = *(*(a1 + 208) + 8 * v14);
        v17[30] = v16;
        v17[31] = v16;
        v17[28] = v16;
        v17[29] = v16;
        v17[26] = v16;
        v17[27] = v16;
        v17[24] = v16;
        v17[25] = v16;
        v17[22] = v16;
        v17[23] = v16;
        v17[20] = v16;
        v17[21] = v16;
        v17[18] = v16;
        v17[19] = v16;
        v17[16] = v16;
        v17[17] = v16;
        v17[14] = v16;
        v17[15] = v16;
        v17[12] = v16;
        v17[13] = v16;
        v17[10] = v16;
        v17[11] = v16;
        v17[8] = v16;
        v17[9] = v16;
        v17[6] = v16;
        v17[7] = v16;
        v17[4] = v16;
        v17[5] = v16;
        v17[2] = v16;
        v17[3] = v16;
        *v17 = v16;
        v17[1] = v16;
        ++v14;
      }

      while (v14 < *v13);
    }

    if (sub_1000C06E8((a1 + 272), (a1 + 280), (a1 + 284), 8, 1, v15 + 1) && sub_1000C06E8((a1 + 240), (a1 + 248), (a1 + 252), 8, 2, v15 + 1))
    {
      if (*(a1 + 88) <= a2)
      {
        v18 = 0;
        if (!*(a1 + 204))
        {
LABEL_28:
          v19 = *(a1 + 224);
          v20 = *(a1 + 208);
          v21 = 0;
          v22 = v19 - 1;
          if (v19 >= 1)
          {
            do
            {
              v23 = (v21 + v22) >> 1;
              if (*(*(v20 + ((*(*(*(a1 + 240) + 8 * ((v21 + v22) >> 9)) + 2 * v23) >> 5) & 0x7F8)) + 2 * *(*(*(a1 + 240) + 8 * ((v21 + v22) >> 9)) + 2 * v23)) >= a2)
              {
                v22 = v23 - 1;
              }

              else
              {
                v21 = v23 + 1;
              }
            }

            while (v21 <= v22);
          }

          goto LABEL_38;
        }
      }

      else if (*(a1 + 144))
      {
        v18 = *(*(a1 + 128) + a2);
        if (!*(a1 + 204))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v34 = *(a1 + 92);
        v35 = *(a1 + 96);
        if (v34 < 1)
        {
          v36 = 0;
        }

        else
        {
          v36 = 0;
          v37 = v34 - 1;
          do
          {
            v38 = (v37 + v36) >> 1;
            if (*(v35 + 2 * v38) < a2)
            {
              v36 = v38 + 1;
            }

            else
            {
              v37 = v38 - 1;
            }
          }

          while (v36 <= v37);
        }

        if (v34 <= (v36 + 1))
        {
          v39 = v36 + 1;
        }

        else
        {
          v39 = *(a1 + 92);
        }

        v40 = v36 + 1;
        v41 = v36;
        while (v40 < v34)
        {
          v42 = *(v35 + 2 * v40);
          ++v41;
          ++v40;
          if (v42 != a2)
          {
            goto LABEL_73;
          }
        }

        v41 = v39;
LABEL_73:
        v18 = v41 - v36;
        if (!*(a1 + 204))
        {
          goto LABEL_28;
        }
      }

      v21 = *(*(*(a1 + 256) + 8 * (a2 >> 8)) + 2 * a2);
      v19 = *(a1 + 224);
      v20 = *(a1 + 208);
LABEL_38:
      if (v21 < v19)
      {
        v25 = v18 + v19 - v21;
        while (*(*(v20 + ((*(*(*(a1 + 240) + 8 * (v21 >> 8)) + 2 * v21) >> 5) & 0x7F8)) + 2 * *(*(*(a1 + 240) + 8 * (v21 >> 8)) + 2 * v21)) == a2)
        {
          ++v18;
          if (v19 == ++v21)
          {
            v18 = v25;
            v21 = v19;
            break;
          }
        }
      }

      v26 = *(a1 + 292);
      if (v26 < 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = 0;
        v28 = v26 + 1;
        while (*(*(v20 + 8 * (v27 >> 8)) + 2 * v27) != -1)
        {
          if (v28 == ++v27)
          {
            v27 = v28;
            break;
          }
        }
      }

      v29 = v27 >> 8;
      *(*(v20 + 8 * v29) + 2 * v27) = a2;
      *(*(*(a1 + 272) + 8 * v29) + v27) = v18;
      for (j = *(a1 + 224); j > v21; --j)
      {
        *(*(*(a1 + 240) + 8 * (j >> 8)) + 2 * j) = *(*(*(a1 + 240) + 8 * ((j - 1) >> 8)) + 2 * (j - 1));
      }

      *(*(*(a1 + 240) + 8 * (v21 >> 8)) + 2 * v21) = v27;
      if (v27 > *(a1 + 292))
      {
        *(a1 + 292) = v27;
      }

      ++*(a1 + 224);
      v24 = *(a1 + 92) + v27;
      if (*(a1 + 204))
      {
        v31 = *(a1 + 264) << 8;
        v32 = a2 + 1;
        if ((a2 + 1) < v31)
        {
          do
          {
            v33 = *(*(a1 + 256) + 8 * (v32 >> 8));
            ++*(v33 + 2 * v32++);
          }

          while (v31 != v32);
        }
      }

      return v24;
    }
  }

LABEL_34:
  LOWORD(v24) = -1;
  return v24;
}

uint64_t sub_10001C3E0(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0xFFFD)
  {
    return 0;
  }

  v3 = *(a1 + 88);
  v4 = a2 - v3;
  if (a2 < v3)
  {
    return 0;
  }

  v6 = *(a1 + 160);
  v7 = *(v6 + 8 * (v4 >> 8));
  v8 = v4;
  v9 = *(v7 + 4 * v4);
  if (v9 != 0xFFFFFF)
  {
    v11 = *(a1 + 176);
    if (v11 <= 0)
    {
      v17 = a2;
      v18 = a3;
      v12 = 0;
      v14 = a1;
      v15 = *(a1 + 184);
    }

    else
    {
      v12 = 0;
      v13 = v11 - 1;
      v14 = a1;
      v15 = *(a1 + 184);
      do
      {
        v16 = (v13 + v12) >> 1;
        if (v9 <= *(*(v6 + ((*(v15[(v13 + v12) >> 9] + 2 * v16) >> 5) & 0x7F8)) + 4 * *(v15[(v13 + v12) >> 9] + 2 * v16)))
        {
          v13 = v16 - 1;
        }

        else
        {
          v12 = v16 + 1;
        }
      }

      while (v12 <= v13);
      v17 = a2;
      v18 = a3;
    }

    sub_1000C0C08(v15, v11, 256, 2, v12 + 1, v11 + ~v12, v12);
    *(v7 + 4 * v8) = 0xFFFFFF;
    --*(v14 + 176);
    if (v18)
    {
      v19 = v17;
      if (*(v14 + 204))
      {
        v20 = *(*(*(v14 + 256) + 8 * (v17 >> 8)) + 2 * v17);
        v21 = *(v14 + 224);
      }

      else
      {
        v21 = *(v14 + 224);
        v20 = 0;
        v24 = v21 - 1;
        if (v21 >= 1)
        {
          do
          {
            v25 = (v20 + v24) >> 1;
            if (*(*(*(v14 + 208) + ((*(*(*(v14 + 240) + 8 * ((v20 + v24) >> 9)) + 2 * v25) >> 5) & 0x7F8)) + 2 * *(*(*(v14 + 240) + 8 * ((v20 + v24) >> 9)) + 2 * v25)) >= v17)
            {
              v24 = v25 - 1;
            }

            else
            {
              v20 = v25 + 1;
            }
          }

          while (v20 <= v24);
        }
      }
    }

    else
    {
      v21 = *(v14 + 224);
      v22 = v21 - 1;
      v19 = v17;
      v20 = 0;
      if (v21 >= 1)
      {
        do
        {
          v23 = (v20 + v22) >> 1;
          if (*(*(*(v14 + 208) + ((*(*(*(v14 + 240) + 8 * ((v20 + v22) >> 9)) + 2 * v23) >> 5) & 0x7F8)) + 2 * *(*(*(v14 + 240) + 8 * ((v20 + v22) >> 9)) + 2 * v23)) >= v17)
          {
            v22 = v23 - 1;
          }

          else
          {
            v20 = v23 + 1;
          }
        }

        while (v20 <= v22);
      }
    }

    if (v20 >= v21)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      do
      {
        v27 = *(*(*(v14 + 240) + 8 * ((v20 + v26) >> 8)) + 2 * (v20 + v26)) >> 8;
        v28 = *(*(v14 + 208) + 8 * v27);
        v29 = *(*(*(v14 + 240) + 8 * ((v20 + v26) >> 8)) + 2 * (v20 + v26));
        if (*(v28 + 2 * v29) != v19)
        {
          break;
        }

        *(v28 + 2 * v29) = -1;
        *(*(*(v14 + 272) + 8 * v27) + v29) = 0;
        v30 = *(v14 + 224) - 1;
        *(v14 + 224) = v30;
        ++v26;
      }

      while (v20 < v30);
    }

    while (v20 < *(v14 + 224))
    {
      *(*(*(v14 + 240) + 8 * (v20 >> 8)) + 2 * v20) = *(*(*(v14 + 240) + 8 * ((v26 + v20) >> 8)) + 2 * (v26 + v20));
      ++v20;
    }

    if (v18)
    {
      if (*(v14 + 204))
      {
        v31 = *(v14 + 264) << 8;
        if (v31 >= 1)
        {
          for (i = 0; i != v31; ++i)
          {
            v34 = *(v14 + 224);
            v35 = v34 - 1;
            if (v34 < 1)
            {
              LOWORD(v33) = 0;
            }

            else
            {
              v33 = 0;
              do
              {
                v36 = (v33 + v35) >> 1;
                if (*(*(*(v14 + 208) + ((*(*(*(v14 + 240) + 8 * ((v33 + v35) >> 9)) + 2 * v36) >> 5) & 0x7F8)) + 2 * *(*(*(v14 + 240) + 8 * ((v33 + v35) >> 9)) + 2 * v36)) >= i)
                {
                  v35 = v36 - 1;
                }

                else
                {
                  v33 = v36 + 1;
                }
              }

              while (v33 <= v35);
            }

            *(*(*(v14 + 256) + 8 * (i >> 8)) + 2 * i) = v33;
          }
        }
      }
    }

    v37 = *(v14 + 200);
    if ((v37 & 0x80000000) == 0)
    {
      while (*(*(*(v14 + 160) + 8 * (v37 >> 8)) + 4 * v37) == 0xFFFFFF)
      {
        v38 = v37-- <= 0;
        if (v38)
        {
          v37 = -1;
          break;
        }
      }
    }

    *(v14 + 200) = v37;
    v39 = *(v14 + 292);
    if ((v39 & 0x80000000) == 0)
    {
      while (*(*(*(v14 + 208) + 8 * (v39 >> 8)) + 2 * v39) == -1)
      {
        v38 = v39-- <= 0;
        if (v38)
        {
          v39 = -1;
          break;
        }
      }
    }

    *(v14 + 292) = v39;
  }

  return 1;
}

uint64_t sub_10001C7CC(uint64_t a1)
{
  v1 = *(a1 + 200) + *(a1 + 88);
  if (v1 <= 1)
  {
    LOWORD(v1) = 1;
  }

  return v1;
}

uint64_t sub_10001C7F8(uint64_t a1, unsigned int a2, int16x8_t *a3, int a4)
{
  v4 = 0;
  if (!a3 || !a4)
  {
    return v4;
  }

  if (a2 != 65534)
  {
    if (*(a1 + 88) <= a2)
    {
      v4 = 0;
    }

    else
    {
      v6 = *(a1 + 144);
      if (v6)
      {
        v7 = *(*(a1 + 128) + a2);
        v8 = *(v6 + 2 * a2);
        v4 = 0;
        v9 = __OFSUB__(v7, 1);
        v10 = v7 - 1;
        if (v10 < 0 != v9)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v11 = *(a1 + 92);
        v12 = *(a1 + 96);
        if (v11 < 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = 0;
          v13 = v11 - 1;
          do
          {
            v14 = (v13 + v8) >> 1;
            if (*(v12 + 2 * v14) < a2)
            {
              v8 = v14 + 1;
            }

            else
            {
              v13 = v14 - 1;
            }
          }

          while (v8 <= v13);
        }

        if (v11 <= (v8 + 1))
        {
          v15 = v8 + 1;
        }

        else
        {
          v15 = *(a1 + 92);
        }

        v16 = v8 + 1;
        v17 = v8;
        while (v16 < v11)
        {
          v18 = *(v12 + 2 * v16);
          ++v17;
          ++v16;
          if (v18 != a2)
          {
            goto LABEL_29;
          }
        }

        v17 = v15;
LABEL_29:
        v4 = 0;
        v10 = v17 - v8 - 1;
        if ((v17 - v8) < 1)
        {
          goto LABEL_46;
        }
      }

      v19 = a4 - 1;
      if (a4 >= 1)
      {
        if (v10 < v19)
        {
          v19 = v10;
        }

        v20 = v19 + 1;
        v4 = v20;
        if (v19 < 3)
        {
          v21 = 0;
          v22 = v8;
LABEL_44:
          v33 = &a3->i16[v21];
          v34 = v20 - v21;
          do
          {
            *v33++ = v22++;
            --v34;
          }

          while (v34);
          goto LABEL_46;
        }

        if (v19 >= 0xF)
        {
          v21 = v20 & 0x7FFFFFF0;
          v23 = vaddq_s16(vdupq_n_s16(v8), xmmword_1000F0CF0);
          v22 = v8 + (v20 & 0x7FFFFFF0);
          v24 = a3 + 1;
          v25.i64[0] = 0x8000800080008;
          v25.i64[1] = 0x8000800080008;
          v26.i64[0] = 0x10001000100010;
          v26.i64[1] = 0x10001000100010;
          v27 = v21;
          do
          {
            v24[-1] = v23;
            *v24 = vaddq_s16(v23, v25);
            v23 = vaddq_s16(v23, v26);
            v24 += 2;
            v27 -= 16;
          }

          while (v27);
          if (v21 == v20)
          {
            goto LABEL_46;
          }

          if ((v20 & 0xC) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v21 = 0;
          v22 = v8;
        }

        v28 = v21;
        v21 = v20 & 0x7FFFFFFC;
        v29 = vdup_n_s16(v22);
        v22 = v8 + (v20 & 0x7FFFFFFC);
        v30 = vadd_s16(v29, 0x3000200010000);
        v31 = (a3 + 2 * v28);
        v32 = v28 - v21;
        do
        {
          *v31++ = v30;
          v30 = vadd_s16(v30, 0x4000400040004);
          v32 += 4;
        }

        while (v32);
        if (v21 == v20)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

LABEL_46:
    if (*(a1 + 204))
    {
      v35 = *(*(*(a1 + 256) + 8 * (a2 >> 8)) + 2 * a2);
      v36 = *(a1 + 224);
    }

    else
    {
      v36 = *(a1 + 224);
      v35 = 0;
      v37 = v36 - 1;
      if (v36 >= 1)
      {
        do
        {
          v38 = (v35 + v37) >> 1;
          if (*(*(*(a1 + 208) + ((*(*(*(a1 + 240) + 8 * ((v35 + v37) >> 9)) + 2 * v38) >> 5) & 0x7F8)) + 2 * *(*(*(a1 + 240) + 8 * ((v35 + v37) >> 9)) + 2 * v38)) >= a2)
          {
            v37 = v38 - 1;
          }

          else
          {
            v35 = v38 + 1;
          }
        }

        while (v35 <= v37);
      }
    }

    if (v35 < v36 && v4 < a4)
    {
      v4 = v4;
      do
      {
        v40 = *(*(*(a1 + 240) + 8 * (v35 >> 8)) + 2 * v35);
        if (*(*(*(a1 + 208) + ((v40 >> 5) & 0x7F8)) + 2 * *(*(*(a1 + 240) + 8 * (v35 >> 8)) + 2 * v35)) != a2)
        {
          break;
        }

        a3->i16[v4++] = v40 + *(a1 + 92);
        if (++v35 >= *(a1 + 224))
        {
          break;
        }
      }

      while (v4 < a4);
    }

    return v4;
  }

  if (a4 >= 1)
  {
    a3->i16[0] = -2;
  }

  return 1;
}

uint64_t sub_10001CAD8(uint64_t a1, unsigned int a2)
{
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  if (*(a1 + 88) <= a2)
  {
    v2 = 0;
    if (!*(a1 + 204))
    {
      goto LABEL_24;
    }

LABEL_8:
    v3 = *(*(*(a1 + 256) + 8 * (a2 >> 8)) + 2 * a2);
    v4 = *(a1 + 224);
    goto LABEL_29;
  }

  if (!*(a1 + 144))
  {
    v5 = *(a1 + 92);
    v6 = *(a1 + 96);
    if (v5 < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = v5 - 1;
      do
      {
        v9 = (v8 + v7) >> 1;
        if (*(v6 + 2 * v9) < a2)
        {
          v7 = v9 + 1;
        }

        else
        {
          v8 = v9 - 1;
        }
      }

      while (v7 <= v8);
    }

    if (v5 <= (v7 + 1))
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = *(a1 + 92);
    }

    v11 = v7 + 1;
    v12 = v7;
    while (v11 < v5)
    {
      v13 = *(v6 + 2 * v11);
      ++v12;
      ++v11;
      if (v13 != a2)
      {
        v2 = v12 - v7;
        if (*(a1 + 204))
        {
          goto LABEL_8;
        }

        goto LABEL_24;
      }
    }

    v2 = v10 - v7;
    if (*(a1 + 204))
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  v2 = *(*(a1 + 128) + a2);
  if (*(a1 + 204))
  {
    goto LABEL_8;
  }

LABEL_24:
  v4 = *(a1 + 224);
  v3 = 0;
  v14 = v4 - 1;
  if (v4 >= 1)
  {
    do
    {
      v15 = (v3 + v14) >> 1;
      if (*(*(*(a1 + 208) + ((*(*(*(a1 + 240) + 8 * ((v3 + v14) >> 9)) + 2 * v15) >> 5) & 0x7F8)) + 2 * *(*(*(a1 + 240) + 8 * ((v3 + v14) >> 9)) + 2 * v15)) >= a2)
      {
        v14 = v15 - 1;
      }

      else
      {
        v3 = v15 + 1;
      }
    }

    while (v3 <= v14);
  }

LABEL_29:
  if (v3 < v4)
  {
    v16 = (v2 + v4 - v3);
    while (*(*(*(a1 + 208) + ((*(*(*(a1 + 240) + 8 * (v3 >> 8)) + 2 * v3) >> 5) & 0x7F8)) + 2 * *(*(*(a1 + 240) + 8 * (v3 >> 8)) + 2 * v3)) == a2)
    {
      v2 = (v2 + 1);
      if (v4 == ++v3)
      {
        return v16;
      }
    }
  }

  return v2;
}

BOOL sub_10001CC98(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFFFD)
  {
    return 1;
  }

  v3 = *(a1 + 88);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 != v4)
  {
    return 1;
  }

  if (v5 <= *(a1 + 200))
  {
    return *(*(*(a1 + 160) + 8 * (v5 >> 8)) + 4 * v5) != 0xFFFFFF;
  }

  return 0;
}

uint64_t sub_10001CCF8(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFFFD)
  {
    return 1;
  }

  v3 = a2 - *(a1 + 92);
  if (v3 < 0)
  {
    return *(*(a1 + 96) + 2 * a2) != -1;
  }

  if (v3 >= *(a1 + 220) << 8)
  {
    return 0;
  }

  return *(*(*(a1 + 208) + 8 * ((a2 - *(a1 + 92)) >> 8)) + 2 * (a2 - *(a1 + 92))) != -1;
}

uint64_t sub_10001CD6C(uint64_t a1, unsigned int a2, int a3)
{
  if (*(a1 + 88) <= a2)
  {
    LOWORD(v3) = -1;
    v6 = a3;
    if (a3 >= 0)
    {
      goto LABEL_22;
    }

    return (v3 + a3);
  }

  v3 = *(a1 + 144);
  if (!v3)
  {
    v8 = *(a1 + 92);
    v9 = *(a1 + 96);
    if (v8 < 1)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      LODWORD(v3) = 0;
      v10 = v8 - 1;
      do
      {
        v11 = (v10 + v3) >> 1;
        if (*(v9 + 2 * v11) < a2)
        {
          LODWORD(v3) = v11 + 1;
        }

        else
        {
          v10 = v11 - 1;
        }
      }

      while (v3 <= v10);
    }

    if (v8 <= v3 + 1)
    {
      v12 = v3 + 1;
    }

    else
    {
      v12 = *(a1 + 92);
    }

    v13 = v3 + 1;
    v14 = v3;
    while (v13 < v8)
    {
      v15 = *(v9 + 2 * v13);
      ++v14;
      ++v13;
      if (v15 != a2)
      {
        v6 = a3 - (v14 - v3);
        if (a3 < v14 - v3)
        {
          return (v3 + a3);
        }

        goto LABEL_22;
      }
    }

    v6 = a3 - (v12 - v3);
    if (a3 < v12 - v3)
    {
      return (v3 + a3);
    }

    goto LABEL_22;
  }

  v4 = *(*(a1 + 128) + a2);
  LOWORD(v3) = *(v3 + 2 * a2);
  v5 = __OFSUB__(a3, v4);
  v6 = a3 - v4;
  if (v6 < 0 != v5)
  {
    return (v3 + a3);
  }

LABEL_22:
  if (*(a1 + 204))
  {
    v16 = *(*(*(a1 + 256) + 8 * (a2 >> 8)) + 2 * a2);
    v17 = *(a1 + 224);
  }

  else
  {
    v17 = *(a1 + 224);
    v16 = 0;
    v18 = v17 - 1;
    if (v17 >= 1)
    {
      do
      {
        v19 = (v16 + v18) >> 1;
        if (*(*(*(a1 + 208) + ((*(*(*(a1 + 240) + 8 * ((v16 + v18) >> 9)) + 2 * v19) >> 5) & 0x7F8)) + 2 * *(*(*(a1 + 240) + 8 * ((v16 + v18) >> 9)) + 2 * v19)) >= a2)
        {
          v18 = v19 - 1;
        }

        else
        {
          v16 = v19 + 1;
        }
      }

      while (v16 <= v18);
    }
  }

  if (v16 < v17)
  {
    v20 = *(a1 + 240);
    do
    {
      v21 = *(*(v20 + 8 * (v16 >> 8)) + 2 * v16);
      if (*(*(*(a1 + 208) + ((v21 >> 5) & 0x7F8)) + 2 * *(*(v20 + 8 * (v16 >> 8)) + 2 * v16)) != a2)
      {
        break;
      }

      if (!v6)
      {
        return (v21 + *(a1 + 92));
      }

      ++v16;
      --v6;
    }

    while (v17 != v16);
  }

  return 0xFFFFLL;
}

uint64_t sub_10001CF44(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 292);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(*(*(result + 208) + 8 * (v5 >> 8)) + 2 * v5) != -1)
      {
        if (v4 >= a3)
        {
          return result;
        }

        *(a2 + 2 * v4++) = v5 + *(result + 92);
        v3 = *(result + 292);
      }
    }

    while (v5++ < v3);
  }

  return result;
}

BOOL sub_10001CFA8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 92);
  if (v3 <= a2)
  {
    return 1;
  }

  v4 = *(a1 + 112);
  if (!v4)
  {
    return 1;
  }

  v5 = *(v4 + a2);
  if (v3 <= a3 || v5 == 2)
  {
    return 1;
  }

  v8 = *(v4 + a3);
  if (v5)
  {
    return v8 != 0;
  }

  else
  {
    return v8 != 1;
  }
}

uint64_t sub_10001CFF4(uint64_t a1)
{
  v2 = sub_1000BD6C8(*a1, 4, 0xFFFFFFFF);
  v3 = sub_1000BD6C8(*(a1 + 8), 4, v2);
  v4 = sub_1000BD6C8(*(a1 + 12), 4, v3);
  v5 = *(a1 + 16);
  if (v5)
  {
    LODWORD(v4) = sub_1000BD7F4(v5, 1, *(a1 + 32), v4);
  }

  v6 = sub_1000BD6C8(*(a1 + 32), 4, v4);
  v7 = *(a1 + 40);
  if (v7)
  {
    LODWORD(v6) = sub_1000BD7F4(v7, 2, *(a1 + 56), v6);
  }

  v8 = sub_1000BD6C8(*(a1 + 56), 4, v6);
  v9 = sub_1000BD6C8(*(a1 + 60), 4, v8);
  v10 = sub_1000BD6C8(*(a1 + 64), 4, v9);
  v11 = *(a1 + 72);
  if (v11)
  {
    LODWORD(v10) = sub_1000BD7F4(v11, 4, *(a1 + 88), v10);
  }

  v12 = sub_1000BD6C8(*(a1 + 88), 4, v10);
  v13 = sub_1000BD6C8(*(a1 + 92), 4, v12);
  v14 = *(a1 + 96);
  if (v14)
  {
    v13 = sub_1000BD7F4(v14, 2, *(a1 + 92), v13);
  }

  v15 = *(a1 + 128);
  if (v15)
  {
    v13 = sub_1000BD7F4(v15, 1, *(a1 + 88), v13);
  }

  v16 = *(a1 + 144);
  if (!v16)
  {
    return v13;
  }

  v17 = *(a1 + 88);

  return sub_1000BD7F4(v16, 2, v17, v13);
}

uint64_t sub_10001D15C(uint64_t a1)
{
  v2 = sub_10001CFF4(a1);
  if (*(a1 + 160) && *(a1 + 172) >= 1)
  {
    v3 = 0;
    do
    {
      v2 = sub_1000BD7F4(*(*(a1 + 160) + 8 * v3++), 4, 256, v2);
    }

    while (v3 < *(a1 + 172));
  }

  v4 = sub_1000BD6C8(*(a1 + 168), 4, v2);
  v5 = sub_1000BD6C8(*(a1 + 172), 4, v4);
  v6 = sub_1000BD6C8(*(a1 + 176), 4, v5);
  v7 = sub_1000BD6C8(*(a1 + 200), 4, v6);
  if (*(a1 + 208) && *(a1 + 220) >= 1)
  {
    v8 = 0;
    do
    {
      v7 = sub_1000BD7F4(*(*(a1 + 208) + 8 * v8++), 2, 256, v7);
    }

    while (v8 < *(a1 + 220));
  }

  v9 = sub_1000BD6C8(*(a1 + 216), 4, v7);
  v10 = sub_1000BD6C8(*(a1 + 220), 4, v9);
  v11 = sub_1000BD6C8(*(a1 + 224), 4, v10);
  if (*(a1 + 252) >= 1)
  {
    v12 = 0;
    do
    {
      v11 = sub_1000BD7F4(*(*(a1 + 240) + 8 * v12++), 2, 256, v11);
    }

    while (v12 < *(a1 + 252));
  }

  LODWORD(v13) = *(a1 + 264);
  if (*(a1 + 256))
  {
    v14 = v13 < 1;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = 0;
    do
    {
      v11 = sub_1000BD7F4(*(*(a1 + 256) + 8 * v15++), 2, 256, v11);
      v13 = *(a1 + 264);
    }

    while (v15 < v13);
  }

  v16 = sub_1000BD6C8(v13, 4, v11);
  v17 = sub_1000BD6C8(*(a1 + 268), 4, v16);
  if (*(a1 + 272) && *(a1 + 284) >= 1)
  {
    v18 = 0;
    do
    {
      v17 = sub_1000BD7F4(*(*(a1 + 272) + 8 * v18++), 1, 256, v17);
    }

    while (v18 < *(a1 + 284));
  }

  v19 = sub_1000BD6C8(*(a1 + 288), 4, v17);
  v20 = *(a1 + 292);

  return sub_1000BD6C8(v20, 4, v19);
}

uint64_t sub_10001D380(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_1000BCAA0(a2, "bacm0", a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_1000BCBAC(v4, *(a1 + 204)) && sub_1000BCBAC(v5, *(a1 + 168)) && sub_1000BCBAC(v5, *(a1 + 172)) && sub_1000BCBAC(v5, *(a1 + 192)) && sub_1000BCBAC(v5, *(a1 + 196)) && sub_1000BCBAC(v5, *(a1 + 176)) && sub_1000BCBAC(v5, *(a1 + 200)) && sub_1000BCBAC(v5, *(a1 + 216)) && sub_1000BCBAC(v5, *(a1 + 220)) && sub_1000BCBAC(v5, *(a1 + 248)) && sub_1000BCBAC(v5, *(a1 + 252)) && sub_1000BCBAC(v5, *(a1 + 280)) && sub_1000BCBAC(v5, *(a1 + 284)) && sub_1000BCBAC(v5, *(a1 + 224)) && sub_1000BCBAC(v5, *(a1 + 228)) && sub_1000BCBAC(v5, *(a1 + 232)) && sub_1000BCBAC(v5, *(a1 + 268)) && sub_1000BCBAC(v5, *(a1 + 264)) && sub_1000BCBAC(v5, *(a1 + 288)) && sub_1000BCBAC(v5, *(a1 + 292)) && sub_1000BCBAC(v5, *(a1 + 296)) && sub_1000BCE4C(v5, *(a1 + 160), *(a1 + 172), 0x100u, 4) && sub_1000BCE4C(v5, *(a1 + 184), *(a1 + 196), 0x100u, 2) && sub_1000BCE4C(v5, *(a1 + 208), *(a1 + 220), 0x100u, 2) && sub_1000BCE4C(v5, *(a1 + 240), *(a1 + 252), 0x100u, 2) && sub_1000BCE4C(v5, *(a1 + 272), *(a1 + 284), 0x100u, 1) && (!*(a1 + 204) || sub_1000BCE4C(v5, *(a1 + 256), *(a1 + 264), 0x100u, 2)))
  {
    sub_1000BCB64(v5);
    return 1;
  }

  else
  {
    sub_1000BCB64(v5);
    return 0;
  }
}

uint64_t sub_10001D5F8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000BBAE0(a2, "bacm0", a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v11 = *(a1 + 264);
  v12 = *(a1 + 268);
  v29 = 0;
  if (!sub_1000BBD04(v9, &v30))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v40))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v39))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v38 + 4))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v38))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v37 + 4))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v37))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v36 + 4))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v36))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v35 + 4))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v35))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v34 + 4))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v34))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v33 + 4))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v33))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v32 + 4))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v32))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v31 + 4))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v31))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v30 + 4))
  {
    goto LABEL_52;
  }

  if (!sub_1000BBD54(v10, &v29))
  {
    goto LABEL_52;
  }

  if (*(a1 + 160))
  {
    goto LABEL_52;
  }

  if (*(a1 + 184))
  {
    goto LABEL_52;
  }

  if (*(a1 + 208))
  {
    goto LABEL_52;
  }

  if (*(a1 + 240))
  {
    goto LABEL_52;
  }

  if (*(a1 + 272))
  {
    goto LABEL_52;
  }

  if (*(a1 + 204) != v30)
  {
    goto LABEL_52;
  }

  v13 = v29;
  if (v13 != sub_10001CFF4(a1))
  {
    goto LABEL_52;
  }

  v14 = v30;
  v15 = v40;
  v16 = HIDWORD(v38);
  v17 = v39;
  *(a1 + 168) = v40;
  *(a1 + 172) = v17;
  v18 = v38;
  *(a1 + 192) = v16;
  *(a1 + 196) = v18;
  v19 = v37;
  *(a1 + 176) = HIDWORD(v37);
  *(a1 + 200) = v19;
  *(a1 + 204) = v14;
  v20 = v36;
  *(a1 + 216) = HIDWORD(v36);
  *(a1 + 220) = v20;
  v21 = v35;
  *(a1 + 248) = HIDWORD(v35);
  *(a1 + 252) = v21;
  v22 = v34;
  *(a1 + 280) = HIDWORD(v34);
  *(a1 + 284) = v22;
  v23 = v33;
  *(a1 + 224) = HIDWORD(v33);
  *(a1 + 228) = v23;
  v24 = v32;
  *(a1 + 232) = HIDWORD(v32);
  *(a1 + 268) = v24;
  v25 = v31;
  *(a1 + 264) = HIDWORD(v31);
  *(a1 + 288) = v25;
  *(a1 + 292) = HIDWORD(v30);
  *(a1 + 296) = v29;
  v28 = 0;
  if (!sub_1000BC6E0(v10, (a1 + 160), v15, 256, 4, &v28) || *(a1 + 160) && v28 != *(a1 + 172))
  {
    goto LABEL_52;
  }

  v28 = 0;
  if (!sub_1000BC6E0(v10, (a1 + 184), *(a1 + 192), 256, 2, &v28) || *(a1 + 184) && v28 != *(a1 + 196))
  {
    goto LABEL_52;
  }

  v28 = 0;
  if (!sub_1000BC6E0(v10, (a1 + 208), *(a1 + 216), 256, 2, &v28) || *(a1 + 208) && v28 != *(a1 + 220))
  {
    goto LABEL_52;
  }

  v28 = 0;
  if (!sub_1000BC6E0(v10, (a1 + 240), *(a1 + 248), 256, 2, &v28) || *(a1 + 240) && v28 != *(a1 + 252))
  {
    goto LABEL_52;
  }

  v28 = 0;
  if (!sub_1000BC6E0(v10, (a1 + 272), *(a1 + 280), 256, 1, &v28) || *(a1 + 272) && v28 != *(a1 + 284))
  {
    goto LABEL_52;
  }

  if (!*(a1 + 204))
  {
    goto LABEL_51;
  }

  if (v11 >= 1)
  {
    sub_1000C0B14(*(a1 + 256), v12, v11);
    *(a1 + 256) = 0;
  }

  v28 = 0;
  if (sub_1000BC6E0(v10, (a1 + 256), *(a1 + 268), 256, 2, &v28) && (!*(a1 + 256) || v28 == *(a1 + 264)))
  {
LABEL_51:
    v26 = 1;
  }

  else
  {
LABEL_52:
    v26 = 0;
  }

  sub_1000BBBC4(v10);
  return v26;
}

uint64_t *sub_10001DA44(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bacm0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(328);
  if (v10)
  {
    if (!sub_1000BBD04(v9, v10))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD04(v9, v10 + 1))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 1))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 12))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 4))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 7))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 60))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 8))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 11))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 92))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 21))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 27))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 31))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 35))
    {
      goto LABEL_48;
    }

    if (!sub_1000BBD54(v9, v10 + 268))
    {
      goto LABEL_48;
    }

    v20 = 0;
    if (!sub_1000BBF0C(v9, 1, v10 + 3, &v20))
    {
      goto LABEL_48;
    }

    v11 = v10[3];
    if (v11)
    {
      if (v20 != *(v10 + 8))
      {
        goto LABEL_48;
      }

      v10[2] = v11;
    }

    v20 = 0;
    if (sub_1000BBF0C(v9, 2, v10 + 6, &v20))
    {
      v12 = v10[6];
      if (v12)
      {
        if (v20 != *(v10 + 14))
        {
          goto LABEL_48;
        }

        v10[5] = v12;
      }

      v20 = 0;
      if (sub_1000BBF0C(v9, 4, v10 + 10, &v20))
      {
        v13 = v10[10];
        if (v13)
        {
          if (v20 != *(v10 + 22))
          {
            goto LABEL_48;
          }

          v10[9] = v13;
        }

        v20 = 0;
        if (sub_1000BBF0C(v9, 2, v10 + 13, &v20))
        {
          v14 = v10[13];
          if (v14)
          {
            if (v20 != *(v10 + 23))
            {
              goto LABEL_48;
            }

            v10[12] = v14;
          }

          v20 = 0;
          if (sub_1000BBF0C(v9, 1, v10 + 17, &v20))
          {
            v15 = v10[17];
            if (v15)
            {
              if (v20 != *(v10 + 22))
              {
                goto LABEL_48;
              }

              v10[16] = v15;
            }

            v20 = 0;
            if (sub_1000BBF0C(v9, 2, v10 + 19, &v20))
            {
              v16 = v10[19];
              if (v16)
              {
                if (v20 != *(v10 + 22))
                {
                  goto LABEL_48;
                }

                v10[18] = v16;
              }

              v20 = 0;
              if (sub_1000BBF0C(v9, 1, v10 + 15, &v20))
              {
                v17 = v10[15];
                if (!v17)
                {
                  goto LABEL_46;
                }

                if (v20 == *(v10 + 23))
                {
                  v10[14] = v17;
LABEL_46:
                  v18 = sub_10001B364(v10);
                  sub_1000BBBC4(v9);
                  if (v18)
                  {
                    *(v10 + 74) = sub_10001CFF4(v10);
                    return v10;
                  }

                  goto LABEL_49;
                }
              }
            }
          }
        }
      }
    }

LABEL_48:
    sub_1000BBBC4(v9);
LABEL_49:
    sub_10001B6B4(v10);
    return 0;
  }

  sub_1000BBBC4(v9);
  return 0;
}

uint64_t sub_10001DD84(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 32));
    sub_1000BFEC4(*(v1 + 48));
    sub_1000BFEC4(*(v1 + 56));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10001DDDC(int *a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v7 = a1[1];
  v8 = *a1;
  v9 = v7;
  v10 = a1[2];
  v11 = *a1;
  if (!a1[4])
  {
    v26 = *(a1 + 7);
    v224 = *a1;
    if (a6 || v8 <= a5)
    {
      if (v10 < 2 * v7)
      {
        v27 = 10;
        v30 = *a1;
        if (!a6)
        {
LABEL_41:
          if (2 * v8 > a5)
          {
            v12 = 0;
            if (!a1[3] || v30 > a5)
            {
              return v12;
            }
          }
        }

LABEL_44:
        if (v10 < 3 * v7)
        {
          return 1;
        }

        v39 = a3 - v30;
        v222 = (a4 & (v39 >> 31)) + v39;
        v40 = a1;
        v41 = a2;
        v42 = a6;
        v43 = a4;
        v226 = v9;
        bzero(v26, 4 * v9);
        v44 = v41;
        if (v8 <= 1)
        {
LABEL_46:
          if (v7 >= 1)
          {
            v45 = (*(v44 + 8 * v222) + 4 * v7);
            do
            {
              v46 = v26->i32[0];
              v26 = (v26 + 4);
              *v45++ = v46 / v27;
              --v7;
            }

            while (v7);
          }

          return 1;
        }

        v88 = v40;
        v89 = v42;
        v90 = v8 >> 1;
        v91 = &v26->i16[2 * v7];
        v92 = 2 * (v226 + v7);
        v218 = 2 * (v7 & 0x7FFFFFF0);
        v93 = 2 * (v7 & 0x7FFFFFFC);
        v94 = 2 * v226;
        v95 = 2 * v226 + 16;
        v96 = 1;
        while (1)
        {
          v97 = v96 + v222;
          v98 = v88[3];
          if (v89 && v98 && v97 >= (a5 - 1) % v43)
          {
            v97 = (a5 - 1) % v43;
          }

          if (v7 < 1)
          {
            goto LABEL_101;
          }

          if ((v96 + v224) > a5 && v98 != 0 && v89 == 0)
          {
            v101 = 0;
          }

          else
          {
            v101 = v39 - v96;
          }

          v102 = *(v44 + 8 * ((v43 & (v101 >> 31)) + v101));
          v103 = (v102 + v94);
          if (v97 >= v43)
          {
            v104 = v43;
          }

          else
          {
            v104 = 0;
          }

          v105 = *(v44 + 8 * (v97 - v104));
          v106 = (v105 + v94);
          if (v7 >= 4)
          {
            v107 = 0;
            v114 = v26 < v102 + v92 && v103 < v91;
            v115 = v106 >= v91 || v26 >= v105 + v92;
            if (v115 && !v114)
            {
              v116 = vdupq_n_s32(v96);
              if (v7 < 0x10)
              {
                v117 = 0;
LABEL_142:
                v103 = (v103 + v93);
                v106 = (v106 + v93);
                v127 = (v105 + v94 + 2 * v117);
                v128 = (v102 + v94 + 2 * v117);
                v129 = v117 - (v7 & 0x7FFFFFFC);
                v130 = (v26 + 4 * v117);
                do
                {
                  v131 = *v127++;
                  v132 = v131;
                  v133 = *v128++;
                  *v130 = vmlaq_s32(*v130, vsubl_s16(v132, v133), v116);
                  ++v130;
                  v129 += 4;
                }

                while (v129);
                v107 = v7 & 0x7FFFFFFC;
                if (v107 == v7)
                {
                  goto LABEL_101;
                }

                goto LABEL_121;
              }

              v118 = (v105 + v95);
              v119 = (v102 + v95);
              v120 = v26 + 2;
              v121 = v7 & 0x7FFFFFF0;
              do
              {
                v122 = *v118[-2].i8;
                v123 = *v119[-2].i8;
                v124 = vmlaq_s32(v120[-1], vsubl_high_s16(v122, v123), v116);
                v125 = vmlaq_s32(*v120, vsubl_s16(*v118, *v119), v116);
                v126 = vmlaq_s32(v120[1], vsubl_high_s16(*v118->i8, *v119->i8), v116);
                v120[-2] = vmlaq_s32(v120[-2], vsubl_s16(*v122.i8, *v123.i8), v116);
                v120[-1] = v124;
                *v120 = v125;
                v120[1] = v126;
                v120 += 4;
                v118 += 4;
                v119 += 4;
                v121 -= 16;
              }

              while (v121);
              if ((v7 & 0x7FFFFFF0) == v7)
              {
                goto LABEL_101;
              }

              v117 = v7 & 0x7FFFFFF0;
              if ((v7 & 0xC) != 0)
              {
                goto LABEL_142;
              }

              v106 = (v106 + v218);
              v103 = (v103 + v218);
              v107 = v7 & 0x7FFFFFF0;
            }
          }

          else
          {
            v107 = 0;
          }

LABEL_121:
          v108 = &v26->i32[v107];
          v109 = v7 - v107;
          do
          {
            v111 = *v106++;
            v110 = v111;
            v112 = *v103++;
            *v108++ += (v110 - v112) * v96;
            --v109;
          }

          while (v109);
LABEL_101:
          v54 = v96++ == v90;
          if (v54)
          {
            goto LABEL_46;
          }
        }
      }

      v28 = v11 / 2;
    }

    else
    {
      v27 = 10;
      if (!a1[3] || ((v28 = v11 / 2, v11 / 2 <= a5) ? (v29 = v10 < 2 * v7) : (v29 = 1), v29))
      {
LABEL_40:
        v30 = v8;
        if (!a6)
        {
          goto LABEL_41;
        }

        goto LABEL_44;
      }
    }

    v221 = a1;
    v220 = a6;
    v32 = a2;
    v219 = a3;
    v33 = a4;
    v34 = (a4 & ((a3 - v28) >> 31)) + a3 - v28;
    bzero(v26, 4 * v7);
    if (v8 <= 1)
    {
      v27 = 10;
      a2 = v32;
      a6 = v220;
      a4 = v33;
      a1 = v221;
      a3 = v219;
LABEL_37:
      if (v7 < 1)
      {
        v30 = v8;
        v9 = v7;
        if (!a6)
        {
          goto LABEL_41;
        }

        goto LABEL_44;
      }

      v9 = v7;
      v35 = (*(a2 + 8 * v34) + 2 * v7);
      v36 = v7;
      v37 = v26;
      do
      {
        v38 = v37->i32[0];
        v37 = (v37 + 4);
        *v35++ = v38 / v27;
        --v36;
      }

      while (v36);
      goto LABEL_40;
    }

    v47 = (v26 + 4 * v7);
    v48 = 2 * v7;
    v217 = 2 * (v7 & 0x7FFFFFF0);
    v49 = 2 * (v7 & 0x7FFFFFFC);
    v50 = 1;
    v27 = 10;
    a4 = v33;
    v51 = (a5 - 1) % v33;
    a2 = v32;
    a6 = v220;
    a1 = v221;
    a3 = v219;
    while (1)
    {
      v52 = v50 + v34;
      v53 = v221[3];
      if (v220 && v53 && v52 >= v51)
      {
        v52 = v51;
      }

      if (v7 < 1)
      {
        goto LABEL_51;
      }

      v54 = (v50 + v28) <= a5 || v53 == 0;
      if (!v54 && v220 == 0)
      {
        v56 = 0;
      }

      else
      {
        v56 = v34 - v50;
      }

      v57 = *(a2 + 8 * ((a4 & (v56 >> 31)) + v56));
      if (v52 >= a4)
      {
        v58 = a4;
      }

      else
      {
        v58 = 0;
      }

      v59 = *(a2 + 8 * (v52 - v58));
      if (v7 < 4)
      {
        v60 = 0;
        goto LABEL_74;
      }

      v60 = 0;
      v67 = v26 < (v57 + v48) && v57 < v47;
      v68 = v59 >= v47 || v26 >= (v59 + v48);
      if (!v68 || v67)
      {
        goto LABEL_74;
      }

      v69 = vdupq_n_s32(v50);
      if (v7 >= 0x10)
      {
        v71 = v59 + 2;
        v72 = v57 + 2;
        v73 = v7 & 0x7FFFFFF0;
        v74 = v26 + 2;
        do
        {
          v75 = *v71[-2].i8;
          v76 = *v72[-2].i8;
          v77 = vmlaq_s32(v74[-1], vsubl_high_s16(v75, v76), v69);
          v78 = vmlaq_s32(*v74, vsubl_s16(*v71, *v72), v69);
          v79 = vmlaq_s32(v74[1], vsubl_high_s16(*v71->i8, *v72->i8), v69);
          v74[-2] = vmlaq_s32(v74[-2], vsubl_s16(*v75.i8, *v76.i8), v69);
          v74[-1] = v77;
          *v74 = v78;
          v74[1] = v79;
          v74 += 4;
          v71 += 4;
          v72 += 4;
          v73 -= 16;
        }

        while (v73);
        if ((v7 & 0x7FFFFFF0) == v7)
        {
          goto LABEL_51;
        }

        v70 = v7 & 0x7FFFFFF0;
        if ((v7 & 0xC) == 0)
        {
          v59 = (v59 + v217);
          v57 = (v57 + v217);
          v60 = v7 & 0x7FFFFFF0;
LABEL_74:
          v61 = &v26->i32[v60];
          v62 = v7 - v60;
          do
          {
            v64 = v59->i16[0];
            v59 = (v59 + 2);
            v63 = v64;
            v65 = v57->i16[0];
            v57 = (v57 + 2);
            *v61++ += (v63 - v65) * v50;
            --v62;
          }

          while (v62);
          goto LABEL_51;
        }
      }

      else
      {
        v70 = 0;
      }

      v80 = (v57 + v49);
      v81 = (v59 + 2 * v70);
      v82 = (v57 + 2 * v70);
      v83 = (v26 + 4 * v70);
      v84 = v70 - (v7 & 0x7FFFFFFC);
      do
      {
        v85 = *v81++;
        v86 = v85;
        v87 = *v82++;
        *v83 = vmlaq_s32(*v83, vsubl_s16(v86, v87), v69);
        ++v83;
        v84 += 4;
      }

      while (v84);
      v60 = v7 & 0x7FFFFFFC;
      v57 = v80;
      v59 = (v59 + v49);
      if (v60 != v7)
      {
        goto LABEL_74;
      }

LABEL_51:
      if (v50 == 1)
      {
        v27 = 2;
      }

      else
      {
        v27 += 2 * v50 * v50;
      }

      v54 = v50++ == v28;
      if (v54)
      {
        goto LABEL_37;
      }
    }
  }

  if (a6 || 2 * v8 <= a5 || (v12 = 0, a1[3]) && v11 <= a5)
  {
    v13 = (a4 & ((a3 - v11) >> 31)) + a3 - v11;
    v14 = 2 * v7;
    if (v10 >= 2 * v7 && v7 >= 1)
    {
      v15 = *(a2 + 8 * v13);
      v16 = *(*(a1 + 3) + 2 * v8);
      v17 = v7;
      v18 = a1[1];
      do
      {
        v15[v17++] = (*v15 * v16 + 0x2000) >> 14;
        --v18;
      }

      while (v18);
    }

    v19 = v10 < 3 * v7 || v7 < 1;
    v20 = v19;
    if (!v19)
    {
      LODWORD(v21) = 0;
      v22 = *(a2 + 8 * v13);
      v23 = (v22 + 2 * v14);
      v24 = *(*(a1 + 5) + 2 * v8);
      if (v7 < 4 || v14 < 0x10)
      {
        v31 = *(a2 + 8 * v13);
        goto LABEL_158;
      }

      if (v7 < 0x10)
      {
        v25 = 0;
        goto LABEL_153;
      }

      v25 = v7 & 0x7FFFFFF0;
      v134 = vdupq_n_s16(v24);
      v135 = v25;
      v136 = *(a2 + 8 * v13);
      do
      {
        v137 = (v136 + 2 * v14);
        v138 = *v136;
        v139 = v136[1];
        v136 += 2;
        *v137 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v134.i8, *v138.i8), 0xEuLL), vmull_high_s16(v134, v138), 0xEuLL);
        v137[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v134.i8, *v139.i8), 0xEuLL), vmull_high_s16(v134, v139), 0xEuLL);
        v135 -= 16;
      }

      while (v135);
      if (v25 != v7)
      {
        if ((v7 & 0xC) == 0)
        {
          v31 = (v22 + 2 * v25);
          v23 += v25;
          LODWORD(v21) = v7 & 0x7FFFFFF0;
          goto LABEL_158;
        }

LABEL_153:
        v21 = v7 & 0x7FFFFFFC;
        v23 += v21;
        v31 = (v22 + 2 * v21);
        v140 = (v22 + 2 * v25);
        v141 = v25 - v21;
        v142 = vdup_n_s16(v24);
        do
        {
          *(v140 + 2 * v14) = vrshrn_n_s32(vmull_s16(v142, *v140), 0xEuLL);
          ++v140;
          v141 += 4;
        }

        while (v141);
        if (v21 == v7)
        {
          goto LABEL_160;
        }

LABEL_158:
        v143 = v7 - v21;
        do
        {
          v144 = *v31++;
          *v23++ = (v144 * v24 + 0x2000) >> 14;
          --v143;
        }

        while (v143);
      }
    }

LABEL_160:
    if (v8 >= 1)
    {
      v145 = (v7 - 1);
      v225 = 2 * (v14 + v145);
      v146 = 2 * v145 + 2;
      v223 = 2 * (v7 + v145);
      v147 = v7 & 0x7FFFFFF8;
      v148 = 2 * v147;
      v149 = 1;
      while (1)
      {
        v150 = a1[3];
        v151 = v150 != 0;
        if (!a6)
        {
          v151 = 0;
        }

        if (v150)
        {
          v152 = a6 != 0;
        }

        else
        {
          v152 = 1;
        }

        if (v151 && v149 > a5)
        {
          v153 = a5;
        }

        else
        {
          v153 = v149;
        }

        v154 = v153 + v13;
        if (v154 >= a4)
        {
          v155 = a4;
        }

        else
        {
          v155 = 0;
        }

        v156 = v154 - v155;
        v157 = v149 + v8;
        if (v149 + v8 <= a5)
        {
          v152 = 1;
        }

        if (v152)
        {
          v158 = v13 - v149;
        }

        else
        {
          v158 = 0;
        }

        v159 = (a4 & (v158 >> 31)) + v158;
        if (v10 >= v14)
        {
          if (v7 < 1)
          {
            goto LABEL_162;
          }

          v160 = *(a2 + 8 * v13);
          v161 = *(a1 + 3);
          v162 = *(v161 + 2 * (v8 - v149));
          v163 = *(v161 + 2 * v157);
          v164 = *(a2 + 8 * v159);
          v165 = (v160 + 2 * v7);
          v166 = *(a2 + 8 * v156);
          v167 = 4 * v163;
          v168 = 4 * v162;
          if (v7 < 8)
          {
            v169 = 0;
LABEL_183:
            v170 = v165;
            v171 = *(a2 + 8 * v159);
            v172 = *(a2 + 8 * v156);
LABEL_184:
            v173 = v7 - v169;
            do
            {
              v174 = *v172++;
              v175 = v167 * v174;
              v176 = *v171++;
              v170->i16[0] += (v175 + v168 * v176 + 0x8000) >> 16;
              v170 = (v170 + 2);
              --v173;
            }

            while (v173);
            goto LABEL_186;
          }

          v169 = 0;
          v205 = v160 + v223 + 2;
          v207 = v165 < &v164->i8[v146] && v164 < v205;
          v208 = v166 >= v205 || v165 >= &v166->i8[v146];
          if (!v208 || v207)
          {
            goto LABEL_183;
          }

          v170 = (v165 + v148);
          v171 = &v164->i16[v148 / 2];
          v172 = &v166->i16[v148 / 2];
          v209 = vdupq_n_s32(v167);
          v210 = vdupq_n_s32(v168);
          v211 = v7 & 0x7FFFFFF8;
          do
          {
            v212 = *v166++;
            v213 = vmovl_high_s16(v212);
            v214 = vmulq_s32(v209, vmovl_s16(*v212.i8));
            v215 = *v164++;
            *v165 = vaddq_s16(*v165, vraddhn_high_s32(vraddhn_s32(vmlaq_s32(v214, v210, vmovl_s16(*v215.i8)), 0), vmlaq_s32(vmulq_s32(v209, v213), v210, vmovl_high_s16(v215)), 0));
            ++v165;
            v211 -= 8;
          }

          while (v211);
          v169 = v7 & 0x7FFFFFF8;
          if (v147 != v7)
          {
            goto LABEL_184;
          }
        }

LABEL_186:
        if ((v20 & 1) == 0)
        {
          v177 = *(a2 + 8 * v13);
          v178 = *(a1 + 5);
          v179 = *(v178 + 2 * (v8 - v149));
          v180 = *(v178 + 2 * v157);
          v181 = *(a2 + 8 * v159);
          v182 = (v177 + 4 * v7);
          v183 = *(a2 + 8 * v156);
          v184 = 4 * v180;
          v185 = 4 * v179;
          if (v7 < 8)
          {
            v186 = 0;
            goto LABEL_189;
          }

          v186 = 0;
          v194 = v177 + v225 + 2;
          v196 = v182 < &v181->i8[v146] && v181 < v194;
          v197 = v183 >= v194 || v182 >= &v183->i8[v146];
          if (!v197 || v196)
          {
LABEL_189:
            v187 = v182;
            v188 = v181;
            v189 = v183;
          }

          else
          {
            v187 = (v182 + v148);
            v188 = (v181 + v148);
            v189 = (v183 + v148);
            v198 = vdupq_n_s32(v184);
            v199 = vdupq_n_s32(v185);
            v200 = v7 & 0x7FFFFFF8;
            do
            {
              v201 = *v183++;
              v202 = vmovl_high_s16(v201);
              v203 = vmulq_s32(v198, vmovl_s16(*v201.i8));
              v204 = *v181++;
              *v182 = vaddq_s16(*v182, vraddhn_high_s32(vraddhn_s32(vmlaq_s32(v203, v199, vmovl_s16(*v204.i8)), 0), vmlaq_s32(vmulq_s32(v198, v202), v199, vmovl_high_s16(v204)), 0));
              ++v182;
              v200 -= 8;
            }

            while (v200);
            v186 = v7 & 0x7FFFFFF8;
            if (v147 == v7)
            {
              goto LABEL_162;
            }
          }

          v190 = v7 - v186;
          do
          {
            v191 = v189->i16[0];
            v189 = (v189 + 2);
            v192 = v184 * v191;
            v193 = v188->i16[0];
            v188 = (v188 + 2);
            v187->i16[0] += (v192 + v185 * v193 + 0x8000) >> 16;
            v187 = (v187 + 2);
            --v190;
          }

          while (v190);
        }

LABEL_162:
        if (++v149 == v8 + 1)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  return v12;
}

uint64_t sub_10001E890(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bdf0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(64);
  if (!v10)
  {
    goto LABEL_20;
  }

  if (sub_1000BBD54(v9, v10) && sub_1000BBD54(v9, (v10 + 4)) && sub_1000BBD54(v9, (v10 + 8)) && sub_1000BBD04(v9, (v10 + 12)) && sub_1000BBD04(v9, (v10 + 16)))
  {
    if (*(v10 + 16))
    {
      v11 = (v10 + 32);
      v12 = *v10;
      v19 = 0;
      if (sub_1000BBF0C(v9, 2, (v10 + 32), &v19))
      {
        v13 = (2 * v12) | 1;
        v14 = *v11;
        if (!*v11 || v19 == v13)
        {
          if (v14)
          {
            *(v10 + 24) = v14;
          }

          v18 = 0;
          if (sub_1000BBF0C(v9, 2, (v10 + 48), &v18))
          {
            v15 = *(v10 + 48);
            if (!v15 || v18 == v13)
            {
              if (v15)
              {
                *(v10 + 40) = v15;
              }

              goto LABEL_20;
            }
          }
        }
      }

      goto LABEL_21;
    }

    v16 = sub_1000C0034(4 * *(v10 + 4));
    *(v10 + 56) = v16;
    if (v16)
    {
LABEL_20:
      sub_1000BBBC4(v9);
      return v10;
    }
  }

LABEL_21:
  sub_1000BFEC4(*(v10 + 32));
  sub_1000BFEC4(*(v10 + 48));
  sub_1000BFEC4(*(v10 + 56));
  sub_1000BFEC4(v10);
  return 0;
}

uint64_t sub_10001EA1C(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_10001EA28(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = sub_100056FB8(a1);
  result = sub_100056FF0(a1);
  if (a4 >= 0)
  {
    if (a2[5] + (((a2[5] << 14) + 0x8000) >> 16) < 0)
    {
      *(a2 + 12) = 0;
      *(a2 + 1) = 0;
      a2[4] = 0;
      a2[5] = 0;
      return result;
    }

    v19 = a2[3];
    v20 = v19 >= 0 ? a2[3] : -v19;
    if (!(v20 >> 15))
    {
      v21 = a2[4];
      if (v21 <= 1073741822)
      {
        v22 = a2[2];
        if (v22 != 0x7FFFFFFF)
        {
          v23 = a2[1];
          if (v23 >= 1)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = 0;
            result = a3 + 2;
            v28 = *a2;
            v29 = *a2 - 1;
            v30 = v29 + 2 * *a2;
            v31 = -1;
            while (1)
            {
              if (v17 < 1)
              {
                v39 = v29 + 2 * v28;
                v40 = v30 % v28;
                if (v30 % v28 < 1)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v38 = 0;
                v39 = v29 + 2 * v28;
                do
                {
                  if (*(a7 + 4 * v38) > v31 && *(a7 + 4 * v38) < v39)
                  {
                    v39 = *(a7 + 4 * v38);
                    v24 = v38;
                  }

                  ++v38;
                }

                while (v17 != v38);
                v40 = v39 % v28;
                if (v39 % v28 < 1)
                {
LABEL_38:
                  v34 = 0;
                  if (v40 < v29)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_39;
                }
              }

              if (v40 >= 6)
              {
                v41 = 6;
              }

              else
              {
                v41 = v40;
              }

              v34 = (v41 - 1) * *(a3 - 2 + 2 * v39);
              if (v40 < v29)
              {
LABEL_12:
                if (v40 >= 4)
                {
                  v32 = 4;
                }

                else
                {
                  v32 = v40;
                }

                v33 = v39;
                v34 += *(result + 2 * v39) * ~v32;
                goto LABEL_16;
              }

LABEL_39:
              v33 = v39;
LABEL_16:
              if (v34 >= 0x7FFF)
              {
                v35 = 0x7FFF;
              }

              else
              {
                v35 = v34;
              }

              if (v35 <= -32768)
              {
                v35 = -32768;
              }

              v36 = v35 * *(a5 + 2 * v33);
              v37 = (v36 + (((v36 >> 31) | 1) << (a6 - 1))) >> a6;
              if (v37 >= 0x7FFF)
              {
                v37 = 0x7FFF;
              }

              if (v37 <= -32768)
              {
                v37 = -32768;
              }

              v26 += (*(a9 + v24) - *(a8 + v24)) * v37;
              v25 += v37 * v37;
              ++v27;
              v31 = v39;
              if (v27 == v23)
              {
                v42 = (v25 + 16) >> 5;
                if (v26 < 0)
                {
                  v43 = -16;
                }

                else
                {
                  v43 = 16;
                }

                v44 = (v43 + v26) >> 5;
                v22 = a2[2];
                v21 = a2[4];
                goto LABEL_45;
              }
            }
          }

          v42 = 0;
          v44 = 0;
LABEL_45:
          v45 = v44 + v19;
          a2[3] = v45;
          if (v45 >= 0)
          {
            v46 = v45;
          }

          else
          {
            v46 = -v45;
          }

          if (!(v46 >> 15))
          {
            v47 = v42 + v21;
            a2[4] = v42 + v21;
            a2[2] = v22 + 1;
            if (v22 < 7 || v47 < 1)
            {
              *(a2 + 12) = 0;
            }

            else
            {
              v48 = (v45 << 15) / v47;
              if (v48 >= 0x7FFF)
              {
                v48 = 0x7FFF;
              }

              if (v48 <= -32768)
              {
                LOWORD(v48) = 0x8000;
              }

              *(a2 + 12) = v48;
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_10001ED1C(void *result, int *a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 12))
  {
    v9 = a3;
    v11 = result;
    v12 = sub_1000C9F54(6 * *a2, a2, a3, a4, a5, a6, a7, a8);
    v13 = v12;
    if (*a2 >= 1)
    {
      v14 = 0;
      do
      {
        *(v12 + 2 * v14) = a4[v14];
        ++v14;
      }

      while (v14 < 3 * *a2);
    }

    v15 = sub_100056FB8(v11);
    if (v15 >= 1)
    {
      v16 = v15;
      while (1)
      {
        v19 = *v9++;
        v18 = v19;
        v20 = *a2;
        v21 = v19 % *a2;
        if (v21 >= 1)
        {
          break;
        }

        v24 = 0;
        if (v21 < v20 - 1)
        {
          goto LABEL_23;
        }

LABEL_7:
        v17 = v13[v18] + (v24 >> 15);
        if (v17 >= 0x7FFF)
        {
          v17 = 0x7FFF;
        }

        if (v17 <= -32768)
        {
          LOWORD(v17) = 0x8000;
        }

        v13[v18] = v17;
        if (!--v16)
        {
          goto LABEL_30;
        }
      }

      if (v21 >= 6)
      {
        v22 = 6;
      }

      else
      {
        v22 = v21;
      }

      v23 = (v22 - 1) * *(a2 + 12);
      if (v23 >= 0x7FFF)
      {
        v23 = 0x7FFF;
      }

      if (v23 <= -32768)
      {
        v23 = -32768;
      }

      v24 = v23 * a4[v18 - 1];
      if (v21 >= v20 - 1)
      {
        goto LABEL_7;
      }

LABEL_23:
      if (v21 >= 4)
      {
        v21 = 4;
      }

      v25 = *(a2 + 12) + *(a2 + 12) * v21;
      if (v25 >= 0x7FFF)
      {
        v25 = 0x7FFF;
      }

      if (v25 <= -32768)
      {
        v25 = -32768;
      }

      v24 -= v25 * a4[v18 + 1];
      goto LABEL_7;
    }

LABEL_30:
    j__memmove(a4, v13, 6 * *a2);
    v26 = 6 * *a2;

    return sub_1000CA03C(v13, v26);
  }

  return result;
}

uint64_t sub_10001EEC0(uint64_t result, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _WORD *a6)
{
  if (result)
  {
    *a2 = *(result + 8);
    *a3 = *(result + 12);
    *a4 = *(result + 16);
    *a5 = *(result + 20);
    *a6 = *(result + 24);
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
  }

  return result;
}

uint64_t sub_10001EF08(uint64_t result, int a2, int a3, int a4, int a5, __int16 a6)
{
  if (result)
  {
    *(result + 8) = a2;
    *(result + 12) = a3;
    *(result + 16) = a4;
    *(result + 20) = a5;
    *(result + 24) = a6;
  }

  return result;
}

uint64_t sub_10001EF1C(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t sub_10001EF28(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bcw0", a2, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000C0034(28);
    if (!v10)
    {
      sub_1000BBBC4(v9);
      return 0;
    }

    if (sub_1000BBD54(v9, v10))
    {
      v11 = sub_1000BBD54(v9, (v10 + 4));
      sub_1000BBBC4(v9);
      if (v11)
      {
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        return v10;
      }
    }

    else
    {
      sub_1000BBBC4(v9);
    }

    sub_1000BFEC4(v10);
  }

  return 0;
}

uint64_t sub_10001EFF0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 80));
    sub_1000BFEC4(v1[9]);
    sub_1000BFEC4(v1[3]);
    sub_1000BFEC4(v1[7]);
    sub_1000BFEC4(v1[8]);
    sub_1000BFEC4(v1[1]);
    sub_1000BFEC4(v1[5]);

    return sub_1000BFEC4(v1);
  }

  return result;
}

void *sub_10001F068(uint64_t a1)
{
  result = memcpy(*a1, *(a1 + 32), 2 * *(a1 + 104));
  *(a1 + 120) = 0;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 2448))
    {
      if (!*(qword_1001065A8 + 2908))
      {
        *(a1 + 120) = 1;
        result = memcpy(*(a1 + 16), *(a1 + 48), 2 * *(a1 + 104));
        if (*(a1 + 104) >= 1)
        {
          v3 = 0;
          do
          {
            v4 = *(*a1 + 2 * v3);
            v5 = *(*(a1 + 16) + 2 * v3);
            *(*(a1 + 72) + 4 * v3++) = v4 * v4 + v5 * v5;
          }

          while (v3 < *(a1 + 104));
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001F11C(uint64_t result)
{
  v1 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v1 = *(qword_1001065A8 + 2448);
  }

  *(result + 120) = v1;
  return result;
}

void sub_10001F138(uint64_t a1, int a2)
{
  if (a2)
  {
    *(a1 + 132) = 0x100000001;
    bzero(*(a1 + 64), 4 * *(a1 + 104));
    *(a1 + 112) = 0;
    if (*(a1 + 120))
    {
      bzero(*(a1 + 72), 4 * *(a1 + 104));
      bzero(*(a1 + 80), 2 * *(a1 + 104));
    }

    *(a1 + 140) = 0;
  }

  else
  {
    *(a1 + 132) = 0;
    *(a1 + 136) = 0;
    *(a1 + 140) = 0;
  }
}

uint64_t sub_10001F1B8(uint64_t result, uint64_t a2, char a3)
{
  if (*(result + 136) && ((a3 & 1) != 0 || *(result + 124)))
  {
    if (*(result + 104) >= 1)
    {
      v3 = 0;
      do
      {
        *(*(result + 64) + 4 * v3) += *(a2 + 2 * v3);
        if (*(result + 120))
        {
          *(*(result + 72) + 4 * v3) += (*(a2 + 2 * v3) * *(a2 + 2 * v3)) >> *(*(result + 80) + 2 * v3);
          v4 = *(result + 72);
          v5 = *(v4 + 4 * v3);
          if (v5 >> 30)
          {
            *(v4 + 4 * v3) = v5 >> 2;
            *(*(result + 80) + 2 * v3) += 2;
          }
        }

        ++v3;
      }

      while (v3 < *(result + 104));
    }

    ++*(result + 112);
  }

  return result;
}

uint64_t sub_10001F268(uint64_t a1)
{
  if (!*(a1 + 136))
  {
    return 0;
  }

  if (*(a1 + 112) <= *(a1 + 108))
  {
    if (*(a1 + 120) && *(a1 + 104) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*a1 + 2 * v7);
        v9 = *(*(a1 + 16) + 2 * v7);
        *(*(a1 + 72) + 4 * v7++) = v8 * v8 + v9 * v9;
      }

      while (v7 < *(a1 + 104));
    }
  }

  else if (*(a1 + 104) >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(*(a1 + 64) + 4 * v2);
      if ((v3 & 0x80000000) == 0)
      {
        break;
      }

      *(*a1 + 2 * v2) = -(-v3 / *(a1 + 112));
      if (*(a1 + 120))
      {
        goto LABEL_10;
      }

LABEL_5:
      if (++v2 >= *(a1 + 104))
      {
        goto LABEL_16;
      }
    }

    *(*a1 + 2 * v2) = v3 / *(a1 + 112);
    if (!*(a1 + 120))
    {
      goto LABEL_5;
    }

LABEL_10:
    *(*(a1 + 72) + 4 * v2) /= *(a1 + 112);
    *(*(a1 + 72) + 4 * v2) <<= *(*(a1 + 80) + 2 * v2);
    v4 = *(*a1 + 2 * v2);
    v5 = *(*(a1 + 72) + 4 * v2) - v4 * v4;
    *(*(a1 + 16) + 2 * v2) = sub_10007A270(v5);
    *(*(a1 + 72) + 4 * v2) = v5;
    goto LABEL_5;
  }

LABEL_16:
  *(a1 + 136) = 0;
  return 1;
}