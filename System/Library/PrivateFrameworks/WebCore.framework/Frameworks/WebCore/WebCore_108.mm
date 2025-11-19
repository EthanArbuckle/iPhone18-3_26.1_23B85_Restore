uint64_t run_prefilter(uint64_t *a1, char *a2, char *a3, int a4, int a5, int a6, _DWORD *a7, float *a8, int *a9, int a10, int a11, float *a12)
{
  v75 = a8;
  v76 = a7;
  v82 = a6;
  v13 = a3;
  v14 = a2;
  v74 = &v70;
  v77 = a12;
  LODWORD(v78) = a11;
  v72 = a10;
  v73 = a9;
  v88[2] = *MEMORY[0x277D85DE8];
  v87 = 0;
  v85 = *a1;
  v79 = a5;
  MEMORY[0x28223BE20](a1, a2, a3);
  v21 = 0;
  v71 = v22;
  v88[0] = (&v70 - v23);
  v88[1] = (&v70 + 4 * v22 - v23);
  v24 = v20 + v19;
  if (v18 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v18;
  }

  v80 = v24;
  v81 = v25;
  v26 = 8 * v25;
  v27 = 4 * v24;
  v28 = v17;
  v86 = v20;
  v29 = (v16 + 4 * v20);
  v83 = v19;
  v84 = 4 * v19;
  do
  {
    v30 = v88[v21 / 8];
    memcpy(v30, v28, 0x1000uLL);
    v31 = memcpy(v30 + 1024, v29, v84);
    v21 += 8;
    v29 += v27;
    v28 += 4096;
  }

  while (v26 != v21);
  if (v72)
  {
    MEMORY[0x28223BE20](v31, v32, v71);
    v34 = (&v70 - v33);
    pitch_downsample(v88, (&v70 - v33), v35, a4);
    v36 = v83;
    pitch_search(v34 + 128, v34->f32, v83, 979, &v87);
    v87 = 1024 - v87;
    remove_doubling(v34, 1024, 15, v36, &v87);
    if (v87 >= 1023)
    {
      v87 = 1022;
    }

    v38 = v37 * 0.7;
    v39 = *(a1 + 15);
    if (v39 > 2)
    {
      v38 = v38 * 0.5;
    }

    if (v39 > 4)
    {
      v38 = v38 * 0.5;
    }

    if (v39 > 8)
    {
      v38 = 0.0;
    }

    v40 = v77;
    if (*v77)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v87 = 15;
    v38 = 0.0;
    v40 = v77;
    if (*v77)
    {
LABEL_16:
      v38 = v38 * v40[10];
    }
  }

  v41 = v87 - *(a1 + 27);
  if (v41 < 0)
  {
    v41 = *(a1 + 27) - v87;
  }

  if (10 * v41 <= v87)
  {
    v42 = 0.2;
  }

  else
  {
    v42 = 0.4;
  }

  v43 = v42 + 0.1;
  if (v78 >= 25)
  {
    v43 = v42;
  }

  v44 = v43 + 0.1;
  if (v78 >= 35)
  {
    v44 = v42;
  }

  v45 = *(a1 + 28);
  if (v45 <= 0.4)
  {
    v46 = v44;
  }

  else
  {
    v46 = v44 + -0.1;
  }

  if (v45 > 0.55)
  {
    v46 = v46 + -0.1;
  }

  if (v38 >= fmaxf(v46, 0.2))
  {
    if (vabds_f32(v38, v45) < 0.1)
    {
      v38 = *(a1 + 28);
    }

    v48 = vcvtms_s32_f32(((v38 * 32.0) / 3.0) + 0.5);
    if (v48 >= 8)
    {
      v48 = 8;
    }

    if (v48 <= 1)
    {
      v48 = 1;
    }

    v72 = v48 - 1;
    v47 = v48 * 0.09375;
    LODWORD(v71) = 1;
  }

  else
  {
    v72 = 0;
    LODWORD(v71) = 0;
    v47 = 0.0;
  }

  v49 = 0;
  v50 = a1 + 252;
  v51 = 4 * v86;
  v52 = 4 * v79;
  v77 = (4096 - 4 * v79);
  v78 = 4 * (1024 - v83);
  v80 *= 4;
  v81 *= 8;
  do
  {
    v56 = *(v85 + 48);
    v57 = *(a1 + 27);
    if (v57 <= 15)
    {
      v57 = 15;
    }

    *(a1 + 27) = v57;
    memcpy(v14, v50, v51);
    v65 = v56 - v86;
    if (v56 != v86)
    {
      *v58.i32 = -*(a1 + 28);
      v58 = comb_filter(&v14[v51], v88[v49 / 8] + 4096, *(a1 + 27), *(a1 + 27), v56 - v86, *(a1 + 29), *(a1 + 29), 0, v58, *v58.i32, v59, v60, v61, v62, v63, v64, 0);
    }

    v66 = &v14[4 * v56];
    v67 = v83;
    *v58.i32 = -*(a1 + 28);
    comb_filter(v66, &v88[v49 / 8][v65 + 1024], *(a1 + 27), v87, v83 - v65, *(a1 + 29), v82, *(v85 + 72), v58, -v47, v59, v60, v61, v62, v63, v64, v86);
    memcpy(v50, &v14[v52], v51);
    if (v67 < 1025)
    {
      memmove(v13, &v13[v52], v78);
      v53 = v77 + v13;
      v54 = v88[v49 / 8] + 1024;
      v55 = v84;
    }

    else
    {
      v54 = &v88[v49 / 8][v79];
      v53 = v13;
      v55 = 4096;
    }

    memcpy(v53, v54, v55);
    v49 += 8;
    v13 += 4096;
    v50 += v51;
    v14 += v80;
  }

  while (v81 != v49);
  v68 = v76;
  *v75 = v47;
  *v68 = v87;
  *v73 = v72;
  return v71;
}

float transient_analysis()
{
  v45[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x28223BE20]();
  v8 = (v45 - v7);
  *v6 = 0;
  v9 = 0.0625;
  if (v5)
  {
    v9 = 0.03125;
  }

  if (v2 < 1)
  {
    goto LABEL_9;
  }

  v10 = v2;
  if (v1 <= 0)
  {
    do
    {
      *(v8 + 1) = 0uLL;
      *(v8 + 2) = 0uLL;
      *v8 = 0uLL;
      --v10;
    }

    while (v10);
    goto LABEL_9;
  }

  if (v1 == 1)
  {
    do
    {
      *(v8 + 1) = 0uLL;
      *(v8 + 2) = 0uLL;
      *v8 = 0uLL;
      --v10;
    }

    while (v10);
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v16 = 0;
  v11 = 0;
  v17 = (v1 / 2);
  v18 = 6 * v17 - 102;
  v19 = 4 * v1;
  do
  {
    v20 = 0;
    v21 = 0.0;
    v22 = 0.0;
    do
    {
      v23 = *(v0 + v20);
      v24 = v21 + v23;
      v21 = (v22 + (v21 + v23)) + (v23 * -2.0);
      v22 = v23 + (v24 * -0.5);
      v8[v20 / 4] = v24;
      v20 += 4;
    }

    while (v19 != v20);
    *(v8 + 1) = 0uLL;
    *(v8 + 2) = 0uLL;
    v25 = 0.0;
    v26 = v8 + 1;
    v27 = v8;
    v28 = (v1 / 2);
    v29 = 0.0;
    *v8 = 0uLL;
    do
    {
      v30 = (*v26 * *v26) + (*(v26 - 1) * *(v26 - 1));
      v29 = v29 + v30;
      v25 = v25 + (v9 * (v30 - v25));
      *v27++ = v25;
      v26 += 2;
      --v28;
    }

    while (v28);
    v31 = 0.0;
    v32 = &v8[v17 - 1];
    v33 = v17 + 1;
    v34 = 0.0;
    do
    {
      v31 = v31 + ((*v32 - v31) * 0.125);
      *v32-- = v31;
      if (v34 <= v31)
      {
        v34 = v31;
      }

      --v33;
    }

    while (v33 > 1);
    if (v1 < 36)
    {
      v44 = 0 / v18;
      if (0 / v18 <= v11)
      {
        goto LABEL_18;
      }

LABEL_41:
      *v4 = v16;
      v11 = v44;
      goto LABEL_18;
    }

    v35 = 0;
    v36 = sqrt((v29 * v34) * 0.5 * v17);
    v37 = (v17 / (v36 + 1.0e-15)) * 64.0;
    v38 = 12;
    do
    {
      v39 = v37 * (v8[v38] + 1.0e-15);
      v40 = floorf(v39);
      v41 = v40 > 127.0 || v40 < 0.0;
      if (v40 < 0.0 && v40 <= 127.0)
      {
        v42 = 0;
      }

      else
      {
        v42 = 127;
      }

      v43 = vcvtms_s32_f32(v39);
      if (!v41)
      {
        v42 = v43;
      }

      v35 += transient_analysis_inv_table[v42];
      v38 += 4;
    }

    while (v38 < v17 - 5);
    v44 = (v35 << 8) / v18;
    if (v44 > v11)
    {
      goto LABEL_41;
    }

LABEL_18:
    ++v16;
    v0 += v19;
  }

  while (v16 != v2);
  if (v5 && (v11 - 201) <= 0x18E)
  {
    *v6 = 1;
  }

LABEL_10:
  v12 = sqrt((27 * v11));
  v13 = v12 + -42.0;
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  if (v13 > 163.0)
  {
    v13 = 163.0;
  }

  v14 = (v13 * 0.0069) + -0.139;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  result = sqrt(v14);
  *v3 = result;
  return result;
}

void compute_mdcts(uint64_t a1, int a2, uint64_t a3, float32x4_t *a4, int a5, int a6, int a7, int a8)
{
  v8 = a4;
  v11 = *(a1 + 4);
  v12 = *(a1 + 48);
  if (a2)
  {
    v13 = v12 * a2;
    if (a2 < 1)
    {
      goto LABEL_13;
    }

    v43 = a5;
    v44 = a8;
    v14 = *(a1 + 40);
  }

  else
  {
    v43 = a5;
    v44 = a8;
    v13 = v12 << a7;
    v14 = *(a1 + 40) - a7;
    a2 = 1;
    v12 <<= a7;
  }

  v15 = 0;
  v16 = 0;
  v48 = v13;
  v42 = a6;
  if (a6 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a6;
  }

  v45 = 4 * (v13 + v11);
  v46 = v17;
  v18 = 4 * v12;
  v19 = a2;
  do
  {
    v49 = v15;
    v20 = &v8->f32[v15];
    v50 = a3;
    v21 = v19;
    do
    {
      clt_mdct_forward_c(a1 + 80, a3, v20++, *(a1 + 72), v11, v14, v19);
      a3 += v18;
      --v21;
    }

    while (v21);
    ++v16;
    v15 = v49 + v48;
    a3 = v50 + v45;
    v8 = a4;
  }

  while (v16 != v46);
  v13 = v48;
  a5 = v43;
  a8 = v44;
  a6 = v42;
LABEL_13:
  if (a5 == 1 && a6 == 2 && v13 >= 1)
  {
    if (v13 < 8)
    {
      v22 = 0;
LABEL_21:
      v27 = v13 - v22;
      v28 = &v8->f32[v22];
      do
      {
        *v28 = (v28[v13] * 0.5) + (*v28 * 0.5);
        ++v28;
        --v27;
      }

      while (v27);
      goto LABEL_23;
    }

    v22 = v13 & 0x7FFFFFF8;
    v23.i64[0] = 0x3F0000003F000000;
    v23.i64[1] = 0x3F0000003F000000;
    v24 = v22;
    v25 = v8;
    do
    {
      v26 = vmlaq_f32(vmulq_f32(*(v25 + 4 * v13 + 16), v23), v23, v25[1]);
      *v25 = vmlaq_f32(vmulq_f32(*(v25 + 4 * v13), v23), v23, *v25);
      v25[1] = v26;
      v25 += 2;
      v24 -= 8;
    }

    while (v24);
    if (v22 != v13)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  if (a8 != 1)
  {
    v29 = (v13 / a8);
    v30 = 4 * (v13 - v29);
    if (a5 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = a5;
    }

    if (v29 > 0)
    {
      v32 = 0;
      v33 = 0;
      v34 = a8;
      v51 = a8;
      while (1)
      {
        v35 = v32;
        if (v29 >= 8)
        {
          v37 = (v8 + v35 * 4 + 16);
          v38 = v29 & 0x7FFFFFF8;
          do
          {
            v39 = vmulq_n_f32(*v37, v34);
            v37[-1] = vmulq_n_f32(v37[-1], v34);
            *v37 = v39;
            v37 += 2;
            v38 -= 8;
          }

          while (v38);
          v36 = v29 & 0x7FFFFFF8;
          if (v36 == v29)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v36 = 0;
        }

        v40 = v29 - v36;
        v41 = &v8->f32[v36 + v35];
        do
        {
          *v41 = *v41 * v34;
          ++v41;
          --v40;
        }

        while (v40);
LABEL_29:
        bzero(&v8->f32[(v13 * v33 + v29)], v30);
        v34 = v51;
        ++v33;
        v32 += v13;
        if (v33 == v31)
        {
          return;
        }
      }
    }

    do
    {
      bzero(&v8->f32[v29], v30);
      LODWORD(v29) = v29 + v13;
      --v31;
    }

    while (v31);
  }
}

float dynalloc_analysis(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, int16x4_t *a9, int a10, int a11, int a12, uint64_t a13, int a14, int a15, int *a16, int a17, uint64_t a18, _DWORD *a19, uint64_t a20, int32x4_t *a21)
{
  *&v462.f64[0] = a4;
  v25 = a1;
  v464 = *MEMORY[0x277D85DE8];
  v26 = MEMORY[0x28223BE20](a1, a2, a3);
  v28 = &v445[-((v27 + 15) & 0x7FFFFFFF0)];
  MEMORY[0x28223BE20](v26, v29, v30);
  v32 = &v445[-v31];
  v34 = v33;
  v455 = v35;
  bzero(v35, 4 * v33);
  v40 = 4 * v34;
  v460 = a6;
  v463.i64[0] = v34;
  if (a5 < 1)
  {
    v461.i64[0] = v445;
    v42 = MEMORY[0x28223BE20](v34, v36, v37);
    v44 = &v445[-((v43 + 15) & 0x7FFFFFFF0)];
    MEMORY[0x28223BE20](v42, v45, v46);
    v48 = &v445[-v47];
    LODWORD(v459.f64[0]) = a6 == 2;
    v49 = -31.9;
    goto LABEL_29;
  }

  *v38.i32 = (9 - a8);
  if (a5 <= 3)
  {
    v41 = 0;
    do
    {
LABEL_8:
      v39.i16[0] = a9->i16[v41];
      v39.i64[0] = vmovl_s16(*v39.i8).u64[0];
      *v39.i32 = ((((v39.i32[0] * 0.0625) + 0.5) + *v38.i32) - *(&eMeans + v41)) + (((v41 + 5) * (v41 + 5)) * 0.0062);
      v32->i32[v41++] = v39.i32[0];
    }

    while (a5 != v41);
    goto LABEL_9;
  }

  v41 = a5 & 0x7FFFFFFC;
  v50 = vdupq_lane_s32(v38, 0);
  v51 = xmmword_273B92120;
  v52 = &eMeans;
  v53 = vdupq_n_s32(0x3D800000u);
  v39 = vdupq_n_s64(5uLL);
  v54 = vdupq_n_s32(0x3BCB295Fu);
  v55 = xmmword_273B92130;
  v56 = v41;
  v57 = v32;
  v58 = vdupq_n_s64(4uLL);
  v59 = a9;
  do
  {
    v60 = *v59++;
    v61.i64[0] = 0x3F0000003F000000;
    v61.i64[1] = 0x3F0000003F000000;
    v62 = vaddq_s64(v51, v39);
    v63 = v62.i32[2];
    v64 = v62.i32[0];
    v65 = vaddq_s64(v55, v39);
    v66.i64[0] = (v64 * v64);
    v66.i64[1] = (v63 * v63);
    v67 = vaddq_f32(vmlaq_f32(v61, v53, vcvtq_f32_s32(vmovl_s16(v60))), v50);
    v68 = *v52++;
    v65.i64[0] = (v65.i32[0] * v65.i32[0]);
    v65.i64[1] = (v65.i32[2] * v65.i32[2]);
    *v57++ = vmlaq_f32(vsubq_f32(v67, v68), v54, vcvtq_f32_u32(vuzp1q_s32(v65, v66)));
    v51 = vaddq_s64(v51, v58);
    v55 = vaddq_s64(v55, v58);
    v56 -= 4;
  }

  while (v56);
  if (v41 != a5)
  {
    goto LABEL_8;
  }

LABEL_9:
  v69 = 0;
  if (a6 <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = a6;
  }

  v49 = -31.9;
  v71 = v25;
  do
  {
    v72 = v71;
    v73 = v32;
    v74 = a5;
    do
    {
      v75 = *v72++;
      v76 = v75;
      v77 = *v73++;
      v78 = v76 - v77;
      if (v49 <= v78)
      {
        v49 = v78;
      }

      --v74;
    }

    while (v74);
    ++v69;
    v71 = (v71 + v40);
  }

  while (v69 != v70);
  v461.i64[0] = v445;
  v79 = MEMORY[0x28223BE20](v34, v36, v37);
  v44 = &v445[-((v80 + 15) & 0x7FFFFFFF0)];
  v83 = MEMORY[0x28223BE20](v79, v81, v82);
  v48 = &v445[-v84];
  if (a5 < 8)
  {
    v85 = 0;
LABEL_23:
    v91 = a5 - v85;
    v92 = v85;
    v93 = &v44[v85];
    v94 = &v32->f32[v92];
    v95 = &v25->f32[v92];
    do
    {
      v96 = *v95++;
      v97 = v96;
      v98 = *v94++;
      *v93++ = v97 - v98;
      --v91;
    }

    while (v91);
    goto LABEL_25;
  }

  v85 = a5 & 0x7FFFFFF8;
  v86 = v25 + 1;
  v87 = v32 + 1;
  v88 = (v44 + 4);
  v89 = v85;
  do
  {
    v90 = vsubq_f32(*v86, *v87);
    v88[-1] = vsubq_f32(v86[-1], v87[-1]);
    *v88 = v90;
    v86 += 2;
    v87 += 2;
    v88 += 2;
    v89 -= 8;
  }

  while (v89);
  if (v85 != a5)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (a6 != 2)
  {
    LODWORD(v459.f64[0]) = 0;
LABEL_29:
    v100 = LODWORD(v462.f64[0]);
    memcpy(v48, v44, 4 * a5);
    if (a5 <= 1)
    {
      goto LABEL_46;
    }

    goto LABEL_30;
  }

  v99 = (v25 + 4 * v83);
  v100 = LODWORD(v462.f64[0]);
  if (a5 >= 8)
  {
    v101 = a5 & 0x7FFFFFF8;
    v115 = (v44 + 4);
    v116 = v99 + 1;
    v117 = v32 + 1;
    v118 = v101;
    do
    {
      v119 = vsubq_f32(v116[-1], v117[-1]);
      v120 = vsubq_f32(*v116, *v117);
      v121 = vbslq_s8(vcgtq_f32(*v115, v120), *v115, v120);
      v115[-1] = vbslq_s8(vcgtq_f32(v115[-1], v119), v115[-1], v119);
      *v115 = v121;
      v115 += 2;
      v116 += 2;
      v117 += 2;
      v118 -= 8;
    }

    while (v118);
    if (v101 == a5)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v101 = 0;
  }

  do
  {
    v122 = v44[v101];
    v123 = v32->f32[v101];
    if (v122 <= (v99->f32[v101] - v123))
    {
      v122 = v99->f32[v101] - v123;
    }

    v44[v101++] = v122;
  }

  while (a5 != v101);
LABEL_45:
  LODWORD(v459.f64[0]) = 1;
  memcpy(v48, v44, 4 * a5);
  if (a5 <= 1)
  {
LABEL_46:
    v108 = a5 - 2;
    v111 = v460;
    v112 = v463.i64[0];
    v113 = a16;
    v114 = a14;
    if (a5 < 1)
    {
      goto LABEL_63;
    }

    goto LABEL_47;
  }

LABEL_30:
  v105 = v44 + 1;
  v106 = *v44;
  v107 = a5 - 1;
  do
  {
    v106 = v106 + -2.0;
    if (*v105 > v106)
    {
      v106 = *v105;
    }

    *v105++ = v106;
    --v107;
  }

  while (v107);
  v108 = a5 - 2;
  v109 = (a5 - 2);
  v110 = v44[v109 + 1];
  v111 = v460;
  v112 = v463.i64[0];
  do
  {
    v110 = v110 + -3.0;
    if (v44[v109] > v110)
    {
      v110 = v44[v109];
    }

    v44[v109--] = v110;
  }

  while (v109 != -1);
  v113 = a16;
  v114 = a14;
LABEL_47:
  *v102.i32 = v49 + -12.0;
  if ((v49 + -12.0) < 0.0)
  {
    *v102.i32 = 0.0;
  }

  if (a5 <= 7)
  {
    v124 = 0;
    goto LABEL_54;
  }

  v124 = a5 & 0x7FFFFFF8;
  v125 = vdupq_lane_s32(v102, 0);
  v126 = v48 + 1;
  v127 = (v44 + 4);
  v128 = a21 + 1;
  v129.i64[0] = 0x3F0000003F000000;
  v129.i64[1] = 0x3F0000003F000000;
  v103.i64[0] = 0x400000004;
  v103.i64[1] = 0x400000004;
  v130.i64[0] = 0x2000000020;
  v130.i64[1] = 0x2000000020;
  v131 = v124;
  do
  {
    v132 = vcvtq_s32_f32(vrndmq_f32(vaddq_f32(vsubq_f32(v126[-1], vbslq_s8(vcgtq_f32(v125, v127[-1]), v125, v127[-1])), v129)));
    v133 = vcvtq_s32_f32(vrndmq_f32(vaddq_f32(vsubq_f32(*v126, vbslq_s8(vcgtq_f32(v125, *v127), v125, *v127)), v129)));
    v134 = vcgtq_s32(v103, v132);
    v135 = vcgtq_s32(v103, v133);
    v104 = vsubq_s32(vbicq_s8(vbslq_s8(vcgtzq_s32(v132), v130, vshlq_u32(v130, v132)), v134), v134);
    v128[-1] = v104;
    *v128 = vsubq_s32(vbicq_s8(vbslq_s8(vcgtzq_s32(v133), v130, vshlq_u32(v130, v133)), v135), v135);
    v126 += 2;
    v127 += 2;
    v128 += 2;
    v131 -= 8;
  }

  while (v131);
  if (v124 != a5)
  {
LABEL_54:
    v136 = a5 - v124;
    v137 = v124;
    v138 = &a21->i32[v124];
    v139 = &v44[v124];
    v140 = &v48->f32[v137];
    do
    {
      v141 = *v140++;
      v142 = v141;
      v143 = *v139++;
      v144 = v143;
      if (*v102.i32 > v143)
      {
        v144 = *v102.i32;
      }

      v145 = vcvtms_s32_f32((v142 - v144) + 0.5);
      v146 = 0x20u >> -v145;
      if (v145 > 0)
      {
        v146 = 32;
      }

      if (v145 < -5)
      {
        v147 = 1;
      }

      else
      {
        v147 = v146;
      }

      *v138++ = v147;
      --v136;
    }

    while (v136);
  }

LABEL_63:
  if (v114 < 1 || a15 < 51 || a17)
  {
    if (v100 < a5)
    {
      v240 = v113;
      memset_pattern16((a20 + 4 * v100), &unk_273BBA800, 4 * (~v100 + a5) + 4);
      v113 = v240;
      v241 = 0;
      goto LABEL_277;
    }

LABEL_276:
    v241 = 0;
    goto LABEL_277;
  }

  v447 = a20;
  v446 = a15;
  v453 = v114;
  v454 = v113;
  v148 = 0;
  v149 = 0;
  v448 = a13;
  v452 = a11;
  v451 = a10;
  v449 = a19;
  v458.i64[0] = a18;
  v450 = a12;
  if (v111 <= 1)
  {
    v150 = 1;
  }

  else
  {
    v150 = v111;
  }

  v151 = v108 - 2;
  v461.i64[0] = v151 & 0xFFFFFFFFFFFFFFFCLL | 2;
  v152 = (a2 + 4);
  v153 = v28 + 1;
  *&v462.f64[0] = v32[1].i64;
  __asm { FMOV            V4.4S, #-1.0 }

  v158 = a2;
  v159 = v28;
  do
  {
    v160 = v148 * v112;
    v161 = 4 * v148 * v112;
    v162 = (v28 + v161);
    v163 = a2 + v161;
    v104.i32[0] = *(a2 + v161);
    v28->i32[v161 / 4] = v104.i32[0];
    if (a5 > 1)
    {
      v164 = *(v28->f32 + v40 * v148);
      v165 = v152;
      v166 = 1;
      do
      {
        if (*v165 > (*(v165 - 1) + 0.5))
        {
          v149 = v166;
        }

        v164 = v164 + 1.5;
        if (v164 >= *v165)
        {
          v164 = *v165;
        }

        v159->f32[v166++] = v164;
        ++v165;
      }

      while (a5 != v166);
    }

    if (v149 >= 1)
    {
      v167 = v162->f32[v149];
      v168 = v149 - 1;
      do
      {
        v167 = v167 + 2.0;
        if (v167 >= *(v158 + 4 * v168))
        {
          v167 = *(v158 + 4 * v168);
        }

        if (v159->f32[v168] < v167)
        {
          v167 = v159->f32[v168];
        }

        v159->f32[v168] = v167;
        v169 = v168-- + 1;
      }

      while (v169 > 1);
    }

    if (a5 >= 5)
    {
      if (v151 >= 4)
      {
        v171 = 0;
        v172 = v151 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v173 = *(v158 + v171 + 8);
          v174 = *(v158 + v171);
          v175 = *(v158 + v171 + 16);
          v176 = *(v158 + v171 + 4);
          v177 = vcgtq_f32(v174, v176);
          v178 = vbslq_s8(v177, v176, v174);
          v179 = *(v158 + v171 + 12);
          v180 = vcgtq_f32(v179, v175);
          v181 = vbslq_s8(v180, v175, v179);
          v182 = vbslq_s8(v177, v174, v176);
          v183 = vbslq_s8(v180, v179, v175);
          v184 = vcgtq_f32(v178, v181);
          v185 = vbslq_s8(v184, v183, v182);
          v186 = vbslq_s8(v184, v178, v181);
          v187 = vbslq_s8(v184, v182, v183);
          v188 = *(&v159[v171 / 0x10] + 8);
          v189 = vcgtq_f32(v173, v185);
          v190 = vcgtq_f32(v186, v173);
          *v175.f32 = vmovn_s32(vmvnq_s8(v189));
          v191 = vorrq_s8(v189, v190);
          v192 = vbslq_s8(vcgtq_f32(v187, v173), v173, v187);
          v193 = vbicq_s8(v190, v189);
          v194 = vcgtq_f32(v186, v185);
          v195 = vbslq_s8(v194, v185, v186);
          v196 = vbicq_s8(v189, v194);
          v197 = vbslq_s8(vcgtq_f32(v185, v187), v187, v185);
          v198 = vbslq_s8(v190, v173, v186);
          *v189.i8 = vmovn_s32(vorrq_s8(vornq_s8(vandq_s8(v189, v194), v189), v196));
          *v186.f32 = vmovn_s32(vcgtq_f32(v188, vaddq_f32(vbslq_s8(v191, vbslq_s8(v193, v195, vbslq_s8(v196, v197, v198)), v192), _Q4)));
          *v185.f32 = vbic_s8(*v189.i8, *v186.f32);
          *v175.f32 = vand_s8(*v185.f32, *v175.f32);
          *(&v159[v171 / 0x10] + 8) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*v189.i8, *v186.f32)), 0x1FuLL)), v188, vaddq_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*v175.f32, vmovn_s32(vmvnq_s8(v190)))), 0x1FuLL)), v192, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*v175.f32, vmovn_s32(v190))), 0x1FuLL)), v195, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vmovn_s32(v196), *v185.f32)), 0x1FuLL)), v197, v198))), _Q4));
          v171 += 16;
          v172 -= 4;
        }

        while (v172);
        v170 = v461.i64[0];
        v112 = v463.i64[0];
        if (v151 == (v151 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_91;
        }
      }

      else
      {
        v170 = 2;
      }

      v212 = v108 - v170;
      v213 = 4 * v170;
      do
      {
        v214 = v159->f32[v213 / 4];
        v215 = (v158 + v213);
        v216 = *(v158 + v213 - 8);
        v217 = *(v158 + v213 - 4);
        if (v216 <= v217)
        {
          v218 = *(v158 + v213 - 4);
        }

        else
        {
          v218 = *(v158 + v213 - 8);
        }

        if (v216 <= v217)
        {
          v219 = *(v158 + v213 - 8);
        }

        else
        {
          v219 = *(v158 + v213 - 4);
        }

        v220 = *v215;
        v221 = v215[1];
        v222 = v215[2];
        if (v221 <= v222)
        {
          v223 = v215[1];
        }

        else
        {
          v223 = v215[2];
        }

        if (v221 > v222)
        {
          v222 = v215[1];
        }

        v224 = v219 <= v223;
        if (v219 <= v223)
        {
          v225 = v218;
        }

        else
        {
          v225 = v222;
        }

        if (v219 <= v223)
        {
          v219 = v223;
        }

        if (v224)
        {
          v218 = v222;
        }

        if (v220 >= v218)
        {
          v226 = v218;
        }

        else
        {
          v226 = *v215;
        }

        if (v225 >= v219)
        {
          v227 = v219;
        }

        else
        {
          v227 = v225;
        }

        if (v220 < v219)
        {
          v226 = v227;
        }

        if (v218 >= v225)
        {
          v228 = v225;
        }

        else
        {
          v228 = v218;
        }

        if (v220 >= v219)
        {
          v229 = v219;
        }

        else
        {
          v229 = *v215;
        }

        if (v225 < v219)
        {
          v228 = v229;
        }

        if (v220 > v225)
        {
          v226 = v228;
        }

        if (v214 <= (v226 + -1.0))
        {
          if (v220 >= v218)
          {
            v230 = v218;
          }

          else
          {
            v230 = *v215;
          }

          if (v225 >= v219)
          {
            v231 = v219;
          }

          else
          {
            v231 = v225;
          }

          if (v220 < v219)
          {
            v230 = v231;
          }

          if (v218 >= v225)
          {
            v218 = v225;
          }

          if (v220 >= v219)
          {
            v232 = v219;
          }

          else
          {
            v232 = *v215;
          }

          if (v225 < v219)
          {
            v233 = v232;
          }

          else
          {
            v233 = v218;
          }

          if (v220 > v225)
          {
            v234 = v233;
          }

          else
          {
            v234 = v230;
          }

          v214 = v234 + -1.0;
        }

        v159->f32[v213 / 4] = v214;
        v213 += 4;
        --v212;
      }

      while (v212);
    }

LABEL_91:
    v199 = *(v163 + 4);
    v200 = *(v163 + 8);
    if (*v104.i32 <= v199)
    {
      v201 = *v104.i32;
    }

    else
    {
      v201 = *(v163 + 4);
    }

    if (*v104.i32 <= v199)
    {
      v104.i32[0] = *(v163 + 4);
    }

    if (v201 >= v200)
    {
      v202 = v201;
    }

    else
    {
      v202 = *(v163 + 8);
    }

    if (*v104.i32 >= v200)
    {
      *v104.i32 = v202;
    }

    *v104.i32 = *v104.i32 + -1.0;
    v203 = vdup_lane_s32(*v104.i8, 0);
    *v104.i8 = vbsl_s8(vcgt_f32(*v162, v203), *v162, v203);
    *v162 = *v104.i8;
    v204 = a2 + 4 * a5 + 4 * v160;
    v104.i32[0] = *(v204 - 12);
    v205 = *(v204 - 8);
    if (*v104.i32 <= v205)
    {
      v206 = *(v204 - 12);
    }

    else
    {
      v206 = *(v204 - 8);
    }

    if (*v104.i32 <= v205)
    {
      v104.i32[0] = *(v204 - 8);
    }

    v207 = *(v204 - 4);
    if (v206 < v207)
    {
      v206 = *(v204 - 4);
    }

    if (*v104.i32 >= v207)
    {
      *v104.i32 = v206;
    }

    v208 = *v104.i32 + -1.0;
    v209 = v162->f32[v108];
    if (v209 <= v208)
    {
      v209 = v208;
    }

    v162->f32[v108] = v209;
    v210 = v162 + a5;
    if (*(v210 - 1) > v208)
    {
      v208 = *(v210 - 1);
    }

    *(v210 - 1) = v208;
    if (a5 >= 1)
    {
      if (a5 >= 8)
      {
        v235 = a5 & 0x7FFFFFF8;
        v236 = v462.f64[0];
        v237 = v153;
        do
        {
          v104 = vbslq_s8(vcgtq_f32(v237[-1], *(*&v236 - 16)), v237[-1], *(*&v236 - 16));
          v238 = vbslq_s8(vcgtq_f32(*v237, **&v236), *v237, **&v236);
          v237[-1] = v104;
          *v237 = v238;
          v237 += 2;
          *&v236 += 32;
          v235 -= 8;
        }

        while (v235);
        v211 = a5 & 0x7FFFFFF8;
        if (v211 == a5)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v211 = 0;
      }

      do
      {
        v239 = v159->f32[v211];
        if (v239 <= v32->f32[v211])
        {
          v239 = v32->f32[v211];
        }

        v159->f32[v211++] = v239;
      }

      while (a5 != v211);
    }

LABEL_70:
    ++v148;
    v159 = (v159 + v40);
    v152 = (v152 + v40);
    v158 += v40;
    v153 = (v153 + v40);
  }

  while (v148 != v150);
  if (LOBYTE(v459.f64[0]))
  {
    if (v100 < a5)
    {
      v242 = v100;
      v243 = a5 - v100;
      if (v243 < 4 || &v28->f32[v100 + v112] < &v28->f32[a5] && &v28->f32[v100] < &v28->f32[a5 + v112])
      {
        goto LABEL_194;
      }

      v244 = 4 * (v100 + v112);
      __asm { FMOV            V0.4S, #-4.0 }

      v246.i64[0] = 0x3F0000003F000000;
      v246.i64[1] = 0x3F0000003F000000;
      v247 = v28;
      v248 = v25;
      v249 = v243 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v250 = *(v247 + 4 * v100);
        v251 = vaddq_f32(v250, _Q0);
        v252 = vbslq_s8(vcgtq_f32(*(v247 + v244), v251), *(v247 + v244), v251);
        *(v247 + v244) = v252;
        v253 = vaddq_f32(v252, _Q0);
        v254 = vsubq_f32(*(v248 + 4 * v100), vbslq_s8(vcgtq_f32(v250, v253), v250, v253));
        v103 = vbicq_s8(v254, vcltzq_f32(v254));
        v255 = vsubq_f32(*(v248 + v244), v252);
        _Q4 = vcltzq_f32(v255);
        *(v247 + 4 * v100) = vmulq_f32(vaddq_f32(v103, vbicq_s8(v255, _Q4)), v246);
        ++v248;
        ++v247;
        v249 -= 4;
      }

      while (v249);
      v242 = (v243 & 0xFFFFFFFFFFFFFFFCLL) + v100;
      if (v243 != (v243 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_194:
        v256 = a5 - v242;
        v257 = v242 + v112;
        v258 = v28;
        do
        {
          v259 = v258->f32[v257];
          if (v259 <= (v258->f32[v242] + -4.0))
          {
            v259 = v258->f32[v242] + -4.0;
          }

          v258->f32[v257] = v259;
          v260 = v259 + -4.0;
          if (v258->f32[v242] > v260)
          {
            v260 = v258->f32[v242];
          }

          v258->f32[v242] = v260;
          v261 = v25->f32[v242] - v260;
          if (v261 < 0.0)
          {
            v261 = 0.0;
          }

          v262 = v25->f32[v257] - v258->f32[v257];
          if (v262 < 0.0)
          {
            v262 = 0.0;
          }

          v258->f32[v242] = (v261 + v262) * 0.5;
          v25 = (v25 + 4);
          v258 = (v258 + 4);
          --v256;
        }

        while (v256);
      }

      goto LABEL_214;
    }
  }

  else if (v100 < a5)
  {
    v263 = a5 - v100;
    v264 = v100;
    if (v263 <= 7)
    {
      goto LABEL_210;
    }

    v264 = (v263 & 0xFFFFFFFFFFFFFFF8) + v100;
    v265 = 4 * v100 + 16;
    v266 = (v25 + v265);
    v267 = (v28 + v265);
    v268 = v263 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v269 = vsubq_f32(v266[-1], v267[-1]);
      v270 = vsubq_f32(*v266, *v267);
      v103 = vcltzq_f32(v270);
      v267[-1] = vbicq_s8(v269, vcltzq_f32(v269));
      *v267 = vbicq_s8(v270, v103);
      v266 += 2;
      v267 += 2;
      v268 -= 8;
    }

    while (v268);
    if (v263 != (v263 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_210:
      v271 = a5 - v264;
      v272 = v264;
      v273 = &v28->f32[v264];
      v274 = &v25->f32[v272];
      do
      {
        v275 = *v274++;
        v276 = v275 - *v273;
        if (v276 < 0.0)
        {
          v276 = 0.0;
        }

        *v273++ = v276;
        --v271;
      }

      while (v271);
    }

LABEL_214:
    if (v100 < a5)
    {
      v277 = v100;
      v278 = a5 - v100;
      v279 = 4 * v100;
      v280 = v100;
      v281 = v458.i64[0];
      if (v278 < 8)
      {
        goto LABEL_219;
      }

      v280 = (v278 & 0xFFFFFFFFFFFFFFF8) + v100;
      v282 = (v28 + v279 + 16);
      v283 = (v458.i64[0] + v279 + 16);
      v284 = v278 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v285 = vbslq_s8(vcgtq_f32(*v282, *v283), *v282, *v283);
        v282[-1] = vbslq_s8(vcgtq_f32(v282[-1], v283[-1]), v282[-1], v283[-1]);
        *v282 = v285;
        v282 += 2;
        v283 += 2;
        v284 -= 8;
      }

      while (v284);
      if (v278 != (v278 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_219:
        v286 = a5 - v280;
        v287 = v280;
        v288 = (v281 + 4 * v280);
        v289 = &v28->f32[v287];
        do
        {
          v290 = *v288++;
          v291 = v290;
          if (*v289 > v290)
          {
            v291 = *v289;
          }

          *v289++ = v291;
          --v286;
        }

        while (v286);
      }

      if (v278 < 4)
      {
        goto LABEL_227;
      }

      v277 = (v278 & 0xFFFFFFFFFFFFFFFCLL) + v100;
      v292 = (v28 + v279);
      v293 = (v447 + v279);
      __asm { FMOV            V0.4S, #4.0 }

      v458 = _Q0;
      v459 = vdupq_n_s64(0x3FE62E42FEFA39EFuLL);
      v457 = vdupq_n_s64(0x40062E42FEFA39EFuLL);
      __asm { FMOV            V0.4S, #13.0 }

      v456 = _Q0;
      v296 = v278 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v297 = *v292++;
        v298 = vcgtq_f32(v458, v297);
        v299.i64[0] = v298.i32[2];
        v299.i64[1] = v298.i32[3];
        v300 = v299;
        v299.i64[0] = v298.i32[0];
        v299.i64[1] = v298.i32[1];
        v463 = vbslq_s8(v299, vmulq_f64(vcvtq_f64_f32(*v297.f32), v459), v457);
        v461 = vbslq_s8(v300, vmulq_f64(vcvt_hight_f64_f32(v297), v459), v457);
        v301.f64[0] = exp(*&v461.i64[1]);
        v462 = v301;
        v302.f64[0] = exp(*v461.i64);
        v302.f64[1] = v462.f64[0];
        v462 = v302;
        *v303.i64 = exp(*&v463.i64[1]);
        v461 = v303;
        v304.f64[0] = exp(*v463.i64);
        *&v304.f64[1] = v461.i64[0];
        v305.i64[0] = 0x3F0000003F000000;
        v305.i64[1] = 0x3F0000003F000000;
        *v293++ = vcvtq_s32_f32(vrndmq_f32(vmlaq_f32(v305, v456, vcvt_hight_f32_f64(vcvt_f32_f64(v304), v462))));
        v296 -= 4;
      }

      while (v296);
      if (v278 != (v278 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_227:
        v306 = a5 - v277;
        v307 = v277;
        v308 = (v447 + 4 * v277);
        v309 = &v28->f32[v307];
        do
        {
          v310 = *v309++;
          v311 = v310 * 0.693147181;
          if (v310 >= 4.0)
          {
            v312 = 2.77258872;
          }

          else
          {
            v312 = v311;
          }

          v313 = exp(v312);
          *v308++ = vcvtms_s32_f32((v313 * 13.0) + 0.5);
          --v306;
        }

        while (v306);
      }
    }
  }

  v314 = v452;
  v315 = v450;
  if (v452)
  {
    _ZF = v450 == 0;
  }

  else
  {
    _ZF = 0;
  }

  v317 = _ZF;
  v318 = v460;
  v113 = v454;
  v319 = v453;
  v320 = v451;
  v321 = v449;
  if (!v451 && v100 < a5 && (v317 & 1) == 0)
  {
    v322 = a5 - v100;
    v323 = v100;
    if (v322 < 8)
    {
      goto LABEL_245;
    }

    v323 = (v322 & 0xFFFFFFFFFFFFFFF8) + v100;
    v324 = (v28 + 4 * v100 + 16);
    v325.i64[0] = 0x3F0000003F000000;
    v325.i64[1] = 0x3F0000003F000000;
    v326 = v322 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v327 = vmulq_f32(*v324, v325);
      v324[-1] = vmulq_f32(v324[-1], v325);
      *v324 = v327;
      v324 += 2;
      v326 -= 8;
    }

    while (v326);
    if (v322 != (v322 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_245:
      v328 = a5 - v323;
      v329 = &v28->f32[v323];
      do
      {
        *v329 = *v329 * 0.5;
        ++v329;
        --v328;
      }

      while (v328);
    }
  }

  if (v100 < a5)
  {
    v330 = v100;
    do
    {
      v331 = 2.0;
      if (v330 < 8 || (v331 = 0.5, v330 >= 0xC))
      {
        v28->f32[v330] = v331 * v28->f32[v330];
      }

      ++v330;
    }

    while (a5 != v330);
  }

  if (*v321)
  {
    v332 = a5 >= 19 ? 19 : a5;
    if (v332 > v100)
    {
      v333 = v332 - v100;
      v334 = v100;
      if (v333 < 8)
      {
        goto LABEL_263;
      }

      v334 = (v333 & 0xFFFFFFFFFFFFFFF8) + v100;
      v335 = (v321 + v100 + 48);
      v336 = (v28 + 4 * v100 + 16);
      v337 = vdupq_n_s32(0x3C800000u);
      v338 = v333 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v103.i32[0] = *(v335 - 1);
        _Q4.i32[0] = *v335;
        v103 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v103.f32)));
        _Q4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*_Q4.f32)));
        v339 = vmlaq_f32(*v336, v337, _Q4);
        v336[-1] = vmlaq_f32(v336[-1], v337, v103);
        *v336 = v339;
        v335 += 2;
        v336 += 2;
        v338 -= 8;
      }

      while (v338);
      if (v333 != (v333 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_263:
        v340 = v332 - v334;
        v341 = v321 + v334 + 44;
        v342 = &v28->f32[v334];
        do
        {
          v343 = *v341++;
          *v342 = *v342 + (v343 * 0.015625);
          ++v342;
          --v340;
        }

        while (v340);
      }
    }
  }

  if (v100 >= a5)
  {
    goto LABEL_276;
  }

  if (v320)
  {
    v344 = 1;
  }

  else
  {
    v344 = v315 == 0;
  }

  v345 = v344;
  v346 = v448;
  v347 = *(v448 + 2 * v100);
  if (v314 && (v345 & 1) != 0)
  {
    v348 = a5 - v100;
    if (v348 >= 0x10)
    {
      v364 = vdupq_n_s16(v347);
      v365 = vdupq_n_s32(v318);
      v366 = vdupq_n_s32(v319);
      v349 = (v348 & 0xFFFFFFFFFFFFFFF0) + v100;
      v367 = (v448 + 2 * v100 + 18);
      v368 = 0uLL;
      __asm { FMOV            V4.4S, #4.0 }

      v370.i64[0] = 0x3000000030;
      v370.i64[1] = 0x3000000030;
      v371 = 4 * v100 + 32;
      v350 = v455;
      v372 = &v455[v371];
      v373 = (v28 + v371);
      v374.i64[0] = 0x2A0000002ALL;
      v374.i64[1] = 0x2A0000002ALL;
      __asm { FMOV            V7.4S, #6.0 }

      v376.i64[0] = 0x3000000030;
      v376.i64[1] = 0x3000000030;
      v377 = v348 & 0xFFFFFFFFFFFFFFF0;
      v378 = 0uLL;
      v379 = 0uLL;
      v380 = 0uLL;
      do
      {
        v381 = vminnmq_f32(v373[-1], _Q4);
        v382 = vminnmq_f32(v373[-2], _Q4);
        v383 = v367[-1];
        v384 = vminnmq_f32(v373[1], _Q4);
        v385 = vextq_s8(v364, v383, 0xEuLL);
        v364 = *v367;
        v386 = vextq_s8(v383, *v367, 0xEuLL);
        v387 = vsubl_high_s16(v383, v385);
        v388 = vsubl_s16(*v383.i8, *v385.i8);
        v389 = vmulq_s32(vsubl_s16(*v367->i8, *v386.i8), v365);
        v390 = vmulq_s32(vsubl_high_s16(*v367, v386), v365);
        v391 = vminnmq_f32(*v373, _Q4);
        v392 = vshlq_u32(vmulq_s32(v387, v365), v366);
        v393 = vshlq_u32(vmulq_s32(v388, v365), v366);
        v394 = vshlq_u32(v390, v366);
        v395 = vshlq_u32(v389, v366);
        v396 = vcgtq_s32(v393, v376);
        v397 = vcgtq_s32(v392, v376);
        v398 = vcgtq_s32(v395, v376);
        v399 = vcvtq_n_s32_f32(v382, 3uLL);
        v400 = vcvtq_n_s32_f32(v381, 3uLL);
        v401 = vcvtq_n_s32_f32(v391, 3uLL);
        v402 = vcvtq_n_s32_f32(v384, 3uLL);
        v403 = vcgtq_s32(v394, v376);
        v404 = vshlq_n_s32(vmulq_s32(v400, v392), 3uLL);
        v405 = vcvtq_s32_f32(v381);
        v406 = vbslq_s8(v397, v400, v405);
        v407 = vbslq_s8(v397, vshrq_n_s32(v404, 3uLL), vshlq_n_s32(vmulq_s32(v405, v392), 3uLL));
        v408 = vcvtq_s32_f32(v382);
        v409 = vshrq_n_s32(vshlq_n_s32(vmulq_s32(v399, v393), 3uLL), 3uLL);
        v410 = vbslq_s8(v396, v399, v408);
        v411 = vbslq_s8(v396, v409, vshlq_n_s32(vmulq_s32(v408, v393), 3uLL));
        v412 = vshrq_n_s32(vshlq_n_s32(vmulq_s32(v402, v394), 3uLL), 3uLL);
        v413 = vcvtq_s32_f32(v384);
        v414 = vbslq_s8(v403, v402, v413);
        v415 = vbslq_s8(v403, v412, vshlq_n_s32(vmulq_s32(v413, v394), 3uLL));
        v416 = vshlq_n_s32(vmulq_s32(v401, v395), 3uLL);
        v417 = vcvtq_s32_f32(v391);
        v418 = vbslq_s8(v398, v401, v417);
        v419 = vbslq_s8(v398, vshrq_n_s32(v416, 3uLL), vshlq_n_s32(vmulq_s32(v417, v395), 3uLL));
        v420 = vcgtq_u32(v374, vaddq_s32(v393, v370));
        v421 = vcvtq_s32_f32(vdivq_f32(vmulq_f32(v382, vcvtq_f32_u32(v393)), _Q7));
        v422 = vbslq_s8(v420, v410, v421);
        v423 = vbslq_s8(v420, v411, vmulq_s32(v421, v376));
        v424 = vcgtq_u32(v374, vaddq_s32(v392, v370));
        v425 = vcvtq_s32_f32(vdivq_f32(vmulq_f32(v381, vcvtq_f32_u32(v392)), _Q7));
        v426 = vbslq_s8(v424, v406, v425);
        v427 = vbslq_s8(v424, v407, vmulq_s32(v425, v376));
        v428 = vcgtq_u32(v374, vaddq_s32(v395, v370));
        v429 = vcvtq_s32_f32(vdivq_f32(vmulq_f32(v391, vcvtq_f32_u32(v395)), _Q7));
        v430 = vbslq_s8(v428, v418, v429);
        v431 = vbslq_s8(v428, v419, vmulq_s32(v429, v376));
        v432 = vcgtq_u32(v374, vaddq_s32(v394, v370));
        v433 = vcvtq_s32_f32(vdivq_f32(vmulq_f32(v384, vcvtq_f32_u32(v394)), _Q7));
        v373[-2] = v382;
        v373[-1] = v381;
        *v373 = v391;
        v373[1] = v384;
        v373 += 4;
        v378 = vaddq_s32(v427, v378);
        v368 = vaddq_s32(v423, v368);
        v380 = vaddq_s32(vbslq_s8(v432, v415, vmulq_s32(v433, v376)), v380);
        v372[-2] = v422;
        v372[-1] = v426;
        v379 = vaddq_s32(v431, v379);
        *v372 = v430;
        v372[1] = vbslq_s8(v432, v414, v433);
        v372 += 4;
        v367 += 2;
        v377 -= 16;
      }

      while (v377);
      v241 = vaddvq_s32(vaddq_s32(vaddq_s32(v379, v368), vaddq_s32(v380, v378)));
      if (v348 != (v348 & 0xFFFFFFFFFFFFFFF0))
      {
        LOWORD(v347) = v364.i16[7];
        goto LABEL_292;
      }
    }

    else
    {
      v241 = 0;
      v349 = v100;
      v350 = v455;
LABEL_292:
      v434 = v349;
      v435 = &v350[4 * v349];
      v436 = a5 - v349;
      v437 = (v346 + 2 * v349 + 2);
      v438 = &v28->f32[v434];
      do
      {
        v441 = fminf(*v438, 4.0);
        *v438 = v441;
        v443 = *v437++;
        v442 = v443;
        v444 = ((v443 - v347) * v318) << v319;
        if (v444 < 6)
        {
          v439 = v441;
          v440 = 8 * v441 * v444;
        }

        else if (v444 <= 0x30)
        {
          v439 = ((v441 * v444) / 6.0);
          v440 = 48 * v439;
        }

        else
        {
          v439 = vcvts_n_s32_f32(v441, 3uLL);
          v440 = (8 * v439 * v444) >> 3;
        }

        LOWORD(v347) = v442;
        v241 += v440;
        *v435++ = v439;
        ++v438;
        --v436;
      }

      while (v436);
    }
  }

  else
  {
    v352 = 0;
    v353 = (1431655766 * (2 * v446)) >> 32;
    v354 = &v455[4 * v100];
    v355 = a5 - v100;
    v356 = (v448 + 2 * v100 + 2);
    v357 = &v28->f32[v100];
    while (1)
    {
      v358 = fminf(*v357, 4.0);
      *v357 = v358;
      v360 = *v356++;
      v359 = v360;
      v361 = ((v360 - v347) * v318) << v319;
      if (v361 > 5)
      {
        if (v361 < 0x31)
        {
          v362 = ((v358 * v361) / 6.0);
          v363 = 48 * v362;
        }

        else
        {
          v362 = vcvts_n_s32_f32(v358, 3uLL);
          v363 = (8 * v362 * v361) >> 3;
        }
      }

      else
      {
        v362 = v358;
        v363 = 8 * v358 * v361;
      }

      v241 = v363 + v352;
      if (v353 < (v363 + v352) >> 6)
      {
        break;
      }

      LOWORD(v347) = v359;
      *v354++ = v362;
      ++v357;
      v352 = v241;
      if (!--v355)
      {
        goto LABEL_277;
      }
    }

    v241 = v353 << 6;
    *v354 = (v353 << 6) - v352;
  }

LABEL_277:
  *v113 = v241;
  return v49;
}

BOOL tf_analysis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int *a10)
{
  v184 = a6;
  v11 = a3;
  v12 = a10;
  v191 = *MEMORY[0x277D85DE8];
  v185 = a2;
  v13 = MEMORY[0x28223BE20](a1, a2, a3);
  v15 = (&v172 - ((v14 + 15) & 0x7FFFFFFF0));
  v17 = v16 - 1;
  v19 = MEMORY[0x28223BE20](v13, v16, v18);
  v21 = (&v172 - ((v20 + 15) & 0x7FFFFFFF0));
  v24 = MEMORY[0x28223BE20](v19, v22, v23);
  v26 = (&v172 - v25);
  v29 = MEMORY[0x28223BE20](v24, v27, v28);
  v31 = &v172 - v30;
  v34 = MEMORY[0x28223BE20](v29, v32, v33);
  v41 = &v172;
  v42 = &v172 - v39;
  if (v35 < 1)
  {
    goto LABEL_77;
  }

  v172 = v35;
  v173 = &v172 - v39;
  v174 = v31;
  v175 = v17;
  v176 = a10;
  v177 = v37;
  v178 = v36;
  v43 = 0;
  v44 = v40 * 0.04;
  if (v11)
  {
    v45 = a8;
  }

  else
  {
    v45 = 0;
  }

  v46 = v44 * v45;
  v47 = a8 + 1;
  v180 = -2 * a8;
  v181 = a9 * v38;
  v182 = v34;
  v183 = v15;
  v48 = *v34;
  v179 = v26 + 1;
  v186 = v21 + 1;
  do
  {
    v189 = v43;
    v188 = v43 + 1;
    v187 = v182[v43 + 1];
    v190 = v187 - v48;
    v49 = (v190 << a8);
    memcpy(v21, (v184 + 4 * ((v48 << a8) + v181)), 4 * v49);
    if (v49 < 1)
    {
      v52 = 0.0;
      v53 = v186;
      v50 = v190;
      goto LABEL_16;
    }

    v50 = v190;
    if (v49 < 8)
    {
      v51 = 0;
      v52 = 0.0;
      v53 = v186;
LABEL_14:
      v58 = v49 - v51;
      v59 = &v21->f32[v51];
      do
      {
        v60 = *v59++;
        v52 = v52 + fabsf(v60);
        --v58;
      }

      while (v58);
      goto LABEL_16;
    }

    v51 = v49 & 0x7FFFFFF8;
    v52 = 0.0;
    v54 = v51;
    v53 = v186;
    v55 = v186;
    do
    {
      v56 = vabsq_f32(v55[-1]);
      v57 = vabsq_f32(*v55);
      v52 = (((((((v52 + v56.f32[0]) + v56.f32[1]) + v56.f32[2]) + v56.f32[3]) + v57.f32[0]) + v57.f32[1]) + v57.f32[2]) + v57.f32[3];
      v55 += 2;
      v54 -= 8;
    }

    while (v54);
    if (v51 != v49)
    {
      goto LABEL_14;
    }

LABEL_16:
    v61 = 0;
    v62 = v52 + (v46 * v52);
    if (!v11 || v50 == 1)
    {
      v15 = v183;
      if (v11)
      {
        v72 = 1;
      }

      else
      {
        v72 = v50 == 1;
      }

      if (v72)
      {
        v73 = a8;
      }

      else
      {
        v73 = (a8 + 1);
      }

      if (v73 < 1)
      {
        goto LABEL_67;
      }

LABEL_45:
      v82 = 0;
      while (1)
      {
        v85 = ~v82 + a8;
        v86 = v82 + 1;
        if (!v11)
        {
          v85 = v82 + 1;
        }

        if (v82 != 31)
        {
          v87 = (v49 >> v82 >> 1);
          if (v87 >= 1)
          {
            v88 = 0;
            do
            {
              v89 = 0;
              v90 = &v21->i8[4 * v88];
              v91 = 1;
              do
              {
                v92 = *&v90[4 * (v89 << v86)] * 0.70711;
                v93 = *&v90[4 * (v91 << v82)] * 0.70711;
                *&v90[4 * (v89 << v86)] = v92 + v93;
                *&v90[4 * (v91 << v82)] = v92 - v93;
                ++v89;
                v91 += 2;
              }

              while (v87 != v89);
              ++v88;
            }

            while (v88 != 1 << v82);
          }
        }

        if (v49 < 1)
        {
          v83 = 0.0;
        }

        else
        {
          if (v49 >= 8)
          {
            v83 = 0.0;
            v95 = v49 & 0x7FFFFFF8;
            v96 = v53;
            do
            {
              v97 = vabsq_f32(v96[-1]);
              v98 = vabsq_f32(*v96);
              v83 = (((((((v83 + v97.f32[0]) + v97.f32[1]) + v97.f32[2]) + v97.f32[3]) + v98.f32[0]) + v98.f32[1]) + v98.f32[2]) + v98.f32[3];
              v96 += 2;
              v95 -= 8;
            }

            while (v95);
            v94 = v49 & 0x7FFFFFF8;
            if (v94 == v49)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v94 = 0;
            v83 = 0.0;
          }

          v99 = v49 - v94;
          v100 = &v21->f32[v94];
          do
          {
            v101 = *v100++;
            v83 = v83 + fabsf(v101);
            --v99;
          }

          while (v99);
        }

LABEL_47:
        v84 = v83 + ((v44 * v85) * v83);
        if (v84 < v62)
        {
          v62 = v84;
          v61 = v86;
        }

        v82 = v86;
        if (v86 == v73)
        {
          goto LABEL_67;
        }
      }
    }

    memcpy(v26, v21, 4 * v49);
    if (a8 != 31)
    {
      v63 = (v49 >> a8 >> 1);
      if (v63 >= 1)
      {
        v64 = 0;
        do
        {
          v65 = 0;
          v66 = &v26->i8[4 * v64];
          v67 = 1;
          do
          {
            v68 = *&v66[4 * (v65 << v47)] * 0.70711;
            v69 = *&v66[4 * (v67 << a8)] * 0.70711;
            *&v66[4 * (v65 << v47)] = v68 + v69;
            *&v66[4 * (v67 << a8)] = v68 - v69;
            ++v65;
            v67 += 2;
          }

          while (v63 != v65);
          ++v64;
        }

        while (v64 != 1 << a8);
      }
    }

    v15 = v183;
    v53 = v186;
    v50 = v190;
    if (v49 < 1)
    {
      v71 = 0.0;
      goto LABEL_41;
    }

    if (v49 < 8)
    {
      v70 = 0;
      v71 = 0.0;
LABEL_39:
      v78 = v49 - v70;
      v79 = &v26->f32[v70];
      do
      {
        v80 = *v79++;
        v71 = v71 + fabsf(v80);
        --v78;
      }

      while (v78);
      goto LABEL_41;
    }

    v70 = v49 & 0x7FFFFFF8;
    v71 = 0.0;
    v74 = v70;
    v75 = v179;
    do
    {
      v76 = vabsq_f32(v75[-1]);
      v77 = vabsq_f32(*v75);
      v71 = (((((((v71 + v76.f32[0]) + v76.f32[1]) + v76.f32[2]) + v76.f32[3]) + v77.f32[0]) + v77.f32[1]) + v77.f32[2]) + v77.f32[3];
      v75 += 2;
      v74 -= 8;
    }

    while (v74);
    if (v70 != v49)
    {
      goto LABEL_39;
    }

LABEL_41:
    v81 = v71 + ((v44 * v47) * v71);
    if (v81 >= v62)
    {
      v61 = 0;
      v73 = a8;
      if (a8 >= 1)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v61 = -1;
      v62 = v81;
      v73 = a8;
      if (a8 >= 1)
      {
        goto LABEL_45;
      }
    }

LABEL_67:
    v102 = 2 * v61;
    if (!v11)
    {
      v102 = -v102;
    }

    v103 = v189;
    v15[v189] = v102;
    if (v50 == 1 && (!v102 || v102 == v180))
    {
      v15[v103] = v102 - 1;
    }

    v48 = v187;
    v43 = v188;
  }

  while (v188 != v185);
  LODWORD(v41) = *v15;
  v36 = v178;
  v37 = v177;
  v17 = v175;
  v12 = v176;
  v31 = v174;
  v42 = v173;
  LODWORD(v35) = v172;
LABEL_77:
  v105 = *v12;
  v106 = a8;
  v107 = (4 * v11);
  if (v11)
  {
    v108 = 0;
  }

  else
  {
    v108 = v37;
  }

  v109 = &tf_select_table + 8 * a8 + v107;
  v110 = 2 * *v109;
  v111 = v41 - v110;
  if (v41 - v110 < 0)
  {
    v111 = v110 - v41;
  }

  v112 = v111 * v105;
  v113 = 2 * v109[1];
  v114 = v41 - v113;
  if (v41 - v113 < 0)
  {
    v114 = v113 - v41;
  }

  v115 = v108 + v114 * v105;
  if (v35 > 1)
  {
    v116 = v185 - 1;
    v117 = v15 + 1;
    v118 = v12 + 1;
    do
    {
      if (v112 >= v115 + v37)
      {
        v119 = v115 + v37;
      }

      else
      {
        v119 = v112;
      }

      v120 = v112 + v37;
      if (v120 < v115)
      {
        v115 = v120;
      }

      v122 = *v118++;
      v121 = v122;
      v124 = *v117++;
      v123 = v124;
      v125 = v124 - v110;
      if (v124 - v110 < 0)
      {
        v125 = -v125;
      }

      v112 = v119 + v125 * v121;
      v126 = v123 - v113;
      if (v126 < 0)
      {
        v126 = -v126;
      }

      v115 += v126 * v121;
      --v116;
    }

    while (v116);
  }

  if (v112 >= v115)
  {
    v127 = v115;
  }

  else
  {
    v127 = v112;
  }

  v128 = &tf_select_table + 8 * v106;
  v129 = 2 * v128[v107 + 2];
  v130 = v41 - v129;
  if (v41 - v129 < 0)
  {
    v130 = v129 - v41;
  }

  v131 = v130 * v105;
  v132 = 2 * v128[v107 + 3];
  v133 = v41 - v132;
  if (v41 - v132 < 0)
  {
    v133 = v132 - v41;
  }

  v134 = v108 + v133 * v105;
  if (v35 >= 2)
  {
    v135 = v185 - 1;
    v136 = v15 + 1;
    v137 = v12 + 1;
    do
    {
      if (v131 >= v134 + v37)
      {
        v138 = v134 + v37;
      }

      else
      {
        v138 = v131;
      }

      v139 = v131 + v37;
      if (v139 < v134)
      {
        v134 = v139;
      }

      v141 = *v137++;
      v140 = v141;
      v143 = *v136++;
      v142 = v143;
      v144 = v143 - v129;
      if (v143 - v129 < 0)
      {
        v144 = -v144;
      }

      v131 = v138 + v144 * v140;
      v145 = v142 - v132;
      if (v145 < 0)
      {
        v145 = -v145;
      }

      v134 += v145 * v140;
      --v135;
    }

    while (v135);
  }

  if (v131 >= v134)
  {
    v146 = v134;
  }

  else
  {
    v146 = v131;
  }

  v147 = v11 != 0 && v146 < v127;
  if (v147)
  {
    v148 = 2;
  }

  else
  {
    v148 = 0;
  }

  v149 = v148 | v107;
  v150 = 2 * v128[v149];
  v151 = v41 - v150;
  if (v41 - v150 < 0)
  {
    v151 = v150 - v41;
  }

  v152 = v128[v149 | 1];
  v153 = v151 * v105;
  v154 = 2 * v152;
  v155 = v41 - v154;
  if (v155 < 0)
  {
    v155 = -v155;
  }

  v156 = v108 + v155 * v105;
  v157 = (v35 - 2);
  if (v35 < 2)
  {
    *(v36 + 4 * v17) = v153 >= v156;
  }

  else
  {
    v158 = 4 * v185;
    v159 = 4;
    do
    {
      v160 = v156 + v37;
      if (v153 < v156 + v37)
      {
        v160 = v153;
      }

      *&v31[v159] = v153 >= v156 + v37;
      v161 = v153 + v37;
      v162 = v161 >= v156;
      if (v161 < v156)
      {
        v156 = v161;
      }

      *&v42[v159] = v162;
      v163 = v12[v159 / 4];
      v164 = v15[v159 / 4];
      v165 = v164 - v150;
      if (v164 - v150 < 0)
      {
        v165 = v150 - v164;
      }

      v153 = v160 + v165 * v163;
      v166 = v164 - v154;
      if (v164 - v154 < 0)
      {
        v166 = v154 - v164;
      }

      v156 += v166 * v163;
      v159 += 4;
    }

    while (v158 != v159);
    *(v36 + 4 * v17) = v153 >= v156;
    v167 = (v36 + 4 * v157);
    v168 = v167[1];
    v169 = v157 + 1;
    do
    {
      if (v168 == 1)
      {
        v170 = v42;
      }

      else
      {
        v170 = v31;
      }

      v168 = *&v170[4 * v169];
      *v167-- = v168;
      --v169;
    }

    while (v169);
  }

  return v147;
}

uint64_t alloc_trim_analysis(uint64_t a1, uint64_t a2, float32x4_t *a3, signed int a4, char a5, int a6, int a7, uint64_t a8, float a9, float a10, float *a11, int a12, int a13)
{
  v20 = 4.0;
  if (a13 >= 64000)
  {
    if (a13 >> 7 <= 0x270)
    {
      v20 = (((a13 - 64000) >> 10) * 0.0625) + 4.0;
    }

    else
    {
      v20 = 5.0;
    }

    if (a6 != 2)
    {
LABEL_3:
      v21 = (a4 - 1);
      v22 = 0.0;
      if (a4 < 2)
      {
        goto LABEL_114;
      }

      goto LABEL_101;
    }
  }

  else if (a6 != 2)
  {
    goto LABEL_3;
  }

  v23 = *(a1 + 32);
  v24 = *v23;
  v25 = v23[1];
  v26 = ((v25 - v24) << a5);
  v27 = 0.0;
  v28 = 0.0;
  if (v26 >= 1)
  {
    v29 = v24 << a5;
    v30 = v24 << a5;
    v31 = v29 + a7;
    if (v26 >= 8)
    {
      v32 = v26 & 0x7FFFFFF8;
      v33 = (a2 + 4 * v30 + 16);
      v34 = (a2 + 4 * v31 + 16);
      v35 = v32;
      do
      {
        v36 = vmulq_f32(v33[-1], v34[-1]);
        v37 = vmulq_f32(*v33, *v34);
        v28 = (((((((v28 + v36.f32[0]) + v36.f32[1]) + v36.f32[2]) + v36.f32[3]) + v37.f32[0]) + v37.f32[1]) + v37.f32[2]) + v37.f32[3];
        v33 += 2;
        v34 += 2;
        v35 -= 8;
      }

      while (v35);
      if (v32 == v26)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v32 = 0;
    }

    v38 = v26 - v32;
    v39 = 4 * v32;
    v40 = (a2 + v39 + 4 * v31);
    v41 = (a2 + v39 + 4 * v30);
    do
    {
      v42 = *v41++;
      v43 = v42;
      v44 = *v40++;
      v28 = v28 + (v43 * v44);
      --v38;
    }

    while (v38);
LABEL_17:
    v28 = v28 + 0.0;
  }

  v45 = v23[2];
  v46 = ((v45 - v25) << a5);
  if (v46 < 1)
  {
    goto LABEL_26;
  }

  v47 = v25 << a5;
  v48 = v25 << a5;
  v49 = v47 + a7;
  if (v46 < 8)
  {
    v50 = 0;
    v27 = 0.0;
LABEL_24:
    v56 = v46 - v50;
    v57 = 4 * v50;
    v58 = (a2 + v57 + 4 * v49);
    v59 = (a2 + v57 + 4 * v48);
    do
    {
      v60 = *v59++;
      v61 = v60;
      v62 = *v58++;
      v27 = v27 + (v61 * v62);
      --v56;
    }

    while (v56);
    goto LABEL_26;
  }

  v50 = v46 & 0x7FFFFFF8;
  v51 = (a2 + 4 * v48 + 16);
  v52 = (a2 + 4 * v49 + 16);
  v27 = 0.0;
  v53 = v50;
  do
  {
    v54 = vmulq_f32(v51[-1], v52[-1]);
    v55 = vmulq_f32(*v51, *v52);
    v27 = (((((((v27 + v54.f32[0]) + v54.f32[1]) + v54.f32[2]) + v54.f32[3]) + v55.f32[0]) + v55.f32[1]) + v55.f32[2]) + v55.f32[3];
    v51 += 2;
    v52 += 2;
    v53 -= 8;
  }

  while (v53);
  if (v50 != v46)
  {
    goto LABEL_24;
  }

LABEL_26:
  v63 = v28 + v27;
  v64 = v23[3];
  v65 = ((v64 - v45) << a5);
  v66 = 0.0;
  v67 = 0.0;
  if (v65 < 1)
  {
    goto LABEL_34;
  }

  v68 = v45 << a5;
  v69 = v45 << a5;
  v70 = v68 + a7;
  if (v65 < 8)
  {
    v71 = 0;
LABEL_32:
    v77 = v65 - v71;
    v78 = 4 * v71;
    v79 = (a2 + v78 + 4 * v70);
    v80 = (a2 + v78 + 4 * v69);
    do
    {
      v81 = *v80++;
      v82 = v81;
      v83 = *v79++;
      v67 = v67 + (v82 * v83);
      --v77;
    }

    while (v77);
    goto LABEL_34;
  }

  v71 = v65 & 0x7FFFFFF8;
  v72 = (a2 + 4 * v69 + 16);
  v73 = (a2 + 4 * v70 + 16);
  v74 = v71;
  do
  {
    v75 = vmulq_f32(v72[-1], v73[-1]);
    v76 = vmulq_f32(*v72, *v73);
    v67 = (((((((v67 + v75.f32[0]) + v75.f32[1]) + v75.f32[2]) + v75.f32[3]) + v76.f32[0]) + v76.f32[1]) + v76.f32[2]) + v76.f32[3];
    v72 += 2;
    v73 += 2;
    v74 -= 8;
  }

  while (v74);
  if (v71 != v65)
  {
    goto LABEL_32;
  }

LABEL_34:
  v84 = v63 + v67;
  v85 = v23[4];
  v86 = ((v85 - v64) << a5);
  if (v86 < 1)
  {
    goto LABEL_42;
  }

  v87 = v64 << a5;
  v88 = v64 << a5;
  v89 = v87 + a7;
  if (v86 < 8)
  {
    v90 = 0;
    v66 = 0.0;
LABEL_40:
    v96 = v86 - v90;
    v97 = 4 * v90;
    v98 = (a2 + v97 + 4 * v89);
    v99 = (a2 + v97 + 4 * v88);
    do
    {
      v100 = *v99++;
      v101 = v100;
      v102 = *v98++;
      v66 = v66 + (v101 * v102);
      --v96;
    }

    while (v96);
    goto LABEL_42;
  }

  v90 = v86 & 0x7FFFFFF8;
  v91 = (a2 + 4 * v88 + 16);
  v92 = (a2 + 4 * v89 + 16);
  v66 = 0.0;
  v93 = v90;
  do
  {
    v94 = vmulq_f32(v91[-1], v92[-1]);
    v95 = vmulq_f32(*v91, *v92);
    v66 = (((((((v66 + v94.f32[0]) + v94.f32[1]) + v94.f32[2]) + v94.f32[3]) + v95.f32[0]) + v95.f32[1]) + v95.f32[2]) + v95.f32[3];
    v91 += 2;
    v92 += 2;
    v93 -= 8;
  }

  while (v93);
  if (v90 != v86)
  {
    goto LABEL_40;
  }

LABEL_42:
  v103 = v84 + v66;
  v104 = v23[5];
  v105 = ((v104 - v85) << a5);
  v106 = 0.0;
  v107 = 0.0;
  if (v105 < 1)
  {
    goto LABEL_50;
  }

  v108 = v85 << a5;
  v109 = v85 << a5;
  v110 = v108 + a7;
  if (v105 < 8)
  {
    v111 = 0;
LABEL_48:
    v117 = v105 - v111;
    v118 = 4 * v111;
    v119 = (a2 + v118 + 4 * v110);
    v120 = (a2 + v118 + 4 * v109);
    do
    {
      v121 = *v120++;
      v122 = v121;
      v123 = *v119++;
      v107 = v107 + (v122 * v123);
      --v117;
    }

    while (v117);
    goto LABEL_50;
  }

  v111 = v105 & 0x7FFFFFF8;
  v112 = (a2 + 4 * v109 + 16);
  v113 = (a2 + 4 * v110 + 16);
  v114 = v111;
  do
  {
    v115 = vmulq_f32(v112[-1], v113[-1]);
    v116 = vmulq_f32(*v112, *v113);
    v107 = (((((((v107 + v115.f32[0]) + v115.f32[1]) + v115.f32[2]) + v115.f32[3]) + v116.f32[0]) + v116.f32[1]) + v116.f32[2]) + v116.f32[3];
    v112 += 2;
    v113 += 2;
    v114 -= 8;
  }

  while (v114);
  if (v111 != v105)
  {
    goto LABEL_48;
  }

LABEL_50:
  v124 = v103 + v107;
  v125 = v23[6];
  v126 = ((v125 - v104) << a5);
  if (v126 < 1)
  {
    goto LABEL_58;
  }

  v127 = v104 << a5;
  v128 = v104 << a5;
  v129 = v127 + a7;
  if (v126 < 8)
  {
    v130 = 0;
    v106 = 0.0;
LABEL_56:
    v136 = v126 - v130;
    v137 = 4 * v130;
    v138 = (a2 + v137 + 4 * v129);
    v139 = (a2 + v137 + 4 * v128);
    do
    {
      v140 = *v139++;
      v141 = v140;
      v142 = *v138++;
      v106 = v106 + (v141 * v142);
      --v136;
    }

    while (v136);
    goto LABEL_58;
  }

  v130 = v126 & 0x7FFFFFF8;
  v131 = (a2 + 4 * v128 + 16);
  v132 = (a2 + 4 * v129 + 16);
  v106 = 0.0;
  v133 = v130;
  do
  {
    v134 = vmulq_f32(v131[-1], v132[-1]);
    v135 = vmulq_f32(*v131, *v132);
    v106 = (((((((v106 + v134.f32[0]) + v134.f32[1]) + v134.f32[2]) + v134.f32[3]) + v135.f32[0]) + v135.f32[1]) + v135.f32[2]) + v135.f32[3];
    v131 += 2;
    v132 += 2;
    v133 -= 8;
  }

  while (v133);
  if (v130 != v126)
  {
    goto LABEL_56;
  }

LABEL_58:
  v143 = v124 + v106;
  v144 = v23[7];
  v145 = ((v144 - v125) << a5);
  v146 = 0.0;
  v147 = 0.0;
  if (v145 < 1)
  {
    goto LABEL_66;
  }

  v148 = v125 << a5;
  v149 = v125 << a5;
  v150 = v148 + a7;
  if (v145 < 8)
  {
    v151 = 0;
LABEL_64:
    v157 = v145 - v151;
    v158 = 4 * v151;
    v159 = (a2 + v158 + 4 * v150);
    v160 = (a2 + v158 + 4 * v149);
    do
    {
      v161 = *v160++;
      v162 = v161;
      v163 = *v159++;
      v147 = v147 + (v162 * v163);
      --v157;
    }

    while (v157);
    goto LABEL_66;
  }

  v151 = v145 & 0x7FFFFFF8;
  v152 = (a2 + 4 * v149 + 16);
  v153 = (a2 + 4 * v150 + 16);
  v154 = v151;
  do
  {
    v155 = vmulq_f32(v152[-1], v153[-1]);
    v156 = vmulq_f32(*v152, *v153);
    v147 = (((((((v147 + v155.f32[0]) + v155.f32[1]) + v155.f32[2]) + v155.f32[3]) + v156.f32[0]) + v156.f32[1]) + v156.f32[2]) + v156.f32[3];
    v152 += 2;
    v153 += 2;
    v154 -= 8;
  }

  while (v154);
  if (v151 != v145)
  {
    goto LABEL_64;
  }

LABEL_66:
  v164 = v143 + v147;
  v165 = ((v23[8] - v144) << a5);
  if (v165 < 1)
  {
    goto LABEL_74;
  }

  v166 = v144 << a5;
  v167 = v144 << a5;
  v168 = v166 + a7;
  if (v165 < 8)
  {
    v169 = 0;
    v146 = 0.0;
LABEL_72:
    v175 = v165 - v169;
    v176 = 4 * v169;
    v177 = (a2 + v176 + 4 * v168);
    v178 = (a2 + v176 + 4 * v167);
    do
    {
      v179 = *v178++;
      v180 = v179;
      v181 = *v177++;
      v146 = v146 + (v180 * v181);
      --v175;
    }

    while (v175);
    goto LABEL_74;
  }

  v169 = v165 & 0x7FFFFFF8;
  v170 = (a2 + 4 * v167 + 16);
  v171 = (a2 + 4 * v168 + 16);
  v146 = 0.0;
  v172 = v169;
  do
  {
    v173 = vmulq_f32(v170[-1], v171[-1]);
    v174 = vmulq_f32(*v170, *v171);
    v146 = (((((((v146 + v173.f32[0]) + v173.f32[1]) + v173.f32[2]) + v173.f32[3]) + v174.f32[0]) + v174.f32[1]) + v174.f32[2]) + v174.f32[3];
    v170 += 2;
    v171 += 2;
    v172 -= 8;
  }

  while (v172);
  if (v169 != v165)
  {
    goto LABEL_72;
  }

LABEL_74:
  v182 = fabsf((v164 + v146) * 0.125);
  if (v182 > 1.0)
  {
    v182 = 1.0;
  }

  v183 = v182;
  if (a12 >= 9)
  {
    LOWORD(v184) = v23[8];
    v185 = a2 + 16;
    v186 = 8;
    v183 = v182;
    do
    {
      v189 = v184;
      v184 = v23[++v186];
      v190 = ((v184 - v189) << a5);
      if (v190 < 1)
      {
        v187 = 0.0;
      }

      else
      {
        v191 = v189 << a5;
        v192 = v189 << a5;
        v193 = v191 + a7;
        if (v190 >= 8)
        {
          v194 = v190 & 0x7FFFFFF8;
          v195 = (v185 + 4 * v192);
          v196 = (v185 + 4 * v193);
          v187 = 0.0;
          v197 = v194;
          do
          {
            v198 = vmulq_f32(v195[-1], v196[-1]);
            v199 = vmulq_f32(*v195, *v196);
            v187 = (((((((v187 + v198.f32[0]) + v198.f32[1]) + v198.f32[2]) + v198.f32[3]) + v199.f32[0]) + v199.f32[1]) + v199.f32[2]) + v199.f32[3];
            v195 += 2;
            v196 += 2;
            v197 -= 8;
          }

          while (v197);
          if (v194 == v190)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v194 = 0;
          v187 = 0.0;
        }

        v200 = v190 - v194;
        v201 = 4 * v194;
        v202 = (a2 + v201 + 4 * v193);
        v203 = (a2 + v201 + 4 * v192);
        do
        {
          v204 = *v203++;
          v205 = v204;
          v206 = *v202++;
          v187 = v187 + (v205 * v206);
          --v200;
        }

        while (v200);
      }

LABEL_79:
      v188 = fabsf(v187);
      if (v183 >= v188)
      {
        v183 = v188;
      }
    }

    while (v186 != a12);
  }

  v207 = fabsf(v183);
  if (v207 <= 1.0)
  {
    v208 = v207;
  }

  else
  {
    v208 = 1.0;
  }

  v209 = log((1.001 - (v182 * v182))) * 1.44269504;
  v210 = log((1.001 - (v208 * v208))) * 1.44269504;
  if ((v209 * 0.5) > v210)
  {
    v210 = v209 * 0.5;
  }

  v211 = v209 * 0.75;
  if ((v209 * 0.75) < -4.0)
  {
    v211 = -4.0;
  }

  v20 = v20 + v211;
  v212 = v210 * -0.5;
  if ((*a11 + 0.25) < v212)
  {
    v212 = *a11 + 0.25;
  }

  *a11 = v212;
  v21 = (a4 - 1);
  v22 = 0.0;
  if (a4 >= 2)
  {
LABEL_101:
    v213 = 0;
    if (a6 <= 1)
    {
      v214 = 1;
    }

    else
    {
      v214 = a6;
    }

    v215 = vdupq_n_s32(a4);
    v216 = a3 + 1;
    v217 = 4 * *(a1 + 8);
    v218.i64[0] = 0x800000008;
    v218.i64[1] = 0x800000008;
    v219.i64[0] = 0x200000002;
    v219.i64[1] = 0x200000002;
    v220.i64[0] = 0xA0000000ALL;
    v220.i64[1] = 0xA0000000ALL;
    do
    {
      if (a4 >= 9)
      {
        v222 = v21 & 0x7FFFFFF8;
        v223 = v216;
        v224 = xmmword_273B90830;
        do
        {
          v225 = vsubq_s32(vaddq_s32(v224, v224), v215);
          v226 = vmulq_f32(v223[-1], vcvtq_f32_s32(vaddq_s32(v225, v219)));
          v227 = vmulq_f32(*v223, vcvtq_f32_s32(vaddq_s32(v225, v220)));
          v22 = (((((((v22 + v226.f32[0]) + v226.f32[1]) + v226.f32[2]) + v226.f32[3]) + v227.f32[0]) + v227.f32[1]) + v227.f32[2]) + v227.f32[3];
          v224 = vaddq_s32(v224, v218);
          v223 += 2;
          v222 -= 8;
        }

        while (v222);
        v221 = v21 & 0x7FFFFFF8;
        if (v221 == v21)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v221 = 0;
      }

      v228 = v21 - v221;
      v229 = 2 - a4 + 2 * v221;
      v230 = &a3->f32[v221];
      do
      {
        v231 = *v230++;
        v22 = v22 + (v231 * v229);
        v229 += 2;
        --v228;
      }

      while (v228);
LABEL_105:
      ++v213;
      v216 = (v216 + v217);
      a3 = (a3 + v217);
    }

    while (v213 != v214);
  }

LABEL_114:
  v232 = ((v22 / (v21 * a6)) + 1.0) / 6.0;
  v233 = -2.0;
  v234 = v232 > 2.0 || v232 < -2.0;
  if (v232 < -2.0 && v232 <= 2.0)
  {
    v235 = -2.0;
  }

  else
  {
    v235 = 2.0;
  }

  if (v234)
  {
    v232 = v235;
  }

  v236 = ((v20 - v232) - a10) + (a9 * -2.0);
  if (*a8)
  {
    v237 = (*(a8 + 8) + 0.05) + (*(a8 + 8) + 0.05);
    v238 = v237 > 2.0 || v237 < -2.0;
    if (v237 >= -2.0 || v237 > 2.0)
    {
      v233 = 2.0;
    }

    if (!v238)
    {
      v233 = (*(a8 + 8) + 0.05) + (*(a8 + 8) + 0.05);
    }

    v236 = v236 - v233;
  }

  v239 = vcvtms_s32_f32(v236 + 0.5);
  if (v239 >= 10)
  {
    v239 = 10;
  }

  return v239 & ~(v239 >> 31);
}

uint64_t opus_custom_encoder_ctl(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  result = 4294967291;
  if (a2 <= 4046)
  {
    if (a2 <= 4027)
    {
      if (a2 <= 4009)
      {
        if (a2 != 4002)
        {
          if (a2 == 4006)
          {
            result = 0;
            a1[12] = a9;
          }

          return result;
        }

        v16 = a9;
        if (a9 > 500 || a9 == -1)
        {
          result = 0;
          if (a9 >= 260000 * a1[2])
          {
            v16 = 260000 * a1[2];
          }

          a1[11] = v16;
          return result;
        }
      }

      else if (a2 == 4010)
      {
        if (a9 <= 0xA)
        {
          result = 0;
          a1[7] = a9;
          return result;
        }
      }

      else
      {
        if (a2 != 4014)
        {
          if (a2 == 4020)
          {
            result = 0;
            a1[14] = a9;
          }

          return result;
        }

        if (a9 <= 0x64)
        {
          result = 0;
          a1[15] = a9;
          return result;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 > 4035)
    {
      if (a2 == 4036)
      {
        if ((a9 - 25) >= 0xFFFFFFEF)
        {
          result = 0;
          a1[16] = a9;
          return result;
        }

        return 0xFFFFFFFFLL;
      }

      if (a2 != 4037)
      {
        if (a2 != 4046)
        {
          return result;
        }

        if (a9 <= 1)
        {
          result = 0;
          a1[18] = a9;
          return result;
        }

        return 0xFFFFFFFFLL;
      }

      result = 0;
      v14 = a9;
      v15 = a1[16];
      goto LABEL_62;
    }

    if (a2 != 4028)
    {
      if (a2 != 4031)
      {
        return result;
      }

      v14 = a9;
      if (!a9)
      {
        return 0xFFFFFFFFLL;
      }

      result = 0;
      v15 = a1[20];
LABEL_62:
      *v14 = v15;
      return result;
    }

    v18 = a1[2];
    v19 = *a1;
    v20 = *(*a1 + 8);
    v21 = *(*a1 + 4) + 1024;
    v22 = a1;
    bzero(a1 + 20, 4 * v18 * (v21 + 4 * v20) + 252 - 80);
    v23 = (*(v19 + 8) * v18);
    if (v23 >= 1)
    {
      v24 = v20 * v18;
      v25 = v21 * v18;
      if (v23 < 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = 0;
        if ((-4 * v24) >= 0x20)
        {
          v26 = v23 & 0x7FFFFFF8;
          v27 = &v22[2 * v24 + 67 + v25];
          v28 = &v22[v24 + 67 + v25];
          __asm { FMOV            V0.4S, #-28.0 }

          v33 = v26;
          do
          {
            *(v27 - 1) = _Q0;
            *v27 = _Q0;
            v27 += 2;
            *(v28 - 1) = _Q0;
            *v28 = _Q0;
            v28 += 2;
            v33 -= 8;
          }

          while (v33);
          if (v26 == v23)
          {
            goto LABEL_85;
          }
        }
      }

      v34 = v23 - v26;
      v35 = v26;
      v36 = &v22[v25];
      v37 = &v22[v25 + 63 + v24 + v35];
      v38 = &v36[2 * v24 + 63 + v35];
      do
      {
        *v38++ = -1042284544;
        *v37++ = -1042284544;
        --v34;
      }

      while (v34);
    }

LABEL_85:
    result = 0;
    v22[55] = 0;
    *(v22 + 21) = 0x3F80000000000002;
    v22[23] = 256;
    v22[25] = 0;
    v22[26] = 0;
    return result;
  }

  if (a2 <= 10014)
  {
    if (a2 > 10007)
    {
      switch(a2)
      {
        case 10008:
          if ((a9 - 3) >= 0xFFFFFFFE)
          {
            result = 0;
            a1[3] = a9;
            return result;
          }

          break;
        case 10010:
          if ((a9 & 0x80000000) == 0 && a9 < *(*a1 + 8))
          {
            result = 0;
            a1[9] = a9;
            return result;
          }

          break;
        case 10012:
          if (a9 >= 1 && a9 <= *(*a1 + 8))
          {
            result = 0;
            a1[10] = a9;
            return result;
          }

          break;
        default:
          return result;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 4047)
    {
      if (a2 != 10002)
      {
        return result;
      }

      if (a9 <= 2)
      {
        result = 0;
        a1[6] = a9 != 2;
        a1[4] = a9 == 0;
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    v14 = a9;
    if (!a9)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v15 = a1[18];
    goto LABEL_62;
  }

  if (a2 <= 10023)
  {
    if (a2 != 10015)
    {
      if (a2 == 10016)
      {
        result = 0;
        a1[13] = a9;
        return result;
      }

      if (a2 == 10022)
      {
        if (a9)
        {
          result = 0;
          v11 = *a9;
          v12 = a9[1];
          v13 = a9[2];
          *(a1 + 43) = a9[3];
          *(a1 + 39) = v13;
          *(a1 + 35) = v12;
          *(a1 + 31) = v11;
          return result;
        }

        return 0;
      }

      return result;
    }

    if (a9)
    {
      result = 0;
      *a9 = *a1;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  switch(a2)
  {
    case 10024:
      result = 0;
      a1[17] = a9;
      return result;
    case 10026:
      result = 0;
      *(a1 + 30) = a9;
      return result;
    case 10028:
      if (a9)
      {
        result = 0;
        *(a1 + 47) = *a9;
        return result;
      }

      return 0;
  }

  return result;
}

float32_t celt_fir_c()
{
  v97[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x28223BE20]();
  v8 = v97 - v7;
  if (v4 >= 1)
  {
    if (v4 <= 7)
    {
      v9 = 0;
LABEL_7:
      v15 = v5 - v9;
      v16 = &v8[4 * v9];
      do
      {
        v6.i32[0] = *(v1 - 4 + 4 * v15);
        *v16 = v6.i32[0];
        v16 += 4;
        --v15;
      }

      while (v15);
      goto LABEL_9;
    }

    v9 = v5 & 0x7FFFFFF8;
    v10 = (v1 + 4 * v5 - 16);
    v11 = (v8 + 16);
    v12 = v9;
    do
    {
      v13 = vrev64q_s32(*v10);
      v6 = vextq_s8(v13, v13, 8uLL);
      v14 = vrev64q_s32(v10[-1]);
      v11[-1] = v6;
      *v11 = vextq_s8(v14, v14, 8uLL);
      v10 -= 2;
      v11 += 2;
      v12 -= 8;
    }

    while (v12);
    if (v9 != v5)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (v3 < 4)
  {
    LODWORD(v49) = 0;
    goto LABEL_38;
  }

  v17 = (v3 - 3);
  if (v4 >= 4)
  {
    v18 = 0;
    v19 = v4 & 0x7FFFFFFC | 1;
    v20 = v4 & 0x7FFFFFFC | 2;
    v21 = v0 - 4 * v4;
    while (1)
    {
      v22 = 0;
      v23 = 0;
      v24 = (v0 + 4 * v18);
      v6.i32[0] = *v24;
      v25 = *(v0 + 4 * (v18 | 1));
      v26 = *(v0 + 4 * (v18 | 2));
      v27 = *(v0 + 4 * (v18 | 3));
      v28 = &v24[-v4];
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      do
      {
        v32 = *&v8[v22];
        v33 = *&v8[v22 + 4];
        v34 = v6.f32[0] + (v32 * v29);
        v35 = *(v21 + v22 + 12);
        v29 = *(v21 + v22 + 16);
        v36 = v34 + (v33 * v30);
        v37 = (v25 + (v32 * v30)) + (v33 * v31);
        v38 = (v26 + (v32 * v31)) + (v33 * v35);
        v39 = (v27 + (v32 * v35)) + (v33 * v29);
        v40 = *&v8[v22 + 8];
        v41 = *&v8[v22 + 12];
        v42 = v36 + (v40 * v31);
        v30 = *(v21 + v22 + 20);
        v31 = *(v21 + v22 + 24);
        v6.f32[0] = v42 + (v41 * v35);
        v25 = (v37 + (v40 * v35)) + (v41 * v29);
        v26 = (v38 + (v40 * v29)) + (v41 * v30);
        v27 = (v39 + (v40 * v30)) + (v41 * v31);
        v23 += 4;
        v22 += 16;
      }

      while (v23 < v4 - 3);
      v43 = &v8[v22];
      v44 = v21 + v22;
      v45 = (v21 + v22 + 12);
      if ((v4 & 0x7FFFFFFC) == v4)
      {
        if (v19 < v4)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v35 = *v45;
        v45 = (v44 + 16);
        v6.f32[0] = v6.f32[0] + (*v43 * v29);
        v25 = v25 + (*v43 * v30);
        v26 = v26 + (*v43 * v31);
        v27 = v27 + (*v43 * v35);
        v43 = &v8[16 * ((v4 - 4) >> 2) + 20];
        if (v19 < v4)
        {
LABEL_17:
          v46 = *v43++;
          v47 = v46;
          v48 = *v45++;
          v29 = v48;
          v6.f32[0] = v6.f32[0] + (v47 * v30);
          v25 = v25 + (v47 * v31);
          v26 = v26 + (v47 * v35);
          v27 = v27 + (v47 * v48);
          if (v20 < v4)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }
      }

      if (v20 < v4)
      {
LABEL_21:
        v6.f32[0] = v6.f32[0] + (*v43 * v31);
        v25 = v25 + (*v43 * v35);
        v26 = v26 + (*v43 * v29);
        v27 = v27 + (*v43 * *v45);
      }

LABEL_12:
      v2[v18 / 4].i32[0] = v6.i32[0];
      v2->f32[v18 | 1] = v25;
      v2->f32[v18 | 2] = v26;
      v2->f32[v18 | 3] = v27;
      v18 += 4;
      v21 += 16;
      if (v18 >= v17)
      {
        LODWORD(v49) = v18;
        goto LABEL_38;
      }
    }
  }

  if (v4 <= 0)
  {
    v56 = 4;
    if (v17 > 4)
    {
      v56 = (v3 - 3);
    }

    if (v17 > 0x1C && ((v57 = ((4 * v17 - 4) & 0xFFFFFFFFFFFFFFF0) + 16, v0 + v57 <= v2) || v2 + v57 <= v0))
    {
      v90 = ((v56 - 1) >> 2) + 1;
      v49 = 4 * (v90 & 0x7FFFFFFFFFFFFFFCLL);
      v91 = v90 & 0x7FFFFFFFFFFFFFFCLL;
      v92 = v2;
      v93 = v0;
      do
      {
        v94 = *v93;
        v6 = v93[1];
        v95 = v93[3];
        v92[2] = v93[2];
        v92[3] = v95;
        *v92 = v94;
        v92[1] = v6;
        v92 += 4;
        v93 += 4;
        v91 -= 4;
      }

      while (v91);
      if (v90 == (v90 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_38;
      }
    }

    else
    {
      v49 = 0;
    }

    f32 = v2[v49 / 4].f32;
    v59 = (v0 + 4 * v49);
    do
    {
      v60 = *v59++;
      v6.i32[0] = v60;
      *f32++ = v60;
      v49 += 4;
    }

    while (v49 < v17);
    goto LABEL_38;
  }

  v49 = 0;
  v6 = vld1q_dup_f32(v8);
  v50 = v0;
  v51 = v2;
  do
  {
    v52 = *(v50 - 4 * v4);
    v53 = vmlaq_f32(*v50, v52, v6);
    if (v4 >= 2)
    {
      v54 = vextq_s8(v52, v6, 4uLL);
      v54.i32[3] = *(v50 - 4 * v4 + 16);
      v53 = vmlaq_n_f32(v53, v54, *(v8 + 1));
      if (v4 == 3)
      {
        v55.i64[0] = vdupq_laneq_s64(v52, 1).u64[0];
        v55.i64[1] = *(v50 + 4);
        v53 = vmlaq_n_f32(v53, v55, *(v8 + 2));
      }
    }

    *v51++ = v53;
    v49 += 4;
    v50 += 16;
  }

  while (v49 < v17);
LABEL_38:
  if (v49 >= v3)
  {
    return v6.f32[0];
  }

  v61 = v49;
  v62 = v3;
  if (v4 > 0)
  {
    v63 = 0;
    v64 = v49 - v4;
    for (i = v64; ; ++i)
    {
      v6.i32[0] = *(v0 + 4 * v61);
      if (v4 >= 8 && (v64 + v63 + v5 - 1 >= v64 + v63 ? (v66 = (v5 - 1) >> 32 == 0) : (v66 = 0), v66))
      {
        v72 = i;
        v73 = v5 & 0x7FFFFFF8;
        v74 = (v8 + 16);
        do
        {
          v75 = (v0 + 4 * v72);
          v76 = vmulq_f32(v74[-1], *v75);
          v77 = vmulq_f32(*v74, v75[1]);
          v6.f32[0] = (((((((v6.f32[0] + v76.f32[0]) + v76.f32[1]) + v76.f32[2]) + v76.f32[3]) + v77.f32[0]) + v77.f32[1]) + v77.f32[2]) + v77.f32[3];
          v74 += 2;
          v72 += 8;
          v73 -= 8;
        }

        while (v73);
        v67 = v5 & 0x7FFFFFF8;
        if (v67 == v5)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v67 = 0;
      }

      v68 = v5 - v67;
      v69 = i + v67;
      v70 = &v8[4 * v67];
      do
      {
        v71 = *v70++;
        v6.f32[0] = v6.f32[0] + (v71 * *(v0 + 4 * v69++));
        --v68;
      }

      while (v68);
LABEL_41:
      v2->i32[v61++] = v6.i32[0];
      ++v63;
      if (v61 == v62)
      {
        return v6.f32[0];
      }
    }
  }

  v78 = v3 - v49;
  if (v78 < 8 || v2 - v0 <= 0x1F)
  {
    v79 = v49;
LABEL_62:
    v85 = v3 - v79;
    v86 = 4 * v79;
    v87 = &v2->i32[v79];
    v88 = (v0 + v86);
    do
    {
      v89 = *v88++;
      v6.i32[0] = v89;
      *v87++ = v89;
      --v85;
    }

    while (v85);
    return v6.f32[0];
  }

  v79 = (v78 & 0xFFFFFFFFFFFFFFF8) + v49;
  v80 = 4 * v49 + 16;
  v81 = (v0 + v80);
  v82 = (v2 + v80);
  v83 = v78 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v6 = v81[-1];
    v84 = *v81;
    v82[-1] = v6;
    *v82 = v84;
    v81 += 2;
    v82 += 2;
    v83 -= 8;
  }

  while (v83);
  if (v78 != (v78 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_62;
  }

  return v6.f32[0];
}

float32x4_t celt_iir(uint64_t a1, float *a2, uint64_t a3, int a4, int a5, int8x16_t *a6)
{
  v124[1] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = MEMORY[0x28223BE20](a1, a2, a3);
  v15 = v124 - v14;
  MEMORY[0x28223BE20](v13, v16, v17);
  v21 = (v124 - v20);
  if (v22 < 1)
  {
    v24 = 0;
    if (v18 > 0)
    {
      goto LABEL_35;
    }

    goto LABEL_17;
  }

  if (a5 > 7)
  {
    v23 = v12 & 0x7FFFFFF8;
    v25 = &a2[v12 - 4];
    v26 = (v15 + 16);
    v27 = v23;
    do
    {
      v28 = vrev64q_s32(*v25);
      result = vextq_s8(v28, v28, 8uLL);
      v29 = vrev64q_s32(v25[-1]);
      v26[-1] = result;
      *v26 = vextq_s8(v29, v29, 8uLL);
      v25 -= 2;
      v26 += 2;
      v27 -= 8;
    }

    while (v27);
    if (v23 == v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v23 = 0;
  }

  v30 = v12 - v23;
  v31 = &v15[4 * v23];
  do
  {
    *v31 = a2[v30 - 1];
    v31 += 4;
    --v30;
  }

  while (v30);
LABEL_11:
  if (a5 > 7)
  {
    v32 = v12 & 0x7FFFFFF8;
    v33 = (&a6[-1] + 4 * v12);
    v34 = v21 + 1;
    v35 = v32;
    do
    {
      v36 = vrev64q_s32(*v33);
      v37 = vrev64q_s32(v33[-1]);
      result = vnegq_f32(vextq_s8(v36, v36, 8uLL));
      v34[-1] = result;
      *v34 = vnegq_f32(vextq_s8(v37, v37, 8uLL));
      v33 -= 2;
      v34 += 2;
      v35 -= 8;
    }

    while (v35);
    v24 = a5;
    if (v32 == v12)
    {
      if (a5 < v18)
      {
        goto LABEL_35;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v32 = 0;
  }

  v81 = v12 - v32;
  v82 = &v21->i8[4 * v32];
  do
  {
    result.f32[0] = -*&a6[-1].i32[v81 + 3];
    *v82 = result.i32[0];
    v82 += 4;
    --v81;
  }

  while (v81);
  v24 = a5;
  if (a5 < v18)
  {
LABEL_35:
    bzero(&v21->f32[v24], 4 * (v18 + ~v24) + 4);
    if (a4 < 4)
    {
      goto LABEL_36;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (a4 >= 4)
  {
LABEL_18:
    v38 = 0;
    while (1)
    {
      v51 = *(a1 + 4 * v38);
      v52 = *(a1 + 4 * (v38 | 1));
      v53 = *(a1 + 4 * (v38 | 2));
      v54 = *(a1 + 4 * (v38 | 3));
      v55 = &v21->f32[v38];
      v56 = *v55;
      v57 = v55[1];
      v58 = v55 + 3;
      v59 = v55[2];
      if (a5 < 4)
      {
        break;
      }

      v60 = 0;
      v61 = v15;
      do
      {
        v62 = v61[1];
        v63 = v51 + (*v61 * v56);
        v64 = *v58;
        v56 = v58[1];
        v65 = v63 + (v62 * v57);
        v66 = (v52 + (*v61 * v57)) + (v62 * v59);
        v67 = (v53 + (*v61 * v59)) + (v62 * *v58);
        v68 = (v54 + (*v61 * *v58)) + (v62 * v56);
        v69 = v61[2];
        v70 = v61[3];
        v71 = v65 + (v69 * v59);
        v57 = v58[2];
        v59 = v58[3];
        v72 = v61 + 4;
        v73 = v58 + 4;
        v51 = v71 + (v70 * *v58);
        v52 = (v66 + (v69 * *v58)) + (v70 * v56);
        v53 = (v67 + (v69 * v56)) + (v70 * v57);
        v54 = (v68 + (v69 * v57)) + (v70 * v59);
        v60 += 4;
        v61 += 4;
        v58 += 4;
      }

      while (v60 < a5 - 3);
      v74 = a5 & 0x7FFFFFFC;
      v58 = v73;
      if ((a5 & 0x7FFFFFFC) < a5)
      {
        goto LABEL_26;
      }

LABEL_27:
      if ((v74 | 1) < a5)
      {
        v78 = *v72++;
        v79 = v78;
        v80 = *v58++;
        v56 = v80;
        v51 = v51 + (v79 * v57);
        v52 = v52 + (v79 * v59);
        v53 = v53 + (v79 * v64);
        v54 = v54 + (v79 * v80);
        if ((v74 | 2) < a5)
        {
LABEL_31:
          v51 = v51 + (*v72 * v59);
          v52 = v52 + (*v72 * v64);
          v53 = v53 + (*v72 * v56);
          v54 = v54 + (*v72 * *v58);
        }
      }

      else if ((v74 | 2) < a5)
      {
        goto LABEL_31;
      }

      *(a3 + 4 * v38) = v51;
      v39 = *a2;
      v40 = v52 - (v51 * *a2);
      *(a3 + 4 * (v38 | 1)) = v40;
      v41 = a2[1];
      v42 = v53 - (v40 * *a2);
      v43 = v42 - (v51 * v41);
      *(a3 + 4 * (v38 | 2)) = v43;
      v44 = a2[1];
      v45 = v54 - (v43 * *a2);
      v46 = -v51;
      v47 = &v21->f32[a5 + v38];
      *v47 = -v51;
      v47[1] = -(v52 + (-v51 * v39));
      v48 = -(v42 + (-v51 * v41));
      v49 = v45 - (v40 * v44);
      v50 = a2[2];
      result.f32[0] = v49 - (v51 * v50);
      v47[2] = v48;
      v47[3] = -(v49 + (v46 * v50));
      *(a3 + 4 * (v38 | 3)) = result.i32[0];
      v38 += 4;
      if (v38 >= (a4 - 3))
      {
        goto LABEL_37;
      }
    }

    v74 = 0;
    v64 = 0.0;
    v72 = v15;
    if (a5 <= 0)
    {
      goto LABEL_27;
    }

LABEL_26:
    v75 = *v72++;
    v76 = v75;
    v77 = *v58++;
    v64 = v77;
    v51 = v51 + (v76 * v56);
    v52 = v52 + (v76 * v57);
    v53 = v53 + (v76 * v59);
    v54 = v54 + (v76 * v77);
    goto LABEL_27;
  }

LABEL_36:
  LODWORD(v38) = 0;
LABEL_37:
  if (v38 >= a4)
  {
    goto LABEL_58;
  }

  v83 = v38;
  if (a5 > 0)
  {
    v84 = &v21->i8[4 * v38];
    v85 = (v84 + 16);
    while (1)
    {
      result.i32[0] = *(a1 + 4 * v83);
      if (a5 >= 8)
      {
        v87 = v12 & 0x7FFFFFF8;
        v88 = v85;
        v89 = (v15 + 16);
        do
        {
          v90 = vmulq_f32(v88[-1], vnegq_f32(v89[-1]));
          v91 = vmulq_f32(*v88, vnegq_f32(*v89));
          result.f32[0] = (((((((result.f32[0] + v90.f32[0]) + v90.f32[1]) + v90.f32[2]) + v90.f32[3]) + v91.f32[0]) + v91.f32[1]) + v91.f32[2]) + v91.f32[3];
          v89 += 2;
          v88 += 2;
          v87 -= 8;
        }

        while (v87);
        v86 = v12 & 0x7FFFFFF8;
        if (v86 == v12)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v86 = 0;
      }

      v92 = v12 - v86;
      v93 = 4 * v86;
      v94 = &v84[4 * v86];
      v95 = &v15[v93];
      do
      {
        v96 = *v95++;
        v97 = v96;
        v98 = *v94++;
        result.f32[0] = result.f32[0] - (v97 * v98);
        --v92;
      }

      while (v92);
LABEL_40:
      v21->i32[v12 + v83] = result.i32[0];
      *(a3 + 4 * v83++) = result.i32[0];
      v85 = (v85 + 4);
      v84 += 4;
      if (v83 == a4)
      {
        goto LABEL_58;
      }
    }
  }

  v99 = a4 - v38;
  if (v99 < 8 || (a3 - a1) <= 0x1F)
  {
    v100 = v38;
  }

  else
  {
    v100 = (v99 & 0xFFFFFFFFFFFFFFF8) + v38;
    v101 = 4 * v38 + 16;
    v102 = (a3 + v101);
    v103 = (a1 + v101);
    v104 = &v21[1].i8[4 * v38 + 4 * a5];
    v105 = v99 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      result = v103[-1];
      v106 = *v103;
      *(v104 - 1) = result;
      *v104 = v106;
      v102[-1] = result;
      *v102 = v106;
      v102 += 2;
      v103 += 2;
      v104 += 32;
      v105 -= 8;
    }

    while (v105);
    if (v99 == (v99 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_58;
    }
  }

  v107 = a4 - v100;
  v108 = 4 * v100;
  v109 = (a3 + v108);
  v110 = &v21->i32[a5 + v108 / 4];
  v111 = (a1 + v108);
  do
  {
    v112 = *v111++;
    result.i32[0] = v112;
    *v110++ = v112;
    *v109++ = v112;
    --v107;
  }

  while (v107);
LABEL_58:
  if (a5 < 1)
  {
    return result;
  }

  if (a5 <= 0x17)
  {
    goto LABEL_60;
  }

  v113 = 0;
  v117 = a4 - 1;
  if (a4 - v12 > a4 - 1 || (v12 - 1) >> 32)
  {
    goto LABEL_61;
  }

  v118 = 4 * v117 + 4;
  if (v118 + a3 > a6 && a3 + v118 - 4 * v12 < a6 + 4 * v12)
  {
LABEL_60:
    v113 = 0;
LABEL_61:
    v114 = v12 - v113;
    v115 = &a6->i32[v113];
    v116 = ~v113 + a4;
    do
    {
      result.i32[0] = *(a3 + 4 * v116);
      *v115++ = result.i32[0];
      --v116;
      --v114;
    }

    while (v114);
    return result;
  }

  v113 = v12 & 0x7FFFFFF8;
  v119 = a6 + 1;
  v120 = v113;
  do
  {
    v121 = a3 + 4 * v117;
    v122 = vrev64q_s32(*(v121 - 12));
    result = vextq_s8(v122, v122, 8uLL);
    v123 = vrev64q_s32(*(v121 - 28));
    v119[-1] = result;
    *v119 = vextq_s8(v123, v123, 8uLL);
    v119 += 2;
    v117 -= 8;
    v120 -= 8;
  }

  while (v120);
  if (v113 != v12)
  {
    goto LABEL_61;
  }

  return result;
}

uint64_t _celt_autocorr(float32x4_t *a1, __n128 *a2, uint64_t a3, int a4, int a5, int a6)
{
  v11 = a1;
  v41[1] = *MEMORY[0x277D85DE8];
  v12 = a6 - a5;
  MEMORY[0x28223BE20](a1, a2, a3);
  v15 = (v41 - v14);
  if (v16)
  {
    v17 = a6 - 1;
    if (a6 >= 1)
    {
      memcpy(v15, v11, 4 * a6);
    }

    if (a4 >= 1)
    {
      v18 = 0;
      do
      {
        v19 = *(a3 + v18 * 4);
        v15->f32[v18] = v11->f32[v18] * v19;
        v13.n128_f32[0] = v19 * v11->f32[v17];
        v15->i32[v17] = v13.n128_u32[0];
        ++v18;
        --v17;
      }

      while (a4 != v18);
    }

    v11 = v15;
  }

  celt_pitch_xcorr_c(v11->f32, v11, a2, v12, a5 + 1, v13);
  if ((a5 & 0x80000000) == 0)
  {
    v20 = 0;
    v21 = 0;
    v22 = a6 - v12;
    v23 = a5 - 1;
    v24 = v11 + 1;
    do
    {
      v25 = 0.0;
      if (v21 < v22)
      {
        v26 = (~v21 + a5);
        v27 = v12;
        if (v26 < 7)
        {
          goto LABEL_16;
        }

        v28 = (v23 + 1) & 0x1FFFFFFF8;
        v29 = (v24 + 4 * v12);
        v30 = (v24 + 4 * v20 + 4 * v12);
        v31 = v26 + 1;
        v27 = (v31 & 0x1FFFFFFF8) + v12;
        do
        {
          v32 = vmulq_f32(v29[-1], v30[-1]);
          v33 = vmulq_f32(*v29, *v30);
          v25 = (((((((v25 + v32.f32[0]) + v32.f32[1]) + v32.f32[2]) + v32.f32[3]) + v33.f32[0]) + v33.f32[1]) + v33.f32[2]) + v33.f32[3];
          v29 += 2;
          v30 += 2;
          v28 -= 8;
        }

        while (v28);
        if (v31 != (v31 & 0x1FFFFFFF8))
        {
LABEL_16:
          v34 = a6 - v27;
          v35 = &v11->f32[v27 + v20];
          v36 = &v11->f32[v27];
          do
          {
            v37 = *v36++;
            v38 = v37;
            v39 = *v35++;
            v25 = v25 + (v38 * v39);
            --v34;
          }

          while (v34);
        }
      }

      a2->n128_f32[v21] = v25 + a2->n128_f32[v21];
      ++v21;
      ++v12;
      --v23;
      --v20;
    }

    while (v21 != a5 + 1);
  }

  return 0;
}

uint64_t check_control_input(_DWORD *a1)
{
  v1 = a1[2];
  v2 = 4294967194;
  if (v1 <= 23999)
  {
    if (v1 != 8000 && v1 != 12000 && v1 != 16000)
    {
      return v2;
    }
  }

  else if (v1 > 44099)
  {
    if (v1 != 48000 && v1 != 44100)
    {
      return v2;
    }
  }

  else if (v1 != 24000 && v1 != 32000)
  {
    return v2;
  }

  v7 = a1[5];
  if (v7 != 8000 && v7 != 16000 && v7 != 12000)
  {
    return 4294967194;
  }

  v8 = a1[3];
  if (v8 != 8000 && v8 != 16000 && v8 != 12000)
  {
    return 4294967194;
  }

  v9 = a1[4];
  if (v9 != 8000 && v9 != 16000 && v9 != 12000)
  {
    return 4294967194;
  }

  v2 = 4294967194;
  if (v8 < v7)
  {
    return v2;
  }

  if (v9 > v7)
  {
    return v2;
  }

  v10 = a1[6];
  v2 = 4294967193;
  if (v10 > 0x3C || ((1 << v10) & 0x1000010000100400) == 0)
  {
    return v2;
  }

  if (a1[8] > 0x64u)
  {
    return 4294967191;
  }

  if (a1[12] > 1u)
  {
    return 4294967188;
  }

  if (a1[13] > 1u)
  {
    return 4294967187;
  }

  if (a1[10] > 1u)
  {
    return 4294967189;
  }

  if ((*a1 - 3) < 0xFFFFFFFE)
  {
    return 4294967185;
  }

  v12 = a1[1];
  v2 = 4294967185;
  if (v12 > *a1 || (v12 - 3) < 0xFFFFFFFE)
  {
    return v2;
  }

  if (a1[9] <= 0xAu)
  {
    return 0;
  }

  else
  {
    return 4294967190;
  }
}

void silk_CNG(char *a1, uint64_t a2, __int16 *a3, int a4)
{
  v5 = a3;
  v6 = a1;
  v118 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 2344);
  v8 = a1 + 2796;
  v9 = *(a1 + 579);
  if (v9 != *(a1 + 1045))
  {
    v10 = *(a1 + 585);
    if (v10 < 1)
    {
LABEL_18:
      *(a1 + 4172) = 0x30788000000000;
      *(a1 + 1045) = v9;
      goto LABEL_19;
    }

    v11 = 0x7FFF / (v10 + 1);
    if (v10 < 4)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_16;
    }

    v14 = vdupq_n_s32(v11);
    if (v10 >= 0x10)
    {
      v12 = v10 & 0x7FFFFFF0;
      v16 = vmulq_s32(v14, xmmword_273B92360);
      v17 = vmulq_s32(v14, xmmword_273B90830);
      v18 = vdupq_n_s32(8 * v11);
      v15 = v11 * (v10 & 0x7FFFFFF0);
      v19 = (a1 + 4092);
      v20 = v12;
      do
      {
        v21 = vaddq_s32(v16, v18);
        v22 = vaddq_s32(v17, v18);
        v19[-1] = vuzp1q_s16(vaddq_s32(v17, v14), vaddq_s32(v16, v14));
        *v19 = vuzp1q_s16(vaddq_s32(v22, v14), vaddq_s32(v21, v14));
        v17 = vaddq_s32(v22, v18);
        v16 = vaddq_s32(v21, v18);
        v19 += 2;
        v20 -= 16;
      }

      while (v20);
      if (v12 == v10)
      {
        goto LABEL_18;
      }

      if ((v10 & 0xC) == 0)
      {
        v13 = v11 * v12;
LABEL_16:
        v28 = v10 - v12;
        v29 = &a1[2 * v12 + 4076];
        v30 = v13 + v11;
        do
        {
          *v29 = v30;
          v29 += 2;
          v30 += v11;
          --v28;
        }

        while (v28);
        goto LABEL_18;
      }
    }

    else
    {
      v15 = 0;
      v12 = 0;
    }

    v23 = v12;
    v12 = v10 & 0x7FFFFFFC;
    v13 = v11 * (v10 & 0x7FFFFFFC);
    v24 = vmlaq_s32(vdupq_n_s32(v15), v14, xmmword_273B90830);
    v25 = vdupq_n_s32(4 * v11);
    v26 = &a1[2 * v23 + 4076];
    v27 = v23 - v12;
    do
    {
      *v26++ = vmovn_s32(vaddq_s32(v24, v14));
      v24 = vaddq_s32(v24, v25);
      v27 += 4;
    }

    while (v27);
    if (v12 == v10)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_19:
  if (*(a1 + 1046))
  {
LABEL_42:
    v106 = &v104;
    MEMORY[0x28223BE20](a1, a2, a3);
    v50 = (&v104 - v49);
    v51 = (*(v6 + 1068) * *(v6 + 2126)) >> 16;
    v52 = *(v6 + 1043);
    if (v51 >= 0x200000 || *(v6 + 1043) > 0x800000)
    {
      v60 = (v52 >> 16) * (v52 >> 16) - 32 * (v51 >> 16) * (v51 >> 16);
      if (v60 >= 1)
      {
        v61 = __clz(v60);
        if (v61 != 24)
        {
          v55 = v60 > 0x7F;
          v62 = (v60 << (v61 + 8)) | (v60 >> (24 - v61));
          v60 <<= v61 - 24;
          if (v55)
          {
            LOBYTE(v60) = v62;
          }
        }

        v63 = v60 & 0x7F;
        if (v61)
        {
          v64 = 0x8000;
        }

        else
        {
          v64 = 46214;
        }

        v59 = (((213 * v63) | 0x10000) * (v64 >> (v61 >> 1))) & 0xFFFF0000;
        goto LABEL_61;
      }
    }

    else
    {
      v53 = ((v52 * v52) >> 16) - (((v51 * v51) >> 11) & 0xFFFFFFE0);
      if (v53 >= 1)
      {
        v54 = __clz(v53);
        if (v54 != 24)
        {
          v55 = v53 > 0x7F;
          v56 = (v53 << (v54 + 8)) | (v53 >> (24 - v54));
          v53 <<= v54 - 24;
          if (v55)
          {
            LOBYTE(v53) = v56;
          }
        }

        v57 = v53 & 0x7F;
        if (v54)
        {
          v58 = 0x8000;
        }

        else
        {
          v58 = 46214;
        }

        v59 = ((v58 >> (v54 >> 1)) + ((213 * (v58 >> (v54 >> 1)) * v57) >> 16)) << 8;
        goto LABEL_61;
      }
    }

    v59 = 0;
LABEL_61:
    v65 = 255;
    do
    {
      v66 = v65;
      v65 >>= 1;
    }

    while (v66 > a4);
    v67 = *(v6 + 1044);
    if (a4)
    {
      v68 = v50 + 4;
      v69 = a4;
      do
      {
        v67 = 196314165 * v67 + 907633515;
        *v68++ = v8[v66 & HIBYTE(v67)];
        --v69;
      }

      while (v69);
    }

    *(v6 + 1044) = v67;
    silk_NLSF2A(&v109, v6 + 2038, *(v6 + 585));
    v70 = *(v6 + 4124);
    *v50 = *(v6 + 4108);
    v50[1] = v70;
    v71 = *(v6 + 4140);
    v72 = *(v6 + 4156);
    v105 = v6 + 4108;
    v50[2] = v71;
    v50[3] = v72;
    v107 = v50;
    if (a4 >= 1)
    {
      v73 = *(v6 + 585);
      v74 = v59 >> 6;
      v75 = v109.i16[0];
      v76 = v109.i16[1];
      v77 = v109.i16[2];
      v78 = v109.i16[3];
      v79 = v109.i16[4];
      v80 = v109.i16[5];
      v81 = v109.i16[6];
      v82 = v109.i16[7];
      v83 = v110;
      v84 = v111;
      v108 = v112;
      v85 = v113;
      v86 = v114;
      v87 = v115;
      v88 = v116;
      v89 = a4;
      v90 = (v107 + 2);
      v91 = v117;
      v92 = *(v107 + 15);
      do
      {
        v94 = (v73 >> 1) + ((v75 * v92) >> 16) + ((v90[6] * v76) >> 16) + ((v90[5] * v77) >> 16) + ((v90[4] * v78) >> 16) + ((v90[3] * v79) >> 16) + ((v90[2] * v80) >> 16) + ((v90[1] * v81) >> 16) + ((*v90 * v82) >> 16) + ((*(v90 - 1) * v83) >> 16) + ((*(v90 - 2) * v84) >> 16);
        if (v73 == 16)
        {
          v94 += ((*(v90 - 3) * v108) >> 16) + ((*(v90 - 4) * v85) >> 16) + ((*(v90 - 5) * v86) >> 16) + ((*(v90 - 6) * v87) >> 16) + ((*(v90 - 7) * v88) >> 16) + ((*(v90 - 8) * v91) >> 16);
        }

        if (v94 <= -134217728)
        {
          v95 = -134217728;
        }

        else
        {
          v95 = v94;
        }

        if (v95 >= 0x7FFFFFF)
        {
          v95 = 0x7FFFFFF;
        }

        v96 = vqadds_s32(v90[8], 16 * v95);
        v90[8] = v96;
        v97 = *v5;
        v98 = ((((v74 * v96) >> 16) >> 7) + 1) >> 1;
        if (v98 <= -32768)
        {
          v98 = -32768;
        }

        v93 = 0x7FFF;
        if (v98 >= 0x7FFF)
        {
          v98 = 0x7FFF;
        }

        if (v98 + v97 < 0x8000)
        {
          if (v98 + v97 >= -32768)
          {
            v93 = v97 + v98;
          }

          else
          {
            v93 = 0x8000;
          }
        }

        v92 = v96;
        *v5++ = v93;
        ++v90;
        --v89;
      }

      while (v89);
    }

    v99 = (v107 + 4 * a4);
    v100 = v99[1];
    v101 = v105;
    *v105 = *v99;
    v101[1] = v100;
    v102 = v99[3];
    v101[2] = v99[2];
    v101[3] = v102;
    return;
  }

  if (!*(a1 + 1047))
  {
    v31 = *(a1 + 585);
    if (v31 >= 1)
    {
      if (v31 > 7)
      {
        v32 = v31 & 0x7FFFFFF8;
        v33 = vdupq_n_s16(0x3FDCu);
        v34 = v32;
        do
        {
          v35 = (v7 + 1732);
          v36 = *v7++;
          *v35 = vaddq_s16(*v35, vsubhn_high_s32(vsubhn_s32(vmull_s16(*v36.i8, *v33.i8), vmull_s16(*v35->i8, *v33.i8)), vmull_high_s16(v36, v33), vmull_high_s16(*v35, v33)));
          v34 -= 8;
        }

        while (v34);
        if (v32 == v31)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v32 = 0;
      }

      v37 = v31 - v32;
      v38 = &a1[2 * v32 + 2344];
      do
      {
        *(v38 + 866) += (16348 * (*v38 - *(v38 + 866))) >> 16;
        v38 += 2;
        --v37;
      }

      while (v37);
    }

LABEL_29:
    v39 = *(a1 + 581);
    if (v39 < 1)
    {
      v43 = a2;
      v41 = 0;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = a2;
      do
      {
        if (*(a2 + 16 + 4 * v40) > v42)
        {
          v42 = *(a2 + 16 + 4 * v40);
          v41 = v40;
        }

        ++v40;
      }

      while (v39 != v40);
    }

    memmove(&v8[*(a1 + 583)], v8, 4 * *(a1 + 583) * (v39 - 1));
    a1 = memcpy(v8, &v6[4 * *(v6 + 583) * v41 + 4], 4 * *(v6 + 583));
    v44 = *(v6 + 581);
    if (v44 >= 1)
    {
      v45 = (v43 + 16);
      v46 = *(v6 + 1043);
      do
      {
        v46 += (4634 * (*v45 - v46)) >> 16;
        *(v6 + 1043) = v46;
        v48 = *v45++;
        v47 = v48;
        if (v48 < ((46396 * v46) >> 16))
        {
          v46 = v47;
        }

        *(v6 + 1043) = v46;
        --v44;
      }

      while (v44);
    }
  }

  if (*(v6 + 1046))
  {
    goto LABEL_42;
  }

  v103 = 4 * *(v6 + 585);

  bzero(v6 + 4108, v103);
}

uint64_t *silk_encode_signs(uint64_t *result, uint64_t a2, int a3, int a4, int a5, int *a6)
{
  v14[1] = 0;
  v6 = ((a3 + 8) >> 4);
  if (v6 >= 1)
  {
    v8 = result;
    v9 = &silk_sign_iCDF + 8 * (((a5 << 16) + (a4 << 17)) >> 16) - (((a5 << 16) + (a4 << 17)) >> 16);
    v10 = (a2 + 7);
    do
    {
      v12 = *a6++;
      v11 = v12;
      if (v12 >= 1)
      {
        v13 = v11 & 0x1F;
        if (v13 >= 6)
        {
          v13 = 6;
        }

        v14[0] = v9[v13];
        if (*(v10 - 7))
        {
          result = ec_enc_icdf(v8, (*(v10 - 7) & 0x80) == 0, v14, 8);
        }

        if (*(v10 - 6))
        {
          result = ec_enc_icdf(v8, (*(v10 - 6) & 0x80) == 0, v14, 8);
        }

        if (*(v10 - 5))
        {
          result = ec_enc_icdf(v8, (*(v10 - 5) & 0x80) == 0, v14, 8);
        }

        if (*(v10 - 4))
        {
          result = ec_enc_icdf(v8, (*(v10 - 4) & 0x80) == 0, v14, 8);
        }

        if (*(v10 - 3))
        {
          result = ec_enc_icdf(v8, (*(v10 - 3) & 0x80) == 0, v14, 8);
        }

        if (*(v10 - 2))
        {
          result = ec_enc_icdf(v8, (*(v10 - 2) & 0x80) == 0, v14, 8);
        }

        if (*(v10 - 1))
        {
          result = ec_enc_icdf(v8, (*(v10 - 1) & 0x80) == 0, v14, 8);
        }

        if (*v10)
        {
          result = ec_enc_icdf(v8, (*v10 & 0x80) == 0, v14, 8);
        }

        if (v10[1])
        {
          result = ec_enc_icdf(v8, (v10[1] & 0x80) == 0, v14, 8);
        }

        if (v10[2])
        {
          result = ec_enc_icdf(v8, (v10[2] & 0x80) == 0, v14, 8);
        }

        if (v10[3])
        {
          result = ec_enc_icdf(v8, (v10[3] & 0x80) == 0, v14, 8);
        }

        if (v10[4])
        {
          result = ec_enc_icdf(v8, (v10[4] & 0x80) == 0, v14, 8);
        }

        if (v10[5])
        {
          result = ec_enc_icdf(v8, (v10[5] & 0x80) == 0, v14, 8);
        }

        if (v10[6])
        {
          result = ec_enc_icdf(v8, (v10[6] & 0x80) == 0, v14, 8);
        }

        if (v10[7])
        {
          result = ec_enc_icdf(v8, (v10[7] & 0x80) == 0, v14, 8);
        }

        if (v10[8])
        {
          result = ec_enc_icdf(v8, (v10[8] & 0x80) == 0, v14, 8);
        }
      }

      v10 += 16;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t *silk_decode_signs(uint64_t *result, __int16 *a2, int a3, int a4, int a5, uint64_t a6)
{
  v235[1] = 0;
  v6 = ((a3 + 8) >> 4);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &silk_sign_iCDF + 8 * (((a5 << 16) + (a4 << 17)) >> 16) - (((a5 << 16) + (a4 << 17)) >> 16);
    do
    {
      if (*(a6 + 4 * v7) >= 1)
      {
        v9 = *(a6 + 4 * v7) & 0x1F;
        if (v9 >= 6)
        {
          v9 = 6;
        }

        v235[0] = v8[v9];
        v10 = *a2;
        if (v10 >= 1)
        {
          v11 = 0;
          v13 = *(result + 8);
          v12 = *(result + 9);
          v14 = v13 >> 8;
          do
          {
            v15 = v13;
            v13 = v14 * v235[v11++];
            v16 = v12 - v13;
          }

          while (v12 < v13);
          v17 = v15 - v13;
          *(result + 8) = v17;
          *(result + 9) = v16;
          if (v17 < 0x800001)
          {
            v18 = *(result + 2);
            v19 = *(result + 11);
            v20 = *(result + 7);
            v21 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v21;
              *(result + 8) = v17 << 8;
              if (v20 < v18)
              {
                v22 = *result;
                *(result + 7) = v20 + 1;
                v23 = *(v22 + v20++);
              }

              else
              {
                v23 = 0;
              }

              v16 = (((v16 & 0x7FFFFF) << 8) | ((v23 | (v19 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v23;
              *(result + 9) = v16;
              v21 += 8;
              v19 = v23;
              v24 = v17 > 0x8000;
              v17 <<= 8;
            }

            while (!v24);
          }

          *a2 = (2 * (v11 - 1) - 1) * v10;
        }

        v25 = a2[1];
        if (v25 >= 1)
        {
          v26 = 0;
          v28 = *(result + 8);
          v27 = *(result + 9);
          v29 = v28 >> 8;
          do
          {
            v30 = v28;
            v28 = v29 * v235[v26++];
            v31 = v27 - v28;
          }

          while (v27 < v28);
          v32 = v30 - v28;
          *(result + 8) = v32;
          *(result + 9) = v31;
          if (v32 < 0x800001)
          {
            v33 = *(result + 2);
            v34 = *(result + 11);
            v35 = *(result + 7);
            v36 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v36;
              *(result + 8) = v32 << 8;
              if (v35 < v33)
              {
                v37 = *result;
                *(result + 7) = v35 + 1;
                v38 = *(v37 + v35++);
              }

              else
              {
                v38 = 0;
              }

              v31 = (((v31 & 0x7FFFFF) << 8) | ((v38 | (v34 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v38;
              *(result + 9) = v31;
              v36 += 8;
              v34 = v38;
              v24 = v32 > 0x8000;
              v32 <<= 8;
            }

            while (!v24);
          }

          a2[1] = (2 * (v26 - 1) - 1) * v25;
        }

        v39 = a2[2];
        if (v39 >= 1)
        {
          v40 = 0;
          v42 = *(result + 8);
          v41 = *(result + 9);
          v43 = v42 >> 8;
          do
          {
            v44 = v42;
            v42 = v43 * v235[v40++];
            v45 = v41 - v42;
          }

          while (v41 < v42);
          v46 = v44 - v42;
          *(result + 8) = v46;
          *(result + 9) = v45;
          if (v46 < 0x800001)
          {
            v47 = *(result + 2);
            v48 = *(result + 11);
            v49 = *(result + 7);
            v50 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v50;
              *(result + 8) = v46 << 8;
              if (v49 < v47)
              {
                v51 = *result;
                *(result + 7) = v49 + 1;
                v52 = *(v51 + v49++);
              }

              else
              {
                v52 = 0;
              }

              v45 = (((v45 & 0x7FFFFF) << 8) | ((v52 | (v48 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v52;
              *(result + 9) = v45;
              v50 += 8;
              v48 = v52;
              v24 = v46 > 0x8000;
              v46 <<= 8;
            }

            while (!v24);
          }

          a2[2] = (2 * (v40 - 1) - 1) * v39;
        }

        v53 = a2[3];
        if (v53 >= 1)
        {
          v54 = 0;
          v56 = *(result + 8);
          v55 = *(result + 9);
          v57 = v56 >> 8;
          do
          {
            v58 = v56;
            v56 = v57 * v235[v54++];
            v59 = v55 - v56;
          }

          while (v55 < v56);
          v60 = v58 - v56;
          *(result + 8) = v60;
          *(result + 9) = v59;
          if (v60 < 0x800001)
          {
            v61 = *(result + 2);
            v62 = *(result + 11);
            v63 = *(result + 7);
            v64 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v64;
              *(result + 8) = v60 << 8;
              if (v63 < v61)
              {
                v65 = *result;
                *(result + 7) = v63 + 1;
                v66 = *(v65 + v63++);
              }

              else
              {
                v66 = 0;
              }

              v59 = (((v59 & 0x7FFFFF) << 8) | ((v66 | (v62 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v66;
              *(result + 9) = v59;
              v64 += 8;
              v62 = v66;
              v24 = v60 > 0x8000;
              v60 <<= 8;
            }

            while (!v24);
          }

          a2[3] = (2 * (v54 - 1) - 1) * v53;
        }

        v67 = a2[4];
        if (v67 >= 1)
        {
          v68 = 0;
          v70 = *(result + 8);
          v69 = *(result + 9);
          v71 = v70 >> 8;
          do
          {
            v72 = v70;
            v70 = v71 * v235[v68++];
            v73 = v69 - v70;
          }

          while (v69 < v70);
          v74 = v72 - v70;
          *(result + 8) = v74;
          *(result + 9) = v73;
          if (v74 < 0x800001)
          {
            v75 = *(result + 2);
            v76 = *(result + 11);
            v77 = *(result + 7);
            v78 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v78;
              *(result + 8) = v74 << 8;
              if (v77 < v75)
              {
                v79 = *result;
                *(result + 7) = v77 + 1;
                v80 = *(v79 + v77++);
              }

              else
              {
                v80 = 0;
              }

              v73 = (((v73 & 0x7FFFFF) << 8) | ((v80 | (v76 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v80;
              *(result + 9) = v73;
              v78 += 8;
              v76 = v80;
              v24 = v74 > 0x8000;
              v74 <<= 8;
            }

            while (!v24);
          }

          a2[4] = (2 * (v68 - 1) - 1) * v67;
        }

        v81 = a2[5];
        if (v81 >= 1)
        {
          v82 = 0;
          v84 = *(result + 8);
          v83 = *(result + 9);
          v85 = v84 >> 8;
          do
          {
            v86 = v84;
            v84 = v85 * v235[v82++];
            v87 = v83 - v84;
          }

          while (v83 < v84);
          v88 = v86 - v84;
          *(result + 8) = v88;
          *(result + 9) = v87;
          if (v88 < 0x800001)
          {
            v89 = *(result + 2);
            v90 = *(result + 11);
            v91 = *(result + 7);
            v92 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v92;
              *(result + 8) = v88 << 8;
              if (v91 < v89)
              {
                v93 = *result;
                *(result + 7) = v91 + 1;
                v94 = *(v93 + v91++);
              }

              else
              {
                v94 = 0;
              }

              v87 = (((v87 & 0x7FFFFF) << 8) | ((v94 | (v90 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v94;
              *(result + 9) = v87;
              v92 += 8;
              v90 = v94;
              v24 = v88 > 0x8000;
              v88 <<= 8;
            }

            while (!v24);
          }

          a2[5] = (2 * (v82 - 1) - 1) * v81;
        }

        v95 = a2[6];
        if (v95 >= 1)
        {
          v96 = 0;
          v98 = *(result + 8);
          v97 = *(result + 9);
          v99 = v98 >> 8;
          do
          {
            v100 = v98;
            v98 = v99 * v235[v96++];
            v101 = v97 - v98;
          }

          while (v97 < v98);
          v102 = v100 - v98;
          *(result + 8) = v102;
          *(result + 9) = v101;
          if (v102 < 0x800001)
          {
            v103 = *(result + 2);
            v104 = *(result + 11);
            v105 = *(result + 7);
            v106 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v106;
              *(result + 8) = v102 << 8;
              if (v105 < v103)
              {
                v107 = *result;
                *(result + 7) = v105 + 1;
                v108 = *(v107 + v105++);
              }

              else
              {
                v108 = 0;
              }

              v101 = (((v101 & 0x7FFFFF) << 8) | ((v108 | (v104 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v108;
              *(result + 9) = v101;
              v106 += 8;
              v104 = v108;
              v24 = v102 > 0x8000;
              v102 <<= 8;
            }

            while (!v24);
          }

          a2[6] = (2 * (v96 - 1) - 1) * v95;
        }

        v109 = a2[7];
        if (v109 >= 1)
        {
          v110 = 0;
          v112 = *(result + 8);
          v111 = *(result + 9);
          v113 = v112 >> 8;
          do
          {
            v114 = v112;
            v112 = v113 * v235[v110++];
            v115 = v111 - v112;
          }

          while (v111 < v112);
          v116 = v114 - v112;
          *(result + 8) = v116;
          *(result + 9) = v115;
          if (v116 < 0x800001)
          {
            v117 = *(result + 2);
            v118 = *(result + 11);
            v119 = *(result + 7);
            v120 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v120;
              *(result + 8) = v116 << 8;
              if (v119 < v117)
              {
                v121 = *result;
                *(result + 7) = v119 + 1;
                v122 = *(v121 + v119++);
              }

              else
              {
                v122 = 0;
              }

              v115 = (((v115 & 0x7FFFFF) << 8) | ((v122 | (v118 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v122;
              *(result + 9) = v115;
              v120 += 8;
              v118 = v122;
              v24 = v116 > 0x8000;
              v116 <<= 8;
            }

            while (!v24);
          }

          a2[7] = (2 * (v110 - 1) - 1) * v109;
        }

        v123 = a2[8];
        if (v123 >= 1)
        {
          v124 = 0;
          v126 = *(result + 8);
          v125 = *(result + 9);
          v127 = v126 >> 8;
          do
          {
            v128 = v126;
            v126 = v127 * v235[v124++];
            v129 = v125 - v126;
          }

          while (v125 < v126);
          v130 = v128 - v126;
          *(result + 8) = v130;
          *(result + 9) = v129;
          if (v130 < 0x800001)
          {
            v131 = *(result + 2);
            v132 = *(result + 11);
            v133 = *(result + 7);
            v134 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v134;
              *(result + 8) = v130 << 8;
              if (v133 < v131)
              {
                v135 = *result;
                *(result + 7) = v133 + 1;
                v136 = *(v135 + v133++);
              }

              else
              {
                v136 = 0;
              }

              v129 = (((v129 & 0x7FFFFF) << 8) | ((v136 | (v132 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v136;
              *(result + 9) = v129;
              v134 += 8;
              v132 = v136;
              v24 = v130 > 0x8000;
              v130 <<= 8;
            }

            while (!v24);
          }

          a2[8] = (2 * (v124 - 1) - 1) * v123;
        }

        v137 = a2[9];
        if (v137 >= 1)
        {
          v138 = 0;
          v140 = *(result + 8);
          v139 = *(result + 9);
          v141 = v140 >> 8;
          do
          {
            v142 = v140;
            v140 = v141 * v235[v138++];
            v143 = v139 - v140;
          }

          while (v139 < v140);
          v144 = v142 - v140;
          *(result + 8) = v144;
          *(result + 9) = v143;
          if (v144 < 0x800001)
          {
            v145 = *(result + 2);
            v146 = *(result + 11);
            v147 = *(result + 7);
            v148 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v148;
              *(result + 8) = v144 << 8;
              if (v147 < v145)
              {
                v149 = *result;
                *(result + 7) = v147 + 1;
                v150 = *(v149 + v147++);
              }

              else
              {
                v150 = 0;
              }

              v143 = (((v143 & 0x7FFFFF) << 8) | ((v150 | (v146 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v150;
              *(result + 9) = v143;
              v148 += 8;
              v146 = v150;
              v24 = v144 > 0x8000;
              v144 <<= 8;
            }

            while (!v24);
          }

          a2[9] = (2 * (v138 - 1) - 1) * v137;
        }

        v151 = a2[10];
        if (v151 >= 1)
        {
          v152 = 0;
          v154 = *(result + 8);
          v153 = *(result + 9);
          v155 = v154 >> 8;
          do
          {
            v156 = v154;
            v154 = v155 * v235[v152++];
            v157 = v153 - v154;
          }

          while (v153 < v154);
          v158 = v156 - v154;
          *(result + 8) = v158;
          *(result + 9) = v157;
          if (v158 < 0x800001)
          {
            v159 = *(result + 2);
            v160 = *(result + 11);
            v161 = *(result + 7);
            v162 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v162;
              *(result + 8) = v158 << 8;
              if (v161 < v159)
              {
                v163 = *result;
                *(result + 7) = v161 + 1;
                v164 = *(v163 + v161++);
              }

              else
              {
                v164 = 0;
              }

              v157 = (((v157 & 0x7FFFFF) << 8) | ((v164 | (v160 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v164;
              *(result + 9) = v157;
              v162 += 8;
              v160 = v164;
              v24 = v158 > 0x8000;
              v158 <<= 8;
            }

            while (!v24);
          }

          a2[10] = (2 * (v152 - 1) - 1) * v151;
        }

        v165 = a2[11];
        if (v165 >= 1)
        {
          v166 = 0;
          v168 = *(result + 8);
          v167 = *(result + 9);
          v169 = v168 >> 8;
          do
          {
            v170 = v168;
            v168 = v169 * v235[v166++];
            v171 = v167 - v168;
          }

          while (v167 < v168);
          v172 = v170 - v168;
          *(result + 8) = v172;
          *(result + 9) = v171;
          if (v172 < 0x800001)
          {
            v173 = *(result + 2);
            v174 = *(result + 11);
            v175 = *(result + 7);
            v176 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v176;
              *(result + 8) = v172 << 8;
              if (v175 < v173)
              {
                v177 = *result;
                *(result + 7) = v175 + 1;
                v178 = *(v177 + v175++);
              }

              else
              {
                v178 = 0;
              }

              v171 = (((v171 & 0x7FFFFF) << 8) | ((v178 | (v174 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v178;
              *(result + 9) = v171;
              v176 += 8;
              v174 = v178;
              v24 = v172 > 0x8000;
              v172 <<= 8;
            }

            while (!v24);
          }

          a2[11] = (2 * (v166 - 1) - 1) * v165;
        }

        v179 = a2[12];
        if (v179 >= 1)
        {
          v180 = 0;
          v182 = *(result + 8);
          v181 = *(result + 9);
          v183 = v182 >> 8;
          do
          {
            v184 = v182;
            v182 = v183 * v235[v180++];
            v185 = v181 - v182;
          }

          while (v181 < v182);
          v186 = v184 - v182;
          *(result + 8) = v186;
          *(result + 9) = v185;
          if (v186 < 0x800001)
          {
            v187 = *(result + 2);
            v188 = *(result + 11);
            v189 = *(result + 7);
            v190 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v190;
              *(result + 8) = v186 << 8;
              if (v189 < v187)
              {
                v191 = *result;
                *(result + 7) = v189 + 1;
                v192 = *(v191 + v189++);
              }

              else
              {
                v192 = 0;
              }

              v185 = (((v185 & 0x7FFFFF) << 8) | ((v192 | (v188 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v192;
              *(result + 9) = v185;
              v190 += 8;
              v188 = v192;
              v24 = v186 > 0x8000;
              v186 <<= 8;
            }

            while (!v24);
          }

          a2[12] = (2 * (v180 - 1) - 1) * v179;
        }

        v193 = a2[13];
        if (v193 >= 1)
        {
          v194 = 0;
          v196 = *(result + 8);
          v195 = *(result + 9);
          v197 = v196 >> 8;
          do
          {
            v198 = v196;
            v196 = v197 * v235[v194++];
            v199 = v195 - v196;
          }

          while (v195 < v196);
          v200 = v198 - v196;
          *(result + 8) = v200;
          *(result + 9) = v199;
          if (v200 < 0x800001)
          {
            v201 = *(result + 2);
            v202 = *(result + 11);
            v203 = *(result + 7);
            v204 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v204;
              *(result + 8) = v200 << 8;
              if (v203 < v201)
              {
                v205 = *result;
                *(result + 7) = v203 + 1;
                v206 = *(v205 + v203++);
              }

              else
              {
                v206 = 0;
              }

              v199 = (((v199 & 0x7FFFFF) << 8) | ((v206 | (v202 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v206;
              *(result + 9) = v199;
              v204 += 8;
              v202 = v206;
              v24 = v200 > 0x8000;
              v200 <<= 8;
            }

            while (!v24);
          }

          a2[13] = (2 * (v194 - 1) - 1) * v193;
        }

        v207 = a2[14];
        if (v207 >= 1)
        {
          v208 = 0;
          v210 = *(result + 8);
          v209 = *(result + 9);
          v211 = v210 >> 8;
          do
          {
            v212 = v210;
            v210 = v211 * v235[v208++];
            v213 = v209 - v210;
          }

          while (v209 < v210);
          v214 = v212 - v210;
          *(result + 8) = v214;
          *(result + 9) = v213;
          if (v214 < 0x800001)
          {
            v215 = *(result + 2);
            v216 = *(result + 11);
            v217 = *(result + 7);
            v218 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v218;
              *(result + 8) = v214 << 8;
              if (v217 < v215)
              {
                v219 = *result;
                *(result + 7) = v217 + 1;
                v220 = *(v219 + v217++);
              }

              else
              {
                v220 = 0;
              }

              v213 = (((v213 & 0x7FFFFF) << 8) | ((v220 | (v216 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v220;
              *(result + 9) = v213;
              v218 += 8;
              v216 = v220;
              v24 = v214 > 0x8000;
              v214 <<= 8;
            }

            while (!v24);
          }

          a2[14] = (2 * (v208 - 1) - 1) * v207;
        }

        v221 = a2[15];
        if (v221 >= 1)
        {
          v222 = 0;
          v224 = *(result + 8);
          v223 = *(result + 9);
          v225 = v224 >> 8;
          do
          {
            v226 = v224;
            v224 = v225 * v235[v222++];
            v227 = v223 - v224;
          }

          while (v223 < v224);
          v228 = v226 - v224;
          *(result + 8) = v228;
          *(result + 9) = v227;
          if (v228 < 0x800001)
          {
            v229 = *(result + 2);
            v230 = *(result + 11);
            v231 = *(result + 7);
            v232 = *(result + 6) + 8;
            do
            {
              *(result + 6) = v232;
              *(result + 8) = v228 << 8;
              if (v231 < v229)
              {
                v233 = *result;
                *(result + 7) = v231 + 1;
                v234 = *(v233 + v231++);
              }

              else
              {
                v234 = 0;
              }

              v227 = (((v227 & 0x7FFFFF) << 8) | ((v234 | (v230 << 8)) >> 1)) ^ 0xFF;
              *(result + 11) = v234;
              *(result + 9) = v227;
              v232 += 8;
              v230 = v234;
              v24 = v228 > 0x8000;
              v228 <<= 8;
            }

            while (!v24);
          }

          a2[15] = (2 * (v222 - 1) - 1) * v221;
        }
      }

      a2 += 16;
      ++v7;
    }

    while (v7 != v6);
  }

  return result;
}

uint64_t silk_control_audio_bandwidth(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 4576);
  if (result)
  {
    if (result << 16)
    {
      goto LABEL_3;
    }

LABEL_17:
    v14 = *(a1 + 4572);
    v13 = *(a1 + 4556);
    if (v14 < v13)
    {
      v13 = v14;
    }

    return (v13 / 1000);
  }

  result = *(a1 + 32);
  if (!(result << 16))
  {
    goto LABEL_17;
  }

LABEL_3:
  v4 = 1000 * result;
  v5 = *(a1 + 4556);
  v6 = *(a1 + 4564);
  v7 = *(a1 + 4568);
  if (v4 <= v5)
  {
    v10 = __OFSUB__(v4, v6);
    v8 = v4 == v6;
    v9 = v4 - v6 < 0;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v9 = 0;
  }

  if (v9 ^ v10 | v8)
  {
    v12 = __OFSUB__(v4, v7);
    v11 = v4 - v7 < 0;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  if (v11 != v12)
  {
    if (v5 >= v6)
    {
      v13 = *(a1 + 4564);
    }

    else
    {
      v13 = *(a1 + 4556);
    }

    if (v13 <= v7)
    {
      v13 = v7;
    }

    return (v13 / 1000);
  }

  v15 = *(a1 + 24);
  if (v15 >= 256)
  {
    *(a1 + 28) = 0;
  }

  if (*(a1 + 4536) || a2[16])
  {
    v16 = *(a1 + 4572);
    if (v4 <= v16)
    {
      if (v4 >= v16)
      {
        if ((*(a1 + 28) & 0x80000000) == 0)
        {
          return result;
        }
      }

      else
      {
        if (a2[16])
        {
          if (result == 8)
          {
            result = 12;
          }

          else
          {
            result = 16;
          }

          *(a1 + 16) = 0;
          *(a1 + 24) = 0x100000000;
          return result;
        }

        if (!*(a1 + 28))
        {
LABEL_44:
          a2[22] = 1;
          a2[14] -= 5 * a2[14] / (a2[6] + 5);
          return result;
        }
      }

      *(a1 + 28) = 1;
      return result;
    }

    if (*(a1 + 28))
    {
      if (!a2[16])
      {
        if (v15 <= 0)
        {
          goto LABEL_44;
        }

LABEL_41:
        *(a1 + 28) = -2;
        return result;
      }
    }

    else
    {
      *(a1 + 24) = 256;
      *(a1 + 16) = 0;
      if (!a2[16])
      {
        goto LABEL_41;
      }
    }

    *(a1 + 28) = 0;
    if (result == 16)
    {
      return 12;
    }

    else
    {
      return 8;
    }
  }

  return result;
}

uint64_t silk_control_encoder(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v8 = *(a2 + 52);
  *(a1 + 6096) = *(a2 + 48);
  *(a1 + 4676) = v8;
  v9 = *(a2 + 8);
  *(a1 + 4556) = v9;
  *(a1 + 4564) = *(a2 + 12);
  *(a1 + 4572) = *(a2 + 20);
  *(a1 + 6108) = *(a2 + 40);
  *(a1 + 5768) = *a2;
  *(a1 + 4536) = a3;
  *(a1 + 5776) = a4;
  if (!*(a1 + 4668) || *(a1 + 4680))
  {
    v10 = silk_control_audio_bandwidth(a1, a2);
    if (a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = v10;
    }

    v13 = silk_setup_resamplers(a1, v12, v11);
    v14 = *(a2 + 24);
    if (*(a1 + 4612) == v14)
    {
      v15 = 0;
      v16 = a1 + 4096;
      v17 = 5 * v12;
      if (*(a1 + 4576) != v12)
      {
        goto LABEL_8;
      }

LABEL_50:
      v30 = *(a2 + 36);
      if (v30 <= 0)
      {
LABEL_40:
        *(a1 + 4644) = 0;
        *(a1 + 4652) = 52429;
        v31 = 3 * v12;
        *(a1 + 4600) = 3 * v12;
        *(a1 + 4628) = 1;
        *(a1 + 4632) = 0xC00000000;
LABEL_57:
        *(a1 + 4660) = 2;
        *(a1 + 4672) = 0;
        v34 = 6;
        goto LABEL_58;
      }

LABEL_51:
      if (v30 == 1)
      {
        *(a1 + 4644) = 1;
        *(a1 + 4652) = 49807;
        *(a1 + 4600) = v17;
        *(a1 + 4628) = 1;
        *(a1 + 4632) = 0xE00000000;
        v33 = 3;
      }

      else
      {
        if (v30 <= 2)
        {
          *(a1 + 4644) = 0;
          *(a1 + 4648) = 0xCCCD00000006;
          v31 = 3 * v12;
          *(a1 + 4600) = 3 * v12;
          *(a1 + 4628) = 2;
          *(a1 + 4632) = 0xC00000000;
          goto LABEL_57;
        }

        if (v30 != 3)
        {
          if (v30 > 5)
          {
            v39 = 983 * v12;
            if (v30 > 7)
            {
              *(a1 + 4644) = 2;
              *(a1 + 4648) = 0xB33300000010;
              *(a1 + 4600) = v17;
              *(a1 + 4628) = 4;
              *(a1 + 4632) = 0x1800000001;
              v34 = 16;
              *(a1 + 4660) = 16;
              *(a1 + 4672) = v39;
            }

            else
            {
              *(a1 + 4652) = 47186;
              *(v16 + 548) = 0xC00000001;
              *(a1 + 4636) = 20;
              *(a1 + 4600) = v17;
              *(v16 + 532) = 0x100000003;
              *(a1 + 4660) = 8;
              *(a1 + 4672) = v39;
              v34 = 12;
            }
          }

          else
          {
            *(a1 + 4644) = 1;
            *(a1 + 4648) = 0xBD710000000ALL;
            *(a1 + 4600) = v17;
            *(a1 + 4628) = 2;
            *(a1 + 4632) = 0x1000000001;
            *(a1 + 4660) = 6;
            *(a1 + 4672) = 983 * v12;
            v34 = 10;
          }

          goto LABEL_54;
        }

        *(a1 + 4644) = 1;
        *(a1 + 4648) = 0xC28F00000008;
        *(a1 + 4600) = v17;
        *(a1 + 4628) = 2;
        *(a1 + 4632) = 0xE00000000;
        v33 = 4;
      }

      *(a1 + 4660) = v33;
      *(a1 + 4672) = 0;
      v34 = 8;
LABEL_54:
      v31 = v17;
LABEL_58:
      result = (v15 + v13);
      if (v34 >= *(a1 + 4640))
      {
        v34 = *(a1 + 4640);
      }

      *(a1 + 4648) = v34;
      *(a1 + 4604) = v17 + 2 * v31;
      *(a1 + 4624) = v30;
      v35 = *(a2 + 32);
      *(a1 + 4616) = v35;
      v36 = *(a2 + 44);
      v37 = *(a1 + 6112);
      *(a1 + 6112) = v36;
      if (v36)
      {
        v38 = 7;
        if (v37)
        {
          v38 = 7 - ((13107 * v35) >> 16);
          if (v38 <= 3)
          {
            v38 = 3;
          }
        }

        *(a1 + 6116) = v38;
      }

      *(a1 + 4668) = 1;
      return result;
    }

    if (v14 <= 0x3C && ((1 << v14) & 0x1000010000100400) != 0)
    {
      v15 = 0;
      v22 = v14 == 10;
      if (v14 <= 10)
      {
LABEL_15:
        *(a1 + 5760) = 1;
        if (v22)
        {
          v23 = 2;
        }

        else
        {
          v23 = 1;
        }

        *(a1 + 4580) = v23;
        *(a1 + 4584) = v14 * v12;
        *(a1 + 4548) = 14 * v12;
        v24 = *(a1 + 4576);
        if (v24 == 8)
        {
          v25 = &silk_pitch_contour_10_ms_NB_iCDF;
          goto LABEL_46;
        }

        v32 = &silk_pitch_contour_10_ms_iCDF;
        goto LABEL_49;
      }
    }

    else
    {
      v15 = -103;
      v22 = v14 == 10;
      if (v14 <= 10)
      {
        goto LABEL_15;
      }
    }

    *(a1 + 5760) = v14 / 0x14u;
    *(a1 + 4580) = 4;
    *(a1 + 4584) = 20 * v12;
    *(a1 + 4548) = 24 * v12;
    v24 = *(a1 + 4576);
    if (v24 == 8)
    {
      v25 = &silk_pitch_contour_NB_iCDF;
LABEL_46:
      *(a1 + 4696) = v25;
      *(a1 + 4612) = v14;
      *(a1 + 4608) = 0;
      v16 = a1 + 4096;
      v17 = 5 * v12;
      if (v12 == 8)
      {
        goto LABEL_50;
      }

      goto LABEL_8;
    }

    v32 = &silk_pitch_contour_iCDF;
LABEL_49:
    *(a1 + 4696) = v32;
    *(a1 + 4612) = v14;
    *(a1 + 4608) = 0;
    v16 = a1 + 4096;
    v17 = 5 * v12;
    if (v24 == v12)
    {
      goto LABEL_50;
    }

LABEL_8:
    *(v16 + 3104) = 0;
    *(v16 + 3096) = 0;
    bzero((a1 + 148), 0x1100uLL);
    *(a1 + 4500) = 0u;
    *(a1 + 4516) = 0u;
    *(a1 + 16) = 0;
    *(a1 + 5756) = 0;
    *(a1 + 5764) = 0;
    *(a1 + 4608) = 0;
    *(a1 + 4544) = 100;
    *(a1 + 4664) = 1;
    *(v16 + 3096) = 10;
    *(a1 + 4476) = 100;
    *(a1 + 4492) = 0x10000;
    *(v16 + 445) = 0;
    *(a1 + 4576) = v12;
    v18 = *(a1 + 4580);
    if (v12 == 8)
    {
      v19 = &silk_pitch_contour_10_ms_NB_iCDF;
      if (v18 == 4)
      {
        v19 = &silk_pitch_contour_NB_iCDF;
      }

      v20 = &silk_NLSF_CB_NB_MB;
      v21 = 10;
    }

    else
    {
      v19 = &silk_pitch_contour_10_ms_iCDF;
      if (v18 == 4)
      {
        v19 = &silk_pitch_contour_iCDF;
      }

      if (v12 == 12)
      {
        v21 = 10;
      }

      else
      {
        v21 = 16;
      }

      v20 = &silk_NLSF_CB_WB;
      if (v12 == 12)
      {
        v20 = &silk_NLSF_CB_NB_MB;
      }
    }

    *(a1 + 4696) = v19;
    *(a1 + 4640) = v21;
    *(a1 + 4704) = v20;
    *(a1 + 4588) = v17;
    *(a1 + 4584) = v18 * v17;
    *(a1 + 4592) = 20 * v12;
    *(a1 + 4596) = 2 * v12;
    *(a1 + 4552) = 18 * v12;
    if (v18 == 4)
    {
      v28 = 24;
    }

    else
    {
      v28 = 14;
    }

    *(a1 + 4548) = v28 * v12;
    v29 = silk_uniform4_iCDF;
    if (v12 == 12)
    {
      v29 = &silk_uniform6_iCDF;
    }

    if (v12 == 16)
    {
      v29 = silk_uniform8_iCDF;
    }

    *(a1 + 4688) = v29;
    v30 = *(a2 + 36);
    if (v30 <= 0)
    {
      goto LABEL_40;
    }

    goto LABEL_51;
  }

  if (v9 == *(a1 + 4560))
  {
    return 0;
  }

  v26 = *(a1 + 4576);
  if (v26 < 1)
  {
    return 0;
  }

  return silk_setup_resamplers(a1, v26, a3);
}

uint64_t silk_setup_resamplers(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v64 = *MEMORY[0x277D85DE8];
  v5 = a1[1144];
  if (v5 == a2 && a1[1140] == a1[1139])
  {
    result = 0;
    goto LABEL_34;
  }

  if (!v5)
  {
    result = silk_resampler_init((a1 + 1448), a1[1139], 1000 * a2, 1);
    goto LABEL_34;
  }

  v62[1] = v62;
  v7 = 10 * a1[1145] + 5;
  v8 = (v7 * v5);
  v62[0] = (v7 * a2);
  MEMORY[0x28223BE20](a1, a2, a3);
  v10 = v62 - v9;
  if (v8 >= 1)
  {
    if (v8 >= 8)
    {
      v11 = v8 & 7;
      v12 = &v10[2 * v8 - 16];
      v13 = &a1[v8 + 1793];
      v14.i64[0] = 0x7F0000007FLL;
      v14.i64[1] = 0x7F0000007FLL;
      v15.i64[0] = 0x7F0000007FLL;
      v15.i64[1] = 0x7F0000007FLL;
      v16.i64[0] = 0x8000800080008000;
      v16.i64[1] = 0x8000800080008000;
      v17 = v8 & 0x7FFFFFF8;
      do
      {
        v18 = *v13;
        v19 = v13[1];
        v13 -= 2;
        v20 = vrev64q_s32(v19);
        v21 = vextq_s8(v20, v20, 8uLL);
        v22 = vrev64q_s32(v18);
        v23 = vextq_s8(v22, v22, 8uLL);
        v24 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v21.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v21, v21, 8uLL)))));
        v25 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v23.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v23, v23, 8uLL)))));
        v26 = vuzp1q_s16(vcgtq_s32(v24, v14), vcgtq_s32(v25, v14));
        v27 = vrev64q_s16(vorrq_s8((*&v26 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vbicq_s8(vbslq_s8(vuzp1q_s16(vcgtq_s32(v15, v24), vcgtq_s32(v15, v25)), v16, vuzp1q_s16(v24, v25)), v26)));
        *v12-- = vextq_s8(v27, v27, 8uLL);
        v17 -= 8;
      }

      while (v17);
      if ((v8 & 0x7FFFFFF8) == v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = v8;
    }

    do
    {
      v28 = rintf(*&a1[v11 + 1800]);
      if (v28 >= -32768)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0x8000;
      }

      if (v28 < 0x8000)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0x7FFF;
      }

      *&v10[2 * v11 - 2] = v30;
      v31 = v11-- > 1;
    }

    while (v31);
  }

LABEL_19:
  v32 = silk_resampler_init(v63, 1000 * *(a1 + 2288), a1[1139], 0);
  v33 = v32;
  v34 = a1[1139] / 1000 * v7;
  MEMORY[0x28223BE20](v32, v35, v36);
  v38 = v62 - v37;
  v39 = silk_resampler(v63, (v62 - v37), v10, v8);
  v40 = v39 + v33 + silk_resampler_init((a1 + 1448), a1[1139], 1000 * v3, 1);
  result = v40 + silk_resampler(a1 + 1448, v10, v38, v34);
  v42 = v62[0];
  if (SLODWORD(v62[0]) < 1)
  {
    goto LABEL_34;
  }

  if (LODWORD(v62[0]) < 4)
  {
    v43 = v62[0];
    goto LABEL_33;
  }

  if (LODWORD(v62[0]) >= 0x10)
  {
    v44 = v62[0] & 0x7FFFFFF0;
    v45 = &v10[2 * v62[0] - 16];
    v46 = &a1[v62[0] + 1793];
    v47 = v44;
    do
    {
      v48 = vrev64q_s16(*v45);
      v49 = vextq_s8(v48, v48, 8uLL);
      v50 = vrev64q_s16(v45[-1]);
      v51 = vextq_s8(v50, v50, 8uLL);
      v52 = vcvtq_f32_s32(vmovl_high_s16(v49));
      v53 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v49.i8)));
      v54 = vrev64q_s32(v52);
      *v46 = vextq_s8(v54, v54, 8uLL);
      v46[1] = vextq_s8(v53, v53, 8uLL);
      v55 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v51.i8)));
      v41 = vextq_s8(v55, v55, 8uLL);
      v56 = vrev64q_s32(vcvtq_f32_s32(vmovl_high_s16(v51)));
      v46[-2] = vextq_s8(v56, v56, 8uLL);
      v46[-1] = v41;
      v45 -= 2;
      v46 -= 4;
      v47 -= 16;
    }

    while (v47);
    if (v44 == v42)
    {
      goto LABEL_34;
    }

    if ((v42 & 0xC) == 0)
    {
      v43 = v42 & 0xF;
      do
      {
LABEL_33:
        v41.i16[0] = *&v10[2 * v43 - 2];
        v41.i64[0] = vmovl_s16(*v41.i8).u64[0];
        *v41.i32 = v41.i32[0];
        a1[v43 + 1800] = v41.i32[0];
        v31 = v43-- > 1;
      }

      while (v31);
      goto LABEL_34;
    }
  }

  else
  {
    v44 = 0;
  }

  v43 = v42 & 3;
  v57 = &a1[v42 - v44 + 1797];
  v58 = &v10[2 * v42 - 8 + -2 * v44];
  v59 = v44 - (v42 & 0x7FFFFFFC);
  do
  {
    v60 = *v58--;
    v61 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(vrev64_s16(v60))));
    v41 = vextq_s8(v61, v61, 8uLL);
    *v57-- = v41;
    v59 += 4;
  }

  while (v59);
  if ((v42 & 0x7FFFFFFC) != v42)
  {
    goto LABEL_33;
  }

LABEL_34:
  a1[1140] = a1[1139];
  return result;
}

void silk_corrVector_FLP(uint64_t a1, float *a2, unint64_t a3, unsigned int a4, float *a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    v7 = (a1 + 4 * a4);
    if (a3 >= 4)
    {
      v8 = (a3 - 3);
      v9 = a3 & 0x7FFFFFFC;
      if (v9 == a3)
      {
        v10 = 0;
        v11 = 4;
        if (v8 > 4)
        {
          v11 = (a3 - 3);
        }

        v12 = ((v11 - 1) >> 2) + 1;
        v13 = a2 + 8;
        v14 = a1 + 4 * a4;
        v15 = (v14 + 28);
        v16 = v14 + 4;
        v17 = a2 + 2;
        while (1)
        {
          if (v8 >= 0xD)
          {
            v20 = 0.0;
            v21 = v15;
            v22 = v13;
            v23 = v12 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v24 = v21 - 8;
              v84 = vld4_f32(v24);
              v86 = vld4_f32(v21);
              v25 = v22 - 8;
              v88 = vld4_f32(v25);
              v90 = vld4_f32(v22);
              v26 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v84.val[1]), vcvtq_f64_f32(v88.val[1])), vcvtq_f64_f32(v88.val[0]), vcvtq_f64_f32(v84.val[0])), vcvtq_f64_f32(v88.val[2]), vcvtq_f64_f32(v84.val[2])), vcvtq_f64_f32(v88.val[3]), vcvtq_f64_f32(v84.val[3]));
              v27 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v86.val[1]), vcvtq_f64_f32(v90.val[1])), vcvtq_f64_f32(v90.val[0]), vcvtq_f64_f32(v86.val[0])), vcvtq_f64_f32(v90.val[2]), vcvtq_f64_f32(v86.val[2])), vcvtq_f64_f32(v90.val[3]), vcvtq_f64_f32(v86.val[3]));
              v20 = v20 + v26.f64[0] + v26.f64[1] + v27.f64[0] + v27.f64[1];
              v22 += 16;
              v21 += 16;
              v23 -= 4;
            }

            while (v23);
            v19 = 4 * (v12 & 0x7FFFFFFFFFFFFFFCLL);
            if (v12 == (v12 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_7;
            }
          }

          else
          {
            v19 = 0;
            v20 = 0.0;
          }

          v28 = (v16 + 4 * v19);
          v29 = &v17[v19];
          do
          {
            v30 = *(v28 - 1) * *(v29 - 1) + *(v28 - 2) * *(v29 - 2);
            v31 = *v28;
            v32 = v28[1];
            v28 += 4;
            v33 = *v29;
            v34 = v29[1];
            v29 += 4;
            v20 = v20 + v30 + v31 * v33 + v32 * v34;
            v19 += 4;
          }

          while (v19 < v8);
LABEL_7:
          v18 = v20;
          a5[v10++] = v18;
          --v15;
          v16 -= 4;
          if (v10 == v6)
          {
            return;
          }
        }
      }

      v39 = 0;
      v40 = a3;
      v41 = a3 - v9;
      v42 = 4;
      if (v8 > 4)
      {
        v42 = (a3 - 3);
      }

      v43 = ((v42 - 1) >> 2) + 1;
      v44 = a1 + 4 * a4;
      v45 = (v44 + 28);
      v46 = v44 + 4;
      v47 = 4 * ((a3 >> 2) & 0x1FFFFFFF);
      v48 = v44 + v47 * 4;
      v49 = &a2[v47 + 4];
      v50 = (v48 + 12);
      while (v8 >= 0xD)
      {
        v53 = 0.0;
        v54 = v45;
        v55 = a2 + 8;
        v56 = v43 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = v54 - 8;
          v85 = vld4_f32(v57);
          v87 = vld4_f32(v54);
          v58 = v55 - 8;
          v89 = vld4_f32(v58);
          v91 = vld4_f32(v55);
          v59 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v85.val[1]), vcvtq_f64_f32(v89.val[1])), vcvtq_f64_f32(v89.val[0]), vcvtq_f64_f32(v85.val[0])), vcvtq_f64_f32(v89.val[2]), vcvtq_f64_f32(v85.val[2])), vcvtq_f64_f32(v89.val[3]), vcvtq_f64_f32(v85.val[3]));
          v60 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v87.val[1]), vcvtq_f64_f32(v91.val[1])), vcvtq_f64_f32(v91.val[0]), vcvtq_f64_f32(v87.val[0])), vcvtq_f64_f32(v91.val[2]), vcvtq_f64_f32(v87.val[2])), vcvtq_f64_f32(v91.val[3]), vcvtq_f64_f32(v87.val[3]));
          v53 = v53 + v59.f64[0] + v59.f64[1] + v60.f64[0] + v60.f64[1];
          v55 += 16;
          v54 += 16;
          v56 -= 4;
        }

        while (v56);
        v52 = 4 * (v43 & 0x7FFFFFFFFFFFFFFCLL);
        if (v43 != (v43 & 0x7FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_31;
        }

LABEL_33:
        if (v41 >= 8)
        {
          v69 = v50;
          v70 = v49;
          v71 = v41 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v72 = v69[-1];
            v73 = vcvtq_f64_f32(*v72.f32);
            v74 = v70[-1];
            v75 = vmulq_f64(vcvt_hight_f64_f32(v72), vcvt_hight_f64_f32(v74));
            v76 = vmulq_f64(v73, vcvtq_f64_f32(*v74.f32));
            v77 = vmulq_f64(vcvt_hight_f64_f32(*v69), vcvt_hight_f64_f32(*v70));
            v78 = vmulq_f64(vcvtq_f64_f32(*v69->f32), vcvtq_f64_f32(*v70->f32));
            v53 = v53 + v76.f64[0] + v76.f64[1] + v75.f64[0] + v75.f64[1] + v78.f64[0] + v78.f64[1] + v77.f64[0] + v77.f64[1];
            v70 += 2;
            v69 += 2;
            v71 -= 8;
          }

          while (v71);
          v68 = (v41 & 0xFFFFFFFFFFFFFFF8) + v9;
          if (v41 == (v41 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v68 = v9;
        }

        v79 = v40 - v68;
        v80 = 4 * v68;
        v81 = &a2[v68];
        v82 = v80 - 4;
        do
        {
          v83 = *v81++;
          v53 = v53 + *(v7 + v82) * v83;
          v82 += 4;
          --v79;
        }

        while (v79);
LABEL_25:
        v51 = v53;
        a5[v39] = v51;
        --v7;
        ++v39;
        --v45;
        v46 -= 4;
        v50 = (v50 - 4);
        if (v39 == a4)
        {
          return;
        }
      }

      v52 = 0;
      v53 = 0.0;
LABEL_31:
      v61 = (v46 + 4 * v52);
      v62 = &a2[v52 + 2];
      do
      {
        v63 = *(v61 - 1) * *(v62 - 1) + *(v61 - 2) * *(v62 - 2);
        v64 = *v61;
        v65 = v61[1];
        v61 += 4;
        v66 = *v62;
        v67 = v62[1];
        v62 += 4;
        v53 = v53 + v63 + v64 * v66 + v65 * v67;
        v52 += 4;
      }

      while (v52 < v8);
      goto LABEL_33;
    }

    if (a3 < 1)
    {

      bzero(a5, 4 * a4);
    }

    else
    {
      v35 = (a1 + 4 * a4);
      do
      {
        v37 = *--v35;
        v38 = v37 * *a2 + 0.0;
        if (a3 != 1)
        {
          v38 = v38 + *v7 * a2[1];
          if (a3 != 2)
          {
            v38 = v38 + v7[1] * a2[2];
          }
        }

        v36 = v38;
        *a5++ = v36;
        v7 = v35;
        --v6;
      }

      while (v6);
    }
  }
}

uint64_t silk_corrMatrix_FLP(uint64_t result, int a2, int a3, float *a4)
{
  if (a2 >= 4)
  {
    v4 = (a2 - 3);
    v5 = 4;
    if (v4 > 4)
    {
      v5 = (a2 - 3);
    }

    if (v4 > 0xC)
    {
      v10 = ((v5 - 1) >> 2) + 1;
      v6 = 4 * (v10 & 0x7FFFFFFFFFFFFFFCLL);
      v11 = (result + 4 * a3 + 28);
      v7 = 0.0;
      v12 = v10 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = v11 - 8;
        v106 = vld4_f32(v13);
        v108 = vld4_f32(v11);
        v14 = vcvtq_f64_f32(v106.val[0]);
        v15 = vcvtq_f64_f32(v108.val[0]);
        v16 = vcvtq_f64_f32(v106.val[1]);
        v17 = vcvtq_f64_f32(v108.val[1]);
        v18 = vmlaq_f64(vmulq_f64(v16, v16), v14, v14);
        v19 = vmlaq_f64(vmulq_f64(v17, v17), v15, v15);
        v20 = vcvtq_f64_f32(v106.val[2]);
        v21 = vcvtq_f64_f32(v108.val[2]);
        *v106.val[0].f32 = vcvtq_f64_f32(v106.val[3]);
        *v106.val[1].f32 = vcvtq_f64_f32(v108.val[3]);
        v22 = vmlaq_f64(vmlaq_f64(v18, v20, v20), *v106.val[0].f32, *v106.val[0].f32);
        v23 = vmlaq_f64(vmlaq_f64(v19, v21, v21), *v106.val[1].f32, *v106.val[1].f32);
        v7 = v7 + v22.f64[0] + v22.f64[1] + v23.f64[0] + v23.f64[1];
        v11 += 16;
        v12 -= 4;
      }

      while (v12);
      if (v10 == (v10 & 0x7FFFFFFFFFFFFFFCLL))
      {
LABEL_13:
        LODWORD(v8) = a2 & 0x7FFFFFFC;
        v9 = a2;
        if ((a2 & 0x7FFFFFFC) >= a2)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0.0;
    }

    v24 = (4 * v6 + 4 * a3 + result + 4);
    do
    {
      v25 = *(v24 - 1) * *(v24 - 1) + *(v24 - 2) * *(v24 - 2);
      v26 = *v24;
      v27 = v24[1];
      v24 += 4;
      v7 = v7 + v25 + v26 * v26 + v27 * v27;
      v6 += 4;
    }

    while (v6 < v4);
    goto LABEL_13;
  }

  LODWORD(v8) = 0;
  v7 = 0.0;
  v9 = a2;
  if (a2 <= 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  v28 = v8;
  v29 = v9 - v8;
  if (v29 <= 7)
  {
    v8 = v8;
LABEL_19:
    v41 = v9 - v8;
    v42 = (4 * v8 + 4 * a3 + result - 4);
    do
    {
      v43 = *v42++;
      v7 = v7 + v43 * v43;
      --v41;
    }

    while (v41);
    goto LABEL_21;
  }

  v8 = (v29 & 0xFFFFFFFFFFFFFFF8) + v8;
  v30 = (4 * a3 + 4 * v28 + result + 12);
  v31 = v29 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v32 = *v30[-2].f32;
    v33 = vcvtq_f64_f32(*v32.f32);
    v34 = vcvt_hight_f64_f32(v32);
    v35 = vcvtq_f64_f32(*v30);
    v36 = vcvt_hight_f64_f32(*v30->f32);
    v37 = vmulq_f64(v34, v34);
    v38 = vmulq_f64(v33, v33);
    v39 = vmulq_f64(v36, v36);
    v40 = vmulq_f64(v35, v35);
    v7 = v7 + v38.f64[0] + v38.f64[1] + v37.f64[0] + v37.f64[1] + v40.f64[0] + v40.f64[1] + v39.f64[0] + v39.f64[1];
    v30 += 4;
    v31 -= 8;
  }

  while (v31);
  if (v29 != (v29 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_19;
  }

LABEL_21:
  v44 = v7;
  *a4 = v44;
  if (a3 >= 2)
  {
    v101 = result + 4 * a3;
    v45 = a3 - 1;
    v46 = (v101 - 8);
    v47 = a3 + 1;
    do
    {
      v7 = v7 + ((*v46 * *v46) - (v46[a2] * v46[a2]));
      v48 = v7;
      a4[v47] = v48;
      v47 += a3 + 1;
      --v46;
      --v45;
    }

    while (v45);
    v49 = v101 - 8;
    v50 = (a2 - 3);
    v105 = a2 & 0x7FFFFFFC;
    v51 = 4;
    if (v50 > 4)
    {
      v51 = (a2 - 3);
    }

    v100 = ((v51 - 1) >> 2) + 1;
    v52 = result + 4 * a3;
    v53 = v52 + 8;
    v102 = v52;
    v99 = v52 + 12;
    v54 = a3 - 1;
    v55 = a4 + 2;
    v56 = 2 * a3;
    v57 = 4 * a2;
    v58 = result - 12;
    v59 = result - 12 + v57;
    v104 = result - 8;
    v103 = result - 8 + v57;
    v60 = 1;
    v61 = 24;
    v62 = result + 4 * a3;
    while (1)
    {
      if (a2 < 4)
      {
        result = 0;
        v64 = 0.0;
        goto LABEL_38;
      }

      if (v50 < 0xD)
      {
        break;
      }

      v64 = 0.0;
      v65 = v100 & 0x7FFFFFFFFFFFFFFCLL;
      v66 = v101;
      do
      {
        v67 = (v66 - 4);
        v68 = (v66 + 28);
        v107 = vld4_f32(v67);
        v109 = vld4_f32(v68);
        v69 = (v66 + v61);
        v70 = (v66 + v61 - 32);
        v110 = vld4_f32(v70);
        v111 = vld4_f32(v69);
        v71 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v107.val[1]), vcvtq_f64_f32(v110.val[1])), vcvtq_f64_f32(v110.val[0]), vcvtq_f64_f32(v107.val[0])), vcvtq_f64_f32(v110.val[2]), vcvtq_f64_f32(v107.val[2])), vcvtq_f64_f32(v110.val[3]), vcvtq_f64_f32(v107.val[3]));
        v72 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v109.val[1]), vcvtq_f64_f32(v111.val[1])), vcvtq_f64_f32(v111.val[0]), vcvtq_f64_f32(v109.val[0])), vcvtq_f64_f32(v111.val[2]), vcvtq_f64_f32(v109.val[2])), vcvtq_f64_f32(v111.val[3]), vcvtq_f64_f32(v109.val[3]));
        v64 = v64 + v71.f64[0] + v71.f64[1] + v72.f64[0] + v72.f64[1];
        v66 += 64;
        v65 -= 4;
      }

      while (v65);
      v63 = 4 * (v100 & 0x7FFFFFFFFFFFFFFCLL);
      result = v105;
      if (v100 != (v100 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_35;
      }

LABEL_38:
      if (result < a2)
      {
        result = result;
        v78 = v9 - result;
        if (v78 > 7)
        {
          v79 = (v78 & 0xFFFFFFFFFFFFFFF8) + result;
          result = 4 * result;
          v80 = (v53 + result);
          v81 = (v99 + result);
          v82 = v78 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v83 = v81[-1];
            v84 = vcvtq_f64_f32(*v83.f32);
            v85 = v80[-1];
            v86 = vmulq_f64(vcvt_hight_f64_f32(v83), vcvt_hight_f64_f32(v85));
            v87 = vmulq_f64(v84, vcvtq_f64_f32(*v85.f32));
            v88 = vmulq_f64(vcvt_hight_f64_f32(*v81), vcvt_hight_f64_f32(*v80));
            v89 = vmulq_f64(vcvtq_f64_f32(*v81->f32), vcvtq_f64_f32(*v80->f32));
            v64 = v64 + v87.f64[0] + v87.f64[1] + v86.f64[0] + v86.f64[1] + v89.f64[0] + v89.f64[1] + v88.f64[0] + v88.f64[1];
            v80 += 2;
            v81 += 2;
            v82 -= 8;
          }

          while (v82);
          if (v78 == (v78 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_45;
          }
        }

        else
        {
          v79 = result;
        }

        do
        {
          v64 = v64 + *(v101 - 4 + 4 * v79) * *(v49 + 4 * v79);
          ++v79;
        }

        while (v9 != v79);
      }

LABEL_45:
      v90 = v64;
      a4[v60 * a3] = v90;
      a4[v60] = v90;
      if (v60 < a3 - 1)
      {
        v91 = v54 - 1;
        v92 = v103;
        v93 = v104;
        v94 = v58;
        v95 = v59;
        v96 = v56;
        result = (a4 + 1);
        v97 = v55;
        do
        {
          v64 = v64 + ((*(v93 + 4 * a3) * *(v94 + 4 * a3)) - (*(v92 + 4 * a3) * *(v95 + 4 * a3)));
          v98 = v64;
          *(result + 4 * v96) = v98;
          v97[a3] = v98;
          v97 += a3 + 1;
          result += 4;
          v96 += a3;
          v95 -= 4;
          v92 -= 4;
          v94 -= 4;
          v93 -= 4;
          --v91;
        }

        while (v91);
      }

      v49 -= 4;
      ++v60;
      v61 -= 4;
      v62 -= 4;
      v53 -= 4;
      --v54;
      ++v55;
      v56 += a3;
      v59 -= 4;
      v58 -= 4;
      if (v60 == a3)
      {
        return result;
      }
    }

    v63 = 0;
    v64 = 0.0;
LABEL_35:
    v73 = (v62 + 4 * v63);
    v74 = (v102 + 4 * v63);
    do
    {
      v75 = *v74 * *(v73 - 1) + *(v74 - 1) * *(v73 - 2);
      v76 = *v73;
      v77 = v73[1];
      v73 += 4;
      v64 = v64 + v75 + v74[1] * v76 + v74[2] * v77;
      v63 += 4;
      v74 += 4;
    }

    while (v63 < v50);
    result = v105;
    goto LABEL_38;
  }

  return result;
}

float decode_pulses(_DWORD *a1, int a2, int a3, uint64_t *a4)
{
  v4 = a3;
  if (a2 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(&X509_CERT_AUX_it.sname + v7);
  if (a2 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v8 + 4 * v9);
  if (a3 + 1 < a2)
  {
    v11 = a3 + 1;
  }

  else
  {
    v11 = a2;
  }

  v12 = *(&X509_CERT_AUX_it.sname + v11);
  if (a3 + 1 > a2)
  {
    v13 = a3 + 1;
  }

  else
  {
    v13 = a2;
  }

  v14 = ec_dec_uint(a4, *(v12 + 4 * v13) + v10);
  v15 = 0.0;
  if (a2 >= 3)
  {
    v16 = a2;
    do
    {
      if (v16 <= v4)
      {
        v31 = *(&X509_CERT_AUX_it.sname + v16);
        v17 = *(v31 + 4 * v4 + 4);
        if (v14 >= v17)
        {
          v32 = *(v31 + 4 * v4 + 4);
        }

        else
        {
          v32 = 0;
        }

        v33 = v14 - v32;
        if (*(v31 + 4 * v16) <= v33)
        {
          v37 = v4;
          v34 = v4 + 1;
          do
          {
            v36 = *(v31 + 4 * v37);
            v37 = v34 - 2;
            --v34;
          }

          while (v36 > v33);
        }

        else
        {
          v34 = v16;
          do
          {
            v35 = &X509_CERT_AUX_it.sname + v34--;
            v36 = *&(*(v35 - 1))[4 * v16];
          }

          while (v36 > v33);
        }

        v22 = v14 >= v17;
        v14 = v33 - v36;
        LOWORD(v17) = v4 - v34;
        if (v22)
        {
          LOWORD(v17) = v34 - v4;
        }

        v17 = v17;
        *a1 = v17;
        v15 = v15 + (v17 * v17);
        v4 = v34;
      }

      else
      {
        v19 = &X509_CERT_AUX_it.sname + v4;
        v20 = *&(*v19)[4 * v16];
        v21 = *&v19[1][4 * v16];
        v22 = v14 < v20 || v14 >= v21;
        if (v22)
        {
          v23 = 0;
          if (v14 >= v21)
          {
            v24 = *&v19[1][4 * v16];
          }

          else
          {
            v24 = 0;
          }

          v25 = v14 - v24;
          v26 = v19 - 1;
          do
          {
            v27 = *v26--;
            v28 = *(v27 + 4 * v16);
            ++v23;
            v22 = v25 >= v28;
            v29 = v25 - v28;
          }

          while (!v22);
          v4 -= v23;
          if (v14 < v21)
          {
            LOWORD(v30) = v23;
          }

          else
          {
            v30 = -v23;
          }

          v30 = v30;
          *a1 = v30;
          v15 = v15 + (v30 * v30);
          v14 = v29;
        }

        else
        {
          *a1 = 0;
          v14 -= v20;
        }
      }

      ++a1;
    }

    while (v16-- > 3);
  }

  v38 = 2 * v4;
  if (v14 > 2 * v4)
  {
    v39 = ~v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = v39 + v14;
  v41 = (v40 + 1) >> 1;
  v42 = v4 - v41;
  if (v14 > v38)
  {
    v42 = v41 - v4;
  }

  v43 = ((v40 + 1) & 0xFFFE) - 1;
  if (v40 + 1 < 2)
  {
    v43 = 0;
  }

  v44 = ((v41 - (v40 - v43)) ^ (v43 - v40));
  *a1 = v42;
  a1[1] = v44;
  return (v15 + (v42 * v42)) + (v44 * v44);
}

uint64_t silk_Decode(unint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6, int *a7, int a8, double a9, int32x4_t a10)
{
  LODWORD(v196) = a8;
  v194 = a7;
  v192 = a6;
  v193 = a3;
  v11 = a2;
  v12 = a1;
  v202 = *MEMORY[0x277D85DE8];
  v197 = 0;
  v200 = 0;
  v201 = 0;
  v199 = 0;
  v13 = *(a2 + 4);
  if (a4 && v13 >= 1)
  {
    if (v13 < 2)
    {
      v14 = 0;
LABEL_8:
      v17 = v13 - v14;
      v18 = (a1 + 4288 * v14 + 2400);
      do
      {
        *v18 = 0;
        v18 += 1072;
        --v17;
      }

      while (v17);
      goto LABEL_10;
    }

    v14 = v13 & 0x7FFFFFFE;
    v15 = v14;
    v16 = a1;
    do
    {
      *(v16 + 2400) = 0;
      *(v16 + 6688) = 0;
      v16 += 8576;
      v15 -= 2;
    }

    while (v15);
    if (v14 != v13)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v19 = (a1 + 6600);
  v20 = *(a1 + 8592);
  if (v13 > v20)
  {
    bzero((a1 + 4288), 0x10C0uLL);
    *(v12 + 6664) = 1;
    *(v12 + 4288) = 0x10000;
    *(v12 + 8480) = 0;
    v21 = *(v12 + 6628);
    if (v21 < 1)
    {
LABEL_27:
      *(v12 + 8460) = 0x30788000000000;
      *(v12 + 8484) = *(v12 + 6616) << 7;
      *(v12 + 8556) = 0x1000000010000;
      *&a9 = 0x1400000002;
      *(v12 + 8568) = 0x1400000002;
      LODWORD(v13) = v11[1];
      goto LABEL_28;
    }

    v22 = 0x7FFF / (v21 + 1);
    if (v21 < 4)
    {
      v23 = 0;
      v24 = 0;
      goto LABEL_25;
    }

    v25 = vdupq_n_s32(v22);
    if (v21 >= 0x10)
    {
      v23 = v21 & 0x7FFFFFF0;
      v27 = vmulq_s32(v25, xmmword_273B92360);
      v28 = vmulq_s32(v25, xmmword_273B90830);
      a10 = vdupq_n_s32(8 * v22);
      v26 = v22 * (v21 & 0x7FFFFFF0);
      v29 = (v19 + 445);
      v30 = v23;
      do
      {
        v31 = vaddq_s32(v27, a10);
        v32 = vaddq_s32(v28, a10);
        v29[-1] = vuzp1q_s16(vaddq_s32(v28, v25), vaddq_s32(v27, v25));
        *v29 = vuzp1q_s16(vaddq_s32(v32, v25), vaddq_s32(v31, v25));
        v28 = vaddq_s32(v32, a10);
        v27 = vaddq_s32(v31, a10);
        v29 += 2;
        v30 -= 16;
      }

      while (v30);
      if (v23 == v21)
      {
        goto LABEL_27;
      }

      if ((v21 & 0xC) == 0)
      {
        v24 = v22 * v23;
LABEL_25:
        v37 = v21 - v23;
        v38 = (v12 + 2 * v23 + 8364);
        v39 = v24 + v22;
        do
        {
          *v38++ = v39;
          v39 += v22;
          --v37;
        }

        while (v37);
        goto LABEL_27;
      }
    }

    else
    {
      v26 = 0;
      v23 = 0;
    }

    v33 = v23;
    v23 = v21 & 0x7FFFFFFC;
    v24 = v22 * (v21 & 0x7FFFFFFC);
    a10 = vmlaq_s32(vdupq_n_s32(v26), v25, xmmword_273B90830);
    v34 = vdupq_n_s32(4 * v22);
    v35 = (v12 + 2 * v33 + 8364);
    v36 = v33 - v23;
    do
    {
      *v35++ = vmovn_s32(vaddq_s32(a10, v25));
      a10 = vaddq_s32(a10, v34);
      v36 += 4;
    }

    while (v36);
    if (v23 == v21)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_28:
  v40 = 0;
  if (v20 == 2 && v13 == 1)
  {
    v40 = v11[3] == 1000 * *(v12 + 2316);
  }

  v191 = v40;
  v41 = 0;
  if (v13 >= 1 && !*(v12 + 2400))
  {
    v195 = v19;
    v42 = 0;
    LODWORD(v41) = 0;
    v43 = v12;
    do
    {
      v44 = v11[4];
      result = 4294967093;
      if (v44 <= 19)
      {
        if (v44)
        {
          v48 = v44 == 10;
        }

        else
        {
          v48 = 1;
        }

        if (!v48)
        {
          return result;
        }

        v46 = 2;
        v47 = 1;
      }

      else
      {
        switch(v44)
        {
          case 60:
            v46 = 4;
            v47 = 3;
            break;
          case 40:
            v46 = 4;
            v47 = 2;
            break;
          case 20:
            v46 = 4;
            v47 = 1;
            break;
          default:
            return result;
        }
      }

      *(v43 + 2404) = v47;
      *(v43 + 2324) = v46;
      v49 = v11[3] >> 10;
      if (v49 > 0xF || ((1 << v49) & 0x8880) == 0)
      {
        return 4294967096;
      }

      a1 = silk_decoder_set_fs(v43, v49 + 1, v11[2]);
      v41 = (a1 + v41);
      ++v42;
      v13 = v11[1];
      v43 += 4288;
    }

    while (v42 < v13);
    v19 = v195;
  }

  v51 = *v11;
  if (*v11 != 2)
  {
    goto LABEL_60;
  }

  if (v13 != 2)
  {
    goto LABEL_59;
  }

  if (*(v12 + 8588) != 1 && *(v12 + 8592) != 1)
  {
    LODWORD(v13) = 2;
LABEL_59:
    v51 = 2;
    goto LABEL_60;
  }

  *(v12 + 8576) = 0;
  *(v12 + 8584) = 0;
  a1 = memcpy((v12 + 6736), (v12 + 2448), 0x130uLL);
  v51 = *v11;
  LODWORD(v13) = v11[1];
LABEL_60:
  *(v12 + 8588) = v51;
  *(v12 + 8592) = v13;
  if ((v11[2] - 48001) < 0xFFFF63BF)
  {
    return 4294967096;
  }

  v195 = v11;
  if (v193 != 1 && !*(v12 + 2400))
  {
    if (v13 >= 1)
    {
      v52 = 0;
      do
      {
        v54 = v12 + 4288 * v52;
        v55 = *(v54 + 2404);
        if (v55 >= 1)
        {
          for (i = 0; i < v55; ++i)
          {
            v57 = *(a5 + 32);
            v58 = *(a5 + 36);
            v59 = v57 >> 1;
            v60 = v58;
            a2 = v58 - (v57 >> 1);
            if (v58 >= v57 >> 1)
            {
              *(a5 + 36) = a2;
              v60 = v58 - v59;
            }

            LODWORD(a1) = v57 - v59;
            if (v58 >= v59)
            {
              a1 = a1;
            }

            else
            {
              a1 = v59;
            }

            *(a5 + 32) = a1;
            if (a1 < 0x800001)
            {
              a2 = *(a5 + 8);
              v61 = *(a5 + 44);
              v62 = *(a5 + 28);
              LODWORD(a3) = *(a5 + 24) + 8;
              do
              {
                *(a5 + 24) = a3;
                *(a5 + 32) = a1 << 8;
                if (v62 < a2)
                {
                  v63 = *a5;
                  *(a5 + 28) = v62 + 1;
                  v64 = *(v63 + v62++);
                }

                else
                {
                  v64 = 0;
                }

                v60 = (((v60 & 0x7FFFFF) << 8) | ((v64 | (v61 << 8)) >> 1)) ^ 0xFF;
                *(a5 + 44) = v64;
                *(a5 + 36) = v60;
                a3 = (a3 + 8);
                v61 = v64;
                v65 = a1 > 0x8000;
                a1 = (a1 << 8);
              }

              while (!v65);
            }

            *(v54 + 2416 + 4 * i) = v58 < v59;
          }
        }

        v67 = *(a5 + 32);
        v66 = *(a5 + 36);
        v68 = v67 >> 1;
        v69 = v66;
        if (v66 >= v67 >> 1)
        {
          *(a5 + 36) = v66 - (v67 >> 1);
          v69 = v66 - v68;
        }

        v70 = v67 - v68;
        if (v66 < v68)
        {
          v70 = v68;
        }

        *(a5 + 32) = v70;
        if (v70 < 0x800001)
        {
          v71 = *(a5 + 8);
          LODWORD(a2) = *(a5 + 44);
          a1 = *(a5 + 28);
          v72 = *(a5 + 24) + 8;
          do
          {
            *(a5 + 24) = v72;
            a3 = v70 << 8;
            *(a5 + 32) = a3;
            if (a1 < v71)
            {
              v73 = *a5;
              *(a5 + 28) = a1 + 1;
              v74 = *(v73 + a1++);
            }

            else
            {
              v74 = 0;
            }

            v69 = (((v69 & 0x7FFFFF) << 8) | ((v74 | (a2 << 8)) >> 1)) ^ 0xFF;
            *(a5 + 44) = v74;
            *(a5 + 36) = v69;
            v72 += 8;
            a2 = v74;
            v65 = v70 > 0x8000;
            v70 <<= 8;
          }

          while (!v65);
        }

        *(v54 + 2428) = v66 < v68;
        ++v52;
        v53 = v11[1];
      }

      while (v52 < v53);
      LODWORD(v13) = v11[1];
      if (v53 >= 1)
      {
        v75 = 0;
        v76 = (v12 + 2448);
        v77 = v12 + 2432;
        *&a9 = 0x100000000;
        a10.i64[0] = 0x300000003;
        a10.i64[1] = 0x300000003;
        v78.i64[0] = 0x100000001;
        v78.i64[1] = 0x100000001;
        v79.i64[0] = 0x800000008;
        v79.i64[1] = 0x800000008;
        while (1)
        {
          v80 = v12 + 4288 * v75;
          *(v80 + 2440) = 0;
          *(v80 + 2432) = 0;
          if (*(v80 + 2428))
          {
            v81 = *(v80 + 2404);
            if (v81 == 1)
            {
              *(v80 + 2432) = 1;
            }

            else
            {
              v82 = 0;
              LODWORD(a2) = *(a5 + 32);
              a3 = *(a5 + 36);
              v83 = a2 >> 8;
              do
              {
                v84 = a2;
                a2 = v83 * *(*(&silk_LBRR_flags_iCDF_ptr + v81 - 2) + v82++);
                v85 = a3 - a2;
              }

              while (a3 < a2);
              a1 = (v84 - a2);
              *(a5 + 32) = a1;
              *(a5 + 36) = v85;
              if (a1 < 0x800001)
              {
                a2 = *(a5 + 8);
                v86 = *(a5 + 44);
                v87 = *(a5 + 28);
                LODWORD(a3) = *(a5 + 24) + 8;
                do
                {
                  *(a5 + 24) = a3;
                  *(a5 + 32) = a1 << 8;
                  if (v87 < a2)
                  {
                    v88 = *a5;
                    *(a5 + 28) = v87 + 1;
                    v89 = *(v88 + v87++);
                  }

                  else
                  {
                    v89 = 0;
                  }

                  v85 = (((v85 & 0x7FFFFF) << 8) | ((v89 | (v86 << 8)) >> 1)) ^ 0xFF;
                  *(a5 + 44) = v89;
                  *(a5 + 36) = v85;
                  a3 = (a3 + 8);
                  v86 = v89;
                  v65 = a1 > 0x8000;
                  a1 = (a1 << 8);
                }

                while (!v65);
              }

              if (v81 < 1)
              {
                goto LABEL_95;
              }

              if (v81 >= 8)
              {
                v90 = v81 & 0x7FFFFFF8;
                v91 = vdupq_n_s32(v82);
                a1 = v90;
                a2 = v76;
                v92 = xmmword_273B90830;
                do
                {
                  *(a2 - 16) = vandq_s8(vshlq_u32(v91, vnegq_s32(v92)), v78);
                  *a2 = vandq_s8(vshlq_u32(v91, vsubq_s32(a10, v92)), v78);
                  v92 = vaddq_s32(v92, v79);
                  a2 += 32;
                  a1 -= 8;
                }

                while (a1);
                if (v90 == v81)
                {
                  goto LABEL_95;
                }
              }

              else
              {
                v90 = 0;
              }

              do
              {
                a1 = (v82 >> v90) & 1;
                *(v77 + 4 * v90++) = a1;
              }

              while (v81 != v90);
            }
          }

LABEL_95:
          ++v75;
          v76 += 268;
          v77 += 4288;
          if (v75 >= v11[1])
          {
            LODWORD(v13) = v11[1];
            break;
          }
        }
      }
    }

    if (!v193 && *(v12 + 2404) >= 1)
    {
      if (v13 < 1)
      {
        goto LABEL_133;
      }

      v180 = 0;
      v181 = 0;
      v188 = (v12 + 6720);
      v189 = (v12 + 4288);
      v190 = (v12 + 2432);
      do
      {
        if (v13 >= 1)
        {
          if (v181)
          {
            if (v190[v181])
            {
              if (v13 == 2)
              {
                silk_stereo_decode_pred(a5, &v199);
                if (!v188[v181])
                {
                  silk_stereo_decode_mid_only(a5, &v197 + 1);
                }
              }

              silk_decode_indices(v12, a5, v181, 1, 2 * (v190[v181 - 1] != 0), a9, a10);
              a1 = silk_decode_pulses(a5, v198, *(v12 + 2789), *(v12 + 2790), *(v12 + 2328));
              LODWORD(v13) = v11[1];
            }

            if (v13 >= 2)
            {
              v182 = v189;
              v183 = 1;
              do
              {
                if (*(v182 + v180 + 2432))
                {
                  silk_decode_indices(v182, a5, v181, 1, 2 * (*(v182 + v180 + 2428) != 0), a9, a10);
                  a1 = silk_decode_pulses(a5, v198, *(v182 + 2789), *(v182 + 2790), *(v182 + 2328));
                  LODWORD(v13) = v195[1];
                }

                ++v183;
                v182 += 4288;
              }

              while (v183 < v13);
            }
          }

          else
          {
            if (*v190)
            {
              if (v13 == 2)
              {
                silk_stereo_decode_pred(a5, &v199);
                if (!*v188)
                {
                  silk_stereo_decode_mid_only(a5, &v197 + 1);
                }
              }

              silk_decode_indices(v12, a5, 0, 1, 0, a9, a10);
              a1 = silk_decode_pulses(a5, v198, *(v12 + 2789), *(v12 + 2790), *(v12 + 2328));
              LODWORD(v13) = v11[1];
            }

            if (v13 >= 2)
            {
              v184 = v189;
              v185 = 1;
              do
              {
                if (*(v184 + 2432))
                {
                  silk_decode_indices(v184, a5, 0, 1, 0, a9, a10);
                  a1 = silk_decode_pulses(a5, v198, *(v184 + 2789), *(v184 + 2790), *(v184 + 2328));
                  LODWORD(v13) = v195[1];
                }

                ++v185;
                v184 += 4288;
              }

              while (v185 < v13);
            }
          }
        }

        ++v181;
        v180 += 4;
        v11 = v195;
      }

      while (v181 < *(v12 + 2404));
    }
  }

  if (v13 != 2)
  {
    goto LABEL_133;
  }

  if (v193)
  {
    if (v193 != 2 || *(v12 + 4 * *(v12 + 2400) + 2432) != 1)
    {
      v108 = *(v19 + 989);
      v199.i32[0] = *(v19 + 988);
      v199.i32[1] = v108;
      goto LABEL_133;
    }

    a1 = silk_stereo_decode_pred(a5, &v199);
    if (!*(v12 + 4 * *(v12 + 2400) + 6720))
    {
      goto LABEL_121;
    }

LABEL_131:
    HIDWORD(v197) = 0;
    goto LABEL_133;
  }

  a1 = silk_stereo_decode_pred(a5, &v199);
  if (*(v12 + 4 * *(v12 + 2400) + 6704))
  {
    goto LABEL_131;
  }

LABEL_121:
  v94 = *(a5 + 32);
  v93 = *(a5 + 36);
  v95 = v94 >> 8;
  v96 = -1;
  v97 = &silk_stereo_only_code_mid_iCDF;
  do
  {
    v98 = v94;
    v99 = *v97++;
    v94 = v95 * v99;
    ++v96;
    v100 = v93 - v95 * v99;
  }

  while (v93 < v95 * v99);
  v101 = v98 - v94;
  *(a5 + 32) = v98 - v94;
  *(a5 + 36) = v100;
  if (v98 - v94 <= 0x800000)
  {
    v102 = *(a5 + 8);
    v103 = *(a5 + 44);
    v104 = *(a5 + 28);
    v105 = *(a5 + 24) + 8;
    do
    {
      *(a5 + 24) = v105;
      *(a5 + 32) = v101 << 8;
      if (v104 < v102)
      {
        v106 = *a5;
        *(a5 + 28) = v104 + 1;
        v107 = *(v106 + v104++);
      }

      else
      {
        v107 = 0;
      }

      v100 = (((v100 & 0x7FFFFF) << 8) | ((v107 | (v103 << 8)) >> 1)) ^ 0xFF;
      *(a5 + 44) = v107;
      *(a5 + 36) = v100;
      v105 += 8;
      v103 = v107;
      v65 = v101 > 0x8000;
      v101 <<= 8;
    }

    while (!v65);
  }

  HIDWORD(v197) = v96;
LABEL_133:
  v109 = v11[1];
  v110 = HIDWORD(v197) == 0;
  if (v109 == 2 && HIDWORD(v197) == 0)
  {
    if (*(v12 + 8596) == 1)
    {
      bzero((v12 + 5636), 0x3C0uLL);
      *(v12 + 5604) = 0u;
      *(v12 + 5620) = 0u;
      *(v12 + 5572) = 0u;
      *(v12 + 5588) = 0u;
      *(v12 + 6596) = 100;
      *v19 = 10;
      *(v12 + 8476) = 0;
      *(v12 + 6664) = 1;
      v109 = v11[1];
    }

    else
    {
      v109 = 2;
    }
  }

  v112 = v11[3] * v109;
  v113 = *v11 * v11[2];
  v114 = (v12 + 2328);
  if (v112 >= v113)
  {
    a1 = MEMORY[0x28223BE20](a1, a2, a3);
    v115 = &v186[-v116];
  }

  else
  {
    v115 = v192;
  }

  v117 = &v115[2 * *v114 + 4];
  v200 = v115;
  v201 = v117;
  v190 = v186;
  if (!v193)
  {
    v118 = v11[1];
LABEL_150:
    if (v118 < 1)
    {
      goto LABEL_170;
    }

    goto LABEL_153;
  }

  v118 = v11[1];
  if (*(v12 + 8596))
  {
    v110 = 0;
    if (v193 == 2 && v118 == 2)
    {
      v110 = *(v12 + 4 * *(v12 + 6688) + 6720) == 1;
      goto LABEL_153;
    }

    goto LABEL_150;
  }

  v110 = 1;
  if (v118 < 1)
  {
    goto LABEL_170;
  }

LABEL_153:
  v119 = *(v12 + 2400);
  v120 = 2 * (v119 > 0);
  if (v193 == 2)
  {
    v121 = __OFSUB__(v119, 1);
    v122 = v119 - 1;
    if (v122 < 0 == v121)
    {
      v120 = 2 * (*(v12 + 4 * v122 + 2432) != 0);
    }
  }

  a1 = silk_decode_frame(v12, a5, v115 + 4, &v197, v193, v120, v196);
  v41 = (a1 + v41);
  v123 = v11[1];
  ++*(v12 + 2400);
  if (v123 <= 1)
  {
    v115 = v200;
    goto LABEL_170;
  }

  v187 = v113;
  LODWORD(v188) = v112;
  v124 = v12 + 6720;
  v125 = -2;
  v126 = 1;
  do
  {
    if (v110)
    {
      v130 = *(v12 + 2400);
      if (v125 + v130 + 1 < 1)
      {
        v132 = 0;
        v131 = v193;
      }

      else
      {
        v131 = v193;
        if (v193 == 2)
        {
          v132 = 2 * (*(v124 + 4 * (v130 + v125)) != 0);
        }

        else if (*(v12 + 8596))
        {
          v132 = 1;
        }

        else
        {
          v132 = 2;
        }
      }

      a1 = silk_decode_frame(v124 - 2432, a5, (&v200)[v126] + 4, &v197, v131, v132, v196);
      v41 = (a1 + v41);
    }

    else
    {
      bzero((&v200)[v126] + 4, 2 * v197);
    }

    ++*(v124 - 32);
    ++v126;
    v129 = v195[1];
    v124 += 4288;
    --v125;
  }

  while (v126 < v129);
  v115 = v200;
  v113 = v187;
  v112 = v188;
  if (v129 != 2)
  {
    v11 = v195;
    goto LABEL_170;
  }

  v11 = v195;
  if (*v195 != 2)
  {
LABEL_170:
    *v115 = *(v12 + 8580);
    v133 = v197;
    v189 = v115;
    *(v12 + 8580) = *&v115[2 * v197];
    goto LABEL_171;
  }

  v168 = *(v12 + 2316);
  v133 = v197;
  v189 = v200;
  a1 = silk_stereo_MS_to_LR(v12 + 8576, v200, v201, &v199, v168, v197, v127, v128);
LABEL_171:
  v134 = v11[2];
  v196 = v133;
  *v194 = v134 * v133 / (1000 * *(v12 + 2316));
  v135 = *v11;
  v136 = MEMORY[0x28223BE20](a1, v115, a3);
  v140 = &v186[-v139];
  if (v135 == 2)
  {
    v141 = v140;
  }

  else
  {
    v141 = v192;
  }

  v142 = v11[1];
  if (v112 < v113)
  {
    v143 = v12;
    v144 = *(v12 + 2328);
    MEMORY[0x28223BE20](v136, v137, v138);
    v146 = &v186[-v145];
    memcpy(&v186[-v145], v192, 2 * v147);
    v148 = &v146[2 * v144];
    v12 = v143;
    v189 = v146;
    v200 = v146;
    v201 = v148 + 4;
  }

  if (v135 >= v142)
  {
    v149 = v142;
  }

  else
  {
    v149 = v135;
  }

  if (v149 >= 1)
  {
    v150 = v12;
    v151 = 0;
    v152 = v192;
    v153 = v195;
    do
    {
      v155 = silk_resampler((v150 + 4288 * v151 + 2448), v141, (&v200)[v151] + 2, v196);
      v135 = *v153;
      if (*v153 == 2)
      {
        v156 = *v194;
        if (v156 >= 1)
        {
          v157 = v141;
          v158 = v152;
          do
          {
            v159 = *v157++;
            *v158 = v159;
            v158 += 2;
            --v156;
          }

          while (v156);
        }
      }

      v41 = (v155 + v41);
      ++v151;
      v142 = v153[1];
      if (v135 >= v142)
      {
        v154 = v153[1];
      }

      else
      {
        v154 = v135;
      }

      v152 += 2;
    }

    while (v151 < v154);
    v12 = v150;
  }

  if (v135 != 2 || v142 != 1)
  {
    result = v41;
    v160 = v195;
    if (*(v12 + 4188) == 2)
    {
      goto LABEL_198;
    }

    goto LABEL_201;
  }

  if (!v191)
  {
    v160 = v195;
    v169 = *v194;
    if (v169 < 1)
    {
      goto LABEL_223;
    }

    if (v169 == 1)
    {
      v170 = 0;
    }

    else
    {
      v170 = v169 & 0x7FFFFFFE;
      v175 = (v192 + 4);
      v176 = v170;
      do
      {
        v177 = *v175;
        *(v175 - 1) = *(v175 - 2);
        v175[1] = v177;
        v175 += 4;
        v176 -= 2;
      }

      while (v176);
      if (v170 == v169)
      {
LABEL_223:
        result = v41;
        if (*(v12 + 4188) == 2)
        {
          goto LABEL_198;
        }

LABEL_201:
        v165 = v193;
        v160[5] = 0;
        if (v165 != 1)
        {
          goto LABEL_199;
        }

        goto LABEL_202;
      }
    }

    v178 = v169 - v170;
    v179 = &v192[4 * v170 + 2];
    do
    {
      *v179 = *(v179 - 1);
      v179 += 4;
      --v178;
    }

    while (v178);
    goto LABEL_223;
  }

  result = silk_resampler((v12 + 6736), v141, v189 + 2, v196) + v41;
  v160 = v195;
  v161 = *v194;
  if (v161 >= 1)
  {
    v162 = v192 + 2;
    do
    {
      v163 = *v141++;
      *v162 = v163;
      v162 += 2;
      --v161;
    }

    while (v161);
  }

  if (*(v12 + 4188) != 2)
  {
    goto LABEL_201;
  }

LABEL_198:
  v164 = v193;
  v160[5] = dword_273BBBF60[(*(v12 + 2316) - 8) >> 2] * *(v12 + 2308);
  if (v164 != 1)
  {
LABEL_199:
    *(v12 + 8596) = HIDWORD(v197);
    return result;
  }

LABEL_202:
  v166 = *(v12 + 8592);
  if (v166 < 1)
  {
    return result;
  }

  if (v166 == 1)
  {
    v167 = 0;
LABEL_214:
    v173 = v166 - v167;
    v174 = (v12 + 4288 * v167 + 2312);
    do
    {
      *v174 = 10;
      v174 += 4288;
      --v173;
    }

    while (v173);
    return result;
  }

  v167 = v166 & 0x7FFFFFFE;
  v171 = v167;
  v172 = v12;
  do
  {
    *(v172 + 2312) = 10;
    *(v172 + 6600) = 10;
    v172 += 8576;
    v171 -= 2;
  }

  while (v171);
  if (v167 != v166)
  {
    goto LABEL_214;
  }

  return result;
}

__n128 silk_decode_core(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  v166 = a5;
  v163 = a3;
  v173 = a2;
  v5 = a1;
  v162[1] = v162;
  v199 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x28223BE20](a1, a2, a3);
  v8 = v162 - ((v7 + 15) & 0x3FFFFFFF0);
  v11 = MEMORY[0x28223BE20](v6, v9, v10);
  v13 = v162 - v12;
  v16 = MEMORY[0x28223BE20](v11, v14, v15);
  v18 = (v162 - ((v17 + 15) & 0x7FFFFFFF0));
  v21 = MEMORY[0x28223BE20](v16, v19, v20);
  v24 = (v162 - v23);
  v172 = *(v21 + 2791);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = *(v5 + 2794);
    v28 = 16 * silk_Quantization_Offsets_Q10[2 * (*(v5 + 2789) >> 1) + *(v5 + 2790)];
    do
    {
      v29 = 196314165 * v27 + 907633515;
      v30 = *(v22 + 2 * v26);
      v31 = v30 << 14;
      if (v30 < 0)
      {
        v31 = (v30 << 14) | 0x500;
      }

      if (v30 > 0)
      {
        v31 = (v30 << 14) - 1280;
      }

      v32 = v31 + v28;
      if (v29 < 0)
      {
        v32 = -v32;
      }

      *(v5 + 4 + 4 * v26) = v32;
      v27 = v29 + v30;
      ++v26;
    }

    while (v26 < *(v5 + 2328));
  }

  v33 = *(v5 + 1300);
  *v24 = *(v5 + 1284);
  *(v24 + 1) = v33;
  v34 = *(v5 + 1316);
  v35 = *(v5 + 1332);
  v162[0] = v5 + 1284;
  *(v24 + 2) = v34;
  *(v24 + 3) = v35;
  if (*(v5 + 2324) >= 1)
  {
    v36 = 0;
    v37 = (v5 + 4);
    v179 = *(v5 + 2336);
    v177 = v173 + 96;
    v178 = v173 + 32;
    v176 = v173 + 16;
    v180 = v5 + 1348;
    v165 = v8 - 14;
    v164 = v13 - 28;
    v167 = v24 + 8;
    v182 = v163;
    v170 = v5;
    v171 = v8;
    v168 = v18;
    v169 = v13;
    do
    {
      v181 = (v178 + 32 * (v36 >> 1));
      __memcpy_chk();
      v43 = *(v176 + 4 * v36);
      if (v43 >= 0)
      {
        v44 = *(v176 + 4 * v36);
      }

      else
      {
        v44 = -v43;
      }

      v45 = __clz(v44);
      v46 = v43 << (v45 - 1);
      v47 = 0x1FFFFFFF / (v46 >> 16);
      v48 = (((-(((v47 << 19) * v46) & 0xFFFFFFF800000000) >> 32) * v47) >> 16) + (v47 << 16);
      v49 = v44 >> 17;
      v50 = v48 >> (15 - v45);
      v51 = 0x80000000 >> (v45 - 15);
      if (v48 > v51)
      {
        v51 = (((-(((v47 << 19) * v46) & 0xFFFFFFF800000000) >> 32) * v47) >> 16) + (v47 << 16);
      }

      if (v48 <= (0x7FFFFFFFu >> (v45 - 15)))
      {
        v52 = v51;
      }

      else
      {
        v52 = 0x7FFFFFFFu >> (v45 - 15);
      }

      v53 = v52 << (v45 - 15);
      if (v49)
      {
        v54 = v50;
      }

      else
      {
        v54 = v53;
      }

      v55 = *v5;
      if (v43 == *v5)
      {
        v56 = 0x10000;
      }

      else
      {
        if (v55 >= 0)
        {
          v57 = *v5;
        }

        else
        {
          v57 = -v55;
        }

        v58 = __clz(v57);
        v59 = ((v47 * ((v55 << (v58 - 1)) - (((((v47 * (v55 << (v58 - 1))) >> 16) * v46) >> 29) & 0xFFFFFFF8))) >> 16) + ((v47 * (v55 << (v58 - 1))) >> 16);
        v60 = v58 - v45;
        if ((v60 + 29) >= 0x30)
        {
          v61 = 0;
        }

        else
        {
          v61 = v59 >> (v60 + 13);
        }

        v62 = 0x80000000 >> (-13 - v60);
        if (v62 <= v59)
        {
          v62 = v59;
        }

        if ((0x7FFFFFFFu >> (-13 - v60)) >= v59)
        {
          v63 = v62;
        }

        else
        {
          v63 = 0x7FFFFFFFu >> (-13 - v60);
        }

        v64 = v63 << (-13 - v60);
        if (v60 <= -14)
        {
          v56 = v64;
        }

        else
        {
          v56 = v61;
        }

        v65 = (v24[1] * v56) >> 16;
        *v24 = (*v24 * v56) >> 16;
        v24[1] = v65;
        v66 = (v24[3] * v56) >> 16;
        v24[2] = (v24[2] * v56) >> 16;
        v24[3] = v66;
        v67 = (v24[5] * v56) >> 16;
        v24[4] = (v24[4] * v56) >> 16;
        v24[5] = v67;
        v68 = (v24[7] * v56) >> 16;
        v24[6] = (v24[6] * v56) >> 16;
        v24[7] = v68;
        v69 = (v24[9] * v56) >> 16;
        v24[8] = (v24[8] * v56) >> 16;
        v24[9] = v69;
        v70 = (v24[11] * v56) >> 16;
        v24[10] = (v24[10] * v56) >> 16;
        v24[11] = v70;
        v71 = (v24[13] * v56) >> 16;
        v24[12] = (v24[12] * v56) >> 16;
        v24[13] = v71;
        v72 = (v24[15] * v56) >> 16;
        v24[14] = (v24[14] * v56) >> 16;
        v24[15] = v72;
      }

      v73 = (v177 + 10 * v36);
      v74 = *(v5 + 2789);
      *v5 = v43;
      v75 = v180;
      if (*(v5 + 4184) && *(v5 + 4188) == 2 && v36 <= 1 && v74 != 2)
      {
        *v73 = 0;
        v73[4] = 0;
        v73[2] = 4096;
        v76 = *(v5 + 2308);
        *(v173 + 4 * v36) = v76;
        v78 = v172 < 4 && v36 == 2;
        if (!v36)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v74 != 2)
        {
          v38 = *(v5 + 2332);
          v84 = v37;
          if (v38 >= 1)
          {
            goto LABEL_88;
          }

          goto LABEL_13;
        }

        v76 = *(v173 + 4 * v36);
        v78 = v172 < 4 && v36 == 2;
        if (!v36)
        {
LABEL_72:
          v174 = v54;
          v175 = v73;
          v85 = *(v5 + 2336);
          v86 = *(v5 + 2340);
          v87 = *(v5 + 2332);
          if (v36 == 2)
          {
            v88 = v76;
            memcpy((v75 + 2 * v85), v163, 4 * v87);
            v76 = v88;
            v75 = v180;
            v87 = *(v5 + 2332);
            v89 = *(v5 + 2336);
            v90 = *(v5 + 2340);
          }

          else
          {
            v90 = *(v5 + 2340);
            v89 = *(v5 + 2336);
          }

          v91 = v85 - v86;
          v92 = v76;
          silk_LPC_analysis_filter(&v171[2 * (v91 - v76) - 4], v75 + 2 * (v91 - v76 - 2 + v87 * v36), v181, v89 - (v91 - v76 - 2), v90);
          if (v36)
          {
            v93 = v165;
            v94 = v164;
            LODWORD(v95) = v174;
            v73 = v175;
            v76 = v92;
            v96 = v92 < -1;
            v97 = v171;
            if (v96)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v95 = ((*(v173 + 136) * v174) >> 14) & 0xFFFFFFFC;
            v93 = v165;
            v94 = v164;
            v73 = v175;
            v76 = v92;
            v96 = v92 < -1;
            v97 = v171;
            if (v96)
            {
              goto LABEL_84;
            }
          }

          v98 = *(v5 + 2336);
          v99 = (v76 + 2);
          if (v99 < 0x18)
          {
            v100 = 0;
LABEL_82:
            v101 = v99 - v100;
            v102 = ~v100;
            v103 = ~v100 + v179;
            v104 = v102 + v98;
            do
            {
              *&v13[4 * v103--] = (*&v97[2 * v104--] * v95) >> 16;
              --v101;
            }

            while (v101);
            goto LABEL_84;
          }

          v100 = 0;
          v145 = v98 - 1;
          if (v98 - v99 > v98 - 1)
          {
            goto LABEL_82;
          }

          v146 = v179 - 1;
          if (v179 - v99 > v179 - 1)
          {
            goto LABEL_82;
          }

          if ((v99 - 1) >> 32)
          {
            goto LABEL_82;
          }

          v100 = v99 & 0xFFFFFFF8;
          v147 = vdupq_n_s32(v95);
          v148 = v100;
          do
          {
            v149 = *&v93[2 * v145];
            v150 = &v94[4 * v146];
            v151 = vmovl_s16(*v149.i8);
            v152 = vmovl_high_s16(v149);
            *v150 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v147.i8, *v151.i8), 0x10uLL), vmull_high_s32(v147, v151), 0x10uLL);
            v150[1] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v147.i8, *v152.i8), 0x10uLL), vmull_high_s32(v147, v152), 0x10uLL);
            v146 -= 8;
            v145 -= 8;
            v148 -= 8;
          }

          while (v148);
          if (v100 != v99)
          {
            goto LABEL_82;
          }

          goto LABEL_84;
        }
      }

      if (v78)
      {
        goto LABEL_72;
      }

      if (v56 != 0x10000 && v76 >= -1)
      {
        v80 = (v76 + 2);
        if (v80 < 0xC)
        {
          v81 = 0;
LABEL_67:
          v82 = v80 - v81;
          v83 = ~v81 + v179;
          do
          {
            *&v13[4 * v83] = (*&v13[4 * v83] * v56) >> 16;
            --v83;
            --v82;
          }

          while (v82);
          goto LABEL_84;
        }

        v81 = 0;
        v153 = v179 - 1;
        if (v179 - v80 > v179 - 1)
        {
          goto LABEL_67;
        }

        if ((v80 - 1) >> 32)
        {
          goto LABEL_67;
        }

        v81 = v80 & 0xFFFFFFF8;
        v154 = vdupq_n_s32(v56);
        v155 = v81;
        do
        {
          v156 = &v13[4 * v153];
          v157 = *(v156 - 28);
          *(v156 - 12) = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v154.i8, *(v156 - 12)), 0x10uLL), vmull_high_s32(v154, *(v156 - 12)), 0x10uLL);
          *(v156 - 28) = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v154.i8, *v157.i8), 0x10uLL), vmull_high_s32(v154, v157), 0x10uLL);
          v153 -= 8;
          v155 -= 8;
        }

        while (v155);
        if (v81 != v80)
        {
          goto LABEL_67;
        }
      }

LABEL_84:
      v38 = *(v5 + 2332);
      if (v38 >= 1)
      {
        v105 = 0;
        v106 = *v73 << 16;
        v107 = v73[1] << 16;
        v108 = v73[2] << 16;
        v109 = v73[3] << 16;
        v110 = v73[4];
        v111 = 4 * v179;
        v179 = (v179 + v38);
        do
        {
          v112 = &v13[v111 - 4 * v76];
          v113 = v37[v105 / 4] + 2 * (((((v107 * *&v112[v105 + 4]) & 0xFFFFFFFF00000000) + v106 * *&v112[v105 + 8] + ((v108 * *&v112[v105]) & 0xFFFFFFFF00000000) + ((v109 * *&v112[v105 - 4]) & 0x7FFFFFFF00000000) + 0x200000000) >> 32) + ((*&v112[v105 - 8] * v110) >> 16));
          v18[v105 / 4] = v113;
          *&v13[v111 + v105] = 2 * v113;
          v105 += 4;
        }

        while (4 * v38 != v105);
        v84 = v18;
LABEL_88:
        v175 = v37;
        v181 = v36;
        v114 = *(v5 + 2340);
        v115 = v43 >> 6;
        v116 = v183;
        v117 = v184;
        v118 = v185;
        v119 = v186;
        v120 = v187;
        v121 = v188;
        v122 = v189;
        v123 = v190;
        v124 = v191;
        v125 = v38;
        v126 = v192;
        v127 = v193;
        v128 = v194;
        v129 = v195;
        v130 = v196;
        v131 = v197;
        v174 = v125;
        v132 = v125;
        v133 = v198;
        v134 = v167;
        v135 = v182;
        v136 = v167;
        v137 = v24[15];
        do
        {
          v143 = v136[1];
          ++v136;
          v144 = (v114 >> 1) + ((v116 * v137) >> 16) + ((v134[6] * v117) >> 16) + ((v134[5] * v118) >> 16) + ((v134[4] * v119) >> 16) + ((v134[3] * v120) >> 16) + ((v134[2] * v121) >> 16) + ((v143 * v122) >> 16) + ((*v134 * v123) >> 16) + ((*(v134 - 1) * v124) >> 16) + ((*(v134 - 2) * v126) >> 16);
          if (v114 == 16)
          {
            v144 += ((*(v134 - 3) * v127) >> 16) + ((*(v134 - 4) * v128) >> 16) + ((*(v134 - 5) * v129) >> 16) + ((*(v134 - 6) * v130) >> 16) + ((*(v134 - 7) * v131) >> 16) + ((*(v134 - 8) * v133) >> 16);
          }

          v139 = *v84++;
          v138 = v139;
          if (v144 <= -134217728)
          {
            v140 = -134217728;
          }

          else
          {
            v140 = v144;
          }

          if (v140 >= 0x7FFFFFF)
          {
            v140 = 0x7FFFFFF;
          }

          v141 = vqadds_s32(v138, 16 * v140);
          v134[8] = v141;
          v137 = v141;
          v142 = ((((v115 * v141) >> 16) >> 7) + 1) >> 1;
          if (v142 <= -32768)
          {
            v142 = -32768;
          }

          if (v142 >= 0x7FFF)
          {
            LOWORD(v142) = 0x7FFF;
          }

          *v135++ = v142;
          v134 = v136;
          --v132;
        }

        while (v132);
        v13 = v169;
        v5 = v170;
        v18 = v168;
        v36 = v181;
        LODWORD(v38) = v174;
        v37 = v175;
      }

LABEL_13:
      v39 = v38;
      v40 = *&v24[v39];
      v41 = *&v24[v39 + 4];
      v42 = *&v24[v39 + 12];
      *(v24 + 2) = *&v24[v39 + 8];
      *(v24 + 3) = v42;
      *v24 = v40;
      *(v24 + 1) = v41;
      v37 = (v37 + v39 * 4);
      v182 += 2 * v38;
      ++v36;
    }

    while (v36 < *(v5 + 2324));
  }

  v158 = *(v24 + 1);
  v159 = v162[0];
  *v162[0] = *v24;
  *(v159 + 16) = v158;
  result = *(v24 + 2);
  v161 = *(v24 + 3);
  *(v159 + 32) = result;
  *(v159 + 48) = v161;
  return result;
}

uint64_t silk_decode_frame(uint64_t a1, uint64_t a2, char *a3, int *a4, int a5, uint64_t a6, int a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 2328);
  v26 = 0;
  if (!a5 || a5 == 2 && *(a1 + 4 * *(a1 + 2400) + 2432) == 1)
  {
    MEMORY[0x28223BE20](a1, a2, a3);
    v13 = (&v24 - v12);
    v15 = v14;
    v17 = v16;
    silk_decode_indices(a1, v14, *(a1 + 2400), v18, v16, v19, v20);
    silk_decode_pulses(v15, v13, *(a1 + 2789), *(a1 + 2790), *(a1 + 2328));
    silk_decode_parameters(a1, &v25, v17);
    silk_decode_core(a1, &v25, a3, v13, a7);
    silk_PLC(a1, &v25, a3, 0, a7);
    *(a1 + 4184) = 0;
    *(a1 + 4188) = *(a1 + 2789);
    *(a1 + 2376) = 0;
  }

  else
  {
    silk_PLC(a1, &v25, a3, 1, a7);
  }

  v21 = *(a1 + 2328);
  v22 = 2 * (*(a1 + 2336) - v21);
  memmove((a1 + 1348), (a1 + 1348 + 2 * v21), v22);
  memcpy((a1 + 1348 + v22), a3, 2 * *(a1 + 2328));
  silk_CNG(a1, &v25, a3, v11);
  silk_PLC_glue_frames(a1, a3, v11);
  *(a1 + 2308) = v25.i32[*(a1 + 2324) - 1];
  *a4 = v11;
  return 0;
}

uint64_t silk_decode_indices(uint64_t result, uint64_t *a2, int a3, int a4, int a5, double a6, int8x16_t a7)
{
  v301 = *MEMORY[0x277D85DE8];
  if (a4 || *(result + 4 * a3 + 2416))
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 9);
    v9 = v7 >> 8;
    v10 = 1;
    v11 = &silk_type_offset_VAD_iCDF;
    do
    {
      v12 = v7;
      v13 = *v11++;
      v7 = v9 * v13;
      ++v10;
      v14 = v8 - v9 * v13;
    }

    while (v8 < v9 * v13);
    *(a2 + 9) = v14;
    v15 = v12 - v7;
    if (v12 - v7 < 0x800001)
    {
      v16 = *(a2 + 2);
      v17 = *(a2 + 11);
      v18 = *(a2 + 7);
      v19 = *(a2 + 6) + 8;
      do
      {
        *(a2 + 6) = v19;
        v23 = v15 << 8;
        *(a2 + 8) = v15 << 8;
        if (v18 < v16)
        {
          v20 = *a2;
          *(a2 + 7) = v18 + 1;
          v21 = *(v20 + v18++);
        }

        else
        {
          v21 = 0;
        }

        v14 = (((v14 & 0x7FFFFF) << 8) | ((v21 | (v17 << 8)) >> 1)) ^ 0xFF;
        *(a2 + 11) = v21;
        *(a2 + 9) = v14;
        v19 += 8;
        v17 = v21;
        v22 = v15 > 0x8000;
        v15 <<= 8;
      }

      while (!v22);
LABEL_19:
      v15 = v23;
    }
  }

  else
  {
    v24 = *(a2 + 8);
    v25 = *(a2 + 9);
    v26 = v24 >> 8;
    v10 = -1;
    v27 = &silk_type_offset_no_VAD_iCDF;
    do
    {
      v28 = v24;
      v29 = *v27++;
      v24 = v26 * v29;
      ++v10;
      v14 = v25 - v26 * v29;
    }

    while (v25 < v26 * v29);
    *(a2 + 9) = v14;
    v15 = v28 - v24;
    if (v28 - v24 < 0x800001)
    {
      v30 = *(a2 + 2);
      v31 = *(a2 + 11);
      v32 = *(a2 + 7);
      v33 = *(a2 + 6) + 8;
      do
      {
        *(a2 + 6) = v33;
        v23 = v15 << 8;
        *(a2 + 8) = v15 << 8;
        if (v32 < v30)
        {
          v34 = *a2;
          *(a2 + 7) = v32 + 1;
          v35 = *(v34 + v32++);
        }

        else
        {
          v35 = 0;
        }

        v14 = (((v14 & 0x7FFFFF) << 8) | ((v35 | (v31 << 8)) >> 1)) ^ 0xFF;
        *(a2 + 11) = v35;
        *(a2 + 9) = v14;
        v33 += 8;
        v31 = v35;
        v22 = v15 > 0x8000;
        v15 <<= 8;
      }

      while (!v22);
      goto LABEL_19;
    }
  }

  v36 = v10 >> 1;
  v37 = (result + 2760);
  *(result + 2789) = v10 >> 1;
  *(result + 2790) = v10 & 1;
  if (a5 == 2)
  {
    v38 = 0;
    v39 = v15 >> 8;
    do
    {
      v40 = v15;
      v15 = v39 * silk_delta_gain_iCDF[v38++];
      v41 = v14 - v15;
    }

    while (v14 < v15);
    v42 = v40 - v15;
    *(a2 + 8) = v42;
    *(a2 + 9) = v41;
    v43 = v38 - 1;
    if (v42 < 0x800001)
    {
      v44 = *(a2 + 2);
      v45 = *(a2 + 11);
      v46 = *(a2 + 7);
      v47 = *(a2 + 6) + 8;
      do
      {
        *(a2 + 6) = v47;
        *(a2 + 8) = v42 << 8;
        if (v46 < v44)
        {
          v48 = *a2;
          *(a2 + 7) = v46 + 1;
          v49 = *(v48 + v46++);
        }

        else
        {
          v49 = 0;
        }

        v41 = (((v41 & 0x7FFFFF) << 8) | ((v49 | (v45 << 8)) >> 1)) ^ 0xFF;
        *(a2 + 11) = v49;
        *(a2 + 9) = v41;
        v47 += 8;
        v45 = v49;
        v22 = v42 > 0x8000;
        v42 <<= 8;
      }

      while (!v22);
    }
  }

  else
  {
    v50 = 0;
    v51 = v15 >> 8;
    do
    {
      v52 = v15;
      v15 = v51 * silk_gain_iCDF[8 * v36 + v50++];
      v53 = v14 - v15;
    }

    while (v14 < v15);
    v54 = v52 - v15;
    *(a2 + 8) = v54;
    *(a2 + 9) = v53;
    v55 = v50 - 1;
    if (v54 < 0x800001)
    {
      v56 = *(a2 + 2);
      v57 = *(a2 + 11);
      v58 = *(a2 + 7);
      v59 = *(a2 + 6) + 8;
      do
      {
        *(a2 + 6) = v59;
        *(a2 + 8) = v54 << 8;
        if (v58 < v56)
        {
          v60 = *a2;
          *(a2 + 7) = v58 + 1;
          v61 = *(v60 + v58++);
        }

        else
        {
          v61 = 0;
        }

        v53 = (((v53 & 0x7FFFFF) << 8) | ((v61 | (v57 << 8)) >> 1)) ^ 0xFF;
        *(a2 + 11) = v61;
        *(a2 + 9) = v53;
        v59 += 8;
        v57 = v61;
        v22 = v54 > 0x8000;
        v54 <<= 8;
      }

      while (!v22);
    }

    v62 = 0;
    *v37 = 8 * v55;
    v63 = *(a2 + 8);
    v64 = *(a2 + 9);
    v65 = v63 >> 8;
    do
    {
      v66 = v63;
      v63 = v65 * silk_uniform8_iCDF[v62++];
      v67 = v64 - v63;
    }

    while (v64 < v63);
    v68 = v66 - v63;
    *(a2 + 8) = v68;
    *(a2 + 9) = v67;
    v69 = v62 - 1;
    if (v68 < 0x800001)
    {
      v70 = *(a2 + 2);
      v71 = *(a2 + 11);
      v72 = *(a2 + 7);
      v73 = *(a2 + 6) + 8;
      do
      {
        *(a2 + 6) = v73;
        *(a2 + 8) = v68 << 8;
        if (v72 < v70)
        {
          v74 = *a2;
          *(a2 + 7) = v72 + 1;
          v75 = *(v74 + v72++);
        }

        else
        {
          v75 = 0;
        }

        v67 = (((v67 & 0x7FFFFF) << 8) | ((v75 | (v71 << 8)) >> 1)) ^ 0xFF;
        *(a2 + 11) = v75;
        *(a2 + 9) = v67;
        v73 += 8;
        v71 = v75;
        v22 = v68 > 0x8000;
        v68 <<= 8;
      }

      while (!v22);
    }

    v43 = *v37 + v69;
  }

  *(result + 2760) = v43;
  v76 = *(result + 2324);
  if (v76 >= 2)
  {
    for (i = 1; i != v76; ++i)
    {
      v78 = 0;
      v79 = *(a2 + 8);
      v80 = *(a2 + 9);
      v81 = v79 >> 8;
      do
      {
        v82 = v79;
        v79 = v81 * silk_delta_gain_iCDF[v78++];
        v83 = v80 - v79;
      }

      while (v80 < v79);
      v84 = v82 - v79;
      *(a2 + 8) = v84;
      *(a2 + 9) = v83;
      if (v84 < 0x800001)
      {
        v85 = *(a2 + 2);
        v86 = *(a2 + 11);
        v87 = *(a2 + 7);
        v88 = *(a2 + 6) + 8;
        do
        {
          *(a2 + 6) = v88;
          *(a2 + 8) = v84 << 8;
          if (v87 < v85)
          {
            v89 = *a2;
            *(a2 + 7) = v87 + 1;
            v90 = *(v89 + v87++);
          }

          else
          {
            v90 = 0;
          }

          v83 = (((v83 & 0x7FFFFF) << 8) | ((v90 | (v86 << 8)) >> 1)) ^ 0xFF;
          *(a2 + 11) = v90;
          *(a2 + 9) = v83;
          v88 += 8;
          v86 = v90;
          v22 = v84 > 0x8000;
          v84 <<= 8;
        }

        while (!v22);
      }

      v37[i] = v78 - 1;
    }

    LOBYTE(v36) = *(result + 2789);
  }

  v91 = 0;
  v92 = *(result + 2752);
  v93 = *(v92 + 3) + *v92 * (v36 >> 1);
  v95 = *(a2 + 8);
  v94 = *(a2 + 9);
  v96 = v95 >> 8;
  v97 = -16777216;
  do
  {
    v98 = v95;
    v95 = v96 * *(v93 + v91++);
    v97 += 0x1000000;
    v99 = v94 - v95;
  }

  while (v94 < v95);
  v100 = v98 - v95;
  *(a2 + 8) = v98 - v95;
  *(a2 + 9) = v99;
  v101 = v91 - 1;
  if (v98 - v95 < 0x800001)
  {
    v102 = *(a2 + 2);
    v103 = *(a2 + 11);
    v104 = *(a2 + 7);
    v105 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v105;
      *(a2 + 8) = v100 << 8;
      if (v104 < v102)
      {
        v106 = *a2;
        *(a2 + 7) = v104 + 1;
        v107 = *(v106 + v104++);
      }

      else
      {
        v107 = 0;
      }

      v99 = (((v99 & 0x7FFFFF) << 8) | ((v107 | (v103 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v107;
      *(a2 + 9) = v99;
      v105 += 8;
      v103 = v107;
      v22 = v100 > 0x8000;
      v100 <<= 8;
    }

    while (!v22);
  }

  *(result + 2768) = v101;
  if (v92[1] >= 1)
  {
    v108 = v92[1];
    v109 = v92[1];
    v110 = *(v92 + 5);
    v111 = ((v97 >> 24) * v109 + (((v97 >> 24) * v109) >> 31)) >> 1;
    v112 = (v110 + v111);
    if (v109 < 7)
    {
      v113 = 0;
      goto LABEL_80;
    }

    v114 = ((v108 - 1) >> 1) + 1;
    if (v109 >= 0x3F)
    {
      v115 = v114 & 0xFFFFFFFFFFFFFFE0;
      v116 = (v111 + v110 + 16);
      v117 = &vars8;
      v118.i64[0] = 0x707070707070707;
      v118.i64[1] = 0x707070707070707;
      a7.i16[0] = 2313;
      a7.i8[2] = 9;
      a7.i8[3] = 9;
      a7.i8[4] = 9;
      a7.i8[5] = 9;
      a7.i8[6] = 9;
      a7.i8[7] = 9;
      a7.i8[8] = 9;
      a7.i8[9] = 9;
      a7.i8[10] = 9;
      a7.i8[11] = 9;
      a7.i8[12] = 9;
      a7.i8[13] = 9;
      a7.i8[14] = 9;
      a7.i8[15] = 9;
      v119 = v114 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v120 = v116[-1];
        v121 = vmulq_s8(vandq_s8(vshrq_n_u8(v120, 1uLL), v118), a7);
        v122 = vmulq_s8(vandq_s8(vshrq_n_u8(*v116, 1uLL), v118), a7);
        v123 = vmulq_s8(vshrq_n_u8(v120, 5uLL), a7);
        v124 = vmulq_s8(vshrq_n_u8(*v116, 5uLL), a7);
        v125 = vzip2q_s8(v121, v123);
        v126 = vzip1q_s8(v121, v123);
        v117[-2] = vmovl_u8(*v125.i8);
        v117[-1] = vmovl_high_u8(v125);
        v117[-4] = vmovl_u8(*v126.i8);
        v117[-3] = vmovl_high_u8(v126);
        v127 = vzip2q_s8(v122, v124);
        v128 = vzip1q_s8(v122, v124);
        v117[2] = vmovl_u8(*v127.i8);
        v117[3] = vmovl_high_u8(v127);
        *v117 = vmovl_u8(*v128.i8);
        v117[1] = vmovl_high_u8(v128);
        v117 += 8;
        v116 += 2;
        v119 -= 32;
      }

      while (v119);
      if (v114 == v115)
      {
        goto LABEL_81;
      }

      if ((v114 & 0x1C) == 0)
      {
        v112 += v115;
        v113 = 2 * v115;
        do
        {
LABEL_80:
          v134 = *v112++;
          v135 = &v300[v113];
          *v135 = (v134 >> 1) & 7 | (8 * ((v134 >> 1) & 7));
          v135[1] = (v134 >> 5) | (8 * (v134 >> 5));
          v113 += 2;
        }

        while (v113 < v108);
        goto LABEL_81;
      }
    }

    else
    {
      v115 = 0;
    }

    v113 = 2 * (v114 & 0xFFFFFFFFFFFFFFFCLL);
    v112 += v114 & 0xFFFFFFFFFFFFFFFCLL;
    v129 = (v110 + v115 + v111);
    v130 = v115 - (v114 & 0xFFFFFFFFFFFFFFFCLL);
    v131 = &v300[2 * v115];
    do
    {
      v132 = *v129++;
      a7.i32[0] = v132;
      v133 = vmovl_u8(*a7.i8).u64[0];
      v303.val[0] = vmul_s16((*&vshr_n_u16(v133, 1uLL) & 0xFF87FF87FF87FF87), 0x9000900090009);
      *a7.i8 = vshr_n_u16(v133, 5uLL);
      v303.val[1] = vmul_s16(*a7.i8, 0x9000900090009);
      vst2_s16(v131, v303);
      v131 += 8;
      v130 += 4;
    }

    while (v130);
    if (v114 != (v114 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_80;
    }

LABEL_81:
    v136 = 0;
    do
    {
      v137 = (*(v92 + 6) + v300[v136]);
      v139 = *(a2 + 8);
      v138 = *(a2 + 9);
      v140 = v139 >> 8;
      v141 = -1;
      do
      {
        v142 = v139;
        v143 = *v137++;
        v139 = v140 * v143;
        ++v141;
        v144 = v138 - v140 * v143;
      }

      while (v138 < v140 * v143);
      v145 = v142 - v139;
      *(a2 + 8) = v142 - v139;
      *(a2 + 9) = v144;
      if (v142 - v139 >= 0x800001)
      {
        v152 = v142 - v139;
      }

      else
      {
        v146 = *(a2 + 2);
        v147 = *(a2 + 11);
        v148 = *(a2 + 7);
        v149 = *(a2 + 6) + 8;
        do
        {
          *(a2 + 6) = v149;
          v152 = v145 << 8;
          *(a2 + 8) = v145 << 8;
          if (v148 < v146)
          {
            v150 = *a2;
            *(a2 + 7) = v148 + 1;
            v151 = *(v150 + v148++);
          }

          else
          {
            v151 = 0;
          }

          v144 = (((v144 & 0x7FFFFF) << 8) | ((v151 | (v147 << 8)) >> 1)) ^ 0xFF;
          *(a2 + 11) = v151;
          *(a2 + 9) = v144;
          v149 += 8;
          v147 = v151;
          v22 = v145 > 0x8000;
          v145 <<= 8;
        }

        while (!v22);
      }

      if (v141)
      {
        if (v141 == 8)
        {
          v153 = v152 >> 8;
          LOBYTE(v141) = 7;
          v154 = &silk_NLSF_EXT_iCDF;
          do
          {
            v155 = v152;
            v156 = *v154++;
            v152 = v153 * v156;
            LOBYTE(v141) = v141 + 1;
            v157 = v144 - v153 * v156;
          }

          while (v144 < v153 * v156);
          v158 = v155 - v152;
          *(a2 + 8) = v155 - v152;
          *(a2 + 9) = v157;
          if (v155 - v152 < 0x800001)
          {
            v159 = *(a2 + 2);
            v160 = *(a2 + 11);
            v161 = *(a2 + 7);
            v162 = *(a2 + 6) + 8;
            do
            {
              *(a2 + 6) = v162;
              *(a2 + 8) = v158 << 8;
              if (v161 < v159)
              {
                v163 = *a2;
                *(a2 + 7) = v161 + 1;
                v164 = *(v163 + v161++);
              }

              else
              {
                v164 = 0;
              }

              v157 = (((v157 & 0x7FFFFF) << 8) | ((v164 | (v160 << 8)) >> 1)) ^ 0xFF;
              *(a2 + 11) = v164;
              *(a2 + 9) = v157;
              v162 += 8;
              v160 = v164;
              v22 = v158 > 0x8000;
              v158 <<= 8;
            }

            while (!v22);
          }
        }
      }

      else
      {
        v165 = v152 >> 8;
        LOBYTE(v141) = 1;
        v166 = &silk_NLSF_EXT_iCDF;
        do
        {
          v167 = v152;
          v168 = *v166++;
          v152 = v165 * v168;
          LOBYTE(v141) = v141 - 1;
          v169 = v144 - v165 * v168;
        }

        while (v144 < v165 * v168);
        v170 = v167 - v152;
        *(a2 + 8) = v167 - v152;
        *(a2 + 9) = v169;
        if (v167 - v152 < 0x800001)
        {
          v171 = *(a2 + 2);
          v172 = *(a2 + 11);
          v173 = *(a2 + 7);
          v174 = *(a2 + 6) + 8;
          do
          {
            *(a2 + 6) = v174;
            *(a2 + 8) = v170 << 8;
            if (v173 < v171)
            {
              v175 = *a2;
              *(a2 + 7) = v173 + 1;
              v176 = *(v175 + v173++);
            }

            else
            {
              v176 = 0;
            }

            v169 = (((v169 & 0x7FFFFF) << 8) | ((v176 | (v172 << 8)) >> 1)) ^ 0xFF;
            *(a2 + 11) = v176;
            *(a2 + 9) = v169;
            v174 += 8;
            v172 = v176;
            v22 = v170 > 0x8000;
            v170 <<= 8;
          }

          while (!v22);
        }
      }

      ++v136;
      *(result + 2768 + v136) = v141 - 4;
    }

    while (v136 < v92[1]);
  }

  if (v76 == 4)
  {
    v177 = 0;
    v178 = *(a2 + 8);
    v179 = *(a2 + 9);
    v180 = v178 >> 8;
    do
    {
      v181 = v178;
      v178 = v180 * silk_NLSF_interpolation_factor_iCDF[v177++];
      v182 = v179 - v178;
    }

    while (v179 < v178);
    v183 = v181 - v178;
    *(a2 + 8) = v183;
    *(a2 + 9) = v182;
    v184 = v177 - 1;
    if (v183 < 0x800001)
    {
      v185 = *(a2 + 2);
      v186 = *(a2 + 11);
      v187 = *(a2 + 7);
      v188 = *(a2 + 6) + 8;
      do
      {
        *(a2 + 6) = v188;
        *(a2 + 8) = v183 << 8;
        if (v187 < v185)
        {
          v189 = *a2;
          *(a2 + 7) = v187 + 1;
          v190 = *(v189 + v187++);
        }

        else
        {
          v190 = 0;
        }

        v182 = (((v182 & 0x7FFFFF) << 8) | ((v190 | (v186 << 8)) >> 1)) ^ 0xFF;
        *(a2 + 11) = v190;
        *(a2 + 9) = v182;
        v188 += 8;
        v186 = v190;
        v22 = v183 > 0x8000;
        v183 <<= 8;
      }

      while (!v22);
    }
  }

  else
  {
    v184 = 4;
  }

  *(result + 2791) = v184;
  v191 = *(result + 2789);
  if (v191 == 2)
  {
    if (a5 == 2)
    {
      v192 = *(a2 + 8);
      v193 = *(a2 + 9);
      if (*(result + 2408) == 2)
      {
        v194 = 0;
        v195 = v192 >> 8;
        do
        {
          v196 = v192;
          v192 = v195 * silk_pitch_delta_iCDF[v194++];
          v197 = v193 - v192;
        }

        while (v193 < v192);
        v198 = v196 - v192;
        *(a2 + 8) = v196 - v192;
        *(a2 + 9) = v197;
        v199 = v194 - 1;
        if (v196 - v192 >= 0x800001)
        {
          v192 = v196 - v192;
        }

        else
        {
          v200 = *(a2 + 2);
          v201 = *(a2 + 11);
          v202 = *(a2 + 7);
          v203 = *(a2 + 6) + 8;
          do
          {
            *(a2 + 6) = v203;
            v192 = v198 << 8;
            *(a2 + 8) = v198 << 8;
            if (v202 < v200)
            {
              v204 = *a2;
              *(a2 + 7) = v202 + 1;
              v205 = *(v204 + v202++);
            }

            else
            {
              v205 = 0;
            }

            v197 = (((v197 & 0x7FFFFF) << 8) | ((v205 | (v201 << 8)) >> 1)) ^ 0xFF;
            *(a2 + 11) = v205;
            *(a2 + 9) = v197;
            v203 += 8;
            v201 = v205;
            v22 = v198 > 0x8000;
            v198 <<= 8;
          }

          while (!v22);
        }

        if (v199 >= 1)
        {
          v206 = v199 + *(result + 2412) - 9;
LABEL_155:
          *(result + 2786) = v206;
          v233 = 0;
          *(result + 2412) = v206;
          v234 = v192 >> 8;
          do
          {
            v235 = v192;
            v192 = v234 * *(*(result + 2392) + v233++);
            v236 = v197 - v192;
          }

          while (v197 < v192);
          *(a2 + 9) = v236;
          v237 = v235 - v192;
          v238 = v233 - 1;
          if (v237 >= 0x800001)
          {
            v245 = v237;
          }

          else
          {
            v239 = *(a2 + 2);
            v240 = *(a2 + 11);
            v241 = *(a2 + 7);
            v242 = *(a2 + 6) + 8;
            do
            {
              *(a2 + 6) = v242;
              v245 = v237 << 8;
              *(a2 + 8) = v237 << 8;
              if (v241 < v239)
              {
                v243 = *a2;
                *(a2 + 7) = v241 + 1;
                v244 = *(v243 + v241++);
              }

              else
              {
                v244 = 0;
              }

              v236 = (((v236 & 0x7FFFFF) << 8) | ((v244 | (v240 << 8)) >> 1)) ^ 0xFF;
              *(a2 + 11) = v244;
              *(a2 + 9) = v236;
              v242 += 8;
              v240 = v244;
              v22 = v237 > 0x8000;
              v237 <<= 8;
            }

            while (!v22);
          }

          v246 = 0;
          *(result + 2788) = v238;
          v247 = v245 >> 8;
          do
          {
            v248 = v245;
            v245 = v247 * silk_LTP_per_index_iCDF[v246++];
            v249 = v236 - v245;
          }

          while (v236 < v245);
          v250 = v248 - v245;
          *(a2 + 8) = v248 - v245;
          *(a2 + 9) = v249;
          v251 = v246 - 1;
          if (v248 - v245 < 0x800001)
          {
            v252 = *(a2 + 2);
            v253 = *(a2 + 11);
            v254 = *(a2 + 7);
            v255 = *(a2 + 6) + 8;
            do
            {
              *(a2 + 6) = v255;
              *(a2 + 8) = v250 << 8;
              if (v254 < v252)
              {
                v256 = *a2;
                *(a2 + 7) = v254 + 1;
                v257 = *(v256 + v254++);
              }

              else
              {
                v257 = 0;
              }

              v249 = (((v249 & 0x7FFFFF) << 8) | ((v257 | (v253 << 8)) >> 1)) ^ 0xFF;
              *(a2 + 11) = v257;
              *(a2 + 9) = v249;
              v255 += 8;
              v253 = v257;
              v22 = v250 > 0x8000;
              v250 <<= 8;
            }

            while (!v22);
          }

          *(result + 2792) = v251;
          if (v76 >= 1)
          {
            for (j = 0; j != v76; ++j)
            {
              v259 = 0;
              v260 = *(a2 + 8);
              v261 = *(a2 + 9);
              v262 = v260 >> 8;
              do
              {
                v263 = v260;
                v260 = v262 * *(*(&silk_LTP_gain_iCDF_ptrs + *(result + 2792)) + v259++);
                v264 = v261 - v260;
              }

              while (v261 < v260);
              v265 = v263 - v260;
              *(a2 + 8) = v263 - v260;
              *(a2 + 9) = v264;
              if (v263 - v260 < 0x800001)
              {
                v266 = *(a2 + 2);
                v267 = *(a2 + 11);
                v268 = *(a2 + 7);
                v269 = *(a2 + 6) + 8;
                do
                {
                  *(a2 + 6) = v269;
                  *(a2 + 8) = v265 << 8;
                  if (v268 < v266)
                  {
                    v270 = *a2;
                    *(a2 + 7) = v268 + 1;
                    v271 = *(v270 + v268++);
                  }

                  else
                  {
                    v271 = 0;
                  }

                  v264 = (((v264 & 0x7FFFFF) << 8) | ((v271 | (v267 << 8)) >> 1)) ^ 0xFF;
                  *(a2 + 11) = v271;
                  *(a2 + 9) = v264;
                  v269 += 8;
                  v267 = v271;
                  v22 = v265 > 0x8000;
                  v265 <<= 8;
                }

                while (!v22);
              }

              *(result + 2764 + j) = v259 - 1;
            }
          }

          if (a5)
          {
            v272 = 0;
          }

          else
          {
            v273 = 0;
            v274 = *(a2 + 8);
            v275 = *(a2 + 9);
            v276 = v274 >> 8;
            do
            {
              v277 = v274;
              v274 = v276 * silk_LTPscale_iCDF[v273++];
              v278 = v275 - v274;
            }

            while (v275 < v274);
            v279 = v277 - v274;
            *(a2 + 8) = v279;
            *(a2 + 9) = v278;
            v272 = v273 - 1;
            if (v279 < 0x800001)
            {
              v280 = *(a2 + 2);
              v281 = *(a2 + 11);
              v282 = *(a2 + 7);
              v283 = *(a2 + 6) + 8;
              do
              {
                *(a2 + 6) = v283;
                *(a2 + 8) = v279 << 8;
                if (v282 < v280)
                {
                  v284 = *a2;
                  *(a2 + 7) = v282 + 1;
                  v285 = *(v284 + v282++);
                }

                else
                {
                  v285 = 0;
                }

                v278 = (((v278 & 0x7FFFFF) << 8) | ((v285 | (v281 << 8)) >> 1)) ^ 0xFF;
                *(a2 + 11) = v285;
                *(a2 + 9) = v278;
                v283 += 8;
                v281 = v285;
                v22 = v279 > 0x8000;
                v279 <<= 8;
              }

              while (!v22);
            }
          }

          *(result + 2793) = v272;
          LOBYTE(v191) = *(result + 2789);
          goto LABEL_194;
        }
      }

      else
      {
        v197 = *(a2 + 9);
      }
    }

    else
    {
      v192 = *(a2 + 8);
      v197 = *(a2 + 9);
    }

    v207 = v192 >> 8;
    v208 = -1;
    v209 = &silk_pitch_lag_iCDF;
    do
    {
      v210 = v192;
      v211 = *v209++;
      v192 = v207 * v211;
      ++v208;
      v212 = v197 - v207 * v211;
    }

    while (v197 < v207 * v211);
    v213 = v210 - v192;
    *(a2 + 8) = v210 - v192;
    *(a2 + 9) = v212;
    if (v210 - v192 >= 0x800001)
    {
      v220 = v210 - v192;
    }

    else
    {
      v214 = *(a2 + 2);
      v215 = *(a2 + 11);
      v216 = *(a2 + 7);
      v217 = *(a2 + 6) + 8;
      do
      {
        *(a2 + 6) = v217;
        v220 = v213 << 8;
        *(a2 + 8) = v213 << 8;
        if (v216 < v214)
        {
          v218 = *a2;
          *(a2 + 7) = v216 + 1;
          v219 = *(v218 + v216++);
        }

        else
        {
          v219 = 0;
        }

        v212 = (((v212 & 0x7FFFFF) << 8) | ((v219 | (v215 << 8)) >> 1)) ^ 0xFF;
        *(a2 + 11) = v219;
        *(a2 + 9) = v212;
        v217 += 8;
        v215 = v219;
        v22 = v213 > 0x8000;
        v213 <<= 8;
      }

      while (!v22);
    }

    v221 = 0;
    v222 = (*(result + 2316) >> 1) * v208;
    *(result + 2786) = v222;
    v223 = v220 >> 8;
    do
    {
      v224 = v220;
      v220 = v223 * *(*(result + 2384) + v221++);
      v197 = v212 - v220;
    }

    while (v212 < v220);
    v225 = v224 - v220;
    *(a2 + 8) = v224 - v220;
    *(a2 + 9) = v197;
    v226 = v221 - 1;
    if (v224 - v220 >= 0x800001)
    {
      v192 = v224 - v220;
    }

    else
    {
      v227 = *(a2 + 2);
      v228 = *(a2 + 11);
      v229 = *(a2 + 7);
      v230 = *(a2 + 6) + 8;
      do
      {
        *(a2 + 6) = v230;
        v192 = v225 << 8;
        *(a2 + 8) = v225 << 8;
        if (v229 < v227)
        {
          v231 = *a2;
          *(a2 + 7) = v229 + 1;
          v232 = *(v231 + v229++);
        }

        else
        {
          v232 = 0;
        }

        v197 = (((v197 & 0x7FFFFF) << 8) | ((v232 | (v228 << 8)) >> 1)) ^ 0xFF;
        *(a2 + 11) = v232;
        *(a2 + 9) = v197;
        v230 += 8;
        v228 = v232;
        v22 = v225 > 0x8000;
        v225 <<= 8;
      }

      while (!v22);
    }

    v206 = v226 + v222;
    goto LABEL_155;
  }

LABEL_194:
  v286 = 0;
  *(result + 2408) = v191;
  v287 = *(a2 + 8);
  v288 = *(a2 + 9);
  v289 = v287 >> 8;
  do
  {
    v290 = v287;
    v287 = v289 * silk_uniform4_iCDF[v286++];
    v291 = v288 - v287;
  }

  while (v288 < v287);
  v292 = v290 - v287;
  *(a2 + 8) = v292;
  *(a2 + 9) = v291;
  v293 = v286 - 1;
  if (v292 < 0x800001)
  {
    v294 = *(a2 + 2);
    v295 = *(a2 + 11);
    v296 = *(a2 + 7);
    v297 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v297;
      *(a2 + 8) = v292 << 8;
      if (v296 < v294)
      {
        v298 = *a2;
        *(a2 + 7) = v296 + 1;
        v299 = *(v298 + v296++);
      }

      else
      {
        v299 = 0;
      }

      v291 = (((v291 & 0x7FFFFF) << 8) | ((v299 | (v295 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v299;
      *(a2 + 9) = v291;
      v297 += 8;
      v295 = v299;
      v22 = v292 > 0x8000;
      v292 <<= 8;
    }

    while (!v22);
  }

  *(result + 2794) = v293;
  return result;
}