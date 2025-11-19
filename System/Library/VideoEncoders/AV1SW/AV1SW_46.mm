int16x8_t *sub_277B94C04(int16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v111 = *MEMORY[0x277D85DE8];
  v109 = *(a4 - 2);
  v110 = *(a4 + 14);
  v16 = *(&a3[-1] + 14);
  v17 = *a3;
  v18 = 65527 * a15;
  v19 = 65519 * a15;
  v20 = 65511 * a15;
  v21 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v22 = vextq_s8(v16, v16, 8uLL).u64[0];
  v23 = -a15;
  v24 = -a14;
  v25 = a14 - 1;
  v26 = a1 + 2;
  v27 = 2 * a2;
  v28 = -512;
  v29.i64[0] = 0x1F001F001F001FLL;
  v29.i64[1] = 0x1F001F001F001FLL;
  result = xmmword_277C3CA58;
  do
  {
    v31 = v25 >> 6;
    a11.n128_u32[0] = (v24 >> 1) & 0x1F;
    if (v25 >> 6 <= 0)
    {
      v48 = &a3->i8[2 * (v24 >> 6)];
      v49 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v47 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v48, v49), *(v48 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v48, *v48, 8uLL), v49), *(v48 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    else
    {
      v32 = vaddq_s16(vdupq_n_s16(v23 + v28 + 512), v21);
      v33 = vshrq_n_u16(v32, 1uLL);
      v34 = vshrq_n_s16(v32, 6uLL);
      v35 = v34.i64[1];
      v36 = v34.i64[0];
      v37 = (v34.i64[0] >> 16) >> 16;
      v38 = vandq_s8(v33, v29);
      v39 = v36 >> 48;
      v40 = v35 >> 16;
      v41 = (v35 >> 16) >> 16;
      v42 = vextq_s8(v38, v38, 8uLL).u64[0];
      if (v31 > 7)
      {
        v50.i32[0] = *(&v109 + 2 * v36 + 2);
        v50.i32[1] = *(&v109 + 2 * (v36 >> 16) + 2);
        v50.i32[2] = *(&v109 + 2 * v37 + 2);
        v50.i32[3] = *(&v109 + 2 * v39 + 2);
        v51.i32[0] = *(&v109 + 2 * v35 + 2);
        v51.i32[1] = *(&v109 + 2 * v40 + 2);
        v51.i32[2] = *(&v109 + 2 * v41 + 2);
        v51.i32[3] = *(&v109 + 2 * (v35 >> 48) + 2);
        v52 = vuzp1q_s16(v50, v51);
        a11 = vuzp2q_s16(v50, v51);
        v47 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v52.i8, vsub_s16(0x20002000200020, *v38.i8)), a11.n128_u64[0], *v38.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v52, v52, 8uLL), vsub_s16(0x20002000200020, v42)), a11, v38), 5uLL);
      }

      else
      {
        v15.i32[0] = *(&v109 + 2 * v36 + 2);
        v43 = 0uLL;
        if (v31 != 1)
        {
          v15.i32[1] = *(&v109 + 2 * (v36 >> 16) + 2);
          if (v31 != 2)
          {
            v15.i32[2] = *(&v109 + 2 * v37 + 2);
            if (v31 >= 4)
            {
              v15.i32[3] = *(&v109 + 2 * v39 + 2);
              if (v31 != 4)
              {
                v43.i32[0] = *(&v109 + 2 * v35 + 2);
                if (v31 >= 6)
                {
                  v43.i32[1] = *(&v109 + 2 * v40 + 2);
                  if (v31 != 6)
                  {
                    v43.i32[2] = *(&v109 + 2 * v41 + 2);
                  }
                }
              }
            }
          }
        }

        v44 = vuzp1q_s16(v15, v43);
        v45 = vuzp2q_s16(v15, v43);
        v112.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v44.i8, vsub_s16(0x20002000200020, *v38.i8)), *v45.i8, *v38.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v44, v44, 8uLL), vsub_s16(0x20002000200020, v42)), v45, v38), 5uLL);
        v46 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v112.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v16.i8, v46), *v17.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v46), v17, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v31];
        v47 = vqtbl2q_s8(v112, a11);
      }
    }

    v26[-2] = v47;
    a11.n128_u32[0] = ((v24 + 512) >> 1) & 0x1F;
    if (v31 >= 9)
    {
      v56 = vaddq_s16(vdupq_n_s16(v18 + v28 + 512), v21);
      v64 = vshrq_n_s16(v56, 6uLL);
      v57 = v64.i32[0];
      v58 = (v64.i64[0] >> 16) >> 16;
      v59 = vandq_s8(vshrq_n_u16(v56, 1uLL), v29);
      v60 = v31 - 8;
      v61 = v64.i64[0] >> 48;
      v62 = v64.i32[2] >> 16;
      v63 = (v64.i64[1] >> 16) >> 16;
      v64.i64[0] = vextq_s8(v59, v59, 8uLL).u64[0];
      if ((v31 - 8) >= 8)
      {
        v69.i32[0] = *(&v109 + 2 * v57 + 2);
        v69.i32[1] = *(&v109 + 2 * (v57 >> 16) + 2);
        v69.i32[2] = *(&v109 + 2 * v58 + 2);
        v69.i32[3] = *(&v109 + 2 * v61 + 2);
        v70.i32[0] = *(&v109 + 2 * v64.i16[4] + 2);
        v70.i32[1] = *(&v109 + 2 * v62 + 2);
        v70.i32[2] = *(&v109 + 2 * v63 + 2);
        v70.i32[3] = *(&v109 + 2 * (v64.i64[1] >> 48) + 2);
        v71 = vuzp1q_s16(v69, v70);
        a11 = vuzp2q_s16(v69, v70);
        v55 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v71.i8, vsub_s16(0x20002000200020, *v59.i8)), a11.n128_u64[0], *v59.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v71, v71, 8uLL), vsub_s16(0x20002000200020, *v64.i8)), a11, v59), 5uLL);
      }

      else
      {
        v47.i32[0] = *(&v109 + 2 * v57 + 2);
        v65 = 0uLL;
        if (v31 != 9)
        {
          v47.i32[1] = *(&v109 + 2 * (v57 >> 16) + 2);
          if (v31 != 10)
          {
            v47.i32[2] = *(&v109 + 2 * v58 + 2);
            if (v60 >= 4)
            {
              v47.i32[3] = *(&v109 + 2 * v61 + 2);
              if (v31 != 12)
              {
                v65.i32[0] = *(&v109 + 2 * v64.i16[4] + 2);
                if (v60 >= 6)
                {
                  v65.i32[1] = *(&v109 + 2 * v62 + 2);
                  if (v31 != 14)
                  {
                    v65.i32[2] = *(&v109 + 2 * v63 + 2);
                  }
                }
              }
            }
          }
        }

        v66 = vuzp1q_s16(v47, v65);
        v67 = vuzp2q_s16(v47, v65);
        v113.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v66.i8, vsub_s16(0x20002000200020, *v59.i8)), *v67.i8, *v59.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v66, v66, 8uLL), vsub_s16(0x20002000200020, *v64.i8)), v67, v59), 5uLL);
        v68 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v113.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v16.i8, v68), *v17.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v68), v17, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v60];
        v55 = vqtbl2q_s8(v113, a11);
      }
    }

    else
    {
      v53 = &a3->i8[2 * ((v24 + 512) >> 6)];
      v54 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v55 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v53, v54), *(v53 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v53, *v53, 8uLL), v54), *(v53 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v26[-1] = v55;
    a11.n128_u32[0] = ((v24 + 1024) >> 1) & 0x1F;
    if (v31 >= 17)
    {
      v75 = vaddq_s16(vdupq_n_s16(v19 + v28 + 512), v21);
      v83 = vshrq_n_s16(v75, 6uLL);
      v76 = v83.i32[0];
      v77 = (v83.i64[0] >> 16) >> 16;
      v78 = vandq_s8(vshrq_n_u16(v75, 1uLL), v29);
      v79 = v31 - 16;
      v80 = v83.i64[0] >> 48;
      v81 = v83.i32[2] >> 16;
      v82 = (v83.i64[1] >> 16) >> 16;
      v83.i64[0] = vextq_s8(v78, v78, 8uLL).u64[0];
      if ((v31 - 16) >= 8)
      {
        v88.i32[0] = *(&v109 + 2 * v76 + 2);
        v88.i32[1] = *(&v109 + 2 * (v76 >> 16) + 2);
        v88.i32[2] = *(&v109 + 2 * v77 + 2);
        v88.i32[3] = *(&v109 + 2 * v80 + 2);
        v89.i32[0] = *(&v109 + 2 * v83.i16[4] + 2);
        v89.i32[1] = *(&v109 + 2 * v81 + 2);
        v89.i32[2] = *(&v109 + 2 * v82 + 2);
        v89.i32[3] = *(&v109 + 2 * (v83.i64[1] >> 48) + 2);
        v90 = vuzp1q_s16(v88, v89);
        a11 = vuzp2q_s16(v88, v89);
        v74 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v90.i8, vsub_s16(0x20002000200020, *v78.i8)), a11.n128_u64[0], *v78.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v90, v90, 8uLL), vsub_s16(0x20002000200020, *v83.i8)), a11, v78), 5uLL);
      }

      else
      {
        v55.i32[0] = *(&v109 + 2 * v76 + 2);
        v84 = 0uLL;
        if (v31 != 17)
        {
          v55.i32[1] = *(&v109 + 2 * (v76 >> 16) + 2);
          if (v31 != 18)
          {
            v55.i32[2] = *(&v109 + 2 * v77 + 2);
            if (v79 >= 4)
            {
              v55.i32[3] = *(&v109 + 2 * v80 + 2);
              if (v31 != 20)
              {
                v84.i32[0] = *(&v109 + 2 * v83.i16[4] + 2);
                if (v79 >= 6)
                {
                  v84.i32[1] = *(&v109 + 2 * v81 + 2);
                  if (v31 != 22)
                  {
                    v84.i32[2] = *(&v109 + 2 * v82 + 2);
                  }
                }
              }
            }
          }
        }

        v85 = vuzp1q_s16(v55, v84);
        v86 = vuzp2q_s16(v55, v84);
        v114.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v85.i8, vsub_s16(0x20002000200020, *v78.i8)), *v86.i8, *v78.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v85, v85, 8uLL), vsub_s16(0x20002000200020, *v83.i8)), v86, v78), 5uLL);
        v87 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v114.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v16.i8, v87), *v17.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v87), v17, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v79];
        v74 = vqtbl2q_s8(v114, a11);
      }
    }

    else
    {
      v72 = &a3->i8[2 * ((v24 + 1024) >> 6)];
      v73 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v74 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v72, v73), *(v72 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v72, *v72, 8uLL), v73), *(v72 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    *v26 = v74;
    a11.n128_u32[0] = ((v24 + 1536) >> 1) & 0x1F;
    if (v31 >= 25)
    {
      v93 = vaddq_s16(vdupq_n_s16(v20 + v28 + 512), v21);
      v101 = vshrq_n_s16(v93, 6uLL);
      v94 = v101.i32[0];
      v95 = (v101.i64[0] >> 16) >> 16;
      v96 = vandq_s8(vshrq_n_u16(v93, 1uLL), v29);
      v97 = v31 - 24;
      v98 = v101.i64[0] >> 48;
      v99 = v101.i32[2] >> 16;
      v100 = (v101.i64[1] >> 16) >> 16;
      v101.i64[0] = vextq_s8(v96, v96, 8uLL).u64[0];
      if (v97 >= 8)
      {
        v106.i32[0] = *(&v109 + 2 * v94 + 2);
        v106.i32[1] = *(&v109 + 2 * (v94 >> 16) + 2);
        v106.i32[2] = *(&v109 + 2 * v95 + 2);
        v106.i32[3] = *(&v109 + 2 * v98 + 2);
        v107.i32[0] = *(&v109 + 2 * v101.i16[4] + 2);
        v107.i32[1] = *(&v109 + 2 * v99 + 2);
        v107.i32[2] = *(&v109 + 2 * v100 + 2);
        v107.i32[3] = *(&v109 + 2 * (v101.i64[1] >> 48) + 2);
        v108 = vuzp1q_s16(v106, v107);
        a11 = vuzp2q_s16(v106, v107);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v108.i8, vsub_s16(0x20002000200020, *v96.i8)), a11.n128_u64[0], *v96.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v108, v108, 8uLL), vsub_s16(0x20002000200020, *v101.i8)), a11, v96), 5uLL);
      }

      else
      {
        v74.i32[0] = *(&v109 + 2 * v94 + 2);
        v102 = 0uLL;
        if (v97 != 1)
        {
          v74.i32[1] = *(&v109 + 2 * (v94 >> 16) + 2);
          if (v97 != 2)
          {
            v74.i32[2] = *(&v109 + 2 * v95 + 2);
            if (v97 >= 4)
            {
              v74.i32[3] = *(&v109 + 2 * v98 + 2);
              if (v97 != 4)
              {
                v102.i32[0] = *(&v109 + 2 * v101.i16[4] + 2);
                if (v97 >= 6)
                {
                  v102.i32[1] = *(&v109 + 2 * v99 + 2);
                  if (v97 != 6)
                  {
                    v102.i32[2] = *(&v109 + 2 * v100 + 2);
                  }
                }
              }
            }
          }
        }

        v103 = vuzp1q_s16(v74, v102);
        v104 = vuzp2q_s16(v74, v102);
        v115.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v103.i8, vsub_s16(0x20002000200020, *v96.i8)), *v104.i8, *v96.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v103, v103, 8uLL), vsub_s16(0x20002000200020, *v101.i8)), v104, v96), 5uLL);
        v105 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v115.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v16.i8, v105), *v17.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v105), v17, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v97];
        v15 = vqtbl2q_s8(v115, a11);
      }
    }

    else
    {
      v91 = &a3->i8[2 * ((v24 + 1536) >> 6)];
      v92 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v91, v92), *(v91 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v91, *v91, 8uLL), v92), *(v91 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v26[1] = v15;
    v24 -= a14;
    v25 += a14;
    v26 = (v26 + v27);
    v28 += 64;
  }

  while (v28);
  return result;
}

uint64_t sub_277B9544C(int16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v75 = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 78);
  v17 = *(a4 + 110);
  v73[6] = *(a4 + 94);
  v73[7] = v17;
  v74 = *(a4 + 126);
  v18 = *(a4 + 14);
  v19 = *(a4 + 46);
  v73[2] = *(a4 + 30);
  v73[3] = v19;
  v73[4] = *(a4 + 62);
  v73[5] = v16;
  v20 = *(&a3[-1] + 14);
  v21 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v22 = vextq_s8(v20, v20, 8uLL).u64[0];
  v23 = 65527 * a15;
  v24 = -a15;
  v25 = -a14;
  v26 = a14 - 1;
  v27 = a1 + 1;
  v28 = 2 * a2;
  v29 = 64;
  v73[0] = *(a4 - 2);
  v73[1] = v18;
  v30.i64[0] = 0x1F001F001F001FLL;
  v30.i64[1] = 0x1F001F001F001FLL;
  v31 = *a3;
  do
  {
    v32 = v26 >> 6;
    a11.n128_u32[0] = (v25 >> 1) & 0x1F;
    if (v26 >> 6 <= 0)
    {
      v49 = &a3->i8[2 * (v25 >> 6)];
      v50 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v48 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v49, v50), *(v49 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v49, *v49, 8uLL), v50), *(v49 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    else
    {
      v33 = vaddq_s16(vdupq_n_s16(v24), v21);
      v34 = vshrq_n_u16(v33, 1uLL);
      v35 = vshrq_n_s16(v33, 6uLL);
      v36 = v35.i64[1];
      v37 = v35.i64[0];
      v38 = (v35.i64[0] >> 16) >> 16;
      v39 = vandq_s8(v34, v30);
      v40 = v37 >> 48;
      v41 = v36 >> 16;
      v42 = (v36 >> 16) >> 16;
      v43 = vextq_s8(v39, v39, 8uLL).u64[0];
      if (v32 > 7)
      {
        v51.i32[0] = *(v73 + 2 * v37 + 2);
        v51.i32[1] = *(v73 + 2 * (v37 >> 16) + 2);
        v51.i32[2] = *(v73 + 2 * v38 + 2);
        v51.i32[3] = *(v73 + 2 * v40 + 2);
        v52.i32[0] = *(v73 + 2 * v36 + 2);
        v52.i32[1] = *(v73 + 2 * v41 + 2);
        v52.i32[2] = *(v73 + 2 * v42 + 2);
        v52.i32[3] = *(v73 + 2 * (v36 >> 48) + 2);
        v53 = vuzp1q_s16(v51, v52);
        a11 = vuzp2q_s16(v51, v52);
        v48 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v53.i8, vsub_s16(0x20002000200020, *v39.i8)), a11.n128_u64[0], *v39.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v53, v53, 8uLL), vsub_s16(0x20002000200020, v43)), a11, v39), 5uLL);
      }

      else
      {
        v15.i32[0] = *(v73 + 2 * v37 + 2);
        v44 = 0uLL;
        if (v32 != 1)
        {
          v15.i32[1] = *(v73 + 2 * (v37 >> 16) + 2);
          if (v32 != 2)
          {
            v15.i32[2] = *(v73 + 2 * v38 + 2);
            if (v32 >= 4)
            {
              v15.i32[3] = *(v73 + 2 * v40 + 2);
              if (v32 != 4)
              {
                v44.i32[0] = *(v73 + 2 * v36 + 2);
                if (v32 >= 6)
                {
                  v44.i32[1] = *(v73 + 2 * v41 + 2);
                  if (v32 != 6)
                  {
                    v44.i32[2] = *(v73 + 2 * v42 + 2);
                  }
                }
              }
            }
          }
        }

        v45 = vuzp1q_s16(v15, v44);
        v46 = vuzp2q_s16(v15, v44);
        v76.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v45.i8, vsub_s16(0x20002000200020, *v39.i8)), *v46.i8, *v39.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v45, v45, 8uLL), vsub_s16(0x20002000200020, v43)), v46, v39), 5uLL);
        v47 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v76.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v20.i8, v47), *v31.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v47), v31, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v32];
        v48 = vqtbl2q_s8(v76, a11);
      }
    }

    v27[-1] = v48;
    result = (v25 + 512);
    a11.n128_u32[0] = (result >> 1) & 0x1F;
    if (v32 >= 9)
    {
      v57 = vaddq_s16(vdupq_n_s16(v23), v21);
      v65 = vshrq_n_s16(v57, 6uLL);
      result = v65.i64[1];
      v58 = v65.i32[0];
      v59 = (v65.i64[0] >> 16) >> 16;
      v60 = vandq_s8(vshrq_n_u16(v57, 1uLL), v30);
      v61 = v32 - 8;
      v62 = v65.i64[0] >> 48;
      v63 = v65.i32[2] >> 16;
      v64 = (v65.i64[1] >> 16) >> 16;
      v65.i64[0] = vextq_s8(v60, v60, 8uLL).u64[0];
      if (v61 >= 8)
      {
        v70.i32[0] = *(v73 + 2 * v58 + 2);
        v70.i32[1] = *(v73 + 2 * (v58 >> 16) + 2);
        v70.i32[2] = *(v73 + 2 * v59 + 2);
        v70.i32[3] = *(v73 + 2 * v62 + 2);
        result = 2 * v65.i16[4];
        v71.i32[0] = *(v73 + result + 2);
        v71.i32[1] = *(v73 + 2 * v63 + 2);
        v71.i32[2] = *(v73 + 2 * v64 + 2);
        v71.i32[3] = *(v73 + 2 * (v65.i64[1] >> 48) + 2);
        v72 = vuzp1q_s16(v70, v71);
        a11 = vuzp2q_s16(v70, v71);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v72.i8, vsub_s16(0x20002000200020, *v60.i8)), a11.n128_u64[0], *v60.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v72, v72, 8uLL), vsub_s16(0x20002000200020, *v65.i8)), a11, v60), 5uLL);
      }

      else
      {
        v48.i32[0] = *(v73 + 2 * v58 + 2);
        v66 = 0uLL;
        if (v61 != 1)
        {
          v48.i32[1] = *(v73 + 2 * (v58 >> 16) + 2);
          if (v61 != 2)
          {
            v48.i32[2] = *(v73 + 2 * v59 + 2);
            if (v61 >= 4)
            {
              v48.i32[3] = *(v73 + 2 * v62 + 2);
              if (v61 != 4)
              {
                result = v73 + 2 * v65.i16[4] + 2;
                v66.i32[0] = *result;
                if (v61 >= 6)
                {
                  result = v73 + 2 * v63 + 2;
                  v66.i32[1] = *result;
                  if (v61 != 6)
                  {
                    result = v73 + 2 * v64 + 2;
                    v66.i32[2] = *result;
                  }
                }
              }
            }
          }
        }

        v67 = vuzp1q_s16(v48, v66);
        v68 = vuzp2q_s16(v48, v66);
        v77.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v67.i8, vsub_s16(0x20002000200020, *v60.i8)), *v68.i8, *v60.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v67, v67, 8uLL), vsub_s16(0x20002000200020, *v65.i8)), v68, v60), 5uLL);
        v69 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v77.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v20.i8, v69), *v31.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v69), v31, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v61];
        v15 = vqtbl2q_s8(v77, a11);
      }
    }

    else
    {
      v55 = &a3->i8[2 * (result >> 6)];
      v56 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v55, v56), *(v55 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v55, *v55, 8uLL), v56), *(v55 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v23 += 64;
    v24 += 64;
    *v27 = v15;
    v25 -= a14;
    v26 += a14;
    v27 = (v27 + v28);
    --v29;
  }

  while (v29);
  return result;
}

uint64_t sub_277B958E0(int16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v73 = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 14);
  v17 = *(a4 + 46);
  v71[2] = *(a4 + 30);
  v71[3] = v17;
  v72 = *(a4 + 62);
  v71[0] = *(a4 - 2);
  v71[1] = v16;
  v18 = *(&a3[-1] + 14);
  v19 = *a3;
  v20 = 65527 * a15;
  v21 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v22 = vextq_s8(v18, v18, 8uLL).u64[0];
  v23 = -a15;
  v24 = -a14;
  v25 = a14 - 1;
  v26 = a1 + 1;
  v27 = 2 * a2;
  v28 = 32;
  v29.i64[0] = 0x1F001F001F001FLL;
  v29.i64[1] = 0x1F001F001F001FLL;
  do
  {
    v30 = v25 >> 6;
    a11.n128_u32[0] = (v24 >> 1) & 0x1F;
    if (v25 >> 6 <= 0)
    {
      v47 = &a3->i8[2 * (v24 >> 6)];
      v48 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v46 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v47, v48), *(v47 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v47, *v47, 8uLL), v48), *(v47 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    else
    {
      v31 = vaddq_s16(vdupq_n_s16(v23), v21);
      v32 = vshrq_n_u16(v31, 1uLL);
      v33 = vshrq_n_s16(v31, 6uLL);
      v34 = v33.i64[1];
      v35 = v33.i64[0];
      v36 = (v33.i64[0] >> 16) >> 16;
      v37 = vandq_s8(v32, v29);
      v38 = v35 >> 48;
      v39 = v34 >> 16;
      v40 = (v34 >> 16) >> 16;
      v41 = vextq_s8(v37, v37, 8uLL).u64[0];
      if (v30 > 7)
      {
        v49.i32[0] = *(v71 + 2 * v35 + 2);
        v49.i32[1] = *(v71 + 2 * (v35 >> 16) + 2);
        v49.i32[2] = *(v71 + 2 * v36 + 2);
        v49.i32[3] = *(v71 + 2 * v38 + 2);
        v50.i32[0] = *(v71 + 2 * v34 + 2);
        v50.i32[1] = *(v71 + 2 * v39 + 2);
        v50.i32[2] = *(v71 + 2 * v40 + 2);
        v50.i32[3] = *(v71 + 2 * (v34 >> 48) + 2);
        v51 = vuzp1q_s16(v49, v50);
        a11 = vuzp2q_s16(v49, v50);
        v46 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v51.i8, vsub_s16(0x20002000200020, *v37.i8)), a11.n128_u64[0], *v37.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v51, v51, 8uLL), vsub_s16(0x20002000200020, v41)), a11, v37), 5uLL);
      }

      else
      {
        v15.i32[0] = *(v71 + 2 * v35 + 2);
        v42 = 0uLL;
        if (v30 != 1)
        {
          v15.i32[1] = *(v71 + 2 * (v35 >> 16) + 2);
          if (v30 != 2)
          {
            v15.i32[2] = *(v71 + 2 * v36 + 2);
            if (v30 >= 4)
            {
              v15.i32[3] = *(v71 + 2 * v38 + 2);
              if (v30 != 4)
              {
                v42.i32[0] = *(v71 + 2 * v34 + 2);
                if (v30 >= 6)
                {
                  v42.i32[1] = *(v71 + 2 * v39 + 2);
                  if (v30 != 6)
                  {
                    v42.i32[2] = *(v71 + 2 * v40 + 2);
                  }
                }
              }
            }
          }
        }

        v43 = vuzp1q_s16(v15, v42);
        v44 = vuzp2q_s16(v15, v42);
        v74.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v43.i8, vsub_s16(0x20002000200020, *v37.i8)), *v44.i8, *v37.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v43, v43, 8uLL), vsub_s16(0x20002000200020, v41)), v44, v37), 5uLL);
        v45 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v74.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v18.i8, v45), *v19.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v45), v19, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v30];
        v46 = vqtbl2q_s8(v74, a11);
      }
    }

    v26[-1] = v46;
    result = (v24 + 512);
    a11.n128_u32[0] = (result >> 1) & 0x1F;
    if (v30 >= 9)
    {
      v55 = vaddq_s16(vdupq_n_s16(v20), v21);
      v63 = vshrq_n_s16(v55, 6uLL);
      result = v63.i64[1];
      v56 = v63.i32[0];
      v57 = (v63.i64[0] >> 16) >> 16;
      v58 = vandq_s8(vshrq_n_u16(v55, 1uLL), v29);
      v59 = v30 - 8;
      v60 = v63.i64[0] >> 48;
      v61 = v63.i32[2] >> 16;
      v62 = (v63.i64[1] >> 16) >> 16;
      v63.i64[0] = vextq_s8(v58, v58, 8uLL).u64[0];
      if (v59 >= 8)
      {
        v68.i32[0] = *(v71 + 2 * v56 + 2);
        v68.i32[1] = *(v71 + 2 * (v56 >> 16) + 2);
        v68.i32[2] = *(v71 + 2 * v57 + 2);
        v68.i32[3] = *(v71 + 2 * v60 + 2);
        result = 2 * v63.i16[4];
        v69.i32[0] = *(v71 + result + 2);
        v69.i32[1] = *(v71 + 2 * v61 + 2);
        v69.i32[2] = *(v71 + 2 * v62 + 2);
        v69.i32[3] = *(v71 + 2 * (v63.i64[1] >> 48) + 2);
        v70 = vuzp1q_s16(v68, v69);
        a11 = vuzp2q_s16(v68, v69);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v70.i8, vsub_s16(0x20002000200020, *v58.i8)), a11.n128_u64[0], *v58.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v70, v70, 8uLL), vsub_s16(0x20002000200020, *v63.i8)), a11, v58), 5uLL);
      }

      else
      {
        v46.i32[0] = *(v71 + 2 * v56 + 2);
        v64 = 0uLL;
        if (v59 != 1)
        {
          v46.i32[1] = *(v71 + 2 * (v56 >> 16) + 2);
          if (v59 != 2)
          {
            v46.i32[2] = *(v71 + 2 * v57 + 2);
            if (v59 >= 4)
            {
              v46.i32[3] = *(v71 + 2 * v60 + 2);
              if (v59 != 4)
              {
                result = v71 + 2 * v63.i16[4] + 2;
                v64.i32[0] = *result;
                if (v59 >= 6)
                {
                  result = v71 + 2 * v61 + 2;
                  v64.i32[1] = *result;
                  if (v59 != 6)
                  {
                    result = v71 + 2 * v62 + 2;
                    v64.i32[2] = *result;
                  }
                }
              }
            }
          }
        }

        v65 = vuzp1q_s16(v46, v64);
        v66 = vuzp2q_s16(v46, v64);
        v75.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v65.i8, vsub_s16(0x20002000200020, *v58.i8)), *v66.i8, *v58.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v65, v65, 8uLL), vsub_s16(0x20002000200020, *v63.i8)), v66, v58), 5uLL);
        v67 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v75.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v18.i8, v67), *v19.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v67), v19, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v59];
        v15 = vqtbl2q_s8(v75, a11);
      }
    }

    else
    {
      v53 = &a3->i8[2 * (result >> 6)];
      v54 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v53, v54), *(v53 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v53, *v53, 8uLL), v54), *(v53 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v20 += 64;
    v23 += 64;
    *v26 = v15;
    v24 -= a14;
    v25 += a14;
    v26 = (v26 + v27);
    --v28;
  }

  while (v28);
  return result;
}

uint64_t sub_277B95D5C(int16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v72 = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 14);
  v70[0] = *(a4 - 2);
  v70[1] = v16;
  v71 = *(a4 + 30);
  v17 = *(&a3[-1] + 14);
  v18 = *a3;
  v19 = 65527 * a15;
  v20 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v21 = vextq_s8(v17, v17, 8uLL).u64[0];
  v22 = -a15;
  v23 = -a14;
  v24 = a14 - 1;
  v25 = a1 + 1;
  v26 = 2 * a2;
  v27 = 16;
  v28.i64[0] = 0x1F001F001F001FLL;
  v28.i64[1] = 0x1F001F001F001FLL;
  do
  {
    v29 = v24 >> 6;
    a11.n128_u32[0] = (v23 >> 1) & 0x1F;
    if (v24 >> 6 <= 0)
    {
      v46 = &a3->i8[2 * (v23 >> 6)];
      v47 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v45 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v46, v47), *(v46 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v46, *v46, 8uLL), v47), *(v46 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    else
    {
      v30 = vaddq_s16(vdupq_n_s16(v22), v20);
      v31 = vshrq_n_u16(v30, 1uLL);
      v32 = vshrq_n_s16(v30, 6uLL);
      v33 = v32.i64[1];
      v34 = v32.i64[0];
      v35 = (v32.i64[0] >> 16) >> 16;
      v36 = vandq_s8(v31, v28);
      v37 = v34 >> 48;
      v38 = v33 >> 16;
      v39 = (v33 >> 16) >> 16;
      v40 = vextq_s8(v36, v36, 8uLL).u64[0];
      if (v29 > 7)
      {
        v48.i32[0] = *(v70 + 2 * v34 + 2);
        v48.i32[1] = *(v70 + 2 * (v34 >> 16) + 2);
        v48.i32[2] = *(v70 + 2 * v35 + 2);
        v48.i32[3] = *(v70 + 2 * v37 + 2);
        v49.i32[0] = *(v70 + 2 * v33 + 2);
        v49.i32[1] = *(v70 + 2 * v38 + 2);
        v49.i32[2] = *(v70 + 2 * v39 + 2);
        v49.i32[3] = *(v70 + 2 * (v33 >> 48) + 2);
        v50 = vuzp1q_s16(v48, v49);
        a11 = vuzp2q_s16(v48, v49);
        v45 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v50.i8, vsub_s16(0x20002000200020, *v36.i8)), a11.n128_u64[0], *v36.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v50, v50, 8uLL), vsub_s16(0x20002000200020, v40)), a11, v36), 5uLL);
      }

      else
      {
        v15.i32[0] = *(v70 + 2 * v34 + 2);
        v41 = 0uLL;
        if (v29 != 1)
        {
          v15.i32[1] = *(v70 + 2 * (v34 >> 16) + 2);
          if (v29 != 2)
          {
            v15.i32[2] = *(v70 + 2 * v35 + 2);
            if (v29 >= 4)
            {
              v15.i32[3] = *(v70 + 2 * v37 + 2);
              if (v29 != 4)
              {
                v41.i32[0] = *(v70 + 2 * v33 + 2);
                if (v29 >= 6)
                {
                  v41.i32[1] = *(v70 + 2 * v38 + 2);
                  if (v29 != 6)
                  {
                    v41.i32[2] = *(v70 + 2 * v39 + 2);
                  }
                }
              }
            }
          }
        }

        v42 = vuzp1q_s16(v15, v41);
        v43 = vuzp2q_s16(v15, v41);
        v73.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v42.i8, vsub_s16(0x20002000200020, *v36.i8)), *v43.i8, *v36.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v42, v42, 8uLL), vsub_s16(0x20002000200020, v40)), v43, v36), 5uLL);
        v44 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v73.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v17.i8, v44), *v18.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v21, v44), v18, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v29];
        v45 = vqtbl2q_s8(v73, a11);
      }
    }

    v25[-1] = v45;
    result = (v23 + 512);
    a11.n128_u32[0] = (result >> 1) & 0x1F;
    if (v29 >= 9)
    {
      v54 = vaddq_s16(vdupq_n_s16(v19), v20);
      v62 = vshrq_n_s16(v54, 6uLL);
      result = v62.i64[1];
      v55 = v62.i32[0];
      v56 = (v62.i64[0] >> 16) >> 16;
      v57 = vandq_s8(vshrq_n_u16(v54, 1uLL), v28);
      v58 = v29 - 8;
      v59 = v62.i64[0] >> 48;
      v60 = v62.i32[2] >> 16;
      v61 = (v62.i64[1] >> 16) >> 16;
      v62.i64[0] = vextq_s8(v57, v57, 8uLL).u64[0];
      if (v58 >= 8)
      {
        v67.i32[0] = *(v70 + 2 * v55 + 2);
        v67.i32[1] = *(v70 + 2 * (v55 >> 16) + 2);
        v67.i32[2] = *(v70 + 2 * v56 + 2);
        v67.i32[3] = *(v70 + 2 * v59 + 2);
        result = 2 * v62.i16[4];
        v68.i32[0] = *(v70 + result + 2);
        v68.i32[1] = *(v70 + 2 * v60 + 2);
        v68.i32[2] = *(v70 + 2 * v61 + 2);
        v68.i32[3] = *(v70 + 2 * (v62.i64[1] >> 48) + 2);
        v69 = vuzp1q_s16(v67, v68);
        a11 = vuzp2q_s16(v67, v68);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v69.i8, vsub_s16(0x20002000200020, *v57.i8)), a11.n128_u64[0], *v57.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v69, v69, 8uLL), vsub_s16(0x20002000200020, *v62.i8)), a11, v57), 5uLL);
      }

      else
      {
        v45.i32[0] = *(v70 + 2 * v55 + 2);
        v63 = 0uLL;
        if (v58 != 1)
        {
          v45.i32[1] = *(v70 + 2 * (v55 >> 16) + 2);
          if (v58 != 2)
          {
            v45.i32[2] = *(v70 + 2 * v56 + 2);
            if (v58 >= 4)
            {
              v45.i32[3] = *(v70 + 2 * v59 + 2);
              if (v58 != 4)
              {
                result = v70 + 2 * v62.i16[4] + 2;
                v63.i32[0] = *result;
                if (v58 >= 6)
                {
                  result = v70 + 2 * v60 + 2;
                  v63.i32[1] = *result;
                  if (v58 != 6)
                  {
                    result = v70 + 2 * v61 + 2;
                    v63.i32[2] = *result;
                  }
                }
              }
            }
          }
        }

        v64 = vuzp1q_s16(v45, v63);
        v65 = vuzp2q_s16(v45, v63);
        v74.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v64.i8, vsub_s16(0x20002000200020, *v57.i8)), *v65.i8, *v57.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v64, v64, 8uLL), vsub_s16(0x20002000200020, *v62.i8)), v65, v57), 5uLL);
        v66 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v74.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v17.i8, v66), *v18.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v21, v66), v18, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v58];
        v15 = vqtbl2q_s8(v74, a11);
      }
    }

    else
    {
      v52 = &a3->i8[2 * (result >> 6)];
      v53 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v52, v53), *(v52 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v52, *v52, 8uLL), v53), *(v52 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v19 += 64;
    v22 += 64;
    *v25 = v15;
    v23 -= a14;
    v24 += a14;
    v25 = (v25 + v26);
    --v27;
  }

  while (v27);
  return result;
}

uint64_t sub_277B961CC(int16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v71 = *MEMORY[0x277D85DE8];
  v69 = *(a4 - 2);
  v70 = *(a4 + 14);
  v16 = *(&a3[-1] + 14);
  v17 = *a3;
  v18 = 65527 * a15;
  v19 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v20 = vextq_s8(v16, v16, 8uLL).u64[0];
  v21 = -a15;
  v22 = -a14;
  v23 = a14 - 1;
  v24 = a1 + 1;
  v25 = 2 * a2;
  v26 = 8;
  v27.i64[0] = 0x1F001F001F001FLL;
  v27.i64[1] = 0x1F001F001F001FLL;
  do
  {
    v28 = v23 >> 6;
    a11.n128_u32[0] = (v22 >> 1) & 0x1F;
    if (v23 >> 6 <= 0)
    {
      v45 = &a3->i8[2 * (v22 >> 6)];
      v46 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v44 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v45, v46), *(v45 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v45, *v45, 8uLL), v46), *(v45 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    else
    {
      v29 = vaddq_s16(vdupq_n_s16(v21), v19);
      v30 = vshrq_n_u16(v29, 1uLL);
      v31 = vshrq_n_s16(v29, 6uLL);
      v32 = v31.i64[1];
      v33 = v31.i64[0];
      v34 = (v31.i64[0] >> 16) >> 16;
      v35 = vandq_s8(v30, v27);
      v36 = v33 >> 48;
      v37 = v32 >> 16;
      v38 = (v32 >> 16) >> 16;
      v39 = vextq_s8(v35, v35, 8uLL).u64[0];
      if (v28 > 7)
      {
        v47.i32[0] = *(&v69 + 2 * v33 + 2);
        v47.i32[1] = *(&v69 + 2 * (v33 >> 16) + 2);
        v47.i32[2] = *(&v69 + 2 * v34 + 2);
        v47.i32[3] = *(&v69 + 2 * v36 + 2);
        v48.i32[0] = *(&v69 + 2 * v32 + 2);
        v48.i32[1] = *(&v69 + 2 * v37 + 2);
        v48.i32[2] = *(&v69 + 2 * v38 + 2);
        v48.i32[3] = *(&v69 + 2 * (v32 >> 48) + 2);
        v49 = vuzp1q_s16(v47, v48);
        a11 = vuzp2q_s16(v47, v48);
        v44 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v49.i8, vsub_s16(0x20002000200020, *v35.i8)), a11.n128_u64[0], *v35.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v49, v49, 8uLL), vsub_s16(0x20002000200020, v39)), a11, v35), 5uLL);
      }

      else
      {
        v15.i32[0] = *(&v69 + 2 * v33 + 2);
        v40 = 0uLL;
        if (v28 != 1)
        {
          v15.i32[1] = *(&v69 + 2 * (v33 >> 16) + 2);
          if (v28 != 2)
          {
            v15.i32[2] = *(&v69 + 2 * v34 + 2);
            if (v28 >= 4)
            {
              v15.i32[3] = *(&v69 + 2 * v36 + 2);
              if (v28 != 4)
              {
                v40.i32[0] = *(&v69 + 2 * v32 + 2);
                if (v28 >= 6)
                {
                  v40.i32[1] = *(&v69 + 2 * v37 + 2);
                  if (v28 != 6)
                  {
                    v40.i32[2] = *(&v69 + 2 * v38 + 2);
                  }
                }
              }
            }
          }
        }

        v41 = vuzp1q_s16(v15, v40);
        v42 = vuzp2q_s16(v15, v40);
        v72.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v41.i8, vsub_s16(0x20002000200020, *v35.i8)), *v42.i8, *v35.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v41, v41, 8uLL), vsub_s16(0x20002000200020, v39)), v42, v35), 5uLL);
        v43 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v72.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v16.i8, v43), *v17.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v20, v43), v17, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v28];
        v44 = vqtbl2q_s8(v72, a11);
      }
    }

    v24[-1] = v44;
    result = (v22 + 512);
    a11.n128_u32[0] = (result >> 1) & 0x1F;
    if (v28 >= 9)
    {
      v53 = vaddq_s16(vdupq_n_s16(v18), v19);
      v61 = vshrq_n_s16(v53, 6uLL);
      result = v61.i64[1];
      v54 = v61.i32[0];
      v55 = (v61.i64[0] >> 16) >> 16;
      v56 = vandq_s8(vshrq_n_u16(v53, 1uLL), v27);
      v57 = v28 - 8;
      v58 = v61.i64[0] >> 48;
      v59 = v61.i32[2] >> 16;
      v60 = (v61.i64[1] >> 16) >> 16;
      v61.i64[0] = vextq_s8(v56, v56, 8uLL).u64[0];
      if (v57 >= 8)
      {
        v66.i32[0] = *(&v69 + 2 * v54 + 2);
        v66.i32[1] = *(&v69 + 2 * (v54 >> 16) + 2);
        v66.i32[2] = *(&v69 + 2 * v55 + 2);
        v66.i32[3] = *(&v69 + 2 * v58 + 2);
        result = 2 * v61.i16[4];
        v67.i32[0] = *(&v69 + result + 2);
        v67.i32[1] = *(&v69 + 2 * v59 + 2);
        v67.i32[2] = *(&v69 + 2 * v60 + 2);
        v67.i32[3] = *(&v69 + 2 * (v61.i64[1] >> 48) + 2);
        v68 = vuzp1q_s16(v66, v67);
        a11 = vuzp2q_s16(v66, v67);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v68.i8, vsub_s16(0x20002000200020, *v56.i8)), a11.n128_u64[0], *v56.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v68, v68, 8uLL), vsub_s16(0x20002000200020, *v61.i8)), a11, v56), 5uLL);
      }

      else
      {
        v44.i32[0] = *(&v69 + 2 * v54 + 2);
        v62 = 0uLL;
        if (v57 != 1)
        {
          v44.i32[1] = *(&v69 + 2 * (v54 >> 16) + 2);
          if (v57 != 2)
          {
            v44.i32[2] = *(&v69 + 2 * v55 + 2);
            if (v57 >= 4)
            {
              v44.i32[3] = *(&v69 + 2 * v58 + 2);
              if (v57 != 4)
              {
                result = &v69 + 2 * v61.i16[4] + 2;
                v62.i32[0] = *result;
                if (v57 >= 6)
                {
                  result = &v69 + 2 * v59 + 2;
                  v62.i32[1] = *result;
                  if (v57 != 6)
                  {
                    result = &v69 + 2 * v60 + 2;
                    v62.i32[2] = *result;
                  }
                }
              }
            }
          }
        }

        v63 = vuzp1q_s16(v44, v62);
        v64 = vuzp2q_s16(v44, v62);
        v73.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v63.i8, vsub_s16(0x20002000200020, *v56.i8)), *v64.i8, *v56.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v63, v63, 8uLL), vsub_s16(0x20002000200020, *v61.i8)), v64, v56), 5uLL);
        v65 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v73.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v16.i8, v65), *v17.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v20, v65), v17, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v57];
        v15 = vqtbl2q_s8(v73, a11);
      }
    }

    else
    {
      v51 = &a3->i8[2 * (result >> 6)];
      v52 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v51, v52), *(v51 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v51, *v51, 8uLL), v52), *(v51 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v18 += 64;
    v21 += 64;
    *v24 = v15;
    v22 -= a14;
    v23 += a14;
    v24 = (v24 + v25);
    --v26;
  }

  while (v26);
  return result;
}

uint64_t sub_277B96638(uint64_t result, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, __n128 a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v205 = *MEMORY[0x277D85DE8];
  v203 = *(a4 - 2);
  v204 = *(a4 + 6);
  v13 = *(&a3[-1] + 14);
  v14 = *a3;
  v15 = vmulq_s16(vdupq_n_s16(a13), xmmword_277BB7B70);
  v16 = vextq_s8(v13, v13, 8uLL).u64[0];
  v17 = (a12 - 1) >> 6;
  a9.n128_u32[0] = (-a12 >> 1) & 0x1F;
  if (v17 <= 0)
  {
    v35 = &a3->i8[2 * (-a12 >> 6)];
    v36 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
    v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v35, v36), *(v35 + 2), a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v35, *v35, 8uLL), v36), *(v35 + 2), a9.n128_u64[0], 0), 5uLL);
  }

  else
  {
    v18 = vaddq_s16(vdupq_n_s16(-a13), v15);
    v19 = vshrq_n_u16(v18, 1uLL);
    v20.i64[0] = 0x1F001F001F001FLL;
    v20.i64[1] = 0x1F001F001F001FLL;
    v21 = vshrq_n_s16(v18, 6uLL);
    v22 = v21.i64[1];
    v23 = v21.i64[0];
    v24 = (v21.i64[0] >> 16) >> 16;
    v25 = vandq_s8(v19, v20);
    v26 = v23 >> 48;
    v27 = v22 >> 16;
    v28 = (v22 >> 16) >> 16;
    v29 = vextq_s8(v25, v25, 8uLL).u64[0];
    if (v17 > 7)
    {
      v37.i32[0] = *(&v203 + 2 * v23 + 2);
      v37.i32[1] = *(&v203 + 2 * (v23 >> 16) + 2);
      v37.i32[2] = *(&v203 + 2 * v24 + 2);
      v37.i32[3] = *(&v203 + 2 * v26 + 2);
      v38.i32[0] = *(&v203 + 2 * v22 + 2);
      v38.i32[1] = *(&v203 + 2 * v27 + 2);
      v38.i32[2] = *(&v203 + 2 * v28 + 2);
      v38.i32[3] = *(&v203 + 2 * (v22 >> 48) + 2);
      v39 = vuzp1q_s16(v37, v38);
      a9 = vuzp2q_s16(v37, v38);
      v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v39.i8, vsub_s16(0x20002000200020, *v25.i8)), a9.n128_u64[0], *v25.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v39, v39, 8uLL), vsub_s16(0x20002000200020, v29)), a9, v25), 5uLL);
    }

    else
    {
      v20.i32[0] = *(&v203 + 2 * v23 + 2);
      v30 = 0uLL;
      if (v17 != 1)
      {
        v20.i32[1] = *(&v203 + 2 * (v23 >> 16) + 2);
        if (v17 != 2)
        {
          v20.i32[2] = *(&v203 + 2 * v24 + 2);
          if (v17 >= 4)
          {
            v20.i32[3] = *(&v203 + 2 * v26 + 2);
            if (v17 != 4)
            {
              v30.i32[0] = *(&v203 + 2 * v22 + 2);
              if (v17 >= 6)
              {
                v30.i32[1] = *(&v203 + 2 * v27 + 2);
                if (v17 != 6)
                {
                  v30.i32[2] = *(&v203 + 2 * v28 + 2);
                }
              }
            }
          }
        }
      }

      v31 = vuzp1q_s16(v20, v30);
      v32 = vuzp2q_s16(v20, v30);
      v209.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v31.i8, vsub_s16(0x20002000200020, *v25.i8)), *v32.i8, *v25.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v31, v31, 8uLL), vsub_s16(0x20002000200020, v29)), v32, v25), 5uLL);
      v33 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
      v209.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v13.i8, v33), *v14.i8, a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v16, v33), v14, a9.n128_u64[0], 0), 5uLL);
      a9 = xmmword_277C3CA58[v17];
      v34 = vqtbl2q_s8(v209, a9);
    }
  }

  *result = v34;
  v40 = -9 * a13;
  a9.n128_u32[0] = ((512 - a12) >> 1) & 0x1F;
  if (v17 >= 9)
  {
    v44 = vaddq_s16(vdupq_n_s16(v40), v15);
    v45 = vshrq_n_u16(v44, 1uLL);
    v46 = vshrq_n_s16(v44, 6uLL);
    v47 = v46.i64[1];
    v48.i64[0] = 0x1F001F001F001FLL;
    v48.i64[1] = 0x1F001F001F001FLL;
    v49 = v46.i64[0];
    v50 = (v46.i64[0] >> 16) >> 16;
    v51 = vandq_s8(v45, v48);
    v52 = v17 - 8;
    v53 = v49 >> 48;
    v54 = v47 >> 16;
    v55 = (v47 >> 16) >> 16;
    v56 = vextq_s8(v51, v51, 8uLL).u64[0];
    if (v52 >= 8)
    {
      v61.i32[0] = *(&v203 + 2 * v49 + 2);
      v61.i32[1] = *(&v203 + 2 * (v49 >> 16) + 2);
      v61.i32[2] = *(&v203 + 2 * v50 + 2);
      v61.i32[3] = *(&v203 + 2 * v53 + 2);
      v62.i32[0] = *(&v203 + 2 * v47 + 2);
      v62.i32[1] = *(&v203 + 2 * v54 + 2);
      v62.i32[2] = *(&v203 + 2 * v55 + 2);
      v62.i32[3] = *(&v203 + 2 * (v47 >> 48) + 2);
      v63 = vuzp1q_s16(v61, v62);
      a9 = vuzp2q_s16(v61, v62);
      v43 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v63.i8, vsub_s16(0x20002000200020, *v51.i8)), a9.n128_u64[0], *v51.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v63, v63, 8uLL), vsub_s16(0x20002000200020, v56)), a9, v51), 5uLL);
    }

    else
    {
      v48.i32[0] = *(&v203 + 2 * v49 + 2);
      v57 = 0uLL;
      if (v52 != 1)
      {
        v48.i32[1] = *(&v203 + 2 * (v49 >> 16) + 2);
        if (v52 != 2)
        {
          v48.i32[2] = *(&v203 + 2 * v50 + 2);
          if (v52 >= 4)
          {
            v48.i32[3] = *(&v203 + 2 * v53 + 2);
            if (v52 != 4)
            {
              v57.i32[0] = *(&v203 + 2 * v47 + 2);
              if (v52 >= 6)
              {
                v57.i32[1] = *(&v203 + 2 * v54 + 2);
                if (v52 != 6)
                {
                  v57.i32[2] = *(&v203 + 2 * v55 + 2);
                }
              }
            }
          }
        }
      }

      v58 = vuzp1q_s16(v48, v57);
      v59 = vuzp2q_s16(v48, v57);
      v210.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v58.i8, vsub_s16(0x20002000200020, *v51.i8)), *v59.i8, *v51.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v58, v58, 8uLL), vsub_s16(0x20002000200020, v56)), v59, v51), 5uLL);
      v60 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
      v210.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v13.i8, v60), *v14.i8, a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v16, v60), v14, a9.n128_u64[0], 0), 5uLL);
      a9 = xmmword_277C3CA58[v52];
      v43 = vqtbl2q_s8(v210, a9);
    }
  }

  else
  {
    v41 = &a3->i8[2 * ((512 - a12) >> 6)];
    v42 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
    v43 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v41, v42), *(v41 + 2), a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v41, *v41, 8uLL), v42), *(v41 + 2), a9.n128_u64[0], 0), 5uLL);
  }

  *(result + 16) = v43;
  v64 = (result + 2 * a2);
  v65 = (2 * a12 - 1) >> 6;
  a9.n128_u32[0] = ((-2 * a12) >> 1) & 0x1F;
  if (v65 < 1)
  {
    v82 = &a3->i8[2 * ((-2 * a12) >> 6)];
    v83 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
    v81 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v82, v83), *(v82 + 2), a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v82, *v82, 8uLL), v83), *(v82 + 2), a9.n128_u64[0], 0), 5uLL);
  }

  else
  {
    v66 = vaddq_s16(vdupq_n_s16(64 - a13), v15);
    v67 = vshrq_n_u16(v66, 1uLL);
    v68.i64[0] = 0x1F001F001F001FLL;
    v68.i64[1] = 0x1F001F001F001FLL;
    v69 = vshrq_n_s16(v66, 6uLL);
    v70 = v69.i64[1];
    result = v69.i64[0];
    v71 = (v69.i64[0] >> 16) >> 16;
    v72 = vandq_s8(v67, v68);
    v73 = result >> 48;
    v74 = v70 >> 16;
    v75 = (v70 >> 16) >> 16;
    v76 = vextq_s8(v72, v72, 8uLL).u64[0];
    if (v65 >= 8)
    {
      v84 = 2 * result;
      result = &v203 + 2 * (result >> 16) + 2;
      v85.i32[0] = *(&v203 + v84 + 2);
      v85.i32[1] = *result;
      v85.i32[2] = *(&v203 + 2 * v71 + 2);
      v85.i32[3] = *(&v203 + 2 * v73 + 2);
      v86.i32[0] = *(&v203 + 2 * v70 + 2);
      v86.i32[1] = *(&v203 + 2 * v74 + 2);
      v86.i32[2] = *(&v203 + 2 * v75 + 2);
      v86.i32[3] = *(&v203 + 2 * (v70 >> 48) + 2);
      v87 = vuzp1q_s16(v85, v86);
      a9 = vuzp2q_s16(v85, v86);
      v81 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v87.i8, vsub_s16(0x20002000200020, *v72.i8)), a9.n128_u64[0], *v72.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v87, v87, 8uLL), vsub_s16(0x20002000200020, v76)), a9, v72), 5uLL);
    }

    else
    {
      v68.i32[0] = *(&v203 + 2 * result + 2);
      v77 = 0uLL;
      if (v65 != 1)
      {
        result = &v203 + 2 * (result >> 16) + 2;
        v68.i32[1] = *result;
        if (v65 != 2)
        {
          v68.i32[2] = *(&v203 + 2 * v71 + 2);
          if (v65 >= 4)
          {
            v68.i32[3] = *(&v203 + 2 * v73 + 2);
            if (v65 != 4)
            {
              v77.i32[0] = *(&v203 + 2 * v70 + 2);
              if (v65 >= 6)
              {
                v77.i32[1] = *(&v203 + 2 * v74 + 2);
                if (v65 != 6)
                {
                  v77.i32[2] = *(&v203 + 2 * v75 + 2);
                }
              }
            }
          }
        }
      }

      v78 = vuzp1q_s16(v68, v77);
      v79 = vuzp2q_s16(v68, v77);
      v211.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v78.i8, vsub_s16(0x20002000200020, *v72.i8)), *v79.i8, *v72.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v78, v78, 8uLL), vsub_s16(0x20002000200020, v76)), v79, v72), 5uLL);
      v80 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
      v211.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v13.i8, v80), *v14.i8, a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v16, v80), v14, a9.n128_u64[0], 0), 5uLL);
      a9 = xmmword_277C3CA58[v65];
      v81 = vqtbl2q_s8(v211, a9);
    }
  }

  *v64 = v81;
  v88 = 512 - 2 * a12;
  a9.n128_u32[0] = (v88 >> 1) & 0x1F;
  if (v65 >= 9)
  {
    v92 = vaddq_s16(vdupq_n_s16(v40 + 64), v15);
    v93 = vshrq_n_u16(v92, 1uLL);
    v94 = vshrq_n_s16(v92, 6uLL);
    v95 = v94.i64[1];
    v96.i64[0] = 0x1F001F001F001FLL;
    v96.i64[1] = 0x1F001F001F001FLL;
    v97 = v94.i64[0];
    v98 = (v94.i64[0] >> 16) >> 16;
    v99 = vandq_s8(v93, v96);
    v100 = v65 - 8;
    v101 = v97 >> 48;
    v102 = v95 >> 16;
    v103 = (v95 >> 16) >> 16;
    v104 = vextq_s8(v99, v99, 8uLL).u64[0];
    if (v100 >= 8)
    {
      result = 2 * v97;
      v109.i32[0] = *(&v203 + result + 2);
      v109.i32[1] = *(&v203 + 2 * (v97 >> 16) + 2);
      v109.i32[2] = *(&v203 + 2 * v98 + 2);
      v109.i32[3] = *(&v203 + 2 * v101 + 2);
      v110.i32[0] = *(&v203 + 2 * v95 + 2);
      v110.i32[1] = *(&v203 + 2 * v102 + 2);
      v110.i32[2] = *(&v203 + 2 * v103 + 2);
      v110.i32[3] = *(&v203 + 2 * (v95 >> 48) + 2);
      v111 = vuzp1q_s16(v109, v110);
      a9 = vuzp2q_s16(v109, v110);
      v91 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v111.i8, vsub_s16(0x20002000200020, *v99.i8)), a9.n128_u64[0], *v99.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v111, v111, 8uLL), vsub_s16(0x20002000200020, v104)), a9, v99), 5uLL);
    }

    else
    {
      result = &v203 + 2 * v97 + 2;
      v96.i32[0] = *result;
      v105 = 0uLL;
      if (v100 != 1)
      {
        v96.i32[1] = *(&v203 + 2 * (v97 >> 16) + 2);
        if (v100 != 2)
        {
          v96.i32[2] = *(&v203 + 2 * v98 + 2);
          if (v100 >= 4)
          {
            v96.i32[3] = *(&v203 + 2 * v101 + 2);
            if (v100 != 4)
            {
              v105.i32[0] = *(&v203 + 2 * v95 + 2);
              if (v100 >= 6)
              {
                v105.i32[1] = *(&v203 + 2 * v102 + 2);
                if (v100 != 6)
                {
                  v105.i32[2] = *(&v203 + 2 * v103 + 2);
                }
              }
            }
          }
        }
      }

      v106 = vuzp1q_s16(v96, v105);
      v107 = vuzp2q_s16(v96, v105);
      v212.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v106.i8, vsub_s16(0x20002000200020, *v99.i8)), *v107.i8, *v99.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v106, v106, 8uLL), vsub_s16(0x20002000200020, v104)), v107, v99), 5uLL);
      v108 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
      v212.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v13.i8, v108), *v14.i8, a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v16, v108), v14, a9.n128_u64[0], 0), 5uLL);
      a9 = xmmword_277C3CA58[v100];
      v91 = vqtbl2q_s8(v212, a9);
    }
  }

  else
  {
    v89 = &a3->i8[2 * (v88 >> 6)];
    v90 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
    v91 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v89, v90), *(v89 + 2), a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v89, *v89, 8uLL), v90), *(v89 + 2), a9.n128_u64[0], 0), 5uLL);
  }

  v64[1] = v91;
  v112 = (v64 + 2 * a2);
  v113 = (3 * a12 - 1) >> 6;
  a9.n128_u32[0] = ((-3 * a12) >> 1) & 0x1F;
  if (v113 < 1)
  {
    v130 = &a3->i8[2 * ((-3 * a12) >> 6)];
    v131 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
    v129 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v130, v131), *(v130 + 2), a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v130, *v130, 8uLL), v131), *(v130 + 2), a9.n128_u64[0], 0), 5uLL);
  }

  else
  {
    v114 = vaddq_s16(vdupq_n_s16(128 - a13), v15);
    v115 = vshrq_n_u16(v114, 1uLL);
    v116.i64[0] = 0x1F001F001F001FLL;
    v116.i64[1] = 0x1F001F001F001FLL;
    v117 = vshrq_n_s16(v114, 6uLL);
    v118 = v117.i64[1];
    result = v117.i64[0];
    v119 = (v117.i64[0] >> 16) >> 16;
    v120 = vandq_s8(v115, v116);
    v121 = result >> 48;
    v122 = v118 >> 16;
    v123 = (v118 >> 16) >> 16;
    v124 = vextq_s8(v120, v120, 8uLL).u64[0];
    if (v113 >= 8)
    {
      v132 = 2 * result;
      result = &v203 + 2 * (result >> 16) + 2;
      v133.i32[0] = *(&v203 + v132 + 2);
      v133.i32[1] = *result;
      v133.i32[2] = *(&v203 + 2 * v119 + 2);
      v133.i32[3] = *(&v203 + 2 * v121 + 2);
      v134.i32[0] = *(&v203 + 2 * v118 + 2);
      v134.i32[1] = *(&v203 + 2 * v122 + 2);
      v134.i32[2] = *(&v203 + 2 * v123 + 2);
      v134.i32[3] = *(&v203 + 2 * (v118 >> 48) + 2);
      v135 = vuzp1q_s16(v133, v134);
      a9 = vuzp2q_s16(v133, v134);
      v129 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v135.i8, vsub_s16(0x20002000200020, *v120.i8)), a9.n128_u64[0], *v120.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v135, v135, 8uLL), vsub_s16(0x20002000200020, v124)), a9, v120), 5uLL);
    }

    else
    {
      v116.i32[0] = *(&v203 + 2 * result + 2);
      v125 = 0uLL;
      if (v113 != 1)
      {
        result = &v203 + 2 * (result >> 16) + 2;
        v116.i32[1] = *result;
        if (v113 != 2)
        {
          v116.i32[2] = *(&v203 + 2 * v119 + 2);
          if (v113 >= 4)
          {
            v116.i32[3] = *(&v203 + 2 * v121 + 2);
            if (v113 != 4)
            {
              v125.i32[0] = *(&v203 + 2 * v118 + 2);
              if (v113 >= 6)
              {
                v125.i32[1] = *(&v203 + 2 * v122 + 2);
                if (v113 != 6)
                {
                  v125.i32[2] = *(&v203 + 2 * v123 + 2);
                }
              }
            }
          }
        }
      }

      v126 = vuzp1q_s16(v116, v125);
      v127 = vuzp2q_s16(v116, v125);
      v213.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v126.i8, vsub_s16(0x20002000200020, *v120.i8)), *v127.i8, *v120.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v126, v126, 8uLL), vsub_s16(0x20002000200020, v124)), v127, v120), 5uLL);
      v128 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
      v213.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v13.i8, v128), *v14.i8, a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v16, v128), v14, a9.n128_u64[0], 0), 5uLL);
      a9 = xmmword_277C3CA58[v113];
      v129 = vqtbl2q_s8(v213, a9);
    }
  }

  *v112 = v129;
  v136 = 512 - 3 * a12;
  a9.n128_u32[0] = (v136 >> 1) & 0x1F;
  if (v113 >= 9)
  {
    v140 = vaddq_s16(vdupq_n_s16(v40 + 128), v15);
    v141 = vshrq_n_s16(v140, 6uLL);
    v142 = v141.i64[1];
    v143 = v141.i64[0];
    v144 = (v141.i64[0] >> 16) >> 16;
    v145.i64[0] = 0x1F001F001F001FLL;
    v145.i64[1] = 0x1F001F001F001FLL;
    v146 = vandq_s8(vshrq_n_u16(v140, 1uLL), v145);
    v147 = v113 - 8;
    v148 = v143 >> 48;
    v149 = v142 >> 16;
    v150 = (v142 >> 16) >> 16;
    if (v147 >= 8)
    {
      result = 2 * v143;
      v155.i32[0] = *(&v203 + result + 2);
      v155.i32[1] = *(&v203 + 2 * (v143 >> 16) + 2);
      v155.i32[2] = *(&v203 + 2 * v144 + 2);
      v155.i32[3] = *(&v203 + 2 * v148 + 2);
      v156.i32[0] = *(&v203 + 2 * v142 + 2);
      v156.i32[1] = *(&v203 + 2 * v149 + 2);
      v156.i32[2] = *(&v203 + 2 * v150 + 2);
      v156.i32[3] = *(&v203 + 2 * (v142 >> 48) + 2);
      v157 = vuzp1q_s16(v155, v156);
      a9 = vuzp2q_s16(v155, v156);
      v139 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v157.i8, vsub_s16(0x20002000200020, *v146.i8)), a9.n128_u64[0], *v146.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v157, v157, 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v146, v146, 8uLL))), a9, v146), 5uLL);
    }

    else
    {
      result = &v203 + 2 * v143 + 2;
      v145.i32[0] = *result;
      v151 = 0uLL;
      if (v147 != 1)
      {
        v145.i32[1] = *(&v203 + 2 * (v143 >> 16) + 2);
        if (v147 != 2)
        {
          v145.i32[2] = *(&v203 + 2 * v144 + 2);
          if (v147 >= 4)
          {
            v145.i32[3] = *(&v203 + 2 * v148 + 2);
            if (v147 != 4)
            {
              v151.i32[0] = *(&v203 + 2 * v142 + 2);
              if (v147 >= 6)
              {
                v151.i32[1] = *(&v203 + 2 * v149 + 2);
                if (v147 != 6)
                {
                  v151.i32[2] = *(&v203 + 2 * v150 + 2);
                }
              }
            }
          }
        }
      }

      v152 = vuzp1q_s16(v145, v151);
      v153 = vuzp2q_s16(v145, v151);
      v207.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v152.i8, vsub_s16(0x20002000200020, *v146.i8)), *v153.i8, *v146.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v152, v152, 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v146, v146, 8uLL))), v153, v146), 5uLL);
      v154 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
      v207.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v13.i8, v154), *v14.i8, a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v16, v154), v14, a9.n128_u64[0], 0), 5uLL);
      a9 = xmmword_277C3CA58[v147];
      v139 = vqtbl2q_s8(v207, a9);
    }
  }

  else
  {
    v137 = &a3->i8[2 * (v136 >> 6)];
    v138 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
    v139 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v137, v138), *(v137 + 2), a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v137, *v137, 8uLL), v138), *(v137 + 2), a9.n128_u64[0], 0), 5uLL);
  }

  v112[1] = v139;
  v158 = (v112 + 2 * a2);
  v159 = (4 * a12 - 1) >> 6;
  a9.n128_u32[0] = ((-4 * a12) >> 1) & 0x1E;
  if (v159 < 1)
  {
    v174 = &a3->i8[2 * ((-4 * a12) >> 6)];
    v175 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
    v173 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v174, v175), *(v174 + 2), a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v174, *v174, 8uLL), v175), *(v174 + 2), a9.n128_u64[0], 0), 5uLL);
  }

  else
  {
    v160 = vaddq_s16(vdupq_n_s16(192 - a13), v15);
    v161 = vshrq_n_u16(v160, 1uLL);
    v162 = vshrq_n_s16(v160, 6uLL);
    v163 = v162.i64[1];
    result = v162.i64[0];
    v164 = (v162.i64[0] >> 16) >> 16;
    v162.i64[0] = 0x1F001F001F001FLL;
    v162.i64[1] = 0x1F001F001F001FLL;
    v165 = vandq_s8(v161, v162);
    v166 = result >> 48;
    v167 = v163 >> 16;
    v168 = (v163 >> 16) >> 16;
    if (v159 >= 8)
    {
      v176 = 2 * result;
      result = &v203 + 2 * (result >> 16) + 2;
      v177.i32[0] = *(&v203 + v176 + 2);
      v177.i32[1] = *result;
      v177.i32[2] = *(&v203 + 2 * v164 + 2);
      v177.i32[3] = *(&v203 + 2 * v166 + 2);
      v178.i32[0] = *(&v203 + 2 * v163 + 2);
      v178.i32[1] = *(&v203 + 2 * v167 + 2);
      v178.i32[2] = *(&v203 + 2 * v168 + 2);
      v178.i32[3] = *(&v203 + 2 * (v163 >> 48) + 2);
      v179 = vuzp1q_s16(v177, v178);
      a9 = vuzp2q_s16(v177, v178);
      v173 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v179.i8, vsub_s16(0x20002000200020, *v165.i8)), a9.n128_u64[0], *v165.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v179, v179, 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v165, v165, 8uLL))), a9, v165), 5uLL);
    }

    else
    {
      v161.i32[0] = *(&v203 + 2 * result + 2);
      v169 = 0uLL;
      if (v159 != 1)
      {
        result = &v203 + 2 * (result >> 16) + 2;
        v161.i32[1] = *result;
        if (v159 != 2)
        {
          v161.i32[2] = *(&v203 + 2 * v164 + 2);
          if (v159 >= 4)
          {
            v161.i32[3] = *(&v203 + 2 * v166 + 2);
            if (v159 != 4)
            {
              v169.i32[0] = *(&v203 + 2 * v163 + 2);
              if (v159 >= 6)
              {
                v169.i32[1] = *(&v203 + 2 * v167 + 2);
                if (v159 != 6)
                {
                  v169.i32[2] = *(&v203 + 2 * v168 + 2);
                }
              }
            }
          }
        }
      }

      v170 = vuzp1q_s16(v161, v169);
      v171 = vuzp2q_s16(v161, v169);
      v208.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v170.i8, vsub_s16(0x20002000200020, *v165.i8)), *v171.i8, *v165.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v170, v170, 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v165, v165, 8uLL))), v171, v165), 5uLL);
      v172 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
      v208.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v13.i8, v172), *v14.i8, a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v16, v172), v14, a9.n128_u64[0], 0), 5uLL);
      a9 = xmmword_277C3CA58[v159];
      v173 = vqtbl2q_s8(v208, a9);
    }
  }

  *v158 = v173;
  v180 = 512 - 4 * a12;
  a9.n128_u32[0] = (v180 >> 1) & 0x1E;
  if (v159 >= 9)
  {
    v184 = vaddq_s16(vdupq_n_s16(v40 + 192), v15);
    v185 = vshrq_n_s16(v184, 6uLL);
    v186 = v185.i64[1];
    v187 = v185.i64[0];
    v188 = (v185.i64[0] >> 16) >> 16;
    v189.i64[0] = 0x1F001F001F001FLL;
    v189.i64[1] = 0x1F001F001F001FLL;
    v190 = vandq_s8(vshrq_n_u16(v184, 1uLL), v189);
    v191 = v159 - 8;
    v192 = v187 >> 48;
    v193 = v186 >> 16;
    v194 = (v186 >> 16) >> 16;
    if (v191 >= 8)
    {
      v199.i32[0] = *(&v203 + 2 * v187 + 2);
      v199.i32[1] = *(&v203 + 2 * (v187 >> 16) + 2);
      v199.i32[2] = *(&v203 + 2 * v188 + 2);
      v199.i32[3] = *(&v203 + 2 * v192 + 2);
      v200.i32[0] = *(&v203 + 2 * v186 + 2);
      v200.i32[1] = *(&v203 + 2 * v193 + 2);
      v200.i32[2] = *(&v203 + 2 * v194 + 2);
      v200.i32[3] = *(&v203 + 2 * (v186 >> 48) + 2);
      v201 = vuzp1q_s16(v199, v200);
      v202 = vuzp2q_s16(v199, v200);
      v183 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v201.i8, vsub_s16(0x20002000200020, *v190.i8)), *v202.i8, *v190.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v201, v201, 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v190, v190, 8uLL))), v202, v190), 5uLL);
    }

    else
    {
      v189.i32[0] = *(&v203 + 2 * v187 + 2);
      v195 = 0uLL;
      if (v191 != 1)
      {
        v189.i32[1] = *(&v203 + 2 * (v187 >> 16) + 2);
        if (v191 != 2)
        {
          v189.i32[2] = *(&v203 + 2 * v188 + 2);
          if (v191 >= 4)
          {
            v189.i32[3] = *(&v203 + 2 * v192 + 2);
            if (v191 != 4)
            {
              v195.i32[0] = *(&v203 + 2 * v186 + 2);
              if (v191 >= 6)
              {
                v195.i32[1] = *(&v203 + 2 * v193 + 2);
                if (v191 != 6)
                {
                  v195.i32[2] = *(&v203 + 2 * v194 + 2);
                }
              }
            }
          }
        }
      }

      v196 = vuzp1q_s16(v189, v195);
      v197 = vuzp2q_s16(v189, v195);
      v206.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v196.i8, vsub_s16(0x20002000200020, *v190.i8)), *v197.i8, *v190.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v196, v196, 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v190, v190, 8uLL))), v197, v190), 5uLL);
      v198 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
      v206.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v13.i8, v198), *v14.i8, a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v16, v198), v14, a9.n128_u64[0], 0), 5uLL);
      v183 = vqtbl2q_s8(v206, xmmword_277C3CA58[v191]);
    }
  }

  else
  {
    v181 = &a3->i8[2 * (v180 >> 6)];
    v182 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a9.n128_u64[0], 0));
    v183 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v181, v182), *(v181 + 2), a9.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v181, *v181, 8uLL), v182), *(v181 + 2), a9.n128_u64[0], 0), 5uLL);
  }

  v158[1] = v183;
  return result;
}

int16x8_t *sub_277B97670(int16x8_t *result, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v51 = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 14);
  v17 = *(a4 + 46);
  v49[2] = *(a4 + 30);
  v49[3] = v17;
  v50 = *(a4 + 62);
  v49[0] = *(a4 - 2);
  v49[1] = v16;
  v18 = *(&a3[-1] + 14);
  v19 = *a3;
  v20 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v21 = vextq_s8(v18, v18, 8uLL).u64[0];
  v22 = -a15;
  v23 = a14 - 1;
  v24 = -a14;
  v25 = 2 * a2;
  v26 = 32;
  v27.i64[0] = 0x1F001F001F001FLL;
  v27.i64[1] = 0x1F001F001F001FLL;
  do
  {
    a11.n128_u32[0] = (v24 >> 1) & 0x1F;
    v28 = v23 >> 6;
    if (v23 >> 6 <= 0)
    {
      v44 = &a3->i8[2 * (v24 >> 6)];
      v45 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v44, v45), *(v44 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v44, *v44, 8uLL), v45), *(v44 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    else
    {
      v29 = vaddq_s16(vdupq_n_s16(v22), v20);
      v30 = vshrq_n_u16(v29, 1uLL);
      v31 = vshrq_n_s16(v29, 6uLL);
      v32 = v31.i64[1];
      v33 = v31.i64[0];
      v34 = (v31.i64[0] >> 16) >> 16;
      v35 = vandq_s8(v30, v27);
      v36 = v33 >> 48;
      v37 = v32 >> 16;
      v38 = (v32 >> 16) >> 16;
      v39 = vextq_s8(v35, v35, 8uLL).u64[0];
      if (v28 > 7)
      {
        v46.i32[0] = *(v49 + 2 * v33 + 2);
        v46.i32[1] = *(v49 + 2 * (v33 >> 16) + 2);
        v46.i32[2] = *(v49 + 2 * v34 + 2);
        v46.i32[3] = *(v49 + 2 * v36 + 2);
        v47.i32[0] = *(v49 + 2 * v32 + 2);
        v47.i32[1] = *(v49 + 2 * v37 + 2);
        v47.i32[2] = *(v49 + 2 * v38 + 2);
        v47.i32[3] = *(v49 + 2 * (v32 >> 48) + 2);
        v48 = vuzp1q_s16(v46, v47);
        a11 = vuzp2q_s16(v46, v47);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v48.i8, vsub_s16(0x20002000200020, *v35.i8)), a11.n128_u64[0], *v35.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v48, v48, 8uLL), vsub_s16(0x20002000200020, v39)), a11, v35), 5uLL);
      }

      else
      {
        v15.i32[0] = *(v49 + 2 * v33 + 2);
        v40 = 0uLL;
        if (v28 != 1)
        {
          v15.i32[1] = *(v49 + 2 * (v33 >> 16) + 2);
          if (v28 != 2)
          {
            v15.i32[2] = *(v49 + 2 * v34 + 2);
            if (v28 >= 4)
            {
              v15.i32[3] = *(v49 + 2 * v36 + 2);
              if (v28 != 4)
              {
                v40.i32[0] = *(v49 + 2 * v32 + 2);
                if (v28 >= 6)
                {
                  v40.i32[1] = *(v49 + 2 * v37 + 2);
                  if (v28 != 6)
                  {
                    v40.i32[2] = *(v49 + 2 * v38 + 2);
                  }
                }
              }
            }
          }
        }

        v41 = vuzp1q_s16(v15, v40);
        v42 = vuzp2q_s16(v15, v40);
        v52.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v41.i8, vsub_s16(0x20002000200020, *v35.i8)), *v42.i8, *v35.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v41, v41, 8uLL), vsub_s16(0x20002000200020, v39)), v42, v35), 5uLL);
        v43 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v52.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v18.i8, v43), *v19.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v21, v43), v19, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v28];
        v15 = vqtbl2q_s8(v52, a11);
      }
    }

    v22 += 64;
    *result = v15;
    v23 += a14;
    v24 -= a14;
    result = (result + v25);
    --v26;
  }

  while (v26);
  return result;
}

int16x8_t *sub_277B97904(int16x8_t *result, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v50 = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 14);
  v48[0] = *(a4 - 2);
  v48[1] = v16;
  v49 = *(a4 + 30);
  v17 = *(&a3[-1] + 14);
  v18 = *a3;
  v19 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v20 = vextq_s8(v17, v17, 8uLL).u64[0];
  v21 = -a15;
  v22 = a14 - 1;
  v23 = -a14;
  v24 = 2 * a2;
  v25 = 16;
  v26.i64[0] = 0x1F001F001F001FLL;
  v26.i64[1] = 0x1F001F001F001FLL;
  do
  {
    a11.n128_u32[0] = (v23 >> 1) & 0x1F;
    v27 = v22 >> 6;
    if (v22 >> 6 <= 0)
    {
      v43 = &a3->i8[2 * (v23 >> 6)];
      v44 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v43, v44), *(v43 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v43, *v43, 8uLL), v44), *(v43 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    else
    {
      v28 = vaddq_s16(vdupq_n_s16(v21), v19);
      v29 = vshrq_n_u16(v28, 1uLL);
      v30 = vshrq_n_s16(v28, 6uLL);
      v31 = v30.i64[1];
      v32 = v30.i64[0];
      v33 = (v30.i64[0] >> 16) >> 16;
      v34 = vandq_s8(v29, v26);
      v35 = v32 >> 48;
      v36 = v31 >> 16;
      v37 = (v31 >> 16) >> 16;
      v38 = vextq_s8(v34, v34, 8uLL).u64[0];
      if (v27 > 7)
      {
        v45.i32[0] = *(v48 + 2 * v32 + 2);
        v45.i32[1] = *(v48 + 2 * (v32 >> 16) + 2);
        v45.i32[2] = *(v48 + 2 * v33 + 2);
        v45.i32[3] = *(v48 + 2 * v35 + 2);
        v46.i32[0] = *(v48 + 2 * v31 + 2);
        v46.i32[1] = *(v48 + 2 * v36 + 2);
        v46.i32[2] = *(v48 + 2 * v37 + 2);
        v46.i32[3] = *(v48 + 2 * (v31 >> 48) + 2);
        v47 = vuzp1q_s16(v45, v46);
        a11 = vuzp2q_s16(v45, v46);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v47.i8, vsub_s16(0x20002000200020, *v34.i8)), a11.n128_u64[0], *v34.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v47, v47, 8uLL), vsub_s16(0x20002000200020, v38)), a11, v34), 5uLL);
      }

      else
      {
        v15.i32[0] = *(v48 + 2 * v32 + 2);
        v39 = 0uLL;
        if (v27 != 1)
        {
          v15.i32[1] = *(v48 + 2 * (v32 >> 16) + 2);
          if (v27 != 2)
          {
            v15.i32[2] = *(v48 + 2 * v33 + 2);
            if (v27 >= 4)
            {
              v15.i32[3] = *(v48 + 2 * v35 + 2);
              if (v27 != 4)
              {
                v39.i32[0] = *(v48 + 2 * v31 + 2);
                if (v27 >= 6)
                {
                  v39.i32[1] = *(v48 + 2 * v36 + 2);
                  if (v27 != 6)
                  {
                    v39.i32[2] = *(v48 + 2 * v37 + 2);
                  }
                }
              }
            }
          }
        }

        v40 = vuzp1q_s16(v15, v39);
        v41 = vuzp2q_s16(v15, v39);
        v51.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v40.i8, vsub_s16(0x20002000200020, *v34.i8)), *v41.i8, *v34.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v40, v40, 8uLL), vsub_s16(0x20002000200020, v38)), v41, v34), 5uLL);
        v42 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v51.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v17.i8, v42), *v18.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v20, v42), v18, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v27];
        v15 = vqtbl2q_s8(v51, a11);
      }
    }

    v21 += 64;
    *result = v15;
    v22 += a14;
    v23 -= a14;
    result = (result + v24);
    --v25;
  }

  while (v25);
  return result;
}

int16x8_t *sub_277B97B8C(int16x8_t *result, uint64_t a2, int16x8_t *a3, __int128 *a4, int a5, int a6, unsigned int a7, unsigned int a8)
{
  if (a6)
  {
    v8 = *(a4 - 4);
    v9 = *(a4 + 12);
    v10 = *(a4 - 2);
    v11 = *(a4 + 14);
    v12 = 2;
  }

  else
  {
    v8 = *(a4 - 2);
    v10 = *a4;
    v11 = 0uLL;
    v12 = 1;
    v9 = 0u;
  }

  v13 = 0;
  v14 = vdupq_n_s16(a6 - 6);
  v15 = vmulq_s16(vdupq_n_s16(a8), xmmword_277BB7B10);
  v16.i64[0] = 0x1F001F001F001FLL;
  v16.i64[1] = 0x1F001F001F001FLL;
  v17 = vandq_s8(vshrq_n_u16(vmulq_s16(v15, vdupq_n_s16(1 << a6)), 1uLL), v16);
  v18 = vdupq_n_s16(v12);
  v19 = vsub_s16(0x20002000200020, *v17.i8);
  v20 = vsub_s16(0x20002000200020, *&vextq_s8(v17, v17, 8uLL));
  v21 = -a7;
  v22 = a7;
  do
  {
    v23 = (v22 - 1) >> 6;
    v24 = vsubq_s16(xmmword_277BB7B80, vdupq_n_s16(v22));
    v25 = v21 >> (6 - a5);
    if (v23 <= 0)
    {
      v31 = &a3->i8[2 * v25];
      if (a5)
      {
        v39 = vld2q_s16(v31);
      }

      else
      {
        v39.val[0] = *v31;
        v39.val[1] = *(v31 + 2);
        v24 = vshrq_n_u16(v24, 1uLL);
      }

      v33 = vandq_s8(v24, v16);
      *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v39.val[0].i8, vsub_s16(0x20002000200020, *v33.i8)), *v39.val[1].i8, *v33.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v39.val[0], v39.val[0], 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v33, v33, 8uLL))), v39.val[1], v33), 5uLL);
    }

    else
    {
      v26 = vaddq_s16(vshlq_s16(vaddq_s16(vdupq_n_s16(v13 << 6), v15), v14), v18);
      v27 = vaddq_s8(v26, v26);
      v28 = *&vtrn1q_s8(v27, v27) | __PAIR128__(0x100010001000100, 0x100010001000100);
      v29 = vqtbl2q_s8(*&v8, v28);
      if (v23 > 7)
      {
        v32 = vqtbl2q_s8(*&v10, v28);
        *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v29.i8, v19), *v32.i8, *v17.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v29, v29, 8uLL), v20), v32, v17), 5uLL);
      }

      else
      {
        if (a5)
        {
          v30 = (a3->i16 + ((2 * v25) | 0xFFFFFFFFFFFFFFFCLL));
          v38 = vld2q_s16(v30);
        }

        else
        {
          v38.val[0] = *(a3 - 2);
          v38.val[1] = *a3;
          v24 = vshrq_n_u16(v24, 1uLL);
        }

        v34 = xmmword_277C3C9C8[v23];
        v35 = vandq_s8(v34, v29);
        v36 = vandq_s8(v34, vqtbl2q_s8(*&v10, v28));
        v40.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v35.i8, v19), *v36.i8, *v17.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v35, v35, 8uLL), v20), v36, v17), 5uLL);
        v37 = vandq_s8(v24, v16);
        v40.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v38.val[0].i8, vsub_s16(0x20002000200020, *v37.i8)), *v38.val[1].i8, *v37.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v38.val[0], v38.val[0], 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v37, v37, 8uLL))), v38.val[1], v37), 5uLL);
        *result = vqtbl2q_s8(v40, xmmword_277C3CA58[v23]);
      }
    }

    ++v13;
    result = (result + 2 * a2);
    v21 -= a7;
    v22 += a7;
  }

  while (v13 != 8);
  return result;
}

int16x8_t *sub_277B97D98(int16x8_t *result, uint64_t a2, int16x8_t *a3, unint64_t *a4, int a5, int a6, unsigned int a7, unsigned int a8, int8x16_t a9, int8x16_t a10)
{
  if (a6)
  {
    a9 = *(a4 - 4);
    a10 = *(a4 - 2);
    v10 = 2;
  }

  else
  {
    a9.i64[0] = *(a4 - 2);
    a10.i64[0] = *a4;
    v10 = 1;
  }

  v11 = 0;
  v12 = vdupq_n_s16(a6 - 6);
  v13 = vmulq_s16(vdupq_n_s16(a8), xmmword_277BB7B10);
  v14.i64[0] = 0x1F001F001F001FLL;
  v14.i64[1] = 0x1F001F001F001FLL;
  v15 = vandq_s8(vshrq_n_u16(vmulq_s16(v13, vdupq_n_s16(1 << a6)), 1uLL), v14);
  v16 = vdupq_n_s16(v10);
  v17 = vsub_s16(0x20002000200020, *v15.i8);
  v18 = vsub_s16(0x20002000200020, *&vextq_s8(v15, v15, 8uLL));
  v19 = -a7;
  v20 = a7;
  do
  {
    v21 = (v20 - 1) >> 6;
    v22 = vsubq_s16(xmmword_277BB7B80, vdupq_n_s16(v20));
    v23 = v19 >> (6 - a5);
    if (v21 <= 0)
    {
      v30 = &a3->i8[2 * v23];
      if (a5)
      {
        v38 = vld2q_s16(v30);
      }

      else
      {
        v38.val[0] = *v30;
        v38.val[1] = *(v30 + 2);
        v22 = vshrq_n_u16(v22, 1uLL);
      }

      v32 = vandq_s8(v22, v14);
      *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v38.val[0].i8, vsub_s16(0x20002000200020, *v32.i8)), *v38.val[1].i8, *v32.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v38.val[0], v38.val[0], 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v32, v32, 8uLL))), v38.val[1], v32), 5uLL);
    }

    else
    {
      v24 = vaddq_s16(vshlq_s16(vaddq_s16(vdupq_n_s16(v11 << 6), v13), v12), v16);
      v25 = vaddq_s8(v24, v24);
      v26 = *&vtrn1q_s8(v25, v25) | __PAIR128__(0x100010001000100, 0x100010001000100);
      v27 = vqtbl1q_s8(a9, v26);
      v28 = vqtbl1q_s8(a10, v26);
      if (v21 > 7)
      {
        v31 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v27.i8, v17), *v28.i8, *v15.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v27, v27, 8uLL), v18), v28, v15), 5uLL);
      }

      else
      {
        if (a5)
        {
          v29 = (a3->i16 + ((2 * v23) | 0xFFFFFFFFFFFFFFFCLL));
          v37 = vld2q_s16(v29);
        }

        else
        {
          v37.val[0] = *(a3 - 2);
          v37.val[1] = *a3;
          v22 = vshrq_n_u16(v22, 1uLL);
        }

        v33 = xmmword_277C3C9C8[v21];
        v34 = vandq_s8(v33, v27);
        v35 = vandq_s8(v33, v28);
        v39.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v34.i8, v17), *v35.i8, *v15.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v34, v34, 8uLL), v18), v35, v15), 5uLL);
        v36 = vandq_s8(v22, v14);
        v39.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v37.val[0].i8, vsub_s16(0x20002000200020, *v36.i8)), *v37.val[1].i8, *v36.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v37.val[0], v37.val[0], 8uLL), vsub_s16(0x20002000200020, *&vextq_s8(v36, v36, 8uLL))), v37.val[1], v36), 5uLL);
        v31 = vqtbl2q_s8(v39, xmmword_277C3CA58[v21]);
      }

      *result = v31;
    }

    ++v11;
    result = (result + 2 * a2);
    v19 -= a7;
    v20 += a7;
  }

  while (v11 != 4);
  return result;
}

int16x4_t *sub_277B97F8C(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, uint16x4_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v39 = *MEMORY[0x277D85DE8];
  v17 = *(a4 + 14);
  v37[0] = *(a4 - 2);
  v37[1] = v17;
  v38 = *(a4 + 30);
  v18 = *(a3 - 2);
  v19 = *a3;
  v20 = vmul_s16(vdup_n_s16(a15), 0xFFFDFFFEFFFF0000);
  v21 = -a15;
  v22 = a14 - 1;
  v23 = -a14;
  v24 = 16;
  do
  {
    v25 = vdup_n_s16((v23 >> 1) & 0x1F);
    a11.i32[0] = (v23 >> 1) & 0x1F;
    v26 = v22 >> 6;
    if (v22 >> 6 <= 0)
    {
      v32 = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*(a3 + 2 * (v23 >> 6)), vsub_s16(0x20002000200020, v25)), *(a3 + 2 * (v23 >> 6) + 2), a11, 0), 5uLL);
    }

    else
    {
      v27 = vadd_s16(vdup_n_s16(v21), v20);
      v28 = vand_s8(vshr_n_u16(v27, 1uLL), 0x1F001F001F001FLL);
      v29 = vshr_n_s16(v27, 6uLL);
      v30 = (v29 >> 16) >> 16;
      v31 = vsub_s16(0x20002000200020, v28);
      if (v26 > 3)
      {
        v33.i32[0] = *(v37 + 2 * v29 + 2);
        v33.i32[1] = *(v37 + 2 * (v29 >> 16) + 2);
        v34.i32[0] = *(v37 + 2 * v30 + 2);
        v34.i32[1] = *(v37 + 2 * (v29 >> 48) + 2);
        v15 = vuzp1_s16(v33, v34);
        a11 = vuzp2_s16(v33, v34);
        v32 = vrshrn_n_s32(vmlal_u16(vmull_u16(v15, v31), a11, v28), 5uLL);
      }

      else
      {
        v15.i32[0] = *(v37 + 2 * v29 + 2);
        if (v26 == 1 || (v15.i32[1] = *(v37 + 2 * (v29 >> 16) + 2), v26 == 2))
        {
          v16 = 0;
        }

        else
        {
          v16.i32[0] = *(v37 + 2 * v30 + 2);
        }

        v35 = vuzp1_s16(v15, v16);
        v15 = vuzp2_s16(v15, v16);
        v36 = vmlal_lane_u16(vmull_u16(v18, vsub_s16(0x20002000200020, v25)), v19, a11, 0);
        a11 = qword_277C3C9A0[v26];
        v32 = vqtbl1_s8(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v35, v31), v15, v28), 5uLL), v36, 5uLL), a11);
      }
    }

    v21 += 64;
    *result = v32;
    v22 += a14;
    v23 -= a14;
    result = (result + 2 * a2);
    --v24;
  }

  while (v24);
  return result;
}

int16x4_t *sub_277B98154(int16x4_t *result, uint64_t a2, int16x4_t *a3, __int128 *a4, int a5, int a6, unsigned int a7, unsigned int a8)
{
  if (a6)
  {
    v8 = *(a4 - 4);
    v9 = *(a4 + 12);
    v10 = *(a4 - 2);
    v11 = *(a4 + 14);
    v12 = 2;
  }

  else
  {
    v8 = *(a4 - 2);
    v10 = *a4;
    v11 = 0uLL;
    v12 = 1;
    v9 = 0u;
  }

  v13 = 0;
  v14 = vdup_n_s16(a6 - 6);
  v15 = vmul_s16(vdup_n_s16(a8), 0xFFFCFFFDFFFEFFFFLL);
  v16 = vdup_n_s16(v12);
  v17 = vand_s8(vshr_n_u16(vmul_s16(v15, vdup_n_s16(1 << a6)), 1uLL), 0x1F001F001F001FLL);
  v18 = vsub_s16(0x20002000200020, v17);
  v19 = -a7;
  v20 = a7;
  do
  {
    v21 = (v20 - 1) >> 6;
    v22 = vsub_s16(0xC0008000400000, vdup_n_s16(v20));
    v23 = v19 >> (6 - a5);
    if (v21 <= 0)
    {
      v29 = a3 + 2 * v23;
      if (a5)
      {
        v33 = vld2_s16(v29);
      }

      else
      {
        v33.val[0] = *v29;
        v33.val[1] = *(v29 + 2);
        v22 = vshr_n_u16(v22, 1uLL);
      }

      v31 = vand_s8(v22, 0x1F001F001F001FLL);
      v30 = vrshrn_n_s32(vmlal_u16(vmull_u16(v33.val[0], vsub_s16(0x20002000200020, v31)), v33.val[1], v31), 5uLL);
    }

    else
    {
      v24 = vadd_s16(vshl_s16(vadd_s16(vdup_n_s16(v13 << 6), v15), v14), v16);
      v25 = vadd_s8(v24, v24);
      v26 = *&vtrn1_s8(v25, v25) | 0x100010001000100;
      v27 = vqtbl2_s8(*&v8, v26);
      if (v21 > 3)
      {
        v30 = vrshrn_n_s32(vmlal_u16(vmull_u16(v27, v18), vqtbl2_s8(*&v10, v26), v17), 5uLL);
      }

      else
      {
        if (a5)
        {
          v28 = (a3 + ((2 * v23) | 0xFFFFFFFFFFFFFFFCLL));
          v34 = vld2_s16(v28);
        }

        else
        {
          v34.val[0] = *(a3 - 2);
          v34.val[1] = *a3;
          v22 = vshr_n_u16(v22, 1uLL);
        }

        v32 = vand_s8(v22, 0x1F001F001F001FLL);
        v30 = vqtbl1_s8(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(vand_s8(qword_277C3C978[v21], v27), v18), vand_s8(qword_277C3C978[v21], vqtbl2_s8(*&v10, v26)), v17), 5uLL), vmlal_u16(vmull_u16(v34.val[0], vsub_s16(0x20002000200020, v32)), v34.val[1], v32), 5uLL), qword_277C3C9A0[v21]);
      }
    }

    *result = v30;
    ++v13;
    result = (result + 2 * a2);
    v19 -= a7;
    v20 += a7;
  }

  while (v13 != 8);
  return result;
}

int16x4_t *sub_277B98300(int16x4_t *result, uint64_t a2, int16x4_t *a3, unint64_t *a4, int a5, int a6, unsigned int a7, unsigned int a8, int8x16_t a9, int8x16_t a10)
{
  if (a6)
  {
    a9 = *(a4 - 4);
    a10 = *(a4 - 2);
    v10 = 2;
  }

  else
  {
    a9.i64[0] = *(a4 - 2);
    a10.i64[0] = *a4;
    v10 = 1;
  }

  v11 = 0;
  v12 = vmul_s16(vdup_n_s16(a8), 0xFFFCFFFDFFFEFFFFLL);
  v13 = vdup_n_s16(a6 - 6);
  v14 = vand_s8(vshr_n_u16(vmul_s16(v12, vdup_n_s16(1 << a6)), 1uLL), 0x1F001F001F001FLL);
  v15 = vdup_n_s16(v10);
  v16 = vsub_s16(0x20002000200020, v14);
  v17 = vdup_n_s16(1 << a5);
  v18 = -a7;
  v19 = a7;
  do
  {
    v20 = (v19 - 1) >> 6;
    v21 = vsub_s16(0xC0008000400000, vdup_n_s16(v19));
    v22 = v18 >> (6 - a5);
    if (v20 <= 0)
    {
      v29 = a3 + 2 * v22;
      if (a5)
      {
        v33 = vld2_s16(v29);
      }

      else
      {
        v33.val[0] = *v29;
        v33.val[1] = *(v29 + 2);
        v21 = vshr_n_u16(v21, 1uLL);
      }

      v31 = vand_s8(v21, 0x1F001F001F001FLL);
      v30 = vrshrn_n_s32(vmlal_u16(vmull_u16(v33.val[0], vsub_s16(0x20002000200020, v31)), v33.val[1], v31), 5uLL);
    }

    else
    {
      v23 = vadd_s16(vshl_s16(vadd_s16(vdup_n_s16(v11 << 6), v12), v13), v15);
      v24 = vadd_s8(v23, v23);
      v25 = *&vtrn1_s8(v24, v24) | 0x100010001000100;
      v26 = vqtbl1_s8(a9, v25);
      v27 = vqtbl1_s8(a10, v25);
      if (v20 > 3)
      {
        v30 = vrshrn_n_s32(vmlal_u16(vmull_u16(v26, v16), v27, v14), 5uLL);
      }

      else
      {
        if (a5)
        {
          v28 = (a3 + ((2 * v22) | 0xFFFFFFFFFFFFFFFCLL));
          v34 = vld2_s16(v28);
        }

        else
        {
          v34.val[0] = *(a3 - 2);
          v34.val[1] = *a3;
        }

        v32 = vand_s8(vshr_n_u16(vmul_s16(v21, v17), 1uLL), 0x1F001F001F001FLL);
        v30 = vqtbl1_s8(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(vand_s8(qword_277C3C978[v20], v26), v16), vand_s8(qword_277C3C978[v20], v27), v14), 5uLL), vmlal_u16(vmull_u16(v34.val[0], vsub_s16(0x20002000200020, v32)), v34.val[1], v32), 5uLL), qword_277C3C9A0[v20]);
      }
    }

    *result = v30;
    ++v11;
    result = (result + 2 * a2);
    v18 -= a7;
    v19 += a7;
  }

  while (v11 != 4);
  return result;
}

void *sub_277B984A4(void *result, uint64_t a2, int a3, int a4, uint64_t a5, int a6, unsigned int a7)
{
  v118 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    if (a4 == 4)
    {
      v7 = 0;
      v8 = 2 * a3 + 6;
      v9 = (a5 + 2 * v8);
      v10 = vmul_s16(vdup_n_s16(a7), 0x3000200010000);
      v11 = vdup_n_s16(v8);
      v12 = vld1_dup_s16(v9);
      v13 = a3;
      v14 = 2 * a2;
      v15 = a7;
      do
      {
        v16 = 0;
        v17 = (v15 + a7) >> 5;
        v18 = (a5 + 2 * (v15 >> 5));
        v119 = vld2_s16(v18);
        LODWORD(v18) = (v15 + 2 * a7) >> 5;
        v19 = (a5 + 2 * v17);
        v120 = vld2_s16(v19);
        LODWORD(v19) = (v15 + 3 * a7) >> 5;
        v20 = (a5 + 2 * v18);
        v121 = vld2_s16(v20);
        v21 = (a5 + 2 * v19);
        v122 = vld2_s16(v21);
        v22 = vand_s8(vadd_s16(vdup_n_s16(v15), v10), 0x1F001F001F001FLL);
        v23 = vsub_s16(0x20002000200020, v22);
        v119.val[0] = vbsl_s8(vcgt_u16(v11, vadd_s16(vdup_n_s16(v15 >> 5), 0x6000400020000)), vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(v119.val[1], v22, 0), v119.val[0], v23, 0), 5uLL), v12);
        v119.val[1] = vbsl_s8(vcgt_u16(v11, vadd_s16(vdup_n_s16(v17), 0x6000400020000)), vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(v120.val[1], v22, 1), v120.val[0], v23, 1), 5uLL), v12);
        v120.val[0] = vbsl_s8(vcgt_u16(v11, vadd_s16(vdup_n_s16(v18), 0x6000400020000)), vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(v121.val[1], v22, 2), v121.val[0], v23, 2), 5uLL), v12);
        v120.val[1] = vbsl_s8(vcgt_u16(v11, vadd_s16(vdup_n_s16(v19), 0x6000400020000)), vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(v122.val[1], v22, 3), v122.val[0], v23, 3), 5uLL), v12);
        v121.val[0] = vtrn1_s16(v119.val[0], v119.val[1]);
        v119.val[0] = vtrn2_s16(v119.val[0], v119.val[1]);
        v119.val[1] = vtrn1_s16(v120.val[0], v120.val[1]);
        v120.val[0] = vtrn2_s16(v120.val[0], v120.val[1]);
        *v114.i8 = vzip1_s32(v121.val[0], v119.val[1]);
        v114.u64[1] = vzip1_s32(v119.val[0], v120.val[0]);
        *v115.i8 = vzip2_s32(v121.val[0], v119.val[1]);
        v115.u64[1] = vzip2_s32(v119.val[0], v120.val[0]);
        v24 = result;
        do
        {
          *v24 = v114.i64[v16++];
          v24 = (v24 + v14);
        }

        while (v16 != 4);
        v15 += 4 * a7;
        v7 += 4;
        ++result;
      }

      while (v7 < v13);
    }

    else
    {
      v54 = 0;
      v55 = vmul_s16(vdup_n_s16(a7), 0x3000200010000);
      v56 = a4;
      v57 = a3;
      v58 = result;
      v59 = a7;
      do
      {
        v60 = 0;
        v61 = vand_s8(vadd_s16(vdup_n_s16(v59), v55), 0x1F001F001F001FLL);
        v62 = vsub_s16(0x20002000200020, v61);
        v63 = v58;
        do
        {
          v64 = 0;
          v65 = (a5 + 2 * (v59 >> 5) + 4 * v60);
          v123 = vld2q_s16(v65);
          v66 = (a5 + 2 * ((v59 + a7) >> 5) + 4 * v60);
          v124 = vld2q_s16(v66);
          v67 = (a5 + 2 * ((v59 + 2 * a7) >> 5) + 4 * v60);
          v125 = vld2q_s16(v67);
          v68 = (a5 + 2 * ((v59 + 3 * a7) >> 5) + 4 * v60);
          v126 = vld2q_s16(v68);
          v123.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v123.val[1].i8, v61, 0), *v123.val[0].i8, v62, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v123.val[1], v61, 0), v123.val[0], v62, 0), 5uLL);
          v123.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v124.val[1].i8, v61, 1), *v124.val[0].i8, v62, 1), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v124.val[1], v61, 1), v124.val[0], v62, 1), 5uLL);
          v69 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v125.val[1].i8, v61, 2), *v125.val[0].i8, v62, 2), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v125.val[1], v61, 2), v125.val[0], v62, 2), 5uLL);
          v124.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v126.val[1].i8, v61, 3), *v126.val[0].i8, v62, 3), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v126.val[1], v61, 3), v126.val[0], v62, 3), 5uLL);
          v124.val[1] = vtrn1q_s16(v123.val[0], v123.val[1]);
          v123.val[0] = vtrn2q_s16(v123.val[0], v123.val[1]);
          v123.val[1] = vtrn1q_s16(v69, v124.val[0]);
          v70 = vtrn2q_s16(v69, v124.val[0]);
          v114 = vtrn1q_s32(v124.val[1], v123.val[1]);
          v115 = vtrn1q_s32(v123.val[0], v70);
          v116 = vtrn2q_s32(v124.val[1], v123.val[1]);
          v117 = vtrn2q_s32(v123.val[0], v70);
          v71 = v63;
          do
          {
            *v71 = v114.i64[v64];
            v64 += 2;
            v71 = (v71 + 2 * a2);
          }

          while (v64 != 8);
          for (i = 0; i != 4; ++i)
          {
            *(&result[v54 / 4] + 2 * ((i | v60) & 0xFFFFFFFB | 4) * a2) = vextq_s8(*(&v114 + i), *(&v114 + i), 8uLL).u64[0];
          }

          v60 += 8;
          v63 += 2 * a2;
        }

        while (v60 < v56);
        v59 += 4 * a7;
        v54 += 4;
        ++v58;
      }

      while (v54 < v57);
    }
  }

  else
  {
    v25 = a5 + 2;
    v26 = a3 + a4 - 1;
    v27 = (a5 + 2 * v26);
    v28 = *v27;
    v29 = 4 * a7;
    v30 = vmul_s16(vdup_n_s16(a7), 0x3000200010000);
    v31 = 2 * a7;
    v32 = 3 * a7;
    if (a4 == 4)
    {
      v33 = 0;
      v34 = vdup_n_s16(v28);
      v35 = vdup_n_s16(v26);
      v36 = a3;
      v37 = 2 * a2;
      v38 = a7;
      do
      {
        v39 = vand_s8(vadd_s16(vdup_n_s16(v38), v30), 0x3E003E003E003ELL);
        v40 = vsub_s16(0x40004000400040, v39);
        v41 = v34;
        if (v38 >> 6 < v26)
        {
          v41 = vbsl_s8(vcgt_u16(v35, vadd_s16(vdup_n_s16(v38 >> 6), 0x3000200010000)), vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v25 + 2 * (v38 >> 6)), v39, 0), *(a5 + 2 * (v38 >> 6)), v40, 0), 6uLL), v34);
        }

        v42 = (v38 + a7) >> 6;
        v43 = v34;
        if (v42 < v26)
        {
          v43 = vbsl_s8(vcgt_u16(v35, vadd_s16(vdup_n_s16((v38 + a7) >> 6), 0x3000200010000)), vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v25 + 2 * v42), v39, 1), *(a5 + 2 * v42), v40, 1), 6uLL), v34);
        }

        v44 = (v38 + v31) >> 6;
        v45 = v34;
        if (v44 < v26)
        {
          v45 = vbsl_s8(vcgt_u16(v35, vadd_s16(vdup_n_s16((v38 + v31) >> 6), 0x3000200010000)), vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v25 + 2 * v44), v39, 2), *(a5 + 2 * v44), v40, 2), 6uLL), v34);
        }

        v46 = (v38 + v32) >> 6;
        v47 = v34;
        if (v46 < v26)
        {
          v47 = vbsl_s8(vcgt_u16(v35, vadd_s16(vdup_n_s16((v38 + v32) >> 6), 0x3000200010000)), vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v25 + 2 * v46), v39, 3), *(a5 + 2 * v46), v40, 3), 6uLL), v34);
        }

        v48 = 0;
        v49 = vtrn1_s16(v41, v43);
        v50 = vtrn2_s16(v41, v43);
        v51 = vtrn1_s16(v45, v47);
        v52 = vtrn2_s16(v45, v47);
        *v114.i8 = vzip1_s32(v49, v51);
        v114.u64[1] = vzip1_s32(v50, v52);
        *v115.i8 = vzip2_s32(v49, v51);
        v115.u64[1] = vzip2_s32(v50, v52);
        v53 = result;
        do
        {
          *v53 = v114.i64[v48++];
          v53 = (v53 + v37);
        }

        while (v48 != 4);
        v38 += v29;
        v33 += 4;
        ++result;
      }

      while (v33 < v36);
    }

    else
    {
      v73 = 0;
      v74 = vdupq_n_s16(v28);
      v75 = a4;
      v113 = a3;
      v76 = v26 - 7;
      v77 = v26 - 8;
      v78 = result;
      v79 = a7;
      do
      {
        v80 = 0;
        v81 = vand_s8(vadd_s16(vdup_n_s16(v79), v30), 0x3E003E003E003ELL);
        v82 = vsub_s16(0x40004000400040, v81);
        v83 = v79 >> 6;
        v84 = (v79 + a7) >> 6;
        v85 = v32;
        v86 = v79 + v32;
        v87 = (v79 + v31) >> 6;
        v88 = v86 >> 6;
        v89 = v78;
        do
        {
          v90 = v80 + v83;
          v91 = v74;
          if (v26 > v80 + v83)
          {
            if (v90 >= v76)
            {
              v92 = vqtbl1q_s8(*(v27 - 7), xmmword_277C3C8F8[v26 - (v80 + v83)]);
            }

            else
            {
              v92 = *(a5 + 2 * v90);
            }

            if (v90 >= v77)
            {
              v93 = vqtbl1q_s8(*(v27 - 7), xmmword_277C3C8F8[v26 + ~v90]);
            }

            else
            {
              v93 = *(v25 + 2 * v90);
            }

            v91 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v93.i8, v81, 0), *v92.i8, v82, 0), 6uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v93, v81, 0), v92, v82, 0), 6uLL);
          }

          v94 = v80 + v84;
          v95 = v74;
          if (v26 > v80 + v84)
          {
            if (v94 >= v76)
            {
              v96 = vqtbl1q_s8(*(v27 - 7), xmmword_277C3C8F8[v26 - (v80 + v84)]);
            }

            else
            {
              v96 = *(a5 + 2 * v94);
            }

            if (v94 >= v77)
            {
              v97 = vqtbl1q_s8(*(v27 - 7), xmmword_277C3C8F8[v26 + ~v94]);
            }

            else
            {
              v97 = *(v25 + 2 * v94);
            }

            v95 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v97.i8, v81, 1), *v96.i8, v82, 1), 6uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v97, v81, 1), v96, v82, 1), 6uLL);
          }

          v98 = v80 + v87;
          v99 = v74;
          if (v26 > v80 + v87)
          {
            if (v98 >= v76)
            {
              v100 = vqtbl1q_s8(*(v27 - 7), xmmword_277C3C8F8[v26 - (v80 + v87)]);
            }

            else
            {
              v100 = *(a5 + 2 * v98);
            }

            if (v98 >= v77)
            {
              v101 = vqtbl1q_s8(*(v27 - 7), xmmword_277C3C8F8[v26 + ~v98]);
            }

            else
            {
              v101 = *(v25 + 2 * v98);
            }

            v99 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v101.i8, v81, 2), *v100.i8, v82, 2), 6uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v101, v81, 2), v100, v82, 2), 6uLL);
          }

          v102 = v80 + v88;
          v103 = v74;
          if (v26 > v80 + v88)
          {
            if (v102 >= v76)
            {
              v104 = vqtbl1q_s8(*(v27 - 7), xmmword_277C3C8F8[v26 - (v80 + v88)]);
            }

            else
            {
              v104 = *(a5 + 2 * v102);
            }

            if (v102 >= v77)
            {
              v105 = vqtbl1q_s8(*(v27 - 7), xmmword_277C3C8F8[v26 + ~v102]);
            }

            else
            {
              v105 = *(v25 + 2 * v102);
            }

            v103 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v105.i8, v81, 3), *v104.i8, v82, 3), 6uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v105, v81, 3), v104, v82, 3), 6uLL);
          }

          v106 = 0;
          v107 = vtrn1q_s16(v91, v95);
          v108 = vtrn2q_s16(v91, v95);
          v109 = vtrn1q_s16(v99, v103);
          v110 = vtrn2q_s16(v99, v103);
          v114 = vtrn1q_s32(v107, v109);
          v115 = vtrn1q_s32(v108, v110);
          v116 = vtrn2q_s32(v107, v109);
          v117 = vtrn2q_s32(v108, v110);
          v111 = v89;
          do
          {
            *v111 = v114.i64[v106];
            v106 += 2;
            v111 = (v111 + 2 * a2);
          }

          while (v106 != 8);
          for (j = 0; j != 4; ++j)
          {
            *(&result[v73 / 4] + 2 * ((j | v80) & 0xFFFFFFFB | 4) * a2) = vextq_s8(*(&v114 + j), *(&v114 + j), 8uLL).u64[0];
          }

          v80 += 8;
          v89 += 2 * a2;
        }

        while (v80 < v75);
        v79 += v29;
        v73 += 4;
        ++v78;
        v31 = 2 * a7;
        v32 = v85;
      }

      while (v73 < v113);
    }
  }

  return result;
}

uint64_t sub_277B98D04(uint64_t result, unsigned int a2)
{
  v2 = 0;
  *(result + 3172) = a2;
  v3 = vdupq_n_s32(a2);
  v4 = 1;
  v5 = result;
  v6 = &unk_277C3CCA0;
  do
  {
    v7 = 0;
    *(result + 2996 + 4 * v2) = 8;
    *(result + 3084 + 4 * v2) = v4;
    v8 = v5;
    do
    {
      v9.val[0] = *&v6[v7];
      v9.val[1] = vsraq_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(v9.val[0], 0x10uLL), 0x10uLL), v3), v9.val[0], 0x10uLL);
      vst2q_f32(v8, v9);
      v8 += 8;
      v7 += 16;
    }

    while (v7 != 32);
    v4 *= 2;
    ++v2;
    v5 += 34;
    v6 += 32;
  }

  while (v2 != 11);
  *(result + 2992) = 11;
  return result;
}

uint64_t sub_277B98D80(uint64_t result, unsigned int a2)
{
  v2 = 0;
  *(result + 3172) = a2;
  v3 = vdupq_n_s32(a2);
  v4 = 1;
  v5 = &unk_277C3CB40;
  v6 = result;
  do
  {
    v7 = 0;
    *(result + 2996 + 4 * v2) = dword_277C3CB14[v2];
    *(result + 3084 + 4 * v2) = v4;
    v8 = v6;
    do
    {
      v9.val[0] = *&v5[v7];
      v9.val[1] = vsraq_n_s32(vmulq_s32(vshrq_n_s32(vshlq_n_s32(v9.val[0], 0x10uLL), 0x10uLL), v3), v9.val[0], 0x10uLL);
      vst2q_f32(v8, v9);
      v8 += 8;
      v7 += 16;
    }

    while (v7 != 32);
    v4 *= 2;
    ++v2;
    v6 += 34;
    v5 += 32;
  }

  while (v2 != 11);
  *(result + 2992) = 11;
  return result;
}

_DWORD *sub_277B98E04(_DWORD *result, int a2)
{
  v2 = 0;
  result[793] = a2;
  v3 = result + 1;
  v4 = 1;
  v5 = &dword_277C3CE2C;
  do
  {
    LODWORD(v6) = dword_277C3CE00[v2];
    result[v2 + 749] = v6;
    result[v2 + 771] = v4;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v6;
    }

    v7 = v3;
    v8 = v5;
    do
    {
      v9 = *v8++;
      *(v7 - 1) = v9;
      *v7 = v9 * a2 + (v9 >> 16);
      v7 += 2;
      --v6;
    }

    while (v6);
    v4 *= 2;
    ++v2;
    v5 += 8;
    v3 += 34;
  }

  while (v2 != 11);
  result[748] = 11;
  return result;
}

_DWORD *sub_277B98E88(_DWORD *result, int a2, int a3)
{
  v3 = 0;
  v40 = *MEMORY[0x277D85DE8];
  result[793] = a2;
  if (a3 <= 0)
  {
    v4 = 15;
  }

  else
  {
    v4 = 16;
  }

  v5 = result + 1;
  v6 = 1;
  do
  {
    v7 = 0;
    v16 = 0;
    if ((v6 * 0.41) <= 1)
    {
      LOWORD(v8) = 1;
    }

    else
    {
      v8 = (v6 * 0.41);
    }

    v17 = -v6;
    v9 = a3 > 0 || v6 < 6;
    v18 = 0;
    v10 = v9;
    v11 = v10 == 0;
    v19 = v6;
    if (v10)
    {
      v12 = 8;
    }

    else
    {
      v12 = 12;
    }

    v20 = 0;
    v21 = -v6;
    v22 = 0;
    v23 = v6;
    v24 = -v6;
    if (!v11)
    {
      LOWORD(v8) = v6;
    }

    v27 = v8;
    v30 = v8;
    v33 = v8;
    v36 = v8;
    v25 = -v8;
    v26 = v6;
    v28 = -v8;
    v29 = v6;
    v31 = -v6;
    v32 = -v6;
    v34 = v6;
    v35 = -v8;
    v37 = v6;
    v38 = -v8;
    v39 = -v6;
    v13 = v5;
    do
    {
      v14 = *(&v16 + v7);
      *(v13 - 1) = v14;
      *v13 = v14 * a2 + (v14 >> 16);
      v7 += 4;
      v13 += 2;
    }

    while (((16 * ((v12 >> 2) & 3)) | 4) != v7);
    result[v3 + 749] = v12;
    result[v3 + 771] = v6;
    if (v3 < 0xC)
    {
      v15 = v6 * 1.5 + 0.5;
      if (v15 <= (v6 + 1))
      {
        v15 = (v6 + 1);
      }

      v6 = v15;
    }

    ++v3;
    v5 += 34;
  }

  while (v3 != v4);
  result[748] = v4;
  return result;
}

uint64_t sub_277B99018(uint64_t result, int a2, int a3)
{
  v3 = 0;
  v25 = *MEMORY[0x277D85DE8];
  *(result + 1360) = 0;
  *(result + 3172) = a2;
  if (a3 <= 0)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 256;
  }

  v5 = (result + 1364);
  v6 = 10;
  do
  {
    v7 = 0;
    v13 = 0;
    v14 = -v4;
    v15 = 0;
    v16 = v4;
    LOWORD(v8) = 0;
    *(&v8 + 2) = -v4;
    v17 = 0;
    HIWORD(v8) = v4;
    v18 = vqtbl1q_s8(v8, xmmword_277BB7B90);
    v19 = -v4;
    v20 = v4;
    v21 = v4;
    v22 = -v4;
    v24 = 0;
    v23 = 0;
    v9 = v5;
    do
    {
      v10 = *(&v13 + v7);
      *(v9 - 1) = v10;
      *v9 = v10 * a2 + (v10 >> 16);
      v7 += 4;
      v9 += 2;
    }

    while (v7 != 36);
    *(result + 2996 + 4 * v6) = 8;
    *(result + 3084 + 4 * v6) = v4;
    if (a3)
    {
      v11 = v6 < 9;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    v4 >>= v12;
    --v6;
    ++v3;
    v5 -= 34;
  }

  while (v4);
  *(result + 2992) = v3;
  return result;
}

int *sub_277B99138(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, __int16 *a5, int a6, uint64_t a7, int a8, int a9)
{
  v13 = a2 + 49463;
  v14 = *a2;
  v15 = *(*a2 + *(a2 + 463456) + 400);
  *a1 = a4;
  v16 = a4;
  *(a1 + 8) = v14 + (a4 << 7) + 51440;
  *(a1 + 16) = a3 + 480;
  *(a1 + 24) = a3 + 48;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a3 + 16800);
  *(a1 + 72) = a8;
  *(a1 + 80) = a7 + 3176 * byte_277C3D03C[a8];
  *(a1 + 120) = a2 + 395708;
  *(a1 + 128) = a2 + 395740;
  LODWORD(v14) = *(a2 + 98926);
  v17 = *(a2 + 98944) == 2;
  *(a1 + 112) = 4;
  *(a1 + 116) = v14;
  *(a1 + 104) = 0;
  *(a1 + 108) = v17;
  *(a1 + 136) = a9;
  *(a1 + 140) = 0;
  *(a1 + 144) = *(a2 + 98946);
  *(a1 + 88) = *(a3 + 128740);
  result = sub_277B993C4((a1 + 88), *a5, a5[1]);
  v19 = *(a3 + 47560);
  *(a1 + 152) = a5;
  v20 = *a5 + ((*a5 & 0x8000) == 0) + 3;
  v21 = ((a5[1] + ((a5[1] & 0x8000) == 0)) << 13) + 24576;
  *(a1 + 164) = 0;
  v22 = *(a3 + 86568);
  *(a1 + 160) = v21 & 0xFFFF0000 | (v20 >> 3);
  *(a1 + 192) = v22;
  if (v19)
  {
    *(a1 + 168) = v19;
    *(a1 + 176) = **(v19 + 524320);
    *(a1 + 184) = *(*(v19 + 524320) + 8);
  }

  v23 = *(a1 + 8);
  *(a1 + 200) = *v23;
  *(a1 + 208) = *(v23 + 48);
  v24 = *(v13 + 23);
  if (v24 != 1)
  {
    if (v24 != 2 || ((0x35FFD0uLL >> v16) & 1) == 0)
    {
      return result;
    }

LABEL_21:
    v35 = *(v23 + 8);
    v36 = *(v23 + 64);
    *(a1 + 200) = v35;
    *(a1 + 208) = v36;
    *(a1 + 216) = v36;
    return result;
  }

  if (((0xA002FuLL >> v16) & 1) == 0 && v15)
  {
    v25 = a6 >> 16;
    if (a6 >> 16 >= *(a1 + 92))
    {
      v25 = *(a1 + 92);
    }

    if (*(a1 + 88) > a6 >> 16)
    {
      LOWORD(v25) = *(a1 + 88);
    }

    LOWORD(v26) = a6;
    if (a6 >= *(a1 + 100))
    {
      v26 = *(a1 + 100);
    }

    if (*(a1 + 96) > a6)
    {
      LOWORD(v26) = *(a1 + 96);
    }

    v27 = *(a1 + 16);
    v28 = *(a1 + 24);
    v29 = *(v27 + 24);
    v30 = *v27 + v26 * v29 + v25;
    v31 = *v28;
    v32 = *(v28 + 6);
    v33 = (*(v23 + 8))(*v28, v32, v30, v29);
    result = (*(*(a1 + 8) + 8))(v31 + v32, v32, v30 + v29, v29);
    v34 = v33 - result;
    if (v33 - result < 0)
    {
      v34 = result - v33;
    }

    if (v33 > 4 * v34)
    {
      v23 = *(a1 + 8);
      goto LABEL_21;
    }
  }

  return result;
}

int *sub_277B993C4(int *result, __int16 a2, __int16 a3)
{
  v3 = (a3 + 7) >> 3;
  if (v3 <= -1024)
  {
    v3 = -1024;
  }

  v4 = v3 - 1023;
  if ((a2 + 7) >> 3 <= -1024)
  {
    v5 = -1024;
  }

  else
  {
    v5 = (a2 + 7) >> 3;
  }

  v6 = v5 - 1023;
  v7 = *result;
  if (*result < v4)
  {
    *result = v4;
    v7 = v4;
  }

  v9 = result[1];
  v8 = result[2];
  if (v8 < v6)
  {
    result[2] = v6;
    v8 = v6;
  }

  v10 = a3 >> 3;
  if (v10 >= 1024)
  {
    v10 = 1024;
  }

  v11 = v10 + 1023;
  if (v9 < v11)
  {
    v11 = v9;
  }

  v12 = a2 >> 3;
  if (v12 >= 1024)
  {
    v12 = 1024;
  }

  v13 = v12 + 1023;
  if (result[3] < v13)
  {
    v13 = result[3];
  }

  if (v7 > v11)
  {
    v11 = v7;
  }

  result[1] = v11;
  if (v8 > v13)
  {
    v13 = v8;
  }

  result[3] = v13;
  return result;
}

__n128 sub_277B99474(__n128 *a1, uint64_t a2, __n128 *a3, unsigned int a4, __int16 *a5, unint64_t a6)
{
  a1->n128_u32[0] = *(a2 + 246109);
  a1[1].n128_u8[0] = *(a2 + 395700);
  a1[1].n128_u32[1] = *(a2 + 395696);
  if (*(a2 + 395692))
  {
    if (*(a2 + 395780))
    {
      v6 = a6;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  a1->n128_u64[1] = v6;
  v7 = 8 * a3[8046].n128_u32[1];
  v8 = a5[1];
  if (v7 <= v8 - 8184)
  {
    v7 = v8 - 8184;
  }

  v9 = 8 * a3[8046].n128_u32[2];
  if (v9 >= v8 + 8184)
  {
    v9 = v8 + 8184;
  }

  v10 = *a5;
  v11 = v10 - 8184;
  if ((8 * a3[8046].n128_u32[3]) > v10 - 8184)
  {
    v11 = 8 * a3[8046].n128_u32[3];
  }

  v12 = 8 * a3[8047].n128_u32[0];
  if (v12 >= v10 + 8184)
  {
    v12 = v10 + 8184;
  }

  if (v7 > v9)
  {
    v9 = v7;
  }

  if (v11 > v12)
  {
    v12 = v11;
  }

  if (v7 <= -16383)
  {
    v7 = -16383;
  }

  if (v9 >= 0x3FFF)
  {
    v9 = 0x3FFF;
  }

  a1[1].n128_u32[2] = v7;
  a1[1].n128_u32[3] = v9;
  if (v11 <= -16383)
  {
    v13 = -16383;
  }

  else
  {
    v13 = v11;
  }

  if (v12 >= 0x3FFF)
  {
    v12 = 0x3FFF;
  }

  a1[2].n128_u32[0] = v13;
  a1[2].n128_u32[1] = v12;
  v14 = a3[2972].n128_u64[1];
  a1[2].n128_u64[1] = a5;
  a1[3].n128_u8[4] = 0;
  v15 = a3[5410].n128_u64[1];
  a1[3].n128_u32[0] = (((v8 + ((v8 & 0x8000) == 0)) << 13) + 24576) & 0xFFFF0000 | ((v10 + ((v10 & 0x8000) == 0) + 3) >> 3);
  a1[5].n128_u64[0] = v15;
  if (v14)
  {
    a1[3].n128_u64[1] = v14;
    a1[4].n128_u64[0] = **(v14 + 524320);
    a1[4].n128_u64[1] = *(*(v14 + 524320) + 8);
  }

  a1[5].n128_u64[1] = *a2 + (a4 << 7) + 51440;
  a1[6].n128_u8[0] = *(a2 + 395702);
  a1[10].n128_u32[0] = byte_277C3CAFE[a4];
  a1[10].n128_u32[1] = byte_277C3CAE8[a4];
  a1[6].n128_u64[1] = a3[30].n128_u64;
  a1[7].n128_u64[0] = a3[3].n128_u64;
  a1[8].n128_u64[0] = 0;
  a1[8].n128_u64[1] = 0;
  a1[7].n128_u64[1] = 0;
  result = a3[1050];
  a1[9] = result;
  return result;
}

uint64_t sub_277B99630(int a1, unsigned __int8 *a2, int a3, _DWORD *a4, __int16 *a5, _DWORD *a6, int *a7)
{
  v7 = a7;
  v8 = a5;
  v9 = a4;
  v221 = a3;
  v11 = a1;
  v215 = *a2;
  v12 = a2[72];
  v13 = *(a2 + 35);
  v14 = *(a2 + 26);
  *a5 = -2147450880;
  if (a7)
  {
    *a7 = -2147450880;
  }

  if (a4)
  {
    *&v15 = 0x8000000080000000;
    *(&v15 + 1) = 0x8000000080000000;
    *a4 = v15;
    a4[4] = 0x7FFFFFFF;
  }

  v223 = 0;
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
LABEL_31:
        v30 = 1;
LABEL_44:
        v223 = sub_277B9AC78(a1, a2, a3, v30, v9, a5, a6);
        goto LABEL_45;
      }
    }

    else if (v12 != 8)
    {
      if (v12 == 10)
      {
        v27 = a3;
        v28 = a3 <= 10;
        v29 = 10;
      }

      else
      {
        if (v12 != 9)
        {
          goto LABEL_45;
        }

        v27 = a3;
        v28 = a3 <= 8;
        v29 = 8;
      }

      goto LABEL_40;
    }

    v27 = a3;
    v28 = a3 <= 9;
    v29 = 9;
LABEL_40:
    if (v28)
    {
      a3 = v29;
    }

    else
    {
      a3 = v27;
    }

    v30 = 0;
    goto LABEL_44;
  }

  if (v12 >= 4)
  {
    goto LABEL_31;
  }

  v214 = v13;
  v16 = 0;
  v17 = *(a2 + 10);
  v228 = 0;
  v18 = a1 >> 16;
  v19 = *(a2 + 22);
  if (a1 >> 16 >= *(a2 + 23))
  {
    v18 = *(a2 + 23);
  }

  if (v19 <= a1 >> 16)
  {
    LOWORD(v19) = v18;
  }

  v20 = a1;
  if (a1 >= *(a2 + 25))
  {
    v20 = *(a2 + 25);
  }

  if (*(a2 + 24) > a1)
  {
    v20 = *(a2 + 24);
  }

  v26 = v20;
  v21 = v20 - *(a2 + 80);
  v22 = v20 | (v19 << 16);
  v23 = *(a2 + 3);
  v24 = **(a2 + 2) + *(*(a2 + 2) + 24) * v26 + v19;
  v25 = a2[164];
  LOWORD(v26) = 8 * v21;
  LOWORD(v19) = 8 * (v19 - *(a2 + 81));
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = v26;
      if ((v26 & 0x8000u) != 0)
      {
        v26 = (-8 * v21);
      }

      v19 = v19;
      if ((v19 & 0x8000u) != 0)
      {
        v19 = -v19;
      }

      v16 = (15 * (v19 + v26)) >> 3;
    }

    else if (v25 == 3)
    {
      v26 = v26;
      if ((v26 & 0x8000u) != 0)
      {
        v26 = (-8 * v21);
      }

      v19 = v19;
      if ((v19 & 0x8000u) != 0)
      {
        v19 = -v19;
      }

      v16 = v19 + v26;
    }
  }

  else if (a2[164])
  {
    if (v25 == 1)
    {
      v26 = v26;
      if ((v26 & 0x8000u) != 0)
      {
        v26 = (-8 * v21);
      }

      v19 = v19;
      if ((v19 & 0x8000u) != 0)
      {
        v19 = -v19;
      }

      v16 = 4 * (v19 + v26);
    }
  }

  else
  {
    v16 = ((*(*(a2 + 22) + 4 * (8 * v21)) + *(*(a2 + 23) + 4 * v19) + *(*(a2 + 21) + ((4 * (v19 != 0)) | (8 * ((8 * v21) != 0))))) * *(a2 + 49) + 256) >> 9;
  }

  v213 = v14;
  if (*(a2 + 4))
  {
    v108 = *(a2 + 1);
    v109 = *v23;
    v110 = *(v23 + 6);
    if (*(a2 + 5))
    {
      v111 = (*(v108 + 72))(v109, v110, v24);
    }

    else
    {
      v111 = (*(v108 + 16))(v109, v110, v24);
    }
  }

  else
  {
    v111 = (*(a2 + 25))(*v23, *(v23 + 6), v24);
  }

  v112 = v111;
  v229[0] = 0;
  sub_277B9D998(v22, v111 + v16, a2, v221, v229, v8, v7);
  v223 = sub_277B9E2D4(a2, v8, a6);
  v114 = *(v17 + 2992) + ~v221;
  v115 = v229[0];
  while (v115 < v114)
  {
    ++v115;
    v227 = 0;
    DWORD2(v224[0]) = 0;
    *&v224[0] = 0;
    v17 = v17 & 0xFFFFFFFF00000000 | v22;
    sub_277B9D998(v17, v112 + v16, a2, v115 + v221, &v228, &v227, v7);
    v116 = sub_277B9E2D4(a2, &v227, v224);
    if (v116 < v223)
    {
      *v8 = v227;
      a6[2] = DWORD2(v224[0]);
      *a6 = *&v224[0];
      v223 = v116;
    }

    if (v228)
    {
      v115 += v228;
      v228 = 0;
    }
  }

  v9 = a4;
  v11 = a1;
  v13 = v214;
  v14 = v213;
  if (a4)
  {
    v211 = v12;
    v117 = *v8;
    v113.i32[0] = *v8;
    v212 = vmovl_u16(v113).u64[0];
    v119 = *(a2 + 2);
    v118 = *(a2 + 3);
    v120 = *(v119 + 24);
    v121 = *v8;
    *a4 = (*(a2 + 25))(*v118, *(v118 + 6), *v119 + v120 * v121 + (*v8 >> 16), v120);
    if (v121 <= *(a2 + 24) || v121 >= *(a2 + 25) || v117 >> 16 <= *(a2 + 22) || v117 >> 16 >= *(a2 + 23))
    {
      v131 = 0;
      v126 = v212;
      v132 = &word_277C3D076;
      do
      {
        v133 = *v132 + v212.i16[2];
        if (*(a2 + 22) <= v133 && *(a2 + 23) >= v133 && (v134 = *(v132 - 1) + v117, *(a2 + 24) <= v134) && *(a2 + 25) >= v134)
        {
          v135 = (*(a2 + 25))(*v118, *(v118 + 6), *v119 + v133 + *(v119 + 24) * v134, v120);
        }

        else
        {
          v135 = 0x7FFFFFFF;
        }

        v132 += 2;
        a4[++v131] = v135;
      }

      while (v131 != 4);
    }

    else
    {
      v122 = 0;
      v123 = &word_277C3D076;
      do
      {
        v124 = *(v123 - 1) + v117;
        v125 = *v123;
        v123 += 2;
        a4[++v122] = (*(a2 + 25))(*v118, *(v118 + 6), *v119 + *(v119 + 24) * v124 + (v125 + v212.i16[2]), v120);
      }

      while (v122 != 4);
    }

    v127 = 0;
    v128 = a2[164];
    v126.i16[0] = *(a2 + 80);
    v126.i16[2] = *(a2 + 81);
    v129 = vshl_n_s32(vsub_s32(v212, v126), 3uLL);
    if (v128 > 1)
    {
      v8 = a5;
      v9 = a4;
      v11 = a1;
      v13 = v214;
      v14 = v213;
      v12 = v211;
      if (v128 == 2)
      {
        v142 = vabs_s32(vshr_n_s32(vshl_n_s32(v129, 0x10uLL), 0x10uLL));
        v127 = (15 * (v142.i32[1] + v142.i32[0])) >> 3;
      }

      else if (v128 == 3)
      {
        v136 = vabs_s32(vshr_n_s32(vshl_n_s32(v129, 0x10uLL), 0x10uLL));
        v127 = v136.i32[1] + v136.i32[0];
      }
    }

    else
    {
      v8 = a5;
      v9 = a4;
      v11 = a1;
      v13 = v214;
      v14 = v213;
      v12 = v211;
      if (a2[164])
      {
        if (v128 == 1)
        {
          v130 = vabs_s32(vshr_n_s32(vshl_n_s32(v129, 0x10uLL), 0x10uLL));
          v127 = 4 * (v130.i32[1] + v130.i32[0]);
        }
      }

      else
      {
        v127 = ((*(*(a2 + 22) + 4 * v129.i16[0]) + *(*(a2 + 23) + 4 * v129.i16[2]) + *(*(a2 + 21) + ((4 * (v129.u16[2] != 0)) | (8 * (v129.u16[0] != 0))))) * *(a2 + 49) + 256) >> 9;
      }
    }

    v143 = v9[1];
    *v9 += v127;
    if (v143 != 0x7FFFFFFF)
    {
      v144 = 0;
      if (v128 > 1)
      {
        if (v128 == 2)
        {
          v156 = vdup_lane_s32(v129, 0);
          v156.i32[0] = v129.i32[1] - 8;
          v157 = vabs_s32(vshr_n_s32(vshl_n_s32(v156, 0x10uLL), 0x10uLL));
          v144 = (15 * (v157.i32[0] + v157.i32[1])) >> 3;
        }

        else if (v128 == 3)
        {
          v147 = vdup_lane_s32(v129, 0);
          v147.i32[0] = v129.i32[1] - 8;
          v148 = vabs_s32(vshr_n_s32(vshl_n_s32(v147, 0x10uLL), 0x10uLL));
          v144 = v148.i32[0] + v148.i32[1];
        }
      }

      else if (v128)
      {
        v145 = vdup_lane_s32(v129, 0);
        v145.i32[0] = v129.i32[1] - 8;
        v146 = vabs_s32(vshr_n_s32(vshl_n_s32(v145, 0x10uLL), 0x10uLL));
        v144 = 4 * (v146.i32[0] + v146.i32[1]);
      }

      else
      {
        v144 = ((*(*(a2 + 22) + 4 * v129.i16[0]) + *(*(a2 + 23) + 4 * (v129.i16[2] - 8)) + *(*(a2 + 21) + ((4 * ((v129.i16[2] - 8) != 0)) | (8 * (v129.u16[0] != 0))))) * *(a2 + 49) + 256) >> 9;
      }

      v9[1] = v144 + v143;
    }

    v158 = v9[2];
    if (v158 != 0x7FFFFFFF)
    {
      v159 = 0;
      if (v128 > 1)
      {
        if (v128 == 2)
        {
          v164.i32[0] = vdup_lane_s32(v129, 1).u32[0];
          v164.i32[1] = v129.i32[0] + 8;
          v165 = vabs_s32(vshr_n_s32(vshl_n_s32(v164, 0x10uLL), 0x10uLL));
          v159 = (15 * (v165.i32[0] + v165.i32[1])) >> 3;
        }

        else if (v128 == 3)
        {
          v162.i32[0] = vdup_lane_s32(v129, 1).u32[0];
          v162.i32[1] = v129.i32[0] + 8;
          v163 = vabs_s32(vshr_n_s32(vshl_n_s32(v162, 0x10uLL), 0x10uLL));
          v159 = v163.i32[0] + v163.i32[1];
        }
      }

      else if (v128)
      {
        v160.i32[0] = vdup_lane_s32(v129, 1).u32[0];
        v160.i32[1] = v129.i32[0] + 8;
        v161 = vabs_s32(vshr_n_s32(vshl_n_s32(v160, 0x10uLL), 0x10uLL));
        v159 = 4 * (v161.i32[0] + v161.i32[1]);
      }

      else
      {
        v159 = ((*(*(a2 + 22) + 4 * (v129.i16[0] + 8)) + *(*(a2 + 23) + 4 * v129.i16[2]) + *(*(a2 + 21) + ((4 * (v129.u16[2] != 0)) | (8 * ((v129.i16[0] + 8) != 0))))) * *(a2 + 49) + 256) >> 9;
      }

      v9[2] = v159 + v158;
    }

    v166 = v9[3];
    if (v166 != 0x7FFFFFFF)
    {
      v167 = 0;
      if (v128 > 1)
      {
        if (v128 == 2)
        {
          v172 = vdup_lane_s32(v129, 0);
          v172.i32[0] = v129.i32[1] + 8;
          v173 = vabs_s32(vshr_n_s32(vshl_n_s32(v172, 0x10uLL), 0x10uLL));
          v167 = (15 * (v173.i32[0] + v173.i32[1])) >> 3;
        }

        else if (v128 == 3)
        {
          v170 = vdup_lane_s32(v129, 0);
          v170.i32[0] = v129.i32[1] + 8;
          v171 = vabs_s32(vshr_n_s32(vshl_n_s32(v170, 0x10uLL), 0x10uLL));
          v167 = v171.i32[0] + v171.i32[1];
        }
      }

      else if (v128)
      {
        v168 = vdup_lane_s32(v129, 0);
        v168.i32[0] = v129.i32[1] + 8;
        v169 = vabs_s32(vshr_n_s32(vshl_n_s32(v168, 0x10uLL), 0x10uLL));
        v167 = 4 * (v169.i32[0] + v169.i32[1]);
      }

      else
      {
        v167 = ((*(*(a2 + 22) + 4 * v129.i16[0]) + *(*(a2 + 23) + 4 * (v129.i16[2] + 8)) + *(*(a2 + 21) + ((4 * ((v129.i16[2] + 8) != 0)) | (8 * (v129.u16[0] != 0))))) * *(a2 + 49) + 256) >> 9;
      }

      v9[3] = v167 + v166;
    }

    v174 = v9[4];
    if (v174 != 0x7FFFFFFF)
    {
      v175 = 0;
      v176 = v129.i32[0] - 8;
      if (v128 > 1)
      {
        if (v128 == 2)
        {
          v181.i32[0] = vdup_lane_s32(v129, 1).u32[0];
          v181.i32[1] = v176;
          v182 = vabs_s32(vshr_n_s32(vshl_n_s32(v181, 0x10uLL), 0x10uLL));
          v175 = (15 * (v182.i32[0] + v182.i32[1])) >> 3;
        }

        else if (v128 == 3)
        {
          v179.i32[0] = vdup_lane_s32(v129, 1).u32[0];
          v179.i32[1] = v176;
          v180 = vabs_s32(vshr_n_s32(vshl_n_s32(v179, 0x10uLL), 0x10uLL));
          v175 = v180.i32[0] + v180.i32[1];
        }
      }

      else if (v128)
      {
        v177.i32[0] = vdup_lane_s32(v129, 1).u32[0];
        v177.i32[1] = v176;
        v178 = vabs_s32(vshr_n_s32(vshl_n_s32(v177, 0x10uLL), 0x10uLL));
        v175 = 4 * (v178.i32[0] + v178.i32[1]);
      }

      else
      {
        v175 = ((*(*(a2 + 22) + 4 * (v129.i16[0] - 8)) + *(*(a2 + 23) + 4 * v129.i16[2]) + *(*(a2 + 21) + ((4 * (v129.u16[2] != 0)) | (8 * ((v129.i16[0] - 8) != 0))))) * *(a2 + 49) + 256) >> 9;
      }

      v9[4] = v175 + v174;
    }
  }

LABEL_45:
  if (!v14)
  {
    if ((v12 - 1) <= 1 && !*(a2 + 4))
    {
      v14 = v223 > *(a2 + 29) >> (10 - (byte_277C42228[v215] + byte_277C3CFCC[v215]));
      if (v13)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v14 = 0;
  }

  if (v13)
  {
    goto LABEL_59;
  }

LABEL_50:
  if (*(a2 + 27))
  {
    v31 = v11 - *v8;
    if (v31 < 0)
    {
      v31 = *v8 - v11;
    }

    v32 = (v11 >> 16) - v8[1];
    if (v32 < 0)
    {
      v32 = v8[1] - (v11 >> 16);
    }

    if (v31 <= v32)
    {
      v31 = v32;
    }

    if (v31 <= *(a2 + 28))
    {
      v14 = 0;
    }
  }

LABEL_59:
  v33 = **(a2 + 1);
  if (*(a2 + 25) != v33)
  {
    v35 = *(a2 + 2);
    v34 = *(a2 + 3);
    v36 = *(v34 + 6);
    v37 = *(v35 + 6);
    v38 = v13;
    v39 = *v34;
    v40 = *v35;
    v41 = v7;
    v42 = v14;
    v43 = a5[1] + v37 * *a5;
    v44 = v33(*v34, v36, *v35 + v43, v37);
    v45 = v40 + v43;
    v14 = v42;
    v7 = v41;
    v46 = v39;
    v13 = v38;
    v47 = v37;
    v9 = a4;
    v48 = (*(*(a2 + 1) + 8))(v46, v36, v45, v47);
    if (v44 > 1 << (byte_277C3CFCC[v215] + byte_277C42228[v215]))
    {
      v49 = v48 - v44;
      if (v48 - v44 < 0)
      {
        v49 = v44 - v48;
      }

      v50 = 10 * v49;
      v51 = v44 <= 1 ? 1 : v44;
      if (v50 >= 9 * v51)
      {
        v95 = *(a2 + 5);
        v224[4] = *(a2 + 4);
        v224[5] = v95;
        v96 = *(a2 + 3);
        v224[2] = *(a2 + 2);
        v224[3] = v96;
        v97 = *(a2 + 9);
        v224[8] = *(a2 + 8);
        v224[9] = v97;
        v98 = *(a2 + 7);
        v224[6] = *(a2 + 6);
        v224[7] = v98;
        v99 = *(a2 + 13);
        v225 = *(a2 + 12);
        v226 = v99;
        v100 = *(a2 + 11);
        v224[10] = *(a2 + 10);
        v224[11] = v100;
        v101 = *(a2 + 1);
        v224[0] = *a2;
        v224[1] = v101;
        *(&v225 + 1) = **(&v224[0] + 1);
        v226 = *(*(&v224[0] + 1) + 48);
        return sub_277B99630(a1, v224, v221, a4, a5, a6, v41);
      }
    }
  }

  if (v14)
  {
    DWORD2(v224[0]) = 0;
    *&v224[0] = 0;
    v52 = *&a2[8 * v13 + 120];
    v53 = a5;
    v54 = *a5;
    v56 = *v52;
    v55 = v52[1];
    v229[0] = *a5;
    v57 = v56 - 257 < 0xFFFFFF06 || v55 < 1;
    if (!v57 && v55 <= v56)
    {
      v59 = v54 >> 16;
      v60 = v54;
      if ((v54 & 0x8000u) != 0)
      {
        v60 = -v54;
      }

      if (v59 < 0)
      {
        v59 = -v59;
      }

      if (v60 > v59)
      {
        v59 = v60;
      }

      v61 = v59 + (v59 >> 2);
      if (v56 <= v61)
      {
        v62 = v61;
      }

      else
      {
        v62 = v56;
      }

      if (v62 >= 0x100)
      {
        v63 = 256;
      }

      else
      {
        v63 = v62;
      }

      if (v55 <= v63 / (v56 / v55))
      {
        v55 = v63 / (v56 / v55);
      }

      if (v55 >= 4)
      {
        v64 = 4;
      }

      else
      {
        v64 = v55;
      }

      if (*(a2 + 34))
      {
        v65 = v64;
      }

      else
      {
        v65 = v55;
      }

      v66 = sub_277B9E498(v54, a2, v63, v65, v229, v7);
      if (v62 >= 8 && v65 >= 2)
      {
        v68 = v52 + 3;
        v69 = 2;
        do
        {
          v65 = v65 & 0xFFFFFFFF00000000 | v229[0];
          v66 = sub_277B9E498(v65, a2, *(v68 - 1), *v68, v229, v7);
          v70 = *v68;
          v68 += 2;
        }

        while (v70 != 1 && v69-- != 0);
      }

      v72 = 0x7FFFFFFF;
      v73 = a6;
      if (v66 == 0x7FFFFFFF)
      {
        goto LABEL_108;
      }

      v74 = v229[0];
      v75 = HIWORD(v229[0]);
      v76 = (*(*(a2 + 1) + 24))(**(a2 + 3), *(*(a2 + 3) + 24), **(a2 + 2) + SHIWORD(v229[0]) + *(*(a2 + 2) + 24) * SLOWORD(v229[0]));
      DWORD1(v224[0]) = v76;
      v77 = a2[164];
      if (v77 == 4)
      {
        goto LABEL_106;
      }

      v137 = *(a2 + 19);
      v138 = *v137;
      v139 = (8 * v74 - v138);
      v140 = v137[1];
      v141 = (8 * v75 - v140);
      if (v139 < 0)
      {
        v139 = -v139;
      }

      if (v141 < 0)
      {
        v141 = -v141;
      }

      if (v77 == 3)
      {
        LODWORD(v78) = (v141 + v139) >> 3;
        goto LABEL_107;
      }

      if (v77 == 1)
      {
        LODWORD(v78) = (v141 + v139) >> 2;
        goto LABEL_107;
      }

      if (a2[164])
      {
LABEL_106:
        LODWORD(v78) = 0;
      }

      else
      {
        v78 = ((*(*(a2 + 22) + 4 * (8 * v74 - v138)) + *(*(a2 + 23) + 4 * (8 * v75 - v140)) + *(*(a2 + 21) + ((4 * (v140 != (8 * v75))) | (8 * (v138 != (8 * v74)))))) * *(a2 + 48) + 0x2000) >> 14;
      }

LABEL_107:
      LODWORD(v224[0]) = v78;
      v72 = v78 + v76;
LABEL_108:
      if (v9)
      {
        v217 = v72;
        v79 = v229[0];
        v67.i32[0] = v229[0];
        v222 = vmovl_u16(v67).u64[0];
        v81 = *(a2 + 2);
        v80 = *(a2 + 3);
        v82 = *(v81 + 24);
        v83 = SLOWORD(v229[0]);
        *v9 = (*(a2 + 25))(*v80, *(v80 + 6), *v81 + v82 * SLOWORD(v229[0]) + (v229[0] >> 16), v82);
        if (v83 <= *(a2 + 24) || v83 >= *(a2 + 25) || v79 >> 16 <= *(a2 + 22) || v79 >> 16 >= *(a2 + 23))
        {
          v102 = 0;
          v89 = v222;
          v103 = &word_277C3D076;
          do
          {
            v104 = *v103 + v222.i16[2];
            if (*(a2 + 22) <= v104 && *(a2 + 23) >= v104 && (v105 = *(v103 - 1) + v79, *(a2 + 24) <= v105) && *(a2 + 25) >= v105)
            {
              v106 = (*(a2 + 25))(*v80, *(v80 + 6), *v81 + v104 + *(v81 + 24) * v105, v82);
            }

            else
            {
              v106 = 0x7FFFFFFF;
            }

            v103 += 2;
            v9[++v102] = v106;
          }

          while (v102 != 4);
        }

        else
        {
          v84 = 0;
          v85 = v9 + 1;
          v86 = &word_277C3D076;
          do
          {
            v87 = *(v86 - 1) + v79;
            v88 = *v86;
            v86 += 2;
            v85[v84++] = (*(a2 + 25))(*v80, *(v80 + 6), *v81 + *(v81 + 24) * v87 + (v88 + v222.i16[2]), v82);
          }

          while (v84 != 4);
        }

        v90 = 0;
        v91 = a2[164];
        v89.i16[0] = *(a2 + 80);
        v89.i16[2] = *(a2 + 81);
        v92 = vshl_n_s32(vsub_s32(v222, v89), 3uLL);
        if (v91 > 1)
        {
          v53 = a5;
          v93 = a4;
          v73 = a6;
          v72 = v217;
          if (v91 == 2)
          {
            v149 = vabs_s32(vshr_n_s32(vshl_n_s32(v92, 0x10uLL), 0x10uLL));
            v90 = (15 * (v149.i32[1] + v149.i32[0])) >> 3;
          }

          else if (v91 == 3)
          {
            v107 = vabs_s32(vshr_n_s32(vshl_n_s32(v92, 0x10uLL), 0x10uLL));
            v90 = v107.i32[1] + v107.i32[0];
          }
        }

        else
        {
          v53 = a5;
          v93 = a4;
          v73 = a6;
          v72 = v217;
          if (a2[164])
          {
            if (v91 == 1)
            {
              v94 = vabs_s32(vshr_n_s32(vshl_n_s32(v92, 0x10uLL), 0x10uLL));
              v90 = 4 * (v94.i32[1] + v94.i32[0]);
            }
          }

          else
          {
            v90 = ((*(*(a2 + 22) + 4 * v92.i16[0]) + *(*(a2 + 23) + 4 * v92.i16[2]) + *(*(a2 + 21) + ((4 * (v92.u16[2] != 0)) | (8 * (v92.u16[0] != 0))))) * *(a2 + 49) + 256) >> 9;
          }
        }

        v150 = v93[1];
        *v93 += v90;
        if (v150 != 0x7FFFFFFF)
        {
          v151 = 0;
          if (v91 > 1)
          {
            if (v91 == 2)
            {
              v183 = vdup_lane_s32(v92, 0);
              v183.i32[0] = v92.i32[1] - 8;
              v184 = vabs_s32(vshr_n_s32(vshl_n_s32(v183, 0x10uLL), 0x10uLL));
              v151 = (15 * (v184.i32[0] + v184.i32[1])) >> 3;
            }

            else if (v91 == 3)
            {
              v154 = vdup_lane_s32(v92, 0);
              v154.i32[0] = v92.i32[1] - 8;
              v155 = vabs_s32(vshr_n_s32(vshl_n_s32(v154, 0x10uLL), 0x10uLL));
              v151 = v155.i32[0] + v155.i32[1];
            }
          }

          else if (v91)
          {
            v152 = vdup_lane_s32(v92, 0);
            v152.i32[0] = v92.i32[1] - 8;
            v153 = vabs_s32(vshr_n_s32(vshl_n_s32(v152, 0x10uLL), 0x10uLL));
            v151 = 4 * (v153.i32[0] + v153.i32[1]);
          }

          else
          {
            v151 = ((*(*(a2 + 22) + 4 * v92.i16[0]) + *(*(a2 + 23) + 4 * (v92.i16[2] - 8)) + *(*(a2 + 21) + ((4 * ((v92.i16[2] - 8) != 0)) | (8 * (v92.u16[0] != 0))))) * *(a2 + 49) + 256) >> 9;
          }

          v93[1] = v151 + v150;
        }

        v185 = v93[2];
        if (v185 != 0x7FFFFFFF)
        {
          v186 = 0;
          if (v91 > 1)
          {
            if (v91 == 2)
            {
              v191.i32[0] = vdup_lane_s32(v92, 1).u32[0];
              v191.i32[1] = v92.i32[0] + 8;
              v192 = vabs_s32(vshr_n_s32(vshl_n_s32(v191, 0x10uLL), 0x10uLL));
              v186 = (15 * (v192.i32[0] + v192.i32[1])) >> 3;
            }

            else if (v91 == 3)
            {
              v189.i32[0] = vdup_lane_s32(v92, 1).u32[0];
              v189.i32[1] = v92.i32[0] + 8;
              v190 = vabs_s32(vshr_n_s32(vshl_n_s32(v189, 0x10uLL), 0x10uLL));
              v186 = v190.i32[0] + v190.i32[1];
            }
          }

          else if (v91)
          {
            v187.i32[0] = vdup_lane_s32(v92, 1).u32[0];
            v187.i32[1] = v92.i32[0] + 8;
            v188 = vabs_s32(vshr_n_s32(vshl_n_s32(v187, 0x10uLL), 0x10uLL));
            v186 = 4 * (v188.i32[0] + v188.i32[1]);
          }

          else
          {
            v186 = ((*(*(a2 + 22) + 4 * (v92.i16[0] + 8)) + *(*(a2 + 23) + 4 * v92.i16[2]) + *(*(a2 + 21) + ((4 * (v92.u16[2] != 0)) | (8 * ((v92.i16[0] + 8) != 0))))) * *(a2 + 49) + 256) >> 9;
          }

          v93[2] = v186 + v185;
        }

        v193 = v93[3];
        if (v193 != 0x7FFFFFFF)
        {
          v194 = 0;
          if (v91 > 1)
          {
            if (v91 == 2)
            {
              v199 = vdup_lane_s32(v92, 0);
              v199.i32[0] = v92.i32[1] + 8;
              v200 = vabs_s32(vshr_n_s32(vshl_n_s32(v199, 0x10uLL), 0x10uLL));
              v194 = (15 * (v200.i32[0] + v200.i32[1])) >> 3;
            }

            else if (v91 == 3)
            {
              v197 = vdup_lane_s32(v92, 0);
              v197.i32[0] = v92.i32[1] + 8;
              v198 = vabs_s32(vshr_n_s32(vshl_n_s32(v197, 0x10uLL), 0x10uLL));
              v194 = v198.i32[0] + v198.i32[1];
            }
          }

          else if (v91)
          {
            v195 = vdup_lane_s32(v92, 0);
            v195.i32[0] = v92.i32[1] + 8;
            v196 = vabs_s32(vshr_n_s32(vshl_n_s32(v195, 0x10uLL), 0x10uLL));
            v194 = 4 * (v196.i32[0] + v196.i32[1]);
          }

          else
          {
            v194 = ((*(*(a2 + 22) + 4 * v92.i16[0]) + *(*(a2 + 23) + 4 * (v92.i16[2] + 8)) + *(*(a2 + 21) + ((4 * ((v92.i16[2] + 8) != 0)) | (8 * (v92.u16[0] != 0))))) * *(a2 + 49) + 256) >> 9;
          }

          v93[3] = v194 + v193;
        }

        v201 = v93[4];
        if (v201 != 0x7FFFFFFF)
        {
          v202 = 0;
          v203 = v92.i32[0] - 8;
          if (v91 > 1)
          {
            if (v91 == 2)
            {
              v208.i32[0] = vdup_lane_s32(v92, 1).u32[0];
              v208.i32[1] = v203;
              v209 = vabs_s32(vshr_n_s32(vshl_n_s32(v208, 0x10uLL), 0x10uLL));
              v202 = (15 * (v209.i32[0] + v209.i32[1])) >> 3;
            }

            else if (v91 == 3)
            {
              v206.i32[0] = vdup_lane_s32(v92, 1).u32[0];
              v206.i32[1] = v203;
              v207 = vabs_s32(vshr_n_s32(vshl_n_s32(v206, 0x10uLL), 0x10uLL));
              v202 = v207.i32[0] + v207.i32[1];
            }
          }

          else if (v91)
          {
            v204.i32[0] = vdup_lane_s32(v92, 1).u32[0];
            v204.i32[1] = v203;
            v205 = vabs_s32(vshr_n_s32(vshl_n_s32(v204, 0x10uLL), 0x10uLL));
            v202 = 4 * (v205.i32[0] + v205.i32[1]);
          }

          else
          {
            v202 = ((*(*(a2 + 22) + 4 * (v92.i16[0] - 8)) + *(*(a2 + 23) + 4 * v92.i16[2]) + *(*(a2 + 21) + ((4 * (v92.u16[2] != 0)) | (8 * ((v92.i16[0] - 8) != 0))))) * *(a2 + 49) + 256) >> 9;
          }

          v93[4] = v202 + v201;
        }
      }

      if (v72 < v223)
      {
        *v73 = *&v224[0];
        v73[2] = DWORD2(v224[0]);
        *v53 = v229[0];
        return v72;
      }
    }
  }

  return v223;
}

uint64_t sub_277B9AC78(int a1, uint64_t a2, int a3, int a4, uint64_t a5, int *a6, _DWORD *a7)
{
  v462 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (a3 >= 10)
  {
    v11 = 10;
  }

  else
  {
    v11 = a3;
  }

  v12 = dword_277C3D048[v11];
  v420 = *(a2 + 80);
  v393 = *(v420 + 2996);
  v13 = a1 >> 16;
  if (a1 >> 16 >= *(a2 + 92))
  {
    v13 = *(a2 + 92);
  }

  if (*(a2 + 88) <= a1 >> 16)
  {
    LOWORD(v14) = v13;
  }

  else
  {
    v14 = *(a2 + 88);
  }

  v15 = a1;
  if (a1 >= *(a2 + 100))
  {
    v15 = *(a2 + 100);
  }

  if (*(a2 + 96) > a1)
  {
    v15 = *(a2 + 96);
  }

  v435 = v15;
  v16 = v15;
  v430 = v14;
  v17 = *(v10 + 24);
  if (a5)
  {
    *(a5 + 16) = 0x7FFFFFFF;
    *&v18 = 0x8000000080000000;
    *(&v18 + 1) = 0x8000000080000000;
    *a5 = v18;
    v17 = *(v10 + 24);
  }

  v443 = v16;
  v19 = v14;
  v448 = v14;
  v20 = (*(a2 + 200))(*v9, *(v9 + 24), *v10 + v17 * v16 + v14);
  v22 = v20;
  v23 = 0;
  v24 = *(a2 + 164);
  v25 = v435;
  v26 = 8 * (v435 - *(a2 + 160));
  LOWORD(v27) = 8 * (v430 - *(a2 + 162));
  v395 = a5;
  if (v24 <= 1)
  {
    if (*(a2 + 164))
    {
      v28 = a6;
      v29 = v448;
      v30 = v443;
      if (v24 == 1)
      {
        v31 = v26;
        if (v26 < 0)
        {
          v31 = (-8 * (v435 - *(a2 + 160)));
        }

        v27 = v27;
        if ((v27 & 0x8000u) != 0)
        {
          v27 = (-8 * (v430 - *(a2 + 162)));
        }

        v23 = 4 * (v27 + v31);
      }

      goto LABEL_37;
    }

    v23 = ((*(*(a2 + 176) + 4 * (8 * (v435 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v430 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v430 - *(a2 + 162))) != 0)) | (8 * ((8 * (v435 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
LABEL_36:
    v28 = a6;
    v29 = v448;
    v30 = v443;
    goto LABEL_37;
  }

  if (v24 == 2)
  {
    v33 = v26;
    if (v26 < 0)
    {
      v33 = (-8 * (v435 - *(a2 + 160)));
    }

    v27 = v27;
    if ((v27 & 0x8000u) != 0)
    {
      v27 = (-8 * (v430 - *(a2 + 162)));
    }

    v23 = (15 * (v27 + v33)) >> 3;
    goto LABEL_36;
  }

  v28 = a6;
  v29 = v448;
  v30 = v443;
  if (v24 == 3)
  {
    v32 = v26;
    if (v26 < 0)
    {
      v32 = (-8 * (v435 - *(a2 + 160)));
    }

    v27 = v27;
    if ((v27 & 0x8000u) != 0)
    {
      v27 = (-8 * (v430 - *(a2 + 162)));
    }

    v23 = v27 + v32;
  }

LABEL_37:
  v425 = (v420 + 2996);
  v34 = v23 + v20;
  v35 = *v10 + v19 + *(v10 + 24) * v30;
  if (a4)
  {
    v36 = 0;
    v37 = 0;
    v403 = (v12 & ~(v12 >> 31)) + 1;
    LODWORD(v38) = -1;
    v416 = 4;
    v39 = 2;
    v12 = -1;
    v438 = *v10 + v19 + *(v10 + 24) * v30;
    do
    {
      v418 = v39;
      v412 = v37;
      v414 = v36;
      v410 = v12;
      v40 = v425[v37];
      v43 = v30 - (1 << v37) >= *(a2 + 96) && (1 << v37) + v30 <= *(a2 + 100) && v29 - (1 << v37) >= *(a2 + 88) && (1 << v37) + v29 <= *(a2 + 92);
      v426 = v38;
      if (v43)
      {
        v422 = (v40 >> 2);
        v57 = v425[v37];
        if (v422 < 1)
        {
          LODWORD(v47) = -1;
          v86 = v425[v37];
          v72 = v430;
        }

        else
        {
          v407 = v425[v37];
          v58 = 0;
          v59 = 0;
          v47 = 0xFFFFFFFFLL;
          v60 = v416;
          v61 = v39;
          do
          {
            v62 = v47;
            v63 = v22;
            v64 = 0;
            v65 = *(a2 + 16);
            v66 = *(a2 + 24);
            v67 = *(a2 + 80);
            v460 = 0u;
            v461 = 0u;
            v68 = *v66;
            v69 = *(v66 + 6);
            do
            {
              v460.i64[v64] = v35 + *(v67 + v60 + v64 * 8);
              ++v64;
            }

            while (v64 != 4);
            (*(a2 + 208))(v68, v69, &v460, *(v65 + 24), &v457);
            v70 = 0;
            v71 = (v67 + v61);
            v28 = a6;
            LODWORD(v29) = v448;
            v30 = v443;
            v22 = v63;
            v72 = v430;
            v25 = v435;
            v47 = v62;
            do
            {
              v73 = *(&v457 + v70);
              if (v34 > v73)
              {
                v74 = *(v71 - 1) + v435;
                v75 = *v71 + v430;
                v76 = *(a2 + 164);
                LOWORD(v77) = 8 * (v74 - *(a2 + 160));
                LOWORD(v78) = 8 * (v75 - *(a2 + 162));
                if (v76 > 1)
                {
                  v77 = v77;
                  if ((v77 & 0x8000u) == 0)
                  {
                    v81 = v77;
                  }

                  else
                  {
                    v81 = (-8 * (v74 - *(a2 + 160)));
                  }

                  v78 = v78;
                  if ((v78 & 0x8000u) == 0)
                  {
                    v82 = v78;
                  }

                  else
                  {
                    v82 = (-8 * (v75 - *(a2 + 162)));
                  }

                  v83 = (15 * (v82 + v81)) >> 3;
                  if ((v77 & 0x8000u) != 0)
                  {
                    v77 = (-8 * (v74 - *(a2 + 160)));
                  }

                  if ((v78 & 0x8000u) != 0)
                  {
                    v78 = (-8 * (v75 - *(a2 + 162)));
                  }

                  v84 = v78 + v77;
                  if (v76 != 3)
                  {
                    v84 = 0;
                  }

                  if (v76 == 2)
                  {
                    v80 = v83;
                  }

                  else
                  {
                    v80 = v84;
                  }
                }

                else if (*(a2 + 164))
                {
                  v77 = v77;
                  if ((v77 & 0x8000u) != 0)
                  {
                    v77 = (-8 * (v74 - *(a2 + 160)));
                  }

                  v78 = v78;
                  if ((v78 & 0x8000u) != 0)
                  {
                    v78 = (-8 * (v75 - *(a2 + 162)));
                  }

                  v79 = 4 * (v78 + v77);
                  if (v76 == 1)
                  {
                    v80 = v79;
                  }

                  else
                  {
                    v80 = 0;
                  }
                }

                else
                {
                  v80 = ((*(*(a2 + 176) + 4 * (8 * (v74 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v75 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v75 - *(a2 + 162))) != 0)) | (8 * ((8 * (v74 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                }

                v85 = v80 + v73;
                if (v85 < v34)
                {
                  *a6 = (*(v71 - 1) + v435) | (v75 << 16);
                  v47 = (v58 + v70);
                  v22 = v73;
                  v34 = v85;
                }
              }

              v71 += 4;
              ++v70;
            }

            while (v70 != 4);
            ++v59;
            v60 += 32;
            v58 += 4;
            v61 += 32;
            v35 = v438;
          }

          while (v59 != v422);
          v86 = v425[v412];
          v39 = v418;
          v57 = v407;
        }

        v87 = -v86 < 0;
        v88 = -v86 & 3;
        v89 = v86 & 3;
        if (v87)
        {
          v90 = v89;
        }

        else
        {
          v90 = -v88;
        }

        v91 = v57 & 0xFFFFFFFC;
        v36 = v414;
        if (v91 < v90)
        {
          v92 = *(a2 + 80);
          v408 = *(a2 + 24);
          v399 = *(a2 + 16);
          v93 = (v92 + v416 + 8 * v91);
          v94 = (v92 + v414 + 8 * v91);
          v401 = v90;
          do
          {
            if (*(a2 + 88) <= (v94[1] + v72))
            {
              v95 = v94[1] + v72;
              if (*(a2 + 92) >= v95)
              {
                v96 = *v94 + v25;
                if (*(a2 + 96) <= v96 && *(a2 + 100) >= v96)
                {
                  v396 = v94[1] + v72;
                  v423 = v47;
                  v97 = (*(a2 + 200))(*v408, *(v408 + 24), v35 + *v93, *(v399 + 24));
                  if (v34 <= v97)
                  {
                    v28 = a6;
                    LODWORD(v29) = v448;
                    v30 = v443;
                    v35 = v438;
                    v25 = v435;
                    v36 = v414;
                    v39 = v418;
                    LODWORD(v47) = v423;
                    v90 = v401;
                  }

                  else
                  {
                    v98 = 0;
                    v99 = *(a2 + 164);
                    LOWORD(v100) = 8 * (v96 - *(a2 + 160));
                    LOWORD(v101) = 8 * (v95 - *(a2 + 162));
                    v28 = a6;
                    LODWORD(v29) = v448;
                    v30 = v443;
                    LODWORD(v47) = v423;
                    v90 = v401;
                    if (v99 > 1)
                    {
                      v35 = v438;
                      v25 = v435;
                      if (v99 == 2)
                      {
                        v100 = v100;
                        if ((v100 & 0x8000u) != 0)
                        {
                          v100 = (-8 * (v96 - *(a2 + 160)));
                        }

                        v101 = v101;
                        if ((v101 & 0x8000u) != 0)
                        {
                          v101 = (-8 * (v95 - *(a2 + 162)));
                        }

                        v98 = (15 * (v101 + v100)) >> 3;
                      }

                      else if (v99 == 3)
                      {
                        v100 = v100;
                        if ((v100 & 0x8000u) != 0)
                        {
                          v100 = (-8 * (v96 - *(a2 + 160)));
                        }

                        v101 = v101;
                        if ((v101 & 0x8000u) != 0)
                        {
                          v101 = (-8 * (v95 - *(a2 + 162)));
                        }

                        v98 = v101 + v100;
                      }
                    }

                    else
                    {
                      v35 = v438;
                      v25 = v435;
                      if (*(a2 + 164))
                      {
                        if (v99 == 1)
                        {
                          v100 = v100;
                          if ((v100 & 0x8000u) != 0)
                          {
                            v100 = (-8 * (v96 - *(a2 + 160)));
                          }

                          v101 = v101;
                          if ((v101 & 0x8000u) != 0)
                          {
                            v101 = (-8 * (v95 - *(a2 + 162)));
                          }

                          v98 = 4 * (v101 + v100);
                        }
                      }

                      else
                      {
                        v98 = ((*(*(a2 + 176) + 4 * (8 * (v96 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v95 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v95 - *(a2 + 162))) != 0)) | (8 * ((8 * (v96 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                      }
                    }

                    v102 = v98 + v97;
                    v36 = v414;
                    v39 = v418;
                    if (v102 < v34)
                    {
                      *a6 = v96 | (v396 << 16);
                      v34 = v102;
                      v22 = v97;
                      LODWORD(v47) = v91;
                    }
                  }
                }
              }
            }

            ++v91;
            v93 += 2;
            v94 += 4;
          }

          while (v90 != v91);
        }
      }

      else if (v40 < 1)
      {
        LODWORD(v47) = -1;
      }

      else
      {
        v44 = v425[v37];
        v45 = 0;
        v46 = *(a2 + 80);
        LODWORD(v47) = -1;
        v398 = *(a2 + 16);
        v400 = *(a2 + 24);
        v406 = v44;
        do
        {
          v48 = *(v46 + v39) + v430;
          if (*(a2 + 88) <= v48)
          {
            v49 = *(v46 + v39) + v430;
            if (*(a2 + 92) >= v48)
            {
              v50 = *(v46 + v36) + v25;
              if (*(a2 + 96) <= v50 && *(a2 + 100) >= v50)
              {
                v421 = v47;
                v51 = (*(a2 + 200))(*v400, *(v400 + 24), v35 + *(v46 + v416), *(v398 + 24));
                if (v34 <= v51)
                {
                  v28 = a6;
                  LODWORD(v29) = v448;
                  v30 = v443;
                  v35 = v438;
                  v25 = v435;
                  v36 = v414;
                  v39 = v418;
                  LODWORD(v47) = v421;
                  v44 = v406;
                }

                else
                {
                  v52 = 0;
                  v53 = *(a2 + 164);
                  LOWORD(v54) = 8 * (v50 - *(a2 + 160));
                  LOWORD(v55) = 8 * (v48 - *(a2 + 162));
                  v28 = a6;
                  LODWORD(v29) = v448;
                  v30 = v443;
                  LODWORD(v47) = v421;
                  v44 = v406;
                  if (v53 > 1)
                  {
                    v35 = v438;
                    v25 = v435;
                    if (v53 == 2)
                    {
                      v54 = v54;
                      if ((v54 & 0x8000u) != 0)
                      {
                        v54 = (-8 * (v50 - *(a2 + 160)));
                      }

                      v55 = v55;
                      if ((v55 & 0x8000u) != 0)
                      {
                        v55 = (-8 * (v49 - *(a2 + 162)));
                      }

                      v52 = (15 * (v55 + v54)) >> 3;
                    }

                    else if (v53 == 3)
                    {
                      v54 = v54;
                      if ((v54 & 0x8000u) != 0)
                      {
                        v54 = (-8 * (v50 - *(a2 + 160)));
                      }

                      v55 = v55;
                      if ((v55 & 0x8000u) != 0)
                      {
                        v55 = (-8 * (v49 - *(a2 + 162)));
                      }

                      v52 = v55 + v54;
                    }
                  }

                  else
                  {
                    v35 = v438;
                    v25 = v435;
                    if (*(a2 + 164))
                    {
                      if (v53 == 1)
                      {
                        v54 = v54;
                        if ((v54 & 0x8000u) != 0)
                        {
                          v54 = (-8 * (v50 - *(a2 + 160)));
                        }

                        v55 = v55;
                        if ((v55 & 0x8000u) != 0)
                        {
                          v55 = (-8 * (v49 - *(a2 + 162)));
                        }

                        v52 = 4 * (v55 + v54);
                      }
                    }

                    else
                    {
                      v52 = ((*(*(a2 + 176) + 4 * (8 * (v50 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v49 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v49 - *(a2 + 162))) != 0)) | (8 * ((8 * (v50 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                    }
                  }

                  v56 = v52 + v51;
                  v36 = v414;
                  v39 = v418;
                  if (v56 < v34)
                  {
                    *a6 = v50 | (v48 << 16);
                    v34 = v56;
                    v22 = v51;
                    LODWORD(v47) = v45;
                  }
                }
              }
            }
          }

          ++v45;
          v46 += 8;
        }

        while (v44 != v45);
      }

      if (v47 == -1)
      {
        v12 = v410;
      }

      else
      {
        v12 = v412;
      }

      if (v47 == -1)
      {
        v38 = v426;
      }

      else
      {
        v38 = v47;
      }

      v37 = v412 + 1;
      v416 += 136;
      v39 += 136;
      v36 += 136;
    }

    while (v412 + 1 != v403);
    if (v12 == -1)
    {
LABEL_421:
      v230 = 1;
      goto LABEL_422;
    }

    v103 = (v420 + 136 * v12 + 8 * v38);
    v30 += *v103;
    v29 = (v29 + v103[1]);
    v35 += *(v103 + 1);
  }

  else
  {
    v38 = 0xFFFFFFFFLL;
  }

  if (v395)
  {
    v104 = v393 == 4;
  }

  else
  {
    v104 = 0;
  }

  v105 = v104;
  v411 = v12;
  v413 = v105;
  if (v12 >= v105)
  {
    v107 = 17 * v12;
    v108 = 136 * v12;
    v109 = (8 * (v107 & 0x1FFFFFFFFFLL)) | 4;
    v25 = (8 * (v107 & 0x1FFFFFFFFFLL)) | 2;
    v409 = v12;
    v106 = v12;
    while (1)
    {
      v110 = v106;
      v431 = 1 << v106;
      v436 = v22;
      v415 = v108;
      v417 = v25;
      v419 = v109;
      v424 = v106;
      if (a4)
      {
        if (v106 == v409)
        {
          break;
        }
      }

      v113 = v425[v106];
      v116 = (v30 - v431) >= *(a2 + 96) && (v431 + v30) <= *(a2 + 100) && (v29 - v431) >= *(a2 + 88) && (v431 + v29) <= *(a2 + 92);
      v449 = v29;
      v444 = v30;
      v439 = v35;
      if (v116)
      {
        v131 = (v113 >> 2);
        v132 = v425[v106];
        if (v131 < 1)
        {
          v111 = 0xFFFFFFFFLL;
          v158 = v425[v106];
        }

        else
        {
          v428 = v425[v106];
          v133 = 0;
          v134 = 0;
          v111 = 0xFFFFFFFFLL;
          v135 = v25;
          do
          {
            v136 = 0;
            v137 = *(a2 + 16);
            v138 = *(a2 + 24);
            v139 = *(a2 + 80);
            v460 = 0u;
            v461 = 0u;
            v140 = *v138;
            v141 = *(v138 + 6);
            do
            {
              v460.i64[v136] = v35 + *(v139 + v109 + v136 * 8);
              ++v136;
            }

            while (v136 != 4);
            (*(a2 + 208))(v140, v141, &v460, *(v137 + 24), &v457);
            v142 = 0;
            v143 = (v139 + v135);
            v144 = v133;
            v28 = a6;
            v29 = v449;
            v30 = v444;
            do
            {
              v145 = *(&v457 + v142);
              if (v34 > v145)
              {
                v146 = *(v143 - 1) + v444;
                v147 = *v143 + v449;
                v148 = *(a2 + 164);
                LOWORD(v149) = 8 * (v146 - *(a2 + 160));
                LOWORD(v150) = 8 * (v147 - *(a2 + 162));
                if (v148 > 1)
                {
                  v149 = v149;
                  if ((v149 & 0x8000u) == 0)
                  {
                    v153 = v149;
                  }

                  else
                  {
                    v153 = (-8 * (v146 - *(a2 + 160)));
                  }

                  v150 = v150;
                  if ((v150 & 0x8000u) == 0)
                  {
                    v154 = v150;
                  }

                  else
                  {
                    v154 = (-8 * (v147 - *(a2 + 162)));
                  }

                  v155 = (15 * (v154 + v153)) >> 3;
                  if ((v149 & 0x8000u) != 0)
                  {
                    v149 = (-8 * (v146 - *(a2 + 160)));
                  }

                  if ((v150 & 0x8000u) != 0)
                  {
                    v150 = (-8 * (v147 - *(a2 + 162)));
                  }

                  v156 = v150 + v149;
                  if (v148 != 3)
                  {
                    v156 = 0;
                  }

                  if (v148 == 2)
                  {
                    v152 = v155;
                  }

                  else
                  {
                    v152 = v156;
                  }
                }

                else if (*(a2 + 164))
                {
                  v149 = v149;
                  if ((v149 & 0x8000u) != 0)
                  {
                    v149 = (-8 * (v146 - *(a2 + 160)));
                  }

                  v150 = v150;
                  if ((v150 & 0x8000u) != 0)
                  {
                    v150 = (-8 * (v147 - *(a2 + 162)));
                  }

                  v151 = 4 * (v150 + v149);
                  if (v148 == 1)
                  {
                    v152 = v151;
                  }

                  else
                  {
                    v152 = 0;
                  }
                }

                else
                {
                  v152 = ((*(*(a2 + 176) + 4 * (8 * (v146 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v147 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v147 - *(a2 + 162))) != 0)) | (8 * ((8 * (v146 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                }

                v157 = v152 + v145;
                if (v157 < v34)
                {
                  *a6 = (*(v143 - 1) + v444) | (v147 << 16);
                  v436 = v145;
                  v34 = v157;
                  v111 = v144;
                }
              }

              v143 += 4;
              v142 += 4;
              v144 = (v144 + 1);
            }

            while (v142 != 16);
            ++v134;
            v109 += 32;
            v133 = (v133 + 4);
            v135 += 32;
            v35 = v439;
          }

          while (v134 != v131);
          v158 = v425[v424];
          v109 = v419;
          v132 = v428;
        }

        v427 = v38;
        v87 = -v158 < 0;
        v159 = -v158 & 3;
        v160 = v158 & 3;
        if (v87)
        {
          v161 = v160;
        }

        else
        {
          v161 = -v159;
        }

        v162 = v132 & 0xFFFFFFFC;
        v112 = v431;
        if (v162 < v161)
        {
          v163 = *(a2 + 80);
          v402 = *(a2 + 16);
          v405 = *(a2 + 24);
          v164 = (v163 + v109 + 8 * v162);
          v165 = (v163 + v415 + 8 * v162);
          do
          {
            v166 = v165[1] + v29;
            if (*(a2 + 88) <= v166)
            {
              v167 = v165[1] + v29;
              if (*(a2 + 92) >= v166)
              {
                v168 = *v165 + v30;
                if (*(a2 + 96) <= v168 && *(a2 + 100) >= v168)
                {
                  v169 = (*(a2 + 200))(*v405, *(v405 + 24), v35 + *v164, *(v402 + 24), v112);
                  if (v34 <= v169)
                  {
                    v28 = a6;
                    v29 = v449;
                    v30 = v444;
                    v35 = v439;
                    v112 = v431;
                  }

                  else
                  {
                    v170 = 0;
                    v171 = *(a2 + 164);
                    LOWORD(v172) = 8 * (v168 - *(a2 + 160));
                    LOWORD(v173) = 8 * (v166 - *(a2 + 162));
                    v28 = a6;
                    v29 = v449;
                    v112 = v431;
                    if (v171 > 1)
                    {
                      v30 = v444;
                      v35 = v439;
                      if (v171 == 2)
                      {
                        v172 = v172;
                        if ((v172 & 0x8000u) != 0)
                        {
                          v172 = (-8 * (v168 - *(a2 + 160)));
                        }

                        v173 = v173;
                        if ((v173 & 0x8000u) != 0)
                        {
                          v173 = (-8 * (v167 - *(a2 + 162)));
                        }

                        v170 = (15 * (v173 + v172)) >> 3;
                      }

                      else if (v171 == 3)
                      {
                        v172 = v172;
                        if ((v172 & 0x8000u) != 0)
                        {
                          v172 = (-8 * (v168 - *(a2 + 160)));
                        }

                        v173 = v173;
                        if ((v173 & 0x8000u) != 0)
                        {
                          v173 = (-8 * (v167 - *(a2 + 162)));
                        }

                        v170 = v173 + v172;
                      }
                    }

                    else
                    {
                      v30 = v444;
                      v35 = v439;
                      if (*(a2 + 164))
                      {
                        if (v171 == 1)
                        {
                          v172 = v172;
                          if ((v172 & 0x8000u) != 0)
                          {
                            v172 = (-8 * (v168 - *(a2 + 160)));
                          }

                          v173 = v173;
                          if ((v173 & 0x8000u) != 0)
                          {
                            v173 = (-8 * (v167 - *(a2 + 162)));
                          }

                          v170 = 4 * (v173 + v172);
                        }
                      }

                      else
                      {
                        v170 = ((*(*(a2 + 176) + 4 * (8 * (v168 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v167 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v167 - *(a2 + 162))) != 0)) | (8 * ((8 * (v168 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                      }
                    }

                    if (v170 + v169 < v34)
                    {
                      *a6 = v168 | (v166 << 16);
                      v34 = v170 + v169;
                      v436 = v169;
                      v111 = v162;
                    }
                  }
                }
              }
            }

            v162 = (v162 + 1);
            v164 += 2;
            v165 += 4;
          }

          while (v161 != v162);
        }
      }

      else
      {
        if (v113 < 1)
        {
          goto LABEL_419;
        }

        v117 = v425[v106];
        v427 = v38;
        v118 = 0;
        v119 = *(a2 + 24);
        v404 = *(a2 + 16);
        v120 = (*(a2 + 80) + v109);
        v111 = 0xFFFFFFFFLL;
        v112 = v431;
        do
        {
          v121 = *(v120 - 1) + v29;
          if (*(a2 + 88) <= v121)
          {
            v122 = *(v120 - 1) + v29;
            if (*(a2 + 92) >= v121)
            {
              v123 = *(v120 - 2) + v30;
              if (*(a2 + 96) <= v123 && *(a2 + 100) >= v123)
              {
                v124 = v117;
                v125 = (*(a2 + 200))(*v119, *(v119 + 24), v35 + *v120, *(v404 + 24), v112);
                if (v34 <= v125)
                {
                  v28 = a6;
                  v29 = v449;
                  v30 = v444;
                  v35 = v439;
                  v112 = v431;
                  v117 = v124;
                }

                else
                {
                  v126 = *(a2 + 164);
                  LOWORD(v127) = 8 * (v123 - *(a2 + 160));
                  LOWORD(v128) = 8 * (v121 - *(a2 + 162));
                  v28 = a6;
                  v29 = v449;
                  v112 = v431;
                  if (v126 > 1)
                  {
                    v30 = v444;
                    v35 = v439;
                    v127 = v127;
                    if (v126 == 2)
                    {
                      if ((v127 & 0x8000u) != 0)
                      {
                        v127 = (-8 * (v123 - *(a2 + 160)));
                      }

                      v128 = v128;
                      if ((v128 & 0x8000u) != 0)
                      {
                        v128 = (-8 * (v122 - *(a2 + 162)));
                      }

                      v129 = (15 * (v128 + v127)) >> 3;
                    }

                    else
                    {
                      if ((v127 & 0x8000u) != 0)
                      {
                        v127 = (-8 * (v123 - *(a2 + 160)));
                      }

                      v128 = v128;
                      if ((v128 & 0x8000u) != 0)
                      {
                        v128 = (-8 * (v122 - *(a2 + 162)));
                      }

                      v129 = v128 + v127;
                      if (v126 != 3)
                      {
                        v129 = 0;
                      }
                    }
                  }

                  else
                  {
                    v30 = v444;
                    v35 = v439;
                    if (*(a2 + 164))
                    {
                      if (v126 == 1)
                      {
                        v127 = v127;
                        if ((v127 & 0x8000u) != 0)
                        {
                          v127 = (-8 * (v123 - *(a2 + 160)));
                        }

                        v128 = v128;
                        if ((v128 & 0x8000u) != 0)
                        {
                          v128 = (-8 * (v122 - *(a2 + 162)));
                        }

                        v129 = 4 * (v128 + v127);
                      }

                      else
                      {
                        v129 = 0;
                      }
                    }

                    else
                    {
                      v129 = ((*(*(a2 + 176) + 4 * (8 * (v123 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v122 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v122 - *(a2 + 162))) != 0)) | (8 * ((8 * (v123 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                    }
                  }

                  v117 = v124;
                  v130 = v129 + v125;
                  if (v130 < v34)
                  {
                    *a6 = v123 | (v121 << 16);
                    v34 = v130;
                    v436 = v125;
                    v111 = v118;
                  }
                }
              }
            }
          }

          ++v118;
          v120 += 2;
        }

        while (v117 != v118);
      }

      v22 = v436;
      if (v111 != -1)
      {
        v174 = (v420 + 136 * v424 + 8 * v111);
        v30 += *v174;
        v29 = (v29 + v174[1]);
        v35 += *(v174 + 1);
LABEL_296:
        v175 = v111;
        v176 = v424;
        while (1)
        {
          v177 = v425[v176];
          v178 = v175 ? v175 : v425[v176];
          v179 = v178 - 1;
          v454 = v179;
          v455 = v175;
          v180 = v175 == v177 - 1 ? 0 : v175 + 1;
          v456 = v180;
          v182 = *(a2 + 16);
          v181 = *(a2 + 24);
          v183 = *(a2 + 80) + 136 * v176;
          v450 = v29;
          v445 = v30;
          v440 = v35;
          v427 = v175;
          if (v30 - v112 < *(a2 + 96) || v30 + v112 > *(a2 + 100) || v29 - v112 < *(a2 + 88) || v29 + v112 > *(a2 + 92))
          {
            v194 = 0;
            v195 = -1;
            do
            {
              v196 = v183 + 8 * *(&v454 + v194);
              v197 = *(v196 + 2) + v29;
              if (*(a2 + 88) <= v197)
              {
                v198 = *(v196 + 2) + v29;
                if (*(a2 + 92) >= v197)
                {
                  v199 = *v196 + v30;
                  if (*(a2 + 96) <= v199 && *(a2 + 100) >= v199)
                  {
                    v200 = (*(a2 + 200))(*v181, *(v181 + 6), v35 + *(v196 + 4), *(v182 + 24));
                    if (v34 <= v200)
                    {
                      v28 = a6;
                      v29 = v450;
                      v30 = v445;
                      v35 = v440;
                      LODWORD(v112) = v431;
                    }

                    else
                    {
                      v201 = 0;
                      v202 = *(a2 + 164);
                      LOWORD(v203) = 8 * (v199 - *(a2 + 160));
                      LOWORD(v204) = 8 * (v197 - *(a2 + 162));
                      v28 = a6;
                      v29 = v450;
                      LODWORD(v112) = v431;
                      if (v202 > 1)
                      {
                        v30 = v445;
                        v35 = v440;
                        if (v202 == 2)
                        {
                          v203 = v203;
                          if ((v203 & 0x8000u) != 0)
                          {
                            v203 = (-8 * (v199 - *(a2 + 160)));
                          }

                          v204 = v204;
                          if ((v204 & 0x8000u) != 0)
                          {
                            v204 = (-8 * (v198 - *(a2 + 162)));
                          }

                          v201 = (15 * (v204 + v203)) >> 3;
                        }

                        else if (v202 == 3)
                        {
                          v203 = v203;
                          if ((v203 & 0x8000u) != 0)
                          {
                            v203 = (-8 * (v199 - *(a2 + 160)));
                          }

                          v204 = v204;
                          if ((v204 & 0x8000u) != 0)
                          {
                            v204 = (-8 * (v198 - *(a2 + 162)));
                          }

                          v201 = v204 + v203;
                        }
                      }

                      else
                      {
                        v30 = v445;
                        v35 = v440;
                        if (*(a2 + 164))
                        {
                          if (v202 == 1)
                          {
                            v203 = v203;
                            if ((v203 & 0x8000u) != 0)
                            {
                              v203 = (-8 * (v199 - *(a2 + 160)));
                            }

                            v204 = v204;
                            if ((v204 & 0x8000u) != 0)
                            {
                              v204 = (-8 * (v198 - *(a2 + 162)));
                            }

                            v201 = 4 * (v204 + v203);
                          }
                        }

                        else
                        {
                          v201 = ((*(*(a2 + 176) + 4 * (8 * (v199 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v198 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v198 - *(a2 + 162))) != 0)) | (8 * ((8 * (v199 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                        }
                      }

                      if (v201 + v200 < v34)
                      {
                        *a6 = v199 | (v197 << 16);
                        v34 = v201 + v200;
                        v436 = v200;
                        v195 = v194;
                      }
                    }
                  }
                }
              }

              ++v194;
            }

            while (v194 != 3);
          }

          else
          {
            v184 = v183 + 8 * v179;
            v460.i64[0] = v35 + *(v184 + 4);
            v460.i64[1] = v35 + *(v183 + 8 * v175 + 4);
            v461.i64[0] = v35 + *(v183 + 8 * v180 + 4);
            v461.i64[1] = v35;
            (*(a2 + 216))(*v181, *(v181 + 6), &v460, *(v182 + 24), &v457);
            v185 = v457;
            if (v34 <= v457)
            {
              v195 = -1;
              v28 = a6;
              v29 = v450;
              v30 = v445;
              v192 = v436;
              v35 = v440;
              LODWORD(v112) = v431;
            }

            else
            {
              v186 = 0;
              v30 = v445;
              v187 = *v184 + v445;
              v29 = v450;
              v188 = *(v184 + 2) + v450;
              v189 = *(a2 + 164);
              v190 = 8 * (v187 - *(a2 + 160));
              LOWORD(v191) = 8 * (v188 - *(a2 + 162));
              v28 = a6;
              v192 = v436;
              if (v189 > 1)
              {
                v35 = v440;
                LODWORD(v112) = v431;
                if (v189 == 2)
                {
                  v206 = v190;
                  if (v190 < 0)
                  {
                    v206 = (-8 * (v187 - *(a2 + 160)));
                  }

                  v191 = v191;
                  if ((v191 & 0x8000u) != 0)
                  {
                    v191 = (-8 * (v188 - *(a2 + 162)));
                  }

                  v186 = (15 * (v191 + v206)) >> 3;
                }

                else if (v189 == 3)
                {
                  v205 = v190;
                  if (v190 < 0)
                  {
                    v205 = (-8 * (v187 - *(a2 + 160)));
                  }

                  v191 = v191;
                  if ((v191 & 0x8000u) != 0)
                  {
                    v191 = (-8 * (v188 - *(a2 + 162)));
                  }

                  v186 = v191 + v205;
                }
              }

              else
              {
                v35 = v440;
                LODWORD(v112) = v431;
                if (*(a2 + 164))
                {
                  if (v189 == 1)
                  {
                    v193 = v190;
                    if (v190 < 0)
                    {
                      v193 = (-8 * (v187 - *(a2 + 160)));
                    }

                    v191 = v191;
                    if ((v191 & 0x8000u) != 0)
                    {
                      v191 = (-8 * (v188 - *(a2 + 162)));
                    }

                    v186 = 4 * (v191 + v193);
                  }
                }

                else
                {
                  v186 = ((*(*(a2 + 176) + 4 * (8 * (v187 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v188 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v188 - *(a2 + 162))) != 0)) | (8 * ((8 * (v187 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                }
              }

              if (v186 + v457 >= v34)
              {
                v195 = -1;
              }

              else
              {
                v195 = 0;
                *a6 = (*v184 + v445) | (v188 << 16);
                v192 = v185;
                v34 = v186 + v185;
              }
            }

            v207 = v458;
            if (v34 > v458)
            {
              v208 = 0;
              v209 = (v183 + 8 * v175);
              v210 = *v209 + v30;
              v211 = v209[1] + v29;
              v212 = *(a2 + 164);
              v213 = 8 * (v210 - *(a2 + 160));
              LOWORD(v214) = 8 * (v211 - *(a2 + 162));
              if (v212 > 1)
              {
                if (v212 == 2)
                {
                  v217 = v213;
                  if (v213 < 0)
                  {
                    v217 = (-8 * (v210 - *(a2 + 160)));
                  }

                  v214 = v214;
                  if ((v214 & 0x8000u) != 0)
                  {
                    v214 = (-8 * (v211 - *(a2 + 162)));
                  }

                  v208 = (15 * (v214 + v217)) >> 3;
                }

                else if (v212 == 3)
                {
                  v216 = v213;
                  if (v213 < 0)
                  {
                    v216 = (-8 * (v210 - *(a2 + 160)));
                  }

                  v214 = v214;
                  if ((v214 & 0x8000u) != 0)
                  {
                    v214 = (-8 * (v211 - *(a2 + 162)));
                  }

                  v208 = v214 + v216;
                }
              }

              else if (*(a2 + 164))
              {
                if (v212 == 1)
                {
                  v215 = v213;
                  if (v213 < 0)
                  {
                    v215 = (-8 * (v210 - *(a2 + 160)));
                  }

                  v214 = v214;
                  if ((v214 & 0x8000u) != 0)
                  {
                    v214 = (-8 * (v211 - *(a2 + 162)));
                  }

                  v208 = 4 * (v214 + v215);
                }
              }

              else
              {
                v208 = ((*(*(a2 + 176) + 4 * (8 * (v210 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v211 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v211 - *(a2 + 162))) != 0)) | (8 * ((8 * (v210 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
              }

              if (v208 + v458 < v34)
              {
                *v28 = v210 | (v211 << 16);
                v195 = 1;
                v192 = v207;
                v34 = v208 + v207;
              }
            }

            v218 = v459;
            if (v34 > v459)
            {
              v219 = 0;
              v220 = (v183 + 8 * v180);
              v221 = *v220 + v30;
              v222 = v220[1] + v29;
              v223 = *(a2 + 164);
              v224 = 8 * (v221 - *(a2 + 160));
              LOWORD(v225) = 8 * (v222 - *(a2 + 162));
              if (v223 > 1)
              {
                if (v223 == 2)
                {
                  v228 = v224;
                  if (v224 < 0)
                  {
                    v228 = (-8 * (v221 - *(a2 + 160)));
                  }

                  v225 = v225;
                  if ((v225 & 0x8000u) != 0)
                  {
                    v225 = (-8 * (v222 - *(a2 + 162)));
                  }

                  v219 = (15 * (v225 + v228)) >> 3;
                }

                else if (v223 == 3)
                {
                  v227 = v224;
                  if (v224 < 0)
                  {
                    v227 = (-8 * (v221 - *(a2 + 160)));
                  }

                  v225 = v225;
                  if ((v225 & 0x8000u) != 0)
                  {
                    v225 = (-8 * (v222 - *(a2 + 162)));
                  }

                  v219 = v225 + v227;
                }
              }

              else if (*(a2 + 164))
              {
                if (v223 == 1)
                {
                  v226 = v224;
                  if (v224 < 0)
                  {
                    v226 = (-8 * (v221 - *(a2 + 160)));
                  }

                  v225 = v225;
                  if ((v225 & 0x8000u) != 0)
                  {
                    v225 = (-8 * (v222 - *(a2 + 162)));
                  }

                  v219 = 4 * (v225 + v226);
                }
              }

              else
              {
                v219 = ((*(*(a2 + 176) + 4 * (8 * (v221 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v222 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v222 - *(a2 + 162))) != 0)) | (8 * ((8 * (v221 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
              }

              if (v219 + v459 < v34)
              {
                *v28 = v221 | (v222 << 16);
                v195 = 2;
                v192 = v218;
                v34 = v219 + v218;
              }
            }

            v436 = v192;
          }

          if (v195 == -1)
          {
            break;
          }

          v176 = v424;
          v229 = (v420 + 136 * v424 + 8 * *(&v454 + v195));
          v30 += *v229;
          v29 = (v29 + v229[1]);
          v35 += *(v229 + 1);
          v175 = *(&v454 + v195);
        }

        v22 = v436;
      }

      v38 = v427;
      v108 = v415;
      v25 = v417;
      v109 = v419;
      v110 = v424;
LABEL_419:
      v106 = v110 - 1;
      v109 -= 136;
      v25 -= 136;
      v108 -= 136;
      if (v110 <= v413)
      {
        goto LABEL_420;
      }
    }

    v111 = v38;
    LODWORD(v112) = 1 << v106;
    goto LABEL_296;
  }

  LODWORD(v106) = v12;
LABEL_420:
  if (v106)
  {
    goto LABEL_421;
  }

  *v395 = v22;
  if (a4 && !v411)
  {
LABEL_433:
    *(v28 + 1) = v29;
    v231 = v28 + 1;
    *v28 = v30;
    v235.i32[0] = v30;
    v235.i32[1] = v29;
    goto LABEL_434;
  }

  v246 = v22;
  v247 = *(a2 + 80);
  v452 = v29;
  v446 = v30;
  v441 = v35;
  if (v30 <= *(a2 + 96) || v30 >= *(a2 + 100) || v29 <= *(a2 + 88) || v29 >= *(a2 + 92))
  {
    v283 = 0;
    v284 = *(a2 + 24);
    v432 = *(a2 + 16);
    v285 = v247 + 1;
    LODWORD(v257) = -1;
    do
    {
      v286 = *(v285 - 1) + v29;
      if (*(a2 + 88) <= v286 && *(a2 + 92) >= v286)
      {
        v287 = *(v285 - 2) + v30;
        if (*(a2 + 96) <= v287 && *(a2 + 100) >= v287)
        {
          v288 = (*(a2 + 200))(*v284, *(v284 + 24), v35 + *v285, *(v432 + 24), v25);
          *(v395 + 4 + 4 * v283) = v288;
          if (v34 <= v288)
          {
            v28 = a6;
            LODWORD(v29) = v452;
            v30 = v446;
            v35 = v441;
          }

          else
          {
            v289 = 0;
            v290 = *(a2 + 164);
            LOWORD(v291) = 8 * (v287 - *(a2 + 160));
            LOWORD(v292) = 8 * (v286 - *(a2 + 162));
            v28 = a6;
            LODWORD(v29) = v452;
            if (v290 > 1)
            {
              v30 = v446;
              v35 = v441;
              if (v290 == 2)
              {
                v291 = v291;
                if ((v291 & 0x8000u) != 0)
                {
                  v291 = (-8 * (v287 - *(a2 + 160)));
                }

                v292 = v292;
                if ((v292 & 0x8000u) != 0)
                {
                  v292 = (-8 * (v286 - *(a2 + 162)));
                }

                v289 = (15 * (v292 + v291)) >> 3;
              }

              else if (v290 == 3)
              {
                v291 = v291;
                if ((v291 & 0x8000u) != 0)
                {
                  v291 = (-8 * (v287 - *(a2 + 160)));
                }

                v292 = v292;
                if ((v292 & 0x8000u) != 0)
                {
                  v292 = (-8 * (v286 - *(a2 + 162)));
                }

                v289 = v292 + v291;
              }
            }

            else
            {
              v30 = v446;
              v35 = v441;
              if (*(a2 + 164))
              {
                if (v290 == 1)
                {
                  v291 = v291;
                  if ((v291 & 0x8000u) != 0)
                  {
                    v291 = (-8 * (v287 - *(a2 + 160)));
                  }

                  v292 = v292;
                  if ((v292 & 0x8000u) != 0)
                  {
                    v292 = (-8 * (v286 - *(a2 + 162)));
                  }

                  v289 = 4 * (v292 + v291);
                }
              }

              else
              {
                v289 = ((*(*(a2 + 176) + 4 * (8 * (v287 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v286 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v286 - *(a2 + 162))) != 0)) | (8 * ((8 * (v287 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
              }
            }

            if (v289 + v288 < v34)
            {
              *a6 = v287 | (v286 << 16);
              v34 = v289 + v288;
              v246 = v288;
              LODWORD(v257) = v283;
            }
          }
        }
      }

      ++v283;
      v285 += 2;
    }

    while (v283 != 4);
  }

  else
  {
    v249 = *(a2 + 16);
    v248 = *(a2 + 24);
    v460 = 0u;
    v461 = 0u;
    v250 = *v248;
    v251 = *(v248 + 6);
    v252.i32[0] = v247[5];
    v252.i32[1] = v247[7];
    v253.i32[0] = v247[1];
    v253.i32[1] = v247[3];
    v254 = vdupq_n_s64(v35);
    v460 = vaddw_s32(v254, v253);
    v461 = vaddw_s32(v254, v252);
    (*(a2 + 208))(v250, v251, &v460, *(v249 + 24), v395 + 4);
    v30 = v446;
    LODWORD(v29) = v452;
    v28 = a6;
    v255 = 0;
    v256 = v247 + 1;
    LODWORD(v257) = -1;
    do
    {
      v258 = *(v395 + 4 + 4 * v255);
      if (v34 > v258)
      {
        v259 = *(v256 - 1) + v446;
        v260 = *v256 + v452;
        v261 = *(a2 + 164);
        LOWORD(v262) = 8 * (v259 - *(a2 + 160));
        LOWORD(v263) = 8 * (v260 - *(a2 + 162));
        if (v261 > 1)
        {
          v262 = v262;
          if ((v262 & 0x8000u) == 0)
          {
            v266 = v262;
          }

          else
          {
            v266 = (-8 * (v259 - *(a2 + 160)));
          }

          v263 = v263;
          if ((v263 & 0x8000u) == 0)
          {
            v267 = v263;
          }

          else
          {
            v267 = (-8 * (v260 - *(a2 + 162)));
          }

          v268 = (15 * (v267 + v266)) >> 3;
          if ((v262 & 0x8000u) != 0)
          {
            v262 = (-8 * (v259 - *(a2 + 160)));
          }

          if ((v263 & 0x8000u) != 0)
          {
            v263 = (-8 * (v260 - *(a2 + 162)));
          }

          v269 = v263 + v262;
          if (v261 != 3)
          {
            v269 = 0;
          }

          if (v261 == 2)
          {
            v265 = v268;
          }

          else
          {
            v265 = v269;
          }
        }

        else if (*(a2 + 164))
        {
          v262 = v262;
          if ((v262 & 0x8000u) != 0)
          {
            v262 = (-8 * (v259 - *(a2 + 160)));
          }

          v263 = v263;
          if ((v263 & 0x8000u) != 0)
          {
            v263 = (-8 * (v260 - *(a2 + 162)));
          }

          v264 = 4 * (v263 + v262);
          if (v261 == 1)
          {
            v265 = v264;
          }

          else
          {
            v265 = 0;
          }
        }

        else
        {
          v265 = ((*(*(a2 + 176) + 4 * (8 * (v259 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v260 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v260 - *(a2 + 162))) != 0)) | (8 * ((8 * (v259 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
        }

        v270 = v265 + v258;
        if (v270 < v34)
        {
          *a6 = (*(v256 - 1) + v446) | (v260 << 16);
          v246 = v258;
          v34 = v270;
          LODWORD(v257) = v255;
        }
      }

      v256 += 4;
      ++v255;
    }

    while (v255 != 4);
    v35 = v441;
  }

  if (v257 != -1)
  {
    v293 = (v420 + 8 * v257);
    v30 += *v293;
    LODWORD(v29) = v29 + v293[1];
    v294 = v35 + *(v293 + 1);
    v295 = v395 + 4;
    v296 = v246;
    while (1)
    {
      v297 = *v425;
      if (v257)
      {
        v298 = v257;
      }

      else
      {
        v298 = *v425;
      }

      v299 = v298 - 1;
      v454 = v299;
      v455 = v257;
      if (v257 == v297 - 1)
      {
        v300 = 0;
      }

      else
      {
        v300 = v257 + 1;
      }

      v456 = v300;
      *&v21 = 0x8000000080000000;
      *(&v21 + 1) = 0x8000000080000000;
      *(v395 + 4) = v21;
      v301 = (v257 + 2) & 3;
      if (v257 + 2 <= 0)
      {
        v301 = -(-(v257 + 2) & 3);
      }

      *(v295 + 4 * v301) = *v395;
      *v395 = v296;
      v303 = *(a2 + 16);
      v302 = *(a2 + 24);
      v304 = *(a2 + 80);
      v453 = v29;
      v447 = v30;
      v442 = v294;
      if (v30 <= *(a2 + 96) || v30 >= *(a2 + 100) || v29 <= *(a2 + 88) || v29 >= *(a2 + 92))
      {
        v314 = 0;
        v315 = -1;
        v429 = *(a2 + 16);
        v433 = *(a2 + 24);
        do
        {
          v316 = v296;
          v317 = *(&v454 + v314);
          v318 = v304 + 8 * v317;
          v319 = *(v318 + 2) + v29;
          if (*(a2 + 88) <= v319 && (v320 = *(v318 + 2) + v29, *(a2 + 92) >= v319) && (v321 = *v318 + v30, *(a2 + 96) <= v321) && *(a2 + 100) >= v321)
          {
            v437 = v315;
            v322 = (*(a2 + 200))(*v302, *(v302 + 6), v294 + *(v318 + 4), *(v303 + 24));
            *(v295 + 4 * v317) = v322;
            if (v34 <= v322)
            {
              v302 = v433;
              v28 = a6;
              LODWORD(v29) = v453;
              v30 = v447;
              v296 = v316;
              v294 = v442;
              v315 = v437;
              v303 = v429;
            }

            else
            {
              v323 = 0;
              v324 = *(a2 + 164);
              LOWORD(v325) = 8 * (v321 - *(a2 + 160));
              LOWORD(v326) = 8 * (v319 - *(a2 + 162));
              v28 = a6;
              v296 = v316;
              v315 = v437;
              if (v324 > 1)
              {
                LODWORD(v29) = v453;
                v30 = v447;
                v294 = v442;
                v303 = v429;
                if (v324 == 2)
                {
                  v325 = v325;
                  if ((v325 & 0x8000u) != 0)
                  {
                    v325 = (-8 * (v321 - *(a2 + 160)));
                  }

                  v326 = v326;
                  if ((v326 & 0x8000u) != 0)
                  {
                    v326 = (-8 * (v320 - *(a2 + 162)));
                  }

                  v323 = (15 * (v326 + v325)) >> 3;
                }

                else if (v324 == 3)
                {
                  v325 = v325;
                  if ((v325 & 0x8000u) != 0)
                  {
                    v325 = (-8 * (v321 - *(a2 + 160)));
                  }

                  v326 = v326;
                  if ((v326 & 0x8000u) != 0)
                  {
                    v326 = (-8 * (v320 - *(a2 + 162)));
                  }

                  v323 = v326 + v325;
                }
              }

              else
              {
                LODWORD(v29) = v453;
                v30 = v447;
                v294 = v442;
                v303 = v429;
                if (*(a2 + 164))
                {
                  if (v324 == 1)
                  {
                    v325 = v325;
                    if ((v325 & 0x8000u) != 0)
                    {
                      v325 = (-8 * (v321 - *(a2 + 160)));
                    }

                    v326 = v326;
                    if ((v326 & 0x8000u) != 0)
                    {
                      v326 = (-8 * (v320 - *(a2 + 162)));
                    }

                    v323 = 4 * (v326 + v325);
                  }
                }

                else
                {
                  v323 = ((*(*(a2 + 176) + 4 * (8 * (v321 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v320 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v320 - *(a2 + 162))) != 0)) | (8 * ((8 * (v321 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                }
              }

              v302 = v433;
              if (v323 + v322 < v34)
              {
                *a6 = v321 | (v319 << 16);
                v34 = v323 + v322;
                v296 = v322;
                v315 = v314;
              }
            }
          }

          else
          {
            *(v295 + 4 * v317) = 0x7FFFFFFF;
            v296 = v316;
          }

          ++v314;
        }

        while (v314 != 3);
      }

      else
      {
        v305 = v304 + 8 * v299;
        v460.i64[0] = v294 + *(v305 + 4);
        v460.i64[1] = v294 + *(v304 + 8 * v257 + 4);
        v461.i64[0] = v294 + *(v304 + 8 * v300 + 4);
        v461.i64[1] = v294;
        (*(a2 + 216))(*v302, *(v302 + 6), &v460, *(v303 + 24), &v457);
        v306 = v457;
        if (v34 <= v457)
        {
          v315 = -1;
          v28 = a6;
          LODWORD(v29) = v453;
          v30 = v447;
          v294 = v442;
        }

        else
        {
          v307 = 0;
          v30 = v447;
          v308 = *v305 + v447;
          LODWORD(v29) = v453;
          v309 = *(v305 + 2) + v453;
          v310 = *(a2 + 164);
          v311 = 8 * (v308 - *(a2 + 160));
          LOWORD(v312) = 8 * (v309 - *(a2 + 162));
          v28 = a6;
          if (v310 > 1)
          {
            v294 = v442;
            if (v310 == 2)
            {
              v328 = v311;
              if (v311 < 0)
              {
                v328 = (-8 * (v308 - *(a2 + 160)));
              }

              v312 = v312;
              if ((v312 & 0x8000u) != 0)
              {
                v312 = (-8 * (v309 - *(a2 + 162)));
              }

              v307 = (15 * (v312 + v328)) >> 3;
            }

            else if (v310 == 3)
            {
              v327 = v311;
              if (v311 < 0)
              {
                v327 = (-8 * (v308 - *(a2 + 160)));
              }

              v312 = v312;
              if ((v312 & 0x8000u) != 0)
              {
                v312 = (-8 * (v309 - *(a2 + 162)));
              }

              v307 = v312 + v327;
            }
          }

          else
          {
            v294 = v442;
            if (*(a2 + 164))
            {
              if (v310 == 1)
              {
                v313 = v311;
                if (v311 < 0)
                {
                  v313 = (-8 * (v308 - *(a2 + 160)));
                }

                v312 = v312;
                if ((v312 & 0x8000u) != 0)
                {
                  v312 = (-8 * (v309 - *(a2 + 162)));
                }

                v307 = 4 * (v312 + v313);
              }
            }

            else
            {
              v307 = ((*(*(a2 + 176) + 4 * (8 * (v308 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v309 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v309 - *(a2 + 162))) != 0)) | (8 * ((8 * (v308 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
            }
          }

          if (v307 + v457 >= v34)
          {
            v315 = -1;
          }

          else
          {
            v315 = 0;
            *a6 = (*v305 + v447) | (v309 << 16);
            v296 = v306;
            v34 = v307 + v306;
          }
        }

        v329 = v458;
        if (v34 > v458)
        {
          v330 = 0;
          v331 = (v304 + 8 * v257);
          v332 = *v331 + v30;
          v333 = v331[1] + v29;
          v334 = *(a2 + 164);
          v335 = 8 * (v332 - *(a2 + 160));
          LOWORD(v336) = 8 * (v333 - *(a2 + 162));
          if (v334 > 1)
          {
            if (v334 == 2)
            {
              v339 = v335;
              if (v335 < 0)
              {
                v339 = (-8 * (v332 - *(a2 + 160)));
              }

              v336 = v336;
              if ((v336 & 0x8000u) != 0)
              {
                v336 = (-8 * (v333 - *(a2 + 162)));
              }

              v330 = (15 * (v336 + v339)) >> 3;
            }

            else if (v334 == 3)
            {
              v338 = v335;
              if (v335 < 0)
              {
                v338 = (-8 * (v332 - *(a2 + 160)));
              }

              v336 = v336;
              if ((v336 & 0x8000u) != 0)
              {
                v336 = (-8 * (v333 - *(a2 + 162)));
              }

              v330 = v336 + v338;
            }
          }

          else if (*(a2 + 164))
          {
            if (v334 == 1)
            {
              v337 = v335;
              if (v335 < 0)
              {
                v337 = (-8 * (v332 - *(a2 + 160)));
              }

              v336 = v336;
              if ((v336 & 0x8000u) != 0)
              {
                v336 = (-8 * (v333 - *(a2 + 162)));
              }

              v330 = 4 * (v336 + v337);
            }
          }

          else
          {
            v330 = ((*(*(a2 + 176) + 4 * (8 * (v332 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v333 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v333 - *(a2 + 162))) != 0)) | (8 * ((8 * (v332 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
          }

          if (v330 + v458 < v34)
          {
            *v28 = v332 | (v333 << 16);
            v315 = 1;
            v296 = v329;
            v34 = v330 + v329;
          }
        }

        v340 = v459;
        if (v34 > v459)
        {
          v341 = 0;
          v342 = (v304 + 8 * v300);
          v343 = *v342 + v30;
          v344 = v342[1] + v29;
          v345 = *(a2 + 164);
          v346 = 8 * (v343 - *(a2 + 160));
          LOWORD(v347) = 8 * (v344 - *(a2 + 162));
          if (v345 > 1)
          {
            if (v345 == 2)
            {
              v350 = v346;
              if (v346 < 0)
              {
                v350 = (-8 * (v343 - *(a2 + 160)));
              }

              v347 = v347;
              if ((v347 & 0x8000u) != 0)
              {
                v347 = (-8 * (v344 - *(a2 + 162)));
              }

              v341 = (15 * (v347 + v350)) >> 3;
            }

            else if (v345 == 3)
            {
              v349 = v346;
              if (v346 < 0)
              {
                v349 = (-8 * (v343 - *(a2 + 160)));
              }

              v347 = v347;
              if ((v347 & 0x8000u) != 0)
              {
                v347 = (-8 * (v344 - *(a2 + 162)));
              }

              v341 = v347 + v349;
            }
          }

          else if (*(a2 + 164))
          {
            if (v345 == 1)
            {
              v348 = v346;
              if (v346 < 0)
              {
                v348 = (-8 * (v343 - *(a2 + 160)));
              }

              v347 = v347;
              if ((v347 & 0x8000u) != 0)
              {
                v347 = (-8 * (v344 - *(a2 + 162)));
              }

              v341 = 4 * (v347 + v348);
            }
          }

          else
          {
            v341 = ((*(*(a2 + 176) + 4 * (8 * (v343 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v344 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v344 - *(a2 + 162))) != 0)) | (8 * ((8 * (v343 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
          }

          if (v341 + v459 < v34)
          {
            *v28 = v343 | (v344 << 16);
            v315 = 2;
            v296 = v340;
            v34 = v341 + v340;
          }
        }

        for (i = 0; i != 12; i += 4)
        {
          *(v295 + 4 * *(&v454 + i)) = *(&v457 + i);
        }
      }

      if (v315 == -1)
      {
        break;
      }

      v257 = *(&v454 + v315);
      v352 = (v420 + 8 * v257);
      v30 += *v352;
      LODWORD(v29) = v29 + v352[1];
      v294 += *(v352 + 1);
    }

    goto LABEL_433;
  }

  v230 = 0;
LABEL_422:
  *v28 = v30;
  *(v28 + 1) = v29;
  v231 = v28 + 1;
  v233 = *(a2 + 16);
  v232 = *(a2 + 24);
  if (v395)
  {
    v234 = *v28;
    LODWORD(v21) = *v28;
    v235 = vmovl_u16(*&v21).u64[0];
    if (v230)
    {
      v451 = v235;
      v236 = *(v233 + 6);
      *v395 = (*(a2 + 200))(*v232, *(v232 + 6), *v233 + v236 * v234 + (v234 >> 16), v236, v25);
      if (v234 > *(a2 + 96) && v234 < *(a2 + 100) && v234 >> 16 > *(a2 + 88) && v234 >> 16 < *(a2 + 92))
      {
        v237 = 0;
        v238 = &word_277C3D076;
        do
        {
          v239 = *(v238 - 1) + v234;
          v240 = *v238;
          v238 += 2;
          *(v395 + 4 + 4 * v237++) = (*(a2 + 200))(*v232, *(v232 + 6), *v233 + *(v233 + 6) * v239 + (v240 + v451.i16[2]), v236);
        }

        while (v237 != 4);
        v28 = a6;
        v241 = v395;
        v235 = v451;
        goto LABEL_435;
      }

      v278 = 0;
      v235 = v451;
      v279 = &word_277C3D076;
      v28 = a6;
      do
      {
        v280 = *v279 + v451.i16[2];
        if (*(a2 + 88) <= v280 && *(a2 + 92) >= v280 && (v281 = *(v279 - 1) + v234, *(a2 + 96) <= v281) && *(a2 + 100) >= v281)
        {
          v282 = (*(a2 + 200))(*v232, *(v232 + 6), *v233 + v280 + *(v233 + 6) * v281, v236);
          v235 = v451;
          v28 = a6;
        }

        else
        {
          v282 = 0x7FFFFFFF;
        }

        v279 += 2;
        *(v395 + 4 + 4 * v278++) = v282;
      }

      while (v278 != 4);
    }

LABEL_434:
    v241 = v395;
LABEL_435:
    v242 = 0;
    v243 = *(a2 + 164);
    LOWORD(v21) = *(a2 + 160);
    WORD2(v21) = *(a2 + 162);
    *&v21 = vshl_n_s32(vsub_s32(v235, *&v21), 3uLL);
    if (v243 > 1)
    {
      if (v243 == 2)
      {
        v271 = vabs_s32(vshr_n_s32(vshl_n_s32(*&v21, 0x10uLL), 0x10uLL));
        v242 = (15 * (v271.i32[1] + v271.i32[0])) >> 3;
      }

      else if (v243 == 3)
      {
        v245 = vabs_s32(vshr_n_s32(vshl_n_s32(*&v21, 0x10uLL), 0x10uLL));
        v242 = v245.i32[1] + v245.i32[0];
      }
    }

    else if (*(a2 + 164))
    {
      if (v243 == 1)
      {
        v244 = vabs_s32(vshr_n_s32(vshl_n_s32(*&v21, 0x10uLL), 0x10uLL));
        v242 = 4 * (v244.i32[1] + v244.i32[0]);
      }
    }

    else
    {
      v242 = ((*(*(a2 + 176) + 4 * v21) + *(*(a2 + 184) + 4 * SWORD2(v21)) + *(*(a2 + 168) + ((4 * (WORD2(v21) != 0)) | (8 * (v21 != 0))))) * *(a2 + 196) + 256) >> 9;
    }

    v272 = v241[1];
    *v241 += v242;
    if (v272 != 0x7FFFFFFF)
    {
      v273 = 0;
      if (v243 > 1)
      {
        if (v243 == 2)
        {
          v353 = vdup_lane_s32(*&v21, 0);
          v353.i32[0] = DWORD1(v21) - 8;
          v354 = vabs_s32(vshr_n_s32(vshl_n_s32(v353, 0x10uLL), 0x10uLL));
          v273 = (15 * (v354.i32[0] + v354.i32[1])) >> 3;
        }

        else if (v243 == 3)
        {
          v276 = vdup_lane_s32(*&v21, 0);
          v276.i32[0] = DWORD1(v21) - 8;
          v277 = vabs_s32(vshr_n_s32(vshl_n_s32(v276, 0x10uLL), 0x10uLL));
          v273 = v277.i32[0] + v277.i32[1];
        }
      }

      else if (v243)
      {
        v274 = vdup_lane_s32(*&v21, 0);
        v274.i32[0] = DWORD1(v21) - 8;
        v275 = vabs_s32(vshr_n_s32(vshl_n_s32(v274, 0x10uLL), 0x10uLL));
        v273 = 4 * (v275.i32[0] + v275.i32[1]);
      }

      else
      {
        v273 = ((*(*(a2 + 176) + 4 * v21) + *(*(a2 + 184) + 4 * (WORD2(v21) - 8)) + *(*(a2 + 168) + ((4 * ((WORD2(v21) - 8) != 0)) | (8 * (v21 != 0))))) * *(a2 + 196) + 256) >> 9;
      }

      v241[1] = v273 + v272;
    }

    v355 = v241[2];
    if (v355 != 0x7FFFFFFF)
    {
      v356 = 0;
      if (v243 > 1)
      {
        if (v243 == 2)
        {
          v361.i32[0] = vdup_lane_s32(*&v21, 1).u32[0];
          v361.i32[1] = v21 + 8;
          v362 = vabs_s32(vshr_n_s32(vshl_n_s32(v361, 0x10uLL), 0x10uLL));
          v356 = (15 * (v362.i32[0] + v362.i32[1])) >> 3;
        }

        else if (v243 == 3)
        {
          v359.i32[0] = vdup_lane_s32(*&v21, 1).u32[0];
          v359.i32[1] = v21 + 8;
          v360 = vabs_s32(vshr_n_s32(vshl_n_s32(v359, 0x10uLL), 0x10uLL));
          v356 = v360.i32[0] + v360.i32[1];
        }
      }

      else if (v243)
      {
        v357.i32[0] = vdup_lane_s32(*&v21, 1).u32[0];
        v357.i32[1] = v21 + 8;
        v358 = vabs_s32(vshr_n_s32(vshl_n_s32(v357, 0x10uLL), 0x10uLL));
        v356 = 4 * (v358.i32[0] + v358.i32[1]);
      }

      else
      {
        v356 = ((*(*(a2 + 176) + 4 * (v21 + 8)) + *(*(a2 + 184) + 4 * SWORD2(v21)) + *(*(a2 + 168) + ((4 * (WORD2(v21) != 0)) | (8 * ((v21 + 8) != 0))))) * *(a2 + 196) + 256) >> 9;
      }

      v241[2] = v356 + v355;
    }

    v363 = v241[3];
    if (v363 != 0x7FFFFFFF)
    {
      v364 = 0;
      if (v243 > 1)
      {
        if (v243 == 2)
        {
          v369 = vdup_lane_s32(*&v21, 0);
          v369.i32[0] = DWORD1(v21) + 8;
          v370 = vabs_s32(vshr_n_s32(vshl_n_s32(v369, 0x10uLL), 0x10uLL));
          v364 = (15 * (v370.i32[0] + v370.i32[1])) >> 3;
        }

        else if (v243 == 3)
        {
          v367 = vdup_lane_s32(*&v21, 0);
          v367.i32[0] = DWORD1(v21) + 8;
          v368 = vabs_s32(vshr_n_s32(vshl_n_s32(v367, 0x10uLL), 0x10uLL));
          v364 = v368.i32[0] + v368.i32[1];
        }
      }

      else if (v243)
      {
        v365 = vdup_lane_s32(*&v21, 0);
        v365.i32[0] = DWORD1(v21) + 8;
        v366 = vabs_s32(vshr_n_s32(vshl_n_s32(v365, 0x10uLL), 0x10uLL));
        v364 = 4 * (v366.i32[0] + v366.i32[1]);
      }

      else
      {
        v364 = ((*(*(a2 + 176) + 4 * v21) + *(*(a2 + 184) + 4 * (WORD2(v21) + 8)) + *(*(a2 + 168) + ((4 * ((WORD2(v21) + 8) != 0)) | (8 * (v21 != 0))))) * *(a2 + 196) + 256) >> 9;
      }

      v241[3] = v364 + v363;
    }

    v371 = v241[4];
    if (v371 != 0x7FFFFFFF)
    {
      v372 = 0;
      v373 = v21 - 8;
      if (v243 > 1)
      {
        if (v243 == 2)
        {
          v378.i32[0] = vdup_lane_s32(*&v21, 1).u32[0];
          v378.i32[1] = v373;
          v379 = vabs_s32(vshr_n_s32(vshl_n_s32(v378, 0x10uLL), 0x10uLL));
          v372 = (15 * (v379.i32[0] + v379.i32[1])) >> 3;
        }

        else if (v243 == 3)
        {
          v376.i32[0] = vdup_lane_s32(*&v21, 1).u32[0];
          v376.i32[1] = v373;
          v377 = vabs_s32(vshr_n_s32(vshl_n_s32(v376, 0x10uLL), 0x10uLL));
          v372 = v377.i32[0] + v377.i32[1];
        }
      }

      else if (v243)
      {
        v374.i32[0] = vdup_lane_s32(*&v21, 1).u32[0];
        v374.i32[1] = v373;
        v375 = vabs_s32(vshr_n_s32(vshl_n_s32(v374, 0x10uLL), 0x10uLL));
        v372 = 4 * (v375.i32[0] + v375.i32[1]);
      }

      else
      {
        v372 = ((*(*(a2 + 176) + 4 * (v21 - 8)) + *(*(a2 + 184) + 4 * SWORD2(v21)) + *(*(a2 + 168) + ((4 * (WORD2(v21) != 0)) | (8 * ((v21 - 8) != 0))))) * *(a2 + 196) + 256) >> 9;
      }

      v241[4] = v372 + v371;
    }

    LOWORD(v29) = *v231;
    v233 = *(a2 + 16);
    v232 = *(a2 + 24);
  }

  v380 = *v28;
  v381 = *(v233 + 6);
  v382 = *v233;
  v383 = v29;
  v384 = (*(*(a2 + 8) + 24))(*v232, *(v232 + 6), v382 + v381 * v380 + v29);
  a7[1] = v384;
  v385 = *(a2 + 164);
  if (v385 == 4)
  {
    goto LABEL_687;
  }

  v388 = *(a2 + 152);
  v389 = *v388;
  v390 = (8 * v380 - v389);
  v391 = v388[1];
  v392 = (8 * v383 - v391);
  if (v390 < 0)
  {
    v390 = -v390;
  }

  if (v392 < 0)
  {
    v392 = -v392;
  }

  if (v385 == 3)
  {
    LODWORD(v386) = (v392 + v390) >> 3;
    goto LABEL_688;
  }

  if (v385 == 1)
  {
    LODWORD(v386) = (v392 + v390) >> 2;
    goto LABEL_688;
  }

  if (*(a2 + 164))
  {
LABEL_687:
    LODWORD(v386) = 0;
  }

  else
  {
    v386 = ((*(*(a2 + 176) + 4 * (8 * v380 - v389)) + *(*(a2 + 184) + 4 * (8 * v383 - v391)) + *(*(a2 + 168) + ((4 * (v391 != (8 * v383))) | (8 * (v389 != (8 * v380)))))) * *(a2 + 192) + 0x2000) >> 14;
  }

LABEL_688:
  *a7 = v386;
  return (v386 + v384);
}

uint64_t sub_277B9D998(uint64_t result, unsigned int a2, uint64_t a3, int a4, _DWORD *a5, __int16 *a6, int *a7)
{
  v118 = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 16);
  v109 = *(a3 + 24);
  v115 = *(v10 + 24);
  v106 = *(a3 + 80);
  v11 = *(v106 + 2992) - a4;
  if (a7)
  {
    v102 = *a7;
  }

  else
  {
    v102 = 0;
  }

  v12 = *v109;
  v13 = *(v109 + 6);
  *a6 = result;
  v14 = *v10 + *(v10 + 24) * result + (result >> 16);
  if (!*(a3 + 32))
  {
    if (v11 < 1)
    {
      goto LABEL_157;
    }

    v112 = v13;
    v114 = v12;
    result = 0;
    v15 = 0;
    v98 = v106 + 12;
    while (1)
    {
      v42 = (v11 - 1);
      v43 = (v106 + 136 * v42);
      v44 = *(v106 + 2996 + 4 * v42);
      v45 = *a6;
      v46 = v43[4] + v45;
      v47 = v43[8] + v45;
      v48 = a6[1];
      v49 = v43[13] + v48;
      v50 = v43[17] + v48;
      if (v46 >= *(a3 + 96) && v47 <= *(a3 + 100) && v49 >= *(a3 + 88) && v50 <= *(a3 + 92))
      {
        if (v44 < 1)
        {
          goto LABEL_147;
        }

        v101 = v106 + 136 * v42;
        v99 = result;
        v108 = v11;
        v111 = v15;
        v54 = 0;
        v105 = (v11 - 1);
        v71 = v98 + 136 * v42;
        v72 = v106 + 10 + 136 * v42;
        v73 = 1;
        do
        {
          v74 = 0;
          memset(v117, 0, sizeof(v117));
          do
          {
            *(v117 + v74) = v14 + *(v71 + v74);
            v74 += 8;
          }

          while (v74 != 32);
          (*(a3 + 208))(v114, v112, v117, v115, v116);
          v75 = 0;
          v76 = v72;
          v77 = v73;
          do
          {
            v78 = *&v116[v75];
            if (v78 < a2)
            {
              v79 = *(a3 + 164);
              LOWORD(v80) = 8 * (*(v76 - 1) + *a6 - *(a3 + 160));
              LOWORD(v81) = 8 * (*v76 + a6[1] - *(a3 + 162));
              if (v79 > 1)
              {
                v80 = v80;
                if ((v80 & 0x8000u) == 0)
                {
                  v84 = v80;
                }

                else
                {
                  v84 = (-8 * (*(v76 - 1) + *a6 - *(a3 + 160)));
                }

                v81 = v81;
                if ((v81 & 0x8000u) == 0)
                {
                  v85 = v81;
                }

                else
                {
                  v85 = (-8 * (*v76 + a6[1] - *(a3 + 162)));
                }

                v86 = (15 * (v85 + v84)) >> 3;
                if ((v80 & 0x8000u) != 0)
                {
                  v80 = (-8 * (*(v76 - 1) + *a6 - *(a3 + 160)));
                }

                if ((v81 & 0x8000u) != 0)
                {
                  v81 = (-8 * (*v76 + a6[1] - *(a3 + 162)));
                }

                v87 = v81 + v80;
                if (v79 != 3)
                {
                  v87 = 0;
                }

                if (v79 == 2)
                {
                  v83 = v86;
                }

                else
                {
                  v83 = v87;
                }
              }

              else if (*(a3 + 164))
              {
                v80 = v80;
                if ((v80 & 0x8000u) != 0)
                {
                  v80 = (-8 * (*(v76 - 1) + *a6 - *(a3 + 160)));
                }

                v81 = v81;
                if ((v81 & 0x8000u) != 0)
                {
                  v81 = (-8 * (*v76 + a6[1] - *(a3 + 162)));
                }

                v82 = 4 * (v81 + v80);
                if (v79 == 1)
                {
                  v83 = v82;
                }

                else
                {
                  v83 = 0;
                }
              }

              else
              {
                v83 = ((*(*(a3 + 176) + 4 * v80) + *(*(a3 + 184) + 4 * v81) + *(*(a3 + 168) + ((4 * (v81 != 0)) | (8 * (v80 != 0))))) * *(a3 + 196) + 256) >> 9;
              }

              v88 = v83 + v78;
              if (v88 < a2)
              {
                a2 = v88;
                v54 = v77;
              }
            }

            v75 += 4;
            ++v77;
            v76 += 4;
          }

          while (v75 != 16);
          v73 += 4;
          v71 += 32;
          v72 += 32;
        }

        while (v44 >= v73);
      }

      else
      {
        if (v44 < 1)
        {
          goto LABEL_147;
        }

        v101 = v106 + 136 * v42;
        v99 = result;
        v108 = v11;
        v111 = v15;
        v54 = 0;
        v55 = v44 + 1;
        v105 = (v11 - 1);
        v56 = (v98 + 136 * v42);
        v57 = 1;
        do
        {
          if (*(a3 + 88) <= (*(v56 - 1) + a6[1]))
          {
            v58 = *(v56 - 1) + a6[1];
            if (*(a3 + 92) >= v58)
            {
              v59 = *(v56 - 2);
              if (*(a3 + 96) <= (v59 + *a6) && *(a3 + 100) >= (v59 + *a6))
              {
                v100 = v59 + *a6;
                v60 = (*(a3 + 200))(*v109, *(v109 + 6), v14 + *v56, v115, a5, v117);
                if (v60 < a2)
                {
                  v61 = *(a3 + 164);
                  LOWORD(v62) = 8 * (v100 - *(a3 + 160));
                  LOWORD(v63) = 8 * (v58 - *(a3 + 162));
                  if (v61 > 1)
                  {
                    v62 = v62;
                    if ((v62 & 0x8000u) == 0)
                    {
                      v66 = v62;
                    }

                    else
                    {
                      v66 = (-8 * (v100 - *(a3 + 160)));
                    }

                    v63 = v63;
                    if ((v63 & 0x8000u) == 0)
                    {
                      v67 = v63;
                    }

                    else
                    {
                      v67 = (-8 * (v58 - *(a3 + 162)));
                    }

                    v68 = (15 * (v67 + v66)) >> 3;
                    if ((v62 & 0x8000u) != 0)
                    {
                      v62 = (-8 * (v100 - *(a3 + 160)));
                    }

                    if ((v63 & 0x8000u) != 0)
                    {
                      v63 = (-8 * (v58 - *(a3 + 162)));
                    }

                    v69 = v63 + v62;
                    if (v61 != 3)
                    {
                      v69 = 0;
                    }

                    if (v61 == 2)
                    {
                      v65 = v68;
                    }

                    else
                    {
                      v65 = v69;
                    }
                  }

                  else if (*(a3 + 164))
                  {
                    v62 = v62;
                    if ((v62 & 0x8000u) != 0)
                    {
                      v62 = (-8 * (v100 - *(a3 + 160)));
                    }

                    v63 = v63;
                    if ((v63 & 0x8000u) != 0)
                    {
                      v63 = (-8 * (v58 - *(a3 + 162)));
                    }

                    v64 = 4 * (v63 + v62);
                    if (v61 == 1)
                    {
                      v65 = v64;
                    }

                    else
                    {
                      v65 = 0;
                    }
                  }

                  else
                  {
                    v65 = ((*(*(a3 + 176) + 4 * (8 * (v100 - *(a3 + 160)))) + *(*(a3 + 184) + 4 * (8 * (v58 - *(a3 + 162)))) + *(*(a3 + 168) + ((4 * ((8 * (v58 - *(a3 + 162))) != 0)) | (8 * ((8 * (v100 - *(a3 + 160))) != 0))))) * *(a3 + 196) + 256) >> 9;
                  }

                  v70 = v65 + v60;
                  if (v70 < a2)
                  {
                    a2 = v70;
                    v54 = v57;
                  }
                }
              }
            }
          }

          ++v57;
          v56 += 2;
        }

        while (v55 != v57);
      }

      if (!v54)
      {
        v15 = v111;
        v11 = v108;
        result = v99;
        v42 = v105;
LABEL_147:
        if (!result)
        {
          ++v15;
        }

        if (v11 >= 4 && *(v106 + 3084 + 4 * (v11 - 2)) == *(v106 + 3084 + 4 * v42))
        {
          v91 = v42 + 770;
          v92 = (v106 + 3080 + 4 * v42);
          do
          {
            v93 = v91;
            ++v15;
            if (v91 - 770 < 4)
            {
              break;
            }

            v94 = *v92;
            v95 = *--v92;
            --v91;
          }

          while (v95 == v94);
          LODWORD(v42) = v93 - 771;
        }

        goto LABEL_155;
      }

      v89 = *a6;
      v90 = v101 + 8 * v54;
      *a6 = *v90 + *a6;
      v102 = v89;
      a6[1] = *(v90 + 2) + HIWORD(v89);
      v14 += *(v90 + 4);
      result = 1;
      v15 = v111;
      LODWORD(v42) = v105;
LABEL_155:
      v11 = v42;
      if (v42 <= 0)
      {
        goto LABEL_158;
      }
    }
  }

  if (v11 >= 1)
  {
    v104 = 0;
    v15 = 0;
    while (1)
    {
      v16 = (v11 - 1);
      v17 = *(v106 + 2996 + 4 * v16);
      if (v17 < 1)
      {
        goto LABEL_50;
      }

      v107 = v11;
      v110 = v15;
      v18 = 0;
      v103 = v106 + 136 * v16;
      v19 = v17 + 1;
      v20 = 1;
      v113 = (v11 - 1);
      v21 = (v106 + 12 + 136 * v16);
      do
      {
        if (*(a3 + 88) <= (*(v21 - 1) + a6[1]))
        {
          v22 = *(v21 - 1) + a6[1];
          if (*(a3 + 92) >= v22)
          {
            v23 = *(v21 - 2) + *a6;
            if (*(a3 + 96) <= v23 && *(a3 + 100) >= v23)
            {
              v24 = *v21;
              v25 = *(a3 + 8);
              v26 = *v109;
              v27 = *(v109 + 6);
              v28 = *(a3 + 32);
              v29 = *(a3 + 40);
              v30 = v18;
              if (v29)
              {
                result = (*(v25 + 72))(v26, v27, v14 + v24, v115, v28, v29, *(a3 + 48), *(a3 + 52));
              }

              else if (v28)
              {
                result = (*(v25 + 16))(v26, v27, v14 + v24, v115);
              }

              else
              {
                result = (*(a3 + 200))(v26, v27, v14 + v24, v115);
              }

              if (result >= a2)
              {
                v18 = v30;
              }

              else
              {
                v31 = 0;
                v32 = *(a3 + 164);
                LOWORD(v33) = 8 * (v23 - *(a3 + 160));
                LOWORD(v34) = 8 * (v22 - *(a3 + 162));
                if (v32 > 1)
                {
                  LODWORD(v18) = v30;
                  if (v32 == 2)
                  {
                    v33 = v33;
                    if ((v33 & 0x8000u) != 0)
                    {
                      v33 = (-8 * (v23 - *(a3 + 160)));
                    }

                    v34 = v34;
                    if ((v34 & 0x8000u) != 0)
                    {
                      v34 = (-8 * (v22 - *(a3 + 162)));
                    }

                    v31 = (15 * (v34 + v33)) >> 3;
                  }

                  else if (v32 == 3)
                  {
                    v33 = v33;
                    if ((v33 & 0x8000u) != 0)
                    {
                      v33 = (-8 * (v23 - *(a3 + 160)));
                    }

                    v34 = v34;
                    if ((v34 & 0x8000u) != 0)
                    {
                      v34 = (-8 * (v22 - *(a3 + 162)));
                    }

                    v31 = v34 + v33;
                  }
                }

                else if (*(a3 + 164))
                {
                  LODWORD(v18) = v30;
                  if (v32 == 1)
                  {
                    v33 = v33;
                    if ((v33 & 0x8000u) != 0)
                    {
                      v33 = (-8 * (v23 - *(a3 + 160)));
                    }

                    v34 = v34;
                    if ((v34 & 0x8000u) != 0)
                    {
                      v34 = (-8 * (v22 - *(a3 + 162)));
                    }

                    v31 = 4 * (v34 + v33);
                  }
                }

                else
                {
                  v31 = ((*(*(a3 + 176) + 4 * (8 * (v23 - *(a3 + 160)))) + *(*(a3 + 184) + 4 * (8 * (v22 - *(a3 + 162)))) + *(*(a3 + 168) + ((4 * ((8 * (v22 - *(a3 + 162))) != 0)) | (8 * ((8 * (v23 - *(a3 + 160))) != 0))))) * *(a3 + 196) + 256) >> 9;
                  LODWORD(v18) = v30;
                }

                if (v31 + result >= a2)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = v20;
                }

                if (v31 + result < a2)
                {
                  a2 = v31 + result;
                }
              }
            }
          }
        }

        ++v20;
        v21 += 2;
      }

      while (v19 != v20);
      v15 = v110;
      if (!v18)
      {
        break;
      }

      v35 = *a6;
      v36 = v103 + 8 * v18;
      *a6 = *v36 + *a6;
      v102 = v35;
      a6[1] = *(v36 + 2) + HIWORD(v35);
      v14 += *(v36 + 4);
      v104 = 1;
      LODWORD(v16) = v113;
LABEL_58:
      v11 = v16;
      if (v16 <= 0)
      {
        goto LABEL_158;
      }
    }

    v11 = v107;
    v16 = v113;
LABEL_50:
    if (!v104)
    {
      ++v15;
    }

    if (v11 >= 4 && *(v106 + 3084 + 4 * (v11 - 2)) == *(v106 + 3084 + 4 * v16))
    {
      v37 = v16 + 770;
      v38 = (v106 + 3080 + 4 * v16);
      do
      {
        v39 = v37;
        ++v15;
        if (v37 - 770 < 4)
        {
          break;
        }

        v40 = *v38;
        v41 = *--v38;
        --v37;
      }

      while (v41 == v40);
      LODWORD(v16) = v39 - 771;
    }

    goto LABEL_58;
  }

LABEL_157:
  v15 = 0;
LABEL_158:
  *a5 = v15;
  if (a7)
  {
    *a7 = v102;
  }

  return result;
}

uint64_t sub_277B9E2D4(uint64_t a1, __int16 *a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *v9;
  v11 = *(v9 + 6);
  v12 = *(v7 + 6);
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = (*(v6 + 80))(*v7 + a2[1] + v12 * *a2, v12, 0, 0, v10, v11, v8, v13, *(a1 + 48), a3 + 2);
  }

  else
  {
    v15 = *v7;
    v16 = a2[1] + v12 * *a2;
    if (v8)
    {
      v14 = (*(v6 + 40))(v15 + v16, v12, 0, 0, v10, v11, a3 + 2, v8);
    }

    else
    {
      v14 = (*(v6 + 24))(v10, v11, v15 + v16);
    }
  }

  a3[1] = v14;
  v17 = *(a1 + 164);
  if (v17 == 4)
  {
    goto LABEL_6;
  }

  v20 = *(a1 + 152);
  v21 = *v20;
  v22 = (8 * *a2 - v21);
  v23 = v20[1];
  v24 = (8 * a2[1] - v23);
  if (v22 < 0)
  {
    v22 = -v22;
  }

  if (v24 < 0)
  {
    v24 = -v24;
  }

  if (v17 == 3)
  {
    LODWORD(v18) = (v24 + v22) >> 3;
    goto LABEL_7;
  }

  if (v17 == 1)
  {
    LODWORD(v18) = (v24 + v22) >> 2;
    goto LABEL_7;
  }

  if (*(a1 + 164))
  {
LABEL_6:
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = ((*(*(a1 + 176) + 4 * (8 * *a2 - v21)) + *(*(a1 + 184) + 4 * (8 * a2[1] - v23)) + *(*(a1 + 168) + ((4 * (v23 != (8 * a2[1]))) | (8 * (v21 != (8 * *a2)))))) * *(a1 + 192) + 0x2000) >> 14;
  }

LABEL_7:
  *a3 = v18;
  return (v18 + v14);
}

uint64_t sub_277B9E498(int a1, uint64_t a2, int a3, int a4, int *a5, int *a6)
{
  v102 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(v11 + 24);
  if (a4 <= 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = a4;
  }

  v91 = v13;
  v14 = a1 >> 16;
  if (a1 >> 16 >= *(a2 + 92))
  {
    v14 = *(a2 + 92);
  }

  if (*(a2 + 88) <= a1 >> 16)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(a2 + 88);
  }

  v16 = a1;
  if (a1 >= *(a2 + 100))
  {
    v16 = *(a2 + 100);
  }

  if (*(a2 + 96) <= a1)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(a2 + 96);
  }

  *a5 = v17 | (v15 << 16);
  v18 = v15;
  v99 = v10;
  v98 = v12;
  v19 = (*(a2 + 200))(*v10, *(v10 + 24), *v11 + v17 * *(v11 + 24) + v15, v12);
  v20 = 0;
  v21 = *(a2 + 164);
  v83 = v17;
  LOWORD(v22) = 8 * (v17 - *(a2 + 160));
  v88 = v15;
  LOWORD(v23) = 8 * (v15 - *(a2 + 162));
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = v22;
      if ((v22 & 0x8000u) != 0)
      {
        v22 = (-8 * (v17 - *(a2 + 160)));
      }

      v23 = v23;
      if ((v23 & 0x8000u) != 0)
      {
        v23 = (-8 * (v15 - *(a2 + 162)));
      }

      v20 = (15 * (v23 + v22)) >> 3;
    }

    else if (v21 == 3)
    {
      v22 = v22;
      if ((v22 & 0x8000u) != 0)
      {
        v22 = (-8 * (v17 - *(a2 + 160)));
      }

      v23 = v23;
      if ((v23 & 0x8000u) != 0)
      {
        v23 = (-8 * (v15 - *(a2 + 162)));
      }

      v20 = v23 + v22;
    }
  }

  else if (*(a2 + 164))
  {
    if (v21 == 1)
    {
      v22 = v22;
      if ((v22 & 0x8000u) != 0)
      {
        v22 = (-8 * (v17 - *(a2 + 160)));
      }

      v23 = v23;
      if ((v23 & 0x8000u) != 0)
      {
        v23 = (-8 * (v15 - *(a2 + 162)));
      }

      v20 = 4 * (v23 + v22);
    }
  }

  else
  {
    v20 = ((*(*(a2 + 176) + 4 * (8 * (v17 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v15 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v15 - *(a2 + 162))) != 0)) | (8 * ((8 * (v17 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
  }

  v24 = v20 + v19;
  v25 = *(a2 + 100);
  if (*(a2 + 96) - v17 <= -a3)
  {
    v26 = -a3;
  }

  else
  {
    v26 = *(a2 + 96) - v17;
  }

  v27 = *(a2 + 92);
  if (*(a2 + 88) - v18 <= -a3)
  {
    v28 = -a3;
  }

  else
  {
    v28 = *(a2 + 88) - v18;
  }

  if (v25 - v17 >= a3)
  {
    v29 = a3;
  }

  else
  {
    v29 = v25 - v17;
  }

  if (v27 - v18 >= a3)
  {
    v30 = a3;
  }

  else
  {
    v30 = v27 - v18;
  }

  v85 = v29;
  if (v26 <= v29)
  {
    v93 = a5;
    v94 = a6;
    v82 = v88 + v28;
    v81 = (v88 + v28) << 16;
    v31 = v17 + v26;
    v89 = v91 << 16;
    v84 = v28;
    v90 = v30;
    do
    {
      v86 = v31;
      v87 = v26;
      if (v28 <= v30)
      {
        v33 = v81;
        v32 = v82;
        v34 = v81 + v31;
        v35 = (v26 + v83);
        v97 = (v26 + v83);
        do
        {
          v95 = v33;
          v96 = v34;
          if (a4 < 2)
          {
            if (v28 + 3 <= v30)
            {
              v56 = 0;
              memset(v100, 0, sizeof(v100));
              v57 = vdup_n_s32(v28 + v88);
              v58 = vdup_n_s32(*(v11 + 24) * v35);
              v59 = vdupq_n_s64(*v11);
              v60 = 0x100000000;
              do
              {
                v100[v56] = vaddw_s32(v59, vsra_n_s32(v58, vshl_n_s32(vadd_s32(v57, v60), 0x10uLL), 0x10uLL));
                v60 = vadd_s32(v60, 0x200000002);
                ++v56;
              }

              while (v56 != 2);
              (*(a2 + 208))(*v99, *(v99 + 24), v100, v98, v101);
              v61 = 0;
              v62 = v32;
              v63 = v34;
              do
              {
                v64 = *&v101[v61];
                if (v64 < v24)
                {
                  v65 = *(a2 + 164);
                  LOWORD(v66) = 8 * (v35 - *(a2 + 160));
                  LOWORD(v67) = 8 * (v62 - *(a2 + 162));
                  if (v65 > 1)
                  {
                    v66 = v66;
                    if ((v66 & 0x8000u) == 0)
                    {
                      v70 = v66;
                    }

                    else
                    {
                      v70 = (-8 * (v35 - *(a2 + 160)));
                    }

                    v67 = v67;
                    if ((v67 & 0x8000u) == 0)
                    {
                      v71 = v67;
                    }

                    else
                    {
                      v71 = (-8 * (v62 - *(a2 + 162)));
                    }

                    v72 = (15 * (v71 + v70)) >> 3;
                    if ((v66 & 0x8000u) != 0)
                    {
                      v66 = (-8 * (v35 - *(a2 + 160)));
                    }

                    if ((v67 & 0x8000u) != 0)
                    {
                      v67 = (-8 * (v62 - *(a2 + 162)));
                    }

                    v73 = v67 + v66;
                    if (v65 != 3)
                    {
                      v73 = 0;
                    }

                    if (v65 == 2)
                    {
                      v69 = v72;
                    }

                    else
                    {
                      v69 = v73;
                    }
                  }

                  else if (*(a2 + 164))
                  {
                    v66 = v66;
                    if ((v66 & 0x8000u) != 0)
                    {
                      v66 = (-8 * (v35 - *(a2 + 160)));
                    }

                    v67 = v67;
                    if ((v67 & 0x8000u) != 0)
                    {
                      v67 = (-8 * (v62 - *(a2 + 162)));
                    }

                    v68 = 4 * (v67 + v66);
                    if (v65 == 1)
                    {
                      v69 = v68;
                    }

                    else
                    {
                      v69 = 0;
                    }
                  }

                  else
                  {
                    v69 = ((*(*(a2 + 176) + 4 * (8 * (v35 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v62 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v62 - *(a2 + 162))) != 0)) | (8 * ((8 * (v35 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                  }

                  v74 = v69 + v64;
                  if (v74 < v24)
                  {
                    if (v94)
                    {
                      *v94 = *v93;
                    }

                    *v93 = v63;
                    v24 = v74;
                  }
                }

                v61 += 4;
                v63 += 0x10000;
                ++v62;
              }

              while (v61 != 16);
            }

            else
            {
              v43 = v30 - v28;
              if (v30 - v28 >= 1)
              {
                v44 = 0;
                do
                {
                  v45 = (*(a2 + 200))(*v99, *(v99 + 24), *v11 + *(v11 + 24) * v35 + (v33 >> 16), v98);
                  if (v24 > v45)
                  {
                    v46 = *(a2 + 164);
                    LOWORD(v47) = 8 * (v97 - *(a2 + 160));
                    LOWORD(v48) = 8 * (v32 + v44 - *(a2 + 162));
                    if (v46 > 1)
                    {
                      v47 = v47;
                      if ((v47 & 0x8000u) == 0)
                      {
                        v51 = v47;
                      }

                      else
                      {
                        v51 = (-8 * (v97 - *(a2 + 160)));
                      }

                      v48 = v48;
                      if ((v48 & 0x8000u) == 0)
                      {
                        v52 = v48;
                      }

                      else
                      {
                        v52 = (-8 * (v32 + v44 - *(a2 + 162)));
                      }

                      v53 = (15 * (v52 + v51)) >> 3;
                      if ((v47 & 0x8000u) != 0)
                      {
                        v47 = (-8 * (v97 - *(a2 + 160)));
                      }

                      if ((v48 & 0x8000u) != 0)
                      {
                        v48 = (-8 * (v32 + v44 - *(a2 + 162)));
                      }

                      v54 = v48 + v47;
                      if (v46 != 3)
                      {
                        v54 = 0;
                      }

                      if (v46 == 2)
                      {
                        v50 = v53;
                      }

                      else
                      {
                        v50 = v54;
                      }
                    }

                    else if (*(a2 + 164))
                    {
                      v47 = v47;
                      if ((v47 & 0x8000u) != 0)
                      {
                        v47 = (-8 * (v97 - *(a2 + 160)));
                      }

                      v48 = v48;
                      if ((v48 & 0x8000u) != 0)
                      {
                        v48 = (-8 * (v32 + v44 - *(a2 + 162)));
                      }

                      v49 = 4 * (v48 + v47);
                      if (v46 == 1)
                      {
                        v50 = v49;
                      }

                      else
                      {
                        v50 = 0;
                      }
                    }

                    else
                    {
                      v50 = ((*(*(a2 + 176) + 4 * (8 * (v97 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * v48) + *(*(a2 + 168) + ((4 * (v48 != 0)) | (8 * ((8 * (v97 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
                    }

                    v55 = v50 + v45;
                    if (v55 < v24)
                    {
                      if (v94)
                      {
                        *v94 = *v93;
                      }

                      *v93 = v34;
                      v24 = v55;
                    }
                  }

                  ++v44;
                  v34 += 0x10000;
                  v33 += 0x10000;
                }

                while (v44 < v43);
              }
            }
          }

          else
          {
            v36 = v28 + v88;
            v37 = (*(a2 + 200))(*v99, *(v99 + 24), *v11 + *(v11 + 24) * v35 + (v28 + v88), v98);
            if (v24 > v37)
            {
              v38 = *(a2 + 164);
              LOWORD(v39) = 8 * (v97 - *(a2 + 160));
              LOWORD(v40) = 8 * (v36 - *(a2 + 162));
              if (v38 > 1)
              {
                v39 = v39;
                if ((v39 & 0x8000u) == 0)
                {
                  v75 = v39;
                }

                else
                {
                  v75 = (-8 * (v97 - *(a2 + 160)));
                }

                v40 = v40;
                if ((v40 & 0x8000u) == 0)
                {
                  v76 = v40;
                }

                else
                {
                  v76 = (-8 * (v36 - *(a2 + 162)));
                }

                v77 = (15 * (v76 + v75)) >> 3;
                if ((v39 & 0x8000u) != 0)
                {
                  v39 = (-8 * (v97 - *(a2 + 160)));
                }

                if ((v40 & 0x8000u) != 0)
                {
                  v40 = (-8 * (v36 - *(a2 + 162)));
                }

                v78 = v40 + v39;
                if (v38 != 3)
                {
                  v78 = 0;
                }

                if (v38 == 2)
                {
                  v42 = v77;
                }

                else
                {
                  v42 = v78;
                }
              }

              else if (*(a2 + 164))
              {
                v39 = v39;
                if ((v39 & 0x8000u) != 0)
                {
                  v39 = (-8 * (v97 - *(a2 + 160)));
                }

                v40 = v40;
                if ((v40 & 0x8000u) != 0)
                {
                  v40 = (-8 * (v36 - *(a2 + 162)));
                }

                v41 = 4 * (v40 + v39);
                if (v38 == 1)
                {
                  v42 = v41;
                }

                else
                {
                  v42 = 0;
                }
              }

              else
              {
                v42 = ((*(*(a2 + 176) + 4 * (8 * (v97 - *(a2 + 160)))) + *(*(a2 + 184) + 4 * (8 * (v36 - *(a2 + 162)))) + *(*(a2 + 168) + ((4 * ((8 * (v36 - *(a2 + 162))) != 0)) | (8 * ((8 * (v97 - *(a2 + 160))) != 0))))) * *(a2 + 196) + 256) >> 9;
              }

              v79 = v42 + v37;
              if (v79 < v24)
              {
                if (v94)
                {
                  *v94 = *v93;
                }

                *v93 = v97 | (v36 << 16);
                v24 = v79;
              }
            }
          }

          v30 = v90;
          v28 += v91;
          v34 = v96 + v89;
          v32 += v91;
          v33 = v95 + v89;
        }

        while (v28 <= v90);
      }

      v26 = v87 + a4;
      v31 = v86 + a4;
      v28 = v84;
    }

    while (v87 + a4 <= v85);
  }

  return v24;
}

uint64_t sub_277B9EC6C(uint64_t a1, int16x8_t *a2, char a3, int a4, int a5, int *a6)
{
  v6 = (2 * a4);
  if (a5)
  {
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 0;
      v15 = 0x7FFFFFFF;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v10 = *a2;
      v9 = a2 + 1;
      v11 = v10;
      v12 = (4 << a3) - 8;
      v13 = a3 + 2;
      v14 = (a1 + 16);
      v15 = 0x7FFFFFFF;
      do
      {
        v16 = vsubq_s16(*(a1 + 2 * v7), v11);
        v17 = vmull_s16(*v16.i8, *v16.i8);
        v18 = vmull_high_s16(v16, v16);
        v19 = v14;
        v20 = v9;
        v21 = v12;
        do
        {
          v22 = *v19++;
          v23 = v22;
          v24 = *v20++;
          v25 = vsubq_s16(v23, v24);
          v16 = vaddq_s16(v25, v16);
          v17 = vmlal_s16(v17, *v25.i8, *v25.i8);
          v18 = vmlal_high_s16(v18, v25, v25);
          v21 -= 8;
        }

        while (v21);
        v26 = vaddlvq_s16(v16);
        v27 = vaddvq_s32(vaddq_s32(v18, v17)) - ((v26 * v26) >> v13);
        if (v27 < v15)
        {
          v8 = v7;
          v15 = v27;
        }

        ++v7;
        v14 = (v14 + 2);
      }

      while (v7 != (v6 | 1));
    }
  }

  else
  {
    v28 = 4 << a3;
    if ((v6 & 0x80000000) != 0)
    {
      v30 = 0;
      v31 = v28 - 8;
      v32 = a3 + 2;
      v15 = 0x7FFFFFFF;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = v28 - 8;
      v32 = a3 + 2;
      v33 = (a1 + 16);
      v15 = 0x7FFFFFFF;
      do
      {
        v34 = vsubq_s16(*(a1 + 2 * v29), *a2);
        v35 = vmull_s16(*v34.i8, *v34.i8);
        v36 = vmull_high_s16(v34, v34);
        v37 = v33;
        v38 = a2 + 1;
        v39 = v31;
        do
        {
          v40 = *v37++;
          v41 = v40;
          v42 = *v38++;
          v43 = vsubq_s16(v41, v42);
          v34 = vaddq_s16(v43, v34);
          v35 = vmlal_s16(v35, *v43.i8, *v43.i8);
          v36 = vmlal_high_s16(v36, v43, v43);
          v39 -= 8;
        }

        while (v39);
        v44 = vaddlvq_s16(v34);
        v45 = vaddvq_s32(vaddq_s32(v36, v35)) - ((v44 * v44) >> v32);
        if (v45 < v15)
        {
          v30 = v29;
          v15 = v45;
        }

        v29 += 16;
        v33 += 2;
      }

      while (v29 <= v6);
    }

    v46 = v30 - 8;
    v47 = -8;
    v48 = v30;
    do
    {
      if (v47 + v30 >= 0 && v47 + v30 <= v6)
      {
        v49 = (a1 + 16 + 2 * v46);
        v50 = vsubq_s16(*(a1 + 2 * (v47 + v30)), *a2);
        v51 = vmull_s16(*v50.i8, *v50.i8);
        v52 = vmull_high_s16(v50, v50);
        v53 = a2 + 1;
        v54 = v31;
        do
        {
          v55 = *v49++;
          v56 = v55;
          v57 = *v53++;
          v58 = vsubq_s16(v56, v57);
          v50 = vaddq_s16(v58, v50);
          v51 = vmlal_s16(v51, *v58.i8, *v58.i8);
          v52 = vmlal_high_s16(v52, v58, v58);
          v54 -= 8;
        }

        while (v54);
        v59 = vaddlvq_s16(v50);
        v60 = vaddvq_s32(vaddq_s32(v52, v51)) - ((v59 * v59) >> v32);
        if (v60 < v15)
        {
          v48 = v47 + v30;
          v15 = v60;
        }
      }

      v46 += 16;
      v61 = v47 < -7;
      v47 += 16;
    }

    while (v61);
    v62 = v48 - 4;
    v63 = -4;
    v64 = v48;
    do
    {
      if (v63 + v48 >= 0 && v63 + v48 <= v6)
      {
        v65 = (a1 + 16 + 2 * v62);
        v66 = vsubq_s16(*(a1 + 2 * (v63 + v48)), *a2);
        v67 = vmull_s16(*v66.i8, *v66.i8);
        v68 = vmull_high_s16(v66, v66);
        v69 = a2 + 1;
        v70 = v31;
        do
        {
          v71 = *v65++;
          v72 = v71;
          v73 = *v69++;
          v74 = vsubq_s16(v72, v73);
          v66 = vaddq_s16(v74, v66);
          v67 = vmlal_s16(v67, *v74.i8, *v74.i8);
          v68 = vmlal_high_s16(v68, v74, v74);
          v70 -= 8;
        }

        while (v70);
        v75 = vaddlvq_s16(v66);
        v76 = vaddvq_s32(vaddq_s32(v68, v67)) - ((v75 * v75) >> v32);
        if (v76 < v15)
        {
          v64 = v63 + v48;
          v15 = v76;
        }
      }

      v62 += 8;
      v61 = v63 < -3;
      v63 += 8;
    }

    while (v61);
    v77 = v64 - 2;
    v78 = -2;
    v79 = v64;
    do
    {
      if (v78 + v64 >= 0 && v78 + v64 <= v6)
      {
        v80 = (a1 + 16 + 2 * v77);
        v81 = vsubq_s16(*(a1 + 2 * (v78 + v64)), *a2);
        v82 = vmull_s16(*v81.i8, *v81.i8);
        v83 = vmull_high_s16(v81, v81);
        v84 = a2 + 1;
        v85 = v31;
        do
        {
          v86 = *v80++;
          v87 = v86;
          v88 = *v84++;
          v89 = vsubq_s16(v87, v88);
          v81 = vaddq_s16(v89, v81);
          v82 = vmlal_s16(v82, *v89.i8, *v89.i8);
          v83 = vmlal_high_s16(v83, v89, v89);
          v85 -= 8;
        }

        while (v85);
        v90 = vaddlvq_s16(v81);
        v91 = vaddvq_s32(vaddq_s32(v83, v82)) - ((v90 * v90) >> v32);
        if (v91 < v15)
        {
          v79 = v78 + v64;
          v15 = v91;
        }
      }

      v77 += 4;
      v61 = v78 < -1;
      v78 += 4;
    }

    while (v61);
    v92 = v79 - 1;
    v93 = -1;
    v8 = v79;
    do
    {
      v94 = v93;
      v95 = v93 + v79;
      if (v95 >= 0 && v95 <= v6)
      {
        v96 = (a1 + 16 + 2 * v92);
        v97 = vsubq_s16(*(a1 + 2 * v95), *a2);
        v98 = vmull_s16(*v97.i8, *v97.i8);
        v99 = vmull_high_s16(v97, v97);
        v100 = a2 + 1;
        v101 = v31;
        do
        {
          v102 = *v96++;
          v103 = v102;
          v104 = *v100++;
          v105 = vsubq_s16(v103, v104);
          v97 = vaddq_s16(v105, v97);
          v98 = vmlal_s16(v98, *v105.i8, *v105.i8);
          v99 = vmlal_high_s16(v99, v105, v105);
          v101 -= 8;
        }

        while (v101);
        v106 = vaddlvq_s16(v97);
        v107 = vaddvq_s32(vaddq_s32(v99, v98)) - ((v106 * v106) >> v32);
        if (v107 < v15)
        {
          v8 = v95;
          v15 = v107;
        }
      }

      v93 = v94 + 2;
      v92 += 2;
    }

    while (v94 < 0);
  }

  *a6 = v15;
  return (v8 - (v6 >> 1));
}

uint64_t sub_277B9F090(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, __int16 *a6, _DWORD *a7, unsigned int a8, unsigned int a9)
{
  v88 = *MEMORY[0x277D85DE8];
  v12 = **(a2 + 8280);
  memset(v87, 0, sizeof(v87));
  v13 = *(a1 + 271996);
  v72 = v13 == 1;
  v76 = v13 == 1 && *(*(a1 + 270312) + 28) == a3;
  v14 = a9;
  v15 = *(a1 + 272132) & 0xFFFFFFF0;
  if ((4 * a5 - a8) < -v15 || (4 * a5 + a8) > (*(a1 + 245672) + v15))
  {
    a8 = *(a1 + 272132) & 0xFFFFFFF0;
  }

  v79 = a8;
  if ((4 * a4 - a9) < -v15 || (4 * a4 + a9) > (*(a1 + 245676) + v15))
  {
    v14 = *(a1 + 272132) & 0xFFFFFFF0;
  }

  v16 = byte_277C3CAFE[a3];
  v17 = byte_277C3CAE8[a3];
  v80 = *(a2 + 72);
  v18 = *(a2 + 504);
  v82 = 0;
  v19 = *(v12 + 16) - 1;
  v20 = *(a1 + 8 * v19 + 273688);
  if ((*(v12 + 16) - 1) > 7u || (v21 = *(a1 + 4 * v19 + 245856), v21 == -1))
  {
    v22 = 0;
  }

  else
  {
    v22 = *(a1 + 8 * v21 + 246032);
  }

  v81 = a3;
  v71 = byte_277C3CFCC[a3];
  if (v20)
  {
    v23 = v20 == v22;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v20 + 1248;
  }

  if (!v23)
  {
    v26 = 0;
    v27 = (a2 + 480);
    do
    {
      v28 = &v87[v26];
      v29 = v27[1];
      *v28 = *v27;
      v28[1] = v29;
      v26 += 2;
      v27 += 163;
    }

    while (v26 != 6);
    sub_27798E424(a2 + 416, 0, v25, a4, a5, 0, 3u);
  }

  if (*(a2 + 11072) == 8)
  {
    v68 = v24;
    v69 = a6;
    v30 = v16 + 2 * v79;
    v70 = v17 + 2 * v14;
    v31 = 2 * v30;
    if (v31 <= 0x1FFFFFFE9 && (v32 = malloc_type_malloc(v31 + 23, 0x5F484EBFuLL)) != 0)
    {
      v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v33 - 8) = v32;
    }

    else
    {
      v33 = 0;
    }

    v78 = v33;
    v38 = 2 * v70;
    if (v38 <= 0x1FFFFFFE9 && (v39 = malloc_type_malloc(v38 + 23, 0x5F484EBFuLL)) != 0)
    {
      v77 = (v39 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v77 - 8) = v39;
    }

    else
    {
      v77 = 0;
    }

    v40 = malloc_type_malloc(2 * v16 + 23, 0x5F484EBFuLL);
    if (v40)
    {
      v74 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF0);
      v74[-1].i64[1] = v40;
    }

    else
    {
      v74 = 0;
    }

    v41 = malloc_type_malloc(2 * v17 + 23, 0x5F484EBFuLL);
    if (v41)
    {
      v73 = ((v41 + 23) & 0xFFFFFFFFFFFFFFF0);
      v73[-1].i64[1] = v41;
    }

    else
    {
      v73 = 0;
    }

    v42 = v78;
    v67 = a1;
    v43 = v16 >> 5;
    if (!v78 || !v77 || !v74 || !v73)
    {
      if (v78)
      {
        free(*(v78 - 8));
      }

      if (v77)
      {
        free(*(v77 - 8));
      }

      if (v74)
      {
        free(v74[-1].i64[1]);
      }

      if (v73)
      {
        free(v73[-1].i64[1]);
      }

      sub_2779F5C10(*(a2 + 11152), 2, "Failed to allocate hbuf, vbuf, src_hbuf, or src_vbuf");
      v42 = v78;
    }

    sub_277B32110(v42, *(a2 + 480) - v79, v18, v30, v17, v71 + 1);
    sub_277B321E8(v77, (*(a2 + 480) - (v18 * v14)), v18, v16, v70, v43 + 3);
    v44 = *(a2 + 48);
    sub_277B32110(v74, v44, v80, v16, v17, v71 + 1);
    sub_277B321E8(v73, v44, v80, v16, v17, v43 + 3);
    *(v12 + 10) = sub_277B9EC6C(v78, v74, byte_277C42228[v81], v79, v72, &v82 + 1);
    *(v12 + 8) = sub_277B9EC6C(v77, v73, v71, v14, v72, &v82);
    if (v13 == 1)
    {
      if (SHIDWORD(v82) >= v82)
      {
        *(v12 + 10) = 0;
      }

      else
      {
        *(v12 + 8) = 0;
      }
    }

    v45 = *(v12 + 8);
    v46 = *(a2 + 48);
    v47 = *(a2 + 480) + *(a2 + 504) * v45 + (v45 >> 16);
    v48 = (*(*v67 + (v81 << 7) + 51440))(v46, v80, v47, v18);
    v34 = v48;
    if (*(v12 + 8))
    {
      v49 = (*(*v67 + (v81 << 7) + 51440))(*(a2 + 48), v80, *(a2 + 480), v18);
      *a7 = v49;
      if (v49 >= v34)
      {
        v50 = HIWORD(v45);
      }

      else
      {
        LOWORD(v50) = 0;
        LOWORD(v45) = 0;
        *(v12 + 8) = 0;
        v47 = *(a2 + 480);
        v34 = v49;
      }
    }

    else
    {
      v50 = HIWORD(v45);
      *a7 = v48;
    }

    if (!v76)
    {
      *&v83 = v47 - v18;
      *(&v83 + 1) = v47 - 1;
      v84 = v47 + 1;
      v85 = v47 + v18;
      (*(*v67 + (v81 << 7) + 51488))(v46, v80, &v83);
      v51 = 0;
      v52 = &word_277BB7DE2;
      do
      {
        v53 = v86[v51];
        if (v53 < v34)
        {
          *(v12 + 8) = *(v52 - 1) + v45;
          *(v12 + 10) = *v52 + v50;
          v34 = v53;
        }

        ++v51;
        v52 += 2;
      }

      while (v51 != 4);
      if (v86[0] >= v86[3])
      {
        v54 = v45 + 1;
      }

      else
      {
        v54 = v45 - 1;
      }

      if (v86[1] >= v86[2])
      {
        v55 = v50 + 1;
      }

      else
      {
        v55 = v50 - 1;
      }

      v56 = (*(*v67 + (v81 << 7) + 51440))(v46, v80, *(a2 + 480) + *(a2 + 504) * v54 + v55, v18);
      if (v34 > v56)
      {
        *(v12 + 8) = v54 | (v55 << 16);
        v34 = v56;
      }
    }

    v83 = *(a2 + 128740);
    sub_277B993C4(&v83, *v69, v69[1]);
    v57 = *(v12 + 10);
    v58 = DWORD1(v83);
    if (v57 < SDWORD1(v83))
    {
      v58 = *(v12 + 10);
    }

    if (v83 <= v57)
    {
      v59 = v58;
    }

    else
    {
      v59 = v83;
    }

    v60 = *(v12 + 8);
    v61 = WORD6(v83);
    if (v60 < SHIDWORD(v83))
    {
      v61 = *(v12 + 8);
    }

    if (SDWORD2(v83) <= v60)
    {
      v62 = v61;
    }

    else
    {
      v62 = WORD4(v83);
    }

    *(v12 + 8) = (v59 << 19) | (8 * (v62 & 0x1FFF));
    if ((v68 & 1) == 0)
    {
      v63 = 0;
      v64 = (a2 + 480);
      do
      {
        v65 = v87[v63 + 1];
        *v64 = v87[v63];
        v64[1] = v65;
        v63 += 2;
        v64 += 163;
      }

      while (v63 != 6);
    }

    if (v78)
    {
      free(*(v78 - 8));
    }

    if (v77)
    {
      free(*(v77 - 8));
    }

    if (v74)
    {
      free(v74[-1].i64[1]);
    }

    if (v73)
    {
      free(v73[-1].i64[1]);
    }
  }

  else
  {
    *(v12 + 8) = 0;
    v34 = (*(*a1 + (v81 << 7) + 51440))(*(a2 + 48), v80, *(a2 + 480), v18);
    if ((v24 & 1) == 0)
    {
      v35 = 0;
      v36 = (a2 + 480);
      do
      {
        v37 = v87[v35 + 1];
        *v36 = v87[v35];
        v36[1] = v37;
        v35 += 2;
        v36 += 163;
      }

      while (v35 != 6);
    }
  }

  return v34;
}

uint64_t sub_277B9F838(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v47 = *(a1 + 80);
  v12 = *(v47 + 2992);
  v13 = a2 >> 16;
  if (a2 >> 16 >= *(a1 + 92))
  {
    LOWORD(v13) = *(a1 + 92);
  }

  if (*(a1 + 88) > a2 >> 16)
  {
    LOWORD(v13) = *(a1 + 88);
  }

  v14 = a2;
  if (a2 >= *(a1 + 100))
  {
    v14 = *(a1 + 100);
  }

  if (*(a1 + 96) > a2)
  {
    v14 = *(a1 + 96);
  }

  v15 = *v11 + v14 * *(v11 + 24) + v13;
  *a5 = 0;
  *a3 = v14 | (v13 << 16);
  v49 = v11;
  v50 = v10;
  v51 = v9;
  v52 = v8;
  v17 = (*(v10 + 88))(v15, *(v11 + 24));
  v18 = 0;
  v19 = *(a1 + 164);
  v17.n128_u16[0] = *a3;
  v17.n128_u16[2] = *(a3 + 2);
  v20.i16[0] = *(a1 + 160);
  v20.i16[2] = *(a1 + 162);
  v21 = vshl_n_s32(vsub_s32(v17.n128_u64[0], v20), 3uLL);
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v24 = vabs_s32(vshr_n_s32(vshl_n_s32(v21, 0x10uLL), 0x10uLL));
      v18 = (15 * (v24.i32[1] + v24.i32[0])) >> 3;
    }

    else if (v19 == 3)
    {
      v23 = vabs_s32(vshr_n_s32(vshl_n_s32(v21, 0x10uLL), 0x10uLL));
      v18 = v23.i32[1] + v23.i32[0];
    }
  }

  else if (*(a1 + 164))
  {
    if (v19 == 1)
    {
      v22 = vabs_s32(vshr_n_s32(vshl_n_s32(v21, 0x10uLL), 0x10uLL));
      v18 = 4 * (v22.i32[1] + v22.i32[0]);
    }
  }

  else
  {
    v18 = ((*(*(a1 + 176) + 4 * v21.i16[0]) + *(*(a1 + 184) + 4 * v21.i16[2]) + *(*(a1 + 168) + ((4 * (v21.u16[2] != 0)) | (8 * (v21.u16[0] != 0))))) * *(a1 + 196) + 256) >> 9;
  }

  v25 = v18 + v16;
  v26 = (v12 + ~a4);
  if (v26 >= 0)
  {
    v27 = v47 + 2996;
    v28 = (v47 + 136 * v26 + 12);
    v29 = v15;
    v46 = v15;
    while (1)
    {
      if (*(v27 + 4 * v26) < 1)
      {
        goto LABEL_59;
      }

      v30 = 0;
      v31 = 0;
      v48 = v28;
      do
      {
        if (*(a1 + 88) <= (*(v28 - 1) + *(a3 + 2)))
        {
          v32 = *(v28 - 1) + *(a3 + 2);
          if (*(a1 + 92) >= v32)
          {
            v33 = *(v28 - 2) + *a3;
            if (*(a1 + 96) <= v33 && *(a1 + 100) >= v33)
            {
              v53 = v31;
              v34 = v29;
              v35 = v25;
              v36 = (*(v50 + 88))(v29 + *v28, *(v49 + 24), v52, v51);
              v25 = v35;
              if (v36 >= v35)
              {
                v29 = v34;
                v31 = v53;
              }

              else
              {
                v37 = *(a1 + 164);
                LOWORD(v38) = 8 * (v33 - *(a1 + 160));
                LOWORD(v39) = 8 * (v32 - *(a1 + 162));
                if (v37 > 1)
                {
                  v38 = v38;
                  v39 = v39;
                  v29 = v34;
                  if (v37 == 2)
                  {
                    if ((v38 & 0x8000u) != 0)
                    {
                      v38 = (-8 * (v33 - *(a1 + 160)));
                    }

                    if ((v39 & 0x8000u) != 0)
                    {
                      v39 = (-8 * (v32 - *(a1 + 162)));
                    }

                    v40 = (15 * (v39 + v38)) >> 3;
                  }

                  else
                  {
                    if ((v38 & 0x8000u) != 0)
                    {
                      v38 = (-8 * (v33 - *(a1 + 160)));
                    }

                    if ((v39 & 0x8000u) != 0)
                    {
                      v39 = (-8 * (v32 - *(a1 + 162)));
                    }

                    v40 = v39 + v38;
                    if (v37 != 3)
                    {
                      v40 = 0;
                    }
                  }
                }

                else
                {
                  v29 = v34;
                  if (*(a1 + 164))
                  {
                    if (v37 == 1)
                    {
                      v38 = v38;
                      if ((v38 & 0x8000u) != 0)
                      {
                        v38 = (-8 * (v33 - *(a1 + 160)));
                      }

                      v39 = v39;
                      if ((v39 & 0x8000u) != 0)
                      {
                        v39 = (-8 * (v32 - *(a1 + 162)));
                      }

                      v40 = 4 * (v39 + v38);
                    }

                    else
                    {
                      v40 = 0;
                    }
                  }

                  else
                  {
                    v40 = ((*(*(a1 + 176) + 4 * (8 * (v33 - *(a1 + 160)))) + *(*(a1 + 184) + 4 * (8 * (v32 - *(a1 + 162)))) + *(*(a1 + 168) + ((4 * ((8 * (v32 - *(a1 + 162))) != 0)) | (8 * ((8 * (v33 - *(a1 + 160))) != 0))))) * *(a1 + 196) + 256) >> 9;
                  }
                }

                v31 = v53;
                v41 = v40 + v36;
                if (v41 >= v35)
                {
                  v25 = v35;
                }

                else
                {
                  v25 = v41;
                }

                if (v41 < v35)
                {
                  v31 = v30 + 1;
                }
              }
            }
          }
        }

        ++v30;
        v28 += 2;
      }

      while (v30 < *(v27 + 4 * v26));
      if (!v31)
      {
        break;
      }

      v28 = v48;
      v42 = v47 + 136 * v26 + 8 * v31;
      *a3 += *v42;
      *(a3 + 2) += *(v42 + 2);
      v29 += *(v42 + 4);
      v15 = v46;
LABEL_61:
      v28 -= 34;
      if (v26-- <= 0)
      {
        return v25;
      }
    }

    v15 = v46;
    v28 = v48;
LABEL_59:
    if (v29 == v15)
    {
      ++*a5;
      v29 = v15;
    }

    goto LABEL_61;
  }

  return v25;
}

uint64_t sub_277B9FCA0(uint64_t a1, uint64_t a2, int *a3, int a4, _DWORD *a5, int *a6, _DWORD *a7, _DWORD *a8, unsigned __int16 *a9)
{
  v11 = a6;
  v15 = a1;
  v16 = *a3;
  v17 = *(a3 + 16);
  v89 = a3[5];
  v18 = *(a3 + 1);
  *a6 = a4;
  if ((*(**(a1 + 7864) + 167) & 0x80) != 0)
  {
    v19 = (a2 + 272);
  }

  else
  {
    v19 = *(a1 + 7944);
  }

  v20 = *v19;
  if (*v19 == -1 || (v21 = v19[1], v21 == -1))
  {
    v22 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (!v22)
    {
      v91 = 0;
      v23 = a5[1];
      result = (*a5 + v23);
      v93 = *a5 + v23;
      *a7 = v23;
      *a8 = a5[2];
      goto LABEL_26;
    }

LABEL_12:
    if (!v22)
    {
      result = sub_277BA0F2C();
      v91 = 0;
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v20 == 0x4000)
  {
    v22 = v21 != 0x4000;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_13:
  v25 = sub_277BA0C88();
  *a7 = v25;
  v26 = *(a3 + 52);
  if (v26 == 4)
  {
    goto LABEL_14;
  }

  v28 = *(a3 + 5);
  v29 = *v11;
  v30 = *v28;
  v31 = (v29 - v30);
  v32 = *(v11 + 1);
  v33 = v28[1];
  v34 = (v32 - v33);
  if (v31 < 0)
  {
    v31 = -v31;
  }

  if (v34 < 0)
  {
    v34 = -v34;
  }

  if (v26 == 3)
  {
    LODWORD(v27) = (v34 + v31) >> 3;
    goto LABEL_15;
  }

  if (v26 == 1)
  {
    LODWORD(v27) = (v34 + v31) >> 2;
    goto LABEL_15;
  }

  if (*(a3 + 52))
  {
LABEL_14:
    LODWORD(v27) = 0;
  }

  else
  {
    v27 = ((*(*(a3 + 8) + 4 * (v29 - v30)) + *(*(a3 + 9) + 4 * (v32 - v33)) + *(*(a3 + 7) + ((4 * (v32 != v33)) | (8 * (v29 != v30))))) * a3[20] + 0x2000) >> 14;
  }

LABEL_15:
  result = (v27 + v25);
  v91 = 1;
LABEL_25:
  v93 = result;
LABEL_26:
  if (v17 == 3)
  {
    return result;
  }

  if (a9)
  {
    v35 = *v11;
    if (*a9 == *v11 && a9[1] == HIWORD(v35))
    {
      return 0x7FFFFFFFLL;
    }

    *a9 = v35;
  }

  v86 = v17;
  v85 = a2;
  v92 = v15;
  v90 = a7;
  v87 = v11;
  v82 = v16;
  if (!v18 || (v36 = *v18, *v18 == 0x7FFFFFFF) || (v37 = v18[1], v37 == 0x7FFFFFFF) || (v38 = v18[2], v38 == 0x7FFFFFFF) || (v39 = v18[3], v39 == 0x7FFFFFFF) || (v77 = v18[4], v36 >= v77) || v36 >= v39 || v36 >= v38 || v36 >= v37 || v77 == 0x7FFFFFFF)
  {
    HIDWORD(v100[0]) = a4 - 0x40000;
    LODWORD(v100[0]) = 0;
    v83 = sub_277BA11D8(v15, a2, v100 + 2, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100, v91);
    v99 = a4 + 0x40000;
    v40 = sub_277BA11D8(v15, a2, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100, v91);
    LOWORD(v98) = a4 - 4;
    HIWORD(v98) = HIWORD(a4);
    v41 = sub_277BA11D8(v15, a2, &v98, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100, v91);
    v42 = a2;
    v96 = a4 + 4;
    v97 = HIWORD(a4);
    if (v41 <= sub_277BA11D8(v92, a2, &v96, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100, v91))
    {
      v43 = -4;
    }

    else
    {
      v43 = 4;
    }

    if (v83 <= v40)
    {
      v44 = -4;
    }

    else
    {
      v44 = 4;
    }

    v94 = v43 + a4;
    v95 = v44 + HIWORD(a4);
    v45 = v42;
    v15 = v92;
    sub_277BA11D8(v92, v45, &v94, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100, v91);
    if (v89 >= 2)
    {
      v46 = a4;
      v47 = a4 >> 16;
      v48 = *v11;
      v49 = *v11;
      v50 = *(v11 + 1);
      v51 = *(v11 + 1);
      HIDWORD(v100[0]) = 0;
      if (v46 == v48 || v47 == v50)
      {
        if (v46 != v48 || v47 == v50)
        {
          if (v46 != v48 && v47 == v50)
          {
            LOWORD(v100[0]) = v49 + v43;
            WORD1(v100[0]) = v51 + 4;
            LOWORD(v99) = v49 + v43;
            HIWORD(v99) = v51 - 4;
            sub_277BA11D8(v92, v85, v100, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100 + 1, v91);
            sub_277BA11D8(v92, v85, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100 + 1, v91);
            LOWORD(v98) = v49;
            HIWORD(v98) = v51 - v44;
            sub_277BA11D8(v92, v85, &v98, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100 + 1, v91);
          }
        }

        else
        {
          LOWORD(v100[0]) = v49 + 4;
          WORD1(v100[0]) = v51 + v44;
          LOWORD(v99) = v49 - 4;
          HIWORD(v99) = v51 + v44;
          sub_277BA11D8(v92, v85, v100, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100 + 1, v91);
          sub_277BA11D8(v92, v85, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100 + 1, v91);
          LOWORD(v98) = v49 - v43;
          HIWORD(v98) = v51;
          sub_277BA11D8(v92, v85, &v98, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100 + 1, v91);
        }
      }

      else
      {
        LOWORD(v100[0]) = v49;
        WORD1(v100[0]) = v51 + v44;
        LOWORD(v99) = v49 + v43;
        HIWORD(v99) = v51;
        sub_277BA11D8(v92, v85, v100, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100 + 1, v91);
        v15 = v92;
        sub_277BA11D8(v92, v85, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100 + 1, v91);
      }
    }
  }

  else
  {
    v100[0] = 0;
    sub_277BA116C(v18, v100 + 1, v100);
    if (v100[0])
    {
      LOWORD(v99) = a4 + 4 * WORD2(v100[0]);
      HIWORD(v99) = 4 * LOWORD(v100[0]) + HIWORD(a4);
      v98 = 0;
      sub_277BA11D8(v15, a2, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, &v98, v91);
    }
  }

  if (v86 <= 1)
  {
    v52 = *v11;
    if (a9)
    {
      if (a9[2] == v52 && a9[3] == HIWORD(v52))
      {
        return 0x7FFFFFFFLL;
      }

      *(a9 + 1) = v52;
      LOWORD(v52) = *v11;
      v53 = *(v11 + 1);
    }

    else
    {
      v53 = HIWORD(v52);
    }

    WORD2(v100[0]) = v52;
    HIWORD(v100[0]) = v53 - 2;
    LODWORD(v100[0]) = 0;
    v84 = sub_277BA11D8(v15, v85, v100 + 2, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100, v91);
    LOWORD(v99) = v52;
    HIWORD(v99) = v53 + 2;
    v54 = sub_277BA11D8(v15, v85, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100, v91);
    LOWORD(v98) = v52 - 2;
    HIWORD(v98) = v53;
    v55 = sub_277BA11D8(v15, v85, &v98, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, a7, v100, v91);
    v96 = v52 + 2;
    v97 = v53;
    v56 = v55 > sub_277BA11D8(v92, v85, &v96, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100, v91);
    v57 = v90;
    if (v56)
    {
      v58 = 2;
    }

    else
    {
      v58 = -2;
    }

    v81 = v58;
    v94 = v52 + v58;
    if (v84 > v54)
    {
      v59 = 2;
    }

    else
    {
      v59 = -2;
    }

    v95 = v53 + v59;
    v60 = v92;
    sub_277BA11D8(v92, v85, &v94, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100, v91);
    v61 = v86;
    if (v89 < 2)
    {
LABEL_75:
      if (v82 && !v61)
      {
        v68 = *v11;
        if (a9)
        {
          if (a9[4] == v68 && a9[5] == HIWORD(v68))
          {
            return 0x7FFFFFFFLL;
          }

          *(a9 + 2) = v68;
          LOWORD(v68) = *v11;
          v69 = *(v11 + 1);
        }

        else
        {
          v69 = HIWORD(v68);
        }

        WORD2(v100[0]) = v68;
        HIWORD(v100[0]) = v69 - 1;
        LODWORD(v100[0]) = 0;
        v88 = sub_277BA11D8(v60, v85, v100 + 2, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v57, v100, v91);
        LOWORD(v99) = v68;
        HIWORD(v99) = v69 + 1;
        v70 = sub_277BA11D8(v60, v85, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v57, v100, v91);
        LOWORD(v98) = v68 - 1;
        HIWORD(v98) = v69;
        v71 = sub_277BA11D8(v60, v85, &v98, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v57, v100, v91);
        v96 = v68 + 1;
        v97 = v69;
        if (v71 > sub_277BA11D8(v92, v85, &v96, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100, v91))
        {
          v72 = 1;
        }

        else
        {
          v72 = -1;
        }

        v94 = v68 + v72;
        if (v88 > v70)
        {
          v73 = 1;
        }

        else
        {
          v73 = -1;
        }

        v95 = v69 + v73;
        sub_277BA11D8(v92, v85, &v94, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100, v91);
        if (v89 >= 2)
        {
          v74 = v72;
          v75 = *v11;
          v76 = *(v11 + 1);
          HIDWORD(v100[0]) = 0;
          if (v75 == v68 || v69 == v76)
          {
            if (v75 != v68 || v69 == v76)
            {
              if (v75 != v68 && v69 == v76)
              {
                LOWORD(v100[0]) = v75 + v74;
                WORD1(v100[0]) = v69 + 1;
                LOWORD(v99) = v75 + v74;
                HIWORD(v99) = v69 - 1;
                sub_277BA11D8(v92, v85, v100, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
                sub_277BA11D8(v92, v85, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
                LOWORD(v98) = v75;
                HIWORD(v98) = v69 - v73;
                sub_277BA11D8(v92, v85, &v98, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
              }
            }

            else
            {
              LOWORD(v100[0]) = v68 + 1;
              WORD1(v100[0]) = v76 + v73;
              LOWORD(v99) = v68 - 1;
              HIWORD(v99) = v76 + v73;
              sub_277BA11D8(v92, v85, v100, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
              sub_277BA11D8(v92, v85, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
              LOWORD(v98) = v68 - v74;
              HIWORD(v98) = v76;
              sub_277BA11D8(v92, v85, &v98, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
            }
          }

          else
          {
            LOWORD(v100[0]) = v75;
            WORD1(v100[0]) = v76 + v73;
            LOWORD(v99) = v75 + v74;
            HIWORD(v99) = v76;
            sub_277BA11D8(v92, v85, v100, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
            sub_277BA11D8(v92, v85, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
          }
        }
      }

      return v93;
    }

    v62 = *v11;
    v63 = *(v11 + 1);
    HIDWORD(v100[0]) = 0;
    if (v62 == v52 || v53 == v63)
    {
      if (v62 != v52 || v53 == v63)
      {
        if (v62 != v52 && v53 == v63)
        {
          LOWORD(v100[0]) = v62 + v81;
          WORD1(v100[0]) = v53 + 2;
          LOWORD(v99) = v62 + v81;
          HIWORD(v99) = v53 - 2;
          sub_277BA11D8(v92, v85, v100, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
          sub_277BA11D8(v92, v85, &v99, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
          LOWORD(v98) = v62;
          HIWORD(v98) = v53 - v59;
          v61 = v86;
          v60 = v92;
          sub_277BA11D8(v92, v85, &v98, v11, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
        }

        goto LABEL_74;
      }

      LOWORD(v100[0]) = v52 + 2;
      WORD1(v100[0]) = v63 + v59;
      LOWORD(v99) = v52 - 2;
      HIWORD(v99) = v63 + v59;
      v64 = v90;
      v65 = v85;
      v66 = a8;
      sub_277BA11D8(v92, v85, v100, v87, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
      sub_277BA11D8(v92, v85, &v99, v87, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
      LOWORD(v98) = v52 - v81;
      HIWORD(v98) = v63;
      v80 = v91;
      v61 = v86;
      v67 = &v98;
    }

    else
    {
      LOWORD(v100[0]) = v62;
      WORD1(v100[0]) = v63 + v59;
      LOWORD(v99) = v62 + v81;
      HIWORD(v99) = v63;
      v64 = v90;
      v65 = v85;
      v66 = a8;
      sub_277BA11D8(v92, v85, v100, v87, a3 + 6, (a3 + 22), a3 + 5, &v93, a8, v90, v100 + 1, v91);
      v80 = v91;
      v61 = v86;
      v67 = &v99;
    }

    v78 = v66;
    v79 = v64;
    v11 = v87;
    v60 = v92;
    sub_277BA11D8(v92, v65, v67, v87, a3 + 6, (a3 + 22), a3 + 5, &v93, v78, v79, v100 + 1, v80);
LABEL_74:
    v57 = v90;
    goto LABEL_75;
  }

  return v93;
}

uint64_t sub_277BA0C88()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v33 = *MEMORY[0x277D85DE8];
  v7 = *v6;
  v8 = *(v6 + 8);
  v10 = v6[2];
  v9 = v6[3];
  v11 = *v9;
  v12 = *v4;
  v13 = *(v10 + 24);
  v14 = (*v10 + ((*v4 << 16) >> 19) * v13 + (*v4 >> 19));
  v31 = *(v9 + 6);
  v15 = v6[4];
  v16 = v6[5];
  v18 = *(v6 + 12);
  v17 = *(v6 + 13);
  v19 = *(v6 + 18);
  v20 = *(v6 + 19);
  v21 = *v0;
  v22 = v0[1];
  v23 = HIWORD(v12) & 7;
  v24 = v12 & 7;
  if ((*(*(v0 + 995) + 192) & 8) != 0)
  {
    if (v15)
    {
      sub_2779CAB10(v0, v1, v21, v22, v5, v32 >> 1, v19, v20, __SPAIR64__(v24, v23), v14, v13, v0[2664], v8);
      if (v16)
      {
        sub_2779725E0(v32 >> 1, v15, v19, v20, v32 >> 1, v19, v16, v18, v25, v26, v27, v28, v17);
      }

      else
      {
        sub_277972524(v32 >> 1, v15, v19, v20, v32 >> 1, v19);
      }
    }

    else
    {
      sub_2779CAB10(v0, v1, v21, v22, v5, v32 >> 1, v19, v20, __SPAIR64__(v24, v23), v14, v13, v0[2664], v8);
    }

    return (*(v7 + 24))(v32 >> 1, v19, v11, v31, v3);
  }

  else
  {
    if (v15)
    {
      if (v16)
      {
        if (v24 | v23)
        {
          v30 = v14;
          v14 = v32;
          sub_2779CA690(v0, v1, v21, v22, v5, v32, v19, v20, __SPAIR64__(v24, v23), v30, v13, v8);
          v13 = v19;
        }

        sub_277A52504(v32, v15, v19, v20, v14, v13, v16, v18, v17);
      }

      else
      {
        sub_2779CA690(v0, v1, v21, v22, v5, v32, v19, v20, __SPAIR64__(v24, v23), v14, v13, v8);
        sub_277A52414(v32, v15, v19, v20, v32[0].i64, v19);
      }
    }

    else
    {
      sub_2779CA690(v0, v1, v21, v22, v5, v32, v19, v20, __SPAIR64__(v24, v23), v14, v13, v8);
    }

    return (*(v7 + 24))(v32, v19, v11, v31, v3);
  }
}

uint64_t sub_277BA0F2C()
{
  v0 = MEMORY[0x28223BE20]();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v39 = *MEMORY[0x277D85DE8];
  v14 = *v1;
  v16 = v1[2];
  v15 = v1[3];
  v17 = *v15;
  v18 = *(v16 + 6);
  v19 = (*v12 << 16 >> 19) * v18 + (*v12 >> 19);
  v20 = *v16;
  v21 = (v20 + v19);
  v22 = *(v15 + 6);
  v23 = v1[4];
  if (v23)
  {
    v25 = *(v1 + 18);
    v24 = *(v1 + 19);
    v26 = v1[5];
    v27 = *(v1 + 12);
    if ((*(*(v0 + 7960) + 192) & 8) != 0)
    {
      if (v26)
      {
        sub_2779725E0(v38 >> 1, v23, v25, v24, v21, v18, v26, v27, v2, v3, v4, v5, *(v1 + 13));
      }

      else
      {
        sub_277972524(v38 >> 1, v23, *(v1 + 18), v24, v21, v18);
      }

      v28 = (*(v14 + 24))(v38 >> 1, v25, v17, v22, v9);
    }

    else
    {
      if (v26)
      {
        sub_277A52504(v38, v23, v25, v24, v21, v18, v26, v27, *(v1 + 13));
      }

      else
      {
        sub_277A52414(v38, v23, *(v1 + 18), v24, v21, v18);
      }

      v28 = (*(v14 + 24))(v38, v25, v17, v22, v9);
    }
  }

  else
  {
    v28 = (*(v14 + 24))(v20 + v19, v18, v17, v22, v9);
  }

  *v7 = v28;
  v29 = *(v11 + 12);
  if (v29 == 4)
  {
    goto LABEL_13;
  }

  v32 = *v13;
  v33 = **v11;
  v34 = (v32 - v33);
  v35 = *(v13 + 1);
  v36 = (*v11)[1];
  v37 = (v35 - v36);
  if (v34 < 0)
  {
    v34 = -v34;
  }

  if (v37 < 0)
  {
    v37 = -v37;
  }

  if (v29 == 3)
  {
    LODWORD(v30) = (v37 + v34) >> 3;
    return (v30 + v28);
  }

  if (v29 == 1)
  {
    LODWORD(v30) = (v37 + v34) >> 2;
    return (v30 + v28);
  }

  if (*(v11 + 12))
  {
LABEL_13:
    LODWORD(v30) = 0;
  }

  else
  {
    v30 = ((*&v11[3][2 * (v32 - v33)] + *&v11[4][2 * (v35 - v36)] + *(v11[2] + ((4 * (v35 != v36)) | (8 * (v32 != v33))))) * *(v11 + 10) + 0x2000) >> 14;
  }

  return (v30 + v28);
}

_DWORD *sub_277BA116C(_DWORD *result, int *a2, int *a3)
{
  v3 = result[3];
  v4 = result[1];
  v5 = v4 - v3;
  v6 = v4 - 2 * *result + v3;
  if ((v6 ^ v5) >= 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = -2;
  }

  *a3 = (v6 / v7 + v5) / v6;
  v8 = result[4];
  v9 = result[2];
  v10 = v8 - v9;
  v11 = v8 - 2 * *result + v9;
  if ((v11 ^ v10) >= 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = -2;
  }

  *a2 = (v11 / v12 + v10) / v11;
  return result;
}

uint64_t sub_277BA11D8(uint64_t a1, uint64_t a2, unsigned __int16 *a3, _DWORD *a4, int *a5, uint64_t a6, unsigned __int16 **a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, int a12)
{
  v12 = *a3;
  v13 = *a3 >> 16;
  if (v13 < *a5 || v13 > a5[1] || v12 < a5[2] || v12 > a5[3])
  {
    return 0x7FFFFFFFLL;
  }

  if (a12)
  {
    v20 = sub_277BA0C88();
  }

  else
  {
    v21 = *a6;
    v22 = **(a6 + 16) + *(*(a6 + 16) + 24) * (v12 >> 3) + (v12 >> 19);
    if (*(a6 + 32))
    {
      if (*(a6 + 40))
      {
        v20 = v21[10](v22);
      }

      else
      {
        v20 = v21[5](v22);
      }
    }

    else
    {
      v20 = v21[4](v22);
    }
  }

  v23 = *(a7 + 12);
  if (v23 == 4)
  {
    goto LABEL_15;
  }

  v25 = *a3;
  v26 = **a7;
  v27 = (v25 - v26);
  v28 = a3[1];
  v29 = (*a7)[1];
  v30 = (v28 - v29);
  if (v27 < 0)
  {
    v27 = -v27;
  }

  if (v30 < 0)
  {
    v30 = -v30;
  }

  if (v23 == 3)
  {
    LODWORD(v24) = (v30 + v27) >> 3;
  }

  else if (v23 == 1)
  {
    LODWORD(v24) = (v30 + v27) >> 2;
  }

  else
  {
    if (*(a7 + 12))
    {
LABEL_15:
      LODWORD(v24) = 0;
      goto LABEL_16;
    }

    v24 = ((*&a7[3][2 * (v25 - v26)] + *&a7[4][2 * (v28 - v29)] + *(a7[2] + ((4 * (v28 != v29)) | (8 * (v25 != v26))))) * *(a7 + 10) + 0x2000) >> 14;
  }

LABEL_16:
  v14 = (v24 + v20);
  if (v14 < *a8)
  {
    *a8 = v14;
    *a4 = *a3;
    *a10 = v20;
    *a9 = 0;
    *a11 |= 1u;
  }

  return v14;
}

uint64_t sub_277BA1418(uint64_t a1, uint64_t a2, int *a3, int a4, _DWORD *a5, unsigned __int16 *a6, _DWORD *a7, _DWORD *a8, unsigned __int16 *a9)
{
  v10 = a7;
  v15 = a1;
  v16 = *a3;
  v17 = *(a3 + 16);
  v91 = a3[5];
  v18 = *(a3 + 1);
  *a6 = a4;
  if ((*(**(a1 + 7864) + 167) & 0x80) != 0)
  {
    v19 = (a2 + 272);
  }

  else
  {
    v19 = *(a1 + 7944);
  }

  v20 = *v19;
  if (*v19 == -1 || (v21 = v19[1], v21 == -1))
  {
    v22 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (!v22)
    {
      v95 = 0;
      v23 = a5[1];
      result = (*a5 + v23);
      v100 = *a5 + v23;
      *a7 = v23;
      *a8 = a5[2];
      goto LABEL_26;
    }

LABEL_12:
    if (!v22)
    {
      result = sub_277BA0F2C();
      v95 = 0;
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v20 == 0x4000)
  {
    v22 = v21 != 0x4000;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_13:
  v25 = sub_277BA0C88();
  *v10 = v25;
  v26 = *(a3 + 52);
  if (v26 == 4)
  {
    goto LABEL_14;
  }

  v28 = *(a3 + 5);
  v29 = *a6;
  v30 = *v28;
  v31 = (v29 - v30);
  v32 = a6[1];
  v33 = v28[1];
  v34 = (v32 - v33);
  if (v31 < 0)
  {
    v31 = -v31;
  }

  if (v34 < 0)
  {
    v34 = -v34;
  }

  if (v26 == 3)
  {
    LODWORD(v27) = (v34 + v31) >> 3;
    goto LABEL_15;
  }

  if (v26 == 1)
  {
    LODWORD(v27) = (v34 + v31) >> 2;
    goto LABEL_15;
  }

  if (*(a3 + 52))
  {
LABEL_14:
    LODWORD(v27) = 0;
  }

  else
  {
    v27 = ((*(*(a3 + 8) + 4 * (v29 - v30)) + *(*(a3 + 9) + 4 * (v32 - v33)) + *(*(a3 + 7) + ((4 * (v32 != v33)) | (8 * (v29 != v30))))) * a3[20] + 0x2000) >> 14;
  }

LABEL_15:
  result = (v27 + v25);
  v95 = 1;
LABEL_25:
  v100 = result;
LABEL_26:
  if (v17 == 3)
  {
    return result;
  }

  if (a9)
  {
    v35 = *a6;
    if (*a9 == *a6 && a9[1] == HIWORD(v35))
    {
      return 0x7FFFFFFFLL;
    }

    *a9 = v35;
  }

  v89 = v17;
  v96 = a2;
  v88 = a8;
  v90 = v10;
  v85 = v16;
  if (v18)
  {
    if (*v18 != 0x7FFFFFFF)
    {
      v36 = v18[1];
      if (v36 != 0x7FFFFFFF)
      {
        v37 = v18[2];
        if (v37 != 0x7FFFFFFF)
        {
          v38 = v18[3];
          if (v38 != 0x7FFFFFFF)
          {
            v39 = v18[4];
            if (v39 != 0x7FFFFFFF)
            {
              *v109 = a4 - 0x40000;
              v108 = a4 + 0x40000;
              v51 = (v36 >= v38) | (2 * (v37 >= v39));
              LOWORD(v107) = a4 + 4;
              HIWORD(v107) = HIWORD(a4);
              v105 = a4 - 4;
              v106 = HIWORD(a4);
              v103 = a4 + 4;
              v104 = HIWORD(a4) - 4;
              v101 = a4 + 4;
              v102 = HIWORD(a4) + 4;
              v99[0] = a4 - 4;
              v99[1] = HIWORD(a4) - 4;
              v98[0] = a4 - 4;
              v98[1] = HIWORD(a4) + 4;
              v97 = 0;
              if (v51 > 1)
              {
                if (v51 == 2)
                {
                  v52 = v99;
                  v53 = &v105;
                  goto LABEL_60;
                }

                v52 = v98;
                v53 = &v105;
              }

              else
              {
                if (!v51)
                {
                  v52 = &v103;
                  v53 = &v107;
LABEL_60:
                  v54 = v109;
LABEL_64:
                  sub_277BA11D8(v15, a2, v54, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, a8, v10, &v97, v95);
                  sub_277BA11D8(v15, a2, v53, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, a8, v10, &v97, v95);
                  sub_277BA11D8(v15, a2, v52, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, a8, v10, &v97, v95);
                  goto LABEL_65;
                }

                v52 = &v101;
                v53 = &v107;
              }

              v54 = &v108;
              goto LABEL_64;
            }
          }
        }
      }
    }
  }

  *v109 = a4 - 0x40000;
  v108 = 0;
  v86 = sub_277BA11D8(v15, a2, v109, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, a8, v10, &v108, v95);
  v107 = a4 + 0x40000;
  v40 = sub_277BA11D8(v15, a2, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, a8, v10, &v108, v95);
  v105 = a4 - 4;
  v106 = HIWORD(a4);
  v41 = sub_277BA11D8(v15, v96, &v105, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, a8, v10, &v108, v95);
  v92 = v15;
  v42 = a8;
  v103 = a4 + 4;
  v104 = HIWORD(a4);
  if (v41 <= sub_277BA11D8(v92, v96, &v103, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, a8, v10, &v108, v95))
  {
    v43 = -4;
  }

  else
  {
    v43 = 4;
  }

  if (v86 <= v40)
  {
    v44 = -4;
  }

  else
  {
    v44 = 4;
  }

  v101 = v43 + a4;
  v102 = v44 + HIWORD(a4);
  v81 = v42;
  v15 = v92;
  sub_277BA11D8(v92, v96, &v101, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v81, v10, &v108, v95);
  if (v91 >= 2)
  {
    v45 = a4;
    v46 = a4 >> 16;
    v47 = *a6;
    v48 = *a6;
    v49 = a6[1];
    v50 = a6[1];
    *v109 = 0;
    if (v45 == v47 || v46 == v49)
    {
      if (v45 != v47 || v46 == v49)
      {
        if (v45 != v47 && v46 == v49)
        {
          LOWORD(v108) = v48 + v43;
          HIWORD(v108) = v50 + 4;
          LOWORD(v107) = v48 + v43;
          HIWORD(v107) = v50 - 4;
          sub_277BA11D8(v92, v96, &v108, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
          sub_277BA11D8(v92, v96, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
          v105 = v48;
          v106 = v50 - v44;
          v15 = v92;
          sub_277BA11D8(v92, v96, &v105, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
        }
      }

      else
      {
        LOWORD(v108) = v48 + 4;
        HIWORD(v108) = v50 + v44;
        LOWORD(v107) = v48 - 4;
        HIWORD(v107) = v50 + v44;
        sub_277BA11D8(v92, v96, &v108, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
        sub_277BA11D8(v92, v96, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
        v105 = v48 - v43;
        v106 = v50;
        v15 = v92;
        sub_277BA11D8(v92, v96, &v105, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
      }
    }

    else
    {
      LOWORD(v108) = v48;
      HIWORD(v108) = v50 + v44;
      LOWORD(v107) = v48 + v43;
      HIWORD(v107) = v50;
      sub_277BA11D8(v92, v96, &v108, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
      v15 = v92;
      sub_277BA11D8(v92, v96, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
    }
  }

LABEL_65:
  if (v89 <= 1)
  {
    v55 = *a6;
    if (a9)
    {
      v56 = v96;
      if (a9[2] == v55 && a9[3] == HIWORD(v55))
      {
        return 0x7FFFFFFFLL;
      }

      *(a9 + 1) = v55;
      LOWORD(v55) = *a6;
      v57 = a6[1];
    }

    else
    {
      v57 = HIWORD(v55);
      v56 = v96;
    }

    v109[0] = v55;
    v109[1] = v57 - 2;
    v108 = 0;
    v93 = sub_277BA11D8(v15, v56, v109, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, &v108, v95);
    LOWORD(v107) = v55;
    HIWORD(v107) = v57 + 2;
    v58 = sub_277BA11D8(v15, v56, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, &v108, v95);
    v105 = v55 - 2;
    v106 = v57;
    v59 = sub_277BA11D8(v15, v56, &v105, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, &v108, v95);
    v103 = v55 + 2;
    v104 = v57;
    v60 = v59 > sub_277BA11D8(v15, v96, &v103, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, &v108, v95);
    v61 = v96;
    if (v60)
    {
      v62 = 2;
    }

    else
    {
      v62 = -2;
    }

    v87 = v62;
    v101 = v55 + v62;
    if (v93 > v58)
    {
      v63 = 2;
    }

    else
    {
      v63 = -2;
    }

    v102 = v57 + v63;
    sub_277BA11D8(v15, v96, &v101, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, &v108, v95);
    v64 = v89;
    if (v91 < 2)
    {
LABEL_86:
      if (v85 && !v64)
      {
        v70 = *a6;
        if (a9)
        {
          if (a9[4] == v70 && a9[5] == HIWORD(v70))
          {
            return 0x7FFFFFFFLL;
          }

          v71 = v10;
          *(a9 + 2) = v70;
          LOWORD(v70) = *a6;
          v72 = a6[1];
        }

        else
        {
          v71 = v10;
          v72 = HIWORD(v70);
        }

        v109[0] = v70;
        v109[1] = v72 - 1;
        v108 = 0;
        v94 = sub_277BA11D8(v15, v61, v109, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v71, &v108, v95);
        LOWORD(v107) = v70;
        HIWORD(v107) = v72 + 1;
        v73 = sub_277BA11D8(v15, v61, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v71, &v108, v95);
        v105 = v70 - 1;
        v106 = v72;
        v74 = sub_277BA11D8(v15, v61, &v105, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v71, &v108, v95);
        v103 = v70 + 1;
        v104 = v72;
        if (v74 > sub_277BA11D8(v15, v96, &v103, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v71, &v108, v95))
        {
          v75 = 1;
        }

        else
        {
          v75 = -1;
        }

        v101 = v70 + v75;
        if (v94 > v73)
        {
          v76 = 1;
        }

        else
        {
          v76 = -1;
        }

        v102 = v72 + v76;
        v77 = v71;
        sub_277BA11D8(v15, v96, &v101, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v71, &v108, v95);
        if (v91 >= 2)
        {
          v78 = v75;
          v79 = *a6;
          v80 = a6[1];
          *v109 = 0;
          if (v79 == v70 || v72 == v80)
          {
            if (v79 != v70 || v72 == v80)
            {
              if (v79 != v70 && v72 == v80)
              {
                LOWORD(v108) = v79 + v78;
                HIWORD(v108) = v72 + 1;
                LOWORD(v107) = v79 + v78;
                HIWORD(v107) = v72 - 1;
                sub_277BA11D8(v15, v96, &v108, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v77, v109, v95);
                sub_277BA11D8(v15, v96, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v77, v109, v95);
                v105 = v79;
                v106 = v72 - v76;
                sub_277BA11D8(v15, v96, &v105, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v77, v109, v95);
              }
            }

            else
            {
              LOWORD(v108) = v70 + 1;
              HIWORD(v108) = v80 + v76;
              LOWORD(v107) = v70 - 1;
              HIWORD(v107) = v80 + v76;
              sub_277BA11D8(v15, v96, &v108, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v77, v109, v95);
              sub_277BA11D8(v15, v96, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v77, v109, v95);
              v105 = v70 - v78;
              v106 = v80;
              sub_277BA11D8(v15, v96, &v105, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v77, v109, v95);
            }
          }

          else
          {
            LOWORD(v108) = v79;
            HIWORD(v108) = v80 + v76;
            LOWORD(v107) = v79 + v78;
            HIWORD(v107) = v80;
            sub_277BA11D8(v15, v96, &v108, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v77, v109, v95);
            sub_277BA11D8(v15, v96, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v77, v109, v95);
          }
        }
      }

      return v100;
    }

    v65 = *a6;
    v66 = a6[1];
    *v109 = 0;
    if (v65 == v55 || v57 == v66)
    {
      if (v65 != v55 || v57 == v66)
      {
        if (v65 != v55 && v57 == v66)
        {
          LOWORD(v108) = v65 + v87;
          HIWORD(v108) = v84;
          LOWORD(v107) = v65 + v87;
          HIWORD(v107) = v57 - 2;
          sub_277BA11D8(v15, v96, &v108, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
          sub_277BA11D8(v15, v96, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
          v105 = v65;
          v106 = v57 - v63;
          v64 = v89;
          sub_277BA11D8(v15, v96, &v105, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v10, v109, v95);
        }

        goto LABEL_85;
      }

      LOWORD(v108) = v55 + 2;
      HIWORD(v108) = v66 + v63;
      LOWORD(v107) = v55 - 2;
      HIWORD(v107) = v66 + v63;
      v67 = v88;
      v68 = v96;
      sub_277BA11D8(v15, v96, &v108, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v90, v109, v95);
      sub_277BA11D8(v15, v96, &v107, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v90, v109, v95);
      v105 = v55 - v87;
      v106 = v66;
      v83 = v95;
      v64 = v89;
      v69 = &v105;
    }

    else
    {
      LOWORD(v108) = v65;
      HIWORD(v108) = v66 + v63;
      LOWORD(v107) = v65 + v87;
      HIWORD(v107) = v66;
      v67 = v88;
      v68 = v96;
      sub_277BA11D8(v15, v96, &v108, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v88, v90, v109, v95);
      v83 = v95;
      v64 = v89;
      v69 = &v107;
    }

    v82 = v67;
    v10 = v90;
    sub_277BA11D8(v15, v68, v69, a6, a3 + 6, (a3 + 22), a3 + 5, &v100, v82, v90, v109, v83);
LABEL_85:
    v61 = v96;
    goto LABEL_86;
  }

  return v100;
}

uint64_t sub_277BA248C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, unsigned __int16 *a6, _DWORD *a7, _DWORD *a8, uint64_t a9)
{
  v10 = a3;
  v13 = *(a3 + 16);
  v170 = *(a3 + 20);
  v174 = *(a3 + 96);
  v14 = 3 - v13;
  if (*a3)
  {
    LODWORD(v15) = 3;
  }

  else
  {
    LODWORD(v15) = 2;
  }

  if (v14 >= v15)
  {
    v15 = v15;
  }

  else
  {
    v15 = v14;
  }

  v173 = v15;
  *a6 = a4;
  if ((*(**(a1 + 7864) + 167) & 0x80) != 0)
  {
    v16 = (a2 + 272);
  }

  else
  {
    v16 = *(a1 + 7944);
  }

  v17 = *v16;
  if (*v16 == -1 || (v18 = v16[1], v18 == -1))
  {
    v163 = 0;
    if (!a5)
    {
LABEL_19:
      if (!v174)
      {
        result = sub_277BA0F2C();
        v10 = a3;
        goto LABEL_24;
      }

      v21 = sub_277BA0C88();
      v10 = a3;
      *a7 = v21;
      v22 = *(a3 + 52);
      if (v22 == 4)
      {
        goto LABEL_21;
      }

      v151 = *(a3 + 40);
      v152 = *a6;
      v153 = *v151;
      v154 = (v152 - v153);
      v155 = a6[1];
      v156 = v151[1];
      v157 = (v155 - v156);
      if (v154 < 0)
      {
        v154 = -v154;
      }

      if (v157 < 0)
      {
        v157 = -v157;
      }

      if (v22 == 3)
      {
        LODWORD(v23) = (v157 + v154) >> 3;
        goto LABEL_22;
      }

      if (v22 == 1)
      {
        LODWORD(v23) = (v157 + v154) >> 2;
        goto LABEL_22;
      }

      if (*(a3 + 52))
      {
LABEL_21:
        LODWORD(v23) = 0;
      }

      else
      {
        v23 = ((*(*(a3 + 64) + 4 * (v152 - v153)) + *(*(a3 + 72) + 4 * (v155 - v156)) + *(*(a3 + 56) + ((4 * (v155 != v156)) | (8 * (v152 != v153))))) * *(a3 + 80) + 0x2000) >> 14;
      }

LABEL_22:
      result = (v23 + v21);
LABEL_24:
      v176 = result;
      goto LABEL_25;
    }
  }

  else
  {
    if (v17 != 0x4000)
    {
      v163 = 1;
      goto LABEL_19;
    }

    v163 = v18 != 0x4000;
    if (!a5)
    {
      goto LABEL_19;
    }
  }

  if (v163)
  {
    goto LABEL_19;
  }

  v163 = 0;
  v19 = a5[1];
  result = (*a5 + v19);
  v176 = *a5 + v19;
  *a7 = v19;
  *a8 = a5[2];
LABEL_25:
  if (v13 > 2)
  {
    return result;
  }

  v24 = (a9 + 2);
  v25 = 4;
  v26 = 1;
  v27 = v173;
  v28 = 1;
  do
  {
    v29 = *a6;
    v30 = a6[1];
    if (!a9)
    {
      goto LABEL_31;
    }

    if (*(v24 - 1) == v29 && *v24 == v30)
    {
      break;
    }

    *(v24 - 1) = v29;
    *v24 = v30;
LABEL_31:
    if (v174)
    {
      LOWORD(v181) = v29;
      HIWORD(v181) = v30 - v25;
      LOWORD(v180) = v29;
      HIWORD(v180) = v30 + v25;
      LOWORD(v179) = v29 - v25;
      HIWORD(v179) = v30;
      LOWORD(v178) = v29 + v25;
      HIWORD(v178) = v30;
      v31 = v181;
      v32 = *(v10 + 24);
      if (v181 >> 16 < v32 || v181 >> 16 > *(v10 + 28) || v181 < *(v10 + 32) || v181 > *(v10 + 36))
      {
        v33 = 0x7FFFFFFF;
        goto LABEL_37;
      }

      v80 = v27;
      v81 = v30;
      v82 = v26;
      v83 = v25;
      v182 = 0;
      v84 = sub_277BA0C88();
      v10 = a3;
      v85 = *(a3 + 52);
      if (v85 == 4)
      {
        goto LABEL_110;
      }

      v110 = *(a3 + 40);
      v111 = *v110;
      v112 = (v31 - v111);
      v113 = v110[1];
      v114 = (HIWORD(v31) - v113);
      if (v112 < 0)
      {
        v112 = -v112;
      }

      if (v114 < 0)
      {
        v114 = -v114;
      }

      if (v85 == 3)
      {
        LODWORD(v86) = (v114 + v112) >> 3;
        goto LABEL_111;
      }

      if (v85 == 1)
      {
        LODWORD(v86) = (v114 + v112) >> 2;
        goto LABEL_111;
      }

      if (*(a3 + 52))
      {
LABEL_110:
        LODWORD(v86) = 0;
      }

      else
      {
        v86 = ((*(*(a3 + 64) + 4 * (v31 - v111)) + *(*(a3 + 72) + 4 * (HIWORD(v31) - v113)) + *(*(a3 + 56) + ((4 * (v113 != HIWORD(v31))) | (8 * (v111 != v31))))) * *(a3 + 80) + 0x2000) >> 14;
      }

LABEL_111:
      v25 = v83;
      v26 = v82;
      v27 = v80;
      v33 = v86 + v84;
      v30 = v81;
      if (v86 + v84 < v176)
      {
        v176 = v86 + v84;
        *a6 = v31;
        *a7 = v84;
        *a8 = v182;
      }

      v32 = *(a3 + 24);
LABEL_37:
      v34 = v180;
      if (v180 >> 16 < v32 || v180 >> 16 > *(v10 + 28) || v180 < *(v10 + 32) || v180 > *(v10 + 36))
      {
        v35 = 0x7FFFFFFF;
        goto LABEL_42;
      }

      v87 = v33;
      v88 = v27;
      v160 = v30;
      v89 = v26;
      v90 = v25;
      v182 = 0;
      v91 = sub_277BA0C88();
      v10 = a3;
      v92 = *(a3 + 52);
      if (v92 == 4)
      {
        LODWORD(v93) = 0;
      }

      else
      {
        v115 = *(a3 + 40);
        v116 = *v115;
        v117 = (v34 - v116);
        v118 = v115[1];
        v119 = (HIWORD(v34) - v118);
        if (v117 < 0)
        {
          v117 = -v117;
        }

        if (v119 < 0)
        {
          v119 = -v119;
        }

        if (v92 != 3)
        {
          v33 = v87;
          if (v92 == 1)
          {
            LODWORD(v93) = (v119 + v117) >> 2;
          }

          else if (*(a3 + 52))
          {
            LODWORD(v93) = 0;
          }

          else
          {
            v93 = ((*(*(a3 + 64) + 4 * (v34 - v116)) + *(*(a3 + 72) + 4 * (HIWORD(v34) - v118)) + *(*(a3 + 56) + ((4 * (v118 != HIWORD(v34))) | (8 * (v116 != v34))))) * *(a3 + 80) + 0x2000) >> 14;
          }

          v25 = v90;
          v26 = v89;
          v27 = v88;
          goto LABEL_205;
        }

        LODWORD(v93) = (v119 + v117) >> 3;
      }

      v25 = v90;
      v26 = v89;
      v27 = v88;
      v33 = v87;
LABEL_205:
      v35 = v93 + v91;
      v30 = v160;
      if (v93 + v91 < v176)
      {
        v176 = v93 + v91;
        *a6 = v34;
        *a7 = v91;
        *a8 = v182;
      }

      v32 = *(a3 + 24);
LABEL_42:
      v36 = v179;
      if (v179 >> 16 < v32 || v179 >> 16 > *(v10 + 28) || v179 < *(v10 + 32) || v179 > *(v10 + 36))
      {
        v37 = 0x7FFFFFFF;
        goto LABEL_47;
      }

      v94 = v33;
      v165 = v27;
      v161 = v30;
      v95 = v26;
      v96 = v25;
      v182 = 0;
      v97 = sub_277BA0C88();
      v10 = a3;
      v98 = *(a3 + 52);
      if (v98 == 4)
      {
        LODWORD(v99) = 0;
      }

      else
      {
        v120 = *(a3 + 40);
        v121 = *v120;
        v122 = (v36 - v121);
        v123 = v120[1];
        v124 = (HIWORD(v36) - v123);
        if (v122 < 0)
        {
          v122 = -v122;
        }

        if (v124 < 0)
        {
          v124 = -v124;
        }

        if (v98 != 3)
        {
          v33 = v94;
          if (v98 == 1)
          {
            LODWORD(v99) = (v124 + v122) >> 2;
          }

          else if (*(a3 + 52))
          {
            LODWORD(v99) = 0;
          }

          else
          {
            v99 = ((*(*(a3 + 64) + 4 * (v36 - v121)) + *(*(a3 + 72) + 4 * (HIWORD(v36) - v123)) + *(*(a3 + 56) + ((4 * (v123 != HIWORD(v36))) | (8 * (v121 != v36))))) * *(a3 + 80) + 0x2000) >> 14;
          }

          v25 = v96;
          v26 = v95;
          v27 = v165;
          goto LABEL_210;
        }

        LODWORD(v99) = (v124 + v122) >> 3;
      }

      v25 = v96;
      v26 = v95;
      v27 = v165;
      v33 = v94;
LABEL_210:
      v37 = v99 + v97;
      v30 = v161;
      if (v99 + v97 < v176)
      {
        v176 = v99 + v97;
        *a6 = v36;
        *a7 = v97;
        *a8 = v182;
      }

      v32 = *(a3 + 24);
LABEL_47:
      v38 = v178;
      if (v178 >> 16 < v32 || v178 >> 16 > *(v10 + 28) || v178 < *(v10 + 32) || v178 > *(v10 + 36))
      {
        v39 = 0x7FFFFFFF;
        goto LABEL_52;
      }

      v100 = v33;
      v166 = v27;
      v169 = v26;
      v162 = v30;
      v101 = v25;
      v182 = 0;
      v102 = sub_277BA0C88();
      v10 = a3;
      v103 = *(a3 + 52);
      if (v103 == 4)
      {
        LODWORD(v104) = 0;
      }

      else
      {
        v125 = *(a3 + 40);
        v126 = *v125;
        v127 = (v38 - v126);
        v128 = v125[1];
        v129 = (HIWORD(v38) - v128);
        if (v127 < 0)
        {
          v127 = -v127;
        }

        if (v129 < 0)
        {
          v129 = -v129;
        }

        if (v103 != 3)
        {
          v33 = v100;
          if (v103 == 1)
          {
            LODWORD(v104) = (v129 + v127) >> 2;
          }

          else if (*(a3 + 52))
          {
            LODWORD(v104) = 0;
          }

          else
          {
            v104 = ((*(*(a3 + 64) + 4 * (v38 - v126)) + *(*(a3 + 72) + 4 * (HIWORD(v38) - v128)) + *(*(a3 + 56) + ((4 * (v128 != HIWORD(v38))) | (8 * (v126 != v38))))) * *(a3 + 80) + 0x2000) >> 14;
          }

          v25 = v101;
          v27 = v166;
          v26 = v169;
          goto LABEL_215;
        }

        LODWORD(v104) = (v129 + v127) >> 3;
      }

      v25 = v101;
      v27 = v166;
      v26 = v169;
      v33 = v100;
LABEL_215:
      v39 = v104 + v102;
      v30 = v162;
      if (v104 + v102 < v176)
      {
        v176 = v104 + v102;
        *a6 = v38;
        *a7 = v102;
        *a8 = v182;
      }

      v32 = *(a3 + 24);
LABEL_52:
      if (v37 > v39)
      {
        LOWORD(v40) = v25;
      }

      else
      {
        v40 = -v25;
      }

      if (v33 > v35)
      {
        LOWORD(v41) = v25;
      }

      else
      {
        v41 = -v25;
      }

      LOWORD(v177) = v29 + v40;
      HIWORD(v177) = v30 + v41;
      v42 = v177;
      if (v177 >> 16 < v32 || v177 >> 16 > *(v10 + 28) || v177 < *(v10 + 32) || v177 > *(v10 + 36))
      {
LABEL_66:
        v49 = v40 | (v41 << 16);
        goto LABEL_74;
      }

      v43 = v27;
      v159 = v30;
      v167 = v26;
      v44 = v25;
      v182 = 0;
      v45 = sub_277BA0C88();
      v10 = a3;
      v46 = *(a3 + 52);
      if (v46 == 4)
      {
        goto LABEL_63;
      }

      v105 = *(a3 + 40);
      v106 = *v105;
      v107 = (v42 - v106);
      v108 = v105[1];
      v109 = (HIWORD(v42) - v108);
      if (v107 < 0)
      {
        v107 = -v107;
      }

      if (v109 < 0)
      {
        v109 = -v109;
      }

      if (v46 == 3)
      {
        LODWORD(v47) = (v109 + v107) >> 3;
      }

      else if (v46 == 1)
      {
        LODWORD(v47) = (v109 + v107) >> 2;
      }

      else
      {
        if (*(a3 + 52))
        {
LABEL_63:
          LODWORD(v47) = 0;
          goto LABEL_64;
        }

        v47 = ((*(*(a3 + 64) + 4 * (v42 - v106)) + *(*(a3 + 72) + 4 * (HIWORD(v42) - v108)) + *(*(a3 + 56) + ((4 * (v108 != HIWORD(v42))) | (8 * (v106 != v42))))) * *(a3 + 80) + 0x2000) >> 14;
      }

LABEL_64:
      v25 = v44;
      v26 = v167;
      v27 = v43;
      v48 = v47 + v45;
      v30 = v159;
      if (v48 < v176)
      {
        v176 = v48;
        *a6 = v42;
        *a7 = v45;
        *a8 = v182;
      }

      goto LABEL_66;
    }

    LOWORD(v182) = v29;
    HIWORD(v182) = v30 - v25;
    v181 = 0;
    v164 = v27;
    v168 = v26;
    v50 = v25;
    v51 = v30;
    v158 = sub_277BA11D8(a1, a2, &v182, a6, (v10 + 24), v10 + 88, (v10 + 40), &v176, a8, a7, &v181, v163);
    LOWORD(v180) = v29;
    HIWORD(v180) = v51 + v50;
    v52 = sub_277BA11D8(a1, a2, &v180, a6, (a3 + 24), a3 + 88, (a3 + 40), &v176, a8, a7, &v181, v163);
    LOWORD(v179) = v29 - v50;
    HIWORD(v179) = v51;
    v53 = sub_277BA11D8(a1, a2, &v179, a6, (a3 + 24), a3 + 88, (a3 + 40), &v176, a8, a7, &v181, v163);
    LOWORD(v178) = v29 + v50;
    HIWORD(v178) = v51;
    if (v53 > sub_277BA11D8(a1, a2, &v178, a6, (a3 + 24), a3 + 88, (a3 + 40), &v176, a8, a7, &v181, v163))
    {
      LOWORD(v54) = v50;
    }

    else
    {
      v54 = -v50;
    }

    if (v158 > v52)
    {
      LOWORD(v55) = v50;
    }

    else
    {
      v55 = -v50;
    }

    v56 = v29 + v54;
    v49 = v54 | (v55 << 16);
    LOWORD(v177) = v56;
    HIWORD(v177) = v51 + v55;
    sub_277BA11D8(a1, a2, &v177, a6, (a3 + 24), a3 + 88, (a3 + 40), &v176, a8, a7, &v181, v163);
    v27 = v164;
    v30 = v51;
    v26 = v168;
    v10 = a3;
    v25 = v50;
LABEL_74:
    v57 = *a6;
    if (v29 == v57)
    {
      v58 = a6[1];
      if (v30 == v58 || v170 <= 1)
      {
        goto LABEL_107;
      }

      v59 = HIWORD(v49);
      v49 = -v49;
      goto LABEL_81;
    }

    if (v170 > 1)
    {
      v59 = HIWORD(v49);
      v58 = a6[1];
      if (v58 == v30)
      {
        v59 = -v59;
      }

LABEL_81:
      LOWORD(v181) = v49 + v57;
      HIWORD(v181) = v58;
      LOWORD(v180) = v57;
      HIWORD(v180) = v58 + v59;
      LOWORD(v179) = v49 + v57;
      HIWORD(v179) = v58 + v59;
      v178 = 0;
      if (!*(v10 + 96))
      {
        v62 = v27;
        v78 = v25;
        v79 = v26;
        sub_277BA11D8(a1, a2, &v181, a6, (v10 + 24), v10 + 88, (v10 + 40), &v176, a8, a7, &v178, v163);
        sub_277BA11D8(a1, a2, &v180, a6, (a3 + 24), a3 + 88, (a3 + 40), &v176, a8, a7, &v178, v163);
        v26 = v79;
        v10 = a3;
        v25 = v78;
        if (v178)
        {
          sub_277BA11D8(a1, a2, &v179, a6, (a3 + 24), a3 + 88, (a3 + 40), &v176, a8, a7, &v178, v163);
          v26 = v79;
          v10 = a3;
          v25 = v78;
        }

        goto LABEL_106;
      }

      v60 = v181;
      v61 = *(v10 + 24);
      if (v181 >> 16 < v61 || v181 >> 16 > *(v10 + 28) || v181 < *(v10 + 32) || v181 > *(v10 + 36))
      {
        v62 = v27;
        v63 = 0;
        goto LABEL_87;
      }

      v62 = v27;
      v130 = v26;
      v131 = v25;
      v182 = 0;
      v132 = sub_277BA0C88();
      v10 = a3;
      v133 = *(a3 + 52);
      if (v133 == 4)
      {
        goto LABEL_164;
      }

      v141 = *(a3 + 40);
      v142 = *v141;
      v143 = (v60 - v142);
      v144 = v141[1];
      v145 = (HIWORD(v60) - v144);
      if (v143 < 0)
      {
        v143 = -v143;
      }

      if (v145 < 0)
      {
        v145 = -v145;
      }

      if (v133 == 3)
      {
        LODWORD(v134) = (v145 + v143) >> 3;
        goto LABEL_165;
      }

      if (v133 == 1)
      {
        LODWORD(v134) = (v145 + v143) >> 2;
        goto LABEL_165;
      }

      if (*(a3 + 52))
      {
LABEL_164:
        LODWORD(v134) = 0;
      }

      else
      {
        v134 = ((*(*(a3 + 64) + 4 * (v60 - v142)) + *(*(a3 + 72) + 4 * (HIWORD(v60) - v144)) + *(*(a3 + 56) + ((4 * (v144 != HIWORD(v60))) | (8 * (v142 != v60))))) * *(a3 + 80) + 0x2000) >> 14;
      }

LABEL_165:
      v25 = v131;
      v26 = v130;
      v135 = v134 + v132;
      if (v135 >= v176)
      {
        v63 = 0;
      }

      else
      {
        v176 = v135;
        *a6 = v60;
        *a7 = v132;
        *a8 = v182;
        v63 = 1;
      }

      v61 = *(a3 + 24);
LABEL_87:
      v64 = v180;
      if (v180 >> 16 < v61 || v180 >> 16 > *(v10 + 28) || v180 < *(v10 + 32) || v180 > *(v10 + 36))
      {
        goto LABEL_95;
      }

      v65 = v26;
      v66 = v25;
      v182 = 0;
      v67 = sub_277BA0C88();
      v10 = a3;
      v68 = *(a3 + 52);
      if (v68 == 4)
      {
        goto LABEL_92;
      }

      v136 = *(a3 + 40);
      v137 = *v136;
      v138 = (v64 - v137);
      v139 = v136[1];
      v140 = (HIWORD(v64) - v139);
      if (v138 < 0)
      {
        v138 = -v138;
      }

      if (v140 < 0)
      {
        v140 = -v140;
      }

      if (v68 == 3)
      {
        LODWORD(v69) = (v140 + v138) >> 3;
      }

      else if (v68 == 1)
      {
        LODWORD(v69) = (v140 + v138) >> 2;
      }

      else
      {
        if (*(a3 + 52))
        {
LABEL_92:
          LODWORD(v69) = 0;
          goto LABEL_93;
        }

        v69 = ((*(*(a3 + 64) + 4 * (v64 - v137)) + *(*(a3 + 72) + 4 * (HIWORD(v64) - v139)) + *(*(a3 + 56) + ((4 * (v139 != HIWORD(v64))) | (8 * (v137 != v64))))) * *(a3 + 80) + 0x2000) >> 14;
      }

LABEL_93:
      v25 = v66;
      v26 = v65;
      v70 = v69 + v67;
      if (v70 < v176)
      {
        v176 = v70;
        *a6 = v64;
        *a7 = v67;
        *a8 = v182;
        v63 = 1;
        v178 = 1;
      }

LABEL_95:
      if (!v63 || (v71 = v179, v179 >> 16 < *(v10 + 24)) || v179 >> 16 > *(v10 + 28) || v179 < *(v10 + 32) || v179 > *(v10 + 36))
      {
LABEL_106:
        v27 = v62;
        goto LABEL_107;
      }

      v72 = v26;
      v73 = v25;
      v182 = 0;
      v74 = sub_277BA0C88();
      v10 = a3;
      v75 = *(a3 + 52);
      if (v75 == 4)
      {
        goto LABEL_101;
      }

      v146 = *(a3 + 40);
      v147 = *v146;
      v148 = (v71 - v147);
      v149 = v146[1];
      v150 = (HIWORD(v71) - v149);
      if (v148 < 0)
      {
        v148 = -v148;
      }

      if (v150 < 0)
      {
        v150 = -v150;
      }

      if (v75 == 3)
      {
        LODWORD(v76) = (v150 + v148) >> 3;
      }

      else if (v75 == 1)
      {
        LODWORD(v76) = (v150 + v148) >> 2;
      }

      else
      {
        if (*(a3 + 52))
        {
LABEL_101:
          LODWORD(v76) = 0;
          goto LABEL_102;
        }

        v76 = ((*(*(a3 + 64) + 4 * (v71 - v147)) + *(*(a3 + 72) + 4 * (HIWORD(v71) - v149)) + *(*(a3 + 56) + ((4 * (v149 != HIWORD(v71))) | (8 * (v147 != v71))))) * *(a3 + 80) + 0x2000) >> 14;
      }

LABEL_102:
      v25 = v73;
      v26 = v72;
      v77 = v76 + v74;
      if (v77 < v176)
      {
        v176 = v77;
        *a6 = v71;
        *a7 = v74;
        *a8 = v182;
      }

      goto LABEL_106;
    }

LABEL_107:
    v25 >>= 1;
    v28 = v26++ < v173;
    v24 += 2;
    --v27;
  }

  while (v27);
  if (v28)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return v176;
  }
}

uint64_t sub_277BA36A0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v6 = *a3;
  v7 = a3[9];
  *a6 = v7;
  v8 = a3[7];
  a6[1] = v8;
  if (!v6)
  {
    if (v7)
    {
      if (v7 < 1)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v7 - 1;
      }

      *a6 = v9;
    }

    if (v8)
    {
      if (v8 < 1)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v8 - 1;
      }

      a6[1] = v10;
    }
  }

  return 0;
}

uint64_t sub_277BA36F0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v6 = *a3;
  v7 = a3[8];
  *a6 = v7;
  v8 = a3[6];
  a6[1] = v8;
  if (!v6)
  {
    if (v7)
    {
      if (v7 < 1)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v7 - 1;
      }

      *a6 = v9;
    }

    if (v8)
    {
      if (v8 < 1)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v8 - 1;
      }

      a6[1] = v10;
    }
  }

  return 0;
}

double sub_277BA3740(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, int a9)
{
  v10 = a3;
  v71[8] = *MEMORY[0x277D85DE8];
  v12 = **(a1 + 7864);
  v13 = (&unk_277C3CFE4 + 44 * a8);
  v60 = *v13;
  v55 = v13 + 9;
  v14 = *(v12 + 44);
  v66 = *(v12 + 28);
  v67 = v14;
  v68 = *(v12 + 60);
  v51 = *(v12 + 25);
  v15 = *a3 == 0;
  v71[0].i32[0] = 0;
  sub_2779CCAB4();
  v53 = a1;
  v16 = (*(*(v10 + 11) + 24))(*(a1 + 32), *(a1 + 56), **(v10 + 14), *(*(v10 + 14) + 24), v71);
  v17 = *(v10 + 52);
  if (v17 == 4)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v41 = *(v10 + 5);
    v42 = *(v12 + 8);
    v43 = *v41;
    v44 = (v42 - v43);
    v45 = *(v12 + 10);
    v46 = v41[1];
    v47 = (v45 - v46);
    if (v44 < 0)
    {
      v44 = -v44;
    }

    if (v47 < 0)
    {
      v47 = -v47;
    }

    if (v17 != 3)
    {
      v19 = v60;
      if (v17 == 1)
      {
        LODWORD(v18) = (v47 + v44) >> 2;
      }

      else if (*(v10 + 52))
      {
        LODWORD(v18) = 0;
      }

      else
      {
        v18 = ((*(*(v10 + 8) + 4 * (v42 - v43)) + *(*(v10 + 9) + 4 * (v45 - v46)) + *(*(v10 + 7) + ((4 * (v45 != v46)) | (8 * (v42 != v43))))) * v10[20] + 0x2000) >> 14;
      }

      goto LABEL_4;
    }

    LODWORD(v18) = (v47 + v44) >> 3;
  }

  v19 = v60;
LABEL_4:
  if (a9 < 1)
  {
    v48 = v51;
    goto LABEL_51;
  }

  v20 = 0;
  v54 = v13 + 1;
  v58 = *(v53 + 4);
  v59 = *v53;
  v56 = v18 + v16;
  v57 = v10;
  v21 = 255;
  v52 = v51;
  while (2)
  {
    if (v19 < 1)
    {
      v52 = v51;
      break;
    }

    v63 = v20;
    v22 = 0;
    v23 = (&unk_277C3CFE4 + 44 * a8 + 6);
    v64 = 0xFFFFFFFFLL;
    do
    {
      if ((v21 >> v22))
      {
        LOWORD(v65) = *(v12 + 8) + (*(v23 - 1) << v15);
        HIWORD(v65) = *(v12 + 10) + (*v23 << v15);
        v24 = v65;
        v25 = v65 >> 16;
        if (v65 >> 16 >= v10[6] && v25 <= v10[7] && v65 >= v10[8] && v65 <= v10[9])
        {
          __memcpy_chk();
          __memcpy_chk();
          if (a7 <= 1)
          {
            v28 = *(v12 + 25);
            v29 = a4;
          }

          else
          {
            v28 = sub_27797A58C(&v65, v71, v70, a7, a4, *&v26);
            v29 = a4;
            v19 = v60;
            *(v12 + 25) = v28;
          }

          v10 = v57;
          if (!sub_277AE3E10(v28, v71, v70, v29, v24, v25, (v12 + 28), v59, v26, v27, v58))
          {
            v69 = 0;
            sub_2779CCAB4();
            v30 = (*(*(v57 + 11) + 24))(*(v53 + 32), *(v53 + 56), **(v57 + 14), *(*(v57 + 14) + 24), &v69);
            v31 = *(v57 + 52);
            if (v31 == 4)
            {
              LODWORD(v32) = 0;
            }

            else
            {
              v35 = *(v57 + 5);
              v36 = *v35;
              v37 = (v24 - v36);
              v38 = v35[1];
              v39 = (HIWORD(v24) - v38);
              if (v37 < 0)
              {
                v37 = -v37;
              }

              if (v39 < 0)
              {
                v39 = -v39;
              }

              if (v31 != 3)
              {
                v19 = v60;
                if (v31 == 1)
                {
                  LODWORD(v32) = (v39 + v37) >> 2;
                }

                else if (*(v57 + 52))
                {
                  LODWORD(v32) = 0;
                }

                else
                {
                  v32 = ((*(*(v57 + 8) + 4 * (v24 - v36)) + *(*(v57 + 9) + 4 * (HIWORD(v24) - v38)) + *(*(v57 + 7) + ((4 * (v38 != HIWORD(v24))) | (8 * (v36 != v24))))) * v57[20] + 0x2000) >> 14;
                }

LABEL_20:
                v33 = v32 + v30;
                if (v33 < v56)
                {
                  v34 = *(v12 + 44);
                  v66 = *(v12 + 28);
                  v67 = v34;
                  v68 = *(v12 + 60);
                  v52 = *(v12 + 25);
                  v64 = v22;
                  v56 = v33;
                }

                goto LABEL_22;
              }

              LODWORD(v32) = (v39 + v37) >> 3;
            }

            v19 = v60;
            goto LABEL_20;
          }
        }
      }

LABEL_22:
      ++v22;
      v23 += 2;
    }

    while (v19 != v22);
    if ((v64 & 0x80000000) == 0)
    {
      v40 = &v54[v64];
      *(v12 + 8) += *v40 << v15;
      *(v12 + 10) += *(v40 + 1) << v15;
      v21 = *(v55 + v64);
      goto LABEL_38;
    }

    if (v64 != 0xFFFFFFFFLL)
    {
LABEL_38:
      v20 = v63 + 1;
      if (v63 + 1 == a9)
      {
        break;
      }

      continue;
    }

    break;
  }

  v48 = v52;
LABEL_51:
  result = *&v66;
  v50 = v67;
  *(v12 + 28) = v66;
  *(v12 + 44) = v50;
  *(v12 + 60) = v68;
  *(v12 + 25) = v48;
  return result;
}

uint64_t sub_277BA3CB8()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v23 = *MEMORY[0x277D85DE8];
  v7 = *v6;
  v8 = *(v6 + 8);
  v10 = *(v6 + 18);
  v9 = *(v6 + 19);
  v11 = v6[7];
  v12 = v6[8];
  v13 = v6[2];
  v14 = *(v13 + 24);
  v15 = (*v13 + (*v4 << 16 >> 19) * v14 + (*v4 >> 19));
  v16 = HIWORD(*v4) & 7;
  v17 = *v4 & 7;
  v18 = *v0;
  v19 = v0[1];
  if ((*(*(v0 + 995) + 192) & 8) != 0)
  {
    v20 = (v22 >> 1);
    sub_2779CAB10(v0, v1, v18, v19, v5, v22 >> 1, v10, v9, __SPAIR64__(v17, v16), v15, v14, v0[2664], v8);
  }

  else
  {
    v20 = v22;
    sub_2779CA690(v0, v1, v18, v19, v5, v22, v10, v9, __SPAIR64__(v17, v16), v15, v14, v8);
  }

  return (*(v7 + 96))(v20, v10, v11, v12, v3);
}

void sub_277BA3DF0(uint64_t a1, int *a2, int *a3, int *a4)
{
  v7 = a1;
  v8 = a1 + 463416;
  v9 = a1 + 270312;
  v10 = a1 + 245616;
  v99 = (a1 + 393856);
  sub_2779C32A8(a1, *(a1 + 395388));
  v11 = *v7;
  v12 = *v7 + 400;
  v96 = *v7;
  v97 = v8;
  if ((*(v9 + 857) & 1) != 0 && *(v8 + 40) <= 0x5FuLL && v11[13566])
  {
    v90 = a3;
    v13 = *(v11 + 9341) + 96 * *(v8 + 40);
    if (!*v13)
    {
LABEL_16:
      a3 = v90;
      goto LABEL_17;
    }

    v85 = (v11 + 18682);
    v86 = v11 + 13566;
    v93 = a4;
    v95 = v9;
    v89 = v10;
    v14 = *(v11 + 54268);
    v15 = *(v10 + 80) << v14;
    v17 = v15 + 4;
    v16 = v15 < -4;
    v18 = v15 + 11;
    if (!v16)
    {
      v18 = v17;
    }

    v101 = *(v10 + 532);
    if (v101 < 1)
    {
      goto LABEL_14;
    }

    v87 = v7;
    v88 = *(v8 + 40);
    v91 = *v7 + 400;
    v19 = 0;
    v20 = *(v13 + 8);
    v98 = *(v13 + 64);
    v100 = 1 << v14;
    v21 = v18 >> 3;
    v22 = ((*(v10 + 72) + 7) >> 2) & 0xFFFFFFFE;
    v23 = 1.0;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      v102 = v19;
      if (v22 >= 1)
      {
        v26 = 0;
        v27 = (v19 >> v14) * v98;
        v28 = *(v13 + 84);
        do
        {
          v29 = (v20 + 200 * (v27 + (v26 >> v14)));
          v30 = v29[1];
          v31 = ((v29[8] * v28 + 256) >> 9) + (v29[9] << 7);
          v32 = (v29[3] << 7);
          v24 = v24 + log(v32) * v30;
          v25 = v25 + log(v32 + v31) * v30;
          v23 = v23 + v30;
          v26 += v21;
        }

        while (v26 < v22);
      }

      v19 = v102 + v100;
    }

    while (v102 + v100 < v101);
    v7 = v87;
    v12 = v91;
    if (v25 == 0.0)
    {
LABEL_14:
      *v13 = 0;
      v10 = v89;
LABEL_15:
      a4 = v93;
      v9 = v95;
      goto LABEL_16;
    }

    v57 = exp((v24 - v25) / v23);
    *v99 = v57;
    v58 = *(v91 + v88);
    if (v58 <= 3 && v58 != 1)
    {
      if (v96[5793])
      {
        v59 = sqrt(v96[11030]);
        v60 = fmin(sqrt(v96[11045]), 10.0);
        if (v60 <= v59)
        {
          v60 = v59;
        }

        v61 = rint((v60 * 10.0 + 200.0) / v57);
        v62 = fmin(sqrt(v96[11044]), 12.0);
        if (v62 <= v59)
        {
          v62 = v59;
        }

        v63 = ((12.0 - v59 - (v62 - v59)) * v61 + (v62 - v59) * v96[8909]) / (12.0 - v59);
      }

      else
      {
        v64 = (v85[24] * 200.0 / v57);
        v65 = fmax(fmin(sqrt(v99[313]), 12.0), 4.0) + -4.0;
        v63 = ((8.0 - v65) * v64 + v65 * v96[8909]) * 0.125;
      }

      v96[8909] = v63;
    }

    v10 = v89;
    v66 = *(v89 + 532);
    if (v66 < 1)
    {
      goto LABEL_15;
    }

    v67 = 0;
    v68 = 0;
    v69 = *(v13 + 64);
    v70 = *(v86 + 4);
    v71 = 1 << v70;
    v72 = ((*(v89 + 72) + 7) >> 2) & 0xFFFFFFFE;
    v73 = v72 + 3;
    if (v72 < -3)
    {
      v73 = v72 + 6;
    }

    v74 = (v73 >> 2);
    if (v74 <= 1)
    {
      v75 = 1;
    }

    else
    {
      v75 = v74;
    }

    do
    {
      if (v72 >= 1)
      {
        v76 = 0;
        v77 = 0;
        v78 = *(v95 + 2624) + 8 * v68 * v74;
        do
        {
          v79 = 0.0;
          v80 = v67;
          v81 = 0.0;
          do
          {
            v82 = v76;
            do
            {
              if (v80 < v66 && v82 < v72)
              {
                v83 = (v20 + 200 * ((v82 >> v70) + (v80 >> v70) * v69));
                v84 = (v83[3] << 7);
                v79 = v79 + v84;
                v81 = v81 + v84 + (((v83[8] * *(v13 + 84) + 256) >> 9) + (v83[9] << 7));
              }

              v82 += v71;
            }

            while (4 * v77 + 4 > v82);
            v80 += v71;
          }

          while (4 * v68 + 4 > v80);
          *(v78 + 8 * v77++) = v79 / v81 / *v99 + 1.2;
          v76 += 4;
        }

        while (v77 != v75);
      }

      ++v68;
      v67 += 4;
    }

    while (v68 != (v66 + 3) >> 2);
    v10 = v89;
    a4 = v93;
    v9 = v95;
    a3 = v90;
  }

LABEL_17:
  *a2 = sub_277A5A188();
  v33 = *(v9 + 980);
  v34 = v99;
  if (v33 == 1)
  {
    if (!v99[343])
    {
      goto LABEL_33;
    }

    *a2 = v99[346];
    v99[343] = 0;
    v33 = *(v9 + 980);
  }

  if (v33 == 3)
  {
    v35 = *v7;
    v36 = *(*v7 + 74728);
    v37 = *(v97 + 40);
    if (*(v36 + 96 * v37))
    {
      v38 = *(v9 + 972);
      if (v38 || *(v9 + 968))
      {
        v92 = v12;
        v94 = a4;
        v39 = a3;
        v40 = v99[352];
        v41 = *(*v9 + 72);
        v42 = 1.0;
        if (v37 <= 0x5F && v35[13566])
        {
          v42 = sqrt(1.0 / sub_277A28504(*(v35 + 54268), v36, v37));
        }

        v43 = sub_277A28668(v40, v41, v42);
        v44 = *(v9 + 968);
        if (v43 < v44)
        {
          v44 = v43;
        }

        if (v43 < v38)
        {
          v44 = v38;
        }

        *a2 = v44;
        a3 = v39;
        *v39 = v44;
        v12 = v92;
        a4 = v94;
        *v94 = v44;
        v34 = v99;
        if (*(v92 + v37) == 3)
        {
          v35[11040] = *a2;
        }
      }
    }
  }

LABEL_33:
  if (*(v9 + 1000) && *(v9 + 980) == 3)
  {
    v45 = *(v97 + 40);
    v46 = *(v12 + v45);
    if (v46 > 3 || v46 == 1)
    {
      v54 = v96[v45 + 288];
      if (v54 < v96[788])
      {
        v55 = *(*v7 + 44160);
        if (v54 >= 2)
        {
          v56 = v54 + 1;
          do
          {
            v55 = (v55 + *(v9 + 976) + 1) / 2;
            --v56;
          }

          while (v56 > 2);
        }

        *a2 = v55;
        *a3 = v55;
        *a4 = v55;
      }
    }

    else
    {
      v48 = *v7 + 40960;
      v49 = sub_277A28668(v34[352], *(*v9 + 72), (v34[352] / -255.0 + 1.0) * dbl_277BB7BA0[*(*v7 + 44120) > 20] + 0.2);
      v34 = v99;
      *a2 = v49;
      *a3 = v49;
      *a4 = v49;
      v50 = *(v12 + v45);
      if (v50 <= 3 && v50 != 1)
      {
        *(v48 + 3200) = *a2;
      }
    }
  }

  if (*(v9 + 1868) >= 2u && v34[388])
  {
    v51 = (v7 + 264608);
    if (*v10 && *(v9 + 3442) != 1)
    {
      if (*v51)
      {
        if (v34[307])
        {
          if (v34[316])
          {
            v52 = *(*v7 + 44264);
            v53 = *(v7 + 264740);
            *(v7 + 264740) = v53 | 0x2000000020;
            *(v7 + 264622) = 7;
            *(v7 + 264638) = 7;
            if (v52 > 48.0)
            {
              *(v7 + 264740) = v53 | 0x6000000060;
            }

            *(v7 + 264610) = 1;
          }

          else
          {
            *(v7 + 264609) = 0;
          }
        }

        else
        {
          *v51 = 0;
          bzero(*v97, *(v10 + 536) * *(v10 + 532));
          *(v7 + 264609) = 0;
          *(v7 + 264612) = 0u;
          *(v7 + 264628) = 0u;
          *(v7 + 264644) = 0u;
          *(v7 + 264660) = 0u;
          *(v7 + 264676) = 0u;
          *(v7 + 264692) = 0u;
          *(v7 + 264708) = 0u;
          *(v7 + 264724) = 0u;
          *(v7 + 264740) = 0u;
          *(v7 + 264756) = 0u;
        }
      }
    }

    else
    {
      bzero(*v97, *(v10 + 536) * *(v10 + 532));
      *(v7 + 264768) = 0;
      *(v7 + 264736) = 0u;
      *(v7 + 264752) = 0u;
      *(v7 + 264704) = 0u;
      *(v7 + 264720) = 0u;
      *(v7 + 264672) = 0u;
      *(v7 + 264688) = 0u;
      *(v7 + 264640) = 0u;
      *(v7 + 264656) = 0u;
      *v51 = 0u;
      *(v7 + 264624) = 0u;
    }
  }
}

void sub_277BA45FC(void *a1, unsigned int a2, int a3, int a4, __n128 a5, double a6, double a7, int32x2_t a8)
{
  v87 = a1 + 643836;
  v8 = a1 + 49419;
  v9 = a1 + 33789;
  v10 = a1 + 30704;
  v80 = *(a1[33789] + 77);
  if (*(a1[33789] + 77))
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  v83 = v11;
  v12 = a1 + 30732;
  v90 = a1 + 30754;
  v13 = a1 + 34211;
  v14 = 1u;
  v91 = a1 + 33789;
  v85 = a1 + 30732;
  v86 = a1 + 49419;
  v88 = a1 + 34211;
  do
  {
    if ((v8[8] & *(&unk_277C3F988 + v14)) != 0)
    {
      v15 = *(v12 + (v14 - 1));
      if (v15 == -1 || ((v16 = v90[v15]) != 0 ? (v17 = v16 + 1248) : (v17 = 0), !v16))
      {
LABEL_21:
        v13[v14 - 1] = 0;
        goto LABEL_22;
      }

      v18 = *a1;
      if (*(*a1 + 51016) && *(v87 + 83) && *(v18 + 85776))
      {
        if (v14 == 7)
        {
          if (*(v87 + 2))
          {
            goto LABEL_22;
          }
        }

        else if (v14 == 4)
        {
          if (*(v87 + 1))
          {
            goto LABEL_22;
          }
        }

        else if (v14 == 1 && *v87)
        {
          goto LABEL_22;
        }
      }

      if (*(v9 + 467) || *(v18 + 23172) || *(v9 + 1896) != 1 || *(v9 + 274) || v14 != 4 || (*(v9 + 1044) & 1) == 0 || *v8 >= *v10 - 1)
      {
        v19 = *(v16 + 1264);
        v20 = *(v10 + 10);
        if (v19 == v20 && *(v16 + 1272) == *(v10 + 11))
        {
          v13[v14 - 1] = v16;
          ++*v16;
          v8 = v86;
          goto LABEL_22;
        }

        v84 = v9[77];
        if ((v19 > v20 || *(v16 + 1272) > *(v10 + 11)) && *(v16 + 1376) <= 287)
        {
          v82 = v17;
          v21 = v87[944];
          v81 = *(v10 + 124);
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v92 = 0u;
          v22 = *(v16 + 1272);
          v23 = *(v16 + 1392);
          v24 = *(v16 + 1396);
          v25 = *(v16 + 1440);
          v26 = sub_27797ABB4(&v92);
          if (sub_27797AC44(&v92, v19, v22, v23, v24, v25 & 8, 288, v81, v26, v27, v28, v29, v21, 0))
          {
            sub_2779F5C10(v10[4], 2, "Failed to allocate frame buffer");
          }

          else
          {
            sub_277A48B90(v16 + 1248, &v92, v83);
            sub_277A48A28(&v92, v83);
            sub_27797ABB4(v16 + 1248);
            v30 = v103;
            *(v16 + 1408) = v102;
            *(v16 + 1424) = v30;
            *(v16 + 1440) = v104;
            v31 = v99;
            *(v16 + 1344) = v98;
            *(v16 + 1360) = v31;
            v32 = v101;
            *(v16 + 1376) = v100;
            *(v16 + 1392) = v32;
            v33 = v95;
            *(v16 + 1280) = v94;
            *(v16 + 1296) = v33;
            v34 = v97;
            *(v16 + 1312) = v96;
            *(v16 + 1328) = v34;
            a6 = *&v92;
            a5 = v93;
            *(v16 + 1248) = v92;
            *(v16 + 1264) = a5;
          }

          v9 = v91;
          v12 = v85;
          v13 = v88;
          v17 = v82;
        }

        v35 = v13[v14 - 1];
        if (v35)
        {
          v36 = *(v10 + 10);
          v37 = *(v10 + 11);
          if (*(v35 + 1264) == v36)
          {
            v36 = *(v35 + 1264);
            v38 = v13[v14 - 1];
            v8 = v86;
            if (*(v35 + 1272) == v37)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v38 = v13[v14 - 1];
            v8 = v86;
          }

LABEL_59:
          if (sub_27797AC44(v38 + 1248, v36, v37, *(*v9 + 96), *(*v9 + 100), *(*v9 + 76), 288, *(v10 + 124), a5.n128_f64[0], a6, a7, a8, 0, 0))
          {
            if (!v35)
            {
              --*v38;
            }

            sub_2779F5C10(v10[4], 2, "Failed to allocate frame buffer");
          }

          v51 = *(v16 + 1264);
          v52 = *(v17 + 24);
          v53 = *(v38 + 1264);
          v54 = *(v38 + 1272);
          v55 = 4 * v54;
          v56 = 4 * v53 < v51 || v55 < v52;
          v57 = 16 * v51;
          v58 = v56 || v57 < v53;
          v59 = 16 * v52;
          v60 = v58 || v59 < v54;
          if (!v60 && !(16 * v53 % v51) && !(v57 % v53) && !(16 * v54 % v52) && !(v59 % v54))
          {
            v61 = 1;
            goto LABEL_76;
          }

          if (4 * v53 != 3 * v51)
          {
            goto LABEL_92;
          }

          v61 = v55 == 3 * v52;
LABEL_76:
          v62 = v80 != 0 && v61;
          if (v80 || !v61)
          {
LABEL_88:
            if (!a4 || !v62 || *(*v91 + 72) != 8)
            {
              goto LABEL_92;
            }

            sub_277988938((v16 + 1248), (v38 + 1248), a2, a3, v83, v46, v47);
          }

          else
          {
            v63 = *(v16 + 1268);
            v64 = *(v16 + 1276);
            v65 = *(v38 + 1268);
            v66 = *(v38 + 1276);
            v67 = 4 * v66;
            if (4 * v65 >= v63 && v67 >= v64 && 16 * v63 >= v65 && 16 * v64 >= v66 && !(16 * v65 % v63) && !(16 * v63 % v65) && !(16 * v66 % v64) && !(16 * v64 % v66))
            {
              v62 = 1;
              goto LABEL_88;
            }

            if (4 * v65 == 3 * v63)
            {
              v62 = v67 == 3 * v64;
              goto LABEL_88;
            }

LABEL_92:
            if (!sub_2779F4074(v16 + 1248, v38 + 1248, *(*v91 + 72), v83, *v46.i64, *v47.i64, v48, v49, v50))
            {
              sub_2779F5C10(v10[4], 2, "Failed to allocate buffer during resize");
            }
          }

          v88[v14 - 1] = v38;
          v68 = *(v38 + 72);
          if (v68)
          {
            if (*(v38 + 260) != *(v10 + 129) || *(v38 + 264) != *(v10 + 130))
            {
              free(*(v68 - 8));
              goto LABEL_98;
            }
          }

          else
          {
LABEL_98:
            v69 = *(v10 + 129);
            *(v38 + 260) = v69;
            v70 = *(v10 + 130);
            *(v38 + 264) = v70;
            v71 = sub_2779724A8(((v70 + 1) >> 1) * ((v69 + 1) >> 1), 8uLL);
            *(v38 + 72) = v71;
            if (!v71)
            {
              sub_2779F5C10(v10[4], 2, "Failed to allocate buf->mvs");
            }

            v72 = *(v38 + 80);
            if (v72)
            {
              free(*(v72 - 8));
            }

            v73 = sub_2779724A8(*(v10 + 130) * *(v10 + 129), 1uLL);
            *(v38 + 80) = v73;
            if (!v73)
            {
              sub_2779F5C10(v10[4], 2, "Failed to allocate buf->seg_map");
            }
          }

          v74 = ((*(v10 + 129) + 32) >> 1) * (*(v10 + 141) >> 1);
          v9 = v91;
          v75 = v91[90];
          if (v75)
          {
            if (*(v91 + 182) < v74)
            {
              free(*(v75 - 8));
              goto LABEL_107;
            }
          }

          else
          {
LABEL_107:
            v76 = sub_2779724A8(v74, 8uLL);
            v9 = v91;
            v91[90] = v76;
            if (!v76)
            {
              sub_2779F5C10(v10[4], 2, "Failed to allocate cm->tpl_mvs");
              v9 = v91;
            }

            *(v9 + 182) = v74;
          }

          a5.n128_u64[0] = v10[5];
          *(v38 + 268) = a5.n128_u64[0];
          v12 = v85;
          v13 = v88;
          goto LABEL_22;
        }

        v39 = v9[77];
        v40 = *(v39 + 88);
        pthread_mutex_lock(v39);
        v41 = v91[77];
        v42 = v41[1].__opaque[24];
        if (v41[1].__opaque[24])
        {
          v43 = 0;
          v44 = v40;
          while (*v44)
          {
            v44 += 5686;
            if (v42 == ++v43)
            {
              goto LABEL_53;
            }
          }
        }

        else
        {
          LODWORD(v43) = 0;
        }

        if (v43 == v42)
        {
LABEL_53:
          pthread_mutex_unlock(v41);
          v8 = v86;
          goto LABEL_54;
        }

        v45 = &v40[5686 * v43];
        if (v45[328])
        {
          *(v45 + 161) = *(v45 + 165);
          *(v45 + 81) = *(v45 + 83);
          v45[328] = 0;
          v41 = v91[77];
        }

        *v45 = 1;
        pthread_mutex_unlock(v41);
        v8 = v86;
        if (v43 == -1)
        {
LABEL_54:
          sub_2779F5C10(v10[4], 2, "Unable to find free frame buffer");
          LODWORD(v43) = -1;
        }

        v38 = *(v84 + 88) + 22744 * v43;
        v36 = *(v10 + 10);
        v37 = *(v10 + 11);
        v9 = v91;
        goto LABEL_59;
      }
    }

    else if (*(v9 + 467) || *(*a1 + 23172))
    {
      goto LABEL_21;
    }

LABEL_22:
    ++v14;
  }

  while (v14 != 8);
}

uint64_t sub_277BA4DB8(uint64_t a1, int a2, int a3, int a4)
{
  v4 = *(a1 + 276);
  if (!v4)
  {
    return 12;
  }

  if (v4 == 1)
  {
    return 15;
  }

  v6 = *(a1 + 1104);
  if (v6 == 2 && *(a1 + 225) - 3 < 2)
  {
    return 12;
  }

  if (a4 > 1 || *(a1 + 232))
  {
    v7 = *(a1 + 24);
    if (v7 >= *(a1 + 28))
    {
      v7 = *(a1 + 28);
    }

    goto LABEL_11;
  }

  if (v6 == 1)
  {
    if (*(a1 + 892) == 1)
    {
      if (*(a1 + 1105))
      {
        if (a2 >= a3)
        {
          v10 = a3;
        }

        else
        {
          v10 = a2;
        }

        if (v10 >= 720)
        {
          v11 = *(a1 + 1032);
          if (v11 >= 4)
          {
            v12 = 1 << *(a1 + 336) << *(a1 + 340);
            if (v11 >= v12 && a3 * a2 / (v12 << 14) < 40)
            {
              return 12;
            }
          }
        }
      }

      else if (a2 >= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = a2;
      }

      v8 = v10 <= 719;
      goto LABEL_12;
    }

    if (a2 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

LABEL_11:
    v8 = v7 <= 720;
LABEL_12:
    if (v8)
    {
      return 12;
    }

    else
    {
      return 15;
    }
  }

  if (*(a1 + 248))
  {
    return 15;
  }

  if (a2 >= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a1 + 1036);
  if (v13 <= 480 && v14 > 0)
  {
    return 12;
  }

  if (v13 < 481 == v13 < 1081 || *(a1 + 1104))
  {
    if (v6 != 2)
    {
      return 15;
    }

    v5 = 15;
    if (v13 <= 2159 && v14 >= 9)
    {
      return 12;
    }
  }

  else
  {
    if (*(a1 + 1105) != 1)
    {
      return 15;
    }

    v5 = 15;
    if (v14 >= 5 && *(a1 + 1032) > 1)
    {
      return 12;
    }
  }

  return v5;
}

uint64_t sub_277BA4F38(uint64_t result)
{
  v1 = result;
  v2 = result + 270312;
  v3 = (result + 245616);
  v4 = *(result + 245616);
  if ((v4 & 0xFFFFFFFD) == 0 || (*(result + 246118) & 1) != 0 || *(result + 273775) == 1)
  {
    result = sub_277A46CC8(result + 245616);
    v4 = *v3;
  }

  if (v4 == 3 || !v4 && *(v3 + 120))
  {
    if (!*(*v1 + 376))
    {
      v5 = *v2;
      result = sub_277BA4DB8(v1 + 271104, *(v3 + 14), *(v3 + 15), *(*v1 + 51028));
      *(v5 + 28) = result;
      *(v5 + 32) = byte_277C3F990[result];
      *(v5 + 36) = byte_277C42228[result];
    }
  }

  else
  {
    v6 = *(v3 + 127);
    v7 = v6 != 7 && (*(v3 + 127) & 0xF8) == 0;
    if (v7 && (v8 = *(v1 + 4 * (v6 & 7) + 245856), v8 != -1) && (v9 = *(v1 + 8 * v8 + 246032)) != 0)
    {
      result = memcpy(*(v2 + 8), (v9 + 1496), 0x52FCuLL);
    }

    else
    {
      result = sub_277A46CC8(v3);
      *(v1 + 264609) = 257;
    }
  }

  *(*(v3 + 29) + 1468) = 0u;
  v10 = *(v3 + 127);
  v11 = v10 != 7 && (*(v3 + 127) & 0xF8) == 0;
  if (!v11 || (v12 = *(v1 + 4 * (v10 & 7) + 245856), v12 == -1))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v1 + 8 * v12 + 246032);
  }

  *(v3 + 28) = v13;
  *(v1 + 529104) = 0;
  return result;
}

void sub_277BA50D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    free(*(v2 - 8));
  }

  *(a1 + 8) = 0;
  v3 = *(a1 + 32776);
  if (v3)
  {
    free(*(v3 - 8));
  }

  *(a1 + 32776) = 0;
  *a1 = 0;
}

uint64_t sub_277BA5128(uint64_t result, int32x4_t a2)
{
  v2 = result;
  v23 = *MEMORY[0x277D85DE8];
  v3 = result + 269996;
  v4 = result + 245616;
  if (!*(*(result + 270312) + 58) && *(result + 246104) && (*(result + 246118) != 1 || !*v4))
  {
    v5 = *(result + 8 * *(result + 643472) + 246032);
    if (!v5)
    {
      result = sub_2779F5C10(*(result + 245664), 5, "Buffer does not contain a reconstructed frame");
    }

    v6 = *(v4 + 232);
    if (v6)
    {
      --*v6;
    }

    *(v4 + 232) = v5;
    ++*v5;
  }

  if ((!*(v4 + 488) || *(v4 + 502) == 1 && *v4) && *(v2[33789] + 109) && (*(v4 + 480) || *(v4 + 484)))
  {
    result = memcpy((*(v4 + 232) + 572), v2 + 33669, 0x288uLL);
    if (*v4 != 1)
    {
      *(*(v4 + 232) + 576) = 1;
    }

    v7 = *v3 + 3381;
    if (*v3 == 0xF2CB)
    {
      v7 = 7391;
    }

    *v3 = v7;
  }

  v8 = *(v3 + 340);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(v3 + 344);
    do
    {
      if (v10 >= 1)
      {
        for (i = 0; i < v10; ++i)
        {
          result = memcpy((v2[57943] + 23824 * (v9 + *(v3 + 340) * i) + 32), *(v3 + 324), 0x52FCuLL);
          v10 = *(v3 + 344);
        }

        v8 = *(v3 + 340);
      }

      ++v9;
    }

    while (v9 < v8);
  }

  if ((*v4 & 0xFD) != 0 && *(v4 + 505) == 4)
  {
    v12 = 0;
    v13 = 0;
    v14 = v2[30095];
    v22 = 0;
    v21 = 0;
    v15 = (v14 + 24);
    do
    {
      a2.i32[0] = *(&v21 + v12);
      v16 = v15;
      v17 = 16;
      do
      {
        v18.i32[0] = *(v16 - 6);
        v18.i32[1] = *(v16 - 3);
        v18.i32[2] = *v16;
        v18.i32[3] = v16[3];
        a2 = vaddq_s32(v18, a2);
        v16 += 12;
        v17 -= 4;
      }

      while (v17);
      v19 = vaddvq_s32(a2);
      *(&v21 + v12) = v19;
      if (v19 > 0)
      {
        ++v13;
      }

      ++v12;
      ++v15;
    }

    while (v12 != 3);
    if (v13 == 1)
    {
      v20 = 0;
      while (!*(&v21 + v20))
      {
        if (++v20 == 3)
        {
          return result;
        }
      }

      *(v4 + 505) = v20;
    }
  }

  return result;
}

BOOL sub_277BA53E4(int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2];
  if (v3 >= 8)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v8 = *a1;
    for (i = 8; i <= v3; i += 8)
    {
      if (v8 >= 8)
      {
        v10 = 0;
        v11 = *(a1 + 5);
        v12 = a1[8];
        v13 = *(a2 + 32);
        v14 = a1[48];
        v15 = v11 + v12 * v7;
        v16 = 2 * v12;
        v17 = (v11 + v12 + v12 * v7);
        for (j = 8; j <= v8; j += 8)
        {
          v19 = v15 + v10;
          v20 = *(a2 + 40) + v13 * v7 + v10;
          v21 = 0;
          if ((v14 & 8) != 0)
          {
            v28 = 2 * v19;
            v29 = 2 * v20;
            do
            {
              v30 = 0;
              do
              {
                v31 = *(v28 + 2 * v30);
                v32 = *(v29 + 2 * v30);
                v25 = v31 == v32;
              }

              while (v31 == v32 && v30++ < 7);
              v34 = v31 != v32 || v21++ >= 7;
              v29 += 2 * v13;
              v28 += v16;
            }

            while (!v34);
          }

          else
          {
            do
            {
              v22 = 0;
              do
              {
                v23 = *(v19 + v22);
                v24 = *(v20 + v22);
                v25 = v23 == v24;
              }

              while (v23 == v24 && v22++ < 7);
              v19 += v12;
              v20 += v13;
            }

            while (v23 == v24 && v21++ < 7);
          }

          if (v25)
          {
            ++v5;
          }

          else
          {
            v35 = v15 + v10;
            v36 = 0;
            if ((v14 & 8) != 0)
            {
              v39 = (2 * v35);
LABEL_43:
              v40 = 1;
              while (v39[v40] == *v39)
              {
                if (++v40 == 8)
                {
                  v39 = (v39 + v16);
                  if (++v36 != 8)
                  {
                    goto LABEL_43;
                  }

LABEL_60:
                  ++v4;
                  goto LABEL_33;
                }
              }
            }

            else
            {
              v37 = (v15 + v10);
LABEL_37:
              v38 = 1;
              while (v37[v38] == *v37)
              {
                if (++v38 == 8)
                {
                  v37 += v12;
                  if (++v36 != 8)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_60;
                }
              }
            }

            v41 = 0;
            if ((v14 & 8) != 0)
            {
              v45 = 2 * v35;
              v46 = (v16 + 2 * v35);
LABEL_56:
              v47 = v46;
              v48 = 7;
              while (*v47 == *(v45 + 2 * v41))
              {
                v47 = (v47 + v16);
                if (!--v48)
                {
                  ++v41;
                  ++v46;
                  if (v41 != 8)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_60;
                }
              }
            }

            else
            {
              v42 = v17;
LABEL_50:
              v43 = v42;
              v44 = 7;
              while (*v43 == *(v35 + v41))
              {
                v43 += v12;
                if (!--v44)
                {
                  ++v41;
                  ++v42;
                  if (v41 != 8)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_60;
                }
              }
            }
          }

LABEL_33:
          v10 += 8;
          v17 += 8;
        }

        v6 += ((v8 - 8) >> 3) + 1;
      }

      v7 += 8;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v49 = v5 + v4;
  v50 = v49 / v6;
  v51 = *(a3 + 256);
  *(a3 + 8 * v51) = v50;
  LODWORD(v51) = v51 + 1;
  v52 = -v51 < 0;
  v53 = -v51 & 0x1F;
  v54 = v51 & 0x1F;
  if (!v52)
  {
    v54 = -v53;
  }

  *(a3 + 256) = v54;
  v55 = *(a3 + 260);
  if (v55 < 31)
  {
    v56 = (v55 + 1);
  }

  else
  {
    v56 = 32;
  }

  *(a3 + 260) = v56;
  if (v50 < 0.8)
  {
    return 0;
  }

  if (v5 == v6)
  {
    return 1;
  }

  v58 = 0.0;
  if (v56 >= 1)
  {
    v59 = v56;
    do
    {
      v60 = *a3;
      a3 += 8;
      v58 = v58 + v60;
      --v59;
    }

    while (v59);
  }

  v61 = v58 / v56;
  if (v61 < 0.95)
  {
    return 0;
  }

  return v6 - v49 < 0 || v61 > 1.01;
}

uint64_t sub_277BA5710(uint64_t *a1)
{
  v2 = a1 + 30702;
  v3 = *(a1 + 16791);
  *(a1 + 49233) = *(a1 + 16790);
  *(a1 + 49235) = v3;
  memcpy(a1 + 49237, a1 + 33636, 0x108uLL);
  result = memcpy(a1 + 49296, a1 + 49383, 0x138uLL);
  v5 = *a1;
  v6 = (*a1 + 74928);
  *(a1 + 49335) = *v6;
  v8 = v6[2];
  v7 = v6[3];
  v9 = v6[1];
  *(a1 + 394740) = *(v6 + 60);
  *(a1 + 49339) = v8;
  *(a1 + 49341) = v7;
  *(a1 + 49337) = v9;
  if ((*v2 & 0xFD) != 0)
  {
    v10 = 0;
    v11 = *(a1 + 273752);
    v12 = a1 + 34211;
    v13 = 1;
    do
    {
      v14 = v12[v10];
      if (v10 == 3)
      {
        if (*(a1 + 68045) || *(v5 + 23172) || *(a1 + 272208) != 1 || *(a1 + 67852) || *(v5 + 51016))
        {
          result = v13;
        }

        else
        {
          result = v13;
          if (v14)
          {
            v15 = a1[*(v2 + 63) + 30754];
            v16 = v14[316] == *(v15 + 1264) && v14[318] == *(v15 + 1272);
            result = v11 | v16;
            v13 = result;
          }
        }
      }

      else
      {
        result = 1;
      }

      if (v14)
      {
        if (result)
        {
          result = (*v14 - 1);
          *v14 = result;
          v12[v10] = 0;
        }
      }

      ++v10;
    }

    while (v10 != 7);
  }

  return result;
}

int16x8_t sub_277BA589C(uint64_t a1, int a2, int a3, int16x8_t result)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = &v23;
    __memcpy_chk();
    v22 = v23;
    v8 = &v22 + a2;
    v9 = *v8;
    v8[1] = *v8;
    v8[2] = v9;
    v10 = (a1 + 2);
    v11 = a2 - 1;
    if (a3 == 1)
    {
      if (a2 >= 9)
      {
        v17 = a2 + 7;
        do
        {
          result = vrshrq_n_u16(vaddq_s16(vaddq_s16(*(v7 + 2), *v7), vaddq_s16(*(v7 + 1), *(v7 + 1))), 2uLL);
          *v10++ = result;
          v7 += 8;
          v17 -= 8;
        }

        while (v17 > 0xF);
        v11 = v17 - 8;
      }

      if (v11 >= 1)
      {
        v16 = vrshrq_n_u16(vaddq_s16(vaddq_s16(*(v7 + 2), *v7), vaddq_s16(*(v7 + 1), *(v7 + 1))), 2uLL);
        goto LABEL_23;
      }
    }

    else if (a3 == 2)
    {
      if (a2 >= 9)
      {
        v12 = a2 + 7;
        result.i32[0] = 393222;
        result.i16[2] = 6;
        result.i16[3] = 6;
        result.i16[4] = 6;
        result.i16[5] = 6;
        result.i16[6] = 6;
        result.i16[7] = 6;
        v13.i64[0] = 0x5000500050005;
        v13.i64[1] = 0x5000500050005;
        do
        {
          *v10++ = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 1), result), vaddq_s16(*(v7 + 2), *v7), v13), 4uLL);
          v7 += 8;
          v12 -= 8;
        }

        while (v12 > 0xF);
        v11 = v12 - 8;
      }

      if (v11 >= 1)
      {
        v14.i64[0] = 0x6000600060006;
        v14.i64[1] = 0x6000600060006;
        v15.i64[0] = 0x5000500050005;
        v15.i64[1] = 0x5000500050005;
        v16 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 1), v14), vaddq_s16(*(v7 + 2), *v7), v15), 4uLL);
LABEL_23:
        result = vbslq_s8(vcgtq_u16(xmmword_277BB7B30, vdupq_n_s16(v11)), *v10, v16);
        *v10 = result;
      }
    }

    else
    {
      if (a2 < 9)
      {
        v19 = &v22;
      }

      else
      {
        v18 = a2 + 7;
        v19 = &v22;
        do
        {
          v20 = vaddq_s16(vaddq_s16(*(v19 + 2), *(v19 + 1)), *(v19 + 3));
          result = vrshrq_n_u16(vaddq_s16(vaddq_s16(*(v19 + 4), *v19), vaddq_s16(v20, v20)), 3uLL);
          *v10++ = result;
          v19 += 8;
          v18 -= 8;
        }

        while (v18 > 0xF);
        v11 = v18 - 8;
      }

      if (v11 >= 1)
      {
        v21 = vaddq_s16(vaddq_s16(*(v19 + 2), *(v19 + 1)), *(v19 + 3));
        v16 = vrshrq_n_u16(vaddq_s16(vaddq_s16(*(v19 + 4), *v19), vaddq_s16(v21, v21)), 3uLL);
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t sub_277BA5AE4(uint64_t result, int a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = result;
    v6 = (result - 2);
    v7 = *(result - 2);
    v15[0] = v7;
    v15[1] = v7;
    result = __memcpy_chk();
    v15[a2 + 2] = *(v5 + 2 * a2 - 2);
    *(v5 - 4) = v7;
    v8 = vdupq_n_s16(~(-1 << a3));
    v9 = a2 + 8;
    v10 = v15;
    if (a3 == 12)
    {
      v11.i64[0] = 0x9000900090009;
      v11.i64[1] = 0x9000900090009;
      do
      {
        v18.val[1] = *(v10 + 2);
        v12 = vaddq_s16(v18.val[1], *(v10 + 1));
        v13 = vaddq_s16(*(v10 + 3), *v10);
        v18.val[0] = vminq_u16(vrshrn_high_n_s32(vrshrn_n_s32(vqsubq_u32(vmull_u16(*v12.i8, 0x9000900090009), vmovl_u16(*v13.i8)), 4uLL), vqsubq_u32(vmull_high_u16(v12, v11), vmovl_high_u16(v13)), 4uLL), v8);
        vst2q_s16(v6, v18);
        v6 += 16;
        v10 += 8;
        v9 -= 8;
      }

      while (v9 > 8);
    }

    else
    {
      v14.i64[0] = 0x9000900090009;
      v14.i64[1] = 0x9000900090009;
      do
      {
        v17.val[1] = *(v10 + 2);
        v17.val[0] = vminq_u16(vrshrq_n_u16(vqsubq_u16(vmulq_s16(vaddq_s16(v17.val[1], *(v10 + 1)), v14), vaddq_s16(*(v10 + 3), *v10)), 4uLL), v8);
        vst2q_s16(v6, v17);
        v6 += 16;
        v10 += 8;
        v9 -= 8;
      }

      while (v9 > 8);
    }
  }

  return result;
}

__int16 sub_277BA5C50@<H0>(int16x8_t *a1@<X0>, uint64_t a2@<X1>, int32x4_t *a3@<X2>, int32x4_t *a4@<X3>, __int16 *a5@<X4>, int16x8_t *a6@<X5>, int16x8_t a7@<Q0>, int16x8_t a8@<Q1>, int16x8_t a9@<Q2>)
{
  v9 = vuzp1q_s16(*a1, a1[1]);
  v10 = vcltzq_s16(v9);
  v11 = vshrq_n_s16(vqdmulhq_s16(vqaddq_s16(vabsq_s16(v9), a7), a8), 1uLL);
  v12.i64[0] = 0x1000100010001;
  v12.i64[1] = 0x1000100010001;
  v13 = vcgtzq_s16(v11);
  v14 = vsubq_s16(veorq_s8(v11, v10), v10);
  v15 = vmulq_s16(v14, a9);
  *a3 = vmovl_s16(*v14.i8);
  a3[1] = vmovl_high_s16(v14);
  *a4 = vmovl_s16(*v15.i8);
  a4[1] = vmovl_high_s16(v15);
  v17 = *a6;
  v16 = a6 + 1;
  v15.i64[0] = -1;
  v15.i64[1] = -1;
  v18 = vmaxq_s16(vandq_s8(vaddq_s16(v17, v12), v13), v15);
  v19 = vdupq_lane_s16(*a9.i8, 1);
  v20 = vdupq_lane_s16(*a7.i8, 1);
  v21 = a4 + 3;
  v22 = a3 + 3;
  v23 = a2 + 8;
  v24 = a1 + 3;
  do
  {
    v25 = vuzp1q_s16(v24[-1], *v24);
    v26 = vqaddq_s16(vabsq_s16(v25), v20);
    v27 = vcltzq_s16(v25);
    v28 = vshrq_n_s16(vqdmulhq_lane_s16(v26, *a8.i8, 1), 1uLL);
    v29 = vsubq_s16(veorq_s8(v28, v27), v27);
    v30 = vmulq_s16(v29, v19);
    v22[-1] = vmovl_s16(*v29.i8);
    *v22 = vmovl_high_s16(v29);
    v21[-1] = vmovl_s16(*v30.i8);
    *v21 = vmovl_high_s16(v30);
    v31 = *v16++;
    v18 = vmaxq_s16(v18, vandq_s8(vaddq_s16(v31, v12), vcgtzq_s16(v28)));
    v21 += 2;
    v22 += 2;
    v23 -= 8;
    v24 += 2;
  }

  while (v23 > 16);
  result = vmaxvq_s16(v18);
  *a5 = result;
  return result;
}

__int16 sub_277BA5D3C@<H0>(int16x8_t *a1@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int16x8_t *a4@<X3>, __int16 *a5@<X4>, int16x8_t *a6@<X5>, int16x8_t a7@<Q0>, int16x8_t a8@<Q1>, int16x8_t a9@<Q2>)
{
  v10 = *a1;
  v9 = a1 + 1;
  v11 = vcltzq_s16(v10);
  v12 = vshrq_n_s16(vqdmulhq_s16(vqaddq_s16(vabsq_s16(v10), a7), a8), 1uLL);
  v13.i64[0] = 0x1000100010001;
  v13.i64[1] = 0x1000100010001;
  v14 = vsubq_s16(veorq_s8(v12, v11), v11);
  *a3 = v14;
  v15 = a3 + 1;
  *a4 = vmulq_s16(v14, a9);
  v16 = a4 + 1;
  v18 = *a6;
  v17 = a6 + 1;
  v19 = vandq_s8(vaddq_s16(v18, v13), vcgtzq_s16(v12));
  v12.i64[0] = -1;
  v12.i64[1] = -1;
  v20 = vmaxq_s16(v19, v12);
  v21 = vdupq_lane_s16(*a9.i8, 1);
  v22 = vdupq_lane_s16(*a7.i8, 1);
  v23 = a2 - 8;
  do
  {
    v24 = *v9++;
    v25 = vcltzq_s16(v24);
    v26 = vshrq_n_s16(vqdmulhq_lane_s16(vqaddq_s16(vabsq_s16(v24), v22), *a8.i8, 1), 1uLL);
    v27 = vcgtzq_s16(v26);
    v28 = vsubq_s16(veorq_s8(v26, v25), v25);
    *v15++ = v28;
    *v16++ = vmulq_s16(v28, v21);
    v29 = *v17++;
    v20 = vmaxq_s16(v20, vandq_s8(vaddq_s16(v29, v13), v27));
    v23 -= 8;
  }

  while (v23);
  result = vmaxvq_s16(v20);
  *a5 = result;
  return result;
}

__int16 sub_277BA5DE4@<H0>(int16x8_t *a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, __int16 *a4@<X3>, _WORD *a5@<X4>, _WORD *a6@<X5>, int16x8_t *a7@<X6>, int16x8_t *a8@<X7>, _WORD *a9, _WORD *a10, int16x8_t *a11, int a12)
{
  v18 = *a3;
  v19 = 4 * a2;
  v87 = a3[1];
  bzero(a7, 4 * a2);
  bzero(a8, v19);
  v20 = a9 + 1;
  v21 = vld1q_dup_s16(v20);
  v22 = a5 + 1;
  v23 = vld1q_dup_s16(v22);
  v24 = a6 + 1;
  v25 = vld1q_dup_s16(v24);
  v26 = a4[1];
  v27 = vuzp1q_s16(*a1, a1[1]);
  v28 = vabsq_s16(v27);
  if (a12 == 2)
  {
    v29 = vdupq_n_s16((v26 + 2) >> 2);
    v30 = vdupq_n_s16((v87 + 2) >> 2);
    v30.i16[0] = (v18 + 2) >> 2;
    v31 = vcgeq_s16(v28, v30);
    if (vmovn_s16(v31))
    {
      v29.i16[0] = (*a4 + 2) >> 2;
      v23.i16[0] = *a5;
      v21.i16[0] = *a9;
      v25.i16[0] = *a6;
      v32 = vcltzq_s16(v27);
      v33 = vqaddq_s16(v28, v29);
      v34 = vsraq_n_s16(v33, vqdmulhq_s16(v33, v23), 1uLL);
      v35 = *&vshrq_n_u16(vmulq_s16(v34, v25), 0xEuLL) & __PAIR128__(0xFFFDFFFDFFFDFFFDLL, 0xFFFDFFFDFFFDFFFDLL);
      v36 = vqdmulhq_s16(v34, v25);
      v37 = vorrq_s8(v35, vaddq_s16(v36, v36));
      v38 = a7;
      v39 = vbslq_s8(v31, vsubq_s16(veorq_s8(v37, v32), v32), vuzp1q_s16(*a7, a7[1]));
      *a7 = vmovl_s16(*v39.i8);
      a7[1] = vmovl_high_s16(v39);
      v40 = a8;
      v41 = vbslq_s8(v31, vsubq_s16(veorq_s8(vorrq_s8(vshlq_n_s16(vqdmulhq_s16(v37, v21), 0xDuLL), vshrq_n_u16(vmulq_s16(v21, v37), 2uLL)), v32), v32), vuzp1q_s16(*a8, a8[1]));
      *a8 = vmovl_s16(*v41.i8);
      a8[1] = vmovl_high_s16(v41);
      v29.i16[0] = (a4[1] + 2) >> 2;
      v23.i16[0] = a5[1];
      v21.i16[0] = a9[1];
      v25.i16[0] = a6[1];
      v42 = a11;
      v43 = vandq_s8(vcgtzq_s16(v37), vandq_s8(vcgezq_s16(*a11), v31));
      v44 = vornq_s8(vandq_s8(*a11, v43), v43);
    }

    else
    {
      v44.i64[0] = -1;
      v44.i64[1] = -1;
      v42 = a11;
      v38 = a7;
      v40 = a8;
    }

    if (a2 >= 9)
    {
      v57 = v42 + 1;
      v58 = v40 + 3;
      v59 = v38 + 3;
      v60 = a1 + 3;
      v61 = 8;
      do
      {
        v62 = vuzp1q_s16(v60[-1], *v60);
        v63 = vabsq_s16(v62);
        v30.i16[0] = (v87 + 2) >> 2;
        v64 = vcgeq_s16(v63, v30);
        if (vmovn_s16(v64))
        {
          v65 = vcltzq_s16(v62);
          v66 = vqaddq_s16(v63, v29);
          v67 = vsraq_n_s16(v66, vqdmulhq_s16(v66, v23), 1uLL);
          v68 = *&vshrq_n_u16(vmulq_s16(v67, v25), 0xEuLL) & __PAIR128__(0xFFFDFFFDFFFDFFFDLL, 0xFFFDFFFDFFFDFFFDLL);
          v69 = vqdmulhq_s16(v67, v25);
          v70 = vorrq_s8(v68, vaddq_s16(v69, v69));
          v71 = vbslq_s8(v64, vsubq_s16(veorq_s8(v70, v65), v65), vuzp1q_s16(v59[-1], *v59));
          v59[-1] = vmovl_s16(*v71.i8);
          *v59 = vmovl_high_s16(v71);
          v72 = vbslq_s8(v64, vsubq_s16(veorq_s8(vorrq_s8(vshlq_n_s16(vqdmulhq_s16(v70, v21), 0xDuLL), vshrq_n_u16(vmulq_s16(v21, v70), 2uLL)), v65), v65), vuzp1q_s16(v58[-1], *v58));
          v58[-1] = vmovl_s16(*v72.i8);
          *v58 = vmovl_high_s16(v72);
          v44 = vbslq_s8(vandq_s8(vcgtzq_s16(v70), vandq_s8(vcgtq_s16(*v57, v44), v64)), *v57, v44);
        }

        v61 += 8;
        ++v57;
        v58 += 2;
        v59 += 2;
        v60 += 2;
      }

      while (v61 < a2);
    }
  }

  else
  {
    v45 = vdupq_n_s16((v26 + 1) >> 1);
    v46 = vdupq_n_s16((v87 + 1) >> 1);
    v46.i16[0] = (v18 + 1) >> 1;
    v47 = vcgeq_s16(v28, v46);
    if (vmovn_s16(v47))
    {
      v45.i16[0] = (*a4 + 1) >> 1;
      v23.i16[0] = *a5;
      v21.i16[0] = *a9;
      v25.i16[0] = *a6;
      v48 = vcltzq_s16(v27);
      v49 = vqaddq_s16(v28, v45);
      v50 = vqdmulhq_s16(vsraq_n_s16(v49, vqdmulhq_s16(v49, v23), 1uLL), v25);
      v51 = a7;
      v52 = vbslq_s8(v47, vsubq_s16(veorq_s8(v50, v48), v48), vuzp1q_s16(*a7, a7[1]));
      *a7 = vmovl_s16(*v52.i8);
      a7[1] = vmovl_high_s16(v52);
      v53 = a8;
      v54 = vbslq_s8(v47, vsubq_s16(veorq_s8(vshrq_n_u16(vmulq_s16(v21, v50), 1uLL), v48), v48), vuzp1q_s16(*a8, a8[1]));
      *a8 = vmovl_s16(*v54.i8);
      a8[1] = vmovl_high_s16(v54);
      v45.i16[0] = (a4[1] + 1) >> 1;
      v23.i16[0] = a5[1];
      v21.i16[0] = a9[1];
      v25.i16[0] = a6[1];
      v55 = a11;
      v56 = vandq_s8(vcgtzq_s16(v50), vandq_s8(vcgezq_s16(*a11), v47));
      v44 = vornq_s8(vandq_s8(*a11, v56), v56);
    }

    else
    {
      v44.i64[0] = -1;
      v44.i64[1] = -1;
      v55 = a11;
      v51 = a7;
      v53 = a8;
    }

    if (a2 >= 9)
    {
      v73 = v55 + 1;
      v74 = v53 + 3;
      v75 = v51 + 3;
      v76 = a1 + 3;
      v77 = 8;
      do
      {
        v78 = vuzp1q_s16(v76[-1], *v76);
        v79 = vabsq_s16(v78);
        v46.i16[0] = (v87 + 1) >> 1;
        v80 = vcgeq_s16(v79, v46);
        if (vmovn_s16(v80))
        {
          v81 = vcltzq_s16(v78);
          v82 = vqaddq_s16(v79, v45);
          v83 = vqdmulhq_s16(vsraq_n_s16(v82, vqdmulhq_s16(v82, v23), 1uLL), v25);
          v84 = vbslq_s8(v80, vsubq_s16(veorq_s8(v83, v81), v81), vuzp1q_s16(v75[-1], *v75));
          v75[-1] = vmovl_s16(*v84.i8);
          *v75 = vmovl_high_s16(v84);
          v85 = vbslq_s8(v80, vsubq_s16(veorq_s8(vshrq_n_u16(vmulq_s16(v21, v83), 1uLL), v81), v81), vuzp1q_s16(v74[-1], *v74));
          v74[-1] = vmovl_s16(*v85.i8);
          *v74 = vmovl_high_s16(v85);
          v44 = vbslq_s8(vandq_s8(vcgtzq_s16(v83), vandq_s8(vcgtq_s16(*v73, v44), v80)), *v73, v44);
        }

        v77 += 8;
        ++v73;
        v74 += 2;
        v75 += 2;
        v76 += 2;
      }

      while (v77 < a2);
    }
  }

  result = vmaxvq_s16(v44);
  *a10 = result + 1;
  return result;
}

int16x4_t sub_277BA62B4(const float *a1, int a2, uint64_t a3)
{
  v3 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (a1 + a2);
    v8 = vld1_dup_f32(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    v9 = vld1_dup_f32(v7);
    v10 = vpadal_u8(vpaddl_u8(v9), v8);
    result = vadd_s16(v10, v10);
    *(a3 + v3) = result.i32[0];
    v3 = 64;
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint8x8_t *sub_277BA62F8(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vpadal_u8(vpaddl_u8(*(result + a2)), *result);
    *(a3 + v3) = vadd_s16(v4, v4);
    result = (result + 2 * a2);
    v5 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

uint8x16_t *sub_277BA6334(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vpadalq_u8(vpaddlq_u8(*(result + a2)), *result);
    *(a3 + v3) = vaddq_s16(v4, v4);
    result = (result + 2 * a2);
    v5 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

int16x8_t sub_277BA6370(const char *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v6 = &a1[a2];
    v11 = vld4_s8(a1);
    v4 = 2 * a2;
    a1 += v4;
    v12 = vld4_s8(v6);
    v7 = vaddw_u8(vaddw_u8(vaddl_u8(v11.val[0], v11.val[1]), v12.val[1]), v12.val[0]);
    v10.val[0] = vaddq_s16(v7, v7);
    result = vaddw_u8(vaddw_u8(vaddl_u8(v11.val[2], v11.val[3]), v12.val[3]), v12.val[2]);
    v10.val[1] = vaddq_s16(result, result);
    vst2q_s16(v5, v10);
    v9 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v9);
  return result;
}

int16x4_t sub_277BA63C8(const float *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a1 + a2);
    v6 = vld1_dup_f32(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    v7 = vld1_dup_f32(v5);
    v8 = vpadal_u8(vpaddl_u8(v7), v6);
    result = vadd_s16(v8, v8);
    *(a3 + v3) = result.i32[0];
    v10 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v10);
  return result;
}

uint8x8_t *sub_277BA6408(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = vpadal_u8(vpaddl_u8(*(result + a2)), *result);
    *(a3 + v3) = vadd_s16(v6, v6);
    result = (result + 2 * a2);
    v3 = 64;
    v4 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint8x8_t *sub_277BA6448(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vpadal_u8(vpaddl_u8(*(result + a2)), *result);
    *(a3 + v3) = vadd_s16(v4, v4);
    result = (result + 2 * a2);
    v5 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

uint8x16_t *sub_277BA6484(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vpadalq_u8(vpaddlq_u8(*(result + a2)), *result);
    *(a3 + v3) = vaddq_s16(v4, v4);
    result = (result + 2 * a2);
    v5 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

uint8x16_t *sub_277BA64C0(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vpadalq_u8(vpaddlq_u8(*(result + a2)), *result);
    *(a3 + v3) = vaddq_s16(v4, v4);
    result = (result + 2 * a2);
    v5 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

int16x8_t sub_277BA64FC(const char *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v6 = &a1[a2];
    v11 = vld4_s8(a1);
    v4 = 2 * a2;
    a1 += v4;
    v12 = vld4_s8(v6);
    v7 = vaddw_u8(vaddw_u8(vaddl_u8(v11.val[0], v11.val[1]), v12.val[1]), v12.val[0]);
    v10.val[0] = vaddq_s16(v7, v7);
    result = vaddw_u8(vaddw_u8(vaddl_u8(v11.val[2], v11.val[3]), v12.val[3]), v12.val[2]);
    v10.val[1] = vaddq_s16(result, result);
    vst2q_s16(v5, v10);
    v9 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v9);
  return result;
}

int16x4_t sub_277BA6554(const float *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a1 + a2);
    v6 = vld1_dup_f32(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    v7 = vld1_dup_f32(v5);
    v8 = vpadal_u8(vpaddl_u8(v7), v6);
    result = vadd_s16(v8, v8);
    *(a3 + v3) = result.i32[0];
    v10 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v10);
  return result;
}

uint8x16_t *sub_277BA6594(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = vpadalq_u8(vpaddlq_u8(*(result + a2)), *result);
    *(a3 + v3) = vaddq_s16(v6, v6);
    result = (result + 2 * a2);
    v3 = 64;
    v4 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint8x8_t *sub_277BA65D4(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vpadal_u8(vpaddl_u8(*(result + a2)), *result);
    *(a3 + v3) = vadd_s16(v4, v4);
    result = (result + 2 * a2);
    v5 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

int16x8_t sub_277BA6610(const char *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v6 = &a1[a2];
    v11 = vld4_s8(a1);
    v4 = 2 * a2;
    a1 += v4;
    v12 = vld4_s8(v6);
    v7 = vaddw_u8(vaddw_u8(vaddl_u8(v11.val[0], v11.val[1]), v12.val[1]), v12.val[0]);
    v10.val[0] = vaddq_s16(v7, v7);
    result = vaddw_u8(vaddw_u8(vaddl_u8(v11.val[2], v11.val[3]), v12.val[3]), v12.val[2]);
    v10.val[1] = vaddq_s16(result, result);
    vst2q_s16(v5, v10);
    v9 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v9);
  return result;
}

int16x4_t sub_277BA6668(const float *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vld1_dup_f32(a1);
    a1 = (a1 + a2);
    result = vshl_n_s16(vpaddl_u8(v4), 2uLL);
    *(a3 + v3) = result.i32[0];
    v6 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

uint8x8_t *sub_277BA6694(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(vpaddl_u8(*result), 2uLL);
    result = (result + a2);
    v4 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

uint8x16_t *sub_277BA66C4(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshlq_n_s16(vpaddlq_u8(*result), 2uLL);
    result = (result + a2);
    v4 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

int16x8_t sub_277BA66F4(const char *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v8 = vld4_s8(a1);
    a1 += a2;
    v4 = (a3 + v3);
    v7.val[0] = vshlq_n_s16(vaddl_u8(v8.val[0], v8.val[1]), 2uLL);
    result = vaddl_u8(v8.val[2], v8.val[3]);
    v7.val[1] = vshlq_n_s16(result, 2uLL);
    vst2q_s16(v4, v7);
    v6 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x4_t sub_277BA672C(const float *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vld1_dup_f32(a1);
    a1 = (a1 + a2);
    result = vshl_n_s16(vpaddl_u8(v4), 2uLL);
    *(a3 + v3) = result.i32[0];
    v6 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

uint8x8_t *sub_277BA6758(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(vpaddl_u8(*result), 2uLL);
    result = (result + a2);
    v4 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

uint8x8_t *sub_277BA6788(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(vpaddl_u8(*result), 2uLL);
    result = (result + a2);
    v4 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

uint8x16_t *sub_277BA67B8(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshlq_n_s16(vpaddlq_u8(*result), 2uLL);
    result = (result + a2);
    v4 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

uint8x16_t *sub_277BA67E8(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshlq_n_s16(vpaddlq_u8(*result), 2uLL);
    result = (result + a2);
    v4 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

int16x8_t sub_277BA6818(const char *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v8 = vld4_s8(a1);
    a1 += a2;
    v4 = (a3 + v3);
    v7.val[0] = vshlq_n_s16(vaddl_u8(v8.val[0], v8.val[1]), 2uLL);
    result = vaddl_u8(v8.val[2], v8.val[3]);
    v7.val[1] = vshlq_n_s16(result, 2uLL);
    vst2q_s16(v4, v7);
    v6 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x4_t sub_277BA6850(const float *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vld1_dup_f32(a1);
    a1 = (a1 + a2);
    result = vshl_n_s16(vpaddl_u8(v4), 2uLL);
    *(a3 + v3) = result.i32[0];
    v6 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

uint8x16_t *sub_277BA687C(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshlq_n_s16(vpaddlq_u8(*result), 2uLL);
    result = (result + a2);
    v4 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

uint8x8_t *sub_277BA68AC(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(vpaddl_u8(*result), 2uLL);
    result = (result + a2);
    v4 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

int16x8_t sub_277BA68DC(const char *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v8 = vld4_s8(a1);
    a1 += a2;
    v4 = (a3 + v3);
    v7.val[0] = vshlq_n_s16(vaddl_u8(v8.val[0], v8.val[1]), 2uLL);
    result = vaddl_u8(v8.val[2], v8.val[3]);
    v7.val[1] = vshlq_n_s16(result, 2uLL);
    vst2q_s16(v4, v7);
    v6 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

__int32 *sub_277BA6914(__int32 *result, int a2, uint64_t a3, uint8x8_t a4)
{
  v4 = 0;
  do
  {
    a4.i32[0] = *result;
    a4 = vshl_n_s16(*&vmovl_u8(a4), 3uLL);
    *(a3 + v4) = *&a4;
    result = (result + a2);
    v5 = v4 >= 0xC0;
    v4 += 64;
  }

  while (!v5);
  return result;
}

uint8x8_t *sub_277BA6944(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshll_n_u8(*result, 3uLL);
    result = (result + a2);
    v4 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

uint8x16_t *sub_277BA6970(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = (a3 + v3);
    v5 = vshll_high_n_u8(*result, 3uLL);
    *v4 = vshll_n_u8(*result->i8, 3uLL);
    v4[1] = v5;
    result = (result + a2);
    v6 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

uint16x8_t sub_277BA69A4(uint8x16_t *a1, int a2, uint64_t a3)
{
  v3 = a1 + 1;
  v4 = 48;
  do
  {
    v5 = (a3 + v4);
    v6 = v3[-1];
    v5[-3] = vshll_n_u8(*v6.i8, 3uLL);
    v5[-2] = vshll_high_n_u8(v6, 3uLL);
    result = vshll_high_n_u8(*v3, 3uLL);
    v5[-1] = vshll_n_u8(*v3->i8, 3uLL);
    *v5 = result;
    v8 = v4 - 48;
    v4 += 64;
    v3 = (v3 + a2);
  }

  while (v8 < 0x7C0);
  return result;
}

__int32 *sub_277BA69EC(__int32 *result, int a2, uint64_t a3, uint8x8_t a4)
{
  v4 = 0;
  do
  {
    a4.i32[0] = *result;
    a4 = vshl_n_s16(*&vmovl_u8(a4), 3uLL);
    *(a3 + v4) = *&a4;
    result = (result + a2);
    v5 = v4 >= 0x1C0;
    v4 += 64;
  }

  while (!v5);
  return result;
}

uint8x8_t *sub_277BA6A1C(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshll_n_u8(*result, 3uLL);
    result = (result + a2);
    v4 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

uint8x8_t *sub_277BA6A48(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshll_n_u8(*result, 3uLL);
    result = (result + a2);
    v4 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

uint8x16_t *sub_277BA6A74(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = (a3 + v3);
    v5 = vshll_high_n_u8(*result, 3uLL);
    *v4 = vshll_n_u8(*result->i8, 3uLL);
    v4[1] = v5;
    result = (result + a2);
    v6 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

uint8x16_t *sub_277BA6AA8(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = (a3 + v3);
    v5 = vshll_high_n_u8(*result, 3uLL);
    *v4 = vshll_n_u8(*result->i8, 3uLL);
    v4[1] = v5;
    result = (result + a2);
    v6 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

uint16x8_t sub_277BA6ADC(uint8x16_t *a1, int a2, uint64_t a3)
{
  v3 = a1 + 1;
  v4 = 48;
  do
  {
    v5 = (a3 + v4);
    v6 = v3[-1];
    v5[-3] = vshll_n_u8(*v6.i8, 3uLL);
    v5[-2] = vshll_high_n_u8(v6, 3uLL);
    result = vshll_high_n_u8(*v3, 3uLL);
    v5[-1] = vshll_n_u8(*v3->i8, 3uLL);
    *v5 = result;
    v8 = v4 - 48;
    v4 += 64;
    v3 = (v3 + a2);
  }

  while (v8 < 0x3C0);
  return result;
}

__int32 *sub_277BA6B24(__int32 *result, int a2, uint64_t a3, uint8x8_t a4)
{
  v4 = 0;
  do
  {
    a4.i32[0] = *result;
    a4 = vshl_n_s16(*&vmovl_u8(a4), 3uLL);
    *(a3 + v4) = *&a4;
    result = (result + a2);
    v5 = v4 >= 0x3C0;
    v4 += 64;
  }

  while (!v5);
  return result;
}

uint8x16_t *sub_277BA6B54(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = (a3 + v3);
    v5 = vshll_high_n_u8(*result, 3uLL);
    *v4 = vshll_n_u8(*result->i8, 3uLL);
    v4[1] = v5;
    result = (result + a2);
    v6 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

uint8x8_t *sub_277BA6B88(uint8x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshll_n_u8(*result, 3uLL);
    result = (result + a2);
    v4 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

uint16x8_t sub_277BA6BB4(uint8x16_t *a1, int a2, uint64_t a3)
{
  v3 = a1 + 1;
  v4 = 48;
  do
  {
    v5 = (a3 + v4);
    v6 = v3[-1];
    v5[-3] = vshll_n_u8(*v6.i8, 3uLL);
    v5[-2] = vshll_high_n_u8(v6, 3uLL);
    result = vshll_high_n_u8(*v3, 3uLL);
    v5[-1] = vshll_n_u8(*v3->i8, 3uLL);
    *v5 = result;
    v8 = v4 - 48;
    v4 += 64;
    v3 = (v3 + a2);
  }

  while (v8 < 0x1C0);
  return result;
}

int16x4_t *sub_277BA6BFC(int16x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = vadd_s16(*(result + 2 * a2), *result);
    v7 = vpadd_s16(v6, v6);
    *(a3 + v3) = vadd_s16(v7, v7).u32[0];
    result = (result + 4 * a2);
    v3 = 64;
    v4 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

int16x8_t *sub_277BA6C40(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vaddq_s16(*(result + 2 * a2), *result);
    v4.i64[0] = vpaddq_s16(v4, v4).u64[0];
    *(a3 + v3) = vadd_s16(*v4.i8, *v4.i8);
    result = (result + 4 * a2);
    v5 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

int16x8_t *sub_277BA6C80(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vpaddq_s16(vaddq_s16(*(result + 2 * a2), *result), vaddq_s16(*(result + 2 * a2 + 16), result[1]));
    *(a3 + v3) = vaddq_s16(v4, v4);
    result = (result + 4 * a2);
    v5 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

int16x8_t sub_277BA6CC8(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v6 = &a1[a2];
    v11 = vld4q_s16(a1);
    v4 = 4 * a2;
    a1 = (a1 + v4);
    v12 = vld4q_s16(v6);
    v7 = vaddq_s16(vaddq_s16(vaddq_s16(v11.val[0], v11.val[1]), v12.val[1]), v12.val[0]);
    v10.val[0] = vaddq_s16(v7, v7);
    result = vaddq_s16(vaddq_s16(vaddq_s16(v11.val[2], v11.val[3]), v12.val[3]), v12.val[2]);
    v10.val[1] = vaddq_s16(result, result);
    vst2q_s16(v5, v10);
    v9 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v9);
  return result;
}

int16x4_t *sub_277BA6D20(int16x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vadd_s16(*(result + 2 * a2), *result);
    v5 = vpadd_s16(v4, v4);
    *(a3 + v3) = vadd_s16(v5, v5).u32[0];
    result = (result + 4 * a2);
    v6 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x8_t *sub_277BA6D60(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = vaddq_s16(*(result + 2 * a2), *result);
    v6.i64[0] = vpaddq_s16(v6, v6).u64[0];
    *(a3 + v3) = vadd_s16(*v6.i8, *v6.i8);
    result = (result + 4 * a2);
    v3 = 64;
    v4 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

int16x8_t *sub_277BA6DA4(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vaddq_s16(*(result + 2 * a2), *result);
    v4.i64[0] = vpaddq_s16(v4, v4).u64[0];
    *(a3 + v3) = vadd_s16(*v4.i8, *v4.i8);
    result = (result + 4 * a2);
    v5 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

int16x8_t *sub_277BA6DE4(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vpaddq_s16(vaddq_s16(*(result + 2 * a2), *result), vaddq_s16(*(result + 2 * a2 + 16), result[1]));
    *(a3 + v3) = vaddq_s16(v4, v4);
    result = (result + 4 * a2);
    v5 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

int16x8_t *sub_277BA6E2C(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vpaddq_s16(vaddq_s16(*(result + 2 * a2), *result), vaddq_s16(*(result + 2 * a2 + 16), result[1]));
    *(a3 + v3) = vaddq_s16(v4, v4);
    result = (result + 4 * a2);
    v5 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

int16x8_t sub_277BA6E74(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v6 = &a1[a2];
    v11 = vld4q_s16(a1);
    v4 = 4 * a2;
    a1 = (a1 + v4);
    v12 = vld4q_s16(v6);
    v7 = vaddq_s16(vaddq_s16(vaddq_s16(v11.val[0], v11.val[1]), v12.val[1]), v12.val[0]);
    v10.val[0] = vaddq_s16(v7, v7);
    result = vaddq_s16(vaddq_s16(vaddq_s16(v11.val[2], v11.val[3]), v12.val[3]), v12.val[2]);
    v10.val[1] = vaddq_s16(result, result);
    vst2q_s16(v5, v10);
    v9 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v9);
  return result;
}

int16x4_t *sub_277BA6ECC(int16x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vadd_s16(*(result + 2 * a2), *result);
    v5 = vpadd_s16(v4, v4);
    *(a3 + v3) = vadd_s16(v5, v5).u32[0];
    result = (result + 4 * a2);
    v6 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x8_t *sub_277BA6F0C(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = vpaddq_s16(vaddq_s16(*(result + 2 * a2), *result), vaddq_s16(*(result + 2 * a2 + 16), result[1]));
    *(a3 + v3) = vaddq_s16(v6, v6);
    result = (result + 4 * a2);
    v3 = 64;
    v4 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

int16x8_t *sub_277BA6F58(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = vaddq_s16(*(result + 2 * a2), *result);
    v4.i64[0] = vpaddq_s16(v4, v4).u64[0];
    *(a3 + v3) = vadd_s16(*v4.i8, *v4.i8);
    result = (result + 4 * a2);
    v5 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v5);
  return result;
}

int16x8_t sub_277BA6F98(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v6 = &a1[a2];
    v11 = vld4q_s16(a1);
    v4 = 4 * a2;
    a1 = (a1 + v4);
    v12 = vld4q_s16(v6);
    v7 = vaddq_s16(vaddq_s16(vaddq_s16(v11.val[0], v11.val[1]), v12.val[1]), v12.val[0]);
    v10.val[0] = vaddq_s16(v7, v7);
    result = vaddq_s16(vaddq_s16(vaddq_s16(v11.val[2], v11.val[3]), v12.val[3]), v12.val[2]);
    v10.val[1] = vaddq_s16(result, result);
    vst2q_s16(v5, v10);
    v9 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v9);
  return result;
}

int16x4_t *sub_277BA6FF0(int16x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(vpadd_s16(*result, *result), 2uLL).u32[0];
    result = (result + 2 * a2);
    v4 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

int16x4_t sub_277BA7020(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld2_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    result = vshl_n_s16(vadd_s16(v7.val[0], v7.val[1]), 2uLL);
    *(a3 + v3) = result;
    v6 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x8_t sub_277BA704C(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld2q_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    result = vshlq_n_s16(vaddq_s16(v7.val[0], v7.val[1]), 2uLL);
    *(a3 + v3) = result;
    v6 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x8_t sub_277BA7078(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v9 = vld4q_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    v5 = (a3 + v3);
    v6 = vaddq_s16(v9.val[0], v9.val[1]);
    result = vaddq_s16(v9.val[2], v9.val[3]);
    v9.val[1] = vshlq_n_s16(v6, 2uLL);
    v9.val[2] = vshlq_n_s16(result, 2uLL);
    vst2q_s16(v5, *v9.val[1].i8);
    v8 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v8);
  return result;
}

int16x4_t *sub_277BA70B0(int16x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(vpadd_s16(*result, *result), 2uLL).u32[0];
    result = (result + 2 * a2);
    v4 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

int16x4_t sub_277BA70E0(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld2_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    result = vshl_n_s16(vadd_s16(v7.val[0], v7.val[1]), 2uLL);
    *(a3 + v3) = result;
    v6 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x4_t sub_277BA710C(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld2_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    result = vshl_n_s16(vadd_s16(v7.val[0], v7.val[1]), 2uLL);
    *(a3 + v3) = result;
    v6 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x8_t sub_277BA7138(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld2q_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    result = vshlq_n_s16(vaddq_s16(v7.val[0], v7.val[1]), 2uLL);
    *(a3 + v3) = result;
    v6 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x8_t sub_277BA7164(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld2q_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    result = vshlq_n_s16(vaddq_s16(v7.val[0], v7.val[1]), 2uLL);
    *(a3 + v3) = result;
    v6 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x8_t sub_277BA7190(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v9 = vld4q_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    v5 = (a3 + v3);
    v6 = vaddq_s16(v9.val[0], v9.val[1]);
    result = vaddq_s16(v9.val[2], v9.val[3]);
    v9.val[1] = vshlq_n_s16(v6, 2uLL);
    v9.val[2] = vshlq_n_s16(result, 2uLL);
    vst2q_s16(v5, *v9.val[1].i8);
    v8 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v8);
  return result;
}

int16x4_t *sub_277BA71C8(int16x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(vpadd_s16(*result, *result), 2uLL).u32[0];
    result = (result + 2 * a2);
    v4 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

int16x8_t sub_277BA71F8(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld2q_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    result = vshlq_n_s16(vaddq_s16(v7.val[0], v7.val[1]), 2uLL);
    *(a3 + v3) = result;
    v6 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x4_t sub_277BA7224(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld2_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    result = vshl_n_s16(vadd_s16(v7.val[0], v7.val[1]), 2uLL);
    *(a3 + v3) = result;
    v6 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x8_t sub_277BA7250(const __int16 *a1, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v9 = vld4q_s16(a1);
    v4 = 2 * a2;
    a1 = (a1 + v4);
    v5 = (a3 + v3);
    v6 = vaddq_s16(v9.val[0], v9.val[1]);
    result = vaddq_s16(v9.val[2], v9.val[3]);
    v9.val[1] = vshlq_n_s16(v6, 2uLL);
    v9.val[2] = vshlq_n_s16(result, 2uLL);
    vst2q_s16(v5, *v9.val[1].i8);
    v8 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v8);
  return result;
}

int16x4_t *sub_277BA7288(int16x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(*result, 3uLL);
    result = (result + 2 * a2);
    v4 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

int16x8_t *sub_277BA72B4(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshlq_n_s16(*result, 3uLL);
    result = (result + 2 * a2);
    v4 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

const __int16 *sub_277BA72E0(const __int16 *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v7 = vld2q_s16(result);
    v4 = 2 * a2;
    result = (result + v4);
    v8.val[0] = vshlq_n_s16(v7.val[0], 3uLL);
    v8.val[1] = vshlq_n_s16(v7.val[1], 3uLL);
    vst2q_s16(v5, v8);
    v6 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

const __int16 *sub_277BA7310(const __int16 *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld4q_s16(result);
    v4 = 2 * a2;
    result = (result + v4);
    v5 = (a3 + v3);
    v8.val[0] = vshlq_n_s16(v7.val[0], 3uLL);
    v8.val[1] = vshlq_n_s16(v7.val[1], 3uLL);
    v8.val[2] = vshlq_n_s16(v7.val[2], 3uLL);
    v8.val[3] = vshlq_n_s16(v7.val[3], 3uLL);
    vst4q_s16(v5, v8);
    v6 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x4_t *sub_277BA7348(int16x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(*result, 3uLL);
    result = (result + 2 * a2);
    v4 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

int16x8_t *sub_277BA7374(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshlq_n_s16(*result, 3uLL);
    result = (result + 2 * a2);
    v4 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

int16x8_t *sub_277BA73A0(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshlq_n_s16(*result, 3uLL);
    result = (result + 2 * a2);
    v4 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

const __int16 *sub_277BA73CC(const __int16 *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v7 = vld2q_s16(result);
    v4 = 2 * a2;
    result = (result + v4);
    v8.val[0] = vshlq_n_s16(v7.val[0], 3uLL);
    v8.val[1] = vshlq_n_s16(v7.val[1], 3uLL);
    vst2q_s16(v5, v8);
    v6 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

const __int16 *sub_277BA73FC(const __int16 *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v7 = vld2q_s16(result);
    v4 = 2 * a2;
    result = (result + v4);
    v8.val[0] = vshlq_n_s16(v7.val[0], 3uLL);
    v8.val[1] = vshlq_n_s16(v7.val[1], 3uLL);
    vst2q_s16(v5, v8);
    v6 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

const __int16 *sub_277BA742C(const __int16 *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld4q_s16(result);
    v4 = 2 * a2;
    result = (result + v4);
    v5 = (a3 + v3);
    v8.val[0] = vshlq_n_s16(v7.val[0], 3uLL);
    v8.val[1] = vshlq_n_s16(v7.val[1], 3uLL);
    v8.val[2] = vshlq_n_s16(v7.val[2], 3uLL);
    v8.val[3] = vshlq_n_s16(v7.val[3], 3uLL);
    vst4q_s16(v5, v8);
    v6 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x4_t *sub_277BA7464(int16x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshl_n_s16(*result, 3uLL);
    result = (result + 2 * a2);
    v4 = v3 >= 0x3C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

const __int16 *sub_277BA7490(const __int16 *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v5 = (a3 + v3);
    v7 = vld2q_s16(result);
    v4 = 2 * a2;
    result = (result + v4);
    v8.val[0] = vshlq_n_s16(v7.val[0], 3uLL);
    v8.val[1] = vshlq_n_s16(v7.val[1], 3uLL);
    vst2q_s16(v5, v8);
    v6 = v3 >= 0xC0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x8_t *sub_277BA74C0(int16x8_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    *(a3 + v3) = vshlq_n_s16(*result, 3uLL);
    result = (result + 2 * a2);
    v4 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v4);
  return result;
}

const __int16 *sub_277BA74EC(const __int16 *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v7 = vld4q_s16(result);
    v4 = 2 * a2;
    result = (result + v4);
    v5 = (a3 + v3);
    v8.val[0] = vshlq_n_s16(v7.val[0], 3uLL);
    v8.val[1] = vshlq_n_s16(v7.val[1], 3uLL);
    v8.val[2] = vshlq_n_s16(v7.val[2], 3uLL);
    v8.val[3] = vshlq_n_s16(v7.val[3], 3uLL);
    vst4q_s16(v5, v8);
    v6 = v3 >= 0x1C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

int16x4_t *sub_277BA7524(int16x4_t *result, uint64_t a2)
{
  v2 = 0;
  v3 = vaddl_u16(vadd_s16(result[8], *result), vadd_s16(result[24], result[16]));
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_n_u32(vpaddq_s32(v4, v4), 4uLL);
  do
  {
    *(a2 + v2 * 8) = vsub_s16(result[v2], v5);
    v6 = v2 >= 24;
    v2 += 8;
  }

  while (!v6);
  return result;
}

uint64_t sub_277BA7570(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1;
  v4 = 0uLL;
  do
  {
    v5 = v3;
    v4 = vaddw_u16(vaddw_u16(v4, vadd_s16(*(result + v2 + 64), *(result + v2))), vadd_s16(*(result + v2 + 192), *(result + v2 + 128)));
    v2 = 256;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  v6 = 0;
  v7 = vpaddq_s32(v4, v4);
  v8 = vqrshrn_n_u32(vpaddq_s32(v7, v7), 5uLL);
  do
  {
    *(a2 + v6) = vsub_s16(*(result + v6), v8);
    v9 = v6 >= 0x1C0;
    v6 += 64;
  }

  while (!v9);
  return result;
}

uint64_t sub_277BA75E0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0uLL;
  do
  {
    v3 = vaddw_u16(vaddw_u16(v3, vadd_s16(*(result + v2 + 64), *(result + v2))), vadd_s16(*(result + v2 + 192), *(result + v2 + 128)));
    v4 = v2 >= 0x300;
    v2 += 256;
  }

  while (!v4);
  v5 = 0;
  v6 = vpaddq_s32(v3, v3);
  v7 = vqrshrn_n_u32(vpaddq_s32(v6, v6), 6uLL);
  do
  {
    *(a2 + v5) = vsub_s16(*(result + v5), v7);
    v4 = v5 >= 0x3C0;
    v5 += 64;
  }

  while (!v4);
  return result;
}

int16x8_t sub_277BA764C(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[4], *a1)), vaddq_s16(a1[12], a1[8]));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 5uLL), v4, 5uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  result = vsubq_s16(a1[12], v5);
  a2[12] = result;
  return result;
}

uint64_t sub_277BA76AC(uint64_t result, int16x8_t *a2)
{
  v2 = 0;
  v3 = 1;
  v4 = 0uLL;
  do
  {
    v5 = v3;
    v4 = vpadalq_u16(vpadalq_u16(v4, vaddq_s16(*(result + v2 + 64), *(result + v2))), vaddq_s16(*(result + v2 + 192), *(result + v2 + 128)));
    v2 = 256;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  v6 = 0;
  v7 = vpaddq_s32(v4, v4);
  v8 = vpaddq_s32(v7, v7);
  v9 = vqrshrn_high_n_u32(vqrshrn_n_u32(v8, 6uLL), v8, 6uLL);
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = (result + v6);
    *a2 = vsubq_s16(*v12, v9);
    a2[4] = vsubq_s16(v12[4], v9);
    a2[8] = vsubq_s16(v12[8], v9);
    a2[12] = vsubq_s16(v12[12], v9);
    a2 += 16;
    v6 = 256;
    v10 = 0;
  }

  while ((v11 & 1) != 0);
  return result;
}

uint64_t sub_277BA7750(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0uLL;
  do
  {
    v3 = vpadalq_u16(vpadalq_u16(v3, vaddq_s16(*(result + v2 + 64), *(result + v2))), vaddq_s16(*(result + v2 + 192), *(result + v2 + 128)));
    v4 = v2 >= 0x300;
    v2 += 256;
  }

  while (!v4);
  v5 = 0;
  v6 = vpaddq_s32(v3, v3);
  v7 = vpaddq_s32(v6, v6);
  v8 = vqrshrn_high_n_u32(vqrshrn_n_u32(v7, 7uLL), v7, 7uLL);
  do
  {
    v9 = (a2 + v5);
    *v9 = vsubq_s16(*(result + v5), v8);
    v9[4] = vsubq_s16(*(result + v5 + 64), v8);
    v9[8] = vsubq_s16(*(result + v5 + 128), v8);
    v9[12] = vsubq_s16(*(result + v5 + 192), v8);
    v4 = v5 >= 0x300;
    v5 += 256;
  }

  while (!v4);
  return result;
}

uint64_t sub_277BA77EC(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0uLL;
  do
  {
    v3 = vpadalq_u16(vpadalq_u16(v3, vaddq_s16(*(result + v2 + 64), *(result + v2))), vaddq_s16(*(result + v2 + 192), *(result + v2 + 128)));
    v4 = v2 >= 0x700;
    v2 += 256;
  }

  while (!v4);
  v5 = 0;
  v6 = vpaddq_s32(v3, v3);
  v7 = vpaddq_s32(v6, v6);
  v8 = vqrshrn_high_n_u32(vqrshrn_n_u32(v7, 8uLL), v7, 8uLL);
  do
  {
    v9 = (a2 + v5);
    *v9 = vsubq_s16(*(result + v5), v8);
    v9[4] = vsubq_s16(*(result + v5 + 64), v8);
    v9[8] = vsubq_s16(*(result + v5 + 128), v8);
    v9[12] = vsubq_s16(*(result + v5 + 192), v8);
    v4 = v5 >= 0x700;
    v5 += 256;
  }

  while (!v4);
  return result;
}

int16x8_t sub_277BA7888(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[1], *a1)), vaddq_s16(a1[5], a1[4])), vaddq_s16(a1[9], a1[8])), vaddq_s16(a1[13], a1[12]));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 6uLL), v4, 6uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  a2[12] = vsubq_s16(a1[12], v5);
  a2[1] = vsubq_s16(a1[1], v5);
  a2[5] = vsubq_s16(a1[5], v5);
  a2[9] = vsubq_s16(a1[9], v5);
  result = vsubq_s16(a1[13], v5);
  a2[13] = result;
  return result;
}

uint64_t sub_277BA7928(uint64_t result, int16x8_t *a2)
{
  v2 = 0;
  v3 = 1;
  v4 = 0uLL;
  do
  {
    v5 = v3;
    v6 = (result + v2);
    v4 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v4, vaddq_s16(v6[1], *v6)), vaddq_s16(v6[5], v6[4])), vaddq_s16(v6[9], v6[8])), vaddq_s16(v6[13], v6[12]));
    v2 = 256;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  v7 = 0;
  v8 = vpaddq_s32(v4, v4);
  v9 = vpaddq_s32(v8, v8);
  v10 = vqrshrn_high_n_u32(vqrshrn_n_u32(v9, 7uLL), v9, 7uLL);
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = (result + v7);
    *a2 = vsubq_s16(*v13, v10);
    a2[4] = vsubq_s16(v13[4], v10);
    a2[8] = vsubq_s16(v13[8], v10);
    a2[12] = vsubq_s16(v13[12], v10);
    a2[1] = vsubq_s16(v13[1], v10);
    a2[5] = vsubq_s16(v13[5], v10);
    a2[9] = vsubq_s16(v13[9], v10);
    a2[13] = vsubq_s16(v13[13], v10);
    a2 += 16;
    v7 = 256;
    v11 = 0;
  }

  while ((v12 & 1) != 0);
  return result;
}

int16x8_t *sub_277BA7A0C(int16x8_t *result, int16x8_t *a2)
{
  v2 = result + 8;
  v3 = 0uLL;
  v4 = 208;
  do
  {
    v3 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v3, vaddq_s16(v2[-7], v2[-8])), vaddq_s16(v2[-3], v2[-4])), vaddq_s16(v2[1], *v2)), vaddq_s16(v2[5], v2[4]));
    v5 = v4 - 208;
    v4 += 256;
    v2 += 16;
  }

  while (v5 < 0x300);
  v6 = vpaddq_s32(v3, v3);
  v7 = vpaddq_s32(v6, v6);
  v8 = vqrshrn_high_n_u32(vqrshrn_n_u32(v7, 8uLL), v7, 8uLL);
  v9 = result + 8;
  v10 = 208;
  do
  {
    *a2 = vsubq_s16(v9[-8], v8);
    a2[4] = vsubq_s16(v9[-4], v8);
    a2[8] = vsubq_s16(*v9, v8);
    a2[12] = vsubq_s16(v9[4], v8);
    a2[1] = vsubq_s16(v9[-7], v8);
    a2[5] = vsubq_s16(v9[-3], v8);
    a2[9] = vsubq_s16(v9[1], v8);
    a2[13] = vsubq_s16(v9[5], v8);
    a2 += 16;
    v11 = v10 - 208;
    v10 += 256;
    v9 += 16;
  }

  while (v11 < 0x300);
  return result;
}

int16x8_t *sub_277BA7AF0(int16x8_t *result, int16x8_t *a2)
{
  v2 = result + 8;
  v3 = 0uLL;
  v4 = 208;
  do
  {
    v3 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v3, vaddq_s16(v2[-7], v2[-8])), vaddq_s16(v2[-3], v2[-4])), vaddq_s16(v2[1], *v2)), vaddq_s16(v2[5], v2[4]));
    v5 = v4 - 208;
    v4 += 256;
    v2 += 16;
  }

  while (v5 < 0x700);
  v6 = vpaddq_s32(v3, v3);
  v7 = vpaddq_s32(v6, v6);
  v8 = vqrshrn_high_n_u32(vqrshrn_n_u32(v7, 9uLL), v7, 9uLL);
  v9 = result + 8;
  v10 = 208;
  do
  {
    *a2 = vsubq_s16(v9[-8], v8);
    a2[4] = vsubq_s16(v9[-4], v8);
    a2[8] = vsubq_s16(*v9, v8);
    a2[12] = vsubq_s16(v9[4], v8);
    a2[1] = vsubq_s16(v9[-7], v8);
    a2[5] = vsubq_s16(v9[-3], v8);
    a2[9] = vsubq_s16(v9[1], v8);
    a2[13] = vsubq_s16(v9[5], v8);
    a2 += 16;
    v11 = v10 - 208;
    v10 += 256;
    v9 += 16;
  }

  while (v11 < 0x700);
  return result;
}

uint64_t sub_277BA7BD4(uint64_t result, int16x8_t *a2)
{
  v2 = 0;
  v3 = 1;
  v4 = 0uLL;
  do
  {
    v5 = v3;
    v6 = (result + v2);
    v4 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v4, vaddq_s16(v6[1], *v6)), vaddq_s16(v6[5], v6[4])), vaddq_s16(v6[9], v6[8])), vaddq_s16(v6[13], v6[12])), vaddq_s16(v6[3], v6[2])), vaddq_s16(v6[7], v6[6])), vaddq_s16(v6[11], v6[10])), vaddq_s16(v6[15], v6[14]));
    v2 = 256;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  v7 = 0;
  v8 = vpaddq_s32(v4, v4);
  v9 = vpaddq_s32(v8, v8);
  v10 = vqrshrn_high_n_u32(vqrshrn_n_u32(v9, 8uLL), v9, 8uLL);
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = (result + v7);
    *a2 = vsubq_s16(*v13, v10);
    a2[4] = vsubq_s16(v13[4], v10);
    a2[8] = vsubq_s16(v13[8], v10);
    a2[12] = vsubq_s16(v13[12], v10);
    a2[1] = vsubq_s16(v13[1], v10);
    a2[5] = vsubq_s16(v13[5], v10);
    a2[9] = vsubq_s16(v13[9], v10);
    a2[13] = vsubq_s16(v13[13], v10);
    a2[2] = vsubq_s16(v13[2], v10);
    a2[6] = vsubq_s16(v13[6], v10);
    a2[10] = vsubq_s16(v13[10], v10);
    a2[14] = vsubq_s16(v13[14], v10);
    a2[3] = vsubq_s16(v13[3], v10);
    a2[7] = vsubq_s16(v13[7], v10);
    a2[11] = vsubq_s16(v13[11], v10);
    a2[15] = vsubq_s16(v13[15], v10);
    a2 += 16;
    v7 = 256;
    v11 = 0;
  }

  while ((v12 & 1) != 0);
  return result;
}

int16x8_t *sub_277BA7D48(int16x8_t *result, int16x8_t *a2)
{
  v2 = result + 8;
  v3 = 0uLL;
  v4 = 240;
  do
  {
    v3 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v3, vaddq_s16(v2[-7], v2[-8])), vaddq_s16(v2[-3], v2[-4])), vaddq_s16(v2[1], *v2)), vaddq_s16(v2[5], v2[4])), vaddq_s16(v2[-5], v2[-6])), vaddq_s16(v2[-1], v2[-2])), vaddq_s16(v2[3], v2[2])), vaddq_s16(v2[7], v2[6]));
    v5 = v4 - 240;
    v4 += 256;
    v2 += 16;
  }

  while (v5 < 0x300);
  v6 = vpaddq_s32(v3, v3);
  v7 = vpaddq_s32(v6, v6);
  v8 = vqrshrn_high_n_u32(vqrshrn_n_u32(v7, 9uLL), v7, 9uLL);
  v9 = result + 8;
  v10 = 240;
  do
  {
    *a2 = vsubq_s16(v9[-8], v8);
    a2[4] = vsubq_s16(v9[-4], v8);
    a2[8] = vsubq_s16(*v9, v8);
    a2[12] = vsubq_s16(v9[4], v8);
    a2[1] = vsubq_s16(v9[-7], v8);
    a2[5] = vsubq_s16(v9[-3], v8);
    a2[9] = vsubq_s16(v9[1], v8);
    a2[13] = vsubq_s16(v9[5], v8);
    a2[2] = vsubq_s16(v9[-6], v8);
    a2[6] = vsubq_s16(v9[-2], v8);
    a2[10] = vsubq_s16(v9[2], v8);
    a2[14] = vsubq_s16(v9[6], v8);
    a2[3] = vsubq_s16(v9[-5], v8);
    a2[7] = vsubq_s16(v9[-1], v8);
    a2[11] = vsubq_s16(v9[3], v8);
    a2[15] = vsubq_s16(v9[7], v8);
    a2 += 16;
    v11 = v10 - 240;
    v10 += 256;
    v9 += 16;
  }

  while (v11 < 0x300);
  return result;
}

int16x8_t *sub_277BA7EBC(int16x8_t *result, int16x8_t *a2)
{
  v2 = result + 8;
  v3 = 0uLL;
  v4 = 240;
  do
  {
    v3 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v3, vaddq_s16(v2[-7], v2[-8])), vaddq_s16(v2[-3], v2[-4])), vaddq_s16(v2[1], *v2)), vaddq_s16(v2[5], v2[4])), vaddq_s16(v2[-5], v2[-6])), vaddq_s16(v2[-1], v2[-2])), vaddq_s16(v2[3], v2[2])), vaddq_s16(v2[7], v2[6]));
    v5 = v4 - 240;
    v4 += 256;
    v2 += 16;
  }

  while (v5 < 0x700);
  v6 = vpaddq_s32(v3, v3);
  v7 = vpaddq_s32(v6, v6);
  v8 = vqrshrn_high_n_u32(vqrshrn_n_u32(v7, 0xAuLL), v7, 0xAuLL);
  v9 = result + 8;
  v10 = 240;
  do
  {
    *a2 = vsubq_s16(v9[-8], v8);
    a2[4] = vsubq_s16(v9[-4], v8);
    a2[8] = vsubq_s16(*v9, v8);
    a2[12] = vsubq_s16(v9[4], v8);
    a2[1] = vsubq_s16(v9[-7], v8);
    a2[5] = vsubq_s16(v9[-3], v8);
    a2[9] = vsubq_s16(v9[1], v8);
    a2[13] = vsubq_s16(v9[5], v8);
    a2[2] = vsubq_s16(v9[-6], v8);
    a2[6] = vsubq_s16(v9[-2], v8);
    a2[10] = vsubq_s16(v9[2], v8);
    a2[14] = vsubq_s16(v9[6], v8);
    a2[3] = vsubq_s16(v9[-5], v8);
    a2[7] = vsubq_s16(v9[-1], v8);
    a2[11] = vsubq_s16(v9[3], v8);
    a2[15] = vsubq_s16(v9[7], v8);
    a2 += 16;
    v11 = v10 - 240;
    v10 += 256;
    v9 += 16;
  }

  while (v11 < 0x700);
  return result;
}

uint64_t sub_277BA8030(uint64_t result, _DWORD *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7, int16x8_t a8)
{
  v8 = 0;
  if (a4 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = -a4;
  }

  v10 = vdup_n_s16(a4);
  v11 = vdup_n_s16(*a2);
  do
  {
    a8.i64[0] = *(result + v8);
    v12 = veor_s8(*a8.i8, v10);
    a7.i32[0] = v9 << 9;
    *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_lane_s16(vabs_s16(*a8.i8), a7, 0), v12, 0xFuLL), vcltz_s16(v12)), v11);
    *a2 = vqmovun_s16(a8).u32[0];
    a2 = (a2 + a3);
    v13 = v8 >= 0xC0;
    v8 += 64;
  }

  while (!v13);
  return result;
}

uint64_t sub_277BA8094(uint64_t result, _DWORD *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7, int16x8_t a8)
{
  v8 = 0;
  if (a4 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = -a4;
  }

  v10 = vdup_n_s16(a4);
  v11 = vdup_n_s16(*a2);
  do
  {
    a8.i64[0] = *(result + v8);
    v12 = veor_s8(*a8.i8, v10);
    a7.i32[0] = v9 << 9;
    *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_lane_s16(vabs_s16(*a8.i8), a7, 0), v12, 0xFuLL), vcltz_s16(v12)), v11);
    *a2 = vqmovun_s16(a8).u32[0];
    a2 = (a2 + a3);
    v13 = v8 >= 0x1C0;
    v8 += 64;
  }

  while (!v13);
  return result;
}

uint64_t sub_277BA80F8(uint64_t result, _DWORD *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7, int16x8_t a8)
{
  v8 = 0;
  if (a4 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = -a4;
  }

  v10 = vdup_n_s16(a4);
  v11 = vdup_n_s16(*a2);
  do
  {
    a8.i64[0] = *(result + v8);
    v12 = veor_s8(*a8.i8, v10);
    a7.i32[0] = v9 << 9;
    *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_lane_s16(vabs_s16(*a8.i8), a7, 0), v12, 0xFuLL), vcltz_s16(v12)), v11);
    *a2 = vqmovun_s16(a8).u32[0];
    a2 = (a2 + a3);
    v13 = v8 >= 0x3C0;
    v8 += 64;
  }

  while (!v13);
  return result;
}

uint64_t sub_277BA815C(uint64_t result, int8x8_t *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(a2->u8[0]);
  do
  {
    v11 = *(result + v7);
    v12 = veorq_s8(v11, v9);
    a7.i32[0] = v8 << 9;
    *a2 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v11), a7, 0), v12, 0xFuLL), vcltzq_s16(v12)), v10));
    a2 = (a2 + a3);
    v13 = v7 >= 0xC0;
    v7 += 64;
  }

  while (!v13);
  return result;
}

uint64_t sub_277BA81C0(uint64_t result, int8x8_t *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(a2->u8[0]);
  do
  {
    v11 = *(result + v7);
    v12 = veorq_s8(v11, v9);
    a7.i32[0] = v8 << 9;
    *a2 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v11), a7, 0), v12, 0xFuLL), vcltzq_s16(v12)), v10));
    a2 = (a2 + a3);
    v13 = v7 >= 0x1C0;
    v7 += 64;
  }

  while (!v13);
  return result;
}

uint64_t sub_277BA8224(uint64_t result, int8x8_t *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(a2->u8[0]);
  do
  {
    v11 = *(result + v7);
    v12 = veorq_s8(v11, v9);
    a7.i32[0] = v8 << 9;
    *a2 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v11), a7, 0), v12, 0xFuLL), vcltzq_s16(v12)), v10));
    a2 = (a2 + a3);
    v13 = v7 >= 0x3C0;
    v7 += 64;
  }

  while (!v13);
  return result;
}

uint64_t sub_277BA8288(uint64_t result, int8x8_t *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(a2->u8[0]);
  do
  {
    v11 = *(result + v7);
    v12 = veorq_s8(v11, v9);
    a7.i32[0] = v8 << 9;
    *a2 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v11), a7, 0), v12, 0xFuLL), vcltzq_s16(v12)), v10));
    a2 = (a2 + a3);
    v13 = v7 >= 0x7C0;
    v7 += 64;
  }

  while (!v13);
  return result;
}

uint64_t sub_277BA82EC(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v16 = vld2q_s16(v11);
    v12 = veorq_s8(v16.val[0], v9);
    v13 = veorq_s8(v16.val[1], v9);
    v14 = vqrdmulhq_lane_s16(vabsq_s16(v16.val[0]), a7, 0);
    v16.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v16.val[1]), a7, 0);
    *v16.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v14, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v12.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16.val[0], v13, 0xFuLL), vcltzq_s16(v13)), v10));
    vst2_s8(a2, v16.val[1]);
    a2 += a3;
    v15 = v7 >= 0xC0;
    v7 += 64;
  }

  while (!v15);
  return result;
}

uint64_t sub_277BA8370(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v16 = vld2q_s16(v11);
    v12 = veorq_s8(v16.val[0], v9);
    v13 = veorq_s8(v16.val[1], v9);
    v14 = vqrdmulhq_lane_s16(vabsq_s16(v16.val[0]), a7, 0);
    v16.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v16.val[1]), a7, 0);
    *v16.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v14, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v12.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16.val[0], v13, 0xFuLL), vcltzq_s16(v13)), v10));
    vst2_s8(a2, v16.val[1]);
    a2 += a3;
    v15 = v7 >= 0x1C0;
    v7 += 64;
  }

  while (!v15);
  return result;
}

uint64_t sub_277BA83F4(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v16 = vld2q_s16(v11);
    v12 = veorq_s8(v16.val[0], v9);
    v13 = veorq_s8(v16.val[1], v9);
    v14 = vqrdmulhq_lane_s16(vabsq_s16(v16.val[0]), a7, 0);
    v16.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v16.val[1]), a7, 0);
    *v16.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v14, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v12.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16.val[0], v13, 0xFuLL), vcltzq_s16(v13)), v10));
    vst2_s8(a2, v16.val[1]);
    a2 += a3;
    v15 = v7 >= 0x3C0;
    v7 += 64;
  }

  while (!v15);
  return result;
}

uint64_t sub_277BA8478(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v16 = vld2q_s16(v11);
    v12 = veorq_s8(v16.val[0], v9);
    v13 = veorq_s8(v16.val[1], v9);
    v14 = vqrdmulhq_lane_s16(vabsq_s16(v16.val[0]), a7, 0);
    v16.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v16.val[1]), a7, 0);
    *v16.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v14, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v12.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16.val[0], v13, 0xFuLL), vcltzq_s16(v13)), v10));
    vst2_s8(a2, v16.val[1]);
    a2 += a3;
    v15 = v7 >= 0x7C0;
    v7 += 64;
  }

  while (!v15);
  return result;
}

uint64_t sub_277BA84FC(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v19 = vld4q_s16(v11);
    v12 = veorq_s8(v19.val[0], v9);
    v13 = veorq_s8(v19.val[1], v9);
    v14 = veorq_s8(v19.val[2], v9);
    v15 = veorq_s8(v19.val[3], v9);
    v16 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[0]), a7, 0);
    v17 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[2]), a7, 0);
    v19.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v19.val[3]), a7, 0);
    v19.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v19.val[1]), a7, 0), v13, 0xFuLL), vcltzq_s16(v13)), v10);
    v19.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v17, v14, 0xFuLL), vcltzq_s16(v14)), v10);
    v19.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v19.val[0], v15, 0xFuLL), vcltzq_s16(v15)), v10);
    *v13.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v14.i8 = vqmovun_s16(v19.val[2]);
    *v15.i8 = vqmovun_s16(v19.val[3]);
    *v16.i8 = vqmovun_s16(v19.val[0]);
    vst4_s8(a2, *v13.i8);
    a2 += a3;
    v18 = v7 >= 0x1C0;
    v7 += 64;
  }

  while (!v18);
  return result;
}

uint64_t sub_277BA85C0(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v19 = vld4q_s16(v11);
    v12 = veorq_s8(v19.val[0], v9);
    v13 = veorq_s8(v19.val[1], v9);
    v14 = veorq_s8(v19.val[2], v9);
    v15 = veorq_s8(v19.val[3], v9);
    v16 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[0]), a7, 0);
    v17 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[2]), a7, 0);
    v19.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v19.val[3]), a7, 0);
    v19.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v19.val[1]), a7, 0), v13, 0xFuLL), vcltzq_s16(v13)), v10);
    v19.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v17, v14, 0xFuLL), vcltzq_s16(v14)), v10);
    v19.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v19.val[0], v15, 0xFuLL), vcltzq_s16(v15)), v10);
    *v13.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v14.i8 = vqmovun_s16(v19.val[2]);
    *v15.i8 = vqmovun_s16(v19.val[3]);
    *v16.i8 = vqmovun_s16(v19.val[0]);
    vst4_s8(a2, *v13.i8);
    a2 += a3;
    v18 = v7 >= 0x3C0;
    v7 += 64;
  }

  while (!v18);
  return result;
}

uint64_t sub_277BA8684(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v19 = vld4q_s16(v11);
    v12 = veorq_s8(v19.val[0], v9);
    v13 = veorq_s8(v19.val[1], v9);
    v14 = veorq_s8(v19.val[2], v9);
    v15 = veorq_s8(v19.val[3], v9);
    v16 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[0]), a7, 0);
    v17 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[2]), a7, 0);
    v19.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v19.val[3]), a7, 0);
    v19.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v19.val[1]), a7, 0), v13, 0xFuLL), vcltzq_s16(v13)), v10);
    v19.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v17, v14, 0xFuLL), vcltzq_s16(v14)), v10);
    v19.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v19.val[0], v15, 0xFuLL), vcltzq_s16(v15)), v10);
    *v13.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v14.i8 = vqmovun_s16(v19.val[2]);
    *v15.i8 = vqmovun_s16(v19.val[3]);
    *v16.i8 = vqmovun_s16(v19.val[0]);
    vst4_s8(a2, *v13.i8);
    a2 += a3;
    v18 = v7 >= 0x7C0;
    v7 += 64;
  }

  while (!v18);
  return result;
}

uint64_t sub_277BA8748(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdup_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1_dup_s16(a2);
  v13 = vdup_n_s16(~(-1 << a5));
  do
  {
    v14 = *(result + v9);
    v15 = veor_s8(v14, v10);
    a9.i32[0] = v11 << 9;
    *a2 = vmax_s16(vmin_s16(vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_lane_s16(vabs_s16(v14), a9, 0), v15, 0xFuLL), vcltz_s16(v15)), v12), v13), 0);
    a2 += a3;
    v16 = v9 >= 0xC0;
    v9 += 64;
  }

  while (!v16);
  return result;
}

uint64_t sub_277BA87C0(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdup_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1_dup_s16(a2);
  v13 = vdup_n_s16(~(-1 << a5));
  do
  {
    v14 = *(result + v9);
    v15 = veor_s8(v14, v10);
    a9.i32[0] = v11 << 9;
    *a2 = vmax_s16(vmin_s16(vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_lane_s16(vabs_s16(v14), a9, 0), v15, 0xFuLL), vcltz_s16(v15)), v12), v13), 0);
    a2 += a3;
    v16 = v9 >= 0x1C0;
    v9 += 64;
  }

  while (!v16);
  return result;
}

uint64_t sub_277BA8838(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdup_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1_dup_s16(a2);
  v13 = vdup_n_s16(~(-1 << a5));
  do
  {
    v14 = *(result + v9);
    v15 = veor_s8(v14, v10);
    a9.i32[0] = v11 << 9;
    *a2 = vmax_s16(vmin_s16(vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_lane_s16(vabs_s16(v14), a9, 0), v15, 0xFuLL), vcltz_s16(v15)), v12), v13), 0);
    a2 += a3;
    v16 = v9 >= 0x3C0;
    v9 += 64;
  }

  while (!v16);
  return result;
}

uint64_t sub_277BA88B0(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  do
  {
    v14 = *(result + v9);
    v15 = veorq_s8(v14, v10);
    a9.i32[0] = v11 << 9;
    *a2 = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v14), a9, 0), v15, 0xFuLL), vcltzq_s16(v15)), v12), v13), 0);
    a2 += a3;
    v16 = v9 >= 0xC0;
    v9 += 64;
  }

  while (!v16);
  return result;
}

uint64_t sub_277BA8928(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  do
  {
    v14 = *(result + v9);
    v15 = veorq_s8(v14, v10);
    a9.i32[0] = v11 << 9;
    *a2 = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v14), a9, 0), v15, 0xFuLL), vcltzq_s16(v15)), v12), v13), 0);
    a2 += a3;
    v16 = v9 >= 0x1C0;
    v9 += 64;
  }

  while (!v16);
  return result;
}

uint64_t sub_277BA89A0(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  do
  {
    v14 = *(result + v9);
    v15 = veorq_s8(v14, v10);
    a9.i32[0] = v11 << 9;
    *a2 = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v14), a9, 0), v15, 0xFuLL), vcltzq_s16(v15)), v12), v13), 0);
    a2 += a3;
    v16 = v9 >= 0x3C0;
    v9 += 64;
  }

  while (!v16);
  return result;
}

uint64_t sub_277BA8A18(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  do
  {
    v14 = *(result + v9);
    v15 = veorq_s8(v14, v10);
    a9.i32[0] = v11 << 9;
    *a2 = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v14), a9, 0), v15, 0xFuLL), vcltzq_s16(v15)), v12), v13), 0);
    a2 += a3;
    v16 = v9 >= 0x7C0;
    v9 += 64;
  }

  while (!v16);
  return result;
}

uint64_t sub_277BA8A90(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  a9.i32[0] = v11 << 9;
  do
  {
    v15 = (result + v9);
    v21 = vld2q_s16(v15);
    v16 = veorq_s8(v21.val[0], v10);
    v17 = veorq_s8(v21.val[1], v10);
    v18 = vqrdmulhq_lane_s16(vabsq_s16(v21.val[0]), a9, 0);
    v21.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v21.val[1]), a9, 0);
    v21.val[1] = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v18, v16, 0xFuLL), vcltzq_s16(v16)), v12), v13), 0);
    v19 = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v21.val[0], v17, 0xFuLL), vcltzq_s16(v17)), v12), v13), 0);
    vst2q_s16(a2, *(&v21 + 16));
    v14 = 2 * a3;
    a2 = (a2 + v14);
    v20 = v9 >= 0xC0;
    v9 += 64;
  }

  while (!v20);
  return result;
}

uint64_t sub_277BA8B2C(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  a9.i32[0] = v11 << 9;
  do
  {
    v15 = (result + v9);
    v21 = vld2q_s16(v15);
    v16 = veorq_s8(v21.val[0], v10);
    v17 = veorq_s8(v21.val[1], v10);
    v18 = vqrdmulhq_lane_s16(vabsq_s16(v21.val[0]), a9, 0);
    v21.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v21.val[1]), a9, 0);
    v21.val[1] = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v18, v16, 0xFuLL), vcltzq_s16(v16)), v12), v13), 0);
    v19 = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v21.val[0], v17, 0xFuLL), vcltzq_s16(v17)), v12), v13), 0);
    vst2q_s16(a2, *(&v21 + 16));
    v14 = 2 * a3;
    a2 = (a2 + v14);
    v20 = v9 >= 0x1C0;
    v9 += 64;
  }

  while (!v20);
  return result;
}

uint64_t sub_277BA8BC8(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  a9.i32[0] = v11 << 9;
  do
  {
    v15 = (result + v9);
    v21 = vld2q_s16(v15);
    v16 = veorq_s8(v21.val[0], v10);
    v17 = veorq_s8(v21.val[1], v10);
    v18 = vqrdmulhq_lane_s16(vabsq_s16(v21.val[0]), a9, 0);
    v21.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v21.val[1]), a9, 0);
    v21.val[1] = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v18, v16, 0xFuLL), vcltzq_s16(v16)), v12), v13), 0);
    v19 = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v21.val[0], v17, 0xFuLL), vcltzq_s16(v17)), v12), v13), 0);
    vst2q_s16(a2, *(&v21 + 16));
    v14 = 2 * a3;
    a2 = (a2 + v14);
    v20 = v9 >= 0x3C0;
    v9 += 64;
  }

  while (!v20);
  return result;
}

uint64_t sub_277BA8C64(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  a9.i32[0] = v11 << 9;
  do
  {
    v15 = (result + v9);
    v21 = vld2q_s16(v15);
    v16 = veorq_s8(v21.val[0], v10);
    v17 = veorq_s8(v21.val[1], v10);
    v18 = vqrdmulhq_lane_s16(vabsq_s16(v21.val[0]), a9, 0);
    v21.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v21.val[1]), a9, 0);
    v21.val[1] = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v18, v16, 0xFuLL), vcltzq_s16(v16)), v12), v13), 0);
    v19 = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v21.val[0], v17, 0xFuLL), vcltzq_s16(v17)), v12), v13), 0);
    vst2q_s16(a2, *(&v21 + 16));
    v14 = 2 * a3;
    a2 = (a2 + v14);
    v20 = v9 >= 0x7C0;
    v9 += 64;
  }

  while (!v20);
  return result;
}

uint64_t sub_277BA8D00(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  a9.i32[0] = v11 << 9;
  do
  {
    v15 = (result + v9);
    v25 = vld4q_s16(v15);
    v16 = veorq_s8(v25.val[0], v10);
    v17 = veorq_s8(v25.val[1], v10);
    v18 = veorq_s8(v25.val[2], v10);
    v19 = veorq_s8(v25.val[3], v10);
    v20 = vqrdmulhq_lane_s16(vabsq_s16(v25.val[0]), a9, 0);
    v21 = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v25.val[1]), a9, 0), v17, 0xFuLL), vcltzq_s16(v17)), v12);
    v22 = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v25.val[2]), a9, 0), v18, 0xFuLL), vcltzq_s16(v18)), v12);
    v25.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v25.val[3]), a9, 0), v19, 0xFuLL), vcltzq_s16(v19)), v12);
    v25.val[1] = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v20, v16, 0xFuLL), vcltzq_s16(v16)), v12), v13), 0);
    v25.val[2] = vmaxq_s16(vminq_s16(v21, v13), 0);
    v25.val[3] = vmaxq_s16(vminq_s16(v22, v13), 0);
    v23 = vmaxq_s16(vminq_s16(v25.val[0], v13), 0);
    vst4q_s16(a2, *(&v25 + 16));
    v14 = 2 * a3;
    a2 = (a2 + v14);
    v24 = v9 >= 0x1C0;
    v9 += 64;
  }

  while (!v24);
  return result;
}

uint64_t sub_277BA8DE4(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  a9.i32[0] = v11 << 9;
  do
  {
    v15 = (result + v9);
    v25 = vld4q_s16(v15);
    v16 = veorq_s8(v25.val[0], v10);
    v17 = veorq_s8(v25.val[1], v10);
    v18 = veorq_s8(v25.val[2], v10);
    v19 = veorq_s8(v25.val[3], v10);
    v20 = vqrdmulhq_lane_s16(vabsq_s16(v25.val[0]), a9, 0);
    v21 = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v25.val[1]), a9, 0), v17, 0xFuLL), vcltzq_s16(v17)), v12);
    v22 = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v25.val[2]), a9, 0), v18, 0xFuLL), vcltzq_s16(v18)), v12);
    v25.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v25.val[3]), a9, 0), v19, 0xFuLL), vcltzq_s16(v19)), v12);
    v25.val[1] = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v20, v16, 0xFuLL), vcltzq_s16(v16)), v12), v13), 0);
    v25.val[2] = vmaxq_s16(vminq_s16(v21, v13), 0);
    v25.val[3] = vmaxq_s16(vminq_s16(v22, v13), 0);
    v23 = vmaxq_s16(vminq_s16(v25.val[0], v13), 0);
    vst4q_s16(a2, *(&v25 + 16));
    v14 = 2 * a3;
    a2 = (a2 + v14);
    v24 = v9 >= 0x3C0;
    v9 += 64;
  }

  while (!v24);
  return result;
}

uint64_t sub_277BA8EC8(uint64_t result, __int16 *a2, int a3, signed int a4, char a5, double a6, double a7, double a8, int16x4_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s16(a4);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  v12 = vld1q_dup_s16(a2);
  v13 = vdupq_n_s16(~(-1 << a5));
  a9.i32[0] = v11 << 9;
  do
  {
    v15 = (result + v9);
    v25 = vld4q_s16(v15);
    v16 = veorq_s8(v25.val[0], v10);
    v17 = veorq_s8(v25.val[1], v10);
    v18 = veorq_s8(v25.val[2], v10);
    v19 = veorq_s8(v25.val[3], v10);
    v20 = vqrdmulhq_lane_s16(vabsq_s16(v25.val[0]), a9, 0);
    v21 = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v25.val[1]), a9, 0), v17, 0xFuLL), vcltzq_s16(v17)), v12);
    v22 = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v25.val[2]), a9, 0), v18, 0xFuLL), vcltzq_s16(v18)), v12);
    v25.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v25.val[3]), a9, 0), v19, 0xFuLL), vcltzq_s16(v19)), v12);
    v25.val[1] = vmaxq_s16(vminq_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v20, v16, 0xFuLL), vcltzq_s16(v16)), v12), v13), 0);
    v25.val[2] = vmaxq_s16(vminq_s16(v21, v13), 0);
    v25.val[3] = vmaxq_s16(vminq_s16(v22, v13), 0);
    v23 = vmaxq_s16(vminq_s16(v25.val[0], v13), 0);
    vst4q_s16(a2, *(&v25 + 16));
    v14 = 2 * a3;
    a2 = (a2 + v14);
    v24 = v9 >= 0x7C0;
    v9 += 64;
  }

  while (!v24);
  return result;
}

int *sub_277BA8FAC(int *result, int *a2, int a3, uint64_t a4)
{
  v4 = *result;
  *a2 = *result;
  v5 = result[2];
  a2[1] = v5;
  v6 = result[1];
  a2[2] = v6;
  v7 = result[3];
  a2[3] = v7;
  v8 = dword_277C42240[64 * a3 - 608];
  v9 = 1 << (a3 - 1);
  v10 = v9 + v4 * v8;
  v11 = (v10 + v5 * v8) >> a3;
  v12 = (v10 + -(v5 * v8)) >> a3;
  v13 = dword_277C42240[64 * a3 - 592];
  v14 = dword_277C42240[64 * a3 - 624];
  v15 = (v9 + v6 * v13 + -(v14 * v7)) >> a3;
  v16 = (v9 + v14 * v6 + v7 * v13) >> a3;
  v17 = v11 + v16;
  v18 = *(a4 + 3);
  v19 = 1 << (v18 - 1);
  v20 = v19 - 1;
  v21 = -v19;
  if (v11 + v16 < v20)
  {
    LODWORD(v20) = v11 + v16;
  }

  if (v17 >= v21)
  {
    LODWORD(v21) = v20;
  }

  if (v18 >= 1)
  {
    v17 = v21;
  }

  *a2 = v17;
  v22 = v15 + v12;
  v23 = *(a4 + 3);
  v24 = 1 << (v23 - 1);
  v25 = v24 - 1;
  v26 = -v24;
  if (v15 + v12 < v25)
  {
    LODWORD(v25) = v15 + v12;
  }

  if (v22 >= v26)
  {
    LODWORD(v26) = v25;
  }

  if (v23 >= 1)
  {
    v22 = v26;
  }

  a2[1] = v22;
  v27 = v12 - v15;
  v28 = *(a4 + 3);
  v29 = 1 << (v28 - 1);
  v30 = v29 - 1;
  v31 = -v29;
  if (v27 < v30)
  {
    LODWORD(v30) = v27;
  }

  if (v27 >= v31)
  {
    LODWORD(v31) = v30;
  }

  if (v28 >= 1)
  {
    v27 = v31;
  }

  a2[2] = v27;
  v32 = v11 - v16;
  v33 = *(a4 + 3);
  v34 = 1 << (v33 - 1);
  v35 = v34 - 1;
  v36 = -v34;
  if (v32 < v35)
  {
    LODWORD(v35) = v32;
  }

  if (v32 >= v36)
  {
    LODWORD(v36) = v35;
  }

  if (v33 >= 1)
  {
    v32 = v36;
  }

  a2[3] = v32;
  return result;
}

uint64_t sub_277BA9138(_DWORD *a1, _DWORD *a2, unsigned int a3, char *a4, double a5, double a6, int32x4_t a7)
{
  *a2 = *a1;
  a2[1] = a1[4];
  a2[2] = a1[2];
  a2[3] = a1[6];
  a2[4] = a1[1];
  a2[5] = a1[5];
  a2[6] = a1[3];
  a2[7] = a1[7];
  v7 = 1 << (a3 - 1);
  v8 = a3;
  a7.i64[0] = *(a2 + 2);
  v9 = *(a2 + 6);
  v10.i32[0] = dword_277C42240[64 * a3 - 616];
  v10.i32[1] = dword_277C42240[64 * a3 - 584];
  v11.i64[0] = __PAIR64__(v10.u32[0], v10.u32[1]);
  v11.i32[2] = dword_277C42240[64 * a3 - 600];
  v12.i32[0] = v11.i32[2];
  v12.i32[1] = dword_277C42240[64 * a3 - 632];
  v11.i32[3] = v12.i32[1];
  v13 = vmulq_s32(v11, vzip1q_s32(a7, vrev64q_s32(a7)));
  *v11.i8 = vrev64_s32(vneg_s32(vmul_s32(v12, v9)));
  v14 = vmul_s32(v9, v10);
  v15 = vdupq_n_s64(v7);
  v16 = vaddw_high_s32(v15, v13);
  v17 = vaddw_s32(vaddw_s32(v15, *v13.i8), *v11.i8);
  v18 = vnegq_s64(vdupq_n_s64(a3));
  v19 = vshlq_s64(v17, v18);
  v20 = vuzp1q_s32(v19, vshlq_s64(vaddw_s32(v16, v14), v18));
  v21 = vmovn_s64(v19);
  v22 = dword_277C42240[64 * a3 - 608];
  v23 = HIDWORD(*a2);
  v24 = *(a2 + 1);
  v25 = HIDWORD(*a2);
  v26 = v7 + (*a2 * v22);
  v27 = (v26 + v23 * v22) >> a3;
  *a2 = v27;
  a2[1] = (v26 + -(v22 * v23)) >> a3;
  v28 = dword_277C42240[64 * a3 - 592];
  v29 = dword_277C42240[64 * a3 - 624];
  v30 = (v7 + v24 * v28 + -(v29 * v25)) >> a3;
  v31 = (v7 + v29 * v24 + v25 * v28) >> a3;
  a2[2] = v30;
  a2[3] = v31;
  v32 = v21.i32[1] + v21.i32[0];
  v33 = a4[3];
  v34 = 1 << (v33 - 1);
  v35 = v34 - 1;
  v36 = -v34;
  if (v21.i32[1] + v21.i32[0] < v35)
  {
    LODWORD(v35) = v21.i32[1] + v21.i32[0];
  }

  if (v32 >= v36)
  {
    LODWORD(v36) = v35;
  }

  if (v33 >= 1)
  {
    v32 = v36;
  }

  a2[4] = v32;
  v37 = a4[3];
  v38 = 1 << (v37 - 1);
  v39 = v38 - 1;
  v40 = -v38;
  if (v21.i32[0] - v21.i32[1] < v39)
  {
    LODWORD(v39) = v21.i32[0] - v21.i32[1];
  }

  if (v21.i32[0] - v21.i32[1] >= v40)
  {
    LODWORD(v40) = v39;
  }

  if (v37 < 1)
  {
    LODWORD(v40) = v21.i32[0] - v21.i32[1];
  }

  a2[5] = v40;
  v41 = v20.i32[3] - v20.i32[2];
  v42 = a4[3];
  v43 = 1 << (v42 - 1);
  v44 = v43 - 1;
  v45 = -v43;
  if (v20.i32[3] - v20.i32[2] < v44)
  {
    LODWORD(v44) = v20.i32[3] - v20.i32[2];
  }

  if (v41 >= v45)
  {
    LODWORD(v45) = v44;
  }

  if (v42 >= 1)
  {
    v41 = v45;
  }

  a2[6] = v41;
  v46 = v20.i32[3] + v20.i32[2];
  v47 = a4[3];
  v48 = 1 << (v47 - 1);
  v49 = v48 - 1;
  v50 = -v48;
  if (v20.i32[3] + v20.i32[2] < v49)
  {
    LODWORD(v49) = v20.i32[3] + v20.i32[2];
  }

  if (v46 >= v50)
  {
    LODWORD(v50) = v49;
  }

  if (v47 >= 1)
  {
    v46 = v50;
  }

  a2[7] = v46;
  v51 = v31 + v27;
  v52 = a4[4];
  if (v52 <= 0)
  {
    v68 = *(a2 + 1);
    v69 = vrev64_s32(v68);
    v64.i32[0] = vadd_s32(v69, v68).u32[0];
    v64.i32[1] = vsub_s32(v69, v68).i32[1];
    v67 = v27 - v31;
  }

  else
  {
    v53 = 1 << (v52 - 1);
    v54 = v53 - 1;
    v55 = -v53;
    if (v51 >= v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = v31 + v27;
    }

    if (v51 >= v55)
    {
      v51 = v56;
    }

    else
    {
      v51 = v55;
    }

    v57 = *(a2 + 1);
    v58 = vrev64_s32(v57);
    v59 = vadd_s32(v58, v57).u32[0];
    v60 = vsub_s32(v58, v57).i32[1];
    v61 = vdupq_n_s64(v55);
    v62.i64[0] = v59;
    v62.i64[1] = v60;
    v63 = vdupq_n_s64(v54);
    v64 = vmovn_s64(vbslq_s8(vcgtq_s64(v61, v62), v61, vbslq_s8(vcgtq_s64(v63, v62), v62, v63)));
    v65 = v27 - v31;
    if (v65 >= v54)
    {
      v66 = v54;
    }

    else
    {
      v66 = v65;
    }

    if (v65 >= v55)
    {
      v67 = v66;
    }

    else
    {
      v67 = v55;
    }
  }

  v70 = v7 + v41 * v22;
  v71 = (v70 + v40 * -v22) >> v8;
  v72 = (v70 + v40 * v22) >> v8;
  v73 = v46 + v51;
  v74 = a4[5];
  v75 = 1 << (v74 - 1);
  v76 = v75 - 1;
  v77 = -v75;
  if (v46 + v51 < v76)
  {
    LODWORD(v76) = v46 + v51;
  }

  if (v73 >= v77)
  {
    LODWORD(v77) = v76;
  }

  if (v74 >= 1)
  {
    v73 = v77;
  }

  *a2 = v73;
  v78 = v64.i32[0] + v72;
  v79 = a4[5];
  v80 = 1 << (v79 - 1);
  v81 = v80 - 1;
  v82 = -v80;
  if (v64.i32[0] + v72 < v81)
  {
    LODWORD(v81) = v64.i32[0] + v72;
  }

  if (v78 >= v82)
  {
    LODWORD(v82) = v81;
  }

  if (v79 >= 1)
  {
    v78 = v82;
  }

  a2[1] = v78;
  v83 = v64.i32[1] + v71;
  v84 = a4[5];
  v85 = 1 << (v84 - 1);
  v86 = v85 - 1;
  v87 = -v85;
  if (v64.i32[1] + v71 < v86)
  {
    LODWORD(v86) = v64.i32[1] + v71;
  }

  if (v83 >= v87)
  {
    LODWORD(v87) = v86;
  }

  if (v84 >= 1)
  {
    v83 = v87;
  }

  a2[2] = v83;
  v88 = v32 + v67;
  v89 = a4[5];
  v90 = 1 << (v89 - 1);
  v91 = v90 - 1;
  v92 = -v90;
  if (v32 + v67 < v91)
  {
    LODWORD(v91) = v32 + v67;
  }

  if (v88 >= v92)
  {
    LODWORD(v92) = v91;
  }

  if (v89 >= 1)
  {
    v88 = v92;
  }

  a2[3] = v88;
  v93 = v67 - v32;
  v94 = a4[5];
  v95 = 1 << (v94 - 1);
  v96 = v95 - 1;
  v97 = -v95;
  result = v93;
  if (v93 < v96)
  {
    LODWORD(v96) = v93;
  }

  if (v93 >= v97)
  {
    LODWORD(v97) = v96;
  }

  if (v94 >= 1)
  {
    v93 = v97;
  }

  a2[4] = v93;
  v99 = v64.i32[1] - v71;
  v100 = a4[5];
  v101 = 1 << (v100 - 1);
  v102 = v101 - 1;
  v103 = -v101;
  if (v99 < v102)
  {
    LODWORD(v102) = v99;
  }

  if (v99 >= v103)
  {
    LODWORD(v103) = v102;
  }

  if (v100 >= 1)
  {
    v99 = v103;
  }

  a2[5] = v99;
  v104 = v64.i32[0] - v72;
  v105 = a4[5];
  v106 = 1 << (v105 - 1);
  v107 = v106 - 1;
  v108 = -v106;
  if (v104 < v107)
  {
    LODWORD(v107) = v104;
  }

  if (v104 >= v108)
  {
    LODWORD(v108) = v107;
  }

  if (v105 >= 1)
  {
    v104 = v108;
  }

  a2[6] = v104;
  v109 = v51 - v46;
  v110 = a4[5];
  v111 = 1 << (v110 - 1);
  v112 = v111 - 1;
  v113 = -v111;
  if (v109 < v112)
  {
    LODWORD(v112) = v109;
  }

  if (v109 >= v113)
  {
    LODWORD(v113) = v112;
  }

  if (v110 >= 1)
  {
    v109 = v113;
  }

  a2[7] = v109;
  return result;
}

uint64_t sub_277BA963C(__int32 *a1, int32x2_t *a2, unsigned int a3, char *a4, double a5, int32x4_t a6)
{
  v6 = &dword_277C42240[64 * a3 - 640];
  a2->i32[0] = *a1;
  a2->i32[1] = a1[8];
  a2[1].i32[0] = a1[4];
  a2[1].i32[1] = a1[12];
  a2[2].i32[0] = a1[2];
  a2[2].i32[1] = a1[10];
  a2[3].i32[0] = a1[6];
  a2[3].i32[1] = a1[14];
  v7 = a1[1];
  a2[4].i32[0] = v7;
  v8 = a1[9];
  a2[4].i32[1] = v8;
  a2[5].i32[0] = a1[5];
  a2[5].i32[1] = a1[13];
  a2[6].i32[0] = a1[3];
  a2[6].i32[1] = a1[11];
  v9 = a1[7];
  a2[7].i32[0] = v9;
  v10 = a1[15];
  a2[7].i32[1] = v10;
  v11 = *a2->i8;
  v12 = *a2[2].i8;
  v13 = dword_277C42240[64 * a3 - 580];
  v14 = dword_277C42240[64 * a3 - 636];
  v15 = 1 << (a3 - 1);
  v16 = a3;
  v17 = (v15 + v7 * v13 + -(v14 * v10)) >> a3;
  v18 = dword_277C42240[64 * a3 - 612];
  v19 = dword_277C42240[64 * a3 - 604];
  v20 = (v15 + v8 * v18 + -(v19 * v9)) >> a3;
  *a6.i8 = a2[5];
  v21 = a2[6];
  v22.i32[0] = dword_277C42240[64 * a3 - 628];
  v22.i32[1] = dword_277C42240[64 * a3 - 596];
  v23.i64[0] = __PAIR64__(v22.u32[0], v22.u32[1]);
  v23.i32[2] = dword_277C42240[64 * a3 - 588];
  v24.i32[0] = v23.i32[2];
  v24.i32[1] = dword_277C42240[64 * a3 - 620];
  v23.i32[3] = v24.i32[1];
  v25 = vmulq_s32(v23, vzip1q_s32(a6, vrev64q_s32(a6)));
  v26 = vrev64_s32(vneg_s32(vmul_s32(v24, v21)));
  v27 = vdupq_n_s64(v15);
  v28 = vmul_s32(v21, v22);
  v29 = vaddw_high_s32(v27, v25);
  v30 = vaddw_s32(vaddw_s32(v27, *v25.i8), v26);
  v31 = vdupq_n_s64(a3);
  v32 = vaddw_s32(v29, v28);
  v33 = vnegq_s64(v31);
  v34 = vshlq_s64(v32, v33);
  v35 = vshlq_s64(v30, v33);
  v36 = dword_277C42240[64 * a3 - 584];
  v37 = HIDWORD(*&a2[2]);
  v38 = a2[3];
  v39 = dword_277C42240[64 * a3 - 632];
  v40 = (v15 + v12 * v36 + -(v39 * HIDWORD(v12))) >> a3;
  a2[2].i32[0] = v40;
  v41 = dword_277C42240[64 * a3 - 616];
  v42 = dword_277C42240[64 * a3 - 600];
  v43 = (v15 + v37 * v41 + -(v42 * v38)) >> a3;
  v44 = (v15 + v42 * v37 + v38 * v41) >> a3;
  a2[2].i32[1] = v43;
  a2[3].i32[0] = v44;
  v45 = (v15 + v39 * v12 + HIDWORD(v12) * v36) >> a3;
  a2[3].i32[1] = v45;
  v46 = v20 + v17;
  v47 = a4[3];
  if (v47 >= 1)
  {
    v48 = 1 << (v47 - 1);
    v49 = v48 - 1;
    v50 = -v48;
    if (v46 < v49)
    {
      LODWORD(v49) = v20 + v17;
    }

    if (v46 >= v50)
    {
      v46 = v49;
    }

    else
    {
      v46 = v50;
    }
  }

  v51 = v19 * v8;
  v52 = v14 * v7;
  v53 = vuzp1q_s32(v35, v34);
  a2[4].i32[0] = v46;
  v54 = v17 - v20;
  v55 = a4[3];
  if (v55 >= 1)
  {
    v56 = 1 << (v55 - 1);
    v57 = v56 - 1;
    v58 = -v56;
    if (v54 < v57)
    {
      LODWORD(v57) = v54;
    }

    if (v54 >= v58)
    {
      v54 = v57;
    }

    else
    {
      v54 = v58;
    }
  }

  v59 = v9 * v18;
  v60 = v15 + v51;
  v61 = v10 * v13;
  a2[4].i32[1] = v54;
  v62 = v53.i32[1] - v53.i32[0];
  v63 = a4[3];
  if (v63 >= 1)
  {
    v64 = 1 << (v63 - 1);
    v65 = v64 - 1;
    v66 = -v64;
    if (v62 < v65)
    {
      LODWORD(v65) = v53.i32[1] - v53.i32[0];
    }

    if (v62 >= v66)
    {
      v62 = v65;
    }

    else
    {
      v62 = v66;
    }
  }

  v67 = v60 + v59;
  v68 = v15 + v52 + v61;
  a2[5].i32[0] = v62;
  v69 = v53.i32[1] + v53.i32[0];
  v70 = a4[3];
  if (v70 >= 1)
  {
    v71 = 1 << (v70 - 1);
    v72 = v71 - 1;
    v73 = -v71;
    if (v69 < v72)
    {
      LODWORD(v72) = v53.i32[1] + v53.i32[0];
    }

    if (v69 >= v73)
    {
      v69 = v72;
    }

    else
    {
      v69 = v73;
    }
  }

  v74 = v67 >> a3;
  v75 = v68 >> a3;
  a2[5].i32[1] = v69;
  v76 = v53.i32[3] + v53.i32[2];
  v77 = a4[3];
  if (v77 >= 1)
  {
    v78 = 1 << (v77 - 1);
    v79 = v78 - 1;
    v80 = -v78;
    if (v76 < v79)
    {
      LODWORD(v79) = v53.i32[3] + v53.i32[2];
    }

    if (v76 >= v80)
    {
      v76 = v79;
    }

    else
    {
      v76 = v80;
    }
  }

  a2[6].i32[0] = v76;
  v81 = v53.i32[2] - v53.i32[3];
  v82 = a4[3];
  if (v82 >= 1)
  {
    v83 = 1 << (v82 - 1);
    v84 = v83 - 1;
    v85 = -v83;
    if (v81 < v84)
    {
      LODWORD(v84) = v53.i32[2] - v53.i32[3];
    }

    if (v81 >= v85)
    {
      v81 = v84;
    }

    else
    {
      v81 = v85;
    }
  }

  a2[6].i32[1] = v81;
  v86 = v75 - v74;
  v87 = a4[3];
  if (v87 >= 1)
  {
    v88 = 1 << (v87 - 1);
    v89 = v88 - 1;
    v90 = -v88;
    if (v86 < v89)
    {
      LODWORD(v89) = v75 - v74;
    }

    if (v86 >= v90)
    {
      v86 = v89;
    }

    else
    {
      v86 = v90;
    }
  }

  a2[7].i32[0] = v86;
  v91 = v75 + v74;
  v92 = a4[3];
  if (v92 >= 1)
  {
    v93 = 1 << (v92 - 1);
    v94 = v93 - 1;
    v95 = -v93;
    if (v91 < v94)
    {
      LODWORD(v94) = v91;
    }

    if (v91 >= v95)
    {
      v91 = v94;
    }

    else
    {
      v91 = v95;
    }
  }

  v310 = v46;
  a2[7].i32[1] = v91;
  v96 = v6[32];
  v97 = v15 + (v11 * v96);
  v98 = (v97 + (DWORD1(v11) * v96)) >> v16;
  v99 = (v97 + -(v96 * DWORD1(v11))) >> v16;
  v100 = v6[48];
  v101 = v6[16];
  v102 = -v101;
  v103 = (v15 + DWORD2(v11) * v100 + -(v101 * HIDWORD(v11))) >> v16;
  v104 = (v15 + v101 * DWORD2(v11) + HIDWORD(v11) * v100) >> v16;
  v105 = v43 + v40;
  v106 = a4[4];
  if (v106 <= 0)
  {
    v113 = v40 - v43;
    v116 = v45 - v44;
    LODWORD(v109) = v45 + v44;
  }

  else
  {
    v107 = 1 << (v106 - 1);
    v108 = v107 - 1;
    v109 = -v107;
    v110 = v105;
    if (v105 >= v108)
    {
      v105 = v108;
    }

    if (v110 < v109)
    {
      v105 = v109;
    }

    v111 = v40 - v43;
    if (v111 >= v108)
    {
      v112 = v108;
    }

    else
    {
      v112 = v111;
    }

    if (v111 >= v109)
    {
      v113 = v112;
    }

    else
    {
      v113 = v109;
    }

    v114 = v45 - v44;
    if (v114 >= v108)
    {
      v115 = v108;
    }

    else
    {
      v115 = v45 - v44;
    }

    if (v114 >= v109)
    {
      v116 = v115;
    }

    else
    {
      v116 = v109;
    }

    v117 = v45 + v44;
    if (v117 >= v108)
    {
      v118 = v108;
    }

    else
    {
      v118 = v117;
    }

    if (v117 >= v109)
    {
      LODWORD(v109) = v118;
    }
  }

  v119 = v104 + v98;
  v120 = a4[5];
  if (v120 >= 1)
  {
    v121 = 1 << (v120 - 1);
    v122 = v121 - 1;
    v123 = -v121;
    if (v119 < v122)
    {
      LODWORD(v122) = v104 + v98;
    }

    if (v119 >= v123)
    {
      v119 = v122;
    }

    else
    {
      v119 = v123;
    }
  }

  v124 = *(&a2[5] + 4);
  a2->i32[0] = v119;
  v125 = v103 + v99;
  v126 = a4[5];
  if (v126 >= 1)
  {
    v127 = 1 << (v126 - 1);
    v128 = v127 - 1;
    v129 = -v127;
    if (v125 < v128)
    {
      LODWORD(v128) = v103 + v99;
    }

    if (v125 >= v129)
    {
      v125 = v128;
    }

    else
    {
      v125 = v129;
    }
  }

  a2->i32[1] = v125;
  v130 = v99 - v103;
  v131 = a4[5];
  if (v131 >= 1)
  {
    v132 = 1 << (v131 - 1);
    v133 = v132 - 1;
    v134 = -v132;
    if (v130 < v133)
    {
      LODWORD(v133) = v130;
    }

    if (v130 >= v134)
    {
      v130 = v133;
    }

    else
    {
      v130 = v134;
    }
  }

  v135 = (v15 + v54 * v102 + v86 * v100) >> v16;
  v136 = (v15 + -(v100 * v62) + v81 * v102) >> v16;
  a2[1].i32[0] = v130;
  v137 = v98 - v104;
  v138 = a4[5];
  if (v138 >= 1)
  {
    v139 = 1 << (v138 - 1);
    v140 = v139 - 1;
    v141 = -v139;
    if (v137 < v140)
    {
      LODWORD(v140) = v137;
    }

    if (v137 >= v141)
    {
      v137 = v140;
    }

    else
    {
      v137 = v141;
    }
  }

  v142 = v62 * v102;
  v143 = v54 * v100;
  a2[1].i32[1] = v137;
  a2[2].i32[0] = v105;
  v144 = v15 + (v116 * v96);
  v145 = (v144 + v113 * -v96) >> v16;
  v146 = (v144 + (v113 * v96)) >> v16;
  a2[2].i32[1] = v145;
  a2[3].i32[0] = v146;
  a2[3].i32[1] = v109;
  v147 = v124 + v310;
  v148 = a4[5];
  if (v148 >= 1)
  {
    v149 = 1 << (v148 - 1);
    v150 = v149 - 1;
    v151 = -v149;
    if (v147 < v150)
    {
      LODWORD(v150) = v124 + v310;
    }

    if (v147 >= v151)
    {
      v147 = v150;
    }

    else
    {
      v147 = v151;
    }
  }

  v152 = v81 * v100;
  v153 = v15 + v142;
  v154 = v86 * v101;
  v155 = v15 + v143;
  a2[4].i32[0] = v147;
  v156 = v136 + v135;
  v157 = a4[5];
  if (v157 >= 1)
  {
    v158 = 1 << (v157 - 1);
    v159 = v158 - 1;
    v160 = -v158;
    if (v156 < v159)
    {
      LODWORD(v159) = v136 + v135;
    }

    if (v156 >= v160)
    {
      v156 = v159;
    }

    else
    {
      v156 = v160;
    }
  }

  v161 = v153 + v152;
  v162 = v155 + v154;
  a2[4].i32[1] = v156;
  v163 = v135 - v136;
  v164 = a4[5];
  if (v164 >= 1)
  {
    v165 = 1 << (v164 - 1);
    v166 = v165 - 1;
    v167 = -v165;
    if (v163 < v166)
    {
      LODWORD(v166) = v135 - v136;
    }

    if (v163 >= v167)
    {
      v163 = v166;
    }

    else
    {
      v163 = v167;
    }
  }

  v168 = v161 >> v16;
  v169 = v162 >> v16;
  a2[5].i32[0] = v163;
  v170 = v310 - v124;
  v171 = a4[5];
  if (v171 >= 1)
  {
    v172 = 1 << (v171 - 1);
    v173 = v172 - 1;
    v174 = -v172;
    if (v170 < v173)
    {
      LODWORD(v173) = v310 - v124;
    }

    if (v170 >= v174)
    {
      v170 = v173;
    }

    else
    {
      v170 = v174;
    }
  }

  a2[5].i32[1] = v170;
  v175 = v91 - HIDWORD(v124);
  v176 = a4[5];
  if (v176 >= 1)
  {
    v177 = 1 << (v176 - 1);
    v178 = v177 - 1;
    v179 = -v177;
    if (v175 < v178)
    {
      LODWORD(v178) = v91 - HIDWORD(v124);
    }

    if (v175 >= v179)
    {
      v175 = v178;
    }

    else
    {
      v175 = v179;
    }
  }

  a2[6].i32[0] = v175;
  v180 = v169 - v168;
  v181 = a4[5];
  if (v181 >= 1)
  {
    v182 = 1 << (v181 - 1);
    v183 = v182 - 1;
    v184 = -v182;
    if (v180 < v183)
    {
      LODWORD(v183) = v169 - v168;
    }

    if (v180 >= v184)
    {
      v180 = v183;
    }

    else
    {
      v180 = v184;
    }
  }

  a2[6].i32[1] = v180;
  v185 = v169 + v168;
  v186 = a4[5];
  if (v186 >= 1)
  {
    v187 = 1 << (v186 - 1);
    v188 = v187 - 1;
    v189 = -v187;
    if (v185 < v188)
    {
      LODWORD(v188) = v185;
    }

    if (v185 >= v189)
    {
      v185 = v188;
    }

    else
    {
      v185 = v189;
    }
  }

  a2[7].i32[0] = v185;
  v190 = v91 + HIDWORD(v124);
  v191 = a4[5];
  if (v191 >= 1)
  {
    v192 = 1 << (v191 - 1);
    v193 = v192 - 1;
    v194 = -v192;
    if (v190 < v193)
    {
      LODWORD(v193) = v91 + HIDWORD(v124);
    }

    if (v190 >= v194)
    {
      v190 = v193;
    }

    else
    {
      v190 = v194;
    }
  }

  a2[7].i32[1] = v190;
  v195 = a4[6];
  if (v195 <= 0)
  {
    v216 = a2[1].i32[0];
    v217 = a2[2].i32[0];
    v206.i32[0] = v109 + v119;
    v206.i32[1] = v125 + v146;
    v206.i32[2] = v216 + v145;
    v206.i32[3] = v217 + v137;
    v210 = v137 - v217;
    v211 = v216 - v145;
    v213 = v125 - v146;
    v215 = v119 - v109;
  }

  else
  {
    v196 = 1 << (v195 - 1);
    v197 = v196 - 1;
    v198 = -v196;
    v199 = a2[1];
    v200 = vrev64_s32(a2[2]);
    v201 = vadd_s32(v200, v199);
    v202 = vdupq_n_s64(v198);
    v203.i64[0] = v109 + v119;
    v203.i64[1] = v125 + v146;
    v204 = v203;
    v203.i64[0] = v201.i32[0];
    v203.i64[1] = v201.i32[1];
    v205 = vdupq_n_s64(v197);
    v31 = vbslq_s8(vcgtq_s64(v202, v204), v202, vbslq_s8(vcgtq_s64(v205, v204), v204, v205));
    v206 = vuzp1q_s32(v31, vbslq_s8(vcgtq_s64(v202, v203), v202, vbslq_s8(vcgtq_s64(v205, v203), v203, v205)));
    v207 = vsub_s32(v199, v200);
    if (v207.i32[1] >= v197)
    {
      v208 = v197;
    }

    else
    {
      v208 = v207.i32[1];
    }

    if (v207.i32[1] >= v198)
    {
      v209 = v208;
    }

    else
    {
      v209 = v198;
    }

    v210 = v209;
    if (v207.i32[0] >= v197)
    {
      v211 = v197;
    }

    else
    {
      v211 = v207.i32[0];
    }

    if (v207.i32[0] < v198)
    {
      v211 = v198;
    }

    v212 = v125 - v146;
    if (v212 >= v197)
    {
      v213 = v197;
    }

    else
    {
      v213 = v125 - v146;
    }

    if (v212 < v198)
    {
      v213 = v198;
    }

    v214 = v119 - v109;
    if (v214 < v197)
    {
      LODWORD(v197) = v119 - v109;
    }

    if (v214 >= v198)
    {
      v215 = v197;
    }

    else
    {
      v215 = v198;
    }
  }

  *v218.i8 = a2[5];
  v218.i64[1] = v218.i64[0];
  *v31.i8 = vdup_n_s32(v96);
  v219 = vaddw_s32(v27, vmul_s32(a2[6], *v31.i8));
  v220 = vextq_s8(v219, v219, 8uLL);
  v31.i32[1] = -v96;
  v221 = vrev64q_s32(v31);
  v222 = vmulq_s32(v218, vzip1q_s32(v221, v221));
  v223 = vaddw_s32(v220, *v222.i8);
  v224 = vshlq_s64(vaddw_high_s32(v220, v222), v33);
  v225 = vshlq_s64(v223, v33);
  v226 = a2[7];
  v227 = v226.i32[1] + v206.i32[0];
  v228 = a4[7];
  if (v228 >= 1)
  {
    v229 = 1 << (v228 - 1);
    v230 = v229 - 1;
    v231 = -v229;
    if (v227 < v230)
    {
      LODWORD(v230) = v226.i32[1] + v206.i32[0];
    }

    if (v227 >= v231)
    {
      v227 = v230;
    }

    else
    {
      v227 = v231;
    }
  }

  v232 = a2[4];
  v233 = vuzp1q_s32(v225, v224);
  a2->i32[0] = v227;
  v234 = v226.i32[0] + v206.i32[1];
  v235 = a4[7];
  if (v235 >= 1)
  {
    v236 = 1 << (v235 - 1);
    v237 = v236 - 1;
    v238 = -v236;
    if (v234 < v237)
    {
      LODWORD(v237) = v226.i32[0] + v206.i32[1];
    }

    if (v234 >= v238)
    {
      v234 = v237;
    }

    else
    {
      v234 = v238;
    }
  }

  a2->i32[1] = v234;
  v239 = v233.i32[2] + v206.i32[2];
  v240 = a4[7];
  if (v240 >= 1)
  {
    v241 = 1 << (v240 - 1);
    v242 = v241 - 1;
    v243 = -v241;
    if (v239 < v242)
    {
      LODWORD(v242) = v233.i32[2] + v206.i32[2];
    }

    if (v239 >= v243)
    {
      v239 = v242;
    }

    else
    {
      v239 = v243;
    }
  }

  a2[1].i32[0] = v239;
  result = v233.u32[3];
  v245 = v233.i32[3] + v206.i32[3];
  v246 = a4[7];
  if (v246 >= 1)
  {
    v247 = 1 << (v246 - 1);
    v248 = v247 - 1;
    v249 = -v247;
    if (v245 < v248)
    {
      LODWORD(v248) = v233.i32[3] + v206.i32[3];
    }

    if (v245 >= v249)
    {
      v245 = v248;
    }

    else
    {
      v245 = v249;
    }
  }

  a2[1].i32[1] = v245;
  v250 = v233.i32[1] + v210;
  v251 = a4[7];
  if (v251 >= 1)
  {
    v252 = 1 << (v251 - 1);
    v253 = v252 - 1;
    v254 = -v252;
    if (v250 < v253)
    {
      LODWORD(v253) = v233.i32[1] + v210;
    }

    if (v250 >= v254)
    {
      v250 = v253;
    }

    else
    {
      v250 = v254;
    }
  }

  a2[2].i32[0] = v250;
  v255 = v233.i32[0] + v211;
  v256 = a4[7];
  if (v256 >= 1)
  {
    v257 = 1 << (v256 - 1);
    v258 = v257 - 1;
    v259 = -v257;
    if (v255 < v258)
    {
      LODWORD(v258) = v233.i32[0] + v211;
    }

    if (v255 >= v259)
    {
      v255 = v258;
    }

    else
    {
      v255 = v259;
    }
  }

  a2[2].i32[1] = v255;
  v260 = v232.i32[1] + v213;
  v261 = a4[7];
  if (v261 >= 1)
  {
    v262 = 1 << (v261 - 1);
    v263 = v262 - 1;
    v264 = -v262;
    if (v260 < v263)
    {
      LODWORD(v263) = v232.i32[1] + v213;
    }

    if (v260 >= v264)
    {
      v260 = v263;
    }

    else
    {
      v260 = v264;
    }
  }

  a2[3].i32[0] = v260;
  v265 = v232.i32[0] + v215;
  v266 = a4[7];
  if (v266 >= 1)
  {
    v267 = 1 << (v266 - 1);
    v268 = v267 - 1;
    v269 = -v267;
    if (v265 < v268)
    {
      LODWORD(v268) = v232.i32[0] + v215;
    }

    if (v265 >= v269)
    {
      v265 = v268;
    }

    else
    {
      v265 = v269;
    }
  }

  a2[3].i32[1] = v265;
  v270 = v215 - v232.i32[0];
  v271 = a4[7];
  if (v271 >= 1)
  {
    v272 = 1 << (v271 - 1);
    v273 = v272 - 1;
    v274 = -v272;
    if (v270 < v273)
    {
      LODWORD(v273) = v270;
    }

    if (v270 >= v274)
    {
      v270 = v273;
    }

    else
    {
      v270 = v274;
    }
  }

  a2[4].i32[0] = v270;
  v275 = v213 - v232.i32[1];
  v276 = a4[7];
  if (v276 >= 1)
  {
    v277 = 1 << (v276 - 1);
    v278 = v277 - 1;
    v279 = -v277;
    if (v275 < v278)
    {
      LODWORD(v278) = v275;
    }

    if (v275 >= v279)
    {
      v275 = v278;
    }

    else
    {
      v275 = v279;
    }
  }

  a2[4].i32[1] = v275;
  v280 = v211 - v233.i32[0];
  v281 = a4[7];
  if (v281 >= 1)
  {
    v282 = 1 << (v281 - 1);
    v283 = v282 - 1;
    v284 = -v282;
    if (v280 < v283)
    {
      LODWORD(v283) = v280;
    }

    if (v280 >= v284)
    {
      v280 = v283;
    }

    else
    {
      v280 = v284;
    }
  }

  a2[5].i32[0] = v280;
  v285 = v210 - v233.i32[1];
  v286 = a4[7];
  if (v286 >= 1)
  {
    v287 = 1 << (v286 - 1);
    v288 = v287 - 1;
    v289 = -v287;
    if (v285 < v288)
    {
      LODWORD(v288) = v210 - v233.i32[1];
    }

    if (v285 >= v289)
    {
      v285 = v288;
    }

    else
    {
      v285 = v289;
    }
  }

  a2[5].i32[1] = v285;
  v290 = v206.i32[3] - v233.i32[3];
  v291 = a4[7];
  if (v291 >= 1)
  {
    v292 = 1 << (v291 - 1);
    v293 = v292 - 1;
    v294 = -v292;
    if (v290 < v293)
    {
      LODWORD(v293) = v206.i32[3] - v233.i32[3];
    }

    if (v290 >= v294)
    {
      v290 = v293;
    }

    else
    {
      v290 = v294;
    }
  }

  a2[6].i32[0] = v290;
  v295 = v206.i32[2] - v233.i32[2];
  v296 = a4[7];
  if (v296 >= 1)
  {
    v297 = 1 << (v296 - 1);
    v298 = v297 - 1;
    v299 = -v297;
    if (v295 < v298)
    {
      LODWORD(v298) = v206.i32[2] - v233.i32[2];
    }

    if (v295 >= v299)
    {
      v295 = v298;
    }

    else
    {
      v295 = v299;
    }
  }

  a2[6].i32[1] = v295;
  v300 = v206.i32[1] - v226.i32[0];
  v301 = a4[7];
  if (v301 >= 1)
  {
    v302 = 1 << (v301 - 1);
    v303 = v302 - 1;
    v304 = -v302;
    if (v300 < v303)
    {
      LODWORD(v303) = v206.i32[1] - v226.i32[0];
    }

    if (v300 >= v304)
    {
      v300 = v303;
    }

    else
    {
      v300 = v304;
    }
  }

  a2[7].i32[0] = v300;
  v305 = v206.i32[0] - v226.i32[1];
  v306 = a4[7];
  if (v306 >= 1)
  {
    v307 = 1 << (v306 - 1);
    v308 = v307 - 1;
    v309 = -v307;
    if (v305 < v308)
    {
      LODWORD(v308) = v206.i32[0] - v226.i32[1];
    }

    if (v305 >= v309)
    {
      v305 = v308;
    }

    else
    {
      v305 = v309;
    }
  }

  a2[7].i32[1] = v305;
  return result;
}

uint64_t sub_277BAA41C(_DWORD *a1, __int128 *a2, unsigned int a3, char *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11, int64x2_t a12)
{
  v12 = &dword_277C42240[64 * a3 - 640];
  *a2 = *a1;
  *(a2 + 1) = a1[16];
  *(a2 + 2) = a1[8];
  *(a2 + 3) = a1[24];
  *(a2 + 4) = a1[4];
  *(a2 + 5) = a1[20];
  *(a2 + 6) = a1[12];
  *(a2 + 7) = a1[28];
  *(a2 + 8) = a1[2];
  *(a2 + 9) = a1[18];
  *(a2 + 10) = a1[10];
  *(a2 + 11) = a1[26];
  *(a2 + 12) = a1[6];
  *(a2 + 13) = a1[22];
  *(a2 + 14) = a1[14];
  *(a2 + 15) = a1[30];
  v13 = a1[1];
  *(a2 + 16) = v13;
  v14 = a1[17];
  *(a2 + 17) = v14;
  v15 = a1[9];
  *(a2 + 18) = v15;
  *(a2 + 19) = a1[25];
  *(a2 + 20) = a1[5];
  *(a2 + 21) = a1[21];
  *(a2 + 22) = a1[13];
  *(a2 + 23) = a1[29];
  *(a2 + 24) = a1[3];
  *(a2 + 25) = a1[19];
  *(a2 + 26) = a1[11];
  v16 = a1[27];
  *(a2 + 27) = v16;
  v17 = a1[7];
  *(a2 + 28) = v17;
  v18 = a1[23];
  *(a2 + 29) = v18;
  v19 = a1[15];
  *(a2 + 30) = v19;
  v20 = a1[31];
  *(a2 + 31) = v20;
  v799 = v13;
  v801 = dword_277C42240[64 * a3 - 578];
  v21 = v13 * v801;
  v802 = v20;
  v793 = dword_277C42240[64 * a3 - 638];
  v22 = -(v793 * v20);
  v23 = 1 << (a3 - 1);
  v24 = v23 + v21 + v22;
  v795 = dword_277C42240[64 * a3 - 610];
  v797 = v14;
  v805 = v19;
  v791 = dword_277C42240[64 * a3 - 606];
  v25 = v23 + v14 * v795 + -(v791 * v19);
  v784 = dword_277C42240[64 * a3 - 594];
  v785 = v15;
  v787 = v18;
  v789 = v17;
  v782 = dword_277C42240[64 * a3 - 622];
  v783 = dword_277C42240[64 * a3 - 626];
  v780 = *(a2 + 19);
  v781 = dword_277C42240[64 * a3 - 590];
  v821 = (v23 + v15 * v784 + -(v782 * v18)) >> a3;
  v823 = (v23 + v780 * v783 + -(v781 * v17)) >> a3;
  v26 = dword_277C42240[64 * a3 - 630];
  v779 = dword_277C42240[64 * a3 - 586];
  v776 = *(a2 + 20);
  v27 = *(a2 + 21);
  v778 = dword_277C42240[64 * a3 - 618];
  v28 = dword_277C42240[64 * a3 - 598];
  v777 = *(a2 + 26);
  v29.i32[0] = dword_277C42240[64 * a3 - 634];
  v29.i32[1] = dword_277C42240[64 * a3 - 602];
  v30.i64[0] = __PAIR64__(v29.u32[0], v29.u32[1]);
  v30.i32[2] = dword_277C42240[64 * a3 - 582];
  v31.i32[0] = v30.i32[2];
  v31.i32[1] = dword_277C42240[64 * a3 - 614];
  v30.i32[3] = v31.i32[1];
  v32 = a2[3];
  v828 = a2[2];
  v33 = dword_277C42240[64 * a3 - 580];
  v34 = dword_277C42240[64 * a3 - 636];
  v818 = (v23 + v828 * v33 + -(v34 * v32.i32[3])) >> a3;
  *(a2 + 8) = v818;
  v35 = dword_277C42240[64 * a3 - 612];
  v36 = dword_277C42240[64 * a3 - 604];
  v816 = (v23 + DWORD1(v828) * v35 + -(v36 * v32.i32[2])) >> a3;
  *(a2 + 9) = v816;
  v37 = dword_277C42240[64 * a3 - 596];
  v38 = dword_277C42240[64 * a3 - 620];
  v807 = (v23 + DWORD2(v828) * v37 + -(v38 * v32.i32[1])) >> a3;
  *(a2 + 10) = v807;
  v39 = dword_277C42240[64 * a3 - 628];
  v40 = dword_277C42240[64 * a3 - 588];
  v41 = v23 + HIDWORD(v828) * v39 + -(v40 * v32.i32[0]);
  v42 = v23 + v40 * HIDWORD(v828) + v32.i32[0] * v39;
  v43 = v23 + v38 * DWORD2(v828) + v32.i32[1] * v37;
  v44 = v23 + v36 * DWORD1(v828) + v32.i32[2] * v35;
  v45 = v23 + v34 * v828 + v32.i32[3] * v33;
  v32.i64[0] = *(a2 + 11);
  v46 = a2[6];
  v47 = vmulq_s32(v30, vzip1q_s32(v32, vrev64q_s32(v32)));
  v48 = v24 >> a3;
  v49 = v25 >> a3;
  v50 = vmul_s32(v31, v46);
  v51 = v41 >> a3;
  v52 = v42 >> a3;
  *(a2 + 11) = v41 >> a3;
  *(a2 + 12) = v42 >> a3;
  v53 = v43 >> a3;
  *(a2 + 13) = v43 >> a3;
  *(a2 + 14) = v44 >> a3;
  v813 = v44 >> a3;
  v810 = v45 >> a3;
  *(a2 + 15) = v45 >> a3;
  v54 = a3;
  v55 = v49 + v48;
  v56 = a4[3];
  if (v56 >= 1)
  {
    v57 = 1 << (v56 - 1);
    v58 = v57 - 1;
    v59 = -v57;
    if (v55 < v58)
    {
      LODWORD(v58) = v49 + v48;
    }

    if (v55 >= v59)
    {
      v55 = v58;
    }

    else
    {
      v55 = v59;
    }
  }

  v60 = vneg_s32(v50);
  v61 = vdupq_n_s64(v23);
  v820 = v55;
  *(a2 + 16) = v55;
  v62 = v48 - v49;
  v63 = a4[3];
  if (v63 >= 1)
  {
    v64 = 1 << (v63 - 1);
    v65 = v64 - 1;
    v66 = -v64;
    if (v62 < v65)
    {
      LODWORD(v65) = v62;
    }

    if (v62 >= v66)
    {
      v62 = v65;
    }

    else
    {
      v62 = v66;
    }
  }

  v67 = vrev64_s32(v60);
  v68 = vmul_s32(v46, v29);
  v69 = vaddw_high_s32(v61, v47);
  v70 = vaddw_s32(v61, *v47.i8);
  v71 = vdupq_n_s64(a3);
  *(a2 + 17) = v62;
  v72 = v823 - v821;
  v73 = a4[3];
  if (v73 >= 1)
  {
    v74 = 1 << (v73 - 1);
    v75 = v74 - 1;
    v76 = -v74;
    if (v72 < v75)
    {
      LODWORD(v75) = v823 - v821;
    }

    if (v72 >= v76)
    {
      v72 = v75;
    }

    else
    {
      v72 = v76;
    }
  }

  v77 = vaddw_s32(v70, v67);
  v78 = vaddw_s32(v69, v68);
  v79 = vnegq_s64(v71);
  *(a2 + 18) = v72;
  v80 = v823 + v821;
  v81 = a4[3];
  if (v81 >= 1)
  {
    v82 = 1 << (v81 - 1);
    v83 = v82 - 1;
    v84 = -v82;
    if (v80 < v83)
    {
      LODWORD(v83) = v823 + v821;
    }

    if (v80 >= v84)
    {
      v80 = v83;
    }

    else
    {
      v80 = v84;
    }
  }

  v85 = vshlq_s64(v78, v79);
  v86 = vshlq_s64(v77, v79);
  *(a2 + 19) = v80;
  v825 = (v23 + v776 * v779 + -(v26 * v16)) >> a3;
  v826 = (v23 + v27 * v778 + -(v28 * v777)) >> a3;
  v87 = v826 + v825;
  v88 = a4[3];
  if (v88 >= 1)
  {
    v89 = 1 << (v88 - 1);
    v90 = v89 - 1;
    v91 = -v89;
    if (v87 < v90)
    {
      LODWORD(v90) = v826 + v825;
    }

    if (v87 >= v91)
    {
      v87 = v90;
    }

    else
    {
      v87 = v91;
    }
  }

  v92 = v28 * v27;
  v93 = v26 * v776;
  v94 = vuzp1q_s32(v86, v85);
  *(a2 + 20) = v87;
  v95 = v825 - v826;
  v96 = a4[3];
  if (v96 >= 1)
  {
    v97 = 1 << (v96 - 1);
    v98 = v97 - 1;
    v99 = -v97;
    if (v95 < v98)
    {
      LODWORD(v98) = v825 - v826;
    }

    if (v95 >= v99)
    {
      v95 = v98;
    }

    else
    {
      v95 = v99;
    }
  }

  v100 = v23 + v92;
  v101 = v16 * v779;
  *(a2 + 21) = v95;
  v102 = v94.i32[1] - v94.i32[0];
  v103 = a4[3];
  if (v103 >= 1)
  {
    v104 = 1 << (v103 - 1);
    v105 = v104 - 1;
    v106 = -v104;
    if (v102 < v105)
    {
      LODWORD(v105) = v94.i32[1] - v94.i32[0];
    }

    if (v102 >= v106)
    {
      v102 = v105;
    }

    else
    {
      v102 = v106;
    }
  }

  v107 = v100 + v777 * v778;
  v108 = v23 + v93 + v101;
  *(a2 + 22) = v102;
  v109 = v94.i32[1] + v94.i32[0];
  v110 = a4[3];
  if (v110 >= 1)
  {
    v111 = 1 << (v110 - 1);
    v112 = v111 - 1;
    v113 = -v111;
    if (v109 < v112)
    {
      LODWORD(v112) = v94.i32[1] + v94.i32[0];
    }

    if (v109 >= v113)
    {
      v109 = v112;
    }

    else
    {
      v109 = v113;
    }
  }

  v114 = v107 >> a3;
  v115 = v108 >> a3;
  *(a2 + 23) = v109;
  v116 = v94.i32[3] + v94.i32[2];
  v117 = a4[3];
  if (v117 >= 1)
  {
    v118 = 1 << (v117 - 1);
    v119 = v118 - 1;
    v120 = -v118;
    if (v116 < v119)
    {
      LODWORD(v119) = v94.i32[3] + v94.i32[2];
    }

    if (v116 >= v120)
    {
      v116 = v119;
    }

    else
    {
      v116 = v120;
    }
  }

  *(a2 + 24) = v116;
  v121 = v94.i32[2] - v94.i32[3];
  v122 = a4[3];
  if (v122 >= 1)
  {
    v123 = 1 << (v122 - 1);
    v124 = v123 - 1;
    v125 = -v123;
    if (v121 < v124)
    {
      LODWORD(v124) = v94.i32[2] - v94.i32[3];
    }

    if (v121 >= v125)
    {
      v121 = v124;
    }

    else
    {
      v121 = v125;
    }
  }

  v126 = v816;
  v127 = (v23 + v781 * v780 + v789 * v783) >> a3;
  v128 = (v23 + v782 * v785 + v787 * v784) >> a3;
  *(a2 + 25) = v121;
  v129 = v115 - v114;
  v130 = a4[3];
  if (v130 >= 1)
  {
    v131 = 1 << (v130 - 1);
    v132 = v131 - 1;
    v133 = -v131;
    if (v129 < v132)
    {
      LODWORD(v132) = v115 - v114;
    }

    if (v129 >= v133)
    {
      v129 = v132;
    }

    else
    {
      v129 = v133;
    }
  }

  *(a2 + 26) = v129;
  v134 = v115 + v114;
  v135 = a4[3];
  if (v135 >= 1)
  {
    v136 = 1 << (v135 - 1);
    v137 = v136 - 1;
    v138 = -v136;
    if (v134 < v137)
    {
      LODWORD(v137) = v134;
    }

    if (v134 >= v138)
    {
      v134 = v137;
    }

    else
    {
      v134 = v138;
    }
  }

  v139 = (v23 + v791 * v797 + v805 * v795) >> a3;
  v140 = (v23 + v793 * v799 + v802 * v801) >> a3;
  *(a2 + 27) = v134;
  v141 = v128 + v127;
  v142 = a4[3];
  if (v142 >= 1)
  {
    v143 = 1 << (v142 - 1);
    v144 = v143 - 1;
    v145 = -v143;
    if (v141 < v144)
    {
      LODWORD(v144) = v128 + v127;
    }

    if (v141 >= v145)
    {
      v141 = v144;
    }

    else
    {
      v141 = v145;
    }
  }

  *(a2 + 28) = v141;
  v146 = v127 - v128;
  v147 = a4[3];
  if (v147 >= 1)
  {
    v148 = 1 << (v147 - 1);
    v149 = v148 - 1;
    v150 = -v148;
    if (v146 < v149)
    {
      LODWORD(v149) = v146;
    }

    if (v146 >= v150)
    {
      v146 = v149;
    }

    else
    {
      v146 = v150;
    }
  }

  *(a2 + 29) = v146;
  v151 = v140 - v139;
  v152 = a4[3];
  if (v152 >= 1)
  {
    v153 = 1 << (v152 - 1);
    v154 = v153 - 1;
    v155 = -v153;
    if (v151 < v154)
    {
      LODWORD(v154) = v140 - v139;
    }

    if (v151 >= v155)
    {
      v151 = v154;
    }

    else
    {
      v151 = v155;
    }
  }

  *(a2 + 30) = v151;
  v156 = v140 + v139;
  v157 = a4[3];
  if (v157 >= 1)
  {
    v158 = 1 << (v157 - 1);
    v159 = v158 - 1;
    v160 = -v158;
    if (v156 < v159)
    {
      LODWORD(v159) = v156;
    }

    if (v156 >= v160)
    {
      v156 = v159;
    }

    else
    {
      v156 = v160;
    }
  }

  v817 = v156;
  *(a2 + 31) = v156;
  v161 = *a2;
  v162 = v12[56];
  v163 = -v12[8];
  v164 = v12[24];
  v165 = v12[40];
  v166 = -v165;
  v94.i64[0] = *(a2 + 2);
  v71.i64[0] = *(a2 + 3);
  a11.i64[0] = __PAIR64__(v164, v162);
  v167 = vextq_s8(a11, vrev64q_s32(a11), 8uLL);
  a11.i32[2] = v165;
  v800 = v12[8];
  a11.i32[3] = v800;
  v167.i32[0] = v163;
  v167.i32[1] = -v165;
  v169 = vmulq_s32(a11, vzip1q_s32(v94, vrev64q_s32(v94)));
  v170 = vmulq_s32(vzip1q_s32(vrev64q_s32(v71), v71), v167);
  v171 = vuzp1q_s32(vshlq_s64(vaddw_s32(vaddw_s32(v61, *v169.i8), *v170.i8), v79), vshlq_s64(vaddw_high_s32(vaddw_high_s32(v61, v169), v170), v79));
  v172 = a4[4];
  if (v172 <= 0)
  {
    *v829 = v126 + v818;
    *&v829[4] = v818 - v126;
    *&v829[8] = v51 - v807;
    *&v829[12] = v51 + v807;
    v182 = v53 + v52;
    v184 = v52 - v53;
    v186 = v810 - v813;
    LODWORD(v175) = v810 + v813;
  }

  else
  {
    v173 = 1 << (v172 - 1);
    v174 = v173 - 1;
    v175 = -v173;
    v176 = vdupq_n_s64(v175);
    v177.i64[0] = v51 - v807;
    v177.i64[1] = v51 + v807;
    v178 = v177;
    v177.i64[0] = v126 + v818;
    v177.i64[1] = v818 - v126;
    a12 = vcgtq_s64(v176, v177);
    v179 = vdupq_n_s64(v174);
    a11 = vbslq_s8(vcgtq_s64(v179, v177), v177, v179);
    *v829 = vuzp1q_s32(vbslq_s8(a12, v176, a11), vbslq_s8(vcgtq_s64(v176, v178), v176, vbslq_s8(vcgtq_s64(v179, v178), v178, v179)));
    v180 = v53 + v52;
    if (v180 >= v174)
    {
      v181 = v174;
    }

    else
    {
      v181 = v53 + v52;
    }

    if (v180 >= v175)
    {
      v182 = v181;
    }

    else
    {
      v182 = v175;
    }

    v183 = v52 - v53;
    if (v183 >= v174)
    {
      v184 = v174;
    }

    else
    {
      v184 = v52 - v53;
    }

    if (v183 < v175)
    {
      v184 = v175;
    }

    v185 = v810 - v813;
    if (v185 >= v174)
    {
      v186 = v174;
    }

    else
    {
      v186 = v810 - v813;
    }

    if (v185 < v175)
    {
      v186 = v175;
    }

    v187 = v810 + v813;
    if (v187 < v174)
    {
      LODWORD(v174) = v810 + v813;
    }

    if (v187 >= v175)
    {
      LODWORD(v175) = v174;
    }
  }

  *&v829[16] = v182;
  *&v829[20] = v184;
  v830 = v186;
  v832 = v175;
  v811 = v72;
  v814 = v95;
  v822 = (v23 + -(v162 * v72) + v146 * v163) >> v54;
  v824 = *(a2 + 76);
  v827 = (v23 + v95 * v166 + (v129 * v164)) >> v54;
  v188 = *(a2 + 23);
  v790 = *(a2 + 24);
  v788 = *(a2 + 27);
  v806 = *(a2 + 28);
  v189 = v12[32];
  v190 = v23 + v161 * v189;
  *a2 = (v190 + DWORD1(v161) * v189) >> v54;
  *(a2 + 1) = (v190 + -(v189 * DWORD1(v161))) >> v54;
  v191 = v12[48];
  v192 = v12[16];
  v193 = v23 + v192 * DWORD2(v161);
  *(a2 + 2) = (v23 + (DWORD2(v161) * v191) + -(v192 * HIDWORD(v161))) >> v54;
  *(a2 + 3) = (v193 + (HIDWORD(v161) * v191)) >> v54;
  v808 = (v193 + (HIDWORD(v161) * v191)) >> v54;
  v194 = v171.i32[1] + v171.i32[0];
  v195 = a4[5];
  if (v195 >= 1)
  {
    v196 = 1 << (v195 - 1);
    v197 = v196 - 1;
    v198 = -v196;
    if (v194 < v197)
    {
      LODWORD(v197) = v171.i32[1] + v171.i32[0];
    }

    if (v194 >= v198)
    {
      v194 = v197;
    }

    else
    {
      v194 = v198;
    }
  }

  *(a2 + 4) = v194;
  v199 = v171.i32[0] - v171.i32[1];
  v200 = a4[5];
  v201 = v129;
  if (v200 >= 1)
  {
    v202 = 1 << (v200 - 1);
    v203 = v202 - 1;
    v204 = -v202;
    if (v199 < v203)
    {
      LODWORD(v203) = v171.i32[0] - v171.i32[1];
    }

    if (v199 >= v204)
    {
      v199 = v203;
    }

    else
    {
      v199 = v204;
    }
  }

  v205 = v151;
  v206 = v23 + v62 * v163 + (v151 * v162);
  v786 = v199;
  *(a2 + 5) = v199;
  v207 = v171.i32[3] - v171.i32[2];
  v208 = a4[5];
  v209 = v146;
  if (v208 >= 1)
  {
    v210 = 1 << (v208 - 1);
    v211 = v210 - 1;
    v212 = -v210;
    if (v207 < v211)
    {
      LODWORD(v211) = v171.i32[3] - v171.i32[2];
    }

    if (v207 >= v212)
    {
      v207 = v211;
    }

    else
    {
      v207 = v212;
    }
  }

  v213 = v188;
  v214 = v206 >> v54;
  v215 = -v192;
  *(a2 + 6) = v207;
  v216 = v171.i32[3] + v171.i32[2];
  v217 = a4[5];
  if (v217 >= 1)
  {
    v218 = 1 << (v217 - 1);
    v219 = v218 - 1;
    v220 = -v218;
    if (v216 < v219)
    {
      LODWORD(v219) = v171.i32[3] + v171.i32[2];
    }

    if (v216 >= v220)
    {
      v216 = v219;
    }

    else
    {
      v216 = v220;
    }
  }

  v819 = v216;
  *(a2 + 7) = v216;
  *(a2 + 8) = *v829;
  v796 = *v829;
  v792 = (v23 + -(v191 * *&v829[8]) + *&v829[20] * v215) >> v54;
  v794 = (v23 + *&v829[4] * v215 + (v830 * v191)) >> v54;
  *(a2 + 9) = v794;
  *(a2 + 10) = v792;
  *(a2 + 44) = *&v829[12];
  v221 = -v192;
  v803 = (v23 + *&v829[8] * v215 + (*&v829[20] * v191)) >> v54;
  *(a2 + 13) = v803;
  *(a2 + 14) = (v23 + (*&v829[4] * v191) + v830 * v192) >> v54;
  v798 = (v23 + (*&v829[4] * v191) + v830 * v192) >> v54;
  *(a2 + 15) = v832;
  v222 = v824 + v820;
  v223 = a4[5];
  v224 = v62;
  if (v223 >= 1)
  {
    v225 = 1 << (v223 - 1);
    v226 = v225 - 1;
    v227 = -v225;
    if (v222 < v226)
    {
      LODWORD(v226) = v824 + v820;
    }

    if (v222 >= v227)
    {
      v222 = v226;
    }

    else
    {
      v222 = v227;
    }
  }

  v228 = v192;
  *(a2 + 16) = v222;
  v229 = v822 + v214;
  v230 = a4[5];
  if (v230 >= 1)
  {
    v231 = 1 << (v230 - 1);
    v232 = v231 - 1;
    v233 = -v231;
    if (v229 < v232)
    {
      LODWORD(v232) = v822 + v214;
    }

    if (v229 >= v233)
    {
      v229 = v232;
    }

    else
    {
      v229 = v233;
    }
  }

  *(a2 + 17) = v229;
  v234 = v214 - v822;
  v235 = a4[5];
  if (v235 >= 1)
  {
    v236 = 1 << (v235 - 1);
    v237 = v236 - 1;
    v238 = -v236;
    if (v234 < v237)
    {
      LODWORD(v237) = v234;
    }

    if (v234 >= v238)
    {
      v234 = v237;
    }

    else
    {
      v234 = v238;
    }
  }

  v239 = v228;
  v240 = (v23 + -(v164 * v102) + v121 * v166) >> v54;
  *(a2 + 18) = v234;
  v241 = v820 - v824;
  v242 = a4[5];
  if (v242 >= 1)
  {
    v243 = 1 << (v242 - 1);
    v244 = v243 - 1;
    v245 = -v243;
    if (v241 < v244)
    {
      LODWORD(v244) = v820 - v824;
    }

    if (v241 >= v245)
    {
      v241 = v244;
    }

    else
    {
      v241 = v245;
    }
  }

  v246 = v819;
  v247 = v102 * v166;
  v248 = v814 * v164;
  *(a2 + 19) = v241;
  v249 = v188 - HIDWORD(v824);
  v250 = a4[5];
  if (v250 >= 1)
  {
    v251 = 1 << (v250 - 1);
    v252 = v251 - 1;
    v253 = -v251;
    if (v249 < v252)
    {
      LODWORD(v252) = v188 - HIDWORD(v824);
    }

    if (v249 >= v253)
    {
      v249 = v252;
    }

    else
    {
      v249 = v253;
    }
  }

  v254 = v121 * v164;
  v255 = v23 + v247;
  v256 = v201 * v165;
  v257 = v23 + v248;
  *(a2 + 20) = v249;
  v258 = v240 - v827;
  v259 = a4[5];
  if (v259 >= 1)
  {
    v260 = 1 << (v259 - 1);
    v261 = v260 - 1;
    v262 = -v260;
    if (v258 < v261)
    {
      LODWORD(v261) = v240 - v827;
    }

    if (v258 >= v262)
    {
      v258 = v261;
    }

    else
    {
      v258 = v262;
    }
  }

  v263 = v255 + v254;
  v264 = v257 + v256;
  *(a2 + 21) = v258;
  v265 = v827 + v240;
  v266 = a4[5];
  if (v266 >= 1)
  {
    v267 = 1 << (v266 - 1);
    v268 = v267 - 1;
    v269 = -v267;
    if (v265 < v268)
    {
      LODWORD(v268) = v265;
    }

    if (v265 >= v269)
    {
      v265 = v268;
    }

    else
    {
      v265 = v269;
    }
  }

  v270 = v263 >> v54;
  v271 = v264 >> v54;
  *(a2 + 22) = v265;
  v272 = HIDWORD(v824) + v188;
  v273 = a4[5];
  if (v273 >= 1)
  {
    v274 = 1 << (v273 - 1);
    v275 = v274 - 1;
    v276 = -v274;
    if (v272 < v275)
    {
      LODWORD(v275) = HIDWORD(v824) + v213;
    }

    if (v272 >= v276)
    {
      v272 = v275;
    }

    else
    {
      v272 = v276;
    }
  }

  *(a2 + 23) = v272;
  v277 = v788 + v790;
  v278 = a4[5];
  if (v278 >= 1)
  {
    v279 = 1 << (v278 - 1);
    v280 = v279 - 1;
    v281 = -v279;
    if (v277 < v280)
    {
      LODWORD(v280) = v788 + v790;
    }

    if (v277 >= v281)
    {
      v277 = v280;
    }

    else
    {
      v277 = v281;
    }
  }

  v282 = v23 + v811 * v163;
  *(a2 + 24) = v277;
  v283 = v271 + v270;
  v284 = a4[5];
  if (v284 >= 1)
  {
    v285 = 1 << (v284 - 1);
    v286 = v285 - 1;
    v287 = -v285;
    if (v283 < v286)
    {
      LODWORD(v286) = v271 + v270;
    }

    if (v283 >= v287)
    {
      v283 = v286;
    }

    else
    {
      v283 = v287;
    }
  }

  *(a2 + 25) = v283;
  v288 = v270 - v271;
  v289 = a4[5];
  if (v289 >= 1)
  {
    v290 = 1 << (v289 - 1);
    v291 = v290 - 1;
    v292 = -v290;
    if (v288 < v291)
    {
      LODWORD(v291) = v288;
    }

    if (v288 >= v292)
    {
      v288 = v291;
    }

    else
    {
      v288 = v292;
    }
  }

  v293 = (v282 + (v209 * v162)) >> v54;
  v294 = (v23 + (v224 * v162) + (v205 * v800)) >> v54;
  *(a2 + 26) = v288;
  v295 = v790 - v788;
  v296 = a4[5];
  if (v296 >= 1)
  {
    v297 = 1 << (v296 - 1);
    v298 = v297 - 1;
    v299 = -v297;
    if (v295 < v298)
    {
      LODWORD(v298) = v790 - v788;
    }

    if (v295 >= v299)
    {
      v295 = v298;
    }

    else
    {
      v295 = v299;
    }
  }

  *(a2 + 27) = v295;
  v300 = v817 - v806;
  v301 = a4[5];
  if (v301 >= 1)
  {
    v302 = 1 << (v301 - 1);
    v303 = v302 - 1;
    v304 = -v302;
    if (v300 < v303)
    {
      LODWORD(v303) = v817 - v806;
    }

    if (v300 >= v304)
    {
      v300 = v303;
    }

    else
    {
      v300 = v304;
    }
  }

  *(a2 + 28) = v300;
  v305 = v294 - v293;
  v306 = a4[5];
  if (v306 >= 1)
  {
    v307 = 1 << (v306 - 1);
    v308 = v307 - 1;
    v309 = -v307;
    if (v305 < v308)
    {
      LODWORD(v308) = v294 - v293;
    }

    if (v305 >= v309)
    {
      v305 = v308;
    }

    else
    {
      v305 = v309;
    }
  }

  *(a2 + 29) = v305;
  v310 = v294 + v293;
  v311 = a4[5];
  if (v311 >= 1)
  {
    v312 = 1 << (v311 - 1);
    v313 = v312 - 1;
    v314 = -v312;
    if (v310 < v313)
    {
      LODWORD(v313) = v310;
    }

    if (v310 >= v314)
    {
      v310 = v313;
    }

    else
    {
      v310 = v314;
    }
  }

  *(a2 + 30) = v310;
  v315 = v817 + v806;
  v316 = a4[5];
  if (v316 >= 1)
  {
    v317 = 1 << (v316 - 1);
    v318 = v317 - 1;
    v319 = -v317;
    if (v315 < v318)
    {
      LODWORD(v318) = v817 + v806;
    }

    if (v315 >= v319)
    {
      v315 = v318;
    }

    else
    {
      v315 = v319;
    }
  }

  v320 = -v189;
  *(a2 + 31) = v315;
  v321 = *a2;
  v322 = *a2 + v808;
  v323 = a4[6];
  if (v323 <= 0)
  {
    v337 = *(a2 + 4);
    v338 = vrev64_s32(v337);
    v334.i32[0] = vadd_s32(v338, v337).u32[0];
    v334.i32[1] = vsub_s32(v338, v337).i32[1];
    v336 = v321 - v808;
  }

  else
  {
    v324 = 1 << (v323 - 1);
    v325 = v324 - 1;
    v326 = -v324;
    if (v322 >= v325)
    {
      v327 = v325;
    }

    else
    {
      v327 = *a2 + v808;
    }

    if (v322 >= v326)
    {
      v322 = v327;
    }

    else
    {
      v322 = v326;
    }

    v328 = *(a2 + 4);
    v329 = vrev64_s32(v328);
    v330 = vadd_s32(v329, v328).u32[0];
    v331 = vsub_s32(v329, v328).i32[1];
    v332 = vdupq_n_s64(v326);
    v333.i64[0] = v330;
    v333.i64[1] = v331;
    a11 = vdupq_n_s64(v325);
    a12 = vcgtq_s64(a11, v333);
    v334 = vmovn_s64(vbslq_s8(vcgtq_s64(v332, v333), v332, vbslq_s8(a12, v333, a11)));
    v335 = v321 - v808;
    if (v335 < v325)
    {
      LODWORD(v325) = v335;
    }

    if (v335 >= v326)
    {
      v336 = v325;
    }

    else
    {
      v336 = v326;
    }
  }

  v339 = v23 + *(a2 + 6) * v189;
  v340 = v339 + (v786 * v320);
  v341 = (v339 + v786 * v189) >> v54;
  if (v323 <= 0)
  {
    *v829 += *&v829[12];
    *&v829[4] = v792 + v794;
    *&v829[8] = v794 - v792;
    *&v829[12] = v796 - *&v829[12];
    v351 = v832 - *&v829[16];
    v354 = v798 - v803;
    v357 = v798 + v803;
    LODWORD(v344) = v832 + *&v829[16];
  }

  else
  {
    v342 = 1 << (v323 - 1);
    v343 = v342 - 1;
    v344 = -v342;
    v345 = vdupq_n_s64(v344);
    v346.i64[0] = v794 - v792;
    v346.i64[1] = *v829 - *&v829[12];
    v347 = v346;
    v346.i64[0] = *&v829[12] + *v829;
    v346.i64[1] = v792 + v794;
    a11 = vcgtq_s64(v345, v346);
    a12 = vcgtq_s64(v345, v347);
    v348 = vdupq_n_s64(v343);
    v171 = vuzp1q_s32(vbslq_s8(a11, v345, vbslq_s8(vcgtq_s64(v348, v346), v346, v348)), vbslq_s8(a12, v345, vbslq_s8(vcgtq_s64(v348, v347), v347, v348)));
    *v829 = v171;
    v349 = v832 - *&v829[16];
    if (v349 >= v343)
    {
      v350 = v343;
    }

    else
    {
      v350 = v832 - *&v829[16];
    }

    if (v349 >= v344)
    {
      v351 = v350;
    }

    else
    {
      v351 = v344;
    }

    v352 = v798 - v803;
    if (v352 >= v343)
    {
      v353 = v343;
    }

    else
    {
      v353 = v798 - v803;
    }

    if (v352 >= v344)
    {
      v354 = v353;
    }

    else
    {
      v354 = v344;
    }

    v355 = v798 + v803;
    if (v355 >= v343)
    {
      v356 = v343;
    }

    else
    {
      v356 = v798 + v803;
    }

    if (v355 >= v344)
    {
      v357 = v356;
    }

    else
    {
      v357 = v344;
    }

    v358 = v832 + *&v829[16];
    if (v358 < v343)
    {
      LODWORD(v343) = v832 + *&v829[16];
    }

    if (v358 >= v344)
    {
      LODWORD(v344) = v343;
    }
  }

  v359 = v340 >> v54;
  v360 = *(a2 + 4);
  *&v829[16] = v351;
  *&v829[20] = v354;
  v831 = __PAIR64__(v344, v357);
  v361 = vdup_n_s32(v221);
  v362 = *(a2 + 16);
  v363 = *(a2 + 17);
  v364 = *(a2 + 72);
  v365 = a2[5];
  a12.i64[0] = *(a2 + 13);
  a11.i64[0] = *(a2 + 14);
  v366 = vmul_s32(*a11.i8, vdup_n_s32(v191));
  v367.i64[0] = v366.i32[0];
  v367.i64[1] = v366.i32[1];
  v368 = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v61, vmul_s32(v364, v361)), vextq_s8(v367, v367, 8uLL)), v79));
  v369 = vmul_s32(*a12.i8, v361);
  v367.i64[0] = v369.i32[0];
  v367.i64[1] = v369.i32[1];
  v370 = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v61, vmul_s32(v365, vdup_n_s32(-v191))), vextq_s8(v367, v367, 8uLL)), v79));
  v371 = v819 + v322;
  v372 = a4[7];
  if (v372 >= 1)
  {
    v373 = 1 << (v372 - 1);
    v374 = v373 - 1;
    v375 = -v373;
    if (v371 < v374)
    {
      LODWORD(v374) = v819 + v322;
    }

    if (v371 >= v375)
    {
      v371 = v374;
    }

    else
    {
      v371 = v375;
    }
  }

  v376 = *(a2 + 22);
  v377 = *(a2 + 23);
  v378 = *(a2 + 24);
  v379 = *(a2 + 25);
  v380 = *(a2 + 30);
  v381 = *(a2 + 31);
  *a2 = v371;
  v382 = v334.i32[0] + v341;
  v383 = a4[7];
  if (v383 >= 1)
  {
    v384 = 1 << (v383 - 1);
    v385 = v384 - 1;
    v386 = -v384;
    if (v382 < v385)
    {
      LODWORD(v385) = v334.i32[0] + v341;
    }

    if (v382 >= v386)
    {
      v382 = v385;
    }

    else
    {
      v382 = v386;
    }
  }

  *(a2 + 1) = v382;
  v387 = v334.i32[1] + v359;
  v388 = a4[7];
  if (v388 >= 1)
  {
    v389 = 1 << (v388 - 1);
    v390 = v389 - 1;
    v391 = -v389;
    if (v387 < v390)
    {
      LODWORD(v390) = v334.i32[1] + v359;
    }

    if (v387 >= v391)
    {
      v387 = v390;
    }

    else
    {
      v387 = v391;
    }
  }

  *(a2 + 2) = v387;
  v392 = v360 + v336;
  v393 = a4[7];
  if (v393 >= 1)
  {
    v394 = 1 << (v393 - 1);
    v395 = v394 - 1;
    v396 = -v394;
    if (v392 < v395)
    {
      LODWORD(v395) = v360 + v336;
    }

    if (v392 >= v396)
    {
      v392 = v395;
    }

    else
    {
      v392 = v396;
    }

    v246 = v819;
  }

  *(a2 + 3) = v392;
  v397 = v336 - v360;
  v398 = a4[7];
  if (v398 >= 1)
  {
    v399 = 1 << (v398 - 1);
    v400 = v399 - 1;
    v401 = -v399;
    if (v397 < v400)
    {
      LODWORD(v400) = v397;
    }

    if (v397 >= v401)
    {
      v397 = v400;
    }

    else
    {
      v397 = v401;
    }
  }

  *(a2 + 4) = v397;
  v402 = v334.i32[1] - v359;
  v403 = a4[7];
  if (v403 >= 1)
  {
    v404 = 1 << (v403 - 1);
    v405 = v404 - 1;
    v406 = -v404;
    if (v402 < v405)
    {
      LODWORD(v405) = v334.i32[1] - v359;
    }

    if (v402 >= v406)
    {
      v402 = v405;
    }

    else
    {
      v402 = v406;
    }
  }

  *(a2 + 5) = v402;
  v407 = v334.i32[0] - v341;
  v408 = a4[7];
  if (v408 >= 1)
  {
    v409 = 1 << (v408 - 1);
    v410 = v409 - 1;
    v411 = -v409;
    if (v407 < v410)
    {
      LODWORD(v410) = v407;
    }

    if (v407 >= v411)
    {
      v407 = v410;
    }

    else
    {
      v407 = v411;
    }
  }

  v412 = vzip1_s32(v365, v364);
  *v413.i8 = vzip2_s32(v365, v364);
  LODWORD(v414) = v221;
  *(a2 + 6) = v407;
  v415 = v322 - v246;
  v416 = a4[7];
  if (v416 >= 1)
  {
    v417 = 1 << (v416 - 1);
    v418 = v417 - 1;
    v419 = -v417;
    if (v415 < v418)
    {
      LODWORD(v418) = v415;
    }

    if (v415 >= v419)
    {
      v415 = v418;
    }

    else
    {
      v415 = v419;
    }
  }

  HIDWORD(v414) = v191;
  v420.i64[0] = *&v829[8];
  *(a2 + 4) = *v829;
  v420.i64[1] = *&v829[8];
  *v171.i8 = vdup_n_s32(v189);
  v421 = vaddw_s32(v61, vmul_s32(*&v829[16], *v171.i8));
  v422 = vextq_s8(v421, v421, 8uLL);
  v171.i32[1] = -v189;
  v423 = vrev64q_s32(v171);
  v424 = vmulq_s32(v420, vzip1q_s32(v423, v423));
  v425 = vshlq_s64(vaddw_high_s32(v422, v424), v79);
  v426 = vshlq_s64(vaddw_s32(v422, *v424.i8), v79);
  v427 = vuzp1q_s32(v426, v425);
  v428 = vrev64q_s32(v427);
  v428.i64[0] = v427.i64[0];
  *(a2 + 40) = v428;
  v428.i32[0] = v191;
  *(a2 + 7) = v415;
  *(a2 + 7) = v831;
  v429 = v377 + v362;
  v430 = a4[7];
  if (v430 >= 1)
  {
    v431 = 1 << (v430 - 1);
    v432 = v431 - 1;
    v433 = -v431;
    if (v429 < v432)
    {
      LODWORD(v432) = v377 + v362;
    }

    if (v429 >= v433)
    {
      v429 = v432;
    }

    else
    {
      v429 = v433;
    }
  }

  v413.u64[1] = v412;
  v434 = vdupq_lane_s64(v414, 0);
  v428.i32[1] = v239;
  v435 = v368.i32[0];
  *(a2 + 16) = v429;
  v436 = v376 + v363;
  v437 = a4[7];
  if (v437 >= 1)
  {
    v438 = 1 << (v437 - 1);
    v439 = v438 - 1;
    v440 = -v438;
    if (v436 < v439)
    {
      LODWORD(v439) = v376 + v363;
    }

    if (v436 >= v440)
    {
      v436 = v439;
    }

    else
    {
      v436 = v440;
    }
  }

  v441 = vmulq_s32(v413, v434);
  v442 = vdupq_lane_s64(v428.i64[0], 0);
  v443 = v368.i32[1];
  v444 = vzip1q_s32(a12, a11);
  *(a2 + 17) = v436;
  v445 = v370.i32[1] + v368.i32[0];
  v446 = a4[7];
  if (v446 >= 1)
  {
    v447 = 1 << (v446 - 1);
    v448 = v447 - 1;
    v449 = -v447;
    if (v445 < v448)
    {
      LODWORD(v448) = v370.i32[1] + v368.i32[0];
    }

    if (v445 >= v449)
    {
      v445 = v448;
    }

    else
    {
      v445 = v449;
    }
  }

  v450 = vmulq_s32(v444, v442);
  *(a2 + 18) = v445;
  v451 = v370.i32[0] + v368.i32[1];
  v452 = a4[7];
  if (v452 >= 1)
  {
    v453 = 1 << (v452 - 1);
    v454 = v453 - 1;
    v455 = -v453;
    if (v451 < v454)
    {
      LODWORD(v454) = v370.i32[0] + v368.i32[1];
    }

    if (v451 >= v455)
    {
      v451 = v454;
    }

    else
    {
      v451 = v455;
    }
  }

  v456 = vaddw_s32(v61, *v441.i8);
  v457 = vaddw_high_s32(v61, v441);
  *(a2 + 19) = v451;
  v458 = v443 - v370.i32[0];
  v459 = a4[7];
  if (v459 >= 1)
  {
    v460 = 1 << (v459 - 1);
    v461 = v460 - 1;
    v462 = -v460;
    if (v458 < v461)
    {
      LODWORD(v461) = v458;
    }

    if (v458 >= v462)
    {
      v458 = v461;
    }

    else
    {
      v458 = v462;
    }
  }

  v463 = vaddw_high_s32(v457, v450);
  v464 = vaddw_s32(v456, *v450.i8);
  *(a2 + 20) = v458;
  v465 = v435 - v370.i32[1];
  v466 = a4[7];
  if (v466 >= 1)
  {
    v467 = 1 << (v466 - 1);
    v468 = v467 - 1;
    v469 = -v467;
    if (v465 < v468)
    {
      LODWORD(v468) = v465;
    }

    if (v465 >= v469)
    {
      v465 = v468;
    }

    else
    {
      v465 = v469;
    }
  }

  v470 = vshlq_s64(v464, v79);
  v471 = vshlq_s64(v463, v79);
  *(a2 + 21) = v465;
  v472 = v363 - v376;
  v473 = a4[7];
  if (v473 >= 1)
  {
    v474 = 1 << (v473 - 1);
    v475 = v474 - 1;
    v476 = -v474;
    if (v472 < v475)
    {
      LODWORD(v475) = v472;
    }

    if (v472 >= v476)
    {
      v472 = v475;
    }

    else
    {
      v472 = v476;
    }
  }

  v477 = vmovn_s64(v471);
  v478 = vmovn_s64(v470);
  *(a2 + 22) = v472;
  v479 = v362 - v377;
  v480 = a4[7];
  if (v480 >= 1)
  {
    v481 = 1 << (v480 - 1);
    v482 = v481 - 1;
    v483 = -v481;
    if (v479 < v482)
    {
      LODWORD(v482) = v362 - v377;
    }

    if (v479 >= v483)
    {
      v479 = v482;
    }

    else
    {
      v479 = v483;
    }
  }

  *(a2 + 23) = v479;
  v484 = v381 - v378;
  v485 = a4[7];
  if (v485 >= 1)
  {
    v486 = 1 << (v485 - 1);
    v487 = v486 - 1;
    v488 = -v486;
    if (v484 < v487)
    {
      LODWORD(v487) = v381 - v378;
    }

    if (v484 >= v488)
    {
      v484 = v487;
    }

    else
    {
      v484 = v488;
    }
  }

  *(a2 + 24) = v484;
  v489 = v380 - v379;
  v490 = a4[7];
  if (v490 >= 1)
  {
    v491 = 1 << (v490 - 1);
    v492 = v491 - 1;
    v493 = -v491;
    if (v489 < v492)
    {
      LODWORD(v492) = v380 - v379;
    }

    if (v489 >= v493)
    {
      v489 = v492;
    }

    else
    {
      v489 = v493;
    }
  }

  *(a2 + 25) = v489;
  v494 = v477.i32[1] - v478.i32[0];
  v495 = a4[7];
  if (v495 >= 1)
  {
    v496 = 1 << (v495 - 1);
    v497 = v496 - 1;
    v498 = -v496;
    if (v494 < v497)
    {
      LODWORD(v497) = v477.i32[1] - v478.i32[0];
    }

    if (v494 >= v498)
    {
      v494 = v497;
    }

    else
    {
      v494 = v498;
    }
  }

  *(a2 + 26) = v494;
  v499 = v478.i32[1] - v477.i32[0];
  v500 = a4[7];
  if (v500 >= 1)
  {
    v501 = 1 << (v500 - 1);
    v502 = v501 - 1;
    v503 = -v501;
    if (v499 < v502)
    {
      LODWORD(v502) = v478.i32[1] - v477.i32[0];
    }

    if (v499 >= v503)
    {
      v499 = v502;
    }

    else
    {
      v499 = v503;
    }
  }

  *(a2 + 27) = v499;
  v504 = v478.i32[1] + v477.i32[0];
  v505 = a4[7];
  if (v505 >= 1)
  {
    v506 = 1 << (v505 - 1);
    v507 = v506 - 1;
    v508 = -v506;
    if (v504 < v507)
    {
      LODWORD(v507) = v478.i32[1] + v477.i32[0];
    }

    if (v504 >= v508)
    {
      v504 = v507;
    }

    else
    {
      v504 = v508;
    }
  }

  *(a2 + 28) = v504;
  v509 = v477.i32[1] + v478.i32[0];
  v510 = a4[7];
  if (v510 >= 1)
  {
    v511 = 1 << (v510 - 1);
    v512 = v511 - 1;
    v513 = -v511;
    if (v509 < v512)
    {
      LODWORD(v512) = v477.i32[1] + v478.i32[0];
    }

    if (v509 >= v513)
    {
      v509 = v512;
    }

    else
    {
      v509 = v513;
    }
  }

  v514 = vmovn_s64(v426);
  v515 = vmovn_s64(v425);
  *(a2 + 29) = v509;
  v516 = v380 + v379;
  v517 = a4[7];
  if (v517 >= 1)
  {
    v518 = 1 << (v517 - 1);
    v519 = v518 - 1;
    v520 = -v518;
    if (v516 < v519)
    {
      LODWORD(v519) = v380 + v379;
    }

    if (v516 >= v520)
    {
      v516 = v519;
    }

    else
    {
      v516 = v520;
    }
  }

  *(a2 + 30) = v516;
  v521 = v381 + v378;
  v522 = a4[7];
  if (v522 >= 1)
  {
    v523 = 1 << (v522 - 1);
    v524 = v523 - 1;
    v525 = -v523;
    if (v521 < v524)
    {
      LODWORD(v524) = v521;
    }

    if (v521 >= v525)
    {
      v521 = v524;
    }

    else
    {
      v521 = v525;
    }
  }

  v526 = v515.i32[1];
  v527 = v515.i32[0];
  *(a2 + 31) = v521;
  v528 = *a2;
  v529 = HIDWORD(v831) + *a2;
  v530 = a4[8];
  if (v530 <= 0)
  {
    v577 = *(a2 + 1);
    v538 = v831 + v577;
    v541 = v515.i32[0] + v387;
    LODWORD(v533) = v515.i32[1] + v392;
    v579 = *(a2 + 4);
    v578 = *(a2 + 5);
    v573 = v514.i32[1] + v579;
    v572 = v514.i32[0] + v578;
    v580 = *(a2 + 24);
    v581 = vrev64q_s32(v580);
    v582 = vextq_s8(v581, v581, 8uLL);
    v575 = v578 - v514.i32[0];
    v574 = v579 - v514.i32[1];
    v562 = v392 - v515.i32[1];
    v565 = v387 - v515.i32[0];
    v568 = v577 - v831;
    v571 = v528 - HIDWORD(v831);
    v576 = vrev64q_s32(vextq_s8(vsubq_s32(v582, v580), vaddq_s32(v582, v580), 8uLL));
  }

  else
  {
    v531 = 1 << (v530 - 1);
    v532 = v531 - 1;
    v533 = -v531;
    if (v529 >= v531 - 1)
    {
      v534 = v531 - 1;
    }

    else
    {
      v534 = HIDWORD(v831) + *a2;
    }

    if (v529 >= v533)
    {
      v529 = v534;
    }

    else
    {
      v529 = v533;
    }

    v535 = *(a2 + 1);
    v536 = v831 + v535;
    if (v536 >= v532)
    {
      v537 = v532;
    }

    else
    {
      v537 = v831 + v535;
    }

    if (v536 >= v533)
    {
      v538 = v537;
    }

    else
    {
      v538 = v533;
    }

    v539 = v515.i32[0] + v387;
    if (v539 >= v532)
    {
      v540 = v532;
    }

    else
    {
      v540 = v515.i32[0] + v387;
    }

    if (v539 >= v533)
    {
      v541 = v540;
    }

    else
    {
      v541 = v533;
    }

    v542 = v515.i32[1] + v392;
    if (v542 < v532)
    {
      LODWORD(v532) = v515.i32[1] + v392;
    }

    if (v542 >= v533)
    {
      LODWORD(v533) = v532;
    }

    v543 = 1 << (v530 - 1);
    v544 = v543 - 1;
    v545 = -v543;
    v546 = vrev64_s32(*(a2 + 36));
    v547.i64[0] = *(a2 + 28);
    *v425.i8 = vadd_s32(v546, *(a2 + 20));
    v463.i32[0] = v514.i32[1] + *(a2 + 4);
    v548 = vextq_s8(vextq_s8(v463, v463, 4uLL), v425, 0xCuLL);
    v549.i64[0] = v548.i32[0];
    v549.i64[1] = v548.i32[1];
    v550 = v549;
    v551 = vdupq_n_s64(v545);
    v549.i64[0] = v548.i32[2];
    v549.i64[1] = vadd_s32(vdup_lane_s32(*v547.i8, 1), *v547.i8).i32[0];
    v552 = vdupq_n_s64(v544);
    v553 = vbslq_s8(vcgtq_s64(v551, v550), v551, vbslq_s8(vcgtq_s64(v552, v550), v550, v552));
    v554 = vuzp1q_s32(v553, vbslq_s8(vcgtq_s64(v551, v549), v551, vbslq_s8(vcgtq_s64(v552, v549), v549, v552)));
    v555 = vmovn_s64(v553);
    v550.i64[0] = __PAIR64__(v546.u32[1], v547.u32[1]);
    v547.i32[1] = HIDWORD(*(a2 + 20));
    v547.i32[2] = *(a2 + 20);
    v547.i32[3] = *(a2 + 4);
    v550.i64[1] = __PAIR64__(v427.u32[1], v546.u32[0]);
    v556 = vsubq_s32(v547, v550);
    v549.i64[0] = v556.i32[2];
    v549.i64[1] = v556.i32[3];
    v557 = v549;
    v549.i64[0] = v556.i32[0];
    v549.i64[1] = v556.i32[1];
    v558 = vmovn_s64(vbslq_s8(vcgtq_s64(v551, v549), v551, vbslq_s8(vcgtq_s64(v552, v549), v549, v552)));
    v559 = vmovn_s64(vbslq_s8(vcgtq_s64(v551, v557), v551, vbslq_s8(vcgtq_s64(v552, v557), v557, v552)));
    v560 = v392 - v526;
    if (v560 >= v544)
    {
      v561 = v544;
    }

    else
    {
      v561 = v560;
    }

    if (v560 >= v545)
    {
      v562 = v561;
    }

    else
    {
      v562 = v545;
    }

    v563 = v387 - v527;
    if (v563 >= v544)
    {
      v564 = v544;
    }

    else
    {
      v564 = v563;
    }

    if (v563 >= v545)
    {
      v565 = v564;
    }

    else
    {
      v565 = v545;
    }

    v566 = v535 - v831;
    if (v566 >= v544)
    {
      v567 = v544;
    }

    else
    {
      v567 = v535 - v831;
    }

    if (v566 >= v545)
    {
      v568 = v567;
    }

    else
    {
      v568 = v545;
    }

    v569 = v528 - HIDWORD(v831);
    if (v569 >= v544)
    {
      v570 = v544;
    }

    else
    {
      v570 = v528 - HIDWORD(v831);
    }

    if (v569 >= v545)
    {
      v571 = v570;
    }

    else
    {
      v571 = v545;
    }

    v572 = v555.i32[1];
    v573 = v555.i32[0];
    v574 = v559.i32[1];
    v575 = v559.i32[0];
    *v554.i8 = v558;
    v576 = vrev64q_s32(v554);
  }

  v583 = vdupq_n_s32(v320);
  v584 = a2[5];
  v585 = vdupq_n_s32(v189);
  v586 = vmulq_s32(*(a2 + 6), v585);
  v587.i64[0] = v586.i32[2];
  v587.i64[1] = v586.i32[3];
  v588 = v587;
  v587.i64[0] = v586.i32[0];
  v587.i64[1] = v586.i32[1];
  v589 = vextq_s8(v587, v587, 8uLL);
  v590 = vextq_s8(v588, v588, 8uLL);
  v591 = vmulq_s32(v584, v585);
  v592 = vaddw_s32(v61, *v591.i8);
  v593 = vaddw_high_s32(v61, v591);
  v594 = vshlq_s64(vaddq_s64(v592, v590), v79);
  v595 = *(a2 + 30);
  v815 = *(a2 + 31);
  v596 = v529 + v815;
  v597 = a4[9];
  v809 = v529;
  if (v597 >= 1)
  {
    v598 = 1 << (v597 - 1);
    v599 = v598 - 1;
    v600 = -v598;
    if (v596 < v599)
    {
      LODWORD(v599) = v529 + v815;
    }

    if (v596 >= v600)
    {
      v596 = v599;
    }

    else
    {
      v596 = v600;
    }
  }

  v601 = vmulq_s32(v584, v583);
  v602 = vaddq_s64(v593, v589);
  v603 = vmovn_s64(v594);
  v605 = *(a2 + 18);
  v604 = *(a2 + 19);
  v607 = *(a2 + 16);
  v606 = *(a2 + 17);
  v609 = *(a2 + 28);
  v608 = *(a2 + 29);
  *a2 = v596;
  v610 = v538 + v595;
  v611 = a4[9];
  if (v611 >= 1)
  {
    v612 = 1 << (v611 - 1);
    v613 = v612 - 1;
    v614 = -v612;
    if (v610 < v613)
    {
      LODWORD(v613) = v538 + v595;
    }

    if (v610 >= v614)
    {
      v610 = v613;
    }

    else
    {
      v610 = v614;
    }
  }

  v615 = vaddw_high_s32(v61, v601);
  v616 = vshlq_s64(v602, v79);
  *(a2 + 1) = v610;
  v617 = v541 + v608;
  v618 = a4[9];
  if (v618 >= 1)
  {
    v619 = 1 << (v618 - 1);
    v620 = v619 - 1;
    v621 = -v619;
    if (v617 < v620)
    {
      LODWORD(v620) = v541 + v608;
    }

    if (v617 >= v621)
    {
      v617 = v620;
    }

    else
    {
      v617 = v621;
    }
  }

  v622 = vaddq_s64(v615, v589);
  v623 = vmovn_s64(v616);
  result = v603.u32[0];
  *(a2 + 2) = v617;
  v625 = v533 + v609;
  v626 = a4[9];
  if (v626 >= 1)
  {
    v627 = 1 << (v626 - 1);
    v628 = v627 - 1;
    v629 = -v627;
    if (v625 < v628)
    {
      LODWORD(v628) = v533 + v609;
    }

    if (v625 >= v629)
    {
      v625 = v628;
    }

    else
    {
      v625 = v629;
    }
  }

  v630 = vaddw_s32(v61, *v601.i8);
  v631 = vshlq_s64(v622, v79);
  *(a2 + 3) = v625;
  v632 = v603.i32[0] + v573;
  v633 = a4[9];
  if (v633 >= 1)
  {
    v634 = 1 << (v633 - 1);
    v635 = v634 - 1;
    v636 = -v634;
    if (v632 < v635)
    {
      LODWORD(v635) = v603.i32[0] + v573;
    }

    if (v632 >= v636)
    {
      v632 = v635;
    }

    else
    {
      v632 = v636;
    }
  }

  v637 = vaddq_s64(v630, v590);
  v638 = vmovn_s64(v631);
  *(a2 + 4) = v632;
  v639 = v603.i32[1] + v572;
  v640 = a4[9];
  if (v640 >= 1)
  {
    v641 = 1 << (v640 - 1);
    v642 = v641 - 1;
    v643 = -v641;
    if (v639 < v642)
    {
      LODWORD(v642) = v603.i32[1] + v572;
    }

    if (v639 >= v643)
    {
      v639 = v642;
    }

    else
    {
      v639 = v643;
    }
  }

  v644 = vshlq_s64(v637, v79);
  *(a2 + 5) = v639;
  v645 = v623.i32[0] + v576.i32[3];
  v646 = a4[9];
  if (v646 >= 1)
  {
    v647 = 1 << (v646 - 1);
    v648 = v647 - 1;
    v649 = -v647;
    if (v645 < v648)
    {
      LODWORD(v648) = v623.i32[0] + v576.i32[3];
    }

    if (v645 >= v649)
    {
      v645 = v648;
    }

    else
    {
      v645 = v649;
    }
  }

  v650 = vmovn_s64(v644);
  *(a2 + 6) = v645;
  v651 = v623.i32[1] + v576.i32[2];
  v652 = a4[9];
  v812 = v595;
  if (v652 >= 1)
  {
    v653 = 1 << (v652 - 1);
    v654 = v653 - 1;
    v655 = -v653;
    if (v651 < v654)
    {
      LODWORD(v654) = v623.i32[1] + v576.i32[2];
    }

    if (v651 >= v655)
    {
      v651 = v654;
    }

    else
    {
      v651 = v655;
    }
  }

  v804 = v608;
  *(a2 + 7) = v651;
  v656 = v638.i32[1] + v576.i32[1];
  v657 = a4[9];
  if (v657 >= 1)
  {
    v658 = 1 << (v657 - 1);
    v659 = v658 - 1;
    v660 = -v658;
    if (v656 < v659)
    {
      LODWORD(v659) = v638.i32[1] + v576.i32[1];
    }

    if (v656 >= v660)
    {
      v656 = v659;
    }

    else
    {
      v656 = v660;
    }
  }

  *(a2 + 8) = v656;
  v661 = v638.i32[0] + v576.i32[0];
  v662 = a4[9];
  if (v662 >= 1)
  {
    v663 = 1 << (v662 - 1);
    v664 = v663 - 1;
    v665 = -v663;
    if (v661 < v664)
    {
      LODWORD(v664) = v638.i32[0] + v576.i32[0];
    }

    if (v661 >= v665)
    {
      v661 = v664;
    }

    else
    {
      v661 = v665;
    }
  }

  *(a2 + 9) = v661;
  v666 = v650.i32[1] + v575;
  v667 = a4[9];
  if (v667 >= 1)
  {
    v668 = 1 << (v667 - 1);
    v669 = v668 - 1;
    v670 = -v668;
    if (v666 < v669)
    {
      LODWORD(v669) = v650.i32[1] + v575;
    }

    if (v666 >= v670)
    {
      v666 = v669;
    }

    else
    {
      v666 = v670;
    }
  }

  *(a2 + 10) = v666;
  v671 = v650.i32[0] + v574;
  v672 = a4[9];
  if (v672 >= 1)
  {
    v673 = 1 << (v672 - 1);
    v674 = v673 - 1;
    v675 = -v673;
    if (v671 < v674)
    {
      LODWORD(v674) = v650.i32[0] + v574;
    }

    if (v671 >= v675)
    {
      v671 = v674;
    }

    else
    {
      v671 = v675;
    }
  }

  *(a2 + 11) = v671;
  v676 = v562 + v604;
  v677 = a4[9];
  if (v677 >= 1)
  {
    v678 = 1 << (v677 - 1);
    v679 = v678 - 1;
    v680 = -v678;
    if (v676 < v679)
    {
      LODWORD(v679) = v562 + v604;
    }

    if (v676 >= v680)
    {
      v676 = v679;
    }

    else
    {
      v676 = v680;
    }
  }

  *(a2 + 12) = v676;
  v681 = v565 + v605;
  v682 = a4[9];
  if (v682 >= 1)
  {
    v683 = 1 << (v682 - 1);
    v684 = v683 - 1;
    v685 = -v683;
    if (v681 < v684)
    {
      LODWORD(v684) = v565 + v605;
    }

    if (v681 >= v685)
    {
      v681 = v684;
    }

    else
    {
      v681 = v685;
    }
  }

  *(a2 + 13) = v681;
  v686 = v568 + v606;
  v687 = a4[9];
  if (v687 >= 1)
  {
    v688 = 1 << (v687 - 1);
    v689 = v688 - 1;
    v690 = -v688;
    if (v686 < v689)
    {
      LODWORD(v689) = v568 + v606;
    }

    if (v686 >= v690)
    {
      v686 = v689;
    }

    else
    {
      v686 = v690;
    }
  }

  *(a2 + 14) = v686;
  v691 = v571 + v607;
  v692 = a4[9];
  if (v692 >= 1)
  {
    v693 = 1 << (v692 - 1);
    v694 = v693 - 1;
    v695 = -v693;
    if (v691 < v694)
    {
      LODWORD(v694) = v571 + v607;
    }

    if (v691 >= v695)
    {
      v691 = v694;
    }

    else
    {
      v691 = v695;
    }
  }

  *(a2 + 15) = v691;
  v696 = v571 - v607;
  v697 = a4[9];
  if (v697 >= 1)
  {
    v698 = 1 << (v697 - 1);
    v699 = v698 - 1;
    v700 = -v698;
    if (v696 < v699)
    {
      LODWORD(v699) = v571 - v607;
    }

    if (v696 >= v700)
    {
      v696 = v699;
    }

    else
    {
      v696 = v700;
    }
  }

  *(a2 + 16) = v696;
  v701 = v568 - v606;
  v702 = a4[9];
  if (v702 >= 1)
  {
    v703 = 1 << (v702 - 1);
    v704 = v703 - 1;
    v705 = -v703;
    if (v701 < v704)
    {
      LODWORD(v704) = v568 - v606;
    }

    if (v701 >= v705)
    {
      v701 = v704;
    }

    else
    {
      v701 = v705;
    }
  }

  *(a2 + 17) = v701;
  v706 = v565 - v605;
  v707 = a4[9];
  if (v707 >= 1)
  {
    v708 = 1 << (v707 - 1);
    v709 = v708 - 1;
    v710 = -v708;
    if (v706 < v709)
    {
      LODWORD(v709) = v565 - v605;
    }

    if (v706 >= v710)
    {
      v706 = v709;
    }

    else
    {
      v706 = v710;
    }
  }

  *(a2 + 18) = v706;
  v711 = v562 - v604;
  v712 = a4[9];
  if (v712 >= 1)
  {
    v713 = 1 << (v712 - 1);
    v714 = v713 - 1;
    v715 = -v713;
    if (v711 < v714)
    {
      LODWORD(v714) = v562 - v604;
    }

    if (v711 >= v715)
    {
      v711 = v714;
    }

    else
    {
      v711 = v715;
    }
  }

  *(a2 + 19) = v711;
  v716 = v574 - v650.i32[0];
  v717 = a4[9];
  if (v717 >= 1)
  {
    v718 = 1 << (v717 - 1);
    v719 = v718 - 1;
    v720 = -v718;
    if (v716 < v719)
    {
      LODWORD(v719) = v574 - v650.i32[0];
    }

    if (v716 >= v720)
    {
      v716 = v719;
    }

    else
    {
      v716 = v720;
    }
  }

  *(a2 + 20) = v716;
  v721 = v575 - v650.i32[1];
  v722 = a4[9];
  if (v722 >= 1)
  {
    v723 = 1 << (v722 - 1);
    v724 = v723 - 1;
    v725 = -v723;
    if (v721 < v724)
    {
      LODWORD(v724) = v575 - v650.i32[1];
    }

    if (v721 >= v725)
    {
      v721 = v724;
    }

    else
    {
      v721 = v725;
    }
  }

  *(a2 + 21) = v721;
  v726 = v576.i32[0] - v638.i32[0];
  v727 = a4[9];
  if (v727 >= 1)
  {
    v728 = 1 << (v727 - 1);
    v729 = v728 - 1;
    v730 = -v728;
    if (v726 < v729)
    {
      LODWORD(v729) = v576.i32[0] - v638.i32[0];
    }

    if (v726 >= v730)
    {
      v726 = v729;
    }

    else
    {
      v726 = v730;
    }
  }

  *(a2 + 22) = v726;
  v731 = v576.i32[1] - v638.i32[1];
  v732 = a4[9];
  if (v732 >= 1)
  {
    v733 = 1 << (v732 - 1);
    v734 = v733 - 1;
    v735 = -v733;
    if (v731 < v734)
    {
      LODWORD(v734) = v576.i32[1] - v638.i32[1];
    }

    if (v731 >= v735)
    {
      v731 = v734;
    }

    else
    {
      v731 = v735;
    }
  }

  *(a2 + 23) = v731;
  v736 = v576.i32[2] - v623.i32[1];
  v737 = a4[9];
  if (v737 >= 1)
  {
    v738 = 1 << (v737 - 1);
    v739 = v738 - 1;
    v740 = -v738;
    if (v736 < v739)
    {
      LODWORD(v739) = v576.i32[2] - v623.i32[1];
    }

    if (v736 >= v740)
    {
      v736 = v739;
    }

    else
    {
      v736 = v740;
    }
  }

  *(a2 + 24) = v736;
  v741 = v576.i32[3] - v623.i32[0];
  v742 = a4[9];
  if (v742 >= 1)
  {
    v743 = 1 << (v742 - 1);
    v744 = v743 - 1;
    v745 = -v743;
    if (v741 < v744)
    {
      LODWORD(v744) = v576.i32[3] - v623.i32[0];
    }

    if (v741 >= v745)
    {
      v741 = v744;
    }

    else
    {
      v741 = v745;
    }
  }

  *(a2 + 25) = v741;
  v746 = v572 - v603.i32[1];
  v747 = a4[9];
  if (v747 >= 1)
  {
    v748 = 1 << (v747 - 1);
    v749 = v748 - 1;
    v750 = -v748;
    if (v746 < v749)
    {
      LODWORD(v749) = v572 - v603.i32[1];
    }

    if (v746 >= v750)
    {
      v746 = v749;
    }

    else
    {
      v746 = v750;
    }
  }

  *(a2 + 26) = v746;
  v751 = v573 - v603.i32[0];
  v752 = a4[9];
  if (v752 >= 1)
  {
    v753 = 1 << (v752 - 1);
    v754 = v753 - 1;
    v755 = -v753;
    if (v751 < v754)
    {
      LODWORD(v754) = v573 - v603.i32[0];
    }

    if (v751 >= v755)
    {
      v751 = v754;
    }

    else
    {
      v751 = v755;
    }
  }

  *(a2 + 27) = v751;
  v756 = v533 - v609;
  v757 = a4[9];
  if (v757 >= 1)
  {
    v758 = 1 << (v757 - 1);
    v759 = v758 - 1;
    v760 = -v758;
    if (v756 < v759)
    {
      LODWORD(v759) = v533 - v609;
    }

    if (v756 >= v760)
    {
      v756 = v759;
    }

    else
    {
      v756 = v760;
    }
  }

  *(a2 + 28) = v756;
  v761 = v541 - v804;
  v762 = a4[9];
  if (v762 >= 1)
  {
    v763 = 1 << (v762 - 1);
    v764 = v763 - 1;
    v765 = -v763;
    if (v761 < v764)
    {
      LODWORD(v764) = v541 - v804;
    }

    if (v761 >= v765)
    {
      v761 = v764;
    }

    else
    {
      v761 = v765;
    }
  }

  *(a2 + 29) = v761;
  v766 = v538 - v812;
  v767 = a4[9];
  if (v767 >= 1)
  {
    v768 = 1 << (v767 - 1);
    v769 = v768 - 1;
    v770 = -v768;
    if (v766 < v769)
    {
      LODWORD(v769) = v538 - v812;
    }

    if (v766 >= v770)
    {
      v766 = v769;
    }

    else
    {
      v766 = v770;
    }
  }

  *(a2 + 30) = v766;
  v771 = v809 - v815;
  v772 = a4[9];
  if (v772 >= 1)
  {
    v773 = 1 << (v772 - 1);
    v774 = v773 - 1;
    v775 = -v773;
    if (v771 < v774)
    {
      LODWORD(v774) = v809 - v815;
    }

    if (v771 >= v775)
    {
      v771 = v774;
    }

    else
    {
      v771 = v775;
    }
  }

  *(a2 + 31) = v771;
  return result;
}

int *sub_277BAC8D8(int *result, _DWORD *a2, int a3)
{
  v3 = *result;
  v4 = result[1];
  v5 = result[2];
  v6 = result[3];
  if (v4 | *result | v5 | v6)
  {
    v7 = &unk_277C42640 + 20 * a3;
    v8 = *(v7 - 49);
    v9 = *(v7 - 48);
    v10 = v8 * v3;
    v11 = v9 * v3;
    v12 = *(v7 - 47);
    LODWORD(v7) = *(v7 - 46);
    v13 = v12 * v4;
    v14 = v12 * (v3 - v5 + v6);
    v15 = v10 + v9 * v6 + v7 * v5;
    v16 = 1 << (a3 - 1);
    v17 = v11 - v7 * v6 - v8 * v5;
    v18 = v17 + v13;
    v19 = (v16 + v15 + v13) >> a3;
    v20 = v17 - v13;
    v21 = (v16 + v18) >> a3;
    v22 = (v16 + v14) >> a3;
    v23 = (v16 + v20 + v15) >> a3;
  }

  else
  {
    LODWORD(v23) = 0;
    LODWORD(v22) = 0;
    LODWORD(v21) = 0;
    LODWORD(v19) = 0;
  }

  a2[2] = v22;
  a2[3] = v23;
  *a2 = v19;
  a2[1] = v21;
  return result;
}

double sub_277BAC98C(int *a1, _DWORD *a2, int a3, uint64_t a4)
{
  v4 = &dword_277C42240[64 * a3 - 640];
  v5 = a1[7];
  *a2 = v5;
  v6 = *a1;
  a2[1] = *a1;
  v7 = a1[5];
  a2[2] = v7;
  v8 = a1[2];
  a2[3] = v8;
  v9 = a1[3];
  a2[4] = v9;
  v10 = a1[4];
  a2[5] = v10;
  v11 = a1[1];
  v12 = 1 << (a3 - 1);
  a2[6] = v11;
  v13 = a1[6];
  a2[7] = v13;
  v14 = dword_277C42240[64 * a3 - 636];
  v15 = dword_277C42240[64 * a3 - 580];
  v16 = v12 + v5 * v14 + v6 * v15;
  v17 = v12 + v15 * v5 + -(v14 * v6);
  v18 = v16 >> a3;
  v19 = v17 >> a3;
  LODWORD(v16) = dword_277C42240[64 * a3 - 620];
  v20 = dword_277C42240[64 * a3 - 596];
  v21 = (v12 + v7 * v16 + v8 * v20) >> a3;
  v22 = v12 + v20 * v7 + -(v16 * v8);
  v23 = dword_277C42240[64 * a3 - 604];
  v24 = dword_277C42240[64 * a3 - 612];
  v25 = (v12 + v9 * v23 + v10 * v24) >> a3;
  v26 = (v12 + v24 * v9 + -(v23 * v10)) >> a3;
  v27 = dword_277C42240[64 * a3 - 588];
  v28 = dword_277C42240[64 * a3 - 628];
  v29 = (v12 + v11 * v27 + v13 * v28) >> a3;
  v30 = v12 + v28 * v11 + -(v27 * v13);
  v31 = v25 + v18;
  v32 = *(a4 + 3);
  if (v32 >= 1)
  {
    v33 = 1 << (v32 - 1);
    v34 = v33 - 1;
    v35 = -v33;
    if (v31 < v34)
    {
      LODWORD(v34) = v25 + v18;
    }

    if (v31 >= v35)
    {
      v31 = v34;
    }

    else
    {
      v31 = v35;
    }
  }

  v36 = v22 >> a3;
  v37 = v30 >> a3;
  *a2 = v31;
  v38 = v26 + v19;
  v39 = *(a4 + 3);
  if (v39 >= 1)
  {
    v40 = 1 << (v39 - 1);
    v41 = v40 - 1;
    v42 = -v40;
    if (v38 < v41)
    {
      LODWORD(v41) = v26 + v19;
    }

    if (v38 >= v42)
    {
      v38 = v41;
    }

    else
    {
      v38 = v42;
    }
  }

  a2[1] = v38;
  v43 = v29 + v21;
  v44 = *(a4 + 3);
  if (v44 >= 1)
  {
    v45 = 1 << (v44 - 1);
    v46 = v45 - 1;
    v47 = -v45;
    if (v43 < v46)
    {
      LODWORD(v46) = v29 + v21;
    }

    if (v43 >= v47)
    {
      v43 = v46;
    }

    else
    {
      v43 = v47;
    }
  }

  a2[2] = v43;
  v48 = v37 + v36;
  v49 = *(a4 + 3);
  if (v49 >= 1)
  {
    v50 = 1 << (v49 - 1);
    v51 = v50 - 1;
    v52 = -v50;
    if (v48 < v51)
    {
      LODWORD(v51) = v37 + v36;
    }

    if (v48 >= v52)
    {
      v48 = v51;
    }

    else
    {
      v48 = v52;
    }
  }

  a2[3] = v48;
  v53 = v18 - v25;
  v54 = *(a4 + 3);
  if (v54 >= 1)
  {
    v55 = 1 << (v54 - 1);
    v56 = v55 - 1;
    v57 = -v55;
    if (v53 < v56)
    {
      LODWORD(v56) = v53;
    }

    if (v53 >= v57)
    {
      v53 = v56;
    }

    else
    {
      v53 = v57;
    }
  }

  a2[4] = v53;
  v58 = v19 - v26;
  v59 = *(a4 + 3);
  if (v59 >= 1)
  {
    v60 = 1 << (v59 - 1);
    v61 = v60 - 1;
    v62 = -v60;
    if (v58 < v61)
    {
      LODWORD(v61) = v58;
    }

    if (v58 >= v62)
    {
      v58 = v61;
    }

    else
    {
      v58 = v62;
    }
  }

  a2[5] = v58;
  v63 = v21 - v29;
  v64 = *(a4 + 3);
  if (v64 >= 1)
  {
    v65 = 1 << (v64 - 1);
    v66 = v65 - 1;
    v67 = -v65;
    if (v63 < v66)
    {
      LODWORD(v66) = v63;
    }

    if (v63 >= v67)
    {
      v63 = v66;
    }

    else
    {
      v63 = v67;
    }
  }

  a2[6] = v63;
  v68 = v36 - v37;
  v69 = *(a4 + 3);
  if (v69 >= 1)
  {
    v70 = 1 << (v69 - 1);
    v71 = v70 - 1;
    v72 = -v70;
    if (v68 < v71)
    {
      LODWORD(v71) = v68;
    }

    if (v68 >= v72)
    {
      v68 = v71;
    }

    else
    {
      v68 = v72;
    }
  }

  v73 = a3;
  a2[7] = v68;
  v74 = *a2;
  v75 = dword_277C42240[64 * a3 - 624];
  v76 = v4[48];
  v77 = v58 * v76;
  v78 = v12 + v53 * v75;
  v79 = v76 * v53;
  v80 = v68 * v75;
  v81 = v12 + -(v76 * v63);
  v82 = v63 * v75;
  v83 = *a2;
  v84 = *(a2 + 1);
  v85 = v84 + v83;
  v86 = *(a4 + 5);
  if (v86 >= 1)
  {
    v87 = 1 << (v86 - 1);
    v88 = v87 - 1;
    v89 = -v87;
    if (v85 < v88)
    {
      LODWORD(v88) = v84 + v83;
    }

    if (v85 >= v89)
    {
      v85 = v88;
    }

    else
    {
      v85 = v89;
    }
  }

  v90 = -(v75 * v58);
  v91 = v12 + v79;
  v92 = v68 * v76;
  v93 = v12 + v82;
  v94 = v78 + v77;
  v95 = v81 + v80;
  *a2 = v85;
  v96 = HIDWORD(v74) + DWORD1(v74);
  v97 = *(a4 + 5);
  if (v97 >= 1)
  {
    v98 = 1 << (v97 - 1);
    v99 = v98 - 1;
    v100 = -v98;
    if (v96 < v99)
    {
      LODWORD(v99) = HIDWORD(v74) + DWORD1(v74);
    }

    if (v96 >= v100)
    {
      v96 = v99;
    }

    else
    {
      v96 = v100;
    }
  }

  v101 = v91 + v90;
  v102 = v93 + v92;
  v103 = v94 >> v73;
  v104 = v95 >> v73;
  a2[1] = v96;
  v105 = v83 - v84;
  v106 = *(a4 + 5);
  if (v106 >= 1)
  {
    v107 = 1 << (v106 - 1);
    v108 = v107 - 1;
    v109 = -v107;
    if (v105 < v108)
    {
      LODWORD(v108) = v105;
    }

    if (v105 >= v109)
    {
      v105 = v108;
    }

    else
    {
      v105 = v109;
    }
  }

  v110 = v101 >> v73;
  v111 = v102 >> v73;
  a2[2] = v105;
  v112 = DWORD1(v74) - HIDWORD(v74);
  v113 = *(a4 + 5);
  if (v113 >= 1)
  {
    v114 = 1 << (v113 - 1);
    v115 = v114 - 1;
    v116 = -v114;
    if (v112 < v115)
    {
      LODWORD(v115) = DWORD1(v74) - HIDWORD(v74);
    }

    if (v112 >= v116)
    {
      v112 = v115;
    }

    else
    {
      v112 = v116;
    }
  }

  a2[3] = v112;
  v117 = v104 + v103;
  v118 = *(a4 + 5);
  if (v118 >= 1)
  {
    v119 = 1 << (v118 - 1);
    v120 = v119 - 1;
    v121 = -v119;
    if (v117 < v120)
    {
      LODWORD(v120) = v104 + v103;
    }

    if (v117 >= v121)
    {
      v117 = v120;
    }

    else
    {
      v117 = v121;
    }
  }

  a2[4] = v117;
  v122 = v111 + v110;
  v123 = *(a4 + 5);
  if (v123 >= 1)
  {
    v124 = 1 << (v123 - 1);
    v125 = v124 - 1;
    v126 = -v124;
    if (v122 < v125)
    {
      LODWORD(v125) = v111 + v110;
    }

    if (v122 >= v126)
    {
      v122 = v125;
    }

    else
    {
      v122 = v126;
    }
  }

  a2[5] = v122;
  v127 = v103 - v104;
  v128 = *(a4 + 5);
  if (v128 >= 1)
  {
    v129 = 1 << (v128 - 1);
    v130 = v129 - 1;
    v131 = -v129;
    if (v127 < v130)
    {
      LODWORD(v130) = v127;
    }

    if (v127 >= v131)
    {
      v127 = v130;
    }

    else
    {
      v127 = v131;
    }
  }

  a2[6] = v127;
  v132 = v110 - v111;
  v133 = *(a4 + 5);
  if (v133 >= 1)
  {
    v134 = 1 << (v133 - 1);
    v135 = v134 - 1;
    v136 = -v134;
    if (v132 < v135)
    {
      LODWORD(v135) = v132;
    }

    if (v132 >= v136)
    {
      v132 = v135;
    }

    else
    {
      v132 = v136;
    }
  }

  result = *a2;
  v138 = v4[32];
  v139 = v12 + v105 * v138;
  v140 = *(a2 + 2);
  v141 = v12 + v127 * v138;
  *a2 = *a2;
  a2[6] = HIDWORD(v140);
  a2[1] = -v140;
  a2[2] = (v141 + v132 * v138) >> v73;
  a2[3] = -((v139 + v112 * v138) >> v73);
  a2[4] = (v139 + -(v138 * v112)) >> v73;
  a2[5] = -((v141 + -(v138 * v132)) >> v73);
  a2[7] = -HIDWORD(result);
  return result;
}

double sub_277BACF68(int *a1, _DWORD *a2, int a3, char *a4)
{
  v4 = a1[15];
  *a2 = v4;
  v5 = *a1;
  a2[1] = *a1;
  v6 = a1[13];
  a2[2] = v6;
  v7 = a1[2];
  a2[3] = v7;
  v8 = a1[11];
  a2[4] = v8;
  v9 = a1[4];
  a2[5] = v9;
  v10 = a1[9];
  a2[6] = v10;
  v11 = a1[6];
  a2[7] = v11;
  v12 = a1[7];
  a2[8] = v12;
  v13 = a1[8];
  a2[9] = v13;
  v14 = a1[5];
  a2[10] = v14;
  v15 = a1[10];
  a2[11] = v15;
  v16 = a1[3];
  a2[12] = v16;
  v17 = a1[12];
  a2[13] = v17;
  v18 = a1[1];
  a2[14] = v18;
  v19 = a1[14];
  a2[15] = v19;
  v20 = dword_277C42240[64 * a3 - 638];
  v21 = dword_277C42240[64 * a3 - 578];
  v22 = 1 << (a3 - 1);
  v23 = (v22 + v4 * v20 + v5 * v21) >> a3;
  v24 = -(v20 * v5);
  v25 = dword_277C42240[64 * a3 - 630];
  v26 = v22 + v21 * v4 + v24;
  v27 = dword_277C42240[64 * a3 - 586];
  v416 = v26 >> a3;
  v413 = (v22 + v6 * v25 + v7 * v27) >> a3;
  v28 = v22 + v27 * v6 + -(v25 * v7);
  v29 = dword_277C42240[64 * a3 - 622];
  v30 = dword_277C42240[64 * a3 - 594];
  v31 = v9 * v30;
  v32 = v22 + v8 * v29;
  v33 = v30 * v8;
  v34 = dword_277C42240[64 * a3 - 614];
  v35 = dword_277C42240[64 * a3 - 602];
  v36 = dword_277C42240[64 * a3 - 606];
  LODWORD(v26) = dword_277C42240[64 * a3 - 610];
  v37 = (v22 + v12 * v36 + v13 * v26) >> a3;
  v414 = (v22 + v26 * v12 + -(v36 * v13)) >> a3;
  v38 = dword_277C42240[64 * a3 - 598];
  LODWORD(v26) = dword_277C42240[64 * a3 - 618];
  v39 = (v22 + v14 * v38 + v15 * v26) >> a3;
  v40 = v22 + v26 * v14 + -(v38 * v15);
  v41 = dword_277C42240[64 * a3 - 590];
  LODWORD(v26) = dword_277C42240[64 * a3 - 626];
  v42 = v17 * v26;
  v43 = v22 + v16 * v41;
  v44 = v26 * v16;
  v45 = dword_277C42240[64 * a3 - 582];
  v46 = dword_277C42240[64 * a3 - 634];
  v411 = v37;
  v412 = v23;
  v47 = v37 + v23;
  v48 = a4[3];
  if (v48 >= 1)
  {
    v49 = 1 << (v48 - 1);
    v50 = v49 - 1;
    v51 = -v49;
    if (v47 < v50)
    {
      LODWORD(v50) = v47;
    }

    if (v47 >= v51)
    {
      v47 = v50;
    }

    else
    {
      v47 = v51;
    }
  }

  v52 = v10 * v34;
  v53 = v18 * v45;
  v54 = -(v29 * v9);
  v55 = v22 + v33;
  v56 = -(v41 * v17);
  v57 = v22 + v44;
  v58 = v32 + v31;
  v59 = v43 + v42;
  v60 = v28 >> a3;
  v61 = v40 >> a3;
  *a2 = v47;
  v62 = v414 + v416;
  v63 = a4[3];
  if (v63 >= 1)
  {
    v64 = 1 << (v63 - 1);
    v65 = v64 - 1;
    v66 = -v64;
    if (v62 < v65)
    {
      LODWORD(v65) = v414 + v416;
    }

    if (v62 >= v66)
    {
      v62 = v65;
    }

    else
    {
      v62 = v66;
    }
  }

  v67 = v35 * v10;
  v68 = v46 * v18;
  v69 = v11 * v35;
  v70 = v19 * v46;
  v71 = v22 + v53;
  v72 = v55 + v54;
  v73 = v57 + v56;
  v74 = v58 >> a3;
  v75 = v59 >> a3;
  a2[1] = v62;
  v76 = v39;
  v77 = v39 + v413;
  v78 = a4[3];
  if (v78 >= 1)
  {
    v79 = 1 << (v78 - 1);
    v80 = v79 - 1;
    v81 = -v79;
    if (v77 < v80)
    {
      LODWORD(v80) = v39 + v413;
    }

    if (v77 >= v81)
    {
      v77 = v80;
    }

    else
    {
      v77 = v81;
    }
  }

  v82 = -(v34 * v11);
  v83 = v22 + v67;
  v84 = -(v45 * v19);
  v85 = v22 + v68;
  v86 = v22 + v52 + v69;
  v87 = v72 >> a3;
  v88 = v73 >> a3;
  a2[2] = v77;
  v89 = v61 + v60;
  v90 = a4[3];
  if (v90 >= 1)
  {
    v91 = 1 << (v90 - 1);
    v92 = v91 - 1;
    v93 = -v91;
    if (v89 < v92)
    {
      LODWORD(v92) = v61 + v60;
    }

    if (v89 >= v93)
    {
      v89 = v92;
    }

    else
    {
      v89 = v93;
    }
  }

  v94 = v83 + v82;
  v95 = v85 + v84;
  v96 = v86 >> a3;
  v97 = (v71 + v70) >> a3;
  a2[3] = v89;
  v98 = v75 + v74;
  v99 = a4[3];
  if (v99 >= 1)
  {
    v100 = 1 << (v99 - 1);
    v101 = v100 - 1;
    v102 = -v100;
    if (v98 < v101)
    {
      LODWORD(v101) = v75 + v74;
    }

    if (v98 >= v102)
    {
      v98 = v101;
    }

    else
    {
      v98 = v102;
    }
  }

  v103 = v94 >> a3;
  v104 = v95 >> a3;
  a2[4] = v98;
  v105 = v88 + v87;
  v106 = a4[3];
  if (v106 >= 1)
  {
    v107 = 1 << (v106 - 1);
    v108 = v107 - 1;
    v109 = -v107;
    if (v105 < v108)
    {
      LODWORD(v108) = v88 + v87;
    }

    if (v105 >= v109)
    {
      v105 = v108;
    }

    else
    {
      v105 = v109;
    }
  }

  a2[5] = v105;
  v110 = v97 + v96;
  v111 = a4[3];
  if (v111 >= 1)
  {
    v112 = 1 << (v111 - 1);
    v113 = v112 - 1;
    v114 = -v112;
    if (v110 < v113)
    {
      LODWORD(v113) = v97 + v96;
    }

    if (v110 >= v114)
    {
      v110 = v113;
    }

    else
    {
      v110 = v114;
    }
  }

  a2[6] = v110;
  v115 = v104 + v103;
  v116 = a4[3];
  if (v116 >= 1)
  {
    v117 = 1 << (v116 - 1);
    v118 = v117 - 1;
    v119 = -v117;
    if (v115 < v118)
    {
      LODWORD(v118) = v104 + v103;
    }

    if (v115 >= v119)
    {
      v115 = v118;
    }

    else
    {
      v115 = v119;
    }
  }

  a2[7] = v115;
  v120 = v412 - v411;
  v121 = a4[3];
  if (v121 >= 1)
  {
    v122 = 1 << (v121 - 1);
    v123 = v122 - 1;
    v124 = -v122;
    if (v120 < v123)
    {
      LODWORD(v123) = v412 - v411;
    }

    if (v120 >= v124)
    {
      v120 = v123;
    }

    else
    {
      v120 = v124;
    }
  }

  a2[8] = v120;
  v125 = v416 - v414;
  v126 = a4[3];
  if (v126 >= 1)
  {
    v127 = 1 << (v126 - 1);
    v128 = v127 - 1;
    v129 = -v127;
    if (v125 < v128)
    {
      LODWORD(v128) = v416 - v414;
    }

    if (v125 >= v129)
    {
      v125 = v128;
    }

    else
    {
      v125 = v129;
    }
  }

  a2[9] = v125;
  v130 = v413 - v76;
  v131 = a4[3];
  if (v131 >= 1)
  {
    v132 = 1 << (v131 - 1);
    v133 = v132 - 1;
    v134 = -v132;
    if (v130 < v133)
    {
      LODWORD(v133) = v413 - v76;
    }

    if (v130 >= v134)
    {
      v130 = v133;
    }

    else
    {
      v130 = v134;
    }
  }

  v417 = v130;
  a2[10] = v130;
  v135 = v60 - v61;
  v136 = a4[3];
  if (v136 >= 1)
  {
    v137 = 1 << (v136 - 1);
    v138 = v137 - 1;
    v139 = -v137;
    if (v135 < v138)
    {
      LODWORD(v138) = v60 - v61;
    }

    if (v135 >= v139)
    {
      v135 = v138;
    }

    else
    {
      v135 = v139;
    }
  }

  a2[11] = v135;
  v140 = v74 - v75;
  v141 = a4[3];
  if (v141 >= 1)
  {
    v142 = 1 << (v141 - 1);
    v143 = v142 - 1;
    v144 = -v142;
    if (v140 < v143)
    {
      LODWORD(v143) = v74 - v75;
    }

    if (v140 >= v144)
    {
      v140 = v143;
    }

    else
    {
      v140 = v144;
    }
  }

  a2[12] = v140;
  v145 = v87 - v88;
  v146 = a4[3];
  if (v146 >= 1)
  {
    v147 = 1 << (v146 - 1);
    v148 = v147 - 1;
    v149 = -v147;
    if (v145 < v148)
    {
      LODWORD(v148) = v87 - v88;
    }

    if (v145 >= v149)
    {
      v145 = v148;
    }

    else
    {
      v145 = v149;
    }
  }

  a2[13] = v145;
  v150 = v96 - v97;
  v151 = a4[3];
  if (v151 >= 1)
  {
    v152 = 1 << (v151 - 1);
    v153 = v152 - 1;
    v154 = -v152;
    if (v150 < v153)
    {
      LODWORD(v153) = v96 - v97;
    }

    if (v150 >= v154)
    {
      v150 = v153;
    }

    else
    {
      v150 = v154;
    }
  }

  a2[14] = v150;
  v155 = v103 - v104;
  v156 = a4[3];
  if (v156 >= 1)
  {
    v157 = 1 << (v156 - 1);
    v158 = v157 - 1;
    v159 = -v157;
    if (v155 < v158)
    {
      LODWORD(v158) = v103 - v104;
    }

    if (v155 >= v159)
    {
      v155 = v158;
    }

    else
    {
      v155 = v159;
    }
  }

  a2[15] = v155;
  v161 = *a2;
  v160 = *(a2 + 1);
  v162 = dword_277C42240[64 * a3 - 632];
  v163 = dword_277C42240[64 * a3 - 584];
  v164 = dword_277C42240[64 * a3 - 600];
  v165 = dword_277C42240[64 * a3 - 616];
  v166 = *a2;
  v167 = v160 + v166;
  v168 = a4[5];
  if (v168 >= 1)
  {
    v169 = 1 << (v168 - 1);
    v170 = v169 - 1;
    v171 = -v169;
    if (v167 < v170)
    {
      LODWORD(v170) = v160 + v166;
    }

    if (v167 >= v171)
    {
      v167 = v170;
    }

    else
    {
      v167 = v171;
    }
  }

  *a2 = v167;
  v172 = DWORD1(v160) + DWORD1(v161);
  v173 = a4[5];
  if (v173 >= 1)
  {
    v174 = 1 << (v173 - 1);
    v175 = v174 - 1;
    v176 = -v174;
    if (v172 < v175)
    {
      LODWORD(v175) = DWORD1(v160) + DWORD1(v161);
    }

    if (v172 >= v176)
    {
      v172 = v175;
    }

    else
    {
      v172 = v176;
    }
  }

  a2[1] = v172;
  v177 = DWORD2(v160) + DWORD2(v161);
  v178 = a4[5];
  if (v178 >= 1)
  {
    v179 = 1 << (v178 - 1);
    v180 = v179 - 1;
    v181 = -v179;
    if (v177 < v180)
    {
      LODWORD(v180) = DWORD2(v160) + DWORD2(v161);
    }

    if (v177 >= v181)
    {
      v177 = v180;
    }

    else
    {
      v177 = v181;
    }
  }

  v415 = &dword_277C42240[64 * a3 - 640];
  v182 = v120 * v162;
  v183 = -(v163 * v140);
  a2[2] = v177;
  v184 = HIDWORD(v160) + HIDWORD(v161);
  v185 = a4[5];
  v186 = v135;
  if (v185 >= 1)
  {
    v187 = 1 << (v185 - 1);
    v188 = v187 - 1;
    v189 = -v187;
    if (v184 < v188)
    {
      LODWORD(v188) = HIDWORD(v160) + HIDWORD(v161);
    }

    if (v184 >= v189)
    {
      v184 = v188;
    }

    else
    {
      v184 = v189;
    }
  }

  v190 = v163 * v120;
  v191 = v140 * v162;
  v192 = a3;
  v193 = v125;
  v194 = v125 * v163;
  v195 = v22 + v183;
  a2[3] = v184;
  v196 = v166 - v160;
  v197 = a4[5];
  if (v197 >= 1)
  {
    v198 = 1 << (v197 - 1);
    v199 = v198 - 1;
    v200 = -v198;
    if (v196 < v199)
    {
      LODWORD(v199) = v166 - v160;
    }

    if (v196 >= v200)
    {
      v196 = v199;
    }

    else
    {
      v196 = v200;
    }
  }

  v201 = -(v162 * v193);
  v202 = v145 * v163;
  v203 = v22 + v191;
  v204 = v22 + v182 + v194;
  v205 = v195 + v145 * v162;
  a2[4] = v196;
  v206 = DWORD1(v161) - DWORD1(v160);
  v207 = a4[5];
  if (v207 >= 1)
  {
    v208 = 1 << (v207 - 1);
    v209 = v208 - 1;
    v210 = -v208;
    if (v206 < v209)
    {
      LODWORD(v209) = DWORD1(v161) - DWORD1(v160);
    }

    if (v206 >= v210)
    {
      v206 = v209;
    }

    else
    {
      v206 = v210;
    }
  }

  v211 = v165 * v417;
  v212 = v150 * v164;
  v213 = v186 * v165;
  v214 = v22 + v417 * v164;
  v215 = v155 * v164;
  v216 = v22 + -(v165 * v150);
  v217 = v22 + v190 + v201;
  v218 = v203 + v202;
  v219 = v204 >> v192;
  v220 = v205 >> v192;
  a2[5] = v206;
  v221 = DWORD2(v161) - DWORD2(v160);
  v222 = a4[5];
  if (v222 >= 1)
  {
    v223 = 1 << (v222 - 1);
    v224 = v223 - 1;
    v225 = -v223;
    if (v221 < v224)
    {
      LODWORD(v224) = DWORD2(v161) - DWORD2(v160);
    }

    if (v221 >= v225)
    {
      v221 = v224;
    }

    else
    {
      v221 = v225;
    }
  }

  v226 = -(v164 * v186);
  v227 = v155 * v165;
  v228 = v22 + v212;
  v229 = v214 + v213;
  v230 = v217 >> v192;
  v231 = v218 >> v192;
  a2[6] = v221;
  v232 = HIDWORD(v161) - HIDWORD(v160);
  v233 = a4[5];
  if (v233 >= 1)
  {
    v234 = 1 << (v233 - 1);
    v235 = v234 - 1;
    v236 = -v234;
    if (v232 < v235)
    {
      LODWORD(v235) = HIDWORD(v161) - HIDWORD(v160);
    }

    if (v232 >= v236)
    {
      v232 = v235;
    }

    else
    {
      v232 = v236;
    }
  }

  v237 = v22 + v211 + v226;
  v238 = v228 + v227;
  v239 = v229 >> v192;
  v240 = (v216 + v215) >> v192;
  a2[7] = v232;
  v241 = v220 + v219;
  v242 = a4[5];
  if (v242 >= 1)
  {
    v243 = 1 << (v242 - 1);
    v244 = v243 - 1;
    v245 = -v243;
    if (v241 < v244)
    {
      LODWORD(v244) = v220 + v219;
    }

    if (v241 >= v245)
    {
      v241 = v244;
    }

    else
    {
      v241 = v245;
    }
  }

  v246 = v237 >> v192;
  v247 = v238 >> v192;
  a2[8] = v241;
  v248 = v231 + v230;
  v249 = a4[5];
  if (v249 >= 1)
  {
    v250 = 1 << (v249 - 1);
    v251 = v250 - 1;
    v252 = -v250;
    if (v248 < v251)
    {
      LODWORD(v251) = v231 + v230;
    }

    if (v248 >= v252)
    {
      v248 = v251;
    }

    else
    {
      v248 = v252;
    }
  }

  a2[9] = v248;
  v253 = v240 + v239;
  v254 = a4[5];
  if (v254 >= 1)
  {
    v255 = 1 << (v254 - 1);
    v256 = v255 - 1;
    v257 = -v255;
    if (v253 < v256)
    {
      LODWORD(v256) = v240 + v239;
    }

    if (v253 >= v257)
    {
      v253 = v256;
    }

    else
    {
      v253 = v257;
    }
  }

  a2[10] = v253;
  v258 = v247 + v246;
  v259 = a4[5];
  if (v259 >= 1)
  {
    v260 = 1 << (v259 - 1);
    v261 = v260 - 1;
    v262 = -v260;
    if (v258 < v261)
    {
      LODWORD(v261) = v247 + v246;
    }

    if (v258 >= v262)
    {
      v258 = v261;
    }

    else
    {
      v258 = v262;
    }
  }

  a2[11] = v258;
  v263 = v219 - v220;
  v264 = a4[5];
  if (v264 >= 1)
  {
    v265 = 1 << (v264 - 1);
    v266 = v265 - 1;
    v267 = -v265;
    if (v263 < v266)
    {
      LODWORD(v266) = v263;
    }

    if (v263 >= v267)
    {
      v263 = v266;
    }

    else
    {
      v263 = v267;
    }
  }

  a2[12] = v263;
  v268 = v230 - v231;
  v269 = a4[5];
  if (v269 >= 1)
  {
    v270 = 1 << (v269 - 1);
    v271 = v270 - 1;
    v272 = -v270;
    if (v268 < v271)
    {
      LODWORD(v271) = v268;
    }

    if (v268 >= v272)
    {
      v268 = v271;
    }

    else
    {
      v268 = v272;
    }
  }

  a2[13] = v268;
  v273 = v239 - v240;
  v274 = a4[5];
  if (v274 >= 1)
  {
    v275 = 1 << (v274 - 1);
    v276 = v275 - 1;
    v277 = -v275;
    if (v273 < v276)
    {
      LODWORD(v276) = v273;
    }

    if (v273 >= v277)
    {
      v273 = v276;
    }

    else
    {
      v273 = v277;
    }
  }

  a2[14] = v273;
  v278 = v246 - v247;
  v279 = a4[5];
  if (v279 >= 1)
  {
    v280 = 1 << (v279 - 1);
    v281 = v280 - 1;
    v282 = -v280;
    if (v278 < v281)
    {
      LODWORD(v281) = v246 - v247;
    }

    if (v278 >= v282)
    {
      v278 = v281;
    }

    else
    {
      v278 = v282;
    }
  }

  a2[15] = v278;
  v283 = *a2;
  v284 = v415[16];
  v285 = a2[4];
  v286 = v415[48];
  v287 = v22 + v285 * v284;
  v288 = v286 * v285;
  v289 = v232 * v284;
  v290 = v22 + -(v286 * v221);
  v291 = v221 * v284;
  v292 = *a2;
  v293 = *(a2 + 1);
  v294 = v293 + v292;
  v295 = a4[7];
  if (v295 >= 1)
  {
    v296 = 1 << (v295 - 1);
    v297 = v296 - 1;
    v298 = -v296;
    if (v294 < v297)
    {
      LODWORD(v297) = v293 + v292;
    }

    if (v294 >= v298)
    {
      v294 = v297;
    }

    else
    {
      v294 = v298;
    }
  }

  v299 = v22 + v288;
  v300 = v232 * v286;
  v301 = v22 + v291;
  v302 = v290 + v289;
  v303 = *(a2 + 2);
  *a2 = v294;
  v304 = HIDWORD(v283) + DWORD1(v283);
  v305 = a4[7];
  if (v305 >= 1)
  {
    v306 = 1 << (v305 - 1);
    v307 = v306 - 1;
    v308 = -v306;
    if (v304 < v307)
    {
      LODWORD(v307) = HIDWORD(v283) + DWORD1(v283);
    }

    if (v304 >= v308)
    {
      v304 = v307;
    }

    else
    {
      v304 = v308;
    }
  }

  v309 = v299 + -(v284 * v206);
  v310 = v301 + v300;
  v311 = (v287 + v206 * v286) >> v192;
  v312 = v302 >> v192;
  a2[1] = v304;
  v313 = v292 - v293;
  v314 = a4[7];
  if (v314 >= 1)
  {
    v315 = 1 << (v314 - 1);
    v316 = v315 - 1;
    v317 = -v315;
    if (v313 < v316)
    {
      LODWORD(v316) = v313;
    }

    if (v313 >= v317)
    {
      v313 = v316;
    }

    else
    {
      v313 = v317;
    }
  }

  v318 = v309 >> v192;
  v319 = v310 >> v192;
  a2[2] = v313;
  v320 = DWORD1(v283) - HIDWORD(v283);
  v321 = a4[7];
  if (v321 >= 1)
  {
    v322 = 1 << (v321 - 1);
    v323 = v322 - 1;
    v324 = -v322;
    if (v320 < v323)
    {
      LODWORD(v323) = DWORD1(v283) - HIDWORD(v283);
    }

    if (v320 >= v324)
    {
      v320 = v323;
    }

    else
    {
      v320 = v324;
    }
  }

  a2[3] = v320;
  v325 = v312 + v311;
  v326 = a4[7];
  if (v326 >= 1)
  {
    v327 = 1 << (v326 - 1);
    v328 = v327 - 1;
    v329 = -v327;
    if (v325 < v328)
    {
      LODWORD(v328) = v312 + v311;
    }

    if (v325 >= v329)
    {
      v325 = v328;
    }

    else
    {
      v325 = v329;
    }
  }

  a2[4] = v325;
  v330 = v319 + v318;
  v331 = a4[7];
  if (v331 >= 1)
  {
    v332 = 1 << (v331 - 1);
    v333 = v332 - 1;
    v334 = -v332;
    if (v330 < v333)
    {
      LODWORD(v333) = v319 + v318;
    }

    if (v330 >= v334)
    {
      v330 = v333;
    }

    else
    {
      v330 = v334;
    }
  }

  a2[5] = v330;
  v335 = v311 - v312;
  v336 = a4[7];
  if (v336 >= 1)
  {
    v337 = 1 << (v336 - 1);
    v338 = v337 - 1;
    v339 = -v337;
    if (v335 < v338)
    {
      LODWORD(v338) = v335;
    }

    if (v335 >= v339)
    {
      v335 = v338;
    }

    else
    {
      v335 = v339;
    }
  }

  v340 = -(v286 * v273);
  a2[6] = v335;
  v341 = v318 - v319;
  v342 = a4[7];
  if (v342 >= 1)
  {
    v343 = 1 << (v342 - 1);
    v344 = v343 - 1;
    v345 = -v343;
    if (v341 < v344)
    {
      LODWORD(v344) = v341;
    }

    if (v341 >= v345)
    {
      v341 = v344;
    }

    else
    {
      v341 = v345;
    }
  }

  v346 = v263 * v286;
  v347 = v273 * v284;
  v348 = v268 * v286;
  v349 = v278 * v284;
  a2[7] = v341;
  v350 = DWORD2(v303) + v303;
  v351 = a4[7];
  if (v351 >= 1)
  {
    v352 = 1 << (v351 - 1);
    v353 = v352 - 1;
    v354 = -v352;
    if (v350 < v353)
    {
      LODWORD(v353) = DWORD2(v303) + v303;
    }

    if (v350 >= v354)
    {
      v350 = v353;
    }

    else
    {
      v350 = v354;
    }
  }

  v355 = -(v284 * v268);
  v356 = v278 * v286;
  v357 = v22 + v263 * v284 + v348;
  v358 = v22 + v340 + v349;
  a2[8] = v350;
  v359 = HIDWORD(v303) + DWORD1(v303);
  v360 = a4[7];
  if (v360 >= 1)
  {
    v361 = 1 << (v360 - 1);
    v362 = v361 - 1;
    v363 = -v361;
    if (v359 < v362)
    {
      LODWORD(v362) = HIDWORD(v303) + DWORD1(v303);
    }

    if (v359 >= v363)
    {
      v359 = v362;
    }

    else
    {
      v359 = v363;
    }
  }

  v364 = v22 + v346 + v355;
  v365 = v22 + v347 + v356;
  v366 = v357 >> v192;
  v367 = v358 >> v192;
  a2[9] = v359;
  v368 = v303 - DWORD2(v303);
  v369 = a4[7];
  if (v369 >= 1)
  {
    v370 = 1 << (v369 - 1);
    v371 = v370 - 1;
    v372 = -v370;
    if (v368 < v371)
    {
      LODWORD(v371) = v303 - DWORD2(v303);
    }

    if (v368 >= v372)
    {
      v368 = v371;
    }

    else
    {
      v368 = v372;
    }
  }

  v373 = v364 >> v192;
  v374 = v365 >> v192;
  a2[10] = v368;
  v375 = DWORD1(v303) - HIDWORD(v303);
  v376 = a4[7];
  if (v376 >= 1)
  {
    v377 = 1 << (v376 - 1);
    v378 = v377 - 1;
    v379 = -v377;
    if (v375 < v378)
    {
      LODWORD(v378) = DWORD1(v303) - HIDWORD(v303);
    }

    if (v375 >= v379)
    {
      v375 = v378;
    }

    else
    {
      v375 = v379;
    }
  }

  a2[11] = v375;
  v380 = v367 + v366;
  v381 = a4[7];
  if (v381 >= 1)
  {
    v382 = 1 << (v381 - 1);
    v383 = v382 - 1;
    v384 = -v382;
    if (v380 < v383)
    {
      LODWORD(v383) = v367 + v366;
    }

    if (v380 >= v384)
    {
      v380 = v383;
    }

    else
    {
      v380 = v384;
    }
  }

  a2[12] = v380;
  v385 = v374 + v373;
  v386 = a4[7];
  if (v386 >= 1)
  {
    v387 = 1 << (v386 - 1);
    v388 = v387 - 1;
    v389 = -v387;
    if (v385 < v388)
    {
      LODWORD(v388) = v374 + v373;
    }

    if (v385 >= v389)
    {
      v385 = v388;
    }

    else
    {
      v385 = v389;
    }
  }

  a2[13] = v385;
  v390 = v366 - v367;
  v391 = a4[7];
  if (v391 >= 1)
  {
    v392 = 1 << (v391 - 1);
    v393 = v392 - 1;
    v394 = -v392;
    if (v390 < v393)
    {
      LODWORD(v393) = v390;
    }

    if (v390 >= v394)
    {
      v390 = v393;
    }

    else
    {
      v390 = v394;
    }
  }

  a2[14] = v390;
  v395 = v373 - v374;
  v396 = a4[7];
  if (v396 >= 1)
  {
    v397 = 1 << (v396 - 1);
    v398 = v397 - 1;
    v399 = -v397;
    if (v395 < v398)
    {
      LODWORD(v398) = v395;
    }

    if (v395 >= v399)
    {
      v395 = v398;
    }

    else
    {
      v395 = v399;
    }
  }

  v400 = v415[32];
  v401 = v22 + v313 * v400;
  result = *a2;
  v403 = (v401 + v320 * v400) >> v192;
  v404 = (v401 + -(v400 * v320)) >> v192;
  v405 = *(a2 + 2);
  v406 = v22 + v335 * v400;
  v407 = *(a2 + 4);
  v408 = v22 + v368 * v400;
  v409 = *(a2 + 6);
  v410 = v22 + v390 * v400;
  a2[14] = HIDWORD(v407);
  a2[1] = -v407;
  *a2 = LODWORD(result);
  a2[2] = v409;
  a2[12] = HIDWORD(v405);
  a2[3] = -v405;
  a2[4] = (v406 + v341 * v400) >> v192;
  a2[5] = -((v410 + v395 * v400) >> v192);
  a2[6] = (v408 + v375 * v400) >> v192;
  a2[7] = -v403;
  a2[8] = v404;
  a2[9] = -((v408 + -(v400 * v375)) >> v192);
  a2[10] = (v410 + -(v400 * v395)) >> v192;
  a2[11] = -((v406 + -(v400 * v341)) >> v192);
  a2[13] = -HIDWORD(v409);
  a2[15] = -HIDWORD(result);
  return result;
}

uint64_t sub_277BADFF8(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + i) = (5793 * *(result + i) + 2048) >> 12;
  }

  return result;
}

uint64_t sub_277BAE024(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 32; i += 4)
  {
    *(a2 + i) = 2 * *(result + i);
  }

  return result;
}

uint64_t sub_277BAE044(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 64; i += 4)
  {
    *(a2 + i) = (11586 * *(result + i) + 2048) >> 12;
  }

  return result;
}

uint64_t sub_277BAE070(__int32 *a1, __int32 *a2, unsigned int a3, char *a4)
{
  *a2 = *a1;
  a2[1] = a1[32];
  a2[2] = a1[16];
  a2[3] = a1[48];
  a2[4] = a1[8];
  a2[5] = a1[40];
  a2[6] = a1[24];
  a2[7] = a1[56];
  a2[8] = a1[4];
  a2[9] = a1[36];
  a2[10] = a1[20];
  a2[11] = a1[52];
  a2[12] = a1[12];
  a2[13] = a1[44];
  a2[14] = a1[28];
  a2[15] = a1[60];
  a2[16] = a1[2];
  a2[17] = a1[34];
  a2[18] = a1[18];
  a2[19] = a1[50];
  a2[20] = a1[10];
  a2[21] = a1[42];
  a2[22] = a1[26];
  a2[23] = a1[58];
  a2[24] = a1[6];
  a2[25] = a1[38];
  a2[26] = a1[22];
  a2[27] = a1[54];
  a2[28] = a1[14];
  a2[29] = a1[46];
  a2[30] = a1[30];
  a2[31] = a1[62];
  a2[32] = a1[1];
  a2[33] = a1[33];
  a2[34] = a1[17];
  a2[35] = a1[49];
  a2[36] = a1[9];
  a2[37] = a1[41];
  a2[38] = a1[25];
  a2[39] = a1[57];
  a2[40] = a1[5];
  a2[41] = a1[37];
  a2[42] = a1[21];
  a2[43] = a1[53];
  a2[44] = a1[13];
  a2[45] = a1[45];
  a2[46] = a1[29];
  a2[47] = a1[61];
  a2[48] = a1[3];
  a2[49] = a1[35];
  a2[50] = a1[19];
  a2[51] = a1[51];
  a2[52] = a1[11];
  a2[53] = a1[43];
  a2[54] = a1[27];
  a2[55] = a1[59];
  a2[56] = a1[7];
  a2[57] = a1[39];
  a2[58] = a1[23];
  a2[59] = a1[55];
  v7 = a1[15];
  a2[60] = v7;
  v8 = v7;
  v1694 = v7;
  v9 = a1[47];
  a2[61] = v9;
  v10 = v9;
  v1700 = v9;
  v11 = a1[31];
  a2[62] = v11;
  v12 = v11;
  v1712 = v11;
  v13 = a1[63];
  a2[63] = v13;
  v1728 = dword_277C42240[64 * a3 - 577];
  v1719 = dword_277C42240[64 * a3 - 639];
  v1724 = a2[32];
  v1709 = a2[33];
  v14 = 1 << (a3 - 1);
  v1715 = dword_277C42240[64 * a3 - 609];
  v1707 = dword_277C42240[64 * a3 - 607];
  v1730 = (v14 + v1724 * v1728 + -(v1719 * v13)) >> a3;
  v1733 = (v14 + v1709 * v1715 + -(v1707 * v12)) >> a3;
  v1704 = dword_277C42240[64 * a3 - 593];
  v1698 = dword_277C42240[64 * a3 - 623];
  v1702 = a2[34];
  v1696 = dword_277C42240[64 * a3 - 625];
  v1692 = dword_277C42240[64 * a3 - 591];
  v1693 = a2[35];
  v1735 = (v14 + v1702 * v1704 + -(v1698 * v10)) >> a3;
  v1737 = (v14 + v1693 * v1696 + -(v1692 * v8)) >> a3;
  v1690 = a2[36];
  v1691 = dword_277C42240[64 * a3 - 585];
  v1688 = dword_277C42240[64 * a3 - 631];
  v1689 = a2[59];
  v1685 = a2[58];
  v1686 = a2[37];
  v1687 = dword_277C42240[64 * a3 - 617];
  v1741 = (v14 + v1686 * v1687 + -(dword_277C42240[64 * a3 - 599] * v1685)) >> a3;
  v1684 = dword_277C42240[64 * a3 - 601];
  v1683 = a2[38];
  v1681 = dword_277C42240[64 * a3 - 615];
  v1682 = a2[57];
  v1678 = a2[56];
  v1679 = a2[39];
  v1680 = dword_277C42240[64 * a3 - 633];
  v15 = dword_277C42240[64 * a3 - 583];
  v1745 = (v14 + v1679 * v1680 + -(v15 * v1678)) >> a3;
  v1677 = dword_277C42240[64 * a3 - 581];
  v16 = a2[41];
  v1676 = a2[40];
  v17 = a2[54];
  v1674 = dword_277C42240[64 * a3 - 635];
  v1675 = a2[55];
  v18 = dword_277C42240[64 * a3 - 613];
  v19 = dword_277C42240[64 * a3 - 603];
  v1749 = (v14 + v16 * v18 + -(v19 * v17)) >> a3;
  v20 = dword_277C42240[64 * a3 - 597];
  v21 = a2[42];
  v22 = a2[43];
  v23 = dword_277C42240[64 * a3 - 619];
  v24 = a2[52];
  v25 = a2[53];
  v26 = dword_277C42240[64 * a3 - 629];
  v27 = dword_277C42240[64 * a3 - 587];
  v1751 = (v14 + v21 * v20 + -(v23 * v25)) >> a3;
  v1753 = (v14 + v22 * v26 + -(v27 * v24)) >> a3;
  v28 = dword_277C42240[64 * a3 - 589];
  v29 = a2[44];
  v30 = a2[45];
  v31 = dword_277C42240[64 * a3 - 627];
  v32 = a2[50];
  v33 = a2[51];
  v34 = dword_277C42240[64 * a3 - 621];
  v35 = dword_277C42240[64 * a3 - 595];
  v36.i32[0] = dword_277C42240[64 * a3 - 637];
  v36.i32[1] = dword_277C42240[64 * a3 - 605];
  v37.i64[0] = __PAIR64__(v36.u32[0], v36.u32[1]);
  v1755 = (v14 + v29 * v28 + -(v31 * v33)) >> a3;
  v1757 = (v14 + v30 * v34 + -(v35 * v32)) >> a3;
  v37.i32[2] = dword_277C42240[64 * a3 - 579];
  v38.i32[0] = v37.i32[2];
  v38.i32[1] = dword_277C42240[64 * a3 - 611];
  v37.i32[3] = v38.i32[1];
  v1763 = (v14 + v35 * v30 + v32 * v34) >> a3;
  v1765 = (v14 + v31 * v29 + v33 * v28) >> a3;
  v1767 = (v14 + v27 * v22 + v24 * v26) >> a3;
  v1768 = (v14 + v23 * v21 + v25 * v20) >> a3;
  v1770 = (v14 + v19 * v16 + v17 * v18) >> a3;
  v1774 = (v14 + v15 * v1679 + v1678 * v1680) >> a3;
  v1777 = (v14 + dword_277C42240[64 * a3 - 599] * v1686 + v1685 * v1687) >> a3;
  v1788 = *(a2 + 2);
  v1793 = *(a2 + 3);
  v1798 = *(a2 + 4);
  v1799 = *(a2 + 5);
  v1801 = *(a2 + 6);
  v1803 = *(a2 + 7);
  v1781 = (v14 + v1692 * v1693 + v1694 * v1696) >> a3;
  v1782 = (v14 + v1698 * v1702 + v1700 * v1704) >> a3;
  v1784 = (v14 + v1707 * v1709 + v1712 * v1715) >> a3;
  v1786 = (v14 + v1719 * v1724 + v13 * v1728) >> a3;
  v39 = *(a2 + 1);
  *a2 = *a2;
  *(a2 + 1) = v39;
  *(a2 + 2) = v1788;
  *(a2 + 3) = v1793;
  v40 = dword_277C42240[64 * a3 - 578];
  v41 = dword_277C42240[64 * a3 - 638];
  a2[16] = (v14 + (v1798.i32[0] * v40) + -(v41 * v1803.i32[3])) >> a3;
  v42 = dword_277C42240[64 * a3 - 610];
  v43 = dword_277C42240[64 * a3 - 606];
  a2[17] = (v14 + (v1798.i32[1] * v42) + -(v43 * v1803.i32[2])) >> a3;
  v44 = dword_277C42240[64 * a3 - 594];
  v45 = dword_277C42240[64 * a3 - 622];
  a2[18] = (v14 + (v1798.i32[2] * v44) + -(v45 * v1803.i32[1])) >> a3;
  v46 = dword_277C42240[64 * a3 - 626];
  v47 = dword_277C42240[64 * a3 - 590];
  v1713 = (v14 + (v1798.i32[3] * v46) + -(v47 * v1803.i32[0])) >> a3;
  a2[19] = v1713;
  v48 = dword_277C42240[64 * a3 - 586];
  v49 = dword_277C42240[64 * a3 - 630];
  a2[20] = (v14 + (v1799.i32[0] * v48) + -(v49 * v1801.i32[3])) >> a3;
  v50 = dword_277C42240[64 * a3 - 618];
  v51 = dword_277C42240[64 * a3 - 598];
  a2[21] = (v14 + (v1799.i32[1] * v50) + -(v51 * v1801.i32[2])) >> a3;
  v52 = dword_277C42240[64 * a3 - 602];
  v53 = dword_277C42240[64 * a3 - 614];
  a2[22] = (v14 + v1799.i32[2] * v52 + -(v53 * v1801.i32[1])) >> a3;
  v54.i64[0] = __PAIR64__(v43, v41);
  v1725 = &dword_277C42240[64 * a3 - 640];
  v55 = dword_277C42240[64 * a3 - 582];
  v54.i64[1] = __PAIR64__(v47, v45);
  v56.i64[0] = __PAIR64__(v44, v46);
  v57.i64[0] = __PAIR64__(v51, v49);
  v56.i64[1] = __PAIR64__(v40, v42);
  v58.i32[0] = dword_277C42240[64 * a3 - 634];
  v58.i32[1] = v52;
  v58.i64[1] = __PAIR64__(v48, v50);
  v59 = vmulq_s32(v1801, v58);
  v60 = vmulq_s32(v1803, v56);
  v58.i64[0] = *(a2 + 23);
  v56.i64[0] = *(a2 + 24);
  v61 = vrev64q_s32(v58);
  v62 = vmulq_s32(v37, vzip1q_s32(v58, v61));
  v1729 = v14;
  v63 = vdupq_n_s64(v14);
  v64 = vaddw_s32(vaddw_s32(v63, *v62.i8), vrev64_s32(vneg_s32(vmul_s32(v38, *v56.i8))));
  v65 = a3;
  v66 = vaddw_s32(vaddw_high_s32(v63, v62), vmul_s32(*v56.i8, v36));
  v67 = vnegq_s64(vdupq_n_s64(a3));
  v1759 = vuzp1q_s32(vshlq_s64(v64, v67), vshlq_s64(v66, v67));
  v57.i64[1] = __PAIR64__(v55, v53);
  a2[23] = (v14 + v1799.i32[3] * dword_277C42240[64 * a3 - 634] + -(v55 * v1801.i32[0])) >> a3;
  v68 = vmulq_s32(v57, v1799);
  v69 = vmulq_s32(v54, v1798);
  v70 = vaddw_high_s32(v63, v68);
  v71 = vaddw_s32(v63, *v68.i8);
  v72 = vaddw_s32(v63, *v69.i8);
  v73 = vaddw_high_s32(v63, v69);
  v74 = vshlq_s64(vaddw_s32(vextq_s8(v73, v73, 8uLL), *v60.i8), v67);
  v75 = vuzp1q_s32(vshlq_s64(vaddw_s32(vextq_s8(v70, v70, 8uLL), *v59.i8), v67), vshlq_s64(vaddw_high_s32(vextq_s8(v71, v71, 8uLL), v59), v67));
  v76 = vuzp1q_s32(v74, vshlq_s64(vaddw_high_s32(vextq_s8(v72, v72, 8uLL), v60), v67));
  *(a2 + 6) = v75;
  *(a2 + 7) = v76;
  v77 = v1733 + v1730;
  v78 = a4[3];
  if (v78 >= 1)
  {
    v79 = 1 << (v78 - 1);
    v80 = v79 - 1;
    v81 = -v79;
    if (v77 < v80)
    {
      LODWORD(v80) = v1733 + v1730;
    }

    if (v77 >= v81)
    {
      v77 = v80;
    }

    else
    {
      v77 = v81;
    }
  }

  a2[32] = v77;
  v82 = v1730 - v1733;
  v83 = a4[3];
  v1716 = v77;
  if (v83 >= 1)
  {
    v84 = 1 << (v83 - 1);
    v85 = v84 - 1;
    v86 = -v84;
    if (v82 < v85)
    {
      LODWORD(v85) = v1730 - v1733;
    }

    if (v82 >= v86)
    {
      v82 = v85;
    }

    else
    {
      v82 = v86;
    }
  }

  v1722 = v82;
  a2[33] = v82;
  v87 = v1737 - v1735;
  v88 = a4[3];
  if (v88 >= 1)
  {
    v89 = 1 << (v88 - 1);
    v90 = v89 - 1;
    v91 = -v89;
    if (v87 < v90)
    {
      LODWORD(v90) = v1737 - v1735;
    }

    if (v87 >= v91)
    {
      v87 = v90;
    }

    else
    {
      v87 = v91;
    }
  }

  a2[34] = v87;
  v92 = v1737 + v1735;
  v93 = a4[3];
  v1720 = v87;
  if (v93 >= 1)
  {
    v94 = 1 << (v93 - 1);
    v95 = v94 - 1;
    v96 = -v94;
    if (v92 < v95)
    {
      LODWORD(v95) = v1737 + v1735;
    }

    if (v92 >= v96)
    {
      v92 = v95;
    }

    else
    {
      v92 = v96;
    }
  }

  a2[35] = v92;
  v1739 = (v14 + v1690 * v1691 + -(v1688 * v1689)) >> a3;
  v97 = v1741 + v1739;
  v98 = a4[3];
  if (v98 >= 1)
  {
    v99 = 1 << (v98 - 1);
    v100 = v99 - 1;
    v101 = -v99;
    if (v97 < v100)
    {
      LODWORD(v100) = v1741 + v1739;
    }

    if (v97 >= v101)
    {
      v97 = v100;
    }

    else
    {
      v97 = v101;
    }
  }

  a2[36] = v97;
  v102 = v1739 - v1741;
  v103 = a4[3];
  if (v103 >= 1)
  {
    v104 = 1 << (v103 - 1);
    v105 = v104 - 1;
    v106 = -v104;
    if (v102 < v105)
    {
      LODWORD(v105) = v1739 - v1741;
    }

    if (v102 >= v106)
    {
      v102 = v105;
    }

    else
    {
      v102 = v106;
    }
  }

  v1710 = v102;
  a2[37] = v102;
  v1743 = (v14 + v1683 * v1684 + -(v1681 * v1682)) >> a3;
  v107 = v1745 - v1743;
  v108 = a4[3];
  if (v108 >= 1)
  {
    v109 = 1 << (v108 - 1);
    v110 = v109 - 1;
    v111 = -v109;
    if (v107 < v110)
    {
      LODWORD(v110) = v1745 - v1743;
    }

    if (v107 >= v111)
    {
      v107 = v110;
    }

    else
    {
      v107 = v111;
    }
  }

  a2[38] = v107;
  v112 = v1745 + v1743;
  v113 = a4[3];
  v1708 = v107;
  if (v113 >= 1)
  {
    v114 = 1 << (v113 - 1);
    v115 = v114 - 1;
    v116 = -v114;
    if (v112 < v115)
    {
      LODWORD(v115) = v1745 + v1743;
    }

    if (v112 >= v116)
    {
      v112 = v115;
    }

    else
    {
      v112 = v116;
    }
  }

  a2[39] = v112;
  v1747 = (v14 + v1676 * v1677 + -(v1674 * v1675)) >> a3;
  v117 = v1749 + v1747;
  v118 = a4[3];
  if (v118 >= 1)
  {
    v119 = 1 << (v118 - 1);
    v120 = v119 - 1;
    v121 = -v119;
    if (v117 < v120)
    {
      LODWORD(v120) = v1749 + v1747;
    }

    if (v117 >= v121)
    {
      v117 = v120;
    }

    else
    {
      v117 = v121;
    }
  }

  a2[40] = v117;
  v122 = v1747 - v1749;
  v123 = a4[3];
  if (v123 >= 1)
  {
    v124 = 1 << (v123 - 1);
    v125 = v124 - 1;
    v126 = -v124;
    if (v122 < v125)
    {
      LODWORD(v125) = v1747 - v1749;
    }

    if (v122 >= v126)
    {
      v122 = v125;
    }

    else
    {
      v122 = v126;
    }
  }

  v1705 = v122;
  a2[41] = v122;
  v127 = v1753 - v1751;
  v128 = a4[3];
  if (v128 >= 1)
  {
    v129 = 1 << (v128 - 1);
    v130 = v129 - 1;
    v131 = -v129;
    if (v127 < v130)
    {
      LODWORD(v130) = v1753 - v1751;
    }

    if (v127 >= v131)
    {
      v127 = v130;
    }

    else
    {
      v127 = v131;
    }
  }

  a2[42] = v127;
  v132 = v1753 + v1751;
  v133 = a4[3];
  v1703 = v127;
  if (v133 >= 1)
  {
    v134 = 1 << (v133 - 1);
    v135 = v134 - 1;
    v136 = -v134;
    if (v132 < v135)
    {
      LODWORD(v135) = v1753 + v1751;
    }

    if (v132 >= v136)
    {
      v132 = v135;
    }

    else
    {
      v132 = v136;
    }
  }

  a2[43] = v132;
  v137 = v1757 + v1755;
  v138 = a4[3];
  if (v138 >= 1)
  {
    v139 = 1 << (v138 - 1);
    v140 = v139 - 1;
    v141 = -v139;
    if (v137 < v140)
    {
      LODWORD(v140) = v1757 + v1755;
    }

    if (v137 >= v141)
    {
      v137 = v140;
    }

    else
    {
      v137 = v141;
    }
  }

  a2[44] = v137;
  v142 = v1755 - v1757;
  v143 = a4[3];
  if (v143 >= 1)
  {
    v144 = 1 << (v143 - 1);
    v145 = v144 - 1;
    v146 = -v144;
    if (v142 < v145)
    {
      LODWORD(v145) = v1755 - v1757;
    }

    if (v142 >= v146)
    {
      v142 = v145;
    }

    else
    {
      v142 = v146;
    }
  }

  v1701 = v142;
  a2[45] = v142;
  v147 = v1759.i32[1] - v1759.i32[0];
  v148 = a4[3];
  if (v148 >= 1)
  {
    v149 = 1 << (v148 - 1);
    v150 = v149 - 1;
    v151 = -v149;
    if (v147 < v150)
    {
      LODWORD(v150) = v1759.i32[1] - v1759.i32[0];
    }

    if (v147 >= v151)
    {
      v147 = v150;
    }

    else
    {
      v147 = v151;
    }
  }

  a2[46] = v147;
  v152 = v1759.i32[1] + v1759.i32[0];
  v153 = a4[3];
  v1699 = v147;
  if (v153 >= 1)
  {
    v154 = 1 << (v153 - 1);
    v155 = v154 - 1;
    v156 = -v154;
    if (v152 < v155)
    {
      LODWORD(v155) = v1759.i32[1] + v1759.i32[0];
    }

    if (v152 >= v156)
    {
      v152 = v155;
    }

    else
    {
      v152 = v156;
    }
  }

  a2[47] = v152;
  v157 = v1759.i32[3] + v1759.i32[2];
  v158 = a4[3];
  if (v158 >= 1)
  {
    v159 = 1 << (v158 - 1);
    v160 = v159 - 1;
    v161 = -v159;
    if (v157 < v160)
    {
      LODWORD(v160) = v1759.i32[3] + v1759.i32[2];
    }

    if (v157 >= v161)
    {
      v157 = v160;
    }

    else
    {
      v157 = v161;
    }
  }

  a2[48] = v157;
  v162 = v1759.i32[2] - v1759.i32[3];
  v163 = a4[3];
  if (v163 >= 1)
  {
    v164 = 1 << (v163 - 1);
    v165 = v164 - 1;
    v166 = -v164;
    if (v162 < v165)
    {
      LODWORD(v165) = v1759.i32[2] - v1759.i32[3];
    }

    if (v162 >= v166)
    {
      v162 = v165;
    }

    else
    {
      v162 = v166;
    }
  }

  v1697 = v162;
  a2[49] = v162;
  v167 = v1765 - v1763;
  v168 = a4[3];
  if (v168 >= 1)
  {
    v169 = 1 << (v168 - 1);
    v170 = v169 - 1;
    v171 = -v169;
    if (v167 < v170)
    {
      LODWORD(v170) = v1765 - v1763;
    }

    if (v167 >= v171)
    {
      v167 = v170;
    }

    else
    {
      v167 = v171;
    }
  }

  a2[50] = v167;
  v172 = v1765 + v1763;
  v173 = a4[3];
  if (v173 >= 1)
  {
    v174 = 1 << (v173 - 1);
    v175 = v174 - 1;
    v176 = -v174;
    if (v172 < v175)
    {
      LODWORD(v175) = v1765 + v1763;
    }

    if (v172 >= v176)
    {
      v172 = v175;
    }

    else
    {
      v172 = v176;
    }
  }

  a2[51] = v172;
  v177 = v1768 + v1767;
  v178 = a4[3];
  if (v178 >= 1)
  {
    v179 = 1 << (v178 - 1);
    v180 = v179 - 1;
    v181 = -v179;
    if (v177 < v180)
    {
      LODWORD(v180) = v1768 + v1767;
    }

    if (v177 >= v181)
    {
      v177 = v180;
    }

    else
    {
      v177 = v181;
    }
  }

  a2[52] = v177;
  v182 = v1767 - v1768;
  v183 = a4[3];
  if (v183 >= 1)
  {
    v184 = 1 << (v183 - 1);
    v185 = v184 - 1;
    v186 = -v184;
    if (v182 < v185)
    {
      LODWORD(v185) = v1767 - v1768;
    }

    if (v182 >= v186)
    {
      v182 = v185;
    }

    else
    {
      v182 = v186;
    }
  }

  a2[53] = v182;
  v1772 = (v14 + v1674 * v1676 + v1675 * v1677) >> a3;
  v187 = v1772 - v1770;
  v188 = a4[3];
  if (v188 >= 1)
  {
    v189 = 1 << (v188 - 1);
    v190 = v189 - 1;
    v191 = -v189;
    if (v187 < v190)
    {
      LODWORD(v190) = v1772 - v1770;
    }

    if (v187 >= v191)
    {
      v187 = v190;
    }

    else
    {
      v187 = v191;
    }
  }

  a2[54] = v187;
  v192 = v1772 + v1770;
  v193 = a4[3];
  if (v193 >= 1)
  {
    v194 = 1 << (v193 - 1);
    v195 = v194 - 1;
    v196 = -v194;
    if (v192 < v195)
    {
      LODWORD(v195) = v1772 + v1770;
    }

    if (v192 >= v196)
    {
      v192 = v195;
    }

    else
    {
      v192 = v196;
    }
  }

  a2[55] = v192;
  v1775 = (v14 + v1681 * v1683 + v1682 * v1684) >> a3;
  v197 = v1775 + v1774;
  v198 = a4[3];
  if (v198 >= 1)
  {
    v199 = 1 << (v198 - 1);
    v200 = v199 - 1;
    v201 = -v199;
    if (v197 < v200)
    {
      LODWORD(v200) = v1775 + v1774;
    }

    if (v197 >= v201)
    {
      v197 = v200;
    }

    else
    {
      v197 = v201;
    }
  }

  a2[56] = v197;
  v202 = v1774 - v1775;
  v203 = a4[3];
  if (v203 >= 1)
  {
    v204 = 1 << (v203 - 1);
    v205 = v204 - 1;
    v206 = -v204;
    if (v202 < v205)
    {
      LODWORD(v205) = v1774 - v1775;
    }

    if (v202 >= v206)
    {
      v202 = v205;
    }

    else
    {
      v202 = v206;
    }
  }

  a2[57] = v202;
  v1779 = (v14 + v1688 * v1690 + v1689 * v1691) >> a3;
  v207 = v1779 - v1777;
  v208 = a4[3];
  if (v208 >= 1)
  {
    v209 = 1 << (v208 - 1);
    v210 = v209 - 1;
    v211 = -v209;
    if (v207 < v210)
    {
      LODWORD(v210) = v1779 - v1777;
    }

    if (v207 >= v211)
    {
      v207 = v210;
    }

    else
    {
      v207 = v211;
    }
  }

  a2[58] = v207;
  v212 = v1779 + v1777;
  v213 = a4[3];
  if (v213 >= 1)
  {
    v214 = 1 << (v213 - 1);
    v215 = v214 - 1;
    v216 = -v214;
    if (v212 < v215)
    {
      LODWORD(v215) = v1779 + v1777;
    }

    if (v212 >= v216)
    {
      v212 = v215;
    }

    else
    {
      v212 = v216;
    }
  }

  a2[59] = v212;
  v217 = v1782 + v1781;
  v218 = a4[3];
  if (v218 >= 1)
  {
    v219 = 1 << (v218 - 1);
    v220 = v219 - 1;
    v221 = -v219;
    if (v217 < v220)
    {
      LODWORD(v220) = v1782 + v1781;
    }

    if (v217 >= v221)
    {
      v217 = v220;
    }

    else
    {
      v217 = v221;
    }
  }

  a2[60] = v217;
  v222 = v1781 - v1782;
  v223 = a4[3];
  if (v223 >= 1)
  {
    v224 = 1 << (v223 - 1);
    v225 = v224 - 1;
    v226 = -v224;
    if (v222 < v225)
    {
      LODWORD(v225) = v1781 - v1782;
    }

    if (v222 >= v226)
    {
      v222 = v225;
    }

    else
    {
      v222 = v226;
    }
  }

  a2[61] = v222;
  v227 = v1786 - v1784;
  v228 = a4[3];
  if (v228 >= 1)
  {
    v229 = 1 << (v228 - 1);
    v230 = v229 - 1;
    v231 = -v229;
    if (v227 < v230)
    {
      LODWORD(v230) = v1786 - v1784;
    }

    if (v227 >= v231)
    {
      v227 = v230;
    }

    else
    {
      v227 = v231;
    }
  }

  a2[62] = v227;
  v232 = v1786 + v1784;
  v233 = a4[3];
  if (v233 >= 1)
  {
    v234 = 1 << (v233 - 1);
    v235 = v234 - 1;
    v236 = -v234;
    if (v232 < v235)
    {
      LODWORD(v235) = v1786 + v1784;
    }

    if (v232 >= v236)
    {
      v232 = v235;
    }

    else
    {
      v232 = v236;
    }
  }

  a2[63] = v232;
  v238 = *(a2 + 1);
  v237.i64[1] = *(a2 + 1);
  v1807 = v238;
  v239 = dword_277C42240[64 * a3 - 580];
  v240 = dword_277C42240[64 * a3 - 636];
  v241 = -v240;
  v242 = a2[8];
  v243 = a2[9];
  v244 = a2[14];
  v245 = a2[15];
  v246 = v1725[28];
  v247 = v1725[36];
  v248 = -v247;
  v1789 = (v14 + v242 * v239 + -(v240 * v245)) >> v65;
  v1791 = (v14 + v243 * v246 + -(v247 * v244)) >> v65;
  v249 = v1725[44];
  v250 = v1725[20];
  v251 = -v250;
  v252 = v1725[12];
  v253 = v1725[52];
  v254 = -v253;
  v237.i64[0] = *(a2 + 5);
  v238.i64[0] = *(a2 + 6);
  v255 = vrev64q_s32(v238);
  v256 = vzip1q_s32(v255, v238);
  v255.i64[0] = __PAIR64__(v252, v249);
  v257 = vextq_s8(v255, vrev64q_s32(v255), 8uLL);
  v255.i64[1] = __PAIR64__(v250, v253);
  v258 = vmulq_s32(v255, vzip1q_s32(v237, vrev64q_s32(v237)));
  v257.i32[0] = -v250;
  v257.i32[1] = -v253;
  v259 = vmulq_s32(v256, v257);
  v267 = vaddw_high_s32(v63, v258);
  v1792 = vuzp1q_s32(vshlq_s64(vaddw_s32(vaddw_s32(v63, *v258.i8), *v259.i8), v67), vshlq_s64(vaddw_high_s32(v267, v259), v67));
  v1695 = v1725[4];
  v1796 = (v1729 + v247 * v243 + v244 * v246) >> v65;
  v1797 = (v1729 + v240 * v242 + v245 * v239) >> v65;
  v260 = a2[16];
  v261 = a2[17];
  v262 = v261 + v260;
  v263 = a4[4];
  v264 = vrev64q_s32(v75);
  v265 = vdup_laneq_s32(v76, 3);
  v266 = vextq_s8(v76, v76, 8uLL).u64[0];
  *v267.i8 = vdup_laneq_s32(v76, 2);
  if (v263 <= 0)
  {
    v287 = v76.i32[0];
    v288 = vmovn_s64(*&v74).i32[1];
    *&v1794[16] = v261 + v260;
    *&v1794[20] = v260 - v261;
    v289 = a2[18];
    v290 = *(a2 + 5);
    v291 = vrev64q_s32(v290);
    v292 = vaddq_s32(v291, v290);
    v293 = vsubq_s32(v291, v290);
    v293.i32[0] = v292.i32[0];
    *&v1794[24] = v1713 - v289;
    *&v1794[28] = v289 + v1713;
    v293.i32[3] = v292.i32[3];
    *&v1794[32] = v293;
    v294 = vaddq_s32(v264, v75);
    v285 = vsubq_s32(v264, v75);
    v285.i32[0] = v294.i32[0];
    v285.i32[3] = v294.i32[3];
    *&v1794[64] = v288 + v287;
    *&v1794[68] = v287 - v288;
    v286.i32[0] = vsub_s32(v265, v266).u32[0];
    v286.i32[1] = vadd_s32(v266, *&v267).i32[1];
  }

  else
  {
    v268 = 1 << (v263 - 1);
    v269 = v260 - v261;
    v270 = a2[18];
    v271.i64[0] = v262;
    v271.i64[1] = v269;
    v272 = v271;
    v271.i64[0] = v1713 - v270;
    v271.i64[1] = v270 + v1713;
    v273 = vdupq_n_s64(-v268);
    v274 = vdupq_n_s64(v268 - 1);
    v275 = vuzp1q_s32(vbslq_s8(vcgtq_s64(v273, v272), v273, vbslq_s8(vcgtq_s64(v274, v272), v272, v274)), vbslq_s8(vcgtq_s64(v273, v271), v273, vbslq_s8(vcgtq_s64(v274, v271), v271, v274)));
    v276 = *(a2 + 5);
    v277 = vrev64q_s32(v276);
    v278 = vaddq_s32(v277, v276);
    v279 = vsubq_s32(v277, v276);
    v271.i64[0] = v278.i32[0];
    v271.i64[1] = v279.i32[1];
    v280 = v271;
    v271.i64[0] = v279.i32[2];
    v271.i64[1] = v278.i32[3];
    *&v1794[16] = v275;
    *&v1794[32] = vuzp1q_s32(vbslq_s8(vcgtq_s64(v273, v280), v273, vbslq_s8(vcgtq_s64(v274, v280), v280, v274)), vbslq_s8(vcgtq_s64(v273, v271), v273, vbslq_s8(vcgtq_s64(v274, v271), v271, v274)));
    v281 = vaddq_s32(v264, v75);
    v282 = vsubq_s32(v264, v75);
    v271.i64[0] = v281.i32[0];
    v271.i64[1] = v282.i32[1];
    v283 = v271;
    v271.i64[0] = v282.i32[2];
    v271.i64[1] = v281.i32[3];
    v61 = vcgtq_s64(v273, v271);
    v284 = vbslq_s8(v61, v273, vbslq_s8(vcgtq_s64(v274, v271), v271, v274));
    *v281.i8 = vrev64_s32(*v76.i8);
    v61.i32[1] = vsub_s32(*&v281, *&v76).i32[1];
    v285 = vuzp1q_s32(vbslq_s8(vcgtq_s64(v273, v283), v273, vbslq_s8(vcgtq_s64(v274, v283), v283, v274)), v284);
    v271.i64[0] = vadd_s32(*v281.i8, *v76.i8).i32[0];
    v271.i64[1] = v61.i32[1];
    *&v1794[64] = vmovn_s64(vbslq_s8(vcgtq_s64(v273, v271), v273, vbslq_s8(vcgtq_s64(v274, v271), v271, v274)));
    v271.i64[0] = vsub_s32(v265, v266).i32[0];
    v271.i64[1] = vadd_s32(v266, *&v267).i32[1];
    v286 = vmovn_s64(vbslq_s8(vcgtq_s64(v273, v271), v273, vbslq_s8(vcgtq_s64(v274, v271), v271, v274)));
  }

  v1731 = v1716;
  v1734 = (v1729 + v1722 * v241 + v227 * v239) >> v65;
  v1736 = (v1729 + -(v239 * v1720) + v222 * v241) >> v65;
  v1742 = (v1729 + v1710 * v248 + v207 * v246) >> v65;
  v1744 = (v1729 + -(v246 * v1708) + v202 * v248) >> v65;
  v1750 = (v1729 + v1705 * v251 + (v187 * v249)) >> v65;
  v1752 = (v1729 + -(v249 * v1703) + v182 * v251) >> v65;
  v1717 = v227;
  v295 = v222;
  v1758 = (v1729 + v1701 * v254 + (v167 * v252)) >> v65;
  v1760 = (v1729 + -(v252 * v1699) + v1697 * v254) >> v65;
  v1762 = (v1729 + v1699 * v254 + (v1697 * v252)) >> v65;
  v1764 = (v1729 + (v1701 * v252) + (v167 * v253)) >> v65;
  v1769 = (v1729 + v1703 * v251 + (v182 * v249)) >> v65;
  v1771 = (v1729 + (v1705 * v249) + v187 * v1725[20]) >> v65;
  *a2 = *a2;
  v1776 = (v1729 + v1708 * -v247 + v202 * v246) >> v65;
  v1778 = (v1729 + v1710 * v246 + v207 * v247) >> v65;
  v1787 = a2[63];
  v296 = v1725[56];
  v297 = v1725[8];
  a2[4] = (v1729 + v1807.i32[0] * v296 + -(v297 * v1807.i32[3])) >> v65;
  v298 = v1725[24];
  v299 = v1725[40];
  *&v1794[48] = v285;
  *&v1794[76] = v286.i32[1];
  v1738 = *(a2 + 35);
  v1746 = *(a2 + 39);
  v1754 = *(a2 + 43);
  v1761 = *(a2 + 47);
  v1766 = *(a2 + 51);
  v1773 = *(a2 + 55);
  v1780 = *(a2 + 59);
  a2[5] = (v1729 + (v1807.i32[1] * v298) + -(v299 * v1807.i32[2])) >> v65;
  a2[6] = (v1729 + (v299 * v1807.i32[1]) + (v1807.i32[2] * v298)) >> v65;
  a2[7] = (v1729 + v297 * v1807.i32[0] + v1807.i32[3] * v296) >> v65;
  v300 = v1791 + v1789;
  v301 = a4[5];
  if (v301 >= 1)
  {
    v302 = 1 << (v301 - 1);
    v303 = v302 - 1;
    v304 = -v302;
    if (v300 < v303)
    {
      LODWORD(v303) = v1791 + v1789;
    }

    if (v300 >= v304)
    {
      v300 = v303;
    }

    else
    {
      v300 = v304;
    }
  }

  a2[8] = v300;
  v305 = v1789 - v1791;
  v306 = a4[5];
  if (v306 >= 1)
  {
    v307 = 1 << (v306 - 1);
    v308 = v307 - 1;
    v309 = -v307;
    if (v305 < v308)
    {
      LODWORD(v308) = v1789 - v1791;
    }

    if (v305 >= v309)
    {
      v305 = v308;
    }

    else
    {
      v305 = v309;
    }
  }

  a2[9] = v305;
  v310 = v1792.i32[1] - v1792.i32[0];
  v311 = a4[5];
  if (v311 >= 1)
  {
    v312 = 1 << (v311 - 1);
    v313 = v312 - 1;
    v314 = -v312;
    if (v310 < v313)
    {
      LODWORD(v313) = v1792.i32[1] - v1792.i32[0];
    }

    if (v310 >= v314)
    {
      v310 = v313;
    }

    else
    {
      v310 = v314;
    }
  }

  a2[10] = v310;
  v315 = v1792.i32[1] + v1792.i32[0];
  v316 = a4[5];
  if (v316 >= 1)
  {
    v317 = 1 << (v316 - 1);
    v318 = v317 - 1;
    v319 = -v317;
    if (v315 < v318)
    {
      LODWORD(v318) = v1792.i32[1] + v1792.i32[0];
    }

    if (v315 >= v319)
    {
      v315 = v318;
    }

    else
    {
      v315 = v319;
    }
  }

  a2[11] = v315;
  v320 = v1792.i32[3] + v1792.i32[2];
  v321 = a4[5];
  if (v321 >= 1)
  {
    v322 = 1 << (v321 - 1);
    v323 = v322 - 1;
    v324 = -v322;
    if (v320 < v323)
    {
      LODWORD(v323) = v1792.i32[3] + v1792.i32[2];
    }

    if (v320 >= v324)
    {
      v320 = v323;
    }

    else
    {
      v320 = v324;
    }
  }

  a2[12] = v320;
  v325 = v1792.i32[2] - v1792.i32[3];
  v326 = a4[5];
  if (v326 >= 1)
  {
    v327 = 1 << (v326 - 1);
    v328 = v327 - 1;
    v329 = -v327;
    if (v325 < v328)
    {
      LODWORD(v328) = v1792.i32[2] - v1792.i32[3];
    }

    if (v325 >= v329)
    {
      v325 = v328;
    }

    else
    {
      v325 = v329;
    }
  }

  a2[13] = v325;
  v330 = v1797 - v1796;
  v331 = a4[5];
  if (v331 >= 1)
  {
    v332 = 1 << (v331 - 1);
    v333 = v332 - 1;
    v334 = -v332;
    if (v330 < v333)
    {
      LODWORD(v333) = v1797 - v1796;
    }

    if (v330 >= v334)
    {
      v330 = v333;
    }

    else
    {
      v330 = v334;
    }
  }

  v335 = -v297;
  v336 = -v299;
  a2[14] = v330;
  v337 = v1797 + v1796;
  v338 = a4[5];
  if (v338 >= 1)
  {
    v339 = 1 << (v338 - 1);
    v340 = v339 - 1;
    v341 = -v339;
    if (v337 < v340)
    {
      LODWORD(v340) = v1797 + v1796;
    }

    if (v337 >= v341)
    {
      v337 = v340;
    }

    else
    {
      v337 = v341;
    }
  }

  a2[15] = v337;
  a2[16] = *&v1794[16];
  v1711 = (v1729 + -(v296 * *&v1794[24]) + *&v1794[68] * v335) >> v65;
  v1714 = (v1729 + *&v1794[20] * v335 + v286.i32[0] * v296) >> v65;
  a2[17] = v1714;
  a2[18] = v1711;
  v342.i32[1] = *&v1794[32];
  *(a2 + 19) = *&v1794[28];
  a2[21] = (v1729 + *&v1794[36] * v336 + (*&v1794[56] * v298)) >> v65;
  a2[22] = (v1729 + -(v298 * *&v1794[40]) + *&v1794[52] * v336) >> v65;
  *(a2 + 23) = *&v1794[44];
  a2[25] = (v1729 + *&v1794[40] * v336 + (*&v1794[52] * v298)) >> v65;
  a2[26] = (v1729 + (*&v1794[36] * v298) + (*&v1794[56] * v299)) >> v65;
  *(a2 + 27) = *&v1794[60];
  v1706 = (v1729 + *&v1794[24] * v335 + *&v1794[68] * v296) >> v65;
  a2[29] = v1706;
  a2[30] = (v1729 + *&v1794[20] * v296 + v286.i32[0] * v297) >> v65;
  a2[31] = v286.i32[1];
  v343 = v1738 + v1731;
  v344 = a4[5];
  if (v344 >= 1)
  {
    v345 = 1 << (v344 - 1);
    v346 = v345 - 1;
    v347 = -v345;
    if (v343 < v346)
    {
      LODWORD(v346) = v1738 + v1731;
    }

    if (v343 >= v347)
    {
      v343 = v346;
    }

    else
    {
      v343 = v347;
    }
  }

  a2[32] = v343;
  v348 = v1736 + v1734;
  v349 = a4[5];
  if (v349 >= 1)
  {
    v350 = 1 << (v349 - 1);
    v351 = v350 - 1;
    v352 = -v350;
    if (v348 < v351)
    {
      LODWORD(v351) = v1736 + v1734;
    }

    if (v348 >= v352)
    {
      v348 = v351;
    }

    else
    {
      v348 = v352;
    }
  }

  a2[33] = v348;
  v353 = v1734 - v1736;
  v354 = a4[5];
  if (v354 >= 1)
  {
    v355 = 1 << (v354 - 1);
    v356 = v355 - 1;
    v357 = -v355;
    if (v353 < v356)
    {
      LODWORD(v356) = v1734 - v1736;
    }

    if (v353 >= v357)
    {
      v353 = v356;
    }

    else
    {
      v353 = v357;
    }
  }

  a2[34] = v353;
  v358 = v1731 - v1738;
  v359 = a4[5];
  if (v359 >= 1)
  {
    v360 = 1 << (v359 - 1);
    v361 = v360 - 1;
    v362 = -v360;
    if (v358 < v361)
    {
      LODWORD(v361) = v1731 - v1738;
    }

    if (v358 >= v362)
    {
      v358 = v361;
    }

    else
    {
      v358 = v362;
    }
  }

  a2[35] = v358;
  v363 = v1746 - HIDWORD(v1738);
  v364 = a4[5];
  if (v364 >= 1)
  {
    v365 = 1 << (v364 - 1);
    v366 = v365 - 1;
    v367 = -v365;
    if (v363 < v366)
    {
      LODWORD(v366) = v1746 - HIDWORD(v1738);
    }

    if (v363 >= v367)
    {
      v363 = v366;
    }

    else
    {
      v363 = v367;
    }
  }

  a2[36] = v363;
  v368 = v1744 - v1742;
  v369 = a4[5];
  if (v369 >= 1)
  {
    v370 = 1 << (v369 - 1);
    v371 = v370 - 1;
    v372 = -v370;
    if (v368 < v371)
    {
      LODWORD(v371) = v1744 - v1742;
    }

    if (v368 >= v372)
    {
      v368 = v371;
    }

    else
    {
      v368 = v372;
    }
  }

  a2[37] = v368;
  v373 = v1744 + v1742;
  v374 = a4[5];
  if (v374 >= 1)
  {
    v375 = 1 << (v374 - 1);
    v376 = v375 - 1;
    v377 = -v375;
    if (v373 < v376)
    {
      LODWORD(v376) = v1744 + v1742;
    }

    if (v373 >= v377)
    {
      v373 = v376;
    }

    else
    {
      v373 = v377;
    }
  }

  a2[38] = v373;
  v378 = v1746 + HIDWORD(v1738);
  v379 = a4[5];
  if (v379 >= 1)
  {
    v380 = 1 << (v379 - 1);
    v381 = v380 - 1;
    v382 = -v380;
    if (v378 < v381)
    {
      LODWORD(v381) = v1746 + HIDWORD(v1738);
    }

    if (v378 >= v382)
    {
      v378 = v381;
    }

    else
    {
      v378 = v382;
    }
  }

  a2[39] = v378;
  v383 = v1754 + HIDWORD(v1746);
  v384 = a4[5];
  if (v384 >= 1)
  {
    v385 = 1 << (v384 - 1);
    v386 = v385 - 1;
    v387 = -v385;
    if (v383 < v386)
    {
      LODWORD(v386) = v1754 + HIDWORD(v1746);
    }

    if (v383 >= v387)
    {
      v383 = v386;
    }

    else
    {
      v383 = v387;
    }
  }

  a2[40] = v383;
  v388 = v1752 + v1750;
  v389 = a4[5];
  if (v389 >= 1)
  {
    v390 = 1 << (v389 - 1);
    v391 = v390 - 1;
    v392 = -v390;
    if (v388 < v391)
    {
      LODWORD(v391) = v1752 + v1750;
    }

    if (v388 >= v392)
    {
      v388 = v391;
    }

    else
    {
      v388 = v392;
    }
  }

  a2[41] = v388;
  v393 = v1750 - v1752;
  v394 = a4[5];
  if (v394 >= 1)
  {
    v395 = 1 << (v394 - 1);
    v396 = v395 - 1;
    v397 = -v395;
    if (v393 < v396)
    {
      LODWORD(v396) = v1750 - v1752;
    }

    if (v393 >= v397)
    {
      v393 = v396;
    }

    else
    {
      v393 = v397;
    }
  }

  a2[42] = v393;
  v398 = HIDWORD(v1746) - v1754;
  v399 = a4[5];
  if (v399 >= 1)
  {
    v400 = 1 << (v399 - 1);
    v401 = v400 - 1;
    v402 = -v400;
    if (v398 < v401)
    {
      LODWORD(v401) = HIDWORD(v1746) - v1754;
    }

    if (v398 >= v402)
    {
      v398 = v401;
    }

    else
    {
      v398 = v402;
    }
  }

  a2[43] = v398;
  v403 = v1761 - HIDWORD(v1754);
  v404 = a4[5];
  if (v404 >= 1)
  {
    v405 = 1 << (v404 - 1);
    v406 = v405 - 1;
    v407 = -v405;
    if (v403 < v406)
    {
      LODWORD(v406) = v1761 - HIDWORD(v1754);
    }

    if (v403 >= v407)
    {
      v403 = v406;
    }

    else
    {
      v403 = v407;
    }
  }

  a2[44] = v403;
  v408 = v1760 - v1758;
  v409 = a4[5];
  if (v409 >= 1)
  {
    v410 = 1 << (v409 - 1);
    v411 = v410 - 1;
    v412 = -v410;
    if (v408 < v411)
    {
      LODWORD(v411) = v1760 - v1758;
    }

    if (v408 >= v412)
    {
      v408 = v411;
    }

    else
    {
      v408 = v412;
    }
  }

  a2[45] = v408;
  v413 = v1760 + v1758;
  v414 = a4[5];
  if (v414 >= 1)
  {
    v415 = 1 << (v414 - 1);
    v416 = v415 - 1;
    v417 = -v415;
    if (v413 < v416)
    {
      LODWORD(v416) = v1760 + v1758;
    }

    if (v413 >= v417)
    {
      v413 = v416;
    }

    else
    {
      v413 = v417;
    }
  }

  a2[46] = v413;
  v418 = v1761 + HIDWORD(v1754);
  v419 = a4[5];
  if (v419 >= 1)
  {
    v420 = 1 << (v419 - 1);
    v421 = v420 - 1;
    v422 = -v420;
    if (v418 < v421)
    {
      LODWORD(v421) = v1761 + HIDWORD(v1754);
    }

    if (v418 >= v422)
    {
      v418 = v421;
    }

    else
    {
      v418 = v422;
    }
  }

  a2[47] = v418;
  v423 = v1766 + HIDWORD(v1761);
  v424 = a4[5];
  if (v424 >= 1)
  {
    v425 = 1 << (v424 - 1);
    v426 = v425 - 1;
    v427 = -v425;
    if (v423 < v426)
    {
      LODWORD(v426) = v1766 + HIDWORD(v1761);
    }

    if (v423 >= v427)
    {
      v423 = v426;
    }

    else
    {
      v423 = v427;
    }
  }

  a2[48] = v423;
  v428 = v1764 + v1762;
  v429 = a4[5];
  if (v429 >= 1)
  {
    v430 = 1 << (v429 - 1);
    v431 = v430 - 1;
    v432 = -v430;
    if (v428 < v431)
    {
      LODWORD(v431) = v1764 + v1762;
    }

    if (v428 >= v432)
    {
      v428 = v431;
    }

    else
    {
      v428 = v432;
    }
  }

  a2[49] = v428;
  v433 = v1762 - v1764;
  v434 = a4[5];
  if (v434 >= 1)
  {
    v435 = 1 << (v434 - 1);
    v436 = v435 - 1;
    v437 = -v435;
    if (v433 < v436)
    {
      LODWORD(v436) = v1762 - v1764;
    }

    if (v433 >= v437)
    {
      v433 = v436;
    }

    else
    {
      v433 = v437;
    }
  }

  a2[50] = v433;
  v438 = HIDWORD(v1761) - v1766;
  v439 = a4[5];
  if (v439 >= 1)
  {
    v440 = 1 << (v439 - 1);
    v441 = v440 - 1;
    v442 = -v440;
    if (v438 < v441)
    {
      LODWORD(v441) = HIDWORD(v1761) - v1766;
    }

    if (v438 >= v442)
    {
      v438 = v441;
    }

    else
    {
      v438 = v442;
    }
  }

  a2[51] = v438;
  v443 = v1773 - HIDWORD(v1766);
  v444 = a4[5];
  if (v444 >= 1)
  {
    v445 = 1 << (v444 - 1);
    v446 = v445 - 1;
    v447 = -v445;
    if (v443 < v446)
    {
      LODWORD(v446) = v1773 - HIDWORD(v1766);
    }

    if (v443 >= v447)
    {
      v443 = v446;
    }

    else
    {
      v443 = v447;
    }
  }

  a2[52] = v443;
  v448 = v1771 - v1769;
  v449 = a4[5];
  if (v449 >= 1)
  {
    v450 = 1 << (v449 - 1);
    v451 = v450 - 1;
    v452 = -v450;
    if (v448 < v451)
    {
      LODWORD(v451) = v1771 - v1769;
    }

    if (v448 >= v452)
    {
      v448 = v451;
    }

    else
    {
      v448 = v452;
    }
  }

  a2[53] = v448;
  v453 = v1771 + v1769;
  v454 = a4[5];
  if (v454 >= 1)
  {
    v455 = 1 << (v454 - 1);
    v456 = v455 - 1;
    v457 = -v455;
    if (v453 < v456)
    {
      LODWORD(v456) = v1771 + v1769;
    }

    if (v453 >= v457)
    {
      v453 = v456;
    }

    else
    {
      v453 = v457;
    }
  }

  a2[54] = v453;
  v458 = v1773 + HIDWORD(v1766);
  v459 = a4[5];
  if (v459 >= 1)
  {
    v460 = 1 << (v459 - 1);
    v461 = v460 - 1;
    v462 = -v460;
    if (v458 < v461)
    {
      LODWORD(v461) = v1773 + HIDWORD(v1766);
    }

    if (v458 >= v462)
    {
      v458 = v461;
    }

    else
    {
      v458 = v462;
    }
  }

  a2[55] = v458;
  v463 = v1780 + HIDWORD(v1773);
  v464 = a4[5];
  if (v464 >= 1)
  {
    v465 = 1 << (v464 - 1);
    v466 = v465 - 1;
    v467 = -v465;
    if (v463 < v466)
    {
      LODWORD(v466) = v1780 + HIDWORD(v1773);
    }

    if (v463 >= v467)
    {
      v463 = v466;
    }

    else
    {
      v463 = v467;
    }
  }

  a2[56] = v463;
  v468 = v1778 + v1776;
  v469 = a4[5];
  if (v469 >= 1)
  {
    v470 = 1 << (v469 - 1);
    v471 = v470 - 1;
    v472 = -v470;
    if (v468 < v471)
    {
      LODWORD(v471) = v1778 + v1776;
    }

    if (v468 >= v472)
    {
      v468 = v471;
    }

    else
    {
      v468 = v472;
    }
  }

  a2[57] = v468;
  v473 = v1776 - v1778;
  v474 = a4[5];
  if (v474 >= 1)
  {
    v475 = 1 << (v474 - 1);
    v476 = v475 - 1;
    v477 = -v475;
    if (v473 < v476)
    {
      LODWORD(v476) = v1776 - v1778;
    }

    if (v473 >= v477)
    {
      v473 = v476;
    }

    else
    {
      v473 = v477;
    }
  }

  a2[58] = v473;
  v478 = HIDWORD(v1773) - v1780;
  v479 = a4[5];
  if (v479 >= 1)
  {
    v480 = 1 << (v479 - 1);
    v481 = v480 - 1;
    v482 = -v480;
    if (v478 < v481)
    {
      LODWORD(v481) = HIDWORD(v1773) - v1780;
    }

    if (v478 >= v482)
    {
      v478 = v481;
    }

    else
    {
      v478 = v482;
    }
  }

  a2[59] = v478;
  v483 = v1787 - HIDWORD(v1780);
  v484 = a4[5];
  if (v484 >= 1)
  {
    v485 = 1 << (v484 - 1);
    v486 = v485 - 1;
    v487 = -v485;
    if (v483 < v486)
    {
      LODWORD(v486) = v1787 - HIDWORD(v1780);
    }

    if (v483 >= v487)
    {
      v483 = v486;
    }

    else
    {
      v483 = v487;
    }
  }

  a2[60] = v483;
  v1783 = (v1729 + v1720 * v241 + v295 * v239) >> v65;
  v1785 = (v1729 + v1722 * v239 + v1717 * v1695) >> v65;
  v488 = v1785 - v1783;
  v489 = a4[5];
  if (v489 >= 1)
  {
    v490 = 1 << (v489 - 1);
    v491 = v490 - 1;
    v492 = -v490;
    if (v488 < v491)
    {
      LODWORD(v491) = v1785 - v1783;
    }

    if (v488 >= v492)
    {
      v488 = v491;
    }

    else
    {
      v488 = v492;
    }
  }

  a2[61] = v488;
  v493 = v1785 + v1783;
  v494 = a4[5];
  if (v494 >= 1)
  {
    v495 = 1 << (v494 - 1);
    v496 = v495 - 1;
    v497 = -v495;
    if (v493 < v496)
    {
      LODWORD(v496) = v1785 + v1783;
    }

    if (v493 >= v497)
    {
      v493 = v496;
    }

    else
    {
      v493 = v497;
    }
  }

  a2[62] = v493;
  v498 = v1787 + HIDWORD(v1780);
  v499 = a4[5];
  v1721 = v297;
  if (v499 >= 1)
  {
    v500 = 1 << (v499 - 1);
    v501 = v500 - 1;
    v502 = -v500;
    if (v498 < v501)
    {
      LODWORD(v501) = v1787 + HIDWORD(v1780);
    }

    if (v498 >= v502)
    {
      v498 = v501;
    }

    else
    {
      v498 = v502;
    }
  }

  v1718 = -v299;
  a2[63] = v498;
  v503 = v1725[48];
  v504 = v1725[16];
  v505.i32[0] = *a2;
  v505.i32[1] = a2[2];
  v1726 = v1725[32];
  v342.i32[0] = v1726;
  v506 = vaddw_s32(v63, vmul_s32(v505, __PAIR64__(v503, v1726)));
  v507 = vneg_s32(__PAIR64__(v504, v1726));
  v508.i32[0] = a2[1];
  v509 = a2[4];
  v508.i32[1] = a2[3];
  v510 = (v506.i64[0] + (v508.i32[0] * v1726)) >> v65;
  v511 = vshlq_s64(vaddw_s32(v506, vmul_s32(v508, v507)), v67);
  v512 = vmovn_s64(v511);
  v1723 = v504;
  v513 = (v1729 + (a2[2] * v504) + (v508.i32[1] * v503)) >> v65;
  v514 = a2[5];
  v515 = v514 + v509;
  v516 = a4[6];
  v517 = v299;
  if (v516 <= 0)
  {
    v524 = v509 - v514;
    v531 = a2[6];
    v532 = a2[7];
    v529 = v532 - v531;
    LODWORD(v519) = v532 + v531;
  }

  else
  {
    v518 = 1 << (v516 - 1);
    v519 = v518 - 1;
    v520 = -v518;
    if (v515 >= v518 - 1)
    {
      v521 = v518 - 1;
    }

    else
    {
      v521 = v514 + v509;
    }

    if (v515 >= v520)
    {
      v515 = v521;
    }

    else
    {
      v515 = -v518;
    }

    v522 = v509 - v514;
    if (v522 >= v519)
    {
      v523 = v518 - 1;
    }

    else
    {
      v523 = v522;
    }

    if (v522 >= v520)
    {
      v524 = v523;
    }

    else
    {
      v524 = -v518;
    }

    v526 = a2[6];
    v525 = a2[7];
    v527 = v525 - v526;
    if (v527 >= v519)
    {
      v528 = v519;
    }

    else
    {
      v528 = v525 - v526;
    }

    if (v527 >= v520)
    {
      v529 = v528;
    }

    else
    {
      v529 = v520;
    }

    v530 = v525 + v526;
    if (v530 < v519)
    {
      LODWORD(v519) = v530;
    }

    if (v530 < v520)
    {
      LODWORD(v519) = v520;
    }
  }

  v533 = v519;
  v535 = a2[8];
  v534 = a2[9];
  v536 = a2[13];
  v537 = a2[14];
  v538 = (v1729 + v534 * v507.i32[1] + (v537 * v503)) >> v65;
  v539 = a2[10];
  v540 = (v1729 + -(v503 * v539) + v536 * v507.i32[1]) >> v65;
  v541 = *(a2 + 11);
  v542 = (v1729 + v539 * v507.i32[1] + (v536 * v503)) >> v65;
  v544 = a2[15];
  v543 = a2[16];
  v545 = (v1729 + (v534 * v503) + (v537 * v1723)) >> v65;
  v546 = *&v1794[28] + v543;
  v547 = v543 - *&v1794[28];
  if (v516 <= 0)
  {
    *&v1794[16] = *&v1794[28] + v543;
    *&v1794[20] = v1711 + v1714;
    v511.i64[0] = *(a2 + 10);
    v267.i64[0] = *(a2 + 11);
    v574 = vzip1q_s32(v511, vrev64q_s32(v511));
    v575 = vzip1q_s32(vrev64q_s32(v267), v267);
    v561.i64[0] = vsubq_s32(v575, v511).u64[0];
    v561.i64[1] = vaddq_s32(v575, v574).i64[1];
    *&v1794[24] = v1714 - v1711;
    *&v1794[28] = v543 - *&v1794[28];
    v576 = *(a2 + 6);
    v566 = vrev64q_s32(v576);
    v568 = vextq_s8(v566, v566, 8uLL);
    v566.i64[1] = vsubq_s32(v568, v576).i64[1];
    *&v1794[40] = v561.i64[1];
    *&v1794[48] = vaddq_s32(v568, v576).u64[0];
    v577 = a2[28];
    v578 = a2[30];
    *&v1794[64] = *&v1794[76] - v577;
    *&v1794[68] = v578 - v1706;
    v572 = v578 + v1706;
    LODWORD(v550) = *&v1794[76] + v577;
  }

  else
  {
    v548 = 1 << (v516 - 1);
    v549 = v548 - 1;
    v550 = -v548;
    v551.i64[0] = v546;
    v551.i64[1] = v1711 + v1714;
    v552 = v551;
    v551.i64[0] = v1714 - v1711;
    v551.i64[1] = v547;
    v553 = vdupq_n_s64(v550);
    v554 = vdupq_n_s64(v549);
    v555 = vbslq_s8(vcgtq_s64(v553, v552), v553, vbslq_s8(vcgtq_s64(v554, v552), v552, v554));
    v556 = vuzp1q_s32(v555, vbslq_s8(vcgtq_s64(v553, v551), v553, vbslq_s8(vcgtq_s64(v554, v551), v551, v554)));
    v557 = *(a2 + 20);
    v555.i64[0] = *(a2 + 11);
    v558 = vzip1q_s32(vrev64q_s32(v555), v555);
    v559 = vsub_s32(*v558.i8, v557);
    v551.i64[0] = v559.i32[0];
    v551.i64[1] = v559.i32[1];
    v560 = v551;
    *v558.i8 = vadd_s32(*&vextq_s8(v558, v558, 8uLL), vrev64_s32(v557));
    v551.i64[0] = v558.i32[0];
    v551.i64[1] = v558.i32[1];
    v561 = vuzp1q_s32(vbslq_s8(vcgtq_s64(v553, v560), v553, vbslq_s8(vcgtq_s64(v554, v560), v560, v554)), vbslq_s8(vcgtq_s64(v553, v551), v553, vbslq_s8(vcgtq_s64(v554, v551), v551, v554)));
    *&v1794[16] = v556;
    *&v1794[40] = v561.i64[1];
    v562 = *(a2 + 6);
    v563 = vrev64q_s32(v562);
    v564 = vextq_s8(v563, v563, 8uLL);
    *v560.i8 = vadd_s32(*v564.i8, *v562.i8);
    v551.i64[0] = v560.i32[0];
    v551.i64[1] = v560.i32[1];
    v565 = v551;
    *v562.i8 = vsub_s32(*&vextq_s8(v564, v564, 8uLL), *&vextq_s8(v562, v562, 8uLL));
    v551.i64[0] = v562.i32[0];
    v551.i64[1] = v562.i32[1];
    v61 = vbslq_s8(vcgtq_s64(v553, v565), v553, vbslq_s8(vcgtq_s64(v554, v565), v565, v554));
    v566 = vuzp1q_s32(v61, vbslq_s8(vcgtq_s64(v553, v551), v553, vbslq_s8(vcgtq_s64(v554, v551), v551, v554)));
    *&v1794[48] = v566.i64[0];
    v61.i64[0] = *(a2 + 14);
    *v564.i8 = vrev64_s32(*(a2 + 30));
    v567 = vsub_s32(*v564.i8, *v61.i8);
    v551.i64[0] = v567.i32[0];
    v551.i64[1] = v567.i32[1];
    v568 = vbslq_s8(vcgtq_s64(v553, v551), v553, vbslq_s8(vcgtq_s64(v554, v551), v551, v554));
    *&v1794[64] = vmovn_s64(v568);
    *v568.i8 = vadd_s32(*v564.i8, *v61.i8);
    v569 = v568.i32[1];
    if (v568.i32[1] >= v549)
    {
      v569 = v549;
    }

    v570.i64[0] = v568.i32[0];
    v570.i64[1] = v568.i32[1];
    v571 = vmovn_s64(vcgtq_s64(v553, v570));
    if (v571.i8[4])
    {
      v572 = v550;
    }

    else
    {
      v572 = v569;
    }

    if (v568.i32[0] >= v549)
    {
      v573 = v549;
    }

    else
    {
      v573 = v568.i32[0];
    }

    if ((v571.i8[0] & 1) == 0)
    {
      LODWORD(v550) = v573;
    }
  }

  v579 = v512.i32[0];
  v580 = v512.i32[1];
  *&v1794[72] = __PAIR64__(v550, v572);
  v581 = *(a2 + 16);
  v582 = *(a2 + 34);
  v583 = *(a2 + 58);
  v4.i32[0] = v335;
  v584 = v4;
  v584.i32[1] = -v296;
  v585 = vmulq_s32(v582, vzip1q_s32(v584, v584));
  v61.i32[0] = v296;
  v586 = v61;
  v586.i32[1] = v335;
  v587 = vrev64q_s32(v586);
  v588 = vmulq_s32(v583, vzip1q_s32(v587, v587));
  v589.i64[0] = v588.i32[0];
  v589.i64[1] = v588.i32[1];
  v590 = v589;
  v589.i64[0] = v588.i32[2];
  v589.i64[1] = v588.i32[3];
  v591 = vshlq_s64(vaddq_s64(vaddw_s32(v63, *v585.i8), vextq_s8(v589, v589, 8uLL)), v67);
  v592 = vshlq_s64(vaddq_s64(vaddw_high_s32(v63, v585), vextq_s8(v590, v590, 8uLL)), v67);
  v593 = *(a2 + 38);
  *v585.i8 = vdup_n_s32(v1718);
  v590.i64[0] = *(a2 + 21);
  v594 = *(a2 + 44);
  v6.i64[0] = *(a2 + 25);
  v5.i64[0] = *(a2 + 26);
  v595 = vmul_s32(*v5.i8, vdup_n_s32(v298));
  v589.i64[0] = v595.i32[0];
  v589.i64[1] = v595.i32[1];
  v596 = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v63, vmul_s32(*v590.i8, *v585.i8)), vextq_s8(v589, v589, 8uLL)), v67));
  *v585.i8 = vmul_s32(*v6.i8, *v585.i8);
  v589.i64[0] = v585.i32[0];
  v589.i64[1] = v585.i32[1];
  v597 = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v63, vmul_s32(v594, vdup_n_s32(-v298))), vextq_s8(v589, v589, 8uLL)), v67));
  v598 = *(a2 + 46);
  *v585.i8 = vzip1_s32(v594, *v590.i8);
  *v590.i8 = vzip2_s32(v594, *v590.i8);
  v590.i64[1] = v585.i64[0];
  v599 = vmulq_s32(v590, vdupq_lane_s64(__SPAIR64__(v298, v1718), 0));
  v600 = vmulq_s32(vzip1q_s32(v6, v5), vdupq_lane_s64(__SPAIR64__(v517, v298), 0));
  v601 = vaddw_high_s32(v63, v599);
  v602 = vaddw_s32(vaddw_s32(v63, *v599.i8), *v600.i8);
  v603 = vshlq_s64(vaddw_high_s32(v601, v600), v67);
  v604 = vshlq_s64(v602, v67);
  v605 = vrev64q_s32(vuzp1q_s32(v604, v603));
  v606 = *(a2 + 54);
  v4.i32[1] = v296;
  v607 = vrev64q_s32(v4);
  v608 = vzip1q_s32(v607, v607);
  v61.i32[1] = v1721;
  v609 = vmulq_s32(v582, v608);
  v610 = vmulq_s32(v583, vzip1q_s32(v61, v61));
  v611 = vaddw_s32(v63, *v609.i8);
  v612 = vaddw_high_s32(v63, v609);
  v613 = vshlq_s64(vaddw_s32(vextq_s8(v612, v612, 8uLL), *v610.i8), v67);
  v614 = vshlq_s64(vaddw_high_s32(vextq_s8(v611, v611, 8uLL), v610), v67);
  v615 = *(a2 + 31);
  v616 = v513 + v510;
  v617 = a4[7];
  if (v617 >= 1)
  {
    v618 = 1 << (v617 - 1);
    v619 = v618 - 1;
    v620 = -v618;
    if (v616 < v619)
    {
      LODWORD(v619) = v513 + v510;
    }

    if (v616 >= v620)
    {
      v616 = v619;
    }

    else
    {
      v616 = v620;
    }
  }

  v621 = v533;
  *a2 = v616;
  v622 = v580 + v579;
  v623 = a4[7];
  if (v623 >= 1)
  {
    v624 = 1 << (v623 - 1);
    v625 = v624 - 1;
    v626 = -v624;
    if (v622 < v625)
    {
      LODWORD(v625) = v580 + v579;
    }

    if (v622 >= v626)
    {
      v622 = v625;
    }

    else
    {
      v622 = v626;
    }
  }

  a2[1] = v622;
  v627 = v579 - v580;
  v628 = a4[7];
  if (v628 >= 1)
  {
    v629 = 1 << (v628 - 1);
    v630 = v629 - 1;
    v631 = -v629;
    if (v627 < v630)
    {
      LODWORD(v630) = v579 - v580;
    }

    if (v627 >= v631)
    {
      v627 = v630;
    }

    else
    {
      v627 = v631;
    }
  }

  a2[2] = v627;
  v632 = v510 - v513;
  v633 = a4[7];
  if (v633 >= 1)
  {
    v634 = 1 << (v633 - 1);
    v635 = v634 - 1;
    v636 = -v634;
    if (v632 < v635)
    {
      LODWORD(v635) = v510 - v513;
    }

    if (v632 >= v636)
    {
      v632 = v635;
    }

    else
    {
      v632 = v636;
    }
  }

  a2[3] = v632;
  a2[4] = v515;
  v637 = v529 * v1726;
  v638 = (v1729 + v524 * v507.i32[0] + v637) >> v65;
  v639 = (v1729 + (v524 * v1726) + v637) >> v65;
  a2[5] = v638;
  a2[6] = v639;
  a2[7] = v621;
  v640 = v541 + v535;
  v641 = a4[7];
  if (v641 >= 1)
  {
    v642 = 1 << (v641 - 1);
    v643 = v642 - 1;
    v644 = -v642;
    if (v640 < v643)
    {
      LODWORD(v643) = v541 + v535;
    }

    if (v640 >= v644)
    {
      v640 = v643;
    }

    else
    {
      v640 = v644;
    }
  }

  a2[8] = v640;
  v645 = v540 + v538;
  v646 = a4[7];
  if (v646 >= 1)
  {
    v647 = 1 << (v646 - 1);
    v648 = v647 - 1;
    v649 = -v647;
    if (v645 < v648)
    {
      LODWORD(v648) = v540 + v538;
    }

    if (v645 >= v649)
    {
      v645 = v648;
    }

    else
    {
      v645 = v649;
    }
  }

  a2[9] = v645;
  v650 = v538 - v540;
  v651 = a4[7];
  if (v651 >= 1)
  {
    v652 = 1 << (v651 - 1);
    v653 = v652 - 1;
    v654 = -v652;
    if (v650 < v653)
    {
      LODWORD(v653) = v538 - v540;
    }

    if (v650 >= v654)
    {
      v650 = v653;
    }

    else
    {
      v650 = v654;
    }
  }

  a2[10] = v650;
  v655 = v535 - v541;
  v656 = a4[7];
  if (v656 >= 1)
  {
    v657 = 1 << (v656 - 1);
    v658 = v657 - 1;
    v659 = -v657;
    if (v655 < v658)
    {
      LODWORD(v658) = v535 - v541;
    }

    if (v655 >= v659)
    {
      v655 = v658;
    }

    else
    {
      v655 = v659;
    }
  }

  a2[11] = v655;
  v660 = v544 - HIDWORD(v541);
  v661 = a4[7];
  if (v661 >= 1)
  {
    v662 = 1 << (v661 - 1);
    v663 = v662 - 1;
    v664 = -v662;
    if (v660 < v663)
    {
      LODWORD(v663) = v544 - HIDWORD(v541);
    }

    if (v660 >= v664)
    {
      v660 = v663;
    }

    else
    {
      v660 = v664;
    }
  }

  a2[12] = v660;
  v665 = v545 - v542;
  v666 = a4[7];
  if (v666 >= 1)
  {
    v667 = 1 << (v666 - 1);
    v668 = v667 - 1;
    v669 = -v667;
    if (v665 < v668)
    {
      LODWORD(v668) = v545 - v542;
    }

    if (v665 >= v669)
    {
      v665 = v668;
    }

    else
    {
      v665 = v669;
    }
  }

  a2[13] = v665;
  v670 = v545 + v542;
  v671 = a4[7];
  if (v671 >= 1)
  {
    v672 = 1 << (v671 - 1);
    v673 = v672 - 1;
    v674 = -v672;
    if (v670 < v673)
    {
      LODWORD(v673) = v545 + v542;
    }

    if (v670 >= v674)
    {
      v670 = v673;
    }

    else
    {
      v670 = v674;
    }
  }

  v675 = vmovn_s64(v592);
  v676 = vmovn_s64(v591);
  v677 = -v503;
  v608.i64[0] = v566.i64[1];
  a2[14] = v670;
  v678 = v544 + HIDWORD(v541);
  v679 = a4[7];
  if (v679 >= 1)
  {
    v680 = 1 << (v679 - 1);
    v681 = v680 - 1;
    v682 = -v680;
    if (v678 < v681)
    {
      LODWORD(v681) = v544 + HIDWORD(v541);
    }

    if (v678 >= v682)
    {
      v678 = v681;
    }

    else
    {
      v678 = v682;
    }
  }

  a2[15] = v678;
  v605.i64[0] = *&v1794[64];
  v683 = vmul_s32(*&v1794[64], vdup_n_s32(v503));
  v684.i64[0] = v683.i32[0];
  v684.i64[1] = v683.i32[1];
  *(a2 + 8) = *&v1794[16];
  *(a2 + 9) = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v63, vmul_lane_s32(*&v1794[24], v507, 1)), vextq_s8(v684, v684, 8uLL)), v67));
  v685 = vmul_lane_s32(v566.u64[1], v507, 1);
  v684.i64[0] = v685;
  v684.i64[1] = SHIDWORD(v685);
  LODWORD(v685) = vdup_lane_s32(v507, 1).u32[0];
  *(a2 + 10) = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v63, vmul_s32(vdup_n_s32(v677), *v561.i8)), vextq_s8(v684, v684, 8uLL)), v67));
  v686 = vzip1_s32(*v561.i8, *&v1794[24]);
  *v687.i8 = vzip2_s32(*v561.i8, *&v1794[24]);
  v687.u64[1] = v686;
  HIDWORD(v685) = v503;
  *(a2 + 22) = *&v1794[40];
  v688 = vmulq_s32(v687, vdupq_lane_s64(v685, 0));
  v689 = v503;
  v690 = vmulq_s32(vzip1q_s32(v608, v605), vdupq_lane_s64(__SPAIR64__(v1723, v503), 0));
  v691 = vuzp1q_s32(vshlq_s64(vaddw_s32(vaddw_s32(v63, *v688.i8), *v690.i8), v67), vshlq_s64(vaddw_high_s32(vaddw_high_s32(v63, v688), v690), v67));
  *(a2 + 26) = vuzp1q_s32(v691, vrev64q_s32(v691));
  *(a2 + 15) = *&v1794[72];
  v692 = v593.i32[1] + v581;
  v693 = a4[7];
  if (v693 >= 1)
  {
    v694 = 1 << (v693 - 1);
    v695 = v694 - 1;
    v696 = -v694;
    if (v692 < v695)
    {
      LODWORD(v695) = v593.i32[1] + v581;
    }

    if (v692 >= v696)
    {
      v692 = v695;
    }

    else
    {
      v692 = v696;
    }
  }

  a2[32] = v692;
  v697 = v593.i32[0] + HIDWORD(v581);
  v698 = a4[7];
  if (v698 >= 1)
  {
    v699 = 1 << (v698 - 1);
    v700 = v699 - 1;
    v701 = -v699;
    if (v697 < v700)
    {
      LODWORD(v700) = v593.i32[0] + HIDWORD(v581);
    }

    if (v697 >= v701)
    {
      v697 = v700;
    }

    else
    {
      v697 = v701;
    }
  }

  a2[33] = v697;
  v702 = v675.i32[1] + v676.i32[0];
  v703 = a4[7];
  if (v703 >= 1)
  {
    v704 = 1 << (v703 - 1);
    v705 = v704 - 1;
    v706 = -v704;
    if (v702 < v705)
    {
      LODWORD(v705) = v675.i32[1] + v676.i32[0];
    }

    if (v702 >= v706)
    {
      v702 = v705;
    }

    else
    {
      v702 = v706;
    }
  }

  a2[34] = v702;
  v707 = v675.i32[0] + v676.i32[1];
  v708 = a4[7];
  if (v708 >= 1)
  {
    v709 = 1 << (v708 - 1);
    v710 = v709 - 1;
    v711 = -v709;
    if (v707 < v710)
    {
      LODWORD(v710) = v675.i32[0] + v676.i32[1];
    }

    if (v707 >= v711)
    {
      v707 = v710;
    }

    else
    {
      v707 = v711;
    }
  }

  a2[35] = v707;
  v712 = v676.i32[1] - v675.i32[0];
  v713 = a4[7];
  if (v713 >= 1)
  {
    v714 = 1 << (v713 - 1);
    v715 = v714 - 1;
    v716 = -v714;
    if (v712 < v715)
    {
      LODWORD(v715) = v676.i32[1] - v675.i32[0];
    }

    if (v712 >= v716)
    {
      v712 = v715;
    }

    else
    {
      v712 = v716;
    }
  }

  a2[36] = v712;
  v717 = v676.i32[0] - v675.i32[1];
  v718 = a4[7];
  if (v718 >= 1)
  {
    v719 = 1 << (v718 - 1);
    v720 = v719 - 1;
    v721 = -v719;
    if (v717 < v720)
    {
      LODWORD(v720) = v676.i32[0] - v675.i32[1];
    }

    if (v717 >= v721)
    {
      v717 = v720;
    }

    else
    {
      v717 = v721;
    }
  }

  a2[37] = v717;
  v722 = HIDWORD(v581) - v593.i32[0];
  v723 = a4[7];
  if (v723 >= 1)
  {
    v724 = 1 << (v723 - 1);
    v725 = v724 - 1;
    v726 = -v724;
    if (v722 < v725)
    {
      LODWORD(v725) = HIDWORD(v581) - v593.i32[0];
    }

    if (v722 >= v726)
    {
      v722 = v725;
    }

    else
    {
      v722 = v726;
    }
  }

  a2[38] = v722;
  v727 = v581 - v593.i32[1];
  v728 = a4[7];
  if (v728 >= 1)
  {
    v729 = 1 << (v728 - 1);
    v730 = v729 - 1;
    v731 = -v729;
    if (v727 < v730)
    {
      LODWORD(v730) = v581 - v593.i32[1];
    }

    if (v727 >= v731)
    {
      v727 = v730;
    }

    else
    {
      v727 = v731;
    }
  }

  a2[39] = v727;
  v732 = DWORD1(v598) - v593.i32[2];
  v733 = a4[7];
  if (v733 >= 1)
  {
    v734 = 1 << (v733 - 1);
    v735 = v734 - 1;
    v736 = -v734;
    if (v732 < v735)
    {
      LODWORD(v735) = DWORD1(v598) - v593.i32[2];
    }

    if (v732 >= v736)
    {
      v732 = v735;
    }

    else
    {
      v732 = v736;
    }
  }

  a2[40] = v732;
  v737 = v598 - v593.i32[3];
  v738 = a4[7];
  if (v738 >= 1)
  {
    v739 = 1 << (v738 - 1);
    v740 = v739 - 1;
    v741 = -v739;
    if (v737 < v740)
    {
      LODWORD(v740) = v598 - v593.i32[3];
    }

    if (v737 >= v741)
    {
      v737 = v740;
    }

    else
    {
      v737 = v741;
    }
  }

  a2[41] = v737;
  v742 = v597.i32[1] - v596.i32[0];
  v743 = a4[7];
  if (v743 >= 1)
  {
    v744 = 1 << (v743 - 1);
    v745 = v744 - 1;
    v746 = -v744;
    if (v742 < v745)
    {
      LODWORD(v745) = v597.i32[1] - v596.i32[0];
    }

    if (v742 >= v746)
    {
      v742 = v745;
    }

    else
    {
      v742 = v746;
    }
  }

  a2[42] = v742;
  v747 = v597.i32[0] - v596.i32[1];
  v748 = a4[7];
  if (v748 >= 1)
  {
    v749 = 1 << (v748 - 1);
    v750 = v749 - 1;
    v751 = -v749;
    if (v747 < v750)
    {
      LODWORD(v750) = v597.i32[0] - v596.i32[1];
    }

    if (v747 >= v751)
    {
      v747 = v750;
    }

    else
    {
      v747 = v751;
    }
  }

  a2[43] = v747;
  v752 = v597.i32[0] + v596.i32[1];
  v753 = a4[7];
  if (v753 >= 1)
  {
    v754 = 1 << (v753 - 1);
    v755 = v754 - 1;
    v756 = -v754;
    if (v752 < v755)
    {
      LODWORD(v755) = v597.i32[0] + v596.i32[1];
    }

    if (v752 >= v756)
    {
      v752 = v755;
    }

    else
    {
      v752 = v756;
    }
  }

  a2[44] = v752;
  v757 = v597.i32[1] + v596.i32[0];
  v758 = a4[7];
  if (v758 >= 1)
  {
    v759 = 1 << (v758 - 1);
    v760 = v759 - 1;
    v761 = -v759;
    if (v757 < v760)
    {
      LODWORD(v760) = v597.i32[1] + v596.i32[0];
    }

    if (v757 >= v761)
    {
      v757 = v760;
    }

    else
    {
      v757 = v761;
    }
  }

  a2[45] = v757;
  v762 = v598 + v593.i32[3];
  v763 = a4[7];
  if (v763 >= 1)
  {
    v764 = 1 << (v763 - 1);
    v765 = v764 - 1;
    v766 = -v764;
    if (v762 < v765)
    {
      LODWORD(v765) = v598 + v593.i32[3];
    }

    if (v762 >= v766)
    {
      v762 = v765;
    }

    else
    {
      v762 = v766;
    }
  }

  v767 = vmovn_s64(v603);
  v768 = vmovn_s64(v604);
  a2[46] = v762;
  v769 = DWORD1(v598) + v593.i32[2];
  v770 = a4[7];
  if (v770 >= 1)
  {
    v771 = 1 << (v770 - 1);
    v772 = v771 - 1;
    v773 = -v771;
    if (v769 < v772)
    {
      LODWORD(v772) = DWORD1(v598) + v593.i32[2];
    }

    if (v769 >= v773)
    {
      v769 = v772;
    }

    else
    {
      v769 = v773;
    }
  }

  a2[47] = v769;
  v774 = DWORD1(v606) + DWORD2(v598);
  v775 = a4[7];
  if (v775 >= 1)
  {
    v776 = 1 << (v775 - 1);
    v777 = v776 - 1;
    v778 = -v776;
    if (v774 < v777)
    {
      LODWORD(v777) = DWORD1(v606) + DWORD2(v598);
    }

    if (v774 >= v778)
    {
      v774 = v777;
    }

    else
    {
      v774 = v778;
    }
  }

  a2[48] = v774;
  v779 = v606 + HIDWORD(v598);
  v780 = a4[7];
  if (v780 >= 1)
  {
    v781 = 1 << (v780 - 1);
    v782 = v781 - 1;
    v783 = -v781;
    if (v779 < v782)
    {
      LODWORD(v782) = v606 + HIDWORD(v598);
    }

    if (v779 >= v783)
    {
      v779 = v782;
    }

    else
    {
      v779 = v783;
    }
  }

  a2[49] = v779;
  v784 = v767.i32[1] + v768.i32[0];
  v785 = a4[7];
  if (v785 >= 1)
  {
    v786 = 1 << (v785 - 1);
    v787 = v786 - 1;
    v788 = -v786;
    if (v784 < v787)
    {
      LODWORD(v787) = v767.i32[1] + v768.i32[0];
    }

    if (v784 >= v788)
    {
      v784 = v787;
    }

    else
    {
      v784 = v788;
    }
  }

  a2[50] = v784;
  v789 = v768.i32[1] + v767.i32[0];
  v790 = a4[7];
  if (v790 >= 1)
  {
    v791 = 1 << (v790 - 1);
    v792 = v791 - 1;
    v793 = -v791;
    if (v789 < v792)
    {
      LODWORD(v792) = v768.i32[1] + v767.i32[0];
    }

    if (v789 >= v793)
    {
      v789 = v792;
    }

    else
    {
      v789 = v793;
    }
  }

  a2[51] = v789;
  v794 = v767.i32[0] - v768.i32[1];
  v795 = a4[7];
  if (v795 >= 1)
  {
    v796 = 1 << (v795 - 1);
    v797 = v796 - 1;
    v798 = -v796;
    if (v794 < v797)
    {
      LODWORD(v797) = v767.i32[0] - v768.i32[1];
    }

    if (v794 >= v798)
    {
      v794 = v797;
    }

    else
    {
      v794 = v798;
    }
  }

  a2[52] = v794;
  v799 = v768.i32[0] - v767.i32[1];
  v800 = a4[7];
  if (v800 >= 1)
  {
    v801 = 1 << (v800 - 1);
    v802 = v801 - 1;
    v803 = -v801;
    if (v799 < v802)
    {
      LODWORD(v802) = v768.i32[0] - v767.i32[1];
    }

    if (v799 >= v803)
    {
      v799 = v802;
    }

    else
    {
      v799 = v803;
    }
  }

  a2[53] = v799;
  v804 = HIDWORD(v598) - v606;
  v805 = a4[7];
  if (v805 >= 1)
  {
    v806 = 1 << (v805 - 1);
    v807 = v806 - 1;
    v808 = -v806;
    if (v804 < v807)
    {
      LODWORD(v807) = HIDWORD(v598) - v606;
    }

    if (v804 >= v808)
    {
      v804 = v807;
    }

    else
    {
      v804 = v808;
    }
  }

  v809 = vmovn_s64(v614);
  v810 = vmovn_s64(v613);
  a2[54] = v804;
  v811 = DWORD2(v598) - DWORD1(v606);
  v812 = a4[7];
  if (v812 >= 1)
  {
    v813 = 1 << (v812 - 1);
    v814 = v813 - 1;
    v815 = -v813;
    if (v811 < v814)
    {
      LODWORD(v814) = DWORD2(v598) - DWORD1(v606);
    }

    if (v811 >= v815)
    {
      v811 = v814;
    }

    else
    {
      v811 = v815;
    }
  }

  a2[55] = v811;
  v816 = HIDWORD(v615) - DWORD2(v606);
  v817 = a4[7];
  if (v817 >= 1)
  {
    v818 = 1 << (v817 - 1);
    v819 = v818 - 1;
    v820 = -v818;
    if (v816 < v819)
    {
      LODWORD(v819) = HIDWORD(v615) - DWORD2(v606);
    }

    if (v816 >= v820)
    {
      v816 = v819;
    }

    else
    {
      v816 = v820;
    }
  }

  a2[56] = v816;
  v821 = v615 - HIDWORD(v606);
  v822 = a4[7];
  if (v822 >= 1)
  {
    v823 = 1 << (v822 - 1);
    v824 = v823 - 1;
    v825 = -v823;
    if (v821 < v824)
    {
      LODWORD(v824) = v615 - HIDWORD(v606);
    }

    if (v821 >= v825)
    {
      v821 = v824;
    }

    else
    {
      v821 = v825;
    }
  }

  a2[57] = v821;
  v826 = v809.i32[1] - v810.i32[0];
  v827 = a4[7];
  if (v827 >= 1)
  {
    v828 = 1 << (v827 - 1);
    v829 = v828 - 1;
    v830 = -v828;
    if (v826 < v829)
    {
      LODWORD(v829) = v809.i32[1] - v810.i32[0];
    }

    if (v826 >= v830)
    {
      v826 = v829;
    }

    else
    {
      v826 = v830;
    }
  }

  a2[58] = v826;
  v831 = v809.i32[0] - v810.i32[1];
  v832 = a4[7];
  if (v832 >= 1)
  {
    v833 = 1 << (v832 - 1);
    v834 = v833 - 1;
    v835 = -v833;
    if (v831 < v834)
    {
      LODWORD(v834) = v809.i32[0] - v810.i32[1];
    }

    if (v831 >= v835)
    {
      v831 = v834;
    }

    else
    {
      v831 = v835;
    }
  }

  a2[59] = v831;
  v836 = v809.i32[0] + v810.i32[1];
  v837 = a4[7];
  if (v837 >= 1)
  {
    v838 = 1 << (v837 - 1);
    v839 = v838 - 1;
    v840 = -v838;
    if (v836 < v839)
    {
      LODWORD(v839) = v809.i32[0] + v810.i32[1];
    }

    if (v836 >= v840)
    {
      v836 = v839;
    }

    else
    {
      v836 = v840;
    }
  }

  a2[60] = v836;
  v841 = v809.i32[1] + v810.i32[0];
  v842 = a4[7];
  if (v842 >= 1)
  {
    v843 = 1 << (v842 - 1);
    v844 = v843 - 1;
    v845 = -v843;
    if (v841 < v844)
    {
      LODWORD(v844) = v809.i32[1] + v810.i32[0];
    }

    if (v841 >= v845)
    {
      v841 = v844;
    }

    else
    {
      v841 = v845;
    }
  }

  a2[61] = v841;
  v846 = v615 + HIDWORD(v606);
  v847 = a4[7];
  if (v847 >= 1)
  {
    v848 = 1 << (v847 - 1);
    v849 = v848 - 1;
    v850 = -v848;
    if (v846 < v849)
    {
      LODWORD(v849) = v615 + HIDWORD(v606);
    }

    if (v846 >= v850)
    {
      v846 = v849;
    }

    else
    {
      v846 = v850;
    }
  }

  a2[62] = v846;
  v851 = HIDWORD(v615) + DWORD2(v606);
  v852 = a4[7];
  if (v852 >= 1)
  {
    v853 = 1 << (v852 - 1);
    v854 = v853 - 1;
    v855 = -v853;
    if (v851 < v854)
    {
      LODWORD(v854) = HIDWORD(v615) + DWORD2(v606);
    }

    if (v851 >= v855)
    {
      v851 = v854;
    }

    else
    {
      v851 = v855;
    }
  }

  v856 = *&v1794[16];
  a2[63] = v851;
  v857 = *a2;
  v858 = v621 + *a2;
  v859 = a4[8];
  if (v859 <= 0)
  {
    v881 = v622 + v639;
    v883 = *(a2 + 2);
    v884 = vrev64q_s32(v883);
    v885 = vextq_s8(v884, v884, 8uLL);
    v877 = v622 - v639;
    v880 = v857 - v621;
    v882 = vrev64q_s32(vextq_s8(vsubq_s32(v885, v883), vaddq_s32(v885, v883), 8uLL));
  }

  else
  {
    v860 = 1 << (v859 - 1);
    v861 = v860 - 1;
    v862 = -v860;
    v863 = *(a2 + 4);
    v864 = vrev64_s32(*(a2 + 2));
    v865 = vrev64_s32(vadd_s32(v863, v864));
    v866.i64[0] = v858;
    v866.i64[1] = v622 + v639;
    v867 = v866;
    v866.i64[0] = v865.i32[0];
    v866.i64[1] = v865.i32[1];
    v868 = vdupq_n_s64(v862);
    v869 = vdupq_n_s64(v861);
    v870 = vbslq_s8(vcgtq_s64(v868, v867), v868, vbslq_s8(vcgtq_s64(v869, v867), v867, v869));
    v871 = vuzp1q_s32(v870, vbslq_s8(vcgtq_s64(v868, v866), v868, vbslq_s8(vcgtq_s64(v869, v866), v866, v869)));
    v872 = vmovn_s64(v870);
    v873 = vsub_s32(v864, v863);
    v866.i64[0] = v873.i32[0];
    v866.i64[1] = v873.i32[1];
    v603 = vcgtq_s64(v869, v866);
    v874 = vmovn_s64(vbslq_s8(vcgtq_s64(v868, v866), v868, vbslq_s8(v603, v866, v869)));
    v875 = v622 - v639;
    if (v875 >= v861)
    {
      v876 = v861;
    }

    else
    {
      v876 = v875;
    }

    if (v875 >= v862)
    {
      v877 = v876;
    }

    else
    {
      v877 = v862;
    }

    v878 = v857 - v621;
    if (v878 >= v861)
    {
      v879 = v861;
    }

    else
    {
      v879 = v878;
    }

    if (v878 >= v862)
    {
      v880 = v879;
    }

    else
    {
      v880 = v862;
    }

    v881 = v872.i32[1];
    v858 = v872.i32[0];
    *v871.i8 = v874;
    v882 = vrev64q_s32(v871);
  }

  v886 = *(a2 + 4);
  v887.i64[0] = *(a2 + 5);
  v887.i64[1] = v887.i64[0];
  v888 = *(a2 + 7);
  v889 = vmul_n_s32(*(a2 + 12), v1726);
  v890.i64[0] = v889.i32[0];
  v890.i64[1] = v889.i32[1];
  v891 = vextq_s8(v890, v890, 8uLL);
  *v603.i8 = vzip1_s32(v342, v507);
  v892 = vrev64q_s32(v603);
  v893 = vmulq_s32(v887, vzip1q_s32(v892, v892));
  v894 = vshlq_s64(vaddq_s64(vaddw_s32(v63, *v893.i8), v891), v67);
  v895 = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_high_s32(v63, v893), v891), v67));
  v896 = HIDWORD(v888);
  if (v859 <= 0)
  {
    v922 = a2[17];
    *&v1794[16] += *&v1794[44];
    *&v1794[20] = *&v1794[40] + v922;
    v923 = *(a2 + 18);
    v924 = vrev64q_s32(v923);
    v925 = vextq_s8(v924, v924, 8uLL);
    *&v926 = vaddq_s32(v925, v923).u64[0];
    *(&v926 + 1) = vsubq_s32(v925, v923).i64[1];
    *&v1794[24] = v926;
    *&v1794[40] = v922 - *&v1794[40];
    *&v1794[44] = v856 - *&v1794[44];
    v927 = a2[24];
    *&v1794[48] = *&v1794[76] - v927;
    v928 = vrev64q_s32(*(a2 + 27));
    v929 = vextq_s8(v928, v928, 8uLL);
    v930 = *(a2 + 25);
    v931 = vsubq_s32(v929, v930);
    v931.i32[3] = vaddq_s32(v929, v930).i32[3];
    *&v1794[52] = v931;
    *&v1794[68] = vrev64_s32(vadd_s32(*v929.i8, *v930.i8));
    LODWORD(v899) = *&v1794[76] + v927;
  }

  else
  {
    v897 = 1 << (v859 - 1);
    v898 = v897 - 1;
    v899 = -v897;
    v900 = vrev64_s32(*(a2 + 21));
    *v568.i8 = vadd_s32(v900, *(a2 + 17));
    v901.i64[0] = *(a2 + 19);
    v593.i32[0] = *&v1794[44] + *&v1794[16];
    v902 = vextq_s8(vextq_s8(v593, v593, 4uLL), v568, 0xCuLL);
    v903.i64[0] = v902.i32[0];
    v903.i64[1] = v902.i32[1];
    v904 = v903;
    v903.i64[0] = v902.i32[2];
    v903.i64[1] = vadd_s32(vdup_lane_s32(*v901.i8, 1), *v901.i8).i32[0];
    v905 = vdupq_n_s64(-v897);
    v906 = vdupq_n_s64(v897 - 1);
    v907 = vuzp1q_s32(vbslq_s8(vcgtq_s64(v905, v904), v905, vbslq_s8(vcgtq_s64(v906, v904), v904, v906)), vbslq_s8(vcgtq_s64(v905, v903), v905, vbslq_s8(vcgtq_s64(v906, v903), v903, v906)));
    v908.i64[0] = __PAIR64__(v900.u32[1], v901.u32[1]);
    v901.i32[1] = HIDWORD(*(a2 + 17));
    v901.i32[2] = *(a2 + 17);
    v901.i32[3] = *&v1794[16];
    v908.i64[1] = __PAIR64__(*&v1794[44], v900.u32[0]);
    v909 = vsubq_s32(v901, v908);
    v903.i64[0] = v909.i32[2];
    v903.i64[1] = v909.i32[3];
    v910 = v903;
    v903.i64[0] = v909.i32[0];
    v903.i64[1] = v909.i32[1];
    *&v1794[16] = v907;
    *&v1794[32] = vuzp1q_s32(vbslq_s8(vcgtq_s64(v905, v903), v905, vbslq_s8(vcgtq_s64(v906, v903), v903, v906)), vbslq_s8(vcgtq_s64(v905, v910), v905, vbslq_s8(vcgtq_s64(v906, v910), v910, v906)));
    v912 = *(a2 + 6);
    v911 = *(a2 + 7);
    v913 = vrev64q_s32(v911);
    v914 = vextq_s8(v913, v913, 8uLL);
    v915 = vsubq_s32(v914, v912);
    v903.i64[0] = v915.i32[2];
    v903.i64[1] = v915.i32[3];
    v916 = v903;
    v903.i64[0] = v915.i32[0];
    v903.i64[1] = v915.i32[1];
    *&v1794[48] = vuzp1q_s32(vbslq_s8(vcgtq_s64(v905, v903), v905, vbslq_s8(vcgtq_s64(v906, v903), v903, v906)), vbslq_s8(vcgtq_s64(v905, v916), v905, vbslq_s8(vcgtq_s64(v906, v916), v916, v906)));
    *v911.i8 = vadd_s32(vrev64_s32(*v911.i8), *&vextq_s8(v912, v912, 8uLL));
    v903.i64[0] = v911.i32[0];
    v903.i64[1] = v911.i32[1];
    v917 = vaddq_s32(v914, v912).u64[0];
    v918 = HIDWORD(v917);
    *&v1794[64] = vrev64_s32(vmovn_s64(vbslq_s8(vcgtq_s64(v905, v903), v905, vbslq_s8(vcgtq_s64(v906, v903), v903, v906))));
    if (SHIDWORD(v917) >= v897 - 1)
    {
      v918 = v897 - 1;
    }

    v919.i64[0] = v917;
    v919.i64[1] = SHIDWORD(v917);
    v920 = vmovn_s64(vcgtq_s64(v905, v919));
    if (v920.i8[4])
    {
      v921 = -v897;
    }

    else
    {
      LODWORD(v921) = v918;
    }

    *&v1794[72] = v921;
    if (v917 < v898)
    {
      LODWORD(v898) = v917;
    }

    if ((v920.i8[0] & 1) == 0)
    {
      LODWORD(v899) = v898;
    }
  }

  v932 = v888;
  v934 = *(a2 + 8);
  v933 = *(a2 + 9);
  v935 = vmulq_lane_s32(v933, v507, 1);
  v937 = *(a2 + 14);
  v936 = *(a2 + 15);
  v938 = vmulq_n_s32(v937, v689);
  v939.i64[0] = v938.i32[0];
  v939.i64[1] = v938.i32[1];
  v940 = v939;
  v939.i64[0] = v938.i32[2];
  v939.i64[1] = v938.i32[3];
  v941 = vshlq_s64(vaddq_s64(vaddw_s32(v63, *v935.i8), vextq_s8(v939, v939, 8uLL)), v67);
  v942 = vshlq_s64(vaddq_s64(vaddw_high_s32(v63, v935), vextq_s8(v940, v940, 8uLL)), v67);
  v943 = *(a2 + 10);
  v944 = *(a2 + 11);
  v945 = vmulq_s32(v943, vdupq_n_s32(v677));
  v946 = *(a2 + 12);
  v947 = *(a2 + 13);
  v948 = vmulq_lane_s32(v947, v507, 1);
  v939.i64[0] = v948.i32[0];
  v939.i64[1] = v948.i32[1];
  v949 = vaddq_s64(vaddw_high_s32(v63, v945), vextq_s8(v939, v939, 8uLL));
  *&v1794[76] = v899;
  v939.i64[0] = v948.i32[2];
  v939.i64[1] = v948.i32[3];
  v950 = vshlq_s64(vaddq_s64(vaddw_s32(v63, *v945.i8), vextq_s8(v939, v939, 8uLL)), v67);
  v951 = vshlq_s64(v949, v67);
  v952 = vmulq_lane_s32(v943, v507, 1);
  v953 = vmulq_n_s32(v947, v689);
  v954 = vaddw_s32(v63, *v952.i8);
  v955 = vaddw_high_s32(v63, v952);
  v956 = vaddw_high_s32(vextq_s8(v954, v954, 8uLL), v953);
  v957 = vshlq_s64(vaddw_s32(vextq_s8(v955, v955, 8uLL), *v953.i8), v67);
  v958 = vshlq_s64(v956, v67);
  v959 = vmulq_n_s32(v933, v689);
  v960 = vmulq_s32(v937, vdupq_n_s32(v1723));
  v961 = vaddw_s32(v63, *v959.i8);
  v962 = vaddw_high_s32(v63, v959);
  v963 = vaddw_high_s32(vextq_s8(v961, v961, 8uLL), v960);
  v964 = vshlq_s64(vaddw_s32(vextq_s8(v962, v962, 8uLL), *v960.i8), v67);
  v965 = vshlq_s64(v963, v67);
  v966 = v896 + v858;
  v967 = a4[9];
  if (v967 >= 1)
  {
    v968 = 1 << (v967 - 1);
    v969 = v968 - 1;
    v970 = -v968;
    if (v966 < v969)
    {
      LODWORD(v969) = v896 + v858;
    }

    if (v966 >= v970)
    {
      v966 = v969;
    }

    else
    {
      v966 = v970;
    }
  }

  v971 = vmovn_s64(v894);
  *a2 = v966;
  v972 = v932 + v881;
  v973 = a4[9];
  if (v973 >= 1)
  {
    v974 = 1 << (v973 - 1);
    v975 = v974 - 1;
    v976 = -v974;
    if (v972 < v975)
    {
      LODWORD(v975) = v932 + v881;
    }

    if (v972 >= v976)
    {
      v972 = v975;
    }

    else
    {
      v972 = v976;
    }
  }

  a2[1] = v972;
  v977 = v895.i32[0] + v882.i32[3];
  v978 = a4[9];
  if (v978 >= 1)
  {
    v979 = 1 << (v978 - 1);
    v980 = v979 - 1;
    v981 = -v979;
    if (v977 < v980)
    {
      LODWORD(v980) = v895.i32[0] + v882.i32[3];
    }

    if (v977 >= v981)
    {
      v977 = v980;
    }

    else
    {
      v977 = v981;
    }
  }

  a2[2] = v977;
  v982 = v895.i32[1] + v882.i32[2];
  v983 = a4[9];
  if (v983 >= 1)
  {
    v984 = 1 << (v983 - 1);
    v985 = v984 - 1;
    v986 = -v984;
    if (v982 < v985)
    {
      LODWORD(v985) = v895.i32[1] + v882.i32[2];
    }

    if (v982 >= v986)
    {
      v982 = v985;
    }

    else
    {
      v982 = v986;
    }
  }

  a2[3] = v982;
  v987 = v971.i32[1] + v882.i32[1];
  v988 = a4[9];
  if (v988 >= 1)
  {
    v989 = 1 << (v988 - 1);
    v990 = v989 - 1;
    v991 = -v989;
    if (v987 < v990)
    {
      LODWORD(v990) = v971.i32[1] + v882.i32[1];
    }

    if (v987 >= v991)
    {
      v987 = v990;
    }

    else
    {
      v987 = v991;
    }
  }

  a2[4] = v987;
  v992 = v971.i32[0] + v882.i32[0];
  v993 = a4[9];
  if (v993 >= 1)
  {
    v994 = 1 << (v993 - 1);
    v995 = v994 - 1;
    v996 = -v994;
    if (v992 < v995)
    {
      LODWORD(v995) = v971.i32[0] + v882.i32[0];
    }

    if (v992 >= v996)
    {
      v992 = v995;
    }

    else
    {
      v992 = v996;
    }
  }

  a2[5] = v992;
  v997 = HIDWORD(v886) + v877;
  v998 = a4[9];
  if (v998 >= 1)
  {
    v999 = 1 << (v998 - 1);
    v1000 = v999 - 1;
    v1001 = -v999;
    if (v997 < v1000)
    {
      LODWORD(v1000) = HIDWORD(v886) + v877;
    }

    if (v997 >= v1001)
    {
      v997 = v1000;
    }

    else
    {
      v997 = v1001;
    }
  }

  a2[6] = v997;
  v1002 = v886 + v880;
  v1003 = a4[9];
  if (v1003 >= 1)
  {
    v1004 = 1 << (v1003 - 1);
    v1005 = v1004 - 1;
    v1006 = -v1004;
    if (v1002 < v1005)
    {
      LODWORD(v1005) = v886 + v880;
    }

    if (v1002 >= v1006)
    {
      v1002 = v1005;
    }

    else
    {
      v1002 = v1006;
    }
  }

  a2[7] = v1002;
  v1007 = v880 - v886;
  v1008 = a4[9];
  if (v1008 >= 1)
  {
    v1009 = 1 << (v1008 - 1);
    v1010 = v1009 - 1;
    v1011 = -v1009;
    if (v1007 < v1010)
    {
      LODWORD(v1010) = v1007;
    }

    if (v1007 >= v1011)
    {
      v1007 = v1010;
    }

    else
    {
      v1007 = v1011;
    }
  }

  a2[8] = v1007;
  v1012 = v877 - HIDWORD(v886);
  v1013 = a4[9];
  if (v1013 >= 1)
  {
    v1014 = 1 << (v1013 - 1);
    v1015 = v1014 - 1;
    v1016 = -v1014;
    if (v1012 < v1015)
    {
      LODWORD(v1015) = v1012;
    }

    if (v1012 >= v1016)
    {
      v1012 = v1015;
    }

    else
    {
      v1012 = v1016;
    }
  }

  a2[9] = v1012;
  v1017 = v882.i32[0] - v971.i32[0];
  v1018 = a4[9];
  if (v1018 >= 1)
  {
    v1019 = 1 << (v1018 - 1);
    v1020 = v1019 - 1;
    v1021 = -v1019;
    if (v1017 < v1020)
    {
      LODWORD(v1020) = v882.i32[0] - v971.i32[0];
    }

    if (v1017 >= v1021)
    {
      v1017 = v1020;
    }

    else
    {
      v1017 = v1021;
    }
  }

  a2[10] = v1017;
  v1022 = v882.i32[1] - v971.i32[1];
  v1023 = a4[9];
  if (v1023 >= 1)
  {
    v1024 = 1 << (v1023 - 1);
    v1025 = v1024 - 1;
    v1026 = -v1024;
    if (v1022 < v1025)
    {
      LODWORD(v1025) = v882.i32[1] - v971.i32[1];
    }

    if (v1022 >= v1026)
    {
      v1022 = v1025;
    }

    else
    {
      v1022 = v1026;
    }
  }

  a2[11] = v1022;
  v1027 = v882.i32[2] - v895.i32[1];
  v1028 = a4[9];
  if (v1028 >= 1)
  {
    v1029 = 1 << (v1028 - 1);
    v1030 = v1029 - 1;
    v1031 = -v1029;
    if (v1027 < v1030)
    {
      LODWORD(v1030) = v882.i32[2] - v895.i32[1];
    }

    if (v1027 >= v1031)
    {
      v1027 = v1030;
    }

    else
    {
      v1027 = v1031;
    }
  }

  a2[12] = v1027;
  v1032 = v882.i32[3] - v895.i32[0];
  v1033 = a4[9];
  if (v1033 >= 1)
  {
    v1034 = 1 << (v1033 - 1);
    v1035 = v1034 - 1;
    v1036 = -v1034;
    if (v1032 < v1035)
    {
      LODWORD(v1035) = v882.i32[3] - v895.i32[0];
    }

    if (v1032 >= v1036)
    {
      v1032 = v1035;
    }

    else
    {
      v1032 = v1036;
    }
  }

  a2[13] = v1032;
  v1037 = v881 - v932;
  v1038 = a4[9];
  if (v1038 >= 1)
  {
    v1039 = 1 << (v1038 - 1);
    v1040 = v1039 - 1;
    v1041 = -v1039;
    if (v1037 < v1040)
    {
      LODWORD(v1040) = v881 - v932;
    }

    if (v1037 >= v1041)
    {
      v1037 = v1040;
    }

    else
    {
      v1037 = v1041;
    }
  }

  v1042 = v934;
  a2[14] = v1037;
  v1043 = v858 - v896;
  v1044 = a4[9];
  if (v1044 >= 1)
  {
    v1045 = 1 << (v1044 - 1);
    v1046 = v1045 - 1;
    v1047 = -v1045;
    if (v1043 < v1046)
    {
      LODWORD(v1046) = v1043;
    }

    if (v1043 >= v1047)
    {
      v1043 = v1046;
    }

    else
    {
      v1043 = v1047;
    }
  }

  v1048 = DWORD1(v934);
  a2[15] = v1043;
  v1049 = vmulq_n_s32(*&v1794[32], v507.i32[0]);
  v1050 = vdupq_n_s32(v1726);
  v1051 = *&v1794[64];
  v1052 = vmulq_s32(*&v1794[48], v1050);
  v1053.i64[0] = v1052.i32[0];
  v1053.i64[1] = v1052.i32[1];
  v1054 = v1053;
  v1053.i64[0] = v1052.i32[2];
  v1053.i64[1] = v1052.i32[3];
  v1055 = vextq_s8(v1053, v1053, 8uLL);
  v1056 = vextq_s8(v1054, v1054, 8uLL);
  v1057 = vshlq_s64(vaddq_s64(vaddw_s32(v63, *v1049.i8), v1055), v67);
  v1058 = vshlq_s64(vaddq_s64(vaddw_high_s32(v63, v1049), v1056), v67);
  v1059 = vuzp1q_s32(v1057, v1058);
  *(a2 + 4) = *&v1794[16];
  *(a2 + 5) = v1059;
  v1060 = vmulq_s32(*&v1794[32], v1050);
  v1061 = vaddw_s32(v63, *v1060.i8);
  v1062 = vaddq_s64(vaddw_high_s32(v63, v1060), v1056);
  v1063 = vshlq_s64(vaddq_s64(v1061, v1055), v67);
  v1064 = vshlq_s64(v1062, v67);
  v1065 = vuzp1q_s32(v1063, v1064);
  v1066 = vrev64q_s32(v1065);
  *(a2 + 6) = vextq_s8(v1066, v1066, 8uLL);
  *(a2 + 7) = *&v1794[64];
  v1067 = HIDWORD(v944) + v934;
  v1068 = a4[9];
  if (v1068 >= 1)
  {
    v1069 = 1 << (v1068 - 1);
    v1070 = v1069 - 1;
    v1071 = -v1069;
    if (v1067 < v1070)
    {
      LODWORD(v1070) = HIDWORD(v944) + v934;
    }

    if (v1067 >= v1071)
    {
      v1067 = v1070;
    }

    else
    {
      v1067 = v1071;
    }
  }

  v1072 = vmovn_s64(v941);
  v1073 = vmovn_s64(v951);
  a2[32] = v1067;
  v1074 = DWORD2(v944) + DWORD1(v934);
  v1075 = a4[9];
  if (v1075 >= 1)
  {
    v1076 = 1 << (v1075 - 1);
    v1077 = v1076 - 1;
    v1078 = -v1076;
    if (v1074 < v1077)
    {
      LODWORD(v1077) = DWORD2(v944) + DWORD1(v934);
    }

    if (v1074 >= v1078)
    {
      v1074 = v1077;
    }

    else
    {
      v1074 = v1078;
    }
  }

  a2[33] = v1074;
  v1079 = DWORD1(v944) + DWORD2(v934);
  v1080 = a4[9];
  if (v1080 >= 1)
  {
    v1081 = 1 << (v1080 - 1);
    v1082 = v1081 - 1;
    v1083 = -v1081;
    if (v1079 < v1082)
    {
      LODWORD(v1082) = DWORD1(v944) + DWORD2(v934);
    }

    if (v1079 >= v1083)
    {
      v1079 = v1082;
    }

    else
    {
      v1079 = v1083;
    }
  }

  *&v934 = vmovn_s64(v942);
  v1084 = vmovn_s64(v950);
  a2[34] = v1079;
  v1085 = v944 + HIDWORD(v934);
  v1086 = a4[9];
  if (v1086 >= 1)
  {
    v1087 = 1 << (v1086 - 1);
    v1088 = v1087 - 1;
    v1089 = -v1087;
    if (v1085 < v1088)
    {
      LODWORD(v1088) = v944 + HIDWORD(v934);
    }

    if (v1085 >= v1089)
    {
      v1085 = v1088;
    }

    else
    {
      v1085 = v1089;
    }
  }

  a2[35] = v1085;
  v1090 = v1073.i32[1] + v1072.i32[0];
  v1091 = a4[9];
  if (v1091 >= 1)
  {
    v1092 = 1 << (v1091 - 1);
    v1093 = v1092 - 1;
    v1094 = -v1092;
    if (v1090 < v1093)
    {
      LODWORD(v1093) = v1073.i32[1] + v1072.i32[0];
    }

    if (v1090 >= v1094)
    {
      v1090 = v1093;
    }

    else
    {
      v1090 = v1094;
    }
  }

  a2[36] = v1090;
  v1095 = v1073.i32[0] + v1072.i32[1];
  v1096 = a4[9];
  if (v1096 >= 1)
  {
    v1097 = 1 << (v1096 - 1);
    v1098 = v1097 - 1;
    v1099 = -v1097;
    if (v1095 < v1098)
    {
      LODWORD(v1098) = v1073.i32[0] + v1072.i32[1];
    }

    if (v1095 >= v1099)
    {
      v1095 = v1098;
    }

    else
    {
      v1095 = v1099;
    }
  }

  a2[37] = v1095;
  v1100 = v1084.i32[1] + v934;
  v1101 = a4[9];
  if (v1101 >= 1)
  {
    v1102 = 1 << (v1101 - 1);
    v1103 = v1102 - 1;
    v1104 = -v1102;
    if (v1100 < v1103)
    {
      LODWORD(v1103) = v1084.i32[1] + v934;
    }

    if (v1100 >= v1104)
    {
      v1100 = v1103;
    }

    else
    {
      v1100 = v1104;
    }
  }

  a2[38] = v1100;
  v1105 = v1084.i32[0] + DWORD1(v934);
  v1106 = a4[9];
  if (v1106 >= 1)
  {
    v1107 = 1 << (v1106 - 1);
    v1108 = v1107 - 1;
    v1109 = -v1107;
    if (v1105 < v1108)
    {
      LODWORD(v1108) = v1084.i32[0] + DWORD1(v934);
    }

    if (v1105 >= v1109)
    {
      v1105 = v1108;
    }

    else
    {
      v1105 = v1109;
    }
  }

  a2[39] = v1105;
  v1110 = DWORD1(v934) - v1084.i32[0];
  v1111 = a4[9];
  if (v1111 >= 1)
  {
    v1112 = 1 << (v1111 - 1);
    v1113 = v1112 - 1;
    v1114 = -v1112;
    if (v1110 < v1113)
    {
      LODWORD(v1113) = DWORD1(v934) - v1084.i32[0];
    }

    if (v1110 >= v1114)
    {
      v1110 = v1113;
    }

    else
    {
      v1110 = v1114;
    }
  }

  a2[40] = v1110;
  v1115 = v934 - v1084.i32[1];
  v1116 = a4[9];
  if (v1116 >= 1)
  {
    v1117 = 1 << (v1116 - 1);
    v1118 = v1117 - 1;
    v1119 = -v1117;
    if (v1115 < v1118)
    {
      LODWORD(v1118) = v934 - v1084.i32[1];
    }

    if (v1115 >= v1119)
    {
      v1115 = v1118;
    }

    else
    {
      v1115 = v1119;
    }
  }

  a2[41] = v1115;
  v1120 = v1072.i32[1] - v1073.i32[0];
  v1121 = a4[9];
  if (v1121 >= 1)
  {
    v1122 = 1 << (v1121 - 1);
    v1123 = v1122 - 1;
    v1124 = -v1122;
    if (v1120 < v1123)
    {
      LODWORD(v1123) = v1072.i32[1] - v1073.i32[0];
    }

    if (v1120 >= v1124)
    {
      v1120 = v1123;
    }

    else
    {
      v1120 = v1124;
    }
  }

  a2[42] = v1120;
  v1125 = v1072.i32[0] - v1073.i32[1];
  v1126 = a4[9];
  if (v1126 >= 1)
  {
    v1127 = 1 << (v1126 - 1);
    v1128 = v1127 - 1;
    v1129 = -v1127;
    if (v1125 < v1128)
    {
      LODWORD(v1128) = v1072.i32[0] - v1073.i32[1];
    }

    if (v1125 >= v1129)
    {
      v1125 = v1128;
    }

    else
    {
      v1125 = v1129;
    }
  }

  a2[43] = v1125;
  v1130 = HIDWORD(v934) - v944;
  v1131 = a4[9];
  if (v1131 >= 1)
  {
    v1132 = 1 << (v1131 - 1);
    v1133 = v1132 - 1;
    v1134 = -v1132;
    if (v1130 < v1133)
    {
      LODWORD(v1133) = HIDWORD(v934) - v944;
    }

    if (v1130 >= v1134)
    {
      v1130 = v1133;
    }

    else
    {
      v1130 = v1134;
    }
  }

  a2[44] = v1130;
  v1135 = DWORD2(v934) - DWORD1(v944);
  v1136 = a4[9];
  if (v1136 >= 1)
  {
    v1137 = 1 << (v1136 - 1);
    v1138 = v1137 - 1;
    v1139 = -v1137;
    if (v1135 < v1138)
    {
      LODWORD(v1138) = DWORD2(v934) - DWORD1(v944);
    }

    if (v1135 >= v1139)
    {
      v1135 = v1138;
    }

    else
    {
      v1135 = v1139;
    }
  }

  a2[45] = v1135;
  v1140 = v1048 - DWORD2(v944);
  v1141 = a4[9];
  if (v1141 >= 1)
  {
    v1142 = 1 << (v1141 - 1);
    v1143 = v1142 - 1;
    v1144 = -v1142;
    if (v1140 < v1143)
    {
      LODWORD(v1143) = v1140;
    }

    if (v1140 >= v1144)
    {
      v1140 = v1143;
    }

    else
    {
      v1140 = v1144;
    }
  }

  a2[46] = v1140;
  v1145 = v1042 - HIDWORD(v944);
  v1146 = a4[9];
  if (v1146 >= 1)
  {
    v1147 = 1 << (v1146 - 1);
    v1148 = v1147 - 1;
    v1149 = -v1147;
    if (v1145 < v1148)
    {
      LODWORD(v1148) = v1145;
    }

    if (v1145 >= v1149)
    {
      v1145 = v1148;
    }

    else
    {
      v1145 = v1149;
    }
  }

  a2[47] = v1145;
  v1150 = HIDWORD(v936) - v946;
  v1151 = a4[9];
  if (v1151 >= 1)
  {
    v1152 = 1 << (v1151 - 1);
    v1153 = v1152 - 1;
    v1154 = -v1152;
    if (v1150 < v1153)
    {
      LODWORD(v1153) = HIDWORD(v936) - v946;
    }

    if (v1150 >= v1154)
    {
      v1150 = v1153;
    }

    else
    {
      v1150 = v1154;
    }
  }

  v1155 = vmovn_s64(v957);
  v1156 = vmovn_s64(v965);
  v1157 = DWORD1(v936);
  a2[48] = v1150;
  v1158 = DWORD2(v936) - DWORD1(v946);
  v1159 = a4[9];
  if (v1159 >= 1)
  {
    v1160 = 1 << (v1159 - 1);
    v1161 = v1160 - 1;
    v1162 = -v1160;
    if (v1158 < v1161)
    {
      LODWORD(v1161) = DWORD2(v936) - DWORD1(v946);
    }

    if (v1158 >= v1162)
    {
      v1158 = v1161;
    }

    else
    {
      v1158 = v1162;
    }
  }

  v1163 = v936;
  a2[49] = v1158;
  v1164 = DWORD1(v936) - DWORD2(v946);
  v1165 = a4[9];
  if (v1165 >= 1)
  {
    v1166 = 1 << (v1165 - 1);
    v1167 = v1166 - 1;
    v1168 = -v1166;
    if (v1164 < v1167)
    {
      LODWORD(v1167) = DWORD1(v936) - DWORD2(v946);
    }

    if (v1164 >= v1168)
    {
      v1164 = v1167;
    }

    else
    {
      v1164 = v1168;
    }
  }

  v1169 = vmovn_s64(v958);
  v1170 = vmovn_s64(v964);
  a2[50] = v1164;
  v1171 = v1163 - HIDWORD(v946);
  v1172 = a4[9];
  if (v1172 >= 1)
  {
    v1173 = 1 << (v1172 - 1);
    v1174 = v1173 - 1;
    v1175 = -v1173;
    if (v1171 < v1174)
    {
      LODWORD(v1174) = v1163 - HIDWORD(v946);
    }

    if (v1171 >= v1175)
    {
      v1171 = v1174;
    }

    else
    {
      v1171 = v1175;
    }
  }

  a2[51] = v1171;
  v1176 = v1156.i32[1] - v1155.i32[0];
  v1177 = a4[9];
  if (v1177 >= 1)
  {
    v1178 = 1 << (v1177 - 1);
    v1179 = v1178 - 1;
    v1180 = -v1178;
    if (v1176 < v1179)
    {
      LODWORD(v1179) = v1156.i32[1] - v1155.i32[0];
    }

    if (v1176 >= v1180)
    {
      v1176 = v1179;
    }

    else
    {
      v1176 = v1180;
    }
  }

  a2[52] = v1176;
  v1181 = v1156.i32[0] - v1155.i32[1];
  v1182 = a4[9];
  if (v1182 >= 1)
  {
    v1183 = 1 << (v1182 - 1);
    v1184 = v1183 - 1;
    v1185 = -v1183;
    if (v1181 < v1184)
    {
      LODWORD(v1184) = v1156.i32[0] - v1155.i32[1];
    }

    if (v1181 >= v1185)
    {
      v1181 = v1184;
    }

    else
    {
      v1181 = v1185;
    }
  }

  a2[53] = v1181;
  v1186 = v1170.i32[1] - v1169.i32[0];
  v1187 = a4[9];
  if (v1187 >= 1)
  {
    v1188 = 1 << (v1187 - 1);
    v1189 = v1188 - 1;
    v1190 = -v1188;
    if (v1186 < v1189)
    {
      LODWORD(v1189) = v1170.i32[1] - v1169.i32[0];
    }

    if (v1186 >= v1190)
    {
      v1186 = v1189;
    }

    else
    {
      v1186 = v1190;
    }
  }

  a2[54] = v1186;
  v1191 = v1170.i32[0] - v1169.i32[1];
  v1192 = a4[9];
  if (v1192 >= 1)
  {
    v1193 = 1 << (v1192 - 1);
    v1194 = v1193 - 1;
    v1195 = -v1193;
    if (v1191 < v1194)
    {
      LODWORD(v1194) = v1170.i32[0] - v1169.i32[1];
    }

    if (v1191 >= v1195)
    {
      v1191 = v1194;
    }

    else
    {
      v1191 = v1195;
    }
  }

  a2[55] = v1191;
  v1196 = v1170.i32[0] + v1169.i32[1];
  v1197 = a4[9];
  if (v1197 >= 1)
  {
    v1198 = 1 << (v1197 - 1);
    v1199 = v1198 - 1;
    v1200 = -v1198;
    if (v1196 < v1199)
    {
      LODWORD(v1199) = v1170.i32[0] + v1169.i32[1];
    }

    if (v1196 >= v1200)
    {
      v1196 = v1199;
    }

    else
    {
      v1196 = v1200;
    }
  }

  a2[56] = v1196;
  v1201 = v1170.i32[1] + v1169.i32[0];
  v1202 = a4[9];
  if (v1202 >= 1)
  {
    v1203 = 1 << (v1202 - 1);
    v1204 = v1203 - 1;
    v1205 = -v1203;
    if (v1201 < v1204)
    {
      LODWORD(v1204) = v1170.i32[1] + v1169.i32[0];
    }

    if (v1201 >= v1205)
    {
      v1201 = v1204;
    }

    else
    {
      v1201 = v1205;
    }
  }

  a2[57] = v1201;
  v1206 = v1156.i32[0] + v1155.i32[1];
  v1207 = a4[9];
  if (v1207 >= 1)
  {
    v1208 = 1 << (v1207 - 1);
    v1209 = v1208 - 1;
    v1210 = -v1208;
    if (v1206 < v1209)
    {
      LODWORD(v1209) = v1156.i32[0] + v1155.i32[1];
    }

    if (v1206 >= v1210)
    {
      v1206 = v1209;
    }

    else
    {
      v1206 = v1210;
    }
  }

  a2[58] = v1206;
  v1211 = v1156.i32[1] + v1155.i32[0];
  v1212 = a4[9];
  if (v1212 >= 1)
  {
    v1213 = 1 << (v1212 - 1);
    v1214 = v1213 - 1;
    v1215 = -v1213;
    if (v1211 < v1214)
    {
      LODWORD(v1214) = v1156.i32[1] + v1155.i32[0];
    }

    if (v1211 >= v1215)
    {
      v1211 = v1214;
    }

    else
    {
      v1211 = v1215;
    }
  }

  a2[59] = v1211;
  v1216 = v1163 + HIDWORD(v946);
  v1217 = a4[9];
  if (v1217 >= 1)
  {
    v1218 = 1 << (v1217 - 1);
    v1219 = v1218 - 1;
    v1220 = -v1218;
    if (v1216 < v1219)
    {
      LODWORD(v1219) = v1216;
    }

    if (v1216 >= v1220)
    {
      v1216 = v1219;
    }

    else
    {
      v1216 = v1220;
    }
  }

  a2[60] = v1216;
  v1221 = v1157 + DWORD2(v946);
  v1222 = a4[9];
  if (v1222 >= 1)
  {
    v1223 = 1 << (v1222 - 1);
    v1224 = v1223 - 1;
    v1225 = -v1223;
    if (v1221 < v1224)
    {
      LODWORD(v1224) = v1221;
    }

    if (v1221 >= v1225)
    {
      v1221 = v1224;
    }

    else
    {
      v1221 = v1225;
    }
  }

  a2[61] = v1221;
  v1226 = DWORD2(v936) + DWORD1(v946);
  v1227 = a4[9];
  if (v1227 >= 1)
  {
    v1228 = 1 << (v1227 - 1);
    v1229 = v1228 - 1;
    v1230 = -v1228;
    if (v1226 < v1229)
    {
      LODWORD(v1229) = DWORD2(v936) + DWORD1(v946);
    }

    if (v1226 >= v1230)
    {
      v1226 = v1229;
    }

    else
    {
      v1226 = v1230;
    }
  }

  a2[62] = v1226;
  v1231 = HIDWORD(v936) + v946;
  v1232 = a4[9];
  if (v1232 >= 1)
  {
    v1233 = 1 << (v1232 - 1);
    v1234 = v1233 - 1;
    v1235 = -v1233;
    if (v1231 < v1234)
    {
      LODWORD(v1234) = HIDWORD(v936) + v946;
    }

    if (v1231 >= v1235)
    {
      v1231 = v1234;
    }

    else
    {
      v1231 = v1235;
    }
  }

  v1236 = vdup_lane_s32(v342, 0);
  v1237 = vdupq_lane_s32(v507, 0);
  a2[63] = v1231;
  v1238 = *a2;
  v1239 = a4[10];
  if (v1239 <= 0)
  {
    v1288 = vmovn_s64(*&v1063).i32[1];
    v1289 = vmovn_s64(v1064);
    v1290 = v1289.i32[1];
    v1291 = vmovn_s64(v1058);
    v1292 = v1291.i32[1];
    v1293 = vmovn_s64(v1057);
    v1294 = v1293.i32[1];
    v1808.i32[1] = v1288 + v992;
    v1295 = v1289.i32[0];
    v1296 = v1291.i32[0];
    v1808.i32[2] = v1289.i32[0] + v997;
    v1808.i32[3] = v1289.i32[1] + v1002;
    v1297 = v1293.i32[0];
    v1298 = a2[8];
    v1790.i32[0] = v1291.i32[1] + v1298;
    v1790.i32[1] = v1291.i32[0] + v1012;
    v1299 = a2[10];
    v1300 = a2[11];
    v1790.i32[2] = v1293.i32[1] + v1299;
    v1790.i32[3] = v1293.i32[0] + v1300;
    v1301 = a2[12];
    v1303 = a2[18];
    v1302 = a2[19];
    *v1794 = v1302 + v1301;
    *&v1794[4] = v1303 + v1032;
    v1304 = *(a2 + 14);
    v1305 = vrev64q_s32(v1304);
    v1306 = vextq_s8(v1305, v1305, 8uLL);
    *&v1307 = vaddq_s32(v1306, v1304).u64[0];
    *(&v1307 + 1) = vsubq_s32(v1306, v1304).i64[1];
    *&v1794[8] = v1307;
    *&v1794[24] = v1032 - v1303;
    *&v1794[28] = v1301 - v1302;
    *&v1794[32] = v1300 - v1297;
    *&v1794[36] = v1299 - v1294;
    v1283 = *&v1794[76] + v1238;
    *&v1794[40] = v1012 - v1296;
    *&v1794[44] = v1298 - v1292;
    *&v1794[48] = v1002 - v1290;
    *&v1794[52] = v997 - v1295;
    v1308 = a2[4];
    v1309 = a2[27];
    v1287 = v1309 + v1308;
    *&v1794[56] = v992 - v1288;
    *&v1794[60] = v1308 - v1309;
    v1310 = a2[2];
    v1285 = *&v1794[64] + v982;
    v1286 = *&v1794[68] + v1310;
    v1804.i32[0] = v982 - *&v1794[64];
    v1804.i32[1] = v1310 - DWORD1(v1051);
    v1282 = DWORD2(v1051) + v972;
    v1277 = v972 - DWORD2(v1051);
    v1280 = v1238 - HIDWORD(v1051);
  }

  else
  {
    v1240 = *(a2 + 1);
    v1241 = *(a2 + 2);
    v1242 = vaddq_s32(v1240, v1065);
    v1243.i64[0] = v1242.i32[2];
    v1243.i64[1] = v1242.i32[3];
    v1244 = v1243;
    v1245 = 1 << (v1239 - 1);
    v1246 = -v1245;
    v1247 = vdupq_n_s64(-v1245);
    v1243.i64[0] = v1242.i32[0];
    v1243.i64[1] = v1242.i32[1];
    v1248 = v1245 - 1;
    v1249 = vdupq_n_s64(v1248);
    v1250 = vbslq_s8(vcgtq_s64(v1247, v1243), v1247, vbslq_s8(vcgtq_s64(v1249, v1243), v1243, v1249));
    v1251 = vrev64q_s32(v1059);
    v1252 = vextq_s8(v1251, v1251, 8uLL);
    v1253 = vaddq_s32(v1252, v1241);
    v1243.i64[0] = v1253.i32[2];
    v1243.i64[1] = v1253.i32[3];
    v1254 = v1243;
    v1243.i64[0] = v1253.i32[0];
    v1243.i64[1] = v1253.i32[1];
    v1255 = vuzp1q_s32(vbslq_s8(vcgtq_s64(v1247, v1243), v1247, vbslq_s8(vcgtq_s64(v1249, v1243), v1243, v1249)), vbslq_s8(vcgtq_s64(v1247, v1254), v1247, vbslq_s8(vcgtq_s64(v1249, v1254), v1254, v1249)));
    v1256 = *(a2 + 3);
    v1257 = vrev64q_s32(v1256);
    v1258 = vtrn2q_s32(v1256, *&v1794[16]);
    v1256.i32[3] = *&v1794[16];
    v1259 = vextq_s8(*&v1794[16], v1258, 0xCuLL);
    v1259.i32[1] = *&v1794[24];
    v1260 = vaddq_s32(v1256, v1259);
    v1243.i64[0] = v1260.i32[2];
    v1243.i64[1] = v1260.i32[3];
    v1261 = v1243;
    v1243.i64[0] = v1260.i32[0];
    v1243.i64[1] = v1260.i32[1];
    v1790 = v1255;
    *v1794 = vuzp1q_s32(vbslq_s8(vcgtq_s64(v1247, v1243), v1247, vbslq_s8(vcgtq_s64(v1249, v1243), v1243, v1249)), vbslq_s8(vcgtq_s64(v1247, v1261), v1247, vbslq_s8(vcgtq_s64(v1249, v1261), v1261, v1249)));
    v1262 = vsubq_s32(vextq_s8(v1257, v1257, 8uLL), *&v1794[16]);
    v1243.i64[0] = v1262.i32[2];
    v1243.i64[1] = v1262.i32[3];
    v1263 = v1243;
    v1243.i64[0] = v1262.i32[0];
    v1243.i64[1] = v1262.i32[1];
    v1264 = vuzp1q_s32(vbslq_s8(vcgtq_s64(v1247, v1243), v1247, vbslq_s8(vcgtq_s64(v1249, v1243), v1243, v1249)), vbslq_s8(vcgtq_s64(v1247, v1263), v1247, vbslq_s8(vcgtq_s64(v1249, v1263), v1263, v1249)));
    v1265 = vsubq_s32(v1241, v1252);
    v1243.i64[0] = v1265.i32[2];
    v1243.i64[1] = v1265.i32[3];
    v1266 = v1243;
    v1243.i64[0] = v1265.i32[0];
    v1243.i64[1] = v1265.i32[1];
    v1267 = vrev64q_s32(vuzp1q_s32(vbslq_s8(vcgtq_s64(v1247, v1243), v1247, vbslq_s8(vcgtq_s64(v1249, v1243), v1243, v1249)), vbslq_s8(vcgtq_s64(v1247, v1266), v1247, vbslq_s8(vcgtq_s64(v1249, v1266), v1266, v1249))));
    *&v1794[16] = v1264;
    *&v1794[32] = vextq_s8(v1267, v1267, 8uLL);
    v1268 = vsubq_s32(v1240, v1065);
    v1243.i64[0] = v1268.i32[2];
    v1243.i64[1] = v1268.i32[3];
    v1269 = v1243;
    v1243.i64[0] = v1268.i32[0];
    v1243.i64[1] = v1268.i32[1];
    v1270 = vrev64q_s32(vuzp1q_s32(vbslq_s8(vcgtq_s64(v1247, v1243), v1247, vbslq_s8(vcgtq_s64(v1249, v1243), v1243, v1249)), vbslq_s8(vcgtq_s64(v1247, v1269), v1247, vbslq_s8(vcgtq_s64(v1249, v1269), v1269, v1249))));
    *&v1794[48] = vextq_s8(v1270, v1270, 8uLL);
    *v1270.i8 = vrev64_s32(*(a2 + 2));
    v1271 = vrev64_s32(vadd_s32(*&v1794[64], *v1270.i8));
    v1243.i64[0] = *&v1794[76] + *a2;
    v1243.i64[1] = *&v1794[72] + v972;
    v1272 = v1243;
    v1243.i64[0] = v1271.i32[0];
    v1243.i64[1] = v1271.i32[1];
    v1273 = vbslq_s8(vcgtq_s64(v1247, v1243), v1247, vbslq_s8(vcgtq_s64(v1249, v1243), v1243, v1249));
    v1274 = vbslq_s8(vcgtq_s64(v1247, v1272), v1247, vbslq_s8(vcgtq_s64(v1249, v1272), v1272, v1249));
    v1808 = vuzp1q_s32(v1250, vbslq_s8(vcgtq_s64(v1247, v1244), v1247, vbslq_s8(vcgtq_s64(v1249, v1244), v1244, v1249)));
    *&v1051 = vsub_s32(*v1270.i8, *&v1794[64]);
    v1243.i64[0] = v1051;
    v1243.i64[1] = SDWORD1(v1051);
    v1804 = vmovn_s64(vbslq_s8(vcgtq_s64(v1247, v1243), v1247, vbslq_s8(vcgtq_s64(v1249, v1243), v1243, v1249)));
    v1275 = v972 - DWORD2(v1051);
    if (v1275 >= v1248)
    {
      v1276 = v1248;
    }

    else
    {
      v1276 = v972 - DWORD2(v1051);
    }

    if (v1275 >= v1246)
    {
      v1277 = v1276;
    }

    else
    {
      v1277 = v1246;
    }

    v1278 = v1238 - HIDWORD(v1051);
    if (v1278 >= v1248)
    {
      v1279 = v1248;
    }

    else
    {
      v1279 = v1278;
    }

    if (v1278 >= v1246)
    {
      v1280 = v1279;
    }

    else
    {
      v1280 = v1246;
    }

    v1281 = vmovn_s64(v1274);
    v1282 = v1281.i32[1];
    v1283 = v1281.i32[0];
    v1284 = vmovn_s64(v1273);
    v1285 = v1284.i32[1];
    v1286 = v1284.i32[0];
    v1287 = vmovn_s64(v1250).u32[0];
  }

  v1732 = *(a2 + 8);
  v1740 = *(a2 + 9);
  v1312 = *(a2 + 10);
  v1311 = *(a2 + 11);
  v1313 = vmulq_s32(v1312, v1237);
  v1314 = *(a2 + 13);
  v1315 = vmulq_s32(v1314, v1050);
  v1316.i64[0] = v1315.i32[0];
  v1316.i64[1] = v1315.i32[1];
  v1317 = v1316;
  v1805 = v1277;
  v1806 = v1280;
  v1316.i64[0] = v1315.i32[2];
  v1316.i64[1] = v1315.i32[3];
  v1318 = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v63, *v1313.i8), vextq_s8(v1316, v1316, 8uLL)), v67), vshlq_s64(vaddq_s64(vaddw_high_s32(v63, v1313), vextq_s8(v1317, v1317, 8uLL)), v67));
  v1319 = vmulq_s32(v1311, v1237);
  v1320 = vmulq_s32(*(a2 + 12), v1050);
  v1316.i64[0] = v1320.i32[0];
  v1316.i64[1] = v1320.i32[1];
  v1321 = v1316;
  v1316.i64[0] = v1320.i32[2];
  v1316.i64[1] = v1320.i32[3];
  v1322 = vextq_s8(v1316, v1316, 8uLL);
  v1323 = vextq_s8(v1321, v1321, 8uLL);
  v1324 = vaddw_s32(v63, *v1319.i8);
  v1325 = vshlq_s64(vaddq_s64(vaddw_high_s32(v63, v1319), v1323), v67);
  v1748 = v1318;
  v1756 = vuzp1q_s32(vshlq_s64(vaddq_s64(v1324, v1322), v67), v1325);
  v1326 = vmulq_s32(v1311, v1050);
  v1327 = vshlq_s64(vaddq_s64(vaddw_s32(v63, *v1326.i8), v1322), v67);
  v1328 = vshlq_s64(vaddq_s64(vaddw_high_s32(v63, v1326), v1323), v67);
  v1329.i32[0] = vdup_laneq_s32(v1312, 3).u32[0];
  v1329.i32[1] = *(a2 + 21);
  v1317.i64[1] = (v1314.i32[1] * v1726);
  v1330 = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v63, vmul_s32(v1329, v1236)), v1317), v67));
  v1331 = vaddw_s32(v63, vmul_s32(v1236, *v1312.i8));
  v1332 = vmovn_s64(vshlq_s64(vaddw_s32(vextq_s8(v1331, v1331, 8uLL), vmul_s32(v1236, v1314.u64[1])), v67));
  v1333 = *(a2 + 14);
  v1334 = *(a2 + 15);
  v1335 = HIDWORD(v1334) + v1283;
  v1336 = a4[11];
  v1337 = *(a2 + 31);
  if (v1336 >= 1)
  {
    v1338 = 1 << (v1336 - 1);
    v1339 = v1338 - 1;
    v1340 = -v1338;
    if (v1335 < v1339)
    {
      LODWORD(v1339) = HIDWORD(v1334) + v1283;
    }

    if (v1335 >= v1340)
    {
      v1335 = v1339;
    }

    else
    {
      v1335 = v1340;
    }
  }

  *a2 = v1335;
  v1341 = v1337 + v1282;
  v1342 = a4[11];
  if (v1342 >= 1)
  {
    v1343 = 1 << (v1342 - 1);
    v1344 = v1343 - 1;
    v1345 = -v1343;
    if (v1341 < v1344)
    {
      LODWORD(v1344) = v1337 + v1282;
    }

    if (v1341 >= v1345)
    {
      v1341 = v1344;
    }

    else
    {
      v1341 = v1345;
    }
  }

  a2[1] = v1341;
  v1346 = DWORD1(v1334) + v1286;
  v1347 = a4[11];
  if (v1347 >= 1)
  {
    v1348 = 1 << (v1347 - 1);
    v1349 = v1348 - 1;
    v1350 = -v1348;
    if (v1346 < v1349)
    {
      LODWORD(v1349) = DWORD1(v1334) + v1286;
    }

    if (v1346 >= v1350)
    {
      v1346 = v1349;
    }

    else
    {
      v1346 = v1350;
    }
  }

  a2[2] = v1346;
  v1351 = v1334 + v1285;
  v1352 = a4[11];
  if (v1352 >= 1)
  {
    v1353 = 1 << (v1352 - 1);
    v1354 = v1353 - 1;
    v1355 = -v1353;
    if (v1351 < v1354)
    {
      LODWORD(v1354) = v1334 + v1285;
    }

    if (v1351 >= v1355)
    {
      v1351 = v1354;
    }

    else
    {
      v1351 = v1355;
    }
  }

  a2[3] = v1351;
  v1356 = HIDWORD(v1333) + v1287;
  v1357 = a4[11];
  if (v1357 >= 1)
  {
    v1358 = 1 << (v1357 - 1);
    v1359 = v1358 - 1;
    v1360 = -v1358;
    if (v1356 < v1359)
    {
      LODWORD(v1359) = HIDWORD(v1333) + v1287;
    }

    if (v1356 >= v1360)
    {
      v1356 = v1359;
    }

    else
    {
      v1356 = v1360;
    }
  }

  v1361 = DWORD1(v1333);
  a2[4] = v1356;
  v1362 = DWORD2(v1333) + v1808.i32[1];
  v1363 = a4[11];
  if (v1363 >= 1)
  {
    v1364 = 1 << (v1363 - 1);
    v1365 = v1364 - 1;
    v1366 = -v1364;
    if (v1362 < v1365)
    {
      LODWORD(v1365) = DWORD2(v1333) + v1808.i32[1];
    }

    if (v1362 >= v1366)
    {
      v1362 = v1365;
    }

    else
    {
      v1362 = v1366;
    }
  }

  v1367 = v1333;
  a2[5] = v1362;
  v1368 = DWORD1(v1333) + v1808.i32[2];
  v1369 = a4[11];
  if (v1369 >= 1)
  {
    v1370 = 1 << (v1369 - 1);
    v1371 = v1370 - 1;
    v1372 = -v1370;
    if (v1368 < v1371)
    {
      LODWORD(v1371) = DWORD1(v1333) + v1808.i32[2];
    }

    if (v1368 >= v1372)
    {
      v1368 = v1371;
    }

    else
    {
      v1368 = v1372;
    }
  }

  v1373 = v1332.i32[1];
  a2[6] = v1368;
  v1374 = v1333 + v1808.i32[3];
  v1375 = a4[11];
  if (v1375 >= 1)
  {
    v1376 = 1 << (v1375 - 1);
    v1377 = v1376 - 1;
    v1378 = -v1376;
    if (v1374 < v1377)
    {
      LODWORD(v1377) = v1333 + v1808.i32[3];
    }

    if (v1374 >= v1378)
    {
      v1374 = v1377;
    }

    else
    {
      v1374 = v1378;
    }
  }

  v1379 = v1332.i32[0];
  a2[7] = v1374;
  v1380 = v1332.i32[1] + v1790.i32[0];
  v1381 = a4[11];
  if (v1381 >= 1)
  {
    v1382 = 1 << (v1381 - 1);
    v1383 = v1382 - 1;
    v1384 = -v1382;
    if (v1380 < v1383)
    {
      LODWORD(v1383) = v1332.i32[1] + v1790.i32[0];
    }

    if (v1380 >= v1384)
    {
      v1380 = v1383;
    }

    else
    {
      v1380 = v1384;
    }
  }

  v1385 = vmovn_s64(v1327);
  a2[8] = v1380;
  v1386 = v1332.i32[0] + v1790.i32[1];
  v1387 = a4[11];
  if (v1387 >= 1)
  {
    v1388 = 1 << (v1387 - 1);
    v1389 = v1388 - 1;
    v1390 = -v1388;
    if (v1386 < v1389)
    {
      LODWORD(v1389) = v1332.i32[0] + v1790.i32[1];
    }

    if (v1386 >= v1390)
    {
      v1386 = v1389;
    }

    else
    {
      v1386 = v1390;
    }
  }

  a2[9] = v1386;
  v1391 = v1330.i32[1] + v1790.i32[2];
  v1392 = a4[11];
  if (v1392 >= 1)
  {
    v1393 = 1 << (v1392 - 1);
    v1394 = v1393 - 1;
    v1395 = -v1393;
    if (v1391 < v1394)
    {
      LODWORD(v1394) = v1330.i32[1] + v1790.i32[2];
    }

    if (v1391 >= v1395)
    {
      v1391 = v1394;
    }

    else
    {
      v1391 = v1395;
    }
  }

  v1396 = vmovn_s64(v1328);
  v1397 = v1385.i32[0];
  a2[10] = v1391;
  v1398 = v1330.i32[0] + v1790.i32[3];
  v1399 = a4[11];
  if (v1399 >= 1)
  {
    v1400 = 1 << (v1399 - 1);
    v1401 = v1400 - 1;
    v1402 = -v1400;
    if (v1398 < v1401)
    {
      LODWORD(v1401) = v1330.i32[0] + v1790.i32[3];
    }

    if (v1398 >= v1402)
    {
      v1398 = v1401;
    }

    else
    {
      v1398 = v1402;
    }
  }

  v1403 = v1385.i32[1];
  a2[11] = v1398;
  v1404 = v1385.i32[0] + *v1795;
  v1405 = a4[11];
  if (v1405 >= 1)
  {
    v1406 = 1 << (v1405 - 1);
    v1407 = v1406 - 1;
    v1408 = -v1406;
    if (v1404 < v1407)
    {
      LODWORD(v1407) = v1385.i32[0] + *v1795;
    }

    if (v1404 >= v1408)
    {
      v1404 = v1407;
    }

    else
    {
      v1404 = v1408;
    }
  }

  v1409 = vmovn_s64(v1325);
  a2[12] = v1404;
  v1410 = v1403 + *&v1795[4];
  v1411 = a4[11];
  if (v1411 >= 1)
  {
    v1412 = 1 << (v1411 - 1);
    v1413 = v1412 - 1;
    v1414 = -v1412;
    if (v1410 < v1413)
    {
      LODWORD(v1413) = v1403 + *&v1795[4];
    }

    if (v1410 >= v1414)
    {
      v1410 = v1413;
    }

    else
    {
      v1410 = v1414;
    }
  }

  a2[13] = v1410;
  v1415 = v1396.i32[0] + *&v1795[8];
  v1416 = a4[11];
  if (v1416 >= 1)
  {
    v1417 = 1 << (v1416 - 1);
    v1418 = v1417 - 1;
    v1419 = -v1417;
    if (v1415 < v1418)
    {
      LODWORD(v1418) = v1396.i32[0] + *&v1795[8];
    }

    if (v1415 >= v1419)
    {
      v1415 = v1418;
    }

    else
    {
      v1415 = v1419;
    }
  }

  a2[14] = v1415;
  v1420 = v1396.i32[1] + *&v1795[12];
  v1421 = a4[11];
  if (v1421 >= 1)
  {
    v1422 = 1 << (v1421 - 1);
    v1423 = v1422 - 1;
    v1424 = -v1422;
    if (v1420 < v1423)
    {
      LODWORD(v1423) = v1396.i32[1] + *&v1795[12];
    }

    if (v1420 >= v1424)
    {
      v1420 = v1423;
    }

    else
    {
      v1420 = v1424;
    }
  }

  a2[15] = v1420;
  v1425 = v1409.i32[1] + *&v1795[16];
  v1426 = a4[11];
  if (v1426 >= 1)
  {
    v1427 = 1 << (v1426 - 1);
    v1428 = v1427 - 1;
    v1429 = -v1427;
    if (v1425 < v1428)
    {
      LODWORD(v1428) = v1409.i32[1] + *&v1795[16];
    }

    if (v1425 >= v1429)
    {
      v1425 = v1428;
    }

    else
    {
      v1425 = v1429;
    }
  }

  a2[16] = v1425;
  v1430 = v1756.i32[2] + *&v1795[20];
  v1431 = a4[11];
  if (v1431 >= 1)
  {
    v1432 = 1 << (v1431 - 1);
    v1433 = v1432 - 1;
    v1434 = -v1432;
    if (v1430 < v1433)
    {
      LODWORD(v1433) = v1756.i32[2] + *&v1795[20];
    }

    if (v1430 >= v1434)
    {
      v1430 = v1433;
    }

    else
    {
      v1430 = v1434;
    }
  }

  a2[17] = v1430;
  v1435 = v1756.i32[1] + *&v1795[24];
  v1436 = a4[11];
  if (v1436 >= 1)
  {
    v1437 = 1 << (v1436 - 1);
    v1438 = v1437 - 1;
    v1439 = -v1437;
    if (v1435 < v1438)
    {
      LODWORD(v1438) = v1756.i32[1] + *&v1795[24];
    }

    if (v1435 >= v1439)
    {
      v1435 = v1438;
    }

    else
    {
      v1435 = v1439;
    }
  }

  a2[18] = v1435;
  v1440 = v1756.i32[0] + *&v1795[28];
  v1441 = a4[11];
  if (v1441 >= 1)
  {
    v1442 = 1 << (v1441 - 1);
    v1443 = v1442 - 1;
    v1444 = -v1442;
    if (v1440 < v1443)
    {
      LODWORD(v1443) = v1756.i32[0] + *&v1795[28];
    }

    if (v1440 >= v1444)
    {
      v1440 = v1443;
    }

    else
    {
      v1440 = v1444;
    }
  }

  a2[19] = v1440;
  v1445 = v1748.i32[3] + v1800;
  v1446 = a4[11];
  if (v1446 >= 1)
  {
    v1447 = 1 << (v1446 - 1);
    v1448 = v1447 - 1;
    v1449 = -v1447;
    if (v1445 < v1448)
    {
      LODWORD(v1448) = v1748.i32[3] + v1800;
    }

    if (v1445 >= v1449)
    {
      v1445 = v1448;
    }

    else
    {
      v1445 = v1449;
    }
  }

  v1727 = v1337;
  a2[20] = v1445;
  v1450 = DWORD1(v1800);
  v1451 = v1748.i32[2] + DWORD1(v1800);
  v1452 = a4[11];
  if (v1452 >= 1)
  {
    v1453 = 1 << (v1452 - 1);
    v1454 = v1453 - 1;
    v1455 = -v1453;
    if (v1451 < v1454)
    {
      LODWORD(v1454) = v1748.i32[2] + DWORD1(v1800);
    }

    if (v1451 >= v1455)
    {
      v1451 = v1454;
    }

    else
    {
      v1451 = v1455;
    }
  }

  a2[21] = v1451;
  v1456 = v1748.i32[1] + DWORD2(v1800);
  v1457 = a4[11];
  if (v1457 >= 1)
  {
    v1458 = 1 << (v1457 - 1);
    v1459 = v1458 - 1;
    v1460 = -v1458;
    if (v1456 < v1459)
    {
      LODWORD(v1459) = v1748.i32[1] + DWORD2(v1800);
    }

    if (v1456 >= v1460)
    {
      v1456 = v1459;
    }

    else
    {
      v1456 = v1460;
    }
  }

  a2[22] = v1456;
  v1461 = v1748.i32[0] + HIDWORD(v1800);
  v1462 = a4[11];
  if (v1462 >= 1)
  {
    v1463 = 1 << (v1462 - 1);
    v1464 = v1463 - 1;
    v1465 = -v1463;
    if (v1461 < v1464)
    {
      LODWORD(v1464) = v1748.i32[0] + HIDWORD(v1800);
    }

    if (v1461 >= v1465)
    {
      v1461 = v1464;
    }

    else
    {
      v1461 = v1465;
    }
  }

  a2[23] = v1461;
  v1466 = HIDWORD(v1740) + v1802;
  v1467 = a4[11];
  if (v1467 >= 1)
  {
    v1468 = 1 << (v1467 - 1);
    v1469 = v1468 - 1;
    v1470 = -v1468;
    if (v1466 < v1469)
    {
      LODWORD(v1469) = HIDWORD(v1740) + v1802;
    }

    if (v1466 >= v1470)
    {
      v1466 = v1469;
    }

    else
    {
      v1466 = v1470;
    }
  }

  a2[24] = v1466;
  v1471 = DWORD2(v1740) + DWORD1(v1802);
  v1472 = a4[11];
  if (v1472 >= 1)
  {
    v1473 = 1 << (v1472 - 1);
    v1474 = v1473 - 1;
    v1475 = -v1473;
    if (v1471 < v1474)
    {
      LODWORD(v1474) = DWORD2(v1740) + DWORD1(v1802);
    }

    if (v1471 >= v1475)
    {
      v1471 = v1474;
    }

    else
    {
      v1471 = v1475;
    }
  }

  a2[25] = v1471;
  v1476 = DWORD1(v1740) + DWORD2(v1802);
  v1477 = a4[11];
  if (v1477 >= 1)
  {
    v1478 = 1 << (v1477 - 1);
    v1479 = v1478 - 1;
    v1480 = -v1478;
    if (v1476 < v1479)
    {
      LODWORD(v1479) = DWORD1(v1740) + DWORD2(v1802);
    }

    if (v1476 >= v1480)
    {
      v1476 = v1479;
    }

    else
    {
      v1476 = v1480;
    }
  }

  a2[26] = v1476;
  v1481 = v1740 + HIDWORD(v1802);
  v1482 = a4[11];
  if (v1482 >= 1)
  {
    v1483 = 1 << (v1482 - 1);
    v1484 = v1483 - 1;
    v1485 = -v1483;
    if (v1481 < v1484)
    {
      LODWORD(v1484) = v1740 + HIDWORD(v1802);
    }

    if (v1481 >= v1485)
    {
      v1481 = v1484;
    }

    else
    {
      v1481 = v1485;
    }
  }

  a2[27] = v1481;
  v1486 = HIDWORD(v1732) + v1804.i32[0];
  v1487 = a4[11];
  if (v1487 >= 1)
  {
    v1488 = 1 << (v1487 - 1);
    v1489 = v1488 - 1;
    v1490 = -v1488;
    if (v1486 < v1489)
    {
      LODWORD(v1489) = HIDWORD(v1732) + v1804.i32[0];
    }

    if (v1486 >= v1490)
    {
      v1486 = v1489;
    }

    else
    {
      v1486 = v1490;
    }
  }

  v1491 = v1287;
  a2[28] = v1486;
  v1492 = DWORD2(v1732) + v1804.i32[1];
  v1493 = a4[11];
  v1494 = v1361;
  if (v1493 >= 1)
  {
    v1495 = 1 << (v1493 - 1);
    v1496 = v1495 - 1;
    v1497 = -v1495;
    if (v1492 < v1496)
    {
      LODWORD(v1496) = DWORD2(v1732) + v1804.i32[1];
    }

    if (v1492 >= v1497)
    {
      v1492 = v1496;
    }

    else
    {
      v1492 = v1497;
    }
  }

  v1498 = v1367;
  a2[29] = v1492;
  v1499 = DWORD1(v1732) + v1805;
  v1500 = a4[11];
  v1501 = v1373;
  if (v1500 >= 1)
  {
    v1502 = 1 << (v1500 - 1);
    v1503 = v1502 - 1;
    v1504 = -v1502;
    if (v1499 < v1503)
    {
      LODWORD(v1503) = DWORD1(v1732) + v1805;
    }

    if (v1499 >= v1504)
    {
      v1499 = v1503;
    }

    else
    {
      v1499 = v1504;
    }
  }

  a2[30] = v1499;
  v1505 = v1732 + v1806;
  v1506 = a4[11];
  if (v1506 >= 1)
  {
    v1507 = v1286;
    v1508 = v1282;
    v1509 = v1283;
    v1510 = 1 << (v1506 - 1);
    v1511 = v1510 - 1;
    v1512 = -v1510;
    if (v1505 < v1511)
    {
      LODWORD(v1511) = v1732 + v1806;
    }

    if (v1505 >= v1512)
    {
      v1505 = v1511;
    }

    else
    {
      v1505 = v1512;
    }

    v1283 = v1509;
    v1282 = v1508;
    v1286 = v1507;
    v1450 = DWORD1(v1800);
  }

  a2[31] = v1505;
  v1513 = v1806 - v1732;
  v1514 = a4[11];
  if (v1514 >= 1)
  {
    v1515 = 1 << (v1514 - 1);
    v1516 = v1515 - 1;
    v1517 = -v1515;
    if (v1513 < v1516)
    {
      LODWORD(v1516) = v1806 - v1732;
    }

    if (v1513 >= v1517)
    {
      v1513 = v1516;
    }

    else
    {
      v1513 = v1517;
    }
  }

  result = v1494;
  a2[32] = v1513;
  v1519 = v1805 - DWORD1(v1732);
  v1520 = a4[11];
  if (v1520 >= 1)
  {
    v1521 = 1 << (v1520 - 1);
    v1522 = v1521 - 1;
    v1523 = -v1521;
    if (v1519 < v1522)
    {
      LODWORD(v1522) = v1805 - DWORD1(v1732);
    }

    if (v1519 >= v1523)
    {
      v1519 = v1522;
    }

    else
    {
      v1519 = v1523;
    }
  }

  a2[33] = v1519;
  v1524 = v1804.i32[1] - DWORD2(v1732);
  v1525 = a4[11];
  if (v1525 >= 1)
  {
    v1526 = 1 << (v1525 - 1);
    v1527 = v1526 - 1;
    v1528 = -v1526;
    if (v1524 < v1527)
    {
      LODWORD(v1527) = v1804.i32[1] - DWORD2(v1732);
    }

    if (v1524 >= v1528)
    {
      v1524 = v1527;
    }

    else
    {
      v1524 = v1528;
    }
  }

  a2[34] = v1524;
  v1529 = v1804.i32[0] - HIDWORD(v1732);
  v1530 = a4[11];
  if (v1530 >= 1)
  {
    v1531 = 1 << (v1530 - 1);
    v1532 = v1531 - 1;
    v1533 = -v1531;
    if (v1529 < v1532)
    {
      LODWORD(v1532) = v1804.i32[0] - HIDWORD(v1732);
    }

    if (v1529 >= v1533)
    {
      v1529 = v1532;
    }

    else
    {
      v1529 = v1533;
    }
  }

  a2[35] = v1529;
  v1534 = HIDWORD(v1802) - v1740;
  v1535 = a4[11];
  if (v1535 >= 1)
  {
    v1536 = 1 << (v1535 - 1);
    v1537 = v1536 - 1;
    v1538 = -v1536;
    if (v1534 < v1537)
    {
      LODWORD(v1537) = HIDWORD(v1802) - v1740;
    }

    if (v1534 >= v1538)
    {
      v1534 = v1537;
    }

    else
    {
      v1534 = v1538;
    }
  }

  a2[36] = v1534;
  v1539 = DWORD2(v1802) - DWORD1(v1740);
  v1540 = a4[11];
  if (v1540 >= 1)
  {
    v1541 = 1 << (v1540 - 1);
    v1542 = v1541 - 1;
    v1543 = -v1541;
    if (v1539 < v1542)
    {
      LODWORD(v1542) = DWORD2(v1802) - DWORD1(v1740);
    }

    if (v1539 >= v1543)
    {
      v1539 = v1542;
    }

    else
    {
      v1539 = v1543;
    }
  }

  a2[37] = v1539;
  v1544 = DWORD1(v1802) - DWORD2(v1740);
  v1545 = a4[11];
  if (v1545 >= 1)
  {
    v1546 = 1 << (v1545 - 1);
    v1547 = v1546 - 1;
    v1548 = -v1546;
    if (v1544 < v1547)
    {
      LODWORD(v1547) = DWORD1(v1802) - DWORD2(v1740);
    }

    if (v1544 >= v1548)
    {
      v1544 = v1547;
    }

    else
    {
      v1544 = v1548;
    }
  }

  a2[38] = v1544;
  v1549 = v1802 - HIDWORD(v1740);
  v1550 = a4[11];
  if (v1550 >= 1)
  {
    v1551 = 1 << (v1550 - 1);
    v1552 = v1551 - 1;
    v1553 = -v1551;
    if (v1549 < v1552)
    {
      LODWORD(v1552) = v1802 - HIDWORD(v1740);
    }

    if (v1549 >= v1553)
    {
      v1549 = v1552;
    }

    else
    {
      v1549 = v1553;
    }
  }

  a2[39] = v1549;
  v1554 = HIDWORD(v1800) - v1748.i32[0];
  v1555 = a4[11];
  if (v1555 >= 1)
  {
    v1556 = 1 << (v1555 - 1);
    v1557 = v1556 - 1;
    v1558 = -v1556;
    if (v1554 < v1557)
    {
      LODWORD(v1557) = HIDWORD(v1800) - v1748.i32[0];
    }

    if (v1554 >= v1558)
    {
      v1554 = v1557;
    }

    else
    {
      v1554 = v1558;
    }
  }

  a2[40] = v1554;
  v1559 = DWORD2(v1800) - v1748.i32[1];
  v1560 = a4[11];
  if (v1560 >= 1)
  {
    v1561 = 1 << (v1560 - 1);
    v1562 = v1561 - 1;
    v1563 = -v1561;
    if (v1559 < v1562)
    {
      LODWORD(v1562) = DWORD2(v1800) - v1748.i32[1];
    }

    if (v1559 >= v1563)
    {
      v1559 = v1562;
    }

    else
    {
      v1559 = v1563;
    }
  }

  a2[41] = v1559;
  v1564 = v1450 - v1748.i32[2];
  v1565 = a4[11];
  if (v1565 >= 1)
  {
    v1566 = 1 << (v1565 - 1);
    v1567 = v1566 - 1;
    v1568 = -v1566;
    if (v1564 < v1567)
    {
      LODWORD(v1567) = v1564;
    }

    if (v1564 >= v1568)
    {
      v1564 = v1567;
    }

    else
    {
      v1564 = v1568;
    }
  }

  a2[42] = v1564;
  v1569 = v1800 - v1748.i32[3];
  v1570 = a4[11];
  if (v1570 >= 1)
  {
    v1571 = 1 << (v1570 - 1);
    v1572 = v1571 - 1;
    v1573 = -v1571;
    if (v1569 < v1572)
    {
      LODWORD(v1572) = v1800 - v1748.i32[3];
    }

    if (v1569 >= v1573)
    {
      v1569 = v1572;
    }

    else
    {
      v1569 = v1573;
    }
  }

  a2[43] = v1569;
  v1574 = *&v1795[28] - v1756.i32[0];
  v1575 = a4[11];
  if (v1575 >= 1)
  {
    v1576 = 1 << (v1575 - 1);
    v1577 = v1576 - 1;
    v1578 = -v1576;
    if (v1574 < v1577)
    {
      LODWORD(v1577) = *&v1795[28] - v1756.i32[0];
    }

    if (v1574 >= v1578)
    {
      v1574 = v1577;
    }

    else
    {
      v1574 = v1578;
    }
  }

  a2[44] = v1574;
  v1579 = *&v1795[24] - v1756.i32[1];
  v1580 = a4[11];
  if (v1580 >= 1)
  {
    v1581 = 1 << (v1580 - 1);
    v1582 = v1581 - 1;
    v1583 = -v1581;
    if (v1579 < v1582)
    {
      LODWORD(v1582) = *&v1795[24] - v1756.i32[1];
    }

    if (v1579 >= v1583)
    {
      v1579 = v1582;
    }

    else
    {
      v1579 = v1583;
    }
  }

  a2[45] = v1579;
  v1584 = *&v1795[20] - v1756.i32[2];
  v1585 = a4[11];
  if (v1585 >= 1)
  {
    v1586 = 1 << (v1585 - 1);
    v1587 = v1586 - 1;
    v1588 = -v1586;
    if (v1584 < v1587)
    {
      LODWORD(v1587) = *&v1795[20] - v1756.i32[2];
    }

    if (v1584 >= v1588)
    {
      v1584 = v1587;
    }

    else
    {
      v1584 = v1588;
    }
  }

  a2[46] = v1584;
  v1589 = *&v1795[16] - v1409.i32[1];
  v1590 = a4[11];
  if (v1590 >= 1)
  {
    v1591 = 1 << (v1590 - 1);
    v1592 = v1591 - 1;
    v1593 = -v1591;
    if (v1589 < v1592)
    {
      LODWORD(v1592) = *&v1795[16] - v1409.i32[1];
    }

    if (v1589 >= v1593)
    {
      v1589 = v1592;
    }

    else
    {
      v1589 = v1593;
    }
  }

  a2[47] = v1589;
  v1594 = *&v1795[12] - v1396.i32[1];
  v1595 = a4[11];
  if (v1595 >= 1)
  {
    v1596 = 1 << (v1595 - 1);
    v1597 = v1596 - 1;
    v1598 = -v1596;
    if (v1594 < v1597)
    {
      LODWORD(v1597) = *&v1795[12] - v1396.i32[1];
    }

    if (v1594 >= v1598)
    {
      v1594 = v1597;
    }

    else
    {
      v1594 = v1598;
    }
  }

  a2[48] = v1594;
  v1599 = *&v1795[8] - v1396.i32[0];
  v1600 = a4[11];
  if (v1600 >= 1)
  {
    v1601 = 1 << (v1600 - 1);
    v1602 = v1601 - 1;
    v1603 = -v1601;
    if (v1599 < v1602)
    {
      LODWORD(v1602) = *&v1795[8] - v1396.i32[0];
    }

    if (v1599 >= v1603)
    {
      v1599 = v1602;
    }

    else
    {
      v1599 = v1603;
    }
  }

  a2[49] = v1599;
  v1604 = *&v1795[4] - v1403;
  v1605 = a4[11];
  if (v1605 >= 1)
  {
    v1606 = 1 << (v1605 - 1);
    v1607 = v1606 - 1;
    v1608 = -v1606;
    if (v1604 < v1607)
    {
      LODWORD(v1607) = *&v1795[4] - v1403;
    }

    if (v1604 >= v1608)
    {
      v1604 = v1607;
    }

    else
    {
      v1604 = v1608;
    }
  }

  a2[50] = v1604;
  v1609 = *v1795 - v1397;
  v1610 = a4[11];
  if (v1610 >= 1)
  {
    v1611 = 1 << (v1610 - 1);
    v1612 = v1611 - 1;
    v1613 = -v1611;
    if (v1609 < v1612)
    {
      LODWORD(v1612) = *v1795 - v1397;
    }

    if (v1609 >= v1613)
    {
      v1609 = v1612;
    }

    else
    {
      v1609 = v1613;
    }
  }

  a2[51] = v1609;
  v1614 = v1790.i32[3] - v1330.i32[0];
  v1615 = a4[11];
  if (v1615 >= 1)
  {
    v1616 = 1 << (v1615 - 1);
    v1617 = v1616 - 1;
    v1618 = -v1616;
    if (v1614 < v1617)
    {
      LODWORD(v1617) = v1790.i32[3] - v1330.i32[0];
    }

    if (v1614 >= v1618)
    {
      v1614 = v1617;
    }

    else
    {
      v1614 = v1618;
    }
  }

  a2[52] = v1614;
  v1619 = v1790.i32[2] - v1330.i32[1];
  v1620 = a4[11];
  if (v1620 >= 1)
  {
    v1621 = 1 << (v1620 - 1);
    v1622 = v1621 - 1;
    v1623 = -v1621;
    if (v1619 < v1622)
    {
      LODWORD(v1622) = v1790.i32[2] - v1330.i32[1];
    }

    if (v1619 >= v1623)
    {
      v1619 = v1622;
    }

    else
    {
      v1619 = v1623;
    }
  }

  a2[53] = v1619;
  v1624 = v1790.i32[1] - v1379;
  v1625 = a4[11];
  if (v1625 >= 1)
  {
    v1626 = 1 << (v1625 - 1);
    v1627 = v1626 - 1;
    v1628 = -v1626;
    if (v1624 < v1627)
    {
      LODWORD(v1627) = v1790.i32[1] - v1379;
    }

    if (v1624 >= v1628)
    {
      v1624 = v1627;
    }

    else
    {
      v1624 = v1628;
    }
  }

  a2[54] = v1624;
  v1629 = v1790.i32[0] - v1501;
  v1630 = a4[11];
  if (v1630 >= 1)
  {
    v1631 = 1 << (v1630 - 1);
    v1632 = v1631 - 1;
    v1633 = -v1631;
    if (v1629 < v1632)
    {
      LODWORD(v1632) = v1790.i32[0] - v1501;
    }

    if (v1629 >= v1633)
    {
      v1629 = v1632;
    }

    else
    {
      v1629 = v1633;
    }
  }

  a2[55] = v1629;
  v1634 = v1808.i32[3] - v1498;
  v1635 = a4[11];
  if (v1635 >= 1)
  {
    v1636 = 1 << (v1635 - 1);
    v1637 = v1636 - 1;
    v1638 = -v1636;
    if (v1634 < v1637)
    {
      LODWORD(v1637) = v1808.i32[3] - v1498;
    }

    if (v1634 >= v1638)
    {
      v1634 = v1637;
    }

    else
    {
      v1634 = v1638;
    }
  }

  a2[56] = v1634;
  v1639 = v1808.i32[2] - v1494;
  v1640 = a4[11];
  if (v1640 >= 1)
  {
    v1641 = 1 << (v1640 - 1);
    v1642 = v1641 - 1;
    v1643 = -v1641;
    if (v1639 < v1642)
    {
      LODWORD(v1642) = v1808.i32[2] - v1494;
    }

    if (v1639 >= v1643)
    {
      v1639 = v1642;
    }

    else
    {
      v1639 = v1643;
    }
  }

  a2[57] = v1639;
  v1644 = v1808.i32[1] - DWORD2(v1333);
  v1645 = a4[11];
  if (v1645 >= 1)
  {
    v1646 = 1 << (v1645 - 1);
    v1647 = v1646 - 1;
    v1648 = -v1646;
    if (v1644 < v1647)
    {
      LODWORD(v1647) = v1808.i32[1] - DWORD2(v1333);
    }

    if (v1644 >= v1648)
    {
      v1644 = v1647;
    }

    else
    {
      v1644 = v1648;
    }
  }

  a2[58] = v1644;
  v1649 = v1491 - HIDWORD(v1333);
  v1650 = a4[11];
  if (v1650 >= 1)
  {
    v1651 = 1 << (v1650 - 1);
    v1652 = v1651 - 1;
    v1653 = -v1651;
    if (v1649 < v1652)
    {
      LODWORD(v1652) = v1491 - HIDWORD(v1333);
    }

    if (v1649 >= v1653)
    {
      v1649 = v1652;
    }

    else
    {
      v1649 = v1653;
    }
  }

  a2[59] = v1649;
  v1654 = v1285 - v1334;
  v1655 = a4[11];
  if (v1655 >= 1)
  {
    v1656 = 1 << (v1655 - 1);
    v1657 = v1656 - 1;
    v1658 = -v1656;
    if (v1654 < v1657)
    {
      LODWORD(v1657) = v1285 - v1334;
    }

    if (v1654 >= v1658)
    {
      v1654 = v1657;
    }

    else
    {
      v1654 = v1658;
    }
  }

  a2[60] = v1654;
  v1659 = v1286 - DWORD1(v1334);
  v1660 = a4[11];
  if (v1660 >= 1)
  {
    v1661 = 1 << (v1660 - 1);
    v1662 = v1661 - 1;
    v1663 = -v1661;
    if (v1659 < v1662)
    {
      LODWORD(v1662) = v1286 - DWORD1(v1334);
    }

    if (v1659 >= v1663)
    {
      v1659 = v1662;
    }

    else
    {
      v1659 = v1663;
    }
  }

  a2[61] = v1659;
  v1664 = v1282 - v1727;
  v1665 = a4[11];
  if (v1665 >= 1)
  {
    v1666 = 1 << (v1665 - 1);
    v1667 = v1666 - 1;
    v1668 = -v1666;
    if (v1664 < v1667)
    {
      LODWORD(v1667) = v1282 - v1727;
    }

    if (v1664 >= v1668)
    {
      v1664 = v1667;
    }

    else
    {
      v1664 = v1668;
    }
  }

  a2[62] = v1664;
  v1669 = v1283 - HIDWORD(v1334);
  v1670 = a4[11];
  if (v1670 >= 1)
  {
    v1671 = 1 << (v1670 - 1);
    v1672 = v1671 - 1;
    v1673 = -v1671;
    if (v1669 < v1672)
    {
      LODWORD(v1672) = v1283 - HIDWORD(v1334);
    }

    if (v1669 >= v1673)
    {
      v1669 = v1672;
    }

    else
    {
      v1669 = v1673;
    }
  }

  a2[63] = v1669;
  return result;
}

_WORD *sub_277BB3A8C(_WORD *result, uint64_t a2, _WORD *a3, uint64_t a4, int a5, int a6)
{
  if ((a5 & 0xF) != 0)
  {
    if ((a5 & 7) != 0)
    {
      if ((a5 & 3) != 0)
      {
        if ((a5 & 1) == 0 && a6 >= 1)
        {
          do
          {
            *a3 = *result;
            result = (result + a2);
            a3 = (a3 + a4);
            --a6;
          }

          while (a6);
        }
      }

      else if (a6 >= 1)
      {
        do
        {
          *a3 = *result;
          result = (result + a2);
          a3 = (a3 + a4);
          --a6;
        }

        while (a6);
      }
    }

    else if (a6 >= 1)
    {
      do
      {
        *a3 = *result;
        result = (result + a2);
        a3 = (a3 + a4);
        --a6;
      }

      while (a6);
    }
  }

  else if (a6 >= 1)
  {
    v6 = 0;
    v7 = a5 >> 4;
    do
    {
      if (v7 >= 1)
      {
        v8 = 0;
        do
        {
          *&a3[8 * v8] = *&result[8 * v8];
          ++v8;
        }

        while (v7 != v8);
      }

      result = (result + a2);
      a3 = (a3 + a4);
      ++v6;
    }

    while (v6 != a6);
  }

  return result;
}

uint64_t sub_277BB3B5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (a5 > 3)
  {
    if (a5 == 4)
    {
      do
      {
        v7 = *(result + 2 * a2);
        *a3 = *result;
        *(a3 + 2 * a4) = v7;
        a3 += 4 * a4;
        result += 4 * a2;
        a6 -= 2;
      }

      while (a6);
    }

    else if (a5 == 8)
    {
      do
      {
        v6 = *(result + 2 * a2);
        *a3 = *result;
        *(a3 + 2 * a4) = v6;
        a3 += 4 * a4;
        result += 4 * a2;
        a6 -= 2;
      }

      while (a6);
    }

    else if (a5 > 0x1F)
    {
      if (a5 == 32)
      {
        v14 = (result + 32);
        v15 = (a3 + 32);
        do
        {
          v16 = *(v14 - 1);
          v17 = *v14;
          v18 = v14[1];
          *(v15 - 2) = *(v14 - 2);
          *(v15 - 1) = v16;
          *v15 = v17;
          v15[1] = v18;
          v14 = (v14 + 2 * a2);
          v15 = (v15 + 2 * a4);
          --a6;
        }

        while (a6);
      }

      else
      {
        do
        {
          v19 = 0;
          v20 = a5 + 64;
          do
          {
            v21 = (a3 + v19);
            v22 = *(result + v19 + 16);
            v23 = *(result + v19 + 32);
            v24 = *(result + v19 + 48);
            v25 = *(result + v19 + 64);
            v26 = *(result + v19 + 80);
            v27 = *(result + v19 + 96);
            v28 = *(result + v19 + 112);
            *v21 = *(result + v19);
            v21[1] = v22;
            v21[2] = v23;
            v21[3] = v24;
            v21[4] = v25;
            v21[5] = v26;
            v19 += 128;
            v20 -= 64;
            v21[6] = v27;
            v21[7] = v28;
          }

          while (v20 > 64);
          a3 += 2 * a4;
          result += 2 * a2;
          --a6;
        }

        while (a6);
      }
    }

    else
    {
      v8 = 2 * a2;
      v9 = 2 * a4;
      do
      {
        v10 = *(result + 16);
        v11 = *(result + 2 * a2);
        v12 = *(result + v8 + 16);
        *a3 = *result;
        *(a3 + 16) = v10;
        v13 = (a3 + v9);
        *v13 = v11;
        v13[1] = v12;
        result += v8 + v8;
        a3 += v9 + v9;
        a6 -= 2;
      }

      while (a6);
    }
  }

  else
  {
    do
    {
      *a3 = *result;
      *(a3 + 2 * a4) = *(result + 2 * a2);
      a3 += 4 * a4;
      result += 4 * a2;
      a6 -= 2;
    }

    while (a6);
  }

  return result;
}

uint64_t (*sub_277BB3CE8())(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v0 = sub_2779D9D84();
  v262 = v0;
  v1 = sub_277A35128;
  v2 = (v0 & 4) == 0;
  if ((v0 & 4) == 0)
  {
    v1 = sub_277A35E00;
  }

  v261 = v1;
  if ((v0 & 4) != 0)
  {
    v3 = sub_277A35724;
  }

  else
  {
    v3 = sub_277A36890;
  }

  if ((v0 & 4) != 0)
  {
    v4 = sub_277A66D28;
  }

  else
  {
    v4 = sub_2779A0830;
  }

  v259 = v4;
  v260 = v3;
  if ((v0 & 4) != 0)
  {
    v5 = sub_277A66B70;
  }

  else
  {
    v5 = sub_2779A0678;
  }

  if ((v0 & 4) != 0)
  {
    v6 = sub_277A6652C;
  }

  else
  {
    v6 = sub_2779A00C0;
  }

  v257 = v6;
  v258 = v5;
  if ((v0 & 4) != 0)
  {
    v7 = sub_277A665D8;
  }

  else
  {
    v7 = sub_2779A012C;
  }

  if ((v0 & 4) != 0)
  {
    v8 = sub_277A66EE0;
  }

  else
  {
    v8 = sub_2779A0AB8;
  }

  v255 = v8;
  v256 = v7;
  if ((v0 & 4) != 0)
  {
    v9 = sub_277A66F8C;
  }

  else
  {
    v9 = sub_2779A0B24;
  }

  if ((v0 & 4) != 0)
  {
    v10 = sub_277A66480;
  }

  else
  {
    v10 = sub_2779A0054;
  }

  v253 = v10;
  v254 = v9;
  if ((v0 & 4) != 0)
  {
    v11 = sub_277A66684;
  }

  else
  {
    v11 = sub_2779A0198;
  }

  if ((v0 & 4) != 0)
  {
    v12 = sub_277A66728;
  }

  else
  {
    v12 = sub_2779A0238;
  }

  v251 = v12;
  v252 = v11;
  if ((v0 & 4) != 0)
  {
    v13 = sub_277A667CC;
  }

  else
  {
    v13 = sub_2779A02D8;
  }

  if ((v0 & 4) != 0)
  {
    v14 = sub_277A67038;
  }

  else
  {
    v14 = sub_2779A0B90;
  }

  v249 = v14;
  v250 = v13;
  if ((v0 & 4) != 0)
  {
    v15 = sub_277A66A70;
  }

  else
  {
    v15 = sub_2779A0578;
  }

  if ((v0 & 4) != 0)
  {
    v16 = sub_277A670DC;
  }

  else
  {
    v16 = sub_2779A0C30;
  }

  v247 = v16;
  v248 = v15;
  if ((v0 & 4) != 0)
  {
    v17 = sub_277A66870;
  }

  else
  {
    v17 = sub_2779A0378;
  }

  if ((v0 & 4) != 0)
  {
    v18 = sub_277A66970;
  }

  else
  {
    v18 = sub_2779A0478;
  }

  v245 = v18;
  v246 = v17;
  if ((v0 & 4) != 0)
  {
    v19 = sub_277A2940C;
  }

  else
  {
    v19 = sub_2779D8574;
  }

  if ((v0 & 4) != 0)
  {
    v20 = sub_277A2932C;
  }

  else
  {
    v20 = sub_2779D84A4;
  }

  v243 = v20;
  v244 = v19;
  if ((v0 & 4) != 0)
  {
    v21 = sub_277ADF6E8;
  }

  else
  {
    v21 = sub_2779980D0;
  }

  v242 = v21;
  if ((v0 & 4) != 0)
  {
    v22 = sub_277ADF740;
  }

  else
  {
    v22 = sub_277998230;
  }

  v241 = v22;
  if ((v0 & 4) != 0)
  {
    v23 = sub_277ADF798;
  }

  else
  {
    v23 = sub_277998390;
  }

  v240 = v23;
  if ((v0 & 4) != 0)
  {
    v24 = sub_277ADF7F8;
  }

  else
  {
    v24 = sub_27799849C;
  }

  v239 = v24;
  if ((v0 & 4) != 0)
  {
    v25 = sub_277A295E4;
  }

  else
  {
    v25 = sub_2779D87CC;
  }

  v238 = v25;
  if ((v0 & 4) != 0)
  {
    v26 = sub_277A2958C;
  }

  else
  {
    v26 = sub_2779D873C;
  }

  v237 = v26;
  if ((v0 & 4) != 0)
  {
    v27 = sub_277A2953C;
  }

  else
  {
    v27 = sub_2779D86D4;
  }

  v236 = v27;
  if ((v0 & 4) != 0)
  {
    v28 = sub_277A294EC;
  }

  else
  {
    v28 = sub_2779D866C;
  }

  v235 = v28;
  if ((v0 & 4) != 0)
  {
    v29 = sub_277A65548;
  }

  else
  {
    v29 = sub_27799E9B4;
  }

  v234 = v29;
  if ((v0 & 4) != 0)
  {
    v30 = sub_277A66228;
  }

  else
  {
    v30 = sub_27799FB18;
  }

  v233 = v30;
  if ((v0 & 4) != 0)
  {
    v31 = sub_2779F9950;
  }

  else
  {
    v31 = sub_277A49EB8;
  }

  v232 = v31;
  if ((v0 & 4) != 0)
  {
    v32 = sub_2779FA4CC;
  }

  else
  {
    v32 = sub_277A4B068;
  }

  v231 = v32;
  if ((v0 & 4) != 0)
  {
    v33 = sub_277A654DC;
  }

  else
  {
    v33 = sub_27799E8E4;
  }

  v230 = v33;
  if ((v0 & 4) != 0)
  {
    v34 = sub_277A661A8;
  }

  else
  {
    v34 = sub_27799FA10;
  }

  v229 = v34;
  if ((v0 & 4) != 0)
  {
    v35 = sub_2779F987C;
  }

  else
  {
    v35 = sub_277A49D94;
  }

  v228 = v35;
  if ((v0 & 4) != 0)
  {
    v36 = sub_2779FA3D8;
  }

  else
  {
    v36 = sub_277A4AF10;
  }

  v227 = v36;
  if ((v0 & 4) != 0)
  {
    v37 = sub_277A651C4;
  }

  else
  {
    v37 = sub_27799E5F0;
  }

  v226 = v37;
  if ((v0 & 4) != 0)
  {
    v38 = sub_277A65DF0;
  }

  else
  {
    v38 = sub_27799F668;
  }

  v225 = v38;
  if ((v0 & 4) != 0)
  {
    v39 = sub_2779F92B0;
  }

  else
  {
    v39 = sub_277A49728;
  }

  v224 = v39;
  if ((v0 & 4) != 0)
  {
    v40 = sub_2779F9D3C;
  }

  else
  {
    v40 = sub_277A4A7CC;
  }

  v223 = v40;
  if ((v0 & 4) != 0)
  {
    v41 = sub_277A65224;
  }

  else
  {
    v41 = sub_27799E62C;
  }

  v222 = v41;
  if ((v0 & 4) != 0)
  {
    v42 = sub_277A65E64;
  }

  else
  {
    v42 = sub_27799F6B0;
  }

  v221 = v42;
  if ((v0 & 4) != 0)
  {
    v43 = sub_2779F932C;
  }

  else
  {
    v43 = sub_277A497A0;
  }

  v220 = v43;
  if ((v0 & 4) != 0)
  {
    v44 = sub_2779F9DC0;
  }

  else
  {
    v44 = sub_277A4A85C;
  }

  v219 = v44;
  if ((v0 & 4) != 0)
  {
    v45 = sub_277A655B4;
  }

  else
  {
    v45 = sub_27799EB0C;
  }

  v218 = v45;
  if ((v0 & 4) != 0)
  {
    v46 = sub_277A662A8;
  }

  else
  {
    v46 = sub_27799FCC0;
  }

  v217 = v46;
  if ((v0 & 4) != 0)
  {
    v47 = sub_2779F9A24;
  }

  else
  {
    v47 = sub_277A4A128;
  }

  v216 = v47;
  if ((v0 & 4) != 0)
  {
    v48 = sub_2779FA5C0;
  }

  else
  {
    v48 = sub_277A4B338;
  }

  v215 = v48;
  if ((v0 & 4) != 0)
  {
    v49 = sub_277A65614;
  }

  else
  {
    v49 = sub_27799EB48;
  }

  v214 = v49;
  if ((v0 & 4) != 0)
  {
    v50 = sub_277A6631C;
  }

  else
  {
    v50 = sub_27799FD08;
  }

  v213 = v50;
  if ((v0 & 4) != 0)
  {
    v51 = sub_2779F9AA0;
  }

  else
  {
    v51 = sub_277A4A1A0;
  }

  v212 = v51;
  if ((v0 & 4) != 0)
  {
    v52 = sub_2779FA644;
  }

  else
  {
    v52 = sub_277A4B3C8;
  }

  if ((v0 & 4) != 0)
  {
    v53 = sub_277A65164;
  }

  else
  {
    v53 = sub_27799E5B4;
  }

  v210 = v53;
  v211 = v52;
  if ((v0 & 4) != 0)
  {
    v54 = sub_277A65D7C;
  }

  else
  {
    v54 = sub_27799F620;
  }

  if ((v0 & 4) != 0)
  {
    v55 = sub_2779F9234;
  }

  else
  {
    v55 = sub_277A496B0;
  }

  v208 = v55;
  v209 = v54;
  if ((v0 & 4) != 0)
  {
    v56 = sub_2779F9CB8;
  }

  else
  {
    v56 = sub_277A4A73C;
  }

  if ((v0 & 4) != 0)
  {
    v57 = sub_277A65284;
  }

  else
  {
    v57 = sub_27799E668;
  }

  v206 = v57;
  v207 = v56;
  if ((v0 & 4) != 0)
  {
    v58 = sub_277A65ED8;
  }

  else
  {
    v58 = sub_27799F6F8;
  }

  if ((v0 & 4) != 0)
  {
    v59 = sub_2779F93A8;
  }

  else
  {
    v59 = sub_277A49818;
  }

  v204 = v59;
  v205 = v58;
  if ((v0 & 4) != 0)
  {
    v60 = sub_2779F9E44;
  }

  else
  {
    v60 = sub_277A4A8EC;
  }

  if ((v0 & 4) != 0)
  {
    v61 = sub_277A652DC;
  }

  else
  {
    v61 = sub_27799E6BC;
  }

  v202 = v61;
  v203 = v60;
  if ((v0 & 4) != 0)
  {
    v62 = sub_277A65F44;
  }

  else
  {
    v62 = sub_27799F760;
  }

  if ((v0 & 4) != 0)
  {
    v63 = sub_2779F9464;
  }

  else
  {
    v63 = sub_277A498F0;
  }

  v200 = v63;
  v201 = v62;
  if ((v0 & 4) != 0)
  {
    v64 = sub_2779F9F20;
  }

  else
  {
    v64 = sub_277A4A9D4;
  }

  if ((v0 & 4) != 0)
  {
    v65 = sub_277A65334;
  }

  else
  {
    v65 = sub_27799E710;
  }

  v198 = v65;
  v199 = v64;
  if ((v0 & 4) != 0)
  {
    v66 = sub_277A65FB0;
  }

  else
  {
    v66 = sub_27799F7C8;
  }

  if ((v0 & 4) != 0)
  {
    v67 = sub_2779F9520;
  }

  else
  {
    v67 = sub_277A499C8;
  }

  v196 = v67;
  v197 = v66;
  if ((v0 & 4) != 0)
  {
    v68 = sub_2779F9FFC;
  }

  else
  {
    v68 = sub_277A4AABC;
  }

  if ((v0 & 4) != 0)
  {
    v69 = sub_277A65674;
  }

  else
  {
    v69 = sub_27799EB84;
  }

  v194 = v69;
  v195 = v68;
  if ((v0 & 4) != 0)
  {
    v70 = sub_277A66390;
  }

  else
  {
    v70 = sub_27799FD50;
  }

  if ((v0 & 4) != 0)
  {
    v71 = sub_2779F9B1C;
  }

  else
  {
    v71 = sub_277A4A218;
  }

  v192 = v71;
  v193 = v70;
  if ((v0 & 4) != 0)
  {
    v72 = sub_2779FA6C8;
  }

  else
  {
    v72 = sub_277A4B458;
  }

  if ((v0 & 4) != 0)
  {
    v73 = sub_277A6546C;
  }

  else
  {
    v73 = sub_27799E864;
  }

  v190 = v73;
  v191 = v72;
  if ((v0 & 4) != 0)
  {
    v74 = sub_277A66124;
  }

  else
  {
    v74 = sub_27799F970;
  }

  if ((v0 & 4) != 0)
  {
    v75 = sub_2779F979C;
  }

  else
  {
    v75 = sub_277A49C78;
  }

  v188 = v75;
  v189 = v74;
  if ((v0 & 4) != 0)
  {
    v76 = sub_2779FA2D8;
  }

  else
  {
    v76 = sub_277A4ADC4;
  }

  if ((v0 & 4) != 0)
  {
    v77 = sub_277A656CC;
  }

  else
  {
    v77 = sub_27799EBD8;
  }

  v186 = v77;
  v187 = v76;
  if ((v0 & 4) != 0)
  {
    v78 = sub_277A663FC;
  }

  else
  {
    v78 = sub_27799FDB8;
  }

  if ((v0 & 4) != 0)
  {
    v79 = sub_2779F9BD8;
  }

  else
  {
    v79 = sub_277A4A2F0;
  }

  v184 = v79;
  v185 = v78;
  if ((v0 & 4) != 0)
  {
    v80 = sub_2779FA7A4;
  }

  else
  {
    v80 = sub_277A4B540;
  }

  if ((v0 & 4) != 0)
  {
    v81 = sub_277A6538C;
  }

  else
  {
    v81 = sub_27799E764;
  }

  v182 = v81;
  v183 = v80;
  if ((v0 & 4) != 0)
  {
    v82 = sub_277A6601C;
  }

  else
  {
    v82 = sub_27799F830;
  }

  if ((v0 & 4) != 0)
  {
    v83 = sub_2779F95DC;
  }

  else
  {
    v83 = sub_277A49AA0;
  }

  v180 = v83;
  v181 = v82;
  if ((v0 & 4) != 0)
  {
    v84 = sub_2779FA0D8;
  }

  else
  {
    v84 = sub_277A4ABA4;
  }

  if ((v0 & 4) != 0)
  {
    v85 = sub_277A653FC;
  }

  else
  {
    v85 = sub_27799E7E4;
  }

  v178 = v85;
  v179 = v84;
  if ((v0 & 4) != 0)
  {
    v86 = sub_277A660A0;
  }

  else
  {
    v86 = sub_27799F8D0;
  }

  if ((v0 & 4) != 0)
  {
    v87 = sub_2779F96BC;
  }

  else
  {
    v87 = sub_277A49B8C;
  }

  v176 = v87;
  v177 = v86;
  if ((v0 & 4) != 0)
  {
    v88 = sub_2779FA1D8;
  }

  else
  {
    v88 = sub_277A4ACB4;
  }

  if ((v0 & 4) != 0)
  {
    v89 = sub_277A65B80;
  }

  else
  {
    v89 = sub_27799F1AC;
  }

  v174 = v89;
  v175 = v88;
  if ((v0 & 4) != 0)
  {
    v90 = sub_2779FB130;
  }

  else
  {
    v90 = sub_277A4C168;
  }

  if ((v0 & 4) != 0)
  {
    v91 = sub_277A65B08;
  }

  else
  {
    v91 = sub_27799F0D0;
  }

  v172 = v91;
  v173 = v90;
  if ((v0 & 4) != 0)
  {
    v92 = sub_2779FB030;
  }

  else
  {
    v92 = sub_277A4C058;
  }

  if ((v0 & 4) != 0)
  {
    v93 = sub_277A657A0;
  }

  else
  {
    v93 = sub_27799ED7C;
  }

  v170 = v93;
  v171 = v92;
  if ((v0 & 4) != 0)
  {
    v94 = sub_2779FA934;
  }

  else
  {
    v94 = sub_277A4B8F0;
  }

  if ((v0 & 4) != 0)
  {
    v95 = sub_277A65804;
  }

  else
  {
    v95 = sub_27799EDC4;
  }

  v168 = v95;
  v169 = v94;
  if ((v0 & 4) != 0)
  {
    v96 = sub_2779FA9C4;
  }

  else
  {
    v96 = sub_277A4B98C;
  }

  if ((v0 & 4) != 0)
  {
    v97 = sub_277A65BF8;
  }

  else
  {
    v97 = sub_27799F320;
  }

  v166 = v97;
  v167 = v96;
  if ((v0 & 4) != 0)
  {
    v98 = sub_2779FB230;
  }

  else
  {
    v98 = sub_277A4C454;
  }

  if ((v0 & 4) != 0)
  {
    v99 = sub_277A65C38;
  }

  else
  {
    v99 = sub_27799F368;
  }

  v164 = v99;
  v165 = v98;
  if ((v0 & 4) != 0)
  {
    v100 = sub_2779FB2C0;
  }

  else
  {
    v100 = sub_277A4C4F0;
  }

  if ((v0 & 4) != 0)
  {
    v101 = sub_277A6573C;
  }

  else
  {
    v101 = sub_27799ED34;
  }

  v162 = v101;
  v163 = v100;
  if ((v0 & 4) != 0)
  {
    v102 = sub_2779FA8A4;
  }

  else
  {
    v102 = sub_277A4B854;
  }

  if ((v0 & 4) != 0)
  {
    v103 = sub_277A65868;
  }

  else
  {
    v103 = sub_27799EE0C;
  }

  v160 = v103;
  v161 = v102;
  if ((v0 & 4) != 0)
  {
    v104 = sub_2779FAA54;
  }

  else
  {
    v104 = sub_277A4BA28;
  }

  if ((v0 & 4) != 0)
  {
    v105 = sub_277A658CC;
  }

  else
  {
    v105 = sub_27799EE6C;
  }

  v158 = v105;
  v159 = v104;
  if ((v0 & 4) != 0)
  {
    v106 = sub_2779FAB3C;
  }

  else
  {
    v106 = sub_277A4BB1C;
  }

  if ((v0 & 4) != 0)
  {
    v107 = sub_277A65930;
  }

  else
  {
    v107 = sub_27799EECC;
  }

  v156 = v107;
  v157 = v106;
  if ((v0 & 4) != 0)
  {
    v108 = sub_2779FAC24;
  }

  else
  {
    v108 = sub_277A4BC10;
  }

  if ((v0 & 4) != 0)
  {
    v109 = sub_277A65C9C;
  }

  else
  {
    v109 = sub_27799F3B0;
  }

  v154 = v109;
  v155 = v108;
  if ((v0 & 4) != 0)
  {
    v110 = sub_2779FB350;
  }

  else
  {
    v110 = sub_277A4C58C;
  }

  if ((v0 & 4) != 0)
  {
    v111 = sub_277A65A8C;
  }

  else
  {
    v111 = sub_27799F044;
  }

  v152 = v111;
  v153 = v110;
  if ((v0 & 4) != 0)
  {
    v112 = sub_2779FAF24;
  }

  else
  {
    v112 = sub_277A4BF3C;
  }

  if ((v0 & 4) != 0)
  {
    v113 = sub_277A65D00;
  }

  else
  {
    v113 = sub_27799F410;
  }

  v150 = v113;
  v151 = v112;
  if ((v0 & 4) != 0)
  {
    v114 = sub_2779FB438;
  }

  else
  {
    v114 = sub_277A4C680;
  }

  if ((v0 & 4) != 0)
  {
    v115 = sub_277A65994;
  }

  else
  {
    v115 = sub_27799EF2C;
  }

  v148 = v115;
  v149 = v114;
  if ((v0 & 4) != 0)
  {
    v116 = sub_2779FAD0C;
  }

  else
  {
    v116 = sub_277A4BD04;
  }

  v147 = v116;
  if ((v0 & 4) != 0)
  {
    v117 = sub_277A65A10;
  }

  else
  {
    v117 = sub_27799EFB8;
  }

  if ((v0 & 4) != 0)
  {
    v118 = sub_2779FAE18;
  }

  else
  {
    v118 = sub_277A4BE20;
  }

  if ((v0 & 4) != 0)
  {
    v119 = sub_277AFB734;
  }

  else
  {
    v119 = sub_2779F1C38;
  }

  if ((v0 & 4) != 0)
  {
    v120 = sub_277A2ABD4;
  }

  else
  {
    v120 = sub_277A6F768;
  }

  if ((v0 & 4) != 0)
  {
    v121 = sub_2779D2FCC;
  }

  else
  {
    v121 = sub_277A07C54;
  }

  if ((v0 & 4) != 0)
  {
    v122 = sub_277A28F80;
  }

  else
  {
    v122 = sub_2779D80C8;
  }

  if ((v0 & 4) != 0)
  {
    result = sub_277A28F00;
  }

  else
  {
    result = sub_2779D8008;
  }

  if (v2)
  {
    v124 = sub_2779D7B0C;
  }

  else
  {
    v124 = sub_277A28B1C;
  }

  if (v2)
  {
    v125 = sub_2779D7B8C;
  }

  else
  {
    v125 = sub_277A28B88;
  }

  if (v2)
  {
    v126 = sub_2779D8268;
  }

  else
  {
    v126 = sub_277A29150;
  }

  if (v2)
  {
    v127 = sub_2779D82E8;
  }

  else
  {
    v127 = sub_277A291BC;
  }

  if (v2)
  {
    v128 = sub_2779D7A8C;
  }

  else
  {
    v128 = sub_277A28AB0;
  }

  if (v2)
  {
    v129 = sub_2779D7C0C;
  }

  else
  {
    v129 = sub_277A28BF4;
  }

  if (v2)
  {
    v130 = sub_2779D7CAC;
  }

  else
  {
    v130 = sub_277A28C78;
  }

  if (v2)
  {
    v131 = sub_2779D7D4C;
  }

  else
  {
    v131 = sub_277A28CFC;
  }

  if (v2)
  {
    v132 = sub_2779D8368;
  }

  else
  {
    v132 = sub_277A29228;
  }

  if (v2)
  {
    v133 = sub_2779D8188;
  }

  else
  {
    v133 = sub_277A29000;
  }

  if (v2)
  {
    v134 = sub_2779D7864;
  }

  else
  {
    v134 = sub_277A287D0;
  }

  if (v2)
  {
    v135 = sub_2779D78DC;
  }

  else
  {
    v135 = sub_277A28868;
  }

  if (v2)
  {
    v136 = sub_2779D7F48;
  }

  else
  {
    v136 = sub_277A28E80;
  }

  if (v2)
  {
    v137 = sub_2779D8408;
  }

  else
  {
    v137 = sub_277A292AC;
  }

  if (v2)
  {
    v138 = sub_2779D7DEC;
  }

  else
  {
    v138 = sub_277A28D80;
  }

  if (v2)
  {
    v139 = sub_2779D7E88;
  }

  else
  {
    v139 = sub_277A28E00;
  }

  if (v2)
  {
    v140 = sub_2779D7A24;
  }

  else
  {
    v140 = sub_277A28A34;
  }

  if (v2)
  {
    v141 = sub_2779D8200;
  }

  else
  {
    v141 = sub_277A290D4;
  }

  if (v2)
  {
    v142 = sub_2779D7954;
  }

  else
  {
    v142 = sub_277A2893C;
  }

  v143 = sub_277A289B8;
  if (v2)
  {
    v143 = sub_2779D79BC;
  }

  v144 = v261;
  if ((v262 & 8) != 0)
  {
    v144 = sub_277A55EB0;
  }

  off_280ABC830 = v144;
  v145 = sub_277A5645C;
  if ((v262 & 8) == 0)
  {
    v145 = v260;
  }

  off_280ABC838 = v145;
  qword_280ABC840 = v259;
  qword_280ABC848 = v258;
  qword_280ABC850 = v257;
  qword_280ABC858 = v256;
  qword_280ABC860 = v255;
  qword_280ABC868 = v254;
  qword_280ABC870 = v253;
  qword_280ABC878 = v252;
  qword_280ABC880 = v251;
  qword_280ABC888 = v250;
  qword_280ABC890 = v249;
  qword_280ABC898 = v248;
  qword_280ABC8A0 = v247;
  qword_280ABC8A8 = v246;
  qword_280ABC8B0 = v245;
  off_280ABC8B8 = v244;
  off_280ABC8C0 = v243;
  qword_280ABC8C8 = v242;
  qword_280ABC8D0 = v241;
  qword_280ABC8D8 = v240;
  qword_280ABC8E0 = v239;
  qword_280ABC8E8 = v238;
  qword_280ABC8F0 = v237;
  qword_280ABC8F8 = v236;
  qword_280ABC900 = v235;
  qword_280ABC908 = v234;
  qword_280ABC910 = v233;
  qword_280ABC918 = v232;
  qword_280ABC920 = v231;
  qword_280ABC928 = v230;
  qword_280ABC930 = v229;
  qword_280ABC938 = v228;
  qword_280ABC940 = v227;
  qword_280ABC948 = v226;
  qword_280ABC950 = v225;
  qword_280ABC958 = v224;
  qword_280ABC960 = v223;
  qword_280ABC968 = v222;
  qword_280ABC970 = v221;
  qword_280ABC978 = v220;
  qword_280ABC980 = v219;
  qword_280ABC988 = v218;
  qword_280ABC990 = v217;
  qword_280ABC998 = v216;
  qword_280ABC9A0 = v215;
  qword_280ABC9A8 = v214;
  qword_280ABC9B0 = v213;
  qword_280ABC9B8 = v212;
  qword_280ABC9C0 = v211;
  qword_280ABC9C8 = v210;
  qword_280ABC9D0 = v209;
  qword_280ABC9D8 = v208;
  qword_280ABC9E0 = v207;
  qword_280ABC9E8 = v206;
  qword_280ABC9F0 = v205;
  qword_280ABC9F8 = v204;
  qword_280ABCA00 = v203;
  off_280ABCA08 = v202;
  qword_280ABCA10 = v201;
  qword_280ABCA18 = v200;
  qword_280ABCA20 = v199;
  qword_280ABCA28 = v198;
  qword_280ABCA30 = v197;
  qword_280ABCA38 = v196;
  qword_280ABCA40 = v195;
  qword_280ABCA48 = v194;
  qword_280ABCA50 = v193;
  qword_280ABCA58 = v192;
  qword_280ABCA60 = v191;
  qword_280ABCA68 = v190;
  qword_280ABCA70 = v189;
  qword_280ABCA78 = v188;
  qword_280ABCA80 = v187;
  qword_280ABCA88 = v186;
  qword_280ABCA90 = v185;
  qword_280ABCA98 = v184;
  qword_280ABCAA0 = v183;
  qword_280ABCAA8 = v182;
  qword_280ABCAB0 = v181;
  qword_280ABCAB8 = v180;
  qword_280ABCAC0 = v179;
  qword_280ABCAC8 = v178;
  qword_280ABCAD0 = v177;
  qword_280ABCAD8 = v176;
  qword_280ABCAE0 = v175;
  qword_280ABCAE8 = v174;
  qword_280ABCAF0 = v173;
  qword_280ABCAF8 = v172;
  qword_280ABCB00 = v171;
  qword_280ABCB08 = v170;
  qword_280ABCB10 = v169;
  qword_280ABCB18 = v168;
  qword_280ABCB20 = v167;
  qword_280ABCB28 = v166;
  qword_280ABCB30 = v165;
  qword_280ABCB38 = v164;
  qword_280ABCB40 = v163;
  qword_280ABCB48 = v162;
  qword_280ABCB50 = v161;
  qword_280ABCB58 = v160;
  qword_280ABCB60 = v159;
  qword_280ABCB68 = v158;
  qword_280ABCB70 = v157;
  qword_280ABCB78 = v156;
  qword_280ABCB80 = v155;
  qword_280ABCB88 = v154;
  qword_280ABCB90 = v153;
  qword_280ABCB98 = v152;
  qword_280ABCBA0 = v151;
  qword_280ABCBA8 = v150;
  qword_280ABCBB0 = v149;
  qword_280ABCBB8 = v148;
  qword_280ABCBC0 = v147;
  qword_280ABCBC8 = v117;
  qword_280ABCBD0 = v118;
  v146 = sub_2779F226C;
  if ((v262 & 8) == 0)
  {
    v146 = v119;
  }

  off_280ABCBD8 = v146;
  off_280ABCBE0 = v120;
  off_280ABCBE8 = v121;
  off_280ABCBF0 = v122;
  off_280ABCBF8 = result;
  off_280ABCC00 = v124;
  off_280ABCC08 = v125;
  off_280ABCC10 = v126;
  off_280ABCC18 = v127;
  off_280ABCC20 = v128;
  off_280ABCC28 = v129;
  off_280ABCC30 = v130;
  off_280ABCC38 = v131;
  off_280ABCC40 = v132;
  off_280ABCC48 = v133;
  off_280ABCC50 = v134;
  off_280ABCC58 = v135;
  off_280ABCC60 = v136;
  off_280ABCC68 = v137;
  off_280ABCC70 = v138;
  off_280ABCC78 = v139;
  off_280ABCC80 = v140;
  off_280ABCC88 = v141;
  off_280ABCC90 = v142;
  off_280ABCC98 = v143;
  return result;
}

uint64_t sub_277BB5694(unsigned __int8 *a1, uint64_t a2)
{
  bzero(a1, 0x328uLL);
  v4 = sub_277BB5DA0(a2, 3u);
  *a1 = v4;
  if (v4 > 2u)
  {
    return 4294967274;
  }

  a1[356] = sub_277BB5D40(a2);
  v6 = sub_277BB5D40(a2);
  a1[357] = v6;
  if (!v6)
  {
    v7 = sub_277BB5D40(a2);
    a1[358] = v7;
    if (v7)
    {
      *(a1 + 90) = sub_277BB5DA0(a2, 0x20u);
      *(a1 + 91) = sub_277BB5DA0(a2, 0x20u);
      v8 = sub_277BB5D40(a2);
      a1[368] = v8;
      if (v8)
      {
        if (sub_277BB5D40(a2))
        {
          v9 = 0;
        }

        else
        {
          v32 = -1;
          do
          {
            if (v32 == 30)
            {
              return 4294967274;
            }

            v33 = v32;
            v34 = sub_277BB5D40(a2);
            v32 = v33 + 1;
          }

          while (!v34);
          v35 = 2 << (v33 + 1);
          v36 = sub_277BB5DA0(a2, v33 + 2);
          v9 = v35 + v36 - 1;
          if (!(v35 + v36))
          {
            return 4294967274;
          }
        }

        *(a1 + 93) = v9 + 1;
      }

      v10 = sub_277BB5D40(a2);
      a1[376] = v10;
      if (v10)
      {
        a1[377] = sub_277BB5DA0(a2, 5u) + 1;
        *(a1 + 95) = sub_277BB5DA0(a2, 0x20u);
        a1[384] = sub_277BB5DA0(a2, 5u) + 1;
        a1[385] = sub_277BB5DA0(a2, 5u) + 1;
      }
    }

    a1[386] = sub_277BB5D40(a2);
    v11 = sub_277BB5DA0(a2, 5u);
    a1[34] = v11 + 1;
    if (((v11 + 1) & 0x100) != 0)
    {
      goto LABEL_29;
    }

    v12 = 0;
    v13 = a1 + 432;
    v14 = a1 + 44;
    while (1)
    {
      v15 = sub_277BB5DA0(a2, 0xCu);
      *(v14 - 2) = v15;
      if (v15)
      {
        v16 = v15;
        result = 4294967274;
        if (!v16 || (v16 & 0xF00) == 0)
        {
          return result;
        }
      }

      *(v14 - 8) = sub_277BB5DA0(a2, 3u) + 2;
      *(v14 - 7) = sub_277BB5DA0(a2, 2u);
      if (*(v14 - 8) >= 4u)
      {
        *(v14 - 2) = sub_277BB5D40(a2);
      }

      if (a1[376])
      {
        v17 = sub_277BB5D40(a2);
        *(v14 - 1) = v17;
        if (v17)
        {
          *(v13 - 2) = sub_277BB5DA0(a2, a1[377]);
          *(v13 - 1) = sub_277BB5DA0(a2, a1[377]);
          *v13 = sub_277BB5D40(a2);
        }
      }

      if (a1[386])
      {
        v18 = sub_277BB5D40(a2);
        *v14 = v18;
        if (!v18)
        {
          goto LABEL_27;
        }
      }

      else if (!*v14)
      {
LABEL_27:
        v19 = 10;
        goto LABEL_28;
      }

      v19 = sub_277BB5DA0(a2, 4u) + 1;
LABEL_28:
      *(v14 - 6) = v19;
      ++v12;
      v13 += 12;
      v14 += 10;
      if (v12 >= a1[34])
      {
        goto LABEL_29;
      }
    }
  }

  if (!a1[356])
  {
    return 4294967274;
  }

  a1[34] = 1;
  a1[36] = sub_277BB5DA0(a2, 3u);
  a1[37] = sub_277BB5DA0(a2, 2u);
  a1[38] = 10;
LABEL_29:
  a1[387] = sub_277BB5DA0(a2, 4u) + 1;
  a1[388] = sub_277BB5DA0(a2, 4u) + 1;
  *(a1 + 1) = sub_277BB5DA0(a2, a1[387]) + 1;
  *(a1 + 2) = sub_277BB5DA0(a2, a1[388]) + 1;
  if (!a1[357])
  {
    v20 = sub_277BB5D40(a2);
    a1[389] = v20;
    if (v20)
    {
      a1[390] = sub_277BB5DA0(a2, 4u) + 2;
      a1[391] = sub_277BB5DA0(a2, 3u) + a1[390] + 1;
    }
  }

  a1[392] = sub_277BB5D40(a2);
  a1[393] = sub_277BB5D40(a2);
  a1[394] = sub_277BB5D40(a2);
  if (a1[357])
  {
    *(a1 + 404) = 0x200000002;
    goto LABEL_44;
  }

  a1[395] = sub_277BB5D40(a2);
  a1[396] = sub_277BB5D40(a2);
  a1[397] = sub_277BB5D40(a2);
  a1[398] = sub_277BB5D40(a2);
  v21 = sub_277BB5D40(a2);
  a1[399] = v21;
  if (v21)
  {
    a1[400] = sub_277BB5D40(a2);
    a1[401] = sub_277BB5D40(a2);
  }

  if (sub_277BB5D40(a2))
  {
    *(a1 + 101) = 2;
  }

  else
  {
    v22 = sub_277BB5D40(a2);
    *(a1 + 101) = v22;
    if (!v22)
    {
LABEL_40:
      v23 = 2;
      goto LABEL_42;
    }
  }

  if (sub_277BB5D40(a2))
  {
    goto LABEL_40;
  }

  v23 = sub_277BB5D40(a2);
LABEL_42:
  *(a1 + 102) = v23;
  if (a1[399])
  {
    a1[412] = sub_277BB5DA0(a2, 3u) + 1;
  }

LABEL_44:
  a1[413] = sub_277BB5D40(a2);
  a1[414] = sub_277BB5D40(a2);
  a1[415] = sub_277BB5D40(a2);
  v24 = sub_277BB5D40(a2);
  a1[32] = v24;
  v25 = *a1;
  if (v25 == 2 && v24)
  {
    a1[32] += sub_277BB5D40(a2);
    v25 = *a1;
  }

  if (v25 != 1)
  {
    a1[418] = sub_277BB5D40(a2);
  }

  v26 = sub_277BB5D40(a2);
  a1[419] = v26;
  if (v26)
  {
    *(a1 + 4) = sub_277BB5DA0(a2, 8u);
    *(a1 + 5) = sub_277BB5DA0(a2, 8u);
    v27 = sub_277BB5DA0(a2, 8u);
  }

  else
  {
    *(a1 + 2) = 0x200000002;
    v27 = 2;
  }

  *(a1 + 6) = v27;
  if (a1[418])
  {
    v28 = sub_277BB5D40(a2);
    v29 = 0;
    a1[33] = v28;
    *(a1 + 3) = 0;
    *(a1 + 208) = 257;
    goto LABEL_83;
  }

  if (*(a1 + 4) != 1 || *(a1 + 5) != 13 || v27)
  {
    a1[33] = sub_277BB5D40(a2);
    v31 = *a1;
    if (v31 != 2)
    {
      if (v31 != 1)
      {
        if (!*a1)
        {
          *(a1 + 3) = 1;
          *(a1 + 208) = 257;
        }

        goto LABEL_80;
      }

      goto LABEL_74;
    }

    if (a1[32] == 2)
    {
      v37 = sub_277BB5D40(a2);
      a1[416] = v37;
      if (!v37 || (v38 = sub_277BB5D40(a2), a1[417] = v38, !a1[416]))
      {
LABEL_74:
        v40 = 3;
LABEL_79:
        *(a1 + 3) = v40;
LABEL_80:
        if ((a1[417] & a1[416]) != 0)
        {
          v29 = sub_277BB5DA0(a2, 2u);
        }

        else
        {
          v29 = 0;
        }

LABEL_83:
        *(a1 + 7) = v29;
        if (a1[418])
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

      v39 = v38;
    }

    else
    {
      a1[416] = 1;
      v39 = a1[417];
    }

    if (v39)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    goto LABEL_79;
  }

  *(a1 + 3) = 3;
  a1[33] = 1;
  v30 = *a1;
  if (v30 != 1 && (v30 != 2 || a1[32] != 2))
  {
    return 4294967274;
  }

LABEL_84:
  a1[420] = sub_277BB5D40(a2);
LABEL_85:
  a1[421] = sub_277BB5D40(a2);
  sub_277BB5D40(a2);
  if (*(a2 + 12))
  {
    return 4294967274;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_277BB5D40(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    v2 = a1[2];
    if (v2 < a1[4])
    {
      a1[2] = (v2 + 1);
      v3 = *v2;
      *(a1 + 2) = 7;
      *a1 = v3 << 57;
      return (v3 >> 7) & 1;
    }

    *(a1 + 3) = 1;
  }

  v5 = *a1;
  *(a1 + 2) = v1 - 1;
  *a1 = 2 * v5;
  return v5 >> 63;
}

unint64_t sub_277BB5DA0(uint64_t *a1, unsigned int a2)
{
  v2 = *(a1 + 2);
  if (v2 < a2)
  {
    v3 = 0;
    v4 = a1[4];
    v5 = a1[2];
    while (v5 < v4)
    {
      a1[2] = (v5 + 1);
      v3 = *v5 | (v3 << 8);
      v2 += 8;
      *(a1 + 2) = v2;
      ++v5;
      if (v2 >= a2)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 3) = 1;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a1 |= v3 << -v2;
  }

LABEL_8:
  v6 = *a1;
  *(a1 + 2) = v2 - a2;
  *a1 = v6 << a2;
  return v6 >> -a2;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}