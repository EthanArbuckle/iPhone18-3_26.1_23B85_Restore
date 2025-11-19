uint64_t Gettype1_floatTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = 16 * *(a1 + 22);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + v10);
        v12 = *(a2 + 72);
        v13 = *(a2 + 73);
        v14 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v11, v12), 3), v12), v13);
        v15 = vminq_f32(vmaxq_f32(vrecpeq_f32(v14), v12), v13);
        v16 = vrecpsq_f32(v14, v15);
        v17 = vminq_f32(vmaxq_f32(vmulq_f32(v15, v16), v12), v13);
        v18 = vmulq_f32(v17, vrecpsq_f32(v14, v17));
        v18.i32[3] = 1.0;
        v19 = vmulq_f32(v11, v18);
        v20 = *(a2 + 75);
        v21 = vbslq_s8(*(a2 + 74), v16, v20);
        v22 = vminq_f32(vmaxq_f32(v19, v20), vdupq_laneq_s32(v21, 3));
        v23 = *(a2 + 5);
        v24 = vbslq_s8(vcgtq_f32(vandq_s8(v23, vceqq_f32(vdupq_lane_s32(*a2, 0), v20)), v20), v23, vaddq_f32(v22, vdupq_lane_s32(*a2, 1)));
        v25 = *(a2 + 50);
        v26 = vcgeq_f32(v24, v25);
        v27 = *(a2 + 21);
        v28 = vandq_s8(v27, vceqq_f32(v24, v25));
        v29 = *(a2 + 52);
        v30 = vsubq_f32(vbicq_s8(v26, *(a2 + 51)), v28);
        v31 = vcgtq_f32(*(a2 + 20), v24);
        v32 = vmulq_f32(v24, vaddq_f32(v23, vandq_s8(*(a2 + 49), v31)));
        v33 = vorrq_s8(vandq_s8(*(a2 + 19), v32), v23);
        v34 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v27, vceqq_f32(v24, v27)), vsubq_f32(v30, vandq_s8(v29, v31))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)));
        v35 = vandq_s8(v23, vcgtq_f32(v33, *(a2 + 23)));
        v36 = vaddq_f32(v34, v35);
        v37 = vsubq_f32(vsubq_f32(v33, v23), vmulq_f32(vmulq_f32(*(a2 + 24), v35), v33));
        v38 = vmulq_f32(v37, v37);
        v39 = vmulq_n_f32(vaddq_f32(v36, vmulq_f32(v37, vaddq_f32(*(a2 + 61), vmulq_f32(v37, vaddq_f32(vaddq_f32(vmulq_f32(v38, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v37))), vaddq_f32(*(a2 + 59), vmulq_f32(v37, *(a2 + 60)))), vmulq_f32(vmulq_f32(v38, v38), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v37)), vmulq_f32(v38, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v37)))))))))), COERCE_FLOAT(*a2));
        v40 = vminq_f32(vmaxq_f32(v39, *(a2 + 62)), *(a2 + 63));
        v41 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
        v42 = vsubq_f32(v41, vandq_s8(v23, vcgtq_f32(v41, v40)));
        v43 = vsubq_f32(v40, v42);
        v44 = vmulq_f32(v43, v43);
        v45 = vcgtq_f32(*(a2 + 70), v42);
        v46 = vbslq_s8(vcgtq_f32(v20, vsubq_f32(v22, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v21.i8, 0), vmulq_laneq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v23, vceqq_f32(v39, v39)), v20), vmulq_f32(vaddq_f32(v23, vandq_s8(*(a2 + 71), v45)), vmulq_f32(vaddq_f32(v23, vmulq_f32(v43, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v43, *(a2 + 69))), vmulq_f32(v44, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v43)), vmulq_f32(v44, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v43)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v42, vandq_s8(v29, v45)))), 0x17uLL))), v39), *a2, 3));
        v47 = *(a2 + 15);
        v48 = vbslq_s8(v47, v19, v46);
        *(v6 + v10) = vbslq_s8(v47, v19, vmulq_laneq_f32(v48, v48, 3));
        v10 += 16;
      }

      while (v9 != v10);
      ++v4;
      v5 += v7;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t Gettype2_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v16));
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v16));
      v19 = *(a2 + 17);
      v20 = *(a2 + 3);
      v21 = vmulq_f32(v14, vorrq_s8(vandq_s8(v19, v17), v20));
      v22 = vmulq_f32(v13, vorrq_s8(vandq_s8(v19, v18), v20));
      v23 = *(a2 + 74);
      v24 = *(a2 + 75);
      v25 = *(a2 + 5);
      v26 = *(a2 + 6);
      v27 = vminq_f32(vmaxq_f32(v21, v24), v25);
      v28 = vminq_f32(vmaxq_f32(v22, v24), v25);
      v29 = vdupq_lane_s32(*a2, 1);
      v30 = vmulq_f32(v26, vcvtq_f32_s32(vaddq_f32(v27, v29)));
      v31 = vmulq_f32(v26, vcvtq_f32_s32(vaddq_f32(v28, v29)));
      v14.i64[0] = vbslq_s8(v23, v14, v20).u64[0];
      v32 = vcvtq_f32_s32(vcvtq_s32_f32(v30));
      v33 = vcvtq_f32_s32(vcvtq_s32_f32(v31));
      v13.i64[0] = vbslq_s8(v23, v13, v20).u64[0];
      v35 = *(a2 + 7);
      v34 = *(a2 + 8);
      v36 = vrsqrteq_f32(vaddq_f32(v35, vsubq_f32(v30, v32)));
      v37 = vaddq_f32(v34, v32);
      v38 = vrsqrteq_f32(vaddq_f32(v35, vsubq_f32(v31, v33)));
      v39 = vaddq_f32(v34, v33);
      v40 = *(a2 + 9);
      v41 = *(a2 + 10);
      v42 = vmulq_n_f32(vsubq_f32(v37, vmulq_f32(v36, v40)), COERCE_FLOAT(*a2));
      v43 = vmulq_n_f32(vsubq_f32(v39, vmulq_f32(v38, v40)), COERCE_FLOAT(*a2));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v46 = vsubq_f32(v44, vandq_s8(v25, vcgtq_f32(v44, v42)));
      v47 = vsubq_f32(v45, vandq_s8(v25, vcgtq_f32(v45, v43)));
      v48 = vsubq_f32(v42, v46);
      v49 = vsubq_f32(v43, v47);
      v50 = vaddq_f32(v41, v46);
      v51 = vaddq_f32(v41, v47);
      v52 = *(a2 + 11);
      v53 = *(a2 + 12);
      v54 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, v48)), v53);
      v55 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, v49)), v53);
      v56 = vmaxq_f32(vaddq_f32(v50, vmulq_f32(v54, v54)), v24);
      v57 = vmaxq_f32(vaddq_f32(v51, vmulq_f32(v55, v55)), v24);
      v58 = *(a2 + 13);
      v59 = *(a2 + 14);
      v60 = vdupq_lane_s32(*(a2 + 16), 1);
      v61 = vdupq_lane_s32(*(a2 + 32), 0);
      v62 = vbslq_s8(v15, v21, vminq_f32(vmaxq_f32(vaddq_f32(v61, vbslq_s8(v15, v21, vminq_f32(vbslq_s8(vcgtq_f32(v24, vsubq_f32(v27, v60)), vdupq_lane_s32(*v14.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v56, v58), v59)), *a2, 3)), v25))), v24), v25));
      v63 = vbslq_s8(v15, v22, vminq_f32(vmaxq_f32(vaddq_f32(v61, vbslq_s8(v15, v22, vminq_f32(vbslq_s8(vcgtq_f32(v24, vsubq_f32(v28, v60)), vdupq_lane_s32(*v13.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v57, v58), v59)), *a2, 3)), v25))), v24), v25));
      v64 = (v6 + v11);
      v64[-1] = vbslq_s8(v15, v21, vmulq_laneq_f32(v62, v62, 3));
      *v64 = vbslq_s8(v15, v22, vmulq_laneq_f32(v63, v63, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v65 = 16 * v10;
    v66 = *(v7 + v65);
    v67 = *(a2 + 15);
    v68 = *(a2 + 3);
    v69 = vmulq_f32(v66, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v66, 3), *(a2 + 16)))), v68));
    v66.i64[0] = vbslq_s8(*(a2 + 74), v66, v68).u64[0];
    v70 = *(a2 + 75);
    v71 = *(a2 + 5);
    v72 = vminq_f32(vmaxq_f32(v69, v70), v71);
    v73 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v72, vdupq_lane_s32(*a2, 1))));
    v74 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
    v75 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v74), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v73, v74))), *(a2 + 9))), COERCE_FLOAT(*a2));
    v76 = vcvtq_f32_s32(vcvtq_s32_f32(v75));
    v77 = vsubq_f32(v76, vandq_s8(v71, vcgtq_f32(v76, v75)));
    v78 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v75, v77))), *(a2 + 12));
    v79 = vbslq_s8(v67, v69, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v67, v69, vminq_f32(vbslq_s8(vcgtq_f32(v70, vsubq_f32(v72, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v66.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v78, v78), vaddq_f32(*(a2 + 10), v77)), v70), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v71))), v70), v71));
    *(v6 + v65) = vbslq_s8(v67, v69, vmulq_laneq_f32(v79, v79, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype2_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v16));
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v16));
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = *(a2 + 3);
      v22 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v17, v19)), v21));
      v23 = vmulq_f32(v13, vorrq_s8(vandq_s8(v20, vmulq_f32(v18, v19)), v21));
      v24 = *(a2 + 74);
      v25 = *(a2 + 75);
      v26 = *(a2 + 5);
      v27 = *(a2 + 6);
      v28 = vminq_f32(vmaxq_f32(v22, v25), v26);
      v29 = vminq_f32(vmaxq_f32(v23, v25), v26);
      v30 = vdupq_lane_s32(*a2, 1);
      v31 = vmulq_f32(v27, vcvtq_f32_s32(vaddq_f32(v28, v30)));
      v32 = vmulq_f32(v27, vcvtq_f32_s32(vaddq_f32(v29, v30)));
      v14.i64[0] = vbslq_s8(v24, v14, v21).u64[0];
      v33 = vcvtq_f32_s32(vcvtq_s32_f32(v31));
      v34 = vcvtq_f32_s32(vcvtq_s32_f32(v32));
      v13.i64[0] = vbslq_s8(v24, v13, v21).u64[0];
      v36 = *(a2 + 7);
      v35 = *(a2 + 8);
      v37 = vrsqrteq_f32(vaddq_f32(v36, vsubq_f32(v31, v33)));
      v38 = vaddq_f32(v35, v33);
      v39 = vrsqrteq_f32(vaddq_f32(v36, vsubq_f32(v32, v34)));
      v40 = vaddq_f32(v35, v34);
      v41 = *(a2 + 9);
      v42 = *(a2 + 10);
      v43 = vmulq_n_f32(vsubq_f32(v38, vmulq_f32(v37, v41)), COERCE_FLOAT(*a2));
      v44 = vmulq_n_f32(vsubq_f32(v40, vmulq_f32(v39, v41)), COERCE_FLOAT(*a2));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v47 = vsubq_f32(v45, vandq_s8(v26, vcgtq_f32(v45, v43)));
      v48 = vsubq_f32(v46, vandq_s8(v26, vcgtq_f32(v46, v44)));
      v49 = vsubq_f32(v43, v47);
      v50 = vsubq_f32(v44, v48);
      v51 = vaddq_f32(v42, v47);
      v52 = vaddq_f32(v42, v48);
      v53 = *(a2 + 11);
      v54 = *(a2 + 12);
      v55 = vmulq_f32(vrecpeq_f32(vsubq_f32(v53, v49)), v54);
      v56 = vmulq_f32(vrecpeq_f32(vsubq_f32(v53, v50)), v54);
      v57 = vmaxq_f32(vaddq_f32(v51, vmulq_f32(v55, v55)), v25);
      v58 = vmaxq_f32(vaddq_f32(v52, vmulq_f32(v56, v56)), v25);
      v59 = *(a2 + 13);
      v60 = *(a2 + 14);
      v61 = vdupq_lane_s32(*(a2 + 16), 1);
      v62 = vdupq_lane_s32(*(a2 + 32), 0);
      v63 = vbslq_s8(v15, v22, vminq_f32(vmaxq_f32(vaddq_f32(v62, vbslq_s8(v15, v22, vminq_f32(vbslq_s8(vcgtq_f32(v25, vsubq_f32(v28, v61)), vdupq_lane_s32(*v14.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v57, v59), v60)), *a2, 3)), v26))), v25), v26));
      v64 = vbslq_s8(v15, v23, vminq_f32(vmaxq_f32(vaddq_f32(v62, vbslq_s8(v15, v23, vminq_f32(vbslq_s8(vcgtq_f32(v25, vsubq_f32(v29, v61)), vdupq_lane_s32(*v13.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v58, v59), v60)), *a2, 3)), v26))), v25), v26));
      v65 = (v6 + v11);
      v65[-1] = vbslq_s8(v15, v22, vmulq_laneq_f32(v63, v63, 3));
      *v65 = vbslq_s8(v15, v23, vmulq_laneq_f32(v64, v64, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v66 = 16 * v10;
    v67 = *(v7 + v66);
    v68 = *(a2 + 15);
    v69 = *(a2 + 3);
    v70 = vmulq_f32(v67, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v67, 3), *(a2 + 16))), *(a2 + 18))), v69));
    v67.i64[0] = vbslq_s8(*(a2 + 74), v67, v69).u64[0];
    v71 = *(a2 + 75);
    v72 = *(a2 + 5);
    v73 = vminq_f32(vmaxq_f32(v70, v71), v72);
    v74 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v73, vdupq_lane_s32(*a2, 1))));
    v75 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
    v76 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v75), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v74, v75))), *(a2 + 9))), COERCE_FLOAT(*a2));
    v77 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
    v78 = vsubq_f32(v77, vandq_s8(v72, vcgtq_f32(v77, v76)));
    v79 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v76, v78))), *(a2 + 12));
    v80 = vbslq_s8(v68, v70, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v68, v70, vminq_f32(vbslq_s8(vcgtq_f32(v71, vsubq_f32(v73, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v67.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v79, v79), vaddq_f32(*(a2 + 10), v78)), v71), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v72))), v71), v72));
    *(v6 + v66) = vbslq_s8(v68, v70, vmulq_laneq_f32(v80, v80, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype2_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = 16 * *(a1 + 22);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + v10);
        v12 = *(a2 + 15);
        v13 = vmaxq_f32(vdupq_laneq_s32(v11, 3), *(a2 + 16));
        v14 = vrecpeq_f32(v13);
        v15 = vrecpsq_f32(v14, v13);
        v16 = vmulq_f32(v14, v15);
        v17 = *(a2 + 3);
        v18 = vmulq_f32(v11, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v16, vrecpsq_f32(v16, v13))), v17));
        v17.i64[0] = vbslq_s8(*(a2 + 74), v15, v17).u64[0];
        v19 = *(a2 + 75);
        v20 = *(a2 + 5);
        v21 = vminq_f32(vmaxq_f32(v18, v19), v20);
        v22 = vbslq_s8(vcgtq_f32(vandq_s8(v20, vceqq_f32(vdupq_lane_s32(*a2, 0), v19)), v19), v20, vaddq_f32(v21, vdupq_lane_s32(*a2, 1)));
        v23 = vorrq_s8(vandq_s8(*(a2 + 19), v22), v20);
        v24 = vandq_s8(v20, vcgtq_f32(v23, *(a2 + 23)));
        v25 = vsubq_f32(vsubq_f32(v23, v20), vmulq_f32(vmulq_f32(*(a2 + 24), v24), v23));
        v26 = vmulq_f32(v25, v25);
        v27 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v22))), *(a2 + 22)), v24), vmulq_f32(v25, vaddq_f32(*(a2 + 43), vmulq_f32(v25, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v25)), vmulq_f32(v26, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v25)), vmulq_f32(v26, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v25)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
        v28 = vcvtq_f32_s32(vcvtq_s32_f32(v27));
        v29 = vsubq_f32(v28, vandq_s8(v20, vcgtq_f32(v28, v27)));
        v30 = vsubq_f32(v27, v29);
        v31 = vbslq_s8(v12, v18, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v12, v18, vminq_f32(vbslq_s8(vcgtq_f32(v19, vsubq_f32(v21, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v17.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v20, vmulq_f32(v30, vaddq_f32(*(a2 + 48), vmulq_f32(v30, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v30)), vmulq_f32(vmulq_f32(v30, v30), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v30)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v29)), 0x17uLL)), *a2, 3)), v20))), v19), v20));
        *(v7 + v10) = vbslq_s8(v12, v18, vmulq_laneq_f32(v31, v31, 3));
        v10 += 16;
      }

      while (v9 != v10);
      ++v4;
      v5 += v6;
      v7 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t Gettype2_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vrecpsq_f32(v21, v17);
      v24 = vrecpsq_f32(v22, v18);
      v25 = *(a2 + 3);
      v26 = vmulq_f32(v13, vorrq_s8(vandq_s8(v20, vmulq_f32(v21, v23)), v25));
      v27 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, v24)), v25));
      v28 = *(a2 + 75);
      v29 = *(a2 + 5);
      v30 = vdupq_lane_s32(*a2, 1);
      v31 = vminq_f32(vmaxq_f32(v26, v28), v29);
      v32 = vminq_f32(vmaxq_f32(v27, v28), v29);
      v33 = vaddq_f32(v31, v30);
      v34 = vaddq_f32(v32, v30);
      v35 = *(a2 + 19);
      v36 = *(a2 + 20);
      v37 = vorrq_s8(vandq_s8(v35, v33), v29);
      v38 = *(a2 + 21);
      v39 = *(a2 + 22);
      v40 = vorrq_s8(vandq_s8(v35, v34), v29);
      v41 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v36, v34)));
      v42 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v36, v33))), v39);
      v43 = *(a2 + 23);
      v44 = *(a2 + 24);
      v45 = vandq_s8(v29, vcgtq_f32(v37, v43));
      v46 = vandq_s8(v29, vcgtq_f32(v40, v43));
      v47 = vaddq_f32(v42, v45);
      v48 = vmulq_f32(v44, v45);
      v49 = vmulq_f32(vmulq_f32(v44, v46), v40);
      v50 = vaddq_f32(vsubq_f32(v41, v39), v46);
      v51 = vsubq_f32(vsubq_f32(v37, v29), vmulq_f32(v48, v37));
      v52 = vsubq_f32(vsubq_f32(v40, v29), v49);
      v53 = *(a2 + 25);
      v54 = *(a2 + 26);
      v55 = vaddq_f32(v53, vmulq_f32(v54, v51));
      v56 = *(a2 + 27);
      v57 = *(a2 + 28);
      v58 = vaddq_f32(v53, vmulq_f32(v54, v52));
      v59 = vaddq_f32(vaddq_f32(v56, vmulq_f32(v57, v51)), vmulq_f32(vmulq_f32(v51, v51), v55));
      v60 = *(a2 + 74);
      v61 = vmulq_n_f32(vaddq_f32(v47, vmulq_f32(v51, v59)), COERCE_FLOAT(*a2));
      v62 = vmulq_n_f32(vaddq_f32(v50, vmulq_f32(v52, vaddq_f32(vaddq_f32(v56, vmulq_f32(v57, v52)), vmulq_f32(vmulq_f32(v52, v52), v58)))), COERCE_FLOAT(*a2));
      v63 = *(a2 + 29);
      v64 = *(a2 + 30);
      v23.i64[0] = vbslq_s8(v60, v23, v25).u64[0];
      v65 = vmaxq_f32(v61, v63);
      v66 = vmaxq_f32(v62, v63);
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
      v68 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
      v69 = vsubq_f32(v67, vandq_s8(v29, vcgtq_f32(v67, v65)));
      v70 = vsubq_f32(v68, vandq_s8(v29, vcgtq_f32(v68, v66)));
      v71 = vsubq_f32(v65, v69);
      v72 = vsubq_f32(v66, v70);
      v73 = *(a2 + 31);
      v74 = *(a2 + 32);
      v24.i64[0] = vbslq_s8(v60, v24, v25).u64[0];
      v75 = vaddq_f32(v64, vmulq_f32(v73, v71));
      v76 = vmulq_f32(v72, vaddq_f32(v74, vmulq_f32(v72, vaddq_f32(v64, vmulq_f32(v73, v72)))));
      v77 = *(a2 + 33);
      v78 = vdupq_lane_s32(*(a2 + 16), 1);
      v79 = vdupq_lane_s32(*(a2 + 32), 0);
      v80 = vaddq_f32(v79, vbslq_s8(v15, v26, vminq_f32(vbslq_s8(vcgtq_f32(v28, vsubq_f32(v31, v78)), vdupq_lane_s32(*v23.f32, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v29, vmulq_f32(v71, vaddq_f32(v74, vmulq_f32(v71, v75)))), vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v69)), 0x17uLL)), *a2, 3)), v29)));
      v81 = vmaxq_f32(vaddq_f32(v79, vbslq_s8(v15, v27, vminq_f32(vbslq_s8(vcgtq_f32(v28, vsubq_f32(v32, v78)), vdupq_lane_s32(*v24.f32, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v29, v76), vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v70)), 0x17uLL)), *a2, 3)), v29))), v28);
      v82 = vbslq_s8(v15, v26, vminq_f32(vmaxq_f32(v80, v28), v29));
      v83 = vbslq_s8(v15, v27, vminq_f32(v81, v29));
      v84 = (v6 + v11);
      v84[-1] = vbslq_s8(v15, v26, vmulq_laneq_f32(v82, v82, 3));
      *v84 = vbslq_s8(v15, v27, vmulq_laneq_f32(v83, v83, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v85 = 16 * v10;
    v86 = *(v7 + v85);
    v87 = *(a2 + 15);
    v88 = vmaxq_f32(vdupq_laneq_s32(v86, 3), *(a2 + 16));
    v89 = vmulq_f32(vrecpeq_f32(v88), *(a2 + 18));
    v90 = vrecpsq_f32(v89, v88);
    v91 = *(a2 + 3);
    v92 = vmulq_f32(v86, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v89, v90)), v91));
    v91.i64[0] = vbslq_s8(*(a2 + 74), v90, v91).u64[0];
    v93 = *(a2 + 75);
    v94 = *(a2 + 5);
    v95 = vminq_f32(vmaxq_f32(v92, v93), v94);
    v96 = vaddq_f32(v95, vdupq_lane_s32(*a2, 1));
    v97 = vorrq_s8(vandq_s8(*(a2 + 19), v96), v94);
    v98 = vandq_s8(v94, vcgtq_f32(v97, *(a2 + 23)));
    v99 = vsubq_f32(vsubq_f32(v97, v94), vmulq_f32(vmulq_f32(*(a2 + 24), v98), v97));
    v100 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v96, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v96))), *(a2 + 22)), v98), vmulq_f32(v99, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(*(a2 + 28), v99)), vmulq_f32(vmulq_f32(v99, v99), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v99)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
    v102 = vsubq_f32(v101, vandq_s8(v94, vcgtq_f32(v101, v100)));
    v103 = vsubq_f32(v100, v102);
    v104 = vbslq_s8(v87, v92, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v87, v92, vminq_f32(vbslq_s8(vcgtq_f32(v93, vsubq_f32(v95, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v91.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v94, vmulq_f32(v103, vaddq_f32(*(a2 + 32), vmulq_f32(v103, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v103)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v102)), 0x17uLL)), *a2, 3)), v94))), v93), v94));
    *(v6 + v85) = vbslq_s8(v87, v92, vmulq_laneq_f32(v104, v104, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype2_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vrecpsq_f32(v21, v17);
      v24 = vrecpsq_f32(v22, v18);
      v25 = vmulq_f32(v22, v24);
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v21, v23)), v26));
      v28 = vmulq_f32(v13, vorrq_s8(vandq_s8(v20, v25), v26));
      v29 = *(a2 + 75);
      v30 = vbslq_s8(*(a2 + 74), v23, v29);
      v31 = vbslq_s8(*(a2 + 74), v24, v29);
      v32 = vminq_f32(vmaxq_f32(v27, v29), vdupq_laneq_s32(v30, 3));
      v33 = vminq_f32(vmaxq_f32(v28, v29), vdupq_laneq_s32(v31, 3));
      v34 = vdupq_lane_s32(*a2, 1);
      v35 = vaddq_f32(v32, v34);
      v36 = *(a2 + 19);
      v37 = *(a2 + 20);
      v38 = vaddq_f32(v33, v34);
      v39 = *(a2 + 5);
      v40 = vorrq_s8(vandq_s8(v36, v35), v39);
      v41 = vorrq_s8(vandq_s8(v36, v38), v39);
      v42 = *(a2 + 21);
      v43 = *(a2 + 22);
      v44 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v37, v38)));
      v45 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v35, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v37, v35))), v43);
      v46 = *(a2 + 23);
      v47 = *(a2 + 24);
      v48 = vsubq_f32(v44, v43);
      v49 = vandq_s8(v39, vcgtq_f32(v40, v46));
      v50 = vandq_s8(v39, vcgtq_f32(v41, v46));
      v51 = vaddq_f32(v45, v49);
      v52 = vsubq_f32(vsubq_f32(v40, v39), vmulq_f32(vmulq_f32(v47, v49), v40));
      v53 = vsubq_f32(vsubq_f32(v41, v39), vmulq_f32(vmulq_f32(v47, v50), v41));
      v54 = *(a2 + 25);
      v55 = *(a2 + 26);
      v56 = vaddq_f32(v54, vmulq_f32(v55, v52));
      v57 = vaddq_f32(v54, vmulq_f32(v55, v53));
      v58 = *(a2 + 27);
      v59 = *(a2 + 28);
      v60 = vmulq_n_f32(vaddq_f32(vaddq_f32(v48, v50), vmulq_f32(v53, vaddq_f32(vaddq_f32(v58, vmulq_f32(v53, v59)), vmulq_f32(vmulq_f32(v53, v53), v57)))), COERCE_FLOAT(*a2));
      v61 = *(a2 + 29);
      v62 = *(a2 + 30);
      v63 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v51, vmulq_f32(v52, vaddq_f32(vaddq_f32(v58, vmulq_f32(v52, v59)), vmulq_f32(vmulq_f32(v52, v52), v56)))), COERCE_FLOAT(*a2)), v61);
      v64 = vmaxq_f32(v60, v61);
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
      v67 = vsubq_f32(v65, vandq_s8(v39, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v66, vandq_s8(v39, vcgtq_f32(v66, v64)));
      v69 = vsubq_f32(v63, v67);
      v70 = vsubq_f32(v64, v68);
      v71 = *(a2 + 31);
      v72 = *(a2 + 32);
      v73 = vmulq_f32(v70, vaddq_f32(v72, vmulq_f32(v70, vaddq_f32(v62, vmulq_f32(v71, v70)))));
      v74 = vaddq_f32(v39, vmulq_f32(v69, vaddq_f32(v72, vmulq_f32(v69, vaddq_f32(v62, vmulq_f32(v71, v69))))));
      v75 = vcvtq_s32_f32(v68);
      v76 = *(a2 + 33);
      v77 = vdupq_lane_s32(*(a2 + 16), 1);
      v78 = vcgtq_f32(v29, vsubq_f32(v32, v77));
      v79 = vbslq_s8(vcgtq_f32(v29, vsubq_f32(v33, v77)), vdupq_lane_s32(*v31.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v39, v73), vshlq_n_s32(vaddq_s32(v76, v75), 0x17uLL)), *a2, 3));
      v80 = vdupq_lane_s32(*(a2 + 32), 0);
      v81 = vaddq_f32(v80, vbslq_s8(v15, v27, vbslq_s8(v78, vdupq_lane_s32(*v30.i8, 0), vmulq_laneq_f32(vmulq_f32(v74, vshlq_n_s32(vaddq_s32(v76, vcvtq_s32_f32(v67)), 0x17uLL)), *a2, 3))));
      v82 = vaddq_f32(v80, vbslq_s8(v15, v28, v79));
      v83 = vbslq_s8(v15, v27, v81);
      v84 = vbslq_s8(v15, v28, v82);
      v85 = (v6 + v11);
      v85[-1] = vbslq_s8(v15, v27, vmulq_laneq_f32(v83, v83, 3));
      *v85 = vbslq_s8(v15, v28, vmulq_laneq_f32(v84, v84, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v86 = 16 * v10;
    v87 = *(v7 + v86);
    v88 = *(a2 + 15);
    v89 = vmaxq_f32(vdupq_laneq_s32(v87, 3), *(a2 + 16));
    v90 = vmulq_f32(vrecpeq_f32(v89), *(a2 + 18));
    v91 = vrecpsq_f32(v90, v89);
    v92 = vmulq_f32(v87, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v90, v91)), *(a2 + 3)));
    v93 = *(a2 + 75);
    v94 = vbslq_s8(*(a2 + 74), v91, v93);
    v95 = vminq_f32(vmaxq_f32(v92, v93), vdupq_laneq_s32(v94, 3));
    v96 = vaddq_f32(v95, vdupq_lane_s32(*a2, 1));
    v97 = *(a2 + 5);
    v98 = vorrq_s8(vandq_s8(*(a2 + 19), v96), v97);
    v99 = vandq_s8(v97, vcgtq_f32(v98, *(a2 + 23)));
    v100 = vsubq_f32(vsubq_f32(v98, v97), vmulq_f32(vmulq_f32(*(a2 + 24), v99), v98));
    v101 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v96, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v96))), *(a2 + 22)), v99), vmulq_f32(v100, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v100, *(a2 + 28))), vmulq_f32(vmulq_f32(v100, v100), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v100)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v102 = vcvtq_f32_s32(vcvtq_s32_f32(v101));
    v103 = vsubq_f32(v102, vandq_s8(v97, vcgtq_f32(v102, v101)));
    v104 = vsubq_f32(v101, v103);
    v105 = vbslq_s8(v88, v92, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v88, v92, vbslq_s8(vcgtq_f32(v93, vsubq_f32(v95, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v94.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v97, vmulq_f32(v104, vaddq_f32(*(a2 + 32), vmulq_f32(v104, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v104)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v103)), 0x17uLL)), *a2, 3)))));
    *(v6 + v86) = vbslq_s8(v88, v92, vmulq_laneq_f32(v105, v105, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype2_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = 16 * *(a1 + 22);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + v10);
        v12 = *(a2 + 15);
        v13 = vmaxq_f32(vdupq_laneq_s32(v11, 3), *(a2 + 16));
        v14 = vrecpeq_f32(v13);
        v15 = vrecpsq_f32(v14, v13);
        v16 = vmulq_f32(v14, v15);
        v17 = vmulq_f32(v11, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v16, vrecpsq_f32(v16, v13))), *(a2 + 3)));
        v18 = *(a2 + 75);
        v19 = vbslq_s8(*(a2 + 74), v15, v18);
        v20 = vminq_f32(vmaxq_f32(v17, v18), vdupq_laneq_s32(v19, 3));
        v21 = *(a2 + 5);
        v22 = vbslq_s8(vcgtq_f32(vandq_s8(v21, vceqq_f32(vdupq_lane_s32(*a2, 0), v18)), v18), v21, vaddq_f32(v20, vdupq_lane_s32(*a2, 1)));
        v23 = vorrq_s8(vandq_s8(*(a2 + 19), v22), v21);
        v24 = vandq_s8(v21, vcgtq_f32(v23, *(a2 + 23)));
        v25 = vsubq_f32(vsubq_f32(v23, v21), vmulq_f32(vmulq_f32(*(a2 + 24), v24), v23));
        v26 = vmulq_f32(v25, v25);
        v27 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v22))), *(a2 + 22)), v24), vmulq_f32(v25, vaddq_f32(*(a2 + 43), vmulq_f32(v25, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v25)), vmulq_f32(v26, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v25)), vmulq_f32(v26, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v25)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
        v28 = vcvtq_f32_s32(vcvtq_s32_f32(v27));
        v29 = vsubq_f32(v28, vandq_s8(v21, vcgtq_f32(v28, v27)));
        v30 = vsubq_f32(v27, v29);
        v31 = vbslq_s8(v12, v17, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v12, v17, vbslq_s8(vcgtq_f32(v18, vsubq_f32(v20, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v19.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v21, vmulq_f32(v30, vaddq_f32(*(a2 + 48), vmulq_f32(v30, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v30)), vmulq_f32(vmulq_f32(v30, v30), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v30)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v29)), 0x17uLL)), *a2, 3)))));
        *(v7 + v10) = vbslq_s8(v12, v17, vmulq_laneq_f32(v31, v31, 3));
        v10 += 16;
      }

      while (v9 != v10);
      ++v4;
      v5 += v6;
      v7 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t Gettype2_floatTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = 16 * *(a1 + 22);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + v10);
        v12 = *(a2 + 72);
        v13 = *(a2 + 73);
        v14 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v11, v12), 3), v12), v13);
        v15 = vminq_f32(vmaxq_f32(vrecpeq_f32(v14), v12), v13);
        v16 = vrecpsq_f32(v14, v15);
        v17 = vminq_f32(vmaxq_f32(vmulq_f32(v15, v16), v12), v13);
        v18 = vmulq_f32(v17, vrecpsq_f32(v14, v17));
        v18.i32[3] = 1.0;
        v19 = vmulq_f32(v11, v18);
        v20 = *(a2 + 75);
        v21 = vbslq_s8(*(a2 + 74), v16, v20);
        v22 = vminq_f32(vmaxq_f32(v19, v20), vdupq_laneq_s32(v21, 3));
        v23 = *(a2 + 5);
        v24 = vbslq_s8(vcgtq_f32(vandq_s8(v23, vceqq_f32(vdupq_lane_s32(*a2, 0), v20)), v20), v23, vaddq_f32(v22, vdupq_lane_s32(*a2, 1)));
        v25 = *(a2 + 50);
        v26 = vcgeq_f32(v24, v25);
        v27 = *(a2 + 21);
        v28 = vandq_s8(v27, vceqq_f32(v24, v25));
        v29 = *(a2 + 52);
        v30 = vsubq_f32(vbicq_s8(v26, *(a2 + 51)), v28);
        v31 = vcgtq_f32(*(a2 + 20), v24);
        v32 = vmulq_f32(v24, vaddq_f32(v23, vandq_s8(*(a2 + 49), v31)));
        v33 = vorrq_s8(vandq_s8(*(a2 + 19), v32), v23);
        v34 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v27, vceqq_f32(v24, v27)), vsubq_f32(v30, vandq_s8(v29, v31))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)));
        v35 = vandq_s8(v23, vcgtq_f32(v33, *(a2 + 23)));
        v36 = vaddq_f32(v34, v35);
        v37 = vsubq_f32(vsubq_f32(v33, v23), vmulq_f32(vmulq_f32(*(a2 + 24), v35), v33));
        v38 = vmulq_f32(v37, v37);
        v39 = vmulq_n_f32(vaddq_f32(v36, vmulq_f32(v37, vaddq_f32(*(a2 + 61), vmulq_f32(v37, vaddq_f32(vaddq_f32(vmulq_f32(v38, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v37))), vaddq_f32(*(a2 + 59), vmulq_f32(v37, *(a2 + 60)))), vmulq_f32(vmulq_f32(v38, v38), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v37)), vmulq_f32(v38, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v37)))))))))), COERCE_FLOAT(*a2));
        v40 = vminq_f32(vmaxq_f32(v39, *(a2 + 62)), *(a2 + 63));
        v41 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
        v42 = vsubq_f32(v41, vandq_s8(v23, vcgtq_f32(v41, v40)));
        v43 = vsubq_f32(v40, v42);
        v44 = vmulq_f32(v43, v43);
        v45 = vcgtq_f32(*(a2 + 70), v42);
        v46 = vbslq_s8(vcgtq_f32(v20, vsubq_f32(v22, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v21.i8, 0), vmulq_laneq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v23, vceqq_f32(v39, v39)), v20), vmulq_f32(vaddq_f32(v23, vandq_s8(*(a2 + 71), v45)), vmulq_f32(vaddq_f32(v23, vmulq_f32(v43, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v43, *(a2 + 69))), vmulq_f32(v44, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v43)), vmulq_f32(v44, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v43)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v42, vandq_s8(v29, v45)))), 0x17uLL))), v39), *a2, 3));
        v47 = *(a2 + 15);
        v48 = vbslq_s8(v47, v19, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v47, v19, v46)));
        *(v6 + v10) = vbslq_s8(v47, v19, vmulq_laneq_f32(v48, v48, 3));
        v10 += 16;
      }

      while (v9 != v10);
      ++v4;
      v5 += v7;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t Gettype3_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v17));
      v21 = *(a2 + 17);
      v22 = vandq_s8(v21, v18);
      v23 = vandq_s8(v21, v19);
      v24 = vandq_s8(v21, v20);
      v25 = *(a2 + 3);
      v26 = vmulq_f32(v13, vorrq_s8(v22, v25));
      v27 = vmulq_f32(v14, vorrq_s8(v23, v25));
      v28 = vmulq_f32(v15, vorrq_s8(v24, v25));
      v29 = *(a2 + 75);
      v30 = *(a2 + 5);
      v31 = *(a2 + 6);
      v32 = vminq_f32(vmaxq_f32(v26, v29), v30);
      v33 = vminq_f32(vmaxq_f32(v27, v29), v30);
      v34 = *(a2 + 1);
      v35 = vminq_f32(vmaxq_f32(v28, v29), v30);
      v36 = vdupq_lane_s32(*a2, 1);
      v37 = vmulq_f32(v31, vcvtq_f32_s32(vaddq_f32(v32, v36)));
      v38 = vmulq_f32(v31, vcvtq_f32_s32(vaddq_f32(v33, v36)));
      v39 = vmulq_f32(v31, vcvtq_f32_s32(vaddq_f32(v35, v36)));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v42 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
      v43 = *(a2 + 7);
      v44 = *(a2 + 8);
      v45 = vrsqrteq_f32(vaddq_f32(v43, vsubq_f32(v37, v40)));
      v46 = vrsqrteq_f32(vaddq_f32(v43, vsubq_f32(v38, v41)));
      v47 = vaddq_f32(v44, v40);
      v48 = vrsqrteq_f32(vaddq_f32(v43, vsubq_f32(v39, v42)));
      v49 = vaddq_f32(v44, v41);
      v50 = vaddq_f32(v44, v42);
      v51 = *(a2 + 9);
      v52 = *(a2 + 10);
      v53 = vmulq_n_f32(vsubq_f32(v47, vmulq_f32(v45, v51)), COERCE_FLOAT(*a2));
      v54 = vmulq_n_f32(vsubq_f32(v49, vmulq_f32(v46, v51)), COERCE_FLOAT(*a2));
      v55 = vmulq_n_f32(vsubq_f32(v50, vmulq_f32(v48, v51)), COERCE_FLOAT(*a2));
      v56 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v57 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v59 = vsubq_f32(v56, vandq_s8(v30, vcgtq_f32(v56, v53)));
      v60 = vsubq_f32(v57, vandq_s8(v30, vcgtq_f32(v57, v54)));
      v61 = vsubq_f32(v58, vandq_s8(v30, vcgtq_f32(v58, v55)));
      v62 = *(a2 + 11);
      v63 = *(a2 + 12);
      v64 = vmulq_f32(vrecpeq_f32(vsubq_f32(v62, vsubq_f32(v53, v59))), v63);
      v65 = vmulq_f32(vrecpeq_f32(vsubq_f32(v62, vsubq_f32(v54, v60))), v63);
      v66 = vmulq_f32(vrecpeq_f32(vsubq_f32(v62, vsubq_f32(v55, v61))), v63);
      v67 = vmaxq_f32(vaddq_f32(vaddq_f32(v52, v59), vmulq_f32(v64, v64)), v29);
      v68 = vmaxq_f32(vaddq_f32(vaddq_f32(v52, v60), vmulq_f32(v65, v65)), v29);
      v69 = *(a2 + 13);
      v70 = *(a2 + 14);
      v71 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v68, v69), v70));
      v72 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(v52, v61), vmulq_f32(v66, v66)), v29), v69), v70));
      v73 = vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v67, v69), v70)), *a2, 3);
      v74 = vmulq_n_f32(v32, *&v34);
      v75 = vmulq_n_f32(v33, *&v34);
      v76 = vmulq_n_f32(v35, *&v34);
      v77 = vdupq_lane_s32(*&v34, 1);
      v78 = vminq_f32(vbslq_s8(vcgtq_f32(v29, vsubq_f32(v32, v77)), v74, v73), v30);
      v79 = vminq_f32(vbslq_s8(vcgtq_f32(v29, vsubq_f32(v33, v77)), v75, vmulq_laneq_f32(v71, *a2, 3)), v30);
      v80 = vminq_f32(vbslq_s8(vcgtq_f32(v29, vsubq_f32(v35, v77)), v76, vmulq_laneq_f32(v72, *a2, 3)), v30);
      v81 = vbslq_s8(v16, v26, v78);
      v82 = vbslq_s8(v16, v27, v79);
      v83 = vbslq_s8(v16, v28, v80);
      v84 = (v6 + v10);
      *v84 = vbslq_s8(v16, v26, vmulq_laneq_f32(v81, v81, 3));
      v84[1] = vbslq_s8(v16, v27, vmulq_laneq_f32(v82, v82, 3));
      v84[2] = vbslq_s8(v16, v28, vmulq_laneq_f32(v83, v83, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v85 = *(a2 + 15);
      v86 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16)))), *(a2 + 3)));
      v87 = *(a2 + 75);
      v88 = *(a2 + 5);
      v89 = vminq_f32(vmaxq_f32(v86, v87), v88);
      v90 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v89, vdupq_lane_s32(*a2, 1))));
      v91 = vcvtq_f32_s32(vcvtq_s32_f32(v90));
      v92 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v91), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v90, v91))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v93 = vcvtq_f32_s32(vcvtq_s32_f32(v92));
      v94 = vsubq_f32(v93, vandq_s8(v88, vcgtq_f32(v93, v92)));
      v95 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v92, v94))), *(a2 + 12));
      v96 = vbslq_s8(v85, v86, vminq_f32(vbslq_s8(vcgtq_f32(v87, vsubq_f32(v89, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v89, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v95, v95), vaddq_f32(*(a2 + 10), v94)), v87), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v88));
      *(v6 + 16 * v11++) = vbslq_s8(v85, v86, vmulq_laneq_f32(v96, v96, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v17);
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v22 = *(a2 + 17);
      v21 = *(a2 + 18);
      v23 = vandq_s8(v22, vmulq_f32(v19, v21));
      v24 = vandq_s8(v22, vmulq_f32(v20, v21));
      v25 = vandq_s8(v22, vmulq_f32(vrecpeq_f32(v18), v21));
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(v23, v26));
      v28 = vmulq_f32(v14, vorrq_s8(v24, v26));
      v29 = vmulq_f32(v15, vorrq_s8(v25, v26));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = *(a2 + 6);
      v33 = vminq_f32(vmaxq_f32(v27, v30), v31);
      v34 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v35 = *(a2 + 1);
      v36 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v37 = vdupq_lane_s32(*a2, 1);
      v38 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v33, v37)));
      v39 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v34, v37)));
      v40 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v36, v37)));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v42 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v44 = *(a2 + 7);
      v45 = *(a2 + 8);
      v46 = vrsqrteq_f32(vaddq_f32(v44, vsubq_f32(v38, v41)));
      v47 = vrsqrteq_f32(vaddq_f32(v44, vsubq_f32(v39, v42)));
      v48 = vaddq_f32(v45, v41);
      v49 = vrsqrteq_f32(vaddq_f32(v44, vsubq_f32(v40, v43)));
      v50 = vaddq_f32(v45, v42);
      v51 = vaddq_f32(v45, v43);
      v52 = *(a2 + 9);
      v53 = *(a2 + 10);
      v54 = vmulq_n_f32(vsubq_f32(v48, vmulq_f32(v46, v52)), COERCE_FLOAT(*a2));
      v55 = vmulq_n_f32(vsubq_f32(v50, vmulq_f32(v47, v52)), COERCE_FLOAT(*a2));
      v56 = vmulq_n_f32(vsubq_f32(v51, vmulq_f32(v49, v52)), COERCE_FLOAT(*a2));
      v57 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v60 = vsubq_f32(v57, vandq_s8(v31, vcgtq_f32(v57, v54)));
      v61 = vsubq_f32(v58, vandq_s8(v31, vcgtq_f32(v58, v55)));
      v62 = vsubq_f32(v59, vandq_s8(v31, vcgtq_f32(v59, v56)));
      v63 = *(a2 + 11);
      v64 = *(a2 + 12);
      v65 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v54, v60))), v64);
      v66 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v55, v61))), v64);
      v67 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v56, v62))), v64);
      v68 = vmaxq_f32(vaddq_f32(vaddq_f32(v53, v60), vmulq_f32(v65, v65)), v30);
      v69 = vmaxq_f32(vaddq_f32(vaddq_f32(v53, v61), vmulq_f32(v66, v66)), v30);
      v70 = *(a2 + 13);
      v71 = *(a2 + 14);
      v72 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v69, v70), v71));
      v73 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(v53, v62), vmulq_f32(v67, v67)), v30), v70), v71));
      v74 = vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v68, v70), v71)), *a2, 3);
      v75 = vmulq_n_f32(v33, *&v35);
      v76 = vmulq_n_f32(v34, *&v35);
      v77 = vmulq_n_f32(v36, *&v35);
      v78 = vdupq_lane_s32(*&v35, 1);
      v79 = vminq_f32(vbslq_s8(vcgtq_f32(v30, vsubq_f32(v33, v78)), v75, v74), v31);
      v80 = vminq_f32(vbslq_s8(vcgtq_f32(v30, vsubq_f32(v34, v78)), v76, vmulq_laneq_f32(v72, *a2, 3)), v31);
      v81 = vminq_f32(vbslq_s8(vcgtq_f32(v30, vsubq_f32(v36, v78)), v77, vmulq_laneq_f32(v73, *a2, 3)), v31);
      v82 = vbslq_s8(v16, v27, v79);
      v83 = vbslq_s8(v16, v28, v80);
      v84 = vbslq_s8(v16, v29, v81);
      v85 = (v6 + v10);
      *v85 = vbslq_s8(v16, v27, vmulq_laneq_f32(v82, v82, 3));
      v85[1] = vbslq_s8(v16, v28, vmulq_laneq_f32(v83, v83, 3));
      v85[2] = vbslq_s8(v16, v29, vmulq_laneq_f32(v84, v84, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v86 = *(a2 + 15);
      v87 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v88 = *(a2 + 75);
      v89 = *(a2 + 5);
      v90 = vminq_f32(vmaxq_f32(v87, v88), v89);
      v91 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v90, vdupq_lane_s32(*a2, 1))));
      v92 = vcvtq_f32_s32(vcvtq_s32_f32(v91));
      v93 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v92), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v91, v92))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v94 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
      v95 = vsubq_f32(v94, vandq_s8(v89, vcgtq_f32(v94, v93)));
      v96 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v93, v95))), *(a2 + 12));
      v97 = vbslq_s8(v86, v87, vminq_f32(vbslq_s8(vcgtq_f32(v88, vsubq_f32(v90, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v90, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v96, v96), vaddq_f32(*(a2 + 10), v95)), v88), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v89));
      *(v6 + 16 * v11++) = vbslq_s8(v86, v87, vmulq_laneq_f32(v97, v97, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v33 = *(a2 + 1);
      v34 = vdupq_lane_s32(*a2, 1);
      v35 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v36 = vcgtq_f32(vandq_s8(v31, vceqq_f32(vdupq_lane_s32(*a2, 0), v30)), v30);
      v37 = vbslq_s8(v36, v31, vaddq_f32(v32, v34));
      v38 = vbslq_s8(v36, v31, vaddq_f32(v35, v34));
      v39 = *(a2 + 19);
      v40 = *(a2 + 20);
      v41 = vorrq_s8(vandq_s8(v39, v37), v31);
      v42 = *(a2 + 21);
      v43 = *(a2 + 22);
      v44 = vorrq_s8(vandq_s8(v39, v38), v31);
      v45 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v40, v38)));
      v46 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v40, v37))), v43);
      v47 = *(a2 + 23);
      v48 = *(a2 + 24);
      v49 = vandq_s8(v31, vcgtq_f32(v41, v47));
      v50 = vandq_s8(v31, vcgtq_f32(v44, v47));
      v51 = vaddq_f32(v46, v49);
      v52 = vmulq_f32(v48, v49);
      v53 = vmulq_f32(vmulq_f32(v48, v50), v44);
      v54 = vaddq_f32(vsubq_f32(v45, v43), v50);
      v55 = vsubq_f32(vsubq_f32(v41, v31), vmulq_f32(v52, v41));
      v56 = vsubq_f32(vsubq_f32(v44, v31), v53);
      v57 = *(a2 + 37);
      v58 = *(a2 + 38);
      v59 = vmulq_f32(v55, v55);
      v60 = *(a2 + 39);
      v61 = *(a2 + 40);
      v62 = vaddq_f32(v57, vmulq_f32(v58, v55));
      v63 = vaddq_f32(v60, vmulq_f32(v61, v55));
      v64 = vaddq_f32(v60, vmulq_f32(v61, v56));
      v65 = *(a2 + 41);
      v66 = *(a2 + 42);
      v67 = vaddq_f32(v57, vmulq_f32(v58, v56));
      v68 = vaddq_f32(v65, vmulq_f32(v66, v55));
      v69 = vaddq_f32(v65, vmulq_f32(v66, v56));
      v70 = vmulq_f32(v56, v56);
      v71 = vmulq_f32(v55, vaddq_f32(v68, vmulq_f32(v59, vaddq_f32(v62, vmulq_f32(v59, v63)))));
      v72 = *(a2 + 43);
      v73 = *(a2 + 44);
      v74 = vmulq_n_f32(vaddq_f32(v54, vmulq_f32(v56, vaddq_f32(v72, vmulq_f32(v56, vaddq_f32(v69, vmulq_f32(v70, vaddq_f32(v67, vmulq_f32(v70, v64)))))))), COERCE_FLOAT(*a2));
      v75 = *(a2 + 29);
      v76 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v51, vmulq_f32(v55, vaddq_f32(v72, v71))), COERCE_FLOAT(*a2)), v75);
      v77 = vmaxq_f32(v74, v75);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v31, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v31, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = vaddq_f32(v73, vmulq_f32(v84, v82));
      v87 = vaddq_f32(v73, vmulq_f32(v84, v83));
      v88 = *(a2 + 47);
      v89 = *(a2 + 48);
      v90 = *(a2 + 33);
      v91 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v82, vaddq_f32(v89, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v88)), vmulq_f32(vmulq_f32(v82, v82), v86)))))), vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v80)), 0x17uLL));
      v92 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v83, vaddq_f32(v89, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v88, v83)), vmulq_f32(vmulq_f32(v83, v83), v87)))))), vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v81)), 0x17uLL));
      v93 = vmulq_n_f32(v32, *&v33);
      v94 = vmulq_n_f32(v35, *&v33);
      v95 = vdupq_lane_s32(*&v33, 1);
      v96 = vminq_f32(vbslq_s8(vcgtq_f32(v30, vsubq_f32(v32, v95)), v93, vmulq_laneq_f32(v91, *a2, 3)), v31);
      v97 = vminq_f32(vbslq_s8(vcgtq_f32(v30, vsubq_f32(v35, v95)), v94, vmulq_laneq_f32(v92, *a2, 3)), v31);
      v98 = vbslq_s8(v15, v28, v96);
      v99 = vbslq_s8(v15, v29, v97);
      v100 = (v6 + v11);
      v100[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v98, v98, 3));
      *v100 = vbslq_s8(v15, v29, vmulq_laneq_f32(v99, v99, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v101 = 16 * v10;
    v102 = *(v7 + v101);
    v103 = *(a2 + 15);
    v104 = vmaxq_f32(vdupq_laneq_s32(v102, 3), *(a2 + 16));
    v105 = vrecpeq_f32(v104);
    v106 = vmulq_f32(v105, vrecpsq_f32(v105, v104));
    v107 = vmulq_f32(v102, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v106, vrecpsq_f32(v106, v104))), *(a2 + 3)));
    v108 = *(a2 + 75);
    v109 = *(a2 + 5);
    v110 = vminq_f32(vmaxq_f32(v107, v108), v109);
    v111 = vbslq_s8(vcgtq_f32(vandq_s8(v109, vceqq_f32(vdupq_lane_s32(*a2, 0), v108)), v108), v109, vaddq_f32(v110, vdupq_lane_s32(*a2, 1)));
    v112 = vorrq_s8(vandq_s8(*(a2 + 19), v111), v109);
    v113 = vandq_s8(v109, vcgtq_f32(v112, *(a2 + 23)));
    v114 = vsubq_f32(vsubq_f32(v112, v109), vmulq_f32(vmulq_f32(*(a2 + 24), v113), v112));
    v115 = vmulq_f32(v114, v114);
    v116 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v111, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v111))), *(a2 + 22)), v113), vmulq_f32(v114, vaddq_f32(*(a2 + 43), vmulq_f32(v114, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v114)), vmulq_f32(v115, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v114)), vmulq_f32(v115, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v114)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v117 = vcvtq_f32_s32(vcvtq_s32_f32(v116));
    v118 = vsubq_f32(v117, vandq_s8(v109, vcgtq_f32(v117, v116)));
    v119 = vsubq_f32(v116, v118);
    v120 = vbslq_s8(v103, v107, vminq_f32(vbslq_s8(vcgtq_f32(v108, vsubq_f32(v110, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v110, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v109, vmulq_f32(v119, vaddq_f32(*(a2 + 48), vmulq_f32(v119, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v119)), vmulq_f32(vmulq_f32(v119, v119), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v119)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v118)), 0x17uLL)), *a2, 3)), v109));
    *(v6 + v101) = vbslq_s8(v103, v107, vmulq_laneq_f32(v120, v120, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 75);
      v28 = *(a2 + 5);
      v29 = vminq_f32(vmaxq_f32(v25, v27), v28);
      v30 = vminq_f32(vmaxq_f32(v26, v27), v28);
      v31 = *(a2 + 1);
      v32 = vdupq_lane_s32(*a2, 1);
      v33 = vaddq_f32(v29, v32);
      v34 = vaddq_f32(v30, v32);
      v35 = *(a2 + 19);
      v36 = *(a2 + 20);
      v37 = vorrq_s8(vandq_s8(v35, v33), v28);
      v38 = vorrq_s8(vandq_s8(v35, v34), v28);
      v39 = *(a2 + 21);
      v40 = *(a2 + 22);
      v41 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v36, v34)));
      v42 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v36, v33))), v40);
      v43 = *(a2 + 23);
      v44 = *(a2 + 24);
      v45 = vsubq_f32(v41, v40);
      v46 = vandq_s8(v28, vcgtq_f32(v37, v43));
      v47 = vandq_s8(v28, vcgtq_f32(v38, v43));
      v48 = vaddq_f32(v42, v46);
      v49 = vsubq_f32(vsubq_f32(v37, v28), vmulq_f32(vmulq_f32(v44, v46), v37));
      v50 = vsubq_f32(vsubq_f32(v38, v28), vmulq_f32(vmulq_f32(v44, v47), v38));
      v51 = *(a2 + 25);
      v52 = *(a2 + 26);
      v53 = vaddq_f32(v51, vmulq_f32(v52, v49));
      v54 = vaddq_f32(v51, vmulq_f32(v52, v50));
      v55 = *(a2 + 27);
      v56 = *(a2 + 28);
      v57 = vmulq_n_f32(vaddq_f32(vaddq_f32(v45, v47), vmulq_f32(v50, vaddq_f32(vaddq_f32(v55, vmulq_f32(v56, v50)), vmulq_f32(vmulq_f32(v50, v50), v54)))), COERCE_FLOAT(*a2));
      v58 = *(a2 + 29);
      v59 = *(a2 + 30);
      v60 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v48, vmulq_f32(v49, vaddq_f32(vaddq_f32(v55, vmulq_f32(v56, v49)), vmulq_f32(vmulq_f32(v49, v49), v53)))), COERCE_FLOAT(*a2)), v58);
      v61 = vmaxq_f32(v57, v58);
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vsubq_f32(v62, vandq_s8(v28, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v63, vandq_s8(v28, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v60, v64);
      v67 = vsubq_f32(v61, v65);
      v68 = *(a2 + 31);
      v69 = *(a2 + 32);
      v70 = vmulq_f32(v67, vaddq_f32(v69, vmulq_f32(v67, vaddq_f32(v59, vmulq_f32(v68, v67)))));
      v71 = vaddq_f32(v28, vmulq_f32(v66, vaddq_f32(v69, vmulq_f32(v66, vaddq_f32(v59, vmulq_f32(v68, v66))))));
      v72 = vcvtq_s32_f32(v65);
      v73 = *(a2 + 33);
      v74 = vmulq_f32(v71, vshlq_n_s32(vaddq_s32(v73, vcvtq_s32_f32(v64)), 0x17uLL));
      v75 = vmulq_f32(vaddq_f32(v28, v70), vshlq_n_s32(vaddq_s32(v73, v72), 0x17uLL));
      v76 = vmulq_n_f32(v29, *&v31);
      v77 = vmulq_n_f32(v30, *&v31);
      v78 = vdupq_lane_s32(*&v31, 1);
      v79 = vminq_f32(vbslq_s8(vcgtq_f32(v27, vsubq_f32(v29, v78)), v76, vmulq_laneq_f32(v74, *a2, 3)), v28);
      v80 = vminq_f32(vbslq_s8(vcgtq_f32(v27, vsubq_f32(v30, v78)), v77, vmulq_laneq_f32(v75, *a2, 3)), v28);
      v81 = vbslq_s8(v15, v25, v79);
      v82 = vbslq_s8(v15, v26, v80);
      v83 = (v6 + v11);
      v83[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v81, v81, 3));
      *v83 = vbslq_s8(v15, v26, vmulq_laneq_f32(v82, v82, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v84 = 16 * v10;
    v85 = *(v7 + v84);
    v86 = *(a2 + 15);
    v87 = vmaxq_f32(vdupq_laneq_s32(v85, 3), *(a2 + 16));
    v88 = vmulq_f32(vrecpeq_f32(v87), *(a2 + 18));
    v89 = vmulq_f32(v85, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v88, vrecpsq_f32(v88, v87))), *(a2 + 3)));
    v90 = *(a2 + 75);
    v91 = *(a2 + 5);
    v92 = vminq_f32(vmaxq_f32(v89, v90), v91);
    v93 = vaddq_f32(v92, vdupq_lane_s32(*a2, 1));
    v94 = vorrq_s8(vandq_s8(*(a2 + 19), v93), v91);
    v95 = vandq_s8(v91, vcgtq_f32(v94, *(a2 + 23)));
    v96 = vsubq_f32(vsubq_f32(v94, v91), vmulq_f32(vmulq_f32(*(a2 + 24), v95), v94));
    v97 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v93, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v93))), *(a2 + 22)), v95), vmulq_f32(v96, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(*(a2 + 28), v96)), vmulq_f32(vmulq_f32(v96, v96), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v96)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v98 = vcvtq_f32_s32(vcvtq_s32_f32(v97));
    v99 = vsubq_f32(v98, vandq_s8(v91, vcgtq_f32(v98, v97)));
    v100 = vsubq_f32(v97, v99);
    v101 = vbslq_s8(v86, v89, vminq_f32(vbslq_s8(vcgtq_f32(v90, vsubq_f32(v92, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v92, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v91, vmulq_f32(v100, vaddq_f32(*(a2 + 32), vmulq_f32(v100, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v100)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v99)), 0x17uLL)), *a2, 3)), v91));
    *(v6 + v84) = vbslq_s8(v86, v89, vmulq_laneq_f32(v101, v101, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vrecpsq_f32(v21, v17);
      v24 = vrecpsq_f32(v22, v18);
      v25 = vmulq_f32(v21, v23);
      v26 = vandq_s8(v20, vmulq_f32(v22, v24));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(vandq_s8(v20, v25), v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 75);
      v31 = vminq_f32(vmaxq_f32(v28, v30), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v23, v30), 3));
      v32 = vminq_f32(vmaxq_f32(v29, v30), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v24, v30), 3));
      v33 = *(a2 + 1);
      v34 = vdupq_lane_s32(*a2, 1);
      v35 = vaddq_f32(v31, v34);
      v36 = vaddq_f32(v32, v34);
      v37 = *(a2 + 19);
      v38 = *(a2 + 20);
      v39 = *(a2 + 5);
      v40 = vorrq_s8(vandq_s8(v37, v35), v39);
      v41 = *(a2 + 21);
      v42 = *(a2 + 22);
      v43 = vorrq_s8(vandq_s8(v37, v36), v39);
      v44 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v36, 0x17uLL)), vandq_s8(v41, vcgtq_f32(v38, v36)));
      v45 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v35, 0x17uLL)), vandq_s8(v41, vcgtq_f32(v38, v35))), v42);
      v46 = *(a2 + 23);
      v47 = *(a2 + 24);
      v48 = vsubq_f32(v44, v42);
      v49 = vandq_s8(v39, vcgtq_f32(v40, v46));
      v50 = vandq_s8(v39, vcgtq_f32(v43, v46));
      v51 = vmulq_f32(v47, v49);
      v52 = vaddq_f32(v45, v49);
      v53 = vmulq_f32(vmulq_f32(v47, v50), v43);
      v54 = vaddq_f32(v48, v50);
      v55 = vsubq_f32(vsubq_f32(v40, v39), vmulq_f32(v51, v40));
      v56 = vsubq_f32(vsubq_f32(v43, v39), v53);
      v57 = *(a2 + 25);
      v58 = *(a2 + 26);
      v59 = vaddq_f32(v57, vmulq_f32(v58, v55));
      v60 = vaddq_f32(v57, vmulq_f32(v58, v56));
      v61 = *(a2 + 27);
      v62 = *(a2 + 28);
      v63 = vmulq_n_f32(vaddq_f32(v52, vmulq_f32(v55, vaddq_f32(vaddq_f32(v61, vmulq_f32(v55, v62)), vmulq_f32(vmulq_f32(v55, v55), v59)))), COERCE_FLOAT(*a2));
      v64 = vmulq_n_f32(vaddq_f32(v54, vmulq_f32(v56, vaddq_f32(vaddq_f32(v61, vmulq_f32(v56, v62)), vmulq_f32(vmulq_f32(v56, v56), v60)))), COERCE_FLOAT(*a2));
      v65 = *(a2 + 29);
      v66 = *(a2 + 30);
      v67 = vmaxq_f32(v63, v65);
      v68 = vmaxq_f32(v64, v65);
      v69 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
      v71 = vsubq_f32(v69, vandq_s8(v39, vcgtq_f32(v69, v67)));
      v72 = vsubq_f32(v70, vandq_s8(v39, vcgtq_f32(v70, v68)));
      v73 = vsubq_f32(v67, v71);
      v74 = vsubq_f32(v68, v72);
      v75 = *(a2 + 31);
      v76 = *(a2 + 32);
      v77 = vmulq_f32(v74, vaddq_f32(v76, vmulq_f32(v74, vaddq_f32(v66, vmulq_f32(v75, v74)))));
      v78 = vaddq_f32(v39, vmulq_f32(v73, vaddq_f32(v76, vmulq_f32(v73, vaddq_f32(v66, vmulq_f32(v75, v73))))));
      v79 = vcvtq_s32_f32(v72);
      v80 = *(a2 + 33);
      v81 = vmulq_f32(vaddq_f32(v39, v77), vshlq_n_s32(vaddq_s32(v80, v79), 0x17uLL));
      v82 = vmulq_laneq_f32(vmulq_f32(v78, vshlq_n_s32(vaddq_s32(v80, vcvtq_s32_f32(v71)), 0x17uLL)), *a2, 3);
      v83 = vmulq_n_f32(v31, *&v33);
      v84 = vmulq_n_f32(v32, *&v33);
      v85 = vdupq_lane_s32(*&v33, 1);
      v86 = vcgtq_f32(v30, vsubq_f32(v31, v85));
      v87 = vcgtq_f32(v30, vsubq_f32(v32, v85));
      v88 = vbslq_s8(v15, v28, vbslq_s8(v86, v83, v82));
      v89 = vbslq_s8(v15, v29, vbslq_s8(v87, v84, vmulq_laneq_f32(v81, *a2, 3)));
      v90 = (v6 + v11);
      v90[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v88, v88, 3));
      *v90 = vbslq_s8(v15, v29, vmulq_laneq_f32(v89, v89, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v91 = 16 * v10;
    v92 = *(v7 + v91);
    v93 = *(a2 + 15);
    v94 = vmaxq_f32(vdupq_laneq_s32(v92, 3), *(a2 + 16));
    v95 = vmulq_f32(vrecpeq_f32(v94), *(a2 + 18));
    v96 = vrecpsq_f32(v95, v94);
    v97 = vmulq_f32(v92, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v95, v96)), *(a2 + 3)));
    v98 = *(a2 + 75);
    v99 = vminq_f32(vmaxq_f32(v97, v98), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v96, v98), 3));
    v100 = vaddq_f32(v99, vdupq_lane_s32(*a2, 1));
    v101 = *(a2 + 5);
    v102 = vorrq_s8(vandq_s8(*(a2 + 19), v100), v101);
    v103 = vandq_s8(v101, vcgtq_f32(v102, *(a2 + 23)));
    v104 = vsubq_f32(vsubq_f32(v102, v101), vmulq_f32(vmulq_f32(*(a2 + 24), v103), v102));
    v105 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v100, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v100))), *(a2 + 22)), v103), vmulq_f32(v104, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v104, *(a2 + 28))), vmulq_f32(vmulq_f32(v104, v104), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v104)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v106 = vcvtq_f32_s32(vcvtq_s32_f32(v105));
    v107 = vsubq_f32(v106, vandq_s8(v101, vcgtq_f32(v106, v105)));
    v108 = vsubq_f32(v105, v107);
    v109 = vbslq_s8(v93, v97, vbslq_s8(vcgtq_f32(v98, vsubq_f32(v99, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v99, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v101, vmulq_f32(v108, vaddq_f32(*(a2 + 32), vmulq_f32(v108, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v108)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v107)), 0x17uLL)), *a2, 3)));
    *(v6 + v91) = vbslq_s8(v93, v97, vmulq_laneq_f32(v109, v109, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vrecpsq_f32(v19, v17);
      v22 = vrecpsq_f32(v20, v18);
      v23 = vmulq_f32(v19, v21);
      v24 = vmulq_f32(v20, v22);
      v25 = vmulq_f32(v23, vrecpsq_f32(v23, v17));
      v26 = *(a2 + 17);
      v27 = vandq_s8(v26, v25);
      v28 = vandq_s8(v26, vmulq_f32(v24, vrecpsq_f32(v24, v18)));
      v29 = *(a2 + 3);
      v30 = vmulq_f32(v14, vorrq_s8(v27, v29));
      v31 = *(a2 + 75);
      v32 = vmulq_f32(v13, vorrq_s8(v28, v29));
      v33 = *(a2 + 1);
      v34 = vdupq_lane_s32(*a2, 1);
      v35 = vminq_f32(vmaxq_f32(v30, v31), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v21, v31), 3));
      v36 = vminq_f32(vmaxq_f32(v32, v31), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v22, v31), 3));
      v37 = *(a2 + 5);
      v38 = vcgtq_f32(vandq_s8(v37, vceqq_f32(vdupq_lane_s32(*a2, 0), v31)), v31);
      v39 = vbslq_s8(v38, v37, vaddq_f32(v35, v34));
      v40 = vbslq_s8(v38, v37, vaddq_f32(v36, v34));
      v42 = *(a2 + 19);
      v41 = *(a2 + 20);
      v43 = vorrq_s8(vandq_s8(v42, v39), v37);
      v44 = vorrq_s8(vandq_s8(v42, v40), v37);
      v45 = *(a2 + 21);
      v46 = *(a2 + 22);
      v47 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v40, 0x17uLL)), vandq_s8(v45, vcgtq_f32(v41, v40)));
      v48 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v39, 0x17uLL)), vandq_s8(v45, vcgtq_f32(v41, v39))), v46);
      v49 = *(a2 + 23);
      v50 = *(a2 + 24);
      v51 = vandq_s8(v37, vcgtq_f32(v43, v49));
      v52 = vandq_s8(v37, vcgtq_f32(v44, v49));
      v53 = vaddq_f32(v48, v51);
      v54 = vaddq_f32(vsubq_f32(v47, v46), v52);
      v55 = vsubq_f32(vsubq_f32(v43, v37), vmulq_f32(vmulq_f32(v50, v51), v43));
      v56 = vsubq_f32(vsubq_f32(v44, v37), vmulq_f32(vmulq_f32(v50, v52), v44));
      v57 = vmulq_f32(v55, v55);
      v58 = *(a2 + 37);
      v59 = *(a2 + 38);
      v60 = *(a2 + 39);
      v61 = *(a2 + 40);
      v62 = vaddq_f32(v58, vmulq_f32(v59, v55));
      v63 = vaddq_f32(v60, vmulq_f32(v61, v55));
      v64 = vaddq_f32(v60, vmulq_f32(v61, v56));
      v65 = vaddq_f32(v58, vmulq_f32(v59, v56));
      v66 = *(a2 + 41);
      v67 = *(a2 + 42);
      v68 = vaddq_f32(v66, vmulq_f32(v67, v55));
      v69 = vaddq_f32(v66, vmulq_f32(v67, v56));
      v70 = vmulq_f32(v56, v56);
      v71 = vaddq_f32(v68, vmulq_f32(v57, vaddq_f32(v62, vmulq_f32(v57, v63))));
      v72 = vaddq_f32(v69, vmulq_f32(v70, vaddq_f32(v65, vmulq_f32(v70, v64))));
      v73 = *(a2 + 43);
      v74 = *(a2 + 44);
      v75 = vmulq_n_f32(vaddq_f32(v54, vmulq_f32(v56, vaddq_f32(v73, vmulq_f32(v56, v72)))), COERCE_FLOAT(*a2));
      v76 = *(a2 + 29);
      v77 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v53, vmulq_f32(v55, vaddq_f32(v73, vmulq_f32(v55, v71)))), COERCE_FLOAT(*a2)), v76);
      v78 = vmaxq_f32(v75, v76);
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vcvtq_f32_s32(vcvtq_s32_f32(v78));
      v81 = vsubq_f32(v79, vandq_s8(v37, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v80, vandq_s8(v37, vcgtq_f32(v80, v78)));
      v83 = vsubq_f32(v77, v81);
      v84 = vsubq_f32(v78, v82);
      v85 = *(a2 + 45);
      v86 = *(a2 + 46);
      v87 = vaddq_f32(v74, vmulq_f32(v85, v83));
      v88 = vaddq_f32(v74, vmulq_f32(v85, v84));
      v89 = *(a2 + 47);
      v90 = *(a2 + 48);
      v91 = vaddq_f32(v37, vmulq_f32(v83, vaddq_f32(v90, vmulq_f32(v83, vaddq_f32(vaddq_f32(v86, vmulq_f32(v83, v89)), vmulq_f32(vmulq_f32(v83, v83), v87))))));
      v92 = *(a2 + 33);
      v93 = vmulq_f32(vaddq_f32(v37, vmulq_f32(v84, vaddq_f32(v90, vmulq_f32(v84, vaddq_f32(vaddq_f32(v86, vmulq_f32(v89, v84)), vmulq_f32(vmulq_f32(v84, v84), v88)))))), vshlq_n_s32(vaddq_s32(v92, vcvtq_s32_f32(v82)), 0x17uLL));
      v94 = vmulq_laneq_f32(vmulq_f32(v91, vshlq_n_s32(vaddq_s32(v92, vcvtq_s32_f32(v81)), 0x17uLL)), *a2, 3);
      v95 = vmulq_n_f32(v35, *&v33);
      v96 = vmulq_n_f32(v36, *&v33);
      v97 = vdupq_lane_s32(*&v33, 1);
      v98 = vbslq_s8(v15, v30, vbslq_s8(vcgtq_f32(v31, vsubq_f32(v35, v97)), v95, v94));
      v99 = vbslq_s8(v15, v32, vbslq_s8(vcgtq_f32(v31, vsubq_f32(v36, v97)), v96, vmulq_laneq_f32(v93, *a2, 3)));
      v100 = (v6 + v11);
      v100[-1] = vbslq_s8(v15, v30, vmulq_laneq_f32(v98, v98, 3));
      *v100 = vbslq_s8(v15, v32, vmulq_laneq_f32(v99, v99, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v101 = 16 * v10;
    v102 = *(v7 + v101);
    v103 = *(a2 + 15);
    v104 = vmaxq_f32(vdupq_laneq_s32(v102, 3), *(a2 + 16));
    v105 = vrecpeq_f32(v104);
    v106 = vrecpsq_f32(v105, v104);
    v107 = vmulq_f32(v105, v106);
    v108 = vmulq_f32(v102, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v107, vrecpsq_f32(v107, v104))), *(a2 + 3)));
    v109 = *(a2 + 75);
    v110 = vminq_f32(vmaxq_f32(v108, v109), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v106, v109), 3));
    v111 = *(a2 + 5);
    v112 = vbslq_s8(vcgtq_f32(vandq_s8(v111, vceqq_f32(vdupq_lane_s32(*a2, 0), v109)), v109), v111, vaddq_f32(v110, vdupq_lane_s32(*a2, 1)));
    v113 = vorrq_s8(vandq_s8(*(a2 + 19), v112), v111);
    v114 = vandq_s8(v111, vcgtq_f32(v113, *(a2 + 23)));
    v115 = vsubq_f32(vsubq_f32(v113, v111), vmulq_f32(vmulq_f32(*(a2 + 24), v114), v113));
    v116 = vmulq_f32(v115, v115);
    v117 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v112, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v112))), *(a2 + 22)), v114), vmulq_f32(v115, vaddq_f32(*(a2 + 43), vmulq_f32(v115, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v115)), vmulq_f32(v116, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v115)), vmulq_f32(v116, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v115)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v118 = vcvtq_f32_s32(vcvtq_s32_f32(v117));
    v119 = vsubq_f32(v118, vandq_s8(v111, vcgtq_f32(v118, v117)));
    v120 = vsubq_f32(v117, v119);
    v121 = vbslq_s8(v103, v108, vbslq_s8(vcgtq_f32(v109, vsubq_f32(v110, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v110, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v111, vmulq_f32(v120, vaddq_f32(*(a2 + 48), vmulq_f32(v120, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v120)), vmulq_f32(vmulq_f32(v120, v120), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v120)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v119)), 0x17uLL)), *a2, 3)));
    *(v6 + v101) = vbslq_s8(v103, v108, vmulq_laneq_f32(v121, v121, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_floatTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = 16 * *(a1 + 22);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + v10);
        v12 = *(a2 + 72);
        v13 = *(a2 + 73);
        v14 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v11, v12), 3), v12), v13);
        v15 = vminq_f32(vmaxq_f32(vrecpeq_f32(v14), v12), v13);
        v16 = vrecpsq_f32(v14, v15);
        v17 = vminq_f32(vmaxq_f32(vmulq_f32(v15, v16), v12), v13);
        v18 = vmulq_f32(v17, vrecpsq_f32(v14, v17));
        v18.i32[3] = 1.0;
        v19 = vmulq_f32(v11, v18);
        v20 = *(a2 + 75);
        v21 = vminq_f32(vmaxq_f32(v19, v20), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v16, v20), 3));
        v22 = *(a2 + 5);
        v23 = vbslq_s8(vcgtq_f32(vandq_s8(v22, vceqq_f32(vdupq_lane_s32(*a2, 0), v20)), v20), v22, vaddq_f32(v21, vdupq_lane_s32(*a2, 1)));
        v24 = *(a2 + 50);
        v25 = vcgeq_f32(v23, v24);
        v26 = *(a2 + 21);
        v27 = vandq_s8(v26, vceqq_f32(v23, v24));
        v28 = *(a2 + 52);
        v29 = vsubq_f32(vbicq_s8(v25, *(a2 + 51)), v27);
        v30 = vcgtq_f32(*(a2 + 20), v23);
        v31 = vmulq_f32(v23, vaddq_f32(v22, vandq_s8(*(a2 + 49), v30)));
        v32 = vorrq_s8(vandq_s8(*(a2 + 19), v31), v22);
        v33 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v26, vceqq_f32(v23, v26)), vsubq_f32(v29, vandq_s8(v28, v30))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)));
        v34 = vandq_s8(v22, vcgtq_f32(v32, *(a2 + 23)));
        v35 = vaddq_f32(v33, v34);
        v36 = vsubq_f32(vsubq_f32(v32, v22), vmulq_f32(vmulq_f32(*(a2 + 24), v34), v32));
        v37 = vmulq_f32(v36, v36);
        v38 = vmulq_n_f32(vaddq_f32(v35, vmulq_f32(v36, vaddq_f32(*(a2 + 61), vmulq_f32(v36, vaddq_f32(vaddq_f32(vmulq_f32(v37, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v36))), vaddq_f32(*(a2 + 59), vmulq_f32(v36, *(a2 + 60)))), vmulq_f32(vmulq_f32(v37, v37), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v36)), vmulq_f32(v37, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v36)))))))))), COERCE_FLOAT(*a2));
        v39 = vminq_f32(vmaxq_f32(v38, *(a2 + 62)), *(a2 + 63));
        v40 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
        v41 = vsubq_f32(v40, vandq_s8(v22, vcgtq_f32(v40, v39)));
        v42 = vsubq_f32(v39, v41);
        v43 = vmulq_f32(v42, v42);
        v44 = vcgtq_f32(*(a2 + 70), v41);
        v45 = vbslq_s8(vcgtq_f32(v20, vsubq_f32(v21, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v21, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v22, vceqq_f32(v38, v38)), v20), vmulq_f32(vaddq_f32(v22, vandq_s8(*(a2 + 71), v44)), vmulq_f32(vaddq_f32(v22, vmulq_f32(v42, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v42, *(a2 + 69))), vmulq_f32(v43, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v42)), vmulq_f32(v43, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v42)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v41, vandq_s8(v28, v44)))), 0x17uLL))), v38), *a2, 3));
        v46 = *(a2 + 15);
        v47 = vbslq_s8(v46, v19, v45);
        *(v6 + v10) = vbslq_s8(v46, v19, vmulq_laneq_f32(v47, v47, 3));
        v10 += 16;
      }

      while (v9 != v10);
      ++v4;
      v5 += v7;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t Gettype4_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v17));
      v21 = *(a2 + 17);
      v22 = *(a2 + 3);
      v23 = vmulq_f32(v13, vorrq_s8(vandq_s8(v21, v18), v22));
      v24 = vmulq_f32(v14, vorrq_s8(vandq_s8(v21, v19), v22));
      v25 = vmulq_f32(v15, vorrq_s8(vandq_s8(v21, v20), v22));
      v26 = *(a2 + 75);
      v27 = *(a2 + 5);
      v28 = *(a2 + 6);
      v29 = vminq_f32(vmaxq_f32(v23, v26), v27);
      v30 = vminq_f32(vmaxq_f32(v24, v26), v27);
      v31 = *(a2 + 1);
      v32 = vminq_f32(vmaxq_f32(v25, v26), v27);
      v33 = vdupq_lane_s32(*a2, 1);
      v34 = vmulq_f32(v28, vcvtq_f32_s32(vaddq_f32(v29, v33)));
      v35 = vmulq_f32(v28, vcvtq_f32_s32(vaddq_f32(v30, v33)));
      v36 = vmulq_f32(v28, vcvtq_f32_s32(vaddq_f32(v32, v33)));
      v37 = vcvtq_f32_s32(vcvtq_s32_f32(v34));
      v38 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
      v39 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
      v40 = *(a2 + 7);
      v41 = *(a2 + 8);
      v42 = vrsqrteq_f32(vaddq_f32(v40, vsubq_f32(v34, v37)));
      v43 = vrsqrteq_f32(vaddq_f32(v40, vsubq_f32(v35, v38)));
      v44 = vaddq_f32(v41, v37);
      v45 = vaddq_f32(v41, v38);
      v46 = vrsqrteq_f32(vaddq_f32(v40, vsubq_f32(v36, v39)));
      v47 = vaddq_f32(v41, v39);
      v48 = *(a2 + 9);
      v49 = *(a2 + 10);
      v50 = vmulq_n_f32(vsubq_f32(v44, vmulq_f32(v42, v48)), COERCE_FLOAT(*a2));
      v51 = vmulq_n_f32(vsubq_f32(v45, vmulq_f32(v43, v48)), COERCE_FLOAT(*a2));
      v52 = vmulq_n_f32(vsubq_f32(v47, vmulq_f32(v46, v48)), COERCE_FLOAT(*a2));
      v53 = vcvtq_f32_s32(vcvtq_s32_f32(v50));
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v51));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v56 = vsubq_f32(v53, vandq_s8(v27, vcgtq_f32(v53, v50)));
      v57 = vsubq_f32(v54, vandq_s8(v27, vcgtq_f32(v54, v51)));
      v58 = vsubq_f32(v55, vandq_s8(v27, vcgtq_f32(v55, v52)));
      v59 = vsubq_f32(v50, v56);
      v60 = vsubq_f32(v51, v57);
      v61 = vsubq_f32(v52, v58);
      v62 = vaddq_f32(v49, v56);
      v63 = vaddq_f32(v49, v57);
      v64 = vaddq_f32(v49, v58);
      v65 = *(a2 + 11);
      v66 = *(a2 + 12);
      v67 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, v59)), v66);
      v68 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, v60)), v66);
      v69 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, v61)), v66);
      v70 = vmaxq_f32(vaddq_f32(v62, vmulq_f32(v67, v67)), v26);
      v71 = vmaxq_f32(vaddq_f32(v63, vmulq_f32(v68, v68)), v26);
      v72 = *(a2 + 13);
      v73 = *(a2 + 14);
      v74 = vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v64, vmulq_f32(v69, v69)), v26), v72), v73);
      v75 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v70, v72), v73));
      v76 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v71, v72), v73));
      v77 = vdupq_laneq_s32(*a2, 2);
      v78 = vmulq_laneq_f32(vcvtq_s32_f32(v74), *a2, 3);
      v79 = vmulq_n_f32(v29, *&v31);
      v80 = vmulq_n_f32(v30, *&v31);
      v81 = vmulq_n_f32(v32, *&v31);
      v82 = vdupq_lane_s32(*&v31, 1);
      v83 = vdupq_lane_s32(*(a2 + 32), 0);
      v84 = vaddq_f32(v83, vbslq_s8(v16, v23, vminq_f32(vbslq_s8(vcgtq_f32(v26, vsubq_f32(v29, v82)), v79, vaddq_f32(v77, vmulq_laneq_f32(v75, *a2, 3))), v27)));
      v85 = vmaxq_f32(vaddq_f32(v83, vbslq_s8(v16, v24, vminq_f32(vbslq_s8(vcgtq_f32(v26, vsubq_f32(v30, v82)), v80, vaddq_f32(v77, vmulq_laneq_f32(v76, *a2, 3))), v27))), v26);
      v86 = vminq_f32(vmaxq_f32(vaddq_f32(v83, vbslq_s8(v16, v25, vminq_f32(vbslq_s8(vcgtq_f32(v26, vsubq_f32(v32, v82)), v81, vaddq_f32(v77, v78)), v27))), v26), v27);
      v87 = vbslq_s8(v16, v23, vminq_f32(vmaxq_f32(v84, v26), v27));
      v88 = vbslq_s8(v16, v24, vminq_f32(v85, v27));
      v89 = vbslq_s8(v16, v25, v86);
      v90 = (v6 + v10);
      *v90 = vbslq_s8(v16, v23, vmulq_laneq_f32(v87, v87, 3));
      v90[1] = vbslq_s8(v16, v24, vmulq_laneq_f32(v88, v88, 3));
      v90[2] = vbslq_s8(v16, v25, vmulq_laneq_f32(v89, v89, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v91 = *(a2 + 15);
      v92 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16)))), *(a2 + 3)));
      v93 = *(a2 + 75);
      v94 = *(a2 + 5);
      v95 = vminq_f32(vmaxq_f32(v92, v93), v94);
      v96 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v95, vdupq_lane_s32(*a2, 1))));
      v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
      v98 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v97), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v96, v97))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
      v100 = vsubq_f32(v99, vandq_s8(v94, vcgtq_f32(v99, v98)));
      v101 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v98, v100))), *(a2 + 12));
      v102 = vbslq_s8(v91, v92, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v91, v92, vminq_f32(vbslq_s8(vcgtq_f32(v93, vsubq_f32(v95, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v95, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v101, v101), vaddq_f32(*(a2 + 10), v100)), v93), *(a2 + 13)), *(a2 + 14))), *a2, 3))), v94))), v93), v94));
      *(v6 + 16 * v11++) = vbslq_s8(v91, v92, vmulq_laneq_f32(v102, v102, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v17));
      v22 = *(a2 + 17);
      v21 = *(a2 + 18);
      v23 = *(a2 + 3);
      v24 = vmulq_f32(v13, vorrq_s8(vandq_s8(v22, vmulq_f32(v18, v21)), v23));
      v25 = vmulq_f32(v14, vorrq_s8(vandq_s8(v22, vmulq_f32(v19, v21)), v23));
      v26 = vmulq_f32(v15, vorrq_s8(vandq_s8(v22, vmulq_f32(v20, v21)), v23));
      v27 = *(a2 + 75);
      v28 = *(a2 + 5);
      v29 = *(a2 + 6);
      v30 = vminq_f32(vmaxq_f32(v24, v27), v28);
      v31 = vminq_f32(vmaxq_f32(v25, v27), v28);
      v32 = *(a2 + 1);
      v33 = vminq_f32(vmaxq_f32(v26, v27), v28);
      v34 = vdupq_lane_s32(*a2, 1);
      v35 = vmulq_f32(v29, vcvtq_f32_s32(vaddq_f32(v30, v34)));
      v36 = vmulq_f32(v29, vcvtq_f32_s32(vaddq_f32(v31, v34)));
      v37 = vmulq_f32(v29, vcvtq_f32_s32(vaddq_f32(v33, v34)));
      v38 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
      v39 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v41 = *(a2 + 7);
      v42 = *(a2 + 8);
      v43 = vrsqrteq_f32(vaddq_f32(v41, vsubq_f32(v35, v38)));
      v44 = vrsqrteq_f32(vaddq_f32(v41, vsubq_f32(v36, v39)));
      v45 = vaddq_f32(v42, v38);
      v46 = vaddq_f32(v42, v39);
      v47 = vrsqrteq_f32(vaddq_f32(v41, vsubq_f32(v37, v40)));
      v48 = vaddq_f32(v42, v40);
      v49 = *(a2 + 9);
      v50 = *(a2 + 10);
      v51 = vmulq_n_f32(vsubq_f32(v45, vmulq_f32(v43, v49)), COERCE_FLOAT(*a2));
      v52 = vmulq_n_f32(vsubq_f32(v46, vmulq_f32(v44, v49)), COERCE_FLOAT(*a2));
      v53 = vmulq_n_f32(vsubq_f32(v48, vmulq_f32(v47, v49)), COERCE_FLOAT(*a2));
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v51));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v56 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v57 = vsubq_f32(v54, vandq_s8(v28, vcgtq_f32(v54, v51)));
      v58 = vsubq_f32(v55, vandq_s8(v28, vcgtq_f32(v55, v52)));
      v59 = vsubq_f32(v56, vandq_s8(v28, vcgtq_f32(v56, v53)));
      v60 = vsubq_f32(v51, v57);
      v61 = vsubq_f32(v52, v58);
      v62 = vsubq_f32(v53, v59);
      v63 = vaddq_f32(v50, v57);
      v64 = vaddq_f32(v50, v58);
      v65 = vaddq_f32(v50, v59);
      v66 = *(a2 + 11);
      v67 = *(a2 + 12);
      v68 = vmulq_f32(vrecpeq_f32(vsubq_f32(v66, v60)), v67);
      v69 = vmulq_f32(vrecpeq_f32(vsubq_f32(v66, v61)), v67);
      v70 = vmulq_f32(vrecpeq_f32(vsubq_f32(v66, v62)), v67);
      v71 = vmaxq_f32(vaddq_f32(v63, vmulq_f32(v68, v68)), v27);
      v72 = vmaxq_f32(vaddq_f32(v64, vmulq_f32(v69, v69)), v27);
      v73 = *(a2 + 13);
      v74 = *(a2 + 14);
      v75 = vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v65, vmulq_f32(v70, v70)), v27), v73), v74);
      v76 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v71, v73), v74));
      v77 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v72, v73), v74));
      v78 = vdupq_laneq_s32(*a2, 2);
      v79 = vmulq_laneq_f32(vcvtq_s32_f32(v75), *a2, 3);
      v80 = vmulq_n_f32(v30, *&v32);
      v81 = vmulq_n_f32(v31, *&v32);
      v82 = vmulq_n_f32(v33, *&v32);
      v83 = vdupq_lane_s32(*&v32, 1);
      v84 = vdupq_lane_s32(*(a2 + 32), 0);
      v85 = vaddq_f32(v84, vbslq_s8(v16, v24, vminq_f32(vbslq_s8(vcgtq_f32(v27, vsubq_f32(v30, v83)), v80, vaddq_f32(v78, vmulq_laneq_f32(v76, *a2, 3))), v28)));
      v86 = vmaxq_f32(vaddq_f32(v84, vbslq_s8(v16, v25, vminq_f32(vbslq_s8(vcgtq_f32(v27, vsubq_f32(v31, v83)), v81, vaddq_f32(v78, vmulq_laneq_f32(v77, *a2, 3))), v28))), v27);
      v87 = vminq_f32(vmaxq_f32(vaddq_f32(v84, vbslq_s8(v16, v26, vminq_f32(vbslq_s8(vcgtq_f32(v27, vsubq_f32(v33, v83)), v82, vaddq_f32(v78, v79)), v28))), v27), v28);
      v88 = vbslq_s8(v16, v24, vminq_f32(vmaxq_f32(v85, v27), v28));
      v89 = vbslq_s8(v16, v25, vminq_f32(v86, v28));
      v90 = vbslq_s8(v16, v26, v87);
      v91 = (v6 + v10);
      *v91 = vbslq_s8(v16, v24, vmulq_laneq_f32(v88, v88, 3));
      v91[1] = vbslq_s8(v16, v25, vmulq_laneq_f32(v89, v89, 3));
      v91[2] = vbslq_s8(v16, v26, vmulq_laneq_f32(v90, v90, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v92 = *(a2 + 15);
      v93 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v94 = *(a2 + 75);
      v95 = *(a2 + 5);
      v96 = vminq_f32(vmaxq_f32(v93, v94), v95);
      v97 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v96, vdupq_lane_s32(*a2, 1))));
      v98 = vcvtq_f32_s32(vcvtq_s32_f32(v97));
      v99 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v98), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v97, v98))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v100 = vcvtq_f32_s32(vcvtq_s32_f32(v99));
      v101 = vsubq_f32(v100, vandq_s8(v95, vcgtq_f32(v100, v99)));
      v102 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v99, v101))), *(a2 + 12));
      v103 = vbslq_s8(v92, v93, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v92, v93, vminq_f32(vbslq_s8(vcgtq_f32(v94, vsubq_f32(v96, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v96, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v102, v102), vaddq_f32(*(a2 + 10), v101)), v94), *(a2 + 13)), *(a2 + 14))), *a2, 3))), v95))), v94), v95));
      *(v6 + 16 * v11++) = vbslq_s8(v92, v93, vmulq_laneq_f32(v103, v103, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v18));
      v25 = *(a2 + 17);
      v26 = vandq_s8(v25, v23);
      v27 = vandq_s8(v25, v24);
      v28 = *(a2 + 3);
      v29 = vmulq_f32(v13, vorrq_s8(v26, v28));
      v30 = vmulq_f32(v14, vorrq_s8(v27, v28));
      v31 = *(a2 + 75);
      v32 = *(a2 + 5);
      v33 = vminq_f32(vmaxq_f32(v29, v31), v32);
      v34 = vminq_f32(vmaxq_f32(v30, v31), v32);
      v35 = *(a2 + 1);
      v36 = vdupq_lane_s32(*a2, 1);
      v37 = vcgtq_f32(vandq_s8(v32, vceqq_f32(vdupq_lane_s32(*a2, 0), v31)), v31);
      v38 = vbslq_s8(v37, v32, vaddq_f32(v33, v36));
      v39 = vbslq_s8(v37, v32, vaddq_f32(v34, v36));
      v40 = *(a2 + 19);
      v41 = *(a2 + 20);
      v42 = vorrq_s8(vandq_s8(v40, v38), v32);
      v43 = vorrq_s8(vandq_s8(v40, v39), v32);
      v44 = *(a2 + 21);
      v45 = *(a2 + 22);
      v46 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v39, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v41, v39)));
      v47 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v41, v38))), v45);
      v48 = *(a2 + 23);
      v49 = *(a2 + 24);
      v50 = vandq_s8(v32, vcgtq_f32(v42, v48));
      v51 = vandq_s8(v32, vcgtq_f32(v43, v48));
      v52 = vaddq_f32(v47, v50);
      v53 = vaddq_f32(vsubq_f32(v46, v45), v51);
      v54 = vsubq_f32(vsubq_f32(v42, v32), vmulq_f32(vmulq_f32(v49, v50), v42));
      v55 = vsubq_f32(vsubq_f32(v43, v32), vmulq_f32(vmulq_f32(v49, v51), v43));
      v56 = vmulq_f32(v54, v54);
      v57 = *(a2 + 37);
      v58 = *(a2 + 38);
      v59 = vaddq_f32(v57, vmulq_f32(v58, v54));
      v60 = vaddq_f32(v57, vmulq_f32(v58, v55));
      v61 = *(a2 + 39);
      v62 = *(a2 + 40);
      v63 = vaddq_f32(v61, vmulq_f32(v62, v54));
      v64 = vaddq_f32(v61, vmulq_f32(v62, v55));
      v65 = *(a2 + 41);
      v66 = *(a2 + 42);
      v67 = vaddq_f32(v65, vmulq_f32(v66, v54));
      v68 = vaddq_f32(v65, vmulq_f32(v66, v55));
      v69 = vmulq_f32(v55, v55);
      v70 = vaddq_f32(v68, vmulq_f32(v69, vaddq_f32(v60, vmulq_f32(v69, v64))));
      v71 = vmulq_f32(v54, vaddq_f32(v67, vmulq_f32(v56, vaddq_f32(v59, vmulq_f32(v56, v63)))));
      v72 = *(a2 + 43);
      v73 = *(a2 + 44);
      v74 = vaddq_f32(v53, vmulq_f32(v55, vaddq_f32(v72, vmulq_f32(v55, v70))));
      v75 = *(a2 + 29);
      v76 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v52, vmulq_f32(v54, vaddq_f32(v72, v71))), COERCE_FLOAT(*a2)), v75);
      v77 = vmaxq_f32(vmulq_n_f32(v74, COERCE_FLOAT(*a2)), v75);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v32, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v32, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = vaddq_f32(v73, vmulq_f32(v84, v82));
      v87 = vaddq_f32(v73, vmulq_f32(v84, v83));
      v88 = *(a2 + 47);
      v89 = *(a2 + 48);
      v90 = vaddq_f32(v32, vmulq_f32(v83, vaddq_f32(v89, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v88, v83)), vmulq_f32(vmulq_f32(v83, v83), v87))))));
      v91 = *(a2 + 33);
      v92 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v82, vaddq_f32(v89, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v88)), vmulq_f32(vmulq_f32(v82, v82), v86)))))), vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v80)), 0x17uLL));
      v93 = vdupq_laneq_s32(*a2, 2);
      v94 = vmulq_laneq_f32(vmulq_f32(v90, vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v81)), 0x17uLL)), *a2, 3);
      v95 = vaddq_f32(v93, vmulq_laneq_f32(v92, *a2, 3));
      v96 = vmulq_n_f32(v33, *&v35);
      v97 = vmulq_n_f32(v34, *&v35);
      v98 = vdupq_lane_s32(*&v35, 1);
      v99 = vdupq_lane_s32(*(a2 + 32), 0);
      v100 = vaddq_f32(v99, vbslq_s8(v15, v29, vminq_f32(vbslq_s8(vcgtq_f32(v31, vsubq_f32(v33, v98)), v96, v95), v32)));
      v101 = vmaxq_f32(vaddq_f32(v99, vbslq_s8(v15, v30, vminq_f32(vbslq_s8(vcgtq_f32(v31, vsubq_f32(v34, v98)), v97, vaddq_f32(v93, v94)), v32))), v31);
      v102 = vbslq_s8(v15, v29, vminq_f32(vmaxq_f32(v100, v31), v32));
      v103 = vbslq_s8(v15, v30, vminq_f32(v101, v32));
      v104 = (v6 + v11);
      v104[-1] = vbslq_s8(v15, v29, vmulq_laneq_f32(v102, v102, 3));
      *v104 = vbslq_s8(v15, v30, vmulq_laneq_f32(v103, v103, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v105 = 16 * v10;
    v106 = *(v7 + v105);
    v107 = *(a2 + 15);
    v108 = vmaxq_f32(vdupq_laneq_s32(v106, 3), *(a2 + 16));
    v109 = vrecpeq_f32(v108);
    v110 = vmulq_f32(v109, vrecpsq_f32(v109, v108));
    v111 = vmulq_f32(v106, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v110, vrecpsq_f32(v110, v108))), *(a2 + 3)));
    v112 = *(a2 + 75);
    v113 = *(a2 + 5);
    v114 = vminq_f32(vmaxq_f32(v111, v112), v113);
    v115 = vbslq_s8(vcgtq_f32(vandq_s8(v113, vceqq_f32(vdupq_lane_s32(*a2, 0), v112)), v112), v113, vaddq_f32(v114, vdupq_lane_s32(*a2, 1)));
    v116 = vorrq_s8(vandq_s8(*(a2 + 19), v115), v113);
    v117 = vandq_s8(v113, vcgtq_f32(v116, *(a2 + 23)));
    v118 = vsubq_f32(vsubq_f32(v116, v113), vmulq_f32(vmulq_f32(*(a2 + 24), v117), v116));
    v119 = vmulq_f32(v118, v118);
    v120 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v115, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v115))), *(a2 + 22)), v117), vmulq_f32(v118, vaddq_f32(*(a2 + 43), vmulq_f32(v118, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v118)), vmulq_f32(v119, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v118)), vmulq_f32(v119, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v118)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v121 = vcvtq_f32_s32(vcvtq_s32_f32(v120));
    v122 = vsubq_f32(v121, vandq_s8(v113, vcgtq_f32(v121, v120)));
    v123 = vsubq_f32(v120, v122);
    v124 = vbslq_s8(v107, v111, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v107, v111, vminq_f32(vbslq_s8(vcgtq_f32(v112, vsubq_f32(v114, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v114, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v113, vmulq_f32(v123, vaddq_f32(*(a2 + 48), vmulq_f32(v123, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v123)), vmulq_f32(vmulq_f32(v123, v123), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v123)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v122)), 0x17uLL)), *a2, 3))), v113))), v112), v113));
    *(v6 + v105) = vbslq_s8(v107, v111, vmulq_laneq_f32(v124, v124, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17))), v24));
      v26 = vmulq_f32(v14, vorrq_s8(v23, v24));
      v27 = *(a2 + 75);
      v28 = *(a2 + 5);
      v29 = vminq_f32(vmaxq_f32(v25, v27), v28);
      v30 = *(a2 + 1);
      v31 = vminq_f32(vmaxq_f32(v26, v27), v28);
      v32 = vdupq_lane_s32(*a2, 1);
      v33 = vaddq_f32(v29, v32);
      v34 = vaddq_f32(v31, v32);
      v35 = *(a2 + 19);
      v36 = *(a2 + 20);
      v37 = vorrq_s8(vandq_s8(v35, v33), v28);
      v38 = vorrq_s8(vandq_s8(v35, v34), v28);
      v39 = *(a2 + 21);
      v40 = *(a2 + 22);
      v41 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v36, v33)));
      v42 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v36, v34)));
      v43 = *(a2 + 23);
      v44 = *(a2 + 24);
      v45 = vandq_s8(v28, vcgtq_f32(v37, v43));
      v46 = vandq_s8(v28, vcgtq_f32(v38, v43));
      v47 = vsubq_f32(v42, v40);
      v48 = vaddq_f32(vsubq_f32(v41, v40), v45);
      v49 = vsubq_f32(vsubq_f32(v37, v28), vmulq_f32(vmulq_f32(v44, v45), v37));
      v50 = vsubq_f32(vsubq_f32(v38, v28), vmulq_f32(vmulq_f32(v44, v46), v38));
      v51 = *(a2 + 25);
      v52 = *(a2 + 26);
      v53 = *(a2 + 27);
      v54 = *(a2 + 28);
      v55 = vmulq_n_f32(vaddq_f32(vaddq_f32(v47, v46), vmulq_f32(v50, vaddq_f32(vaddq_f32(v53, vmulq_f32(v54, v50)), vmulq_f32(vmulq_f32(v50, v50), vaddq_f32(v51, vmulq_f32(v52, v50)))))), COERCE_FLOAT(*a2));
      v56 = *(a2 + 29);
      v57 = *(a2 + 30);
      v58 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v48, vmulq_f32(v49, vaddq_f32(vaddq_f32(v53, vmulq_f32(v54, v49)), vmulq_f32(vmulq_f32(v49, v49), vaddq_f32(v51, vmulq_f32(v52, v49)))))), COERCE_FLOAT(*a2)), v56);
      v59 = vmaxq_f32(v55, v56);
      v60 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v59));
      v62 = vsubq_f32(v60, vandq_s8(v28, vcgtq_f32(v60, v58)));
      v63 = vsubq_f32(v61, vandq_s8(v28, vcgtq_f32(v61, v59)));
      v64 = vsubq_f32(v58, v62);
      v65 = vsubq_f32(v59, v63);
      v66 = *(a2 + 31);
      v67 = *(a2 + 32);
      v68 = vmulq_f32(v65, vaddq_f32(v67, vmulq_f32(v65, vaddq_f32(v57, vmulq_f32(v66, v65)))));
      v69 = vaddq_f32(v28, vmulq_f32(v64, vaddq_f32(v67, vmulq_f32(v64, vaddq_f32(v57, vmulq_f32(v66, v64))))));
      v70 = vcvtq_s32_f32(v63);
      v71 = *(a2 + 33);
      v72 = vmulq_f32(v69, vshlq_n_s32(vaddq_s32(v71, vcvtq_s32_f32(v62)), 0x17uLL));
      v73 = vdupq_laneq_s32(*a2, 2);
      v74 = vmulq_laneq_f32(vmulq_f32(vaddq_f32(v28, v68), vshlq_n_s32(vaddq_s32(v71, v70), 0x17uLL)), *a2, 3);
      v75 = vaddq_f32(v73, vmulq_laneq_f32(v72, *a2, 3));
      v76 = vmulq_n_f32(v29, *&v30);
      v77 = vmulq_n_f32(v31, *&v30);
      v78 = vdupq_lane_s32(*&v30, 1);
      v79 = vdupq_lane_s32(*(a2 + 32), 0);
      v80 = vaddq_f32(v79, vbslq_s8(v15, v25, vminq_f32(vbslq_s8(vcgtq_f32(v27, vsubq_f32(v29, v78)), v76, v75), v28)));
      v81 = vmaxq_f32(vaddq_f32(v79, vbslq_s8(v15, v26, vminq_f32(vbslq_s8(vcgtq_f32(v27, vsubq_f32(v31, v78)), v77, vaddq_f32(v73, v74)), v28))), v27);
      v82 = vbslq_s8(v15, v25, vminq_f32(vmaxq_f32(v80, v27), v28));
      v83 = vbslq_s8(v15, v26, vminq_f32(v81, v28));
      v84 = (v6 + v11);
      v84[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v82, v82, 3));
      *v84 = vbslq_s8(v15, v26, vmulq_laneq_f32(v83, v83, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v85 = 16 * v10;
    v86 = *(v7 + v85);
    v87 = *(a2 + 15);
    v88 = vmaxq_f32(vdupq_laneq_s32(v86, 3), *(a2 + 16));
    v89 = vmulq_f32(vrecpeq_f32(v88), *(a2 + 18));
    v90 = vmulq_f32(v86, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v89, vrecpsq_f32(v89, v88))), *(a2 + 3)));
    v91 = *(a2 + 75);
    v92 = *(a2 + 5);
    v93 = vminq_f32(vmaxq_f32(v90, v91), v92);
    v94 = vaddq_f32(v93, vdupq_lane_s32(*a2, 1));
    v95 = vorrq_s8(vandq_s8(*(a2 + 19), v94), v92);
    v96 = vandq_s8(v92, vcgtq_f32(v95, *(a2 + 23)));
    v97 = vsubq_f32(vsubq_f32(v95, v92), vmulq_f32(vmulq_f32(*(a2 + 24), v96), v95));
    v98 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v94))), *(a2 + 22)), v96), vmulq_f32(v97, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(*(a2 + 28), v97)), vmulq_f32(vmulq_f32(v97, v97), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v97)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
    v100 = vsubq_f32(v99, vandq_s8(v92, vcgtq_f32(v99, v98)));
    v101 = vsubq_f32(v98, v100);
    v102 = vbslq_s8(v87, v90, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v87, v90, vminq_f32(vbslq_s8(vcgtq_f32(v91, vsubq_f32(v93, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v93, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v92, vmulq_f32(v101, vaddq_f32(*(a2 + 32), vmulq_f32(v101, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v101)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v100)), 0x17uLL)), *a2, 3))), v92))), v91), v92));
    *(v6 + v85) = vbslq_s8(v87, v90, vmulq_laneq_f32(v102, v102, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vrecpsq_f32(v21, v17);
      v24 = vrecpsq_f32(v22, v18);
      v25 = vandq_s8(v20, vmulq_f32(v22, v24));
      v26 = *(a2 + 3);
      v27 = vorrq_s8(vandq_s8(v20, vmulq_f32(v21, v23)), v26);
      v28 = vorrq_s8(v25, v26);
      v29 = vmulq_f32(v14, v27);
      v30 = *(a2 + 76);
      v31 = *(a2 + 75);
      v32 = vmulq_f32(v13, v28);
      v33 = *(a2 + 1);
      v34 = vdupq_lane_s32(*a2, 1);
      v35 = vminq_f32(vmaxq_f32(v29, v31), vdupq_laneq_s32(vbslq_s8(v30, v23, v31), 3));
      v36 = vminq_f32(vmaxq_f32(v32, v31), vdupq_laneq_s32(vbslq_s8(v30, v24, v31), 3));
      v37 = vaddq_f32(v35, v34);
      v38 = vaddq_f32(v36, v34);
      v39 = *(a2 + 19);
      v40 = *(a2 + 20);
      v41 = vandq_s8(v39, v37);
      v42 = vandq_s8(v39, v38);
      v43 = *(a2 + 5);
      v44 = vorrq_s8(v41, v43);
      v45 = vorrq_s8(v42, v43);
      v46 = *(a2 + 21);
      v47 = *(a2 + 22);
      v48 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v46, vcgtq_f32(v40, v37)));
      v49 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v46, vcgtq_f32(v40, v38)));
      v50 = *(a2 + 23);
      v51 = *(a2 + 24);
      v52 = vandq_s8(v43, vcgtq_f32(v44, v50));
      v53 = vandq_s8(v43, vcgtq_f32(v45, v50));
      v54 = vsubq_f32(v49, v47);
      v55 = vaddq_f32(vsubq_f32(v48, v47), v52);
      v56 = vsubq_f32(vsubq_f32(v44, v43), vmulq_f32(vmulq_f32(v51, v52), v44));
      v57 = vsubq_f32(vsubq_f32(v45, v43), vmulq_f32(vmulq_f32(v51, v53), v45));
      v58 = *(a2 + 25);
      v59 = *(a2 + 26);
      v60 = *(a2 + 27);
      v61 = *(a2 + 28);
      v62 = vmulq_n_f32(vaddq_f32(v55, vmulq_f32(v56, vaddq_f32(vaddq_f32(v60, vmulq_f32(v56, v61)), vmulq_f32(vmulq_f32(v56, v56), vaddq_f32(v58, vmulq_f32(v59, v56)))))), COERCE_FLOAT(*a2));
      v63 = vmulq_n_f32(vaddq_f32(vaddq_f32(v54, v53), vmulq_f32(v57, vaddq_f32(vaddq_f32(v60, vmulq_f32(v57, v61)), vmulq_f32(vmulq_f32(v57, v57), vaddq_f32(v58, vmulq_f32(v59, v57)))))), COERCE_FLOAT(*a2));
      v64 = *(a2 + 29);
      v65 = *(a2 + 30);
      v66 = vmaxq_f32(v62, v64);
      v67 = vmaxq_f32(v63, v64);
      v68 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
      v69 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
      v70 = vsubq_f32(v68, vandq_s8(v43, vcgtq_f32(v68, v66)));
      v71 = vsubq_f32(v69, vandq_s8(v43, vcgtq_f32(v69, v67)));
      v72 = vsubq_f32(v66, v70);
      v73 = vsubq_f32(v67, v71);
      v74 = *(a2 + 31);
      v75 = *(a2 + 32);
      v76 = vaddq_f32(v43, vmulq_f32(v72, vaddq_f32(v75, vmulq_f32(v72, vaddq_f32(v65, vmulq_f32(v74, v72))))));
      v77 = vaddq_f32(v43, vmulq_f32(v73, vaddq_f32(v75, vmulq_f32(v73, vaddq_f32(v65, vmulq_f32(v74, v73))))));
      v78 = *(a2 + 33);
      v79 = vaddq_s32(v78, vcvtq_s32_f32(v70));
      v80 = vmulq_f32(v77, vshlq_n_s32(vaddq_s32(v78, vcvtq_s32_f32(v71)), 0x17uLL));
      v81 = vdupq_laneq_s32(*a2, 2);
      v82 = vmulq_laneq_f32(v80, *a2, 3);
      v83 = vaddq_f32(v81, vmulq_laneq_f32(vmulq_f32(v76, vshlq_n_s32(v79, 0x17uLL)), *a2, 3));
      v84 = vmulq_n_f32(v35, *&v33);
      v85 = vmulq_n_f32(v36, *&v33);
      v86 = vdupq_lane_s32(*&v33, 1);
      v87 = vsubq_f32(v36, v86);
      v88 = vcgtq_f32(v31, vsubq_f32(v35, v86));
      v89 = vcgtq_f32(v31, v87);
      v90 = vdupq_lane_s32(*(a2 + 32), 0);
      v91 = vaddq_f32(v90, vbslq_s8(v15, v29, vbslq_s8(v88, v84, v83)));
      v92 = vaddq_f32(v90, vbslq_s8(v15, v32, vbslq_s8(v89, v85, vaddq_f32(v81, v82))));
      v93 = vbslq_s8(v15, v29, v91);
      v94 = vbslq_s8(v15, v32, v92);
      v95 = (v6 + v11);
      v95[-1] = vbslq_s8(v15, v29, vmulq_laneq_f32(v93, v93, 3));
      *v95 = vbslq_s8(v15, v32, vmulq_laneq_f32(v94, v94, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v96 = 16 * v10;
    v97 = *(v7 + v96);
    v98 = *(a2 + 15);
    v99 = vmaxq_f32(vdupq_laneq_s32(v97, 3), *(a2 + 16));
    v100 = vmulq_f32(vrecpeq_f32(v99), *(a2 + 18));
    v101 = vrecpsq_f32(v100, v99);
    v102 = vmulq_f32(v97, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v100, v101)), *(a2 + 3)));
    v103 = *(a2 + 75);
    v104 = vminq_f32(vmaxq_f32(v102, v103), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v101, v103), 3));
    v105 = vaddq_f32(v104, vdupq_lane_s32(*a2, 1));
    v106 = *(a2 + 5);
    v107 = vorrq_s8(vandq_s8(*(a2 + 19), v105), v106);
    v108 = vandq_s8(v106, vcgtq_f32(v107, *(a2 + 23)));
    v109 = vsubq_f32(vsubq_f32(v107, v106), vmulq_f32(vmulq_f32(*(a2 + 24), v108), v107));
    v110 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v105, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v105))), *(a2 + 22)), v108), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v109, *(a2 + 28))), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v109)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v111 = vcvtq_f32_s32(vcvtq_s32_f32(v110));
    v112 = vsubq_f32(v111, vandq_s8(v106, vcgtq_f32(v111, v110)));
    v113 = vsubq_f32(v110, v112);
    v114 = vbslq_s8(v98, v102, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v98, v102, vbslq_s8(vcgtq_f32(v103, vsubq_f32(v104, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v104, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v106, vmulq_f32(v113, vaddq_f32(*(a2 + 32), vmulq_f32(v113, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v113)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v112)), 0x17uLL)), *a2, 3))))));
    *(v6 + v96) = vbslq_s8(v98, v102, vmulq_laneq_f32(v114, v114, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vrecpsq_f32(v19, v17);
      v22 = vrecpsq_f32(v20, v18);
      v23 = vmulq_f32(v19, v21);
      v24 = vmulq_f32(v20, v22);
      v25 = vmulq_f32(v23, vrecpsq_f32(v23, v17));
      v26 = *(a2 + 17);
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v14, vorrq_s8(vandq_s8(v26, v25), v27));
      v29 = vmulq_f32(v13, vorrq_s8(vandq_s8(v26, vmulq_f32(v24, vrecpsq_f32(v24, v18))), v27));
      v30 = *(a2 + 75);
      v31 = vminq_f32(vmaxq_f32(v28, v30), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v21, v30), 3));
      v32 = *(a2 + 1);
      v33 = vminq_f32(vmaxq_f32(v29, v30), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v22, v30), 3));
      v34 = vdupq_lane_s32(*a2, 1);
      v35 = vaddq_f32(v31, v34);
      v36 = vaddq_f32(v33, v34);
      v37 = *(a2 + 5);
      v38 = vcgtq_f32(vandq_s8(v37, vceqq_f32(vdupq_lane_s32(*a2, 0), v30)), v30);
      v39 = vbslq_s8(v38, v37, v35);
      v40 = vbslq_s8(v38, v37, v36);
      v41 = *(a2 + 19);
      v42 = *(a2 + 20);
      v43 = vorrq_s8(vandq_s8(v41, v39), v37);
      v44 = vorrq_s8(vandq_s8(v41, v40), v37);
      v45 = *(a2 + 21);
      v46 = *(a2 + 22);
      v47 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v40, 0x17uLL)), vandq_s8(v45, vcgtq_f32(v42, v40)));
      v48 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v39, 0x17uLL)), vandq_s8(v45, vcgtq_f32(v42, v39))), v46);
      v49 = *(a2 + 23);
      v50 = *(a2 + 24);
      v51 = vandq_s8(v37, vcgtq_f32(v43, v49));
      v52 = vandq_s8(v37, vcgtq_f32(v44, v49));
      v53 = vaddq_f32(v48, v51);
      v54 = vaddq_f32(vsubq_f32(v47, v46), v52);
      v55 = vsubq_f32(vsubq_f32(v43, v37), vmulq_f32(vmulq_f32(v50, v51), v43));
      v56 = vsubq_f32(vsubq_f32(v44, v37), vmulq_f32(vmulq_f32(v50, v52), v44));
      v57 = vmulq_f32(v55, v55);
      v58 = *(a2 + 37);
      v59 = *(a2 + 38);
      v60 = vaddq_f32(v58, vmulq_f32(v59, v55));
      v61 = vaddq_f32(v58, vmulq_f32(v59, v56));
      v62 = *(a2 + 39);
      v63 = *(a2 + 40);
      v64 = vaddq_f32(v62, vmulq_f32(v63, v55));
      v65 = vaddq_f32(v62, vmulq_f32(v63, v56));
      v66 = *(a2 + 41);
      v67 = *(a2 + 42);
      v68 = vaddq_f32(v66, vmulq_f32(v67, v55));
      v69 = vaddq_f32(v66, vmulq_f32(v67, v56));
      v70 = vmulq_f32(v56, v56);
      v71 = vaddq_f32(v69, vmulq_f32(v70, vaddq_f32(v61, vmulq_f32(v70, v65))));
      v72 = vmulq_f32(v55, vaddq_f32(v68, vmulq_f32(v57, vaddq_f32(v60, vmulq_f32(v57, v64)))));
      v73 = *(a2 + 43);
      v74 = *(a2 + 44);
      v75 = vaddq_f32(v54, vmulq_f32(v56, vaddq_f32(v73, vmulq_f32(v56, v71))));
      v76 = *(a2 + 29);
      v77 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v53, vmulq_f32(v55, vaddq_f32(v73, v72))), COERCE_FLOAT(*a2)), v76);
      v78 = vmaxq_f32(vmulq_n_f32(v75, COERCE_FLOAT(*a2)), v76);
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vcvtq_f32_s32(vcvtq_s32_f32(v78));
      v81 = vsubq_f32(v79, vandq_s8(v37, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v80, vandq_s8(v37, vcgtq_f32(v80, v78)));
      v83 = vsubq_f32(v77, v81);
      v84 = vsubq_f32(v78, v82);
      v85 = *(a2 + 45);
      v86 = *(a2 + 46);
      v87 = vaddq_f32(v74, vmulq_f32(v85, v83));
      v88 = vaddq_f32(v74, vmulq_f32(v85, v84));
      v89 = *(a2 + 47);
      v90 = *(a2 + 48);
      v91 = vaddq_f32(v37, vmulq_f32(v83, vaddq_f32(v90, vmulq_f32(v83, vaddq_f32(vaddq_f32(v86, vmulq_f32(v83, v89)), vmulq_f32(vmulq_f32(v83, v83), v87))))));
      v92 = vaddq_f32(v37, vmulq_f32(v84, vaddq_f32(v90, vmulq_f32(v84, vaddq_f32(vaddq_f32(v86, vmulq_f32(v89, v84)), vmulq_f32(vmulq_f32(v84, v84), v88))))));
      v93 = *(a2 + 33);
      v94 = vaddq_s32(v93, vcvtq_s32_f32(v81));
      v95 = vmulq_f32(v92, vshlq_n_s32(vaddq_s32(v93, vcvtq_s32_f32(v82)), 0x17uLL));
      v96 = vdupq_laneq_s32(*a2, 2);
      v97 = vmulq_laneq_f32(v95, *a2, 3);
      v98 = vaddq_f32(v96, vmulq_laneq_f32(vmulq_f32(v91, vshlq_n_s32(v94, 0x17uLL)), *a2, 3));
      v99 = vmulq_n_f32(v31, *&v32);
      v100 = vmulq_n_f32(v33, *&v32);
      v101 = vdupq_lane_s32(*&v32, 1);
      v102 = vdupq_lane_s32(*(a2 + 32), 0);
      v103 = vaddq_f32(v102, vbslq_s8(v15, v28, vbslq_s8(vcgtq_f32(v30, vsubq_f32(v31, v101)), v99, v98)));
      v104 = vaddq_f32(v102, vbslq_s8(v15, v29, vbslq_s8(vcgtq_f32(v30, vsubq_f32(v33, v101)), v100, vaddq_f32(v96, v97))));
      v105 = vbslq_s8(v15, v28, v103);
      v106 = vbslq_s8(v15, v29, v104);
      v107 = (v6 + v11);
      v107[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v105, v105, 3));
      *v107 = vbslq_s8(v15, v29, vmulq_laneq_f32(v106, v106, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v108 = 16 * v10;
    v109 = *(v7 + v108);
    v110 = *(a2 + 15);
    v111 = vmaxq_f32(vdupq_laneq_s32(v109, 3), *(a2 + 16));
    v112 = vrecpeq_f32(v111);
    v113 = vrecpsq_f32(v112, v111);
    v114 = vmulq_f32(v112, v113);
    v115 = vmulq_f32(v109, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v114, vrecpsq_f32(v114, v111))), *(a2 + 3)));
    v116 = *(a2 + 75);
    v117 = vminq_f32(vmaxq_f32(v115, v116), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v113, v116), 3));
    v118 = *(a2 + 5);
    v119 = vbslq_s8(vcgtq_f32(vandq_s8(v118, vceqq_f32(vdupq_lane_s32(*a2, 0), v116)), v116), v118, vaddq_f32(v117, vdupq_lane_s32(*a2, 1)));
    v120 = vorrq_s8(vandq_s8(*(a2 + 19), v119), v118);
    v121 = vandq_s8(v118, vcgtq_f32(v120, *(a2 + 23)));
    v122 = vsubq_f32(vsubq_f32(v120, v118), vmulq_f32(vmulq_f32(*(a2 + 24), v121), v120));
    v123 = vmulq_f32(v122, v122);
    v124 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v119, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v119))), *(a2 + 22)), v121), vmulq_f32(v122, vaddq_f32(*(a2 + 43), vmulq_f32(v122, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v122)), vmulq_f32(v123, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v122)), vmulq_f32(v123, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v122)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v125 = vcvtq_f32_s32(vcvtq_s32_f32(v124));
    v126 = vsubq_f32(v125, vandq_s8(v118, vcgtq_f32(v125, v124)));
    v127 = vsubq_f32(v124, v126);
    v128 = vbslq_s8(v110, v115, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v110, v115, vbslq_s8(vcgtq_f32(v116, vsubq_f32(v117, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v117, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v118, vmulq_f32(v127, vaddq_f32(*(a2 + 48), vmulq_f32(v127, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v127)), vmulq_f32(vmulq_f32(v127, v127), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v127)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v126)), 0x17uLL)), *a2, 3))))));
    *(v6 + v108) = vbslq_s8(v110, v115, vmulq_laneq_f32(v128, v128, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_floatTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = 16 * *(a1 + 22);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + v10);
        v12 = *(a2 + 72);
        v13 = *(a2 + 73);
        v14 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v11, v12), 3), v12), v13);
        v15 = vminq_f32(vmaxq_f32(vrecpeq_f32(v14), v12), v13);
        v16 = vrecpsq_f32(v14, v15);
        v17 = vminq_f32(vmaxq_f32(vmulq_f32(v15, v16), v12), v13);
        v18 = vmulq_f32(v17, vrecpsq_f32(v14, v17));
        v18.i32[3] = 1.0;
        v19 = vmulq_f32(v11, v18);
        v20 = *(a2 + 75);
        v21 = vminq_f32(vmaxq_f32(v19, v20), vdupq_laneq_s32(vbslq_s8(*(a2 + 76), v16, v20), 3));
        v22 = *(a2 + 5);
        v23 = vbslq_s8(vcgtq_f32(vandq_s8(v22, vceqq_f32(vdupq_lane_s32(*a2, 0), v20)), v20), v22, vaddq_f32(v21, vdupq_lane_s32(*a2, 1)));
        v24 = *(a2 + 50);
        v25 = vcgeq_f32(v23, v24);
        v26 = *(a2 + 21);
        v27 = vandq_s8(v26, vceqq_f32(v23, v24));
        v28 = *(a2 + 52);
        v29 = vsubq_f32(vbicq_s8(v25, *(a2 + 51)), v27);
        v30 = vcgtq_f32(*(a2 + 20), v23);
        v31 = vmulq_f32(v23, vaddq_f32(v22, vandq_s8(*(a2 + 49), v30)));
        v32 = vorrq_s8(vandq_s8(*(a2 + 19), v31), v22);
        v33 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v26, vceqq_f32(v23, v26)), vsubq_f32(v29, vandq_s8(v28, v30))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)));
        v34 = vandq_s8(v22, vcgtq_f32(v32, *(a2 + 23)));
        v35 = vaddq_f32(v33, v34);
        v36 = vsubq_f32(vsubq_f32(v32, v22), vmulq_f32(vmulq_f32(*(a2 + 24), v34), v32));
        v37 = vmulq_f32(v36, v36);
        v38 = vmulq_n_f32(vaddq_f32(v35, vmulq_f32(v36, vaddq_f32(*(a2 + 61), vmulq_f32(v36, vaddq_f32(vaddq_f32(vmulq_f32(v37, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v36))), vaddq_f32(*(a2 + 59), vmulq_f32(v36, *(a2 + 60)))), vmulq_f32(vmulq_f32(v37, v37), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v36)), vmulq_f32(v37, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v36)))))))))), COERCE_FLOAT(*a2));
        v39 = vminq_f32(vmaxq_f32(v38, *(a2 + 62)), *(a2 + 63));
        v40 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
        v41 = vsubq_f32(v40, vandq_s8(v22, vcgtq_f32(v40, v39)));
        v42 = vsubq_f32(v39, v41);
        v43 = vmulq_f32(v42, v42);
        v44 = vcgtq_f32(*(a2 + 70), v41);
        v45 = vbslq_s8(vcgtq_f32(v20, vsubq_f32(v21, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v21, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v22, vceqq_f32(v38, v38)), v20), vmulq_f32(vaddq_f32(v22, vandq_s8(*(a2 + 71), v44)), vmulq_f32(vaddq_f32(v22, vmulq_f32(v42, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v42, *(a2 + 69))), vmulq_f32(v43, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v42)), vmulq_f32(v43, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v42)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v41, vandq_s8(v28, v44)))), 0x17uLL))), v38), *a2, 3)));
        v46 = *(a2 + 15);
        v47 = vbslq_s8(v46, v19, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(v46, v19, v45)));
        *(v6 + v10) = vbslq_s8(v46, v19, vmulq_laneq_f32(v47, v47, 3));
        v10 += 16;
      }

      while (v9 != v10);
      ++v4;
      v5 += v7;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t Getrec709_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = *(a1 + 6);
    v8 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v57 = 0;
        v58 = 16 * v8;
        v59 = 16 * v7;
        v60 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v61 = 0;
          do
          {
            v62 = *(a2 + 15);
            v63 = vmulq_f32(v5[v61 / 0x10], vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v5[v61 / 0x10], 3), *(a2 + 16)))), *(a2 + 3)));
            v64 = vminq_f32(vmaxq_f32(v63, *(a2 + 75)), *(a2 + 5));
            v65 = vbslq_s8(v62, v63, vmulq_f32(v64, vminq_f32(vrsqrteq_f32(v64), *(a2 + 73))));
            v6[v61 / 0x10] = vbslq_s8(v62, v63, vmulq_laneq_f32(v65, v65, 3));
            v61 += 16;
          }

          while (v60 != v61);
          ++v57;
          v5 = (v5 + v58);
          v6 = (v6 + v59);
        }

        while (v57 != v3);
      }
    }

    else
    {
      v9 = 0;
      v10 = 16 * v7;
      v11 = 16 * v8;
      v12 = v5 + 4;
      v13 = v6 + 4;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = 2;
        do
        {
          v18 = v5[v17 - 2];
          v19 = v5[v17 - 1];
          v20 = v5[v17];
          v21 = v5[v17 + 1];
          v23 = *(a2 + 15);
          v22 = *(a2 + 16);
          v24 = vmaxq_f32(vdupq_laneq_s32(v21, 3), v22);
          v25 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v18, 3), v22));
          v26 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v19, 3), v22));
          v27 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v20, 3), v22));
          v28 = *(a2 + 17);
          v29 = vandq_s8(v28, v25);
          v30 = vandq_s8(v28, v26);
          v31 = vandq_s8(v28, v27);
          v32 = vandq_s8(v28, vrecpeq_f32(v24));
          v33 = *(a2 + 3);
          v34 = vmulq_f32(v18, vorrq_s8(v29, v33));
          v35 = vmulq_f32(v19, vorrq_s8(v30, v33));
          v36 = vmulq_f32(v20, vorrq_s8(v31, v33));
          v37 = vmulq_f32(v21, vorrq_s8(v32, v33));
          v38 = *(a2 + 75);
          v39 = *(a2 + 5);
          v40 = vminq_f32(vmaxq_f32(v34, v38), v39);
          v41 = vminq_f32(vmaxq_f32(v35, v38), v39);
          v42 = vminq_f32(vmaxq_f32(v36, v38), v39);
          v43 = vminq_f32(vmaxq_f32(v37, v38), v39);
          v44 = *(a2 + 73);
          v45 = v16;
          v46 = vbslq_s8(v23, v34, vmulq_f32(v40, vminq_f32(vrsqrteq_f32(v40), v44)));
          v47 = vbslq_s8(v23, v35, vmulq_f32(v41, vminq_f32(vrsqrteq_f32(v41), v44)));
          v48 = vbslq_s8(v23, v36, vmulq_f32(v42, vminq_f32(vrsqrteq_f32(v42), v44)));
          v49 = vbslq_s8(v23, v37, vmulq_f32(v43, vminq_f32(vrsqrteq_f32(v43), v44)));
          v50 = v15;
          v51 = &v6[v17];
          v14 += 4;
          v51[-2] = vbslq_s8(v23, v34, vmulq_laneq_f32(v46, v46, 3));
          v51[-1] = vbslq_s8(v23, v35, vmulq_laneq_f32(v47, v47, 3));
          *v51 = vbslq_s8(v23, v36, vmulq_laneq_f32(v48, v48, 3));
          v51[1] = vbslq_s8(v23, v37, vmulq_laneq_f32(v49, v49, 3));
          v17 += 4;
          v16 += 4;
          v15 = v50 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v52 = *v45++;
            v53 = *(a2 + 15);
            v54 = vmulq_f32(v52, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v52, 3), *(a2 + 16)))), *(a2 + 3)));
            v55 = vminq_f32(vmaxq_f32(v54, *(a2 + 75)), *(a2 + 5));
            v56 = vbslq_s8(v53, v54, vmulq_f32(v55, vminq_f32(vrsqrteq_f32(v55), *(a2 + 73))));
            *v50++ = vbslq_s8(v53, v54, vmulq_laneq_f32(v56, v56, 3));
            ++v14;
          }

          while (v14 < v4);
        }

        ++v9;
        v6 = (v6 + v10);
        v5 = (v5 + v11);
        v12 = (v12 + v11);
        v13 = (v13 + v10);
      }

      while (v9 != v3);
    }
  }

  return 0;
}

uint64_t Getrec709_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v17));
      v22 = *(a2 + 17);
      v21 = *(a2 + 18);
      v23 = vmulq_f32(v20, v21);
      v24 = vandq_s8(v22, vmulq_f32(v18, v21));
      v25 = vandq_s8(v22, vmulq_f32(v19, v21));
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(v24, v26));
      v28 = vmulq_f32(v14, vorrq_s8(v25, v26));
      v29 = vmulq_f32(v15, vorrq_s8(vandq_s8(v22, v23), v26));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = *(a2 + 6);
      v33 = vminq_f32(vmaxq_f32(v27, v30), v31);
      v34 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v35 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v36 = vmulq_f32(v32, vcvtq_f32_s32(v33));
      v37 = vmulq_f32(v32, vcvtq_f32_s32(v34));
      v38 = vmulq_f32(v32, vcvtq_f32_s32(v35));
      v39 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v42 = *(a2 + 7);
      v43 = *(a2 + 8);
      v44 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v36, v39), v42));
      v45 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v37, v40), v42));
      v46 = vrsqrteq_f32(vaddq_f32(v42, vsubq_f32(v38, v41)));
      v47 = vaddq_f32(v43, v39);
      v48 = vaddq_f32(v43, v40);
      v49 = vaddq_f32(v43, v41);
      v50 = *(a2 + 9);
      v51 = *(a2 + 10);
      v52 = vsubq_f32(v47, vmulq_f32(v44, v50));
      v53 = *(a2 + 77);
      v54 = vmulq_f32(v53, v52);
      v55 = vmulq_f32(v53, vsubq_f32(v48, vmulq_f32(v45, v50)));
      v56 = vmulq_f32(v53, vsubq_f32(v49, vmulq_f32(v46, v50)));
      v57 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v60 = vsubq_f32(v57, vandq_s8(v31, vcgtq_f32(v57, v54)));
      v61 = vsubq_f32(v58, vandq_s8(v31, vcgtq_f32(v58, v55)));
      v62 = vsubq_f32(v59, vandq_s8(v31, vcgtq_f32(v59, v56)));
      v63 = *(a2 + 11);
      v64 = *(a2 + 12);
      v65 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v54, v60))), v64);
      v66 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v55, v61))), v64);
      v67 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v56, v62))), v64);
      v68 = vaddq_f32(vaddq_f32(v51, v62), vmulq_f32(v67, v67));
      v69 = vmaxq_f32(vaddq_f32(vaddq_f32(v51, v60), vmulq_f32(v65, v65)), v30);
      v70 = vmaxq_f32(vaddq_f32(vaddq_f32(v51, v61), vmulq_f32(v66, v66)), v30);
      v71 = *(a2 + 13);
      v72 = *(a2 + 14);
      v73 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v69, v71), v72));
      v74 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v70, v71), v72));
      v75 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v68, v30), v71), v72));
      v76 = *(a2 + 78);
      v77 = *(a2 + 79);
      v78 = vaddq_f32(v76, vmulq_f32(v77, v73));
      v79 = vmulq_f32(v77, v74);
      v80 = vmulq_f32(v77, v75);
      v81 = *(a2 + 80);
      v82 = vmulq_f32(v33, v81);
      v83 = vmulq_f32(v34, v81);
      v84 = vmulq_f32(v35, v81);
      v85 = *(a2 + 81);
      v86 = vcgtq_f32(v30, vsubq_f32(v33, v85));
      v87 = vcgtq_f32(v30, vsubq_f32(v34, v85));
      v88 = vcgtq_f32(v30, vsubq_f32(v35, v85));
      v89 = vbslq_s8(v16, v27, vbslq_s8(v86, v82, v78));
      v90 = vbslq_s8(v16, v28, vbslq_s8(v87, v83, vaddq_f32(v76, v79)));
      v91 = vbslq_s8(v16, v29, vbslq_s8(v88, v84, vaddq_f32(v76, v80)));
      v92 = (v6 + v10);
      *v92 = vbslq_s8(v16, v27, vmulq_laneq_f32(v89, v89, 3));
      v92[1] = vbslq_s8(v16, v28, vmulq_laneq_f32(v90, v90, 3));
      v92[2] = vbslq_s8(v16, v29, vmulq_laneq_f32(v91, v91, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v93 = *(a2 + 15);
      v94 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v95 = *(a2 + 75);
      v96 = *(a2 + 5);
      v97 = vminq_f32(vmaxq_f32(v94, v95), v96);
      v98 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(v97));
      v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
      v100 = vmulq_f32(*(a2 + 77), vsubq_f32(vaddq_f32(*(a2 + 8), v99), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v98, v99))), *(a2 + 9))));
      v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
      v102 = vsubq_f32(v101, vandq_s8(v96, vcgtq_f32(v101, v100)));
      v103 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v100, v102))), *(a2 + 12));
      v104 = vbslq_s8(v93, v94, vbslq_s8(vcgtq_f32(v95, vsubq_f32(v97, *(a2 + 81))), vmulq_f32(v97, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v102), vmulq_f32(v103, v103)), v95), *(a2 + 13)), *(a2 + 14)))))));
      *(v6 + 16 * v11++) = vbslq_s8(v93, v94, vmulq_laneq_f32(v104, v104, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec709_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v33 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v34 = *(a2 + 77);
      v35 = vcgtq_f32(vandq_s8(v31, vceqq_f32(v34, v30)), v30);
      v36 = vbslq_s8(v35, v31, v32);
      v37 = vbslq_s8(v35, v31, v33);
      v38 = *(a2 + 19);
      v39 = *(a2 + 20);
      v40 = vorrq_s8(vandq_s8(v38, v36), v31);
      v41 = vorrq_s8(vandq_s8(v38, v37), v31);
      v42 = *(a2 + 21);
      v43 = *(a2 + 22);
      v44 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v39, v37)));
      v45 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v36, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v39, v36))), v43);
      v46 = *(a2 + 23);
      v47 = *(a2 + 24);
      v48 = vandq_s8(v31, vcgtq_f32(v40, v46));
      v49 = vandq_s8(v31, vcgtq_f32(v41, v46));
      v50 = vaddq_f32(v45, v48);
      v51 = vaddq_f32(vsubq_f32(v44, v43), v49);
      v52 = vsubq_f32(vsubq_f32(v40, v31), vmulq_f32(vmulq_f32(v47, v48), v40));
      v53 = vsubq_f32(vsubq_f32(v41, v31), vmulq_f32(vmulq_f32(v47, v49), v41));
      v54 = vmulq_f32(v52, v52);
      v55 = *(a2 + 37);
      v56 = *(a2 + 38);
      v57 = vaddq_f32(v55, vmulq_f32(v56, v52));
      v58 = vaddq_f32(v55, vmulq_f32(v56, v53));
      v59 = *(a2 + 39);
      v60 = *(a2 + 40);
      v61 = vaddq_f32(v59, vmulq_f32(v60, v52));
      v62 = vaddq_f32(v59, vmulq_f32(v60, v53));
      v63 = *(a2 + 41);
      v64 = *(a2 + 42);
      v65 = vaddq_f32(v63, vmulq_f32(v64, v52));
      v66 = vaddq_f32(v63, vmulq_f32(v64, v53));
      v67 = vmulq_f32(v53, v53);
      v68 = vaddq_f32(v66, vmulq_f32(v67, vaddq_f32(v58, vmulq_f32(v67, v62))));
      v69 = vmulq_f32(v52, vaddq_f32(v65, vmulq_f32(v54, vaddq_f32(v57, vmulq_f32(v54, v61)))));
      v70 = *(a2 + 43);
      v71 = *(a2 + 44);
      v72 = vaddq_f32(v51, vmulq_f32(v53, vaddq_f32(v70, vmulq_f32(v53, v68))));
      v73 = vmulq_f32(v34, vaddq_f32(v50, vmulq_f32(v52, vaddq_f32(v70, v69))));
      v74 = *(a2 + 29);
      v75 = vmulq_f32(v34, v72);
      v76 = vmaxq_f32(v73, v74);
      v77 = vmaxq_f32(v75, v74);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v31, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v31, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = *(a2 + 47);
      v87 = *(a2 + 48);
      v88 = vaddq_f32(v31, vmulq_f32(v82, vaddq_f32(v87, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v86)), vmulq_f32(vmulq_f32(v82, v82), vaddq_f32(v71, vmulq_f32(v84, v82))))))));
      v89 = vaddq_f32(v31, vmulq_f32(v83, vaddq_f32(v87, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v86, v83)), vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(v71, vmulq_f32(v84, v83))))))));
      v90 = *(a2 + 33);
      v91 = vmulq_f32(v88, vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v80)), 0x17uLL));
      v92 = vmulq_f32(v89, vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v81)), 0x17uLL));
      v93 = *(a2 + 78);
      v94 = *(a2 + 79);
      v95 = vmulq_f32(v94, v92);
      v96 = vaddq_f32(v93, vmulq_f32(v94, v91));
      v97 = *(a2 + 80);
      v98 = vmulq_f32(v32, v97);
      v99 = vmulq_f32(v33, v97);
      v100 = *(a2 + 81);
      v101 = vcgtq_f32(v30, vsubq_f32(v32, v100));
      v102 = vcgtq_f32(v30, vsubq_f32(v33, v100));
      v103 = vbslq_s8(v15, v28, vbslq_s8(v101, v98, v96));
      v104 = vbslq_s8(v15, v29, vbslq_s8(v102, v99, vaddq_f32(v93, v95)));
      v105 = (v6 + v11);
      v105[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v103, v103, 3));
      *v105 = vbslq_s8(v15, v29, vmulq_laneq_f32(v104, v104, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v106 = 16 * v10;
    v107 = *(v7 + v106);
    v108 = *(a2 + 15);
    v109 = vmaxq_f32(vdupq_laneq_s32(v107, 3), *(a2 + 16));
    v110 = vrecpeq_f32(v109);
    v111 = vmulq_f32(v110, vrecpsq_f32(v110, v109));
    v112 = vmulq_f32(v107, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v111, vrecpsq_f32(v111, v109))), *(a2 + 3)));
    v113 = *(a2 + 75);
    v114 = *(a2 + 5);
    v115 = vminq_f32(vmaxq_f32(v112, v113), v114);
    v116 = *(a2 + 77);
    v117 = vbslq_s8(vcgtq_f32(vandq_s8(v114, vceqq_f32(v116, v113)), v113), v114, v115);
    v118 = vorrq_s8(vandq_s8(*(a2 + 19), v117), v114);
    v119 = vandq_s8(v114, vcgtq_f32(v118, *(a2 + 23)));
    v120 = vsubq_f32(vsubq_f32(v118, v114), vmulq_f32(vmulq_f32(*(a2 + 24), v119), v118));
    v121 = vmulq_f32(v120, v120);
    v122 = vmaxq_f32(vmulq_f32(v116, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v117, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v117))), *(a2 + 22)), v119), vmulq_f32(v120, vaddq_f32(*(a2 + 43), vmulq_f32(v120, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v120)), vmulq_f32(v121, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v120)), vmulq_f32(v121, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v120))))))))))), *(a2 + 29));
    v123 = vcvtq_f32_s32(vcvtq_s32_f32(v122));
    v124 = vsubq_f32(v123, vandq_s8(v114, vcgtq_f32(v123, v122)));
    v125 = vsubq_f32(v122, v124);
    v126 = vbslq_s8(v108, v112, vbslq_s8(vcgtq_f32(v113, vsubq_f32(v115, *(a2 + 81))), vmulq_f32(v115, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vmulq_f32(vaddq_f32(v114, vmulq_f32(v125, vaddq_f32(*(a2 + 48), vmulq_f32(v125, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v125)), vmulq_f32(vmulq_f32(v125, v125), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v125)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v124)), 0x17uLL))))));
    *(v6 + v106) = vbslq_s8(v108, v112, vmulq_laneq_f32(v126, v126, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec709_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 75);
      v28 = *(a2 + 5);
      v29 = vminq_f32(vmaxq_f32(v25, v27), v28);
      v30 = vminq_f32(vmaxq_f32(v26, v27), v28);
      v31 = *(a2 + 19);
      v32 = *(a2 + 20);
      v33 = vorrq_s8(vandq_s8(v31, v29), v28);
      v34 = *(a2 + 21);
      v35 = *(a2 + 22);
      v36 = vorrq_s8(vandq_s8(v31, v30), v28);
      v37 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v32, v29))), v35);
      v38 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v32, v30))), v35);
      v39 = *(a2 + 23);
      v40 = *(a2 + 24);
      v41 = vandq_s8(v28, vcgtq_f32(v33, v39));
      v42 = vandq_s8(v28, vcgtq_f32(v36, v39));
      v43 = vaddq_f32(v38, v42);
      v44 = vsubq_f32(vsubq_f32(v33, v28), vmulq_f32(vmulq_f32(v40, v41), v33));
      v45 = vsubq_f32(vsubq_f32(v36, v28), vmulq_f32(vmulq_f32(v40, v42), v36));
      v46 = *(a2 + 25);
      v47 = *(a2 + 26);
      v48 = *(a2 + 27);
      v49 = *(a2 + 28);
      v50 = vaddq_f32(v43, vmulq_f32(v45, vaddq_f32(vaddq_f32(v48, vmulq_f32(v45, v49)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v46, vmulq_f32(v47, v45))))));
      v51 = *(a2 + 77);
      v52 = vmulq_f32(v51, vaddq_f32(vaddq_f32(v37, v41), vmulq_f32(v44, vaddq_f32(vaddq_f32(v48, vmulq_f32(v44, v49)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v46, vmulq_f32(v47, v44)))))));
      v53 = vmulq_f32(v51, v50);
      v54 = *(a2 + 29);
      v55 = *(a2 + 30);
      v56 = vmaxq_f32(v52, v54);
      v57 = vmaxq_f32(v53, v54);
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v60 = vsubq_f32(v58, vandq_s8(v28, vcgtq_f32(v58, v56)));
      v61 = vsubq_f32(v59, vandq_s8(v28, vcgtq_f32(v59, v57)));
      v62 = vsubq_f32(v56, v60);
      v63 = vsubq_f32(v57, v61);
      v64 = *(a2 + 31);
      v65 = *(a2 + 32);
      v66 = vaddq_f32(v28, vmulq_f32(v62, vaddq_f32(v65, vmulq_f32(v62, vaddq_f32(v55, vmulq_f32(v64, v62))))));
      v67 = vaddq_f32(v28, vmulq_f32(v63, vaddq_f32(v65, vmulq_f32(v63, vaddq_f32(v55, vmulq_f32(v64, v63))))));
      v68 = *(a2 + 33);
      v69 = vmulq_f32(v66, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v60)), 0x17uLL));
      v70 = vmulq_f32(v67, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v61)), 0x17uLL));
      v71 = *(a2 + 78);
      v72 = *(a2 + 79);
      v73 = vmulq_f32(v72, v70);
      v74 = vaddq_f32(v71, vmulq_f32(v72, v69));
      v75 = *(a2 + 80);
      v76 = vmulq_f32(v29, v75);
      v77 = vmulq_f32(v30, v75);
      v78 = *(a2 + 81);
      v79 = vcgtq_f32(v27, vsubq_f32(v29, v78));
      v80 = vcgtq_f32(v27, vsubq_f32(v30, v78));
      v81 = vbslq_s8(v15, v25, vbslq_s8(v79, v76, v74));
      v82 = vbslq_s8(v15, v26, vbslq_s8(v80, v77, vaddq_f32(v71, v73)));
      v83 = (v6 + v11);
      v83[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v81, v81, 3));
      *v83 = vbslq_s8(v15, v26, vmulq_laneq_f32(v82, v82, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v84 = 16 * v10;
    v85 = *(v7 + v84);
    v86 = *(a2 + 15);
    v87 = vmaxq_f32(vdupq_laneq_s32(v85, 3), *(a2 + 16));
    v88 = vmulq_f32(vrecpeq_f32(v87), *(a2 + 18));
    v89 = vmulq_f32(v85, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v88, vrecpsq_f32(v88, v87))), *(a2 + 3)));
    v90 = *(a2 + 75);
    v91 = *(a2 + 5);
    v92 = vminq_f32(vmaxq_f32(v89, v90), v91);
    v93 = vorrq_s8(vandq_s8(*(a2 + 19), v92), v91);
    v94 = vandq_s8(v91, vcgtq_f32(v93, *(a2 + 23)));
    v95 = vsubq_f32(vsubq_f32(v93, v91), vmulq_f32(vmulq_f32(*(a2 + 24), v94), v93));
    v96 = vmaxq_f32(vmulq_f32(*(a2 + 77), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v92, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v92))), *(a2 + 22)), v94), vmulq_f32(v95, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v95, *(a2 + 28))), vmulq_f32(vmulq_f32(v95, v95), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v95))))))), *(a2 + 29));
    v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
    v98 = vsubq_f32(v97, vandq_s8(v91, vcgtq_f32(v97, v96)));
    v99 = vsubq_f32(v96, v98);
    v100 = vbslq_s8(v86, v89, vbslq_s8(vcgtq_f32(v90, vsubq_f32(v92, *(a2 + 81))), vmulq_f32(v92, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vmulq_f32(vaddq_f32(v91, vmulq_f32(v99, vaddq_f32(*(a2 + 32), vmulq_f32(v99, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v99)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v98)), 0x17uLL))))));
    *(v6 + v84) = vbslq_s8(v86, v89, vmulq_laneq_f32(v100, v100, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec709_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 82);
      v28 = vbslq_s8(v15, v25, vmaxq_f32(v25, v27));
      v29 = *(a2 + 75);
      v30 = vbslq_s8(v15, v26, vmaxq_f32(v26, v27));
      v31 = vcgtq_f32(v29, v28);
      v32 = vcgtq_f32(v29, v30);
      v33 = *(a2 + 83);
      v34 = *(a2 + 5);
      v35 = vmulq_f32(v28, vbslq_s8(v31, v33, v34));
      v36 = vmulq_f32(v30, vbslq_s8(v32, v33, v34));
      v37 = *(a2 + 84);
      v38 = vminq_f32(v35, v37);
      v39 = *(a2 + 19);
      v40 = *(a2 + 20);
      v41 = vminq_f32(v36, v37);
      v42 = vorrq_s8(vandq_s8(v39, v38), v34);
      v43 = vorrq_s8(vandq_s8(v39, v41), v34);
      v44 = *(a2 + 21);
      v45 = *(a2 + 22);
      v46 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v41, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v40, v41)));
      v47 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v40, v38))), v45);
      v48 = *(a2 + 23);
      v49 = *(a2 + 24);
      v50 = vandq_s8(v34, vcgtq_f32(v42, v48));
      v51 = vandq_s8(v34, vcgtq_f32(v43, v48));
      v52 = vaddq_f32(v47, v50);
      v53 = vaddq_f32(vsubq_f32(v46, v45), v51);
      v54 = vsubq_f32(vsubq_f32(v42, v34), vmulq_f32(vmulq_f32(v49, v50), v42));
      v55 = vsubq_f32(vsubq_f32(v43, v34), vmulq_f32(vmulq_f32(v49, v51), v43));
      v56 = *(a2 + 25);
      v57 = *(a2 + 26);
      v58 = vaddq_f32(v56, vmulq_f32(v57, v54));
      v59 = vaddq_f32(v56, vmulq_f32(v57, v55));
      v60 = *(a2 + 27);
      v61 = *(a2 + 28);
      v62 = vaddq_f32(v53, vmulq_f32(v55, vaddq_f32(vaddq_f32(v60, vmulq_f32(v55, v61)), vmulq_f32(vmulq_f32(v55, v55), v59))));
      v63 = *(a2 + 77);
      v64 = vmulq_f32(v63, vaddq_f32(v52, vmulq_f32(v54, vaddq_f32(vaddq_f32(v60, vmulq_f32(v54, v61)), vmulq_f32(vmulq_f32(v54, v54), v58)))));
      v65 = vmulq_f32(v63, v62);
      v66 = *(a2 + 29);
      v67 = *(a2 + 30);
      v68 = vmaxq_f32(v64, v66);
      v69 = vmaxq_f32(v65, v66);
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
      v71 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
      v72 = vsubq_f32(v70, vandq_s8(v34, vcgtq_f32(v70, v68)));
      v73 = vsubq_f32(v71, vandq_s8(v34, vcgtq_f32(v71, v69)));
      v74 = vsubq_f32(v68, v72);
      v75 = vsubq_f32(v69, v73);
      v76 = *(a2 + 31);
      v77 = *(a2 + 32);
      v78 = vaddq_f32(v34, vmulq_f32(v74, vaddq_f32(v77, vmulq_f32(v74, vaddq_f32(v67, vmulq_f32(v76, v74))))));
      v79 = vaddq_f32(v34, vmulq_f32(v75, vaddq_f32(v77, vmulq_f32(v75, vaddq_f32(v67, vmulq_f32(v76, v75))))));
      v80 = vcvtq_s32_f32(v73);
      v81 = *(a2 + 33);
      v82 = vmulq_f32(v78, vshlq_n_s32(vaddq_s32(v81, vcvtq_s32_f32(v72)), 0x17uLL));
      v83 = vmulq_f32(v79, vshlq_n_s32(vaddq_s32(v81, v80), 0x17uLL));
      v84 = *(a2 + 78);
      v85 = *(a2 + 79);
      v86 = vaddq_f32(v84, vmulq_f32(v85, v82));
      v87 = vmulq_f32(v85, v83);
      v88 = *(a2 + 80);
      v89 = vaddq_f32(v84, v87);
      v90 = *(a2 + 81);
      v91 = vbslq_s8(v15, v25, vmulq_f32(vbslq_s8(v31, v27, v34), vbslq_s8(vcgtq_f32(v29, vsubq_f32(v35, v90)), vmulq_f32(v35, v88), v86)));
      v92 = vbslq_s8(v15, v26, vmulq_f32(vbslq_s8(v32, v27, v34), vbslq_s8(vcgtq_f32(v29, vsubq_f32(v36, v90)), vmulq_f32(v36, v88), v89)));
      v93 = (v6 + v11);
      v93[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v91, v91, 3));
      *v93 = vbslq_s8(v15, v26, vmulq_laneq_f32(v92, v92, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v94 = 16 * v10;
    v95 = *(v7 + v94);
    v96 = *(a2 + 15);
    v97 = vmaxq_f32(vdupq_laneq_s32(v95, 3), *(a2 + 16));
    v98 = vmulq_f32(vrecpeq_f32(v97), *(a2 + 18));
    v99 = vmulq_f32(v95, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v98, vrecpsq_f32(v98, v97))), *(a2 + 3)));
    v100 = *(a2 + 82);
    v101 = vbslq_s8(v96, v99, vmaxq_f32(v99, v100));
    v102 = *(a2 + 75);
    v103 = vcgtq_f32(v102, v101);
    v104 = *(a2 + 5);
    v105 = vmulq_f32(v101, vbslq_s8(v103, *(a2 + 83), v104));
    v106 = vminq_f32(v105, *(a2 + 84));
    v107 = vorrq_s8(vandq_s8(*(a2 + 19), v106), v104);
    v108 = vandq_s8(v104, vcgtq_f32(v107, *(a2 + 23)));
    v109 = vsubq_f32(vsubq_f32(v107, v104), vmulq_f32(vmulq_f32(*(a2 + 24), v108), v107));
    v110 = vmaxq_f32(vmulq_f32(*(a2 + 77), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v106, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v106))), *(a2 + 22)), v108), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v109, *(a2 + 28))), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v109))))))), *(a2 + 29));
    v111 = vcvtq_f32_s32(vcvtq_s32_f32(v110));
    v112 = vsubq_f32(v111, vandq_s8(v104, vcgtq_f32(v111, v110)));
    v113 = vsubq_f32(v110, v112);
    v114 = vbslq_s8(v96, v99, vmulq_f32(vbslq_s8(v103, v100, v104), vbslq_s8(vcgtq_f32(v102, vsubq_f32(v105, *(a2 + 81))), vmulq_f32(v105, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vmulq_f32(vaddq_f32(v104, vmulq_f32(v113, vaddq_f32(*(a2 + 32), vmulq_f32(v113, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v113)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v112)), 0x17uLL)))))));
    *(v6 + v94) = vbslq_s8(v96, v99, vmulq_laneq_f32(v114, v114, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec709_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v18));
      v25 = *(a2 + 17);
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(vandq_s8(v25, v23), v26));
      v28 = vmulq_f32(v14, vorrq_s8(vandq_s8(v25, v24), v26));
      v29 = *(a2 + 82);
      v30 = vbslq_s8(v15, v27, vmaxq_f32(v27, v29));
      v31 = vbslq_s8(v15, v28, vmaxq_f32(v28, v29));
      v32 = *(a2 + 75);
      v33 = vcgtq_f32(v32, v30);
      v34 = vcgtq_f32(v32, v31);
      v35 = *(a2 + 83);
      v36 = *(a2 + 5);
      v37 = vmulq_f32(v30, vbslq_s8(v33, v35, v36));
      v38 = vmulq_f32(v31, vbslq_s8(v34, v35, v36));
      v39 = *(a2 + 84);
      v40 = *(a2 + 77);
      v41 = vcgtq_f32(vandq_s8(v36, vceqq_f32(v40, v32)), v32);
      v42 = vbslq_s8(v41, v36, vminq_f32(v37, v39));
      v43 = vbslq_s8(v41, v36, vminq_f32(v38, v39));
      v44 = *(a2 + 19);
      v45 = *(a2 + 20);
      v46 = vorrq_s8(vandq_s8(v44, v42), v36);
      v47 = *(a2 + 21);
      v48 = *(a2 + 22);
      v49 = vorrq_s8(vandq_s8(v44, v43), v36);
      v50 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v43, 0x17uLL)), vandq_s8(v47, vcgtq_f32(v45, v43)));
      v51 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v42, 0x17uLL)), vandq_s8(v47, vcgtq_f32(v45, v42))), v48);
      v52 = *(a2 + 23);
      v53 = *(a2 + 24);
      v54 = vsubq_f32(v50, v48);
      v55 = vandq_s8(v36, vcgtq_f32(v46, v52));
      v56 = vandq_s8(v36, vcgtq_f32(v49, v52));
      v57 = vaddq_f32(v51, v55);
      v58 = vmulq_f32(vmulq_f32(v53, v55), v46);
      v59 = vmulq_f32(vmulq_f32(v53, v56), v49);
      v60 = vaddq_f32(v54, v56);
      v61 = vsubq_f32(vsubq_f32(v46, v36), v58);
      v62 = vsubq_f32(vsubq_f32(v49, v36), v59);
      v63 = vmulq_f32(v61, v61);
      v64 = *(a2 + 37);
      v65 = *(a2 + 38);
      v66 = vmulq_f32(v62, v62);
      v67 = *(a2 + 39);
      v68 = *(a2 + 40);
      v69 = vaddq_f32(v64, vmulq_f32(v65, v61));
      v70 = vaddq_f32(v67, vmulq_f32(v68, v61));
      v71 = vaddq_f32(v67, vmulq_f32(v68, v62));
      v72 = vaddq_f32(v64, vmulq_f32(v65, v62));
      v74 = *(a2 + 41);
      v73 = *(a2 + 42);
      v75 = vmulq_f32(v61, vaddq_f32(vaddq_f32(v74, vmulq_f32(v73, v61)), vmulq_f32(v63, vaddq_f32(v69, vmulq_f32(v63, v70)))));
      v76 = vmulq_f32(v62, vaddq_f32(vaddq_f32(v74, vmulq_f32(v73, v62)), vmulq_f32(v66, vaddq_f32(v72, vmulq_f32(v66, v71)))));
      v77 = *(a2 + 43);
      v78 = *(a2 + 44);
      v79 = vmulq_f32(v40, vaddq_f32(v57, vmulq_f32(v61, vaddq_f32(v77, v75))));
      v80 = vmulq_f32(v40, vaddq_f32(v60, vmulq_f32(v62, vaddq_f32(v77, v76))));
      v81 = *(a2 + 29);
      v82 = vmaxq_f32(v79, v81);
      v83 = vmaxq_f32(v80, v81);
      v84 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
      v85 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
      v86 = vsubq_f32(v84, vandq_s8(v36, vcgtq_f32(v84, v82)));
      v87 = vsubq_f32(v85, vandq_s8(v36, vcgtq_f32(v85, v83)));
      v88 = vsubq_f32(v82, v86);
      v89 = vsubq_f32(v83, v87);
      v90 = *(a2 + 45);
      v91 = *(a2 + 46);
      v92 = vaddq_f32(v78, vmulq_f32(v90, v88));
      v93 = vaddq_f32(v78, vmulq_f32(v90, v89));
      v94 = *(a2 + 47);
      v95 = *(a2 + 48);
      v96 = *(a2 + 33);
      v97 = vmulq_f32(vaddq_f32(v36, vmulq_f32(v88, vaddq_f32(v95, vmulq_f32(v88, vaddq_f32(vaddq_f32(v91, vmulq_f32(v88, v94)), vmulq_f32(vmulq_f32(v88, v88), v92)))))), vshlq_n_s32(vaddq_s32(v96, vcvtq_s32_f32(v86)), 0x17uLL));
      v98 = vmulq_f32(vaddq_f32(v36, vmulq_f32(v89, vaddq_f32(v95, vmulq_f32(v89, vaddq_f32(vaddq_f32(v91, vmulq_f32(v94, v89)), vmulq_f32(vmulq_f32(v89, v89), v93)))))), vshlq_n_s32(vaddq_s32(v96, vcvtq_s32_f32(v87)), 0x17uLL));
      v99 = *(a2 + 78);
      v100 = *(a2 + 79);
      v101 = vaddq_f32(v99, vmulq_f32(v100, v97));
      v102 = vmulq_f32(v100, v98);
      v103 = *(a2 + 80);
      v104 = vaddq_f32(v99, v102);
      v105 = *(a2 + 81);
      v106 = vbslq_s8(v15, v27, vmulq_f32(vbslq_s8(v33, v29, v36), vbslq_s8(vcgtq_f32(v32, vsubq_f32(v37, v105)), vmulq_f32(v37, v103), v101)));
      v107 = vbslq_s8(v15, v28, vmulq_f32(vbslq_s8(v34, v29, v36), vbslq_s8(vcgtq_f32(v32, vsubq_f32(v38, v105)), vmulq_f32(v38, v103), v104)));
      v108 = (v6 + v11);
      v108[-1] = vbslq_s8(v15, v27, vmulq_laneq_f32(v106, v106, 3));
      *v108 = vbslq_s8(v15, v28, vmulq_laneq_f32(v107, v107, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v109 = 16 * v10;
    v110 = *(v7 + v109);
    v111 = *(a2 + 15);
    v112 = vmaxq_f32(vdupq_laneq_s32(v110, 3), *(a2 + 16));
    v113 = vrecpeq_f32(v112);
    v114 = vmulq_f32(v113, vrecpsq_f32(v113, v112));
    v115 = vmulq_f32(v110, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v114, vrecpsq_f32(v114, v112))), *(a2 + 3)));
    v116 = *(a2 + 82);
    v117 = vbslq_s8(v111, v115, vmaxq_f32(v115, v116));
    v118 = *(a2 + 75);
    v119 = vcgtq_f32(v118, v117);
    v120 = *(a2 + 5);
    v121 = vmulq_f32(v117, vbslq_s8(v119, *(a2 + 83), v120));
    v122 = *(a2 + 77);
    v123 = vbslq_s8(vcgtq_f32(vandq_s8(v120, vceqq_f32(v122, v118)), v118), v120, vminq_f32(v121, *(a2 + 84)));
    v124 = vorrq_s8(vandq_s8(*(a2 + 19), v123), v120);
    v125 = vandq_s8(v120, vcgtq_f32(v124, *(a2 + 23)));
    v126 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v123, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v123))), *(a2 + 22)), v125);
    v127 = vsubq_f32(vsubq_f32(v124, v120), vmulq_f32(vmulq_f32(*(a2 + 24), v125), v124));
    v128 = vmulq_f32(v127, v127);
    v129 = vmaxq_f32(vmulq_f32(v122, vaddq_f32(v126, vmulq_f32(v127, vaddq_f32(*(a2 + 43), vmulq_f32(v127, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v127)), vmulq_f32(v128, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v127)), vmulq_f32(v128, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v127))))))))))), *(a2 + 29));
    v130 = vcvtq_f32_s32(vcvtq_s32_f32(v129));
    v131 = vsubq_f32(v130, vandq_s8(v120, vcgtq_f32(v130, v129)));
    v132 = vsubq_f32(v129, v131);
    v133 = vbslq_s8(v111, v115, vmulq_f32(vbslq_s8(v119, v116, v120), vbslq_s8(vcgtq_f32(v118, vsubq_f32(v121, *(a2 + 81))), vmulq_f32(v121, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vmulq_f32(vaddq_f32(v120, vmulq_f32(v132, vaddq_f32(*(a2 + 48), vmulq_f32(v132, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v132)), vmulq_f32(vmulq_f32(v132, v132), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v132)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v131)), 0x17uLL)))))));
    *(v6 + v109) = vbslq_s8(v111, v115, vmulq_laneq_f32(v133, v133, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = *(a1 + 6);
    v8 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v56 = 0;
        v57 = 16 * v8;
        v58 = 16 * v7;
        v59 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v60 = 0;
          do
          {
            v61 = *(a2 + 15);
            v62 = vmulq_f32(v5[v60 / 0x10], vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v5[v60 / 0x10], 3), *(a2 + 16)))), *(a2 + 3)));
            v63 = vminq_f32(vmaxq_f32(v62, *(a2 + 75)), *(a2 + 5));
            v64 = vbslq_s8(v61, v62, vmulq_f32(v63, v63));
            v6[v60 / 0x10] = vbslq_s8(v61, v62, vmulq_laneq_f32(v64, v64, 3));
            v60 += 16;
          }

          while (v59 != v60);
          ++v56;
          v5 = (v5 + v57);
          v6 = (v6 + v58);
        }

        while (v56 != v3);
      }
    }

    else
    {
      v9 = 0;
      v10 = 16 * v7;
      v11 = 16 * v8;
      v12 = v5 + 4;
      v13 = v6 + 4;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = 2;
        do
        {
          v18 = v5[v17 - 2];
          v19 = v5[v17 - 1];
          v20 = v5[v17];
          v21 = v5[v17 + 1];
          v23 = *(a2 + 15);
          v22 = *(a2 + 16);
          v24 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v18, 3), v22));
          v25 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v19, 3), v22));
          v26 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v20, 3), v22));
          v27 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v21, 3), v22));
          v28 = *(a2 + 17);
          v29 = vandq_s8(v28, v24);
          v30 = vandq_s8(v28, v25);
          v31 = vandq_s8(v28, v26);
          v32 = vandq_s8(v28, v27);
          v33 = *(a2 + 3);
          v34 = vmulq_f32(v18, vorrq_s8(v29, v33));
          v35 = vmulq_f32(v19, vorrq_s8(v30, v33));
          v36 = vmulq_f32(v20, vorrq_s8(v31, v33));
          v37 = vmulq_f32(v21, vorrq_s8(v32, v33));
          v38 = *(a2 + 75);
          v39 = *(a2 + 5);
          v40 = vminq_f32(vmaxq_f32(v34, v38), v39);
          v41 = vminq_f32(vmaxq_f32(v35, v38), v39);
          v42 = vminq_f32(vmaxq_f32(v36, v38), v39);
          v43 = vminq_f32(vmaxq_f32(v37, v38), v39);
          v44 = v16;
          v45 = vbslq_s8(v23, v34, vmulq_f32(v40, v40));
          v46 = vbslq_s8(v23, v35, vmulq_f32(v41, v41));
          v47 = vbslq_s8(v23, v36, vmulq_f32(v42, v42));
          v48 = vbslq_s8(v23, v37, vmulq_f32(v43, v43));
          v49 = v15;
          v50 = &v6[v17];
          v14 += 4;
          v50[-2] = vbslq_s8(v23, v34, vmulq_laneq_f32(v45, v45, 3));
          v50[-1] = vbslq_s8(v23, v35, vmulq_laneq_f32(v46, v46, 3));
          *v50 = vbslq_s8(v23, v36, vmulq_laneq_f32(v47, v47, 3));
          v50[1] = vbslq_s8(v23, v37, vmulq_laneq_f32(v48, v48, 3));
          v17 += 4;
          v16 += 4;
          v15 = v49 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v51 = *v44++;
            v52 = *(a2 + 15);
            v53 = vmulq_f32(v51, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v51, 3), *(a2 + 16)))), *(a2 + 3)));
            v54 = vminq_f32(vmaxq_f32(v53, *(a2 + 75)), *(a2 + 5));
            v55 = vbslq_s8(v52, v53, vmulq_f32(v54, v54));
            *v49++ = vbslq_s8(v52, v53, vmulq_laneq_f32(v55, v55, 3));
            ++v14;
          }

          while (v14 < v4);
        }

        ++v9;
        v6 = (v6 + v10);
        v5 = (v5 + v11);
        v12 = (v12 + v11);
        v13 = (v13 + v10);
      }

      while (v9 != v3);
    }
  }

  return 0;
}

uint64_t Getinv_rec709_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v17));
      v22 = *(a2 + 17);
      v21 = *(a2 + 18);
      v23 = vmulq_f32(v20, v21);
      v24 = vandq_s8(v22, vmulq_f32(v18, v21));
      v25 = vandq_s8(v22, vmulq_f32(v19, v21));
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(v24, v26));
      v28 = vmulq_f32(v14, vorrq_s8(v25, v26));
      v29 = vmulq_f32(v15, vorrq_s8(vandq_s8(v22, v23), v26));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = *(a2 + 6);
      v33 = vminq_f32(vmaxq_f32(v27, v30), v31);
      v34 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v35 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v36 = *(a2 + 85);
      v37 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v33, v36)));
      v38 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v34, v36)));
      v39 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v35, v36)));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v42 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
      v43 = *(a2 + 7);
      v44 = *(a2 + 8);
      v45 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v37, v40), v43));
      v46 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v38, v41), v43));
      v47 = vrsqrteq_f32(vaddq_f32(v43, vsubq_f32(v39, v42)));
      v48 = vaddq_f32(v44, v40);
      v49 = vaddq_f32(v44, v41);
      v50 = vaddq_f32(v44, v42);
      v51 = *(a2 + 9);
      v52 = *(a2 + 10);
      v53 = vsubq_f32(v48, vmulq_f32(v45, v51));
      v54 = vsubq_f32(v49, vmulq_f32(v46, v51));
      v55 = *(a2 + 86);
      v56 = vmulq_f32(v55, v53);
      v57 = vmulq_f32(v55, v54);
      v58 = vmulq_f32(v55, vsubq_f32(v50, vmulq_f32(v47, v51)));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v60 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v62 = vsubq_f32(v59, vandq_s8(v31, vcgtq_f32(v59, v56)));
      v63 = vsubq_f32(v60, vandq_s8(v31, vcgtq_f32(v60, v57)));
      v64 = vsubq_f32(v61, vandq_s8(v31, vcgtq_f32(v61, v58)));
      v65 = *(a2 + 11);
      v66 = *(a2 + 12);
      v67 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, vsubq_f32(v56, v62))), v66);
      v68 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, vsubq_f32(v57, v63))), v66);
      v69 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, vsubq_f32(v58, v64))), v66);
      v70 = vaddq_f32(vaddq_f32(v52, v64), vmulq_f32(v69, v69));
      v71 = vmaxq_f32(vaddq_f32(vaddq_f32(v52, v62), vmulq_f32(v67, v67)), v30);
      v72 = vmaxq_f32(vaddq_f32(vaddq_f32(v52, v63), vmulq_f32(v68, v68)), v30);
      v73 = *(a2 + 13);
      v74 = *(a2 + 14);
      v75 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v71, v73), v74));
      v76 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v72, v73), v74));
      v77 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v70, v30), v73), v74));
      v78 = *(a2 + 87);
      v79 = *(a2 + 88);
      v80 = vmulq_f32(v33, v79);
      v81 = vmulq_f32(v34, v79);
      v82 = vmulq_f32(v35, v79);
      v83 = *(a2 + 89);
      v84 = vcgtq_f32(v30, vsubq_f32(v33, v83));
      v85 = vcgtq_f32(v30, vsubq_f32(v34, v83));
      v86 = vcgtq_f32(v30, vsubq_f32(v35, v83));
      v87 = vbslq_s8(v16, v27, vbslq_s8(v84, v80, vmulq_f32(v78, v75)));
      v88 = vbslq_s8(v16, v28, vbslq_s8(v85, v81, vmulq_f32(v78, v76)));
      v89 = vbslq_s8(v16, v29, vbslq_s8(v86, v82, vmulq_f32(v78, v77)));
      v90 = (v6 + v10);
      *v90 = vbslq_s8(v16, v27, vmulq_laneq_f32(v87, v87, 3));
      v90[1] = vbslq_s8(v16, v28, vmulq_laneq_f32(v88, v88, 3));
      v90[2] = vbslq_s8(v16, v29, vmulq_laneq_f32(v89, v89, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v91 = *(a2 + 15);
      v92 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v93 = *(a2 + 75);
      v94 = *(a2 + 5);
      v95 = vminq_f32(vmaxq_f32(v92, v93), v94);
      v96 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v95, *(a2 + 85))));
      v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
      v98 = vmulq_f32(*(a2 + 86), vsubq_f32(vaddq_f32(*(a2 + 8), v97), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v96, v97))), *(a2 + 9))));
      v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
      v100 = vsubq_f32(v99, vandq_s8(v94, vcgtq_f32(v99, v98)));
      v101 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v98, v100))), *(a2 + 12));
      v102 = vbslq_s8(v91, v92, vbslq_s8(vcgtq_f32(v93, vsubq_f32(v95, *(a2 + 89))), vmulq_f32(v95, *(a2 + 88)), vmulq_f32(*(a2 + 87), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v100), vmulq_f32(v101, v101)), v93), *(a2 + 13)), *(a2 + 14))))));
      *(v6 + 16 * v11++) = vbslq_s8(v91, v92, vmulq_laneq_f32(v102, v102, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v33 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v34 = *(a2 + 85);
      v35 = *(a2 + 86);
      v36 = vcgtq_f32(vandq_s8(v31, vceqq_f32(v35, v30)), v30);
      v37 = vbslq_s8(v36, v31, vaddq_f32(v32, v34));
      v38 = vbslq_s8(v36, v31, vaddq_f32(v33, v34));
      v39 = *(a2 + 19);
      v40 = *(a2 + 20);
      v41 = vorrq_s8(vandq_s8(v39, v37), v31);
      v42 = vorrq_s8(vandq_s8(v39, v38), v31);
      v43 = *(a2 + 21);
      v44 = *(a2 + 22);
      v45 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v40, v37)));
      v46 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v40, v38)));
      v47 = *(a2 + 23);
      v48 = *(a2 + 24);
      v49 = vandq_s8(v31, vcgtq_f32(v41, v47));
      v50 = vandq_s8(v31, vcgtq_f32(v42, v47));
      v51 = vaddq_f32(vsubq_f32(v45, v44), v49);
      v52 = vmulq_f32(v48, v49);
      v53 = vmulq_f32(vmulq_f32(v48, v50), v42);
      v54 = vaddq_f32(vsubq_f32(v46, v44), v50);
      v55 = vsubq_f32(vsubq_f32(v41, v31), vmulq_f32(v52, v41));
      v56 = vsubq_f32(vsubq_f32(v42, v31), v53);
      v57 = vmulq_f32(v55, v55);
      v58 = vmulq_f32(v56, v56);
      v59 = *(a2 + 37);
      v60 = *(a2 + 38);
      v61 = *(a2 + 39);
      v62 = *(a2 + 40);
      v63 = vaddq_f32(v59, vmulq_f32(v60, v55));
      v64 = vaddq_f32(v61, vmulq_f32(v62, v55));
      v65 = vaddq_f32(v61, vmulq_f32(v62, v56));
      v66 = vaddq_f32(v59, vmulq_f32(v60, v56));
      v67 = *(a2 + 41);
      v68 = *(a2 + 42);
      v69 = vaddq_f32(vaddq_f32(v67, vmulq_f32(v68, v56)), vmulq_f32(v58, vaddq_f32(v66, vmulq_f32(v58, v65))));
      v70 = vmulq_f32(v55, vaddq_f32(vaddq_f32(v67, vmulq_f32(v68, v55)), vmulq_f32(v57, vaddq_f32(v63, vmulq_f32(v57, v64)))));
      v71 = *(a2 + 43);
      v72 = *(a2 + 44);
      v73 = vmulq_f32(v35, vaddq_f32(v51, vmulq_f32(v55, vaddq_f32(v71, v70))));
      v74 = vmulq_f32(v35, vaddq_f32(v54, vmulq_f32(v56, vaddq_f32(v71, vmulq_f32(v56, v69)))));
      v75 = *(a2 + 29);
      v76 = vmaxq_f32(v73, v75);
      v77 = vmaxq_f32(v74, v75);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v31, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v31, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = vaddq_f32(v72, vmulq_f32(v84, v82));
      v87 = vaddq_f32(v72, vmulq_f32(v84, v83));
      v88 = *(a2 + 47);
      v89 = *(a2 + 48);
      v90 = vaddq_f32(v31, vmulq_f32(v82, vaddq_f32(v89, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v88)), vmulq_f32(vmulq_f32(v82, v82), v86))))));
      v91 = *(a2 + 33);
      v92 = vaddq_f32(v31, vmulq_f32(v83, vaddq_f32(v89, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v88, v83)), vmulq_f32(vmulq_f32(v83, v83), v87))))));
      v93 = vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v80)), 0x17uLL);
      v94 = vmulq_f32(v92, vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v81)), 0x17uLL));
      v95 = *(a2 + 87);
      v96 = vmulq_f32(v95, vmulq_f32(v90, v93));
      v97 = *(a2 + 88);
      v98 = vmulq_f32(v32, v97);
      v99 = vmulq_f32(v33, v97);
      v100 = *(a2 + 89);
      v101 = vcgtq_f32(v30, vsubq_f32(v32, v100));
      v102 = vcgtq_f32(v30, vsubq_f32(v33, v100));
      v103 = vbslq_s8(v15, v28, vbslq_s8(v101, v98, v96));
      v104 = vbslq_s8(v15, v29, vbslq_s8(v102, v99, vmulq_f32(v95, v94)));
      v105 = (v6 + v11);
      v105[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v103, v103, 3));
      *v105 = vbslq_s8(v15, v29, vmulq_laneq_f32(v104, v104, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v106 = 16 * v10;
    v107 = *(v7 + v106);
    v108 = *(a2 + 15);
    v109 = vmaxq_f32(vdupq_laneq_s32(v107, 3), *(a2 + 16));
    v110 = vrecpeq_f32(v109);
    v111 = vmulq_f32(v110, vrecpsq_f32(v110, v109));
    v112 = vmulq_f32(v107, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v111, vrecpsq_f32(v111, v109))), *(a2 + 3)));
    v113 = *(a2 + 75);
    v114 = *(a2 + 5);
    v115 = vminq_f32(vmaxq_f32(v112, v113), v114);
    v116 = *(a2 + 86);
    v117 = vbslq_s8(vcgtq_f32(vandq_s8(v114, vceqq_f32(v116, v113)), v113), v114, vaddq_f32(v115, *(a2 + 85)));
    v118 = vorrq_s8(vandq_s8(*(a2 + 19), v117), v114);
    v119 = vandq_s8(v114, vcgtq_f32(v118, *(a2 + 23)));
    v120 = vsubq_f32(vsubq_f32(v118, v114), vmulq_f32(vmulq_f32(*(a2 + 24), v119), v118));
    v121 = vmulq_f32(v120, v120);
    v122 = vmaxq_f32(vmulq_f32(v116, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v117, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v117))), *(a2 + 22)), v119), vmulq_f32(v120, vaddq_f32(*(a2 + 43), vmulq_f32(v120, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v120)), vmulq_f32(v121, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v120)), vmulq_f32(v121, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v120))))))))))), *(a2 + 29));
    v123 = vcvtq_f32_s32(vcvtq_s32_f32(v122));
    v124 = vsubq_f32(v123, vandq_s8(v114, vcgtq_f32(v123, v122)));
    v125 = vsubq_f32(v122, v124);
    v126 = vbslq_s8(v108, v112, vbslq_s8(vcgtq_f32(v113, vsubq_f32(v115, *(a2 + 89))), vmulq_f32(v115, *(a2 + 88)), vmulq_f32(*(a2 + 87), vmulq_f32(vaddq_f32(v114, vmulq_f32(v125, vaddq_f32(*(a2 + 48), vmulq_f32(v125, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v125)), vmulq_f32(vmulq_f32(v125, v125), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v125)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v124)), 0x17uLL)))));
    *(v6 + v106) = vbslq_s8(v108, v112, vmulq_laneq_f32(v126, v126, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 75);
      v28 = *(a2 + 5);
      v29 = vminq_f32(vmaxq_f32(v25, v27), v28);
      v30 = vminq_f32(vmaxq_f32(v26, v27), v28);
      v31 = *(a2 + 85);
      v32 = vaddq_f32(v29, v31);
      v33 = vaddq_f32(v30, v31);
      v34 = *(a2 + 19);
      v35 = *(a2 + 20);
      v36 = vorrq_s8(vandq_s8(v34, v32), v28);
      v37 = vorrq_s8(vandq_s8(v34, v33), v28);
      v38 = *(a2 + 21);
      v39 = *(a2 + 22);
      v40 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v33)));
      v41 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v32))), v39);
      v42 = *(a2 + 23);
      v43 = *(a2 + 24);
      v44 = vsubq_f32(v40, v39);
      v45 = vandq_s8(v28, vcgtq_f32(v36, v42));
      v46 = vandq_s8(v28, vcgtq_f32(v37, v42));
      v47 = vaddq_f32(v41, v45);
      v48 = vsubq_f32(vsubq_f32(v36, v28), vmulq_f32(vmulq_f32(v43, v45), v36));
      v49 = vsubq_f32(vsubq_f32(v37, v28), vmulq_f32(vmulq_f32(v43, v46), v37));
      v50 = *(a2 + 25);
      v51 = *(a2 + 26);
      v52 = vaddq_f32(v50, vmulq_f32(v51, v48));
      v53 = vaddq_f32(v50, vmulq_f32(v51, v49));
      v54 = *(a2 + 27);
      v55 = *(a2 + 28);
      v56 = vaddq_f32(vaddq_f32(v44, v46), vmulq_f32(v49, vaddq_f32(vaddq_f32(v54, vmulq_f32(v49, v55)), vmulq_f32(vmulq_f32(v49, v49), v53))));
      v57 = *(a2 + 86);
      v58 = vmulq_f32(v57, vaddq_f32(v47, vmulq_f32(v48, vaddq_f32(vaddq_f32(v54, vmulq_f32(v48, v55)), vmulq_f32(vmulq_f32(v48, v48), v52)))));
      v59 = vmulq_f32(v57, v56);
      v60 = *(a2 + 29);
      v61 = *(a2 + 30);
      v62 = vmaxq_f32(v58, v60);
      v63 = vmaxq_f32(v59, v60);
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vsubq_f32(v64, vandq_s8(v28, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v65, vandq_s8(v28, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v62, v66);
      v69 = *(a2 + 31);
      v70 = *(a2 + 32);
      v71 = vsubq_f32(v63, v67);
      v72 = vmulq_f32(v71, vaddq_f32(v70, vmulq_f32(v71, vaddq_f32(v61, vmulq_f32(v69, v71)))));
      v73 = vaddq_f32(v28, vmulq_f32(v68, vaddq_f32(v70, vmulq_f32(v68, vaddq_f32(v61, vmulq_f32(v69, v68))))));
      v74 = vcvtq_s32_f32(v67);
      v75 = *(a2 + 33);
      v76 = vaddq_f32(v28, v72);
      v77 = vmulq_f32(v73, vshlq_n_s32(vaddq_s32(v75, vcvtq_s32_f32(v66)), 0x17uLL));
      v78 = vmulq_f32(v76, vshlq_n_s32(vaddq_s32(v75, v74), 0x17uLL));
      v79 = *(a2 + 87);
      v80 = *(a2 + 88);
      v81 = vmulq_f32(v29, v80);
      v82 = vmulq_f32(v30, v80);
      v83 = *(a2 + 89);
      v84 = vcgtq_f32(v27, vsubq_f32(v29, v83));
      v85 = vcgtq_f32(v27, vsubq_f32(v30, v83));
      v86 = vbslq_s8(v15, v25, vbslq_s8(v84, v81, vmulq_f32(v79, v77)));
      v87 = vbslq_s8(v15, v26, vbslq_s8(v85, v82, vmulq_f32(v79, v78)));
      v88 = (v6 + v11);
      v88[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v86, v86, 3));
      *v88 = vbslq_s8(v15, v26, vmulq_laneq_f32(v87, v87, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v89 = 16 * v10;
    v90 = *(v7 + v89);
    v91 = *(a2 + 15);
    v92 = vmaxq_f32(vdupq_laneq_s32(v90, 3), *(a2 + 16));
    v93 = vmulq_f32(vrecpeq_f32(v92), *(a2 + 18));
    v94 = vmulq_f32(v90, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v93, vrecpsq_f32(v93, v92))), *(a2 + 3)));
    v95 = *(a2 + 75);
    v96 = *(a2 + 5);
    v97 = vminq_f32(vmaxq_f32(v94, v95), v96);
    v98 = vaddq_f32(v97, *(a2 + 85));
    v99 = vorrq_s8(vandq_s8(*(a2 + 19), v98), v96);
    v100 = vandq_s8(v96, vcgtq_f32(v99, *(a2 + 23)));
    v101 = vsubq_f32(vsubq_f32(v99, v96), vmulq_f32(vmulq_f32(*(a2 + 24), v100), v99));
    v102 = vmaxq_f32(vmulq_f32(*(a2 + 86), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v98, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v98))), *(a2 + 22)), v100), vmulq_f32(v101, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v101, *(a2 + 28))), vmulq_f32(vmulq_f32(v101, v101), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v101))))))), *(a2 + 29));
    v103 = vcvtq_f32_s32(vcvtq_s32_f32(v102));
    v104 = vsubq_f32(v103, vandq_s8(v96, vcgtq_f32(v103, v102)));
    v105 = vsubq_f32(v102, v104);
    v106 = vbslq_s8(v91, v94, vbslq_s8(vcgtq_f32(v95, vsubq_f32(v97, *(a2 + 89))), vmulq_f32(v97, *(a2 + 88)), vmulq_f32(*(a2 + 87), vmulq_f32(vaddq_f32(v96, vmulq_f32(v105, vaddq_f32(*(a2 + 32), vmulq_f32(v105, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v105)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v104)), 0x17uLL)))));
    *(v6 + v89) = vbslq_s8(v91, v94, vmulq_laneq_f32(v106, v106, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 82);
      v28 = vbslq_s8(v15, v25, vmaxq_f32(v25, v27));
      v29 = *(a2 + 75);
      v30 = vbslq_s8(v15, v26, vmaxq_f32(v26, v27));
      v31 = vcgtq_f32(v29, v28);
      v32 = vcgtq_f32(v29, v30);
      v33 = *(a2 + 83);
      v34 = *(a2 + 5);
      v35 = vmulq_f32(v28, vbslq_s8(v31, v33, v34));
      v36 = vmulq_f32(v30, vbslq_s8(v32, v33, v34));
      v37 = *(a2 + 90);
      v38 = *(a2 + 85);
      v39 = vaddq_f32(vminq_f32(v35, v37), v38);
      v40 = vaddq_f32(vminq_f32(v36, v37), v38);
      v41 = *(a2 + 19);
      v42 = *(a2 + 20);
      v43 = vorrq_s8(vandq_s8(v41, v39), v34);
      v44 = *(a2 + 21);
      v45 = *(a2 + 22);
      v46 = vorrq_s8(vandq_s8(v41, v40), v34);
      v47 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v40, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v42, v40)));
      v48 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v39, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v42, v39))), v45);
      v49 = *(a2 + 23);
      v50 = *(a2 + 24);
      v51 = vsubq_f32(v47, v45);
      v52 = vandq_s8(v34, vcgtq_f32(v43, v49));
      v53 = vandq_s8(v34, vcgtq_f32(v46, v49));
      v54 = vmulq_f32(v50, v52);
      v55 = vaddq_f32(v48, v52);
      v56 = vmulq_f32(vmulq_f32(v50, v53), v46);
      v57 = vaddq_f32(v51, v53);
      v58 = vsubq_f32(vsubq_f32(v43, v34), vmulq_f32(v54, v43));
      v59 = vsubq_f32(vsubq_f32(v46, v34), v56);
      v60 = *(a2 + 25);
      v61 = *(a2 + 26);
      v62 = *(a2 + 27);
      v63 = *(a2 + 28);
      v64 = vaddq_f32(v57, vmulq_f32(v59, vaddq_f32(vaddq_f32(v62, vmulq_f32(v59, v63)), vmulq_f32(vmulq_f32(v59, v59), vaddq_f32(v60, vmulq_f32(v61, v59))))));
      v65 = *(a2 + 86);
      v66 = vmulq_f32(v65, vaddq_f32(v55, vmulq_f32(v58, vaddq_f32(vaddq_f32(v62, vmulq_f32(v58, v63)), vmulq_f32(vmulq_f32(v58, v58), vaddq_f32(v60, vmulq_f32(v61, v58)))))));
      v67 = vmulq_f32(v65, v64);
      v68 = *(a2 + 29);
      v69 = *(a2 + 30);
      v70 = vmaxq_f32(v66, v68);
      v71 = vmaxq_f32(v67, v68);
      v72 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
      v73 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
      v74 = vsubq_f32(v72, vandq_s8(v34, vcgtq_f32(v72, v70)));
      v75 = vsubq_f32(v73, vandq_s8(v34, vcgtq_f32(v73, v71)));
      v76 = vsubq_f32(v70, v74);
      v77 = vsubq_f32(v71, v75);
      v78 = *(a2 + 31);
      v79 = *(a2 + 32);
      v80 = vmulq_f32(v77, vaddq_f32(v79, vmulq_f32(v77, vaddq_f32(v69, vmulq_f32(v78, v77)))));
      v81 = vaddq_f32(v34, vmulq_f32(v76, vaddq_f32(v79, vmulq_f32(v76, vaddq_f32(v69, vmulq_f32(v78, v76))))));
      v82 = vcvtq_s32_f32(v75);
      v83 = *(a2 + 33);
      v84 = vmulq_f32(v81, vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v74)), 0x17uLL));
      v85 = vmulq_f32(vaddq_f32(v34, v80), vshlq_n_s32(vaddq_s32(v83, v82), 0x17uLL));
      v86 = *(a2 + 87);
      v87 = vmulq_f32(v86, v84);
      v88 = *(a2 + 88);
      v89 = vmulq_f32(v86, v85);
      v90 = *(a2 + 89);
      v91 = vbslq_s8(v15, v25, vmulq_f32(vbslq_s8(v31, v27, v34), vbslq_s8(vcgtq_f32(v29, vsubq_f32(v35, v90)), vmulq_f32(v35, v88), v87)));
      v92 = vbslq_s8(v15, v26, vmulq_f32(vbslq_s8(v32, v27, v34), vbslq_s8(vcgtq_f32(v29, vsubq_f32(v36, v90)), vmulq_f32(v36, v88), v89)));
      v93 = (v6 + v11);
      v93[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v91, v91, 3));
      *v93 = vbslq_s8(v15, v26, vmulq_laneq_f32(v92, v92, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v94 = 16 * v10;
    v95 = *(v7 + v94);
    v96 = *(a2 + 15);
    v97 = vmaxq_f32(vdupq_laneq_s32(v95, 3), *(a2 + 16));
    v98 = vmulq_f32(vrecpeq_f32(v97), *(a2 + 18));
    v99 = vmulq_f32(v95, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v98, vrecpsq_f32(v98, v97))), *(a2 + 3)));
    v100 = *(a2 + 82);
    v101 = vbslq_s8(v96, v99, vmaxq_f32(v99, v100));
    v102 = *(a2 + 75);
    v103 = vcgtq_f32(v102, v101);
    v104 = *(a2 + 5);
    v105 = vmulq_f32(v101, vbslq_s8(v103, *(a2 + 83), v104));
    v106 = vaddq_f32(vminq_f32(v105, *(a2 + 90)), *(a2 + 85));
    v107 = vorrq_s8(vandq_s8(*(a2 + 19), v106), v104);
    v108 = vandq_s8(v104, vcgtq_f32(v107, *(a2 + 23)));
    v109 = vsubq_f32(vsubq_f32(v107, v104), vmulq_f32(vmulq_f32(*(a2 + 24), v108), v107));
    v110 = vmaxq_f32(vmulq_f32(*(a2 + 86), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v106, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v106))), *(a2 + 22)), v108), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v109, *(a2 + 28))), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v109))))))), *(a2 + 29));
    v111 = vcvtq_f32_s32(vcvtq_s32_f32(v110));
    v112 = vsubq_f32(v111, vandq_s8(v104, vcgtq_f32(v111, v110)));
    v113 = vsubq_f32(v110, v112);
    v114 = vbslq_s8(v96, v99, vmulq_f32(vbslq_s8(v103, v100, v104), vbslq_s8(vcgtq_f32(v102, vsubq_f32(v105, *(a2 + 89))), vmulq_f32(v105, *(a2 + 88)), vmulq_f32(*(a2 + 87), vmulq_f32(vaddq_f32(v104, vmulq_f32(v113, vaddq_f32(*(a2 + 32), vmulq_f32(v113, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v113)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v112)), 0x17uLL))))));
    *(v6 + v94) = vbslq_s8(v96, v99, vmulq_laneq_f32(v114, v114, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v18));
      v25 = *(a2 + 17);
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(vandq_s8(v25, v23), v26));
      v28 = vmulq_f32(v14, vorrq_s8(vandq_s8(v25, v24), v26));
      v29 = *(a2 + 82);
      v30 = vbslq_s8(v15, v27, vmaxq_f32(v27, v29));
      v31 = vbslq_s8(v15, v28, vmaxq_f32(v28, v29));
      v32 = *(a2 + 75);
      v33 = vcgtq_f32(v32, v30);
      v34 = vcgtq_f32(v32, v31);
      v35 = *(a2 + 83);
      v36 = *(a2 + 5);
      v37 = vmulq_f32(v30, vbslq_s8(v33, v35, v36));
      v38 = vmulq_f32(v31, vbslq_s8(v34, v35, v36));
      v39 = *(a2 + 90);
      v40 = *(a2 + 85);
      v41 = vaddq_f32(vminq_f32(v37, v39), v40);
      v42 = vaddq_f32(vminq_f32(v38, v39), v40);
      v43 = *(a2 + 86);
      v44 = vcgtq_f32(vandq_s8(v36, vceqq_f32(v43, v32)), v32);
      v45 = vbslq_s8(v44, v36, v41);
      v46 = vbslq_s8(v44, v36, v42);
      v47 = *(a2 + 19);
      v48 = *(a2 + 20);
      v49 = vorrq_s8(vandq_s8(v47, v45), v36);
      v50 = vorrq_s8(vandq_s8(v47, v46), v36);
      v51 = *(a2 + 21);
      v52 = *(a2 + 22);
      v53 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v46, 0x17uLL)), vandq_s8(v51, vcgtq_f32(v48, v46)));
      v54 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v45, 0x17uLL)), vandq_s8(v51, vcgtq_f32(v48, v45))), v52);
      v55 = *(a2 + 23);
      v56 = *(a2 + 24);
      v57 = vsubq_f32(v53, v52);
      v58 = vandq_s8(v36, vcgtq_f32(v49, v55));
      v59 = vandq_s8(v36, vcgtq_f32(v50, v55));
      v60 = vmulq_f32(v56, v58);
      v61 = vaddq_f32(v54, v58);
      v62 = vmulq_f32(vmulq_f32(v56, v59), v50);
      v63 = vsubq_f32(v50, v36);
      v64 = vsubq_f32(vsubq_f32(v49, v36), vmulq_f32(v60, v49));
      v65 = vsubq_f32(v63, v62);
      v66 = vmulq_f32(v64, v64);
      v67 = *(a2 + 37);
      v68 = *(a2 + 38);
      v69 = *(a2 + 39);
      v70 = *(a2 + 40);
      v71 = vaddq_f32(v67, vmulq_f32(v68, v64));
      v72 = vaddq_f32(v69, vmulq_f32(v70, v64));
      v73 = vaddq_f32(v69, vmulq_f32(v70, v65));
      v74 = vaddq_f32(v67, vmulq_f32(v68, v65));
      v75 = *(a2 + 41);
      v76 = *(a2 + 42);
      v77 = vaddq_f32(v75, vmulq_f32(v76, v64));
      v78 = vaddq_f32(v75, vmulq_f32(v76, v65));
      v79 = vmulq_f32(v65, v65);
      v80 = vaddq_f32(v57, v59);
      v81 = vaddq_f32(v78, vmulq_f32(v79, vaddq_f32(v74, vmulq_f32(v79, v73))));
      v82 = *(a2 + 43);
      v83 = *(a2 + 44);
      v84 = vmulq_f32(v43, vaddq_f32(v61, vmulq_f32(v64, vaddq_f32(v82, vmulq_f32(v64, vaddq_f32(v77, vmulq_f32(v66, vaddq_f32(v71, vmulq_f32(v66, v72)))))))));
      v85 = vmulq_f32(v43, vaddq_f32(v80, vmulq_f32(v65, vaddq_f32(v82, vmulq_f32(v65, v81)))));
      v86 = *(a2 + 29);
      v87 = vmaxq_f32(v84, v86);
      v88 = vmaxq_f32(v85, v86);
      v89 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v90 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
      v91 = vsubq_f32(v89, vandq_s8(v36, vcgtq_f32(v89, v87)));
      v92 = vsubq_f32(v90, vandq_s8(v36, vcgtq_f32(v90, v88)));
      v93 = vsubq_f32(v87, v91);
      v94 = vsubq_f32(v88, v92);
      v95 = *(a2 + 45);
      v96 = *(a2 + 46);
      v97 = *(a2 + 47);
      v98 = *(a2 + 48);
      v99 = *(a2 + 33);
      v100 = vmulq_f32(vaddq_f32(v36, vmulq_f32(v93, vaddq_f32(v98, vmulq_f32(v93, vaddq_f32(vaddq_f32(v96, vmulq_f32(v93, v97)), vmulq_f32(vmulq_f32(v93, v93), vaddq_f32(v83, vmulq_f32(v95, v93)))))))), vshlq_n_s32(vaddq_s32(v99, vcvtq_s32_f32(v91)), 0x17uLL));
      v101 = vmulq_f32(vaddq_f32(v36, vmulq_f32(v94, vaddq_f32(v98, vmulq_f32(v94, vaddq_f32(vaddq_f32(v96, vmulq_f32(v97, v94)), vmulq_f32(vmulq_f32(v94, v94), vaddq_f32(v83, vmulq_f32(v95, v94)))))))), vshlq_n_s32(vaddq_s32(v99, vcvtq_s32_f32(v92)), 0x17uLL));
      v102 = *(a2 + 87);
      v103 = vmulq_f32(v102, v100);
      v104 = *(a2 + 88);
      v105 = vmulq_f32(v102, v101);
      v106 = *(a2 + 89);
      v107 = vbslq_s8(v15, v27, vmulq_f32(vbslq_s8(v33, v29, v36), vbslq_s8(vcgtq_f32(v32, vsubq_f32(v37, v106)), vmulq_f32(v37, v104), v103)));
      v108 = vbslq_s8(v15, v28, vmulq_f32(vbslq_s8(v34, v29, v36), vbslq_s8(vcgtq_f32(v32, vsubq_f32(v38, v106)), vmulq_f32(v38, v104), v105)));
      v109 = (v6 + v11);
      v109[-1] = vbslq_s8(v15, v27, vmulq_laneq_f32(v107, v107, 3));
      *v109 = vbslq_s8(v15, v28, vmulq_laneq_f32(v108, v108, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v110 = 16 * v10;
    v111 = *(v7 + v110);
    v112 = *(a2 + 15);
    v113 = vmaxq_f32(vdupq_laneq_s32(v111, 3), *(a2 + 16));
    v114 = vrecpeq_f32(v113);
    v115 = vmulq_f32(v114, vrecpsq_f32(v114, v113));
    v116 = vmulq_f32(v111, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v115, vrecpsq_f32(v115, v113))), *(a2 + 3)));
    v117 = *(a2 + 82);
    v118 = vbslq_s8(v112, v116, vmaxq_f32(v116, v117));
    v119 = *(a2 + 75);
    v120 = vcgtq_f32(v119, v118);
    v121 = *(a2 + 5);
    v122 = vmulq_f32(v118, vbslq_s8(v120, *(a2 + 83), v121));
    v123 = *(a2 + 86);
    v124 = vbslq_s8(vcgtq_f32(vandq_s8(v121, vceqq_f32(v123, v119)), v119), v121, vaddq_f32(vminq_f32(v122, *(a2 + 90)), *(a2 + 85)));
    v125 = vorrq_s8(vandq_s8(*(a2 + 19), v124), v121);
    v126 = vandq_s8(v121, vcgtq_f32(v125, *(a2 + 23)));
    v127 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v124, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v124))), *(a2 + 22)), v126);
    v128 = vsubq_f32(vsubq_f32(v125, v121), vmulq_f32(vmulq_f32(*(a2 + 24), v126), v125));
    v129 = vmulq_f32(v128, v128);
    v130 = vmaxq_f32(vmulq_f32(v123, vaddq_f32(v127, vmulq_f32(v128, vaddq_f32(*(a2 + 43), vmulq_f32(v128, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v128)), vmulq_f32(v129, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v128)), vmulq_f32(v129, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v128))))))))))), *(a2 + 29));
    v131 = vcvtq_f32_s32(vcvtq_s32_f32(v130));
    v132 = vsubq_f32(v131, vandq_s8(v121, vcgtq_f32(v131, v130)));
    v133 = vsubq_f32(v130, v132);
    v134 = vbslq_s8(v112, v116, vmulq_f32(vbslq_s8(v120, v117, v121), vbslq_s8(vcgtq_f32(v119, vsubq_f32(v122, *(a2 + 89))), vmulq_f32(v122, *(a2 + 88)), vmulq_f32(*(a2 + 87), vmulq_f32(vaddq_f32(v121, vmulq_f32(v133, vaddq_f32(*(a2 + 48), vmulq_f32(v133, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v133)), vmulq_f32(vmulq_f32(v133, v133), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v133)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v132)), 0x17uLL))))));
    *(v6 + v110) = vbslq_s8(v112, v116, vmulq_laneq_f32(v134, v134, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = *(a1 + 6);
    v8 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v57 = 0;
        v58 = 16 * v8;
        v59 = 16 * v7;
        v60 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v61 = 0;
          do
          {
            v62 = *(a2 + 15);
            v63 = vmulq_f32(v5[v61 / 0x10], vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v5[v61 / 0x10], 3), *(a2 + 16)))), *(a2 + 3)));
            v64 = vminq_f32(vmaxq_f32(v63, *(a2 + 75)), *(a2 + 5));
            v65 = vbslq_s8(v62, v63, vmulq_f32(v64, vminq_f32(vrsqrteq_f32(v64), *(a2 + 73))));
            v6[v61 / 0x10] = vbslq_s8(v62, v63, vmulq_laneq_f32(v65, v65, 3));
            v61 += 16;
          }

          while (v60 != v61);
          ++v57;
          v5 = (v5 + v58);
          v6 = (v6 + v59);
        }

        while (v57 != v3);
      }
    }

    else
    {
      v9 = 0;
      v10 = 16 * v7;
      v11 = 16 * v8;
      v12 = v5 + 4;
      v13 = v6 + 4;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = 2;
        do
        {
          v18 = v5[v17 - 2];
          v19 = v5[v17 - 1];
          v20 = v5[v17];
          v21 = v5[v17 + 1];
          v23 = *(a2 + 15);
          v22 = *(a2 + 16);
          v24 = vmaxq_f32(vdupq_laneq_s32(v21, 3), v22);
          v25 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v18, 3), v22));
          v26 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v19, 3), v22));
          v27 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v20, 3), v22));
          v28 = *(a2 + 17);
          v29 = vandq_s8(v28, v25);
          v30 = vandq_s8(v28, v26);
          v31 = vandq_s8(v28, v27);
          v32 = vandq_s8(v28, vrecpeq_f32(v24));
          v33 = *(a2 + 3);
          v34 = vmulq_f32(v18, vorrq_s8(v29, v33));
          v35 = vmulq_f32(v19, vorrq_s8(v30, v33));
          v36 = vmulq_f32(v20, vorrq_s8(v31, v33));
          v37 = vmulq_f32(v21, vorrq_s8(v32, v33));
          v38 = *(a2 + 75);
          v39 = *(a2 + 5);
          v40 = vminq_f32(vmaxq_f32(v34, v38), v39);
          v41 = vminq_f32(vmaxq_f32(v35, v38), v39);
          v42 = vminq_f32(vmaxq_f32(v36, v38), v39);
          v43 = vminq_f32(vmaxq_f32(v37, v38), v39);
          v44 = *(a2 + 73);
          v45 = v16;
          v46 = vbslq_s8(v23, v34, vmulq_f32(v40, vminq_f32(vrsqrteq_f32(v40), v44)));
          v47 = vbslq_s8(v23, v35, vmulq_f32(v41, vminq_f32(vrsqrteq_f32(v41), v44)));
          v48 = vbslq_s8(v23, v36, vmulq_f32(v42, vminq_f32(vrsqrteq_f32(v42), v44)));
          v49 = vbslq_s8(v23, v37, vmulq_f32(v43, vminq_f32(vrsqrteq_f32(v43), v44)));
          v50 = v15;
          v51 = &v6[v17];
          v14 += 4;
          v51[-2] = vbslq_s8(v23, v34, vmulq_laneq_f32(v46, v46, 3));
          v51[-1] = vbslq_s8(v23, v35, vmulq_laneq_f32(v47, v47, 3));
          *v51 = vbslq_s8(v23, v36, vmulq_laneq_f32(v48, v48, 3));
          v51[1] = vbslq_s8(v23, v37, vmulq_laneq_f32(v49, v49, 3));
          v17 += 4;
          v16 += 4;
          v15 = v50 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v52 = *v45++;
            v53 = *(a2 + 15);
            v54 = vmulq_f32(v52, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v52, 3), *(a2 + 16)))), *(a2 + 3)));
            v55 = vminq_f32(vmaxq_f32(v54, *(a2 + 75)), *(a2 + 5));
            v56 = vbslq_s8(v53, v54, vmulq_f32(v55, vminq_f32(vrsqrteq_f32(v55), *(a2 + 73))));
            *v50++ = vbslq_s8(v53, v54, vmulq_laneq_f32(v56, v56, 3));
            ++v14;
          }

          while (v14 < v4);
        }

        ++v9;
        v6 = (v6 + v10);
        v5 = (v5 + v11);
        v12 = (v12 + v11);
        v13 = (v13 + v10);
      }

      while (v9 != v3);
    }
  }

  return 0;
}

uint64_t Getrec601_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v17));
      v22 = *(a2 + 17);
      v21 = *(a2 + 18);
      v23 = vmulq_f32(v20, v21);
      v24 = vandq_s8(v22, vmulq_f32(v18, v21));
      v25 = vandq_s8(v22, vmulq_f32(v19, v21));
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(v24, v26));
      v28 = vmulq_f32(v14, vorrq_s8(v25, v26));
      v29 = vmulq_f32(v15, vorrq_s8(vandq_s8(v22, v23), v26));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = *(a2 + 6);
      v33 = vminq_f32(vmaxq_f32(v27, v30), v31);
      v34 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v35 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v36 = vmulq_f32(v32, vcvtq_f32_s32(v33));
      v37 = vmulq_f32(v32, vcvtq_f32_s32(v34));
      v38 = vmulq_f32(v32, vcvtq_f32_s32(v35));
      v39 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v42 = *(a2 + 7);
      v43 = *(a2 + 8);
      v44 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v36, v39), v42));
      v45 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v37, v40), v42));
      v46 = vrsqrteq_f32(vaddq_f32(v42, vsubq_f32(v38, v41)));
      v47 = vaddq_f32(v43, v39);
      v48 = vaddq_f32(v43, v40);
      v49 = vaddq_f32(v43, v41);
      v50 = *(a2 + 9);
      v51 = *(a2 + 10);
      v52 = vsubq_f32(v47, vmulq_f32(v44, v50));
      v53 = *(a2 + 77);
      v54 = vmulq_f32(v53, v52);
      v55 = vmulq_f32(v53, vsubq_f32(v48, vmulq_f32(v45, v50)));
      v56 = vmulq_f32(v53, vsubq_f32(v49, vmulq_f32(v46, v50)));
      v57 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v60 = vsubq_f32(v57, vandq_s8(v31, vcgtq_f32(v57, v54)));
      v61 = vsubq_f32(v58, vandq_s8(v31, vcgtq_f32(v58, v55)));
      v62 = vsubq_f32(v59, vandq_s8(v31, vcgtq_f32(v59, v56)));
      v63 = *(a2 + 11);
      v64 = *(a2 + 12);
      v65 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v54, v60))), v64);
      v66 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v55, v61))), v64);
      v67 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v56, v62))), v64);
      v68 = vaddq_f32(vaddq_f32(v51, v62), vmulq_f32(v67, v67));
      v69 = vmaxq_f32(vaddq_f32(vaddq_f32(v51, v60), vmulq_f32(v65, v65)), v30);
      v70 = vmaxq_f32(vaddq_f32(vaddq_f32(v51, v61), vmulq_f32(v66, v66)), v30);
      v71 = *(a2 + 13);
      v72 = *(a2 + 14);
      v73 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v69, v71), v72));
      v74 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v70, v71), v72));
      v75 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v68, v30), v71), v72));
      v76 = *(a2 + 91);
      v77 = *(a2 + 92);
      v78 = vaddq_f32(v76, vmulq_f32(v77, v73));
      v79 = vmulq_f32(v77, v74);
      v80 = vmulq_f32(v77, v75);
      v81 = *(a2 + 93);
      v82 = vmulq_f32(v33, v81);
      v83 = vmulq_f32(v34, v81);
      v84 = vmulq_f32(v35, v81);
      v85 = *(a2 + 94);
      v86 = vcgtq_f32(v30, vsubq_f32(v33, v85));
      v87 = vcgtq_f32(v30, vsubq_f32(v34, v85));
      v88 = vcgtq_f32(v30, vsubq_f32(v35, v85));
      v89 = vbslq_s8(v16, v27, vbslq_s8(v86, v82, v78));
      v90 = vbslq_s8(v16, v28, vbslq_s8(v87, v83, vaddq_f32(v76, v79)));
      v91 = vbslq_s8(v16, v29, vbslq_s8(v88, v84, vaddq_f32(v76, v80)));
      v92 = (v6 + v10);
      *v92 = vbslq_s8(v16, v27, vmulq_laneq_f32(v89, v89, 3));
      v92[1] = vbslq_s8(v16, v28, vmulq_laneq_f32(v90, v90, 3));
      v92[2] = vbslq_s8(v16, v29, vmulq_laneq_f32(v91, v91, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v93 = *(a2 + 15);
      v94 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v95 = *(a2 + 75);
      v96 = *(a2 + 5);
      v97 = vminq_f32(vmaxq_f32(v94, v95), v96);
      v98 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(v97));
      v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
      v100 = vmulq_f32(*(a2 + 77), vsubq_f32(vaddq_f32(*(a2 + 8), v99), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v98, v99))), *(a2 + 9))));
      v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
      v102 = vsubq_f32(v101, vandq_s8(v96, vcgtq_f32(v101, v100)));
      v103 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v100, v102))), *(a2 + 12));
      v104 = vbslq_s8(v93, v94, vbslq_s8(vcgtq_f32(v95, vsubq_f32(v97, *(a2 + 94))), vmulq_f32(v97, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v102), vmulq_f32(v103, v103)), v95), *(a2 + 13)), *(a2 + 14)))))));
      *(v6 + 16 * v11++) = vbslq_s8(v93, v94, vmulq_laneq_f32(v104, v104, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v33 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v34 = *(a2 + 77);
      v35 = vcgtq_f32(vandq_s8(v31, vceqq_f32(v34, v30)), v30);
      v36 = vbslq_s8(v35, v31, v32);
      v37 = vbslq_s8(v35, v31, v33);
      v38 = *(a2 + 19);
      v39 = *(a2 + 20);
      v40 = vorrq_s8(vandq_s8(v38, v36), v31);
      v41 = vorrq_s8(vandq_s8(v38, v37), v31);
      v42 = *(a2 + 21);
      v43 = *(a2 + 22);
      v44 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v39, v37)));
      v45 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v36, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v39, v36))), v43);
      v46 = *(a2 + 23);
      v47 = *(a2 + 24);
      v48 = vandq_s8(v31, vcgtq_f32(v40, v46));
      v49 = vandq_s8(v31, vcgtq_f32(v41, v46));
      v50 = vaddq_f32(v45, v48);
      v51 = vaddq_f32(vsubq_f32(v44, v43), v49);
      v52 = vsubq_f32(vsubq_f32(v40, v31), vmulq_f32(vmulq_f32(v47, v48), v40));
      v53 = vsubq_f32(vsubq_f32(v41, v31), vmulq_f32(vmulq_f32(v47, v49), v41));
      v54 = vmulq_f32(v52, v52);
      v55 = *(a2 + 37);
      v56 = *(a2 + 38);
      v57 = vaddq_f32(v55, vmulq_f32(v56, v52));
      v58 = vaddq_f32(v55, vmulq_f32(v56, v53));
      v59 = *(a2 + 39);
      v60 = *(a2 + 40);
      v61 = vaddq_f32(v59, vmulq_f32(v60, v52));
      v62 = vaddq_f32(v59, vmulq_f32(v60, v53));
      v63 = *(a2 + 41);
      v64 = *(a2 + 42);
      v65 = vaddq_f32(v63, vmulq_f32(v64, v52));
      v66 = vaddq_f32(v63, vmulq_f32(v64, v53));
      v67 = vmulq_f32(v53, v53);
      v68 = vaddq_f32(v66, vmulq_f32(v67, vaddq_f32(v58, vmulq_f32(v67, v62))));
      v69 = vmulq_f32(v52, vaddq_f32(v65, vmulq_f32(v54, vaddq_f32(v57, vmulq_f32(v54, v61)))));
      v70 = *(a2 + 43);
      v71 = *(a2 + 44);
      v72 = vaddq_f32(v51, vmulq_f32(v53, vaddq_f32(v70, vmulq_f32(v53, v68))));
      v73 = vmulq_f32(v34, vaddq_f32(v50, vmulq_f32(v52, vaddq_f32(v70, v69))));
      v74 = *(a2 + 29);
      v75 = vmulq_f32(v34, v72);
      v76 = vmaxq_f32(v73, v74);
      v77 = vmaxq_f32(v75, v74);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v31, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v31, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = *(a2 + 47);
      v87 = *(a2 + 48);
      v88 = vaddq_f32(v31, vmulq_f32(v82, vaddq_f32(v87, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v86)), vmulq_f32(vmulq_f32(v82, v82), vaddq_f32(v71, vmulq_f32(v84, v82))))))));
      v89 = vaddq_f32(v31, vmulq_f32(v83, vaddq_f32(v87, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v86, v83)), vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(v71, vmulq_f32(v84, v83))))))));
      v90 = *(a2 + 33);
      v91 = vmulq_f32(v88, vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v80)), 0x17uLL));
      v92 = vmulq_f32(v89, vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v81)), 0x17uLL));
      v93 = *(a2 + 91);
      v94 = *(a2 + 92);
      v95 = vmulq_f32(v94, v92);
      v96 = vaddq_f32(v93, vmulq_f32(v94, v91));
      v97 = *(a2 + 93);
      v98 = vmulq_f32(v32, v97);
      v99 = vmulq_f32(v33, v97);
      v100 = *(a2 + 94);
      v101 = vcgtq_f32(v30, vsubq_f32(v32, v100));
      v102 = vcgtq_f32(v30, vsubq_f32(v33, v100));
      v103 = vbslq_s8(v15, v28, vbslq_s8(v101, v98, v96));
      v104 = vbslq_s8(v15, v29, vbslq_s8(v102, v99, vaddq_f32(v93, v95)));
      v105 = (v6 + v11);
      v105[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v103, v103, 3));
      *v105 = vbslq_s8(v15, v29, vmulq_laneq_f32(v104, v104, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v106 = 16 * v10;
    v107 = *(v7 + v106);
    v108 = *(a2 + 15);
    v109 = vmaxq_f32(vdupq_laneq_s32(v107, 3), *(a2 + 16));
    v110 = vrecpeq_f32(v109);
    v111 = vmulq_f32(v110, vrecpsq_f32(v110, v109));
    v112 = vmulq_f32(v107, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v111, vrecpsq_f32(v111, v109))), *(a2 + 3)));
    v113 = *(a2 + 75);
    v114 = *(a2 + 5);
    v115 = vminq_f32(vmaxq_f32(v112, v113), v114);
    v116 = *(a2 + 77);
    v117 = vbslq_s8(vcgtq_f32(vandq_s8(v114, vceqq_f32(v116, v113)), v113), v114, v115);
    v118 = vorrq_s8(vandq_s8(*(a2 + 19), v117), v114);
    v119 = vandq_s8(v114, vcgtq_f32(v118, *(a2 + 23)));
    v120 = vsubq_f32(vsubq_f32(v118, v114), vmulq_f32(vmulq_f32(*(a2 + 24), v119), v118));
    v121 = vmulq_f32(v120, v120);
    v122 = vmaxq_f32(vmulq_f32(v116, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v117, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v117))), *(a2 + 22)), v119), vmulq_f32(v120, vaddq_f32(*(a2 + 43), vmulq_f32(v120, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v120)), vmulq_f32(v121, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v120)), vmulq_f32(v121, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v120))))))))))), *(a2 + 29));
    v123 = vcvtq_f32_s32(vcvtq_s32_f32(v122));
    v124 = vsubq_f32(v123, vandq_s8(v114, vcgtq_f32(v123, v122)));
    v125 = vsubq_f32(v122, v124);
    v126 = vbslq_s8(v108, v112, vbslq_s8(vcgtq_f32(v113, vsubq_f32(v115, *(a2 + 94))), vmulq_f32(v115, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vmulq_f32(vaddq_f32(v114, vmulq_f32(v125, vaddq_f32(*(a2 + 48), vmulq_f32(v125, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v125)), vmulq_f32(vmulq_f32(v125, v125), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v125)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v124)), 0x17uLL))))));
    *(v6 + v106) = vbslq_s8(v108, v112, vmulq_laneq_f32(v126, v126, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 75);
      v28 = *(a2 + 5);
      v29 = vminq_f32(vmaxq_f32(v25, v27), v28);
      v30 = vminq_f32(vmaxq_f32(v26, v27), v28);
      v31 = *(a2 + 19);
      v32 = *(a2 + 20);
      v33 = vorrq_s8(vandq_s8(v31, v29), v28);
      v34 = *(a2 + 21);
      v35 = *(a2 + 22);
      v36 = vorrq_s8(vandq_s8(v31, v30), v28);
      v37 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v32, v29))), v35);
      v38 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v32, v30))), v35);
      v39 = *(a2 + 23);
      v40 = *(a2 + 24);
      v41 = vandq_s8(v28, vcgtq_f32(v33, v39));
      v42 = vandq_s8(v28, vcgtq_f32(v36, v39));
      v43 = vaddq_f32(v38, v42);
      v44 = vsubq_f32(vsubq_f32(v33, v28), vmulq_f32(vmulq_f32(v40, v41), v33));
      v45 = vsubq_f32(vsubq_f32(v36, v28), vmulq_f32(vmulq_f32(v40, v42), v36));
      v46 = *(a2 + 25);
      v47 = *(a2 + 26);
      v48 = *(a2 + 27);
      v49 = *(a2 + 28);
      v50 = vaddq_f32(v43, vmulq_f32(v45, vaddq_f32(vaddq_f32(v48, vmulq_f32(v45, v49)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v46, vmulq_f32(v47, v45))))));
      v51 = *(a2 + 77);
      v52 = vmulq_f32(v51, vaddq_f32(vaddq_f32(v37, v41), vmulq_f32(v44, vaddq_f32(vaddq_f32(v48, vmulq_f32(v44, v49)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v46, vmulq_f32(v47, v44)))))));
      v53 = vmulq_f32(v51, v50);
      v54 = *(a2 + 29);
      v55 = *(a2 + 30);
      v56 = vmaxq_f32(v52, v54);
      v57 = vmaxq_f32(v53, v54);
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v60 = vsubq_f32(v58, vandq_s8(v28, vcgtq_f32(v58, v56)));
      v61 = vsubq_f32(v59, vandq_s8(v28, vcgtq_f32(v59, v57)));
      v62 = vsubq_f32(v56, v60);
      v63 = vsubq_f32(v57, v61);
      v64 = *(a2 + 31);
      v65 = *(a2 + 32);
      v66 = vaddq_f32(v28, vmulq_f32(v62, vaddq_f32(v65, vmulq_f32(v62, vaddq_f32(v55, vmulq_f32(v64, v62))))));
      v67 = vaddq_f32(v28, vmulq_f32(v63, vaddq_f32(v65, vmulq_f32(v63, vaddq_f32(v55, vmulq_f32(v64, v63))))));
      v68 = *(a2 + 33);
      v69 = vmulq_f32(v66, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v60)), 0x17uLL));
      v70 = vmulq_f32(v67, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v61)), 0x17uLL));
      v71 = *(a2 + 91);
      v72 = *(a2 + 92);
      v73 = vmulq_f32(v72, v70);
      v74 = vaddq_f32(v71, vmulq_f32(v72, v69));
      v75 = *(a2 + 93);
      v76 = vmulq_f32(v29, v75);
      v77 = vmulq_f32(v30, v75);
      v78 = *(a2 + 94);
      v79 = vcgtq_f32(v27, vsubq_f32(v29, v78));
      v80 = vcgtq_f32(v27, vsubq_f32(v30, v78));
      v81 = vbslq_s8(v15, v25, vbslq_s8(v79, v76, v74));
      v82 = vbslq_s8(v15, v26, vbslq_s8(v80, v77, vaddq_f32(v71, v73)));
      v83 = (v6 + v11);
      v83[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v81, v81, 3));
      *v83 = vbslq_s8(v15, v26, vmulq_laneq_f32(v82, v82, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v84 = 16 * v10;
    v85 = *(v7 + v84);
    v86 = *(a2 + 15);
    v87 = vmaxq_f32(vdupq_laneq_s32(v85, 3), *(a2 + 16));
    v88 = vmulq_f32(vrecpeq_f32(v87), *(a2 + 18));
    v89 = vmulq_f32(v85, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v88, vrecpsq_f32(v88, v87))), *(a2 + 3)));
    v90 = *(a2 + 75);
    v91 = *(a2 + 5);
    v92 = vminq_f32(vmaxq_f32(v89, v90), v91);
    v93 = vorrq_s8(vandq_s8(*(a2 + 19), v92), v91);
    v94 = vandq_s8(v91, vcgtq_f32(v93, *(a2 + 23)));
    v95 = vsubq_f32(vsubq_f32(v93, v91), vmulq_f32(vmulq_f32(*(a2 + 24), v94), v93));
    v96 = vmaxq_f32(vmulq_f32(*(a2 + 77), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v92, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v92))), *(a2 + 22)), v94), vmulq_f32(v95, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v95, *(a2 + 28))), vmulq_f32(vmulq_f32(v95, v95), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v95))))))), *(a2 + 29));
    v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
    v98 = vsubq_f32(v97, vandq_s8(v91, vcgtq_f32(v97, v96)));
    v99 = vsubq_f32(v96, v98);
    v100 = vbslq_s8(v86, v89, vbslq_s8(vcgtq_f32(v90, vsubq_f32(v92, *(a2 + 94))), vmulq_f32(v92, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vmulq_f32(vaddq_f32(v91, vmulq_f32(v99, vaddq_f32(*(a2 + 32), vmulq_f32(v99, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v99)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v98)), 0x17uLL))))));
    *(v6 + v84) = vbslq_s8(v86, v89, vmulq_laneq_f32(v100, v100, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 82);
      v28 = vbslq_s8(v15, v25, vmaxq_f32(v25, v27));
      v29 = *(a2 + 75);
      v30 = vbslq_s8(v15, v26, vmaxq_f32(v26, v27));
      v31 = vcgtq_f32(v29, v28);
      v32 = vcgtq_f32(v29, v30);
      v33 = *(a2 + 83);
      v34 = *(a2 + 5);
      v35 = vmulq_f32(v28, vbslq_s8(v31, v33, v34));
      v36 = vmulq_f32(v30, vbslq_s8(v32, v33, v34));
      v37 = *(a2 + 84);
      v38 = vminq_f32(v35, v37);
      v39 = *(a2 + 19);
      v40 = *(a2 + 20);
      v41 = vminq_f32(v36, v37);
      v42 = vorrq_s8(vandq_s8(v39, v38), v34);
      v43 = vorrq_s8(vandq_s8(v39, v41), v34);
      v44 = *(a2 + 21);
      v45 = *(a2 + 22);
      v46 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v41, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v40, v41)));
      v47 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v40, v38))), v45);
      v48 = *(a2 + 23);
      v49 = *(a2 + 24);
      v50 = vandq_s8(v34, vcgtq_f32(v42, v48));
      v51 = vandq_s8(v34, vcgtq_f32(v43, v48));
      v52 = vaddq_f32(v47, v50);
      v53 = vaddq_f32(vsubq_f32(v46, v45), v51);
      v54 = vsubq_f32(vsubq_f32(v42, v34), vmulq_f32(vmulq_f32(v49, v50), v42));
      v55 = vsubq_f32(vsubq_f32(v43, v34), vmulq_f32(vmulq_f32(v49, v51), v43));
      v56 = *(a2 + 25);
      v57 = *(a2 + 26);
      v58 = vaddq_f32(v56, vmulq_f32(v57, v54));
      v59 = vaddq_f32(v56, vmulq_f32(v57, v55));
      v60 = *(a2 + 27);
      v61 = *(a2 + 28);
      v62 = vaddq_f32(v53, vmulq_f32(v55, vaddq_f32(vaddq_f32(v60, vmulq_f32(v55, v61)), vmulq_f32(vmulq_f32(v55, v55), v59))));
      v63 = *(a2 + 77);
      v64 = vmulq_f32(v63, vaddq_f32(v52, vmulq_f32(v54, vaddq_f32(vaddq_f32(v60, vmulq_f32(v54, v61)), vmulq_f32(vmulq_f32(v54, v54), v58)))));
      v65 = vmulq_f32(v63, v62);
      v66 = *(a2 + 29);
      v67 = *(a2 + 30);
      v68 = vmaxq_f32(v64, v66);
      v69 = vmaxq_f32(v65, v66);
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
      v71 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
      v72 = vsubq_f32(v70, vandq_s8(v34, vcgtq_f32(v70, v68)));
      v73 = vsubq_f32(v71, vandq_s8(v34, vcgtq_f32(v71, v69)));
      v74 = vsubq_f32(v68, v72);
      v75 = vsubq_f32(v69, v73);
      v76 = *(a2 + 31);
      v77 = *(a2 + 32);
      v78 = vaddq_f32(v34, vmulq_f32(v74, vaddq_f32(v77, vmulq_f32(v74, vaddq_f32(v67, vmulq_f32(v76, v74))))));
      v79 = vaddq_f32(v34, vmulq_f32(v75, vaddq_f32(v77, vmulq_f32(v75, vaddq_f32(v67, vmulq_f32(v76, v75))))));
      v80 = vcvtq_s32_f32(v73);
      v81 = *(a2 + 33);
      v82 = vmulq_f32(v78, vshlq_n_s32(vaddq_s32(v81, vcvtq_s32_f32(v72)), 0x17uLL));
      v83 = vmulq_f32(v79, vshlq_n_s32(vaddq_s32(v81, v80), 0x17uLL));
      v84 = *(a2 + 91);
      v85 = *(a2 + 92);
      v86 = vaddq_f32(v84, vmulq_f32(v85, v82));
      v87 = vmulq_f32(v85, v83);
      v88 = *(a2 + 93);
      v89 = vaddq_f32(v84, v87);
      v90 = *(a2 + 94);
      v91 = vbslq_s8(v15, v25, vmulq_f32(vbslq_s8(v31, v27, v34), vbslq_s8(vcgtq_f32(v29, vsubq_f32(v35, v90)), vmulq_f32(v35, v88), v86)));
      v92 = vbslq_s8(v15, v26, vmulq_f32(vbslq_s8(v32, v27, v34), vbslq_s8(vcgtq_f32(v29, vsubq_f32(v36, v90)), vmulq_f32(v36, v88), v89)));
      v93 = (v6 + v11);
      v93[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v91, v91, 3));
      *v93 = vbslq_s8(v15, v26, vmulq_laneq_f32(v92, v92, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v94 = 16 * v10;
    v95 = *(v7 + v94);
    v96 = *(a2 + 15);
    v97 = vmaxq_f32(vdupq_laneq_s32(v95, 3), *(a2 + 16));
    v98 = vmulq_f32(vrecpeq_f32(v97), *(a2 + 18));
    v99 = vmulq_f32(v95, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v98, vrecpsq_f32(v98, v97))), *(a2 + 3)));
    v100 = *(a2 + 82);
    v101 = vbslq_s8(v96, v99, vmaxq_f32(v99, v100));
    v102 = *(a2 + 75);
    v103 = vcgtq_f32(v102, v101);
    v104 = *(a2 + 5);
    v105 = vmulq_f32(v101, vbslq_s8(v103, *(a2 + 83), v104));
    v106 = vminq_f32(v105, *(a2 + 84));
    v107 = vorrq_s8(vandq_s8(*(a2 + 19), v106), v104);
    v108 = vandq_s8(v104, vcgtq_f32(v107, *(a2 + 23)));
    v109 = vsubq_f32(vsubq_f32(v107, v104), vmulq_f32(vmulq_f32(*(a2 + 24), v108), v107));
    v110 = vmaxq_f32(vmulq_f32(*(a2 + 77), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v106, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v106))), *(a2 + 22)), v108), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v109, *(a2 + 28))), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v109))))))), *(a2 + 29));
    v111 = vcvtq_f32_s32(vcvtq_s32_f32(v110));
    v112 = vsubq_f32(v111, vandq_s8(v104, vcgtq_f32(v111, v110)));
    v113 = vsubq_f32(v110, v112);
    v114 = vbslq_s8(v96, v99, vmulq_f32(vbslq_s8(v103, v100, v104), vbslq_s8(vcgtq_f32(v102, vsubq_f32(v105, *(a2 + 94))), vmulq_f32(v105, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vmulq_f32(vaddq_f32(v104, vmulq_f32(v113, vaddq_f32(*(a2 + 32), vmulq_f32(v113, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v113)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v112)), 0x17uLL)))))));
    *(v6 + v94) = vbslq_s8(v96, v99, vmulq_laneq_f32(v114, v114, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v18));
      v25 = *(a2 + 17);
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(vandq_s8(v25, v23), v26));
      v28 = vmulq_f32(v14, vorrq_s8(vandq_s8(v25, v24), v26));
      v29 = *(a2 + 82);
      v30 = vbslq_s8(v15, v27, vmaxq_f32(v27, v29));
      v31 = vbslq_s8(v15, v28, vmaxq_f32(v28, v29));
      v32 = *(a2 + 75);
      v33 = vcgtq_f32(v32, v30);
      v34 = vcgtq_f32(v32, v31);
      v35 = *(a2 + 83);
      v36 = *(a2 + 5);
      v37 = vmulq_f32(v30, vbslq_s8(v33, v35, v36));
      v38 = vmulq_f32(v31, vbslq_s8(v34, v35, v36));
      v39 = *(a2 + 84);
      v40 = *(a2 + 77);
      v41 = vcgtq_f32(vandq_s8(v36, vceqq_f32(v40, v32)), v32);
      v42 = vbslq_s8(v41, v36, vminq_f32(v37, v39));
      v43 = vbslq_s8(v41, v36, vminq_f32(v38, v39));
      v44 = *(a2 + 19);
      v45 = *(a2 + 20);
      v46 = vorrq_s8(vandq_s8(v44, v42), v36);
      v47 = *(a2 + 21);
      v48 = *(a2 + 22);
      v49 = vorrq_s8(vandq_s8(v44, v43), v36);
      v50 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v43, 0x17uLL)), vandq_s8(v47, vcgtq_f32(v45, v43)));
      v51 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v42, 0x17uLL)), vandq_s8(v47, vcgtq_f32(v45, v42))), v48);
      v52 = *(a2 + 23);
      v53 = *(a2 + 24);
      v54 = vsubq_f32(v50, v48);
      v55 = vandq_s8(v36, vcgtq_f32(v46, v52));
      v56 = vandq_s8(v36, vcgtq_f32(v49, v52));
      v57 = vaddq_f32(v51, v55);
      v58 = vmulq_f32(vmulq_f32(v53, v55), v46);
      v59 = vmulq_f32(vmulq_f32(v53, v56), v49);
      v60 = vaddq_f32(v54, v56);
      v61 = vsubq_f32(vsubq_f32(v46, v36), v58);
      v62 = vsubq_f32(vsubq_f32(v49, v36), v59);
      v63 = vmulq_f32(v61, v61);
      v64 = *(a2 + 37);
      v65 = *(a2 + 38);
      v66 = vmulq_f32(v62, v62);
      v67 = *(a2 + 39);
      v68 = *(a2 + 40);
      v69 = vaddq_f32(v64, vmulq_f32(v65, v61));
      v70 = vaddq_f32(v67, vmulq_f32(v68, v61));
      v71 = vaddq_f32(v67, vmulq_f32(v68, v62));
      v72 = vaddq_f32(v64, vmulq_f32(v65, v62));
      v74 = *(a2 + 41);
      v73 = *(a2 + 42);
      v75 = vmulq_f32(v61, vaddq_f32(vaddq_f32(v74, vmulq_f32(v73, v61)), vmulq_f32(v63, vaddq_f32(v69, vmulq_f32(v63, v70)))));
      v76 = vmulq_f32(v62, vaddq_f32(vaddq_f32(v74, vmulq_f32(v73, v62)), vmulq_f32(v66, vaddq_f32(v72, vmulq_f32(v66, v71)))));
      v77 = *(a2 + 43);
      v78 = *(a2 + 44);
      v79 = vmulq_f32(v40, vaddq_f32(v57, vmulq_f32(v61, vaddq_f32(v77, v75))));
      v80 = vmulq_f32(v40, vaddq_f32(v60, vmulq_f32(v62, vaddq_f32(v77, v76))));
      v81 = *(a2 + 29);
      v82 = vmaxq_f32(v79, v81);
      v83 = vmaxq_f32(v80, v81);
      v84 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
      v85 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
      v86 = vsubq_f32(v84, vandq_s8(v36, vcgtq_f32(v84, v82)));
      v87 = vsubq_f32(v85, vandq_s8(v36, vcgtq_f32(v85, v83)));
      v88 = vsubq_f32(v82, v86);
      v89 = vsubq_f32(v83, v87);
      v90 = *(a2 + 45);
      v91 = *(a2 + 46);
      v92 = vaddq_f32(v78, vmulq_f32(v90, v88));
      v93 = vaddq_f32(v78, vmulq_f32(v90, v89));
      v94 = *(a2 + 47);
      v95 = *(a2 + 48);
      v96 = *(a2 + 33);
      v97 = vmulq_f32(vaddq_f32(v36, vmulq_f32(v88, vaddq_f32(v95, vmulq_f32(v88, vaddq_f32(vaddq_f32(v91, vmulq_f32(v88, v94)), vmulq_f32(vmulq_f32(v88, v88), v92)))))), vshlq_n_s32(vaddq_s32(v96, vcvtq_s32_f32(v86)), 0x17uLL));
      v98 = vmulq_f32(vaddq_f32(v36, vmulq_f32(v89, vaddq_f32(v95, vmulq_f32(v89, vaddq_f32(vaddq_f32(v91, vmulq_f32(v94, v89)), vmulq_f32(vmulq_f32(v89, v89), v93)))))), vshlq_n_s32(vaddq_s32(v96, vcvtq_s32_f32(v87)), 0x17uLL));
      v99 = *(a2 + 91);
      v100 = *(a2 + 92);
      v101 = vaddq_f32(v99, vmulq_f32(v100, v97));
      v102 = vmulq_f32(v100, v98);
      v103 = *(a2 + 93);
      v104 = vaddq_f32(v99, v102);
      v105 = *(a2 + 94);
      v106 = vbslq_s8(v15, v27, vmulq_f32(vbslq_s8(v33, v29, v36), vbslq_s8(vcgtq_f32(v32, vsubq_f32(v37, v105)), vmulq_f32(v37, v103), v101)));
      v107 = vbslq_s8(v15, v28, vmulq_f32(vbslq_s8(v34, v29, v36), vbslq_s8(vcgtq_f32(v32, vsubq_f32(v38, v105)), vmulq_f32(v38, v103), v104)));
      v108 = (v6 + v11);
      v108[-1] = vbslq_s8(v15, v27, vmulq_laneq_f32(v106, v106, 3));
      *v108 = vbslq_s8(v15, v28, vmulq_laneq_f32(v107, v107, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v109 = 16 * v10;
    v110 = *(v7 + v109);
    v111 = *(a2 + 15);
    v112 = vmaxq_f32(vdupq_laneq_s32(v110, 3), *(a2 + 16));
    v113 = vrecpeq_f32(v112);
    v114 = vmulq_f32(v113, vrecpsq_f32(v113, v112));
    v115 = vmulq_f32(v110, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v114, vrecpsq_f32(v114, v112))), *(a2 + 3)));
    v116 = *(a2 + 82);
    v117 = vbslq_s8(v111, v115, vmaxq_f32(v115, v116));
    v118 = *(a2 + 75);
    v119 = vcgtq_f32(v118, v117);
    v120 = *(a2 + 5);
    v121 = vmulq_f32(v117, vbslq_s8(v119, *(a2 + 83), v120));
    v122 = *(a2 + 77);
    v123 = vbslq_s8(vcgtq_f32(vandq_s8(v120, vceqq_f32(v122, v118)), v118), v120, vminq_f32(v121, *(a2 + 84)));
    v124 = vorrq_s8(vandq_s8(*(a2 + 19), v123), v120);
    v125 = vandq_s8(v120, vcgtq_f32(v124, *(a2 + 23)));
    v126 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v123, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v123))), *(a2 + 22)), v125);
    v127 = vsubq_f32(vsubq_f32(v124, v120), vmulq_f32(vmulq_f32(*(a2 + 24), v125), v124));
    v128 = vmulq_f32(v127, v127);
    v129 = vmaxq_f32(vmulq_f32(v122, vaddq_f32(v126, vmulq_f32(v127, vaddq_f32(*(a2 + 43), vmulq_f32(v127, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v127)), vmulq_f32(v128, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v127)), vmulq_f32(v128, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v127))))))))))), *(a2 + 29));
    v130 = vcvtq_f32_s32(vcvtq_s32_f32(v129));
    v131 = vsubq_f32(v130, vandq_s8(v120, vcgtq_f32(v130, v129)));
    v132 = vsubq_f32(v129, v131);
    v133 = vbslq_s8(v111, v115, vmulq_f32(vbslq_s8(v119, v116, v120), vbslq_s8(vcgtq_f32(v118, vsubq_f32(v121, *(a2 + 94))), vmulq_f32(v121, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vmulq_f32(vaddq_f32(v120, vmulq_f32(v132, vaddq_f32(*(a2 + 48), vmulq_f32(v132, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v132)), vmulq_f32(vmulq_f32(v132, v132), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v132)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v131)), 0x17uLL)))))));
    *(v6 + v109) = vbslq_s8(v111, v115, vmulq_laneq_f32(v133, v133, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = *(a1 + 6);
    v8 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v56 = 0;
        v57 = 16 * v8;
        v58 = 16 * v7;
        v59 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v60 = 0;
          do
          {
            v61 = *(a2 + 15);
            v62 = vmulq_f32(v5[v60 / 0x10], vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v5[v60 / 0x10], 3), *(a2 + 16)))), *(a2 + 3)));
            v63 = vminq_f32(vmaxq_f32(v62, *(a2 + 75)), *(a2 + 5));
            v64 = vbslq_s8(v61, v62, vmulq_f32(v63, v63));
            v6[v60 / 0x10] = vbslq_s8(v61, v62, vmulq_laneq_f32(v64, v64, 3));
            v60 += 16;
          }

          while (v59 != v60);
          ++v56;
          v5 = (v5 + v57);
          v6 = (v6 + v58);
        }

        while (v56 != v3);
      }
    }

    else
    {
      v9 = 0;
      v10 = 16 * v7;
      v11 = 16 * v8;
      v12 = v5 + 4;
      v13 = v6 + 4;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = 2;
        do
        {
          v18 = v5[v17 - 2];
          v19 = v5[v17 - 1];
          v20 = v5[v17];
          v21 = v5[v17 + 1];
          v23 = *(a2 + 15);
          v22 = *(a2 + 16);
          v24 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v18, 3), v22));
          v25 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v19, 3), v22));
          v26 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v20, 3), v22));
          v27 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v21, 3), v22));
          v28 = *(a2 + 17);
          v29 = vandq_s8(v28, v24);
          v30 = vandq_s8(v28, v25);
          v31 = vandq_s8(v28, v26);
          v32 = vandq_s8(v28, v27);
          v33 = *(a2 + 3);
          v34 = vmulq_f32(v18, vorrq_s8(v29, v33));
          v35 = vmulq_f32(v19, vorrq_s8(v30, v33));
          v36 = vmulq_f32(v20, vorrq_s8(v31, v33));
          v37 = vmulq_f32(v21, vorrq_s8(v32, v33));
          v38 = *(a2 + 75);
          v39 = *(a2 + 5);
          v40 = vminq_f32(vmaxq_f32(v34, v38), v39);
          v41 = vminq_f32(vmaxq_f32(v35, v38), v39);
          v42 = vminq_f32(vmaxq_f32(v36, v38), v39);
          v43 = vminq_f32(vmaxq_f32(v37, v38), v39);
          v44 = v16;
          v45 = vbslq_s8(v23, v34, vmulq_f32(v40, v40));
          v46 = vbslq_s8(v23, v35, vmulq_f32(v41, v41));
          v47 = vbslq_s8(v23, v36, vmulq_f32(v42, v42));
          v48 = vbslq_s8(v23, v37, vmulq_f32(v43, v43));
          v49 = v15;
          v50 = &v6[v17];
          v14 += 4;
          v50[-2] = vbslq_s8(v23, v34, vmulq_laneq_f32(v45, v45, 3));
          v50[-1] = vbslq_s8(v23, v35, vmulq_laneq_f32(v46, v46, 3));
          *v50 = vbslq_s8(v23, v36, vmulq_laneq_f32(v47, v47, 3));
          v50[1] = vbslq_s8(v23, v37, vmulq_laneq_f32(v48, v48, 3));
          v17 += 4;
          v16 += 4;
          v15 = v49 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v51 = *v44++;
            v52 = *(a2 + 15);
            v53 = vmulq_f32(v51, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v51, 3), *(a2 + 16)))), *(a2 + 3)));
            v54 = vminq_f32(vmaxq_f32(v53, *(a2 + 75)), *(a2 + 5));
            v55 = vbslq_s8(v52, v53, vmulq_f32(v54, v54));
            *v49++ = vbslq_s8(v52, v53, vmulq_laneq_f32(v55, v55, 3));
            ++v14;
          }

          while (v14 < v4);
        }

        ++v9;
        v6 = (v6 + v10);
        v5 = (v5 + v11);
        v12 = (v12 + v11);
        v13 = (v13 + v10);
      }

      while (v9 != v3);
    }
  }

  return 0;
}

uint64_t Getinv_rec601_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v17));
      v22 = *(a2 + 17);
      v21 = *(a2 + 18);
      v23 = vmulq_f32(v20, v21);
      v24 = vandq_s8(v22, vmulq_f32(v18, v21));
      v25 = vandq_s8(v22, vmulq_f32(v19, v21));
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(v24, v26));
      v28 = vmulq_f32(v14, vorrq_s8(v25, v26));
      v29 = vmulq_f32(v15, vorrq_s8(vandq_s8(v22, v23), v26));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = *(a2 + 6);
      v33 = vminq_f32(vmaxq_f32(v27, v30), v31);
      v34 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v35 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v36 = *(a2 + 95);
      v37 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v33, v36)));
      v38 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v34, v36)));
      v39 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v35, v36)));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v42 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
      v43 = *(a2 + 7);
      v44 = *(a2 + 8);
      v45 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v37, v40), v43));
      v46 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v38, v41), v43));
      v47 = vrsqrteq_f32(vaddq_f32(v43, vsubq_f32(v39, v42)));
      v48 = vaddq_f32(v44, v40);
      v49 = vaddq_f32(v44, v41);
      v50 = vaddq_f32(v44, v42);
      v51 = *(a2 + 9);
      v52 = *(a2 + 10);
      v53 = vsubq_f32(v48, vmulq_f32(v45, v51));
      v54 = vsubq_f32(v49, vmulq_f32(v46, v51));
      v55 = *(a2 + 86);
      v56 = vmulq_f32(v55, v53);
      v57 = vmulq_f32(v55, v54);
      v58 = vmulq_f32(v55, vsubq_f32(v50, vmulq_f32(v47, v51)));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v60 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v62 = vsubq_f32(v59, vandq_s8(v31, vcgtq_f32(v59, v56)));
      v63 = vsubq_f32(v60, vandq_s8(v31, vcgtq_f32(v60, v57)));
      v64 = vsubq_f32(v61, vandq_s8(v31, vcgtq_f32(v61, v58)));
      v65 = *(a2 + 11);
      v66 = *(a2 + 12);
      v67 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, vsubq_f32(v56, v62))), v66);
      v68 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, vsubq_f32(v57, v63))), v66);
      v69 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, vsubq_f32(v58, v64))), v66);
      v70 = vaddq_f32(vaddq_f32(v52, v64), vmulq_f32(v69, v69));
      v71 = vmaxq_f32(vaddq_f32(vaddq_f32(v52, v62), vmulq_f32(v67, v67)), v30);
      v72 = vmaxq_f32(vaddq_f32(vaddq_f32(v52, v63), vmulq_f32(v68, v68)), v30);
      v73 = *(a2 + 13);
      v74 = *(a2 + 14);
      v75 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v71, v73), v74));
      v76 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v72, v73), v74));
      v77 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v70, v30), v73), v74));
      v78 = *(a2 + 96);
      v79 = *(a2 + 97);
      v80 = vmulq_f32(v33, v79);
      v81 = vmulq_f32(v34, v79);
      v82 = vmulq_f32(v35, v79);
      v83 = *(a2 + 98);
      v84 = vcgtq_f32(v30, vsubq_f32(v33, v83));
      v85 = vcgtq_f32(v30, vsubq_f32(v34, v83));
      v86 = vcgtq_f32(v30, vsubq_f32(v35, v83));
      v87 = vbslq_s8(v16, v27, vbslq_s8(v84, v80, vmulq_f32(v78, v75)));
      v88 = vbslq_s8(v16, v28, vbslq_s8(v85, v81, vmulq_f32(v78, v76)));
      v89 = vbslq_s8(v16, v29, vbslq_s8(v86, v82, vmulq_f32(v78, v77)));
      v90 = (v6 + v10);
      *v90 = vbslq_s8(v16, v27, vmulq_laneq_f32(v87, v87, 3));
      v90[1] = vbslq_s8(v16, v28, vmulq_laneq_f32(v88, v88, 3));
      v90[2] = vbslq_s8(v16, v29, vmulq_laneq_f32(v89, v89, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v91 = *(a2 + 15);
      v92 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v93 = *(a2 + 75);
      v94 = *(a2 + 5);
      v95 = vminq_f32(vmaxq_f32(v92, v93), v94);
      v96 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v95, *(a2 + 95))));
      v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
      v98 = vmulq_f32(*(a2 + 86), vsubq_f32(vaddq_f32(*(a2 + 8), v97), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v96, v97))), *(a2 + 9))));
      v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
      v100 = vsubq_f32(v99, vandq_s8(v94, vcgtq_f32(v99, v98)));
      v101 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v98, v100))), *(a2 + 12));
      v102 = vbslq_s8(v91, v92, vbslq_s8(vcgtq_f32(v93, vsubq_f32(v95, *(a2 + 98))), vmulq_f32(v95, *(a2 + 97)), vmulq_f32(*(a2 + 96), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v100), vmulq_f32(v101, v101)), v93), *(a2 + 13)), *(a2 + 14))))));
      *(v6 + 16 * v11++) = vbslq_s8(v91, v92, vmulq_laneq_f32(v102, v102, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v33 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v34 = *(a2 + 95);
      v35 = *(a2 + 86);
      v36 = vcgtq_f32(vandq_s8(v31, vceqq_f32(v35, v30)), v30);
      v37 = vbslq_s8(v36, v31, vaddq_f32(v32, v34));
      v38 = vbslq_s8(v36, v31, vaddq_f32(v33, v34));
      v39 = *(a2 + 19);
      v40 = *(a2 + 20);
      v41 = vorrq_s8(vandq_s8(v39, v37), v31);
      v42 = vorrq_s8(vandq_s8(v39, v38), v31);
      v43 = *(a2 + 21);
      v44 = *(a2 + 22);
      v45 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v40, v37)));
      v46 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v40, v38)));
      v47 = *(a2 + 23);
      v48 = *(a2 + 24);
      v49 = vandq_s8(v31, vcgtq_f32(v41, v47));
      v50 = vandq_s8(v31, vcgtq_f32(v42, v47));
      v51 = vaddq_f32(vsubq_f32(v45, v44), v49);
      v52 = vmulq_f32(v48, v49);
      v53 = vmulq_f32(vmulq_f32(v48, v50), v42);
      v54 = vaddq_f32(vsubq_f32(v46, v44), v50);
      v55 = vsubq_f32(vsubq_f32(v41, v31), vmulq_f32(v52, v41));
      v56 = vsubq_f32(vsubq_f32(v42, v31), v53);
      v57 = vmulq_f32(v55, v55);
      v58 = vmulq_f32(v56, v56);
      v59 = *(a2 + 37);
      v60 = *(a2 + 38);
      v61 = *(a2 + 39);
      v62 = *(a2 + 40);
      v63 = vaddq_f32(v59, vmulq_f32(v60, v55));
      v64 = vaddq_f32(v61, vmulq_f32(v62, v55));
      v65 = vaddq_f32(v61, vmulq_f32(v62, v56));
      v66 = vaddq_f32(v59, vmulq_f32(v60, v56));
      v67 = *(a2 + 41);
      v68 = *(a2 + 42);
      v69 = vaddq_f32(vaddq_f32(v67, vmulq_f32(v68, v56)), vmulq_f32(v58, vaddq_f32(v66, vmulq_f32(v58, v65))));
      v70 = vmulq_f32(v55, vaddq_f32(vaddq_f32(v67, vmulq_f32(v68, v55)), vmulq_f32(v57, vaddq_f32(v63, vmulq_f32(v57, v64)))));
      v71 = *(a2 + 43);
      v72 = *(a2 + 44);
      v73 = vmulq_f32(v35, vaddq_f32(v51, vmulq_f32(v55, vaddq_f32(v71, v70))));
      v74 = vmulq_f32(v35, vaddq_f32(v54, vmulq_f32(v56, vaddq_f32(v71, vmulq_f32(v56, v69)))));
      v75 = *(a2 + 29);
      v76 = vmaxq_f32(v73, v75);
      v77 = vmaxq_f32(v74, v75);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v31, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v31, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = vaddq_f32(v72, vmulq_f32(v84, v82));
      v87 = vaddq_f32(v72, vmulq_f32(v84, v83));
      v88 = *(a2 + 47);
      v89 = *(a2 + 48);
      v90 = vaddq_f32(v31, vmulq_f32(v82, vaddq_f32(v89, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v88)), vmulq_f32(vmulq_f32(v82, v82), v86))))));
      v91 = *(a2 + 33);
      v92 = vaddq_f32(v31, vmulq_f32(v83, vaddq_f32(v89, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v88, v83)), vmulq_f32(vmulq_f32(v83, v83), v87))))));
      v93 = vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v80)), 0x17uLL);
      v94 = vmulq_f32(v92, vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v81)), 0x17uLL));
      v95 = *(a2 + 96);
      v96 = vmulq_f32(v95, vmulq_f32(v90, v93));
      v97 = *(a2 + 97);
      v98 = vmulq_f32(v32, v97);
      v99 = vmulq_f32(v33, v97);
      v100 = *(a2 + 98);
      v101 = vcgtq_f32(v30, vsubq_f32(v32, v100));
      v102 = vcgtq_f32(v30, vsubq_f32(v33, v100));
      v103 = vbslq_s8(v15, v28, vbslq_s8(v101, v98, v96));
      v104 = vbslq_s8(v15, v29, vbslq_s8(v102, v99, vmulq_f32(v95, v94)));
      v105 = (v6 + v11);
      v105[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v103, v103, 3));
      *v105 = vbslq_s8(v15, v29, vmulq_laneq_f32(v104, v104, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v106 = 16 * v10;
    v107 = *(v7 + v106);
    v108 = *(a2 + 15);
    v109 = vmaxq_f32(vdupq_laneq_s32(v107, 3), *(a2 + 16));
    v110 = vrecpeq_f32(v109);
    v111 = vmulq_f32(v110, vrecpsq_f32(v110, v109));
    v112 = vmulq_f32(v107, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v111, vrecpsq_f32(v111, v109))), *(a2 + 3)));
    v113 = *(a2 + 75);
    v114 = *(a2 + 5);
    v115 = vminq_f32(vmaxq_f32(v112, v113), v114);
    v116 = *(a2 + 86);
    v117 = vbslq_s8(vcgtq_f32(vandq_s8(v114, vceqq_f32(v116, v113)), v113), v114, vaddq_f32(v115, *(a2 + 95)));
    v118 = vorrq_s8(vandq_s8(*(a2 + 19), v117), v114);
    v119 = vandq_s8(v114, vcgtq_f32(v118, *(a2 + 23)));
    v120 = vsubq_f32(vsubq_f32(v118, v114), vmulq_f32(vmulq_f32(*(a2 + 24), v119), v118));
    v121 = vmulq_f32(v120, v120);
    v122 = vmaxq_f32(vmulq_f32(v116, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v117, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v117))), *(a2 + 22)), v119), vmulq_f32(v120, vaddq_f32(*(a2 + 43), vmulq_f32(v120, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v120)), vmulq_f32(v121, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v120)), vmulq_f32(v121, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v120))))))))))), *(a2 + 29));
    v123 = vcvtq_f32_s32(vcvtq_s32_f32(v122));
    v124 = vsubq_f32(v123, vandq_s8(v114, vcgtq_f32(v123, v122)));
    v125 = vsubq_f32(v122, v124);
    v126 = vbslq_s8(v108, v112, vbslq_s8(vcgtq_f32(v113, vsubq_f32(v115, *(a2 + 98))), vmulq_f32(v115, *(a2 + 97)), vmulq_f32(*(a2 + 96), vmulq_f32(vaddq_f32(v114, vmulq_f32(v125, vaddq_f32(*(a2 + 48), vmulq_f32(v125, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v125)), vmulq_f32(vmulq_f32(v125, v125), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v125)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v124)), 0x17uLL)))));
    *(v6 + v106) = vbslq_s8(v108, v112, vmulq_laneq_f32(v126, v126, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 75);
      v28 = *(a2 + 5);
      v29 = vminq_f32(vmaxq_f32(v25, v27), v28);
      v30 = vminq_f32(vmaxq_f32(v26, v27), v28);
      v31 = *(a2 + 95);
      v32 = vaddq_f32(v29, v31);
      v33 = vaddq_f32(v30, v31);
      v34 = *(a2 + 19);
      v35 = *(a2 + 20);
      v36 = vorrq_s8(vandq_s8(v34, v32), v28);
      v37 = vorrq_s8(vandq_s8(v34, v33), v28);
      v38 = *(a2 + 21);
      v39 = *(a2 + 22);
      v40 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v33)));
      v41 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v32))), v39);
      v42 = *(a2 + 23);
      v43 = *(a2 + 24);
      v44 = vsubq_f32(v40, v39);
      v45 = vandq_s8(v28, vcgtq_f32(v36, v42));
      v46 = vandq_s8(v28, vcgtq_f32(v37, v42));
      v47 = vaddq_f32(v41, v45);
      v48 = vsubq_f32(vsubq_f32(v36, v28), vmulq_f32(vmulq_f32(v43, v45), v36));
      v49 = vsubq_f32(vsubq_f32(v37, v28), vmulq_f32(vmulq_f32(v43, v46), v37));
      v50 = *(a2 + 25);
      v51 = *(a2 + 26);
      v52 = vaddq_f32(v50, vmulq_f32(v51, v48));
      v53 = vaddq_f32(v50, vmulq_f32(v51, v49));
      v54 = *(a2 + 27);
      v55 = *(a2 + 28);
      v56 = vaddq_f32(vaddq_f32(v44, v46), vmulq_f32(v49, vaddq_f32(vaddq_f32(v54, vmulq_f32(v49, v55)), vmulq_f32(vmulq_f32(v49, v49), v53))));
      v57 = *(a2 + 86);
      v58 = vmulq_f32(v57, vaddq_f32(v47, vmulq_f32(v48, vaddq_f32(vaddq_f32(v54, vmulq_f32(v48, v55)), vmulq_f32(vmulq_f32(v48, v48), v52)))));
      v59 = vmulq_f32(v57, v56);
      v60 = *(a2 + 29);
      v61 = *(a2 + 30);
      v62 = vmaxq_f32(v58, v60);
      v63 = vmaxq_f32(v59, v60);
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vsubq_f32(v64, vandq_s8(v28, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v65, vandq_s8(v28, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v62, v66);
      v69 = *(a2 + 31);
      v70 = *(a2 + 32);
      v71 = vsubq_f32(v63, v67);
      v72 = vmulq_f32(v71, vaddq_f32(v70, vmulq_f32(v71, vaddq_f32(v61, vmulq_f32(v69, v71)))));
      v73 = vaddq_f32(v28, vmulq_f32(v68, vaddq_f32(v70, vmulq_f32(v68, vaddq_f32(v61, vmulq_f32(v69, v68))))));
      v74 = vcvtq_s32_f32(v67);
      v75 = *(a2 + 33);
      v76 = vaddq_f32(v28, v72);
      v77 = vmulq_f32(v73, vshlq_n_s32(vaddq_s32(v75, vcvtq_s32_f32(v66)), 0x17uLL));
      v78 = vmulq_f32(v76, vshlq_n_s32(vaddq_s32(v75, v74), 0x17uLL));
      v79 = *(a2 + 96);
      v80 = *(a2 + 97);
      v81 = vmulq_f32(v29, v80);
      v82 = vmulq_f32(v30, v80);
      v83 = *(a2 + 98);
      v84 = vcgtq_f32(v27, vsubq_f32(v29, v83));
      v85 = vcgtq_f32(v27, vsubq_f32(v30, v83));
      v86 = vbslq_s8(v15, v25, vbslq_s8(v84, v81, vmulq_f32(v79, v77)));
      v87 = vbslq_s8(v15, v26, vbslq_s8(v85, v82, vmulq_f32(v79, v78)));
      v88 = (v6 + v11);
      v88[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v86, v86, 3));
      *v88 = vbslq_s8(v15, v26, vmulq_laneq_f32(v87, v87, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v89 = 16 * v10;
    v90 = *(v7 + v89);
    v91 = *(a2 + 15);
    v92 = vmaxq_f32(vdupq_laneq_s32(v90, 3), *(a2 + 16));
    v93 = vmulq_f32(vrecpeq_f32(v92), *(a2 + 18));
    v94 = vmulq_f32(v90, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v93, vrecpsq_f32(v93, v92))), *(a2 + 3)));
    v95 = *(a2 + 75);
    v96 = *(a2 + 5);
    v97 = vminq_f32(vmaxq_f32(v94, v95), v96);
    v98 = vaddq_f32(v97, *(a2 + 95));
    v99 = vorrq_s8(vandq_s8(*(a2 + 19), v98), v96);
    v100 = vandq_s8(v96, vcgtq_f32(v99, *(a2 + 23)));
    v101 = vsubq_f32(vsubq_f32(v99, v96), vmulq_f32(vmulq_f32(*(a2 + 24), v100), v99));
    v102 = vmaxq_f32(vmulq_f32(*(a2 + 86), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v98, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v98))), *(a2 + 22)), v100), vmulq_f32(v101, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v101, *(a2 + 28))), vmulq_f32(vmulq_f32(v101, v101), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v101))))))), *(a2 + 29));
    v103 = vcvtq_f32_s32(vcvtq_s32_f32(v102));
    v104 = vsubq_f32(v103, vandq_s8(v96, vcgtq_f32(v103, v102)));
    v105 = vsubq_f32(v102, v104);
    v106 = vbslq_s8(v91, v94, vbslq_s8(vcgtq_f32(v95, vsubq_f32(v97, *(a2 + 98))), vmulq_f32(v97, *(a2 + 97)), vmulq_f32(*(a2 + 96), vmulq_f32(vaddq_f32(v96, vmulq_f32(v105, vaddq_f32(*(a2 + 32), vmulq_f32(v105, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v105)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v104)), 0x17uLL)))));
    *(v6 + v89) = vbslq_s8(v91, v94, vmulq_laneq_f32(v106, v106, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 82);
      v28 = vbslq_s8(v15, v25, vmaxq_f32(v25, v27));
      v29 = *(a2 + 75);
      v30 = vbslq_s8(v15, v26, vmaxq_f32(v26, v27));
      v31 = vcgtq_f32(v29, v28);
      v32 = vcgtq_f32(v29, v30);
      v33 = *(a2 + 83);
      v34 = *(a2 + 5);
      v35 = vmulq_f32(v28, vbslq_s8(v31, v33, v34));
      v36 = vmulq_f32(v30, vbslq_s8(v32, v33, v34));
      v37 = *(a2 + 90);
      v38 = *(a2 + 95);
      v39 = vaddq_f32(vminq_f32(v35, v37), v38);
      v40 = vaddq_f32(vminq_f32(v36, v37), v38);
      v41 = *(a2 + 19);
      v42 = *(a2 + 20);
      v43 = vorrq_s8(vandq_s8(v41, v39), v34);
      v44 = *(a2 + 21);
      v45 = *(a2 + 22);
      v46 = vorrq_s8(vandq_s8(v41, v40), v34);
      v47 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v40, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v42, v40)));
      v48 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v39, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v42, v39))), v45);
      v49 = *(a2 + 23);
      v50 = *(a2 + 24);
      v51 = vsubq_f32(v47, v45);
      v52 = vandq_s8(v34, vcgtq_f32(v43, v49));
      v53 = vandq_s8(v34, vcgtq_f32(v46, v49));
      v54 = vmulq_f32(v50, v52);
      v55 = vaddq_f32(v48, v52);
      v56 = vmulq_f32(vmulq_f32(v50, v53), v46);
      v57 = vaddq_f32(v51, v53);
      v58 = vsubq_f32(vsubq_f32(v43, v34), vmulq_f32(v54, v43));
      v59 = vsubq_f32(vsubq_f32(v46, v34), v56);
      v60 = *(a2 + 25);
      v61 = *(a2 + 26);
      v62 = *(a2 + 27);
      v63 = *(a2 + 28);
      v64 = vaddq_f32(v57, vmulq_f32(v59, vaddq_f32(vaddq_f32(v62, vmulq_f32(v59, v63)), vmulq_f32(vmulq_f32(v59, v59), vaddq_f32(v60, vmulq_f32(v61, v59))))));
      v65 = *(a2 + 86);
      v66 = vmulq_f32(v65, vaddq_f32(v55, vmulq_f32(v58, vaddq_f32(vaddq_f32(v62, vmulq_f32(v58, v63)), vmulq_f32(vmulq_f32(v58, v58), vaddq_f32(v60, vmulq_f32(v61, v58)))))));
      v67 = vmulq_f32(v65, v64);
      v68 = *(a2 + 29);
      v69 = *(a2 + 30);
      v70 = vmaxq_f32(v66, v68);
      v71 = vmaxq_f32(v67, v68);
      v72 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
      v73 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
      v74 = vsubq_f32(v72, vandq_s8(v34, vcgtq_f32(v72, v70)));
      v75 = vsubq_f32(v73, vandq_s8(v34, vcgtq_f32(v73, v71)));
      v76 = vsubq_f32(v70, v74);
      v77 = vsubq_f32(v71, v75);
      v78 = *(a2 + 31);
      v79 = *(a2 + 32);
      v80 = vmulq_f32(v77, vaddq_f32(v79, vmulq_f32(v77, vaddq_f32(v69, vmulq_f32(v78, v77)))));
      v81 = vaddq_f32(v34, vmulq_f32(v76, vaddq_f32(v79, vmulq_f32(v76, vaddq_f32(v69, vmulq_f32(v78, v76))))));
      v82 = vcvtq_s32_f32(v75);
      v83 = *(a2 + 33);
      v84 = vmulq_f32(v81, vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v74)), 0x17uLL));
      v85 = vmulq_f32(vaddq_f32(v34, v80), vshlq_n_s32(vaddq_s32(v83, v82), 0x17uLL));
      v86 = *(a2 + 96);
      v87 = vmulq_f32(v86, v84);
      v88 = *(a2 + 97);
      v89 = vmulq_f32(v86, v85);
      v90 = *(a2 + 98);
      v91 = vbslq_s8(v15, v25, vmulq_f32(vbslq_s8(v31, v27, v34), vbslq_s8(vcgtq_f32(v29, vsubq_f32(v35, v90)), vmulq_f32(v35, v88), v87)));
      v92 = vbslq_s8(v15, v26, vmulq_f32(vbslq_s8(v32, v27, v34), vbslq_s8(vcgtq_f32(v29, vsubq_f32(v36, v90)), vmulq_f32(v36, v88), v89)));
      v93 = (v6 + v11);
      v93[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v91, v91, 3));
      *v93 = vbslq_s8(v15, v26, vmulq_laneq_f32(v92, v92, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v94 = 16 * v10;
    v95 = *(v7 + v94);
    v96 = *(a2 + 15);
    v97 = vmaxq_f32(vdupq_laneq_s32(v95, 3), *(a2 + 16));
    v98 = vmulq_f32(vrecpeq_f32(v97), *(a2 + 18));
    v99 = vmulq_f32(v95, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v98, vrecpsq_f32(v98, v97))), *(a2 + 3)));
    v100 = *(a2 + 82);
    v101 = vbslq_s8(v96, v99, vmaxq_f32(v99, v100));
    v102 = *(a2 + 75);
    v103 = vcgtq_f32(v102, v101);
    v104 = *(a2 + 5);
    v105 = vmulq_f32(v101, vbslq_s8(v103, *(a2 + 83), v104));
    v106 = vaddq_f32(vminq_f32(v105, *(a2 + 90)), *(a2 + 95));
    v107 = vorrq_s8(vandq_s8(*(a2 + 19), v106), v104);
    v108 = vandq_s8(v104, vcgtq_f32(v107, *(a2 + 23)));
    v109 = vsubq_f32(vsubq_f32(v107, v104), vmulq_f32(vmulq_f32(*(a2 + 24), v108), v107));
    v110 = vmaxq_f32(vmulq_f32(*(a2 + 86), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v106, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v106))), *(a2 + 22)), v108), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v109, *(a2 + 28))), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v109))))))), *(a2 + 29));
    v111 = vcvtq_f32_s32(vcvtq_s32_f32(v110));
    v112 = vsubq_f32(v111, vandq_s8(v104, vcgtq_f32(v111, v110)));
    v113 = vsubq_f32(v110, v112);
    v114 = vbslq_s8(v96, v99, vmulq_f32(vbslq_s8(v103, v100, v104), vbslq_s8(vcgtq_f32(v102, vsubq_f32(v105, *(a2 + 98))), vmulq_f32(v105, *(a2 + 97)), vmulq_f32(*(a2 + 96), vmulq_f32(vaddq_f32(v104, vmulq_f32(v113, vaddq_f32(*(a2 + 32), vmulq_f32(v113, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v113)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v112)), 0x17uLL))))));
    *(v6 + v94) = vbslq_s8(v96, v99, vmulq_laneq_f32(v114, v114, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v18));
      v25 = *(a2 + 17);
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(vandq_s8(v25, v23), v26));
      v28 = vmulq_f32(v14, vorrq_s8(vandq_s8(v25, v24), v26));
      v29 = *(a2 + 82);
      v30 = vbslq_s8(v15, v27, vmaxq_f32(v27, v29));
      v31 = vbslq_s8(v15, v28, vmaxq_f32(v28, v29));
      v32 = *(a2 + 75);
      v33 = vcgtq_f32(v32, v30);
      v34 = vcgtq_f32(v32, v31);
      v35 = *(a2 + 83);
      v36 = *(a2 + 5);
      v37 = vmulq_f32(v30, vbslq_s8(v33, v35, v36));
      v38 = vmulq_f32(v31, vbslq_s8(v34, v35, v36));
      v39 = *(a2 + 90);
      v40 = *(a2 + 95);
      v41 = vaddq_f32(vminq_f32(v37, v39), v40);
      v42 = vaddq_f32(vminq_f32(v38, v39), v40);
      v43 = *(a2 + 86);
      v44 = vcgtq_f32(vandq_s8(v36, vceqq_f32(v43, v32)), v32);
      v45 = vbslq_s8(v44, v36, v41);
      v46 = vbslq_s8(v44, v36, v42);
      v47 = *(a2 + 19);
      v48 = *(a2 + 20);
      v49 = vorrq_s8(vandq_s8(v47, v45), v36);
      v50 = vorrq_s8(vandq_s8(v47, v46), v36);
      v51 = *(a2 + 21);
      v52 = *(a2 + 22);
      v53 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v46, 0x17uLL)), vandq_s8(v51, vcgtq_f32(v48, v46)));
      v54 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v45, 0x17uLL)), vandq_s8(v51, vcgtq_f32(v48, v45))), v52);
      v55 = *(a2 + 23);
      v56 = *(a2 + 24);
      v57 = vsubq_f32(v53, v52);
      v58 = vandq_s8(v36, vcgtq_f32(v49, v55));
      v59 = vandq_s8(v36, vcgtq_f32(v50, v55));
      v60 = vmulq_f32(v56, v58);
      v61 = vaddq_f32(v54, v58);
      v62 = vmulq_f32(vmulq_f32(v56, v59), v50);
      v63 = vsubq_f32(v50, v36);
      v64 = vsubq_f32(vsubq_f32(v49, v36), vmulq_f32(v60, v49));
      v65 = vsubq_f32(v63, v62);
      v66 = vmulq_f32(v64, v64);
      v67 = *(a2 + 37);
      v68 = *(a2 + 38);
      v69 = *(a2 + 39);
      v70 = *(a2 + 40);
      v71 = vaddq_f32(v67, vmulq_f32(v68, v64));
      v72 = vaddq_f32(v69, vmulq_f32(v70, v64));
      v73 = vaddq_f32(v69, vmulq_f32(v70, v65));
      v74 = vaddq_f32(v67, vmulq_f32(v68, v65));
      v75 = *(a2 + 41);
      v76 = *(a2 + 42);
      v77 = vaddq_f32(v75, vmulq_f32(v76, v64));
      v78 = vaddq_f32(v75, vmulq_f32(v76, v65));
      v79 = vmulq_f32(v65, v65);
      v80 = vaddq_f32(v57, v59);
      v81 = vaddq_f32(v78, vmulq_f32(v79, vaddq_f32(v74, vmulq_f32(v79, v73))));
      v82 = *(a2 + 43);
      v83 = *(a2 + 44);
      v84 = vmulq_f32(v43, vaddq_f32(v61, vmulq_f32(v64, vaddq_f32(v82, vmulq_f32(v64, vaddq_f32(v77, vmulq_f32(v66, vaddq_f32(v71, vmulq_f32(v66, v72)))))))));
      v85 = vmulq_f32(v43, vaddq_f32(v80, vmulq_f32(v65, vaddq_f32(v82, vmulq_f32(v65, v81)))));
      v86 = *(a2 + 29);
      v87 = vmaxq_f32(v84, v86);
      v88 = vmaxq_f32(v85, v86);
      v89 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v90 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
      v91 = vsubq_f32(v89, vandq_s8(v36, vcgtq_f32(v89, v87)));
      v92 = vsubq_f32(v90, vandq_s8(v36, vcgtq_f32(v90, v88)));
      v93 = vsubq_f32(v87, v91);
      v94 = vsubq_f32(v88, v92);
      v95 = *(a2 + 45);
      v96 = *(a2 + 46);
      v97 = *(a2 + 47);
      v98 = *(a2 + 48);
      v99 = *(a2 + 33);
      v100 = vmulq_f32(vaddq_f32(v36, vmulq_f32(v93, vaddq_f32(v98, vmulq_f32(v93, vaddq_f32(vaddq_f32(v96, vmulq_f32(v93, v97)), vmulq_f32(vmulq_f32(v93, v93), vaddq_f32(v83, vmulq_f32(v95, v93)))))))), vshlq_n_s32(vaddq_s32(v99, vcvtq_s32_f32(v91)), 0x17uLL));
      v101 = vmulq_f32(vaddq_f32(v36, vmulq_f32(v94, vaddq_f32(v98, vmulq_f32(v94, vaddq_f32(vaddq_f32(v96, vmulq_f32(v97, v94)), vmulq_f32(vmulq_f32(v94, v94), vaddq_f32(v83, vmulq_f32(v95, v94)))))))), vshlq_n_s32(vaddq_s32(v99, vcvtq_s32_f32(v92)), 0x17uLL));
      v102 = *(a2 + 96);
      v103 = vmulq_f32(v102, v100);
      v104 = *(a2 + 97);
      v105 = vmulq_f32(v102, v101);
      v106 = *(a2 + 98);
      v107 = vbslq_s8(v15, v27, vmulq_f32(vbslq_s8(v33, v29, v36), vbslq_s8(vcgtq_f32(v32, vsubq_f32(v37, v106)), vmulq_f32(v37, v104), v103)));
      v108 = vbslq_s8(v15, v28, vmulq_f32(vbslq_s8(v34, v29, v36), vbslq_s8(vcgtq_f32(v32, vsubq_f32(v38, v106)), vmulq_f32(v38, v104), v105)));
      v109 = (v6 + v11);
      v109[-1] = vbslq_s8(v15, v27, vmulq_laneq_f32(v107, v107, 3));
      *v109 = vbslq_s8(v15, v28, vmulq_laneq_f32(v108, v108, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v110 = 16 * v10;
    v111 = *(v7 + v110);
    v112 = *(a2 + 15);
    v113 = vmaxq_f32(vdupq_laneq_s32(v111, 3), *(a2 + 16));
    v114 = vrecpeq_f32(v113);
    v115 = vmulq_f32(v114, vrecpsq_f32(v114, v113));
    v116 = vmulq_f32(v111, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v115, vrecpsq_f32(v115, v113))), *(a2 + 3)));
    v117 = *(a2 + 82);
    v118 = vbslq_s8(v112, v116, vmaxq_f32(v116, v117));
    v119 = *(a2 + 75);
    v120 = vcgtq_f32(v119, v118);
    v121 = *(a2 + 5);
    v122 = vmulq_f32(v118, vbslq_s8(v120, *(a2 + 83), v121));
    v123 = *(a2 + 86);
    v124 = vbslq_s8(vcgtq_f32(vandq_s8(v121, vceqq_f32(v123, v119)), v119), v121, vaddq_f32(vminq_f32(v122, *(a2 + 90)), *(a2 + 95)));
    v125 = vorrq_s8(vandq_s8(*(a2 + 19), v124), v121);
    v126 = vandq_s8(v121, vcgtq_f32(v125, *(a2 + 23)));
    v127 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v124, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v124))), *(a2 + 22)), v126);
    v128 = vsubq_f32(vsubq_f32(v125, v121), vmulq_f32(vmulq_f32(*(a2 + 24), v126), v125));
    v129 = vmulq_f32(v128, v128);
    v130 = vmaxq_f32(vmulq_f32(v123, vaddq_f32(v127, vmulq_f32(v128, vaddq_f32(*(a2 + 43), vmulq_f32(v128, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v128)), vmulq_f32(v129, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v128)), vmulq_f32(v129, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v128))))))))))), *(a2 + 29));
    v131 = vcvtq_f32_s32(vcvtq_s32_f32(v130));
    v132 = vsubq_f32(v131, vandq_s8(v121, vcgtq_f32(v131, v130)));
    v133 = vsubq_f32(v130, v132);
    v134 = vbslq_s8(v112, v116, vmulq_f32(vbslq_s8(v120, v117, v121), vbslq_s8(vcgtq_f32(v119, vsubq_f32(v122, *(a2 + 98))), vmulq_f32(v122, *(a2 + 97)), vmulq_f32(*(a2 + 96), vmulq_f32(vaddq_f32(v121, vmulq_f32(v133, vaddq_f32(*(a2 + 48), vmulq_f32(v133, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v133)), vmulq_f32(vmulq_f32(v133, v133), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v133)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v132)), 0x17uLL))))));
    *(v6 + v110) = vbslq_s8(v112, v116, vmulq_laneq_f32(v134, v134, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = *(a1 + 6);
    v8 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v64 = 0;
        v65 = 16 * v8;
        v66 = 16 * v7;
        v67 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v68 = 0;
          do
          {
            v69 = *(a2 + 15);
            v70 = vmulq_f32(v5[v68 / 0x10], vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v5[v68 / 0x10], 3), *(a2 + 16)))), *(a2 + 3)));
            v71 = vminq_f32(vmaxq_f32(v70, *(a2 + 75)), *(a2 + 5));
            v72 = vmulq_f32(v71, *(a2 + 99));
            v73 = vaddq_f32(v72, vmulq_f32(v71, vsubq_f32(v71, v72)));
            v74 = vbslq_s8(v69, v70, vmulq_f32(vminq_f32(vrsqrteq_f32(v73), *(a2 + 73)), v73));
            v6[v68 / 0x10] = vbslq_s8(v69, v70, vmulq_laneq_f32(v74, v74, 3));
            v68 += 16;
          }

          while (v67 != v68);
          ++v64;
          v5 = (v5 + v65);
          v6 = (v6 + v66);
        }

        while (v64 != v3);
      }
    }

    else
    {
      v9 = 0;
      v10 = 16 * v7;
      v11 = 16 * v8;
      v12 = v5 + 4;
      v13 = v6 + 4;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = 2;
        do
        {
          v18 = v5[v17 - 2];
          v19 = v5[v17 - 1];
          v20 = v5[v17];
          v21 = v5[v17 + 1];
          v22 = *(a2 + 15);
          v23 = *(a2 + 16);
          v24 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v18, 3), v23));
          v25 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v19, 3), v23));
          v26 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v20, 3), v23));
          v27 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v21, 3), v23));
          v28 = *(a2 + 17);
          v29 = *(a2 + 3);
          v30 = vmulq_f32(v18, vorrq_s8(vandq_s8(v28, v24), v29));
          v31 = vmulq_f32(v19, vorrq_s8(vandq_s8(v28, v25), v29));
          v32 = vmulq_f32(v20, vorrq_s8(vandq_s8(v28, v26), v29));
          v33 = vmulq_f32(v21, vorrq_s8(vandq_s8(v28, v27), v29));
          v34 = *(a2 + 75);
          v35 = *(a2 + 5);
          v36 = vminq_f32(vmaxq_f32(v30, v34), v35);
          v37 = vminq_f32(vmaxq_f32(v31, v34), v35);
          v38 = vminq_f32(vmaxq_f32(v32, v34), v35);
          v39 = vminq_f32(vmaxq_f32(v33, v34), v35);
          v40 = *(a2 + 99);
          v41 = vmulq_f32(v36, v40);
          v42 = vmulq_f32(v37, v40);
          v43 = vmulq_f32(v38, v40);
          v44 = vmulq_f32(v39, v40);
          v45 = vaddq_f32(v41, vmulq_f32(v36, vsubq_f32(v36, v41)));
          v46 = vaddq_f32(v42, vmulq_f32(v37, vsubq_f32(v37, v42)));
          v47 = vaddq_f32(v43, vmulq_f32(v38, vsubq_f32(v38, v43)));
          v48 = vaddq_f32(v44, vmulq_f32(v39, vsubq_f32(v39, v44)));
          v49 = v16;
          v50 = *(a2 + 73);
          v51 = vbslq_s8(v22, v30, vmulq_f32(v45, vminq_f32(vrsqrteq_f32(v45), v50)));
          v52 = vbslq_s8(v22, v31, vmulq_f32(v46, vminq_f32(vrsqrteq_f32(v46), v50)));
          v53 = vbslq_s8(v22, v32, vmulq_f32(v47, vminq_f32(vrsqrteq_f32(v47), v50)));
          v54 = vbslq_s8(v22, v33, vmulq_f32(v48, vminq_f32(vrsqrteq_f32(v48), v50)));
          v55 = v15;
          v56 = &v6[v17];
          v14 += 4;
          v56[-2] = vbslq_s8(v22, v30, vmulq_laneq_f32(v51, v51, 3));
          v56[-1] = vbslq_s8(v22, v31, vmulq_laneq_f32(v52, v52, 3));
          *v56 = vbslq_s8(v22, v32, vmulq_laneq_f32(v53, v53, 3));
          v56[1] = vbslq_s8(v22, v33, vmulq_laneq_f32(v54, v54, 3));
          v17 += 4;
          v16 += 4;
          v15 = v55 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v57 = *v49++;
            v58 = *(a2 + 15);
            v59 = vmulq_f32(v57, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v57, 3), *(a2 + 16)))), *(a2 + 3)));
            v60 = vminq_f32(vmaxq_f32(v59, *(a2 + 75)), *(a2 + 5));
            v61 = vmulq_f32(v60, *(a2 + 99));
            v62 = vaddq_f32(v61, vmulq_f32(v60, vsubq_f32(v60, v61)));
            v63 = vbslq_s8(v58, v59, vmulq_f32(vminq_f32(vrsqrteq_f32(v62), *(a2 + 73)), v62));
            *v55++ = vbslq_s8(v58, v59, vmulq_laneq_f32(v63, v63, 3));
            ++v14;
          }

          while (v14 < v4);
        }

        ++v9;
        v6 = (v6 + v10);
        v5 = (v5 + v11);
        v12 = (v12 + v11);
        v13 = (v13 + v10);
      }

      while (v9 != v3);
    }
  }

  return 0;
}

uint64_t Getsrgb_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v17));
      v22 = *(a2 + 17);
      v21 = *(a2 + 18);
      v23 = vmulq_f32(v20, v21);
      v24 = vandq_s8(v22, vmulq_f32(v18, v21));
      v25 = vandq_s8(v22, vmulq_f32(v19, v21));
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(v24, v26));
      v28 = vmulq_f32(v14, vorrq_s8(v25, v26));
      v29 = vmulq_f32(v15, vorrq_s8(vandq_s8(v22, v23), v26));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = *(a2 + 6);
      v33 = vminq_f32(vmaxq_f32(v27, v30), v31);
      v34 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v35 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v36 = vmulq_f32(v32, vcvtq_f32_s32(v33));
      v37 = vmulq_f32(v32, vcvtq_f32_s32(v34));
      v38 = vmulq_f32(v32, vcvtq_f32_s32(v35));
      v39 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v42 = *(a2 + 7);
      v43 = *(a2 + 8);
      v44 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v36, v39), v42));
      v45 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v37, v40), v42));
      v46 = vrsqrteq_f32(vaddq_f32(v42, vsubq_f32(v38, v41)));
      v47 = vaddq_f32(v43, v39);
      v48 = vaddq_f32(v43, v40);
      v49 = vaddq_f32(v43, v41);
      v50 = *(a2 + 9);
      v51 = *(a2 + 10);
      v52 = vsubq_f32(v47, vmulq_f32(v44, v50));
      v53 = *(a2 + 100);
      v54 = vmulq_f32(v53, v52);
      v55 = vmulq_f32(v53, vsubq_f32(v48, vmulq_f32(v45, v50)));
      v56 = vmulq_f32(v53, vsubq_f32(v49, vmulq_f32(v46, v50)));
      v57 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v60 = vsubq_f32(v57, vandq_s8(v31, vcgtq_f32(v57, v54)));
      v61 = vsubq_f32(v58, vandq_s8(v31, vcgtq_f32(v58, v55)));
      v62 = vsubq_f32(v59, vandq_s8(v31, vcgtq_f32(v59, v56)));
      v63 = *(a2 + 11);
      v64 = *(a2 + 12);
      v65 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v54, v60))), v64);
      v66 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v55, v61))), v64);
      v67 = vmulq_f32(vrecpeq_f32(vsubq_f32(v63, vsubq_f32(v56, v62))), v64);
      v68 = vaddq_f32(vaddq_f32(v51, v62), vmulq_f32(v67, v67));
      v69 = vmaxq_f32(vaddq_f32(vaddq_f32(v51, v60), vmulq_f32(v65, v65)), v30);
      v70 = vmaxq_f32(vaddq_f32(vaddq_f32(v51, v61), vmulq_f32(v66, v66)), v30);
      v71 = *(a2 + 13);
      v72 = *(a2 + 14);
      v73 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v69, v71), v72));
      v74 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v70, v71), v72));
      v75 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v68, v30), v71), v72));
      v76 = *(a2 + 101);
      v77 = *(a2 + 102);
      v78 = vaddq_f32(v76, vmulq_f32(v77, v73));
      v79 = vmulq_f32(v77, v74);
      v80 = vmulq_f32(v77, v75);
      v81 = *(a2 + 103);
      v82 = vmulq_f32(v33, v81);
      v83 = vmulq_f32(v34, v81);
      v84 = vmulq_f32(v35, v81);
      v85 = *(a2 + 104);
      v86 = vcgtq_f32(v30, vsubq_f32(v33, v85));
      v87 = vcgtq_f32(v30, vsubq_f32(v34, v85));
      v88 = vcgtq_f32(v30, vsubq_f32(v35, v85));
      v89 = vbslq_s8(v16, v27, vbslq_s8(v86, v82, v78));
      v90 = vbslq_s8(v16, v28, vbslq_s8(v87, v83, vaddq_f32(v76, v79)));
      v91 = vbslq_s8(v16, v29, vbslq_s8(v88, v84, vaddq_f32(v76, v80)));
      v92 = (v6 + v10);
      *v92 = vbslq_s8(v16, v27, vmulq_laneq_f32(v89, v89, 3));
      v92[1] = vbslq_s8(v16, v28, vmulq_laneq_f32(v90, v90, 3));
      v92[2] = vbslq_s8(v16, v29, vmulq_laneq_f32(v91, v91, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v93 = *(a2 + 15);
      v94 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v95 = *(a2 + 75);
      v96 = *(a2 + 5);
      v97 = vminq_f32(vmaxq_f32(v94, v95), v96);
      v98 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(v97));
      v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
      v100 = vmulq_f32(*(a2 + 100), vsubq_f32(vaddq_f32(*(a2 + 8), v99), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v98, v99))), *(a2 + 9))));
      v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
      v102 = vsubq_f32(v101, vandq_s8(v96, vcgtq_f32(v101, v100)));
      v103 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v100, v102))), *(a2 + 12));
      v104 = vbslq_s8(v93, v94, vbslq_s8(vcgtq_f32(v95, vsubq_f32(v97, *(a2 + 104))), vmulq_f32(v97, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v102), vmulq_f32(v103, v103)), v95), *(a2 + 13)), *(a2 + 14)))))));
      *(v6 + 16 * v11++) = vbslq_s8(v93, v94, vmulq_laneq_f32(v104, v104, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v33 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v34 = *(a2 + 100);
      v35 = vcgtq_f32(vandq_s8(v31, vceqq_f32(v34, v30)), v30);
      v36 = vbslq_s8(v35, v31, v32);
      v37 = vbslq_s8(v35, v31, v33);
      v38 = *(a2 + 19);
      v39 = *(a2 + 20);
      v40 = vorrq_s8(vandq_s8(v38, v36), v31);
      v41 = vorrq_s8(vandq_s8(v38, v37), v31);
      v42 = *(a2 + 21);
      v43 = *(a2 + 22);
      v44 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v39, v37)));
      v45 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v36, 0x17uLL)), vandq_s8(v42, vcgtq_f32(v39, v36))), v43);
      v46 = *(a2 + 23);
      v47 = *(a2 + 24);
      v48 = vandq_s8(v31, vcgtq_f32(v40, v46));
      v49 = vandq_s8(v31, vcgtq_f32(v41, v46));
      v50 = vaddq_f32(v45, v48);
      v51 = vaddq_f32(vsubq_f32(v44, v43), v49);
      v52 = vsubq_f32(vsubq_f32(v40, v31), vmulq_f32(vmulq_f32(v47, v48), v40));
      v53 = vsubq_f32(vsubq_f32(v41, v31), vmulq_f32(vmulq_f32(v47, v49), v41));
      v54 = vmulq_f32(v52, v52);
      v55 = *(a2 + 37);
      v56 = *(a2 + 38);
      v57 = vaddq_f32(v55, vmulq_f32(v56, v52));
      v58 = vaddq_f32(v55, vmulq_f32(v56, v53));
      v59 = *(a2 + 39);
      v60 = *(a2 + 40);
      v61 = vaddq_f32(v59, vmulq_f32(v60, v52));
      v62 = vaddq_f32(v59, vmulq_f32(v60, v53));
      v63 = *(a2 + 41);
      v64 = *(a2 + 42);
      v65 = vaddq_f32(v63, vmulq_f32(v64, v52));
      v66 = vaddq_f32(v63, vmulq_f32(v64, v53));
      v67 = vmulq_f32(v53, v53);
      v68 = vaddq_f32(v66, vmulq_f32(v67, vaddq_f32(v58, vmulq_f32(v67, v62))));
      v69 = vmulq_f32(v52, vaddq_f32(v65, vmulq_f32(v54, vaddq_f32(v57, vmulq_f32(v54, v61)))));
      v70 = *(a2 + 43);
      v71 = *(a2 + 44);
      v72 = vaddq_f32(v51, vmulq_f32(v53, vaddq_f32(v70, vmulq_f32(v53, v68))));
      v73 = vmulq_f32(v34, vaddq_f32(v50, vmulq_f32(v52, vaddq_f32(v70, v69))));
      v74 = *(a2 + 29);
      v75 = vmulq_f32(v34, v72);
      v76 = vmaxq_f32(v73, v74);
      v77 = vmaxq_f32(v75, v74);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v31, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v31, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = *(a2 + 47);
      v87 = *(a2 + 48);
      v88 = vaddq_f32(v31, vmulq_f32(v82, vaddq_f32(v87, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v86)), vmulq_f32(vmulq_f32(v82, v82), vaddq_f32(v71, vmulq_f32(v84, v82))))))));
      v89 = vaddq_f32(v31, vmulq_f32(v83, vaddq_f32(v87, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v86, v83)), vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(v71, vmulq_f32(v84, v83))))))));
      v90 = *(a2 + 33);
      v91 = vmulq_f32(v88, vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v80)), 0x17uLL));
      v92 = vmulq_f32(v89, vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v81)), 0x17uLL));
      v93 = *(a2 + 101);
      v94 = *(a2 + 102);
      v95 = vmulq_f32(v94, v92);
      v96 = vaddq_f32(v93, vmulq_f32(v94, v91));
      v97 = *(a2 + 103);
      v98 = vmulq_f32(v32, v97);
      v99 = vmulq_f32(v33, v97);
      v100 = *(a2 + 104);
      v101 = vcgtq_f32(v30, vsubq_f32(v32, v100));
      v102 = vcgtq_f32(v30, vsubq_f32(v33, v100));
      v103 = vbslq_s8(v15, v28, vbslq_s8(v101, v98, v96));
      v104 = vbslq_s8(v15, v29, vbslq_s8(v102, v99, vaddq_f32(v93, v95)));
      v105 = (v6 + v11);
      v105[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v103, v103, 3));
      *v105 = vbslq_s8(v15, v29, vmulq_laneq_f32(v104, v104, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v106 = 16 * v10;
    v107 = *(v7 + v106);
    v108 = *(a2 + 15);
    v109 = vmaxq_f32(vdupq_laneq_s32(v107, 3), *(a2 + 16));
    v110 = vrecpeq_f32(v109);
    v111 = vmulq_f32(v110, vrecpsq_f32(v110, v109));
    v112 = vmulq_f32(v107, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v111, vrecpsq_f32(v111, v109))), *(a2 + 3)));
    v113 = *(a2 + 75);
    v114 = *(a2 + 5);
    v115 = vminq_f32(vmaxq_f32(v112, v113), v114);
    v116 = *(a2 + 100);
    v117 = vbslq_s8(vcgtq_f32(vandq_s8(v114, vceqq_f32(v116, v113)), v113), v114, v115);
    v118 = vorrq_s8(vandq_s8(*(a2 + 19), v117), v114);
    v119 = vandq_s8(v114, vcgtq_f32(v118, *(a2 + 23)));
    v120 = vsubq_f32(vsubq_f32(v118, v114), vmulq_f32(vmulq_f32(*(a2 + 24), v119), v118));
    v121 = vmulq_f32(v120, v120);
    v122 = vmaxq_f32(vmulq_f32(v116, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v117, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v117))), *(a2 + 22)), v119), vmulq_f32(v120, vaddq_f32(*(a2 + 43), vmulq_f32(v120, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v120)), vmulq_f32(v121, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v120)), vmulq_f32(v121, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v120))))))))))), *(a2 + 29));
    v123 = vcvtq_f32_s32(vcvtq_s32_f32(v122));
    v124 = vsubq_f32(v123, vandq_s8(v114, vcgtq_f32(v123, v122)));
    v125 = vsubq_f32(v122, v124);
    v126 = vbslq_s8(v108, v112, vbslq_s8(vcgtq_f32(v113, vsubq_f32(v115, *(a2 + 104))), vmulq_f32(v115, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vmulq_f32(vaddq_f32(v114, vmulq_f32(v125, vaddq_f32(*(a2 + 48), vmulq_f32(v125, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v125)), vmulq_f32(vmulq_f32(v125, v125), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v125)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v124)), 0x17uLL))))));
    *(v6 + v106) = vbslq_s8(v108, v112, vmulq_laneq_f32(v126, v126, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 75);
      v28 = *(a2 + 5);
      v29 = vminq_f32(vmaxq_f32(v25, v27), v28);
      v30 = vminq_f32(vmaxq_f32(v26, v27), v28);
      v31 = *(a2 + 19);
      v32 = *(a2 + 20);
      v33 = vorrq_s8(vandq_s8(v31, v29), v28);
      v34 = *(a2 + 21);
      v35 = *(a2 + 22);
      v36 = vorrq_s8(vandq_s8(v31, v30), v28);
      v37 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v32, v29))), v35);
      v38 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v32, v30))), v35);
      v39 = *(a2 + 23);
      v40 = *(a2 + 24);
      v41 = vandq_s8(v28, vcgtq_f32(v33, v39));
      v42 = vandq_s8(v28, vcgtq_f32(v36, v39));
      v43 = vaddq_f32(v38, v42);
      v44 = vsubq_f32(vsubq_f32(v33, v28), vmulq_f32(vmulq_f32(v40, v41), v33));
      v45 = vsubq_f32(vsubq_f32(v36, v28), vmulq_f32(vmulq_f32(v40, v42), v36));
      v46 = *(a2 + 25);
      v47 = *(a2 + 26);
      v48 = *(a2 + 27);
      v49 = *(a2 + 28);
      v50 = vaddq_f32(v43, vmulq_f32(v45, vaddq_f32(vaddq_f32(v48, vmulq_f32(v45, v49)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v46, vmulq_f32(v47, v45))))));
      v51 = *(a2 + 100);
      v52 = vmulq_f32(v51, vaddq_f32(vaddq_f32(v37, v41), vmulq_f32(v44, vaddq_f32(vaddq_f32(v48, vmulq_f32(v44, v49)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v46, vmulq_f32(v47, v44)))))));
      v53 = vmulq_f32(v51, v50);
      v54 = *(a2 + 29);
      v55 = *(a2 + 30);
      v56 = vmaxq_f32(v52, v54);
      v57 = vmaxq_f32(v53, v54);
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v60 = vsubq_f32(v58, vandq_s8(v28, vcgtq_f32(v58, v56)));
      v61 = vsubq_f32(v59, vandq_s8(v28, vcgtq_f32(v59, v57)));
      v62 = vsubq_f32(v56, v60);
      v63 = vsubq_f32(v57, v61);
      v64 = *(a2 + 31);
      v65 = *(a2 + 32);
      v66 = vaddq_f32(v28, vmulq_f32(v62, vaddq_f32(v65, vmulq_f32(v62, vaddq_f32(v55, vmulq_f32(v64, v62))))));
      v67 = vaddq_f32(v28, vmulq_f32(v63, vaddq_f32(v65, vmulq_f32(v63, vaddq_f32(v55, vmulq_f32(v64, v63))))));
      v68 = *(a2 + 33);
      v69 = vmulq_f32(v66, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v60)), 0x17uLL));
      v70 = vmulq_f32(v67, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v61)), 0x17uLL));
      v71 = *(a2 + 101);
      v72 = *(a2 + 102);
      v73 = vmulq_f32(v72, v70);
      v74 = vaddq_f32(v71, vmulq_f32(v72, v69));
      v75 = *(a2 + 103);
      v76 = vmulq_f32(v29, v75);
      v77 = vmulq_f32(v30, v75);
      v78 = *(a2 + 104);
      v79 = vcgtq_f32(v27, vsubq_f32(v29, v78));
      v80 = vcgtq_f32(v27, vsubq_f32(v30, v78));
      v81 = vbslq_s8(v15, v25, vbslq_s8(v79, v76, v74));
      v82 = vbslq_s8(v15, v26, vbslq_s8(v80, v77, vaddq_f32(v71, v73)));
      v83 = (v6 + v11);
      v83[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v81, v81, 3));
      *v83 = vbslq_s8(v15, v26, vmulq_laneq_f32(v82, v82, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v84 = 16 * v10;
    v85 = *(v7 + v84);
    v86 = *(a2 + 15);
    v87 = vmaxq_f32(vdupq_laneq_s32(v85, 3), *(a2 + 16));
    v88 = vmulq_f32(vrecpeq_f32(v87), *(a2 + 18));
    v89 = vmulq_f32(v85, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v88, vrecpsq_f32(v88, v87))), *(a2 + 3)));
    v90 = *(a2 + 75);
    v91 = *(a2 + 5);
    v92 = vminq_f32(vmaxq_f32(v89, v90), v91);
    v93 = vorrq_s8(vandq_s8(*(a2 + 19), v92), v91);
    v94 = vandq_s8(v91, vcgtq_f32(v93, *(a2 + 23)));
    v95 = vsubq_f32(vsubq_f32(v93, v91), vmulq_f32(vmulq_f32(*(a2 + 24), v94), v93));
    v96 = vmaxq_f32(vmulq_f32(*(a2 + 100), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v92, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v92))), *(a2 + 22)), v94), vmulq_f32(v95, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v95, *(a2 + 28))), vmulq_f32(vmulq_f32(v95, v95), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v95))))))), *(a2 + 29));
    v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
    v98 = vsubq_f32(v97, vandq_s8(v91, vcgtq_f32(v97, v96)));
    v99 = vsubq_f32(v96, v98);
    v100 = vbslq_s8(v86, v89, vbslq_s8(vcgtq_f32(v90, vsubq_f32(v92, *(a2 + 104))), vmulq_f32(v92, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vmulq_f32(vaddq_f32(v91, vmulq_f32(v99, vaddq_f32(*(a2 + 32), vmulq_f32(v99, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v99)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v98)), 0x17uLL))))));
    *(v6 + v84) = vbslq_s8(v86, v89, vmulq_laneq_f32(v100, v100, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = *(a2 + 105);
      v27 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v28 = vmaxq_f32(v27, v26);
      v29 = vbslq_s8(v15, v25, vmaxq_f32(v25, v26));
      v30 = vbslq_s8(v15, v27, v28);
      v31 = *(a2 + 75);
      v32 = *(a2 + 5);
      v34 = *(a2 + 33);
      v33 = *(a2 + 34);
      v35 = vmulq_f32(v29, vbslq_s8(vcgtq_f32(v31, v29), v33, v32));
      v36 = vmulq_f32(v30, vbslq_s8(vcgtq_f32(v31, v30), v33, v32));
      v37 = *(a2 + 106);
      v38 = vminq_f32(v35, v37);
      v39 = *(a2 + 19);
      v40 = *(a2 + 20);
      v41 = vminq_f32(v36, v37);
      v42 = vorrq_s8(vandq_s8(v39, v38), v32);
      v43 = vorrq_s8(vandq_s8(v39, v41), v32);
      v44 = *(a2 + 21);
      v45 = *(a2 + 22);
      v46 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v41, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v40, v41)));
      v47 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v40, v38))), v45);
      v48 = *(a2 + 23);
      v49 = *(a2 + 24);
      v50 = vandq_s8(v32, vcgtq_f32(v42, v48));
      v51 = vandq_s8(v32, vcgtq_f32(v43, v48));
      v52 = vaddq_f32(v47, v50);
      v53 = vaddq_f32(vsubq_f32(v46, v45), v51);
      v54 = vsubq_f32(vsubq_f32(v42, v32), vmulq_f32(vmulq_f32(v49, v50), v42));
      v55 = vsubq_f32(vsubq_f32(v43, v32), vmulq_f32(vmulq_f32(v49, v51), v43));
      v56 = *(a2 + 25);
      v57 = *(a2 + 26);
      v58 = vaddq_f32(v56, vmulq_f32(v57, v54));
      v59 = vaddq_f32(v56, vmulq_f32(v57, v55));
      v60 = *(a2 + 27);
      v61 = *(a2 + 28);
      v62 = vaddq_f32(v53, vmulq_f32(v55, vaddq_f32(vaddq_f32(v60, vmulq_f32(v55, v61)), vmulq_f32(vmulq_f32(v55, v55), v59))));
      v63 = *(a2 + 100);
      v64 = vmulq_f32(v63, vaddq_f32(v52, vmulq_f32(v54, vaddq_f32(vaddq_f32(v60, vmulq_f32(v54, v61)), vmulq_f32(vmulq_f32(v54, v54), v58)))));
      v65 = vmulq_f32(v63, v62);
      v66 = *(a2 + 29);
      v67 = *(a2 + 30);
      v68 = vmaxq_f32(v64, v66);
      v69 = vmaxq_f32(v65, v66);
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
      v71 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
      v72 = vsubq_f32(v70, vandq_s8(v32, vcgtq_f32(v70, v68)));
      v73 = vsubq_f32(v71, vandq_s8(v32, vcgtq_f32(v71, v69)));
      v74 = vsubq_f32(v68, v72);
      v75 = vsubq_f32(v69, v73);
      v76 = *(a2 + 31);
      v77 = *(a2 + 32);
      v78 = vaddq_f32(v32, vmulq_f32(v74, vaddq_f32(v77, vmulq_f32(v74, vaddq_f32(v67, vmulq_f32(v76, v74))))));
      v79 = vaddq_f32(v32, vmulq_f32(v75, vaddq_f32(v77, vmulq_f32(v75, vaddq_f32(v67, vmulq_f32(v76, v75))))));
      v80 = vmulq_f32(v78, vshlq_n_s32(vaddq_s32(v34, vcvtq_s32_f32(v72)), 0x17uLL));
      v81 = vmulq_f32(v79, vshlq_n_s32(vaddq_s32(v34, vcvtq_s32_f32(v73)), 0x17uLL));
      v82 = *(a2 + 101);
      v83 = *(a2 + 102);
      v84 = vaddq_f32(v82, vmulq_f32(v83, v80));
      v85 = vmulq_f32(v83, v81);
      v86 = *(a2 + 103);
      v87 = vmulq_f32(v35, v86);
      v88 = *(a2 + 104);
      v89 = vcgtq_f32(v31, vsubq_f32(v35, v88));
      v90 = vbslq_s8(vcgtq_f32(v31, vsubq_f32(v36, v88)), vmulq_f32(v36, v86), vaddq_f32(v82, v85));
      v91 = *(a2 + 36);
      v92 = vbslq_s8(v15, v25, veorq_s8(vandq_s8(v91, v29), vbslq_s8(v89, v87, v84)));
      v93 = vbslq_s8(v15, v27, veorq_s8(vandq_s8(v91, v30), v90));
      v94 = (v6 + v11);
      v94[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v92, v92, 3));
      *v94 = vbslq_s8(v15, v27, vmulq_laneq_f32(v93, v93, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v95 = 16 * v10;
    v96 = *(v7 + v95);
    v97 = *(a2 + 15);
    v98 = vmaxq_f32(vdupq_laneq_s32(v96, 3), *(a2 + 16));
    v99 = vmulq_f32(vrecpeq_f32(v98), *(a2 + 18));
    v100 = vmulq_f32(v96, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v99, vrecpsq_f32(v99, v98))), *(a2 + 3)));
    v101 = vbslq_s8(v97, v100, vmaxq_f32(v100, *(a2 + 105)));
    v102 = *(a2 + 75);
    v103 = *(a2 + 5);
    v104 = vmulq_f32(v101, vbslq_s8(vcgtq_f32(v102, v101), *(a2 + 34), v103));
    v105 = vminq_f32(v104, *(a2 + 106));
    v106 = vorrq_s8(vandq_s8(*(a2 + 19), v105), v103);
    v107 = vandq_s8(v103, vcgtq_f32(v106, *(a2 + 23)));
    v108 = vsubq_f32(vsubq_f32(v106, v103), vmulq_f32(vmulq_f32(*(a2 + 24), v107), v106));
    v109 = vmaxq_f32(vmulq_f32(*(a2 + 100), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v105, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v105))), *(a2 + 22)), v107), vmulq_f32(v108, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v108, *(a2 + 28))), vmulq_f32(vmulq_f32(v108, v108), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v108))))))), *(a2 + 29));
    v110 = vcvtq_f32_s32(vcvtq_s32_f32(v109));
    v111 = vsubq_f32(v110, vandq_s8(v103, vcgtq_f32(v110, v109)));
    v112 = vsubq_f32(v109, v111);
    v113 = vbslq_s8(v97, v100, veorq_s8(vandq_s8(*(a2 + 36), v101), vbslq_s8(vcgtq_f32(v102, vsubq_f32(v104, *(a2 + 104))), vmulq_f32(v104, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vmulq_f32(vaddq_f32(v103, vmulq_f32(v112, vaddq_f32(*(a2 + 32), vmulq_f32(v112, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v112)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v111)), 0x17uLL)))))));
    *(v6 + v95) = vbslq_s8(v97, v100, vmulq_laneq_f32(v113, v113, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 105);
      v31 = vmaxq_f32(v29, v30);
      v32 = vbslq_s8(v15, v28, vmaxq_f32(v28, v30));
      v33 = vbslq_s8(v15, v29, v31);
      v34 = *(a2 + 75);
      v35 = *(a2 + 5);
      v36 = *(a2 + 33);
      v37 = *(a2 + 34);
      v38 = vmulq_f32(v32, vbslq_s8(vcgtq_f32(v34, v32), v37, v35));
      v39 = vmulq_f32(v33, vbslq_s8(vcgtq_f32(v34, v33), v37, v35));
      v40 = *(a2 + 106);
      v41 = *(a2 + 100);
      v42 = vcgtq_f32(vandq_s8(v35, vceqq_f32(v41, v34)), v34);
      v43 = vbslq_s8(v42, v35, vminq_f32(v38, v40));
      v44 = vbslq_s8(v42, v35, vminq_f32(v39, v40));
      v45 = *(a2 + 19);
      v46 = *(a2 + 20);
      v47 = vorrq_s8(vandq_s8(v45, v43), v35);
      v48 = *(a2 + 21);
      v49 = *(a2 + 22);
      v50 = vorrq_s8(vandq_s8(v45, v44), v35);
      v51 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v44, 0x17uLL)), vandq_s8(v48, vcgtq_f32(v46, v44)));
      v52 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v43, 0x17uLL)), vandq_s8(v48, vcgtq_f32(v46, v43))), v49);
      v53 = *(a2 + 23);
      v54 = *(a2 + 24);
      v55 = vandq_s8(v35, vcgtq_f32(v47, v53));
      v56 = vandq_s8(v35, vcgtq_f32(v50, v53));
      v57 = vaddq_f32(v52, v55);
      v58 = vmulq_f32(v54, v55);
      v59 = vmulq_f32(vmulq_f32(v54, v56), v50);
      v60 = vaddq_f32(vsubq_f32(v51, v49), v56);
      v61 = vsubq_f32(v50, v35);
      v62 = vsubq_f32(vsubq_f32(v47, v35), vmulq_f32(v58, v47));
      v63 = vsubq_f32(v61, v59);
      v64 = *(a2 + 38);
      v65 = *(a2 + 39);
      v66 = vmulq_f32(v62, v62);
      v67 = vmulq_f32(v64, v62);
      v68 = vmulq_f32(v64, v63);
      v69 = *(a2 + 36);
      v70 = *(a2 + 37);
      v71 = *(a2 + 40);
      v72 = *(a2 + 41);
      v73 = vaddq_f32(v70, v67);
      v74 = vaddq_f32(v65, vmulq_f32(v71, v62));
      v75 = vaddq_f32(v65, vmulq_f32(v71, v63));
      v76 = vaddq_f32(v70, v68);
      v77 = *(a2 + 42);
      v78 = *(a2 + 43);
      v79 = vaddq_f32(v72, vmulq_f32(v77, v62));
      v80 = vaddq_f32(v72, vmulq_f32(v77, v63));
      v81 = vmulq_f32(v63, v63);
      v82 = vmulq_f32(v41, vaddq_f32(v57, vmulq_f32(v62, vaddq_f32(v78, vmulq_f32(v62, vaddq_f32(v79, vmulq_f32(v66, vaddq_f32(v73, vmulq_f32(v66, v74)))))))));
      v83 = *(a2 + 29);
      v84 = vmaxq_f32(v82, v83);
      v85 = vmaxq_f32(vmulq_f32(v41, vaddq_f32(v60, vmulq_f32(v63, vaddq_f32(v78, vmulq_f32(v63, vaddq_f32(v80, vmulq_f32(v81, vaddq_f32(v76, vmulq_f32(v81, v75))))))))), v83);
      v86 = vcvtq_f32_s32(vcvtq_s32_f32(v84));
      v87 = vcvtq_f32_s32(vcvtq_s32_f32(v85));
      v88 = vsubq_f32(v86, vandq_s8(v35, vcgtq_f32(v86, v84)));
      v89 = vsubq_f32(v87, vandq_s8(v35, vcgtq_f32(v87, v85)));
      v90 = vsubq_f32(v84, v88);
      v91 = vsubq_f32(v85, v89);
      v92 = *(a2 + 44);
      v93 = *(a2 + 45);
      v94 = vaddq_f32(v92, vmulq_f32(v93, v90));
      v95 = vaddq_f32(v92, vmulq_f32(v93, v91));
      v96 = *(a2 + 46);
      v97 = *(a2 + 47);
      v98 = vaddq_f32(vaddq_f32(v96, vmulq_f32(v97, v91)), vmulq_f32(vmulq_f32(v91, v91), v95));
      v99 = *(a2 + 48);
      v100 = vaddq_f32(v35, vmulq_f32(v90, vaddq_f32(v99, vmulq_f32(v90, vaddq_f32(vaddq_f32(v96, vmulq_f32(v90, v97)), vmulq_f32(vmulq_f32(v90, v90), v94))))));
      v101 = vaddq_f32(v35, vmulq_f32(v91, vaddq_f32(v99, vmulq_f32(v91, v98))));
      v102 = vmulq_f32(v100, vshlq_n_s32(vaddq_s32(v36, vcvtq_s32_f32(v88)), 0x17uLL));
      v103 = vmulq_f32(v101, vshlq_n_s32(vaddq_s32(v36, vcvtq_s32_f32(v89)), 0x17uLL));
      v104 = *(a2 + 101);
      v105 = *(a2 + 102);
      v106 = vaddq_f32(v104, vmulq_f32(v105, v102));
      v107 = vmulq_f32(v105, v103);
      v108 = *(a2 + 103);
      v109 = vaddq_f32(v104, v107);
      v110 = *(a2 + 104);
      v111 = vbslq_s8(v15, v28, veorq_s8(vandq_s8(v69, v32), vbslq_s8(vcgtq_f32(v34, vsubq_f32(v38, v110)), vmulq_f32(v38, v108), v106)));
      v112 = vbslq_s8(v15, v29, veorq_s8(vandq_s8(v69, v33), vbslq_s8(vcgtq_f32(v34, vsubq_f32(v39, v110)), vmulq_f32(v39, v108), v109)));
      v113 = (v6 + v11);
      v113[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v111, v111, 3));
      *v113 = vbslq_s8(v15, v29, vmulq_laneq_f32(v112, v112, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v114 = 16 * v10;
    v115 = *(v7 + v114);
    v116 = *(a2 + 15);
    v117 = vmaxq_f32(vdupq_laneq_s32(v115, 3), *(a2 + 16));
    v118 = vrecpeq_f32(v117);
    v119 = vmulq_f32(v118, vrecpsq_f32(v118, v117));
    v120 = vmulq_f32(v115, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v119, vrecpsq_f32(v119, v117))), *(a2 + 3)));
    v121 = vbslq_s8(v116, v120, vmaxq_f32(v120, *(a2 + 105)));
    v122 = *(a2 + 75);
    v123 = *(a2 + 5);
    v124 = vmulq_f32(v121, vbslq_s8(vcgtq_f32(v122, v121), *(a2 + 34), v123));
    v125 = *(a2 + 100);
    v126 = vbslq_s8(vcgtq_f32(vandq_s8(v123, vceqq_f32(v125, v122)), v122), v123, vminq_f32(v124, *(a2 + 106)));
    v127 = vorrq_s8(vandq_s8(*(a2 + 19), v126), v123);
    v128 = vandq_s8(v123, vcgtq_f32(v127, *(a2 + 23)));
    v129 = vsubq_f32(vsubq_f32(v127, v123), vmulq_f32(vmulq_f32(*(a2 + 24), v128), v127));
    v130 = vmulq_f32(v129, v129);
    v131 = vmaxq_f32(vmulq_f32(v125, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v126, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v126))), *(a2 + 22)), v128), vmulq_f32(v129, vaddq_f32(*(a2 + 43), vmulq_f32(v129, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v129)), vmulq_f32(v130, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v129)), vmulq_f32(v130, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v129))))))))))), *(a2 + 29));
    v132 = vcvtq_f32_s32(vcvtq_s32_f32(v131));
    v133 = vsubq_f32(v132, vandq_s8(v123, vcgtq_f32(v132, v131)));
    v134 = vsubq_f32(v131, v133);
    v135 = vbslq_s8(v116, v120, veorq_s8(vandq_s8(*(a2 + 36), v121), vbslq_s8(vcgtq_f32(v122, vsubq_f32(v124, *(a2 + 104))), vmulq_f32(v124, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vmulq_f32(vaddq_f32(v123, vmulq_f32(v134, vaddq_f32(*(a2 + 48), vmulq_f32(v134, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v134)), vmulq_f32(vmulq_f32(v134, v134), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v134)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v133)), 0x17uLL)))))));
    *(v6 + v114) = vbslq_s8(v116, v120, vmulq_laneq_f32(v135, v135, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = *(a1 + 6);
    v8 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v67 = 0;
        v68 = 16 * v8;
        v69 = 16 * v7;
        v70 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v71 = 0;
          do
          {
            v72 = *(a2 + 15);
            v73 = vmulq_f32(v5[v71 / 0x10], vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v5[v71 / 0x10], 3), *(a2 + 16)))), *(a2 + 3)));
            v74 = vminq_f32(vmaxq_f32(v73, *(a2 + 75)), *(a2 + 5));
            v75 = vmulq_f32(v74, *(a2 + 107));
            v76 = vaddq_f32(v75, vmulq_f32(v74, vsubq_f32(v74, v75)));
            v77 = vbslq_s8(v72, v73, vmulq_f32(v76, v76));
            v6[v71 / 0x10] = vbslq_s8(v72, v73, vmulq_laneq_f32(v77, v77, 3));
            v71 += 16;
          }

          while (v70 != v71);
          ++v67;
          v5 = (v5 + v68);
          v6 = (v6 + v69);
        }

        while (v67 != v3);
      }
    }

    else
    {
      v9 = 0;
      v10 = 16 * v7;
      v11 = 16 * v8;
      v12 = v5 + 4;
      v13 = v6 + 4;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = 2;
        do
        {
          v18 = v5[v17 - 2];
          v19 = v5[v17 - 1];
          v20 = v5[v17];
          v21 = v5[v17 + 1];
          v22 = *(a2 + 15);
          v23 = *(a2 + 16);
          v24 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v18, 3), v23));
          v25 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v19, 3), v23));
          v26 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v20, 3), v23));
          v27 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v21, 3), v23));
          v28 = *(a2 + 17);
          v29 = vandq_s8(v28, v24);
          v30 = vandq_s8(v28, v25);
          v31 = vandq_s8(v28, v26);
          v32 = vandq_s8(v28, v27);
          v33 = *(a2 + 3);
          v34 = vmulq_f32(v18, vorrq_s8(v29, v33));
          v35 = vmulq_f32(v19, vorrq_s8(v30, v33));
          v36 = vmulq_f32(v20, vorrq_s8(v31, v33));
          v37 = *(a2 + 75);
          v38 = vmulq_f32(v21, vorrq_s8(v32, v33));
          v39 = *(a2 + 5);
          v40 = v16;
          v41 = vminq_f32(vmaxq_f32(v34, v37), v39);
          v42 = vminq_f32(vmaxq_f32(v35, v37), v39);
          v43 = vminq_f32(vmaxq_f32(v36, v37), v39);
          v44 = vminq_f32(vmaxq_f32(v38, v37), v39);
          v45 = *(a2 + 107);
          v46 = vmulq_f32(v41, v45);
          v47 = vmulq_f32(v42, v45);
          v48 = vmulq_f32(v43, v45);
          v49 = vmulq_f32(v44, v45);
          v50 = vaddq_f32(v46, vmulq_f32(v41, vsubq_f32(v41, v46)));
          v51 = vaddq_f32(v47, vmulq_f32(v42, vsubq_f32(v42, v47)));
          v52 = vaddq_f32(v48, vmulq_f32(v43, vsubq_f32(v43, v48)));
          v53 = vaddq_f32(v49, vmulq_f32(v44, vsubq_f32(v44, v49)));
          v54 = vbslq_s8(v22, v34, vmulq_f32(v50, v50));
          v55 = vbslq_s8(v22, v35, vmulq_f32(v51, v51));
          v56 = vbslq_s8(v22, v36, vmulq_f32(v52, v52));
          v57 = vbslq_s8(v22, v38, vmulq_f32(v53, v53));
          v58 = v15;
          v59 = &v6[v17];
          v14 += 4;
          v59[-2] = vbslq_s8(v22, v34, vmulq_laneq_f32(v54, v54, 3));
          v59[-1] = vbslq_s8(v22, v35, vmulq_laneq_f32(v55, v55, 3));
          *v59 = vbslq_s8(v22, v36, vmulq_laneq_f32(v56, v56, 3));
          v59[1] = vbslq_s8(v22, v38, vmulq_laneq_f32(v57, v57, 3));
          v17 += 4;
          v16 += 4;
          v15 = v58 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v60 = *v40++;
            v61 = *(a2 + 15);
            v62 = vmulq_f32(v60, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v60, 3), *(a2 + 16)))), *(a2 + 3)));
            v63 = vminq_f32(vmaxq_f32(v62, *(a2 + 75)), *(a2 + 5));
            v64 = vmulq_f32(v63, *(a2 + 107));
            v65 = vaddq_f32(v64, vmulq_f32(v63, vsubq_f32(v63, v64)));
            v66 = vbslq_s8(v61, v62, vmulq_f32(v65, v65));
            *v58++ = vbslq_s8(v61, v62, vmulq_laneq_f32(v66, v66, 3));
            ++v14;
          }

          while (v14 < v4);
        }

        ++v9;
        v6 = (v6 + v10);
        v5 = (v5 + v11);
        v12 = (v12 + v11);
        v13 = (v13 + v10);
      }

      while (v9 != v3);
    }
  }

  return 0;
}

uint64_t Getinv_srgb_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 3)
    {
      v11 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v6 += v8;
      v7 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 0;
    for (i = v5; i > 2; i -= 3)
    {
      v13 = *(v7 + v10);
      v14 = *(v7 + v10 + 16);
      v15 = *(v7 + v10 + 32);
      v16 = *(a2 + 15);
      v17 = *(a2 + 16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v17));
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v17));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v17));
      v22 = *(a2 + 17);
      v21 = *(a2 + 18);
      v23 = vmulq_f32(v20, v21);
      v24 = vandq_s8(v22, vmulq_f32(v18, v21));
      v25 = vandq_s8(v22, vmulq_f32(v19, v21));
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(v24, v26));
      v28 = vmulq_f32(v14, vorrq_s8(v25, v26));
      v29 = vmulq_f32(v15, vorrq_s8(vandq_s8(v22, v23), v26));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = *(a2 + 6);
      v33 = vminq_f32(vmaxq_f32(v27, v30), v31);
      v34 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v35 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v36 = *(a2 + 108);
      v37 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v33, v36)));
      v38 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v34, v36)));
      v39 = vmulq_f32(v32, vcvtq_f32_s32(vaddq_f32(v35, v36)));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v42 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
      v43 = *(a2 + 7);
      v44 = *(a2 + 8);
      v45 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v37, v40), v43));
      v46 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v38, v41), v43));
      v47 = vrsqrteq_f32(vaddq_f32(v43, vsubq_f32(v39, v42)));
      v48 = vaddq_f32(v44, v40);
      v49 = vaddq_f32(v44, v41);
      v50 = vaddq_f32(v44, v42);
      v51 = *(a2 + 9);
      v52 = *(a2 + 10);
      v53 = vsubq_f32(v48, vmulq_f32(v45, v51));
      v54 = vsubq_f32(v49, vmulq_f32(v46, v51));
      v55 = *(a2 + 109);
      v56 = vmulq_f32(v55, v53);
      v57 = vmulq_f32(v55, v54);
      v58 = vmulq_f32(v55, vsubq_f32(v50, vmulq_f32(v47, v51)));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v60 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v62 = vsubq_f32(v59, vandq_s8(v31, vcgtq_f32(v59, v56)));
      v63 = vsubq_f32(v60, vandq_s8(v31, vcgtq_f32(v60, v57)));
      v64 = vsubq_f32(v61, vandq_s8(v31, vcgtq_f32(v61, v58)));
      v65 = *(a2 + 11);
      v66 = *(a2 + 12);
      v67 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, vsubq_f32(v56, v62))), v66);
      v68 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, vsubq_f32(v57, v63))), v66);
      v69 = vmulq_f32(vrecpeq_f32(vsubq_f32(v65, vsubq_f32(v58, v64))), v66);
      v70 = vaddq_f32(vaddq_f32(v52, v64), vmulq_f32(v69, v69));
      v71 = vmaxq_f32(vaddq_f32(vaddq_f32(v52, v62), vmulq_f32(v67, v67)), v30);
      v72 = vmaxq_f32(vaddq_f32(vaddq_f32(v52, v63), vmulq_f32(v68, v68)), v30);
      v73 = *(a2 + 13);
      v74 = *(a2 + 14);
      v75 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v71, v73), v74));
      v76 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v72, v73), v74));
      v77 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v70, v30), v73), v74));
      v78 = *(a2 + 110);
      v79 = *(a2 + 111);
      v80 = vmulq_f32(v33, v79);
      v81 = vmulq_f32(v34, v79);
      v82 = vmulq_f32(v35, v79);
      v83 = *(a2 + 112);
      v84 = vcgtq_f32(v30, vsubq_f32(v33, v83));
      v85 = vcgtq_f32(v30, vsubq_f32(v34, v83));
      v86 = vcgtq_f32(v30, vsubq_f32(v35, v83));
      v87 = vbslq_s8(v16, v27, vbslq_s8(v84, v80, vmulq_f32(v78, v75)));
      v88 = vbslq_s8(v16, v28, vbslq_s8(v85, v81, vmulq_f32(v78, v76)));
      v89 = vbslq_s8(v16, v29, vbslq_s8(v86, v82, vmulq_f32(v78, v77)));
      v90 = (v6 + v10);
      *v90 = vbslq_s8(v16, v27, vmulq_laneq_f32(v87, v87, 3));
      v90[1] = vbslq_s8(v16, v28, vmulq_laneq_f32(v88, v88, 3));
      v90[2] = vbslq_s8(v16, v29, vmulq_laneq_f32(v89, v89, 3));
      v11 += 3;
      v10 += 48;
    }

    if (v11 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v91 = *(a2 + 15);
      v92 = vmulq_f32(*(v7 + 16 * v11), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v11), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v93 = *(a2 + 75);
      v94 = *(a2 + 5);
      v95 = vminq_f32(vmaxq_f32(v92, v93), v94);
      v96 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v95, *(a2 + 108))));
      v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
      v98 = vmulq_f32(*(a2 + 109), vsubq_f32(vaddq_f32(*(a2 + 8), v97), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v96, v97))), *(a2 + 9))));
      v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
      v100 = vsubq_f32(v99, vandq_s8(v94, vcgtq_f32(v99, v98)));
      v101 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v98, v100))), *(a2 + 12));
      v102 = vbslq_s8(v91, v92, vbslq_s8(vcgtq_f32(v93, vsubq_f32(v95, *(a2 + 112))), vmulq_f32(v95, *(a2 + 111)), vmulq_f32(*(a2 + 110), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v100), vmulq_f32(v101, v101)), v93), *(a2 + 13)), *(a2 + 14))))));
      *(v6 + 16 * v11++) = vbslq_s8(v91, v92, vmulq_laneq_f32(v102, v102, 3));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 75);
      v31 = *(a2 + 5);
      v32 = vminq_f32(vmaxq_f32(v28, v30), v31);
      v33 = vminq_f32(vmaxq_f32(v29, v30), v31);
      v34 = *(a2 + 108);
      v35 = *(a2 + 109);
      v36 = vcgtq_f32(vandq_s8(v31, vceqq_f32(v35, v30)), v30);
      v37 = vbslq_s8(v36, v31, vaddq_f32(v32, v34));
      v38 = vbslq_s8(v36, v31, vaddq_f32(v33, v34));
      v39 = *(a2 + 19);
      v40 = *(a2 + 20);
      v41 = vorrq_s8(vandq_s8(v39, v37), v31);
      v42 = vorrq_s8(vandq_s8(v39, v38), v31);
      v43 = *(a2 + 21);
      v44 = *(a2 + 22);
      v45 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v40, v37)));
      v46 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v40, v38)));
      v47 = *(a2 + 23);
      v48 = *(a2 + 24);
      v49 = vandq_s8(v31, vcgtq_f32(v41, v47));
      v50 = vandq_s8(v31, vcgtq_f32(v42, v47));
      v51 = vaddq_f32(vsubq_f32(v45, v44), v49);
      v52 = vmulq_f32(v48, v49);
      v53 = vmulq_f32(vmulq_f32(v48, v50), v42);
      v54 = vaddq_f32(vsubq_f32(v46, v44), v50);
      v55 = vsubq_f32(vsubq_f32(v41, v31), vmulq_f32(v52, v41));
      v56 = vsubq_f32(vsubq_f32(v42, v31), v53);
      v57 = vmulq_f32(v55, v55);
      v58 = vmulq_f32(v56, v56);
      v59 = *(a2 + 37);
      v60 = *(a2 + 38);
      v61 = *(a2 + 39);
      v62 = *(a2 + 40);
      v63 = vaddq_f32(v59, vmulq_f32(v60, v55));
      v64 = vaddq_f32(v61, vmulq_f32(v62, v55));
      v65 = vaddq_f32(v61, vmulq_f32(v62, v56));
      v66 = vaddq_f32(v59, vmulq_f32(v60, v56));
      v67 = *(a2 + 41);
      v68 = *(a2 + 42);
      v69 = vaddq_f32(vaddq_f32(v67, vmulq_f32(v68, v56)), vmulq_f32(v58, vaddq_f32(v66, vmulq_f32(v58, v65))));
      v70 = vmulq_f32(v55, vaddq_f32(vaddq_f32(v67, vmulq_f32(v68, v55)), vmulq_f32(v57, vaddq_f32(v63, vmulq_f32(v57, v64)))));
      v71 = *(a2 + 43);
      v72 = *(a2 + 44);
      v73 = vmulq_f32(v35, vaddq_f32(v51, vmulq_f32(v55, vaddq_f32(v71, v70))));
      v74 = vmulq_f32(v35, vaddq_f32(v54, vmulq_f32(v56, vaddq_f32(v71, vmulq_f32(v56, v69)))));
      v75 = *(a2 + 29);
      v76 = vmaxq_f32(v73, v75);
      v77 = vmaxq_f32(v74, v75);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v31, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v31, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = vaddq_f32(v72, vmulq_f32(v84, v82));
      v87 = vaddq_f32(v72, vmulq_f32(v84, v83));
      v88 = *(a2 + 47);
      v89 = *(a2 + 48);
      v90 = vaddq_f32(v31, vmulq_f32(v82, vaddq_f32(v89, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v88)), vmulq_f32(vmulq_f32(v82, v82), v86))))));
      v91 = *(a2 + 33);
      v92 = vaddq_f32(v31, vmulq_f32(v83, vaddq_f32(v89, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v88, v83)), vmulq_f32(vmulq_f32(v83, v83), v87))))));
      v93 = vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v80)), 0x17uLL);
      v94 = vmulq_f32(v92, vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v81)), 0x17uLL));
      v95 = *(a2 + 110);
      v96 = vmulq_f32(v95, vmulq_f32(v90, v93));
      v97 = *(a2 + 111);
      v98 = vmulq_f32(v32, v97);
      v99 = vmulq_f32(v33, v97);
      v100 = *(a2 + 112);
      v101 = vcgtq_f32(v30, vsubq_f32(v32, v100));
      v102 = vcgtq_f32(v30, vsubq_f32(v33, v100));
      v103 = vbslq_s8(v15, v28, vbslq_s8(v101, v98, v96));
      v104 = vbslq_s8(v15, v29, vbslq_s8(v102, v99, vmulq_f32(v95, v94)));
      v105 = (v6 + v11);
      v105[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v103, v103, 3));
      *v105 = vbslq_s8(v15, v29, vmulq_laneq_f32(v104, v104, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v106 = 16 * v10;
    v107 = *(v7 + v106);
    v108 = *(a2 + 15);
    v109 = vmaxq_f32(vdupq_laneq_s32(v107, 3), *(a2 + 16));
    v110 = vrecpeq_f32(v109);
    v111 = vmulq_f32(v110, vrecpsq_f32(v110, v109));
    v112 = vmulq_f32(v107, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v111, vrecpsq_f32(v111, v109))), *(a2 + 3)));
    v113 = *(a2 + 75);
    v114 = *(a2 + 5);
    v115 = vminq_f32(vmaxq_f32(v112, v113), v114);
    v116 = *(a2 + 109);
    v117 = vbslq_s8(vcgtq_f32(vandq_s8(v114, vceqq_f32(v116, v113)), v113), v114, vaddq_f32(v115, *(a2 + 108)));
    v118 = vorrq_s8(vandq_s8(*(a2 + 19), v117), v114);
    v119 = vandq_s8(v114, vcgtq_f32(v118, *(a2 + 23)));
    v120 = vsubq_f32(vsubq_f32(v118, v114), vmulq_f32(vmulq_f32(*(a2 + 24), v119), v118));
    v121 = vmulq_f32(v120, v120);
    v122 = vmaxq_f32(vmulq_f32(v116, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v117, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v117))), *(a2 + 22)), v119), vmulq_f32(v120, vaddq_f32(*(a2 + 43), vmulq_f32(v120, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v120)), vmulq_f32(v121, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v120)), vmulq_f32(v121, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v120))))))))))), *(a2 + 29));
    v123 = vcvtq_f32_s32(vcvtq_s32_f32(v122));
    v124 = vsubq_f32(v123, vandq_s8(v114, vcgtq_f32(v123, v122)));
    v125 = vsubq_f32(v122, v124);
    v126 = vbslq_s8(v108, v112, vbslq_s8(vcgtq_f32(v113, vsubq_f32(v115, *(a2 + 112))), vmulq_f32(v115, *(a2 + 111)), vmulq_f32(*(a2 + 110), vmulq_f32(vaddq_f32(v114, vmulq_f32(v125, vaddq_f32(*(a2 + 48), vmulq_f32(v125, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v125)), vmulq_f32(vmulq_f32(v125, v125), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v125)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v124)), 0x17uLL)))));
    *(v6 + v106) = vbslq_s8(v108, v112, vmulq_laneq_f32(v126, v126, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 75);
      v28 = *(a2 + 5);
      v29 = vminq_f32(vmaxq_f32(v25, v27), v28);
      v30 = vminq_f32(vmaxq_f32(v26, v27), v28);
      v31 = *(a2 + 108);
      v32 = vaddq_f32(v29, v31);
      v33 = vaddq_f32(v30, v31);
      v34 = *(a2 + 19);
      v35 = *(a2 + 20);
      v36 = vorrq_s8(vandq_s8(v34, v32), v28);
      v37 = vorrq_s8(vandq_s8(v34, v33), v28);
      v38 = *(a2 + 21);
      v39 = *(a2 + 22);
      v40 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v33)));
      v41 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v32))), v39);
      v42 = *(a2 + 23);
      v43 = *(a2 + 24);
      v44 = vsubq_f32(v40, v39);
      v45 = vandq_s8(v28, vcgtq_f32(v36, v42));
      v46 = vandq_s8(v28, vcgtq_f32(v37, v42));
      v47 = vaddq_f32(v41, v45);
      v48 = vsubq_f32(vsubq_f32(v36, v28), vmulq_f32(vmulq_f32(v43, v45), v36));
      v49 = vsubq_f32(vsubq_f32(v37, v28), vmulq_f32(vmulq_f32(v43, v46), v37));
      v50 = *(a2 + 25);
      v51 = *(a2 + 26);
      v52 = vaddq_f32(v50, vmulq_f32(v51, v48));
      v53 = vaddq_f32(v50, vmulq_f32(v51, v49));
      v54 = *(a2 + 27);
      v55 = *(a2 + 28);
      v56 = vaddq_f32(vaddq_f32(v44, v46), vmulq_f32(v49, vaddq_f32(vaddq_f32(v54, vmulq_f32(v49, v55)), vmulq_f32(vmulq_f32(v49, v49), v53))));
      v57 = *(a2 + 109);
      v58 = vmulq_f32(v57, vaddq_f32(v47, vmulq_f32(v48, vaddq_f32(vaddq_f32(v54, vmulq_f32(v48, v55)), vmulq_f32(vmulq_f32(v48, v48), v52)))));
      v59 = vmulq_f32(v57, v56);
      v60 = *(a2 + 29);
      v61 = *(a2 + 30);
      v62 = vmaxq_f32(v58, v60);
      v63 = vmaxq_f32(v59, v60);
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vsubq_f32(v64, vandq_s8(v28, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v65, vandq_s8(v28, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v62, v66);
      v69 = *(a2 + 31);
      v70 = *(a2 + 32);
      v71 = vsubq_f32(v63, v67);
      v72 = vmulq_f32(v71, vaddq_f32(v70, vmulq_f32(v71, vaddq_f32(v61, vmulq_f32(v69, v71)))));
      v73 = vaddq_f32(v28, vmulq_f32(v68, vaddq_f32(v70, vmulq_f32(v68, vaddq_f32(v61, vmulq_f32(v69, v68))))));
      v74 = vcvtq_s32_f32(v67);
      v75 = *(a2 + 33);
      v76 = vaddq_f32(v28, v72);
      v77 = vmulq_f32(v73, vshlq_n_s32(vaddq_s32(v75, vcvtq_s32_f32(v66)), 0x17uLL));
      v78 = vmulq_f32(v76, vshlq_n_s32(vaddq_s32(v75, v74), 0x17uLL));
      v79 = *(a2 + 110);
      v80 = *(a2 + 111);
      v81 = vmulq_f32(v29, v80);
      v82 = vmulq_f32(v30, v80);
      v83 = *(a2 + 112);
      v84 = vcgtq_f32(v27, vsubq_f32(v29, v83));
      v85 = vcgtq_f32(v27, vsubq_f32(v30, v83));
      v86 = vbslq_s8(v15, v25, vbslq_s8(v84, v81, vmulq_f32(v79, v77)));
      v87 = vbslq_s8(v15, v26, vbslq_s8(v85, v82, vmulq_f32(v79, v78)));
      v88 = (v6 + v11);
      v88[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v86, v86, 3));
      *v88 = vbslq_s8(v15, v26, vmulq_laneq_f32(v87, v87, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v89 = 16 * v10;
    v90 = *(v7 + v89);
    v91 = *(a2 + 15);
    v92 = vmaxq_f32(vdupq_laneq_s32(v90, 3), *(a2 + 16));
    v93 = vmulq_f32(vrecpeq_f32(v92), *(a2 + 18));
    v94 = vmulq_f32(v90, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v93, vrecpsq_f32(v93, v92))), *(a2 + 3)));
    v95 = *(a2 + 75);
    v96 = *(a2 + 5);
    v97 = vminq_f32(vmaxq_f32(v94, v95), v96);
    v98 = vaddq_f32(v97, *(a2 + 108));
    v99 = vorrq_s8(vandq_s8(*(a2 + 19), v98), v96);
    v100 = vandq_s8(v96, vcgtq_f32(v99, *(a2 + 23)));
    v101 = vsubq_f32(vsubq_f32(v99, v96), vmulq_f32(vmulq_f32(*(a2 + 24), v100), v99));
    v102 = vmaxq_f32(vmulq_f32(*(a2 + 109), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v98, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v98))), *(a2 + 22)), v100), vmulq_f32(v101, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v101, *(a2 + 28))), vmulq_f32(vmulq_f32(v101, v101), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v101))))))), *(a2 + 29));
    v103 = vcvtq_f32_s32(vcvtq_s32_f32(v102));
    v104 = vsubq_f32(v103, vandq_s8(v96, vcgtq_f32(v103, v102)));
    v105 = vsubq_f32(v102, v104);
    v106 = vbslq_s8(v91, v94, vbslq_s8(vcgtq_f32(v95, vsubq_f32(v97, *(a2 + 112))), vmulq_f32(v97, *(a2 + 111)), vmulq_f32(*(a2 + 110), vmulq_f32(vaddq_f32(v96, vmulq_f32(v105, vaddq_f32(*(a2 + 32), vmulq_f32(v105, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v105)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v104)), 0x17uLL)))));
    *(v6 + v89) = vbslq_s8(v91, v94, vmulq_laneq_f32(v106, v106, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = *(a2 + 113);
      v27 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v28 = vmaxq_f32(v27, v26);
      v29 = vbslq_s8(v15, v25, vmaxq_f32(v25, v26));
      v30 = vbslq_s8(v15, v27, v28);
      v31 = *(a2 + 75);
      v32 = *(a2 + 5);
      v34 = *(a2 + 33);
      v33 = *(a2 + 34);
      v35 = vmulq_f32(v29, vbslq_s8(vcgtq_f32(v31, v29), v33, v32));
      v36 = vmulq_f32(v30, vbslq_s8(vcgtq_f32(v31, v30), v33, v32));
      v37 = *(a2 + 114);
      v38 = *(a2 + 108);
      v39 = vaddq_f32(vminq_f32(v35, v37), v38);
      v40 = vaddq_f32(vminq_f32(v36, v37), v38);
      v41 = *(a2 + 19);
      v42 = *(a2 + 20);
      v43 = vorrq_s8(vandq_s8(v41, v39), v32);
      v44 = *(a2 + 21);
      v45 = *(a2 + 22);
      v46 = vorrq_s8(vandq_s8(v41, v40), v32);
      v47 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v40, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v42, v40)));
      v48 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v39, 0x17uLL)), vandq_s8(v44, vcgtq_f32(v42, v39))), v45);
      v49 = *(a2 + 23);
      v50 = *(a2 + 24);
      v51 = vsubq_f32(v47, v45);
      v52 = vandq_s8(v32, vcgtq_f32(v43, v49));
      v53 = vandq_s8(v32, vcgtq_f32(v46, v49));
      v54 = vmulq_f32(v50, v52);
      v55 = vaddq_f32(v48, v52);
      v56 = vmulq_f32(vmulq_f32(v50, v53), v46);
      v57 = vaddq_f32(v51, v53);
      v58 = vsubq_f32(vsubq_f32(v43, v32), vmulq_f32(v54, v43));
      v59 = vsubq_f32(vsubq_f32(v46, v32), v56);
      v60 = *(a2 + 25);
      v61 = *(a2 + 26);
      v62 = *(a2 + 27);
      v63 = *(a2 + 28);
      v64 = vaddq_f32(v57, vmulq_f32(v59, vaddq_f32(vaddq_f32(v62, vmulq_f32(v59, v63)), vmulq_f32(vmulq_f32(v59, v59), vaddq_f32(v60, vmulq_f32(v61, v59))))));
      v65 = *(a2 + 109);
      v66 = vmulq_f32(v65, vaddq_f32(v55, vmulq_f32(v58, vaddq_f32(vaddq_f32(v62, vmulq_f32(v58, v63)), vmulq_f32(vmulq_f32(v58, v58), vaddq_f32(v60, vmulq_f32(v61, v58)))))));
      v67 = vmulq_f32(v65, v64);
      v68 = *(a2 + 29);
      v69 = *(a2 + 30);
      v70 = vmaxq_f32(v66, v68);
      v71 = vmaxq_f32(v67, v68);
      v72 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
      v73 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
      v74 = vsubq_f32(v72, vandq_s8(v32, vcgtq_f32(v72, v70)));
      v75 = vsubq_f32(v73, vandq_s8(v32, vcgtq_f32(v73, v71)));
      v76 = vsubq_f32(v70, v74);
      v77 = vsubq_f32(v71, v75);
      v78 = *(a2 + 31);
      v79 = *(a2 + 32);
      v80 = vaddq_f32(v32, vmulq_f32(v76, vaddq_f32(v79, vmulq_f32(v76, vaddq_f32(v69, vmulq_f32(v78, v76))))));
      v81 = vaddq_f32(v32, vmulq_f32(v77, vaddq_f32(v79, vmulq_f32(v77, vaddq_f32(v69, vmulq_f32(v78, v77))))));
      v82 = vaddq_s32(v34, vcvtq_s32_f32(v75));
      v83 = vmulq_f32(v80, vshlq_n_s32(vaddq_s32(v34, vcvtq_s32_f32(v74)), 0x17uLL));
      v84 = *(a2 + 110);
      v85 = vmulq_f32(v81, vshlq_n_s32(v82, 0x17uLL));
      v86 = vmulq_f32(v84, v83);
      v87 = *(a2 + 111);
      v88 = vmulq_f32(v35, v87);
      v89 = *(a2 + 112);
      v90 = vcgtq_f32(v31, vsubq_f32(v35, v89));
      v91 = vbslq_s8(vcgtq_f32(v31, vsubq_f32(v36, v89)), vmulq_f32(v36, v87), vmulq_f32(v84, v85));
      v92 = *(a2 + 36);
      v93 = vbslq_s8(v15, v25, veorq_s8(vandq_s8(v92, v29), vbslq_s8(v90, v88, v86)));
      v94 = vbslq_s8(v15, v27, veorq_s8(vandq_s8(v92, v30), v91));
      v95 = (v6 + v11);
      v95[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v93, v93, 3));
      *v95 = vbslq_s8(v15, v27, vmulq_laneq_f32(v94, v94, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v96 = 16 * v10;
    v97 = *(v7 + v96);
    v98 = *(a2 + 15);
    v99 = vmaxq_f32(vdupq_laneq_s32(v97, 3), *(a2 + 16));
    v100 = vmulq_f32(vrecpeq_f32(v99), *(a2 + 18));
    v101 = vmulq_f32(v97, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v100, vrecpsq_f32(v100, v99))), *(a2 + 3)));
    v102 = vbslq_s8(v98, v101, vmaxq_f32(v101, *(a2 + 113)));
    v103 = *(a2 + 75);
    v104 = *(a2 + 5);
    v105 = vmulq_f32(v102, vbslq_s8(vcgtq_f32(v103, v102), *(a2 + 34), v104));
    v106 = vaddq_f32(vminq_f32(v105, *(a2 + 114)), *(a2 + 108));
    v107 = vorrq_s8(vandq_s8(*(a2 + 19), v106), v104);
    v108 = vandq_s8(v104, vcgtq_f32(v107, *(a2 + 23)));
    v109 = vsubq_f32(vsubq_f32(v107, v104), vmulq_f32(vmulq_f32(*(a2 + 24), v108), v107));
    v110 = vmaxq_f32(vmulq_f32(*(a2 + 109), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v106, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v106))), *(a2 + 22)), v108), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v109, *(a2 + 28))), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v109))))))), *(a2 + 29));
    v111 = vcvtq_f32_s32(vcvtq_s32_f32(v110));
    v112 = vsubq_f32(v111, vandq_s8(v104, vcgtq_f32(v111, v110)));
    v113 = vsubq_f32(v110, v112);
    v114 = vbslq_s8(v98, v101, veorq_s8(vandq_s8(*(a2 + 36), v102), vbslq_s8(vcgtq_f32(v103, vsubq_f32(v105, *(a2 + 112))), vmulq_f32(v105, *(a2 + 111)), vmulq_f32(*(a2 + 110), vmulq_f32(vaddq_f32(v104, vmulq_f32(v113, vaddq_f32(*(a2 + 32), vmulq_f32(v113, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v113)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v112)), 0x17uLL))))));
    *(v6 + v96) = vbslq_s8(v98, v101, vmulq_laneq_f32(v114, v114, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 113);
      v31 = vmaxq_f32(v29, v30);
      v32 = vbslq_s8(v15, v28, vmaxq_f32(v28, v30));
      v33 = vbslq_s8(v15, v29, v31);
      v34 = *(a2 + 75);
      v35 = *(a2 + 5);
      v36 = *(a2 + 33);
      v37 = *(a2 + 34);
      v38 = vmulq_f32(v32, vbslq_s8(vcgtq_f32(v34, v32), v37, v35));
      v39 = vmulq_f32(v33, vbslq_s8(vcgtq_f32(v34, v33), v37, v35));
      v40 = *(a2 + 114);
      v41 = *(a2 + 108);
      v42 = vaddq_f32(vminq_f32(v38, v40), v41);
      v43 = vaddq_f32(vminq_f32(v39, v40), v41);
      v44 = *(a2 + 109);
      v45 = vcgtq_f32(vandq_s8(v35, vceqq_f32(v44, v34)), v34);
      v46 = vbslq_s8(v45, v35, v42);
      v47 = vbslq_s8(v45, v35, v43);
      v48 = *(a2 + 19);
      v49 = *(a2 + 20);
      v50 = vorrq_s8(vandq_s8(v48, v46), v35);
      v51 = vorrq_s8(vandq_s8(v48, v47), v35);
      v52 = *(a2 + 21);
      v53 = *(a2 + 22);
      v54 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v47, 0x17uLL)), vandq_s8(v52, vcgtq_f32(v49, v47)));
      v55 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v46, 0x17uLL)), vandq_s8(v52, vcgtq_f32(v49, v46))), v53);
      v56 = *(a2 + 23);
      v57 = *(a2 + 24);
      v58 = vsubq_f32(v54, v53);
      v59 = vandq_s8(v35, vcgtq_f32(v50, v56));
      v60 = vandq_s8(v35, vcgtq_f32(v51, v56));
      v61 = vmulq_f32(v57, v59);
      v62 = vaddq_f32(v55, v59);
      v63 = vsubq_f32(vsubq_f32(v50, v35), vmulq_f32(v61, v50));
      v64 = vsubq_f32(vsubq_f32(v51, v35), vmulq_f32(vmulq_f32(v57, v60), v51));
      v65 = vmulq_f32(v63, v63);
      v66 = *(a2 + 38);
      v67 = *(a2 + 39);
      v68 = *(a2 + 36);
      v69 = *(a2 + 37);
      v70 = vaddq_f32(v69, vmulq_f32(v66, v63));
      v71 = vaddq_f32(v69, vmulq_f32(v66, v64));
      v72 = *(a2 + 40);
      v73 = *(a2 + 41);
      v74 = vaddq_f32(v67, vmulq_f32(v72, v63));
      v75 = vaddq_f32(v67, vmulq_f32(v72, v64));
      v77 = *(a2 + 42);
      v76 = *(a2 + 43);
      v78 = vaddq_f32(v73, vmulq_f32(v77, v63));
      v79 = vaddq_f32(v73, vmulq_f32(v77, v64));
      v80 = vmulq_f32(v64, v64);
      v81 = vaddq_f32(vaddq_f32(v58, v60), vmulq_f32(v64, vaddq_f32(v76, vmulq_f32(v64, vaddq_f32(v79, vmulq_f32(v80, vaddq_f32(v71, vmulq_f32(v80, v75))))))));
      v82 = vmulq_f32(v44, vaddq_f32(v62, vmulq_f32(v63, vaddq_f32(v76, vmulq_f32(v63, vaddq_f32(v78, vmulq_f32(v65, vaddq_f32(v70, vmulq_f32(v65, v74)))))))));
      v83 = vmulq_f32(v44, v81);
      v84 = *(a2 + 29);
      v85 = vmaxq_f32(v82, v84);
      v86 = vmaxq_f32(v83, v84);
      v87 = vcvtq_f32_s32(vcvtq_s32_f32(v85));
      v88 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
      v89 = vsubq_f32(v87, vandq_s8(v35, vcgtq_f32(v87, v85)));
      v90 = vsubq_f32(v88, vandq_s8(v35, vcgtq_f32(v88, v86)));
      v91 = vsubq_f32(v85, v89);
      v92 = vsubq_f32(v86, v90);
      v93 = *(a2 + 44);
      v94 = *(a2 + 45);
      v95 = vaddq_f32(v93, vmulq_f32(v94, v91));
      v96 = *(a2 + 46);
      v97 = *(a2 + 47);
      v98 = vaddq_f32(vaddq_f32(v96, vmulq_f32(v97, v92)), vmulq_f32(vmulq_f32(v92, v92), vaddq_f32(v93, vmulq_f32(v94, v92))));
      v99 = *(a2 + 48);
      v100 = vaddq_f32(v35, vmulq_f32(v91, vaddq_f32(v99, vmulq_f32(v91, vaddq_f32(vaddq_f32(v96, vmulq_f32(v91, v97)), vmulq_f32(vmulq_f32(v91, v91), v95))))));
      v101 = vaddq_f32(v35, vmulq_f32(v92, vaddq_f32(v99, vmulq_f32(v92, v98))));
      v102 = vaddq_s32(v36, vcvtq_s32_f32(v89));
      v103 = vmulq_f32(v101, vshlq_n_s32(vaddq_s32(v36, vcvtq_s32_f32(v90)), 0x17uLL));
      v104 = *(a2 + 110);
      v105 = vmulq_f32(v104, vmulq_f32(v100, vshlq_n_s32(v102, 0x17uLL)));
      v106 = *(a2 + 111);
      v107 = vmulq_f32(v104, v103);
      v108 = *(a2 + 112);
      v109 = vbslq_s8(v15, v28, veorq_s8(vandq_s8(v68, v32), vbslq_s8(vcgtq_f32(v34, vsubq_f32(v38, v108)), vmulq_f32(v38, v106), v105)));
      v110 = vbslq_s8(v15, v29, veorq_s8(vandq_s8(v68, v33), vbslq_s8(vcgtq_f32(v34, vsubq_f32(v39, v108)), vmulq_f32(v39, v106), v107)));
      v111 = (v6 + v11);
      v111[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v109, v109, 3));
      *v111 = vbslq_s8(v15, v29, vmulq_laneq_f32(v110, v110, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v112 = 16 * v10;
    v113 = *(v7 + v112);
    v114 = *(a2 + 15);
    v115 = vmaxq_f32(vdupq_laneq_s32(v113, 3), *(a2 + 16));
    v116 = vrecpeq_f32(v115);
    v117 = vmulq_f32(v116, vrecpsq_f32(v116, v115));
    v118 = vmulq_f32(v113, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v117, vrecpsq_f32(v117, v115))), *(a2 + 3)));
    v119 = vbslq_s8(v114, v118, vmaxq_f32(v118, *(a2 + 113)));
    v120 = *(a2 + 75);
    v121 = *(a2 + 5);
    v122 = vmulq_f32(v119, vbslq_s8(vcgtq_f32(v120, v119), *(a2 + 34), v121));
    v123 = *(a2 + 109);
    v124 = vbslq_s8(vcgtq_f32(vandq_s8(v121, vceqq_f32(v123, v120)), v120), v121, vaddq_f32(vminq_f32(v122, *(a2 + 114)), *(a2 + 108)));
    v125 = vorrq_s8(vandq_s8(*(a2 + 19), v124), v121);
    v126 = vandq_s8(v121, vcgtq_f32(v125, *(a2 + 23)));
    v127 = vsubq_f32(vsubq_f32(v125, v121), vmulq_f32(vmulq_f32(*(a2 + 24), v126), v125));
    v128 = vmulq_f32(v127, v127);
    v129 = vmaxq_f32(vmulq_f32(v123, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v124, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v124))), *(a2 + 22)), v126), vmulq_f32(v127, vaddq_f32(*(a2 + 43), vmulq_f32(v127, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v127)), vmulq_f32(v128, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v127)), vmulq_f32(v128, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v127))))))))))), *(a2 + 29));
    v130 = vcvtq_f32_s32(vcvtq_s32_f32(v129));
    v131 = vsubq_f32(v130, vandq_s8(v121, vcgtq_f32(v130, v129)));
    v132 = vsubq_f32(v129, v131);
    v133 = vbslq_s8(v114, v118, veorq_s8(vandq_s8(*(a2 + 36), v119), vbslq_s8(vcgtq_f32(v120, vsubq_f32(v122, *(a2 + 112))), vmulq_f32(v122, *(a2 + 111)), vmulq_f32(*(a2 + 110), vmulq_f32(vaddq_f32(v121, vmulq_f32(v132, vaddq_f32(*(a2 + 48), vmulq_f32(v132, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v132)), vmulq_f32(vmulq_f32(v132, v132), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v132)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v131)), 0x17uLL))))));
    *(v6 + v112) = vbslq_s8(v114, v118, vmulq_laneq_f32(v133, v133, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = *(a1 + 6);
    v8 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v57 = 0;
        v58 = 16 * v8;
        v59 = 16 * v7;
        v60 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v61 = 0;
          do
          {
            v62 = *(a2 + 15);
            v63 = vmulq_f32(v5[v61 / 0x10], vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v5[v61 / 0x10], 3), *(a2 + 16)))), *(a2 + 3)));
            v64 = vminq_f32(vmaxq_f32(v63, *(a2 + 75)), *(a2 + 5));
            v65 = vbslq_s8(v62, v63, vmulq_f32(v64, vminq_f32(vrsqrteq_f32(v64), *(a2 + 73))));
            v6[v61 / 0x10] = vbslq_s8(v62, v63, vmulq_laneq_f32(v65, v65, 3));
            v61 += 16;
          }

          while (v60 != v61);
          ++v57;
          v5 = (v5 + v58);
          v6 = (v6 + v59);
        }

        while (v57 != v3);
      }
    }

    else
    {
      v9 = 0;
      v10 = 16 * v7;
      v11 = 16 * v8;
      v12 = v5 + 4;
      v13 = v6 + 4;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = 2;
        do
        {
          v18 = v5[v17 - 2];
          v19 = v5[v17 - 1];
          v20 = v5[v17];
          v21 = v5[v17 + 1];
          v23 = *(a2 + 15);
          v22 = *(a2 + 16);
          v24 = vmaxq_f32(vdupq_laneq_s32(v21, 3), v22);
          v25 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v18, 3), v22));
          v26 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v19, 3), v22));
          v27 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v20, 3), v22));
          v28 = *(a2 + 17);
          v29 = vandq_s8(v28, v25);
          v30 = vandq_s8(v28, v26);
          v31 = vandq_s8(v28, v27);
          v32 = vandq_s8(v28, vrecpeq_f32(v24));
          v33 = *(a2 + 3);
          v34 = vmulq_f32(v18, vorrq_s8(v29, v33));
          v35 = vmulq_f32(v19, vorrq_s8(v30, v33));
          v36 = vmulq_f32(v20, vorrq_s8(v31, v33));
          v37 = vmulq_f32(v21, vorrq_s8(v32, v33));
          v38 = *(a2 + 75);
          v39 = *(a2 + 5);
          v40 = vminq_f32(vmaxq_f32(v34, v38), v39);
          v41 = vminq_f32(vmaxq_f32(v35, v38), v39);
          v42 = vminq_f32(vmaxq_f32(v36, v38), v39);
          v43 = vminq_f32(vmaxq_f32(v37, v38), v39);
          v44 = *(a2 + 73);
          v45 = v16;
          v46 = vbslq_s8(v23, v34, vmulq_f32(v40, vminq_f32(vrsqrteq_f32(v40), v44)));
          v47 = vbslq_s8(v23, v35, vmulq_f32(v41, vminq_f32(vrsqrteq_f32(v41), v44)));
          v48 = vbslq_s8(v23, v36, vmulq_f32(v42, vminq_f32(vrsqrteq_f32(v42), v44)));
          v49 = vbslq_s8(v23, v37, vmulq_f32(v43, vminq_f32(vrsqrteq_f32(v43), v44)));
          v50 = v15;
          v51 = &v6[v17];
          v14 += 4;
          v51[-2] = vbslq_s8(v23, v34, vmulq_laneq_f32(v46, v46, 3));
          v51[-1] = vbslq_s8(v23, v35, vmulq_laneq_f32(v47, v47, 3));
          *v51 = vbslq_s8(v23, v36, vmulq_laneq_f32(v48, v48, 3));
          v51[1] = vbslq_s8(v23, v37, vmulq_laneq_f32(v49, v49, 3));
          v17 += 4;
          v16 += 4;
          v15 = v50 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v52 = *v45++;
            v53 = *(a2 + 15);
            v54 = vmulq_f32(v52, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v52, 3), *(a2 + 16)))), *(a2 + 3)));
            v55 = vminq_f32(vmaxq_f32(v54, *(a2 + 75)), *(a2 + 5));
            v56 = vbslq_s8(v53, v54, vmulq_f32(v55, vminq_f32(vrsqrteq_f32(v55), *(a2 + 73))));
            *v50++ = vbslq_s8(v53, v54, vmulq_laneq_f32(v56, v56, 3));
            ++v14;
          }

          while (v14 < v4);
        }

        ++v9;
        v6 = (v6 + v10);
        v5 = (v5 + v11);
        v12 = (v12 + v11);
        v13 = (v13 + v10);
      }

      while (v9 != v3);
    }
  }

  return 0;
}

uint64_t Getquicktime_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 6);
    while (v5 < 4)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v7 += v8;
      v6 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 32;
    for (i = v5; i > 3; i -= 4)
    {
      v13 = *(v7 + v11 - 32);
      v14 = *(v7 + v11 - 16);
      v15 = *(v7 + v11);
      v16 = *(v7 + v11 + 16);
      v17 = *(a2 + 15);
      v18 = *(a2 + 16);
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v18));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v18));
      v21 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v18));
      v22 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v16, 3), v18));
      v24 = *(a2 + 17);
      v23 = *(a2 + 18);
      v25 = vandq_s8(v24, vmulq_f32(v19, v23));
      v26 = vandq_s8(v24, vmulq_f32(v20, v23));
      v27 = vandq_s8(v24, vmulq_f32(v21, v23));
      v28 = vandq_s8(v24, vmulq_f32(v22, v23));
      v29 = *(a2 + 3);
      v30 = vmulq_f32(v13, vorrq_s8(v25, v29));
      v31 = vmulq_f32(v14, vorrq_s8(v26, v29));
      v32 = vmulq_f32(v15, vorrq_s8(v27, v29));
      v33 = vmulq_f32(v16, vorrq_s8(v28, v29));
      v34 = *(a2 + 75);
      v35 = *(a2 + 5);
      v36 = *(a2 + 6);
      v37 = vmulq_f32(v36, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v30, v34), v35)));
      v38 = vmulq_f32(v36, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v31, v34), v35)));
      v39 = vmulq_f32(v36, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v32, v34), v35)));
      v40 = vmulq_f32(v36, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v33, v34), v35)));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v42 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v45 = *(a2 + 7);
      v46 = *(a2 + 8);
      v47 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v37, v41), v45));
      v48 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v38, v42), v45));
      v49 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v39, v43), v45));
      v50 = vrsqrteq_f32(vaddq_f32(v45, vsubq_f32(v40, v44)));
      v51 = vaddq_f32(v46, v41);
      v52 = vaddq_f32(v46, v42);
      v53 = vaddq_f32(v46, v43);
      v54 = vaddq_f32(v46, v44);
      v55 = *(a2 + 9);
      v56 = *(a2 + 10);
      v57 = vsubq_f32(v51, vmulq_f32(v47, v55));
      v58 = *(a2 + 115);
      v59 = vmulq_f32(v58, v57);
      v60 = vmulq_f32(v58, vsubq_f32(v52, vmulq_f32(v48, v55)));
      v61 = vmulq_f32(v58, vsubq_f32(v53, vmulq_f32(v49, v55)));
      v62 = vmulq_f32(v58, vsubq_f32(v54, vmulq_f32(v50, v55)));
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v59));
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v67 = vsubq_f32(v63, vandq_s8(v35, vcgtq_f32(v63, v59)));
      v68 = vsubq_f32(v64, vandq_s8(v35, vcgtq_f32(v64, v60)));
      v69 = vsubq_f32(v65, vandq_s8(v35, vcgtq_f32(v65, v61)));
      v70 = vsubq_f32(v66, vandq_s8(v35, vcgtq_f32(v66, v62)));
      v71 = *(a2 + 11);
      v72 = *(a2 + 12);
      v73 = vmulq_f32(vrecpeq_f32(vsubq_f32(v71, vsubq_f32(v59, v67))), v72);
      v74 = vmulq_f32(vrecpeq_f32(vsubq_f32(v71, vsubq_f32(v60, v68))), v72);
      v75 = vmulq_f32(vrecpeq_f32(vsubq_f32(v71, vsubq_f32(v61, v69))), v72);
      v76 = vmulq_f32(vrecpeq_f32(vsubq_f32(v71, vsubq_f32(v62, v70))), v72);
      v77 = vmaxq_f32(vaddq_f32(vaddq_f32(v67, v56), vmulq_f32(v73, v73)), v34);
      v78 = vmaxq_f32(vaddq_f32(vaddq_f32(v56, v68), vmulq_f32(v74, v74)), v34);
      v79 = vmaxq_f32(vaddq_f32(vaddq_f32(v56, v69), vmulq_f32(v75, v75)), v34);
      v80 = vmaxq_f32(vaddq_f32(vaddq_f32(v56, v70), vmulq_f32(v76, v76)), v34);
      v81 = *(a2 + 13);
      v82 = *(a2 + 14);
      v83 = vminq_f32(v78, v81);
      v84 = vminq_f32(v79, v81);
      v85 = vminq_f32(v80, v81);
      v86 = vbslq_s8(v17, v30, vcvtq_s32_f32(vmulq_f32(vminq_f32(v77, v81), v82)));
      v87 = vbslq_s8(v17, v31, vcvtq_s32_f32(vmulq_f32(v83, v82)));
      v88 = vbslq_s8(v17, v32, vcvtq_s32_f32(vmulq_f32(v84, v82)));
      v89 = vbslq_s8(v17, v33, vcvtq_s32_f32(vmulq_f32(v85, v82)));
      v90 = (v6 + v11);
      v90[-2] = vbslq_s8(v17, v30, vmulq_laneq_f32(v86, v86, 3));
      v90[-1] = vbslq_s8(v17, v31, vmulq_laneq_f32(v87, v87, 3));
      *v90 = vbslq_s8(v17, v32, vmulq_laneq_f32(v88, v88, 3));
      v90[1] = vbslq_s8(v17, v33, vmulq_laneq_f32(v89, v89, 3));
      v10 += 4;
      v11 += 64;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v91 = *(a2 + 15);
      v92 = vmulq_f32(*(v7 + 16 * v10), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v10), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v93 = *(a2 + 75);
      v94 = *(a2 + 5);
      v95 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vminq_f32(vmaxq_f32(v92, v93), v94)));
      v96 = vcvtq_f32_s32(vcvtq_s32_f32(v95));
      v97 = vmulq_f32(*(a2 + 115), vsubq_f32(vaddq_f32(*(a2 + 8), v96), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v95, v96))), *(a2 + 9))));
      v98 = vcvtq_f32_s32(vcvtq_s32_f32(v97));
      v99 = vsubq_f32(v98, vandq_s8(v94, vcgtq_f32(v98, v97)));
      v100 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v97, v99))), *(a2 + 12));
      v101 = vbslq_s8(v91, v92, vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v99), vmulq_f32(v100, v100)), v93), *(a2 + 13)), *(a2 + 14))));
      *(v6 + 16 * v10++) = vbslq_s8(v91, v92, vmulq_laneq_f32(v101, v101, 3));
    }

    while (v10 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vorrq_s8(v26, v27);
      v29 = vmulq_f32(v14, vorrq_s8(v25, v27));
      v30 = *(a2 + 75);
      v31 = vmulq_f32(v13, v28);
      v32 = *(a2 + 5);
      v33 = vminq_f32(vmaxq_f32(v29, v30), v32);
      v34 = *(a2 + 115);
      v35 = vminq_f32(vmaxq_f32(v31, v30), v32);
      v36 = vcgtq_f32(vandq_s8(v32, vceqq_f32(v34, v30)), v30);
      v37 = vbslq_s8(v36, v32, v33);
      v38 = vbslq_s8(v36, v32, v35);
      v40 = *(a2 + 19);
      v39 = *(a2 + 20);
      v41 = vorrq_s8(vandq_s8(v40, v37), v32);
      v42 = vorrq_s8(vandq_s8(v40, v38), v32);
      v43 = *(a2 + 21);
      v44 = *(a2 + 22);
      v45 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v39, v38)));
      v46 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v39, v37))), v44);
      v47 = *(a2 + 23);
      v48 = *(a2 + 24);
      v49 = vandq_s8(v32, vcgtq_f32(v41, v47));
      v50 = vandq_s8(v32, vcgtq_f32(v42, v47));
      v51 = vaddq_f32(v46, v49);
      v52 = vaddq_f32(vsubq_f32(v45, v44), v50);
      v53 = vsubq_f32(vsubq_f32(v41, v32), vmulq_f32(vmulq_f32(v48, v49), v41));
      v54 = vsubq_f32(vsubq_f32(v42, v32), vmulq_f32(vmulq_f32(v48, v50), v42));
      v55 = vmulq_f32(v53, v53);
      v56 = *(a2 + 37);
      v57 = *(a2 + 38);
      v58 = *(a2 + 39);
      v59 = *(a2 + 40);
      v60 = vaddq_f32(v56, vmulq_f32(v57, v53));
      v61 = vaddq_f32(v58, vmulq_f32(v59, v53));
      v62 = vaddq_f32(v58, vmulq_f32(v59, v54));
      v63 = vaddq_f32(v56, vmulq_f32(v57, v54));
      v64 = *(a2 + 41);
      v65 = *(a2 + 42);
      v66 = vaddq_f32(v64, vmulq_f32(v65, v53));
      v67 = vaddq_f32(v64, vmulq_f32(v65, v54));
      v68 = vmulq_f32(v54, v54);
      v69 = vaddq_f32(v66, vmulq_f32(v55, vaddq_f32(v60, vmulq_f32(v55, v61))));
      v70 = vaddq_f32(v67, vmulq_f32(v68, vaddq_f32(v63, vmulq_f32(v68, v62))));
      v71 = *(a2 + 43);
      v72 = *(a2 + 44);
      v73 = vmulq_f32(v34, vaddq_f32(v51, vmulq_f32(v53, vaddq_f32(v71, vmulq_f32(v53, v69)))));
      v74 = vmulq_f32(v34, vaddq_f32(v52, vmulq_f32(v54, vaddq_f32(v71, vmulq_f32(v54, v70)))));
      v75 = *(a2 + 29);
      v76 = vmaxq_f32(v73, v75);
      v77 = vmaxq_f32(v74, v75);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v32, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v32, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = vaddq_f32(v72, vmulq_f32(v84, v82));
      v87 = vaddq_f32(v72, vmulq_f32(v84, v83));
      v88 = *(a2 + 47);
      v89 = *(a2 + 48);
      v90 = vaddq_f32(v32, vmulq_f32(v82, vaddq_f32(v89, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v88)), vmulq_f32(vmulq_f32(v82, v82), v86))))));
      v91 = *(a2 + 33);
      v92 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v83, vaddq_f32(v89, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v88, v83)), vmulq_f32(vmulq_f32(v83, v83), v87)))))), vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v81)), 0x17uLL));
      v93 = vbslq_s8(v15, v29, vmulq_f32(v90, vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v80)), 0x17uLL)));
      v94 = vbslq_s8(v15, v31, v92);
      v95 = (v6 + v11);
      v95[-1] = vbslq_s8(v15, v29, vmulq_laneq_f32(v93, v93, 3));
      *v95 = vbslq_s8(v15, v31, vmulq_laneq_f32(v94, v94, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v96 = 16 * v10;
    v97 = *(v7 + v96);
    v98 = *(a2 + 15);
    v99 = vmaxq_f32(vdupq_laneq_s32(v97, 3), *(a2 + 16));
    v100 = vrecpeq_f32(v99);
    v101 = vmulq_f32(v100, vrecpsq_f32(v100, v99));
    v102 = vmulq_f32(v97, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v101, vrecpsq_f32(v101, v99))), *(a2 + 3)));
    v103 = *(a2 + 5);
    v104 = *(a2 + 115);
    v105 = vbslq_s8(vcgtq_f32(vandq_s8(v103, vceqq_f32(v104, *(a2 + 75))), *(a2 + 75)), v103, vminq_f32(vmaxq_f32(v102, *(a2 + 75)), v103));
    v106 = vorrq_s8(vandq_s8(*(a2 + 19), v105), v103);
    v107 = vandq_s8(v103, vcgtq_f32(v106, *(a2 + 23)));
    v108 = vsubq_f32(vsubq_f32(v106, v103), vmulq_f32(vmulq_f32(*(a2 + 24), v107), v106));
    v109 = vmulq_f32(v108, v108);
    v110 = vmaxq_f32(vmulq_f32(v104, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v105, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v105))), *(a2 + 22)), v107), vmulq_f32(v108, vaddq_f32(*(a2 + 43), vmulq_f32(v108, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v108)), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v108)), vmulq_f32(v109, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v108))))))))))), *(a2 + 29));
    v111 = vcvtq_f32_s32(vcvtq_s32_f32(v110));
    v112 = vsubq_f32(v111, vandq_s8(v103, vcgtq_f32(v111, v110)));
    v113 = vsubq_f32(v110, v112);
    v114 = vbslq_s8(v98, v102, vmulq_f32(vaddq_f32(v103, vmulq_f32(v113, vaddq_f32(*(a2 + 48), vmulq_f32(v113, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v113)), vmulq_f32(vmulq_f32(v113, v113), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v113)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v112)), 0x17uLL)));
    *(v6 + v96) = vbslq_s8(v98, v102, vmulq_laneq_f32(v114, v114, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 75);
      v28 = vmaxq_f32(v25, v27);
      v29 = vmaxq_f32(v26, v27);
      v30 = *(a2 + 5);
      v31 = vminq_f32(v28, v30);
      v32 = vminq_f32(v29, v30);
      v33 = *(a2 + 19);
      v34 = *(a2 + 20);
      v35 = vorrq_s8(vandq_s8(v33, v31), v30);
      v36 = vorrq_s8(vandq_s8(v33, v32), v30);
      v37 = *(a2 + 21);
      v38 = *(a2 + 22);
      v39 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v34, v32)));
      v40 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v34, v31))), v38);
      v41 = *(a2 + 23);
      v42 = *(a2 + 24);
      v43 = vandq_s8(v30, vcgtq_f32(v35, v41));
      v44 = vandq_s8(v30, vcgtq_f32(v36, v41));
      v45 = vaddq_f32(v40, v43);
      v46 = vaddq_f32(vsubq_f32(v39, v38), v44);
      v47 = vsubq_f32(vsubq_f32(v35, v30), vmulq_f32(vmulq_f32(v42, v43), v35));
      v48 = vsubq_f32(vsubq_f32(v36, v30), vmulq_f32(vmulq_f32(v42, v44), v36));
      v49 = *(a2 + 25);
      v50 = *(a2 + 26);
      v51 = vaddq_f32(v49, vmulq_f32(v50, v47));
      v52 = vaddq_f32(v49, vmulq_f32(v50, v48));
      v53 = *(a2 + 27);
      v54 = *(a2 + 28);
      v55 = *(a2 + 115);
      v56 = vmulq_f32(v55, vaddq_f32(v45, vmulq_f32(v47, vaddq_f32(vaddq_f32(v53, vmulq_f32(v47, v54)), vmulq_f32(vmulq_f32(v47, v47), v51)))));
      v57 = vmulq_f32(v55, vaddq_f32(v46, vmulq_f32(v48, vaddq_f32(vaddq_f32(v53, vmulq_f32(v48, v54)), vmulq_f32(vmulq_f32(v48, v48), v52)))));
      v58 = *(a2 + 29);
      v59 = *(a2 + 30);
      v60 = vmaxq_f32(v56, v58);
      v61 = vmaxq_f32(v57, v58);
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vsubq_f32(v62, vandq_s8(v30, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v63, vandq_s8(v30, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v60, v64);
      v67 = vsubq_f32(v61, v65);
      v68 = *(a2 + 31);
      v69 = *(a2 + 32);
      v70 = vmulq_f32(v67, vaddq_f32(v69, vmulq_f32(v67, vaddq_f32(v59, vmulq_f32(v68, v67)))));
      v71 = vaddq_f32(v30, vmulq_f32(v66, vaddq_f32(v69, vmulq_f32(v66, vaddq_f32(v59, vmulq_f32(v68, v66))))));
      v72 = vcvtq_s32_f32(v65);
      v73 = *(a2 + 33);
      v74 = vbslq_s8(v15, v25, vmulq_f32(v71, vshlq_n_s32(vaddq_s32(v73, vcvtq_s32_f32(v64)), 0x17uLL)));
      v75 = vbslq_s8(v15, v26, vmulq_f32(vaddq_f32(v30, v70), vshlq_n_s32(vaddq_s32(v73, v72), 0x17uLL)));
      v76 = (v6 + v11);
      v76[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v74, v74, 3));
      *v76 = vbslq_s8(v15, v26, vmulq_laneq_f32(v75, v75, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v77 = 16 * v10;
    v78 = *(v7 + v77);
    v79 = *(a2 + 15);
    v80 = vmaxq_f32(vdupq_laneq_s32(v78, 3), *(a2 + 16));
    v81 = vmulq_f32(vrecpeq_f32(v80), *(a2 + 18));
    v82 = vmulq_f32(v78, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v81, vrecpsq_f32(v81, v80))), *(a2 + 3)));
    v83 = *(a2 + 5);
    v84 = vminq_f32(vmaxq_f32(v82, *(a2 + 75)), v83);
    v85 = vorrq_s8(vandq_s8(*(a2 + 19), v84), v83);
    v86 = vandq_s8(v83, vcgtq_f32(v85, *(a2 + 23)));
    v87 = vsubq_f32(vsubq_f32(v85, v83), vmulq_f32(vmulq_f32(*(a2 + 24), v86), v85));
    v88 = vmaxq_f32(vmulq_f32(*(a2 + 115), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v84, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v84))), *(a2 + 22)), v86), vmulq_f32(v87, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v87, *(a2 + 28))), vmulq_f32(vmulq_f32(v87, v87), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v87))))))), *(a2 + 29));
    v89 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
    v90 = vsubq_f32(v89, vandq_s8(v83, vcgtq_f32(v89, v88)));
    v91 = vsubq_f32(v88, v90);
    v92 = vbslq_s8(v79, v82, vmulq_f32(vaddq_f32(v83, vmulq_f32(v91, vaddq_f32(*(a2 + 32), vmulq_f32(v91, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v91)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v90)), 0x17uLL)));
    *(v6 + v77) = vbslq_s8(v79, v82, vmulq_laneq_f32(v92, v92, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 82);
      v28 = vmaxq_f32(v26, v27);
      v29 = vbslq_s8(v15, v25, vmaxq_f32(v25, v27));
      v30 = vbslq_s8(v15, v26, v28);
      v31 = *(a2 + 75);
      v32 = *(a2 + 5);
      v34 = *(a2 + 33);
      v33 = *(a2 + 34);
      v35 = vmulq_f32(v29, vbslq_s8(vcgtq_f32(v31, v29), v33, v32));
      v36 = vmulq_f32(v30, vbslq_s8(vcgtq_f32(v31, v30), v33, v32));
      v37 = *(a2 + 84);
      v38 = vminq_f32(v35, v37);
      v39 = vminq_f32(v36, v37);
      v40 = *(a2 + 19);
      v41 = *(a2 + 20);
      v42 = vorrq_s8(vandq_s8(v40, v38), v32);
      v43 = *(a2 + 21);
      v44 = *(a2 + 22);
      v45 = vorrq_s8(vandq_s8(v40, v39), v32);
      v46 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v39, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v41, v39)));
      v47 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v41, v38))), v44);
      v48 = *(a2 + 23);
      v49 = *(a2 + 24);
      v50 = vandq_s8(v32, vcgtq_f32(v42, v48));
      v51 = vandq_s8(v32, vcgtq_f32(v45, v48));
      v52 = vaddq_f32(v47, v50);
      v53 = vmulq_f32(v49, v50);
      v54 = vmulq_f32(vmulq_f32(v49, v51), v45);
      v55 = vaddq_f32(vsubq_f32(v46, v44), v51);
      v56 = vsubq_f32(vsubq_f32(v42, v32), vmulq_f32(v53, v42));
      v57 = vsubq_f32(vsubq_f32(v45, v32), v54);
      v58 = *(a2 + 25);
      v59 = *(a2 + 26);
      v60 = *(a2 + 27);
      v61 = *(a2 + 28);
      v62 = vaddq_f32(v55, vmulq_f32(v57, vaddq_f32(vaddq_f32(v60, vmulq_f32(v57, v61)), vmulq_f32(vmulq_f32(v57, v57), vaddq_f32(v58, vmulq_f32(v59, v57))))));
      v63 = *(a2 + 115);
      v64 = vmulq_f32(v63, vaddq_f32(v52, vmulq_f32(v56, vaddq_f32(vaddq_f32(v60, vmulq_f32(v56, v61)), vmulq_f32(vmulq_f32(v56, v56), vaddq_f32(v58, vmulq_f32(v59, v56)))))));
      v65 = vmulq_f32(v63, v62);
      v66 = *(a2 + 29);
      v67 = *(a2 + 30);
      v68 = vmaxq_f32(v64, v66);
      v69 = vmaxq_f32(v65, v66);
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
      v71 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
      v72 = vsubq_f32(v70, vandq_s8(v32, vcgtq_f32(v70, v68)));
      v73 = vsubq_f32(v71, vandq_s8(v32, vcgtq_f32(v71, v69)));
      v74 = vsubq_f32(v68, v72);
      v75 = vsubq_f32(v69, v73);
      v76 = *(a2 + 31);
      v77 = *(a2 + 32);
      v78 = vaddq_f32(v32, vmulq_f32(v74, vaddq_f32(v77, vmulq_f32(v74, vaddq_f32(v67, vmulq_f32(v76, v74))))));
      v79 = vaddq_f32(v32, vmulq_f32(v75, vaddq_f32(v77, vmulq_f32(v75, vaddq_f32(v67, vmulq_f32(v76, v75))))));
      v80 = *(a2 + 36);
      v81 = vbslq_s8(v15, v25, veorq_s8(vandq_s8(v80, v29), vmulq_f32(v78, vshlq_n_s32(vaddq_s32(v34, vcvtq_s32_f32(v72)), 0x17uLL))));
      v82 = vbslq_s8(v15, v26, veorq_s8(vandq_s8(v80, v30), vmulq_f32(v79, vshlq_n_s32(vaddq_s32(v34, vcvtq_s32_f32(v73)), 0x17uLL))));
      v83 = (v6 + v11);
      v83[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v81, v81, 3));
      *v83 = vbslq_s8(v15, v26, vmulq_laneq_f32(v82, v82, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v84 = 16 * v10;
    v85 = *(v7 + v84);
    v86 = *(a2 + 15);
    v87 = vmaxq_f32(vdupq_laneq_s32(v85, 3), *(a2 + 16));
    v88 = vmulq_f32(vrecpeq_f32(v87), *(a2 + 18));
    v89 = vmulq_f32(v85, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v88, vrecpsq_f32(v88, v87))), *(a2 + 3)));
    v90 = vbslq_s8(v86, v89, vmaxq_f32(v89, *(a2 + 82)));
    v91 = *(a2 + 5);
    v92 = vminq_f32(vmulq_f32(v90, vbslq_s8(vcgtq_f32(*(a2 + 75), v90), *(a2 + 34), v91)), *(a2 + 84));
    v93 = vorrq_s8(vandq_s8(*(a2 + 19), v92), v91);
    v94 = vandq_s8(v91, vcgtq_f32(v93, *(a2 + 23)));
    v95 = vsubq_f32(vsubq_f32(v93, v91), vmulq_f32(vmulq_f32(*(a2 + 24), v94), v93));
    v96 = vmaxq_f32(vmulq_f32(*(a2 + 115), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v92, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v92))), *(a2 + 22)), v94), vmulq_f32(v95, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v95, *(a2 + 28))), vmulq_f32(vmulq_f32(v95, v95), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v95))))))), *(a2 + 29));
    v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
    v98 = vsubq_f32(v97, vandq_s8(v91, vcgtq_f32(v97, v96)));
    v99 = vsubq_f32(v96, v98);
    v100 = vbslq_s8(v86, v89, veorq_s8(vandq_s8(*(a2 + 36), v90), vmulq_f32(vaddq_f32(v91, vmulq_f32(v99, vaddq_f32(*(a2 + 32), vmulq_f32(v99, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v99)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v98)), 0x17uLL))));
    *(v6 + v84) = vbslq_s8(v86, v89, vmulq_laneq_f32(v100, v100, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 82);
      v31 = vmaxq_f32(v29, v30);
      v32 = vbslq_s8(v15, v28, vmaxq_f32(v28, v30));
      v33 = vbslq_s8(v15, v29, v31);
      v34 = *(a2 + 75);
      v35 = *(a2 + 5);
      v36 = *(a2 + 33);
      v37 = *(a2 + 34);
      v38 = *(a2 + 84);
      v39 = vminq_f32(vmulq_f32(v32, vbslq_s8(vcgtq_f32(v34, v32), v37, v35)), v38);
      v40 = vminq_f32(vmulq_f32(v33, vbslq_s8(vcgtq_f32(v34, v33), v37, v35)), v38);
      v41 = *(a2 + 115);
      v42 = vcgtq_f32(vandq_s8(v35, vceqq_f32(v41, v34)), v34);
      v43 = vbslq_s8(v42, v35, v39);
      v44 = vbslq_s8(v42, v35, v40);
      v45 = *(a2 + 19);
      v46 = *(a2 + 20);
      v47 = vorrq_s8(vandq_s8(v45, v43), v35);
      v48 = vorrq_s8(vandq_s8(v45, v44), v35);
      v49 = *(a2 + 21);
      v50 = *(a2 + 22);
      v51 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v44, 0x17uLL)), vandq_s8(v49, vcgtq_f32(v46, v44)));
      v52 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v43, 0x17uLL)), vandq_s8(v49, vcgtq_f32(v46, v43))), v50);
      v53 = *(a2 + 23);
      v54 = *(a2 + 24);
      v55 = vandq_s8(v35, vcgtq_f32(v47, v53));
      v56 = vandq_s8(v35, vcgtq_f32(v48, v53));
      v57 = vaddq_f32(v52, v55);
      v58 = vaddq_f32(vsubq_f32(v51, v50), v56);
      v59 = vmulq_f32(v54, v56);
      v60 = vsubq_f32(vsubq_f32(v47, v35), vmulq_f32(vmulq_f32(v54, v55), v47));
      v61 = vsubq_f32(vsubq_f32(v48, v35), vmulq_f32(v59, v48));
      v62 = *(a2 + 38);
      v63 = *(a2 + 39);
      v64 = *(a2 + 36);
      v65 = *(a2 + 37);
      v66 = vaddq_f32(v65, vmulq_f32(v62, v60));
      v67 = *(a2 + 40);
      v68 = *(a2 + 41);
      v69 = vaddq_f32(v63, vmulq_f32(v67, v60));
      v70 = vaddq_f32(v63, vmulq_f32(v67, v61));
      v71 = *(a2 + 42);
      v72 = *(a2 + 43);
      v73 = vaddq_f32(v65, vmulq_f32(v62, v61));
      v74 = vaddq_f32(v68, vmulq_f32(v71, v60));
      v75 = vaddq_f32(v68, vmulq_f32(v71, v61));
      v76 = vmulq_f32(v60, v60);
      v77 = vaddq_f32(v66, vmulq_f32(v76, v69));
      v78 = vmulq_f32(v61, v61);
      v79 = vmulq_f32(v41, vaddq_f32(v57, vmulq_f32(v60, vaddq_f32(v72, vmulq_f32(v60, vaddq_f32(v74, vmulq_f32(v76, v77)))))));
      v80 = *(a2 + 29);
      v81 = vmulq_f32(v41, vaddq_f32(v58, vmulq_f32(v61, vaddq_f32(v72, vmulq_f32(v61, vaddq_f32(v75, vmulq_f32(v78, vaddq_f32(v73, vmulq_f32(v78, v70)))))))));
      v82 = vmaxq_f32(v79, v80);
      v83 = vmaxq_f32(v81, v80);
      v84 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
      v85 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
      v86 = vsubq_f32(v84, vandq_s8(v35, vcgtq_f32(v84, v82)));
      v87 = vsubq_f32(v85, vandq_s8(v35, vcgtq_f32(v85, v83)));
      v88 = vsubq_f32(v82, v86);
      v89 = vsubq_f32(v83, v87);
      v90 = *(a2 + 44);
      v91 = *(a2 + 45);
      v92 = vaddq_f32(v90, vmulq_f32(v91, v88));
      v93 = *(a2 + 46);
      v94 = *(a2 + 47);
      v95 = vaddq_f32(v90, vmulq_f32(v91, v89));
      v96 = *(a2 + 48);
      v97 = vbslq_s8(v15, v28, veorq_s8(vandq_s8(v64, v32), vmulq_f32(vaddq_f32(v35, vmulq_f32(v88, vaddq_f32(v96, vmulq_f32(v88, vaddq_f32(vaddq_f32(v93, vmulq_f32(v88, v94)), vmulq_f32(vmulq_f32(v88, v88), v92)))))), vshlq_n_s32(vaddq_s32(v36, vcvtq_s32_f32(v86)), 0x17uLL))));
      v98 = vbslq_s8(v15, v29, veorq_s8(vandq_s8(v64, v33), vmulq_f32(vaddq_f32(v35, vmulq_f32(v89, vaddq_f32(v96, vmulq_f32(v89, vaddq_f32(vaddq_f32(v93, vmulq_f32(v94, v89)), vmulq_f32(vmulq_f32(v89, v89), v95)))))), vshlq_n_s32(vaddq_s32(v36, vcvtq_s32_f32(v87)), 0x17uLL))));
      v99 = (v6 + v11);
      v99[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v97, v97, 3));
      *v99 = vbslq_s8(v15, v29, vmulq_laneq_f32(v98, v98, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v100 = 16 * v10;
    v101 = *(v7 + v100);
    v102 = *(a2 + 15);
    v103 = vmaxq_f32(vdupq_laneq_s32(v101, 3), *(a2 + 16));
    v104 = vrecpeq_f32(v103);
    v105 = vmulq_f32(v104, vrecpsq_f32(v104, v103));
    v106 = vmulq_f32(v101, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v105, vrecpsq_f32(v105, v103))), *(a2 + 3)));
    v107 = vbslq_s8(v102, v106, vmaxq_f32(v106, *(a2 + 82)));
    v108 = *(a2 + 5);
    v109 = *(a2 + 115);
    v110 = vbslq_s8(vcgtq_f32(vandq_s8(v108, vceqq_f32(v109, *(a2 + 75))), *(a2 + 75)), v108, vminq_f32(vmulq_f32(v107, vbslq_s8(vcgtq_f32(*(a2 + 75), v107), *(a2 + 34), v108)), *(a2 + 84)));
    v111 = vorrq_s8(vandq_s8(*(a2 + 19), v110), v108);
    v112 = vandq_s8(v108, vcgtq_f32(v111, *(a2 + 23)));
    v113 = vsubq_f32(vsubq_f32(v111, v108), vmulq_f32(vmulq_f32(*(a2 + 24), v112), v111));
    v114 = vmulq_f32(v113, v113);
    v115 = vmaxq_f32(vmulq_f32(v109, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v110, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v110))), *(a2 + 22)), v112), vmulq_f32(v113, vaddq_f32(*(a2 + 43), vmulq_f32(v113, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v113)), vmulq_f32(v114, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v113)), vmulq_f32(v114, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v113))))))))))), *(a2 + 29));
    v116 = vcvtq_f32_s32(vcvtq_s32_f32(v115));
    v117 = vsubq_f32(v116, vandq_s8(v108, vcgtq_f32(v116, v115)));
    v118 = vsubq_f32(v115, v117);
    v119 = vbslq_s8(v102, v106, veorq_s8(vandq_s8(*(a2 + 36), v107), vmulq_f32(vaddq_f32(v108, vmulq_f32(v118, vaddq_f32(*(a2 + 48), vmulq_f32(v118, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v118)), vmulq_f32(vmulq_f32(v118, v118), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v118)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v117)), 0x17uLL))));
    *(v6 + v100) = vbslq_s8(v102, v106, vmulq_laneq_f32(v119, v119, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = *(a1 + 6);
    v8 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v56 = 0;
        v57 = 16 * v8;
        v58 = 16 * v7;
        v59 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v60 = 0;
          do
          {
            v61 = *(a2 + 15);
            v62 = vmulq_f32(v5[v60 / 0x10], vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v5[v60 / 0x10], 3), *(a2 + 16)))), *(a2 + 3)));
            v63 = vminq_f32(vmaxq_f32(v62, *(a2 + 75)), *(a2 + 5));
            v64 = vbslq_s8(v61, v62, vmulq_f32(v63, v63));
            v6[v60 / 0x10] = vbslq_s8(v61, v62, vmulq_laneq_f32(v64, v64, 3));
            v60 += 16;
          }

          while (v59 != v60);
          ++v56;
          v5 = (v5 + v57);
          v6 = (v6 + v58);
        }

        while (v56 != v3);
      }
    }

    else
    {
      v9 = 0;
      v10 = 16 * v7;
      v11 = 16 * v8;
      v12 = v5 + 4;
      v13 = v6 + 4;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = 2;
        do
        {
          v18 = v5[v17 - 2];
          v19 = v5[v17 - 1];
          v20 = v5[v17];
          v21 = v5[v17 + 1];
          v23 = *(a2 + 15);
          v22 = *(a2 + 16);
          v24 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v18, 3), v22));
          v25 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v19, 3), v22));
          v26 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v20, 3), v22));
          v27 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v21, 3), v22));
          v28 = *(a2 + 17);
          v29 = vandq_s8(v28, v24);
          v30 = vandq_s8(v28, v25);
          v31 = vandq_s8(v28, v26);
          v32 = vandq_s8(v28, v27);
          v33 = *(a2 + 3);
          v34 = vmulq_f32(v18, vorrq_s8(v29, v33));
          v35 = vmulq_f32(v19, vorrq_s8(v30, v33));
          v36 = vmulq_f32(v20, vorrq_s8(v31, v33));
          v37 = vmulq_f32(v21, vorrq_s8(v32, v33));
          v38 = *(a2 + 75);
          v39 = *(a2 + 5);
          v40 = vminq_f32(vmaxq_f32(v34, v38), v39);
          v41 = vminq_f32(vmaxq_f32(v35, v38), v39);
          v42 = vminq_f32(vmaxq_f32(v36, v38), v39);
          v43 = vminq_f32(vmaxq_f32(v37, v38), v39);
          v44 = v16;
          v45 = vbslq_s8(v23, v34, vmulq_f32(v40, v40));
          v46 = vbslq_s8(v23, v35, vmulq_f32(v41, v41));
          v47 = vbslq_s8(v23, v36, vmulq_f32(v42, v42));
          v48 = vbslq_s8(v23, v37, vmulq_f32(v43, v43));
          v49 = v15;
          v50 = &v6[v17];
          v14 += 4;
          v50[-2] = vbslq_s8(v23, v34, vmulq_laneq_f32(v45, v45, 3));
          v50[-1] = vbslq_s8(v23, v35, vmulq_laneq_f32(v46, v46, 3));
          *v50 = vbslq_s8(v23, v36, vmulq_laneq_f32(v47, v47, 3));
          v50[1] = vbslq_s8(v23, v37, vmulq_laneq_f32(v48, v48, 3));
          v17 += 4;
          v16 += 4;
          v15 = v49 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v51 = *v44++;
            v52 = *(a2 + 15);
            v53 = vmulq_f32(v51, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v51, 3), *(a2 + 16)))), *(a2 + 3)));
            v54 = vminq_f32(vmaxq_f32(v53, *(a2 + 75)), *(a2 + 5));
            v55 = vbslq_s8(v52, v53, vmulq_f32(v54, v54));
            *v49++ = vbslq_s8(v52, v53, vmulq_laneq_f32(v55, v55, 3));
            ++v14;
          }

          while (v14 < v4);
        }

        ++v9;
        v6 = (v6 + v10);
        v5 = (v5 + v11);
        v12 = (v12 + v11);
        v13 = (v13 + v10);
      }

      while (v9 != v3);
    }
  }

  return 0;
}

uint64_t Getinv_quicktime_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 6);
    while (v5 < 4)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v7 += v8;
      v6 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 32;
    for (i = v5; i > 3; i -= 4)
    {
      v13 = *(v7 + v11 - 32);
      v14 = *(v7 + v11 - 16);
      v15 = *(v7 + v11);
      v16 = *(v7 + v11 + 16);
      v17 = *(a2 + 15);
      v18 = *(a2 + 16);
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v18));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v18));
      v21 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v18));
      v22 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v16, 3), v18));
      v24 = *(a2 + 17);
      v23 = *(a2 + 18);
      v25 = vandq_s8(v24, vmulq_f32(v19, v23));
      v26 = vandq_s8(v24, vmulq_f32(v20, v23));
      v27 = vandq_s8(v24, vmulq_f32(v21, v23));
      v28 = vandq_s8(v24, vmulq_f32(v22, v23));
      v29 = *(a2 + 3);
      v30 = vmulq_f32(v13, vorrq_s8(v25, v29));
      v31 = vmulq_f32(v14, vorrq_s8(v26, v29));
      v32 = vmulq_f32(v15, vorrq_s8(v27, v29));
      v33 = vmulq_f32(v16, vorrq_s8(v28, v29));
      v34 = *(a2 + 75);
      v35 = *(a2 + 5);
      v36 = *(a2 + 6);
      v37 = vmulq_f32(v36, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v30, v34), v35)));
      v38 = vmulq_f32(v36, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v31, v34), v35)));
      v39 = vmulq_f32(v36, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v32, v34), v35)));
      v40 = vmulq_f32(v36, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v33, v34), v35)));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v42 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v45 = *(a2 + 7);
      v46 = *(a2 + 8);
      v47 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v37, v41), v45));
      v48 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v38, v42), v45));
      v49 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v39, v43), v45));
      v50 = vrsqrteq_f32(vaddq_f32(v45, vsubq_f32(v40, v44)));
      v51 = vaddq_f32(v46, v41);
      v52 = vaddq_f32(v46, v42);
      v53 = vaddq_f32(v46, v43);
      v54 = vaddq_f32(v46, v44);
      v55 = *(a2 + 9);
      v56 = *(a2 + 10);
      v57 = vsubq_f32(v51, vmulq_f32(v47, v55));
      v58 = *(a2 + 116);
      v59 = vmulq_f32(v58, v57);
      v60 = vmulq_f32(v58, vsubq_f32(v52, vmulq_f32(v48, v55)));
      v61 = vmulq_f32(v58, vsubq_f32(v53, vmulq_f32(v49, v55)));
      v62 = vmulq_f32(v58, vsubq_f32(v54, vmulq_f32(v50, v55)));
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v59));
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v67 = vsubq_f32(v63, vandq_s8(v35, vcgtq_f32(v63, v59)));
      v68 = vsubq_f32(v64, vandq_s8(v35, vcgtq_f32(v64, v60)));
      v69 = vsubq_f32(v65, vandq_s8(v35, vcgtq_f32(v65, v61)));
      v70 = vsubq_f32(v66, vandq_s8(v35, vcgtq_f32(v66, v62)));
      v71 = *(a2 + 11);
      v72 = *(a2 + 12);
      v73 = vmulq_f32(vrecpeq_f32(vsubq_f32(v71, vsubq_f32(v59, v67))), v72);
      v74 = vmulq_f32(vrecpeq_f32(vsubq_f32(v71, vsubq_f32(v60, v68))), v72);
      v75 = vmulq_f32(vrecpeq_f32(vsubq_f32(v71, vsubq_f32(v61, v69))), v72);
      v76 = vmulq_f32(vrecpeq_f32(vsubq_f32(v71, vsubq_f32(v62, v70))), v72);
      v77 = vmaxq_f32(vaddq_f32(vaddq_f32(v67, v56), vmulq_f32(v73, v73)), v34);
      v78 = vmaxq_f32(vaddq_f32(vaddq_f32(v56, v68), vmulq_f32(v74, v74)), v34);
      v79 = vmaxq_f32(vaddq_f32(vaddq_f32(v56, v69), vmulq_f32(v75, v75)), v34);
      v80 = vmaxq_f32(vaddq_f32(vaddq_f32(v56, v70), vmulq_f32(v76, v76)), v34);
      v81 = *(a2 + 13);
      v82 = *(a2 + 14);
      v83 = vminq_f32(v78, v81);
      v84 = vminq_f32(v79, v81);
      v85 = vminq_f32(v80, v81);
      v86 = vbslq_s8(v17, v30, vcvtq_s32_f32(vmulq_f32(vminq_f32(v77, v81), v82)));
      v87 = vbslq_s8(v17, v31, vcvtq_s32_f32(vmulq_f32(v83, v82)));
      v88 = vbslq_s8(v17, v32, vcvtq_s32_f32(vmulq_f32(v84, v82)));
      v89 = vbslq_s8(v17, v33, vcvtq_s32_f32(vmulq_f32(v85, v82)));
      v90 = (v6 + v11);
      v90[-2] = vbslq_s8(v17, v30, vmulq_laneq_f32(v86, v86, 3));
      v90[-1] = vbslq_s8(v17, v31, vmulq_laneq_f32(v87, v87, 3));
      *v90 = vbslq_s8(v17, v32, vmulq_laneq_f32(v88, v88, 3));
      v90[1] = vbslq_s8(v17, v33, vmulq_laneq_f32(v89, v89, 3));
      v10 += 4;
      v11 += 64;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v91 = *(a2 + 15);
      v92 = vmulq_f32(*(v7 + 16 * v10), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v10), 3), *(a2 + 16))), *(a2 + 18))), *(a2 + 3)));
      v93 = *(a2 + 75);
      v94 = *(a2 + 5);
      v95 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vminq_f32(vmaxq_f32(v92, v93), v94)));
      v96 = vcvtq_f32_s32(vcvtq_s32_f32(v95));
      v97 = vmulq_f32(*(a2 + 116), vsubq_f32(vaddq_f32(*(a2 + 8), v96), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v95, v96))), *(a2 + 9))));
      v98 = vcvtq_f32_s32(vcvtq_s32_f32(v97));
      v99 = vsubq_f32(v98, vandq_s8(v94, vcgtq_f32(v98, v97)));
      v100 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v97, v99))), *(a2 + 12));
      v101 = vbslq_s8(v91, v92, vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v99), vmulq_f32(v100, v100)), v93), *(a2 + 13)), *(a2 + 14))));
      *(v6 + 16 * v10++) = vbslq_s8(v91, v92, vmulq_laneq_f32(v101, v101, 3));
    }

    while (v10 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vorrq_s8(v26, v27);
      v29 = vmulq_f32(v14, vorrq_s8(v25, v27));
      v30 = *(a2 + 75);
      v31 = vmulq_f32(v13, v28);
      v32 = *(a2 + 5);
      v33 = vminq_f32(vmaxq_f32(v29, v30), v32);
      v34 = *(a2 + 116);
      v35 = vminq_f32(vmaxq_f32(v31, v30), v32);
      v36 = vcgtq_f32(vandq_s8(v32, vceqq_f32(v34, v30)), v30);
      v37 = vbslq_s8(v36, v32, v33);
      v38 = vbslq_s8(v36, v32, v35);
      v40 = *(a2 + 19);
      v39 = *(a2 + 20);
      v41 = vorrq_s8(vandq_s8(v40, v37), v32);
      v42 = vorrq_s8(vandq_s8(v40, v38), v32);
      v43 = *(a2 + 21);
      v44 = *(a2 + 22);
      v45 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v39, v38)));
      v46 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v39, v37))), v44);
      v47 = *(a2 + 23);
      v48 = *(a2 + 24);
      v49 = vandq_s8(v32, vcgtq_f32(v41, v47));
      v50 = vandq_s8(v32, vcgtq_f32(v42, v47));
      v51 = vaddq_f32(v46, v49);
      v52 = vaddq_f32(vsubq_f32(v45, v44), v50);
      v53 = vsubq_f32(vsubq_f32(v41, v32), vmulq_f32(vmulq_f32(v48, v49), v41));
      v54 = vsubq_f32(vsubq_f32(v42, v32), vmulq_f32(vmulq_f32(v48, v50), v42));
      v55 = vmulq_f32(v53, v53);
      v56 = *(a2 + 37);
      v57 = *(a2 + 38);
      v58 = *(a2 + 39);
      v59 = *(a2 + 40);
      v60 = vaddq_f32(v56, vmulq_f32(v57, v53));
      v61 = vaddq_f32(v58, vmulq_f32(v59, v53));
      v62 = vaddq_f32(v58, vmulq_f32(v59, v54));
      v63 = vaddq_f32(v56, vmulq_f32(v57, v54));
      v64 = *(a2 + 41);
      v65 = *(a2 + 42);
      v66 = vaddq_f32(v64, vmulq_f32(v65, v53));
      v67 = vaddq_f32(v64, vmulq_f32(v65, v54));
      v68 = vmulq_f32(v54, v54);
      v69 = vaddq_f32(v66, vmulq_f32(v55, vaddq_f32(v60, vmulq_f32(v55, v61))));
      v70 = vaddq_f32(v67, vmulq_f32(v68, vaddq_f32(v63, vmulq_f32(v68, v62))));
      v71 = *(a2 + 43);
      v72 = *(a2 + 44);
      v73 = vmulq_f32(v34, vaddq_f32(v51, vmulq_f32(v53, vaddq_f32(v71, vmulq_f32(v53, v69)))));
      v74 = vmulq_f32(v34, vaddq_f32(v52, vmulq_f32(v54, vaddq_f32(v71, vmulq_f32(v54, v70)))));
      v75 = *(a2 + 29);
      v76 = vmaxq_f32(v73, v75);
      v77 = vmaxq_f32(v74, v75);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v32, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v32, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = *(a2 + 45);
      v85 = *(a2 + 46);
      v86 = vaddq_f32(v72, vmulq_f32(v84, v82));
      v87 = vaddq_f32(v72, vmulq_f32(v84, v83));
      v88 = *(a2 + 47);
      v89 = *(a2 + 48);
      v90 = vaddq_f32(v32, vmulq_f32(v82, vaddq_f32(v89, vmulq_f32(v82, vaddq_f32(vaddq_f32(v85, vmulq_f32(v82, v88)), vmulq_f32(vmulq_f32(v82, v82), v86))))));
      v91 = *(a2 + 33);
      v92 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v83, vaddq_f32(v89, vmulq_f32(v83, vaddq_f32(vaddq_f32(v85, vmulq_f32(v88, v83)), vmulq_f32(vmulq_f32(v83, v83), v87)))))), vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v81)), 0x17uLL));
      v93 = vbslq_s8(v15, v29, vmulq_f32(v90, vshlq_n_s32(vaddq_s32(v91, vcvtq_s32_f32(v80)), 0x17uLL)));
      v94 = vbslq_s8(v15, v31, v92);
      v95 = (v6 + v11);
      v95[-1] = vbslq_s8(v15, v29, vmulq_laneq_f32(v93, v93, 3));
      *v95 = vbslq_s8(v15, v31, vmulq_laneq_f32(v94, v94, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v96 = 16 * v10;
    v97 = *(v7 + v96);
    v98 = *(a2 + 15);
    v99 = vmaxq_f32(vdupq_laneq_s32(v97, 3), *(a2 + 16));
    v100 = vrecpeq_f32(v99);
    v101 = vmulq_f32(v100, vrecpsq_f32(v100, v99));
    v102 = vmulq_f32(v97, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v101, vrecpsq_f32(v101, v99))), *(a2 + 3)));
    v103 = *(a2 + 5);
    v104 = *(a2 + 116);
    v105 = vbslq_s8(vcgtq_f32(vandq_s8(v103, vceqq_f32(v104, *(a2 + 75))), *(a2 + 75)), v103, vminq_f32(vmaxq_f32(v102, *(a2 + 75)), v103));
    v106 = vorrq_s8(vandq_s8(*(a2 + 19), v105), v103);
    v107 = vandq_s8(v103, vcgtq_f32(v106, *(a2 + 23)));
    v108 = vsubq_f32(vsubq_f32(v106, v103), vmulq_f32(vmulq_f32(*(a2 + 24), v107), v106));
    v109 = vmulq_f32(v108, v108);
    v110 = vmaxq_f32(vmulq_f32(v104, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v105, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v105))), *(a2 + 22)), v107), vmulq_f32(v108, vaddq_f32(*(a2 + 43), vmulq_f32(v108, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v108)), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v108)), vmulq_f32(v109, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v108))))))))))), *(a2 + 29));
    v111 = vcvtq_f32_s32(vcvtq_s32_f32(v110));
    v112 = vsubq_f32(v111, vandq_s8(v103, vcgtq_f32(v111, v110)));
    v113 = vsubq_f32(v110, v112);
    v114 = vbslq_s8(v98, v102, vmulq_f32(vaddq_f32(v103, vmulq_f32(v113, vaddq_f32(*(a2 + 48), vmulq_f32(v113, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v113)), vmulq_f32(vmulq_f32(v113, v113), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v113)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v112)), 0x17uLL)));
    *(v6 + v96) = vbslq_s8(v98, v102, vmulq_laneq_f32(v114, v114, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 75);
      v28 = vmaxq_f32(v25, v27);
      v29 = vmaxq_f32(v26, v27);
      v30 = *(a2 + 5);
      v31 = vminq_f32(v28, v30);
      v32 = vminq_f32(v29, v30);
      v33 = *(a2 + 19);
      v34 = *(a2 + 20);
      v35 = vorrq_s8(vandq_s8(v33, v31), v30);
      v36 = vorrq_s8(vandq_s8(v33, v32), v30);
      v37 = *(a2 + 21);
      v38 = *(a2 + 22);
      v39 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v34, v32)));
      v40 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v34, v31))), v38);
      v41 = *(a2 + 23);
      v42 = *(a2 + 24);
      v43 = vandq_s8(v30, vcgtq_f32(v35, v41));
      v44 = vandq_s8(v30, vcgtq_f32(v36, v41));
      v45 = vaddq_f32(v40, v43);
      v46 = vaddq_f32(vsubq_f32(v39, v38), v44);
      v47 = vsubq_f32(vsubq_f32(v35, v30), vmulq_f32(vmulq_f32(v42, v43), v35));
      v48 = vsubq_f32(vsubq_f32(v36, v30), vmulq_f32(vmulq_f32(v42, v44), v36));
      v49 = *(a2 + 25);
      v50 = *(a2 + 26);
      v51 = vaddq_f32(v49, vmulq_f32(v50, v47));
      v52 = vaddq_f32(v49, vmulq_f32(v50, v48));
      v53 = *(a2 + 27);
      v54 = *(a2 + 28);
      v55 = *(a2 + 116);
      v56 = vmulq_f32(v55, vaddq_f32(v45, vmulq_f32(v47, vaddq_f32(vaddq_f32(v53, vmulq_f32(v47, v54)), vmulq_f32(vmulq_f32(v47, v47), v51)))));
      v57 = vmulq_f32(v55, vaddq_f32(v46, vmulq_f32(v48, vaddq_f32(vaddq_f32(v53, vmulq_f32(v48, v54)), vmulq_f32(vmulq_f32(v48, v48), v52)))));
      v58 = *(a2 + 29);
      v59 = *(a2 + 30);
      v60 = vmaxq_f32(v56, v58);
      v61 = vmaxq_f32(v57, v58);
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vsubq_f32(v62, vandq_s8(v30, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v63, vandq_s8(v30, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v60, v64);
      v67 = vsubq_f32(v61, v65);
      v68 = *(a2 + 31);
      v69 = *(a2 + 32);
      v70 = vmulq_f32(v67, vaddq_f32(v69, vmulq_f32(v67, vaddq_f32(v59, vmulq_f32(v68, v67)))));
      v71 = vaddq_f32(v30, vmulq_f32(v66, vaddq_f32(v69, vmulq_f32(v66, vaddq_f32(v59, vmulq_f32(v68, v66))))));
      v72 = vcvtq_s32_f32(v65);
      v73 = *(a2 + 33);
      v74 = vbslq_s8(v15, v25, vmulq_f32(v71, vshlq_n_s32(vaddq_s32(v73, vcvtq_s32_f32(v64)), 0x17uLL)));
      v75 = vbslq_s8(v15, v26, vmulq_f32(vaddq_f32(v30, v70), vshlq_n_s32(vaddq_s32(v73, v72), 0x17uLL)));
      v76 = (v6 + v11);
      v76[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v74, v74, 3));
      *v76 = vbslq_s8(v15, v26, vmulq_laneq_f32(v75, v75, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v77 = 16 * v10;
    v78 = *(v7 + v77);
    v79 = *(a2 + 15);
    v80 = vmaxq_f32(vdupq_laneq_s32(v78, 3), *(a2 + 16));
    v81 = vmulq_f32(vrecpeq_f32(v80), *(a2 + 18));
    v82 = vmulq_f32(v78, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v81, vrecpsq_f32(v81, v80))), *(a2 + 3)));
    v83 = *(a2 + 5);
    v84 = vminq_f32(vmaxq_f32(v82, *(a2 + 75)), v83);
    v85 = vorrq_s8(vandq_s8(*(a2 + 19), v84), v83);
    v86 = vandq_s8(v83, vcgtq_f32(v85, *(a2 + 23)));
    v87 = vsubq_f32(vsubq_f32(v85, v83), vmulq_f32(vmulq_f32(*(a2 + 24), v86), v85));
    v88 = vmaxq_f32(vmulq_f32(*(a2 + 116), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v84, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v84))), *(a2 + 22)), v86), vmulq_f32(v87, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v87, *(a2 + 28))), vmulq_f32(vmulq_f32(v87, v87), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v87))))))), *(a2 + 29));
    v89 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
    v90 = vsubq_f32(v89, vandq_s8(v83, vcgtq_f32(v89, v88)));
    v91 = vsubq_f32(v88, v90);
    v92 = vbslq_s8(v79, v82, vmulq_f32(vaddq_f32(v83, vmulq_f32(v91, vaddq_f32(*(a2 + 32), vmulq_f32(v91, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v91)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v90)), 0x17uLL)));
    *(v6 + v77) = vbslq_s8(v79, v82, vmulq_laneq_f32(v92, v92, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 82);
      v28 = vmaxq_f32(v26, v27);
      v29 = vbslq_s8(v15, v25, vmaxq_f32(v25, v27));
      v30 = vbslq_s8(v15, v26, v28);
      v31 = *(a2 + 75);
      v32 = *(a2 + 5);
      v34 = *(a2 + 33);
      v33 = *(a2 + 34);
      v35 = vmulq_f32(v29, vbslq_s8(vcgtq_f32(v31, v29), v33, v32));
      v36 = vmulq_f32(v30, vbslq_s8(vcgtq_f32(v31, v30), v33, v32));
      v37 = *(a2 + 90);
      v38 = vminq_f32(v35, v37);
      v39 = vminq_f32(v36, v37);
      v40 = *(a2 + 19);
      v41 = *(a2 + 20);
      v42 = vorrq_s8(vandq_s8(v40, v38), v32);
      v43 = *(a2 + 21);
      v44 = *(a2 + 22);
      v45 = vorrq_s8(vandq_s8(v40, v39), v32);
      v46 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v39, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v41, v39)));
      v47 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v38, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v41, v38))), v44);
      v48 = *(a2 + 23);
      v49 = *(a2 + 24);
      v50 = vandq_s8(v32, vcgtq_f32(v42, v48));
      v51 = vandq_s8(v32, vcgtq_f32(v45, v48));
      v52 = vaddq_f32(v47, v50);
      v53 = vmulq_f32(v49, v50);
      v54 = vmulq_f32(vmulq_f32(v49, v51), v45);
      v55 = vaddq_f32(vsubq_f32(v46, v44), v51);
      v56 = vsubq_f32(vsubq_f32(v42, v32), vmulq_f32(v53, v42));
      v57 = vsubq_f32(vsubq_f32(v45, v32), v54);
      v58 = *(a2 + 25);
      v59 = *(a2 + 26);
      v60 = *(a2 + 27);
      v61 = *(a2 + 28);
      v62 = vaddq_f32(v55, vmulq_f32(v57, vaddq_f32(vaddq_f32(v60, vmulq_f32(v57, v61)), vmulq_f32(vmulq_f32(v57, v57), vaddq_f32(v58, vmulq_f32(v59, v57))))));
      v63 = *(a2 + 116);
      v64 = vmulq_f32(v63, vaddq_f32(v52, vmulq_f32(v56, vaddq_f32(vaddq_f32(v60, vmulq_f32(v56, v61)), vmulq_f32(vmulq_f32(v56, v56), vaddq_f32(v58, vmulq_f32(v59, v56)))))));
      v65 = vmulq_f32(v63, v62);
      v66 = *(a2 + 29);
      v67 = *(a2 + 30);
      v68 = vmaxq_f32(v64, v66);
      v69 = vmaxq_f32(v65, v66);
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
      v71 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
      v72 = vsubq_f32(v70, vandq_s8(v32, vcgtq_f32(v70, v68)));
      v73 = vsubq_f32(v71, vandq_s8(v32, vcgtq_f32(v71, v69)));
      v74 = vsubq_f32(v68, v72);
      v75 = vsubq_f32(v69, v73);
      v76 = *(a2 + 31);
      v77 = *(a2 + 32);
      v78 = vaddq_f32(v32, vmulq_f32(v74, vaddq_f32(v77, vmulq_f32(v74, vaddq_f32(v67, vmulq_f32(v76, v74))))));
      v79 = vaddq_f32(v32, vmulq_f32(v75, vaddq_f32(v77, vmulq_f32(v75, vaddq_f32(v67, vmulq_f32(v76, v75))))));
      v80 = *(a2 + 36);
      v81 = vbslq_s8(v15, v25, veorq_s8(vandq_s8(v80, v29), vmulq_f32(v78, vshlq_n_s32(vaddq_s32(v34, vcvtq_s32_f32(v72)), 0x17uLL))));
      v82 = vbslq_s8(v15, v26, veorq_s8(vandq_s8(v80, v30), vmulq_f32(v79, vshlq_n_s32(vaddq_s32(v34, vcvtq_s32_f32(v73)), 0x17uLL))));
      v83 = (v6 + v11);
      v83[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v81, v81, 3));
      *v83 = vbslq_s8(v15, v26, vmulq_laneq_f32(v82, v82, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v84 = 16 * v10;
    v85 = *(v7 + v84);
    v86 = *(a2 + 15);
    v87 = vmaxq_f32(vdupq_laneq_s32(v85, 3), *(a2 + 16));
    v88 = vmulq_f32(vrecpeq_f32(v87), *(a2 + 18));
    v89 = vmulq_f32(v85, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v88, vrecpsq_f32(v88, v87))), *(a2 + 3)));
    v90 = vbslq_s8(v86, v89, vmaxq_f32(v89, *(a2 + 82)));
    v91 = *(a2 + 5);
    v92 = vminq_f32(vmulq_f32(v90, vbslq_s8(vcgtq_f32(*(a2 + 75), v90), *(a2 + 34), v91)), *(a2 + 90));
    v93 = vorrq_s8(vandq_s8(*(a2 + 19), v92), v91);
    v94 = vandq_s8(v91, vcgtq_f32(v93, *(a2 + 23)));
    v95 = vsubq_f32(vsubq_f32(v93, v91), vmulq_f32(vmulq_f32(*(a2 + 24), v94), v93));
    v96 = vmaxq_f32(vmulq_f32(*(a2 + 116), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v92, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v92))), *(a2 + 22)), v94), vmulq_f32(v95, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v95, *(a2 + 28))), vmulq_f32(vmulq_f32(v95, v95), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v95))))))), *(a2 + 29));
    v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
    v98 = vsubq_f32(v97, vandq_s8(v91, vcgtq_f32(v97, v96)));
    v99 = vsubq_f32(v96, v98);
    v100 = vbslq_s8(v86, v89, veorq_s8(vandq_s8(*(a2 + 36), v90), vmulq_f32(vaddq_f32(v91, vmulq_f32(v99, vaddq_f32(*(a2 + 32), vmulq_f32(v99, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v99)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v98)), 0x17uLL))));
    *(v6 + v84) = vbslq_s8(v86, v89, vmulq_laneq_f32(v100, v100, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = vandq_s8(v24, v23);
      v26 = vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v13, vorrq_s8(v25, v27));
      v29 = vmulq_f32(v14, vorrq_s8(v26, v27));
      v30 = *(a2 + 82);
      v31 = vmaxq_f32(v29, v30);
      v32 = vbslq_s8(v15, v28, vmaxq_f32(v28, v30));
      v33 = vbslq_s8(v15, v29, v31);
      v34 = *(a2 + 75);
      v35 = *(a2 + 5);
      v36 = *(a2 + 33);
      v37 = *(a2 + 34);
      v38 = *(a2 + 90);
      v39 = vminq_f32(vmulq_f32(v32, vbslq_s8(vcgtq_f32(v34, v32), v37, v35)), v38);
      v40 = vminq_f32(vmulq_f32(v33, vbslq_s8(vcgtq_f32(v34, v33), v37, v35)), v38);
      v41 = *(a2 + 116);
      v42 = vcgtq_f32(vandq_s8(v35, vceqq_f32(v41, v34)), v34);
      v43 = vbslq_s8(v42, v35, v39);
      v44 = vbslq_s8(v42, v35, v40);
      v45 = *(a2 + 19);
      v46 = *(a2 + 20);
      v47 = vorrq_s8(vandq_s8(v45, v43), v35);
      v48 = vorrq_s8(vandq_s8(v45, v44), v35);
      v49 = *(a2 + 21);
      v50 = *(a2 + 22);
      v51 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v44, 0x17uLL)), vandq_s8(v49, vcgtq_f32(v46, v44)));
      v52 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v43, 0x17uLL)), vandq_s8(v49, vcgtq_f32(v46, v43))), v50);
      v53 = *(a2 + 23);
      v54 = *(a2 + 24);
      v55 = vandq_s8(v35, vcgtq_f32(v47, v53));
      v56 = vandq_s8(v35, vcgtq_f32(v48, v53));
      v57 = vaddq_f32(v52, v55);
      v58 = vaddq_f32(vsubq_f32(v51, v50), v56);
      v59 = vmulq_f32(v54, v56);
      v60 = vsubq_f32(vsubq_f32(v47, v35), vmulq_f32(vmulq_f32(v54, v55), v47));
      v61 = vsubq_f32(vsubq_f32(v48, v35), vmulq_f32(v59, v48));
      v62 = *(a2 + 38);
      v63 = *(a2 + 39);
      v64 = *(a2 + 36);
      v65 = *(a2 + 37);
      v66 = vaddq_f32(v65, vmulq_f32(v62, v60));
      v67 = *(a2 + 40);
      v68 = *(a2 + 41);
      v69 = vaddq_f32(v63, vmulq_f32(v67, v60));
      v70 = vaddq_f32(v63, vmulq_f32(v67, v61));
      v71 = *(a2 + 42);
      v72 = *(a2 + 43);
      v73 = vaddq_f32(v65, vmulq_f32(v62, v61));
      v74 = vaddq_f32(v68, vmulq_f32(v71, v60));
      v75 = vaddq_f32(v68, vmulq_f32(v71, v61));
      v76 = vmulq_f32(v60, v60);
      v77 = vaddq_f32(v66, vmulq_f32(v76, v69));
      v78 = vmulq_f32(v61, v61);
      v79 = vmulq_f32(v41, vaddq_f32(v57, vmulq_f32(v60, vaddq_f32(v72, vmulq_f32(v60, vaddq_f32(v74, vmulq_f32(v76, v77)))))));
      v80 = *(a2 + 29);
      v81 = vmulq_f32(v41, vaddq_f32(v58, vmulq_f32(v61, vaddq_f32(v72, vmulq_f32(v61, vaddq_f32(v75, vmulq_f32(v78, vaddq_f32(v73, vmulq_f32(v78, v70)))))))));
      v82 = vmaxq_f32(v79, v80);
      v83 = vmaxq_f32(v81, v80);
      v84 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
      v85 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
      v86 = vsubq_f32(v84, vandq_s8(v35, vcgtq_f32(v84, v82)));
      v87 = vsubq_f32(v85, vandq_s8(v35, vcgtq_f32(v85, v83)));
      v88 = vsubq_f32(v82, v86);
      v89 = vsubq_f32(v83, v87);
      v90 = *(a2 + 44);
      v91 = *(a2 + 45);
      v92 = vaddq_f32(v90, vmulq_f32(v91, v88));
      v93 = *(a2 + 46);
      v94 = *(a2 + 47);
      v95 = vaddq_f32(v90, vmulq_f32(v91, v89));
      v96 = *(a2 + 48);
      v97 = vbslq_s8(v15, v28, veorq_s8(vandq_s8(v64, v32), vmulq_f32(vaddq_f32(v35, vmulq_f32(v88, vaddq_f32(v96, vmulq_f32(v88, vaddq_f32(vaddq_f32(v93, vmulq_f32(v88, v94)), vmulq_f32(vmulq_f32(v88, v88), v92)))))), vshlq_n_s32(vaddq_s32(v36, vcvtq_s32_f32(v86)), 0x17uLL))));
      v98 = vbslq_s8(v15, v29, veorq_s8(vandq_s8(v64, v33), vmulq_f32(vaddq_f32(v35, vmulq_f32(v89, vaddq_f32(v96, vmulq_f32(v89, vaddq_f32(vaddq_f32(v93, vmulq_f32(v94, v89)), vmulq_f32(vmulq_f32(v89, v89), v95)))))), vshlq_n_s32(vaddq_s32(v36, vcvtq_s32_f32(v87)), 0x17uLL))));
      v99 = (v6 + v11);
      v99[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v97, v97, 3));
      *v99 = vbslq_s8(v15, v29, vmulq_laneq_f32(v98, v98, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v100 = 16 * v10;
    v101 = *(v7 + v100);
    v102 = *(a2 + 15);
    v103 = vmaxq_f32(vdupq_laneq_s32(v101, 3), *(a2 + 16));
    v104 = vrecpeq_f32(v103);
    v105 = vmulq_f32(v104, vrecpsq_f32(v104, v103));
    v106 = vmulq_f32(v101, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v105, vrecpsq_f32(v105, v103))), *(a2 + 3)));
    v107 = vbslq_s8(v102, v106, vmaxq_f32(v106, *(a2 + 82)));
    v108 = *(a2 + 5);
    v109 = *(a2 + 116);
    v110 = vbslq_s8(vcgtq_f32(vandq_s8(v108, vceqq_f32(v109, *(a2 + 75))), *(a2 + 75)), v108, vminq_f32(vmulq_f32(v107, vbslq_s8(vcgtq_f32(*(a2 + 75), v107), *(a2 + 34), v108)), *(a2 + 90)));
    v111 = vorrq_s8(vandq_s8(*(a2 + 19), v110), v108);
    v112 = vandq_s8(v108, vcgtq_f32(v111, *(a2 + 23)));
    v113 = vsubq_f32(vsubq_f32(v111, v108), vmulq_f32(vmulq_f32(*(a2 + 24), v112), v111));
    v114 = vmulq_f32(v113, v113);
    v115 = vmaxq_f32(vmulq_f32(v109, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v110, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v110))), *(a2 + 22)), v112), vmulq_f32(v113, vaddq_f32(*(a2 + 43), vmulq_f32(v113, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v113)), vmulq_f32(v114, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v113)), vmulq_f32(v114, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v113))))))))))), *(a2 + 29));
    v116 = vcvtq_f32_s32(vcvtq_s32_f32(v115));
    v117 = vsubq_f32(v116, vandq_s8(v108, vcgtq_f32(v116, v115)));
    v118 = vsubq_f32(v115, v117);
    v119 = vbslq_s8(v102, v106, veorq_s8(vandq_s8(*(a2 + 36), v107), vmulq_f32(vaddq_f32(v108, vmulq_f32(v118, vaddq_f32(*(a2 + 48), vmulq_f32(v118, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v118)), vmulq_f32(vmulq_f32(v118, v118), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v118)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v117)), 0x17uLL))));
    *(v6 + v100) = vbslq_s8(v102, v106, vmulq_laneq_f32(v119, v119, 3));
    goto LABEL_3;
  }

  return 0;
}