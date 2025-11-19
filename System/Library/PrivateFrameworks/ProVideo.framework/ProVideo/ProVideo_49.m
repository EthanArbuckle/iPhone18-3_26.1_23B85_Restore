uint64_t Gettype0_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v17 = *(a2 + 3);
      v18 = *(a2 + 5);
      v19 = *(a2 + 6);
      v20 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v13, v17), v18)));
      v21 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v14, v17), v18)));
      v22 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v15, v17), v18)));
      v23 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v16, v17), v18)));
      v24 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
      v25 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v28 = *(a2 + 7);
      v29 = *(a2 + 8);
      v30 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v20, v24), v28));
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v21, v25), v28));
      v32 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v22, v26), v28));
      v33 = vrsqrteq_f32(vaddq_f32(v28, vsubq_f32(v23, v27)));
      v34 = vaddq_f32(v29, v24);
      v35 = vaddq_f32(v29, v25);
      v36 = vaddq_f32(v29, v26);
      v37 = vaddq_f32(v29, v27);
      v38 = *(a2 + 9);
      v39 = *(a2 + 10);
      v40 = vmulq_n_f32(vsubq_f32(v34, vmulq_f32(v30, v38)), COERCE_FLOAT(*a2));
      v41 = vmulq_n_f32(vsubq_f32(v35, vmulq_f32(v31, v38)), COERCE_FLOAT(*a2));
      v42 = vmulq_n_f32(vsubq_f32(v36, vmulq_f32(v32, v38)), COERCE_FLOAT(*a2));
      v43 = vmulq_n_f32(vsubq_f32(v37, vmulq_f32(v33, v38)), COERCE_FLOAT(*a2));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v48 = vsubq_f32(v44, vandq_s8(v18, vcgtq_f32(v44, v40)));
      v49 = vsubq_f32(v45, vandq_s8(v18, vcgtq_f32(v45, v41)));
      v50 = vsubq_f32(v46, vandq_s8(v18, vcgtq_f32(v46, v42)));
      v51 = vsubq_f32(v47, vandq_s8(v18, vcgtq_f32(v47, v43)));
      v52 = *(a2 + 11);
      v53 = *(a2 + 12);
      v54 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, vsubq_f32(v40, v48))), v53);
      v55 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, vsubq_f32(v41, v49))), v53);
      v56 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, vsubq_f32(v42, v50))), v53);
      v57 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, vsubq_f32(v43, v51))), v53);
      v58 = vmaxq_f32(vaddq_f32(vaddq_f32(v48, v39), vmulq_f32(v54, v54)), v17);
      v59 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v49), vmulq_f32(v55, v55)), v17);
      v60 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v50), vmulq_f32(v56, v56)), v17);
      v61 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v51), vmulq_f32(v57, v57)), v17);
      v62 = *(a2 + 13);
      v63 = *(a2 + 14);
      v64 = vminq_f32(v59, v62);
      v65 = vminq_f32(v60, v62);
      v66 = vminq_f32(v61, v62);
      v67 = vmulq_f32(vminq_f32(v58, v62), v63);
      v68 = vmulq_f32(v64, v63);
      v69 = vcvtq_s32_f32(vmulq_f32(v65, v63));
      v70 = *(a2 + 15);
      v71 = (v6 + v11);
      v71[-2] = vbslq_s8(v70, v13, vcvtq_s32_f32(v67));
      v71[-1] = vbslq_s8(v70, v14, vcvtq_s32_f32(v68));
      *v71 = vbslq_s8(v70, v15, v69);
      v71[1] = vbslq_s8(v70, v16, vcvtq_s32_f32(vmulq_f32(v66, v63)));
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
      v72 = *(v7 + 16 * v10);
      v73 = *(a2 + 3);
      v74 = *(a2 + 5);
      v75 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vminq_f32(vmaxq_f32(v72, v73), v74)));
      v76 = vcvtq_f32_s32(vcvtq_s32_f32(v75));
      v77 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v76), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v75, v76))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v79 = vsubq_f32(v78, vandq_s8(v74, vcgtq_f32(v78, v77)));
      v80 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v77, v79))), *(a2 + 12));
      *(v6 + 16 * v10++) = vbslq_s8(*(a2 + 15), v72, vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v79), vmulq_f32(v80, v80)), v73), *(a2 + 13)), *(a2 + 14))));
    }

    while (v10 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v17 = *(a2 + 3);
      v18 = *(a2 + 5);
      v19 = *(a2 + 6);
      v20 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v13, v17), v18)));
      v21 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v14, v17), v18)));
      v22 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v15, v17), v18)));
      v23 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v16, v17), v18)));
      v24 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
      v25 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v28 = *(a2 + 7);
      v29 = *(a2 + 8);
      v30 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v20, v24), v28));
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v21, v25), v28));
      v32 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v22, v26), v28));
      v33 = vrsqrteq_f32(vaddq_f32(v28, vsubq_f32(v23, v27)));
      v34 = vaddq_f32(v29, v24);
      v35 = vaddq_f32(v29, v25);
      v36 = vaddq_f32(v29, v26);
      v37 = vaddq_f32(v29, v27);
      v38 = *(a2 + 9);
      v39 = *(a2 + 10);
      v40 = vmulq_n_f32(vsubq_f32(v34, vmulq_f32(v30, v38)), COERCE_FLOAT(*a2));
      v41 = vmulq_n_f32(vsubq_f32(v35, vmulq_f32(v31, v38)), COERCE_FLOAT(*a2));
      v42 = vmulq_n_f32(vsubq_f32(v36, vmulq_f32(v32, v38)), COERCE_FLOAT(*a2));
      v43 = vmulq_n_f32(vsubq_f32(v37, vmulq_f32(v33, v38)), COERCE_FLOAT(*a2));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v48 = vsubq_f32(v44, vandq_s8(v18, vcgtq_f32(v44, v40)));
      v49 = vsubq_f32(v45, vandq_s8(v18, vcgtq_f32(v45, v41)));
      v50 = vsubq_f32(v46, vandq_s8(v18, vcgtq_f32(v46, v42)));
      v51 = vsubq_f32(v47, vandq_s8(v18, vcgtq_f32(v47, v43)));
      v52 = *(a2 + 11);
      v53 = *(a2 + 12);
      v54 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, vsubq_f32(v40, v48))), v53);
      v55 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, vsubq_f32(v41, v49))), v53);
      v56 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, vsubq_f32(v42, v50))), v53);
      v57 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, vsubq_f32(v43, v51))), v53);
      v58 = vmaxq_f32(vaddq_f32(vaddq_f32(v48, v39), vmulq_f32(v54, v54)), v17);
      v59 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v49), vmulq_f32(v55, v55)), v17);
      v60 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v50), vmulq_f32(v56, v56)), v17);
      v61 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v51), vmulq_f32(v57, v57)), v17);
      v62 = *(a2 + 13);
      v63 = *(a2 + 14);
      v64 = vminq_f32(v59, v62);
      v65 = vminq_f32(v60, v62);
      v66 = vminq_f32(v61, v62);
      v67 = vmulq_f32(vminq_f32(v58, v62), v63);
      v68 = vmulq_f32(v64, v63);
      v69 = vcvtq_s32_f32(vmulq_f32(v65, v63));
      v70 = *(a2 + 15);
      v71 = (v6 + v11);
      v71[-2] = vbslq_s8(v70, v13, vcvtq_s32_f32(v67));
      v71[-1] = vbslq_s8(v70, v14, vcvtq_s32_f32(v68));
      *v71 = vbslq_s8(v70, v15, v69);
      v71[1] = vbslq_s8(v70, v16, vcvtq_s32_f32(vmulq_f32(v66, v63)));
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
      v72 = *(v7 + 16 * v10);
      v73 = *(a2 + 3);
      v74 = *(a2 + 5);
      v75 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vminq_f32(vmaxq_f32(v72, v73), v74)));
      v76 = vcvtq_f32_s32(vcvtq_s32_f32(v75));
      v77 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v76), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v75, v76))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v79 = vsubq_f32(v78, vandq_s8(v74, vcgtq_f32(v78, v77)));
      v80 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v77, v79))), *(a2 + 12));
      *(v6 + 16 * v10++) = vbslq_s8(*(a2 + 15), v72, vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v79), vmulq_f32(v80, v80)), v73), *(a2 + 13)), *(a2 + 14))));
    }

    while (v10 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 3);
      v16 = *(a2 + 5);
      v17 = vdupq_lane_s32(*a2, 1);
      v18 = vaddq_f32(vminq_f32(vmaxq_f32(v13, v15), v16), v17);
      v19 = vaddq_f32(vminq_f32(vmaxq_f32(v14, v15), v16), v17);
      v20 = vcgtq_f32(vandq_s8(v16, vceqq_f32(vdupq_lane_s32(*a2, 0), v15)), v15);
      v21 = vbslq_s8(v20, v16, v18);
      v22 = vbslq_s8(v20, v16, v19);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vorrq_s8(vandq_s8(v23, v21), v16);
      v26 = vorrq_s8(vandq_s8(v23, v22), v16);
      v27 = *(a2 + 21);
      v28 = *(a2 + 22);
      v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v22)));
      v30 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v21))), v28);
      v31 = *(a2 + 23);
      v32 = *(a2 + 24);
      v33 = vsubq_f32(v29, v28);
      v34 = vandq_s8(v16, vcgtq_f32(v25, v31));
      v35 = vandq_s8(v16, vcgtq_f32(v26, v31));
      v36 = vmulq_f32(v32, v34);
      v37 = vaddq_f32(v30, v34);
      v38 = vsubq_f32(vsubq_f32(v25, v16), vmulq_f32(v36, v25));
      v39 = vsubq_f32(vsubq_f32(v26, v16), vmulq_f32(vmulq_f32(v32, v35), v26));
      v40 = vmulq_f32(v38, v38);
      v41 = *(a2 + 37);
      v42 = *(a2 + 38);
      v43 = *(a2 + 39);
      v44 = *(a2 + 40);
      v45 = vaddq_f32(v41, vmulq_f32(v42, v38));
      v46 = vaddq_f32(v43, vmulq_f32(v44, v38));
      v47 = vaddq_f32(v43, vmulq_f32(v44, v39));
      v48 = vaddq_f32(v41, vmulq_f32(v42, v39));
      v49 = *(a2 + 41);
      v50 = *(a2 + 42);
      v51 = vaddq_f32(v49, vmulq_f32(v50, v38));
      v52 = vaddq_f32(v49, vmulq_f32(v50, v39));
      v53 = vmulq_f32(v39, v39);
      v54 = vaddq_f32(v33, v35);
      v55 = vaddq_f32(v52, vmulq_f32(v53, vaddq_f32(v48, vmulq_f32(v53, v47))));
      v56 = *(a2 + 43);
      v57 = *(a2 + 44);
      v58 = vmulq_n_f32(vaddq_f32(v37, vmulq_f32(v38, vaddq_f32(v56, vmulq_f32(v38, vaddq_f32(v51, vmulq_f32(v40, vaddq_f32(v45, vmulq_f32(v40, v46)))))))), COERCE_FLOAT(*a2));
      v59 = *(a2 + 29);
      v60 = vmaxq_f32(v58, v59);
      v61 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v54, vmulq_f32(v39, vaddq_f32(v56, vmulq_f32(v39, v55)))), COERCE_FLOAT(*a2)), v59);
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vsubq_f32(v62, vandq_s8(v16, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v63, vandq_s8(v16, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v60, v64);
      v67 = vsubq_f32(v61, v65);
      v68 = *(a2 + 45);
      v69 = *(a2 + 46);
      v70 = *(a2 + 47);
      v71 = *(a2 + 48);
      v72 = *(a2 + 33);
      v73 = vmulq_f32(vaddq_f32(v16, vmulq_f32(v66, vaddq_f32(v71, vmulq_f32(v66, vaddq_f32(vaddq_f32(v69, vmulq_f32(v66, v70)), vmulq_f32(vmulq_f32(v66, v66), vaddq_f32(v57, vmulq_f32(v68, v66)))))))), vshlq_n_s32(vaddq_s32(v72, vcvtq_s32_f32(v64)), 0x17uLL));
      v74 = vdupq_laneq_s32(*a2, 2);
      v75 = *(a2 + 15);
      v76 = vbslq_s8(v75, v14, vminq_f32(vaddq_f32(v74, vmulq_laneq_f32(vmulq_f32(vaddq_f32(v16, vmulq_f32(v67, vaddq_f32(v71, vmulq_f32(v67, vaddq_f32(vaddq_f32(v69, vmulq_f32(v70, v67)), vmulq_f32(vmulq_f32(v67, v67), vaddq_f32(v57, vmulq_f32(v68, v67)))))))), vshlq_n_s32(vaddq_s32(v72, vcvtq_s32_f32(v65)), 0x17uLL)), *a2, 3)), v16));
      v77 = (v6 + v11);
      v77[-1] = vbslq_s8(v75, v13, vminq_f32(vaddq_f32(v74, vmulq_laneq_f32(v73, *a2, 3)), v16));
      *v77 = v76;
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v78 = 16 * v10;
    v79 = *(v7 + v78);
    v80 = *(a2 + 5);
    v81 = vbslq_s8(vcgtq_f32(vandq_s8(v80, vceqq_f32(vdupq_lane_s32(*a2, 0), *(a2 + 3))), *(a2 + 3)), v80, vaddq_f32(vminq_f32(vmaxq_f32(v79, *(a2 + 3)), v80), vdupq_lane_s32(*a2, 1)));
    v82 = vorrq_s8(vandq_s8(*(a2 + 19), v81), v80);
    v83 = vandq_s8(v80, vcgtq_f32(v82, *(a2 + 23)));
    v84 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v81, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v81))), *(a2 + 22)), v83);
    v85 = vsubq_f32(vsubq_f32(v82, v80), vmulq_f32(vmulq_f32(*(a2 + 24), v83), v82));
    v86 = vmulq_f32(v85, v85);
    v87 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v84, vmulq_f32(v85, vaddq_f32(*(a2 + 43), vmulq_f32(v85, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v85)), vmulq_f32(v86, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v85)), vmulq_f32(v86, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v85)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v88 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
    v89 = vsubq_f32(v88, vandq_s8(v80, vcgtq_f32(v88, v87)));
    v90 = vsubq_f32(v87, v89);
    *(v6 + v78) = vbslq_s8(*(a2 + 15), v79, vminq_f32(vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v80, vmulq_f32(v90, vaddq_f32(*(a2 + 48), vmulq_f32(v90, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v90)), vmulq_f32(vmulq_f32(v90, v90), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v90)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v89)), 0x17uLL)), *a2, 3)), v80));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 3);
      v16 = vmaxq_f32(v13, v15);
      v17 = vmaxq_f32(v14, v15);
      v18 = *(a2 + 5);
      v19 = vminq_f32(v16, v18);
      v20 = vminq_f32(v17, v18);
      v21 = *(a2 + 19);
      v22 = *(a2 + 20);
      v23 = vorrq_s8(vandq_s8(v21, v19), v18);
      v24 = vorrq_s8(vandq_s8(v21, v20), v18);
      v25 = *(a2 + 21);
      v26 = *(a2 + 22);
      v27 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v22, v19)));
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v22, v20)));
      v29 = *(a2 + 23);
      v30 = *(a2 + 24);
      v31 = vandq_s8(v18, vcgtq_f32(v23, v29));
      v32 = vandq_s8(v18, vcgtq_f32(v24, v29));
      v33 = vaddq_f32(vsubq_f32(v27, v26), v31);
      v34 = vsubq_f32(vsubq_f32(v23, v18), vmulq_f32(vmulq_f32(v30, v31), v23));
      v35 = vsubq_f32(vsubq_f32(v24, v18), vmulq_f32(vmulq_f32(v30, v32), v24));
      v36 = *(a2 + 25);
      v37 = *(a2 + 26);
      v38 = *(a2 + 27);
      v39 = *(a2 + 28);
      v40 = vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(v28, v26), v32), vmulq_f32(v35, vaddq_f32(vaddq_f32(v38, vmulq_f32(v35, v39)), vmulq_f32(vmulq_f32(v35, v35), vaddq_f32(v36, vmulq_f32(v37, v35)))))), COERCE_FLOAT(*a2));
      v42 = *(a2 + 29);
      v41 = *(a2 + 30);
      v43 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v33, vmulq_f32(v34, vaddq_f32(vaddq_f32(v38, vmulq_f32(v34, v39)), vmulq_f32(vmulq_f32(v34, v34), vaddq_f32(v36, vmulq_f32(v37, v34)))))), COERCE_FLOAT(*a2)), v42);
      v44 = vmaxq_f32(v40, v42);
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v47 = vsubq_f32(v45, vandq_s8(v18, vcgtq_f32(v45, v43)));
      v48 = vsubq_f32(v46, vandq_s8(v18, vcgtq_f32(v46, v44)));
      v49 = vsubq_f32(v43, v47);
      v50 = vsubq_f32(v44, v48);
      v51 = *(a2 + 31);
      v52 = *(a2 + 32);
      v53 = vmulq_f32(v50, vaddq_f32(v52, vmulq_f32(v50, vaddq_f32(v41, vmulq_f32(v51, v50)))));
      v54 = vaddq_f32(v18, vmulq_f32(v49, vaddq_f32(v52, vmulq_f32(v49, vaddq_f32(v41, vmulq_f32(v51, v49))))));
      v55 = vcvtq_s32_f32(v47);
      v56 = *(a2 + 33);
      v57 = vmulq_f32(vaddq_f32(v18, v53), vshlq_n_s32(vaddq_s32(v56, vcvtq_s32_f32(v48)), 0x17uLL));
      v58 = *(a2 + 15);
      v59 = (v6 + v11);
      v59[-1] = vbslq_s8(v58, v13, vmulq_f32(v54, vshlq_n_s32(vaddq_s32(v56, v55), 0x17uLL)));
      *v59 = vbslq_s8(v58, v14, v57);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v60 = 16 * v10;
    v61 = *(v7 + v60);
    v62 = *(a2 + 5);
    v63 = vminq_f32(vmaxq_f32(v61, *(a2 + 3)), v62);
    v64 = vorrq_s8(vandq_s8(*(a2 + 19), v63), v62);
    v65 = vandq_s8(v62, vcgtq_f32(v64, *(a2 + 23)));
    v66 = vsubq_f32(vsubq_f32(v64, v62), vmulq_f32(vmulq_f32(*(a2 + 24), v65), v64));
    v67 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v63, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v63))), *(a2 + 22)), v65), vmulq_f32(v66, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v66, *(a2 + 28))), vmulq_f32(vmulq_f32(v66, v66), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v66)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v68 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
    v69 = vsubq_f32(v68, vandq_s8(v62, vcgtq_f32(v68, v67)));
    v70 = vsubq_f32(v67, v69);
    *(v6 + v60) = vbslq_s8(*(a2 + 15), v61, vmulq_f32(vaddq_f32(v62, vmulq_f32(v70, vaddq_f32(*(a2 + 32), vmulq_f32(v70, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v70)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v69)), 0x17uLL)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v13 = *(a2 + 3);
      v14 = *(v7 + v11 - 16);
      v15 = *(v7 + v11);
      v16 = vcgtq_f32(v13, v14);
      v17 = vcgtq_f32(v13, v15);
      v18 = *(a2 + 5);
      v19 = *(a2 + 33);
      v20 = *(a2 + 34);
      v21 = vbslq_s8(v17, v20, v18);
      v22 = vmulq_f32(v14, vbslq_s8(v16, v20, v18));
      v24 = *(a2 + 35);
      v23 = *(a2 + 36);
      v25 = vminq_f32(v22, v24);
      v26 = vminq_f32(vmulq_f32(v15, v21), v24);
      v27 = *(a2 + 19);
      v28 = *(a2 + 20);
      v29 = vorrq_s8(vandq_s8(v27, v25), v18);
      v30 = vorrq_s8(vandq_s8(v27, v26), v18);
      v31 = *(a2 + 21);
      v32 = *(a2 + 22);
      v33 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v26, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v28, v26)));
      v34 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v25, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v28, v25))), v32);
      v35 = *(a2 + 23);
      v36 = *(a2 + 24);
      v37 = vandq_s8(v18, vcgtq_f32(v29, v35));
      v38 = vandq_s8(v18, vcgtq_f32(v30, v35));
      v39 = vaddq_f32(v34, v37);
      v40 = vaddq_f32(vsubq_f32(v33, v32), v38);
      v41 = vsubq_f32(vsubq_f32(v29, v18), vmulq_f32(vmulq_f32(v36, v37), v29));
      v42 = vsubq_f32(vsubq_f32(v30, v18), vmulq_f32(vmulq_f32(v36, v38), v30));
      v43 = *(a2 + 25);
      v44 = *(a2 + 26);
      v45 = vaddq_f32(v43, vmulq_f32(v44, v41));
      v46 = vaddq_f32(v43, vmulq_f32(v44, v42));
      v47 = *(a2 + 27);
      v48 = *(a2 + 28);
      v49 = vmulq_n_f32(vaddq_f32(v40, vmulq_f32(v42, vaddq_f32(vaddq_f32(v47, vmulq_f32(v42, v48)), vmulq_f32(vmulq_f32(v42, v42), v46)))), COERCE_FLOAT(*a2));
      v50 = *(a2 + 29);
      v51 = *(a2 + 30);
      v52 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v39, vmulq_f32(v41, vaddq_f32(vaddq_f32(v47, vmulq_f32(v41, v48)), vmulq_f32(vmulq_f32(v41, v41), v45)))), COERCE_FLOAT(*a2)), v50);
      v53 = vmaxq_f32(v49, v50);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v56 = vsubq_f32(v54, vandq_s8(v18, vcgtq_f32(v54, v52)));
      v57 = vsubq_f32(v55, vandq_s8(v18, vcgtq_f32(v55, v53)));
      v58 = vsubq_f32(v52, v56);
      v59 = vsubq_f32(v53, v57);
      v60 = *(a2 + 31);
      v61 = *(a2 + 32);
      v62 = vaddq_f32(v18, vmulq_f32(v58, vaddq_f32(v61, vmulq_f32(v58, vaddq_f32(v51, vmulq_f32(v60, v58))))));
      v63 = vaddq_f32(v18, vmulq_f32(v59, vaddq_f32(v61, vmulq_f32(v59, vaddq_f32(v51, vmulq_f32(v60, v59))))));
      v64 = vmulq_f32(v62, vshlq_n_s32(vaddq_s32(v19, vcvtq_s32_f32(v56)), 0x17uLL));
      v65 = vandq_s8(v23, v14);
      v66 = veorq_s8(vandq_s8(v23, v15), vmulq_f32(v63, vshlq_n_s32(vaddq_s32(v19, vcvtq_s32_f32(v57)), 0x17uLL)));
      v67 = *(a2 + 15);
      v68 = (v6 + v11);
      v68[-1] = vbslq_s8(v67, v14, veorq_s8(v65, v64));
      *v68 = vbslq_s8(v67, v15, v66);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v69 = 16 * v10;
    v70 = *(v7 + v69);
    v71 = *(a2 + 5);
    v72 = vminq_f32(vmulq_f32(v70, vbslq_s8(vcgtq_f32(*(a2 + 3), v70), *(a2 + 34), v71)), *(a2 + 35));
    v73 = vorrq_s8(vandq_s8(*(a2 + 19), v72), v71);
    v74 = vandq_s8(v71, vcgtq_f32(v73, *(a2 + 23)));
    v75 = vsubq_f32(vsubq_f32(v73, v71), vmulq_f32(vmulq_f32(*(a2 + 24), v74), v73));
    v76 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v72, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v72))), *(a2 + 22)), v74), vmulq_f32(v75, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v75, *(a2 + 28))), vmulq_f32(vmulq_f32(v75, v75), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v75)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v77 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
    v78 = vsubq_f32(v77, vandq_s8(v71, vcgtq_f32(v77, v76)));
    v79 = vsubq_f32(v76, v78);
    *(v6 + v69) = vbslq_s8(*(a2 + 15), v70, veorq_s8(vandq_s8(*(a2 + 36), v70), vmulq_f32(vaddq_f32(v71, vmulq_f32(v79, vaddq_f32(*(a2 + 32), vmulq_f32(v79, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v79)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v78)), 0x17uLL))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 3);
      v16 = *(a2 + 5);
      v17 = *(a2 + 33);
      v18 = *(a2 + 34);
      v20 = *(a2 + 35);
      v19 = *(a2 + 36);
      v21 = vminq_f32(vmulq_f32(v13, vbslq_s8(vcgtq_f32(v15, v13), v18, v16)), v20);
      v22 = vminq_f32(vmulq_f32(v14, vbslq_s8(vcgtq_f32(v15, v14), v18, v16)), v20);
      v23 = vcgtq_f32(vandq_s8(v16, vceqq_f32(vdupq_lane_s32(*a2, 0), v15)), v15);
      v24 = vbslq_s8(v23, v16, v21);
      v25 = vbslq_s8(v23, v16, v22);
      v27 = *(a2 + 19);
      v26 = *(a2 + 20);
      v28 = vorrq_s8(vandq_s8(v27, v24), v16);
      v29 = vorrq_s8(vandq_s8(v27, v25), v16);
      v30 = *(a2 + 21);
      v31 = *(a2 + 22);
      v32 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v25, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v26, v25)));
      v33 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v26, v24))), v31);
      v34 = *(a2 + 23);
      v35 = *(a2 + 24);
      v36 = vandq_s8(v16, vcgtq_f32(v28, v34));
      v37 = vandq_s8(v16, vcgtq_f32(v29, v34));
      v38 = vaddq_f32(v33, v36);
      v39 = vaddq_f32(vsubq_f32(v32, v31), v37);
      v40 = vsubq_f32(vsubq_f32(v28, v16), vmulq_f32(vmulq_f32(v35, v36), v28));
      v41 = vsubq_f32(vsubq_f32(v29, v16), vmulq_f32(vmulq_f32(v35, v37), v29));
      v42 = vmulq_f32(v40, v40);
      v43 = *(a2 + 37);
      v44 = *(a2 + 38);
      v45 = *(a2 + 39);
      v46 = *(a2 + 40);
      v47 = vaddq_f32(v43, vmulq_f32(v44, v40));
      v48 = vaddq_f32(v45, vmulq_f32(v46, v40));
      v49 = vaddq_f32(v45, vmulq_f32(v46, v41));
      v50 = vaddq_f32(v43, vmulq_f32(v44, v41));
      v51 = *(a2 + 41);
      v52 = *(a2 + 42);
      v53 = vaddq_f32(v51, vmulq_f32(v52, v40));
      v54 = vaddq_f32(v51, vmulq_f32(v52, v41));
      v55 = vmulq_f32(v41, v41);
      v56 = vaddq_f32(v53, vmulq_f32(v42, vaddq_f32(v47, vmulq_f32(v42, v48))));
      v57 = vaddq_f32(v54, vmulq_f32(v55, vaddq_f32(v50, vmulq_f32(v55, v49))));
      v58 = *(a2 + 43);
      v59 = *(a2 + 44);
      v60 = *(a2 + 29);
      v61 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v38, vmulq_f32(v40, vaddq_f32(v58, vmulq_f32(v40, v56)))), COERCE_FLOAT(*a2)), v60);
      v62 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v39, vmulq_f32(v41, vaddq_f32(v58, vmulq_f32(v41, v57)))), COERCE_FLOAT(*a2)), v60);
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vsubq_f32(v63, vandq_s8(v16, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v64, vandq_s8(v16, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v61, v65);
      v68 = vsubq_f32(v62, v66);
      v69 = *(a2 + 45);
      v70 = *(a2 + 46);
      v71 = vaddq_f32(v59, vmulq_f32(v69, v67));
      v72 = vaddq_f32(v59, vmulq_f32(v69, v68));
      v73 = *(a2 + 47);
      v74 = *(a2 + 48);
      v75 = vaddq_f32(v16, vmulq_f32(v67, vaddq_f32(v74, vmulq_f32(v67, vaddq_f32(vaddq_f32(v70, vmulq_f32(v67, v73)), vmulq_f32(vmulq_f32(v67, v67), v71))))));
      v76 = vaddq_s32(v17, vcvtq_s32_f32(v65));
      v77 = veorq_s8(vandq_s8(v19, v14), vmulq_f32(vaddq_f32(v16, vmulq_f32(v68, vaddq_f32(v74, vmulq_f32(v68, vaddq_f32(vaddq_f32(v70, vmulq_f32(v73, v68)), vmulq_f32(vmulq_f32(v68, v68), v72)))))), vshlq_n_s32(vaddq_s32(v17, vcvtq_s32_f32(v66)), 0x17uLL)));
      v78 = *(a2 + 15);
      v79 = (v6 + v11);
      v79[-1] = vbslq_s8(v78, v13, veorq_s8(vandq_s8(v19, v13), vmulq_f32(v75, vshlq_n_s32(v76, 0x17uLL))));
      *v79 = vbslq_s8(v78, v14, v77);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v80 = 16 * v10;
    v81 = *(v7 + v80);
    v82 = *(a2 + 5);
    v83 = vbslq_s8(vcgtq_f32(vandq_s8(v82, vceqq_f32(vdupq_lane_s32(*a2, 0), *(a2 + 3))), *(a2 + 3)), v82, vminq_f32(vmulq_f32(v81, vbslq_s8(vcgtq_f32(*(a2 + 3), v81), *(a2 + 34), v82)), *(a2 + 35)));
    v84 = vorrq_s8(vandq_s8(*(a2 + 19), v83), v82);
    v85 = vandq_s8(v82, vcgtq_f32(v84, *(a2 + 23)));
    v86 = vsubq_f32(vsubq_f32(v84, v82), vmulq_f32(vmulq_f32(*(a2 + 24), v85), v84));
    v87 = vmulq_f32(v86, v86);
    v88 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v83, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v83))), *(a2 + 22)), v85), vmulq_f32(v86, vaddq_f32(*(a2 + 43), vmulq_f32(v86, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v86)), vmulq_f32(v87, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v86)), vmulq_f32(v87, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v86)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v89 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
    v90 = vsubq_f32(v89, vandq_s8(v82, vcgtq_f32(v89, v88)));
    v91 = vsubq_f32(v88, v90);
    *(v6 + v80) = vbslq_s8(*(a2 + 15), v81, veorq_s8(vandq_s8(*(a2 + 36), v81), vmulq_f32(vaddq_f32(v82, vmulq_f32(v91, vaddq_f32(*(a2 + 48), vmulq_f32(v91, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v91)), vmulq_f32(vmulq_f32(v91, v91), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v91)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v90)), 0x17uLL))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_float_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v12 = *(a2 + 5);
        v13 = vbslq_s8(vcgtq_f32(vandq_s8(v12, vceqq_f32(vdupq_lane_s32(*a2, 0), *(a2 + 3))), *(a2 + 3)), v12, vminq_f32(vmulq_f32(v11, vbslq_s8(vcgtq_f32(*(a2 + 3), v11), *(a2 + 34), v12)), *(a2 + 35)));
        v14 = *(a2 + 50);
        v15 = *(a2 + 52);
        v16 = vcgtq_f32(*(a2 + 20), v13);
        v17 = vmulq_f32(v13, vaddq_f32(v12, vandq_s8(*(a2 + 49), v16)));
        v18 = vorrq_s8(vandq_s8(*(a2 + 19), v17), v12);
        v19 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(*(a2 + 21), vceqq_f32(v13, *(a2 + 21))), vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v13, v14), *(a2 + 51)), vandq_s8(*(a2 + 21), vceqq_f32(v13, v14))), vandq_s8(v15, v16))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)));
        v20 = vandq_s8(v12, vcgtq_f32(v18, *(a2 + 23)));
        v21 = vaddq_f32(v19, v20);
        v22 = vsubq_f32(vsubq_f32(v18, v12), vmulq_f32(vmulq_f32(*(a2 + 24), v20), v18));
        v23 = vmulq_f32(v22, v22);
        v24 = vmulq_n_f32(vaddq_f32(v21, vmulq_f32(v22, vaddq_f32(*(a2 + 61), vmulq_f32(v22, vaddq_f32(vaddq_f32(vaddq_f32(*(a2 + 59), vmulq_f32(v22, *(a2 + 60))), vmulq_f32(v23, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v22)))), vmulq_f32(vmulq_f32(v23, v23), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v22)), vmulq_f32(v23, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v22)))))))))), COERCE_FLOAT(*a2));
        v25 = vminq_f32(vmaxq_f32(v24, *(a2 + 62)), *(a2 + 63));
        v26 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
        v27 = vsubq_f32(v26, vandq_s8(v12, vcgtq_f32(v26, v25)));
        v28 = vsubq_f32(v25, v27);
        v29 = vmulq_f32(v28, v28);
        v30 = vcgtq_f32(*(a2 + 70), v27);
        *(v7 + v10) = vbslq_s8(*(a2 + 15), v11, veorq_s8(vandq_s8(*(a2 + 36), v11), vbslq_s8(vcgtq_f32(vandq_s8(v12, vceqq_f32(v24, v24)), v14), vmulq_f32(vaddq_f32(v12, vandq_s8(*(a2 + 71), v30)), vmulq_f32(vaddq_f32(v12, vmulq_f32(v28, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v28, *(a2 + 69))), vmulq_f32(v29, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v28)), vmulq_f32(v29, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v28)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v27, vandq_s8(v15, v30)))), 0x17uLL))), v24)));
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

uint64_t Gettype1_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 50);
      v16 = vdupq_lane_s32(*a2, 1);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v16)));
      v22 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v16)));
      v23 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
      v24 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v25 = *(a2 + 7);
      v26 = *(a2 + 8);
      v27 = vrsqrteq_f32(vaddq_f32(v25, vsubq_f32(v21, v23)));
      v28 = vrsqrteq_f32(vaddq_f32(v25, vsubq_f32(v22, v24)));
      v29 = vaddq_f32(v26, v23);
      v30 = vaddq_f32(v26, v24);
      v31 = *(a2 + 9);
      v32 = *(a2 + 10);
      v33 = vmulq_n_f32(vsubq_f32(v29, vmulq_f32(v27, v31)), COERCE_FLOAT(*a2));
      v34 = vmulq_n_f32(vsubq_f32(v30, vmulq_f32(v28, v31)), COERCE_FLOAT(*a2));
      v35 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
      v36 = vcvtq_f32_s32(vcvtq_s32_f32(v34));
      v37 = vsubq_f32(v35, vandq_s8(v17, vcgtq_f32(v35, v33)));
      v38 = vsubq_f32(v36, vandq_s8(v17, vcgtq_f32(v36, v34)));
      v39 = *(a2 + 11);
      v40 = *(a2 + 12);
      v41 = vmulq_f32(vrecpeq_f32(vsubq_f32(v39, vsubq_f32(v33, v37))), v40);
      v42 = vmulq_f32(vrecpeq_f32(vsubq_f32(v39, vsubq_f32(v34, v38))), v40);
      v43 = vaddq_f32(vaddq_f32(v32, v38), vmulq_f32(v42, v42));
      v44 = vmaxq_f32(vaddq_f32(vaddq_f32(v32, v37), vmulq_f32(v41, v41)), v15);
      v45 = *(a2 + 13);
      v46 = *(a2 + 14);
      v47 = vdupq_lane_s32(*(a2 + 16), 1);
      v48 = vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0);
      v49 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v47)), v48, vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v44, v45), v46)), *a2, 3)), v17);
      v50 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v20, v47)), v48, vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v43, v15), v45), v46)), *a2, 3)), v17);
      v51 = *(a2 + 15);
      v52 = (v6 + v11);
      v52[-1] = vbslq_s8(v51, v13, v49);
      *v52 = vbslq_s8(v51, v14, v50);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v53 = 16 * v10;
    v54 = *(v7 + v53);
    v55 = *(a2 + 50);
    v56 = *(a2 + 5);
    v57 = vminq_f32(vmaxq_f32(v54, v55), v56);
    v58 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v57, vdupq_lane_s32(*a2, 1))));
    v59 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
    v60 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v59), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v58, v59))), *(a2 + 9))), COERCE_FLOAT(*a2));
    v61 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
    v62 = vsubq_f32(v61, vandq_s8(v56, vcgtq_f32(v61, v60)));
    v63 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v60, v62))), *(a2 + 12));
    *(v6 + v53) = vbslq_s8(*(a2 + 15), v54, vminq_f32(vbslq_s8(vcgtq_f32(v55, vsubq_f32(v57, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v63, v63), vaddq_f32(*(a2 + 10), v62)), v55), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v56));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype1_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 50);
      v16 = vdupq_lane_s32(*a2, 1);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v16)));
      v22 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v16)));
      v23 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
      v24 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v25 = *(a2 + 7);
      v26 = *(a2 + 8);
      v27 = vrsqrteq_f32(vaddq_f32(v25, vsubq_f32(v21, v23)));
      v28 = vrsqrteq_f32(vaddq_f32(v25, vsubq_f32(v22, v24)));
      v29 = vaddq_f32(v26, v23);
      v30 = vaddq_f32(v26, v24);
      v31 = *(a2 + 9);
      v32 = *(a2 + 10);
      v33 = vmulq_n_f32(vsubq_f32(v29, vmulq_f32(v27, v31)), COERCE_FLOAT(*a2));
      v34 = vmulq_n_f32(vsubq_f32(v30, vmulq_f32(v28, v31)), COERCE_FLOAT(*a2));
      v35 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
      v36 = vcvtq_f32_s32(vcvtq_s32_f32(v34));
      v37 = vsubq_f32(v35, vandq_s8(v17, vcgtq_f32(v35, v33)));
      v38 = vsubq_f32(v36, vandq_s8(v17, vcgtq_f32(v36, v34)));
      v39 = *(a2 + 11);
      v40 = *(a2 + 12);
      v41 = vmulq_f32(vrecpeq_f32(vsubq_f32(v39, vsubq_f32(v33, v37))), v40);
      v42 = vmulq_f32(vrecpeq_f32(vsubq_f32(v39, vsubq_f32(v34, v38))), v40);
      v43 = vaddq_f32(vaddq_f32(v32, v38), vmulq_f32(v42, v42));
      v44 = vmaxq_f32(vaddq_f32(vaddq_f32(v32, v37), vmulq_f32(v41, v41)), v15);
      v45 = *(a2 + 13);
      v46 = *(a2 + 14);
      v47 = vdupq_lane_s32(*(a2 + 16), 1);
      v48 = vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0);
      v49 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v47)), v48, vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v44, v45), v46)), *a2, 3)), v17);
      v50 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v20, v47)), v48, vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v43, v15), v45), v46)), *a2, 3)), v17);
      v51 = *(a2 + 15);
      v52 = (v6 + v11);
      v52[-1] = vbslq_s8(v51, v13, v49);
      *v52 = vbslq_s8(v51, v14, v50);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v53 = 16 * v10;
    v54 = *(v7 + v53);
    v55 = *(a2 + 50);
    v56 = *(a2 + 5);
    v57 = vminq_f32(vmaxq_f32(v54, v55), v56);
    v58 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v57, vdupq_lane_s32(*a2, 1))));
    v59 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
    v60 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v59), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v58, v59))), *(a2 + 9))), COERCE_FLOAT(*a2));
    v61 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
    v62 = vsubq_f32(v61, vandq_s8(v56, vcgtq_f32(v61, v60)));
    v63 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v60, v62))), *(a2 + 12));
    *(v6 + v53) = vbslq_s8(*(a2 + 15), v54, vminq_f32(vbslq_s8(vcgtq_f32(v55, vsubq_f32(v57, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v63, v63), vaddq_f32(*(a2 + 10), v62)), v55), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v56));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype1_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v12 = *(a2 + 75);
        v13 = *(a2 + 5);
        v14 = vminq_f32(vmaxq_f32(v11, v12), v13);
        v15 = vbslq_s8(vcgtq_f32(vandq_s8(v13, vceqq_f32(vdupq_lane_s32(*a2, 0), v12)), v12), v13, vaddq_f32(v14, vdupq_lane_s32(*a2, 1)));
        v16 = vorrq_s8(vandq_s8(*(a2 + 19), v15), v13);
        v17 = vandq_s8(v13, vcgtq_f32(v16, *(a2 + 23)));
        v18 = vsubq_f32(vsubq_f32(v16, v13), vmulq_f32(vmulq_f32(*(a2 + 24), v17), v16));
        v19 = vmulq_f32(v18, v18);
        v20 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v15, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v15))), *(a2 + 22)), v17), vmulq_f32(v18, vaddq_f32(*(a2 + 43), vmulq_f32(v18, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v18)), vmulq_f32(v19, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v18)), vmulq_f32(v19, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v18)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
        v21 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
        v22 = vsubq_f32(v21, vandq_s8(v13, vcgtq_f32(v21, v20)));
        v23 = vsubq_f32(v20, v22);
        *(v7 + v10) = vbslq_s8(*(a2 + 15), v11, vminq_f32(vbslq_s8(vcgtq_f32(v12, vsubq_f32(v14, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v13, vmulq_f32(v23, vaddq_f32(*(a2 + 48), vmulq_f32(v23, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v23)), vmulq_f32(vmulq_f32(v23, v23), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v23)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v22)), 0x17uLL)), *a2, 3)), v13));
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

uint64_t Gettype1_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 50);
      v16 = *(a2 + 5);
      v17 = vdupq_lane_s32(*a2, 1);
      v18 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v19 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v20 = vaddq_f32(v18, v17);
      v21 = vaddq_f32(v19, v17);
      v22 = *(a2 + 19);
      v23 = *(a2 + 20);
      v24 = vorrq_s8(vandq_s8(v22, v20), v16);
      v25 = *(a2 + 21);
      v26 = *(a2 + 22);
      v27 = vorrq_s8(vandq_s8(v22, v21), v16);
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v21)));
      v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v20))), v26);
      v30 = *(a2 + 23);
      v31 = *(a2 + 24);
      v32 = vandq_s8(v16, vcgtq_f32(v24, v30));
      v33 = vandq_s8(v16, vcgtq_f32(v27, v30));
      v34 = vaddq_f32(v29, v32);
      v35 = vmulq_f32(v31, v32);
      v36 = vmulq_f32(vmulq_f32(v31, v33), v27);
      v37 = vaddq_f32(vsubq_f32(v28, v26), v33);
      v38 = vsubq_f32(vsubq_f32(v24, v16), vmulq_f32(v35, v24));
      v39 = vsubq_f32(vsubq_f32(v27, v16), v36);
      v40 = *(a2 + 25);
      v41 = *(a2 + 26);
      v42 = *(a2 + 27);
      v43 = *(a2 + 28);
      v44 = vmulq_n_f32(vaddq_f32(v34, vmulq_f32(v38, vaddq_f32(vaddq_f32(v42, vmulq_f32(v43, v38)), vmulq_f32(vmulq_f32(v38, v38), vaddq_f32(v40, vmulq_f32(v41, v38)))))), COERCE_FLOAT(*a2));
      v45 = vmulq_n_f32(vaddq_f32(v37, vmulq_f32(v39, vaddq_f32(vaddq_f32(v42, vmulq_f32(v43, v39)), vmulq_f32(vmulq_f32(v39, v39), vaddq_f32(v40, vmulq_f32(v41, v39)))))), COERCE_FLOAT(*a2));
      v46 = *(a2 + 29);
      v47 = *(a2 + 30);
      v48 = vmaxq_f32(v44, v46);
      v49 = vmaxq_f32(v45, v46);
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
      v52 = vsubq_f32(v50, vandq_s8(v16, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v51, vandq_s8(v16, vcgtq_f32(v51, v49)));
      v54 = vsubq_f32(v48, v52);
      v55 = vsubq_f32(v49, v53);
      v56 = *(a2 + 31);
      v57 = *(a2 + 32);
      v58 = vmulq_f32(v55, vaddq_f32(v57, vmulq_f32(v55, vaddq_f32(v47, vmulq_f32(v56, v55)))));
      v59 = vaddq_f32(v16, vmulq_f32(v54, vaddq_f32(v57, vmulq_f32(v54, vaddq_f32(v47, vmulq_f32(v56, v54))))));
      v60 = vcvtq_s32_f32(v53);
      v61 = *(a2 + 33);
      v62 = vdupq_lane_s32(*(a2 + 16), 1);
      v63 = vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0);
      v64 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v62)), v63, vmulq_laneq_f32(vmulq_f32(v59, vshlq_n_s32(vaddq_s32(v61, vcvtq_s32_f32(v52)), 0x17uLL)), *a2, 3));
      v65 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v62)), v63, vmulq_laneq_f32(vmulq_f32(vaddq_f32(v16, v58), vshlq_n_s32(vaddq_s32(v61, v60), 0x17uLL)), *a2, 3));
      v66 = vminq_f32(v64, v16);
      v67 = vminq_f32(v65, v16);
      v68 = *(a2 + 15);
      v69 = (v6 + v11);
      v69[-1] = vbslq_s8(v68, v13, v66);
      *v69 = vbslq_s8(v68, v14, v67);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v70 = 16 * v10;
    v71 = *(v7 + v70);
    v72 = *(a2 + 50);
    v73 = *(a2 + 5);
    v74 = vminq_f32(vmaxq_f32(v71, v72), v73);
    v75 = vaddq_f32(v74, vdupq_lane_s32(*a2, 1));
    v76 = vorrq_s8(vandq_s8(*(a2 + 19), v75), v73);
    v77 = vandq_s8(v73, vcgtq_f32(v76, *(a2 + 23)));
    v78 = vsubq_f32(vsubq_f32(v76, v73), vmulq_f32(vmulq_f32(*(a2 + 24), v77), v76));
    v79 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v75, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v75))), *(a2 + 22)), v77), vmulq_f32(v78, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(*(a2 + 28), v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v78)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v80 = vcvtq_f32_s32(vcvtq_s32_f32(v79));
    v81 = vsubq_f32(v80, vandq_s8(v73, vcgtq_f32(v80, v79)));
    v82 = vsubq_f32(v79, v81);
    *(v6 + v70) = vbslq_s8(*(a2 + 15), v71, vminq_f32(vbslq_s8(vcgtq_f32(v72, vsubq_f32(v74, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v73, vmulq_f32(v82, vaddq_f32(*(a2 + 32), vmulq_f32(v82, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v82)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v81)), 0x17uLL)), *a2, 3)), v73));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype1_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = vbicq_s8(v15, *(a2 + 74));
      v17 = vdupq_laneq_s32(v16, 3);
      v18 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v19 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v20 = vdupq_lane_s32(*a2, 1);
      v21 = vaddq_f32(v18, v20);
      v22 = vaddq_f32(v19, v20);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vandq_s8(v23, v21);
      v26 = vandq_s8(v23, v22);
      v27 = *(a2 + 5);
      v28 = vorrq_s8(v25, v27);
      v29 = vorrq_s8(v26, v27);
      v30 = *(a2 + 21);
      v31 = *(a2 + 22);
      v32 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v24, v22)));
      v33 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v24, v21))), v31);
      v34 = *(a2 + 23);
      v35 = *(a2 + 24);
      v36 = vandq_s8(v27, vcgtq_f32(v28, v34));
      v37 = vandq_s8(v27, vcgtq_f32(v29, v34));
      v38 = vaddq_f32(v33, v36);
      v39 = vaddq_f32(vsubq_f32(v32, v31), v37);
      v40 = vsubq_f32(vsubq_f32(v28, v27), vmulq_f32(vmulq_f32(v35, v36), v28));
      v41 = vsubq_f32(vsubq_f32(v29, v27), vmulq_f32(vmulq_f32(v35, v37), v29));
      v42 = *(a2 + 25);
      v43 = *(a2 + 26);
      v44 = vaddq_f32(v42, vmulq_f32(v43, v40));
      v45 = vaddq_f32(v42, vmulq_f32(v43, v41));
      v46 = *(a2 + 27);
      v47 = *(a2 + 28);
      v48 = vaddq_f32(v39, vmulq_f32(v41, vaddq_f32(vaddq_f32(v46, vmulq_f32(v41, v47)), vmulq_f32(vmulq_f32(v41, v41), v45))));
      v49 = vmulq_n_f32(vaddq_f32(v38, vmulq_f32(v40, vaddq_f32(vaddq_f32(v46, vmulq_f32(v40, v47)), vmulq_f32(vmulq_f32(v40, v40), v44)))), COERCE_FLOAT(*a2));
      v50 = *(a2 + 29);
      v51 = *(a2 + 30);
      v52 = vmaxq_f32(v49, v50);
      v53 = vmaxq_f32(vmulq_n_f32(v48, COERCE_FLOAT(*a2)), v50);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v56 = vsubq_f32(v54, vandq_s8(v27, vcgtq_f32(v54, v52)));
      v57 = vsubq_f32(v55, vandq_s8(v27, vcgtq_f32(v55, v53)));
      v58 = vsubq_f32(v52, v56);
      v59 = vsubq_f32(v53, v57);
      v60 = *(a2 + 31);
      v61 = *(a2 + 32);
      v62 = vaddq_f32(v51, vmulq_f32(v60, v58));
      v63 = vmulq_f32(v59, vaddq_f32(v61, vmulq_f32(v59, vaddq_f32(v51, vmulq_f32(v60, v59)))));
      v64 = vcvtq_s32_f32(v57);
      v65 = *(a2 + 33);
      v66 = vdupq_lane_s32(*(a2 + 16), 1);
      v67 = vdupq_lane_s32(*v16.i8, 0);
      v68 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v66)), v67, vmulq_laneq_f32(vmulq_f32(vaddq_f32(v27, vmulq_f32(v58, vaddq_f32(v61, vmulq_f32(v58, v62)))), vshlq_n_s32(vaddq_s32(v65, vcvtq_s32_f32(v56)), 0x17uLL)), *a2, 3));
      v69 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v66)), v67, vmulq_laneq_f32(vmulq_f32(vaddq_f32(v27, v63), vshlq_n_s32(vaddq_s32(v65, v64), 0x17uLL)), *a2, 3));
      v70 = *(a2 + 15);
      v71 = (v6 + v11);
      v71[-1] = vbslq_s8(v70, v13, v68);
      *v71 = vbslq_s8(v70, v14, v69);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v72 = 16 * v10;
    v73 = *(v7 + v72);
    v74 = *(a2 + 75);
    v75 = vbicq_s8(v74, *(a2 + 74));
    v76 = vminq_f32(vmaxq_f32(v73, v74), vdupq_laneq_s32(v75, 3));
    v77 = vaddq_f32(v76, vdupq_lane_s32(*a2, 1));
    v78 = *(a2 + 5);
    v79 = vorrq_s8(vandq_s8(*(a2 + 19), v77), v78);
    v80 = vandq_s8(v78, vcgtq_f32(v79, *(a2 + 23)));
    v81 = vsubq_f32(vsubq_f32(v79, v78), vmulq_f32(vmulq_f32(*(a2 + 24), v80), v79));
    v82 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v77, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v77))), *(a2 + 22)), v80), vmulq_f32(v81, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v81, *(a2 + 28))), vmulq_f32(vmulq_f32(v81, v81), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v81)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v83 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
    v84 = vsubq_f32(v83, vandq_s8(v78, vcgtq_f32(v83, v82)));
    v85 = vsubq_f32(v82, v84);
    *(v6 + v72) = vbslq_s8(*(a2 + 15), v73, vbslq_s8(vcgtq_f32(v74, vsubq_f32(v76, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v75.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v78, vmulq_f32(v85, vaddq_f32(*(a2 + 32), vmulq_f32(v85, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v85)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v84)), 0x17uLL)), *a2, 3)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype1_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v12 = *(a2 + 75);
        v13 = vbicq_s8(v12, *(a2 + 74));
        v14 = vminq_f32(vmaxq_f32(v11, v12), vdupq_laneq_s32(v13, 3));
        v15 = *(a2 + 5);
        v16 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vdupq_lane_s32(*a2, 0), v12)), v12), v15, vaddq_f32(v14, vdupq_lane_s32(*a2, 1)));
        v17 = vorrq_s8(vandq_s8(*(a2 + 19), v16), v15);
        v18 = vandq_s8(v15, vcgtq_f32(v17, *(a2 + 23)));
        v19 = vsubq_f32(vsubq_f32(v17, v15), vmulq_f32(vmulq_f32(*(a2 + 24), v18), v17));
        v20 = vmulq_f32(v19, v19);
        v21 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v16, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v16))), *(a2 + 22)), v18), vmulq_f32(v19, vaddq_f32(*(a2 + 43), vmulq_f32(v19, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v19)), vmulq_f32(v20, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v19)), vmulq_f32(v20, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v19)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
        v22 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
        v23 = vsubq_f32(v22, vandq_s8(v15, vcgtq_f32(v22, v21)));
        v24 = vsubq_f32(v21, v23);
        *(v7 + v10) = vbslq_s8(*(a2 + 15), v11, vbslq_s8(vcgtq_f32(v12, vsubq_f32(v14, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v13.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v15, vmulq_f32(v24, vaddq_f32(*(a2 + 48), vmulq_f32(v24, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v24)), vmulq_f32(vmulq_f32(v24, v24), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v24)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v23)), 0x17uLL)), *a2, 3)));
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

uint64_t Gettype1_float_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v12 = *(a2 + 75);
        v13 = vbicq_s8(v12, *(a2 + 74));
        v14 = vminq_f32(vmaxq_f32(v11, v12), vdupq_laneq_s32(v13, 3));
        v15 = *(a2 + 5);
        v16 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vdupq_lane_s32(*a2, 0), v12)), v12), v15, vaddq_f32(v14, vdupq_lane_s32(*a2, 1)));
        v17 = *(a2 + 50);
        v18 = vcgeq_f32(v16, v17);
        v19 = *(a2 + 21);
        v20 = vandq_s8(v19, vceqq_f32(v16, v17));
        v21 = *(a2 + 52);
        v22 = vsubq_f32(vbicq_s8(v18, *(a2 + 51)), v20);
        v23 = vcgtq_f32(*(a2 + 20), v16);
        v24 = vmulq_f32(v16, vaddq_f32(v15, vandq_s8(*(a2 + 49), v23)));
        v25 = vorrq_s8(vandq_s8(*(a2 + 19), v24), v15);
        v26 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v19, vceqq_f32(v16, v19)), vsubq_f32(v22, vandq_s8(v21, v23))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)));
        v27 = vandq_s8(v15, vcgtq_f32(v25, *(a2 + 23)));
        v28 = vaddq_f32(v26, v27);
        v29 = vsubq_f32(vsubq_f32(v25, v15), vmulq_f32(vmulq_f32(*(a2 + 24), v27), v25));
        v30 = vmulq_f32(v29, v29);
        v31 = vmulq_n_f32(vaddq_f32(v28, vmulq_f32(v29, vaddq_f32(*(a2 + 61), vmulq_f32(v29, vaddq_f32(vaddq_f32(vmulq_f32(v30, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v29))), vaddq_f32(*(a2 + 59), vmulq_f32(v29, *(a2 + 60)))), vmulq_f32(vmulq_f32(v30, v30), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v29)), vmulq_f32(v30, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v29)))))))))), COERCE_FLOAT(*a2));
        v32 = vminq_f32(vmaxq_f32(v31, *(a2 + 62)), *(a2 + 63));
        v33 = vcvtq_f32_s32(vcvtq_s32_f32(v32));
        v34 = vsubq_f32(v33, vandq_s8(v15, vcgtq_f32(v33, v32)));
        v35 = vsubq_f32(v32, v34);
        v36 = vmulq_f32(v35, v35);
        v37 = vcgtq_f32(*(a2 + 70), v34);
        *(v7 + v10) = vbslq_s8(*(a2 + 15), v11, vbslq_s8(vcgtq_f32(v12, vsubq_f32(v14, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v13.i8, 0), vmulq_laneq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(v31, v31)), v12), vmulq_f32(vaddq_f32(v15, vandq_s8(*(a2 + 71), v37)), vmulq_f32(vaddq_f32(v15, vmulq_f32(v35, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v35, *(a2 + 69))), vmulq_f32(v36, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v35)), vmulq_f32(v36, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v35)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v34, vandq_s8(v21, v37)))), 0x17uLL))), v31), *a2, 3)));
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

uint64_t Gettype2_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = vdupq_lane_s32(*a2, 1);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v16)));
      v22 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v16)));
      v23 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
      v24 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v25 = *(a2 + 7);
      v26 = *(a2 + 8);
      v27 = vrsqrteq_f32(vaddq_f32(v25, vsubq_f32(v21, v23)));
      v28 = vrsqrteq_f32(vaddq_f32(v25, vsubq_f32(v22, v24)));
      v29 = vaddq_f32(v26, v23);
      v30 = vaddq_f32(v26, v24);
      v31 = *(a2 + 9);
      v32 = *(a2 + 10);
      v33 = vmulq_n_f32(vsubq_f32(v29, vmulq_f32(v27, v31)), COERCE_FLOAT(*a2));
      v34 = vmulq_n_f32(vsubq_f32(v30, vmulq_f32(v28, v31)), COERCE_FLOAT(*a2));
      v35 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
      v36 = vcvtq_f32_s32(vcvtq_s32_f32(v34));
      v37 = vsubq_f32(v35, vandq_s8(v17, vcgtq_f32(v35, v33)));
      v38 = vsubq_f32(v36, vandq_s8(v17, vcgtq_f32(v36, v34)));
      v39 = vsubq_f32(v33, v37);
      v40 = vsubq_f32(v34, v38);
      v41 = vaddq_f32(v32, v37);
      v42 = vaddq_f32(v32, v38);
      v43 = *(a2 + 11);
      v44 = *(a2 + 12);
      v45 = vmulq_f32(vrecpeq_f32(vsubq_f32(v43, v39)), v44);
      v46 = vmulq_f32(vrecpeq_f32(vsubq_f32(v43, v40)), v44);
      v47 = vmaxq_f32(vaddq_f32(v41, vmulq_f32(v45, v45)), v15);
      v48 = vmaxq_f32(vaddq_f32(v42, vmulq_f32(v46, v46)), v15);
      v49 = *(a2 + 13);
      v50 = *(a2 + 14);
      v51 = vdupq_lane_s32(*(a2 + 16), 1);
      v52 = vsubq_f32(v19, v51);
      v53 = vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0);
      v54 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v20, v51)), v53, vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v48, v49), v50)), *a2, 3));
      v55 = *(a2 + 15);
      v56 = vdupq_lane_s32(*(a2 + 32), 0);
      v57 = (v6 + v11);
      v57[-1] = vbslq_s8(v55, v13, vminq_f32(vmaxq_f32(vaddq_f32(v56, vbslq_s8(v55, v13, vminq_f32(vbslq_s8(vcgtq_f32(v15, v52), v53, vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v47, v49), v50)), *a2, 3)), v17))), v15), v17));
      *v57 = vbslq_s8(v55, v14, vminq_f32(vmaxq_f32(vaddq_f32(v56, vbslq_s8(v55, v14, vminq_f32(v54, v17))), v15), v17));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v58 = 16 * v10;
    v59 = *(v7 + v58);
    v60 = *(a2 + 75);
    v61 = *(a2 + 5);
    v62 = vminq_f32(vmaxq_f32(v59, v60), v61);
    v63 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v62, vdupq_lane_s32(*a2, 1))));
    v64 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
    v65 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v64), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v63, v64))), *(a2 + 9))), COERCE_FLOAT(*a2));
    v66 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
    v67 = vsubq_f32(v66, vandq_s8(v61, vcgtq_f32(v66, v65)));
    v68 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v65, v67))), *(a2 + 12));
    *(v6 + v58) = vbslq_s8(*(a2 + 15), v59, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v59, vminq_f32(vbslq_s8(vcgtq_f32(v60, vsubq_f32(v62, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v68, v68), vaddq_f32(*(a2 + 10), v67)), v60), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v61))), v60), v61));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype2_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = vdupq_lane_s32(*a2, 1);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v16)));
      v22 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v16)));
      v23 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
      v24 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v25 = *(a2 + 7);
      v26 = *(a2 + 8);
      v27 = vrsqrteq_f32(vaddq_f32(v25, vsubq_f32(v21, v23)));
      v28 = vrsqrteq_f32(vaddq_f32(v25, vsubq_f32(v22, v24)));
      v29 = vaddq_f32(v26, v23);
      v30 = vaddq_f32(v26, v24);
      v31 = *(a2 + 9);
      v32 = *(a2 + 10);
      v33 = vmulq_n_f32(vsubq_f32(v29, vmulq_f32(v27, v31)), COERCE_FLOAT(*a2));
      v34 = vmulq_n_f32(vsubq_f32(v30, vmulq_f32(v28, v31)), COERCE_FLOAT(*a2));
      v35 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
      v36 = vcvtq_f32_s32(vcvtq_s32_f32(v34));
      v37 = vsubq_f32(v35, vandq_s8(v17, vcgtq_f32(v35, v33)));
      v38 = vsubq_f32(v36, vandq_s8(v17, vcgtq_f32(v36, v34)));
      v39 = vsubq_f32(v33, v37);
      v40 = vsubq_f32(v34, v38);
      v41 = vaddq_f32(v32, v37);
      v42 = vaddq_f32(v32, v38);
      v43 = *(a2 + 11);
      v44 = *(a2 + 12);
      v45 = vmulq_f32(vrecpeq_f32(vsubq_f32(v43, v39)), v44);
      v46 = vmulq_f32(vrecpeq_f32(vsubq_f32(v43, v40)), v44);
      v47 = vmaxq_f32(vaddq_f32(v41, vmulq_f32(v45, v45)), v15);
      v48 = vmaxq_f32(vaddq_f32(v42, vmulq_f32(v46, v46)), v15);
      v49 = *(a2 + 13);
      v50 = *(a2 + 14);
      v51 = vdupq_lane_s32(*(a2 + 16), 1);
      v52 = vsubq_f32(v19, v51);
      v53 = vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0);
      v54 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v20, v51)), v53, vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v48, v49), v50)), *a2, 3));
      v55 = *(a2 + 15);
      v56 = vdupq_lane_s32(*(a2 + 32), 0);
      v57 = (v6 + v11);
      v57[-1] = vbslq_s8(v55, v13, vminq_f32(vmaxq_f32(vaddq_f32(v56, vbslq_s8(v55, v13, vminq_f32(vbslq_s8(vcgtq_f32(v15, v52), v53, vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v47, v49), v50)), *a2, 3)), v17))), v15), v17));
      *v57 = vbslq_s8(v55, v14, vminq_f32(vmaxq_f32(vaddq_f32(v56, vbslq_s8(v55, v14, vminq_f32(v54, v17))), v15), v17));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v58 = 16 * v10;
    v59 = *(v7 + v58);
    v60 = *(a2 + 75);
    v61 = *(a2 + 5);
    v62 = vminq_f32(vmaxq_f32(v59, v60), v61);
    v63 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v62, vdupq_lane_s32(*a2, 1))));
    v64 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
    v65 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v64), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v63, v64))), *(a2 + 9))), COERCE_FLOAT(*a2));
    v66 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
    v67 = vsubq_f32(v66, vandq_s8(v61, vcgtq_f32(v66, v65)));
    v68 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v65, v67))), *(a2 + 12));
    *(v6 + v58) = vbslq_s8(*(a2 + 15), v59, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v59, vminq_f32(vbslq_s8(vcgtq_f32(v60, vsubq_f32(v62, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v68, v68), vaddq_f32(*(a2 + 10), v67)), v60), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v61))), v60), v61));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype2_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v12 = *(a2 + 75);
        v13 = *(a2 + 5);
        v14 = vminq_f32(vmaxq_f32(v11, v12), v13);
        v15 = vbslq_s8(vcgtq_f32(vandq_s8(v13, vceqq_f32(vdupq_lane_s32(*a2, 0), v12)), v12), v13, vaddq_f32(v14, vdupq_lane_s32(*a2, 1)));
        v16 = vorrq_s8(vandq_s8(*(a2 + 19), v15), v13);
        v17 = vandq_s8(v13, vcgtq_f32(v16, *(a2 + 23)));
        v18 = vsubq_f32(vsubq_f32(v16, v13), vmulq_f32(vmulq_f32(*(a2 + 24), v17), v16));
        v19 = vmulq_f32(v18, v18);
        v20 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v15, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v15))), *(a2 + 22)), v17), vmulq_f32(v18, vaddq_f32(*(a2 + 43), vmulq_f32(v18, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v18)), vmulq_f32(v19, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v18)), vmulq_f32(v19, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v18)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
        v21 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
        v22 = vsubq_f32(v21, vandq_s8(v13, vcgtq_f32(v21, v20)));
        v23 = vsubq_f32(v20, v22);
        *(v7 + v10) = vbslq_s8(*(a2 + 15), v11, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v11, vminq_f32(vbslq_s8(vcgtq_f32(v12, vsubq_f32(v14, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v13, vmulq_f32(v23, vaddq_f32(*(a2 + 48), vmulq_f32(v23, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v23)), vmulq_f32(vmulq_f32(v23, v23), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v23)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v22)), 0x17uLL)), *a2, 3)), v13))), v12), v13));
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

uint64_t Gettype2_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = vdupq_lane_s32(*a2, 1);
      v20 = vaddq_f32(v17, v19);
      v21 = vaddq_f32(v18, v19);
      v22 = *(a2 + 19);
      v23 = *(a2 + 20);
      v24 = vorrq_s8(vandq_s8(v22, v20), v16);
      v25 = vorrq_s8(vandq_s8(v22, v21), v16);
      v26 = *(a2 + 21);
      v27 = *(a2 + 22);
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v23, v21)));
      v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v23, v20))), v27);
      v30 = *(a2 + 23);
      v31 = *(a2 + 24);
      v32 = vandq_s8(v16, vcgtq_f32(v24, v30));
      v33 = vandq_s8(v16, vcgtq_f32(v25, v30));
      v34 = vaddq_f32(v29, v32);
      v35 = vaddq_f32(vsubq_f32(v28, v27), v33);
      v36 = vsubq_f32(vsubq_f32(v24, v16), vmulq_f32(vmulq_f32(v31, v32), v24));
      v37 = vsubq_f32(vsubq_f32(v25, v16), vmulq_f32(vmulq_f32(v31, v33), v25));
      v38 = *(a2 + 25);
      v39 = *(a2 + 26);
      v40 = *(a2 + 27);
      v41 = *(a2 + 28);
      v43 = *(a2 + 29);
      v42 = *(a2 + 30);
      v44 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v34, vmulq_f32(v36, vaddq_f32(vaddq_f32(v40, vmulq_f32(v41, v36)), vmulq_f32(vmulq_f32(v36, v36), vaddq_f32(v38, vmulq_f32(v39, v36)))))), COERCE_FLOAT(*a2)), v43);
      v45 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v35, vmulq_f32(v37, vaddq_f32(vaddq_f32(v40, vmulq_f32(v41, v37)), vmulq_f32(vmulq_f32(v37, v37), vaddq_f32(v38, vmulq_f32(v39, v37)))))), COERCE_FLOAT(*a2)), v43);
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
      v48 = vsubq_f32(v46, vandq_s8(v16, vcgtq_f32(v46, v44)));
      v49 = vsubq_f32(v47, vandq_s8(v16, vcgtq_f32(v47, v45)));
      v50 = vsubq_f32(v44, v48);
      v51 = vsubq_f32(v45, v49);
      v52 = *(a2 + 31);
      v53 = *(a2 + 32);
      v54 = vaddq_f32(v42, vmulq_f32(v52, v50));
      v55 = vmulq_f32(v51, vaddq_f32(v53, vmulq_f32(v51, vaddq_f32(v42, vmulq_f32(v52, v51)))));
      v56 = vcvtq_s32_f32(v48);
      v57 = vcvtq_s32_f32(v49);
      v58 = *(a2 + 33);
      v59 = vdupq_lane_s32(*(a2 + 16), 1);
      v60 = vcgtq_f32(v15, vsubq_f32(v17, v59));
      v61 = vcgtq_f32(v15, vsubq_f32(v18, v59));
      v62 = vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0);
      v63 = vbslq_s8(v61, v62, vmulq_laneq_f32(vmulq_f32(vaddq_f32(v16, v55), vshlq_n_s32(vaddq_s32(v58, v57), 0x17uLL)), *a2, 3));
      v64 = vminq_f32(vbslq_s8(v60, v62, vmulq_laneq_f32(vmulq_f32(vaddq_f32(v16, vmulq_f32(v50, vaddq_f32(v53, vmulq_f32(v50, v54)))), vshlq_n_s32(vaddq_s32(v58, v56), 0x17uLL)), *a2, 3)), v16);
      v65 = *(a2 + 15);
      v66 = vdupq_lane_s32(*(a2 + 32), 0);
      v67 = (v6 + v11);
      v67[-1] = vbslq_s8(v65, v13, vminq_f32(vmaxq_f32(vaddq_f32(v66, vbslq_s8(v65, v13, v64)), v15), v16));
      *v67 = vbslq_s8(v65, v14, vminq_f32(vmaxq_f32(vaddq_f32(v66, vbslq_s8(v65, v14, vminq_f32(v63, v16))), v15), v16));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v68 = 16 * v10;
    v69 = *(v7 + v68);
    v70 = *(a2 + 75);
    v71 = *(a2 + 5);
    v72 = vminq_f32(vmaxq_f32(v69, v70), v71);
    v73 = vaddq_f32(v72, vdupq_lane_s32(*a2, 1));
    v74 = vorrq_s8(vandq_s8(*(a2 + 19), v73), v71);
    v75 = vandq_s8(v71, vcgtq_f32(v74, *(a2 + 23)));
    v76 = vsubq_f32(vsubq_f32(v74, v71), vmulq_f32(vmulq_f32(*(a2 + 24), v75), v74));
    v77 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v73, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v73))), *(a2 + 22)), v75), vmulq_f32(v76, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(*(a2 + 28), v76)), vmulq_f32(vmulq_f32(v76, v76), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v76)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v78 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
    v79 = vsubq_f32(v78, vandq_s8(v71, vcgtq_f32(v78, v77)));
    v80 = vsubq_f32(v77, v79);
    *(v6 + v68) = vbslq_s8(*(a2 + 15), v69, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v69, vminq_f32(vbslq_s8(vcgtq_f32(v70, vsubq_f32(v72, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*&vbicq_s8(*(a2 + 3), *(a2 + 74)), 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v71, vmulq_f32(v80, vaddq_f32(*(a2 + 32), vmulq_f32(v80, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v80)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v79)), 0x17uLL)), *a2, 3)), v71))), v70), v71));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype2_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = vbicq_s8(v15, *(a2 + 74));
      v17 = vdupq_laneq_s32(v16, 3);
      v18 = vdupq_lane_s32(*a2, 1);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vaddq_f32(v19, v18);
      v22 = vaddq_f32(v20, v18);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vandq_s8(v23, v21);
      v26 = vandq_s8(v23, v22);
      v27 = *(a2 + 5);
      v28 = vorrq_s8(v25, v27);
      v29 = vorrq_s8(v26, v27);
      v30 = *(a2 + 21);
      v31 = *(a2 + 22);
      v32 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v24, v21)));
      v33 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v24, v22)));
      v34 = *(a2 + 23);
      v35 = *(a2 + 24);
      v36 = vandq_s8(v27, vcgtq_f32(v28, v34));
      v37 = vandq_s8(v27, vcgtq_f32(v29, v34));
      v38 = vaddq_f32(vsubq_f32(v32, v31), v36);
      v39 = vsubq_f32(vsubq_f32(v28, v27), vmulq_f32(vmulq_f32(v35, v36), v28));
      v40 = vsubq_f32(vsubq_f32(v29, v27), vmulq_f32(vmulq_f32(v35, v37), v29));
      v41 = *(a2 + 25);
      v42 = *(a2 + 26);
      v43 = *(a2 + 27);
      v44 = *(a2 + 28);
      v45 = vmulq_n_f32(vaddq_f32(v38, vmulq_f32(v39, vaddq_f32(vaddq_f32(v43, vmulq_f32(v39, v44)), vmulq_f32(vmulq_f32(v39, v39), vaddq_f32(v41, vmulq_f32(v42, v39)))))), COERCE_FLOAT(*a2));
      v46 = vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(v33, v31), v37), vmulq_f32(v40, vaddq_f32(vaddq_f32(v43, vmulq_f32(v40, v44)), vmulq_f32(vmulq_f32(v40, v40), vaddq_f32(v41, vmulq_f32(v42, v40)))))), COERCE_FLOAT(*a2));
      v47 = *(a2 + 29);
      v48 = *(a2 + 30);
      v49 = vmaxq_f32(v45, v47);
      v50 = vmaxq_f32(v46, v47);
      v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
      v52 = vcvtq_f32_s32(vcvtq_s32_f32(v50));
      v53 = vsubq_f32(v51, vandq_s8(v27, vcgtq_f32(v51, v49)));
      v54 = vsubq_f32(v52, vandq_s8(v27, vcgtq_f32(v52, v50)));
      v55 = vsubq_f32(v49, v53);
      v56 = vsubq_f32(v50, v54);
      v57 = *(a2 + 31);
      v58 = *(a2 + 32);
      v59 = vaddq_f32(v27, vmulq_f32(v55, vaddq_f32(v58, vmulq_f32(v55, vaddq_f32(v48, vmulq_f32(v57, v55))))));
      v60 = vaddq_f32(v27, vmulq_f32(v56, vaddq_f32(v58, vmulq_f32(v56, vaddq_f32(v48, vmulq_f32(v57, v56))))));
      v61 = *(a2 + 33);
      v62 = vdupq_lane_s32(*(a2 + 16), 1);
      v63 = vmulq_laneq_f32(vmulq_f32(v60, vshlq_n_s32(vaddq_s32(v61, vcvtq_s32_f32(v54)), 0x17uLL)), *a2, 3);
      v64 = vcgtq_f32(v15, vsubq_f32(v19, v62));
      v65 = vcgtq_f32(v15, vsubq_f32(v20, v62));
      v66 = vdupq_lane_s32(*v16.i8, 0);
      v67 = vbslq_s8(v64, v66, vmulq_laneq_f32(vmulq_f32(v59, vshlq_n_s32(vaddq_s32(v61, vcvtq_s32_f32(v53)), 0x17uLL)), *a2, 3));
      v68 = vbslq_s8(v65, v66, v63);
      v69 = *(a2 + 15);
      v70 = vdupq_lane_s32(*(a2 + 32), 0);
      v71 = (v6 + v11);
      v71[-1] = vbslq_s8(v69, v13, vaddq_f32(v70, vbslq_s8(v69, v13, v67)));
      *v71 = vbslq_s8(v69, v14, vaddq_f32(v70, vbslq_s8(v69, v14, v68)));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v72 = 16 * v10;
    v73 = *(v7 + v72);
    v74 = *(a2 + 75);
    v75 = vbicq_s8(v74, *(a2 + 74));
    v76 = vminq_f32(vmaxq_f32(v73, v74), vdupq_laneq_s32(v75, 3));
    v77 = vaddq_f32(v76, vdupq_lane_s32(*a2, 1));
    v78 = *(a2 + 5);
    v79 = vorrq_s8(vandq_s8(*(a2 + 19), v77), v78);
    v80 = vandq_s8(v78, vcgtq_f32(v79, *(a2 + 23)));
    v81 = vsubq_f32(vsubq_f32(v79, v78), vmulq_f32(vmulq_f32(*(a2 + 24), v80), v79));
    v82 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v77, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v77))), *(a2 + 22)), v80), vmulq_f32(v81, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v81, *(a2 + 28))), vmulq_f32(vmulq_f32(v81, v81), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v81)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v83 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
    v84 = vsubq_f32(v83, vandq_s8(v78, vcgtq_f32(v83, v82)));
    v85 = vsubq_f32(v82, v84);
    *(v6 + v72) = vbslq_s8(*(a2 + 15), v73, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v73, vbslq_s8(vcgtq_f32(v74, vsubq_f32(v76, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v75.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v78, vmulq_f32(v85, vaddq_f32(*(a2 + 32), vmulq_f32(v85, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v85)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v84)), 0x17uLL)), *a2, 3)))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype2_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v12 = *(a2 + 75);
        v13 = vbicq_s8(v12, *(a2 + 74));
        v14 = vminq_f32(vmaxq_f32(v11, v12), vdupq_laneq_s32(v13, 3));
        v15 = *(a2 + 5);
        v16 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vdupq_lane_s32(*a2, 0), v12)), v12), v15, vaddq_f32(v14, vdupq_lane_s32(*a2, 1)));
        v17 = vorrq_s8(vandq_s8(*(a2 + 19), v16), v15);
        v18 = vandq_s8(v15, vcgtq_f32(v17, *(a2 + 23)));
        v19 = vsubq_f32(vsubq_f32(v17, v15), vmulq_f32(vmulq_f32(*(a2 + 24), v18), v17));
        v20 = vmulq_f32(v19, v19);
        v21 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v16, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v16))), *(a2 + 22)), v18), vmulq_f32(v19, vaddq_f32(*(a2 + 43), vmulq_f32(v19, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v19)), vmulq_f32(v20, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v19)), vmulq_f32(v20, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v19)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
        v22 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
        v23 = vsubq_f32(v22, vandq_s8(v15, vcgtq_f32(v22, v21)));
        v24 = vsubq_f32(v21, v23);
        *(v7 + v10) = vbslq_s8(*(a2 + 15), v11, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v11, vbslq_s8(vcgtq_f32(v12, vsubq_f32(v14, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v13.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v15, vmulq_f32(v24, vaddq_f32(*(a2 + 48), vmulq_f32(v24, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v24)), vmulq_f32(vmulq_f32(v24, v24), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v24)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v23)), 0x17uLL)), *a2, 3)))));
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

uint64_t Gettype2_float_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v12 = *(a2 + 75);
        v13 = vbicq_s8(v12, *(a2 + 74));
        v14 = vminq_f32(vmaxq_f32(v11, v12), vdupq_laneq_s32(v13, 3));
        v15 = *(a2 + 5);
        v16 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vdupq_lane_s32(*a2, 0), v12)), v12), v15, vaddq_f32(v14, vdupq_lane_s32(*a2, 1)));
        v17 = *(a2 + 50);
        v18 = vcgeq_f32(v16, v17);
        v19 = *(a2 + 21);
        v20 = vandq_s8(v19, vceqq_f32(v16, v17));
        v21 = *(a2 + 52);
        v22 = vsubq_f32(vbicq_s8(v18, *(a2 + 51)), v20);
        v23 = vcgtq_f32(*(a2 + 20), v16);
        v24 = vmulq_f32(v16, vaddq_f32(v15, vandq_s8(*(a2 + 49), v23)));
        v25 = vorrq_s8(vandq_s8(*(a2 + 19), v24), v15);
        v26 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v19, vceqq_f32(v16, v19)), vsubq_f32(v22, vandq_s8(v21, v23))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)));
        v27 = vandq_s8(v15, vcgtq_f32(v25, *(a2 + 23)));
        v28 = vaddq_f32(v26, v27);
        v29 = vsubq_f32(vsubq_f32(v25, v15), vmulq_f32(vmulq_f32(*(a2 + 24), v27), v25));
        v30 = vmulq_f32(v29, v29);
        v31 = vmulq_n_f32(vaddq_f32(v28, vmulq_f32(v29, vaddq_f32(*(a2 + 61), vmulq_f32(v29, vaddq_f32(vaddq_f32(vmulq_f32(v30, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v29))), vaddq_f32(*(a2 + 59), vmulq_f32(v29, *(a2 + 60)))), vmulq_f32(vmulq_f32(v30, v30), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v29)), vmulq_f32(v30, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v29)))))))))), COERCE_FLOAT(*a2));
        v32 = vminq_f32(vmaxq_f32(v31, *(a2 + 62)), *(a2 + 63));
        v33 = vcvtq_f32_s32(vcvtq_s32_f32(v32));
        v34 = vsubq_f32(v33, vandq_s8(v15, vcgtq_f32(v33, v32)));
        v35 = vsubq_f32(v32, v34);
        v36 = vmulq_f32(v35, v35);
        v37 = vcgtq_f32(*(a2 + 70), v34);
        *(v7 + v10) = vbslq_s8(*(a2 + 15), v11, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v11, vbslq_s8(vcgtq_f32(v12, vsubq_f32(v14, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v13.i8, 0), vmulq_laneq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(v31, v31)), v12), vmulq_f32(vaddq_f32(v15, vandq_s8(*(a2 + 71), v37)), vmulq_f32(vaddq_f32(v15, vmulq_f32(v35, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v35, *(a2 + 69))), vmulq_f32(v36, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v35)), vmulq_f32(v36, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v35)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v34, vandq_s8(v21, v37)))), 0x17uLL))), v31), *a2, 3)))));
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

uint64_t Gettype3_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v16 = *(a2 + 75);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v16), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v16), v17);
      v21 = *(a2 + 1);
      v22 = vminq_f32(vmaxq_f32(v15, v16), v17);
      v23 = vdupq_lane_s32(*a2, 1);
      v24 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v23)));
      v25 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v23)));
      v26 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v22, v23)));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
      v29 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
      v30 = *(a2 + 7);
      v31 = *(a2 + 8);
      v32 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v24, v27)));
      v33 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v25, v28)));
      v34 = vaddq_f32(v31, v27);
      v35 = vaddq_f32(v31, v28);
      v36 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v26, v29)));
      v37 = vaddq_f32(v31, v29);
      v38 = *(a2 + 9);
      v39 = *(a2 + 10);
      v40 = vmulq_n_f32(vsubq_f32(v34, vmulq_f32(v32, v38)), COERCE_FLOAT(*a2));
      v41 = vmulq_n_f32(vsubq_f32(v35, vmulq_f32(v33, v38)), COERCE_FLOAT(*a2));
      v42 = vmulq_n_f32(vsubq_f32(v37, vmulq_f32(v36, v38)), COERCE_FLOAT(*a2));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vsubq_f32(v43, vandq_s8(v17, vcgtq_f32(v43, v40)));
      v47 = vsubq_f32(v44, vandq_s8(v17, vcgtq_f32(v44, v41)));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = vsubq_f32(v40, v46);
      v50 = vsubq_f32(v41, v47);
      v51 = vsubq_f32(v42, v48);
      v52 = vaddq_f32(v39, v46);
      v53 = vaddq_f32(v39, v47);
      v54 = vaddq_f32(v39, v48);
      v55 = *(a2 + 11);
      v56 = *(a2 + 12);
      v57 = vmulq_f32(vrecpeq_f32(vsubq_f32(v55, v49)), v56);
      v58 = vmulq_f32(vrecpeq_f32(vsubq_f32(v55, v50)), v56);
      v59 = vmulq_f32(vrecpeq_f32(vsubq_f32(v55, v51)), v56);
      v60 = vmaxq_f32(vaddq_f32(v52, vmulq_f32(v57, v57)), v16);
      v61 = vmaxq_f32(vaddq_f32(v53, vmulq_f32(v58, v58)), v16);
      v62 = *(a2 + 13);
      v63 = *(a2 + 14);
      v64 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v60, v62), v63));
      v65 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v61, v62), v63));
      v66 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v54, vmulq_f32(v59, v59)), v16), v62), v63));
      v67 = vmulq_n_f32(v19, *&v21);
      v68 = vmulq_n_f32(v20, *&v21);
      v69 = vmulq_n_f32(v22, *&v21);
      v70 = vdupq_lane_s32(*&v21, 1);
      v71 = vminq_f32(vbslq_s8(vcgtq_f32(v16, vsubq_f32(v19, v70)), v67, vmulq_laneq_f32(v64, *a2, 3)), v17);
      v72 = vminq_f32(vbslq_s8(vcgtq_f32(v16, vsubq_f32(v20, v70)), v68, vmulq_laneq_f32(v65, *a2, 3)), v17);
      v73 = vminq_f32(vbslq_s8(vcgtq_f32(v16, vsubq_f32(v22, v70)), v69, vmulq_laneq_f32(v66, *a2, 3)), v17);
      v74 = *(a2 + 15);
      v75 = (v6 + v10);
      *v75 = vbslq_s8(v74, v13, v71);
      v75[1] = vbslq_s8(v74, v14, v72);
      v75[2] = vbslq_s8(v74, v15, v73);
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
      v76 = *(v7 + 16 * v11);
      v77 = *(a2 + 75);
      v78 = *(a2 + 5);
      v79 = vminq_f32(vmaxq_f32(v76, v77), v78);
      v80 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v79, vdupq_lane_s32(*a2, 1))));
      v81 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
      v82 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v81), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v80, v81))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v83 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
      v84 = vsubq_f32(v83, vandq_s8(v78, vcgtq_f32(v83, v82)));
      v85 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v82, v84))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v76, vminq_f32(vbslq_s8(vcgtq_f32(v77, vsubq_f32(v79, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v79, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v85, v85), vaddq_f32(*(a2 + 10), v84)), v77), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v78));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v16 = *(a2 + 75);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v16), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v16), v17);
      v21 = *(a2 + 1);
      v22 = vminq_f32(vmaxq_f32(v15, v16), v17);
      v23 = vdupq_lane_s32(*a2, 1);
      v24 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v23)));
      v25 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v23)));
      v26 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v22, v23)));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
      v29 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
      v30 = *(a2 + 7);
      v31 = *(a2 + 8);
      v32 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v24, v27)));
      v33 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v25, v28)));
      v34 = vaddq_f32(v31, v27);
      v35 = vaddq_f32(v31, v28);
      v36 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v26, v29)));
      v37 = vaddq_f32(v31, v29);
      v38 = *(a2 + 9);
      v39 = *(a2 + 10);
      v40 = vmulq_n_f32(vsubq_f32(v34, vmulq_f32(v32, v38)), COERCE_FLOAT(*a2));
      v41 = vmulq_n_f32(vsubq_f32(v35, vmulq_f32(v33, v38)), COERCE_FLOAT(*a2));
      v42 = vmulq_n_f32(vsubq_f32(v37, vmulq_f32(v36, v38)), COERCE_FLOAT(*a2));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vsubq_f32(v43, vandq_s8(v17, vcgtq_f32(v43, v40)));
      v47 = vsubq_f32(v44, vandq_s8(v17, vcgtq_f32(v44, v41)));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = vsubq_f32(v40, v46);
      v50 = vsubq_f32(v41, v47);
      v51 = vsubq_f32(v42, v48);
      v52 = vaddq_f32(v39, v46);
      v53 = vaddq_f32(v39, v47);
      v54 = vaddq_f32(v39, v48);
      v55 = *(a2 + 11);
      v56 = *(a2 + 12);
      v57 = vmulq_f32(vrecpeq_f32(vsubq_f32(v55, v49)), v56);
      v58 = vmulq_f32(vrecpeq_f32(vsubq_f32(v55, v50)), v56);
      v59 = vmulq_f32(vrecpeq_f32(vsubq_f32(v55, v51)), v56);
      v60 = vmaxq_f32(vaddq_f32(v52, vmulq_f32(v57, v57)), v16);
      v61 = vmaxq_f32(vaddq_f32(v53, vmulq_f32(v58, v58)), v16);
      v62 = *(a2 + 13);
      v63 = *(a2 + 14);
      v64 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v60, v62), v63));
      v65 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v61, v62), v63));
      v66 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v54, vmulq_f32(v59, v59)), v16), v62), v63));
      v67 = vmulq_n_f32(v19, *&v21);
      v68 = vmulq_n_f32(v20, *&v21);
      v69 = vmulq_n_f32(v22, *&v21);
      v70 = vdupq_lane_s32(*&v21, 1);
      v71 = vminq_f32(vbslq_s8(vcgtq_f32(v16, vsubq_f32(v19, v70)), v67, vmulq_laneq_f32(v64, *a2, 3)), v17);
      v72 = vminq_f32(vbslq_s8(vcgtq_f32(v16, vsubq_f32(v20, v70)), v68, vmulq_laneq_f32(v65, *a2, 3)), v17);
      v73 = vminq_f32(vbslq_s8(vcgtq_f32(v16, vsubq_f32(v22, v70)), v69, vmulq_laneq_f32(v66, *a2, 3)), v17);
      v74 = *(a2 + 15);
      v75 = (v6 + v10);
      *v75 = vbslq_s8(v74, v13, v71);
      v75[1] = vbslq_s8(v74, v14, v72);
      v75[2] = vbslq_s8(v74, v15, v73);
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
      v76 = *(v7 + 16 * v11);
      v77 = *(a2 + 75);
      v78 = *(a2 + 5);
      v79 = vminq_f32(vmaxq_f32(v76, v77), v78);
      v80 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v79, vdupq_lane_s32(*a2, 1))));
      v81 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
      v82 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v81), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v80, v81))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v83 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
      v84 = vsubq_f32(v83, vandq_s8(v78, vcgtq_f32(v83, v82)));
      v85 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v82, v84))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v76, vminq_f32(vbslq_s8(vcgtq_f32(v77, vsubq_f32(v79, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v79, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v85, v85), vaddq_f32(*(a2 + 10), v84)), v77), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v78));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v13 = *(a2 + 75);
      v14 = *(v7 + v11 - 16);
      v15 = *(v7 + v11);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v14, v13), v16);
      v18 = *(a2 + 1);
      v19 = vminq_f32(vmaxq_f32(v15, v13), v16);
      v20 = vdupq_lane_s32(*a2, 1);
      v21 = vcgtq_f32(vandq_s8(v16, vceqq_f32(vdupq_lane_s32(*a2, 0), v13)), v13);
      v22 = vbslq_s8(v21, v16, vaddq_f32(v17, v20));
      v23 = vbslq_s8(v21, v16, vaddq_f32(v19, v20));
      v24 = *(a2 + 19);
      v25 = *(a2 + 20);
      v26 = vorrq_s8(vandq_s8(v24, v22), v16);
      v27 = vorrq_s8(vandq_s8(v24, v23), v16);
      v28 = *(a2 + 21);
      v29 = *(a2 + 22);
      v30 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)), vandq_s8(v28, vcgtq_f32(v25, v23)));
      v31 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v28, vcgtq_f32(v25, v22))), v29);
      v32 = *(a2 + 23);
      v33 = *(a2 + 24);
      v34 = vsubq_f32(v30, v29);
      v35 = vandq_s8(v16, vcgtq_f32(v26, v32));
      v36 = vandq_s8(v16, vcgtq_f32(v27, v32));
      v37 = vaddq_f32(v31, v35);
      v38 = vsubq_f32(vsubq_f32(v26, v16), vmulq_f32(vmulq_f32(v33, v35), v26));
      v39 = vsubq_f32(vsubq_f32(v27, v16), vmulq_f32(vmulq_f32(v33, v36), v27));
      v40 = vmulq_f32(v38, v38);
      v41 = *(a2 + 37);
      v42 = *(a2 + 38);
      v43 = *(a2 + 39);
      v44 = *(a2 + 40);
      v45 = vaddq_f32(v41, vmulq_f32(v42, v38));
      v46 = vaddq_f32(v43, vmulq_f32(v44, v38));
      v47 = vaddq_f32(v43, vmulq_f32(v44, v39));
      v48 = vaddq_f32(v41, vmulq_f32(v42, v39));
      v49 = *(a2 + 41);
      v50 = *(a2 + 42);
      v51 = vaddq_f32(v49, vmulq_f32(v50, v38));
      v52 = vaddq_f32(v49, vmulq_f32(v50, v39));
      v53 = vmulq_f32(v39, v39);
      v54 = vaddq_f32(v34, v36);
      v55 = vaddq_f32(v51, vmulq_f32(v40, vaddq_f32(v45, vmulq_f32(v40, v46))));
      v56 = vaddq_f32(v52, vmulq_f32(v53, vaddq_f32(v48, vmulq_f32(v53, v47))));
      v57 = *(a2 + 43);
      v58 = *(a2 + 44);
      v59 = vaddq_f32(v54, vmulq_f32(v39, vaddq_f32(v57, vmulq_f32(v39, v56))));
      v60 = vmulq_n_f32(vaddq_f32(v37, vmulq_f32(v38, vaddq_f32(v57, vmulq_f32(v38, v55)))), COERCE_FLOAT(*a2));
      v61 = *(a2 + 29);
      v62 = vmaxq_f32(v60, v61);
      v63 = vmaxq_f32(vmulq_n_f32(v59, COERCE_FLOAT(*a2)), v61);
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vsubq_f32(v64, vandq_s8(v16, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v65, vandq_s8(v16, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v62, v66);
      v69 = vsubq_f32(v63, v67);
      v70 = *(a2 + 45);
      v71 = *(a2 + 46);
      v72 = *(a2 + 47);
      v73 = *(a2 + 48);
      v74 = *(a2 + 33);
      v75 = vmulq_f32(vaddq_f32(v16, vmulq_f32(v69, vaddq_f32(v73, vmulq_f32(v69, vaddq_f32(vaddq_f32(v71, vmulq_f32(v72, v69)), vmulq_f32(vmulq_f32(v69, v69), vaddq_f32(v58, vmulq_f32(v70, v69)))))))), vshlq_n_s32(vaddq_s32(v74, vcvtq_s32_f32(v67)), 0x17uLL));
      v76 = vmulq_laneq_f32(vmulq_f32(vaddq_f32(v16, vmulq_f32(v68, vaddq_f32(v73, vmulq_f32(v68, vaddq_f32(vaddq_f32(v71, vmulq_f32(v68, v72)), vmulq_f32(vmulq_f32(v68, v68), vaddq_f32(v58, vmulq_f32(v70, v68)))))))), vshlq_n_s32(vaddq_s32(v74, vcvtq_s32_f32(v66)), 0x17uLL)), *a2, 3);
      v77 = vmulq_n_f32(v17, *&v18);
      v78 = vmulq_n_f32(v19, *&v18);
      v79 = vdupq_lane_s32(*&v18, 1);
      v80 = vminq_f32(vbslq_s8(vcgtq_f32(v13, vsubq_f32(v17, v79)), v77, v76), v16);
      v81 = vminq_f32(vbslq_s8(vcgtq_f32(v13, vsubq_f32(v19, v79)), v78, vmulq_laneq_f32(v75, *a2, 3)), v16);
      v82 = *(a2 + 15);
      v83 = (v6 + v11);
      v83[-1] = vbslq_s8(v82, v14, v80);
      *v83 = vbslq_s8(v82, v15, v81);
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
    v86 = *(a2 + 75);
    v87 = *(a2 + 5);
    v88 = vminq_f32(vmaxq_f32(v85, v86), v87);
    v89 = vbslq_s8(vcgtq_f32(vandq_s8(v87, vceqq_f32(vdupq_lane_s32(*a2, 0), v86)), v86), v87, vaddq_f32(v88, vdupq_lane_s32(*a2, 1)));
    v90 = vorrq_s8(vandq_s8(*(a2 + 19), v89), v87);
    v91 = vandq_s8(v87, vcgtq_f32(v90, *(a2 + 23)));
    v92 = vsubq_f32(vsubq_f32(v90, v87), vmulq_f32(vmulq_f32(*(a2 + 24), v91), v90));
    v93 = vmulq_f32(v92, v92);
    v94 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v89, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v89))), *(a2 + 22)), v91), vmulq_f32(v92, vaddq_f32(*(a2 + 43), vmulq_f32(v92, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v92)), vmulq_f32(v93, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v92)), vmulq_f32(v93, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v92)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v95 = vcvtq_f32_s32(vcvtq_s32_f32(v94));
    v96 = vsubq_f32(v95, vandq_s8(v87, vcgtq_f32(v95, v94)));
    v97 = vsubq_f32(v94, v96);
    *(v6 + v84) = vbslq_s8(*(a2 + 15), v85, vminq_f32(vbslq_s8(vcgtq_f32(v86, vsubq_f32(v88, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v88, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v87, vmulq_f32(v97, vaddq_f32(*(a2 + 48), vmulq_f32(v97, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v97)), vmulq_f32(vmulq_f32(v97, v97), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v97)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v96)), 0x17uLL)), *a2, 3)), v87));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = *(a2 + 1);
      v18 = vdupq_lane_s32(*a2, 1);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v21 = vaddq_f32(v19, v18);
      v22 = vaddq_f32(v20, v18);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vorrq_s8(vandq_s8(v23, v21), v16);
      v26 = *(a2 + 21);
      v27 = *(a2 + 22);
      v28 = vorrq_s8(vandq_s8(v23, v22), v16);
      v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v24, v22)));
      v30 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v24, v21))), v27);
      v31 = *(a2 + 23);
      v32 = *(a2 + 24);
      v33 = vandq_s8(v16, vcgtq_f32(v25, v31));
      v34 = vandq_s8(v16, vcgtq_f32(v28, v31));
      v35 = vaddq_f32(v30, v33);
      v36 = vmulq_f32(v32, v33);
      v37 = vmulq_f32(vmulq_f32(v32, v34), v28);
      v38 = vaddq_f32(vsubq_f32(v29, v27), v34);
      v39 = vsubq_f32(vsubq_f32(v25, v16), vmulq_f32(v36, v25));
      v40 = vsubq_f32(vsubq_f32(v28, v16), v37);
      v41 = *(a2 + 25);
      v42 = *(a2 + 26);
      v43 = *(a2 + 27);
      v44 = *(a2 + 28);
      v45 = vmulq_n_f32(vaddq_f32(v35, vmulq_f32(v39, vaddq_f32(vaddq_f32(v43, vmulq_f32(v44, v39)), vmulq_f32(vmulq_f32(v39, v39), vaddq_f32(v41, vmulq_f32(v42, v39)))))), COERCE_FLOAT(*a2));
      v46 = vmulq_n_f32(vaddq_f32(v38, vmulq_f32(v40, vaddq_f32(vaddq_f32(v43, vmulq_f32(v44, v40)), vmulq_f32(vmulq_f32(v40, v40), vaddq_f32(v41, vmulq_f32(v42, v40)))))), COERCE_FLOAT(*a2));
      v47 = *(a2 + 29);
      v48 = *(a2 + 30);
      v49 = vmaxq_f32(v45, v47);
      v50 = vmaxq_f32(v46, v47);
      v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
      v52 = vcvtq_f32_s32(vcvtq_s32_f32(v50));
      v53 = vsubq_f32(v51, vandq_s8(v16, vcgtq_f32(v51, v49)));
      v54 = vsubq_f32(v52, vandq_s8(v16, vcgtq_f32(v52, v50)));
      v55 = vsubq_f32(v49, v53);
      v56 = vsubq_f32(v50, v54);
      v57 = *(a2 + 31);
      v58 = *(a2 + 32);
      v59 = vmulq_f32(v56, vaddq_f32(v58, vmulq_f32(v56, vaddq_f32(v48, vmulq_f32(v57, v56)))));
      v60 = vaddq_f32(v16, vmulq_f32(v55, vaddq_f32(v58, vmulq_f32(v55, vaddq_f32(v48, vmulq_f32(v57, v55))))));
      v61 = vcvtq_s32_f32(v54);
      v62 = *(a2 + 33);
      v63 = vmulq_f32(vaddq_f32(v16, v59), vshlq_n_s32(vaddq_s32(v62, v61), 0x17uLL));
      v64 = vmulq_laneq_f32(vmulq_f32(v60, vshlq_n_s32(vaddq_s32(v62, vcvtq_s32_f32(v53)), 0x17uLL)), *a2, 3);
      v65 = vmulq_n_f32(v19, *&v17);
      v66 = vmulq_n_f32(v20, *&v17);
      v67 = vdupq_lane_s32(*&v17, 1);
      v68 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v67)), v65, v64), v16);
      v69 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v20, v67)), v66, vmulq_laneq_f32(v63, *a2, 3)), v16);
      v70 = *(a2 + 15);
      v71 = (v6 + v11);
      v71[-1] = vbslq_s8(v70, v13, v68);
      *v71 = vbslq_s8(v70, v14, v69);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v72 = 16 * v10;
    v73 = *(v7 + v72);
    v74 = *(a2 + 75);
    v75 = *(a2 + 5);
    v76 = vminq_f32(vmaxq_f32(v73, v74), v75);
    v77 = vaddq_f32(v76, vdupq_lane_s32(*a2, 1));
    v78 = vorrq_s8(vandq_s8(*(a2 + 19), v77), v75);
    v79 = vandq_s8(v75, vcgtq_f32(v78, *(a2 + 23)));
    v80 = vsubq_f32(vsubq_f32(v78, v75), vmulq_f32(vmulq_f32(*(a2 + 24), v79), v78));
    v81 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v77, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v77))), *(a2 + 22)), v79), vmulq_f32(v80, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(*(a2 + 28), v80)), vmulq_f32(vmulq_f32(v80, v80), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v80)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v82 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
    v83 = vsubq_f32(v82, vandq_s8(v75, vcgtq_f32(v82, v81)));
    v84 = vsubq_f32(v81, v83);
    *(v6 + v72) = vbslq_s8(*(a2 + 15), v73, vminq_f32(vbslq_s8(vcgtq_f32(v74, vsubq_f32(v76, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v76, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v75, vmulq_f32(v84, vaddq_f32(*(a2 + 32), vmulq_f32(v84, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v84)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v83)), 0x17uLL)), *a2, 3)), v75));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = vdupq_laneq_s32(vbicq_s8(v15, *(a2 + 76)), 3);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = *(a2 + 1);
      v19 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v20 = vdupq_lane_s32(*a2, 1);
      v21 = vaddq_f32(v17, v20);
      v22 = vaddq_f32(v19, v20);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vandq_s8(v23, v21);
      v26 = vandq_s8(v23, v22);
      v27 = *(a2 + 5);
      v28 = vorrq_s8(v25, v27);
      v29 = vorrq_s8(v26, v27);
      v30 = *(a2 + 21);
      v31 = *(a2 + 22);
      v32 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v24, v22)));
      v33 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v24, v21))), v31);
      v34 = *(a2 + 23);
      v35 = *(a2 + 24);
      v36 = vandq_s8(v27, vcgtq_f32(v28, v34));
      v37 = vandq_s8(v27, vcgtq_f32(v29, v34));
      v38 = vaddq_f32(v33, v36);
      v39 = vaddq_f32(vsubq_f32(v32, v31), v37);
      v40 = vsubq_f32(vsubq_f32(v28, v27), vmulq_f32(vmulq_f32(v35, v36), v28));
      v41 = vsubq_f32(vsubq_f32(v29, v27), vmulq_f32(vmulq_f32(v35, v37), v29));
      v42 = *(a2 + 25);
      v43 = *(a2 + 26);
      v44 = vaddq_f32(v42, vmulq_f32(v43, v40));
      v45 = vaddq_f32(v42, vmulq_f32(v43, v41));
      v46 = *(a2 + 27);
      v47 = *(a2 + 28);
      v48 = vaddq_f32(v39, vmulq_f32(v41, vaddq_f32(vaddq_f32(v46, vmulq_f32(v41, v47)), vmulq_f32(vmulq_f32(v41, v41), v45))));
      v49 = vmulq_n_f32(vaddq_f32(v38, vmulq_f32(v40, vaddq_f32(vaddq_f32(v46, vmulq_f32(v40, v47)), vmulq_f32(vmulq_f32(v40, v40), v44)))), COERCE_FLOAT(*a2));
      v50 = *(a2 + 29);
      v51 = *(a2 + 30);
      v52 = vmaxq_f32(v49, v50);
      v53 = vmaxq_f32(vmulq_n_f32(v48, COERCE_FLOAT(*a2)), v50);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v56 = vsubq_f32(v54, vandq_s8(v27, vcgtq_f32(v54, v52)));
      v57 = vsubq_f32(v55, vandq_s8(v27, vcgtq_f32(v55, v53)));
      v58 = vsubq_f32(v52, v56);
      v59 = vsubq_f32(v53, v57);
      v60 = *(a2 + 31);
      v61 = *(a2 + 32);
      v62 = vaddq_f32(v51, vmulq_f32(v60, v58));
      v63 = vmulq_f32(v59, vaddq_f32(v61, vmulq_f32(v59, vaddq_f32(v51, vmulq_f32(v60, v59)))));
      v64 = vcvtq_s32_f32(v57);
      v65 = *(a2 + 33);
      v66 = vmulq_f32(vaddq_f32(v27, vmulq_f32(v58, vaddq_f32(v61, vmulq_f32(v58, v62)))), vshlq_n_s32(vaddq_s32(v65, vcvtq_s32_f32(v56)), 0x17uLL));
      v67 = vdupq_lane_s32(*&v18, 1);
      v68 = *(a2 + 15);
      v69 = vbslq_s8(v68, v14, vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v67)), vmulq_n_f32(v19, *&v18), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v27, v63), vshlq_n_s32(vaddq_s32(v65, v64), 0x17uLL)), *a2, 3)));
      v70 = (v6 + v11);
      v70[-1] = vbslq_s8(v68, v13, vbslq_s8(vcgtq_f32(v15, vsubq_f32(v17, v67)), vmulq_n_f32(v17, *&v18), vmulq_laneq_f32(v66, *a2, 3)));
      *v70 = v69;
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v71 = 16 * v10;
    v72 = *(v7 + v71);
    v73 = *(a2 + 75);
    v74 = vminq_f32(vmaxq_f32(v72, v73), vdupq_laneq_s32(vbicq_s8(v73, *(a2 + 76)), 3));
    v75 = vaddq_f32(v74, vdupq_lane_s32(*a2, 1));
    v76 = *(a2 + 5);
    v77 = vorrq_s8(vandq_s8(*(a2 + 19), v75), v76);
    v78 = vandq_s8(v76, vcgtq_f32(v77, *(a2 + 23)));
    v79 = vsubq_f32(vsubq_f32(v77, v76), vmulq_f32(vmulq_f32(*(a2 + 24), v78), v77));
    v80 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v75, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v75))), *(a2 + 22)), v78), vmulq_f32(v79, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v79, *(a2 + 28))), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v79)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v81 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
    v82 = vsubq_f32(v81, vandq_s8(v76, vcgtq_f32(v81, v80)));
    v83 = vsubq_f32(v80, v82);
    *(v6 + v71) = vbslq_s8(*(a2 + 15), v72, vbslq_s8(vcgtq_f32(v73, vsubq_f32(v74, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v74, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v76, vmulq_f32(v83, vaddq_f32(*(a2 + 32), vmulq_f32(v83, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v83)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v82)), 0x17uLL)), *a2, 3)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = vdupq_laneq_s32(vbicq_s8(v15, *(a2 + 76)), 3);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 1);
      v20 = vdupq_lane_s32(*a2, 1);
      v21 = vaddq_f32(v17, v20);
      v22 = vaddq_f32(v18, v20);
      v23 = *(a2 + 5);
      v24 = vcgtq_f32(vandq_s8(v23, vceqq_f32(vdupq_lane_s32(*a2, 0), v15)), v15);
      v25 = vbslq_s8(v24, v23, v21);
      v26 = vbslq_s8(v24, v23, v22);
      v27 = *(a2 + 19);
      v28 = *(a2 + 20);
      v29 = vorrq_s8(vandq_s8(v27, v25), v23);
      v30 = *(a2 + 21);
      v31 = *(a2 + 22);
      v32 = vorrq_s8(vandq_s8(v27, v26), v23);
      v33 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v26, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v28, v26)));
      v34 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v25, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v28, v25))), v31);
      v35 = *(a2 + 23);
      v36 = *(a2 + 24);
      v37 = vsubq_f32(v33, v31);
      v38 = vandq_s8(v23, vcgtq_f32(v29, v35));
      v39 = vandq_s8(v23, vcgtq_f32(v32, v35));
      v40 = vaddq_f32(v34, v38);
      v41 = vsubq_f32(vsubq_f32(v29, v23), vmulq_f32(vmulq_f32(v36, v38), v29));
      v42 = vsubq_f32(vsubq_f32(v32, v23), vmulq_f32(vmulq_f32(v36, v39), v32));
      v43 = vmulq_f32(v41, v41);
      v44 = *(a2 + 37);
      v45 = *(a2 + 38);
      v46 = vaddq_f32(v44, vmulq_f32(v45, v41));
      v47 = vaddq_f32(v44, vmulq_f32(v45, v42));
      v48 = *(a2 + 39);
      v49 = *(a2 + 40);
      v50 = vaddq_f32(v48, vmulq_f32(v49, v41));
      v51 = vaddq_f32(v48, vmulq_f32(v49, v42));
      v52 = *(a2 + 41);
      v53 = *(a2 + 42);
      v54 = vaddq_f32(v52, vmulq_f32(v53, v41));
      v55 = vaddq_f32(v52, vmulq_f32(v53, v42));
      v56 = vmulq_f32(v42, v42);
      v57 = vaddq_f32(v55, vmulq_f32(v56, vaddq_f32(v47, vmulq_f32(v56, v51))));
      v58 = vmulq_f32(v41, vaddq_f32(v54, vmulq_f32(v43, vaddq_f32(v46, vmulq_f32(v43, v50)))));
      v59 = *(a2 + 43);
      v60 = *(a2 + 44);
      v61 = vmulq_n_f32(vaddq_f32(vaddq_f32(v37, v39), vmulq_f32(v42, vaddq_f32(v59, vmulq_f32(v42, v57)))), COERCE_FLOAT(*a2));
      v62 = *(a2 + 29);
      v63 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v40, vmulq_f32(v41, vaddq_f32(v59, v58))), COERCE_FLOAT(*a2)), v62);
      v64 = vmaxq_f32(v61, v62);
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
      v67 = vsubq_f32(v65, vandq_s8(v23, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v66, vandq_s8(v23, vcgtq_f32(v66, v64)));
      v69 = vsubq_f32(v63, v67);
      v70 = vsubq_f32(v64, v68);
      v71 = *(a2 + 45);
      v72 = *(a2 + 46);
      v73 = vaddq_f32(v60, vmulq_f32(v71, v69));
      v74 = vaddq_f32(v60, vmulq_f32(v71, v70));
      v76 = *(a2 + 47);
      v75 = *(a2 + 48);
      v77 = *(a2 + 33);
      v78 = vmulq_f32(vaddq_f32(v23, vmulq_f32(v69, vaddq_f32(v75, vmulq_f32(v69, vaddq_f32(vaddq_f32(v72, vmulq_f32(v69, v76)), vmulq_f32(vmulq_f32(v69, v69), v73)))))), vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v67)), 0x17uLL));
      v79 = vdupq_lane_s32(*&v19, 1);
      v80 = *(a2 + 15);
      v81 = vbslq_s8(v80, v14, vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v79)), vmulq_n_f32(v18, *&v19), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v23, vmulq_f32(v70, vaddq_f32(v75, vmulq_f32(v70, vaddq_f32(vaddq_f32(v72, vmulq_f32(v76, v70)), vmulq_f32(vmulq_f32(v70, v70), v74)))))), vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v68)), 0x17uLL)), *a2, 3)));
      v82 = (v6 + v11);
      v82[-1] = vbslq_s8(v80, v13, vbslq_s8(vcgtq_f32(v15, vsubq_f32(v17, v79)), vmulq_n_f32(v17, *&v19), vmulq_laneq_f32(v78, *a2, 3)));
      *v82 = v81;
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v83 = 16 * v10;
    v84 = *(v7 + v83);
    v85 = *(a2 + 75);
    v86 = vminq_f32(vmaxq_f32(v84, v85), vdupq_laneq_s32(vbicq_s8(v85, *(a2 + 76)), 3));
    v87 = *(a2 + 5);
    v88 = vbslq_s8(vcgtq_f32(vandq_s8(v87, vceqq_f32(vdupq_lane_s32(*a2, 0), v85)), v85), v87, vaddq_f32(v86, vdupq_lane_s32(*a2, 1)));
    v89 = vorrq_s8(vandq_s8(*(a2 + 19), v88), v87);
    v90 = vandq_s8(v87, vcgtq_f32(v89, *(a2 + 23)));
    v91 = vsubq_f32(vsubq_f32(v89, v87), vmulq_f32(vmulq_f32(*(a2 + 24), v90), v89));
    v92 = vmulq_f32(v91, v91);
    v93 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v88, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v88))), *(a2 + 22)), v90), vmulq_f32(v91, vaddq_f32(*(a2 + 43), vmulq_f32(v91, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v91)), vmulq_f32(v92, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v91)), vmulq_f32(v92, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v91)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v94 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
    v95 = vsubq_f32(v94, vandq_s8(v87, vcgtq_f32(v94, v93)));
    v96 = vsubq_f32(v93, v95);
    *(v6 + v83) = vbslq_s8(*(a2 + 15), v84, vbslq_s8(vcgtq_f32(v85, vsubq_f32(v86, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v86, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v87, vmulq_f32(v96, vaddq_f32(*(a2 + 48), vmulq_f32(v96, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v96)), vmulq_f32(vmulq_f32(v96, v96), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v96)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v95)), 0x17uLL)), *a2, 3)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype3_float_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v12 = *(a2 + 75);
        v13 = vminq_f32(vmaxq_f32(v11, v12), vdupq_laneq_s32(vbicq_s8(v12, *(a2 + 76)), 3));
        v14 = *(a2 + 5);
        v15 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(vdupq_lane_s32(*a2, 0), v12)), v12), v14, vaddq_f32(v13, vdupq_lane_s32(*a2, 1)));
        v16 = *(a2 + 50);
        v17 = vcgeq_f32(v15, v16);
        v18 = *(a2 + 21);
        v19 = vandq_s8(v18, vceqq_f32(v15, v16));
        v20 = *(a2 + 52);
        v21 = vsubq_f32(vbicq_s8(v17, *(a2 + 51)), v19);
        v22 = vcgtq_f32(*(a2 + 20), v15);
        v23 = vmulq_f32(v15, vaddq_f32(v14, vandq_s8(*(a2 + 49), v22)));
        v24 = vorrq_s8(vandq_s8(*(a2 + 19), v23), v14);
        v25 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v18, vceqq_f32(v15, v18)), vsubq_f32(v21, vandq_s8(v20, v22))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)));
        v26 = vandq_s8(v14, vcgtq_f32(v24, *(a2 + 23)));
        v27 = vaddq_f32(v25, v26);
        v28 = vsubq_f32(vsubq_f32(v24, v14), vmulq_f32(vmulq_f32(*(a2 + 24), v26), v24));
        v29 = vmulq_f32(v28, v28);
        v30 = vmulq_n_f32(vaddq_f32(v27, vmulq_f32(v28, vaddq_f32(*(a2 + 61), vmulq_f32(v28, vaddq_f32(vaddq_f32(vmulq_f32(v29, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v28))), vaddq_f32(*(a2 + 59), vmulq_f32(v28, *(a2 + 60)))), vmulq_f32(vmulq_f32(v29, v29), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v28)), vmulq_f32(v29, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v28)))))))))), COERCE_FLOAT(*a2));
        v31 = vminq_f32(vmaxq_f32(v30, *(a2 + 62)), *(a2 + 63));
        v32 = vcvtq_f32_s32(vcvtq_s32_f32(v31));
        v33 = vsubq_f32(v32, vandq_s8(v14, vcgtq_f32(v32, v31)));
        v34 = vsubq_f32(v31, v33);
        v35 = vmulq_f32(v34, v34);
        v36 = vcgtq_f32(*(a2 + 70), v33);
        *(v7 + v10) = vbslq_s8(*(a2 + 15), v11, vbslq_s8(vcgtq_f32(v12, vsubq_f32(v13, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v13, COERCE_FLOAT(*(a2 + 1))), vmulq_laneq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(v30, v30)), v12), vmulq_f32(vaddq_f32(v14, vandq_s8(*(a2 + 71), v36)), vmulq_f32(vaddq_f32(v14, vmulq_f32(v34, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v34, *(a2 + 69))), vmulq_f32(v35, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v34)), vmulq_f32(v35, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v34)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v33, vandq_s8(v20, v36)))), 0x17uLL))), v30), *a2, 3)));
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

uint64_t Gettype4_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(v7 + v10 + 32);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = *(a2 + 1);
      v22 = vdupq_lane_s32(*a2, 1);
      v23 = vminq_f32(vmaxq_f32(v16, v15), v17);
      v24 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v22)));
      v25 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v22)));
      v26 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v23, v22)));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
      v29 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
      v30 = *(a2 + 7);
      v31 = *(a2 + 8);
      v32 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v24, v27)));
      v33 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v25, v28)));
      v34 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v26, v29)));
      v35 = vaddq_f32(v31, v27);
      v36 = vaddq_f32(v31, v28);
      v37 = vaddq_f32(v31, v29);
      v38 = *(a2 + 9);
      v39 = *(a2 + 10);
      v40 = vmulq_n_f32(vsubq_f32(v35, vmulq_f32(v32, v38)), COERCE_FLOAT(*a2));
      v41 = vmulq_n_f32(vsubq_f32(v36, vmulq_f32(v33, v38)), COERCE_FLOAT(*a2));
      v42 = vmulq_n_f32(vsubq_f32(v37, vmulq_f32(v34, v38)), COERCE_FLOAT(*a2));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vsubq_f32(v43, vandq_s8(v17, vcgtq_f32(v43, v40)));
      v47 = vsubq_f32(v44, vandq_s8(v17, vcgtq_f32(v44, v41)));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = *(a2 + 11);
      v50 = *(a2 + 12);
      v51 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v40, v46))), v50);
      v52 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v41, v47))), v50);
      v53 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v42, v48))), v50);
      v54 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v46), vmulq_f32(v51, v51)), v15);
      v55 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v47), vmulq_f32(v52, v52)), v15);
      v56 = *(a2 + 13);
      v57 = *(a2 + 14);
      v58 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v54, v56), v57));
      v59 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v55, v56), v57));
      v60 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(v39, v48), vmulq_f32(v53, v53)), v15), v56), v57));
      v61 = vdupq_laneq_s32(*a2, 2);
      v62 = vmulq_laneq_f32(v60, *a2, 3);
      v63 = vmulq_n_f32(v19, *&v21);
      v64 = vmulq_n_f32(v20, *&v21);
      v65 = vmulq_n_f32(v23, *&v21);
      v66 = vdupq_lane_s32(*&v21, 1);
      v67 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v23, v66)), v65, vaddq_f32(v61, v62)), v17);
      v68 = *(a2 + 15);
      v69 = vbslq_s8(v68, v13, vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v66)), v63, vaddq_f32(v61, vmulq_laneq_f32(v58, *a2, 3))), v17));
      v70 = vdupq_lane_s32(*(a2 + 32), 0);
      v71 = vmaxq_f32(vaddq_f32(v70, vbslq_s8(v68, v14, vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v20, v66)), v64, vaddq_f32(v61, vmulq_laneq_f32(v59, *a2, 3))), v17))), v15);
      v72 = (v6 + v10);
      *v72 = vbslq_s8(v68, v13, vminq_f32(vmaxq_f32(vaddq_f32(v70, v69), v15), v17));
      v72[1] = vbslq_s8(v68, v14, vminq_f32(v71, v17));
      v72[2] = vbslq_s8(v68, v16, vminq_f32(vmaxq_f32(vaddq_f32(v70, vbslq_s8(v68, v16, v67)), v15), v17));
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
      v73 = *(v7 + 16 * v11);
      v74 = *(a2 + 75);
      v75 = *(a2 + 5);
      v76 = vminq_f32(vmaxq_f32(v73, v74), v75);
      v77 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v76, vdupq_lane_s32(*a2, 1))));
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v79 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v78), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v77, v78))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v80 = vcvtq_f32_s32(vcvtq_s32_f32(v79));
      v81 = vsubq_f32(v80, vandq_s8(v75, vcgtq_f32(v80, v79)));
      v82 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v79, v81))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v73, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v73, vminq_f32(vbslq_s8(vcgtq_f32(v74, vsubq_f32(v76, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v76, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v82, v82), vaddq_f32(*(a2 + 10), v81)), v74), *(a2 + 13)), *(a2 + 14))), *a2, 3))), v75))), v74), v75));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(v7 + v10 + 32);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = *(a2 + 1);
      v22 = vdupq_lane_s32(*a2, 1);
      v23 = vminq_f32(vmaxq_f32(v16, v15), v17);
      v24 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v22)));
      v25 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v22)));
      v26 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v23, v22)));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
      v29 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
      v30 = *(a2 + 7);
      v31 = *(a2 + 8);
      v32 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v24, v27)));
      v33 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v25, v28)));
      v34 = vrsqrteq_f32(vaddq_f32(v30, vsubq_f32(v26, v29)));
      v35 = vaddq_f32(v31, v27);
      v36 = vaddq_f32(v31, v28);
      v37 = vaddq_f32(v31, v29);
      v38 = *(a2 + 9);
      v39 = *(a2 + 10);
      v40 = vmulq_n_f32(vsubq_f32(v35, vmulq_f32(v32, v38)), COERCE_FLOAT(*a2));
      v41 = vmulq_n_f32(vsubq_f32(v36, vmulq_f32(v33, v38)), COERCE_FLOAT(*a2));
      v42 = vmulq_n_f32(vsubq_f32(v37, vmulq_f32(v34, v38)), COERCE_FLOAT(*a2));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vsubq_f32(v43, vandq_s8(v17, vcgtq_f32(v43, v40)));
      v47 = vsubq_f32(v44, vandq_s8(v17, vcgtq_f32(v44, v41)));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = *(a2 + 11);
      v50 = *(a2 + 12);
      v51 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v40, v46))), v50);
      v52 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v41, v47))), v50);
      v53 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v42, v48))), v50);
      v54 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v46), vmulq_f32(v51, v51)), v15);
      v55 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v47), vmulq_f32(v52, v52)), v15);
      v56 = *(a2 + 13);
      v57 = *(a2 + 14);
      v58 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v54, v56), v57));
      v59 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v55, v56), v57));
      v60 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(v39, v48), vmulq_f32(v53, v53)), v15), v56), v57));
      v61 = vdupq_laneq_s32(*a2, 2);
      v62 = vmulq_laneq_f32(v60, *a2, 3);
      v63 = vmulq_n_f32(v19, *&v21);
      v64 = vmulq_n_f32(v20, *&v21);
      v65 = vmulq_n_f32(v23, *&v21);
      v66 = vdupq_lane_s32(*&v21, 1);
      v67 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v23, v66)), v65, vaddq_f32(v61, v62)), v17);
      v68 = *(a2 + 15);
      v69 = vbslq_s8(v68, v13, vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v66)), v63, vaddq_f32(v61, vmulq_laneq_f32(v58, *a2, 3))), v17));
      v70 = vdupq_lane_s32(*(a2 + 32), 0);
      v71 = vmaxq_f32(vaddq_f32(v70, vbslq_s8(v68, v14, vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v20, v66)), v64, vaddq_f32(v61, vmulq_laneq_f32(v59, *a2, 3))), v17))), v15);
      v72 = (v6 + v10);
      *v72 = vbslq_s8(v68, v13, vminq_f32(vmaxq_f32(vaddq_f32(v70, v69), v15), v17));
      v72[1] = vbslq_s8(v68, v14, vminq_f32(v71, v17));
      v72[2] = vbslq_s8(v68, v16, vminq_f32(vmaxq_f32(vaddq_f32(v70, vbslq_s8(v68, v16, v67)), v15), v17));
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
      v73 = *(v7 + 16 * v11);
      v74 = *(a2 + 75);
      v75 = *(a2 + 5);
      v76 = vminq_f32(vmaxq_f32(v73, v74), v75);
      v77 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v76, vdupq_lane_s32(*a2, 1))));
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v79 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v78), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v77, v78))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v80 = vcvtq_f32_s32(vcvtq_s32_f32(v79));
      v81 = vsubq_f32(v80, vandq_s8(v75, vcgtq_f32(v80, v79)));
      v82 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v79, v81))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v73, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v73, vminq_f32(vbslq_s8(vcgtq_f32(v74, vsubq_f32(v76, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v76, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v82, v82), vaddq_f32(*(a2 + 10), v81)), v74), *(a2 + 13)), *(a2 + 14))), *a2, 3))), v75))), v74), v75));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = *(a2 + 1);
      v19 = vdupq_lane_s32(*a2, 1);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v21 = vcgtq_f32(vandq_s8(v16, vceqq_f32(vdupq_lane_s32(*a2, 0), v15)), v15);
      v22 = vbslq_s8(v21, v16, vaddq_f32(v17, v19));
      v23 = vbslq_s8(v21, v16, vaddq_f32(v20, v19));
      v24 = *(a2 + 19);
      v25 = *(a2 + 20);
      v26 = vorrq_s8(vandq_s8(v24, v22), v16);
      v27 = *(a2 + 21);
      v28 = *(a2 + 22);
      v29 = vorrq_s8(vandq_s8(v24, v23), v16);
      v30 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v25, v23)));
      v31 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v25, v22))), v28);
      v32 = *(a2 + 23);
      v33 = *(a2 + 24);
      v34 = vandq_s8(v16, vcgtq_f32(v26, v32));
      v35 = vandq_s8(v16, vcgtq_f32(v29, v32));
      v36 = vaddq_f32(v31, v34);
      v37 = vmulq_f32(v33, v34);
      v38 = vmulq_f32(vmulq_f32(v33, v35), v29);
      v39 = vaddq_f32(vsubq_f32(v30, v28), v35);
      v40 = vsubq_f32(vsubq_f32(v26, v16), vmulq_f32(v37, v26));
      v41 = vsubq_f32(vsubq_f32(v29, v16), v38);
      v42 = *(a2 + 37);
      v43 = *(a2 + 38);
      v44 = vmulq_f32(v40, v40);
      v45 = *(a2 + 39);
      v46 = *(a2 + 40);
      v47 = vaddq_f32(v42, vmulq_f32(v43, v40));
      v48 = vaddq_f32(v45, vmulq_f32(v46, v40));
      v49 = vaddq_f32(v45, vmulq_f32(v46, v41));
      v50 = *(a2 + 41);
      v51 = *(a2 + 42);
      v52 = vaddq_f32(v42, vmulq_f32(v43, v41));
      v53 = vaddq_f32(v50, vmulq_f32(v51, v40));
      v54 = vaddq_f32(v50, vmulq_f32(v51, v41));
      v55 = vmulq_f32(v41, v41);
      v56 = vmulq_f32(v40, vaddq_f32(v53, vmulq_f32(v44, vaddq_f32(v47, vmulq_f32(v44, v48)))));
      v57 = *(a2 + 43);
      v58 = *(a2 + 44);
      v59 = vmulq_n_f32(vaddq_f32(v39, vmulq_f32(v41, vaddq_f32(v57, vmulq_f32(v41, vaddq_f32(v54, vmulq_f32(v55, vaddq_f32(v52, vmulq_f32(v55, v49)))))))), COERCE_FLOAT(*a2));
      v60 = *(a2 + 29);
      v61 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v36, vmulq_f32(v40, vaddq_f32(v57, v56))), COERCE_FLOAT(*a2)), v60);
      v62 = vmaxq_f32(v59, v60);
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vsubq_f32(v63, vandq_s8(v16, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v64, vandq_s8(v16, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v61, v65);
      v68 = vsubq_f32(v62, v66);
      v69 = *(a2 + 45);
      v70 = *(a2 + 46);
      v71 = vaddq_f32(v58, vmulq_f32(v69, v67));
      v72 = vaddq_f32(v58, vmulq_f32(v69, v68));
      v73 = *(a2 + 47);
      v74 = *(a2 + 48);
      v75 = *(a2 + 33);
      v76 = vmulq_f32(vaddq_f32(v16, vmulq_f32(v67, vaddq_f32(v74, vmulq_f32(v67, vaddq_f32(vaddq_f32(v70, vmulq_f32(v67, v73)), vmulq_f32(vmulq_f32(v67, v67), v71)))))), vshlq_n_s32(vaddq_s32(v75, vcvtq_s32_f32(v65)), 0x17uLL));
      v77 = vdupq_laneq_s32(*a2, 2);
      v78 = vmulq_laneq_f32(vmulq_f32(vaddq_f32(v16, vmulq_f32(v68, vaddq_f32(v74, vmulq_f32(v68, vaddq_f32(vaddq_f32(v70, vmulq_f32(v73, v68)), vmulq_f32(vmulq_f32(v68, v68), v72)))))), vshlq_n_s32(vaddq_s32(v75, vcvtq_s32_f32(v66)), 0x17uLL)), *a2, 3);
      v79 = vdupq_lane_s32(*&v18, 1);
      v80 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v20, v79)), vmulq_n_f32(v20, *&v18), vaddq_f32(v77, v78)), v16);
      v81 = *(a2 + 15);
      v82 = vbslq_s8(v81, v13, vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v17, v79)), vmulq_n_f32(v17, *&v18), vaddq_f32(v77, vmulq_laneq_f32(v76, *a2, 3))), v16));
      v83 = vdupq_lane_s32(*(a2 + 32), 0);
      v84 = (v6 + v11);
      v84[-1] = vbslq_s8(v81, v13, vminq_f32(vmaxq_f32(vaddq_f32(v83, v82), v15), v16));
      *v84 = vbslq_s8(v81, v14, vminq_f32(vmaxq_f32(vaddq_f32(v83, vbslq_s8(v81, v14, v80)), v15), v16));
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
    v87 = *(a2 + 75);
    v88 = *(a2 + 5);
    v89 = vminq_f32(vmaxq_f32(v86, v87), v88);
    v90 = vbslq_s8(vcgtq_f32(vandq_s8(v88, vceqq_f32(vdupq_lane_s32(*a2, 0), v87)), v87), v88, vaddq_f32(v89, vdupq_lane_s32(*a2, 1)));
    v91 = vorrq_s8(vandq_s8(*(a2 + 19), v90), v88);
    v92 = vandq_s8(v88, vcgtq_f32(v91, *(a2 + 23)));
    v93 = vsubq_f32(vsubq_f32(v91, v88), vmulq_f32(vmulq_f32(*(a2 + 24), v92), v91));
    v94 = vmulq_f32(v93, v93);
    v95 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v90, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v90))), *(a2 + 22)), v92), vmulq_f32(v93, vaddq_f32(*(a2 + 43), vmulq_f32(v93, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v93)), vmulq_f32(v94, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v93)), vmulq_f32(v94, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v93)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v96 = vcvtq_f32_s32(vcvtq_s32_f32(v95));
    v97 = vsubq_f32(v96, vandq_s8(v88, vcgtq_f32(v96, v95)));
    v98 = vsubq_f32(v95, v97);
    *(v6 + v85) = vbslq_s8(*(a2 + 15), v86, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v86, vminq_f32(vbslq_s8(vcgtq_f32(v87, vsubq_f32(v89, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v89, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v88, vmulq_f32(v98, vaddq_f32(*(a2 + 48), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v98)), vmulq_f32(vmulq_f32(v98, v98), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v98)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v97)), 0x17uLL)), *a2, 3))), v88))), v87), v88));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 1);
      v20 = vdupq_lane_s32(*a2, 1);
      v21 = vaddq_f32(v17, v20);
      v22 = vaddq_f32(v18, v20);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vorrq_s8(vandq_s8(v23, v21), v16);
      v26 = vorrq_s8(vandq_s8(v23, v22), v16);
      v27 = *(a2 + 21);
      v28 = *(a2 + 22);
      v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v22)));
      v30 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v21))), v28);
      v31 = *(a2 + 23);
      v32 = *(a2 + 24);
      v33 = vsubq_f32(v29, v28);
      v34 = vandq_s8(v16, vcgtq_f32(v25, v31));
      v35 = vandq_s8(v16, vcgtq_f32(v26, v31));
      v36 = vaddq_f32(v30, v34);
      v37 = vsubq_f32(vsubq_f32(v25, v16), vmulq_f32(vmulq_f32(v32, v34), v25));
      v38 = vsubq_f32(vsubq_f32(v26, v16), vmulq_f32(vmulq_f32(v32, v35), v26));
      v39 = *(a2 + 25);
      v40 = *(a2 + 26);
      v41 = vaddq_f32(v39, vmulq_f32(v40, v37));
      v42 = vaddq_f32(v39, vmulq_f32(v40, v38));
      v43 = *(a2 + 27);
      v44 = *(a2 + 28);
      v45 = vmulq_n_f32(vaddq_f32(vaddq_f32(v33, v35), vmulq_f32(v38, vaddq_f32(vaddq_f32(v43, vmulq_f32(v44, v38)), vmulq_f32(vmulq_f32(v38, v38), v42)))), COERCE_FLOAT(*a2));
      v46 = *(a2 + 29);
      v47 = *(a2 + 30);
      v48 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v36, vmulq_f32(v37, vaddq_f32(vaddq_f32(v43, vmulq_f32(v44, v37)), vmulq_f32(vmulq_f32(v37, v37), v41)))), COERCE_FLOAT(*a2)), v46);
      v49 = vmaxq_f32(v45, v46);
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
      v52 = vsubq_f32(v50, vandq_s8(v16, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v51, vandq_s8(v16, vcgtq_f32(v51, v49)));
      v54 = vsubq_f32(v48, v52);
      v55 = vsubq_f32(v49, v53);
      v56 = *(a2 + 31);
      v57 = *(a2 + 32);
      v58 = vmulq_f32(v55, vaddq_f32(v57, vmulq_f32(v55, vaddq_f32(v47, vmulq_f32(v56, v55)))));
      v59 = vaddq_f32(v16, vmulq_f32(v54, vaddq_f32(v57, vmulq_f32(v54, vaddq_f32(v47, vmulq_f32(v56, v54))))));
      v60 = vcvtq_s32_f32(v53);
      v61 = *(a2 + 33);
      v62 = vmulq_f32(v59, vshlq_n_s32(vaddq_s32(v61, vcvtq_s32_f32(v52)), 0x17uLL));
      v63 = vdupq_laneq_s32(*a2, 2);
      v64 = vmulq_laneq_f32(vmulq_f32(vaddq_f32(v16, v58), vshlq_n_s32(vaddq_s32(v61, v60), 0x17uLL)), *a2, 3);
      v65 = vdupq_lane_s32(*&v19, 1);
      v66 = vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v65)), vmulq_n_f32(v18, *&v19), vaddq_f32(v63, v64)), v16);
      v67 = *(a2 + 15);
      v68 = vbslq_s8(v67, v13, vminq_f32(vbslq_s8(vcgtq_f32(v15, vsubq_f32(v17, v65)), vmulq_n_f32(v17, *&v19), vaddq_f32(v63, vmulq_laneq_f32(v62, *a2, 3))), v16));
      v69 = vdupq_lane_s32(*(a2 + 32), 0);
      v70 = (v6 + v11);
      v70[-1] = vbslq_s8(v67, v13, vminq_f32(vmaxq_f32(vaddq_f32(v69, v68), v15), v16));
      *v70 = vbslq_s8(v67, v14, vminq_f32(vmaxq_f32(vaddq_f32(v69, vbslq_s8(v67, v14, v66)), v15), v16));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v71 = 16 * v10;
    v72 = *(v7 + v71);
    v73 = *(a2 + 75);
    v74 = *(a2 + 5);
    v75 = vminq_f32(vmaxq_f32(v72, v73), v74);
    v76 = vaddq_f32(v75, vdupq_lane_s32(*a2, 1));
    v77 = vorrq_s8(vandq_s8(*(a2 + 19), v76), v74);
    v78 = vandq_s8(v74, vcgtq_f32(v77, *(a2 + 23)));
    v79 = vsubq_f32(vsubq_f32(v77, v74), vmulq_f32(vmulq_f32(*(a2 + 24), v78), v77));
    v80 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v76, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v76))), *(a2 + 22)), v78), vmulq_f32(v79, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(*(a2 + 28), v79)), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v79)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v81 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
    v82 = vsubq_f32(v81, vandq_s8(v74, vcgtq_f32(v81, v80)));
    v83 = vsubq_f32(v80, v82);
    *(v6 + v71) = vbslq_s8(*(a2 + 15), v72, vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v72, vminq_f32(vbslq_s8(vcgtq_f32(v73, vsubq_f32(v75, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v75, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v74, vmulq_f32(v83, vaddq_f32(*(a2 + 32), vmulq_f32(v83, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v83)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v82)), 0x17uLL)), *a2, 3))), v74))), v73), v74));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = vdupq_laneq_s32(vbicq_s8(v15, *(a2 + 76)), 3);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 1);
      v20 = vdupq_lane_s32(*a2, 1);
      v21 = vaddq_f32(v17, v20);
      v22 = *(a2 + 19);
      v23 = *(a2 + 20);
      v24 = vaddq_f32(v18, v20);
      v25 = *(a2 + 5);
      v26 = vorrq_s8(vandq_s8(v22, v21), v25);
      v27 = vorrq_s8(vandq_s8(v22, v24), v25);
      v28 = *(a2 + 21);
      v29 = *(a2 + 22);
      v30 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v28, vcgtq_f32(v23, v24)));
      v31 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v28, vcgtq_f32(v23, v21))), v29);
      v32 = *(a2 + 23);
      v33 = *(a2 + 24);
      v34 = vsubq_f32(v30, v29);
      v35 = vandq_s8(v25, vcgtq_f32(v26, v32));
      v36 = vandq_s8(v25, vcgtq_f32(v27, v32));
      v37 = vaddq_f32(v31, v35);
      v38 = vsubq_f32(vsubq_f32(v26, v25), vmulq_f32(vmulq_f32(v33, v35), v26));
      v39 = vsubq_f32(vsubq_f32(v27, v25), vmulq_f32(vmulq_f32(v33, v36), v27));
      v40 = *(a2 + 25);
      v41 = *(a2 + 26);
      v42 = vaddq_f32(v40, vmulq_f32(v41, v38));
      v43 = vaddq_f32(v40, vmulq_f32(v41, v39));
      v44 = *(a2 + 27);
      v45 = *(a2 + 28);
      v46 = vmulq_n_f32(vaddq_f32(vaddq_f32(v34, v36), vmulq_f32(v39, vaddq_f32(vaddq_f32(v44, vmulq_f32(v39, v45)), vmulq_f32(vmulq_f32(v39, v39), v43)))), COERCE_FLOAT(*a2));
      v47 = *(a2 + 29);
      v48 = *(a2 + 30);
      v49 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v37, vmulq_f32(v38, vaddq_f32(vaddq_f32(v44, vmulq_f32(v38, v45)), vmulq_f32(vmulq_f32(v38, v38), v42)))), COERCE_FLOAT(*a2)), v47);
      v50 = vmaxq_f32(v46, v47);
      v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
      v52 = vcvtq_f32_s32(vcvtq_s32_f32(v50));
      v53 = vsubq_f32(v51, vandq_s8(v25, vcgtq_f32(v51, v49)));
      v54 = vsubq_f32(v52, vandq_s8(v25, vcgtq_f32(v52, v50)));
      v55 = vsubq_f32(v49, v53);
      v56 = vsubq_f32(v50, v54);
      v57 = *(a2 + 31);
      v58 = *(a2 + 32);
      v59 = vmulq_f32(v56, vaddq_f32(v58, vmulq_f32(v56, vaddq_f32(v48, vmulq_f32(v57, v56)))));
      v60 = vaddq_f32(v25, vmulq_f32(v55, vaddq_f32(v58, vmulq_f32(v55, vaddq_f32(v48, vmulq_f32(v57, v55))))));
      v61 = vcvtq_s32_f32(v54);
      v62 = *(a2 + 33);
      v63 = vmulq_f32(vaddq_f32(v25, v59), vshlq_n_s32(vaddq_s32(v62, v61), 0x17uLL));
      v64 = vdupq_laneq_s32(*a2, 2);
      v65 = vaddq_f32(v64, vmulq_laneq_f32(vmulq_f32(v60, vshlq_n_s32(vaddq_s32(v62, vcvtq_s32_f32(v53)), 0x17uLL)), *a2, 3));
      v66 = vmulq_laneq_f32(v63, *a2, 3);
      v67 = vmulq_n_f32(v17, *&v19);
      v68 = vdupq_lane_s32(*&v19, 1);
      v69 = vcgtq_f32(v15, vsubq_f32(v17, v68));
      v70 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v68)), vmulq_n_f32(v18, *&v19), vaddq_f32(v64, v66));
      v71 = *(a2 + 15);
      v72 = vdupq_lane_s32(*(a2 + 32), 0);
      v73 = (v6 + v11);
      v73[-1] = vbslq_s8(v71, v13, vaddq_f32(v72, vbslq_s8(v71, v13, vbslq_s8(v69, v67, v65))));
      *v73 = vbslq_s8(v71, v14, vaddq_f32(v72, vbslq_s8(v71, v14, v70)));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v74 = 16 * v10;
    v75 = *(v7 + v74);
    v76 = *(a2 + 75);
    v77 = vminq_f32(vmaxq_f32(v75, v76), vdupq_laneq_s32(vbicq_s8(v76, *(a2 + 76)), 3));
    v78 = vaddq_f32(v77, vdupq_lane_s32(*a2, 1));
    v79 = *(a2 + 5);
    v80 = vorrq_s8(vandq_s8(*(a2 + 19), v78), v79);
    v81 = vandq_s8(v79, vcgtq_f32(v80, *(a2 + 23)));
    v82 = vsubq_f32(vsubq_f32(v80, v79), vmulq_f32(vmulq_f32(*(a2 + 24), v81), v80));
    v83 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v78, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v78))), *(a2 + 22)), v81), vmulq_f32(v82, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v82, *(a2 + 28))), vmulq_f32(vmulq_f32(v82, v82), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v82)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v84 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
    v85 = vsubq_f32(v84, vandq_s8(v79, vcgtq_f32(v84, v83)));
    v86 = vsubq_f32(v83, v85);
    *(v6 + v74) = vbslq_s8(*(a2 + 15), v75, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v75, vbslq_s8(vcgtq_f32(v76, vsubq_f32(v77, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v77, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v79, vmulq_f32(v86, vaddq_f32(*(a2 + 32), vmulq_f32(v86, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v86)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v85)), 0x17uLL)), *a2, 3))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v13 = *(a2 + 75);
      v14 = *(v7 + v11 - 16);
      v15 = *(v7 + v11);
      v16 = vdupq_laneq_s32(vbicq_s8(v13, *(a2 + 76)), 3);
      v17 = vminq_f32(vmaxq_f32(v14, v13), v16);
      v18 = vminq_f32(vmaxq_f32(v15, v13), v16);
      v19 = *(a2 + 1);
      v20 = vdupq_lane_s32(*a2, 1);
      v21 = *(a2 + 5);
      v22 = vcgtq_f32(vandq_s8(v21, vceqq_f32(vdupq_lane_s32(*a2, 0), v13)), v13);
      v23 = vbslq_s8(v22, v21, vaddq_f32(v17, v20));
      v24 = vbslq_s8(v22, v21, vaddq_f32(v18, v20));
      v25 = *(a2 + 19);
      v26 = *(a2 + 20);
      v27 = vorrq_s8(vandq_s8(v25, v23), v21);
      v28 = *(a2 + 21);
      v29 = *(a2 + 22);
      v30 = vorrq_s8(vandq_s8(v25, v24), v21);
      v31 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v28, vcgtq_f32(v26, v24)));
      v32 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)), vandq_s8(v28, vcgtq_f32(v26, v23))), v29);
      v33 = *(a2 + 23);
      v34 = *(a2 + 24);
      v35 = vandq_s8(v21, vcgtq_f32(v27, v33));
      v36 = vandq_s8(v21, vcgtq_f32(v30, v33));
      v37 = vaddq_f32(v32, v35);
      v38 = vmulq_f32(v34, v35);
      v39 = vmulq_f32(vmulq_f32(v34, v36), v30);
      v40 = vaddq_f32(vsubq_f32(v31, v29), v36);
      v41 = vsubq_f32(vsubq_f32(v27, v21), vmulq_f32(v38, v27));
      v42 = vsubq_f32(vsubq_f32(v30, v21), v39);
      v43 = *(a2 + 37);
      v44 = *(a2 + 38);
      v45 = vmulq_f32(v41, v41);
      v46 = *(a2 + 39);
      v47 = *(a2 + 40);
      v48 = vaddq_f32(v43, vmulq_f32(v44, v41));
      v49 = vaddq_f32(v46, vmulq_f32(v47, v41));
      v50 = vaddq_f32(v46, vmulq_f32(v47, v42));
      v51 = *(a2 + 41);
      v52 = *(a2 + 42);
      v53 = vaddq_f32(v43, vmulq_f32(v44, v42));
      v54 = vaddq_f32(v51, vmulq_f32(v52, v41));
      v55 = vaddq_f32(v51, vmulq_f32(v52, v42));
      v56 = vmulq_f32(v42, v42);
      v57 = vmulq_f32(v41, vaddq_f32(v54, vmulq_f32(v45, vaddq_f32(v48, vmulq_f32(v45, v49)))));
      v58 = *(a2 + 43);
      v59 = *(a2 + 44);
      v60 = vmulq_n_f32(vaddq_f32(v40, vmulq_f32(v42, vaddq_f32(v58, vmulq_f32(v42, vaddq_f32(v55, vmulq_f32(v56, vaddq_f32(v53, vmulq_f32(v56, v50)))))))), COERCE_FLOAT(*a2));
      v61 = *(a2 + 29);
      v62 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v37, vmulq_f32(v41, vaddq_f32(v58, v57))), COERCE_FLOAT(*a2)), v61);
      v63 = vmaxq_f32(v60, v61);
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vsubq_f32(v64, vandq_s8(v21, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v65, vandq_s8(v21, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v62, v66);
      v69 = vsubq_f32(v63, v67);
      v70 = *(a2 + 45);
      v71 = *(a2 + 46);
      v72 = vaddq_f32(v59, vmulq_f32(v70, v68));
      v73 = vaddq_f32(v59, vmulq_f32(v70, v69));
      v74 = *(a2 + 47);
      v75 = *(a2 + 48);
      v76 = vaddq_f32(v21, vmulq_f32(v68, vaddq_f32(v75, vmulq_f32(v68, vaddq_f32(vaddq_f32(v71, vmulq_f32(v68, v74)), vmulq_f32(vmulq_f32(v68, v68), v72))))));
      v77 = *(a2 + 33);
      v78 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v69, vaddq_f32(v75, vmulq_f32(v69, vaddq_f32(vaddq_f32(v71, vmulq_f32(v74, v69)), vmulq_f32(vmulq_f32(v69, v69), v73)))))), vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v67)), 0x17uLL));
      v79 = vdupq_laneq_s32(*a2, 2);
      v80 = vaddq_f32(v79, vmulq_laneq_f32(vmulq_f32(v76, vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v66)), 0x17uLL)), *a2, 3));
      v81 = vmulq_laneq_f32(v78, *a2, 3);
      v82 = vmulq_n_f32(v17, *&v19);
      v83 = vdupq_lane_s32(*&v19, 1);
      v84 = vcgtq_f32(v13, vsubq_f32(v17, v83));
      v85 = vbslq_s8(vcgtq_f32(v13, vsubq_f32(v18, v83)), vmulq_n_f32(v18, *&v19), vaddq_f32(v79, v81));
      v86 = *(a2 + 15);
      v87 = vdupq_lane_s32(*(a2 + 32), 0);
      v88 = (v6 + v11);
      v88[-1] = vbslq_s8(v86, v14, vaddq_f32(v87, vbslq_s8(v86, v14, vbslq_s8(v84, v82, v80))));
      *v88 = vbslq_s8(v86, v15, vaddq_f32(v87, vbslq_s8(v86, v15, v85)));
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
    v91 = *(a2 + 75);
    v92 = vminq_f32(vmaxq_f32(v90, v91), vdupq_laneq_s32(vbicq_s8(v91, *(a2 + 76)), 3));
    v93 = *(a2 + 5);
    v94 = vbslq_s8(vcgtq_f32(vandq_s8(v93, vceqq_f32(vdupq_lane_s32(*a2, 0), v91)), v91), v93, vaddq_f32(v92, vdupq_lane_s32(*a2, 1)));
    v95 = vorrq_s8(vandq_s8(*(a2 + 19), v94), v93);
    v96 = vandq_s8(v93, vcgtq_f32(v95, *(a2 + 23)));
    v97 = vsubq_f32(vsubq_f32(v95, v93), vmulq_f32(vmulq_f32(*(a2 + 24), v96), v95));
    v98 = vmulq_f32(v97, v97);
    v99 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v94))), *(a2 + 22)), v96), vmulq_f32(v97, vaddq_f32(*(a2 + 43), vmulq_f32(v97, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v97)), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v97)), vmulq_f32(v98, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v97)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v100 = vcvtq_f32_s32(vcvtq_s32_f32(v99));
    v101 = vsubq_f32(v100, vandq_s8(v93, vcgtq_f32(v100, v99)));
    v102 = vsubq_f32(v99, v101);
    *(v6 + v89) = vbslq_s8(*(a2 + 15), v90, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v90, vbslq_s8(vcgtq_f32(v91, vsubq_f32(v92, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v92, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v93, vmulq_f32(v102, vaddq_f32(*(a2 + 48), vmulq_f32(v102, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v102)), vmulq_f32(vmulq_f32(v102, v102), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v102)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v101)), 0x17uLL)), *a2, 3))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype4_float_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v12 = *(a2 + 75);
        v13 = vminq_f32(vmaxq_f32(v11, v12), vdupq_laneq_s32(vbicq_s8(v12, *(a2 + 76)), 3));
        v14 = *(a2 + 5);
        v15 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(vdupq_lane_s32(*a2, 0), v12)), v12), v14, vaddq_f32(v13, vdupq_lane_s32(*a2, 1)));
        v16 = *(a2 + 50);
        v17 = vcgeq_f32(v15, v16);
        v18 = *(a2 + 21);
        v19 = vandq_s8(v18, vceqq_f32(v15, v16));
        v20 = *(a2 + 52);
        v21 = vsubq_f32(vbicq_s8(v17, *(a2 + 51)), v19);
        v22 = vcgtq_f32(*(a2 + 20), v15);
        v23 = vmulq_f32(v15, vaddq_f32(v14, vandq_s8(*(a2 + 49), v22)));
        v24 = vorrq_s8(vandq_s8(*(a2 + 19), v23), v14);
        v25 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v18, vceqq_f32(v15, v18)), vsubq_f32(v21, vandq_s8(v20, v22))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)));
        v26 = vandq_s8(v14, vcgtq_f32(v24, *(a2 + 23)));
        v27 = vaddq_f32(v25, v26);
        v28 = vsubq_f32(vsubq_f32(v24, v14), vmulq_f32(vmulq_f32(*(a2 + 24), v26), v24));
        v29 = vmulq_f32(v28, v28);
        v30 = vmulq_n_f32(vaddq_f32(v27, vmulq_f32(v28, vaddq_f32(*(a2 + 61), vmulq_f32(v28, vaddq_f32(vaddq_f32(vmulq_f32(v29, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v28))), vaddq_f32(*(a2 + 59), vmulq_f32(v28, *(a2 + 60)))), vmulq_f32(vmulq_f32(v29, v29), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v28)), vmulq_f32(v29, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v28)))))))))), COERCE_FLOAT(*a2));
        v31 = vminq_f32(vmaxq_f32(v30, *(a2 + 62)), *(a2 + 63));
        v32 = vcvtq_f32_s32(vcvtq_s32_f32(v31));
        v33 = vsubq_f32(v32, vandq_s8(v14, vcgtq_f32(v32, v31)));
        v34 = vsubq_f32(v31, v33);
        v35 = vmulq_f32(v34, v34);
        v36 = vcgtq_f32(*(a2 + 70), v33);
        *(v7 + v10) = vbslq_s8(*(a2 + 15), v11, vaddq_f32(vdupq_lane_s32(*(a2 + 32), 0), vbslq_s8(*(a2 + 15), v11, vbslq_s8(vcgtq_f32(v12, vsubq_f32(v13, vdupq_lane_s32(*(a2 + 16), 1))), vmulq_n_f32(v13, COERCE_FLOAT(*(a2 + 1))), vaddq_f32(vdupq_laneq_s32(*a2, 2), vmulq_laneq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(v30, v30)), v12), vmulq_f32(vaddq_f32(v14, vandq_s8(*(a2 + 71), v36)), vmulq_f32(vaddq_f32(v14, vmulq_f32(v34, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v34, *(a2 + 69))), vmulq_f32(v35, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v34)), vmulq_f32(v35, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v34)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v33, vandq_s8(v20, v36)))), 0x17uLL))), v30), *a2, 3))))));
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

uint64_t Getrec709_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v35 = 0;
        v36 = 16 * v8;
        v37 = 16 * v7;
        v38 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v39 = 0;
          do
          {
            v40 = v5[v39 / 0x10];
            v41 = vminq_f32(vmaxq_f32(v40, *(a2 + 75)), *(a2 + 5));
            v6[v39 / 0x10] = vbslq_s8(*(a2 + 15), v40, vmulq_f32(v41, vminq_f32(vrsqrteq_f32(v41), *(a2 + 73))));
            v39 += 16;
          }

          while (v38 != v39);
          ++v35;
          v5 = (v5 + v36);
          v6 = (v6 + v37);
        }

        while (v35 != v3);
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
          v18 = v16;
          v19 = v15;
          v20 = v5[v17 - 2];
          v21 = v5[v17 - 1];
          v22 = v5[v17];
          v23 = v5[v17 + 1];
          v24 = *(a2 + 75);
          v25 = *(a2 + 5);
          v26 = vminq_f32(vmaxq_f32(v20, v24), v25);
          v27 = vminq_f32(vmaxq_f32(v21, v24), v25);
          v28 = vminq_f32(vmaxq_f32(v22, v24), v25);
          v29 = vminq_f32(vmaxq_f32(v23, v24), v25);
          v30 = *(a2 + 73);
          v31 = *(a2 + 15);
          v32 = &v6[v17];
          v32[-2] = vbslq_s8(v31, v20, vmulq_f32(v26, vminq_f32(vrsqrteq_f32(v26), v30)));
          v32[-1] = vbslq_s8(v31, v21, vmulq_f32(v27, vminq_f32(vrsqrteq_f32(v27), v30)));
          v14 += 4;
          *v32 = vbslq_s8(v31, v22, vmulq_f32(v28, vminq_f32(vrsqrteq_f32(v28), v30)));
          v32[1] = vbslq_s8(v31, v23, vmulq_f32(v29, vminq_f32(vrsqrteq_f32(v29), v30)));
          v17 += 4;
          v16 += 4;
          v15 = v19 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v33 = *v18++;
            v34 = vminq_f32(vmaxq_f32(v33, *(a2 + 75)), *(a2 + 5));
            *v19++ = vbslq_s8(*(a2 + 15), v33, vmulq_f32(v34, vminq_f32(vrsqrteq_f32(v34), *(a2 + 73))));
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

uint64_t Getrec709_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(v7 + v10 + 32);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vminq_f32(vmaxq_f32(v16, v15), v17);
      v22 = vmulq_f32(v18, vcvtq_f32_s32(v19));
      v23 = vmulq_f32(v18, vcvtq_f32_s32(v20));
      v24 = vmulq_f32(v18, vcvtq_f32_s32(v21));
      v25 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = *(a2 + 7);
      v29 = *(a2 + 8);
      v30 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v22, v25), v28));
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v23, v26), v28));
      v32 = vrsqrteq_f32(vaddq_f32(v28, vsubq_f32(v24, v27)));
      v33 = vaddq_f32(v29, v25);
      v34 = vaddq_f32(v29, v26);
      v35 = vaddq_f32(v29, v27);
      v36 = *(a2 + 9);
      v37 = *(a2 + 10);
      v38 = vsubq_f32(v33, vmulq_f32(v30, v36));
      v39 = *(a2 + 77);
      v40 = vmulq_f32(v39, v38);
      v41 = vmulq_f32(v39, vsubq_f32(v34, vmulq_f32(v31, v36)));
      v42 = vmulq_f32(v39, vsubq_f32(v35, vmulq_f32(v32, v36)));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vsubq_f32(v43, vandq_s8(v17, vcgtq_f32(v43, v40)));
      v47 = vsubq_f32(v44, vandq_s8(v17, vcgtq_f32(v44, v41)));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = *(a2 + 11);
      v50 = *(a2 + 12);
      v51 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v40, v46))), v50);
      v52 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v41, v47))), v50);
      v53 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v42, v48))), v50);
      v54 = vaddq_f32(vaddq_f32(v37, v48), vmulq_f32(v53, v53));
      v55 = vmaxq_f32(vaddq_f32(vaddq_f32(v37, v46), vmulq_f32(v51, v51)), v15);
      v56 = vmaxq_f32(vaddq_f32(vaddq_f32(v37, v47), vmulq_f32(v52, v52)), v15);
      v57 = *(a2 + 13);
      v58 = *(a2 + 14);
      v59 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v55, v57), v58));
      v60 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v56, v57), v58));
      v61 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v54, v15), v57), v58));
      v62 = *(a2 + 78);
      v63 = *(a2 + 79);
      v64 = vaddq_f32(v62, vmulq_f32(v63, v59));
      v65 = vaddq_f32(v62, vmulq_f32(v63, v60));
      v66 = vmulq_f32(v63, v61);
      v67 = *(a2 + 80);
      v68 = vmulq_f32(v19, v67);
      v69 = vaddq_f32(v62, v66);
      v70 = vmulq_f32(v20, v67);
      v71 = *(a2 + 81);
      v72 = vcgtq_f32(v15, vsubq_f32(v19, v71));
      v73 = vcgtq_f32(v15, vsubq_f32(v20, v71));
      v74 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v21, v71)), vmulq_f32(v21, v67), v69);
      v75 = *(a2 + 15);
      v76 = (v6 + v10);
      *v76 = vbslq_s8(v75, v13, vbslq_s8(v72, v68, v64));
      v76[1] = vbslq_s8(v75, v14, vbslq_s8(v73, v70, v65));
      v76[2] = vbslq_s8(v75, v16, v74);
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
      v77 = *(v7 + 16 * v11);
      v78 = *(a2 + 75);
      v79 = *(a2 + 5);
      v80 = vminq_f32(vmaxq_f32(v77, v78), v79);
      v81 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(v80));
      v82 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
      v83 = vmulq_f32(*(a2 + 77), vsubq_f32(vaddq_f32(*(a2 + 8), v82), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v81, v82))), *(a2 + 9))));
      v84 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
      v85 = vsubq_f32(v84, vandq_s8(v79, vcgtq_f32(v84, v83)));
      v86 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v83, v85))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v77, vbslq_s8(vcgtq_f32(v78, vsubq_f32(v80, *(a2 + 81))), vmulq_f32(v80, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v85), vmulq_f32(v86, v86)), v78), *(a2 + 13)), *(a2 + 14)))))));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec709_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = *(a2 + 77);
      v19 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v20 = vcgtq_f32(vandq_s8(v16, vceqq_f32(v18, v15)), v15);
      v21 = vbslq_s8(v20, v16, v17);
      v22 = vbslq_s8(v20, v16, v19);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vorrq_s8(vandq_s8(v23, v21), v16);
      v26 = vorrq_s8(vandq_s8(v23, v22), v16);
      v27 = *(a2 + 21);
      v28 = *(a2 + 22);
      v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v21)));
      v30 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v22)));
      v31 = *(a2 + 23);
      v32 = *(a2 + 24);
      v33 = vsubq_f32(v29, v28);
      v34 = vandq_s8(v16, vcgtq_f32(v25, v31));
      v35 = vandq_s8(v16, vcgtq_f32(v26, v31));
      v36 = vsubq_f32(v30, v28);
      v37 = vaddq_f32(v33, v34);
      v38 = vmulq_f32(vmulq_f32(v32, v34), v25);
      v39 = vmulq_f32(vmulq_f32(v32, v35), v26);
      v40 = vaddq_f32(v36, v35);
      v41 = vsubq_f32(vsubq_f32(v25, v16), v38);
      v42 = vsubq_f32(vsubq_f32(v26, v16), v39);
      v43 = vmulq_f32(v41, v41);
      v44 = vmulq_f32(v42, v42);
      v45 = *(a2 + 37);
      v46 = *(a2 + 38);
      v47 = *(a2 + 39);
      v48 = *(a2 + 40);
      v49 = vaddq_f32(v45, vmulq_f32(v46, v41));
      v50 = vaddq_f32(v47, vmulq_f32(v48, v41));
      v51 = vaddq_f32(v47, vmulq_f32(v48, v42));
      v52 = vaddq_f32(v45, vmulq_f32(v46, v42));
      v53 = *(a2 + 41);
      v54 = *(a2 + 42);
      v55 = vaddq_f32(vaddq_f32(v53, vmulq_f32(v54, v42)), vmulq_f32(v44, vaddq_f32(v52, vmulq_f32(v44, v51))));
      v56 = vmulq_f32(v41, vaddq_f32(vaddq_f32(v53, vmulq_f32(v54, v41)), vmulq_f32(v43, vaddq_f32(v49, vmulq_f32(v43, v50)))));
      v57 = *(a2 + 43);
      v58 = *(a2 + 44);
      v59 = vmulq_f32(v18, vaddq_f32(v37, vmulq_f32(v41, vaddq_f32(v57, v56))));
      v60 = vmulq_f32(v18, vaddq_f32(v40, vmulq_f32(v42, vaddq_f32(v57, vmulq_f32(v42, v55)))));
      v61 = *(a2 + 29);
      v62 = vmaxq_f32(v59, v61);
      v63 = vmaxq_f32(v60, v61);
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vsubq_f32(v64, vandq_s8(v16, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v65, vandq_s8(v16, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v62, v66);
      v69 = vsubq_f32(v63, v67);
      v70 = *(a2 + 45);
      v71 = *(a2 + 46);
      v72 = vaddq_f32(v58, vmulq_f32(v70, v68));
      v73 = vaddq_f32(v58, vmulq_f32(v70, v69));
      v74 = *(a2 + 47);
      v75 = *(a2 + 48);
      v76 = vaddq_f32(v16, vmulq_f32(v68, vaddq_f32(v75, vmulq_f32(v68, vaddq_f32(vaddq_f32(v71, vmulq_f32(v68, v74)), vmulq_f32(vmulq_f32(v68, v68), v72))))));
      v77 = *(a2 + 33);
      v78 = vaddq_f32(v16, vmulq_f32(v69, vaddq_f32(v75, vmulq_f32(v69, vaddq_f32(vaddq_f32(v71, vmulq_f32(v74, v69)), vmulq_f32(vmulq_f32(v69, v69), v73))))));
      v79 = vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v66)), 0x17uLL);
      v80 = vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v67)), 0x17uLL);
      v81 = vmulq_f32(v76, v79);
      v82 = *(a2 + 78);
      v83 = *(a2 + 79);
      v84 = vaddq_f32(v82, vmulq_f32(v83, v81));
      v85 = vmulq_f32(v83, vmulq_f32(v78, v80));
      v86 = *(a2 + 80);
      v87 = vmulq_f32(v17, v86);
      v88 = vaddq_f32(v82, v85);
      v89 = *(a2 + 81);
      v90 = vcgtq_f32(v15, vsubq_f32(v17, v89));
      v91 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v89)), vmulq_f32(v19, v86), v88);
      v92 = *(a2 + 15);
      v93 = (v6 + v11);
      v93[-1] = vbslq_s8(v92, v13, vbslq_s8(v90, v87, v84));
      *v93 = vbslq_s8(v92, v14, v91);
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
    v96 = *(a2 + 75);
    v97 = *(a2 + 5);
    v98 = vminq_f32(vmaxq_f32(v95, v96), v97);
    v99 = *(a2 + 77);
    v100 = vbslq_s8(vcgtq_f32(vandq_s8(v97, vceqq_f32(v99, v96)), v96), v97, v98);
    v101 = vorrq_s8(vandq_s8(*(a2 + 19), v100), v97);
    v102 = vandq_s8(v97, vcgtq_f32(v101, *(a2 + 23)));
    v103 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v100, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v100))), *(a2 + 22)), v102);
    v104 = vsubq_f32(vsubq_f32(v101, v97), vmulq_f32(vmulq_f32(*(a2 + 24), v102), v101));
    v105 = vmulq_f32(v104, v104);
    v106 = vmaxq_f32(vmulq_f32(v99, vaddq_f32(v103, vmulq_f32(v104, vaddq_f32(*(a2 + 43), vmulq_f32(v104, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v104)), vmulq_f32(v105, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v104)), vmulq_f32(v105, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v104))))))))))), *(a2 + 29));
    v107 = vcvtq_f32_s32(vcvtq_s32_f32(v106));
    v108 = vsubq_f32(v107, vandq_s8(v97, vcgtq_f32(v107, v106)));
    v109 = vsubq_f32(v106, v108);
    *(v6 + v94) = vbslq_s8(*(a2 + 15), v95, vbslq_s8(vcgtq_f32(v96, vsubq_f32(v98, *(a2 + 81))), vmulq_f32(v98, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vmulq_f32(vaddq_f32(v97, vmulq_f32(v109, vaddq_f32(*(a2 + 48), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v109)), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v109)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v108)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec709_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 19);
      v20 = *(a2 + 20);
      v21 = vorrq_s8(vandq_s8(v19, v17), v16);
      v22 = vorrq_s8(vandq_s8(v19, v18), v16);
      v23 = vcgtq_f32(v20, v17);
      v24 = *(a2 + 21);
      v25 = *(a2 + 22);
      v26 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v20, v18)));
      v27 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v24, v23)), v25);
      v28 = *(a2 + 23);
      v29 = *(a2 + 24);
      v30 = vsubq_f32(v26, v25);
      v31 = vandq_s8(v16, vcgtq_f32(v21, v28));
      v32 = vandq_s8(v16, vcgtq_f32(v22, v28));
      v33 = vsubq_f32(vsubq_f32(v21, v16), vmulq_f32(vmulq_f32(v29, v31), v21));
      v34 = vsubq_f32(vsubq_f32(v22, v16), vmulq_f32(vmulq_f32(v29, v32), v22));
      v35 = *(a2 + 25);
      v36 = *(a2 + 26);
      v37 = vaddq_f32(v35, vmulq_f32(v36, v33));
      v38 = vaddq_f32(v35, vmulq_f32(v36, v34));
      v39 = *(a2 + 27);
      v40 = *(a2 + 28);
      v41 = vaddq_f32(vaddq_f32(v30, v32), vmulq_f32(v34, vaddq_f32(vaddq_f32(v39, vmulq_f32(v34, v40)), vmulq_f32(vmulq_f32(v34, v34), v38))));
      v42 = *(a2 + 77);
      v43 = vmulq_f32(v42, vaddq_f32(vaddq_f32(v27, v31), vmulq_f32(v33, vaddq_f32(vaddq_f32(v39, vmulq_f32(v33, v40)), vmulq_f32(vmulq_f32(v33, v33), v37)))));
      v44 = vmulq_f32(v42, v41);
      v45 = *(a2 + 29);
      v46 = *(a2 + 30);
      v47 = vmaxq_f32(v43, v45);
      v48 = vmaxq_f32(v44, v45);
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vsubq_f32(v49, vandq_s8(v16, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v50, vandq_s8(v16, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v47, v51);
      v54 = *(a2 + 31);
      v55 = *(a2 + 32);
      v56 = vsubq_f32(v48, v52);
      v57 = vmulq_f32(v56, vaddq_f32(v55, vmulq_f32(v56, vaddq_f32(v46, vmulq_f32(v54, v56)))));
      v58 = vaddq_f32(v16, vmulq_f32(v53, vaddq_f32(v55, vmulq_f32(v53, vaddq_f32(v46, vmulq_f32(v54, v53))))));
      v59 = vcvtq_s32_f32(v52);
      v60 = *(a2 + 33);
      v61 = vaddq_f32(v16, v57);
      v62 = vshlq_n_s32(vaddq_s32(v60, vcvtq_s32_f32(v51)), 0x17uLL);
      v63 = vshlq_n_s32(vaddq_s32(v60, v59), 0x17uLL);
      v64 = vmulq_f32(v58, v62);
      v65 = *(a2 + 78);
      v66 = *(a2 + 79);
      v67 = vaddq_f32(v65, vmulq_f32(v66, v64));
      v68 = vmulq_f32(v66, vmulq_f32(v61, v63));
      v69 = *(a2 + 80);
      v70 = vmulq_f32(v17, v69);
      v71 = vaddq_f32(v65, v68);
      v72 = *(a2 + 81);
      v73 = vcgtq_f32(v15, vsubq_f32(v17, v72));
      v74 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v72)), vmulq_f32(v18, v69), v71);
      v75 = *(a2 + 15);
      v76 = (v6 + v11);
      v76[-1] = vbslq_s8(v75, v13, vbslq_s8(v73, v70, v67));
      *v76 = vbslq_s8(v75, v14, v74);
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
    v79 = *(a2 + 75);
    v80 = *(a2 + 5);
    v81 = vminq_f32(vmaxq_f32(v78, v79), v80);
    v82 = vorrq_s8(vandq_s8(*(a2 + 19), v81), v80);
    v83 = vandq_s8(v80, vcgtq_f32(v82, *(a2 + 23)));
    v84 = vsubq_f32(vsubq_f32(v82, v80), vmulq_f32(vmulq_f32(*(a2 + 24), v83), v82));
    v85 = vmaxq_f32(vmulq_f32(*(a2 + 77), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v81, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v81))), *(a2 + 22)), v83), vmulq_f32(v84, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v84, *(a2 + 28))), vmulq_f32(vmulq_f32(v84, v84), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v84))))))), *(a2 + 29));
    v86 = vcvtq_f32_s32(vcvtq_s32_f32(v85));
    v87 = vsubq_f32(v86, vandq_s8(v80, vcgtq_f32(v86, v85)));
    v88 = vsubq_f32(v85, v87);
    *(v6 + v77) = vbslq_s8(*(a2 + 15), v78, vbslq_s8(vcgtq_f32(v79, vsubq_f32(v81, *(a2 + 81))), vmulq_f32(v81, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vmulq_f32(vaddq_f32(v80, vmulq_f32(v88, vaddq_f32(*(a2 + 32), vmulq_f32(v88, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v88)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v87)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec709_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = vcgtq_f32(v19, v17);
      v21 = vcgtq_f32(v19, v18);
      v22 = *(a2 + 83);
      v23 = *(a2 + 5);
      v24 = vbslq_s8(v21, v22, v23);
      v25 = vmulq_f32(v17, vbslq_s8(v20, v22, v23));
      v26 = vmulq_f32(v18, v24);
      v27 = *(a2 + 84);
      v28 = vminq_f32(v25, v27);
      v29 = vminq_f32(v26, v27);
      v30 = *(a2 + 19);
      v31 = *(a2 + 20);
      v32 = vorrq_s8(vandq_s8(v30, v28), v23);
      v33 = *(a2 + 21);
      v34 = *(a2 + 22);
      v35 = vorrq_s8(vandq_s8(v30, v29), v23);
      v36 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v31, v29)));
      v37 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v31, v28))), v34);
      v38 = *(a2 + 23);
      v39 = *(a2 + 24);
      v40 = vandq_s8(v23, vcgtq_f32(v32, v38));
      v41 = vandq_s8(v23, vcgtq_f32(v35, v38));
      v42 = vaddq_f32(v37, v40);
      v43 = vmulq_f32(v39, v40);
      v44 = vmulq_f32(vmulq_f32(v39, v41), v35);
      v45 = vaddq_f32(vsubq_f32(v36, v34), v41);
      v46 = vsubq_f32(vsubq_f32(v32, v23), vmulq_f32(v43, v32));
      v47 = vsubq_f32(vsubq_f32(v35, v23), v44);
      v48 = *(a2 + 25);
      v49 = *(a2 + 26);
      v50 = vaddq_f32(v48, vmulq_f32(v49, v46));
      v51 = vaddq_f32(v48, vmulq_f32(v49, v47));
      v53 = *(a2 + 27);
      v52 = *(a2 + 28);
      v54 = vaddq_f32(v45, vmulq_f32(v47, vaddq_f32(vaddq_f32(v53, vmulq_f32(v47, v52)), vmulq_f32(vmulq_f32(v47, v47), v51))));
      v55 = *(a2 + 77);
      v56 = vmulq_f32(v55, vaddq_f32(v42, vmulq_f32(v46, vaddq_f32(vaddq_f32(v53, vmulq_f32(v46, v52)), vmulq_f32(vmulq_f32(v46, v46), v50)))));
      v57 = vmulq_f32(v55, v54);
      v58 = *(a2 + 29);
      v59 = *(a2 + 30);
      v60 = vmaxq_f32(v56, v58);
      v61 = vmaxq_f32(v57, v58);
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vsubq_f32(v62, vandq_s8(v23, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v63, vandq_s8(v23, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v60, v64);
      v67 = vsubq_f32(v61, v65);
      v68 = *(a2 + 31);
      v69 = *(a2 + 32);
      v70 = vmulq_f32(v67, vaddq_f32(v69, vmulq_f32(v67, vaddq_f32(v59, vmulq_f32(v68, v67)))));
      v71 = vaddq_f32(v23, vmulq_f32(v66, vaddq_f32(v69, vmulq_f32(v66, vaddq_f32(v59, vmulq_f32(v68, v66))))));
      v72 = vcvtq_s32_f32(v65);
      v73 = *(a2 + 33);
      v74 = vmulq_f32(v71, vshlq_n_s32(vaddq_s32(v73, vcvtq_s32_f32(v64)), 0x17uLL));
      v75 = vmulq_f32(vaddq_f32(v23, v70), vshlq_n_s32(vaddq_s32(v73, v72), 0x17uLL));
      v76 = *(a2 + 78);
      v77 = *(a2 + 79);
      v78 = vmulq_f32(v77, v75);
      v79 = vaddq_f32(v76, vmulq_f32(v77, v74));
      v80 = *(a2 + 80);
      v81 = *(a2 + 81);
      v82 = (v6 + v11);
      v82[-1] = vbslq_s8(v16, v13, vmulq_f32(vbslq_s8(v20, v15, v23), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v25, v81)), vmulq_f32(v25, v80), v79)));
      *v82 = vbslq_s8(v16, v14, vmulq_f32(vbslq_s8(v21, v15, v23), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v26, v81)), vmulq_f32(v26, v80), vaddq_f32(v76, v78))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v83 = 16 * v10;
    v84 = *(v7 + v83);
    v85 = *(a2 + 82);
    v86 = vbslq_s8(*(a2 + 15), v84, vmaxq_f32(v84, v85));
    v87 = *(a2 + 75);
    v88 = vcgtq_f32(v87, v86);
    v89 = *(a2 + 5);
    v90 = vmulq_f32(v86, vbslq_s8(v88, *(a2 + 83), v89));
    v91 = vminq_f32(v90, *(a2 + 84));
    v92 = vorrq_s8(vandq_s8(*(a2 + 19), v91), v89);
    v93 = vandq_s8(v89, vcgtq_f32(v92, *(a2 + 23)));
    v94 = vsubq_f32(vsubq_f32(v92, v89), vmulq_f32(vmulq_f32(*(a2 + 24), v93), v92));
    v95 = vmaxq_f32(vmulq_f32(*(a2 + 77), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v91, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v91))), *(a2 + 22)), v93), vmulq_f32(v94, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v94, *(a2 + 28))), vmulq_f32(vmulq_f32(v94, v94), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v94))))))), *(a2 + 29));
    v96 = vcvtq_f32_s32(vcvtq_s32_f32(v95));
    v97 = vsubq_f32(v96, vandq_s8(v89, vcgtq_f32(v96, v95)));
    v98 = vsubq_f32(v95, v97);
    *(v6 + v83) = vbslq_s8(*(a2 + 15), v84, vmulq_f32(vbslq_s8(v88, v85, v89), vbslq_s8(vcgtq_f32(v87, vsubq_f32(v90, *(a2 + 81))), vmulq_f32(v90, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vmulq_f32(vaddq_f32(v89, vmulq_f32(v98, vaddq_f32(*(a2 + 32), vmulq_f32(v98, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v98)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v97)), 0x17uLL)))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec709_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = vcgtq_f32(v19, v17);
      v21 = *(a2 + 83);
      v22 = *(a2 + 5);
      v23 = vcgtq_f32(v19, v18);
      v24 = vbslq_s8(v23, v21, v22);
      v25 = vmulq_f32(v17, vbslq_s8(v20, v21, v22));
      v26 = vmulq_f32(v18, v24);
      v27 = *(a2 + 84);
      v28 = vminq_f32(v25, v27);
      v29 = vminq_f32(v26, v27);
      v30 = *(a2 + 77);
      v31 = vcgtq_f32(vandq_s8(v22, vceqq_f32(v30, v19)), v19);
      v32 = vbslq_s8(v31, v22, v28);
      v33 = vbslq_s8(v31, v22, v29);
      v34 = *(a2 + 19);
      v35 = *(a2 + 20);
      v36 = vorrq_s8(vandq_s8(v34, v32), v22);
      v37 = vorrq_s8(vandq_s8(v34, v33), v22);
      v38 = *(a2 + 21);
      v39 = *(a2 + 22);
      v40 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v33)));
      v41 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v32))), v39);
      v42 = *(a2 + 23);
      v43 = *(a2 + 24);
      v44 = vandq_s8(v22, vcgtq_f32(v36, v42));
      v45 = vandq_s8(v22, vcgtq_f32(v37, v42));
      v46 = vaddq_f32(v41, v44);
      v47 = vaddq_f32(vsubq_f32(v40, v39), v45);
      v48 = vmulq_f32(v43, v45);
      v49 = vmulq_f32(vmulq_f32(v43, v44), v36);
      v50 = vmulq_f32(v48, v37);
      v51 = vsubq_f32(vsubq_f32(v36, v22), v49);
      v52 = vsubq_f32(vsubq_f32(v37, v22), v50);
      v53 = vmulq_f32(v51, v51);
      v54 = vmulq_f32(v52, v52);
      v55 = *(a2 + 37);
      v56 = *(a2 + 38);
      v57 = vaddq_f32(v55, vmulq_f32(v56, v51));
      v58 = *(a2 + 39);
      v59 = *(a2 + 40);
      v60 = vaddq_f32(v55, vmulq_f32(v56, v52));
      v61 = vaddq_f32(v58, vmulq_f32(v59, v51));
      v62 = vaddq_f32(v58, vmulq_f32(v59, v52));
      v63 = *(a2 + 41);
      v64 = *(a2 + 42);
      v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v64, v52)), vmulq_f32(v54, vaddq_f32(v60, vmulq_f32(v54, v62))));
      v66 = vmulq_f32(v51, vaddq_f32(vaddq_f32(v63, vmulq_f32(v64, v51)), vmulq_f32(v53, vaddq_f32(v57, vmulq_f32(v53, v61)))));
      v67 = *(a2 + 43);
      v68 = *(a2 + 44);
      v69 = vaddq_f32(v47, vmulq_f32(v52, vaddq_f32(v67, vmulq_f32(v52, v65))));
      v70 = *(a2 + 29);
      v71 = vmaxq_f32(vmulq_f32(v30, vaddq_f32(v46, vmulq_f32(v51, vaddq_f32(v67, v66)))), v70);
      v72 = vmaxq_f32(vmulq_f32(v30, v69), v70);
      v73 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
      v74 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
      v75 = vsubq_f32(v73, vandq_s8(v22, vcgtq_f32(v73, v71)));
      v76 = vsubq_f32(v74, vandq_s8(v22, vcgtq_f32(v74, v72)));
      v77 = vsubq_f32(v71, v75);
      v78 = vsubq_f32(v72, v76);
      v79 = *(a2 + 45);
      v80 = *(a2 + 46);
      v81 = *(a2 + 47);
      v82 = *(a2 + 48);
      v83 = *(a2 + 33);
      v84 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v77, vaddq_f32(v82, vmulq_f32(v77, vaddq_f32(vaddq_f32(v80, vmulq_f32(v77, v81)), vmulq_f32(vmulq_f32(v77, v77), vaddq_f32(v68, vmulq_f32(v79, v77)))))))), vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v75)), 0x17uLL));
      v85 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v78, vaddq_f32(v82, vmulq_f32(v78, vaddq_f32(vaddq_f32(v80, vmulq_f32(v81, v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(v68, vmulq_f32(v79, v78)))))))), vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v76)), 0x17uLL));
      v86 = *(a2 + 78);
      v87 = *(a2 + 79);
      v88 = vmulq_f32(v87, v85);
      v89 = vaddq_f32(v86, vmulq_f32(v87, v84));
      v90 = *(a2 + 80);
      v91 = *(a2 + 81);
      v92 = (v6 + v11);
      v92[-1] = vbslq_s8(v16, v13, vmulq_f32(vbslq_s8(v20, v15, v22), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v25, v91)), vmulq_f32(v25, v90), v89)));
      *v92 = vbslq_s8(v16, v14, vmulq_f32(vbslq_s8(v23, v15, v22), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v26, v91)), vmulq_f32(v26, v90), vaddq_f32(v86, v88))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v93 = 16 * v10;
    v94 = *(v7 + v93);
    v95 = *(a2 + 82);
    v96 = vbslq_s8(*(a2 + 15), v94, vmaxq_f32(v94, v95));
    v97 = *(a2 + 75);
    v98 = vcgtq_f32(v97, v96);
    v99 = *(a2 + 5);
    v100 = vmulq_f32(v96, vbslq_s8(v98, *(a2 + 83), v99));
    v101 = *(a2 + 77);
    v102 = vbslq_s8(vcgtq_f32(vandq_s8(v99, vceqq_f32(v101, v97)), v97), v99, vminq_f32(v100, *(a2 + 84)));
    v103 = vorrq_s8(vandq_s8(*(a2 + 19), v102), v99);
    v104 = vandq_s8(v99, vcgtq_f32(v103, *(a2 + 23)));
    v105 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v102, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v102))), *(a2 + 22)), v104);
    v106 = vsubq_f32(vsubq_f32(v103, v99), vmulq_f32(vmulq_f32(*(a2 + 24), v104), v103));
    v107 = vmulq_f32(v106, v106);
    v108 = vmaxq_f32(vmulq_f32(v101, vaddq_f32(v105, vmulq_f32(v106, vaddq_f32(*(a2 + 43), vmulq_f32(v106, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v106)), vmulq_f32(v107, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v106)), vmulq_f32(v107, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v106))))))))))), *(a2 + 29));
    v109 = vcvtq_f32_s32(vcvtq_s32_f32(v108));
    v110 = vsubq_f32(v109, vandq_s8(v99, vcgtq_f32(v109, v108)));
    v111 = vsubq_f32(v108, v110);
    *(v6 + v93) = vbslq_s8(*(a2 + 15), v94, vmulq_f32(vbslq_s8(v98, v95, v99), vbslq_s8(vcgtq_f32(v97, vsubq_f32(v100, *(a2 + 81))), vmulq_f32(v100, *(a2 + 80)), vaddq_f32(*(a2 + 78), vmulq_f32(*(a2 + 79), vmulq_f32(vaddq_f32(v99, vmulq_f32(v111, vaddq_f32(*(a2 + 48), vmulq_f32(v111, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v111)), vmulq_f32(vmulq_f32(v111, v111), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v111)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v110)), 0x17uLL)))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v34 = 0;
        v35 = 16 * v8;
        v36 = 16 * v7;
        v37 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v38 = 0;
          do
          {
            v39 = v5[v38 / 0x10];
            v40 = vminq_f32(vmaxq_f32(v39, *(a2 + 75)), *(a2 + 5));
            v6[v38 / 0x10] = vbslq_s8(*(a2 + 15), v39, vmulq_f32(v40, v40));
            v38 += 16;
          }

          while (v37 != v38);
          ++v34;
          v5 = (v5 + v35);
          v6 = (v6 + v36);
        }

        while (v34 != v3);
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
          v18 = v16;
          v19 = v15;
          v20 = v5[v17 - 2];
          v21 = v5[v17 - 1];
          v22 = v5[v17];
          v23 = v5[v17 + 1];
          v24 = *(a2 + 75);
          v25 = *(a2 + 5);
          v26 = vminq_f32(vmaxq_f32(v20, v24), v25);
          v27 = vminq_f32(vmaxq_f32(v21, v24), v25);
          v28 = vminq_f32(vmaxq_f32(v22, v24), v25);
          v29 = vminq_f32(vmaxq_f32(v23, v24), v25);
          v30 = *(a2 + 15);
          v31 = &v6[v17];
          v31[-2] = vbslq_s8(v30, v20, vmulq_f32(v26, v26));
          v31[-1] = vbslq_s8(v30, v21, vmulq_f32(v27, v27));
          v14 += 4;
          *v31 = vbslq_s8(v30, v22, vmulq_f32(v28, v28));
          v31[1] = vbslq_s8(v30, v23, vmulq_f32(v29, v29));
          v17 += 4;
          v16 += 4;
          v15 = v19 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v32 = *v18++;
            v33 = vminq_f32(vmaxq_f32(v32, *(a2 + 75)), *(a2 + 5));
            *v19++ = vbslq_s8(*(a2 + 15), v32, vmulq_f32(v33, v33));
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

uint64_t Getinv_rec709_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(v7 + v10 + 32);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vminq_f32(vmaxq_f32(v16, v15), v17);
      v22 = *(a2 + 85);
      v23 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v22)));
      v24 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v22)));
      v25 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v21, v22)));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
      v29 = *(a2 + 7);
      v30 = *(a2 + 8);
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v23, v26), v29));
      v32 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v24, v27), v29));
      v33 = vaddq_f32(v30, v26);
      v34 = vrsqrteq_f32(vaddq_f32(v29, vsubq_f32(v25, v28)));
      v35 = vaddq_f32(v30, v27);
      v36 = vaddq_f32(v30, v28);
      v37 = *(a2 + 9);
      v38 = *(a2 + 10);
      v39 = vsubq_f32(v33, vmulq_f32(v31, v37));
      v40 = vsubq_f32(v35, vmulq_f32(v32, v37));
      v41 = *(a2 + 86);
      v42 = vmulq_f32(v41, v39);
      v43 = vmulq_f32(v41, v40);
      v44 = vmulq_f32(v41, vsubq_f32(v36, vmulq_f32(v34, v37)));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = vsubq_f32(v46, vandq_s8(v17, vcgtq_f32(v46, v43)));
      v50 = vsubq_f32(v47, vandq_s8(v17, vcgtq_f32(v47, v44)));
      v51 = *(a2 + 11);
      v52 = *(a2 + 12);
      v53 = vmulq_f32(vrecpeq_f32(vsubq_f32(v51, vsubq_f32(v42, v48))), v52);
      v54 = vmulq_f32(vrecpeq_f32(vsubq_f32(v51, vsubq_f32(v43, v49))), v52);
      v55 = vmulq_f32(vrecpeq_f32(vsubq_f32(v51, vsubq_f32(v44, v50))), v52);
      v56 = vaddq_f32(vaddq_f32(v38, v50), vmulq_f32(v55, v55));
      v57 = vmaxq_f32(vaddq_f32(vaddq_f32(v38, v48), vmulq_f32(v53, v53)), v15);
      v58 = vmaxq_f32(vaddq_f32(vaddq_f32(v38, v49), vmulq_f32(v54, v54)), v15);
      v59 = *(a2 + 13);
      v60 = *(a2 + 14);
      v61 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v57, v59), v60));
      v62 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v58, v59), v60));
      v63 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v56, v15), v59), v60));
      v64 = *(a2 + 87);
      v65 = *(a2 + 88);
      v66 = vmulq_f32(v19, v65);
      v67 = vmulq_f32(v20, v65);
      v68 = *(a2 + 89);
      v69 = vcgtq_f32(v15, vsubq_f32(v19, v68));
      v70 = vcgtq_f32(v15, vsubq_f32(v20, v68));
      v71 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v21, v68)), vmulq_f32(v21, v65), vmulq_f32(v64, v63));
      v72 = *(a2 + 15);
      v73 = (v6 + v10);
      *v73 = vbslq_s8(v72, v13, vbslq_s8(v69, v66, vmulq_f32(v64, v61)));
      v73[1] = vbslq_s8(v72, v14, vbslq_s8(v70, v67, vmulq_f32(v64, v62)));
      v73[2] = vbslq_s8(v72, v16, v71);
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
      v74 = *(v7 + 16 * v11);
      v75 = *(a2 + 75);
      v76 = *(a2 + 5);
      v77 = vminq_f32(vmaxq_f32(v74, v75), v76);
      v78 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v77, *(a2 + 85))));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v78));
      v80 = vmulq_f32(*(a2 + 86), vsubq_f32(vaddq_f32(*(a2 + 8), v79), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v78, v79))), *(a2 + 9))));
      v81 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
      v82 = vsubq_f32(v81, vandq_s8(v76, vcgtq_f32(v81, v80)));
      v83 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v80, v82))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v74, vbslq_s8(vcgtq_f32(v75, vsubq_f32(v77, *(a2 + 89))), vmulq_f32(v77, *(a2 + 88)), vmulq_f32(*(a2 + 87), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v82), vmulq_f32(v83, v83)), v75), *(a2 + 13)), *(a2 + 14))))));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 85);
      v20 = vaddq_f32(v17, v19);
      v21 = vaddq_f32(v18, v19);
      v22 = *(a2 + 86);
      v23 = vcgtq_f32(vandq_s8(v16, vceqq_f32(v22, v15)), v15);
      v24 = vbslq_s8(v23, v16, v20);
      v25 = vbslq_s8(v23, v16, v21);
      v26 = *(a2 + 19);
      v27 = *(a2 + 20);
      v28 = vorrq_s8(vandq_s8(v26, v24), v16);
      v29 = vorrq_s8(vandq_s8(v26, v25), v16);
      v30 = *(a2 + 21);
      v31 = *(a2 + 22);
      v32 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v25, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v27, v25)));
      v33 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v27, v24))), v31);
      v34 = *(a2 + 23);
      v35 = *(a2 + 24);
      v36 = vandq_s8(v16, vcgtq_f32(v28, v34));
      v37 = vandq_s8(v16, vcgtq_f32(v29, v34));
      v38 = vaddq_f32(v33, v36);
      v39 = vaddq_f32(vsubq_f32(v32, v31), v37);
      v40 = vmulq_f32(v35, v37);
      v41 = vmulq_f32(vmulq_f32(v35, v36), v28);
      v42 = vmulq_f32(v40, v29);
      v43 = vsubq_f32(vsubq_f32(v28, v16), v41);
      v44 = vsubq_f32(vsubq_f32(v29, v16), v42);
      v45 = vmulq_f32(v43, v43);
      v46 = vmulq_f32(v44, v44);
      v47 = *(a2 + 37);
      v48 = *(a2 + 38);
      v49 = vaddq_f32(v47, vmulq_f32(v48, v43));
      v50 = *(a2 + 39);
      v51 = *(a2 + 40);
      v52 = vaddq_f32(v47, vmulq_f32(v48, v44));
      v53 = vaddq_f32(v50, vmulq_f32(v51, v43));
      v54 = vaddq_f32(v50, vmulq_f32(v51, v44));
      v55 = *(a2 + 41);
      v56 = *(a2 + 42);
      v57 = vaddq_f32(vaddq_f32(v55, vmulq_f32(v56, v44)), vmulq_f32(v46, vaddq_f32(v52, vmulq_f32(v46, v54))));
      v58 = vmulq_f32(v43, vaddq_f32(vaddq_f32(v55, vmulq_f32(v56, v43)), vmulq_f32(v45, vaddq_f32(v49, vmulq_f32(v45, v53)))));
      v59 = *(a2 + 43);
      v60 = *(a2 + 44);
      v61 = vaddq_f32(v39, vmulq_f32(v44, vaddq_f32(v59, vmulq_f32(v44, v57))));
      v62 = *(a2 + 29);
      v63 = vmaxq_f32(vmulq_f32(v22, vaddq_f32(v38, vmulq_f32(v43, vaddq_f32(v59, v58)))), v62);
      v64 = vmaxq_f32(vmulq_f32(v22, v61), v62);
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
      v67 = vsubq_f32(v65, vandq_s8(v16, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v66, vandq_s8(v16, vcgtq_f32(v66, v64)));
      v69 = vsubq_f32(v63, v67);
      v70 = vsubq_f32(v64, v68);
      v71 = *(a2 + 45);
      v72 = *(a2 + 46);
      v73 = *(a2 + 47);
      v74 = *(a2 + 48);
      v75 = vaddq_f32(v16, vmulq_f32(v69, vaddq_f32(v74, vmulq_f32(v69, vaddq_f32(vaddq_f32(v72, vmulq_f32(v69, v73)), vmulq_f32(vmulq_f32(v69, v69), vaddq_f32(v60, vmulq_f32(v71, v69))))))));
      v76 = vaddq_f32(v16, vmulq_f32(v70, vaddq_f32(v74, vmulq_f32(v70, vaddq_f32(vaddq_f32(v72, vmulq_f32(v73, v70)), vmulq_f32(vmulq_f32(v70, v70), vaddq_f32(v60, vmulq_f32(v71, v70))))))));
      v77 = *(a2 + 33);
      v78 = vmulq_f32(v75, vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v67)), 0x17uLL));
      v79 = vmulq_f32(v76, vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v68)), 0x17uLL));
      v80 = *(a2 + 87);
      v81 = *(a2 + 88);
      v82 = vmulq_f32(v17, v81);
      v83 = *(a2 + 89);
      v84 = vcgtq_f32(v15, vsubq_f32(v17, v83));
      v85 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v83)), vmulq_f32(v18, v81), vmulq_f32(v80, v79));
      v86 = *(a2 + 15);
      v87 = (v6 + v11);
      v87[-1] = vbslq_s8(v86, v13, vbslq_s8(v84, v82, vmulq_f32(v80, v78)));
      *v87 = vbslq_s8(v86, v14, v85);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v88 = 16 * v10;
    v89 = *(v7 + v88);
    v90 = *(a2 + 75);
    v91 = *(a2 + 5);
    v92 = vminq_f32(vmaxq_f32(v89, v90), v91);
    v93 = *(a2 + 86);
    v94 = vbslq_s8(vcgtq_f32(vandq_s8(v91, vceqq_f32(v93, v90)), v90), v91, vaddq_f32(v92, *(a2 + 85)));
    v95 = vorrq_s8(vandq_s8(*(a2 + 19), v94), v91);
    v96 = vandq_s8(v91, vcgtq_f32(v95, *(a2 + 23)));
    v97 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v94))), *(a2 + 22)), v96);
    v98 = vsubq_f32(vsubq_f32(v95, v91), vmulq_f32(vmulq_f32(*(a2 + 24), v96), v95));
    v99 = vmulq_f32(v98, v98);
    v100 = vmaxq_f32(vmulq_f32(v93, vaddq_f32(v97, vmulq_f32(v98, vaddq_f32(*(a2 + 43), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v98)), vmulq_f32(v99, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v98)), vmulq_f32(v99, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v98))))))))))), *(a2 + 29));
    v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
    v102 = vsubq_f32(v101, vandq_s8(v91, vcgtq_f32(v101, v100)));
    v103 = vsubq_f32(v100, v102);
    *(v6 + v88) = vbslq_s8(*(a2 + 15), v89, vbslq_s8(vcgtq_f32(v90, vsubq_f32(v92, *(a2 + 89))), vmulq_f32(v92, *(a2 + 88)), vmulq_f32(*(a2 + 87), vmulq_f32(vaddq_f32(v91, vmulq_f32(v103, vaddq_f32(*(a2 + 48), vmulq_f32(v103, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v103)), vmulq_f32(vmulq_f32(v103, v103), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v103)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v102)), 0x17uLL)))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 85);
      v20 = vaddq_f32(v17, v19);
      v21 = vaddq_f32(v18, v19);
      v22 = *(a2 + 19);
      v23 = *(a2 + 20);
      v24 = vorrq_s8(vandq_s8(v22, v20), v16);
      v25 = *(a2 + 21);
      v26 = *(a2 + 22);
      v27 = vorrq_s8(vandq_s8(v22, v21), v16);
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v21)));
      v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v20))), v26);
      v30 = *(a2 + 23);
      v31 = *(a2 + 24);
      v32 = vandq_s8(v16, vcgtq_f32(v24, v30));
      v33 = vandq_s8(v16, vcgtq_f32(v27, v30));
      v34 = vaddq_f32(v29, v32);
      v35 = vmulq_f32(v31, v32);
      v36 = vmulq_f32(vmulq_f32(v31, v33), v27);
      v37 = vaddq_f32(vsubq_f32(v28, v26), v33);
      v38 = vsubq_f32(vsubq_f32(v24, v16), vmulq_f32(v35, v24));
      v39 = vsubq_f32(vsubq_f32(v27, v16), v36);
      v40 = *(a2 + 25);
      v41 = *(a2 + 26);
      v42 = vaddq_f32(v40, vmulq_f32(v41, v38));
      v43 = vaddq_f32(v40, vmulq_f32(v41, v39));
      v45 = *(a2 + 27);
      v44 = *(a2 + 28);
      v46 = vaddq_f32(v37, vmulq_f32(v39, vaddq_f32(vaddq_f32(v45, vmulq_f32(v39, v44)), vmulq_f32(vmulq_f32(v39, v39), v43))));
      v47 = *(a2 + 86);
      v48 = vmulq_f32(v47, vaddq_f32(v34, vmulq_f32(v38, vaddq_f32(vaddq_f32(v45, vmulq_f32(v38, v44)), vmulq_f32(vmulq_f32(v38, v38), v42)))));
      v49 = vmulq_f32(v47, v46);
      v50 = *(a2 + 29);
      v51 = *(a2 + 30);
      v52 = vmaxq_f32(v48, v50);
      v53 = vmaxq_f32(v49, v50);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v56 = vsubq_f32(v54, vandq_s8(v16, vcgtq_f32(v54, v52)));
      v57 = vsubq_f32(v55, vandq_s8(v16, vcgtq_f32(v55, v53)));
      v58 = vsubq_f32(v52, v56);
      v59 = vsubq_f32(v53, v57);
      v60 = *(a2 + 31);
      v61 = *(a2 + 32);
      v62 = vaddq_f32(v16, vmulq_f32(v58, vaddq_f32(v61, vmulq_f32(v58, vaddq_f32(v51, vmulq_f32(v60, v58))))));
      v63 = vaddq_f32(v16, vmulq_f32(v59, vaddq_f32(v61, vmulq_f32(v59, vaddq_f32(v51, vmulq_f32(v60, v59))))));
      v64 = *(a2 + 33);
      v65 = vmulq_f32(v62, vshlq_n_s32(vaddq_s32(v64, vcvtq_s32_f32(v56)), 0x17uLL));
      v66 = vmulq_f32(v63, vshlq_n_s32(vaddq_s32(v64, vcvtq_s32_f32(v57)), 0x17uLL));
      v67 = *(a2 + 87);
      v68 = *(a2 + 88);
      v69 = vmulq_f32(v17, v68);
      v70 = *(a2 + 89);
      v71 = vcgtq_f32(v15, vsubq_f32(v17, v70));
      v72 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v70)), vmulq_f32(v18, v68), vmulq_f32(v67, v66));
      v73 = *(a2 + 15);
      v74 = (v6 + v11);
      v74[-1] = vbslq_s8(v73, v13, vbslq_s8(v71, v69, vmulq_f32(v67, v65)));
      *v74 = vbslq_s8(v73, v14, v72);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v75 = 16 * v10;
    v76 = *(v7 + v75);
    v77 = *(a2 + 75);
    v78 = *(a2 + 5);
    v79 = vminq_f32(vmaxq_f32(v76, v77), v78);
    v80 = vaddq_f32(v79, *(a2 + 85));
    v81 = vorrq_s8(vandq_s8(*(a2 + 19), v80), v78);
    v82 = vandq_s8(v78, vcgtq_f32(v81, *(a2 + 23)));
    v83 = vsubq_f32(vsubq_f32(v81, v78), vmulq_f32(vmulq_f32(*(a2 + 24), v82), v81));
    v84 = vmaxq_f32(vmulq_f32(*(a2 + 86), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v80, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v80))), *(a2 + 22)), v82), vmulq_f32(v83, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v83, *(a2 + 28))), vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v83))))))), *(a2 + 29));
    v85 = vcvtq_f32_s32(vcvtq_s32_f32(v84));
    v86 = vsubq_f32(v85, vandq_s8(v78, vcgtq_f32(v85, v84)));
    v87 = vsubq_f32(v84, v86);
    *(v6 + v75) = vbslq_s8(*(a2 + 15), v76, vbslq_s8(vcgtq_f32(v77, vsubq_f32(v79, *(a2 + 89))), vmulq_f32(v79, *(a2 + 88)), vmulq_f32(*(a2 + 87), vmulq_f32(vaddq_f32(v78, vmulq_f32(v87, vaddq_f32(*(a2 + 32), vmulq_f32(v87, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v87)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v86)), 0x17uLL)))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = vcgtq_f32(v19, v17);
      v21 = vcgtq_f32(v19, v18);
      v22 = *(a2 + 83);
      v23 = *(a2 + 5);
      v24 = vbslq_s8(v21, v22, v23);
      v25 = vmulq_f32(v17, vbslq_s8(v20, v22, v23));
      v26 = vmulq_f32(v18, v24);
      v27 = *(a2 + 90);
      v28 = *(a2 + 85);
      v29 = vaddq_f32(vminq_f32(v25, v27), v28);
      v30 = vaddq_f32(vminq_f32(v26, v27), v28);
      v31 = *(a2 + 19);
      v32 = *(a2 + 20);
      v33 = vorrq_s8(vandq_s8(v31, v29), v23);
      v34 = vorrq_s8(vandq_s8(v31, v30), v23);
      v35 = *(a2 + 21);
      v36 = *(a2 + 22);
      v37 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v35, vcgtq_f32(v32, v30)));
      v38 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v35, vcgtq_f32(v32, v29))), v36);
      v39 = *(a2 + 23);
      v40 = *(a2 + 24);
      v41 = vsubq_f32(v37, v36);
      v42 = vandq_s8(v23, vcgtq_f32(v33, v39));
      v43 = vandq_s8(v23, vcgtq_f32(v34, v39));
      v44 = vaddq_f32(v38, v42);
      v45 = vsubq_f32(vsubq_f32(v33, v23), vmulq_f32(vmulq_f32(v40, v42), v33));
      v46 = vsubq_f32(vsubq_f32(v34, v23), vmulq_f32(vmulq_f32(v40, v43), v34));
      v47 = *(a2 + 25);
      v48 = *(a2 + 26);
      v49 = vaddq_f32(v47, vmulq_f32(v48, v45));
      v50 = vaddq_f32(v47, vmulq_f32(v48, v46));
      v51 = *(a2 + 27);
      v52 = *(a2 + 28);
      v53 = vaddq_f32(vaddq_f32(v41, v43), vmulq_f32(v46, vaddq_f32(vaddq_f32(v51, vmulq_f32(v46, v52)), vmulq_f32(vmulq_f32(v46, v46), v50))));
      v54 = *(a2 + 86);
      v55 = vmulq_f32(v54, vaddq_f32(v44, vmulq_f32(v45, vaddq_f32(vaddq_f32(v51, vmulq_f32(v45, v52)), vmulq_f32(vmulq_f32(v45, v45), v49)))));
      v56 = vmulq_f32(v54, v53);
      v57 = *(a2 + 29);
      v58 = *(a2 + 30);
      v59 = vmaxq_f32(v55, v57);
      v60 = vmaxq_f32(v56, v57);
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v59));
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vsubq_f32(v61, vandq_s8(v23, vcgtq_f32(v61, v59)));
      v64 = vsubq_f32(v62, vandq_s8(v23, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v59, v63);
      v66 = *(a2 + 31);
      v67 = *(a2 + 32);
      v68 = vsubq_f32(v60, v64);
      v69 = vmulq_f32(v68, vaddq_f32(v67, vmulq_f32(v68, vaddq_f32(v58, vmulq_f32(v66, v68)))));
      v70 = vaddq_f32(v23, vmulq_f32(v65, vaddq_f32(v67, vmulq_f32(v65, vaddq_f32(v58, vmulq_f32(v66, v65))))));
      v71 = vcvtq_s32_f32(v64);
      v72 = *(a2 + 33);
      v73 = vmulq_f32(v70, vshlq_n_s32(vaddq_s32(v72, vcvtq_s32_f32(v63)), 0x17uLL));
      v74 = vmulq_f32(vaddq_f32(v23, v69), vshlq_n_s32(vaddq_s32(v72, v71), 0x17uLL));
      v75 = *(a2 + 87);
      v76 = *(a2 + 88);
      v77 = *(a2 + 89);
      v78 = (v6 + v11);
      v78[-1] = vbslq_s8(v16, v13, vmulq_f32(vbslq_s8(v20, v15, v23), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v25, v77)), vmulq_f32(v25, v76), vmulq_f32(v75, v73))));
      *v78 = vbslq_s8(v16, v14, vmulq_f32(vbslq_s8(v21, v15, v23), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v26, v77)), vmulq_f32(v26, v76), vmulq_f32(v75, v74))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v79 = 16 * v10;
    v80 = *(v7 + v79);
    v81 = *(a2 + 82);
    v82 = vbslq_s8(*(a2 + 15), v80, vmaxq_f32(v80, v81));
    v83 = *(a2 + 75);
    v84 = vcgtq_f32(v83, v82);
    v85 = *(a2 + 5);
    v86 = vmulq_f32(v82, vbslq_s8(v84, *(a2 + 83), v85));
    v87 = vaddq_f32(vminq_f32(v86, *(a2 + 90)), *(a2 + 85));
    v88 = vorrq_s8(vandq_s8(*(a2 + 19), v87), v85);
    v89 = vandq_s8(v85, vcgtq_f32(v88, *(a2 + 23)));
    v90 = vsubq_f32(vsubq_f32(v88, v85), vmulq_f32(vmulq_f32(*(a2 + 24), v89), v88));
    v91 = vmaxq_f32(vmulq_f32(*(a2 + 86), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v87, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v87))), *(a2 + 22)), v89), vmulq_f32(v90, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v90, *(a2 + 28))), vmulq_f32(vmulq_f32(v90, v90), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v90))))))), *(a2 + 29));
    v92 = vcvtq_f32_s32(vcvtq_s32_f32(v91));
    v93 = vsubq_f32(v92, vandq_s8(v85, vcgtq_f32(v92, v91)));
    v94 = vsubq_f32(v91, v93);
    *(v6 + v79) = vbslq_s8(*(a2 + 15), v80, vmulq_f32(vbslq_s8(v84, v81, v85), vbslq_s8(vcgtq_f32(v83, vsubq_f32(v86, *(a2 + 89))), vmulq_f32(v86, *(a2 + 88)), vmulq_f32(*(a2 + 87), vmulq_f32(vaddq_f32(v85, vmulq_f32(v94, vaddq_f32(*(a2 + 32), vmulq_f32(v94, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v94)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v93)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec709_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = vcgtq_f32(v19, v17);
      v21 = *(a2 + 83);
      v22 = *(a2 + 5);
      v23 = vcgtq_f32(v19, v18);
      v24 = vbslq_s8(v23, v21, v22);
      v25 = vmulq_f32(v17, vbslq_s8(v20, v21, v22));
      v26 = vmulq_f32(v18, v24);
      v27 = *(a2 + 90);
      v28 = vminq_f32(v26, v27);
      v29 = *(a2 + 85);
      v30 = vaddq_f32(vminq_f32(v25, v27), v29);
      v31 = *(a2 + 86);
      v32 = vaddq_f32(v28, v29);
      v33 = vcgtq_f32(vandq_s8(v22, vceqq_f32(v31, v19)), v19);
      v34 = vbslq_s8(v33, v22, v30);
      v35 = vbslq_s8(v33, v22, v32);
      v36 = *(a2 + 19);
      v37 = *(a2 + 20);
      v38 = vorrq_s8(vandq_s8(v36, v34), v22);
      v39 = vorrq_s8(vandq_s8(v36, v35), v22);
      v40 = *(a2 + 21);
      v41 = *(a2 + 22);
      v42 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v34)));
      v43 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v35, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v35)));
      v44 = *(a2 + 23);
      v45 = *(a2 + 24);
      v46 = vandq_s8(v22, vcgtq_f32(v38, v44));
      v47 = vandq_s8(v22, vcgtq_f32(v39, v44));
      v48 = vaddq_f32(vsubq_f32(v42, v41), v46);
      v49 = vmulq_f32(v45, v46);
      v50 = vmulq_f32(vmulq_f32(v45, v47), v39);
      v51 = vaddq_f32(vsubq_f32(v43, v41), v47);
      v52 = vsubq_f32(vsubq_f32(v38, v22), vmulq_f32(v49, v38));
      v53 = vsubq_f32(vsubq_f32(v39, v22), v50);
      v54 = vmulq_f32(v52, v52);
      v55 = vmulq_f32(v53, v53);
      v56 = *(a2 + 37);
      v57 = *(a2 + 38);
      v58 = *(a2 + 39);
      v59 = *(a2 + 40);
      v60 = vaddq_f32(v56, vmulq_f32(v57, v52));
      v61 = vaddq_f32(v58, vmulq_f32(v59, v52));
      v62 = vaddq_f32(v58, vmulq_f32(v59, v53));
      v63 = vaddq_f32(v56, vmulq_f32(v57, v53));
      v64 = *(a2 + 41);
      v65 = *(a2 + 42);
      v66 = vaddq_f32(vaddq_f32(v64, vmulq_f32(v65, v53)), vmulq_f32(v55, vaddq_f32(v63, vmulq_f32(v55, v62))));
      v67 = vmulq_f32(v52, vaddq_f32(vaddq_f32(v64, vmulq_f32(v65, v52)), vmulq_f32(v54, vaddq_f32(v60, vmulq_f32(v54, v61)))));
      v68 = *(a2 + 43);
      v69 = *(a2 + 44);
      v70 = vmulq_f32(v31, vaddq_f32(v48, vmulq_f32(v52, vaddq_f32(v68, v67))));
      v71 = vmulq_f32(v31, vaddq_f32(v51, vmulq_f32(v53, vaddq_f32(v68, vmulq_f32(v53, v66)))));
      v72 = *(a2 + 29);
      v73 = vmaxq_f32(v70, v72);
      v74 = vmaxq_f32(v71, v72);
      v75 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
      v76 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
      v77 = vsubq_f32(v75, vandq_s8(v22, vcgtq_f32(v75, v73)));
      v78 = vsubq_f32(v76, vandq_s8(v22, vcgtq_f32(v76, v74)));
      v79 = vsubq_f32(v73, v77);
      v80 = vsubq_f32(v74, v78);
      v81 = *(a2 + 45);
      v82 = *(a2 + 46);
      v83 = vaddq_f32(v69, vmulq_f32(v81, v79));
      v84 = vaddq_f32(v69, vmulq_f32(v81, v80));
      v85 = *(a2 + 47);
      v86 = *(a2 + 48);
      v87 = *(a2 + 33);
      v88 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v79, vaddq_f32(v86, vmulq_f32(v79, vaddq_f32(vaddq_f32(v82, vmulq_f32(v79, v85)), vmulq_f32(vmulq_f32(v79, v79), v83)))))), vshlq_n_s32(vaddq_s32(v87, vcvtq_s32_f32(v77)), 0x17uLL));
      v89 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v80, vaddq_f32(v86, vmulq_f32(v80, vaddq_f32(vaddq_f32(v82, vmulq_f32(v85, v80)), vmulq_f32(vmulq_f32(v80, v80), v84)))))), vshlq_n_s32(vaddq_s32(v87, vcvtq_s32_f32(v78)), 0x17uLL));
      v90 = *(a2 + 87);
      v91 = *(a2 + 88);
      v92 = *(a2 + 89);
      v93 = (v6 + v11);
      v93[-1] = vbslq_s8(v16, v13, vmulq_f32(vbslq_s8(v20, v15, v22), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v25, v92)), vmulq_f32(v25, v91), vmulq_f32(v90, v88))));
      *v93 = vbslq_s8(v16, v14, vmulq_f32(vbslq_s8(v23, v15, v22), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v26, v92)), vmulq_f32(v26, v91), vmulq_f32(v90, v89))));
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
    v96 = *(a2 + 82);
    v97 = vbslq_s8(*(a2 + 15), v95, vmaxq_f32(v95, v96));
    v98 = *(a2 + 75);
    v99 = vcgtq_f32(v98, v97);
    v100 = *(a2 + 5);
    v101 = vmulq_f32(v97, vbslq_s8(v99, *(a2 + 83), v100));
    v102 = *(a2 + 86);
    v103 = vbslq_s8(vcgtq_f32(vandq_s8(v100, vceqq_f32(v102, v98)), v98), v100, vaddq_f32(vminq_f32(v101, *(a2 + 90)), *(a2 + 85)));
    v104 = vorrq_s8(vandq_s8(*(a2 + 19), v103), v100);
    v105 = vandq_s8(v100, vcgtq_f32(v104, *(a2 + 23)));
    v106 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v103, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v103))), *(a2 + 22)), v105);
    v107 = vsubq_f32(vsubq_f32(v104, v100), vmulq_f32(vmulq_f32(*(a2 + 24), v105), v104));
    v108 = vmulq_f32(v107, v107);
    v109 = vmaxq_f32(vmulq_f32(v102, vaddq_f32(v106, vmulq_f32(v107, vaddq_f32(*(a2 + 43), vmulq_f32(v107, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v107)), vmulq_f32(v108, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v107)), vmulq_f32(v108, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v107))))))))))), *(a2 + 29));
    v110 = vcvtq_f32_s32(vcvtq_s32_f32(v109));
    v111 = vsubq_f32(v110, vandq_s8(v100, vcgtq_f32(v110, v109)));
    v112 = vsubq_f32(v109, v111);
    *(v6 + v94) = vbslq_s8(*(a2 + 15), v95, vmulq_f32(vbslq_s8(v99, v96, v100), vbslq_s8(vcgtq_f32(v98, vsubq_f32(v101, *(a2 + 89))), vmulq_f32(v101, *(a2 + 88)), vmulq_f32(*(a2 + 87), vmulq_f32(vaddq_f32(v100, vmulq_f32(v112, vaddq_f32(*(a2 + 48), vmulq_f32(v112, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v112)), vmulq_f32(vmulq_f32(v112, v112), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v112)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v111)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v35 = 0;
        v36 = 16 * v8;
        v37 = 16 * v7;
        v38 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v39 = 0;
          do
          {
            v40 = v5[v39 / 0x10];
            v41 = vminq_f32(vmaxq_f32(v40, *(a2 + 75)), *(a2 + 5));
            v6[v39 / 0x10] = vbslq_s8(*(a2 + 15), v40, vmulq_f32(v41, vminq_f32(vrsqrteq_f32(v41), *(a2 + 73))));
            v39 += 16;
          }

          while (v38 != v39);
          ++v35;
          v5 = (v5 + v36);
          v6 = (v6 + v37);
        }

        while (v35 != v3);
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
          v18 = v16;
          v19 = v15;
          v20 = v5[v17 - 2];
          v21 = v5[v17 - 1];
          v22 = v5[v17];
          v23 = v5[v17 + 1];
          v24 = *(a2 + 75);
          v25 = *(a2 + 5);
          v26 = vminq_f32(vmaxq_f32(v20, v24), v25);
          v27 = vminq_f32(vmaxq_f32(v21, v24), v25);
          v28 = vminq_f32(vmaxq_f32(v22, v24), v25);
          v29 = vminq_f32(vmaxq_f32(v23, v24), v25);
          v30 = *(a2 + 73);
          v31 = *(a2 + 15);
          v32 = &v6[v17];
          v32[-2] = vbslq_s8(v31, v20, vmulq_f32(v26, vminq_f32(vrsqrteq_f32(v26), v30)));
          v32[-1] = vbslq_s8(v31, v21, vmulq_f32(v27, vminq_f32(vrsqrteq_f32(v27), v30)));
          v14 += 4;
          *v32 = vbslq_s8(v31, v22, vmulq_f32(v28, vminq_f32(vrsqrteq_f32(v28), v30)));
          v32[1] = vbslq_s8(v31, v23, vmulq_f32(v29, vminq_f32(vrsqrteq_f32(v29), v30)));
          v17 += 4;
          v16 += 4;
          v15 = v19 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v33 = *v18++;
            v34 = vminq_f32(vmaxq_f32(v33, *(a2 + 75)), *(a2 + 5));
            *v19++ = vbslq_s8(*(a2 + 15), v33, vmulq_f32(v34, vminq_f32(vrsqrteq_f32(v34), *(a2 + 73))));
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

uint64_t Getrec601_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(v7 + v10 + 32);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vminq_f32(vmaxq_f32(v16, v15), v17);
      v22 = vmulq_f32(v18, vcvtq_f32_s32(v19));
      v23 = vmulq_f32(v18, vcvtq_f32_s32(v20));
      v24 = vmulq_f32(v18, vcvtq_f32_s32(v21));
      v25 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = *(a2 + 7);
      v29 = *(a2 + 8);
      v30 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v22, v25), v28));
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v23, v26), v28));
      v32 = vrsqrteq_f32(vaddq_f32(v28, vsubq_f32(v24, v27)));
      v33 = vaddq_f32(v29, v25);
      v34 = vaddq_f32(v29, v26);
      v35 = vaddq_f32(v29, v27);
      v36 = *(a2 + 9);
      v37 = *(a2 + 10);
      v38 = vsubq_f32(v33, vmulq_f32(v30, v36));
      v39 = *(a2 + 77);
      v40 = vmulq_f32(v39, v38);
      v41 = vmulq_f32(v39, vsubq_f32(v34, vmulq_f32(v31, v36)));
      v42 = vmulq_f32(v39, vsubq_f32(v35, vmulq_f32(v32, v36)));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vsubq_f32(v43, vandq_s8(v17, vcgtq_f32(v43, v40)));
      v47 = vsubq_f32(v44, vandq_s8(v17, vcgtq_f32(v44, v41)));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = *(a2 + 11);
      v50 = *(a2 + 12);
      v51 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v40, v46))), v50);
      v52 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v41, v47))), v50);
      v53 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v42, v48))), v50);
      v54 = vaddq_f32(vaddq_f32(v37, v48), vmulq_f32(v53, v53));
      v55 = vmaxq_f32(vaddq_f32(vaddq_f32(v37, v46), vmulq_f32(v51, v51)), v15);
      v56 = vmaxq_f32(vaddq_f32(vaddq_f32(v37, v47), vmulq_f32(v52, v52)), v15);
      v57 = *(a2 + 13);
      v58 = *(a2 + 14);
      v59 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v55, v57), v58));
      v60 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v56, v57), v58));
      v61 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v54, v15), v57), v58));
      v62 = *(a2 + 91);
      v63 = *(a2 + 92);
      v64 = vaddq_f32(v62, vmulq_f32(v63, v59));
      v65 = vaddq_f32(v62, vmulq_f32(v63, v60));
      v66 = vmulq_f32(v63, v61);
      v67 = *(a2 + 93);
      v68 = vmulq_f32(v19, v67);
      v69 = vaddq_f32(v62, v66);
      v70 = vmulq_f32(v20, v67);
      v71 = *(a2 + 94);
      v72 = vcgtq_f32(v15, vsubq_f32(v19, v71));
      v73 = vcgtq_f32(v15, vsubq_f32(v20, v71));
      v74 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v21, v71)), vmulq_f32(v21, v67), v69);
      v75 = *(a2 + 15);
      v76 = (v6 + v10);
      *v76 = vbslq_s8(v75, v13, vbslq_s8(v72, v68, v64));
      v76[1] = vbslq_s8(v75, v14, vbslq_s8(v73, v70, v65));
      v76[2] = vbslq_s8(v75, v16, v74);
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
      v77 = *(v7 + 16 * v11);
      v78 = *(a2 + 75);
      v79 = *(a2 + 5);
      v80 = vminq_f32(vmaxq_f32(v77, v78), v79);
      v81 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(v80));
      v82 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
      v83 = vmulq_f32(*(a2 + 77), vsubq_f32(vaddq_f32(*(a2 + 8), v82), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v81, v82))), *(a2 + 9))));
      v84 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
      v85 = vsubq_f32(v84, vandq_s8(v79, vcgtq_f32(v84, v83)));
      v86 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v83, v85))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v77, vbslq_s8(vcgtq_f32(v78, vsubq_f32(v80, *(a2 + 94))), vmulq_f32(v80, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v85), vmulq_f32(v86, v86)), v78), *(a2 + 13)), *(a2 + 14)))))));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = *(a2 + 77);
      v19 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v20 = vcgtq_f32(vandq_s8(v16, vceqq_f32(v18, v15)), v15);
      v21 = vbslq_s8(v20, v16, v17);
      v22 = vbslq_s8(v20, v16, v19);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vorrq_s8(vandq_s8(v23, v21), v16);
      v26 = vorrq_s8(vandq_s8(v23, v22), v16);
      v27 = *(a2 + 21);
      v28 = *(a2 + 22);
      v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v21)));
      v30 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v22)));
      v31 = *(a2 + 23);
      v32 = *(a2 + 24);
      v33 = vsubq_f32(v29, v28);
      v34 = vandq_s8(v16, vcgtq_f32(v25, v31));
      v35 = vandq_s8(v16, vcgtq_f32(v26, v31));
      v36 = vsubq_f32(v30, v28);
      v37 = vaddq_f32(v33, v34);
      v38 = vmulq_f32(vmulq_f32(v32, v34), v25);
      v39 = vmulq_f32(vmulq_f32(v32, v35), v26);
      v40 = vaddq_f32(v36, v35);
      v41 = vsubq_f32(vsubq_f32(v25, v16), v38);
      v42 = vsubq_f32(vsubq_f32(v26, v16), v39);
      v43 = vmulq_f32(v41, v41);
      v44 = vmulq_f32(v42, v42);
      v45 = *(a2 + 37);
      v46 = *(a2 + 38);
      v47 = *(a2 + 39);
      v48 = *(a2 + 40);
      v49 = vaddq_f32(v45, vmulq_f32(v46, v41));
      v50 = vaddq_f32(v47, vmulq_f32(v48, v41));
      v51 = vaddq_f32(v47, vmulq_f32(v48, v42));
      v52 = vaddq_f32(v45, vmulq_f32(v46, v42));
      v53 = *(a2 + 41);
      v54 = *(a2 + 42);
      v55 = vaddq_f32(vaddq_f32(v53, vmulq_f32(v54, v42)), vmulq_f32(v44, vaddq_f32(v52, vmulq_f32(v44, v51))));
      v56 = vmulq_f32(v41, vaddq_f32(vaddq_f32(v53, vmulq_f32(v54, v41)), vmulq_f32(v43, vaddq_f32(v49, vmulq_f32(v43, v50)))));
      v57 = *(a2 + 43);
      v58 = *(a2 + 44);
      v59 = vmulq_f32(v18, vaddq_f32(v37, vmulq_f32(v41, vaddq_f32(v57, v56))));
      v60 = vmulq_f32(v18, vaddq_f32(v40, vmulq_f32(v42, vaddq_f32(v57, vmulq_f32(v42, v55)))));
      v61 = *(a2 + 29);
      v62 = vmaxq_f32(v59, v61);
      v63 = vmaxq_f32(v60, v61);
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vsubq_f32(v64, vandq_s8(v16, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v65, vandq_s8(v16, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v62, v66);
      v69 = vsubq_f32(v63, v67);
      v70 = *(a2 + 45);
      v71 = *(a2 + 46);
      v72 = vaddq_f32(v58, vmulq_f32(v70, v68));
      v73 = vaddq_f32(v58, vmulq_f32(v70, v69));
      v74 = *(a2 + 47);
      v75 = *(a2 + 48);
      v76 = vaddq_f32(v16, vmulq_f32(v68, vaddq_f32(v75, vmulq_f32(v68, vaddq_f32(vaddq_f32(v71, vmulq_f32(v68, v74)), vmulq_f32(vmulq_f32(v68, v68), v72))))));
      v77 = *(a2 + 33);
      v78 = vaddq_f32(v16, vmulq_f32(v69, vaddq_f32(v75, vmulq_f32(v69, vaddq_f32(vaddq_f32(v71, vmulq_f32(v74, v69)), vmulq_f32(vmulq_f32(v69, v69), v73))))));
      v79 = vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v66)), 0x17uLL);
      v80 = vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v67)), 0x17uLL);
      v81 = vmulq_f32(v76, v79);
      v82 = *(a2 + 91);
      v83 = *(a2 + 92);
      v84 = vaddq_f32(v82, vmulq_f32(v83, v81));
      v85 = vmulq_f32(v83, vmulq_f32(v78, v80));
      v86 = *(a2 + 93);
      v87 = vmulq_f32(v17, v86);
      v88 = vaddq_f32(v82, v85);
      v89 = *(a2 + 94);
      v90 = vcgtq_f32(v15, vsubq_f32(v17, v89));
      v91 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v89)), vmulq_f32(v19, v86), v88);
      v92 = *(a2 + 15);
      v93 = (v6 + v11);
      v93[-1] = vbslq_s8(v92, v13, vbslq_s8(v90, v87, v84));
      *v93 = vbslq_s8(v92, v14, v91);
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
    v96 = *(a2 + 75);
    v97 = *(a2 + 5);
    v98 = vminq_f32(vmaxq_f32(v95, v96), v97);
    v99 = *(a2 + 77);
    v100 = vbslq_s8(vcgtq_f32(vandq_s8(v97, vceqq_f32(v99, v96)), v96), v97, v98);
    v101 = vorrq_s8(vandq_s8(*(a2 + 19), v100), v97);
    v102 = vandq_s8(v97, vcgtq_f32(v101, *(a2 + 23)));
    v103 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v100, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v100))), *(a2 + 22)), v102);
    v104 = vsubq_f32(vsubq_f32(v101, v97), vmulq_f32(vmulq_f32(*(a2 + 24), v102), v101));
    v105 = vmulq_f32(v104, v104);
    v106 = vmaxq_f32(vmulq_f32(v99, vaddq_f32(v103, vmulq_f32(v104, vaddq_f32(*(a2 + 43), vmulq_f32(v104, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v104)), vmulq_f32(v105, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v104)), vmulq_f32(v105, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v104))))))))))), *(a2 + 29));
    v107 = vcvtq_f32_s32(vcvtq_s32_f32(v106));
    v108 = vsubq_f32(v107, vandq_s8(v97, vcgtq_f32(v107, v106)));
    v109 = vsubq_f32(v106, v108);
    *(v6 + v94) = vbslq_s8(*(a2 + 15), v95, vbslq_s8(vcgtq_f32(v96, vsubq_f32(v98, *(a2 + 94))), vmulq_f32(v98, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vmulq_f32(vaddq_f32(v97, vmulq_f32(v109, vaddq_f32(*(a2 + 48), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v109)), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v109)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v108)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 19);
      v20 = *(a2 + 20);
      v21 = vorrq_s8(vandq_s8(v19, v17), v16);
      v22 = vorrq_s8(vandq_s8(v19, v18), v16);
      v23 = vcgtq_f32(v20, v17);
      v24 = *(a2 + 21);
      v25 = *(a2 + 22);
      v26 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v20, v18)));
      v27 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v24, v23)), v25);
      v28 = *(a2 + 23);
      v29 = *(a2 + 24);
      v30 = vsubq_f32(v26, v25);
      v31 = vandq_s8(v16, vcgtq_f32(v21, v28));
      v32 = vandq_s8(v16, vcgtq_f32(v22, v28));
      v33 = vsubq_f32(vsubq_f32(v21, v16), vmulq_f32(vmulq_f32(v29, v31), v21));
      v34 = vsubq_f32(vsubq_f32(v22, v16), vmulq_f32(vmulq_f32(v29, v32), v22));
      v35 = *(a2 + 25);
      v36 = *(a2 + 26);
      v37 = vaddq_f32(v35, vmulq_f32(v36, v33));
      v38 = vaddq_f32(v35, vmulq_f32(v36, v34));
      v39 = *(a2 + 27);
      v40 = *(a2 + 28);
      v41 = vaddq_f32(vaddq_f32(v30, v32), vmulq_f32(v34, vaddq_f32(vaddq_f32(v39, vmulq_f32(v34, v40)), vmulq_f32(vmulq_f32(v34, v34), v38))));
      v42 = *(a2 + 77);
      v43 = vmulq_f32(v42, vaddq_f32(vaddq_f32(v27, v31), vmulq_f32(v33, vaddq_f32(vaddq_f32(v39, vmulq_f32(v33, v40)), vmulq_f32(vmulq_f32(v33, v33), v37)))));
      v44 = vmulq_f32(v42, v41);
      v45 = *(a2 + 29);
      v46 = *(a2 + 30);
      v47 = vmaxq_f32(v43, v45);
      v48 = vmaxq_f32(v44, v45);
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vsubq_f32(v49, vandq_s8(v16, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v50, vandq_s8(v16, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v47, v51);
      v54 = *(a2 + 31);
      v55 = *(a2 + 32);
      v56 = vsubq_f32(v48, v52);
      v57 = vmulq_f32(v56, vaddq_f32(v55, vmulq_f32(v56, vaddq_f32(v46, vmulq_f32(v54, v56)))));
      v58 = vaddq_f32(v16, vmulq_f32(v53, vaddq_f32(v55, vmulq_f32(v53, vaddq_f32(v46, vmulq_f32(v54, v53))))));
      v59 = vcvtq_s32_f32(v52);
      v60 = *(a2 + 33);
      v61 = vaddq_f32(v16, v57);
      v62 = vshlq_n_s32(vaddq_s32(v60, vcvtq_s32_f32(v51)), 0x17uLL);
      v63 = vshlq_n_s32(vaddq_s32(v60, v59), 0x17uLL);
      v64 = vmulq_f32(v58, v62);
      v65 = *(a2 + 91);
      v66 = *(a2 + 92);
      v67 = vaddq_f32(v65, vmulq_f32(v66, v64));
      v68 = vmulq_f32(v66, vmulq_f32(v61, v63));
      v69 = *(a2 + 93);
      v70 = vmulq_f32(v17, v69);
      v71 = vaddq_f32(v65, v68);
      v72 = *(a2 + 94);
      v73 = vcgtq_f32(v15, vsubq_f32(v17, v72));
      v74 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v72)), vmulq_f32(v18, v69), v71);
      v75 = *(a2 + 15);
      v76 = (v6 + v11);
      v76[-1] = vbslq_s8(v75, v13, vbslq_s8(v73, v70, v67));
      *v76 = vbslq_s8(v75, v14, v74);
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
    v79 = *(a2 + 75);
    v80 = *(a2 + 5);
    v81 = vminq_f32(vmaxq_f32(v78, v79), v80);
    v82 = vorrq_s8(vandq_s8(*(a2 + 19), v81), v80);
    v83 = vandq_s8(v80, vcgtq_f32(v82, *(a2 + 23)));
    v84 = vsubq_f32(vsubq_f32(v82, v80), vmulq_f32(vmulq_f32(*(a2 + 24), v83), v82));
    v85 = vmaxq_f32(vmulq_f32(*(a2 + 77), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v81, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v81))), *(a2 + 22)), v83), vmulq_f32(v84, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v84, *(a2 + 28))), vmulq_f32(vmulq_f32(v84, v84), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v84))))))), *(a2 + 29));
    v86 = vcvtq_f32_s32(vcvtq_s32_f32(v85));
    v87 = vsubq_f32(v86, vandq_s8(v80, vcgtq_f32(v86, v85)));
    v88 = vsubq_f32(v85, v87);
    *(v6 + v77) = vbslq_s8(*(a2 + 15), v78, vbslq_s8(vcgtq_f32(v79, vsubq_f32(v81, *(a2 + 94))), vmulq_f32(v81, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vmulq_f32(vaddq_f32(v80, vmulq_f32(v88, vaddq_f32(*(a2 + 32), vmulq_f32(v88, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v88)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v87)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = vcgtq_f32(v19, v17);
      v21 = vcgtq_f32(v19, v18);
      v22 = *(a2 + 83);
      v23 = *(a2 + 5);
      v24 = vbslq_s8(v21, v22, v23);
      v25 = vmulq_f32(v17, vbslq_s8(v20, v22, v23));
      v26 = vmulq_f32(v18, v24);
      v27 = *(a2 + 84);
      v28 = vminq_f32(v25, v27);
      v29 = vminq_f32(v26, v27);
      v30 = *(a2 + 19);
      v31 = *(a2 + 20);
      v32 = vorrq_s8(vandq_s8(v30, v28), v23);
      v33 = *(a2 + 21);
      v34 = *(a2 + 22);
      v35 = vorrq_s8(vandq_s8(v30, v29), v23);
      v36 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v31, v29)));
      v37 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v31, v28))), v34);
      v38 = *(a2 + 23);
      v39 = *(a2 + 24);
      v40 = vandq_s8(v23, vcgtq_f32(v32, v38));
      v41 = vandq_s8(v23, vcgtq_f32(v35, v38));
      v42 = vaddq_f32(v37, v40);
      v43 = vmulq_f32(v39, v40);
      v44 = vmulq_f32(vmulq_f32(v39, v41), v35);
      v45 = vaddq_f32(vsubq_f32(v36, v34), v41);
      v46 = vsubq_f32(vsubq_f32(v32, v23), vmulq_f32(v43, v32));
      v47 = vsubq_f32(vsubq_f32(v35, v23), v44);
      v48 = *(a2 + 25);
      v49 = *(a2 + 26);
      v50 = vaddq_f32(v48, vmulq_f32(v49, v46));
      v51 = vaddq_f32(v48, vmulq_f32(v49, v47));
      v53 = *(a2 + 27);
      v52 = *(a2 + 28);
      v54 = vaddq_f32(v45, vmulq_f32(v47, vaddq_f32(vaddq_f32(v53, vmulq_f32(v47, v52)), vmulq_f32(vmulq_f32(v47, v47), v51))));
      v55 = *(a2 + 77);
      v56 = vmulq_f32(v55, vaddq_f32(v42, vmulq_f32(v46, vaddq_f32(vaddq_f32(v53, vmulq_f32(v46, v52)), vmulq_f32(vmulq_f32(v46, v46), v50)))));
      v57 = vmulq_f32(v55, v54);
      v58 = *(a2 + 29);
      v59 = *(a2 + 30);
      v60 = vmaxq_f32(v56, v58);
      v61 = vmaxq_f32(v57, v58);
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vsubq_f32(v62, vandq_s8(v23, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v63, vandq_s8(v23, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v60, v64);
      v67 = vsubq_f32(v61, v65);
      v68 = *(a2 + 31);
      v69 = *(a2 + 32);
      v70 = vmulq_f32(v67, vaddq_f32(v69, vmulq_f32(v67, vaddq_f32(v59, vmulq_f32(v68, v67)))));
      v71 = vaddq_f32(v23, vmulq_f32(v66, vaddq_f32(v69, vmulq_f32(v66, vaddq_f32(v59, vmulq_f32(v68, v66))))));
      v72 = vcvtq_s32_f32(v65);
      v73 = *(a2 + 33);
      v74 = vmulq_f32(v71, vshlq_n_s32(vaddq_s32(v73, vcvtq_s32_f32(v64)), 0x17uLL));
      v75 = vmulq_f32(vaddq_f32(v23, v70), vshlq_n_s32(vaddq_s32(v73, v72), 0x17uLL));
      v76 = *(a2 + 91);
      v77 = *(a2 + 92);
      v78 = vmulq_f32(v77, v75);
      v79 = vaddq_f32(v76, vmulq_f32(v77, v74));
      v80 = *(a2 + 93);
      v81 = *(a2 + 94);
      v82 = (v6 + v11);
      v82[-1] = vbslq_s8(v16, v13, vmulq_f32(vbslq_s8(v20, v15, v23), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v25, v81)), vmulq_f32(v25, v80), v79)));
      *v82 = vbslq_s8(v16, v14, vmulq_f32(vbslq_s8(v21, v15, v23), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v26, v81)), vmulq_f32(v26, v80), vaddq_f32(v76, v78))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v83 = 16 * v10;
    v84 = *(v7 + v83);
    v85 = *(a2 + 82);
    v86 = vbslq_s8(*(a2 + 15), v84, vmaxq_f32(v84, v85));
    v87 = *(a2 + 75);
    v88 = vcgtq_f32(v87, v86);
    v89 = *(a2 + 5);
    v90 = vmulq_f32(v86, vbslq_s8(v88, *(a2 + 83), v89));
    v91 = vminq_f32(v90, *(a2 + 84));
    v92 = vorrq_s8(vandq_s8(*(a2 + 19), v91), v89);
    v93 = vandq_s8(v89, vcgtq_f32(v92, *(a2 + 23)));
    v94 = vsubq_f32(vsubq_f32(v92, v89), vmulq_f32(vmulq_f32(*(a2 + 24), v93), v92));
    v95 = vmaxq_f32(vmulq_f32(*(a2 + 77), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v91, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v91))), *(a2 + 22)), v93), vmulq_f32(v94, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v94, *(a2 + 28))), vmulq_f32(vmulq_f32(v94, v94), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v94))))))), *(a2 + 29));
    v96 = vcvtq_f32_s32(vcvtq_s32_f32(v95));
    v97 = vsubq_f32(v96, vandq_s8(v89, vcgtq_f32(v96, v95)));
    v98 = vsubq_f32(v95, v97);
    *(v6 + v83) = vbslq_s8(*(a2 + 15), v84, vmulq_f32(vbslq_s8(v88, v85, v89), vbslq_s8(vcgtq_f32(v87, vsubq_f32(v90, *(a2 + 94))), vmulq_f32(v90, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vmulq_f32(vaddq_f32(v89, vmulq_f32(v98, vaddq_f32(*(a2 + 32), vmulq_f32(v98, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v98)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v97)), 0x17uLL)))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getrec601_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = vcgtq_f32(v19, v17);
      v21 = *(a2 + 83);
      v22 = *(a2 + 5);
      v23 = vcgtq_f32(v19, v18);
      v24 = vbslq_s8(v23, v21, v22);
      v25 = vmulq_f32(v17, vbslq_s8(v20, v21, v22));
      v26 = vmulq_f32(v18, v24);
      v27 = *(a2 + 84);
      v28 = vminq_f32(v25, v27);
      v29 = vminq_f32(v26, v27);
      v30 = *(a2 + 77);
      v31 = vcgtq_f32(vandq_s8(v22, vceqq_f32(v30, v19)), v19);
      v32 = vbslq_s8(v31, v22, v28);
      v33 = vbslq_s8(v31, v22, v29);
      v34 = *(a2 + 19);
      v35 = *(a2 + 20);
      v36 = vorrq_s8(vandq_s8(v34, v32), v22);
      v37 = vorrq_s8(vandq_s8(v34, v33), v22);
      v38 = *(a2 + 21);
      v39 = *(a2 + 22);
      v40 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v33)));
      v41 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v35, v32))), v39);
      v42 = *(a2 + 23);
      v43 = *(a2 + 24);
      v44 = vandq_s8(v22, vcgtq_f32(v36, v42));
      v45 = vandq_s8(v22, vcgtq_f32(v37, v42));
      v46 = vaddq_f32(v41, v44);
      v47 = vaddq_f32(vsubq_f32(v40, v39), v45);
      v48 = vmulq_f32(v43, v45);
      v49 = vmulq_f32(vmulq_f32(v43, v44), v36);
      v50 = vmulq_f32(v48, v37);
      v51 = vsubq_f32(vsubq_f32(v36, v22), v49);
      v52 = vsubq_f32(vsubq_f32(v37, v22), v50);
      v53 = vmulq_f32(v51, v51);
      v54 = vmulq_f32(v52, v52);
      v55 = *(a2 + 37);
      v56 = *(a2 + 38);
      v57 = vaddq_f32(v55, vmulq_f32(v56, v51));
      v58 = *(a2 + 39);
      v59 = *(a2 + 40);
      v60 = vaddq_f32(v55, vmulq_f32(v56, v52));
      v61 = vaddq_f32(v58, vmulq_f32(v59, v51));
      v62 = vaddq_f32(v58, vmulq_f32(v59, v52));
      v63 = *(a2 + 41);
      v64 = *(a2 + 42);
      v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v64, v52)), vmulq_f32(v54, vaddq_f32(v60, vmulq_f32(v54, v62))));
      v66 = vmulq_f32(v51, vaddq_f32(vaddq_f32(v63, vmulq_f32(v64, v51)), vmulq_f32(v53, vaddq_f32(v57, vmulq_f32(v53, v61)))));
      v67 = *(a2 + 43);
      v68 = *(a2 + 44);
      v69 = vaddq_f32(v47, vmulq_f32(v52, vaddq_f32(v67, vmulq_f32(v52, v65))));
      v70 = *(a2 + 29);
      v71 = vmaxq_f32(vmulq_f32(v30, vaddq_f32(v46, vmulq_f32(v51, vaddq_f32(v67, v66)))), v70);
      v72 = vmaxq_f32(vmulq_f32(v30, v69), v70);
      v73 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
      v74 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
      v75 = vsubq_f32(v73, vandq_s8(v22, vcgtq_f32(v73, v71)));
      v76 = vsubq_f32(v74, vandq_s8(v22, vcgtq_f32(v74, v72)));
      v77 = vsubq_f32(v71, v75);
      v78 = vsubq_f32(v72, v76);
      v79 = *(a2 + 45);
      v80 = *(a2 + 46);
      v81 = *(a2 + 47);
      v82 = *(a2 + 48);
      v83 = *(a2 + 33);
      v84 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v77, vaddq_f32(v82, vmulq_f32(v77, vaddq_f32(vaddq_f32(v80, vmulq_f32(v77, v81)), vmulq_f32(vmulq_f32(v77, v77), vaddq_f32(v68, vmulq_f32(v79, v77)))))))), vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v75)), 0x17uLL));
      v85 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v78, vaddq_f32(v82, vmulq_f32(v78, vaddq_f32(vaddq_f32(v80, vmulq_f32(v81, v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(v68, vmulq_f32(v79, v78)))))))), vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v76)), 0x17uLL));
      v86 = *(a2 + 91);
      v87 = *(a2 + 92);
      v88 = vmulq_f32(v87, v85);
      v89 = vaddq_f32(v86, vmulq_f32(v87, v84));
      v90 = *(a2 + 93);
      v91 = *(a2 + 94);
      v92 = (v6 + v11);
      v92[-1] = vbslq_s8(v16, v13, vmulq_f32(vbslq_s8(v20, v15, v22), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v25, v91)), vmulq_f32(v25, v90), v89)));
      *v92 = vbslq_s8(v16, v14, vmulq_f32(vbslq_s8(v23, v15, v22), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v26, v91)), vmulq_f32(v26, v90), vaddq_f32(v86, v88))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v93 = 16 * v10;
    v94 = *(v7 + v93);
    v95 = *(a2 + 82);
    v96 = vbslq_s8(*(a2 + 15), v94, vmaxq_f32(v94, v95));
    v97 = *(a2 + 75);
    v98 = vcgtq_f32(v97, v96);
    v99 = *(a2 + 5);
    v100 = vmulq_f32(v96, vbslq_s8(v98, *(a2 + 83), v99));
    v101 = *(a2 + 77);
    v102 = vbslq_s8(vcgtq_f32(vandq_s8(v99, vceqq_f32(v101, v97)), v97), v99, vminq_f32(v100, *(a2 + 84)));
    v103 = vorrq_s8(vandq_s8(*(a2 + 19), v102), v99);
    v104 = vandq_s8(v99, vcgtq_f32(v103, *(a2 + 23)));
    v105 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v102, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v102))), *(a2 + 22)), v104);
    v106 = vsubq_f32(vsubq_f32(v103, v99), vmulq_f32(vmulq_f32(*(a2 + 24), v104), v103));
    v107 = vmulq_f32(v106, v106);
    v108 = vmaxq_f32(vmulq_f32(v101, vaddq_f32(v105, vmulq_f32(v106, vaddq_f32(*(a2 + 43), vmulq_f32(v106, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v106)), vmulq_f32(v107, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v106)), vmulq_f32(v107, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v106))))))))))), *(a2 + 29));
    v109 = vcvtq_f32_s32(vcvtq_s32_f32(v108));
    v110 = vsubq_f32(v109, vandq_s8(v99, vcgtq_f32(v109, v108)));
    v111 = vsubq_f32(v108, v110);
    *(v6 + v93) = vbslq_s8(*(a2 + 15), v94, vmulq_f32(vbslq_s8(v98, v95, v99), vbslq_s8(vcgtq_f32(v97, vsubq_f32(v100, *(a2 + 94))), vmulq_f32(v100, *(a2 + 93)), vaddq_f32(*(a2 + 91), vmulq_f32(*(a2 + 92), vmulq_f32(vaddq_f32(v99, vmulq_f32(v111, vaddq_f32(*(a2 + 48), vmulq_f32(v111, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v111)), vmulq_f32(vmulq_f32(v111, v111), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v111)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v110)), 0x17uLL)))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v34 = 0;
        v35 = 16 * v8;
        v36 = 16 * v7;
        v37 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v38 = 0;
          do
          {
            v39 = v5[v38 / 0x10];
            v40 = vminq_f32(vmaxq_f32(v39, *(a2 + 75)), *(a2 + 5));
            v6[v38 / 0x10] = vbslq_s8(*(a2 + 15), v39, vmulq_f32(v40, v40));
            v38 += 16;
          }

          while (v37 != v38);
          ++v34;
          v5 = (v5 + v35);
          v6 = (v6 + v36);
        }

        while (v34 != v3);
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
          v18 = v16;
          v19 = v15;
          v20 = v5[v17 - 2];
          v21 = v5[v17 - 1];
          v22 = v5[v17];
          v23 = v5[v17 + 1];
          v24 = *(a2 + 75);
          v25 = *(a2 + 5);
          v26 = vminq_f32(vmaxq_f32(v20, v24), v25);
          v27 = vminq_f32(vmaxq_f32(v21, v24), v25);
          v28 = vminq_f32(vmaxq_f32(v22, v24), v25);
          v29 = vminq_f32(vmaxq_f32(v23, v24), v25);
          v30 = *(a2 + 15);
          v31 = &v6[v17];
          v31[-2] = vbslq_s8(v30, v20, vmulq_f32(v26, v26));
          v31[-1] = vbslq_s8(v30, v21, vmulq_f32(v27, v27));
          v14 += 4;
          *v31 = vbslq_s8(v30, v22, vmulq_f32(v28, v28));
          v31[1] = vbslq_s8(v30, v23, vmulq_f32(v29, v29));
          v17 += 4;
          v16 += 4;
          v15 = v19 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v32 = *v18++;
            v33 = vminq_f32(vmaxq_f32(v32, *(a2 + 75)), *(a2 + 5));
            *v19++ = vbslq_s8(*(a2 + 15), v32, vmulq_f32(v33, v33));
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

uint64_t Getinv_rec601_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(v7 + v10 + 32);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vminq_f32(vmaxq_f32(v16, v15), v17);
      v22 = *(a2 + 95);
      v23 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v22)));
      v24 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v22)));
      v25 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v21, v22)));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
      v29 = *(a2 + 7);
      v30 = *(a2 + 8);
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v23, v26), v29));
      v32 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v24, v27), v29));
      v33 = vaddq_f32(v30, v26);
      v34 = vrsqrteq_f32(vaddq_f32(v29, vsubq_f32(v25, v28)));
      v35 = vaddq_f32(v30, v27);
      v36 = vaddq_f32(v30, v28);
      v37 = *(a2 + 9);
      v38 = *(a2 + 10);
      v39 = vsubq_f32(v33, vmulq_f32(v31, v37));
      v40 = vsubq_f32(v35, vmulq_f32(v32, v37));
      v41 = *(a2 + 86);
      v42 = vmulq_f32(v41, v39);
      v43 = vmulq_f32(v41, v40);
      v44 = vmulq_f32(v41, vsubq_f32(v36, vmulq_f32(v34, v37)));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = vsubq_f32(v46, vandq_s8(v17, vcgtq_f32(v46, v43)));
      v50 = vsubq_f32(v47, vandq_s8(v17, vcgtq_f32(v47, v44)));
      v51 = *(a2 + 11);
      v52 = *(a2 + 12);
      v53 = vmulq_f32(vrecpeq_f32(vsubq_f32(v51, vsubq_f32(v42, v48))), v52);
      v54 = vmulq_f32(vrecpeq_f32(vsubq_f32(v51, vsubq_f32(v43, v49))), v52);
      v55 = vmulq_f32(vrecpeq_f32(vsubq_f32(v51, vsubq_f32(v44, v50))), v52);
      v56 = vaddq_f32(vaddq_f32(v38, v50), vmulq_f32(v55, v55));
      v57 = vmaxq_f32(vaddq_f32(vaddq_f32(v38, v48), vmulq_f32(v53, v53)), v15);
      v58 = vmaxq_f32(vaddq_f32(vaddq_f32(v38, v49), vmulq_f32(v54, v54)), v15);
      v59 = *(a2 + 13);
      v60 = *(a2 + 14);
      v61 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v57, v59), v60));
      v62 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v58, v59), v60));
      v63 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v56, v15), v59), v60));
      v64 = *(a2 + 96);
      v65 = *(a2 + 97);
      v66 = vmulq_f32(v19, v65);
      v67 = vmulq_f32(v20, v65);
      v68 = *(a2 + 98);
      v69 = vcgtq_f32(v15, vsubq_f32(v19, v68));
      v70 = vcgtq_f32(v15, vsubq_f32(v20, v68));
      v71 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v21, v68)), vmulq_f32(v21, v65), vmulq_f32(v64, v63));
      v72 = *(a2 + 15);
      v73 = (v6 + v10);
      *v73 = vbslq_s8(v72, v13, vbslq_s8(v69, v66, vmulq_f32(v64, v61)));
      v73[1] = vbslq_s8(v72, v14, vbslq_s8(v70, v67, vmulq_f32(v64, v62)));
      v73[2] = vbslq_s8(v72, v16, v71);
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
      v74 = *(v7 + 16 * v11);
      v75 = *(a2 + 75);
      v76 = *(a2 + 5);
      v77 = vminq_f32(vmaxq_f32(v74, v75), v76);
      v78 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v77, *(a2 + 95))));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v78));
      v80 = vmulq_f32(*(a2 + 86), vsubq_f32(vaddq_f32(*(a2 + 8), v79), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v78, v79))), *(a2 + 9))));
      v81 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
      v82 = vsubq_f32(v81, vandq_s8(v76, vcgtq_f32(v81, v80)));
      v83 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v80, v82))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v74, vbslq_s8(vcgtq_f32(v75, vsubq_f32(v77, *(a2 + 98))), vmulq_f32(v77, *(a2 + 97)), vmulq_f32(*(a2 + 96), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v82), vmulq_f32(v83, v83)), v75), *(a2 + 13)), *(a2 + 14))))));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 95);
      v20 = vaddq_f32(v17, v19);
      v21 = vaddq_f32(v18, v19);
      v22 = *(a2 + 86);
      v23 = vcgtq_f32(vandq_s8(v16, vceqq_f32(v22, v15)), v15);
      v24 = vbslq_s8(v23, v16, v20);
      v25 = vbslq_s8(v23, v16, v21);
      v26 = *(a2 + 19);
      v27 = *(a2 + 20);
      v28 = vorrq_s8(vandq_s8(v26, v24), v16);
      v29 = vorrq_s8(vandq_s8(v26, v25), v16);
      v30 = *(a2 + 21);
      v31 = *(a2 + 22);
      v32 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v25, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v27, v25)));
      v33 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v27, v24))), v31);
      v34 = *(a2 + 23);
      v35 = *(a2 + 24);
      v36 = vandq_s8(v16, vcgtq_f32(v28, v34));
      v37 = vandq_s8(v16, vcgtq_f32(v29, v34));
      v38 = vaddq_f32(v33, v36);
      v39 = vaddq_f32(vsubq_f32(v32, v31), v37);
      v40 = vmulq_f32(v35, v37);
      v41 = vmulq_f32(vmulq_f32(v35, v36), v28);
      v42 = vmulq_f32(v40, v29);
      v43 = vsubq_f32(vsubq_f32(v28, v16), v41);
      v44 = vsubq_f32(vsubq_f32(v29, v16), v42);
      v45 = vmulq_f32(v43, v43);
      v46 = vmulq_f32(v44, v44);
      v47 = *(a2 + 37);
      v48 = *(a2 + 38);
      v49 = vaddq_f32(v47, vmulq_f32(v48, v43));
      v50 = *(a2 + 39);
      v51 = *(a2 + 40);
      v52 = vaddq_f32(v47, vmulq_f32(v48, v44));
      v53 = vaddq_f32(v50, vmulq_f32(v51, v43));
      v54 = vaddq_f32(v50, vmulq_f32(v51, v44));
      v55 = *(a2 + 41);
      v56 = *(a2 + 42);
      v57 = vaddq_f32(vaddq_f32(v55, vmulq_f32(v56, v44)), vmulq_f32(v46, vaddq_f32(v52, vmulq_f32(v46, v54))));
      v58 = vmulq_f32(v43, vaddq_f32(vaddq_f32(v55, vmulq_f32(v56, v43)), vmulq_f32(v45, vaddq_f32(v49, vmulq_f32(v45, v53)))));
      v59 = *(a2 + 43);
      v60 = *(a2 + 44);
      v61 = vaddq_f32(v39, vmulq_f32(v44, vaddq_f32(v59, vmulq_f32(v44, v57))));
      v62 = *(a2 + 29);
      v63 = vmaxq_f32(vmulq_f32(v22, vaddq_f32(v38, vmulq_f32(v43, vaddq_f32(v59, v58)))), v62);
      v64 = vmaxq_f32(vmulq_f32(v22, v61), v62);
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
      v67 = vsubq_f32(v65, vandq_s8(v16, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v66, vandq_s8(v16, vcgtq_f32(v66, v64)));
      v69 = vsubq_f32(v63, v67);
      v70 = vsubq_f32(v64, v68);
      v71 = *(a2 + 45);
      v72 = *(a2 + 46);
      v73 = *(a2 + 47);
      v74 = *(a2 + 48);
      v75 = vaddq_f32(v16, vmulq_f32(v69, vaddq_f32(v74, vmulq_f32(v69, vaddq_f32(vaddq_f32(v72, vmulq_f32(v69, v73)), vmulq_f32(vmulq_f32(v69, v69), vaddq_f32(v60, vmulq_f32(v71, v69))))))));
      v76 = vaddq_f32(v16, vmulq_f32(v70, vaddq_f32(v74, vmulq_f32(v70, vaddq_f32(vaddq_f32(v72, vmulq_f32(v73, v70)), vmulq_f32(vmulq_f32(v70, v70), vaddq_f32(v60, vmulq_f32(v71, v70))))))));
      v77 = *(a2 + 33);
      v78 = vmulq_f32(v75, vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v67)), 0x17uLL));
      v79 = vmulq_f32(v76, vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v68)), 0x17uLL));
      v80 = *(a2 + 96);
      v81 = *(a2 + 97);
      v82 = vmulq_f32(v17, v81);
      v83 = *(a2 + 98);
      v84 = vcgtq_f32(v15, vsubq_f32(v17, v83));
      v85 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v83)), vmulq_f32(v18, v81), vmulq_f32(v80, v79));
      v86 = *(a2 + 15);
      v87 = (v6 + v11);
      v87[-1] = vbslq_s8(v86, v13, vbslq_s8(v84, v82, vmulq_f32(v80, v78)));
      *v87 = vbslq_s8(v86, v14, v85);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v88 = 16 * v10;
    v89 = *(v7 + v88);
    v90 = *(a2 + 75);
    v91 = *(a2 + 5);
    v92 = vminq_f32(vmaxq_f32(v89, v90), v91);
    v93 = *(a2 + 86);
    v94 = vbslq_s8(vcgtq_f32(vandq_s8(v91, vceqq_f32(v93, v90)), v90), v91, vaddq_f32(v92, *(a2 + 95)));
    v95 = vorrq_s8(vandq_s8(*(a2 + 19), v94), v91);
    v96 = vandq_s8(v91, vcgtq_f32(v95, *(a2 + 23)));
    v97 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v94))), *(a2 + 22)), v96);
    v98 = vsubq_f32(vsubq_f32(v95, v91), vmulq_f32(vmulq_f32(*(a2 + 24), v96), v95));
    v99 = vmulq_f32(v98, v98);
    v100 = vmaxq_f32(vmulq_f32(v93, vaddq_f32(v97, vmulq_f32(v98, vaddq_f32(*(a2 + 43), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v98)), vmulq_f32(v99, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v98)), vmulq_f32(v99, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v98))))))))))), *(a2 + 29));
    v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
    v102 = vsubq_f32(v101, vandq_s8(v91, vcgtq_f32(v101, v100)));
    v103 = vsubq_f32(v100, v102);
    *(v6 + v88) = vbslq_s8(*(a2 + 15), v89, vbslq_s8(vcgtq_f32(v90, vsubq_f32(v92, *(a2 + 98))), vmulq_f32(v92, *(a2 + 97)), vmulq_f32(*(a2 + 96), vmulq_f32(vaddq_f32(v91, vmulq_f32(v103, vaddq_f32(*(a2 + 48), vmulq_f32(v103, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v103)), vmulq_f32(vmulq_f32(v103, v103), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v103)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v102)), 0x17uLL)))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 95);
      v20 = vaddq_f32(v17, v19);
      v21 = vaddq_f32(v18, v19);
      v22 = *(a2 + 19);
      v23 = *(a2 + 20);
      v24 = vorrq_s8(vandq_s8(v22, v20), v16);
      v25 = *(a2 + 21);
      v26 = *(a2 + 22);
      v27 = vorrq_s8(vandq_s8(v22, v21), v16);
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v21)));
      v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v20))), v26);
      v30 = *(a2 + 23);
      v31 = *(a2 + 24);
      v32 = vandq_s8(v16, vcgtq_f32(v24, v30));
      v33 = vandq_s8(v16, vcgtq_f32(v27, v30));
      v34 = vaddq_f32(v29, v32);
      v35 = vmulq_f32(v31, v32);
      v36 = vmulq_f32(vmulq_f32(v31, v33), v27);
      v37 = vaddq_f32(vsubq_f32(v28, v26), v33);
      v38 = vsubq_f32(vsubq_f32(v24, v16), vmulq_f32(v35, v24));
      v39 = vsubq_f32(vsubq_f32(v27, v16), v36);
      v40 = *(a2 + 25);
      v41 = *(a2 + 26);
      v42 = vaddq_f32(v40, vmulq_f32(v41, v38));
      v43 = vaddq_f32(v40, vmulq_f32(v41, v39));
      v45 = *(a2 + 27);
      v44 = *(a2 + 28);
      v46 = vaddq_f32(v37, vmulq_f32(v39, vaddq_f32(vaddq_f32(v45, vmulq_f32(v39, v44)), vmulq_f32(vmulq_f32(v39, v39), v43))));
      v47 = *(a2 + 86);
      v48 = vmulq_f32(v47, vaddq_f32(v34, vmulq_f32(v38, vaddq_f32(vaddq_f32(v45, vmulq_f32(v38, v44)), vmulq_f32(vmulq_f32(v38, v38), v42)))));
      v49 = vmulq_f32(v47, v46);
      v50 = *(a2 + 29);
      v51 = *(a2 + 30);
      v52 = vmaxq_f32(v48, v50);
      v53 = vmaxq_f32(v49, v50);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v56 = vsubq_f32(v54, vandq_s8(v16, vcgtq_f32(v54, v52)));
      v57 = vsubq_f32(v55, vandq_s8(v16, vcgtq_f32(v55, v53)));
      v58 = vsubq_f32(v52, v56);
      v59 = vsubq_f32(v53, v57);
      v60 = *(a2 + 31);
      v61 = *(a2 + 32);
      v62 = vaddq_f32(v16, vmulq_f32(v58, vaddq_f32(v61, vmulq_f32(v58, vaddq_f32(v51, vmulq_f32(v60, v58))))));
      v63 = vaddq_f32(v16, vmulq_f32(v59, vaddq_f32(v61, vmulq_f32(v59, vaddq_f32(v51, vmulq_f32(v60, v59))))));
      v64 = *(a2 + 33);
      v65 = vmulq_f32(v62, vshlq_n_s32(vaddq_s32(v64, vcvtq_s32_f32(v56)), 0x17uLL));
      v66 = vmulq_f32(v63, vshlq_n_s32(vaddq_s32(v64, vcvtq_s32_f32(v57)), 0x17uLL));
      v67 = *(a2 + 96);
      v68 = *(a2 + 97);
      v69 = vmulq_f32(v17, v68);
      v70 = *(a2 + 98);
      v71 = vcgtq_f32(v15, vsubq_f32(v17, v70));
      v72 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v70)), vmulq_f32(v18, v68), vmulq_f32(v67, v66));
      v73 = *(a2 + 15);
      v74 = (v6 + v11);
      v74[-1] = vbslq_s8(v73, v13, vbslq_s8(v71, v69, vmulq_f32(v67, v65)));
      *v74 = vbslq_s8(v73, v14, v72);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v75 = 16 * v10;
    v76 = *(v7 + v75);
    v77 = *(a2 + 75);
    v78 = *(a2 + 5);
    v79 = vminq_f32(vmaxq_f32(v76, v77), v78);
    v80 = vaddq_f32(v79, *(a2 + 95));
    v81 = vorrq_s8(vandq_s8(*(a2 + 19), v80), v78);
    v82 = vandq_s8(v78, vcgtq_f32(v81, *(a2 + 23)));
    v83 = vsubq_f32(vsubq_f32(v81, v78), vmulq_f32(vmulq_f32(*(a2 + 24), v82), v81));
    v84 = vmaxq_f32(vmulq_f32(*(a2 + 86), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v80, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v80))), *(a2 + 22)), v82), vmulq_f32(v83, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v83, *(a2 + 28))), vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v83))))))), *(a2 + 29));
    v85 = vcvtq_f32_s32(vcvtq_s32_f32(v84));
    v86 = vsubq_f32(v85, vandq_s8(v78, vcgtq_f32(v85, v84)));
    v87 = vsubq_f32(v84, v86);
    *(v6 + v75) = vbslq_s8(*(a2 + 15), v76, vbslq_s8(vcgtq_f32(v77, vsubq_f32(v79, *(a2 + 98))), vmulq_f32(v79, *(a2 + 97)), vmulq_f32(*(a2 + 96), vmulq_f32(vaddq_f32(v78, vmulq_f32(v87, vaddq_f32(*(a2 + 32), vmulq_f32(v87, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v87)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v86)), 0x17uLL)))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = vcgtq_f32(v19, v17);
      v21 = vcgtq_f32(v19, v18);
      v22 = *(a2 + 83);
      v23 = *(a2 + 5);
      v24 = vbslq_s8(v21, v22, v23);
      v25 = vmulq_f32(v17, vbslq_s8(v20, v22, v23));
      v26 = vmulq_f32(v18, v24);
      v27 = *(a2 + 90);
      v28 = *(a2 + 95);
      v29 = vaddq_f32(vminq_f32(v25, v27), v28);
      v30 = vaddq_f32(vminq_f32(v26, v27), v28);
      v31 = *(a2 + 19);
      v32 = *(a2 + 20);
      v33 = vorrq_s8(vandq_s8(v31, v29), v23);
      v34 = vorrq_s8(vandq_s8(v31, v30), v23);
      v35 = *(a2 + 21);
      v36 = *(a2 + 22);
      v37 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v35, vcgtq_f32(v32, v30)));
      v38 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v35, vcgtq_f32(v32, v29))), v36);
      v39 = *(a2 + 23);
      v40 = *(a2 + 24);
      v41 = vsubq_f32(v37, v36);
      v42 = vandq_s8(v23, vcgtq_f32(v33, v39));
      v43 = vandq_s8(v23, vcgtq_f32(v34, v39));
      v44 = vaddq_f32(v38, v42);
      v45 = vsubq_f32(vsubq_f32(v33, v23), vmulq_f32(vmulq_f32(v40, v42), v33));
      v46 = vsubq_f32(vsubq_f32(v34, v23), vmulq_f32(vmulq_f32(v40, v43), v34));
      v47 = *(a2 + 25);
      v48 = *(a2 + 26);
      v49 = vaddq_f32(v47, vmulq_f32(v48, v45));
      v50 = vaddq_f32(v47, vmulq_f32(v48, v46));
      v51 = *(a2 + 27);
      v52 = *(a2 + 28);
      v53 = vaddq_f32(vaddq_f32(v41, v43), vmulq_f32(v46, vaddq_f32(vaddq_f32(v51, vmulq_f32(v46, v52)), vmulq_f32(vmulq_f32(v46, v46), v50))));
      v54 = *(a2 + 86);
      v55 = vmulq_f32(v54, vaddq_f32(v44, vmulq_f32(v45, vaddq_f32(vaddq_f32(v51, vmulq_f32(v45, v52)), vmulq_f32(vmulq_f32(v45, v45), v49)))));
      v56 = vmulq_f32(v54, v53);
      v57 = *(a2 + 29);
      v58 = *(a2 + 30);
      v59 = vmaxq_f32(v55, v57);
      v60 = vmaxq_f32(v56, v57);
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v59));
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vsubq_f32(v61, vandq_s8(v23, vcgtq_f32(v61, v59)));
      v64 = vsubq_f32(v62, vandq_s8(v23, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v59, v63);
      v66 = *(a2 + 31);
      v67 = *(a2 + 32);
      v68 = vsubq_f32(v60, v64);
      v69 = vmulq_f32(v68, vaddq_f32(v67, vmulq_f32(v68, vaddq_f32(v58, vmulq_f32(v66, v68)))));
      v70 = vaddq_f32(v23, vmulq_f32(v65, vaddq_f32(v67, vmulq_f32(v65, vaddq_f32(v58, vmulq_f32(v66, v65))))));
      v71 = vcvtq_s32_f32(v64);
      v72 = *(a2 + 33);
      v73 = vmulq_f32(v70, vshlq_n_s32(vaddq_s32(v72, vcvtq_s32_f32(v63)), 0x17uLL));
      v74 = vmulq_f32(vaddq_f32(v23, v69), vshlq_n_s32(vaddq_s32(v72, v71), 0x17uLL));
      v75 = *(a2 + 96);
      v76 = *(a2 + 97);
      v77 = *(a2 + 98);
      v78 = (v6 + v11);
      v78[-1] = vbslq_s8(v16, v13, vmulq_f32(vbslq_s8(v20, v15, v23), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v25, v77)), vmulq_f32(v25, v76), vmulq_f32(v75, v73))));
      *v78 = vbslq_s8(v16, v14, vmulq_f32(vbslq_s8(v21, v15, v23), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v26, v77)), vmulq_f32(v26, v76), vmulq_f32(v75, v74))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v79 = 16 * v10;
    v80 = *(v7 + v79);
    v81 = *(a2 + 82);
    v82 = vbslq_s8(*(a2 + 15), v80, vmaxq_f32(v80, v81));
    v83 = *(a2 + 75);
    v84 = vcgtq_f32(v83, v82);
    v85 = *(a2 + 5);
    v86 = vmulq_f32(v82, vbslq_s8(v84, *(a2 + 83), v85));
    v87 = vaddq_f32(vminq_f32(v86, *(a2 + 90)), *(a2 + 95));
    v88 = vorrq_s8(vandq_s8(*(a2 + 19), v87), v85);
    v89 = vandq_s8(v85, vcgtq_f32(v88, *(a2 + 23)));
    v90 = vsubq_f32(vsubq_f32(v88, v85), vmulq_f32(vmulq_f32(*(a2 + 24), v89), v88));
    v91 = vmaxq_f32(vmulq_f32(*(a2 + 86), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v87, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v87))), *(a2 + 22)), v89), vmulq_f32(v90, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v90, *(a2 + 28))), vmulq_f32(vmulq_f32(v90, v90), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v90))))))), *(a2 + 29));
    v92 = vcvtq_f32_s32(vcvtq_s32_f32(v91));
    v93 = vsubq_f32(v92, vandq_s8(v85, vcgtq_f32(v92, v91)));
    v94 = vsubq_f32(v91, v93);
    *(v6 + v79) = vbslq_s8(*(a2 + 15), v80, vmulq_f32(vbslq_s8(v84, v81, v85), vbslq_s8(vcgtq_f32(v83, vsubq_f32(v86, *(a2 + 98))), vmulq_f32(v86, *(a2 + 97)), vmulq_f32(*(a2 + 96), vmulq_f32(vaddq_f32(v85, vmulq_f32(v94, vaddq_f32(*(a2 + 32), vmulq_f32(v94, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v94)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v93)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_rec601_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = vcgtq_f32(v19, v17);
      v21 = *(a2 + 83);
      v22 = *(a2 + 5);
      v23 = vcgtq_f32(v19, v18);
      v24 = vbslq_s8(v23, v21, v22);
      v25 = vmulq_f32(v17, vbslq_s8(v20, v21, v22));
      v26 = vmulq_f32(v18, v24);
      v27 = *(a2 + 90);
      v28 = vminq_f32(v26, v27);
      v29 = *(a2 + 95);
      v30 = vaddq_f32(vminq_f32(v25, v27), v29);
      v31 = *(a2 + 86);
      v32 = vaddq_f32(v28, v29);
      v33 = vcgtq_f32(vandq_s8(v22, vceqq_f32(v31, v19)), v19);
      v34 = vbslq_s8(v33, v22, v30);
      v35 = vbslq_s8(v33, v22, v32);
      v36 = *(a2 + 19);
      v37 = *(a2 + 20);
      v38 = vorrq_s8(vandq_s8(v36, v34), v22);
      v39 = vorrq_s8(vandq_s8(v36, v35), v22);
      v40 = *(a2 + 21);
      v41 = *(a2 + 22);
      v42 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v34)));
      v43 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v35, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v35)));
      v44 = *(a2 + 23);
      v45 = *(a2 + 24);
      v46 = vandq_s8(v22, vcgtq_f32(v38, v44));
      v47 = vandq_s8(v22, vcgtq_f32(v39, v44));
      v48 = vaddq_f32(vsubq_f32(v42, v41), v46);
      v49 = vmulq_f32(v45, v46);
      v50 = vmulq_f32(vmulq_f32(v45, v47), v39);
      v51 = vaddq_f32(vsubq_f32(v43, v41), v47);
      v52 = vsubq_f32(vsubq_f32(v38, v22), vmulq_f32(v49, v38));
      v53 = vsubq_f32(vsubq_f32(v39, v22), v50);
      v54 = vmulq_f32(v52, v52);
      v55 = vmulq_f32(v53, v53);
      v56 = *(a2 + 37);
      v57 = *(a2 + 38);
      v58 = *(a2 + 39);
      v59 = *(a2 + 40);
      v60 = vaddq_f32(v56, vmulq_f32(v57, v52));
      v61 = vaddq_f32(v58, vmulq_f32(v59, v52));
      v62 = vaddq_f32(v58, vmulq_f32(v59, v53));
      v63 = vaddq_f32(v56, vmulq_f32(v57, v53));
      v64 = *(a2 + 41);
      v65 = *(a2 + 42);
      v66 = vaddq_f32(vaddq_f32(v64, vmulq_f32(v65, v53)), vmulq_f32(v55, vaddq_f32(v63, vmulq_f32(v55, v62))));
      v67 = vmulq_f32(v52, vaddq_f32(vaddq_f32(v64, vmulq_f32(v65, v52)), vmulq_f32(v54, vaddq_f32(v60, vmulq_f32(v54, v61)))));
      v68 = *(a2 + 43);
      v69 = *(a2 + 44);
      v70 = vmulq_f32(v31, vaddq_f32(v48, vmulq_f32(v52, vaddq_f32(v68, v67))));
      v71 = vmulq_f32(v31, vaddq_f32(v51, vmulq_f32(v53, vaddq_f32(v68, vmulq_f32(v53, v66)))));
      v72 = *(a2 + 29);
      v73 = vmaxq_f32(v70, v72);
      v74 = vmaxq_f32(v71, v72);
      v75 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
      v76 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
      v77 = vsubq_f32(v75, vandq_s8(v22, vcgtq_f32(v75, v73)));
      v78 = vsubq_f32(v76, vandq_s8(v22, vcgtq_f32(v76, v74)));
      v79 = vsubq_f32(v73, v77);
      v80 = vsubq_f32(v74, v78);
      v81 = *(a2 + 45);
      v82 = *(a2 + 46);
      v83 = vaddq_f32(v69, vmulq_f32(v81, v79));
      v84 = vaddq_f32(v69, vmulq_f32(v81, v80));
      v85 = *(a2 + 47);
      v86 = *(a2 + 48);
      v87 = *(a2 + 33);
      v88 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v79, vaddq_f32(v86, vmulq_f32(v79, vaddq_f32(vaddq_f32(v82, vmulq_f32(v79, v85)), vmulq_f32(vmulq_f32(v79, v79), v83)))))), vshlq_n_s32(vaddq_s32(v87, vcvtq_s32_f32(v77)), 0x17uLL));
      v89 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v80, vaddq_f32(v86, vmulq_f32(v80, vaddq_f32(vaddq_f32(v82, vmulq_f32(v85, v80)), vmulq_f32(vmulq_f32(v80, v80), v84)))))), vshlq_n_s32(vaddq_s32(v87, vcvtq_s32_f32(v78)), 0x17uLL));
      v90 = *(a2 + 96);
      v91 = *(a2 + 97);
      v92 = *(a2 + 98);
      v93 = (v6 + v11);
      v93[-1] = vbslq_s8(v16, v13, vmulq_f32(vbslq_s8(v20, v15, v22), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v25, v92)), vmulq_f32(v25, v91), vmulq_f32(v90, v88))));
      *v93 = vbslq_s8(v16, v14, vmulq_f32(vbslq_s8(v23, v15, v22), vbslq_s8(vcgtq_f32(v19, vsubq_f32(v26, v92)), vmulq_f32(v26, v91), vmulq_f32(v90, v89))));
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
    v96 = *(a2 + 82);
    v97 = vbslq_s8(*(a2 + 15), v95, vmaxq_f32(v95, v96));
    v98 = *(a2 + 75);
    v99 = vcgtq_f32(v98, v97);
    v100 = *(a2 + 5);
    v101 = vmulq_f32(v97, vbslq_s8(v99, *(a2 + 83), v100));
    v102 = *(a2 + 86);
    v103 = vbslq_s8(vcgtq_f32(vandq_s8(v100, vceqq_f32(v102, v98)), v98), v100, vaddq_f32(vminq_f32(v101, *(a2 + 90)), *(a2 + 95)));
    v104 = vorrq_s8(vandq_s8(*(a2 + 19), v103), v100);
    v105 = vandq_s8(v100, vcgtq_f32(v104, *(a2 + 23)));
    v106 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v103, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v103))), *(a2 + 22)), v105);
    v107 = vsubq_f32(vsubq_f32(v104, v100), vmulq_f32(vmulq_f32(*(a2 + 24), v105), v104));
    v108 = vmulq_f32(v107, v107);
    v109 = vmaxq_f32(vmulq_f32(v102, vaddq_f32(v106, vmulq_f32(v107, vaddq_f32(*(a2 + 43), vmulq_f32(v107, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v107)), vmulq_f32(v108, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v107)), vmulq_f32(v108, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v107))))))))))), *(a2 + 29));
    v110 = vcvtq_f32_s32(vcvtq_s32_f32(v109));
    v111 = vsubq_f32(v110, vandq_s8(v100, vcgtq_f32(v110, v109)));
    v112 = vsubq_f32(v109, v111);
    *(v6 + v94) = vbslq_s8(*(a2 + 15), v95, vmulq_f32(vbslq_s8(v99, v96, v100), vbslq_s8(vcgtq_f32(v98, vsubq_f32(v101, *(a2 + 98))), vmulq_f32(v101, *(a2 + 97)), vmulq_f32(*(a2 + 96), vmulq_f32(vaddq_f32(v100, vmulq_f32(v112, vaddq_f32(*(a2 + 48), vmulq_f32(v112, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v112)), vmulq_f32(vmulq_f32(v112, v112), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v112)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v111)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v46 = 0;
        v47 = 16 * v8;
        v48 = 16 * v7;
        v49 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v50 = 0;
          do
          {
            v51 = v5[v50 / 0x10];
            v52 = vminq_f32(vmaxq_f32(v51, *(a2 + 75)), *(a2 + 5));
            v53 = vmulq_f32(v52, *(a2 + 99));
            v54 = vaddq_f32(v53, vmulq_f32(v52, vsubq_f32(v52, v53)));
            v6[v50 / 0x10] = vbslq_s8(*(a2 + 15), v51, vmulq_f32(vminq_f32(vrsqrteq_f32(v54), *(a2 + 73)), v54));
            v50 += 16;
          }

          while (v49 != v50);
          ++v46;
          v5 = (v5 + v47);
          v6 = (v6 + v48);
        }

        while (v46 != v3);
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
          v18 = v16;
          v19 = v5[v17 - 2];
          v20 = v5[v17 - 1];
          v21 = v5[v17];
          v22 = v5[v17 + 1];
          v23 = *(a2 + 75);
          v24 = *(a2 + 5);
          v25 = vminq_f32(vmaxq_f32(v19, v23), v24);
          v26 = vminq_f32(vmaxq_f32(v20, v23), v24);
          v27 = vminq_f32(vmaxq_f32(v21, v23), v24);
          v28 = vminq_f32(vmaxq_f32(v22, v23), v24);
          v29 = *(a2 + 99);
          v30 = vmulq_f32(v25, v29);
          v31 = vmulq_f32(v26, v29);
          v32 = vmulq_f32(v27, v29);
          v33 = vmulq_f32(v28, v29);
          v34 = v15;
          v35 = vaddq_f32(v30, vmulq_f32(v25, vsubq_f32(v25, v30)));
          v36 = vaddq_f32(v31, vmulq_f32(v26, vsubq_f32(v26, v31)));
          v37 = vaddq_f32(v32, vmulq_f32(v27, vsubq_f32(v27, v32)));
          v38 = vaddq_f32(v33, vmulq_f32(v28, vsubq_f32(v28, v33)));
          v39 = *(a2 + 73);
          v40 = *(a2 + 15);
          v41 = &v6[v17];
          v14 += 4;
          v41[-2] = vbslq_s8(v40, v19, vmulq_f32(v35, vminq_f32(vrsqrteq_f32(v35), v39)));
          v41[-1] = vbslq_s8(v40, v20, vmulq_f32(v36, vminq_f32(vrsqrteq_f32(v36), v39)));
          *v41 = vbslq_s8(v40, v21, vmulq_f32(v37, vminq_f32(vrsqrteq_f32(v37), v39)));
          v41[1] = vbslq_s8(v40, v22, vmulq_f32(v38, vminq_f32(vrsqrteq_f32(v38), v39)));
          v17 += 4;
          v16 += 4;
          v15 = v34 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v42 = *v18++;
            v43 = vminq_f32(vmaxq_f32(v42, *(a2 + 75)), *(a2 + 5));
            v44 = vmulq_f32(v43, *(a2 + 99));
            v45 = vaddq_f32(v44, vmulq_f32(v43, vsubq_f32(v43, v44)));
            *v34++ = vbslq_s8(*(a2 + 15), v42, vmulq_f32(vminq_f32(vrsqrteq_f32(v45), *(a2 + 73)), v45));
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

uint64_t Getsrgb_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(v7 + v10 + 32);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vminq_f32(vmaxq_f32(v16, v15), v17);
      v22 = vmulq_f32(v18, vcvtq_f32_s32(v19));
      v23 = vmulq_f32(v18, vcvtq_f32_s32(v20));
      v24 = vmulq_f32(v18, vcvtq_f32_s32(v21));
      v25 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = *(a2 + 7);
      v29 = *(a2 + 8);
      v30 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v22, v25), v28));
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v23, v26), v28));
      v32 = vrsqrteq_f32(vaddq_f32(v28, vsubq_f32(v24, v27)));
      v33 = vaddq_f32(v29, v25);
      v34 = vaddq_f32(v29, v26);
      v35 = vaddq_f32(v29, v27);
      v36 = *(a2 + 9);
      v37 = *(a2 + 10);
      v38 = vsubq_f32(v33, vmulq_f32(v30, v36));
      v39 = *(a2 + 100);
      v40 = vmulq_f32(v39, v38);
      v41 = vmulq_f32(v39, vsubq_f32(v34, vmulq_f32(v31, v36)));
      v42 = vmulq_f32(v39, vsubq_f32(v35, vmulq_f32(v32, v36)));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vsubq_f32(v43, vandq_s8(v17, vcgtq_f32(v43, v40)));
      v47 = vsubq_f32(v44, vandq_s8(v17, vcgtq_f32(v44, v41)));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = *(a2 + 11);
      v50 = *(a2 + 12);
      v51 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v40, v46))), v50);
      v52 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v41, v47))), v50);
      v53 = vmulq_f32(vrecpeq_f32(vsubq_f32(v49, vsubq_f32(v42, v48))), v50);
      v54 = vaddq_f32(vaddq_f32(v37, v48), vmulq_f32(v53, v53));
      v55 = vmaxq_f32(vaddq_f32(vaddq_f32(v37, v46), vmulq_f32(v51, v51)), v15);
      v56 = vmaxq_f32(vaddq_f32(vaddq_f32(v37, v47), vmulq_f32(v52, v52)), v15);
      v57 = *(a2 + 13);
      v58 = *(a2 + 14);
      v59 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v55, v57), v58));
      v60 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v56, v57), v58));
      v61 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v54, v15), v57), v58));
      v62 = *(a2 + 101);
      v63 = *(a2 + 102);
      v64 = vaddq_f32(v62, vmulq_f32(v63, v59));
      v65 = vaddq_f32(v62, vmulq_f32(v63, v60));
      v66 = vmulq_f32(v63, v61);
      v67 = *(a2 + 103);
      v68 = vmulq_f32(v19, v67);
      v69 = vaddq_f32(v62, v66);
      v70 = vmulq_f32(v20, v67);
      v71 = *(a2 + 104);
      v72 = vcgtq_f32(v15, vsubq_f32(v19, v71));
      v73 = vcgtq_f32(v15, vsubq_f32(v20, v71));
      v74 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v21, v71)), vmulq_f32(v21, v67), v69);
      v75 = *(a2 + 15);
      v76 = (v6 + v10);
      *v76 = vbslq_s8(v75, v13, vbslq_s8(v72, v68, v64));
      v76[1] = vbslq_s8(v75, v14, vbslq_s8(v73, v70, v65));
      v76[2] = vbslq_s8(v75, v16, v74);
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
      v77 = *(v7 + 16 * v11);
      v78 = *(a2 + 75);
      v79 = *(a2 + 5);
      v80 = vminq_f32(vmaxq_f32(v77, v78), v79);
      v81 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(v80));
      v82 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
      v83 = vmulq_f32(*(a2 + 100), vsubq_f32(vaddq_f32(*(a2 + 8), v82), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v81, v82))), *(a2 + 9))));
      v84 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
      v85 = vsubq_f32(v84, vandq_s8(v79, vcgtq_f32(v84, v83)));
      v86 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v83, v85))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v77, vbslq_s8(vcgtq_f32(v78, vsubq_f32(v80, *(a2 + 104))), vmulq_f32(v80, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v85), vmulq_f32(v86, v86)), v78), *(a2 + 13)), *(a2 + 14)))))));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = *(a2 + 100);
      v19 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v20 = vcgtq_f32(vandq_s8(v16, vceqq_f32(v18, v15)), v15);
      v21 = vbslq_s8(v20, v16, v17);
      v22 = vbslq_s8(v20, v16, v19);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vorrq_s8(vandq_s8(v23, v21), v16);
      v26 = vorrq_s8(vandq_s8(v23, v22), v16);
      v27 = *(a2 + 21);
      v28 = *(a2 + 22);
      v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v21)));
      v30 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v24, v22)));
      v31 = *(a2 + 23);
      v32 = *(a2 + 24);
      v33 = vsubq_f32(v29, v28);
      v34 = vandq_s8(v16, vcgtq_f32(v25, v31));
      v35 = vandq_s8(v16, vcgtq_f32(v26, v31));
      v36 = vsubq_f32(v30, v28);
      v37 = vaddq_f32(v33, v34);
      v38 = vmulq_f32(vmulq_f32(v32, v34), v25);
      v39 = vmulq_f32(vmulq_f32(v32, v35), v26);
      v40 = vaddq_f32(v36, v35);
      v41 = vsubq_f32(vsubq_f32(v25, v16), v38);
      v42 = vsubq_f32(vsubq_f32(v26, v16), v39);
      v43 = vmulq_f32(v41, v41);
      v44 = vmulq_f32(v42, v42);
      v45 = *(a2 + 37);
      v46 = *(a2 + 38);
      v47 = *(a2 + 39);
      v48 = *(a2 + 40);
      v49 = vaddq_f32(v45, vmulq_f32(v46, v41));
      v50 = vaddq_f32(v47, vmulq_f32(v48, v41));
      v51 = vaddq_f32(v47, vmulq_f32(v48, v42));
      v52 = vaddq_f32(v45, vmulq_f32(v46, v42));
      v53 = *(a2 + 41);
      v54 = *(a2 + 42);
      v55 = vaddq_f32(vaddq_f32(v53, vmulq_f32(v54, v42)), vmulq_f32(v44, vaddq_f32(v52, vmulq_f32(v44, v51))));
      v56 = vmulq_f32(v41, vaddq_f32(vaddq_f32(v53, vmulq_f32(v54, v41)), vmulq_f32(v43, vaddq_f32(v49, vmulq_f32(v43, v50)))));
      v57 = *(a2 + 43);
      v58 = *(a2 + 44);
      v59 = vmulq_f32(v18, vaddq_f32(v37, vmulq_f32(v41, vaddq_f32(v57, v56))));
      v60 = vmulq_f32(v18, vaddq_f32(v40, vmulq_f32(v42, vaddq_f32(v57, vmulq_f32(v42, v55)))));
      v61 = *(a2 + 29);
      v62 = vmaxq_f32(v59, v61);
      v63 = vmaxq_f32(v60, v61);
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vsubq_f32(v64, vandq_s8(v16, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v65, vandq_s8(v16, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v62, v66);
      v69 = vsubq_f32(v63, v67);
      v70 = *(a2 + 45);
      v71 = *(a2 + 46);
      v72 = vaddq_f32(v58, vmulq_f32(v70, v68));
      v73 = vaddq_f32(v58, vmulq_f32(v70, v69));
      v74 = *(a2 + 47);
      v75 = *(a2 + 48);
      v76 = vaddq_f32(v16, vmulq_f32(v68, vaddq_f32(v75, vmulq_f32(v68, vaddq_f32(vaddq_f32(v71, vmulq_f32(v68, v74)), vmulq_f32(vmulq_f32(v68, v68), v72))))));
      v77 = *(a2 + 33);
      v78 = vaddq_f32(v16, vmulq_f32(v69, vaddq_f32(v75, vmulq_f32(v69, vaddq_f32(vaddq_f32(v71, vmulq_f32(v74, v69)), vmulq_f32(vmulq_f32(v69, v69), v73))))));
      v79 = vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v66)), 0x17uLL);
      v80 = vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v67)), 0x17uLL);
      v81 = vmulq_f32(v76, v79);
      v82 = *(a2 + 101);
      v83 = *(a2 + 102);
      v84 = vaddq_f32(v82, vmulq_f32(v83, v81));
      v85 = vmulq_f32(v83, vmulq_f32(v78, v80));
      v86 = *(a2 + 103);
      v87 = vmulq_f32(v17, v86);
      v88 = vaddq_f32(v82, v85);
      v89 = *(a2 + 104);
      v90 = vcgtq_f32(v15, vsubq_f32(v17, v89));
      v91 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v19, v89)), vmulq_f32(v19, v86), v88);
      v92 = *(a2 + 15);
      v93 = (v6 + v11);
      v93[-1] = vbslq_s8(v92, v13, vbslq_s8(v90, v87, v84));
      *v93 = vbslq_s8(v92, v14, v91);
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
    v96 = *(a2 + 75);
    v97 = *(a2 + 5);
    v98 = vminq_f32(vmaxq_f32(v95, v96), v97);
    v99 = *(a2 + 100);
    v100 = vbslq_s8(vcgtq_f32(vandq_s8(v97, vceqq_f32(v99, v96)), v96), v97, v98);
    v101 = vorrq_s8(vandq_s8(*(a2 + 19), v100), v97);
    v102 = vandq_s8(v97, vcgtq_f32(v101, *(a2 + 23)));
    v103 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v100, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v100))), *(a2 + 22)), v102);
    v104 = vsubq_f32(vsubq_f32(v101, v97), vmulq_f32(vmulq_f32(*(a2 + 24), v102), v101));
    v105 = vmulq_f32(v104, v104);
    v106 = vmaxq_f32(vmulq_f32(v99, vaddq_f32(v103, vmulq_f32(v104, vaddq_f32(*(a2 + 43), vmulq_f32(v104, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v104)), vmulq_f32(v105, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v104)), vmulq_f32(v105, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v104))))))))))), *(a2 + 29));
    v107 = vcvtq_f32_s32(vcvtq_s32_f32(v106));
    v108 = vsubq_f32(v107, vandq_s8(v97, vcgtq_f32(v107, v106)));
    v109 = vsubq_f32(v106, v108);
    *(v6 + v94) = vbslq_s8(*(a2 + 15), v95, vbslq_s8(vcgtq_f32(v96, vsubq_f32(v98, *(a2 + 104))), vmulq_f32(v98, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vmulq_f32(vaddq_f32(v97, vmulq_f32(v109, vaddq_f32(*(a2 + 48), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v109)), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v109)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v108)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 19);
      v20 = *(a2 + 20);
      v21 = vorrq_s8(vandq_s8(v19, v17), v16);
      v22 = vorrq_s8(vandq_s8(v19, v18), v16);
      v23 = vcgtq_f32(v20, v17);
      v24 = *(a2 + 21);
      v25 = *(a2 + 22);
      v26 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v20, v18)));
      v27 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v24, v23)), v25);
      v28 = *(a2 + 23);
      v29 = *(a2 + 24);
      v30 = vsubq_f32(v26, v25);
      v31 = vandq_s8(v16, vcgtq_f32(v21, v28));
      v32 = vandq_s8(v16, vcgtq_f32(v22, v28));
      v33 = vsubq_f32(vsubq_f32(v21, v16), vmulq_f32(vmulq_f32(v29, v31), v21));
      v34 = vsubq_f32(vsubq_f32(v22, v16), vmulq_f32(vmulq_f32(v29, v32), v22));
      v35 = *(a2 + 25);
      v36 = *(a2 + 26);
      v37 = vaddq_f32(v35, vmulq_f32(v36, v33));
      v38 = vaddq_f32(v35, vmulq_f32(v36, v34));
      v39 = *(a2 + 27);
      v40 = *(a2 + 28);
      v41 = vaddq_f32(vaddq_f32(v30, v32), vmulq_f32(v34, vaddq_f32(vaddq_f32(v39, vmulq_f32(v34, v40)), vmulq_f32(vmulq_f32(v34, v34), v38))));
      v42 = *(a2 + 100);
      v43 = vmulq_f32(v42, vaddq_f32(vaddq_f32(v27, v31), vmulq_f32(v33, vaddq_f32(vaddq_f32(v39, vmulq_f32(v33, v40)), vmulq_f32(vmulq_f32(v33, v33), v37)))));
      v44 = vmulq_f32(v42, v41);
      v45 = *(a2 + 29);
      v46 = *(a2 + 30);
      v47 = vmaxq_f32(v43, v45);
      v48 = vmaxq_f32(v44, v45);
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vsubq_f32(v49, vandq_s8(v16, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v50, vandq_s8(v16, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v47, v51);
      v54 = *(a2 + 31);
      v55 = *(a2 + 32);
      v56 = vsubq_f32(v48, v52);
      v57 = vmulq_f32(v56, vaddq_f32(v55, vmulq_f32(v56, vaddq_f32(v46, vmulq_f32(v54, v56)))));
      v58 = vaddq_f32(v16, vmulq_f32(v53, vaddq_f32(v55, vmulq_f32(v53, vaddq_f32(v46, vmulq_f32(v54, v53))))));
      v59 = vcvtq_s32_f32(v52);
      v60 = *(a2 + 33);
      v61 = vaddq_f32(v16, v57);
      v62 = vshlq_n_s32(vaddq_s32(v60, vcvtq_s32_f32(v51)), 0x17uLL);
      v63 = vshlq_n_s32(vaddq_s32(v60, v59), 0x17uLL);
      v64 = vmulq_f32(v58, v62);
      v65 = *(a2 + 101);
      v66 = *(a2 + 102);
      v67 = vaddq_f32(v65, vmulq_f32(v66, v64));
      v68 = vmulq_f32(v66, vmulq_f32(v61, v63));
      v69 = *(a2 + 103);
      v70 = vmulq_f32(v17, v69);
      v71 = vaddq_f32(v65, v68);
      v72 = *(a2 + 104);
      v73 = vcgtq_f32(v15, vsubq_f32(v17, v72));
      v74 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v72)), vmulq_f32(v18, v69), v71);
      v75 = *(a2 + 15);
      v76 = (v6 + v11);
      v76[-1] = vbslq_s8(v75, v13, vbslq_s8(v73, v70, v67));
      *v76 = vbslq_s8(v75, v14, v74);
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
    v79 = *(a2 + 75);
    v80 = *(a2 + 5);
    v81 = vminq_f32(vmaxq_f32(v78, v79), v80);
    v82 = vorrq_s8(vandq_s8(*(a2 + 19), v81), v80);
    v83 = vandq_s8(v80, vcgtq_f32(v82, *(a2 + 23)));
    v84 = vsubq_f32(vsubq_f32(v82, v80), vmulq_f32(vmulq_f32(*(a2 + 24), v83), v82));
    v85 = vmaxq_f32(vmulq_f32(*(a2 + 100), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v81, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v81))), *(a2 + 22)), v83), vmulq_f32(v84, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v84, *(a2 + 28))), vmulq_f32(vmulq_f32(v84, v84), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v84))))))), *(a2 + 29));
    v86 = vcvtq_f32_s32(vcvtq_s32_f32(v85));
    v87 = vsubq_f32(v86, vandq_s8(v80, vcgtq_f32(v86, v85)));
    v88 = vsubq_f32(v85, v87);
    *(v6 + v77) = vbslq_s8(*(a2 + 15), v78, vbslq_s8(vcgtq_f32(v79, vsubq_f32(v81, *(a2 + 104))), vmulq_f32(v81, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vmulq_f32(vaddq_f32(v80, vmulq_f32(v88, vaddq_f32(*(a2 + 32), vmulq_f32(v88, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v88)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v87)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 105);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = *(a2 + 5);
      v22 = *(a2 + 33);
      v21 = *(a2 + 34);
      v23 = vmulq_f32(v17, vbslq_s8(vcgtq_f32(v19, v17), v21, v20));
      v24 = vmulq_f32(v18, vbslq_s8(vcgtq_f32(v19, v18), v21, v20));
      v25 = *(a2 + 106);
      v26 = vminq_f32(v23, v25);
      v27 = vminq_f32(v24, v25);
      v28 = *(a2 + 19);
      v29 = *(a2 + 20);
      v30 = vorrq_s8(vandq_s8(v28, v26), v20);
      v31 = *(a2 + 21);
      v32 = *(a2 + 22);
      v33 = vorrq_s8(vandq_s8(v28, v27), v20);
      v34 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v29, v27)));
      v35 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v26, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v29, v26))), v32);
      v36 = *(a2 + 23);
      v37 = *(a2 + 24);
      v38 = vandq_s8(v20, vcgtq_f32(v30, v36));
      v39 = vandq_s8(v20, vcgtq_f32(v33, v36));
      v40 = vaddq_f32(v35, v38);
      v41 = vmulq_f32(v37, v38);
      v42 = vmulq_f32(vmulq_f32(v37, v39), v33);
      v43 = vaddq_f32(vsubq_f32(v34, v32), v39);
      v44 = vsubq_f32(vsubq_f32(v30, v20), vmulq_f32(v41, v30));
      v45 = vsubq_f32(vsubq_f32(v33, v20), v42);
      v46 = *(a2 + 25);
      v47 = *(a2 + 26);
      v48 = *(a2 + 27);
      v49 = *(a2 + 28);
      v50 = vaddq_f32(v43, vmulq_f32(v45, vaddq_f32(vaddq_f32(v48, vmulq_f32(v45, v49)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v46, vmulq_f32(v47, v45))))));
      v51 = *(a2 + 100);
      v52 = vmulq_f32(v51, vaddq_f32(v40, vmulq_f32(v44, vaddq_f32(vaddq_f32(v48, vmulq_f32(v44, v49)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v46, vmulq_f32(v47, v44)))))));
      v53 = vmulq_f32(v51, v50);
      v54 = *(a2 + 29);
      v55 = *(a2 + 30);
      v56 = vmaxq_f32(v52, v54);
      v57 = vmaxq_f32(v53, v54);
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v60 = vsubq_f32(v58, vandq_s8(v20, vcgtq_f32(v58, v56)));
      v61 = vsubq_f32(v59, vandq_s8(v20, vcgtq_f32(v59, v57)));
      v62 = vsubq_f32(v56, v60);
      v63 = vsubq_f32(v57, v61);
      v64 = *(a2 + 31);
      v65 = *(a2 + 32);
      v66 = vaddq_f32(v20, vmulq_f32(v62, vaddq_f32(v65, vmulq_f32(v62, vaddq_f32(v55, vmulq_f32(v64, v62))))));
      v67 = vaddq_f32(v20, vmulq_f32(v63, vaddq_f32(v65, vmulq_f32(v63, vaddq_f32(v55, vmulq_f32(v64, v63))))));
      v68 = vmulq_f32(v66, vshlq_n_s32(vaddq_s32(v22, vcvtq_s32_f32(v60)), 0x17uLL));
      v69 = vmulq_f32(v67, vshlq_n_s32(vaddq_s32(v22, vcvtq_s32_f32(v61)), 0x17uLL));
      v70 = *(a2 + 101);
      v71 = *(a2 + 102);
      v72 = vmulq_f32(v71, v68);
      v73 = vmulq_f32(v71, v69);
      v74 = *(a2 + 103);
      v75 = vmulq_f32(v23, v74);
      v76 = vmulq_f32(v24, v74);
      v77 = *(a2 + 104);
      v78 = vcgtq_f32(v19, vsubq_f32(v23, v77));
      v79 = vcgtq_f32(v19, vsubq_f32(v24, v77));
      v80 = *(a2 + 36);
      v81 = (v6 + v11);
      v81[-1] = vbslq_s8(v16, v13, veorq_s8(vandq_s8(v80, v17), vbslq_s8(v78, v75, vaddq_f32(v70, v72))));
      *v81 = vbslq_s8(v16, v14, veorq_s8(vandq_s8(v80, v18), vbslq_s8(v79, v76, vaddq_f32(v70, v73))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v82 = 16 * v10;
    v83 = *(v7 + v82);
    v84 = *(a2 + 15);
    v85 = vbslq_s8(v84, v83, vmaxq_f32(v83, *(a2 + 105)));
    v86 = *(a2 + 75);
    v87 = *(a2 + 5);
    v88 = vmulq_f32(v85, vbslq_s8(vcgtq_f32(v86, v85), *(a2 + 34), v87));
    v89 = vminq_f32(v88, *(a2 + 106));
    v90 = vorrq_s8(vandq_s8(*(a2 + 19), v89), v87);
    v91 = vandq_s8(v87, vcgtq_f32(v90, *(a2 + 23)));
    v92 = vsubq_f32(vsubq_f32(v90, v87), vmulq_f32(vmulq_f32(*(a2 + 24), v91), v90));
    v93 = vmaxq_f32(vmulq_f32(*(a2 + 100), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v89, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v89))), *(a2 + 22)), v91), vmulq_f32(v92, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v92, *(a2 + 28))), vmulq_f32(vmulq_f32(v92, v92), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v92))))))), *(a2 + 29));
    v94 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
    v95 = vsubq_f32(v94, vandq_s8(v87, vcgtq_f32(v94, v93)));
    v96 = vsubq_f32(v93, v95);
    *(v6 + v82) = vbslq_s8(v84, v83, veorq_s8(vandq_s8(*(a2 + 36), v85), vbslq_s8(vcgtq_f32(v86, vsubq_f32(v88, *(a2 + 104))), vmulq_f32(v88, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vmulq_f32(vaddq_f32(v87, vmulq_f32(v96, vaddq_f32(*(a2 + 32), vmulq_f32(v96, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v96)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v95)), 0x17uLL)))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getsrgb_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 105);
      v16 = vmaxq_f32(v13, v15);
      v17 = vmaxq_f32(v14, v15);
      v18 = *(a2 + 15);
      v19 = vbslq_s8(v18, v13, v16);
      v20 = vbslq_s8(v18, v14, v17);
      v21 = *(a2 + 75);
      v22 = *(a2 + 5);
      v24 = *(a2 + 33);
      v23 = *(a2 + 34);
      v25 = vbslq_s8(vcgtq_f32(v21, v20), v23, v22);
      v26 = vmulq_f32(v19, vbslq_s8(vcgtq_f32(v21, v19), v23, v22));
      v27 = vmulq_f32(v20, v25);
      v28 = *(a2 + 106);
      v29 = vminq_f32(v26, v28);
      v30 = vminq_f32(v27, v28);
      v31 = *(a2 + 100);
      v32 = vcgtq_f32(vandq_s8(v22, vceqq_f32(v31, v21)), v21);
      v33 = vbslq_s8(v32, v22, v29);
      v34 = vbslq_s8(v32, v22, v30);
      v35 = *(a2 + 19);
      v36 = *(a2 + 20);
      v37 = vorrq_s8(vandq_s8(v35, v33), v22);
      v38 = vorrq_s8(vandq_s8(v35, v34), v22);
      v39 = *(a2 + 21);
      v40 = *(a2 + 22);
      v41 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v36, v34)));
      v42 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v36, v33))), v40);
      v43 = *(a2 + 23);
      v44 = *(a2 + 24);
      v45 = vsubq_f32(v41, v40);
      v46 = vcgtq_f32(v38, v43);
      v47 = vandq_s8(v22, vcgtq_f32(v37, v43));
      v48 = vandq_s8(v22, v46);
      v49 = vaddq_f32(v42, v47);
      v50 = vmulq_f32(v44, v47);
      v51 = vaddq_f32(v45, v48);
      v52 = vsubq_f32(vsubq_f32(v37, v22), vmulq_f32(v50, v37));
      v53 = vsubq_f32(vsubq_f32(v38, v22), vmulq_f32(vmulq_f32(v44, v48), v38));
      v54 = *(a2 + 38);
      v55 = *(a2 + 39);
      v56 = *(a2 + 36);
      v57 = *(a2 + 37);
      v58 = vaddq_f32(v57, vmulq_f32(v54, v52));
      v59 = *(a2 + 40);
      v60 = *(a2 + 41);
      v61 = vaddq_f32(v55, vmulq_f32(v59, v52));
      v62 = vaddq_f32(v55, vmulq_f32(v59, v53));
      v63 = *(a2 + 42);
      v64 = *(a2 + 43);
      v65 = vaddq_f32(v57, vmulq_f32(v54, v53));
      v66 = vaddq_f32(v60, vmulq_f32(v63, v52));
      v67 = vaddq_f32(v60, vmulq_f32(v63, v53));
      v68 = vmulq_f32(v52, v52);
      v69 = vaddq_f32(v58, vmulq_f32(v68, v61));
      v70 = vmulq_f32(v53, v53);
      v71 = vaddq_f32(v51, vmulq_f32(v53, vaddq_f32(v64, vmulq_f32(v53, vaddq_f32(v67, vmulq_f32(v70, vaddq_f32(v65, vmulq_f32(v70, v62))))))));
      v72 = *(a2 + 29);
      v73 = vmaxq_f32(vmulq_f32(v31, vaddq_f32(v49, vmulq_f32(v52, vaddq_f32(v64, vmulq_f32(v52, vaddq_f32(v66, vmulq_f32(v68, v69))))))), v72);
      v74 = vmaxq_f32(vmulq_f32(v31, v71), v72);
      v75 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
      v76 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
      v77 = vsubq_f32(v75, vandq_s8(v22, vcgtq_f32(v75, v73)));
      v78 = vsubq_f32(v76, vandq_s8(v22, vcgtq_f32(v76, v74)));
      v79 = vsubq_f32(v73, v77);
      v80 = vsubq_f32(v74, v78);
      v81 = *(a2 + 44);
      v82 = *(a2 + 45);
      v83 = vaddq_f32(v81, vmulq_f32(v82, v79));
      v84 = *(a2 + 46);
      v85 = *(a2 + 47);
      v86 = vaddq_f32(v81, vmulq_f32(v82, v80));
      v87 = *(a2 + 48);
      v88 = vaddq_f32(v22, vmulq_f32(v79, vaddq_f32(v87, vmulq_f32(v79, vaddq_f32(vaddq_f32(v84, vmulq_f32(v79, v85)), vmulq_f32(vmulq_f32(v79, v79), v83))))));
      v89 = vaddq_f32(v22, vmulq_f32(v80, vaddq_f32(v87, vmulq_f32(v80, vaddq_f32(vaddq_f32(v84, vmulq_f32(v85, v80)), vmulq_f32(vmulq_f32(v80, v80), v86))))));
      v90 = vmulq_f32(v88, vshlq_n_s32(vaddq_s32(v24, vcvtq_s32_f32(v77)), 0x17uLL));
      v91 = vmulq_f32(v89, vshlq_n_s32(vaddq_s32(v24, vcvtq_s32_f32(v78)), 0x17uLL));
      v92 = *(a2 + 101);
      v93 = *(a2 + 102);
      v94 = vmulq_f32(v93, v91);
      v95 = vaddq_f32(v92, vmulq_f32(v93, v90));
      v96 = *(a2 + 103);
      v97 = *(a2 + 104);
      v98 = (v6 + v11);
      v98[-1] = vbslq_s8(v18, v13, veorq_s8(vandq_s8(v56, v19), vbslq_s8(vcgtq_f32(v21, vsubq_f32(v26, v97)), vmulq_f32(v26, v96), v95)));
      *v98 = vbslq_s8(v18, v14, veorq_s8(vandq_s8(v56, v20), vbslq_s8(vcgtq_f32(v21, vsubq_f32(v27, v97)), vmulq_f32(v27, v96), vaddq_f32(v92, v94))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v99 = 16 * v10;
    v100 = *(v7 + v99);
    v101 = *(a2 + 15);
    v102 = vbslq_s8(v101, v100, vmaxq_f32(v100, *(a2 + 105)));
    v103 = *(a2 + 75);
    v104 = *(a2 + 5);
    v105 = vmulq_f32(v102, vbslq_s8(vcgtq_f32(v103, v102), *(a2 + 34), v104));
    v106 = *(a2 + 100);
    v107 = vbslq_s8(vcgtq_f32(vandq_s8(v104, vceqq_f32(v106, v103)), v103), v104, vminq_f32(v105, *(a2 + 106)));
    v108 = vorrq_s8(vandq_s8(*(a2 + 19), v107), v104);
    v109 = vandq_s8(v104, vcgtq_f32(v108, *(a2 + 23)));
    v110 = vsubq_f32(vsubq_f32(v108, v104), vmulq_f32(vmulq_f32(*(a2 + 24), v109), v108));
    v111 = vmulq_f32(v110, v110);
    v112 = vmaxq_f32(vmulq_f32(v106, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v107, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v107))), *(a2 + 22)), v109), vmulq_f32(v110, vaddq_f32(*(a2 + 43), vmulq_f32(v110, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v110)), vmulq_f32(v111, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v110)), vmulq_f32(v111, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v110))))))))))), *(a2 + 29));
    v113 = vcvtq_f32_s32(vcvtq_s32_f32(v112));
    v114 = vsubq_f32(v113, vandq_s8(v104, vcgtq_f32(v113, v112)));
    v115 = vsubq_f32(v112, v114);
    *(v6 + v99) = vbslq_s8(v101, v100, veorq_s8(vandq_s8(*(a2 + 36), v102), vbslq_s8(vcgtq_f32(v103, vsubq_f32(v105, *(a2 + 104))), vmulq_f32(v105, *(a2 + 103)), vaddq_f32(*(a2 + 101), vmulq_f32(*(a2 + 102), vmulq_f32(vaddq_f32(v104, vmulq_f32(v115, vaddq_f32(*(a2 + 48), vmulq_f32(v115, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v115)), vmulq_f32(vmulq_f32(v115, v115), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v115)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v114)), 0x17uLL)))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v45 = 0;
        v46 = 16 * v8;
        v47 = 16 * v7;
        v48 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v49 = 0;
          do
          {
            v50 = v5[v49 / 0x10];
            v51 = vminq_f32(vmaxq_f32(v50, *(a2 + 75)), *(a2 + 5));
            v52 = vmulq_f32(v51, *(a2 + 107));
            v53 = vaddq_f32(v52, vmulq_f32(v51, vsubq_f32(v51, v52)));
            v6[v49 / 0x10] = vbslq_s8(*(a2 + 15), v50, vmulq_f32(v53, v53));
            v49 += 16;
          }

          while (v48 != v49);
          ++v45;
          v5 = (v5 + v46);
          v6 = (v6 + v47);
        }

        while (v45 != v3);
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
          v18 = v16;
          v19 = v15;
          v20 = v5[v17 - 2];
          v21 = v5[v17 - 1];
          v22 = v5[v17];
          v23 = v5[v17 + 1];
          v24 = *(a2 + 75);
          v25 = *(a2 + 5);
          v26 = vminq_f32(vmaxq_f32(v20, v24), v25);
          v27 = vminq_f32(vmaxq_f32(v21, v24), v25);
          v28 = vminq_f32(vmaxq_f32(v22, v24), v25);
          v29 = vminq_f32(vmaxq_f32(v23, v24), v25);
          v30 = *(a2 + 107);
          v31 = vmulq_f32(v26, v30);
          v32 = vmulq_f32(v27, v30);
          v33 = vmulq_f32(v28, v30);
          v34 = vmulq_f32(v29, v30);
          v35 = vaddq_f32(v31, vmulq_f32(v26, vsubq_f32(v26, v31)));
          v36 = vaddq_f32(v32, vmulq_f32(v27, vsubq_f32(v27, v32)));
          v37 = vaddq_f32(v33, vmulq_f32(v28, vsubq_f32(v28, v33)));
          v38 = vaddq_f32(v34, vmulq_f32(v29, vsubq_f32(v29, v34)));
          v39 = *(a2 + 15);
          v40 = &v6[v17];
          v40[-2] = vbslq_s8(v39, v20, vmulq_f32(v35, v35));
          v40[-1] = vbslq_s8(v39, v21, vmulq_f32(v36, v36));
          v14 += 4;
          *v40 = vbslq_s8(v39, v22, vmulq_f32(v37, v37));
          v40[1] = vbslq_s8(v39, v23, vmulq_f32(v38, v38));
          v17 += 4;
          v16 += 4;
          v15 = v19 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v41 = *v18++;
            v42 = vminq_f32(vmaxq_f32(v41, *(a2 + 75)), *(a2 + 5));
            v43 = vmulq_f32(v42, *(a2 + 107));
            v44 = vaddq_f32(v43, vmulq_f32(v42, vsubq_f32(v42, v43)));
            *v19++ = vbslq_s8(*(a2 + 15), v41, vmulq_f32(v44, v44));
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

uint64_t Getinv_srgb_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(v7 + v10 + 32);
      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      v19 = vminq_f32(vmaxq_f32(v13, v15), v17);
      v20 = vminq_f32(vmaxq_f32(v14, v15), v17);
      v21 = vminq_f32(vmaxq_f32(v16, v15), v17);
      v22 = *(a2 + 108);
      v23 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v19, v22)));
      v24 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v20, v22)));
      v25 = vmulq_f32(v18, vcvtq_f32_s32(vaddq_f32(v21, v22)));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v28 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
      v29 = *(a2 + 7);
      v30 = *(a2 + 8);
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v23, v26), v29));
      v32 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v24, v27), v29));
      v33 = vaddq_f32(v30, v26);
      v34 = vrsqrteq_f32(vaddq_f32(v29, vsubq_f32(v25, v28)));
      v35 = vaddq_f32(v30, v27);
      v36 = vaddq_f32(v30, v28);
      v37 = *(a2 + 9);
      v38 = *(a2 + 10);
      v39 = vsubq_f32(v33, vmulq_f32(v31, v37));
      v40 = vsubq_f32(v35, vmulq_f32(v32, v37));
      v41 = *(a2 + 109);
      v42 = vmulq_f32(v41, v39);
      v43 = vmulq_f32(v41, v40);
      v44 = vmulq_f32(v41, vsubq_f32(v36, vmulq_f32(v34, v37)));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v48 = vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v42)));
      v49 = vsubq_f32(v46, vandq_s8(v17, vcgtq_f32(v46, v43)));
      v50 = vsubq_f32(v47, vandq_s8(v17, vcgtq_f32(v47, v44)));
      v51 = *(a2 + 11);
      v52 = *(a2 + 12);
      v53 = vmulq_f32(vrecpeq_f32(vsubq_f32(v51, vsubq_f32(v42, v48))), v52);
      v54 = vmulq_f32(vrecpeq_f32(vsubq_f32(v51, vsubq_f32(v43, v49))), v52);
      v55 = vmulq_f32(vrecpeq_f32(vsubq_f32(v51, vsubq_f32(v44, v50))), v52);
      v56 = vaddq_f32(vaddq_f32(v38, v50), vmulq_f32(v55, v55));
      v57 = vmaxq_f32(vaddq_f32(vaddq_f32(v38, v48), vmulq_f32(v53, v53)), v15);
      v58 = vmaxq_f32(vaddq_f32(vaddq_f32(v38, v49), vmulq_f32(v54, v54)), v15);
      v59 = *(a2 + 13);
      v60 = *(a2 + 14);
      v61 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v57, v59), v60));
      v62 = vcvtq_s32_f32(vmulq_f32(vminq_f32(v58, v59), v60));
      v63 = vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v56, v15), v59), v60));
      v64 = *(a2 + 110);
      v65 = *(a2 + 111);
      v66 = vmulq_f32(v19, v65);
      v67 = vmulq_f32(v20, v65);
      v68 = *(a2 + 112);
      v69 = vcgtq_f32(v15, vsubq_f32(v19, v68));
      v70 = vcgtq_f32(v15, vsubq_f32(v20, v68));
      v71 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v21, v68)), vmulq_f32(v21, v65), vmulq_f32(v64, v63));
      v72 = *(a2 + 15);
      v73 = (v6 + v10);
      *v73 = vbslq_s8(v72, v13, vbslq_s8(v69, v66, vmulq_f32(v64, v61)));
      v73[1] = vbslq_s8(v72, v14, vbslq_s8(v70, v67, vmulq_f32(v64, v62)));
      v73[2] = vbslq_s8(v72, v16, v71);
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
      v74 = *(v7 + 16 * v11);
      v75 = *(a2 + 75);
      v76 = *(a2 + 5);
      v77 = vminq_f32(vmaxq_f32(v74, v75), v76);
      v78 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v77, *(a2 + 108))));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v78));
      v80 = vmulq_f32(*(a2 + 109), vsubq_f32(vaddq_f32(*(a2 + 8), v79), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v78, v79))), *(a2 + 9))));
      v81 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
      v82 = vsubq_f32(v81, vandq_s8(v76, vcgtq_f32(v81, v80)));
      v83 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v80, v82))), *(a2 + 12));
      *(v6 + 16 * v11++) = vbslq_s8(*(a2 + 15), v74, vbslq_s8(vcgtq_f32(v75, vsubq_f32(v77, *(a2 + 112))), vmulq_f32(v77, *(a2 + 111)), vmulq_f32(*(a2 + 110), vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v82), vmulq_f32(v83, v83)), v75), *(a2 + 13)), *(a2 + 14))))));
    }

    while (v11 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 108);
      v20 = vaddq_f32(v17, v19);
      v21 = vaddq_f32(v18, v19);
      v22 = *(a2 + 109);
      v23 = vcgtq_f32(vandq_s8(v16, vceqq_f32(v22, v15)), v15);
      v24 = vbslq_s8(v23, v16, v20);
      v25 = vbslq_s8(v23, v16, v21);
      v26 = *(a2 + 19);
      v27 = *(a2 + 20);
      v28 = vorrq_s8(vandq_s8(v26, v24), v16);
      v29 = vorrq_s8(vandq_s8(v26, v25), v16);
      v30 = *(a2 + 21);
      v31 = *(a2 + 22);
      v32 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v25, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v27, v25)));
      v33 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v27, v24))), v31);
      v34 = *(a2 + 23);
      v35 = *(a2 + 24);
      v36 = vandq_s8(v16, vcgtq_f32(v28, v34));
      v37 = vandq_s8(v16, vcgtq_f32(v29, v34));
      v38 = vaddq_f32(v33, v36);
      v39 = vaddq_f32(vsubq_f32(v32, v31), v37);
      v40 = vmulq_f32(v35, v37);
      v41 = vmulq_f32(vmulq_f32(v35, v36), v28);
      v42 = vmulq_f32(v40, v29);
      v43 = vsubq_f32(vsubq_f32(v28, v16), v41);
      v44 = vsubq_f32(vsubq_f32(v29, v16), v42);
      v45 = vmulq_f32(v43, v43);
      v46 = vmulq_f32(v44, v44);
      v47 = *(a2 + 37);
      v48 = *(a2 + 38);
      v49 = vaddq_f32(v47, vmulq_f32(v48, v43));
      v50 = *(a2 + 39);
      v51 = *(a2 + 40);
      v52 = vaddq_f32(v47, vmulq_f32(v48, v44));
      v53 = vaddq_f32(v50, vmulq_f32(v51, v43));
      v54 = vaddq_f32(v50, vmulq_f32(v51, v44));
      v55 = *(a2 + 41);
      v56 = *(a2 + 42);
      v57 = vaddq_f32(vaddq_f32(v55, vmulq_f32(v56, v44)), vmulq_f32(v46, vaddq_f32(v52, vmulq_f32(v46, v54))));
      v58 = vmulq_f32(v43, vaddq_f32(vaddq_f32(v55, vmulq_f32(v56, v43)), vmulq_f32(v45, vaddq_f32(v49, vmulq_f32(v45, v53)))));
      v59 = *(a2 + 43);
      v60 = *(a2 + 44);
      v61 = vaddq_f32(v39, vmulq_f32(v44, vaddq_f32(v59, vmulq_f32(v44, v57))));
      v62 = *(a2 + 29);
      v63 = vmaxq_f32(vmulq_f32(v22, vaddq_f32(v38, vmulq_f32(v43, vaddq_f32(v59, v58)))), v62);
      v64 = vmaxq_f32(vmulq_f32(v22, v61), v62);
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
      v67 = vsubq_f32(v65, vandq_s8(v16, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v66, vandq_s8(v16, vcgtq_f32(v66, v64)));
      v69 = vsubq_f32(v63, v67);
      v70 = vsubq_f32(v64, v68);
      v71 = *(a2 + 45);
      v72 = *(a2 + 46);
      v73 = *(a2 + 47);
      v74 = *(a2 + 48);
      v75 = vaddq_f32(v16, vmulq_f32(v69, vaddq_f32(v74, vmulq_f32(v69, vaddq_f32(vaddq_f32(v72, vmulq_f32(v69, v73)), vmulq_f32(vmulq_f32(v69, v69), vaddq_f32(v60, vmulq_f32(v71, v69))))))));
      v76 = vaddq_f32(v16, vmulq_f32(v70, vaddq_f32(v74, vmulq_f32(v70, vaddq_f32(vaddq_f32(v72, vmulq_f32(v73, v70)), vmulq_f32(vmulq_f32(v70, v70), vaddq_f32(v60, vmulq_f32(v71, v70))))))));
      v77 = *(a2 + 33);
      v78 = vmulq_f32(v75, vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v67)), 0x17uLL));
      v79 = vmulq_f32(v76, vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v68)), 0x17uLL));
      v80 = *(a2 + 110);
      v81 = *(a2 + 111);
      v82 = vmulq_f32(v17, v81);
      v83 = *(a2 + 112);
      v84 = vcgtq_f32(v15, vsubq_f32(v17, v83));
      v85 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v83)), vmulq_f32(v18, v81), vmulq_f32(v80, v79));
      v86 = *(a2 + 15);
      v87 = (v6 + v11);
      v87[-1] = vbslq_s8(v86, v13, vbslq_s8(v84, v82, vmulq_f32(v80, v78)));
      *v87 = vbslq_s8(v86, v14, v85);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v88 = 16 * v10;
    v89 = *(v7 + v88);
    v90 = *(a2 + 75);
    v91 = *(a2 + 5);
    v92 = vminq_f32(vmaxq_f32(v89, v90), v91);
    v93 = *(a2 + 109);
    v94 = vbslq_s8(vcgtq_f32(vandq_s8(v91, vceqq_f32(v93, v90)), v90), v91, vaddq_f32(v92, *(a2 + 108)));
    v95 = vorrq_s8(vandq_s8(*(a2 + 19), v94), v91);
    v96 = vandq_s8(v91, vcgtq_f32(v95, *(a2 + 23)));
    v97 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v94))), *(a2 + 22)), v96);
    v98 = vsubq_f32(vsubq_f32(v95, v91), vmulq_f32(vmulq_f32(*(a2 + 24), v96), v95));
    v99 = vmulq_f32(v98, v98);
    v100 = vmaxq_f32(vmulq_f32(v93, vaddq_f32(v97, vmulq_f32(v98, vaddq_f32(*(a2 + 43), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v98)), vmulq_f32(v99, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v98)), vmulq_f32(v99, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v98))))))))))), *(a2 + 29));
    v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
    v102 = vsubq_f32(v101, vandq_s8(v91, vcgtq_f32(v101, v100)));
    v103 = vsubq_f32(v100, v102);
    *(v6 + v88) = vbslq_s8(*(a2 + 15), v89, vbslq_s8(vcgtq_f32(v90, vsubq_f32(v92, *(a2 + 112))), vmulq_f32(v92, *(a2 + 111)), vmulq_f32(*(a2 + 110), vmulq_f32(vaddq_f32(v91, vmulq_f32(v103, vaddq_f32(*(a2 + 48), vmulq_f32(v103, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v103)), vmulq_f32(vmulq_f32(v103, v103), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v103)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v102)), 0x17uLL)))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 108);
      v20 = vaddq_f32(v17, v19);
      v21 = vaddq_f32(v18, v19);
      v22 = *(a2 + 19);
      v23 = *(a2 + 20);
      v24 = vorrq_s8(vandq_s8(v22, v20), v16);
      v25 = *(a2 + 21);
      v26 = *(a2 + 22);
      v27 = vorrq_s8(vandq_s8(v22, v21), v16);
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v21)));
      v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v20))), v26);
      v30 = *(a2 + 23);
      v31 = *(a2 + 24);
      v32 = vandq_s8(v16, vcgtq_f32(v24, v30));
      v33 = vandq_s8(v16, vcgtq_f32(v27, v30));
      v34 = vaddq_f32(v29, v32);
      v35 = vmulq_f32(v31, v32);
      v36 = vmulq_f32(vmulq_f32(v31, v33), v27);
      v37 = vaddq_f32(vsubq_f32(v28, v26), v33);
      v38 = vsubq_f32(vsubq_f32(v24, v16), vmulq_f32(v35, v24));
      v39 = vsubq_f32(vsubq_f32(v27, v16), v36);
      v40 = *(a2 + 25);
      v41 = *(a2 + 26);
      v42 = vaddq_f32(v40, vmulq_f32(v41, v38));
      v43 = vaddq_f32(v40, vmulq_f32(v41, v39));
      v45 = *(a2 + 27);
      v44 = *(a2 + 28);
      v46 = vaddq_f32(v37, vmulq_f32(v39, vaddq_f32(vaddq_f32(v45, vmulq_f32(v39, v44)), vmulq_f32(vmulq_f32(v39, v39), v43))));
      v47 = *(a2 + 109);
      v48 = vmulq_f32(v47, vaddq_f32(v34, vmulq_f32(v38, vaddq_f32(vaddq_f32(v45, vmulq_f32(v38, v44)), vmulq_f32(vmulq_f32(v38, v38), v42)))));
      v49 = vmulq_f32(v47, v46);
      v50 = *(a2 + 29);
      v51 = *(a2 + 30);
      v52 = vmaxq_f32(v48, v50);
      v53 = vmaxq_f32(v49, v50);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v56 = vsubq_f32(v54, vandq_s8(v16, vcgtq_f32(v54, v52)));
      v57 = vsubq_f32(v55, vandq_s8(v16, vcgtq_f32(v55, v53)));
      v58 = vsubq_f32(v52, v56);
      v59 = vsubq_f32(v53, v57);
      v60 = *(a2 + 31);
      v61 = *(a2 + 32);
      v62 = vaddq_f32(v16, vmulq_f32(v58, vaddq_f32(v61, vmulq_f32(v58, vaddq_f32(v51, vmulq_f32(v60, v58))))));
      v63 = vaddq_f32(v16, vmulq_f32(v59, vaddq_f32(v61, vmulq_f32(v59, vaddq_f32(v51, vmulq_f32(v60, v59))))));
      v64 = *(a2 + 33);
      v65 = vmulq_f32(v62, vshlq_n_s32(vaddq_s32(v64, vcvtq_s32_f32(v56)), 0x17uLL));
      v66 = vmulq_f32(v63, vshlq_n_s32(vaddq_s32(v64, vcvtq_s32_f32(v57)), 0x17uLL));
      v67 = *(a2 + 110);
      v68 = *(a2 + 111);
      v69 = vmulq_f32(v17, v68);
      v70 = *(a2 + 112);
      v71 = vcgtq_f32(v15, vsubq_f32(v17, v70));
      v72 = vbslq_s8(vcgtq_f32(v15, vsubq_f32(v18, v70)), vmulq_f32(v18, v68), vmulq_f32(v67, v66));
      v73 = *(a2 + 15);
      v74 = (v6 + v11);
      v74[-1] = vbslq_s8(v73, v13, vbslq_s8(v71, v69, vmulq_f32(v67, v65)));
      *v74 = vbslq_s8(v73, v14, v72);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v75 = 16 * v10;
    v76 = *(v7 + v75);
    v77 = *(a2 + 75);
    v78 = *(a2 + 5);
    v79 = vminq_f32(vmaxq_f32(v76, v77), v78);
    v80 = vaddq_f32(v79, *(a2 + 108));
    v81 = vorrq_s8(vandq_s8(*(a2 + 19), v80), v78);
    v82 = vandq_s8(v78, vcgtq_f32(v81, *(a2 + 23)));
    v83 = vsubq_f32(vsubq_f32(v81, v78), vmulq_f32(vmulq_f32(*(a2 + 24), v82), v81));
    v84 = vmaxq_f32(vmulq_f32(*(a2 + 109), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v80, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v80))), *(a2 + 22)), v82), vmulq_f32(v83, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v83, *(a2 + 28))), vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v83))))))), *(a2 + 29));
    v85 = vcvtq_f32_s32(vcvtq_s32_f32(v84));
    v86 = vsubq_f32(v85, vandq_s8(v78, vcgtq_f32(v85, v84)));
    v87 = vsubq_f32(v84, v86);
    *(v6 + v75) = vbslq_s8(*(a2 + 15), v76, vbslq_s8(vcgtq_f32(v77, vsubq_f32(v79, *(a2 + 112))), vmulq_f32(v79, *(a2 + 111)), vmulq_f32(*(a2 + 110), vmulq_f32(vaddq_f32(v78, vmulq_f32(v87, vaddq_f32(*(a2 + 32), vmulq_f32(v87, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v87)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v86)), 0x17uLL)))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 113);
      v16 = *(a2 + 15);
      v17 = vbslq_s8(v16, v13, vmaxq_f32(v13, v15));
      v18 = vbslq_s8(v16, v14, vmaxq_f32(v14, v15));
      v19 = *(a2 + 75);
      v20 = *(a2 + 5);
      v22 = *(a2 + 33);
      v21 = *(a2 + 34);
      v23 = vmulq_f32(v17, vbslq_s8(vcgtq_f32(v19, v17), v21, v20));
      v24 = vmulq_f32(v18, vbslq_s8(vcgtq_f32(v19, v18), v21, v20));
      v25 = *(a2 + 114);
      v26 = *(a2 + 108);
      v27 = vaddq_f32(vminq_f32(v23, v25), v26);
      v28 = vaddq_f32(vminq_f32(v24, v25), v26);
      v29 = *(a2 + 19);
      v30 = *(a2 + 20);
      v31 = vorrq_s8(vandq_s8(v29, v27), v20);
      v32 = vorrq_s8(vandq_s8(v29, v28), v20);
      v33 = *(a2 + 21);
      v34 = *(a2 + 22);
      v35 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v30, v28)));
      v36 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v30, v27))), v34);
      v37 = *(a2 + 23);
      v38 = *(a2 + 24);
      v39 = vsubq_f32(v35, v34);
      v40 = vandq_s8(v20, vcgtq_f32(v31, v37));
      v41 = vandq_s8(v20, vcgtq_f32(v32, v37));
      v42 = vaddq_f32(v36, v40);
      v43 = vsubq_f32(vsubq_f32(v31, v20), vmulq_f32(vmulq_f32(v38, v40), v31));
      v44 = vsubq_f32(vsubq_f32(v32, v20), vmulq_f32(vmulq_f32(v38, v41), v32));
      v45 = *(a2 + 25);
      v46 = *(a2 + 26);
      v47 = vaddq_f32(v45, vmulq_f32(v46, v43));
      v48 = vaddq_f32(v45, vmulq_f32(v46, v44));
      v49 = *(a2 + 27);
      v50 = *(a2 + 28);
      v51 = vaddq_f32(vaddq_f32(v39, v41), vmulq_f32(v44, vaddq_f32(vaddq_f32(v49, vmulq_f32(v44, v50)), vmulq_f32(vmulq_f32(v44, v44), v48))));
      v52 = *(a2 + 109);
      v53 = vmulq_f32(v52, vaddq_f32(v42, vmulq_f32(v43, vaddq_f32(vaddq_f32(v49, vmulq_f32(v43, v50)), vmulq_f32(vmulq_f32(v43, v43), v47)))));
      v54 = vmulq_f32(v52, v51);
      v55 = *(a2 + 29);
      v56 = *(a2 + 30);
      v57 = vmaxq_f32(v53, v55);
      v58 = vmaxq_f32(v54, v55);
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v60 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v61 = vsubq_f32(v59, vandq_s8(v20, vcgtq_f32(v59, v57)));
      v62 = vsubq_f32(v60, vandq_s8(v20, vcgtq_f32(v60, v58)));
      v63 = vsubq_f32(v57, v61);
      v64 = *(a2 + 31);
      v65 = *(a2 + 32);
      v66 = vsubq_f32(v58, v62);
      v67 = vaddq_f32(v20, vmulq_f32(v63, vaddq_f32(v65, vmulq_f32(v63, vaddq_f32(v56, vmulq_f32(v64, v63))))));
      v68 = vaddq_f32(v20, vmulq_f32(v66, vaddq_f32(v65, vmulq_f32(v66, vaddq_f32(v56, vmulq_f32(v64, v66))))));
      v69 = vshlq_n_s32(vaddq_s32(v22, vcvtq_s32_f32(v62)), 0x17uLL);
      v70 = vmulq_f32(v67, vshlq_n_s32(vaddq_s32(v22, vcvtq_s32_f32(v61)), 0x17uLL));
      v71 = vmulq_f32(v68, v69);
      v72 = *(a2 + 110);
      v73 = *(a2 + 111);
      v74 = vmulq_f32(v23, v73);
      v75 = vmulq_f32(v24, v73);
      v76 = *(a2 + 112);
      v77 = vcgtq_f32(v19, vsubq_f32(v23, v76));
      v78 = vcgtq_f32(v19, vsubq_f32(v24, v76));
      v79 = *(a2 + 36);
      v80 = (v6 + v11);
      v80[-1] = vbslq_s8(v16, v13, veorq_s8(vandq_s8(v79, v17), vbslq_s8(v77, v74, vmulq_f32(v72, v70))));
      *v80 = vbslq_s8(v16, v14, veorq_s8(vandq_s8(v79, v18), vbslq_s8(v78, v75, vmulq_f32(v72, v71))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v81 = 16 * v10;
    v82 = *(v7 + v81);
    v83 = *(a2 + 15);
    v84 = vbslq_s8(v83, v82, vmaxq_f32(v82, *(a2 + 113)));
    v85 = *(a2 + 75);
    v86 = *(a2 + 5);
    v87 = vmulq_f32(v84, vbslq_s8(vcgtq_f32(v85, v84), *(a2 + 34), v86));
    v88 = vaddq_f32(vminq_f32(v87, *(a2 + 114)), *(a2 + 108));
    v89 = vorrq_s8(vandq_s8(*(a2 + 19), v88), v86);
    v90 = vandq_s8(v86, vcgtq_f32(v89, *(a2 + 23)));
    v91 = vsubq_f32(vsubq_f32(v89, v86), vmulq_f32(vmulq_f32(*(a2 + 24), v90), v89));
    v92 = vmaxq_f32(vmulq_f32(*(a2 + 109), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v88, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v88))), *(a2 + 22)), v90), vmulq_f32(v91, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v91, *(a2 + 28))), vmulq_f32(vmulq_f32(v91, v91), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v91))))))), *(a2 + 29));
    v93 = vcvtq_f32_s32(vcvtq_s32_f32(v92));
    v94 = vsubq_f32(v93, vandq_s8(v86, vcgtq_f32(v93, v92)));
    v95 = vsubq_f32(v92, v94);
    *(v6 + v81) = vbslq_s8(v83, v82, veorq_s8(vandq_s8(*(a2 + 36), v84), vbslq_s8(vcgtq_f32(v85, vsubq_f32(v87, *(a2 + 112))), vmulq_f32(v87, *(a2 + 111)), vmulq_f32(*(a2 + 110), vmulq_f32(vaddq_f32(v86, vmulq_f32(v95, vaddq_f32(*(a2 + 32), vmulq_f32(v95, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v95)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v94)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_srgb_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 113);
      v16 = vmaxq_f32(v13, v15);
      v17 = vmaxq_f32(v14, v15);
      v18 = *(a2 + 15);
      v19 = vbslq_s8(v18, v13, v16);
      v20 = vbslq_s8(v18, v14, v17);
      v21 = *(a2 + 75);
      v22 = *(a2 + 5);
      v23 = *(a2 + 33);
      v24 = *(a2 + 34);
      v25 = vmulq_f32(v19, vbslq_s8(vcgtq_f32(v21, v19), v24, v22));
      v26 = vmulq_f32(v20, vbslq_s8(vcgtq_f32(v21, v20), v24, v22));
      v27 = *(a2 + 114);
      v28 = vminq_f32(v26, v27);
      v29 = *(a2 + 108);
      v30 = vaddq_f32(vminq_f32(v25, v27), v29);
      v31 = *(a2 + 109);
      v32 = vaddq_f32(v28, v29);
      v33 = vcgtq_f32(vandq_s8(v22, vceqq_f32(v31, v21)), v21);
      v34 = vbslq_s8(v33, v22, v30);
      v35 = vbslq_s8(v33, v22, v32);
      v36 = *(a2 + 19);
      v37 = *(a2 + 20);
      v38 = vorrq_s8(vandq_s8(v36, v34), v22);
      v39 = vorrq_s8(vandq_s8(v36, v35), v22);
      v40 = *(a2 + 21);
      v41 = *(a2 + 22);
      v42 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v34)));
      v43 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v35, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v35)));
      v44 = *(a2 + 23);
      v45 = *(a2 + 24);
      v46 = vsubq_f32(v42, v41);
      v47 = vandq_s8(v22, vcgtq_f32(v38, v44));
      v48 = vandq_s8(v22, vcgtq_f32(v39, v44));
      v49 = vsubq_f32(v43, v41);
      v50 = vmulq_f32(v45, v47);
      v51 = vmulq_f32(vmulq_f32(v45, v48), v39);
      v52 = vaddq_f32(v46, v47);
      v53 = vsubq_f32(v39, v22);
      v54 = vsubq_f32(vsubq_f32(v38, v22), vmulq_f32(v50, v38));
      v55 = vsubq_f32(v53, v51);
      v56 = *(a2 + 38);
      v57 = *(a2 + 39);
      v58 = vmulq_f32(v54, v54);
      v59 = vmulq_f32(v56, v54);
      v60 = vmulq_f32(v56, v55);
      v61 = *(a2 + 36);
      v62 = *(a2 + 37);
      v63 = *(a2 + 40);
      v64 = *(a2 + 41);
      v65 = vaddq_f32(v62, v59);
      v66 = vaddq_f32(v57, vmulq_f32(v63, v54));
      v67 = vaddq_f32(v57, vmulq_f32(v63, v55));
      v68 = vaddq_f32(v62, v60);
      v69 = *(a2 + 42);
      v70 = *(a2 + 43);
      v71 = vaddq_f32(v64, vmulq_f32(v69, v54));
      v72 = vaddq_f32(v64, vmulq_f32(v69, v55));
      v73 = vmulq_f32(v55, v55);
      v74 = vmulq_f32(v31, vaddq_f32(v52, vmulq_f32(v54, vaddq_f32(v70, vmulq_f32(v54, vaddq_f32(v71, vmulq_f32(v58, vaddq_f32(v65, vmulq_f32(v58, v66)))))))));
      v75 = vmulq_f32(v31, vaddq_f32(vaddq_f32(v49, v48), vmulq_f32(v55, vaddq_f32(v70, vmulq_f32(v55, vaddq_f32(v72, vmulq_f32(v73, vaddq_f32(v68, vmulq_f32(v73, v67)))))))));
      v76 = *(a2 + 29);
      v77 = vmaxq_f32(v74, v76);
      v78 = vmaxq_f32(v75, v76);
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vcvtq_f32_s32(vcvtq_s32_f32(v78));
      v81 = vsubq_f32(v79, vandq_s8(v22, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v80, vandq_s8(v22, vcgtq_f32(v80, v78)));
      v83 = vsubq_f32(v77, v81);
      v84 = vsubq_f32(v78, v82);
      v85 = *(a2 + 44);
      v86 = *(a2 + 45);
      v87 = vaddq_f32(v85, vmulq_f32(v86, v83));
      v88 = vaddq_f32(v85, vmulq_f32(v86, v84));
      v89 = *(a2 + 46);
      v90 = *(a2 + 47);
      v91 = vaddq_f32(vaddq_f32(v89, vmulq_f32(v90, v84)), vmulq_f32(vmulq_f32(v84, v84), v88));
      v92 = *(a2 + 48);
      v93 = vaddq_f32(v22, vmulq_f32(v83, vaddq_f32(v92, vmulq_f32(v83, vaddq_f32(vaddq_f32(v89, vmulq_f32(v83, v90)), vmulq_f32(vmulq_f32(v83, v83), v87))))));
      v94 = vaddq_s32(v23, vcvtq_s32_f32(v81));
      v95 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v84, vaddq_f32(v92, vmulq_f32(v84, v91)))), vshlq_n_s32(vaddq_s32(v23, vcvtq_s32_f32(v82)), 0x17uLL));
      v96 = *(a2 + 110);
      v97 = vmulq_f32(v96, vmulq_f32(v93, vshlq_n_s32(v94, 0x17uLL)));
      v98 = *(a2 + 111);
      v99 = *(a2 + 112);
      v100 = (v6 + v11);
      v100[-1] = vbslq_s8(v18, v13, veorq_s8(vandq_s8(v61, v19), vbslq_s8(vcgtq_f32(v21, vsubq_f32(v25, v99)), vmulq_f32(v25, v98), v97)));
      *v100 = vbslq_s8(v18, v14, veorq_s8(vandq_s8(v61, v20), vbslq_s8(vcgtq_f32(v21, vsubq_f32(v26, v99)), vmulq_f32(v26, v98), vmulq_f32(v96, v95))));
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
    v104 = vbslq_s8(v103, v102, vmaxq_f32(v102, *(a2 + 113)));
    v105 = *(a2 + 75);
    v106 = *(a2 + 5);
    v107 = vmulq_f32(v104, vbslq_s8(vcgtq_f32(v105, v104), *(a2 + 34), v106));
    v108 = *(a2 + 109);
    v109 = vbslq_s8(vcgtq_f32(vandq_s8(v106, vceqq_f32(v108, v105)), v105), v106, vaddq_f32(vminq_f32(v107, *(a2 + 114)), *(a2 + 108)));
    v110 = vorrq_s8(vandq_s8(*(a2 + 19), v109), v106);
    v111 = vandq_s8(v106, vcgtq_f32(v110, *(a2 + 23)));
    v112 = vsubq_f32(vsubq_f32(v110, v106), vmulq_f32(vmulq_f32(*(a2 + 24), v111), v110));
    v113 = vmulq_f32(v112, v112);
    v114 = vmaxq_f32(vmulq_f32(v108, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v109, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v109))), *(a2 + 22)), v111), vmulq_f32(v112, vaddq_f32(*(a2 + 43), vmulq_f32(v112, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v112)), vmulq_f32(v113, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v112)), vmulq_f32(v113, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v112))))))))))), *(a2 + 29));
    v115 = vcvtq_f32_s32(vcvtq_s32_f32(v114));
    v116 = vsubq_f32(v115, vandq_s8(v106, vcgtq_f32(v115, v114)));
    v117 = vsubq_f32(v114, v116);
    *(v6 + v101) = vbslq_s8(v103, v102, veorq_s8(vandq_s8(*(a2 + 36), v104), vbslq_s8(vcgtq_f32(v105, vsubq_f32(v107, *(a2 + 112))), vmulq_f32(v107, *(a2 + 111)), vmulq_f32(*(a2 + 110), vmulq_f32(vaddq_f32(v106, vmulq_f32(v117, vaddq_f32(*(a2 + 48), vmulq_f32(v117, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v117)), vmulq_f32(vmulq_f32(v117, v117), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v117)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v116)), 0x17uLL))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v35 = 0;
        v36 = 16 * v8;
        v37 = 16 * v7;
        v38 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v39 = 0;
          do
          {
            v40 = v5[v39 / 0x10];
            v41 = vminq_f32(vmaxq_f32(v40, *(a2 + 75)), *(a2 + 5));
            v6[v39 / 0x10] = vbslq_s8(*(a2 + 15), v40, vmulq_f32(v41, vminq_f32(vrsqrteq_f32(v41), *(a2 + 73))));
            v39 += 16;
          }

          while (v38 != v39);
          ++v35;
          v5 = (v5 + v36);
          v6 = (v6 + v37);
        }

        while (v35 != v3);
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
          v18 = v16;
          v19 = v15;
          v20 = v5[v17 - 2];
          v21 = v5[v17 - 1];
          v22 = v5[v17];
          v23 = v5[v17 + 1];
          v24 = *(a2 + 75);
          v25 = *(a2 + 5);
          v26 = vminq_f32(vmaxq_f32(v20, v24), v25);
          v27 = vminq_f32(vmaxq_f32(v21, v24), v25);
          v28 = vminq_f32(vmaxq_f32(v22, v24), v25);
          v29 = vminq_f32(vmaxq_f32(v23, v24), v25);
          v30 = *(a2 + 73);
          v31 = *(a2 + 15);
          v32 = &v6[v17];
          v32[-2] = vbslq_s8(v31, v20, vmulq_f32(v26, vminq_f32(vrsqrteq_f32(v26), v30)));
          v32[-1] = vbslq_s8(v31, v21, vmulq_f32(v27, vminq_f32(vrsqrteq_f32(v27), v30)));
          v14 += 4;
          *v32 = vbslq_s8(v31, v22, vmulq_f32(v28, vminq_f32(vrsqrteq_f32(v28), v30)));
          v32[1] = vbslq_s8(v31, v23, vmulq_f32(v29, vminq_f32(vrsqrteq_f32(v29), v30)));
          v17 += 4;
          v16 += 4;
          v15 = v19 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v33 = *v18++;
            v34 = vminq_f32(vmaxq_f32(v33, *(a2 + 75)), *(a2 + 5));
            *v19++ = vbslq_s8(*(a2 + 15), v33, vmulq_f32(v34, vminq_f32(vrsqrteq_f32(v34), *(a2 + 73))));
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

uint64_t Getquicktime_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v17 = *(a2 + 75);
      v18 = *(a2 + 5);
      v19 = *(a2 + 6);
      v20 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v13, v17), v18)));
      v21 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v14, v17), v18)));
      v22 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v15, v17), v18)));
      v23 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v16, v17), v18)));
      v24 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
      v25 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v28 = *(a2 + 7);
      v29 = *(a2 + 8);
      v30 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v20, v24), v28));
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v21, v25), v28));
      v32 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v22, v26), v28));
      v33 = vrsqrteq_f32(vaddq_f32(v28, vsubq_f32(v23, v27)));
      v34 = vaddq_f32(v29, v24);
      v35 = vaddq_f32(v29, v25);
      v36 = vaddq_f32(v29, v26);
      v37 = vaddq_f32(v29, v27);
      v38 = *(a2 + 9);
      v39 = *(a2 + 10);
      v40 = vsubq_f32(v34, vmulq_f32(v30, v38));
      v41 = *(a2 + 115);
      v42 = vmulq_f32(v41, v40);
      v43 = vmulq_f32(v41, vsubq_f32(v35, vmulq_f32(v31, v38)));
      v44 = vmulq_f32(v41, vsubq_f32(v36, vmulq_f32(v32, v38)));
      v45 = vmulq_f32(v41, vsubq_f32(v37, vmulq_f32(v33, v38)));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
      v50 = vsubq_f32(v46, vandq_s8(v18, vcgtq_f32(v46, v42)));
      v51 = vsubq_f32(v47, vandq_s8(v18, vcgtq_f32(v47, v43)));
      v52 = vsubq_f32(v48, vandq_s8(v18, vcgtq_f32(v48, v44)));
      v53 = vsubq_f32(v49, vandq_s8(v18, vcgtq_f32(v49, v45)));
      v54 = *(a2 + 11);
      v55 = *(a2 + 12);
      v56 = vmulq_f32(vrecpeq_f32(vsubq_f32(v54, vsubq_f32(v42, v50))), v55);
      v57 = vmulq_f32(vrecpeq_f32(vsubq_f32(v54, vsubq_f32(v43, v51))), v55);
      v58 = vmulq_f32(vrecpeq_f32(vsubq_f32(v54, vsubq_f32(v44, v52))), v55);
      v59 = vmulq_f32(vrecpeq_f32(vsubq_f32(v54, vsubq_f32(v45, v53))), v55);
      v60 = vmaxq_f32(vaddq_f32(vaddq_f32(v50, v39), vmulq_f32(v56, v56)), v17);
      v61 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v51), vmulq_f32(v57, v57)), v17);
      v62 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v52), vmulq_f32(v58, v58)), v17);
      v63 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v53), vmulq_f32(v59, v59)), v17);
      v64 = *(a2 + 13);
      v65 = *(a2 + 14);
      v66 = vminq_f32(v61, v64);
      v67 = vminq_f32(v62, v64);
      v68 = vminq_f32(v63, v64);
      v69 = vmulq_f32(vminq_f32(v60, v64), v65);
      v70 = vmulq_f32(v66, v65);
      v71 = vcvtq_s32_f32(vmulq_f32(v67, v65));
      v72 = *(a2 + 15);
      v73 = (v6 + v11);
      v73[-2] = vbslq_s8(v72, v13, vcvtq_s32_f32(v69));
      v73[-1] = vbslq_s8(v72, v14, vcvtq_s32_f32(v70));
      *v73 = vbslq_s8(v72, v15, v71);
      v73[1] = vbslq_s8(v72, v16, vcvtq_s32_f32(vmulq_f32(v68, v65)));
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
      v74 = *(v7 + 16 * v10);
      v75 = *(a2 + 75);
      v76 = *(a2 + 5);
      v77 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vminq_f32(vmaxq_f32(v74, v75), v76)));
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v79 = vmulq_f32(*(a2 + 115), vsubq_f32(vaddq_f32(*(a2 + 8), v78), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v77, v78))), *(a2 + 9))));
      v80 = vcvtq_f32_s32(vcvtq_s32_f32(v79));
      v81 = vsubq_f32(v80, vandq_s8(v76, vcgtq_f32(v80, v79)));
      v82 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v79, v81))), *(a2 + 12));
      *(v6 + 16 * v10++) = vbslq_s8(*(a2 + 15), v74, vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v81), vmulq_f32(v82, v82)), v75), *(a2 + 13)), *(a2 + 14))));
    }

    while (v10 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 115);
      v20 = vcgtq_f32(vandq_s8(v16, vceqq_f32(v19, v15)), v15);
      v21 = vbslq_s8(v20, v16, v17);
      v22 = vbslq_s8(v20, v16, v18);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vorrq_s8(vandq_s8(v23, v21), v16);
      v26 = *(a2 + 21);
      v27 = *(a2 + 22);
      v28 = vorrq_s8(vandq_s8(v23, v22), v16);
      v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v24, v22)));
      v30 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v24, v21))), v27);
      v31 = *(a2 + 23);
      v32 = *(a2 + 24);
      v33 = vsubq_f32(v29, v27);
      v34 = vandq_s8(v16, vcgtq_f32(v25, v31));
      v35 = vandq_s8(v16, vcgtq_f32(v28, v31));
      v36 = vaddq_f32(v30, v34);
      v37 = vsubq_f32(vsubq_f32(v25, v16), vmulq_f32(vmulq_f32(v32, v34), v25));
      v38 = vsubq_f32(vsubq_f32(v28, v16), vmulq_f32(vmulq_f32(v32, v35), v28));
      v39 = vmulq_f32(v37, v37);
      v40 = *(a2 + 37);
      v41 = *(a2 + 38);
      v42 = vaddq_f32(v40, vmulq_f32(v41, v37));
      v43 = vaddq_f32(v40, vmulq_f32(v41, v38));
      v44 = *(a2 + 39);
      v45 = *(a2 + 40);
      v46 = vaddq_f32(v44, vmulq_f32(v45, v37));
      v47 = vaddq_f32(v44, vmulq_f32(v45, v38));
      v48 = *(a2 + 41);
      v49 = *(a2 + 42);
      v50 = vaddq_f32(v48, vmulq_f32(v49, v37));
      v51 = vaddq_f32(v48, vmulq_f32(v49, v38));
      v52 = vmulq_f32(v38, v38);
      v53 = vaddq_f32(v51, vmulq_f32(v52, vaddq_f32(v43, vmulq_f32(v52, v47))));
      v54 = vmulq_f32(v37, vaddq_f32(v50, vmulq_f32(v39, vaddq_f32(v42, vmulq_f32(v39, v46)))));
      v55 = *(a2 + 43);
      v56 = *(a2 + 44);
      v57 = vaddq_f32(v33, v35);
      v58 = vmulq_f32(v19, vaddq_f32(v36, vmulq_f32(v37, vaddq_f32(v55, v54))));
      v59 = vmulq_f32(v19, vaddq_f32(v57, vmulq_f32(v38, vaddq_f32(v55, vmulq_f32(v38, v53)))));
      v60 = *(a2 + 29);
      v61 = vmaxq_f32(v58, v60);
      v62 = vmaxq_f32(v59, v60);
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vsubq_f32(v63, vandq_s8(v16, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v64, vandq_s8(v16, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v61, v65);
      v68 = vsubq_f32(v62, v66);
      v69 = *(a2 + 45);
      v70 = *(a2 + 46);
      v71 = vaddq_f32(v56, vmulq_f32(v69, v67));
      v72 = vaddq_f32(v56, vmulq_f32(v69, v68));
      v74 = *(a2 + 47);
      v73 = *(a2 + 48);
      v75 = vaddq_f32(v16, vmulq_f32(v67, vaddq_f32(v73, vmulq_f32(v67, vaddq_f32(vaddq_f32(v70, vmulq_f32(v67, v74)), vmulq_f32(vmulq_f32(v67, v67), v71))))));
      v76 = vaddq_f32(v16, vmulq_f32(v68, vaddq_f32(v73, vmulq_f32(v68, vaddq_f32(vaddq_f32(v70, vmulq_f32(v74, v68)), vmulq_f32(vmulq_f32(v68, v68), v72))))));
      v77 = vcvtq_s32_f32(v66);
      v78 = *(a2 + 33);
      v79 = vmulq_f32(v76, vshlq_n_s32(vaddq_s32(v78, v77), 0x17uLL));
      v80 = *(a2 + 15);
      v81 = (v6 + v11);
      v81[-1] = vbslq_s8(v80, v13, vmulq_f32(v75, vshlq_n_s32(vaddq_s32(v78, vcvtq_s32_f32(v65)), 0x17uLL)));
      *v81 = vbslq_s8(v80, v14, v79);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v82 = 16 * v10;
    v83 = *(v7 + v82);
    v84 = *(a2 + 5);
    v85 = *(a2 + 115);
    v86 = vbslq_s8(vcgtq_f32(vandq_s8(v84, vceqq_f32(v85, *(a2 + 75))), *(a2 + 75)), v84, vminq_f32(vmaxq_f32(v83, *(a2 + 75)), v84));
    v87 = vorrq_s8(vandq_s8(*(a2 + 19), v86), v84);
    v88 = vandq_s8(v84, vcgtq_f32(v87, *(a2 + 23)));
    v89 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v86, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v86))), *(a2 + 22)), v88);
    v90 = vsubq_f32(vsubq_f32(v87, v84), vmulq_f32(vmulq_f32(*(a2 + 24), v88), v87));
    v91 = vmulq_f32(v90, v90);
    v92 = vmaxq_f32(vmulq_f32(v85, vaddq_f32(v89, vmulq_f32(v90, vaddq_f32(*(a2 + 43), vmulq_f32(v90, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v90)), vmulq_f32(v91, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v90)), vmulq_f32(v91, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v90))))))))))), *(a2 + 29));
    v93 = vcvtq_f32_s32(vcvtq_s32_f32(v92));
    v94 = vsubq_f32(v93, vandq_s8(v84, vcgtq_f32(v93, v92)));
    v95 = vsubq_f32(v92, v94);
    *(v6 + v82) = vbslq_s8(*(a2 + 15), v83, vmulq_f32(vaddq_f32(v84, vmulq_f32(v95, vaddq_f32(*(a2 + 48), vmulq_f32(v95, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v95)), vmulq_f32(vmulq_f32(v95, v95), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v95)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v94)), 0x17uLL)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = vmaxq_f32(v13, v15);
      v17 = vmaxq_f32(v14, v15);
      v18 = *(a2 + 5);
      v19 = vminq_f32(v16, v18);
      v20 = vminq_f32(v17, v18);
      v21 = *(a2 + 19);
      v22 = *(a2 + 20);
      v23 = vorrq_s8(vandq_s8(v21, v19), v18);
      v24 = vorrq_s8(vandq_s8(v21, v20), v18);
      v25 = *(a2 + 21);
      v26 = *(a2 + 22);
      v27 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v22, v19)));
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v22, v20)));
      v29 = *(a2 + 23);
      v30 = *(a2 + 24);
      v31 = vandq_s8(v18, vcgtq_f32(v23, v29));
      v32 = vandq_s8(v18, vcgtq_f32(v24, v29));
      v33 = vaddq_f32(vsubq_f32(v27, v26), v31);
      v34 = vsubq_f32(vsubq_f32(v23, v18), vmulq_f32(vmulq_f32(v30, v31), v23));
      v35 = vsubq_f32(vsubq_f32(v24, v18), vmulq_f32(vmulq_f32(v30, v32), v24));
      v36 = *(a2 + 25);
      v37 = *(a2 + 26);
      v38 = *(a2 + 27);
      v39 = *(a2 + 28);
      v40 = vaddq_f32(vaddq_f32(vsubq_f32(v28, v26), v32), vmulq_f32(v35, vaddq_f32(vaddq_f32(v38, vmulq_f32(v35, v39)), vmulq_f32(vmulq_f32(v35, v35), vaddq_f32(v36, vmulq_f32(v37, v35))))));
      v41 = *(a2 + 115);
      v42 = vmulq_f32(v41, vaddq_f32(v33, vmulq_f32(v34, vaddq_f32(vaddq_f32(v38, vmulq_f32(v34, v39)), vmulq_f32(vmulq_f32(v34, v34), vaddq_f32(v36, vmulq_f32(v37, v34)))))));
      v43 = vmulq_f32(v41, v40);
      v45 = *(a2 + 29);
      v44 = *(a2 + 30);
      v46 = vmaxq_f32(v42, v45);
      v47 = vmaxq_f32(v43, v45);
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vsubq_f32(v48, vandq_s8(v18, vcgtq_f32(v48, v46)));
      v51 = vsubq_f32(v49, vandq_s8(v18, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v46, v50);
      v53 = vsubq_f32(v47, v51);
      v54 = *(a2 + 31);
      v55 = *(a2 + 32);
      v56 = vmulq_f32(v53, vaddq_f32(v55, vmulq_f32(v53, vaddq_f32(v44, vmulq_f32(v54, v53)))));
      v57 = vaddq_f32(v18, vmulq_f32(v52, vaddq_f32(v55, vmulq_f32(v52, vaddq_f32(v44, vmulq_f32(v54, v52))))));
      v58 = vcvtq_s32_f32(v50);
      v59 = *(a2 + 33);
      v60 = vmulq_f32(vaddq_f32(v18, v56), vshlq_n_s32(vaddq_s32(v59, vcvtq_s32_f32(v51)), 0x17uLL));
      v61 = *(a2 + 15);
      v62 = (v6 + v11);
      v62[-1] = vbslq_s8(v61, v13, vmulq_f32(v57, vshlq_n_s32(vaddq_s32(v59, v58), 0x17uLL)));
      *v62 = vbslq_s8(v61, v14, v60);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v63 = 16 * v10;
    v64 = *(v7 + v63);
    v65 = *(a2 + 5);
    v66 = vminq_f32(vmaxq_f32(v64, *(a2 + 75)), v65);
    v67 = vorrq_s8(vandq_s8(*(a2 + 19), v66), v65);
    v68 = vandq_s8(v65, vcgtq_f32(v67, *(a2 + 23)));
    v69 = vsubq_f32(vsubq_f32(v67, v65), vmulq_f32(vmulq_f32(*(a2 + 24), v68), v67));
    v70 = vmaxq_f32(vmulq_f32(*(a2 + 115), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v66, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v66))), *(a2 + 22)), v68), vmulq_f32(v69, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v69, *(a2 + 28))), vmulq_f32(vmulq_f32(v69, v69), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v69))))))), *(a2 + 29));
    v71 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
    v72 = vsubq_f32(v71, vandq_s8(v65, vcgtq_f32(v71, v70)));
    v73 = vsubq_f32(v70, v72);
    *(v6 + v63) = vbslq_s8(*(a2 + 15), v64, vmulq_f32(vaddq_f32(v65, vmulq_f32(v73, vaddq_f32(*(a2 + 32), vmulq_f32(v73, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v73)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v72)), 0x17uLL)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = vmaxq_f32(v13, v15);
      v17 = vmaxq_f32(v14, v15);
      v18 = *(a2 + 15);
      v19 = vbslq_s8(v18, v13, v16);
      v20 = vbslq_s8(v18, v14, v17);
      v21 = *(a2 + 75);
      v22 = vcgtq_f32(v21, v19);
      v23 = vcgtq_f32(v21, v20);
      v24 = *(a2 + 5);
      v26 = *(a2 + 33);
      v25 = *(a2 + 34);
      v27 = vmulq_f32(v19, vbslq_s8(v22, v25, v24));
      v28 = vmulq_f32(v20, vbslq_s8(v23, v25, v24));
      v29 = *(a2 + 84);
      v30 = vminq_f32(v27, v29);
      v31 = vminq_f32(v28, v29);
      v32 = *(a2 + 19);
      v33 = *(a2 + 20);
      v34 = vorrq_s8(vandq_s8(v32, v30), v24);
      v35 = vorrq_s8(vandq_s8(v32, v31), v24);
      v36 = *(a2 + 21);
      v37 = *(a2 + 22);
      v38 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v33, v31)));
      v39 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v33, v30))), v37);
      v40 = *(a2 + 23);
      v41 = *(a2 + 24);
      v42 = vandq_s8(v24, vcgtq_f32(v34, v40));
      v43 = vandq_s8(v24, vcgtq_f32(v35, v40));
      v44 = vaddq_f32(v39, v42);
      v45 = vaddq_f32(vsubq_f32(v38, v37), v43);
      v46 = vsubq_f32(vsubq_f32(v34, v24), vmulq_f32(vmulq_f32(v41, v42), v34));
      v47 = vsubq_f32(vsubq_f32(v35, v24), vmulq_f32(vmulq_f32(v41, v43), v35));
      v48 = *(a2 + 25);
      v49 = *(a2 + 26);
      v50 = vaddq_f32(v48, vmulq_f32(v49, v46));
      v51 = vaddq_f32(v48, vmulq_f32(v49, v47));
      v52 = *(a2 + 27);
      v53 = *(a2 + 28);
      v54 = *(a2 + 115);
      v55 = vmulq_f32(v54, vaddq_f32(v44, vmulq_f32(v46, vaddq_f32(vaddq_f32(v52, vmulq_f32(v46, v53)), vmulq_f32(vmulq_f32(v46, v46), v50)))));
      v56 = vmulq_f32(v54, vaddq_f32(v45, vmulq_f32(v47, vaddq_f32(vaddq_f32(v52, vmulq_f32(v47, v53)), vmulq_f32(vmulq_f32(v47, v47), v51)))));
      v57 = *(a2 + 29);
      v58 = *(a2 + 30);
      v59 = vmaxq_f32(v55, v57);
      v60 = vmaxq_f32(v56, v57);
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v59));
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vsubq_f32(v61, vandq_s8(v24, vcgtq_f32(v61, v59)));
      v64 = vsubq_f32(v62, vandq_s8(v24, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v59, v63);
      v66 = vsubq_f32(v60, v64);
      v67 = *(a2 + 31);
      v68 = *(a2 + 32);
      v69 = vaddq_f32(v24, vmulq_f32(v65, vaddq_f32(v68, vmulq_f32(v65, vaddq_f32(v58, vmulq_f32(v67, v65))))));
      v70 = vaddq_f32(v24, vmulq_f32(v66, vaddq_f32(v68, vmulq_f32(v66, vaddq_f32(v58, vmulq_f32(v67, v66))))));
      v71 = *(a2 + 36);
      v72 = (v6 + v11);
      v72[-1] = vbslq_s8(v18, v13, veorq_s8(vandq_s8(v71, v19), vmulq_f32(v69, vshlq_n_s32(vaddq_s32(v26, vcvtq_s32_f32(v63)), 0x17uLL))));
      *v72 = vbslq_s8(v18, v14, veorq_s8(vandq_s8(v71, v20), vmulq_f32(v70, vshlq_n_s32(vaddq_s32(v26, vcvtq_s32_f32(v64)), 0x17uLL))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v73 = 16 * v10;
    v74 = *(v7 + v73);
    v75 = *(a2 + 15);
    v76 = vbslq_s8(v75, v74, vmaxq_f32(v74, *(a2 + 82)));
    v77 = *(a2 + 5);
    v78 = vminq_f32(vmulq_f32(v76, vbslq_s8(vcgtq_f32(*(a2 + 75), v76), *(a2 + 34), v77)), *(a2 + 84));
    v79 = vorrq_s8(vandq_s8(*(a2 + 19), v78), v77);
    v80 = vandq_s8(v77, vcgtq_f32(v79, *(a2 + 23)));
    v81 = vsubq_f32(vsubq_f32(v79, v77), vmulq_f32(vmulq_f32(*(a2 + 24), v80), v79));
    v82 = vmaxq_f32(vmulq_f32(*(a2 + 115), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v78, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v78))), *(a2 + 22)), v80), vmulq_f32(v81, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v81, *(a2 + 28))), vmulq_f32(vmulq_f32(v81, v81), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v81))))))), *(a2 + 29));
    v83 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
    v84 = vsubq_f32(v83, vandq_s8(v77, vcgtq_f32(v83, v82)));
    v85 = vsubq_f32(v82, v84);
    *(v6 + v73) = vbslq_s8(v75, v74, veorq_s8(vandq_s8(*(a2 + 36), v76), vmulq_f32(vaddq_f32(v77, vmulq_f32(v85, vaddq_f32(*(a2 + 32), vmulq_f32(v85, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v85)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v84)), 0x17uLL))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getquicktime_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = vmaxq_f32(v13, v15);
      v17 = vmaxq_f32(v14, v15);
      v18 = *(a2 + 15);
      v19 = vbslq_s8(v18, v13, v16);
      v20 = vbslq_s8(v18, v14, v17);
      v21 = *(a2 + 75);
      v22 = *(a2 + 5);
      v23 = *(a2 + 33);
      v24 = *(a2 + 34);
      v25 = vmulq_f32(v19, vbslq_s8(vcgtq_f32(v21, v19), v24, v22));
      v26 = vmulq_f32(v20, vbslq_s8(vcgtq_f32(v21, v20), v24, v22));
      v27 = *(a2 + 84);
      v28 = vminq_f32(v25, v27);
      v29 = *(a2 + 115);
      v30 = vminq_f32(v26, v27);
      v31 = vcgtq_f32(vandq_s8(v22, vceqq_f32(v29, v21)), v21);
      v32 = vbslq_s8(v31, v22, v28);
      v33 = vbslq_s8(v31, v22, v30);
      v35 = *(a2 + 19);
      v34 = *(a2 + 20);
      v36 = vorrq_s8(vandq_s8(v35, v32), v22);
      v37 = vorrq_s8(vandq_s8(v35, v33), v22);
      v38 = *(a2 + 21);
      v39 = *(a2 + 22);
      v40 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v34, v33)));
      v41 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v34, v32))), v39);
      v42 = *(a2 + 23);
      v43 = *(a2 + 24);
      v44 = vandq_s8(v22, vcgtq_f32(v36, v42));
      v45 = vandq_s8(v22, vcgtq_f32(v37, v42));
      v46 = vaddq_f32(v41, v44);
      v47 = vmulq_f32(v43, v44);
      v48 = vmulq_f32(v43, v45);
      v49 = vaddq_f32(vsubq_f32(v40, v39), v45);
      v50 = vsubq_f32(vsubq_f32(v36, v22), vmulq_f32(v47, v36));
      v51 = vsubq_f32(vsubq_f32(v37, v22), vmulq_f32(v48, v37));
      v52 = vmulq_f32(v50, v50);
      v53 = *(a2 + 38);
      v54 = *(a2 + 39);
      v55 = *(a2 + 36);
      v56 = *(a2 + 37);
      v57 = vaddq_f32(v56, vmulq_f32(v53, v50));
      v58 = vaddq_f32(v56, vmulq_f32(v53, v51));
      v59 = *(a2 + 40);
      v60 = *(a2 + 41);
      v61 = vaddq_f32(v54, vmulq_f32(v59, v50));
      v62 = vaddq_f32(v54, vmulq_f32(v59, v51));
      v63 = *(a2 + 42);
      v64 = *(a2 + 43);
      v65 = vaddq_f32(v60, vmulq_f32(v63, v50));
      v66 = vaddq_f32(v60, vmulq_f32(v63, v51));
      v67 = vmulq_f32(v51, v51);
      v68 = vmulq_f32(v29, vaddq_f32(v46, vmulq_f32(v50, vaddq_f32(v64, vmulq_f32(v50, vaddq_f32(v65, vmulq_f32(v52, vaddq_f32(v57, vmulq_f32(v52, v61)))))))));
      v69 = vmulq_f32(v29, vaddq_f32(v49, vmulq_f32(v51, vaddq_f32(v64, vmulq_f32(v51, vaddq_f32(v66, vmulq_f32(v67, vaddq_f32(v58, vmulq_f32(v67, v62)))))))));
      v70 = *(a2 + 29);
      v71 = vmaxq_f32(v68, v70);
      v72 = vmaxq_f32(v69, v70);
      v73 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
      v74 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
      v75 = vsubq_f32(v73, vandq_s8(v22, vcgtq_f32(v73, v71)));
      v76 = vsubq_f32(v74, vandq_s8(v22, vcgtq_f32(v74, v72)));
      v77 = vsubq_f32(v71, v75);
      v78 = vsubq_f32(v72, v76);
      v79 = *(a2 + 44);
      v80 = *(a2 + 45);
      v81 = vaddq_f32(v79, vmulq_f32(v80, v77));
      v82 = vaddq_f32(v79, vmulq_f32(v80, v78));
      v83 = *(a2 + 46);
      v84 = *(a2 + 47);
      v85 = vaddq_f32(vaddq_f32(v83, vmulq_f32(v84, v78)), vmulq_f32(vmulq_f32(v78, v78), v82));
      v86 = *(a2 + 48);
      v87 = (v6 + v11);
      v87[-1] = vbslq_s8(v18, v13, veorq_s8(vandq_s8(v55, v19), vmulq_f32(vaddq_f32(v22, vmulq_f32(v77, vaddq_f32(v86, vmulq_f32(v77, vaddq_f32(vaddq_f32(v83, vmulq_f32(v77, v84)), vmulq_f32(vmulq_f32(v77, v77), v81)))))), vshlq_n_s32(vaddq_s32(v23, vcvtq_s32_f32(v75)), 0x17uLL))));
      *v87 = vbslq_s8(v18, v14, veorq_s8(vandq_s8(v55, v20), vmulq_f32(vaddq_f32(v22, vmulq_f32(v78, vaddq_f32(v86, vmulq_f32(v78, v85)))), vshlq_n_s32(vaddq_s32(v23, vcvtq_s32_f32(v76)), 0x17uLL))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v88 = 16 * v10;
    v89 = *(v7 + v88);
    v90 = *(a2 + 15);
    v91 = vbslq_s8(v90, v89, vmaxq_f32(v89, *(a2 + 82)));
    v92 = *(a2 + 5);
    v93 = *(a2 + 115);
    v94 = vbslq_s8(vcgtq_f32(vandq_s8(v92, vceqq_f32(v93, *(a2 + 75))), *(a2 + 75)), v92, vminq_f32(vmulq_f32(v91, vbslq_s8(vcgtq_f32(*(a2 + 75), v91), *(a2 + 34), v92)), *(a2 + 84)));
    v95 = vorrq_s8(vandq_s8(*(a2 + 19), v94), v92);
    v96 = vandq_s8(v92, vcgtq_f32(v95, *(a2 + 23)));
    v97 = vsubq_f32(vsubq_f32(v95, v92), vmulq_f32(vmulq_f32(*(a2 + 24), v96), v95));
    v98 = vmulq_f32(v97, v97);
    v99 = vmaxq_f32(vmulq_f32(v93, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v94))), *(a2 + 22)), v96), vmulq_f32(v97, vaddq_f32(*(a2 + 43), vmulq_f32(v97, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v97)), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v97)), vmulq_f32(v98, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v97))))))))))), *(a2 + 29));
    v100 = vcvtq_f32_s32(vcvtq_s32_f32(v99));
    v101 = vsubq_f32(v100, vandq_s8(v92, vcgtq_f32(v100, v99)));
    v102 = vsubq_f32(v99, v101);
    *(v6 + v88) = vbslq_s8(v90, v89, veorq_s8(vandq_s8(*(a2 + 36), v91), vmulq_f32(vaddq_f32(v92, vmulq_f32(v102, vaddq_f32(*(a2 + 48), vmulq_f32(v102, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v102)), vmulq_f32(vmulq_f32(v102, v102), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v102)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v101)), 0x17uLL))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_fast_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
        v34 = 0;
        v35 = 16 * v8;
        v36 = 16 * v7;
        v37 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v38 = 0;
          do
          {
            v39 = v5[v38 / 0x10];
            v40 = vminq_f32(vmaxq_f32(v39, *(a2 + 75)), *(a2 + 5));
            v6[v38 / 0x10] = vbslq_s8(*(a2 + 15), v39, vmulq_f32(v40, v40));
            v38 += 16;
          }

          while (v37 != v38);
          ++v34;
          v5 = (v5 + v35);
          v6 = (v6 + v36);
        }

        while (v34 != v3);
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
          v18 = v16;
          v19 = v15;
          v20 = v5[v17 - 2];
          v21 = v5[v17 - 1];
          v22 = v5[v17];
          v23 = v5[v17 + 1];
          v24 = *(a2 + 75);
          v25 = *(a2 + 5);
          v26 = vminq_f32(vmaxq_f32(v20, v24), v25);
          v27 = vminq_f32(vmaxq_f32(v21, v24), v25);
          v28 = vminq_f32(vmaxq_f32(v22, v24), v25);
          v29 = vminq_f32(vmaxq_f32(v23, v24), v25);
          v30 = *(a2 + 15);
          v31 = &v6[v17];
          v31[-2] = vbslq_s8(v30, v20, vmulq_f32(v26, v26));
          v31[-1] = vbslq_s8(v30, v21, vmulq_f32(v27, v27));
          v14 += 4;
          *v31 = vbslq_s8(v30, v22, vmulq_f32(v28, v28));
          v31[1] = vbslq_s8(v30, v23, vmulq_f32(v29, v29));
          v17 += 4;
          v16 += 4;
          v15 = v19 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v32 = *v18++;
            v33 = vminq_f32(vmaxq_f32(v32, *(a2 + 75)), *(a2 + 5));
            *v19++ = vbslq_s8(*(a2 + 15), v32, vmulq_f32(v33, v33));
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

uint64_t Getinv_quicktime_fixed_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v17 = *(a2 + 75);
      v18 = *(a2 + 5);
      v19 = *(a2 + 6);
      v20 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v13, v17), v18)));
      v21 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v14, v17), v18)));
      v22 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v15, v17), v18)));
      v23 = vmulq_f32(v19, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v16, v17), v18)));
      v24 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
      v25 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
      v28 = *(a2 + 7);
      v29 = *(a2 + 8);
      v30 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v20, v24), v28));
      v31 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v21, v25), v28));
      v32 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v22, v26), v28));
      v33 = vrsqrteq_f32(vaddq_f32(v28, vsubq_f32(v23, v27)));
      v34 = vaddq_f32(v29, v24);
      v35 = vaddq_f32(v29, v25);
      v36 = vaddq_f32(v29, v26);
      v37 = vaddq_f32(v29, v27);
      v38 = *(a2 + 9);
      v39 = *(a2 + 10);
      v40 = vsubq_f32(v34, vmulq_f32(v30, v38));
      v41 = *(a2 + 116);
      v42 = vmulq_f32(v41, v40);
      v43 = vmulq_f32(v41, vsubq_f32(v35, vmulq_f32(v31, v38)));
      v44 = vmulq_f32(v41, vsubq_f32(v36, vmulq_f32(v32, v38)));
      v45 = vmulq_f32(v41, vsubq_f32(v37, vmulq_f32(v33, v38)));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
      v50 = vsubq_f32(v46, vandq_s8(v18, vcgtq_f32(v46, v42)));
      v51 = vsubq_f32(v47, vandq_s8(v18, vcgtq_f32(v47, v43)));
      v52 = vsubq_f32(v48, vandq_s8(v18, vcgtq_f32(v48, v44)));
      v53 = vsubq_f32(v49, vandq_s8(v18, vcgtq_f32(v49, v45)));
      v54 = *(a2 + 11);
      v55 = *(a2 + 12);
      v56 = vmulq_f32(vrecpeq_f32(vsubq_f32(v54, vsubq_f32(v42, v50))), v55);
      v57 = vmulq_f32(vrecpeq_f32(vsubq_f32(v54, vsubq_f32(v43, v51))), v55);
      v58 = vmulq_f32(vrecpeq_f32(vsubq_f32(v54, vsubq_f32(v44, v52))), v55);
      v59 = vmulq_f32(vrecpeq_f32(vsubq_f32(v54, vsubq_f32(v45, v53))), v55);
      v60 = vmaxq_f32(vaddq_f32(vaddq_f32(v50, v39), vmulq_f32(v56, v56)), v17);
      v61 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v51), vmulq_f32(v57, v57)), v17);
      v62 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v52), vmulq_f32(v58, v58)), v17);
      v63 = vmaxq_f32(vaddq_f32(vaddq_f32(v39, v53), vmulq_f32(v59, v59)), v17);
      v64 = *(a2 + 13);
      v65 = *(a2 + 14);
      v66 = vminq_f32(v61, v64);
      v67 = vminq_f32(v62, v64);
      v68 = vminq_f32(v63, v64);
      v69 = vmulq_f32(vminq_f32(v60, v64), v65);
      v70 = vmulq_f32(v66, v65);
      v71 = vcvtq_s32_f32(vmulq_f32(v67, v65));
      v72 = *(a2 + 15);
      v73 = (v6 + v11);
      v73[-2] = vbslq_s8(v72, v13, vcvtq_s32_f32(v69));
      v73[-1] = vbslq_s8(v72, v14, vcvtq_s32_f32(v70));
      *v73 = vbslq_s8(v72, v15, v71);
      v73[1] = vbslq_s8(v72, v16, vcvtq_s32_f32(vmulq_f32(v68, v65)));
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
      v74 = *(v7 + 16 * v10);
      v75 = *(a2 + 75);
      v76 = *(a2 + 5);
      v77 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vminq_f32(vmaxq_f32(v74, v75), v76)));
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v79 = vmulq_f32(*(a2 + 116), vsubq_f32(vaddq_f32(*(a2 + 8), v78), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v77, v78))), *(a2 + 9))));
      v80 = vcvtq_f32_s32(vcvtq_s32_f32(v79));
      v81 = vsubq_f32(v80, vandq_s8(v76, vcgtq_f32(v80, v79)));
      v82 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v79, v81))), *(a2 + 12));
      *(v6 + 16 * v10++) = vbslq_s8(*(a2 + 15), v74, vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v81), vmulq_f32(v82, v82)), v75), *(a2 + 13)), *(a2 + 14))));
    }

    while (v10 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_nice_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = *(a2 + 5);
      v17 = vminq_f32(vmaxq_f32(v13, v15), v16);
      v18 = vminq_f32(vmaxq_f32(v14, v15), v16);
      v19 = *(a2 + 116);
      v20 = vcgtq_f32(vandq_s8(v16, vceqq_f32(v19, v15)), v15);
      v21 = vbslq_s8(v20, v16, v17);
      v22 = vbslq_s8(v20, v16, v18);
      v23 = *(a2 + 19);
      v24 = *(a2 + 20);
      v25 = vorrq_s8(vandq_s8(v23, v21), v16);
      v26 = *(a2 + 21);
      v27 = *(a2 + 22);
      v28 = vorrq_s8(vandq_s8(v23, v22), v16);
      v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v24, v22)));
      v30 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v24, v21))), v27);
      v31 = *(a2 + 23);
      v32 = *(a2 + 24);
      v33 = vsubq_f32(v29, v27);
      v34 = vandq_s8(v16, vcgtq_f32(v25, v31));
      v35 = vandq_s8(v16, vcgtq_f32(v28, v31));
      v36 = vaddq_f32(v30, v34);
      v37 = vsubq_f32(vsubq_f32(v25, v16), vmulq_f32(vmulq_f32(v32, v34), v25));
      v38 = vsubq_f32(vsubq_f32(v28, v16), vmulq_f32(vmulq_f32(v32, v35), v28));
      v39 = vmulq_f32(v37, v37);
      v40 = *(a2 + 37);
      v41 = *(a2 + 38);
      v42 = vaddq_f32(v40, vmulq_f32(v41, v37));
      v43 = vaddq_f32(v40, vmulq_f32(v41, v38));
      v44 = *(a2 + 39);
      v45 = *(a2 + 40);
      v46 = vaddq_f32(v44, vmulq_f32(v45, v37));
      v47 = vaddq_f32(v44, vmulq_f32(v45, v38));
      v48 = *(a2 + 41);
      v49 = *(a2 + 42);
      v50 = vaddq_f32(v48, vmulq_f32(v49, v37));
      v51 = vaddq_f32(v48, vmulq_f32(v49, v38));
      v52 = vmulq_f32(v38, v38);
      v53 = vaddq_f32(v51, vmulq_f32(v52, vaddq_f32(v43, vmulq_f32(v52, v47))));
      v54 = vmulq_f32(v37, vaddq_f32(v50, vmulq_f32(v39, vaddq_f32(v42, vmulq_f32(v39, v46)))));
      v55 = *(a2 + 43);
      v56 = *(a2 + 44);
      v57 = vaddq_f32(v33, v35);
      v58 = vmulq_f32(v19, vaddq_f32(v36, vmulq_f32(v37, vaddq_f32(v55, v54))));
      v59 = vmulq_f32(v19, vaddq_f32(v57, vmulq_f32(v38, vaddq_f32(v55, vmulq_f32(v38, v53)))));
      v60 = *(a2 + 29);
      v61 = vmaxq_f32(v58, v60);
      v62 = vmaxq_f32(v59, v60);
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vsubq_f32(v63, vandq_s8(v16, vcgtq_f32(v63, v61)));
      v66 = vsubq_f32(v64, vandq_s8(v16, vcgtq_f32(v64, v62)));
      v67 = vsubq_f32(v61, v65);
      v68 = vsubq_f32(v62, v66);
      v69 = *(a2 + 45);
      v70 = *(a2 + 46);
      v71 = vaddq_f32(v56, vmulq_f32(v69, v67));
      v72 = vaddq_f32(v56, vmulq_f32(v69, v68));
      v74 = *(a2 + 47);
      v73 = *(a2 + 48);
      v75 = vaddq_f32(v16, vmulq_f32(v67, vaddq_f32(v73, vmulq_f32(v67, vaddq_f32(vaddq_f32(v70, vmulq_f32(v67, v74)), vmulq_f32(vmulq_f32(v67, v67), v71))))));
      v76 = vaddq_f32(v16, vmulq_f32(v68, vaddq_f32(v73, vmulq_f32(v68, vaddq_f32(vaddq_f32(v70, vmulq_f32(v74, v68)), vmulq_f32(vmulq_f32(v68, v68), v72))))));
      v77 = vcvtq_s32_f32(v66);
      v78 = *(a2 + 33);
      v79 = vmulq_f32(v76, vshlq_n_s32(vaddq_s32(v78, v77), 0x17uLL));
      v80 = *(a2 + 15);
      v81 = (v6 + v11);
      v81[-1] = vbslq_s8(v80, v13, vmulq_f32(v75, vshlq_n_s32(vaddq_s32(v78, vcvtq_s32_f32(v65)), 0x17uLL)));
      *v81 = vbslq_s8(v80, v14, v79);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v82 = 16 * v10;
    v83 = *(v7 + v82);
    v84 = *(a2 + 5);
    v85 = *(a2 + 116);
    v86 = vbslq_s8(vcgtq_f32(vandq_s8(v84, vceqq_f32(v85, *(a2 + 75))), *(a2 + 75)), v84, vminq_f32(vmaxq_f32(v83, *(a2 + 75)), v84));
    v87 = vorrq_s8(vandq_s8(*(a2 + 19), v86), v84);
    v88 = vandq_s8(v84, vcgtq_f32(v87, *(a2 + 23)));
    v89 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v86, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v86))), *(a2 + 22)), v88);
    v90 = vsubq_f32(vsubq_f32(v87, v84), vmulq_f32(vmulq_f32(*(a2 + 24), v88), v87));
    v91 = vmulq_f32(v90, v90);
    v92 = vmaxq_f32(vmulq_f32(v85, vaddq_f32(v89, vmulq_f32(v90, vaddq_f32(*(a2 + 43), vmulq_f32(v90, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v90)), vmulq_f32(v91, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v90)), vmulq_f32(v91, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v90))))))))))), *(a2 + 29));
    v93 = vcvtq_f32_s32(vcvtq_s32_f32(v92));
    v94 = vsubq_f32(v93, vandq_s8(v84, vcgtq_f32(v93, v92)));
    v95 = vsubq_f32(v92, v94);
    *(v6 + v82) = vbslq_s8(*(a2 + 15), v83, vmulq_f32(vaddq_f32(v84, vmulq_f32(v95, vaddq_f32(*(a2 + 48), vmulq_f32(v95, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v95)), vmulq_f32(vmulq_f32(v95, v95), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v95)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v94)), 0x17uLL)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_half_sat_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 75);
      v16 = vmaxq_f32(v13, v15);
      v17 = vmaxq_f32(v14, v15);
      v18 = *(a2 + 5);
      v19 = vminq_f32(v16, v18);
      v20 = vminq_f32(v17, v18);
      v21 = *(a2 + 19);
      v22 = *(a2 + 20);
      v23 = vorrq_s8(vandq_s8(v21, v19), v18);
      v24 = vorrq_s8(vandq_s8(v21, v20), v18);
      v25 = *(a2 + 21);
      v26 = *(a2 + 22);
      v27 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v22, v19)));
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v22, v20)));
      v29 = *(a2 + 23);
      v30 = *(a2 + 24);
      v31 = vandq_s8(v18, vcgtq_f32(v23, v29));
      v32 = vandq_s8(v18, vcgtq_f32(v24, v29));
      v33 = vaddq_f32(vsubq_f32(v27, v26), v31);
      v34 = vsubq_f32(vsubq_f32(v23, v18), vmulq_f32(vmulq_f32(v30, v31), v23));
      v35 = vsubq_f32(vsubq_f32(v24, v18), vmulq_f32(vmulq_f32(v30, v32), v24));
      v36 = *(a2 + 25);
      v37 = *(a2 + 26);
      v38 = *(a2 + 27);
      v39 = *(a2 + 28);
      v40 = vaddq_f32(vaddq_f32(vsubq_f32(v28, v26), v32), vmulq_f32(v35, vaddq_f32(vaddq_f32(v38, vmulq_f32(v35, v39)), vmulq_f32(vmulq_f32(v35, v35), vaddq_f32(v36, vmulq_f32(v37, v35))))));
      v41 = *(a2 + 116);
      v42 = vmulq_f32(v41, vaddq_f32(v33, vmulq_f32(v34, vaddq_f32(vaddq_f32(v38, vmulq_f32(v34, v39)), vmulq_f32(vmulq_f32(v34, v34), vaddq_f32(v36, vmulq_f32(v37, v34)))))));
      v43 = vmulq_f32(v41, v40);
      v45 = *(a2 + 29);
      v44 = *(a2 + 30);
      v46 = vmaxq_f32(v42, v45);
      v47 = vmaxq_f32(v43, v45);
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vsubq_f32(v48, vandq_s8(v18, vcgtq_f32(v48, v46)));
      v51 = vsubq_f32(v49, vandq_s8(v18, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v46, v50);
      v53 = vsubq_f32(v47, v51);
      v54 = *(a2 + 31);
      v55 = *(a2 + 32);
      v56 = vmulq_f32(v53, vaddq_f32(v55, vmulq_f32(v53, vaddq_f32(v44, vmulq_f32(v54, v53)))));
      v57 = vaddq_f32(v18, vmulq_f32(v52, vaddq_f32(v55, vmulq_f32(v52, vaddq_f32(v44, vmulq_f32(v54, v52))))));
      v58 = vcvtq_s32_f32(v50);
      v59 = *(a2 + 33);
      v60 = vmulq_f32(vaddq_f32(v18, v56), vshlq_n_s32(vaddq_s32(v59, vcvtq_s32_f32(v51)), 0x17uLL));
      v61 = *(a2 + 15);
      v62 = (v6 + v11);
      v62[-1] = vbslq_s8(v61, v13, vmulq_f32(v57, vshlq_n_s32(vaddq_s32(v59, v58), 0x17uLL)));
      *v62 = vbslq_s8(v61, v14, v60);
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v63 = 16 * v10;
    v64 = *(v7 + v63);
    v65 = *(a2 + 5);
    v66 = vminq_f32(vmaxq_f32(v64, *(a2 + 75)), v65);
    v67 = vorrq_s8(vandq_s8(*(a2 + 19), v66), v65);
    v68 = vandq_s8(v65, vcgtq_f32(v67, *(a2 + 23)));
    v69 = vsubq_f32(vsubq_f32(v67, v65), vmulq_f32(vmulq_f32(*(a2 + 24), v68), v67));
    v70 = vmaxq_f32(vmulq_f32(*(a2 + 116), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v66, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v66))), *(a2 + 22)), v68), vmulq_f32(v69, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v69, *(a2 + 28))), vmulq_f32(vmulq_f32(v69, v69), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v69))))))), *(a2 + 29));
    v71 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
    v72 = vsubq_f32(v71, vandq_s8(v65, vcgtq_f32(v71, v70)));
    v73 = vsubq_f32(v70, v72);
    *(v6 + v63) = vbslq_s8(*(a2 + 15), v64, vmulq_f32(vaddq_f32(v65, vmulq_f32(v73, vaddq_f32(*(a2 + 32), vmulq_f32(v73, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v73)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v72)), 0x17uLL)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_half_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = vmaxq_f32(v13, v15);
      v17 = vmaxq_f32(v14, v15);
      v18 = *(a2 + 15);
      v19 = vbslq_s8(v18, v13, v16);
      v20 = vbslq_s8(v18, v14, v17);
      v21 = *(a2 + 75);
      v22 = vcgtq_f32(v21, v19);
      v23 = vcgtq_f32(v21, v20);
      v24 = *(a2 + 5);
      v26 = *(a2 + 33);
      v25 = *(a2 + 34);
      v27 = vmulq_f32(v19, vbslq_s8(v22, v25, v24));
      v28 = vmulq_f32(v20, vbslq_s8(v23, v25, v24));
      v29 = *(a2 + 90);
      v30 = vminq_f32(v27, v29);
      v31 = vminq_f32(v28, v29);
      v32 = *(a2 + 19);
      v33 = *(a2 + 20);
      v34 = vorrq_s8(vandq_s8(v32, v30), v24);
      v35 = vorrq_s8(vandq_s8(v32, v31), v24);
      v36 = *(a2 + 21);
      v37 = *(a2 + 22);
      v38 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v33, v31)));
      v39 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v33, v30))), v37);
      v40 = *(a2 + 23);
      v41 = *(a2 + 24);
      v42 = vandq_s8(v24, vcgtq_f32(v34, v40));
      v43 = vandq_s8(v24, vcgtq_f32(v35, v40));
      v44 = vaddq_f32(v39, v42);
      v45 = vaddq_f32(vsubq_f32(v38, v37), v43);
      v46 = vsubq_f32(vsubq_f32(v34, v24), vmulq_f32(vmulq_f32(v41, v42), v34));
      v47 = vsubq_f32(vsubq_f32(v35, v24), vmulq_f32(vmulq_f32(v41, v43), v35));
      v48 = *(a2 + 25);
      v49 = *(a2 + 26);
      v50 = vaddq_f32(v48, vmulq_f32(v49, v46));
      v51 = vaddq_f32(v48, vmulq_f32(v49, v47));
      v52 = *(a2 + 27);
      v53 = *(a2 + 28);
      v54 = *(a2 + 116);
      v55 = vmulq_f32(v54, vaddq_f32(v44, vmulq_f32(v46, vaddq_f32(vaddq_f32(v52, vmulq_f32(v46, v53)), vmulq_f32(vmulq_f32(v46, v46), v50)))));
      v56 = vmulq_f32(v54, vaddq_f32(v45, vmulq_f32(v47, vaddq_f32(vaddq_f32(v52, vmulq_f32(v47, v53)), vmulq_f32(vmulq_f32(v47, v47), v51)))));
      v57 = *(a2 + 29);
      v58 = *(a2 + 30);
      v59 = vmaxq_f32(v55, v57);
      v60 = vmaxq_f32(v56, v57);
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v59));
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vsubq_f32(v61, vandq_s8(v24, vcgtq_f32(v61, v59)));
      v64 = vsubq_f32(v62, vandq_s8(v24, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v59, v63);
      v66 = vsubq_f32(v60, v64);
      v67 = *(a2 + 31);
      v68 = *(a2 + 32);
      v69 = vaddq_f32(v24, vmulq_f32(v65, vaddq_f32(v68, vmulq_f32(v65, vaddq_f32(v58, vmulq_f32(v67, v65))))));
      v70 = vaddq_f32(v24, vmulq_f32(v66, vaddq_f32(v68, vmulq_f32(v66, vaddq_f32(v58, vmulq_f32(v67, v66))))));
      v71 = *(a2 + 36);
      v72 = (v6 + v11);
      v72[-1] = vbslq_s8(v18, v13, veorq_s8(vandq_s8(v71, v19), vmulq_f32(v69, vshlq_n_s32(vaddq_s32(v26, vcvtq_s32_f32(v63)), 0x17uLL))));
      *v72 = vbslq_s8(v18, v14, veorq_s8(vandq_s8(v71, v20), vmulq_f32(v70, vshlq_n_s32(vaddq_s32(v26, vcvtq_s32_f32(v64)), 0x17uLL))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v73 = 16 * v10;
    v74 = *(v7 + v73);
    v75 = *(a2 + 15);
    v76 = vbslq_s8(v75, v74, vmaxq_f32(v74, *(a2 + 82)));
    v77 = *(a2 + 5);
    v78 = vminq_f32(vmulq_f32(v76, vbslq_s8(vcgtq_f32(*(a2 + 75), v76), *(a2 + 34), v77)), *(a2 + 90));
    v79 = vorrq_s8(vandq_s8(*(a2 + 19), v78), v77);
    v80 = vandq_s8(v77, vcgtq_f32(v79, *(a2 + 23)));
    v81 = vsubq_f32(vsubq_f32(v79, v77), vmulq_f32(vmulq_f32(*(a2 + 24), v80), v79));
    v82 = vmaxq_f32(vmulq_f32(*(a2 + 116), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v78, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v78))), *(a2 + 22)), v80), vmulq_f32(v81, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v81, *(a2 + 28))), vmulq_f32(vmulq_f32(v81, v81), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v81))))))), *(a2 + 29));
    v83 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
    v84 = vsubq_f32(v83, vandq_s8(v77, vcgtq_f32(v83, v82)));
    v85 = vsubq_f32(v82, v84);
    *(v6 + v73) = vbslq_s8(v75, v74, veorq_s8(vandq_s8(*(a2 + 36), v76), vmulq_f32(vaddq_f32(v77, vmulq_f32(v85, vaddq_f32(*(a2 + 32), vmulq_f32(v85, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v85)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v84)), 0x17uLL))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Getinv_quicktime_nice_unpremultTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
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
      v15 = *(a2 + 82);
      v16 = vmaxq_f32(v13, v15);
      v17 = vmaxq_f32(v14, v15);
      v18 = *(a2 + 15);
      v19 = vbslq_s8(v18, v13, v16);
      v20 = vbslq_s8(v18, v14, v17);
      v21 = *(a2 + 75);
      v22 = *(a2 + 5);
      v23 = *(a2 + 33);
      v24 = *(a2 + 34);
      v25 = vmulq_f32(v19, vbslq_s8(vcgtq_f32(v21, v19), v24, v22));
      v26 = vmulq_f32(v20, vbslq_s8(vcgtq_f32(v21, v20), v24, v22));
      v27 = *(a2 + 90);
      v28 = vminq_f32(v25, v27);
      v29 = *(a2 + 116);
      v30 = vminq_f32(v26, v27);
      v31 = vcgtq_f32(vandq_s8(v22, vceqq_f32(v29, v21)), v21);
      v32 = vbslq_s8(v31, v22, v28);
      v33 = vbslq_s8(v31, v22, v30);
      v35 = *(a2 + 19);
      v34 = *(a2 + 20);
      v36 = vorrq_s8(vandq_s8(v35, v32), v22);
      v37 = vorrq_s8(vandq_s8(v35, v33), v22);
      v38 = *(a2 + 21);
      v39 = *(a2 + 22);
      v40 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v34, v33)));
      v41 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v38, vcgtq_f32(v34, v32))), v39);
      v42 = *(a2 + 23);
      v43 = *(a2 + 24);
      v44 = vandq_s8(v22, vcgtq_f32(v36, v42));
      v45 = vandq_s8(v22, vcgtq_f32(v37, v42));
      v46 = vaddq_f32(v41, v44);
      v47 = vmulq_f32(v43, v44);
      v48 = vmulq_f32(v43, v45);
      v49 = vaddq_f32(vsubq_f32(v40, v39), v45);
      v50 = vsubq_f32(vsubq_f32(v36, v22), vmulq_f32(v47, v36));
      v51 = vsubq_f32(vsubq_f32(v37, v22), vmulq_f32(v48, v37));
      v52 = vmulq_f32(v50, v50);
      v53 = *(a2 + 38);
      v54 = *(a2 + 39);
      v55 = *(a2 + 36);
      v56 = *(a2 + 37);
      v57 = vaddq_f32(v56, vmulq_f32(v53, v50));
      v58 = vaddq_f32(v56, vmulq_f32(v53, v51));
      v59 = *(a2 + 40);
      v60 = *(a2 + 41);
      v61 = vaddq_f32(v54, vmulq_f32(v59, v50));
      v62 = vaddq_f32(v54, vmulq_f32(v59, v51));
      v63 = *(a2 + 42);
      v64 = *(a2 + 43);
      v65 = vaddq_f32(v60, vmulq_f32(v63, v50));
      v66 = vaddq_f32(v60, vmulq_f32(v63, v51));
      v67 = vmulq_f32(v51, v51);
      v68 = vmulq_f32(v29, vaddq_f32(v46, vmulq_f32(v50, vaddq_f32(v64, vmulq_f32(v50, vaddq_f32(v65, vmulq_f32(v52, vaddq_f32(v57, vmulq_f32(v52, v61)))))))));
      v69 = vmulq_f32(v29, vaddq_f32(v49, vmulq_f32(v51, vaddq_f32(v64, vmulq_f32(v51, vaddq_f32(v66, vmulq_f32(v67, vaddq_f32(v58, vmulq_f32(v67, v62)))))))));
      v70 = *(a2 + 29);
      v71 = vmaxq_f32(v68, v70);
      v72 = vmaxq_f32(v69, v70);
      v73 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
      v74 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
      v75 = vsubq_f32(v73, vandq_s8(v22, vcgtq_f32(v73, v71)));
      v76 = vsubq_f32(v74, vandq_s8(v22, vcgtq_f32(v74, v72)));
      v77 = vsubq_f32(v71, v75);
      v78 = vsubq_f32(v72, v76);
      v79 = *(a2 + 44);
      v80 = *(a2 + 45);
      v81 = vaddq_f32(v79, vmulq_f32(v80, v77));
      v82 = vaddq_f32(v79, vmulq_f32(v80, v78));
      v83 = *(a2 + 46);
      v84 = *(a2 + 47);
      v85 = vaddq_f32(vaddq_f32(v83, vmulq_f32(v84, v78)), vmulq_f32(vmulq_f32(v78, v78), v82));
      v86 = *(a2 + 48);
      v87 = (v6 + v11);
      v87[-1] = vbslq_s8(v18, v13, veorq_s8(vandq_s8(v55, v19), vmulq_f32(vaddq_f32(v22, vmulq_f32(v77, vaddq_f32(v86, vmulq_f32(v77, vaddq_f32(vaddq_f32(v83, vmulq_f32(v77, v84)), vmulq_f32(vmulq_f32(v77, v77), v81)))))), vshlq_n_s32(vaddq_s32(v23, vcvtq_s32_f32(v75)), 0x17uLL))));
      *v87 = vbslq_s8(v18, v14, veorq_s8(vandq_s8(v55, v20), vmulq_f32(vaddq_f32(v22, vmulq_f32(v78, vaddq_f32(v86, vmulq_f32(v78, v85)))), vshlq_n_s32(vaddq_s32(v23, vcvtq_s32_f32(v76)), 0x17uLL))));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v88 = 16 * v10;
    v89 = *(v7 + v88);
    v90 = *(a2 + 15);
    v91 = vbslq_s8(v90, v89, vmaxq_f32(v89, *(a2 + 82)));
    v92 = *(a2 + 5);
    v93 = *(a2 + 116);
    v94 = vbslq_s8(vcgtq_f32(vandq_s8(v92, vceqq_f32(v93, *(a2 + 75))), *(a2 + 75)), v92, vminq_f32(vmulq_f32(v91, vbslq_s8(vcgtq_f32(*(a2 + 75), v91), *(a2 + 34), v92)), *(a2 + 90)));
    v95 = vorrq_s8(vandq_s8(*(a2 + 19), v94), v92);
    v96 = vandq_s8(v92, vcgtq_f32(v95, *(a2 + 23)));
    v97 = vsubq_f32(vsubq_f32(v95, v92), vmulq_f32(vmulq_f32(*(a2 + 24), v96), v95));
    v98 = vmulq_f32(v97, v97);
    v99 = vmaxq_f32(vmulq_f32(v93, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v94))), *(a2 + 22)), v96), vmulq_f32(v97, vaddq_f32(*(a2 + 43), vmulq_f32(v97, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v97)), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v97)), vmulq_f32(v98, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v97))))))))))), *(a2 + 29));
    v100 = vcvtq_f32_s32(vcvtq_s32_f32(v99));
    v101 = vsubq_f32(v100, vandq_s8(v92, vcgtq_f32(v100, v99)));
    v102 = vsubq_f32(v99, v101);
    *(v6 + v88) = vbslq_s8(v90, v89, veorq_s8(vandq_s8(*(a2 + 36), v91), vmulq_f32(vaddq_f32(v92, vmulq_f32(v102, vaddq_f32(*(a2 + 48), vmulq_f32(v102, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v102)), vmulq_f32(vmulq_f32(v102, v102), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v102)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v101)), 0x17uLL))));
    goto LABEL_3;
  }

  return 0;
}