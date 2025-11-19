void av1_calc_indices_dim1_neon(int16x8_t *a1, const __int16 *a2, int8x8_t *a3, void *a4, int a5, int a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a6 >= 1)
  {
    v6 = a6;
    v7 = v26;
    do
    {
      v8 = vld1q_dup_s16(a2++);
      *v7++ = v8;
      --v6;
    }

    while (v6);
  }

  if (a5 < 1)
  {
    goto LABEL_17;
  }

  v9 = v26[0];
  if (a4)
  {
    if (a6 <= 1)
    {
      v23 = 0;
      v11 = 0uLL;
      do
      {
        v24 = *a1++;
        v25 = vabdq_s16(v24, v9);
        v11 = vpadalq_s32(v11, vmlal_high_s16(vmull_s16(*v25.i8, *v25.i8), v25, v25));
        a3[v23++] = 0;
      }

      while ((v23 * 8) < a5);
    }

    else
    {
      v10 = 0;
      v11 = 0uLL;
      do
      {
        v12 = vabdq_s16(*a1, v9);
        v13 = 1;
        v14 = 0uLL;
        do
        {
          v15 = vabdq_s16(*a1, v26[v13]);
          v16 = vcgtq_s16(v12, v15);
          v12 = vminq_s16(v12, v15);
          v14 = vbslq_s8(v16, vdupq_n_s16(v13++), v14);
        }

        while (a6 != v13);
        v11 = vpadalq_s32(v11, vmlal_high_s16(vmull_s16(*v12.i8, *v12.i8), v12, v12));
        *a3++ = vmovn_s16(v14);
        ++a1;
        v10 += 8;
      }

      while (v10 < a5);
    }

    goto LABEL_20;
  }

  if (a6 > 1)
  {
    for (i = 0; i < a5; i += 8)
    {
      v18 = vabdq_s16(*a1, v9);
      v19 = 0uLL;
      for (j = 1; j != a6; v19 = vbslq_s8(v22, vdupq_n_s16(j++), v19))
      {
        v21 = vabdq_s16(*a1, v26[j]);
        v22 = vcgtq_s16(v18, v21);
        v18 = vminq_s16(v18, v21);
      }

      *a3++ = vmovn_s16(v19);
      ++a1;
    }

LABEL_17:
    v11 = 0uLL;
LABEL_20:
    if (a4)
    {
      *a4 = vaddvq_s64(v11);
    }

    return;
  }

  bzero(a3, ((a5 - 1) & 0xFFFFFFF8) + 8);
}

void av1_calc_indices_dim2_neon(int16x8_t *a1, unsigned __int16 *a2, int8x8_t *a3, void *a4, int a5, int a6, double a7, __n128 a8)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a6 >= 1)
  {
    v8 = a6;
    v9 = v49;
    do
    {
      a8.n128_u16[0] = *a2;
      a8.n128_u16[2] = a2[1];
      v52.val[1] = vdupq_lane_s16(a8.n128_u64[0], 2);
      v52.val[0] = vdupq_lane_s16(a8.n128_u64[0], 0);
      a8 = vqtbl2q_s8(v52, xmmword_273BDBD40);
      *v9++ = a8;
      a2 += 2;
      --v8;
    }

    while (v8);
  }

  if (a5 < 1)
  {
    goto LABEL_23;
  }

  v10 = v49[0];
  if (a6 >= 2)
  {
    v11 = 0;
    if (a4)
    {
      v12 = 0uLL;
      do
      {
        v13 = vsubq_s16(*a1, v10);
        v14 = vpaddq_s32(vmull_s16(*v13.i8, *v13.i8), vmull_high_s16(v13, v13));
        v15 = 1;
        v16 = 0uLL;
        do
        {
          v17 = vsubq_s16(*a1, v49[v15]);
          v18 = vpaddq_s32(vmull_s16(*v17.i8, *v17.i8), vmull_high_s16(v17, v17));
          v19 = vcgtq_s32(v14, v18);
          v14 = vminq_s32(v14, v18);
          v16 = vbslq_s8(v19, vdupq_n_s32(v15++), v16);
        }

        while (a6 != v15);
        v20 = a1[1];
        v21 = vsubq_s16(v20, v10);
        v22 = vpaddq_s32(vmull_s16(*v21.i8, *v21.i8), vmull_high_s16(v21, v21));
        v23 = 0uLL;
        for (i = 1; i != a6; v23 = vbslq_s8(v27, vdupq_n_s32(i++), v23))
        {
          v25 = vsubq_s16(v20, v49[i]);
          v26 = vpaddq_s32(vmull_s16(*v25.i8, *v25.i8), vmull_high_s16(v25, v25));
          v27 = vcgtq_s32(v22, v26);
          v22 = vminq_s32(v22, v26);
        }

        v12 = vpadalq_s32(vpadalq_s32(v12, v14), v22);
        a1 += 2;
        *a3++ = vmovn_s16(vuzp1q_s16(v16, v23));
        v11 += 8;
      }

      while (v11 < a5);
      goto LABEL_17;
    }

    do
    {
      v34 = vsubq_s16(*a1, v10);
      v35 = vpaddq_s32(vmull_s16(*v34.i8, *v34.i8), vmull_high_s16(v34, v34));
      v36 = 0uLL;
      for (j = 1; j != a6; v36 = vbslq_s8(v40, vdupq_n_s32(j++), v36))
      {
        v38 = vsubq_s16(*a1, v49[j]);
        v39 = vpaddq_s32(vmull_s16(*v38.i8, *v38.i8), vmull_high_s16(v38, v38));
        v40 = vcgtq_s32(v35, v39);
        v35 = vminq_s32(v35, v39);
      }

      v41 = a1[1];
      v42 = vsubq_s16(v41, v10);
      v43 = vpaddq_s32(vmull_s16(*v42.i8, *v42.i8), vmull_high_s16(v42, v42));
      v44 = 0uLL;
      for (k = 1; k != a6; v44 = vbslq_s8(v48, vdupq_n_s32(k++), v44))
      {
        v46 = vsubq_s16(v41, v49[k]);
        v47 = vpaddq_s32(vmull_s16(*v46.i8, *v46.i8), vmull_high_s16(v46, v46));
        v48 = vcgtq_s32(v43, v47);
        v43 = vminq_s32(v43, v47);
      }

      a1 += 2;
      *a3++ = vmovn_s16(vuzp1q_s16(v36, v44));
      v11 += 8;
    }

    while (v11 < a5);
LABEL_23:
    v12 = 0uLL;
    if (!a4)
    {
      return;
    }

LABEL_17:
    *a4 = vaddvq_s64(v12);
    return;
  }

  if (a4)
  {
    v28 = 0;
    v12 = 0uLL;
    do
    {
      v29 = *a1;
      v30 = a1[1];
      a1 += 2;
      v31 = vsubq_s16(v29, v10);
      v32 = vpadalq_s32(v12, vpaddq_s32(vmull_s16(*v31.i8, *v31.i8), vmull_high_s16(v31, v31)));
      v33 = vsubq_s16(v30, v10);
      v12 = vpadalq_s32(v32, vpaddq_s32(vmull_s16(*v33.i8, *v33.i8), vmull_high_s16(v33, v33)));
      a3[v28++] = 0;
    }

    while ((v28 * 8) < a5);
    goto LABEL_17;
  }

  bzero(a3, ((a5 - 1) & 0xFFFFFFF8) + 8);
}

uint64_t av1_loop_filter_frame_init(uint64_t result, int a2, int a3, double a4, int16x8_t a5, double a6, int16x8_t a7)
{
  v129 = *MEMORY[0x277D85DE8];
  v7 = (result + 18992);
  v8 = *(result + 23040);
  v9 = v8 > 4;
  if (v8 > 0)
  {
    ++v9;
  }

  v10 = 0;
  if (v8 <= 0)
  {
    v17 = (result + 19200);
    v18 = 4;
    do
    {
      v19 = v10 >> v9;
      if ((v10 >> v9) <= 1)
      {
        LOBYTE(v19) = 1;
      }

      v20 = 0x101010101010101 * v19;
      *v17 = v20;
      v17[1] = v20;
      v21 = 0x101010101010101 * (v19 + v18);
      *(v17 - 2) = v21;
      *(v17 - 1) = v21;
      ++v10;
      v17 += 6;
      v18 += 2;
    }

    while (v10 != 64);
  }

  else
  {
    v11 = 9 - v8;
    v12 = (result + 19200);
    v13 = 4;
    do
    {
      v14 = v10 >> v9;
      if ((v10 >> v9) >= v11)
      {
        v14 = v11;
      }

      if (v14 <= 1)
      {
        LOBYTE(v14) = 1;
      }

      v15 = 0x101010101010101 * v14;
      *v12 = v15;
      v12[1] = v15;
      v16 = 0x101010101010101 * (v14 + v13);
      *(v12 - 2) = v16;
      *(v12 - 1) = v16;
      ++v10;
      v12 += 6;
      v13 += 2;
    }

    while (v10 != 64);
  }

  v22 = *(result + 23024);
  v127 = v22;
  v23 = *(result + 23032);
  v128 = v23;
  v24 = *(result + 23028);
  v125 = v24;
  v126 = v23;
  if (a2 < a3)
  {
    v25 = v23;
    v26 = HIDWORD(v23);
    v27 = a2;
    v28 = result + 18996;
    v29 = a2 << 8;
    v30.i64[0] = 0x3F0000003FLL;
    v30.i64[1] = 0x3F0000003FLL;
    while (1)
    {
      if (!v27 && !v22 && !v24)
      {
        return result;
      }

      v31 = v27 == 2 && v26 == 0;
      v32 = !v31;
      v33 = !v25 && v27 == 1;
      if (!v33 && v32)
      {
        break;
      }

LABEL_17:
      ++v27;
      v29 += 256;
      if (v27 == a3)
      {
        return result;
      }
    }

    v34 = 0;
    v35 = *(&v127 + v27);
    v36 = &seg_lvl_lf_lut + 2 * v27;
    v37 = *v36;
    v38 = *(&v125 + v27);
    v39 = 1 << v37;
    v40 = v36[1];
    v41 = 1 << v40;
    v42 = 2 * v37;
    v43 = 2 * v40;
    v44 = v29;
    while (1)
    {
      v47 = v28 + 4 * v34;
      v48 = v35;
      if (*v7)
      {
        v48 = v35;
        if ((*(v47 + 128) & v39) != 0)
        {
          v49 = v35 + *(v28 + v42);
          if (v49 >= 0x3F)
          {
            v50 = 63;
          }

          else
          {
            v50 = v35 + *(v28 + v42);
          }

          if (v49 >= 0)
          {
            v48 = v50;
          }

          else
          {
            v48 = 0;
          }
        }
      }

      if (v7[4052])
      {
        break;
      }

      v86 = (v28 + v44 + 3260);
      v87 = 0x101010101010101 * v48;
      *v86 = v87;
      v86[1] = v87;
      v85 = v38;
      if (*v7)
      {
        goto LABEL_87;
      }

LABEL_94:
      if (v7[4052])
      {
        v90 = v85 >> 5;
        v91 = (v7[4054] << (v85 >> 5)) + v85;
        if (v91 >= 0x3F)
        {
          LOBYTE(v92) = 63;
        }

        else
        {
          v92 = (v7[4054] << (v85 >> 5)) + v85;
        }

        if (v91 >= 0)
        {
          v93 = v92;
        }

        else
        {
          v93 = 0;
        }

        v94 = (v28 + v44);
        *(v28 + v44 + 3276) = v93;
        v95 = v7[4062];
        v96 = v7[4063];
        a5.i64[0] = __PAIR64__(v96, v95);
        a5.i32[2] = v95;
        v97 = a5;
        v97.i32[3] = v7[4058];
        a5.i32[3] = v96;
        a7.i32[0] = v7[4055];
        a7.i32[2] = v7[4056];
        v98.i32[0] = v7[4057];
        v98.i32[1] = v98.i32[0];
        v98.i64[1] = __PAIR64__(v96, v97.u32[3]);
        v99 = vaddq_s32(a5, vtrn1q_s32(a7, a7));
        v100 = vdupq_n_s32(v90);
        v101 = vshlq_u32(vaddq_s32(v97, v98), v100);
        v102 = vshlq_u32(v99, v100);
        v103 = vdupq_n_s32(v85);
        v104 = vaddq_s32(v102, v103);
        v105 = vaddq_s32(v101, v103);
        a7 = vuzp1q_s16(vcltzq_s32(v104), vcltzq_s32(v105));
        *a7.i8 = vmovn_s16(a7);
        a5 = vuzp1q_s16(vminq_u32(v104, v30), vminq_u32(v105, v30));
        *(v28 + v44 + 3278) = vbic_s8(vmovn_s16(a5), *a7.i8);
        v106 = v7[4059];
        v107 = ((v106 + v95) << v90) + v85;
        if (v107 >= 0x3F)
        {
          LOBYTE(v108) = 63;
        }

        else
        {
          v108 = ((v106 + v95) << v90) + v85;
        }

        if (v107 >= 0)
        {
          v109 = v108;
        }

        else
        {
          v109 = 0;
        }

        v94[3286] = v109;
        v110 = ((v106 + v96) << v90) + v85;
        if (v110 >= 0x3F)
        {
          v111 = 63;
        }

        else
        {
          v111 = v110;
        }

        if (v110 >= 0)
        {
          v112 = v111;
        }

        else
        {
          v112 = 0;
        }

        v94[3287] = v112;
        v113 = ((v7[4060] + v95) << v90) + v85;
        if (v113 >= 0x3F)
        {
          LOBYTE(v114) = 63;
        }

        else
        {
          v114 = ((v7[4060] + v95) << v90) + v85;
        }

        if (v113 >= 0)
        {
          v115 = v114;
        }

        else
        {
          v115 = 0;
        }

        v94[3288] = v115;
        v116 = ((v7[4060] + v96) << v90) + v85;
        if (v116 >= 0x3F)
        {
          LOBYTE(v117) = 63;
        }

        else
        {
          v117 = ((v7[4060] + v96) << v90) + v85;
        }

        if (v116 >= 0)
        {
          v118 = v117;
        }

        else
        {
          v118 = 0;
        }

        v94[3289] = v118;
        v119 = v7[4061];
        v120 = ((v119 + v95) << v90) + v85;
        if (v120 >= 0x3F)
        {
          result = 63;
        }

        else
        {
          result = v120;
        }

        if (v120 >= 0)
        {
          v121 = result;
        }

        else
        {
          v121 = 0;
        }

        v94[3290] = v121;
        v122 = ((v119 + v96) << v90) + v85;
        if (v122 >= 0x3F)
        {
          v123 = 63;
        }

        else
        {
          v123 = v122;
        }

        if (v122 >= 0)
        {
          v124 = v123;
        }

        else
        {
          v124 = 0;
        }

        v94[3291] = v124;
        ++v34;
        v44 += 32;
        v42 += 16;
        v43 += 16;
        if (v34 == 8)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v45 = (v28 + v44 + 3276);
        v46 = 0x101010101010101 * v85;
        *v45 = v46;
        v45[1] = v46;
        ++v34;
        v44 += 32;
        v42 += 16;
        v43 += 16;
        if (v34 == 8)
        {
          goto LABEL_17;
        }
      }
    }

    v51 = v48 >> 5;
    v52 = (v7[4054] << (v48 >> 5)) + v48;
    if (v52 >= 0x3F)
    {
      LOBYTE(v53) = 63;
    }

    else
    {
      v53 = (v7[4054] << (v48 >> 5)) + v48;
    }

    if (v52 < 0)
    {
      LOBYTE(v53) = 0;
    }

    v54 = (v28 + v44);
    *(v28 + v44 + 3260) = v53;
    v55 = v7[4062];
    v56 = v7[4063];
    a5.i64[0] = __PAIR64__(v56, v55);
    a5.i32[2] = v55;
    v57 = a5;
    v57.i32[3] = v7[4058];
    a5.i32[3] = v56;
    a7.i32[0] = v7[4055];
    a7.i32[2] = v7[4056];
    v58.i32[0] = v7[4057];
    v58.i32[1] = v58.i32[0];
    v58.i64[1] = __PAIR64__(v56, v57.u32[3]);
    v59 = vaddq_s32(a5, vtrn1q_s32(a7, a7));
    v60 = vdupq_n_s32(v51);
    v61 = vshlq_u32(vaddq_s32(v57, v58), v60);
    v62 = vshlq_u32(v59, v60);
    v63 = vdupq_n_s32(v48);
    v64 = vaddq_s32(v62, v63);
    v65 = vaddq_s32(v61, v63);
    a7 = vuzp1q_s16(vcltzq_s32(v64), vcltzq_s32(v65));
    *a7.i8 = vmovn_s16(a7);
    a5 = vuzp1q_s16(vminq_u32(v64, v30), vminq_u32(v65, v30));
    *(v28 + v44 + 3262) = vbic_s8(vmovn_s16(a5), *a7.i8);
    v66 = v7[4059];
    v67 = ((v66 + v55) << v51) + v48;
    if (v67 >= 0x3F)
    {
      LOBYTE(v68) = 63;
    }

    else
    {
      v68 = ((v66 + v55) << v51) + v48;
    }

    if (v67 >= 0)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    v54[3270] = v69;
    v70 = ((v66 + v56) << v51) + v48;
    if (v70 >= 0x3F)
    {
      v71 = 63;
    }

    else
    {
      v71 = v70;
    }

    if (v70 >= 0)
    {
      v72 = v71;
    }

    else
    {
      v72 = 0;
    }

    v54[3271] = v72;
    v73 = ((v7[4060] + v55) << v51) + v48;
    if (v73 >= 0x3F)
    {
      LOBYTE(v74) = 63;
    }

    else
    {
      v74 = ((v7[4060] + v55) << v51) + v48;
    }

    if (v73 >= 0)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    v54[3272] = v75;
    v76 = ((v7[4060] + v56) << v51) + v48;
    if (v76 >= 0x3F)
    {
      LOBYTE(v77) = 63;
    }

    else
    {
      v77 = ((v7[4060] + v56) << v51) + v48;
    }

    if (v76 >= 0)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    v54[3273] = v78;
    v79 = v7[4061];
    v80 = ((v79 + v55) << v51) + v48;
    if (v80 >= 0x3F)
    {
      result = 63;
    }

    else
    {
      result = v80;
    }

    if (v80 >= 0)
    {
      v81 = result;
    }

    else
    {
      v81 = 0;
    }

    v54[3274] = v81;
    v82 = ((v79 + v56) << v51) + v48;
    if (v82 >= 0x3F)
    {
      v83 = 63;
    }

    else
    {
      v83 = v82;
    }

    if (v82 >= 0)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    v54[3275] = v84;
    v85 = v38;
    if (!*v7)
    {
      goto LABEL_94;
    }

LABEL_87:
    v85 = v38;
    if ((*(v47 + 128) & v41) != 0)
    {
      v88 = v38 + *(v28 + v43);
      if (v88 >= 0x3F)
      {
        v89 = 63;
      }

      else
      {
        v89 = v38 + *(v28 + v43);
      }

      if (v88 >= 0)
      {
        v85 = v89;
      }

      else
      {
        v85 = 0;
      }
    }

    goto LABEL_94;
  }

  return result;
}

void av1_filter_block_plane_vert(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a4 + 4);
  v7 = *(a4 + 8);
  v9 = ((*(a1 + 532) + (1 << v7 >> 1)) >> v7) - (a5 >> v7);
  LODWORD(v10) = 0x20u >> v7;
  if (v9 >= (0x20u >> v7))
  {
    v10 = v10;
  }

  else
  {
    v10 = v9;
  }

  v8 = (*(a1 + 536) + (1 << v6 >> 1)) >> v6;
  if ((v8 - (a6 >> v6)) >= (0x20u >> v6))
  {
    v11 = 0x20u >> v6;
  }

  else
  {
    v11 = v8 - (a6 >> v6);
  }

  v29 = v10;
  if (v10 >= 1 && v11 >= 1)
  {
    v15 = 0;
    v28 = *(a4 + 16);
    v31 = *(a4 + 40);
    v16 = (4 * a6) >> v6;
    v17 = (4 * a5) >> v7;
    v18 = 1 << v6;
    do
    {
      v19 = 0;
      v30 = v15;
      v20 = 4 * v15;
      v21 = v28 + 4 * v15 * v31;
      do
      {
        v34 = 0;
        v35 = 0;
        v23 = set_lpf_parameters(&v34, v18, a1, a2, 0, v16 + 4 * v19, v17 + v20, a3, a4);
        v24 = v34 - 4;
        if (v23 == 255)
        {
          v24 = -4;
          v25 = 0;
        }

        else
        {
          v25 = v23;
        }

        HIDWORD(v27) = v24;
        LODWORD(v27) = v24;
        v26 = v27 >> 1;
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            aom_lpf_vertical_8_neon(v21, v31, v35, v35 + 16, v35 + 32);
          }

          else if (v26 == 5)
          {
            aom_lpf_vertical_14_neon(v21, v31, v35, v35 + 16, v35 + 32);
          }
        }

        else if (v26)
        {
          if (v26 == 1)
          {
            aom_lpf_vertical_6_neon(v21, v31, v35, v35 + 16, v35 + 32);
          }
        }

        else
        {
          aom_lpf_vertical_4_neon(v21, v31, v35, v35 + 16, v35 + 32);
        }

        v22 = tx_size_wide_unit[v25];
        v19 += v22;
        v21 += (4 * v22);
      }

      while (v19 < v11);
      v15 = v30 + 1;
    }

    while (v30 + 1 != v29);
  }
}

uint64_t set_lpf_parameters(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, _DWORD *a9)
{
  *a1 = 0;
  if (a9[8] <= a6 || a9[9] <= a7)
  {
    return 0;
  }

  v9 = a9[1];
  v10 = a9[2];
  v11 = v10 | (a7 << v10 >> 2);
  v12 = v9 | (a6 << v9 >> 2);
  v13 = (*(a3 + 568) + 8 * v11 * *(a3 + 580) + 8 * v12);
  v14 = *v13;
  if (!*v13)
  {
    return 255;
  }

  v15 = v9;
  v16 = v10;
  if (a4 && *(a4 + 4 * (*(v14 + 167) & 7) + 10692))
  {
    v17 = a1;
    result = 0;
  }

  else
  {
    v17 = a1;
    if (a8)
    {
      result = max_txsize_rect_lookup[av1_ss_size_lookup[4 * *v14 + 2 * v15 + v10]];
      if (result > 0x10)
      {
        if (result == 17)
        {
          result = 9;
        }

        else if (result == 18)
        {
          result = 10;
        }
      }

      else if ((result - 11) < 2 || result == 4)
      {
        result = 3;
      }
    }

    else
    {
      result = v14[145];
      if (((*(v14 + 167) & 0x80) != 0 || v14[16] >= 1) && !v14[144])
      {
        v20 = *v14;
        result = v14[(((mi_size_wide_4[v20] - 1) & v12) >> av1_get_txb_size_index_tw_w_log2_table[v20]) + 146 + (((mi_size_high_3[v20] - 1) & v11) >> av1_get_txb_size_index_tw_h_log2_table[v20] << av1_get_txb_size_index_stride_log2_table[v20])];
      }
    }
  }

  v21 = &tx_size_high_1;
  if (a5)
  {
    v22 = a7;
  }

  else
  {
    v22 = a6;
  }

  if (!a5)
  {
    v21 = &tx_size_wide_2;
  }

  if (((v21[result] - 1) & v22) == 0)
  {
    v55 = result;
    v54 = v17;
    v25 = a3 + 19184;
    filter_level = get_filter_level(a3, a3 + 19184, a5, a8, v14);
    if (v14[144])
    {
      v27 = (*(v14 + 167) & 0x80) != 0 || v14[16] > 0;
    }

    else
    {
      v27 = 0;
    }

    v29 = a8;
    v28 = a5;
    result = v55;
    if (v22)
    {
      v30 = v13[-a2];
      if (v30)
      {
        v52 = v27;
        v31 = -1 << v16;
        if (!a5)
        {
          v31 = 0;
        }

        v32 = v15;
        v33 = -1 << v15;
        if (a5)
        {
          v33 = 0;
        }

        if (a4 && *(a4 + 4 * (*(v30 + 167) & 7) + 10692))
        {
          v34 = filter_level;
          v35 = 0;
          v36 = a3;
          v37 = v16;
        }

        else
        {
          v34 = filter_level;
          if (a8)
          {
            v37 = v16;
            max_uv_txsize = av1_get_max_uv_txsize(*v30, v32, v16);
            v29 = a8;
            v28 = a5;
            v35 = max_uv_txsize;
          }

          else
          {
            v35 = v30[145];
            v37 = v16;
            if ((*(v30 + 167) & 0x80) != 0 || v30[16] >= 1)
            {
              v36 = a3;
              if (!v30[144])
              {
                v39 = *v30;
                v35 = v30[(((mi_size_wide_4[v39] - 1) & (v12 + v33)) >> av1_get_txb_size_index_tw_w_log2_table[v39]) + 146 + (((mi_size_high_3[v39] - 1) & (v11 + v31)) >> av1_get_txb_size_index_tw_h_log2_table[v39] << av1_get_txb_size_index_stride_log2_table[v39])];
              }

              goto LABEL_53;
            }
          }

          v36 = a3;
        }

LABEL_53:
        v40 = v35;
        v41 = get_filter_level(v36, v25, v28, v29, v30);
        if (v30[144])
        {
          v42 = v25;
          v43 = v54;
          result = v55;
          v44 = (*(v30 + 167) & 0x80) != 0 || v30[16] > 0;
          v45 = a8;
          v46 = a5;
        }

        else
        {
          v42 = v25;
          v44 = 0;
          v43 = v54;
          v45 = a8;
          v46 = a5;
          result = v55;
        }

        if (v34 | v41)
        {
          v47 = &block_size_high;
          if (!v46)
          {
            v47 = &block_size_wide_0;
          }

          if (!v44 || !v52 || ((v47[av1_ss_size_lookup[4 * *v14 + 2 * v32 + v37]] - 1) & v22) == 0)
          {
            v48 = &tx_size_high_unit_log2;
            if (!v46)
            {
              v48 = &tx_size_wide_unit_log2;
            }

            v49 = v48[result];
            v50 = v48[v40];
            if (v49 < v50)
            {
              v50 = v49;
            }

            if (v45)
            {
              if (v50)
              {
                LOBYTE(v51) = 6;
              }

              else
              {
                LOBYTE(v51) = 4;
              }
            }

            else
            {
              v51 = tx_dim_to_filter_length[v50];
            }

            *v43 = v51;
            if (v51)
            {
              if (v34)
              {
                v41 = v34;
              }

              *(v43 + 1) = v42 + 48 * v41;
            }
          }
        }

        return result;
      }

      return 255;
    }
  }

  return result;
}

int16x4_t filter_vert(uint64_t a1, int a2, unsigned __int8 a3, uint64_t a4, int a5)
{
  HIDWORD(v7) = a3 - 4;
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 1;
  if (a5 == 1)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          return result;
        }

        v10 = (a4 + 16);
        v11 = (a4 + 32);
        v12 = (a4 + 16);
        v13 = (a4 + 32);
        goto LABEL_11;
      }

      v25 = (a4 + 16);
      v26 = (a4 + 32);
      v27 = (a4 + 16);
      v28 = (a4 + 32);
      goto LABEL_38;
    }

    if (v6 != 2)
    {
      if (v6 != 5)
      {
        return result;
      }

      v18 = (a4 + 16);
      v19 = (a4 + 32);
      v20 = (a4 + 16);
      v21 = (a4 + 32);
      goto LABEL_26;
    }

    v31 = (a4 + 16);
    v32 = (a4 + 32);
    v33 = (a4 + 16);
    v34 = (a4 + 32);
    goto LABEL_42;
  }

  if (a5 == 2)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          return result;
        }

        v8 = a1;
        v9 = a2;
        aom_lpf_vertical_6_dual_neon(a1, a2, a4, (a4 + 16), (a4 + 32), a4, (a4 + 16), (a4 + 32));
        a1 = v8 + 8 * v9;
        v10 = (a4 + 16);
        v11 = (a4 + 32);
        v12 = (a4 + 16);
        v13 = (a4 + 32);
        a2 = v9;
LABEL_11:

        return aom_lpf_vertical_6_dual_neon(a1, a2, a4, v10, v11, a4, v12, v13);
      }

      v23 = a1;
      v24 = a2;
      aom_lpf_vertical_4_dual_neon(a1, a2, a4, (a4 + 16), (a4 + 32), a4, (a4 + 16), (a4 + 32));
      a1 = v23 + 8 * v24;
      v25 = (a4 + 16);
      v26 = (a4 + 32);
      v27 = (a4 + 16);
      v28 = (a4 + 32);
      a2 = v24;
LABEL_38:

      return aom_lpf_vertical_4_dual_neon(a1, a2, a4, v25, v26, a4, v27, v28);
    }

    if (v6 != 2)
    {
      if (v6 != 5)
      {
        return result;
      }

      v16 = a1;
      v17 = a2;
      aom_lpf_vertical_14_dual_neon(a1, a2, a4, (a4 + 16), (a4 + 32), a4, (a4 + 16), (a4 + 32));
      a1 = v16 + 8 * v17;
      v18 = (a4 + 16);
      v19 = (a4 + 32);
      v20 = (a4 + 16);
      v21 = (a4 + 32);
      a2 = v17;
LABEL_26:

      return aom_lpf_vertical_14_dual_neon(a1, a2, a4, v18, v19, a4, v20, v21);
    }

    v29 = a1;
    v30 = a2;
    aom_lpf_vertical_8_dual_neon(a1, a2, a4, (a4 + 16), (a4 + 32), a4, (a4 + 16), (a4 + 32));
    a1 = v29 + 8 * v30;
    v31 = (a4 + 16);
    v32 = (a4 + 32);
    v33 = (a4 + 16);
    v34 = (a4 + 32);
    a2 = v30;
LABEL_42:

    return aom_lpf_vertical_8_dual_neon(a1, a2, a4, v31, v32, a4, v33, v34);
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v36 = (a4 + 16);

      return aom_lpf_vertical_8_neon(a1, a2, a4, v36, (a4 + 32));
    }

    else if (v6 == 5)
    {
      v22 = (a4 + 16);

      return aom_lpf_vertical_14_neon(a1, a2, a4, v22, (a4 + 32));
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v15 = (a4 + 16);

      return aom_lpf_vertical_6_neon(a1, a2, a4, v15, (a4 + 32));
    }
  }

  else
  {
    v35 = (a4 + 16);

    return aom_lpf_vertical_4_neon(a1, a2, a4, v35, (a4 + 32));
  }

  return result;
}

void av1_filter_block_plane_vert_opt(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, _BYTE *a7, char a8)
{
  v8 = (*(a3 + 32) + 3) >> 2;
  v9 = 1 << a8;
  if (((*(a3 + 36) + 3) >> 2) - a4 < 1 << a8)
  {
    v9 = ((*(a3 + 36) + 3) >> 2) - a4;
  }

  v102 = v8 - a5;
  if ((v8 - a5) >= 32)
  {
    v10 = 32;
  }

  else
  {
    v10 = v8 - a5;
  }

  v110 = v10;
  if (v9 >= 1)
  {
    v11 = a2;
    v13 = 0;
    v14 = (a1 + 24376);
    v15 = a1 + 18992;
    v92 = *(a3 + 16);
    v16 = *(a3 + 40);
    v17 = v110 + a5;
    v98 = a5;
    v18 = a2 + 10692;
    v91 = a5 - 1;
    v19 = a1 + 19184;
    v20 = a1 + 19124;
    v21 = a1 + 18996;
    v109 = a1 + 23046;
    v107 = a1 + 23054;
    v108 = a1 + 22256;
    v104 = a7;
    v101 = a5;
    v105 = v9;
    v95 = a1 + 19124;
    v96 = a1 + 19184;
    v94 = a1 + 18996;
    v99 = v110 + a5;
    v97 = a2 + 10692;
    do
    {
      v22 = v13 + a4;
      *a6 = 0;
      v23 = *(a1 + 568) + 8 * (*(a1 + 580) * (v13 + a4)) + 8 * v98;
      v24 = *v23;
      v25 = *(*v23 + 167);
      if (v11 && *(v18 + 4 * (v25 & 7)))
      {
        v26 = 0;
        if (!a5)
        {
          goto LABEL_24;
        }

        v27 = *(v23 - 8);
      }

      else
      {
        v26 = v24[145];
        if (((v25 & 0x80) != 0 || v24[16] >= 1) && !v24[144])
        {
          v34 = *v24;
          v26 = v24[(((mi_size_wide_4[v34] - 1) & a5) >> av1_get_txb_size_index_tw_w_log2_table[v34]) + 146 + (((mi_size_high_3[v34] - 1) & v22) >> av1_get_txb_size_index_tw_h_log2_table[v34] << av1_get_txb_size_index_stride_log2_table[v34])];
          if (!a5)
          {
LABEL_24:
            v30 = 128;
            goto LABEL_86;
          }
        }

        else if (!a5)
        {
          goto LABEL_24;
        }

        v27 = *(v23 - 8);
        if (!v11)
        {
          v28 = *(v27 + 167);
          goto LABEL_26;
        }
      }

      v28 = *(v27 + 167);
      if (*(v18 + 4 * (v28 & 7)))
      {
        v29 = 0;
        v30 = block_size_high[*v27];
        v31 = v25 & 7;
        if (!*v14)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

LABEL_26:
      v29 = v27[145];
      if (((v28 & 0x80) != 0 || v27[16] >= 1) && !v27[144])
      {
        v50 = *v27;
        v29 = v27[(((mi_size_wide_4[v50] - 1) & v91) >> av1_get_txb_size_index_tw_w_log2_table[v50]) + 146 + (((mi_size_high_3[v50] - 1) & v22) >> av1_get_txb_size_index_tw_h_log2_table[v50] << av1_get_txb_size_index_stride_log2_table[v50])];
        v30 = block_size_high[v50];
        v31 = v25 & 7;
        if (!*v14)
        {
LABEL_20:
          v32 = v24[16];
          v33 = *(v108 + 32 * v31 + 2 * v32 + mode_lf_lut_0[v24[2]]);
          if (*(v108 + 32 * v31 + 2 * v32 + mode_lf_lut_0[v24[2]]))
          {
            if (v27 == v24)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v33 = *(v108 + 32 * (v28 & 7) + 2 * v27[16] + mode_lf_lut_0[v27[2]]);
            if (v27 == v24)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_84;
        }
      }

      else
      {
        v30 = block_size_high[*v27];
        v31 = v25 & 7;
        if (!*v14)
        {
          goto LABEL_20;
        }
      }

LABEL_30:
      v93 = v29;
      if (v14[2])
      {
        v35 = 163;
      }

      else
      {
        v35 = 162;
      }

      v36 = *(v15 + 4032);
      v37 = v36 + v24[v35];
      if (v37 >= 0x3F)
      {
        v38 = 63;
      }

      else
      {
        v38 = v36 + v24[v35];
      }

      if (v37 < 0)
      {
        v38 = 0;
      }

      if (*v15 && (*(v20 + 4 * v31) & 2) != 0)
      {
        v39 = v38 + *(v21 + 16 * v31 + 2);
        v38 = v39 >= 0x3F ? 63 : v39;
        if (v39 < 0)
        {
          v38 = 0;
        }
      }

      if (*(v15 + 4052))
      {
        v40 = v24[16];
        v41 = *(v109 + v40);
        if (v40 >= 1)
        {
          v41 += *(v107 + mode_lf_lut_0[v24[2]]);
        }

        v42 = (v41 << (v38 >> 5)) + v38;
        if (v42 >= 0x3F)
        {
          v38 = 63;
        }

        else
        {
          v38 += v41 << (v38 >> 5);
        }

        if ((v42 & 0x80000000) != 0)
        {
          goto LABEL_55;
        }
      }

      if (!v38)
      {
LABEL_55:
        v43 = v36 + v27[v35];
        if (v43 >= 0x3F)
        {
          v44 = 63;
        }

        else
        {
          v44 = v43;
        }

        if (v43 >= 0)
        {
          v33 = v44;
        }

        else
        {
          v33 = 0;
        }

        if (*v15)
        {
          v45 = v28 & 7;
          if ((*(v20 + 4 * v45) & 2) != 0)
          {
            v46 = v33 + *(v21 + 16 * v45 + 2);
            v33 = v46 >= 0x3F ? 63 : v46;
            if (v46 < 0)
            {
              v33 = 0;
            }
          }
        }

        v29 = v93;
        if (*(v15 + 4052))
        {
          v47 = v27[16];
          v48 = *(v109 + v47);
          if (v47 >= 1)
          {
            v48 += *(v107 + mode_lf_lut_0[v27[2]]);
          }

          v49 = (v48 << (v33 >> 5)) + v33;
          if (v49 >= 0x3F)
          {
            LOBYTE(v33) = 63;
          }

          else
          {
            LOBYTE(v33) = v49;
          }

          if (v49 < 0)
          {
            LOBYTE(v33) = 0;
          }
        }

        v33 = v33;
        if (v27 == v24)
        {
LABEL_81:
          if (v24[144] && ((v25 & 0x80) != 0 || v24[16] >= 1))
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        v33 = v38;
        v29 = v93;
        if (v27 == v24)
        {
          goto LABEL_81;
        }
      }

LABEL_84:
      if (v33)
      {
        *a6 = vert_filter_length_luma[19 * v26 + v29];
        *(a6 + 8) = v19 + 48 * v33;
      }

LABEL_86:
      v51 = block_size_high[*v24];
      if (v30 < v51)
      {
        v51 = v30;
      }

      *a7 = v26;
      v52 = tx_size_wide_unit[v26];
      v53 = v52 + a5;
      if (v52 + a5 < v17)
      {
        v54 = &a7[v52];
        v55 = a6 + 16 * v52;
        do
        {
          v57 = v26;
          *v55 = 0;
          v58 = *(a1 + 568) + 8 * (*(a1 + 580) * v22) + 8 * v53;
          v59 = *v58;
          v60 = *(*v58 + 167);
          if (v11 && *(v18 + 4 * (v60 & 7)))
          {
            v26 = 0;
            v61 = *(v58 - 8);
            v62 = v60 & 7;
            if (!*v14)
            {
              goto LABEL_96;
            }
          }

          else
          {
            v26 = v59[145];
            if (((v60 & 0x80) != 0 || v59[16] >= 1) && !v59[144])
            {
              v81 = *v59;
              v26 = v59[(((mi_size_wide_4[v81] - 1) & v53) >> av1_get_txb_size_index_tw_w_log2_table[v81]) + 146 + (((mi_size_high_3[v81] - 1) & v22) >> av1_get_txb_size_index_tw_h_log2_table[v81] << av1_get_txb_size_index_stride_log2_table[v81])];
              v61 = *(v58 - 8);
              v62 = v60 & 7;
              if (!*v14)
              {
LABEL_96:
                v63 = *(v108 + 32 * v62 + 2 * v59[16] + mode_lf_lut_0[v59[2]]);
                if (*(v108 + 32 * v62 + 2 * v59[16] + mode_lf_lut_0[v59[2]]))
                {
                  if (v61 != v59)
                  {
                    goto LABEL_158;
                  }
                }

                else
                {
                  v63 = *(v108 + 32 * (*(v61 + 167) & 7) + 2 * *(v61 + 16) + mode_lf_lut_0[*(v61 + 2)]);
                  if (v61 != v59)
                  {
                    goto LABEL_158;
                  }
                }

                goto LABEL_155;
              }
            }

            else
            {
              v61 = *(v58 - 8);
              v62 = v60 & 7;
              if (!*v14)
              {
                goto LABEL_96;
              }
            }
          }

          v64 = 162;
          if (v14[2])
          {
            v64 = 163;
          }

          v65 = *(v15 + 4032);
          v66 = v65 + v59[v64];
          if (v66 >= 0x3F)
          {
            v67 = 63;
          }

          else
          {
            v67 = v65 + v59[v64];
          }

          if (v66 < 0)
          {
            v67 = 0;
          }

          if (*v15 && (*(v20 + 4 * v62) & 2) != 0)
          {
            v68 = v67 + *(v21 + 16 * v62 + 2);
            v67 = v68 >= 0x3F ? 63 : v68;
            if (v68 < 0)
            {
              v67 = 0;
            }
          }

          if (*(v15 + 4052))
          {
            v69 = v59[16];
            v70 = *(v109 + v69);
            if (v69 >= 1)
            {
              v70 += *(v107 + mode_lf_lut_0[v59[2]]);
            }

            v71 = (v70 << (v67 >> 5)) + v67;
            v67 = v71 >= 0x3F ? 63 : v71;
            if ((v71 & 0x80000000) != 0)
            {
              goto LABEL_127;
            }
          }

          if (!v67)
          {
LABEL_127:
            v72 = v65 + *(v61 + v64);
            if (v72 >= 0x3F)
            {
              v73 = 63;
            }

            else
            {
              v73 = v72;
            }

            if (v72 >= 0)
            {
              v63 = v73;
            }

            else
            {
              v63 = 0;
            }

            if (*v15)
            {
              v74 = *(v61 + 167) & 7;
              if ((*(v20 + 4 * v74) & 2) != 0)
              {
                v75 = v63 + *(v21 + 16 * v74 + 2);
                if (v75 >= 0x3F)
                {
                  v76 = 63;
                }

                else
                {
                  v76 = v75;
                }

                if (v75 >= 0)
                {
                  v63 = v76;
                }

                else
                {
                  v63 = 0;
                }
              }
            }

            if (*(v15 + 4052))
            {
              v77 = *(v61 + 16);
              v78 = *(v109 + v77);
              if (v77 >= 1)
              {
                v78 += *(v107 + mode_lf_lut_0[*(v61 + 2)]);
              }

              v79 = (v78 << (v63 >> 5)) + v63;
              if (v79 >= 0x3F)
              {
                v80 = 63;
              }

              else
              {
                v80 = v79;
              }

              if (v79 >= 0)
              {
                LOBYTE(v63) = v80;
              }

              else
              {
                LOBYTE(v63) = 0;
              }
            }

            v63 = v63;
            if (v61 != v59)
            {
LABEL_158:
              if (v63)
              {
                *v55 = vert_filter_length_luma[19 * v26 + v57];
                *(v55 + 8) = v19 + 48 * v63;
              }

              goto LABEL_90;
            }
          }

          else
          {
            v63 = v67;
            if (v61 != v59)
            {
              goto LABEL_158;
            }
          }

LABEL_155:
          if (!v59[144] || (v60 & 0x80) == 0 && v59[16] < 1)
          {
            goto LABEL_158;
          }

LABEL_90:
          if (v51 >= block_size_high[*v59])
          {
            v51 = block_size_high[*v59];
          }

          *v54 = v26;
          v56 = tx_size_wide_unit[v26];
          v53 += v56;
          v55 += 16 * v56;
          v54 += v56;
        }

        while (v53 < v17);
      }

      if ((v13 & 3) != 0 || (v85 = v13 | 3, (v13 | 3) >= v105) || v51 <= 15)
      {
        v82 = v13 + 1 < v105;
        v83 = v51 > 7;
        v84 = v82 && v83;
        if (v82 && v83)
        {
          v85 = v13 + 1;
        }

        else
        {
          v85 = v13;
        }

        if (v102 >= 1)
        {
LABEL_165:
          v86 = 0;
          v87 = v92 + 4 * v16 * v13;
          v88 = v104;
          v89 = a6;
          do
          {
            if (*v88 == 255)
            {
              *v89 = 0;
              *v88 = 0;
            }

            filter_vert(v87, v16, *v89, *(v89 + 8), v84);
            v90 = tx_size_wide_unit[*v88];
            v86 += v90;
            v87 += (4 * v90);
            v89 += 16 * v90;
            v88 += v90;
          }

          while (v86 < v110);
        }
      }

      else
      {
        v84 = 2;
        if (v102 >= 1)
        {
          goto LABEL_165;
        }
      }

      v13 = v85 + 1;
      a7 = v104;
      a5 = v101;
      v11 = a2;
      v17 = v99;
      v19 = v96;
      v18 = v97;
      v21 = v94;
      v20 = v95;
    }

    while (v13 < v105);
  }
}

void av1_filter_block_plane_vert_opt_chroma(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned __int8 *a6, _BYTE *a7, int a8, char a9, __int16 a10, char a11)
{
  v12 = *(a3 + 4);
  v11 = *(a3 + 8);
  v13 = (((((*(a3 + 36) << v11) + 3) >> 2) + (1 << v11 >> 1)) >> v11) - (a4 >> v11);
  if (v13 >= 1 << a11 >> v11)
  {
    v13 = 1 << a11 >> v11;
  }

  v14 = (((((*(a3 + 32) << v12) + 3) >> 2) + (1 << v12 >> 1)) >> v12) - (a5 >> v12);
  v119 = *(a3 + 4);
  if (v14 >= (0x20u >> v12))
  {
    v14 = 0x20u >> v12;
  }

  v147 = v14;
  v124 = v13;
  if (v13 >= 1)
  {
    v16 = a5;
    v17 = a2;
    v18 = a1;
    v19 = 0;
    v115 = (a1 + 24376);
    v20 = v11;
    v21 = *(a3 + 40);
    v112 = 4 * v21;
    v122 = -1 << v12;
    v113 = (v14 << v12) + a5;
    v143 = a2 + 10692;
    v120 = v12 | a5;
    v121 = v12;
    v111 = (-1 << v12) + v120;
    v137 = a1 + 19184;
    v136 = a8;
    v140 = &delta_lf_id_lut[2 * a8];
    v142 = (a1 + 23032);
    v144 = (a1 + 23024);
    v114 = (a1 + 18992);
    v132 = (a1 + 23036);
    v141 = &seg_lvl_lf_lut[2 * a8];
    v139 = a1 + 19124;
    v134 = a1 + 18996;
    v138 = a1 + 23046;
    v133 = a1 + 23054;
    v135 = a1 + 22256;
    v145 = *(a3 + 40);
    v127 = 8 * v21;
    v123 = v11;
    v126 = a8;
    while (1)
    {
      *a6 = 0;
      v22 = ((v19 << v20) + a4) | v20;
      v23 = (*(v18 + 568) + 8 * (*(v18 + 580) * v22) + 8 * v120);
      v24 = *v23;
      v131 = v19;
      if (!v17 || !*(v143 + 4 * (*(v24 + 167) & 7)))
      {
        break;
      }

      *a7 = 0;
      v25 = 0;
      if (!v16)
      {
        v29 = 0;
        v28 = 64;
        goto LABEL_42;
      }

      v26 = v23[v122];
LABEL_31:
      if (*(v143 + 4 * (*(v26 + 167) & 7)))
      {
        v31 = 0;
        goto LABEL_53;
      }

LABEL_33:
      if (a8)
      {
        v31 = max_txsize_rect_lookup[av1_ss_size_lookup[4 * *v26 + 2 * v119 + v20]];
        if (v31 > 0x10)
        {
          if (v31 == 17)
          {
            v31 = 9;
          }

          else if (v31 == 18)
          {
            v31 = 10;
          }
        }

        else if (v31 - 11 < 2 || v31 == 4)
        {
          v31 = 3;
        }
      }

      else
      {
        v31 = v26[145];
        if (((*(v26 + 167) & 0x80) != 0 || v26[16] >= 1) && !v26[144])
        {
          v36 = *v26;
          v31 = v26[(((mi_size_wide_4[v36] - 1) & v111) >> av1_get_txb_size_index_tw_w_log2_table[v36]) + 146 + (((mi_size_high_3[v36] - 1) & v22) >> av1_get_txb_size_index_tw_h_log2_table[v36] << av1_get_txb_size_index_stride_log2_table[v36])];
        }
      }

LABEL_53:
      v28 = tx_size_high_1[v31];
      filter_level = get_filter_level(v18, v137, 0, a8, v24);
      if (filter_level)
      {
        if (v26 != v24)
        {
          goto LABEL_62;
        }
      }

      else
      {
        filter_level = get_filter_level(v18, v137, 0, a8, v26);
        if (v26 != v24)
        {
          goto LABEL_62;
        }
      }

      if (!v24[144])
      {
LABEL_62:
        v33 = v119;
        v19 = v131;
        v35 = v114;
        v34 = v115;
        if (filter_level)
        {
          *a6 = vert_filter_length_chroma[19 * v25 + v31];
          *(a6 + 1) = v137 + 48 * filter_level;
          v29 = *a7;
        }

        else
        {
          v29 = v25;
        }

        goto LABEL_67;
      }

      if ((*(v24 + 167) & 0x80) != 0)
      {
        if (v26 != v24)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v38 = v24[16] >= 1;
        if (v26 != v24)
        {
          v38 = 0;
        }

        if (!v38)
        {
          goto LABEL_62;
        }
      }

      v29 = v25;
      v33 = v119;
      v19 = v131;
      v35 = v114;
      v34 = v115;
LABEL_67:
      v20 = v123;
LABEL_68:
      v39 = tx_size_high_1[v25];
      if (v28 < v39)
      {
        v39 = v28;
      }

      v40 = tx_size_wide_unit[v29];
      v41 = (v40 << v33) + v16;
      if (v41 < v113)
      {
        v42 = &a7[v40];
        v43 = &a6[16 * v40];
        while (1)
        {
          *v43 = 0;
          v45 = (*(v18 + 568) + 8 * (*(v18 + 580) * v22) + 8 * (v41 | v121));
          v46 = *v45;
          if (v17 && *(v143 + 4 * (*(v46 + 167) & 7)))
          {
            v47 = 0;
            *v42 = 0;
            v48 = v45[v122];
            v49 = *(v46 + 167);
            v50 = v49 & 7;
            if (!*v34)
            {
              goto LABEL_78;
            }

            goto LABEL_99;
          }

          if (!a8)
          {
            v47 = v46[145];
            if (((*(v46 + 167) & 0x80) != 0 || v46[16] >= 1) && !v46[144])
            {
              v55 = *v46;
              v47 = v46[(((mi_size_wide_4[v55] - 1) & (v41 | v121)) >> av1_get_txb_size_index_tw_w_log2_table[v55]) + 146 + (((mi_size_high_3[v55] - 1) & v22) >> av1_get_txb_size_index_tw_h_log2_table[v55] << av1_get_txb_size_index_stride_log2_table[v55])];
              *v42 = v47;
              v48 = v45[v122];
              v49 = *(v46 + 167);
              v50 = v49 & 7;
              if (!*v34)
              {
                goto LABEL_78;
              }

              goto LABEL_99;
            }

            goto LABEL_98;
          }

          v47 = max_txsize_rect_lookup[av1_ss_size_lookup[4 * *v46 + 2 * v121 + v20]];
          if (v47 <= 0x10)
          {
            break;
          }

          if (v47 != 17)
          {
            if (v47 == 18)
            {
              v47 = 10;
            }

LABEL_98:
            *v42 = v47;
            v48 = v45[v122];
            v49 = *(v46 + 167);
            v50 = v49 & 7;
            if (!*v34)
            {
              goto LABEL_78;
            }

            goto LABEL_99;
          }

          v47 = 9;
          *v42 = 9;
          v48 = v45[v122];
          v49 = *(v46 + 167);
          v50 = v49 & 7;
          if (!*v34)
          {
LABEL_78:
            v51 = v50;
            v52 = v135 + (v136 << 8);
            v53 = *(v52 + 32 * v51 + 2 * v46[16] + mode_lf_lut_0[v46[2]]);
            if (v53)
            {
              if (v48 != v46)
              {
                goto LABEL_165;
              }
            }

            else
            {
              v53 = *(v52 + 32 * (*(v48 + 167) & 7) + 2 * v48[16] + mode_lf_lut_0[v48[2]]);
              if (v48 != v46)
              {
                goto LABEL_165;
              }
            }

            goto LABEL_159;
          }

LABEL_99:
          v56 = v34[2];
          if (v56)
          {
            v57 = &v46[*v140 + 163];
            v58 = v144;
            if (!a8)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v57 = v46 + 162;
            v58 = v144;
            if (!a8)
            {
              goto LABEL_105;
            }
          }

          v58 = v142;
          if (a8 != 1)
          {
            v58 = v132;
          }

LABEL_105:
          v59 = *v58 + *v57;
          if (v59 >= 0x3F)
          {
            v60 = 63;
          }

          else
          {
            v60 = v59;
          }

          if (v59 >= 0)
          {
            v61 = v60;
          }

          else
          {
            v61 = 0;
          }

          v62 = *v141;
          if (*v35 && ((*(v139 + 4 * v50) >> v62) & 1) != 0)
          {
            v63 = v61 + *(v134 + 16 * v50 + 2 * v62);
            v61 = v63 >= 0x3F ? 63 : v63;
            if (v63 < 0)
            {
              v61 = 0;
            }
          }

          if (!v35[4052])
          {
            goto LABEL_125;
          }

          v64 = v46[16];
          v65 = *(v138 + v64);
          if (v64 >= 1)
          {
            v65 += *(v133 + mode_lf_lut_0[v46[2]]);
          }

          v66 = (v65 << (v61 >> 5)) + v61;
          v61 = v66 >= 0x3F ? 63 : v66;
          if ((v66 & 0x80000000) == 0)
          {
LABEL_125:
            if (v61)
            {
              v53 = v61;
              if (v48 != v46)
              {
                goto LABEL_165;
              }

              goto LABEL_159;
            }
          }

          if (v56)
          {
            v67 = &v48[*v140 + 163];
            v68 = v144;
            if (!a8)
            {
              goto LABEL_136;
            }
          }

          else
          {
            v67 = v48 + 162;
            v68 = v144;
            if (!a8)
            {
              goto LABEL_136;
            }
          }

          v68 = v142;
          if (a8 != 1)
          {
            v68 = v132;
          }

LABEL_136:
          v69 = *v68 + *v67;
          if (v69 >= 0x3F)
          {
            v70 = 63;
          }

          else
          {
            v70 = v69;
          }

          if (v69 >= 0)
          {
            v71 = v70;
          }

          else
          {
            v71 = 0;
          }

          if (*v35)
          {
            v72 = *(v48 + 167) & 7;
            if ((*(v139 + 4 * v72) >> v62))
            {
              v73 = v71 + *(v134 + 16 * v72 + 2 * *v141);
              if (v73 >= 0x3F)
              {
                v71 = 63;
              }

              else
              {
                v71 += *(v134 + 16 * v72 + 2 * *v141);
              }

              if (v73 < 0)
              {
                v71 = 0;
              }
            }
          }

          if (v35[4052])
          {
            v74 = v48[16];
            v75 = *(v138 + v74);
            if (v74 >= 1)
            {
              v75 += *(v133 + mode_lf_lut_0[v48[2]]);
            }

            v76 = (v75 << (v71 >> 5)) + v71;
            if (v76 >= 0x3F)
            {
              v77 = 63;
            }

            else
            {
              v77 = v76;
            }

            if (v76 >= 0)
            {
              LOBYTE(v71) = v77;
            }

            else
            {
              LOBYTE(v71) = 0;
            }
          }

          v53 = v71;
          if (v48 != v46)
          {
LABEL_165:
            v80 = v47;
            if (v53)
            {
              *v43 = vert_filter_length_chroma[19 * v47 + v29];
              *(v43 + 1) = v137 + 48 * v53;
              v80 = *v42;
            }

            goto LABEL_72;
          }

LABEL_159:
          if (!v46[144])
          {
            goto LABEL_165;
          }

          if ((v49 & 0x80) != 0)
          {
            v81 = v48 == v46;
            v80 = v47;
            if (!v81)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v27 = v48 == v46;
            v78 = v46[16] >= 1;
            v79 = v27 && v78;
            v80 = v47;
            if (!v79)
            {
              goto LABEL_165;
            }
          }

LABEL_72:
          if (v39 >= tx_size_high_1[v47])
          {
            v39 = tx_size_high_1[v47];
          }

          v44 = tx_size_wide_unit[v80];
          v41 += v44 << v33;
          v43 += 16 * v44;
          v42 += v44;
          v29 = v80;
          if (v41 >= v113)
          {
            goto LABEL_171;
          }
        }

        if (v47 - 11 < 2 || v47 == 4)
        {
          v47 = 3;
          *v42 = 3;
          v48 = v45[v122];
          v49 = *(v46 + 167);
          v50 = v49 & 7;
          if (!*v34)
          {
            goto LABEL_78;
          }

          goto LABEL_99;
        }

        goto LABEL_98;
      }

LABEL_171:
      if ((v19 & 3) != 0 || (v19 | 3) >= v124 || v39 <= 15)
      {
        if (v19)
        {
          v125 = 0;
          v83 = 0;
          if (v147 < 1)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v83 = (v19 | 1) < v124 && v39 > 7;
          v125 = v83;
          if (v147 < 1)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v83 = 2;
        v125 = 3;
        if (v147 < 1)
        {
          goto LABEL_7;
        }
      }

      v84 = v131 * v112;
      if (a9)
      {
        v85 = 0;
        v87 = a6;
        v86 = a7;
        while (1)
        {
          if (*v86 == 255)
          {
            *v87 = 0;
            *v86 = 0;
          }

          v95 = 4 * v85 + v84;
          v96 = *(a3 + 16) + v95;
          v97 = *(a3 + 2624) + v95;
          v98 = *(v87 + 1);
          HIDWORD(v100) = *v87 - 4;
          LODWORD(v100) = HIDWORD(v100);
          v99 = v100 >> 1;
          if (v83 != 2)
          {
            break;
          }

          if (!v99)
          {
            aom_lpf_vertical_4_dual_neon(v96, v145, *(v87 + 1), (v98 + 16), (v98 + 32), *(v87 + 1), (v98 + 16), (v98 + 32));
            aom_lpf_vertical_4_dual_neon(v96 + v127, v145, v98, (v98 + 16), (v98 + 32), v98, (v98 + 16), (v98 + 32));
            aom_lpf_vertical_4_dual_neon(v97, v145, v98, (v98 + 16), (v98 + 32), v98, (v98 + 16), (v98 + 32));
            v105 = v97 + v127;
            a8 = v126;
            v101 = (v98 + 16);
            v102 = (v98 + 32);
            v103 = (v98 + 16);
            v104 = (v98 + 32);
            v106 = v145;
            v18 = a1;
            goto LABEL_206;
          }

          if (v99 == 1)
          {
            aom_lpf_vertical_6_dual_neon(v96, v145, *(v87 + 1), (v98 + 16), (v98 + 32), *(v87 + 1), (v98 + 16), (v98 + 32));
            aom_lpf_vertical_6_dual_neon(v96 + v127, v145, v98, (v98 + 16), (v98 + 32), v98, (v98 + 16), (v98 + 32));
            aom_lpf_vertical_6_dual_neon(v97, v145, v98, (v98 + 16), (v98 + 32), v98, (v98 + 16), (v98 + 32));
            v92 = v97 + v127;
            a8 = v126;
            v88 = (v98 + 16);
            v89 = (v98 + 32);
            v90 = (v98 + 16);
            v91 = (v98 + 32);
            v93 = v145;
            v18 = a1;
LABEL_189:
            aom_lpf_vertical_6_dual_neon(v92, v93, v98, v88, v89, v98, v90, v91);
          }

LABEL_190:
          v94 = tx_size_wide_unit[*v86];
          v85 += v94;
          v87 += 16 * v94;
          v86 += v94;
          if (v85 >= v147)
          {
            goto LABEL_7;
          }
        }

        if (v83 != 1)
        {
          if (v99)
          {
            if (v99 == 1)
            {
              aom_lpf_vertical_6_neon(v96, v145, *(v87 + 1), (v98 + 16), (v98 + 32));
              aom_lpf_vertical_6_neon(v97, v145, v98, (v98 + 16), (v98 + 32));
            }
          }

          else
          {
            aom_lpf_vertical_4_neon(v96, v145, *(v87 + 1), (v98 + 16), (v98 + 32));
            aom_lpf_vertical_4_neon(v97, v145, v98, (v98 + 16), (v98 + 32));
          }

          goto LABEL_190;
        }

        if (!v99)
        {
          aom_lpf_vertical_4_dual_neon(v96, v145, *(v87 + 1), (v98 + 16), (v98 + 32), *(v87 + 1), (v98 + 16), (v98 + 32));
          v101 = (v98 + 16);
          v102 = (v98 + 32);
          v103 = (v98 + 16);
          v104 = (v98 + 32);
          v105 = v97;
          v106 = v145;
LABEL_206:
          aom_lpf_vertical_4_dual_neon(v105, v106, v98, v101, v102, v98, v103, v104);
          goto LABEL_190;
        }

        if (v99 != 1)
        {
          goto LABEL_190;
        }

        aom_lpf_vertical_6_dual_neon(v96, v145, *(v87 + 1), (v98 + 16), (v98 + 32), *(v87 + 1), (v98 + 16), (v98 + 32));
        v88 = (v98 + 16);
        v89 = (v98 + 32);
        v90 = (v98 + 16);
        v91 = (v98 + 32);
        v92 = v97;
        v93 = v145;
        goto LABEL_189;
      }

      v107 = 0;
      v108 = a6;
      v109 = a7;
      do
      {
        if (*v109 == 255)
        {
          *v108 = 0;
          *v109 = 0;
        }

        filter_vert(*(a3 + 16) + 4 * v107 + v84, v145, *v108, *(v108 + 1), v83);
        v110 = tx_size_wide_unit[*v109];
        v107 += v110;
        v108 += 16 * v110;
        v109 += v110;
      }

      while (v107 < v147);
LABEL_7:
      v19 = v131 + v125 + 1;
      v16 = a5;
      v17 = a2;
      v20 = v123;
      if (v19 >= v124)
      {
        return;
      }
    }

    if (a8)
    {
      v25 = max_txsize_rect_lookup[av1_ss_size_lookup[4 * *v24 + 2 * v119 + v20]];
      if (v25 > 0x10)
      {
        if (v25 == 17)
        {
          v25 = 9;
          *a7 = 9;
          if (!v16)
          {
LABEL_20:
            v28 = 64;
            v29 = v25;
LABEL_42:
            v33 = v119;
            v35 = v114;
            v34 = v115;
            goto LABEL_68;
          }

LABEL_30:
          v26 = v23[v122];
          if (!v17)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        if (v25 == 18)
        {
          v25 = 10;
        }
      }

      else
      {
        v27 = v25 - 11 < 2 || v25 == 4;
        if (v27)
        {
          v25 = 3;
          *a7 = 3;
          if (!v16)
          {
            goto LABEL_20;
          }

          goto LABEL_30;
        }
      }
    }

    else
    {
      v25 = v24[145];
      if (((*(v24 + 167) & 0x80) != 0 || v24[16] >= 1) && !v24[144])
      {
        v30 = *v24;
        v25 = v24[(((mi_size_wide_4[v30] - 1) & v120) >> av1_get_txb_size_index_tw_w_log2_table[v30]) + 146 + (((mi_size_high_3[v30] - 1) & v22) >> av1_get_txb_size_index_tw_h_log2_table[v30] << av1_get_txb_size_index_stride_log2_table[v30])];
        *a7 = v25;
        if (!v16)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }
    }

    *a7 = v25;
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }
}

void av1_filter_block_plane_horz(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a4 + 4);
  v7 = *(a4 + 8);
  if ((((a1[133] + (1 << v7 >> 1)) >> v7) - (a5 >> v7)) >= (0x20u >> v7))
  {
    v8 = 0x20u >> v7;
  }

  else
  {
    v8 = ((a1[133] + (1 << v7 >> 1)) >> v7) - (a5 >> v7);
  }

  LODWORD(v9) = ((a1[134] + (1 << v6 >> 1)) >> v6) - (a6 >> v6);
  if (v9 >= (0x20u >> v6))
  {
    v9 = 0x20u >> v6;
  }

  else
  {
    v9 = v9;
  }

  v25 = v9;
  if (v9 >= 1 && v8 >= 1)
  {
    v12 = 0;
    v24 = *(a4 + 16);
    v13 = (4 * a6) >> v6;
    v14 = (4 * a5) >> v7;
    v27 = *(a4 + 40);
    do
    {
      v15 = 0;
      v26 = v12;
      v16 = 4 * v12;
      v17 = (v24 + 4 * v12);
      do
      {
        v31 = 0;
        v32 = 0;
        v19 = set_lpf_parameters(&v31, (a1[145] << v7), a1, a2, 1u, v13 + v16, v14 + 4 * v15, a3, a4);
        v20 = v31 - 4;
        if (v19 == 255)
        {
          v20 = -4;
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        HIDWORD(v23) = v20;
        LODWORD(v23) = v20;
        v22 = v23 >> 1;
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            aom_lpf_horizontal_8_neon(v17, v27, v32, v32 + 16, v32 + 32);
          }

          else if (v22 == 5)
          {
            aom_lpf_horizontal_14_neon(v17, v27, v32, v32 + 16, v32 + 32);
          }
        }

        else if (v22)
        {
          if (v22 == 1)
          {
            aom_lpf_horizontal_6_neon(v17, v27, v32, v32 + 16, v32 + 32);
          }
        }

        else
        {
          aom_lpf_horizontal_4_neon(v17, v27, v32, v32 + 16, v32 + 32);
        }

        v18 = tx_size_high_unit[v21];
        v15 += v18;
        v17 = (v17 + (4 * v27 * v18));
      }

      while (v15 < v8);
      v12 = v26 + 1;
    }

    while (v26 + 1 != v25);
  }
}

int8x8_t filter_horz(__int32 *a1, int a2, unsigned __int8 a3, unsigned __int8 *a4, int a5)
{
  HIDWORD(v7) = a3 - 4;
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 1;
  if (a5 == 1)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          return result;
        }

        v10 = (a4 + 16);
        v11 = (a4 + 32);
        v12 = (a4 + 16);
        v13 = (a4 + 32);
        goto LABEL_11;
      }

      v24 = (a4 + 16);
      v25 = (a4 + 32);
      v26 = (a4 + 16);
      v27 = (a4 + 32);
      goto LABEL_38;
    }

    if (v6 != 2)
    {
      if (v6 != 5)
      {
        return result;
      }

      v18 = a1;
      v17 = a2;
      aom_lpf_horizontal_14_neon(a1, a2, a4, a4 + 16, a4 + 32);
      a1 = v18 + 1;
      goto LABEL_26;
    }

    v30 = (a4 + 16);
    v31 = (a4 + 32);
    v32 = (a4 + 16);
    v33 = (a4 + 32);
    goto LABEL_42;
  }

  if (a5 == 2)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          return result;
        }

        v8 = a1;
        v9 = a2;
        aom_lpf_horizontal_6_dual_neon(a1, a2, a4, a4 + 16, a4 + 32, a4, a4 + 16, a4 + 32);
        a1 = v8 + 2;
        v10 = (a4 + 16);
        v11 = (a4 + 32);
        v12 = (a4 + 16);
        v13 = (a4 + 32);
        a2 = v9;
LABEL_11:

        return aom_lpf_horizontal_6_dual_neon(a1, a2, a4, v10, v11, a4, v12, v13);
      }

      v22 = a1;
      v23 = a2;
      aom_lpf_horizontal_4_dual_neon(a1, a2, a4, a4 + 16, a4 + 32, a4, a4 + 16, a4 + 32);
      a1 = v22 + 2;
      v24 = (a4 + 16);
      v25 = (a4 + 32);
      v26 = (a4 + 16);
      v27 = (a4 + 32);
      a2 = v23;
LABEL_38:

      return aom_lpf_horizontal_4_dual_neon(a1, a2, a4, v24, v25, a4, v26, v27);
    }

    if (v6 != 2)
    {
      if (v6 != 5)
      {
        return result;
      }

      v16 = a1;
      v17 = a2;
      aom_lpf_horizontal_14_neon(a1, a2, a4, a4 + 16, a4 + 32);
      aom_lpf_horizontal_14_neon(v16 + 1, v17, a4, a4 + 16, a4 + 32);
      aom_lpf_horizontal_14_neon(v16 + 2, v17, a4, a4 + 16, a4 + 32);
      a1 = v16 + 3;
LABEL_26:
      v19 = a4 + 16;
      v20 = a4 + 32;
      a2 = v17;
      v21 = a4;

      goto LABEL_28;
    }

    v28 = a1;
    v29 = a2;
    aom_lpf_horizontal_8_dual_neon(a1, a2, a4, a4 + 16, a4 + 32, a4, a4 + 16, a4 + 32);
    a1 = v28 + 2;
    v30 = (a4 + 16);
    v31 = (a4 + 32);
    v32 = (a4 + 16);
    v33 = (a4 + 32);
    a2 = v29;
LABEL_42:

    return aom_lpf_horizontal_8_dual_neon(a1, a2, a4, v30, v31, a4, v32, v33);
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 != 5)
      {
        return result;
      }

      v19 = a4 + 16;
      v20 = a4 + 32;
      v21 = a4;

LABEL_28:
      *&result = aom_lpf_horizontal_14_neon(a1, a2, v21, v19, v20);
      return result;
    }

    v35 = (a4 + 16);

    return aom_lpf_horizontal_8_neon(a1, a2, a4, v35, a4 + 32);
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v15 = (a4 + 16);

      return aom_lpf_horizontal_6_neon(a1, a2, a4, v15, a4 + 32);
    }
  }

  else
  {
    v34 = (a4 + 16);

    return aom_lpf_horizontal_4_neon(a1, a2, a4, v34, a4 + 32);
  }

  return result;
}

void av1_filter_block_plane_horz_opt(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, _BYTE *a7, char a8)
{
  v8 = ((*(a3 + 36) + 3) >> 2) - a4;
  if (v8 >= 1 << a8)
  {
    v8 = 1 << a8;
  }

  v113 = v8;
  v9 = ((*(a3 + 32) + 3) >> 2) - a5;
  if (v9 >= 32)
  {
    v10 = 32;
  }

  else
  {
    v10 = ((*(a3 + 32) + 3) >> 2) - a5;
  }

  if (v9 >= 1)
  {
    v11 = a2;
    v13 = 0;
    v14 = (a1 + 24376);
    v15 = a1 + 18992;
    v97 = *(a3 + 16);
    v16 = v8 + a4;
    v17 = a2 + 10692;
    v18 = -*(a1 + 580);
    v96 = a4 - 1;
    v19 = a1 + 19184;
    v20 = a1 + 19124;
    v109 = a1 + 18996;
    v112 = a1 + 23046;
    v110 = a1 + 23054;
    v111 = a1 + 22256;
    v21 = *(a3 + 40);
    v107 = a7;
    v104 = a4;
    v106 = v10;
    v100 = v18;
    v101 = a2 + 10692;
    v98 = a1 + 19124;
    v99 = a1 + 19184;
    v102 = v8 + a4;
    do
    {
      v22 = (v13 + a5);
      *a6 = 0;
      v23 = *(a1 + 568) + 8 * (*(a1 + 580) * a4) + 8 * v22;
      v24 = *v23;
      v25 = *(*v23 + 167);
      if (v11 && *(v17 + 4 * (v25 & 7)))
      {
        v26 = 0;
        if (!a4)
        {
          goto LABEL_24;
        }

        v27 = *(v23 + 8 * v18);
      }

      else
      {
        v26 = v24[145];
        if (((v25 & 0x80) != 0 || v24[16] >= 1) && !v24[144])
        {
          v34 = *v24;
          v26 = v24[(((mi_size_wide_4[v34] - 1) & v22) >> av1_get_txb_size_index_tw_w_log2_table[v34]) + 146 + (((mi_size_high_3[v34] - 1) & a4) >> av1_get_txb_size_index_tw_h_log2_table[v34] << av1_get_txb_size_index_stride_log2_table[v34])];
          if (!a4)
          {
LABEL_24:
            v30 = 128;
            goto LABEL_88;
          }
        }

        else if (!a4)
        {
          goto LABEL_24;
        }

        v27 = *(v23 + 8 * v18);
        if (!v11)
        {
          LOWORD(v28) = *(v27 + 167);
          goto LABEL_26;
        }
      }

      LOWORD(v28) = *(v27 + 167);
      if (*(v17 + 4 * (v28 & 7)))
      {
        v29 = 0;
        v30 = block_size_wide_0[*v27];
        v31 = v25 & 7;
        if (!*v14)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

LABEL_26:
      v29 = v27[145];
      if (((v28 & 0x80) != 0 || v27[16] >= 1) && !v27[144])
      {
        v55 = *v27;
        v29 = v27[(((mi_size_wide_4[v55] - 1) & v22) >> av1_get_txb_size_index_tw_w_log2_table[v55]) + 146 + (((mi_size_high_3[v55] - 1) & v96) >> av1_get_txb_size_index_tw_h_log2_table[v55] << av1_get_txb_size_index_stride_log2_table[v55])];
        v30 = block_size_wide_0[v55];
        v31 = v25 & 7;
        if (!*v14)
        {
LABEL_20:
          v32 = v24[16];
          v33 = *(v111 + 32 * v31 + 2 * v32 + mode_lf_lut_0[v24[2]] + 16);
          if (*(v111 + 32 * v31 + 2 * v32 + mode_lf_lut_0[v24[2]] + 16))
          {
            if (v27 == v24)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v33 = *(v111 + 32 * (v28 & 7) + 2 * v27[16] + mode_lf_lut_0[v27[2]] + 16);
            if (v27 == v24)
            {
              goto LABEL_83;
            }
          }

          goto LABEL_86;
        }
      }

      else
      {
        v30 = block_size_wide_0[*v27];
        v31 = v25 & 7;
        if (!*v14)
        {
          goto LABEL_20;
        }
      }

LABEL_30:
      if (v14[2])
      {
        v35 = 164;
      }

      else
      {
        v35 = 162;
      }

      v36 = *(v15 + 4036);
      v37 = v36 + v24[v35];
      if (v37 >= 0x3F)
      {
        v38 = 63;
      }

      else
      {
        v38 = v36 + v24[v35];
      }

      if (v37 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      if (*v15 && (*(v20 + 4 * v31) & 4) != 0)
      {
        v40 = v39 + *(v109 + 16 * v31 + 4);
        if (v40 >= 0x3F)
        {
          v41 = 63;
        }

        else
        {
          v41 = v40;
        }

        if (v40 >= 0)
        {
          v39 = v41;
        }

        else
        {
          v39 = 0;
        }
      }

      if (*(v15 + 4052))
      {
        v42 = v13;
        v43 = v25;
        v44 = v28;
        v28 = v29;
        v45 = v24[16];
        v46 = *(v112 + v45);
        if (v45 >= 1)
        {
          v46 += *(v110 + mode_lf_lut_0[v24[2]]);
        }

        v47 = (v46 << (v39 >> 5)) + v39;
        v39 = v47 >= 0x3F ? 63 : v47;
        v29 = v28;
        LOBYTE(v28) = v44;
        LOBYTE(v25) = v43;
        v13 = v42;
        if ((v47 & 0x80000000) != 0)
        {
          goto LABEL_57;
        }
      }

      if (!v39)
      {
LABEL_57:
        v48 = v36 + v27[v35];
        if (v48 >= 0x3F)
        {
          v49 = 63;
        }

        else
        {
          v49 = v36 + v27[v35];
        }

        if (v48 >= 0)
        {
          v33 = v49;
        }

        else
        {
          v33 = 0;
        }

        if (*v15)
        {
          v50 = v28 & 7;
          if ((*(v20 + 4 * v50) & 4) != 0)
          {
            v51 = v33 + *(v109 + 16 * v50 + 4);
            v33 = v51 >= 0x3F ? 63 : v51;
            if (v51 < 0)
            {
              v33 = 0;
            }
          }
        }

        a7 = v107;
        if (*(v15 + 4052))
        {
          v52 = v27[16];
          v53 = *(v112 + v52);
          if (v52 >= 1)
          {
            v53 += *(v110 + mode_lf_lut_0[v27[2]]);
          }

          v54 = (v53 << (v33 >> 5)) + v33;
          if (v54 >= 0x3F)
          {
            LOBYTE(v33) = 63;
          }

          else
          {
            LOBYTE(v33) = v54;
          }

          if (v54 < 0)
          {
            LOBYTE(v33) = 0;
          }
        }

        v33 = v33;
        if (v27 == v24)
        {
LABEL_83:
          if (v24[144] && ((v25 & 0x80) != 0 || v24[16] >= 1))
          {
            goto LABEL_88;
          }
        }
      }

      else
      {
        v33 = v39;
        a7 = v107;
        if (v27 == v24)
        {
          goto LABEL_83;
        }
      }

LABEL_86:
      if (v33)
      {
        *a6 = horz_filter_length_luma[19 * v26 + v29];
        *(a6 + 8) = v19 + 48 * v33;
      }

LABEL_88:
      v56 = block_size_wide_0[*v24];
      if (v30 < v56)
      {
        v56 = v30;
      }

      *a7 = v26;
      v57 = tx_size_high_unit[v26];
      v58 = v57 + a4;
      if (v57 + a4 < v16)
      {
        v59 = &a7[v57];
        v60 = a6 + 16 * v57;
        do
        {
          v62 = v26;
          *v60 = 0;
          v63 = *(a1 + 568) + 8 * *(a1 + 580) * v58 + 8 * v22;
          v64 = *v63;
          v65 = *(*v63 + 167);
          if (v11 && *(v17 + 4 * (v65 & 7)))
          {
            v26 = 0;
            v66 = *(v63 + 8 * v18);
            v67 = v65 & 7;
            if (!*v14)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v26 = v64[145];
            if (((v65 & 0x80) != 0 || v64[16] >= 1) && !v64[144])
            {
              v86 = *v64;
              v26 = v64[(((mi_size_wide_4[v86] - 1) & v22) >> av1_get_txb_size_index_tw_w_log2_table[v86]) + 146 + (((mi_size_high_3[v86] - 1) & v58) >> av1_get_txb_size_index_tw_h_log2_table[v86] << av1_get_txb_size_index_stride_log2_table[v86])];
              v66 = *(v63 + 8 * v18);
              v67 = v65 & 7;
              if (!*v14)
              {
LABEL_98:
                v68 = *(v111 + 32 * v67 + 2 * v64[16] + mode_lf_lut_0[v64[2]] + 16);
                if (*(v111 + 32 * v67 + 2 * v64[16] + mode_lf_lut_0[v64[2]] + 16))
                {
                  if (v66 != v64)
                  {
                    goto LABEL_160;
                  }
                }

                else
                {
                  v68 = *(v111 + 32 * (*(v66 + 167) & 7) + 2 * *(v66 + 16) + mode_lf_lut_0[*(v66 + 2)] + 16);
                  if (v66 != v64)
                  {
                    goto LABEL_160;
                  }
                }

                goto LABEL_157;
              }
            }

            else
            {
              v66 = *(v63 + 8 * v18);
              v67 = v65 & 7;
              if (!*v14)
              {
                goto LABEL_98;
              }
            }
          }

          v69 = 164;
          if (!v14[2])
          {
            v69 = 162;
          }

          v70 = *(v15 + 4036);
          v71 = v70 + v64[v69];
          if (v71 >= 0x3F)
          {
            v72 = 63;
          }

          else
          {
            v72 = v70 + v64[v69];
          }

          if (v71 < 0)
          {
            v72 = 0;
          }

          if (*v15 && (*(v20 + 4 * v67) & 4) != 0)
          {
            v73 = v72 + *(v109 + 16 * v67 + 4);
            v72 = v73 >= 0x3F ? 63 : v73;
            if (v73 < 0)
            {
              v72 = 0;
            }
          }

          if (*(v15 + 4052))
          {
            v74 = v64[16];
            v75 = *(v112 + v74);
            if (v74 >= 1)
            {
              v75 += *(v110 + mode_lf_lut_0[v64[2]]);
            }

            v76 = (v75 << (v72 >> 5)) + v72;
            v72 = v76 >= 0x3F ? 63 : v76;
            if ((v76 & 0x80000000) != 0)
            {
              goto LABEL_129;
            }
          }

          if (!v72)
          {
LABEL_129:
            v77 = v70 + *(v66 + v69);
            if (v77 >= 0x3F)
            {
              v78 = 63;
            }

            else
            {
              v78 = v77;
            }

            if (v77 >= 0)
            {
              v68 = v78;
            }

            else
            {
              v68 = 0;
            }

            if (*v15)
            {
              v79 = *(v66 + 167) & 7;
              if ((*(v20 + 4 * v79) & 4) != 0)
              {
                v80 = v68 + *(v109 + 16 * v79 + 4);
                if (v80 >= 0x3F)
                {
                  v81 = 63;
                }

                else
                {
                  v81 = v80;
                }

                if (v80 >= 0)
                {
                  v68 = v81;
                }

                else
                {
                  v68 = 0;
                }
              }
            }

            if (*(v15 + 4052))
            {
              v82 = *(v66 + 16);
              v83 = *(v112 + v82);
              if (v82 >= 1)
              {
                v83 += *(v110 + mode_lf_lut_0[*(v66 + 2)]);
              }

              v84 = (v83 << (v68 >> 5)) + v68;
              if (v84 >= 0x3F)
              {
                v85 = 63;
              }

              else
              {
                v85 = v84;
              }

              if (v84 >= 0)
              {
                LOBYTE(v68) = v85;
              }

              else
              {
                LOBYTE(v68) = 0;
              }
            }

            v68 = v68;
            if (v66 != v64)
            {
LABEL_160:
              if (v68)
              {
                *v60 = horz_filter_length_luma[19 * v26 + v62];
                *(v60 + 8) = v19 + 48 * v68;
              }

              goto LABEL_92;
            }
          }

          else
          {
            v68 = v72;
            if (v66 != v64)
            {
              goto LABEL_160;
            }
          }

LABEL_157:
          if (!v64[144] || (v65 & 0x80) == 0 && v64[16] < 1)
          {
            goto LABEL_160;
          }

LABEL_92:
          if (v56 >= block_size_wide_0[*v64])
          {
            v56 = block_size_wide_0[*v64];
          }

          *v59 = v26;
          v61 = tx_size_high_unit[v26];
          v58 += v61;
          v60 += 16 * v61;
          v59 += v61;
        }

        while (v58 < v16);
      }

      if ((v13 & 3) != 0 || (v90 = v13 | 3, (v13 | 3) >= v106) || v56 <= 15)
      {
        v87 = v13 + 1 < v106;
        v88 = v56 > 7;
        v89 = v87 && v88;
        if (v87 && v88)
        {
          v90 = v13 + 1;
        }

        else
        {
          v90 = v13;
        }

        if (v113 >= 1)
        {
LABEL_167:
          v91 = 0;
          v92 = (v97 + 4 * v13);
          v93 = v107;
          v94 = a6;
          do
          {
            if (*v93 == 255)
            {
              *v94 = 0;
              *v93 = 0;
            }

            filter_horz(v92, v21, *v94, *(v94 + 8), v89);
            v95 = tx_size_high_unit[*v93];
            v91 += v95;
            v92 = (v92 + (4 * v21 * v95));
            v94 += 16 * v95;
            v93 += v95;
          }

          while (v91 < v113);
        }
      }

      else
      {
        v89 = 2;
        if (v113 >= 1)
        {
          goto LABEL_167;
        }
      }

      v13 = v90 + 1;
      a7 = v107;
      a4 = v104;
      v11 = a2;
      v16 = v102;
      v18 = v100;
      v17 = v101;
      v20 = v98;
      v19 = v99;
    }

    while (v13 < v106);
  }
}

void av1_filter_block_plane_horz_opt_chroma(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned __int8 *a6, _BYTE *a7, int a8, char a9, __int16 a10, char a11)
{
  v11 = *(a3 + 4);
  v12 = *(a3 + 8);
  v13 = 1 << a11 >> v12;
  if (((((((*(a3 + 36) << v12) + 3) >> 2) + (1 << v12 >> 1)) >> v12) - (a4 >> v12)) < v13)
  {
    v13 = (((((*(a3 + 36) << v12) + 3) >> 2) + (1 << v12 >> 1)) >> v12) - (a4 >> v12);
  }

  v141 = v13;
  v14 = (((((*(a3 + 32) << v11) + 3) >> 2) + (1 << v11 >> 1)) >> v11) - (a5 >> v11);
  if (v14 >= (0x20u >> v11))
  {
    v14 = 0x20u >> v11;
  }

  v122 = v14;
  if (v14 >= 1)
  {
    v15 = a4;
    v16 = a2;
    v17 = a1;
    v18 = 0;
    v114 = (a1 + 24376);
    v19 = v11;
    v20 = v12;
    v112 = (v141 << v12) + a4;
    v21 = a2 + 10692;
    v119 = -(*(a1 + 580) << v12);
    v118 = v12 | a4;
    v111 = (-1 << v12) + (v12 | a4);
    v133 = a1 + 19184;
    v136 = &delta_lf_id_lut[2 * a8];
    v137 = (a1 + 23032);
    v138 = (a1 + 23028);
    v113 = (a1 + 18992);
    v129 = (a1 + 23036);
    v135 = a1 + 19124;
    v131 = a1 + 18996;
    v134 = a1 + 23046;
    v130 = a1 + 23054;
    v132 = a1 + 22256;
    v139 = *(a3 + 40);
    v120 = a2 + 10692;
    v121 = v11;
    while (1)
    {
      *a6 = 0;
      v22 = ((v18 << v19) + a5) | v19;
      v23 = (*(v17 + 568) + 8 * (*(v17 + 580) * v118) + 8 * v22);
      v24 = *v23;
      v128 = v18;
      if (!v16 || !*(v21 + 4 * (*(v24 + 167) & 7)))
      {
        break;
      }

      *a7 = 0;
      v25 = 0;
      if (!v15)
      {
        v29 = 0;
        v28 = 64;
        goto LABEL_42;
      }

      v26 = v23[v119];
LABEL_31:
      if (*(v21 + 4 * (*(v26 + 167) & 7)))
      {
        v31 = 0;
        goto LABEL_53;
      }

LABEL_33:
      if (a8)
      {
        v31 = max_txsize_rect_lookup[av1_ss_size_lookup[4 * *v26 + 2 * v19 + v20]];
        if (v31 > 0x10)
        {
          if (v31 == 17)
          {
            v31 = 9;
          }

          else if (v31 == 18)
          {
            v31 = 10;
          }
        }

        else if (v31 - 11 < 2 || v31 == 4)
        {
          v31 = 3;
        }
      }

      else
      {
        v31 = v26[145];
        if (((*(v26 + 167) & 0x80) != 0 || v26[16] >= 1) && !v26[144])
        {
          v35 = *v26;
          v31 = v26[(((mi_size_wide_4[v35] - 1) & v22) >> av1_get_txb_size_index_tw_w_log2_table[v35]) + 146 + (((mi_size_high_3[v35] - 1) & v111) >> av1_get_txb_size_index_tw_h_log2_table[v35] << av1_get_txb_size_index_stride_log2_table[v35])];
        }
      }

LABEL_53:
      v28 = tx_size_wide_2[v31];
      filter_level = get_filter_level(a1, v133, 1u, a8, v24);
      if (filter_level)
      {
        if (v26 != v24)
        {
          goto LABEL_62;
        }
      }

      else
      {
        filter_level = get_filter_level(a1, v133, 1u, a8, v26);
        if (v26 != v24)
        {
          goto LABEL_62;
        }
      }

      if (!v24[144])
      {
LABEL_62:
        v17 = a1;
        v18 = v128;
        v34 = v113;
        v33 = v114;
        if (filter_level)
        {
          *a6 = horz_filter_length_chroma[19 * v25 + v31];
          *(a6 + 1) = v133 + 48 * filter_level;
          v29 = *a7;
        }

        else
        {
          v29 = v25;
        }

        goto LABEL_67;
      }

      if ((*(v24 + 167) & 0x80) != 0)
      {
        if (v26 != v24)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v37 = v24[16] >= 1;
        if (v26 != v24)
        {
          v37 = 0;
        }

        if (!v37)
        {
          goto LABEL_62;
        }
      }

      v29 = v25;
      v17 = a1;
      v18 = v128;
      v34 = v113;
      v33 = v114;
LABEL_67:
      v19 = v121;
LABEL_68:
      v38 = tx_size_wide_2[v25];
      if (v28 < v38)
      {
        v38 = v28;
      }

      v39 = tx_size_high_unit[v29];
      v40 = (v39 << v20) + v15;
      if (v40 < v112)
      {
        v41 = &a7[v39];
        v42 = &a6[16 * v39];
        while (1)
        {
          *v42 = 0;
          v44 = (*(v17 + 568) + 8 * *(v17 + 580) * (v40 | v20) + 8 * v22);
          v45 = *v44;
          if (v16 && *(v120 + 4 * (*(v45 + 167) & 7)))
          {
            v46 = 0;
            *v41 = 0;
            v47 = v44[v119];
            v48 = *(v45 + 167);
            v49 = v48 & 7;
            if (!*v33)
            {
              goto LABEL_78;
            }

            goto LABEL_99;
          }

          if (!a8)
          {
            v46 = v45[145];
            if (((*(v45 + 167) & 0x80) != 0 || v45[16] >= 1) && !v45[144])
            {
              v54 = *v45;
              v46 = v45[(((mi_size_wide_4[v54] - 1) & v22) >> av1_get_txb_size_index_tw_w_log2_table[v54]) + 146 + (((mi_size_high_3[v54] - 1) & (v40 | v20)) >> av1_get_txb_size_index_tw_h_log2_table[v54] << av1_get_txb_size_index_stride_log2_table[v54])];
              *v41 = v46;
              v47 = v44[v119];
              v48 = *(v45 + 167);
              v49 = v48 & 7;
              if (!*v33)
              {
                goto LABEL_78;
              }

              goto LABEL_99;
            }

            goto LABEL_98;
          }

          v46 = max_txsize_rect_lookup[av1_ss_size_lookup[4 * *v45 + 2 * v19 + v20]];
          if (v46 <= 0x10)
          {
            break;
          }

          if (v46 != 17)
          {
            if (v46 == 18)
            {
              v46 = 10;
            }

LABEL_98:
            *v41 = v46;
            v47 = v44[v119];
            v48 = *(v45 + 167);
            v49 = v48 & 7;
            if (!*v33)
            {
              goto LABEL_78;
            }

            goto LABEL_99;
          }

          v46 = 9;
          *v41 = 9;
          v47 = v44[v119];
          v48 = *(v45 + 167);
          v49 = v48 & 7;
          if (!*v33)
          {
LABEL_78:
            v50 = v49;
            v51 = v132 + (a8 << 8);
            v52 = *(v51 + 32 * v50 + 2 * v45[16] + mode_lf_lut_0[v45[2]] + 16);
            if (v52)
            {
              if (v47 != v45)
              {
                goto LABEL_165;
              }
            }

            else
            {
              v52 = *(v51 + 32 * (*(v47 + 167) & 7) + 2 * v47[16] + mode_lf_lut_0[v47[2]] + 16);
              if (v47 != v45)
              {
                goto LABEL_165;
              }
            }

            goto LABEL_159;
          }

LABEL_99:
          v55 = v33[2];
          if (v55)
          {
            v56 = &v45[v136[1] + 163];
            v57 = v138;
            if (!a8)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v56 = v45 + 162;
            v57 = v138;
            if (!a8)
            {
              goto LABEL_105;
            }
          }

          v57 = v137;
          if (a8 != 1)
          {
            v57 = v129;
          }

LABEL_105:
          v58 = *v57 + *v56;
          if (v58 >= 0x3F)
          {
            v59 = 63;
          }

          else
          {
            v59 = v58;
          }

          if (v58 >= 0)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          v61 = seg_lvl_lf_lut[2 * a8 + 1];
          if (*v34 && ((*(v135 + 4 * v49) >> v61) & 1) != 0)
          {
            v62 = v60 + *(v131 + 16 * v49 + 2 * v61);
            v60 = v62 >= 0x3F ? 63 : v62;
            if (v62 < 0)
            {
              v60 = 0;
            }
          }

          if (!v34[4052])
          {
            goto LABEL_125;
          }

          v63 = v45[16];
          v64 = *(v134 + v63);
          if (v63 >= 1)
          {
            v64 += *(v130 + mode_lf_lut_0[v45[2]]);
          }

          v65 = (v64 << (v60 >> 5)) + v60;
          v60 = v65 >= 0x3F ? 63 : v65;
          if ((v65 & 0x80000000) == 0)
          {
LABEL_125:
            if (v60)
            {
              v52 = v60;
              if (v47 != v45)
              {
                goto LABEL_165;
              }

              goto LABEL_159;
            }
          }

          if (v55)
          {
            v66 = &v47[v136[1] + 163];
            v67 = v138;
            if (!a8)
            {
              goto LABEL_136;
            }
          }

          else
          {
            v66 = v47 + 162;
            v67 = v138;
            if (!a8)
            {
              goto LABEL_136;
            }
          }

          v67 = v137;
          if (a8 != 1)
          {
            v67 = v129;
          }

LABEL_136:
          v68 = *v67 + *v66;
          if (v68 >= 0x3F)
          {
            v69 = 63;
          }

          else
          {
            v69 = v68;
          }

          if (v68 >= 0)
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          if (*v34)
          {
            v71 = *(v47 + 167) & 7;
            if ((*(v135 + 4 * v71) >> v61))
            {
              v72 = v70 + *(v131 + 16 * v71 + 2 * seg_lvl_lf_lut[2 * a8 + 1]);
              if (v72 >= 0x3F)
              {
                v70 = 63;
              }

              else
              {
                v70 += *(v131 + 16 * v71 + 2 * seg_lvl_lf_lut[2 * a8 + 1]);
              }

              if (v72 < 0)
              {
                v70 = 0;
              }
            }
          }

          if (v34[4052])
          {
            v73 = v47[16];
            v74 = *(v134 + v73);
            if (v73 >= 1)
            {
              v74 += *(v130 + mode_lf_lut_0[v47[2]]);
            }

            v75 = (v74 << (v70 >> 5)) + v70;
            if (v75 >= 0x3F)
            {
              v76 = 63;
            }

            else
            {
              v76 = v75;
            }

            if (v75 >= 0)
            {
              LOBYTE(v70) = v76;
            }

            else
            {
              LOBYTE(v70) = 0;
            }
          }

          v52 = v70;
          if (v47 != v45)
          {
LABEL_165:
            v79 = v46;
            if (v52)
            {
              *v42 = horz_filter_length_chroma[19 * v46 + v29];
              *(v42 + 1) = v133 + 48 * v52;
              v79 = *v41;
            }

            goto LABEL_72;
          }

LABEL_159:
          if (!v45[144])
          {
            goto LABEL_165;
          }

          if ((v48 & 0x80) != 0)
          {
            v80 = v47 == v45;
            v79 = v46;
            if (!v80)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v27 = v47 == v45;
            v77 = v45[16] >= 1;
            v78 = v27 && v77;
            v79 = v46;
            if (!v78)
            {
              goto LABEL_165;
            }
          }

LABEL_72:
          if (v38 >= tx_size_wide_2[v46])
          {
            v38 = tx_size_wide_2[v46];
          }

          v43 = tx_size_high_unit[v79];
          v40 += v43 << v20;
          v42 += 16 * v43;
          v41 += v43;
          v29 = v79;
          if (v40 >= v112)
          {
            goto LABEL_171;
          }
        }

        if (v46 - 11 < 2 || v46 == 4)
        {
          v46 = 3;
          *v41 = 3;
          v47 = v44[v119];
          v48 = *(v45 + 167);
          v49 = v48 & 7;
          if (!*v33)
          {
            goto LABEL_78;
          }

          goto LABEL_99;
        }

        goto LABEL_98;
      }

LABEL_171:
      if ((v18 & 3) != 0 || (v18 | 3) >= v122 || v38 <= 15)
      {
        v81 = 4 * v139;
        if (v18)
        {
          v123 = 0;
          v83 = 0;
          if (v141 < 1)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v83 = (v18 | 1) < v122 && v38 > 7;
          v123 = v83;
          if (v141 < 1)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v83 = 2;
        v123 = 3;
        v81 = 4 * v139;
        if (v141 < 1)
        {
          goto LABEL_7;
        }
      }

      v84 = 4 * v128;
      if (a9)
      {
        v85 = 0;
        v86 = a6;
        v87 = a7;
        while (1)
        {
          if (*v87 == 255)
          {
            *v86 = 0;
            *v87 = 0;
          }

          v95 = v85 * v81 + v84;
          v96 = (*(a3 + 16) + v95);
          v97 = (*(a3 + 2624) + v95);
          v98 = *(v86 + 1);
          HIDWORD(v100) = *v86 - 4;
          LODWORD(v100) = HIDWORD(v100);
          v99 = v100 >> 1;
          if (v83 != 2)
          {
            break;
          }

          if (!v99)
          {
            aom_lpf_horizontal_4_dual_neon(v96, v139, *(v86 + 1), (v98 + 16), (v98 + 32), *(v86 + 1), (v98 + 16), (v98 + 32));
            aom_lpf_horizontal_4_dual_neon(v96 + 2, v139, v98, (v98 + 16), (v98 + 32), v98, (v98 + 16), (v98 + 32));
            aom_lpf_horizontal_4_dual_neon(v97, v139, v98, (v98 + 16), (v98 + 32), v98, (v98 + 16), (v98 + 32));
            v105 = v97 + 2;
            v101 = (v98 + 16);
            v102 = (v98 + 32);
            v103 = (v98 + 16);
            v104 = (v98 + 32);
            v106 = v139;
            v81 = 4 * v139;
            goto LABEL_206;
          }

          if (v99 == 1)
          {
            aom_lpf_horizontal_6_dual_neon(v96, v139, *(v86 + 1), (v98 + 16), (v98 + 32), *(v86 + 1), (v98 + 16), (v98 + 32));
            aom_lpf_horizontal_6_dual_neon(v96 + 2, v139, v98, (v98 + 16), (v98 + 32), v98, (v98 + 16), (v98 + 32));
            aom_lpf_horizontal_6_dual_neon(v97, v139, v98, (v98 + 16), (v98 + 32), v98, (v98 + 16), (v98 + 32));
            v92 = v97 + 2;
            v88 = (v98 + 16);
            v89 = (v98 + 32);
            v90 = (v98 + 16);
            v91 = (v98 + 32);
            v93 = v139;
            v81 = 4 * v139;
LABEL_189:
            aom_lpf_horizontal_6_dual_neon(v92, v93, v98, v88, v89, v98, v90, v91);
          }

LABEL_190:
          v94 = tx_size_high_unit[*v87];
          v85 += v94;
          v86 += 16 * v94;
          v87 += v94;
          if (v85 >= v141)
          {
            goto LABEL_7;
          }
        }

        if (v83 != 1)
        {
          if (v99)
          {
            if (v99 == 1)
            {
              aom_lpf_horizontal_6_neon(v96, v139, *(v86 + 1), (v98 + 16), (v98 + 32));
              v81 = 4 * v139;
              aom_lpf_horizontal_6_neon(v97, v139, v98, (v98 + 16), (v98 + 32));
            }
          }

          else
          {
            aom_lpf_horizontal_4_neon(v96, v139, *(v86 + 1), (v98 + 16), (v98 + 32));
            v81 = 4 * v139;
            aom_lpf_horizontal_4_neon(v97, v139, v98, (v98 + 16), (v98 + 32));
          }

          goto LABEL_190;
        }

        if (!v99)
        {
          aom_lpf_horizontal_4_dual_neon(v96, v139, *(v86 + 1), (v98 + 16), (v98 + 32), *(v86 + 1), (v98 + 16), (v98 + 32));
          v101 = (v98 + 16);
          v102 = (v98 + 32);
          v103 = (v98 + 16);
          v104 = (v98 + 32);
          v105 = v97;
          v106 = v139;
LABEL_206:
          aom_lpf_horizontal_4_dual_neon(v105, v106, v98, v101, v102, v98, v103, v104);
          goto LABEL_190;
        }

        if (v99 != 1)
        {
          goto LABEL_190;
        }

        aom_lpf_horizontal_6_dual_neon(v96, v139, *(v86 + 1), (v98 + 16), (v98 + 32), *(v86 + 1), (v98 + 16), (v98 + 32));
        v88 = (v98 + 16);
        v89 = (v98 + 32);
        v90 = (v98 + 16);
        v91 = (v98 + 32);
        v92 = v97;
        v93 = v139;
        goto LABEL_189;
      }

      v107 = 0;
      v108 = a6;
      v109 = a7;
      do
      {
        if (*v109 == 255)
        {
          *v108 = 0;
          *v109 = 0;
        }

        filter_horz((*(a3 + 16) + v84 + v107 * v81), v139, *v108, *(v108 + 1), v83);
        v110 = tx_size_high_unit[*v109];
        v107 += v110;
        v108 += 16 * v110;
        v109 += v110;
      }

      while (v107 < v141);
LABEL_7:
      v17 = a1;
      v18 = v128 + v123 + 1;
      v15 = a4;
      v16 = a2;
      v21 = v120;
      v19 = v121;
      if (v18 >= v122)
      {
        return;
      }
    }

    if (a8)
    {
      v25 = max_txsize_rect_lookup[av1_ss_size_lookup[4 * *v24 + 2 * v19 + v20]];
      if (v25 > 0x10)
      {
        if (v25 == 17)
        {
          v25 = 9;
          *a7 = 9;
          if (!v15)
          {
LABEL_20:
            v28 = 64;
            v29 = v25;
LABEL_42:
            v34 = v113;
            v33 = v114;
            goto LABEL_68;
          }

LABEL_30:
          v26 = v23[v119];
          if (!v16)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        if (v25 == 18)
        {
          v25 = 10;
        }
      }

      else
      {
        v27 = v25 - 11 < 2 || v25 == 4;
        if (v27)
        {
          v25 = 3;
          *a7 = 3;
          if (!v15)
          {
            goto LABEL_20;
          }

          goto LABEL_30;
        }
      }
    }

    else
    {
      v25 = v24[145];
      if (((*(v24 + 167) & 0x80) != 0 || v24[16] >= 1) && !v24[144])
      {
        v30 = *v24;
        v25 = v24[(((mi_size_wide_4[v30] - 1) & v22) >> av1_get_txb_size_index_tw_w_log2_table[v30]) + 146 + (((mi_size_high_3[v30] - 1) & v118) >> av1_get_txb_size_index_tw_h_log2_table[v30] << av1_get_txb_size_index_stride_log2_table[v30])];
        *a7 = v25;
        if (!v15)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }
    }

    *a7 = v25;
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }
}

uint64_t get_filter_level(uint64_t a1, uint64_t a2, unsigned int a3, int a4, _BYTE *a5)
{
  v5 = a5[167] & 7;
  if (!*(a1 + 24376))
  {
    LOBYTE(v7) = *(a2 + (a4 << 8) + 32 * v5 + 16 * a3 + 2 * a5[16] + mode_lf_lut_0[a5[2]] + 3072);
    return v7;
  }

  if (*(a1 + 24384))
  {
    v6 = &a5[delta_lf_id_lut[2 * a4 + a3] + 163];
  }

  else
  {
    v6 = a5 + 162;
  }

  v9 = *v6;
  v10 = (a1 + 23032);
  v11 = a1 + 23036;
  if (!a4)
  {
    v11 = a1 + 4 * a3 + 23024;
  }

  if (a4 != 1)
  {
    v10 = v11;
  }

  v12 = *v10 + v9;
  if (v12 >= 0x3F)
  {
    v13 = 63;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 18992) && ((*(a1 + 4 * (a5[167] & 7) + 19124) >> seg_lvl_lf_lut[2 * a4 + a3]) & 1) != 0)
  {
    v14 = v7 + *(a1 + 16 * v5 + 2 * seg_lvl_lf_lut[2 * a4 + a3] + 18996);
    if (v14 >= 0x3F)
    {
      v15 = 63;
    }

    else
    {
      v15 = v14;
    }

    if (v14 >= 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }
  }

  if (!*(a1 + 23044))
  {
    return v7;
  }

  v16 = a5[16];
  v17 = *(a1 + v16 + 23046);
  if (v16 >= 1)
  {
    v17 += *(a1 + mode_lf_lut_0[a5[2]] + 23054);
  }

  v18 = (v17 << (v7 >> 5)) + v7;
  if (v18 >= 0x3F)
  {
    v19 = 63;
  }

  else
  {
    v19 = v18;
  }

  if (v18 >= 0)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t av1_get_max_uv_txsize(int a1, int a2, int a3)
{
  result = max_txsize_rect_lookup[av1_ss_size_lookup[4 * a1 + 2 * a2 + a3]];
  if (result > 0x10)
  {
    if (result == 17)
    {
      return 9;
    }

    else if (result == 18)
    {
      return 10;
    }
  }

  else if ((result - 11) < 2 || result == 4)
  {
    return 3;
  }

  return result;
}

int *av1_update_noise_estimate(int *result, double a2, double a3, double a4, double a5, int32x4_t a6)
{
  v109 = *MEMORY[0x277D85DE8];
  v6 = result + 159282;
  v7 = result + 114217;
  v8 = result + 66179;
  v9 = result + 59768;
  v10 = result[59778];
  v11 = 40;
  if (v10 <= 352)
  {
    if (result[59779] >= 289)
    {
      v11 = 40;
    }

    else
    {
      v11 = 60;
    }
  }

  v12 = *(result + 33212);
  v13 = result[66388];
  if (v13 < 1)
  {
LABEL_9:
    v14 = *v7;
    if (!*v7)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (*(*result + 50968))
  {
    if (*v6 == result[159284] - 1)
    {
      v12 = result + 159400;
    }

    goto LABEL_9;
  }

  v12 = result + 159400;
  v14 = *v7;
  if (!*v7)
  {
LABEL_15:
    v16 = 1;
    v17 = *v9;
    if (v13 < 1)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

LABEL_10:
  v15 = result[114218];
  if (!v15)
  {
    goto LABEL_15;
  }

  if (v10 == v14)
  {
    v16 = result[59779] == v15;
    v17 = *v9;
    if (v13 < 1)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
    v17 = *v9;
    if (v13 < 1)
    {
      goto LABEL_26;
    }
  }

LABEL_18:
  if (!*(*result + 50968))
  {
    if (v10 < 320)
    {
      goto LABEL_26;
    }

LABEL_23:
    if (result[59779] > 179)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (v10 >= 320 && *v6 == result[159284] - 1)
  {
    goto LABEL_23;
  }

LABEL_26:
  if (result[66402] || *v8 != 1 || *(result + 264752) != 3 || result[66392] <= 4 || !v16 || *(*result + 50968) || result[66355] == 1 || result[59779] * v10 <= 230399)
  {
    v18 = 1;
    result[159386] = 0;
    v19 = result[159284];
    if (v19 < 2)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_24:
  v18 = 0;
  result[159386] = 1;
  v19 = result[159284];
  if (v19 < 2)
  {
    goto LABEL_35;
  }

LABEL_34:
  v17 = result[159292];
LABEL_35:
  if ((v18 & 1) != 0 || (v17 & 7) != 0 || !v12 || v19 == 1 && (result[159392] != v10 || result[159393] != result[59779]))
  {
    if (v13 >= 1 && (!*(*result + 50968) || *v6 == v19 - 1) && result[159402] >= 1)
    {
      v20 = 0;
      v21 = *(result + 33211);
      v22 = *(result + 79705);
      v23 = *(v21 + 40);
      do
      {
        result = memcpy(v22, v23, v6[118]);
        v22 += v6[126];
        v23 += *(v21 + 32);
        ++v20;
      }

      while (v20 < v6[120]);
    }

    if (v12)
    {
      *(v6 + 55) = *(v9 + 5);
    }

    return result;
  }

  v24 = result + 97110;
  if (v17 >= 61 && result[159312] > 1 && *v24 > v19 && *v6 == v19 - 1 && result[97150] < v11)
  {
    result[159387] = 0;
    result[159391] = 0;
    result[159394] = 10;
    if (v13 >= 1 && result[159292] >= 2)
    {
      result[159449] = 0;
      *(result + 159453) = 0;
      v25 = *(result + 33211);
      v26 = result + 159400;

      return copy_frame_0(v26, v25);
    }

    return result;
  }

  v27.n128_u64[1] = 0;
  v108 = 0u;
  memset(v107, 0, sizeof(v107));
  v28 = result + 66422;
  v29 = result[59897];
  if (v29 < 1 || (v30 = result[59898], v30 < 1))
  {
    v66 = 0;
    v67 = 0;
    result[159392] = v10;
    result[159393] = result[59779];
LABEL_113:
    v86 = v107[0].i32[1];
    v85 = v107[0].i32[2];
    goto LABEL_114;
  }

  v104 = result + 66179;
  v31 = 0;
  v32 = 0;
  v33 = *(*v28 + 40);
  v34 = *(*v28 + 32);
  v35 = *(v12 + 5);
  v36 = v12[8];
  v37 = v30 >> 1;
  v38 = *(result + 79728);
  v39 = ((v30 - 1) >> 1) + 1;
  v40 = v39 & 0xFFFFFFFFFFFFFFFCLL;
  v41 = v38 + 1;
  v27.n128_u64[0] = 0x2000200020002;
  v42.n128_u64[0] = 0x100000001;
  v42.n128_u64[1] = 0x100000001;
  v43.n128_u64[0] = 0x202020202020202;
  v43.n128_u64[1] = 0x202020202020202;
  v44 = v38;
  do
  {
    if (v30 >= 7)
    {
      if (v30 < 0x3F)
      {
        v46 = 0;
LABEL_72:
        v63 = v32;
        do
        {
          a6.i32[0] = *(v38->i32 + (v31 >> 1) * v37 + (v46 & 0x7FFFFFFFFFFFFFFCLL));
          a6 = vandq_s8(vmovl_u16(vcgt_u16(*&vmovl_u8(*a6.i8), 0x2000200020002)), v42);
          v63 = vaddq_s32(v63, a6);
          v46 += 4;
        }

        while (v40 != v46);
        v32 = vaddvq_s32(v63);
        v45 = 2 * (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39 == v40)
        {
          goto LABEL_63;
        }

        goto LABEL_75;
      }

      v47 = 0uLL;
      v48 = v32;
      v49 = v39 & 0xFFFFFFFFFFFFFFE0;
      v50 = v41;
      v51 = 0uLL;
      v52 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      do
      {
        v57 = vcgtq_u8(v50[-1], v43);
        v58 = vmovl_u8(*v57.i8);
        v59 = vmovl_high_u8(v57);
        v60 = vcgtq_u8(*v50, v43);
        v61 = vmovl_u8(*v60.i8);
        v62 = vmovl_high_u8(v60);
        v52 = vaddq_s32(v52, vandq_s8(vmovl_high_u16(v59), v42));
        v51 = vaddq_s32(v51, vandq_s8(vmovl_u16(*v59.i8), v42));
        v47 = vaddq_s32(v47, vandq_s8(vmovl_high_u16(v58), v42));
        v48 = vaddq_s32(v48, vandq_s8(vmovl_u16(*v58.i8), v42));
        v56 = vaddq_s32(v56, vandq_s8(vmovl_high_u16(v62), v42));
        v55 = vaddq_s32(v55, vandq_s8(vmovl_u16(*v62.i8), v42));
        v54 = vaddq_s32(v54, vandq_s8(vmovl_high_u16(v61), v42));
        v53 = vaddq_s32(v53, vandq_s8(vmovl_u16(*v61.i8), v42));
        v50 += 2;
        v49 -= 32;
      }

      while (v49);
      a6 = vaddq_s32(vaddq_s32(v54, v47), vaddq_s32(v56, v52));
      v32 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v53, v48), vaddq_s32(v55, v51)), a6));
      if (v39 == (v39 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_63;
      }

      v46 = v39 & 0xFFFFFFFFFFFFFFE0;
      v45 = 2 * (v39 & 0xFFFFFFFFFFFFFFE0);
      if ((v39 & 0x1C) != 0)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v45 = 0;
    }

LABEL_75:
    v64 = &v44->u8[v45 >> 1];
    do
    {
      v65 = *v64++;
      if (v65 > 2)
      {
        ++v32;
      }

      v45 += 2;
    }

    while (v45 < v30);
LABEL_63:
    v31 += 2;
    v41 = (v41 + v37);
    v44 = (v44 + v37);
  }

  while (v31 < v29);
  if (v32 >= (3 * v29 * v30) >> 5)
  {
    v103 = result + 66422;
    v68 = 0;
    v105 = result + 97110;
    while (v30 < 1)
    {
LABEL_84:
      v33 += 4 * (v34 - v30);
      v35 += 4 * (v36 - v30);
      if (++v68 >= v29)
      {
        v10 = v9[10];
        v67 = v107[0].i32[0];
        v66 = HIDWORD(v108);
        v28 = v103;
        goto LABEL_110;
      }
    }

    v69 = 0;
    while (2)
    {
      if (((v69 | v68) & 7) == 0 && v68 < v9[129] - 3 && v69 < v30 - 3)
      {
        v72 = (v69 >> 1) + ((v30 >> 1) * (v68 >> 1));
        v73 = v72 + (v30 >> 1);
        v74 = *(v6 + 87);
        v75 = (v74 + v72);
        v76 = *v75;
        v77 = v75[1];
        v78 = (v74 + v73);
        v79 = *v78;
        v80 = v78[1];
        if (v79 < v80)
        {
          v80 = v79;
        }

        if (v77 < v80)
        {
          v80 = v77;
        }

        if (v80 >= v76)
        {
          v80 = v76;
        }

        if (v80 >= 3 && !v24[4])
        {
          v81 = result;
          v82 = v34;
          v83 = v36;
          v84 = (*(*result + 52184))(v33, v27, v42, v43);
          if (v84 < 0x7D0)
          {
            v70 = &v107[0].i8[4 * (v84 / 0x64u)];
          }

          else
          {
            v70 = &v108 + 12;
            if (v84 >= 0xBB8)
            {
LABEL_89:
              LODWORD(v30) = v9[130];
              v34 = v82;
              v24 = v105;
              v36 = v83;
              result = v81;
              goto LABEL_90;
            }
          }

          ++*v70;
          goto LABEL_89;
        }
      }

LABEL_90:
      v33 += 4;
      v35 += 4;
      if (++v69 >= v30)
      {
        LODWORD(v29) = v9[129];
        goto LABEL_84;
      }

      continue;
    }
  }

  v66 = 0;
  v67 = 0;
LABEL_110:
  v8 = v104;
  v6[110] = v10;
  v6[111] = v9[11];
  if (v67 < 0xB || v66 <= v67 >> 2)
  {
    goto LABEL_113;
  }

  v67 = 0;
  v107[0].i32[0] = 0;
  *(v107 + 4) = vshlq_u32(*(v107 + 4), xmmword_273BD3050);
  v107[1].i32[1] = v107[1].i32[1] >> 1;
  v107[1].i32[2] = (3 * v107[1].i32[2]) >> 1;
  v66 >>= 1;
  HIDWORD(v108) = v66;
  v85 = v107[0].i32[2];
  v86 = v107[0].i32[1];
LABEL_114:
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = (DWORD1(v108) + (v66 >> 1) + 2 * DWORD2(v108) + 2) >> 2;
  v91 = v66 >> 2;
  v92 = (v86 + v67 + v85) / 3;
  v93 = v107;
  do
  {
    if (v87 == 19)
    {
      v106[19] = v91;
    }

    else if (v87 == 18)
    {
      v106[18] = v90;
    }

    else if (v87)
    {
      v106[v87] = (v93[-1].i32[3] + 2 * v93->i32[0] + v93->i32[1] + 2) >> 2;
    }

    else
    {
      v106[0] = v92;
    }

    if (v106[v87] > v89)
    {
      v89 = v106[v87];
      v88 = v87;
    }

    ++v87;
    v93 = (v93 + 4);
  }

  while (v87 != 20);
  v94 = (3 * v6[106] + 40 * v88) >> 2;
  v6[106] = v94;
  if (v6[105] <= 1 && v94 > v6[108] || (v95 = v6[109] + 1, v6[109] = v95, v95 == v6[112]))
  {
    v6[112] = 30;
    v6[109] = 0;
    v96 = v6[107];
    if (v94 <= 2 * v96)
    {
      if (v94 <= v96)
      {
        v97 = v94 > v96 >> 1;
      }

      else
      {
        v97 = 2;
      }
    }

    else
    {
      v97 = 3;
    }

    v6[105] = v97;
    if (v8[209] > 0)
    {
      if (!*(*result + 50968) || *v6 == v6[2] - 1)
      {
        v6[171] = v97;
        v98 = v97 && !v6[172];
        v6[167] = v98;
        v6[172] = v97;
      }

LABEL_143:
      if ((!*(*result + 50968) || *v6 == v6[2] - 1) && v6[120] >= 1)
      {
        v99 = 0;
        v100 = *v28;
        v101 = *(v6 + 64);
        v102 = *(*v28 + 40);
        do
        {
          result = memcpy(v101, v102, v6[118]);
          v101 += v6[126];
          v102 += *(v100 + 32);
          ++v99;
        }

        while (v99 < v6[120]);
      }
    }
  }

  else if (v8[209] >= 1)
  {
    goto LABEL_143;
  }

  return result;
}

int *copy_frame_0(int *result, uint64_t a2)
{
  if (result[2] >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = *(result + 5);
    v6 = *(a2 + 40);
    do
    {
      result = memcpy(v5, v6, *v3);
      v5 += v3[8];
      v6 += *(a2 + 32);
      ++v4;
    }

    while (v4 < v3[2]);
  }

  return result;
}

void av1_quantize_skip(uint64_t a1, void *a2, void *a3, _WORD *a4)
{
  v6 = 4 * a1;
  bzero(a2, 4 * a1);
  bzero(a3, v6);
  *a4 = 0;
}

double av1_quantize_fp_facade(int16x8_t *a1, uint64_t a2, uint64_t a3, int32x4_t *a4, int32x4_t *a5, __int16 *a6, uint64_t a7, int *a8, int16x8_t a9)
{
  v64 = *MEMORY[0x277D85DE8];
  v12 = *(a8 + 1);
  v13 = *(a8 + 2);
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = *a8;
    if (*a8 == 2)
    {
      a9.i64[0] = av1_quantize_fp_64x64_neon(a1, a2, *(a3 + 120), *(a3 + 88), *(a3 + 80), *(a3 + 112), a4, a5, *(a3 + 128), a6, *a7, *(a7 + 8));
    }

    else if (v15 == 1)
    {
      a9.i64[0] = av1_quantize_fp_32x32_neon(a1, a2, *(a3 + 120), *(a3 + 88), *(a3 + 80), *(a3 + 112), a4, a5, *(a3 + 128), a6, *a7, *(a7 + 8));
    }

    else if (!v15)
    {
      v16 = *(a7 + 8);
      a9 = **(a3 + 80);
      v17 = **(a3 + 128);
      v18 = **(a3 + 88);
      v19 = vuzp1q_s16(*a1, a1[1]);
      v20 = vcltzq_s16(v19);
      v21 = vshrq_n_s16(vqdmulhq_s16(vqaddq_s16(vabsq_s16(v19), v18), a9), 1uLL);
      v22.i64[0] = 0x1000100010001;
      v22.i64[1] = 0x1000100010001;
      v23 = vcgtzq_s16(v21);
      v24 = vsubq_s16(veorq_s8(v21, v20), v20);
      v25 = vmulq_s16(v24, v17);
      *a4 = vmovl_s16(*v24.i8);
      a4[1] = vmovl_high_s16(v24);
      *a5 = vmovl_s16(*v25.i8);
      a5[1] = vmovl_high_s16(v25);
      v27 = *v16;
      v26 = v16 + 1;
      v25.i64[0] = -1;
      v25.i64[1] = -1;
      v28 = vmaxq_s16(vandq_s8(vaddq_s16(v27, v22), v23), v25);
      v29 = vdupq_lane_s16(*v17.i8, 1);
      v30 = vdupq_lane_s16(*v18.i8, 1);
      v31 = a5 + 3;
      v32 = a4 + 3;
      v33 = a2 + 8;
      v34 = a1 + 3;
      do
      {
        v35 = vuzp1q_s16(v34[-1], *v34);
        v36 = vqaddq_s16(vabsq_s16(v35), v30);
        v37 = vcltzq_s16(v35);
        v38 = vshrq_n_s16(vqdmulhq_lane_s16(v36, *a9.i8, 1), 1uLL);
        v39 = vsubq_s16(veorq_s8(v38, v37), v37);
        v40 = vmulq_s16(v39, v29);
        v32[-1] = vmovl_s16(*v39.i8);
        *v32 = vmovl_high_s16(v39);
        v31[-1] = vmovl_s16(*v40.i8);
        *v31 = vmovl_high_s16(v40);
        v41 = *v26++;
        v28 = vmaxq_s16(v28, vandq_s8(vaddq_s16(v41, v22), vcgtzq_s16(v38)));
        v31 += 2;
        v32 += 2;
        v33 -= 8;
        v34 += 2;
      }

      while (v33 > 16);
      a9.i16[0] = vmaxvq_s16(v28);
      *a6 = a9.i16[0];
    }
  }

  else
  {
    v43 = *(a3 + 80);
    v42 = *(a3 + 88);
    v44 = *(a3 + 128);
    v45 = *a7;
    v46 = *a8;
    v47 = 1 << *a8 >> 1;
    v48 = (v47 + *v42) >> *a8;
    LODWORD(v42) = (v47 + v42[1]) >> *a8;
    v63[0] = v48;
    v63[1] = v42;
    bzero(a4, 4 * a2);
    bzero(a5, 4 * a2);
    if (a2 < 1)
    {
      v59 = 0;
    }

    else
    {
      v49 = 0;
      v50 = -1;
      do
      {
        v51 = *(v45 + 2 * v49);
        v52 = a1->i32[v51];
        v53 = *(v44 + 2 * (*(v45 + 2 * v49) != 0));
        if (v52 >= 0)
        {
          v54 = a1->i32[v51];
        }

        else
        {
          v54 = -v52;
        }

        if (*(v12 + v51) * v54 >= v53 << (4 - v46))
        {
          v55 = v52 >> 31;
          v56 = (*(v13 + v51) * v53 + 16) >> 5;
          v57 = v63[*(v45 + 2 * v49) != 0] + v54;
          if (v57 >= 0x7FFF)
          {
            v57 = 0x7FFFLL;
          }

          if (v57 <= -32768)
          {
            v57 = -32768;
          }

          v58 = (*(v43 + 2 * (*(v45 + 2 * v49) != 0)) * *(v12 + v51) * v57) >> (21 - v46);
          a4->i32[v51] = (v55 ^ v58) - v55;
          a5->i32[v51] = (((v56 * v58) >> v46) ^ v55) - v55;
          if (v58)
          {
            v50 = v49;
          }
        }

        ++v49;
      }

      while (a2 != v49);
      v59 = v50 + 1;
    }

    *a6 = v59;
  }

  return *a9.i64;
}

double av1_quantize_b_facade(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x8_t *a5, _WORD *a6, uint64_t a7, int *a8, __n128 a9)
{
  v9 = *(a8 + 1);
  v10 = *(a8 + 2);
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *a8;
    if (*a8 == 2)
    {
      a9.n128_u64[0] = aom_quantize_b_helper_neon(a1, a2, *(a3 + 120), *(a3 + 104), *(a3 + 96), *(a3 + 112), a4, a5, a9, *(a3 + 128), a6, v14, *(a7 + 8), 0, 0, 2).n128_u64[0];
    }

    else if (v12 == 1)
    {
      a9.n128_u64[0] = aom_quantize_b_helper_neon(a1, a2, *(a3 + 120), *(a3 + 104), *(a3 + 96), *(a3 + 112), a4, a5, a9, *(a3 + 128), a6, v14, *(a7 + 8), 0, 0, 1).n128_u64[0];
    }

    else if (!v12)
    {
      a9.n128_u64[0] = aom_quantize_b_neon(a1, a2, *(a3 + 120), *(a3 + 104), *(a3 + 96), *(a3 + 112), a4, a5, *(a3 + 128), a6, *a7, *(a7 + 8));
    }
  }

  else
  {
    aom_quantize_b_helper_c(a1, a2, *(a3 + 120), *(a3 + 104), *(a3 + 96), *(a3 + 112), a4, a5, *(a3 + 128), a6, *a7, *(a7 + 8), v9, v10, *a8);
  }

  return a9.n128_f64[0];
}

void av1_quantize_dc_facade(int *a1, int a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _WORD *a6, uint64_t a7, int *a8)
{
  v10 = *(a8 + 1);
  v11 = *(a8 + 2);
  v12 = *(a3 + 104);
  v13 = **(a3 + 80);
  v14 = **(a3 + 128);
  v15 = *a8;
  v16 = *a1;
  v17 = 4 * a2;
  bzero(a4, v17);
  bzero(a5, v17);
  if (v10)
  {
    v18 = *v10;
    if (v11)
    {
LABEL_3:
      v19 = *v11;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 32;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v19 = 32;
LABEL_6:
  v20 = v16 >> 31;
  v21 = ((v16 >> 31) ^ v16) + (v16 >> 31) + ((*v12 + (1 << v15 >> 1)) >> v15);
  if (v21 >= 0x7FFF)
  {
    v21 = 0x7FFF;
  }

  if (v21 <= -32768)
  {
    v21 = -32768;
  }

  v22 = (v18 * v13 * v21) >> (21 - v15);
  *a4 = (v20 ^ v22) - v20;
  *a5 = (((((v19 * v14 + 16) >> 5) * v22) >> v15) ^ v20) - v20;
  *a6 = v22 != 0;
}

uint64_t av1_build_quantizer(uint64_t result, int a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = 0;
  v10 = a7 + 4096;
  v11 = a7 + 0x4000;
  v12 = a7 + 28672;
  v13 = a7 + 0x2000;
  v14 = a7 + 12288;
  v15 = a7 + 40960;
  v16 = a7 + 49152;
  v17 = a7 + 20480;
  v18 = a7 + 0x8000;
  v19 = a7 + 57344;
  v20 = a7 + 0x10000;
  v118 = a7 + 45056;
  v119 = a8 + 4096;
  v116 = a7 + 24576;
  v117 = a7 + 53248;
  v114 = a7 + 61440;
  v115 = a7 + 36864;
  v112 = a8 + 0x2000;
  v113 = a7 + 69632;
  v111 = a8 + 4100;
  v21 = a8;
  v22 = a7;
  v98 = a7;
  v94 = result;
  v92 = a7 + 0x4000;
  v93 = a7 + 4096;
  v90 = a7 + 0x2000;
  v91 = a7 + 28672;
  v88 = a7 + 40960;
  v89 = a7 + 12288;
  v85 = a7 + 0x8000;
  v86 = a7 + 20480;
  v83 = a7 + 0x10000;
  v84 = a7 + 57344;
  v87 = a7 + 49152;
  do
  {
    if (v9 >= 0xFF)
    {
      v23 = 255;
    }

    else
    {
      v23 = v9;
    }

    v109 = v21;
    if (result == 8)
    {
      v24 = dc_qlookup_QTX[v23];
      v120 = v23;
      v25 = 148;
      v26 = dc_qlookup_QTX;
LABEL_17:
      if (v25 <= v24)
      {
        v27 = 80;
      }

      else
      {
        v27 = 84;
      }

      if (v9)
      {
        v28 = v27;
      }

      else
      {
        v28 = 64;
      }

      if (v9)
      {
        v29 = 48;
      }

      else
      {
        v29 = 64;
      }

      if ((v9 + a2) >= 0xFF)
      {
        v30 = 255;
      }

      else
      {
        v30 = v9 + a2;
      }

      if (v9 + a2 >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v26[v31];
      goto LABEL_37;
    }

    if (result == 12)
    {
      v24 = dc_qlookup_12_QTX[v23];
      v120 = v23;
    }

    else
    {
      if (result == 10)
      {
        v24 = dc_qlookup_10_QTX[v23];
      }

      else
      {
        v24 = -1;
      }

      v120 = v23;
    }

    if (result == 12)
    {
      v25 = 2368;
      v26 = dc_qlookup_12_QTX;
      goto LABEL_17;
    }

    if (result == 10)
    {
      v25 = 592;
      v26 = dc_qlookup_10_QTX;
      goto LABEL_17;
    }

    if (v9)
    {
      v29 = 48;
    }

    else
    {
      v29 = 64;
    }

    v32 = -1;
    v28 = -1;
LABEL_37:
    v33 = 16 * v9;
    v34 = __clz(v32) ^ 0x1F;
    *(a7 + v33) = (0x10000 << v34) / v32 + 1;
    *(v10 + v33) = 1 << (16 - v34);
    *(v11 + v33) = 0x10000 / v32;
    *(v12 + v33) = v32 >> 1;
    *(v13 + v33) = (v28 * v32 + 64) >> 7;
    *(v14 + v33) = (v29 * v32) >> 7;
    *(v8 + v33) = v32;
    if ((v9 + a3) >= 0xFF)
    {
      v35 = 255;
    }

    else
    {
      v35 = v9 + a3;
    }

    if (v9 + a3 >= 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    switch(result)
    {
      case 8:
        v37 = dc_qlookup_QTX;
        goto LABEL_49;
      case 0xC:
        v37 = dc_qlookup_12_QTX;
        goto LABEL_49;
      case 0xA:
        v37 = dc_qlookup_10_QTX;
LABEL_49:
        v38 = v37[v36];
        goto LABEL_51;
    }

    v38 = -1;
LABEL_51:
    v39 = __clz(v38) ^ 0x1F;
    *(v15 + 16 * v9) = (0x10000 << v39) / v38 + 1;
    *(v16 + 16 * v9) = 1 << (16 - v39);
    *(v17 + 16 * v9) = 0x10000 / v38;
    *(v18 + 16 * v9) = v38 >> 1;
    *(v19 + 16 * v9) = (v28 * v38 + 64) >> 7;
    *(v20 + 16 * v9) = (v29 * v38) >> 7;
    *(v119 + 16 * v9) = v38;
    if ((v9 + a5) >= 0xFF)
    {
      v40 = 255;
    }

    else
    {
      v40 = v9 + a5;
    }

    if (v9 + a5 >= 0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    switch(result)
    {
      case 8:
        v42 = dc_qlookup_QTX;
        goto LABEL_63;
      case 0xC:
        v42 = dc_qlookup_12_QTX;
        goto LABEL_63;
      case 0xA:
        v42 = dc_qlookup_10_QTX;
LABEL_63:
        v43 = v42[v41];
        goto LABEL_65;
    }

    v43 = -1;
LABEL_65:
    v44 = __clz(v43) ^ 0x1F;
    *(v118 + 16 * v9) = (0x10000 << v44) / v43 + 1;
    *(v117 + 16 * v9) = 1 << (16 - v44);
    *(v116 + 16 * v9) = 0x10000 / v43;
    *(v115 + 16 * v9) = v43 >> 1;
    *(v114 + 16 * v9) = (v28 * v43 + 64) >> 7;
    *(v113 + 16 * v9) = (v29 * v43) >> 7;
    *(v112 + 16 * v9) = v43;
    switch(result)
    {
      case 8:
        v45 = &ac_qlookup_QTX;
        goto LABEL_71;
      case 0xC:
        v45 = &ac_qlookup_12_QTX;
        goto LABEL_71;
      case 0xA:
        v45 = &ac_qlookup_10_QTX;
LABEL_71:
        v46 = v20;
        v47 = v45[v120];
        goto LABEL_73;
    }

    v46 = v20;
    v47 = -1;
LABEL_73:
    v48 = a7 + v33;
    v49 = __clz(v47) ^ 0x1F;
    *(v48 + 2) = (0x10000 << v49) / v47 + 1;
    v50 = (v48 + 2);
    *(v10 + v33 + 2) = 1 << (16 - v49);
    *(v11 + v33 + 2) = 0x10000 / v47;
    *(v12 + v33 + 2) = v47 >> 1;
    *(v13 + v33 + 2) = (v28 * v47 + 64) >> 7;
    v51 = (v13 + v33 + 2);
    *(v14 + v33 + 2) = (v29 * v47) >> 7;
    v52 = v8 + v33;
    *(v52 + 2) = v47;
    v53 = (v52 + 2);
    if ((v9 + a4) >= 0xFF)
    {
      v54 = 255;
    }

    else
    {
      v54 = v9 + a4;
    }

    if (v9 + a4 >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v107 = (v10 + v33 + 2);
    v108 = (v12 + v33 + 2);
    v105 = v53;
    v106 = (v14 + v33 + 2);
    switch(result)
    {
      case 8:
        v56 = &ac_qlookup_QTX;
        goto LABEL_85;
      case 0xC:
        v56 = &ac_qlookup_12_QTX;
        goto LABEL_85;
      case 0xA:
        v56 = &ac_qlookup_10_QTX;
LABEL_85:
        v57 = v56[v55];
        goto LABEL_87;
    }

    v57 = -1;
LABEL_87:
    v58 = __clz(v57);
    *(v15 + v33 + 2) = (0x10000 << (v58 ^ 0x1F)) / v57 + 1;
    *(v16 + v33 + 2) = 1 << (16 - (v58 ^ 0x1F));
    v59 = v16 + v33 + 2;
    *(v17 + v33 + 2) = 0x10000 / v57;
    *(v18 + v33 + 2) = v57 >> 1;
    *(v19 + v33 + 2) = (v28 * v57 + 64) >> 7;
    *(v46 + v33 + 2) = (v29 * v57) >> 7;
    *(v119 + v33 + 2) = v57;
    v110 = v9;
    v60 = v9 + a6;
    if ((v9 + a6) >= 0xFF)
    {
      v61 = 255;
    }

    else
    {
      v61 = v9 + a6;
    }

    if (v60 >= 0)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    v103 = (v18 + v33 + 2);
    v104 = (v17 + v33 + 2);
    v101 = (v46 + v33 + 2);
    v102 = (v19 + v33 + 2);
    v100 = (v119 + v33 + 2);
    switch(result)
    {
      case 8:
        v63 = &ac_qlookup_QTX;
        break;
      case 0xC:
        v63 = &ac_qlookup_12_QTX;
        break;
      case 0xA:
        v63 = &ac_qlookup_10_QTX;
        break;
      default:
        v64 = (v15 + v33 + 2);
        v65 = v11 + v33 + 2;
        v66 = v50;
        v67 = -1;
        goto LABEL_101;
    }

    v64 = (v15 + v33 + 2);
    v65 = v11 + v33 + 2;
    v66 = v50;
    v67 = v63[v62];
LABEL_101:
    v68 = 0;
    v69 = __clz(v67) ^ 0x1F;
    *(v118 + v33 + 2) = (0x10000 << v69) / v67 + 1;
    v121 = (v118 + v33 + 2);
    *(v117 + v33 + 2) = 1 << (16 - v69);
    v70 = (v117 + v33 + 2);
    *(v116 + v33 + 2) = 0x10000 / v67;
    v71 = (v116 + v33 + 2);
    *(v115 + v33 + 2) = v67 >> 1;
    v72 = (v115 + v33 + 2);
    *(v114 + v33 + 2) = (v28 * v67 + 64) >> 7;
    v73 = (v114 + v33 + 2);
    *(v113 + v33 + 2) = (v29 * v67) >> 7;
    v74 = (v113 + v33 + 2);
    v75 = v112 + v33;
    *(v75 + 2) = v67;
    v76 = (v75 + 2);
    v77 = v65;
    v78 = v59;
    do
    {
      v79 = v22 + v68;
      *(v79 + 4) = *v66;
      v80 = (v22 + 4100 + v68);
      v80[6144] = *v77;
      v80[12288] = *v108;
      *(v79 + 4100) = *v107;
      v80[2048] = *v51;
      v80[4096] = *v106;
      *(v109 + v68 + 4) = *v105;
      v80[18432] = *v64;
      v80[0x2000] = *v104;
      v80[14336] = *v103;
      v80[22528] = *v78;
      v80[26624] = *v102;
      v80[30720] = *v101;
      v81 = (v111 + v68);
      *v81 = *v100;
      v80[20480] = *v121;
      v80[10240] = *v71;
      v80[0x4000] = *v72;
      v80[24576] = *v70;
      v80[28672] = *v73;
      v80[0x8000] = *v74;
      v81[2048] = *v76;
      v68 += 2;
    }

    while (v68 != 12);
    v9 = v110 + 1;
    v22 += 16;
    v111 += 16;
    v21 = v109 + 16;
    a7 = v98;
    v8 = a8;
    result = v94;
    v11 = v92;
    v10 = v93;
    v13 = v90;
    v12 = v91;
    v15 = v88;
    v14 = v89;
    v17 = v86;
    v16 = v87;
    v19 = v84;
    v18 = v85;
    v20 = v83;
  }

  while (v110 != 255);
  return result;
}

uint64_t *av1_init_plane_quantizers(uint64_t *result, uint64_t a2, int a3, int a4)
{
  v4 = (a2 + 16904);
  v5 = result + 32928;
  v6 = (result + 32254);
  v7 = (result + 29882);
  v8 = *result;
  v9 = *(*result + 35636);
  if (v9 <= 1599)
  {
    v10 = v9 / 100;
  }

  else
  {
    v10 = 15;
  }

  v11 = *(result + 456792);
  if (*(v8 + 4 * v11 + 1152) >= 6)
  {
    v12 = 6;
  }

  else
  {
    v12 = *(v8 + 4 * v11 + 1152);
  }

  v13 = *(result + 59918);
  v14 = v13;
  if (*v5)
  {
    v14 = *(a2 + 16908) + v13;
  }

  v15 = v14 & ~(v14 >> 31);
  if (v15 >= 255)
  {
    v16 = 255;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(result + 258048);
  if (*(result + 258048) && (*(result + a3 + 64545) & 1) != 0)
  {
    v18 = v16 + SWORD2(result[2 * a3 + 32256]);
    if (v18 >= 0xFF)
    {
      v16 = 255;
    }

    else
    {
      v16 += SWORD2(result[2 * a3 + 32256]);
    }

    if (v18 < 0)
    {
      v16 = 0;
    }
  }

  v19 = v16;
  if (*(result + 66418))
  {
    if (*v5)
    {
      v13 += *(a2 + 16912);
    }

    v19 = v13 & ~(v13 >> 31);
    if (v19 >= 255)
    {
      v19 = 255;
    }

    if (*(result + 258048) && (*(result + a3 + 64545) & 1) != 0)
    {
      v20 = v19 + SWORD2(result[2 * a3 + 32256]);
      if (v20 >= 0xFF)
      {
        v21 = 255;
      }

      else
      {
        v21 = v20;
      }

      if (v20 >= 0)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  v22 = *(result + 59919) + v19;
  v23 = *(result[32967] + 72);
  v24 = *(v8 + v11 + 400);
  v25 = *(result + 66402);
  if (v25 > 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = !v25 && !*(result + 637512) && *(v8 + 23172) != 0;
  }

  if (v22 >= 0xFF)
  {
    v27 = 255;
  }

  else
  {
    v27 = *(result + 59919) + v19;
  }

  if (v22 < 0)
  {
    v27 = 0;
  }

  switch(v23)
  {
    case 8:
      v28 = dc_qlookup_QTX[v27];
      v29 = v28 * v28;
      if (!v24)
      {
        goto LABEL_54;
      }

      break;
    case 12:
      v28 = dc_qlookup_12_QTX[v27];
      v29 = v28 * v28;
      if (!v24)
      {
        goto LABEL_54;
      }

      break;
    case 10:
      v28 = dc_qlookup_10_QTX[v27];
      v29 = v28 * v28;
      if (!v24)
      {
        goto LABEL_54;
      }

      break;
    default:
      v28 = -1;
      v29 = 1;
      if (!v24)
      {
LABEL_54:
        v35 = (v28 * 0.0015 + 3.3) * v29;
        v32 = *v7;
        v33 = *(result + 66184);
        v34 = v35;
        if (v23 == 8)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

      break;
  }

  v30 = v28;
  if ((v24 & 0xFE) == 2)
  {
    v31 = v30 * 0.0015 + 3.25;
  }

  else
  {
    v31 = v30 * 0.0015 + 3.2;
  }

  v32 = *v7;
  v33 = *(result + 66184);
  v34 = (v31 * v29);
  if (v23 == 8)
  {
LABEL_59:
    v36 = 0x7FFFFFFF;
    if (v34 < 0x7FFFFFFF)
    {
      v36 = v34;
    }

    if (v34 <= 0)
    {
      v36 = 1;
    }

    v37 = (a2 + 86568);
    if (v33)
    {
      v26 = 0;
    }

    if (!v32)
    {
      goto LABEL_74;
    }

LABEL_72:
    if (v26)
    {
      v38 = rd_layer_depth_factor[v12] * v36;
      v36 = (((v38 >> 7) * rd_boost_factor_0[v10]) >> 7) + (v38 >> 7);
    }

    goto LABEL_74;
  }

LABEL_55:
  if (v23 == 12)
  {
    v34 = (v34 + 128) >> 8;
    goto LABEL_59;
  }

  if (v23 == 10)
  {
    v34 = (v34 + 8) >> 4;
    goto LABEL_59;
  }

  v36 = -1;
  v37 = (a2 + 86568);
  if (v33)
  {
    v26 = 0;
  }

  if (v32)
  {
    goto LABEL_72;
  }

LABEL_74:
  if (a4 || *v4 != v16)
  {
    *v4 = v16;
    v37[2] = 0;
    v41 = &result[2 * v16];
    *(a2 + 80) = v41 + 2050;
    *(a2 + 88) = v41 + 3586;
    *(a2 + 112) = v41 + 514;
    *(a2 + 120) = v41 + 1026;
    *(a2 + 96) = v41 + 2;
    *(a2 + 104) = v41 + 1538;
    *(a2 + 128) = v41 + 9218;
    *(a2 + 216) = v41 + 2562;
    *(a2 + 224) = v41 + 4098;
    *(a2 + 248) = v41 + 6146;
    *(a2 + 256) = v41 + 7170;
    *(a2 + 232) = v41 + 5122;
    *(a2 + 240) = v41 + 8194;
    *(a2 + 264) = v41 + 9730;
    *(a2 + 352) = v41 + 3074;
    *(a2 + 360) = v41 + 4610;
    *(a2 + 384) = v41 + 6658;
    *(a2 + 392) = v41 + 7682;
    *(a2 + 368) = v41 + 5634;
    *(a2 + 376) = v41 + 8706;
    *(a2 + 400) = v41 + 10242;
    v39 = *v6;
    if (v37[8] == a3)
    {
      goto LABEL_77;
    }

LABEL_82:
    if ((v39 & 1) == 0)
    {
      v42 = a3;
      goto LABEL_86;
    }

LABEL_83:
    v42 = a3;
    if (!*(a2 + 4 * a3 + 11108))
    {
      v43 = *(result + 64509);
      v44 = *(result + 64510);
      v45 = *(result + 64511);
      goto LABEL_87;
    }

LABEL_86:
    v44 = 15;
    v43 = 15;
    v45 = 15;
LABEL_87:
    v46 = &result[57 * v43 + 30886];
    v47 = *v46;
    v48 = a2 + 152 * v42;
    *(v48 + 1840) = *(v46 + 16);
    *(v48 + 1824) = v47;
    v49 = *(v46 + 32);
    v50 = *(v46 + 48);
    v51 = *(v46 + 64);
    *(v48 + 1904) = *(v46 + 80);
    *(v48 + 1888) = v51;
    *(v48 + 1872) = v50;
    *(v48 + 1856) = v49;
    v52 = *(v46 + 96);
    v53 = *(v46 + 112);
    v54 = *(v46 + 128);
    *(v48 + 1968) = *(v46 + 144);
    *(v48 + 1952) = v54;
    *(v48 + 1936) = v53;
    *(v48 + 1920) = v52;
    v55 = &result[57 * v43 + 29974];
    v56 = *(v55 + 16);
    *(v48 + 608) = *v55;
    *(v48 + 624) = v56;
    v57 = *(v55 + 32);
    v58 = *(v55 + 48);
    v59 = *(v55 + 80);
    *(v48 + 672) = *(v55 + 64);
    *(v48 + 688) = v59;
    *(v48 + 640) = v57;
    *(v48 + 656) = v58;
    v60 = *(v55 + 96);
    v61 = *(v55 + 112);
    v62 = *(v55 + 128);
    *(v48 + 752) = *(v55 + 144);
    *(v48 + 720) = v61;
    *(v48 + 736) = v62;
    *(v48 + 704) = v60;
    v63 = &result[57 * v44 + 30886];
    v64 = *(v63 + 152);
    *(v48 + 4448) = *(v63 + 168);
    *(v48 + 4432) = v64;
    v65 = *(v63 + 184);
    v66 = *(v63 + 200);
    v67 = *(v63 + 216);
    *(v48 + 4512) = *(v63 + 232);
    *(v48 + 4496) = v67;
    *(v48 + 4480) = v66;
    *(v48 + 4464) = v65;
    v68 = *(v63 + 248);
    v69 = *(v63 + 264);
    v70 = *(v63 + 280);
    *(v48 + 4576) = *(v63 + 296);
    *(v48 + 4560) = v70;
    *(v48 + 4544) = v69;
    *(v48 + 4528) = v68;
    v71 = &result[57 * v44 + 29974];
    v72 = *(v71 + 152);
    *(v48 + 3232) = *(v71 + 168);
    *(v48 + 3216) = v72;
    v73 = *(v71 + 184);
    v74 = *(v71 + 200);
    v75 = *(v71 + 216);
    *(v48 + 3296) = *(v71 + 232);
    *(v48 + 3280) = v75;
    *(v48 + 3264) = v74;
    *(v48 + 3248) = v73;
    v76 = *(v71 + 248);
    v77 = *(v71 + 264);
    v78 = *(v71 + 280);
    *(v48 + 3360) = *(v71 + 296);
    *(v48 + 3344) = v78;
    *(v48 + 3328) = v77;
    *(v48 + 3312) = v76;
    v79 = &result[57 * v45 + 30886];
    v80 = *(v79 + 304);
    *(v48 + 7056) = *(v79 + 320);
    *(v48 + 7040) = v80;
    v81 = *(v79 + 336);
    v82 = *(v79 + 352);
    v83 = *(v79 + 368);
    *(v48 + 7120) = *(v79 + 384);
    *(v48 + 7104) = v83;
    *(v48 + 7088) = v82;
    *(v48 + 7072) = v81;
    v84 = *(v79 + 400);
    v85 = *(v79 + 416);
    v86 = *(v79 + 432);
    *(v48 + 7184) = *(v79 + 448);
    *(v48 + 7168) = v86;
    *(v48 + 7152) = v85;
    *(v48 + 7136) = v84;
    v87 = &result[57 * v45 + 29974];
    v88 = *(v87 + 304);
    *(v48 + 5840) = *(v87 + 320);
    *(v48 + 5824) = v88;
    v89 = *(v87 + 336);
    v90 = *(v87 + 352);
    v91 = *(v87 + 368);
    *(v48 + 5904) = *(v87 + 384);
    *(v48 + 5888) = v91;
    *(v48 + 5872) = v90;
    *(v48 + 5856) = v89;
    v92 = *(v87 + 400);
    v93 = *(v87 + 416);
    v94 = *(v87 + 432);
    *(v48 + 5968) = *(v87 + 448);
    *(v48 + 5952) = v94;
    *(v48 + 5936) = v93;
    *(v48 + 5920) = v92;
    if (*(result + 258048))
    {
      goto LABEL_80;
    }

    goto LABEL_88;
  }

  v39 = *v6;
  if (v37[8] != a3)
  {
    goto LABEL_82;
  }

LABEL_77:
  if ((v39 & 1) != 0 && !*(a2 + 4 * a3 + 11108))
  {
    goto LABEL_83;
  }

  if (v17)
  {
LABEL_80:
    v40 = (*(result + a3 + 64545) >> 6) & 1;
    goto LABEL_89;
  }

LABEL_88:
  v40 = 0;
LABEL_89:
  v37[2] = v40;
  v95 = v36 >> 6;
  if (v36 >> 6 <= 1)
  {
    v95 = 1;
  }

  *v37 = v95;
  v96 = *(result[32967] + 72);
  switch(v96)
  {
    case 8:
      v97 = &sad_per_bit_lut_8;
      goto LABEL_97;
    case 12:
      v97 = &sad_per_bit_lut_12;
      goto LABEL_97;
    case 10:
      v97 = &sad_per_bit_lut_10;
LABEL_97:
      v37[1] = v97[v19];
      break;
  }

  v37[8] = a3;
  return result;
}

uint64_t av1_set_quantizer(int32x4_t *a1, uint64_t a2, uint64_t a3, signed int a4, int a5, int a6, int a7)
{
  v10 = &a1[1186].i32[1];
  if (a1[1523].i32[0] <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a1[1523].u32[0];
  }

  a1[38].i32[2] = v11;
  a1[38].i32[3] = 0;
  a1[39] = vdupq_n_s32(2 * (a5 != 0));
  if (a6)
  {
    v12 = vcvtd_n_f64_s32(v11, 1uLL);
    v13 = (v12 * -0.46 + 9.26) * 1.04 + (v12 * -0.46 + 9.26) * 1.04;
    v14 = 0.5;
    if (v13 < 0.0)
    {
      v14 = -0.5;
    }

    v15 = (v13 + v14);
    if (v15 >= -24)
    {
      v17 = (v15 & (v15 >> 31));
      if (v17 > 24.0)
      {
        v17 = 24.0;
      }

      v16 = v17;
    }

    else
    {
      v16 = -24;
    }

    a1[39] = vdupq_n_s32(v16);
  }

  if (a7)
  {
    v18 = aom_get_qmlevel_allintra;
  }

  else
  {
    v18 = aom_get_qmlevel;
  }

  *v10 = v18();
  result = (v18)((a1[39].i32[2] + a1[38].i32[2]), a2, a3);
  v10[1] = result;
  if (*(a1[1542].i64[1] + 108))
  {
    result = (v18)((a1[39].i32[3] + a1[38].i32[2]), a2, a3);
  }

  v10[2] = result;
  return result;
}

uint64_t aom_get_qmlevel_allintra(unsigned int a1, int a2, int a3)
{
  if (a1 >= 0xF1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (a1 >= 0xDD)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (a1 >= 0xC9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7;
  }

  if (a1 >= 0xA1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8;
  }

  if (a1 >= 0x65)
  {
    v7 = v6;
  }

  else
  {
    v7 = 9;
  }

  if (a1 >= 41)
  {
    v8 = v7;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  if (v8 >= a2)
  {
    return v9;
  }

  else
  {
    return a2;
  }
}

uint64_t setup_rtcd_internal_5()
{
  result = aom_arm_cpu_caps();
  av1_convolve_2d_sr = av1_convolve_2d_sr_neon;
  av1_convolve_x_sr = av1_convolve_x_sr_neon;
  av1_convolve_y_sr = av1_convolve_y_sr_neon;
  av1_dist_wtd_convolve_2d = av1_dist_wtd_convolve_2d_neon;
  av1_dist_wtd_convolve_x = av1_dist_wtd_convolve_x_neon;
  av1_get_crc32c_value = av1_get_crc32c_value_c;
  av1_warp_affine = av1_warp_affine_neon;
  return result;
}

uint64_t av1_denoiser_denoise(uint64_t result, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, int *a7, int a8)
{
  v8 = result + 637128;
  v9 = *(result + 637136);
  v10 = *(result + 637128);
  v11 = v9 - v10;
  if (v9 - v10 == 2)
  {
    v12 = *(result + 637800);
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  v14 = *(result + 637584) + 192 * v12;
  v15 = *(v14 + 32);
  v16 = 4 * a4;
  v17 = (*(v14 + 40) + v15 * 4 * a3 + v16);
  v18 = *(a2 + 48);
  v19 = *(a2 + 72);
  v20 = *(result + 637812);
  v21 = v20 == 3;
  if ((*(result + 388712) & 1) == 0)
  {
    v22 = 0;
    goto LABEL_18;
  }

  v22 = 0;
  if (!v20)
  {
    goto LABEL_18;
  }

  if (*(a6 + 508))
  {
    v13 = 0;
    v22 = 0;
    goto LABEL_18;
  }

  v23 = *(result + 637592) + 192 * (v9 + ~v10);
  v24 = *(a6 + 472);
  if (v24 == 0xFFFFFFFFLL)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(a6 + 480) - v24;
  }

  v77 = *(v23 + 32);
  v75 = *(v23 + 40);
  v26 = *(*result + 84900);
  v27 = *(*result + 84912);
  v28 = *(*result + 50968);
  v29 = **(a2 + 8280);
  v30 = *(a6 + 504);
  v98 = v29[8];
  v99 = v29[9];
  v100 = v29[10];
  v94 = v29[4];
  v95 = v29[5];
  v96 = v29[6];
  v97 = v29[7];
  v90 = *v29;
  v91 = v29[1];
  v92 = v29[2];
  v93 = v29[3];
  if (a5 - 3 < 3 || a5 == 6 && **(result + 265688) >= 481 && v20 < 2)
  {
    v22 = 0;
LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v36 = *(a6 + 502) * *(a6 + 502) + *(a6 + 500) * *(a6 + 500);
  LOBYTE(v37) = *(a6 + 504);
  if (v37 > 7u || ((1 << v30) & 0x91) == 0)
  {
    if (v36 < 0x272 || v20 == 3)
    {
      v49 = v36 >= 0x272 ? 4 : 16;
      v46 = v49 << num_pels_log2_lookup_1[a5];
    }

    else
    {
      v46 = 0;
    }

    if (v25 > v46)
    {
      v22 = 0;
      *(v29 + 16) = v30;
      *(v29 + 2) = *(a6 + 496);
      *(v29 + 2) = *(a6 + 500);
      v44 = v36;
      if (!v28)
      {
        goto LABEL_74;
      }

LABEL_57:
      if (v30 == 4)
      {
        v45 = v27 + 1;
      }

      else
      {
        v45 = v30;
        if (v30 == 1)
        {
          v45 = v26 + 1;
        }
      }

      if (v11 == 2)
      {
        v45 += *(result + 637800);
      }

      v47 = v11 - 1;
      v48 = *(result + 637584);
      if (!*(v48 + 192 * v45 + 96))
      {
        goto LABEL_85;
      }

      goto LABEL_75;
    }
  }

  v38 = *(a6 + 505);
  v39 = a8 != 0;
  v40 = v9 < 2 || a8 != 0;
  v41 = *(a6 + 480);
  *(a6 + 472) = v41;
  v42 = v38 == 4 && v39;
  if (!v40 || v38 == 7 || v42)
  {
    v43 = *(a6 + 488);
  }

  else
  {
    v37 = v38;
    if (v38 == 1)
    {
      goto LABEL_53;
    }

    v43 = *(a6 + 488);
    if (v43 >= v41 + (v41 >> 2) && v20 < 3)
    {
      goto LABEL_53;
    }
  }

  *(a6 + 472) = v43;
  v37 = 1;
LABEL_53:
  *(v29 + 16) = v37;
  *(v29 + 2) = 15;
  *(v29 + 2) = 0;
  *(a6 + 496) = 15;
  *(a6 + 500) = 0;
  if (*(result + 637812) <= 2u)
  {
    v44 = v36;
  }

  else
  {
    v44 = 0;
  }

  v22 = 1;
  v30 = v37;
  if (v28)
  {
    goto LABEL_57;
  }

LABEL_74:
  v47 = 0;
  v45 = v30;
  v48 = *(result + 637584);
  if (!*(v48 + 192 * v30 + 96))
  {
LABEL_85:
    v29[8] = v98;
    v29[9] = v99;
    v29[10] = v100;
    v29[4] = v94;
    v29[5] = v95;
    v29[6] = v96;
    v29[7] = v97;
    *v29 = v90;
    v29[1] = v91;
    v29[2] = v92;
    v29[3] = v93;
    goto LABEL_17;
  }

LABEL_75:
  if (v20 == 3)
  {
    v50 = 80;
  }

  else
  {
    v50 = 40;
  }

  if (*(a6 + 472) > (v50 << num_pels_log2_lookup_1[a5]) || v44 > 5000)
  {
    goto LABEL_85;
  }

  v78 = *(a2 + 480);
  v79 = *(a2 + 496);
  v84 = *(a2 + 448);
  v85 = *(a2 + 464);
  v80 = *(a2 + 3088);
  v81 = *(a2 + 3104);
  v86 = *(a2 + 3056);
  v87 = *(a2 + 3072);
  v68 = (a2 + 5696);
  v69 = (a2 + 3056);
  v82 = *(a2 + 5696);
  v83 = *(a2 + 5712);
  v67 = (a2 + 5664);
  v88 = *(a2 + 5664);
  v89 = *(a2 + 5680);
  v72 = a7;
  v74 = a5;
  v76 = v75 + v77 * 4 * a3;
  v70 = v47;
  v71 = (a2 + 3088);
  if (v30 > 8)
  {
    goto LABEL_86;
  }

  v51 = v37;
  if (v37 <= 1)
  {
    v51 = 1;
  }

  v52 = *(result + 4 * (v51 - 1) + 239296);
  if (v52 == -1)
  {
LABEL_86:
    v53 = a3;
    v54 = a4;
    v55 = 0;
  }

  else
  {
    v53 = a3;
    v54 = a4;
    v55 = (result + 16 * v52 + 239344);
  }

  *(a2 + 8360) = v55;
  v56 = *(result + 239296);
  if (v56 == -1)
  {
    v57 = 0;
  }

  else
  {
    v57 = result + 16 * v56 + 239344;
  }

  *(a2 + 8368) = v57;
  v73 = v53;
  av1_setup_pre_planes(a2 + 416, 0, v48 + 192 * v45, v53, v54, v55, 1);
  av1_setup_dst_planes(a2 + 432, v74, *(v8 + 464) + 192 * v70, v73, v54, 0, 1);
  av1_enc_build_inter_predictor_y(a2 + 416, v73, v54, v58, v59, v60, v61, v62, v63, v64, v65);
  v29[4] = v94;
  v29[5] = v95;
  v29[9] = v99;
  v29[10] = v100;
  v29[7] = v97;
  v29[8] = v98;
  v29[6] = v96;
  *v29 = v90;
  v29[1] = v91;
  v29[2] = v92;
  v29[3] = v93;
  *(a2 + 480) = v78;
  *(a2 + 496) = v79;
  *(a2 + 448) = v84;
  *(a2 + 464) = v85;
  *v71 = v80;
  v71[1] = v81;
  *v69 = v86;
  v69[1] = v87;
  *v68 = v82;
  v68[1] = v83;
  *v67 = v88;
  v67[1] = v89;
  result = av1_denoiser_filter_neon(v18, v19, (v76 + v16), v77, v17, v15, v21, v74, v36);
  if (result == 1)
  {
    result = aom_convolve_copy_neon(v17, v15, v18, v19, block_size_wide_1[v74], block_size_high_0[v74]);
    v32 = 1;
    v13 = 1;
    a7 = v72;
    goto LABEL_33;
  }

  v13 = result;
  a7 = v72;
  a5 = v74;
LABEL_18:
  v31 = block_size_wide_1[a5];
  v32 = block_size_high_0[a5];
  if ((v31 & 0xF) == 0)
  {
    v33 = 0;
    v34 = v31 >> 4;
    do
    {
      v35 = 0;
      do
      {
        *&v17[2 * v35] = *&v18[2 * v35];
        ++v35;
      }

      while (v34 != v35);
      v18 = (v18 + v19);
      v17 = (v17 + v15);
      ++v33;
    }

    while (v33 != v32);
    goto LABEL_32;
  }

  if ((v31 & 7) != 0)
  {
    if ((v31 & 3) != 0)
    {
      if ((v31 & 1) == 0)
      {
        do
        {
          *v17 = *v18;
          v18 = (v18 + v19);
          v17 = (v17 + v15);
          --v32;
        }

        while (v32);
        goto LABEL_33;
      }

LABEL_32:
      v32 = 0;
      goto LABEL_33;
    }

    do
    {
      *v17 = *v18;
      v18 = (v18 + v19);
      v17 = (v17 + v15);
      --v32;
    }

    while (v32);
  }

  else
  {
    do
    {
      *v17 = *v18;
      v18 = (v18 + v19);
      v17 = (v17 + v15);
      --v32;
    }

    while (v32);
  }

LABEL_33:
  if ((v32 & v22) != 0)
  {
    v13 = 2;
  }

  *a7 = v13;
  return result;
}

_DWORD *av1_denoiser_update_frame_info(_DWORD *result, uint64_t a2, uint64_t a3, int *a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v15 = result;
  if (a14)
  {
    v16 = result[54];
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
    if (!a5)
    {
LABEL_7:
      v17 = result[54];
      if (v17 >= 2)
      {
        v18 = v16;
        for (i = 1; i < v17; ++i)
        {
          v20 = (*v15 + 192 * i + 192 * v18);
          if (*(v20 + 12) && v20[2] >= 1)
          {
            v21 = 0;
            v22 = *(v20 + 5);
            v23 = *(a2 + 40);
            do
            {
              result = memcpy(v22, v23, *v20);
              v22 += v20[8];
              v23 += *(a2 + 32);
              ++v21;
            }

            while (v21 < v20[2]);
            v17 = v15[54];
          }
        }
      }

      v15[53] = 0;
      return result;
    }
  }

  if (a12 || result[53] | a13)
  {
    goto LABEL_7;
  }

  if (*(a3 + 88))
  {
    v24 = a3 + 56;
    v25 = v16;
    v26 = *(a3 + 56 + 4 * *a4);
    if (v26)
    {
      v28 = (*result + 192 * (v16 + 1));
      if (v28[2] >= 1)
      {
        v29 = 0;
        v30 = *result + 192 * v16;
        v31 = *(v28 + 5);
        v32 = *(v30 + 40);
        do
        {
          result = memcpy(v31, v32, *v28);
          v31 += v28[8];
          v32 += *(v30 + 32);
          ++v29;
        }

        while (v29 < v28[2]);
        v26 = *(v24 + 4 * *a4);
      }
    }

    if ((v26 & 2) != 0)
    {
      v33 = (*v15 + 192 * (v16 + 2));
      if (v33[2] >= 1)
      {
        v34 = 0;
        v35 = *v15 + 192 * v16;
        v36 = *(v33 + 5);
        v37 = *(v35 + 40);
        do
        {
          result = memcpy(v36, v37, *v33);
          v36 += v33[8];
          v37 += *(v35 + 32);
          ++v34;
        }

        while (v34 < v33[2]);
        v26 = *(v24 + 4 * *a4);
      }
    }

    if ((v26 & 4) != 0)
    {
      v38 = (*v15 + 192 * (v16 + 3));
      if (v38[2] >= 1)
      {
        v39 = 0;
        v40 = *v15 + 192 * v16;
        v41 = *(v38 + 5);
        v42 = *(v40 + 40);
        do
        {
          result = memcpy(v41, v42, *v38);
          v41 += v38[8];
          v42 += *(v40 + 32);
          ++v39;
        }

        while (v39 < v38[2]);
        v26 = *(v24 + 4 * *a4);
      }
    }

    if ((v26 & 8) != 0)
    {
      v43 = (*v15 + 192 * (v16 + 4));
      if (v43[2] >= 1)
      {
        v44 = 0;
        v45 = *v15 + 192 * v16;
        v46 = *(v43 + 5);
        v47 = *(v45 + 40);
        do
        {
          result = memcpy(v46, v47, *v43);
          v46 += v43[8];
          v47 += *(v45 + 32);
          ++v44;
        }

        while (v44 < v43[2]);
        v26 = *(v24 + 4 * *a4);
      }
    }

    if ((v26 & 0x10) != 0)
    {
      v48 = (*v15 + 192 * (v16 + 5));
      if (v48[2] >= 1)
      {
        v49 = 0;
        v50 = *v15 + 192 * v16;
        v51 = *(v48 + 5);
        v52 = *(v50 + 40);
        do
        {
          result = memcpy(v51, v52, *v48);
          v51 += v48[8];
          v52 += *(v50 + 32);
          ++v49;
        }

        while (v49 < v48[2]);
        v26 = *(v24 + 4 * *a4);
      }
    }

    if ((v26 & 0x20) != 0)
    {
      v53 = (*v15 + 192 * (v16 + 6));
      if (v53[2] >= 1)
      {
        v54 = 0;
        v55 = *v15 + 192 * v16;
        v56 = *(v53 + 5);
        v57 = *(v55 + 40);
        do
        {
          result = memcpy(v56, v57, *v53);
          v56 += v53[8];
          v57 += *(v55 + 32);
          ++v54;
        }

        while (v54 < v53[2]);
        v26 = *(v24 + 4 * *a4);
      }
    }

    if ((v26 & 0x40) != 0)
    {
      v58 = (*v15 + 192 * (v16 + 7));
      if (v58[2] >= 1)
      {
        v59 = 0;
        v60 = *v15 + 192 * v16;
        v61 = *(v58 + 5);
        v62 = *(v60 + 40);
        do
        {
          result = memcpy(v61, v62, *v58);
          v61 += v58[8];
          v62 += *(v60 + 32);
          ++v59;
        }

        while (v59 < v58[2]);
        v26 = *(v24 + 4 * *a4);
      }
    }

    if ((v26 & 0x80) != 0)
    {
      v63 = (*v15 + 192 * (v16 + 8));
      if (v63[2] >= 1)
      {
        v64 = 0;
        v65 = *v15 + 192 * v25;
        v66 = *(v63 + 5);
        v67 = *(v65 + 40);
        do
        {
          result = memcpy(v66, v67, *v63);
          v66 += v63[8];
          v67 += *(v65 + 32);
          ++v64;
        }

        while (v64 < v63[2]);
      }
    }
  }

  else if (a7 + a6 + a8 < 2)
  {
    if (a6)
    {
      v85 = *result + 192 * (a9 + v16);
      v86 = *(v85 + 232);
      v87 = *result + 192 * v16;
      *(v85 + 232) = *(v87 + 40);
      *(v87 + 40) = v86;
    }

    if (a7)
    {
      v88 = *result + 192 * (a10 + v16);
      v89 = *(v88 + 232);
      v90 = *result + 192 * v16;
      *(v88 + 232) = *(v90 + 40);
      *(v90 + 40) = v89;
    }

    if (a8)
    {
      v91 = *result + 192 * (a11 + v16);
      v92 = *(v91 + 232);
      v93 = *result + 192 * v16;
      *(v91 + 232) = *(v93 + 40);
      *(v93 + 40) = v92;
    }
  }

  else
  {
    if (a6)
    {
      v69 = *result + 192 * (v16 + a9);
      if (*(v69 + 200) >= 1)
      {
        v70 = 0;
        v71 = *result + 192 * v16;
        v72 = *(v69 + 232);
        v73 = *(v71 + 40);
        do
        {
          result = memcpy(v72, v73, *(v69 + 192));
          v72 += *(v69 + 224);
          v73 += *(v71 + 32);
          ++v70;
        }

        while (v70 < *(v69 + 200));
      }
    }

    if (a7)
    {
      v74 = *v15 + 192 * (v16 + a10);
      if (*(v74 + 200) >= 1)
      {
        v75 = 0;
        v76 = *v15 + 192 * v16;
        v77 = *(v74 + 232);
        v78 = *(v76 + 40);
        do
        {
          result = memcpy(v77, v78, *(v74 + 192));
          v77 += *(v74 + 224);
          v78 += *(v76 + 32);
          ++v75;
        }

        while (v75 < *(v74 + 200));
      }
    }

    if (a8)
    {
      v79 = v16;
      v80 = *v15 + 192 * (v16 + a11);
      if (*(v80 + 200) >= 1)
      {
        v81 = 0;
        v82 = *v15 + 192 * v79;
        v83 = *(v80 + 232);
        v84 = *(v82 + 40);
        do
        {
          result = memcpy(v83, v84, *(v80 + 192));
          v83 += *(v80 + 224);
          v84 += *(v82 + 32);
          ++v81;
        }

        while (v81 < *(v80 + 200));
      }
    }
  }

  return result;
}

double av1_denoiser_alloc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11)
{
  if (!a4)
  {
    v30 = 1;
    v61 = a7;
    v62 = a6;
    *(a3 + 216) = 7;
    *(a3 + 220) = 1;
    v31 = 7;
    v60 = a6;
    goto LABEL_24;
  }

  v15 = *(a2 + 328) + 13176 * (*(a2 + 4) + *(a2 + 12) * *a2);
  v16 = *(v15 + 13092);
  v61 = a7;
  v62 = a6;
  if (v16)
  {
    v17 = *(v15 + 13088);
    v18 = v17 == 1 && v16 == 1;
    v61 = a7;
    v62 = a6;
    if (!v18)
    {
      v19 = v17 * a6 / v16;
      v20 = v17 * a7;
      v21 = v19 & 1;
      if (v19 < 0)
      {
        v21 = -v21;
      }

      v22 = v21 + v19;
      v23 = v20 / v16;
      v24 = v23 & 1;
      if (v23 < 0)
      {
        v24 = -v24;
      }

      v61 = v24 + v23;
      v62 = v22;
    }
  }

  v25 = *(a2 + 8);
  if (a5 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  if (a5 > 1)
  {
    v27 = -2;
  }

  else
  {
    v27 = -1;
  }

  v28 = v25 + v27;
  if (v25 <= v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  *(a2 + 124) = v29;
  v30 = v25 - v29;
  *(a3 + 216) = 9;
  *(a3 + 220) = v25 - v29;
  v31 = 9 * (v25 - v29);
  v60 = a6;
  if (v30)
  {
LABEL_24:
    if (v31 > 0x2AAAAAA)
    {
      goto LABEL_30;
    }
  }

  v32 = 192 * v31;
  if (v32 <= 0x1FFFFFFE9)
  {
    v33 = malloc_type_malloc(v32 | 0x17, 0x5F484EBFuLL);
    if (v33)
    {
      v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v34 - 8) = v33;
      if (v34)
      {
        v35 = a1;
        bzero(((v33 + 23) & 0xFFFFFFFFFFFFFFF0), v32);
        *a3 = v34;
        v37 = a10;
        v36 = a11;
        v38 = a9;
        if (v30 > 0x2AAAAAA)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }
    }
  }

LABEL_30:
  *a3 = 0;
  v35 = a1;
  aom_internal_error(*(a1 + 48), 2, "Failed to allocate denoiser->running_avg_y");
  v37 = a10;
  v36 = a11;
  v38 = a9;
  if (v30 > 0x2AAAAAA)
  {
    goto LABEL_35;
  }

LABEL_31:
  v39 = malloc_type_malloc((192 * v30) | 0x17, 0x5F484EBFuLL);
  if (v39)
  {
    v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v40 - 8) = v39;
    if (v40)
    {
      bzero(((v39 + 23) & 0xFFFFFFFFFFFFFFF0), 192 * v30);
      *(a3 + 8) = v40;
      v58 = (a3 + 8);
      v41 = a7;
      v42 = v60;
      if (v30 >= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_54;
    }
  }

LABEL_35:
  *(a3 + 8) = 0;
  v58 = (a3 + 8);
  aom_internal_error(*(v35 + 48), 2, "Failed to allocate denoiser->mc_running_avg_y");
  v41 = a7;
  v42 = v60;
  if (v30 >= 1)
  {
LABEL_36:
    v43 = 0;
    v44 = 0;
    v56 = 192 * v30;
    v57 = v41;
    while (1)
    {
      v45 = v44 ? v62 : v42;
      v46 = v44 ? v61 : v41;
      LOBYTE(v48) = 0;
      if (aom_alloc_frame_buffer(*a3 + 192 * *(a3 + 216) * v43, v45, v46, a8, v38, v37, v36, 0, v48, 0))
      {
        break;
      }

      LOBYTE(v49) = 0;
      if (aom_alloc_frame_buffer(*a3 + 192 * *(a3 + 216) * v43 + 192, v45, v46, a8, v38, v37, v36, 0, v49, 0))
      {
        break;
      }

      LOBYTE(v50) = 0;
      if (aom_alloc_frame_buffer(*a3 + 192 * *(a3 + 216) * v43 + 384, v45, v46, a8, v38, v37, v36, 0, v50, 0))
      {
        break;
      }

      LOBYTE(v51) = 0;
      if (aom_alloc_frame_buffer(*a3 + 192 * *(a3 + 216) * v43 + 576, v45, v46, a8, v38, v37, v36, 0, v51, 0))
      {
        break;
      }

      LOBYTE(v52) = 0;
      if (aom_alloc_frame_buffer(*a3 + 192 * *(a3 + 216) * v43 + 768, v45, v46, a8, v38, v37, v36, 0, v52, 0))
      {
        break;
      }

      LOBYTE(v53) = 0;
      if (aom_alloc_frame_buffer(*a3 + 192 * *(a3 + 216) * v43 + 960, v45, v46, a8, v38, v37, v36, 0, v53, 0))
      {
        break;
      }

      LOBYTE(v54) = 0;
      if (aom_alloc_frame_buffer(*a3 + 192 * *(a3 + 216) * v43 + 1152, v45, v46, a8, v38, v37, v36, 0, v54, 0))
      {
        break;
      }

      if (a4)
      {
        LOBYTE(v55) = 0;
        if (aom_alloc_frame_buffer(*a3 + 192 * *(a3 + 216) * v43 + 1344, v45, v46, a8, v38, v37, v36, 0, v55, 0))
        {
          break;
        }
      }

      LOBYTE(v55) = 0;
      if (aom_alloc_frame_buffer(*v58 + v44, v45, v46, a8, v38, v37, v36, 0, v55, 0))
      {
        break;
      }

      v44 += 192;
      ++v43;
      v41 = v57;
      v42 = v60;
      if (v56 == v44)
      {
        goto LABEL_54;
      }
    }

    return av1_denoiser_free(a3);
  }

LABEL_54:
  LOBYTE(v48) = 0;
  if (aom_alloc_frame_buffer(a3 + 16, v42, v41, a8, v38, v37, v36, 0, v48, 0))
  {
    return av1_denoiser_free(a3);
  }

  *(a3 + 232) = 2;
  *(a3 + 208) = 1;
  *&result = 0x200000000;
  *(a3 + 224) = 0x200000000;
  return result;
}

double av1_denoiser_free(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 208) = 0;
    v2 = *(a1 + 220);
    if (v2 * *(a1 + 216) >= 1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        aom_free_frame_buffer(*a1 + v3);
        ++v4;
        v2 = *(a1 + 220);
        v3 += 192;
      }

      while (v4 < v2 * *(a1 + 216));
    }

    if (*a1)
    {
      free(*(*a1 - 8));
      v2 = *(a1 + 220);
    }

    *a1 = 0;
    if (v2 >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        aom_free_frame_buffer(*(a1 + 8) + v5);
        ++v6;
        v5 += 192;
      }

      while (v6 < *(a1 + 220));
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      free(*(v7 - 8));
    }

    *(a1 + 8) = 0;

    return aom_free_frame_buffer(a1 + 16);
  }

  return result;
}

_DWORD *av1_denoiser_update_ref_frame(_DWORD *result)
{
  if (result[66388] >= 1)
  {
    v3 = result + 159282;
    v4 = *result;
    if (!*(*result + 50968) || *v3 >= result[159313])
    {
      if (result[159453])
      {
        v5 = result + 114217;
        if (*(result + 239056) == 2)
        {
          v6 = 0;
        }

        else
        {
          v6 = *(result + 239056);
        }

        ++result[159452];
        v7 = *v5;
        if (*v5 && (v8 = result[114218]) != 0)
        {
          v9 = result[59778] != v7 || result[59779] != v8;
        }

        else
        {
          v9 = 0;
        }

        v23 = v1;
        v24 = v2;
        v10 = *(result + 33211);
        v11 = *(result + 267130);
        v12 = *(result + 267128);
        v13 = v4[21231];
        v14 = v4[21228];
        v15 = v4[21225];
        v16 = v10[9];
        v22[8] = v10[8];
        v22[9] = v16;
        v17 = v10[11];
        v22[10] = v10[10];
        v22[11] = v17;
        v18 = v10[5];
        v22[4] = v10[4];
        v22[5] = v18;
        v19 = v10[7];
        v22[6] = v10[6];
        v22[7] = v19;
        v20 = v10[1];
        v22[0] = *v10;
        v22[1] = v20;
        v21 = v10[3];
        v22[2] = v10[2];
        v22[3] = v21;
        return av1_denoiser_update_frame_info(result + 159396, v22, (v4 + 21218), v3, v6, v11, v12, 1, v13, v14, v15, v9, 0, 0);
      }
    }
  }

  return result;
}

uint64_t av1_denoiser_filter_neon(void *a1, int a2, void *a3, int a4, void *a5, int a6, int a7, unsigned int a8, int a9)
{
  v9 = a3;
  v10 = a1;
  v163 = *MEMORY[0x277D85DE8];
  if (a8 - 5 > 0xA)
  {
    if (a8 - 3 > 1)
    {
      return 0;
    }

    v65 = 0;
    if (a9 >= 25 || a7 == 0)
    {
      v67 = 4;
    }

    else
    {
      v67 = 5;
    }

    if (a9 >= 25)
    {
      v68 = 3;
    }

    else
    {
      v68 = v67;
    }

    v69 = vdupq_n_s8(v68);
    v70 = block_size_high_1[a8] >> 1;
    v71 = vdupq_n_s8(v67);
    v72 = 2 * a6;
    if (v70 <= 1)
    {
      v73 = 1;
    }

    else
    {
      v73 = v70;
    }

    v74 = 0uLL;
    v75.i64[0] = 0x707070707070707;
    v75.i64[1] = 0x707070707070707;
    v76.i64[0] = 0x1010101010101010;
    v76.i64[1] = 0x1010101010101010;
    v77.i64[0] = 0x202020202020202;
    v77.i64[1] = 0x202020202020202;
    do
    {
      v78 = &v153[v65];
      v79 = *(v10 + a2);
      *v78 = *v10;
      v78[1] = v79;
      v80 = &v162[v65];
      v81 = *(v9 + a4);
      *v80 = *v9;
      v80[1] = v81;
      v82 = *&v153[v65];
      v83 = *&v162[v65];
      v84 = vabdq_u8(v82, v83);
      v85 = vbslq_s8(vcgtq_u8(v71, v84), v84, vaddq_s8(vsubq_s8(v69, vcgtq_u8(v84, v75)), vbicq_s8(v77, vcgtq_u8(v76, v84))));
      v86 = vandq_s8(v85, vcgtq_u8(v83, v82));
      v87 = vandq_s8(v85, vcgtq_u8(v82, v83));
      v88 = vqsubq_u8(vqaddq_u8(v82, v86), v87);
      *&v161[v65] = v88;
      *a5 = v88.i64[0];
      *(a5 + a6) = vextq_s8(v88, v88, 8uLL).u64[0];
      v74 = vaddq_s8(vqsubq_s8(v86, v87), v74);
      v10 = (v10 + 2 * a2);
      v9 = (v9 + 2 * a4);
      a5 = (a5 + v72);
      v65 += 16;
    }

    while (16 * v73 != v65);
    v89 = vaddlvq_s8(v74);
    v90 = num_pels_log2_lookup_2[a8];
    if (a7)
    {
      v91 = 3;
    }

    else
    {
      v91 = 2;
    }

    v92 = v91 << v90;
    if (v89 < 0)
    {
      v89 = -v89;
    }

    v93 = __OFSUB__(v89, v92);
    v94 = v89 - v92;
    if (!((v94 < 0) ^ v93 | (v94 == 0)))
    {
      v95 = v94 >> v90;
      if (v95 > 2)
      {
        return 0;
      }

      v96 = vdupq_n_s8(v95 + 1);
      v97 = (a5 - (v72 * v70));
      v98 = v161;
      v99 = v162;
      v100 = v153;
      do
      {
        v101 = *v100++;
        v102 = v101;
        v103 = *v99++;
        v104 = vminq_u8(vabdq_u8(v102, v103), v96);
        v105 = vandq_s8(v104, vcgtq_u8(v103, v102));
        v106 = vandq_s8(v104, vcgtq_u8(v102, v103));
        v107 = vqaddq_u8(vqsubq_u8(*v98, v105), v106);
        *v98++ = v107;
        v74 = vaddq_s8(vqsubq_s8(v106, v105), v74);
        *v97 = v107.i64[0];
        *(v97 + a6) = vextq_s8(v107, v107, 8uLL).u64[0];
        v97 = (v97 + v72);
        --v73;
      }

      while (v73);
      v108 = vaddlvq_s8(v74);
      if (v108 < 0)
      {
        v108 = -v108;
      }

      if (v108 > v92)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a9 >= 25 || a7 == 0)
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  v13 = block_size_wide_2[a8];
  if (a9 >= 25)
  {
    v14 = 3;
  }

  else
  {
    v14 = v12;
  }

  v15 = v13 >> 4;
  v16 = 0x5001FuLL >> a8;
  if (((0x5001FuLL >> a8) & 1) == 0)
  {
    if (v15 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v15;
    }

    v18 = v153;
    v19 = v17;
    do
    {
      *v18 = 0uLL;
      v18 += 8;
      --v19;
    }

    while (v19);
    v20 = &v154;
    v21 = v17;
    do
    {
      *v20 = 0uLL;
      v20 += 16;
      --v21;
    }

    while (v21);
    v22 = &v155;
    v23 = v17;
    do
    {
      *v22 = 0uLL;
      v22 += 16;
      --v23;
    }

    while (v23);
    v24 = &v156;
    v25 = v17;
    do
    {
      *v24 = 0uLL;
      v24 += 16;
      --v25;
    }

    while (v25);
    v26 = &v157;
    v27 = v17;
    do
    {
      *v26 = 0uLL;
      v26 += 16;
      --v27;
    }

    while (v27);
    v28 = &v158;
    v29 = v17;
    do
    {
      *v28 = 0uLL;
      v28 += 16;
      --v29;
    }

    while (v29);
    v30 = &v159;
    v31 = v17;
    do
    {
      *v30 = 0uLL;
      v30 += 16;
      --v31;
    }

    while (v31);
    v32 = &v160;
    do
    {
      *v32 = 0uLL;
      v32 += 16;
      --v17;
    }

    while (v17);
  }

  v33 = block_size_high_1[a8];
  v34 = 0x3AFFE0uLL >> a8;
  v35 = a2;
  if (v16)
  {
    if (v33 <= 1)
    {
      v109 = 1;
    }

    else
    {
      v109 = block_size_high_1[a8];
    }

    if ((v34 & 1) == 0)
    {
      v37 = 0;
      v117 = (v109 - 1);
      v10 = (a1 + a2 - v13 + (a2 - v13) * v117);
      v9 = (a3 + a4 - v13 + (a4 - v13) * v117);
      a5 = (a5 + a6 - v13 + (a6 - v13) * v117);
      goto LABEL_102;
    }

    v110 = 0;
    v37 = 0;
    if (v15 <= 1)
    {
      v111 = 1;
    }

    else
    {
      v111 = v15;
    }

    while (1)
    {
      v112 = &v153[v110 & 0xFFFFFFFFFFFFFFF0];
      v113 = a8 == 5 && v110 == 7;
      v114 = v113;
      if ((~v110 & 0xF) == 0)
      {
        break;
      }

      v115 = v111;
      if (v114)
      {
        goto LABEL_98;
      }

LABEL_87:
      v10 = (v10 + a2 - v13);
      v9 = (v9 + a4 - v13);
      a5 = (a5 + a6 - v13);
      if (++v110 == v109)
      {
        goto LABEL_102;
      }
    }

    v115 = v111;
    do
    {
LABEL_98:
      v116 = *v112;
      v112 += 8;
      v37 += vaddlvq_s8(v116);
      --v115;
    }

    while (v115);
    goto LABEL_87;
  }

  v152 = a7;
  v36 = 0;
  v37 = 0;
  v38 = vdupq_n_s8(v14);
  v39 = vdupq_n_s8(v12);
  if (v15 <= 1)
  {
    v40 = 1;
  }

  else
  {
    v40 = v15;
  }

  if (v33 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = block_size_high_1[a8];
  }

  v42 = a2 - v13;
  v43 = a4 - v13;
  v44 = a6 - v13;
  v45.i64[0] = 0x707070707070707;
  v45.i64[1] = 0x707070707070707;
  v46.i64[0] = 0x1010101010101010;
  v46.i64[1] = 0x1010101010101010;
  v47.i64[0] = 0x202020202020202;
  v47.i64[1] = 0x202020202020202;
  do
  {
    v48 = 0;
    v49 = a5;
    v50 = v9;
    v51 = v10;
    v52 = &v153[v36 & 0xFFFFFFFFFFFFFFF0];
    v53 = v52;
    do
    {
      v54 = *v53;
      v55 = *&v10[v48];
      v56 = *&v50[v48];
      v57 = vabdq_u8(v55, v56);
      v58 = vbslq_s8(vcgtq_u8(v39, v57), v57, vaddq_s8(vsubq_s8(v38, vcgtq_u8(v57, v45)), vbicq_s8(v47, vcgtq_u8(v46, v57))));
      v59 = vandq_s8(v58, vcgtq_u8(v56, v55));
      v60 = vandq_s8(v58, vcgtq_u8(v55, v56));
      *&v49[v48] = vqsubq_u8(vqaddq_u8(v55, v59), v60);
      *v53 = vaddq_s8(vqsubq_s8(v59, v60), v54);
      v53 += 8;
      v48 += 2;
    }

    while (2 * v40 != v48);
    v62 = a8 == 5 && v36 == 7 || (~v36 & 0xF) == 0;
    if (v34)
    {
      v63 = v40;
      if (v62)
      {
        do
        {
          v64 = *v52;
          v52 += 8;
          v37 += vaddlvq_s8(v64);
          --v63;
        }

        while (v63);
      }
    }

    v10 = (v10 + v42 + v48 * 8);
    v9 = (v50 + v43 + v48 * 8);
    a5 = (v49 + v44 + v48 * 8);
    ++v36;
  }

  while (v36 != v41);
  v10 = (&v51[v48] + v42);
  v9 = (&v50[v48] + v43);
  a5 = (&v49[v48] + v44);
  a7 = v152;
LABEL_102:
  v118 = num_pels_log2_lookup_2[a8];
  if (a7)
  {
    v119 = 3;
  }

  else
  {
    v119 = 2;
  }

  v120 = v119 << v118;
  if (v37 < 0)
  {
    v37 = -v37;
  }

  v93 = __OFSUB__(v37, v120);
  v121 = v37 - v120;
  if (!((v121 < 0) ^ v93 | (v121 == 0)))
  {
    v122 = v121 >> v118;
    if (v121 >> v118 > 2)
    {
      return 0;
    }

    v123 = v15 <= 1 ? 1 : v15;
    v124 = v33 <= 1 ? 1 : v33;
    if (v16)
    {
      v126 = 0;
    }

    else
    {
      v125 = 0;
      v126 = 0;
      v127 = vdupq_n_s8(v122 + 1);
      v128 = v10 - v33 * a2;
      v129 = v9 - v33 * a4;
      v130 = v35 - v13;
      v131 = a4 - v13;
      v132 = a6 - v13;
      v133 = a5 - v33 * a6;
      do
      {
        v134 = 0;
        v135 = &v153[v125 & 0xFFFFFFFFFFFFFFF0];
        v136 = v135;
        do
        {
          v137 = *v136;
          v138 = *&v128[v134];
          v139 = *&v129[v134];
          v140 = vabdq_u8(v138, v139);
          v141 = vcgtq_u8(v139, v138);
          v142 = vcgtq_u8(v138, v139);
          v143 = vminq_u8(v140, v127);
          v144 = vandq_s8(v143, v141);
          v145 = vandq_s8(v143, v142);
          *&v133[v134] = vqaddq_u8(vqsubq_u8(*&v133[v134], v144), v145);
          *v136 = vaddq_s8(vqsubq_s8(v145, v144), v137);
          v136 += 8;
          v134 += 16;
        }

        while (16 * v123 != v134);
        v147 = a8 != 5 || v125 != 7;
        if ((~v125 & 0xF) == 0 || !v147)
        {
          v148 = v123;
          do
          {
            v149 = *v135;
            v135 += 8;
            v126 += vaddlvq_s8(v149);
            --v148;
          }

          while (v148);
        }

        v128 += v130 + v134;
        v129 += v131 + v134;
        v133 += v132 + v134;
        ++v125;
      }

      while (v125 != v124);
    }

    v150 = v126 >= 0 ? v126 : -v126;
    if (v150 > v120)
    {
      return 0;
    }
  }

  return 1;
}

float aom_avg_8x8_quad_neon(uint64_t a1, int a2, int a3, int a4, unsigned int *a5)
{
  v5 = a1 + a4 * a2;
  v6 = (v5 + a3);
  v7 = *v6;
  v8 = (v6 + a2);
  v9 = vaddl_u8(*v8, v7);
  v10 = (v8 + a2);
  v11 = vaddw_u8(v9, *v10);
  v12 = (v10 + a2);
  *a5 = (vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v11, *v12), *(v12 + a2)), *(v12 + a2 + a2)), *(v12 + a2 + a2 + a2)), *(v12 + a2 + a2 + a2 + a2))) + 32) >> 6;
  v13 = a3 + 8;
  v14 = (v5 + v13);
  v11.i64[0] = *v14;
  v15 = (v14 + a2);
  v16 = vaddl_u8(*v15, *v11.i8);
  v17 = (v15 + a2);
  v18 = vaddw_u8(v16, *v17);
  v19 = (v17 + a2);
  a5[1] = (vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v18, *v19), *(v19 + a2)), *(v19 + a2 + a2)), *(v19 + a2 + a2 + a2)), *(v19 + a2 + a2 + a2 + a2))) + 32) >> 6;
  v20 = a1 + (a4 + 8) * a2;
  v21 = (v20 + a3);
  v18.i64[0] = *v21;
  v22 = (v21 + a2);
  v23 = vaddl_u8(*v22, *v18.i8);
  v24 = (v22 + a2);
  v25 = vaddw_u8(v23, *v24);
  v26 = (v24 + a2);
  a5[2] = (vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v25, *v26), *(v26 + a2)), *(v26 + a2 + a2)), *(v26 + a2 + a2 + a2)), *(v26 + a2 + a2 + a2 + a2))) + 32) >> 6;
  v27 = (v20 + v13);
  v25.i64[0] = *v27;
  v28 = (v27 + a2);
  v29 = vaddl_u8(*v28, *v25.i8);
  v30 = (v28 + a2);
  v31 = vaddw_u8(v29, *v30);
  v32 = (v30 + a2);
  result = COERCE_FLOAT(vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v31, *v32), *(v32 + a2)), *(v32 + a2 + a2)), *(v32 + a2 + a2 + a2)), *(v32 + a2 + a2 + a2 + a2))));
  a5[3] = (LODWORD(result) + 32) >> 6;
  return result;
}

uint64_t aom_int_pro_row_neon(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v7 = vdupq_n_s16(-a6);
  v8 = a3;
  v9 = 2 * a3;
  v10 = 3 * a3;
  v11 = 4 * a3;
  v12 = a5 - 4;
  v13 = a4;
  v14 = a3;
  v15 = v9;
  v16 = v10;
  do
  {
    v18 = *(a2 + v6);
    v19 = *(a2 + v6 + v8);
    v20 = *(a2 + v6 + v9);
    v21 = *(a2 + v6 + v10);
    v22 = vaddl_u8(*v19.i8, *v18.i8);
    v23 = vaddl_high_u8(v19, v18);
    v24 = vaddl_u8(*v21.i8, *v20.i8);
    v25 = vaddl_high_u8(v21, v20);
    v26 = a2 + v11;
    for (i = v12; i; i -= 4)
    {
      v28 = *(v26 + v6);
      v29 = *(v26 + v14);
      v30 = *(v26 + v15);
      v31 = *(v26 + v16);
      v22 = vaddw_u8(vaddw_u8(v22, *v28.i8), *v29.i8);
      v23 = vaddw_high_u8(vaddw_high_u8(v23, v28), v29);
      v24 = vaddw_u8(vaddw_u8(v24, *v30.i8), *v31.i8);
      v25 = vaddw_high_u8(vaddw_high_u8(v25, v30), v31);
      v26 += v11;
    }

    v17 = (result + 2 * v6);
    v6 += 16;
    *v17 = vshlq_s16(vaddq_s16(v24, v22), v7);
    v17[1] = vshlq_s16(vaddq_s16(v25, v23), v7);
    v16 += 16;
    v15 += 16;
    v14 += 16;
  }

  while (v6 < v13);
  return result;
}

int8x8_t *aom_comp_mask_pred_neon(int8x8_t *result, uint8x8_t *a2, int a3, int a4, uint8x8_t *a5, int a6, int8x8_t *a7, int a8, int a9)
{
  if (a9)
  {
    v9 = a2;
  }

  else
  {
    v9 = a5;
  }

  if (a9)
  {
    v10 = a5;
  }

  else
  {
    v10 = a2;
  }

  if (a9)
  {
    v11 = a3;
  }

  else
  {
    v11 = a6;
  }

  if (a9)
  {
    v12 = a6;
  }

  else
  {
    v12 = a3;
  }

  if (a3 < 9)
  {
    if (a3 == 8)
    {
      do
      {
        *result++ = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a7), *v10), *a7, *v9), 6uLL);
        v9 = (v9 + v11);
        v10 = (v10 + v12);
        a7 = (a7 + a8);
        --a4;
      }

      while (a4);
    }

    else
    {
      v18 = a4 / 2;
      v19 = v11;
      v20 = v12;
      v21 = 2 * v11;
      v22 = 2 * v12;
      do
      {
        v23.i32[0] = v9->i32[0];
        v23.i32[1] = *(v9->i32 + v19);
        v24.i32[0] = v10->i32[0];
        v24.i32[1] = *(v10->i32 + v20);
        v25.i32[0] = a7->i32[0];
        v25.i32[1] = *(a7->i32 + a8);
        *result++ = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v25), v24), v25, v23), 6uLL);
        v9 = (v9 + v21);
        v10 = (v10 + v22);
        a7 = (a7 + 2 * a8);
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v13 = v11;
    v14.i64[0] = 0x4040404040404040;
    v14.i64[1] = 0x4040404040404040;
    do
    {
      v15 = 0;
      do
      {
        v16 = *a7[v15].i8;
        v17 = vsubq_s8(v14, v16);
        *result[v15].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, v10[v15]), *v16.i8, v9[v15]), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v10[v15].i8), v16, *v9[v15].i8), 6uLL);
        v15 += 2;
      }

      while (a3 != (v15 * 8));
      v9 = (v9 + v13);
      v10 = (v10 + v12);
      a7 = (a7 + a8);
      result = (result + a3);
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t aom_read_primitive_refsubexpfin_(uint64_t a1, int a2, int a3, int a4)
{
  if (3 << a3 >= a2)
  {
    v9 = 0;
    v14 = a2;
    if (a2 < 2u)
    {
LABEL_16:
      v15 = 0;
    }

    else
    {
LABEL_8:
      v15 = 0;
      v16 = __clz(v14) ^ 0x1F;
      v17 = v16 + 1;
      do
      {
        v15 |= od_ec_decode_BOOL_q15(a1 + 16, 0x4000u) << (v17-- - 2);
      }

      while (v17 > 1);
      v18 = (2 << v16) - v14;
      if (v15 >= v18)
      {
        v15 = od_ec_decode_BOOL_q15(a1 + 16, 0x4000u) - v18 + 2 * v15;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = a3;
    v11 = a3;
    while (od_ec_decode_BOOL_q15(a1 + 16, 0x4000u))
    {
      v12 = 1 << v11;
      v11 = v8 + a3;
      ++v8;
      v9 += v12;
      v13 = (3 << v10++) + v9;
      if (v13 >= a2)
      {
        v14 = (a2 - v9);
        if (v14 >= 2)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }

    if (v11 < 1)
    {
      goto LABEL_16;
    }

    v15 = 0;
    v19 = v11 + 1;
    do
    {
      v15 |= od_ec_decode_BOOL_q15(a1 + 16, 0x4000u) << (v19-- - 2);
    }

    while (v19 > 1);
  }

  v20 = v15 + v9;
  v21 = 2 * a4;
  v22 = a2 - 1 - a4;
  v23 = (v15 + v9);
  v24 = v22 - ((v23 + 1) >> 1);
  v25 = (v15 + v9) & 0xFFFE;
  if (((v15 + v9) & 1) == 0)
  {
    v24 = v22 + (v25 >> 1);
  }

  if (v23 <= 2 * v22)
  {
    v26 = v24;
  }

  else
  {
    v26 = v15 + v9;
  }

  v27 = a2 - 1 - v26;
  v28 = a4 - ((v23 + 1) >> 1);
  if (((v15 + v9) & 1) == 0)
  {
    v28 = a4 + (v25 >> 1);
  }

  if (v21 >= v23)
  {
    v20 = v28;
  }

  if (v21 > a2)
  {
    return v27;
  }

  return v20;
}

void (*aom_rb_read_bit(uint64_t a1))(void)
{
  v1 = *(a1 + 16);
  v2 = (*a1 + (v1 >> 3));
  if (v2 >= *(a1 + 8))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5(*(a1 + 24));
      return 0;
    }

    return v5;
  }

  else
  {
    v3 = (*v2 >> (~v1 & 7)) & 1;
    *(a1 + 16) = v1 + 1;
    return v3;
  }
}

uint64_t aom_rb_read_literal(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = a2 + 1;
  do
  {
    while (1)
    {
      v6 = *(a1 + 16);
      v7 = (*a1 + (v6 >> 3));
      if (v7 >= *(a1 + 8))
      {
        break;
      }

      v5 = (*v7 >> (~v6 & 7)) & 1;
      *(a1 + 16) = v6 + 1;
      v3 = (v5 << (v4-- - 2)) | v3;
      if (v4 <= 1)
      {
        return v3;
      }
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v8(*(a1 + 24));
    }

    v3 = v3;
    --v4;
  }

  while (v4 > 1);
  return v3;
}

uint64_t aom_rb_read_signed_primitive_refsubexpfin(uint64_t *a1, int a2, int a3, int a4)
{
  v4 = a2;
  v6 = a2 + a4 - 1;
  v7 = 2 * a2;
  v8 = (2 * a2 - 1);
  if (3 << a3 >= v8)
  {
    v10 = 0;
    v21 = (2 * a2 - 1);
    if (v21 < 2)
    {
LABEL_28:
      v22 = 0;
    }

    else
    {
LABEL_9:
      v51 = 2 * a2;
      v22 = 0;
      v23 = __clz(v21) ^ 0x1F;
      v24 = v23 + 1;
      do
      {
        while (1)
        {
          v26 = *(a1 + 4);
          v27 = (*a1 + (v26 >> 3));
          if (v27 >= a1[1])
          {
            break;
          }

          v25 = (*v27 >> (~v26 & 7)) & 1;
          *(a1 + 4) = v26 + 1;
          v22 |= v25 << (v24-- - 2);
          if (v24 <= 1)
          {
            goto LABEL_15;
          }
        }

        v28 = a1[4];
        if (v28)
        {
          v28(a1[3]);
        }

        --v24;
      }

      while (v24 > 1);
LABEL_15:
      v29 = (2 << v23) - v21;
      if (v22 >= v29)
      {
        v30 = 2 * v22 - v29;
        v31 = *(a1 + 4);
        v32 = (*a1 + (v31 >> 3));
        if (v32 >= a1[1])
        {
          v40 = a1[4];
          if (v40)
          {
            v40(a1[3]);
          }

          v33 = 0;
        }

        else
        {
          v33 = (*v32 >> (~v31 & 7)) & 1;
          *(a1 + 4) = v31 + 1;
        }

        v22 = v30 + v33;
      }

      v7 = v51;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = *a1;
    v12 = a1[1];
    v13 = a3;
    v14 = *(a1 + 4);
    v15 = a3;
    while (1)
    {
      v16 = (v11 + (v14 >> 3));
      if (v16 >= v12)
      {
        break;
      }

      v17 = ~v14 & 7;
      v18 = *v16;
      *(a1 + 4) = ++v14;
      if (((v18 >> v17) & 1) == 0)
      {
        goto LABEL_20;
      }

      v19 = 1 << v15;
      v15 = v9 + a3;
      ++v9;
      v10 += v19;
      v20 = (3 << v13++) + v10;
      if (v20 >= v8)
      {
        v21 = (v8 - v10);
        if (v21 >= 2)
        {
          goto LABEL_9;
        }

        goto LABEL_28;
      }
    }

    v34 = a1[4];
    if (v34)
    {
      v34(a1[3]);
    }

LABEL_20:
    if (v15 < 1)
    {
      goto LABEL_28;
    }

    v22 = 0;
    v35 = v15 + 1;
    do
    {
      while (1)
      {
        v37 = *(a1 + 4);
        v38 = (*a1 + (v37 >> 3));
        if (v38 >= a1[1])
        {
          break;
        }

        v36 = (*v38 >> (~v37 & 7)) & 1;
        *(a1 + 4) = v37 + 1;
        v22 |= v36 << (v35-- - 2);
        if (v35 <= 1)
        {
          goto LABEL_34;
        }
      }

      v39 = a1[4];
      if (v39)
      {
        v39(a1[3]);
      }

      --v35;
    }

    while (v35 > 1);
  }

LABEL_34:
  v41 = v22 + v10;
  v42 = 2 * v6;
  v43 = v7 - 2 - v6;
  v44 = (v22 + v10);
  v45 = v43 - ((v44 + 1) >> 1);
  v46 = (v22 + v10) & 0xFFFE;
  if (((v22 + v10) & 1) == 0)
  {
    v45 = v43 + (v46 >> 1);
  }

  if (v44 <= 2 * v43)
  {
    v47 = v45;
  }

  else
  {
    v47 = v22 + v10;
  }

  v48 = v7 - 2 - v47;
  v49 = v6 - ((v44 + 1) >> 1);
  if (((v22 + v10) & 1) == 0)
  {
    v49 = v6 + (v46 >> 1);
  }

  if (v42 >= v44)
  {
    v41 = v49;
  }

  if (v42 > v8)
  {
    v41 = v48;
  }

  return (v41 - v4 + 1);
}

_DWORD *av1_write_tx_type(_DWORD *result, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v5 = **(a2 + 7864);
  v6 = *(v5 + 167);
  if ((v6 & 0x80) != 0)
  {
    v7 = 1;
    if ((0x61810uLL >> a4))
    {
      return result;
    }
  }

  else
  {
    v7 = *(v5 + 16) > 0;
    if ((0x61810uLL >> a4))
    {
      return result;
    }
  }

  if ((0x18608uLL >> a4))
  {
    if (!v7)
    {
      return result;
    }
  }

  else if (!*(result + 501) && !av1_ext_tx_set_lookup[2 * v7 + ((0x60604uLL >> a4) & 1)])
  {
    return result;
  }

  if (*(result + 18992))
  {
    v8 = v6 & 7;
    if (*(a2 + 4 * v8 + 10660) <= 0 || *(v5 + 144) || (result[v8 + 4781] & 0x40) != 0)
    {
      return result;
    }
  }

  else if (result[154] <= 0 || *(v5 + 144))
  {
    return result;
  }

  v9 = txsize_sqr_map[a4];
  if ((0x18608uLL >> a4))
  {
    v10 = v7;
  }

  else if (*(result + 501))
  {
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = av1_ext_tx_set_lookup[2 * v7 + ((0x60604uLL >> a4) & 1)];
  }

  v11 = *(a2 + 10648);
  v12 = v10;
  v13 = ext_tx_set_index[6 * v7 + v10];
  if (v7)
  {
    v14 = av1_ext_tx_ind[16 * v10 + a3];
    v15 = av1_ext_tx_ind[16 * v12 + a3];
    v16 = v11 + 136 * v13 + 34 * txsize_sqr_map[a4] + 20474;
    v17 = av1_num_ext_tx_set[v12];
    if (v14 <= 0)
    {
      v20 = *(v16 + 2 * v14);
      v21 = *(a5 + 32);
      v22 = *(a5 + 40);
      v23 = v17 - 1;
      v24 = v22 >> 8;
    }

    else
    {
      v18 = (v16 + 2 * v14);
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = *(a5 + 32);
      v22 = *(a5 + 40);
      v23 = v17 - 1;
      v24 = v22 >> 8;
      if ((v19 & 0x80000000) == 0)
      {
        v25 = ((v24 * (v19 >> 6)) >> 1) + 4 * (v17 - v14);
        v21 += v22 - v25;
        v26 = v25 - ((v24 * (v20 >> 6)) >> 1) + 4 * (v14 - v23);
        goto LABEL_32;
      }
    }

    v26 = v22 + 4 * (v14 - v23) - (((v20 >> 6) * v24) >> 1);
LABEL_32:
    result = od_ec_enc_normalize((a5 + 16), v21, v26);
    if (!*(a5 + 48))
    {
      return result;
    }

    v29 = *(v16 + 2 * v17);
    v30 = v29 >> 4;
    if (v12 > 1)
    {
      ++v30;
    }

    v31 = v30 + 4;
    v32 = v17 - 1;
    if (v17 - 1 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    if (v32 >= 8)
    {
      v35 = vdupq_n_s64(v15);
      v34 = v33 & 0x7FFFFFF8;
      v36 = xmmword_273BB9B30;
      v37 = xmmword_273BB9B40;
      v38 = xmmword_273B92120;
      v39 = xmmword_273B92130;
      v40 = vnegq_s32(vdupq_n_s32(v31));
      v41.i64[0] = 0x800000008000;
      v41.i64[1] = 0x800000008000;
      v42 = vdupq_n_s64(8uLL);
      v43 = v34;
      v44 = (v11 + 136 * v13 + 34 * v9 + 20474);
      do
      {
        *v44 = vaddq_s16(*v44, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_s64(v35, v39), vcgtq_s64(v35, v38)), vuzp1q_s32(vcgtq_s64(v35, v37), vcgtq_s64(v35, v36))), vuzp1q_s16(vshlq_s32(vsubw_u16(v41, *v44->i8), v40), vshlq_s32(vsubw_high_u16(v41, *v44), v40)), vnegq_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v44->i8), v40), vshlq_u32(vmovl_high_u16(*v44), v40)))));
        ++v44;
        v37 = vaddq_s64(v37, v42);
        v38 = vaddq_s64(v38, v42);
        v39 = vaddq_s64(v39, v42);
        v36 = vaddq_s64(v36, v42);
        v43 -= 8;
      }

      while (v43);
      if (v34 == v33)
      {
LABEL_47:
        v49 = v29 >= 0x20;
        v50 = *(v16 + 2 * v17);
        if (!v49)
        {
          ++v50;
        }

        *(v16 + 2 * v17) = v50;
        return result;
      }
    }

    else
    {
      v34 = 0;
    }

    v45 = (136 * v13 + 34 * v9 + 2 * v34 + v11 + 20474);
    do
    {
      v46 = *v45;
      v47 = v46 - (v46 >> v31);
      v48 = v46 + ((0x8000 - v46) >> v31);
      if (v34 >= v15)
      {
        LOWORD(v48) = v47;
      }

      *v45++ = v48;
      ++v34;
    }

    while (v33 != v34);
    goto LABEL_47;
  }

  if (*(v5 + 91))
  {
    v27 = &fimode_to_intradir + *(v5 + 90);
  }

  else
  {
    v27 = (v5 + 2);
  }

  v51 = av1_ext_tx_ind[16 * v10 + a3];
  v52 = av1_num_ext_tx_set[v10];
  v53 = (v11 + 1768 * v13 + 442 * v9 + 34 * *v27 + 15170);

  return aom_write_symbol(a5, v51, v53, v52);
}

_DWORD *aom_write_symbol(uint64_t a1, int a2, int16x8_t *a3, int a4)
{
  if (a2 <= 0)
  {
    v10 = a3->u16[a2];
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = a4 - 1;
    v14 = v12 >> 8;
  }

  else
  {
    v8 = a3 + a2;
    v9 = *(v8 - 1);
    v10 = *v8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = a4 - 1;
    v14 = v12 >> 8;
    if ((v9 & 0x80000000) == 0)
    {
      v15 = ((v14 * (v9 >> 6)) >> 1) + 4 * (a4 - a2);
      result = od_ec_enc_normalize((a1 + 16), v11 + v12 - v15, v15 - ((v14 * (v10 >> 6)) >> 1) + 4 * (a2 - v13));
      if (!*(a1 + 48))
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  result = od_ec_enc_normalize((a1 + 16), v11, v12 + 4 * (a2 - v13) - (((v10 >> 6) * v14) >> 1));
  if (!*(a1 + 48))
  {
    return result;
  }

LABEL_7:
  v17 = a3->u16[a4];
  v18 = v17 >> 4;
  if (a4 > 3)
  {
    ++v18;
  }

  v19 = v18 + 4;
  v20 = a4 - 1;
  if (a4 - 1 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (v20 < 8)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v23 = vdupq_n_s64(a2);
  v22 = v21 & 0x7FFFFFF8;
  v24 = xmmword_273BB9B30;
  v25 = xmmword_273BB9B40;
  v26 = xmmword_273B92120;
  v27 = xmmword_273B92130;
  v28 = vnegq_s32(vdupq_n_s32(v19));
  v29.i64[0] = 0x800000008000;
  v29.i64[1] = 0x800000008000;
  v30 = vdupq_n_s64(8uLL);
  v31 = v22;
  v32 = a3;
  do
  {
    *v32 = vaddq_s16(*v32, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_s64(v23, v27), vcgtq_s64(v23, v26)), vuzp1q_s32(vcgtq_s64(v23, v25), vcgtq_s64(v23, v24))), vuzp1q_s16(vshlq_s32(vsubw_u16(v29, *v32->i8), v28), vshlq_s32(vsubw_high_u16(v29, *v32), v28)), vnegq_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v32->i8), v28), vshlq_u32(vmovl_high_u16(*v32), v28)))));
    ++v32;
    v25 = vaddq_s64(v25, v30);
    v26 = vaddq_s64(v26, v30);
    v27 = vaddq_s64(v27, v30);
    v24 = vaddq_s64(v24, v30);
    v31 -= 8;
  }

  while (v31);
  for (; v21 != v22; a3->i16[v22++] = v35)
  {
LABEL_17:
    v33 = a3->u16[v22];
    v34 = v33 - (v33 >> v19);
    v35 = v33 + ((0x8000 - v33) >> v19);
    if (v22 >= a2)
    {
      LOWORD(v35) = v34;
    }
  }

  v36 = v17 >= 0x20;
  v37 = a3->i16[a4];
  if (!v36)
  {
    ++v37;
  }

  a3->i16[a4] = v37;
  return result;
}

uint64_t av1_write_uleb_obu_size(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = a1;
  do
  {
    ++v3;
    v5 = v4 > 0x7F;
    v4 >>= 7;
  }

  while (v5);
  v6 = 0;
  v7 = 1;
  if (!HIDWORD(a1) && (v3 - 1) <= 7)
  {
    v6 = 0;
    if (a2)
    {
      if (v3 - 1 < a3)
      {
        v8 = 0;
        do
        {
          v9 = a1 > 0x7F;
          v10 = a1 & 0x7F;
          a1 >>= 7;
          *(a2 + v8++) = v10 | (v9 << 7);
        }

        while (v3 != v8);
        v7 = 0;
        v6 = v3;
      }
    }
  }

  if (v6 == a3)
  {
    return v7;
  }

  else
  {
    return 1;
  }
}

uint64_t av1_write_sequence_header_obu(int *a1, _BYTE *a2)
{
  v2 = 32 * *(a1 + 69);
  *a2 = v2;
  v3 = v2 | (16 * *(a1 + 57));
  *a2 = v3;
  v4 = v3 | (8 * *(a1 + 58));
  *a2 = v4;
  if (*(a1 + 58))
  {
    v5 = *(a1 + 289);
    *a2 = (v5 >> 2) & 7 | v4;
    a2[1] = v5 << 6;
    v6 = 10;
    goto LABEL_3;
  }

  *a2 = v4 | (4 * *(a1 + 248));
  if (!a1[62])
  {
    v91 = a1 + 72;
    v92 = *(a1 + 288);
    v93 = 6;
    v94 = a2;
    v95 = 6;
LABEL_502:
    v92 = *v94 & ~(1 << (7 - v93)) | (v92 << (7 - v93));
    goto LABEL_504;
  }

  v13 = a1[63];
  v14 = 31;
  for (i = 6; i != 38; ++i)
  {
    while (1)
    {
      v16 = (v13 >> v14) & 1;
      v17 = i >> 3;
      if ((i & 7) != 0)
      {
        break;
      }

      a2[v17] = v16 << 7;
      ++i;
      --v14;
      if (i == 38)
      {
        goto LABEL_12;
      }
    }

    a2[v17] = a2[v17] & ~(1 << (i & 7 ^ 7)) | (v16 << (i & 7 ^ 7));
    --v14;
  }

LABEL_12:
  v18 = a1[64];
  v19 = 31;
  do
  {
    while (1)
    {
      v20 = (v18 >> v19) & 1;
      v21 = i >> 3;
      if ((i & 7) != 0)
      {
        break;
      }

      a2[v21] = v20 << 7;
      ++i;
      --v19;
      if (i == 70)
      {
        goto LABEL_16;
      }
    }

    a2[v21] = a2[v21] & ~(1 << (i & 7 ^ 7)) | (v20 << (i & 7 ^ 7));
    ++i;
    --v19;
  }

  while (i != 70);
LABEL_16:
  v22 = a2 + 8;
  a2[8] = a2[8] & 0xFD | (2 * *(a1 + 260));
  if (!a1[65])
  {
    v96 = (a1 + 67);
    v97 = *(a1 + 268);
    v98 = 7;
    LODWORD(v24) = 71;
    goto LABEL_415;
  }

  v23 = a1[66];
  if (v23 >= 2)
  {
    v397 = 0;
    v398 = a1[66];
    do
    {
      ++v397;
      v399 = v398 > 3;
      v398 >>= 1;
    }

    while (v399);
    v24 = v397 + 71;
    v400 = 71;
    v401 = v397;
    do
    {
      v402 = v400 >> 3;
      LOBYTE(v403) = v400 & 7;
      if ((v400 & 7) != 0)
      {
        v403 = a2[v402] & ~(1 << (v403 ^ 7));
      }

      a2[v402] = v403;
      ++v400;
      --v401;
    }

    while (v401);
    v25 = v397 + 1;
  }

  else
  {
    v24 = 71;
    v25 = 1;
  }

  v404 = v25 + 1;
  do
  {
    while (1)
    {
      v405 = (v23 >> (v404 - 2)) & 1;
      v406 = v24 >> 3;
      if ((v24 & 7) != 0)
      {
        break;
      }

      a2[v406] = v405 << 7;
      ++v24;
      if (--v404 <= 1)
      {
        goto LABEL_414;
      }
    }

    a2[v406] = a2[v406] & ~(1 << (v24 & 7 ^ 7)) | (v405 << (v24 & 7 ^ 7));
    ++v24;
    --v404;
  }

  while (v404 > 1);
LABEL_414:
  v96 = (a1 + 67);
  v97 = *(a1 + 268);
  v407 = v23 & 0xFFFFFFF8;
  v22 = &a2[v24 / 8];
  v98 = v24 - v407;
  if (v24 != v407)
  {
LABEL_415:
    *v22 = *v22 & ~(1 << (7 - v98)) | (v97 << (7 - v98));
    v95 = v24 + 1;
    if (!*v96)
    {
      goto LABEL_501;
    }

    goto LABEL_418;
  }

  *v22 = v97 << 7;
  v95 = v24 + 1;
  if (!*v96)
  {
    goto LABEL_501;
  }

LABEL_418:
  v408 = a1[69] - 1;
  v409 = v95 + 7;
  if (v95 >= 0)
  {
    v409 = v95;
  }

  v410 = v409 & 0xFFFFFFF8;
  v411 = v409 >> 3;
  v412 = v95 - v410;
  if (v412)
  {
    v413 = a2[v411] & ~(1 << (7 - v412)) | (((v408 >> 4) & 1) << (7 - v412));
  }

  else
  {
    LOBYTE(v413) = ((v408 & 0x10) != 0) << 7;
  }

  a2[v411] = v413;
  v414 = v95 + 8;
  if (v95 + 1 >= 0)
  {
    v414 = v95 + 1;
  }

  v415 = v414 & 0xFFFFFFF8;
  v416 = v414 >> 3;
  v417 = v95 + 1 - v415;
  if (v417)
  {
    v418 = a2[v416] & ~(1 << (7 - v417)) | (((v408 >> 3) & 1) << (7 - v417));
  }

  else
  {
    LOBYTE(v418) = ((v408 & 8) != 0) << 7;
  }

  a2[v416] = v418;
  v419 = v95 + 9;
  if (v95 + 2 >= 0)
  {
    v419 = v95 + 2;
  }

  v420 = v419 & 0xFFFFFFF8;
  v421 = v419 >> 3;
  v422 = v95 + 2 - v420;
  if (v422)
  {
    v423 = a2[v421] & ~(1 << (7 - v422)) | (((v408 >> 2) & 1) << (7 - v422));
  }

  else
  {
    LOBYTE(v423) = ((v408 & 4) != 0) << 7;
  }

  a2[v421] = v423;
  v424 = v95 + 10;
  if (v95 + 3 >= 0)
  {
    v424 = v95 + 3;
  }

  v425 = v424 & 0xFFFFFFF8;
  v426 = v424 >> 3;
  v427 = v95 + 3 - v425;
  if (v427)
  {
    v428 = a2[v426] & ~(1 << (7 - v427)) | (((v408 >> 1) & 1) << (7 - v427));
  }

  else
  {
    LOBYTE(v428) = ((v408 & 2) != 0) << 7;
  }

  a2[v426] = v428;
  v429 = v408 & 1;
  v430 = v95 + 11;
  if (v95 + 4 >= 0)
  {
    v430 = v95 + 4;
  }

  v431 = v430 & 0xFFFFFFF8;
  v432 = v430 >> 3;
  v433 = v95 + 4 - v431;
  if (v433)
  {
    v429 = a2[v432] & ~(1 << (7 - v433)) | (v429 << (7 - v433));
  }

  else
  {
    LOBYTE(v429) = v429 << 7;
  }

  a2[v432] = v429;
  v434 = v95 + 5;
  v435 = a1[68];
  v436 = 32;
  do
  {
    while (1)
    {
      v437 = v434;
      v438 = (v435 >> (v436 - 1)) & 1;
      v439 = v434 + 7;
      if (v437 >= 0)
      {
        v439 = v437;
      }

      v440 = v439 & 0xFFFFFFF8;
      v441 = v439 >> 3;
      v442 = v437 - v440;
      if (v442)
      {
        break;
      }

      a2[v441] = v438 << 7;
      v434 = v437 + 1;
      v399 = v436-- > 1;
      if (!v399)
      {
        goto LABEL_450;
      }
    }

    a2[v441] = a2[v441] & ~(1 << (7 - v442)) | (v438 << (7 - v442));
    v434 = v437 + 1;
    v399 = v436-- > 1;
  }

  while (v399);
LABEL_450:
  v443 = a1[70] - 1;
  v444 = v434 + 7;
  if (v434 >= 0)
  {
    v444 = v434;
  }

  v445 = v444 & 0xFFFFFFF8;
  v446 = v444 >> 3;
  v447 = v434 - v445;
  if (v447)
  {
    v448 = a2[v446] & ~(1 << (7 - v447)) | (((v443 >> 4) & 1) << (7 - v447));
  }

  else
  {
    LOBYTE(v448) = ((v443 & 0x10) != 0) << 7;
  }

  a2[v446] = v448;
  v449 = v437 + 9;
  if (v437 + 2 >= 0)
  {
    v449 = v437 + 2;
  }

  v450 = v449 & 0xFFFFFFF8;
  v451 = v449 >> 3;
  v452 = v437 + 2 - v450;
  if (v452)
  {
    v453 = a2[v451] & ~(1 << (7 - v452)) | (((v443 >> 3) & 1) << (7 - v452));
  }

  else
  {
    LOBYTE(v453) = ((v443 & 8) != 0) << 7;
  }

  a2[v451] = v453;
  v454 = v437 + 10;
  if (v437 + 3 >= 0)
  {
    v454 = v437 + 3;
  }

  v455 = v454 & 0xFFFFFFF8;
  v456 = v454 >> 3;
  v457 = v437 + 3 - v455;
  if (v457)
  {
    v458 = a2[v456] & ~(1 << (7 - v457)) | (((v443 >> 2) & 1) << (7 - v457));
  }

  else
  {
    LOBYTE(v458) = ((v443 & 4) != 0) << 7;
  }

  a2[v456] = v458;
  v459 = v437 + 11;
  if (v437 + 4 >= 0)
  {
    v459 = v437 + 4;
  }

  v460 = v459 & 0xFFFFFFF8;
  v461 = v459 >> 3;
  v462 = v437 + 4 - v460;
  if (v462)
  {
    v463 = a2[v461] & ~(1 << (7 - v462)) | (((v443 >> 1) & 1) << (7 - v462));
  }

  else
  {
    LOBYTE(v463) = ((v443 & 2) != 0) << 7;
  }

  a2[v461] = v463;
  v464 = v443 & 1;
  v465 = v437 + 12;
  if (v437 + 5 >= 0)
  {
    v465 = v437 + 5;
  }

  v466 = v465 & 0xFFFFFFF8;
  v467 = v465 >> 3;
  v468 = v437 + 5 - v466;
  if (v468)
  {
    v464 = a2[v467] & ~(1 << (7 - v468)) | (v464 << (7 - v468));
  }

  else
  {
    LOBYTE(v464) = v464 << 7;
  }

  a2[v467] = v464;
  v469 = a1[71] - 1;
  v470 = v437 + 13;
  if (v437 + 6 >= 0)
  {
    v470 = v437 + 6;
  }

  v471 = v470 & 0xFFFFFFF8;
  v472 = v470 >> 3;
  v473 = v437 + 6 - v471;
  if (v473)
  {
    v474 = a2[v472] & ~(1 << (7 - v473)) | (((v469 >> 4) & 1) << (7 - v473));
  }

  else
  {
    LOBYTE(v474) = ((v469 & 0x10) != 0) << 7;
  }

  a2[v472] = v474;
  v475 = v437 + 14;
  if (v437 + 7 >= 0)
  {
    v475 = v437 + 7;
  }

  v476 = v475 & 0xFFFFFFF8;
  v477 = v475 >> 3;
  if (v437 + 7 == v476)
  {
    LOBYTE(v478) = ((v469 & 8) != 0) << 7;
  }

  else
  {
    v478 = a2[v477] & ~(1 << (v476 - v437)) | (((v469 >> 3) & 1) << (v476 - v437));
  }

  a2[v477] = v478;
  v479 = v437 + 15;
  if (v437 + 8 >= 0)
  {
    v479 = v437 + 8;
  }

  v480 = v479 & 0xFFFFFFF8;
  v481 = v479 >> 3;
  v482 = v437 + 8 - v480;
  if (v482)
  {
    v483 = a2[v481] & ~(1 << (7 - v482)) | (((v469 >> 2) & 1) << (7 - v482));
  }

  else
  {
    LOBYTE(v483) = ((v469 & 4) != 0) << 7;
  }

  a2[v481] = v483;
  v484 = v437 + 16;
  if (v437 + 9 >= 0)
  {
    v484 = v437 + 9;
  }

  v485 = v484 & 0xFFFFFFF8;
  v96 = v484 >> 3;
  v486 = v437 + 9 - v485;
  if (v486)
  {
    v487 = a2[v96] & ~(1 << (7 - v486)) | (((v469 >> 1) & 1) << (7 - v486));
  }

  else
  {
    LOBYTE(v487) = ((v469 & 2) != 0) << 7;
  }

  a2[v96] = v487;
  LODWORD(v96) = v469 & 1;
  v488 = v437 + 17;
  if (v437 + 10 >= 0)
  {
    v488 = v437 + 10;
  }

  v489 = v488 & 0xFFFFFFF8;
  v490 = v488 >> 3;
  v491 = v437 + 10 - v489;
  if (v491)
  {
    LODWORD(v96) = a2[v490] & ~(1 << (7 - v491)) | (v96 << (7 - v491));
  }

  else
  {
    LOBYTE(v96) = v96 << 7;
  }

  a2[v490] = v96;
  v95 = v437 + 11;
LABEL_501:
  v91 = a1 + 72;
  v92 = *(a1 + 288);
  v492 = v96 & 0xFFFFFFF8;
  v94 = &a2[v95 / 8];
  v93 = v95 - v492;
  if (v95 != v492)
  {
    goto LABEL_502;
  }

  LOBYTE(v92) = v92 << 7;
LABEL_504:
  *v94 = v92;
  v493 = a1[28];
  v494 = v95 + 8;
  if (v95 + 1 >= 0)
  {
    v494 = v95 + 1;
  }

  v495 = v494 & 0xFFFFFFF8;
  v496 = v494 >> 3;
  v497 = v95 + 1 - v495;
  if (v497)
  {
    v498 = a2[v496] & ~(1 << (7 - v497)) | (((v493 >> 4) & 1) << (7 - v497));
  }

  else
  {
    LOBYTE(v498) = ((a1[28] & 0x10) != 0) << 7;
  }

  a2[v496] = v498;
  v499 = v95 + 9;
  if (v95 + 2 >= 0)
  {
    v499 = v95 + 2;
  }

  v500 = v499 & 0xFFFFFFF8;
  v501 = v499 >> 3;
  v502 = v95 + 2 - v500;
  if (v502)
  {
    v503 = a2[v501] & ~(1 << (7 - v502)) | (((v493 >> 3) & 1) << (7 - v502));
  }

  else
  {
    LOBYTE(v503) = ((v493 & 8) != 0) << 7;
  }

  a2[v501] = v503;
  v504 = v95 + 10;
  if (v95 + 3 >= 0)
  {
    v504 = v95 + 3;
  }

  v505 = v504 & 0xFFFFFFF8;
  v506 = v504 >> 3;
  v507 = v95 + 3 - v505;
  if (v507)
  {
    v508 = a2[v506] & ~(1 << (7 - v507)) | (((v493 >> 2) & 1) << (7 - v507));
  }

  else
  {
    LOBYTE(v508) = ((v493 & 4) != 0) << 7;
  }

  a2[v506] = v508;
  v509 = v95 + 11;
  if (v95 + 4 >= 0)
  {
    v509 = v95 + 4;
  }

  v510 = v509 & 0xFFFFFFF8;
  v511 = v509 >> 3;
  v512 = v95 + 4 - v510;
  if (v512)
  {
    v513 = a2[v511] & ~(1 << (7 - v512)) | (((v493 >> 1) & 1) << (7 - v512));
  }

  else
  {
    LOBYTE(v513) = ((v493 & 2) != 0) << 7;
  }

  a2[v511] = v513;
  v514 = v493 & 1;
  v515 = v95 + 12;
  if (v95 + 5 >= 0)
  {
    v515 = v95 + 5;
  }

  v516 = v515 & 0xFFFFFFF8;
  v517 = v515 >> 3;
  v518 = v95 + 5 - v516;
  if (!v518)
  {
    a2[v517] = v514 << 7;
    v6 = v95 + 6;
    if (a1[28] < 0)
    {
      goto LABEL_3;
    }

    goto LABEL_530;
  }

  a2[v517] = a2[v517] & ~(1 << (7 - v518)) | (v514 << (7 - v518));
  v6 = v95 + 6;
  if ((a1[28] & 0x80000000) == 0)
  {
LABEL_530:
    v519 = 0;
    v520 = a1 + 289;
    v521 = a1 + 90;
    do
    {
      v522 = a1[v519 + 29];
      v523 = 12;
      do
      {
        while (1)
        {
          v524 = v6;
          v525 = (v522 >> (v523 - 1)) & 1;
          v526 = v6 + 7;
          if (v524 >= 0)
          {
            v526 = v524;
          }

          v527 = v526 & 0xFFFFFFF8;
          v528 = v526 >> 3;
          v529 = v524 - v527;
          if (v529)
          {
            break;
          }

          a2[v528] = v525 << 7;
          v6 = v524 + 1;
          v399 = v523-- > 1;
          if (!v399)
          {
            goto LABEL_541;
          }
        }

        a2[v528] = a2[v528] & ~(1 << (7 - v529)) | (v525 << (7 - v529));
        v6 = v524 + 1;
        v399 = v523-- > 1;
      }

      while (v399);
LABEL_541:
      v530 = *(v520 + v519);
      v531 = v6 + 7;
      if (v6 >= 0)
      {
        v531 = v6;
      }

      v532 = v531 & 0xFFFFFFF8;
      v533 = v531 >> 3;
      v534 = v6 - v532;
      if (v534)
      {
        v535 = a2[v533] & ~(1 << (7 - v534)) | (((v530 >> 4) & 1) << (7 - v534));
      }

      else
      {
        LOBYTE(v535) = ((v530 & 0x10) != 0) << 7;
      }

      a2[v533] = v535;
      v536 = v524 + 9;
      if (v524 + 2 >= 0)
      {
        v536 = v524 + 2;
      }

      v537 = v536 & 0xFFFFFFF8;
      v538 = v536 >> 3;
      v539 = v524 + 2 - v537;
      if (v539)
      {
        v540 = a2[v538] & ~(1 << (7 - v539)) | (((v530 >> 3) & 1) << (7 - v539));
      }

      else
      {
        LOBYTE(v540) = ((v530 & 8) != 0) << 7;
      }

      a2[v538] = v540;
      v541 = v524 + 10;
      if (v524 + 3 >= 0)
      {
        v541 = v524 + 3;
      }

      v542 = v541 & 0xFFFFFFF8;
      v543 = v541 >> 3;
      v544 = v524 + 3 - v542;
      if (v544)
      {
        v545 = a2[v543] & ~(1 << (7 - v544)) | (((v530 >> 2) & 1) << (7 - v544));
      }

      else
      {
        LOBYTE(v545) = ((v530 & 4) != 0) << 7;
      }

      a2[v543] = v545;
      v546 = v524 + 11;
      if (v524 + 4 >= 0)
      {
        v546 = v524 + 4;
      }

      v547 = v546 & 0xFFFFFFF8;
      v548 = v546 >> 3;
      v549 = v524 + 4 - v547;
      if (v549)
      {
        v550 = a2[v548] & ~(1 << (7 - v549)) | (((v530 >> 1) & 1) << (7 - v549));
      }

      else
      {
        LOBYTE(v550) = ((v530 & 2) != 0) << 7;
      }

      a2[v548] = v550;
      v551 = v530 & 1;
      v552 = v524 + 12;
      if (v524 + 5 >= 0)
      {
        v552 = v524 + 5;
      }

      v553 = v552 & 0xFFFFFFF8;
      v554 = v552 >> 3;
      v555 = v524 + 5 - v553;
      if (v555)
      {
        a2[v554] = a2[v554] & ~(1 << (7 - v555)) | (v551 << (7 - v555));
        v6 = v524 + 6;
        if (*(v520 + v519) < 8u)
        {
          goto LABEL_573;
        }
      }

      else
      {
        a2[v554] = v551 << 7;
        v6 = v524 + 6;
        if (*(v520 + v519) < 8u)
        {
          goto LABEL_573;
        }
      }

      v556 = *(a1 + v519 + 321);
      v557 = v6 + 7;
      if (v6 >= 0)
      {
        v557 = v6;
      }

      v558 = v557 & 0xFFFFFFF8;
      v559 = v557 >> 3;
      v560 = v6 - v558;
      if (v560)
      {
        v561 = a2[v559] & ~(1 << (7 - v560)) | (v556 << (7 - v560));
      }

      else
      {
        LOBYTE(v561) = v556 << 7;
      }

      a2[v559] = v561;
      v6 = v524 + 7;
LABEL_573:
      if (!*(a1 + 268))
      {
        goto LABEL_599;
      }

      v562 = &v521[12 * v519];
      v563 = *v562;
      v564 = v6 + 7;
      if (v6 >= 0)
      {
        v564 = v6;
      }

      v565 = v564 & 0xFFFFFFF8;
      v566 = v564 >> 3;
      v567 = v6 - v565;
      if (v567)
      {
        a2[v566] = a2[v566] & ~(1 << (7 - v567)) | (v563 << (7 - v567));
        ++v6;
        if (!*v562)
        {
          goto LABEL_599;
        }
      }

      else
      {
        a2[v566] = v563 << 7;
        ++v6;
        if (!*v562)
        {
          goto LABEL_599;
        }
      }

      v568 = a1[69];
      if (v568 >= 1)
      {
        v569 = v562[6];
        v570 = 7 - v6;
        v571 = v568 + 1;
        v572 = v571;
        do
        {
          while (1)
          {
            v573 = (v569 >> (v572 - 2)) & 1;
            v574 = v6 + 7;
            if (v6 >= 0)
            {
              v574 = v6;
            }

            v575 = v574 & 0xFFFFFFF8;
            v576 = v574 >> 3;
            if (v575 != v6)
            {
              break;
            }

            a2[v576] = v573 << 7;
            ++v6;
            --v570;
            if (--v572 <= 1)
            {
              goto LABEL_587;
            }
          }

          a2[v576] = a2[v576] & ~(1 << (v570 + v575)) | (v573 << (v570 + v575));
          ++v6;
          --v570;
          --v572;
        }

        while (v572 > 1);
LABEL_587:
        v577 = v562[7];
        v578 = 7 - v6;
        do
        {
          while (1)
          {
            v579 = (v577 >> (v571 - 2)) & 1;
            v580 = v6 + 7;
            if (v6 >= 0)
            {
              v580 = v6;
            }

            v581 = v580 & 0xFFFFFFF8;
            v582 = v580 >> 3;
            if (v581 != v6)
            {
              break;
            }

            a2[v582] = v579 << 7;
            ++v6;
            --v578;
            if (--v571 <= 1)
            {
              goto LABEL_593;
            }
          }

          a2[v582] = a2[v582] & ~(1 << (v578 + v581)) | (v579 << (v578 + v581));
          ++v6;
          --v578;
          --v571;
        }

        while (v571 > 1);
      }

LABEL_593:
      v583 = v562[8];
      v584 = v6 + 7;
      if (v6 >= 0)
      {
        v584 = v6;
      }

      v585 = v584 & 0xFFFFFFF8;
      v586 = v584 >> 3;
      v587 = v6 - v585;
      if (v587)
      {
        v583 = a2[v586] & ~(1 << (7 - v587)) | (v583 << (7 - v587));
      }

      else
      {
        LOBYTE(v583) = v583 << 7;
      }

      a2[v586] = v583;
      ++v6;
LABEL_599:
      if (*v91)
      {
        v588 = &v521[12 * v519];
        v589 = v588[9];
        v590 = v6 + 7;
        if (v6 >= 0)
        {
          v590 = v6;
        }

        v591 = v590 & 0xFFFFFFF8;
        v592 = v590 >> 3;
        v593 = v6 - v591;
        if (v593)
        {
          a2[v592] = a2[v592] & ~(1 << (7 - v593)) | (v589 << (7 - v593));
          v594 = v6 + 1;
          if (v588[9])
          {
            goto LABEL_606;
          }
        }

        else
        {
          a2[v592] = v589 << 7;
          v594 = v6 + 1;
          if (v588[9])
          {
LABEL_606:
            v595 = v588[10] - 1;
            v596 = v594 + 7;
            if (v594 >= 0)
            {
              v596 = v594;
            }

            v597 = v596 & 0xFFFFFFF8;
            v598 = v596 >> 3;
            v599 = v594 - v597;
            if (v599)
            {
              v600 = a2[v598] & ~(1 << (7 - v599)) | (((v595 >> 3) & 1) << (7 - v599));
            }

            else
            {
              LOBYTE(v600) = ((v595 & 8) != 0) << 7;
            }

            a2[v598] = v600;
            v601 = v594 + 8;
            if (v594 + 1 >= 0)
            {
              v601 = v594 + 1;
            }

            v602 = v601 & 0xFFFFFFF8;
            v603 = v601 >> 3;
            v604 = v594 + 1 - v602;
            if (v604)
            {
              v605 = a2[v603] & ~(1 << (7 - v604)) | (((v595 >> 2) & 1) << (7 - v604));
            }

            else
            {
              LOBYTE(v605) = ((v595 & 4) != 0) << 7;
            }

            a2[v603] = v605;
            v606 = v594 + 9;
            if (v594 + 2 >= 0)
            {
              v606 = v594 + 2;
            }

            v607 = v606 & 0xFFFFFFF8;
            v608 = v606 >> 3;
            v609 = v594 + 2 - v607;
            if (v609)
            {
              v610 = a2[v608] & ~(1 << (7 - v609)) | (((v595 >> 1) & 1) << (7 - v609));
            }

            else
            {
              LOBYTE(v610) = ((v595 & 2) != 0) << 7;
            }

            a2[v608] = v610;
            v611 = v594 + 3;
            v612 = v595 & 1;
            v613 = v594 + 10;
            if (v611 >= 0)
            {
              v613 = v611;
            }

            v614 = v613 & 0xFFFFFFF8;
            v615 = v613 >> 3;
            v616 = v611 - v614;
            if (v616)
            {
              v612 = a2[v615] & ~(1 << (7 - v616)) | (v612 << (7 - v616));
            }

            else
            {
              LOBYTE(v612) = v612 << 7;
            }

            a2[v615] = v612;
            v6 += 5;
            goto LABEL_532;
          }
        }

        v6 = v594;
      }

LABEL_532:
      v399 = v519++ < a1[28];
    }

    while (v399);
  }

LABEL_3:
  v7 = *a1 - 1;
  v8 = v6 + 7;
  if (v6 >= 0)
  {
    v8 = v6;
  }

  v9 = v8 & 0xFFFFFFF8;
  v10 = v8 >> 3;
  v11 = v6 - v9;
  if (v11)
  {
    v12 = a2[v10] & ~(1 << (7 - v11)) | (((v7 >> 3) & 1) << (7 - v11));
  }

  else
  {
    LOBYTE(v12) = ((v7 & 8) != 0) << 7;
  }

  a2[v10] = v12;
  v26 = v6 + 8;
  if (v6 + 1 >= 0)
  {
    v26 = v6 + 1;
  }

  v27 = v26 & 0xFFFFFFF8;
  v28 = v26 >> 3;
  v29 = v6 + 1 - v27;
  if (v29)
  {
    v30 = a2[v28] & ~(1 << (7 - v29)) | (((v7 >> 2) & 1) << (7 - v29));
  }

  else
  {
    LOBYTE(v30) = ((v7 & 4) != 0) << 7;
  }

  a2[v28] = v30;
  v31 = v6 + 9;
  if (v6 + 2 >= 0)
  {
    v31 = v6 + 2;
  }

  v32 = v31 & 0xFFFFFFF8;
  v33 = v31 >> 3;
  v34 = v6 + 2 - v32;
  if (v34)
  {
    v35 = a2[v33] & ~(1 << (7 - v34)) | (((v7 >> 1) & 1) << (7 - v34));
  }

  else
  {
    LOBYTE(v35) = ((v7 & 2) != 0) << 7;
  }

  a2[v33] = v35;
  v36 = v7 & 1;
  v37 = v6 + 10;
  if (v6 + 3 >= 0)
  {
    v37 = v6 + 3;
  }

  v38 = v37 & 0xFFFFFFF8;
  v39 = v37 >> 3;
  v40 = v6 + 3 - v38;
  if (v40)
  {
    v36 = a2[v39] & ~(1 << (7 - v40)) | (v36 << (7 - v40));
  }

  else
  {
    LOBYTE(v36) = v36 << 7;
  }

  a2[v39] = v36;
  v41 = a1[1] - 1;
  v42 = v6 + 11;
  if (v6 + 4 >= 0)
  {
    v42 = v6 + 4;
  }

  v43 = v42 & 0xFFFFFFF8;
  v44 = v42 >> 3;
  v45 = v6 + 4 - v43;
  if (v45)
  {
    v46 = a2[v44] & ~(1 << (7 - v45)) | (((v41 >> 3) & 1) << (7 - v45));
  }

  else
  {
    LOBYTE(v46) = ((v41 & 8) != 0) << 7;
  }

  a2[v44] = v46;
  v47 = v6 + 12;
  if (v6 + 5 >= 0)
  {
    v47 = v6 + 5;
  }

  v48 = v47 & 0xFFFFFFF8;
  v49 = v47 >> 3;
  v50 = v6 + 5 - v48;
  if (v50)
  {
    v51 = a2[v49] & ~(1 << (7 - v50)) | (((v41 >> 2) & 1) << (7 - v50));
  }

  else
  {
    LOBYTE(v51) = ((v41 & 4) != 0) << 7;
  }

  a2[v49] = v51;
  v52 = v6 + 13;
  if (v6 + 6 >= 0)
  {
    v52 = v6 + 6;
  }

  v53 = v52 & 0xFFFFFFF8;
  v54 = v52 >> 3;
  v55 = v6 + 6 - v53;
  if (v55)
  {
    v56 = a2[v54] & ~(1 << (7 - v55)) | (((v41 >> 1) & 1) << (7 - v55));
  }

  else
  {
    LOBYTE(v56) = ((v41 & 2) != 0) << 7;
  }

  a2[v54] = v56;
  v57 = v41 & 1;
  v58 = v6 + 14;
  if (v6 + 7 >= 0)
  {
    v58 = v6 + 7;
  }

  v59 = v58 & 0xFFFFFFF8;
  v60 = v58 >> 3;
  if (v6 + 7 == v59)
  {
    a2[v60] = v57 << 7;
    v61 = v6 + 8;
    v62 = *a1;
    if (*a1 < 1)
    {
      goto LABEL_62;
    }
  }

  else
  {
    a2[v60] = a2[v60] & ~(1 << (v59 - v6)) | (v57 << (v59 - v6));
    v61 = v6 + 8;
    v62 = *a1;
    if (*a1 < 1)
    {
      goto LABEL_62;
    }
  }

  v63 = a1[2] - 1;
  v64 = 7 - v61;
  v65 = v62 + 1;
  do
  {
    while (1)
    {
      v66 = (v63 >> (v65 - 2)) & 1;
      v67 = v61 + 7;
      if (v61 >= 0)
      {
        v67 = v61;
      }

      v68 = v67 & 0xFFFFFFF8;
      v69 = v67 >> 3;
      if (v68 == v61)
      {
        break;
      }

      a2[v69] = a2[v69] & ~(1 << (v64 + v68)) | (v66 << (v64 + v68));
      ++v61;
      --v64;
      if (--v65 <= 1)
      {
        goto LABEL_62;
      }
    }

    a2[v69] = v66 << 7;
    ++v61;
    --v64;
    --v65;
  }

  while (v65 > 1);
LABEL_62:
  v70 = a1[1];
  if (v70 >= 1)
  {
    v71 = a1[3] - 1;
    v72 = 7 - v61;
    v73 = v70 + 1;
    do
    {
      while (1)
      {
        v74 = (v71 >> (v73 - 2)) & 1;
        v75 = v61 + 7;
        if (v61 >= 0)
        {
          v75 = v61;
        }

        v76 = v75 & 0xFFFFFFF8;
        v77 = v75 >> 3;
        if (v76 == v61)
        {
          break;
        }

        a2[v77] = a2[v77] & ~(1 << (v72 + v76)) | (v74 << (v72 + v76));
        ++v61;
        --v72;
        if (--v73 <= 1)
        {
          goto LABEL_69;
        }
      }

      a2[v77] = v74 << 7;
      ++v61;
      --v72;
      --v73;
    }

    while (v73 > 1);
  }

LABEL_69:
  if (!*(a1 + 58))
  {
    v78 = *(a1 + 16);
    v79 = v61 + 7;
    if (v61 >= 0)
    {
      v79 = v61;
    }

    v80 = v79 & 0xFFFFFFF8;
    v81 = v79 >> 3;
    v82 = v61 - v80;
    if (v82)
    {
      a2[v81] = a2[v81] & ~(1 << (7 - v82)) | (v78 << (7 - v82));
      v83 = v61 + 1;
      if (*(a1 + 16))
      {
LABEL_74:
        v84 = a1[6];
        v85 = v84 - 2;
        v86 = v83 + 7;
        if (v83 >= 0)
        {
          v86 = v83;
        }

        v87 = v86 & 0xFFFFFFF8;
        v88 = v86 >> 3;
        v89 = v83 - v87;
        if (v89)
        {
          v90 = a2[v88] & ~(1 << (7 - v89)) | ((((v84 - 2) >> 3) & 1) << (7 - v89));
        }

        else
        {
          LOBYTE(v90) = (((v84 - 2) & 8) != 0) << 7;
        }

        a2[v88] = v90;
        v99 = v83 + 8;
        if (v83 + 1 >= 0)
        {
          v99 = v83 + 1;
        }

        v100 = v99 & 0xFFFFFFF8;
        v101 = v99 >> 3;
        v102 = v83 + 1 - v100;
        if (v102)
        {
          v103 = a2[v101] & ~(1 << (7 - v102)) | (((v85 >> 2) & 1) << (7 - v102));
        }

        else
        {
          LOBYTE(v103) = ((v85 & 4) != 0) << 7;
        }

        a2[v101] = v103;
        v104 = (v85 >> 1) & 1;
        v105 = v83 + 9;
        if (v83 + 2 >= 0)
        {
          v105 = v83 + 2;
        }

        v106 = v105 & 0xFFFFFFF8;
        v107 = v105 >> 3;
        v108 = v83 + 2 - v106;
        if (v108)
        {
          v104 = a2[v107] & ~(1 << (7 - v108)) | (v104 << (7 - v108));
        }

        else
        {
          LOBYTE(v104) = v104 << 7;
        }

        a2[v107] = v104;
        v109 = v84 & 1;
        v110 = v83 + 10;
        if (v83 + 3 >= 0)
        {
          v110 = v83 + 3;
        }

        v111 = v110 & 0xFFFFFFF8;
        v112 = v110 >> 3;
        v113 = v83 + 3 - v111;
        if (v113)
        {
          v109 = a2[v112] & ~(1 << (7 - v113)) | (v109 << (7 - v113));
        }

        else
        {
          LOBYTE(v109) = v109 << 7;
        }

        a2[v112] = v109;
        v114 = a1[5] + ~a1[6];
        v115 = v83 + 11;
        if (v83 + 4 >= 0)
        {
          v115 = v83 + 4;
        }

        v116 = v115 & 0xFFFFFFF8;
        v117 = v115 >> 3;
        v118 = v83 + 4 - v116;
        if (v118)
        {
          v119 = a2[v117] & ~(1 << (7 - v118)) | (((v114 >> 2) & 1) << (7 - v118));
        }

        else
        {
          LOBYTE(v119) = ((v114 & 4) != 0) << 7;
        }

        a2[v117] = v119;
        v120 = v83 + 12;
        if (v83 + 5 >= 0)
        {
          v120 = v83 + 5;
        }

        v121 = v120 & 0xFFFFFFF8;
        v122 = v120 >> 3;
        v123 = v83 + 5 - v121;
        if (v123)
        {
          v124 = a2[v122] & ~(1 << (7 - v123)) | (((v114 >> 1) & 1) << (7 - v123));
        }

        else
        {
          LOBYTE(v124) = ((v114 & 2) != 0) << 7;
        }

        a2[v122] = v124;
        v125 = v83 + 6;
        v126 = v114 & 1;
        v127 = v83 + 13;
        if (v125 >= 0)
        {
          v127 = v125;
        }

        v128 = v127 & 0xFFFFFFF8;
        v129 = v127 >> 3;
        v130 = v125 - v128;
        if (v130)
        {
          v126 = a2[v129] & ~(1 << (7 - v130)) | (v126 << (7 - v130));
        }

        else
        {
          LOBYTE(v126) = v126 << 7;
        }

        a2[v129] = v126;
        v61 += 8;
        goto LABEL_114;
      }
    }

    else
    {
      a2[v81] = v78 << 7;
      v83 = v61 + 1;
      if (*(a1 + 16))
      {
        goto LABEL_74;
      }
    }

    v61 = v83;
  }

LABEL_114:
  v131 = *(a1 + 28);
  v132 = v61 + 7;
  if (v61 >= 0)
  {
    v132 = v61;
  }

  v133 = v132 & 0xFFFFFFF8;
  v134 = v132 >> 3;
  v135 = v61 - v133;
  if (v135)
  {
    v136 = a2[v134] & ~(1 << (7 - v135)) | ((v131 == 15) << (7 - v135));
  }

  else if (v131 == 15)
  {
    LOBYTE(v136) = 0x80;
  }

  else
  {
    LOBYTE(v136) = 0;
  }

  a2[v134] = v136;
  v137 = *(a1 + 60);
  v138 = v61 + 8;
  if (v61 + 1 >= 0)
  {
    v138 = v61 + 1;
  }

  v139 = v138 & 0xFFFFFFF8;
  v140 = v138 >> 3;
  v141 = v61 + 1 - v139;
  if (v141)
  {
    v137 = a2[v140] & ~(1 << (7 - v141)) | (v137 << (7 - v141));
  }

  else
  {
    LOBYTE(v137) = v137 << 7;
  }

  a2[v140] = v137;
  v142 = *(a1 + 61);
  v143 = v61 + 9;
  if (v61 + 2 >= 0)
  {
    v143 = v61 + 2;
  }

  v144 = v143 & 0xFFFFFFF8;
  v145 = v143 >> 3;
  v146 = v61 + 2 - v144;
  if (v146)
  {
    a2[v145] = a2[v145] & ~(1 << (7 - v146)) | (v142 << (7 - v146));
    v147 = v61 + 3;
    if (*(a1 + 58))
    {
      goto LABEL_211;
    }
  }

  else
  {
    a2[v145] = v142 << 7;
    v147 = v61 + 3;
    if (*(a1 + 58))
    {
      goto LABEL_211;
    }
  }

  v148 = *(a1 + 62);
  v149 = v147 + 7;
  if (v147 >= 0)
  {
    v149 = v147;
  }

  v150 = v149 & 0xFFFFFFF8;
  v151 = v149 >> 3;
  v152 = v147 - v150;
  if (v152)
  {
    v153 = a2[v151] & ~(1 << (7 - v152)) | (v148 << (7 - v152));
  }

  else
  {
    LOBYTE(v153) = v148 << 7;
  }

  a2[v151] = v153;
  v154 = *(a1 + 63);
  v155 = v61 + 11;
  if (v61 + 4 >= 0)
  {
    v155 = v61 + 4;
  }

  v156 = v155 & 0xFFFFFFF8;
  v157 = v155 >> 3;
  v158 = v61 + 4 - v156;
  if (v158)
  {
    v154 = a2[v157] & ~(1 << (7 - v158)) | (v154 << (7 - v158));
  }

  else
  {
    LOBYTE(v154) = v154 << 7;
  }

  a2[v157] = v154;
  v159 = *(a1 + 65);
  v160 = v61 + 12;
  if (v61 + 5 >= 0)
  {
    v160 = v61 + 5;
  }

  v161 = v160 & 0xFFFFFFF8;
  v162 = v160 >> 3;
  v163 = v61 + 5 - v161;
  if (v163)
  {
    v159 = a2[v162] & ~(1 << (7 - v163)) | (v159 << (7 - v163));
  }

  else
  {
    LOBYTE(v159) = v159 << 7;
  }

  a2[v162] = v159;
  v164 = *(a1 + 64);
  v165 = v61 + 13;
  if (v61 + 6 >= 0)
  {
    v165 = v61 + 6;
  }

  v166 = v165 & 0xFFFFFFF8;
  v167 = v165 >> 3;
  v168 = v61 + 6 - v166;
  if (v168)
  {
    v164 = a2[v167] & ~(1 << (7 - v168)) | (v164 << (7 - v168));
  }

  else
  {
    LOBYTE(v164) = v164 << 7;
  }

  a2[v167] = v164;
  v169 = a1[10];
  v170 = v61 + 14;
  if (v61 + 7 >= 0)
  {
    v170 = v61 + 7;
  }

  v171 = v170 & 0xFFFFFFF8;
  v172 = v170 >> 3;
  if (v61 + 7 == v171)
  {
    a2[v172] = v169 << 7;
    v173 = v61 + 8;
    if (a1[10])
    {
LABEL_156:
      v174 = a1[12];
      v175 = v173 + 7;
      if (v173 >= 0)
      {
        v175 = v173;
      }

      v176 = v175 & 0xFFFFFFF8;
      v177 = v175 >> 3;
      v178 = v173 - v176;
      if (v178)
      {
        v179 = a2[v177] & ~(1 << (7 - v178)) | (v174 << (7 - v178));
      }

      else
      {
        LOBYTE(v179) = v174 << 7;
      }

      a2[v177] = v179;
      v181 = a1[13];
      v182 = v61 + 16;
      if (v61 + 9 >= 0)
      {
        v182 = v61 + 9;
      }

      v183 = v182 & 0xFFFFFFF8;
      v184 = v182 >> 3;
      v185 = v61 + 9 - v183;
      if (v185)
      {
        a2[v184] = a2[v184] & ~(1 << (7 - v185)) | (v181 << (7 - v185));
        v173 = v61 + 10;
        if (*(a1 + 56) != 2)
        {
          goto LABEL_168;
        }
      }

      else
      {
        a2[v184] = v181 << 7;
        v173 = v61 + 10;
        if (*(a1 + 56) != 2)
        {
          goto LABEL_168;
        }
      }

LABEL_162:
      v180 = 1;
      goto LABEL_173;
    }
  }

  else
  {
    a2[v172] = a2[v172] & ~(1 << (v171 - v61)) | (v169 << (v171 - v61));
    v173 = v61 + 8;
    if (a1[10])
    {
      goto LABEL_156;
    }
  }

  if (*(a1 + 56) == 2)
  {
    goto LABEL_162;
  }

LABEL_168:
  v186 = v173 + 7;
  if (v173 >= 0)
  {
    v186 = v173;
  }

  v187 = v186 & 0xFFFFFFF8;
  v188 = v186 >> 3;
  v189 = v173 - v187;
  if (v189)
  {
    v189 = a2[v188] & ~(1 << (7 - v189));
  }

  a2[v188] = v189;
  ++v173;
  v180 = *(a1 + 56);
LABEL_173:
  v190 = v173 + 7;
  if (v173 >= 0)
  {
    v190 = v173;
  }

  v191 = v190 & 0xFFFFFFF8;
  v192 = v190 >> 3;
  v193 = v173 - v191;
  if (!v193)
  {
    a2[v192] = v180 << 7;
    v147 = v173 + 1;
    if (!*(a1 + 56))
    {
      goto LABEL_194;
    }

LABEL_179:
    if (*(a1 + 59) == 2)
    {
      v194 = 1;
    }

    else
    {
      v195 = v147 + 7;
      if (v147 >= 0)
      {
        v195 = v147;
      }

      v196 = v195 & 0xFFFFFFF8;
      v197 = v195 >> 3;
      v198 = v147 - v196;
      if (v198)
      {
        v198 = a2[v197] & ~(1 << (7 - v198));
      }

      a2[v197] = v198;
      v147 = v173 + 2;
      v194 = *(a1 + 59);
    }

    v199 = v147 + 7;
    if (v147 >= 0)
    {
      v199 = v147;
    }

    v200 = v199 & 0xFFFFFFF8;
    v201 = v199 >> 3;
    v202 = v147 - v200;
    if (v202)
    {
      v194 = a2[v201] & ~(1 << (7 - v202)) | (v194 << (7 - v202));
    }

    else
    {
      LOBYTE(v194) = v194 << 7;
    }

    a2[v201] = v194;
    ++v147;
    goto LABEL_194;
  }

  a2[v192] = a2[v192] & ~(1 << (7 - v193)) | (v180 << (7 - v193));
  v147 = v173 + 1;
  if (*(a1 + 56))
  {
    goto LABEL_179;
  }

LABEL_194:
  if (a1[10])
  {
    v203 = a1[11];
    v204 = v147 + 7;
    if (v147 >= 0)
    {
      v204 = v147;
    }

    v205 = v204 & 0xFFFFFFF8;
    v206 = v204 >> 3;
    v207 = v147 - v205;
    if (v207)
    {
      v208 = a2[v206] & ~(1 << (7 - v207)) | (((v203 >> 2) & 1) << (7 - v207));
    }

    else
    {
      LOBYTE(v208) = ((a1[11] & 4) != 0) << 7;
    }

    a2[v206] = v208;
    v209 = v147 + 8;
    if (v147 + 1 >= 0)
    {
      v209 = v147 + 1;
    }

    v210 = v209 & 0xFFFFFFF8;
    v211 = v209 >> 3;
    v212 = v147 + 1 - v210;
    if (v212)
    {
      v213 = a2[v211] & ~(1 << (7 - v212)) | (((v203 >> 1) & 1) << (7 - v212));
    }

    else
    {
      LOBYTE(v213) = ((v203 & 2) != 0) << 7;
    }

    a2[v211] = v213;
    v214 = v203 & 1;
    v215 = v147 + 9;
    if (v147 + 2 >= 0)
    {
      v215 = v147 + 2;
    }

    v216 = v215 & 0xFFFFFFF8;
    v217 = v215 >> 3;
    v218 = v147 + 2 - v216;
    if (v218)
    {
      v214 = a2[v217] & ~(1 << (7 - v218)) | (v214 << (7 - v218));
    }

    else
    {
      LOBYTE(v214) = v214 << 7;
    }

    a2[v217] = v214;
    v147 += 3;
  }

LABEL_211:
  v219 = *(a1 + 66);
  v220 = v147 + 7;
  if (v147 >= 0)
  {
    v220 = v147;
  }

  v221 = v220 & 0xFFFFFFF8;
  v222 = v220 >> 3;
  v223 = v147 - v221;
  if (v223)
  {
    v219 = a2[v222] & ~(1 << (7 - v223)) | (v219 << (7 - v223));
  }

  else
  {
    LOBYTE(v219) = v219 << 7;
  }

  a2[v222] = v219;
  v224 = *(a1 + 67);
  v225 = v147 + 8;
  if (v147 + 1 >= 0)
  {
    v225 = v147 + 1;
  }

  v226 = v225 & 0xFFFFFFF8;
  v227 = v225 >> 3;
  v228 = v147 + 1 - v226;
  if (v228)
  {
    v224 = a2[v227] & ~(1 << (7 - v228)) | (v224 << (7 - v228));
  }

  else
  {
    LOBYTE(v224) = v224 << 7;
  }

  a2[v227] = v224;
  v229 = *(a1 + 68);
  v230 = v147 + 9;
  if (v147 + 2 >= 0)
  {
    v230 = v147 + 2;
  }

  v231 = v230 & 0xFFFFFFF8;
  v232 = v230 >> 3;
  v233 = v147 + 2 - v231;
  if (v233)
  {
    v229 = a2[v232] & ~(1 << (7 - v233)) | (v229 << (7 - v233));
  }

  else
  {
    LOBYTE(v229) = v229 << 7;
  }

  a2[v232] = v229;
  v234 = a1[18];
  v235 = v147 + 10;
  if (v147 + 3 >= 0)
  {
    v235 = v147 + 3;
  }

  v236 = v235 & 0xFFFFFFF8;
  v237 = v235 >> 3;
  v238 = v147 + 3 - v236;
  if (v238)
  {
    a2[v237] = a2[v237] & ~(1 << (7 - v238)) | ((v234 != 8) << (7 - v238));
    v239 = v147 + 4;
    v240 = *(a1 + 69);
    if (v240 == 2)
    {
      goto LABEL_230;
    }

LABEL_236:
    v242 = *(a1 + 77);
    if (v240 != 1)
    {
      goto LABEL_248;
    }

    goto LABEL_237;
  }

  if (v234 == 8)
  {
    v243 = 0;
  }

  else
  {
    v243 = 0x80;
  }

  a2[v237] = v243;
  v239 = v147 + 4;
  v240 = *(a1 + 69);
  if (v240 != 2)
  {
    goto LABEL_236;
  }

LABEL_230:
  v241 = a1[18];
  if (v241 == 8)
  {
    v242 = *(a1 + 77);
    goto LABEL_248;
  }

  v244 = v239 + 7;
  if (v239 >= 0)
  {
    v244 = v239;
  }

  v245 = v244 & 0xFFFFFFF8;
  v246 = v244 >> 3;
  v247 = v239 - v245;
  if (v247)
  {
    a2[v246] = a2[v246] & ~(1 << (7 - v247)) | ((v241 != 10) << (7 - v247));
    v239 = v147 + 5;
    v242 = *(a1 + 77);
    if (*(a1 + 69) != 1)
    {
      goto LABEL_248;
    }
  }

  else
  {
    if (v241 == 10)
    {
      v248 = 0;
    }

    else
    {
      v248 = 0x80;
    }

    a2[v246] = v248;
    v239 = v147 + 5;
    v242 = *(a1 + 77);
    if (*(a1 + 69) != 1)
    {
LABEL_248:
      v249 = v239 + 7;
      if (v239 >= 0)
      {
        v249 = v239;
      }

      v250 = v249 & 0xFFFFFFF8;
      v251 = v249 >> 3;
      v252 = v239 - v250;
      if (v252)
      {
        a2[v251] = a2[v251] & ~(1 << (7 - v252)) | (v242 << (7 - v252));
        ++v239;
        if (a1[20] != 2)
        {
          goto LABEL_262;
        }
      }

      else
      {
        a2[v251] = v242 << 7;
        ++v239;
        if (a1[20] != 2)
        {
          goto LABEL_262;
        }
      }

      goto LABEL_254;
    }
  }

LABEL_237:
  if (a1[20] != 2)
  {
    goto LABEL_262;
  }

LABEL_254:
  if (a1[21] != 2 || a1[22] != 2)
  {
LABEL_262:
    v258 = v239 + 7;
    if (v239 >= 0)
    {
      v258 = v239;
    }

    v259 = v258 & 0xFFFFFFF8;
    v260 = v258 >> 3;
    v261 = v239 - v259;
    if (v261)
    {
      v262 = a2[v260] | (1 << (7 - v261));
    }

    else
    {
      LOBYTE(v262) = 0x80;
    }

    a2[v260] = v262;
    v263 = a1[20];
    v264 = v239 + 8;
    if (v239 + 1 >= 0)
    {
      v264 = v239 + 1;
    }

    v265 = v264 & 0xFFFFFFF8;
    v266 = v264 >> 3;
    v267 = v239 + 1 - v265;
    if (v267)
    {
      v268 = a2[v266] & ~(1 << (7 - v267)) | (((v263 >> 7) & 1) << (7 - v267));
    }

    else
    {
      LOBYTE(v268) = ((a1[20] & 0x80) != 0) << 7;
    }

    a2[v266] = v268;
    v269 = v239 + 9;
    if (v239 + 2 >= 0)
    {
      v269 = v239 + 2;
    }

    v270 = v269 & 0xFFFFFFF8;
    v271 = v269 >> 3;
    v272 = v239 + 2 - v270;
    if (v272)
    {
      v273 = a2[v271] & ~(1 << (7 - v272)) | (((v263 >> 6) & 1) << (7 - v272));
    }

    else
    {
      LOBYTE(v273) = ((v263 & 0x40) != 0) << 7;
    }

    a2[v271] = v273;
    v274 = v239 + 10;
    if (v239 + 3 >= 0)
    {
      v274 = v239 + 3;
    }

    v275 = v274 & 0xFFFFFFF8;
    v276 = v274 >> 3;
    v277 = v239 + 3 - v275;
    if (v277)
    {
      v278 = a2[v276] & ~(1 << (7 - v277)) | (((v263 >> 5) & 1) << (7 - v277));
    }

    else
    {
      LOBYTE(v278) = ((v263 & 0x20) != 0) << 7;
    }

    a2[v276] = v278;
    v279 = v239 + 11;
    if (v239 + 4 >= 0)
    {
      v279 = v239 + 4;
    }

    v280 = v279 & 0xFFFFFFF8;
    v281 = v279 >> 3;
    v282 = v239 + 4 - v280;
    if (v282)
    {
      v283 = a2[v281] & ~(1 << (7 - v282)) | (((v263 >> 4) & 1) << (7 - v282));
    }

    else
    {
      LOBYTE(v283) = ((v263 & 0x10) != 0) << 7;
    }

    a2[v281] = v283;
    v284 = v239 + 12;
    if (v239 + 5 >= 0)
    {
      v284 = v239 + 5;
    }

    v285 = v284 & 0xFFFFFFF8;
    v286 = v284 >> 3;
    v287 = v239 + 5 - v285;
    if (v287)
    {
      v288 = a2[v286] & ~(1 << (7 - v287)) | (((v263 >> 3) & 1) << (7 - v287));
    }

    else
    {
      LOBYTE(v288) = ((v263 & 8) != 0) << 7;
    }

    a2[v286] = v288;
    v289 = v239 + 13;
    if (v239 + 6 >= 0)
    {
      v289 = v239 + 6;
    }

    v290 = v289 & 0xFFFFFFF8;
    v291 = v289 >> 3;
    v292 = v239 + 6 - v290;
    if (v292)
    {
      v293 = a2[v291] & ~(1 << (7 - v292)) | (((v263 >> 2) & 1) << (7 - v292));
    }

    else
    {
      LOBYTE(v293) = ((v263 & 4) != 0) << 7;
    }

    a2[v291] = v293;
    v294 = v239 + 14;
    if (v239 + 7 >= 0)
    {
      v294 = v239 + 7;
    }

    v295 = v294 & 0xFFFFFFF8;
    v296 = v294 >> 3;
    if (v239 + 7 == v295)
    {
      LOBYTE(v297) = ((v263 & 2) != 0) << 7;
    }

    else
    {
      v297 = a2[v296] & ~(1 << (v295 - v239)) | (((v263 >> 1) & 1) << (v295 - v239));
    }

    a2[v296] = v297;
    v298 = v263 & 1;
    v299 = v239 + 15;
    if (v239 + 8 >= 0)
    {
      v299 = v239 + 8;
    }

    v300 = v299 & 0xFFFFFFF8;
    v301 = v299 >> 3;
    v302 = v239 + 8 - v300;
    if (v302)
    {
      v298 = a2[v301] & ~(1 << (7 - v302)) | (v298 << (7 - v302));
    }

    else
    {
      LOBYTE(v298) = v298 << 7;
    }

    a2[v301] = v298;
    v303 = a1[21];
    v304 = v239 + 16;
    if (v239 + 9 >= 0)
    {
      v304 = v239 + 9;
    }

    v305 = v304 & 0xFFFFFFF8;
    v306 = v304 >> 3;
    v307 = v239 + 9 - v305;
    if (v307)
    {
      v308 = a2[v306] & ~(1 << (7 - v307)) | (((v303 >> 7) & 1) << (7 - v307));
    }

    else
    {
      LOBYTE(v308) = ((a1[21] & 0x80) != 0) << 7;
    }

    a2[v306] = v308;
    v309 = v239 + 17;
    if (v239 + 10 >= 0)
    {
      v309 = v239 + 10;
    }

    v310 = v309 & 0xFFFFFFF8;
    v311 = v309 >> 3;
    v312 = v239 + 10 - v310;
    if (v312)
    {
      v313 = a2[v311] & ~(1 << (7 - v312)) | (((v303 >> 6) & 1) << (7 - v312));
    }

    else
    {
      LOBYTE(v313) = ((v303 & 0x40) != 0) << 7;
    }

    a2[v311] = v313;
    v314 = v239 + 18;
    if (v239 + 11 >= 0)
    {
      v314 = v239 + 11;
    }

    v315 = v314 & 0xFFFFFFF8;
    v316 = v314 >> 3;
    v317 = v239 + 11 - v315;
    if (v317)
    {
      v318 = a2[v316] & ~(1 << (7 - v317)) | (((v303 >> 5) & 1) << (7 - v317));
    }

    else
    {
      LOBYTE(v318) = ((v303 & 0x20) != 0) << 7;
    }

    a2[v316] = v318;
    v319 = v239 + 19;
    if (v239 + 12 >= 0)
    {
      v319 = v239 + 12;
    }

    v320 = v319 & 0xFFFFFFF8;
    v321 = v319 >> 3;
    v322 = v239 + 12 - v320;
    if (v322)
    {
      v323 = a2[v321] & ~(1 << (7 - v322)) | (((v303 >> 4) & 1) << (7 - v322));
    }

    else
    {
      LOBYTE(v323) = ((v303 & 0x10) != 0) << 7;
    }

    a2[v321] = v323;
    v324 = v239 + 20;
    if (v239 + 13 >= 0)
    {
      v324 = v239 + 13;
    }

    v325 = v324 & 0xFFFFFFF8;
    v326 = v324 >> 3;
    v327 = v239 + 13 - v325;
    if (v327)
    {
      v328 = a2[v326] & ~(1 << (7 - v327)) | (((v303 >> 3) & 1) << (7 - v327));
    }

    else
    {
      LOBYTE(v328) = ((v303 & 8) != 0) << 7;
    }

    a2[v326] = v328;
    v329 = v239 + 21;
    if (v239 + 14 >= 0)
    {
      v329 = v239 + 14;
    }

    v330 = v329 & 0xFFFFFFF8;
    v331 = v329 >> 3;
    v332 = v239 + 14 - v330;
    if (v332)
    {
      v333 = a2[v331] & ~(1 << (7 - v332)) | (((v303 >> 2) & 1) << (7 - v332));
    }

    else
    {
      LOBYTE(v333) = ((v303 & 4) != 0) << 7;
    }

    a2[v331] = v333;
    v334 = v239 + 22;
    if (v239 + 15 >= 0)
    {
      v334 = v239 + 15;
    }

    v335 = v334 & 0xFFFFFFF8;
    v336 = v334 >> 3;
    v337 = v239 + 15 - v335;
    if (v337)
    {
      v338 = a2[v336] & ~(1 << (7 - v337)) | (((v303 >> 1) & 1) << (7 - v337));
    }

    else
    {
      LOBYTE(v338) = ((v303 & 2) != 0) << 7;
    }

    a2[v336] = v338;
    v339 = v303 & 1;
    v340 = v239 + 23;
    if (v239 + 16 >= 0)
    {
      v340 = v239 + 16;
    }

    v341 = v340 & 0xFFFFFFF8;
    v342 = v340 >> 3;
    v343 = v239 + 16 - v341;
    if (v343)
    {
      v339 = a2[v342] & ~(1 << (7 - v343)) | (v339 << (7 - v343));
    }

    else
    {
      LOBYTE(v339) = v339 << 7;
    }

    a2[v342] = v339;
    v344 = a1[22];
    v345 = v239 + 24;
    if (v239 + 17 >= 0)
    {
      v345 = v239 + 17;
    }

    v346 = v345 & 0xFFFFFFF8;
    v347 = v345 >> 3;
    v348 = v239 + 17 - v346;
    if (v348)
    {
      v349 = a2[v347] & ~(1 << (7 - v348)) | (((v344 >> 7) & 1) << (7 - v348));
    }

    else
    {
      LOBYTE(v349) = ((a1[22] & 0x80) != 0) << 7;
    }

    a2[v347] = v349;
    v350 = v239 + 25;
    if (v239 + 18 >= 0)
    {
      v350 = v239 + 18;
    }

    v351 = v350 & 0xFFFFFFF8;
    v352 = v350 >> 3;
    v353 = v239 + 18 - v351;
    if (v353)
    {
      v354 = a2[v352] & ~(1 << (7 - v353)) | (((v344 >> 6) & 1) << (7 - v353));
    }

    else
    {
      LOBYTE(v354) = ((v344 & 0x40) != 0) << 7;
    }

    a2[v352] = v354;
    v355 = v239 + 26;
    if (v239 + 19 >= 0)
    {
      v355 = v239 + 19;
    }

    v356 = v355 & 0xFFFFFFF8;
    v357 = v355 >> 3;
    v358 = v239 + 19 - v356;
    if (v358)
    {
      v359 = a2[v357] & ~(1 << (7 - v358)) | (((v344 >> 5) & 1) << (7 - v358));
    }

    else
    {
      LOBYTE(v359) = ((v344 & 0x20) != 0) << 7;
    }

    a2[v357] = v359;
    v360 = v239 + 27;
    if (v239 + 20 >= 0)
    {
      v360 = v239 + 20;
    }

    v361 = v360 & 0xFFFFFFF8;
    v362 = v360 >> 3;
    v363 = v239 + 20 - v361;
    if (v363)
    {
      v364 = a2[v362] & ~(1 << (7 - v363)) | (((v344 >> 4) & 1) << (7 - v363));
    }

    else
    {
      LOBYTE(v364) = ((v344 & 0x10) != 0) << 7;
    }

    a2[v362] = v364;
    v365 = v239 + 28;
    if (v239 + 21 >= 0)
    {
      v365 = v239 + 21;
    }

    v366 = v365 & 0xFFFFFFF8;
    v367 = v365 >> 3;
    v368 = v239 + 21 - v366;
    if (v368)
    {
      v369 = a2[v367] & ~(1 << (7 - v368)) | (((v344 >> 3) & 1) << (7 - v368));
    }

    else
    {
      LOBYTE(v369) = ((v344 & 8) != 0) << 7;
    }

    a2[v367] = v369;
    v370 = v239 + 29;
    if (v239 + 22 >= 0)
    {
      v370 = v239 + 22;
    }

    v371 = v370 & 0xFFFFFFF8;
    v372 = v370 >> 3;
    v373 = v239 + 22 - v371;
    if (v373)
    {
      v374 = a2[v372] & ~(1 << (7 - v373)) | (((v344 >> 2) & 1) << (7 - v373));
    }

    else
    {
      LOBYTE(v374) = ((v344 & 4) != 0) << 7;
    }

    a2[v372] = v374;
    v375 = v239 + 30;
    if (v239 + 23 >= 0)
    {
      v375 = v239 + 23;
    }

    v376 = v375 & 0xFFFFFFF8;
    v377 = v375 >> 3;
    v378 = v239 + 23 - v376;
    if (v378)
    {
      v379 = a2[v377] & ~(1 << (7 - v378)) | (((v344 >> 1) & 1) << (7 - v378));
    }

    else
    {
      LOBYTE(v379) = ((v344 & 2) != 0) << 7;
    }

    a2[v377] = v379;
    v380 = v344 & 1;
    v381 = v239 + 31;
    if (v239 + 24 >= 0)
    {
      v381 = v239 + 24;
    }

    v382 = v381 & 0xFFFFFFF8;
    v383 = v381 >> 3;
    v384 = v239 + 24 - v382;
    if (v384)
    {
      a2[v383] = a2[v383] & ~(1 << (7 - v384)) | (v380 << (7 - v384));
      v257 = v239 + 25;
      if (!v242)
      {
        goto LABEL_388;
      }
    }

    else
    {
      a2[v383] = v380 << 7;
      v257 = v239 + 25;
      if (!v242)
      {
        goto LABEL_388;
      }
    }

LABEL_386:
    v385 = a1[23];
    goto LABEL_649;
  }

  v253 = v239 + 7;
  if (v239 >= 0)
  {
    v253 = v239;
  }

  v254 = v253 & 0xFFFFFFF8;
  v255 = v253 >> 3;
  v256 = v239 - v254;
  if (v256)
  {
    v256 = a2[v255] & ~(1 << (7 - v256));
  }

  a2[v255] = v256;
  v257 = v239 + 1;
  if (v242)
  {
    goto LABEL_386;
  }

LABEL_388:
  if (a1[20] != 1 || a1[21] != 13 || a1[22])
  {
    v386 = a1[23];
    v387 = v257 + 7;
    if (v257 >= 0)
    {
      v387 = v257;
    }

    v388 = v387 & 0xFFFFFFF8;
    v389 = v387 >> 3;
    v390 = v257 - v388;
    if (v390)
    {
      a2[v389] = a2[v389] & ~(1 << (7 - v390)) | (v386 << (7 - v390));
      v391 = v257 + 1;
      if (*(a1 + 69) != 2)
      {
        goto LABEL_634;
      }
    }

    else
    {
      a2[v389] = v386 << 7;
      v391 = v257 + 1;
      if (*(a1 + 69) != 2)
      {
        goto LABEL_634;
      }
    }

    if (a1[18] == 12)
    {
      v392 = a1[24];
      v393 = v391 + 7;
      if (v391 >= 0)
      {
        v393 = v391;
      }

      v394 = v393 & 0xFFFFFFF8;
      v395 = v393 >> 3;
      v396 = v391 - v394;
      if (v396)
      {
        a2[v395] = a2[v395] & ~(1 << (7 - v396)) | (v392 << (7 - v396));
        v391 = v257 + 2;
        if (!a1[24])
        {
          goto LABEL_634;
        }

LABEL_628:
        v617 = a1[25];
        v618 = v391 + 7;
        if (v391 >= 0)
        {
          v618 = v391;
        }

        v619 = v618 & 0xFFFFFFF8;
        v620 = v618 >> 3;
        v621 = v391 - v619;
        if (v621)
        {
          v622 = a2[v620] & ~(1 << (7 - v621)) | (v617 << (7 - v621));
        }

        else
        {
          LOBYTE(v622) = v617 << 7;
        }

        a2[v620] = v622;
        v391 = v257 + 3;
        goto LABEL_634;
      }

      a2[v395] = v392 << 7;
      v391 = v257 + 2;
      if (a1[24])
      {
        goto LABEL_628;
      }
    }

LABEL_634:
    if (a1[24] == 1 && a1[25] == 1)
    {
      v623 = a1[26];
      v624 = v391 + 7;
      if (v391 >= 0)
      {
        v624 = v391;
      }

      v625 = v624 & 0xFFFFFFF8;
      v626 = v624 >> 3;
      v627 = v391 - v625;
      if (v627)
      {
        v628 = a2[v626] & ~(1 << (7 - v627)) | (((v623 >> 1) & 1) << (7 - v627));
      }

      else
      {
        LOBYTE(v628) = ((a1[26] & 2) != 0) << 7;
      }

      a2[v626] = v628;
      v629 = v623 & 1;
      v630 = v391 + 8;
      if (v391 + 1 >= 0)
      {
        v630 = v391 + 1;
      }

      v631 = v630 & 0xFFFFFFF8;
      v632 = v630 >> 3;
      v633 = v391 + 1 - v631;
      if (v633)
      {
        v629 = a2[v632] & ~(1 << (7 - v633)) | (v629 << (7 - v633));
      }

      else
      {
        LOBYTE(v629) = v629 << 7;
      }

      a2[v632] = v629;
      v257 = v391 + 2;
    }

    else
    {
      v257 = v391;
    }
  }

  v385 = *(a1 + 108);
LABEL_649:
  v634 = v257 + 7;
  if (v257 >= 0)
  {
    v634 = v257;
  }

  v635 = v634 & 0xFFFFFFF8;
  v636 = v634 >> 3;
  v637 = v257 - v635;
  if (v637)
  {
    v385 = a2[v636] & ~(1 << (7 - v637)) | (v385 << (7 - v637));
  }

  else
  {
    LOBYTE(v385) = v385 << 7;
  }

  a2[v636] = v385;
  v638 = *(a1 + 109);
  v639 = v257 + 8;
  if (v257 + 1 >= 0)
  {
    v639 = v257 + 1;
  }

  v640 = v639 & 0xFFFFFFF8;
  v641 = v639 >> 3;
  v642 = v257 + 1 - v640;
  if (v642)
  {
    a2[v641] = a2[v641] & ~(1 << (7 - v642)) | (v638 << (7 - v642));
    v643 = v257 + 2;
    if (((v257 + 2) & 7) != 0)
    {
LABEL_658:
      v644 = v643 + 7;
      if (v643 >= 0)
      {
        v644 = v643;
      }

      v645 = v644 & 0xFFFFFFF8;
      v646 = v644 >> 3;
      v647 = v643 - v645;
      if (v647)
      {
        v648 = a2[v646] | (1 << (7 - v647));
      }

      else
      {
        LOBYTE(v648) = 0x80;
      }

      a2[v646] = v648;
      v680 = v257 + 3;
      v681 = v680 >> 3;
      if ((v680 & 7) != 0)
      {
        return v681 + 1;
      }

      else
      {
        return v681;
      }
    }
  }

  else
  {
    a2[v641] = v638 << 7;
    v643 = v257 + 2;
    if (((v257 + 2) & 7) != 0)
    {
      goto LABEL_658;
    }
  }

  a2[v643 >> 3] = 0x80;
  v649 = v257 + 10;
  if (v257 + 3 >= 0)
  {
    v649 = v257 + 3;
  }

  v650 = v649 & 0xFFFFFFF8;
  v651 = v649 >> 3;
  v652 = v257 + 3 - v650;
  if (v652)
  {
    v652 = a2[v651] & ~(1 << (7 - v652));
  }

  a2[v651] = v652;
  v653 = v257 + 11;
  if (v257 + 4 >= 0)
  {
    v653 = v257 + 4;
  }

  v654 = v653 & 0xFFFFFFF8;
  v655 = v653 >> 3;
  v656 = v257 + 4 - v654;
  if (v656)
  {
    v656 = a2[v655] & ~(1 << (7 - v656));
  }

  a2[v655] = v656;
  v657 = v257 + 12;
  if (v257 + 5 >= 0)
  {
    v657 = v257 + 5;
  }

  v658 = v657 & 0xFFFFFFF8;
  v659 = v657 >> 3;
  v660 = v257 + 5 - v658;
  if (v660)
  {
    v660 = a2[v659] & ~(1 << (7 - v660));
  }

  a2[v659] = v660;
  v661 = v257 + 13;
  if (v257 + 6 >= 0)
  {
    v661 = v257 + 6;
  }

  v662 = v661 & 0xFFFFFFF8;
  v663 = v661 >> 3;
  v664 = v257 + 6 - v662;
  if (v664)
  {
    v664 = a2[v663] & ~(1 << (7 - v664));
  }

  a2[v663] = v664;
  v665 = v257 + 14;
  if (v257 + 7 >= 0)
  {
    v665 = v257 + 7;
  }

  v666 = v665 & 0xFFFFFFF8;
  v667 = v665 >> 3;
  v668 = v257 + 7 - v666;
  if (v668)
  {
    v668 = a2[v667] & ~(1 << (v666 - v257));
  }

  a2[v667] = v668;
  v669 = v257 + 15;
  if (v257 + 8 >= 0)
  {
    v669 = v257 + 8;
  }

  v670 = v669 & 0xFFFFFFF8;
  v671 = v669 >> 3;
  v672 = v257 + 8 - v670;
  if (v672)
  {
    v672 = a2[v671] & ~(1 << (7 - v672));
  }

  a2[v671] = v672;
  v673 = v257 + 16;
  if (v257 + 9 >= 0)
  {
    v673 = v257 + 9;
  }

  v674 = v673 & 0xFFFFFFF8;
  v675 = v673 >> 3;
  v676 = v257 + 9 - v674;
  if (v676)
  {
    v676 = a2[v675] & ~(1 << (7 - v676));
  }

  a2[v675] = v676;
  v677 = v257 + 10;
  v678 = v677 >> 3;
  if ((v677 & 7) != 0)
  {
    return v678 + 1;
  }

  else
  {
    return v678;
  }
}