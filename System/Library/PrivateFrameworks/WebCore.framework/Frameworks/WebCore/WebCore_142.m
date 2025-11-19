__n128 vp9_highbd_post_proc_down_and_across_c(uint64_t a1, __n128 *a2, int a3, int a4, int a5, int a6, unsigned int a7)
{
  v57 = *MEMORY[0x277D85DE8];
  if (a5 >= 1)
  {
    if (a6 < 1)
    {
      do
      {
        result = *a2;
        v56 = *a2;
        a2[-1].n128_u32[3] = v56.n128_u32[3];
        a2 = (a2 + 2 * a4);
        --a5;
      }

      while (a5);
    }

    else
    {
      v7 = 0;
      v8 = 2 * a3;
      v9 = 2 * a4;
      v10 = 4 * a3;
      v11 = a1 + v10;
      v12 = a1 + v8;
      v13 = a1 - v8;
      v14 = a1 - v10;
      v15 = &a2->n128_u16[2];
      do
      {
        v17 = 0;
        do
        {
          v18 = *(a1 + v17);
          v19 = *(v14 + v17);
          v20 = v18 - v19;
          if (v18 - v19 < 0)
          {
            v20 = v19 - v18;
          }

          if (v20 <= a7)
          {
            v21 = *(v13 + v17);
            v22 = v18 - v21;
            if (v18 - v21 < 0)
            {
              v22 = v21 - v18;
            }

            if (v22 <= a7)
            {
              v23 = *(v12 + v17);
              v24 = v18 - v23;
              if (v18 - v23 < 0)
              {
                v24 = v23 - v18;
              }

              if (v24 <= a7)
              {
                v25 = *(v11 + v17);
                v26 = v18 - v25;
                if (v18 - v25 < 0)
                {
                  v26 = v25 - v18;
                }

                v27 = (v19 + 4 * v18 + v21 + v23 + v25 + 4) >> 3;
                if (v26 <= a7)
                {
                  LOWORD(v18) = v27;
                }
              }
            }
          }

          a2->n128_u16[v17 / 2] = v18;
          v17 += 2;
        }

        while (2 * a6 != v17);
        result = *a2;
        v56 = *a2;
        v56.n128_u16[0] = a2->n128_u16[0];
        v29 = v56.n128_u16[0];
        v30 = a2[-1].n128_u16[6];
        v31 = v56.n128_u16[0] - v30;
        if (v31 < 0)
        {
          v31 = v30 - v56.n128_u16[0];
        }

        if (v31 <= a7)
        {
          v32 = a2[-1].n128_u16[7];
          v33 = v56.n128_u16[0] - v32;
          if (v33 < 0)
          {
            v33 = v32 - v56.n128_u16[0];
          }

          if (v33 <= a7)
          {
            v34 = a2->n128_u16[1];
            v35 = v56.n128_u16[0] - v34;
            if (v35 < 0)
            {
              v35 = v34 - v56.n128_u16[0];
            }

            if (v35 <= a7)
            {
              v36 = a2->n128_u16[2];
              v37 = v56.n128_u16[0] - v36;
              if (v37 < 0)
              {
                v37 = v36 - v56.n128_u16[0];
              }

              if (v37 <= a7)
              {
                v56.n128_u16[0] = (v30 + 4 * v56.n128_u16[0] + v32 + v34 + v36 + 4) >> 3;
              }
            }
          }
        }

        if (a6 == 1)
        {
          v16 = 0;
        }

        else
        {
          v56.n128_u16[1] = a2->n128_u16[1];
          v38 = a2[-1].n128_u16[7];
          v39 = v56.n128_u16[1] - v38;
          if (v39 < 0)
          {
            v39 = v38 - v56.n128_u16[1];
          }

          if (v39 <= a7)
          {
            v40 = v56.n128_u16[1] - v29;
            if (v40 < 0)
            {
              v40 = v29 - v56.n128_u16[1];
            }

            if (v40 <= a7)
            {
              v41 = a2->n128_u16[2];
              v42 = v56.n128_u16[1] - v41;
              if (v42 < 0)
              {
                v42 = v41 - v56.n128_u16[1];
              }

              if (v42 <= a7)
              {
                v43 = a2->n128_u16[3];
                v44 = v56.n128_u16[1] - v43;
                if (v44 < 0)
                {
                  v44 = v43 - v56.n128_u16[1];
                }

                if (v44 <= a7)
                {
                  v56.n128_u16[1] = (v29 + 4 * v56.n128_u16[1] + v38 + v41 + v43 + 4) >> 3;
                }
              }
            }
          }

          if (a6 == 2)
          {
            v16 = 1;
          }

          else
          {
            v45 = v15;
            v46 = 2;
            do
            {
              v47 = *v45;
              *(&v56 & 0xFFFFFFFFFFFFFFF1 | (2 * (v46 & 7))) = v47;
              v48 = *(v45 - 2);
              v49 = v47 - v48;
              if (v47 - v48 < 0)
              {
                v49 = v48 - v47;
              }

              if (v49 <= a7)
              {
                v50 = *(v45 - 1);
                v51 = v47 - v50;
                if (v47 - v50 < 0)
                {
                  v51 = v50 - v47;
                }

                if (v51 <= a7)
                {
                  v52 = v45[1];
                  v53 = v47 - v52;
                  if (v47 - v52 < 0)
                  {
                    v53 = v52 - v47;
                  }

                  if (v53 <= a7)
                  {
                    v54 = v45[2];
                    v55 = v47 - v54;
                    if (v47 - v54 < 0)
                    {
                      v55 = v54 - v47;
                    }

                    if (v55 <= a7)
                    {
                      *(&v56 | (2 * (v46 & 7))) = (v48 + 4 * v47 + v50 + v52 + v54 + 4) >> 3;
                    }
                  }
                }
              }

              *(v45 - 2) = *(&v56 & 0xFFFFFFFFFFFFFFF1 | (2 * ((v46++ - 2) & 7)));
              ++v45;
            }

            while (a6 != v46);
            v16 = v46 - 1;
          }
        }

        a2->n128_u16[v16 - 1] = *(&v56 | (2 * ((v16 - 1) & 7)));
        a2->n128_u16[v16] = *(&v56 | (2 * (v16 & 7)));
        a2 = (a2 + v9);
        ++v7;
        v11 += v8;
        v12 += v8;
        v13 += v8;
        v14 += v8;
        a1 += v8;
        v15 = (v15 + v9);
      }

      while (v7 != a5);
    }
  }

  return result;
}

double vp9_deblock(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *__b)
{
  v7 = a4 * -0.0067 * a4 + a4 * 0.00006 * a4 * a4 + a4 * 0.306 + 0.0065 + 0.5;
  v8 = v7;
  if ((*(a2 + 152) & 8) != 0)
  {
    v37 = *(a2 + 64);
    v38 = *(a2 + 72);
    v39 = *(a2 + 36);
    v40 = *(a2 + 16);
    v41 = *(a2 + 20);
    v43 = *a2;
    v42 = *(a2 + 4);
    v44 = *(a2 + 24);
    v45 = *(a3 + 64);
    v46 = *(a3 + 72);
    v47 = *(a3 + 16);
    v48 = 2 * *(a2 + 56);
    v49 = (2 * *(a3 + 56));
    v50 = *(a3 + 36);
    vp9_highbd_post_proc_down_and_across_c(v48, v49, v40, v47, v42, v43, v7);
    vp9_highbd_post_proc_down_and_across_c(2 * v37, (2 * v45), v39, v50, v44, v41, v8);

    *&result = vp9_highbd_post_proc_down_and_across_c(2 * v38, (2 * v46), v39, v50, v44, v41, v8).n128_u64[0];
  }

  else
  {
    v10 = *(a1 + 1308);
    memset(__b, v7, 16 * *(a1 + 1316));
    if (v10 >= 1)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        vpx_post_proc_down_and_across_mb_row_neon((*(a2 + 56) + *(a2 + 16) * v19), (*(a3 + 56) + *(a3 + 16) * v19), *(a2 + 16), *(a3 + 16), *a2, __b, 16, result, v12, v13, v14, v15, v16, v17, v18);
        vpx_post_proc_down_and_across_mb_row_neon((*(a2 + 64) + *(a2 + 36) * v20), (*(a3 + 64) + *(a3 + 36) * v20), *(a2 + 36), *(a3 + 36), *(a2 + 20), __b, 8, v21, v22, v23, v24, v25, v26, v27, v28);
        vpx_post_proc_down_and_across_mb_row_neon((*(a2 + 72) + *(a2 + 36) * v20), (*(a3 + 72) + *(a3 + 36) * v20), *(a2 + 36), *(a3 + 36), *(a2 + 20), __b, 8, v29, v30, v31, v32, v33, v34, v35, v36);
        v20 += 8;
        v19 += 16;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t vp9_post_proc_frame(uint64_t a1, _OWORD *a2, int *a3, int a4)
{
  v136 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4728);
  if (v4 <= 52)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 105;
  }

  v6 = *(a1 + 328);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a3;
  if (!*a3)
  {
    result = 0;
    v21 = v6[1];
    *a2 = *v6;
    a2[1] = v21;
    v22 = v6[2];
    v23 = v6[3];
    v24 = v6[5];
    a2[4] = v6[4];
    a2[5] = v24;
    a2[2] = v22;
    a2[3] = v23;
    v25 = v6[6];
    v26 = v6[7];
    v27 = v6[9];
    a2[8] = v6[8];
    a2[9] = v27;
    a2[6] = v25;
    a2[7] = v26;
    return result;
  }

  v12 = (a1 + 18148);
  if (*(a1 + 18148) == 1)
  {
    *(a1 + 18176) = *(a1 + 1332);
    *(a1 + 18180) = 1;
  }

  if ((v9 & 8) != 0)
  {
    if (*(a1 + 18184))
    {
      if (*(a1 + 1200))
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v37 = *(a1 + 1412);
    if ((v37 & 0x80000000) != 0 || (v38 = 68 * v37, (v39 = malloc_type_malloc(68 * v37 + 23, 0xD93B561uLL)) == 0) || (v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF0, *(v40 - 8) = v39, !v40))
    {
      *(a1 + 18184) = 0;
      return 1;
    }

    bzero(((v39 + 23) & 0xFFFFFFFFFFFFFFF0), v38);
    *(a1 + 18184) = v40;
    *(a1 + 18192) = v40 + 68 * *(a1 + 1324) + 68;
    if (!*(a1 + 1200))
    {
LABEL_11:
      if ((v9 & 3) != 0)
      {
        v13 = *(a1 + 292) + 15;
        v14 = *(a1 + 296) + 15;
        v15 = *(a1 + 316);
        v16 = *(a1 + 320);
        v17 = *(a1 + 324);
        v18 = v12[23];
        *(a1 + 1112) = 0u;
        *(a1 + 1128) = 0u;
        *(a1 + 1144) = 0u;
        *(a1 + 1160) = 0u;
        *(a1 + 1176) = 0u;
        *(a1 + 1192) = 0u;
        *(a1 + 1208) = 0u;
        *(a1 + 1224) = 0u;
        *(a1 + 1240) = 0u;
        *(a1 + 1256) = 0u;
        if ((vpx_realloc_frame_buffer(a1 + 1112, v13 & 0xFFFFFFF0, v14 & 0xFFFFFFF0, v15, v16, v17, 160, v18, 0, 0, 0) & 0x80000000) != 0)
        {
          vpx_internal_error(a1, 2, "Failed to allocate MFQE framebuffer");
        }

        memset(*(a1 + 1200), 128, *(a1 + 1064));
      }
    }
  }

LABEL_15:
  if ((vpx_realloc_frame_buffer(a1 + 952, *(a1 + 292), *(a1 + 296), *(a1 + 316), *(a1 + 320), *(a1 + 324), 32, v12[23], 0, 0, 0) & 0x80000000) != 0)
  {
    vpx_internal_error(a1, 2, "Failed to allocate post-processing buffer");
    v19 = v9 & 3;
    if ((v9 & 3) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    if (*(a1 + 18208))
    {
      goto LABEL_22;
    }

    v35 = a4;
    if (a4)
    {
      if (a4 < 0)
      {
        goto LABEL_87;
      }

      v36 = a4 + 23;
      if (v36 > 0x10000000000)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v36 = 23;
    }

    v68 = malloc_type_malloc(v36, 0xD93B561uLL);
    if (v68)
    {
      v69 = (v68 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v69 - 8) = v68;
      if (v69)
      {
        bzero(((v68 + 23) & 0xFFFFFFFFFFFFFFF0), v35);
        *(a1 + 18208) = v69;
        v28 = (a1 + 292);
        v128 = (a1 + 292);
        if ((v9 & 4) == 0)
        {
          goto LABEL_24;
        }

LABEL_23:
        if (*(a1 + 18216))
        {
          goto LABEL_24;
        }

        v65 = *v28;
        v66 = v65 + 256;
        if (v65 == -256)
        {
          v67 = 23;
        }

        else
        {
          if (v65 < -256)
          {
            goto LABEL_92;
          }

          v67 = v65 + 279;
          if ((v65 + 279) > 0x10000000000)
          {
            goto LABEL_92;
          }
        }

        v70 = malloc_type_malloc(v67, 0xD93B561uLL);
        if (v70)
        {
          v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v71 - 8) = v70;
          if (v71)
          {
            bzero(((v70 + 23) & 0xFFFFFFFFFFFFFFF0), v66);
            *(a1 + 18216) = v71;
            goto LABEL_24;
          }
        }

LABEL_92:
        *(a1 + 18216) = 0;
        return 1;
      }
    }

LABEL_87:
    *(a1 + 18208) = 0;
    return 1;
  }

  v19 = v9 & 3;
  if ((v9 & 3) != 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v28 = (a1 + 292);
  v128 = (a1 + 292);
  if ((v9 & 4) != 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v127 = a2;
  if ((v9 & 8) != 0 && *v12 >= 2u)
  {
    if (v12[8])
    {
      if (v12[3] == 8)
      {
        v29 = v12[7];
        if (v29 <= 170 && *(a1 + 1332) - v29 >= 20)
        {
          vp9_mfqe(a1);
          if (!v19)
          {
            goto LABEL_144;
          }

          vpx_yv12_copy_frame_c((a1 + 952), a1 + 1112);
          if ((v9 & 2) != 0 && *(a1 + 1200))
          {
            v30 = v5 + 10 * a3[1] - 50;
            v31 = *(a1 + 18208);
            v32 = a1 + 1112;
            goto LABEL_40;
          }

          if ((v9 & 1) == 0)
          {
LABEL_144:
            v34 = (a1 + 1112);
LABEL_37:
            vpx_yv12_copy_frame_c(v34, a1 + 952);
            v12[7] = *(a1 + 1332);
            v12[8] = 1;
            v126 = v9;
            if ((v9 & 4) == 0)
            {
              goto LABEL_140;
            }

LABEL_53:
            v42 = a3[2];
            if (v12[5] == v5 && v12[6] == v42)
            {
              v43 = v12[13];
              goto LABEL_98;
            }

            v44 = 0;
            v45 = v5 * 0.6 / 63.0 + v42 + 0.5;
            v46 = *(a1 + 18216);
            v47 = *(a1 + 292);
            v48 = (v47 + 256);
            v49 = 1.0 / (v45 * 2.50662827);
            v50 = v45 * (v45 + v45);
            v51 = -32;
            while (1)
            {
              v52 = (v49 * exp(-(v51 * v51) / v50) * 256.0 + 0.5);
              if (v52)
              {
                if (v52 >= 1)
                {
                  if (v44 <= 256)
                  {
                    v53 = 256;
                  }

                  else
                  {
                    v53 = v44;
                  }

                  v54 = (v53 - v44);
                  v55 = v52 - 1;
                  if (v52 - 1 >= v54)
                  {
                    v55 = v54;
                  }

                  if (v55 >= 0x20)
                  {
                    v57 = v55 + 1;
                    v58 = v57 & 0x1F;
                    if ((v57 & 0x1F) == 0)
                    {
                      v58 = 32;
                    }

                    v56 = v57 - v58;
                    v59 = vdupq_n_s8(v51);
                    v60 = &v135[v44 + 16];
                    v61 = v56;
                    do
                    {
                      v60[-1] = v59;
                      *v60 = v59;
                      v60 += 2;
                      v61 -= 32;
                    }

                    while (v61);
                  }

                  else
                  {
                    v56 = 0;
                  }

                  v62 = v52 - v56;
                  v63 = &v135[v56 + v44];
                  v64 = v54 - v56;
                  while (v64)
                  {
                    *v63++ = v51;
                    --v64;
                    if (!--v62)
                    {
                      goto LABEL_58;
                    }
                  }

LABEL_95:
                  if (v47 >= -255)
                  {
                    do
                    {
                      *v46++ = v135[rand()];
                      --v48;
                    }

                    while (v48);
                  }

                  v43 = -v135[0];
                  v12[13] = v43;
                  v12[5] = v5;
                  v12[6] = v42;
LABEL_98:
                  v72 = *(a1 + 956);
                  if (v72 < 1)
                  {
                    goto LABEL_140;
                  }

                  v73 = *(a1 + 952);
                  if (v73 <= 0)
                  {
                    do
                    {
                      rand();
                      LODWORD(v72) = v72 - 1;
                    }

                    while (v72);
                    goto LABEL_140;
                  }

                  v74 = 0;
                  v75 = *(a1 + 1008);
                  v76 = *(a1 + 18216);
                  v77 = *(a1 + 968);
                  v132 = (v75 + (v72 - 1) * v77 + v73);
                  v134 = v76;
                  v131 = v76 + v73;
                  v78 = v73 & 0x7FFFFFFC;
                  v133 = v75;
                  v129 = vdupq_n_s32(2 * v43);
                  v130 = vdupq_n_s32(v43);
                  while (2)
                  {
                    v79 = rand();
                    v82 = (v134 + v79);
                    if (v73 >= 4)
                    {
                      i = 0;
                      v93 = v131 + v79;
                      if (v82 < v132 && v133 < v93)
                      {
                        goto LABEL_104;
                      }

                      v95.i64[0] = 0xFF000000FFLL;
                      v95.i64[1] = 0xFF000000FFLL;
                      if ((v77 & 0x80000000) != 0)
                      {
                        goto LABEL_104;
                      }

                      if (v73 >= 0x10)
                      {
                        v97 = v73 & 0x7FFFFFF0;
                        v98 = v82;
                        v99 = v75;
                        do
                        {
                          v100 = vsubq_s32(vqtbl1q_s8(*v99, xmmword_273B8E7D0), v130);
                          v101 = vsubq_s32(vqtbl1q_s8(*v99, xmmword_273B8E7C0), v130);
                          v102 = vsubq_s32(vqtbl1q_s8(*v99, xmmword_273B8E7B0), v130);
                          v103 = vsubq_s32(vqtbl1q_s8(*v99, xmmword_273B8E7A0), v130);
                          v104 = vaddq_s32(vandq_s8(vcgezq_s32(v103), vminq_u32(v103, v95)), v129);
                          v105 = vaddq_s32(vandq_s8(vcgezq_s32(v102), vminq_u32(v102, v95)), v129);
                          v106 = vaddq_s32(vandq_s8(vcgezq_s32(v101), vminq_u32(v101, v95)), v129);
                          v107 = vaddq_s32(vandq_s8(vcgezq_s32(v100), vminq_u32(v100, v95)), v129);
                          v108 = vsubq_s32(vandq_s8(vcgezq_s32(v107), vminq_u32(v107, v95)), v130);
                          v109 = vsubq_s32(vandq_s8(vcgezq_s32(v106), vminq_u32(v106, v95)), v130);
                          v81 = vsubq_s32(vandq_s8(vcgezq_s32(v105), vminq_u32(v105, v95)), v130);
                          v110 = vsubq_s32(vandq_s8(vcgezq_s32(v104), vminq_u32(v104, v95)), v130);
                          v137.val[3] = vminq_u32(v110, v95);
                          v137.val[2] = vminq_u32(v81, v95);
                          v137.val[1] = vminq_u32(v109, v95);
                          v137.val[0] = vminq_u32(v108, v95);
                          v111 = *v98++;
                          v80 = vaddq_s8(vbicq_s8(vqtbl4q_s8(v137, xmmword_273B8E8C0), vuzp1q_s8(vuzp1q_s16(vcltzq_s32(v108), vcltzq_s32(v109)), vuzp1q_s16(vcltzq_s32(v81), vcltzq_s32(v110)))), v111);
                          *v99++ = v80;
                          v97 -= 16;
                        }

                        while (v97);
                        if ((v73 & 0x7FFFFFF0) == v73)
                        {
                          goto LABEL_101;
                        }

                        i = v73 & 0x7FFFFFF0;
                        v96 = i;
                        if ((v73 & 0xC) == 0)
                        {
                          goto LABEL_104;
                        }
                      }

                      else
                      {
                        v96 = 0;
                      }

                      do
                      {
                        v80.i32[0] = *(v75->i32 + v96);
                        v112 = vsubq_s32(vandq_s8(vmovl_u16(*&vmovl_u8(*v80.i8)), v95), v130);
                        v113 = vaddq_s32(vandq_s8(vcgezq_s32(v112), vminq_u32(v112, v95)), v129);
                        v114 = vsubq_s32(vandq_s8(vcgezq_s32(v113), vminq_u32(v113, v95)), v130);
                        v115 = vmovn_s32(vcltzq_s32(v114));
                        v80 = vminq_u32(v114, v95);
                        v81.i32[0] = *(v82->i32 + v96);
                        *v80.i8 = vbic_s8(vmovn_s32(v80), v115);
                        v80.i64[0] = vaddw_u8(v80, *v81.i8).u64[0];
                        *v80.i8 = vuzp1_s8(*v80.i8, *v80.i8);
                        *(v75->i32 + v96) = v80.i32[0];
                        v96 += 4;
                      }

                      while (v78 != v96);
                      i = v73 & 0x7FFFFFFC;
                      if (v78 != v73)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      for (i = 0; i != v73; ++i)
                      {
LABEL_104:
                        v84 = v75->u8[i] - v43;
                        if (v84 >= 0xFF)
                        {
                          v85 = 255;
                        }

                        else
                        {
                          v85 = v75->u8[i] - v43;
                        }

                        if (v84 >= 0)
                        {
                          v86 = v85;
                        }

                        else
                        {
                          v86 = 0;
                        }

                        v87 = v86 + 2 * v43;
                        if (v87 >= 0xFF)
                        {
                          v88 = 255;
                        }

                        else
                        {
                          v88 = v87;
                        }

                        if (v87 >= 0)
                        {
                          v89 = v88;
                        }

                        else
                        {
                          v89 = 0;
                        }

                        v90 = v89 - v43;
                        if (v90 >= 0xFF)
                        {
                          v91 = -1;
                        }

                        else
                        {
                          v91 = v90;
                        }

                        if (v90 >= 0)
                        {
                          v92 = v91;
                        }

                        else
                        {
                          v92 = 0;
                        }

                        v75->i8[i] = v92 + v82->i8[i];
                      }
                    }

LABEL_101:
                    ++v74;
                    v75 = (v75 + v77);
                    if (v74 == v72)
                    {
                      goto LABEL_140;
                    }

                    continue;
                  }
                }

                LODWORD(v52) = 0;
LABEL_58:
                v44 += v52;
              }

              if (++v51 == 32)
              {
                if (v44 <= 255)
                {
                  bzero(&v135[v44], (256 - v44));
                }

                goto LABEL_95;
              }
            }
          }

          v41 = *(a1 + 18208);
          v33 = a1 + 1112;
          goto LABEL_52;
        }
      }
    }
  }

  if ((v9 & 2) == 0)
  {
    v33 = *(a1 + 328);
    if ((v9 & 1) == 0)
    {
      v34 = *(a1 + 328);
      goto LABEL_37;
    }

    v41 = *(a1 + 18208);
LABEL_52:
    vp9_deblock(a1, v33, a1 + 952, v5, v41);
    v12[7] = *(a1 + 1332);
    v12[8] = 1;
    v126 = v9;
    if ((v9 & 4) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_53;
  }

  v32 = *(a1 + 328);
  v30 = v5 + 10 * a3[1] - 50;
  v31 = *(a1 + 18208);
LABEL_40:
  deblock_and_de_macro_block(a1, v32, (a1 + 952), v30, v31);
  v12[7] = *(a1 + 1332);
  v12[8] = 1;
  v126 = v9;
  if ((v9 & 4) != 0)
  {
    goto LABEL_53;
  }

LABEL_140:
  v116 = *(a1 + 968);
  *v127 = *(a1 + 952);
  v127[1] = v116;
  v117 = *(a1 + 984);
  v118 = *(a1 + 1000);
  v119 = *(a1 + 1032);
  v127[4] = *(a1 + 1016);
  v127[5] = v119;
  v127[2] = v117;
  v127[3] = v118;
  v120 = *(a1 + 1048);
  v121 = *(a1 + 1064);
  v122 = *(a1 + 1096);
  v127[8] = *(a1 + 1080);
  v127[9] = v122;
  v127[6] = v120;
  v127[7] = v121;
  *&v120 = *v128;
  *v127 = *v128;
  *(v127 + 20) = vshl_s32(*&v120, vneg_s32(v128[3]));
  result = 0;
  if ((v126 & 8) != 0)
  {
    v123 = *(a1 + 18184);
    v124 = *(a1 + 1416);
    *(a1 + 18184) = v124;
    *(a1 + 1416) = v123;
    v125 = 68 * *(a1 + 1324);
    *(a1 + 1424) = v123 + v125 + 68;
    *(a1 + 18192) = v124 + v125 + 68;
  }

  return result;
}

double deblock_and_de_macro_block(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, void *a5)
{
  v105[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 152) & 8) != 0)
  {
    v20 = (a4 * -0.0067 * a4 + a4 * 0.00006 * a4 * a4 + a4 * 0.306 + 0.0065 + 0.5);
    vp9_highbd_post_proc_down_and_across_c(2 * *(a2 + 56), (2 * *(a3 + 7)), *(a2 + 16), a3[4], *(a2 + 4), *a2, v20);
    v21 = a3[4];
    v22 = a3[1];
    v103 = 2 * *(a3 + 7);
    v104 = *a3;
    if (a4 <= 20)
    {
      v23 = 20;
    }

    else
    {
      v23 = a4;
    }

    v24 = 10 * v23;
    v25 = v24 - 500;
    v26 = v24 - 493;
    if (v25 >= 0)
    {
      v26 = v25;
    }

    v27 = (1431655766 * (((v26 >> 3) + 50) * ((v26 >> 3) + 50))) >> 32;
    if (v22 >= 1 && v104 >= -7)
    {
      v28 = 0;
      v29 = (2 * *(a3 + 7));
      v30 = (v103 - 16);
      do
      {
        v31 = 0;
        memset(v105, 0, 30);
        v32 = *(v29 - 1);
        v33 = vmovl_high_u16(v32);
        v34 = vmovl_u16(*v32.i8);
        v35 = *v29;
        v36 = v29[1];
        v37 = v29[2];
        v38 = v37 * v37;
        v39 = v34.i32[1] + v34.i32[0] + v34.i32[2] + v34.i32[3] + v33.i32[0] + v33.i32[1] + v33.i32[2] + v33.i32[3] + v35 + v36 + v37;
        v40 = v29[3];
        v41 = v29[4];
        v42 = v41 * v41;
        v43 = v29[5];
        v44 = v40 + v41 + v43;
        v45 = v29[6];
        v46 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v32.i8, *v32.i8), v32, v32)) + v35 * v35 + v38 + v36 * v36 + v42 + v40 * v40 + v45 * v45 + v43 * v43;
        v47 = v39 + v44 + v45;
        v48 = v30;
        do
        {
          v49 = v48[15];
          v50 = *v48;
          v47 += v49 - v50;
          v46 += (v49 - v50) * (v50 + v49);
          v51 = v48[8];
          if (15 * v46 - v47 * v47 < v27)
          {
            LOWORD(v51) = (v51 + v47 + 8) >> 4;
          }

          *(v105 + (v31 & 0xF)) = v51;
          *v48++ = *(v105 + ((v31++ - 8) & 0xF));
        }

        while (((v104 + 7) & ~((v104 + 7) >> 31)) + 1 != v31);
        v29 += v21;
        ++v28;
        v30 += v21;
      }

      while (v28 != v22);
    }

    v100 = v20;
    v101 = a2;
    v102 = a3;
    v52 = rand();
    if (v104 >= 1 && v22 >= -7)
    {
      v53 = 0;
      v54 = -8 * v21;
      v55 = ((v22 + 7) & ~((v22 + 7) >> 31)) + 1;
      v56 = v103;
      do
      {
        v57 = 0;
        v58 = (v103 + 2 * v53);
        v59 = v58[-8 * v21];
        v60 = v58[-7 * v21];
        v61 = v59 * v59 + v60 * v60;
        v62 = v58[-6 * v21];
        v63 = v60 + v59;
        v64 = v58[-5 * v21];
        v65 = v61 + v62 * v62 + v64 * v64;
        v66 = v63 + v62 + v64;
        v67 = v58[-4 * v21];
        v68 = v58[-3 * v21];
        v69 = v65 + v67 * v67 + v68 * v68;
        v70 = v67 + v68;
        v71 = v58[-2 * v21];
        v72 = v66 + v70 + v71;
        v73 = v58[-v21];
        v74 = v69 + v71 * v71 + v73 * v73;
        v75 = *v58;
        v76 = v74 + v75 * v75;
        v77 = v73 + v75;
        v78 = v58[v21];
        v79 = v58[2 * v21];
        v80 = v72 + v77 + v78 + v79;
        v81 = v58[3 * v21];
        v82 = v76 + v78 * v78 + v79 * v79 + v81 * v81;
        v83 = v58[4 * v21];
        v84 = v58[5 * v21];
        LODWORD(v58) = v58[6 * v21];
        v85 = v82 + v83 * v83 + v84 * v84 + v58 * v58;
        v86 = v80 + v81 + v83 + v84 + v58;
        v87 = v56;
        do
        {
          v88 = v87[7 * v21];
          v89 = v87[v54];
          v90 = v89 + v88;
          v91 = v88 - v89;
          v85 += v90 * v91;
          v86 += v91;
          v92 = *v87;
          v93 = v57 & 0xF;
          *(v105 + v93) = v92;
          if (15 * v85 - v86 * v86 < v27)
          {
            *(v105 + v93) = (v86 + v92 + vpx_rv[(v52 & 0x3F) + ((17 * v53) & 0x7F) + (v57 & 0x7F)]) >> 4;
          }

          v87[v54] = *(v105 + (v93 ^ 8));
          ++v57;
          v87 += v21;
        }

        while (v55 != v57);
        ++v53;
        ++v56;
      }

      while (v53 != v104);
    }

    vp9_highbd_post_proc_down_and_across_c(2 * *(v101 + 64), (2 * *(v102 + 8)), *(v101 + 36), v102[9], *(v101 + 24), *(v101 + 20), v100);
    v94 = *(v101 + 36);
    v95 = v102[9];
    v97 = *(v101 + 20);
    v96 = *(v101 + 24);
    v98 = 2 * *(v101 + 72);
    v99 = (2 * *(v102 + 9));

    *&result = vp9_highbd_post_proc_down_and_across_c(v98, v99, v94, v95, v96, v97, v100).n128_u64[0];
  }

  else
  {
    v8 = vp9_deblock(a1, a2, a3, a4, a5);
    if (a4 <= 20)
    {
      v9 = 20;
    }

    else
    {
      v9 = a4;
    }

    v10 = 10 * v9;
    v11 = v10 - 500;
    v12 = v10 - 493;
    if (v11 >= 0)
    {
      v12 = v11;
    }

    v13 = (1431655766 * (((v12 >> 3) + 50) * ((v12 >> 3) + 50))) >> 32;
    vpx_mbpost_proc_across_ip_neon(*(a3 + 7), a3[4], a3[1], *a3, (1431655766 * (((v12 >> 3) + 50) * ((v12 >> 3) + 50))) >> 32, *&v8);
    v15 = *(a3 + 7);
    v16 = a3[4];
    v18 = *a3;
    v17 = a3[1];

    vpx_mbpost_proc_down_neon(v15, v16, v17, v18, v13, v14);
  }

  return result;
}

uint64_t vp9_get_pred_context_comp_ref_p(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 456);
  v2 = *(a2 + 464);
  v4 = *(a1 + 4 * *(a1 + 4892) + 4708);
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v2 | v3)
    {
      if (v2)
      {
        v3 = *(a2 + 464);
      }

      v6 = *(v3 + 8);
      if (v6 >= 1)
      {
        if (*(v3 + 9) < 1)
        {
          if (*(a1 + 4894) == v6)
          {
            return 0;
          }

          else
          {
            return 3;
          }
        }

        else
        {
          if (v4)
          {
            v7 = (v3 + 8);
          }

          else
          {
            v7 = (v3 + 9);
          }

          return 4 * (*v7 != *(a1 + 4894));
        }
      }
    }

    return 2;
  }

  v10 = (v2 + 8);
  v9 = *(v2 + 8);
  v11 = (v3 + 8);
  v12 = *(v3 + 8);
  if (v9 <= 0 && v12 < 1)
  {
    return 2;
  }

  if (v9 < 1 || v12 <= 0)
  {
    if (v9 >= 1)
    {
      v15 = *(a2 + 464);
    }

    else
    {
      v15 = *(a2 + 456);
    }

    v16 = *(v15 + 9);
    v17 = (v15 + 8);
    if (v16 <= 0)
    {
      if (*v17 == *(a1 + 4894))
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      if (v4)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      if (*v18 == *(a1 + 4894))
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    v19 = v4 == 0;
    v20 = *(v3 + 9);
    v21 = *(v2 + 9);
    if (v4)
    {
      v22 = (v2 + 8);
    }

    else
    {
      v22 = (v2 + 9);
    }

    if (v19)
    {
      v23 = v11 + 1;
    }

    else
    {
      v23 = v11;
    }

    if (v21 < 1)
    {
      v22 = v10;
    }

    v24 = *v22;
    if (v20 < 1)
    {
      v23 = v11;
    }

    v25 = *v23;
    if (v24 == v25 && *(a1 + 4894) == v24)
    {
      return 0;
    }

    else if (v20 <= 0 && v21 <= 0)
    {
      v27 = *(a1 + 4892);
      if (v24 == v27 && v25 == *(a1 + 4893) || v25 == v27 && v24 == *(a1 + 4893))
      {
        return 4;
      }

      else if (v24 == v25)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else if (v20 < 1 || v21 <= 0)
    {
      if (v20 >= 1)
      {
        v28 = v25;
      }

      else
      {
        v28 = v24;
      }

      if (v21 >= 1)
      {
        v24 = v25;
      }

      v29 = *(a1 + 4894);
      if (v28 != v29 || v24 == v29)
      {
        if (v28 != v29 && v24 == v29)
        {
          return 2;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 1;
      }
    }

    else if (v24 == v25)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t vp9_get_pred_context_single_ref_p1(uint64_t a1)
{
  v2 = *(a1 + 456);
  v1 = *(a1 + 464);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (v1 | v2)
    {
      v4 = v1 ? *(a1 + 464) : *(a1 + 456);
      v5 = *(v4 + 8);
      if (v5 >= 1)
      {
        v6 = *(v4 + 9);
        if (v6 <= 0)
        {
          return 4 * (v5 == 1);
        }

        if (v5 != 1)
        {
          v7 = v6 == 1;
LABEL_67:
          if (v7)
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }
      }
    }

    return 2;
  }

  if (*(v1 + 8) <= 0 && *(v2 + 8) < 1)
  {
    return 2;
  }

  v9 = *(v1 + 8);
  v10 = *(v2 + 8);
  if (v9 < 1 || v10 <= 0)
  {
    if (v9 >= 1)
    {
      v12 = *(a1 + 464);
    }

    else
    {
      v12 = *(a1 + 456);
    }

    v13 = *(v12 + 9);
    v14 = *(v12 + 8);
    if (v13 <= 0)
    {
      return 4 * (v14 == 1);
    }

    if (v14 == 1)
    {
      return 2;
    }

    v7 = v13 == 1;
    goto LABEL_67;
  }

  v16 = *(v1 + 9);
  v17 = *(v2 + 9);
  if (v16 >= 1 && v17 >= 1)
  {
    v7 = v17 == 1 || v10 == 1 || v16 == 1 || v9 == 1;
    goto LABEL_67;
  }

  if (v16 <= 0 && v17 < 1)
  {
    return 2 * (v10 == 1) + 2 * (v9 == 1);
  }

  if (v16 <= 0)
  {
    v20 = v9;
  }

  else
  {
    v20 = v10;
  }

  if (v16 > 0)
  {
    v21 = v16;
  }

  else
  {
    v9 = v10;
    v21 = v17;
  }

  result = v9 == 1 || v21 == 1;
  if (v20 == 1)
  {
    if (result)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t vp9_get_pred_context_single_ref_p2(uint64_t a1)
{
  v2 = *(a1 + 456);
  v1 = *(a1 + 464);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (!(v1 | v2))
    {
      return 2;
    }

    v4 = v1 ? *(a1 + 464) : *(a1 + 456);
    if (*(v4 + 8) < 1)
    {
      return 2;
    }

    v5 = *(v4 + 8);
    v6 = *(v4 + 9);
    if (v5 == 1)
    {
      if (v6 < 1)
      {
        return 2;
      }
    }

    else
    {
      if (v6 <= 0)
      {
        return 4 * (v5 == 2);
      }

      if (v5 == 2)
      {
        return 3;
      }
    }

    v21 = v6 == 2;
LABEL_84:
    if (v21)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  if (*(v1 + 8) <= 0 && *(v2 + 8) < 1)
  {
    return 2;
  }

  v8 = *(v1 + 8);
  v9 = *(v2 + 8);
  if (v8 >= 1 && v9 > 0)
  {
    v14 = *(v1 + 9);
    v15 = *(v2 + 9);
    if (v14 >= 1 && v15 >= 1)
    {
      if (v8 != v9 || v14 != v15)
      {
        return 2;
      }

      v21 = v14 == 2 || v8 == 2;
      goto LABEL_84;
    }

    if (v14 > 0 || v15 >= 1)
    {
      if (v14 <= 0)
      {
        v18 = v8;
      }

      else
      {
        v18 = v9;
      }

      if (v14 > 0)
      {
        v19 = v14;
      }

      else
      {
        v8 = v9;
        v19 = v15;
      }

      result = v8 == 2 || v19 == 2;
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          if (result)
          {
            return 4;
          }

          else
          {
            return 3;
          }
        }

        else if (result)
        {
          return 3;
        }

        else
        {
          return 1;
        }
      }

      return result;
    }

    if (v8 != 1 || v9 != 1)
    {
      if (v8 != 1 && v9 != 1)
      {
        return 2 * (v9 == 2) + 2 * (v8 == 2);
      }

      if (v8 == 1)
      {
        v8 = v9;
      }

      return 4 * (v8 == 2);
    }

    return 3;
  }

  if (v8 >= 1)
  {
    v11 = *(a1 + 464);
  }

  else
  {
    v11 = *(a1 + 456);
  }

  v12 = *(v11 + 9);
  v5 = *(v11 + 8);
  if (v12 <= 0)
  {
    if (v5 == 1)
    {
      return 3;
    }

    return 4 * (v5 == 2);
  }

  result = 3;
  if (v5 != 2)
  {
    if (v12 == 2)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

int16x4_t vp9_init_quantizer(_DWORD *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = a1 + 40876;
  v4 = a1[47464];
  if (v4 == 10)
  {
    v5 = 592;
  }

  else
  {
    v5 = 2368;
  }

  if (v4 == 8)
  {
    v5 = 148;
  }

  v65 = v5;
  v6 = a1[47513];
  v7 = (112 - 16 * v6) / 7;
  v64 = v7 + 64;
  v8 = 64 - v7;
  v10 = a1[43258];
  v9 = a1[43259];
  v11 = a1[43260];
  v12 = a1 + 1036;
  do
  {
    switch(v4)
    {
      case 8:
        v31 = &dc_qlookup_0;
        goto LABEL_21;
      case 12:
        v31 = &dc_qlookup_12;
        goto LABEL_21;
      case 10:
        v31 = &dc_qlookup_10;
LABEL_21:
        v32 = *&v31[v1];
        goto LABEL_23;
    }

    v32 = -1;
LABEL_23:
    if (v65 <= v32)
    {
      v33 = 80;
    }

    else
    {
      v33 = 84;
    }

    if (v2 * 4)
    {
      v34 = v33;
    }

    else
    {
      v34 = 64;
    }

    if (v2 * 4)
    {
      v35 = 48;
    }

    else
    {
      v35 = 64;
    }

    v36 = v2 != 0;
    v37 = v6 > 0;
    if (v6 <= 0)
    {
      v38 = v35;
    }

    else
    {
      v38 = v8;
    }

    if (v36 && v37)
    {
      v39 = v64;
    }

    else
    {
      v39 = v34;
    }

    if (v36 && v37)
    {
      v40 = v8;
    }

    else
    {
      v40 = v35;
    }

    switch(v4)
    {
      case 8:
        v41 = &dc_qlookup_0;
        break;
      case 12:
        v41 = &dc_qlookup_12;
        break;
      case 10:
        v41 = &dc_qlookup_10;
        break;
      default:
        v43 = -1;
        goto LABEL_54;
    }

    if (v10 >= 0xFF)
    {
      v42 = 255;
    }

    else
    {
      v42 = v10;
    }

    if (v10 < 0)
    {
      v42 = 0;
    }

    v43 = v41[v42];
LABEL_54:
    v44 = &a1[v2];
    v45 = __clz(v43) ^ 0x1F;
    *(v44 + 24) = (0x10000 << v45) / v43 + 1;
    v46 = &v12[v2];
    v46[6144] = 0x10000 / v43;
    v46[10240] = (v38 * v43) >> 7;
    *(v44 + 2072) = 1 << (16 - v45);
    v46[2048] = (v39 * v43 + 64) >> 7;
    v46[4096] = (v40 * v43) >> 7;
    LOWORD(v3[v2]) = v43;
    switch(v4)
    {
      case 8:
        v47 = &dc_qlookup_0;
        break;
      case 12:
        v47 = &dc_qlookup_12;
        break;
      case 10:
        v47 = &dc_qlookup_10;
        break;
      default:
        v49 = -1;
        goto LABEL_67;
    }

    if (v9 >= 0xFF)
    {
      v48 = 255;
    }

    else
    {
      v48 = v9;
    }

    if (v9 < 0)
    {
      v48 = 0;
    }

    v49 = v47[v48];
LABEL_67:
    v50 = &v12[v2];
    v51 = __clz(v49) ^ 0x1F;
    v50[14336] = (0x10000 << v51) / v49 + 1;
    v50[0x4000] = 1 << (16 - v51);
    v50[0x2000] = 0x10000 / v49;
    v50[12288] = (v38 * v49) >> 7;
    v50[18432] = (v39 * v49 + 64) >> 7;
    v50[20480] = (v40 * v49) >> 7;
    LOWORD(v3[v2 + 1024]) = v49;
    if (v2 * 4)
    {
      v52 = 42;
    }

    else
    {
      v52 = 64;
    }

    if (v6 <= 0)
    {
      v53 = v52;
    }

    else
    {
      v53 = v8;
    }

    switch(v4)
    {
      case 8:
        v54 = &ac_qlookup_0;
        goto LABEL_79;
      case 12:
        v54 = &ac_qlookup_12;
        goto LABEL_79;
      case 10:
        v54 = &ac_qlookup_10;
LABEL_79:
        v55 = *&v54[v1];
        goto LABEL_81;
    }

    v55 = 0xFFFF;
LABEL_81:
    v56 = &a1[v2];
    v57 = __clz(v55) ^ 0x1F;
    v58 = (0x10000 << v57) / v55 + 1;
    *(v56 + 25) = (0x10000 << v57) / v55 + 1;
    v59 = 1 << (16 - v57);
    v60 = 0x10000 / v55;
    HIWORD(a1[v2 + 4108]) = v60;
    v61 = (v53 * v55) >> 7;
    HIWORD(a1[v2 + 6156]) = v61;
    *(v56 + 2073) = v59;
    v62 = (v39 * v55 + 64) >> 7;
    HIWORD(v12[v2 + 1024]) = v62;
    v63 = (v40 * v55) >> 7;
    HIWORD(a1[v2 + 3084]) = v63;
    HIWORD(v3[v2]) = v55;
    switch(v4)
    {
      case 8:
        v13 = &ac_qlookup_0;
        break;
      case 12:
        v13 = &ac_qlookup_12;
        break;
      case 10:
        v13 = &ac_qlookup_10;
        break;
      default:
        v15 = 0xFFFF;
        goto LABEL_14;
    }

    if (v11 >= 0xFF)
    {
      v14 = 255;
    }

    else
    {
      v14 = v11;
    }

    if (v11 < 0)
    {
      v14 = 0;
    }

    v15 = v13[v14];
LABEL_14:
    result = vdup_n_s16(v60);
    LOWORD(a1[v2 + 4111]) = v60;
    HIWORD(a1[v2 + 4111]) = v60;
    v17 = vdup_n_s16(v61);
    LOWORD(a1[v2 + 6159]) = v61;
    HIWORD(a1[v2 + 6159]) = v61;
    LOWORD(a1[v2 + 3087]) = v63;
    HIWORD(a1[v2 + 3087]) = v63;
    v18 = &a1[v2];
    v19 = vdup_n_s16(v58);
    *(v18 + 30) = v58;
    *(v18 + 31) = v58;
    v20 = __clz(v15) ^ 0x1F;
    v21 = vdup_n_s16(v59);
    *(v18 + 2078) = v59;
    *(v18 + 2079) = v59;
    v22 = (0x10000 << v20) / v15 + 1;
    v23 = vdup_n_s16(v22);
    HIWORD(a1[v2 + 8206]) = v22;
    LOWORD(a1[v2 + 8207]) = v22;
    HIWORD(a1[v2 + 8207]) = v22;
    *(v18 + 13) = v19;
    HIWORD(a1[v2 + 5134]) = 0x10000 / v15;
    LOWORD(a1[v2 + 5135]) = 0x10000 / v15;
    HIWORD(a1[v2 + 5135]) = 0x10000 / v15;
    v24 = (v53 * v15) >> 7;
    v25 = vdup_n_s16(v24);
    HIWORD(a1[v2 + 7182]) = v24;
    LOWORD(a1[v2 + 7183]) = v24;
    HIWORD(a1[v2 + 7183]) = v24;
    v26 = 1 << (16 - v20);
    v27 = vdup_n_s16(v26);
    v28 = (v39 * v15 + 64) >> 7;
    HIWORD(a1[v2 + 9230]) = v26;
    HIWORD(a1[v2 + 10254]) = v28;
    LOWORD(a1[v2 + 9231]) = v26;
    HIWORD(a1[v2 + 9231]) = v26;
    v29 = &v12[v2];
    *(v29 + 2054) = v62;
    LOWORD(a1[v2 + 10255]) = v28;
    *(v29 + 2055) = v62;
    HIWORD(a1[v2 + 10255]) = v28;
    *(v29 + 1) = v21;
    v30 = &v3[v2];
    v30[2053] = v15;
    v30[2054] = v15;
    v30[2055] = v15;
    v30[6] = v55;
    v30[7] = v55;
    LODWORD(v30) = (v40 * v15) >> 7;
    HIWORD(a1[v2 + 11278]) = v30;
    LOWORD(a1[v2 + 11279]) = v30;
    HIWORD(a1[v2 + 11279]) = v30;
    *(&a1[v2 + 8204] + 2) = v23;
    *(&a1[v2 + 5132] + 2) = vdup_n_s16(0x10000 / v15);
    *(&a1[v2 + 7180] + 2) = v25;
    *(&a1[v2 + 9228] + 2) = v27;
    *(&a1[v2 + 10252] + 2) = vdup_n_s16(v28);
    *(&a1[v2 + 11276] + 2) = vdup_n_s16(v30);
    *(&a1[v2 + 41900] + 2) = vdup_n_s16(v15);
    *&a1[v2 + 4109] = result;
    *&a1[v2 + 6157] = v17;
    *&a1[v2 + 2061] = vdup_n_s16(v62);
    *&a1[v2 + 3085] = vdup_n_s16(v63);
    *&a1[v2 + 40877] = vdup_n_s16(v55);
    v2 += 4;
    v1 += 2;
    ++v10;
    ++v9;
    ++v11;
  }

  while (v2 != 1024);
  return result;
}

uint64_t vp9_init_plane_quantizers(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 942144;
  v5 = (a1 + 189856);
  v6 = a1 + 172972;
  v7 = *(**(a2 + 25360) + 4);
  v8 = *(a1 + 173028);
  v9 = a1 + 4 * v7;
  if (*(a1 + 176472) && (*(v9 + 176552) & 1) != 0)
  {
    v10 = *(a1 + 8 * v7 + 176488);
    if (*(a1 + 176475) == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 173028);
    }

    v12 = v11 + v10;
    if (v12 >= 0xFF)
    {
      v13 = 255;
    }

    else
    {
      v13 = v12;
    }

    if (v12 >= 0)
    {
      v8 = v13;
    }

    else
    {
      v8 = 0;
    }
  }

  v14 = vp9_compute_rd_mult_based_on_qindex(a1, *(a1 + 173032) + v8);
  if (!*(v4 + 184) || (*(v4 + 200) & 4) == 0 || (v15 = *(v4 + 188), v15 == -1))
  {
    if (v5[55] == 2)
    {
      v15 = v14;
      if (*v6)
      {
        v16 = (a1 + 738488);
        v17 = a1 + 4 * *(a1 + 742156);
        v18 = *(v17 + 743168);
        v19 = (v17 + 745940);
        if (*v4)
        {
          v16 = v19;
        }

        v20 = *v16;
        v21 = v20 <= 1599;
        v22 = v20 / 100;
        if (!v21)
        {
          v22 = 15;
        }

        v23 = rd_frame_type_factor[v18] * v14;
        v15 = (((v23 >> 7) * rd_boost_factor[v22]) >> 7) + (v23 >> 7);
      }
    }

    else
    {
      v15 = v14;
    }
  }

  v24 = 16 * v8;
  *(a2 + 8248) = a1 + 48 + v24;
  *(a2 + 8240) = a1 + v24 + 16432;
  *(a2 + 8232) = a1 + v24 + 24624;
  *(a2 + 8256) = a1 + v24 + 4144;
  v25 = (a1 + v24 + 8240);
  *(a2 + 8264) = v25;
  *(a2 + 8272) = a1 + v24 + 12336;
  *(a2 + 25032) = a1 + v24 + 163504;
  *(a2 + 8280) = (*v25 * *v25);
  *(a2 + 8288) = (*(a1 + v24 + 8242) * *(a1 + v24 + 8242));
  v26 = (a1 + v24 + 41008);
  v27 = *v26;
  v28 = *(a1 + v24 + 41010);
  *(a2 + 16552) = a1 + v24 + 32816;
  v29 = a1 + v24 + 36912;
  *(a2 + 16544) = a1 + v24 + 20528;
  result = a1 + v24 + 45104;
  *(a2 + 16536) = a1 + v24 + 28720;
  v31 = a1 + v24 + 167600;
  v32 = (v27 * v27);
  *(a2 + 16560) = v29;
  v33 = (v28 * v28);
  *(a2 + 16568) = v26;
  *(a2 + 16576) = result;
  *(a2 + 25168) = v31;
  *(a2 + 16584) = v32;
  *(a2 + 16592) = v33;
  *(a2 + 24856) = a1 + v24 + 32816;
  *(a2 + 24848) = a1 + v24 + 20528;
  *(a2 + 24840) = a1 + v24 + 28720;
  *(a2 + 24864) = v29;
  *(a2 + 24872) = v26;
  *(a2 + 24880) = result;
  *(a2 + 25304) = v31;
  *(a2 + 24888) = v32;
  *(a2 + 24896) = v33;
  v34 = *(v6 + 3500);
  if (*(v6 + 3500))
  {
    v34 = (*(v9 + 176552) >> 3) & 1;
  }

  *(a2 + 25584) = v34;
  *(a2 + 25600) = v8;
  if (v15 >= 0x40)
  {
    v35 = v15 >> 6;
  }

  else
  {
    v35 = (v15 >> 6) + 1;
  }

  *(a2 + 25620) = v35;
  if (*v5 == 8)
  {
    v36 = &sad_per_bit4lut_8;
    v37 = &sad_per_bit16lut_8;
  }

  else if (*v5 == 10)
  {
    v36 = &sad_per_bit4lut_10;
    v37 = &sad_per_bit16lut_10;
  }

  else
  {
    v36 = &sad_per_bit4lut_12;
    v37 = &sad_per_bit16lut_12;
  }

  *(a2 + 25624) = v37[v8];
  *(a2 + 25628) = v36[v8];
  return result;
}

__int16 vp9_quantize_fp_neon@<H0>(int16x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int32x4_t *a4@<X3>, int32x4_t *a5@<X4>, int16x8_t *a6@<X5>, __int16 *a7@<X6>, uint64_t a8@<X7>)
{
  v8 = *(a8 + 8);
  v9 = **(a3 + 8232);
  v10 = **(a3 + 8240);
  v11 = *a6;
  v12 = vuzp1q_s16(*a1, a1[1]);
  v13 = vcltzq_s16(v12);
  v14 = vqaddq_s16(vabsq_s16(v12), v9);
  v15 = vuzp2q_s16(vmull_s16(*v14.i8, *v10.i8), vmull_high_s16(v14, v10));
  v16 = vsubq_s16(veorq_s8(v13, v15), v13);
  v17 = vmull_high_s16(v16, *a6);
  *a5 = vmull_s16(*v16.i8, *a6->i8);
  a5[1] = v17;
  *a4 = vmovl_s16(*v16.i8);
  a4[1] = vmovl_high_s16(v16);
  v16.i64[0] = -1;
  v16.i64[1] = -1;
  v18 = vmaxq_s16(vbicq_s8(*v8, vceqzq_s16(v15)), v16);
  if (a2 >= 9)
  {
    v19 = a5 + 3;
    v20 = vdupq_lane_s16(*v9.i8, 1);
    v21 = a4 + 3;
    v22 = v8 + 1;
    v23 = a1 + 3;
    v24 = 8;
    do
    {
      v25 = vuzp1q_s16(v23[-1], *v23);
      v26 = vabsq_s16(v25);
      v27 = vcltzq_s16(v25);
      v28 = vqaddq_s16(v26, v20);
      v29 = vuzp2q_s16(vmull_lane_s16(*v28.i8, *v10.i8, 1), vmull_high_lane_s16(v28, *v10.i8, 1));
      v30 = vsubq_s16(veorq_s8(v27, v29), v27);
      v19[-1] = vmull_lane_s16(*v30.i8, *v11.i8, 1);
      *v19 = vmull_high_lane_s16(v30, *v11.i8, 1);
      v21[-1] = vmovl_s16(*v30.i8);
      *v21 = vmovl_high_s16(v30);
      v31 = *v22++;
      v24 += 8;
      v18 = vmaxq_s16(v18, vbicq_s8(v31, vceqzq_s16(v29)));
      v19 += 2;
      v21 += 2;
      v23 += 2;
    }

    while (v24 < a2);
  }

  result = vmaxvq_s16(v18);
  *a7 = result;
  return result;
}

__int16 vp9_quantize_fp_32x32_neon@<H0>(int16x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int32x4_t *a4@<X3>, int32x4_t *a5@<X4>, int16x8_t *a6@<X5>, __int16 *a7@<X6>, uint64_t a8@<X7>)
{
  v8 = 0;
  v9 = vrshrq_n_s16(**(a3 + 8232), 1uLL);
  v10 = **(a3 + 8240);
  v11 = *a6;
  v12 = vshrq_n_s16(*a6, 2uLL);
  v13 = *(a8 + 8);
  v14 = vuzp1q_s16(*a1, a1[1]);
  v15 = vcltzq_s16(v14);
  v16 = vabsq_s16(v14);
  v17.i64[0] = -1;
  v17.i64[1] = -1;
  v18 = vqdmulhq_s16(vbicq_s8(vqaddq_s16(v16, v9), vcgtq_s16(v12, v16)), v10);
  v19 = vsubq_s16(veorq_s8(v18, v15), v15);
  v20 = vmull_s16(*v19.i8, *a6->i8);
  v21 = vshrq_n_s32(vmlal_high_s16(vshrq_n_u32(vmull_high_s16(v19, *a6), 0x1FuLL), v19, *a6), 1uLL);
  *a5 = vshrq_n_s32(vsraq_n_u32(v20, v20, 0x1FuLL), 1uLL);
  a5[1] = v21;
  *a4 = vmovl_s16(*v19.i8);
  a4[1] = vmovl_high_s16(v19);
  v23 = *v13;
  v22 = v13 + 1;
  v24 = vbicq_s8(v23, vceqzq_s16(v18));
  v25 = vdupq_lane_s16(*v9.i8, 1);
  v26 = vmaxq_s16(v24, v17);
  v27 = vdupq_lane_s16(*v12.i8, 1);
  v28 = a1 + 3;
  v29 = a4 + 3;
  v30 = a5 + 3;
  do
  {
    v31 = vuzp1q_s16(v28[-1], *v28);
    v32 = vabsq_s16(v31);
    v33 = vcltzq_s16(v31);
    v34 = vqdmulhq_lane_s16(vbicq_s8(vqaddq_s16(v32, v25), vcgtq_s16(v27, v32)), *v10.i8, 1);
    v35 = vsubq_s16(veorq_s8(v34, v33), v33);
    v30[-1] = vshrq_n_s32(vmlal_lane_s16(vshrq_n_u32(vmull_lane_s16(*v35.i8, *v11.i8, 1), 0x1FuLL), *v35.i8, *v11.i8, 1), 1uLL);
    *v30 = vshrq_n_s32(vmlal_high_lane_s16(vshrq_n_u32(vmull_high_lane_s16(v35, *v11.i8, 1), 0x1FuLL), v35, *v11.i8, 1), 1uLL);
    v29[-1] = vmovl_s16(*v35.i8);
    *v29 = vmovl_high_s16(v35);
    v36 = *v22++;
    v26 = vmaxq_s16(v26, vbicq_s8(v36, vceqzq_s16(v34)));
    v28 += 2;
    v29 += 2;
    v30 += 2;
    v8 += 8;
  }

  while (v8 < 0x3F8);
  result = vmaxvq_s16(v26);
  *a7 = result;
  return result;
}

__int16 vp9_highbd_quantize_fp_neon@<H0>(int32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int32x4_t *a4@<X3>, int32x4_t *a5@<X4>, int16x4_t *a6@<X5>, __int16 *a7@<X6>, uint64_t a8@<X7>)
{
  v8 = *a6;
  v9 = **(a3 + 8232);
  v10 = vshll_n_s16(**(a3 + 8240), 0xFuLL);
  v11 = vmovl_s16(*a6);
  v12 = *(a8 + 8);
  v13 = vcltzq_s32(*a1);
  v14 = vqdmulhq_s32(vaddw_s16(vabsq_s32(*a1), v9), v10);
  *a4 = vsubq_s32(veorq_s8(v14, v13), v13);
  v15 = vdupq_lane_s32(*&vmovl_s16(v9), 1);
  *a5 = vsubq_s32(veorq_s8(vmulq_s32(v14, v11), v13), v13);
  v16 = vmovl_s16(vdup_lane_s16(v8, 1));
  v17 = vdupq_lane_s32(*v11.i8, 1);
  v18 = a1[1];
  v19 = vcltzq_s32(v18);
  v20 = vqdmulhq_lane_s32(vaddq_s32(vabsq_s32(v18), v15), *v10.i8, 1);
  a4[1] = vsubq_s32(veorq_s8(v20, v19), v19);
  a5[1] = vsubq_s32(veorq_s8(vmulq_s32(v20, v16), v19), v19);
  v22 = *v12;
  v21 = v12 + 1;
  v23 = vbicq_s8(v22, vuzp1q_s16(vceqzq_s32(v14), vceqzq_s32(v20)));
  v20.i64[0] = -1;
  v20.i64[1] = -1;
  v24 = vmaxq_s16(v23, v20);
  v25 = a2 - 8;
  v26 = a5 + 3;
  v27 = a4 + 3;
  v28 = a1 + 3;
  do
  {
    v29 = v28[-1];
    v30 = vcltzq_s32(v29);
    v31 = vqdmulhq_lane_s32(vaddq_s32(vabsq_s32(v29), v15), *v10.i8, 1);
    v27[-1] = vsubq_s32(veorq_s8(v31, v30), v30);
    v26[-1] = vsubq_s32(veorq_s8(vmulq_s32(v31, v17), v30), v30);
    v32 = *v28;
    v28 += 2;
    v33 = vcltzq_s32(v32);
    v34 = vqdmulhq_lane_s32(vaddq_s32(vabsq_s32(v32), v15), *v10.i8, 1);
    *v27 = vsubq_s32(veorq_s8(v34, v33), v33);
    v27 += 2;
    *v26 = vsubq_s32(veorq_s8(vmulq_s32(v34, v17), v33), v33);
    v26 += 2;
    v35 = *v21++;
    v24 = vmaxq_s16(v24, vbicq_s8(v35, vuzp1q_s16(vceqzq_s32(v31), vceqzq_s32(v34))));
    v25 -= 8;
  }

  while (v25);
  result = vmaxvq_s16(v24);
  *a7 = result;
  return result;
}

__int16 vp9_highbd_quantize_fp_32x32_neon@<H0>(int32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int32x4_t *a4@<X3>, int32x4_t *a5@<X4>, int16x4_t *a6@<X5>, __int16 *a7@<X6>, uint64_t a8@<X7>)
{
  v8 = *a6;
  v9 = vqrdmulh_s16(**(a3 + 8232), 0x4000400040004000);
  v10 = vmovl_s16(v9).u64[0];
  v11 = vshll_n_s16(**(a3 + 8240), 0xFuLL);
  v12 = vmovl_s16(*a6);
  v13 = *(a8 + 8);
  v14 = vcltzq_s32(*a1);
  v15 = vabsq_s32(*a1);
  v16 = vaddw_s16(v15, v9);
  v17 = vqdmulhq_s32(vbicq_s8(vaddq_s32(v16, v16), vcgtq_s32(v12, vshlq_n_s32(v15, 2uLL))), v11);
  *a4 = vsubq_s32(veorq_s8(v17, v14), v14);
  *a5 = vsubq_s32(veorq_s8(vshrq_n_s32(vmulq_s32(v17, v12), 1uLL), v14), v14);
  v18 = vdupq_lane_s32(v10, 1);
  v19 = vdup_lane_s16(v8, 1);
  v20 = vdupq_lane_s32(*v12.i8, 1);
  v21 = a1[1];
  v22 = vcltzq_s32(v21);
  v23 = vabsq_s32(v21);
  v24 = vcgtq_s32(v20, vshlq_n_s32(v23, 2uLL));
  v25 = vaddq_s32(v23, v18);
  v26 = vqdmulhq_lane_s32(vbicq_s8(vaddq_s32(v25, v25), v24), *v11.i8, 1);
  a4[1] = vsubq_s32(veorq_s8(v26, v22), v22);
  a5[1] = vsubq_s32(veorq_s8(vshrq_n_s32(vmulq_s32(v26, vmovl_s16(v19)), 1uLL), v22), v22);
  v28 = *v13;
  v27 = v13 + 1;
  v29 = vbicq_s8(v28, vuzp1q_s16(vceqzq_s32(v17), vceqzq_s32(v26)));
  v26.i64[0] = -1;
  v26.i64[1] = -1;
  v30 = vmaxq_s16(v29, v26);
  v31 = a2 - 8;
  v32 = a5 + 3;
  v33 = a4 + 3;
  v34 = a1 + 3;
  do
  {
    v35 = v34[-1];
    v36 = vcltzq_s32(v35);
    v37 = vabsq_s32(v35);
    v38 = vcgtq_s32(v20, vshlq_n_s32(v37, 2uLL));
    v39 = vaddq_s32(v37, v18);
    v40 = vqdmulhq_lane_s32(vbicq_s8(vaddq_s32(v39, v39), v38), *v11.i8, 1);
    v33[-1] = vsubq_s32(veorq_s8(v40, v36), v36);
    v32[-1] = vsubq_s32(veorq_s8(vshrq_n_s32(vmulq_s32(v40, v20), 1uLL), v36), v36);
    v41 = *v34;
    v34 += 2;
    v42 = vcltzq_s32(v41);
    v43 = vabsq_s32(v41);
    v44 = vcgtq_s32(v20, vshlq_n_s32(v43, 2uLL));
    v45 = vaddq_s32(v43, v18);
    v46 = vqdmulhq_lane_s32(vbicq_s8(vaddq_s32(v45, v45), v44), *v11.i8, 1);
    *v33 = vsubq_s32(veorq_s8(v46, v42), v42);
    v33 += 2;
    *v32 = vsubq_s32(veorq_s8(vshrq_n_s32(vmulq_s32(v46, v20), 1uLL), v42), v42);
    v32 += 2;
    v47 = *v27++;
    v30 = vmaxq_s16(v30, vbicq_s8(v47, vuzp1q_s16(vceqzq_s32(v40), vceqzq_s32(v46))));
    v31 -= 8;
  }

  while (v31);
  result = vmaxvq_s16(v30);
  *a7 = result;
  return result;
}

uint64_t init_minq_luts(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = 0;
  v11 = 0.015625;
  if (a7 == 10)
  {
    v11 = 0.0625;
  }

  if (a7 == 8)
  {
    v11 = 0.25;
  }

  do
  {
    if (a7 == 8)
    {
      v13 = &ac_qlookup_0;
      goto LABEL_14;
    }

    if (a7 == 12)
    {
      v13 = &ac_qlookup_12;
      goto LABEL_14;
    }

    v7 = -1.0;
    if (a7 == 10)
    {
      v13 = &ac_qlookup_10;
LABEL_14:
      if (v10 >= 0xFF)
      {
        v14 = 255;
      }

      else
      {
        v14 = v10;
      }

      LOWORD(v7) = v13[v14];
      v7 = vmovl_s16(*&v7).i32[0];
    }

    v7 = v11 * v7;
    v15 = v7 * ((v7 * 0.000001 + -0.0004) * v7 + 0.15);
    if (v15 >= v7)
    {
      v15 = v7;
    }

    if (v15 > 2.0)
    {
      v16 = 0;
      while (1)
      {
        if (a7 == 8)
        {
          v17 = &ac_qlookup_0;
          goto LABEL_28;
        }

        if (a7 == 12)
        {
          break;
        }

        v8 = -1.0;
        if (a7 == 10)
        {
          v17 = &ac_qlookup_10;
LABEL_28:
          LOWORD(v8) = v17[v16];
          v8 = vmovl_s16(*&v8).i32[0];
        }

        v8 = v11 * v8;
        if (v15 <= v8)
        {
          goto LABEL_33;
        }

        if (++v16 == 256)
        {
          LODWORD(v16) = 255;
          goto LABEL_33;
        }
      }

      v17 = &ac_qlookup_12;
      goto LABEL_28;
    }

    LODWORD(v16) = 0;
LABEL_33:
    *(result + 4 * v10) = v16;
    v18 = v7 * 0.0000021 + -0.00125;
    v19 = v7 * (v18 * v7 + 0.45);
    if (v19 >= v7)
    {
      v19 = v7;
    }

    if (v19 > 2.0)
    {
      v20 = 0;
      while (1)
      {
        if (a7 == 8)
        {
          v21 = &ac_qlookup_0;
          goto LABEL_43;
        }

        if (a7 == 12)
        {
          break;
        }

        v9 = -1.0;
        if (a7 == 10)
        {
          v21 = &ac_qlookup_10;
LABEL_43:
          LOWORD(v9) = v21[v20];
          v9 = vmovl_s16(*&v9).i32[0];
        }

        v9 = v11 * v9;
        if (v19 <= v9)
        {
          goto LABEL_48;
        }

        if (++v20 == 256)
        {
          LODWORD(v20) = 255;
          goto LABEL_48;
        }
      }

      v21 = &ac_qlookup_12;
      goto LABEL_43;
    }

    LODWORD(v20) = 0;
LABEL_48:
    *(a2 + 4 * v10) = v20;
    v22 = v7 * ((v7 * 0.0000015 + -0.0009) * v7 + 0.3);
    if (v22 >= v7)
    {
      v22 = v7;
    }

    if (v22 > 2.0)
    {
      v23 = 0;
      while (1)
      {
        if (a7 == 8)
        {
          v24 = &ac_qlookup_0;
          goto LABEL_58;
        }

        if (a7 == 12)
        {
          break;
        }

        v9 = -1.0;
        if (a7 == 10)
        {
          v24 = &ac_qlookup_10;
LABEL_58:
          LOWORD(v9) = v24[v23];
          v9 = vmovl_s16(*&v9).i32[0];
        }

        v9 = v11 * v9;
        if (v22 <= v9)
        {
          goto LABEL_63;
        }

        if (++v23 == 256)
        {
          LODWORD(v23) = 255;
          goto LABEL_63;
        }
      }

      v24 = &ac_qlookup_12;
      goto LABEL_58;
    }

    LODWORD(v23) = 0;
LABEL_63:
    *(a3 + 4 * v10) = v23;
    v8 = v7 * ((v7 * 0.00000271 + -0.00113) * v7 + 0.7);
    if (v8 >= v7)
    {
      v8 = v7;
    }

    if (v8 > 2.0)
    {
      v25 = 0;
      while (1)
      {
        if (a7 == 8)
        {
          v26 = &ac_qlookup_0;
          goto LABEL_73;
        }

        if (a7 == 12)
        {
          break;
        }

        v9 = -1.0;
        if (a7 == 10)
        {
          v26 = &ac_qlookup_10;
LABEL_73:
          LOWORD(v9) = v26[v25];
          v9 = vmovl_s16(*&v9).i32[0];
        }

        v9 = v11 * v9;
        if (v8 <= v9)
        {
          goto LABEL_78;
        }

        if (++v25 == 256)
        {
          LODWORD(v25) = 255;
          goto LABEL_78;
        }
      }

      v26 = &ac_qlookup_12;
      goto LABEL_73;
    }

    LODWORD(v25) = 0;
LABEL_78:
    *(a5 + 4 * v10) = v25;
    v27 = v7 * (v18 * v7 + 0.55);
    if (v27 < v7)
    {
      v7 = v27;
    }

    if (v7 > 2.0)
    {
      v28 = 0;
      while (1)
      {
        if (a7 == 8)
        {
          v29 = &ac_qlookup_0;
          goto LABEL_88;
        }

        if (a7 == 12)
        {
          break;
        }

        v27 = -1.0;
        if (a7 == 10)
        {
          v29 = &ac_qlookup_10;
LABEL_88:
          LOWORD(v27) = v29[v28];
          v27 = vmovl_s16(*&v27).i32[0];
        }

        v27 = v11 * v27;
        if (v7 <= v27)
        {
          goto LABEL_93;
        }

        if (++v28 == 256)
        {
          LODWORD(v28) = 255;
          goto LABEL_93;
        }
      }

      v29 = &ac_qlookup_12;
      goto LABEL_88;
    }

    LODWORD(v28) = 0;
LABEL_93:
    *(a4 + 4 * v10) = v28;
    if (v8 <= 2.0)
    {
      LODWORD(i) = 0;
      goto LABEL_7;
    }

    for (i = 0; i != 256; ++i)
    {
      if (a7 == 8)
      {
        v30 = &ac_qlookup_0;
      }

      else if (a7 == 12)
      {
        v30 = &ac_qlookup_12;
      }

      else
      {
        v7 = -1.0;
        if (a7 != 10)
        {
          goto LABEL_102;
        }

        v30 = &ac_qlookup_10;
      }

      LOWORD(v7) = v30[i];
      v7 = vmovl_s16(*&v7).i32[0];
LABEL_102:
      v7 = v11 * v7;
      if (v8 <= v7)
      {
        goto LABEL_7;
      }
    }

    LODWORD(i) = 255;
LABEL_7:
    *(a6 + 4 * v10++) = i;
  }

  while (v10 != 256);
  return result;
}

double vp9_rc_init(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 || *(a1 + 108) != 1)
  {
    *(a3 + 168) = (*(a1 + 156) + *(a1 + 152)) / 2;
    v5 = (*(a1 + 156) + *(a1 + 152)) / 2;
  }

  else
  {
    v5 = *(a1 + 152);
    *(a3 + 168) = v5;
  }

  *(a3 + 172) = v5;
  *(a3 + 16) = *(a1 + 156);
  v6 = *(a1 + 152);
  *(a3 + 20) = v6;
  v7 = *(a3 + 288);
  *(a3 + 192) = v7;
  *(a3 + 200) = v7;
  v8 = (a3 + 144);
  v9 = vld1q_dup_f32(v8);
  *(a3 + 232) = v9;
  *(a3 + 264) = 0;
  *(a3 + 272) = 0;
  *(a3 + 256) = 0;
  *(a3 + 624) = 0xA00000000;
  *(a3 + 584) = 0;
  *(a3 + 608) = 0;
  *(a3 + 616) = 0;
  *(a3 + 592) = xmmword_273BD42C0;
  *(a3 + 376) = 0x6400000096;
  *(a3 + 632) = 0;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 544) = 0u;
  *(a3 + 560) = 0u;
  *(a3 + 576) = 0;
  *(a3 + 116) = 0x800000000;
  *(a3 + 92) = 0;
  *(a3 + 132) = 0;
  *(a3 + 124) = 0;
  *(a3 + 160) = 0;
  v10 = *(a1 + 4);
  *(a3 + 712) = 1;
  v11 = 0.015625;
  if (v10 == 10)
  {
    v11 = 0.0625;
  }

  *(a3 + 156) = v6;
  v12 = 0.25;
  *(a3 + 176) = 0;
  if (v10 == 8)
  {
    v11 = 0.25;
    v13 = ac_qlookup_0;
  }

  else if (v10 == 12)
  {
    v13 = ac_qlookup_12;
  }

  else
  {
    v12 = -1.0;
    if (v10 != 10)
    {
      goto LABEL_20;
    }

    v13 = ac_qlookup_10;
  }

  if (v6 >= 0xFF)
  {
    v14 = 255;
  }

  else
  {
    v14 = v6;
  }

  if (v6 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LOWORD(v12) = v13[v15];
  v12 = vmovl_s16(*&v12).i32[0];
LABEL_20:
  *(a3 + 184) = v11 * v12;
  memset_pattern16((a3 + 48), &unk_273BD42D0, 0x28uLL);
  *(a3 + 684) = 0;
  *(a3 + 668) = 0u;
  v16 = *(a1 + 344);
  v17 = *(a1 + 348);
  *(a3 + 96) = v16;
  *(a3 + 100) = v17;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_22;
    }

LABEL_32:
    v21 = llround(*(a1 + 24) * 0.75);
    if (v21 >= 16)
    {
      v21 = 16;
    }

    v22 = (v21 & 1) + v21;
    if (v22 <= v16)
    {
      v22 = v16;
    }

    *(a3 + 100) = v22;
    *(a3 + 108) = (v22 + v16) / 2;
    if (*(a1 + 92))
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v18 = *(a1 + 24);
  v19 = v18 * (*(a1 + 12) * *(a1 + 8));
  v16 = llround(v18 * 0.125);
  if (v16 >= 16)
  {
    v16 = 16;
  }

  if (v16 <= 4)
  {
    v16 = 4;
  }

  if (v19 > 165888000.0)
  {
    v20 = llround(v19 * 4.0 / 165888000.0);
    if (v16 <= v20)
    {
      v16 = v20;
    }
  }

  *(a3 + 96) = v16;
  if (!v17)
  {
    goto LABEL_32;
  }

LABEL_22:
  *(a3 + 108) = (v17 + v16) / 2;
  if (*(a1 + 92))
  {
LABEL_39:
    v23 = 250;
    goto LABEL_40;
  }

LABEL_37:
  if (*(a1 + 108) != 3)
  {
    goto LABEL_39;
  }

  v23 = 8;
LABEL_40:
  *(a3 + 104) = v23;
  *(a3 + 664) = 0;
  result = 0.0;
  *(a3 + 648) = 0u;
  *(a3 + 688) = 0x3FF0000000000000;
  *(a3 + 696) = 0u;
  return result;
}

uint64_t vp9_test_drop(uint64_t a1)
{
  v1 = *(a1 + 754540);
  if (v1)
  {
    v2 = a1 + 926748;
    v3 = *(a1 + 754544);
    if (*(a1 + 926748 + 4 * v3) == *(a1 + 926844))
    {
      result = 0;
      *(v2 + 4 * v3) = 0;
      return result;
    }

    v5 = *(a1 + 4 * v3 + 926700);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a1 + 190128);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(a1 + 754544);
  if (v6 >= 1 && *(a1 + 926848) == 2)
  {
    return 0;
  }

  v7 = a1 + 738648;
  v8 = *(a1 + 738648);
  if (v8 < 0 && *(a1 + 926848) != 2)
  {
    return 1;
  }

  if (v1 && (v9 = *(a1 + 926848), v9 != 1))
  {
    v10 = *(a1 + 754552);
    if (v10 > v6 && v9 == 2)
    {
      v11 = *(a1 + 754556);
      v12 = v10 - v6;
      v13 = (a1 + 4 * v6 + 926700);
      v14 = a1 + 13936 * (*(a1 + 754548) + v6 * v11) + 759128;
      v15 = 13936 * v11;
      while (*(v14 + 528) < 1 || *v14 > *(v14 + 104) * *v13 / 100)
      {
        ++v13;
        v14 += v15;
        if (!--v12)
        {
          goto LABEL_24;
        }
      }

      return 1;
    }
  }

  else if (v8 < 0 && *(a1 + 926848) == 2)
  {
    return 1;
  }

LABEL_24:
  v16 = *(a1 + 738752) * v5 / 100;
  if (v1 && *(a1 + 926848) == 2)
  {
    v17 = *(a1 + 754552);
    if (v17 > v6)
    {
      v18 = *(a1 + 754556);
      v19 = v17 - v6;
      v20 = (a1 + 4 * v6 + 926700);
      v21 = a1 + 13936 * (*(a1 + 754548) + v6 * v18) + 759128;
      v22 = 13936 * v18;
      while (*(v21 + 528) < 1 || *v21 > *(v21 + 104) * *v20 / 100)
      {
        ++v20;
        v21 += v22;
        if (!--v19)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_35;
    }
  }

  else if (v8 <= v16)
  {
    goto LABEL_35;
  }

LABEL_33:
  v23 = *(a1 + 738680);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v25 < 0 == v24)
  {
    *(a1 + 738680) = v25;
    goto LABEL_54;
  }

LABEL_35:
  if (v1)
  {
    v26 = *(a1 + 926848);
    if (v26 != 1)
    {
      v27 = *(a1 + 754552);
      if (v27 <= v6)
      {
LABEL_51:
        if (v26 == 2)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v28 = *(a1 + 754556);
        v29 = v27 - v6;
        v30 = (a1 + 4 * v6 + 926700);
        v31 = a1 + 13936 * (*(a1 + 754548) + v6 * v28) + 759128;
        if (v26 != 2)
        {
          v33 = 13936 * v28;
          while (*(v31 + 528) < 1 || *v31 <= *(v31 + 104) * *v30 / 100)
          {
            ++v30;
            v31 += v33;
            if (!--v29)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_54;
        }

        v32 = 13936 * v28;
        while (*(v31 + 528) < 1 || *v31 > *(v31 + 104) * *v30 / 100)
        {
          ++v30;
          v31 += v32;
          if (!--v29)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_52:
      if (!*(a1 + 738680))
      {
        *(a1 + 738680) = 1;
      }

      goto LABEL_54;
    }
  }

  if (v8 <= v16)
  {
    goto LABEL_52;
  }

LABEL_54:
  v34 = *(a1 + 738680);
  if (v34 < 1)
  {
    result = 0;
    *(v7 + 36) = 0;
  }

  else
  {
    v35 = *(a1 + 738684);
    v24 = __OFSUB__(v35, 1);
    v36 = v35 - 1;
    if (v36 < 0 != v24)
    {
      result = 0;
      *(v7 + 36) = v34;
    }

    else
    {
      *(a1 + 738684) = v36;
      return 1;
    }
  }

  return result;
}

uint64_t post_encode_drop_cbr(uint64_t a1, void *a2)
{
  v2 = a1 + 738476;
  v3 = *(a1 + 738648);
  v4 = *(a1 + 738600);
  if (v3 + v4 >= 8 * *a2)
  {
    result = 0;
    *(v2 + 628) = 0;
  }

  else
  {
    v6 = (a1 + 942089);
    v7 = (a1 + 926596);
    v8 = a1 + 754540;
    *a2 = 0;
    ++*(a1 + 189844);
    *(a1 + 738572) = vadd_s32(*(a1 + 738572), 0x1FFFFFFFFLL);
    *(a1 + 738772) = 0;
    *(a1 + 738768) = 0;
    *(a1 + 738784) = v4;
    *v2 = *(a1 + 173028);
    v9 = *(a1 + 754540);
    if (v9)
    {
      if (*(a1 + 926848) != 1)
      {
        v10 = *(a1 + 738752);
        if (v3 > v10)
        {
          *(a1 + 738648) = v10;
          *(a1 + 738656) = v10;
        }
      }
    }

    *(a1 + 942524) = *(a1 + 190072);
    if (*(a1 + 739064) || v9 && *(a1 + 926856))
    {
      *(a1 + 739108) = 1;
    }

    result = 1;
    *(v2 + 628) = 1;
    *(v2 + 152) = *(v2 + 260);
    *v6 = 1;
    *(a1 + 194568) = 0;
    if (v9)
    {
      *(a1 + 4 * *(v8 + 4) + 926604) = 1;
      *(a1 + 4 * *(v8 + 4) + 926652) = 1;
      v12 = a1 + 4 * *(v8 + 4);
      ++*(v12 + 926748);
      *v7 = 1;
      v13 = *(v8 + 12);
      if (v13 >= 1)
      {
        v14 = *(v8 + 16);
        if (v14 >= 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = (a1 + 759108);
          v18 = *(v2 + 260);
          v19 = a1 + 759108;
          while (1)
          {
            if (v14 == 1)
            {
              v20 = 0;
            }

            else
            {
              v21 = v17;
              v22 = v14 & 0x7FFFFFFE;
              do
              {
                v21[119] = 1;
                v21[3603] = 1;
                *v21 = v18;
                v21[3484] = v18;
                v21 += 6968;
                v22 -= 2;
              }

              while (v22);
              v20 = v14 & 0x7FFFFFFE;
              if (v20 == v14)
              {
                goto LABEL_12;
              }
            }

            v23 = v14 - v20;
            v24 = (v19 + 13936 * (v20 + v15));
            do
            {
              v24[119] = 1;
              *v24 = v18;
              v24 += 3484;
              --v23;
            }

            while (v23);
LABEL_12:
            ++v16;
            v17 += 3484 * v14;
            v15 += v14;
            if (v16 == v13)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t vp9_rc_drop_frame(uint64_t a1)
{
  v1 = (a1 + 926392);
  v2 = (a1 + 754540);
  v3 = *(a1 + 754540);
  v4 = *(a1 + 754544);
  if (v3)
  {
    v5 = v4 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || !*(a1 + 4 * (*(a1 + 754544) - 1) + 926652) || (*(a1 + 926848) | 2) == 3)
  {
    if (!*(a1 + 4 * v4 + 926796))
    {
      v6 = a1;
      result = vp9_test_drop(a1);
      if (!result)
      {
        return result;
      }

      v3 = *v2;
      a1 = v6;
    }
  }

  else
  {
    v3 = 1;
  }

  v8 = (a1 + 942089);
  ++*(a1 + 189844);
  *(a1 + 738572) = vadd_s32(*(a1 + 738572), 0x1FFFFFFFFLL);
  *(a1 + 738772) = 0;
  *(a1 + 738768) = 0;
  *(a1 + 738784) = *(a1 + 738600);
  *(a1 + 738476) = *(a1 + 173028);
  if (v3)
  {
    if (v1[114] != 1)
    {
      v9 = *(a1 + 738752);
      if (*(a1 + 738648) > v9)
      {
        *(a1 + 738648) = v9;
        *(a1 + 738656) = v9;
      }
    }

    *(a1 + 942524) = *(a1 + 190072);
    *(a1 + 194568) = 0;
    *(a1 + 4 * v2[1] + 926604) = 1;
    v10 = v1 + 65;
    v1[v2[1] + 65] = 1;
    *v8 = 1;
    v11 = a1 + 4 * v2[1];
    ++*(v11 + 926748);
    v1[51] = 1;
    v12 = v1[114];
    if (v12 == 1 || v12 == 3 && !*(a1 + 4 * v2[3] + 926792) || !*v10)
    {
      LODWORD(v13) = v2[1];
      v15 = v2[3];
      v16 = a1 + 13936 * v2[4] * v13 + 758936;
      *(v16 + 13816) = *(a1 + 13936 * v2[4] * v13 + 772752) + 1;
      ++*(v16 + 13824);
      v14 = v15 - 1;
      if (v13 == v15 - 1)
      {
        ++*v1;
      }
    }

    else
    {
      LODWORD(v13) = v2[1];
      v14 = v2[3] - 1;
    }

    if (v13 != v14)
    {
      return 1;
    }

    if (v13 >= 1)
    {
      v13 = v13;
      do
      {
        if (!*v10++)
        {
          return 1;
        }
      }

      while (--v13);
    }

    v1[51] = 0;
    return 1;
  }

  else
  {
    *(a1 + 942524) = *(a1 + 190072);
    *(a1 + 194568) = 0;
    result = 1;
    *v8 = 1;
  }

  return result;
}

uint64_t vp9_rc_regulate_q(uint64_t a1, int a2, int a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v10 = a1 + 738504;
  v11 = (a1 + 194560);
  v12 = (a1 + 189856);
  v13 = a1 + 172972;
  v14 = *(a1 + 172972);
  if (v14 && !*(a1 + 172988))
  {
    if (*(a1 + 190076) == 2)
    {
      v15 = (a1 + 8 * *(a1 + 4 * *(a1 + 742156) + 742160) + 738504);
    }

    else if (!*(a1 + 194564) && !*v11 || *(a1 + 738596) || *(a1 + 754540) || *(a1 + 190092) == 1 && *(a1 + 190068) < 0x65u)
    {
      v15 = (a1 + 738504);
    }

    else
    {
      v15 = (a1 + 738528);
    }
  }

  else
  {
    v15 = (a1 + 738536);
  }

  v16 = *v15 * rate_thresh_mult[*(a1 + 738788)];
  v17 = 50.0;
  if (v16 <= 50.0)
  {
    v17 = *v15 * rate_thresh_mult[*(a1 + 738788)];
  }

  v18 = 0.005;
  if (v16 >= 0.005)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0.005;
  }

  v20 = (a2 << 9) / *(a1 + 173000);
  if (a4 <= a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = a4;
  }

  if (*(a1 + 190148) == 3)
  {
    v54 = a1 + 738504;
    v55 = (a1 + 194560);
    v53 = a4;
    v22 = 0x7FFFFFFF;
    v23 = *(a1 + 740272);
    do
    {
      if (!*(v23 + 120) || v12[53] && *v55)
      {
        break;
      }

      refreshed = vp9_cyclic_refresh_rc_bits_per_mb(a1, a3, v19, v17, v18, a8);
      v32 = refreshed - v20;
      if (refreshed <= v20)
      {
LABEL_40:
        v10 = v54;
        v11 = v55;
        goto LABEL_41;
      }

LABEL_36:
      if (v21 == a3)
      {
        v10 = v54;
        v11 = v55;
        a4 = v53;
        goto LABEL_84;
      }

      ++a3;
      v22 = v32;
    }

    while (v12[73] == 3);
    v24 = 2700000;
    if (!*(v13 + 16))
    {
      if (*v13)
      {
        v24 = 1800000;
      }

      else
      {
        v24 = 2700000;
      }
    }

    v25 = *v12;
    v26 = 0.015625;
    v27 = 0.0625;
    if (*v12 == 10)
    {
      v26 = 0.0625;
    }

    if (v25 == 8)
    {
      v26 = 0.25;
      v28 = ac_qlookup_0;
    }

    else if (v25 == 12)
    {
      v28 = ac_qlookup_12;
    }

    else
    {
      v27 = -1.0;
      if (v25 != 10)
      {
        goto LABEL_35;
      }

      v28 = ac_qlookup_10;
    }

    if (a3 >= 0xFF)
    {
      v29 = 255;
    }

    else
    {
      v29 = a3;
    }

    if (a3 < 0)
    {
      v29 = 0;
    }

    LOWORD(v27) = v28[v29];
    v27 = vmovl_s16(*&v27).i32[0];
LABEL_35:
    v30 = v26 * v27;
    v17 = v19 * (v24 + ((v30 * v24) >> 12));
    refreshed = (v17 / v30);
    v32 = refreshed - v20;
    if (refreshed <= v20)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  v33 = *v12;
  v34 = 0.015625;
  if (*v12 == 10)
  {
    v34 = 0.0625;
  }

  if (v33 == 8)
  {
    v34 = 0.25;
  }

  if (*(a1 + 172988))
  {
    v22 = 0x7FFFFFFF;
    while (1)
    {
      if (v33 == 8)
      {
        v35 = ac_qlookup_0;
        goto LABEL_54;
      }

      if (v33 == 10)
      {
        break;
      }

      v18 = -1.0;
      if (v33 == 12)
      {
        v35 = ac_qlookup_12;
LABEL_54:
        if (a3 >= 0xFF)
        {
          v36 = 255;
        }

        else
        {
          v36 = a3;
        }

        if (a3 < 0)
        {
          v36 = 0;
        }

        LOWORD(v18) = v35[v36];
        v18 = vmovl_s16(*&v18).i32[0];
      }

      v18 = v19 * (((v34 * v18 * 2700000.0) >> 12) + 2700000) / (v34 * v18);
      refreshed = v18;
      if (v18 <= v20)
      {
        goto LABEL_41;
      }

      ++a3;
      v22 = refreshed - v20;
      if (v21 + 1 == a3)
      {
        goto LABEL_84;
      }
    }

    v35 = ac_qlookup_10;
    goto LABEL_54;
  }

  if (v14)
  {
    v37 = 1800000;
  }

  else
  {
    v37 = 2700000;
  }

  v22 = 0x7FFFFFFF;
  do
  {
    if (v33 == 8)
    {
      v38 = ac_qlookup_0;
    }

    else if (v33 == 10)
    {
      v38 = ac_qlookup_10;
    }

    else
    {
      v18 = -1.0;
      if (v33 != 12)
      {
        goto LABEL_82;
      }

      v38 = ac_qlookup_12;
    }

    if (a3 >= 0xFF)
    {
      v39 = 255;
    }

    else
    {
      v39 = a3;
    }

    if (a3 < 0)
    {
      v39 = 0;
    }

    LOWORD(v18) = v38[v39];
    v18 = vmovl_s16(*&v18).i32[0];
LABEL_82:
    v18 = v19 * (v37 + ((v34 * v18 * v37) >> 12)) / (v34 * v18);
    refreshed = v18;
    if (v18 <= v20)
    {
LABEL_41:
      a4 = a3 - (v20 - refreshed > v22);
      break;
    }

    ++a3;
    v22 = refreshed - v20;
  }

  while (v21 + 1 != a3);
LABEL_84:
  if (v12[59] != 1)
  {
    return a4;
  }

  if (!*(v10 + 588) && (!v12[53] || !v11[1] && !*v11))
  {
    v46 = *(v10 + 264);
    if (*(v10 + 268) * v46 == -1)
    {
      v47 = *(v10 + 272);
      v48 = *(v10 + 276);
      if (v47 >= v48)
      {
        v49 = *(v10 + 276);
      }

      else
      {
        v49 = *(v10 + 272);
      }

      if (v47 <= v48)
      {
        v50 = *(v10 + 276);
      }

      else
      {
        v50 = *(v10 + 272);
      }

      if (a4 < v50)
      {
        v50 = a4;
      }

      if (v49 <= a4)
      {
        v49 = v50;
      }

      v51 = v49 < a4 && v46 == -1;
      v52 = (v49 + a4) >> 1;
      if (!v51)
      {
        v52 = v49;
      }

      if (v47 != v48)
      {
        LODWORD(a4) = v52;
      }
    }
  }

  if (v12[131] == 1 && v12[73] == 3 && **(v10 + 1768) >= 1)
  {
    v40 = *(v10 + 272);
    v41 = v40 - a4;
    v42 = v40 - 8;
    if (v41 > 8)
    {
      LODWORD(a4) = v42;
    }
  }

  v43 = *(v10 + 232);
  v44 = *(v10 + 236);
  if (a4 < v43)
  {
    v43 = a4;
  }

  if (v43 <= v44)
  {
    return v44;
  }

  else
  {
    return v43;
  }
}

uint64_t vp9_rc_pick_q_and_bounds_two_pass(uint64_t a1, _DWORD *a2, _DWORD *a3, int a4, double a5, double a6, double a7, double a8)
{
  v9 = (a1 + 738460);
  v10 = a1 + 172972;
  v11 = *(a1 + 190092);
  v12 = *(a1 + 190144);
  v13 = *(a1 + 190144);
  if (v11 == 2)
  {
    a6 = *(a1 + 742040);
    a5 = 0.1;
    v13 = *(a1 + 190144);
    if (a6 > 0.1)
    {
      a7 = 0.05;
      a6 = (a6 + -0.1) / 0.05;
      v13 = (v12 - a6) & ~((v12 - a6) >> 31);
    }

    v14 = *(a1 + 738720);
    if (v14 >= 1)
    {
      a7 = v14;
      a6 = *(a1 + 738712) / v14;
      if (a6 < 0.1)
      {
        a7 = v13;
        a6 = a6 * v13;
        a5 = a6 / 0.1;
        v13 = (a6 / 0.1);
      }
    }
  }

  v15 = 0;
  v16 = *(a1 + 742108);
  v91 = v16;
  v92 = 0;
  v17 = *(a1 + 738596);
  if (!v17)
  {
    if (*(a1 + 194560))
    {
      v15 = 1;
    }

    else
    {
      v15 = *(a1 + 194564) != 0;
    }
  }

  v18 = *(a1 + 189856);
  v19 = &inter_minq_12;
  if (v18 == 10)
  {
    v19 = &inter_minq_10;
  }

  if (v18 == 8)
  {
    v19 = &inter_minq_8;
  }

  v20 = *v10;
  if (v11 == 3)
  {
    if (v20)
    {
      v21 = *(a1 + 172988);
      v93 = v12;
      v94 = v12;
      if (!v21)
      {
        if (v17 || !*(a1 + 194564))
        {
          v22 = v12;
        }

        else
        {
          if (*(a1 + 942144))
          {
            v56 = (a1 + 4 * *(a1 + 742156) + 745940);
          }

          else
          {
            v56 = (a1 + 738488);
          }

          v66 = &arfgf_low_motion_minq_12;
          v67 = *v56;
          if (v18 == 10)
          {
            v66 = &arfgf_low_motion_minq_10;
          }

          v68 = &arfgf_high_motion_minq_12;
          if (v18 == 10)
          {
            v68 = &arfgf_high_motion_minq_10;
          }

          if (v18 == 8)
          {
            v66 = &arfgf_low_motion_minq_8;
            v68 = &arfgf_high_motion_minq_8;
          }

          if (v67 < 2001)
          {
            if (v67 > 399)
            {
              v69 = v66[v12];
              v70 = 1374389535 * ((v68[v12] - v69) * (2000 - v67) + 800);
              v22 = (v70 >> 41) + (v70 >> 63) + v69;
            }

            else
            {
              v22 = v68[v12];
            }
          }

          else
          {
            v22 = v66[v12];
          }

          if (*(a1 + 4 * a4 + 742160) == 2)
          {
            v71 = *(a1 + a4 + 744428);
            v22 = ((v22 + (v71 >> 1) + (v71 - 1) * v12) / v71);
          }
        }

LABEL_38:
        *a3 = v12;
        *a2 = v22;
        return v22;
      }
    }

    else
    {
      v93 = v12;
      v94 = v12;
    }

    v22 = v12;
    if (*(a1 + 738572) >= 2)
    {
      v36 = a2;
      v37 = a3;
      pick_kf_q_bound_two_pass(a1, &v94, &v93, a5, a6, a7, a8);
      a3 = v37;
      a2 = v36;
      LODWORD(v12) = v93;
      v22 = v94;
    }

    goto LABEL_38;
  }

  v90 = (a1 + 194560);
  v23 = a3;
  v24 = a2;
  v25 = a1 + 4 * a4;
  if (!v20 || *(a1 + 172988))
  {
    v26 = a1;
    pick_kf_q_bound_two_pass(a1, &v92, &v91, a5, a6, a7, a8);
    a1 = v26;
    v16 = v91;
    v29 = v92;
    goto LABEL_23;
  }

  if (!v15)
  {
    v40 = v19[v16];
    if (v40 > v13)
    {
      v13 = v40;
    }

    if (v11 == 2)
    {
      v41 = v13;
    }

    else
    {
      v41 = v40;
    }

    v42 = v41 - (*(a1 + 742124) + *(a1 + 742116)) / 2;
    v30 = *(a1 + 4 * *(a1 + 748176) + 742128);
    v31 = *(a1 + 742120) + v16;
    if (v42 > v30)
    {
      v30 = v42;
    }

    v32 = *(v25 + 742160);
    v33 = a2;
    goto LABEL_57;
  }

  if (*(a1 + 738576) < 2 || (v38 = *(a1 + 738628), v38 >= v16))
  {
    v38 = v16;
  }

  if (v38 > v13)
  {
    v13 = v38;
  }

  if (v11 == 2)
  {
    v38 = v13;
  }

  if (*(a1 + 942144))
  {
    v39 = (a1 + 4 * *(a1 + 742156) + 745940);
  }

  else
  {
    v39 = (a1 + 738488);
  }

  v57 = *v39;
  v58 = &arfgf_low_motion_minq_10;
  if (v18 != 10)
  {
    v58 = &arfgf_low_motion_minq_12;
  }

  v59 = &arfgf_high_motion_minq_12;
  if (v18 == 10)
  {
    v59 = &arfgf_high_motion_minq_10;
  }

  if (v18 == 8)
  {
    v58 = &arfgf_low_motion_minq_8;
    v59 = &arfgf_high_motion_minq_8;
  }

  if (v57 < 2001)
  {
    if (v57 > 399)
    {
      v61 = v58[v38];
      v62 = 1374389535 * ((v59[v38] - v61) * (2000 - v57) + 800);
      v60 = (v62 >> 41) + (v62 >> 63) + v61;
    }

    else
    {
      v60 = v59[v38];
    }
  }

  else
  {
    v60 = v58[v38];
  }

  v63 = *(a1 + 739152);
  if (v63 != 1)
  {
    v64 = v60;
    if (v63 != -1)
    {
      goto LABEL_136;
    }

    v59 = v58;
  }

  v64 = v59[v38];
LABEL_136:
  v28 = *(a1 + 739144);
  a8 = 1.0 - v28;
  a7 = (1.0 - v28) * v64;
  v27 = a7 + v60 * v28;
  v29 = v27;
  if (*(v25 + 742160) == 2)
  {
    v65 = *(a1 + a4 + 744428);
    v29 = (v29 + (v65 >> 1) + (v65 - 1) * v38) / v65;
  }

LABEL_23:
  v30 = v29 - (v9[914] + v9[916]);
  v31 = v16 + v9[915] / 2;
  v32 = *(v25 + 742160);
  if (v32 == 2 && v30 <= *(a1 + 4 * *(a1 + a4 + 744428) + 742128))
  {
    v30 = *(a1 + 4 * *(a1 + a4 + 744428) + 742128);
  }

  v33 = v24;
  if ((!v20 || *(v10 + 16)) && v9[30] && v9[911] > 94)
  {
    v34 = v9[82];
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v20;
    }

    if (v34)
    {
      goto LABEL_105;
    }

    goto LABEL_181;
  }

LABEL_57:
  v43 = v9[69];
  v27 = 0.015625;
  if (v18 == 10)
  {
    v27 = 0.0625;
  }

  v28 = 0.25;
  if (v18 == 8)
  {
    v27 = 0.25;
    v44 = ac_qlookup_0;
LABEL_65:
    if (v31 >= 0xFF)
    {
      v45 = 255;
    }

    else
    {
      v45 = v31;
    }

    if (v31 >= 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    LOWORD(v28) = v44[v46];
    v28 = vmovl_s16(*&v28).i32[0];
    goto LABEL_72;
  }

  if (v18 == 12)
  {
    v44 = ac_qlookup_12;
    goto LABEL_65;
  }

  v28 = -1.0;
  if (v18 == 10)
  {
    v44 = ac_qlookup_10;
    goto LABEL_65;
  }

LABEL_72:
  if (v20)
  {
    v47 = 1800000;
  }

  else
  {
    v47 = 2700000;
  }

  v31 = v9[70];
  if (v31 >= v43)
  {
LABEL_91:
    if (v43 <= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v9[69];
    }

    v53 = v9[82];
    if (v53)
    {
      v35 = 0;
    }

    else
    {
      v35 = v20;
    }

    if (v53)
    {
      goto LABEL_105;
    }

    goto LABEL_181;
  }

  v48 = v27 * v28;
  v28 = v47;
  a7 = vp9_frame_type_qdelta_rate_factor_deltas[v32] * ((v47 + ((v48 * v47) >> 12)) / v48);
  v49 = a7;
  while (1)
  {
    if (v18 == 8)
    {
      v50 = ac_qlookup_0;
    }

    else if (v18 == 12)
    {
      v50 = ac_qlookup_12;
    }

    else
    {
      a7 = -1.0;
      if (v18 != 10)
      {
        goto LABEL_89;
      }

      v50 = ac_qlookup_10;
    }

    if (v31 >= 0xFF)
    {
      v51 = 255;
    }

    else
    {
      v51 = v31;
    }

    if (v31 < 0)
    {
      v51 = 0;
    }

    LOWORD(a7) = v50[v51];
    a7 = vmovl_s16(*&a7).i32[0];
LABEL_89:
    v52 = v27 * a7;
    a8 = (v47 + ((v52 * v28) >> 12));
    a7 = a8 / v52;
    if (a7 <= v49)
    {
      break;
    }

    if (v43 == ++v31)
    {
      goto LABEL_91;
    }
  }

  if (v31 <= v30)
  {
    v31 = v30;
  }

  v54 = v9[82];
  if (v54)
  {
    v35 = 0;
  }

  else
  {
    v35 = v20;
  }

  if (v54)
  {
LABEL_105:
    if (v20)
    {
      if (!*(v10 + 16) && !v90[1] && (v17 || !*v90))
      {
        v55 = v9[69];
        v27 = 0.015625;
        if (v18 == 10)
        {
          v27 = 0.0625;
        }

        v28 = 0.25;
        if (v18 == 8)
        {
          v27 = 0.25;
          v72 = ac_qlookup_0;
          goto LABEL_153;
        }

        if (v18 == 12)
        {
          v72 = ac_qlookup_12;
LABEL_153:
          if (v30 >= 0xFF)
          {
            v73 = 255;
          }

          else
          {
            v73 = v30;
          }

          if (v30 >= 0)
          {
            v74 = v73;
          }

          else
          {
            v74 = 0;
          }

          LOWORD(v28) = v72[v74];
          v28 = vmovl_s16(*&v28).i32[0];
        }

        else
        {
          v28 = -1.0;
          if (v18 == 10)
          {
            v72 = ac_qlookup_10;
            goto LABEL_153;
          }
        }

        v30 = v9[70];
        if (v30 < v55)
        {
          v75 = v27 * v28;
          a7 = (((v75 * 1800000.0) >> 12) + 1800000);
          v76 = 2 * (a7 / v75);
          v28 = 1800000.0;
          for (i = v9[70]; v55 != i; ++i)
          {
            if (v18 == 8)
            {
              v78 = ac_qlookup_0;
            }

            else if (v18 == 12)
            {
              v78 = ac_qlookup_12;
            }

            else
            {
              a7 = -1.0;
              if (v18 != 10)
              {
                goto LABEL_174;
              }

              v78 = ac_qlookup_10;
            }

            if (i >= 0xFF)
            {
              v79 = 255;
            }

            else
            {
              v79 = i;
            }

            if (i < 0)
            {
              v79 = 0;
            }

            LOWORD(a7) = v78[v79];
            a7 = vmovl_s16(*&a7).i32[0];
LABEL_174:
            v80 = v27 * a7;
            a8 = (((v80 * 1800000.0) >> 12) + 1800000);
            a7 = a8 / v80;
            if (v76 >= a7)
            {
              v55 = i;
              break;
            }
          }
        }

        if (v55 > v30)
        {
          v30 = v55;
        }
      }

      v35 = 1;
    }
  }

LABEL_181:
  v81 = v9[70];
  v82 = v9[69];
  if (v30 >= v82)
  {
    v83 = v9[69];
  }

  else
  {
    v83 = v30;
  }

  if (v30 >= v81)
  {
    v84 = v83;
  }

  else
  {
    v84 = v81;
  }

  if (v31 >= v82)
  {
    v85 = v9[69];
  }

  else
  {
    v85 = v31;
  }

  if (v31 >= v84)
  {
    v86 = v85;
  }

  else
  {
    v86 = v84;
  }

  if (v35 && !*(v10 + 16))
  {
    v88 = vp9_rc_regulate_q(a1, *v9, v84, v86, v27, v28, a7, a8);
    v22 = v88;
    if (v88 > v86)
    {
      if (*v9 >= v9[37])
      {
        v86 = v88;
      }

      else
      {
        v86 = v86;
      }

      v22 = v86;
    }
  }

  else if (v9[30])
  {
    if (v9[911] < 95)
    {
      v22 = v9[5];
    }

    else
    {
      v87 = v9[5];
      LODWORD(v22) = v9[6];
      if (v22 >= v87)
      {
        v22 = v87;
      }

      else
      {
        v22 = v22;
      }
    }
  }

  else
  {
    v22 = v84;
  }

  *v23 = v86;
  *v33 = v84;
  return v22;
}

_DWORD *pick_kf_q_bound_two_pass(_DWORD *result, int *a2, int *a3, double a4, double a5, double a6, double a7)
{
  v7 = result + 184620;
  v8 = result[185527];
  if (!result[184645])
  {
    v13 = result[47464];
    v14 = result[184624];
    v15 = &kf_low_motion_minq_12;
    if (v13 == 10)
    {
      v15 = &kf_low_motion_minq_10;
    }

    v16 = &kf_high_motion_minq_12;
    if (v13 == 10)
    {
      v16 = &kf_high_motion_minq_10;
    }

    if (v13 == 8)
    {
      v15 = &kf_low_motion_minq_8;
    }

    v17 = &kf_high_motion_minq_8;
    if (v13 != 8)
    {
      v17 = v16;
    }

    if (v14 < 4801)
    {
      if (v14 > 299)
      {
        v23 = v15[v8];
        v24 = 1954687339 * ((v17[v8] - v23) * (4800 - v14) + 2250);
        v18 = (v24 >> 43) + (v24 >> 63) + v23;
      }

      else
      {
        v18 = v17[v8];
      }
    }

    else
    {
      v18 = v15[v8];
    }

    v25 = result[185525];
    if (v25 > 98)
    {
      v18 /= 4;
    }

    if (v18 <= 1)
    {
      v18 = 1;
    }

    if (v8 < v18)
    {
      v18 = result[185527];
    }

    v26 = 0.75;
    if (result[42998] * result[42997] >= 101377)
    {
      v26 = 1.0;
    }

    v27 = 0.015625;
    if (v13 == 10)
    {
      v27 = 0.0625;
    }

    v28 = 0.25;
    if (v13 == 8)
    {
      v27 = 0.25;
      v29 = &ac_qlookup_0;
    }

    else if (v13 == 12)
    {
      v29 = &ac_qlookup_12;
    }

    else
    {
      v28 = -1.0;
      if (v13 != 10)
      {
LABEL_54:
        v31 = result[184684];
        v32 = result[184685];
        v33 = v31;
        if (v32 >= v31)
        {
LABEL_90:
          *a3 = v8;
          *a2 = v18 - v33 + v31;
          return result;
        }

        v34 = v25 * -0.001 + 0.05;
        v35 = v27 * v28;
        v36 = (v34 + v26) * v35;
        v37 = result[184685];
        while (1)
        {
          if (v13 == 8)
          {
            result = &ac_qlookup_0;
            goto LABEL_57;
          }

          if (v13 == 12)
          {
            break;
          }

          v34 = -1.0;
          if (v13 == 10)
          {
            result = &ac_qlookup_10;
            goto LABEL_57;
          }

LABEL_63:
          v34 = v27 * v34;
          ++v37;
          if (v34 >= v35 || v37 >= v31)
          {
            v33 = v37 - 1;
            while (1)
            {
              if (v13 == 8)
              {
                result = &ac_qlookup_0;
                goto LABEL_74;
              }

              if (v13 == 12)
              {
                break;
              }

              v35 = -1.0;
              if (v13 == 10)
              {
                result = &ac_qlookup_10;
                goto LABEL_74;
              }

LABEL_80:
              v35 = v27 * v35;
              ++v32;
              if (v35 >= v36 || v32 >= v31)
              {
                v31 = v32 - 1;
                goto LABEL_90;
              }
            }

            result = &ac_qlookup_12;
LABEL_74:
            if (v32 >= 0xFF)
            {
              v40 = 255;
            }

            else
            {
              v40 = v32;
            }

            if (v32 < 0)
            {
              v40 = 0;
            }

            LOWORD(v35) = *(result + v40);
            v35 = vmovl_s16(*&v35).i32[0];
            goto LABEL_80;
          }
        }

        result = &ac_qlookup_12;
LABEL_57:
        if (v37 >= 0xFF)
        {
          v38 = 255;
        }

        else
        {
          v38 = v37;
        }

        if (v37 < 0)
        {
          v38 = 0;
        }

        LOWORD(v34) = *(result + v38);
        v34 = vmovl_s16(*&v34).i32[0];
        goto LABEL_63;
      }

      v29 = &ac_qlookup_10;
    }

    if (v18 >= 0xFF)
    {
      v30 = 255;
    }

    else
    {
      v30 = v18;
    }

    if (v8 < 0)
    {
      v30 = 0;
    }

    LOWORD(v28) = v29[v30];
    v28 = vmovl_s16(*&v28).i32[0];
    goto LABEL_54;
  }

  if (result[185526] < 95)
  {
    v19 = *v7;
    v20 = result[47464];
    v21 = 0.015625;
    if (v20 == 10)
    {
      v21 = 0.0625;
    }

    v22 = 0.25;
    if (v20 == 8)
    {
      v21 = 0.25;
      v54 = &ac_qlookup_0;
    }

    else if (v20 == 12)
    {
      v54 = &ac_qlookup_12;
    }

    else
    {
      v22 = -1.0;
      if (v20 != 10)
      {
LABEL_144:
        v56 = result[184684];
        v57 = result[184685];
        v58 = v56;
        if (v57 >= v56)
        {
LABEL_180:
          v69 = v19 - v58 + v56;
          if (v69 <= v57)
          {
            v69 = v57;
          }

          *a3 = v8;
          *a2 = v69;
          return result;
        }

        v59 = v21 * v22;
        v60 = v21 * v22 * 0.75;
        v61 = result[184685];
        while (1)
        {
          if (v20 == 8)
          {
            v62 = &ac_qlookup_0;
            goto LABEL_147;
          }

          if (v20 == 12)
          {
            break;
          }

          a7 = -1.0;
          if (v20 == 10)
          {
            v62 = &ac_qlookup_10;
            goto LABEL_147;
          }

LABEL_153:
          a7 = v21 * a7;
          ++v61;
          if (a7 >= v59 || v61 >= v56)
          {
            v58 = v61 - 1;
            v65 = v57;
            result = &ac_qlookup_10;
            while (1)
            {
              if (v20 == 8)
              {
                v66 = &ac_qlookup_0;
                goto LABEL_164;
              }

              if (v20 == 12)
              {
                break;
              }

              v59 = -1.0;
              if (v20 == 10)
              {
                v66 = &ac_qlookup_10;
                goto LABEL_164;
              }

LABEL_170:
              v59 = v21 * v59;
              ++v65;
              if (v59 >= v60 || v65 >= v56)
              {
                v56 = v65 - 1;
                goto LABEL_180;
              }
            }

            v66 = &ac_qlookup_12;
LABEL_164:
            if (v65 >= 0xFF)
            {
              v67 = 255;
            }

            else
            {
              v67 = v65;
            }

            if (v65 < 0)
            {
              v67 = 0;
            }

            LOWORD(v59) = v66[v67];
            v59 = vmovl_s16(*&v59).i32[0];
            goto LABEL_170;
          }
        }

        v62 = &ac_qlookup_12;
LABEL_147:
        if (v61 >= 0xFF)
        {
          v63 = 255;
        }

        else
        {
          v63 = v61;
        }

        if (v61 < 0)
        {
          v63 = 0;
        }

        LOWORD(a7) = v62[v63];
        a7 = vmovl_s16(*&a7).i32[0];
        goto LABEL_153;
      }

      v54 = &ac_qlookup_10;
    }

    if (v19 >= 0xFF)
    {
      v55 = 255;
    }

    else
    {
      v55 = *v7;
    }

    if (v19 < 0)
    {
      v55 = 0;
    }

    LOWORD(v22) = v54[v55];
    v22 = vmovl_s16(*&v22).i32[0];
    goto LABEL_144;
  }

  v9 = result[184621];
  if (v9 >= *v7)
  {
    v9 = *v7;
  }

  v10 = result[47464];
  v11 = 0.015625;
  if (v10 == 10)
  {
    v11 = 0.0625;
  }

  v12 = 0.25;
  if (v10 == 8)
  {
    v11 = 0.25;
    v42 = &ac_qlookup_0;
LABEL_93:
    if (v9 >= 0xFF)
    {
      v43 = 255;
    }

    else
    {
      v43 = v9;
    }

    if (v9 < 0)
    {
      v43 = 0;
    }

    LOWORD(v12) = v42[v43];
    v12 = vmovl_s16(*&v12).i32[0];
    goto LABEL_99;
  }

  if (v10 == 12)
  {
    v42 = &ac_qlookup_12;
    goto LABEL_93;
  }

  v12 = -1.0;
  if (v10 == 10)
  {
    v42 = &ac_qlookup_10;
    goto LABEL_93;
  }

LABEL_99:
  v44 = result[184684];
  v45 = result[184685];
  v46 = v44;
  if (v45 >= v44)
  {
    goto LABEL_135;
  }

  v47 = v11 * v12;
  v48 = v11 * v12 * 1.25;
  v49 = result[184685];
  do
  {
    if (v10 == 8)
    {
      result = &ac_qlookup_0;
    }

    else if (v10 == 12)
    {
      result = &ac_qlookup_12;
    }

    else
    {
      a7 = -1.0;
      if (v10 != 10)
      {
        goto LABEL_108;
      }

      result = &ac_qlookup_10;
    }

    if (v49 >= 0xFF)
    {
      v50 = 255;
    }

    else
    {
      v50 = v49;
    }

    if (v49 < 0)
    {
      v50 = 0;
    }

    LOWORD(a7) = *(result + v50);
    a7 = vmovl_s16(*&a7).i32[0];
LABEL_108:
    a7 = v11 * a7;
    ++v49;
  }

  while (a7 < v47 && v49 < v44);
  v46 = v49 - 1;
  do
  {
    if (v10 == 8)
    {
      result = &ac_qlookup_0;
    }

    else if (v10 == 12)
    {
      result = &ac_qlookup_12;
    }

    else
    {
      v47 = -1.0;
      if (v10 != 10)
      {
        goto LABEL_125;
      }

      result = &ac_qlookup_10;
    }

    if (v45 >= 0xFF)
    {
      v52 = 255;
    }

    else
    {
      v52 = v45;
    }

    if (v45 < 0)
    {
      v52 = 0;
    }

    LOWORD(v47) = *(result + v52);
    v47 = vmovl_s16(*&v47).i32[0];
LABEL_125:
    v47 = v11 * v47;
    ++v45;
  }

  while (v47 < v48 && v45 < v44);
  v44 = v45 - 1;
LABEL_135:
  if (v9 - v46 + v44 < v8)
  {
    v8 = v9 - v46 + v44;
  }

  *a3 = v8;
  *a2 = v9;
  return result;
}

uint64_t vp9_rc_pick_q_and_bounds(uint64_t a1, int *a2, int *a3, double a4, double a5, double a6, double a7)
{
  v8 = a2;
  v9 = a1 + 738460;
  v10 = (a1 + 189844);
  if (*(a1 + 190076))
  {
    v11 = vp9_rc_pick_q_and_bounds_two_pass(a1, a2, a3, *(a1 + 742156), a4, a5, a6, a7);
    goto LABEL_3;
  }

  v14 = (a1 + 194560);
  v15 = a1 + 171988;
  v16 = *(a1 + 190092);
  if (v16 != 1)
  {
    v29 = *(a1 + 190144);
    if (v16 == 2)
    {
      v30 = *(a1 + 738720);
      if (v30 >= 1)
      {
        a4 = *(a1 + 738712) / v30;
        a5 = 0.1;
        if (a4 < 0.1)
        {
          a6 = v29;
          a4 = a4 * v29 / 0.1;
          v29 = a4;
        }
      }
    }

    v31 = *v10;
    v32 = *(a1 + 172972);
    if (v32)
    {
      if (!*(a1 + 738596) && !*(a1 + 754540) && (*v14 || *(a1 + 194564)))
      {
        if (v31 == 1)
        {
          v35 = *(a1 + 738472) + (*(a1 + 738472) >> 2);
LABEL_111:
          v56 = *(a1 + 738736);
          if (v35 >= v56)
          {
            v57 = *(a1 + 738736);
          }

          else
          {
            v57 = v35;
          }

          v58 = *(a1 + 189856);
          v59 = &inter_minq_12;
          if (v58 == 10)
          {
            v59 = &inter_minq_10;
          }

          if (v58 == 8)
          {
            v59 = &inter_minq_8;
          }

          if (!v32 || *(a1 + 172988))
          {
            if (v16 == 3)
            {
              a4 = 0.015625;
              if (v58 == 10)
              {
                a4 = 0.0625;
              }

              a5 = 0.25;
              if (v58 == 8)
              {
                a4 = 0.25;
                v67 = ac_qlookup_0;
              }

              else if (v58 == 12)
              {
                v67 = ac_qlookup_12;
              }

              else
              {
                a5 = -1.0;
                if (v58 != 10)
                {
LABEL_162:
                  v69 = *(a1 + 738740);
                  v70 = *(a1 + 738736);
                  v71 = v70;
                  if (v69 >= v56)
                  {
                    goto LABEL_198;
                  }

                  a6 = a4 * a5;
                  a5 = a4 * a5 * 0.25;
                  v72 = *(a1 + 738740);
                  while (1)
                  {
                    if (v58 == 8)
                    {
                      v73 = ac_qlookup_0;
                      goto LABEL_165;
                    }

                    if (v58 == 12)
                    {
                      break;
                    }

                    a7 = -1.0;
                    if (v58 == 10)
                    {
                      v73 = ac_qlookup_10;
                      goto LABEL_165;
                    }

LABEL_171:
                    a7 = a4 * a7;
                    ++v72;
                    if (a7 >= a6 || v72 >= v56)
                    {
                      v70 = v72 - 1;
                      v76 = *(a1 + 738740);
                      while (1)
                      {
                        if (v58 == 8)
                        {
                          v77 = ac_qlookup_0;
                          goto LABEL_182;
                        }

                        if (v58 == 12)
                        {
                          break;
                        }

                        a6 = -1.0;
                        if (v58 == 10)
                        {
                          v77 = ac_qlookup_10;
                          goto LABEL_182;
                        }

LABEL_188:
                        a6 = a4 * a6;
                        ++v76;
                        if (a6 >= a5 || v76 >= v56)
                        {
                          v71 = v76 - 1;
LABEL_198:
                          v80 = v29 - v70 + v71;
LABEL_199:
                          if (v80 > v69)
                          {
                            v69 = v80;
                          }

LABEL_398:
                          v137 = *(v9 + 280);
                          if (v69 >= v56)
                          {
                            v138 = v56;
                          }

                          else
                          {
                            v138 = v69;
                          }

                          if (v69 >= v137)
                          {
                            v12 = v138;
                          }

                          else
                          {
                            v12 = v137;
                          }

                          if (v57 <= v12)
                          {
                            v139 = v12;
                          }

                          else
                          {
                            v139 = v57;
                          }

                          *a3 = v139;
                          *v8 = v12;
                          v140 = *(v15 + 984);
                          if (!v140 && !*(v9 + 120) && *v10)
                          {
                            v144 = v10[3];
                            v143 = *(v9 + 276);
                            a4 = 0.015625;
                            if (v144 == 10)
                            {
                              a4 = 0.0625;
                            }

                            a5 = 0.25;
                            if (v144 == 8)
                            {
                              a4 = 0.25;
                              v159 = ac_qlookup_0;
                              goto LABEL_472;
                            }

                            if (v144 == 12)
                            {
                              v159 = ac_qlookup_12;
LABEL_472:
                              if (v139 >= 0xFF)
                              {
                                v160 = 255;
                              }

                              else
                              {
                                v160 = v139;
                              }

                              if (v139 < 0)
                              {
                                v160 = 0;
                              }

                              LOWORD(a5) = v159[v160];
                              a5 = vmovl_s16(*&a5).i32[0];
                            }

                            else
                            {
                              a5 = -1.0;
                              if (v144 == 10)
                              {
                                v159 = ac_qlookup_10;
                                goto LABEL_472;
                              }
                            }

                            v148 = *(v9 + 280);
                            if (v148 >= v143)
                            {
                              goto LABEL_496;
                            }

                            v161 = a4 * a5;
                            a6 = (((v161 * 2700000.0) >> 12) + 2700000);
                            v162 = 2 * (a6 / v161);
                            a5 = 2700000.0;
                            while (2)
                            {
                              if (v144 == 8)
                              {
                                v163 = ac_qlookup_0;
                              }

                              else
                              {
                                if (v144 != 12)
                                {
                                  a6 = -1.0;
                                  if (v144 == 10)
                                  {
                                    v163 = ac_qlookup_10;
                                    break;
                                  }

LABEL_492:
                                  v165 = a4 * a6;
                                  a7 = (((v165 * 2700000.0) >> 12) + 2700000);
                                  a6 = a7 / v165;
                                  if (v162 >= a6)
                                  {
                                    goto LABEL_495;
                                  }

                                  if (v143 == ++v148)
                                  {
                                    goto LABEL_496;
                                  }

                                  continue;
                                }

                                v163 = ac_qlookup_12;
                              }

                              break;
                            }

                            if (v148 >= 0xFF)
                            {
                              v164 = 255;
                            }

                            else
                            {
                              v164 = v148;
                            }

                            if (v148 < 0)
                            {
                              v164 = 0;
                            }

                            LOWORD(a6) = v163[v164];
                            a6 = vmovl_s16(*&a6).i32[0];
                            goto LABEL_492;
                          }

                          if (*(v9 + 136))
                          {
                            v141 = 0;
                            goto LABEL_497;
                          }

                          if (!*v14)
                          {
                            v141 = v14[1];
                            if (!v141)
                            {
LABEL_497:
                              if (*(v9 + 604) && *(v9 + 1680))
                              {
                                v141 = 0;
                              }

                              v166 = v141 + v139;
                              *a3 = v166;
                              if (v166 <= *v8)
                              {
                                v166 = *v8;
                              }

                              *a3 = v166;
                              if (v10[62] != 3)
                              {
                                if (!*(v15 + 984) && *(v9 + 120))
                                {
                                  goto LABEL_326;
                                }

                                v11 = vp9_rc_regulate_q(a1, *v9, v12, v139, a4, a5, a6, a7);
                                if (!v10[61] && (*(v9 + 716) * (*(v9 + 188) - *(v9 + 140) - *(v9 + 284)) / (*v10 + 1)) <= -11000 && *(v9 + 276) >= 33)
                                {
                                  v167 = *a3;
                                  if (v11 < 32 || v167 <= 31)
                                  {
                                    v11 = 32;
                                    if (v167 <= 32)
                                    {
                                      v167 = 32;
                                    }

                                    *a3 = v167;
                                  }
                                }

                                goto LABEL_512;
                              }

                              goto LABEL_4;
                            }
                          }

                          v142 = v10[3];
                          v143 = *(v9 + 276);
                          a4 = 0.015625;
                          if (v142 == 10)
                          {
                            a4 = 0.0625;
                          }

                          a5 = 0.25;
                          if (v142 == 8)
                          {
                            a4 = 0.25;
                            v145 = ac_qlookup_0;
                            goto LABEL_429;
                          }

                          if (v142 == 12)
                          {
                            v145 = ac_qlookup_12;
LABEL_429:
                            if (v139 >= 0xFF)
                            {
                              v146 = 255;
                            }

                            else
                            {
                              v146 = v139;
                            }

                            if (v139 < 0)
                            {
                              v146 = 0;
                            }

                            LOWORD(a5) = v145[v146];
                            a5 = vmovl_s16(*&a5).i32[0];
                          }

                          else
                          {
                            a5 = -1.0;
                            if (v142 == 10)
                            {
                              v145 = ac_qlookup_10;
                              goto LABEL_429;
                            }
                          }

                          if (v140)
                          {
                            v147 = 1800000;
                          }

                          else
                          {
                            v147 = 2700000;
                          }

                          v148 = *(v9 + 280);
                          if (v148 >= v143)
                          {
LABEL_496:
                            v141 = v143 - v139;
                            goto LABEL_497;
                          }

                          v149 = a4 * a5;
                          a5 = v147;
                          a6 = ((v147 + ((v149 * v147) >> 12)) / v149) * 1.75;
                          v150 = a6;
                          while (2)
                          {
                            if (v142 == 8)
                            {
                              v151 = ac_qlookup_0;
                            }

                            else
                            {
                              if (v142 != 12)
                              {
                                a6 = -1.0;
                                if (v142 == 10)
                                {
                                  v151 = ac_qlookup_10;
                                  break;
                                }

LABEL_452:
                                v153 = a4 * a6;
                                a7 = (v147 + ((v153 * a5) >> 12));
                                a6 = a7 / v153;
                                if (a6 <= v150)
                                {
LABEL_495:
                                  v143 = v148;
                                  goto LABEL_496;
                                }

                                if (v143 == ++v148)
                                {
                                  goto LABEL_496;
                                }

                                continue;
                              }

                              v151 = ac_qlookup_12;
                            }

                            break;
                          }

                          if (v148 >= 0xFF)
                          {
                            v152 = 255;
                          }

                          else
                          {
                            v152 = v148;
                          }

                          if (v148 < 0)
                          {
                            v152 = 0;
                          }

                          LOWORD(a6) = v151[v152];
                          a6 = vmovl_s16(*&a6).i32[0];
                          goto LABEL_452;
                        }
                      }

                      v77 = ac_qlookup_12;
LABEL_182:
                      if (v76 >= 0xFF)
                      {
                        v78 = 255;
                      }

                      else
                      {
                        v78 = v76;
                      }

                      if (v76 < 0)
                      {
                        v78 = 0;
                      }

                      LOWORD(a6) = v77[v78];
                      a6 = vmovl_s16(*&a6).i32[0];
                      goto LABEL_188;
                    }
                  }

                  v73 = ac_qlookup_12;
LABEL_165:
                  if (v72 >= 0xFF)
                  {
                    v74 = 255;
                  }

                  else
                  {
                    v74 = v72;
                  }

                  if (v72 < 0)
                  {
                    v74 = 0;
                  }

                  LOWORD(a7) = v73[v74];
                  a7 = vmovl_s16(*&a7).i32[0];
                  goto LABEL_171;
                }

                v67 = ac_qlookup_10;
              }

              if (v29 >= 0xFF)
              {
                v68 = 255;
              }

              else
              {
                v68 = v29;
              }

              if (v29 < 0)
              {
                v68 = 0;
              }

              LOWORD(a5) = v67[v68];
              a5 = vmovl_s16(*&a5).i32[0];
              goto LABEL_162;
            }

            if (*(a1 + 738580))
            {
              v60 = *(a1 + 738480);
              a4 = 0.015625;
              if (v58 == 10)
              {
                a4 = 0.0625;
              }

              a5 = 0.25;
              if (v58 == 8)
              {
                a4 = 0.25;
                v83 = ac_qlookup_0;
              }

              else if (v58 == 12)
              {
                v83 = ac_qlookup_12;
              }

              else
              {
                a5 = -1.0;
                if (v58 != 10)
                {
LABEL_219:
                  v85 = *(a1 + 738740);
                  v86 = *(a1 + 738736);
                  v87 = v86;
                  if (v85 >= v56)
                  {
                    goto LABEL_255;
                  }

                  a6 = a4 * a5;
                  a5 = a4 * a5 * 0.75;
                  v88 = *(a1 + 738740);
                  while (1)
                  {
                    if (v58 == 8)
                    {
                      v89 = ac_qlookup_0;
                      goto LABEL_222;
                    }

                    if (v58 == 12)
                    {
                      break;
                    }

                    a7 = -1.0;
                    if (v58 == 10)
                    {
                      v89 = ac_qlookup_10;
                      goto LABEL_222;
                    }

LABEL_228:
                    a7 = a4 * a7;
                    ++v88;
                    if (a7 >= a6 || v88 >= v56)
                    {
                      v86 = v88 - 1;
                      v92 = *(a1 + 738740);
                      while (1)
                      {
                        if (v58 == 8)
                        {
                          v93 = ac_qlookup_0;
                          goto LABEL_239;
                        }

                        if (v58 == 12)
                        {
                          break;
                        }

                        a6 = -1.0;
                        if (v58 == 10)
                        {
                          v93 = ac_qlookup_10;
                          goto LABEL_239;
                        }

LABEL_245:
                        a6 = a4 * a6;
                        ++v92;
                        if (a6 >= a5 || v92 >= v56)
                        {
                          v87 = v92 - 1;
LABEL_255:
                          v69 = v60 - v86 + v87;
                          if (v69 <= v85)
                          {
                            v69 = *(a1 + 738740);
                          }

                          goto LABEL_398;
                        }
                      }

                      v93 = ac_qlookup_12;
LABEL_239:
                      if (v92 >= 0xFF)
                      {
                        v94 = 255;
                      }

                      else
                      {
                        v94 = v92;
                      }

                      if (v92 < 0)
                      {
                        v94 = 0;
                      }

                      LOWORD(a6) = v93[v94];
                      a6 = vmovl_s16(*&a6).i32[0];
                      goto LABEL_245;
                    }
                  }

                  v89 = ac_qlookup_12;
LABEL_222:
                  if (v88 >= 0xFF)
                  {
                    v90 = 255;
                  }

                  else
                  {
                    v90 = v88;
                  }

                  if (v88 < 0)
                  {
                    v90 = 0;
                  }

                  LOWORD(a7) = v89[v90];
                  a7 = vmovl_s16(*&a7).i32[0];
                  goto LABEL_228;
                }

                v83 = ac_qlookup_10;
              }

              if (v60 >= 0xFF)
              {
                v84 = 255;
              }

              else
              {
                v84 = *(a1 + 738480);
              }

              if (v60 < 0)
              {
                v84 = 0;
              }

              LOWORD(a5) = v83[v84];
              a5 = vmovl_s16(*&a5).i32[0];
              goto LABEL_219;
            }

            v61 = &kf_low_motion_minq_12;
            v62 = *(a1 + 738624);
            v63 = *(a1 + 738496);
            if (v58 == 10)
            {
              v61 = &kf_low_motion_minq_10;
            }

            v64 = &kf_high_motion_minq_12;
            if (v58 == 10)
            {
              v64 = &kf_high_motion_minq_10;
            }

            if (v58 == 8)
            {
              v61 = &kf_low_motion_minq_8;
            }

            v65 = &kf_high_motion_minq_8;
            if (v58 != 8)
            {
              v65 = v64;
            }

            if (v63 < 4801)
            {
              if (v63 > 299)
              {
                v122 = v65[v62];
                v123 = v61[v62];
                v124 = 1954687339 * ((v122 - v123) * (4800 - v63) + 2250);
                v66 = (v124 >> 43) + (v124 >> 63) + v123;
              }

              else
              {
                v66 = v65[v62];
              }
            }

            else
            {
              v66 = v61[v62];
            }

            a5 = 0.75;
            if (*(a1 + 171992) * *(a1 + 171988) >= 101377)
            {
              a5 = 1.0;
            }

            a4 = 0.015625;
            if (v58 == 10)
            {
              a4 = 0.0625;
            }

            a6 = 0.25;
            if (v58 == 8)
            {
              a4 = 0.25;
              v125 = ac_qlookup_0;
            }

            else if (v58 == 12)
            {
              v125 = ac_qlookup_12;
            }

            else
            {
              a6 = -1.0;
              if (v58 != 10)
              {
LABEL_361:
                v127 = *(a1 + 738740);
                v128 = *(a1 + 738736);
                v129 = v128;
                if (v127 >= v56)
                {
LABEL_397:
                  v69 = v66 - v128 + v129;
                  goto LABEL_398;
                }

                a6 = a4 * a6;
                a5 = a5 * a6;
                v130 = *(a1 + 738740);
                while (1)
                {
                  if (v58 == 8)
                  {
                    v131 = ac_qlookup_0;
                    goto LABEL_364;
                  }

                  if (v58 == 12)
                  {
                    break;
                  }

                  a7 = -1.0;
                  if (v58 == 10)
                  {
                    v131 = ac_qlookup_10;
                    goto LABEL_364;
                  }

LABEL_370:
                  a7 = a4 * a7;
                  ++v130;
                  if (a7 >= a6 || v130 >= v56)
                  {
                    v128 = v130 - 1;
                    while (1)
                    {
                      if (v58 == 8)
                      {
                        v134 = ac_qlookup_0;
                        goto LABEL_381;
                      }

                      if (v58 == 12)
                      {
                        break;
                      }

                      a6 = -1.0;
                      if (v58 == 10)
                      {
                        v134 = ac_qlookup_10;
                        goto LABEL_381;
                      }

LABEL_387:
                      a6 = a4 * a6;
                      ++v127;
                      if (a6 >= a5 || v127 >= v56)
                      {
                        v129 = v127 - 1;
                        goto LABEL_397;
                      }
                    }

                    v134 = ac_qlookup_12;
LABEL_381:
                    if (v127 >= 0xFF)
                    {
                      v135 = 255;
                    }

                    else
                    {
                      v135 = v127;
                    }

                    if (v127 < 0)
                    {
                      v135 = 0;
                    }

                    LOWORD(a6) = v134[v135];
                    a6 = vmovl_s16(*&a6).i32[0];
                    goto LABEL_387;
                  }
                }

                v131 = ac_qlookup_12;
LABEL_364:
                if (v130 >= 0xFF)
                {
                  v132 = 255;
                }

                else
                {
                  v132 = v130;
                }

                if (v130 < 0)
                {
                  v132 = 0;
                }

                LOWORD(a7) = v131[v132];
                a7 = vmovl_s16(*&a7).i32[0];
                goto LABEL_370;
              }

              v125 = ac_qlookup_10;
            }

            if (v66 >= 0xFF)
            {
              v126 = 255;
            }

            else
            {
              v126 = v66;
            }

            if (v66 < 0)
            {
              v126 = 0;
            }

            LOWORD(a6) = v125[v126];
            a6 = vmovl_s16(*&a6).i32[0];
            goto LABEL_361;
          }

          if (!*(a1 + 738596) && (*v14 || *(a1 + 194564)))
          {
            if (*(a1 + 738576) < 2)
            {
              v81 = *(a1 + 738624);
            }

            else
            {
              v81 = *(a1 + 738628);
              if (v81 >= v57)
              {
                v81 = v57;
              }
            }

            if (v16 != 3)
            {
              v117 = &arfgf_low_motion_minq_12;
              v118 = &arfgf_low_motion_minq_8;
              v119 = &arfgf_high_motion_minq_8;
              if (v16 == 2)
              {
                if (v81 <= v29)
                {
                  v120 = v29;
                }

                else
                {
                  v120 = v81;
                }

                if (*(a1 + 942144))
                {
                  v121 = (a1 + 4 * *(a1 + 742156) + 745940);
                }

                else
                {
                  v121 = (a1 + 738488);
                }

                v180 = *v121;
                if (v58 == 10)
                {
                  v117 = &arfgf_low_motion_minq_10;
                  v181 = &arfgf_high_motion_minq_10;
                }

                else
                {
                  v181 = &arfgf_high_motion_minq_12;
                }

                if (v58 != 8)
                {
                  v118 = v117;
                  v119 = v181;
                }

                if (v180 < 2001)
                {
                  if (v180 > 399)
                  {
                    v191 = v119[v120];
                    v192 = v118[v120];
                    v193 = 1374389535 * ((v191 - v192) * (2000 - v180) + 800);
                    v182 = (v193 >> 41) + (v193 >> 63) + v192;
                  }

                  else
                  {
                    v182 = v119[v120];
                  }
                }

                else
                {
                  v182 = v118[v120];
                }

                v69 = 15 * v182 / 16;
              }

              else
              {
                if (*(a1 + 942144))
                {
                  v158 = (a1 + 4 * *(a1 + 742156) + 745940);
                }

                else
                {
                  v158 = (a1 + 738488);
                }

                v183 = *v158;
                if (v58 == 10)
                {
                  v117 = &arfgf_low_motion_minq_10;
                  v184 = &arfgf_high_motion_minq_10;
                }

                else
                {
                  v184 = &arfgf_high_motion_minq_12;
                }

                if (v58 != 8)
                {
                  v118 = v117;
                  v119 = v184;
                }

                if (v183 < 2001)
                {
                  if (v183 > 399)
                  {
                    v207 = v119[v81];
                    v208 = v118[v81];
                    v209 = 1374389535 * ((v207 - v208) * (2000 - v183) + 800);
                    v69 = (v209 >> 41) + (v209 >> 63) + v208;
                  }

                  else
                  {
                    v69 = v119[v81];
                  }
                }

                else
                {
                  v69 = v118[v81];
                }
              }

              goto LABEL_398;
            }

            v156 = 0.015625;
            if (v58 == 10)
            {
              v156 = 0.0625;
            }

            a5 = 0.25;
            if (v58 == 8)
            {
              v157 = ac_qlookup_0;
            }

            else
            {
              a5 = v156;
              if (v58 == 12)
              {
                v157 = ac_qlookup_12;
              }

              else
              {
                v156 = -1.0;
                if (v58 != 10)
                {
LABEL_605:
                  a4 = a5 * v156;
                  v195 = *(a1 + 738740);
                  if (!*(a1 + 194564))
                  {
                    v212 = a1;
                    v202 = vp9_compute_qdelta(v56, v195, v58, a4, a4 * 0.5);
                    a1 = v212;
                    goto LABEL_644;
                  }

                  v196 = *(a1 + 738736);
                  v197 = v196;
                  if (v195 >= v56)
                  {
                    goto LABEL_643;
                  }

                  a6 = a4 * 0.4;
                  v198 = *(a1 + 738740);
                  while (1)
                  {
                    if (v58 == 8)
                    {
                      v199 = ac_qlookup_0;
                      goto LABEL_609;
                    }

                    if (v58 == 12)
                    {
                      break;
                    }

                    a7 = -1.0;
                    if (v58 == 10)
                    {
                      v199 = ac_qlookup_10;
                      goto LABEL_609;
                    }

LABEL_615:
                    a7 = a5 * a7;
                    ++v198;
                    if (a7 >= a4 || v198 >= v56)
                    {
                      v196 = v198 - 1;
                      v203 = *(a1 + 738740);
                      while (1)
                      {
                        if (v58 == 8)
                        {
                          v204 = ac_qlookup_0;
                          goto LABEL_627;
                        }

                        if (v58 == 12)
                        {
                          break;
                        }

                        a4 = -1.0;
                        if (v58 == 10)
                        {
                          v204 = ac_qlookup_10;
                          goto LABEL_627;
                        }

LABEL_633:
                        a4 = a5 * a4;
                        ++v203;
                        if (a4 >= a6 || v203 >= v56)
                        {
                          v197 = v203 - 1;
LABEL_643:
                          v202 = v197 - v196;
LABEL_644:
                          v69 = v202 + v29;
                          if (v69 <= v195)
                          {
                            v69 = v195;
                          }

                          goto LABEL_398;
                        }
                      }

                      v204 = ac_qlookup_12;
LABEL_627:
                      if (v203 >= 0xFF)
                      {
                        v205 = 255;
                      }

                      else
                      {
                        v205 = v203;
                      }

                      if (v203 < 0)
                      {
                        v205 = 0;
                      }

                      LOWORD(a4) = v204[v205];
                      a4 = vmovl_s16(*&a4).i32[0];
                      goto LABEL_633;
                    }
                  }

                  v199 = ac_qlookup_12;
LABEL_609:
                  if (v198 >= 0xFF)
                  {
                    v200 = 255;
                  }

                  else
                  {
                    v200 = v198;
                  }

                  if (v198 < 0)
                  {
                    v200 = 0;
                  }

                  LOWORD(a7) = v199[v200];
                  a7 = vmovl_s16(*&a7).i32[0];
                  goto LABEL_615;
                }

                v157 = ac_qlookup_10;
              }
            }

            if (v29 >= 0xFF)
            {
              v194 = 255;
            }

            else
            {
              v194 = v29;
            }

            if (v29 < 0)
            {
              v194 = 0;
            }

            LOWORD(v156) = v157[v194];
            v156 = vmovl_s16(*&v156).i32[0];
            goto LABEL_605;
          }

          if (v16 != 3)
          {
            if (v31 < 2)
            {
              v82 = *(a1 + 738624);
            }

            else
            {
              v82 = *(a1 + 738628);
              if (v82 >= v57)
              {
                v82 = v57;
              }
            }

            v115 = v59[v82];
            if (v115 <= v29)
            {
              v116 = v29;
            }

            else
            {
              v116 = v115;
            }

            if (v16 == 2)
            {
              v69 = v116;
            }

            else
            {
              v69 = v115;
            }

            goto LABEL_398;
          }

          a4 = 0.015625;
          if (v58 == 10)
          {
            a4 = 0.0625;
          }

          a5 = 0.25;
          if (v58 == 8)
          {
            a4 = 0.25;
            v168 = ac_qlookup_0;
          }

          else if (v58 == 12)
          {
            v168 = ac_qlookup_12;
          }

          else
          {
            a5 = -1.0;
            if (v58 != 10)
            {
LABEL_524:
              v69 = *(a1 + 738740);
              v170 = *(a1 + 738736);
              v171 = v170;
              if (v69 >= v56)
              {
LABEL_560:
                v80 = v29 - v170 + v171;
                goto LABEL_199;
              }

              a6 = a4 * a5;
              a5 = a4 * a5 * dbl_273BD4318[v31 & 7];
              v172 = *(a1 + 738740);
              while (1)
              {
                if (v58 == 8)
                {
                  v173 = ac_qlookup_0;
                  goto LABEL_527;
                }

                if (v58 == 12)
                {
                  break;
                }

                a7 = -1.0;
                if (v58 == 10)
                {
                  v173 = ac_qlookup_10;
                  goto LABEL_527;
                }

LABEL_533:
                a7 = a4 * a7;
                ++v172;
                if (a7 >= a6 || v172 >= v56)
                {
                  v170 = v172 - 1;
                  v176 = *(a1 + 738740);
                  while (1)
                  {
                    if (v58 == 8)
                    {
                      v177 = ac_qlookup_0;
                      goto LABEL_544;
                    }

                    if (v58 == 12)
                    {
                      break;
                    }

                    a6 = -1.0;
                    if (v58 == 10)
                    {
                      v177 = ac_qlookup_10;
                      goto LABEL_544;
                    }

LABEL_550:
                    a6 = a4 * a6;
                    ++v176;
                    if (a6 >= a5 || v176 >= v56)
                    {
                      v171 = v176 - 1;
                      goto LABEL_560;
                    }
                  }

                  v177 = ac_qlookup_12;
LABEL_544:
                  if (v176 >= 0xFF)
                  {
                    v178 = 255;
                  }

                  else
                  {
                    v178 = v176;
                  }

                  if (v176 < 0)
                  {
                    v178 = 0;
                  }

                  LOWORD(a6) = v177[v178];
                  a6 = vmovl_s16(*&a6).i32[0];
                  goto LABEL_550;
                }
              }

              v173 = ac_qlookup_12;
LABEL_527:
              if (v172 >= 0xFF)
              {
                v174 = 255;
              }

              else
              {
                v174 = v172;
              }

              if (v172 < 0)
              {
                v174 = 0;
              }

              LOWORD(a7) = v173[v174];
              a7 = vmovl_s16(*&a7).i32[0];
              goto LABEL_533;
            }

            v168 = ac_qlookup_10;
          }

          if (v29 >= 0xFF)
          {
            v169 = 255;
          }

          else
          {
            v169 = v29;
          }

          if (v29 < 0)
          {
            v169 = 0;
          }

          LOWORD(a5) = v168[v169];
          a5 = vmovl_s16(*&a5).i32[0];
          goto LABEL_524;
        }

        v33 = *(a1 + 738476);
        v34 = *(a1 + 738836);
LABEL_36:
        v35 = v34 * v33 / 100;
        goto LABEL_111;
      }

      if (v31 != 1)
      {
        v33 = *(a1 + 738628);
        v34 = *(a1 + 738832);
        goto LABEL_36;
      }
    }

    else if (!v31)
    {
      v35 = *(a1 + 738736);
      goto LABEL_111;
    }

    v35 = 2 * *(a1 + 738472);
    goto LABEL_111;
  }

  v17 = a1;
  active = calc_active_worst_quality_one_pass_cbr(a1);
  v23 = v10[3];
  v24 = &rtc_minq_12;
  if (v23 == 10)
  {
    v24 = &rtc_minq_10;
  }

  v25 = &rtc_minq_8;
  if (v23 != 8)
  {
    v25 = v24;
  }

  if (*(v15 + 984) && !*(v15 + 1000))
  {
    v27 = v17;
    if (!*(v9 + 136) && !*(v17 + 754540) && v10[56] && (*v14 || v14[1]))
    {
      if (*(v9 + 116) < 2 || (v154 = *(v9 + 168), v154 >= active))
      {
        v154 = active;
      }

      if (*(v17 + 942144))
      {
        v155 = (v17 + 4 * *(v9 + 3696) + 745940);
      }

      else
      {
        v155 = (v9 + 28);
      }

      v185 = &arfgf_low_motion_minq_12;
      v186 = *v155;
      if (v23 == 10)
      {
        v185 = &arfgf_low_motion_minq_10;
      }

      v187 = &arfgf_high_motion_minq_12;
      if (v23 == 10)
      {
        v187 = &arfgf_high_motion_minq_10;
      }

      v188 = v23 == 8;
      if (v23 == 8)
      {
        v189 = &arfgf_low_motion_minq_8;
      }

      else
      {
        v189 = v185;
      }

      v190 = &arfgf_high_motion_minq_8;
      if (!v188)
      {
        v190 = v187;
      }

      if (v186 < 2001)
      {
        if (v186 > 399)
        {
          v210 = v189[v154];
          v211 = 1374389535 * ((v190[v154] - v210) * (2000 - v186) + 800);
          v36 = (v211 >> 41) + (v211 >> 63) + v210;
        }

        else
        {
          v36 = v190[v154];
        }
      }

      else
      {
        v36 = v189[v154];
      }

      goto LABEL_311;
    }

    if (*v10 < 2)
    {
      v43 = *(v9 + 164);
      if (v43 < active)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v43 = *(v9 + 168);
      if (v43 < active)
      {
LABEL_54:
        v36 = v25[v43];
        goto LABEL_311;
      }
    }

    v36 = v25[active];
    goto LABEL_311;
  }

  if (*(v9 + 120))
  {
    v26 = *(v9 + 20);
    v19 = 0.015625;
    if (v23 == 10)
    {
      v19 = 0.0625;
    }

    v20 = 0.25;
    if (v23 == 8)
    {
      v19 = 0.25;
    }

    v27 = v17;
    if (v23 == 8)
    {
      v28 = ac_qlookup_0;
    }

    else if (v23 == 12)
    {
      v28 = ac_qlookup_12;
    }

    else
    {
      v20 = -1.0;
      if (v23 != 10)
      {
LABEL_64:
        v45 = *(v9 + 276);
        v46 = *(v9 + 280);
        v47 = v45;
        if (v46 >= v45)
        {
LABEL_100:
          if (v26 - v47 + v45 <= v46)
          {
            v36 = *(v9 + 280);
          }

          else
          {
            v36 = v26 - v47 + v45;
          }

          goto LABEL_311;
        }

        v21 = v19 * v20;
        v20 = v19 * v20 * 0.75;
        v48 = *(v9 + 280);
        while (1)
        {
          if (v23 == 8)
          {
            v49 = ac_qlookup_0;
            goto LABEL_67;
          }

          if (v23 == 12)
          {
            break;
          }

          v22 = -1.0;
          if (v23 == 10)
          {
            v49 = ac_qlookup_10;
            goto LABEL_67;
          }

LABEL_73:
          v22 = v19 * v22;
          ++v48;
          if (v22 >= v21 || v48 >= v45)
          {
            v47 = v48 - 1;
            v52 = *(v9 + 280);
            while (1)
            {
              if (v23 == 8)
              {
                v53 = ac_qlookup_0;
                goto LABEL_84;
              }

              if (v23 == 12)
              {
                break;
              }

              v21 = -1.0;
              if (v23 == 10)
              {
                v53 = ac_qlookup_10;
                goto LABEL_84;
              }

LABEL_90:
              v21 = v19 * v21;
              ++v52;
              if (v21 >= v20 || v52 >= v45)
              {
                v45 = v52 - 1;
                goto LABEL_100;
              }
            }

            v53 = ac_qlookup_12;
LABEL_84:
            if (v52 >= 0xFF)
            {
              v54 = 255;
            }

            else
            {
              v54 = v52;
            }

            if (v52 < 0)
            {
              v54 = 0;
            }

            LOWORD(v21) = v53[v54];
            v21 = vmovl_s16(*&v21).i32[0];
            goto LABEL_90;
          }
        }

        v49 = ac_qlookup_12;
LABEL_67:
        if (v48 >= 0xFF)
        {
          v50 = 255;
        }

        else
        {
          v50 = v48;
        }

        if (v48 < 0)
        {
          v50 = 0;
        }

        LOWORD(v22) = v49[v50];
        v22 = vmovl_s16(*&v22).i32[0];
        goto LABEL_73;
      }

      v28 = ac_qlookup_10;
    }

    if (v26 >= 0xFF)
    {
      v44 = 255;
    }

    else
    {
      v44 = *(v9 + 20);
    }

    if (v26 < 0)
    {
      v44 = 0;
    }

    LOWORD(v20) = v28[v44];
    v20 = vmovl_s16(*&v20).i32[0];
    goto LABEL_64;
  }

  v36 = *(v9 + 280);
  v27 = v17;
  if (!*v10)
  {
    goto LABEL_311;
  }

  v37 = &kf_low_motion_minq_12;
  v38 = *(v9 + 164);
  v39 = *(v9 + 36);
  if (v23 == 10)
  {
    v37 = &kf_low_motion_minq_10;
  }

  v40 = &kf_high_motion_minq_12;
  if (v23 == 10)
  {
    v40 = &kf_high_motion_minq_10;
  }

  if (v23 == 8)
  {
    v37 = &kf_low_motion_minq_8;
  }

  v41 = &kf_high_motion_minq_8;
  if (v23 != 8)
  {
    v41 = v40;
  }

  if (v39 < 4801)
  {
    if (v39 > 299)
    {
      v96 = v41[v38];
      v97 = v37[v38];
      v98 = 1954687339 * ((v96 - v97) * (4800 - v39) + 2250);
      v42 = (v98 >> 43) + (v98 >> 63) + v97;
    }

    else
    {
      v42 = v41[v38];
    }
  }

  else
  {
    v42 = v37[v38];
  }

  v20 = 0.75;
  if (*(v15 + 4) * *v15 >= 101377)
  {
    v20 = 1.0;
  }

  v19 = 0.015625;
  if (v23 == 10)
  {
    v19 = 0.0625;
  }

  v21 = 0.25;
  if (v23 == 8)
  {
    v19 = 0.25;
    v99 = ac_qlookup_0;
LABEL_268:
    if (v42 >= 0xFF)
    {
      v100 = 255;
    }

    else
    {
      v100 = v42;
    }

    if (v42 < 0)
    {
      v100 = 0;
    }

    LOWORD(v21) = v99[v100];
    v21 = vmovl_s16(*&v21).i32[0];
    goto LABEL_274;
  }

  if (v23 == 12)
  {
    v99 = ac_qlookup_12;
    goto LABEL_268;
  }

  v21 = -1.0;
  if (v23 == 10)
  {
    v99 = ac_qlookup_10;
    goto LABEL_268;
  }

LABEL_274:
  v101 = *(v9 + 276);
  v102 = v101;
  if (v36 >= v101)
  {
    goto LABEL_310;
  }

  v21 = v19 * v21;
  v20 = v20 * v21;
  v103 = *(v9 + 280);
  do
  {
    if (v23 == 8)
    {
      v104 = ac_qlookup_0;
    }

    else if (v23 == 12)
    {
      v104 = ac_qlookup_12;
    }

    else
    {
      v22 = -1.0;
      if (v23 != 10)
      {
        goto LABEL_283;
      }

      v104 = ac_qlookup_10;
    }

    if (v103 >= 0xFF)
    {
      v105 = 255;
    }

    else
    {
      v105 = v103;
    }

    if (v103 < 0)
    {
      v105 = 0;
    }

    LOWORD(v22) = v104[v105];
    v22 = vmovl_s16(*&v22).i32[0];
LABEL_283:
    v22 = v19 * v22;
    ++v103;
  }

  while (v22 < v21 && v103 < v101);
  v102 = v103 - 1;
  do
  {
    if (v23 == 8)
    {
      v107 = ac_qlookup_0;
    }

    else if (v23 == 12)
    {
      v107 = ac_qlookup_12;
    }

    else
    {
      v21 = -1.0;
      if (v23 != 10)
      {
        goto LABEL_300;
      }

      v107 = ac_qlookup_10;
    }

    if (v36 >= 0xFF)
    {
      v108 = 255;
    }

    else
    {
      v108 = v36;
    }

    if (v36 < 0)
    {
      v108 = 0;
    }

    LOWORD(v21) = v107[v108];
    v21 = vmovl_s16(*&v21).i32[0];
LABEL_300:
    v21 = v19 * v21;
    ++v36;
  }

  while (v21 < v20 && v36 < v101);
  v101 = v36 - 1;
LABEL_310:
  v36 = v42 - v102 + v101;
LABEL_311:
  v110 = *(v9 + 276);
  if (v36 >= v110)
  {
    v111 = *(v9 + 276);
  }

  else
  {
    v111 = v36;
  }

  if (v36 >= *(v9 + 280))
  {
    v112 = v111;
  }

  else
  {
    v112 = *(v9 + 280);
  }

  if (active >= v110)
  {
    v113 = *(v9 + 276);
  }

  else
  {
    v113 = active;
  }

  if (active >= v112)
  {
    v114 = v113;
  }

  else
  {
    v114 = v112;
  }

  *a3 = v114;
  *v8 = v112;
  if ((!*(v15 + 984) || *(v15 + 1000)) && *(v9 + 120))
  {
LABEL_326:
    v12 = *(v9 + 20);
    goto LABEL_4;
  }

  v11 = vp9_rc_regulate_q(v27, *v9, v112, v114, v19, v20, v21, v22);
LABEL_512:
  v12 = *a3;
  if (v11 <= v12)
  {
LABEL_3:
    v12 = v11;
    goto LABEL_4;
  }

  if (*v9 >= *(v9 + 148))
  {
    *a3 = v11;
    goto LABEL_3;
  }

LABEL_4:
  if (*(v9 + 1480))
  {
    if (*(v9 + 1364) == 1)
    {
      v12 = (v12 - *(v9 + 1368));
    }

    if (v12 < *v8 || (v8 = a3, v12 > *a3))
    {
      *v8 = v12;
    }
  }

  return v12;
}

_DWORD *vp9_rc_set_frame_target(_DWORD *result, int a2)
{
  result[184615] = a2;
  if (result[47539] == 2)
  {
    v2 = result[184697];
    if (v2)
    {
      a2 = (rate_thresh_mult[v2] * a2);
      result[184615] = a2;
    }
  }

  v3 = (a2 << 12) / (result[42998] * result[42997]);
  if (v3 >= 0x7FFFFFFF)
  {
    LODWORD(v3) = 0x7FFFFFFF;
  }

  result[184617] = v3;
  return result;
}

uint64_t vp9_compute_frame_low_motion(uint64_t result)
{
  v1 = *(result + 173008);
  v2 = *(result + 173016);
  if (v1 < 1 || v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = *(result + 173176);
    do
    {
      v8 = 0;
      do
      {
        v9 = *(v7 + 8 * v8);
        if (*(v9 + 8) == 1)
        {
          v10 = *(v9 + 12);
          if (v10 < 0)
          {
            v10 = -v10;
          }

          if (v10 <= 0xF)
          {
            v11 = *(v9 + 14);
            if (v11 < 0)
            {
              v11 = -v11;
            }

            if (v11 < 0x10)
            {
              ++v6;
            }
          }
        }

        ++v8;
      }

      while (v2 != v8);
      v7 += 8 * (v2 - 1) + 72;
      ++v5;
    }

    while (v5 != v1);
    v4 = 100 * v6;
  }

  v12 = (3 * *(result + 739080) + v4 / (v2 * v1)) >> 2;
  *(result + 739080) = v12;
  if (*(result + 754540))
  {
    v13 = *(result + 754552);
    if (v13 >= 2)
    {
      v14 = *(result + 754544);
      if (v14 == v13 - 1)
      {
        v15 = *(result + 754556);
        v16 = *(result + 754548);
        if (v14 < 2)
        {
          v17 = 0;
LABEL_28:
          v20 = v14 - v17;
          v21 = (result + 13936 * (v16 + v17 * v15) + 759560);
          v22 = 13936 * v15;
          do
          {
            *v21 = v12;
            v21 = (v21 + v22);
            --v20;
          }

          while (v20);
          return result;
        }

        v17 = v14 & 0xFFFFFFFE;
        v18 = result + 759560;
        v19 = v17;
        do
        {
          *(v18 + 13936 * v16) = v12;
          *(v18 + 13936 * (v15 + v16)) = v12;
          v18 += 27872 * v15;
          v19 -= 2;
        }

        while (v19);
        if (v17 != v14)
        {
          goto LABEL_28;
        }
      }
    }
  }

  return result;
}

void vp9_rc_postencode_update(uint64_t a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, int32x4_t a9, int32x4_t a10)
{
  v10 = a1;
  v11 = (a1 + 754540);
  v12 = (a1 + 738460);
  v13 = (a1 + 194560);
  v14 = (a1 + 189856);
  v15 = a1 + 172972;
  v16 = *(a1 + 173028);
  v17 = *(a1 + 742156);
  v18 = *(a1 + v17 + 744428);
  *(a1 + 738464) = 8 * a2;
  v19 = *(a1 + 172972);
  if (v19 && !*(a1 + 172988))
  {
    if (*(a1 + 190076) == 2)
    {
      v20 = (a1 + 8 * *(a1 + 4 * v17 + 742160) + 738504);
    }

    else if (!*(a1 + 194564) && !*v13 || *(a1 + 738596) || *v11 || *(a1 + 190092) == 1 && *(a1 + 190068) < 0x65u)
    {
      v20 = (a1 + 738504);
    }

    else
    {
      v20 = (a1 + 738528);
    }
  }

  else
  {
    v20 = (a1 + 738536);
  }

  v21 = (a1 + 926372);
  v22 = *v20 * rate_thresh_mult[*(a1 + 738788)];
  v23 = 50.0;
  if (v22 <= 50.0)
  {
    v23 = *v20 * rate_thresh_mult[*(a1 + 738788)];
  }

  v24 = &unk_273BA0000;
  if (v22 >= 0.005)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0.005;
  }

  v26 = v16;
  if (*(a1 + 738596))
  {
    if (!v19)
    {
      goto LABEL_73;
    }

LABEL_72:
    if (*(v15 + 16))
    {
      goto LABEL_73;
    }

    if (!*v11 && (v12[34] || *v13 || v13[1]))
    {
      goto LABEL_121;
    }

    v12[4] = v16;
    v12[42] = (v16 + 3 * v12[42] + 2) >> 2;
    v58 = v12[40] + 1;
    v12[40] = v58;
    v59 = *v14;
    v60 = 0.015625;
    if (*v14 == 10)
    {
      v60 = 0.0625;
    }

    v61 = 0.25;
    if (v59 == 8)
    {
      v60 = 0.25;
      v69 = ac_qlookup_0;
    }

    else if (v59 == 12)
    {
      v69 = ac_qlookup_12;
    }

    else
    {
      v61 = -1.0;
      if (v59 != 10)
      {
LABEL_120:
        v71 = *(v12 + 43) + v60 * v61;
        *(v12 + 43) = v71;
        *(v12 + 45) = v71 / v58;
        v72 = v12[39] + v16;
        v12[38] = v72 / v58;
        v12[39] = v72;
        goto LABEL_121;
      }

      v69 = ac_qlookup_10;
    }

    if (v16 >= 0xFF)
    {
      v70 = 255;
    }

    else
    {
      v70 = v16;
    }

    if (v16 < 0)
    {
      v70 = 0;
    }

    LOWORD(v61) = v69[v70];
    v61 = vmovl_s16(*&v61).i32[0];
    goto LABEL_120;
  }

  v154 = a1 + 742160;
  v27 = *(a1 + 742160 + 4 * v17);
  if (*(a1 + 190148) == 3 && *(a1 + 176472))
  {
    v28 = (a1 + 754540);
    v29 = v18;
    refreshed = vp9_cyclic_refresh_estimate_bits_at_q(a1, v25, v23, a5, a6);
    v24 = &unk_273BA0000;
    v18 = v29;
    v11 = v28;
    if (refreshed < 201)
    {
      goto LABEL_15;
    }

LABEL_50:
    v31 = 100 * v12[1] / refreshed;
    v156 = v10;
    v32 = v10 + 739124;
    if (*(v10 + 739124 + 4 * v27))
    {
      goto LABEL_16;
    }

LABEL_51:
    *(v32 + 4 * v27) = 1;
    v40 = 1.0;
    goto LABEL_52;
  }

  v41 = *v14;
  v42 = 0.015625;
  if (*v14 == 10)
  {
    v42 = 0.0625;
  }

  v43 = 0.25;
  if (v41 == 8)
  {
    v42 = 0.25;
    v44 = ac_qlookup_0;
  }

  else if (v41 == 12)
  {
    v44 = ac_qlookup_12;
  }

  else
  {
    v43 = -1.0;
    if (v41 != 10)
    {
      goto LABEL_40;
    }

    v44 = ac_qlookup_10;
  }

  if (v16 >= 0xFF)
  {
    v45 = 255;
  }

  else
  {
    v45 = v16;
  }

  if (v16 < 0)
  {
    v45 = 0;
  }

  LOWORD(v43) = v44[v45];
  v43 = vmovl_s16(*&v43).i32[0];
LABEL_40:
  if (*(a1 + 172988))
  {
    v46 = 1;
  }

  else
  {
    v46 = v19 == 0;
  }

  v47 = v42 * v43;
  if (v46)
  {
    v48 = 2700000;
  }

  else
  {
    v48 = 1800000;
  }

  if (((*(a1 + 173000) * (v25 * (v48 + ((v47 * v48) >> 12)) / v47)) >> 9) <= 200)
  {
    refreshed = 200;
  }

  else
  {
    refreshed = (*(a1 + 173000) * (v25 * (v48 + ((v47 * v48) >> 12)) / v47)) >> 9;
  }

  if (refreshed >= 201)
  {
    goto LABEL_50;
  }

LABEL_15:
  LODWORD(v31) = 100;
  v156 = v10;
  v32 = v10 + 739124;
  if (!*(v10 + 739124 + 4 * v27))
  {
    goto LABEL_51;
  }

LABEL_16:
  v33 = v11;
  v34 = v18;
  v155 = v15;
  v35 = v14;
  v36 = v24;
  v37 = v31;
  v38 = log10(v31 * 0.01);
  LODWORD(v31) = v37;
  v24 = v36;
  v14 = v35;
  v15 = v155;
  v18 = v34;
  v11 = v33;
  v39 = fabs(v38);
  if (v39 > 1.0)
  {
    v39 = 1.0;
  }

  v40 = v39 * 0.5 + 0.25;
LABEL_52:
  v12[80] = v12[79];
  v26 = *(v15 + 56);
  v12[79] = v26;
  v49 = v12[77];
  v12[78] = v49;
  if (v31 > 110)
  {
    v12[77] = -1;
    v10 = v156;
    if (v49 == 1 && v31 >= 0x3E9)
    {
      v12[78] = 0;
    }

    goto LABEL_61;
  }

  v10 = v156;
  if (v31 > 89)
  {
    v12[77] = 0;
    if (v31 >= 0x67)
    {
LABEL_61:
      v25 = v25 * ((v31 - 100) * v40 + 100.0) / 100.0;
      if (v25 > 50.0)
      {
        v25 = 50.0;
      }

      goto LABEL_63;
    }

    if (v31 > 0x62)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v12[77] = 1;
  }

  v25 = v25 * (100.0 - (100 - v31) * v40) / 100.0;
  if (v25 < 0.005)
  {
    v25 = 0.005;
  }

LABEL_63:
  v19 = *v15;
  if (*v15 && !*(v15 + 16))
  {
    if (v14[55] == 2)
    {
      v50 = (v10 + 8 * *(v154 + 4 * *(v12 + 3696)) + 738504);
    }

    else if (!v13[1] && !*v13 || v12[34] || *v11 || v14[59] == 1 && v14[53] < 0x65u)
    {
      v50 = (v12 + 11);
    }

    else
    {
      v50 = (v12 + 17);
    }
  }

  else
  {
    v50 = (v12 + 19);
  }

  v51 = v25 / rate_thresh_mult[v12[82]];
  v52 = 50.0;
  if (v51 <= 50.0)
  {
    v52 = v25 / rate_thresh_mult[v12[82]];
  }

  if (v51 >= v24[482])
  {
    v53 = v52;
  }

  else
  {
    v53 = v24[482];
  }

  *v50 = v53;
  if (v19)
  {
    goto LABEL_72;
  }

LABEL_73:
  v12[3] = v16;
  v54 = (v16 + 3 * v12[41] + 2) >> 2;
  v12[41] = v54;
  if (!*v11)
  {
    goto LABEL_121;
  }

  v55 = v11[4];
  if (v55 < 1)
  {
    goto LABEL_90;
  }

  v56 = v11[1] * v55;
  if (v55 == 1)
  {
    v57 = 0;
  }

  else
  {
    v57 = v55 & 0x7FFFFFFE;
    v62 = (v10 + 13936 * v56 + 758952);
    v63 = v57;
    do
    {
      *v62 = v16;
      v62[3484] = v16;
      v62[38] = v54;
      v62[3522] = v54;
      v62 += 6968;
      v63 -= 2;
    }

    while (v63);
    if (v57 == v55)
    {
      goto LABEL_90;
    }
  }

  v64 = v55 - v57;
  v65 = (13936 * (v57 + v56) + 758952 + v10 + 152);
  do
  {
    *(v65 - 38) = v16;
    *v65 = v54;
    v65 += 3484;
    --v64;
  }

  while (v64);
LABEL_90:
  if (v19)
  {
    goto LABEL_121;
  }

  if (v14[59] != 1 || v21[190] || v12[1] / 3 <= v12[35])
  {
    goto LABEL_99;
  }

  v66 = v12[42];
  if (v66 <= (v12[69] + v26) >> 1)
  {
    v66 = (v12[69] + v26) >> 1;
  }

  v12[42] = v66;
  if (v55 < 1)
  {
LABEL_99:
    v68 = v12 + 5;
LABEL_125:
    *v68 = v16;
    goto LABEL_126;
  }

  if (v55 == 1)
  {
    v67 = 0;
LABEL_257:
    v152 = v55 - v67;
    v153 = (v10 + 13936 * v67 + 759108);
    do
    {
      *v153 = v66;
      v153 += 3484;
      --v152;
    }

    while (v152);
    goto LABEL_121;
  }

  v150 = (v10 + 759108);
  v67 = v55 & 0x7FFFFFFE;
  v151 = v67;
  do
  {
    *v150 = v66;
    v150[3484] = v66;
    v150 += 6968;
    v151 -= 2;
  }

  while (v151);
  if (v67 != v55)
  {
    goto LABEL_257;
  }

LABEL_121:
  v68 = v12 + 5;
  if (!v19 || v16 < v12[5] || !v12[27] && (v13[1] || *v13 && !v12[34]))
  {
    goto LABEL_125;
  }

LABEL_126:
  v73 = v10 + 742132;
  if (v16 >= *(v10 + 742132 + 4 * v18))
  {
    if (!v19)
    {
      *(v73 + 4 * v18) = v16;
LABEL_136:
      v74 = 1;
      goto LABEL_137;
    }

    if (!v12[27] && (v13[1] || *v13 && !v12[34]))
    {
      *(v73 + 4 * v18) = v16;
    }
  }

  else
  {
    *(v73 + 4 * v18) = v16;
    if (!v19)
    {
      goto LABEL_136;
    }
  }

  v74 = 0;
  v75 = 0;
  if (*(v15 + 16))
  {
LABEL_137:
    v12[6] = v16;
    v75 = v74;
  }

  v76 = v12[1];
  v77 = *(v12 + 49) - v76;
  v78 = *(v12 + 75);
  if (v77 >= v78)
  {
    v77 = *(v12 + 75);
  }

  *(v12 + 49) = v77;
  if (v14[131] == 1 && !v14[68])
  {
    if (v77 <= -v78)
    {
      v77 = -v78;
    }

    *(v12 + 49) = v77;
  }

  *(v12 + 47) = v77;
  v79 = *v11;
  if (*v11)
  {
    if (!v14[55])
    {
      v80 = v11[2];
      v81 = v11[4];
      if (v80 + 1 < v81)
      {
        v82 = ~v80 + v81;
        v83 = (v10 + 13936 * (v80 + v11[1] * v81) + 773064);
        do
        {
          v84 = v83[1] - v76;
          if (v84 >= v83[14])
          {
            v84 = v83[14];
          }

          *v83 = v84;
          v83[1] = v84;
          v83 += 1742;
          --v82;
        }

        while (v82);
      }
    }
  }

  if ((v75 & 1) != 0 || *(v15 + 16))
  {
    v85 = *(v12 + 63) + v76;
    *(v12 + 63) = v85;
    v86 = *(v15 + 4);
    if (v86)
    {
LABEL_155:
      v87 = v12[35];
      goto LABEL_158;
    }
  }

  else
  {
    v88 = *v12;
    v89 = (v76 + 3 * v12[58] + 2) >> 2;
    v12[57] = (v88 + 3 * v12[57] + 2) >> 2;
    v12[58] = v89;
    v90 = v12[60];
    v12[59] = (v88 - v12[59] + 32 * v12[59] + 16) >> 5;
    v12[60] = (v76 - v90 + 32 * v90 + 16) >> 5;
    v85 = *(v12 + 63) + v76;
    *(v12 + 63) = v85;
    v86 = *(v15 + 4);
    if (v86)
    {
      goto LABEL_155;
    }
  }

  v87 = 0;
LABEL_158:
  v91 = 738576;
  v92 = *(v12 + 65) + v87;
  *(v12 + 65) = v92;
  *(v12 + 67) = v85 - v92;
  if (!v79)
  {
    if ((v14[54] != 2 || v14[59] != 1) && v14[58] >= 4 && v14[112])
    {
      v100 = v13[1] ? v75 : 1;
      if ((v100 & 1) == 0 && !*(v15 + 16))
      {
        v112 = 0;
        v12[21] = 0;
        v12[32] = 0;
        v91 = 738592;
        v111 = 1;
        goto LABEL_209;
      }
    }

    if (!*v13)
    {
      if (!v13[1])
      {
        v104 = v12[22];
        v95 = __OFSUB__(v104, 1);
        v105 = v104 - 1;
        if (v105 < 0 == v95)
        {
          v12[22] = v105;
        }

        ++v12[21];
        if (v12[176])
        {
          v12[21] = 0;
          if (!v12[32] && !*(v12 + 3696))
          {
            v12[33] = 0;
          }
        }
      }

      goto LABEL_205;
    }

    v12[21] = 0;
    v101 = v12[32];
    if (v14[55] == 2)
    {
      if (v101)
      {
LABEL_182:
        v102 = v12[22];
        v95 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v95)
        {
          v12[22] = v103;
        }

        goto LABEL_205;
      }

      v101 = *(v12 + 3696);
    }

    if (!v101)
    {
      v12[33] = 0;
    }

    goto LABEL_182;
  }

  if (!*v21 || v11[2])
  {
    goto LABEL_205;
  }

  if (!*v13)
  {
    v106 = v12[22];
    v93 = v12[21] + 1;
    v12[21] = v93;
    v95 = __OFSUB__(v106, 1);
    v96 = v106 - 1;
    if (v96 < 0 != v95)
    {
      goto LABEL_164;
    }

    goto LABEL_163;
  }

  v93 = 0;
  v12[21] = 0;
  v94 = v12[22];
  v95 = __OFSUB__(v94, 1);
  v96 = v94 - 1;
  if (v96 < 0 == v95)
  {
LABEL_163:
    v12[22] = v96;
  }

LABEL_164:
  v97 = v11[4];
  if (v97 <= 1)
  {
    goto LABEL_205;
  }

  v98 = v11[1] * v97;
  if (v97 == 2)
  {
    v99 = 1;
LABEL_203:
    v109 = v97 - v99;
    v110 = (v10 + 13936 * (v99 + v98) + 759024);
    do
    {
      *v110 = v93;
      v110 += 3484;
      --v109;
    }

    while (v109);
    goto LABEL_205;
  }

  v99 = (v97 - 1) | 1;
  v107 = (v10 + 13936 * v98 + 772960);
  v108 = (v97 - 1) & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *v107 = v93;
    v107[3484] = v93;
    v107 += 6968;
    v108 -= 2;
  }

  while (v108);
  if (v97 - 1 != ((v97 - 1) & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_203;
  }

LABEL_205:
  if (v75)
  {
    v111 = 0;
    v112 = 1;
LABEL_209:
    *(v10 + v91) = v111;
    goto LABEL_210;
  }

  v112 = *(v15 + 16);
  if (v112)
  {
    v111 = 0;
    v112 = 0;
    goto LABEL_209;
  }

LABEL_210:
  v113 = v10 + 942128;
  if (v86)
  {
    *(v12 + 14) = vadd_s32(*(v12 + 28), 0x1FFFFFFFFLL);
  }

  if (v14[55])
  {
    v114 = v12[83];
    *(v10 + 933792) = v114 != v12[82];
    v12[82] = v114;
    if ((v112 & 1) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_220;
  }

  if (v112)
  {
    goto LABEL_217;
  }

  if (*(v15 + 16))
  {
    goto LABEL_217;
  }

  if (!v12[420])
  {
    goto LABEL_217;
  }

  if (!v12[149])
  {
    goto LABEL_217;
  }

  if (v12[34])
  {
    goto LABEL_217;
  }

  if (*v13)
  {
    goto LABEL_217;
  }

  if (v13[1])
  {
    goto LABEL_217;
  }

  v115 = *(v15 + 36);
  if (v115 < 1)
  {
    goto LABEL_217;
  }

  v116 = *(v15 + 44);
  if (v116 < 1)
  {
    goto LABEL_217;
  }

  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = (v116 + 7) >> 3;
  v121 = ((v116 - 1) >> 3) + 1;
  v122 = v121 & 0x3FFFFFFFFFFFFFFCLL;
  v123 = *v113;
  v124 = *(v113 + 8);
  do
  {
    if (v116 < 0x19)
    {
      v125 = 0;
LABEL_244:
      v148 = v125 >> 3;
      do
      {
        v149 = v123->u8[v148];
        v118 += v149 + v124->u8[v148];
        v119 += v149;
        v125 += 8;
        ++v148;
      }

      while (v125 < v116);
      goto LABEL_232;
    }

    if (v116 >= 0x79)
    {
      v127 = v118;
      v128 = 0uLL;
      v129 = v119;
      v130 = v121 & 0x3FFFFFFFFFFFFFF0;
      v131 = v123;
      v132 = v124;
      v133 = 0uLL;
      v134 = 0uLL;
      a10 = 0uLL;
      v135 = 0uLL;
      v136 = 0uLL;
      do
      {
        v137 = *v131++;
        v138 = vqtbl1q_s8(v137, xmmword_273B8E7B0);
        v139 = vqtbl1q_s8(v137, xmmword_273B8E7C0);
        v140 = vqtbl1q_s8(v137, xmmword_273B8E7A0);
        v141 = vqtbl1q_s8(v137, xmmword_273B8E7D0);
        v142 = *v132++;
        v143 = vmovl_u8(*v142.i8);
        v144 = vmovl_high_u8(v142);
        v133 = vaddw_u16(vaddq_s32(v133, v138), *v144.i8);
        v128 = vaddw_high_u16(vaddq_s32(v128, v139), v143);
        v134 = vaddw_high_u16(vaddq_s32(v134, v140), v144);
        v127 = vaddw_u16(vaddq_s32(v127, v141), *v143.i8);
        v135 = vaddq_s32(v135, v138);
        a10 = vaddq_s32(a10, v139);
        v129 = vaddq_s32(v129, v141);
        v136 = vaddq_s32(v136, v140);
        v130 -= 16;
      }

      while (v130);
      a9 = vaddq_s32(v127, v133);
      v118 = vaddvq_s32(vaddq_s32(a9, vaddq_s32(v128, v134)));
      v119 = vaddvq_s32(vaddq_s32(vaddq_s32(v129, v135), vaddq_s32(a10, v136)));
      if (v121 == (v121 & 0x3FFFFFFFFFFFFFF0))
      {
        goto LABEL_232;
      }

      v126 = v121 & 0x3FFFFFFFFFFFFFF0;
      v125 = 8 * (v121 & 0x3FFFFFFFFFFFFFF0);
      if ((v121 & 0xC) == 0)
      {
        goto LABEL_244;
      }
    }

    else
    {
      v126 = 0;
    }

    v145 = v118;
    v146 = v119;
    do
    {
      v147 = (v126 & 0x1FFFFFFFFFFFFFFCLL) + (v117 >> 3) * v120;
      a9.i32[0] = *(*v113 + v147);
      a9.i64[0] = vmovl_u8(*a9.i8).u64[0];
      a10.i32[0] = *(*(v113 + 8) + v147);
      a10.i64[0] = vmovl_u8(*a10.i8).u64[0];
      v145 = vaddw_u16(vaddw_u16(v145, *a9.i8), *a10.i8);
      v146 = vaddw_u16(v146, *a9.i8);
      v126 += 4;
    }

    while (v122 != v126);
    v118 = vaddvq_s32(v145);
    v119 = vaddvq_s32(v146);
    v125 = 8 * (v121 & 0x3FFFFFFFFFFFFFFCLL);
    if (v121 != v122)
    {
      goto LABEL_244;
    }

LABEL_232:
    v117 += 8;
    v124 = (v124 + v120);
    v123 = (v123 + v120);
  }

  while (v117 < v115);
  if (v118 >= 1)
  {
    *(v12 + 159) = v119 * 100.0 / v118 * 0.25 + *(v12 + 159) * 0.75;
  }

LABEL_217:
  v12[150] = v12[34];
  if ((v112 & 1) == 0)
  {
LABEL_218:
    if (!*(v15 + 16))
    {
      v12[158] = 0;
    }
  }

LABEL_220:
  v12[81] = v12[35];
  if (v79 && v11[1] < v11[3] - 1)
  {
    v21[57] = v26;
  }

  *(v113 + 396) = v14[54];
}

uint64_t vp9_calc_pframe_target_size_one_pass_vbr(unsigned int *a1)
{
  v2 = (a1 + 184641);
  v3 = a1 + 48640;
  v4 = a1[184771];
  v5 = a1[184649];
  if (!v5 && (*v3 || a1[48641]))
  {
    v6 = a1[184650];
    v7 = *v2;
    v8 = v6 * v4 * v7;
    if (!a1[188635])
    {
      goto LABEL_7;
    }

LABEL_3:
    v9 = vp9_calc_pframe_target_size_one_pass_cbr(a1);
    goto LABEL_8;
  }

  v6 = a1[184650];
  LODWORD(v7) = *v2;
  v8 = *v2 * v6;
  if (a1[188635])
  {
    goto LABEL_3;
  }

LABEL_7:
  v9 = v8 / (v4 + v7 - 1);
LABEL_8:
  if (v9 >= 0x7FFFFFFF)
  {
    LODWORD(v9) = 0x7FFFFFFF;
  }

  v10 = v6 >> 5;
  if (v2[10] > v6 >> 5)
  {
    v10 = v2[10];
  }

  if (v10 > v9)
  {
    LODWORD(v9) = v10;
  }

  if (*v3)
  {
    v11 = v5 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    LODWORD(v9) = v10;
  }

  if (v9 >= v2[11])
  {
    LODWORD(v9) = v2[11];
  }

  v12 = a1[47516];
  v13 = v12 * v6 / 100;
  if (v13 >= v9)
  {
    LODWORD(v13) = v9;
  }

  if (v12)
  {
    return v13;
  }

  else
  {
    return v9;
  }
}

uint64_t vp9_calc_pframe_target_size_one_pass_cbr(uint64_t a1)
{
  v1 = (a1 + 754540);
  v2 = (a1 + 738564);
  v3 = *(a1 + 738752);
  v4 = *(a1 + 738648);
  v5 = ((v3 * 0xA3D70A3D70A3D70BLL) >> 64) + v3;
  v6 = v5 >> 6;
  v7 = *(a1 + 738600);
  v8 = v7 >> 4;
  if (v7 >> 4 <= 200)
  {
    v8 = 200;
  }

  v9 = *(a1 + 190068);
  if (v9)
  {
    if (*(a1 + 194560))
    {
      v2 = *v2;
      v10 = v7 * (v9 + 100) * v2;
    }

    else
    {
      LODWORD(v2) = *v2;
      v10 = 100 * v7 * v2;
    }

    v11 = v10 / (v9 + 100 * v2);
    v12 = v3 - v4;
    v13 = v6 + (v5 >> 63);
    if (!*v1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = *(a1 + 738600);
    v12 = v3 - v4;
    v13 = v6 + (v5 >> 63);
    if (!*v1)
    {
      goto LABEL_11;
    }
  }

  if (!*(a1 + 190076))
  {
    v11 = *(a1 + 13936 * (*(a1 + 754548) + *(a1 + 754556) * *(a1 + 754544)) + 759672);
    v8 = v11 >> 4;
    if (v11 >> 4 <= 200)
    {
      v8 = 200;
    }

    v14 = v13 + 1;
    if (v12 >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_11:
  v14 = v13 + 1;
  if (v12 >= 1)
  {
LABEL_12:
    v15 = v12 / v14;
    if (v15 >= *(a1 + 190096))
    {
      LODWORD(v15) = *(a1 + 190096);
    }

    v16 = ((v11 * v15 * 0x5C28F5C28F5C28F5) >> 64) - v11 * v15;
    goto LABEL_15;
  }

LABEL_19:
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  v20 = -(v12 / v14);
  if (v20 >= *(a1 + 190100))
  {
    LODWORD(v20) = *(a1 + 190100);
  }

  v16 = ((v11 * v20 * 0xA3D70A3D70A3D70BLL) >> 64) + v11 * v20;
LABEL_15:
  v11 += (v16 >> 7) + (v16 >> 63);
LABEL_20:
  v17 = *(a1 + 190064);
  if (v17 && v11 >= v17 * v7 / 100)
  {
    v11 = v17 * v7 / 100;
  }

  v18 = 0x7FFFFFFF;
  if (v11 < 0x7FFFFFFF)
  {
    v18 = v11;
  }

  if (v8 <= v18)
  {
    return v18;
  }

  else
  {
    return v8;
  }
}

uint64_t vp9_rc_get_one_pass_vbr_params(uint64_t result)
{
  v1 = result;
  v2 = result + 738460;
  v3 = (result + 194560);
  v4 = (result + 189844);
  v5 = (result + 171988);
  v6 = *(result + 194564);
  if (v6)
  {
LABEL_2:
    v7 = 0;
    *(result + 172972) = 1;
    if (*(result + 738548))
    {
      goto LABEL_64;
    }

    goto LABEL_12;
  }

  v8 = *v4;
  if (*v4)
  {
    v9 = *(result + 738572);
    if (*(result + 927160))
    {
      v8 = v9 == 0;
    }

    else if (v9)
    {
      if (*(result + 190072) == *(result + 942524))
      {
        goto LABEL_2;
      }

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  *(result + 172972) = 0;
  *(result + 738580) = v8;
  *(result + 738572) = *(result + 190084);
  *(result + 738496) = 2000;
  *(result + 738592) = 0;
  v7 = 1;
  if (*(result + 738548))
  {
    goto LABEL_64;
  }

LABEL_12:
  *(result + 738488) = 2000;
  if (*(result + 190148) != 3 || *(result + 190076))
  {
    v10 = *(result + 738556) + *(result + 738552);
    v11 = v10 - 42;
    if (v10 <= 41)
    {
      v12 = 10;
    }

    else
    {
      v12 = 20;
    }

    v13 = v10 >> 1;
    if (v11 < 0xFFFFFFEA)
    {
      v13 = v12;
    }

    goto LABEL_19;
  }

  v20 = *(result + 740272);
  v13 = 4 * (0x64u / *v20);
  if (*v20 < 11)
  {
    v13 = 40;
  }

  if (!*(result + 190092))
  {
    v13 = 20;
  }

  *(result + 738564) = v13;
  if (*(result + 739080) <= 49 && *(result + 738576) >= 41 && v20[33])
  {
    v13 = 10;
LABEL_19:
    *(result + 738564) = v13;
  }

  *(result + 739084) = 10;
  v14 = *(result + 738688);
  if (v14 < 1)
  {
    v15 = 1.0;
    if (*v4 < 0x1F)
    {
      goto LABEL_55;
    }

LABEL_24:
    if (*(result + 738628) <= (7 * *(result + 738736)) >> 3 || v15 <= 3.5)
    {
      v16 = *(result + 739080);
      if ((v16 - 1) <= 0x12)
      {
        v13 >>= 1;
        if (v13 <= 6)
        {
          v13 = 6;
        }

        *(result + 738564) = v13;
        goto LABEL_34;
      }
    }

    else
    {
      v13 += v13 >> 1;
      if (v13 >= 0xF)
      {
        v13 = 15;
      }

      *(result + 738564) = v13;
      v16 = *(result + 739080);
    }

    if (v16 <= 0)
    {
      LOWORD(v18) = 2000;
      if (!v16 && v15 > 1.0)
      {
        LOWORD(v18) = 1000;
        *(result + 738488) = 1000;
      }

LABEL_53:
      v19 = (3 * v18) / 0x190u;
LABEL_54:
      *(result + 739084) = v19;
      goto LABEL_55;
    }

LABEL_34:
    v17 = 4000 * v16 / (v16 + 100);
    if (v17 <= 500)
    {
      v18 = 500;
    }

    else
    {
      v18 = v17;
    }

    *(result + 738488) = v18;
    if (v17 <= 2133)
    {
      v19 = 5;
    }

    else
    {
      v19 = 15;
    }

    if ((v18 - 2134) < 0xFFFFFA45)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v15 = *(result + 738692) / v14;
  if (*v4 >= 0x1F)
  {
    goto LABEL_24;
  }

LABEL_55:
  if (*(result + 739168))
  {
    v21 = *(result + 738572);
    *(result + 738568) = 0;
    if (v13 < v21 && ((7 * v13) >> 2) >= v21)
    {
      v21 = v21 >> (v21 > 9);
LABEL_60:
      *(result + 738564) = v21;
      *(result + 738568) = 1;
      v13 = v21;
      goto LABEL_61;
    }

    if (v13 > v21)
    {
      goto LABEL_60;
    }
  }

LABEL_61:
  *(result + 738548) = v13;
  *v3 = 1;
  *(result + 738588) = 0;
  *(result + 739056) = 0;
  if (*(result + 740140) && *(result + 190304))
  {
    *(result + 738588) = 1;
    *(result + 739056) = 1;
  }

LABEL_64:
  if (v7)
  {
    v22 = *(result + 738600);
    LODWORD(v23) = 25 * v22;
    if (v22 > 85899345)
    {
      LODWORD(v23) = 0x7FFFFFFF;
    }

    v24 = *(result + 190060);
    if (v24)
    {
      v25 = v24 * v22;
      if (v25 / 100 < v23)
      {
        v23 = v25 / 100;
      }
    }

    if (v23 >= *(result + 738608))
    {
      LODWORD(v23) = *(result + 738608);
    }

    *v2 = v23;
    if (*(result + 190156) != 2)
    {
      goto LABEL_99;
    }

LABEL_97:
    v34 = *(v2 + 328);
    if (v34)
    {
      LODWORD(v23) = (rate_thresh_mult[v34] * v23);
      *v2 = v23;
    }

    goto LABEL_99;
  }

  v26 = *(result + 739084);
  v27 = *(result + 738596);
  if (!v27 && *v3 | v6)
  {
    v22 = *(result + 738600);
    v28 = *(result + 738564);
    v29 = v22 * v26 * v28;
    if (!*(result + 754540))
    {
      goto LABEL_79;
    }

LABEL_76:
    result = vp9_calc_pframe_target_size_one_pass_cbr(result);
    v23 = result;
    goto LABEL_80;
  }

  v22 = *(result + 738600);
  LODWORD(v28) = *(result + 738564);
  v29 = v28 * v22;
  if (*(result + 754540))
  {
    goto LABEL_76;
  }

LABEL_79:
  v23 = v29 / (v26 + v28 - 1);
LABEL_80:
  if (v23 >= 0x7FFFFFFF)
  {
    LODWORD(v23) = 0x7FFFFFFF;
  }

  v30 = v22 >> 5;
  if (*(v2 + 144) > v22 >> 5)
  {
    v30 = *(v2 + 144);
  }

  if (v30 > v23)
  {
    LODWORD(v23) = v30;
  }

  if (*v3)
  {
    v31 = v27 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    LODWORD(v23) = v30;
  }

  if (v23 >= *(v2 + 148))
  {
    LODWORD(v23) = *(v2 + 148);
  }

  v32 = v4[55];
  if (v32)
  {
    v33 = v32 * v22;
    if (v33 / 100 < v23)
    {
      v23 = v33 / 100;
    }
  }

  *v2 = v23;
  if (v4[78] == 2)
  {
    goto LABEL_97;
  }

LABEL_99:
  v35 = (v23 << 12) / (v5[1] * *v5);
  if (v35 >= 0x7FFFFFFF)
  {
    LODWORD(v35) = 0x7FFFFFFF;
  }

  *(v2 + 8) = v35;
  if (v5[247])
  {
    v36 = *(v2 + 196) + v22;
    if (v36 >= *(v2 + 300))
    {
      v36 = *(v2 + 300);
    }

    *(v2 + 196) = v36;
    *(v2 + 188) = v36;
  }

  if (v4[76] == 3 && !v4[58])
  {

    return vp9_cyclic_refresh_update_parameters(v1);
  }

  return result;
}

uint64_t vp9_rc_get_svc_params(uint64_t result)
{
  v1 = result;
  v2 = result + 926168;
  v3 = (result + 754540);
  v4 = result + 738460;
  v5 = result + 194512;
  v6 = (result + 189844);
  v7 = (result + 171988);
  LODWORD(v8) = *(result + 738600);
  v9 = *(result + 754556);
  v10 = *(result + 754544);
  v11 = *(result + 754548);
  v12 = v11 + v9 * v10;
  if (*(result + 927028))
  {
    *(result + 13936 * v11 + 772756) = 0;
  }

  v13 = *v6;
  if (!*v6 && !*(result + 926993) || (*(result + 927160) & 1) != 0 || *(result + 190080) && !(*(result + 926392) % *(result + 190084)) && !*(result + 926993) && !v10 || *(result + 926952) == 1 && !v10 || *(result + 190072) != *(result + 942524))
  {
    *(result + 172972) = 0;
    *(result + 738592) = 0;
    if (!*v3 || *(result + 190076))
    {
      goto LABEL_48;
    }

    v16 = result + 194512;
    if (v13)
    {
      result = vp9_svc_reset_temporal_layers(result, 1);
      v9 = v3[4];
      v10 = v3[1];
      v11 = v3[2];
      v12 = v11 + v9 * v10;
    }

    *(v1 + 758936 + 13936 * v12 + 13820) = 1;
    *(v4 + 1068) &= 0xFFFFFFF8;
    if (v6[62] != 1)
    {
      v24 = *(v4 + 140);
      LODWORD(v22) = 25 * v24;
      if (v24 > 85899345)
      {
        LODWORD(v22) = 0x7FFFFFFF;
      }

      v25 = v6[54];
      v5 = v16;
      if (v25 && v25 * v24 / 100 < v22)
      {
        v22 = v25 * v24 / 100;
      }

      goto LABEL_45;
    }

    v5 = v16;
    if (*v6)
    {
      v17 = (v1 + 758936 + 13936 * v12 + 728);
      if (v9 <= 1)
      {
        v17 = (v4 + 716);
      }

      v18 = *v17;
      v19 = llround(*v17 * 2.0 + -16.0);
      if (v19 <= 32)
      {
        v19 = 32;
      }

      v20 = *(v4 + 116);
      v21 = v18 * 0.5;
      if (v21 > v20)
      {
        v19 = llround((v19 * v20) / v21);
      }

      v22 = (*(v4 + 140) * (v19 + 16)) >> 4;
      if (v22 >= 0x7FFFFFFF)
      {
        LODWORD(v22) = 0x7FFFFFFF;
      }

      v23 = v6[54];
      if (!v23)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v22 = *(v4 + 284) / 2;
      if (v22 >= 0x7FFFFFFF)
      {
        LODWORD(v22) = 0x7FFFFFFF;
      }

      v23 = v6[54];
      if (!v23)
      {
        goto LABEL_45;
      }
    }

    v26 = *(v4 + 140) * v23;
    if (v26 / 100 < v22)
    {
      v22 = v26 / 100;
    }

LABEL_45:
    if (v22 >= *(v4 + 148))
    {
      LODWORD(v8) = *(v4 + 148);
    }

    else
    {
      LODWORD(v8) = v22;
    }

    goto LABEL_48;
  }

  *(result + 172972) = 1;
  if (!*v3 || *(result + 190076))
  {
    goto LABEL_48;
  }

  v14 = result + 758936;
  if (v10 || !v13)
  {
    v15 = *(v14 + 13936 * v11 + 13820);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 13936 * v12 + 13820) = v15;
  v141 = result + 194512;
  if (*(result + 190092) == 1)
  {
    v130 = v10;
    result = vp9_calc_pframe_target_size_one_pass_cbr(result);
    v10 = v130;
    v5 = v141;
    LODWORD(v8) = result;
    goto LABEL_48;
  }

  v140 = v10;
  *(result + 738832) = 0x640000008CLL;
  v131 = *(result + 738688);
  if (v131 < 1)
  {
    goto LABEL_324;
  }

  v132 = *(result + 738692) / v131;
  if (v132 < 1.0)
  {
    v133 = 120;
LABEL_323:
    *(result + 738832) = v133;
    goto LABEL_324;
  }

  if (v132 > 2.0)
  {
    v133 = 160;
    goto LABEL_323;
  }

LABEL_324:
  v139 = *(result + 738596);
  result = vp9_calc_pframe_target_size_one_pass_cbr(result);
  v134 = v8 >> 5;
  if (*(v4 + 144) > v8 >> 5)
  {
    v134 = *(v4 + 144);
  }

  if (v134 <= result)
  {
    v135 = result;
  }

  else
  {
    v135 = v134;
  }

  v5 = v141;
  if (*(v141 + 48))
  {
    v136 = v139 == 0;
  }

  else
  {
    v136 = 1;
  }

  if (v136)
  {
    v134 = v135;
  }

  if (v134 >= *(v4 + 148))
  {
    v134 = *(v4 + 148);
  }

  v137 = v6[55];
  if (v137)
  {
    v138 = v137 * v8;
    if (v138 / 100 >= v134)
    {
      LODWORD(v8) = v134;
    }

    else
    {
      v8 = v138 / 100;
    }
  }

  else
  {
    LODWORD(v8) = v134;
  }

  v10 = v140;
LABEL_48:
  if (!*(v2 + 964))
  {
    goto LABEL_78;
  }

  if (v10 < 1 || *(v1 + 758936 + 13936 * v12 + 13820) != 1)
  {
    goto LABEL_77;
  }

  v7[246] = 0;
  *(v4 + 1068) &= 0xFFFFFFF8;
  if (v6[62] != 1)
  {
    v34 = *(v4 + 140);
    LODWORD(v32) = 25 * v34;
    if (v34 > 85899345)
    {
      LODWORD(v32) = 0x7FFFFFFF;
    }

    v35 = v6[54];
    if (v35 && v35 * v34 / 100 < v32)
    {
      v32 = v35 * v34 / 100;
    }

    goto LABEL_74;
  }

  if (*v6)
  {
    v27 = (v1 + 758936 + 13936 * (v11 + v10 * v9) + 728);
    if (v9 <= 1)
    {
      v27 = (v4 + 716);
    }

    v28 = *v27;
    v29 = llround(*v27 * 2.0 + -16.0);
    if (v29 <= 32)
    {
      v29 = 32;
    }

    v30 = *(v4 + 116);
    v31 = v28 * 0.5;
    if (v31 > v30)
    {
      v29 = llround((v29 * v30) / v31);
    }

    v32 = (*(v4 + 140) * (v29 + 16)) >> 4;
    if (v32 >= 0x7FFFFFFF)
    {
      LODWORD(v32) = 0x7FFFFFFF;
    }

    v33 = v6[54];
    if (!v33)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v32 = *(v4 + 284) / 2;
    if (v32 >= 0x7FFFFFFF)
    {
      LODWORD(v32) = 0x7FFFFFFF;
    }

    v33 = v6[54];
    if (!v33)
    {
      goto LABEL_74;
    }
  }

  v36 = *(v4 + 140) * v33;
  if (v36 / 100 < v32)
  {
    v32 = v36 / 100;
  }

LABEL_74:
  if (v32 >= *(v4 + 148))
  {
    LODWORD(v8) = *(v4 + 148);
  }

  else
  {
    LODWORD(v8) = v32;
  }

LABEL_77:
  if (v7[246])
  {
LABEL_78:
    v37 = v1 + 758936;
    if (*(v1 + 758936 + 13936 * v11 + 13820))
    {
      goto LABEL_79;
    }

    goto LABEL_233;
  }

  v39 = v3[3];
  if (v39 == 3)
  {
    if (v10 > 2)
    {
      goto LABEL_232;
    }

    v41 = v10 + 3;
    v40 = dword_273BD4358[v10];
  }

  else
  {
    if (v39 != 2)
    {
      goto LABEL_232;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_232;
      }

      v40 = 6;
      v41 = 3;
    }

    else
    {
      v40 = 6;
      v41 = 2;
    }
  }

  *v5 = v10;
  *(v5 + 4) = v41;
  *(v5 + 8) = v40;
LABEL_232:
  *(v5 + 60) = 0x100000001;
  *(v5 + 68) = 1;
  v37 = v1 + 758936;
  if (*(v1 + 758936 + 13936 * v11 + 13820))
  {
    goto LABEL_79;
  }

LABEL_233:
  if (v10)
  {
    if (v10 < 1)
    {
      goto LABEL_79;
    }
  }

  else
  {
    if (!*(v2 + 826))
    {
      v10 = 0;
      goto LABEL_79;
    }

    v126 = v5;
    result = vp9_svc_reset_temporal_layers(v1, v7[246] == 0);
    v5 = v126;
    v10 = v3[1];
    if (v10 < 1)
    {
      goto LABEL_79;
    }
  }

  if (*(v1 + 4 * v10 + 926952))
  {
    *(v4 + 1068) &= ~1u;
    if (*(v2 + 204))
    {
      *(v2 + 204) = 0;
      *(v4 + 104) = 0;
      *(v4 + 88) = 0;
      *(v5 + 8) = *(v1 + 8 * (v10 - (v3[3] == 3)) + 926376);
      *(v5 + 68) = 1;
    }
  }

LABEL_79:
  if (*(v2 + 204))
  {
    v38 = v3[2];
    if (*(v37 + 13936 * v38 + 13820))
    {
      if (v38)
      {
        goto LABEL_95;
      }
    }

    else
    {
      *(v5 + 4) = *(v1 + 8 * (v10 - (v3[3] == 3)) + 926376);
      *(v4 + 1068) = 3;
      if (v38)
      {
        goto LABEL_95;
      }
    }

    if (*(v1 + 772756))
    {
      *(v5 + 8) = *(v1 + 8 * (v10 - (v3[3] == 3)) + 926376);
      *(v5 + 68) = 1;
    }

    else if (!*(v4 + 88))
    {
      *(v4 + 104) = 20;
      *(v4 + 88) = 20;
      *(v5 + 64) = 1;
      *(v4 + 28) = 2000;
    }
  }

  else if (!*(v2 + 200))
  {
    *(v4 + 88) = 0x7FFFFFFF;
    *(v4 + 104) = 0x7FFFFFFF;
  }

LABEL_95:
  if (!*(v2 + 824))
  {
    goto LABEL_134;
  }

  v42 = *v6;
  if (*v6 || v3[4] <= 1)
  {
    v43 = v3[3];
    if (v43 <= 3 && v43 != 1 && v3[4] <= 3)
    {
      *(v7 + 1000) = 1;
      *(v7 + 123) = 1;
      *&v49 = 0x100000001;
      *(&v49 + 1) = 0x100000001;
      *(v5 + 56) = v49;
      if (!v42)
      {
        *v5 = 0x100000000;
        *(v5 + 8) = 2;
        goto LABEL_99;
      }

      *v5 = -1;
      v50 = -1;
      *(v5 + 8) = -1;
      *(v2 + 696) = 0;
      v51 = *(v2 + 827);
      if (v51 == 1)
      {
        v50 = 0;
        v52 = 1;
        *(v2 + 696) = 1;
        *v5 = 0;
        if (*(v2 + 828) != 1)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v52 = 0;
        if (*(v2 + 828) != 1)
        {
LABEL_114:
          v53 = v52;
          if (v52 != 1)
          {
            goto LABEL_115;
          }

          goto LABEL_193;
        }
      }

      v53 = v52 + 1;
      v52 |= 2u;
      *(v2 + 696) = v52;
      if (v53 != 1)
      {
LABEL_115:
        if (v53 == 2)
        {
          v54 = 0;
          v55 = 1;
          *(v5 + 4) = 1;
        }

        else
        {
          v55 = -1;
          v54 = 1;
        }

        goto LABEL_243;
      }

LABEL_193:
      v54 = 1;
      if (v51 == 1)
      {
        v55 = -1;
      }

      else
      {
        *v5 = 1;
        v55 = -1;
        v50 = 1;
      }

LABEL_243:
      if (*(v2 + 829) == 1)
      {
        v52 |= 4u;
        *(v2 + 696) = v52;
        ++v53;
      }

      switch(v53)
      {
        case 1:
          if (v50 == -1)
          {
            v50 = 2;
            *v5 = 2;
          }

          break;
        case 2:
          if (v54)
          {
            v55 = 2;
            *(v5 + 4) = 2;
          }

          break;
        case 3:
          v127 = 0;
          v128 = 2;
          *(v5 + 8) = 2;
          goto LABEL_254;
      }

      v128 = -1;
      v127 = 1;
LABEL_254:
      if (*(v2 + 830) == 1)
      {
        v52 |= 8u;
        *(v2 + 696) = v52;
        ++v53;
      }

      if (v53 == 1)
      {
        if (v50 == -1)
        {
          v50 = 3;
          *v5 = 3;
        }
      }

      else if (v53 == 2)
      {
        if (v55 == -1)
        {
          v55 = 3;
          *(v5 + 4) = 3;
        }
      }

      else if (v53 == 3 && v127)
      {
        v128 = 3;
        *(v5 + 8) = 3;
      }

      if (*(v2 + 831) == 1)
      {
        v52 |= 0x10u;
        *(v2 + 696) = v52;
        ++v53;
      }

      if (v53 == 1)
      {
        if (v50 == -1)
        {
          v50 = 4;
          *v5 = 4;
        }
      }

      else if (v53 == 2)
      {
        if (v55 == -1)
        {
          v55 = 4;
          *(v5 + 4) = 4;
        }
      }

      else if (v53 == 3 && v128 == -1)
      {
        v128 = 4;
        *(v5 + 8) = 4;
      }

      if (*(v2 + 832) == 1)
      {
        v52 |= 0x20u;
        *(v2 + 696) = v52;
        ++v53;
      }

      if (v53 == 1)
      {
        if (v50 == -1)
        {
          v50 = 5;
          *v5 = 5;
        }
      }

      else if (v53 == 2)
      {
        if (v55 == -1)
        {
          v55 = 5;
          *(v5 + 4) = 5;
        }
      }

      else if (v53 == 3 && v128 == -1)
      {
        v128 = 5;
        *(v5 + 8) = 5;
      }

      if (*(v2 + 833) == 1)
      {
        v52 |= 0x40u;
        *(v2 + 696) = v52;
        ++v53;
      }

      if (v53 == 1)
      {
        if (v50 == -1)
        {
          v50 = 6;
          *v5 = 6;
        }
      }

      else if (v53 == 2)
      {
        if (v55 == -1)
        {
          v55 = 6;
          *(v5 + 4) = 6;
        }
      }

      else if (v53 == 3 && v128 == -1)
      {
        v128 = 6;
        *(v5 + 8) = 6;
      }

      if (*(v2 + 834) == 1)
      {
        *(v2 + 696) = v52 | 0x80;
        ++v53;
      }

      if (v53 == 1)
      {
        if (v50 == -1)
        {
          v50 = 7;
          *v5 = 7;
        }
      }

      else
      {
        if (v53 == 2)
        {
          if (v55 == -1)
          {
            v129 = 7;
LABEL_310:
            *(v5 + 4) = v129;
          }

LABEL_311:
          if (v128 == -1)
          {
            *(v5 + 8) = v50;
          }

          if (*v2 == 1)
          {
            *(v5 + 64) = 0;
            *(v5 + 60) = 0;
            *(v4 + 1068) = 0;
          }

          goto LABEL_99;
        }

        if (v53 == 3 && v128 == -1)
        {
          v128 = 7;
          *(v5 + 8) = 7;
        }
      }

      v129 = v50;
      if (v55 == -1)
      {
        goto LABEL_310;
      }

      goto LABEL_311;
    }
  }

LABEL_99:
  if (v6[62] != 1)
  {
    v46 = *(v4 + 140);
    LODWORD(v47) = 25 * v46;
    if (v46 > 85899345)
    {
      LODWORD(v47) = 0x7FFFFFFF;
    }

    v48 = v6[54];
    if (v48 && v48 * v46 / 100 < v47)
    {
      v47 = v48 * v46 / 100;
    }

    goto LABEL_131;
  }

  if (v42)
  {
    v44 = v3[4];
    if (v44 < 2)
    {
      v45 = (v4 + 716);
    }

    else
    {
      v45 = (v37 + 13936 * (v3[2] + v10 * v44) + 728);
    }

    v57 = *v45;
    v58 = llround(*v45 * 2.0 + -16.0);
    if (v58 <= 32)
    {
      v58 = 32;
    }

    v59 = *(v4 + 116);
    v60 = v57 * 0.5;
    if (v60 > v59)
    {
      v58 = llround((v58 * v59) / v60);
    }

    v47 = (*(v4 + 140) * (v58 + 16)) >> 4;
    if (v47 >= 0x7FFFFFFF)
    {
      LODWORD(v47) = 0x7FFFFFFF;
    }

    v56 = v6[54];
    if (!v56)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v47 = *(v4 + 284) / 2;
    if (v47 >= 0x7FFFFFFF)
    {
      LODWORD(v47) = 0x7FFFFFFF;
    }

    v56 = v6[54];
    if (!v56)
    {
      goto LABEL_131;
    }
  }

  v61 = *(v4 + 140) * v56;
  if (v61 / 100 < v47)
  {
    v47 = v61 / 100;
  }

LABEL_131:
  if (v47 >= *(v4 + 148))
  {
    LODWORD(v8) = *(v4 + 148);
  }

  else
  {
    LODWORD(v8) = v47;
  }

LABEL_134:
  if (*(v2 + 825))
  {
    *(v4 + 1068) |= 1u;
  }

  if (v6[76] == 3)
  {
    result = vp9_cyclic_refresh_update_parameters(v1);
  }

  *v4 = v8;
  v62 = v6[78];
  if (v62 == 2)
  {
    v63 = *(v4 + 328);
    if (v63)
    {
      LODWORD(v8) = (rate_thresh_mult[v63] * v8);
      *v4 = v8;
    }
  }

  v64 = (v1 + 933792);
  v65 = (v8 << 12) / (v7[1] * *v7);
  if (v65 >= 0x7FFFFFFF)
  {
    LODWORD(v65) = 0x7FFFFFFF;
  }

  *(v4 + 8) = v65;
  if (v7[247])
  {
    v66 = v3[2];
    v67 = v3[4];
    if (v66 < v67)
    {
      v68 = v3[1];
      v69 = v68 * v67;
      if (*(v2 + 836))
      {
        if (v67 != 1 || (v70 = *(v2 + 912), v71 = *(v1 + 8 * v68 + 927088), v72 = __OFSUB__(v70, v71), v73 = v70 - v71, (v73 < 0) ^ v72 | (v73 == 0)))
        {
          v92 = v37 + 13936 * (v69 + v66);
          v93 = round(*(v92 + 720) / *(v92 + 728));
          if (v93 >= 2147483650.0)
          {
            v93 = 2147483650.0;
          }

          v94 = *(v92 + 200) + v93;
          if (v94 >= *(v92 + 304))
          {
            v94 = *(v92 + 304);
          }

          *(v92 + 192) = v94;
          *(v92 + 200) = v94;
          *(v4 + 196) = v94;
          *(v4 + 188) = v94;
          if (v66 + 1 != v67)
          {
            v95 = v66 - v67;
            v96 = v1 + 13936 * (v66 + v69) + 773064;
            v97 = -1;
            do
            {
              v98 = round(*(v96 + 528) / *(v96 + 536));
              if (v98 >= 2147483650.0)
              {
                v98 = 2147483650.0;
              }

              v99 = *(v96 + 8) + v98;
              if (v99 >= *(v96 + 112))
              {
                v99 = *(v96 + 112);
              }

              *v96 = v99;
              *(v96 + 8) = v99;
              if (!v97)
              {
                *(v4 + 196) = v99;
                *(v4 + 188) = v99;
              }

              --v97;
              v96 += 13936;
            }

            while (v95 != v97);
          }
        }

        else
        {
          v74 = v69;
          v75 = v37 + 13936 * (v69 + v66);
          v76 = *(v75 + 720);
          if (*(v2 + 224) <= 0)
          {
            v100 = round(v76 / *(v75 + 728));
            if (v100 >= 2147483650.0)
            {
              v100 = 2147483650.0;
            }

            v101 = *(v75 + 200) + v100;
            if (v101 >= *(v75 + 304))
            {
              v101 = *(v75 + 304);
            }

            *(v75 + 192) = v101;
            *(v75 + 200) = v101;
            *(v4 + 196) = v101;
            *(v4 + 188) = v101;
            if (v66)
            {
              v102 = v1 + 13936 * (v66 + v74) + 773064;
              v103 = -1;
              do
              {
                v104 = round(*(v102 + 528) / *(v102 + 536));
                if (v104 >= 2147483650.0)
                {
                  v104 = 2147483650.0;
                }

                v105 = *(v102 + 8) + v104;
                if (v105 >= *(v102 + 112))
                {
                  v105 = *(v102 + 112);
                }

                *v102 = v105;
                *(v102 + 8) = v105;
                if (!v103)
                {
                  *(v4 + 196) = v105;
                  *(v4 + 188) = v105;
                }

                --v103;
                v102 += 13936;
                ++v66;
              }

              while (v66);
            }
          }

          else
          {
            v77 = 10000000.0 / v73;
            v78 = round(v76 / v77);
            if (v78 >= 2147483650.0)
            {
              v78 = 2147483650.0;
            }

            v79 = *(v75 + 200) + v78;
            if (v79 >= *(v75 + 304))
            {
              v79 = *(v75 + 304);
            }

            *(v75 + 192) = v79;
            *(v75 + 200) = v79;
            *(v4 + 196) = v79;
            *(v4 + 188) = v79;
            if (v66)
            {
              v80 = v1 + 13936 * (v66 + v74) + 773064;
              v81 = -1;
              do
              {
                v82 = round(*(v80 + 528) / v77);
                if (v82 >= 2147483650.0)
                {
                  v82 = 2147483650.0;
                }

                v83 = *(v80 + 8) + v82;
                if (v83 >= *(v80 + 112))
                {
                  v83 = *(v80 + 112);
                }

                *v80 = v83;
                *(v80 + 8) = v83;
                if (!v81)
                {
                  *(v4 + 196) = v83;
                  *(v4 + 188) = v83;
                }

                --v81;
                v80 += 13936;
                ++v66;
              }

              while (v66);
            }
          }
        }
      }

      else
      {
        v84 = v37 + 13936 * (v69 + v66);
        v85 = round(*(v84 + 720) / *(v84 + 728));
        if (v85 >= 2147483650.0)
        {
          v85 = 2147483650.0;
        }

        v86 = *(v84 + 200) + v85;
        if (v86 >= *(v84 + 304))
        {
          v86 = *(v84 + 304);
        }

        *(v84 + 192) = v86;
        *(v84 + 200) = v86;
        *(v4 + 196) = v86;
        *(v4 + 188) = v86;
        if (v66 + 1 != v67)
        {
          v87 = v66 - v67;
          v88 = v1 + 13936 * (v66 + v69) + 773064;
          v89 = -1;
          do
          {
            v90 = round(*(v88 + 528) / *(v88 + 536));
            if (v90 >= 2147483650.0)
            {
              v90 = 2147483650.0;
            }

            v91 = *(v88 + 8) + v90;
            if (v91 >= *(v88 + 112))
            {
              v91 = *(v88 + 112);
            }

            *v88 = v91;
            *(v88 + 8) = v91;
            if (!v89)
            {
              *(v4 + 196) = v91;
              *(v4 + 188) = v91;
            }

            --v89;
            v88 += 13936;
          }

          while (v87 != v89);
        }
      }
    }
  }

  if (v62 != 2 || *(v2 + 968) != 1 || v3[1] != *(v2 + 860) || v3[2])
  {
    v106 = 0;
    *v64 = 0;
LABEL_213:
    *(v2 + 972) = v106;
    return result;
  }

  result = vp9_resize_one_pass_cbr(v1);
  *v64 = result;
  if (result)
  {
    v107 = v3[4];
    v108 = v3[1] * v107;
    if (v107 >= 1)
    {
      v109 = 0;
      v110 = *(v1 + 933804);
      v111 = *(v4 + 52);
      v112 = 13936 * v107;
      v113 = v1 + 13936 * v108 + 759684;
      do
      {
        *(v113 + v109 + 8) = vmul_s32(*(v113 + v109), v110);
        v114 = *(v113 + v109 - 452);
        *(v113 + v109 - 556) = v114;
        *(v113 + v109 - 548) = v114;
        *(v113 + v109 - 692) = v111;
        v109 += 13936;
      }

      while (v112 != v109);
    }

    v115 = v37 + 13936 * (v3[2] + v108);
    v116 = v6[37];
    v117 = v6[38];
    v118 = *(v115 + 756);
    v119 = *(v115 + 760);
    if (v118)
    {
      v120 = v119 == 0;
    }

    else
    {
      v120 = 1;
    }

    if (!v120)
    {
      v121 = v118 * v116 / v119;
      v122 = v118 * v117;
      v123 = v121 & 1;
      if (v121 < 0)
      {
        v123 = -v123;
      }

      v116 = v123 + v121;
      v124 = v122 / v119;
      v125 = v124 & 1;
      if (v124 < 0)
      {
        v125 = -v125;
      }

      v117 = v125 + v124;
    }

    result = vp9_set_size_literal(v1, v116, v117);
    v106 = 1;
    goto LABEL_213;
  }

  return result;
}