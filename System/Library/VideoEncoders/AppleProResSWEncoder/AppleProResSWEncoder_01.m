int8x16_t *pixInFullMB<(PixelFormat)1647719521,(ChromaFormat)3>(int8x16_t *result, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v4 = vdupq_n_s32(0x3C3A3D8Eu);
    v5 = vdupq_n_s32(0xBBCD50FC);
    v6 = vdupq_n_s32(0x3D1CA196u);
    v7 = vdupq_n_s32(0xBCACACA1);
    v8 = vdupq_n_s32(0xBCCB76AF);
    v9 = vdupq_n_s32(0x3B7CFE1Fu);
    v10 = -1155247736;
  }

  else if (a4 == 9)
  {
    v4 = vdupq_n_s32(0x3C6620F3u);
    v5 = vdupq_n_s32(0xBBFA388C);
    v6 = vdupq_n_s32(0x3D147BF9u);
    v7 = vdupq_n_s32(0xBCA172BD);
    v8 = vdupq_n_s32(0xBCCDFCB5);
    v9 = vdupq_n_s32(0x3B4FCA56u);
    v10 = -1156570793;
  }

  else
  {
    v4 = vdupq_n_s32(0x3C82F6C9u);
    v5 = vdupq_n_s32(0xBC17308E);
    v6 = vdupq_n_s32(0x3D008E12u);
    v7 = vdupq_n_s32(0xBC946899);
    v8 = vdupq_n_s32(0xBCBB932D);
    v9 = vdupq_n_s32(0x3BC7BB26u);
    v10 = -1148078387;
  }

  v11 = vdupq_n_s32(v10);
  v12 = 0;
  v13 = 8 * a2;
  v14 = result + 7;
  v15.i64[0] = 0xFFFF0000FFFFLL;
  v15.i64[1] = 0xFFFF0000FFFFLL;
  v16.i64[0] = 0xF900F900F900F900;
  v16.i64[1] = 0xF900F900F900F900;
  v17 = vdupq_n_s32(0x3CE000E0u);
  do
  {
    v18 = (a3 + v12);
    v19 = vrev16q_s8(v14[-7]);
    v20 = vrev16q_s8(v14[-6]);
    v21 = vuzp1q_s32(v19, vrev64q_s32(v19));
    v22 = vuzp1q_s32(v20, vrev64q_s32(v20));
    v23 = vzip2q_s64(v21, v22);
    v21.i64[1] = v22.i64[0];
    v24 = vrev16q_s8(v14[-5]);
    v25 = vrev16q_s8(v14[-4]);
    v26 = vuzp1q_s32(v24, vrev64q_s32(v24));
    v27 = vshrq_n_u32(v23, 0x10uLL);
    v28 = vuzp1q_s32(v25, vrev64q_s32(v25));
    v29 = vzip2q_s64(v26, v28);
    v26.i64[1] = v28.i64[0];
    v30 = vshrq_n_u32(v29, 0x10uLL);
    v31 = vcvtq_f32_u32(vshrq_n_u32(v21, 0x10uLL));
    v32 = vcvtq_f32_u32(vandq_s8(v23, v15));
    v33 = vcvtq_f32_u32(v27);
    v34 = vcvtq_f32_u32(vandq_s8(v29, v15));
    v35 = vcvtq_f32_u32(v30);
    v36 = vcvtq_f32_u32(vshrq_n_u32(v26, 0x10uLL));
    *v18 = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v33), vaddq_f32(vmulq_f32(v4, v31), vmulq_f32(v6, v32))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v35), vaddq_f32(vmulq_f32(v4, v36), vmulq_f32(v6, v34))))), v16);
    v18[32] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v33, v17), vaddq_f32(vmulq_f32(v5, v31), vmulq_f32(v7, v32))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v35, v17), vaddq_f32(vmulq_f32(v5, v36), vmulq_f32(v7, v34)))));
    v18[40] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v33), vaddq_f32(vmulq_f32(v31, v17), vmulq_f32(v8, v32))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v35), vaddq_f32(vmulq_f32(v36, v17), vmulq_f32(v8, v34)))));
    v37 = vrev16q_s8(v14[-3]);
    v38 = vrev16q_s8(v14[-2]);
    v39 = vuzp1q_s32(v37, vrev64q_s32(v37));
    v40 = vuzp1q_s32(v38, vrev64q_s32(v38));
    v41 = vzip2q_s64(v39, v40);
    v39.i64[1] = v40.i64[0];
    v42 = vshrq_n_u32(v41, 0x10uLL);
    v43 = vrev16q_s8(v14[-1]);
    v44 = vrev16q_s8(*v14);
    v45 = vuzp1q_s32(v43, vrev64q_s32(v43));
    v46 = vuzp1q_s32(v44, vrev64q_s32(v44));
    v47 = vzip2q_s64(v45, v46);
    v45.i64[1] = v46.i64[0];
    v48 = vshrq_n_u32(v47, 0x10uLL);
    v49 = vcvtq_f32_u32(vshrq_n_u32(v39, 0x10uLL));
    v50 = vcvtq_f32_u32(vandq_s8(v41, v15));
    v51 = vcvtq_f32_u32(v42);
    v52 = vcvtq_f32_u32(vshrq_n_u32(v45, 0x10uLL));
    v53 = vcvtq_f32_u32(vandq_s8(v47, v15));
    v54 = vcvtq_f32_u32(v48);
    v18[64] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v51, v17), vaddq_f32(vmulq_f32(v5, v49), vmulq_f32(v7, v50))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v54, v17), vaddq_f32(vmulq_f32(v5, v52), vmulq_f32(v7, v53)))));
    v18[8] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v51), vaddq_f32(vmulq_f32(v4, v49), vmulq_f32(v6, v50))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v54), vaddq_f32(vmulq_f32(v4, v52), vmulq_f32(v6, v53))))), v16);
    v18[72] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v51), vaddq_f32(vmulq_f32(v49, v17), vmulq_f32(v8, v50))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v54), vaddq_f32(vmulq_f32(v52, v17), vmulq_f32(v8, v53)))));
    v55 = vrev16q_s8(*(&v14[-7] + v13));
    v56 = vrev16q_s8(*(&v14[-6] + v13));
    v57 = vuzp1q_s32(v55, vrev64q_s32(v55));
    v58 = vuzp1q_s32(v56, vrev64q_s32(v56));
    v50.i64[0] = v57.i64[0];
    v50.i64[1] = v58.i64[0];
    v59 = vzip2q_s64(v57, v58);
    v60 = vrev16q_s8(*(&v14[-5] + v13));
    v61 = vrev16q_s8(*(&v14[-4] + v13));
    v62 = vshrq_n_u32(v59, 0x10uLL);
    v63 = vuzp1q_s32(v60, vrev64q_s32(v60));
    v64 = vuzp1q_s32(v61, vrev64q_s32(v61));
    v65 = vzip2q_s64(v63, v64);
    v63.i64[1] = v64.i64[0];
    v66 = vshrq_n_u32(v65, 0x10uLL);
    v67 = vcvtq_f32_u32(vshrq_n_u32(v50, 0x10uLL));
    v68 = vcvtq_f32_u32(vandq_s8(v59, v15));
    v69 = vcvtq_f32_u32(v62);
    v70 = vcvtq_f32_u32(vandq_s8(v65, v15));
    v71 = vcvtq_f32_u32(vshrq_n_u32(v63, 0x10uLL));
    v72 = vcvtq_f32_u32(v66);
    v18[16] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v69), vaddq_f32(vmulq_f32(v4, v67), vmulq_f32(v6, v68))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v72), vaddq_f32(vmulq_f32(v4, v71), vmulq_f32(v6, v70))))), v16);
    v18[48] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v69, v17), vaddq_f32(vmulq_f32(v5, v67), vmulq_f32(v7, v68))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v72, v17), vaddq_f32(vmulq_f32(v5, v71), vmulq_f32(v7, v70)))));
    v18[56] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v69), vaddq_f32(vmulq_f32(v67, v17), vmulq_f32(v8, v68))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v72), vaddq_f32(vmulq_f32(v71, v17), vmulq_f32(v8, v70)))));
    v73 = vrev16q_s8(*(&v14[-3] + v13));
    v74 = vrev16q_s8(*(&v14[-2] + v13));
    v75 = vuzp1q_s32(v73, vrev64q_s32(v73));
    v76 = vuzp1q_s32(v74, vrev64q_s32(v74));
    v77 = vzip2q_s64(v75, v76);
    v75.i64[1] = v76.i64[0];
    v78 = vrev16q_s8(*(&v14[-1] + v13));
    v79 = vrev16q_s8(*(v14 + v13));
    v80 = vuzp1q_s32(v78, vrev64q_s32(v78));
    v81 = vuzp1q_s32(v79, vrev64q_s32(v79));
    v82 = vzip2q_s64(v80, v81);
    v80.i64[1] = v81.i64[0];
    v83 = vshrq_n_u32(v77, 0x10uLL);
    v84 = vshrq_n_u32(v82, 0x10uLL);
    v85 = vcvtq_f32_u32(vshrq_n_u32(v75, 0x10uLL));
    v86 = vcvtq_f32_u32(vandq_s8(v77, v15));
    v87 = vcvtq_f32_u32(v83);
    v88 = vcvtq_f32_u32(vshrq_n_u32(v80, 0x10uLL));
    v89 = vcvtq_f32_u32(vandq_s8(v82, v15));
    v90 = vcvtq_f32_u32(v84);
    v18[24] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v87), vaddq_f32(vmulq_f32(v4, v85), vmulq_f32(v6, v86))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v90), vaddq_f32(vmulq_f32(v4, v88), vmulq_f32(v6, v89))))), v16);
    v18[80] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v87, v17), vaddq_f32(vmulq_f32(v5, v85), vmulq_f32(v7, v86))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v90, v17), vaddq_f32(vmulq_f32(v5, v88), vmulq_f32(v7, v89)))));
    v18[88] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v87), vaddq_f32(vmulq_f32(v85, v17), vmulq_f32(v8, v86))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v90), vaddq_f32(vmulq_f32(v88, v17), vmulq_f32(v8, v89)))));
    v12 += 16;
    v14 = (v14 + a2);
  }

  while (v12 != 128);
  return result;
}

int8x16_t *pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)3>(int8x16_t *result, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v4 = vdupq_n_s32(0x3C59B3D0u);
    v5 = vdupq_n_s32(0xBBF00037);
    v6 = vdupq_n_s32(0x3D371759u);
    v7 = vdupq_n_s32(0xBCC9D834);
    v8 = vdupq_n_s32(0xBCEDD5CA);
    v9 = vdupq_n_s32(0x3B93DD98u);
    v10 = -1153428546;
  }

  else if (a4 == 9)
  {
    v4 = vdupq_n_s32(0x3C86809Du);
    v5 = vdupq_n_s32(0xBC123EDF);
    v6 = vdupq_n_s32(0x3D2D9168u);
    v7 = vdupq_n_s32(0xBCBCB8D2);
    v8 = vdupq_n_s32(0xBCF0C8F2);
    v9 = vdupq_n_s32(0x3B72E48Fu);
    v10 = -1154975109;
  }

  else
  {
    v4 = vdupq_n_s32(0x3C991687u);
    v5 = vdupq_n_s32(0xBC30BAFD);
    v6 = vdupq_n_s32(0x3D1645A2u);
    v7 = vdupq_n_s32(0xBCAD7AC3);
    v8 = vdupq_n_s32(0xBCDB4326);
    v9 = vdupq_n_s32(0x3BE978D5u);
    v10 = -1146465169;
  }

  v11 = vdupq_n_s32(v10);
  v12 = 0;
  v13 = 8 * a2;
  v14 = result + 7;
  v15.i64[0] = 0xF0000000FLL;
  v15.i64[1] = 0xF0000000FLL;
  v16.i64[0] = 0xFFFF0000FFFFLL;
  v16.i64[1] = 0xFFFF0000FFFFLL;
  v17.i64[0] = 0xF900F900F900F900;
  v17.i64[1] = 0xF900F900F900F900;
  v18 = vdupq_n_s32(0x3D02EC21u);
  do
  {
    v19 = vrev16q_s8(v14[-7]);
    v20 = vrev16q_s8(v14[-6]);
    v21 = vuzp1q_s32(v19, vrev64q_s32(v19));
    v22 = vuzp1q_s32(v20, vrev64q_s32(v20));
    v23 = vzip2q_s64(v21, v22);
    v24 = vrev16q_s8(v14[-5]);
    v21.i64[1] = v22.i64[0];
    v25 = vrev16q_s8(v14[-4]);
    v26 = vuzp1q_s32(v24, vrev64q_s32(v24));
    v27 = vuzp1q_s32(v25, vrev64q_s32(v25));
    v28 = (a3 + v12);
    v29 = vzip2q_s64(v26, v27);
    v26.i64[1] = v27.i64[0];
    v27.i64[0] = 0xF0000000FLL;
    v27.i64[1] = 0xF0000000FLL;
    v30 = vsraq_n_u32(v27, v21, 0x10uLL);
    v31 = vaddq_s32(vandq_s8(v23, v16), v15);
    v32.i64[0] = 0xF0000000FLL;
    v32.i64[1] = 0xF0000000FLL;
    v33 = vsraq_n_u32(v32, v23, 0x10uLL);
    v23.i64[0] = 0xF0000000FLL;
    v23.i64[1] = 0xF0000000FLL;
    v34 = vsraq_n_u32(v23, v26, 0x10uLL);
    v35.i64[0] = 0xF0000000FLL;
    v35.i64[1] = 0xF0000000FLL;
    v36 = vsraq_n_u32(v35, v29, 0x10uLL);
    v37 = vcvtq_f32_s32(v30);
    v38 = vcvtq_f32_s32(v31);
    v39 = vaddq_s32(vandq_s8(v29, v16), v15);
    v40 = vcvtq_f32_s32(v33);
    v41 = vcvtq_f32_s32(v39);
    v42 = vcvtq_f32_s32(v36);
    v43 = vcvtq_f32_s32(v34);
    *v28 = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v40), vaddq_f32(vmulq_f32(v4, v37), vmulq_f32(v6, v38))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v42), vaddq_f32(vmulq_f32(v4, v43), vmulq_f32(v6, v41))))), v17);
    v28[32] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v40, v18), vaddq_f32(vmulq_f32(v5, v37), vmulq_f32(v7, v38))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v42, v18), vaddq_f32(vmulq_f32(v5, v43), vmulq_f32(v7, v41)))));
    v28[40] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v40), vaddq_f32(vmulq_f32(v37, v18), vmulq_f32(v8, v38))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v42), vaddq_f32(vmulq_f32(v43, v18), vmulq_f32(v8, v41)))));
    v44 = vrev16q_s8(v14[-3]);
    v45 = vrev16q_s8(v14[-2]);
    v46 = vuzp1q_s32(v44, vrev64q_s32(v44));
    v47 = vuzp1q_s32(v45, vrev64q_s32(v45));
    v48 = vzip2q_s64(v46, v47);
    v49 = vrev16q_s8(v14[-1]);
    v50 = vrev16q_s8(*v14);
    v46.i64[1] = v47.i64[0];
    v51 = vuzp1q_s32(v49, vrev64q_s32(v49));
    v52 = vuzp1q_s32(v50, vrev64q_s32(v50));
    v53 = vzip2q_s64(v51, v52);
    v51.i64[1] = v52.i64[0];
    v52.i64[0] = 0xF0000000FLL;
    v52.i64[1] = 0xF0000000FLL;
    v54 = vsraq_n_u32(v52, v46, 0x10uLL);
    v55 = vaddq_s32(vandq_s8(v48, v16), v15);
    v42.i64[0] = 0xF0000000FLL;
    v42.i64[1] = 0xF0000000FLL;
    v56 = vsraq_n_u32(v42, v48, 0x10uLL);
    v48.i64[0] = 0xF0000000FLL;
    v48.i64[1] = 0xF0000000FLL;
    v57 = vsraq_n_u32(v48, v51, 0x10uLL);
    v58 = vaddq_s32(vandq_s8(v53, v16), v15);
    v36.i64[0] = 0xF0000000FLL;
    v36.i64[1] = 0xF0000000FLL;
    v59 = vsraq_n_u32(v36, v53, 0x10uLL);
    v60 = vcvtq_f32_s32(v54);
    v61 = vcvtq_f32_s32(v55);
    v62 = vcvtq_f32_s32(v56);
    v63 = vcvtq_f32_s32(v57);
    v64 = vcvtq_f32_s32(v58);
    v65 = vcvtq_f32_s32(v59);
    v28[64] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v62, v18), vaddq_f32(vmulq_f32(v5, v60), vmulq_f32(v7, v61))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v65, v18), vaddq_f32(vmulq_f32(v5, v63), vmulq_f32(v7, v64)))));
    v28[8] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v62), vaddq_f32(vmulq_f32(v4, v60), vmulq_f32(v6, v61))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v65), vaddq_f32(vmulq_f32(v4, v63), vmulq_f32(v6, v64))))), v17);
    v28[72] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v62), vaddq_f32(vmulq_f32(v60, v18), vmulq_f32(v8, v61))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v65), vaddq_f32(vmulq_f32(v63, v18), vmulq_f32(v8, v64)))));
    v66 = vrev16q_s8(*(&v14[-7] + v13));
    v67 = vrev16q_s8(*(&v14[-6] + v13));
    v68 = vuzp1q_s32(v66, vrev64q_s32(v66));
    v69 = vuzp1q_s32(v67, vrev64q_s32(v67));
    v70 = vzip2q_s64(v68, v69);
    v71 = vrev16q_s8(*(&v14[-5] + v13));
    v72 = vrev16q_s8(*(&v14[-4] + v13));
    v68.i64[1] = v69.i64[0];
    v73 = vuzp1q_s32(v71, vrev64q_s32(v71));
    v74 = vuzp1q_s32(v72, vrev64q_s32(v72));
    v72.i64[0] = v73.i64[0];
    v72.i64[1] = v74.i64[0];
    v75 = vzip2q_s64(v73, v74);
    v74.i64[0] = 0xF0000000FLL;
    v74.i64[1] = 0xF0000000FLL;
    v76 = vsraq_n_u32(v74, v68, 0x10uLL);
    v77 = vaddq_s32(vandq_s8(v70, v16), v15);
    v65.i64[0] = 0xF0000000FLL;
    v65.i64[1] = 0xF0000000FLL;
    v78 = vsraq_n_u32(v65, v70, 0x10uLL);
    v70.i64[0] = 0xF0000000FLL;
    v70.i64[1] = 0xF0000000FLL;
    v79 = vaddq_s32(vandq_s8(v75, v16), v15);
    v80.i64[0] = 0xF0000000FLL;
    v80.i64[1] = 0xF0000000FLL;
    v81 = vsraq_n_u32(v70, v72, 0x10uLL);
    v82 = vsraq_n_u32(v80, v75, 0x10uLL);
    v83 = vcvtq_f32_s32(v76);
    v84 = vcvtq_f32_s32(v77);
    v85 = vcvtq_f32_s32(v78);
    v86 = vcvtq_f32_s32(v79);
    v87 = vcvtq_f32_s32(v81);
    v88 = vcvtq_f32_s32(v82);
    v28[16] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v85), vaddq_f32(vmulq_f32(v4, v83), vmulq_f32(v6, v84))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v88), vaddq_f32(vmulq_f32(v4, v87), vmulq_f32(v6, v86))))), v17);
    v28[48] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v85, v18), vaddq_f32(vmulq_f32(v5, v83), vmulq_f32(v7, v84))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v88, v18), vaddq_f32(vmulq_f32(v5, v87), vmulq_f32(v7, v86)))));
    v28[56] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v85), vaddq_f32(vmulq_f32(v83, v18), vmulq_f32(v8, v84))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v88), vaddq_f32(vmulq_f32(v87, v18), vmulq_f32(v8, v86)))));
    v89 = vrev16q_s8(*(&v14[-3] + v13));
    v90 = vrev16q_s8(*(&v14[-2] + v13));
    v91 = vuzp1q_s32(v89, vrev64q_s32(v89));
    v92 = vuzp1q_s32(v90, vrev64q_s32(v90));
    v93 = vzip2q_s64(v91, v92);
    v91.i64[1] = v92.i64[0];
    v94 = vrev16q_s8(*(&v14[-1] + v13));
    v95 = vrev16q_s8(*(v14 + v13));
    v96 = vuzp1q_s32(v94, vrev64q_s32(v94));
    v97 = vuzp1q_s32(v95, vrev64q_s32(v95));
    v98 = vzip2q_s64(v96, v97);
    v96.i64[1] = v97.i64[0];
    v97.i64[0] = 0xF0000000FLL;
    v97.i64[1] = 0xF0000000FLL;
    v99 = vsraq_n_u32(v97, v91, 0x10uLL);
    v100 = vaddq_s32(vandq_s8(v93, v16), v15);
    v88.i64[0] = 0xF0000000FLL;
    v88.i64[1] = 0xF0000000FLL;
    v79.i64[0] = 0xF0000000FLL;
    v79.i64[1] = 0xF0000000FLL;
    v101 = vsraq_n_u32(v88, v93, 0x10uLL);
    v102 = vsraq_n_u32(v79, v96, 0x10uLL);
    v103 = vaddq_s32(vandq_s8(v98, v16), v15);
    v96.i64[0] = 0xF0000000FLL;
    v96.i64[1] = 0xF0000000FLL;
    v104 = vsraq_n_u32(v96, v98, 0x10uLL);
    v105 = vcvtq_f32_s32(v99);
    v106 = vcvtq_f32_s32(v100);
    v107 = vcvtq_f32_s32(v101);
    v108 = vcvtq_f32_s32(v102);
    v109 = vcvtq_f32_s32(v103);
    v110 = vcvtq_f32_s32(v104);
    v28[24] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v107), vaddq_f32(vmulq_f32(v4, v105), vmulq_f32(v6, v106))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v110), vaddq_f32(vmulq_f32(v4, v108), vmulq_f32(v6, v109))))), v17);
    v28[80] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v107, v18), vaddq_f32(vmulq_f32(v5, v105), vmulq_f32(v7, v106))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v110, v18), vaddq_f32(vmulq_f32(v5, v108), vmulq_f32(v7, v109)))));
    v28[88] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v107), vaddq_f32(vmulq_f32(v105, v18), vmulq_f32(v8, v106))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v110), vaddq_f32(vmulq_f32(v108, v18), vmulq_f32(v8, v109)))));
    v12 += 16;
    v14 = (v14 + a2);
  }

  while (v12 != 128);
  return result;
}

int8x16_t *pixInFullMB<(PixelFormat)1647719521,(ChromaFormat)2>(int8x16_t *result, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v4 = vdupq_n_s32(0x3C3A3D8Eu);
    v5 = vdupq_n_s32(0xBBCD50FC);
    v6 = vdupq_n_s32(0x3D1CA196u);
    v7 = vdupq_n_s32(0xBCACACA1);
    v8 = vdupq_n_s32(0xBCCB76AF);
    v9 = vdupq_n_s32(0x3B7CFE1Fu);
    v10 = -1155247736;
  }

  else if (a4 == 9)
  {
    v4 = vdupq_n_s32(0x3C6620F3u);
    v5 = vdupq_n_s32(0xBBFA388C);
    v6 = vdupq_n_s32(0x3D147BF9u);
    v7 = vdupq_n_s32(0xBCA172BD);
    v8 = vdupq_n_s32(0xBCCDFCB5);
    v9 = vdupq_n_s32(0x3B4FCA56u);
    v10 = -1156570793;
  }

  else
  {
    v4 = vdupq_n_s32(0x3C82F6C9u);
    v5 = vdupq_n_s32(0xBC17308E);
    v6 = vdupq_n_s32(0x3D008E12u);
    v7 = vdupq_n_s32(0xBC946899);
    v8 = vdupq_n_s32(0xBCBB932D);
    v9 = vdupq_n_s32(0x3BC7BB26u);
    v10 = -1148078387;
  }

  v11 = vdupq_n_s32(v10);
  v12 = 0;
  v13 = result + 4;
  v14.i64[0] = 0xFFFF0000FFFFLL;
  v14.i64[1] = 0xFFFF0000FFFFLL;
  v15 = vdupq_n_s32(0x3CE000E0u);
  v16.i64[0] = 0xF900F900F900F900;
  v16.i64[1] = 0xF900F900F900F900;
  do
  {
    v17 = (a3 + v12);
    v18 = vrev16q_s8(v13[-4]);
    v19 = vrev16q_s8(v13[-3]);
    v20 = vrev16q_s8(v13[-2]);
    v21 = vrev16q_s8(v13[-1]);
    v22 = vzip1q_s32(v18, v19);
    v23 = vzip2q_s32(v18, v19);
    v24 = vzip1q_s32(v20, v21);
    v25 = vzip2q_s32(v20, v21);
    v26 = vzip2q_s64(v22, v24);
    v27 = vzip2q_s64(v23, v25);
    v22.i64[1] = v24.i64[0];
    v28.i64[0] = v23.i64[0];
    v28.i64[1] = v25.i64[0];
    v29 = vcvtq_f32_u32(vandq_s8(v26, v14));
    v30 = vcvtq_f32_u32(vandq_s8(v27, v14));
    v31 = vcvtq_f32_u32(vshrq_n_u32(v26, 0x10uLL));
    v32 = vcvtq_f32_u32(vshrq_n_u32(v27, 0x10uLL));
    v33 = vrev16q_s8(*v13);
    v34 = vrev16q_s8(v13[1]);
    v35 = vrev16q_s8(v13[2]);
    v36 = vrev16q_s8(v13[3]);
    v37 = vzip1q_s32(v33, v34);
    v38 = vzip2q_s32(v33, v34);
    v39 = vzip1q_s32(v35, v36);
    v40 = vzip2q_s32(v35, v36);
    v41 = vzip2q_s64(v37, v39);
    v37.i64[1] = v39.i64[0];
    v42 = vcvtq_f32_u32(vshrq_n_u32(v22, 0x10uLL));
    v43 = vzip2q_s64(v38, v40);
    v38.i64[1] = v40.i64[0];
    v44 = vshrq_n_u32(v37, 0x10uLL);
    v45 = vshrq_n_u32(v41, 0x10uLL);
    v46 = vcvtq_f32_u32(v44);
    v47 = vcvtq_f32_u32(vandq_s8(v41, v14));
    v48 = vcvtq_f32_u32(v45);
    v49 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v31, v15), vaddq_f32(vmulq_f32(v5, v42), vmulq_f32(v7, v29))));
    v50 = vaddq_f32(vmulq_f32(v11, v31), vaddq_f32(vmulq_f32(v42, v15), vmulq_f32(v8, v29)));
    v51 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v31), vaddq_f32(vmulq_f32(v4, v42), vmulq_f32(v6, v29))));
    v52 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v32), vaddq_f32(vmulq_f32(v4, vcvtq_f32_u32(vshrq_n_u32(v28, 0x10uLL))), vmulq_f32(v6, v30))));
    *v51.i8 = vqmovn_s32(v51);
    *v52.i8 = vqmovn_s32(v52);
    v53 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v48), vaddq_f32(vmulq_f32(v4, v46), vmulq_f32(v6, v47))));
    v54 = vzip1q_s16(v51, v52);
    v55 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, vcvtq_f32_u32(vshrq_n_u32(v43, 0x10uLL))), vaddq_f32(vmulq_f32(v4, vcvtq_f32_u32(vshrq_n_u32(v38, 0x10uLL))), vmulq_f32(v6, vcvtq_f32_u32(vandq_s8(v43, v14))))));
    *v53.i8 = vqmovn_s32(v53);
    *v55.i8 = vqmovn_s32(v55);
    *v17 = vaddq_s16(v54, v16);
    v17[8] = vaddq_s16(vzip1q_s16(v53, v55), v16);
    v17[32] = vqmovn_high_s32(vqmovn_s32(v49), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v48, v15), vaddq_f32(vmulq_f32(v5, v46), vmulq_f32(v7, v47)))));
    v17[40] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v50)), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v48), vaddq_f32(vmulq_f32(v46, v15), vmulq_f32(v8, v47)))));
    v13 = (v13 + a2);
    v12 += 16;
  }

  while (v12 != 128);
  v56 = 0;
  v57.i64[0] = 0xFFFF0000FFFFLL;
  v57.i64[1] = 0xFFFF0000FFFFLL;
  v58.i64[0] = 0xF900F900F900F900;
  v58.i64[1] = 0xF900F900F900F900;
  do
  {
    v59 = vrev16q_s8(v13[-4]);
    v60 = vrev16q_s8(v13[-3]);
    v61 = vrev16q_s8(v13[-2]);
    v62 = vrev16q_s8(v13[-1]);
    v63 = vzip1q_s32(v59, v60);
    v64 = vzip2q_s32(v59, v60);
    v65 = vzip1q_s32(v61, v62);
    v66 = vzip2q_s32(v61, v62);
    v67 = vzip2q_s64(v63, v65);
    v63.i64[1] = v65.i64[0];
    v68 = vzip2q_s64(v64, v66);
    v69.i64[0] = v64.i64[0];
    v69.i64[1] = v66.i64[0];
    v70 = (a3 + v56 + v12);
    v71 = vcvtq_f32_u32(vandq_s8(v67, v57));
    v72 = vcvtq_f32_u32(vshrq_n_u32(v67, 0x10uLL));
    v73 = vrev16q_s8(*v13);
    v74 = vrev16q_s8(v13[1]);
    v75 = vrev16q_s8(v13[2]);
    v76 = vrev16q_s8(v13[3]);
    v77 = vzip1q_s32(v73, v74);
    v78 = vzip2q_s32(v73, v74);
    v79 = vzip1q_s32(v75, v76);
    v80 = vzip2q_s32(v75, v76);
    v81 = vzip2q_s64(v77, v79);
    v77.i64[1] = v79.i64[0];
    v82 = vzip2q_s64(v78, v80);
    v83 = vcvtq_f32_u32(vshrq_n_u32(v63, 0x10uLL));
    v78.i64[1] = v80.i64[0];
    v84 = vshrq_n_u32(v77, 0x10uLL);
    v85 = vshrq_n_u32(v81, 0x10uLL);
    v86 = vcvtq_f32_u32(v84);
    v87 = vcvtq_f32_u32(vandq_s8(v81, v57));
    v88 = vcvtq_f32_u32(v85);
    v89 = vdupq_n_s32(0x3CE000E0u);
    v90 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v72, v89), vaddq_f32(vmulq_f32(v5, v83), vmulq_f32(v7, v71))));
    v91 = vaddq_f32(vmulq_f32(v11, v72), vaddq_f32(vmulq_f32(v83, v89), vmulq_f32(v8, v71)));
    v92 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v72), vaddq_f32(vmulq_f32(v4, v83), vmulq_f32(v6, v71))));
    v93 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, vcvtq_f32_u32(vshrq_n_u32(v68, 0x10uLL))), vaddq_f32(vmulq_f32(v4, vcvtq_f32_u32(vshrq_n_u32(v69, 0x10uLL))), vmulq_f32(v6, vcvtq_f32_u32(vandq_s8(v68, v57))))));
    *v92.i8 = vqmovn_s32(v92);
    *v93.i8 = vqmovn_s32(v93);
    v94 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v88), vaddq_f32(vmulq_f32(v4, v86), vmulq_f32(v6, v87))));
    v95 = vzip1q_s16(v92, v93);
    v96 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, vcvtq_f32_u32(vshrq_n_u32(v82, 0x10uLL))), vaddq_f32(vmulq_f32(v4, vcvtq_f32_u32(vshrq_n_u32(v78, 0x10uLL))), vmulq_f32(v6, vcvtq_f32_u32(vandq_s8(v82, v57))))));
    *v94.i8 = vqmovn_s32(v94);
    *v96.i8 = vqmovn_s32(v96);
    v70[8] = vaddq_s16(v95, v58);
    v70[16] = vaddq_s16(vzip1q_s16(v94, v96), v58);
    v70[40] = vqmovn_high_s32(vqmovn_s32(v90), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v88, v89), vaddq_f32(vmulq_f32(v5, v86), vmulq_f32(v7, v87)))));
    v70[48] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v91)), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v88), vaddq_f32(vmulq_f32(v86, v89), vmulq_f32(v8, v87)))));
    v56 += 16;
    v13 = (v13 + a2);
  }

  while (v56 != 128);
  return result;
}

int8x16_t *pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)2>(int8x16_t *result, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v4 = vdupq_n_s32(0x3C59B3D0u);
    v5 = vdupq_n_s32(0xBBF00037);
    v6 = vdupq_n_s32(0x3D371759u);
    v7 = vdupq_n_s32(0xBCC9D834);
    v8 = vdupq_n_s32(0xBCEDD5CA);
    v9 = vdupq_n_s32(0x3B93DD98u);
    v10 = -1153428546;
  }

  else if (a4 == 9)
  {
    v4 = vdupq_n_s32(0x3C86809Du);
    v5 = vdupq_n_s32(0xBC123EDF);
    v6 = vdupq_n_s32(0x3D2D9168u);
    v7 = vdupq_n_s32(0xBCBCB8D2);
    v8 = vdupq_n_s32(0xBCF0C8F2);
    v9 = vdupq_n_s32(0x3B72E48Fu);
    v10 = -1154975109;
  }

  else
  {
    v4 = vdupq_n_s32(0x3C991687u);
    v5 = vdupq_n_s32(0xBC30BAFD);
    v6 = vdupq_n_s32(0x3D1645A2u);
    v7 = vdupq_n_s32(0xBCAD7AC3);
    v8 = vdupq_n_s32(0xBCDB4326);
    v9 = vdupq_n_s32(0x3BE978D5u);
    v10 = -1146465169;
  }

  v11 = vdupq_n_s32(v10);
  v12 = 0;
  v13 = result + 4;
  v14.i64[0] = 0xF0000000FLL;
  v14.i64[1] = 0xF0000000FLL;
  v15.i64[0] = 0xFFFF0000FFFFLL;
  v15.i64[1] = 0xFFFF0000FFFFLL;
  v16 = vdupq_n_s32(0x3D02EC21u);
  v17.i64[0] = 0xF900F900F900F900;
  v17.i64[1] = 0xF900F900F900F900;
  do
  {
    v18 = (a3 + v12);
    v19 = vrev16q_s8(v13[-4]);
    v20 = vrev16q_s8(v13[-3]);
    v21 = vrev16q_s8(v13[-2]);
    v22 = vrev16q_s8(v13[-1]);
    v23 = vzip1q_s32(v19, v20);
    v24 = vzip2q_s32(v19, v20);
    v25 = vzip1q_s32(v21, v22);
    v26 = vzip2q_s32(v21, v22);
    v27 = vzip2q_s64(v23, v25);
    v28 = vzip2q_s64(v24, v26);
    v23.i64[1] = v25.i64[0];
    v29.i64[0] = v24.i64[0];
    v29.i64[1] = v26.i64[0];
    v30.i64[0] = 0xF0000000FLL;
    v30.i64[1] = 0xF0000000FLL;
    v31.i64[0] = 0xF0000000FLL;
    v31.i64[1] = 0xF0000000FLL;
    v32 = vaddq_s32(vandq_s8(v27, v15), v14);
    v25.i64[0] = 0xF0000000FLL;
    v25.i64[1] = 0xF0000000FLL;
    v33 = vsraq_n_u32(v25, v27, 0x10uLL);
    v27.i64[0] = 0xF0000000FLL;
    v27.i64[1] = 0xF0000000FLL;
    v34 = vaddq_s32(vandq_s8(v28, v15), v14);
    v35 = vcvtq_f32_s32(v33);
    v36 = vcvtq_f32_s32(vsraq_n_u32(v27, v28, 0x10uLL));
    v37 = vcvtq_f32_s32(v32);
    v38 = vrev16q_s8(*v13);
    v39 = vrev16q_s8(v13[1]);
    v40 = vrev16q_s8(v13[2]);
    v41 = vcvtq_f32_s32(v34);
    v42 = vrev16q_s8(v13[3]);
    v43 = vzip1q_s32(v38, v39);
    v44 = vzip2q_s32(v38, v39);
    v45 = vzip1q_s32(v40, v42);
    v46 = vzip2q_s32(v40, v42);
    v47 = vsraq_n_u32(v30, v23, 0x10uLL);
    v48 = vzip2q_s64(v43, v45);
    v43.i64[1] = v45.i64[0];
    v49 = vzip2q_s64(v44, v46);
    v50 = vsraq_n_u32(v31, v29, 0x10uLL);
    v44.i64[1] = v46.i64[0];
    v29.i64[0] = 0xF0000000FLL;
    v29.i64[1] = 0xF0000000FLL;
    v51 = vcvtq_f32_s32(v47);
    v46.i64[0] = 0xF0000000FLL;
    v46.i64[1] = 0xF0000000FLL;
    v52 = vsraq_n_u32(v46, v44, 0x10uLL);
    v53 = vaddq_s32(vandq_s8(v48, v15), v14);
    v40.i64[0] = 0xF0000000FLL;
    v40.i64[1] = 0xF0000000FLL;
    v54 = vsraq_n_u32(v40, v48, 0x10uLL);
    v48.i64[0] = 0xF0000000FLL;
    v48.i64[1] = 0xF0000000FLL;
    v55 = vcvtq_f32_s32(vsraq_n_u32(v29, v43, 0x10uLL));
    v56 = vcvtq_f32_s32(v53);
    v57 = vcvtq_f32_s32(v54);
    v58 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v35, v16), vaddq_f32(vmulq_f32(v5, v51), vmulq_f32(v7, v37))));
    v59 = vaddq_f32(vmulq_f32(v11, v35), vaddq_f32(vmulq_f32(v51, v16), vmulq_f32(v8, v37)));
    v60 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v35), vaddq_f32(vmulq_f32(v4, v51), vmulq_f32(v6, v37))));
    v61 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v36), vaddq_f32(vmulq_f32(v4, vcvtq_f32_s32(v50)), vmulq_f32(v6, v41))));
    *v60.i8 = vqmovn_s32(v60);
    *v61.i8 = vqmovn_s32(v61);
    v62 = vmulq_f32(v9, vcvtq_f32_s32(vsraq_n_u32(v48, v49, 0x10uLL)));
    v63 = vzip1q_s16(v60, v61);
    v64 = vcvtnq_s32_f32(vaddq_f32(v62, vaddq_f32(vmulq_f32(v4, vcvtq_f32_s32(v52)), vmulq_f32(v6, vcvtq_f32_s32(vaddq_s32(vandq_s8(v49, v15), v14))))));
    *v62.f32 = vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v57), vaddq_f32(vmulq_f32(v4, v55), vmulq_f32(v6, v56)))));
    *v64.i8 = vqmovn_s32(v64);
    *v18 = vaddq_s16(v63, v17);
    v18[8] = vaddq_s16(vzip1q_s16(v62, v64), v17);
    v18[32] = vqmovn_high_s32(vqmovn_s32(v58), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v57, v16), vaddq_f32(vmulq_f32(v5, v55), vmulq_f32(v7, v56)))));
    v18[40] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v59)), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v57), vaddq_f32(vmulq_f32(v55, v16), vmulq_f32(v8, v56)))));
    v13 = (v13 + a2);
    v12 += 16;
  }

  while (v12 != 128);
  v65 = 0;
  v66.i64[0] = 0xF0000000FLL;
  v66.i64[1] = 0xF0000000FLL;
  v67.i64[0] = 0xFFFF0000FFFFLL;
  v67.i64[1] = 0xFFFF0000FFFFLL;
  v68.i64[0] = 0xF900F900F900F900;
  v68.i64[1] = 0xF900F900F900F900;
  do
  {
    v69 = vrev16q_s8(v13[-4]);
    v70 = vrev16q_s8(v13[-3]);
    v71 = vrev16q_s8(v13[-2]);
    v72 = vrev16q_s8(v13[-1]);
    v73 = vzip1q_s32(v69, v70);
    v74 = vzip2q_s32(v69, v70);
    v75 = vzip1q_s32(v71, v72);
    v76 = vzip2q_s32(v71, v72);
    v77 = vzip2q_s64(v73, v75);
    v73.i64[1] = v75.i64[0];
    v78 = vzip2q_s64(v74, v76);
    v79.i64[0] = v74.i64[0];
    v79.i64[1] = v76.i64[0];
    v80 = (a3 + v65 + v12);
    v81.i64[0] = 0xF0000000FLL;
    v81.i64[1] = 0xF0000000FLL;
    v72.i64[0] = 0xF0000000FLL;
    v72.i64[1] = 0xF0000000FLL;
    v82 = vaddq_s32(vandq_s8(v77, v67), v66);
    v83 = vaddq_s32(vandq_s8(v78, v67), v66);
    v74.i64[0] = 0xF0000000FLL;
    v74.i64[1] = 0xF0000000FLL;
    v84 = vsraq_n_u32(v74, v77, 0x10uLL);
    v77.i64[0] = 0xF0000000FLL;
    v77.i64[1] = 0xF0000000FLL;
    v85 = vsraq_n_u32(v77, v78, 0x10uLL);
    v86 = vcvtq_f32_s32(v84);
    v87 = vrev16q_s8(*v13);
    v88 = vrev16q_s8(v13[1]);
    v89 = vcvtq_f32_s32(v82);
    v90 = vrev16q_s8(v13[2]);
    v91 = vrev16q_s8(v13[3]);
    v92 = vzip1q_s32(v87, v88);
    v93 = vzip2q_s32(v87, v88);
    v94 = vzip1q_s32(v90, v91);
    v95 = vzip2q_s64(v92, v94);
    v92.i64[1] = v94.i64[0];
    v96 = vsraq_n_u32(v81, v73, 0x10uLL);
    v97 = vzip2q_s32(v90, v91);
    v98 = vzip2q_s64(v93, v97);
    v93.i64[1] = v97.i64[0];
    v99 = vsraq_n_u32(v72, v79, 0x10uLL);
    v100 = vcvtq_f32_s32(v85);
    v85.i64[0] = 0xF0000000FLL;
    v85.i64[1] = 0xF0000000FLL;
    v101 = vsraq_n_u32(v85, v92, 0x10uLL);
    v79.i64[0] = 0xF0000000FLL;
    v79.i64[1] = 0xF0000000FLL;
    v102 = vcvtq_f32_s32(v96);
    v103 = vaddq_s32(vandq_s8(v98, v67), v66);
    v90.i64[0] = 0xF0000000FLL;
    v90.i64[1] = 0xF0000000FLL;
    v92.i64[0] = 0xF0000000FLL;
    v92.i64[1] = 0xF0000000FLL;
    v104 = vsraq_n_u32(v92, v98, 0x10uLL);
    v105 = vcvtq_f32_s32(v101);
    v106 = vcvtq_f32_s32(vaddq_s32(vandq_s8(v95, v67), v66));
    v107 = vcvtq_f32_s32(vsraq_n_u32(v79, v93, 0x10uLL));
    v108 = vcvtq_f32_s32(v103);
    v109 = vcvtq_f32_s32(vsraq_n_u32(v90, v95, 0x10uLL));
    v110 = vcvtq_f32_s32(v104);
    v111 = vdupq_n_s32(0x3D02EC21u);
    v112 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v86, v111), vaddq_f32(vmulq_f32(v5, v102), vmulq_f32(v7, v89))));
    v113 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v86), vaddq_f32(vmulq_f32(v102, v111), vmulq_f32(v8, v89))));
    v114 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v86), vaddq_f32(vmulq_f32(v4, v102), vmulq_f32(v6, v89))));
    v115 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v100), vaddq_f32(vmulq_f32(v4, vcvtq_f32_s32(v99)), vmulq_f32(v6, vcvtq_f32_s32(v83)))));
    *v114.i8 = vqmovn_s32(v114);
    *v115.i8 = vqmovn_s32(v115);
    v116 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v109), vaddq_f32(vmulq_f32(v4, v105), vmulq_f32(v6, v106))));
    v117 = vzip1q_s16(v114, v115);
    v118 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v110), vaddq_f32(vmulq_f32(v4, v107), vmulq_f32(v6, v108))));
    *v116.i8 = vqmovn_s32(v116);
    *v118.i8 = vqmovn_s32(v118);
    v80[8] = vaddq_s16(v117, v68);
    v80[16] = vaddq_s16(vzip1q_s16(v116, v118), v68);
    v80[40] = vqmovn_high_s32(vqmovn_s32(v112), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v109, v111), vaddq_f32(vmulq_f32(v5, v105), vmulq_f32(v7, v106)))));
    v80[48] = vqmovn_high_s32(vqmovn_s32(v113), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v109), vaddq_f32(vmulq_f32(v105, v111), vmulq_f32(v8, v106)))));
    v65 += 16;
    v13 = (v13 + a2);
  }

  while (v65 != 128);
  return result;
}

uint32x4_t *pixInFullMB<(PixelFormat)1848848434,(ChromaFormat)3>(uint32x4_t *result, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v4 = vdupq_n_s32(0x3F3A6B6Eu);
    v5 = vdupq_n_s32(0xBECD8390);
    v6 = vdupq_n_s32(0x401CC82Bu);
    v7 = vdupq_n_s32(0xBFACD72A);
    v8 = vdupq_n_s32(0xBFCBA8CE);
    v9 = vdupq_n_s32(0x3E7D3C71u);
    v10 = -1104905726;
  }

  else if (a4 == 9)
  {
    v4 = vdupq_n_s32(0x3F6659A4u);
    v5 = vdupq_n_s32(0xBEFA7630);
    v6 = vdupq_n_s32(0x4014A08Cu);
    v7 = vdupq_n_s32(0xBFA19A82);
    v8 = vdupq_n_s32(0xBFCE2F73);
    v9 = vdupq_n_s32(0x3E4FFD85u);
    v10 = -1106230056;
  }

  else
  {
    v4 = vdupq_n_s32(0x3F83170Bu);
    v5 = vdupq_n_s32(0xBF1755CC);
    v6 = vdupq_n_s32(0x4000ADBDu);
    v7 = vdupq_n_s32(0xBF948D28);
    v8 = vdupq_n_s32(0xBFBBC162);
    v9 = vdupq_n_s32(0x3EC7EC59u);
    v10 = -1097737550;
  }

  v11 = vdupq_n_s32(v10);
  v12 = 0;
  v13 = 8 * a2;
  v14.i64[0] = 0x300000003;
  v14.i64[1] = 0x300000003;
  v15.i64[0] = 0xF900F900F900F900;
  v15.i64[1] = 0xF900F900F900F900;
  v16 = vdupq_n_s32(0x3FE0380Eu);
  do
  {
    v17 = (a3 + v12);
    v18 = result[1];
    v19 = vcvtq_f32_u32(vshrq_n_u32(*result, 0x16uLL));
    v20 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(*result, 0xCuLL), v14));
    v21 = vcvtq_f32_u32(vshrq_n_u32(v18, 0x16uLL));
    v22 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(*result, 2uLL), v14));
    v23 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v18, 0xCuLL), v14));
    v24 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v18, 2uLL), v14));
    *v17 = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v22), vaddq_f32(vmulq_f32(v4, v19), vmulq_f32(v6, v20))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v24), vaddq_f32(vmulq_f32(v4, v21), vmulq_f32(v6, v23))))), v15);
    v17[32] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v22, v16), vaddq_f32(vmulq_f32(v5, v19), vmulq_f32(v7, v20))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v24, v16), vaddq_f32(vmulq_f32(v5, v21), vmulq_f32(v7, v23)))));
    v17[40] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v22), vaddq_f32(vmulq_f32(v19, v16), vmulq_f32(v8, v20))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v24), vaddq_f32(vmulq_f32(v21, v16), vmulq_f32(v8, v23)))));
    v25 = result[2];
    v26 = result[3];
    v27 = vcvtq_f32_u32(vshrq_n_u32(v25, 0x16uLL));
    v28 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v25, 0xCuLL), v14));
    v29 = vcvtq_f32_u32(vshrq_n_u32(v26, 0x16uLL));
    v30 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v25, 2uLL), v14));
    v31 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v26, 0xCuLL), v14));
    v32 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v26, 2uLL), v14));
    v17[64] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v30, v16), vaddq_f32(vmulq_f32(v5, v27), vmulq_f32(v7, v28))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v32, v16), vaddq_f32(vmulq_f32(v5, v29), vmulq_f32(v7, v31)))));
    v17[8] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v30), vaddq_f32(vmulq_f32(v4, v27), vmulq_f32(v6, v28))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v32), vaddq_f32(vmulq_f32(v4, v29), vmulq_f32(v6, v31))))), v15);
    v17[72] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v30), vaddq_f32(vmulq_f32(v27, v16), vmulq_f32(v8, v28))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v32), vaddq_f32(vmulq_f32(v29, v16), vmulq_f32(v8, v31)))));
    v33 = *(result + v13);
    v34 = *(&result[1] + v13);
    v35 = vcvtq_f32_u32(vshrq_n_u32(v33, 0x16uLL));
    v36 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v33, 0xCuLL), v14));
    v37 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v33, 2uLL), v14));
    v38 = vcvtq_f32_u32(vshrq_n_u32(v34, 0x16uLL));
    v39 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v34, 0xCuLL), v14));
    v40 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v34, 2uLL), v14));
    v17[16] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v37), vaddq_f32(vmulq_f32(v4, v35), vmulq_f32(v6, v36))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v40), vaddq_f32(vmulq_f32(v4, v38), vmulq_f32(v6, v39))))), v15);
    v17[48] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v37, v16), vaddq_f32(vmulq_f32(v5, v35), vmulq_f32(v7, v36))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v40, v16), vaddq_f32(vmulq_f32(v5, v38), vmulq_f32(v7, v39)))));
    v17[56] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v37), vaddq_f32(vmulq_f32(v35, v16), vmulq_f32(v8, v36))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v40), vaddq_f32(vmulq_f32(v38, v16), vmulq_f32(v8, v39)))));
    v41 = *(&result[2] + v13);
    v42 = *(&result[3] + v13);
    v43 = vcvtq_f32_u32(vshrq_n_u32(v41, 0x16uLL));
    v44 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v41, 0xCuLL), v14));
    v45 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v41, 2uLL), v14));
    v46 = vcvtq_f32_u32(vshrq_n_u32(v42, 0x16uLL));
    v47 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v42, 0xCuLL), v14));
    v48 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v42, 2uLL), v14));
    result = (result + a2);
    v17[24] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v45), vaddq_f32(vmulq_f32(v4, v43), vmulq_f32(v6, v44))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v48), vaddq_f32(vmulq_f32(v4, v46), vmulq_f32(v6, v47))))), v15);
    v17[80] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v45, v16), vaddq_f32(vmulq_f32(v5, v43), vmulq_f32(v7, v44))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v48, v16), vaddq_f32(vmulq_f32(v5, v46), vmulq_f32(v7, v47)))));
    v17[88] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v45), vaddq_f32(vmulq_f32(v43, v16), vmulq_f32(v8, v44))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v48), vaddq_f32(vmulq_f32(v46, v16), vmulq_f32(v8, v47)))));
    v12 += 16;
  }

  while (v12 != 128);
  return result;
}

int8x16_t *pixInFullMB<(PixelFormat)1378955371,(ChromaFormat)3>(int8x16_t *result, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v4 = vdupq_n_s32(0x3F3A6B6Eu);
    v5 = vdupq_n_s32(0xBECD8390);
    v6 = vdupq_n_s32(0x401CC82Bu);
    v7 = vdupq_n_s32(0xBFACD72A);
    v8 = vdupq_n_s32(0xBFCBA8CE);
    v9 = vdupq_n_s32(0x3E7D3C71u);
    v10 = -1104905726;
  }

  else if (a4 == 9)
  {
    v4 = vdupq_n_s32(0x3F6659A4u);
    v5 = vdupq_n_s32(0xBEFA7630);
    v6 = vdupq_n_s32(0x4014A08Cu);
    v7 = vdupq_n_s32(0xBFA19A82);
    v8 = vdupq_n_s32(0xBFCE2F73);
    v9 = vdupq_n_s32(0x3E4FFD85u);
    v10 = -1106230056;
  }

  else
  {
    v4 = vdupq_n_s32(0x3F83170Bu);
    v5 = vdupq_n_s32(0xBF1755CC);
    v6 = vdupq_n_s32(0x4000ADBDu);
    v7 = vdupq_n_s32(0xBF948D28);
    v8 = vdupq_n_s32(0xBFBBC162);
    v9 = vdupq_n_s32(0x3EC7EC59u);
    v10 = -1097737550;
  }

  v11 = vdupq_n_s32(v10);
  v12 = 0;
  v13 = 8 * a2;
  v14.i64[0] = 0x300000003;
  v14.i64[1] = 0x300000003;
  v15.i64[0] = 0xF900F900F900F900;
  v15.i64[1] = 0xF900F900F900F900;
  v16 = vdupq_n_s32(0x3FE0380Eu);
  do
  {
    v17 = (a3 + v12);
    v18 = vrev16q_s8(*result);
    v19 = vsraq_n_u32(vshlq_n_s32(v18, 0x10uLL), v18, 0x10uLL);
    v20 = vrev16q_s8(result[1]);
    v21 = vsraq_n_u32(vshlq_n_s32(v20, 0x10uLL), v20, 0x10uLL);
    v22 = vcvtq_f32_u32(vshrq_n_u32(v19, 0x16uLL));
    v23 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v19, 0xCuLL), v14));
    v24 = vcvtq_f32_u32(vshrq_n_u32(v21, 0x16uLL));
    v25 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v19, 2uLL), v14));
    v26 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v21, 0xCuLL), v14));
    v27 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v21, 2uLL), v14));
    *v17 = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v25), vaddq_f32(vmulq_f32(v4, v22), vmulq_f32(v6, v23))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v27), vaddq_f32(vmulq_f32(v4, v24), vmulq_f32(v6, v26))))), v15);
    v17[32] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v25, v16), vaddq_f32(vmulq_f32(v5, v22), vmulq_f32(v7, v23))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v27, v16), vaddq_f32(vmulq_f32(v5, v24), vmulq_f32(v7, v26)))));
    v17[40] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v25), vaddq_f32(vmulq_f32(v22, v16), vmulq_f32(v8, v23))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v27), vaddq_f32(vmulq_f32(v24, v16), vmulq_f32(v8, v26)))));
    v28 = vrev16q_s8(result[2]);
    v29 = vsraq_n_u32(vshlq_n_s32(v28, 0x10uLL), v28, 0x10uLL);
    v30 = vrev16q_s8(result[3]);
    v31 = vsraq_n_u32(vshlq_n_s32(v30, 0x10uLL), v30, 0x10uLL);
    v32 = vcvtq_f32_u32(vshrq_n_u32(v29, 0x16uLL));
    v33 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v29, 0xCuLL), v14));
    v34 = vcvtq_f32_u32(vshrq_n_u32(v31, 0x16uLL));
    v35 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v29, 2uLL), v14));
    v36 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v31, 0xCuLL), v14));
    v37 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v31, 2uLL), v14));
    v17[64] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v35, v16), vaddq_f32(vmulq_f32(v5, v32), vmulq_f32(v7, v33))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v37, v16), vaddq_f32(vmulq_f32(v5, v34), vmulq_f32(v7, v36)))));
    v17[8] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v35), vaddq_f32(vmulq_f32(v4, v32), vmulq_f32(v6, v33))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v37), vaddq_f32(vmulq_f32(v4, v34), vmulq_f32(v6, v36))))), v15);
    v17[72] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v35), vaddq_f32(vmulq_f32(v32, v16), vmulq_f32(v8, v33))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v37), vaddq_f32(vmulq_f32(v34, v16), vmulq_f32(v8, v36)))));
    v38 = vrev16q_s8(*(result + v13));
    v39 = vsraq_n_u32(vshlq_n_s32(v38, 0x10uLL), v38, 0x10uLL);
    v40 = vrev16q_s8(*(&result[1] + v13));
    v41 = vsraq_n_u32(vshlq_n_s32(v40, 0x10uLL), v40, 0x10uLL);
    v42 = vcvtq_f32_u32(vshrq_n_u32(v39, 0x16uLL));
    v43 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v39, 0xCuLL), v14));
    v44 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v39, 2uLL), v14));
    v45 = vcvtq_f32_u32(vshrq_n_u32(v41, 0x16uLL));
    v46 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v41, 0xCuLL), v14));
    v47 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v41, 2uLL), v14));
    v17[16] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v44), vaddq_f32(vmulq_f32(v4, v42), vmulq_f32(v6, v43))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v47), vaddq_f32(vmulq_f32(v4, v45), vmulq_f32(v6, v46))))), v15);
    v17[48] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v44, v16), vaddq_f32(vmulq_f32(v5, v42), vmulq_f32(v7, v43))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v47, v16), vaddq_f32(vmulq_f32(v5, v45), vmulq_f32(v7, v46)))));
    v17[56] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v44), vaddq_f32(vmulq_f32(v42, v16), vmulq_f32(v8, v43))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v47), vaddq_f32(vmulq_f32(v45, v16), vmulq_f32(v8, v46)))));
    v48 = vrev16q_s8(*(&result[2] + v13));
    v49 = vsraq_n_u32(vshlq_n_s32(v48, 0x10uLL), v48, 0x10uLL);
    v50 = vrev16q_s8(*(&result[3] + v13));
    v51 = vsraq_n_u32(vshlq_n_s32(v50, 0x10uLL), v50, 0x10uLL);
    v52 = vcvtq_f32_u32(vshrq_n_u32(v49, 0x16uLL));
    v53 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v49, 0xCuLL), v14));
    v54 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v49, 2uLL), v14));
    v55 = vcvtq_f32_u32(vshrq_n_u32(v51, 0x16uLL));
    v56 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v51, 0xCuLL), v14));
    v57 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v51, 2uLL), v14));
    result = (result + a2);
    v17[24] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v54), vaddq_f32(vmulq_f32(v4, v52), vmulq_f32(v6, v53))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v57), vaddq_f32(vmulq_f32(v4, v55), vmulq_f32(v6, v56))))), v15);
    v17[80] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v54, v16), vaddq_f32(vmulq_f32(v5, v52), vmulq_f32(v7, v53))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v57, v16), vaddq_f32(vmulq_f32(v5, v55), vmulq_f32(v7, v56)))));
    v17[88] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v54), vaddq_f32(vmulq_f32(v52, v16), vmulq_f32(v8, v53))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v57), vaddq_f32(vmulq_f32(v55, v16), vmulq_f32(v8, v56)))));
    v12 += 16;
  }

  while (v12 != 128);
  return result;
}

int8x16_t *pixInFullMB<(PixelFormat)1915892016,(ChromaFormat)3>(int8x16_t *result, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v4 = vdupq_n_s32(0x3F3A6B6Eu);
    v5 = vdupq_n_s32(0xBECD8390);
    v6 = vdupq_n_s32(0x401CC82Bu);
    v7 = vdupq_n_s32(0xBFACD72A);
    v8 = vdupq_n_s32(0xBFCBA8CE);
    v9 = vdupq_n_s32(0x3E7D3C71u);
    v10 = -1104905726;
  }

  else if (a4 == 9)
  {
    v4 = vdupq_n_s32(0x3F6659A4u);
    v5 = vdupq_n_s32(0xBEFA7630);
    v6 = vdupq_n_s32(0x4014A08Cu);
    v7 = vdupq_n_s32(0xBFA19A82);
    v8 = vdupq_n_s32(0xBFCE2F73);
    v9 = vdupq_n_s32(0x3E4FFD85u);
    v10 = -1106230056;
  }

  else
  {
    v4 = vdupq_n_s32(0x3F83170Bu);
    v5 = vdupq_n_s32(0xBF1755CC);
    v6 = vdupq_n_s32(0x4000ADBDu);
    v7 = vdupq_n_s32(0xBF948D28);
    v8 = vdupq_n_s32(0xBFBBC162);
    v9 = vdupq_n_s32(0x3EC7EC59u);
    v10 = -1097737550;
  }

  v11 = vdupq_n_s32(v10);
  v12 = 0;
  v13 = 8 * a2;
  v14.i64[0] = 0x300000003;
  v14.i64[1] = 0x300000003;
  v15.i64[0] = 0xF900F900F900F900;
  v15.i64[1] = 0xF900F900F900F900;
  v16 = vdupq_n_s32(0x3FE0380Eu);
  do
  {
    v17 = (a3 + v12);
    v18 = vrev16q_s8(*result);
    v19 = vsraq_n_u32(vshlq_n_s32(v18, 0x10uLL), v18, 0x10uLL);
    v20 = vrev16q_s8(result[1]);
    v21 = vsraq_n_u32(vshlq_n_s32(v20, 0x10uLL), v20, 0x10uLL);
    v22 = vcvtq_f32_u32((*&vshrq_n_u32(v19, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
    v23 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v19, 0xAuLL), v14));
    v24 = vcvtq_f32_u32(vandq_s8(v19, v14));
    v25 = vcvtq_f32_u32((*&vshrq_n_u32(v21, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
    v26 = vandq_s8(vshrq_n_u32(v21, 0xAuLL), v14);
    v27 = vcvtq_f32_u32(vandq_s8(v21, v14));
    v28 = vcvtq_f32_u32(v26);
    *v17 = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v24), vaddq_f32(vmulq_f32(v4, v22), vmulq_f32(v6, v23))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v27), vaddq_f32(vmulq_f32(v4, v25), vmulq_f32(v6, v28))))), v15);
    v17[32] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v24, v16), vaddq_f32(vmulq_f32(v5, v22), vmulq_f32(v7, v23))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v27, v16), vaddq_f32(vmulq_f32(v5, v25), vmulq_f32(v7, v28)))));
    v17[40] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v24), vaddq_f32(vmulq_f32(v22, v16), vmulq_f32(v8, v23))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v27), vaddq_f32(vmulq_f32(v25, v16), vmulq_f32(v8, v28)))));
    v29 = vrev16q_s8(result[2]);
    v30 = vsraq_n_u32(vshlq_n_s32(v29, 0x10uLL), v29, 0x10uLL);
    v31 = vrev16q_s8(result[3]);
    v32 = vsraq_n_u32(vshlq_n_s32(v31, 0x10uLL), v31, 0x10uLL);
    v33 = vcvtq_f32_u32((*&vshrq_n_u32(v30, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
    v34 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v30, 0xAuLL), v14));
    v35 = vcvtq_f32_u32(vandq_s8(v30, v14));
    v36 = vcvtq_f32_u32((*&vshrq_n_u32(v32, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
    v37 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v32, 0xAuLL), v14));
    v38 = vcvtq_f32_u32(vandq_s8(v32, v14));
    v17[64] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v35, v16), vaddq_f32(vmulq_f32(v5, v33), vmulq_f32(v7, v34))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v38, v16), vaddq_f32(vmulq_f32(v5, v36), vmulq_f32(v7, v37)))));
    v17[8] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v35), vaddq_f32(vmulq_f32(v4, v33), vmulq_f32(v6, v34))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v38), vaddq_f32(vmulq_f32(v4, v36), vmulq_f32(v6, v37))))), v15);
    v17[72] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v35), vaddq_f32(vmulq_f32(v33, v16), vmulq_f32(v8, v34))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v38), vaddq_f32(vmulq_f32(v36, v16), vmulq_f32(v8, v37)))));
    v39 = vrev16q_s8(*(result + v13));
    v40 = vsraq_n_u32(vshlq_n_s32(v39, 0x10uLL), v39, 0x10uLL);
    v41 = vrev16q_s8(*(&result[1] + v13));
    v42 = vsraq_n_u32(vshlq_n_s32(v41, 0x10uLL), v41, 0x10uLL);
    v43 = vcvtq_f32_u32((*&vshrq_n_u32(v40, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
    v44 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v40, 0xAuLL), v14));
    v45 = vcvtq_f32_u32(vandq_s8(v40, v14));
    v46 = vcvtq_f32_u32((*&vshrq_n_u32(v42, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
    v47 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v42, 0xAuLL), v14));
    v48 = vcvtq_f32_u32(vandq_s8(v42, v14));
    v17[16] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v45), vaddq_f32(vmulq_f32(v4, v43), vmulq_f32(v6, v44))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v48), vaddq_f32(vmulq_f32(v4, v46), vmulq_f32(v6, v47))))), v15);
    v17[48] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v45, v16), vaddq_f32(vmulq_f32(v5, v43), vmulq_f32(v7, v44))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v48, v16), vaddq_f32(vmulq_f32(v5, v46), vmulq_f32(v7, v47)))));
    v17[56] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v45), vaddq_f32(vmulq_f32(v43, v16), vmulq_f32(v8, v44))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v48), vaddq_f32(vmulq_f32(v46, v16), vmulq_f32(v8, v47)))));
    v49 = vrev16q_s8(*(&result[2] + v13));
    v50 = vsraq_n_u32(vshlq_n_s32(v49, 0x10uLL), v49, 0x10uLL);
    v51 = vrev16q_s8(*(&result[3] + v13));
    v52 = vsraq_n_u32(vshlq_n_s32(v51, 0x10uLL), v51, 0x10uLL);
    v53 = vcvtq_f32_u32((*&vshrq_n_u32(v50, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
    v54 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v50, 0xAuLL), v14));
    v55 = vcvtq_f32_u32(vandq_s8(v50, v14));
    v56 = vcvtq_f32_u32((*&vshrq_n_u32(v52, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
    v57 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v52, 0xAuLL), v14));
    v58 = vcvtq_f32_u32(vandq_s8(v52, v14));
    result = (result + a2);
    v17[24] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v55), vaddq_f32(vmulq_f32(v4, v53), vmulq_f32(v6, v54))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v58), vaddq_f32(vmulq_f32(v4, v56), vmulq_f32(v6, v57))))), v15);
    v17[80] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v55, v16), vaddq_f32(vmulq_f32(v5, v53), vmulq_f32(v7, v54))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v58, v16), vaddq_f32(vmulq_f32(v5, v56), vmulq_f32(v7, v57)))));
    v17[88] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v55), vaddq_f32(vmulq_f32(v53, v16), vmulq_f32(v8, v54))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v58), vaddq_f32(vmulq_f32(v56, v16), vmulq_f32(v8, v57)))));
    v12 += 16;
  }

  while (v12 != 128);
  return result;
}

uint64_t (*getPixelInputRoutine(int a1, int a2))(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    result = 0;
    if (a1 <= 1915892015)
    {
      if (a1 <= 1647719520)
      {
        if (a1 == 32)
        {
          return pixInGeneric<(PixelFormat)32,(ChromaFormat)3>;
        }

        else
        {
          if (a1 != 1378955371)
          {
            return result;
          }

          return pixInGeneric<(PixelFormat)1378955371,(ChromaFormat)3>;
        }
      }

      else
      {
        switch(a1)
        {
          case 1647719521:
            return pixInGeneric<(PixelFormat)1647719521,(ChromaFormat)3>;
          case 1647719542:
            return pixInGeneric<(PixelFormat)1647719542,(ChromaFormat)3>;
          case 1848848434:
            return pixInGeneric<(PixelFormat)1848848434,(ChromaFormat)3>;
          default:
            return result;
        }
      }
    }

    else if (a1 > 1983131703)
    {
      switch(a1)
      {
        case 1983131704:
          return pixInGeneric<(PixelFormat)1983131704,(ChromaFormat)3>;
        case 2033463606:
          return pixInGeneric<(PixelFormat)2033463606,(ChromaFormat)3>;
        case 2033463352:
          return pixInGeneric<(PixelFormat)2033463352,(ChromaFormat)3>;
        default:
          return result;
      }
    }

    else
    {
      switch(a1)
      {
        case 1915892016:
          return pixInGeneric<(PixelFormat)1915892016,(ChromaFormat)3>;
        case 1916022840:
          return pixInGeneric<(PixelFormat)1916022840,(ChromaFormat)3>;
        case 1916036716:
          return pixInGeneric<(PixelFormat)1916036716,(ChromaFormat)3>;
        default:
          return result;
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      return 0;
    }

    result = 0;
    if (a1 <= 1916036715)
    {
      if (a1 <= 1647719520)
      {
        if (a1 == 32)
        {
          return pixInGeneric<(PixelFormat)32,(ChromaFormat)2>;
        }

        else
        {
          if (a1 != 846624121)
          {
            return result;
          }

          return pixInGeneric<(PixelFormat)846624121,(ChromaFormat)2>;
        }
      }

      else
      {
        switch(a1)
        {
          case 1647719521:
            return pixInGeneric<(PixelFormat)1647719521,(ChromaFormat)2>;
          case 1647719542:
            return pixInGeneric<(PixelFormat)1647719542,(ChromaFormat)2>;
          case 1916022840:
            return pixInGeneric<(PixelFormat)1916022840,(ChromaFormat)2>;
          default:
            return result;
        }
      }
    }

    else if (a1 > 2033463351)
    {
      switch(a1)
      {
        case 2033463352:
          return pixInGeneric<(PixelFormat)2033463352,(ChromaFormat)2>;
        case 2033463606:
          return pixInGeneric<(PixelFormat)2033463606,(ChromaFormat)2>;
        case 2037741171:
          return pixInGeneric<(PixelFormat)2037741171,(ChromaFormat)2>;
        default:
          return result;
      }
    }

    else
    {
      switch(a1)
      {
        case 1916036716:
          return pixInGeneric<(PixelFormat)1916036716,(ChromaFormat)2>;
        case 1983000886:
          return pixInGeneric<(PixelFormat)1983000886,(ChromaFormat)2>;
        case 1983131704:
          return pixInGeneric<(PixelFormat)1983131704,(ChromaFormat)2>;
        default:
          return result;
      }
    }
  }
}

int8x16_t *pixInGeneric<(PixelFormat)846624121,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = v3;
  v8 = v2;
  v358 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v11 = 16 - v4;
      if (v4 <= 0)
      {
        v12 = v6;
        v13 = v357;
        goto LABEL_20;
      }

LABEL_18:
      v12 = v6;
      v22 = v4 + 1;
      v13 = v357;
      do
      {
        v23 = v8[1];
        *v13 = *v8;
        v13[1] = v23;
        v13 += 2;
        v8 = (v8 + v6);
        --v22;
      }

      while (v22 > 1);
LABEL_20:
      if (v11 >= 1)
      {
        v24 = (v8 - v12);
        v25 = *v24;
        v26 = v11 + 1;
        do
        {
          *v13 = v25;
          v13[1] = v24[1];
          v13 += 2;
          --v26;
        }

        while (v26 > 1);
      }

      goto LABEL_23;
    }

    if (v5 > 15)
    {
      goto LABEL_23;
    }

    v14 = 2 * v5;
    v15 = v5;
    if (v4 <= 0)
    {
      v21 = &v2->i8[-v6];
      v20 = v357;
    }

    else
    {
      v16 = v14;
      v17 = v6;
      v18 = v4;
      v19 = v4 + 1;
      v20 = v357;
      do
      {
        memcpy(v20, v8, v14);
        v8 = (v8 + v17);
        v20 += 2;
        --v19;
      }

      while (v19 > 1);
      if (v18 > 15)
      {
        goto LABEL_27;
      }

      v4 = v18;
      v21 = &v8->i8[-v17];
    }

    v16 = v14;
    v28 = 17 - v4;
    do
    {
      memcpy(v20, v21, v14);
      v20 += 2;
      --v28;
    }

    while (v28 > 1);
LABEL_27:
    if (v15)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    v30 = (32 - v14) >> v29;
    v31 = &v357[0].i8[v16];
    if (v15)
    {
      v32 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = 0x7FFFFFFFFFFFFFFELL;
    }

    v33 = &v31[v32 * 2];
    if ((v15 & 1) == 0)
    {
      if (!v30)
      {
        goto LABEL_23;
      }

      v34 = *v33;
      if (v30 >= 8)
      {
        v35 = v30 & 0x7FFFFFF8;
        v38 = vdupq_n_s32(v34);
        v33 += v35;
        v39 = (v357[1].i64 + v32 * 2 + v16 + 4);
        v40 = v35;
        do
        {
          v39[-1] = v38;
          *v39 = v38;
          v39 += 2;
          v40 -= 8;
        }

        while (v40);
        if (v35 == v30)
        {
LABEL_45:
          v44 = v31 + 28;
          v43 = *(v31 + 7);
          v45 = (v30 - 1);
          v46 = v45 + 1;
          if (v45 >= 7)
          {
            v47 = v46 & 0x1FFFFFFF8;
            v44 += 4 * (v46 & 0x1FFFFFFF8);
            v49 = vdupq_n_s32(v43);
            v50 = &v357[3].i8[v16];
            v51 = v46 & 0x1FFFFFFF8;
            do
            {
              v50[-1] = v49;
              *v50 = v49;
              v50 += 2;
              v51 -= 8;
            }

            while (v51);
            if (v46 == v47)
            {
LABEL_54:
              v55 = v31 + 60;
              v54 = *(v31 + 15);
              if (v45 >= 7)
              {
                v56 = v46 & 0x1FFFFFFF8;
                v55 += 4 * (v46 & 0x1FFFFFFF8);
                v57 = vdupq_n_s32(v54);
                v58 = &v357[5].i8[v16];
                v59 = v46 & 0x1FFFFFFF8;
                do
                {
                  v58[-1] = v57;
                  *v58 = v57;
                  v58 += 2;
                  v59 -= 8;
                }

                while (v59);
                if (v46 == v56)
                {
LABEL_61:
                  v63 = v31 + 92;
                  v62 = *(v31 + 23);
                  if (v45 >= 7)
                  {
                    v64 = v46 & 0x1FFFFFFF8;
                    v63 += 4 * (v46 & 0x1FFFFFFF8);
                    v65 = vdupq_n_s32(v62);
                    v66 = &v357[7].i8[v16];
                    v67 = v46 & 0x1FFFFFFF8;
                    do
                    {
                      v66[-1] = v65;
                      *v66 = v65;
                      v66 += 2;
                      v67 -= 8;
                    }

                    while (v67);
                    if (v46 == v64)
                    {
LABEL_68:
                      v71 = v31 + 124;
                      v70 = *(v31 + 31);
                      if (v45 >= 7)
                      {
                        v72 = v46 & 0x1FFFFFFF8;
                        v71 += 4 * (v46 & 0x1FFFFFFF8);
                        v73 = vdupq_n_s32(v70);
                        v74 = &v357[9].i8[v16];
                        v75 = v46 & 0x1FFFFFFF8;
                        do
                        {
                          v74[-1] = v73;
                          *v74 = v73;
                          v74 += 2;
                          v75 -= 8;
                        }

                        while (v75);
                        if (v46 == v72)
                        {
LABEL_75:
                          v79 = v31 + 156;
                          v78 = *(v31 + 39);
                          if (v45 >= 7)
                          {
                            v80 = v46 & 0x1FFFFFFF8;
                            v79 += 4 * (v46 & 0x1FFFFFFF8);
                            v81 = vdupq_n_s32(v78);
                            v82 = &v357[11].i8[v16];
                            v83 = v46 & 0x1FFFFFFF8;
                            do
                            {
                              v82[-1] = v81;
                              *v82 = v81;
                              v82 += 2;
                              v83 -= 8;
                            }

                            while (v83);
                            if (v46 == v80)
                            {
LABEL_82:
                              v87 = v31 + 188;
                              v86 = *(v31 + 47);
                              if (v45 >= 7)
                              {
                                v88 = v46 & 0x1FFFFFFF8;
                                v87 += 4 * (v46 & 0x1FFFFFFF8);
                                v89 = vdupq_n_s32(v86);
                                v90 = &v357[13].i8[v16];
                                v91 = v46 & 0x1FFFFFFF8;
                                do
                                {
                                  v90[-1] = v89;
                                  *v90 = v89;
                                  v90 += 2;
                                  v91 -= 8;
                                }

                                while (v91);
                                if (v46 == v88)
                                {
LABEL_89:
                                  v95 = v31 + 220;
                                  v94 = *(v31 + 55);
                                  if (v45 >= 7)
                                  {
                                    v96 = v46 & 0x1FFFFFFF8;
                                    v95 += 4 * (v46 & 0x1FFFFFFF8);
                                    v97 = vdupq_n_s32(v94);
                                    v98 = &v357[15].i8[v16];
                                    v99 = v46 & 0x1FFFFFFF8;
                                    do
                                    {
                                      v98[-1] = v97;
                                      *v98 = v97;
                                      v98 += 2;
                                      v99 -= 8;
                                    }

                                    while (v99);
                                    if (v46 == v96)
                                    {
LABEL_96:
                                      v103 = v31 + 252;
                                      v102 = *(v31 + 63);
                                      if (v45 >= 7)
                                      {
                                        v104 = v46 & 0x1FFFFFFF8;
                                        v103 += 4 * (v46 & 0x1FFFFFFF8);
                                        v105 = vdupq_n_s32(v102);
                                        v106 = &v357[17].i8[v16];
                                        v107 = v46 & 0x1FFFFFFF8;
                                        do
                                        {
                                          v106[-1] = v105;
                                          *v106 = v105;
                                          v106 += 2;
                                          v107 -= 8;
                                        }

                                        while (v107);
                                        if (v46 == v104)
                                        {
LABEL_103:
                                          v110 = v31 + 284;
                                          v111 = *(v31 + 71);
                                          if (v45 >= 7)
                                          {
                                            v112 = v46 & 0x1FFFFFFF8;
                                            v110 += 4 * (v46 & 0x1FFFFFFF8);
                                            v113 = vdupq_n_s32(v111);
                                            v114 = &v357[19].i8[v16];
                                            v115 = v46 & 0x1FFFFFFF8;
                                            do
                                            {
                                              v114[-1] = v113;
                                              *v114 = v113;
                                              v114 += 2;
                                              v115 -= 8;
                                            }

                                            while (v115);
                                            if (v46 == v112)
                                            {
LABEL_110:
                                              v118 = v31 + 316;
                                              v119 = *(v31 + 79);
                                              if (v45 >= 7)
                                              {
                                                v120 = v46 & 0x1FFFFFFF8;
                                                v118 += 4 * (v46 & 0x1FFFFFFF8);
                                                v121 = vdupq_n_s32(v119);
                                                v122 = &v357[21].i8[v16];
                                                v123 = v46 & 0x1FFFFFFF8;
                                                do
                                                {
                                                  v122[-1] = v121;
                                                  *v122 = v121;
                                                  v122 += 2;
                                                  v123 -= 8;
                                                }

                                                while (v123);
                                                if (v46 == v120)
                                                {
LABEL_117:
                                                  v126 = v31 + 348;
                                                  v127 = *(v31 + 87);
                                                  if (v45 >= 7)
                                                  {
                                                    v128 = v46 & 0x1FFFFFFF8;
                                                    v126 += 4 * (v46 & 0x1FFFFFFF8);
                                                    v129 = vdupq_n_s32(v127);
                                                    v130 = &v357[23].i8[v16];
                                                    v131 = v46 & 0x1FFFFFFF8;
                                                    do
                                                    {
                                                      v130[-1] = v129;
                                                      *v130 = v129;
                                                      v130 += 2;
                                                      v131 -= 8;
                                                    }

                                                    while (v131);
                                                    if (v46 == v128)
                                                    {
LABEL_124:
                                                      v134 = v31 + 380;
                                                      v135 = *(v31 + 95);
                                                      if (v45 >= 7)
                                                      {
                                                        v136 = v46 & 0x1FFFFFFF8;
                                                        v134 += 4 * (v46 & 0x1FFFFFFF8);
                                                        v137 = vdupq_n_s32(v135);
                                                        v138 = &v357[25].i8[v16];
                                                        v139 = v46 & 0x1FFFFFFF8;
                                                        do
                                                        {
                                                          v138[-1] = v137;
                                                          *v138 = v137;
                                                          v138 += 2;
                                                          v139 -= 8;
                                                        }

                                                        while (v139);
                                                        if (v46 == v136)
                                                        {
LABEL_131:
                                                          v142 = v31 + 412;
                                                          v143 = *(v31 + 103);
                                                          if (v45 >= 7)
                                                          {
                                                            v144 = v46 & 0x1FFFFFFF8;
                                                            v142 += 4 * (v46 & 0x1FFFFFFF8);
                                                            v145 = vdupq_n_s32(v143);
                                                            v146 = &v357[27].i8[v16];
                                                            v147 = v46 & 0x1FFFFFFF8;
                                                            do
                                                            {
                                                              v146[-1] = v145;
                                                              *v146 = v145;
                                                              v146 += 2;
                                                              v147 -= 8;
                                                            }

                                                            while (v147);
                                                            if (v46 == v144)
                                                            {
LABEL_138:
                                                              v150 = v31 + 444;
                                                              v151 = *(v31 + 111);
                                                              if (v45 >= 7)
                                                              {
                                                                v152 = v46 & 0x1FFFFFFF8;
                                                                v150 += 4 * (v46 & 0x1FFFFFFF8);
                                                                v153 = vdupq_n_s32(v151);
                                                                v154 = &v357[29].i8[v16];
                                                                v155 = v46 & 0x1FFFFFFF8;
                                                                do
                                                                {
                                                                  v154[-1] = v153;
                                                                  *v154 = v153;
                                                                  v154 += 2;
                                                                  v155 -= 8;
                                                                }

                                                                while (v155);
                                                                if (v46 == v152)
                                                                {
                                                                  goto LABEL_145;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                LODWORD(v152) = 0;
                                                              }

                                                              v156 = v30 - v152;
                                                              v157 = (v150 + 4);
                                                              do
                                                              {
                                                                *v157++ = v151;
                                                                --v156;
                                                              }

                                                              while (v156);
LABEL_145:
                                                              v158 = v31 + 476;
                                                              v159 = *(v31 + 119);
                                                              if (v45 >= 7)
                                                              {
                                                                v160 = v46 & 0x1FFFFFFF8;
                                                                v158 += 4 * (v46 & 0x1FFFFFFF8);
                                                                v161 = vdupq_n_s32(v159);
                                                                v162 = &v357[31].i8[v16];
                                                                v163 = v46 & 0x1FFFFFFF8;
                                                                do
                                                                {
                                                                  v162[-1] = v161;
                                                                  *v162 = v161;
                                                                  v162 += 2;
                                                                  v163 -= 8;
                                                                }

                                                                while (v163);
                                                                if (v46 == v160)
                                                                {
                                                                  goto LABEL_23;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                LODWORD(v160) = 0;
                                                              }

                                                              v164 = v30 - v160;
                                                              v165 = (v158 + 4);
                                                              do
                                                              {
                                                                *v165++ = v159;
                                                                --v164;
                                                              }

                                                              while (v164);
LABEL_23:
                                                              result = pixInFullMB<(PixelFormat)846624121,(ChromaFormat)2>(v357, 32, v7);
                                                              v27 = *MEMORY[0x29EDCA608];
                                                              return result;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            LODWORD(v144) = 0;
                                                          }

                                                          v148 = v30 - v144;
                                                          v149 = (v142 + 4);
                                                          do
                                                          {
                                                            *v149++ = v143;
                                                            --v148;
                                                          }

                                                          while (v148);
                                                          goto LABEL_138;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        LODWORD(v136) = 0;
                                                      }

                                                      v140 = v30 - v136;
                                                      v141 = (v134 + 4);
                                                      do
                                                      {
                                                        *v141++ = v135;
                                                        --v140;
                                                      }

                                                      while (v140);
                                                      goto LABEL_131;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    LODWORD(v128) = 0;
                                                  }

                                                  v132 = v30 - v128;
                                                  v133 = (v126 + 4);
                                                  do
                                                  {
                                                    *v133++ = v127;
                                                    --v132;
                                                  }

                                                  while (v132);
                                                  goto LABEL_124;
                                                }
                                              }

                                              else
                                              {
                                                LODWORD(v120) = 0;
                                              }

                                              v124 = v30 - v120;
                                              v125 = (v118 + 4);
                                              do
                                              {
                                                *v125++ = v119;
                                                --v124;
                                              }

                                              while (v124);
                                              goto LABEL_117;
                                            }
                                          }

                                          else
                                          {
                                            LODWORD(v112) = 0;
                                          }

                                          v116 = v30 - v112;
                                          v117 = (v110 + 4);
                                          do
                                          {
                                            *v117++ = v111;
                                            --v116;
                                          }

                                          while (v116);
                                          goto LABEL_110;
                                        }
                                      }

                                      else
                                      {
                                        LODWORD(v104) = 0;
                                      }

                                      v108 = v30 - v104;
                                      v109 = (v103 + 4);
                                      do
                                      {
                                        *v109++ = v102;
                                        --v108;
                                      }

                                      while (v108);
                                      goto LABEL_103;
                                    }
                                  }

                                  else
                                  {
                                    LODWORD(v96) = 0;
                                  }

                                  v100 = v30 - v96;
                                  v101 = (v95 + 4);
                                  do
                                  {
                                    *v101++ = v94;
                                    --v100;
                                  }

                                  while (v100);
                                  goto LABEL_96;
                                }
                              }

                              else
                              {
                                LODWORD(v88) = 0;
                              }

                              v92 = v30 - v88;
                              v93 = (v87 + 4);
                              do
                              {
                                *v93++ = v86;
                                --v92;
                              }

                              while (v92);
                              goto LABEL_89;
                            }
                          }

                          else
                          {
                            LODWORD(v80) = 0;
                          }

                          v84 = v30 - v80;
                          v85 = (v79 + 4);
                          do
                          {
                            *v85++ = v78;
                            --v84;
                          }

                          while (v84);
                          goto LABEL_82;
                        }
                      }

                      else
                      {
                        LODWORD(v72) = 0;
                      }

                      v76 = v30 - v72;
                      v77 = (v71 + 4);
                      do
                      {
                        *v77++ = v70;
                        --v76;
                      }

                      while (v76);
                      goto LABEL_75;
                    }
                  }

                  else
                  {
                    LODWORD(v64) = 0;
                  }

                  v68 = v30 - v64;
                  v69 = (v63 + 4);
                  do
                  {
                    *v69++ = v62;
                    --v68;
                  }

                  while (v68);
                  goto LABEL_68;
                }
              }

              else
              {
                LODWORD(v56) = 0;
              }

              v60 = v30 - v56;
              v61 = (v55 + 4);
              do
              {
                *v61++ = v54;
                --v60;
              }

              while (v60);
              goto LABEL_61;
            }
          }

          else
          {
            LODWORD(v47) = 0;
          }

          v52 = v30 - v47;
          v53 = (v44 + 4);
          do
          {
            *v53++ = v43;
            --v52;
          }

          while (v52);
          goto LABEL_54;
        }
      }

      else
      {
        LODWORD(v35) = 0;
      }

      v41 = v30 - v35;
      v42 = v33 + 1;
      do
      {
        *v42++ = v34;
        --v41;
      }

      while (v41);
      goto LABEL_45;
    }

    if (!v30)
    {
      goto LABEL_23;
    }

    v36 = *v33;
    if (v30 < 4)
    {
      LODWORD(v37) = 0;
      goto LABEL_164;
    }

    if (v30 >= 0x10)
    {
      v166 = vdupq_n_s16(v36);
      v48 = v30 & 0x7FFFFFF0;
      v167 = (&v357[1].i16[v32 + 1] + v16);
      v168 = v48;
      do
      {
        v167[-1] = v166;
        *v167 = v166;
        v167 += 2;
        v168 -= 16;
      }

      while (v168);
      if (v48 == v30)
      {
        goto LABEL_166;
      }

      if ((v30 & 0xC) == 0)
      {
        v33 = (v33 + 2 * v48);
        LODWORD(v37) = v30 & 0x7FFFFFF0;
LABEL_164:
        v173 = v30 - v37;
        v174 = v33 + 1;
        do
        {
          *v174++ = v36;
          --v173;
        }

        while (v173);
        goto LABEL_166;
      }
    }

    else
    {
      v48 = 0;
    }

    v37 = v30 & 0x7FFFFFFC;
    v33 = (v33 + 2 * v37);
    v169 = vdup_n_s16(v36);
    v170 = -2;
    if (v15)
    {
      v170 = 0;
    }

    v171 = (v357 + 2 * v48 + v170 + v16);
    v172 = v48 - v37;
    do
    {
      *v171++ = v169;
      v172 += 4;
    }

    while (v172);
    if (v37 != v30)
    {
      goto LABEL_164;
    }

LABEL_166:
    v176 = v31 + 30;
    v175 = *(v31 + 15);
    v177 = (v30 - 1);
    v178 = v177 + 1;
    if (v177 < 3)
    {
      LODWORD(v179) = 0;
      goto LABEL_179;
    }

    if (v177 >= 0xF)
    {
      v180 = v178 & 0x1FFFFFFF0;
      v181 = vdupq_n_s16(v175);
      v182 = &v357[3].i8[v16];
      v183 = v178 & 0x1FFFFFFF0;
      do
      {
        v182[-1] = v181;
        *v182 = v181;
        v182 += 2;
        v183 -= 16;
      }

      while (v183);
      if (v178 == v180)
      {
        goto LABEL_181;
      }

      if ((v178 & 0xC) == 0)
      {
        v176 += 2 * v180;
        LODWORD(v179) = v178 & 0xFFFFFFF0;
LABEL_179:
        v187 = v30 - v179;
        v188 = v176 + 2;
        do
        {
          *v188++ = v175;
          --v187;
        }

        while (v187);
        goto LABEL_181;
      }
    }

    else
    {
      v180 = 0;
    }

    v179 = v178 & 0x1FFFFFFFCLL;
    v184 = vdup_n_s16(v175);
    v176 += 2 * (v178 & 0x1FFFFFFFCLL);
    v185 = (&v357[2] + 2 * v180 + v16);
    v186 = v180 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v185++ = v184;
      v186 += 4;
    }

    while (v186);
    if (v178 != v179)
    {
      goto LABEL_179;
    }

LABEL_181:
    v190 = v31 + 62;
    v189 = *(v31 + 31);
    if (v177 < 3)
    {
      LODWORD(v191) = 0;
      goto LABEL_194;
    }

    if (v177 >= 0xF)
    {
      v192 = v178 & 0x1FFFFFFF0;
      v193 = vdupq_n_s16(v189);
      v194 = &v357[5].i8[v16];
      v195 = v178 & 0x1FFFFFFF0;
      do
      {
        v194[-1] = v193;
        *v194 = v193;
        v194 += 2;
        v195 -= 16;
      }

      while (v195);
      if (v178 == v192)
      {
        goto LABEL_196;
      }

      if ((v178 & 0xC) == 0)
      {
        v190 += 2 * v192;
        LODWORD(v191) = v178 & 0xFFFFFFF0;
LABEL_194:
        v199 = v30 - v191;
        v200 = v190 + 2;
        do
        {
          *v200++ = v189;
          --v199;
        }

        while (v199);
        goto LABEL_196;
      }
    }

    else
    {
      v192 = 0;
    }

    v191 = v178 & 0x1FFFFFFFCLL;
    v196 = vdup_n_s16(v189);
    v190 += 2 * (v178 & 0x1FFFFFFFCLL);
    v197 = (&v357[4] + 2 * v192 + v16);
    v198 = v192 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v197++ = v196;
      v198 += 4;
    }

    while (v198);
    if (v178 != v191)
    {
      goto LABEL_194;
    }

LABEL_196:
    v202 = v31 + 94;
    v201 = *(v31 + 47);
    if (v177 < 3)
    {
      LODWORD(v203) = 0;
      goto LABEL_209;
    }

    if (v177 >= 0xF)
    {
      v204 = v178 & 0x1FFFFFFF0;
      v205 = vdupq_n_s16(v201);
      v206 = &v357[7].i8[v16];
      v207 = v178 & 0x1FFFFFFF0;
      do
      {
        v206[-1] = v205;
        *v206 = v205;
        v206 += 2;
        v207 -= 16;
      }

      while (v207);
      if (v178 == v204)
      {
        goto LABEL_211;
      }

      if ((v178 & 0xC) == 0)
      {
        v202 += 2 * v204;
        LODWORD(v203) = v178 & 0xFFFFFFF0;
LABEL_209:
        v211 = v30 - v203;
        v212 = v202 + 2;
        do
        {
          *v212++ = v201;
          --v211;
        }

        while (v211);
        goto LABEL_211;
      }
    }

    else
    {
      v204 = 0;
    }

    v203 = v178 & 0x1FFFFFFFCLL;
    v208 = vdup_n_s16(v201);
    v202 += 2 * (v178 & 0x1FFFFFFFCLL);
    v209 = (&v357[6] + 2 * v204 + v16);
    v210 = v204 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v209++ = v208;
      v210 += 4;
    }

    while (v210);
    if (v178 != v203)
    {
      goto LABEL_209;
    }

LABEL_211:
    v214 = v31 + 126;
    v213 = *(v31 + 63);
    if (v177 < 3)
    {
      LODWORD(v215) = 0;
      goto LABEL_224;
    }

    if (v177 >= 0xF)
    {
      v216 = v178 & 0x1FFFFFFF0;
      v217 = vdupq_n_s16(v213);
      v218 = &v357[9].i8[v16];
      v219 = v178 & 0x1FFFFFFF0;
      do
      {
        v218[-1] = v217;
        *v218 = v217;
        v218 += 2;
        v219 -= 16;
      }

      while (v219);
      if (v178 == v216)
      {
        goto LABEL_226;
      }

      if ((v178 & 0xC) == 0)
      {
        v214 += 2 * v216;
        LODWORD(v215) = v178 & 0xFFFFFFF0;
LABEL_224:
        v223 = v30 - v215;
        v224 = v214 + 2;
        do
        {
          *v224++ = v213;
          --v223;
        }

        while (v223);
        goto LABEL_226;
      }
    }

    else
    {
      v216 = 0;
    }

    v215 = v178 & 0x1FFFFFFFCLL;
    v220 = vdup_n_s16(v213);
    v214 += 2 * (v178 & 0x1FFFFFFFCLL);
    v221 = (&v357[8] + 2 * v216 + v16);
    v222 = v216 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v221++ = v220;
      v222 += 4;
    }

    while (v222);
    if (v178 != v215)
    {
      goto LABEL_224;
    }

LABEL_226:
    v226 = v31 + 158;
    v225 = *(v31 + 79);
    if (v177 < 3)
    {
      LODWORD(v227) = 0;
      goto LABEL_239;
    }

    if (v177 >= 0xF)
    {
      v228 = v178 & 0x1FFFFFFF0;
      v229 = vdupq_n_s16(v225);
      v230 = &v357[11].i8[v16];
      v231 = v178 & 0x1FFFFFFF0;
      do
      {
        v230[-1] = v229;
        *v230 = v229;
        v230 += 2;
        v231 -= 16;
      }

      while (v231);
      if (v178 == v228)
      {
        goto LABEL_241;
      }

      if ((v178 & 0xC) == 0)
      {
        v226 += 2 * v228;
        LODWORD(v227) = v178 & 0xFFFFFFF0;
LABEL_239:
        v235 = v30 - v227;
        v236 = v226 + 2;
        do
        {
          *v236++ = v225;
          --v235;
        }

        while (v235);
        goto LABEL_241;
      }
    }

    else
    {
      v228 = 0;
    }

    v227 = v178 & 0x1FFFFFFFCLL;
    v232 = vdup_n_s16(v225);
    v226 += 2 * (v178 & 0x1FFFFFFFCLL);
    v233 = (&v357[10] + 2 * v228 + v16);
    v234 = v228 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v233++ = v232;
      v234 += 4;
    }

    while (v234);
    if (v178 != v227)
    {
      goto LABEL_239;
    }

LABEL_241:
    v238 = v31 + 190;
    v237 = *(v31 + 95);
    if (v177 < 3)
    {
      LODWORD(v239) = 0;
      goto LABEL_254;
    }

    if (v177 >= 0xF)
    {
      v240 = v178 & 0x1FFFFFFF0;
      v241 = vdupq_n_s16(v237);
      v242 = &v357[13].i8[v16];
      v243 = v178 & 0x1FFFFFFF0;
      do
      {
        v242[-1] = v241;
        *v242 = v241;
        v242 += 2;
        v243 -= 16;
      }

      while (v243);
      if (v178 == v240)
      {
        goto LABEL_256;
      }

      if ((v178 & 0xC) == 0)
      {
        v238 += 2 * v240;
        LODWORD(v239) = v178 & 0xFFFFFFF0;
LABEL_254:
        v247 = v30 - v239;
        v248 = v238 + 2;
        do
        {
          *v248++ = v237;
          --v247;
        }

        while (v247);
        goto LABEL_256;
      }
    }

    else
    {
      v240 = 0;
    }

    v239 = v178 & 0x1FFFFFFFCLL;
    v244 = vdup_n_s16(v237);
    v238 += 2 * (v178 & 0x1FFFFFFFCLL);
    v245 = (&v357[12] + 2 * v240 + v16);
    v246 = v240 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v245++ = v244;
      v246 += 4;
    }

    while (v246);
    if (v178 != v239)
    {
      goto LABEL_254;
    }

LABEL_256:
    v250 = v31 + 222;
    v249 = *(v31 + 111);
    if (v177 < 3)
    {
      LODWORD(v251) = 0;
      goto LABEL_269;
    }

    if (v177 >= 0xF)
    {
      v252 = v178 & 0x1FFFFFFF0;
      v253 = vdupq_n_s16(v249);
      v254 = &v357[15].i8[v16];
      v255 = v178 & 0x1FFFFFFF0;
      do
      {
        v254[-1] = v253;
        *v254 = v253;
        v254 += 2;
        v255 -= 16;
      }

      while (v255);
      if (v178 == v252)
      {
        goto LABEL_271;
      }

      if ((v178 & 0xC) == 0)
      {
        v250 += 2 * v252;
        LODWORD(v251) = v178 & 0xFFFFFFF0;
LABEL_269:
        v259 = v30 - v251;
        v260 = v250 + 2;
        do
        {
          *v260++ = v249;
          --v259;
        }

        while (v259);
        goto LABEL_271;
      }
    }

    else
    {
      v252 = 0;
    }

    v251 = v178 & 0x1FFFFFFFCLL;
    v256 = vdup_n_s16(v249);
    v250 += 2 * (v178 & 0x1FFFFFFFCLL);
    v257 = (&v357[14] + 2 * v252 + v16);
    v258 = v252 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v257++ = v256;
      v258 += 4;
    }

    while (v258);
    if (v178 != v251)
    {
      goto LABEL_269;
    }

LABEL_271:
    v262 = v31 + 254;
    v261 = *(v31 + 127);
    if (v177 < 3)
    {
      LODWORD(v263) = 0;
      goto LABEL_284;
    }

    if (v177 >= 0xF)
    {
      v264 = v178 & 0x1FFFFFFF0;
      v265 = vdupq_n_s16(v261);
      v266 = &v357[17].i8[v16];
      v267 = v178 & 0x1FFFFFFF0;
      do
      {
        v266[-1] = v265;
        *v266 = v265;
        v266 += 2;
        v267 -= 16;
      }

      while (v267);
      if (v178 == v264)
      {
        goto LABEL_286;
      }

      if ((v178 & 0xC) == 0)
      {
        v262 += 2 * v264;
        LODWORD(v263) = v178 & 0xFFFFFFF0;
LABEL_284:
        v271 = v30 - v263;
        v272 = v262 + 2;
        do
        {
          *v272++ = v261;
          --v271;
        }

        while (v271);
        goto LABEL_286;
      }
    }

    else
    {
      v264 = 0;
    }

    v263 = v178 & 0x1FFFFFFFCLL;
    v268 = vdup_n_s16(v261);
    v262 += 2 * (v178 & 0x1FFFFFFFCLL);
    v269 = (&v357[16] + 2 * v264 + v16);
    v270 = v264 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v269++ = v268;
      v270 += 4;
    }

    while (v270);
    if (v178 != v263)
    {
      goto LABEL_284;
    }

LABEL_286:
    v273 = v31 + 286;
    v274 = *(v31 + 143);
    if (v177 < 3)
    {
      LODWORD(v275) = 0;
      goto LABEL_299;
    }

    if (v177 >= 0xF)
    {
      v276 = v178 & 0x1FFFFFFF0;
      v277 = vdupq_n_s16(v274);
      v278 = &v357[19].i8[v16];
      v279 = v178 & 0x1FFFFFFF0;
      do
      {
        v278[-1] = v277;
        *v278 = v277;
        v278 += 2;
        v279 -= 16;
      }

      while (v279);
      if (v178 == v276)
      {
        goto LABEL_301;
      }

      if ((v178 & 0xC) == 0)
      {
        v273 += 2 * v276;
        LODWORD(v275) = v178 & 0xFFFFFFF0;
LABEL_299:
        v283 = v30 - v275;
        v284 = v273 + 2;
        do
        {
          *v284++ = v274;
          --v283;
        }

        while (v283);
        goto LABEL_301;
      }
    }

    else
    {
      v276 = 0;
    }

    v275 = v178 & 0x1FFFFFFFCLL;
    v280 = vdup_n_s16(v274);
    v273 += 2 * (v178 & 0x1FFFFFFFCLL);
    v281 = (&v357[18] + 2 * v276 + v16);
    v282 = v276 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v281++ = v280;
      v282 += 4;
    }

    while (v282);
    if (v178 != v275)
    {
      goto LABEL_299;
    }

LABEL_301:
    v285 = v31 + 318;
    v286 = *(v31 + 159);
    if (v177 < 3)
    {
      LODWORD(v287) = 0;
      goto LABEL_314;
    }

    if (v177 >= 0xF)
    {
      v288 = v178 & 0x1FFFFFFF0;
      v289 = vdupq_n_s16(v286);
      v290 = &v357[21].i8[v16];
      v291 = v178 & 0x1FFFFFFF0;
      do
      {
        v290[-1] = v289;
        *v290 = v289;
        v290 += 2;
        v291 -= 16;
      }

      while (v291);
      if (v178 == v288)
      {
        goto LABEL_316;
      }

      if ((v178 & 0xC) == 0)
      {
        v285 += 2 * v288;
        LODWORD(v287) = v178 & 0xFFFFFFF0;
LABEL_314:
        v295 = v30 - v287;
        v296 = v285 + 2;
        do
        {
          *v296++ = v286;
          --v295;
        }

        while (v295);
        goto LABEL_316;
      }
    }

    else
    {
      v288 = 0;
    }

    v287 = v178 & 0x1FFFFFFFCLL;
    v292 = vdup_n_s16(v286);
    v285 += 2 * (v178 & 0x1FFFFFFFCLL);
    v293 = (&v357[20] + 2 * v288 + v16);
    v294 = v288 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v293++ = v292;
      v294 += 4;
    }

    while (v294);
    if (v178 != v287)
    {
      goto LABEL_314;
    }

LABEL_316:
    v297 = v31 + 350;
    v298 = *(v31 + 175);
    if (v177 < 3)
    {
      LODWORD(v299) = 0;
      goto LABEL_329;
    }

    if (v177 >= 0xF)
    {
      v300 = v178 & 0x1FFFFFFF0;
      v301 = vdupq_n_s16(v298);
      v302 = &v357[23].i8[v16];
      v303 = v178 & 0x1FFFFFFF0;
      do
      {
        v302[-1] = v301;
        *v302 = v301;
        v302 += 2;
        v303 -= 16;
      }

      while (v303);
      if (v178 == v300)
      {
        goto LABEL_331;
      }

      if ((v178 & 0xC) == 0)
      {
        v297 += 2 * v300;
        LODWORD(v299) = v178 & 0xFFFFFFF0;
LABEL_329:
        v307 = v30 - v299;
        v308 = v297 + 2;
        do
        {
          *v308++ = v298;
          --v307;
        }

        while (v307);
        goto LABEL_331;
      }
    }

    else
    {
      v300 = 0;
    }

    v299 = v178 & 0x1FFFFFFFCLL;
    v304 = vdup_n_s16(v298);
    v297 += 2 * (v178 & 0x1FFFFFFFCLL);
    v305 = (&v357[22] + 2 * v300 + v16);
    v306 = v300 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v305++ = v304;
      v306 += 4;
    }

    while (v306);
    if (v178 != v299)
    {
      goto LABEL_329;
    }

LABEL_331:
    v309 = v31 + 382;
    v310 = *(v31 + 191);
    if (v177 < 3)
    {
      LODWORD(v311) = 0;
      goto LABEL_344;
    }

    if (v177 >= 0xF)
    {
      v312 = v178 & 0x1FFFFFFF0;
      v313 = vdupq_n_s16(v310);
      v314 = &v357[25].i8[v16];
      v315 = v178 & 0x1FFFFFFF0;
      do
      {
        v314[-1] = v313;
        *v314 = v313;
        v314 += 2;
        v315 -= 16;
      }

      while (v315);
      if (v178 == v312)
      {
        goto LABEL_346;
      }

      if ((v178 & 0xC) == 0)
      {
        v309 += 2 * v312;
        LODWORD(v311) = v178 & 0xFFFFFFF0;
LABEL_344:
        v319 = v30 - v311;
        v320 = v309 + 2;
        do
        {
          *v320++ = v310;
          --v319;
        }

        while (v319);
        goto LABEL_346;
      }
    }

    else
    {
      v312 = 0;
    }

    v311 = v178 & 0x1FFFFFFFCLL;
    v316 = vdup_n_s16(v310);
    v309 += 2 * (v178 & 0x1FFFFFFFCLL);
    v317 = (&v357[24] + 2 * v312 + v16);
    v318 = v312 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v317++ = v316;
      v318 += 4;
    }

    while (v318);
    if (v178 != v311)
    {
      goto LABEL_344;
    }

LABEL_346:
    v321 = v31 + 414;
    v322 = *(v31 + 207);
    if (v177 < 3)
    {
      LODWORD(v323) = 0;
      goto LABEL_359;
    }

    if (v177 >= 0xF)
    {
      v324 = v178 & 0x1FFFFFFF0;
      v325 = vdupq_n_s16(v322);
      v326 = &v357[27].i8[v16];
      v327 = v178 & 0x1FFFFFFF0;
      do
      {
        v326[-1] = v325;
        *v326 = v325;
        v326 += 2;
        v327 -= 16;
      }

      while (v327);
      if (v178 == v324)
      {
        goto LABEL_361;
      }

      if ((v178 & 0xC) == 0)
      {
        v321 += 2 * v324;
        LODWORD(v323) = v178 & 0xFFFFFFF0;
LABEL_359:
        v331 = v30 - v323;
        v332 = v321 + 2;
        do
        {
          *v332++ = v322;
          --v331;
        }

        while (v331);
        goto LABEL_361;
      }
    }

    else
    {
      v324 = 0;
    }

    v323 = v178 & 0x1FFFFFFFCLL;
    v328 = vdup_n_s16(v322);
    v321 += 2 * (v178 & 0x1FFFFFFFCLL);
    v329 = (&v357[26] + 2 * v324 + v16);
    v330 = v324 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v329++ = v328;
      v330 += 4;
    }

    while (v330);
    if (v178 != v323)
    {
      goto LABEL_359;
    }

LABEL_361:
    v333 = v31 + 446;
    v334 = *(v31 + 223);
    if (v177 < 3)
    {
      LODWORD(v335) = 0;
      goto LABEL_374;
    }

    if (v177 >= 0xF)
    {
      v336 = v178 & 0x1FFFFFFF0;
      v337 = vdupq_n_s16(v334);
      v338 = &v357[29].i8[v16];
      v339 = v178 & 0x1FFFFFFF0;
      do
      {
        v338[-1] = v337;
        *v338 = v337;
        v338 += 2;
        v339 -= 16;
      }

      while (v339);
      if (v178 == v336)
      {
        goto LABEL_376;
      }

      if ((v178 & 0xC) == 0)
      {
        v333 += 2 * v336;
        LODWORD(v335) = v178 & 0xFFFFFFF0;
LABEL_374:
        v343 = v30 - v335;
        v344 = v333 + 2;
        do
        {
          *v344++ = v334;
          --v343;
        }

        while (v343);
        goto LABEL_376;
      }
    }

    else
    {
      v336 = 0;
    }

    v335 = v178 & 0x1FFFFFFFCLL;
    v340 = vdup_n_s16(v334);
    v333 += 2 * (v178 & 0x1FFFFFFFCLL);
    v341 = (&v357[28] + 2 * v336 + v16);
    v342 = v336 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v341++ = v340;
      v342 += 4;
    }

    while (v342);
    if (v178 != v335)
    {
      goto LABEL_374;
    }

LABEL_376:
    v345 = v31 + 478;
    v346 = *(v31 + 239);
    if (v177 < 3)
    {
      LODWORD(v347) = 0;
      goto LABEL_389;
    }

    if (v177 >= 0xF)
    {
      v348 = v178 & 0x1FFFFFFF0;
      v349 = vdupq_n_s16(v346);
      v350 = &v357[31].i8[v16];
      v351 = v178 & 0x1FFFFFFF0;
      do
      {
        v350[-1] = v349;
        *v350 = v349;
        v350 += 2;
        v351 -= 16;
      }

      while (v351);
      if (v178 == v348)
      {
        goto LABEL_23;
      }

      if ((v178 & 0xC) == 0)
      {
        v345 += 2 * v348;
        LODWORD(v347) = v178 & 0xFFFFFFF0;
LABEL_389:
        v355 = v30 - v347;
        v356 = v345 + 2;
        do
        {
          *v356++ = v346;
          --v355;
        }

        while (v355);
        goto LABEL_23;
      }
    }

    else
    {
      v348 = 0;
    }

    v347 = v178 & 0x1FFFFFFFCLL;
    v352 = vdup_n_s16(v346);
    v345 += 2 * (v178 & 0x1FFFFFFFCLL);
    v353 = (&v357[30] + 2 * v348 + v16);
    v354 = v348 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v353++ = v352;
      v354 += 4;
    }

    while (v354);
    if (v178 == v347)
    {
      goto LABEL_23;
    }

    goto LABEL_389;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v9 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)846624121,(ChromaFormat)2>(v2, v6, v3);
}

int8x16_t *pixInGeneric<(PixelFormat)2037741171,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = v3;
  v8 = v2;
  v358 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v11 = 16 - v4;
      if (v4 <= 0)
      {
        v12 = v6;
        v13 = v357;
        goto LABEL_20;
      }

LABEL_18:
      v12 = v6;
      v22 = v4 + 1;
      v13 = v357;
      do
      {
        v23 = v8[1];
        *v13 = *v8;
        v13[1] = v23;
        v13 += 2;
        v8 = (v8 + v6);
        --v22;
      }

      while (v22 > 1);
LABEL_20:
      if (v11 >= 1)
      {
        v24 = (v8 - v12);
        v25 = *v24;
        v26 = v11 + 1;
        do
        {
          *v13 = v25;
          v13[1] = v24[1];
          v13 += 2;
          --v26;
        }

        while (v26 > 1);
      }

      goto LABEL_23;
    }

    if (v5 > 15)
    {
      goto LABEL_23;
    }

    v14 = 2 * v5;
    v15 = v5;
    if (v4 <= 0)
    {
      v21 = &v2->i8[-v6];
      v20 = v357;
    }

    else
    {
      v16 = v14;
      v17 = v6;
      v18 = v4;
      v19 = v4 + 1;
      v20 = v357;
      do
      {
        memcpy(v20, v8, v14);
        v8 = (v8 + v17);
        v20 += 2;
        --v19;
      }

      while (v19 > 1);
      if (v18 > 15)
      {
        goto LABEL_27;
      }

      v4 = v18;
      v21 = &v8->i8[-v17];
    }

    v16 = v14;
    v28 = 17 - v4;
    do
    {
      memcpy(v20, v21, v14);
      v20 += 2;
      --v28;
    }

    while (v28 > 1);
LABEL_27:
    if (v15)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    v30 = (32 - v14) >> v29;
    v31 = &v357[0].i8[v16];
    if (v15)
    {
      v32 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = 0x7FFFFFFFFFFFFFFELL;
    }

    v33 = &v31[v32 * 2];
    if ((v15 & 1) == 0)
    {
      if (!v30)
      {
        goto LABEL_23;
      }

      v34 = *v33;
      if (v30 >= 8)
      {
        v35 = v30 & 0x7FFFFFF8;
        v38 = vdupq_n_s32(v34);
        v33 += v35;
        v39 = (v357[1].i64 + v32 * 2 + v16 + 4);
        v40 = v35;
        do
        {
          v39[-1] = v38;
          *v39 = v38;
          v39 += 2;
          v40 -= 8;
        }

        while (v40);
        if (v35 == v30)
        {
LABEL_45:
          v44 = v31 + 28;
          v43 = *(v31 + 7);
          v45 = (v30 - 1);
          v46 = v45 + 1;
          if (v45 >= 7)
          {
            v47 = v46 & 0x1FFFFFFF8;
            v44 += 4 * (v46 & 0x1FFFFFFF8);
            v49 = vdupq_n_s32(v43);
            v50 = &v357[3].i8[v16];
            v51 = v46 & 0x1FFFFFFF8;
            do
            {
              v50[-1] = v49;
              *v50 = v49;
              v50 += 2;
              v51 -= 8;
            }

            while (v51);
            if (v46 == v47)
            {
LABEL_54:
              v55 = v31 + 60;
              v54 = *(v31 + 15);
              if (v45 >= 7)
              {
                v56 = v46 & 0x1FFFFFFF8;
                v55 += 4 * (v46 & 0x1FFFFFFF8);
                v57 = vdupq_n_s32(v54);
                v58 = &v357[5].i8[v16];
                v59 = v46 & 0x1FFFFFFF8;
                do
                {
                  v58[-1] = v57;
                  *v58 = v57;
                  v58 += 2;
                  v59 -= 8;
                }

                while (v59);
                if (v46 == v56)
                {
LABEL_61:
                  v63 = v31 + 92;
                  v62 = *(v31 + 23);
                  if (v45 >= 7)
                  {
                    v64 = v46 & 0x1FFFFFFF8;
                    v63 += 4 * (v46 & 0x1FFFFFFF8);
                    v65 = vdupq_n_s32(v62);
                    v66 = &v357[7].i8[v16];
                    v67 = v46 & 0x1FFFFFFF8;
                    do
                    {
                      v66[-1] = v65;
                      *v66 = v65;
                      v66 += 2;
                      v67 -= 8;
                    }

                    while (v67);
                    if (v46 == v64)
                    {
LABEL_68:
                      v71 = v31 + 124;
                      v70 = *(v31 + 31);
                      if (v45 >= 7)
                      {
                        v72 = v46 & 0x1FFFFFFF8;
                        v71 += 4 * (v46 & 0x1FFFFFFF8);
                        v73 = vdupq_n_s32(v70);
                        v74 = &v357[9].i8[v16];
                        v75 = v46 & 0x1FFFFFFF8;
                        do
                        {
                          v74[-1] = v73;
                          *v74 = v73;
                          v74 += 2;
                          v75 -= 8;
                        }

                        while (v75);
                        if (v46 == v72)
                        {
LABEL_75:
                          v79 = v31 + 156;
                          v78 = *(v31 + 39);
                          if (v45 >= 7)
                          {
                            v80 = v46 & 0x1FFFFFFF8;
                            v79 += 4 * (v46 & 0x1FFFFFFF8);
                            v81 = vdupq_n_s32(v78);
                            v82 = &v357[11].i8[v16];
                            v83 = v46 & 0x1FFFFFFF8;
                            do
                            {
                              v82[-1] = v81;
                              *v82 = v81;
                              v82 += 2;
                              v83 -= 8;
                            }

                            while (v83);
                            if (v46 == v80)
                            {
LABEL_82:
                              v87 = v31 + 188;
                              v86 = *(v31 + 47);
                              if (v45 >= 7)
                              {
                                v88 = v46 & 0x1FFFFFFF8;
                                v87 += 4 * (v46 & 0x1FFFFFFF8);
                                v89 = vdupq_n_s32(v86);
                                v90 = &v357[13].i8[v16];
                                v91 = v46 & 0x1FFFFFFF8;
                                do
                                {
                                  v90[-1] = v89;
                                  *v90 = v89;
                                  v90 += 2;
                                  v91 -= 8;
                                }

                                while (v91);
                                if (v46 == v88)
                                {
LABEL_89:
                                  v95 = v31 + 220;
                                  v94 = *(v31 + 55);
                                  if (v45 >= 7)
                                  {
                                    v96 = v46 & 0x1FFFFFFF8;
                                    v95 += 4 * (v46 & 0x1FFFFFFF8);
                                    v97 = vdupq_n_s32(v94);
                                    v98 = &v357[15].i8[v16];
                                    v99 = v46 & 0x1FFFFFFF8;
                                    do
                                    {
                                      v98[-1] = v97;
                                      *v98 = v97;
                                      v98 += 2;
                                      v99 -= 8;
                                    }

                                    while (v99);
                                    if (v46 == v96)
                                    {
LABEL_96:
                                      v103 = v31 + 252;
                                      v102 = *(v31 + 63);
                                      if (v45 >= 7)
                                      {
                                        v104 = v46 & 0x1FFFFFFF8;
                                        v103 += 4 * (v46 & 0x1FFFFFFF8);
                                        v105 = vdupq_n_s32(v102);
                                        v106 = &v357[17].i8[v16];
                                        v107 = v46 & 0x1FFFFFFF8;
                                        do
                                        {
                                          v106[-1] = v105;
                                          *v106 = v105;
                                          v106 += 2;
                                          v107 -= 8;
                                        }

                                        while (v107);
                                        if (v46 == v104)
                                        {
LABEL_103:
                                          v110 = v31 + 284;
                                          v111 = *(v31 + 71);
                                          if (v45 >= 7)
                                          {
                                            v112 = v46 & 0x1FFFFFFF8;
                                            v110 += 4 * (v46 & 0x1FFFFFFF8);
                                            v113 = vdupq_n_s32(v111);
                                            v114 = &v357[19].i8[v16];
                                            v115 = v46 & 0x1FFFFFFF8;
                                            do
                                            {
                                              v114[-1] = v113;
                                              *v114 = v113;
                                              v114 += 2;
                                              v115 -= 8;
                                            }

                                            while (v115);
                                            if (v46 == v112)
                                            {
LABEL_110:
                                              v118 = v31 + 316;
                                              v119 = *(v31 + 79);
                                              if (v45 >= 7)
                                              {
                                                v120 = v46 & 0x1FFFFFFF8;
                                                v118 += 4 * (v46 & 0x1FFFFFFF8);
                                                v121 = vdupq_n_s32(v119);
                                                v122 = &v357[21].i8[v16];
                                                v123 = v46 & 0x1FFFFFFF8;
                                                do
                                                {
                                                  v122[-1] = v121;
                                                  *v122 = v121;
                                                  v122 += 2;
                                                  v123 -= 8;
                                                }

                                                while (v123);
                                                if (v46 == v120)
                                                {
LABEL_117:
                                                  v126 = v31 + 348;
                                                  v127 = *(v31 + 87);
                                                  if (v45 >= 7)
                                                  {
                                                    v128 = v46 & 0x1FFFFFFF8;
                                                    v126 += 4 * (v46 & 0x1FFFFFFF8);
                                                    v129 = vdupq_n_s32(v127);
                                                    v130 = &v357[23].i8[v16];
                                                    v131 = v46 & 0x1FFFFFFF8;
                                                    do
                                                    {
                                                      v130[-1] = v129;
                                                      *v130 = v129;
                                                      v130 += 2;
                                                      v131 -= 8;
                                                    }

                                                    while (v131);
                                                    if (v46 == v128)
                                                    {
LABEL_124:
                                                      v134 = v31 + 380;
                                                      v135 = *(v31 + 95);
                                                      if (v45 >= 7)
                                                      {
                                                        v136 = v46 & 0x1FFFFFFF8;
                                                        v134 += 4 * (v46 & 0x1FFFFFFF8);
                                                        v137 = vdupq_n_s32(v135);
                                                        v138 = &v357[25].i8[v16];
                                                        v139 = v46 & 0x1FFFFFFF8;
                                                        do
                                                        {
                                                          v138[-1] = v137;
                                                          *v138 = v137;
                                                          v138 += 2;
                                                          v139 -= 8;
                                                        }

                                                        while (v139);
                                                        if (v46 == v136)
                                                        {
LABEL_131:
                                                          v142 = v31 + 412;
                                                          v143 = *(v31 + 103);
                                                          if (v45 >= 7)
                                                          {
                                                            v144 = v46 & 0x1FFFFFFF8;
                                                            v142 += 4 * (v46 & 0x1FFFFFFF8);
                                                            v145 = vdupq_n_s32(v143);
                                                            v146 = &v357[27].i8[v16];
                                                            v147 = v46 & 0x1FFFFFFF8;
                                                            do
                                                            {
                                                              v146[-1] = v145;
                                                              *v146 = v145;
                                                              v146 += 2;
                                                              v147 -= 8;
                                                            }

                                                            while (v147);
                                                            if (v46 == v144)
                                                            {
LABEL_138:
                                                              v150 = v31 + 444;
                                                              v151 = *(v31 + 111);
                                                              if (v45 >= 7)
                                                              {
                                                                v152 = v46 & 0x1FFFFFFF8;
                                                                v150 += 4 * (v46 & 0x1FFFFFFF8);
                                                                v153 = vdupq_n_s32(v151);
                                                                v154 = &v357[29].i8[v16];
                                                                v155 = v46 & 0x1FFFFFFF8;
                                                                do
                                                                {
                                                                  v154[-1] = v153;
                                                                  *v154 = v153;
                                                                  v154 += 2;
                                                                  v155 -= 8;
                                                                }

                                                                while (v155);
                                                                if (v46 == v152)
                                                                {
                                                                  goto LABEL_145;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                LODWORD(v152) = 0;
                                                              }

                                                              v156 = v30 - v152;
                                                              v157 = (v150 + 4);
                                                              do
                                                              {
                                                                *v157++ = v151;
                                                                --v156;
                                                              }

                                                              while (v156);
LABEL_145:
                                                              v158 = v31 + 476;
                                                              v159 = *(v31 + 119);
                                                              if (v45 >= 7)
                                                              {
                                                                v160 = v46 & 0x1FFFFFFF8;
                                                                v158 += 4 * (v46 & 0x1FFFFFFF8);
                                                                v161 = vdupq_n_s32(v159);
                                                                v162 = &v357[31].i8[v16];
                                                                v163 = v46 & 0x1FFFFFFF8;
                                                                do
                                                                {
                                                                  v162[-1] = v161;
                                                                  *v162 = v161;
                                                                  v162 += 2;
                                                                  v163 -= 8;
                                                                }

                                                                while (v163);
                                                                if (v46 == v160)
                                                                {
                                                                  goto LABEL_23;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                LODWORD(v160) = 0;
                                                              }

                                                              v164 = v30 - v160;
                                                              v165 = (v158 + 4);
                                                              do
                                                              {
                                                                *v165++ = v159;
                                                                --v164;
                                                              }

                                                              while (v164);
LABEL_23:
                                                              result = pixInFullMB<(PixelFormat)2037741171,(ChromaFormat)2>(v357, 32, v7);
                                                              v27 = *MEMORY[0x29EDCA608];
                                                              return result;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            LODWORD(v144) = 0;
                                                          }

                                                          v148 = v30 - v144;
                                                          v149 = (v142 + 4);
                                                          do
                                                          {
                                                            *v149++ = v143;
                                                            --v148;
                                                          }

                                                          while (v148);
                                                          goto LABEL_138;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        LODWORD(v136) = 0;
                                                      }

                                                      v140 = v30 - v136;
                                                      v141 = (v134 + 4);
                                                      do
                                                      {
                                                        *v141++ = v135;
                                                        --v140;
                                                      }

                                                      while (v140);
                                                      goto LABEL_131;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    LODWORD(v128) = 0;
                                                  }

                                                  v132 = v30 - v128;
                                                  v133 = (v126 + 4);
                                                  do
                                                  {
                                                    *v133++ = v127;
                                                    --v132;
                                                  }

                                                  while (v132);
                                                  goto LABEL_124;
                                                }
                                              }

                                              else
                                              {
                                                LODWORD(v120) = 0;
                                              }

                                              v124 = v30 - v120;
                                              v125 = (v118 + 4);
                                              do
                                              {
                                                *v125++ = v119;
                                                --v124;
                                              }

                                              while (v124);
                                              goto LABEL_117;
                                            }
                                          }

                                          else
                                          {
                                            LODWORD(v112) = 0;
                                          }

                                          v116 = v30 - v112;
                                          v117 = (v110 + 4);
                                          do
                                          {
                                            *v117++ = v111;
                                            --v116;
                                          }

                                          while (v116);
                                          goto LABEL_110;
                                        }
                                      }

                                      else
                                      {
                                        LODWORD(v104) = 0;
                                      }

                                      v108 = v30 - v104;
                                      v109 = (v103 + 4);
                                      do
                                      {
                                        *v109++ = v102;
                                        --v108;
                                      }

                                      while (v108);
                                      goto LABEL_103;
                                    }
                                  }

                                  else
                                  {
                                    LODWORD(v96) = 0;
                                  }

                                  v100 = v30 - v96;
                                  v101 = (v95 + 4);
                                  do
                                  {
                                    *v101++ = v94;
                                    --v100;
                                  }

                                  while (v100);
                                  goto LABEL_96;
                                }
                              }

                              else
                              {
                                LODWORD(v88) = 0;
                              }

                              v92 = v30 - v88;
                              v93 = (v87 + 4);
                              do
                              {
                                *v93++ = v86;
                                --v92;
                              }

                              while (v92);
                              goto LABEL_89;
                            }
                          }

                          else
                          {
                            LODWORD(v80) = 0;
                          }

                          v84 = v30 - v80;
                          v85 = (v79 + 4);
                          do
                          {
                            *v85++ = v78;
                            --v84;
                          }

                          while (v84);
                          goto LABEL_82;
                        }
                      }

                      else
                      {
                        LODWORD(v72) = 0;
                      }

                      v76 = v30 - v72;
                      v77 = (v71 + 4);
                      do
                      {
                        *v77++ = v70;
                        --v76;
                      }

                      while (v76);
                      goto LABEL_75;
                    }
                  }

                  else
                  {
                    LODWORD(v64) = 0;
                  }

                  v68 = v30 - v64;
                  v69 = (v63 + 4);
                  do
                  {
                    *v69++ = v62;
                    --v68;
                  }

                  while (v68);
                  goto LABEL_68;
                }
              }

              else
              {
                LODWORD(v56) = 0;
              }

              v60 = v30 - v56;
              v61 = (v55 + 4);
              do
              {
                *v61++ = v54;
                --v60;
              }

              while (v60);
              goto LABEL_61;
            }
          }

          else
          {
            LODWORD(v47) = 0;
          }

          v52 = v30 - v47;
          v53 = (v44 + 4);
          do
          {
            *v53++ = v43;
            --v52;
          }

          while (v52);
          goto LABEL_54;
        }
      }

      else
      {
        LODWORD(v35) = 0;
      }

      v41 = v30 - v35;
      v42 = v33 + 1;
      do
      {
        *v42++ = v34;
        --v41;
      }

      while (v41);
      goto LABEL_45;
    }

    if (!v30)
    {
      goto LABEL_23;
    }

    v36 = *v33;
    if (v30 < 4)
    {
      LODWORD(v37) = 0;
      goto LABEL_164;
    }

    if (v30 >= 0x10)
    {
      v166 = vdupq_n_s16(v36);
      v48 = v30 & 0x7FFFFFF0;
      v167 = (&v357[1].i16[v32 + 1] + v16);
      v168 = v48;
      do
      {
        v167[-1] = v166;
        *v167 = v166;
        v167 += 2;
        v168 -= 16;
      }

      while (v168);
      if (v48 == v30)
      {
        goto LABEL_166;
      }

      if ((v30 & 0xC) == 0)
      {
        v33 = (v33 + 2 * v48);
        LODWORD(v37) = v30 & 0x7FFFFFF0;
LABEL_164:
        v173 = v30 - v37;
        v174 = v33 + 1;
        do
        {
          *v174++ = v36;
          --v173;
        }

        while (v173);
        goto LABEL_166;
      }
    }

    else
    {
      v48 = 0;
    }

    v37 = v30 & 0x7FFFFFFC;
    v33 = (v33 + 2 * v37);
    v169 = vdup_n_s16(v36);
    v170 = -2;
    if (v15)
    {
      v170 = 0;
    }

    v171 = (v357 + 2 * v48 + v170 + v16);
    v172 = v48 - v37;
    do
    {
      *v171++ = v169;
      v172 += 4;
    }

    while (v172);
    if (v37 != v30)
    {
      goto LABEL_164;
    }

LABEL_166:
    v176 = v31 + 30;
    v175 = *(v31 + 15);
    v177 = (v30 - 1);
    v178 = v177 + 1;
    if (v177 < 3)
    {
      LODWORD(v179) = 0;
      goto LABEL_179;
    }

    if (v177 >= 0xF)
    {
      v180 = v178 & 0x1FFFFFFF0;
      v181 = vdupq_n_s16(v175);
      v182 = &v357[3].i8[v16];
      v183 = v178 & 0x1FFFFFFF0;
      do
      {
        v182[-1] = v181;
        *v182 = v181;
        v182 += 2;
        v183 -= 16;
      }

      while (v183);
      if (v178 == v180)
      {
        goto LABEL_181;
      }

      if ((v178 & 0xC) == 0)
      {
        v176 += 2 * v180;
        LODWORD(v179) = v178 & 0xFFFFFFF0;
LABEL_179:
        v187 = v30 - v179;
        v188 = v176 + 2;
        do
        {
          *v188++ = v175;
          --v187;
        }

        while (v187);
        goto LABEL_181;
      }
    }

    else
    {
      v180 = 0;
    }

    v179 = v178 & 0x1FFFFFFFCLL;
    v184 = vdup_n_s16(v175);
    v176 += 2 * (v178 & 0x1FFFFFFFCLL);
    v185 = (&v357[2] + 2 * v180 + v16);
    v186 = v180 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v185++ = v184;
      v186 += 4;
    }

    while (v186);
    if (v178 != v179)
    {
      goto LABEL_179;
    }

LABEL_181:
    v190 = v31 + 62;
    v189 = *(v31 + 31);
    if (v177 < 3)
    {
      LODWORD(v191) = 0;
      goto LABEL_194;
    }

    if (v177 >= 0xF)
    {
      v192 = v178 & 0x1FFFFFFF0;
      v193 = vdupq_n_s16(v189);
      v194 = &v357[5].i8[v16];
      v195 = v178 & 0x1FFFFFFF0;
      do
      {
        v194[-1] = v193;
        *v194 = v193;
        v194 += 2;
        v195 -= 16;
      }

      while (v195);
      if (v178 == v192)
      {
        goto LABEL_196;
      }

      if ((v178 & 0xC) == 0)
      {
        v190 += 2 * v192;
        LODWORD(v191) = v178 & 0xFFFFFFF0;
LABEL_194:
        v199 = v30 - v191;
        v200 = v190 + 2;
        do
        {
          *v200++ = v189;
          --v199;
        }

        while (v199);
        goto LABEL_196;
      }
    }

    else
    {
      v192 = 0;
    }

    v191 = v178 & 0x1FFFFFFFCLL;
    v196 = vdup_n_s16(v189);
    v190 += 2 * (v178 & 0x1FFFFFFFCLL);
    v197 = (&v357[4] + 2 * v192 + v16);
    v198 = v192 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v197++ = v196;
      v198 += 4;
    }

    while (v198);
    if (v178 != v191)
    {
      goto LABEL_194;
    }

LABEL_196:
    v202 = v31 + 94;
    v201 = *(v31 + 47);
    if (v177 < 3)
    {
      LODWORD(v203) = 0;
      goto LABEL_209;
    }

    if (v177 >= 0xF)
    {
      v204 = v178 & 0x1FFFFFFF0;
      v205 = vdupq_n_s16(v201);
      v206 = &v357[7].i8[v16];
      v207 = v178 & 0x1FFFFFFF0;
      do
      {
        v206[-1] = v205;
        *v206 = v205;
        v206 += 2;
        v207 -= 16;
      }

      while (v207);
      if (v178 == v204)
      {
        goto LABEL_211;
      }

      if ((v178 & 0xC) == 0)
      {
        v202 += 2 * v204;
        LODWORD(v203) = v178 & 0xFFFFFFF0;
LABEL_209:
        v211 = v30 - v203;
        v212 = v202 + 2;
        do
        {
          *v212++ = v201;
          --v211;
        }

        while (v211);
        goto LABEL_211;
      }
    }

    else
    {
      v204 = 0;
    }

    v203 = v178 & 0x1FFFFFFFCLL;
    v208 = vdup_n_s16(v201);
    v202 += 2 * (v178 & 0x1FFFFFFFCLL);
    v209 = (&v357[6] + 2 * v204 + v16);
    v210 = v204 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v209++ = v208;
      v210 += 4;
    }

    while (v210);
    if (v178 != v203)
    {
      goto LABEL_209;
    }

LABEL_211:
    v214 = v31 + 126;
    v213 = *(v31 + 63);
    if (v177 < 3)
    {
      LODWORD(v215) = 0;
      goto LABEL_224;
    }

    if (v177 >= 0xF)
    {
      v216 = v178 & 0x1FFFFFFF0;
      v217 = vdupq_n_s16(v213);
      v218 = &v357[9].i8[v16];
      v219 = v178 & 0x1FFFFFFF0;
      do
      {
        v218[-1] = v217;
        *v218 = v217;
        v218 += 2;
        v219 -= 16;
      }

      while (v219);
      if (v178 == v216)
      {
        goto LABEL_226;
      }

      if ((v178 & 0xC) == 0)
      {
        v214 += 2 * v216;
        LODWORD(v215) = v178 & 0xFFFFFFF0;
LABEL_224:
        v223 = v30 - v215;
        v224 = v214 + 2;
        do
        {
          *v224++ = v213;
          --v223;
        }

        while (v223);
        goto LABEL_226;
      }
    }

    else
    {
      v216 = 0;
    }

    v215 = v178 & 0x1FFFFFFFCLL;
    v220 = vdup_n_s16(v213);
    v214 += 2 * (v178 & 0x1FFFFFFFCLL);
    v221 = (&v357[8] + 2 * v216 + v16);
    v222 = v216 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v221++ = v220;
      v222 += 4;
    }

    while (v222);
    if (v178 != v215)
    {
      goto LABEL_224;
    }

LABEL_226:
    v226 = v31 + 158;
    v225 = *(v31 + 79);
    if (v177 < 3)
    {
      LODWORD(v227) = 0;
      goto LABEL_239;
    }

    if (v177 >= 0xF)
    {
      v228 = v178 & 0x1FFFFFFF0;
      v229 = vdupq_n_s16(v225);
      v230 = &v357[11].i8[v16];
      v231 = v178 & 0x1FFFFFFF0;
      do
      {
        v230[-1] = v229;
        *v230 = v229;
        v230 += 2;
        v231 -= 16;
      }

      while (v231);
      if (v178 == v228)
      {
        goto LABEL_241;
      }

      if ((v178 & 0xC) == 0)
      {
        v226 += 2 * v228;
        LODWORD(v227) = v178 & 0xFFFFFFF0;
LABEL_239:
        v235 = v30 - v227;
        v236 = v226 + 2;
        do
        {
          *v236++ = v225;
          --v235;
        }

        while (v235);
        goto LABEL_241;
      }
    }

    else
    {
      v228 = 0;
    }

    v227 = v178 & 0x1FFFFFFFCLL;
    v232 = vdup_n_s16(v225);
    v226 += 2 * (v178 & 0x1FFFFFFFCLL);
    v233 = (&v357[10] + 2 * v228 + v16);
    v234 = v228 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v233++ = v232;
      v234 += 4;
    }

    while (v234);
    if (v178 != v227)
    {
      goto LABEL_239;
    }

LABEL_241:
    v238 = v31 + 190;
    v237 = *(v31 + 95);
    if (v177 < 3)
    {
      LODWORD(v239) = 0;
      goto LABEL_254;
    }

    if (v177 >= 0xF)
    {
      v240 = v178 & 0x1FFFFFFF0;
      v241 = vdupq_n_s16(v237);
      v242 = &v357[13].i8[v16];
      v243 = v178 & 0x1FFFFFFF0;
      do
      {
        v242[-1] = v241;
        *v242 = v241;
        v242 += 2;
        v243 -= 16;
      }

      while (v243);
      if (v178 == v240)
      {
        goto LABEL_256;
      }

      if ((v178 & 0xC) == 0)
      {
        v238 += 2 * v240;
        LODWORD(v239) = v178 & 0xFFFFFFF0;
LABEL_254:
        v247 = v30 - v239;
        v248 = v238 + 2;
        do
        {
          *v248++ = v237;
          --v247;
        }

        while (v247);
        goto LABEL_256;
      }
    }

    else
    {
      v240 = 0;
    }

    v239 = v178 & 0x1FFFFFFFCLL;
    v244 = vdup_n_s16(v237);
    v238 += 2 * (v178 & 0x1FFFFFFFCLL);
    v245 = (&v357[12] + 2 * v240 + v16);
    v246 = v240 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v245++ = v244;
      v246 += 4;
    }

    while (v246);
    if (v178 != v239)
    {
      goto LABEL_254;
    }

LABEL_256:
    v250 = v31 + 222;
    v249 = *(v31 + 111);
    if (v177 < 3)
    {
      LODWORD(v251) = 0;
      goto LABEL_269;
    }

    if (v177 >= 0xF)
    {
      v252 = v178 & 0x1FFFFFFF0;
      v253 = vdupq_n_s16(v249);
      v254 = &v357[15].i8[v16];
      v255 = v178 & 0x1FFFFFFF0;
      do
      {
        v254[-1] = v253;
        *v254 = v253;
        v254 += 2;
        v255 -= 16;
      }

      while (v255);
      if (v178 == v252)
      {
        goto LABEL_271;
      }

      if ((v178 & 0xC) == 0)
      {
        v250 += 2 * v252;
        LODWORD(v251) = v178 & 0xFFFFFFF0;
LABEL_269:
        v259 = v30 - v251;
        v260 = v250 + 2;
        do
        {
          *v260++ = v249;
          --v259;
        }

        while (v259);
        goto LABEL_271;
      }
    }

    else
    {
      v252 = 0;
    }

    v251 = v178 & 0x1FFFFFFFCLL;
    v256 = vdup_n_s16(v249);
    v250 += 2 * (v178 & 0x1FFFFFFFCLL);
    v257 = (&v357[14] + 2 * v252 + v16);
    v258 = v252 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v257++ = v256;
      v258 += 4;
    }

    while (v258);
    if (v178 != v251)
    {
      goto LABEL_269;
    }

LABEL_271:
    v262 = v31 + 254;
    v261 = *(v31 + 127);
    if (v177 < 3)
    {
      LODWORD(v263) = 0;
      goto LABEL_284;
    }

    if (v177 >= 0xF)
    {
      v264 = v178 & 0x1FFFFFFF0;
      v265 = vdupq_n_s16(v261);
      v266 = &v357[17].i8[v16];
      v267 = v178 & 0x1FFFFFFF0;
      do
      {
        v266[-1] = v265;
        *v266 = v265;
        v266 += 2;
        v267 -= 16;
      }

      while (v267);
      if (v178 == v264)
      {
        goto LABEL_286;
      }

      if ((v178 & 0xC) == 0)
      {
        v262 += 2 * v264;
        LODWORD(v263) = v178 & 0xFFFFFFF0;
LABEL_284:
        v271 = v30 - v263;
        v272 = v262 + 2;
        do
        {
          *v272++ = v261;
          --v271;
        }

        while (v271);
        goto LABEL_286;
      }
    }

    else
    {
      v264 = 0;
    }

    v263 = v178 & 0x1FFFFFFFCLL;
    v268 = vdup_n_s16(v261);
    v262 += 2 * (v178 & 0x1FFFFFFFCLL);
    v269 = (&v357[16] + 2 * v264 + v16);
    v270 = v264 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v269++ = v268;
      v270 += 4;
    }

    while (v270);
    if (v178 != v263)
    {
      goto LABEL_284;
    }

LABEL_286:
    v273 = v31 + 286;
    v274 = *(v31 + 143);
    if (v177 < 3)
    {
      LODWORD(v275) = 0;
      goto LABEL_299;
    }

    if (v177 >= 0xF)
    {
      v276 = v178 & 0x1FFFFFFF0;
      v277 = vdupq_n_s16(v274);
      v278 = &v357[19].i8[v16];
      v279 = v178 & 0x1FFFFFFF0;
      do
      {
        v278[-1] = v277;
        *v278 = v277;
        v278 += 2;
        v279 -= 16;
      }

      while (v279);
      if (v178 == v276)
      {
        goto LABEL_301;
      }

      if ((v178 & 0xC) == 0)
      {
        v273 += 2 * v276;
        LODWORD(v275) = v178 & 0xFFFFFFF0;
LABEL_299:
        v283 = v30 - v275;
        v284 = v273 + 2;
        do
        {
          *v284++ = v274;
          --v283;
        }

        while (v283);
        goto LABEL_301;
      }
    }

    else
    {
      v276 = 0;
    }

    v275 = v178 & 0x1FFFFFFFCLL;
    v280 = vdup_n_s16(v274);
    v273 += 2 * (v178 & 0x1FFFFFFFCLL);
    v281 = (&v357[18] + 2 * v276 + v16);
    v282 = v276 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v281++ = v280;
      v282 += 4;
    }

    while (v282);
    if (v178 != v275)
    {
      goto LABEL_299;
    }

LABEL_301:
    v285 = v31 + 318;
    v286 = *(v31 + 159);
    if (v177 < 3)
    {
      LODWORD(v287) = 0;
      goto LABEL_314;
    }

    if (v177 >= 0xF)
    {
      v288 = v178 & 0x1FFFFFFF0;
      v289 = vdupq_n_s16(v286);
      v290 = &v357[21].i8[v16];
      v291 = v178 & 0x1FFFFFFF0;
      do
      {
        v290[-1] = v289;
        *v290 = v289;
        v290 += 2;
        v291 -= 16;
      }

      while (v291);
      if (v178 == v288)
      {
        goto LABEL_316;
      }

      if ((v178 & 0xC) == 0)
      {
        v285 += 2 * v288;
        LODWORD(v287) = v178 & 0xFFFFFFF0;
LABEL_314:
        v295 = v30 - v287;
        v296 = v285 + 2;
        do
        {
          *v296++ = v286;
          --v295;
        }

        while (v295);
        goto LABEL_316;
      }
    }

    else
    {
      v288 = 0;
    }

    v287 = v178 & 0x1FFFFFFFCLL;
    v292 = vdup_n_s16(v286);
    v285 += 2 * (v178 & 0x1FFFFFFFCLL);
    v293 = (&v357[20] + 2 * v288 + v16);
    v294 = v288 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v293++ = v292;
      v294 += 4;
    }

    while (v294);
    if (v178 != v287)
    {
      goto LABEL_314;
    }

LABEL_316:
    v297 = v31 + 350;
    v298 = *(v31 + 175);
    if (v177 < 3)
    {
      LODWORD(v299) = 0;
      goto LABEL_329;
    }

    if (v177 >= 0xF)
    {
      v300 = v178 & 0x1FFFFFFF0;
      v301 = vdupq_n_s16(v298);
      v302 = &v357[23].i8[v16];
      v303 = v178 & 0x1FFFFFFF0;
      do
      {
        v302[-1] = v301;
        *v302 = v301;
        v302 += 2;
        v303 -= 16;
      }

      while (v303);
      if (v178 == v300)
      {
        goto LABEL_331;
      }

      if ((v178 & 0xC) == 0)
      {
        v297 += 2 * v300;
        LODWORD(v299) = v178 & 0xFFFFFFF0;
LABEL_329:
        v307 = v30 - v299;
        v308 = v297 + 2;
        do
        {
          *v308++ = v298;
          --v307;
        }

        while (v307);
        goto LABEL_331;
      }
    }

    else
    {
      v300 = 0;
    }

    v299 = v178 & 0x1FFFFFFFCLL;
    v304 = vdup_n_s16(v298);
    v297 += 2 * (v178 & 0x1FFFFFFFCLL);
    v305 = (&v357[22] + 2 * v300 + v16);
    v306 = v300 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v305++ = v304;
      v306 += 4;
    }

    while (v306);
    if (v178 != v299)
    {
      goto LABEL_329;
    }

LABEL_331:
    v309 = v31 + 382;
    v310 = *(v31 + 191);
    if (v177 < 3)
    {
      LODWORD(v311) = 0;
      goto LABEL_344;
    }

    if (v177 >= 0xF)
    {
      v312 = v178 & 0x1FFFFFFF0;
      v313 = vdupq_n_s16(v310);
      v314 = &v357[25].i8[v16];
      v315 = v178 & 0x1FFFFFFF0;
      do
      {
        v314[-1] = v313;
        *v314 = v313;
        v314 += 2;
        v315 -= 16;
      }

      while (v315);
      if (v178 == v312)
      {
        goto LABEL_346;
      }

      if ((v178 & 0xC) == 0)
      {
        v309 += 2 * v312;
        LODWORD(v311) = v178 & 0xFFFFFFF0;
LABEL_344:
        v319 = v30 - v311;
        v320 = v309 + 2;
        do
        {
          *v320++ = v310;
          --v319;
        }

        while (v319);
        goto LABEL_346;
      }
    }

    else
    {
      v312 = 0;
    }

    v311 = v178 & 0x1FFFFFFFCLL;
    v316 = vdup_n_s16(v310);
    v309 += 2 * (v178 & 0x1FFFFFFFCLL);
    v317 = (&v357[24] + 2 * v312 + v16);
    v318 = v312 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v317++ = v316;
      v318 += 4;
    }

    while (v318);
    if (v178 != v311)
    {
      goto LABEL_344;
    }

LABEL_346:
    v321 = v31 + 414;
    v322 = *(v31 + 207);
    if (v177 < 3)
    {
      LODWORD(v323) = 0;
      goto LABEL_359;
    }

    if (v177 >= 0xF)
    {
      v324 = v178 & 0x1FFFFFFF0;
      v325 = vdupq_n_s16(v322);
      v326 = &v357[27].i8[v16];
      v327 = v178 & 0x1FFFFFFF0;
      do
      {
        v326[-1] = v325;
        *v326 = v325;
        v326 += 2;
        v327 -= 16;
      }

      while (v327);
      if (v178 == v324)
      {
        goto LABEL_361;
      }

      if ((v178 & 0xC) == 0)
      {
        v321 += 2 * v324;
        LODWORD(v323) = v178 & 0xFFFFFFF0;
LABEL_359:
        v331 = v30 - v323;
        v332 = v321 + 2;
        do
        {
          *v332++ = v322;
          --v331;
        }

        while (v331);
        goto LABEL_361;
      }
    }

    else
    {
      v324 = 0;
    }

    v323 = v178 & 0x1FFFFFFFCLL;
    v328 = vdup_n_s16(v322);
    v321 += 2 * (v178 & 0x1FFFFFFFCLL);
    v329 = (&v357[26] + 2 * v324 + v16);
    v330 = v324 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v329++ = v328;
      v330 += 4;
    }

    while (v330);
    if (v178 != v323)
    {
      goto LABEL_359;
    }

LABEL_361:
    v333 = v31 + 446;
    v334 = *(v31 + 223);
    if (v177 < 3)
    {
      LODWORD(v335) = 0;
      goto LABEL_374;
    }

    if (v177 >= 0xF)
    {
      v336 = v178 & 0x1FFFFFFF0;
      v337 = vdupq_n_s16(v334);
      v338 = &v357[29].i8[v16];
      v339 = v178 & 0x1FFFFFFF0;
      do
      {
        v338[-1] = v337;
        *v338 = v337;
        v338 += 2;
        v339 -= 16;
      }

      while (v339);
      if (v178 == v336)
      {
        goto LABEL_376;
      }

      if ((v178 & 0xC) == 0)
      {
        v333 += 2 * v336;
        LODWORD(v335) = v178 & 0xFFFFFFF0;
LABEL_374:
        v343 = v30 - v335;
        v344 = v333 + 2;
        do
        {
          *v344++ = v334;
          --v343;
        }

        while (v343);
        goto LABEL_376;
      }
    }

    else
    {
      v336 = 0;
    }

    v335 = v178 & 0x1FFFFFFFCLL;
    v340 = vdup_n_s16(v334);
    v333 += 2 * (v178 & 0x1FFFFFFFCLL);
    v341 = (&v357[28] + 2 * v336 + v16);
    v342 = v336 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v341++ = v340;
      v342 += 4;
    }

    while (v342);
    if (v178 != v335)
    {
      goto LABEL_374;
    }

LABEL_376:
    v345 = v31 + 478;
    v346 = *(v31 + 239);
    if (v177 < 3)
    {
      LODWORD(v347) = 0;
      goto LABEL_389;
    }

    if (v177 >= 0xF)
    {
      v348 = v178 & 0x1FFFFFFF0;
      v349 = vdupq_n_s16(v346);
      v350 = &v357[31].i8[v16];
      v351 = v178 & 0x1FFFFFFF0;
      do
      {
        v350[-1] = v349;
        *v350 = v349;
        v350 += 2;
        v351 -= 16;
      }

      while (v351);
      if (v178 == v348)
      {
        goto LABEL_23;
      }

      if ((v178 & 0xC) == 0)
      {
        v345 += 2 * v348;
        LODWORD(v347) = v178 & 0xFFFFFFF0;
LABEL_389:
        v355 = v30 - v347;
        v356 = v345 + 2;
        do
        {
          *v356++ = v346;
          --v355;
        }

        while (v355);
        goto LABEL_23;
      }
    }

    else
    {
      v348 = 0;
    }

    v347 = v178 & 0x1FFFFFFFCLL;
    v352 = vdup_n_s16(v346);
    v345 += 2 * (v178 & 0x1FFFFFFFCLL);
    v353 = (&v357[30] + 2 * v348 + v16);
    v354 = v348 - (v178 & 0x1FFFFFFFCLL);
    do
    {
      *v353++ = v352;
      v354 += 4;
    }

    while (v354);
    if (v178 == v347)
    {
      goto LABEL_23;
    }

    goto LABEL_389;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v9 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)2037741171,(ChromaFormat)2>(v2, v6, v3);
}

uint64_t pixInGeneric<(PixelFormat)1983000886,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = result;
  v231 = *MEMORY[0x29EDCA608];
  if (v4 == 16 && v5 == 16)
  {
    if ((result & 0xF) == 0 && (v6 & 0xF) == 0)
    {
      v8 = 0;
      v9 = (result + 32);
      v10.i64[0] = 0x8000800080008000;
      v10.i64[1] = 0x8000800080008000;
      v11.i64[0] = 0x8000800080008;
      v11.i64[1] = 0x8000800080008;
      do
      {
        v12 = (v3 + v8);
        v13 = v9[-2];
        v14 = v9[-1];
        v15 = v9[1];
        v16 = vshrq_n_s32(v14, 0x10uLL);
        v17 = vqmovn_s32(vshrq_n_s32(v13, 0x10uLL));
        v18 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v13, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v14, 0x10uLL), 0x10uLL));
        v19 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(*v9, 0x10uLL)), vshrq_n_s32(v15, 0x10uLL)), v10);
        v20 = vshrq_n_s16(vqaddq_s16(veorq_s8(v18, v10), v11), 4uLL);
        v21 = vshrq_n_s16(vqaddq_s16(veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(*v9, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v15, 0x10uLL), 0x10uLL)), v10), v11), 4uLL);
        *v12 = vshrq_n_s16(vqaddq_s16(veorq_s8(vqmovn_high_s32(v17, v16), v10), v11), 4uLL);
        v12[8] = vshrq_n_s16(vqaddq_s16(v19, v11), 4uLL);
        v12[32] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v20, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v21, 0x10uLL), 0x10uLL));
        v12[40] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v20, 0x10uLL)), vshrq_n_s32(v21, 0x10uLL));
        v9 = (v9 + v6);
        v8 += 16;
      }

      while (v8 != 128);
      v22 = 0;
      v23.i64[0] = 0x8000800080008000;
      v23.i64[1] = 0x8000800080008000;
      v24.i64[0] = 0x8000800080008;
      v24.i64[1] = 0x8000800080008;
      do
      {
        v25 = (v3 + v22 + v8);
        v26 = v9[-2];
        v27 = v9[-1];
        v28 = v9[1];
        v29 = vshrq_n_s32(v27, 0x10uLL);
        v30 = vqmovn_s32(vshrq_n_s32(v26, 0x10uLL));
        v31 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v26, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v27, 0x10uLL), 0x10uLL));
        v32 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(*v9, 0x10uLL)), vshrq_n_s32(v28, 0x10uLL)), v23);
        v33 = vshrq_n_s16(vqaddq_s16(veorq_s8(v31, v23), v24), 4uLL);
        v34 = vshrq_n_s16(vqaddq_s16(veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(*v9, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v28, 0x10uLL), 0x10uLL)), v23), v24), 4uLL);
        v25[8] = vshrq_n_s16(vqaddq_s16(veorq_s8(vqmovn_high_s32(v30, v29), v23), v24), 4uLL);
        v25[16] = vshrq_n_s16(vqaddq_s16(v32, v24), 4uLL);
        v25[40] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v33, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v34, 0x10uLL), 0x10uLL));
        v25[48] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v33, 0x10uLL)), vshrq_n_s32(v34, 0x10uLL));
        v22 += 16;
        v9 = (v9 + v6);
      }

      while (v22 != 128);
      goto LABEL_29;
    }

    v35 = 0;
    v4 = 16;
    goto LABEL_20;
  }

  if (v5 == 16)
  {
    v35 = 16 - v4;
    if (v4 <= 0)
    {
      v36 = v6;
      v37 = v230;
      goto LABEL_22;
    }

LABEL_20:
    v36 = v6;
    v47 = v4 + 1;
    v37 = v230;
    do
    {
      v48 = v7[1];
      *v37 = *v7;
      v37[1] = v48;
      v49 = v7[3];
      v37[2] = v7[2];
      v37[3] = v49;
      v7 = (v7 + v6);
      v37 += 4;
      --v47;
    }

    while (v47 > 1);
LABEL_22:
    if (v35 >= 1)
    {
      v50 = (v7 - v36);
      v51 = *v50;
      v52 = v50[2];
      v53 = v50[3];
      v54 = v35 + 1;
      do
      {
        *v37 = v51;
        v37[1] = v50[1];
        v37[2] = v52;
        v37[3] = v53;
        v37 += 4;
        --v54;
      }

      while (v54 > 1);
    }

    goto LABEL_25;
  }

  if (v5 <= 15)
  {
    v38 = v3;
    v39 = 4 * v5;
    v40 = v5;
    if (v4 <= 0)
    {
      v46 = (result - v6);
      v45 = v230;
    }

    else
    {
      v41 = v39;
      v42 = v6;
      v43 = v4;
      v44 = v4 + 1;
      v45 = v230;
      do
      {
        result = memcpy(v45, v7, v39);
        v7 = (v7 + v42);
        v45 += 64;
        --v44;
      }

      while (v44 > 1);
      if (v43 > 15)
      {
        goto LABEL_33;
      }

      v4 = v43;
      v46 = v7 - v42;
    }

    v41 = v39;
    v85 = 17 - v4;
    do
    {
      result = memcpy(v45, v46, v39);
      v45 += 64;
      --v85;
    }

    while (v85 > 1);
LABEL_33:
    if (v40)
    {
      v86 = 4;
    }

    else
    {
      v86 = 8;
    }

    v87 = (64 - v39) >> (v40 & 1 ^ 3);
    v88 = &v230[v41];
    v89 = &v230[v41 - v86];
    HIDWORD(v91) = 2;
    LODWORD(v91) = v86 - 2;
    v90 = v91 >> 1;
    v3 = v38;
    if (v90 == 1)
    {
      if (v87)
      {
        v184 = *v89;
        v185 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v88 = v184;
          v88 = (v88 + v86);
          --v185;
        }

        while (v185);
        v186 = v89[16];
        v187 = &v230[v41 + 64];
        v188 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v187 = v186;
          v187 = (v187 + v86);
          --v188;
        }

        while (v188);
        v189 = v89[32];
        v190 = &v230[v41 + 128];
        v191 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v190 = v189;
          v190 = (v190 + v86);
          --v191;
        }

        while (v191);
        v192 = v89[48];
        v193 = &v230[v41 + 192];
        v194 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v193 = v192;
          v193 = (v193 + v86);
          --v194;
        }

        while (v194);
        v195 = v89[64];
        v196 = &v230[v41 + 256];
        v197 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v196 = v195;
          v196 = (v196 + v86);
          --v197;
        }

        while (v197);
        v198 = v89[80];
        v199 = &v230[v41 + 320];
        v200 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v199 = v198;
          v199 = (v199 + v86);
          --v200;
        }

        while (v200);
        v201 = v89[96];
        v202 = &v230[v41 + 384];
        v203 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v202 = v201;
          v202 = (v202 + v86);
          --v203;
        }

        while (v203);
        v204 = v89[112];
        v205 = &v230[v41 + 448];
        v206 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v205 = v204;
          v205 = (v205 + v86);
          --v206;
        }

        while (v206);
        v207 = v89[128];
        v208 = &v230[v41 + 512];
        v209 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v208 = v207;
          v208 = (v208 + v86);
          --v209;
        }

        while (v209);
        v210 = v89[144];
        v211 = &v230[v41 + 576];
        v212 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v211 = v210;
          v211 = (v211 + v86);
          --v212;
        }

        while (v212);
        v213 = v89[160];
        v214 = &v230[v41 + 640];
        v215 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v214 = v213;
          v214 = (v214 + v86);
          --v215;
        }

        while (v215);
        v216 = v89[176];
        v217 = &v230[v41 + 704];
        v218 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v217 = v216;
          v217 = (v217 + v86);
          --v218;
        }

        while (v218);
        v219 = v89[192];
        v220 = &v230[v41 + 768];
        v221 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v220 = v219;
          v220 = (v220 + v86);
          --v221;
        }

        while (v221);
        v222 = v89[208];
        v223 = &v230[v41 + 832];
        v224 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v223 = v222;
          v223 = (v223 + v86);
          --v224;
        }

        while (v224);
        v225 = v89[224];
        v226 = &v230[v41 + 896];
        v227 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v226 = v225;
          v226 = (v226 + v86);
          --v227;
        }

        while (v227);
        v228 = v89[240];
        v229 = &v230[v41 + 960];
        do
        {
          *v229 = v228;
          v229 = (v229 + v86);
          --v87;
        }

        while (v87);
      }
    }

    else if (v90 == 7)
    {
      if (v87)
      {
        v138 = *v89;
        v139 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v88 = v138;
          v88 = (v88 + v86);
          --v139;
        }

        while (v139);
        v140 = *(v89 + 4);
        v141 = &v230[v41 + 64];
        v142 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v141 = v140;
          v141 = (v141 + v86);
          --v142;
        }

        while (v142);
        v143 = *(v89 + 8);
        v144 = &v230[v41 + 128];
        v145 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v144 = v143;
          v144 = (v144 + v86);
          --v145;
        }

        while (v145);
        v146 = *(v89 + 12);
        v147 = &v230[v41 + 192];
        v148 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v147 = v146;
          v147 = (v147 + v86);
          --v148;
        }

        while (v148);
        v149 = *(v89 + 16);
        v150 = &v230[v41 + 256];
        v151 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v150 = v149;
          v150 = (v150 + v86);
          --v151;
        }

        while (v151);
        v152 = *(v89 + 20);
        v153 = &v230[v41 + 320];
        v154 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v153 = v152;
          v153 = (v153 + v86);
          --v154;
        }

        while (v154);
        v155 = *(v89 + 24);
        v156 = &v230[v41 + 384];
        v157 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v156 = v155;
          v156 = (v156 + v86);
          --v157;
        }

        while (v157);
        v158 = *(v89 + 28);
        v159 = &v230[v41 + 448];
        v160 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v159 = v158;
          v159 = (v159 + v86);
          --v160;
        }

        while (v160);
        v161 = *(v89 + 32);
        v162 = &v230[v41 + 512];
        v163 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v162 = v161;
          v162 = (v162 + v86);
          --v163;
        }

        while (v163);
        v164 = *(v89 + 36);
        v165 = &v230[v41 + 576];
        v166 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v165 = v164;
          v165 = (v165 + v86);
          --v166;
        }

        while (v166);
        v167 = *(v89 + 40);
        v168 = &v230[v41 + 640];
        v169 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v168 = v167;
          v168 = (v168 + v86);
          --v169;
        }

        while (v169);
        v170 = *(v89 + 44);
        v171 = &v230[v41 + 704];
        v172 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v171 = v170;
          v171 = (v171 + v86);
          --v172;
        }

        while (v172);
        v173 = *(v89 + 48);
        v174 = &v230[v41 + 768];
        v175 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v174 = v173;
          v174 = (v174 + v86);
          --v175;
        }

        while (v175);
        v176 = *(v89 + 52);
        v177 = &v230[v41 + 832];
        v178 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v177 = v176;
          v177 = (v177 + v86);
          --v178;
        }

        while (v178);
        v179 = *(v89 + 56);
        v180 = &v230[v41 + 896];
        v181 = (64 - v39) >> (v40 & 1 ^ 3);
        do
        {
          *v180 = v179;
          v180 = (v180 + v86);
          --v181;
        }

        while (v181);
        v182 = *(v89 + 60);
        v183 = &v230[v41 + 960];
        do
        {
          *v183 = v182;
          v183 = (v183 + v86);
          --v87;
        }

        while (v87);
      }
    }

    else if (v90 == 3 && v87)
    {
      v92 = *v89;
      v93 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v88 = v92;
        v88 = (v88 + v86);
        --v93;
      }

      while (v93);
      v94 = *(v89 + 8);
      v95 = &v230[v41 + 64];
      v96 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v95 = v94;
        v95 = (v95 + v86);
        --v96;
      }

      while (v96);
      v97 = *(v89 + 16);
      v98 = &v230[v41 + 128];
      v99 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v98 = v97;
        v98 = (v98 + v86);
        --v99;
      }

      while (v99);
      v100 = *(v89 + 24);
      v101 = &v230[v41 + 192];
      v102 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v101 = v100;
        v101 = (v101 + v86);
        --v102;
      }

      while (v102);
      v103 = *(v89 + 32);
      v104 = &v230[v41 + 256];
      v105 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v104 = v103;
        v104 = (v104 + v86);
        --v105;
      }

      while (v105);
      v106 = *(v89 + 40);
      v107 = &v230[v41 + 320];
      v108 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v107 = v106;
        v107 = (v107 + v86);
        --v108;
      }

      while (v108);
      v109 = *(v89 + 48);
      v110 = &v230[v41 + 384];
      v111 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v110 = v109;
        v110 = (v110 + v86);
        --v111;
      }

      while (v111);
      v112 = *(v89 + 56);
      v113 = &v230[v41 + 448];
      v114 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v113 = v112;
        v113 = (v113 + v86);
        --v114;
      }

      while (v114);
      v115 = *(v89 + 64);
      v116 = &v230[v41 + 512];
      v117 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v116 = v115;
        v116 = (v116 + v86);
        --v117;
      }

      while (v117);
      v118 = *(v89 + 72);
      v119 = &v230[v41 + 576];
      v120 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v119 = v118;
        v119 = (v119 + v86);
        --v120;
      }

      while (v120);
      v121 = *(v89 + 80);
      v122 = &v230[v41 + 640];
      v123 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v122 = v121;
        v122 = (v122 + v86);
        --v123;
      }

      while (v123);
      v124 = *(v89 + 88);
      v125 = &v230[v41 + 704];
      v126 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v125 = v124;
        v125 = (v125 + v86);
        --v126;
      }

      while (v126);
      v127 = *(v89 + 96);
      v128 = &v230[v41 + 768];
      v129 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v128 = v127;
        v128 = (v128 + v86);
        --v129;
      }

      while (v129);
      v130 = *(v89 + 104);
      v131 = &v230[v41 + 832];
      v132 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v131 = v130;
        v131 = (v131 + v86);
        --v132;
      }

      while (v132);
      v133 = *(v89 + 112);
      v134 = &v230[v41 + 896];
      v135 = (64 - v39) >> (v40 & 1 ^ 3);
      do
      {
        *v134 = v133;
        v134 = (v134 + v86);
        --v135;
      }

      while (v135);
      v136 = *(v89 + 120);
      v137 = &v230[v41 + 960];
      do
      {
        *v137 = v136;
        v137 = (v137 + v86);
        --v87;
      }

      while (v87);
    }
  }

LABEL_25:
  v55 = 0;
  v56 = 0;
  v57.i64[0] = 0x8000800080008000;
  v57.i64[1] = 0x8000800080008000;
  v58.i64[0] = 0x8000800080008;
  v58.i64[1] = 0x8000800080008;
  do
  {
    v59 = (v3 + v55);
    v60 = *&v230[v56];
    v61 = *&v230[v56 + 16];
    v62 = *&v230[v56 + 32];
    v63 = *&v230[v56 + 48];
    v64 = vshrq_n_s32(v61, 0x10uLL);
    v65 = vqmovn_s32(vshrq_n_s32(v60, 0x10uLL));
    v66 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v60, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v61, 0x10uLL), 0x10uLL));
    v67 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v62, 0x10uLL)), vshrq_n_s32(v63, 0x10uLL)), v57);
    v68 = vshrq_n_s16(vqaddq_s16(veorq_s8(v66, v57), v58), 4uLL);
    v69 = vshrq_n_s16(vqaddq_s16(veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v62, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v63, 0x10uLL), 0x10uLL)), v57), v58), 4uLL);
    *v59 = vshrq_n_s16(vqaddq_s16(veorq_s8(vqmovn_high_s32(v65, v64), v57), v58), 4uLL);
    v59[8] = vshrq_n_s16(vqaddq_s16(v67, v58), 4uLL);
    v59[32] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v68, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v69, 0x10uLL), 0x10uLL));
    v59[40] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v68, 0x10uLL)), vshrq_n_s32(v69, 0x10uLL));
    v56 += 64;
    v55 += 16;
  }

  while (v55 != 128);
  v70 = 0;
  v71.i64[0] = 0x8000800080008000;
  v71.i64[1] = 0x8000800080008000;
  v72.i64[0] = 0x8000800080008;
  v72.i64[1] = 0x8000800080008;
  do
  {
    v73 = (v3 + v70 + v55);
    v74 = *&v230[v56];
    v75 = *&v230[v56 + 16];
    v76 = *&v230[v56 + 32];
    v77 = *&v230[v56 + 48];
    v78 = vshrq_n_s32(v75, 0x10uLL);
    v79 = vqmovn_s32(vshrq_n_s32(v74, 0x10uLL));
    v80 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v74, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v75, 0x10uLL), 0x10uLL));
    v81 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v76, 0x10uLL)), vshrq_n_s32(v77, 0x10uLL)), v71);
    v82 = vshrq_n_s16(vqaddq_s16(veorq_s8(v80, v71), v72), 4uLL);
    v83 = vshrq_n_s16(vqaddq_s16(veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v76, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v77, 0x10uLL), 0x10uLL)), v71), v72), 4uLL);
    v73[8] = vshrq_n_s16(vqaddq_s16(veorq_s8(vqmovn_high_s32(v79, v78), v71), v72), 4uLL);
    v73[16] = vshrq_n_s16(vqaddq_s16(v81, v72), 4uLL);
    v73[40] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshlq_n_s32(v82, 0x10uLL), 0x10uLL)), vshrq_n_s32(vshlq_n_s32(v83, 0x10uLL), 0x10uLL));
    v73[48] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v82, 0x10uLL)), vshrq_n_s32(v83, 0x10uLL));
    v70 += 16;
    v56 += 64;
  }

  while (v70 != 128);
LABEL_29:
  v84 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pixInGeneric<(PixelFormat)2033463352,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = result;
  v368 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v105 = 16 - v4;
      if (v4 <= 0)
      {
        v106 = v6;
        v107 = &v304;
        goto LABEL_18;
      }

LABEL_16:
      v106 = v6;
      v117 = v4 + 1;
      v107 = &v304;
      do
      {
        v118 = v7[1];
        *v107 = *v7;
        v107[1] = v118;
        v119 = v7[3];
        v107[2] = v7[2];
        v107[3] = v119;
        v7 = (v7 + v6);
        v107 += 4;
        --v117;
      }

      while (v117 > 1);
LABEL_18:
      if (v105 >= 1)
      {
        v120 = (v7 - v106);
        v121 = *v120;
        v122 = v120[2];
        v123 = v120[3];
        v124 = v105 + 1;
        do
        {
          *v107 = v121;
          v107[1] = v120[1];
          v107[2] = v122;
          v107[3] = v123;
          v107 += 4;
          --v124;
        }

        while (v124 > 1);
      }

      goto LABEL_140;
    }

    if (v5 > 15)
    {
      goto LABEL_140;
    }

    v108 = v3;
    v109 = 4 * v5;
    v110 = v5;
    if (v4 <= 0)
    {
      v116 = (result - v6);
      v115 = &v304;
    }

    else
    {
      v111 = v109;
      v112 = v6;
      v113 = v4;
      v114 = v4 + 1;
      v115 = &v304;
      do
      {
        result = memcpy(v115, v7, v109);
        v7 = (v7 + v112);
        v115 += 4;
        --v114;
      }

      while (v114 > 1);
      if (v113 > 15)
      {
        goto LABEL_25;
      }

      v4 = v113;
      v116 = &v7->i8[-v112];
    }

    v111 = v109;
    v125 = 17 - v4;
    do
    {
      result = memcpy(v115, v116, v111);
      v115 += 4;
      --v125;
    }

    while (v125 > 1);
LABEL_25:
    v126 = (v304.i32 + v111);
    v128 = &v304.i8[v111 - 4];
    v127 = *(&v304.u32[-1] + v111);
    v129 = 16 - v110;
    if (16 - v110 <= 1)
    {
      v130 = 1;
    }

    else
    {
      v130 = v129;
    }

    if (v129 >= 8)
    {
      v131 = v130 & 0x7FFFFFF8;
      v128 += 4 * v131;
      v132 = vdupq_n_s32(v127);
      v133 = (&v304 + v111 + 16);
      v134 = v131;
      do
      {
        v133[-1] = v132;
        *v133 = v132;
        v133 += 2;
        v134 -= 8;
      }

      while (v134);
      v3 = v108;
      if (v131 == v130)
      {
LABEL_35:
        v138 = v126 + 15;
        v137 = v126[15];
        if (v129 >= 8)
        {
          v139 = v130 & 0x7FFFFFF8;
          v138 += v139;
          v140 = vdupq_n_s32(v137);
          v141 = &v309.i8[v111];
          v142 = v139;
          do
          {
            v141[-1] = v140;
            *v141 = v140;
            v141 += 2;
            v142 -= 8;
          }

          while (v142);
          if (v139 == v130)
          {
LABEL_42:
            v146 = v126 + 31;
            v145 = v126[31];
            if (v129 >= 8)
            {
              v147 = v130 & 0x7FFFFFF8;
              v146 += v147;
              v148 = vdupq_n_s32(v145);
              v149 = (&v313 + v111);
              v150 = v147;
              do
              {
                v149[-1] = v148;
                *v149 = v148;
                v149 += 2;
                v150 -= 8;
              }

              while (v150);
              if (v147 == v130)
              {
LABEL_49:
                v154 = v126 + 47;
                v153 = v126[47];
                if (v129 >= 8)
                {
                  v155 = v130 & 0x7FFFFFF8;
                  v154 += v155;
                  v156 = vdupq_n_s32(v153);
                  v157 = &v317.i8[v111];
                  v158 = v155;
                  do
                  {
                    v157[-1] = v156;
                    *v157 = v156;
                    v157 += 2;
                    v158 -= 8;
                  }

                  while (v158);
                  if (v155 == v130)
                  {
LABEL_56:
                    v162 = v126 + 63;
                    v161 = v126[63];
                    if (v129 >= 8)
                    {
                      v163 = v130 & 0x7FFFFFF8;
                      v162 += v163;
                      v164 = vdupq_n_s32(v161);
                      v165 = (&v321 + v111);
                      v166 = v163;
                      do
                      {
                        v165[-1] = v164;
                        *v165 = v164;
                        v165 += 2;
                        v166 -= 8;
                      }

                      while (v166);
                      if (v163 == v130)
                      {
LABEL_63:
                        v169 = v126 + 79;
                        v170 = v126[79];
                        if (v129 >= 8)
                        {
                          v171 = v130 & 0x7FFFFFF8;
                          v169 += v171;
                          v172 = vdupq_n_s32(v170);
                          v173 = &v325.i8[v111];
                          v174 = v171;
                          do
                          {
                            v173[-1] = v172;
                            *v173 = v172;
                            v173 += 2;
                            v174 -= 8;
                          }

                          while (v174);
                          if (v171 == v130)
                          {
LABEL_70:
                            v177 = v126 + 95;
                            v178 = v126[95];
                            if (v129 >= 8)
                            {
                              v179 = v130 & 0x7FFFFFF8;
                              v177 += v179;
                              v180 = vdupq_n_s32(v178);
                              v181 = (&v329 + v111);
                              v182 = v179;
                              do
                              {
                                v181[-1] = v180;
                                *v181 = v180;
                                v181 += 2;
                                v182 -= 8;
                              }

                              while (v182);
                              if (v179 == v130)
                              {
LABEL_77:
                                v185 = v126 + 111;
                                v186 = v126[111];
                                if (v129 >= 8)
                                {
                                  v187 = v130 & 0x7FFFFFF8;
                                  v185 += v187;
                                  v188 = vdupq_n_s32(v186);
                                  v189 = &v333.i8[v111];
                                  v190 = v187;
                                  do
                                  {
                                    v189[-1] = v188;
                                    *v189 = v188;
                                    v189 += 2;
                                    v190 -= 8;
                                  }

                                  while (v190);
                                  if (v187 == v130)
                                  {
LABEL_84:
                                    v193 = v126 + 127;
                                    v194 = v126[127];
                                    if (v129 >= 8)
                                    {
                                      v195 = v130 & 0x7FFFFFF8;
                                      v193 += v195;
                                      v196 = vdupq_n_s32(v194);
                                      v197 = (&v337 + v111);
                                      v198 = v195;
                                      do
                                      {
                                        v197[-1] = v196;
                                        *v197 = v196;
                                        v197 += 2;
                                        v198 -= 8;
                                      }

                                      while (v198);
                                      if (v195 == v130)
                                      {
LABEL_91:
                                        v201 = v126 + 143;
                                        v202 = v126[143];
                                        if (v129 >= 8)
                                        {
                                          v203 = v130 & 0x7FFFFFF8;
                                          v201 += v203;
                                          v204 = vdupq_n_s32(v202);
                                          v205 = &v341.i8[v111];
                                          v206 = v203;
                                          do
                                          {
                                            v205[-1] = v204;
                                            *v205 = v204;
                                            v205 += 2;
                                            v206 -= 8;
                                          }

                                          while (v206);
                                          if (v203 == v130)
                                          {
LABEL_98:
                                            v209 = v126 + 159;
                                            v210 = v126[159];
                                            if (v129 >= 8)
                                            {
                                              v211 = v130 & 0x7FFFFFF8;
                                              v209 += v211;
                                              v212 = vdupq_n_s32(v210);
                                              v213 = (&v345 + v111);
                                              v214 = v211;
                                              do
                                              {
                                                v213[-1] = v212;
                                                *v213 = v212;
                                                v213 += 2;
                                                v214 -= 8;
                                              }

                                              while (v214);
                                              if (v211 == v130)
                                              {
LABEL_105:
                                                v217 = v126 + 175;
                                                v218 = v126[175];
                                                if (v129 >= 8)
                                                {
                                                  v219 = v130 & 0x7FFFFFF8;
                                                  v217 += v219;
                                                  v220 = vdupq_n_s32(v218);
                                                  v221 = &v349.i8[v111];
                                                  v222 = v219;
                                                  do
                                                  {
                                                    v221[-1] = v220;
                                                    *v221 = v220;
                                                    v221 += 2;
                                                    v222 -= 8;
                                                  }

                                                  while (v222);
                                                  if (v219 == v130)
                                                  {
LABEL_112:
                                                    v225 = v126 + 191;
                                                    v226 = v126[191];
                                                    if (v129 >= 8)
                                                    {
                                                      v227 = v130 & 0x7FFFFFF8;
                                                      v225 += v227;
                                                      v228 = vdupq_n_s32(v226);
                                                      v229 = (&v353 + v111);
                                                      v230 = v227;
                                                      do
                                                      {
                                                        v229[-1] = v228;
                                                        *v229 = v228;
                                                        v229 += 2;
                                                        v230 -= 8;
                                                      }

                                                      while (v230);
                                                      if (v227 == v130)
                                                      {
LABEL_119:
                                                        v233 = v126 + 207;
                                                        v234 = v126[207];
                                                        if (v129 >= 8)
                                                        {
                                                          v235 = v130 & 0x7FFFFFF8;
                                                          v233 += v235;
                                                          v236 = vdupq_n_s32(v234);
                                                          v237 = &v357.i8[v111];
                                                          v238 = v235;
                                                          do
                                                          {
                                                            v237[-1] = v236;
                                                            *v237 = v236;
                                                            v237 += 2;
                                                            v238 -= 8;
                                                          }

                                                          while (v238);
                                                          if (v235 == v130)
                                                          {
LABEL_126:
                                                            v241 = v126 + 223;
                                                            v242 = v126[223];
                                                            if (v129 >= 8)
                                                            {
                                                              v243 = v130 & 0x7FFFFFF8;
                                                              v241 += v243;
                                                              v244 = vdupq_n_s32(v242);
                                                              v245 = (&v361 + v111);
                                                              v246 = v243;
                                                              do
                                                              {
                                                                v245[-1] = v244;
                                                                *v245 = v244;
                                                                v245 += 2;
                                                                v246 -= 8;
                                                              }

                                                              while (v246);
                                                              if (v243 == v130)
                                                              {
                                                                goto LABEL_133;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v243) = 0;
                                                            }

                                                            v247 = v130 - v243;
                                                            v248 = v241 + 1;
                                                            do
                                                            {
                                                              *v248++ = v242;
                                                              --v247;
                                                            }

                                                            while (v247);
LABEL_133:
                                                            v249 = v126 + 239;
                                                            v250 = v126[239];
                                                            if (v129 >= 8)
                                                            {
                                                              v251 = v130 & 0x7FFFFFF8;
                                                              v249 += v251;
                                                              v252 = vdupq_n_s32(v250);
                                                              v253 = &v365.i8[v111];
                                                              v254 = v251;
                                                              do
                                                              {
                                                                v253[-1] = v252;
                                                                *v253 = v252;
                                                                v253 += 2;
                                                                v254 -= 8;
                                                              }

                                                              while (v254);
                                                              if (v251 == v130)
                                                              {
                                                                goto LABEL_140;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v251) = 0;
                                                            }

                                                            v255 = v130 - v251;
                                                            v256 = v249 + 1;
                                                            do
                                                            {
                                                              *v256++ = v250;
                                                              --v255;
                                                            }

                                                            while (v255);
LABEL_140:
                                                            v257.i64[0] = 0xFF000000FFLL;
                                                            v257.i64[1] = 0xFF000000FFLL;
                                                            v258.i64[0] = 0xF800F800F800F800;
                                                            v258.i64[1] = 0xF800F800F800F800;
                                                            v259 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v306, 8uLL), v257)), vandq_s8(vshrq_n_u32(v307, 8uLL), v257)), 4uLL), v258);
                                                            v260 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v304, v305), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v306, v307), 0x10uLL));
                                                            v261 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v308, 8uLL), v257)), vandq_s8(vshrq_n_u32(v309, 8uLL), v257)), 4uLL), v258);
                                                            v262 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v310, 8uLL), v257)), vandq_s8(vshrq_n_u32(v311, 8uLL), v257)), 4uLL), v258);
                                                            v263 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v308, v309), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v310, v311), 0x10uLL));
                                                            *v3 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v304, 8uLL), v257)), vandq_s8(vshrq_n_u32(v305, 8uLL), v257)), 4uLL), v258);
                                                            v3[1] = v261;
                                                            v3[8] = v259;
                                                            v3[9] = v262;
                                                            v3[32] = vaddq_s16((*&vshlq_n_s16(v260, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[33] = vaddq_s16((*&vshlq_n_s16(v263, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[40] = vaddq_s16((*&vshrq_n_u16(v260, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[41] = vaddq_s16((*&vshrq_n_u16(v263, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v264 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v314, 8uLL), v257)), vandq_s8(vshrq_n_u32(v315, 8uLL), v257)), 4uLL), v258);
                                                            v265 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v312, v313), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v314, v315), 0x10uLL));
                                                            v266 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v316, 8uLL), v257)), vandq_s8(vshrq_n_u32(v317, 8uLL), v257)), 4uLL), v258);
                                                            v267 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v318, 8uLL), v257)), vandq_s8(vshrq_n_u32(v319, 8uLL), v257)), 4uLL), v258);
                                                            v268 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v316, v317), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v318, v319), 0x10uLL));
                                                            v3[2] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v312, 8uLL), v257)), vandq_s8(vshrq_n_u32(v313, 8uLL), v257)), 4uLL), v258);
                                                            v3[3] = v266;
                                                            v3[10] = v264;
                                                            v3[11] = v267;
                                                            v3[34] = vaddq_s16((*&vshlq_n_s16(v265, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[35] = vaddq_s16((*&vshlq_n_s16(v268, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[42] = vaddq_s16((*&vshrq_n_u16(v265, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[43] = vaddq_s16((*&vshrq_n_u16(v268, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v269 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v322, 8uLL), v257)), vandq_s8(vshrq_n_u32(v323, 8uLL), v257)), 4uLL), v258);
                                                            v270 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v320, v321), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v322, v323), 0x10uLL));
                                                            v271 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v324, 8uLL), v257)), vandq_s8(vshrq_n_u32(v325, 8uLL), v257)), 4uLL), v258);
                                                            v272 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v326, 8uLL), v257)), vandq_s8(vshrq_n_u32(v327, 8uLL), v257)), 4uLL), v258);
                                                            v273 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v324, v325), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v326, v327), 0x10uLL));
                                                            v3[4] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v320, 8uLL), v257)), vandq_s8(vshrq_n_u32(v321, 8uLL), v257)), 4uLL), v258);
                                                            v3[5] = v271;
                                                            v3[12] = v269;
                                                            v3[13] = v272;
                                                            v3[36] = vaddq_s16((*&vshlq_n_s16(v270, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[37] = vaddq_s16((*&vshlq_n_s16(v273, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[44] = vaddq_s16((*&vshrq_n_u16(v270, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[45] = vaddq_s16((*&vshrq_n_u16(v273, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v274 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v330, 8uLL), v257)), vandq_s8(vshrq_n_u32(v331, 8uLL), v257)), 4uLL), v258);
                                                            v275 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v328, v329), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v330, v331), 0x10uLL));
                                                            v276 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v332, 8uLL), v257)), vandq_s8(vshrq_n_u32(v333, 8uLL), v257)), 4uLL), v258);
                                                            v277 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v334, 8uLL), v257)), vandq_s8(vshrq_n_u32(v335, 8uLL), v257)), 4uLL), v258);
                                                            v278 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v332, v333), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v334, v335), 0x10uLL));
                                                            v3[6] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v328, 8uLL), v257)), vandq_s8(vshrq_n_u32(v329, 8uLL), v257)), 4uLL), v258);
                                                            v3[7] = v276;
                                                            v3[14] = v274;
                                                            v3[15] = v277;
                                                            v3[38] = vaddq_s16((*&vshlq_n_s16(v275, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[39] = vaddq_s16((*&vshlq_n_s16(v278, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[46] = vaddq_s16((*&vshrq_n_u16(v275, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[47] = vaddq_s16((*&vshrq_n_u16(v278, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v279 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v338, 8uLL), v257)), vandq_s8(vshrq_n_u32(v339, 8uLL), v257)), 4uLL), v258);
                                                            v280 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v336, v337), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v338, v339), 0x10uLL));
                                                            v281 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v340, 8uLL), v257)), vandq_s8(vshrq_n_u32(v341, 8uLL), v257)), 4uLL), v258);
                                                            v282 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v342, 8uLL), v257)), vandq_s8(vshrq_n_u32(v343, 8uLL), v257)), 4uLL), v258);
                                                            v283 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v340, v341), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v342, v343), 0x10uLL));
                                                            v3[16] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v336, 8uLL), v257)), vandq_s8(vshrq_n_u32(v337, 8uLL), v257)), 4uLL), v258);
                                                            v3[17] = v281;
                                                            v3[24] = v279;
                                                            v3[25] = v282;
                                                            v3[48] = vaddq_s16((*&vshlq_n_s16(v280, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[49] = vaddq_s16((*&vshlq_n_s16(v283, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[56] = vaddq_s16((*&vshrq_n_u16(v280, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[57] = vaddq_s16((*&vshrq_n_u16(v283, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v284 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v346, 8uLL), v257)), vandq_s8(vshrq_n_u32(v347, 8uLL), v257)), 4uLL), v258);
                                                            v285 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v344, v345), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v346, v347), 0x10uLL));
                                                            v286 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v348, 8uLL), v257)), vandq_s8(vshrq_n_u32(v349, 8uLL), v257)), 4uLL), v258);
                                                            v287 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v350, 8uLL), v257)), vandq_s8(vshrq_n_u32(v351, 8uLL), v257)), 4uLL), v258);
                                                            v288 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v348, v349), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v350, v351), 0x10uLL));
                                                            v3[18] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v344, 8uLL), v257)), vandq_s8(vshrq_n_u32(v345, 8uLL), v257)), 4uLL), v258);
                                                            v3[19] = v286;
                                                            v3[26] = v284;
                                                            v3[27] = v287;
                                                            v3[50] = vaddq_s16((*&vshlq_n_s16(v285, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[51] = vaddq_s16((*&vshlq_n_s16(v288, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[58] = vaddq_s16((*&vshrq_n_u16(v285, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[59] = vaddq_s16((*&vshrq_n_u16(v288, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v289 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v354, 8uLL), v257)), vandq_s8(vshrq_n_u32(v355, 8uLL), v257)), 4uLL), v258);
                                                            v290 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v352, v353), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v354, v355), 0x10uLL));
                                                            v291 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v356, 8uLL), v257)), vandq_s8(vshrq_n_u32(v357, 8uLL), v257)), 4uLL), v258);
                                                            v292 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v358, 8uLL), v257)), vandq_s8(vshrq_n_u32(v359, 8uLL), v257)), 4uLL), v258);
                                                            v293 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v356, v357), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v358, v359), 0x10uLL));
                                                            v3[20] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v352, 8uLL), v257)), vandq_s8(vshrq_n_u32(v353, 8uLL), v257)), 4uLL), v258);
                                                            v3[21] = v291;
                                                            v3[28] = v289;
                                                            v3[29] = v292;
                                                            v3[52] = vaddq_s16((*&vshlq_n_s16(v290, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[53] = vaddq_s16((*&vshlq_n_s16(v293, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[60] = vaddq_s16((*&vshrq_n_u16(v290, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[61] = vaddq_s16((*&vshrq_n_u16(v293, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v294 = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v362, 8uLL), v257)), vandq_s8(vshrq_n_u32(v363, 8uLL), v257));
                                                            v295 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v360, v361), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v362, v363), 0x10uLL));
                                                            v296 = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v364, 8uLL), v257)), vandq_s8(vshrq_n_u32(v365, 8uLL), v257));
                                                            v297 = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v366, 8uLL), v257)), vandq_s8(vshrq_n_u32(v367, 8uLL), v257));
                                                            v298 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v360, 8uLL), v257)), vandq_s8(vshrq_n_u32(v361, 8uLL), v257)), 4uLL), v258);
                                                            v299 = vuzp1q_s32(v366, v367);
                                                            v300 = vshrq_n_s32(vuzp1q_s32(v364, v365), 0x10uLL);
                                                            v3[22] = v298;
                                                            v3[23] = vaddq_s16(vshlq_n_s16(v296, 4uLL), v258);
                                                            v301 = vqmovn_high_s32(vqmovn_s32(v300), vshrq_n_s32(v299, 0x10uLL));
                                                            v3[30] = vaddq_s16(vshlq_n_s16(v294, 4uLL), v258);
                                                            v3[31] = vaddq_s16(vshlq_n_s16(v297, 4uLL), v258);
                                                            v3[54] = vaddq_s16((*&vshlq_n_s16(v295, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[55] = vaddq_s16((*&vshlq_n_s16(v301, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v302 = vaddq_s16((*&vshrq_n_u16(v295, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v104 = vaddq_s16((*&vshrq_n_u16(v301, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[62] = v302;
                                                            goto LABEL_141;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v235) = 0;
                                                        }

                                                        v239 = v130 - v235;
                                                        v240 = v233 + 1;
                                                        do
                                                        {
                                                          *v240++ = v234;
                                                          --v239;
                                                        }

                                                        while (v239);
                                                        goto LABEL_126;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v227) = 0;
                                                    }

                                                    v231 = v130 - v227;
                                                    v232 = v225 + 1;
                                                    do
                                                    {
                                                      *v232++ = v226;
                                                      --v231;
                                                    }

                                                    while (v231);
                                                    goto LABEL_119;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v219) = 0;
                                                }

                                                v223 = v130 - v219;
                                                v224 = v217 + 1;
                                                do
                                                {
                                                  *v224++ = v218;
                                                  --v223;
                                                }

                                                while (v223);
                                                goto LABEL_112;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v211) = 0;
                                            }

                                            v215 = v130 - v211;
                                            v216 = v209 + 1;
                                            do
                                            {
                                              *v216++ = v210;
                                              --v215;
                                            }

                                            while (v215);
                                            goto LABEL_105;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v203) = 0;
                                        }

                                        v207 = v130 - v203;
                                        v208 = v201 + 1;
                                        do
                                        {
                                          *v208++ = v202;
                                          --v207;
                                        }

                                        while (v207);
                                        goto LABEL_98;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v195) = 0;
                                    }

                                    v199 = v130 - v195;
                                    v200 = v193 + 1;
                                    do
                                    {
                                      *v200++ = v194;
                                      --v199;
                                    }

                                    while (v199);
                                    goto LABEL_91;
                                  }
                                }

                                else
                                {
                                  LODWORD(v187) = 0;
                                }

                                v191 = v130 - v187;
                                v192 = v185 + 1;
                                do
                                {
                                  *v192++ = v186;
                                  --v191;
                                }

                                while (v191);
                                goto LABEL_84;
                              }
                            }

                            else
                            {
                              LODWORD(v179) = 0;
                            }

                            v183 = v130 - v179;
                            v184 = v177 + 1;
                            do
                            {
                              *v184++ = v178;
                              --v183;
                            }

                            while (v183);
                            goto LABEL_77;
                          }
                        }

                        else
                        {
                          LODWORD(v171) = 0;
                        }

                        v175 = v130 - v171;
                        v176 = v169 + 1;
                        do
                        {
                          *v176++ = v170;
                          --v175;
                        }

                        while (v175);
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      LODWORD(v163) = 0;
                    }

                    v167 = v130 - v163;
                    v168 = v162 + 1;
                    do
                    {
                      *v168++ = v161;
                      --v167;
                    }

                    while (v167);
                    goto LABEL_63;
                  }
                }

                else
                {
                  LODWORD(v155) = 0;
                }

                v159 = v130 - v155;
                v160 = v154 + 1;
                do
                {
                  *v160++ = v153;
                  --v159;
                }

                while (v159);
                goto LABEL_56;
              }
            }

            else
            {
              LODWORD(v147) = 0;
            }

            v151 = v130 - v147;
            v152 = v146 + 1;
            do
            {
              *v152++ = v145;
              --v151;
            }

            while (v151);
            goto LABEL_49;
          }
        }

        else
        {
          LODWORD(v139) = 0;
        }

        v143 = v130 - v139;
        v144 = v138 + 1;
        do
        {
          *v144++ = v137;
          --v143;
        }

        while (v143);
        goto LABEL_42;
      }
    }

    else
    {
      LODWORD(v131) = 0;
      v3 = v108;
    }

    v135 = v130 - v131;
    v136 = (v128 + 4);
    do
    {
      *v136++ = v127;
      --v135;
    }

    while (v135);
    goto LABEL_35;
  }

  if ((result & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v105 = 0;
    goto LABEL_16;
  }

  v8 = *(result + 16);
  v9 = *(result + 32);
  v10 = *(result + 48);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  v12.i64[0] = 0xF800F800F800F800;
  v12.i64[1] = 0xF800F800F800F800;
  v13 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*result, v8), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v9, v10), 0x10uLL));
  v14 = result + v6;
  *v3 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*result, 8uLL), v11)), vandq_s8(vshrq_n_u32(v8, 8uLL), v11)), 4uLL), v12);
  v3[8] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v9, 8uLL), v11)), vandq_s8(vshrq_n_u32(v10, 8uLL), v11)), 4uLL), v12);
  v3[32] = vaddq_s16((*&vshlq_n_s16(v13, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[40] = vaddq_s16((*&vshrq_n_u16(v13, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v15 = *(v14 + 16);
  v16 = *(v14 + 32);
  v17 = *(v14 + 48);
  v18 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v14, 8uLL), v11)), vandq_s8(vshrq_n_u32(v15, 8uLL), v11)), 4uLL), v12);
  v19 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v14, v15), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v16, v17), 0x10uLL));
  v20 = v14 + v6;
  v3[1] = v18;
  v3[9] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v16, 8uLL), v11)), vandq_s8(vshrq_n_u32(v17, 8uLL), v11)), 4uLL), v12);
  v3[33] = vaddq_s16((*&vshlq_n_s16(v19, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[41] = vaddq_s16((*&vshrq_n_u16(v19, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v21 = *(v20 + 16);
  v22 = *(v20 + 32);
  v23 = *(v20 + 48);
  v24 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v20, 8uLL), v11)), vandq_s8(vshrq_n_u32(v21, 8uLL), v11)), 4uLL), v12);
  v25 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v20, v21), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v22, v23), 0x10uLL));
  v26 = v20 + v6;
  v3[2] = v24;
  v3[10] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v22, 8uLL), v11)), vandq_s8(vshrq_n_u32(v23, 8uLL), v11)), 4uLL), v12);
  v3[34] = vaddq_s16((*&vshlq_n_s16(v25, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[42] = vaddq_s16((*&vshrq_n_u16(v25, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v27 = *(v26 + 16);
  v28 = *(v26 + 32);
  v29 = *(v26 + 48);
  v30 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v26, 8uLL), v11)), vandq_s8(vshrq_n_u32(v27, 8uLL), v11)), 4uLL), v12);
  v31 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v26, v27), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v28, v29), 0x10uLL));
  v32 = v26 + v6;
  v3[3] = v30;
  v3[11] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v28, 8uLL), v11)), vandq_s8(vshrq_n_u32(v29, 8uLL), v11)), 4uLL), v12);
  v3[35] = vaddq_s16((*&vshlq_n_s16(v31, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[43] = vaddq_s16((*&vshrq_n_u16(v31, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v33 = *(v32 + 16);
  v34 = *(v32 + 32);
  v35 = *(v32 + 48);
  v36 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v32, 8uLL), v11)), vandq_s8(vshrq_n_u32(v33, 8uLL), v11)), 4uLL), v12);
  v37 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v32, v33), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v34, v35), 0x10uLL));
  v38 = v32 + v6;
  v3[4] = v36;
  v3[12] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v34, 8uLL), v11)), vandq_s8(vshrq_n_u32(v35, 8uLL), v11)), 4uLL), v12);
  v3[36] = vaddq_s16((*&vshlq_n_s16(v37, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[44] = vaddq_s16((*&vshrq_n_u16(v37, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v39 = *(v38 + 16);
  v40 = *(v38 + 32);
  v41 = *(v38 + 48);
  v42 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v38, 8uLL), v11)), vandq_s8(vshrq_n_u32(v39, 8uLL), v11)), 4uLL), v12);
  v43 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v38, v39), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v40, v41), 0x10uLL));
  v44 = v38 + v6;
  v3[5] = v42;
  v3[13] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v40, 8uLL), v11)), vandq_s8(vshrq_n_u32(v41, 8uLL), v11)), 4uLL), v12);
  v3[37] = vaddq_s16((*&vshlq_n_s16(v43, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[45] = vaddq_s16((*&vshrq_n_u16(v43, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v45 = *(v44 + 16);
  v46 = *(v44 + 32);
  v47 = *(v44 + 48);
  v48 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v44, 8uLL), v11)), vandq_s8(vshrq_n_u32(v45, 8uLL), v11)), 4uLL), v12);
  v49 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v44, v45), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v46, v47), 0x10uLL));
  v50 = (v44 + v6);
  v3[6] = v48;
  v3[14] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v46, 8uLL), v11)), vandq_s8(vshrq_n_u32(v47, 8uLL), v11)), 4uLL), v12);
  v3[38] = vaddq_s16((*&vshlq_n_s16(v49, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[46] = vaddq_s16((*&vshrq_n_u16(v49, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v51 = v50[1];
  v52 = v50[2];
  v53 = v50[3];
  v54 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v50, v51), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v52, v53), 0x10uLL));
  v3[7] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v50, 8uLL), v11)), vandq_s8(vshrq_n_u32(v51, 8uLL), v11)), 4uLL), v12);
  v3[15] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v52, 8uLL), v11)), vandq_s8(vshrq_n_u32(v53, 8uLL), v11)), 4uLL), v12);
  v3[39] = vaddq_s16((*&vshlq_n_s16(v54, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[47] = vaddq_s16((*&vshrq_n_u16(v54, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v55 = (v50 + v6);
  v56 = v55[1];
  v57 = v55[2];
  v58 = v55[3];
  v59 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v55, 8uLL), v11)), vandq_s8(vshrq_n_u32(v56, 8uLL), v11)), 4uLL), v12);
  v60 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v55, v56), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v57, v58), 0x10uLL));
  v61 = &v55->i8[v6];
  v3[16] = v59;
  v3[24] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v57, 8uLL), v11)), vandq_s8(vshrq_n_u32(v58, 8uLL), v11)), 4uLL), v12);
  v3[48] = vaddq_s16((*&vshlq_n_s16(v60, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[56] = vaddq_s16((*&vshrq_n_u16(v60, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v62 = *(v61 + 1);
  v63 = *(v61 + 2);
  v64 = *(v61 + 3);
  v65 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v61, 8uLL), v11)), vandq_s8(vshrq_n_u32(v62, 8uLL), v11)), 4uLL), v12);
  v66 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v61, v62), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v63, v64), 0x10uLL));
  v67 = &v61[v6];
  v3[17] = v65;
  v3[25] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v63, 8uLL), v11)), vandq_s8(vshrq_n_u32(v64, 8uLL), v11)), 4uLL), v12);
  v3[49] = vaddq_s16((*&vshlq_n_s16(v66, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[57] = vaddq_s16((*&vshrq_n_u16(v66, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v68 = *(v67 + 1);
  v69 = *(v67 + 2);
  v70 = *(v67 + 3);
  v71 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v67, 8uLL), v11)), vandq_s8(vshrq_n_u32(v68, 8uLL), v11)), 4uLL), v12);
  v72 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v67, v68), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v69, v70), 0x10uLL));
  v73 = &v67[v6];
  v3[18] = v71;
  v3[26] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v69, 8uLL), v11)), vandq_s8(vshrq_n_u32(v70, 8uLL), v11)), 4uLL), v12);
  v3[50] = vaddq_s16((*&vshlq_n_s16(v72, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[58] = vaddq_s16((*&vshrq_n_u16(v72, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v74 = *(v73 + 1);
  v75 = *(v73 + 2);
  v76 = *(v73 + 3);
  v77 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v73, 8uLL), v11)), vandq_s8(vshrq_n_u32(v74, 8uLL), v11)), 4uLL), v12);
  v78 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v73, v74), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v75, v76), 0x10uLL));
  v79 = &v73[v6];
  v3[19] = v77;
  v3[27] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v75, 8uLL), v11)), vandq_s8(vshrq_n_u32(v76, 8uLL), v11)), 4uLL), v12);
  v3[51] = vaddq_s16((*&vshlq_n_s16(v78, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[59] = vaddq_s16((*&vshrq_n_u16(v78, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v80 = *(v79 + 1);
  v81 = *(v79 + 2);
  v82 = *(v79 + 3);
  v83 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v79, 8uLL), v11)), vandq_s8(vshrq_n_u32(v80, 8uLL), v11)), 4uLL), v12);
  v84 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v79, v80), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v81, v82), 0x10uLL));
  v85 = &v79[v6];
  v3[20] = v83;
  v3[28] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v81, 8uLL), v11)), vandq_s8(vshrq_n_u32(v82, 8uLL), v11)), 4uLL), v12);
  v3[52] = vaddq_s16((*&vshlq_n_s16(v84, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[60] = vaddq_s16((*&vshrq_n_u16(v84, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v86 = *(v85 + 1);
  v87 = *(v85 + 2);
  v88 = *(v85 + 3);
  v89 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v85, 8uLL), v11)), vandq_s8(vshrq_n_u32(v86, 8uLL), v11)), 4uLL), v12);
  v90 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v85, v86), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v87, v88), 0x10uLL));
  v91 = &v85[v6];
  v3[21] = v89;
  v3[29] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v87, 8uLL), v11)), vandq_s8(vshrq_n_u32(v88, 8uLL), v11)), 4uLL), v12);
  v3[53] = vaddq_s16((*&vshlq_n_s16(v90, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[61] = vaddq_s16((*&vshrq_n_u16(v90, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v92 = v91[1];
  v93 = v91[2];
  v94 = v91[3];
  v95 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v91, v92), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v93, v94), 0x10uLL));
  v96 = (v91 + v6);
  v3[22] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v91, 8uLL), v11)), vandq_s8(vshrq_n_u32(v92, 8uLL), v11)), 4uLL), v12);
  v3[30] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v93, 8uLL), v11)), vandq_s8(vshrq_n_u32(v94, 8uLL), v11)), 4uLL), v12);
  v3[54] = vaddq_s16((*&vshlq_n_s16(v95, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[62] = vaddq_s16((*&vshrq_n_u16(v95, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v97 = v96[1];
  v98 = v96[2];
  v99 = v96[3];
  v100 = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v98, 8uLL), v11)), vandq_s8(vshrq_n_u32(v99, 8uLL), v11));
  v101 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v96, 8uLL), v11)), vandq_s8(vshrq_n_u32(v97, 8uLL), v11)), 4uLL), v12);
  v102 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v96, v97), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v98, v99), 0x10uLL));
  v103 = vaddq_s16((*&vshlq_n_s16(v102, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[23] = v101;
  v3[31] = vaddq_s16(vshlq_n_s16(v100, 4uLL), v12);
  v104 = vaddq_s16((*&vshrq_n_u16(v102, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v3[55] = v103;
LABEL_141:
  v3[63] = v104;
  v303 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pixInGeneric<(PixelFormat)1916022840,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = result;
  v209 = *MEMORY[0x29EDCA608];
  if (v4 == 16 && v5 == 16)
  {
    if ((result & 0xF) == 0 && (v6 & 0xF) == 0)
    {
      v8 = 0;
      v9 = result + 32;
      v10.i64[0] = 0xFF000000FFLL;
      v10.i64[1] = 0xFF000000FFLL;
      v11.i64[0] = 0x6F006F006F006FLL;
      v11.i64[1] = 0x6F006F006F006FLL;
      v12.i64[0] = 0x7F007F007F007FLL;
      v12.i64[1] = 0x7F007F007F007FLL;
      v13.i64[0] = 0xF800F800F800F800;
      v13.i64[1] = 0xF800F800F800F800;
      do
      {
        v14 = (v3 + v8);
        v15 = *(v9 - 32);
        v16 = *(v9 - 16);
        v17 = *(v9 + 16);
        v18 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v15, 8uLL), v10)), vandq_s8(vshrq_n_u32(v16, 8uLL), v10)), v11), v12), 4uLL);
        v19 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v9, 8uLL), v10)), vandq_s8(vshrq_n_u32(v17, 8uLL), v10)), v11), v12), 4uLL);
        v20 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v15, v16), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(*v9, v17), 0x10uLL));
        *v14 = v18;
        v14[8] = v19;
        v14[32] = vaddq_s16((*&vshlq_n_s16(v20, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v13);
        v14[40] = vaddq_s16((*&vshrq_n_u16(v20, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v13);
        v9 += v6;
        v8 += 16;
      }

      while (v8 != 128);
      v21 = 0;
      v22.i64[0] = 0xFF000000FFLL;
      v22.i64[1] = 0xFF000000FFLL;
      v23.i64[0] = 0x6F006F006F006FLL;
      v23.i64[1] = 0x6F006F006F006FLL;
      v24.i64[0] = 0x7F007F007F007FLL;
      v24.i64[1] = 0x7F007F007F007FLL;
      v25.i64[0] = 0xF800F800F800F800;
      v25.i64[1] = 0xF800F800F800F800;
      do
      {
        v26 = (v3 + v21 + v8);
        v27 = *(v9 - 32);
        v28 = *(v9 - 16);
        v29 = *(v9 + 16);
        v30 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v27, 8uLL), v22)), vandq_s8(vshrq_n_u32(v28, 8uLL), v22)), v23), v24), 4uLL);
        v31 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v9, 8uLL), v22)), vandq_s8(vshrq_n_u32(v29, 8uLL), v22)), v23), v24), 4uLL);
        v32 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(v27, v28), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(*v9, v29), 0x10uLL));
        v26[8] = v30;
        v26[16] = v31;
        v26[40] = vaddq_s16((*&vshlq_n_s16(v32, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v25);
        v26[48] = vaddq_s16((*&vshrq_n_u16(v32, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v25);
        v21 += 16;
        v9 += v6;
      }

      while (v21 != 128);
      goto LABEL_148;
    }

    v33 = 0;
    goto LABEL_20;
  }

  if (v5 == 16)
  {
    v33 = 16 - v4;
    if (v4 <= 0)
    {
      v34 = v6;
      v35 = v208;
      goto LABEL_22;
    }

LABEL_20:
    v34 = v6;
    v45 = v4 + 1;
    v35 = v208;
    do
    {
      v46 = v7[1];
      *v35 = *v7;
      v35[1] = v46;
      v47 = v7[3];
      v35[2] = v7[2];
      v35[3] = v47;
      v7 = (v7 + v6);
      v35 += 4;
      --v45;
    }

    while (v45 > 1);
LABEL_22:
    if (v33 >= 1)
    {
      v48 = (v7 - v34);
      v49 = *v48;
      v50 = v48[2];
      v51 = v48[3];
      v52 = v33 + 1;
      do
      {
        *v35 = v49;
        v35[1] = v48[1];
        v35[2] = v50;
        v35[3] = v51;
        v35 += 4;
        --v52;
      }

      while (v52 > 1);
    }

    goto LABEL_144;
  }

  if (v5 > 15)
  {
    goto LABEL_144;
  }

  v36 = v3;
  v37 = 4 * v5;
  v38 = v5;
  if (v4 <= 0)
  {
    v44 = (result - v6);
    v43 = v208;
  }

  else
  {
    v39 = v37;
    v40 = v6;
    v41 = v4;
    v42 = v4 + 1;
    v43 = v208;
    do
    {
      result = memcpy(v43, v7, v37);
      v7 = (v7 + v40);
      v43 += 64;
      --v42;
    }

    while (v42 > 1);
    if (v41 > 15)
    {
      goto LABEL_29;
    }

    v4 = v41;
    v44 = v7 - v40;
  }

  v39 = v37;
  v53 = 17 - v4;
  do
  {
    result = memcpy(v43, v44, v39);
    v43 += 64;
    --v53;
  }

  while (v53 > 1);
LABEL_29:
  v54 = &v208[v39];
  v56 = &v208[v39 - 4];
  v55 = *&v208[v39 - 4];
  v57 = 16 - v38;
  if (16 - v38 <= 1)
  {
    v58 = 1;
  }

  else
  {
    v58 = v57;
  }

  if (v57 < 8)
  {
    LODWORD(v59) = 0;
    v3 = v36;
LABEL_37:
    v63 = v58 - v59;
    v64 = (v56 + 4);
    do
    {
      *v64++ = v55;
      --v63;
    }

    while (v63);
    goto LABEL_39;
  }

  v59 = v58 & 0x7FFFFFF8;
  v56 += 4 * v59;
  v60 = vdupq_n_s32(v55);
  v61 = &v208[v39 + 16];
  v62 = v59;
  do
  {
    v61[-1] = v60;
    *v61 = v60;
    v61 += 2;
    v62 -= 8;
  }

  while (v62);
  v3 = v36;
  if (v59 != v58)
  {
    goto LABEL_37;
  }

LABEL_39:
  v66 = v54 + 15;
  v65 = v54[15];
  if (v57 < 8)
  {
    LODWORD(v67) = 0;
LABEL_44:
    v71 = v58 - v67;
    v72 = v66 + 1;
    do
    {
      *v72++ = v65;
      --v71;
    }

    while (v71);
    goto LABEL_46;
  }

  v67 = v58 & 0x7FFFFFF8;
  v66 += v67;
  v68 = vdupq_n_s32(v65);
  v69 = &v208[v39 + 80];
  v70 = v67;
  do
  {
    v69[-1] = v68;
    *v69 = v68;
    v69 += 2;
    v70 -= 8;
  }

  while (v70);
  if (v67 != v58)
  {
    goto LABEL_44;
  }

LABEL_46:
  v74 = v54 + 31;
  v73 = v54[31];
  if (v57 < 8)
  {
    LODWORD(v75) = 0;
LABEL_51:
    v79 = v58 - v75;
    v80 = v74 + 1;
    do
    {
      *v80++ = v73;
      --v79;
    }

    while (v79);
    goto LABEL_53;
  }

  v75 = v58 & 0x7FFFFFF8;
  v74 += v75;
  v76 = vdupq_n_s32(v73);
  v77 = &v208[v39 + 144];
  v78 = v75;
  do
  {
    v77[-1] = v76;
    *v77 = v76;
    v77 += 2;
    v78 -= 8;
  }

  while (v78);
  if (v75 != v58)
  {
    goto LABEL_51;
  }

LABEL_53:
  v82 = v54 + 47;
  v81 = v54[47];
  if (v57 < 8)
  {
    LODWORD(v83) = 0;
LABEL_58:
    v87 = v58 - v83;
    v88 = v82 + 1;
    do
    {
      *v88++ = v81;
      --v87;
    }

    while (v87);
    goto LABEL_60;
  }

  v83 = v58 & 0x7FFFFFF8;
  v82 += v83;
  v84 = vdupq_n_s32(v81);
  v85 = &v208[v39 + 208];
  v86 = v83;
  do
  {
    v85[-1] = v84;
    *v85 = v84;
    v85 += 2;
    v86 -= 8;
  }

  while (v86);
  if (v83 != v58)
  {
    goto LABEL_58;
  }

LABEL_60:
  v90 = v54 + 63;
  v89 = v54[63];
  if (v57 < 8)
  {
    LODWORD(v91) = 0;
LABEL_65:
    v95 = v58 - v91;
    v96 = v90 + 1;
    do
    {
      *v96++ = v89;
      --v95;
    }

    while (v95);
    goto LABEL_67;
  }

  v91 = v58 & 0x7FFFFFF8;
  v90 += v91;
  v92 = vdupq_n_s32(v89);
  v93 = &v208[v39 + 272];
  v94 = v91;
  do
  {
    v93[-1] = v92;
    *v93 = v92;
    v93 += 2;
    v94 -= 8;
  }

  while (v94);
  if (v91 != v58)
  {
    goto LABEL_65;
  }

LABEL_67:
  v97 = v54 + 79;
  v98 = v54[79];
  if (v57 < 8)
  {
    LODWORD(v99) = 0;
LABEL_72:
    v103 = v58 - v99;
    v104 = v97 + 1;
    do
    {
      *v104++ = v98;
      --v103;
    }

    while (v103);
    goto LABEL_74;
  }

  v99 = v58 & 0x7FFFFFF8;
  v97 += v99;
  v100 = vdupq_n_s32(v98);
  v101 = &v208[v39 + 336];
  v102 = v99;
  do
  {
    v101[-1] = v100;
    *v101 = v100;
    v101 += 2;
    v102 -= 8;
  }

  while (v102);
  if (v99 != v58)
  {
    goto LABEL_72;
  }

LABEL_74:
  v105 = v54 + 95;
  v106 = v54[95];
  if (v57 < 8)
  {
    LODWORD(v107) = 0;
LABEL_79:
    v111 = v58 - v107;
    v112 = v105 + 1;
    do
    {
      *v112++ = v106;
      --v111;
    }

    while (v111);
    goto LABEL_81;
  }

  v107 = v58 & 0x7FFFFFF8;
  v105 += v107;
  v108 = vdupq_n_s32(v106);
  v109 = &v208[v39 + 400];
  v110 = v107;
  do
  {
    v109[-1] = v108;
    *v109 = v108;
    v109 += 2;
    v110 -= 8;
  }

  while (v110);
  if (v107 != v58)
  {
    goto LABEL_79;
  }

LABEL_81:
  v113 = v54 + 111;
  v114 = v54[111];
  if (v57 < 8)
  {
    LODWORD(v115) = 0;
LABEL_86:
    v119 = v58 - v115;
    v120 = v113 + 1;
    do
    {
      *v120++ = v114;
      --v119;
    }

    while (v119);
    goto LABEL_88;
  }

  v115 = v58 & 0x7FFFFFF8;
  v113 += v115;
  v116 = vdupq_n_s32(v114);
  v117 = &v208[v39 + 464];
  v118 = v115;
  do
  {
    v117[-1] = v116;
    *v117 = v116;
    v117 += 2;
    v118 -= 8;
  }

  while (v118);
  if (v115 != v58)
  {
    goto LABEL_86;
  }

LABEL_88:
  v121 = v54 + 127;
  v122 = v54[127];
  if (v57 < 8)
  {
    LODWORD(v123) = 0;
LABEL_93:
    v127 = v58 - v123;
    v128 = v121 + 1;
    do
    {
      *v128++ = v122;
      --v127;
    }

    while (v127);
    goto LABEL_95;
  }

  v123 = v58 & 0x7FFFFFF8;
  v121 += v123;
  v124 = vdupq_n_s32(v122);
  v125 = &v208[v39 + 528];
  v126 = v123;
  do
  {
    v125[-1] = v124;
    *v125 = v124;
    v125 += 2;
    v126 -= 8;
  }

  while (v126);
  if (v123 != v58)
  {
    goto LABEL_93;
  }

LABEL_95:
  v129 = v54 + 143;
  v130 = v54[143];
  if (v57 < 8)
  {
    LODWORD(v131) = 0;
LABEL_100:
    v135 = v58 - v131;
    v136 = v129 + 1;
    do
    {
      *v136++ = v130;
      --v135;
    }

    while (v135);
    goto LABEL_102;
  }

  v131 = v58 & 0x7FFFFFF8;
  v129 += v131;
  v132 = vdupq_n_s32(v130);
  v133 = &v208[v39 + 592];
  v134 = v131;
  do
  {
    v133[-1] = v132;
    *v133 = v132;
    v133 += 2;
    v134 -= 8;
  }

  while (v134);
  if (v131 != v58)
  {
    goto LABEL_100;
  }

LABEL_102:
  v137 = v54 + 159;
  v138 = v54[159];
  if (v57 < 8)
  {
    LODWORD(v139) = 0;
LABEL_107:
    v143 = v58 - v139;
    v144 = v137 + 1;
    do
    {
      *v144++ = v138;
      --v143;
    }

    while (v143);
    goto LABEL_109;
  }

  v139 = v58 & 0x7FFFFFF8;
  v137 += v139;
  v140 = vdupq_n_s32(v138);
  v141 = &v208[v39 + 656];
  v142 = v139;
  do
  {
    v141[-1] = v140;
    *v141 = v140;
    v141 += 2;
    v142 -= 8;
  }

  while (v142);
  if (v139 != v58)
  {
    goto LABEL_107;
  }

LABEL_109:
  v145 = v54 + 175;
  v146 = v54[175];
  if (v57 < 8)
  {
    LODWORD(v147) = 0;
LABEL_114:
    v151 = v58 - v147;
    v152 = v145 + 1;
    do
    {
      *v152++ = v146;
      --v151;
    }

    while (v151);
    goto LABEL_116;
  }

  v147 = v58 & 0x7FFFFFF8;
  v145 += v147;
  v148 = vdupq_n_s32(v146);
  v149 = &v208[v39 + 720];
  v150 = v147;
  do
  {
    v149[-1] = v148;
    *v149 = v148;
    v149 += 2;
    v150 -= 8;
  }

  while (v150);
  if (v147 != v58)
  {
    goto LABEL_114;
  }

LABEL_116:
  v153 = v54 + 191;
  v154 = v54[191];
  if (v57 < 8)
  {
    LODWORD(v155) = 0;
LABEL_121:
    v159 = v58 - v155;
    v160 = v153 + 1;
    do
    {
      *v160++ = v154;
      --v159;
    }

    while (v159);
    goto LABEL_123;
  }

  v155 = v58 & 0x7FFFFFF8;
  v153 += v155;
  v156 = vdupq_n_s32(v154);
  v157 = &v208[v39 + 784];
  v158 = v155;
  do
  {
    v157[-1] = v156;
    *v157 = v156;
    v157 += 2;
    v158 -= 8;
  }

  while (v158);
  if (v155 != v58)
  {
    goto LABEL_121;
  }

LABEL_123:
  v161 = v54 + 207;
  v162 = v54[207];
  if (v57 < 8)
  {
    LODWORD(v163) = 0;
LABEL_128:
    v167 = v58 - v163;
    v168 = v161 + 1;
    do
    {
      *v168++ = v162;
      --v167;
    }

    while (v167);
    goto LABEL_130;
  }

  v163 = v58 & 0x7FFFFFF8;
  v161 += v163;
  v164 = vdupq_n_s32(v162);
  v165 = &v208[v39 + 848];
  v166 = v163;
  do
  {
    v165[-1] = v164;
    *v165 = v164;
    v165 += 2;
    v166 -= 8;
  }

  while (v166);
  if (v163 != v58)
  {
    goto LABEL_128;
  }

LABEL_130:
  v169 = v54 + 223;
  v170 = v54[223];
  if (v57 >= 8)
  {
    v171 = v58 & 0x7FFFFFF8;
    v169 += v171;
    v172 = vdupq_n_s32(v170);
    v173 = &v208[v39 + 912];
    v174 = v171;
    do
    {
      v173[-1] = v172;
      *v173 = v172;
      v173 += 2;
      v174 -= 8;
    }

    while (v174);
    if (v171 == v58)
    {
      goto LABEL_137;
    }
  }

  else
  {
    LODWORD(v171) = 0;
  }

  v175 = v58 - v171;
  v176 = v169 + 1;
  do
  {
    *v176++ = v170;
    --v175;
  }

  while (v175);
LABEL_137:
  v177 = v54 + 239;
  v178 = v54[239];
  if (v57 >= 8)
  {
    v179 = v58 & 0x7FFFFFF8;
    v177 += v179;
    v180 = vdupq_n_s32(v178);
    v181 = &v208[v39 + 976];
    v182 = v179;
    do
    {
      v181[-1] = v180;
      *v181 = v180;
      v181 += 2;
      v182 -= 8;
    }

    while (v182);
    if (v179 == v58)
    {
      goto LABEL_144;
    }
  }

  else
  {
    LODWORD(v179) = 0;
  }

  v183 = v58 - v179;
  v184 = v177 + 1;
  do
  {
    *v184++ = v178;
    --v183;
  }

  while (v183);
LABEL_144:
  v185 = 0;
  v186 = v208;
  v187.i64[0] = 0xFF000000FFLL;
  v187.i64[1] = 0xFF000000FFLL;
  v188.i64[0] = 0x6F006F006F006FLL;
  v188.i64[1] = 0x6F006F006F006FLL;
  v189.i64[0] = 0x7F007F007F007FLL;
  v189.i64[1] = 0x7F007F007F007FLL;
  v190.i64[0] = 0xF800F800F800F800;
  v190.i64[1] = 0xF800F800F800F800;
  do
  {
    v191 = (v3 + v185);
    v192 = v186[1];
    v193 = v186[2];
    v194 = v186[3];
    v195 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v186, 8uLL), v187)), vandq_s8(vshrq_n_u32(v192, 8uLL), v187)), v188), v189), 4uLL);
    v196 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v186, v192), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v193, v194), 0x10uLL));
    v186 += 4;
    *v191 = v195;
    v191[8] = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v193, 8uLL), v187)), vandq_s8(vshrq_n_u32(v194, 8uLL), v187)), v188), v189), 4uLL);
    v191[32] = vaddq_s16((*&vshlq_n_s16(v196, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v190);
    v191[40] = vaddq_s16((*&vshrq_n_u16(v196, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v190);
    v185 += 16;
  }

  while (v185 != 128);
  v197 = 0;
  v198.i64[0] = 0xFF000000FFLL;
  v198.i64[1] = 0xFF000000FFLL;
  v199.i64[0] = 0x6F006F006F006FLL;
  v199.i64[1] = 0x6F006F006F006FLL;
  v200.i64[0] = 0x7F007F007F007FLL;
  v200.i64[1] = 0x7F007F007F007FLL;
  v201.i64[0] = 0xF800F800F800F800;
  v201.i64[1] = 0xF800F800F800F800;
  do
  {
    v202 = (v3 + v197 + v185);
    v203 = v186[1];
    v204 = v186[2];
    v205 = v186[3];
    v206 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vuzp1q_s32(*v186, v203), 0x10uLL)), vshrq_n_s32(vuzp1q_s32(v204, v205), 0x10uLL));
    v202[8] = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v186, 8uLL), v198)), vandq_s8(vshrq_n_u32(v203, 8uLL), v198)), v199), v200), 4uLL);
    v202[16] = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v204, 8uLL), v198)), vandq_s8(vshrq_n_u32(v205, 8uLL), v198)), v199), v200), 4uLL);
    v202[40] = vaddq_s16((*&vshlq_n_s16(v206, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v201);
    v202[48] = vaddq_s16((*&vshrq_n_u16(v206, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v201);
    v197 += 16;
    v186 += 4;
  }

  while (v197 != 128);
LABEL_148:
  v207 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pixInGeneric<(PixelFormat)1983131704,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = result;
  v368 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v105 = 16 - v4;
      if (v4 <= 0)
      {
        v106 = v6;
        v107 = &v304;
        goto LABEL_18;
      }

LABEL_16:
      v106 = v6;
      v117 = v4 + 1;
      v107 = &v304;
      do
      {
        v118 = v7[1];
        *v107 = *v7;
        v107[1] = v118;
        v119 = v7[3];
        v107[2] = v7[2];
        v107[3] = v119;
        v7 = (v7 + v6);
        v107 += 4;
        --v117;
      }

      while (v117 > 1);
LABEL_18:
      if (v105 >= 1)
      {
        v120 = (v7 - v106);
        v121 = *v120;
        v122 = v120[2];
        v123 = v120[3];
        v124 = v105 + 1;
        do
        {
          *v107 = v121;
          v107[1] = v120[1];
          v107[2] = v122;
          v107[3] = v123;
          v107 += 4;
          --v124;
        }

        while (v124 > 1);
      }

      goto LABEL_140;
    }

    if (v5 > 15)
    {
      goto LABEL_140;
    }

    v108 = v3;
    v109 = 4 * v5;
    v110 = v5;
    if (v4 <= 0)
    {
      v116 = (result - v6);
      v115 = &v304;
    }

    else
    {
      v111 = v109;
      v112 = v6;
      v113 = v4;
      v114 = v4 + 1;
      v115 = &v304;
      do
      {
        result = memcpy(v115, v7, v109);
        v7 = (v7 + v112);
        v115 += 4;
        --v114;
      }

      while (v114 > 1);
      if (v113 > 15)
      {
        goto LABEL_25;
      }

      v4 = v113;
      v116 = &v7->i8[-v112];
    }

    v111 = v109;
    v125 = 17 - v4;
    do
    {
      result = memcpy(v115, v116, v111);
      v115 += 4;
      --v125;
    }

    while (v125 > 1);
LABEL_25:
    v126 = (v304.i32 + v111);
    v128 = &v304.i8[v111 - 4];
    v127 = *(&v304.u32[-1] + v111);
    v129 = 16 - v110;
    if (16 - v110 <= 1)
    {
      v130 = 1;
    }

    else
    {
      v130 = v129;
    }

    if (v129 >= 8)
    {
      v131 = v130 & 0x7FFFFFF8;
      v128 += 4 * v131;
      v132 = vdupq_n_s32(v127);
      v133 = (&v304 + v111 + 16);
      v134 = v131;
      do
      {
        v133[-1] = v132;
        *v133 = v132;
        v133 += 2;
        v134 -= 8;
      }

      while (v134);
      v3 = v108;
      if (v131 == v130)
      {
LABEL_35:
        v138 = v126 + 15;
        v137 = v126[15];
        if (v129 >= 8)
        {
          v139 = v130 & 0x7FFFFFF8;
          v138 += v139;
          v140 = vdupq_n_s32(v137);
          v141 = &v309.i8[v111];
          v142 = v139;
          do
          {
            v141[-1] = v140;
            *v141 = v140;
            v141 += 2;
            v142 -= 8;
          }

          while (v142);
          if (v139 == v130)
          {
LABEL_42:
            v146 = v126 + 31;
            v145 = v126[31];
            if (v129 >= 8)
            {
              v147 = v130 & 0x7FFFFFF8;
              v146 += v147;
              v148 = vdupq_n_s32(v145);
              v149 = (&v313 + v111);
              v150 = v147;
              do
              {
                v149[-1] = v148;
                *v149 = v148;
                v149 += 2;
                v150 -= 8;
              }

              while (v150);
              if (v147 == v130)
              {
LABEL_49:
                v154 = v126 + 47;
                v153 = v126[47];
                if (v129 >= 8)
                {
                  v155 = v130 & 0x7FFFFFF8;
                  v154 += v155;
                  v156 = vdupq_n_s32(v153);
                  v157 = &v317.i8[v111];
                  v158 = v155;
                  do
                  {
                    v157[-1] = v156;
                    *v157 = v156;
                    v157 += 2;
                    v158 -= 8;
                  }

                  while (v158);
                  if (v155 == v130)
                  {
LABEL_56:
                    v162 = v126 + 63;
                    v161 = v126[63];
                    if (v129 >= 8)
                    {
                      v163 = v130 & 0x7FFFFFF8;
                      v162 += v163;
                      v164 = vdupq_n_s32(v161);
                      v165 = (&v321 + v111);
                      v166 = v163;
                      do
                      {
                        v165[-1] = v164;
                        *v165 = v164;
                        v165 += 2;
                        v166 -= 8;
                      }

                      while (v166);
                      if (v163 == v130)
                      {
LABEL_63:
                        v169 = v126 + 79;
                        v170 = v126[79];
                        if (v129 >= 8)
                        {
                          v171 = v130 & 0x7FFFFFF8;
                          v169 += v171;
                          v172 = vdupq_n_s32(v170);
                          v173 = &v325.i8[v111];
                          v174 = v171;
                          do
                          {
                            v173[-1] = v172;
                            *v173 = v172;
                            v173 += 2;
                            v174 -= 8;
                          }

                          while (v174);
                          if (v171 == v130)
                          {
LABEL_70:
                            v177 = v126 + 95;
                            v178 = v126[95];
                            if (v129 >= 8)
                            {
                              v179 = v130 & 0x7FFFFFF8;
                              v177 += v179;
                              v180 = vdupq_n_s32(v178);
                              v181 = (&v329 + v111);
                              v182 = v179;
                              do
                              {
                                v181[-1] = v180;
                                *v181 = v180;
                                v181 += 2;
                                v182 -= 8;
                              }

                              while (v182);
                              if (v179 == v130)
                              {
LABEL_77:
                                v185 = v126 + 111;
                                v186 = v126[111];
                                if (v129 >= 8)
                                {
                                  v187 = v130 & 0x7FFFFFF8;
                                  v185 += v187;
                                  v188 = vdupq_n_s32(v186);
                                  v189 = &v333.i8[v111];
                                  v190 = v187;
                                  do
                                  {
                                    v189[-1] = v188;
                                    *v189 = v188;
                                    v189 += 2;
                                    v190 -= 8;
                                  }

                                  while (v190);
                                  if (v187 == v130)
                                  {
LABEL_84:
                                    v193 = v126 + 127;
                                    v194 = v126[127];
                                    if (v129 >= 8)
                                    {
                                      v195 = v130 & 0x7FFFFFF8;
                                      v193 += v195;
                                      v196 = vdupq_n_s32(v194);
                                      v197 = (&v337 + v111);
                                      v198 = v195;
                                      do
                                      {
                                        v197[-1] = v196;
                                        *v197 = v196;
                                        v197 += 2;
                                        v198 -= 8;
                                      }

                                      while (v198);
                                      if (v195 == v130)
                                      {
LABEL_91:
                                        v201 = v126 + 143;
                                        v202 = v126[143];
                                        if (v129 >= 8)
                                        {
                                          v203 = v130 & 0x7FFFFFF8;
                                          v201 += v203;
                                          v204 = vdupq_n_s32(v202);
                                          v205 = &v341.i8[v111];
                                          v206 = v203;
                                          do
                                          {
                                            v205[-1] = v204;
                                            *v205 = v204;
                                            v205 += 2;
                                            v206 -= 8;
                                          }

                                          while (v206);
                                          if (v203 == v130)
                                          {
LABEL_98:
                                            v209 = v126 + 159;
                                            v210 = v126[159];
                                            if (v129 >= 8)
                                            {
                                              v211 = v130 & 0x7FFFFFF8;
                                              v209 += v211;
                                              v212 = vdupq_n_s32(v210);
                                              v213 = (&v345 + v111);
                                              v214 = v211;
                                              do
                                              {
                                                v213[-1] = v212;
                                                *v213 = v212;
                                                v213 += 2;
                                                v214 -= 8;
                                              }

                                              while (v214);
                                              if (v211 == v130)
                                              {
LABEL_105:
                                                v217 = v126 + 175;
                                                v218 = v126[175];
                                                if (v129 >= 8)
                                                {
                                                  v219 = v130 & 0x7FFFFFF8;
                                                  v217 += v219;
                                                  v220 = vdupq_n_s32(v218);
                                                  v221 = &v349.i8[v111];
                                                  v222 = v219;
                                                  do
                                                  {
                                                    v221[-1] = v220;
                                                    *v221 = v220;
                                                    v221 += 2;
                                                    v222 -= 8;
                                                  }

                                                  while (v222);
                                                  if (v219 == v130)
                                                  {
LABEL_112:
                                                    v225 = v126 + 191;
                                                    v226 = v126[191];
                                                    if (v129 >= 8)
                                                    {
                                                      v227 = v130 & 0x7FFFFFF8;
                                                      v225 += v227;
                                                      v228 = vdupq_n_s32(v226);
                                                      v229 = (&v353 + v111);
                                                      v230 = v227;
                                                      do
                                                      {
                                                        v229[-1] = v228;
                                                        *v229 = v228;
                                                        v229 += 2;
                                                        v230 -= 8;
                                                      }

                                                      while (v230);
                                                      if (v227 == v130)
                                                      {
LABEL_119:
                                                        v233 = v126 + 207;
                                                        v234 = v126[207];
                                                        if (v129 >= 8)
                                                        {
                                                          v235 = v130 & 0x7FFFFFF8;
                                                          v233 += v235;
                                                          v236 = vdupq_n_s32(v234);
                                                          v237 = &v357.i8[v111];
                                                          v238 = v235;
                                                          do
                                                          {
                                                            v237[-1] = v236;
                                                            *v237 = v236;
                                                            v237 += 2;
                                                            v238 -= 8;
                                                          }

                                                          while (v238);
                                                          if (v235 == v130)
                                                          {
LABEL_126:
                                                            v241 = v126 + 223;
                                                            v242 = v126[223];
                                                            if (v129 >= 8)
                                                            {
                                                              v243 = v130 & 0x7FFFFFF8;
                                                              v241 += v243;
                                                              v244 = vdupq_n_s32(v242);
                                                              v245 = (&v361 + v111);
                                                              v246 = v243;
                                                              do
                                                              {
                                                                v245[-1] = v244;
                                                                *v245 = v244;
                                                                v245 += 2;
                                                                v246 -= 8;
                                                              }

                                                              while (v246);
                                                              if (v243 == v130)
                                                              {
                                                                goto LABEL_133;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v243) = 0;
                                                            }

                                                            v247 = v130 - v243;
                                                            v248 = v241 + 1;
                                                            do
                                                            {
                                                              *v248++ = v242;
                                                              --v247;
                                                            }

                                                            while (v247);
LABEL_133:
                                                            v249 = v126 + 239;
                                                            v250 = v126[239];
                                                            if (v129 >= 8)
                                                            {
                                                              v251 = v130 & 0x7FFFFFF8;
                                                              v249 += v251;
                                                              v252 = vdupq_n_s32(v250);
                                                              v253 = &v365.i8[v111];
                                                              v254 = v251;
                                                              do
                                                              {
                                                                v253[-1] = v252;
                                                                *v253 = v252;
                                                                v253 += 2;
                                                                v254 -= 8;
                                                              }

                                                              while (v254);
                                                              if (v251 == v130)
                                                              {
                                                                goto LABEL_140;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v251) = 0;
                                                            }

                                                            v255 = v130 - v251;
                                                            v256 = v249 + 1;
                                                            do
                                                            {
                                                              *v256++ = v250;
                                                              --v255;
                                                            }

                                                            while (v255);
LABEL_140:
                                                            v257.i64[0] = 0xFF000000FFLL;
                                                            v257.i64[1] = 0xFF000000FFLL;
                                                            v258.i64[0] = 0xF800F800F800F800;
                                                            v258.i64[1] = 0xF800F800F800F800;
                                                            v259 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v306, 8uLL), v257)), vandq_s8(vshrq_n_u32(v307, 8uLL), v257)), 4uLL), v258);
                                                            v260 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v304, v305) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v306, v307) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v261 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v308, 8uLL), v257)), vandq_s8(vshrq_n_u32(v309, 8uLL), v257)), 4uLL), v258);
                                                            v262 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v310, 8uLL), v257)), vandq_s8(vshrq_n_u32(v311, 8uLL), v257)), 4uLL), v258);
                                                            v263 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v308, v309) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v310, v311) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            *v3 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v304, 8uLL), v257)), vandq_s8(vshrq_n_u32(v305, 8uLL), v257)), 4uLL), v258);
                                                            v3[1] = v261;
                                                            v3[8] = v259;
                                                            v3[9] = v262;
                                                            v3[32] = vaddq_s16((*&vshlq_n_s16(v260, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[33] = vaddq_s16((*&vshlq_n_s16(v263, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[40] = vaddq_s16((*&vshrq_n_u16(v260, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[41] = vaddq_s16((*&vshrq_n_u16(v263, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v264 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v314, 8uLL), v257)), vandq_s8(vshrq_n_u32(v315, 8uLL), v257)), 4uLL), v258);
                                                            v265 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v312, v313) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v314, v315) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v266 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v316, 8uLL), v257)), vandq_s8(vshrq_n_u32(v317, 8uLL), v257)), 4uLL), v258);
                                                            v267 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v318, 8uLL), v257)), vandq_s8(vshrq_n_u32(v319, 8uLL), v257)), 4uLL), v258);
                                                            v268 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v316, v317) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v318, v319) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v3[2] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v312, 8uLL), v257)), vandq_s8(vshrq_n_u32(v313, 8uLL), v257)), 4uLL), v258);
                                                            v3[3] = v266;
                                                            v3[10] = v264;
                                                            v3[11] = v267;
                                                            v3[34] = vaddq_s16((*&vshlq_n_s16(v265, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[35] = vaddq_s16((*&vshlq_n_s16(v268, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[42] = vaddq_s16((*&vshrq_n_u16(v265, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[43] = vaddq_s16((*&vshrq_n_u16(v268, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v269 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v322, 8uLL), v257)), vandq_s8(vshrq_n_u32(v323, 8uLL), v257)), 4uLL), v258);
                                                            v270 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v320, v321) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v322, v323) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v271 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v324, 8uLL), v257)), vandq_s8(vshrq_n_u32(v325, 8uLL), v257)), 4uLL), v258);
                                                            v272 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v326, 8uLL), v257)), vandq_s8(vshrq_n_u32(v327, 8uLL), v257)), 4uLL), v258);
                                                            v273 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v324, v325) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v326, v327) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v3[4] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v320, 8uLL), v257)), vandq_s8(vshrq_n_u32(v321, 8uLL), v257)), 4uLL), v258);
                                                            v3[5] = v271;
                                                            v3[12] = v269;
                                                            v3[13] = v272;
                                                            v3[36] = vaddq_s16((*&vshlq_n_s16(v270, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[37] = vaddq_s16((*&vshlq_n_s16(v273, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[44] = vaddq_s16((*&vshrq_n_u16(v270, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[45] = vaddq_s16((*&vshrq_n_u16(v273, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v274 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v330, 8uLL), v257)), vandq_s8(vshrq_n_u32(v331, 8uLL), v257)), 4uLL), v258);
                                                            v275 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v328, v329) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v330, v331) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v276 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v332, 8uLL), v257)), vandq_s8(vshrq_n_u32(v333, 8uLL), v257)), 4uLL), v258);
                                                            v277 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v334, 8uLL), v257)), vandq_s8(vshrq_n_u32(v335, 8uLL), v257)), 4uLL), v258);
                                                            v278 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v332, v333) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v334, v335) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v3[6] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v328, 8uLL), v257)), vandq_s8(vshrq_n_u32(v329, 8uLL), v257)), 4uLL), v258);
                                                            v3[7] = v276;
                                                            v3[14] = v274;
                                                            v3[15] = v277;
                                                            v3[38] = vaddq_s16((*&vshlq_n_s16(v275, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[39] = vaddq_s16((*&vshlq_n_s16(v278, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[46] = vaddq_s16((*&vshrq_n_u16(v275, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[47] = vaddq_s16((*&vshrq_n_u16(v278, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v279 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v338, 8uLL), v257)), vandq_s8(vshrq_n_u32(v339, 8uLL), v257)), 4uLL), v258);
                                                            v280 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v336, v337) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v338, v339) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v281 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v340, 8uLL), v257)), vandq_s8(vshrq_n_u32(v341, 8uLL), v257)), 4uLL), v258);
                                                            v282 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v342, 8uLL), v257)), vandq_s8(vshrq_n_u32(v343, 8uLL), v257)), 4uLL), v258);
                                                            v283 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v340, v341) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v342, v343) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v3[16] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v336, 8uLL), v257)), vandq_s8(vshrq_n_u32(v337, 8uLL), v257)), 4uLL), v258);
                                                            v3[17] = v281;
                                                            v3[24] = v279;
                                                            v3[25] = v282;
                                                            v3[48] = vaddq_s16((*&vshlq_n_s16(v280, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[49] = vaddq_s16((*&vshlq_n_s16(v283, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[56] = vaddq_s16((*&vshrq_n_u16(v280, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[57] = vaddq_s16((*&vshrq_n_u16(v283, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v284 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v346, 8uLL), v257)), vandq_s8(vshrq_n_u32(v347, 8uLL), v257)), 4uLL), v258);
                                                            v285 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v344, v345) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v346, v347) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v286 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v348, 8uLL), v257)), vandq_s8(vshrq_n_u32(v349, 8uLL), v257)), 4uLL), v258);
                                                            v287 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v350, 8uLL), v257)), vandq_s8(vshrq_n_u32(v351, 8uLL), v257)), 4uLL), v258);
                                                            v288 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v348, v349) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v350, v351) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v3[18] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v344, 8uLL), v257)), vandq_s8(vshrq_n_u32(v345, 8uLL), v257)), 4uLL), v258);
                                                            v3[19] = v286;
                                                            v3[26] = v284;
                                                            v3[27] = v287;
                                                            v3[50] = vaddq_s16((*&vshlq_n_s16(v285, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[51] = vaddq_s16((*&vshlq_n_s16(v288, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[58] = vaddq_s16((*&vshrq_n_u16(v285, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[59] = vaddq_s16((*&vshrq_n_u16(v288, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v289 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v354, 8uLL), v257)), vandq_s8(vshrq_n_u32(v355, 8uLL), v257)), 4uLL), v258);
                                                            v290 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v352, v353) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v354, v355) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v291 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v356, 8uLL), v257)), vandq_s8(vshrq_n_u32(v357, 8uLL), v257)), 4uLL), v258);
                                                            v292 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v358, 8uLL), v257)), vandq_s8(vshrq_n_u32(v359, 8uLL), v257)), 4uLL), v258);
                                                            v293 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v356, v357) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v358, v359) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v3[20] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v352, 8uLL), v257)), vandq_s8(vshrq_n_u32(v353, 8uLL), v257)), 4uLL), v258);
                                                            v3[21] = v291;
                                                            v3[28] = v289;
                                                            v3[29] = v292;
                                                            v3[52] = vaddq_s16((*&vshlq_n_s16(v290, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[53] = vaddq_s16((*&vshlq_n_s16(v293, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[60] = vaddq_s16((*&vshrq_n_u16(v290, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[61] = vaddq_s16((*&vshrq_n_u16(v293, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v294 = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v362, 8uLL), v257)), vandq_s8(vshrq_n_u32(v363, 8uLL), v257));
                                                            v295 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(v360, v361) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v362, v363) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v296 = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v364, 8uLL), v257)), vandq_s8(vshrq_n_u32(v365, 8uLL), v257));
                                                            v297 = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v366, 8uLL), v257)), vandq_s8(vshrq_n_u32(v367, 8uLL), v257));
                                                            v298 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v360, 8uLL), v257)), vandq_s8(vshrq_n_u32(v361, 8uLL), v257)), 4uLL), v258);
                                                            v299 = vuzp1q_s32(v366, v367);
                                                            v300 = *&vuzp1q_s32(v364, v365) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
                                                            v3[22] = v298;
                                                            v3[23] = vaddq_s16(vshlq_n_s16(v296, 4uLL), v258);
                                                            v301 = vqmovun_high_s16(vqmovun_s16(v300), (*&v299 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                                                            v3[30] = vaddq_s16(vshlq_n_s16(v294, 4uLL), v258);
                                                            v3[31] = vaddq_s16(vshlq_n_s16(v297, 4uLL), v258);
                                                            v3[54] = vaddq_s16((*&vshlq_n_s16(v295, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v3[55] = vaddq_s16((*&vshlq_n_s16(v301, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v258);
                                                            v302 = vaddq_s16((*&vshrq_n_u16(v295, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v104 = vaddq_s16((*&vshrq_n_u16(v301, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v258);
                                                            v3[62] = v302;
                                                            goto LABEL_141;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v235) = 0;
                                                        }

                                                        v239 = v130 - v235;
                                                        v240 = v233 + 1;
                                                        do
                                                        {
                                                          *v240++ = v234;
                                                          --v239;
                                                        }

                                                        while (v239);
                                                        goto LABEL_126;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v227) = 0;
                                                    }

                                                    v231 = v130 - v227;
                                                    v232 = v225 + 1;
                                                    do
                                                    {
                                                      *v232++ = v226;
                                                      --v231;
                                                    }

                                                    while (v231);
                                                    goto LABEL_119;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v219) = 0;
                                                }

                                                v223 = v130 - v219;
                                                v224 = v217 + 1;
                                                do
                                                {
                                                  *v224++ = v218;
                                                  --v223;
                                                }

                                                while (v223);
                                                goto LABEL_112;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v211) = 0;
                                            }

                                            v215 = v130 - v211;
                                            v216 = v209 + 1;
                                            do
                                            {
                                              *v216++ = v210;
                                              --v215;
                                            }

                                            while (v215);
                                            goto LABEL_105;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v203) = 0;
                                        }

                                        v207 = v130 - v203;
                                        v208 = v201 + 1;
                                        do
                                        {
                                          *v208++ = v202;
                                          --v207;
                                        }

                                        while (v207);
                                        goto LABEL_98;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v195) = 0;
                                    }

                                    v199 = v130 - v195;
                                    v200 = v193 + 1;
                                    do
                                    {
                                      *v200++ = v194;
                                      --v199;
                                    }

                                    while (v199);
                                    goto LABEL_91;
                                  }
                                }

                                else
                                {
                                  LODWORD(v187) = 0;
                                }

                                v191 = v130 - v187;
                                v192 = v185 + 1;
                                do
                                {
                                  *v192++ = v186;
                                  --v191;
                                }

                                while (v191);
                                goto LABEL_84;
                              }
                            }

                            else
                            {
                              LODWORD(v179) = 0;
                            }

                            v183 = v130 - v179;
                            v184 = v177 + 1;
                            do
                            {
                              *v184++ = v178;
                              --v183;
                            }

                            while (v183);
                            goto LABEL_77;
                          }
                        }

                        else
                        {
                          LODWORD(v171) = 0;
                        }

                        v175 = v130 - v171;
                        v176 = v169 + 1;
                        do
                        {
                          *v176++ = v170;
                          --v175;
                        }

                        while (v175);
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      LODWORD(v163) = 0;
                    }

                    v167 = v130 - v163;
                    v168 = v162 + 1;
                    do
                    {
                      *v168++ = v161;
                      --v167;
                    }

                    while (v167);
                    goto LABEL_63;
                  }
                }

                else
                {
                  LODWORD(v155) = 0;
                }

                v159 = v130 - v155;
                v160 = v154 + 1;
                do
                {
                  *v160++ = v153;
                  --v159;
                }

                while (v159);
                goto LABEL_56;
              }
            }

            else
            {
              LODWORD(v147) = 0;
            }

            v151 = v130 - v147;
            v152 = v146 + 1;
            do
            {
              *v152++ = v145;
              --v151;
            }

            while (v151);
            goto LABEL_49;
          }
        }

        else
        {
          LODWORD(v139) = 0;
        }

        v143 = v130 - v139;
        v144 = v138 + 1;
        do
        {
          *v144++ = v137;
          --v143;
        }

        while (v143);
        goto LABEL_42;
      }
    }

    else
    {
      LODWORD(v131) = 0;
      v3 = v108;
    }

    v135 = v130 - v131;
    v136 = (v128 + 4);
    do
    {
      *v136++ = v127;
      --v135;
    }

    while (v135);
    goto LABEL_35;
  }

  if ((result & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v105 = 0;
    goto LABEL_16;
  }

  v8 = *(result + 16);
  v9 = *(result + 32);
  v10 = *(result + 48);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  v12.i64[0] = 0xF800F800F800F800;
  v12.i64[1] = 0xF800F800F800F800;
  v13 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*result, v8) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v9, v10) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v14 = result + v6;
  *v3 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*result, 8uLL), v11)), vandq_s8(vshrq_n_u32(v8, 8uLL), v11)), 4uLL), v12);
  v3[8] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v9, 8uLL), v11)), vandq_s8(vshrq_n_u32(v10, 8uLL), v11)), 4uLL), v12);
  v3[32] = vaddq_s16((*&vshlq_n_s16(v13, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[40] = vaddq_s16((*&vshrq_n_u16(v13, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v15 = *(v14 + 16);
  v16 = *(v14 + 32);
  v17 = *(v14 + 48);
  v18 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v14, 8uLL), v11)), vandq_s8(vshrq_n_u32(v15, 8uLL), v11)), 4uLL), v12);
  v19 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v14, v15) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v16, v17) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v20 = v14 + v6;
  v3[1] = v18;
  v3[9] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v16, 8uLL), v11)), vandq_s8(vshrq_n_u32(v17, 8uLL), v11)), 4uLL), v12);
  v3[33] = vaddq_s16((*&vshlq_n_s16(v19, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[41] = vaddq_s16((*&vshrq_n_u16(v19, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v21 = *(v20 + 16);
  v22 = *(v20 + 32);
  v23 = *(v20 + 48);
  v24 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v20, 8uLL), v11)), vandq_s8(vshrq_n_u32(v21, 8uLL), v11)), 4uLL), v12);
  v25 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v20, v21) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v22, v23) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v26 = v20 + v6;
  v3[2] = v24;
  v3[10] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v22, 8uLL), v11)), vandq_s8(vshrq_n_u32(v23, 8uLL), v11)), 4uLL), v12);
  v3[34] = vaddq_s16((*&vshlq_n_s16(v25, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[42] = vaddq_s16((*&vshrq_n_u16(v25, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v27 = *(v26 + 16);
  v28 = *(v26 + 32);
  v29 = *(v26 + 48);
  v30 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v26, 8uLL), v11)), vandq_s8(vshrq_n_u32(v27, 8uLL), v11)), 4uLL), v12);
  v31 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v26, v27) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v28, v29) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v32 = v26 + v6;
  v3[3] = v30;
  v3[11] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v28, 8uLL), v11)), vandq_s8(vshrq_n_u32(v29, 8uLL), v11)), 4uLL), v12);
  v3[35] = vaddq_s16((*&vshlq_n_s16(v31, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[43] = vaddq_s16((*&vshrq_n_u16(v31, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v33 = *(v32 + 16);
  v34 = *(v32 + 32);
  v35 = *(v32 + 48);
  v36 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v32, 8uLL), v11)), vandq_s8(vshrq_n_u32(v33, 8uLL), v11)), 4uLL), v12);
  v37 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v32, v33) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v34, v35) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v38 = v32 + v6;
  v3[4] = v36;
  v3[12] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v34, 8uLL), v11)), vandq_s8(vshrq_n_u32(v35, 8uLL), v11)), 4uLL), v12);
  v3[36] = vaddq_s16((*&vshlq_n_s16(v37, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[44] = vaddq_s16((*&vshrq_n_u16(v37, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v39 = *(v38 + 16);
  v40 = *(v38 + 32);
  v41 = *(v38 + 48);
  v42 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v38, 8uLL), v11)), vandq_s8(vshrq_n_u32(v39, 8uLL), v11)), 4uLL), v12);
  v43 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v38, v39) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v40, v41) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v44 = v38 + v6;
  v3[5] = v42;
  v3[13] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v40, 8uLL), v11)), vandq_s8(vshrq_n_u32(v41, 8uLL), v11)), 4uLL), v12);
  v3[37] = vaddq_s16((*&vshlq_n_s16(v43, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[45] = vaddq_s16((*&vshrq_n_u16(v43, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v45 = *(v44 + 16);
  v46 = *(v44 + 32);
  v47 = *(v44 + 48);
  v48 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v44, 8uLL), v11)), vandq_s8(vshrq_n_u32(v45, 8uLL), v11)), 4uLL), v12);
  v49 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v44, v45) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v46, v47) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v50 = (v44 + v6);
  v3[6] = v48;
  v3[14] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v46, 8uLL), v11)), vandq_s8(vshrq_n_u32(v47, 8uLL), v11)), 4uLL), v12);
  v3[38] = vaddq_s16((*&vshlq_n_s16(v49, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[46] = vaddq_s16((*&vshrq_n_u16(v49, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v51 = v50[1];
  v52 = v50[2];
  v53 = v50[3];
  v54 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v50, v51) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v52, v53) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v3[7] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v50, 8uLL), v11)), vandq_s8(vshrq_n_u32(v51, 8uLL), v11)), 4uLL), v12);
  v3[15] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v52, 8uLL), v11)), vandq_s8(vshrq_n_u32(v53, 8uLL), v11)), 4uLL), v12);
  v3[39] = vaddq_s16((*&vshlq_n_s16(v54, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[47] = vaddq_s16((*&vshrq_n_u16(v54, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v55 = (v50 + v6);
  v56 = v55[1];
  v57 = v55[2];
  v58 = v55[3];
  v59 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v55, 8uLL), v11)), vandq_s8(vshrq_n_u32(v56, 8uLL), v11)), 4uLL), v12);
  v60 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v55, v56) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v57, v58) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v61 = &v55->i8[v6];
  v3[16] = v59;
  v3[24] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v57, 8uLL), v11)), vandq_s8(vshrq_n_u32(v58, 8uLL), v11)), 4uLL), v12);
  v3[48] = vaddq_s16((*&vshlq_n_s16(v60, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[56] = vaddq_s16((*&vshrq_n_u16(v60, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v62 = *(v61 + 1);
  v63 = *(v61 + 2);
  v64 = *(v61 + 3);
  v65 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v61, 8uLL), v11)), vandq_s8(vshrq_n_u32(v62, 8uLL), v11)), 4uLL), v12);
  v66 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v61, v62) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v63, v64) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v67 = &v61[v6];
  v3[17] = v65;
  v3[25] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v63, 8uLL), v11)), vandq_s8(vshrq_n_u32(v64, 8uLL), v11)), 4uLL), v12);
  v3[49] = vaddq_s16((*&vshlq_n_s16(v66, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[57] = vaddq_s16((*&vshrq_n_u16(v66, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v68 = *(v67 + 1);
  v69 = *(v67 + 2);
  v70 = *(v67 + 3);
  v71 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v67, 8uLL), v11)), vandq_s8(vshrq_n_u32(v68, 8uLL), v11)), 4uLL), v12);
  v72 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v67, v68) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v69, v70) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v73 = &v67[v6];
  v3[18] = v71;
  v3[26] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v69, 8uLL), v11)), vandq_s8(vshrq_n_u32(v70, 8uLL), v11)), 4uLL), v12);
  v3[50] = vaddq_s16((*&vshlq_n_s16(v72, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[58] = vaddq_s16((*&vshrq_n_u16(v72, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v74 = *(v73 + 1);
  v75 = *(v73 + 2);
  v76 = *(v73 + 3);
  v77 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v73, 8uLL), v11)), vandq_s8(vshrq_n_u32(v74, 8uLL), v11)), 4uLL), v12);
  v78 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v73, v74) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v75, v76) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v79 = &v73[v6];
  v3[19] = v77;
  v3[27] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v75, 8uLL), v11)), vandq_s8(vshrq_n_u32(v76, 8uLL), v11)), 4uLL), v12);
  v3[51] = vaddq_s16((*&vshlq_n_s16(v78, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[59] = vaddq_s16((*&vshrq_n_u16(v78, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v80 = *(v79 + 1);
  v81 = *(v79 + 2);
  v82 = *(v79 + 3);
  v83 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v79, 8uLL), v11)), vandq_s8(vshrq_n_u32(v80, 8uLL), v11)), 4uLL), v12);
  v84 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v79, v80) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v81, v82) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v85 = &v79[v6];
  v3[20] = v83;
  v3[28] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v81, 8uLL), v11)), vandq_s8(vshrq_n_u32(v82, 8uLL), v11)), 4uLL), v12);
  v3[52] = vaddq_s16((*&vshlq_n_s16(v84, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[60] = vaddq_s16((*&vshrq_n_u16(v84, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v86 = *(v85 + 1);
  v87 = *(v85 + 2);
  v88 = *(v85 + 3);
  v89 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v85, 8uLL), v11)), vandq_s8(vshrq_n_u32(v86, 8uLL), v11)), 4uLL), v12);
  v90 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v85, v86) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v87, v88) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v91 = &v85[v6];
  v3[21] = v89;
  v3[29] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v87, 8uLL), v11)), vandq_s8(vshrq_n_u32(v88, 8uLL), v11)), 4uLL), v12);
  v3[53] = vaddq_s16((*&vshlq_n_s16(v90, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[61] = vaddq_s16((*&vshrq_n_u16(v90, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v92 = v91[1];
  v93 = v91[2];
  v94 = v91[3];
  v95 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v91, v92) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v93, v94) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v96 = (v91 + v6);
  v3[22] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v91, 8uLL), v11)), vandq_s8(vshrq_n_u32(v92, 8uLL), v11)), 4uLL), v12);
  v3[30] = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v93, 8uLL), v11)), vandq_s8(vshrq_n_u32(v94, 8uLL), v11)), 4uLL), v12);
  v3[54] = vaddq_s16((*&vshlq_n_s16(v95, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[62] = vaddq_s16((*&vshrq_n_u16(v95, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v97 = v96[1];
  v98 = v96[2];
  v99 = v96[3];
  v100 = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v98, 8uLL), v11)), vandq_s8(vshrq_n_u32(v99, 8uLL), v11));
  v101 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v96, 8uLL), v11)), vandq_s8(vshrq_n_u32(v97, 8uLL), v11)), 4uLL), v12);
  v102 = vqmovun_high_s16(vqmovun_s16((*&vuzp1q_s32(*v96, v97) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&vuzp1q_s32(v98, v99) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v103 = vaddq_s16((*&vshlq_n_s16(v102, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v12);
  v3[23] = v101;
  v3[31] = vaddq_s16(vshlq_n_s16(v100, 4uLL), v12);
  v104 = vaddq_s16((*&vshrq_n_u16(v102, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v12);
  v3[55] = v103;
LABEL_141:
  v3[63] = v104;
  v303 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pixInGeneric<(PixelFormat)2033463606,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = result;
  v259 = *MEMORY[0x29EDCA608];
  if (v4 == 16 && v5 == 16)
  {
    if ((result & 0xF) == 0 && (v6 & 0xF) == 0)
    {
      v8 = 0;
      v9 = (result + 64);
      v10.i64[0] = 0x8000800080008000;
      v10.i64[1] = 0x8000800080008000;
      v11.i64[0] = 0x8000800080008;
      v11.i64[1] = 0x8000800080008;
      do
      {
        v12 = v3 + v8;
        v13 = v9[-4];
        v14 = v9[-3];
        v15 = v9[-2];
        v16 = v9[-1];
        v17 = vzip1q_s16(v13, v14);
        v18 = vzip2q_s16(v13, v14);
        v19 = vzip1q_s16(v15, v16);
        v20 = vzip2q_s64(vzip1q_s16(v17, v18), vzip1q_s16(v19, vzip2q_s16(v15, v16)));
        v21 = vshrq_n_s16(vqaddq_s16(veorq_s8(vzip2q_s32(v17, v19), v10), v11), 4uLL);
        v22 = v9[1];
        v23 = v9[2];
        v24 = v9[3];
        v25 = vzip1q_s16(*v9, v22);
        v26 = vzip2q_s16(*v9, v22);
        v27 = vzip1q_s16(v23, v24);
        v28 = vzip2q_s64(vzip1q_s16(v25, v26), vzip1q_s16(v27, vzip2q_s16(v23, v24)));
        v29 = vshrq_n_s16(vqaddq_s16(veorq_s8(vzip2q_s32(v25, v27), v10), v11), 4uLL);
        v30 = vzip2q_s64(v21, v29);
        v21.i64[1] = v29.i64[0];
        *v12 = vshrq_n_s16(vqaddq_s16(veorq_s8(v20, v10), v11), 4uLL);
        *(v12 + 128) = vshrq_n_s16(vqaddq_s16(veorq_s8(v28, v10), v11), 4uLL);
        *(v12 + 512) = v21;
        *(v12 + 640) = v30;
        v9 = (v9 + v6);
        v8 += 16;
      }

      while (v8 != 128);
      v31 = 0;
      v32.i64[0] = 0x8000800080008000;
      v32.i64[1] = 0x8000800080008000;
      v33.i64[0] = 0x8000800080008;
      v33.i64[1] = 0x8000800080008;
      do
      {
        v34 = v3 + v31 + v8;
        v35 = v9[-4];
        v36 = v9[-3];
        v37 = v9[-2];
        v38 = v9[-1];
        v39 = vzip1q_s16(v35, v36);
        v40 = vzip2q_s16(v35, v36);
        v41 = vzip1q_s16(v37, v38);
        v42 = vzip2q_s64(vzip1q_s16(v39, v40), vzip1q_s16(v41, vzip2q_s16(v37, v38)));
        v43 = vshrq_n_s16(vqaddq_s16(veorq_s8(vzip2q_s32(v39, v41), v32), v33), 4uLL);
        v44 = v9[1];
        v45 = v9[2];
        v46 = v9[3];
        v47 = vzip1q_s16(*v9, v44);
        v48 = vzip2q_s16(*v9, v44);
        v49 = vzip1q_s16(v45, v46);
        v50 = vzip2q_s64(vzip1q_s16(v47, v48), vzip1q_s16(v49, vzip2q_s16(v45, v46)));
        v51 = vshrq_n_s16(vqaddq_s16(veorq_s8(vzip2q_s32(v47, v49), v32), v33), 4uLL);
        v52 = vzip2q_s64(v43, v51);
        v43.i64[1] = v51.i64[0];
        *(v34 + 128) = vshrq_n_s16(vqaddq_s16(veorq_s8(v42, v32), v33), 4uLL);
        *(v34 + 256) = vshrq_n_s16(vqaddq_s16(veorq_s8(v50, v32), v33), 4uLL);
        *(v34 + 640) = v43;
        *(v34 + 768) = v52;
        v31 += 16;
        v9 = (v9 + v6);
      }

      while (v31 != 128);
      goto LABEL_148;
    }

    v53 = 0;
    goto LABEL_20;
  }

  if (v5 == 16)
  {
    v53 = 16 - v4;
    if (v4 <= 0)
    {
      v54 = v6;
      v55 = v258;
      goto LABEL_22;
    }

LABEL_20:
    v54 = v6;
    v65 = v4 + 1;
    v55 = v258;
    do
    {
      v66 = v7[1];
      *v55 = *v7;
      v55[1] = v66;
      v67 = v7[3];
      v55[2] = v7[2];
      v55[3] = v67;
      v68 = v7[5];
      v55[4] = v7[4];
      v55[5] = v68;
      v69 = v7[6];
      v70 = v7[7];
      v7 = (v7 + v6);
      v55[6] = v69;
      v55[7] = v70;
      v55 += 8;
      --v65;
    }

    while (v65 > 1);
LABEL_22:
    if (v53 >= 1)
    {
      v71 = (v7 - v54);
      v72 = *v71;
      v73 = v71[2];
      v74 = v71[3];
      v75 = v71[4];
      v76 = v71[5];
      v77 = v53 + 1;
      v78 = v71[6];
      v79 = v71[7];
      do
      {
        *v55 = v72;
        v55[1] = v71[1];
        v55[2] = v73;
        v55[3] = v74;
        v55[4] = v75;
        v55[5] = v76;
        v55[6] = v78;
        v55[7] = v79;
        v55 += 8;
        --v77;
      }

      while (v77 > 1);
    }

    goto LABEL_144;
  }

  if (v5 > 15)
  {
    goto LABEL_144;
  }

  v56 = v3;
  v57 = 8 * v5;
  v58 = v5;
  if (v4 <= 0)
  {
    v64 = (result - v6);
    v63 = v258;
  }

  else
  {
    v59 = v57;
    v60 = v6;
    v61 = v4;
    v62 = v4 + 1;
    v63 = v258;
    do
    {
      result = memcpy(v63, v7, v57);
      v7 = (v7 + v60);
      v63 += 128;
      --v62;
    }

    while (v62 > 1);
    if (v61 > 15)
    {
      goto LABEL_29;
    }

    v4 = v61;
    v64 = v7 - v60;
  }

  v59 = v57;
  v80 = 17 - v4;
  do
  {
    result = memcpy(v63, v64, v59);
    v63 += 128;
    --v80;
  }

  while (v80 > 1);
LABEL_29:
  v81 = &v258[v59];
  v82 = &v258[v59 - 8];
  v83 = *&v258[v59 - 8];
  v84 = 16 - v58;
  if (16 - v58 <= 1)
  {
    v85 = 1;
  }

  else
  {
    v85 = v84;
  }

  if (v84 < 4)
  {
    LODWORD(v86) = 0;
    v3 = v56;
LABEL_37:
    v90 = v85 - v86;
    v91 = (v82 + 8);
    do
    {
      *v91++ = v83;
      --v90;
    }

    while (v90);
    goto LABEL_39;
  }

  v86 = v85 & 0x7FFFFFFC;
  v82 += 8 * v86;
  v87 = vdupq_lane_s64(v83, 0);
  v88 = &v258[v59 + 16];
  v89 = v86;
  do
  {
    v88[-1] = v87;
    *v88 = v87;
    v88 += 2;
    v89 -= 4;
  }

  while (v89);
  v3 = v56;
  if (v86 != v85)
  {
    goto LABEL_37;
  }

LABEL_39:
  v92 = v81 + 15;
  v93 = v81[15];
  if (v84 < 4)
  {
    LODWORD(v94) = 0;
LABEL_44:
    v98 = v85 - v94;
    v99 = v92 + 1;
    do
    {
      *v99++ = v93;
      --v98;
    }

    while (v98);
    goto LABEL_46;
  }

  v94 = v85 & 0x7FFFFFFC;
  v92 += v94;
  v95 = vdupq_lane_s64(v93, 0);
  v96 = &v258[v59 + 144];
  v97 = v94;
  do
  {
    v96[-1] = v95;
    *v96 = v95;
    v96 += 2;
    v97 -= 4;
  }

  while (v97);
  if (v94 != v85)
  {
    goto LABEL_44;
  }

LABEL_46:
  v100 = v81 + 31;
  v101 = v81[31];
  if (v84 < 4)
  {
    LODWORD(v102) = 0;
LABEL_51:
    v106 = v85 - v102;
    v107 = v100 + 1;
    do
    {
      *v107++ = v101;
      --v106;
    }

    while (v106);
    goto LABEL_53;
  }

  v102 = v85 & 0x7FFFFFFC;
  v100 += v102;
  v103 = vdupq_lane_s64(v101, 0);
  v104 = &v258[v59 + 272];
  v105 = v102;
  do
  {
    v104[-1] = v103;
    *v104 = v103;
    v104 += 2;
    v105 -= 4;
  }

  while (v105);
  if (v102 != v85)
  {
    goto LABEL_51;
  }

LABEL_53:
  v108 = v81 + 47;
  v109 = v81[47];
  if (v84 < 4)
  {
    LODWORD(v110) = 0;
LABEL_58:
    v114 = v85 - v110;
    v115 = v108 + 1;
    do
    {
      *v115++ = v109;
      --v114;
    }

    while (v114);
    goto LABEL_60;
  }

  v110 = v85 & 0x7FFFFFFC;
  v108 += v110;
  v111 = vdupq_lane_s64(v109, 0);
  v112 = &v258[v59 + 400];
  v113 = v110;
  do
  {
    v112[-1] = v111;
    *v112 = v111;
    v112 += 2;
    v113 -= 4;
  }

  while (v113);
  if (v110 != v85)
  {
    goto LABEL_58;
  }

LABEL_60:
  v116 = v81 + 63;
  v117 = v81[63];
  if (v84 < 4)
  {
    LODWORD(v118) = 0;
LABEL_65:
    v122 = v85 - v118;
    v123 = v116 + 1;
    do
    {
      *v123++ = v117;
      --v122;
    }

    while (v122);
    goto LABEL_67;
  }

  v118 = v85 & 0x7FFFFFFC;
  v116 += v118;
  v119 = vdupq_lane_s64(v117, 0);
  v120 = &v258[v59 + 528];
  v121 = v118;
  do
  {
    v120[-1] = v119;
    *v120 = v119;
    v120 += 2;
    v121 -= 4;
  }

  while (v121);
  if (v118 != v85)
  {
    goto LABEL_65;
  }

LABEL_67:
  v124 = v81 + 79;
  v125 = v81[79];
  if (v84 < 4)
  {
    LODWORD(v126) = 0;
LABEL_72:
    v130 = v85 - v126;
    v131 = v124 + 1;
    do
    {
      *v131++ = v125;
      --v130;
    }

    while (v130);
    goto LABEL_74;
  }

  v126 = v85 & 0x7FFFFFFC;
  v124 += v126;
  v127 = vdupq_lane_s64(v125, 0);
  v128 = &v258[v59 + 656];
  v129 = v126;
  do
  {
    v128[-1] = v127;
    *v128 = v127;
    v128 += 2;
    v129 -= 4;
  }

  while (v129);
  if (v126 != v85)
  {
    goto LABEL_72;
  }

LABEL_74:
  v132 = v81 + 95;
  v133 = v81[95];
  if (v84 < 4)
  {
    LODWORD(v134) = 0;
LABEL_79:
    v138 = v85 - v134;
    v139 = v132 + 1;
    do
    {
      *v139++ = v133;
      --v138;
    }

    while (v138);
    goto LABEL_81;
  }

  v134 = v85 & 0x7FFFFFFC;
  v132 += v134;
  v135 = vdupq_lane_s64(v133, 0);
  v136 = &v258[v59 + 784];
  v137 = v134;
  do
  {
    v136[-1] = v135;
    *v136 = v135;
    v136 += 2;
    v137 -= 4;
  }

  while (v137);
  if (v134 != v85)
  {
    goto LABEL_79;
  }

LABEL_81:
  v140 = v81 + 111;
  v141 = v81[111];
  if (v84 < 4)
  {
    LODWORD(v142) = 0;
LABEL_86:
    v146 = v85 - v142;
    v147 = v140 + 1;
    do
    {
      *v147++ = v141;
      --v146;
    }

    while (v146);
    goto LABEL_88;
  }

  v142 = v85 & 0x7FFFFFFC;
  v140 += v142;
  v143 = vdupq_lane_s64(v141, 0);
  v144 = &v258[v59 + 912];
  v145 = v142;
  do
  {
    v144[-1] = v143;
    *v144 = v143;
    v144 += 2;
    v145 -= 4;
  }

  while (v145);
  if (v142 != v85)
  {
    goto LABEL_86;
  }

LABEL_88:
  v148 = v81 + 127;
  v149 = v81[127];
  if (v84 < 4)
  {
    LODWORD(v150) = 0;
LABEL_93:
    v154 = v85 - v150;
    v155 = v148 + 1;
    do
    {
      *v155++ = v149;
      --v154;
    }

    while (v154);
    goto LABEL_95;
  }

  v150 = v85 & 0x7FFFFFFC;
  v148 += v150;
  v151 = vdupq_lane_s64(v149, 0);
  v152 = &v258[v59 + 1040];
  v153 = v150;
  do
  {
    v152[-1] = v151;
    *v152 = v151;
    v152 += 2;
    v153 -= 4;
  }

  while (v153);
  if (v150 != v85)
  {
    goto LABEL_93;
  }

LABEL_95:
  v156 = v81 + 143;
  v157 = v81[143];
  if (v84 < 4)
  {
    LODWORD(v158) = 0;
LABEL_100:
    v162 = v85 - v158;
    v163 = v156 + 1;
    do
    {
      *v163++ = v157;
      --v162;
    }

    while (v162);
    goto LABEL_102;
  }

  v158 = v85 & 0x7FFFFFFC;
  v156 += v158;
  v159 = vdupq_lane_s64(v157, 0);
  v160 = &v258[v59 + 1168];
  v161 = v158;
  do
  {
    v160[-1] = v159;
    *v160 = v159;
    v160 += 2;
    v161 -= 4;
  }

  while (v161);
  if (v158 != v85)
  {
    goto LABEL_100;
  }

LABEL_102:
  v164 = v81 + 159;
  v165 = v81[159];
  if (v84 < 4)
  {
    LODWORD(v166) = 0;
LABEL_107:
    v170 = v85 - v166;
    v171 = v164 + 1;
    do
    {
      *v171++ = v165;
      --v170;
    }

    while (v170);
    goto LABEL_109;
  }

  v166 = v85 & 0x7FFFFFFC;
  v164 += v166;
  v167 = vdupq_lane_s64(v165, 0);
  v168 = &v258[v59 + 1296];
  v169 = v166;
  do
  {
    v168[-1] = v167;
    *v168 = v167;
    v168 += 2;
    v169 -= 4;
  }

  while (v169);
  if (v166 != v85)
  {
    goto LABEL_107;
  }

LABEL_109:
  v172 = v81 + 175;
  v173 = v81[175];
  if (v84 < 4)
  {
    LODWORD(v174) = 0;
LABEL_114:
    v178 = v85 - v174;
    v179 = v172 + 1;
    do
    {
      *v179++ = v173;
      --v178;
    }

    while (v178);
    goto LABEL_116;
  }

  v174 = v85 & 0x7FFFFFFC;
  v172 += v174;
  v175 = vdupq_lane_s64(v173, 0);
  v176 = &v258[v59 + 1424];
  v177 = v174;
  do
  {
    v176[-1] = v175;
    *v176 = v175;
    v176 += 2;
    v177 -= 4;
  }

  while (v177);
  if (v174 != v85)
  {
    goto LABEL_114;
  }

LABEL_116:
  v180 = v81 + 191;
  v181 = v81[191];
  if (v84 < 4)
  {
    LODWORD(v182) = 0;
LABEL_121:
    v186 = v85 - v182;
    v187 = v180 + 1;
    do
    {
      *v187++ = v181;
      --v186;
    }

    while (v186);
    goto LABEL_123;
  }

  v182 = v85 & 0x7FFFFFFC;
  v180 += v182;
  v183 = vdupq_lane_s64(v181, 0);
  v184 = &v258[v59 + 1552];
  v185 = v182;
  do
  {
    v184[-1] = v183;
    *v184 = v183;
    v184 += 2;
    v185 -= 4;
  }

  while (v185);
  if (v182 != v85)
  {
    goto LABEL_121;
  }

LABEL_123:
  v188 = v81 + 207;
  v189 = v81[207];
  if (v84 < 4)
  {
    LODWORD(v190) = 0;
LABEL_128:
    v194 = v85 - v190;
    v195 = v188 + 1;
    do
    {
      *v195++ = v189;
      --v194;
    }

    while (v194);
    goto LABEL_130;
  }

  v190 = v85 & 0x7FFFFFFC;
  v188 += v190;
  v191 = vdupq_lane_s64(v189, 0);
  v192 = &v258[v59 + 1680];
  v193 = v190;
  do
  {
    v192[-1] = v191;
    *v192 = v191;
    v192 += 2;
    v193 -= 4;
  }

  while (v193);
  if (v190 != v85)
  {
    goto LABEL_128;
  }

LABEL_130:
  v196 = v81 + 223;
  v197 = v81[223];
  if (v84 >= 4)
  {
    v198 = v85 & 0x7FFFFFFC;
    v196 += v198;
    v199 = vdupq_lane_s64(v197, 0);
    v200 = &v258[v59 + 1808];
    v201 = v198;
    do
    {
      v200[-1] = v199;
      *v200 = v199;
      v200 += 2;
      v201 -= 4;
    }

    while (v201);
    if (v198 == v85)
    {
      goto LABEL_137;
    }
  }

  else
  {
    LODWORD(v198) = 0;
  }

  v202 = v85 - v198;
  v203 = v196 + 1;
  do
  {
    *v203++ = v197;
    --v202;
  }

  while (v202);
LABEL_137:
  v204 = v81 + 239;
  v205 = v81[239];
  if (v84 >= 4)
  {
    v206 = v85 & 0x7FFFFFFC;
    v204 += v206;
    v207 = vdupq_lane_s64(v205, 0);
    v208 = &v258[v59 + 1936];
    v209 = v206;
    do
    {
      v208[-1] = v207;
      *v208 = v207;
      v208 += 2;
      v209 -= 4;
    }

    while (v209);
    if (v206 == v85)
    {
      goto LABEL_144;
    }
  }

  else
  {
    LODWORD(v206) = 0;
  }

  v210 = v85 - v206;
  v211 = v204 + 1;
  do
  {
    *v211++ = v205;
    --v210;
  }

  while (v210);
LABEL_144:
  v212 = 0;
  v213 = v258;
  v214.i64[0] = 0x8000800080008000;
  v214.i64[1] = 0x8000800080008000;
  v215.i64[0] = 0x8000800080008;
  v215.i64[1] = 0x8000800080008;
  do
  {
    v216 = v3 + v212;
    v217 = v213[1];
    v218 = v213[2];
    v219 = v213[3];
    v220 = vzip1q_s16(*v213, v217);
    v221 = vzip2q_s16(*v213, v217);
    v222 = vzip1q_s16(v218, v219);
    v223 = vzip2q_s64(vzip1q_s16(v220, v221), vzip1q_s16(v222, vzip2q_s16(v218, v219)));
    v224 = vshrq_n_s16(vqaddq_s16(veorq_s8(vzip2q_s32(v220, v222), v214), v215), 4uLL);
    v225 = v213[4];
    v226 = v213[5];
    v227 = v213[6];
    v228 = v213[7];
    v229 = vzip1q_s16(v225, v226);
    v230 = vzip2q_s16(v225, v226);
    v231 = vzip1q_s16(v227, v228);
    v232 = vzip2q_s64(vzip1q_s16(v229, v230), vzip1q_s16(v231, vzip2q_s16(v227, v228)));
    v233 = vshrq_n_s16(vqaddq_s16(veorq_s8(vzip2q_s32(v229, v231), v214), v215), 4uLL);
    v234 = vzip2q_s64(v224, v233);
    v224.i64[1] = v233.i64[0];
    v213 += 8;
    *v216 = vshrq_n_s16(vqaddq_s16(veorq_s8(v223, v214), v215), 4uLL);
    *(v216 + 128) = vshrq_n_s16(vqaddq_s16(veorq_s8(v232, v214), v215), 4uLL);
    *(v216 + 512) = v224;
    *(v216 + 640) = v234;
    v212 += 16;
  }

  while (v212 != 128);
  v235 = 0;
  v236.i64[0] = 0x8000800080008000;
  v236.i64[1] = 0x8000800080008000;
  v237.i64[0] = 0x8000800080008;
  v237.i64[1] = 0x8000800080008;
  do
  {
    v238 = v3 + v235 + v212;
    v239 = v213[1];
    v240 = v213[2];
    v241 = v213[3];
    v242 = vzip1q_s16(*v213, v239);
    v243 = vzip2q_s16(*v213, v239);
    v244 = vzip1q_s16(v240, v241);
    v245 = vzip2q_s64(vzip1q_s16(v242, v243), vzip1q_s16(v244, vzip2q_s16(v240, v241)));
    v246 = vshrq_n_s16(vqaddq_s16(veorq_s8(vzip2q_s32(v242, v244), v236), v237), 4uLL);
    v247 = v213[4];
    v248 = v213[5];
    v249 = v213[6];
    v250 = v213[7];
    v251 = vzip1q_s16(v247, v248);
    v252 = vzip2q_s16(v247, v248);
    v253 = vzip1q_s16(v249, v250);
    v254 = vzip2q_s64(vzip1q_s16(v251, v252), vzip1q_s16(v253, vzip2q_s16(v249, v250)));
    v255 = vshrq_n_s16(vqaddq_s16(veorq_s8(vzip2q_s32(v251, v253), v236), v237), 4uLL);
    v256 = vzip2q_s64(v246, v255);
    v246.i64[1] = v255.i64[0];
    *(v238 + 128) = vshrq_n_s16(vqaddq_s16(veorq_s8(v245, v236), v237), 4uLL);
    *(v238 + 256) = vshrq_n_s16(vqaddq_s16(veorq_s8(v254, v236), v237), 4uLL);
    *(v238 + 640) = v246;
    *(v238 + 768) = v256;
    v235 += 16;
    v213 += 8;
  }

  while (v235 != 128);
LABEL_148:
  v257 = *MEMORY[0x29EDCA608];
  return result;
}

float32x4_t *pixInGeneric<(PixelFormat)1916036716,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = v3;
  v8 = v2;
  v183 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v11 = 16 - v4;
      if (v4 <= 0)
      {
        v12 = v6;
        v13 = v182;
        goto LABEL_20;
      }

LABEL_18:
      v12 = v6;
      v22 = v4 + 1;
      v13 = v182;
      do
      {
        v23 = v8[1];
        *v13 = *v8;
        v13[1] = v23;
        v24 = v8[3];
        v13[2] = v8[2];
        v13[3] = v24;
        v25 = v8[5];
        v13[4] = v8[4];
        v13[5] = v25;
        v26 = v8[7];
        v13[6] = v8[6];
        v13[7] = v26;
        v27 = v8[9];
        v13[8] = v8[8];
        v13[9] = v27;
        v28 = v8[11];
        v13[10] = v8[10];
        v13[11] = v28;
        v29 = v8[13];
        v13[12] = v8[12];
        v13[13] = v29;
        v30 = v8[14];
        v31 = v8[15];
        v8 = (v8 + v6);
        v13[14] = v30;
        v13[15] = v31;
        v13 += 16;
        --v22;
      }

      while (v22 > 1);
LABEL_20:
      if (v11 >= 1)
      {
        v32 = (v8 - v12);
        v33 = *v32;
        v34 = v32[2];
        v35 = v32[3];
        v36 = v32[4];
        v37 = v32[5];
        v38 = v32[6];
        v39 = v32[7];
        v40 = v32[8];
        v41 = v32[9];
        v42 = v32[10];
        v43 = v32[11];
        v44 = v32[12];
        v45 = v32[13];
        v46 = v11 + 1;
        v47 = v32[14];
        v48 = v32[15];
        do
        {
          *v13 = v33;
          v13[1] = v32[1];
          v13[2] = v34;
          v13[3] = v35;
          v13[4] = v36;
          v13[5] = v37;
          v13[6] = v38;
          v13[7] = v39;
          v13[8] = v40;
          v13[9] = v41;
          v13[10] = v42;
          v13[11] = v43;
          v13[12] = v44;
          v13[13] = v45;
          v13[14] = v47;
          v13[15] = v48;
          v13 += 16;
          --v46;
        }

        while (v46 > 1);
      }

      goto LABEL_142;
    }

    if (v5 > 15)
    {
      goto LABEL_142;
    }

    v14 = 16 * v5;
    v15 = v5;
    if (v4 <= 0)
    {
      v21 = v2 - v6;
      v20 = v182;
    }

    else
    {
      v16 = v14;
      v17 = v6;
      v18 = v4;
      v19 = v4 + 1;
      v20 = v182;
      do
      {
        memcpy(v20, v8, v14);
        v8 = (v8 + v17);
        v20 += 16;
        --v19;
      }

      while (v19 > 1);
      if (v18 > 15)
      {
        goto LABEL_27;
      }

      v4 = v18;
      v21 = v8 - v17;
    }

    v16 = v14;
    v49 = 17 - v4;
    do
    {
      memcpy(v20, v21, v16);
      v20 += 16;
      --v49;
    }

    while (v49 > 1);
LABEL_27:
    v50 = (v182[0].f32 + v16);
    v51 = (&v182[-1] + v16);
    v52 = *(&v182[-1] + v16);
    v53 = 16 - v15;
    if (16 - v15 <= 1)
    {
      v54 = 1;
    }

    else
    {
      v54 = v53;
    }

    if (v53 >= 4)
    {
      v55 = v54 & 0x7FFFFFFC;
      v51 += v55;
      *&v56 = *(v182[-1].i64 + v16);
      *(&v56 + 1) = vdupq_laneq_s64(v52, 1).u64[0];
      v57 = (v182[2].f32 + v16);
      v58 = v55;
      do
      {
        *(v57 - 2) = v56;
        *(v57 - 1) = v56;
        *v57 = v56;
        v57[1] = v56;
        v57 += 4;
        v58 -= 4;
      }

      while (v58);
      if (v55 == v54)
      {
LABEL_37:
        v61 = (v50 + 15);
        v62 = *(v50 + 15);
        if (v53 >= 4)
        {
          v63 = v54 & 0x7FFFFFFC;
          v61 += v63;
          *&v64 = *(v50 + 30);
          *(&v64 + 1) = vdupq_laneq_s64(v62, 1).u64[0];
          v65 = v50 + 18;
          v66 = v63;
          do
          {
            *(v65 - 2) = v64;
            *(v65 - 1) = v64;
            *v65 = v64;
            v65[1] = v64;
            v65 += 4;
            v66 -= 4;
          }

          while (v66);
          if (v63 == v54)
          {
LABEL_44:
            v69 = (v50 + 31);
            v70 = *(v50 + 31);
            if (v53 >= 4)
            {
              v71 = v54 & 0x7FFFFFFC;
              v69 += v71;
              *&v72 = *(v50 + 62);
              *(&v72 + 1) = vdupq_laneq_s64(v70, 1).u64[0];
              v73 = v50 + 34;
              v74 = v71;
              do
              {
                *(v73 - 2) = v72;
                *(v73 - 1) = v72;
                *v73 = v72;
                v73[1] = v72;
                v73 += 4;
                v74 -= 4;
              }

              while (v74);
              if (v71 == v54)
              {
LABEL_51:
                v77 = (v50 + 47);
                v78 = *(v50 + 47);
                if (v53 >= 4)
                {
                  v79 = v54 & 0x7FFFFFFC;
                  v77 += v79;
                  *&v80 = *(v50 + 94);
                  *(&v80 + 1) = vdupq_laneq_s64(v78, 1).u64[0];
                  v81 = v50 + 50;
                  v82 = v79;
                  do
                  {
                    *(v81 - 2) = v80;
                    *(v81 - 1) = v80;
                    *v81 = v80;
                    v81[1] = v80;
                    v81 += 4;
                    v82 -= 4;
                  }

                  while (v82);
                  if (v79 == v54)
                  {
LABEL_58:
                    v85 = (v50 + 63);
                    v86 = *(v50 + 63);
                    if (v53 >= 4)
                    {
                      v87 = v54 & 0x7FFFFFFC;
                      v85 += v87;
                      *&v88 = *(v50 + 126);
                      *(&v88 + 1) = vdupq_laneq_s64(v86, 1).u64[0];
                      v89 = v50 + 66;
                      v90 = v87;
                      do
                      {
                        *(v89 - 2) = v88;
                        *(v89 - 1) = v88;
                        *v89 = v88;
                        v89[1] = v88;
                        v89 += 4;
                        v90 -= 4;
                      }

                      while (v90);
                      if (v87 == v54)
                      {
LABEL_65:
                        v93 = (v50 + 79);
                        v94 = *(v50 + 79);
                        if (v53 >= 4)
                        {
                          v95 = v54 & 0x7FFFFFFC;
                          v93 += v95;
                          *&v96 = *(v50 + 158);
                          *(&v96 + 1) = vdupq_laneq_s64(v94, 1).u64[0];
                          v97 = v50 + 82;
                          v98 = v95;
                          do
                          {
                            *(v97 - 2) = v96;
                            *(v97 - 1) = v96;
                            *v97 = v96;
                            v97[1] = v96;
                            v97 += 4;
                            v98 -= 4;
                          }

                          while (v98);
                          if (v95 == v54)
                          {
LABEL_72:
                            v101 = (v50 + 95);
                            v102 = *(v50 + 95);
                            if (v53 >= 4)
                            {
                              v103 = v54 & 0x7FFFFFFC;
                              v101 += v103;
                              *&v104 = *(v50 + 190);
                              *(&v104 + 1) = vdupq_laneq_s64(v102, 1).u64[0];
                              v105 = v50 + 98;
                              v106 = v103;
                              do
                              {
                                *(v105 - 2) = v104;
                                *(v105 - 1) = v104;
                                *v105 = v104;
                                v105[1] = v104;
                                v105 += 4;
                                v106 -= 4;
                              }

                              while (v106);
                              if (v103 == v54)
                              {
LABEL_79:
                                v109 = (v50 + 111);
                                v110 = *(v50 + 111);
                                if (v53 >= 4)
                                {
                                  v111 = v54 & 0x7FFFFFFC;
                                  v109 += v111;
                                  *&v112 = *(v50 + 222);
                                  *(&v112 + 1) = vdupq_laneq_s64(v110, 1).u64[0];
                                  v113 = v50 + 114;
                                  v114 = v111;
                                  do
                                  {
                                    *(v113 - 2) = v112;
                                    *(v113 - 1) = v112;
                                    *v113 = v112;
                                    v113[1] = v112;
                                    v113 += 4;
                                    v114 -= 4;
                                  }

                                  while (v114);
                                  if (v111 == v54)
                                  {
LABEL_86:
                                    v117 = (v50 + 127);
                                    v118 = *(v50 + 127);
                                    if (v53 >= 4)
                                    {
                                      v119 = v54 & 0x7FFFFFFC;
                                      v117 += v119;
                                      *&v120 = *(v50 + 254);
                                      *(&v120 + 1) = vdupq_laneq_s64(v118, 1).u64[0];
                                      v121 = v50 + 130;
                                      v122 = v119;
                                      do
                                      {
                                        *(v121 - 2) = v120;
                                        *(v121 - 1) = v120;
                                        *v121 = v120;
                                        v121[1] = v120;
                                        v121 += 4;
                                        v122 -= 4;
                                      }

                                      while (v122);
                                      if (v119 == v54)
                                      {
LABEL_93:
                                        v125 = (v50 + 143);
                                        v126 = *(v50 + 143);
                                        if (v53 >= 4)
                                        {
                                          v127 = v54 & 0x7FFFFFFC;
                                          v125 += v127;
                                          *&v128 = *(v50 + 286);
                                          *(&v128 + 1) = vdupq_laneq_s64(v126, 1).u64[0];
                                          v129 = v50 + 146;
                                          v130 = v127;
                                          do
                                          {
                                            *(v129 - 2) = v128;
                                            *(v129 - 1) = v128;
                                            *v129 = v128;
                                            v129[1] = v128;
                                            v129 += 4;
                                            v130 -= 4;
                                          }

                                          while (v130);
                                          if (v127 == v54)
                                          {
LABEL_100:
                                            v133 = (v50 + 159);
                                            v134 = *(v50 + 159);
                                            if (v53 >= 4)
                                            {
                                              v135 = v54 & 0x7FFFFFFC;
                                              v133 += v135;
                                              *&v136 = *(v50 + 318);
                                              *(&v136 + 1) = vdupq_laneq_s64(v134, 1).u64[0];
                                              v137 = v50 + 162;
                                              v138 = v135;
                                              do
                                              {
                                                *(v137 - 2) = v136;
                                                *(v137 - 1) = v136;
                                                *v137 = v136;
                                                v137[1] = v136;
                                                v137 += 4;
                                                v138 -= 4;
                                              }

                                              while (v138);
                                              if (v135 == v54)
                                              {
LABEL_107:
                                                v141 = (v50 + 175);
                                                v142 = *(v50 + 175);
                                                if (v53 >= 4)
                                                {
                                                  v143 = v54 & 0x7FFFFFFC;
                                                  v141 += v143;
                                                  *&v144 = *(v50 + 350);
                                                  *(&v144 + 1) = vdupq_laneq_s64(v142, 1).u64[0];
                                                  v145 = v50 + 178;
                                                  v146 = v143;
                                                  do
                                                  {
                                                    *(v145 - 2) = v144;
                                                    *(v145 - 1) = v144;
                                                    *v145 = v144;
                                                    v145[1] = v144;
                                                    v145 += 4;
                                                    v146 -= 4;
                                                  }

                                                  while (v146);
                                                  if (v143 == v54)
                                                  {
LABEL_114:
                                                    v149 = (v50 + 191);
                                                    v150 = *(v50 + 191);
                                                    if (v53 >= 4)
                                                    {
                                                      v151 = v54 & 0x7FFFFFFC;
                                                      v149 += v151;
                                                      *&v152 = *(v50 + 382);
                                                      *(&v152 + 1) = vdupq_laneq_s64(v150, 1).u64[0];
                                                      v153 = v50 + 194;
                                                      v154 = v151;
                                                      do
                                                      {
                                                        *(v153 - 2) = v152;
                                                        *(v153 - 1) = v152;
                                                        *v153 = v152;
                                                        v153[1] = v152;
                                                        v153 += 4;
                                                        v154 -= 4;
                                                      }

                                                      while (v154);
                                                      if (v151 == v54)
                                                      {
LABEL_121:
                                                        v157 = (v50 + 207);
                                                        v158 = *(v50 + 207);
                                                        if (v53 >= 4)
                                                        {
                                                          v159 = v54 & 0x7FFFFFFC;
                                                          v157 += v159;
                                                          *&v160 = *(v50 + 414);
                                                          *(&v160 + 1) = vdupq_laneq_s64(v158, 1).u64[0];
                                                          v161 = v50 + 210;
                                                          v162 = v159;
                                                          do
                                                          {
                                                            *(v161 - 2) = v160;
                                                            *(v161 - 1) = v160;
                                                            *v161 = v160;
                                                            v161[1] = v160;
                                                            v161 += 4;
                                                            v162 -= 4;
                                                          }

                                                          while (v162);
                                                          if (v159 == v54)
                                                          {
LABEL_128:
                                                            v165 = (v50 + 223);
                                                            v166 = *(v50 + 223);
                                                            if (v53 >= 4)
                                                            {
                                                              v167 = v54 & 0x7FFFFFFC;
                                                              v165 += v167;
                                                              *&v168 = *(v50 + 446);
                                                              *(&v168 + 1) = vdupq_laneq_s64(v166, 1).u64[0];
                                                              v169 = v50 + 226;
                                                              v170 = v167;
                                                              do
                                                              {
                                                                *(v169 - 2) = v168;
                                                                *(v169 - 1) = v168;
                                                                *v169 = v168;
                                                                v169[1] = v168;
                                                                v169 += 4;
                                                                v170 -= 4;
                                                              }

                                                              while (v170);
                                                              if (v167 == v54)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v167) = 0;
                                                            }

                                                            v171 = v54 - v167;
                                                            v172 = v165 + 1;
                                                            do
                                                            {
                                                              *v172++ = v166;
                                                              --v171;
                                                            }

                                                            while (v171);
LABEL_135:
                                                            v173 = (v50 + 239);
                                                            v174 = *(v50 + 239);
                                                            if (v53 >= 4)
                                                            {
                                                              v175 = v54 & 0x7FFFFFFC;
                                                              v173 += v175;
                                                              *&v176 = *(v50 + 478);
                                                              *(&v176 + 1) = vdupq_laneq_s64(v174, 1).u64[0];
                                                              v177 = v50 + 242;
                                                              v178 = v175;
                                                              do
                                                              {
                                                                *(v177 - 2) = v176;
                                                                *(v177 - 1) = v176;
                                                                *v177 = v176;
                                                                v177[1] = v176;
                                                                v177 += 4;
                                                                v178 -= 4;
                                                              }

                                                              while (v178);
                                                              if (v175 == v54)
                                                              {
                                                                goto LABEL_142;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v175) = 0;
                                                            }

                                                            v179 = v54 - v175;
                                                            v180 = v173 + 1;
                                                            do
                                                            {
                                                              *v180++ = v174;
                                                              --v179;
                                                            }

                                                            while (v179);
LABEL_142:
                                                            result = pixInFullMB<(PixelFormat)1916036716,(ChromaFormat)2>(v182, 256, v7);
                                                            v181 = *MEMORY[0x29EDCA608];
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v159) = 0;
                                                        }

                                                        v163 = v54 - v159;
                                                        v164 = v157 + 1;
                                                        do
                                                        {
                                                          *v164++ = v158;
                                                          --v163;
                                                        }

                                                        while (v163);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v151) = 0;
                                                    }

                                                    v155 = v54 - v151;
                                                    v156 = v149 + 1;
                                                    do
                                                    {
                                                      *v156++ = v150;
                                                      --v155;
                                                    }

                                                    while (v155);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v143) = 0;
                                                }

                                                v147 = v54 - v143;
                                                v148 = v141 + 1;
                                                do
                                                {
                                                  *v148++ = v142;
                                                  --v147;
                                                }

                                                while (v147);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v135) = 0;
                                            }

                                            v139 = v54 - v135;
                                            v140 = v133 + 1;
                                            do
                                            {
                                              *v140++ = v134;
                                              --v139;
                                            }

                                            while (v139);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v127) = 0;
                                        }

                                        v131 = v54 - v127;
                                        v132 = v125 + 1;
                                        do
                                        {
                                          *v132++ = v126;
                                          --v131;
                                        }

                                        while (v131);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v119) = 0;
                                    }

                                    v123 = v54 - v119;
                                    v124 = v117 + 1;
                                    do
                                    {
                                      *v124++ = v118;
                                      --v123;
                                    }

                                    while (v123);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v111) = 0;
                                }

                                v115 = v54 - v111;
                                v116 = v109 + 1;
                                do
                                {
                                  *v116++ = v110;
                                  --v115;
                                }

                                while (v115);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v103) = 0;
                            }

                            v107 = v54 - v103;
                            v108 = v101 + 1;
                            do
                            {
                              *v108++ = v102;
                              --v107;
                            }

                            while (v107);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v95) = 0;
                        }

                        v99 = v54 - v95;
                        v100 = v93 + 1;
                        do
                        {
                          *v100++ = v94;
                          --v99;
                        }

                        while (v99);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v87) = 0;
                    }

                    v91 = v54 - v87;
                    v92 = v85 + 1;
                    do
                    {
                      *v92++ = v86;
                      --v91;
                    }

                    while (v91);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v79) = 0;
                }

                v83 = v54 - v79;
                v84 = v77 + 1;
                do
                {
                  *v84++ = v78;
                  --v83;
                }

                while (v83);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v71) = 0;
            }

            v75 = v54 - v71;
            v76 = v69 + 1;
            do
            {
              *v76++ = v70;
              --v75;
            }

            while (v75);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v63) = 0;
        }

        v67 = v54 - v63;
        v68 = v61 + 1;
        do
        {
          *v68++ = v62;
          --v67;
        }

        while (v67);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v55) = 0;
    }

    v59 = v54 - v55;
    v60 = v51 + 1;
    do
    {
      *v60++ = v52;
      --v59;
    }

    while (v59);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v9 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)1916036716,(ChromaFormat)2>(v2, v6, v3);
}