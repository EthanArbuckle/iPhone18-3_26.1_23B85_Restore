int16x8_t sub_27736BD48(unsigned __int8 *a1, unsigned int a2, int16x8_t *a3, int16x8_t *a4, unsigned __int8 *a5, int a6, int a7, int8x16_t a8, double a9, int8x16_t a10, double a11, double a12, int16x8_t a13)
{
  v13 = 0uLL;
  if (a6 > 3)
  {
    if (a6 <= 5)
    {
      if (a6 == 4)
      {
        if (*a5)
        {
          if (a5[1])
          {
            v49 = &a1[-a2];
            v50 = *v49;
            v51 = *(v49 - 1);
          }

          else
          {
            v50 = *a1;
            v51 = *a1;
          }

          v65 = a1[3 * a2 - 1] | (a1[2 * a2 - 1] << 8) | (a1[a2 - 1] << 16);
          v66 = *(a1 - 1);
        }

        else if (a5[1])
        {
          v50 = *&a1[-a2];
          v51 = v50;
          v65 = a1[3 * a2] | (a1[2 * a2] << 8) | (a1[a2] << 16);
          v66 = *a1;
        }

        else
        {
          v66 = *a1;
          v51 = *a1;
          v65 = a1[3 * a2] | (a1[2 * a2] << 8) | (a1[a2] << 16);
          v50 = *a1;
        }

        v72 = v65 | (v66 << 24);
        v13.i32[0] = v50;
        v16 = vorrq_s8(vshlq_n_s64(v13, 8uLL), v51);
        v73 = vdupq_n_s64(0xFFFFFFF0uLL);
        v74 = vzip1q_s8(vorrq_s8(vshlq_u64(v72, vdupq_n_s64(0xFFFFFFF8uLL)), vshlq_n_s64(v16, 0x18uLL)), 0);
        a13 = vaddq_s16(v74, v74);
        v75.i64[0] = -1;
        v75.i64[1] = -1;
        v15 = vshrq_n_u16(v75, 0xFuLL);
        v13 = vshrq_n_u16(vaddq_s16(vaddq_s16(a13, vzip1q_s8(vqtbl1q_s8(vorrq_s8(vshlq_u64(v72, v73), vshlq_n_s64(v16, 0x10uLL)), xmmword_2773B3E30), 0)), vaddq_s16(vaddq_s16(v15, v15), vzip1q_s8(vorrq_s8(vshlq_n_s64(vshlq_u64(v16, v73), 0x20uLL), v72), 0))), 2uLL);
        v16.i64[0] = vextq_s8(v13, 0, 6uLL).u64[0];
        v15.i64[0] = vextq_s8(v13, 0, 4uLL).u64[0];
        v14.i64[0] = vextq_s8(v13, 0, 2uLL).u64[0];
      }

      else
      {
        v32.i32[1] = 0;
        v32.i64[1] = 0;
        v33.i32[1] = 0;
        v33.i64[1] = 0;
        if (*a5)
        {
          if (a5[1])
          {
            v34 = &a1[-a2];
            v35 = *v34;
            v36 = a1 - 1;
            v37 = *v34 | (*(v34 - 1) << 8);
          }

          else
          {
            v35 = *a1;
            v36 = a1 - 1;
            v37 = *a1 | (*a1 << 8);
          }

          v38 = *(a1 - 1) | (a1[a2 - 1] << 8);
          v71 = &v36[2 * a2];
        }

        else
        {
          if (a5[1])
          {
            v35 = *&a1[-a2];
            v37 = v35 | (v35 << 8);
            v58 = *a1;
          }

          else
          {
            v35 = *a1;
            v58 = *a1;
            v37 = v58 | (v58 << 8);
          }

          v38 = v58 | (a1[a2] << 8);
          v71 = &a1[2 * a2];
        }

        v33.i32[0] = v37;
        v13.i32[0] = v35;
        v32.i32[0] = v38 | (*v71 << 16);
        v76.i64[0] = 0x1000100010001;
        v76.i64[1] = 0x1000100010001;
        v77 = vdupq_n_s64(0xFFFFFFF8uLL);
        v78 = vorrq_s8(vshlq_n_s64(v13, 8uLL), vshlq_u64(v33, v77));
        v14 = vorrq_s8(vshlq_n_s64(v32, 0x10uLL), v33);
        v79 = vzip1q_s8(vshlq_u64(v78, v77), 0);
        v80 = vdupq_n_s64(0xFFFFFFF0uLL);
        v81 = vaddq_s16(v79, vzip1q_s8(v78, 0));
        v16 = vshrq_n_u16(vaddq_s16(v81, v76), 1uLL);
        v82 = vaddq_s16(v76, v76);
        v83 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v82, v79), v81), vzip1q_s8(vshlq_u64(v78, v80), 0)), 2uLL);
        v84 = vzip1q_s8(vshlq_u64(v14, v77), 0);
        v85 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v82, vzip1q_s8(v14, 0)), vzip1q_s8(vshlq_u64(v14, v80), 0)), vaddq_s16(v84, v84)), 2uLL);
        v14.i64[0] = vorrq_s8(vextq_s8(0, v16, 0xEuLL), vshlq_u64(vshlq_n_s64(v85, 0x20uLL), vdupq_n_s64(0xFFFFFFD0uLL))).u64[0];
        a13 = xmmword_2773B4480;
        v13 = vextq_s8(vdupq_lane_s32(*&vqtbl1q_s8(v85, xmmword_2773B4480), 0), v83, 0xCuLL);
        v15.i64[0] = vextq_s8(v13, 0, 2uLL).u64[0];
      }

      goto LABEL_66;
    }

    if (a6 != 6)
    {
      if (a6 == 7)
      {
        if (a5[1])
        {
          v52 = -a2;
        }

        else
        {
          v52 = 0;
        }

        v53 = *&a1[v52];
        if (a5[2])
        {
          v54 = *&a1[-a2 + 4];
        }

        else
        {
          v54 = v53 & 0xFF000000 | ((v53 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v53 & 0xFF000000 | ((v53 & 0xFF000000) >> 8)) >> 16);
        }

        a10.i32[0] = v54;
        v67 = vorrq_s8(vextq_s8(0, a10, 0xCuLL), v53);
        v68.i64[0] = 0x1000100010001;
        v68.i64[1] = 0x1000100010001;
        v69 = vzip1q_s8(v67, 0);
        v14 = vextq_s8(v69, 0, 2uLL);
        v70 = vaddq_s16(v14, v69);
        a13 = vextq_s8(v69, 0, 4uLL);
        v16 = vshrq_n_u16(vaddq_s16(v70, v68), 1uLL);
        v15 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v68, v68), v14), a13), v70), 2uLL);
        v14.i64[0] = vextq_s8(v16, 0, 2uLL).u64[0];
        v13.i64[0] = vextq_s8(v15, 0, 2uLL).u64[0];
      }

      else
      {
        v14.i64[0] = 0;
        v15 = 0uLL;
        v16 = 0uLL;
        if (a6 == 8)
        {
          v17 = &a1[-*a5];
          v16.i32[0] = *v17 | (v17[a2] << 8) | (v17[2 * a2] << 16) | (v17[3 * a2] << 24);
          v18.i64[0] = 0x1000100010001;
          v18.i64[1] = 0x1000100010001;
          v19 = vzip1q_s8(v16, 0);
          v20 = vextq_s8(v19, 0, 2uLL);
          v21 = vaddq_s16(v20, v19);
          a13 = vqtbl1q_s8(vextq_s8(v19, 0, 4uLL), xmmword_2773B4250);
          v22 = vshrq_n_u16(vaddq_s16(v21, v18), 1uLL);
          v14 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v18, v18), v20), a13), v21), 2uLL);
          v13 = vqtbl1q_s8(v19, xmmword_2773B4430);
          v16 = vzip1q_s16(v22, v14);
          v15.i64[0] = vextq_s8(v16, 0, 4uLL).u64[0];
          v14.i64[0] = vextq_s8(vdupq_laneq_s32(v16, 2), v13, 0xCuLL).u64[0];
        }
      }

      goto LABEL_66;
    }

    if (*a5)
    {
      if (a5[1])
      {
        v44 = &a1[-a2];
        v45 = *v44;
        v46 = *(a1 - 1);
        v47 = (a1[2 * a2 - 1] << 16) | (a1[a2 - 1] << 8) | (a1[3 * a2 - 1] << 24) | v46;
        v48 = v46 | (*(v44 - 1) << 8);
LABEL_65:
        v13.i32[0] = v45;
        v86 = vdupq_n_s64(0xFFFFFFF8uLL);
        v87.i64[0] = 0x1000100010001;
        v87.i64[1] = 0x1000100010001;
        v88 = vorrq_s8(vshlq_n_s64(v47, 8uLL), vshlq_u64(v48, v86));
        v16 = vorrq_s8(vshlq_n_s64(v13, 0x10uLL), v48);
        v89 = vzip1q_s8(vshlq_u64(v88, v86), 0);
        v90 = vdupq_n_s64(0xFFFFFFF0uLL);
        v91 = vaddq_s16(v89, vzip1q_s8(v88, 0));
        v92 = vshrq_n_u16(vaddq_s16(v91, v87), 1uLL);
        a13 = vaddq_s16(v87, v87);
        v93 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(a13, v89), v91), vzip1q_s8(vshlq_u64(v88, v90), 0)), 2uLL);
        v94 = vzip1q_s8(vshlq_u64(v16, v86), 0);
        v14 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(a13, vzip1q_s8(v16, 0)), vzip1q_s8(vshlq_u64(v16, v90), 0)), vaddq_s16(v94, v94)), 2uLL);
        v16.i64[0] = vorrq_s8(vshlq_n_s64(v14, 0x10uLL), vshlq_u64(vshlq_n_s64(v92, 0x30uLL), vdupq_n_s64(0xFFFFFFD0uLL))).u64[0];
        v13 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vqtbl1q_s8(vextq_s8(vextq_s8(0, v93, 6uLL), 0, 8uLL), xmmword_2773B4440), vorrq_s8(vshrq_n_u32(vextq_s8(0, v14, 2uLL), 0x10uLL), vzip1q_s32(vqtbl1q_s8(v92, xmmword_2773B4450), 0))), xmmword_2773B4460), xmmword_2773B4470);
        v14.i64[0] = vextq_s8(v13, 0, 4uLL).u64[0];
        v15.i64[0] = vextq_s8(v13, 0, 8uLL).u64[0];
        goto LABEL_66;
      }

      v45 = *a1;
      v62 = *(a1 - 1);
      v61 = a1[a2 - 1];
      v63 = a1[2 * a2 - 1] << 16;
      v64 = a1[3 * a2 - 1];
    }

    else
    {
      if (!a5[1])
      {
        v45 = *a1;
        v62 = *a1;
        v47 = (a1[2 * a2] << 16) | (a1[a2] << 8) | (a1[3 * a2] << 24) | v62;
        goto LABEL_64;
      }

      v45 = *&a1[-a2];
      v61 = a1[a2];
      v62 = *a1;
      v63 = a1[2 * a2] << 16;
      v64 = a1[3 * a2];
    }

    v47 = v63 | (v61 << 8) | (v64 << 24) | v62;
LABEL_64:
    v48 = v62 & 0xFFFF00FF | (v45 << 8);
    goto LABEL_65;
  }

  if (a6 > 1)
  {
    if (a6 != 2)
    {
      v27.i32[1] = 0;
      v27.i64[1] = 0;
      v28.i32[1] = 0;
      v28.i64[1] = 0;
      if (a5[1])
      {
        v29 = -a2;
      }

      else
      {
        v29 = 0;
      }

      v30 = *&a1[v29];
      if (a5[2])
      {
        v31 = *&a1[-a2 + 4];
      }

      else
      {
        v31 = v30 & 0xFF000000 | ((v30 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v30 & 0xFF000000 | ((v30 & 0xFF000000) >> 8)) >> 16);
      }

      v28.i32[0] = v30;
      v27.i32[0] = v31;
      v55 = vorrq_s8(vextq_s8(0, v27, 0xCuLL), v28);
      v56.i64[0] = -1;
      v56.i64[1] = -1;
      v15 = vshrq_n_u16(v56, 0xFuLL);
      v57 = vzip1q_s8(v55, 0);
      a13 = xmmword_2773B4240;
      v16 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v15, v15), vqtbl1q_s8(vextq_s8(v57, 0, 4uLL), xmmword_2773B4240)), vaddq_s16(vextq_s8(vaddq_s16(v57, v57), 0, 2uLL), v57)), 2uLL);
      v15.i64[0] = vextq_s8(v16, 0, 2uLL).u64[0];
      v14.i64[0] = vextq_s8(v16, 0, 4uLL).u64[0];
      v13.i64[0] = vextq_s8(v16, 0, 6uLL).u64[0];
      goto LABEL_66;
    }

    if (*a5)
    {
      v39 = *(a1 - 1);
      v40 = a1[a2 - 1];
      v41 = a1[2 * a2 - 1];
      v42 = a1[3 * a2 - 1];
      if (a5[1])
      {
        a8.i32[0] = *&a1[-a2];
        v43 = (vaddvq_s32(vmovl_u16(*&vmovl_u8(*a8.i8))) + v42 + v41 + v40 + v39 + 4) >> 3;
LABEL_61:
        v13.i32[0] = v43 | (v43 << 8) | ((v43 | (v43 << 8)) << 16);
        v13.i64[0] = vzip1q_s8(v13, 0).u64[0];
        goto LABEL_62;
      }

      v60 = v39 + v40 + v41 + v42;
    }

    else
    {
      if (!a5[1])
      {
        v43 = 128;
        goto LABEL_61;
      }

      a8.i32[0] = *&a1[-a2];
      v59 = vmovl_u8(*a8.i8).u64[0];
      v59.i16[0] = vaddv_s16(v59);
      v60 = v59.i32[0];
    }

    v43 = (v60 + 2) >> 2;
    goto LABEL_61;
  }

  if (!a6)
  {
    a8.i32[0] = *&a1[-(a5[1] * a2)];
    v13.i64[0] = vzip1q_s8(a8, 0).u64[0];
LABEL_62:
    v14.i64[0] = v13.i64[0];
    v15.i64[0] = v13.i64[0];
    v16.i64[0] = v13.i64[0];
    goto LABEL_66;
  }

  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (a6 == 1)
  {
    v23 = &a1[-*a5];
    v24 = *v23 | (*v23 << 8);
    v25 = v23[a2] | (v23[a2] << 8);
    v16.i32[0] = v24 | (v24 << 16);
    v16.i64[0] = vzip1q_s8(v16, 0).u64[0];
    v15.i32[0] = v25 | (v25 << 16);
    v15.i64[0] = vzip1q_s8(v15, 0).u64[0];
    v26 = v23[2 * a2];
    LODWORD(v23) = v23[3 * a2] | (v23[3 * a2] << 8);
    v14.i32[0] = v26 | (v26 << 8) | ((v26 | (v26 << 8)) << 16);
    v14.i64[0] = vzip1q_s8(v14, 0).u64[0];
    v13.i64[0] = vzip1q_s8((v23 | (v23 << 16)), 0).u64[0];
  }

LABEL_66:
  v95 = 0uLL;
  if (a7 <= 3)
  {
    if (a7 <= 1)
    {
      if (a7)
      {
        v96.i64[0] = 0;
        v97.i64[0] = 0;
        v98.i64[0] = 0;
        if (a7 == 1)
        {
          v105 = &a1[-*a5];
          v106 = *v105 | (*v105 << 8);
          v107 = v105[a2] | (v105[a2] << 8);
          v95.i32[0] = v106 | (v106 << 16);
          v98.i64[0] = vzip1q_s8(v95, 0).u64[0];
          v97.i64[0] = vzip1q_s8((v107 | (v107 << 16)), 0).u64[0];
          v108 = v105[2 * a2];
          LODWORD(v105) = v105[3 * a2] | (v105[3 * a2] << 8);
          v96.i64[0] = vzip1q_s8((v108 | (v108 << 8) | ((v108 | (v108 << 8)) << 16)), 0).u64[0];
          v95.i64[0] = vzip1q_s8((v105 | (v105 << 16)), 0).u64[0];
        }

        goto LABEL_131;
      }

      v95.i32[0] = *&a1[-(a5[1] * a2)];
      v95.i64[0] = vzip1q_s8(v95, 0).u64[0];
LABEL_127:
      v96.i64[0] = v95.i64[0];
      v97.i64[0] = v95.i64[0];
      v98.i64[0] = v95.i64[0];
      goto LABEL_131;
    }

    if (a7 != 2)
    {
      v109.i32[1] = 0;
      v109.i64[1] = 0;
      v110.i32[1] = 0;
      v110.i64[1] = 0;
      if (a5[1])
      {
        v111 = -a2;
      }

      else
      {
        v111 = 0;
      }

      v112 = *&a1[v111];
      if (a5[2])
      {
        v113 = *&a1[-a2 + 4];
      }

      else
      {
        v113 = v112 & 0xFF000000 | ((v112 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v112 & 0xFF000000 | ((v112 & 0xFF000000) >> 8)) >> 16);
      }

      v110.i32[0] = v112;
      v109.i32[0] = v113;
      v135 = vorrq_s8(vextq_s8(0, v109, 0xCuLL), v110);
      v136.i64[0] = -1;
      v136.i64[1] = -1;
      v96 = vshrq_n_u16(v136, 0xFuLL);
      v137 = vzip1q_s8(v135, 0);
      v98 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v96, v96), vqtbl1q_s8(vextq_s8(v137, 0, 4uLL), xmmword_2773B4240)), vaddq_s16(vextq_s8(vaddq_s16(v137, v137), 0, 2uLL), v137)), 2uLL);
      v97.i64[0] = vextq_s8(v98, 0, 2uLL).u64[0];
      v96.i64[0] = vextq_s8(v98, 0, 4uLL).u64[0];
      v95.i64[0] = vextq_s8(v98, 0, 6uLL).u64[0];
      goto LABEL_131;
    }

    if (*a5)
    {
      v119 = *(a1 - 1);
      v120 = a1[a2 - 1];
      v121 = a1[2 * a2 - 1];
      v122 = a1[3 * a2 - 1];
      if (a5[1])
      {
        v95.i32[0] = *&a1[-a2];
        v123 = (vaddvq_s32(vmovl_u16(*&vmovl_u8(*v95.i8))) + v122 + v121 + v120 + v119 + 4) >> 3;
LABEL_126:
        v95.i64[0] = vzip1q_s8((v123 | (v123 << 8) | ((v123 | (v123 << 8)) << 16)), 0).u64[0];
        goto LABEL_127;
      }

      v140 = v119 + v120 + v121 + v122;
    }

    else
    {
      if (!a5[1])
      {
        v123 = 128;
        goto LABEL_126;
      }

      v95.i32[0] = *&a1[-a2];
      v139 = vmovl_u8(*v95.i8).u64[0];
      v139.i16[0] = vaddv_s16(v139);
      v140 = v139.i32[0];
    }

    v123 = (v140 + 2) >> 2;
    goto LABEL_126;
  }

  if (a7 > 5)
  {
    if (a7 != 6)
    {
      if (a7 == 7)
      {
        if (a5[1])
        {
          v132 = -a2;
        }

        else
        {
          v132 = 0;
        }

        v133 = *&a1[v132];
        if (a5[2])
        {
          v134 = *&a1[-a2 + 4];
        }

        else
        {
          v134 = v133 & 0xFF000000 | ((v133 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v133 & 0xFF000000 | ((v133 & 0xFF000000) >> 8)) >> 16);
        }

        v95.i32[0] = v133;
        a13.i32[0] = v134;
        v147 = 1;
        v148 = 1;
        v149 = 1;
        v150 = 1;
        v96.i64[1] = 0x1000100010001;
        v95 = vzip1q_s8(vorrq_s8(vextq_s8(0, a13, 0xCuLL), v95), 0);
        v151 = vextq_s8(v95, 0, 2uLL);
        v152 = vaddq_s16(v151, v95);
        v98 = vshrq_n_u16(vaddq_s16(v152, v96), 1uLL);
        v97 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v96, v96), v151), vextq_s8(v95, 0, 4uLL)), v152), 2uLL);
        v96.i64[0] = vextq_s8(v98, 0, 2uLL).u64[0];
        v95.i64[0] = vextq_s8(v97, 0, 2uLL).u64[0];
      }

      else
      {
        v96 = 0uLL;
        v97.i64[0] = 0;
        v98.i64[0] = 0;
        if (a7 == 8)
        {
          v99 = &a1[-*a5];
          v95.i32[0] = *v99 | (v99[a2] << 8) | (v99[2 * a2] << 16) | (v99[3 * a2] << 24);
          v100.i64[0] = 0x1000100010001;
          v100.i64[1] = 0x1000100010001;
          v101 = vzip1q_s8(v95, 0);
          v97 = vextq_s8(v101, 0, 2uLL);
          v102 = vaddq_s16(v97, v101);
          v103 = vshrq_n_u16(vaddq_s16(v102, v100), 1uLL);
          v104 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v100, v100), v97), vqtbl1q_s8(vextq_s8(v101, 0, 4uLL), xmmword_2773B4250)), v102), 2uLL);
          v95 = vqtbl1q_s8(v101, xmmword_2773B4430);
          v98 = vzip1q_s16(v103, v104);
          v97.i64[0] = vextq_s8(v98, 0, 4uLL).u64[0];
          v96.i64[0] = vextq_s8(vdupq_laneq_s32(v98, 2), v95, 0xCuLL).u64[0];
        }
      }

      goto LABEL_131;
    }

    if (*a5)
    {
      if (a5[1])
      {
        v124 = &a1[-a2];
        v125 = *v124;
        v126 = *(a1 - 1);
        v127 = (a1[2 * a2 - 1] << 16) | (a1[a2 - 1] << 8) | (a1[3 * a2 - 1] << 24) | v126;
        v128 = v126 | (*(v124 - 1) << 8);
LABEL_130:
        v95.i32[0] = v128;
        v172 = vdupq_n_s64(0xFFFFFFF8uLL);
        v173.i64[0] = 0x1000100010001;
        v173.i64[1] = 0x1000100010001;
        v174 = vorrq_s8(vshlq_n_s64(v127, 8uLL), vshlq_u64(v95, v172));
        v175 = vorrq_s8(vshlq_n_s64(v125, 0x10uLL), v95);
        v176 = vzip1q_s8(vshlq_u64(v174, v172), 0);
        v177 = vdupq_n_s64(0xFFFFFFF0uLL);
        v98 = vaddq_s16(v176, vzip1q_s8(v174, 0));
        v178 = vshrq_n_u16(vaddq_s16(v98, v173), 1uLL);
        v179 = vaddq_s16(v173, v173);
        v96 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v179, v176), v98), vzip1q_s8(vshlq_u64(v174, v177), 0)), 2uLL);
        v180 = vzip1q_s8(vshlq_u64(v175, v172), 0);
        v181 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v179, vzip1q_s8(v175, 0)), vzip1q_s8(vshlq_u64(v175, v177), 0)), vaddq_s16(v180, v180)), 2uLL);
        v98.i64[0] = vorrq_s8(vshlq_n_s64(v181, 0x10uLL), vshlq_u64(vshlq_n_s64(v178, 0x30uLL), vdupq_n_s64(0xFFFFFFD0uLL))).u64[0];
        v95 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vqtbl1q_s8(vextq_s8(vextq_s8(0, v96, 6uLL), 0, 8uLL), xmmword_2773B4440), vorrq_s8(vshrq_n_u32(vextq_s8(0, v181, 2uLL), 0x10uLL), vzip1q_s32(vqtbl1q_s8(v178, xmmword_2773B4450), 0))), xmmword_2773B4460), xmmword_2773B4470);
        v96.i64[0] = vextq_s8(v95, 0, 4uLL).u64[0];
        v97.i64[0] = vextq_s8(v95, 0, 8uLL).u64[0];
        goto LABEL_131;
      }

      v125 = *a1;
      v142 = *(a1 - 1);
      v141 = a1[a2 - 1];
      v143 = a1[2 * a2 - 1] << 16;
      v144 = a1[3 * a2 - 1];
    }

    else
    {
      if (!a5[1])
      {
        v125 = *a1;
        v142 = *a1;
        v127 = (a1[2 * a2] << 16) | (a1[a2] << 8) | (a1[3 * a2] << 24) | v142;
        goto LABEL_129;
      }

      v125 = *&a1[-a2];
      v141 = a1[a2];
      v142 = *a1;
      v143 = a1[2 * a2] << 16;
      v144 = a1[3 * a2];
    }

    v127 = v143 | (v141 << 8) | (v144 << 24) | v142;
LABEL_129:
    v128 = v142 & 0xFFFF00FF | (v125 << 8);
    goto LABEL_130;
  }

  if (a7 == 4)
  {
    if (*a5)
    {
      if (a5[1])
      {
        v129 = &a1[-a2];
        v130 = *v129;
        v131 = *(v129 - 1);
      }

      else
      {
        v130 = *a1;
        v131 = *a1;
      }

      v145 = a1[3 * a2 - 1] | (a1[2 * a2 - 1] << 8) | (a1[a2 - 1] << 16);
      v146 = *(a1 - 1);
    }

    else if (a5[1])
    {
      v130 = *&a1[-a2];
      v131 = v130;
      v145 = a1[3 * a2] | (a1[2 * a2] << 8) | (a1[a2] << 16);
      v146 = *a1;
    }

    else
    {
      v146 = *a1;
      v131 = *a1;
      v145 = a1[3 * a2] | (a1[2 * a2] << 8) | (a1[a2] << 16);
      v130 = *a1;
    }

    v156 = v145 | (v146 << 24);
    v95.i32[0] = v131;
    v157 = vorrq_s8(vshlq_n_s64(v130, 8uLL), v95);
    v158 = vdupq_n_s64(0xFFFFFFF0uLL);
    v159 = vzip1q_s8(vorrq_s8(vshlq_u64(v156, vdupq_n_s64(0xFFFFFFF8uLL)), vshlq_n_s64(v157, 0x18uLL)), 0);
    v160.i64[0] = -1;
    v160.i64[1] = -1;
    v97 = vshrq_n_u16(v160, 0xFuLL);
    v95 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v159, v159), vzip1q_s8(vqtbl1q_s8(vorrq_s8(vshlq_u64(v156, v158), vshlq_n_s64(v157, 0x10uLL)), xmmword_2773B3E30), 0)), vaddq_s16(vaddq_s16(v97, v97), vzip1q_s8(vorrq_s8(vshlq_n_s64(vshlq_u64(v157, v158), 0x20uLL), v156), 0))), 2uLL);
    v98.i64[0] = vextq_s8(v95, 0, 6uLL).u64[0];
    v97.i64[0] = vextq_s8(v95, 0, 4uLL).u64[0];
    v96.i64[0] = vextq_s8(v95, 0, 2uLL).u64[0];
  }

  else
  {
    v114.i32[1] = 0;
    v114.i64[1] = 0;
    v115.i32[1] = 0;
    v115.i64[1] = 0;
    if (*a5)
    {
      if (a5[1])
      {
        v116 = &a1[-a2];
        v117 = *v116;
        v118 = *v116 | (*(v116 - 1) << 8);
      }

      else
      {
        v117 = *a1;
        v118 = *a1 | (*a1 << 8);
      }

      v153 = &a1[a2];
      v154 = *--a1;
      v155 = v154 | (*(v153 - 1) << 8);
    }

    else
    {
      if (a5[1])
      {
        v117 = *&a1[-a2];
        v118 = v117 | (v117 << 8);
        v138 = *a1;
      }

      else
      {
        v117 = *a1;
        v138 = *a1;
        v118 = v138 | (v138 << 8);
      }

      v155 = v138 | (a1[a2] << 8);
    }

    v95.i32[0] = v118;
    v115.i32[0] = v117;
    v114.i32[0] = v155 | (a1[2 * a2] << 16);
    v161.i64[0] = 0x1000100010001;
    v161.i64[1] = 0x1000100010001;
    v162 = vdupq_n_s64(0xFFFFFFF8uLL);
    v163 = vorrq_s8(vshlq_n_s64(v115, 8uLL), vshlq_u64(v95, v162));
    v164 = vorrq_s8(vshlq_n_s64(v114, 0x10uLL), v95);
    v165 = vzip1q_s8(vshlq_u64(v163, v162), 0);
    v166 = vdupq_n_s64(0xFFFFFFF0uLL);
    v167 = vzip1q_s8(vshlq_u64(v163, v166), 0);
    v96 = vaddq_s16(v165, vzip1q_s8(v163, 0));
    v98 = vshrq_n_u16(vaddq_s16(v96, v161), 1uLL);
    v168 = vaddq_s16(v161, v161);
    v169 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v168, v165), v96), v167), 2uLL);
    v170 = vzip1q_s8(vshlq_u64(v164, v162), 0);
    v171 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v168, vzip1q_s8(v164, 0)), vzip1q_s8(vshlq_u64(v164, v166), 0)), vaddq_s16(v170, v170)), 2uLL);
    v96.i64[0] = vorrq_s8(vextq_s8(0, v98, 0xEuLL), vshlq_u64(vshlq_n_s64(v171, 0x20uLL), vdupq_n_s64(0xFFFFFFD0uLL))).u64[0];
    v95 = vextq_s8(vdupq_lane_s32(*&vqtbl1q_s8(v171, xmmword_2773B4480), 0), v169, 0xCuLL);
    v97.i64[0] = vextq_s8(v95, 0, 2uLL).u64[0];
  }

LABEL_131:
  v16.i64[1] = v98.i64[0];
  v15.i64[1] = v97.i64[0];
  v14.i64[1] = v96.i64[0];
  v13.i64[1] = v95.i64[0];
  result = vsubq_s16(*a3, v16);
  v183 = vsubq_s16(a3[1], v15);
  v184 = vsubq_s16(a3[2], v14);
  v185 = vsubq_s16(a3[3], v13);
  *a4 = result;
  a4[1] = v183;
  a4[2] = v184;
  a4[3] = v185;
  return result;
}

uint64_t sub_27736CDC8(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, __n128 a13)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a4 < a5)
  {
    v13 = a4;
    v16 = *(*(a1 + 80) + 136);
    v32 = 16 * a2;
    do
    {
      if (a2 < a3)
      {
        v17 = (*(a1 + 152) + 48 * (a2 + *(a1 + 12) * v13));
        v18 = 16 * v13;
        v19 = a2;
        v20 = v32;
        do
        {
          v21 = *(a1 + 80);
          if (*(a1 + 188) && v21[3])
          {
            v22 = v21[5];
            v23 = *v21;
            v24 = *(v21 + 4) + (v20 & 0xFFFFFFF0);
            v25 = *(v21 + 34);
            v26 = (v24 + (v18 * v25));
            if (v23)
            {
              v26 = (v24 + (32 * v13 * v25));
              v27 = 32 * v13;
            }

            else
            {
              v27 = 16 * v13;
            }

            v28 = (v24 + v16 + (v27 * v25));
            if (v22)
            {
              v29 = v28;
            }

            else
            {
              v29 = v26;
            }

            v30 = 2 * v16;
          }

          else
          {
            v29 = (*(v21 + 4) + (v20 & 0xFFFFFFF0) + (v18 * *(v21 + 34)));
            v30 = v16;
          }

          if ((v17[1].i8[0] & 0xC0) + v17->u8[0] <= 0x7F)
          {
            sub_27736CF80(a1, v29, v29, v19, v13, v30, v17, v35, a6, a7, a8, a9, a10, a11, a12, a13);
          }

          v17 += 3;
          v20 += 16;
          ++v19;
        }

        while (a3 != v19);
      }

      ++v13;
    }

    while (v13 != a5);
  }

  return 0;
}

uint64_t sub_27736CF80(uint64_t a1, int8x16_t *a2, int64x2_t *a3, int a4, int a5, unsigned int a6, int8x16_t *a7, int8x16_t *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, __n128 a16)
{
  v17 = *(a1 + 12) * a5;
  v18 = *(a1 + 48) + 12 * *(*(a1 + 72) + 2 * (v17 + a4));
  v19 = *(v18 + 10);
  v20 = *(a1 + 112);
  v21 = *(v20 + v17 + a4);
  v22 = *(v18 + 11);
  v23 = a7->u8[0];
  v24.i64[0] = 0x1F1F1F1F1F1F1F1FLL;
  v24.i64[1] = 0x1F1F1F1F1F1F1F1FLL;
  if (v23 <= 0x3F)
  {
    v25 = *a7;
    v26 = vandq_s8(vorrq_s8(vceqzq_s8(*a7), vcgtq_s8(*a7, v24)), xmmword_2773B5400);
    v27 = vpaddq_s8(v26, v26);
    v28 = vpaddq_s8(v27, v27);
    if (vpaddq_s8(v28, v28).u16[0] != 0xFFFF)
    {
      v29 = (v21 + v19) & ~((v21 + v19) >> 31);
      if (v29 >= 51)
      {
        v29 = 51;
      }

      v30 = (v21 + v22) & ~((v21 + v22) >> 31);
      if (v30 >= 51)
      {
        v30 = 51;
      }

      v31 = v21 + *(v20 + a4 - (a4 != 0) + v17) + 1;
      v32 = (v19 + (v31 >> 1)) & ~((v19 + (v31 >> 1)) >> 31);
      if (v32 >= 51)
      {
        v32 = 51;
      }

      v33 = (v22 + (v31 >> 1)) & ~((v22 + (v31 >> 1)) >> 31);
      if (v33 >= 51)
      {
        v33 = 51;
      }

      v34 = byte_2773B5480[v33];
      v35 = byte_2773B5440[v29];
      v36 = byte_2773B5480[v30];
      v448[0] = byte_2773B5440[v32];
      v448[1] = v35;
      v448[2] = v35;
      v448[3] = v35;
      v447[0] = v34;
      v447[1] = v36;
      v447[2] = v36;
      v447[3] = v36;
      v446[0] = v32;
      v446[1] = v29;
      v446[2] = v29;
      v446[3] = v29;
      v37 = 4 * a6;
      v38 = (a2 + v37);
      v39 = 8 * a6;
      v40 = (a2 + v39);
      v41 = *a2;
      v42 = *(a2 + a6);
      v43 = vzip1q_s8(*a2, v42);
      v44 = 3 * a6;
      v45 = 2 * a6;
      v46 = *(a2 + v45);
      v47 = *(a2 + v44);
      v48 = vzip1q_s8(v46, v47);
      v49 = vzip1q_s16(v43, v48);
      v50 = vzip2q_s16(v43, v48);
      v51 = 12 * a6;
      v52 = (a2 + v51);
      v53 = vzip2q_s8(v41, v42);
      v54 = vzip2q_s8(v46, v47);
      v55 = vzip2q_s16(v53, v54);
      v56 = vzip1q_s16(v53, v54);
      v57 = *(v38 + a6);
      v58 = *(v38 + v45);
      v59 = *(v38 + v44);
      v60 = vzip1q_s8(*v38, v57);
      v61 = vzip1q_s8(v58, v59);
      v62 = vzip1q_s16(v60, v61);
      v63 = vzip2q_s16(v60, v61);
      v64 = vzip2q_s8(*v38, v57);
      v65 = vzip2q_s8(v58, v59);
      v66 = vzip2q_s16(v64, v65);
      v67 = vzip1q_s16(v64, v65);
      v68 = *(v40 + a6);
      v69 = *(v40 + v45);
      v70 = *(v40 + v44);
      v71 = vzip1q_s8(*v40, v68);
      v72 = vzip1q_s8(v69, v70);
      v73 = vzip1q_s16(v71, v72);
      v74 = vzip2q_s16(v71, v72);
      v75 = vzip2q_s8(*v40, v68);
      v76 = vzip2q_s8(v69, v70);
      v77 = vzip2q_s16(v75, v76);
      v78 = vzip1q_s16(v75, v76);
      v79 = *(v52 + a6);
      v80 = *(v52 + v45);
      v81 = *(v52 + v44);
      v82 = vzip1q_s8(*v52, v79);
      v83 = vzip1q_s8(v80, v81);
      v84 = vzip1q_s16(v82, v83);
      v85 = vzip2q_s16(v82, v83);
      v86 = vzip2q_s8(*v52, v79);
      v87 = vzip2q_s8(v80, v81);
      v88 = vzip1q_s32(v49, v62);
      v89 = vzip1q_s32(v73, v84);
      v90 = vzip2q_s64(v88, v89);
      v16.i64[0] = v88.i64[0];
      v16.i64[1] = v89.i64[0];
      v91 = vzip2q_s16(v86, v87);
      v92 = vzip1q_s16(v86, v87);
      a8[4] = v16;
      a8[5] = v90;
      v93 = vzip2q_s32(v49, v62);
      v94 = vzip2q_s32(v73, v84);
      v95 = vzip2q_s64(v93, v94);
      v93.i64[1] = v94.i64[0];
      a8[6] = v93;
      a8[7] = v95;
      v96 = vzip1q_s32(v50, v63);
      v97 = vzip1q_s32(v74, v85);
      v98 = vzip2q_s64(v96, v97);
      v96.i64[1] = v97.i64[0];
      a8[8] = v96;
      a8[9] = v98;
      v99 = vzip2q_s32(v50, v63);
      v100 = vzip2q_s32(v74, v85);
      v101 = vzip2q_s64(v99, v100);
      v99.i64[1] = v100.i64[0];
      a8[10] = v99;
      a8[11] = v101;
      v102 = vzip1q_s32(v56, v67);
      v103 = vzip1q_s32(v78, v92);
      v104 = vzip2q_s64(v102, v103);
      v102.i64[1] = v103.i64[0];
      a8[12] = v102;
      a8[13] = v104;
      v105 = vzip2q_s32(v56, v67);
      v106 = vzip2q_s32(v78, v92);
      v107 = vzip2q_s64(v105, v106);
      v105.i64[1] = v106.i64[0];
      a8[14] = v105;
      a8[15] = v107;
      v110 = vzip1q_s32(v55, v66);
      v108 = vzip1q_s32(v77, v91);
      v109 = vzip2q_s64(v110, v108);
      v110.i64[1] = v108.i64[0];
      a8[16] = v110;
      a8[17] = v109;
      v113 = vzip2q_s32(v55, v66);
      v111 = vzip2q_s32(v77, v91);
      v112 = vzip2q_s64(v113, v111);
      v113.i64[1] = v111.i64[0];
      a8[18] = v113;
      a8[19] = v112;
      if (v23 <= 0x1F)
      {
        v114 = &a3[-1].i8[v37];
        v115 = &a3[-1].i8[v39];
        v116 = &a3[-1].i8[v51];
        v113.i32[0] = *(&a3[-1].i32[3] + a6);
        v111.i32[0] = a3[-1].i32[3];
        v112.i32[0] = *(&a3[-1].i32[3] + v45);
        v110.i32[0] = *(&a3[-1].i32[3] + v44);
        v117 = vzip1q_s8(v111, v113);
        v118 = vzip1q_s8(v112, v110);
        v119 = vzip1q_s16(v117, v118);
        v120 = *(v114 + 3);
        v114 += 12;
        v118.i32[0] = *&v114[a6];
        v112.i32[0] = v120;
        v110.i32[0] = *&v114[v45];
        v108.i32[0] = *&v114[v44];
        v121 = vzip1q_s8(v112, v118);
        v122 = vzip1q_s8(v110, v108);
        v123 = vzip1q_s16(v121, v122);
        v124 = *(v115 + 3);
        v115 += 12;
        v122.i32[0] = *&v115[a6];
        v110.i32[0] = v124;
        v108.i32[0] = *&v115[v45];
        v91.i32[0] = *&v115[v44];
        v125 = vzip1q_s8(v110, v122);
        v126 = vzip1q_s8(v108, v91);
        v127 = vzip1q_s16(v125, v126);
        v128 = *(v116 + 3);
        v116 += 12;
        v126.i32[0] = *&v116[a6];
        v108.i32[0] = v128;
        v91.i32[0] = *&v116[v45];
        v109.i32[0] = *&v116[v44];
        v129 = vzip1q_s16(vzip1q_s8(v108, v126), vzip1q_s8(v91, v109));
        v108 = vzip1q_s32(v119, v123);
        v130 = vzip2q_s32(v119, v123);
        v131 = vzip1q_s32(v127, v129);
        v132 = vzip2q_s32(v127, v129);
        v133 = vzip2q_s64(v108, v131);
        v108.i64[1] = v131.i64[0];
        v134 = vzip2q_s64(v130, v132);
        v130.i64[1] = v132.i64[0];
        *a8 = v108;
        a8[1] = v133;
        a8[2] = v130;
        a8[3] = v134;
      }

      v135 = 0;
      v136 = v448;
      v137 = v447;
      v138 = v446;
      v139 = vqtbl1q_s8(xmmword_2773B5420, xmmword_2773B3DF0);
      v140 = a7;
      do
      {
        v141 = v140->u8[0];
        v143 = v140->i32[0];
        v140 = (v140 + 4);
        v142 = v143;
        if (v141 <= 0x1F && v142 != 0)
        {
          v108.i32[0] = *v136;
          v145 = vzip1q_s8(v108, v108);
          v146 = vzip1q_s8(v145, v145);
          v147 = vqtbl1q_s8(v146, xmmword_2773B3DF0);
          v146.i32[0] = *v137;
          v148 = vzip1q_s8(v146, v146);
          v149 = vqtbl1q_s8(vzip1q_s8(v148, v148), xmmword_2773B3DF0);
          v150 = &a8[v135];
          v152 = a8[v135 + 2];
          v151 = a8[v135 + 3];
          v153 = a8[v135 + 4];
          v108 = a8[v135 + 5];
          v154 = vabdq_u8(v151, v153);
          v155 = vbicq_s8(vbicq_s8(vmvnq_s8(vceqq_s8(vminq_u8(vabdq_u8(v151, v152), v149), v149)), vceqq_s8(vminq_u8(v154, v147), v147)), vceqq_s8(vminq_u8(vabdq_u8(v153, v108), v149), v149));
          v156 = vbicq_s8(xmmword_2773B5400, v155);
          v157 = vpaddq_s8(v156, v156);
          v158 = vpaddq_s8(v157, v157);
          if (vpaddq_s8(v158, v158).u16[0] != 0xFFFF)
          {
            v159 = vzip2q_s8(v151, 0);
            v160 = vzip1q_s8(v151, 0);
            v161 = vzip2q_s8(v152, 0);
            v162 = vzip1q_s8(v152, 0);
            v163 = vzip2q_s8(v108, 0);
            v164 = vzip1q_s8(v108, 0);
            v165 = vzip2q_s8(v153, 0);
            v166 = vzip1q_s8(v153, 0);
            if (v141 == 4)
            {
              v16.i32[0] = (*v136 >> 2) + 2;
              v167 = vzip1q_s8(v16, v16);
              v168 = vqtbl1q_s8(vzip1q_s8(v167, v167), xmmword_2773B3DF0);
              v169 = vceqq_s8(vminq_u8(v154, v168), v168);
              v170 = vaddq_s16(v163, v161);
              v16 = vaddq_s16(v164, v162);
              v171 = vaddq_s16(vaddq_s16(v159, v161), v139);
              v172 = vaddq_s16(vaddq_s16(v160, v162), v139);
              v173 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v172, v16), 2uLL)), vshrq_n_u16(vaddq_s16(v171, v170), 2uLL));
              v174 = &a8[v135];
              v176 = a8[v135];
              v175 = a8[v135 + 1];
              v177 = vzip2q_s8(v175, 0);
              v178 = vzip1q_s8(v175, 0);
              v179 = vaddq_s16(v171, v165);
              v180 = vaddq_s16(v172, v166);
              v181 = vaddq_s16(v179, v177);
              v182 = vaddq_s16(v180, v178);
              v183 = vaddq_s16(vzip2q_s8(v176, 0), v177);
              v184 = vaddq_s16(vzip1q_s8(v176, 0), v178);
              v185 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(vaddq_s16(v180, v164), v182), 3uLL)), vshrq_n_u16(vaddq_s16(vaddq_s16(v179, v163), v181), 3uLL));
              v186 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v182, vaddq_s16(v139, vaddq_s16(v184, v184))), 3uLL)), vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v183, v183), v139), v181), 3uLL));
              v187 = vbicq_s8(vmvnq_s8(vceqq_s8(vminq_u8(vabdq_u8(v175, v151), v149), v149)), v169);
              v188 = vbslq_s8(v187, v185, v173);
              v189 = vcltzq_s8(vshlq_n_s8(vandq_s8(v155, v187), 7uLL));
              v174[1] = vbslq_s8(v189, v186, v175);
              v150[2] = vbslq_s8(v189, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v182, 2uLL)), vshrq_n_u16(v181, 2uLL)), v152);
              v150[3] = vbslq_s8(v155, v188, v151);
              v190 = vaddq_s16(vaddq_s16(v163, v165), v139);
              v191 = vaddq_s16(vaddq_s16(v164, v166), v139);
              v192 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v191, v16), 2uLL)), vshrq_n_u16(vaddq_s16(v190, v170), 2uLL));
              v193 = a8[v135 + 6];
              v194 = a8[v135 + 7];
              v195 = vzip2q_s8(v193, 0);
              v196 = vzip1q_s8(v193, 0);
              v197 = vaddq_s16(v190, v159);
              v198 = vaddq_s16(v191, v160);
              v199 = vaddq_s16(v197, v195);
              v200 = vaddq_s16(v198, v196);
              v201 = vaddq_s16(vzip2q_s8(v194, 0), v195);
              v202 = vaddq_s16(vzip1q_s8(v194, 0), v196);
              v203 = vbicq_s8(vmvnq_s8(vceqq_s8(vminq_u8(vabdq_u8(v193, v153), v149), v149)), v169);
              v204 = vbslq_s8(v203, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(vaddq_s16(v198, v162), v200), 3uLL)), vshrq_n_u16(vaddq_s16(vaddq_s16(v197, v161), v199), 3uLL)), v192);
              v205 = vcltzq_s8(vshlq_n_s8(vandq_s8(v155, v203), 7uLL));
              v150[4] = vbslq_s8(v155, v204, v153);
              v150[5] = vbslq_s8(v205, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v200, 2uLL)), vshrq_n_u16(v199, 2uLL)), v108);
              v174[6] = vbslq_s8(v205, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v200, vaddq_s16(v139, vaddq_s16(v202, v202))), 3uLL)), vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v201, v201), v139), v199), 3uLL)), v193);
            }

            else
            {
              v206 = vzip1q_s8(v25, v25);
              v207 = vceqzq_s8(vzip1q_s16(v206, v206));
              v208 = vbicq_s8(v155, v207);
              v209 = &unk_2773B54C0 + 4 * *v138;
              v207.i32[0] = v209[v142] | (v209[BYTE1(v142)] << 8) | (v209[BYTE2(v142)] << 16) | (v209[v142 >> 24] << 24);
              v210 = vzip1q_s8(v207, v207);
              v211 = a8[v135 + 1];
              v16 = a8[v135 + 6];
              v212 = vceqq_s8(vminq_u8(vabdq_u8(v16, v153), v149), v149);
              v213 = vceqq_s8(vminq_u8(vabdq_u8(v211, v151), v149), v149);
              v214 = vzip1q_s16(v210, v210);
              v215.i64[0] = 0x202020202020202;
              v215.i64[1] = 0x202020202020202;
              v216 = vaddq_s8(vaddq_s8(vsubq_s8(vbicq_s8(v215, v212), v212), v213), v214);
              v217 = vqtbl1q_s8(xmmword_2773B5410, xmmword_2773B3DF0);
              v218 = vzip2q_s8(v216, 0);
              v219 = vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vsubq_s16(v161, v163), v217), vshlq_n_s16(vsubq_s16(v165, v159), 2uLL)), 3uLL), vnegq_s16(v218)), v218);
              v220 = vzip1q_s8(v216, 0);
              v221 = vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vsubq_s16(v162, v164), v217), vshlq_n_s16(vsubq_s16(v166, v160), 2uLL)), 3uLL), vnegq_s16(v220)), v220);
              v222 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v221, v160)), vaddq_s16(v219, v159));
              v223 = vqmovun_high_s16(vqmovun_s16(vsubq_s16(v166, v221)), vsubq_s16(v165, v219));
              v224 = vrhaddq_u8(v151, v153);
              v225 = vzip2q_s8(v224, 0);
              v226 = vzip1q_s8(v224, 0);
              v227 = vaddq_s16(vsubq_s16(vzip2q_s8(v211, 0), vaddq_s16(v161, v161)), v225);
              v228 = vsubq_s16(vaddq_s16(v226, vzip1q_s8(v211, 0)), vaddq_s16(v162, v162));
              v229 = vzip2q_s8(v214, 0);
              v230 = vnegq_s16(v229);
              v231 = vzip1q_s8(v214, 0);
              v232 = vnegq_s16(v231);
              v150[2] = vaddq_s8(vandq_s8(vbicq_s8(vqmovn_high_s16(vqmovn_s16(vminq_s16(vmaxq_s16(vshrq_n_s16(v228, 1uLL), v232), v231)), vminq_s16(vmaxq_s16(vshrq_n_s16(v227, 1uLL), v230), v229)), v213), v208), v152);
              v150[3] = vbslq_s8(v208, v222, v151);
              v150[4] = vbslq_s8(v208, v223, v153);
              v150[5] = vaddq_s8(vandq_s8(vbicq_s8(vqmovn_high_s16(vqmovn_s16(vminq_s16(vmaxq_s16(vshrq_n_s16(vsubq_s16(vaddq_s16(v226, vzip1q_s8(v16, 0)), vaddq_s16(v164, v164)), 1uLL), v232), v231)), vminq_s16(vmaxq_s16(vshrq_n_s16(vsubq_s16(vaddq_s16(v225, vzip2q_s8(v16, 0)), vaddq_s16(v163, v163)), 1uLL), v230), v229)), v212), v208), v108);
            }
          }
        }

        v25 = vextq_s8(v25, 0, 4uLL);
        ++v136;
        ++v137;
        ++v138;
        v135 += 4;
      }

      while (v135 != 16);
      v233 = a8[4];
      v234 = a8[5];
      v235 = vzip1q_s8(v233, v234);
      v236 = a8[6];
      v237 = a8[7];
      v238 = vzip1q_s8(v236, v237);
      v239 = vzip1q_s16(v235, v238);
      v240 = vzip2q_s16(v235, v238);
      v241 = vzip2q_s8(v233, v234);
      v242 = vzip2q_s8(v236, v237);
      v243 = vzip2q_s16(v241, v242);
      v244 = vzip1q_s16(v241, v242);
      v245 = a8[8];
      v246 = a8[9];
      v247 = a8[10];
      v248 = a8[11];
      v249 = vzip1q_s8(v245, v246);
      v250 = vzip1q_s8(v247, v248);
      v251 = vzip1q_s16(v249, v250);
      v252 = vzip2q_s16(v249, v250);
      v253 = vzip2q_s8(v245, v246);
      v254 = vzip2q_s8(v247, v248);
      v255 = vzip2q_s16(v253, v254);
      v256 = vzip1q_s16(v253, v254);
      v257 = a8[12];
      v258 = a8[13];
      v259 = a8[14];
      v260 = a8[15];
      v261 = vzip1q_s8(v257, v258);
      v262 = vzip1q_s8(v259, v260);
      v263 = vzip1q_s16(v261, v262);
      v264 = vzip2q_s16(v261, v262);
      v265 = vzip2q_s8(v257, v258);
      v266 = vzip2q_s8(v259, v260);
      v267 = vzip2q_s16(v265, v266);
      v268 = vzip1q_s16(v265, v266);
      v269 = a8[16];
      v270 = a8[17];
      v271 = a8[18];
      v272 = a8[19];
      v273 = vzip1q_s8(v269, v270);
      v274 = vzip1q_s8(v271, v272);
      v275 = vzip1q_s16(v273, v274);
      v276 = vzip2q_s16(v273, v274);
      v277 = vzip2q_s8(v269, v270);
      v278 = vzip2q_s8(v271, v272);
      v279 = vzip2q_s16(v277, v278);
      v280 = vzip1q_s16(v277, v278);
      v281 = vzip1q_s32(v239, v251);
      v282 = vzip1q_s32(v263, v275);
      v283 = vzip2q_s64(v281, v282);
      v281.i64[1] = v282.i64[0];
      *a3 = v281;
      *(a3 + a6) = v283;
      v284 = vzip2q_s32(v239, v251);
      v285 = vzip2q_s32(v263, v275);
      v286 = vzip2q_s64(v284, v285);
      v284.i64[1] = v285.i64[0];
      v287 = (a3 + v37);
      *(a3 + v45) = v284;
      *(a3 + v44) = v286;
      v288 = vzip1q_s32(v240, v252);
      v289 = vzip1q_s32(v264, v276);
      v290 = vzip2q_s64(v288, v289);
      v288.i64[1] = v289.i64[0];
      *v287 = v288;
      *(v287 + a6) = v290;
      v291 = vzip2q_s32(v240, v252);
      v292 = vzip2q_s32(v264, v276);
      v293 = vzip2q_s64(v291, v292);
      v291.i64[1] = v292.i64[0];
      *(v287 + v45) = v291;
      *(v287 + v44) = v293;
      v294 = vzip1q_s32(v244, v256);
      v295 = vzip1q_s32(v268, v280);
      v296 = vzip2q_s64(v294, v295);
      v294.i64[1] = v295.i64[0];
      v297 = (a3 + 8 * a6);
      *v297 = v294;
      *(v297 + a6) = v296;
      v298 = vzip2q_s32(v244, v256);
      v299 = vzip2q_s32(v268, v280);
      v300 = vzip2q_s64(v298, v299);
      v298.i64[1] = v299.i64[0];
      *(v297 + v45) = v298;
      v301 = (a3 + 12 * a6);
      *(v297 + v44) = v300;
      v302 = vzip1q_s32(v243, v255);
      v303 = vzip1q_s32(v267, v279);
      a16 = vzip2q_s64(v302, v303);
      v302.i64[1] = v303.i64[0];
      *v301 = v302;
      *(v301 + a6) = a16;
      v304 = vzip2q_s32(v243, v255);
      v243.i64[0] = v304.i64[0];
      v305 = vzip2q_s32(v267, v279);
      v243.i64[1] = v305.i64[0];
      *(v301 + v45) = v243;
      *(v301 + v44) = vzip2q_s64(v304, v305);
      v24.i64[0] = 0x1F1F1F1F1F1F1F1FLL;
      v24.i64[1] = 0x1F1F1F1F1F1F1F1FLL;
      if (v23 <= 0x1F)
      {
        v306 = a8[1];
        v307 = a8[2];
        v308 = a8[3];
        v309 = vzip1q_s8(*a8, v307);
        v310 = vzip2q_s8(*a8, v307);
        v311 = vzip1q_s8(v306, v308);
        v312 = vzip2q_s8(v306, v308);
        v313 = vzip1q_s8(v309, v311);
        a16 = vextq_s8(v313, 0, 4uLL);
        a3[-1].i32[3] = v313.i32[0];
        v314 = (&a3[-1].i32[3] + a6);
        *v314 = a16.n128_u32[0];
        v315 = (v314 + a6);
        v313.i64[0] = vextq_s8(a16, xmmword_2773B5400, 4uLL).u64[0];
        *v315 = v313.i32[0];
        v316 = (v315 + a6);
        *v316 = v313.i32[1];
        v317 = vzip2q_s8(v309, v311);
        v318 = (v316 + a6);
        *v318 = v317.i32[0];
        v319 = (v318 + a6);
        v320 = vextq_s8(v317, 0, 4uLL);
        *v319 = v320.i32[0];
        v321 = (v319 + a6);
        v320.i64[0] = vextq_s8(v320, xmmword_2773B5400, 4uLL).u64[0];
        *v321 = v320.i32[0];
        v322 = (v321 + a6);
        *v322 = v320.i32[1];
        v323 = vzip1q_s8(v310, v312);
        v324 = (v322 + a6);
        *v324 = v323.i32[0];
        v325 = (v324 + a6);
        v326 = vextq_s8(v323, 0, 4uLL);
        *v325 = v326.i32[0];
        v327 = (v325 + a6);
        v326.i64[0] = vextq_s8(v326, xmmword_2773B5400, 4uLL).u64[0];
        *v327 = v326.i32[0];
        v328 = (v327 + a6);
        *v328 = v326.i32[1];
        v329 = vzip2q_s8(v310, v312);
        v330 = (v328 + a6);
        *v330 = v329.i32[0];
        v331 = (v330 + a6);
        v332 = vextq_s8(v329, 0, 4uLL);
        *v331 = v332.i32[0];
        v333 = (v331 + a6);
        v332.i64[0] = vextq_s8(v332, xmmword_2773B5400, 4uLL).u64[0];
        *v333 = v332.i32[0];
        *(v333 + a6) = v332.i32[1];
      }
    }
  }

  if (a7[1].u8[0] <= 0x3Fu)
  {
    v334 = a7[1];
    v335 = vandq_s8(vorrq_s8(vceqzq_s8(v334), vcgtq_s8(v334, v24)), xmmword_2773B5400);
    v336 = vpaddq_s8(v335, v335);
    v337 = vpaddq_s8(v336, v336);
    if (vpaddq_s8(v337, v337).u16[0] != 0xFFFF)
    {
      v338 = 0;
      v339 = 0;
      v340 = (v21 + v19) & ~((v21 + v19) >> 31);
      if (v340 >= 51)
      {
        v340 = 51;
      }

      v341 = (v21 + v22) & ~((v21 + v22) >> 31);
      if (v341 >= 51)
      {
        v341 = 51;
      }

      v342 = v21 + *(*(a1 + 112) + a4 + *(a1 + 12) * (a5 - (a5 != 0))) + 1;
      v343 = v22 + (v342 >> 1);
      v344 = (v19 + (v342 >> 1)) & ~((v19 + (v342 >> 1)) >> 31);
      if (v344 >= 51)
      {
        v344 = 51;
      }

      v345 = v343 & ~(v343 >> 31);
      if (v345 >= 51)
      {
        v345 = 51;
      }

      v346 = byte_2773B5480[v345];
      v347 = byte_2773B5440[v340];
      v348 = byte_2773B5480[v341];
      v445[0] = byte_2773B5440[v344];
      v445[1] = v347;
      v445[2] = v347;
      v445[3] = v347;
      v444[0] = v346;
      v444[1] = v348;
      v444[2] = v348;
      v444[3] = v348;
      v443[0] = v344;
      v443[1] = v340;
      v443[2] = v340;
      v443[3] = v340;
      v349 = a7 + 1;
      v350 = vqtbl1q_s8(xmmword_2773B5420, xmmword_2773B3DF0);
      do
      {
        v351 = v349->u8[0];
        v353 = v349->i32[0];
        v349 = (v349 + 4);
        v352 = v353;
        if (v351 <= 0x1F && v352 != 0)
        {
          a16.n128_u32[0] = v445[v338];
          v355 = vzip1q_s8(a16, a16);
          v356 = vzip1q_s8(v355, v355);
          v357 = vqtbl1q_s8(v356, xmmword_2773B3DF0);
          v356.i32[0] = v444[v338];
          v358 = vzip1q_s8(v356, v356);
          v359 = vqtbl1q_s8(vzip1q_s8(v358, v358), xmmword_2773B3DF0);
          v360 = &a3->i8[v339];
          v361 = *(v360 - 2 * a6);
          v362 = *(v360 - a6);
          v363 = *v360;
          a16 = *(v360 + a6);
          v364 = vabdq_u8(v362, *v360);
          v365 = vbicq_s8(vbicq_s8(vmvnq_s8(vceqq_s8(vminq_u8(vabdq_u8(v362, v361), v359), v359)), vceqq_s8(vminq_u8(v364, v357), v357)), vceqq_s8(vminq_u8(vabdq_u8(*v360, a16), v359), v359));
          v366 = vbicq_s8(xmmword_2773B5400, v365);
          v367 = vpaddq_s8(v366, v366);
          v368 = vpaddq_s8(v367, v367);
          if (vpaddq_s8(v368, v368).u16[0] != 0xFFFF)
          {
            v369 = vzip2q_s8(v362, 0);
            v370 = vzip1q_s8(v362, 0);
            v371 = vzip2q_s8(v361, 0);
            v372 = vzip1q_s8(v361, 0);
            v373 = vzip2q_s8(a16, 0);
            v374 = vzip1q_s8(a16, 0);
            v375 = vzip2q_s8(v363, 0);
            v376 = vzip1q_s8(v363, 0);
            if (v351 == 4)
            {
              v16.i32[0] = (v445[v338] >> 2) + 2;
              v377 = vzip1q_s8(v16, v16);
              v378 = vqtbl1q_s8(vzip1q_s8(v377, v377), xmmword_2773B3DF0);
              v379 = vceqq_s8(vminq_u8(v364, v378), v378);
              v380 = vaddq_s16(v373, v371);
              v16 = vaddq_s16(v374, v372);
              v381 = vaddq_s16(vaddq_s16(v369, v371), v350);
              v382 = vaddq_s16(vaddq_s16(v370, v372), v350);
              v383 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v382, v16), 2uLL)), vshrq_n_u16(vaddq_s16(v381, v380), 2uLL));
              v384 = *(v360 - 3 * a6);
              v385 = vzip2q_s8(v384, 0);
              v386 = vzip1q_s8(v384, 0);
              v387 = vaddq_s16(v381, v375);
              v388 = vaddq_s16(v382, v376);
              v389 = vaddq_s16(v387, v385);
              v390 = *(v360 + (-4 * a6));
              v391 = vaddq_s16(v388, v386);
              v392 = vaddq_s16(vzip2q_s8(v390, 0), v385);
              v393 = vaddq_s16(vzip1q_s8(v390, 0), v386);
              v394 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(vaddq_s16(v388, v374), v391), 3uLL)), vshrq_n_u16(vaddq_s16(vaddq_s16(v387, v373), v389), 3uLL));
              v395 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v391, vaddq_s16(v350, vaddq_s16(v393, v393))), 3uLL)), vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v392, v392), v350), v389), 3uLL));
              v396 = vbicq_s8(vmvnq_s8(vceqq_s8(vminq_u8(vabdq_u8(v384, v362), v359), v359)), v379);
              v397 = vbslq_s8(v396, v394, v383);
              v398 = vcltzq_s8(vshlq_n_s8(vandq_s8(v365, v396), 7uLL));
              *(v360 - 3 * a6) = vbslq_s8(v398, v395, v384);
              *(v360 - 2 * a6) = vbslq_s8(v398, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v391, 2uLL)), vshrq_n_u16(v389, 2uLL)), v361);
              *(v360 - a6) = vbslq_s8(v365, v397, v362);
              v399 = vaddq_s16(vaddq_s16(v373, v375), v350);
              v400 = vaddq_s16(vaddq_s16(v374, v376), v350);
              v401 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v400, v16), 2uLL)), vshrq_n_u16(vaddq_s16(v399, v380), 2uLL));
              v402 = *(v360 + 2 * a6);
              v403 = vzip2q_s8(v402, 0);
              v404 = vzip1q_s8(v402, 0);
              v405 = vaddq_s16(v399, v369);
              v406 = vaddq_s16(v400, v370);
              v407 = vaddq_s16(v405, v403);
              v408 = vaddq_s16(v406, v404);
              v409 = *(v360 + 3 * a6);
              v410 = vaddq_s16(vzip2q_s8(v409, 0), v403);
              v411 = vaddq_s16(vzip1q_s8(v409, 0), v404);
              v412 = vbicq_s8(vmvnq_s8(vceqq_s8(vminq_u8(vabdq_u8(v402, v363), v359), v359)), v379);
              v413 = vbslq_s8(v412, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(vaddq_s16(v406, v372), v408), 3uLL)), vshrq_n_u16(vaddq_s16(vaddq_s16(v405, v371), v407), 3uLL)), v401);
              v414 = vcltzq_s8(vshlq_n_s8(vandq_s8(v365, v412), 7uLL));
              *v360 = vbslq_s8(v365, v413, v363);
              *(v360 + a6) = vbslq_s8(v414, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v408, 2uLL)), vshrq_n_u16(v407, 2uLL)), a16);
              *(v360 + 2 * a6) = vbslq_s8(v414, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v408, vaddq_s16(v350, vaddq_s16(v411, v411))), 3uLL)), vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v410, v410), v350), v407), 3uLL)), v402);
            }

            else
            {
              v415 = vzip1q_s8(v334, v334);
              v416 = vceqzq_s8(vzip1q_s16(v415, v415));
              v417 = &unk_2773B54C0 + 4 * v443[v338];
              v418 = vbicq_s8(v365, v416);
              v416.i32[0] = v417[v352] | (v417[BYTE1(v352)] << 8) | (v417[BYTE2(v352)] << 16) | (v417[v352 >> 24] << 24);
              v419 = *(v360 - 3 * a6);
              v420 = vzip1q_s8(v416, v416);
              v16 = *(v360 + 2 * a6);
              v421 = vceqq_s8(vminq_u8(vabdq_u8(v16, v363), v359), v359);
              v422 = vceqq_s8(vminq_u8(vabdq_u8(v419, v362), v359), v359);
              v423 = vzip1q_s16(v420, v420);
              v424.i64[0] = 0x202020202020202;
              v424.i64[1] = 0x202020202020202;
              v425 = vaddq_s8(vaddq_s8(vsubq_s8(vbicq_s8(v424, v421), v421), v422), v423);
              v426.i64[0] = 0x4000400040004;
              v426.i64[1] = 0x4000400040004;
              v427 = vzip2q_s8(v425, 0);
              v428 = vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vsubq_s16(v371, v373), v426), vshlq_n_s16(vsubq_s16(v375, v369), 2uLL)), 3uLL), vnegq_s16(v427)), v427);
              v429 = vzip1q_s8(v425, 0);
              v430 = vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vsubq_s16(v372, v374), v426), vshlq_n_s16(vsubq_s16(v376, v370), 2uLL)), 3uLL), vnegq_s16(v429)), v429);
              v431 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v430, v370)), vaddq_s16(v428, v369));
              v432 = vqmovun_high_s16(vqmovun_s16(vsubq_s16(v376, v430)), vsubq_s16(v375, v428));
              v433 = vrhaddq_u8(v362, v363);
              v434 = vzip2q_s8(v433, 0);
              v435 = vzip1q_s8(v433, 0);
              v436 = vaddq_s16(vsubq_s16(vzip2q_s8(v419, 0), vaddq_s16(v371, v371)), v434);
              v437 = vsubq_s16(vaddq_s16(v435, vzip1q_s8(v419, 0)), vaddq_s16(v372, v372));
              v438 = vzip2q_s8(v423, 0);
              v439 = vnegq_s16(v438);
              v440 = vzip1q_s8(v423, 0);
              v441 = vnegq_s16(v440);
              *(v360 - 2 * a6) = vaddq_s8(vandq_s8(vbicq_s8(vqmovn_high_s16(vqmovn_s16(vminq_s16(vmaxq_s16(vshrq_n_s16(v437, 1uLL), v441), v440)), vminq_s16(vmaxq_s16(vshrq_n_s16(v436, 1uLL), v439), v438)), v422), v418), v361);
              *(v360 - a6) = vbslq_s8(v418, v431, v362);
              *v360 = vbslq_s8(v418, v432, v363);
              *(v360 + a6) = vaddq_s8(vandq_s8(vbicq_s8(vqmovn_high_s16(vqmovn_s16(vminq_s16(vmaxq_s16(vshrq_n_s16(vsubq_s16(vaddq_s16(v435, vzip1q_s8(v16, 0)), vaddq_s16(v374, v374)), 1uLL), v441), v440)), vminq_s16(vmaxq_s16(vshrq_n_s16(vsubq_s16(vaddq_s16(v434, vzip2q_s8(v16, 0)), vaddq_s16(v373, v373)), 1uLL), v439), v438)), v421), v418), a16);
            }
          }
        }

        v334 = vextq_s8(v334, 0, 4uLL);
        ++v338;
        v339 += 4 * a6;
      }

      while (v338 != 4);
    }
  }

  return 0;
}

uint64_t sub_27736E078(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(*(a1 + 80) + 152);
  v6 = *(a1 + 152);
  v7 = *(a1 + 12);
  v30 = -1;
  if (a4 >= a5)
  {
    return 0;
  }

  v8 = a4;
  v11 = (v6 + 48 * (a2 + v7 * a4));
  v26 = 16 * a2;
  v27 = a2;
  while (a2 >= a3)
  {
LABEL_18:
    ++v8;
    a2 = v27;
    if (v8 == a5)
    {
      return 0;
    }
  }

  v12 = 8 * v8;
  v13 = a2;
  v14 = v26;
  while (1)
  {
    v15 = *(a1 + 80);
    if (*(a1 + 188) && v15[3])
    {
      v16 = v15[5];
      v17 = *v15;
      v18 = *(v15 + 5) + (v14 & 0xFFFFFFF0);
      v19 = *(v15 + 38);
      v20 = v18 + (v12 * v19);
      if (v17)
      {
        v20 = v18 + (16 * v8 * v19);
        v21 = 16 * v8;
      }

      else
      {
        v21 = 8 * v8;
      }

      v22 = v18 + v5 + (v21 * v19);
      v23 = (v16 ? v22 : v20);
      v24 = 2 * v5;
    }

    else
    {
      v23 = (*(v15 + 5) + (v14 & 0xFFFFFFF0) + (v12 * *(v15 + 38)));
      v24 = v5;
    }

    if ((v11[1].i8[0] & 0xC0) + v11->u8[0] <= 0x7F)
    {
      result = sub_27736E204(a1, v23, v23->i16, v24, v13, v8, v11, v29);
      if (result)
      {
        return result;
      }
    }

    v11 += 3;
    v14 += 16;
    if (a3 == ++v13)
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_27736E204(uint64_t a1, int16x8_t *a2, __int16 *a3, unsigned int a4, int a5, int a6, int8x16_t *a7, uint64_t a8)
{
  v236 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 12);
  v9 = a5 + v8 * a6;
  v10 = *(*(a1 + 72) + 2 * v9);
  if ((v10 & 0xC000) != 0)
  {
    return 4294958327;
  }

  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  v13 = *(v11 + v9);
  v14 = v9 - (a5 != 0);
  v15 = (v13 + *(v11 + v14) + 1) >> 1;
  v16 = a5 + v8 * (a6 - (a6 != 0));
  v17 = (v13 + *(v11 + v16) + 1) >> 1;
  v18 = *(v12 + v9);
  v19 = (v18 + *(v12 + v14) + 1) >> 1;
  v20 = (v18 + *(v12 + v16) + 1) >> 1;
  v21 = (v13 << 12) | (v15 << 6) | (v10 << 18) | v17;
  v22 = (v18 << 12) | (v19 << 6) | (v10 << 18) | v20;
  if (*(a8 + 128) == v21 && *(a8 + 132) == v22)
  {
    goto LABEL_4;
  }

  *(a8 + 128) = v21;
  *(a8 + 132) = v22;
  v192 = *(a1 + 48) + 12 * v10;
  v193 = *(v192 + 10);
  v194 = v193 + v13;
  v195 = v193 + v15;
  v196 = v193 + v17;
  v197 = v193 + v18;
  v198 = v193 + v19;
  v199 = v193 + v20;
  v200 = v194 < -12 || v195 < -12;
  v201 = v200 || v196 < -12;
  v202 = v201 || v197 < -12;
  v203 = v202 || v198 < -12;
  if (v203 || v199 < -12)
  {
    return 4294958327;
  }

  result = 4294958327;
  if (v194 > 63)
  {
    return result;
  }

  if (v195 > 63)
  {
    return result;
  }

  if (v196 > 63)
  {
    return result;
  }

  if (v197 > 63)
  {
    return result;
  }

  if (v198 > 63)
  {
    return result;
  }

  if (v199 > 63)
  {
    return result;
  }

  v205 = *(v192 + 11);
  v206 = v205 + v13;
  if (v205 + v13 < -12)
  {
    return result;
  }

  v207 = v205 + v15;
  if (v207 < -12)
  {
    return result;
  }

  v208 = v205 + v17;
  if (v208 < -12)
  {
    return result;
  }

  v209 = v205 + v18;
  if (v209 < -12)
  {
    return result;
  }

  v210 = v205 + v19;
  if (v210 < -12)
  {
    return result;
  }

  v211 = v205 + v20;
  if (v211 < -12 || v206 > 63 || v207 > 63 || v208 > 63 || v209 > 63 || v210 > 63 || v211 > 63)
  {
    return result;
  }

  v212 = byte_2773BA0C8[v194];
  v213 = byte_2773BA0C8[v195];
  v214 = byte_2773BA0C8[v196];
  v215 = byte_2773BA0C8[v197];
  v216 = byte_2773BA0C8[v198];
  v217 = byte_2773BA0C8[v199];
  v218 = byte_2773B5440[v214];
  v219 = byte_2773B5480[byte_2773BA0C8[v208]];
  v220 = byte_2773B5440[v217];
  v221 = byte_2773B5480[byte_2773BA0C8[v211]];
  v222 = byte_2773B5440[v212] | (byte_2773B5440[v215] << 8);
  v223 = byte_2773B5480[byte_2773BA0C8[v206]] | (byte_2773B5480[byte_2773BA0C8[v209]] << 8);
  LODWORD(v224) = v212;
  DWORD1(v224) = v222 | (v222 << 16);
  *(&v224 + 1) = __PAIR64__(v215, v223 | (v223 << 16));
  LODWORD(v212) = byte_2773B5480[byte_2773BA0C8[v207]] | (byte_2773B5480[byte_2773BA0C8[v210]] << 8);
  LODWORD(v225) = v213;
  DWORD1(v225) = byte_2773B5440[v213] | (byte_2773B5440[v216] << 8) | ((byte_2773B5440[v213] | (byte_2773B5440[v216] << 8)) << 16);
  DWORD2(v225) = v212 | (v212 << 16);
  HIDWORD(v225) = v216;
  *a8 = v225;
  *(a8 + 16) = v224;
  LODWORD(v225) = v214;
  DWORD1(v225) = v218 | (v220 << 8) | ((v218 | (v220 << 8)) << 16);
  DWORD2(v225) = v219 | (v221 << 8) | ((v219 | (v221 << 8)) << 16);
  HIDWORD(v225) = v217;
  *(a8 + 32) = v224;
  *(a8 + 48) = v224;
  *(a8 + 64) = v225;
  *(a8 + 80) = v224;
  *(a8 + 96) = v224;
  *(a8 + 112) = v224;
LABEL_4:
  v23 = *a7;
  v24.i64[0] = 0x1F1F1F1F1F1F1F1FLL;
  v24.i64[1] = 0x1F1F1F1F1F1F1F1FLL;
  if (a7->u8[0] <= 0x3Fu)
  {
    v25 = vandq_s8(vorrq_s8(vceqzq_s8(v23), vcgtq_s8(v23, v24)), xmmword_2773B5400);
    v26 = vpaddq_s8(v25, v25);
    v27 = vpaddq_s8(v26, v26);
    if (vpaddq_s8(v27, v27).u16[0] != 0xFFFF)
    {
      v28 = 2 * a4;
      v29 = a4;
      v30 = 3 * a4;
      v31 = *(a2 + a4);
      v32 = *(a2 + (v29 * 2));
      v33 = *(a2 + v30);
      v34 = *(a2 + v28 * 2 + a4);
      v35 = *(a2 + v28 * 2);
      v36 = *(a2 + v28 * 2 + (v29 * 2));
      v37 = vzip1q_s16(*a2, v35);
      v38 = vzip2q_s16(*a2, v35);
      v39 = vzip1q_s16(v31, v34);
      v40 = *(a2 + v28 * 2 + v30);
      v41 = vzip2q_s16(v31, v34);
      v42 = vzip1q_s16(v32, v36);
      v43 = vzip2q_s16(v32, v36);
      v44 = vzip1q_s16(v33, v40);
      v45 = vzip2q_s16(v33, v40);
      v46 = vzip1q_s16(v37, v42);
      v47 = *a7;
      v48 = vzip2q_s16(v37, v42);
      v49 = vzip1q_s16(v38, v43);
      v50 = vzip2q_s16(v38, v43);
      v51 = vzip1q_s16(v39, v44);
      v52 = vzip2q_s16(v39, v44);
      v53 = vzip1q_s16(v46, v51);
      v54 = vzip2q_s16(v46, v51);
      v55 = vzip1q_s16(v41, v45);
      v228 = v53;
      v229 = v54;
      v56 = vzip2q_s16(v41, v45);
      v230 = vzip1q_s16(v48, v52);
      v231 = vzip2q_s16(v48, v52);
      v232 = vzip1q_s16(v49, v55);
      v233 = vzip2q_s16(v49, v55);
      v234 = vzip1q_s16(v50, v56);
      v235 = vzip2q_s16(v50, v56);
      if (v23.u8[0] <= 0x1Fu)
      {
        v57 = &a3[v28 - 8];
        v58 = vzip2q_s16(vzip2q_s16(*(a3 - 1), *v57), vzip2q_s16(*&a3[v29 - 8], *(v57 + v29 * 2)));
        v59 = vzip2q_s16(vzip2q_s16(*(a3 + a4 - 16), *(v57 + a4)), vzip2q_s16(*(a3 + v30 - 16), *(v57 + v30)));
        v226 = vzip1q_s16(v58, v59);
        v227 = vzip2q_s16(v58, v59);
      }

      v60 = 0;
      v61 = 1;
      v62.i64[0] = 0x2000200020002;
      v62.i64[1] = 0x2000200020002;
      v63.i64[0] = 0x101010101010101;
      v63.i64[1] = 0x101010101010101;
      v64.i64[0] = 0x4000400040004;
      v64.i64[1] = 0x4000400040004;
      v65 = a8;
      v66 = a7;
      do
      {
        v67 = v61;
        v68 = v66->u8[0];
        v70 = v66->i32[0];
        v66 = (v66 + 8);
        v69 = v70;
        if (v68 <= 0x1F && v69 != 0)
        {
          v72 = *v65;
          v73 = vqtbl1q_s8(*v65, xmmword_2773B43F0);
          v74 = vqtbl1q_s8(*v65, xmmword_2773B5430);
          v75 = &v228.i8[v60];
          v76 = *(&v226 + v60);
          v78 = *(&v227 + v60);
          v77 = *(&v228 + v60);
          v79 = *(&v228 + v60 + 16);
          v80 = vbicq_s8(vbicq_s8(vmvnq_s8(vceqq_s8(vminq_u8(vabdq_u8(v78, v76), v74), v74)), vceqq_s8(vminq_u8(vabdq_u8(v78, v77), v73), v73)), vceqq_s8(vminq_u8(vabdq_u8(v77, v79), v74), v74));
          v81 = vbicq_s8(xmmword_2773B5400, v80);
          v82 = vpaddq_s8(v81, v81);
          v83 = vpaddq_s8(v82, v82);
          if (vpaddq_s8(v83, v83).u16[0] != 0xFFFF)
          {
            v84 = vzip2q_s8(v78, 0);
            v85 = vzip1q_s8(v78, 0);
            v86 = vzip2q_s8(v76, 0);
            v87 = vzip1q_s8(v76, 0);
            v88 = vzip2q_s8(v79, 0);
            v89 = vzip1q_s8(v79, 0);
            v90 = vzip2q_s8(v77, 0);
            v91 = vzip1q_s8(v77, 0);
            if (v68 == 4)
            {
              v92 = vaddq_s16(vaddq_s16(v88, v86), v62);
              v93 = vshrq_n_u16(vaddq_s16(v92, vaddq_s16(v86, v84)), 2uLL);
              v94 = vaddq_s16(vaddq_s16(v89, v87), v62);
              v95 = vbslq_s8(v80, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v94, vaddq_s16(v87, v85)), 2uLL)), v93), v78);
              v96 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v94, vaddq_s16(v91, v89)), 2uLL)), vshrq_n_u16(vaddq_s16(v92, vaddq_s16(v90, v88)), 2uLL));
            }

            else
            {
              v97 = v69 >> 24;
              v98 = BYTE2(v69);
              v99 = vzip1q_s8(v23, v23);
              v100 = &byte_2773B54C0[4 * v72.u32[0]];
              v101 = v69;
              v102 = v100[v69];
              v103 = BYTE1(v69);
              v104 = vceqzq_s8(vzip1q_s16(v99, v99));
              v105 = v98;
              v80 = vbicq_s8(v80, v104);
              v72.i32[0] = v102 | (v100[v103] << 8) | (v100[v105] << 16) | (v100[v97] << 24);
              v104.i32[0] = byte_2773B54C0[4 * v72.u32[3] + v101] | (byte_2773B54C0[4 * v72.u32[3] + v103] << 8) | (byte_2773B54C0[4 * v72.u32[3] + v105] << 16) | (byte_2773B54C0[4 * v72.u32[3] + v97] << 24);
              v106 = vaddq_s8(vzip1q_s8(vzip1q_s8(v72, v72), vzip1q_s8(v104, v104)), v63);
              v107 = vshrq_n_s16(vaddq_s16(vaddq_s16(vsubq_s16(v87, v89), v64), vshlq_n_s16(vsubq_s16(v91, v85), 2uLL)), 3uLL);
              v108 = vzip2q_s8(v106, 0);
              v109 = vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vsubq_s16(v86, v88), v64), vshlq_n_s16(vsubq_s16(v90, v84), 2uLL)), 3uLL), vnegq_s16(v108)), v108);
              v110 = vzip1q_s8(v106, 0);
              v111 = vminq_s16(vmaxq_s16(v107, vnegq_s16(v110)), v110);
              v96 = vqmovun_high_s16(vqmovun_s16(vsubq_s16(v91, v111)), vsubq_s16(v90, v109));
              v95 = vbslq_s8(v80, vqmovun_high_s16(vqmovun_s16(vaddq_s16(v111, v85)), vaddq_s16(v109, v84)), v78);
            }

            v75[-1] = v95;
            *v75 = vbslq_s8(v80, v96, v77);
          }
        }

        v61 = 0;
        v23 = vextq_s8(v23, 0, 8uLL);
        ++v65;
        v60 = 64;
      }

      while ((v67 & 1) != 0);
      v112 = vzip1q_s16(v228, v232);
      v113 = vzip2q_s16(v228, v232);
      v114 = vzip1q_s16(v229, v233);
      v115 = vzip2q_s16(v229, v233);
      v116 = vzip1q_s16(v230, v234);
      v117 = vzip2q_s16(v230, v234);
      v118 = vzip1q_s16(v231, v235);
      v119 = vzip2q_s16(v231, v235);
      v120 = vzip1q_s16(v112, v116);
      v121 = vzip2q_s16(v112, v116);
      v122 = vzip1q_s16(v113, v117);
      v123 = vzip2q_s16(v113, v117);
      v124 = vzip1q_s16(v114, v118);
      v125 = vzip2q_s16(v114, v118);
      v126 = vzip1q_s16(v115, v119);
      v127 = vzip2q_s16(v115, v119);
      vst2_s16(a3, v120);
      v129 = (a3 + v30);
      *(a3 + a4) = vzip2q_s16(v120, v124);
      v130 = &a3[v29];
      vst2_s16(v130, v121);
      *v129 = vzip2q_s16(v121, v125);
      v131 = &a3[v28];
      vst2_s16(v131, v122);
      v132 = (v131 + v30);
      *(&a3[v28] + a4) = vzip2q_s16(v122, v126);
      v133 = &a3[v28 + v29];
      vst2_s16(v133, v123);
      *v132 = vzip2q_s16(v123, v127);
      if (v47 <= 0x1Fu)
      {
        *(a3 - 1) = v227.i16[0];
        v134 = a3 - 1;
        *(a3 + a4 - 2) = v227.i16[1];
        v134[v29] = v227.i16[2];
        *(v134 + v30) = v227.i16[3];
        v134[v28] = v227.i16[4];
        *(a3 + 5 * a4 - 2) = v227.i16[5];
        a3[3 * a4 - 1] = v227.i16[6];
        *(a3 + 7 * a4 - 2) = v227.i16[7];
      }
    }
  }

  result = 0;
  v136 = a7[1];
  if (v136.u8[0] <= 0x3Fu)
  {
    v137 = vandq_s8(vorrq_s8(vceqzq_s8(v136), vcgtq_s8(v136, v24)), xmmword_2773B5400);
    v138 = vpaddq_s8(v137, v137);
    v139 = vpaddq_s8(v138, v138);
    if (vpaddq_s8(v139, v139).u16[0] != 0xFFFF)
    {
      v140 = 0;
      v141 = (a8 + 64);
      v142 = a7 + 1;
      v143 = 1;
      v144.i64[0] = 0x2000200020002;
      v144.i64[1] = 0x2000200020002;
      v145.i64[0] = 0x101010101010101;
      v145.i64[1] = 0x101010101010101;
      v146.i64[0] = 0x4000400040004;
      v146.i64[1] = 0x4000400040004;
      do
      {
        v147 = v143;
        v148 = v142->u8[0];
        v150 = v142->i32[0];
        v142 = (v142 + 8);
        v149 = v150;
        if (v148 <= 0x1F && v149 != 0)
        {
          v152 = *v141;
          v153 = vqtbl1q_s8(*v141, xmmword_2773B43F0);
          v154 = vqtbl1q_s8(*v141, xmmword_2773B5430);
          v155 = (a3 + v140 * 4 * a4);
          v156 = *(v155 - 2 * a4);
          v157 = *(v155 - a4);
          v158 = *v155;
          v159 = *(v155 + a4);
          v160 = vbicq_s8(vbicq_s8(vmvnq_s8(vceqq_s8(vminq_u8(vabdq_u8(v157, v156), v154), v154)), vceqq_s8(vminq_u8(vabdq_u8(v157, *v155), v153), v153)), vceqq_s8(vminq_u8(vabdq_u8(*v155, v159), v154), v154));
          v161 = vbicq_s8(xmmword_2773B5400, v160);
          v162 = vpaddq_s8(v161, v161);
          v163 = vpaddq_s8(v162, v162);
          if (vpaddq_s8(v163, v163).u16[0] != 0xFFFF)
          {
            v164 = vzip2q_s8(v157, 0);
            v165 = vzip1q_s8(v157, 0);
            v166 = vzip2q_s8(v156, 0);
            v167 = vzip1q_s8(v156, 0);
            v168 = vzip2q_s8(v159, 0);
            v169 = vzip1q_s8(v159, 0);
            v170 = vzip2q_s8(v158, 0);
            v171 = vzip1q_s8(v158, 0);
            if (v148 == 4)
            {
              v172 = vaddq_s16(vaddq_s16(v168, v166), v144);
              v173 = vshrq_n_u16(vaddq_s16(v172, vaddq_s16(v166, v164)), 2uLL);
              v174 = vaddq_s16(vaddq_s16(v169, v167), v144);
              v175 = vbslq_s8(v160, vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v174, vaddq_s16(v167, v165)), 2uLL)), v173), v157);
              v176 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(v174, vaddq_s16(v171, v169)), 2uLL)), vshrq_n_u16(vaddq_s16(v172, vaddq_s16(v170, v168)), 2uLL));
            }

            else
            {
              v177 = v149 >> 24;
              v178 = BYTE2(v149);
              v179 = vzip1q_s8(v136, v136);
              v180 = &byte_2773B54C0[4 * v152.u32[0]];
              v181 = v149;
              v182 = v180[v149];
              v183 = BYTE1(v149);
              v184 = vceqzq_s8(vzip1q_s16(v179, v179));
              v185 = v178;
              v160 = vbicq_s8(v160, v184);
              v152.i32[0] = v182 | (v180[v183] << 8) | (v180[v185] << 16) | (v180[v177] << 24);
              v184.i32[0] = byte_2773B54C0[4 * v152.u32[3] + v181] | (byte_2773B54C0[4 * v152.u32[3] + v183] << 8) | (byte_2773B54C0[4 * v152.u32[3] + v185] << 16) | (byte_2773B54C0[4 * v152.u32[3] + v177] << 24);
              v186 = vaddq_s8(vzip1q_s8(vzip1q_s8(v152, v152), vzip1q_s8(v184, v184)), v145);
              v187 = vshrq_n_s16(vaddq_s16(vaddq_s16(vsubq_s16(v167, v169), v146), vshlq_n_s16(vsubq_s16(v171, v165), 2uLL)), 3uLL);
              v188 = vzip2q_s8(v186, 0);
              v189 = vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vsubq_s16(v166, v168), v146), vshlq_n_s16(vsubq_s16(v170, v164), 2uLL)), 3uLL), vnegq_s16(v188)), v188);
              v190 = vzip1q_s8(v186, 0);
              v191 = vminq_s16(vmaxq_s16(v187, vnegq_s16(v190)), v190);
              v176 = vqmovun_high_s16(vqmovun_s16(vsubq_s16(v171, v191)), vsubq_s16(v170, v189));
              v175 = vbslq_s8(v160, vqmovun_high_s16(vqmovun_s16(vaddq_s16(v191, v165)), vaddq_s16(v189, v164)), v157);
            }

            *(v155 - a4) = v175;
            *v155 = vbslq_s8(v160, v176, v158);
          }
        }

        v143 = 0;
        v136 = vextq_s8(v136, 0, 8uLL);
        ++v141;
        v140 = 1;
      }

      while ((v147 & 1) != 0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_27736EC4C(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, __n128 a13)
{
  v70 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 80);
  v15 = *(v14 + 100) + 15;
  v16 = *(v14 + 136);
  v17 = *(v14 + 152);
  v18 = *(v14 + 32);
  v19 = *(v14 + 40);
  v20 = *(a1 + 176);
  v21 = *(a1 + 96);
  v22 = *(a1 + 104);
  v23 = 16 * a4 - 4;
  if (!a4)
  {
    v23 = 0;
  }

  if (*v14 && *(v14 + 3))
  {
    v24 = (v15 & 0xFFFFFFF0) + ~(2 * *(a1 + 208));
    v25 = *(v14 + 5);
    v26 = v18 + v16;
    v27 = v19 + v17;
    if (v25)
    {
      v21 += v22;
    }

    LODWORD(v16) = 2 * v16;
    LODWORD(v17) = 2 * v17;
    if (v25)
    {
      v20 += *(a1 + 184);
      v19 = v27;
      v18 = v26;
    }

    v59 = 2 * *(a1 + 184);
    LODWORD(v22) = 2 * v22;
  }

  else
  {
    v59 = *(a1 + 184);
    v24 = (v15 & 0xFFFFFFF0) + (2 * *(a1 + 212) - 4) * *(a1 + 208) - 1;
  }

  v28 = sub_2772BFA84;
  if (!*(a1 + 268))
  {
    v28 = sub_2772BFCC0;
  }

  *(a1 + 248) = v28;
  *(a1 + 256) = sub_2772BFD7C;
  v68 = -1;
  if (a4 >= a5)
  {
    return 0;
  }

  v58 = v22;
  v51 = 16 * v16;
  v29 = v24 - v23;
  v62 = (v15 >> 4) - 1;
  if (v15 >> 4 == 1)
  {
    v30 = 8;
  }

  else
  {
    v30 = 6;
  }

  v63 = v29;
  if (v30 >= v29)
  {
    v30 = v29;
  }

  v61 = 2 * v30;
  if (a2)
  {
    v31 = a2 - 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = 16 * v31;
  v52 = v19;
  v53 = v18;
  v57 = v18 + v32;
  v56 = v19 + v32;
  v54 = v21 + v32;
  v55 = v20 + v32;
  v33 = a4;
  v60 = a5;
  v66 = v16;
  while (a3 <= a2)
  {
LABEL_28:
    if (v33 == v62)
    {
      v38 = 9;
    }

    else
    {
      v38 = 7;
    }

    if (v38 >= v63)
    {
      v38 = v63;
    }

    v39 = 2 * v38 + 2;
    if (v33)
    {
      v40 = v39;
    }

    else
    {
      v40 = v61;
    }

    if (v40 >= 1)
    {
      v41 = 16 * v33 - 4;
      v42 = (v41 * v16);
      v43 = v56;
      v44 = v57 + v42;
      v45 = 8 * v33 - 2;
      v46 = v56 + (v45 * v17);
      v47 = v55 + v41 * v59;
      v48 = v54 + (v45 * v58);
      if (v33)
      {
        v49 = v44;
      }

      else
      {
        v49 = v57;
      }

      if (v33)
      {
        v43 = v46;
        v50 = v48;
      }

      else
      {
        v47 = v55;
        v50 = v54;
      }

      if (*(a1 + 88) == 875704438)
      {
        sub_2772BFFC4(v49, v43, 16 * (a3 - a2), 0, v40, v66, v17, v47, v50, v59, v58);
      }

      else
      {
        (*(a1 + 248))(v49);
      }

      LODWORD(v16) = v66;
    }

    if (++v33 == v60)
    {
      return 0;
    }
  }

  v34 = (*(a1 + 152) + 48 * (a2 + *(a1 + 12) * v33));
  v35 = a2;
  v36 = 16 * a2;
  while (1)
  {
    if ((v34[1].i8[0] & 0xC0) + v34->u8[0] <= 0x7F)
    {
      sub_27736CF80(a1, (v53 + (v51 * v33) + (v36 & 0xFFFFFFF0)), (v53 + (v51 * v33) + (v36 & 0xFFFFFFF0)), v35, v33, v66, v34, v69, a6, a7, a8, a9, a10, a11, a12, a13);
      result = sub_27736E204(a1, (v52 + (8 * v17 * v33) + (v36 & 0xFFFFFFF0)), (v52 + (8 * v17 * v33) + (v36 & 0xFFFFFFF0)), v17, v35, v33, v34, v67);
      LODWORD(v16) = v66;
      if (result)
      {
        return result;
      }
    }

    v34 += 3;
    v36 += 16;
    if (a3 == ++v35)
    {
      goto LABEL_28;
    }
  }
}

uint64_t sub_27736F06C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, uint64_t a10, int a11, int a12)
{
  v138 = a2;
  v139 = a4;
  v12 = a3;
  v14 = *(a1 + 80);
  v148 = 16 * a8;
  if (a8)
  {
    v15 = 16 * a8 - 4;
  }

  else
  {
    v15 = 0;
  }

  if (*v14 && v14[3])
  {
    v151 = ~(2 * *(a1 + 208)) + 16 * a12;
    v16 = v14[5];
    v17 = v16 == 0;
    if (v16)
    {
      v18 = a11;
    }

    else
    {
      v18 = 0;
    }

    v132 = a10 + v18;
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = a5;
    }

    v20 = a4 + v19;
    if (v17)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3;
    }

    v138 = a2 + v21;
    v139 = v20;
    v12 = 2 * a3;
    a5 *= 2;
    v135 = 2 * a11;
  }

  else
  {
    v132 = a10;
    v135 = a11;
    v151 = (2 * *(a1 + 212) - 4) * *(a1 + 208) + 16 * a12 - 1;
  }

  v22 = 2 * v12;
  v144 = 2 * a5;
  v150 = a7 - a6;
  if (a7 > a6)
  {
    v146 = 8 * a8;
    v23 = a6;
    v140 = a7;
    v24 = v12;
    v25 = a5;
    v142 = a8;
    while (a8 >= a9)
    {
LABEL_57:
      ++v23;
      a8 = v142;
      if (v23 == v140)
      {
        goto LABEL_58;
      }
    }

    v26 = 16 * (v23 & 0xFFFFFFF);
    v27 = v148;
    v28 = v142;
    while (1)
    {
      v29 = *(a1 + 12);
      v30 = v23 + v29 * v28;
      v31 = *(a1 + 144);
      v32 = v28 && *(v31 + v30) == 1 && *(v31 + v30 - v29) == 2;
      v33 = *(v31 + v30);
      if (v23)
      {
        if (v33 != 2)
        {
          v34 = v33 == 1 && *(v31 + v30 - 1) == 2;
          v36 = (*(a1 + 152) + 48 * v30);
          v37 = *v36;
          v38 = v36[16] & 0xC0;
LABEL_35:
          v35 = 0;
          v42 = *(a1 + 80);
          v39 = *(v42 + 32) + v26;
          v40 = v27 * *(v42 + 136);
          v41 = v12;
          goto LABEL_36;
        }

        v35 = 2 * (*(v31 + v30 - 1) == 1);
        v36 = (*(a1 + 152) + 48 * v30);
        v37 = *v36;
        v38 = v36[16] & 0xC0;
      }

      else
      {
        v35 = 0;
        v34 = 0;
        v36 = (*(a1 + 152) + 48 * v30);
        v37 = *v36;
        v38 = v36[16] & 0xC0;
        if (v33 != 2)
        {
          goto LABEL_35;
        }
      }

      v34 = 0;
      v39 = *(*(a1 + 80) + 32) + v26 + (*(*(a1 + 80) + 136) * v148);
      v40 = (v28 << 31 >> 31) & v12;
      v41 = v22;
LABEL_36:
      if ((v38 + v37) <= 0x7F)
      {
        sub_2773AF2C4(a1, v39 + v40, v39 + v40, v23, v28, v41, v36, v32, v35 | v34);
        a5 = v25;
        v12 = v24;
      }

      ++v28;
      v27 += 16;
      if (a9 == v28)
      {
        v43 = v146;
        v44 = v142;
        while (1)
        {
          v45 = 0;
          v46 = *(a1 + 12);
          v47 = v23 + v46 * v44;
          v48 = *(a1 + 144);
          v49 = *(v48 + v47);
          if (v44 && v49 == 1)
          {
            v45 = *(v48 + v47 - v46) == 2;
          }

          if (v23)
          {
            if (v49 == 1)
            {
              v50 = *(v48 + v47 - 1) == 2;
              v51 = *(a1 + 152);
LABEL_52:
              v53 = (v51 + 48 * v47);
              v54 = *v53;
              v55 = v53[16] & 0xC0;
LABEL_53:
              v52 = 0;
              v59 = *(a1 + 80);
              v56 = *(v59 + 40) + v26;
              v57 = v43 * *(v59 + 152);
              v58 = a5;
              goto LABEL_54;
            }

            v51 = *(a1 + 152);
            if (v49 != 2)
            {
              v50 = 0;
              goto LABEL_52;
            }

            v52 = 2 * (*(v48 + v47 - 1) == 1);
            v53 = (v51 + 48 * v47);
            v54 = *v53;
            v55 = v53[16] & 0xC0;
          }

          else
          {
            v52 = 0;
            v50 = 0;
            v53 = (*(a1 + 152) + 48 * v47);
            v54 = *v53;
            v55 = v53[16] & 0xC0;
            if (v49 != 2)
            {
              goto LABEL_53;
            }
          }

          v50 = 0;
          v56 = *(*(a1 + 80) + 40) + v26 + (v146 * *(*(a1 + 80) + 152));
          v57 = (v44 << 31 >> 31) & a5;
          v58 = v144;
LABEL_54:
          if ((v54 + v55) <= 0x7F)
          {
            sub_2773B015C(a1, v56 + v57, v56 + v57, v23, v44, v58, v53, v45, v50 | v52);
            a5 = v25;
            v12 = v24;
          }

          ++v44;
          v43 += 8;
          if (a9 == v44)
          {
            goto LABEL_57;
          }
        }
      }
    }
  }

LABEL_58:
  if (a8 < a9)
  {
    v60 = v132 + 32 * a6;
    v61 = v60 - 4 * v135;
    v62 = (a12 - 1);
    v63 = 16 * a6;
    v64 = 16 * v12;
    v65 = 4 * v12;
    v66 = 8 * a5;
    v67 = 16 * v135;
    v147 = v135;
    if (a12 == 1)
    {
      v68 = 8;
    }

    else
    {
      v68 = 6;
    }

    v69 = a5;
    v149 = v60 - 4 * v135;
    v130 = v60 + v135;
    v131 = v132 + 32 * a6;
    v70 = (v64 * v62);
    v71 = 2 * v135;
    v72 = a5;
    v73 = v139 - v144;
    v74 = 8 * v72 * a8;
    v75 = a8;
    v145 = v138 + v12 - v65;
    v76 = 16 * v12 * a8;
    v141 = v61 + (v67 * v62);
    v143 = v138 - v65;
    v134 = v138 + v70 + v12 - v65;
    v136 = v141 + v135;
    v133 = v138 + v70 - v65;
    v129 = v138 + v12;
    do
    {
      if (!v75 || v75 == v62)
      {
        if (v75)
        {
          if (v75 == v62 && v15 <= v151)
          {
            v94 = 0;
            v95 = v133;
            v96 = v134;
            v98 = v136;
            v97 = v73 + (v66 * v62);
            v99 = v141;
            do
            {
              if (v150 >= 1)
              {
                v100 = 0;
                v101 = v95;
                v102 = v96;
                v103 = v97;
                v104 = v150 + 1;
                do
                {
                  v105 = (v98 + v100);
                  v106 = *(v101 + v63);
                  v107 = *(v103 + v63);
                  v108 = *(v102 + v63);
                  v109 = (v99 + v100);
                  v110 = *(v103 + v63);
                  vst2_s8(v109, *(&v106 - 8));
                  v109 += 16;
                  *v109 = vzip2q_s8(v107, v106);
                  vst2_s8(v105, v107);
                  v105 += 16;
                  --v104;
                  v100 += 32;
                  *v105 = vzip2q_s8(v107, v108);
                  v103 += 16;
                  v102 += 16;
                  v101 += 16;
                }

                while (v104 > 1);
              }

              v15 += 2;
              if (v94 > 8)
              {
                break;
              }

              v99 += v71;
              v98 += v71;
              ++v94;
              v97 += v69;
              v96 += v22;
              v95 += v22;
            }

            while (v15 <= v151);
          }
        }

        else if (v15 <= v151)
        {
          v111 = 0;
          v112 = v138;
          v113 = v139;
          v114 = v129;
          v115 = v130;
          v116 = v131;
          do
          {
            if (v150 >= 1)
            {
              v117 = 0;
              v118 = v112;
              v119 = v114;
              v120 = v113;
              v121 = v150 + 1;
              do
              {
                v122 = (v115 + v117);
                v123 = *(v118 + v63);
                v124 = *(v120 + v63);
                v125 = *(v119 + v63);
                v126 = (v116 + v117);
                v127 = *(v120 + v63);
                vst2_s8(v126, *(&v123 - 8));
                v126 += 16;
                *v126 = vzip2q_s8(v124, v123);
                vst2_s8(v122, v124);
                v122 += 16;
                --v121;
                v117 += 32;
                *v122 = vzip2q_s8(v124, v125);
                v120 += 16;
                v119 += 16;
                v118 += 16;
              }

              while (v121 > 1);
            }

            ++v111;
            v15 += 2;
            if (v111 >= v68)
            {
              break;
            }

            v116 += v71;
            v115 += v71;
            v113 += v69;
            v114 += v22;
            v112 += v22;
          }

          while (v15 <= v151);
        }
      }

      else if (v15 <= v151)
      {
        v77 = 0;
        v78 = v73 + v74;
        v79 = v145 + v76;
        v80 = v143 + v76;
        v81 = v149 + (v67 * v75);
        v82 = v81 + v147;
        do
        {
          if (v150 >= 1)
          {
            v83 = 0;
            v84 = v80;
            v85 = v79;
            v86 = v78;
            v87 = v150 + 1;
            do
            {
              v88 = (v82 + v83);
              v89 = *(v84 + v63);
              v90 = *(v86 + v63);
              v91 = *(v85 + v63);
              v92 = (v81 + v83);
              v93 = *(v86 + v63);
              vst2_s8(v92, *(&v89 - 8));
              v92 += 16;
              *v92 = vzip2q_s8(v90, v89);
              vst2_s8(v88, v90);
              v88 += 16;
              --v87;
              v83 += 32;
              *v88 = vzip2q_s8(v90, v91);
              v86 += 16;
              v85 += 16;
              v84 += 16;
            }

            while (v87 > 1);
          }

          v15 += 2;
          if (v77 > 6)
          {
            break;
          }

          v81 += v71;
          v82 += v71;
          ++v77;
          v78 += v69;
          v79 += v22;
          v80 += v22;
        }

        while (v15 <= v151);
      }

      ++v75;
      v74 += v66;
      v76 += v64;
    }

    while (v75 != a9);
  }

  return 0;
}

uint64_t sub_27736F818(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, char a6, _DWORD *a7, __n128 a8, double a9, double a10, double a11, double a12, double a13, double a14, __n128 a15)
{
  v143 = *MEMORY[0x277D85DE8];
  v18 = *(a1 + 80);
  v19 = *(v18 + 136);
  v20 = *(v18 + 152);
  v21 = *(v18 + 100) + 15;
  v22 = *(v18 + 32);
  v134 = *(v18 + 40);
  v136 = v20;
  v137 = *(a1 + 232) + (4 * v19);
  v138 = v137 + (16 * v19) + (2 * v20);
  v23 = *(a1 + 176);
  v24 = *(a1 + 184);
  v25 = 16 * a4 - 4;
  if (!a4)
  {
    v25 = 0;
  }

  if (*v18 && *(v18 + 3))
  {
    v26 = (v21 & 0xFFFFFFF0) + ~(2 * *(a1 + 208));
    v27 = *(v18 + 5);
    v28 = *(a1 + 232) + (4 * v19);
    v29 = v134;
    v30 = v137 + (16 * v19) + (2 * v20);
    if (v27)
    {
      v23 += v24;
      v30 = v138 + v20;
      v29 = v134 + v20;
    }

    v134 = v29;
    if (v27)
    {
      v28 = v137 + v19;
    }

    v137 = v28;
    v138 = v30;
    if (v27)
    {
      v22 += v19;
    }

    v19 = (2 * v19);
    v24 *= 2;
    v136 = (2 * v20);
  }

  else
  {
    v26 = (v21 & 0xFFFFFFF0) + (2 * *(a1 + 212) - 4) * *(a1 + 208) - 1;
  }

  v31 = v26 - v25;
  if (v26 < v25)
  {
    return 4294958327;
  }

  v33 = *(a1 + 226);
  v34 = *(a1 + 225);
  if (!(a4 | a2))
  {
    v35 = sub_2772BF1AC;
    if (!*(a1 + 226))
    {
      v35 = sub_2772BFD7C;
    }

    *(a1 + 256) = v35;
  }

  v141 = -1;
  if (a4 >= a5)
  {
    return 0;
  }

  v102 = v33;
  v36 = v19;
  v37 = v21 >> 4;
  v38 = a2 - 1;
  if (!a2)
  {
    v38 = 0;
  }

  v39 = 16 * v38;
  v40 = (4 * v19);
  v41 = (2 * v136);
  if (v31 >= 7)
  {
    v42 = 7;
  }

  else
  {
    v42 = v31;
  }

  if (v31 >= 9)
  {
    v43 = 9;
  }

  else
  {
    v43 = v31;
  }

  v45 = v37 - 1;
  v44 = v37 == 1;
  v46 = 2 * v42;
  v47 = 2 * v43;
  if (v44)
  {
    v48 = 8;
  }

  else
  {
    v48 = 6;
  }

  if (v48 < v31)
  {
    v31 = v48;
  }

  v101 = 2 * v31;
  v121 = 16 * (a3 - a2);
  v49 = 16 * a2;
  v126 = 16 * v19;
  v116 = v137 - v40 + v49;
  v117 = v137 + v39;
  v115 = v116 + (16 * v19);
  v125 = 8 * v136;
  v114 = v138 - v41 + v49;
  v113 = v137 + v39 - v40;
  v104 = a2;
  v112 = v138 + v39;
  v111 = v138 + v39 - v41;
  v100 = v46 + 2;
  v99 = v47 + 2;
  v50 = a4;
  v110 = v22 + v39;
  v109 = v134 + v39;
  v93 = v23;
  v122 = 32 * v38;
  v123 = a5;
  v118 = v45;
  v119 = v23 + v122;
  v130 = 16 * v19 * a4;
  v128 = 16 * (a2 + v19 * a4);
  v98 = 16 * v45 - 4;
  v97 = v23 + v122 + v98 * v24;
  v96 = 8 * v45 - 2;
  v103 = 16 * a2;
  v135 = a3;
  v129 = 8 * v136 * a4;
  v127 = v129 + 16 * a2;
  v107 = v22;
  v108 = a2;
  v133 = v19;
  v106 = v24;
  v105 = v34;
  v124 = a3 - a2;
  v120 = a2 - a3;
  while (1)
  {
    v51 = (*(a1 + 152) + 48 * (a2 + *(a1 + 12) * v50));
    v139 = v50;
    if (!v34)
    {
      break;
    }

    if (a2 >= a3)
    {
      goto LABEL_59;
    }

    v52 = v22 + v130;
    v131 = v134 + (v125 * v50);
    v132 = v22 + (v126 * v50);
    v53 = v103;
    v54 = v104;
    v55 = v138;
    do
    {
      if (*(a1 + 264) >= *(*(a1 + 112) + (v54 + *(a1 + 12) * v50)))
      {
        v60 = v53 & 0xFFFFFFF0;
        v61 = 17;
        v62 = v60;
        do
        {
          *(v137 + v62) = *(v52 + v62);
          v62 += v36;
          --v61;
        }

        while (v61 > 1);
        for (i = 9; i > 1; --i)
        {
          a8 = *(v134 + v129 + v60);
          *(v55 + v60) = a8;
          v60 += v136;
        }
      }

      else
      {
        v56 = a3;
        v57 = 16 * (v54 & 0xFFFFFFF);
        sub_27736CF80(a1, (v132 + v57), (v137 + v57), v54, v50, v133, v51, v142, a8.n128_f64[0], a9, a10, a11, a12, a13, a14, a15);
        v58 = (v131 + v57);
        v59 = (v138 + v57);
        a3 = v56;
        v55 = v138;
        result = sub_27736E204(a1, v58, v59, v136, v54, v139, v51, v140);
        v50 = v139;
        if (result)
        {
          return result;
        }
      }

      v51 += 3;
      ++v54;
      v53 += 16;
    }

    while (v54 != v135);
LABEL_58:
    v22 = v107;
    a2 = v108;
    v19 = v133;
    v24 = v106;
    v34 = v105;
    if (v105)
    {
LABEL_59:
      v71 = v112;
      v70 = v113;
      v72 = v111;
      v73 = v117;
      if (!v50)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

LABEL_61:
    v71 = v109;
    v73 = v110;
    if (!v50)
    {
LABEL_65:
      v77 = 0;
      v75 = *(a1 + 96);
      v76 = v75 + v122;
      v72 = v71;
      v70 = v73;
      v78 = v101;
      v79 = v119;
      v74 = v124;
      goto LABEL_67;
    }

    v70 = v110 + ((16 * v50 - 4) * v19);
    v72 = v109 + ((8 * v50 - 2) * v136);
LABEL_63:
    v74 = v124;
    if (v50 == v118)
    {
      v75 = *(a1 + 96);
      v76 = v75 + v122 + (*(a1 + 104) * v96);
      v77 = v98;
      v78 = v99;
      v79 = v97;
    }

    else
    {
      v77 = 16 * v50 - 4;
      v79 = v119 + v77 * v24;
      v75 = *(a1 + 96);
      v76 = v75 + v122 + (*(a1 + 104) * (8 * v50 - 2));
      v78 = v100;
    }

LABEL_67:
    if (*(a1 + 240))
    {
      (*(a1 + 256))(v70, v72, v121, 0, v78, v19, v136, v79, v24, *(a1 + 240));
      goto LABEL_69;
    }

    v82 = *(a1 + 88);
    if (!v102)
    {
      if (v82 == 875704438)
      {
        sub_2772BFFC4(v70, v72, v121, 0, v78, v19, v136, v79, v76, v24, *(a1 + 104));
      }

      else
      {
        sub_2772BFCC0(v70, v72, v121, 0, v78, v19, v136, v79, v24);
      }

LABEL_69:
      v80 = v139;
      v81 = v120;
      if (v34)
      {
        goto LABEL_81;
      }

      goto LABEL_93;
    }

    if (v34)
    {
      if (v82 == 875704438)
      {
        sub_2772BF520(v70, v72, v121, 0, v78, v19, v136, v79, v76, v24, *(a1 + 104), 0, a7);
      }

      else
      {
        sub_2772BF014(v70, v72, v121, 0, v78, v19, v136, v79, v24, 0, a7);
      }

      v80 = v139;
      v81 = v120;
LABEL_81:
      v83 = 4;
      v85 = v115;
      v84 = v116;
      do
      {
        if (v74)
        {
          v86 = 0;
          v87 = v81;
          do
          {
            a8 = *(v85 + v86);
            *(v84 + v86) = a8;
            v86 += 16;
            v64 = __CFADD__(v87++, 1);
          }

          while (!v64);
        }

        v85 += v36;
        v84 += v36;
        v64 = v83-- != 0;
      }

      while (v83 != 0 && v64);
      v88 = 2;
      v90 = v114 + (8 * v136);
      v89 = v114;
      do
      {
        if (v74)
        {
          v91 = 0;
          v92 = v81;
          do
          {
            a8 = *(v90 + v91);
            *(v89 + v91) = a8;
            v91 += 16;
            v64 = __CFADD__(v92++, 1);
          }

          while (!v64);
        }

        v90 += v136;
        v89 += v136;
        v64 = v88-- != 0;
      }

      while (v88 != 0 && v64);
      goto LABEL_93;
    }

    if (v82 == 875704438)
    {
      sub_2772BF520(v22, v134, v121, v77, v77 + v78, v19, v136, v93, v75, v24, *(a1 + 104), a6, a7);
    }

    else
    {
      sub_2772BF014(v22, v134, v121, v77, v77 + v78, v19, v136, v93, v24, a6, a7);
    }

    v80 = v139;
LABEL_93:
    v50 = v80 + 1;
    v130 += v126;
    v129 += v125;
    v128 += v126;
    v127 += v125;
    if (v50 == v123)
    {
      return 0;
    }
  }

  if (*(*(a1 + 80) + 3))
  {
    v64 = a2 >= a3;
  }

  else
  {
    v64 = 1;
  }

  if (v64)
  {
    goto LABEL_61;
  }

  v65 = v128;
  v66 = a2;
  do
  {
    if ((v51[1].i8[0] & 0xC0) + v51->u8[0] <= 0x7F)
    {
      sub_27736CF80(a1, (v22 + v65), (v22 + v65), v66, v50, v19, v51, v142, a8.n128_f64[0], a9, a10, a11, a12, a13, a14, a15);
      v50 = v139;
    }

    v51 += 3;
    ++v66;
    v65 += 16;
  }

  while (a3 != v66);
  v67 = (*(a1 + 152) + 48 * (a2 + *(a1 + 12) * v50));
  v68 = v127;
  v69 = a2;
  while (1)
  {
    if ((v67[1].i8[0] & 0xC0) + v67->u8[0] <= 0x7F)
    {
      result = sub_27736E204(a1, (v134 + v68), (v134 + v68), v136, v69, v139, v67, v140);
      v50 = v139;
      if (result)
      {
        return result;
      }
    }

    v67 += 3;
    ++v69;
    v68 += 16;
    if (a3 == v69)
    {
      goto LABEL_58;
    }
  }
}

uint64_t sub_2773700E4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v6 = a2;
  v7 = *(a1 + 80);
  v8 = *(v7 + 100) + 15;
  v9 = *(v7 + 136);
  v10 = *(a1 + 232) + 4 * v9;
  v11 = *(v7 + 32);
  v87 = *(v7 + 40);
  v91 = *(v7 + 152);
  v92 = v9;
  v12 = v10 + 16 * v9 + (2 * v91);
  v13 = 16 * a4 - 4;
  if (!a4)
  {
    v13 = 0;
  }

  if (*v7 && *(v7 + 3))
  {
    v14 = (v8 & 0xFFFFFFF0) + ~(2 * *(a1 + 208));
    v15 = *(v7 + 5);
    v16 = v87;
    if (v15)
    {
      v12 += v91;
      v16 = v87 + v91;
    }

    v87 = v16;
    if (v15)
    {
      v10 += v92;
      v11 += v92;
    }

    LODWORD(v91) = 2 * v91;
    LODWORD(v92) = 2 * v92;
  }

  else
  {
    v14 = (v8 & 0xFFFFFFF0) + (2 * *(a1 + 212) - 4) * *(a1 + 208) - 1;
  }

  v17 = *(a1 + 225);
  if (!(a4 | a2))
  {
    if (*(a1 + 226))
    {
      v18 = sub_27738FB84;
    }

    else
    {
      v18 = sub_27739031C;
    }

    v19 = sub_27738FDB8;
    if (!*(a1 + 226))
    {
      v19 = sub_27739067C;
    }

    *(a1 + 248) = v18;
    *(a1 + 256) = v19;
  }

  if (a4 < a5)
  {
    v20 = v8 >> 4;
    v82 = 16 * v92;
    v81 = 8 * v91;
    if (a2)
    {
      v21 = a2 - 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = (16 * v21);
    v23 = (4 * v92);
    v24 = (2 * v91);
    v25 = v14 - v13;
    if (v25 >= 7)
    {
      v26 = 7;
    }

    else
    {
      v26 = v25;
    }

    v78 = v21;
    if (v25 >= 9)
    {
      v27 = 9;
    }

    else
    {
      v27 = v25;
    }

    v28 = 2 * v26;
    v30 = v20 - 1;
    v29 = v20 == 1;
    v31 = 2 * v27;
    if (v29)
    {
      v32 = 8;
    }

    else
    {
      v32 = 6;
    }

    if (v32 < v25)
    {
      v25 = v32;
    }

    v79 = 2 * v25;
    v77 = v30;
    v76 = v10 + v22;
    v75 = v10 + v22 - v23;
    v74 = v12 + v22;
    v73 = v12 + v22 - v24;
    v63 = 16 * a2;
    v86 = 16 * v92 * a4;
    v65 = v11 + v22;
    v64 = v87 + v22;
    v71 = v31 + 2;
    v72 = v28 + 2;
    __dst = (v10 - v23);
    v69 = (v12 - v24);
    v62 = a2;
    v33 = a4;
    v80 = a5;
    v84 = 16 * (a2 + v92 * a4);
    v93 = a3;
    v85 = 8 * v91 * a4;
    v83 = v85 + 16 * a2;
    v94 = a1;
    v67 = v11;
    v66 = v17;
    v88 = a3;
    do
    {
      v34 = *(a1 + 12);
      v35 = (*(a1 + 152) + 48 * (v6 + v34 * v33));
      v95 = v33;
      if (v17)
      {
        if (v6 >= a3)
        {
          v36 = a3 - (v34 != a3);
LABEL_60:
          v55 = v75;
          v54 = v76;
          v57 = v73;
          v56 = v74;
          v58 = v79;
          if (v33)
          {
            goto LABEL_64;
          }

          goto LABEL_68;
        }

        v38 = v11;
        v39 = v11 + v86;
        v89 = v87 + (v81 * v33);
        v90 = v38 + (v82 * v33);
        v41 = v62;
        v40 = v63;
        do
        {
          if (*(a1 + 264) >= *(*(a1 + 112) + (v41 + *(a1 + 12) * v33)))
          {
            v45 = v40 & 0xFFFFFFF0;
            v46 = 17;
            v47 = v45;
            do
            {
              *(v10 + v47) = *(v39 + v47);
              v47 += v92;
              --v46;
            }

            while (v46 > 1);
            for (i = 9; i > 1; --i)
            {
              *(v12 + v45) = *(v87 + v85 + v45);
              v45 += v91;
            }
          }

          else
          {
            v42 = 16 * (v41 & 0xFFFFFFF);
            sub_2773AF2C4(a1, v90 + v42, v10 + v42, v41, v33, v92, v35, 0, 0);
            v43 = v89 + v42;
            v44 = v12 + v42;
            a3 = v88;
            sub_2773B015C(v94, v43, v44, v41, v95, v91, v35, 0, 0);
            a1 = v94;
            v33 = v95;
          }

          v35 += 48;
          ++v41;
          v40 += 16;
        }

        while (v41 != v93);
      }

      else
      {
        if (*(*(a1 + 80) + 3))
        {
          v37 = v6 >= a3;
        }

        else
        {
          v37 = 1;
        }

        if (v37)
        {
          v36 = a3 - (v34 != a3);
          goto LABEL_62;
        }

        v49 = v84;
        v50 = v6;
        do
        {
          if ((v35[16] & 0xC0) + *v35 <= 0x7F)
          {
            sub_2773AF2C4(a1, v11 + v49, v11 + v49, v50, v33, v92, v35, 0, 0);
            a1 = v94;
            v33 = v95;
          }

          v35 += 48;
          v50 = (v50 + 1);
          v49 += 16;
        }

        while (a3 != v50);
        v51 = (*(a1 + 152) + 48 * (v6 + *(a1 + 12) * v33));
        v52 = v83;
        v53 = v6;
        do
        {
          if ((v51[16] & 0xC0) + *v51 <= 0x7F)
          {
            sub_2773B015C(a1, v87 + v52, v87 + v52, v53, v33, v91, v51, 0, 0);
            a1 = v94;
            v33 = v95;
          }

          v51 += 48;
          ++v53;
          v52 += 16;
        }

        while (a3 != v53);
      }

      v36 = a3 - (*(a1 + 12) != a3);
      v11 = v67;
      v6 = a2;
      v17 = v66;
      if (v66)
      {
        goto LABEL_60;
      }

LABEL_62:
      if (v33)
      {
        v55 = v65 + ((16 * v33 - 4) * v92);
        v57 = v64 + ((8 * v33 - 2) * v91);
LABEL_64:
        if (v33 == v77)
        {
          v58 = v71;
        }

        else
        {
          v58 = v72;
        }

        v56 = v57;
        v54 = v55;
        goto LABEL_68;
      }

      v56 = v64;
      v54 = v65;
      v58 = v79;
LABEL_68:
      if (v58 >= 1)
      {
        v59 = 16 * (v36 - v78);
        if (v94[30])
        {
          v60 = v94[32];
        }

        else
        {
          v60 = v94[31];
        }

        v60(v54, v56, v59, 0);
        v33 = v95;
      }

      if (v17)
      {
        memcpy(__dst, (v10 + (12 * v92)), (4 * v92));
        memcpy(v69, (v12 + (6 * v91)), (2 * v91));
        v33 = v95;
      }

      ++v33;
      v86 += v82;
      v85 += v81;
      v83 += v81;
      v84 += v82;
      a1 = v94;
    }

    while (v33 != v80);
  }

  return 0;
}

uint64_t sub_277370774(uint64_t a1, unsigned int a2, char a3, char a4, char a5, char a6)
{
  if (*(a1 + 20) < a2)
  {
    return 4294958327;
  }

  sub_2773B1C78(*(a1 + 64));
  if (*(a1 + 56) >= a2 + 1)
  {
    v15 = *(a1 + 48);
  }

  else
  {
    if (2 * (a2 + 1) >= *(a1 + 20))
    {
      v13 = *(a1 + 20);
    }

    else
    {
      v13 = 2 * (a2 + 1);
    }

    v14 = sub_277395300((12 * v13));
    v15 = v14;
    if (*(a1 + 56))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = (*(a1 + 48) + v16);
        v19 = &v14[v16];
        v20 = *v18;
        *(v19 + 2) = *(v18 + 2);
        *v19 = v20;
        ++v17;
        v16 += 12;
      }

      while (v17 < *(a1 + 56));
    }

    j__free(*(a1 + 48));
    *(a1 + 48) = v15;
    *(a1 + 56) = v13;
  }

  v15[12 * a2 + 9] = a4;
  *(*(a1 + 48) + 12 * a2 + 10) = 2 * a5;
  *(*(a1 + 48) + 12 * a2 + 11) = 2 * a6;
  *(*(a1 + 48) + 12 * a2 + 8) = a3;
  sub_2773B1C84(*(a1 + 64));
  return 0;
}

uint64_t sub_2773708AC(uint64_t result, int a2, int a3, _BYTE *a4)
{
  v4 = a4[12] != 0;
  v5 = a4[2] != 0;
  v6 = 4 * (a4[3] != 0);
  v7 = a4[5] != 0;
  v8 = a4[6] != 0;
  v9 = a4[9] != 0;
  v10 = a4[10] != 0;
  v11 = v6 | (8 * (a4[1] != 0)) | (2 * v9) | (16 * (v10 | (4 * (v5 | (2 * (*a4 != 0)))) | (2 * (a4[8] != 0))));
  v12 = a4[7];
  v13 = v6 | (8 * v5) | (2 * v8) | (16 * (v7 | (4 * ((a4[1] != 0) | (2 * (*a4 != 0)))) | (2 * (a4[4] != 0))));
  v14 = a4[13] != 0;
  v15 = v8 | (2 * (a4[4] != 0));
  v16 = a4[14] != 0;
  v17 = v9 | (2 * (a4[8] != 0));
  v18 = a4[11] != 0;
  if (a4[11])
  {
    ++v11;
  }

  v19 = v12 == 0;
  v20 = a4[15];
  v21 = (4 * (v12 != 0)) | (8 * v7);
  if (!v19)
  {
    ++v13;
  }

  v22 = v16 & 0xFD | (4 * v15) | (2 * v4);
  v23 = v14 | (4 * v17) | (2 * v4);
  v24 = v21 | (2 * v14) | (16 * v22);
  if (v20)
  {
    ++v24;
  }

  v25 = (4 * v18) | (8 * v10) | (2 * v16) | (16 * v23);
  v26 = (*(result + 32) + 4 * (a2 + *(result + 12) * a3));
  *v26 = v11;
  v26[1] = v24;
  if (v20)
  {
    ++v25;
  }

  v26[2] = v13;
  v26[3] = v25;
  return result;
}

double sub_277370A08(uint64_t a1, int a2, int a3, int8x16_t *a4)
{
  v4 = vqtbl1q_s8(vqtbl1q_s8(vcgtzq_s8(*a4), xmmword_2773B55C0), xmmword_2773B55D0);
  v5 = vsraq_n_u16(vshlq_n_s16(v4, 8uLL), v4, 8uLL);
  v6 = vandq_s8(vcltzq_s8(v5), xmmword_2773B5400);
  v7 = vpaddq_s8(v6, v6);
  v8 = vpaddq_s8(v7, v7);
  v9 = vpaddq_s8(v8, v8).u16[0];
  v10 = vzip1q_s8(vdupq_laneq_s64(v5, 1), v5);
  v11 = vandq_s8(vcltzq_s8(vqtbl1q_s8(vzip1q_s8(v10, vdupq_laneq_s64(v10, 1)), xmmword_2773B4400)), xmmword_2773B5400);
  v12 = vpaddq_s8(v11, v11);
  v13 = vpaddq_s8(v12, v12);
  *&result = vpaddq_s8(v13, v13).u64[0];
  *(*(a1 + 32) + 4 * (a2 + *(a1 + 12) * a3)) = LOWORD(result) | (v9 << 16);
  return result;
}

uint64_t *sub_277370A9C(uint64_t *result, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int32x4_t a7, int32x4_t a8, int32x4_t a9)
{
  v9 = *(result + 225);
  v141 = result;
  v10 = *(result + 47);
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 4;
  }

  v152 = v11;
  if (v10)
  {
    v12 = 50529027;
  }

  else
  {
    v12 = 67372036;
  }

  v126 = v12;
  if (a5 < a6)
  {
    a7.i32[0] = 0;
    a8.i32[0] = 0;
    a9.i32[0] = *(result + 47);
    v140 = &unk_2773BA2C8 + dword_280A71168;
    v13 = *(result + 3);
    v14 = 4 * v13;
    v15 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a9, a7), 0), xmmword_2773B5620, xmmword_2773B5610);
    result = result[6];
    v16 = *v141;
    v17 = v13 * a5 + a3;
    v18 = v141[19] + 48 * v17;
    v19 = (*(a2 + 104) + 8 * v17);
    v20 = (v141[4] + 4 * v17);
    v21 = v141[9] + 2 * v17;
    if (a5)
    {
      v22 = v13;
    }

    else
    {
      v22 = 0;
    }

    v23 = vceqq_s32(a9, a8).u64[0];
    if (a5)
    {
      v24 = v12;
    }

    else
    {
      v24 = 538976288;
    }

    v25 = v21;
    v130 = v24;
    if (a3)
    {
      v26 = -1;
    }

    else
    {
      v26 = 0;
    }

    v121 = v26;
    v27 = a2 + 32;
    v28 = a2 + 64;
    v29 = xmmword_2773B5630;
    v120 = -v13;
    v30 = vbslq_s8(vdupq_lane_s32(v23, 0), xmmword_2773B5640, xmmword_2773B5630);
    a5 = a5;
    v125 = a6;
    v31 = a4;
    v32 = 16 * v13 * a5 + 4 * a3;
    v129 = v13;
    v124 = 16 * v13;
    v33 = xmmword_2773B5400;
    v34 = xmmword_2773B4450;
    v35 = xmmword_2773B5660;
    v136 = v9;
    v151 = 4 * v13;
    v150 = v15;
    v135 = result;
    v149 = *v141;
    v133 = v28;
    v134 = v27;
    v148 = v30;
    do
    {
      v131 = v32;
      if (a3 < a4)
      {
        v137 = 4 * a5;
        v123 = v129 * a5 - 1;
        v122 = (a5 - 1) * v129;
        v37 = a3;
        v36 = v121;
        v38 = -v22;
        v138 = v38;
        v139 = a5;
        do
        {
          v39 = *v25;
          v40 = result + 12 * *v25;
          v41 = *(v40 + 9);
          if (v41 == 1)
          {
            *v18 = 0x80;
          }

          else
          {
            v42 = *v19;
            v44 = v27 <= *v19 && v42 <= v28;
            if (!(v9 | v44))
            {
              v34.i32[0] = 0;
              v45 = v25[v36];
              v146 = v25;
              v145 = v25[v38];
              v29.i8[0] = *(v141[17] + (v37 + *(v141 + 3) * a5));
              v46 = vdupq_lane_s8(*&vceqq_s8(v29, v34), 0);
              v29 = xmmword_2773B5650;
              v47.i64[0] = 0x202020202020202;
              v47.i64[1] = 0x202020202020202;
              v34 = vbslq_s8(v46, v47, xmmword_2773B5650);
              *v18 = v34;
              *(v18 + 16) = v34;
              v48 = *v20;
              v157 = *(v141[17] + (v37 + *(v141 + 3) * a5));
              if (*(v141[17] + (v37 + *(v141 + 3) * a5)))
              {
                v34 = vbicq_s8(xmmword_2773B55F0, vceqzq_s32(vandq_s8(vdupq_n_s32(v48), xmmword_2773B55E0)));
                v29 = vextq_s8(v34, v34, 8uLL);
                *v34.i8 = vorr_s8(*v34.i8, *v29.i8);
                v48 |= v34.i32[0] | v34.i32[1];
              }

              v49 = v140[*(v40 + 8)];
              v50 = *(v42 + 10);
              v51 = v19[v36];
              v52 = (v48 >> 4) & 0xFFF0FFF | v48;
              if (v52)
              {
                v53 = ((v48 >> 4) & 0xFFF0000 | v48 & 0xFFF0000) == 268369920;
                if (((v48 >> 4) & 0xFFF0000 | v48 & 0xFFF0000) == 0xFFF0000)
                {
                  v54 = 1;
                }

                else
                {
                  v54 = 4;
                }
              }

              else
              {
                v53 = 0;
                if ((v50 & 0xFFFFFFFD) == 0x100)
                {
                  v34 = xmmword_2773B5600;
                  *v18 = xmmword_2773B5600;
                  v54 = 1;
                }

                else
                {
                  v54 = 4;
                }
              }

              v155 = v49;
              v156 = v54;
              v154 = (v18 + 16);
              v153 = 4 * v37;
              v55 = v41 != 2 || v45 == v39;
              v147 = v41;
              if (!v55)
              {
LABEL_57:
                v56 = 0;
                v160 = 0;
                *v18 = 32;
                goto LABEL_58;
              }

              if (v27 <= v51 && v51 <= v28)
              {
                v160 = 0;
                *v18 = 67372036;
                v56 = 1;
LABEL_58:
                v63 = (v48 >> 4) & 0xFFF0FFF | v48;
                v64 = v18;
                goto LABEL_59;
              }

              if (!v153)
              {
                goto LABEL_57;
              }

              v57 = *(v20 - 1);
              if ((v57 & 0xCC0000) != 0)
              {
                v58 = 13382400;
              }

              else
              {
                v58 = 0;
              }

              if ((v57 & 0x330000) != 0)
              {
                v59 = 3342387;
              }

              else
              {
                v59 = 0;
              }

              v60 = v59 | v58 | v57;
              if (*(v141[17] + (v123 + v37)))
              {
                v61 = v60;
              }

              else
              {
                v61 = *(v20 - 1);
              }

              v62 = 0;
              v63 = v52 | (HIWORD(v61) << 28);
              v64 = v18;
              do
              {
                v160 = v62;
                if ((v62 & v157) != 0)
                {
                  v56 = 0;
                  *v64 = 32;
                }

                else
                {
                  v56 = 1;
                  if (v63 >> 28 != 15)
                  {
                    v132 = v39;
                    v142 = v20;
                    v69 = 0;
                    v70 = v160 + v32;
                    v71 = v63;
                    v144 = v37;
                    v158 = v63;
                    do
                    {
                      if ((v71 & 0x80000000) != 0)
                      {
                        v56 = 1;
                      }

                      else
                      {
                        v72 = *(v16 + 8 * v70);
                        v73 = *(v16 + 8 * (v70 - 1));
                        if (v72 == v73)
                        {
                          LOBYTE(v82) = 0;
                          v56 = 1;
                        }

                        else
                        {
                          v29 = *v72;
                          v34 = *v73;
                          v74 = vsubq_s16(*v72, *v73);
                          v75 = vmaxq_s16(v74, vnegq_s16(v74));
                          if ((v49 & 2) != 0)
                          {
                            v90 = vandq_s8(vcgtq_s16(vandq_s8(v75, v35), v30), v33);
                            v91 = vpaddq_s8(v90, v90);
                            v92 = vpaddq_s8(v91, v91);
                            v34 = vpaddq_s8(v92, v92);
                            v82 = v34.i16[0] != 0;
                          }

                          else
                          {
                            if (v29.u8[12] != v34.u8[12])
                            {
                              v76 = vqtbl1q_s8(v34, xmmword_2773B4450);
                              v76.i16[4] = bswap32(v76.u16[4]) >> 16;
                              v76.i16[6] = bswap32(v76.u16[6]) >> 16;
                              v77 = vsubq_s16(v29, v76);
                              v75 = vmaxq_s16(v77, vnegq_s16(v77));
                            }

                            v78 = xmmword_2773B5680[(v29.u8[8] >> 4) & 2 | ((v29.i8[9] & 0xE0) >> 5)];
                            v79 = vandq_s8(vcgtq_s16(vandq_s8(v75, v78), vandq_s8(v15, v78)), v33);
                            v80 = vpaddq_s8(v79, v79);
                            v81 = vpaddq_s8(v80, v80);
                            v29 = vpaddq_s8(v81, v81);
                            v82 = v29.i16[0] != 0;
                            if ((WORD6(*v72) >> 8) == v34.u8[12])
                            {
                              v63 = v158;
                              if (BYTE12(*v72) == v34.u8[13])
                              {
                                v83 = v18;
                                v84 = v53;
                                v85 = v32;
                                v86 = v19;
                                v87 = v50;
                                v88 = v52;
                                v89 = sub_2773AEED4(v72->i16, v73->i16, v152, 0, 0, *v34.i8, *v29.i8);
                                v63 = v158;
                                v52 = v88;
                                v50 = v87;
                                v19 = v86;
                                v32 = v85;
                                v53 = v84;
                                v18 = v83;
                                v37 = v144;
                                v49 = v155;
                                v35 = xmmword_2773B5660;
                                v33 = xmmword_2773B5400;
                                v30 = v148;
                                v16 = v149;
                                v15 = v150;
                                v14 = v151;
                                v82 = v89;
                              }
                            }

                            else
                            {
                              v63 = v158;
                            }
                          }

                          v56 = v82 | 1;
                        }

                        v64[v69] = v82;
                      }

                      v71 *= 2;
                      ++v69;
                      v70 += v14;
                    }

                    while (v69 != 4);
                    v9 = v136;
                    v27 = v134;
                    result = v135;
                    v20 = v142;
                    v31 = a4;
                    v28 = v133;
                    v38 = v138;
                    a5 = v139;
                    v39 = v132;
                  }
                }

LABEL_59:
                v53 = v53 | v56;
                *v64 |= (32 * v56) ^ 0x20;
                v64 += 4;
                v63 *= 16;
                v62 = v160 + 1;
              }

              while (v160 + 1 < v156);
              *v18 |= (v53 << 6) ^ 0x40;
              v65 = v19[v38];
              if (v52)
              {
                v66 = (v52 & 0xFFF) == 4095;
                if ((v52 & 0xFFF) == 0xFFF)
                {
                  v67 = 1;
                }

                else
                {
                  v67 = 4;
                }

                v68 = v147;
              }

              else
              {
                v68 = v147;
                v66 = 0;
                if ((v50 & 0xFFFE) == 0x100)
                {
                  v34 = xmmword_2773B5600;
                  *v154 = xmmword_2773B5600;
                  v67 = 1;
                }

                else
                {
                  v67 = 4;
                }
              }

              v93 = v52 << 16;
              if (v68 != 2 || v145 == v39)
              {
                if (v27 <= v65 && v65 <= v28)
                {
                  v95 = 0;
                  v96 = v154;
                  *v154 = v130;
                  v94 = 1;
                  goto LABEL_105;
                }

                if (v137)
                {
                  v95 = 0;
                  v97 = v20[v120];
                  if ((v97 & 0x33000000) != 0)
                  {
                    v98 = 855638220;
                  }

                  else
                  {
                    v98 = 0;
                  }

                  if ((v97 & 0x330000) != 0)
                  {
                    v99 = 3342387;
                  }

                  else
                  {
                    v99 = 0;
                  }

                  v100 = v99 | v98 | v97;
                  if (*(v141[17] + (v122 + v37)))
                  {
                    v97 = v100;
                  }

                  v93 |= v97 << 28;
                  v96 = v154;
                  goto LABEL_106;
                }
              }

              v94 = 0;
              v95 = 0;
              v96 = v154;
LABEL_104:
              *v96 = 32;
LABEL_105:
              while (1)
              {
                v66 |= v94;
                *v96 |= (32 * v94) ^ 0x20;
                v96 += 4;
                v93 *= 16;
                if (++v95 >= v67)
                {
                  break;
                }

LABEL_106:
                if ((v95 & v157) != 0)
                {
                  v94 = 0;
                  goto LABEL_104;
                }

                v94 = 1;
                if (v93 >> 28 != 15)
                {
                  v161 = v67;
                  v143 = v20;
                  v101 = 0;
                  v102 = (v95 + v137) * v14;
                  v159 = v93;
                  v103 = v153;
                  do
                  {
                    if ((v93 & 0x80000000) != 0)
                    {
                      v94 = 1;
                    }

                    else
                    {
                      v104 = (v103 | v101) + v102;
                      v105 = *(v16 + 8 * v104);
                      v106 = *(v16 + 8 * (v104 - v14));
                      if (v105 == v106)
                      {
                        v115 = 0;
                        v94 = 1;
                      }

                      else
                      {
                        v29 = *v105;
                        v34 = *v106;
                        v107 = vsubq_s16(*v105, *v106);
                        v108 = vmaxq_s16(v107, vnegq_s16(v107));
                        if ((v49 & 2) != 0)
                        {
                          v117 = vandq_s8(vcgtq_s16(vandq_s8(v108, v35), v30), v33);
                          v118 = vpaddq_s8(v117, v117);
                          v119 = vpaddq_s8(v118, v118);
                          v34 = vpaddq_s8(v119, v119);
                          v115 = v34.i16[0] != 0;
                        }

                        else
                        {
                          if (v29.u8[12] != v34.u8[12])
                          {
                            v109 = vqtbl1q_s8(v34, xmmword_2773B4450);
                            v109.i16[4] = bswap32(v109.u16[4]) >> 16;
                            v109.i16[6] = bswap32(v109.u16[6]) >> 16;
                            v110 = vsubq_s16(v29, v109);
                            v108 = vmaxq_s16(v110, vnegq_s16(v110));
                          }

                          v111 = xmmword_2773B5680[(v29.u8[8] >> 4) & 2 | ((v29.i8[9] & 0xE0) >> 5)];
                          v112 = vandq_s8(vcgtq_s16(vandq_s8(v108, v111), vandq_s8(v15, v111)), v33);
                          v113 = vpaddq_s8(v112, v112);
                          v114 = vpaddq_s8(v113, v113);
                          v29 = vpaddq_s8(v114, v114);
                          v115 = v29.i16[0] != 0;
                          if ((WORD6(*v105) >> 8) == v34.u8[12] && BYTE12(*v105) == v34.u8[13])
                          {
                            v116 = sub_2773AEED4(v105->i16, v106->i16, v152, 0, 0, *v34.i8, *v29.i8);
                            v103 = v153;
                            v49 = v155;
                            v35 = xmmword_2773B5660;
                            v33 = xmmword_2773B5400;
                            v30 = v148;
                            v16 = v149;
                            v15 = v150;
                            v14 = v151;
                            v115 = v116;
                          }
                        }

                        v94 = v115 | 1;
                      }

                      v96[v101] = v115;
                    }

                    v93 *= 2;
                    ++v101;
                  }

                  while (v101 != 4);
                  v9 = v136;
                  v27 = v134;
                  result = v135;
                  v20 = v143;
                  v31 = a4;
                  v28 = v133;
                  v38 = v138;
                  a5 = v139;
                  v93 = v159;
                  v67 = v161;
                }
              }

              *v154 |= (v66 << 6) ^ 0x40;
              v25 = v146;
            }
          }

          ++v25;
          ++v20;
          ++v19;
          v18 += 48;
          ++v37;
          v32 = (v32 + 4);
          v36 = -1;
        }

        while (v37 != v31);
      }

      ++a5;
      v32 = (v131 + v124);
      v22 = v129;
      v130 = v126;
    }

    while (a5 != v125);
  }

  return result;
}

uint64_t sub_2773714C4(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, int32x4_t a7, int32x4_t a8)
{
  v8 = a1;
  v9 = *(a1 + 225);
  v10 = *(a1 + 47);
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 4;
  }

  v164 = v11;
  v12 = *(a1 + 3);
  if (v10)
  {
    v13 = 3;
  }

  else
  {
    v13 = 4;
  }

  if (a5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 32;
  }

  if (a5)
  {
    v15 = *(a1 + 3);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 5);
  v17 = *(a1 + 6);
  result = 4294958327;
  if (v16 > v17 || v12 > v16)
  {
    return result;
  }

  if (a5 >= a6)
  {
    return 0;
  }

  a7.i32[0] = 0;
  a8.i32[0] = v10;
  v19 = vdupq_lane_s32(*&vceqq_s32(a8, a7), 0);
  v154 = &unk_2773BA2C8 + dword_280A71168;
  v20 = 4 * v12;
  v21 = a3 + v12 * a5;
  v22 = (v8[9] + 2 * v21);
  v23 = (v8[4] + 4 * v21);
  v24 = vbslq_s8(v19, xmmword_2773B5620, xmmword_2773B5610);
  v25 = *(a2 + 104) + 8 * v21;
  v26 = v8[19] + 48 * v21;
  v27 = xmmword_2773B5630;
  if (a3)
  {
    v28 = 4;
  }

  else
  {
    v28 = 32;
  }

  v146 = v28;
  v29 = vbslq_s8(v19, xmmword_2773B5640, xmmword_2773B5630);
  if (a3)
  {
    v30 = -1;
  }

  else
  {
    v30 = 0;
  }

  v145 = v30;
  v31 = a2 + 32;
  v170 = a2 + 64;
  v133 = -v12;
  v155 = *v8;
  v144 = a3;
  v32 = a5;
  v153 = a6;
  v176 = a4;
  v33 = v12 * a5;
  v34 = v25;
  v35 = v8[6];
  v36 = 16 * v33 + 4 * a3;
  v152 = 16 * v12;
  v37 = xmmword_2773B5650;
  v38.i64[0] = 0x202020202020202;
  v38.i64[1] = 0x202020202020202;
  v39 = xmmword_2773B5400;
  v40 = xmmword_2773B5660;
  v41 = xmmword_2773B55E0;
  v42.i64[0] = 0x303030303030303;
  v42.i64[1] = 0x303030303030303;
  v161 = a2 + 32;
  v138 = a3;
  v139 = a4;
  v137 = v8;
  v136 = v9;
  v135 = v12;
  v134 = v13;
  v148 = v29;
  v149 = v24;
  v159 = v35;
  while (1)
  {
    v157 = v36;
    if (a3 < a4)
    {
      break;
    }

LABEL_148:
    result = 0;
    ++v32;
    v36 = v157 + v152;
    v15 = v12;
    v14 = v13;
    if (v32 == v153)
    {
      return result;
    }
  }

  v147 = 4 * v32;
  v142 = (v32 - 1) * v12;
  v143 = v12 * v32 - 1;
  v44 = v144;
  v43 = v145;
  v45 = v146;
  v171 = -v15;
  v174 = v32;
  while (1)
  {
    v41.i32[0] = 0;
    v27.i8[0] = *(v8[17] + (v44 + *(v8 + 3) * v32));
    v41 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v27, v41), 0), v38, v37);
    *(v26 + 16) = v41;
    v46 = (v26 + 16);
    *v26 = v41;
    v47 = *v22;
    if (*(v8 + 14) < v47)
    {
      return 4294958327;
    }

    v48 = v35 + 12 * *v22;
    if (*(v48 + 9) != 1)
    {
      break;
    }

    *v26 = 0x80;
LABEL_124:
    ++v22;
    ++v23;
    ++v34;
    v26 += 48;
    ++v44;
    v36 += 4;
    v45 = 4;
    v43 = -1;
    if (v44 == v176)
    {
      goto LABEL_148;
    }
  }

  v175 = *(v48 + 9);
  v49 = *v34;
  v50 = v22[v43];
  v172 = v22[v171];
  v52 = v31 <= *v34 && v49 <= v170;
  if (v9 | v52)
  {
    v41.i32[0] = 0;
    v32 = v174;
    v27.i8[0] = *(v8[17] + (v44 + *(v8 + 3) * v174));
    v53 = vdupq_lane_s8(*&vceqq_s8(v27, v41), 0);
    v27 = xmmword_2773B5670;
    v41 = vbslq_s8(v53, v42, xmmword_2773B5670);
    *v26 = v41;
    *(v26 + 16) = v41;
    *v26 = 16843009 * v45;
    *v46 = 16843009 * v14;
    if (v175 == 2)
    {
      *v26 = 16843009 * (v45 | (32 * (v50 != v47)));
      *v46 = 16843009 * (v14 | (32 * (v172 != v47)));
    }

    goto LABEL_124;
  }

  v54 = bswap32(*v23);
  v165 = *(v8[17] + (v44 + *(v8 + 3) * v174));
  if (*(v8[17] + (v44 + *(v8 + 3) * v174)))
  {
    v41 = vbicq_s8(xmmword_2773B55F0, vceqzq_s32(vandq_s8(vdupq_n_s32(v54), xmmword_2773B55E0)));
    v27 = vextq_s8(v41, v41, 8uLL);
    *v41.i8 = vorr_s8(*v41.i8, *v27.i8);
    v54 |= v41.i32[0] | v41.i32[1];
  }

  v160 = v154[*(v48 + 8)];
  v55 = *(v49 + 10);
  v56 = v34[v43];
  v57 = (v54 >> 4) & 0xFFF0FFF | v54;
  v35 = v159;
  v32 = v174;
  v58 = *(v48 + 9);
  v168 = v57;
  if (v57)
  {
    v59 = (v57 & 0xFFF0000) == 268369920;
    if ((v57 & 0xFFF0000) == 0xFFF0000)
    {
      v60 = 1;
    }

    else
    {
      v60 = 4;
    }

    v162 = v60;
    v156 = -1;
    v61 = *(v8[17] + (v44 + *(v8 + 3) * v174));
  }

  else
  {
    v61 = *(v8[17] + (v44 + *(v8 + 3) * v174));
    v59 = 0;
    if ((v55 & 0xFFFFFFFD) == 0x100)
    {
      v156 = 0;
      v41 = xmmword_2773B5600;
      *v26 = xmmword_2773B5600;
      v162 = 1;
    }

    else
    {
      v162 = 4;
      v156 = -1;
    }
  }

  v62 = v175 != 2 || v50 == v47;
  v158 = v23;
  if (v62)
  {
    v66 = v59;
    if (v31 > v56 || v56 > v170)
    {
      if (4 * v44)
      {
        v68 = bswap32(*(v23 - 1));
        if (*(v8[17] + (v143 + v44)))
        {
          if ((v68 & 0xCC0000) != 0)
          {
            v69 = 13382400;
          }

          else
          {
            v69 = 0;
          }

          if ((v68 & 0x330000) != 0)
          {
            v70 = 3342387;
          }

          else
          {
            v70 = 0;
          }

          v68 |= v70 | v69;
        }

        v64 = 0;
        v65 = v26;
        v66 = v59;
        v67 = v168 | (HIWORD(v68) << 28);
        v71 = v162;
        goto LABEL_69;
      }

      v63 = 0;
      v64 = 0;
      *v26 = 32;
      v67 = v168;
    }

    else
    {
      v64 = 0;
      *v26 = 67372036;
      v63 = 1;
      v67 = v168;
    }

    v65 = v26;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    *v26 = 32;
    v65 = v26;
    v66 = v59;
    v67 = v168;
  }

  v71 = v162;
LABEL_68:
  while (1)
  {
    v66 |= v63;
    *v65 |= (32 * v63) ^ 0x20;
    v65 += 4;
    v67 *= 16;
    if (++v64 >= v71)
    {
      break;
    }

LABEL_69:
    if ((v64 & v61) != 0)
    {
      v63 = 0;
      *v65 = 32;
    }

    else
    {
      v166 = v66;
      v63 = v156 | (v67 >> 28) | (v64 == 0);
      if (v63)
      {
        v63 = 1;
        if (v67 >> 28 != 15)
        {
          v140 = v14;
          v77 = v67;
          v78 = 0;
          v130 = v64;
          v131 = v36;
          v79 = v64 + v36;
          v129 = v77;
          v80 = v155;
          v81 = v160;
          v132 = v20;
          v150 = v34;
          while (1)
          {
            v82 = v55;
            v83 = *(v80 + 8 * v79);
            v84 = *(v80 + 8 * (v79 - 1));
            if (!v83 || v84 == 0)
            {
              return 4294958327;
            }

            if ((v77 & 0x80000000) != 0)
            {
              v63 = 1;
            }

            else
            {
              if (v83 == v84)
              {
                LOBYTE(v94) = 0;
                v63 = 1;
              }

              else
              {
                v27 = *v83;
                v41 = *v84;
                v86 = vsubq_s16(*v83, *v84);
                v87 = vmaxq_s16(v86, vnegq_s16(v86));
                if ((v81 & 2) != 0)
                {
                  v96 = vandq_s8(vcgtq_s16(vandq_s8(v87, v40), v29), v39);
                  v97 = vpaddq_s8(v96, v96);
                  v98 = vpaddq_s8(v97, v97);
                  v41 = vpaddq_s8(v98, v98);
                  v94 = v41.i16[0] != 0;
                }

                else
                {
                  if (v27.u8[12] != v41.u8[12])
                  {
                    v88 = vqtbl1q_s8(v41, xmmword_2773B4450);
                    v88.i16[4] = bswap32(v88.u16[4]) >> 16;
                    v88.i16[6] = bswap32(v88.u16[6]) >> 16;
                    v89 = vsubq_s16(v27, v88);
                    v87 = vmaxq_s16(v89, vnegq_s16(v89));
                  }

                  v90 = xmmword_2773B5680[(v27.u8[8] >> 4) & 2 | ((v27.i8[9] & 0xE0) >> 5)];
                  v91 = vandq_s8(vcgtq_s16(vandq_s8(v87, v90), vandq_s8(v24, v90)), v39);
                  v92 = vpaddq_s8(v91, v91);
                  v93 = vpaddq_s8(v92, v92);
                  v27 = vpaddq_s8(v93, v93);
                  v94 = v27.i16[0] != 0;
                  if ((WORD6(*v83) >> 8) == v41.u8[12])
                  {
                    v66 = v166;
                    if (BYTE12(*v83) == v41.u8[13])
                    {
                      v95 = sub_2773AEED4(v83->i16, v84->i16, v164, 0, 0, *v41.i8, *v27.i8);
                      v66 = v166;
                      v81 = v160;
                      v42.i64[0] = 0x303030303030303;
                      v42.i64[1] = 0x303030303030303;
                      v40 = xmmword_2773B5660;
                      v39 = xmmword_2773B5400;
                      v37 = xmmword_2773B5650;
                      v38.i64[0] = 0x202020202020202;
                      v38.i64[1] = 0x202020202020202;
                      v80 = v155;
                      v35 = v159;
                      v29 = v148;
                      v24 = v149;
                      v34 = v150;
                      v20 = v132;
                      v94 = v95;
                    }
                  }

                  else
                  {
                    v66 = v166;
                  }
                }

                v63 = v94 | 1;
              }

              v65[v78] = v94;
            }

            v55 = v82;
            v77 *= 2;
            ++v78;
            v79 += v20;
            if (v78 == 4)
            {
              a3 = v138;
              a4 = v139;
              v8 = v137;
              v9 = v136;
              LODWORD(v12) = v135;
              v13 = v134;
              v14 = v140;
              v23 = v158;
              v32 = v174;
              v61 = v165;
              v58 = v175;
              v64 = v130;
              v36 = v131;
              v71 = v162;
              v67 = v129;
              goto LABEL_68;
            }
          }
        }
      }

      else
      {
        *v65 = 32;
      }
    }
  }

  *v26 |= (v66 << 6) ^ 0x40;
  v72 = v34[v171];
  if (v168)
  {
    v73 = (v168 & 0xFFF) == 4095;
    if ((v168 & 0xFFF) == 0xFFF)
    {
      v74 = 1;
    }

    else
    {
      v74 = 4;
    }

    v75 = -1;
    v76 = v161;
  }

  else
  {
    v76 = v161;
    v73 = 0;
    if ((v55 & 0xFFFE) == 0x100)
    {
      v75 = 0;
      v41 = xmmword_2773B5600;
      *v46 = xmmword_2773B5600;
      v74 = 1;
    }

    else
    {
      v74 = 4;
      v75 = -1;
    }
  }

  v99 = v168 << 16;
  if (v58 == 2 && v172 != v47)
  {
    goto LABEL_105;
  }

  if (v76 <= v72 && v72 <= v170)
  {
    v101 = 0;
    *v46 = v14;
    *(v26 + 17) = v14;
    *(v26 + 18) = v14;
    v100 = 1;
    v102 = (v26 + 16);
    *(v26 + 19) = v14;
    goto LABEL_119;
  }

  if (!v147)
  {
LABEL_105:
    v100 = 0;
    v101 = 0;
    *v46 = 32;
    v102 = (v26 + 16);
    goto LABEL_119;
  }

  v103 = bswap32(v23[v133]);
  if (*(v8[17] + (v142 + v44)))
  {
    if ((v103 & 0x33000000) != 0)
    {
      v104 = 855638220;
    }

    else
    {
      v104 = 0;
    }

    if ((v103 & 0x330000) != 0)
    {
      v105 = 3342387;
    }

    else
    {
      v105 = 0;
    }

    v103 |= v105 | v104;
  }

  v101 = 0;
  v99 |= v103 << 28;
  v102 = (v26 + 16);
  while (2)
  {
    if ((v101 & v61) != 0)
    {
      v100 = 0;
      goto LABEL_122;
    }

    v100 = v75 | (v99 >> 28) | (v101 == 0);
    if (!v100)
    {
LABEL_122:
      *v102 = 32;
      goto LABEL_119;
    }

    v100 = 1;
    if (v99 >> 28 == 15)
    {
LABEL_119:
      v73 |= v100;
      *v102 |= (32 * v100) ^ 0x20;
      v102 += 4;
      v99 *= 16;
      if (++v101 >= v74)
      {
        *v46 |= (v73 << 6) ^ 0x40;
        v23 = v158;
        v31 = v161;
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  v167 = v75;
  v169 = v74;
  v173 = v73;
  v141 = v14;
  v106 = 0;
  v107 = (v101 + v147) * v20;
  v163 = v99;
  v108 = v99;
  v109 = v155;
  v110 = v160;
  v111 = 4 * v44;
  v151 = v34;
  while (1)
  {
    v112 = (v111 | v106) + v107;
    v113 = *(v109 + 8 * v112);
    v114 = *(v109 + 8 * (v112 - v20));
    if (!v113 || v114 == 0)
    {
      return 4294958327;
    }

    if ((v108 & 0x80000000) != 0)
    {
      v100 = 1;
    }

    else
    {
      if (v113 == v114)
      {
        LOBYTE(v124) = 0;
        v100 = 1;
      }

      else
      {
        v27 = *v113;
        v41 = *v114;
        v116 = vsubq_s16(*v113, *v114);
        v117 = vmaxq_s16(v116, vnegq_s16(v116));
        if ((v110 & 2) != 0)
        {
          v126 = vandq_s8(vcgtq_s16(vandq_s8(v117, v40), v29), v39);
          v127 = vpaddq_s8(v126, v126);
          v128 = vpaddq_s8(v127, v127);
          v41 = vpaddq_s8(v128, v128);
          v124 = v41.i16[0] != 0;
        }

        else
        {
          if (v27.u8[12] != v41.u8[12])
          {
            v118 = vqtbl1q_s8(v41, xmmword_2773B4450);
            v118.i16[4] = bswap32(v118.u16[4]) >> 16;
            v118.i16[6] = bswap32(v118.u16[6]) >> 16;
            v119 = vsubq_s16(v27, v118);
            v117 = vmaxq_s16(v119, vnegq_s16(v119));
          }

          v120 = xmmword_2773B5680[(v27.u8[8] >> 4) & 2 | ((v27.i8[9] & 0xE0) >> 5)];
          v121 = vandq_s8(vcgtq_s16(vandq_s8(v117, v120), vandq_s8(v24, v120)), v39);
          v122 = vpaddq_s8(v121, v121);
          v123 = vpaddq_s8(v122, v122);
          v27 = vpaddq_s8(v123, v123);
          v124 = v27.i16[0] != 0;
          if ((WORD6(*v113) >> 8) == v41.u8[12] && BYTE12(*v113) == v41.u8[13])
          {
            v125 = sub_2773AEED4(v113->i16, v114->i16, v164, 0, 0, *v41.i8, *v27.i8);
            v107 = (v101 + v147) * v20;
            v111 = 4 * v44;
            v110 = v160;
            v42.i64[0] = 0x303030303030303;
            v42.i64[1] = 0x303030303030303;
            v40 = xmmword_2773B5660;
            v39 = xmmword_2773B5400;
            v37 = xmmword_2773B5650;
            v38.i64[0] = 0x202020202020202;
            v38.i64[1] = 0x202020202020202;
            v109 = v155;
            v35 = v159;
            v29 = v148;
            v24 = v149;
            v34 = v151;
            v124 = v125;
          }
        }

        v100 = v124 | 1;
      }

      v102[v106] = v124;
    }

    v108 *= 2;
    if (++v106 == 4)
    {
      a3 = v138;
      a4 = v139;
      v8 = v137;
      v9 = v136;
      LODWORD(v12) = v135;
      v13 = v134;
      v14 = v141;
      v32 = v174;
      v61 = v165;
      v75 = v167;
      v73 = v173;
      v74 = v169;
      v99 = v163;
      goto LABEL_119;
    }
  }
}

uint64_t sub_2773720C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = (*(v3 + 55) / 6u) & 0x1F;
  v5 = *(v3 + 55) % 6u;
  v6 = *(v3 + 52);
  v140 = v6;
  v139 = vdupq_n_s32(16843009 * v6);
  v7 = *(a1 + 56);
  v8 = *(a1 + 1422192);
  if (!*(a1 + 1422192))
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v10 = vshlq_u16(*&asc_2773B6110[16 * v5], vdupq_n_s16(v4));
    result = 1;
    v11 = 1;
    v9 = v10;
    goto LABEL_9;
  }

  v9 = *&asc_2773B6110[16 * v5];
  v10 = *(a3 + 16 * v5);
  v11 = v4 < 4;
  if (v4 <= 3)
  {
    v12 = 0;
    v13 = 1 << (3 - v4);
    v14 = (4 - v4);
LABEL_7:
    v17 = 0;
    result = 1;
    v15 = 1 << (5 - v4);
    v16 = (6 - v4);
    goto LABEL_9;
  }

  v12 = v4 - 4;
  if (v4 < 6)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_7;
  }

  result = 0;
  v11 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = (v4 - 6);
LABEL_9:
  v19 = vqtbl1q_s8(vzip1q_s16(v10, v10), xmmword_2773B3DF0);
  v20 = v7[1];
  v21.i64[0] = 0xFFFF000000000000;
  v21.i64[1] = 0xFFFF000000000000;
  v22.i64[0] = 0xFFFFLL;
  v22.i64[1] = 0xFFFFLL;
  v23 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vorrq_s8(vandq_s8(v20, xmmword_2773B56F0), vandq_s8(*v7, xmmword_2773B56D0)), vextq_s8(0, vandq_s8(v20, v21), 0xEuLL)), xmmword_2773B5700), xmmword_2773B4460);
  v24 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vorrq_s8(vandq_s8(v20, xmmword_2773B56E0), vandq_s8(*v7, xmmword_2773B56F0)), vextq_s8(vandq_s8(*v7, v22), 0, 2uLL)), xmmword_2773B4470), xmmword_2773B5710);
  if (v8)
  {
    if ((result & 1) == 0)
    {
      v32 = vuzp2q_s16(vmull_s16(*v23.i8, *v19.i8), vmull_high_s16(v23, v19));
      v33 = vmulq_s16(v23, v19);
      v34 = vzip2q_s16(v33, v32);
      v35 = vdupq_n_s32(v17);
      v36 = vzip1q_s16(v33, v32);
      v28 = vshlq_u32(v34, v35);
      v29 = vshlq_u32(v36, v35);
      v37 = vuzp2q_s16(vmull_s16(*v24.i8, *v19.i8), vmull_high_s16(v24, v19));
      v38 = vmulq_s16(v24, v19);
      v39 = vzip2q_s16(v38, v37);
      v25 = vzip1q_s16(v38, v37);
      v40 = vshlq_u32(v39, v35);
      v41 = vshlq_u32(v25, v35);
      v25.i32[0] = 0;
      goto LABEL_18;
    }

    v25.i32[0] = v16;
    v26 = vuzp2q_s16(vmull_s16(*v23.i8, *v19.i8), vmull_high_s16(v23, v19));
    v27 = vmulq_s16(v23, v19);
    v28 = vzip2q_s16(v27, v26);
    v29 = vaddq_s32(v15, vzip1q_s16(v27, v26));
    v30 = vuzp2q_s16(vmull_s16(*v24.i8, *v19.i8), vmull_high_s16(v24, v19));
    v31 = vmulq_s16(v24, v19);
  }

  else
  {
    if ((v19.i8[0] & 3) != 0)
    {
      v25 = xmmword_2773B5720;
    }

    else
    {
      v19 = vshrq_n_u16(v19, 2uLL);
      v25 = 0uLL;
    }

    v42 = vuzp2q_s16(vmull_s16(*v23.i8, *v19.i8), vmull_high_s16(v23, v19));
    v43 = vmulq_s16(v19, v23);
    v28 = vzip2q_s16(v43, v42);
    v29 = vaddq_s32(v25, vzip1q_s16(v43, v42));
    v30 = vuzp2q_s16(vmull_s16(*v24.i8, *v19.i8), vmull_high_s16(v24, v19));
    v31 = vmulq_s16(v19, v24);
  }

  v40 = vzip2q_s16(v31, v30);
  v41 = vzip1q_s16(v31, v30);
LABEL_18:
  v44 = vaddq_s32(v29, v41);
  v45 = vaddq_s32(v28, v40);
  v46 = vsubq_s32(v29, v41);
  v47 = vsubq_s32(v28, v40);
  v48 = vaddq_s32(v44, v45);
  v49 = vsubq_s32(v44, v45);
  v50 = vsubq_s32(v46, v47);
  v51 = vaddq_s32(v46, v47);
  v52 = vzip1q_s32(v48, v50);
  v53 = vzip2q_s32(v48, v50);
  v54 = vzip1q_s32(v49, v51);
  v55 = vzip2q_s32(v49, v51);
  v56 = vzip1q_s32(v52, v54);
  v57 = vzip2q_s32(v52, v54);
  v58 = vzip1q_s32(v53, v55);
  v59 = vzip2q_s32(v53, v55);
  v60 = vaddq_s32(v56, v57);
  v61 = vsubq_s32(v56, v57);
  v62 = vaddq_s32(v58, v59);
  v63 = vsubq_s32(v58, v59);
  v64 = vaddq_s32(v60, v62);
  v65 = vsubq_s32(v60, v62);
  v66 = vsubq_s32(v61, v63);
  v67 = vaddq_s32(v61, v63);
  v68 = vdupq_n_s32(-v25.i32[0]);
  v69 = vshlq_s32(v64, v68);
  v70 = vshlq_s32(v65, v68);
  v71 = vshlq_s32(v66, v68);
  v72 = vshlq_s32(v67, v68);
  *v68.i8 = vqmovn_s32(v69);
  *v69.i8 = vqmovn_s32(v70);
  *v70.i8 = vqmovn_s32(v71);
  *v72.i8 = vqmovn_s32(v72);
  v73 = vzip1q_s32(v68, v69);
  v74 = vzip1q_s32(v70, v72);
  v75 = vqtbl1q_s8(xmmword_2773B5730, xmmword_2773B3DF0);
  v76 = vqaddq_s16(v73, v75);
  v77 = vqaddq_s16(v74, v75);
  if (v6)
  {
    v78 = 0;
    v79 = vdupq_n_s16(v12);
    v80 = v7 + 3;
    v81 = vdupq_n_s32(-v14);
    result = &unk_2773B5000;
    do
    {
      v82 = (a2 + word_2773B60E0[v78]);
      if (v139.i16[v78])
      {
        v83 = vandq_s8(v76, xmmword_2773B5800);
        v84 = v80[-1];
        v85 = v80[1];
        v86 = v80[2];
        v145.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v84, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
        v145.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v80, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
        v87 = vqtbl2q_s8(v145, xmmword_2773B5790);
        v142.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v84, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
        v142.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v80, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
        v88 = vqtbl2q_s8(v142, xmmword_2773B57D0);
        v144.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v85, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
        v144.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v86, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
        v89 = vqtbl2q_s8(v144, xmmword_2773B5790);
        v144.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v85, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
        v144.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v86, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
        v90 = vqtbl2q_s8(v144, xmmword_2773B57D0);
        v91 = vmulq_s16(v88, v9);
        v92 = vmulq_s16(v90, v9);
        if (v8)
        {
          v93 = vmulq_s16(v87, v9);
          v94 = vmulq_s16(v89, v9);
          if (v11)
          {
            v95 = vqtbl1q_s8(v13, xmmword_2773B3DF0);
            v96 = vuzp2q_s16(vmull_s16(*v87.i8, *v9.i8), vmull_high_s16(v87, v9));
            v97 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v93, v96), v95), v81)), vshlq_s32(vaddq_s32(vzip2q_s16(v93, v96), v95), v81));
            v98 = vuzp2q_s16(vmull_s16(*v88.i8, *v9.i8), vmull_high_s16(v88, v9));
            v91 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v91, v98), v95), v81)), vshlq_s32(vaddq_s32(vzip2q_s16(v91, v98), v95), v81));
            v99 = vuzp2q_s16(vmull_s16(*v89.i8, *v9.i8), vmull_high_s16(v89, v9));
            v100 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v94, v99), v95), v81)), vshlq_s32(vaddq_s32(vzip2q_s16(v94, v99), v95), v81));
            v101 = vuzp2q_s16(vmull_s16(*v90.i8, *v9.i8), vmull_high_s16(v90, v9));
            v92 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v92, v101), v95), v81)), vshlq_s32(vaddq_s32(vzip2q_s16(v92, v101), v95), v81));
          }

          else
          {
            v97 = vshlq_u16(v93, v79);
            v91 = vshlq_u16(v91, v79);
            v100 = vshlq_u16(v94, v79);
            v92 = vshlq_u16(v92, v79);
          }

          v105 = vaddq_s16(v97, v83);
          v106 = vaddq_s16(v100, v83);
        }

        else
        {
          v105 = vmlaq_s16(v83, v87, v9);
          v106 = vmlaq_s16(v83, v89, v9);
        }

        v107.i64[0] = v105.i64[0];
        v107.i16[0] = v76.i16[0];
        v108 = vzip2q_s64(v105, v106);
        v106.i16[0] = vqtbl1q_s8(vzip1q_s16(v76, v76), xmmword_2773B43F0).u16[0];
        v107.i64[1] = v106.i64[0];
        v109.i64[0] = v91.i64[0];
        v109.i64[1] = v92.i64[0];
        v110 = vzip2q_s64(v91, v92);
        v111 = vaddq_s16(v109, v107);
        v112 = vsubq_s16(v107, v109);
        v113 = vsubq_s16(vshrq_n_s16(v108, 1uLL), v110);
        v114 = vsraq_n_s16(v108, v110, 1uLL);
        v115 = vaddq_s16(v111, v114);
        v116 = vaddq_s16(v112, v113);
        v117 = vsubq_s16(v112, v113);
        v118 = vsubq_s16(v111, v114);
        v119 = vzip1q_s16(v115, v117);
        v120 = vzip2q_s16(v115, v117);
        v121 = vzip1q_s16(v116, v118);
        v122 = vzip2q_s16(v116, v118);
        v123 = vzip1q_s16(v119, v121);
        v124 = vzip2q_s16(vdupq_lane_s64(v120.i64[0], 0), vdupq_lane_s64(v122.i64[0], 0));
        v125 = vzip2q_s64(v123, v124);
        v123.i64[1] = v124.i64[0];
        v143.val[1] = vdupq_laneq_s64(v119, 1);
        v143.val[0] = vdupq_laneq_s64(v121, 1);
        v126 = vqtbl2q_s8(v143, xmmword_2773B4490);
        v127 = vzip2q_s16(v120, v122);
        v122.i64[0] = v126.i64[0];
        v122.i64[1] = v127.i64[0];
        v128 = vzip2q_s64(v126, v127);
        v129 = vaddq_s16(v123, v122);
        v130 = vsubq_s16(v123, v122);
        v131 = vsubq_s16(vshrq_n_s16(v125, 1uLL), v128);
        v132 = vsraq_n_s16(v125, v128, 1uLL);
        *v82 = vshrq_n_s16(vaddq_s16(v129, v132), 6uLL);
        v82[2] = vshrq_n_s16(vaddq_s16(v130, v131), 6uLL);
        v104 = vshrq_n_s16(vsubq_s16(v129, v132), 6uLL);
        v82[4] = vshrq_n_s16(vsubq_s16(v130, v131), 6uLL);
      }

      else
      {
        v102 = vshrq_n_s16(v76, 6uLL);
        v103 = vzip1q_s16(v102, v102);
        v104 = vzip1q_s32(v103, v103);
        *v82 = v104;
        v82[2] = v104;
        v82[4] = v104;
      }

      v82[6] = v104;
      ++v78;
      v76 = vextq_s8(v76, v77, 4uLL);
      v77 = vqtbl1q_s8(v77, xmmword_2773B57E0);
      v80 += 4;
    }

    while (v78 != 8);
  }

  else
  {
    v133 = 0;
    v134 = vshrq_n_s16(v76, 6uLL);
    v135 = vshrq_n_s16(v77, 6uLL);
    do
    {
      v136 = (a2 + word_2773B60E0[v133]);
      v137 = vzip1q_s16(v134, v134);
      v138 = vzip1q_s32(v137, v137);
      *v136 = v138;
      v136[2] = v138;
      v136[4] = v138;
      v136[6] = v138;
      v134 = vextq_s8(v134, v135, 4uLL);
      v135 = vqtbl1q_s8(v135, xmmword_2773B57E0);
      ++v133;
    }

    while (v133 != 8);
  }

  return result;
}

int8x16_t sub_277372838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = (*(v4 + 55) / 6u) & 0x1F;
  v6 = *(v4 + 55) % 6u;
  v7 = *(v4 + 52);
  v38 = v7;
  v37 = vdupq_n_s32(16843009 * v7);
  v8 = *(a1 + 56);
  v9 = *(a1 + 1422192);
  if (*(a1 + 1422192))
  {
    v34 = *&asc_2773B6110[16 * v6];
    v10 = *(a3 + 16 * v6);
    if (v5 <= 3)
    {
      v11 = 0;
      v18 = 0;
      v13 = (4 - v5);
      v12 = 1 << (3 - v5);
    }

    else
    {
      v11 = v5 - 4;
      if (v5 >= 6)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = v5 - 6;
        v17 = 1;
        v18 = 1;
        goto LABEL_9;
      }

      v13 = 0;
      v12 = 0;
      v18 = 1;
    }

    v17 = 0;
    v16 = 0;
    v15 = 6 - v5;
    v14 = 1 << (5 - v5);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v10 = vshlq_u16(*&asc_2773B6110[16 * v6], vdupq_n_s16(v5));
    v34 = v10;
  }

LABEL_9:
  sub_2772A4238(v8, v39, v17, v9, v16, v15, v14, vqtbl1q_s8(vzip1q_s16(v10, v10), xmmword_2773B3DF0));
  v19 = vqtbl1q_s8(xmmword_2773B5730, xmmword_2773B3DF0);
  v20 = vqaddq_s16(v39[0], v19);
  v21 = vqaddq_s16(v39[1], v19);
  if (v7)
  {
    v22 = 0;
    v23 = v8 + 32;
    do
    {
      v24 = a2 + word_2773B60E0[v22];
      if (v37.i16[v22])
      {
        v35 = v21;
        v36 = v20;
        sub_2772A43FC(v23, v23 + 32, v24, v18, v11, v13, v12, v9, v20.u16[0], vqtbl1q_s8(vzip1q_s16(v20, v20), xmmword_2773B43F0), v34);
        v21 = v35;
        v20 = v36;
      }

      else
      {
        v25 = vshrq_n_s16(v20, 6uLL);
        v26 = vzip1q_s16(v25, v25);
        v27 = vzip1q_s32(v26, v26);
        *v24 = v27;
        *(v24 + 32) = v27;
        *(v24 + 64) = v27;
        *(v24 + 96) = v27;
      }

      ++v22;
      v20 = vextq_s8(v20, v21, 4uLL);
      result = xmmword_2773B57E0;
      v21 = vqtbl1q_s8(v21, xmmword_2773B57E0);
      v23 += 64;
    }

    while (v22 != 8);
  }

  else
  {
    v29 = 0;
    result = vshrq_n_s16(v20, 6uLL);
    v30 = vshrq_n_s16(v21, 6uLL);
    do
    {
      v31 = (a2 + word_2773B60E0[v29]);
      v32 = vzip1q_s16(result, result);
      v33 = vzip1q_s32(v32, v32);
      *v31 = v33;
      v31[2] = v33;
      v31[4] = v33;
      v31[6] = v33;
      result = vextq_s8(result, v30, 4uLL);
      v30 = vqtbl1q_s8(v30, xmmword_2773B57E0);
      ++v29;
    }

    while (v29 != 8);
  }

  return result;
}

void sub_277372B28(uint64_t a1, _OWORD *a2, double a3, double a4, int32x2_t a5)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = *(v6 + 52);
  if (*(v6 + 52))
  {
    v8 = 0;
    v9 = *(v6 + 55);
    v38 = *(v6 + 52);
    do
    {
      v10 = v7 & 1;
      v7 >>= 1;
      *&v37[v8] = -v10;
      v8 += 4;
    }

    while (v8 != 16);
    v11 = *(a1 + 1422192);
    v12 = *(a1 + 56);
    v13 = *(a1 + 31);
    v14 = v38;
    v15.i32[1] = 0;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[8] = 0u;
    a2[9] = 0u;
    a2[10] = 0u;
    a2[11] = 0u;
    a2[12] = 0u;
    a2[13] = 0u;
    a2[14] = 0u;
    a2[15] = 0u;
    a2[16] = 0u;
    a2[17] = 0u;
    a2[18] = 0u;
    a2[19] = 0u;
    a2[20] = 0u;
    a2[21] = 0u;
    a2[22] = 0u;
    a2[23] = 0u;
    a2[24] = 0u;
    a2[25] = 0u;
    a2[26] = 0u;
    a2[27] = 0u;
    a2[28] = 0u;
    a2[29] = 0u;
    a2[30] = 0u;
    a2[31] = 0u;
    if (v14)
    {
      v16 = (v9 / 6u) & 0x1F;
      v17 = v12 + 2;
      if (v13 == 2)
      {
        v18 = &asc_2773B6110[2 * (8 * (v9 % 6u))];
        if (v11)
        {
          v39 = *v18;
          v19 = v16 - 4;
          if (v16 < 4)
          {
            v22 = 0;
            v19 = 0;
            v21 = 4 - v16;
            v20 = 1 << (3 - v16);
          }

          else
          {
            LOWORD(v20) = 0;
            v21 = 0;
            v22 = 1;
          }
        }

        else
        {
          v22 = 0;
          LOWORD(v20) = 0;
          v21 = 0;
          v19 = 0;
          v15.i16[0] = *v18;
          a5.i32[0] = *(v18 + 1);
          v15.i16[1] = *(v18 + 1);
          v28 = vzip1_s32(v15, a5);
          v29 = vdupq_n_s32(v16);
          v39 = vuzp1q_s16(vshlq_u32(vmovl_u16(v28), v29), vshlq_u32(vmovl_u16(*(v18 + 8)), v29));
        }

        for (i = 0; i != 8; ++i)
        {
          if (*&v37[i * 2])
          {
            v31 = word_2773B60E0[i];
            v40[0] = 0;
            v40[1] = 0;
            sub_2772A4B4C(v17, &v17[2], &xmmword_2773B57F0, &xmmword_2773B57F0, v40, &v39, (a2 + v31), 1, v22, v19, SHIBYTE(v19), v21, v20, v11);
          }

          v17 += 4;
        }
      }

      else
      {
        if (v11)
        {
          v36 = *&asc_2773B6110[16 * (v9 % 6u)];
          v24 = v16 - 4;
          if (v16 < 4)
          {
            v27 = 0;
            v24 = 0;
            v26 = (4 - v16);
            v25 = 1 << (3 - v16);
          }

          else
          {
            LOWORD(v25) = 0;
            v26 = 0;
            v27 = 1;
          }
        }

        else
        {
          v27 = 0;
          LOWORD(v25) = 0;
          v26 = 0;
          v24 = 0;
          v36 = vshlq_u16(*&asc_2773B6110[2 * (8 * (v9 % 6u))], vdupq_n_s16(v16));
        }

        v32 = 0;
        v33 = v25;
        do
        {
          if (*&v37[v32 * 2])
          {
            v34 = v17 + 2;
            v35 = (a2 + word_2773B60E0[v32]);
            if (v11)
            {
              sub_2772A4660(v17, v34, v35, v27, v24, v26, v33, xmmword_2773B57F0, v36);
            }

            else
            {
              sub_2772A492C(v17, v34, v35, 1, xmmword_2773B57F0, v36);
            }
          }

          ++v32;
          v17 += 4;
        }

        while (v32 != 8);
      }
    }
  }

  else
  {
    v23 = off_280B9ABC0;

    v23(a2, 16);
  }
}

uint64_t sub_277372EE0(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = *(v3 + 52);
  v5 = *(v3 + 55);
  v6 = *(result + 56);
  v7 = *(result + 1422192);
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v8 = v5;
  v9 = v5 / 6u;
  v10 = v5 % 6u;
  v240 = (&unk_2773B6180 + 128 * v10);
  v242 = (a3 + (v10 << 7));
  v245 = v7;
  if (v7)
  {
    if (v8 >= 0x24)
    {
      v241 = 0;
      v11 = (v9 - 6);
      v13 = 0;
      goto LABEL_7;
    }

    v11 = 0;
    v12 = vsub_s32(0x600000005, vdup_n_s32(v9));
    v13.i32[0] = vshl_u32(0x100000001, v12).u32[0];
    v13.i32[1] = v12.u16[2];
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v9 -= 2;
  }

  v241 = 1;
LABEL_7:
  v14 = 0;
  v15 = vdupq_n_s32(v11);
  v16 = vdupq_lane_s32(v13, 0);
  v243 = v6 + 32;
  v17 = vnegq_s32(vdupq_lane_s32(v13, 1));
  v244 = v11;
  do
  {
    if (v4)
    {
      v395 = a2 + word_2773B6170[v14];
      v18 = v243 + (v14 << 7);
      v416.val[1] = *(v18 + 80);
      v415 = *(v18 + 96);
      v416.val[0] = *(v18 + 48);
      v19 = *(v18 + 64);
      v20.i64[0] = vqtbl2q_s8(v416, xmmword_2773B5820).u64[0];
      v20.i64[1] = vqtbl2q_s8(v415, xmmword_2773B5810).i64[1];
      v413.val[1] = vqtbl2q_s8(v415, xmmword_2773B5830);
      v413.val[0] = vqtbl2q_s8(v416, xmmword_2773B5840);
      v21 = vqtbl2q_s8(v413, xmmword_2773B5850);
      v417 = *v18;
      v22 = *(v18 + 32);
      v25.i32[0] = vqtbl2q_s8(*v18, xmmword_2773B5870).u32[0];
      v25.i32[1] = vqtbl2q_s8(v416, xmmword_2773B5860).i32[1];
      v23 = v416.val[1];
      v24 = vqtbl2q_s8(*&v19, xmmword_2773B5880);
      v24.i16[7] = v415.val[0].i16[1];
      v25.i64[1] = v24.i64[1];
      v26 = vqtbl2q_s8(*&v19, xmmword_2773B58A0);
      v26.i32[3] = vqtbl2q_s8(v415, xmmword_2773B5890).i32[3];
      v27 = v22;
      v418.val[0] = vqtbl2q_s8(*(&v417 + 16), xmmword_2773B58B0);
      v418.val[1] = v416.val[0];
      v28.i64[0] = vqtbl2q_s8(v418, xmmword_2773B58C0).u64[0];
      v28.i64[1] = v26.i64[1];
      v29 = v416.val[0];
      v418.val[0] = vqtbl2q_s8(*(&v29 - 1), xmmword_2773B58D0);
      v30 = v415.val[0];
      v414.val[0] = vqtbl2q_s8(*(&v416 + 16), xmmword_2773B58E0);
      v414.val[1] = v415.val[1];
      v418.val[1] = vqtbl2q_s8(v414, xmmword_2773B58F0);
      v31 = vqtbl2q_s8(v418, xmmword_2773B5850);
      v32 = v415.val[0];
      v415.val[1] = vqtbl2q_s8(*&v19, xmmword_2773B5900);
      v418.val[0] = vqtbl2q_s8(*v18, xmmword_2773B5910);
      v418.val[1] = v22;
      v415.val[0] = vqtbl2q_s8(v418, xmmword_2773B5920);
      v33 = vqtbl2q_s8(v415, xmmword_2773B5930);
      v418.val[0] = vqtbl2q_s8(*v18, xmmword_2773B5940);
      v418.val[1] = v22;
      v34 = vqtbl2q_s8(v418, xmmword_2773B5950);
      v34.i16[7] = HIWORD(*(v18 + 64));
      v417.val[0] = vqtbl2q_s8(*v18, xmmword_2773B5960);
      v417.val[1] = v22;
      v35 = vqtbl2q_s8(v417, xmmword_2773B5970);
      v36 = vqtbl2q_s8(*(&v19 - 1), xmmword_2773B5980);
      if (v245)
      {
        v37 = v11;
      }

      else
      {
        v37 = v9;
      }

      v394 = v37;
      v397 = v4;
      v396 = v14;
      if (v245)
      {
        v38 = v242[3];
        v39 = v242[4];
        v40 = v242[1];
        v41 = v242[2];
        v42 = v242[5];
        v43 = v242[6];
        v44 = v242[7];
        LODWORD(v19) = v242->i32[1];
        v29.i32[0] = v242->i32[0];
        *v45.i8 = vzip1_s32(*v29.i8, *&v19);
        v45.i64[1] = v242->i64[1];
        if (v241)
        {
          v46 = vmlal_high_s16(v16, v44, v21);
          v47 = vmlal_s16(v16, *v44.i8, *v21.i8);
          v48 = vmlal_high_s16(v16, v43, v20);
          v49 = vmlal_s16(v16, *v43.i8, *v20.i8);
          v50 = vmlal_high_s16(v16, v42, v31);
          v51 = vmlal_s16(v16, *v42.i8, *v31.i8);
          v52 = vmlal_high_s16(v16, v39, v28);
          v53 = vmlal_s16(v16, *v39.i8, *v28.i8);
          v54 = vmlal_high_s16(v16, v41, v33);
          v55 = vmlal_s16(v16, *v41.i8, *v33.i8);
          v56 = vmlal_high_s16(v16, v40, v36);
          v57 = vmlal_s16(v16, *v40.i8, *v36.i8);
          v58 = vmlal_s16(v16, *v45.i8, *v34.i8);
          v59 = vshlq_s32(vmlal_high_s16(v16, v45, v34), v17);
          v60 = vshlq_s32(v58, v17);
          v61 = vshlq_s32(v57, v17);
          v62 = vshlq_s32(v56, v17);
          v63 = vshlq_s32(v55, v17);
          v64 = vshlq_s32(v54, v17);
          v65 = vshlq_s32(vmlal_s16(v16, *v38.i8, *v25.i8), v17);
          v66 = vshlq_s32(vmlal_high_s16(v16, v38, v25), v17);
          v67 = vshlq_s32(v53, v17);
          v68 = vshlq_s32(v52, v17);
          v69 = vshlq_s32(v51, v17);
          v70 = vshlq_s32(v50, v17);
          v71 = vshlq_s32(v49, v17);
          v72 = vshlq_s32(v48, v17);
          v73 = vshlq_s32(v47, v17);
          v74 = vshlq_s32(v46, v17);
        }

        else
        {
          v93 = vmull_high_u16(v44, v21);
          v94 = vmull_u16(*v44.i8, *v21.i8);
          v95 = vmull_high_u16(v43, v20);
          v96 = vmull_u16(*v43.i8, *v20.i8);
          v97 = vmull_high_u16(v42, v31);
          v98 = vmull_u16(*v42.i8, *v31.i8);
          v99 = vmull_u16(*v40.i8, *v36.i8);
          v100 = vmull_high_u16(v40, v36);
          v101 = vmull_u16(*v45.i8, *v34.i8);
          v59 = vshlq_u32(vmull_high_u16(v45, v34), v15);
          v60 = vshlq_u32(v101, v15);
          v62 = vshlq_u32(v100, v15);
          v61 = vshlq_u32(v99, v15);
          v63 = vshlq_u32(vmull_u16(*v41.i8, *v33.i8), v15);
          v64 = vshlq_u32(vmull_high_u16(v41, v33), v15);
          v65 = vshlq_u32(vmull_u16(*v38.i8, *v25.i8), v15);
          v66 = vshlq_u32(vmull_high_u16(v38, v25), v15);
          v67 = vshlq_u32(vmull_u16(*v39.i8, *v28.i8), v15);
          v68 = vshlq_u32(vmull_high_u16(v39, v28), v15);
          v69 = vshlq_u32(v98, v15);
          v70 = vshlq_u32(v97, v15);
          v71 = vshlq_u32(v96, v15);
          v72 = vshlq_u32(v95, v15);
          v73 = vshlq_u32(v94, v15);
          v74 = vshlq_u32(v93, v15);
        }
      }

      else
      {
        v76 = v240[6];
        v75 = v240[7];
        v77 = vmull_u16(*v75.i8, *v21.i8);
        v78 = vmull_u16(*v76.i8, *v20.i8);
        v79 = vmull_high_u16(v75, v21);
        v81 = v240[4];
        v80 = v240[5];
        v83 = v240[2];
        v82 = v240[3];
        v84 = vmull_u16(*v80.i8, *v31.i8);
        v85 = vmull_high_u16(v76, v20);
        v86 = vmull_u16(*v81.i8, *v28.i8);
        v87 = v240[1];
        v88 = vmull_high_u16(v80, v31);
        v89 = vmull_high_u16(v81, v28);
        v90 = vmull_u16(*v240->i8, *v34.i8);
        v91 = vmull_u16(*v87.i8, *v36.i8);
        v92 = vdupq_n_s32(v9);
        v62 = vshlq_u32(vmull_high_u16(v87, v36), v92);
        v59 = vshlq_u32(vmull_high_u16(*v240, v34), v92);
        v64 = vshlq_u32(vmull_high_u16(v83, v33), v92);
        v61 = vshlq_u32(v91, v92);
        v60 = vshlq_u32(v90, v92);
        v66 = vshlq_u32(vmull_high_u16(v82, v25), v92);
        v63 = vshlq_u32(vmull_u16(*v83.i8, *v33.i8), v92);
        v68 = vshlq_u32(v89, v92);
        v65 = vshlq_u32(vmull_u16(*v82.i8, *v25.i8), v92);
        v70 = vshlq_u32(v88, v92);
        v67 = vshlq_u32(v86, v92);
        v72 = vshlq_u32(v85, v92);
        v69 = vshlq_u32(v84, v92);
        v74 = vshlq_u32(v79, v92);
        v71 = vshlq_u32(v78, v92);
        v73 = vshlq_u32(v77, v92);
      }

      v102 = v69.i32[0] - (v73.i32[0] + (v73.i16[0] >> 1) + v65.i32[0]);
      v103 = v65.i32[0] + v69.i32[0] + v61.i32[0] + (v61.i16[0] >> 1);
      v284 = v102 + (v103 >> 2);
      v403 = v103 - (v102 >> 2);
      v104 = (v63.i16[0] >> 1) - v71.i32[0];
      v105 = (v63.i16[2] >> 1) - v71.i32[1];
      v106 = (v63.i16[4] >> 1) - v71.i32[2];
      v107 = (v63.i16[6] >> 1) - v71.i32[3];
      v108 = (v64.i16[0] >> 1) - v72.i32[0];
      v109 = (v64.i16[2] >> 1) - v72.i32[1];
      v110 = v64.i32[2] + (v72.i16[4] >> 1);
      v111 = (v64.i16[4] >> 1) - v72.i32[2];
      v112 = v64.i32[3] + (v72.i16[6] >> 1);
      v113 = (v64.i16[6] >> 1) - v72.i32[3];
      v114 = v73.i32[0] - (v65.i32[0] + (v65.i16[0] >> 1)) + v61.i32[0];
      v115 = v69.i32[0] + v73.i32[0] + (v69.i16[0] >> 1) - v61.i32[0];
      v116 = v65.i32[1] + v69.i32[1] + v61.i32[1] + (v61.i16[2] >> 1);
      v117 = v69.i32[1] - (v73.i32[1] + (v73.i16[2] >> 1)) - v65.i32[1];
      v405 = v117 + (v116 >> 2);
      v322 = v116 - (v117 >> 2);
      v118 = v73.i32[1] - (v65.i32[1] + (v65.i16[2] >> 1)) + v61.i32[1];
      v119 = v69.i32[1] + v73.i32[1] + (v69.i16[2] >> 1) - v61.i32[1];
      v120 = v73.i32[2] - (v65.i32[2] + (v65.i16[4] >> 1)) + v61.i32[2];
      v121 = v69.i32[2] + v73.i32[2] + (v69.i16[4] >> 1) - v61.i32[2];
      v122 = v73.i32[3] - (v65.i32[3] + (v65.i16[6] >> 1)) + v61.i32[3];
      v123 = v69.i32[3] + v73.i32[3] + (v69.i16[6] >> 1) - v61.i32[3];
      v124 = v74.i32[0] - (v66.i32[0] + (v66.i16[0] >> 1)) + v62.i32[0];
      v125 = v70.i32[0] + v74.i32[0] + (v70.i16[0] >> 1) - v62.i32[0];
      v126 = v74.i32[1] - (v66.i32[1] + (v66.i16[2] >> 1)) + v62.i32[1];
      v127 = v70.i32[1] + v74.i32[1] + (v70.i16[2] >> 1) - v62.i32[1];
      v128 = v74.i32[2] - (v66.i32[2] + (v66.i16[4] >> 1)) + v62.i32[2];
      v129 = v70.i32[2] + v74.i32[2] + (v70.i16[4] >> 1) - v62.i32[2];
      v130 = v74.i32[3] - (v66.i32[3] + (v66.i16[6] >> 1)) + v62.i32[3];
      v131 = v70.i32[3] + v74.i32[3] + (v70.i16[6] >> 1) - v62.i32[3];
      v398 = v60.i32[0] - v67.i32[0] + v104;
      v381 = v60.i32[0] - v67.i32[0] - v104;
      v347 = v60.i32[1] - v67.i32[1] + v105;
      v354 = v60.i32[1] - v67.i32[1] - v105;
      v391 = v60.i32[2] - v67.i32[2] + v106;
      v377 = v60.i32[2] - v67.i32[2] - v106;
      v336 = v60.i32[3] - v67.i32[3] + v107;
      v351 = v60.i32[3] - v67.i32[3] - v107;
      v389 = v59.i32[0] - v68.i32[0] + v108;
      v374 = v59.i32[0] - v68.i32[0] - v108;
      v295 = v59.i32[1] - v68.i32[1] + v109;
      v132 = v59.i32[1] - v68.i32[1] - v109;
      v385 = v59.i32[2] - v68.i32[2] + v111;
      v372 = v59.i32[2] - v68.i32[2] - v111;
      v292 = v59.i32[3] - v68.i32[3] + v113;
      v133 = v59.i32[3] - v68.i32[3] - v113;
      v364 = v114 + (v115 >> 2);
      v370 = (v114 >> 2) - v115;
      v318 = v118 + (v119 >> 2);
      v308 = (v118 >> 2) - v119;
      v356 = v120 + (v121 >> 2);
      v367 = (v120 >> 2) - v121;
      v311 = v122 + (v123 >> 2);
      v305 = (v122 >> 2) - v123;
      v342 = v124 + (v125 >> 2);
      v361 = (v124 >> 2) - v125;
      v134 = v126 + (v127 >> 2);
      v135 = (v126 >> 2) - v127;
      v330 = v128 + (v129 >> 2);
      v350 = (v128 >> 2) - v129;
      v136 = v130 + (v131 >> 2);
      v137 = (v130 >> 2) - v131;
      v138 = v65.i32[2] + v69.i32[2] + v61.i32[2] + (v61.i16[4] >> 1);
      v139 = v69.i32[2] - (v73.i32[2] + (v73.i16[4] >> 1)) - v65.i32[2];
      v140 = v139 + (v138 >> 2);
      v339 = v138 - (v139 >> 2);
      v141 = v63.i32[0] + (v71.i16[0] >> 1);
      v334 = v60.i32[0] + v67.i32[0] + v141;
      v142 = v60.i32[0] + v67.i32[0] - v141;
      v143 = v63.i32[1] + (v71.i16[2] >> 1);
      v287 = v60.i32[1] + v67.i32[1] + v143;
      v144 = v60.i32[1] + v67.i32[1] - v143;
      v145 = v63.i32[2] + (v71.i16[4] >> 1);
      v332 = v60.i32[2] + v67.i32[2] + v145;
      v146 = v60.i32[2] + v67.i32[2] - v145;
      v147 = v65.i32[3] + v69.i32[3] + v61.i32[3] + (v61.i16[6] >> 1);
      v148 = v69.i32[3] - (v73.i32[3] + (v73.i16[6] >> 1)) - v65.i32[3];
      v149 = v148 + (v147 >> 2);
      v282 = v147 - (v148 >> 2);
      v150 = v64.i32[0] + (v72.i16[0] >> 1);
      v151 = v63.i32[3] + (v71.i16[6] >> 1);
      v267 = v60.i32[3] + v67.i32[3] + v151;
      v152 = v60.i32[3] + v67.i32[3] - v151;
      v321 = v59.i32[0] + v68.i32[0] + v150;
      v153 = v59.i32[0] + v68.i32[0] - v150;
      v154 = v64.i32[1] + (v72.i16[2] >> 1);
      v155 = v59.i32[1] + v68.i32[1] + v154;
      v156 = v59.i32[1] + v68.i32[1] - v154;
      v157 = v66.i32[0] + v70.i32[0] + v62.i32[0] + (v62.i16[0] >> 1);
      v158 = v70.i32[0] - (v74.i32[0] + (v74.i16[0] >> 1) + v66.i32[0]);
      v159 = v158 + (v157 >> 2);
      v313 = v157 - (v158 >> 2);
      v314 = v59.i32[2] + v68.i32[2] + v110;
      v160 = v59.i32[2] + v68.i32[2] - v110;
      v161 = v59.i32[3] + v68.i32[3] + v112;
      v162 = v59.i32[3] + v68.i32[3] - v112;
      v164 = v70.i32[2] - (v74.i32[2] + (v74.i16[4] >> 1)) - v66.i32[2];
      v163 = v66.i32[1] + v70.i32[1] + v62.i32[1] + (v62.i16[2] >> 1);
      v165 = v70.i32[1] - (v74.i32[1] + (v74.i16[2] >> 1)) - v66.i32[1];
      v166 = v165 + (v163 >> 2);
      v167 = v163 - (v165 >> 2);
      v168 = v66.i32[2] + v70.i32[2] + v62.i32[2] + (v62.i16[4] >> 1);
      v169 = v66.i32[3] + v70.i32[3] + v62.i32[3] + (v62.i16[6] >> 1);
      v170 = v164 + (v168 >> 2);
      v302 = v168 - (v164 >> 2);
      v171 = v70.i32[3] - (v74.i32[3] + (v74.i16[6] >> 1)) - v66.i32[3];
      v172 = v171 + (v169 >> 2);
      v173 = v169 - (v171 >> 2);
      v359 = v142 + v284;
      v345 = v142 - v284;
      v174 = v144 + v405;
      v411 = v144 - v405;
      v387 = v146 + v140;
      v401 = v146 - v140;
      v175 = v152 + v149;
      v247 = v152 - v149;
      v324 = v153 + v159;
      v327 = v153 - v159;
      v176 = v156 - v166;
      v379 = v160 + v170;
      v383 = v160 - v170;
      v408 = v161 + v173;
      v250 = v155 + v167;
      v285 = v155 + v167 + v161 + v173 + ((v155 + v167) << 16 >> 17);
      v177 = v295 + v135;
      v406 = v292 + v137;
      v280 = v295 + v135 + v292 + v137 + ((v295 + v135) << 16 >> 17);
      v178 = v132 + v134;
      v274 = v133 + v136;
      v278 = v132 + v134 + v133 + v136 + ((v132 + v134) << 16 >> 17);
      v270 = v162 + v172;
      v271 = v162 - v172;
      v179 = v132 - v134;
      v277 = v156 + v166 + v270 + ((v156 + v166) << 16 >> 17);
      v269 = v133 - v136;
      v180 = v295 - v135;
      v276 = v156 - v166 + v271 + ((v156 - v166) << 16 >> 17);
      v300 = v132 - v134 + v133 - v136 + ((v132 - v134) << 16 >> 17);
      v261 = v161 - v173;
      v263 = v292 - v137;
      v265 = v155 - v167;
      v296 = v155 - v167 + v161 - v173 + ((v155 - v167) << 16 >> 17);
      v298 = v180 + v292 - v137 + (v180 >> 1);
      v272 = v287 + v322;
      v181 = v267 + v282;
      v273 = v267 + v282 + v155 + v167 + v287 + v322 + ((v287 + v322) << 16 >> 17);
      v259 = v347 + v308;
      v290 = v336 + v305 + v177 + v347 + v308 + ((v347 + v308) << 16 >> 17);
      v257 = v354 + v318;
      v182 = v351 + v311;
      v293 = v351 + v311 + v132 + v134 + v354 + v318 + ((v354 + v318) << 16 >> 17);
      v183 = v175;
      v254 = v354 - v318;
      v255 = v174;
      v355 = v175 + v156 + v166 + v174 + (v174 >> 1);
      v184 = v351 - v311;
      v319 = v247 + v156 - v166 + v411 + (v411 >> 1);
      v312 = v351 - v311 + v132 - v134 + v254 + (v254 >> 1);
      v185 = v381 + v364;
      v365 = v381 - v364;
      v258 = v377 + v356;
      v357 = v377 - v356;
      v186 = v374 + v342;
      v251 = v374 - v342;
      v256 = v372 + v330;
      v352 = v372 - v330;
      v187 = v398 + v370;
      v188 = v398 - v370;
      v249 = v347 - v308;
      v253 = v391 + v367;
      v348 = v391 - v367;
      v189 = v336 - v305;
      v190 = v389 + v361;
      v191 = v389 - v361;
      v252 = v385 + v350;
      v343 = v385 - v350;
      v192 = v334 + v403;
      v193 = v334 - v403;
      v248 = v287 - v322;
      v288 = v332 + v339;
      v340 = v332 - v339;
      v194 = v267 - v282;
      v195 = v314 + v302;
      v268 = v314 - v302;
      v362 = v250 - v181 - (v408 + (v408 >> 1));
      v315 = v336 + v305 + ((v336 + v305) << 16 >> 17);
      v399 = v177 - (v336 + v305) - (v406 + (v406 >> 1));
      v375 = v178 - v182 - (v274 + (v274 >> 1));
      v196 = v156 + v166 - v183;
      v337 = v179 - v184 - (v269 + (v269 >> 1));
      v335 = v180 - v189 - (v263 + (v263 >> 1));
      v333 = v265 - v194 - (v261 + (v261 >> 1));
      v392 = v192 + v321 + v313;
      v197 = v192 - (v321 + v313);
      v198 = v189 + (v189 >> 1);
      v331 = v189 + v180 + v249 + (v249 >> 1);
      v390 = v187 + v190;
      v199 = v187 - v190;
      v386 = v185 + v186;
      v200 = v185 - v186;
      v323 = v194 + v265 + v248 + (v248 >> 1);
      v382 = v359 + v324;
      v201 = v359 - v324;
      v378 = v345 + v327;
      v202 = v345 - v327;
      v373 = v365 + v251;
      v368 = v365 - v251;
      v371 = v188 + v191;
      v328 = v188 - v191;
      v366 = v193 + v321 - v313;
      v325 = v193 - (v321 - v313);
      v409 = v408 + v272 - (v181 + (v181 >> 1));
      v203 = v406 + v259 - v315;
      v283 = v274 + v257 - (v182 + (v182 >> 1));
      v303 = v270 + v255 - (v183 + (v183 >> 1));
      v306 = v271 + v411 - (v247 + (v247 >> 1));
      v309 = v269 + v254 - (v184 + (v184 >> 1));
      v316 = v263 + v249 - v198;
      v346 = v261 + v248 - (v194 + (v194 >> 1));
      v360 = v288 + (v195 >> 1);
      v204 = (v288 >> 1) - v195;
      v205 = (v253 >> 1) - v252;
      v206 = (v258 >> 1) - v256;
      v289 = v387 + (v379 >> 1);
      v207 = (v387 >> 1) - v379;
      v388 = v401 + (v383 >> 1);
      v208 = (v401 >> 1) - v383;
      v380 = v357 + (v352 >> 1);
      v209 = (v357 >> 1) - v352;
      v275 = v348 + (v343 >> 1);
      v210 = (v348 >> 1) - v343;
      v266 = v340 + (v268 >> 1);
      v211 = (v340 >> 1) - v268;
      v212 = v285 - v272;
      v213 = v280 - v259;
      v214 = v278 - v257;
      v281 = v276 - v411;
      v286 = v362 + (v273 >> 2);
      v412 = v273 - (v362 >> 2);
      v215 = v300 - v254;
      v216 = v298 - v249;
      v217 = v296 - v248;
      v344 = v197 + v204;
      v279 = v197 - v204;
      v218 = v399 + (v290 >> 2);
      v400 = v290 - (v399 >> 2);
      v341 = v199 + v205;
      v264 = v199 - v205;
      v349 = v200 + v206;
      v262 = v200 - v206;
      v358 = v201 + v207;
      v260 = v201 - v207;
      v219 = v375 + (v293 >> 2);
      v297 = v293 - (v375 >> 2);
      v353 = v202 + v208;
      v220 = v202 - v208;
      v363 = v368 + v209;
      v221 = v368 - v209;
      v369 = v328 + v210;
      v222 = v328 - v210;
      v376 = v325 + v211;
      v384 = v325 - v211;
      v223 = v409 + (v212 >> 2);
      v326 = (v409 >> 2) - v212;
      v224 = v203 + (v213 >> 2);
      v329 = (v203 >> 2) - v213;
      v225 = v196 - (v270 + (v270 >> 1));
      v226 = v225 + (v355 >> 2);
      v402 = v355 - (v225 >> 2);
      v227 = v176 - v247 - (v271 + (v271 >> 1));
      v228 = v227 + (v319 >> 2);
      v410 = v319 - (v227 >> 2);
      v229 = v337 + (v312 >> 2);
      v404 = v312 - (v337 >> 2);
      v230 = v335 + (v331 >> 2);
      v294 = v331 - (v335 >> 2);
      v231 = v333 + (v323 >> 2);
      v407 = v323 - (v333 >> 2);
      v232 = v283 + (v214 >> 2);
      v299 = (v283 >> 2) - v214;
      v233 = v303 + ((v277 - v255) << 16 >> 18);
      v301 = (v303 >> 2) - (v277 - v255);
      v234 = v306 + (v281 >> 2);
      v304 = (v306 >> 2) - v281;
      v235 = v309 + (v215 >> 2);
      v307 = (v309 >> 2) - v215;
      v236 = v316 + (v216 >> 2);
      v310 = (v316 >> 2) - v216;
      v320 = v346 + (v217 >> 2);
      v237 = (v346 >> 2) - v217;
      v291 = v392 + v360;
      v238 = v253 + (v252 >> 1);
      v239 = v258 + (v256 >> 1);
      v317 = v286 + v392 - v360;
      v338 = v392 - v360 - v286;
      v393 = v220 - v234;
      *v395 = (((v412 + v291) << 16) + 0x200000) >> 22;
      v395[1] = (((v400 + v390 + v238) << 16) + 0x200000) >> 22;
      v395[2] = (((v297 + v386 + v239) << 16) + 0x200000) >> 22;
      v395[3] = (((v402 + v382 + v289) << 16) + 0x200000) >> 22;
      v395[4] = (((v410 + v378 + v388) << 16) + 0x200000) >> 22;
      v395[5] = (((v404 + v373 + v380) << 16) + 0x200000) >> 22;
      v395[6] = (((v294 + v371 + v275) << 16) + 0x200000) >> 22;
      v395[7] = (((v407 + v366 + v266) << 16) + 0x200000) >> 22;
      v395[16] = (((v326 + v344) << 16) + 0x200000) >> 22;
      v395[17] = (((v329 + v341) << 16) + 0x200000) >> 22;
      v395[18] = (((v299 + v349) << 16) + 0x200000) >> 22;
      v395[19] = (((v301 + v358) << 16) + 0x200000) >> 22;
      v395[20] = (((v304 + v353) << 16) + 0x200000) >> 22;
      v395[21] = (((v307 + v363) << 16) + 0x200000) >> 22;
      v395[22] = (((v310 + v369) << 16) + 0x200000) >> 22;
      v395[23] = (((v237 + v376) << 16) + 0x200000) >> 22;
      v395[32] = (((v223 + v279) << 16) + 0x200000) >> 22;
      v395[33] = (((v224 + v264) << 16) + 0x200000) >> 22;
      v395[34] = (((v232 + v262) << 16) + 0x200000) >> 22;
      v395[35] = (((v233 + v260) << 16) + 0x200000) >> 22;
      v395[36] = (((v234 + v220) << 16) + 0x200000) >> 22;
      v395[37] = (((v235 + v221) << 16) + 0x200000) >> 22;
      v395[38] = (((v236 + v222) << 16) + 0x200000) >> 22;
      v395[39] = (((v320 + v384) << 16) + 0x200000) >> 22;
      v395[48] = ((v317 << 16) + 0x200000) >> 22;
      v395[49] = (((v218 + v390 - v238) << 16) + 0x200000) >> 22;
      v395[50] = (((v219 + v386 - v239) << 16) + 0x200000) >> 22;
      v395[51] = (((v226 + v382 - v289) << 16) + 0x200000) >> 22;
      v395[52] = (((v228 + v378 - v388) << 16) + 0x200000) >> 22;
      v395[53] = (((v229 + v373 - v380) << 16) + 0x200000) >> 22;
      result = (v373 + v380 - v404);
      v395[54] = (((v230 + v371 - v275) << 16) + 0x200000) >> 22;
      v395[55] = (((v231 + v366 - v266) << 16) + 0x200000) >> 22;
      v395[64] = ((v338 << 16) + 0x200000) >> 22;
      v395[65] = (((v390 - v238 - v218) << 16) + 0x200000) >> 22;
      v395[66] = (((v386 - v239 - v219) << 16) + 0x200000) >> 22;
      v395[67] = (((v382 - v289 - v226) << 16) + 0x200000) >> 22;
      v395[68] = (((v378 - v388 - v228) << 16) + 0x200000) >> 22;
      v395[69] = (((v373 - v380 - v229) << 16) + 0x200000) >> 22;
      v395[70] = (((v371 - v275 - v230) << 16) + 0x200000) >> 22;
      v395[71] = (((v366 - v266 - v231) << 16) + 0x200000) >> 22;
      v395[80] = (((v279 - v223) << 16) + 0x200000) >> 22;
      v395[81] = (((v264 - v224) << 16) + 0x200000) >> 22;
      v395[82] = (((v262 - v232) << 16) + 0x200000) >> 22;
      v395[83] = (((v260 - v233) << 16) + 0x200000) >> 22;
      v395[84] = ((v393 << 16) + 0x200000) >> 22;
      v395[85] = (((v221 - v235) << 16) + 0x200000) >> 22;
      v395[86] = (((v222 - v236) << 16) + 0x200000) >> 22;
      v395[87] = (((v384 - v320) << 16) + 0x200000) >> 22;
      v395[96] = (((v344 - v326) << 16) + 0x200000) >> 22;
      v395[97] = (((v341 - v329) << 16) + 0x200000) >> 22;
      v395[98] = (((v349 - v299) << 16) + 0x200000) >> 22;
      v395[99] = (((v358 - v301) << 16) + 0x200000) >> 22;
      v395[100] = (((v353 - v304) << 16) + 0x200000) >> 22;
      v395[101] = (((v363 - v307) << 16) + 0x200000) >> 22;
      v395[102] = (((v369 - v310) << 16) + 0x200000) >> 22;
      v395[103] = (((v376 - v237) << 16) + 0x200000) >> 22;
      v395[112] = (((v291 - v412) << 16) + 0x200000) >> 22;
      v395[113] = (((v390 + v238 - v400) << 16) + 0x200000) >> 22;
      v395[114] = (((v386 + v239 - v297) << 16) + 0x200000) >> 22;
      v395[115] = (((v382 + v289 - v402) << 16) + 0x200000) >> 22;
      v395[116] = (((v378 + v388 - v410) << 16) + 0x200000) >> 22;
      v395[117] = ((result << 16) + 0x200000) >> 22;
      v395[118] = (((v371 + v275 - v294) << 16) + 0x200000) >> 22;
      v395[119] = (((v366 + v266 - v407) << 16) + 0x200000) >> 22;
      v9 = v394;
      v4 = v397;
      v11 = v244;
      v14 = v396;
    }

    v4 >>= 1;
    ++v14;
  }

  while (v14 != 4);
  return result;
}

uint64_t sub_277374B80(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = *(v3 + 52);
  v5 = *(v3 + 55);
  v6 = *(result + 56);
  v7 = *(result + 1422192);
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v8 = v5;
  v9 = v5 / 6u;
  v10 = v5 % 6u;
  v232 = (&unk_2773B6180 + 128 * v10);
  v234 = (a3 + (v10 << 7));
  v237 = v7;
  if (v7)
  {
    if (v8 >= 0x24)
    {
      v233 = 0;
      v11 = (v9 - 6);
      v13 = 0;
      goto LABEL_7;
    }

    v11 = 0;
    v12 = vsub_s32(0x600000005, vdup_n_s32(v9));
    v13.i32[0] = vshl_u32(0x100000001, v12).u32[0];
    v13.i32[1] = v12.u16[2];
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v9 -= 2;
  }

  v233 = 1;
LABEL_7:
  v14 = 0;
  v235 = v6 + 32;
  v15 = vdupq_n_s32(v11);
  v16 = vdupq_lane_s32(v13, 0);
  v17 = vnegq_s32(vdupq_lane_s32(v13, 1));
  v236 = v11;
  do
  {
    if (v4)
    {
      v382 = a2 + word_2773B6170[v14];
      v18 = (v235 + (v14 << 7));
      v400 = *(v18 + 1);
      v19 = v18[4];
      v401.val[1] = v18[6];
      v24 = v18[7];
      v20 = v18[5];
      v399.val[1] = vextq_s8(vuzp2q_s32(v401.val[1], v401.val[1]), v24, 4uLL);
      v399.val[0] = vqtbl2q_s8(*(&v20 - 1), xmmword_2773B5990);
      v21 = vqtbl2q_s8(v399, xmmword_2773B5850);
      v399.val[1] = vqtbl2q_s8(*(&v20 - 1), xmmword_2773B59A0);
      v22 = v18[1];
      v399.val[0] = vqtbl2q_s8(v400, xmmword_2773B59B0);
      v23 = vqtbl2q_s8(v399, xmmword_2773B5850);
      v24.i32[0] = *(v18 + 13);
      v25 = *v18;
      v26 = vqtbl2q_s8(*(&v22 - 1), xmmword_2773B59C0);
      v27 = vqtbl2q_s8(*(&v22 - 1), xmmword_2773B59D0);
      v28 = vqtbl2q_s8(v400, xmmword_2773B59E0);
      v29 = v400.val[0];
      v30.i64[0] = vqtbl2q_s8(*&v22, xmmword_2773B59F0).u64[0];
      v30.i64[1] = *(v18 + 6);
      v31 = v19;
      v402.val[0] = vqtbl2q_s8(*(&v400 + 16), xmmword_2773B59B0);
      v402.val[1] = v20;
      v401.val[0] = vqtbl2q_s8(v402, xmmword_2773B5A00);
      v32 = vqtbl2q_s8(v401, xmmword_2773B5A10);
      v33 = vqtbl2q_s8(*&v22, xmmword_2773B5A20);
      v33.i16[3] = *(v18 + 7);
      v33.i64[1] = *(v18 + 8);
      if (v237)
      {
        v34 = v11;
      }

      else
      {
        v34 = v9;
      }

      v381 = v34;
      v384 = v4;
      v383 = v14;
      if (v237)
      {
        v35 = v234[3];
        v36 = v234[4];
        v37 = v234[1];
        v38 = v234[2];
        v39 = v234[5];
        v40 = v234[6];
        v41 = v234[7];
        v20.i32[0] = v234->i32[1];
        LODWORD(v22) = v234->i32[0];
        *v42.i8 = vzip1_s32(*&v22, *v20.i8);
        v42.i64[1] = v234->i64[1];
        if (v233)
        {
          v43 = vmlal_high_s16(v16, v41, v24);
          v44 = vmlal_s16(v16, *v41.i8, *v24.i8);
          v45 = vmlal_high_s16(v16, v40, v21);
          v46 = vmlal_s16(v16, *v40.i8, *v21.i8);
          v47 = vmlal_high_s16(v16, v39, v32);
          v48 = vmlal_s16(v16, *v39.i8, *v32.i8);
          v49 = vmlal_high_s16(v16, v36, v23);
          v50 = vmlal_s16(v16, *v36.i8, *v23.i8);
          v51 = vmlal_high_s16(v16, v38, v30);
          v52 = vmlal_s16(v16, *v38.i8, *v30.i8);
          v53 = vmlal_high_s16(v16, v37, v28);
          v54 = vmlal_s16(v16, *v37.i8, *v28.i8);
          v55 = vshlq_s32(vmlal_high_s16(v16, v42, v26), v17);
          v56 = vshlq_s32(vmlal_s16(v16, *v42.i8, *v26.i8), v17);
          v57 = vshlq_s32(v54, v17);
          v58 = vshlq_s32(v53, v17);
          v59 = vshlq_s32(v52, v17);
          v60 = vshlq_s32(v51, v17);
          v61 = vshlq_s32(vmlal_s16(v16, *v35.i8, *v33.i8), v17);
          v62 = vshlq_s32(vmlal_high_s16(v16, v35, v33), v17);
          v63 = vshlq_s32(v50, v17);
          v64 = vshlq_s32(v49, v17);
          v65 = vshlq_s32(v48, v17);
          v66 = vshlq_s32(v47, v17);
          v67 = vshlq_s32(v46, v17);
          v68 = vshlq_s32(v45, v17);
          v69 = vshlq_s32(v44, v17);
          v70 = vshlq_s32(v43, v17);
        }

        else
        {
          v88 = vmull_high_u16(v41, v24);
          v89 = vmull_u16(*v41.i8, *v24.i8);
          v90 = vmull_high_u16(v40, v21);
          v91 = vmull_u16(*v40.i8, *v21.i8);
          v92 = vmull_high_u16(v39, v32);
          v93 = vmull_u16(*v39.i8, *v32.i8);
          v94 = vmull_u16(*v37.i8, *v28.i8);
          v95 = vmull_high_u16(v37, v28);
          v55 = vshlq_u32(vmull_high_u16(v42, v26), v15);
          v56 = vshlq_u32(vmull_u16(*v42.i8, *v26.i8), v15);
          v58 = vshlq_u32(v95, v15);
          v57 = vshlq_u32(v94, v15);
          v59 = vshlq_u32(vmull_u16(*v38.i8, *v30.i8), v15);
          v60 = vshlq_u32(vmull_high_u16(v38, v30), v15);
          v61 = vshlq_u32(vmull_u16(*v35.i8, *v33.i8), v15);
          v62 = vshlq_u32(vmull_high_u16(v35, v33), v15);
          v63 = vshlq_u32(vmull_u16(*v36.i8, *v23.i8), v15);
          v64 = vshlq_u32(vmull_high_u16(v36, v23), v15);
          v65 = vshlq_u32(v93, v15);
          v66 = vshlq_u32(v92, v15);
          v67 = vshlq_u32(v91, v15);
          v68 = vshlq_u32(v90, v15);
          v69 = vshlq_u32(v89, v15);
          v70 = vshlq_u32(v88, v15);
        }
      }

      else
      {
        v72 = v232[6];
        v71 = v232[7];
        v73 = vmull_u16(*v71.i8, *v24.i8);
        v74 = vmull_u16(*v72.i8, *v21.i8);
        v75 = vmull_high_u16(v71, v24);
        v77 = v232[4];
        v76 = v232[5];
        v79 = v232[2];
        v78 = v232[3];
        v80 = vmull_u16(*v76.i8, *v32.i8);
        v81 = vmull_high_u16(v72, v21);
        v82 = vmull_u16(*v77.i8, *v23.i8);
        v83 = v232[1];
        v84 = vmull_high_u16(v76, v32);
        v85 = vmull_high_u16(v77, v23);
        v86 = vmull_u16(*v232->i8, *v26.i8);
        v87 = vdupq_n_s32(v9);
        v58 = vshlq_u32(vmull_high_u16(v83, v28), v87);
        v55 = vshlq_u32(vmull_high_u16(*v232, v26), v87);
        v60 = vshlq_u32(vmull_high_u16(v79, v30), v87);
        v57 = vshlq_u32(vmull_u16(*v83.i8, *v28.i8), v87);
        v56 = vshlq_u32(v86, v87);
        v62 = vshlq_u32(vmull_high_u16(v78, v33), v87);
        v59 = vshlq_u32(vmull_u16(*v79.i8, *v30.i8), v87);
        v64 = vshlq_u32(v85, v87);
        v61 = vshlq_u32(vmull_u16(*v78.i8, *v33.i8), v87);
        v66 = vshlq_u32(v84, v87);
        v63 = vshlq_u32(v82, v87);
        v68 = vshlq_u32(v81, v87);
        v65 = vshlq_u32(v80, v87);
        v70 = vshlq_u32(v75, v87);
        v67 = vshlq_u32(v74, v87);
        v69 = vshlq_u32(v73, v87);
      }

      v96 = v65.i32[0] - (v69.i32[0] + (v69.i16[0] >> 1) + v61.i32[0]);
      v97 = v61.i32[0] + v65.i32[0] + v57.i32[0] + (v57.i16[0] >> 1);
      v287 = v96 + (v97 >> 2);
      v392 = v97 - (v96 >> 2);
      v98 = (v59.i16[4] >> 1) - v67.i32[2];
      v99 = (v59.i16[6] >> 1) - v67.i32[3];
      v100 = v60.i32[0] + (v68.i16[0] >> 1);
      v101 = (v60.i16[0] >> 1) - v68.i32[0];
      v102 = v60.i32[1] + (v68.i16[2] >> 1);
      v103 = (v60.i16[2] >> 1) - v68.i32[1];
      v104 = v60.i32[2] + (v68.i16[4] >> 1);
      v105 = (v60.i16[4] >> 1) - v68.i32[2];
      v106 = v60.i32[3] + (v68.i16[6] >> 1);
      v107 = (v60.i16[6] >> 1) - v68.i32[3];
      v108 = v69.i32[0] - (v61.i32[0] + (v61.i16[0] >> 1)) + v57.i32[0];
      v109 = v65.i32[0] + v69.i32[0] + (v65.i16[0] >> 1) - v57.i32[0];
      v110 = v61.i32[1] + v65.i32[1] + v57.i32[1] + (v57.i16[2] >> 1);
      v111 = v65.i32[1] - (v69.i32[1] + (v69.i16[2] >> 1)) - v61.i32[1];
      v270 = v111 + (v110 >> 2);
      v315 = v110 - (v111 >> 2);
      v112 = v69.i32[1] - (v61.i32[1] + (v61.i16[2] >> 1)) + v57.i32[1];
      v113 = v65.i32[1] + v69.i32[1] + (v65.i16[2] >> 1) - v57.i32[1];
      v114 = v69.i32[2] - (v61.i32[2] + (v61.i16[4] >> 1)) + v57.i32[2];
      v115 = v65.i32[2] + v69.i32[2] + (v65.i16[4] >> 1) - v57.i32[2];
      v116 = v69.i32[3] - (v61.i32[3] + (v61.i16[6] >> 1)) + v57.i32[3];
      v117 = v65.i32[3] + v69.i32[3] + (v65.i16[6] >> 1) - v57.i32[3];
      v118 = v70.i32[0] - (v62.i32[0] + (v62.i16[0] >> 1)) + v58.i32[0];
      v119 = v66.i32[0] + v70.i32[0] + (v66.i16[0] >> 1) - v58.i32[0];
      v120 = v70.i32[1] - (v62.i32[1] + (v62.i16[2] >> 1)) + v58.i32[1];
      v121 = v66.i32[1] + v70.i32[1] + (v66.i16[2] >> 1) - v58.i32[1];
      v122 = v70.i32[2] - (v62.i32[2] + (v62.i16[4] >> 1)) + v58.i32[2];
      v123 = v66.i32[2] + v70.i32[2] + (v66.i16[4] >> 1) - v58.i32[2];
      v124 = v70.i32[3] - (v62.i32[3] + (v62.i16[6] >> 1)) + v58.i32[3];
      v125 = v66.i32[3] + v70.i32[3] + (v66.i16[6] >> 1) - v58.i32[3];
      v126 = (v59.i16[0] >> 1) - v67.i32[0];
      v388 = v56.i32[0] - v63.i32[0] + v126;
      v370 = v56.i32[0] - v63.i32[0] - v126;
      v127 = (v59.i16[2] >> 1) - v67.i32[1];
      v338 = v56.i32[1] - v63.i32[1] + v127;
      v345 = v56.i32[1] - v63.i32[1] - v127;
      v385 = v56.i32[2] - v63.i32[2] + v98;
      v367 = v56.i32[2] - v63.i32[2] - v98;
      v328 = v56.i32[3] - v63.i32[3] + v99;
      v343 = v56.i32[3] - v63.i32[3] - v99;
      v379 = v55.i32[0] - v64.i32[0] + v101;
      v365 = v55.i32[0] - v64.i32[0] - v101;
      v128 = v55.i32[1] - v64.i32[1] + v103;
      v129 = v55.i32[1] - v64.i32[1] - v103;
      v374 = v55.i32[2] - v64.i32[2] + v105;
      v362 = v55.i32[2] - v64.i32[2] - v105;
      v292 = v55.i32[3] - v64.i32[3] + v107;
      v130 = v55.i32[3] - v64.i32[3] - v107;
      v355 = v108 + (v109 >> 2);
      v360 = (v108 >> 2) - v109;
      v311 = v112 + (v113 >> 2);
      v303 = (v112 >> 2) - v113;
      v348 = v114 + (v115 >> 2);
      v358 = (v114 >> 2) - v115;
      v305 = v116 + (v117 >> 2);
      v301 = (v116 >> 2) - v117;
      v334 = v118 + (v119 >> 2);
      v353 = (v118 >> 2) - v119;
      v131 = v120 + (v121 >> 2);
      v132 = (v120 >> 2) - v121;
      v322 = v122 + (v123 >> 2);
      v340 = (v122 >> 2) - v123;
      v133 = v124 + (v125 >> 2);
      v134 = (v124 >> 2) - v125;
      v135 = v61.i32[2] + v65.i32[2] + v57.i32[2] + (v57.i16[4] >> 1);
      v136 = v65.i32[2] - (v69.i32[2] + (v69.i16[4] >> 1)) - v61.i32[2];
      v137 = v136 + (v135 >> 2);
      v331 = v135 - (v136 >> 2);
      v138 = v59.i32[0] + (v67.i16[0] >> 1);
      v326 = v56.i32[0] + v63.i32[0] + v138;
      v139 = v56.i32[0] + v63.i32[0] - v138;
      v140 = v59.i32[1] + (v67.i16[2] >> 1);
      v284 = v56.i32[1] + v63.i32[1] + v140;
      v141 = v56.i32[1] + v63.i32[1] - v140;
      v142 = v59.i32[2] + (v67.i16[4] >> 1);
      v324 = v56.i32[2] + v63.i32[2] + v142;
      v143 = v56.i32[2] + v63.i32[2] - v142;
      v144 = v61.i32[3] + v65.i32[3] + v57.i32[3] + (v57.i16[6] >> 1);
      v145 = v65.i32[3] - (v69.i32[3] + (v69.i16[6] >> 1)) - v61.i32[3];
      v146 = v145 + (v144 >> 2);
      v282 = v144 - (v145 >> 2);
      v147 = v59.i32[3] + (v67.i16[6] >> 1);
      v280 = v56.i32[3] + v63.i32[3] + v147;
      v148 = v56.i32[3] + v63.i32[3] - v147;
      v313 = v55.i32[0] + v64.i32[0] + v100;
      v149 = v55.i32[0] + v64.i32[0] - v100;
      v150 = v55.i32[1] + v64.i32[1] + v102;
      v151 = v55.i32[1] + v64.i32[1] - v102;
      v152 = v62.i32[0] + v66.i32[0] + v58.i32[0] + (v58.i16[0] >> 1);
      v153 = v66.i32[0] - (v70.i32[0] + (v70.i16[0] >> 1) + v62.i32[0]);
      v154 = v153 + (v152 >> 2);
      v307 = v152 - (v153 >> 2);
      v155 = v62.i32[2] + v66.i32[2] + v58.i32[2] + (v58.i16[4] >> 1);
      v308 = v55.i32[2] + v64.i32[2] + v104;
      v156 = v55.i32[2] + v64.i32[2] - v104;
      v157 = v55.i32[3] + v64.i32[3] + v106;
      v158 = v55.i32[3] + v64.i32[3] - v106;
      v160 = v66.i32[2] - (v70.i32[2] + (v70.i16[4] >> 1)) - v62.i32[2];
      v159 = v62.i32[1] + v66.i32[1] + v58.i32[1] + (v58.i16[2] >> 1);
      v161 = v66.i32[1] - (v70.i32[1] + (v70.i16[2] >> 1)) - v62.i32[1];
      v162 = v161 + (v159 >> 2);
      v163 = v159 - (v161 >> 2);
      v164 = v160 + (v155 >> 2);
      v299 = v155 - (v160 >> 2);
      v165 = v62.i32[3] + v66.i32[3] + v58.i32[3] + (v58.i16[6] >> 1);
      v166 = v66.i32[3] - (v70.i32[3] + (v70.i16[6] >> 1)) - v62.i32[3];
      v167 = v166 + (v165 >> 2);
      v168 = v165 - (v166 >> 2);
      v351 = v139 + v287;
      v336 = v139 - v287;
      v376 = v143 + v137;
      v390 = v143 - v137;
      v239 = v148 - v146;
      v317 = v149 + v154;
      v320 = v149 - v154;
      v397 = v157 + v168;
      v243 = v150 + v163;
      v278 = v150 + v163 + v157 + v168 + ((v150 + v163) << 16 >> 17);
      v169 = v128 + v132;
      v395 = v292 + v134;
      v277 = v128 + v132 + v292 + v134 + ((v128 + v132) << 16 >> 17);
      v275 = v129 + v131 + v130 + v133 + ((v129 + v131) << 16 >> 17);
      v261 = v158 + v167;
      v262 = v158 - v167;
      v240 = v151 + v162;
      v241 = v151 - v162;
      v274 = v240 + v158 + v167 + (v240 >> 1);
      v259 = v130 - v133;
      v170 = v128 - v132;
      v273 = v241 + v158 - v167 + (v241 >> 1);
      v297 = v129 - v131 + v130 - v133 + ((v129 - v131) << 16 >> 17);
      v255 = v157 - v168;
      v256 = v292 - v134;
      v171 = v170 + v292 - v134 + (v170 >> 1);
      v257 = v150 - v163;
      v293 = v150 - v163 + v157 - v168 + ((v150 - v163) << 16 >> 17);
      v295 = v171;
      v266 = v284 + v315;
      v267 = v280 + v282 + v150 + v163 + v284 + v315 + ((v284 + v315) << 16 >> 17);
      v254 = v338 + v303;
      v172 = v328 + v301;
      v288 = v328 + v301 + v169 + v338 + v303 + ((v338 + v303) << 16 >> 17);
      v252 = v345 + v311;
      v173 = v343 + v305;
      v290 = v343 + v305 + v129 + v131 + v345 + v311 + ((v345 + v311) << 16 >> 17);
      v174 = v345 - v311;
      v175 = v148 + v146;
      v249 = v141 - v270;
      v250 = v141 + v270;
      v312 = v148 + v146 + v240 + v250 + (v250 >> 1);
      v176 = v343 - v305;
      v344 = v148 - v146 + v241 + v249 + (v249 >> 1);
      v248 = v174;
      v306 = v176 + v129 - v131 + v174 + (v174 >> 1);
      v177 = v370 + v355;
      v244 = v370 - v355;
      v253 = v367 + v348;
      v268 = v367 - v348;
      v178 = v365 + v334;
      v179 = v365 - v334;
      v251 = v362 + v322;
      v264 = v362 - v322;
      v180 = v388 - v360;
      v242 = v338 - v303;
      v247 = v385 + v358;
      v263 = v385 - v358;
      v181 = v328 - v301;
      v182 = v379 + v353;
      v183 = v379 - v353;
      v246 = v374 + v340;
      v341 = v374 - v340;
      v184 = v326 + v392;
      v185 = v326 - v392;
      v245 = v324 + v331;
      v332 = v324 - v331;
      v186 = v308 + v299;
      v329 = v308 - v299;
      v346 = v243 - (v280 + v282) - (v397 + (v397 >> 1));
      v363 = v169 - v172 - (v395 + (v395 >> 1));
      v187 = v130 + v133;
      v371 = v129 + v131 - v173 - (v187 + (v187 >> 1));
      v393 = v240 - v175 - (v261 + (v261 >> 1));
      v386 = v129 - v131 - v176 - (v259 + (v259 >> 1));
      v339 = v170 - v181 - (v256 + (v256 >> 1));
      v335 = v257 - (v280 - v282) - (v255 + (v255 >> 1));
      v380 = v184 + v313 + v307;
      v356 = v184 - (v313 + v307);
      v188 = v181 + (v181 >> 1);
      v189 = v284 - v315;
      v327 = v181 + v170 + v242 + (v242 >> 1);
      v375 = v388 + v360 + v182;
      v190 = v388 + v360 - v182;
      v368 = v177 + v178;
      v191 = v177 - v178;
      v192 = v280 - v282 + ((v280 - v282) << 16 >> 17);
      v323 = v280 - v282 + v257 + v284 - v315 + ((v284 - v315) << 16 >> 17);
      v366 = v351 + v317;
      v193 = v351 - v317;
      v361 = v336 + v320;
      v194 = v336 - v320;
      v359 = v244 + v179;
      v354 = v180 + v183;
      v195 = v180 - v183;
      v349 = v185 + v313 - v307;
      v285 = v185 - (v313 - v307);
      v318 = v397 + v266 - (v280 + v282 + ((v280 + v282) << 16 >> 17));
      v196 = v395 + v254 - (v172 + (v172 >> 1));
      v271 = v187 + v252 - (v173 + (v173 >> 1));
      v283 = v261 + v250 - (v175 + (v175 >> 1));
      v304 = v259 + v248 - (v176 + (v176 >> 1));
      v309 = v256 + v242 - v188;
      v321 = v255 + v189 - v192;
      v325 = v245 + (v186 >> 1);
      v197 = (v245 >> 1) - v186;
      v198 = (v247 >> 1) - v246;
      v199 = (v253 >> 1) - v251;
      v281 = v376 + ((v156 + v164) >> 1);
      v200 = (v376 >> 1) - (v156 + v164);
      v377 = v390 + ((v156 - v164) >> 1);
      v201 = (v390 >> 1) - (v156 - v164);
      v373 = v268 + (v264 >> 1);
      v202 = (v268 >> 1) - v264;
      v369 = v263 + (v341 >> 1);
      v203 = (v263 >> 1) - v341;
      v269 = v332 + (v329 >> 1);
      v204 = (v332 >> 1) - v329;
      v205 = v278 - v266;
      v206 = v275 - v252;
      v279 = v346 + (v267 >> 2);
      v398 = v267 - (v346 >> 2);
      v207 = v295 - v242;
      v208 = v293 - v189;
      v333 = v356 + v197;
      v276 = v356 - v197;
      v209 = v363 + (v288 >> 2);
      v300 = v288 - (v363 >> 2);
      v330 = v190 + v198;
      v210 = v190 - v198;
      v337 = v191 + v199;
      v260 = v191 - v199;
      v347 = v193 + v200;
      v258 = v193 - v200;
      v211 = v371 + (v290 >> 2);
      v396 = v290 - (v371 >> 2);
      v342 = v194 + v201;
      v212 = v194 - v201;
      v352 = v244 - v179 + v202;
      v213 = v244 - v179 - v202;
      v357 = v195 + v203;
      v214 = v195 - v203;
      v364 = v285 + v204;
      v372 = v285 - v204;
      v215 = v318 + (v205 >> 2);
      v316 = (v318 >> 2) - v205;
      v216 = v196 + ((v277 - v254) >> 2);
      v319 = (v196 >> 2) - (v277 - v254);
      v217 = v393 + (v312 >> 2);
      v394 = v312 - (v393 >> 2);
      v218 = v241 - v239 - (v262 + (v262 >> 1));
      v219 = v218 + (v344 >> 2);
      v286 = v344 - (v218 >> 2);
      v220 = v386 + (v306 >> 2);
      v387 = v306 - (v386 >> 2);
      v221 = v339 + (v327 >> 2);
      v389 = v327 - (v339 >> 2);
      v222 = v335 + (v323 >> 2);
      v391 = v323 - (v335 >> 2);
      v223 = v271 + (v206 >> 2);
      v289 = (v271 >> 2) - v206;
      v224 = v283 + ((v274 - v250) << 16 >> 18);
      v291 = (v283 >> 2) - (v274 - v250);
      v225 = v262 + v249 - (v239 + (v239 >> 1));
      v226 = v225 + ((v273 - v249) << 16 >> 18);
      v294 = (v225 >> 2) - (v273 - v249);
      v227 = v304 + ((v297 - v248) << 16 >> 18);
      v296 = (v304 >> 2) - (v297 - v248);
      v228 = v309 + (v207 >> 2);
      v298 = (v309 >> 2) - v207;
      v310 = v321 + (v208 >> 2);
      v302 = (v321 >> 2) - v208;
      v229 = v247 + (v246 >> 1);
      v230 = v253 + (v251 >> 1);
      v265 = v361 + v377;
      v272 = v349 + v269;
      v231 = v349 - v269;
      v314 = v219 + v361 - v377;
      v350 = v361 - v377 - v219;
      v378 = v258 - v224;
      *v382 = (((v398 + v380 + v325) << 16) + 0x200000) >> 22;
      v382[1] = (((v300 + v375 + v229) << 16) + 0x200000) >> 22;
      v382[2] = (((v396 + v368 + v230) << 16) + 0x200000) >> 22;
      v382[3] = (((v394 + v366 + v281) << 16) + 0x200000) >> 22;
      v382[4] = (((v286 + v265) << 16) + 0x200000) >> 22;
      v382[5] = (((v387 + v359 + v373) << 16) + 0x200000) >> 22;
      v382[6] = (((v389 + v354 + v369) << 16) + 0x200000) >> 22;
      v382[7] = (((v391 + v272) << 16) + 0x200000) >> 22;
      v382[16] = (((v316 + v333) << 16) + 0x200000) >> 22;
      v382[17] = (((v319 + v330) << 16) + 0x200000) >> 22;
      v382[18] = (((v289 + v337) << 16) + 0x200000) >> 22;
      v382[19] = (((v291 + v347) << 16) + 0x200000) >> 22;
      v382[20] = (((v294 + v342) << 16) + 0x200000) >> 22;
      v382[21] = (((v296 + v352) << 16) + 0x200000) >> 22;
      v382[22] = (((v298 + v357) << 16) + 0x200000) >> 22;
      v382[23] = (((v302 + v364) << 16) + 0x200000) >> 22;
      v382[32] = (((v215 + v276) << 16) + 0x200000) >> 22;
      v382[33] = (((v216 + v210) << 16) + 0x200000) >> 22;
      v382[34] = (((v223 + v260) << 16) + 0x200000) >> 22;
      v382[35] = (((v224 + v258) << 16) + 0x200000) >> 22;
      v382[36] = (((v226 + v212) << 16) + 0x200000) >> 22;
      v382[37] = (((v227 + v213) << 16) + 0x200000) >> 22;
      v382[38] = (((v228 + v214) << 16) + 0x200000) >> 22;
      v382[39] = (((v310 + v372) << 16) + 0x200000) >> 22;
      v382[48] = (((v279 + v380 - v325) << 16) + 0x200000) >> 22;
      v382[49] = (((v209 + v375 - v229) << 16) + 0x200000) >> 22;
      v382[50] = (((v211 + v368 - v230) << 16) + 0x200000) >> 22;
      v382[51] = (((v217 + v366 - v281) << 16) + 0x200000) >> 22;
      v382[52] = ((v314 << 16) + 0x200000) >> 22;
      result = (v265 - v286);
      v382[53] = (((v220 + v359 - v373) << 16) + 0x200000) >> 22;
      v382[54] = (((v221 + v354 - v369) << 16) + 0x200000) >> 22;
      v382[55] = (((v222 + v231) << 16) + 0x200000) >> 22;
      v382[64] = (((v380 - v325 - v279) << 16) + 0x200000) >> 22;
      v382[65] = (((v375 - v229 - v209) << 16) + 0x200000) >> 22;
      v382[66] = (((v368 - v230 - v211) << 16) + 0x200000) >> 22;
      v382[67] = (((v366 - v281 - v217) << 16) + 0x200000) >> 22;
      v382[68] = ((v350 << 16) + 0x200000) >> 22;
      v382[69] = (((v359 - v373 - v220) << 16) + 0x200000) >> 22;
      v382[70] = (((v354 - v369 - v221) << 16) + 0x200000) >> 22;
      v382[71] = (((v231 - v222) << 16) + 0x200000) >> 22;
      v382[80] = (((v276 - v215) << 16) + 0x200000) >> 22;
      v382[81] = (((v210 - v216) << 16) + 0x200000) >> 22;
      v382[82] = (((v260 - v223) << 16) + 0x200000) >> 22;
      v382[83] = ((v378 << 16) + 0x200000) >> 22;
      v382[84] = (((v212 - v226) << 16) + 0x200000) >> 22;
      v382[85] = (((v213 - v227) << 16) + 0x200000) >> 22;
      v382[86] = (((v214 - v228) << 16) + 0x200000) >> 22;
      v382[87] = (((v372 - v310) << 16) + 0x200000) >> 22;
      v382[96] = (((v333 - v316) << 16) + 0x200000) >> 22;
      v382[97] = (((v330 - v319) << 16) + 0x200000) >> 22;
      v382[98] = (((v337 - v289) << 16) + 0x200000) >> 22;
      v382[99] = (((v347 - v291) << 16) + 0x200000) >> 22;
      v382[100] = (((v342 - v294) << 16) + 0x200000) >> 22;
      v382[101] = (((v352 - v296) << 16) + 0x200000) >> 22;
      v382[102] = (((v357 - v298) << 16) + 0x200000) >> 22;
      v382[103] = (((v364 - v302) << 16) + 0x200000) >> 22;
      v382[112] = (((v380 + v325 - v398) << 16) + 0x200000) >> 22;
      v382[113] = (((v375 + v229 - v300) << 16) + 0x200000) >> 22;
      v382[114] = (((v368 + v230 - v396) << 16) + 0x200000) >> 22;
      v382[115] = (((v366 + v281 - v394) << 16) + 0x200000) >> 22;
      v382[116] = ((result << 16) + 0x200000) >> 22;
      v382[117] = (((v359 + v373 - v387) << 16) + 0x200000) >> 22;
      v382[118] = (((v354 + v369 - v389) << 16) + 0x200000) >> 22;
      v382[119] = (((v272 - v391) << 16) + 0x200000) >> 22;
      v9 = v381;
      v4 = v384;
      v11 = v236;
      v14 = v383;
    }

    v4 >>= 1;
    ++v14;
  }

  while (v14 != 4);
  return result;
}

uint64_t sub_27737677C(uint64_t result, _OWORD *a2)
{
  v2 = 0;
  v66 = *MEMORY[0x277D85DE8];
  v3 = *(result + 40);
  v4 = *(v3 + 52);
  v5 = *(v3 + 55);
  do
  {
    v6 = v4 & 1;
    v4 >>= 1;
    *&v65[v2] = -v6;
    v2 += 4;
  }

  while (v2 != 16);
  v7 = *(result + 56);
  v8 = *(result + 1422192);
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  v9 = v5 / 6u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v10 = *&asc_2773B6110[16 * ((v5 % 6u) & 0x1F)];
  if (v8)
  {
    if (v5 >= 0x18)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v11 = v9 - 4;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      v13 = 1 << (3 - v9);
      v14 = (4 - v9);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v10 = vshlq_u16(v10, vdupq_n_s16(v9));
    v12 = 1;
  }

  v15 = 0;
  v16 = v13;
  v17 = vdupq_n_s16(v11);
  v18 = vdupq_n_s32(-v14);
  v19 = v7 + 5;
  do
  {
    if (*&v65[v15 * 2])
    {
      v20 = v19[-3];
      v21 = v19[-2];
      v22 = v19[-1];
      v69.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v20, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
      v69.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v21, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
      v23 = vqtbl2q_s8(v69, xmmword_2773B5790);
      v69.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v20, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
      v69.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v21, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
      v24 = vqtbl2q_s8(v69, xmmword_2773B57D0);
      v68.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v22, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
      v68.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v19, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
      v25 = vqtbl2q_s8(v68, xmmword_2773B5790);
      v68.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v22, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
      v68.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v19, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
      v26 = vqtbl2q_s8(v68, xmmword_2773B57D0);
      v27 = vmulq_s16(v23, v10);
      v28 = vmulq_s16(v24, v10);
      v29 = vmulq_s16(v25, v10);
      v30 = vmulq_s16(v26, v10);
      if (v8)
      {
        if (v12)
        {
          v16 = vqtbl1q_s8(v16, xmmword_2773B3DF0);
          v31 = vuzp2q_s16(vmull_s16(*v23.i8, *v10.i8), vmull_high_s16(v23, v10));
          v27 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v27, v31), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v27, v31), v16), v18));
          v32 = vuzp2q_s16(vmull_s16(*v24.i8, *v10.i8), vmull_high_s16(v24, v10));
          v28 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v28, v32), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v28, v32), v16), v18));
          v33 = vuzp2q_s16(vmull_s16(*v25.i8, *v10.i8), vmull_high_s16(v25, v10));
          v29 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v29, v33), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v29, v33), v16), v18));
          v34 = vuzp2q_s16(vmull_s16(*v26.i8, *v10.i8), vmull_high_s16(v26, v10));
          v30 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v30, v34), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v30, v34), v16), v18));
        }

        else
        {
          v27 = vshlq_u16(v27, v17);
          v28 = vshlq_u16(v28, v17);
          v29 = vshlq_u16(v29, v17);
          v30 = vshlq_u16(v30, v17);
        }
      }

      v35 = vaddq_s16(v29, xmmword_2773B57F0);
      v36 = vaddq_s16(v27, xmmword_2773B57F0);
      v37.i64[0] = v36.i64[0];
      v37.i64[1] = v35.i64[0];
      v38.i64[0] = v28.i64[0];
      v38.i64[1] = v30.i64[0];
      v39 = vzip2q_s64(v36, v35);
      v40 = vzip2q_s64(v28, v30);
      v41 = vaddq_s16(v37, v38);
      v42 = vsubq_s16(v37, v38);
      v43 = vsubq_s16(vshrq_n_s16(v39, 1uLL), v40);
      v44 = vsraq_n_s16(v39, v40, 1uLL);
      v45 = vaddq_s16(v41, v44);
      v46 = vaddq_s16(v42, v43);
      v47 = vsubq_s16(v42, v43);
      v48 = vsubq_s16(v41, v44);
      v49 = vzip1q_s16(v45, v47);
      v50 = vzip2q_s16(v45, v47);
      v51 = vzip2q_s16(v46, v48);
      v52 = vzip1q_s16(v46, v48);
      v53 = vzip1q_s16(v49, v52);
      v54 = vzip2q_s16(vdupq_lane_s64(v50.i64[0], 0), vdupq_lane_s64(v51.i64[0], 0));
      v55.i64[0] = v53.i64[0];
      v55.i64[1] = v54.i64[0];
      v56 = vzip2q_s64(v53, v54);
      v67.val[1] = vdupq_laneq_s64(v49, 1);
      v67.val[0] = vdupq_laneq_s64(v52, 1);
      v57 = vqtbl2q_s8(v67, xmmword_2773B4490);
      v58 = vzip2q_s16(v50, v51);
      v59 = vzip2q_s64(v57, v58);
      v57.i64[1] = v58.i64[0];
      v60 = (a2 + 2 * word_2773B6100[v15]);
      v61 = vaddq_s16(v55, v57);
      v62 = vsubq_s16(v55, v57);
      v63 = vsubq_s16(vshrq_n_s16(v56, 1uLL), v59);
      v64 = vsraq_n_s16(v56, v59, 1uLL);
      *v60 = vshrq_n_s16(vaddq_s16(v61, v64), 6uLL);
      v60[2] = vshrq_n_s16(vaddq_s16(v62, v63), 6uLL);
      v60[4] = vshrq_n_s16(vsubq_s16(v62, v63), 6uLL);
      v60[6] = vshrq_n_s16(vsubq_s16(v61, v64), 6uLL);
    }

    ++v15;
    v19 += 4;
  }

  while (v15 != 8);
  return result;
}

int8x16_t *sub_277376BD4(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v66 = *MEMORY[0x277D85DE8];
  v4 = result[51].u8[0];
  v5 = result[51].u8[2];
  do
  {
    v6 = v4 & 1;
    v4 >>= 1;
    *&v65[v3] = -v6;
    v3 += 4;
  }

  while (v3 != 16);
  *(a3 + 112) = 0u;
  v7 = (a3 + 112);
  v8 = *(v7 - 100);
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[10] = 0u;
  v7[11] = 0u;
  v7[12] = 0u;
  v7[13] = 0u;
  v7[14] = 0u;
  v7[15] = 0u;
  v7[16] = 0u;
  v7[17] = 0u;
  v7[18] = 0u;
  v7[19] = 0u;
  v7[20] = 0u;
  v7[21] = 0u;
  v7[22] = 0u;
  v7[23] = 0u;
  v7[24] = 0u;
  v7[25] = 0u;
  v7[26] = 0u;
  v7[27] = 0u;
  v7[28] = 0u;
  v9 = v5 / 6u;
  v7[29] = 0u;
  v7[30] = 0u;
  v7[31] = 0u;
  v10 = *&asc_2773B6110[16 * ((v5 % 6u) & 0x1F)];
  if (v8)
  {
    if (v5 >= 0x18)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v11 = v9 - 4;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      v13 = 1 << (3 - v9);
      v14 = (4 - v9);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v10 = vshlq_u16(v10, vdupq_n_s16(v9));
    v12 = 1;
  }

  v15 = 0;
  v16 = v13;
  v17 = vdupq_n_s16(v11);
  v18 = vdupq_n_s32(-v14);
  v19 = result + 5;
  do
  {
    if (*&v65[v15 * 2])
    {
      v20 = v19[-3];
      v21 = v19[-2];
      v22 = v19[-1];
      v69.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v20, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
      v69.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v21, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
      v23 = vqtbl2q_s8(v69, xmmword_2773B5790);
      v69.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v20, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
      v69.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v21, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
      v24 = vqtbl2q_s8(v69, xmmword_2773B57D0);
      v68.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v22, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
      v68.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v19, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
      v25 = vqtbl2q_s8(v68, xmmword_2773B5790);
      v68.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v22, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
      v68.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v19, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
      v26 = vqtbl2q_s8(v68, xmmword_2773B57D0);
      v27 = vmulq_s16(v23, v10);
      v28 = vmulq_s16(v24, v10);
      v29 = vmulq_s16(v25, v10);
      v30 = vmulq_s16(v26, v10);
      if (v8)
      {
        if (v12)
        {
          v16 = vqtbl1q_s8(v16, xmmword_2773B3DF0);
          v31 = vuzp2q_s16(vmull_s16(*v23.i8, *v10.i8), vmull_high_s16(v23, v10));
          v27 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v27, v31), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v27, v31), v16), v18));
          v32 = vuzp2q_s16(vmull_s16(*v24.i8, *v10.i8), vmull_high_s16(v24, v10));
          v28 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v28, v32), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v28, v32), v16), v18));
          v33 = vuzp2q_s16(vmull_s16(*v25.i8, *v10.i8), vmull_high_s16(v25, v10));
          v29 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v29, v33), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v29, v33), v16), v18));
          v34 = vuzp2q_s16(vmull_s16(*v26.i8, *v10.i8), vmull_high_s16(v26, v10));
          v30 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v30, v34), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v30, v34), v16), v18));
        }

        else
        {
          v27 = vshlq_u16(v27, v17);
          v28 = vshlq_u16(v28, v17);
          v29 = vshlq_u16(v29, v17);
          v30 = vshlq_u16(v30, v17);
        }
      }

      v35 = vaddq_s16(v29, xmmword_2773B57F0);
      v36 = vaddq_s16(v27, xmmword_2773B57F0);
      v37.i64[0] = v36.i64[0];
      v37.i64[1] = v35.i64[0];
      v38.i64[0] = v28.i64[0];
      v38.i64[1] = v30.i64[0];
      v39 = vzip2q_s64(v36, v35);
      v40 = vzip2q_s64(v28, v30);
      v41 = vaddq_s16(v37, v38);
      v42 = vsubq_s16(v37, v38);
      v43 = vsubq_s16(vshrq_n_s16(v39, 1uLL), v40);
      v44 = vsraq_n_s16(v39, v40, 1uLL);
      v45 = vaddq_s16(v41, v44);
      v46 = vaddq_s16(v42, v43);
      v47 = vsubq_s16(v42, v43);
      v48 = vsubq_s16(v41, v44);
      v49 = vzip1q_s16(v45, v47);
      v50 = vzip2q_s16(v45, v47);
      v51 = vzip2q_s16(v46, v48);
      v52 = vzip1q_s16(v46, v48);
      v53 = vzip1q_s16(v49, v52);
      v54 = vzip2q_s16(vdupq_lane_s64(v50.i64[0], 0), vdupq_lane_s64(v51.i64[0], 0));
      v55.i64[0] = v53.i64[0];
      v55.i64[1] = v54.i64[0];
      v56 = vzip2q_s64(v53, v54);
      v67.val[1] = vdupq_laneq_s64(v49, 1);
      v67.val[0] = vdupq_laneq_s64(v52, 1);
      v57 = vqtbl2q_s8(v67, xmmword_2773B4490);
      v58 = vzip2q_s16(v50, v51);
      v59 = vzip2q_s64(v57, v58);
      v57.i64[1] = v58.i64[0];
      v60 = (v7 + 2 * word_2773B6100[v15]);
      v61 = vaddq_s16(v55, v57);
      v62 = vsubq_s16(v55, v57);
      v63 = vsubq_s16(vshrq_n_s16(v56, 1uLL), v59);
      v64 = vsraq_n_s16(v56, v59, 1uLL);
      *v60 = vshrq_n_s16(vaddq_s16(v61, v64), 6uLL);
      v60[2] = vshrq_n_s16(vaddq_s16(v62, v63), 6uLL);
      v60[4] = vshrq_n_s16(vsubq_s16(v62, v63), 6uLL);
      v60[6] = vshrq_n_s16(vsubq_s16(v61, v64), 6uLL);
    }

    ++v15;
    v19 += 4;
  }

  while (v15 != 8);
  return result;
}

int16x8_t *sub_277377020(int16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v57 = *MEMORY[0x277D85DE8];
  v4 = result[51].u8[0];
  v5 = result[51].u8[2];
  do
  {
    v6 = v4 & 1;
    v4 >>= 1;
    *&v56[v3] = -v6;
    v3 += 4;
  }

  while (v3 != 16);
  *(a3 + 112) = 0u;
  v7 = (a3 + 112);
  v8 = *(v7 - 100);
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[10] = 0u;
  v7[11] = 0u;
  v7[12] = 0u;
  v7[13] = 0u;
  v7[14] = 0u;
  v7[15] = 0u;
  v7[16] = 0u;
  v7[17] = 0u;
  v7[18] = 0u;
  v7[19] = 0u;
  v7[20] = 0u;
  v7[21] = 0u;
  v7[22] = 0u;
  v7[23] = 0u;
  v7[24] = 0u;
  v7[25] = 0u;
  v7[26] = 0u;
  v7[27] = 0u;
  v7[28] = 0u;
  v9 = v5 / 6u;
  v7[29] = 0u;
  v7[30] = 0u;
  v7[31] = 0u;
  v10 = *&asc_2773B6110[16 * ((v5 % 6u) & 0x1F)];
  if (v8)
  {
    if (v5 >= 0x18)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v11 = v9 - 4;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      v13 = 1 << (3 - v9);
      v14 = (4 - v9);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v10 = vshlq_u16(v10, vdupq_n_s16(v9));
    v12 = 1;
  }

  v15 = 0;
  v16 = v13;
  v17 = vdupq_n_s16(v11);
  v18 = vdupq_n_s32(-v14);
  v19 = result + 5;
  v20.i64[0] = 0xFFFF00000000;
  v20.i64[1] = 0xFFFF00000000;
  do
  {
    if (*&v56[v15 * 2])
    {
      v21 = v19[-2];
      v22 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(v19[-3], v20), 0xCuLL), vandq_s8(v19[-3], xmmword_2773B56B0)), vextq_s8(vandq_s8(v19[-3], xmmword_2773B56C0), 0, 2uLL));
      v23 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(v19[-1], v20), 0xCuLL), vandq_s8(v19[-1], xmmword_2773B56B0)), vextq_s8(vandq_s8(v19[-1], xmmword_2773B56C0), 0, 2uLL));
      v24 = vmulq_s16(v22, v10);
      v25 = vmulq_s16(v21, v10);
      v26 = vmulq_s16(v23, v10);
      v27 = vmulq_s16(*v19, v10);
      if (v8)
      {
        if (v12)
        {
          v16 = vqtbl1q_s8(v16, xmmword_2773B3DF0);
          v28 = vuzp2q_s16(vmull_s16(*v22.i8, *v10.i8), vmull_high_s16(v22, v10));
          v24 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v24, v28), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v24, v28), v16), v18));
          v29 = vuzp2q_s16(vmull_s16(*v21.i8, *v10.i8), vmull_high_s16(v21, v10));
          v25 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v25, v29), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v25, v29), v16), v18));
          v30 = vuzp2q_s16(vmull_s16(*v23.i8, *v10.i8), vmull_high_s16(v23, v10));
          v26 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v26, v30), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v26, v30), v16), v18));
          v31 = vuzp2q_s16(vmull_s16(*v19->i8, *v10.i8), vmull_high_s16(*v19, v10));
          v27 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v27, v31), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v27, v31), v16), v18));
        }

        else
        {
          v24 = vshlq_u16(v24, v17);
          v25 = vshlq_u16(v25, v17);
          v26 = vshlq_u16(v26, v17);
          v27 = vshlq_u16(v27, v17);
        }
      }

      v32 = vaddq_s16(v26, xmmword_2773B57F0);
      v33 = vaddq_s16(v24, xmmword_2773B57F0);
      v34 = vzip2q_s64(v33, v32);
      v33.i64[1] = v32.i64[0];
      v32.i64[0] = v25.i64[0];
      v32.i64[1] = v27.i64[0];
      v35 = vzip2q_s64(v25, v27);
      v36 = vaddq_s16(v33, v32);
      v37 = vsubq_s16(v33, v32);
      v38 = vsubq_s16(vshrq_n_s16(v34, 1uLL), v35);
      v39 = vsraq_n_s16(v34, v35, 1uLL);
      v40 = vaddq_s16(v36, v39);
      v41 = vaddq_s16(v37, v38);
      v42 = vsubq_s16(v37, v38);
      v43 = vsubq_s16(v36, v39);
      v44 = vzip1q_s16(v40, v42);
      v45 = vzip2q_s16(v40, v42);
      v46 = vzip1q_s16(v41, v43);
      v47 = vzip2q_s16(v41, v43);
      v48 = vzip1q_s16(v44, v46);
      v49 = vzip2q_s16(vdupq_lane_s64(v45.i64[0], 0), vdupq_lane_s64(v47.i64[0], 0));
      v50 = vzip2q_s64(v48, v49);
      v48.i64[1] = v49.i64[0];
      v58.val[1] = vdupq_laneq_s64(v44, 1);
      v58.val[0] = vdupq_laneq_s64(v46, 1);
      v58.val[0] = vqtbl2q_s8(v58, xmmword_2773B4490);
      v51 = vzip2q_s16(v45, v47);
      v52 = vzip2q_s64(v58.val[0], v51);
      v58.val[0].i64[1] = v51.i64[0];
      v53 = (v7 + 2 * word_2773B6100[v15]);
      v54 = vaddq_s16(v48, v58.val[0]);
      v58.val[0] = vsubq_s16(v48, v58.val[0]);
      v58.val[1] = vsubq_s16(vshrq_n_s16(v50, 1uLL), v52);
      v55 = vsraq_n_s16(v50, v52, 1uLL);
      *v53 = vshrq_n_s16(vaddq_s16(v54, v55), 6uLL);
      v53[2] = vshrq_n_s16(vaddq_s16(v58.val[0], v58.val[1]), 6uLL);
      v53[4] = vshrq_n_s16(vsubq_s16(v58.val[0], v58.val[1]), 6uLL);
      v53[6] = vshrq_n_s16(vsubq_s16(v54, v55), 6uLL);
    }

    ++v15;
    v19 += 4;
  }

  while (v15 != 8);
  return result;
}

_WORD *sub_2773773C4(_WORD *result, double a2, double a3, int8x16_t a4, double a5, double a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a4.i32[0] = 0;
  v10 = 0;
  v11 = *(result + 816);
  v12 = *(result + 818);
  v13.i32[1] = 0;
  v13.i64[1] = 0;
  *(a9 + 112) = 0u;
  v14 = (a9 + 112);
  v15 = *(v14 - 100);
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[16] = 0u;
  v14[17] = 0u;
  v14[18] = 0u;
  v14[19] = 0u;
  v14[20] = 0u;
  v14[21] = 0u;
  v14[22] = 0u;
  v14[23] = 0u;
  v14[24] = 0u;
  v14[25] = 0u;
  v14[26] = 0u;
  v16 = v12;
  v17 = v12 / 6u;
  v18 = v12 % 6u;
  v19 = (&unk_2773B6180 + 128 * v18);
  v20 = a10 + (v18 << 7);
  v21 = xmmword_2773B3DB0;
  v22 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(xmmword_2773B57F0, xmmword_2773B3DF0), xmmword_2773B3DC0), xmmword_2773B3DB0);
  v14[27] = 0u;
  v14[28] = 0u;
  v14[29] = 0u;
  v14[30] = 0u;
  v23 = 1 << (5 - v17);
  v24 = (6 - v17);
  v25 = (v17 - 6);
  v14[31] = 0u;
  v26 = v16 >= 0x24;
  if (v16 < 0x24)
  {
    v27 = 1;
  }

  else
  {
    v23 = 0;
    v27 = 0;
  }

  if (v26)
  {
    v24 = 0;
  }

  if (!v26)
  {
    v25 = 0;
  }

  if (!v15)
  {
    v27 = 1;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v17 -= 2;
  }

  v21.i32[0] = v15;
  v28 = vdupq_lane_s8(*&vceqq_s8(v21, a4), 0);
  v21.i32[0] = v17;
  a7.i32[0] = v25;
  v13.i32[0] = v23;
  v29 = vqtbl1q_s8(v13, xmmword_2773B3DF0);
  v30 = vdupq_lane_s16(*&vbslq_s8(v28, v21, a7), 0);
  v31 = vdupq_n_s32(-v24);
  v32 = result + 40;
  do
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }

    v33.i16[0] = *(v32 - 24);
    v33.i16[1] = *(v32 - 22);
    v33.i16[2] = *(v32 - 21);
    v33.i16[3] = *(v32 - 15);
    v34.i16[0] = *(v32 - 23);
    v34.i16[1] = *(v32 - 20);
    v34.i16[2] = *(v32 - 16);
    v34.i16[3] = *(v32 - 13);
    v35.i16[0] = *(v32 - 19);
    v35.i16[1] = *(v32 - 17);
    v35.i16[2] = *(v32 - 12);
    v35.i16[3] = *(v32 - 6);
    v36.i16[0] = *(v32 - 18);
    v36.i16[1] = *(v32 - 11);
    v36.i16[2] = *(v32 - 7);
    v36.i16[3] = *v32;
    v37.i16[0] = *(v32 - 10);
    v37.i16[1] = *(v32 - 8);
    v37.i16[2] = v32[1];
    v37.i16[3] = v32[7];
    v38.i16[0] = *(v32 - 9);
    v38.i16[1] = v32[2];
    v38.i16[2] = v32[6];
    v38.i16[3] = v32[16];
    v39.i16[0] = v32[3];
    v39.i16[1] = v32[5];
    v39.i16[2] = v32[17];
    v39.i16[3] = v32[20];
    result = v32 + 29;
    v40.i16[0] = v32[4];
    v40.i16[1] = v32[18];
    v40.i16[2] = v32[19];
    v40.i16[3] = v32[29];
    *v41.i8 = v33;
    v41.i16[4] = *(v32 - 14);
    *v42.i8 = v34;
    v42.i16[4] = *(v32 - 5);
    *v43.i8 = v35;
    v43.i16[4] = *(v32 - 1);
    *v44.i8 = v36;
    v44.i16[4] = v32[8];
    *v45.i8 = v37;
    v45.i16[4] = v32[15];
    *v46.i8 = v38;
    v46.i16[4] = v32[21];
    *v47.i8 = v39;
    v47.i16[4] = v32[28];
    *v48.i8 = v40;
    v48.i16[4] = v32[30];
    v41.i16[5] = *(v32 - 4);
    v42.i16[5] = *(v32 - 2);
    v43.i16[5] = v32[9];
    v44.i16[5] = v32[14];
    v45.i16[5] = v32[22];
    v46.i16[5] = v32[27];
    v47.i16[5] = v32[31];
    v48.i16[5] = v32[36];
    v41.i16[6] = *(v32 - 3);
    v42.i16[6] = v32[10];
    v43.i16[6] = v32[13];
    v44.i16[6] = v32[23];
    v45.i16[6] = v32[26];
    v46.i16[6] = v32[32];
    v47.i16[6] = v32[35];
    v48.i16[6] = v32[37];
    v41.i16[7] = v32[11];
    v42.i16[7] = v32[12];
    v43.i16[7] = v32[24];
    v44.i16[7] = v32[25];
    v45.i16[7] = v32[33];
    v46.i16[7] = v32[34];
    v47.i16[7] = v32[38];
    v48.i16[7] = v32[39];
    if (!v15)
    {
      v52 = vmulq_s16(vshlq_u16(*v19, v30), v41);
      v57 = vmulq_s16(vshlq_u16(v19[1], v30), v42);
      v60 = vmulq_s16(vshlq_u16(v19[2], v30), v43);
      v65 = vmulq_s16(vshlq_u16(v19[3], v30), v44);
      v68 = vmulq_s16(vshlq_u16(v19[4], v30), v45);
      v73 = vmulq_s16(vshlq_u16(v19[5], v30), v46);
      v76 = vmulq_s16(vshlq_u16(v19[6], v30), v47);
      v81 = vshlq_u16(v19[7], v30);
LABEL_18:
      v80 = vmulq_s16(v81, v48);
      goto LABEL_19;
    }

    v49 = *v20;
    if (!v27)
    {
      v52 = vmulq_s16(vshlq_u16(v49, v30), v41);
      v57 = vmulq_s16(vshlq_u16(*(v20 + 16), v30), v42);
      v60 = vmulq_s16(vshlq_u16(*(v20 + 32), v30), v43);
      v65 = vmulq_s16(vshlq_u16(*(v20 + 48), v30), v44);
      v68 = vmulq_s16(vshlq_u16(*(v20 + 64), v30), v45);
      v73 = vmulq_s16(vshlq_u16(*(v20 + 80), v30), v46);
      v76 = vmulq_s16(vshlq_u16(*(v20 + 96), v30), v47);
      v81 = vshlq_u16(*(v20 + 112), v30);
      goto LABEL_18;
    }

    v50 = vuzp2q_s16(vmull_s16(v33, *v49.i8), vmull_high_s16(v41, v49));
    v51 = vmulq_s16(v49, v41);
    v52 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v51, v50), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v51, v50), v29), v31));
    v53 = *(v20 + 16);
    v54 = *(v20 + 32);
    v55 = vuzp2q_s16(vmull_s16(v34, *v53.i8), vmull_high_s16(v42, v53));
    v56 = vmulq_s16(v53, v42);
    v57 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v56, v55), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v56, v55), v29), v31));
    v58 = vuzp2q_s16(vmull_s16(v35, *v54.i8), vmull_high_s16(v43, v54));
    v59 = vmulq_s16(v54, v43);
    v60 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v59, v58), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v59, v58), v29), v31));
    v61 = *(v20 + 48);
    v62 = *(v20 + 64);
    v63 = vuzp2q_s16(vmull_s16(v36, *v61.i8), vmull_high_s16(v44, v61));
    v64 = vmulq_s16(v61, v44);
    v65 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v64, v63), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v64, v63), v29), v31));
    v66 = vuzp2q_s16(vmull_s16(v37, *v62.i8), vmull_high_s16(v45, v62));
    v67 = vmulq_s16(v62, v45);
    v68 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v67, v66), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v67, v66), v29), v31));
    v69 = *(v20 + 80);
    v70 = *(v20 + 96);
    v71 = vuzp2q_s16(vmull_s16(v38, *v69.i8), vmull_high_s16(v46, v69));
    v72 = vmulq_s16(v69, v46);
    v73 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v72, v71), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v72, v71), v29), v31));
    v74 = vuzp2q_s16(vmull_s16(v39, *v70.i8), vmull_high_s16(v47, v70));
    v75 = vmulq_s16(v70, v47);
    v76 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v75, v74), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v75, v74), v29), v31));
    v77 = *(v20 + 112);
    v78 = vuzp2q_s16(vmull_s16(v40, *v77.i8), vmull_high_s16(v48, v77));
    v79 = vmulq_s16(v77, v48);
    v80 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v79, v78), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v79, v78), v29), v31));
LABEL_19:
    v82 = (v14 + 2 * word_2773B6170[v10]);
    v83 = vaddq_s16(v68, v52);
    v84 = vsubq_s16(v73, vsraq_n_s16(vaddq_s16(v65, v80), v80, 1uLL));
    v85 = vsubq_s16(v52, v68);
    v86 = vaddq_s16(v65, v57);
    v87 = vsubq_s16(vaddq_s16(v57, v80), vsraq_n_s16(v65, v65, 1uLL));
    v88 = vsubq_s16(vshrq_n_s16(v60, 1uLL), v76);
    v89 = vsraq_n_s16(vaddq_s16(vsubq_s16(v73, v57), v80), v73, 1uLL);
    v90 = vsraq_n_s16(v60, v76, 1uLL);
    v91 = vsraq_n_s16(vaddq_s16(v86, v73), v57, 1uLL);
    v92 = vaddq_s16(v90, v83);
    v93 = vaddq_s16(v88, v85);
    v94 = vsubq_s16(v85, v88);
    v95 = vshrq_n_s16(v87, 2uLL);
    v96 = vsraq_n_s16(v87, v89, 2uLL);
    v97 = vsubq_s16(v95, v89);
    v98 = vsubq_s16(v83, v90);
    v99 = vshrq_n_s16(v84, 2uLL);
    v100 = vsraq_n_s16(v84, v91, 2uLL);
    v101 = vsubq_s16(v91, v99);
    v102 = vaddq_s16(v101, v92);
    v103 = vaddq_s16(v97, v93);
    v104 = vaddq_s16(v96, v94);
    v105 = vaddq_s16(v100, v98);
    v106 = vsubq_s16(v98, v100);
    v107 = vsubq_s16(v94, v96);
    v108 = vsubq_s16(v93, v97);
    v109 = vsubq_s16(v92, v101);
    v110 = vzip1q_s16(v102, v103);
    v111 = vzip2q_s16(v102, v103);
    v112 = vzip1q_s16(v104, v105);
    v113 = vzip2q_s16(v104, v105);
    v114 = vzip1q_s16(v106, v107);
    v115 = vzip2q_s16(v106, v107);
    v116 = vzip1q_s16(v108, v109);
    v117 = vzip2q_s16(v108, v109);
    v118 = vzip1q_s32(v110, v112);
    v119 = vzip2q_s32(v110, v112);
    v120 = vzip1q_s32(v114, v116);
    v121 = vzip2q_s32(v114, v116);
    v122 = vzip1q_s32(v111, v113);
    v123 = vzip2q_s32(v111, v113);
    v124 = vzip1q_s32(v115, v117);
    v125 = vzip2q_s32(v115, v117);
    v126 = vzip2q_s64(v118, v120);
    v118.i64[1] = v120.i64[0];
    v127 = vzip2q_s64(v119, v121);
    v117.i64[0] = v119.i64[0];
    v117.i64[1] = v121.i64[0];
    v128 = vzip2q_s64(v122, v124);
    v122.i64[1] = v124.i64[0];
    v129 = vzip2q_s64(v123, v125);
    v123.i64[1] = v125.i64[0];
    v130 = vaddq_s16(v118, v122);
    v131 = vaddq_s16(v129, v126);
    v132 = vaddq_s16(v129, v128);
    v133 = vsubq_s16(v128, vaddq_s16(vsraq_n_s16(v129, v129, 1uLL), v127));
    v134 = vsubq_s16(v118, v122);
    v135 = vaddq_s16(v127, v126);
    v136 = vsubq_s16(v131, vsraq_n_s16(v127, v127, 1uLL));
    v137 = vsubq_s16(vshrq_n_s16(v117, 1uLL), v123);
    v138 = vaddq_s16(vsubq_s16(vshrq_n_s16(v128, 1uLL), v126), v132);
    v139 = vsraq_n_s16(v117, v123, 1uLL);
    v140 = vaddq_s16(vsraq_n_s16(v128, v126, 1uLL), v135);
    v141 = vsubq_s16(v134, v137);
    v142 = vshrq_n_s16(v136, 2uLL);
    v143 = vsraq_n_s16(v136, v138, 2uLL);
    v144 = vsubq_s16(v142, v138);
    v145 = vsubq_s16(v130, v139);
    v146 = vshrq_n_s16(v133, 2uLL);
    v147 = vsraq_n_s16(v133, v140, 2uLL);
    v148 = vsubq_s16(v140, v146);
    v149 = vaddq_s16(vaddq_s16(v130, v22), v139);
    v150 = vaddq_s16(vaddq_s16(v134, v22), v137);
    v151 = vaddq_s16(v141, v22);
    v152 = vaddq_s16(v145, v22);
    *v82 = vshrq_n_s16(vaddq_s16(v149, v148), 6uLL);
    v82[2] = vshrq_n_s16(vaddq_s16(v150, v144), 6uLL);
    v82[4] = vshrq_n_s16(vaddq_s16(v151, v143), 6uLL);
    v82[6] = vshrq_n_s16(vaddq_s16(v152, v147), 6uLL);
    v82[8] = vshrq_n_s16(vsubq_s16(v152, v147), 6uLL);
    v82[10] = vshrq_n_s16(vsubq_s16(v151, v143), 6uLL);
    v82[12] = vshrq_n_s16(vsubq_s16(v150, v144), 6uLL);
    v82[14] = vshrq_n_s16(vsubq_s16(v149, v148), 6uLL);
LABEL_20:
    v11 >>= 1;
    ++v10;
    v32 += 64;
  }

  while (v10 != 4);
  return result;
}

uint64_t sub_277377B80(uint64_t result, double a2, int8x16_t a3, double a4, double a5, double a6, int8x16_t a7, int16x8_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a3.i32[0] = 0;
  v12 = 0;
  v13 = *(result + 816);
  v14 = *(result + 818);
  v15 = 0uLL;
  *(a10 + 112) = 0u;
  v16 = (a10 + 112);
  v17 = *(v16 - 100);
  v16[1] = 0u;
  v16[2] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[5] = 0u;
  v16[6] = 0u;
  v16[7] = 0u;
  v16[8] = 0u;
  v16[9] = 0u;
  v16[10] = 0u;
  v16[11] = 0u;
  v16[12] = 0u;
  v16[13] = 0u;
  v16[14] = 0u;
  v16[15] = 0u;
  v16[16] = 0u;
  v16[17] = 0u;
  v16[18] = 0u;
  v16[19] = 0u;
  v16[20] = 0u;
  v16[21] = 0u;
  v16[22] = 0u;
  v16[23] = 0u;
  v16[24] = 0u;
  v16[25] = 0u;
  v16[26] = 0u;
  v18 = v14;
  v19 = v14 / 6u;
  v20 = v14 % 6u;
  v21 = (&unk_2773B6180 + 128 * v20);
  v22 = a11 + (v20 << 7);
  v23 = xmmword_2773B3DB0;
  v24 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(xmmword_2773B57F0, xmmword_2773B3DF0), xmmword_2773B3DC0), xmmword_2773B3DB0);
  v25 = 1 << (5 - v19);
  v16[27] = 0u;
  v16[28] = 0u;
  v26 = (6 - v19);
  v27 = (v19 - 6);
  v16[29] = 0u;
  v16[30] = 0u;
  v28 = v18 >= 0x24;
  if (v18 < 0x24)
  {
    v29 = 1;
  }

  else
  {
    v25 = 0;
    v29 = 0;
  }

  if (v28)
  {
    v26 = 0;
  }

  if (!v28)
  {
    v27 = 0;
  }

  v16[31] = 0uLL;
  if (!v17)
  {
    v29 = 1;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v19 -= 2;
  }

  v23.i32[0] = v17;
  v30 = vdupq_lane_s8(*&vceqq_s8(v23, a3), 0);
  v23.i32[0] = v19;
  a7.i32[0] = v27;
  v15.i32[0] = v25;
  v31 = vdupq_lane_s16(*&vbslq_s8(v30, v23, a7), 0);
  v32 = vqtbl1q_s8(v15, xmmword_2773B3DF0);
  v33 = vdupq_n_s32(-v26);
  v34 = word_2773B6170;
  do
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

    v35.i32[0] = *(result + v12 + 32);
    v36.i32[0] = *(result + v12 + 38);
    a8.i16[0] = *(result + v12 + 136);
    a8.i16[2] = *(result + v12 + 138);
    v35.i16[2] = *(result + v12 + 36);
    v36.i16[2] = *(result + v12 + 46);
    v35.i16[3] = *(result + v12 + 42);
    v36.i16[3] = *(result + v12 + 50);
    v11.i16[0] = *(result + v12 + 148);
    v11.i16[2] = *(result + v12 + 150);
    *v37.i8 = v35;
    v37.i16[4] = *(result + v12 + 44);
    *v38.i8 = v36;
    v38.i16[4] = *(result + v12 + 58);
    v37.i16[5] = *(result + v12 + 52);
    v38.i16[5] = *(result + v12 + 66);
    v37.i32[3] = *(result + v12 + 54);
    v38.i32[3] = *(result + v12 + 68);
    v39.i16[0] = *(result + v12 + 48);
    v39.i16[1] = *(result + v12 + 60);
    v39.i16[2] = *(result + v12 + 64);
    v39.i16[3] = *(result + v12 + 72);
    v39.i64[1] = *(result + v12 + 80);
    v40.i16[0] = *(result + v12 + 62);
    v40.i16[1] = *(result + v12 + 74);
    v40.i16[2] = *(result + v12 + 78);
    v40.i16[3] = *(result + v12 + 88);
    v40.i64[1] = *(result + v12 + 96);
    v41.i16[0] = *(result + v12 + 76);
    v41.i16[1] = *(result + v12 + 90);
    v41.i16[2] = *(result + v12 + 94);
    v41.i16[3] = *(result + v12 + 104);
    v41.i64[1] = *(result + v12 + 112);
    v42.i16[0] = *(result + v12 + 92);
    v42.i16[1] = *(result + v12 + 106);
    v42.i16[2] = *(result + v12 + 110);
    v42.i16[3] = *(result + v12 + 120);
    v42.i64[1] = *(result + v12 + 126);
    v43.i16[0] = *(result + v12 + 108);
    v43.i16[1] = *(result + v12 + 122);
    v43.i16[2] = *(result + v12 + 124);
    v43.i16[3] = *(result + v12 + 134);
    v43.i64[1] = *(result + v12 + 140);
    v11 = vuzp1_s16(*a8.i8, v11);
    *v44.i8 = v11;
    v44.i64[1] = *(result + v12 + 152);
    if (!v17)
    {
      v53 = vmulq_s16(vshlq_u16(*v21, v31), v37);
      v58 = vmulq_s16(vshlq_u16(v21[1], v31), v38);
      v61 = vmulq_s16(vshlq_u16(v21[2], v31), v39);
      v66 = vmulq_s16(vshlq_u16(v21[3], v31), v40);
      v69 = vmulq_s16(vshlq_u16(v21[4], v31), v41);
      v74 = vmulq_s16(vshlq_u16(v21[5], v31), v42);
      v77 = vmulq_s16(vshlq_u16(v21[6], v31), v43);
      v82 = vshlq_u16(v21[7], v31);
LABEL_18:
      v81 = vmulq_s16(v82, v44);
      goto LABEL_19;
    }

    v45 = *v22;
    if (!v29)
    {
      v53 = vmulq_s16(vshlq_u16(v45, v31), v37);
      v58 = vmulq_s16(vshlq_u16(*(v22 + 16), v31), v38);
      v61 = vmulq_s16(vshlq_u16(*(v22 + 32), v31), v39);
      v66 = vmulq_s16(vshlq_u16(*(v22 + 48), v31), v40);
      v69 = vmulq_s16(vshlq_u16(*(v22 + 64), v31), v41);
      v74 = vmulq_s16(vshlq_u16(*(v22 + 80), v31), v42);
      v77 = vmulq_s16(vshlq_u16(*(v22 + 96), v31), v43);
      v82 = vshlq_u16(*(v22 + 112), v31);
      goto LABEL_18;
    }

    v46.i16[1] = *(result + v12 + 60);
    v46.i16[2] = *(result + v12 + 64);
    v46.i16[3] = *(result + v12 + 72);
    v47.i16[1] = *(result + v12 + 74);
    v47.i16[2] = *(result + v12 + 78);
    v47.i16[3] = *(result + v12 + 88);
    v48.i16[1] = *(result + v12 + 90);
    v48.i16[2] = *(result + v12 + 94);
    v48.i16[3] = *(result + v12 + 104);
    v49.i16[1] = *(result + v12 + 106);
    v49.i16[2] = *(result + v12 + 110);
    v49.i16[3] = *(result + v12 + 120);
    v50.i16[1] = *(result + v12 + 122);
    v50.i16[2] = *(result + v12 + 124);
    v50.i16[3] = *(result + v12 + 134);
    v51 = vuzp2q_s16(vmull_s16(v35, *v45.i8), vmull_high_s16(v37, v45));
    v52 = vmulq_s16(v45, v37);
    v53 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v52, v51), v32), v33)), vshlq_s32(vaddq_s32(vzip2q_s16(v52, v51), v32), v33));
    v54 = *(v22 + 16);
    v55 = *(v22 + 32);
    v56 = vuzp2q_s16(vmull_s16(v36, *v54.i8), vmull_high_s16(v38, v54));
    v57 = vmulq_s16(v54, v38);
    v58 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v57, v56), v32), v33)), vshlq_s32(vaddq_s32(vzip2q_s16(v57, v56), v32), v33));
    v46.i16[0] = *(result + v12 + 48);
    v59 = vuzp2q_s16(vmull_s16(v46, *v55.i8), vmull_s16(*(result + v12 + 80), *&vextq_s8(v55, v55, 8uLL)));
    v60 = vmulq_s16(v55, v39);
    v61 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v60, v59), v32), v33)), vshlq_s32(vaddq_s32(vzip2q_s16(v60, v59), v32), v33));
    v62 = *(v22 + 48);
    v63 = *(v22 + 64);
    v47.i16[0] = *(result + v12 + 62);
    v64 = vuzp2q_s16(vmull_s16(v47, *v62.i8), vmull_s16(*(result + v12 + 96), *&vextq_s8(v62, v62, 8uLL)));
    v65 = vmulq_s16(v62, v40);
    v66 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v65, v64), v32), v33)), vshlq_s32(vaddq_s32(vzip2q_s16(v65, v64), v32), v33));
    v48.i16[0] = *(result + v12 + 76);
    v67 = vuzp2q_s16(vmull_s16(v48, *v63.i8), vmull_s16(*(result + v12 + 112), *&vextq_s8(v63, v63, 8uLL)));
    v68 = vmulq_s16(v63, v41);
    v69 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v68, v67), v32), v33)), vshlq_s32(vaddq_s32(vzip2q_s16(v68, v67), v32), v33));
    v70 = *(v22 + 80);
    v71 = *(v22 + 96);
    v49.i16[0] = *(result + v12 + 92);
    v72 = vuzp2q_s16(vmull_s16(v49, *v70.i8), vmull_s16(*(result + v12 + 126), *&vextq_s8(v70, v70, 8uLL)));
    v73 = vmulq_s16(v70, v42);
    v74 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v73, v72), v32), v33)), vshlq_s32(vaddq_s32(vzip2q_s16(v73, v72), v32), v33));
    v50.i16[0] = *(result + v12 + 108);
    v75 = vuzp2q_s16(vmull_s16(v50, *v71.i8), vmull_s16(*(result + v12 + 140), *&vextq_s8(v71, v71, 8uLL)));
    v76 = vmulq_s16(v71, v43);
    v77 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v76, v75), v32), v33)), vshlq_s32(vaddq_s32(vzip2q_s16(v76, v75), v32), v33));
    v78 = *(v22 + 112);
    v79 = vuzp2q_s16(vmull_s16(v11, *v78.i8), vmull_s16(*(result + v12 + 152), *&vextq_s8(v78, v78, 8uLL)));
    v80 = vmulq_s16(v78, v44);
    v81 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v80, v79), v32), v33)), vshlq_s32(vaddq_s32(vzip2q_s16(v80, v79), v32), v33));
LABEL_19:
    v83 = (v16 + 2 * *v34);
    v84 = vaddq_s16(v69, v53);
    v85 = vsubq_s16(v74, vsraq_n_s16(vaddq_s16(v66, v81), v81, 1uLL));
    v86 = vsubq_s16(v53, v69);
    v87 = vaddq_s16(v66, v58);
    v88 = vsubq_s16(vaddq_s16(v58, v81), vsraq_n_s16(v66, v66, 1uLL));
    v89 = vsubq_s16(vshrq_n_s16(v61, 1uLL), v77);
    v90 = vsraq_n_s16(vaddq_s16(vsubq_s16(v74, v58), v81), v74, 1uLL);
    v91 = vsraq_n_s16(v61, v77, 1uLL);
    v92 = vsraq_n_s16(vaddq_s16(v87, v74), v58, 1uLL);
    v93 = vaddq_s16(v91, v84);
    v94 = vaddq_s16(v89, v86);
    v95 = vsubq_s16(v86, v89);
    v96 = vshrq_n_s16(v88, 2uLL);
    v97 = vsraq_n_s16(v88, v90, 2uLL);
    v98 = vsubq_s16(v96, v90);
    v99 = vsubq_s16(v84, v91);
    v100 = vshrq_n_s16(v85, 2uLL);
    v101 = vsraq_n_s16(v85, v92, 2uLL);
    v102 = vsubq_s16(v92, v100);
    v103 = vaddq_s16(v102, v93);
    v104 = vaddq_s16(v98, v94);
    v105 = vaddq_s16(v97, v95);
    v106 = vaddq_s16(v101, v99);
    v107 = vsubq_s16(v99, v101);
    v108 = vsubq_s16(v95, v97);
    v109 = vsubq_s16(v94, v98);
    v110 = vsubq_s16(v93, v102);
    v111 = vzip1q_s16(v103, v104);
    v112 = vzip2q_s16(v103, v104);
    v113 = vzip1q_s16(v105, v106);
    v114 = vzip2q_s16(v105, v106);
    v115 = vzip1q_s16(v107, v108);
    v116 = vzip2q_s16(v107, v108);
    v117 = vzip1q_s16(v109, v110);
    v118 = vzip2q_s16(v109, v110);
    v119 = vzip1q_s32(v111, v113);
    v120 = vzip2q_s32(v111, v113);
    v121 = vzip1q_s32(v115, v117);
    v122 = vzip2q_s32(v115, v117);
    v123 = vzip1q_s32(v112, v114);
    v124 = vzip2q_s32(v112, v114);
    v125 = vzip1q_s32(v116, v118);
    v126 = vzip2q_s32(v116, v118);
    v127 = vzip2q_s64(v119, v121);
    v119.i64[1] = v121.i64[0];
    v128 = vzip2q_s64(v120, v122);
    v118.i64[0] = v120.i64[0];
    v118.i64[1] = v122.i64[0];
    v129 = vzip2q_s64(v123, v125);
    v123.i64[1] = v125.i64[0];
    v130 = vzip2q_s64(v124, v126);
    v124.i64[1] = v126.i64[0];
    v131 = vaddq_s16(v119, v123);
    v132 = vaddq_s16(v130, v127);
    v133 = vaddq_s16(v130, v129);
    v134 = vsubq_s16(v129, vaddq_s16(vsraq_n_s16(v130, v130, 1uLL), v128));
    v135 = vsubq_s16(v119, v123);
    v136 = vaddq_s16(v128, v127);
    v137 = vsubq_s16(v132, vsraq_n_s16(v128, v128, 1uLL));
    v138 = vsubq_s16(vshrq_n_s16(v118, 1uLL), v124);
    v139 = vaddq_s16(vsubq_s16(vshrq_n_s16(v129, 1uLL), v127), v133);
    v140 = vsraq_n_s16(v118, v124, 1uLL);
    v141 = vaddq_s16(vsraq_n_s16(v129, v127, 1uLL), v136);
    v142 = vsubq_s16(v135, v138);
    v143 = vshrq_n_s16(v137, 2uLL);
    v144 = vsraq_n_s16(v137, v139, 2uLL);
    v145 = vsubq_s16(v143, v139);
    v146 = vsubq_s16(v131, v140);
    v147 = vshrq_n_s16(v134, 2uLL);
    v148 = vsraq_n_s16(v134, v141, 2uLL);
    v149 = vsubq_s16(v141, v147);
    v150 = vaddq_s16(vaddq_s16(v131, v24), v140);
    v151 = vaddq_s16(vaddq_s16(v135, v24), v138);
    v152 = vaddq_s16(v142, v24);
    v153 = vaddq_s16(v146, v24);
    *v83 = vshrq_n_s16(vaddq_s16(v150, v149), 6uLL);
    v83[2] = vshrq_n_s16(vaddq_s16(v151, v145), 6uLL);
    a8 = vshrq_n_s16(vsubq_s16(v151, v145), 6uLL);
    v83[4] = vshrq_n_s16(vaddq_s16(v152, v144), 6uLL);
    v83[6] = vshrq_n_s16(vaddq_s16(v153, v148), 6uLL);
    v83[8] = vshrq_n_s16(vsubq_s16(v153, v148), 6uLL);
    v83[10] = vshrq_n_s16(vsubq_s16(v152, v144), 6uLL);
    v83[12] = a8;
    v83[14] = vshrq_n_s16(vsubq_s16(v150, v149), 6uLL);
LABEL_20:
    v13 >>= 1;
    v12 += 128;
    ++v34;
  }

  while (v12 != 512);
  return result;
}

int8x16_t *sub_2773782F8(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v141 = *MEMORY[0x277D85DE8];
  v4 = (result[51].u8[2] / 6u) & 0x1F;
  v5 = result[51].i8[2] % 6u;
  v6 = result[51].u8[0];
  v140 = v6;
  v139 = vdupq_n_s32(16843009 * v6);
  v7 = *(a3 + 12);
  if (!*(a3 + 12))
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v9 = vshlq_u16(*&asc_2773B6110[16 * v5], vdupq_n_s16(v4));
    v17 = 1;
    v10 = 1;
    v8 = v9;
    goto LABEL_9;
  }

  v8 = *&asc_2773B6110[16 * v5];
  v9 = *(a4 + 16 * v5);
  v10 = v4 < 4;
  if (v4 <= 3)
  {
    v11 = 0;
    v12 = 1 << (3 - v4);
    v13 = (4 - v4);
LABEL_7:
    v16 = 0;
    v17 = 1;
    v14 = 1 << (5 - v4);
    v15 = (6 - v4);
    goto LABEL_9;
  }

  v11 = v4 - 4;
  if (v4 < 6)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  v17 = 0;
  v10 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = (v4 - 6);
LABEL_9:
  v18 = vqtbl1q_s8(vzip1q_s16(v9, v9), xmmword_2773B3DF0);
  v19 = result[1];
  v20.i64[0] = 0xFFFF000000000000;
  v20.i64[1] = 0xFFFF000000000000;
  v21.i64[0] = 0xFFFFLL;
  v21.i64[1] = 0xFFFFLL;
  v22 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vorrq_s8(vandq_s8(v19, xmmword_2773B56F0), vandq_s8(*result, xmmword_2773B56D0)), vextq_s8(0, vandq_s8(v19, v20), 0xEuLL)), xmmword_2773B5700), xmmword_2773B4460);
  v23 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vorrq_s8(vandq_s8(v19, xmmword_2773B56E0), vandq_s8(*result, xmmword_2773B56F0)), vextq_s8(vandq_s8(*result, v21), 0, 2uLL)), xmmword_2773B4470), xmmword_2773B5710);
  if (*(a3 + 12))
  {
    if ((v17 & 1) == 0)
    {
      v31 = vuzp2q_s16(vmull_s16(*v22.i8, *v18.i8), vmull_high_s16(v22, v18));
      v32 = vmulq_s16(v22, v18);
      v33 = vzip2q_s16(v32, v31);
      v34 = vdupq_n_s32(v16);
      v35 = vzip1q_s16(v32, v31);
      v27 = vshlq_u32(v33, v34);
      v28 = vshlq_u32(v35, v34);
      v36 = vuzp2q_s16(vmull_s16(*v23.i8, *v18.i8), vmull_high_s16(v23, v18));
      v37 = vmulq_s16(v23, v18);
      v38 = vzip2q_s16(v37, v36);
      v24 = vzip1q_s16(v37, v36);
      v39 = vshlq_u32(v38, v34);
      v40 = vshlq_u32(v24, v34);
      v24.i32[0] = 0;
      goto LABEL_18;
    }

    v24.i32[0] = v15;
    v25 = vuzp2q_s16(vmull_s16(*v22.i8, *v18.i8), vmull_high_s16(v22, v18));
    v26 = vmulq_s16(v22, v18);
    v27 = vzip2q_s16(v26, v25);
    v28 = vaddq_s32(v14, vzip1q_s16(v26, v25));
    v29 = vuzp2q_s16(vmull_s16(*v23.i8, *v18.i8), vmull_high_s16(v23, v18));
    v30 = vmulq_s16(v23, v18);
  }

  else
  {
    if ((v18.i8[0] & 3) != 0)
    {
      v24 = xmmword_2773B5720;
    }

    else
    {
      v18 = vshrq_n_u16(v18, 2uLL);
      v24 = 0uLL;
    }

    v41 = vuzp2q_s16(vmull_s16(*v22.i8, *v18.i8), vmull_high_s16(v22, v18));
    v42 = vmulq_s16(v18, v22);
    v27 = vzip2q_s16(v42, v41);
    v28 = vaddq_s32(v24, vzip1q_s16(v42, v41));
    v29 = vuzp2q_s16(vmull_s16(*v23.i8, *v18.i8), vmull_high_s16(v23, v18));
    v30 = vmulq_s16(v18, v23);
  }

  v39 = vzip2q_s16(v30, v29);
  v40 = vzip1q_s16(v30, v29);
LABEL_18:
  v43 = a3 + 112;
  v44 = vaddq_s32(v28, v40);
  v45 = vaddq_s32(v27, v39);
  v46 = vsubq_s32(v28, v40);
  v47 = vsubq_s32(v27, v39);
  v48 = vaddq_s32(v44, v45);
  v49 = vsubq_s32(v44, v45);
  v50 = vsubq_s32(v46, v47);
  v51 = vaddq_s32(v46, v47);
  v52 = vzip1q_s32(v48, v50);
  v53 = vzip2q_s32(v48, v50);
  v54 = vzip1q_s32(v49, v51);
  v55 = vzip2q_s32(v49, v51);
  v56 = vzip1q_s32(v52, v54);
  v57 = vzip2q_s32(v52, v54);
  v58 = vzip1q_s32(v53, v55);
  v59 = vzip2q_s32(v53, v55);
  v60 = vaddq_s32(v56, v57);
  v61 = vsubq_s32(v56, v57);
  v62 = vaddq_s32(v58, v59);
  v63 = vsubq_s32(v58, v59);
  v64 = vaddq_s32(v60, v62);
  v65 = vsubq_s32(v60, v62);
  v66 = vsubq_s32(v61, v63);
  v67 = vaddq_s32(v61, v63);
  v68 = vdupq_n_s32(-v24.i32[0]);
  v69 = vshlq_s32(v64, v68);
  v70 = vshlq_s32(v65, v68);
  v71 = vshlq_s32(v66, v68);
  v72 = vshlq_s32(v67, v68);
  *v68.i8 = vqmovn_s32(v69);
  *v69.i8 = vqmovn_s32(v70);
  *v70.i8 = vqmovn_s32(v71);
  *v72.i8 = vqmovn_s32(v72);
  v73 = vzip1q_s32(v68, v69);
  v74 = vzip1q_s32(v70, v72);
  v75 = vqtbl1q_s8(xmmword_2773B5730, xmmword_2773B3DF0);
  v76 = vqaddq_s16(v73, v75);
  v77 = vqaddq_s16(v74, v75);
  if (v6)
  {
    v78 = 0;
    v79 = vdupq_n_s16(v11);
    v80 = result + 3;
    v81 = vdupq_n_s32(-v13);
    result = &unk_2773B5000;
    do
    {
      v82 = (v43 + word_2773B60E0[v78]);
      if (v139.i16[v78])
      {
        v83 = vandq_s8(v76, xmmword_2773B5800);
        v84 = v80[-1];
        v85 = v80[1];
        v86 = v80[2];
        v145.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v84, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
        v145.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v80, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
        v87 = vqtbl2q_s8(v145, xmmword_2773B5790);
        v142.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v84, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
        v142.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v80, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
        v88 = vqtbl2q_s8(v142, xmmword_2773B57D0);
        v144.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v85, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
        v144.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v86, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
        v89 = vqtbl2q_s8(v144, xmmword_2773B5790);
        v144.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v85, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
        v144.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v86, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
        v90 = vqtbl2q_s8(v144, xmmword_2773B57D0);
        v91 = vmulq_s16(v88, v8);
        v92 = vmulq_s16(v90, v8);
        if (v7)
        {
          v93 = vmulq_s16(v87, v8);
          v94 = vmulq_s16(v89, v8);
          if (v10)
          {
            v95 = vqtbl1q_s8(v12, xmmword_2773B3DF0);
            v96 = vuzp2q_s16(vmull_s16(*v87.i8, *v8.i8), vmull_high_s16(v87, v8));
            v97 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v93, v96), v95), v81)), vshlq_s32(vaddq_s32(vzip2q_s16(v93, v96), v95), v81));
            v98 = vuzp2q_s16(vmull_s16(*v88.i8, *v8.i8), vmull_high_s16(v88, v8));
            v91 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v91, v98), v95), v81)), vshlq_s32(vaddq_s32(vzip2q_s16(v91, v98), v95), v81));
            v99 = vuzp2q_s16(vmull_s16(*v89.i8, *v8.i8), vmull_high_s16(v89, v8));
            v100 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v94, v99), v95), v81)), vshlq_s32(vaddq_s32(vzip2q_s16(v94, v99), v95), v81));
            v101 = vuzp2q_s16(vmull_s16(*v90.i8, *v8.i8), vmull_high_s16(v90, v8));
            v92 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v92, v101), v95), v81)), vshlq_s32(vaddq_s32(vzip2q_s16(v92, v101), v95), v81));
          }

          else
          {
            v97 = vshlq_u16(v93, v79);
            v91 = vshlq_u16(v91, v79);
            v100 = vshlq_u16(v94, v79);
            v92 = vshlq_u16(v92, v79);
          }

          v105 = vaddq_s16(v97, v83);
          v106 = vaddq_s16(v100, v83);
        }

        else
        {
          v105 = vmlaq_s16(v83, v87, v8);
          v106 = vmlaq_s16(v83, v89, v8);
        }

        v107.i64[0] = v105.i64[0];
        v107.i16[0] = v76.i16[0];
        v108 = vzip2q_s64(v105, v106);
        v106.i16[0] = vqtbl1q_s8(vzip1q_s16(v76, v76), xmmword_2773B43F0).u16[0];
        v107.i64[1] = v106.i64[0];
        v109.i64[0] = v91.i64[0];
        v109.i64[1] = v92.i64[0];
        v110 = vzip2q_s64(v91, v92);
        v111 = vaddq_s16(v109, v107);
        v112 = vsubq_s16(v107, v109);
        v113 = vsubq_s16(vshrq_n_s16(v108, 1uLL), v110);
        v114 = vsraq_n_s16(v108, v110, 1uLL);
        v115 = vaddq_s16(v111, v114);
        v116 = vaddq_s16(v112, v113);
        v117 = vsubq_s16(v112, v113);
        v118 = vsubq_s16(v111, v114);
        v119 = vzip1q_s16(v115, v117);
        v120 = vzip2q_s16(v115, v117);
        v121 = vzip1q_s16(v116, v118);
        v122 = vzip2q_s16(v116, v118);
        v123 = vzip1q_s16(v119, v121);
        v124 = vzip2q_s16(vdupq_lane_s64(v120.i64[0], 0), vdupq_lane_s64(v122.i64[0], 0));
        v125 = vzip2q_s64(v123, v124);
        v123.i64[1] = v124.i64[0];
        v143.val[1] = vdupq_laneq_s64(v119, 1);
        v143.val[0] = vdupq_laneq_s64(v121, 1);
        v126 = vqtbl2q_s8(v143, xmmword_2773B4490);
        v127 = vzip2q_s16(v120, v122);
        v122.i64[0] = v126.i64[0];
        v122.i64[1] = v127.i64[0];
        v128 = vzip2q_s64(v126, v127);
        v129 = vaddq_s16(v123, v122);
        v130 = vsubq_s16(v123, v122);
        v131 = vsubq_s16(vshrq_n_s16(v125, 1uLL), v128);
        v132 = vsraq_n_s16(v125, v128, 1uLL);
        *v82 = vshrq_n_s16(vaddq_s16(v129, v132), 6uLL);
        v82[2] = vshrq_n_s16(vaddq_s16(v130, v131), 6uLL);
        v104 = vshrq_n_s16(vsubq_s16(v129, v132), 6uLL);
        v82[4] = vshrq_n_s16(vsubq_s16(v130, v131), 6uLL);
      }

      else
      {
        v102 = vshrq_n_s16(v76, 6uLL);
        v103 = vzip1q_s16(v102, v102);
        v104 = vzip1q_s32(v103, v103);
        *v82 = v104;
        v82[2] = v104;
        v82[4] = v104;
      }

      v82[6] = v104;
      ++v78;
      v76 = vextq_s8(v76, v77, 4uLL);
      v77 = vqtbl1q_s8(v77, xmmword_2773B57E0);
      v80 += 4;
    }

    while (v78 != 8);
  }

  else
  {
    v133 = 0;
    v134 = vshrq_n_s16(v76, 6uLL);
    v135 = vshrq_n_s16(v77, 6uLL);
    do
    {
      v136 = (v43 + word_2773B60E0[v133]);
      v137 = vzip1q_s16(v134, v134);
      v138 = vzip1q_s32(v137, v137);
      *v136 = v138;
      v136[2] = v138;
      v136[4] = v138;
      v136[6] = v138;
      v134 = vextq_s8(v134, v135, 4uLL);
      v135 = vqtbl1q_s8(v135, xmmword_2773B57E0);
      ++v133;
    }

    while (v133 != 8);
  }

  return result;
}

int16x8_t sub_277378A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = (*(a1 + 818) / 6u) & 0x1F;
  v6 = *(a1 + 818) % 6u;
  v7 = *(a1 + 816);
  v38 = v7;
  v37 = vdupq_n_s32(16843009 * v7);
  v8 = *(a3 + 12);
  if (*(a3 + 12))
  {
    v34 = *&asc_2773B6110[16 * v6];
    v9 = *(a4 + 16 * v6);
    if (v5 <= 3)
    {
      v10 = 0;
      v17 = 0;
      v12 = (4 - v5);
      v11 = 1 << (3 - v5);
    }

    else
    {
      v10 = v5 - 4;
      if (v5 >= 6)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = v5 - 6;
        v16 = 1;
        v17 = 1;
        goto LABEL_9;
      }

      v12 = 0;
      v11 = 0;
      v17 = 1;
    }

    v16 = 0;
    v15 = 0;
    v14 = 6 - v5;
    v13 = 1 << (5 - v5);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v9 = vshlq_u16(*&asc_2773B6110[16 * v6], vdupq_n_s16(v5));
    v34 = v9;
  }

LABEL_9:
  v18 = a3 + 112;
  sub_2772A4238(a1, v39, v16, v8, v15, v14, v13, vqtbl1q_s8(vzip1q_s16(v9, v9), xmmword_2773B3DF0));
  v19 = vqtbl1q_s8(xmmword_2773B5730, xmmword_2773B3DF0);
  v20 = vqaddq_s16(v39[0], v19);
  v21 = vqaddq_s16(v39[1], v19);
  if (v7)
  {
    v22 = 0;
    v23 = a1 + 32;
    do
    {
      v24 = v18 + word_2773B60E0[v22];
      if (v37.i16[v22])
      {
        v35 = v21;
        v36 = v20;
        sub_2772A43FC(v23, v23 + 32, v24, v17, v10, v12, v11, v8, v20.u16[0], vqtbl1q_s8(vzip1q_s16(v20, v20), xmmword_2773B43F0), v34);
        v21 = v35;
        v20 = v36;
      }

      else
      {
        v25 = vshrq_n_s16(v20, 6uLL);
        v26 = vzip1q_s16(v25, v25);
        v27 = vzip1q_s32(v26, v26);
        *v24 = v27;
        *(v24 + 32) = v27;
        *(v24 + 64) = v27;
        *(v24 + 96) = v27;
      }

      ++v22;
      v20 = vextq_s8(v20, v21, 4uLL);
      result = xmmword_2773B57E0;
      v21 = vqtbl1q_s8(v21, xmmword_2773B57E0);
      v23 += 64;
    }

    while (v22 != 8);
  }

  else
  {
    v29 = 0;
    result = vshrq_n_s16(v20, 6uLL);
    v30 = vshrq_n_s16(v21, 6uLL);
    do
    {
      v31 = (v18 + word_2773B60E0[v29]);
      v32 = vzip1q_s16(result, result);
      v33 = vzip1q_s32(v32, v32);
      *v31 = v33;
      v31[2] = v33;
      v31[4] = v33;
      v31[6] = v33;
      result = vextq_s8(result, v30, 4uLL);
      v30 = vqtbl1q_s8(v30, xmmword_2773B57E0);
      ++v29;
    }

    while (v29 != 8);
  }

  return result;
}

uint64_t sub_277378D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = sub_2773A31FC(*(a1 + 818), *(a3 + 13));
  v6 = sub_2773A31FC(*(a1 + 818), *(a3 + 14));
  v9 = *(a1 + 817);
  sub_2772A2EBC((a1 + 800), (a1 + 544), (a1 + 672), v8, &v7, &v6, (a3 + 624), *(a3 + 12));
  return 0;
}

uint64_t sub_277378DF4(int16x8_t *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = sub_2773A31FC(a1[51].u8[2], *(a3 + 13));
  v6 = sub_2773A31FC(a1[51].u8[2], *(a3 + 14));
  v9 = a1[51].u8[1];
  sub_2772A3368(a1 + 50, a1 + 34, a1 + 42, v8, &v7, &v6, (a3 + 624), *(a3 + 12));
  return 0;
}

uint64_t sub_277378E9C(uint64_t result, _OWORD *a2)
{
  v2 = 0;
  v57 = *MEMORY[0x277D85DE8];
  v3 = *(result + 40);
  v4 = *(v3 + 52);
  v5 = *(v3 + 55);
  do
  {
    v6 = v4 & 1;
    v4 >>= 1;
    *&v56[v2] = -v6;
    v2 += 4;
  }

  while (v2 != 16);
  v7 = *(result + 56);
  v8 = *(result + 1422192);
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  v9 = v5 / 6u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v10 = *&asc_2773B6110[16 * ((v5 % 6u) & 0x1F)];
  if (v8)
  {
    if (v5 >= 0x18)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v11 = v9 - 4;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      v13 = 1 << (3 - v9);
      v14 = (4 - v9);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v10 = vshlq_u16(v10, vdupq_n_s16(v9));
    v12 = 1;
  }

  v15 = 0;
  v16 = v13;
  v17 = vdupq_n_s16(v11);
  v18 = vdupq_n_s32(-v14);
  v19 = v7 + 5;
  v20.i64[0] = 0xFFFF00000000;
  v20.i64[1] = 0xFFFF00000000;
  do
  {
    if (*&v56[v15 * 2])
    {
      v21 = v19[-2];
      v22 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(v19[-3], v20), 0xCuLL), vandq_s8(v19[-3], xmmword_2773B56B0)), vextq_s8(vandq_s8(v19[-3], xmmword_2773B56C0), 0, 2uLL));
      v23 = vorrq_s8(vorrq_s8(vextq_s8(0, vandq_s8(v19[-1], v20), 0xCuLL), vandq_s8(v19[-1], xmmword_2773B56B0)), vextq_s8(vandq_s8(v19[-1], xmmword_2773B56C0), 0, 2uLL));
      v24 = vmulq_s16(v22, v10);
      v25 = vmulq_s16(v21, v10);
      v26 = vmulq_s16(v23, v10);
      v27 = vmulq_s16(*v19, v10);
      if (v8)
      {
        if (v12)
        {
          v16 = vqtbl1q_s8(v16, xmmword_2773B3DF0);
          v28 = vuzp2q_s16(vmull_s16(*v22.i8, *v10.i8), vmull_high_s16(v22, v10));
          v24 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v24, v28), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v24, v28), v16), v18));
          v29 = vuzp2q_s16(vmull_s16(*v21.i8, *v10.i8), vmull_high_s16(v21, v10));
          v25 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v25, v29), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v25, v29), v16), v18));
          v30 = vuzp2q_s16(vmull_s16(*v23.i8, *v10.i8), vmull_high_s16(v23, v10));
          v26 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v26, v30), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v26, v30), v16), v18));
          v31 = vuzp2q_s16(vmull_s16(*v19->i8, *v10.i8), vmull_high_s16(*v19, v10));
          v27 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v27, v31), v16), v18)), vshlq_s32(vaddq_s32(vzip2q_s16(v27, v31), v16), v18));
        }

        else
        {
          v24 = vshlq_u16(v24, v17);
          v25 = vshlq_u16(v25, v17);
          v26 = vshlq_u16(v26, v17);
          v27 = vshlq_u16(v27, v17);
        }
      }

      v32 = vaddq_s16(v26, xmmword_2773B57F0);
      v33 = vaddq_s16(v24, xmmword_2773B57F0);
      v34 = vzip2q_s64(v33, v32);
      v33.i64[1] = v32.i64[0];
      v32.i64[0] = v25.i64[0];
      v32.i64[1] = v27.i64[0];
      v35 = vzip2q_s64(v25, v27);
      v36 = vaddq_s16(v33, v32);
      v37 = vsubq_s16(v33, v32);
      v38 = vsubq_s16(vshrq_n_s16(v34, 1uLL), v35);
      v39 = vsraq_n_s16(v34, v35, 1uLL);
      v40 = vaddq_s16(v36, v39);
      v41 = vaddq_s16(v37, v38);
      v42 = vsubq_s16(v37, v38);
      v43 = vsubq_s16(v36, v39);
      v44 = vzip1q_s16(v40, v42);
      v45 = vzip2q_s16(v40, v42);
      v46 = vzip1q_s16(v41, v43);
      v47 = vzip2q_s16(v41, v43);
      v48 = vzip1q_s16(v44, v46);
      v49 = vzip2q_s16(vdupq_lane_s64(v45.i64[0], 0), vdupq_lane_s64(v47.i64[0], 0));
      v50 = vzip2q_s64(v48, v49);
      v48.i64[1] = v49.i64[0];
      v58.val[1] = vdupq_laneq_s64(v44, 1);
      v58.val[0] = vdupq_laneq_s64(v46, 1);
      v58.val[0] = vqtbl2q_s8(v58, xmmword_2773B4490);
      v51 = vzip2q_s16(v45, v47);
      v52 = vzip2q_s64(v58.val[0], v51);
      v58.val[0].i64[1] = v51.i64[0];
      v53 = (a2 + 2 * word_2773B6100[v15]);
      v54 = vaddq_s16(v48, v58.val[0]);
      v58.val[0] = vsubq_s16(v48, v58.val[0]);
      v58.val[1] = vsubq_s16(vshrq_n_s16(v50, 1uLL), v52);
      v55 = vsraq_n_s16(v50, v52, 1uLL);
      *v53 = vshrq_n_s16(vaddq_s16(v54, v55), 6uLL);
      v53[2] = vshrq_n_s16(vaddq_s16(v58.val[0], v58.val[1]), 6uLL);
      v53[4] = vshrq_n_s16(vsubq_s16(v58.val[0], v58.val[1]), 6uLL);
      v53[6] = vshrq_n_s16(vsubq_s16(v54, v55), 6uLL);
    }

    ++v15;
    v19 += 4;
  }

  while (v15 != 8);
  return result;
}

unint64_t sub_27737924C(unint64_t result, _OWORD *a2, uint64_t a3, double a4, int8x16_t a5, double a6, double a7, double a8, int8x16_t a9)
{
  a5.i32[0] = 0;
  v9 = 0;
  v10 = *(result + 40);
  v11 = *(v10 + 52);
  v12 = *(v10 + 55);
  v13 = *(result + 56);
  v14 = *(result + 1422192);
  v15.i32[1] = 0;
  v15.i64[1] = 0;
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v16 = v12;
  v17 = v12 / 6u;
  v18 = v12 % 6u;
  v19 = (&unk_2773B6180 + 128 * v18);
  v20 = a3 + (v18 << 7);
  v21 = xmmword_2773B3DB0;
  v22 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(xmmword_2773B57F0, xmmword_2773B3DF0), xmmword_2773B3DC0), xmmword_2773B3DB0);
  LODWORD(result) = 1 << (5 - v17);
  v23 = (6 - v17);
  v24 = (v17 - 6);
  v25 = v16 >= 0x24;
  if (v16 < 0x24)
  {
    v26 = 1;
  }

  else
  {
    LODWORD(result) = 0;
    v26 = 0;
  }

  if (v25)
  {
    v23 = 0;
  }

  if (!v25)
  {
    v24 = 0;
  }

  if (v14)
  {
    result = result;
  }

  else
  {
    v26 = 1;
    result = 0;
  }

  if (!v14)
  {
    v23 = 0;
    v24 = 0;
    v17 -= 2;
  }

  v21.i32[0] = v14;
  v27 = vdupq_lane_s8(*&vceqq_s8(v21, a5), 0);
  v21.i32[0] = v17;
  a9.i32[0] = v24;
  v28 = vbslq_s8(v27, v21, a9).u64[0];
  v15.i32[0] = result;
  v29 = vqtbl1q_s8(v15, xmmword_2773B3DF0);
  v30 = vdupq_lane_s16(v28, 0);
  v31 = vdupq_n_s32(-v23);
  v32 = (v13 + 80);
  do
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }

    v33.i16[0] = *(v32 - 24);
    v33.i16[1] = *(v32 - 22);
    v33.i16[2] = *(v32 - 21);
    v33.i16[3] = *(v32 - 15);
    v34.i16[0] = *(v32 - 23);
    v34.i16[1] = *(v32 - 20);
    v34.i16[2] = *(v32 - 16);
    v34.i16[3] = *(v32 - 13);
    v35.i16[0] = *(v32 - 19);
    v35.i16[1] = *(v32 - 17);
    v35.i16[2] = *(v32 - 12);
    v35.i16[3] = *(v32 - 6);
    v36.i16[0] = *(v32 - 18);
    v36.i16[1] = *(v32 - 11);
    v36.i16[2] = *(v32 - 7);
    v36.i16[3] = *v32;
    v37.i16[0] = *(v32 - 10);
    v37.i16[1] = *(v32 - 8);
    v37.i16[2] = v32[1];
    v37.i16[3] = v32[7];
    v38.i16[0] = *(v32 - 9);
    v38.i16[1] = v32[2];
    v38.i16[2] = v32[6];
    v38.i16[3] = v32[16];
    v39.i16[0] = v32[3];
    v39.i16[1] = v32[5];
    v39.i16[2] = v32[17];
    v39.i16[3] = v32[20];
    result = (v32 + 29);
    v40.i16[0] = v32[4];
    v40.i16[1] = v32[18];
    v40.i16[2] = v32[19];
    v40.i16[3] = v32[29];
    *v41.i8 = v33;
    v41.i16[4] = *(v32 - 14);
    *v42.i8 = v34;
    v42.i16[4] = *(v32 - 5);
    *v43.i8 = v35;
    v43.i16[4] = *(v32 - 1);
    *v44.i8 = v36;
    v44.i16[4] = v32[8];
    *v45.i8 = v37;
    v45.i16[4] = v32[15];
    *v46.i8 = v38;
    v46.i16[4] = v32[21];
    *v47.i8 = v39;
    v47.i16[4] = v32[28];
    *v48.i8 = v40;
    v48.i16[4] = v32[30];
    v41.i16[5] = *(v32 - 4);
    v42.i16[5] = *(v32 - 2);
    v43.i16[5] = v32[9];
    v44.i16[5] = v32[14];
    v45.i16[5] = v32[22];
    v46.i16[5] = v32[27];
    v47.i16[5] = v32[31];
    v48.i16[5] = v32[36];
    v41.i16[6] = *(v32 - 3);
    v42.i16[6] = v32[10];
    v43.i16[6] = v32[13];
    v44.i16[6] = v32[23];
    v45.i16[6] = v32[26];
    v46.i16[6] = v32[32];
    v47.i16[6] = v32[35];
    v48.i16[6] = v32[37];
    v41.i16[7] = v32[11];
    v42.i16[7] = v32[12];
    v43.i16[7] = v32[24];
    v44.i16[7] = v32[25];
    v45.i16[7] = v32[33];
    v46.i16[7] = v32[34];
    v47.i16[7] = v32[38];
    v48.i16[7] = v32[39];
    if (!v14)
    {
      v52 = vmulq_s16(vshlq_u16(*v19, v30), v41);
      v57 = vmulq_s16(vshlq_u16(v19[1], v30), v42);
      v60 = vmulq_s16(vshlq_u16(v19[2], v30), v43);
      v65 = vmulq_s16(vshlq_u16(v19[3], v30), v44);
      v68 = vmulq_s16(vshlq_u16(v19[4], v30), v45);
      v73 = vmulq_s16(vshlq_u16(v19[5], v30), v46);
      v76 = vmulq_s16(vshlq_u16(v19[6], v30), v47);
      v81 = vshlq_u16(v19[7], v30);
LABEL_21:
      v80 = vmulq_s16(v81, v48);
      goto LABEL_22;
    }

    v49 = *v20;
    if (!v26)
    {
      v52 = vmulq_s16(vshlq_u16(v49, v30), v41);
      v57 = vmulq_s16(vshlq_u16(*(v20 + 16), v30), v42);
      v60 = vmulq_s16(vshlq_u16(*(v20 + 32), v30), v43);
      v65 = vmulq_s16(vshlq_u16(*(v20 + 48), v30), v44);
      v68 = vmulq_s16(vshlq_u16(*(v20 + 64), v30), v45);
      v73 = vmulq_s16(vshlq_u16(*(v20 + 80), v30), v46);
      v76 = vmulq_s16(vshlq_u16(*(v20 + 96), v30), v47);
      v81 = vshlq_u16(*(v20 + 112), v30);
      goto LABEL_21;
    }

    v50 = vuzp2q_s16(vmull_s16(v33, *v49.i8), vmull_high_s16(v41, v49));
    v51 = vmulq_s16(v49, v41);
    v52 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v51, v50), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v51, v50), v29), v31));
    v53 = *(v20 + 16);
    v54 = *(v20 + 32);
    v55 = vuzp2q_s16(vmull_s16(v34, *v53.i8), vmull_high_s16(v42, v53));
    v56 = vmulq_s16(v53, v42);
    v57 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v56, v55), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v56, v55), v29), v31));
    v58 = vuzp2q_s16(vmull_s16(v35, *v54.i8), vmull_high_s16(v43, v54));
    v59 = vmulq_s16(v54, v43);
    v60 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v59, v58), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v59, v58), v29), v31));
    v61 = *(v20 + 48);
    v62 = *(v20 + 64);
    v63 = vuzp2q_s16(vmull_s16(v36, *v61.i8), vmull_high_s16(v44, v61));
    v64 = vmulq_s16(v61, v44);
    v65 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v64, v63), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v64, v63), v29), v31));
    v66 = vuzp2q_s16(vmull_s16(v37, *v62.i8), vmull_high_s16(v45, v62));
    v67 = vmulq_s16(v62, v45);
    v68 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v67, v66), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v67, v66), v29), v31));
    v69 = *(v20 + 80);
    v70 = *(v20 + 96);
    v71 = vuzp2q_s16(vmull_s16(v38, *v69.i8), vmull_high_s16(v46, v69));
    v72 = vmulq_s16(v69, v46);
    v73 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v72, v71), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v72, v71), v29), v31));
    v74 = vuzp2q_s16(vmull_s16(v39, *v70.i8), vmull_high_s16(v47, v70));
    v75 = vmulq_s16(v70, v47);
    v76 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v75, v74), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v75, v74), v29), v31));
    v77 = *(v20 + 112);
    v78 = vuzp2q_s16(vmull_s16(v40, *v77.i8), vmull_high_s16(v48, v77));
    v79 = vmulq_s16(v77, v48);
    v80 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v79, v78), v29), v31)), vshlq_s32(vaddq_s32(vzip2q_s16(v79, v78), v29), v31));
LABEL_22:
    v82 = (a2 + 2 * word_2773B6170[v9]);
    v83 = vaddq_s16(v68, v52);
    v84 = vsubq_s16(v73, vsraq_n_s16(vaddq_s16(v65, v80), v80, 1uLL));
    v85 = vsubq_s16(v52, v68);
    v86 = vaddq_s16(v65, v57);
    v87 = vsubq_s16(vaddq_s16(v57, v80), vsraq_n_s16(v65, v65, 1uLL));
    v88 = vsubq_s16(vshrq_n_s16(v60, 1uLL), v76);
    v89 = vsraq_n_s16(vaddq_s16(vsubq_s16(v73, v57), v80), v73, 1uLL);
    v90 = vsraq_n_s16(v60, v76, 1uLL);
    v91 = vsraq_n_s16(vaddq_s16(v86, v73), v57, 1uLL);
    v92 = vaddq_s16(v90, v83);
    v93 = vaddq_s16(v88, v85);
    v94 = vsubq_s16(v85, v88);
    v95 = vshrq_n_s16(v87, 2uLL);
    v96 = vsraq_n_s16(v87, v89, 2uLL);
    v97 = vsubq_s16(v95, v89);
    v98 = vsubq_s16(v83, v90);
    v99 = vshrq_n_s16(v84, 2uLL);
    v100 = vsraq_n_s16(v84, v91, 2uLL);
    v101 = vsubq_s16(v91, v99);
    v102 = vaddq_s16(v101, v92);
    v103 = vaddq_s16(v97, v93);
    v104 = vaddq_s16(v96, v94);
    v105 = vaddq_s16(v100, v98);
    v106 = vsubq_s16(v98, v100);
    v107 = vsubq_s16(v94, v96);
    v108 = vsubq_s16(v93, v97);
    v109 = vsubq_s16(v92, v101);
    v110 = vzip1q_s16(v102, v103);
    v111 = vzip2q_s16(v102, v103);
    v112 = vzip1q_s16(v104, v105);
    v113 = vzip2q_s16(v104, v105);
    v114 = vzip1q_s16(v106, v107);
    v115 = vzip2q_s16(v106, v107);
    v116 = vzip1q_s16(v108, v109);
    v117 = vzip2q_s16(v108, v109);
    v118 = vzip1q_s32(v110, v112);
    v119 = vzip2q_s32(v110, v112);
    v120 = vzip1q_s32(v114, v116);
    v121 = vzip2q_s32(v114, v116);
    v122 = vzip1q_s32(v111, v113);
    v123 = vzip2q_s32(v111, v113);
    v124 = vzip1q_s32(v115, v117);
    v125 = vzip2q_s32(v115, v117);
    v126 = vzip2q_s64(v118, v120);
    v118.i64[1] = v120.i64[0];
    v127 = vzip2q_s64(v119, v121);
    v117.i64[0] = v119.i64[0];
    v117.i64[1] = v121.i64[0];
    v128 = vzip2q_s64(v122, v124);
    v122.i64[1] = v124.i64[0];
    v129 = vzip2q_s64(v123, v125);
    v123.i64[1] = v125.i64[0];
    v130 = vaddq_s16(v118, v122);
    v131 = vaddq_s16(v129, v126);
    v132 = vaddq_s16(v129, v128);
    v133 = vsubq_s16(v128, vaddq_s16(vsraq_n_s16(v129, v129, 1uLL), v127));
    v134 = vsubq_s16(v118, v122);
    v135 = vaddq_s16(v127, v126);
    v136 = vsubq_s16(v131, vsraq_n_s16(v127, v127, 1uLL));
    v137 = vsubq_s16(vshrq_n_s16(v117, 1uLL), v123);
    v138 = vaddq_s16(vsubq_s16(vshrq_n_s16(v128, 1uLL), v126), v132);
    v139 = vsraq_n_s16(v117, v123, 1uLL);
    v140 = vaddq_s16(vsraq_n_s16(v128, v126, 1uLL), v135);
    v141 = vsubq_s16(v134, v137);
    v142 = vshrq_n_s16(v136, 2uLL);
    v143 = vsraq_n_s16(v136, v138, 2uLL);
    v144 = vsubq_s16(v142, v138);
    v145 = vsubq_s16(v130, v139);
    v146 = vshrq_n_s16(v133, 2uLL);
    v147 = vsraq_n_s16(v133, v140, 2uLL);
    v148 = vsubq_s16(v140, v146);
    v149 = vaddq_s16(vaddq_s16(v130, v22), v139);
    v150 = vaddq_s16(vaddq_s16(v134, v22), v137);
    v151 = vaddq_s16(v141, v22);
    v152 = vaddq_s16(v145, v22);
    *v82 = vshrq_n_s16(vaddq_s16(v149, v148), 6uLL);
    v82[2] = vshrq_n_s16(vaddq_s16(v150, v144), 6uLL);
    v82[4] = vshrq_n_s16(vaddq_s16(v151, v143), 6uLL);
    v82[6] = vshrq_n_s16(vaddq_s16(v152, v147), 6uLL);
    v82[8] = vshrq_n_s16(vsubq_s16(v152, v147), 6uLL);
    v82[10] = vshrq_n_s16(vsubq_s16(v151, v143), 6uLL);
    v82[12] = vshrq_n_s16(vsubq_s16(v150, v144), 6uLL);
    v82[14] = vshrq_n_s16(vsubq_s16(v149, v148), 6uLL);
LABEL_23:
    v11 >>= 1;
    ++v9;
    v32 += 64;
  }

  while (v9 != 4);
  return result;
}

uint64_t sub_277379A14(uint64_t result, _OWORD *a2, uint64_t a3, double a4, int8x16_t a5, double a6, double a7, double a8, int8x16_t a9, int16x8_t a10)
{
  a5.i32[0] = 0;
  v11 = 0;
  v12 = *(result + 40);
  v13 = *(v12 + 52);
  v14 = *(v12 + 55);
  v15 = *(result + 56);
  v16 = *(result + 1422192);
  v17.i32[1] = 0;
  v17.i64[1] = 0;
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v18 = v14;
  v19 = v14 / 6u;
  v20 = v14 % 6u;
  v21 = (&unk_2773B6180 + 128 * v20);
  v22 = a3 + (v20 << 7);
  v23 = xmmword_2773B3DB0;
  v24 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(xmmword_2773B57F0, xmmword_2773B3DF0), xmmword_2773B3DC0), xmmword_2773B3DB0);
  LODWORD(result) = 1 << (5 - v19);
  v25 = (6 - v19);
  v26 = (v19 - 6);
  v27 = v18 >= 0x24;
  if (v18 < 0x24)
  {
    v28 = 1;
  }

  else
  {
    LODWORD(result) = 0;
    v28 = 0;
  }

  if (v27)
  {
    v25 = 0;
  }

  if (!v27)
  {
    v26 = 0;
  }

  if (v16)
  {
    result = result;
  }

  else
  {
    v28 = 1;
    result = 0;
  }

  if (!v16)
  {
    v25 = 0;
    v26 = 0;
    v19 -= 2;
  }

  v23.i32[0] = v16;
  v29 = vdupq_lane_s8(*&vceqq_s8(v23, a5), 0);
  v23.i32[0] = v19;
  a9.i32[0] = v26;
  v17.i32[0] = result;
  v30 = vdupq_lane_s16(*&vbslq_s8(v29, v23, a9), 0);
  v31 = vqtbl1q_s8(v17, xmmword_2773B3DF0);
  v32 = vdupq_n_s32(-v25);
  v33 = word_2773B6170;
  do
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }

    v34.i32[0] = *(v15 + v11 + 32);
    v35.i32[0] = *(v15 + v11 + 38);
    result = *(v15 + v11 + 90);
    a10.i16[0] = *(v15 + v11 + 136);
    a10.i16[2] = *(v15 + v11 + 138);
    v34.i16[2] = *(v15 + v11 + 36);
    v35.i16[2] = *(v15 + v11 + 46);
    v34.i16[3] = *(v15 + v11 + 42);
    v35.i16[3] = *(v15 + v11 + 50);
    v10.i16[0] = *(v15 + v11 + 148);
    v10.i16[2] = *(v15 + v11 + 150);
    *v36.i8 = v34;
    v36.i16[4] = *(v15 + v11 + 44);
    *v37.i8 = v35;
    v37.i16[4] = *(v15 + v11 + 58);
    v36.i16[5] = *(v15 + v11 + 52);
    v37.i16[5] = *(v15 + v11 + 66);
    v36.i32[3] = *(v15 + v11 + 54);
    v37.i32[3] = *(v15 + v11 + 68);
    v38.i16[0] = *(v15 + v11 + 48);
    v38.i16[1] = *(v15 + v11 + 60);
    v38.i16[2] = *(v15 + v11 + 64);
    v38.i16[3] = *(v15 + v11 + 72);
    v38.i64[1] = *(v15 + v11 + 80);
    v39.i16[0] = *(v15 + v11 + 62);
    v39.i16[1] = *(v15 + v11 + 74);
    v39.i16[2] = *(v15 + v11 + 78);
    v39.i16[3] = *(v15 + v11 + 88);
    v39.i64[1] = *(v15 + v11 + 96);
    v40.i16[0] = *(v15 + v11 + 76);
    v40.i16[1] = *(v15 + v11 + 90);
    v40.i16[2] = *(v15 + v11 + 94);
    v40.i16[3] = *(v15 + v11 + 104);
    v40.i64[1] = *(v15 + v11 + 112);
    v41.i16[0] = *(v15 + v11 + 92);
    v41.i16[1] = *(v15 + v11 + 106);
    v41.i16[2] = *(v15 + v11 + 110);
    v41.i16[3] = *(v15 + v11 + 120);
    v41.i64[1] = *(v15 + v11 + 126);
    v42.i16[0] = *(v15 + v11 + 108);
    v42.i16[1] = *(v15 + v11 + 122);
    v42.i16[2] = *(v15 + v11 + 124);
    v42.i16[3] = *(v15 + v11 + 134);
    v42.i64[1] = *(v15 + v11 + 140);
    v10 = vuzp1_s16(*a10.i8, v10);
    *v43.i8 = v10;
    v43.i64[1] = *(v15 + v11 + 152);
    if (!v16)
    {
      v52 = vmulq_s16(vshlq_u16(*v21, v30), v36);
      v57 = vmulq_s16(vshlq_u16(v21[1], v30), v37);
      v60 = vmulq_s16(vshlq_u16(v21[2], v30), v38);
      v65 = vmulq_s16(vshlq_u16(v21[3], v30), v39);
      v68 = vmulq_s16(vshlq_u16(v21[4], v30), v40);
      v73 = vmulq_s16(vshlq_u16(v21[5], v30), v41);
      v76 = vmulq_s16(vshlq_u16(v21[6], v30), v42);
      v81 = vshlq_u16(v21[7], v30);
LABEL_21:
      v80 = vmulq_s16(v81, v43);
      goto LABEL_22;
    }

    v44 = *v22;
    if (!v28)
    {
      v52 = vmulq_s16(vshlq_u16(v44, v30), v36);
      v57 = vmulq_s16(vshlq_u16(*(v22 + 16), v30), v37);
      v60 = vmulq_s16(vshlq_u16(*(v22 + 32), v30), v38);
      v65 = vmulq_s16(vshlq_u16(*(v22 + 48), v30), v39);
      v68 = vmulq_s16(vshlq_u16(*(v22 + 64), v30), v40);
      v73 = vmulq_s16(vshlq_u16(*(v22 + 80), v30), v41);
      v76 = vmulq_s16(vshlq_u16(*(v22 + 96), v30), v42);
      v81 = vshlq_u16(*(v22 + 112), v30);
      goto LABEL_21;
    }

    v45.i16[1] = *(v15 + v11 + 60);
    v45.i16[2] = *(v15 + v11 + 64);
    v45.i16[3] = *(v15 + v11 + 72);
    v46.i16[1] = *(v15 + v11 + 74);
    v46.i16[2] = *(v15 + v11 + 78);
    v46.i16[3] = *(v15 + v11 + 88);
    v47.i16[1] = *(v15 + v11 + 90);
    v47.i16[2] = *(v15 + v11 + 94);
    v47.i16[3] = *(v15 + v11 + 104);
    v48.i16[1] = *(v15 + v11 + 106);
    v48.i16[2] = *(v15 + v11 + 110);
    v48.i16[3] = *(v15 + v11 + 120);
    v49.i16[1] = *(v15 + v11 + 122);
    v49.i16[2] = *(v15 + v11 + 124);
    v49.i16[3] = *(v15 + v11 + 134);
    v50 = vuzp2q_s16(vmull_s16(v34, *v44.i8), vmull_high_s16(v36, v44));
    v51 = vmulq_s16(v44, v36);
    v52 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v51, v50), v31), v32)), vshlq_s32(vaddq_s32(vzip2q_s16(v51, v50), v31), v32));
    v53 = *(v22 + 16);
    v54 = *(v22 + 32);
    v55 = vuzp2q_s16(vmull_s16(v35, *v53.i8), vmull_high_s16(v37, v53));
    v56 = vmulq_s16(v53, v37);
    v57 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v56, v55), v31), v32)), vshlq_s32(vaddq_s32(vzip2q_s16(v56, v55), v31), v32));
    v45.i16[0] = *(v15 + v11 + 48);
    v58 = vuzp2q_s16(vmull_s16(v45, *v54.i8), vmull_s16(*(v15 + v11 + 80), *&vextq_s8(v54, v54, 8uLL)));
    v59 = vmulq_s16(v54, v38);
    v60 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v59, v58), v31), v32)), vshlq_s32(vaddq_s32(vzip2q_s16(v59, v58), v31), v32));
    v61 = *(v22 + 48);
    v62 = *(v22 + 64);
    v46.i16[0] = *(v15 + v11 + 62);
    v63 = vuzp2q_s16(vmull_s16(v46, *v61.i8), vmull_s16(*(v15 + v11 + 96), *&vextq_s8(v61, v61, 8uLL)));
    v64 = vmulq_s16(v61, v39);
    v65 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v64, v63), v31), v32)), vshlq_s32(vaddq_s32(vzip2q_s16(v64, v63), v31), v32));
    v47.i16[0] = *(v15 + v11 + 76);
    v66 = vuzp2q_s16(vmull_s16(v47, *v62.i8), vmull_s16(*(v15 + v11 + 112), *&vextq_s8(v62, v62, 8uLL)));
    v67 = vmulq_s16(v62, v40);
    v68 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v67, v66), v31), v32)), vshlq_s32(vaddq_s32(vzip2q_s16(v67, v66), v31), v32));
    v69 = *(v22 + 80);
    v70 = *(v22 + 96);
    v48.i16[0] = *(v15 + v11 + 92);
    v71 = vuzp2q_s16(vmull_s16(v48, *v69.i8), vmull_s16(*(v15 + v11 + 126), *&vextq_s8(v69, v69, 8uLL)));
    v72 = vmulq_s16(v69, v41);
    v73 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v72, v71), v31), v32)), vshlq_s32(vaddq_s32(vzip2q_s16(v72, v71), v31), v32));
    v49.i16[0] = *(v15 + v11 + 108);
    v74 = vuzp2q_s16(vmull_s16(v49, *v70.i8), vmull_s16(*(v15 + v11 + 140), *&vextq_s8(v70, v70, 8uLL)));
    v75 = vmulq_s16(v70, v42);
    v76 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v75, v74), v31), v32)), vshlq_s32(vaddq_s32(vzip2q_s16(v75, v74), v31), v32));
    v77 = *(v22 + 112);
    v78 = vuzp2q_s16(vmull_s16(v10, *v77.i8), vmull_s16(*(v15 + v11 + 152), *&vextq_s8(v77, v77, 8uLL)));
    v79 = vmulq_s16(v77, v43);
    v80 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v79, v78), v31), v32)), vshlq_s32(vaddq_s32(vzip2q_s16(v79, v78), v31), v32));
LABEL_22:
    v82 = (a2 + 2 * *v33);
    v83 = vaddq_s16(v68, v52);
    v84 = vsubq_s16(v73, vsraq_n_s16(vaddq_s16(v65, v80), v80, 1uLL));
    v85 = vsubq_s16(v52, v68);
    v86 = vaddq_s16(v65, v57);
    v87 = vsubq_s16(vaddq_s16(v57, v80), vsraq_n_s16(v65, v65, 1uLL));
    v88 = vsubq_s16(vshrq_n_s16(v60, 1uLL), v76);
    v89 = vsraq_n_s16(vaddq_s16(vsubq_s16(v73, v57), v80), v73, 1uLL);
    v90 = vsraq_n_s16(v60, v76, 1uLL);
    v91 = vsraq_n_s16(vaddq_s16(v86, v73), v57, 1uLL);
    v92 = vaddq_s16(v90, v83);
    v93 = vaddq_s16(v88, v85);
    v94 = vsubq_s16(v85, v88);
    v95 = vshrq_n_s16(v87, 2uLL);
    v96 = vsraq_n_s16(v87, v89, 2uLL);
    v97 = vsubq_s16(v95, v89);
    v98 = vsubq_s16(v83, v90);
    v99 = vshrq_n_s16(v84, 2uLL);
    v100 = vsraq_n_s16(v84, v91, 2uLL);
    v101 = vsubq_s16(v91, v99);
    v102 = vaddq_s16(v101, v92);
    v103 = vaddq_s16(v97, v93);
    v104 = vaddq_s16(v96, v94);
    v105 = vaddq_s16(v100, v98);
    v106 = vsubq_s16(v98, v100);
    v107 = vsubq_s16(v94, v96);
    v108 = vsubq_s16(v93, v97);
    v109 = vsubq_s16(v92, v101);
    v110 = vzip1q_s16(v102, v103);
    v111 = vzip2q_s16(v102, v103);
    v112 = vzip1q_s16(v104, v105);
    v113 = vzip2q_s16(v104, v105);
    v114 = vzip1q_s16(v106, v107);
    v115 = vzip2q_s16(v106, v107);
    v116 = vzip1q_s16(v108, v109);
    v117 = vzip2q_s16(v108, v109);
    v118 = vzip1q_s32(v110, v112);
    v119 = vzip2q_s32(v110, v112);
    v120 = vzip1q_s32(v114, v116);
    v121 = vzip2q_s32(v114, v116);
    v122 = vzip1q_s32(v111, v113);
    v123 = vzip2q_s32(v111, v113);
    v124 = vzip1q_s32(v115, v117);
    v125 = vzip2q_s32(v115, v117);
    v126 = vzip2q_s64(v118, v120);
    v118.i64[1] = v120.i64[0];
    v127 = vzip2q_s64(v119, v121);
    v117.i64[0] = v119.i64[0];
    v117.i64[1] = v121.i64[0];
    v128 = vzip2q_s64(v122, v124);
    v122.i64[1] = v124.i64[0];
    v129 = vzip2q_s64(v123, v125);
    v123.i64[1] = v125.i64[0];
    v130 = vaddq_s16(v118, v122);
    v131 = vaddq_s16(v129, v126);
    v132 = vaddq_s16(v129, v128);
    v133 = vsubq_s16(v128, vaddq_s16(vsraq_n_s16(v129, v129, 1uLL), v127));
    v134 = vsubq_s16(v118, v122);
    v135 = vaddq_s16(v127, v126);
    v136 = vsubq_s16(v131, vsraq_n_s16(v127, v127, 1uLL));
    v137 = vsubq_s16(vshrq_n_s16(v117, 1uLL), v123);
    v138 = vaddq_s16(vsubq_s16(vshrq_n_s16(v128, 1uLL), v126), v132);
    v139 = vsraq_n_s16(v117, v123, 1uLL);
    v140 = vaddq_s16(vsraq_n_s16(v128, v126, 1uLL), v135);
    v141 = vsubq_s16(v134, v137);
    v142 = vshrq_n_s16(v136, 2uLL);
    v143 = vsraq_n_s16(v136, v138, 2uLL);
    v144 = vsubq_s16(v142, v138);
    v145 = vsubq_s16(v130, v139);
    v146 = vshrq_n_s16(v133, 2uLL);
    v147 = vsraq_n_s16(v133, v140, 2uLL);
    v148 = vsubq_s16(v140, v146);
    v149 = vaddq_s16(vaddq_s16(v130, v24), v139);
    v150 = vaddq_s16(vaddq_s16(v134, v24), v137);
    v151 = vaddq_s16(v141, v24);
    v152 = vaddq_s16(v145, v24);
    *v82 = vshrq_n_s16(vaddq_s16(v149, v148), 6uLL);
    v82[2] = vshrq_n_s16(vaddq_s16(v150, v144), 6uLL);
    a10 = vshrq_n_s16(vsubq_s16(v150, v144), 6uLL);
    v82[4] = vshrq_n_s16(vaddq_s16(v151, v143), 6uLL);
    v82[6] = vshrq_n_s16(vaddq_s16(v152, v147), 6uLL);
    v82[8] = vshrq_n_s16(vsubq_s16(v152, v147), 6uLL);
    v82[10] = vshrq_n_s16(vsubq_s16(v151, v143), 6uLL);
    v82[12] = a10;
    v82[14] = vshrq_n_s16(vsubq_s16(v149, v148), 6uLL);
LABEL_23:
    v13 >>= 1;
    v11 += 128;
    ++v33;
  }

  while (v11 != 512);
  return result;
}

uint64_t sub_27737A198(uint64_t a1, _OWORD *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v7 = sub_2773A31FC(*(v4 + 55), *(v4 + 56));
  v6 = sub_2773A31FC(*(v4 + 55), *(*(a1 + 40) + 57));
  v9 = *(v4 + 53);
  sub_2772A2EBC((*(a1 + 56) + 800), (*(a1 + 56) + 544), (*(a1 + 56) + 672), v8, &v7, &v6, a2, *(a1 + 1422192));
  return 0;
}

uint64_t sub_27737A25C(uint64_t a1, _OWORD *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v7 = sub_2773A31FC(*(v4 + 55), *(v4 + 56));
  v6 = sub_2773A31FC(*(v4 + 55), *(*(a1 + 40) + 57));
  v9 = *(v4 + 53);
  sub_2772A3368((*(a1 + 56) + 800), (*(a1 + 56) + 544), (*(a1 + 56) + 672), v8, &v7, &v6, a2, *(a1 + 1422192));
  return 0;
}

uint64_t sub_27737A320(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x10)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    goto LABEL_32;
  }

  v4 = 0;
  LODWORD(v3) = 0;
  v2 = 0;
  for (i = 16; i <= a2; i += 16)
  {
    v6 = *(a1 + v4);
    v7 = vandq_s8(vceqzq_s8(v6), xmmword_2773B5400);
    v8 = vpaddq_s8(v7, v7);
    v9 = vpaddq_s8(v8, v8);
    if (!vpaddq_s8(v9, v9).u16[0])
    {
      *(a1 + v3) = v6;
      v3 = (v3 + 16);
      goto LABEL_20;
    }

    if (v6.i8[0])
    {
      v10 = *(a1 + v4);
      do
      {
        *(a1 + v3) = v10;
        ++v4;
        LODWORD(v3) = v3 + 1;
        v10 = *(a1 + v4);
      }

      while (v10);
    }

    *(a1 + v3) = 0;
    v3 = (v3 + 1);
    i = v4 + 1;
    v2 = 1;
    if (v4 + 1 < a2)
    {
      while (1)
      {
        v11 = v3;
        if (v2 == 2)
        {
          if (*(a1 + i) == 3)
          {
            if (++i >= a2)
            {
              v2 = 2;
              break;
            }

            v2 = 0;
          }

          else
          {
            v2 = 2;
          }
        }

        v12 = *(a1 + i);
        *(a1 + v3) = v12;
        ++i;
        if (v12)
        {
          v2 = 0;
LABEL_19:
          v3 = (v11 + 1);
          break;
        }

        ++v2;
        v3 = (v3 + 1);
        if (i >= a2)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_20:
    v4 = i;
  }

LABEL_32:
  while (v4 < a2)
  {
    if (v2 == 2)
    {
      if (*(a1 + v4) == 3)
      {
        if (++v4 >= a2)
        {
          break;
        }

        v2 = 0;
      }

      else
      {
        v2 = 2;
      }
    }

    v13 = *(a1 + v4);
    *(a1 + v3) = v13;
    if (v13)
    {
      v2 = 0;
    }

    else
    {
      ++v2;
    }

    v3 = (v3 + 1);
    ++v4;
  }

  if (v3 < a2)
  {
    bzero((a1 + v3), ~v3 + a2);
  }

  return v3;
}

uint64_t sub_27737A4B4(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = 4294958327;
  if (a1 && a3)
  {
    *a3 = a1;
    *(a3 + 16) = a1;
    *(a3 + 32) = bswap32(*a1);
    *(a3 + 36) = 0;
    v4 = a1 + a2;
    *(a3 + 24) = v4;
    *(a3 + 8) = a2;
    *(a3 + 12) = a2;
    if (!*(v4 - 1))
    {
      v5 = a1 + a2 - 2;
      while (a2)
      {
        *(a3 + 12) = --a2;
        if (*v5--)
        {
          goto LABEL_7;
        }
      }

      return 4294958327;
    }

LABEL_7:
    if (!a2)
    {
      return 4294958327;
    }

    return 0;
  }

  return v3;
}

BOOL sub_27737A524(uint64_t a1)
{
  v1 = *a1 + *(a1 + 12) - 1;
  v2 = *(a1 + 16);
  if (v2 < v1)
  {
    return 1;
  }

  if (v2 != v1)
  {
    return 0;
  }

  v4 = *(a1 + 36);
  v5 = *(a1 + 32) >> (v4 + 24);
  v6 = 1 << (7 - v4);
  if (v5)
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 1;
  }

  return !v7;
}

uint64_t sub_27737A584(unsigned int *a1, int a2, void *a3)
{
  v3 = *a1;
  *a3 = 0;
  if (v3 < 1)
  {
    return 4294958327;
  }

  for (i = a1 + 27; *i != a2; i += 1880)
  {
    if (!--v3)
    {
      return 4294958327;
    }
  }

  result = 0;
  *a3 = i - 15;
  return result;
}

uint64_t sub_27737A5C8(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3 < 1)
  {
    return 4294958327;
  }

  v4 = (a1 + 60176);
  do
  {
    if (*v4 == a2)
    {
      result = 0;
      *a3 = v4;
      return result;
    }

    v4 += 84;
    --v3;
  }

  while (v3);
  if (*a3)
  {
    return 0;
  }

  else
  {
    return 4294958327;
  }
}

uint64_t sub_27737A61C(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294958327;
  }

  v3 = *(a2 + 12);
  if (v3)
  {
    v5 = a2 + 216;
    v6 = *(a2 + 12);
    v7 = (a2 + 216);
    do
    {
      v8 = *v7;
      if (!*v7)
      {
        return 4294958327;
      }

      if (a1 || *(v8 + 1377) && !*(v8 + 1372))
      {
        v9 = *(v8 + 7264);
        if (v9)
        {
          j__free(v9);
          *(v8 + 7264) = 0;
        }

        *(v8 + 2) = 0;
        *v7 = 0;
      }

      ++v7;
      --v6;
    }

    while (v6);
    v11 = 0;
    v12 = (a2 + 216);
    do
    {
      if (*v12)
      {
        *(v5 + 8 * v11++) = *v12;
      }

      ++v12;
      --v3;
    }

    while (v3);
  }

  else
  {
    v11 = 0;
  }

  result = 0;
  *(a2 + 12) = v11;
  return result;
}

uint64_t sub_27737A700(uint64_t a1)
{
  if (!a1)
  {
    return 4294958327;
  }

  v2 = *(a1 + 12);
  if (v2)
  {
    v3 = a1 + 216;
    v4 = *(a1 + 12);
    v5 = (a1 + 216);
    do
    {
      v6 = *v5;
      if (!*v5)
      {
        return 4294958327;
      }

      if (!*(v6 + 1372))
      {
        v7 = *(v6 + 7264);
        if (v7)
        {
          j__free(v7);
          *(v6 + 7264) = 0;
        }

        *(v6 + 2) = 0;
        *v5 = 0;
      }

      ++v5;
      --v4;
    }

    while (v4);
    v8 = 0;
    v9 = (a1 + 216);
    do
    {
      if (*v9)
      {
        *(v3 + 8 * v8++) = *v9;
      }

      ++v9;
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *(a1 + 12) = v8;
  return result;
}

uint64_t sub_27737A7C4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 16;
  v4 = a1 + 232;
  do
  {
    v5 = v3 + 760 * v2;
    if (*(v5 + 12) && v5 != *(a1 + 22816))
    {
      v6 = 0;
      do
      {
        *(*(v4 + 8 * v6++) + 1372) = 0;
      }

      while (v6 < *(v5 + 12));
      sub_27737A61C(0, v5);
    }

    ++v2;
    v4 += 760;
  }

  while (v2 != 30);
  return 0;
}

uint64_t sub_27737A854(int a1, uint64_t a2, int a3, int a4)
{
  v7 = a3 & 0xFFFFFFFD;
  v8 = *(a2 + 22816);
  if ((a3 & 0xFFFFFFFD) == 1)
  {
    if (!v8)
    {
      v10 = a2 + 16;
      goto LABEL_17;
    }

    result = 0;
    if (!a1 || a4)
    {
      return result;
    }
  }

  else if (!a1 && v8)
  {
    return 0;
  }

  v10 = a2 + 16;
  if (v8)
  {
    v11 = v8 == a2 + 22056;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = a2 + 776;
    v13 = 29;
    while (v12 - 760 != v8)
    {
      v12 += 760;
      if (!--v13)
      {
        *(a2 + 22816) = 0;
        return 4294958327;
      }
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = v10;
LABEL_18:
  *(a2 + 22816) = v12;
  v14 = *(a2 + 22824);
  if (v12 == v14)
  {
    v14 = sub_2772A5984(v10, v14, v12);
    *(a2 + 22824) = v14;
  }

  if (v7 == 1 && a4)
  {
    if (v14)
    {
      return 0;
    }
  }

  else
  {
    *(v12 + 208) = 0;
    *(v12 + 16) = 0;
    *v12 = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0xFFFFFFFFLL;
    if (*(a2 + 22824))
    {
      return 0;
    }
  }

  result = 0;
  *(a2 + 22824) = *(a2 + 22816);
  return result;
}