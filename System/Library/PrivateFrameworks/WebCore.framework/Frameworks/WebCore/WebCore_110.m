int *silk_LP_variable_cutoff(int *result, __int16 *a2, uint64_t a3)
{
  v3 = result[3];
  if (v3)
  {
    v4 = result[2];
    v5 = (0x40000 - (v4 << 10)) >> 16;
    if (v5 > 3)
    {
      v12 = 89306658;
      v16 = 35497197;
      v17 = 57401098;
      v11 = 178584282;
      v9 = 89306658;
    }

    else
    {
      v6 = (-1024 * v4);
      if (-1024 * v4)
      {
        v7 = (&silk_Transition_LP_B_Q28 + 12 * v5);
        v8 = v7[2];
        if (v6 >= 0x8000)
        {
          v9 = v7[3] + (((-1024 * v4) * (v7[3] - *v7)) >> 16);
          v20 = v7[5];
          v11 = v7[4] + ((v6 * (v7[4] - v7[1])) >> 16);
          v12 = v20 + ((v6 * (v20 - v8)) >> 16);
          v21 = (&silk_Transition_LP_A_Q28 + 8 * v5);
          v22 = v21[1];
          v23 = v21 + 2;
          v16 = v21[2] + ((v6 * (v21[2] - *v21)) >> 16);
          v17 = v23[1] + ((v6 * (v23[1] - v22)) >> 16);
        }

        else
        {
          v9 = *v7 + (((v7[3] - *v7) * v6) >> 16);
          v10 = v7[5];
          v11 = v7[1] + (((v7[4] - v7[1]) * v6) >> 16);
          v12 = v8 + (((v10 - v8) * v6) >> 16);
          v13 = (&silk_Transition_LP_A_Q28 + 8 * v5);
          v14 = v13[1];
          v15 = v13 + 2;
          v16 = *v13 + (((v13[2] - *v13) * v6) >> 16);
          v17 = v14 + (((v15[1] - v14) * v6) >> 16);
        }
      }

      else
      {
        v18 = (&silk_Transition_LP_B_Q28 + 12 * v5);
        v9 = *v18;
        v11 = v18[1];
        v12 = v18[2];
        v19 = (&silk_Transition_LP_A_Q28 + 8 * v5);
        v16 = *v19;
        v17 = v19[1];
      }
    }

    v24 = (v4 + v3) & ~((v4 + v3) >> 31);
    if (v24 >= 256)
    {
      v24 = 256;
    }

    result[2] = v24;
    if (a3 >= 1)
    {
      v25 = -v17;
      v26 = -v16 & 0x3FFF;
      v27 = (-v16 >> 14);
      v28 = v25 & 0x3FFF;
      v29 = (v25 >> 14);
      v30 = *result;
      v31 = result[1];
      a3 = a3;
      do
      {
        v32 = 4 * (v30 + ((*a2 * v9) >> 16));
        v30 = v31 + ((*a2 * v11) >> 16) + ((v27 * v32) >> 16) + (((((v26 * v32) >> 16) >> 13) + 1) >> 1);
        v31 = ((v29 * v32) >> 16) + ((*a2 * v12) >> 16) + (((((v28 * v32) >> 16) >> 13) + 1) >> 1);
        v33 = (v32 + 0x3FFF) >> 14;
        if (v33 <= -32768)
        {
          v33 = -32768;
        }

        if (v33 >= 0x7FFF)
        {
          LOWORD(v33) = 0x7FFF;
        }

        *a2++ = v33;
        --a3;
      }

      while (a3);
      *result = v30;
      result[1] = v31;
    }
  }

  return result;
}

void silk_LPC_analysis_filter(_WORD *a1, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v40 = 2 * a5;
  }

  else
  {
    v6 = a4;
    if (a5 > 6)
    {
      v7 = a5;
      v8 = 8;
      if (a5 > 8uLL)
      {
        v8 = a5;
      }

      v9 = v8 - 7;
      v10 = (v9 >> 1) + 1;
      v11 = a2 + 2 * a5;
      v12 = (v11 - 76);
      v13 = v11 - 28;
      v14 = v11 - 4;
      v15 = v7;
      while (1)
      {
        v17 = (a2 + 2 * v15);
        v18 = vaddvq_s32(vmull_s16(vrev64_s16(*(v17 - 4)), *a3)) + a3[1].i16[0] * *(v17 - 5) + a3[1].i16[1] * *(v17 - 6);
        if (v9 >= 6)
        {
          if (v9 < 0x1E)
          {
            v20 = 0;
LABEL_19:
            v34 = v18;
            v35 = (v13 - 4 * v20);
            v36 = &a3[1] + 2 * v20 + 2;
            v37 = v20 - (v10 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              v76 = vld2_s16(v35);
              v77 = vld2_s16(v36);
              v36 += 8;
              v34 = vmlal_s16(vmlal_s16(v34, v77.val[0], vrev64_s16(v76.val[1])), v77.val[1], vrev64_s16(v76.val[0]));
              v35 -= 8;
              v37 += 4;
            }

            while (v37);
            v18 = vaddvq_s32(v34);
            v19 = (2 * v10) | 6;
            if (v10 == (v10 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_6;
            }

            goto LABEL_22;
          }

          v21 = v18;
          v22 = 0uLL;
          v23 = v10 & 0x7FFFFFFFFFFFFFF0;
          v24 = v12;
          v25 = &a3[5] + 2;
          v26 = 0uLL;
          v27 = 0uLL;
          do
          {
            v28 = v24;
            v78 = vld2q_s16(v28);
            v28 += 16;
            v79 = vld2q_s16(v28);
            v29 = vrev64q_s16(v79.val[0]);
            v30 = vextq_s8(v29, v29, 8uLL);
            v31 = vrev64q_s16(v78.val[0]);
            v32 = vextq_s8(v31, v31, 8uLL);
            v79.val[0] = vrev64q_s16(v79.val[1]);
            v33 = v25 - 16;
            v80 = vld2q_s16(v33);
            v79.val[0] = vextq_s8(v79.val[0], v79.val[0], 8uLL);
            v78.val[0] = vrev64q_s16(v78.val[1]);
            v81 = vld2q_s16(v25);
            v78.val[0] = vextq_s8(v78.val[0], v78.val[0], 8uLL);
            v22 = vmlal_high_s16(vmlal_high_s16(v22, v80.val[0], v79.val[0]), v80.val[1], v30);
            v21 = vmlal_s16(vmlal_s16(v21, *v80.val[0].i8, *v79.val[0].i8), *v80.val[1].i8, *v30.i8);
            v27 = vmlal_high_s16(vmlal_high_s16(v27, v81.val[0], v78.val[0]), v81.val[1], v32);
            v26 = vmlal_s16(vmlal_s16(v26, *v81.val[0].i8, *v78.val[0].i8), *v81.val[1].i8, *v32.i8);
            v25 += 32;
            v24 -= 32;
            v23 -= 16;
          }

          while (v23);
          v18 = vaddvq_s32(vaddq_s32(vaddq_s32(v26, v21), vaddq_s32(v27, v22)));
          if (v10 == (v10 & 0x7FFFFFFFFFFFFFF0))
          {
            goto LABEL_6;
          }

          v20 = v10 & 0x7FFFFFFFFFFFFFF0;
          v19 = (32 * ((v10 & 0x7FFFFFFFFFFFFFF0uLL) >> 4)) | 6;
          if ((v10 & 0xC) != 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v19 = 6;
        }

LABEL_22:
        v38 = a3 + v19 + 1;
        v39 = (v14 - 2 * v19);
        do
        {
          v18 += *(v38 - 1) * v39[1] + *v38 * *v39;
          v19 += 2;
          v38 += 2;
          v39 -= 2;
        }

        while (v19 < v7);
LABEL_6:
        v16 = ((((*v17 << 12) - v18) >> 11) + 1) >> 1;
        if (v16 <= -32768)
        {
          v16 = -32768;
        }

        if (v16 >= 0x7FFF)
        {
          LOWORD(v16) = 0x7FFF;
        }

        a1[v15++] = v16;
        ++v12;
        v13 += 2;
        v14 += 2;
        if (v15 == v6)
        {
          goto LABEL_35;
        }
      }
    }

    v7 = a5;
    v41 = a4 - a5;
    v42 = a5;
    if (v41 <= 7)
    {
      goto LABEL_29;
    }

    v50 = a5;
    v51 = &a1[a4];
    v52 = &a1[v50] < &a3[1] + 2 && v51 > a3;
    v53 = v52;
    v54 = a2 + 2 * a5 - 12 >= v51 || &a1[v50] >= a2 + 2 * a4;
    v42 = a5;
    if (!v54)
    {
      goto LABEL_29;
    }

    v42 = a5;
    if (v53)
    {
      goto LABEL_29;
    }

    v42 = (v41 & 0xFFFFFFFFFFFFFFF8) + a5;
    v55 = a3;
    v56 = vld1_dup_s16(v55++);
    v57 = vmovl_s16(v56);
    v58 = vld1_dup_s16(v55);
    v59 = vmovl_s16(v58);
    v60 = a3 + 2;
    v61 = vld1_dup_s16(v60);
    v62 = vmovl_s16(v61);
    v63 = a3 + 3;
    v64 = vld1_dup_s16(v63);
    v65 = vmovl_s16(v64);
    v66 = &a3[1];
    v67 = vld1_dup_s16(v66);
    v68 = vmovl_s16(v67);
    v69 = &a3[1] + 1;
    v70 = vld1_dup_s16(v69);
    v71 = vmovl_s16(v70);
    v72 = &a1[v50];
    v73 = v50 * 2 + a2 - 6;
    v74.i64[0] = 0x100000001;
    v74.i64[1] = 0x100000001;
    v75 = v41 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      *v72++ = vqmovn_high_s32(vqmovn_s32(vhaddq_s32(vshrq_n_s32(vsubq_s32(vshll_n_s16(*(v73 + 6), 0xCuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v57, vmovl_s16(*(v73 + 4))), v59, vmovl_s16(*(v73 + 2))), v62, vmovl_s16(*v73)), v65, vmovl_s16(*(v73 - 2))), v68, vmovl_s16(*(v73 - 4))), v71, vmovl_s16(*(v73 - 6)))), 0xBuLL), v74)), vhaddq_s32(vshrq_n_s32(vsubq_s32(vshll_high_n_s16(*(v73 + 6), 0xCuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v57, vmovl_high_s16(*(v73 + 4))), v59, vmovl_high_s16(*(v73 + 2))), v62, vmovl_high_s16(*v73)), v65, vmovl_high_s16(*(v73 - 2))), v68, vmovl_high_s16(*(v73 - 4))), v71, vmovl_high_s16(*(v73 - 6)))), 0xBuLL), v74));
      v73 += 16;
      v75 -= 8;
    }

    while (v75);
    if (v41 != (v41 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_29:
      v43 = a4 - v42;
      v44 = v42;
      v45 = &a1[v44];
      v46 = (v44 * 2 + a2 - 12);
      v47 = v46;
      do
      {
        v48 = v47[1];
        ++v47;
        v49 = ((((v46[6] << 12) - (vaddvq_s32(vmull_s16(vrev64_s16(*(v46 + 2)), *a3)) + a3[1].i16[0] * v48 + a3[1].i16[1] * *v46)) >> 11) + 1) >> 1;
        if (v49 <= -32768)
        {
          v49 = -32768;
        }

        if (v49 >= 0x7FFF)
        {
          LOWORD(v49) = 0x7FFF;
        }

        *v45++ = v49;
        v46 = v47;
        --v43;
      }

      while (v43);
    }

LABEL_35:
    v40 = 2 * v7;
  }

  bzero(a1, v40);
}

void silk_LPC_analysis_filter_FLP(float *a1, float *a2, unint64_t a3, unsigned int a4, int a5)
{
  if (a5 <= 9)
  {
    if (a5 != 6)
    {
      if (a5 != 8 || a4 < 9)
      {
        goto LABEL_36;
      }

      v13 = a4 - 8;
      if (v13 >= 4)
      {
        v163 = &a1[a4];
        v165 = a1 < a2 && v163 > a2;
        v166 = v163 <= a3 || (a1 + 8) >= a3 + 4 * a4;
        v14 = 8;
        if (v166 && !v165)
        {
          v167 = a2;
          v168 = vld1q_dup_f32(v167++);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          v169 = vld1q_dup_f32(v167);
          v170 = a2 + 2;
          v171 = vld1q_dup_f32(v170);
          v172 = a2 + 3;
          v173 = vld1q_dup_f32(v172);
          v174 = a2 + 4;
          v175 = vld1q_dup_f32(v174);
          v176 = a2 + 5;
          v177 = vld1q_dup_f32(v176);
          v178 = a2 + 6;
          v179 = vld1q_dup_f32(v178);
          v180 = a2 + 7;
          v181 = vld1q_dup_f32(v180);
          v182 = (a1 + 8);
          v183 = a3 + 16;
          v184 = v13 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v185 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*(v183 + 8), v169), v168, *(v183 + 12)), v171, *(v183 + 4)), v173, *v183), v175, *(v183 - 4)), v177, *(v183 - 8)), v179, *(v183 - 12)), v181, *(v183 - 16));
            v186 = *(v183 + 16);
            v183 += 16;
            *v182++ = vsubq_f32(v186, v185);
            v184 -= 4;
          }

          while (v184);
          if (v13 == (v13 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v14 = 8;
      }

      v15 = a4 - v14;
      v16 = v14;
      v17 = &a1[v16];
      v18 = (v16 * 4 + a3 - 16);
      v19 = v18;
      do
      {
        v20 = v19[1];
        ++v19;
        *v17++ = v18[4] - ((((((((v18[2] * a2[1]) + (v18[3] * *a2)) + (v20 * a2[2])) + (*v18 * a2[3])) + (*(v18 - 1) * a2[4])) + (*(v18 - 2) * a2[5])) + (*(v18 - 3) * a2[6])) + (*(v18 - 4) * a2[7]));
        v18 = v19;
        --v15;
      }

      while (v15);
      goto LABEL_36;
    }

    if (a4 < 7)
    {
      goto LABEL_36;
    }

    v37 = a4 - 6;
    if (v37 >= 4)
    {
      v105 = &a1[a4];
      v107 = a1 < a2 && v105 > a2;
      v108 = v105 <= a3 || (a1 + 6) >= a3 + 4 * a4;
      v38 = 6;
      if (v108 && !v107)
      {
        v109 = a2;
        v110 = vld1q_dup_f32(v109++);
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 6;
        v111 = vld1q_dup_f32(v109);
        v112 = a2 + 2;
        v113 = vld1q_dup_f32(v112);
        v114 = a2 + 3;
        v115 = vld1q_dup_f32(v114);
        v116 = a2 + 4;
        v117 = vld1q_dup_f32(v116);
        v118 = a2 + 5;
        v119 = vld1q_dup_f32(v118);
        v120 = (a1 + 6);
        v121 = a3 + 12;
        v122 = v37 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          *v120++ = vsubq_f32(*(v121 + 12), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*(v121 + 4), v111), v110, *(v121 + 8)), v113, *v121), v115, *(v121 - 4)), v117, *(v121 - 8)), v119, *(v121 - 12)));
          v121 += 16;
          v122 -= 4;
        }

        while (v122);
        if (v37 == (v37 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v38 = 6;
    }

    v39 = a4 - v38;
    v40 = v38;
    v41 = &a1[v40];
    v42 = (v40 * 4 + a3 - 12);
    v43 = v42;
    do
    {
      v44 = v43[1];
      ++v43;
      *v41++ = v42[3] - ((((((v44 * a2[1]) + (v42[2] * *a2)) + (*v42 * a2[2])) + (*(v42 - 1) * a2[3])) + (*(v42 - 2) * a2[4])) + (*(v42 - 3) * a2[5]));
      v42 = v43;
      --v39;
    }

    while (v39);
    goto LABEL_36;
  }

  if (a5 == 10)
  {
    if (a4 < 11)
    {
      goto LABEL_36;
    }

    v21 = a4 - 10;
    if (v21 >= 4)
    {
      v45 = &a1[a4];
      v47 = a1 < a2 && v45 > a2;
      v48 = v45 <= a3 || (a1 + 10) >= a3 + 4 * a4;
      v22 = 10;
      if (v48 && !v47)
      {
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + 10;
        v49 = a2;
        v50 = vld1q_dup_f32(v49++);
        v51 = vld1q_dup_f32(v49);
        v52 = a2 + 2;
        v53 = vld1q_dup_f32(v52);
        v54 = a2 + 3;
        v55 = vld1q_dup_f32(v54);
        v56 = a2 + 4;
        v57 = vld1q_dup_f32(v56);
        v58 = a2 + 5;
        v59 = vld1q_dup_f32(v58);
        v60 = a2 + 6;
        v61 = vld1q_dup_f32(v60);
        v62 = a2 + 7;
        v63 = vld1q_dup_f32(v62);
        v64 = a2 + 8;
        v65 = vld1q_dup_f32(v64);
        v66 = a2 + 9;
        v67 = vld1q_dup_f32(v66);
        v68 = (a1 + 10);
        v69 = (a3 + 20);
        v70 = v21 & 0xFFFFFFFFFFFFFFFCLL;
        v71 = (a3 + 20);
        do
        {
          v72 = v71[1];
          ++v71;
          *v68++ = vsubq_f32(*(v69 + 20), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*(v69 + 12), v51), v50, v72), v53, *(v69 + 8)), v55, *(v69 + 4)), v57, *v69), v59, *(v69 - 4)), v61, *(v69 - 8)), v63, *(v69 - 12)), v65, v69[-1]), v67, *(v69 - 20)));
          v69 = v71;
          v70 -= 4;
        }

        while (v70);
        if (v21 == (v21 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v22 = 10;
    }

    v23 = a4 - v22;
    v24 = v22;
    v25 = &a1[v24];
    v26 = (v24 * 4 + a3 - 20);
    v27 = v26;
    do
    {
      v28 = v27[1];
      ++v27;
      *v25++ = v26[5] - ((((((((((v26[3] * a2[1]) + (v26[4] * *a2)) + (v26[2] * a2[2])) + (v28 * a2[3])) + (*v26 * a2[4])) + (*(v26 - 1) * a2[5])) + (*(v26 - 2) * a2[6])) + (*(v26 - 3) * a2[7])) + (*(v26 - 4) * a2[8])) + (*(v26 - 5) * a2[9]));
      v26 = v27;
      --v23;
    }

    while (v23);
    goto LABEL_36;
  }

  if (a5 == 12)
  {
    if (a4 < 13)
    {
      goto LABEL_36;
    }

    v29 = a4 - 12;
    if (v29 >= 4)
    {
      v73 = &a1[a4];
      v75 = a1 < a2 && v73 > a2;
      v76 = v73 <= a3 || (a1 + 12) >= a3 + 4 * a4;
      v30 = 12;
      if (v76 && !v75)
      {
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 12;
        v77 = a2;
        v78 = vld1q_dup_f32(v77++);
        v79 = vld1q_dup_f32(v77);
        v80 = a2 + 2;
        v81 = vld1q_dup_f32(v80);
        v82 = a2 + 3;
        v83 = vld1q_dup_f32(v82);
        v84 = a2 + 4;
        v85 = vld1q_dup_f32(v84);
        v86 = a2 + 5;
        v87 = vld1q_dup_f32(v86);
        v88 = a2 + 6;
        v89 = vld1q_dup_f32(v88);
        v90 = a2 + 7;
        v91 = vld1q_dup_f32(v90);
        v92 = a2 + 8;
        v93 = vld1q_dup_f32(v92);
        v94 = a2 + 9;
        v95 = vld1q_dup_f32(v94);
        v96 = a2 + 10;
        v97 = vld1q_dup_f32(v96);
        v98 = a2 + 11;
        v99 = vld1q_dup_f32(v98);
        v100 = (a1 + 12);
        v101 = (a3 + 24);
        v102 = v29 & 0xFFFFFFFFFFFFFFFCLL;
        v103 = (a3 + 24);
        do
        {
          v104 = v103[1];
          ++v103;
          *v100++ = vsubq_f32(*(v101 + 24), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v104, v79), v78, *(v101 + 20)), v81, *(v101 + 12)), v83, *(v101 + 8)), v85, *(v101 + 4)), v87, *v101), v89, *(v101 - 4)), v91, *(v101 - 8)), v93, *(v101 - 12)), v95, v101[-1]), v97, *(v101 - 20)), v99, *(v101 - 24)));
          v101 = v103;
          v102 -= 4;
        }

        while (v102);
        if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v30 = 12;
    }

    v31 = a4 - v30;
    v32 = v30;
    v33 = &a1[v32];
    v34 = (v32 * 4 + a3 - 24);
    v35 = v34;
    do
    {
      v36 = v35[1];
      ++v35;
      *v33++ = v34[6] - ((((((((((((v34[4] * a2[1]) + (v34[5] * *a2)) + (v34[3] * a2[2])) + (v34[2] * a2[3])) + (v36 * a2[4])) + (*v34 * a2[5])) + (*(v34 - 1) * a2[6])) + (*(v34 - 2) * a2[7])) + (*(v34 - 3) * a2[8])) + (*(v34 - 4) * a2[9])) + (*(v34 - 5) * a2[10])) + (*(v34 - 6) * a2[11]));
      v34 = v35;
      --v31;
    }

    while (v31);
    goto LABEL_36;
  }

  if (a5 == 16 && a4 >= 17)
  {
    v5 = a4 - 16;
    if (v5 < 4)
    {
      v6 = 16;
LABEL_8:
      v7 = a4 - v6;
      v8 = v6;
      v9 = &a1[v8];
      v10 = (v8 * 4 + a3 - 32);
      v11 = v10;
      do
      {
        v12 = v11[1];
        ++v11;
        *v9++ = v10[8] - ((((((((((((((((v10[6] * a2[1]) + (v10[7] * *a2)) + (v10[5] * a2[2])) + (v10[4] * a2[3])) + (v10[3] * a2[4])) + (v10[2] * a2[5])) + (v12 * a2[6])) + (*v10 * a2[7])) + (*(v10 - 1) * a2[8])) + (*(v10 - 2) * a2[9])) + (*(v10 - 3) * a2[10])) + (*(v10 - 4) * a2[11])) + (*(v10 - 5) * a2[12])) + (*(v10 - 6) * a2[13])) + (*(v10 - 7) * a2[14])) + (*(v10 - 8) * a2[15]));
        v10 = v11;
        --v7;
      }

      while (v7);
      goto LABEL_36;
    }

    v123 = &a1[a4];
    v125 = a1 < a2 && v123 > a2;
    v126 = v123 <= a3 || (a1 + 16) >= a3 + 4 * a4;
    v6 = 16;
    if (!v126)
    {
      goto LABEL_8;
    }

    if (v125)
    {
      goto LABEL_8;
    }

    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL) + 16;
    v127 = a2;
    v128 = vld1q_dup_f32(v127++);
    v129 = vld1q_dup_f32(v127);
    v130 = a2 + 2;
    v131 = vld1q_dup_f32(v130);
    v132 = a2 + 3;
    v133 = vld1q_dup_f32(v132);
    v134 = a2 + 4;
    v135 = vld1q_dup_f32(v134);
    v136 = a2 + 5;
    v137 = vld1q_dup_f32(v136);
    v138 = a2 + 6;
    v139 = vld1q_dup_f32(v138);
    v140 = a2 + 7;
    v141 = vld1q_dup_f32(v140);
    v142 = a2 + 8;
    v143 = vld1q_dup_f32(v142);
    v144 = a2 + 9;
    v145 = vld1q_dup_f32(v144);
    v146 = a2 + 10;
    v147 = vld1q_dup_f32(v146);
    v148 = a2 + 11;
    v149 = vld1q_dup_f32(v148);
    v150 = a2 + 12;
    v151 = vld1q_dup_f32(v150);
    v152 = a2 + 13;
    v153 = vld1q_dup_f32(v152);
    v154 = a2 + 14;
    v155 = vld1q_dup_f32(v154);
    v156 = a2 + 15;
    v157 = vld1q_dup_f32(v156);
    v158 = (a1 + 16);
    v159 = (a3 + 32);
    v160 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v161 = (a3 + 32);
    do
    {
      v162 = v161[1];
      ++v161;
      *v158++ = vsubq_f32(v159[2], vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*(v159 + 24), v129), v128, *(v159 + 28)), v131, *(v159 + 20)), v133, v162), v135, *(v159 + 12)), v137, *(v159 + 8)), v139, *(v159 + 4)), v141, *v159), v143, *(v159 - 4)), v145, *(v159 - 8)), v147, *(v159 - 12)), v149, v159[-1]), v151, *(v159 - 20)), v153, *(v159 - 24)), v155, *(v159 - 28)), v157, v159[-2]));
      v159 = v161;
      v160 -= 4;
    }

    while (v160);
    if (v5 != (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_8;
    }
  }

LABEL_36:
  bzero(a1, 4 * a5);
}

uint64_t silk_LPC_fit(uint64_t result, int8x16_t *a2, int a3, int a4, unsigned int a5)
{
  if (a5 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4 - a3;
  v8 = a4 - a3 - 1;
  do
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = a2->i32[v9];
      if (v11 < 0)
      {
        v11 = -v11;
      }

      if (v11 > v10)
      {
        v5 = v9;
        v10 = v11;
      }

      ++v9;
    }

    while (a5 != v9);
    v12 = (v10 & 1) + (v10 >> 1);
    v13 = ((v10 >> v8) + 1) >> 1;
    if (v7 == 1)
    {
      v13 = v12;
    }

    if (v13 < 0x8000)
    {
      if (v7 == 1)
      {
        if (a5 < 4)
        {
          v21 = 0;
          goto LABEL_63;
        }

        if (a5 >= 0x10)
        {
          v21 = a5 & 0x7FFFFFF0;
          v57 = a2 + 2;
          v58 = (result + 16);
          v59.i64[0] = 0x100000001;
          v59.i64[1] = 0x100000001;
          v60 = v21;
          do
          {
            v62 = v57[-2];
            v61 = v57[-1];
            v64 = *v57;
            v63 = v57[1];
            v57 += 4;
            v58[-1] = vuzp1q_s16(vsraq_n_u32(vandq_s8(v62, v59), v62, 1uLL), vsraq_n_u32(vandq_s8(v61, v59), v61, 1uLL));
            *v58 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v64, v59), v64, 1uLL), vsraq_n_u32(vandq_s8(v63, v59), v63, 1uLL));
            v58 += 2;
            v60 -= 16;
          }

          while (v60);
          if (v21 == a5)
          {
            return result;
          }

          if ((a5 & 0xC) == 0)
          {
LABEL_63:
            v71 = a5 - v21;
            v72 = (result + 2 * v21);
            v73 = &a2->i32[v21];
            do
            {
              v74 = *v73++;
              *v72++ = (v74 & 1) + (v74 >> 1);
              --v71;
            }

            while (v71);
            return result;
          }
        }

        else
        {
          v21 = 0;
        }

        v65 = v21;
        v21 = a5 & 0x7FFFFFFC;
        v66 = (a2 + 4 * v65);
        v67 = (result + 2 * v65);
        v68 = v65 - v21;
        v69.i64[0] = 0x100000001;
        v69.i64[1] = 0x100000001;
        do
        {
          v70 = *v66++;
          *v67++ = vmovn_s32(vsraq_n_u32(vandq_s8(v70, v69), v70, 1uLL));
          v68 += 4;
        }

        while (v68);
        if (v21 == a5)
        {
          return result;
        }

        goto LABEL_63;
      }

      if (a5 < 4)
      {
        v55 = 0;
        goto LABEL_73;
      }

      v56 = vdupq_n_s32(v8);
      if (a5 >= 0x10)
      {
        v55 = a5 & 0x7FFFFFF0;
        v75 = &a2[2];
        v76 = (result + 16);
        v77 = vnegq_s32(v56);
        v78 = v55;
        do
        {
          v79 = v75[-2];
          v80 = v75[-1];
          v81 = *v75;
          v82 = v75[1];
          v75 += 4;
          v76[-1] = vrshrn_high_n_s32(vrshrn_n_s32(vshlq_s32(v79, v77), 1uLL), vshlq_s32(v80, v77), 1uLL);
          *v76 = vrshrn_high_n_s32(vrshrn_n_s32(vshlq_s32(v81, v77), 1uLL), vshlq_s32(v82, v77), 1uLL);
          v76 += 2;
          v78 -= 16;
        }

        while (v78);
        if (v55 == a5)
        {
          return result;
        }

        if ((a5 & 0xC) == 0)
        {
LABEL_73:
          v89 = a5 - v55;
          v90 = (result + 2 * v55);
          v91 = &a2->i32[v55];
          do
          {
            v92 = *v91++;
            *v90++ = ((v92 >> v8) + 1) >> 1;
            --v89;
          }

          while (v89);
          return result;
        }
      }

      else
      {
        v55 = 0;
      }

      v83 = v55;
      v55 = a5 & 0x7FFFFFFC;
      v84 = (a2 + 4 * v83);
      v85 = (result + 2 * v83);
      v86 = v83 - v55;
      v87 = vnegq_s32(v56);
      do
      {
        v88 = *v84++;
        *v85++ = vrshrn_n_s32(vshlq_s32(v88, v87), 1uLL);
        v86 += 4;
      }

      while (v86);
      if (v55 == a5)
      {
        return result;
      }

      goto LABEL_73;
    }

    if (v13 >= 0x27FFE)
    {
      v13 = 163838;
    }

    v14 = ((v13 << 14) - 536854528) / ((v13 + v13 * v5) >> 2);
    v15 = 65470 - v14;
    if (a5 != 1)
    {
      v16 = -66 - v14;
      v17 = a2;
      v18 = a5 - 1;
      do
      {
        v17->i32[0] = (v17->i32[0] * v15) >> 16;
        v17 = (v17 + 4);
        v15 += (((v15 * v16) >> 15) + 1) >> 1;
        --v18;
      }

      while (v18);
    }

    a2->i32[a5 - 1] = (a2->i32[a5 - 1] * v15) >> 16;
    ++v6;
  }

  while (v6 != 10);
  if (v7 == 1)
  {
    if (a5 >= 8)
    {
      v19 = a5 & 0x7FFFFFF8;
      v22.i64[0] = 0x100000001;
      v22.i64[1] = 0x100000001;
      v23.i64[0] = 0x7F0000007FLL;
      v23.i64[1] = 0x7F0000007FLL;
      v24.i64[0] = 0x7F0000007FLL;
      v24.i64[1] = 0x7F0000007FLL;
      v25 = v19;
      v26 = result;
      v27 = a2;
      do
      {
        v28 = vsraq_n_s32(vandq_s8(*v27, v22), *v27, 1uLL);
        v29 = vsraq_n_s32(vandq_s8(v27[1], v22), v27[1], 1uLL);
        v30 = vminq_s32(vmaxq_s32(v28, v23), v24);
        v31 = vminq_s32(vmaxq_s32(v29, v23), v24);
        *v26++ = vqmovn_high_s32(vqmovn_s32(v28), v29);
        *v27 = vaddq_s32(v30, v30);
        v27[1] = vaddq_s32(v31, v31);
        v27 += 2;
        v25 -= 8;
      }

      while (v25);
      if (v19 == a5)
      {
        return result;
      }
    }

    else
    {
      v19 = 0;
    }

    v32 = a5 - v19;
    v33 = (result + 2 * v19);
    v34 = &a2->i32[v19];
    do
    {
      v35 = (*v34 & 1) + (*v34 >> 1);
      if (v35 <= -32768)
      {
        v35 = -32768;
      }

      if (v35 >= 0x7FFF)
      {
        v35 = 0x7FFF;
      }

      *v33++ = v35;
      *v34++ = 2 * v35;
      --v32;
    }

    while (v32);
  }

  else
  {
    if (a5 > 7)
    {
      v36 = vdupq_n_s32(v7);
      v20 = a5 & 0x7FFFFFF8;
      v37 = vnegq_s32(vdupq_n_s32(v8));
      v38.i64[0] = 0xFFFF0000FFFFLL;
      v38.i64[1] = 0xFFFF0000FFFFLL;
      v39.i64[0] = 0x1000000010000;
      v39.i64[1] = 0x1000000010000;
      v40.i64[0] = 0x100000001;
      v40.i64[1] = 0x100000001;
      v41.i64[0] = 0x7F0000007FLL;
      v41.i64[1] = 0x7F0000007FLL;
      v42.i64[0] = 0x7F0000007FLL;
      v42.i64[1] = 0x7F0000007FLL;
      v43 = v20;
      v44 = result;
      v45 = a2;
      do
      {
        v46 = vshlq_s32(v45[1], v37);
        v47 = vshlq_s32(*v45, v37);
        v48 = vbslq_s8(vcgtq_s32(v39, v47), v42, vbslq_s8(vcgtq_s32(v38, v47), vshrq_n_s32(vaddq_s32(v47, v40), 1uLL), v41));
        v49 = vbslq_s8(vcgtq_s32(v39, v46), v42, vbslq_s8(vcgtq_s32(v38, v46), vshrq_n_s32(vaddq_s32(v46, v40), 1uLL), v41));
        *v44++ = vuzp1q_s16(v48, v49);
        *v45 = vshlq_u32(v48, v36);
        v45[1] = vshlq_u32(v49, v36);
        v45 += 2;
        v43 -= 8;
      }

      while (v43);
      if (v20 == a5)
      {
        return result;
      }
    }

    else
    {
      v20 = 0;
    }

    v50 = a5 - v20;
    v51 = (result + 2 * v20);
    v52 = &a2->i32[v20];
    do
    {
      v53 = *v52 >> v8;
      LODWORD(result) = (v53 + 1) >> 1;
      if (v53 >= -65537)
      {
        result = result;
      }

      else
      {
        result = 4294934528;
      }

      if (v53 <= 65534)
      {
        v54 = result;
      }

      else
      {
        v54 = 0x7FFF;
      }

      *v51++ = v54;
      *v52++ = v54 << v7;
      --v50;
    }

    while (v50);
  }

  return result;
}

unint64_t silk_LPC_inverse_pred_gain_c(int16x8_t *a1, unsigned int a2)
{
  v56[8] = *MEMORY[0x277D85DE8];
  if (a2 <= 0)
  {
    v5 = (a2 - 1);
    v6 = 0x40000000;
    goto LABEL_19;
  }

  v2 = a2;
  if (a2 >= 4)
  {
    if (a2 >= 0x10)
    {
      v3 = a2 & 0x7FFFFFF0;
      v7 = a1 + 1;
      v8 = v56;
      v9 = 0uLL;
      v10 = v3;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v14 = v7[-1];
        v15 = *v7;
        v11 = vaddw_high_s16(v11, v14);
        v9 = vaddw_s16(v9, *v14.i8);
        v13 = vaddw_high_s16(v13, *v7);
        v12 = vaddw_s16(v12, *v7->i8);
        v16 = vshll_n_s16(*v7->i8, 0xCuLL);
        v8[-2] = vshll_n_s16(*v14.i8, 0xCuLL);
        v8[-1] = vshll_high_n_s16(v14, 0xCuLL);
        *v8 = v16;
        v8[1] = vshll_high_n_s16(v15, 0xCuLL);
        v8 += 4;
        v7 += 2;
        v10 -= 16;
      }

      while (v10);
      v4 = vaddvq_s32(vaddq_s32(vaddq_s32(v12, v9), vaddq_s32(v13, v11)));
      if (v3 == a2)
      {
        goto LABEL_16;
      }

      if ((a2 & 0xC) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }

    v17 = v3;
    v3 = a2 & 0x7FFFFFFC;
    v18 = v4;
    v19 = (a1 + 2 * v17);
    v20 = &v55[v17];
    v21 = v17 - v3;
    do
    {
      v22 = *v19++;
      v18 = vaddw_s16(v18, v22);
      *v20++ = vshll_n_s16(v22, 0xCuLL);
      v21 += 4;
    }

    while (v21);
    v4 = vaddvq_s32(v18);
    if (v3 == a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v3 = 0;
  v4 = 0;
LABEL_14:
  v23 = a2 - v3;
  v24 = &v55[v3];
  v25 = &a1->i16[v3];
  do
  {
    v26 = *v25++;
    v4 += v26;
    *v24++ = v26 << 12;
    --v23;
  }

  while (v23);
LABEL_16:
  if (v4 > 4095)
  {
    return 0;
  }

  v6 = 0x40000000;
  if (a2 != 1)
  {
    v28 = 0x40000000;
    v29 = (a2 << 32) - 0x200000000;
LABEL_25:
    if (v2 >> 1 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v2 >> 1;
    }

    v31 = v55[v2 - 1];
    if ((v31 - 16773023) >= 0xFE0020C3)
    {
      v32 = v31 << 7;
      v33 = -v32;
      v34 = (0x40000000 - (-(v32 * -v32) >> 32));
      v35 = (v34 * v28) >> 30;
      v28 = v35 & 0xFFFFFFFC;
      if ((v35 & 0xFFFFFFFC) >= 107374)
      {
        if (v34 >= 0)
        {
          v36 = v34;
        }

        else
        {
          v36 = -v34;
        }

        v37 = __clz(v36);
        v38 = (((-8 * ((0x1FFFFFFF / ((v34 << (v37 - 1)) >> 16) * (v34 << (v37 - 1))) >> 16)) * (0x1FFFFFFF / ((v34 << (v37 - 1)) >> 16))) >> 16) + ((0x1FFFFFFF / ((v34 << (v37 - 1)) >> 16)) << 16);
        if (v37 == 31)
        {
          v39 = v55;
          v40 = v29;
          while (1)
          {
            v41 = *v39;
            v42 = *(v55 + (v40 >> 30));
            v43 = vqsubs_s32(*v39, (((v42 * v33) >> 30) + 1) >> 1);
            v44 = ((v43 * v38) & 1) + ((v38 * v43) >> 1);
            if (v44 != v44)
            {
              break;
            }

            *v39 = v44;
            v45 = vqsubs_s32(v42, (((v41 * v33) >> 30) + 1) >> 1);
            v46 = ((v45 * v38) & 1) + ((v38 * v45) >> 1);
            if (v46 != v46)
            {
              break;
            }

            *(v55 + (v40 >> 30)) = v46;
            v40 -= 0x100000000;
            ++v39;
            if (!--v30)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          v47 = 31 - v37;
          v48 = v55;
          v49 = v29;
          while (1)
          {
            v50 = *v48;
            v51 = *(v55 + (v49 >> 30));
            v52 = ((v38 * vqsubs_s32(*v48, (((v51 * v33) >> 30) + 1) >> 1)) >> v47) + 1;
            if (v52 >> 1 != (v52 >> 1))
            {
              break;
            }

            *v48 = v52 >> 1;
            v53 = ((v38 * vqsubs_s32(v51, (((v50 * v33) >> 30) + 1) >> 1)) >> v47) + 1;
            if (v53 >> 1 != (v53 >> 1))
            {
              break;
            }

            *(v55 + (v49 >> 30)) = v53 >> 1;
            v49 -= 0x100000000;
            ++v48;
            if (!--v30)
            {
LABEL_43:
              v29 -= 0x100000000;
              if (v2-- >= 3)
              {
                goto LABEL_25;
              }

              v5 = 0;
              v6 = v35 & 0xFFFFFFFC;
              goto LABEL_19;
            }
          }
        }
      }
    }

    return 0;
  }

  v5 = 0;
LABEL_19:
  if ((v55[v5] - 16773023) < 0xFE0020C3)
  {
    return 0;
  }

  if ((((v6 * (0x40000000 - ((-128 * v55[0] * (-128 * v55[0])) >> 32))) >> 30) & 0xFFFFFFFC) >= 107374)
  {
    return ((v6 * (0x40000000 - ((-128 * v55[0] * (-128 * v55[0])) >> 32))) >> 30) & 0xFFFFFFFC;
  }

  else
  {
    return 0;
  }
}

float silk_LTP_scale_ctrl_FLP(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *(a1 + 4785) = 0;
    result = vcvts_n_f32_s32(silk_LTPScales_table_Q14[0], 0xEuLL);
    *(a2 + 224) = result;
    return result;
  }

  v4 = *(a1 + 5760) * *(a1 + 4616);
  if (*(a1 + 4739))
  {
    v4 = v4 * v4 / 0x64u + 2;
  }

  v5 = v4 * *(a2 + 708);
  v6 = *(a1 + 4732);
  if (v6 <= 2900)
  {
    v10 = 2900 - v6;
    v11 = 1 << ((2900 - v6) >> 7);
    v12 = (v10 & 0x7F) + ((-174 * (v10 & 0x7F) * (128 - (v10 & 0x7F))) >> 16);
    v13 = v12 << ((2900 - v6) >> 7) >> 7;
    if ((2900 - v6) > 0x7FF)
    {
      v13 = v12 * (v11 >> 7);
    }

    v14 = v13 + v11;
    if (v10 <= 0xF7E)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFF;
    }

    v7 = v5 > v15;
    v8 = (a1 + 4785);
    *(a1 + 4785) = v7;
    goto LABEL_14;
  }

  v7 = v5 > 0;
  v8 = (a1 + 4785);
  *(a1 + 4785) = v7;
  if (v6 <= 0xF3C)
  {
LABEL_14:
    v16 = 3900 - v6;
    v17 = 1 << ((3900 - v6) >> 7);
    v18 = (v16 & 0x7F) + ((-174 * (v16 & 0x7F) * (128 - (v16 & 0x7F))) >> 16);
    v19 = v18 << ((3900 - v6) >> 7) >> 7;
    if ((3900 - v6) > 0x7FF)
    {
      v19 = v18 * (v17 >> 7);
    }

    v20 = v19 + v17;
    if (v16 <= 0xF7E)
    {
      v9 = v20;
    }

    else
    {
      v9 = 0x7FFFFFFF;
    }

    goto LABEL_19;
  }

  v9 = 0;
LABEL_19:
  if (v5 <= v9)
  {
    v21 = v7;
  }

  else
  {
    v21 = (v7 + 1);
  }

  *v8 = v21;
  result = vcvts_n_f32_s32(silk_LTPScales_table_Q14[v21], 0xEuLL);
  *(a2 + 224) = result;
  return result;
}

float *clt_mdct_forward_c(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = a3;
  v79[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 8 * a6 + 8);
  v11 = *a1;
  v12 = *(a1 + 40);
  if (a6 >= 1)
  {
    do
    {
      v11 >>= 1;
      v12 += v11;
      --a6;
    }

    while (a6);
  }

  v13 = (v11 >> 2);
  v14 = MEMORY[0x28223BE20](v10, a2, a3);
  v17 = MEMORY[0x28223BE20](v14, v15, v16);
  v32 = (v79 - v31);
  v34 = v18 + 4 * v33;
  v35 = v34 - 4;
  v36 = (v20 + 3) >> 2;
  if (v36 < 1)
  {
    v48 = 0;
    v51 = 4 * (v20 >> 1);
    v46 = (v18 + v51);
    v47 = (v35 + v51);
    v44 = v21;
    v49 = v22 >> 1;
    v50 = v13 - v36;
    if (v13 - v36 <= 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v37 = v20 >> 1;
    v38 = v18 - 4;
    v39 = v19 - 1;
    v40 = v19;
    v41 = (v20 + 3) >> 2;
    v42 = v21;
    do
    {
      v43 = v39[v37];
      *&v26 = v40[v37];
      *&v25 = (*&v26 * *(v35 + 4 * v37)) + (v43 * *(v34 + 4 * v37));
      v27.n128_u32[0] = *(v18 + 4 * v37);
      v44 = &v42[1];
      *&v24 = (*&v26 * v27.n128_f32[0]) - (v43 * *(v38 + 4 * v37));
      v18 += 8;
      v34 += 8;
      v35 -= 8;
      v38 -= 8;
      v42->i32[0] = LODWORD(v25);
      v42->i32[1] = LODWORD(v24);
      v40 += 2;
      v39 -= 2;
      ++v42;
      --v41;
    }

    while (v41);
    v45 = 4 * v37;
    v46 = (v18 + v45);
    v47 = (v35 + v45);
    v48 = (v20 + 3) >> 2;
    v49 = v22 >> 1;
    v50 = v13 - v36;
    if (v36 >= v13 - v36)
    {
LABEL_7:
      if (v48 >= v13)
      {
        goto LABEL_14;
      }

LABEL_12:
      v54 = &v19[v20 - 1];
      v55 = v13 - v48;
      do
      {
        v56 = *v19;
        v19 += 2;
        v57 = v56;
        v58 = *v54;
        v54 -= 2;
        *&v26 = v58;
        *&v25 = (v58 * *v47) - (v57 * v46[-v49]);
        v59 = *v46;
        v46 += 2;
        v27.n128_f32[0] = v59;
        *&v24 = (v57 * v47[v49]) + (*&v26 * v59);
        *v44 = *&v25;
        v44[1] = *&v24;
        v44 += 2;
        v47 -= 2;
        --v55;
      }

      while (v55);
      goto LABEL_14;
    }
  }

  do
  {
    v52 = *v47;
    v47 -= 2;
    *&v24 = v52;
    v53 = *v46;
    v46 += 2;
    *&v25 = v53;
    *v44 = *&v24;
    v44[1] = v53;
    v44 += 2;
    ++v48;
  }

  while (v48 < v50);
  v48 = v50;
  if (v50 < v13)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v13 <= 0)
  {
    return opus_fft_impl(v17, v32, v23, v24, v25, v26, v27, v28, v29, v30);
  }

  v60 = *(v17 + 48);
  v61 = v12;
  v62 = v13;
  do
  {
    v63 = v61[v13];
    v64 = *v61++;
    LODWORD(v25) = v64;
    v65 = *v21++;
    v66 = v65;
    v67 = *v60++;
    v68 = vdup_lane_s32(v66, 0);
    v68.f32[0] = -v66.f32[1];
    v69 = COERCE_DOUBLE(vmul_n_f32(vmla_n_f32(vmul_n_f32(v68, v63), v66, *&v25), *&v23));
    *&v32[v67] = v69;
    --v62;
  }

  while (v62);
  v27.n128_f32[0] = -v66.f32[1];
  result = opus_fft_impl(v17, v32, v23, v69, v25, *&v66, v27, *&v68, v29, v30);
  v71 = &v8[(v49 - 1) * a7];
  v72 = v32 + 1;
  v73 = v13;
  do
  {
    v74 = v12[v13];
    v75 = *(v72 - 1);
    v76 = *v12++;
    v77 = (*v72 * v74) - (v75 * v76);
    v78 = (*v72 * v76) + (v75 * v74);
    *v8 = v77;
    *v71 = v78;
    v71 -= 2 * a7;
    v8 += 2 * a7;
    v72 += 2;
    --v73;
  }

  while (v73);
  return result;
}

float clt_mdct_backward_c(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, __n128 a12, double a13, float32x4_t a14, int32x4_t a15)
{
  v18 = *a1;
  v19 = *(a1 + 40);
  if (a6 >= 1)
  {
    v20 = a6;
    do
    {
      v18 >>= 1;
      v19 += v18;
      --v20;
    }

    while (v20);
  }

  v21 = v18 >> 1;
  v22 = (v18 >> 2);
  v23 = *(a1 + 8 * a6 + 8);
  if (v22 >= 1)
  {
    v24 = *(v23 + 48);
    v25 = &a2[(v21 - 1) * a7];
    v26 = v19;
    v27 = (v18 >> 2);
    do
    {
      v28 = *v24++;
      LODWORD(a9) = *v26;
      LODWORD(a10) = v26[v22];
      LODWORD(a11) = *a2;
      a12.n128_f32[0] = (*a2 * *&a10) + (*v25 * *v26);
      *&a8 = (*a2 * *v26) - (*v25 * *&a10);
      v29 = (a3 + 4 * (a5 >> 1) + 8 * v28);
      *v29 = LODWORD(a8);
      v29[1] = a12.n128_u32[0];
      ++v26;
      a2 += 2 * a7;
      v25 -= 2 * a7;
      --v27;
    }

    while (v27);
  }

  opus_fft_impl(v23, (a3 + 4 * (a5 >> 1)), a8, a9, a10, a11, a12, a13, a14, a15);
  if ((v22 + 1) >> 1 >= 1)
  {
    v31 = 0;
    v32 = 4 * v21 - 4;
    v33 = v22;
    v34 = v33 * 4 - 4;
    v35 = a3 + 4 * (a5 >> 1);
    v36 = (v32 + v35);
    v37 = (v35 + 4);
    do
    {
      v38 = *(v37 - 1);
      v39 = *&v19[v31];
      v40 = *&v19[v33];
      v41 = (v38 * v40) + (*v37 * v39);
      v42 = (*v37 * v40) - (v38 * v39);
      v44 = *(v36 - 1);
      v43 = *v36;
      *(v37 - 1) = v41;
      *v36 = v42;
      v45 = *(v19 + v34);
      v46 = *(v19 + v32);
      v47 = (v44 * v46) + (v43 * v45);
      result = (v43 * v46) - (v44 * v45);
      ++v31;
      v32 -= 4;
      v34 -= 4;
      *(v36 - 1) = v47;
      *v37 = result;
      v37 += 2;
      ++v33;
      v36 -= 2;
    }

    while ((v22 + 1) >> 1 != v31);
  }

  if (a5 > 1)
  {
    v48 = 0;
    v49 = 4 * a5 - 4;
    do
    {
      v50 = *(a3 + v49);
      v51 = *(a3 + 4 * v48);
      v52 = *(a4 + v49);
      v53 = *(a4 + 4 * v48);
      *(a3 + 4 * v48) = (v52 * v51) - (v53 * v50);
      result = (v50 * v52) + (v53 * v51);
      *(a3 + v49) = result;
      ++v48;
      v49 -= 4;
    }

    while (a5 / 2 != v48);
  }

  return result;
}

uint64_t compute_dense(uint64_t result, float *a2, float32x4_t *a3, double a4, int8x16_t a5, double a6, double a7, double a8, int8x16_t a9)
{
  v9 = *(result + 20);
  if (v9 < 1)
  {
    return result;
  }

  v10 = *(result + 16);
  v11 = *result;
  v12 = &a2[v9];
  if (v9 < 4 || (&v11->i8[v9] > a2 ? (v13 = v11 >= v12) : (v13 = 1), !v13))
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (v9 >= 0x10)
  {
    v14 = v9 & 0x7FFFFFF0;
    a5 = xmmword_273BA1D10;
    v64 = v14;
    v65 = a2;
    v66 = *result;
    do
    {
      v67 = *v66++;
      *(v65 + 2) = vcvtq_n_f32_s32(vqtbl1q_s8(v67, xmmword_273BA1D10), 0x18uLL);
      *(v65 + 3) = vcvtq_n_f32_s32(vqtbl1q_s8(v67, xmmword_273BA1D20), 0x18uLL);
      a9 = vcvtq_n_f32_s32(vqtbl1q_s8(v67, xmmword_273BA1D00), 0x18uLL);
      *v65 = vcvtq_n_f32_s32(vqtbl1q_s8(v67, xmmword_273BA1CF0), 0x18uLL);
      *(v65 + 1) = a9;
      v65 += 16;
      v64 -= 16;
    }

    while (v64);
    if (v14 == v9)
    {
      goto LABEL_13;
    }

    if ((v9 & 0xC) == 0)
    {
LABEL_11:
      v15 = v9 - v14;
      v16 = &a2[v14];
      v17 = &v11->i8[v14];
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        --v15;
      }

      while (v15);
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
  }

  v68 = v14;
  v14 = v9 & 0x7FFFFFFC;
  v69 = (v11->u32 + v68);
  v70 = &a2[v68];
  v71 = v68 - v14;
  do
  {
    v72 = *v69++;
    a5.i32[0] = v72;
    a5 = vcvtq_n_f32_s32(vqtbl1q_s8(a5, xmmword_273BA1CF0), 0x18uLL);
    *v70++ = a5;
    v71 += 4;
  }

  while (v71);
  if (v14 != v9)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v10 >= 1)
  {
    v19 = 0;
    v20 = *(result + 8);
    v22 = v10 > 3 && v9 == 1;
    v24 = (v20 + v9 + v10 - 1) > a2 && v20 < v12;
    v26 = &a3->f32[v10] > a2 && v12 > a3 || v24;
    v27 = v26 | ~v22;
    v28 = v10 & 0x7FFFFFFC;
    do
    {
      v29 = a2[v19];
      if (v27)
      {
        v30 = 0;
      }

      else
      {
        if (v10 < 0x10)
        {
          v31 = 0;
LABEL_42:
          v39 = (a3 + 4 * v31);
          do
          {
            a9.i32[0] = *(v20 + v31);
            v40 = *v39++;
            a9 = vmulq_f32(v40, vcvtq_n_f32_s32(vqtbl1q_s8(a9, xmmword_273BA1CF0), 0x18uLL));
            v29 = (((v29 + *a9.i32) + *&a9.i32[1]) + *&a9.i32[2]) + *&a9.i32[3];
            v31 += 4;
          }

          while (v28 != v31);
          a2[v19] = v29;
          v30 = v10 & 0x7FFFFFFC;
          if (v28 == v10)
          {
            goto LABEL_33;
          }

          goto LABEL_45;
        }

        v32 = v10 & 0x7FFFFFF0;
        v33 = a3;
        v34 = v20;
        do
        {
          v35 = *v34++;
          v36 = vmulq_f32(v33[3], vcvtq_n_f32_s32(vqtbl1q_s8(v35, xmmword_273BA1D20), 0x18uLL));
          v37 = vmulq_f32(v33[2], vcvtq_n_f32_s32(vqtbl1q_s8(v35, xmmword_273BA1D10), 0x18uLL));
          v38 = vmulq_f32(v33[1], vcvtq_n_f32_s32(vqtbl1q_s8(v35, xmmword_273BA1D00), 0x18uLL));
          a9 = vmulq_f32(*v33, vcvtq_n_f32_s32(vqtbl1q_s8(v35, xmmword_273BA1CF0), 0x18uLL));
          v29 = (((((((((((((((v29 + *a9.i32) + *&a9.i32[1]) + *&a9.i32[2]) + *&a9.i32[3]) + v38.f32[0]) + v38.f32[1]) + v38.f32[2]) + v38.f32[3]) + v37.f32[0]) + v37.f32[1]) + v37.f32[2]) + v37.f32[3]) + v36.f32[0]) + v36.f32[1]) + v36.f32[2]) + v36.f32[3];
          v33 += 4;
          v32 -= 16;
        }

        while (v32);
        a2[v19] = v29;
        if ((v10 & 0x7FFFFFF0) == v10)
        {
          goto LABEL_33;
        }

        v31 = v10 & 0x7FFFFFF0;
        v30 = v31;
        if ((v10 & 0xC) != 0)
        {
          goto LABEL_42;
        }
      }

LABEL_45:
      v41 = v10 - v30;
      v42 = &a3->f32[v30];
      v43 = v9 * v30;
      do
      {
        a9.i8[0] = *(v20 + v43);
        a9 = vmovl_s16(*&vmovl_s8(*a9.i8));
        v44 = *v42++;
        *a9.i32 = a9.i32[0];
        v29 = v29 + (*a9.i32 * v44);
        a2[v19] = v29;
        v43 += v9;
        --v41;
      }

      while (v41);
LABEL_33:
      ++v19;
      v20 = (v20 + 1);
    }

    while (v19 != v9);
  }

  if (v9 < 8)
  {
    v45 = 0;
LABEL_53:
    v50 = v9 - v45;
    v51 = &a2[v45];
    do
    {
      *v51 = *v51 * 0.0078125;
      ++v51;
      --v50;
    }

    while (v50);
    goto LABEL_55;
  }

  v45 = v9 & 0x7FFFFFF8;
  v46 = (a2 + 4);
  v47.i64[0] = 0x3C0000003C000000;
  v47.i64[1] = 0x3C0000003C000000;
  v48 = v45;
  do
  {
    v49 = vmulq_f32(*v46, v47);
    v46[-1] = vmulq_f32(v46[-1], v47);
    *v46 = v49;
    v46 += 2;
    v48 -= 8;
  }

  while (v48);
  if (v45 != v9)
  {
    goto LABEL_53;
  }

LABEL_55:
  if (*(result + 24))
  {
    do
    {
      v52 = *a2 * 0.5;
      v53 = 1.0;
      if (v52 < 8.0)
      {
        v53 = -1.0;
        if (v52 > -8.0)
        {
          v54 = v52 < 0.0;
          if (v52 < 0.0)
          {
            v52 = -v52;
          }

          v55 = (v52 * 25.0) + 0.5;
          v56 = floorf(v55);
          v57 = vcvtms_s32_f32(v55);
          if (v54)
          {
            v53 = -(tansig_table[v57] + (((v52 + (v56 * -0.04)) * (1.0 - (tansig_table[v57] * tansig_table[v57]))) * (1.0 - (tansig_table[v57] * (v52 + (v56 * -0.04))))));
          }

          else
          {
            v53 = tansig_table[v57] + (((v52 + (v56 * -0.04)) * (1.0 - (tansig_table[v57] * tansig_table[v57]))) * (1.0 - (tansig_table[v57] * (v52 + (v56 * -0.04)))));
          }
        }
      }

      *a2++ = (v53 * 0.5) + 0.5;
      --v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v58 = *a2;
      v59 = 1.0;
      if (*a2 < 8.0)
      {
        v59 = -1.0;
        if (v58 > -8.0)
        {
          v60 = v58 < 0.0;
          if (v58 < 0.0)
          {
            v58 = -v58;
          }

          v61 = (v58 * 25.0) + 0.5;
          v62 = floorf(v61);
          v63 = vcvtms_s32_f32(v61);
          if (v60)
          {
            v59 = -(tansig_table[v63] + (((v58 + (v62 * -0.04)) * (1.0 - (tansig_table[v63] * tansig_table[v63]))) * (1.0 - (tansig_table[v63] * (v58 + (v62 * -0.04))))));
          }

          else
          {
            v59 = tansig_table[v63] + (((v58 + (v62 * -0.04)) * (1.0 - (tansig_table[v63] * tansig_table[v63]))) * (1.0 - (tansig_table[v63] * (v58 + (v62 * -0.04)))));
          }
        }
      }

      *a2++ = v59;
      --v9;
    }

    while (v9);
  }

  return result;
}

int8x16_t **compute_gru(int8x16_t **result, float *__dst, float *a3, double a4, int8x16_t a5)
{
  v136[14] = *MEMORY[0x277D85DE8];
  v5 = *(result + 7);
  if (v5 < 1)
  {
    return result;
  }

  v7 = *(result + 6);
  v8 = (3 * v5);
  v9 = *result;
  if (v5 < 4)
  {
    v10 = 0;
    goto LABEL_13;
  }

  if (v5 >= 0x10)
  {
    v10 = v5 & 0x7FFFFFF0;
    v11 = v134;
    a5 = xmmword_273BA1D10;
    v12 = v10;
    v13 = *result;
    do
    {
      v14 = *v13++;
      v11[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v14, xmmword_273BA1D10), 0x18uLL);
      v11[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v14, xmmword_273BA1D20), 0x18uLL);
      *v11 = vcvtq_n_f32_s32(vqtbl1q_s8(v14, xmmword_273BA1CF0), 0x18uLL);
      v11[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v14, xmmword_273BA1D00), 0x18uLL);
      v11 += 4;
      v12 -= 16;
    }

    while (v12);
    if (v10 == v5)
    {
      goto LABEL_15;
    }

    if ((v5 & 0xC) == 0)
    {
LABEL_13:
      v20 = v5 - v10;
      v21 = &v134[v10];
      v22 = &v9->i8[v10];
      do
      {
        v23 = *v22++;
        *v21++ = v23;
        --v20;
      }

      while (v20);
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = v10;
  v10 = v5 & 0x7FFFFFFC;
  v16 = (v9->u32 + v15);
  v17 = &v134[v15];
  v18 = v15 - v10;
  do
  {
    v19 = *v16++;
    a5.i32[0] = v19;
    a5 = vcvtq_n_f32_s32(vqtbl1q_s8(a5, xmmword_273BA1CF0), 0x18uLL);
    *v17++ = a5;
    v18 += 4;
  }

  while (v18);
  if (v10 != v5)
  {
    goto LABEL_13;
  }

LABEL_15:
  v24 = result[1];
  if (v7 >= 1)
  {
    v25 = 0;
    v26 = result[1];
    do
    {
      v27 = v134[v25];
      v28 = v26;
      v29 = a3;
      v30 = v7;
      do
      {
        a5.i8[0] = *v28;
        a5.i64[0] = vmovl_s16(*&vmovl_s8(*a5.i8)).u64[0];
        *a5.i32 = a5.i32[0];
        v31 = *v29++;
        v27 = v27 + (*a5.i32 * v31);
        v28 += v8;
        --v30;
      }

      while (v30);
      v134[v25++] = v27;
      ++v26;
    }

    while (v25 != v5);
  }

  v32 = 0;
  v33 = result[2];
  v34 = v33;
  do
  {
    v35 = 0;
    v36 = v134[v32];
    v37 = v34;
    do
    {
      a5.i8[0] = *v37;
      a5 = vmovl_s16(*&vmovl_s8(*a5.i8));
      *a5.i32 = a5.i32[0];
      v36 = v36 + (*a5.i32 * __dst[v35++]);
      v37 += v8;
    }

    while (v5 != v35);
    v134[v32++] = v36;
    ++v34;
  }

  while (v32 != v5);
  v38 = v134;
  a5.i32[0] = 0.5;
  v39 = v5;
  do
  {
    v40 = (*v38 * 0.0078125) * 0.5;
    v41 = 1.0;
    if (v40 < 8.0)
    {
      v41 = -1.0;
      if (v40 > -8.0)
      {
        v42 = v40 < 0.0;
        if (v40 < 0.0)
        {
          v40 = -v40;
        }

        v43 = (v40 * 25.0) + 0.5;
        v44 = floorf(v43);
        v45 = vcvtms_s32_f32(v43);
        if (v42)
        {
          v41 = -(tansig_table[v45] + (((v40 + (v44 * -0.04)) * (1.0 - (tansig_table[v45] * tansig_table[v45]))) * (1.0 - (tansig_table[v45] * (v40 + (v44 * -0.04))))));
        }

        else
        {
          v41 = tansig_table[v45] + (((v40 + (v44 * -0.04)) * (1.0 - (tansig_table[v45] * tansig_table[v45]))) * (1.0 - (tansig_table[v45] * (v40 + (v44 * -0.04)))));
        }
      }
    }

    *v38++ = (v41 * 0.5) + 0.5;
    --v39;
  }

  while (v39);
  if (v5 < 4)
  {
    v46 = 0;
    goto LABEL_44;
  }

  if (v5 >= 0x10)
  {
    v47 = (v9 + v5);
    v46 = v5 & 0x7FFFFFF0;
    v48 = v132;
    a5 = xmmword_273BA1D10;
    v49 = v46;
    do
    {
      v50 = *v47++;
      v48[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v50, xmmword_273BA1D10), 0x18uLL);
      v48[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v50, xmmword_273BA1D20), 0x18uLL);
      *v48 = vcvtq_n_f32_s32(vqtbl1q_s8(v50, xmmword_273BA1CF0), 0x18uLL);
      v48[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v50, xmmword_273BA1D00), 0x18uLL);
      v48 += 4;
      v49 -= 16;
    }

    while (v49);
    if (v46 == v5)
    {
      goto LABEL_46;
    }

    if ((v5 & 0xC) == 0)
    {
LABEL_44:
      v56 = v5 - v46;
      v57 = &v132[v46];
      v58 = &v9->i8[v46 + v5];
      do
      {
        v59 = *v58++;
        *v57++ = v59;
        --v56;
      }

      while (v56);
      goto LABEL_46;
    }
  }

  else
  {
    v46 = 0;
  }

  v51 = v46;
  v46 = v5 & 0x7FFFFFFC;
  v52 = (v9->u32 + v51 + v5);
  v53 = &v132[v51];
  v54 = v51 - v46;
  do
  {
    v55 = *v52++;
    a5.i32[0] = v55;
    a5 = vcvtq_n_f32_s32(vqtbl1q_s8(a5, xmmword_273BA1CF0), 0x18uLL);
    *v53++ = a5;
    v54 += 4;
  }

  while (v54);
  if (v46 != v5)
  {
    goto LABEL_44;
  }

LABEL_46:
  if (v7 >= 1)
  {
    v60 = 0;
    v61 = &v24->u8[v5];
    do
    {
      v62 = v132[v60];
      v63 = v61;
      v64 = a3;
      v65 = v7;
      do
      {
        a5.i8[0] = *v63;
        a5.i64[0] = vmovl_s16(*&vmovl_s8(*a5.i8)).u64[0];
        *a5.i32 = a5.i32[0];
        v66 = *v64++;
        v62 = v62 + (*a5.i32 * v66);
        v63 += v8;
        --v65;
      }

      while (v65);
      v132[v60++] = v62;
      ++v61;
    }

    while (v60 != v5);
  }

  v67 = 0;
  v68 = v33;
  do
  {
    v69 = 0;
    v70 = v132[v67];
    v71 = v68;
    do
    {
      a5.i8[0] = v71[v5];
      a5 = vmovl_s16(*&vmovl_s8(*a5.i8));
      *a5.i32 = a5.i32[0];
      v70 = v70 + (*a5.i32 * __dst[v69++]);
      v71 += v8;
    }

    while (v5 != v69);
    v132[v67++] = v70;
    ++v68;
  }

  while (v67 != v5);
  v72 = v132;
  v73 = v5;
  do
  {
    v74 = (*v72 * 0.0078125) * 0.5;
    v75 = 1.0;
    if (v74 < 8.0)
    {
      v75 = -1.0;
      if (v74 > -8.0)
      {
        v76 = v74 < 0.0;
        if (v74 < 0.0)
        {
          v74 = -v74;
        }

        v77 = (v74 * 25.0) + 0.5;
        v78 = floorf(v77);
        v79 = vcvtms_s32_f32(v77);
        if (v76)
        {
          v75 = -(tansig_table[v79] + (((v74 + (v78 * -0.04)) * (1.0 - (tansig_table[v79] * tansig_table[v79]))) * (1.0 - (tansig_table[v79] * (v74 + (v78 * -0.04))))));
        }

        else
        {
          v75 = tansig_table[v79] + (((v74 + (v78 * -0.04)) * (1.0 - (tansig_table[v79] * tansig_table[v79]))) * (1.0 - (tansig_table[v79] * (v74 + (v78 * -0.04)))));
        }
      }
    }

    *v72++ = (v75 * 0.5) + 0.5;
    --v73;
  }

  while (v73);
  v80 = (2 * v5);
  if (v5 < 4)
  {
    v81 = 0;
    goto LABEL_75;
  }

  if (v5 >= 0x10)
  {
    v82 = (v9 + v80);
    v81 = v5 & 0x7FFFFFF0;
    v83 = __src;
    a5 = xmmword_273BA1D10;
    v84 = v81;
    do
    {
      v85 = *v82++;
      v83[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v85, xmmword_273BA1D10), 0x18uLL);
      v83[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v85, xmmword_273BA1D20), 0x18uLL);
      *v83 = vcvtq_n_f32_s32(vqtbl1q_s8(v85, xmmword_273BA1CF0), 0x18uLL);
      v83[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v85, xmmword_273BA1D00), 0x18uLL);
      v83 += 4;
      v84 -= 16;
    }

    while (v84);
    if (v81 == v5)
    {
      goto LABEL_77;
    }

    if ((v5 & 0xC) == 0)
    {
LABEL_75:
      v91 = v5 - v81;
      v92 = &__src[v81];
      v93 = &v9->i8[v81 + v80];
      do
      {
        v94 = *v93++;
        *v92++ = v94;
        --v91;
      }

      while (v91);
      goto LABEL_77;
    }
  }

  else
  {
    v81 = 0;
  }

  v86 = v81;
  v81 = v5 & 0x7FFFFFFC;
  v87 = (v9->u32 + v86 + v80);
  v88 = &__src[v86];
  v89 = v86 - v81;
  do
  {
    v90 = *v87++;
    a5.i32[0] = v90;
    a5 = vcvtq_n_f32_s32(vqtbl1q_s8(a5, xmmword_273BA1CF0), 0x18uLL);
    *v88++ = a5;
    v89 += 4;
  }

  while (v89);
  if (v81 != v5)
  {
    goto LABEL_75;
  }

LABEL_77:
  if (v5 >= 8)
  {
    v95 = v5 & 0x7FFFFFF8;
    v96 = (__dst + 4);
    v97 = &v133;
    v98 = v136;
    v99 = v95;
    do
    {
      a5 = vmulq_f32(*v96, *v97);
      v98[-1] = vmulq_f32(v96[-1], v97[-1]);
      *v98 = a5;
      v96 += 2;
      v97 += 2;
      v98 += 2;
      v99 -= 8;
    }

    while (v99);
    if (v95 == v5)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v95 = 0;
  }

  v100 = v5 - v95;
  v101 = v95;
  v102 = &v135[v95];
  v103 = &v132[v101];
  v104 = &__dst[v101];
  do
  {
    v105 = *v104++;
    v106 = v105;
    v107 = *v103++;
    *a5.i32 = v107;
    *v102++ = v106 * v107;
    --v100;
  }

  while (v100);
LABEL_84:
  if (v7 >= 1)
  {
    v108 = 0;
    v109 = &v24->u8[v80];
    do
    {
      v110 = __src[v108];
      v111 = v109;
      v112 = a3;
      v113 = v7;
      do
      {
        a5.i8[0] = *v111;
        a5.i64[0] = vmovl_s16(*&vmovl_s8(*a5.i8)).u64[0];
        *a5.i32 = a5.i32[0];
        v114 = *v112++;
        v110 = v110 + (*a5.i32 * v114);
        v111 += v8;
        --v113;
      }

      while (v113);
      __src[v108++] = v110;
      ++v109;
    }

    while (v108 != v5);
  }

  v115 = 0;
  v116 = &v33[v80];
  do
  {
    v117 = __src[v115];
    v118 = v135;
    v119 = v116;
    v120 = v5;
    do
    {
      a5.i8[0] = *v119;
      a5.i64[0] = vmovl_s16(*&vmovl_s8(*a5.i8)).u64[0];
      *a5.i32 = a5.i32[0];
      v121 = *v118++;
      v117 = v117 + (*a5.i32 * v121);
      v119 += v8;
      --v120;
    }

    while (v120);
    __src[v115++] = v117;
    ++v116;
  }

  while (v115 != v5);
  for (i = 0; i != v5; ++i)
  {
    v123 = __src[i] * 0.0078125;
    v124 = 1.0;
    if (v123 < 8.0)
    {
      v124 = -1.0;
      if (v123 > -8.0)
      {
        v125 = -v123;
        v126 = v123 < 0.0;
        if (v123 >= 0.0)
        {
          v125 = __src[i] * 0.0078125;
        }

        v127 = (v125 * 25.0) + 0.5;
        v128 = floorf(v127);
        v129 = vcvtms_s32_f32(v127);
        v130 = tansig_table[v129] + (((v125 + (v128 * -0.04)) * (1.0 - (tansig_table[v129] * tansig_table[v129]))) * (1.0 - (tansig_table[v129] * (v125 + (v128 * -0.04)))));
        v124 = -v130;
        if (!v126)
        {
          v124 = v130;
        }
      }
    }

    __src[i] = ((1.0 - v134[i]) * v124) + (v134[i] * __dst[i]);
  }

  return memcpy(__dst, __src, 4 * v5);
}

unint64_t silk_NLSF2A(int16x8_t *a1, __int16 *a2, signed int a3)
{
  *(&v84[11] + 4) = *MEMORY[0x277D85DE8];
  v6 = &silk_NLSF2A_ordering10;
  if (a3 == 16)
  {
    v6 = &silk_NLSF2A_ordering16;
  }

  v7 = a3;
  v8 = (a3 - 1);
  if (a3 < 1)
  {
    v13 = (a3 >> 1);
    v81 = 0x10000;
    v82 = -v3;
    if (v13 > 1)
    {
      goto LABEL_7;
    }

LABEL_28:
    v78 = 0x10000;
    v79 = -LODWORD(v84[0]);
    goto LABEL_29;
  }

  v9 = a3;
  do
  {
    v10 = *a2++;
    v11 = ((((silk_LSFCosTab_FIX_Q12[(v10 >> 8) + 1] - silk_LSFCosTab_FIX_Q12[v10 >> 8]) * v10 + (silk_LSFCosTab_FIX_Q12[v10 >> 8] << 8)) >> 3) + 1) >> 1;
    v12 = *v6++;
    *(&v83 + v12) = v11;
    --v9;
  }

  while (v9);
  v13 = (a3 >> 1);
  v81 = 0x10000;
  v82 = -v83;
  if (v13 <= 1)
  {
    goto LABEL_28;
  }

LABEL_7:
  v14 = 0;
  v15 = &v80;
  v16 = 1;
  do
  {
    v17 = *(&v83 + 2 * v16);
    v18 = v16 + 1;
    *(&v81 + v16 + 1) = 2 * *(&v81 + v16 - 1) - ((((*(&v81 + v16) * v17) >> 15) + 1) >> 1);
    if (v16 >= 2)
    {
      if (v14 < 4)
      {
        goto LABEL_14;
      }

      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v16 -= v14 & 0xFFFFFFFFFFFFFFFCLL;
      v20 = vdupq_n_s32(v17);
      v21 = v15;
      do
      {
        *v21 = vsubq_s32(vaddq_s32(*v21, *(v21 - 8)), vrshrn_high_n_s64(vrshrn_n_s64(vshrq_n_u64(vmull_s32(*v20.i8, *(&v21[-1].u64[1] + 4)), 0xFuLL), 1uLL), vshrq_n_u64(vmull_high_s32(v20, *(v21 - 4)), 0xFuLL), 1uLL));
        --v21;
        v19 -= 4;
      }

      while (v19);
      if (v14 != (v14 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_14:
        v22 = v16 + 1;
        v23 = &v81 + v16;
        v24 = v23;
        do
        {
          v25 = *--v24;
          *v23 = *v23 + *(v23 - 2) - ((((v25 * v17) >> 15) + 1) >> 1);
          --v22;
          v23 = v24;
        }

        while (v22 > 2);
      }
    }

    v82 -= v17;
    ++v14;
    v15 = (v15 + 4);
    v16 = v18;
  }

  while (v18 != v13);
  v26 = 0;
  v78 = 0x10000;
  v79 = -LODWORD(v84[0]);
  v27 = &v77;
  v28 = 1;
  do
  {
    v29 = v84[v28];
    v30 = v28 + 1;
    *(&v78 + v28 + 1) = 2 * *(&v78 + v28 - 1) - ((((*(&v78 + v28) * v29) >> 15) + 1) >> 1);
    if (v28 >= 2)
    {
      if (v26 < 4)
      {
        goto LABEL_24;
      }

      v31 = v26 & 0xFFFFFFFFFFFFFFFCLL;
      v28 -= v26 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = vdupq_n_s32(v29);
      v33 = v27;
      do
      {
        *v33 = vsubq_s32(vaddq_s32(*v33, *(v33 - 8)), vrshrn_high_n_s64(vrshrn_n_s64(vshrq_n_u64(vmull_s32(*v32.i8, *(&v33[-1].u64[1] + 4)), 0xFuLL), 1uLL), vshrq_n_u64(vmull_high_s32(v32, *(v33 - 4)), 0xFuLL), 1uLL));
        --v33;
        v31 -= 4;
      }

      while (v31);
      if (v26 != (v26 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_24:
        v34 = v28 + 1;
        v35 = &v78 + v28;
        v36 = v35;
        do
        {
          v37 = *--v36;
          *v35 = *v35 + *(v35 - 2) - ((((v37 * v29) >> 15) + 1) >> 1);
          --v34;
          v35 = v36;
        }

        while (v34 > 2);
      }
    }

    v79 -= v29;
    ++v26;
    v27 = (v27 + 4);
    v28 = v30;
  }

  while (v30 != v13);
LABEL_29:
  if (v13 >= 1)
  {
    v38 = v81;
    v39 = &v79;
    v40 = v78;
    v41 = &v82;
    v42 = &v75;
    v43 = a3 - 1;
    do
    {
      v45 = *v41++;
      v44 = v45;
      v46 = v45 + v38;
      v47 = *v39++;
      v48 = v47 - v40;
      v42->i32[0] = -(v46 + v48);
      v42 = (v42 + 4);
      v75.i32[v43--] = v48 - v46;
      v40 = v47;
      v38 = v44;
      --v13;
    }

    while (v13);
  }

  silk_LPC_fit(a1, &v75, 12, 17, a3);
  if (a3 <= 0)
  {
    result = silk_LPC_inverse_pred_gain_c(a1, a3);
    if (!result)
    {
      v74 = 0;
      do
      {
        v75.i32[v8] = (v75.i32[v8] * ((-2 << v74) + 0x10000)) >> 16;
        result = silk_LPC_inverse_pred_gain_c(a1, a3);
        if (result)
        {
          break;
        }

        v73 = v74++ >= 0xF;
      }

      while (!v73);
    }
  }

  else
  {
    result = silk_LPC_inverse_pred_gain_c(a1, a3);
    if (!result)
    {
      v50 = 0;
      v51.i64[0] = 0x100000001;
      v51.i64[1] = 0x100000001;
      v52 = 0uLL;
      while (1)
      {
        v53 = (-2 << v50) + 0x10000;
        if (a3 != 1)
        {
          v54 = &v75;
          v55 = v8;
          do
          {
            v54->i32[0] = (v54->i32[0] * v53) >> 16;
            v54 = (v54 + 4);
            v53 += (((v53 * (-2 << v50)) >> 15) + 1) >> 1;
            --v55;
          }

          while (v55);
        }

        v75.i32[v8] = (v75.i32[v8] * v53) >> 16;
        if (a3 >= 4)
        {
          if (a3 < 0x10)
          {
            v57 = 0;
LABEL_46:
            v65 = (&v75 + 4 * v57);
            v66 = v57 - (v7 & 0x7FFFFFFC);
            v67 = (a1 + 2 * v57);
            do
            {
              v68 = *v65++;
              *v67++ = vmovn_s32(vhaddq_u32(vshrq_n_u32(v68, 4uLL), v51));
              v66 += 4;
            }

            while (v66);
            v56 = v7 & 0x7FFFFFFC;
            if (v56 == v7)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          v58 = v7 & 0x7FFFFFF0;
          v59 = a1 + 1;
          v60 = &v76;
          do
          {
            v62 = v60[-2];
            v61 = v60[-1];
            v64 = *v60;
            v63 = v60[1];
            v60 += 4;
            v59[-1] = vuzp1q_s16(vrhaddq_u32(vshrq_n_u32(v62, 4uLL), v52), vrhaddq_u32(vshrq_n_u32(v61, 4uLL), v52));
            *v59 = vuzp1q_s16(vrhaddq_u32(vshrq_n_u32(v64, 4uLL), v52), vrhaddq_u32(vshrq_n_u32(v63, 4uLL), v52));
            v59 += 2;
            v58 -= 16;
          }

          while (v58);
          if ((v7 & 0x7FFFFFF0) == v7)
          {
            goto LABEL_51;
          }

          v57 = v7 & 0x7FFFFFF0;
          v56 = v57;
          if ((v7 & 0xC) != 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v56 = 0;
        }

LABEL_49:
        v69 = v7 - v56;
        v70 = &a1->i16[v56];
        v71 = &v75.i32[v56];
        do
        {
          v72 = *v71++;
          *v70++ = ((v72 >> 4) + 1) >> 1;
          --v69;
        }

        while (v69);
LABEL_51:
        result = silk_LPC_inverse_pred_gain_c(a1, a3);
        v51.i64[0] = 0x100000001;
        v51.i64[1] = 0x100000001;
        v52 = 0uLL;
        if (!result)
        {
          v73 = v50++ >= 0xF;
          if (!v73)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

__int16 *silk_NLSF_decode(__int16 *a1, char *a2, uint64_t a3)
{
  *&v28[50] = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *a2;
    v6 = *(a3 + 2);
    v7 = v3 * v5;
    v8 = *(a3 + 32);
    v9 = (*(a3 + 40) + v7 / 2);
    do
    {
      v11 = *v9++;
      v10 = v11;
      if (v11)
      {
        v12 = v6 - 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = &v28[v4 + 34];
      *v13 = *(v8 + v12 + v4);
      v13[1] = *(v8 + 1 + (((v6 - 1) & (v10 << 27 >> 31)) + v4));
      v4 += 2;
    }

    while (v4 < v6);
    LOWORD(v14) = 0;
    v15 = *(a3 + 4);
    v16 = v6;
    do
    {
      v17 = a2[v16];
      if (v17 <= 0)
      {
        v18 = ((v17 << 10) | 0x66) & (v17 >> 31);
      }

      else
      {
        v18 = ((v17 << 10) - 102);
      }

      v14 = ((v18 * v15) >> 16) + ((v14 * v28[v16 + 33]) >> 8);
      *&v28[2 * v16] = v14;
    }

    while (v16-- > 1);
    v20 = 0;
    v21 = v6 * v5;
    v22 = *(a3 + 8) + v21;
    v23 = *(a3 + 16) + 2 * v21;
    do
    {
      v24 = (*&v28[2 * v20 + 2] << 14) / *(v23 + 2 * v20) + (*(v22 + v20) << 7);
      v25 = v24 & ~(v24 >> 31);
      if (v25 >= 0x7FFF)
      {
        LOWORD(v25) = 0x7FFF;
      }

      a1[v20++] = v25;
    }

    while (v20 < *(a3 + 2));
    LOWORD(v3) = *(a3 + 2);
  }

  v26 = *(a3 + 64);

  return silk_NLSF_stabilize(a1, v26, v3);
}

uint64_t silk_NLSF_del_dec_quant(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, int a8, int a9, __int16 __na, size_t __n)
{
  v13 = 0;
  v14 = __na;
  v15 = a9;
  v131 = *MEMORY[0x277D85DE8];
  v16 = 922;
  v17 = v102;
  v18 = v101;
  v19 = 102;
  do
  {
    v22 = (v13 - 10) << 10;
    if (v13 - 10 >= 1)
    {
      v20 = v22 - 102;
      v21 = v22 | 0x39A;
    }

    else if (v13 == 10)
    {
      v21 = 922;
      v20 = 0;
    }

    else
    {
      v23 = v22 + 1024;
      v24 = v22 | 0x66;
      v25 = (v22 + 1024) | 0x66;
      if (v13 == 9)
      {
        v20 = -922;
      }

      else
      {
        v20 = v24;
      }

      if (v13 == 9)
      {
        v21 = v23;
      }

      else
      {
        v21 = v25;
      }
    }

    v102[v13] = (a7 * v20) >> 16;
    v101[v13++] = (a7 * v21) >> 16;
  }

  while (v13 != 20);
  v111 = 0;
  v119 = 0;
  v26 = __na;
  if (__na >= 1)
  {
    __dst = a1;
    v27 = v126 + __na + 1;
    v28 = 1;
    while (1)
    {
      while (1)
      {
        v29 = v26--;
        if (v28 >= 1)
        {
          break;
        }

LABEL_36:
        if (v28 <= 1)
        {
          v47 = (2 * v28) - 4;
          v48 = v27;
          do
          {
            v48[32 * v28] = *v48;
            v48 += 16;
          }

          while (!__CFADD__(v47++, 1));
        }

        v28 *= 2;
        --v27;
        if (v29 <= 1)
        {
          goto LABEL_102;
        }
      }

      v30 = 0;
      v31 = a6 + *(a5 + 2 * v26);
      v32 = v126 + 1;
      v33 = *(a2 + 2 * v26);
      v34 = *(a4 + v26);
      v35 = *(a3 + 2 * v26);
      do
      {
        v40 = (*(&v119 + v30) * v34) >> 8;
        v41 = ((v33 - v40) * a8) >> 16;
        if (v41 <= -10)
        {
          v42 = -10;
        }

        else
        {
          v42 = ((v33 - v40) * a8) >> 16;
        }

        if (v42 >= 9)
        {
          v42 = 9;
        }

        v32[v29] = v42;
        v43 = v40 + v102[v42 + 10];
        v44 = v101[v42 + 10] + v40;
        *(&v119 + v30) = v43;
        *(&v119 + v28 + v30) = v44;
        if (v41 < 3)
        {
          if (v41 > -4)
          {
            v45 = v31 + v42;
            v37 = *(v45 + 4);
            v38 = *(v45 + 5);
          }

          else if (v41 == -4)
          {
            v38 = *(v31 + 5 + v42);
            v37 = 280;
          }

          else
          {
            v46 = -43 * v42;
            v37 = -43 * v42 + 108;
            v38 = v46 + 65;
          }
        }

        else if (v41 == 3)
        {
          v37 = *(v31 + 7);
          v38 = 280;
        }

        else
        {
          v36 = 43 * v42;
          v37 = 43 * v42 + 108;
          v38 = v36 + 151;
        }

        v39 = *(&v111 + v30);
        *(&v111 + v30) = (v33 - v43) * v35 * (v33 - v43) + v37 * a9 + v39;
        *(&v111 + v28 + v30++) = v39 + (v33 - v44) * v35 * (v33 - v44) + v38 * a9;
        v32 += 16;
      }

      while (v28 != v30);
      if (v28 < 3)
      {
        *(&v126[8 * v28 + 1] + v26) = *(&v126[1] + v26) + 1;
        if (v28 != 1)
        {
          *(&v126[8 * v28 + 9] + v26) = *(&v126[9] + v26) + 1;
        }

        goto LABEL_36;
      }

      v50 = v111;
      v51 = v115;
      if (v111 <= v115)
      {
        v53 = 0;
        v54 = v115;
      }

      else
      {
        v111 = v115;
        v115 = v50;
        v52 = v119;
        v119 = v123;
        v123 = v52;
        v53 = 4;
        v54 = v50;
        v50 = v51;
      }

      v103 = v54;
      v107 = v50;
      v127 = v53;
      v55 = v112;
      v56 = v116;
      if (v112 <= v116)
      {
        v58 = 1;
        v59 = v116;
      }

      else
      {
        v112 = v116;
        v116 = v55;
        v57 = v120;
        v120 = v124;
        v124 = v57;
        v58 = 5;
        v59 = v55;
        v55 = v56;
      }

      v104 = v59;
      v108 = v55;
      v128 = v58;
      v60 = v113;
      v61 = v117;
      if (v113 <= v117)
      {
        v63 = 2;
        v64 = v117;
      }

      else
      {
        v113 = v117;
        v117 = v60;
        v62 = v121;
        v121 = v125;
        v125 = v62;
        v63 = 6;
        v64 = v60;
        v60 = v61;
      }

      v105 = v64;
      v109 = v60;
      v95 = v63;
      v129 = v63;
      v65 = v114;
      v66 = v118;
      if (v114 <= v118)
      {
        v68 = 3;
        v69 = v118;
      }

      else
      {
        v114 = v118;
        v118 = v65;
        v67 = v122;
        v122 = v126[0];
        v126[0] = v67;
        v68 = 7;
        v69 = v65;
        v65 = v66;
      }

      v106 = v69;
      v110 = v65;
      v130 = v68;
      v70 = v50 & ~(v50 >> 31);
      if (v54 >= v59)
      {
        v71 = v59;
      }

      else
      {
        v71 = v54;
      }

      if (v70 <= v55)
      {
        v72 = v55;
      }

      else
      {
        v72 = v70;
      }

      if (v71 >= v64)
      {
        v73 = v64;
      }

      else
      {
        v73 = v71;
      }

      if (v72 <= v60)
      {
        v74 = v60;
      }

      else
      {
        v74 = v72;
      }

      if (v73 >= v69)
      {
        v75 = v69;
      }

      else
      {
        v75 = v73;
      }

      if (v74 <= v65)
      {
        v76 = v65;
      }

      else
      {
        v76 = v74;
      }

      v77 = v75 < v76;
      v78 = v95;
      if (v77)
      {
        do
        {
          v79 = v70 < v55;
          if (v72 < v60)
          {
            v79 = 2;
          }

          if (v74 < v65)
          {
            v79 = 3;
          }

          v80 = v54 > v59;
          if (v71 > v64)
          {
            v80 = 2;
          }

          if (v73 > v69)
          {
            v80 = 3;
          }

          *(&v127 + v79) = *(&v127 + v80) ^ 4;
          *(&v111 + v79) = *(&v111 + (v80 | 4));
          *(&v119 + v79) = *(&v119 + (v80 | 4));
          *(&v107 + v79) = 0;
          *(&v103 + v80) = 0x7FFFFFFF;
          *&v126[8 * v79 + 1] = *&v126[8 * v80 + 1];
          v54 = v103;
          v59 = v104;
          v55 = v108;
          v64 = v105;
          v69 = v106;
          v60 = v109;
          v65 = v110;
          v70 = v107 & ~(v107 >> 31);
          if (v103 >= v104)
          {
            v71 = v104;
          }

          else
          {
            v71 = v103;
          }

          if (v70 <= v108)
          {
            v72 = v108;
          }

          else
          {
            v72 = v107 & ~(v107 >> 31);
          }

          if (v71 >= v105)
          {
            v73 = v105;
          }

          else
          {
            v73 = v71;
          }

          if (v72 <= v109)
          {
            v74 = v109;
          }

          else
          {
            v74 = v72;
          }

          if (v73 >= v106)
          {
            v81 = v106;
          }

          else
          {
            v81 = v73;
          }

          if (v74 <= v110)
          {
            v82 = v110;
          }

          else
          {
            v82 = v74;
          }
        }

        while (v81 < v82);
        v53 = v127;
        v58 = v128;
        v78 = v129;
        v68 = v130;
      }

      v83 = &v126[1] + v26;
      *v83 += v53 >> 2;
      v83[16] += v58 >> 2;
      v83[32] += v78 >> 2;
      v83[48] += v68 >> 2;
      --v27;
      if (v29 <= 1)
      {
LABEL_102:
        v84 = v111;
        v19 = v112;
        LODWORD(v18) = v113;
        LODWORD(v17) = v114;
        v16 = v115;
        LODWORD(v13) = v116;
        v15 = v117;
        v11 = v118;
        a1 = __dst;
        v14 = __na;
        v26 = __na;
        goto LABEL_104;
      }
    }
  }

  v84 = 0;
LABEL_104:
  v85 = v84 > v19;
  if (v84 >= v19)
  {
    v84 = v19;
  }

  if (v84 <= v18)
  {
    v86 = v85;
  }

  else
  {
    v86 = 2;
  }

  if (v84 >= v18)
  {
    v84 = v18;
  }

  if (v84 <= v17)
  {
    v87 = v86;
  }

  else
  {
    v87 = 3;
  }

  if (v84 >= v17)
  {
    v84 = v17;
  }

  if (v84 <= v16)
  {
    v88 = v87;
  }

  else
  {
    v88 = 4;
  }

  if (v84 >= v16)
  {
    v84 = v16;
  }

  if (v84 <= v13)
  {
    v89 = v88;
  }

  else
  {
    v89 = 5;
  }

  if (v84 < v13)
  {
    LODWORD(v13) = v84;
  }

  if (v13 <= v15)
  {
    v90 = v89;
  }

  else
  {
    v90 = 6;
  }

  if (v13 >= v15)
  {
    v91 = v15;
  }

  else
  {
    v91 = v13;
  }

  if (v91 <= v11)
  {
    v92 = v90;
  }

  else
  {
    v92 = 7;
  }

  if (v14 > 0)
  {
    memcpy(a1, &v126[8 * (v92 & 3) + 1], v26);
  }

  if (v91 >= v11)
  {
    result = v11;
  }

  else
  {
    result = v91;
  }

  *a1 += v92 >> 2;
  return result;
}

uint64_t silk_NLSF_encode(char *a1, __int16 *a2, __int16 *a3, int16x8_t *a4, int a5, uint64_t a6, int a7)
{
  v264 = a6;
  v276 = a5;
  v275 = a4;
  v8 = a3;
  v263 = a1;
  v285 = *MEMORY[0x277D85DE8];
  v281[0].i32[0] = 0;
  v10 = *(a3 + 8);
  v11 = a3[1];
  v280 = a2;
  v12 = silk_NLSF_stabilize(a2, v10, v11);
  v262[1] = v262;
  MEMORY[0x28223BE20](v12, v13, v14);
  v18 = v262 - v17;
  v19 = *v8;
  if (v19 >= 1)
  {
    v20 = v8[1];
    if (v20 > 1)
    {
      v21 = 0;
      v22 = *(v8 + 1);
      v23 = *(v8 + 2);
      v24 = 3;
      if (v20 < 3)
      {
        v24 = v8[1];
      }

      v25 = v20 - v24 + 1;
      v26 = (v25 >> 1) + 1;
      v27 = v20 + v22 - 32;
      v28 = 2 * v20;
      v29 = 2 * v20 - 64;
      v15 = (v280->i16 + v29);
      v16 = (v23 + v29);
      v30 = &v280[-1].i16[6];
      while (v25 >= 0x3E)
      {
        v34 = 0uLL;
        v35 = v16;
        v36 = 0uLL;
        v37 = v15;
        v38 = 0uLL;
        v39 = v27;
        v40 = v26 & 0xFFFFFFFFFFFFFFE0;
        v41 = 0uLL;
        v42 = 0uLL;
        v43 = 0uLL;
        v44 = 0uLL;
        v45 = 0uLL;
        v46 = 0uLL;
        do
        {
          v47 = v37;
          v289 = vld2q_s16(v47);
          v47 += 16;
          v48 = v37 - 32;
          v290 = vld2q_s16(v48);
          v49 = v37 - 16;
          v291 = vld2q_s16(v49);
          v50 = vrev64q_s16(v289.val[0]);
          v292 = vld2q_s16(v47);
          v51 = vrev64q_s16(v291.val[0]);
          v52 = vrev64q_s16(v290.val[0]);
          v289.val[0] = vrev64q_s16(v289.val[1]);
          v53 = vextq_s8(v51, v51, 8uLL);
          v289.val[1] = vrev64q_s16(v291.val[1]);
          v293 = vld2q_s8(v39);
          v291.val[0] = vextq_s8(v52, v52, 8uLL);
          v54 = v39 - 32;
          v286 = vld2q_s8(v54);
          v290.val[0] = vrev64q_s16(v290.val[1]);
          v290.val[1] = vrev64q_s8(v293.val[0]);
          v291.val[1] = vextq_s8(v290.val[1], v290.val[1], 8uLL);
          v290.val[1] = vrev64q_s8(v286.val[0]);
          v55 = vextq_s8(v290.val[1], v290.val[1], 8uLL);
          v290.val[1] = vrev64q_s8(v293.val[1]);
          v290.val[1] = vextq_s8(v290.val[1], v290.val[1], 8uLL);
          v56 = vrev64q_s8(v286.val[1]);
          v57 = vextq_s8(v56, v56, 8uLL);
          v58 = vshll_n_u8(*v290.val[1].i8, 7uLL);
          v293.val[0] = vshll_n_u8(*v57.i8, 7uLL);
          v289.val[0] = vsubq_s16(vextq_s8(v289.val[0], v289.val[0], 8uLL), vshll_high_n_u8(v290.val[1], 7uLL));
          v290.val[0] = vsubq_s16(vextq_s8(v290.val[0], v290.val[0], 8uLL), vshll_high_n_u8(v57, 7uLL));
          v59 = v35;
          v290.val[1] = vrev64q_s16(v292.val[0]);
          v287 = vld2q_s16(v59);
          v59 += 16;
          v60 = vrev64q_s16(v292.val[1]);
          v292.val[0] = vsubq_s16(vextq_s8(v289.val[1], v289.val[1], 8uLL), v293.val[0]);
          *(&v292 + 16) = vld2q_s16(v59);
          v293.val[1] = vextq_s8(v290.val[1], v290.val[1], 8uLL);
          v61 = v35 - 32;
          v288 = vld2q_s16(v61);
          v289.val[1] = vextq_s8(v60, v60, 8uLL);
          v62 = v35 - 16;
          *(&v290 + 16) = vld2q_s16(v62);
          v63 = vsubq_s16(v289.val[1], v58);
          v289.val[1] = vrev64q_s16(v287.val[0]);
          v64 = vextq_s8(v289.val[1], v289.val[1], 8uLL);
          v289.val[1] = vrev64q_s16(v288.val[0]);
          v65 = vextq_s8(v289.val[1], v289.val[1], 8uLL);
          v289.val[1] = vrev64q_s16(v290.val[1]);
          v66 = vrev64q_s16(v292.val[1]);
          v67 = vextq_s8(v289.val[1], v289.val[1], 8uLL);
          v289.val[1] = vrev64q_s16(v287.val[1]);
          v287.val[0] = vextq_s8(v289.val[1], v289.val[1], 8uLL);
          v292.val[1] = vrev64q_s16(v293.val[0]);
          v289.val[1] = vrev64q_s16(v288.val[1]);
          v287.val[1] = vextq_s8(v66, v66, 8uLL);
          v293.val[0] = vextq_s8(v289.val[1], v289.val[1], 8uLL);
          v289.val[1] = vrev64q_s16(v68);
          v69 = vextq_s8(v289.val[1], v289.val[1], 8uLL);
          v289.val[1] = vmull_high_s16(v289.val[0], v287.val[0]);
          v70 = vmull_s16(*v289.val[0].i8, *v287.val[0].i8);
          v292.val[1] = vextq_s8(v292.val[1], v292.val[1], 8uLL);
          v289.val[0] = vmull_high_s16(v290.val[0], v293.val[0]);
          v290.val[0] = vmull_s16(*v290.val[0].i8, *v293.val[0].i8);
          v290.val[1] = vmull_high_s16(v292.val[0], v69);
          v71 = vmull_s16(*v292.val[0].i8, *v69.i8);
          v293.val[0] = vmull_high_s16(v63, v292.val[1]);
          v287.val[0] = vshll_n_u8(*v55.i8, 7uLL);
          v72 = vsubq_s16(vextq_s8(v50, v50, 8uLL), vshll_high_n_u8(v291.val[1], 7uLL));
          v291.val[1] = vsubq_s16(v293.val[1], vshll_n_u8(*v291.val[1].i8, 7uLL));
          v293.val[1] = vmull_s16(*v63.i8, *v292.val[1].i8);
          v73 = vsubq_s16(v291.val[0], vshll_high_n_u8(v55, 7uLL));
          v287.val[0] = vsubq_s16(v53, v287.val[0]);
          v74 = vmull_high_s16(v72, v64);
          v291.val[0] = vmull_s16(*v72.i8, *v64.i8);
          v75 = vmull_s16(*v291.val[1].i8, *v287.val[1].i8);
          v291.val[1] = vmull_high_s16(v291.val[1], v287.val[1]);
          v287.val[1] = vextq_s8(v34, v75, 0xCuLL);
          v34 = vmull_high_s16(v73, v65);
          v292.val[1] = vmull_s16(*v73.i8, *v65.i8);
          v292.val[0] = vmull_high_s16(v287.val[0], v67);
          v76 = vmull_s16(*v287.val[0].i8, *v67.i8);
          v39 -= 64;
          v37 -= 64;
          v35 -= 64;
          v42 = vabaq_s32(vabaq_s32(v42, v289.val[1], vshrq_n_s32(vextq_s8(v291.val[0], v74, 0xCuLL), 1uLL)), v74, vshrq_n_s32(v289.val[1], 1uLL));
          v41 = vabaq_s32(vabaq_s32(v41, v70, vshrq_n_s32(vextq_s8(v291.val[1], v291.val[0], 0xCuLL), 1uLL)), v291.val[0], vshrq_n_s32(v70, 1uLL));
          v38 = vabaq_s32(vabaq_s32(v38, v293.val[0], vshrq_n_s32(vextq_s8(v75, v291.val[1], 0xCuLL), 1uLL)), v291.val[1], vshrq_n_s32(v293.val[0], 1uLL));
          v36 = vabaq_s32(vabaq_s32(v36, v293.val[1], vshrq_n_s32(v287.val[1], 1uLL)), v75, vshrq_n_s32(v293.val[1], 1uLL));
          v46 = vabaq_s32(vabaq_s32(v46, v289.val[0], vshrq_n_s32(vextq_s8(v292.val[1], v34, 0xCuLL), 1uLL)), v34, vshrq_n_s32(v289.val[0], 1uLL));
          v45 = vabaq_s32(vabaq_s32(v45, v290.val[0], vshrq_n_s32(vextq_s8(v292.val[0], v292.val[1], 0xCuLL), 1uLL)), v292.val[1], vshrq_n_s32(v290.val[0], 1uLL));
          v44 = vabaq_s32(vabaq_s32(v44, v290.val[1], vshrq_n_s32(vextq_s8(v76, v292.val[0], 0xCuLL), 1uLL)), v292.val[0], vshrq_n_s32(v290.val[1], 1uLL));
          v43 = vabaq_s32(vabaq_s32(v43, v71, vshrq_n_s32(vextq_s8(v74, v76, 0xCuLL), 1uLL)), v76, vshrq_n_s32(v71, 1uLL));
          v40 -= 32;
        }

        while (v40);
        v32 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v43, v36), vaddq_s32(v45, v41)), vaddq_s32(vaddq_s32(v44, v38), vaddq_s32(v46, v42))));
        if (v26 != (v26 & 0xFFFFFFFFFFFFFFE0))
        {
          v31 = v34.i32[3];
          v33 = v20 - 2 * (v26 & 0xFFFFFFFFFFFFFFE0);
LABEL_13:
          v77 = &v30[v33];
          do
          {
            v78 = v23 + 2 * v33;
            v79 = (v77[1] - (*(v22 + v33 - 1) << 7)) * *(v78 - 2);
            v80 = v79 - (v31 >> 1);
            if (v80 < 0)
            {
              v80 = -v80;
            }

            v81 = v80 + v32;
            v82 = *v77;
            v77 -= 2;
            v31 = (v82 - (*(v22 + v33 - 2) << 7)) * *(v78 - 4);
            v83 = v31 - (v79 >> 1);
            if (v83 < 0)
            {
              v83 = (v79 >> 1) - v31;
            }

            v32 = v81 + v83;
            v158 = v33 <= 3;
            v33 -= 2;
          }

          while (!v158);
        }

        *&v18[4 * v21] = v32;
        v22 += v20;
        ++v21;
        v27 += v20;
        v16 = (v16 + v28);
        v23 += v28;
        if (v21 == v19)
        {
          goto LABEL_22;
        }
      }

      v31 = 0;
      v32 = 0;
      v33 = v20;
      goto LABEL_13;
    }

    v84 = v18;
    bzero(v18, (4 * v19));
    v18 = v84;
  }

LABEL_22:
  v85 = v264;
  v86 = 4 * v264;
  v87 = MEMORY[0x28223BE20](v18, v15, v16);
  v88 = (v86 + 15) & 0x7FFFFFFF0;
  v278 = v262 - v88;
  v89 = silk_insertion_sort_increasing(v87, (v262 - v88), v19, v85);
  v92 = MEMORY[0x28223BE20](v89, v90, v91);
  v279 = (v262 - v88);
  MEMORY[0x28223BE20](v92, v93, v94);
  v277 = v262 - v95;
  if (v85 >= 1)
  {
    v96 = 0;
    v274 = a7 >> 1;
    v273 = (v276 >> 2);
    v97.i64[0] = -1;
    v97.i64[1] = -1;
    v98.i64[0] = 0x700000007;
    v98.i64[1] = 0x700000007;
    v99.i64[0] = 0x800000008;
    v99.i64[1] = 0x800000008;
    v100.i64[0] = 0x1D0000001DLL;
    v100.i64[1] = 0x1D0000001DLL;
    v101.i64[0] = 0x3500000035;
    v101.i64[1] = 0x3500000035;
    v102.i64[0] = 0x8000000080000000;
    v102.i64[1] = 0x8000000080000000;
    v103.i64[0] = 0x8000000080000000;
    v103.i64[1] = 0x8000000080000000;
    v272 = v264;
    v265 = v8;
    while (1)
    {
      v104 = *&v278[4 * v96];
      v105 = v8[1];
      if (v105 >= 1)
      {
        break;
      }

LABEL_48:
      v139 = v104;
      v140 = silk_NLSF_del_dec_quant(&v277[16 * v96], v284, v283, v282, v281[0].i64 + 4, *(v8 + 7), v8[2], v8[3], v276, v105, v261);
      v141 = (*(v8 + 3) + *v8 * v274);
      if (v139)
      {
        v141 += v139;
        v142 = *(v141 - 1);
      }

      else
      {
        v142 = 256;
      }

      v143 = v142 - *v141;
      v144 = __clz(v143);
      v97.i64[0] = -1;
      v97.i64[1] = -1;
      v98.i64[0] = 0x700000007;
      v98.i64[1] = 0x700000007;
      v99.i64[0] = 0x800000008;
      v99.i64[1] = 0x800000008;
      v100.i64[0] = 0x1D0000001DLL;
      v100.i64[1] = 0x1D0000001DLL;
      v101.i64[0] = 0x3500000035;
      v101.i64[1] = 0x3500000035;
      v102.i64[0] = 0x8000000080000000;
      v102.i64[1] = 0x8000000080000000;
      v103.i64[0] = 0x8000000080000000;
      v103.i64[1] = 0x8000000080000000;
      if (v144 != 24)
      {
        v158 = v143 > 0x7F;
        v145 = (v143 << (v144 + 8)) | (v143 >> (24 - v144));
        v143 <<= v144 - 24;
        if (v158)
        {
          LOBYTE(v143) = v145;
        }
      }

      v279[v96++] = v140 + ((0x4000000 - ((179 * (v143 & 0x7F) * (128 - (v143 & 0x7F)) - (v144 << 23) + ((v143 & 0x7F) << 16) + 260046848) & 0xFFFF0000)) >> 16) * v273;
      if (v96 == v272)
      {
        goto LABEL_121;
      }
    }

    v106 = v104 * v105;
    v107 = v104 * v105;
    v109 = *(v8 + 1);
    v108 = *(v8 + 2);
    if (v105 >= 8)
    {
      v110 = 0;
      v146 = (v109 + v106);
      v147 = (v108 + 2 * v106);
      v148 = &v284[v105];
      v149 = &v283[v105];
      v150 = v107 + v105 + v109;
      v271 = *(v8 + 2);
      v151 = v108 + 2 * (v107 + v105);
      v152 = &v280->i16[v105];
      v153 = v275 + 2 * v105;
      v155 = v284 < v150 && v146 < v148;
      v157 = v284 < v151 && v147 < v148;
      v158 = v284 < v152 && v148 > v280;
      v159 = v158;
      v161 = v284 < v153 && v148 > v275;
      v163 = v283 < v150 && v146 < v149;
      v165 = v283 < v151 && v147 < v149;
      v167 = v283 < v152 && v149 > v280;
      v169 = v283 < v153 && v149 > v275;
      v170 = v283 >= v148 || v284 >= v149;
      if (!v170 || v155 || v157 || (v159 & 1) != 0 || v161 || v163 || v165 || v167)
      {
        v108 = v271;
      }

      else
      {
        v108 = v271;
        if (!v169)
        {
          v267 = v109;
          v268 = v104 * v105;
          v270 = v104;
          v269 = v105;
          v171 = v105 & 0x7FF8;
          v172 = v284;
          v173 = v283;
          v266 = v171;
          v174 = v275;
          v175 = v280;
          do
          {
            v176 = *v147++;
            v177 = v176;
            v178 = *v174++;
            v179 = vmovl_s16(*v178.i8);
            v180 = vmovl_high_s16(v178);
            v181 = vmull_s16(*v177.i8, *v177.i8);
            v182 = vmull_high_s16(v177, v177);
            v183 = vclzq_s32(vabsq_s32(v179));
            v184 = vclzq_s32(vabsq_s32(v180));
            v185 = vclzq_s32(v182);
            v186 = vclzq_s32(v181);
            v187 = vshlq_u32(v179, vaddq_s32(v183, v97));
            v188 = vshlq_u32(v182, vaddq_s32(v185, v97));
            v189 = vshlq_u32(v181, vaddq_s32(v186, v97));
            v190 = vshrq_n_s32(v189, 0x10uLL);
            v191 = vshrq_n_s32(v188, 0x10uLL);
            v192 = vshlq_u32(v180, vaddq_s32(v184, v97));
            v193 = 0x1FFFFFFF / v191.i32[1];
            v194 = 0x1FFFFFFF / v191.i32[0];
            v195 = 0x1FFFFFFF / v191.i32[3];
            v196 = 0x1FFFFFFF / v191.i32[2];
            v197 = 0x1FFFFFFF / v190.i32[1];
            v198 = 0x1FFFFFFF / v190.i32[0];
            v199 = 0x1FFFFFFF / v190.i32[3];
            v200 = 0x1FFFFFFF / v190.i32[2];
            v201.i64[0] = v192.i32[0];
            v201.i64[1] = v192.i32[1];
            v202 = v201;
            v201.i64[0] = v192.i32[2];
            v201.i64[1] = v192.i32[3];
            v203 = v201;
            v201.i64[0] = v187.i32[0];
            v201.i64[1] = v187.i32[1];
            v204 = v201;
            v201.i64[0] = v187.i32[2];
            v201.i64[1] = v187.i32[3];
            v205 = v201;
            v201.i64[0] = v200;
            v201.i64[1] = v199;
            v206 = v201;
            v201.i64[0] = v198;
            v201.i64[1] = v197;
            v207 = v201;
            v201.i64[0] = v194;
            v201.i64[1] = v193;
            v208 = v201;
            v201.i64[0] = v196;
            v201.i64[1] = v195;
            v209 = vshrq_n_s64(vshlq_n_s64(v208, 0x30uLL), 0x30uLL);
            v210 = vshrq_n_s64(vshlq_n_s64(v207, 0x30uLL), 0x30uLL);
            v211 = vshrq_n_s64(vshlq_n_s64(v201, 0x30uLL), 0x30uLL);
            v212 = vshrq_n_s64(vshlq_n_s64(v206, 0x30uLL), 0x30uLL);
            v213 = v212.i64[1];
            v214 = v210.i64[1];
            v215 = v212.i64[0];
            v216 = v210.i64[0];
            v204.i64[0] *= v210.i64[0];
            v217 = v211.i64[1];
            v205.i64[0] *= v212.i64[0];
            v218 = v211.i64[0];
            v204.i64[1] *= v210.i64[1];
            v219 = v209.i64[1];
            v205.i64[1] *= v212.i64[1];
            v203.i64[0] *= v211.i64[0];
            v220 = v209.i64[0];
            v203.i64[1] *= v211.i64[1];
            v202.i64[0] *= v209.i64[0];
            v202.i64[1] *= v209.i64[1];
            v178.i64[0] = *v146++;
            v201.i64[0] = v188.i32[2];
            v201.i64[1] = v188.i32[3];
            v221 = v201;
            v201.i64[0] = v189.i32[0];
            v201.i64[1] = v189.i32[1];
            v222 = v201;
            v201.i64[1] = v189.i32[3];
            v223 = vshrq_n_s64(v203, 0x10uLL);
            v224 = vshrq_n_s64(v204, 0x10uLL);
            v225 = v189.i32[2];
            v226 = vshrq_n_s64(v205, 0x10uLL);
            v227 = v226.i64[0] * v225;
            v228 = v224.i64[1] * v222.i64[1];
            v229 = v226.i64[1] * v201.i64[1];
            v226.i64[0] = v224.i64[0] * v222.i64[0];
            v230 = v223.i64[1] * v221.i64[1];
            v231 = v223.i64[0] * v221.i64[0];
            v232 = vshll_n_u8(*v178.i8, 7uLL);
            v233 = *v175;
            v175 += 8;
            v234 = vsubq_s16(v233, v232);
            v221.i64[0] = v227;
            v235 = vmull_high_s16(v234, v177);
            *v177.i8 = vshrn_n_s32(vmull_s16(*v234.i8, *v177.i8), 0xEuLL);
            v201.i64[1] = v188.i32[1];
            v226.i64[1] = v228;
            v236 = vshrq_n_s64(v202, 0x10uLL);
            v223.i64[0] = v231;
            v221.i64[1] = v229;
            v223.i64[1] = v230;
            v188.i64[0] = v236.i64[0] * v188.i32[0];
            v188.i64[1] = v236.i64[1] * v201.i64[1];
            v237 = vsubq_s32(v192, (*&vshrn_high_n_s64(vshrn_n_s64(v188, 0x1DuLL), v223, 0x1DuLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8)));
            v238 = vsubq_s32(v187, (*&vshrn_high_n_s64(vshrn_n_s64(v226, 0x1DuLL), v221, 0x1DuLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8)));
            v201.i64[0] = v238.i32[0];
            v201.i64[1] = v238.i32[1];
            v239 = v201;
            v201.i64[0] = v238.i32[2];
            v201.i64[1] = v238.i32[3];
            v240 = v201;
            v201.i64[1] = v237.i32[1];
            v226.i64[0] = v237.i32[0];
            v237.i64[0] = v218 * v237.i32[2];
            v226.i64[0] *= v220;
            v237.i64[1] = v217 * v237.i32[3];
            v240.i64[0] *= v215;
            v226.i64[1] = v219 * v201.i64[1];
            v239.i64[0] *= v216;
            v240.i64[1] *= v213;
            v239.i64[1] *= v214;
            v241 = vsubq_s32(v184, v185);
            v242 = vuzp1q_s32(vsraq_n_s64(vshrq_n_u64(v239, 0x10uLL), v204, 0x10uLL), vsraq_n_s64(vshrq_n_u64(v240, 0x10uLL), v205, 0x10uLL));
            v243 = vsubq_s32(v183, v186);
            v244 = vcgtq_s32(v243, v99);
            v245 = vcgtq_s32(v241, v99);
            v246 = vuzp1q_s32(vsraq_n_s64(vshrq_n_u64(v226, 0x10uLL), v202, 0x10uLL), vsraq_n_s64(vshrq_n_u64(v237, 0x10uLL), v203, 0x10uLL));
            v247 = vcgtq_u32(v101, vaddq_s32(v241, v100));
            v248 = vcgtq_u32(v101, vaddq_s32(v243, v100));
            v249 = vsubq_s32(v98, v241);
            v250 = vsubq_s32(v98, v243);
            v251 = vnegq_s32(v249);
            v252 = vshlq_s32(v102, v251);
            v253 = vnegq_s32(v250);
            v254 = vshlq_u32(v103, v251);
            v255 = vshlq_u32(v103, v253);
            *v172++ = vshrn_high_n_s32(*v177.i8, v235, 0xEuLL);
            *v173++ = vuzp1q_s16(vbslq_s8(v244, vandq_s8(vshlq_s32(v242, v250), v248), vshlq_u32(vbslq_s8(vcgtq_s32(v242, v255), v255, vmaxq_s32(vshlq_s32(v102, v253), v242)), v250)), vbslq_s8(v245, vandq_s8(vshlq_s32(v246, v249), v247), vshlq_u32(vbslq_s8(vcgtq_s32(v246, v254), v254, vmaxq_s32(v252, v246)), v249)));
            v171 -= 8;
          }

          while (v171);
          v105 = v269;
          v110 = v266;
          v8 = v265;
          v104 = v270;
          v107 = v268;
          v109 = v267;
          v108 = v271;
          if (v266 == v269)
          {
LABEL_43:
            v131 = 0;
            v132 = *(v8 + 4);
            v133 = (*(v8 + 5) + v104 * v105 / 2);
            do
            {
              v135 = *v133++;
              v134 = v135;
              v136 = &v281[0].i16[v131 + 2];
              *v136 = (v135 >> 1) & 7 | (8 * ((v135 >> 1) & 7));
              if (v135)
              {
                v137 = v105 - 1;
              }

              else
              {
                v137 = 0;
              }

              v138 = &v282[v131];
              *v138 = *(v132 + v137 + v131);
              v136[1] = (v134 >> 5) | (8 * (v134 >> 5));
              v138[1] = *(v132 + 1 + (((v105 - 1) & ((v134 << 27) >> 31)) + v131));
              v131 += 2;
            }

            while (v131 < v105);
            goto LABEL_48;
          }
        }
      }
    }

    else
    {
      v110 = 0;
    }

    v111 = 0;
    v112 = &v275->i8[2 * v110];
    v113 = &v280->i16[v110];
    v114 = v108 + 2 * v110 + 2 * v107;
    v115 = v109 + v110 + v107;
    do
    {
      v116 = *(v114 + 2 * v111);
      v284[v110 + v111] = ((v113[v111] - (*(v115 + v111) << 7)) * v116) >> 14;
      v117 = *&v112[2 * v111];
      v118 = v116 * v116;
      if (v117 >= 0)
      {
        v119 = *&v112[2 * v111];
      }

      else
      {
        v119 = -v117;
      }

      v120 = __clz(v119);
      v121 = v117 << (v120 - 1);
      v122 = __clz(v118);
      v123 = v118 << (v122 - 1);
      v124 = (0x1FFFFFFF / (v123 >> 16) * v121) >> 16;
      v125 = ((0x1FFFFFFF / (v123 >> 16) * (v121 - (((v124 * v123) >> 29) & 0xFFFFFFF8))) >> 16) + v124;
      v126 = v120 - v122;
      if (v120 - v122 + 29 >= 0x35)
      {
        LOWORD(v127) = 0;
      }

      else
      {
        v127 = v125 >> (v126 + 8);
      }

      v128 = 0x80000000 >> (-8 - v126);
      if (v128 <= v125)
      {
        v128 = v125;
      }

      if ((0x7FFFFFFFu >> (-8 - v126)) >= v125)
      {
        v129 = v128;
      }

      else
      {
        v129 = 0x7FFFFFFFu >> (-8 - v126);
      }

      v130 = v129 << (-8 - v126);
      if (v126 > -9)
      {
        LOWORD(v130) = v127;
      }

      v283[v110 + v111++] = v130;
    }

    while (v105 - v110 != v111);
    goto LABEL_43;
  }

LABEL_121:
  v256 = v279;
  silk_insertion_sort_increasing(v279, v281, v264, 1);
  v257 = v281[0].i32[0];
  v258 = v263;
  v259 = v263;
  *v263 = *&v278[4 * v281[0].i32[0]];
  memcpy(v259 + 1, &v277[16 * v257], v8[1]);
  silk_NLSF_decode(v280->i16, v258, v8);
  return *v256;
}

__int16 *silk_NLSF_stabilize(__int16 *result, int16x8_t *a2, int a3)
{
  v3 = 0;
  v4 = a3;
  v5 = &result[v4];
  v6 = &a2->i16[v4];
  while (1)
  {
    v7 = a2->i16[0];
    v8 = *result - v7;
    if (a3 < 2)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = result + 1;
      for (i = 1; i != a3; ++i)
      {
        if (*v10 - *(v10 - 1) - a2->i16[i] < v8)
        {
          LODWORD(v9) = i;
          v8 = *v10 - *(v10 - 1) - a2->i16[i];
        }

        ++v10;
      }
    }

    v12 = a2->i16[a3];
    v13 = 0x8000 - *(v5 - 1) - v12;
    if (v13 >= v8)
    {
      v9 = v9;
    }

    else
    {
      v9 = a3;
    }

    if (v13 < v8)
    {
      v8 = 0x8000 - *(v5 - 1) - v12;
    }

    if ((v8 & 0x80000000) == 0)
    {
      return result;
    }

    if (v9)
    {
      if (v9 != a3)
      {
        if (v9 < 1)
        {
          v15 = 0;
        }

        else
        {
          if (v9 < 4)
          {
            v14 = 0;
            v15 = 0;
            goto LABEL_33;
          }

          if (v9 >= 0x10)
          {
            v14 = v9 & 0x7FFFFFF0;
            v16 = 0uLL;
            v17 = v14;
            v18 = a2 + 1;
            v19 = 0uLL;
            v20 = 0uLL;
            v21 = 0uLL;
            do
            {
              v22 = v18[-1];
              v19 = vaddw_high_s16(v19, v22);
              v16 = vaddw_s16(v16, *v22.i8);
              v21 = vaddw_high_s16(v21, *v18);
              v20 = vaddw_s16(v20, *v18->i8);
              v18 += 2;
              v17 -= 16;
            }

            while (v17);
            v15 = vaddvq_s32(vaddq_s32(vaddq_s32(v20, v16), vaddq_s32(v21, v19)));
            if (v14 != v9)
            {
              if ((v9 & 0xC) == 0)
              {
                goto LABEL_33;
              }

              goto LABEL_30;
            }
          }

          else
          {
            v15 = 0;
            v14 = 0;
LABEL_30:
            v23 = v14;
            v14 = v9 & 0x7FFFFFFC;
            v24 = v15;
            v25 = (a2 + 2 * v23);
            v26 = v23 - v14;
            do
            {
              v27 = *v25++;
              v24 = vaddw_s16(v24, v27);
              v26 += 4;
            }

            while (v26);
            v15 = vaddvq_s32(v24);
            if (v14 != v9)
            {
LABEL_33:
              v28 = v9 - v14;
              v29 = &a2->i16[v14];
              do
              {
                v30 = *v29++;
                v15 += v30;
                --v28;
              }

              while (v28);
            }
          }
        }

        v31 = v9;
        v32 = a2->i16[v9];
        if (v9 >= a3)
        {
          v34 = 0x8000;
        }

        else
        {
          v33 = a3 - v9;
          if ((a3 - v31) < 4)
          {
            v34 = 0x8000;
            v35 = a3;
            goto LABEL_50;
          }

          if (v33 >= 0x10)
          {
            v36 = v33 & 0xFFFFFFFFFFFFFFF0;
            v37 = 0uLL;
            v38 = (v6 - 7);
            v39 = v33 & 0xFFFFFFFFFFFFFFF0;
            v40 = xmmword_273BC0EE0;
            v41 = 0uLL;
            v42 = 0uLL;
            do
            {
              v43 = vrev64q_s16(*v38);
              v44 = vextq_s8(v43, v43, 8uLL);
              v45 = vrev64q_s16(v38[-1]);
              v46 = vextq_s8(v45, v45, 8uLL);
              v37 = vsubw_high_s16(v37, v44);
              v40 = vsubw_s16(v40, *v44.i8);
              v42 = vsubw_high_s16(v42, v46);
              v41 = vsubw_s16(v41, *v46.i8);
              v38 -= 2;
              v39 -= 16;
            }

            while (v39);
            v34 = vaddvq_s32(vaddq_s32(vaddq_s32(v41, v40), vaddq_s32(v42, v37)));
            if (v33 != v36)
            {
              if ((v33 & 0xC) == 0)
              {
                v35 = a3 - v36;
                goto LABEL_50;
              }

              goto LABEL_45;
            }
          }

          else
          {
            v36 = 0;
            v34 = 0x8000;
LABEL_45:
            v35 = a3 - (v33 & 0xFFFFFFFFFFFFFFFCLL);
            v47 = v34;
            v48 = v36 - (v33 & 0xFFFFFFFFFFFFFFFCLL);
            v49 = &v6[-v36 - 3];
            do
            {
              v50 = *v49--;
              v47 = vsubw_s16(v47, vrev64_s16(v50));
              v48 += 4;
            }

            while (v48);
            v34 = vaddvq_s32(v47);
            if (v33 != (v33 & 0xFFFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_50:
                v34 -= a2->i16[v35--];
              }

              while (v35 > v31);
            }
          }
        }

        v51 = v32 >> 1;
        v52 = v15 + (v32 >> 1);
        v53 = v34 - (v32 >> 1);
        v54 = v31;
        v55 = &result[v54];
        v56 = result[v54] + result[v54 - 1];
        v57 = (v56 & 1) + (v56 >> 1);
        if (v52 <= v53)
        {
          v58 = v53;
        }

        else
        {
          v58 = v52;
        }

        if (v52 >= v53)
        {
          v52 = v53;
        }

        if (v57 > v52)
        {
          LOWORD(v52) = v57;
        }

        if (v57 > v58)
        {
          LOWORD(v52) = v58;
        }

        v59 = v52 - v51;
        *(v55 - 1) = v59;
        *v55 = v59 + a2->i16[v54];
        goto LABEL_3;
      }

      *(v5 - 1) = 0x8000 - v12;
    }

    else
    {
      *result = v7;
    }

LABEL_3:
    if (++v3 == 20)
    {
      if (a3 < 2)
      {
        v65 = *result;
        if (v65 <= a2->i16[0])
        {
          LOWORD(v65) = a2->i16[0];
        }

        *result = v65;
        v66 = 0x8000 - a2->i16[a3];
        if (*(v5 - 1) < v66)
        {
          LOWORD(v66) = *(v5 - 1);
        }

        *(v5 - 1) = v66;
      }

      else
      {
        for (j = 1; j != a3; ++j)
        {
          v61 = result[j];
          v62 = j;
          while (1)
          {
            v63 = v62 - 1;
            v64 = result[(v62 - 1)];
            if (v61 >= v64)
            {
              break;
            }

            result[v62--] = v64;
            if (v63 + 1 <= 1)
            {
              LODWORD(v62) = 0;
              break;
            }
          }

          result[v62] = v61;
        }

        v67 = &a2->i16[1];
        v68 = a2->i16[0];
        if (*result > v68)
        {
          LOWORD(v68) = *result;
        }

        *result = v68;
        v69 = result + 1;
        v70 = a3 - 1;
        do
        {
          v71 = *v67++;
          v68 = v71 + v68;
          if (v68 >= 0x7FFF)
          {
            v68 = 0x7FFF;
          }

          if (v68 <= *v69)
          {
            v68 = *v69;
          }

          if (v68 <= -32768)
          {
            LOWORD(v68) = 0x8000;
          }

          *v69++ = v68;
          --v70;
        }

        while (v70);
        v72 = 0x8000 - a2->i16[a3];
        if (*(v5 - 1) < v72)
        {
          LOWORD(v72) = *(v5 - 1);
        }

        *(v5 - 1) = v72;
        v73 = (a3 - 2);
        LOWORD(v74) = result[v73 + 1];
        do
        {
          v74 = v74 - a2->i16[v73 + 1];
          if (result[v73] < v74)
          {
            LOWORD(v74) = result[v73];
          }

          result[v73--] = v74;
        }

        while (v73 != -1);
      }

      return result;
    }
  }
}

void silk_noise_shape_analysis_FLP(int *a1, float *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v477 = *MEMORY[0x277D85DE8];
  v8 = a1 + 1024;
  v9 = a1[1150];
  v10 = a1[1183];
  v11 = v10 * 0.0078125;
  v438 = a1[1178];
  v12 = vcvts_n_f32_s32(a1[1179] + v438, 1uLL) * 0.000030518;
  a2[174] = v12;
  v13 = exp((((v10 * 0.0078125) + -20.0) * -0.25));
  v15 = a2;
  v16 = 1.0 / (v13 + 1.0);
  v17 = v16;
  a2[175] = v17;
  if (v7[1169])
  {
    v18 = *(v8 + 685);
    v459 = a2;
    v440 = v7;
    v439 = v18;
    if (v18 == 2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v23 = ((v10 * -0.4) * 0.0078125) + 6.0;
    v24 = 1.0 - v12;
    v25 = v7[1145];
    v26 = 5 * v25 / 2;
    v441 = v7[1145];
    v458 = v8;
    if (v25 < 1)
    {
      v31 = 0.0;
LABEL_11:
      v19 = v11 + (v23 * v24);
      *(v458 + 686) = v31 <= ((v26 - 1) * 0.6);
      v7 = v440;
      v20 = v441;
      v18 = v439;
      v21 = 1.0;
      if (v441 < 1)
      {
        goto LABEL_298;
      }

      goto LABEL_15;
    }

    v27 = v7[1144];
    v28 = (2 * v27);
    if (v27 < 2)
    {
      LODWORD(v52) = 0;
      v30 = 0.0;
      v53 = v28;
      v54 = v28;
      if (v28 <= 0)
      {
        goto LABEL_34;
      }

LABEL_27:
      v73 = v52;
      v74 = v28 - v52;
      if (v74 > 7)
      {
        v52 = (v74 & 0xFFFFFFFFFFFFFFF8) + v52;
        v75 = (a3 + 4 * v73 + 16);
        v76 = v74 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v77 = *v75[-2].f32;
          v78 = vcvtq_f64_f32(*v77.f32);
          v79 = vcvt_hight_f64_f32(v77);
          v80 = vcvtq_f64_f32(*v75);
          v81 = vcvt_hight_f64_f32(*v75->f32);
          v82 = vmulq_f64(v79, v79);
          v83 = vmulq_f64(v78, v78);
          v84 = vmulq_f64(v81, v81);
          v85 = vmulq_f64(v80, v80);
          v30 = v30 + v83.f64[0] + v83.f64[1] + v82.f64[0] + v82.f64[1] + v85.f64[0] + v85.f64[1] + v84.f64[0] + v84.f64[1];
          v75 += 4;
          v76 -= 8;
        }

        while (v76);
        if (v74 == (v74 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v52 = v52;
      }

      v86 = v28 - v52;
      v87 = (a3 + 4 * v52);
      do
      {
        v88 = *v87++;
        v30 = v30 + v88 * v88;
        --v86;
      }

      while (v86);
LABEL_34:
      v89 = v30;
      v90 = log10((v53 + v89)) * 3.32192809;
      v463 = ((v28 - 4) >> 2) + 1;
      v91 = 4 * v54;
      v92 = v91 + a3 + 32;
      v31 = 0.0;
      v93 = 1;
      while (1)
      {
        if (v27 < 2)
        {
          LODWORD(v97) = 0;
          v96 = 0.0;
          goto LABEL_46;
        }

        if ((v28 - 4) < 0xC)
        {
          break;
        }

        v96 = 0.0;
        v98 = v463 & 0x7FFFFFFC;
        v99 = v92;
        do
        {
          v100 = v99 - 8;
          v483 = vld4_f32(v100);
          v486 = vld4_f32(v99);
          v101 = vcvtq_f64_f32(v483.val[0]);
          v102 = vcvtq_f64_f32(v486.val[0]);
          v103 = vcvtq_f64_f32(v483.val[1]);
          v104 = vcvtq_f64_f32(v486.val[1]);
          v105 = vmlaq_f64(vmulq_f64(v103, v103), v101, v101);
          v106 = vmlaq_f64(vmulq_f64(v104, v104), v102, v102);
          v107 = vcvtq_f64_f32(v483.val[2]);
          v108 = vcvtq_f64_f32(v486.val[2]);
          *v483.val[0].f32 = vcvtq_f64_f32(v483.val[3]);
          *v483.val[1].f32 = vcvtq_f64_f32(v486.val[3]);
          v109 = vmlaq_f64(vmlaq_f64(v105, v107, v107), *v483.val[0].f32, *v483.val[0].f32);
          v110 = vmlaq_f64(vmlaq_f64(v106, v108, v108), *v483.val[1].f32, *v483.val[1].f32);
          v96 = v96 + v109.f64[0] + v109.f64[1] + v110.f64[0] + v110.f64[1];
          v99 += 16;
          v98 -= 4;
        }

        while (v98);
        v95 = 4 * (v463 & 0x7FFFFFFC);
        LODWORD(v97) = v28 & 0x7FFFFFFC;
        if ((v463 & 0x7FFFFFFC) != v463)
        {
          goto LABEL_43;
        }

LABEL_46:
        if (v97 < v28)
        {
          v114 = v97;
          v115 = v28 - v97;
          if (v115 > 7)
          {
            v97 = (v115 & 0xFFFFFFFFFFFFFFF8) + v97;
            v116 = v91 + 4 * v114;
            v117 = v115 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v118 = *(a3 + v116);
              v119 = *(a3 + v116 + 16);
              v120 = vcvtq_f64_f32(*v118.f32);
              v121 = vcvt_hight_f64_f32(v118);
              v122 = vcvtq_f64_f32(*v119.f32);
              v123 = vcvt_hight_f64_f32(v119);
              v124 = vmulq_f64(v121, v121);
              v125 = vmulq_f64(v120, v120);
              v126 = vmulq_f64(v123, v123);
              v127 = vmulq_f64(v122, v122);
              v96 = v96 + v125.f64[0] + v125.f64[1] + v124.f64[0] + v124.f64[1] + v127.f64[0] + v127.f64[1] + v126.f64[0] + v126.f64[1];
              v116 += 32;
              v117 -= 8;
            }

            while (v117);
            if (v115 == (v115 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_35;
            }
          }

          else
          {
            v97 = v97;
          }

          v128 = v28 - v97;
          v129 = v91 + 4 * v97;
          do
          {
            v96 = v96 + *(a3 + v129) * *(a3 + v129);
            v129 += 4;
            --v128;
          }

          while (v128);
        }

LABEL_35:
        v94 = v96;
        v16 = log10((v53 + v94)) * 3.32192809;
        *&v16 = v16;
        ++v93;
        v31 = v31 + vabds_f32(*&v16, v90);
        v92 += v91;
        a3 += v91;
        v90 = *&v16;
        v15 = v459;
        if (v26 == v93)
        {
          goto LABEL_11;
        }
      }

      v95 = 0;
      v96 = 0.0;
LABEL_43:
      v111 = v95 + 3;
      v112 = v91 + 4 * v95;
      do
      {
        v96 = v96 + *(a3 + v112 + 4) * *(a3 + v112 + 4) + *(a3 + v112) * *(a3 + v112) + *(a3 + v112 + 8) * *(a3 + v112 + 8) + *(a3 + v112 + 12) * *(a3 + v112 + 12);
        v113 = v111 + 1;
        v111 += 4;
        v112 += 16;
      }

      while (v113 < (v28 - 3));
      LODWORD(v97) = v28 & 0x7FFFFFFC;
      goto LABEL_46;
    }

    if ((v28 - 4) > 0xB)
    {
      v55 = ((v28 - 4) >> 2) + 1;
      v29 = 4 * (v55 & 0x7FFFFFFC);
      v56 = (a3 + 32);
      v30 = 0.0;
      v57 = v55 & 0x7FFFFFFC;
      do
      {
        v58 = v56 - 8;
        v482 = vld4_f32(v58);
        v485 = vld4_f32(v56);
        v59 = vcvtq_f64_f32(v482.val[0]);
        v60 = vcvtq_f64_f32(v485.val[0]);
        v61 = vcvtq_f64_f32(v482.val[1]);
        v62 = vcvtq_f64_f32(v485.val[1]);
        v63 = vmlaq_f64(vmulq_f64(v61, v61), v59, v59);
        v64 = vmlaq_f64(vmulq_f64(v62, v62), v60, v60);
        v65 = vcvtq_f64_f32(v482.val[2]);
        v66 = vcvtq_f64_f32(v485.val[2]);
        *v482.val[0].f32 = vcvtq_f64_f32(v482.val[3]);
        *v482.val[1].f32 = vcvtq_f64_f32(v485.val[3]);
        v67 = vmlaq_f64(vmlaq_f64(v63, v65, v65), *v482.val[0].f32, *v482.val[0].f32);
        v68 = vmlaq_f64(vmlaq_f64(v64, v66, v66), *v482.val[1].f32, *v482.val[1].f32);
        v30 = v30 + v67.f64[0] + v67.f64[1] + v68.f64[0] + v68.f64[1];
        v56 += 16;
        v57 -= 4;
      }

      while (v57);
      if ((v55 & 0x7FFFFFFC) == v55)
      {
LABEL_26:
        LODWORD(v52) = v28 & 0x7FFFFFFC;
        v53 = v28;
        v54 = v28;
        if ((v28 & 0x7FFFFFFC) >= v28)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v29 = 0;
      v30 = 0.0;
    }

    v69 = (a3 + 4 * v29 + 8);
    do
    {
      v70 = *(v69 - 1) * *(v69 - 1) + *(v69 - 2) * *(v69 - 2);
      v71 = *v69;
      v72 = v69[1];
      v69 += 4;
      v30 = v30 + v70 + v71 * v71 + v72 * v72;
      v29 += 4;
    }

    while (v29 < (v28 - 3));
    goto LABEL_26;
  }

  v22 = (v7[1133] * -0.0039062) + 1.0;
  v11 = v11 + (((((v12 * 0.5) + 0.5) * (v17 * -2.0)) * v22) * v22);
  v18 = *(v8 + 685);
  v459 = a2;
  v440 = v7;
  v439 = v18;
  if (v18 != 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = v11 + (*(v7 + 2521) * 2.0);
  *(v8 + 686) = 0;
  v20 = v7[1145];
  v21 = 1.0;
  if (v20 < 1)
  {
    goto LABEL_298;
  }

LABEL_15:
  v437 = v19;
  v32 = 0;
  v33 = a4 - 4 * v9;
  v34 = 0.94 / (v21 + ((v15[176] * 0.001) * (v15[176] * 0.001)));
  v456 = v7[1168];
  v14.f32[0] = vcvts_n_f32_s32(v456, 0x10uLL) + (v17 * 0.01);
  v464 = v14.f32[0];
  v35 = -v14.f32[0];
  v36 = v21 - (v14.f32[0] * v14.f32[0]);
  v37 = 3 * v7[1144];
  v38 = v7[1151];
  v454 = v38 - v37;
  v39 = ((v38 - v37) / 2);
  v446 = (v38 - v37 + ((v38 - v37) >> 31)) >> 1;
  __n = 4 * v37;
  v40 = v39 + v37;
  v442 = v20;
  v457 = v20;
  v452 = v38 - 3;
  v41 = v7[1159];
  if (v41 + 1 < v38)
  {
    v42 = (v41 + 1);
  }

  else
  {
    v42 = v38;
  }

  v451 = v42;
  v443 = (v41 + 1);
  v43 = v41 & ~(v41 >> 31);
  v445 = (v43 + 1);
  v450 = v41 - 1;
  v44 = 4 * v40 + 8;
  v45 = (a4 + v44 - 4 * v9);
  v46 = a4 - 4 * v9 + 8;
  v444 = &v468[v44];
  v447 = v43 + 1;
  v47 = 2.0 - ((3.1416 / (v39 + 1)) * (3.1416 / (v39 + 1)));
  v48 = v14.f32[0];
  v462 = vdupq_lane_s32(*v14.f32, 0);
  v449 = v7[1147];
  v448 = 4 * v449;
  v49 = &v470[1];
  v50 = v15 + 60;
  v455 = v15 + 61;
  v51 = v15 + 61;
  do
  {
    v460 = v46;
    v131 = v49;
    v461 = v33;
    if (v454 < 2)
    {
      v132 = v32;
      memcpy(&v468[4 * v39], (v33 + 4 * v446), __n);
    }

    else
    {
      v132 = v32;
      v133 = 0;
      v134 = 0.0;
      v135 = v46;
      v136 = &v469;
      v137 = 3.1416 / (v39 + 1);
      do
      {
        v138 = v137 * *(v135 - 1);
        *(v136 - 2) = (v137 + v134) * (*(v135 - 2) * 0.5);
        *(v136 - 1) = v138;
        v134 = -(v134 - (v47 * v137));
        v139 = *v135;
        v140 = v135[1];
        v135 += 4;
        *v136 = (v137 + v134) * (v139 * 0.5);
        v136[1] = v134 * v140;
        v136 += 4;
        v137 = -(v137 - (v47 * v134));
        v133 += 4;
      }

      while (v133 < v39);
      memcpy(&v468[4 * v39], (v33 + 4 * v39), __n);
      v141 = 0;
      v142 = 1.0;
      v143 = v45;
      v144 = v444;
      v145 = v47 * 0.5;
      do
      {
        v146 = v145 * *(v143 - 1);
        *(v144 - 2) = (v145 + v142) * (*(v143 - 2) * 0.5);
        *(v144 - 1) = v146;
        v142 = -(v142 - (v47 * v145));
        v147 = *v143;
        v148 = v143[1];
        v143 += 4;
        *v144 = (v145 + v142) * (v147 * 0.5);
        v144[1] = v142 * v148;
        v144 += 4;
        v145 = -(v145 - (v47 * v142));
        v141 += 4;
      }

      while (v141 < v39);
    }

    if (v456 < 1)
    {
      v149 = v459;
      v150 = v132;
      v152 = v462;
      v151 = v464;
      v49 = v131;
      if (v451 < 1)
      {
        goto LABEL_111;
      }

      v176 = 0;
      v177 = 0;
      LODWORD(v178) = v38;
      v179 = v38 - 3;
      while (1)
      {
        if (v179 <= 4uLL)
        {
          v181 = 4;
        }

        else
        {
          v181 = v179;
        }

        v182 = v452 - v177;
        if ((v452 - v177) <= 4)
        {
          v183 = 4;
        }

        else
        {
          v183 = v182;
        }

        v184 = (v38 - v177);
        if (v184 < 4)
        {
          v187 = 0;
          v186 = 0.0;
          v178 = v178;
          if (v184 <= 0)
          {
            goto LABEL_82;
          }

          goto LABEL_100;
        }

        if (v182 <= 0xC)
        {
          break;
        }

        v188 = (((v181 - 1) >> 2) + 1) & 0x7FFFFFFFFFFFFFFCLL;
        v189 = ((v183 - 1) >> 2) + 1;
        v185 = 4 * (v189 & 0x7FFFFFFFFFFFFFFCLL);
        v186 = 0.0;
        v190 = v468;
        do
        {
          v191 = v190 + 8;
          v192 = v190;
          v484 = vld4_f32(v192);
          v193 = &v192[v176];
          v487 = vld4_f32(v191);
          v488 = vld4_f32(v193);
          v193 += 8;
          v489 = vld4_f32(v193);
          v194 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v484.val[1]), vcvtq_f64_f32(v488.val[1])), vcvtq_f64_f32(v488.val[0]), vcvtq_f64_f32(v484.val[0])), vcvtq_f64_f32(v488.val[2]), vcvtq_f64_f32(v484.val[2])), vcvtq_f64_f32(v488.val[3]), vcvtq_f64_f32(v484.val[3]));
          v195 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v487.val[1]), vcvtq_f64_f32(v489.val[1])), vcvtq_f64_f32(v489.val[0]), vcvtq_f64_f32(v487.val[0])), vcvtq_f64_f32(v489.val[2]), vcvtq_f64_f32(v487.val[2])), vcvtq_f64_f32(v489.val[3]), vcvtq_f64_f32(v487.val[3]));
          v186 = v186 + v194.f64[0] + v194.f64[1] + v195.f64[0] + v195.f64[1];
          v190 += 16;
          v188 -= 4;
        }

        while (v188);
        v152 = v462;
        v151 = v464;
        if (v189 != (v189 & 0x7FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_97;
        }

LABEL_99:
        v187 = v184 & 0x7FFFFFFC;
        v178 = v178;
        if ((v184 & 0x7FFFFFFC) >= v184)
        {
          goto LABEL_82;
        }

LABEL_100:
        v199 = v187;
        v200 = v184 - v187;
        if (v200 > 7)
        {
          v201 = (v200 & 0xFFFFFFFFFFFFFFF8) + v199;
          v202 = (v178 - v199) & 0xFFFFFFFFFFFFFFF8;
          v203 = &v468[4 * v199];
          do
          {
            v204 = v203[1];
            v205 = vcvtq_f64_f32(*v204.f32);
            v206 = *(v203 + v176 * 4);
            v207 = *(v203 + v176 * 4 + 16);
            v208 = vmulq_f64(vcvt_hight_f64_f32(*v203), vcvt_hight_f64_f32(v206));
            v209 = vmulq_f64(vcvtq_f64_f32(*v203->f32), vcvtq_f64_f32(*v206.f32));
            v210 = vmulq_f64(vcvt_hight_f64_f32(v204), vcvt_hight_f64_f32(v207));
            v211 = vmulq_f64(v205, vcvtq_f64_f32(*v207.f32));
            v186 = v186 + v209.f64[0] + v209.f64[1] + v208.f64[0] + v208.f64[1] + v211.f64[0] + v211.f64[1] + v210.f64[0] + v210.f64[1];
            v203 += 2;
            v202 -= 8;
          }

          while (v202);
          if (v200 == (v200 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_82;
          }
        }

        else
        {
          v201 = v199;
        }

        v212 = v178 - v201;
        v213 = &v468[4 * v201];
        do
        {
          v186 = v186 + *v213 * v213[v176];
          ++v213;
          --v212;
        }

        while (v212);
LABEL_82:
        v180 = v186;
        v466[v177++] = v180;
        ++v176;
        --v179;
        LODWORD(v178) = v178 - 1;
        if (v177 == v451)
        {
          goto LABEL_111;
        }
      }

      v185 = 0;
      v186 = 0.0;
LABEL_97:
      v196 = v185 + 3;
      v197 = &v468[4 * v185];
      do
      {
        v186 = v186 + v197[1] * v197[v176 + 1] + *v197 * v197[v176] + v197[2] * v197[v176 + 2] + v197[3] * v197[v176 + 3];
        v198 = v196 + 1;
        v196 += 4;
        v197 += 4;
      }

      while (v198 < (v184 - 3));
      goto LABEL_99;
    }

    v476 = 0;
    memset(v475, 0, sizeof(v475));
    v473 = 0u;
    memset(v474, 0, sizeof(v474));
    v472 = 0;
    memset(v471, 0, sizeof(v471));
    memset(v470, 0, sizeof(v470));
    v149 = v459;
    v150 = v132;
    v152 = v462;
    v151 = v464;
    v49 = v131;
    if (v38 >= 1)
    {
      if (v41 < 1)
      {
        v214 = v470[v41];
        v215 = v468;
        v216 = v38;
        do
        {
          v217 = *v215++;
          *&v474[8 * v41 - 16] = v217;
          v214 = v214 + *&v473 * v217;
          --v216;
        }

        while (v216);
        v470[v41] = v214;
        if ((v41 & 0x80000000) != 0)
        {
          goto LABEL_111;
        }

        goto LABEL_73;
      }

      v153 = 0;
      v154 = 0.0;
      do
      {
        v155 = 0;
        v156 = *&v468[4 * v153];
        v157 = v131;
        v158 = &v473 + 1;
        do
        {
          v159 = *v158;
          v160 = v154 + v48 * (*v158 - v156);
          *(v158 - 1) = v156;
          v161 = *(v157 - 1) + *&v473 * v156;
          v154 = v158[1];
          v156 = v159 + v48 * (v154 - v160);
          v162 = *v157 + *&v473 * v160;
          v155 += 2;
          *v158 = v160;
          v158 += 2;
          *(v157 - 1) = v161;
          *v157 = v162;
          v157 += 2;
        }

        while (v155 < v41);
        *&v474[8 * v41 - 16] = v156;
        v154 = *&v473;
        v470[v41] = v470[v41] + *&v473 * v156;
        ++v153;
      }

      while (v153 != v38);
    }

    if ((v41 & 0x80000000) != 0)
    {
      goto LABEL_111;
    }

LABEL_73:
    v163 = (v41 + 1) & 0xFFFFFFF8;
    v164 = v467;
    v165 = v471;
    if (v41 < 7)
    {
      v166 = 0;
LABEL_77:
      v171 = v443 - v166;
      v172 = &v466[v166];
      v173 = &v470[v166];
      do
      {
        v174 = *v173++;
        v175 = v174;
        *v172++ = v175;
        --v171;
      }

      while (v171);
      goto LABEL_111;
    }

    do
    {
      v168 = v165[-2];
      v167 = v165[-1];
      v170 = *v165;
      v169 = v165[1];
      v165 += 4;
      v164[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v168), v167);
      *v164 = vcvt_hight_f32_f64(vcvt_f32_f64(v170), v169);
      v164 += 2;
      v163 -= 8;
    }

    while (v163);
    v166 = (v41 + 1) & 0xFFFFFFF8;
    if (v166 != v443)
    {
      goto LABEL_77;
    }

LABEL_111:
    v466[0] = v466[0] + (v21 + (v466[0] * 0.00003));
    if (v41 < 7)
    {
      v218 = 0;
      v220 = (v41 - 1) & 0xFFFFFFFFFFFFFFF8;
      v219 = (v41 - 1);
      v221 = v41 & 0x7FFFFFF8;
      v222 = &xmmword_273BBA000;
LABEL_116:
      v232 = v447 - v218;
      v233 = &v474[16 * v218 - 16];
      v234 = &v466[v218];
      do
      {
        v235 = *v234++;
        *v233++ = vdupq_lane_s64(COERCE__INT64(v235), 0);
        --v232;
      }

      while (v232);
      goto LABEL_118;
    }

    v219 = (v41 - 1);
    v223 = v445 & 0xFFFFFFF8;
    v224 = v467;
    v221 = v41 & 0x7FFFFFF8;
    v225 = v475;
    v220 = (v41 - 1) & 0xFFFFFFFFFFFFFFF8;
    v222 = &xmmword_273BBA000;
    do
    {
      v226 = *v224[-2].f32;
      v227 = *v224->f32;
      v479.val[0] = vcvt_hight_f64_f32(v226);
      v479.val[1] = v479.val[0];
      v480.val[0] = vcvtq_f64_f32(*v226.f32);
      v480.val[1] = v480.val[0];
      v481.val[0] = vcvtq_f64_f32(*v224);
      v228 = v225 - 8;
      vst2q_f64(v228, v480);
      v481.val[1] = v481.val[0];
      v229 = v225 - 4;
      vst2q_f64(v229, v479);
      v230 = v225 + 16;
      vst2q_f64(v225, v481);
      v231 = v225 + 4;
      v478.val[0] = vcvt_hight_f64_f32(v227);
      v478.val[1] = v478.val[0];
      vst2q_f64(v231, v478);
      v224 += 4;
      v225 = v230;
      v223 -= 8;
    }

    while (v223);
    v218 = v445 & 0xFFFFFFF8;
    if (v218 != v445)
    {
      goto LABEL_116;
    }

LABEL_118:
    if (v41 < 1)
    {
      v247 = *(&v473 + 1);
      v248 = &v455[24 * v150];
    }

    else
    {
      v236 = 0;
      v237 = 0;
      v238 = v41;
      do
      {
        v239 = v237++;
        v240 = -*&v474[16 * v237 - 16] / fmax(*(&v473 + 1), *(v222 + 223));
        v241 = v240;
        v465[v239] = v241;
        if (v239 < v41)
        {
          v242 = v474;
          v243 = v238;
          do
          {
            v244 = v242[v236];
            v245 = *(v242 - 1);
            v242[v236] = v244 + v245 * v240;
            *(v242 - 1) = v245 + v244 * v240;
            v242 += 2;
            --v243;
          }

          while (v243);
        }

        --v238;
        v236 += 2;
      }

      while (v237 != v41);
      v246 = 0;
      v247 = *(&v473 + 1);
      v248 = &v455[24 * v150];
      v249 = v50;
      v250 = 1;
      do
      {
        v251 = v250 >> 1;
        if (v250 >> 1 <= 1)
        {
          v251 = 1;
        }

        v252 = v465[v246];
        if (v246)
        {
          v253 = v51;
          v254 = v249;
          do
          {
            v255 = *v253;
            v256 = *v254;
            *v253 = *v253 + (*v254 * v252);
            ++v253;
            *v254-- = v256 + (v255 * v252);
            --v251;
          }

          while (v251);
        }

        v248[v246] = -v252;
        ++v250;
        ++v249;
        ++v246;
      }

      while (v246 != v41);
    }

    v257 = v247;
    v258 = sqrtf(v257);
    v149->f32[v150] = v258;
    if (v456 < 1)
    {
      if (v41 <= 1)
      {
        v314 = 0;
        v264 = &v248[v450];
        v265 = v34 * *v264;
        *v264 = v265;
        v266 = v457;
        v272 = v460;
        if (v41 < 1)
        {
          goto LABEL_57;
        }

        goto LABEL_192;
      }

LABEL_140:
      v261 = v248;
      v262 = v219;
      v263 = v34;
      do
      {
        *v261 = v263 * *v261;
        ++v261;
        v263 = v34 * v263;
        --v262;
      }

      while (v262);
      v264 = &v248[v219];
      v265 = v263 * *v264;
      *v264 = v265;
      v266 = v457;
      if (v456 >= 1)
      {
        v267 = &v248[v219];
        v269 = *v267;
        v268 = v267 - 1;
        v270 = v269;
        v271 = v219 + 1;
        v272 = v460;
        do
        {
          v270 = *v268 + (v35 * v270);
          *v268-- = v270;
          --v271;
        }

        while (v271 > 1);
        v273 = 1;
LABEL_147:
        v274 = v36 / (v21 + (v151 * *v248));
        if (v41 <= 7)
        {
          v275 = 0;
          goto LABEL_152;
        }

        v276 = (v248 + 4);
        v277 = v221;
        do
        {
          v278 = vmulq_n_f32(*v276, v274);
          v276[-1] = vmulq_n_f32(v276[-1], v274);
          *v276 = v278;
          v276 += 2;
          v277 -= 8;
        }

        while (v277);
        v275 = v221;
        if (v221 != v41)
        {
LABEL_152:
          v279 = v41 - v275;
          v280 = &v248[v275];
          do
          {
            *v280 = v274 * *v280;
            ++v280;
            --v279;
          }

          while (v279);
        }

        v281 = 0;
        v282 = 0;
        while (2)
        {
          v283 = 0;
          v284 = -1.0;
          do
          {
            v285 = fabsf(v248[v283]);
            if (v285 > v284)
            {
              v281 = v283;
              v284 = v285;
            }

            ++v283;
          }

          while (v41 != v283);
          if (v284 <= 3.999)
          {
            goto LABEL_57;
          }

          if (v273)
          {
            if (v41 < 9)
            {
              v286 = 1;
              goto LABEL_167;
            }

            v287 = v220;
            v288 = v248 + 4;
            do
            {
              v289 = vmlaq_f32(*v288, *(v288 + 1), v152);
              *(v288 - 1) = vmlaq_f32(*(v288 - 4), *(v288 - 3), v152);
              *v288 = v289;
              v288 += 8;
              v287 -= 8;
            }

            while (v287);
            v286 = (v41 - 1) & 0xFFFFFFFFFFFFFFF8 | 1;
            if (v41 - 1 != v220)
            {
LABEL_167:
              v290 = v41 - v286;
              v291 = &v248[v286 - 1];
              v292 = v291;
              do
              {
                v293 = v292[1];
                ++v292;
                *v291 = *v291 + (v151 * v293);
                v291 = v292;
                --v290;
              }

              while (v290);
            }
          }

          v294 = v21 / v274;
          if (v41 < 8)
          {
            v295 = 0;
            goto LABEL_174;
          }

          v296 = v221;
          v297 = (v248 + 4);
          do
          {
            v298 = vmulq_n_f32(*v297, v294);
            v297[-1] = vmulq_n_f32(v297[-1], v294);
            *v297 = v298;
            v297 += 2;
            v296 -= 8;
          }

          while (v296);
          v295 = v221;
          if (v221 != v41)
          {
LABEL_174:
            v299 = v41 - v295;
            v300 = &v248[v295];
            do
            {
              *v300 = v294 * *v300;
              ++v300;
              --v299;
            }

            while (v299);
          }

          v301 = 0.99 - ((((v282 * 0.1) + 0.8) * (v284 + -3.999)) / (v284 * (v281 + 1)));
          v302 = v248;
          v303 = v219;
          v304 = v301;
          if (v273)
          {
            do
            {
              *v302 = v304 * *v302;
              ++v302;
              v304 = v301 * v304;
              --v303;
            }

            while (v303);
            *v264 = v304 * *v264;
            v305 = v248[v219];
            v306 = v219 + 1;
            v307 = &v248[v219 - 1];
            do
            {
              v305 = *v307 + (v35 * v305);
              *v307-- = v305;
              --v306;
            }

            while (v306 > 1);
            v274 = v36 / (v21 + (v151 * *v248));
            if (v41 < 8)
            {
LABEL_181:
              v308 = 0;
              goto LABEL_186;
            }
          }

          else
          {
            *v264 = v301 * *v264;
            v274 = v36 / (v21 + (v151 * *v248));
            if (v41 < 8)
            {
              goto LABEL_181;
            }
          }

          v309 = v221;
          v310 = (v248 + 4);
          do
          {
            v311 = vmulq_n_f32(*v310, v274);
            v310[-1] = vmulq_n_f32(v310[-1], v274);
            *v310 = v311;
            v310 += 2;
            v309 -= 8;
          }

          while (v309);
          v308 = v221;
          if (v221 != v41)
          {
LABEL_186:
            v312 = v41 - v308;
            v313 = &v248[v308];
            do
            {
              *v313 = v274 * *v313;
              ++v313;
              --v312;
            }

            while (v312);
          }

          if (++v282 == 10)
          {
            goto LABEL_57;
          }

          continue;
        }
      }

      v314 = 1;
      v272 = v460;
LABEL_192:
      v315 = 0;
      v316 = 0;
      v317 = -1.0;
      do
      {
        v318 = fabsf(v248[v315]);
        if (v318 > v317)
        {
          v316 = v315;
          v317 = v318;
        }

        ++v315;
      }

      while (v41 != v315);
      if (v317 > 3.999)
      {
        v319 = ((v317 + -3.999) * -0.8) / (v317 * (v316 + 1));
        v320 = v319 + 0.99;
        if (v314)
        {
          v321 = v248;
          v322 = v219;
          v323 = v319 + 0.99;
          do
          {
            *v321 = v323 * *v321;
            ++v321;
            v323 = v320 * v323;
            --v322;
          }

          while (v322);
          v265 = *v264;
        }

        else
        {
          v323 = v319 + 0.99;
        }

        v324 = 0;
        v325 = v323 * v265;
        *v264 = v325;
        v326 = -1.0;
        do
        {
          v327 = fabsf(v248[v324]);
          if (v327 > v326)
          {
            v316 = v324;
            v326 = v327;
          }

          ++v324;
        }

        while (v41 != v324);
        if (v326 > 3.999)
        {
          v328 = ((v326 + -3.999) * -0.9) / (v326 * (v316 + 1));
          v329 = v328 + 0.99;
          if (v314)
          {
            v330 = v248;
            v331 = v219;
            v332 = v328 + 0.99;
            do
            {
              *v330 = v332 * *v330;
              ++v330;
              v332 = v329 * v332;
              --v331;
            }

            while (v331);
            v325 = *v264;
          }

          else
          {
            v332 = v328 + 0.99;
          }

          v333 = 0;
          v334 = v332 * v325;
          *v264 = v334;
          v335 = -1.0;
          do
          {
            v336 = fabsf(v248[v333]);
            if (v336 > v335)
            {
              v316 = v333;
              v335 = v336;
            }

            ++v333;
          }

          while (v41 != v333);
          if (v335 > 3.999)
          {
            v337 = (v335 + -3.999) / (v335 * (v316 + 1));
            v338 = 0.99 - v337;
            if (v314)
            {
              v339 = v248;
              v340 = v219;
              v341 = 0.99 - v337;
              do
              {
                *v339 = v341 * *v339;
                ++v339;
                v341 = v338 * v341;
                --v340;
              }

              while (v340);
              v334 = *v264;
            }

            else
            {
              v341 = 0.99 - v337;
            }

            v342 = 0;
            v343 = v341 * v334;
            *v264 = v343;
            v344 = -1.0;
            do
            {
              v345 = fabsf(v248[v342]);
              if (v345 > v344)
              {
                v316 = v342;
                v344 = v345;
              }

              ++v342;
            }

            while (v41 != v342);
            if (v344 > 3.999)
            {
              v346 = ((v344 + -3.999) * -1.1) / (v344 * (v316 + 1));
              v347 = v346 + 0.99;
              if (v314)
              {
                v348 = v248;
                v349 = v219;
                v350 = v346 + 0.99;
                do
                {
                  *v348 = v350 * *v348;
                  ++v348;
                  v350 = v347 * v350;
                  --v349;
                }

                while (v349);
                v343 = *v264;
              }

              else
              {
                v350 = v346 + 0.99;
              }

              v351 = 0;
              v352 = v350 * v343;
              *v264 = v352;
              v353 = -1.0;
              do
              {
                v354 = fabsf(v248[v351]);
                if (v354 > v353)
                {
                  v316 = v351;
                  v353 = v354;
                }

                ++v351;
              }

              while (v41 != v351);
              if (v353 > 3.999)
              {
                v355 = ((v353 + -3.999) * -1.2) / (v353 * (v316 + 1));
                v356 = v355 + 0.99;
                if (v314)
                {
                  v357 = v248;
                  v358 = v219;
                  v359 = v355 + 0.99;
                  do
                  {
                    *v357 = v359 * *v357;
                    ++v357;
                    v359 = v356 * v359;
                    --v358;
                  }

                  while (v358);
                  v352 = *v264;
                }

                else
                {
                  v359 = v355 + 0.99;
                }

                v360 = 0;
                v361 = v359 * v352;
                *v264 = v361;
                v362 = -1.0;
                do
                {
                  v363 = fabsf(v248[v360]);
                  if (v363 > v362)
                  {
                    v316 = v360;
                    v362 = v363;
                  }

                  ++v360;
                }

                while (v41 != v360);
                if (v362 > 3.999)
                {
                  v364 = ((v362 + -3.999) * -1.3) / (v362 * (v316 + 1));
                  v365 = v364 + 0.99;
                  if (v314)
                  {
                    v366 = v248;
                    v367 = v219;
                    v368 = v364 + 0.99;
                    do
                    {
                      *v366 = v368 * *v366;
                      ++v366;
                      v368 = v365 * v368;
                      --v367;
                    }

                    while (v367);
                    v361 = *v264;
                  }

                  else
                  {
                    v368 = v364 + 0.99;
                  }

                  v369 = 0;
                  v370 = v368 * v361;
                  *v264 = v370;
                  v371 = -1.0;
                  do
                  {
                    v372 = fabsf(v248[v369]);
                    if (v372 > v371)
                    {
                      v316 = v369;
                      v371 = v372;
                    }

                    ++v369;
                  }

                  while (v41 != v369);
                  if (v371 > 3.999)
                  {
                    v373 = ((v371 + -3.999) * -1.4) / (v371 * (v316 + 1));
                    v374 = v373 + 0.99;
                    if (v314)
                    {
                      v375 = v248;
                      v376 = v219;
                      v377 = v373 + 0.99;
                      do
                      {
                        *v375 = v377 * *v375;
                        ++v375;
                        v377 = v374 * v377;
                        --v376;
                      }

                      while (v376);
                      v370 = *v264;
                    }

                    else
                    {
                      v377 = v373 + 0.99;
                    }

                    v378 = 0;
                    v379 = v377 * v370;
                    *v264 = v379;
                    v380 = -1.0;
                    do
                    {
                      v381 = fabsf(v248[v378]);
                      if (v381 > v380)
                      {
                        v316 = v378;
                        v380 = v381;
                      }

                      ++v378;
                    }

                    while (v41 != v378);
                    if (v380 > 3.999)
                    {
                      v382 = ((v380 + -3.999) * -1.5) / (v380 * (v316 + 1));
                      v383 = v382 + 0.99;
                      if (v314)
                      {
                        v384 = v248;
                        v385 = v219;
                        v386 = v382 + 0.99;
                        do
                        {
                          *v384 = v386 * *v384;
                          ++v384;
                          v386 = v383 * v386;
                          --v385;
                        }

                        while (v385);
                        v379 = *v264;
                      }

                      else
                      {
                        v386 = v382 + 0.99;
                      }

                      v387 = 0;
                      v388 = v386 * v379;
                      *v264 = v388;
                      v389 = -1.0;
                      do
                      {
                        v390 = fabsf(v248[v387]);
                        if (v390 > v389)
                        {
                          v316 = v387;
                          v389 = v390;
                        }

                        ++v387;
                      }

                      while (v41 != v387);
                      if (v389 > 3.999)
                      {
                        v391 = ((v389 + -3.999) * -1.6) / (v389 * (v316 + 1));
                        v392 = v391 + 0.99;
                        if (v314)
                        {
                          v393 = v248;
                          v394 = v219;
                          v395 = v391 + 0.99;
                          do
                          {
                            *v393 = v395 * *v393;
                            ++v393;
                            v395 = v392 * v395;
                            --v394;
                          }

                          while (v394);
                          v388 = *v264;
                        }

                        else
                        {
                          v395 = v391 + 0.99;
                        }

                        v396 = 0;
                        v397 = v395 * v388;
                        *v264 = v397;
                        v398 = -1.0;
                        do
                        {
                          v399 = fabsf(v248[v396]);
                          if (v399 > v398)
                          {
                            v316 = v396;
                            v398 = v399;
                          }

                          ++v396;
                        }

                        while (v41 != v396);
                        if (v398 > 3.999)
                        {
                          v400 = ((v398 + -3.999) * -1.7) / (v398 * (v316 + 1));
                          v401 = v400 + 0.99;
                          if (v314)
                          {
                            v402 = v219;
                            v130 = v400 + 0.99;
                            do
                            {
                              *v248 = v130 * *v248;
                              ++v248;
                              v130 = v401 * v130;
                              --v402;
                            }

                            while (v402);
                            v397 = *v264;
                          }

                          else
                          {
                            v130 = v400 + 0.99;
                          }

                          *v264 = v130 * v397;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_57;
    }

    v259 = v248[v41 - 1];
    if (v41 >= 2)
    {
      v260 = (v41 - 2);
      do
      {
        v259 = v248[v260--] + (v35 * v259);
      }

      while (v260 != -1);
      v149->f32[v150] = v258 * (v21 / (v21 + (v151 * v259)));
      goto LABEL_140;
    }

    v273 = 0;
    v149->f32[v150] = v258 * (v21 / (v21 + (v151 * v259)));
    v264 = &v248[v450];
    *v264 = v34 * *v264;
    v266 = v457;
    v272 = v460;
    if (v41 >= 1)
    {
      goto LABEL_147;
    }

LABEL_57:
    v33 = v461 + 4 * v449;
    v32 = v150 + 1;
    v46 = v272 + v448;
    v45 = (v45 + v448);
    v50 += 24;
    v51 += 24;
  }

  while (v32 != v266);
  v16 = exp2((v437 * -0.16));
  *&v16 = v16;
  v20 = v442;
  if (v442 < 8)
  {
    v403 = 0;
    v7 = v440;
    v15 = v459;
    v18 = v439;
    v404 = v457;
LABEL_296:
    v409 = v404 - v403;
    v410 = &v15[v403];
    do
    {
      *v410 = (*v410 * *&v16) + 1.2483;
      ++v410;
      --v409;
    }

    while (v409);
    goto LABEL_298;
  }

  v404 = v457;
  v403 = v457 & 0x7FFFFFF8;
  v15 = v459;
  v405 = v459 + 1;
  v406 = vdupq_n_s32(0x3F9FC94Cu);
  v407 = v403;
  v7 = v440;
  v18 = v439;
  do
  {
    v14 = vaddq_f32(vmulq_n_f32(v405[-1], *&v16), v406);
    v408 = vaddq_f32(vmulq_n_f32(*v405, *&v16), v406);
    v405[-1] = v14;
    *v405 = v408;
    v405 += 2;
    v407 -= 8;
  }

  while (v407);
  if (v403 != v457)
  {
    goto LABEL_296;
  }

LABEL_298:
  v411 = v7[1133];
  *&v16 = ((v21 + (((v438 * 0.000030518) + -1.0) * 0.5)) * 4.0) * (v411 * 0.0039062);
  if (v18 == 2)
  {
    if (v20 >= 1)
    {
      v14.f32[0] = 0.2 / v7[1144];
      if (v20 >= 4)
      {
        v418 = vdupq_lane_s32(*v14.f32, 0);
        v419 = vdupq_lane_s32(*&v16, 0);
        v412 = v20 & 0x7FFFFFFC;
        __asm
        {
          FMOV            V5.4S, #3.0
          FMOV            V6.4S, #-1.0
          FMOV            V7.4S, #1.0
        }

        v427 = v412;
        v428 = v15;
        do
        {
          v429 = vaddq_f32(v418, vdivq_f32(_Q5, vcvtq_f32_s32(*(v428 + 57))));
          *(v428 + 157) = vaddq_f32(v429, _Q6);
          *(v428 + 161) = vmlsq_f32(vsubq_f32(_Q7, v429), v419, v429);
          v428 += 4;
          v427 -= 4;
        }

        while (v427);
        if (v412 == v20)
        {
          goto LABEL_312;
        }
      }

      else
      {
        v412 = 0;
      }

      v430 = v20 - v412;
      v431 = &v15[v412];
      do
      {
        v432 = v14.f32[0] + (3.0 / *(v431 + 57));
        v431[157] = v432 + -1.0;
        v431[161] = (1.0 - v432) - (v432 * *&v16);
        ++v431;
        --v430;
      }

      while (v430);
    }

LABEL_312:
    v416 = ((v411 * -0.2625) * 0.0039062) + -0.25;
    v417 = (((1.0 - ((1.0 - v15[175]) * v15[174])) * 0.2) + 0.3) * sqrtf(*(v7 + 2521));
    goto LABEL_313;
  }

  v413 = 1.3 / v7[1144];
  v15[157] = v413 + -1.0;
  v15[161] = (1.0 - v413) + ((*&v16 * v413) * -0.6);
  if (v20 <= 1)
  {
    v417 = 0.0;
    v416 = -0.25;
  }

  else
  {
    v414 = v20 - 1;
    v415 = v15 + 162;
    do
    {
      *(v415 - 4) = v413 + -1.0;
      *v415++ = v15[161];
      --v414;
    }

    while (v414);
    v416 = -0.25;
    v417 = 0.0;
  }

LABEL_313:
  if (v20 >= 1)
  {
    v433 = v15 + 169;
    v434 = v20;
    do
    {
      v435 = *(v7 + 1799) + ((v417 - *(v7 + 1799)) * 0.4);
      *(v7 + 1799) = v435;
      *v433 = v435;
      v436 = *(v7 + 1800) + ((v416 - *(v7 + 1800)) * 0.4);
      *(v7 + 1800) = v436;
      *(v433 - 4) = v436;
      ++v433;
      --v434;
    }

    while (v434);
  }
}

void *silk_NSQ_c(_DWORD *a1, _DWORD *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, __int16 a15)
{
  v182 = a7;
  v186 = a6;
  v219 = a5;
  v189 = a13;
  v221 = *MEMORY[0x277D85DE8];
  a2[1085] = a3[34];
  v18 = a2[1082];
  v19 = silk_Quantization_Offsets_Q10[2 * (a3[29] >> 1) + a3[30]];
  v187 = a3;
  v20 = MEMORY[0x28223BE20](v19, a2, a3);
  v23 = MEMORY[0x28223BE20](v20, &v169 - v21, v22);
  v26 = MEMORY[0x28223BE20](v23, v25, &v169 - v24);
  v35 = &v169 - ((v34 + 15) & 0x7FFFFFFF0);
  a2[1084] = v32;
  a2[1083] = v32;
  v36 = a1[1145];
  if (v36 > 0)
  {
    v37 = 0;
    v216 = (a2 + 1083);
    v180 = v27 + 8;
    v218 = a2 + 2 * v32;
    v188 = a12;
    v179 = a11;
    v185 = v31 == 4;
    if (v31 == 4)
    {
      v38 = 3;
    }

    else
    {
      v38 = 1;
    }

    v176 = v38;
    v178 = a10;
    v184 = a9;
    v173 = a15;
    v39 = a2 + 320;
    v183 = a2 + 960;
    v177 = a2 + 975;
    v208 = a2 + 1056;
    v204 = (a14 >> 1) - 512;
    v196 = 512 - (a14 >> 1);
    v198 = v26 - 944;
    v209 = a14;
    v197 = (944 - v26) * a14;
    v195 = a14 * v26;
    v200 = v26 + 944;
    v207 = a14;
    v199 = (v26 + 944) * a14;
    v220 = v26;
    v202 = v26 - 80;
    v210 = v35;
    v174 = v35 + 4;
    v175 = v28;
    v172 = v28 + 2;
    v171 = v27 + 4;
    v170 = v27 + 16;
    v201 = a2 + 1058;
    v181 = v29;
    v203 = (v29 + 4);
    v190 = a1;
    v194 = v27;
    while (1)
    {
      v45 = (v186 + 32 * (v185 | (v37 >> 1)));
      v46 = *(v184 + 4 * v37);
      a2[1087] = 0;
      if (v187[29] == 2)
      {
        v18 = *(v189 + 4 * v37);
        if ((v176 & v37) != 0)
        {
          v47 = 1;
          v48 = 1;
        }

        else
        {
          v49 = a1[1160];
          v50 = a1[1148] - v49 - v18 - 2;
          silk_LPC_analysis_filter((v175 + 2 * v50), a2 + 2 * v50 + 2 * v30 * v37, v45, 2 - (-v49 - v18), v49);
          v27 = v194;
          v47 = 0;
          a2[1087] = 1;
          a2[1083] = a1[1148];
          v48 = v187[29] == 2;
        }

        v217 = v48;
      }

      else
      {
        v217 = 0;
        v47 = 1;
      }

      v51 = *(v189 + 4 * v37);
      v52 = *(v188 + 4 * v37);
      if (v52 <= 1)
      {
        v53 = 1;
      }

      else
      {
        v53 = *(v188 + 4 * v37);
      }

      v54 = __clz(v53);
      v55 = (((-((((0x1FFFFFFF / ((v53 << (v54 - 1)) >> 16)) << 19) * (v53 << (v54 - 1))) & 0xFFFFFFF800000000) >> 32) * (0x1FFFFFFF / ((v53 << (v54 - 1)) >> 16))) >> 16) + ((0x1FFFFFFF / ((v53 << (v54 - 1)) >> 16)) << 16);
      v56 = v55 >> (15 - v54);
      v57 = v54 - 15;
      v58 = 0x80000000 >> v57;
      if (v55 > 0x80000000 >> v57)
      {
        v58 = v55;
      }

      if (v55 <= (0x7FFFFFFFu >> v57))
      {
        v59 = v58;
      }

      else
      {
        v59 = 0x7FFFFFFFu >> v57;
      }

      v60 = v59 << v57;
      if (v52 >= 0x20000)
      {
        v60 = v56;
      }

      v61 = a1[1147];
      if (v61 < 1)
      {
        goto LABEL_31;
      }

      v62 = ((v60 >> 4) + 1) >> 1;
      if (v61 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = v61 & 0x7FFFFFFE;
        v64 = (a4 + 2);
        v65 = v63;
        v66 = v174;
        do
        {
          v67 = (*v64 * v62) >> 16;
          *(v66 - 1) = (*(v64 - 1) * v62) >> 16;
          *v66 = v67;
          v64 += 2;
          v66 += 8;
          v65 -= 2;
        }

        while (v65);
        if (v63 == v61)
        {
          goto LABEL_31;
        }
      }

      v68 = v61 - v63;
      v69 = &v210[4 * v63];
      v70 = (a4 + 2 * v63);
      do
      {
        v71 = *v70++;
        *v69 = (v71 * v62) >> 16;
        v69 += 4;
        --v68;
      }

      while (v68);
LABEL_31:
      if ((v47 & 1) == 0)
      {
        v72 = v216->i32[0];
        v73 = v72 - v51 - 2;
        if (v73 < v72)
        {
          v74 = ((v173 * v60) >> 14) & 0xFFFFFFFC;
          if (v37)
          {
            LODWORD(v74) = v60;
          }

          v75 = v73;
          v76 = v72 - v73;
          v77 = v75;
          if (v76 < 2)
          {
            goto LABEL_39;
          }

          v77 = (v76 & 0xFFFFFFFFFFFFFFFELL) + v75;
          v78 = (v172 + 2 * v75);
          v79 = (v171 + 4 * v75);
          v80 = v76 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v81 = (*v78 * v74) >> 16;
            *(v79 - 1) = (*(v78 - 1) * v74) >> 16;
            *v79 = v81;
            v78 += 2;
            v79 += 2;
            v80 -= 2;
          }

          while (v80);
          v27 = v194;
          if (v76 != (v76 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_39:
            v82 = v72 - v77;
            v83 = (v27 + 4 * v77);
            v84 = (v175 + 2 * v77);
            do
            {
              v85 = *v84++;
              *v83++ = (v85 * v74) >> 16;
              --v82;
            }

            while (v82);
          }
        }
      }

      v86 = a2[1086];
      v193 = v37;
      v191 = a4;
      if (v52 != v86)
      {
        if (v86 >= 0)
        {
          v87 = v86;
        }

        else
        {
          v87 = -v86;
        }

        v88 = __clz(v87);
        v89 = v86 << (v88 - 1);
        if (v52 >= 0)
        {
          v90 = v52;
        }

        else
        {
          v90 = -v52;
        }

        v91 = __clz(v90);
        v92 = v52 << (v91 - 1);
        v93 = (0x1FFFFFFF / (v92 >> 16) * v89) >> 16;
        v94 = ((0x1FFFFFFF / (v92 >> 16) * (v89 - (((v93 * v92) >> 29) & 0xFFFFFFF8))) >> 16) + v93;
        v95 = v88 - v91;
        if (v88 - v91 + 29 >= 0x30)
        {
          v96 = 0;
        }

        else
        {
          v96 = v94 >> (v95 + 13);
        }

        v97 = 0x80000000 >> (-13 - v95);
        if (v97 <= v94)
        {
          v97 = v94;
        }

        if ((0x7FFFFFFFu >> (-13 - v95)) >= v94)
        {
          v98 = v97;
        }

        else
        {
          v98 = 0x7FFFFFFFu >> (-13 - v95);
        }

        v99 = v98 << (-13 - v95);
        if (v95 <= -14)
        {
          v100 = v99;
        }

        else
        {
          v100 = v96;
        }

        v101 = a1[1148];
        if (v101 >= 1)
        {
          v102 = a2[1084] - v101;
          do
          {
            v39[v102] = (v39[v102] * v100) >> 16;
            ++v102;
          }

          while (v102 < a2[1084]);
        }

        if (v217 && !a2[1087])
        {
          v103 = v216->i32[0];
          LODWORD(v104) = v103 - v51 - 2;
          if (v104 < v103)
          {
            v105 = v104;
            v106 = v103 - v104;
            v104 = v104;
            if (v106 < 8)
            {
              goto LABEL_69;
            }

            v104 = (v106 & 0xFFFFFFFFFFFFFFF8) + v104;
            v107 = (v170 + 4 * v105);
            v108 = vdupq_n_s32(v100);
            v109 = v106 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v110 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v108.i8, *v107), 0x10uLL), vmull_high_s32(v108, *v107->i8), 0x10uLL);
              *v107[-2].i8 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v108.i8, v107[-2]), 0x10uLL), vmull_high_s32(v108, *v107[-2].i8), 0x10uLL);
              *v107->i8 = v110;
              v107 += 4;
              v109 -= 8;
            }

            while (v109);
            if (v106 != (v106 & 0xFFFFFFFFFFFFFFF8))
            {
LABEL_69:
              v111 = v103 - v104;
              v112 = (v27 + 4 * v104);
              do
              {
                *v112 = (*v112 * v100) >> 16;
                ++v112;
                --v111;
              }

              while (v111);
            }
          }
        }

        a2[1080] = (a2[1080] * v100) >> 16;
        a2[1081] = (a2[1081] * v100) >> 16;
        a2[960] = (a2[960] * v100) >> 16;
        a2[961] = (a2[961] * v100) >> 16;
        a2[962] = (a2[962] * v100) >> 16;
        a2[963] = (a2[963] * v100) >> 16;
        a2[964] = (a2[964] * v100) >> 16;
        a2[965] = (a2[965] * v100) >> 16;
        a2[966] = (a2[966] * v100) >> 16;
        a2[967] = (a2[967] * v100) >> 16;
        a2[968] = (a2[968] * v100) >> 16;
        a2[969] = (a2[969] * v100) >> 16;
        a2[970] = (a2[970] * v100) >> 16;
        a2[971] = (a2[971] * v100) >> 16;
        a2[972] = (a2[972] * v100) >> 16;
        a2[973] = (a2[973] * v100) >> 16;
        a2[974] = (a2[974] * v100) >> 16;
        a2[975] = (a2[975] * v100) >> 16;
        a2[1056] = (a2[1056] * v100) >> 16;
        a2[1057] = (a2[1057] * v100) >> 16;
        a2[1058] = (a2[1058] * v100) >> 16;
        a2[1059] = (a2[1059] * v100) >> 16;
        a2[1060] = (a2[1060] * v100) >> 16;
        a2[1061] = (a2[1061] * v100) >> 16;
        a2[1062] = (a2[1062] * v100) >> 16;
        a2[1063] = (a2[1063] * v100) >> 16;
        a2[1064] = (a2[1064] * v100) >> 16;
        a2[1065] = (a2[1065] * v100) >> 16;
        a2[1066] = (a2[1066] * v100) >> 16;
        a2[1067] = (a2[1067] * v100) >> 16;
        a2[1068] = (a2[1068] * v100) >> 16;
        a2[1069] = (a2[1069] * v100) >> 16;
        a2[1070] = (a2[1070] * v100) >> 16;
        a2[1071] = (a2[1071] * v100) >> 16;
        a2[1072] = (a2[1072] * v100) >> 16;
        a2[1073] = (a2[1073] * v100) >> 16;
        a2[1074] = (a2[1074] * v100) >> 16;
        a2[1075] = (a2[1075] * v100) >> 16;
        a2[1076] = (a2[1076] * v100) >> 16;
        a2[1077] = (a2[1077] * v100) >> 16;
        a2[1078] = (a2[1078] * v100) >> 16;
        a2[1079] = (a2[1079] * v100) >> 16;
        v52 = *(v188 + 4 * v37);
        a2[1086] = v52;
        v61 = a1[1147];
      }

      v192 = v61;
      if (v61 >= 1)
      {
        v113 = 0;
        v114 = (v182 + 10 * v193);
        v115 = v190[1159];
        v116 = (v181 + 48 * v193);
        v117 = v190[1160];
        v118 = *(v179 + 4 * v193);
        v215 = v118;
        v119 = v118;
        v120 = (v180 + 4 * (a2[1083] - v18));
        v121 = &v39[a2[1084] - v18 + 1];
        v122 = v117;
        v213 = v115 >> 1;
        v214 = v117 >> 1;
        v123 = v115 - 1;
        v212 = *(v178 + 4 * v193);
        v124 = v195;
        v211 = v119 >> 16;
        v206 = (v46 >> 2);
        v205 = ((v46 >> 2) | (v46 << 15)) >> 16;
        v125 = v52 >> 6;
        v126 = a2[1085];
        v127 = v177;
        v128 = v192;
        v129 = v18;
        do
        {
          a2[1085] = 196314165 * v126 + 907633515;
          v145 = v214 + ((v45->i16[0] * *v127) >> 16) + ((v45->i16[1] * *(v127 - 1)) >> 16) + ((v45->i16[2] * *(v127 - 2)) >> 16) + ((v45->i16[3] * *(v127 - 3)) >> 16) + ((v45[1].i16[0] * *(v127 - 4)) >> 16) + ((v45[1].i16[1] * *(v127 - 5)) >> 16) + ((v45[1].i16[2] * *(v127 - 6)) >> 16) + ((v45[1].i16[3] * *(v127 - 7)) >> 16) + ((v45[2].i16[0] * *(v127 - 8)) >> 16) + ((v45[2].i16[1] * *(v127 - 9)) >> 16);
          if (v122 == 16)
          {
            v145 += ((v45[2].i16[2] * *(v127 - 10)) >> 16) + ((v45[2].i16[3] * *(v127 - 11)) >> 16) + ((v45[3].i16[0] * *(v127 - 12)) >> 16) + ((v45[3].i16[1] * *(v127 - 13)) >> 16) + ((v45[3].i16[2] * *(v127 - 14)) >> 16) + ((v45[3].i16[3] * *(v127 - 15)) >> 16);
          }

          if (v217)
          {
            v146 = ((((*v120 * *v114) << 16) + ((*(v120 - 1) * v114[1]) >> 16 << 32) + ((*(v120 - 2) * v114[2]) >> 16 << 32) + ((*(v120 - 3) * v114[3]) >> 16 << 32) + 0x200000000) >> 32) + ((v114[4] * *(v120 - 4)) >> 16);
            ++v120;
          }

          else
          {
            v146 = 0;
          }

          v147 = a2[1081];
          v148 = a2[1056];
          a2[1056] = v147;
          v149 = v213 + ((*v116 * v147) >> 16);
          if (v115 >= 3)
          {
            v150 = v201;
            v151 = v203;
            for (i = 2; i < v115; i += 2)
            {
              v153 = *(v150 - 1);
              *(v150 - 1) = v148;
              v154 = v149 + ((*(v151 - 1) * v148) >> 16);
              v148 = *v150;
              *v150 = v153;
              v150 += 2;
              v149 = v154 + ((*v151 * v153) >> 16);
              v151 += 2;
            }
          }

          v208[v123] = v148;
          v155 = a2[1080];
          v156 = ((v212 * v155) >> 16) + 2 * (v149 + ((v116[v123] * v148) >> 16));
          v157 = ((v215 * v39[a2[1084] - 1]) >> 16) + ((v155 * v211) >> 16);
          v158 = 4 * v145 - v156 - v157;
          if (v18 < 1)
          {
            v160 = v158 >> 1;
          }

          else
          {
            v159 = ((*(v121 - 1) * v205) >> 16) + ((v206 * vqadds_s32(*v121, *(v121 - 2))) >> 16);
            ++v121;
            v160 = (v146 + 2 * v158 - 2 * v159) >> 2;
          }

          v132 = v220;
          v161 = *&v210[4 * v113];
          v162 = v161 - ((v160 + 1) >> 1);
          if (a2[1085] < 0)
          {
            v162 = -v162;
          }

          if (v162 <= -31744)
          {
            v162 = -31744;
          }

          if (v162 >= 30720)
          {
            v163 = 30720;
          }

          else
          {
            v163 = v162;
          }

          v164 = v163 - v220;
          if (v209 >= 2049)
          {
            if (v164 <= v204)
            {
              if (v164 >= v196)
              {
                if (v164 >= 0)
                {
                  v131 = v220;
                }

                else
                {
                  v131 = v198;
                }

                if (v164 < 0)
                {
                  v133 = v197;
                }

                else
                {
                  v132 = v200;
                  v133 = v124;
                }

                v134 = v199;
                if (v164 < 0)
                {
                  v134 = v124;
                }

                goto LABEL_76;
              }

              v164 += v204;
            }

            else
            {
              v164 -= v204;
            }
          }

          v130 = v164 >> 10;
          if (v164 >> 10 < 1)
          {
            v131 = v220;
            v132 = v200;
            v133 = v124;
            v134 = v199;
            if (v130)
            {
              v165 = v220 + (v164 & 0xFFFFFC00);
              v166 = v165 + 80;
              v167 = v165 + 1104;
              v133 = (-80 - v165) * v207;
              v134 = (-1104 - v165) * v207;
              v124 = v195;
              v131 = v130 == -1 ? v198 : v166;
              v132 = v130 == -1 ? v220 : v167;
              v27 = v194;
              if (v130 == -1)
              {
                v133 = v197;
                v134 = v195;
              }
            }
          }

          else
          {
            v131 = v202 + (v164 & 0xFFFFFC00);
            v132 = v131 + 1024;
            v133 = (v202 + (v164 & 0xFC00)) * v207;
            v134 = (v202 + (v164 & 0xFC00) + 1024) * v207;
          }

LABEL_76:
          if (v134 + (v163 - v132) * (v163 - v132) >= v133 + (v163 - v131) * (v163 - v131))
          {
            v135 = v131;
          }

          else
          {
            v135 = v132;
          }

          v136 = v219;
          *(v219 + v113) = ((v135 >> 9) + 1) >> 1;
          v137 = 16 * v135;
          if (a2[1085] < 0)
          {
            v137 = -v137;
          }

          v138 = v137 + 2 * v146;
          v139 = v138 + 16 * v145;
          v140 = ((((v125 * v139) >> 16) >> 7) + 1) >> 1;
          if (v140 <= -32768)
          {
            v140 = -32768;
          }

          if (v140 >= 0x7FFF)
          {
            LOWORD(v140) = 0x7FFF;
          }

          *&v218[2 * v113] = v140;
          v127[1] = v139;
          ++v127;
          v141 = v139 - 16 * v161;
          a2[1081] = v141;
          v142 = v141 - 4 * v156;
          a2[1080] = v142;
          v39[a2[1084]] = v142 - 4 * v157;
          v143 = v216;
          v144 = vadd_s32(*v216, 0x100000001);
          *(v27 + 4 * v216->i32[0]) = 2 * v138;
          *v143 = v144;
          v126 = a2[1085] + *(v136 + v113);
          a2[1085] = v126;
          ++v113;
          v18 = v129;
        }

        while (v113 != v128);
      }

      v40 = v183;
      v41 = (v183 + 4 * v192);
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[3];
      v183[2] = v41[2];
      v40[3] = v44;
      *v40 = v42;
      v40[1] = v43;
      a1 = v190;
      v30 = v190[1147];
      a4 = v191 + 2 * v30;
      v219 += v30;
      v218 += 2 * v30;
      v37 = v193 + 1;
      v36 = v190[1145];
      v203 += 24;
      if (v193 + 1 >= v36)
      {
        v33 = v190[1146];
        v32 = v190[1148];
        break;
      }
    }
  }

  a2[1082] = *(v189 + 4 * v36 - 4);
  memmove(a2, a2 + 2 * v33, 2 * v32);
  return memmove(a2 + 320, &a2[a1[1146] + 320], 4 * a1[1148]);
}

void *silk_NSQ_del_dec_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int32x4_t *a13, unsigned int a14, __int16 a15)
{
  v217 = a8;
  v216 = a7;
  v215 = a6;
  v220 = a3;
  v227 = *MEMORY[0x277D85DE8];
  v223 = *(a2 + 4328);
  MEMORY[0x28223BE20](a1, a2, a3);
  v19 = *(a1 + 4628);
  v221 = (&v192 - v21);
  bzero(&v192 - v21, v19 * v20);
  if (v19 >= 1)
  {
    v25 = *(v220 + 34);
    v26 = *(a2 + 4320);
    v27 = *(a2 + 4 * *(a1 + 4592) + 1276);
    v28 = v221;
    v29 = v19;
    do
    {
      v30 = *(a2 + 3856);
      *v28 = *(a2 + 3840);
      v28[1] = v30;
      v31 = *(a2 + 3888);
      v28[2] = *(a2 + 3872);
      v28[3] = v31;
      v32 = *(a2 + 4272);
      v28[76] = *(a2 + 4256);
      v28[77] = v32;
      v33 = *(a2 + 4304);
      v28[78] = *(a2 + 4288);
      v28[79] = v33;
      v34 = *(a2 + 4240);
      v28[74] = *(a2 + 4224);
      *(v28 + 322) = v25 & 3;
      *(v28 + 1292) = v25 & 3;
      *(v28 + 160) = v26;
      ++v25;
      *(v28 + 256) = v27;
      v28[75] = v34;
      v28 = (v28 + 1300);
      --v29;
    }

    while (v29);
  }

  v222 = a13;
  v35 = *(v220 + 29);
  v214 = silk_Quantization_Offsets_Q10[2 * (v35 >> 1) + *(v220 + 30)];
  v225 = 0;
  if (*(a1 + 4588) >= 40)
  {
    v36 = 40;
  }

  else
  {
    v36 = *(a1 + 4588);
  }

  if (v35 != 2)
  {
    v39 = v223 - 3;
    if (v36 < v223 - 3)
    {
      v39 = v36;
    }

    if (v223 >= 1)
    {
      v36 = v39;
    }

    goto LABEL_22;
  }

  v37 = *(a1 + 4580);
  if (v37 >= 1)
  {
    if (v37 < 8)
    {
      v38 = 0;
      goto LABEL_18;
    }

    v38 = v37 & 0x7FFFFFF8;
    v40 = vdupq_n_s32(v36);
    v41 = v222 + 1;
    v42.i64[0] = 0x200000002;
    v42.i64[1] = 0x200000002;
    v43 = v38;
    v44 = v40;
    do
    {
      v40 = vminq_s32(v40, vaddq_s32(v41[-1], v42));
      v44 = vminq_s32(v44, vaddq_s32(*v41, v42));
      v41 += 2;
      v43 -= 8;
    }

    while (v43);
    v36 = vminvq_s32(vminq_s32(v40, v44));
    if (v38 != v37)
    {
LABEL_18:
      v45 = v37 - v38;
      v46 = &v222->i32[v38];
      do
      {
        v47 = *v46++;
        v48 = v47 - 3;
        if (v36 >= v47 - 3)
        {
          v36 = v48;
        }

        --v45;
      }

      while (v45);
    }
  }

LABEL_22:
  v218 = a12;
  v49 = MEMORY[0x28223BE20](v22, v23, v24);
  v52 = MEMORY[0x28223BE20](v49, v50, v51);
  MEMORY[0x28223BE20](v52, v53, v54);
  v60 = &v192 - ((v59 + 15) & 0x7FFFFFFF0);
  v62 = a2 + 2 * v61;
  *(a2 + 4336) = v61;
  *(a2 + 4332) = v61;
  LODWORD(v63) = *(a1 + 4580);
  if (v63 < 1)
  {
    goto LABEL_121;
  }

  v194 = &v192;
  v64 = 0;
  v65 = 0;
  v213 = a11;
  v212 = v57 == 4;
  if (v57 == 4)
  {
    v66 = 3;
  }

  else
  {
    v66 = 1;
  }

  v208 = v66;
  v211 = a14;
  v67 = a2 + 1280;
  v204 = a15;
  v210 = a10;
  v209 = a9;
  v200 = v36;
  v195 = v221 + 2596;
  v199 = v221 + 81;
  v198 = -v36;
  v205 = v60 + 4;
  v207 = v58;
  v202 = v58 + 2;
  v201 = v55 + 4;
  v193 = v55 + 16;
  v197 = -2 * v36;
  v196 = -v36;
  v224 = v55;
  v219 = v60;
  v203 = v36;
  do
  {
    v71 = (v215 + 32 * (v212 | (v64 >> 1)));
    v72 = *(v209 + 4 * v64);
    *(a2 + 4348) = 0;
    v73 = *(v220 + 29);
    v74 = v218;
    if (v73 != 2)
    {
      goto LABEL_32;
    }

    v223 = v222->i32[v64];
    if ((v208 & v64) != 0)
    {
      LOBYTE(v73) = 2;
LABEL_32:
      v75 = 1;
      goto LABEL_33;
    }

    v206 = a4;
    if (v64 == 2)
    {
      v156 = *(a1 + 4628);
      if (v156 <= 1)
      {
        v157 = 0;
        if (v156 < 1)
        {
LABEL_110:
          if (v36 < 1)
          {
            v161 = v74;
            v162 = v72;
            v65 = 0;
          }

          else
          {
            v165 = v225 + v36;
            v166 = v221 + 1300 * v157;
            v167 = v166 + 544;
            v168 = v166 + 704;
            v169 = v166 + 1024;
            v170 = (v62 + v197);
            v171 = (a5 + v196);
            v172 = v198;
            v173 = v200;
            do
            {
              v165 = (v165 - 1) % 40 + ((v165 - 1) % 40 < 0 ? 0x28 : 0);
              *v171++ = ((*&v167[4 * v165] >> 9) + 1) >> 1;
              v174 = ((((*(v74 + 4) * *&v168[4 * v165]) >> 16) >> 13) + 1) >> 1;
              if (v174 <= -32768)
              {
                v174 = -32768;
              }

              if (v174 >= 0x7FFF)
              {
                LOWORD(v174) = 0x7FFF;
              }

              *v170++ = v174;
              *(v67 + 4 * (v172 + *(a2 + 4336))) = *&v169[4 * v165];
              ++v172;
              --v173;
            }

            while (v173);
            v161 = v74;
            v162 = v72;
            v65 = 0;
            LODWORD(v56) = *(a1 + 4588);
          }

          goto LABEL_119;
        }
      }

      else
      {
        v157 = 0;
        v158 = *(v221 + 324);
        v159 = v195;
        for (i = 1; i != v156; ++i)
        {
          if (*v159 < v158)
          {
            v157 = i;
            v158 = *v159;
          }

          v159 += 325;
        }
      }

      v163 = v157;
      v164 = v199;
      do
      {
        if (v163)
        {
          *v164 += 0x7FFFFFF;
        }

        v164 += 325;
        --v163;
        --v156;
      }

      while (v156);
      goto LABEL_110;
    }

    v161 = v218;
    v162 = v72;
LABEL_119:
    v175 = *(a1 + 4640);
    v176 = *(a1 + 4592) - (v223 + v175) - 2;
    silk_LPC_analysis_filter((v207 + 2 * v176), a2 + 2 * (v176 + v56 * v64), v71, v223 + v175 + 2, v175);
    v75 = 0;
    *(a2 + 4332) = *(a1 + 4592);
    *(a2 + 4348) = 1;
    LOBYTE(v73) = *(v220 + 29);
    v55 = v224;
    v60 = v219;
    v36 = v203;
    v72 = v162;
    v74 = v161;
    a4 = v206;
LABEL_33:
    v70 = *(a1 + 4628);
    v76 = v222->i32[v64];
    v68 = *(v74 + 4 * v64);
    if (v68 <= 1)
    {
      v77 = 1;
    }

    else
    {
      v77 = *(v74 + 4 * v64);
    }

    v78 = __clz(v77);
    v79 = (((-((((0x1FFFFFFF / ((v77 << (v78 - 1)) >> 16)) << 19) * (v77 << (v78 - 1))) & 0xFFFFFFF800000000) >> 32) * (0x1FFFFFFF / ((v77 << (v78 - 1)) >> 16))) >> 16) + ((0x1FFFFFFF / ((v77 << (v78 - 1)) >> 16)) << 16);
    v80 = v79 >> (15 - v78);
    v81 = v78 - 15;
    v82 = 0x80000000 >> v81;
    if (v79 > 0x80000000 >> v81)
    {
      v82 = v79;
    }

    if (v79 <= (0x7FFFFFFFu >> v81))
    {
      v83 = v82;
    }

    else
    {
      v83 = 0x7FFFFFFFu >> v81;
    }

    v84 = v83 << v81;
    if (v68 < 0x20000)
    {
      v85 = v84;
    }

    else
    {
      v85 = v80;
    }

    v69 = *(a1 + 4588);
    if (v69 >= 1)
    {
      v86 = ((v85 >> 4) + 1) >> 1;
      if (v69 == 1)
      {
        v87 = 0;
LABEL_50:
        v92 = v69 - v87;
        v93 = &v60[4 * v87];
        v94 = (a4 + 2 * v87);
        do
        {
          v95 = *v94++;
          *v93 = (v95 * v86) >> 16;
          v93 += 4;
          --v92;
        }

        while (v92);
        goto LABEL_52;
      }

      v87 = v69 & 0x7FFFFFFE;
      v88 = (a4 + 2);
      v89 = v87;
      v90 = v205;
      do
      {
        v91 = (*v88 * v86) >> 16;
        *(v90 - 1) = (*(v88 - 1) * v86) >> 16;
        *v90 = v91;
        v88 += 2;
        v90 += 8;
        v89 -= 2;
      }

      while (v89);
      if (v87 != v69)
      {
        goto LABEL_50;
      }
    }

LABEL_52:
    if ((v75 & 1) == 0)
    {
      v96 = *(a2 + 4332);
      v97 = v96 - v76 - 2;
      if (v97 < v96)
      {
        v98 = ((v204 * v85) >> 14) & 0xFFFFFFFC;
        if (v64)
        {
          LODWORD(v98) = v85;
        }

        v99 = v97;
        v100 = v96 - v97;
        v101 = v99;
        if (v100 < 2)
        {
          goto LABEL_60;
        }

        v101 = (v100 & 0xFFFFFFFFFFFFFFFELL) + v99;
        v102 = (v202 + 2 * v99);
        v103 = (v201 + 4 * v99);
        v104 = v100 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v105 = (*v102 * v98) >> 16;
          *(v103 - 1) = (*(v102 - 1) * v98) >> 16;
          *v103 = v105;
          v102 += 2;
          v103 += 2;
          v104 -= 2;
        }

        while (v104);
        if (v100 != (v100 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_60:
          v106 = v96 - v101;
          v107 = (v55 + 4 * v101);
          v108 = (v207 + 2 * v101);
          do
          {
            v109 = *v108++;
            *v107++ = (v109 * v98) >> 16;
            --v106;
          }

          while (v106);
        }
      }
    }

    v110 = v73;
    v111 = *(a2 + 4344);
    if (v68 != v111)
    {
      if (v111 >= 0)
      {
        v112 = *(a2 + 4344);
      }

      else
      {
        v112 = -v111;
      }

      v113 = __clz(v112);
      v114 = v111 << (v113 - 1);
      if (v68 >= 0)
      {
        v115 = v68;
      }

      else
      {
        v115 = -v68;
      }

      v116 = __clz(v115);
      v117 = v68 << (v116 - 1);
      v118 = (0x1FFFFFFF / (v117 >> 16) * v114) >> 16;
      v119 = ((0x1FFFFFFF / (v117 >> 16) * (v114 - (((v118 * v117) >> 29) & 0xFFFFFFF8))) >> 16) + v118;
      v120 = v113 - v116;
      if (v113 - v116 + 29 >= 0x30)
      {
        v121 = 0;
      }

      else
      {
        v121 = v119 >> (v120 + 13);
      }

      v122 = 0x80000000 >> (-13 - v120);
      if (v122 <= v119)
      {
        v122 = v119;
      }

      if ((0x7FFFFFFFu >> (-13 - v120)) >= v119)
      {
        v123 = v122;
      }

      else
      {
        v123 = 0x7FFFFFFFu >> (-13 - v120);
      }

      v124 = v123 << (-13 - v120);
      if (v120 > -14)
      {
        v124 = v121;
      }

      v125 = *(a1 + 4592);
      if (v125 >= 1)
      {
        v126 = *(a2 + 4336) - v125;
        do
        {
          *(v67 + 4 * v126) = (*(v67 + 4 * v126) * v124) >> 16;
          ++v126;
        }

        while (v126 < *(a2 + 4336));
      }

      if (v110 == 2 && !*(a2 + 4348))
      {
        v127 = *(a2 + 4332);
        v128 = v127 - v76 - 2;
        v129 = v127 - v36;
        if (v128 < v129)
        {
          v130 = v128;
          v131 = v129 <= v128 + 1 ? v128 + 1 : v129;
          v132 = v131 - v130;
          v133 = v130;
          if (v132 < 8)
          {
            goto LABEL_140;
          }

          v133 = (v132 & 0xFFFFFFFFFFFFFFF8) + v130;
          v134 = (v193 + 4 * v130);
          v135 = vdupq_n_s32(v124);
          v136 = v132 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v137 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v135.i8, *v134), 0x10uLL), vmull_high_s32(v135, *v134->i8), 0x10uLL);
            *v134[-2].i8 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v135.i8, v134[-2]), 0x10uLL), vmull_high_s32(v135, *v134[-2].i8), 0x10uLL);
            *v134->i8 = v137;
            v134 += 4;
            v136 -= 8;
          }

          while (v136);
          if (v132 != (v132 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_140:
            do
            {
              *(v55 + 4 * v133) = (*(v55 + 4 * v133) * v124) >> 16;
              ++v133;
            }

            while (v133 < v129);
          }
        }
      }

      if (v70 >= 1)
      {
        v138 = vdupq_n_s32(v124);
        v139 = v221;
        do
        {
          v140 = v139[54];
          v141 = v139[55];
          v139[64] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[64].i8), 0x10uLL), vmull_high_s32(v138, v139[64]), 0x10uLL);
          v139[54] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v140.i8), 0x10uLL), vmull_high_s32(v138, v140), 0x10uLL);
          v139[55] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v141.i8), 0x10uLL), vmull_high_s32(v138, v141), 0x10uLL);
          v139[65] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[65].i8), 0x10uLL), vmull_high_s32(v138, v139[65]), 0x10uLL);
          v139[66] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[66].i8), 0x10uLL), vmull_high_s32(v138, v139[66]), 0x10uLL);
          v142 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[57].i8), 0x10uLL), vmull_high_s32(v138, v139[57]), 0x10uLL);
          v139[56] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[56].i8), 0x10uLL), vmull_high_s32(v138, v139[56]), 0x10uLL);
          v139[57] = v142;
          v139[67] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[67].i8), 0x10uLL), vmull_high_s32(v138, v139[67]), 0x10uLL);
          v139[68] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[68].i8), 0x10uLL), vmull_high_s32(v138, v139[68]), 0x10uLL);
          v143 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[59].i8), 0x10uLL), vmull_high_s32(v138, v139[59]), 0x10uLL);
          v139[58] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[58].i8), 0x10uLL), vmull_high_s32(v138, v139[58]), 0x10uLL);
          v139[59] = v143;
          v139[69] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[69].i8), 0x10uLL), vmull_high_s32(v138, v139[69]), 0x10uLL);
          v139[70] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[70].i8), 0x10uLL), vmull_high_s32(v138, v139[70]), 0x10uLL);
          v144 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[61].i8), 0x10uLL), vmull_high_s32(v138, v139[61]), 0x10uLL);
          v139[60] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[60].i8), 0x10uLL), vmull_high_s32(v138, v139[60]), 0x10uLL);
          v139[61] = v144;
          v139[71] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[71].i8), 0x10uLL), vmull_high_s32(v138, v139[71]), 0x10uLL);
          v139[72] = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[72].i8), 0x10uLL), vmull_high_s32(v138, v139[72]), 0x10uLL);
          v145 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[62].i8), 0x10uLL), vmull_high_s32(v138, v139[62]), 0x10uLL);
          v146 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[63].i8), 0x10uLL), vmull_high_s32(v138, v139[63]), 0x10uLL);
          v147 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v138.i8, *v139[73].i8), 0x10uLL), vmull_high_s32(v138, v139[73]), 0x10uLL);
          v139[80].i32[0] = (v139[80].i32[0] * v124) >> 16;
          v139[80].i32[1] = (v139[80].i32[1] * v124) >> 16;
          v148 = (v139->i32[1] * v124) >> 16;
          v139->i32[0] = (v139->i32[0] * v124) >> 16;
          v139->i32[1] = v148;
          v149 = (v139->i32[3] * v124) >> 16;
          v139->i32[2] = (v139->i32[2] * v124) >> 16;
          v139->i32[3] = v149;
          v150 = (v139[1].i32[1] * v124) >> 16;
          v139[1].i32[0] = (v139[1].i32[0] * v124) >> 16;
          v139[1].i32[1] = v150;
          v151 = (v139[1].i32[3] * v124) >> 16;
          v139[1].i32[2] = (v139[1].i32[2] * v124) >> 16;
          v139[1].i32[3] = v151;
          v152 = (v139[2].i32[1] * v124) >> 16;
          v139[2].i32[0] = (v139[2].i32[0] * v124) >> 16;
          v139[2].i32[1] = v152;
          v153 = (v139[2].i32[3] * v124) >> 16;
          v139[2].i32[2] = (v139[2].i32[2] * v124) >> 16;
          v139[2].i32[3] = v153;
          v154 = (v139[3].i32[1] * v124) >> 16;
          v139[3].i32[0] = (v139[3].i32[0] * v124) >> 16;
          v139[3].i32[1] = v154;
          v155 = (v139[3].i32[3] * v124) >> 16;
          v139[3].i32[2] = (v139[3].i32[2] * v124) >> 16;
          v139[3].i32[3] = v155;
          v139[74].i32[0] = (v139[74].i32[0] * v124) >> 16;
          v139[74].i32[1] = (v139[74].i32[1] * v124) >> 16;
          v139[74].i32[2] = (v139[74].i32[2] * v124) >> 16;
          v139[74].i32[3] = (v139[74].i32[3] * v124) >> 16;
          v139[75].i32[0] = (v139[75].i32[0] * v124) >> 16;
          v139[75].i32[1] = (v139[75].i32[1] * v124) >> 16;
          v139[75].i32[2] = (v139[75].i32[2] * v124) >> 16;
          v139[75].i32[3] = (v139[75].i32[3] * v124) >> 16;
          v139[76].i32[0] = (v139[76].i32[0] * v124) >> 16;
          v139[76].i32[1] = (v139[76].i32[1] * v124) >> 16;
          v139[76].i32[2] = (v139[76].i32[2] * v124) >> 16;
          v139[76].i32[3] = (v139[76].i32[3] * v124) >> 16;
          v139[77].i32[0] = (v139[77].i32[0] * v124) >> 16;
          v139[77].i32[1] = (v139[77].i32[1] * v124) >> 16;
          v139[77].i32[2] = (v139[77].i32[2] * v124) >> 16;
          v139[77].i32[3] = (v139[77].i32[3] * v124) >> 16;
          v139[78].i32[0] = (v139[78].i32[0] * v124) >> 16;
          v139[78].i32[1] = (v139[78].i32[1] * v124) >> 16;
          v139[78].i32[2] = (v139[78].i32[2] * v124) >> 16;
          v139[78].i32[3] = (v139[78].i32[3] * v124) >> 16;
          v139[79].i32[0] = (v139[79].i32[0] * v124) >> 16;
          v139[79].i32[1] = (v139[79].i32[1] * v124) >> 16;
          v139[79].i32[2] = (v139[79].i32[2] * v124) >> 16;
          v139[79].i32[3] = (v139[79].i32[3] * v124) >> 16;
          v139[62] = v145;
          v139[63] = v146;
          v139[73] = v147;
          v139 = (v139 + 1300);
          --v70;
        }

        while (v70);
      }

      v68 = *(v74 + 4 * v64);
      *(a2 + 4344) = v68;
      LODWORD(v69) = *(a1 + 4588);
      LODWORD(v70) = *(a1 + 4628);
    }

    silk_noise_shape_quantizer_del_dec(a2, v221, v110, v60, a5, v62, v224, v226, v71, (v216 + 10 * v64), (v217 + 48 * v64), v223, (v72 << 15) & 0xFFFF0000 | (v72 >> 2), *(v210 + 4 * v64), *(v213 + 4 * v64), v68, v211, v214, v69, v65, *(a1 + 4636), HIDWORD(*(a1 + 4636)), *(a1 + 4672), v70, &v225, v36);
    v60 = v219;
    v55 = v224;
    v56 = *(a1 + 4588);
    a4 += 2 * v56;
    a5 += v56;
    v62 += 2 * v56;
    ++v64;
    v63 = *(a1 + 4580);
    ++v65;
  }

  while (v64 < v63);
  LODWORD(v19) = *(a1 + 4628);
LABEL_121:
  if (v19 <= 1)
  {
    v177 = 0;
  }

  else
  {
    v177 = 0;
    v178 = *(v221 + 324);
    v179 = v221 + 649;
    v180 = 1;
    do
    {
      if (*v179 < v178)
      {
        v177 = v180;
        v178 = *v179;
      }

      ++v180;
      v179 += 325;
    }

    while (v19 != v180);
  }

  v181 = v218;
  v182 = v221 + 1300 * v177;
  *(v220 + 34) = *(v182 + 323);
  if (v36 >= 1)
  {
    v183 = v225 + v36;
    v184 = *(v181 + 4 * v63 - 4) >> 6;
    v185 = -v36;
    do
    {
      v183 = (v183 - 1) % 40 + ((v183 - 1) % 40 < 0 ? 0x28 : 0);
      *(a5 + v185) = ((*&v182[4 * v183 + 544] >> 9) + 1) >> 1;
      v186 = ((((*&v182[4 * v183 + 704] * v184) >> 16) >> 7) + 1) >> 1;
      if (v186 <= -32768)
      {
        v186 = -32768;
      }

      if (v186 >= 0x7FFF)
      {
        LOWORD(v186) = 0x7FFF;
      }

      *(v62 + 2 * v185) = v186;
      *(a2 + 1280 + 4 * (v185 + *(a2 + 4336))) = *&v182[4 * v183 + 1024];
    }

    while (!__CFADD__(v185++, 1));
    LODWORD(v56) = *(a1 + 4588);
  }

  v188 = &v182[4 * v56];
  v189 = *(v188 + 1);
  *(a2 + 3840) = *v188;
  *(a2 + 3856) = v189;
  v190 = *(v188 + 3);
  *(a2 + 3872) = *(v188 + 2);
  *(a2 + 3888) = v190;
  *(a2 + 4256) = *(v182 + 76);
  *(a2 + 4272) = *(v182 + 77);
  *(a2 + 4288) = *(v182 + 78);
  *(a2 + 4304) = *(v182 + 79);
  *(a2 + 4224) = *(v182 + 74);
  *(a2 + 4240) = *(v182 + 75);
  *(a2 + 4320) = *(v182 + 160);
  *(a2 + 4328) = v222->i32[*(a1 + 4580) - 1];
  memmove(a2, (a2 + 2 * *(a1 + 4584)), 2 * *(a1 + 4592));
  return memmove((a2 + 1280), (a2 + 1280 + 4 * *(a1 + 4584)), 4 * *(a1 + 4592));
}

uint64_t silk_noise_shape_quantizer_del_dec(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 *a9, __int16 *a10, __int16 *a11, int a12, int a13, __int16 a14, int a15, int a16, unsigned int a17, int a18, int a19, int a20, int a21, int a22, __int16 a23, int a24, int *a25, unsigned int a26)
{
  v165 = a8;
  v146 = a7;
  v145 = a6;
  v144 = a5;
  v186 = a4;
  v158 = a3;
  v26 = a2;
  v166 = a1;
  v27 = a24;
  v200 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v197 = &v139 - v29;
  v159 = v30;
  if (v30 >= 1)
  {
    v198 = 0;
    v31 = v146 + 4 * (*(v166 + 4332) - a12);
    v156 = a16 >> 6;
    v155 = (v31 + 8);
    LODWORD(v31) = *(v166 + 4336);
    v157 = a12;
    v143 = v166 + 1280;
    v163 = (v166 + 1280 + 4 * (v31 - a12 + 1));
    v153 = a13;
    v152 = a13 >> 16;
    v184 = a22;
    v183 = a22 >> 1;
    v154 = a20;
    v181 = a21 >> 1;
    v182 = a21;
    v196 = a21 - 1;
    v180 = a14;
    v179 = a15;
    v176 = (a17 >> 1) - 512;
    v168 = 512 - (a17 >> 1);
    v171 = a18 - 944;
    v185 = a17;
    v170 = (944 - a18) * a17;
    v173 = a18 + 944;
    v172 = (a18 + 944) * a17;
    result = a15 >> 16;
    v142 = a10;
    v178 = a17;
    v177 = a17 * a18;
    v199 = a18;
    v175 = a18 - 80;
    v164 = a26;
    v162 = a26;
    v151 = a11;
    v174 = a11 + 2;
    v150 = v26 + 1188;
    v141 = v197 + 60;
    v149 = v197 + 32;
    v148 = v26 + 24;
    v140 = v197 + 88;
    v32 = 1300 * a24;
    v33 = v26 + 4;
    v147 = v197 + 12;
    v167 = result;
    v160 = v32;
    do
    {
      if (v158 == 2)
      {
        v34 = 2 * (((((*v155 * *v142) << 16) + ((*(v155 - 1) * v142[1]) >> 16 << 32) + ((*(v155 - 2) * v142[2]) >> 16 << 32) + (((*(v155 - 3) * v142[3]) << 16) & 0x7FFFFFFF00000000) + 0x200000000) >> 32) + ((v142[4] * *(v155 - 4)) >> 16));
        ++v155;
        if (v157 >= 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v34 = 0;
        if (v157 >= 1)
        {
LABEL_9:
          v169 = v34 - 4 * (((*(v163 - 1) * v152) >> 16) + ((v153 * vqadds_s32(*v163, *(v163 - 2))) >> 16));
          ++v163;
          if (a24 <= 0)
          {
LABEL_7:
            LODWORD(v35) = *a25;
            goto LABEL_66;
          }

          goto LABEL_10;
        }
      }

      v169 = 0;
      if (a24 <= 0)
      {
        goto LABEL_7;
      }

LABEL_10:
      v161 = v33;
      v36 = 0;
      v37 = *a9;
      v194 = v198 + 15;
      v195 = v37;
      v38 = a9[1];
      v192 = a9[2];
      v193 = v38;
      v39 = a9[3];
      v190 = a9[4];
      v191 = v39;
      v40 = a9[5];
      v188 = a9[6];
      v189 = v40;
      v187 = a9[7];
      v41 = a9[8];
      v42 = a9[9];
      v43 = v150;
      v44 = *v151;
      v45 = v151[v196];
      v46 = v169;
      do
      {
        v69 = v26 + 325 * v36;
        v69[322] = 196314165 * v69[322] + 907633515;
        v70 = &v69[v194];
        v71 = v183 + ((*v70 * v195) >> 16) + ((*(v70 - 1) * v193) >> 16) + ((*(v70 - 2) * v192) >> 16) + ((*(v70 - 3) * v191) >> 16) + ((*(v70 - 4) * v190) >> 16) + ((*(v70 - 5) * v189) >> 16) + ((*(v70 - 6) * v188) >> 16) + ((*(v70 - 7) * v187) >> 16) + ((*(v70 - 8) * v41) >> 16) + ((*(v70 - 9) * v42) >> 16);
        if (v184 == 16)
        {
          v71 += ((a9[10] * *(v70 - 10)) >> 16) + ((a9[11] * *(v70 - 11)) >> 16) + ((a9[12] * *(v70 - 12)) >> 16) + ((a9[13] * *(v70 - 13)) >> 16) + ((a9[14] * *(v70 - 14)) >> 16) + ((a9[15] * *(v70 - 15)) >> 16);
        }

        v72 = v69[296];
        v73 = v69[321] + ((a23 * v72) >> 16);
        v74 = v72 + ((a23 * (v69[297] - v73)) >> 16);
        v69[296] = v73;
        v75 = v181 + ((v44 * v73) >> 16);
        if (v182 >= 3)
        {
          v76 = v43;
          v77 = v174;
          v78 = 2;
          v79 = v43;
          do
          {
            v80 = v76[1];
            v81 = *v76 + ((a23 * (v80 - v74)) >> 16);
            v82 = v75 + ((*(v77 - 1) * v74) >> 16);
            v83 = v79[2];
            v79 += 2;
            *v76 = v74;
            v76[1] = v81;
            v74 = v80 + ((a23 * (v83 - v81)) >> 16);
            v75 = v82 + ((*v77 * v81) >> 16);
            v78 += 2;
            v77 += 2;
            v76 = v79;
          }

          while (v78 < a21);
        }

        v84 = 16 * v71;
        v69[v196 + 296] = v74;
        v85 = v75 + ((v45 * v74) >> 16);
        v86 = v69[320];
        v87 = (((v180 * v86) >> 14) & 0xFFFFFFFC) + 8 * v85;
        v35 = *a25;
        v88 = 4 * (((v179 * v69[v35 + 256]) >> 16) + ((v86 * result) >> 16));
        v89 = *(v186 + 4 * v198);
        v90 = v89 - (((vqsubs_s32(v84 + v46, vqadds_s32(v87, v88)) >> 3) + 1) >> 1);
        v91 = v69[322];
        if (v91 < 0)
        {
          v90 = -v90;
        }

        if (v90 <= -31744)
        {
          v90 = -31744;
        }

        if (v90 >= 30720)
        {
          v90 = 30720;
        }

        v92 = v90 - v199;
        if (v185 < 2049)
        {
          goto LABEL_11;
        }

        if (v92 > v176)
        {
          v92 -= v176;
          goto LABEL_11;
        }

        if (v92 < v168)
        {
          v92 += v176;
LABEL_11:
          v47 = v92 >> 10;
          if (v92 >> 10 < 1)
          {
            v50 = v177;
            v51 = v172;
            v48 = v199;
            v49 = v173;
            if (v47)
            {
              v93 = v199 + (v92 & 0xFFFFFC00);
              v48 = v93 + 80;
              v49 = v93 + 1104;
              v50 = (-80 - v93) * v178;
              v46 = v169;
              v94 = (-1104 - v93) * v178;
              if (v47 == -1)
              {
                v50 = v170;
              }

              v51 = v177;
              if (v47 == -1)
              {
                v48 = v171;
              }

              else
              {
                v51 = v94;
              }

              if (v47 == -1)
              {
                v49 = v199;
              }

              result = v167;
            }
          }

          else
          {
            v48 = v175 + (v92 & 0xFFFFFC00);
            v49 = v48 + 1024;
            v50 = (v175 + (v92 & 0xFC00)) * v178;
            v51 = (v175 + (v92 & 0xFC00) + 1024) * v178;
          }

          goto LABEL_13;
        }

        if (v92 >= 0)
        {
          v50 = v177;
        }

        else
        {
          v50 = v170;
        }

        if (v92 >= 0)
        {
          v51 = v172;
        }

        else
        {
          v51 = v177;
        }

        v48 = v171;
        if (v92 >= 0)
        {
          v48 = v199;
        }

        v49 = v173;
        if (v92 < 0)
        {
          v49 = v199;
        }

LABEL_13:
        v52 = &v197[56 * v36];
        v53 = (v50 + (v90 - v48) * (v90 - v48)) >> 10;
        v54 = (v51 + (v90 - v49) * (v90 - v49)) >> 10;
        v55 = v69[324];
        v56 = v53 <= v54;
        if (v53 >= v54)
        {
          v57 = v54;
        }

        else
        {
          v57 = v53;
        }

        if (v53 > v54)
        {
          v54 = v53;
        }

        if (v56)
        {
          v58 = v48;
        }

        else
        {
          v58 = v49;
        }

        if (v56)
        {
          v48 = v49;
        }

        v59 = v54 + v55;
        *v52 = v58;
        *(v52 + 1) = v57 + v55;
        v60 = v91 < 0;
        if (v91 >= 0)
        {
          v61 = 16 * v58;
        }

        else
        {
          v61 = -16 * v58;
        }

        v62 = v61 + v34;
        v63 = v62 + v84;
        v64 = 16 * v89;
        v65 = 16 * v48;
        if (v60)
        {
          v65 = -16 * v48;
        }

        *(v52 + 4) = v63 - v64;
        *(v52 + 5) = vqsubs_s32(v63 - v64 - v87, v88);
        *(v52 + 6) = v62;
        *(v52 + 7) = v48;
        *(v52 + 2) = v63;
        *(v52 + 3) = v63 - v64 - v87;
        v66 = v65 + v34 + v84;
        v67 = v66 - v64;
        v68 = v66 - v64 - v87;
        *(v52 + 10) = v68;
        *(v52 + 11) = v67;
        *(v52 + 12) = vqsubs_s32(v68, v88);
        *(v52 + 13) = v65 + v34;
        *(v52 + 8) = v59;
        *(v52 + 9) = v66;
        ++v36;
        v43 += 325;
      }

      while (v36 != a24);
      v32 = v160;
      v33 = v161;
LABEL_66:
      v95 = (v35 - 1) % 40;
      v96 = v95 + 40;
      if (v95 >= 0)
      {
        v96 = (v35 - 1) % 40;
      }

      *a25 = v96;
      if (a24 <= 1)
      {
        v97 = 0;
      }

      else
      {
        v97 = 0;
        v98 = v141;
        v99 = 1;
        v100 = *(v197 + 1);
        do
        {
          v102 = *v98;
          v98 += 56;
          v101 = v102;
          if (v102 < v100)
          {
            v97 = v99;
            v100 = v101;
          }

          ++v99;
        }

        while (a24 != v99);
      }

      v103 = (v96 + v164) % 40;
      v104 = v26 + 1300 * v97;
      v105 = v103;
      if (a24 < 1)
      {
        v119 = 0;
        v118 = 0;
        if (*(v197 + 8) >= *(v197 + 1))
        {
          goto LABEL_91;
        }

LABEL_90:
        v195 = v105;
        memcpy(v26 + 1300 * v118 + 4 * v198, v26 + 1300 * v119 + 4 * v198, 1300 - 4 * v198);
        v105 = v195;
        v32 = v160;
        result = v167;
        v120 = &v197[56 * v118];
        v121 = &v197[56 * v119];
        *v120 = *(v121 + 28);
        *(v120 + 12) = *(v121 + 40);
        goto LABEL_91;
      }

      v106 = *&v104[4 * v103 + 384];
      v107 = v148 + v103;
      v108 = v149;
      v109 = a24;
      do
      {
        if (*v107 != v106)
        {
          *(v108 - 7) += 0x7FFFFFF;
          *v108 += 0x7FFFFFF;
        }

        v107 += 325;
        v108 += 56;
        --v109;
      }

      while (v109);
      v110 = *(v197 + 1);
      v111 = *(v197 + 8);
      if (a24 < 2)
      {
        v119 = 0;
        v118 = 0;
        if (v111 >= v110)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      v112 = 0;
      v113 = 0;
      v114 = v140;
      for (i = 1; i != a24; ++i)
      {
        if (*(v114 - 7) > v110)
        {
          v112 = i;
          v110 = *(v114 - 7);
        }

        v117 = *v114;
        v114 += 56;
        v116 = v117;
        if (v117 < v111)
        {
          v113 = i;
          v111 = v116;
        }
      }

      v118 = v112;
      v119 = v113;
      if (v111 < v110)
      {
        goto LABEL_90;
      }

LABEL_91:
      if (v154 > 0 || v198 >= v162)
      {
        v122 = &v104[4 * v105];
        v123 = v198 - v162;
        *(v144 + v198 - v162) = ((*(v122 + 136) >> 9) + 1) >> 1;
        v124 = ((((*(v165 + 4 * v105) * *(v122 + 176)) >> 16) >> 7) + 1) >> 1;
        if (v124 <= -32768)
        {
          v124 = -32768;
        }

        if (v124 >= 0x7FFF)
        {
          LOWORD(v124) = 0x7FFF;
        }

        *(v145 + 2 * v123) = v124;
        v125 = v166;
        v126 = v164;
        *(v143 + 4 * (*(v166 + 4336) - v164)) = *(v122 + 256);
        *(v146 + 4 * (*(v125 + 4332) - v126)) = *(v122 + 216);
      }

      *(v166 + 4332) = vadd_s32(*(v166 + 4332), 0x100000001);
      if (a24 >= 1)
      {
        v127 = 0;
        v128 = v147;
        do
        {
          v129 = v26 + v127;
          *(v129 + 160) = *v128;
          v131 = *(v128 - 2);
          v130 = *(v128 - 1);
          *(v33 + v127) = v130;
          *(v26 + 4 * *a25 + v127 + 704) = v130;
          v132 = *(v128 - 3);
          *(v26 + 4 * *a25 + v127 + 544) = v132;
          v133 = *(v128 + 2);
          *(v26 + 4 * *a25 + v127 + 864) = 2 * *(v128 + 3);
          *(v26 + 4 * *a25 + v127 + 1024) = v133;
          v134 = *(v26 + v127 + 1288) + (((v132 >> 9) + 1) >> 1);
          *(v129 + 322) = v134;
          *(v26 + 4 * *a25 + v127 + 384) = v134;
          *(v129 + 324) = v131;
          v127 += 1300;
          v128 += 56;
        }

        while (v32 != v127);
      }

      *(v165 + 4 * *a25) = v156;
      v33 = (v33 + 4);
      ++v198;
    }

    while (v198 != v159);
  }

  if (a24 >= 1)
  {
    v135 = 4 * v159;
    do
    {
      v136 = *(v26 + v135);
      v137 = *(v26 + v135 + 16);
      v138 = *(v26 + v135 + 48);
      v26[2] = *(v26 + v135 + 32);
      v26[3] = v138;
      *v26 = v136;
      v26[1] = v137;
      v26 = (v26 + 1300);
      --v27;
    }

    while (v27);
  }

  return result;
}

float32x4_t *opus_pcm_soft_clip(float32x4_t *result, int a2, int a3, uint64_t a4)
{
  if (!a4 || !result || a2 < 1 || a3 < 1)
  {
    return result;
  }

  v4 = a3 * a2;
  if (a3 * a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v4 > 7)
  {
    v6 = v5 & 0x7FFFFFF8;
    v7 = result + 1;
    v8.i64[0] = 0x4000000040000000;
    v8.i64[1] = 0x4000000040000000;
    v9.i64[0] = 0xC0000000C0000000;
    v9.i64[1] = 0xC0000000C0000000;
    v10 = v6;
    do
    {
      v11 = v7[-1];
      v12 = vcgtq_f32(v11, v8);
      v13 = vcgtq_f32(*v7, v8);
      v14 = vcgtq_f32(v9, v11);
      v15 = vcgtq_f32(v9, *v7);
      v16 = vbslq_s8(vorrq_s8(v15, v13), vbslq_s8(vbicq_s8(v15, v13), v9, v8), *v7);
      v7[-1] = vbslq_s8(vorrq_s8(v14, v12), vbslq_s8(vbicq_s8(v14, v12), v9, v8), v11);
      *v7 = v16;
      v7 += 2;
      v10 -= 8;
    }

    while (v10);
    if (v6 == v5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = v5 - v6;
  v18 = &result->f32[v6];
  do
  {
    v19 = *v18;
    v20 = *v18 > 2.0 || *v18 < -2.0;
    if (*v18 < -2.0 && *v18 <= 2.0)
    {
      v21 = -2.0;
    }

    else
    {
      v21 = 2.0;
    }

    if (v20)
    {
      v19 = v21;
    }

    *v18++ = v19;
    --v17;
  }

  while (v17);
LABEL_23:
  v22 = 0;
  v23 = 4 * a3;
  v24 = result;
  do
  {
    v25 = &result->f32[v22];
    v26 = *(a4 + 4 * v22);
    v27 = v24;
    v28 = a2;
    do
    {
      v29 = v26 * *v27;
      if (v29 >= 0.0)
      {
        break;
      }

      *v27 = *v27 + (v29 * *v27);
      v27 = (v27 + v23);
      --v28;
    }

    while (v28);
    v30 = 0;
    v31 = *v25;
    while (1)
    {
      v32 = v30;
      if (v30 < a2)
      {
        v33 = a2 - v30;
        v34 = v23 * v30;
        while (fabsf(*(v24 + v34)) <= 1.0)
        {
          ++v30;
          v34 += v23;
          if (!--v33)
          {
            goto LABEL_77;
          }
        }
      }

      if (v30 == a2)
      {
        break;
      }

      v35 = v25[v30 * a3];
      v36 = fabsf(v35);
      v37 = v30 + 1;
      v38 = v23 * (v30 - 1);
      v39 = v30;
      do
      {
        if (v39-- < 1)
        {
          v37 = v30 & (v30 >> 31);
          if (v30 < a2)
          {
            goto LABEL_39;
          }

          goto LABEL_48;
        }

        v41 = v35 * *(v24 + v38);
        --v37;
        v38 -= v23;
      }

      while (v41 >= 0.0);
      if (v30 < a2)
      {
LABEL_39:
        v42 = a2 - v30;
        v43 = v23 * v30;
        v44 = v30;
        while (1)
        {
          v45 = *(v24 + v43);
          if ((v35 * v45) < 0.0)
          {
            break;
          }

          v46 = fabsf(v45);
          if (v46 > v36)
          {
            v36 = v46;
            v44 = v30;
          }

          ++v30;
          v43 += v23;
          if (!--v42)
          {
            v30 = a2;
            break;
          }
        }

        if (v37)
        {
          goto LABEL_46;
        }

        goto LABEL_49;
      }

LABEL_48:
      v44 = v30;
      if (v37)
      {
LABEL_46:
        v47 = 0;
        goto LABEL_50;
      }

LABEL_49:
      v47 = (v35 * *v25) >= 0.0;
LABEL_50:
      if (v35 <= 0.0)
      {
        v48 = ((v36 + -1.0) / (v36 * v36)) + (((v36 + -1.0) / (v36 * v36)) * 0.00000024);
      }

      else
      {
        v48 = -(((v36 + -1.0) / (v36 * v36)) + (((v36 + -1.0) / (v36 * v36)) * 0.00000024));
      }

      if (v37 < v30)
      {
        v49 = v37;
        v50 = v30 - v37;
        if (v50 < 8)
        {
          goto LABEL_59;
        }

        if (a3 != 1)
        {
          goto LABEL_59;
        }

        v51 = v37;
        v52 = v50 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v53 = &v24[v51];
          v54 = vmlaq_f32(*&v24[v51 + 4], *&v24[v51 + 4], vmulq_n_f32(*&v24[v51 + 4], v48));
          *v53 = vmlaq_f32(*&v24[v51], *&v24[v51], vmulq_n_f32(*&v24[v51], v48));
          v53[1] = v54;
          v51 += 8;
          v52 -= 8;
        }

        while (v52);
        v49 = (v50 & 0xFFFFFFFFFFFFFFF8) + v37;
        if (v50 != (v50 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_59:
          v55 = v30 - v49;
          v56 = v23 * v49;
          do
          {
            *(v24 + v56) = *(v24 + v56) + ((v48 * *(v24 + v56)) * *(v24 + v56));
            v56 += v23;
            --v55;
          }

          while (v55);
        }
      }

      v57 = v44 > 1 && v47;
      if (v57 && v32 < v44)
      {
        v58 = v31 - *v25;
        v59 = v58 / v44;
        v60 = v32;
        v61 = v44 - v32;
        v62 = v23 * v60;
        do
        {
          v58 = v58 - v59;
          v63 = v58 + *(v24 + v62);
          v64 = v63 > 1.0 || v63 < -1.0;
          if (v63 < -1.0 && v63 <= 1.0)
          {
            v65 = -1.0;
          }

          else
          {
            v65 = 1.0;
          }

          if (v64)
          {
            v63 = v65;
          }

          *(v24 + v62) = v63;
          v62 += v23;
          --v61;
        }

        while (v61);
      }

      if (v30 == a2)
      {
        goto LABEL_78;
      }
    }

LABEL_77:
    v48 = 0.0;
LABEL_78:
    *(a4 + 4 * v22++) = v48;
    ++v24;
  }

  while (v22 != a3);
  return result;
}

uint64_t opus_packet_parse_impl(unsigned __int8 *a1, int a2, int a3, _BYTE *a4, char **a5, int16x8_t *a6, _DWORD *a7, _DWORD *a8)
{
  v8 = 0xFFFFFFFFLL;
  if (a2 < 0 || !a6)
  {
    return v8;
  }

  if (!a2)
  {
    return 4294967292;
  }

  v9 = *a1;
  v10 = *a1;
  v11 = (v10 >> 3) & 3;
  v12 = v11 == 3;
  v13 = 48000 << v11;
  if (v12)
  {
    v14 = 2880;
  }

  else
  {
    v14 = (42949673 * v13) >> 32;
  }

  if ((v10 & 8) != 0)
  {
    v15 = 960;
  }

  else
  {
    v15 = 480;
  }

  if ((~v10 & 0x60) != 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = (10737419 * v13) >> 32;
  if (v9 < 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v19 = (a1 + 1);
  v20 = a2 - 1;
  v21 = v10 & 3;
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (a2 != 1)
      {
        v27 = *v19;
        if (v27 < 0xFC)
        {
          v28 = 1;
          a6->i16[0] = v27;
          v20 = a2 - 2;
          v24 = a2 - 2 - v27;
          if (a2 - 2 < v27)
          {
            return 4294967292;
          }

          goto LABEL_66;
        }

        if (a2 != 2)
        {
          v40 = v27 + 4 * a1[2];
          v28 = 2;
          a6->i16[0] = v40;
          v20 = a2 - 3;
          v24 = a2 - 3 - v40;
          if (a2 - 3 < v40)
          {
            return 4294967292;
          }

LABEL_66:
          v22 = 0;
          v21 = 0;
          v23 = 2;
          v19 += v28;
          goto LABEL_19;
        }
      }

      a6->i16[0] = -1;
      return 4294967292;
    }

    if (a2 == 1)
    {
      return 4294967292;
    }

    v33 = *v19;
    v8 = 4294967292;
    v23 = *v19 & 0x3F;
    if ((*v19 & 0x3F) == 0 || (v23 * v18) > 0x1680)
    {
      return v8;
    }

    v19 = (a1 + 2);
    v24 = a2 - 2;
    v21 = 0;
    if ((v33 & 0x40) != 0)
    {
      while (v24 >= 1)
      {
        v35 = *v19++;
        v34 = v35;
        if (v35 >= 0xFE)
        {
          v36 = 254;
        }

        else
        {
          v36 = v34;
        }

        v24 += ~v36;
        v21 += v36;
        if (v34 != 255)
        {
          if (v24 < 0)
          {
            return 4294967292;
          }

          goto LABEL_42;
        }
      }

      return 4294967292;
    }

LABEL_42:
    if (v33 < 0)
    {
      if (v23 < 2)
      {
        v22 = 0;
        v23 = 1;
        v20 = v24;
      }

      else
      {
        v41 = (v23 - 1);
        v42 = a6;
        v20 = v24;
        do
        {
          if (!v20)
          {
LABEL_108:
            v42->i16[0] = -1;
            return 4294967292;
          }

          v43 = *v19;
          if (v43 >= 0xFC)
          {
            if (v20 == 1)
            {
              goto LABEL_108;
            }

            v43 += 4 * v19[1];
            v44 = 2;
          }

          else
          {
            v44 = 1;
          }

          v42->i16[0] = v43;
          v20 -= v44;
          if (v20 < v43)
          {
            return 4294967292;
          }

          v19 += v44;
          v24 = v24 - v44 - v43;
          v42 = (v42 + 2);
          --v41;
        }

        while (v41);
        if (v24 < 0)
        {
          return 4294967292;
        }

        v22 = 0;
      }

LABEL_19:
      v25 = v24;
      v24 = v20;
      v20 = v25;
      if (a3)
      {
        v26 = &a6->i16[v23];
        if (v24 < 1)
        {
          goto LABEL_47;
        }

        goto LABEL_29;
      }

      goto LABEL_51;
    }

    if (a3)
    {
      v22 = 1;
      v26 = &a6->i16[v23];
      if (v24 < 1)
      {
        goto LABEL_47;
      }

      goto LABEL_29;
    }

    v25 = v24 / v23;
    if (v24 / v23 * v23 != v24)
    {
      return 4294967292;
    }

    if (v23 < 2)
    {
      v23 = 1;
      if (v25 > 1275)
      {
        return 4294967292;
      }

      goto LABEL_52;
    }

    v45 = (v23 - 1);
    if (v23 < 5)
    {
      v46 = 0;
      goto LABEL_122;
    }

    if (v23 >= 0x11)
    {
      v57 = vdupq_n_s16(v25);
      v46 = v45 & 0x7FFFFFF0;
      *a6 = v57;
      a6[1] = v57;
      if (v46 != 16)
      {
        a6[2] = v57;
        a6[3] = v57;
        if (v46 != 32)
        {
          a6[4] = v57;
          a6[5] = v57;
        }
      }

      if (v46 == v45)
      {
        goto LABEL_121;
      }

      if (((v23 - 1) & 0xC) == 0)
      {
LABEL_122:
        v62 = v45 - v46;
        v63 = &a6->i16[v46];
        v22 = 1;
        do
        {
          *v63++ = v25;
          --v62;
        }

        while (v62);
        goto LABEL_124;
      }
    }

    else
    {
      v46 = 0;
    }

    v58 = v46;
    v46 = v45 & 0x7FFFFFFC;
    v59 = vdup_n_s16(v25);
    v60 = (a6 + 2 * v58);
    v61 = v58 - v46;
    do
    {
      *v60++ = v59;
      v61 += 4;
    }

    while (v61);
    if (v46 != v45)
    {
      goto LABEL_122;
    }

LABEL_121:
    v22 = 1;
LABEL_124:
    v20 = v24;
    v24 /= v23;
    goto LABEL_19;
  }

  if ((v10 & 3) == 0)
  {
    v22 = 0;
    v23 = 1;
    v24 = a2 - 1;
    goto LABEL_19;
  }

  if (!a3)
  {
    if (v20)
    {
      return 4294967292;
    }

    v21 = 0;
    v25 = v20 >> 1;
    a6->i16[0] = v20 >> 1;
    v23 = 2;
LABEL_51:
    if (v25 > 1275)
    {
      return 4294967292;
    }

LABEL_52:
    a6->i16[v23 - 1] = v25;
    goto LABEL_96;
  }

  v21 = 0;
  v23 = 2;
  v22 = 1;
  v24 = a2 - 1;
  v26 = &a6->i16[2];
  if (v20 < 1)
  {
    goto LABEL_47;
  }

LABEL_29:
  v29 = *v19;
  if (v29 < 0xFC)
  {
    v30 = 1;
    *(v26 - 1) = v29;
    v31 = (v23 - 1);
    v32 = a6->i16[v31];
    v8 = 4294967292;
    if (v32 < 0)
    {
      return v8;
    }

    goto LABEL_56;
  }

  if (v24 != 1)
  {
    v30 = 2;
    *(v26 - 1) = v29 + 4 * v19[1];
    v31 = (v23 - 1);
    v32 = a6->i16[v31];
    v8 = 4294967292;
    if (v32 < 0)
    {
      return v8;
    }

    goto LABEL_56;
  }

LABEL_47:
  v30 = -1;
  *(v26 - 1) = -1;
  v31 = (v23 - 1);
  v32 = a6->i16[v31];
  v8 = 4294967292;
  if (v32 < 0)
  {
    return v8;
  }

LABEL_56:
  v38 = v24 - v30;
  if (v38 >= v32)
  {
    v19 += v30;
    if (v22)
    {
      if (v23 * v32 <= v38)
      {
        if (v23 >= 2)
        {
          if (v23 < 5)
          {
            v39 = 0;
LABEL_94:
            v52 = v31 - v39;
            v53 = &a6->i16[v39];
            do
            {
              *v53++ = v32;
              --v52;
            }

            while (v52);
            goto LABEL_96;
          }

          if (v23 >= 0x11)
          {
            v47 = vdupq_n_s16(v32);
            v39 = v31 & 0x7FFFFFF0;
            *a6 = v47;
            a6[1] = v47;
            if (v39 != 16)
            {
              a6[2] = v47;
              a6[3] = v47;
              if (v39 != 32)
              {
                a6[4] = v47;
                a6[5] = v47;
              }
            }

            if (v39 == v31)
            {
              goto LABEL_96;
            }

            if ((v31 & 0xC) == 0)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v39 = 0;
          }

          v48 = v39;
          v39 = v31 & 0x7FFFFFFC;
          v49 = vdup_n_s16(v32);
          v50 = (a6 + 2 * v48);
          v51 = v48 - v39;
          do
          {
            *v50++ = v49;
            v51 += 4;
          }

          while (v51);
          if (v39 == v31)
          {
            goto LABEL_96;
          }

          goto LABEL_94;
        }

        v23 = 1;
LABEL_96:
        if (a7)
        {
          *a7 = v19 - a1;
        }

        v54 = v23;
        if (a5)
        {
          do
          {
            *a5++ = v19;
            v55 = a6->i16[0];
            a6 = (a6 + 2);
            v19 += v55;
            --v54;
          }

          while (v54);
        }

        else
        {
          do
          {
            v56 = a6->i16[0];
            a6 = (a6 + 2);
            LODWORD(v19) = v19 + v56;
            --v54;
          }

          while (v54);
        }

        if (a8)
        {
          *a8 = v21 + v19 - a1;
        }

        if (a4)
        {
          *a4 = v9;
        }

        return v23;
      }
    }

    else if (v30 + v32 <= v20)
    {
      goto LABEL_96;
    }

    return 4294967292;
  }

  return v8;
}

uint64_t opus_decoder_init(char *a1, int a2, unsigned int a3)
{
  result = 0xFFFFFFFFLL;
  if (a2 > 15999)
  {
    if (a2 != 16000 && a2 != 48000 && a2 != 24000)
    {
      return result;
    }

LABEL_8:
    if (a3 - 3 < 0xFFFFFFFE)
    {
      return result;
    }

    v7 = 8768 * a3;
    bzero(a1, 8768 * a3 + 9460);
    *a1 = 0x58000021F0;
    *(a1 + 12) = a3;
    *(a1 + 2) = a3;
    *(a1 + 3) = a2;
    *(a1 + 6) = a2;
    *(a1 + 4) = a3;
    bzero(a1 + 88, 0x10C0uLL);
    *(a1 + 616) = 1;
    *(a1 + 22) = 0x10000;
    *(a1 + 1070) = 0;
    v8 = *(a1 + 607);
    if (v8 >= 1)
    {
      v9 = 0x7FFF / (v8 + 1);
      if (v8 < 4)
      {
        v10 = 0;
        v11 = 0;
        goto LABEL_23;
      }

      v12 = vdupq_n_s32(v9);
      if (v8 >= 0x10)
      {
        v14 = (a1 + 4180);
        v10 = v8 & 0x7FFFFFF0;
        v15 = vmulq_s32(v12, xmmword_273B92360);
        v16 = vmulq_s32(v12, xmmword_273B90830);
        v17 = vdupq_n_s32(8 * v9);
        v13 = v9 * (v8 & 0x7FFFFFF0);
        v18 = v10;
        do
        {
          v19 = vaddq_s32(v15, v17);
          v20 = vaddq_s32(v16, v17);
          v14[-1] = vuzp1q_s16(vaddq_s32(v16, v12), vaddq_s32(v15, v12));
          *v14 = vuzp1q_s16(vaddq_s32(v20, v12), vaddq_s32(v19, v12));
          v16 = vaddq_s32(v20, v17);
          v15 = vaddq_s32(v19, v17);
          v14 += 2;
          v18 -= 16;
        }

        while (v18);
        if (v10 == v8)
        {
          goto LABEL_25;
        }

        if ((v8 & 0xC) == 0)
        {
          v11 = v9 * v10;
LABEL_23:
          v26 = v8 - v10;
          v27 = &a1[2 * v10 + 4164];
          v28 = v11 + v9;
          do
          {
            *v27 = v28;
            v27 += 2;
            v28 += v9;
            --v26;
          }

          while (v26);
          goto LABEL_25;
        }
      }

      else
      {
        v13 = 0;
        v10 = 0;
      }

      v21 = v10;
      v10 = v8 & 0x7FFFFFFC;
      v11 = v9 * (v8 & 0x7FFFFFFC);
      v22 = vmlaq_s32(vdupq_n_s32(v13), v12, xmmword_273B90830);
      v23 = vdupq_n_s32(4 * v9);
      v24 = &a1[2 * v21 + 4164];
      v25 = v21 - v10;
      do
      {
        *v24++ = vmovn_s32(vaddq_s32(v22, v12));
        v22 = vaddq_s32(v22, v23);
        v25 += 4;
      }

      while (v25);
      if (v10 != v8)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    *(a1 + 4260) = 0x30788000000000;
    *(a1 + 1071) = *(a1 + 604) << 7;
    *(a1 + 4356) = 0x1000000010000;
    *(a1 + 546) = 0x1400000002;
    bzero(a1 + 4376, 0x10C0uLL);
    *(a1 + 1688) = 1;
    *(a1 + 1094) = 0x10000;
    *(a1 + 2142) = 0;
    v29 = *(a1 + 1679);
    if (v29 < 1)
    {
      goto LABEL_41;
    }

    v30 = 0x7FFF / (v29 + 1);
    if (v29 < 4)
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_39;
    }

    v33 = vdupq_n_s32(v30);
    if (v29 >= 0x10)
    {
      v31 = v29 & 0x7FFFFFF0;
      v35 = vmulq_s32(v33, xmmword_273B92360);
      v36 = vmulq_s32(v33, xmmword_273B90830);
      v37 = vdupq_n_s32(8 * v30);
      v34 = v30 * (v29 & 0x7FFFFFF0);
      v38 = v31;
      v39 = (a1 + 8468);
      do
      {
        v40 = vaddq_s32(v35, v37);
        v41 = vaddq_s32(v36, v37);
        v39[-1] = vuzp1q_s16(vaddq_s32(v36, v33), vaddq_s32(v35, v33));
        *v39 = vuzp1q_s16(vaddq_s32(v41, v33), vaddq_s32(v40, v33));
        v36 = vaddq_s32(v41, v37);
        v35 = vaddq_s32(v40, v37);
        v39 += 2;
        v38 -= 16;
      }

      while (v38);
      if (v31 == v29)
      {
        goto LABEL_41;
      }

      if ((v29 & 0xC) == 0)
      {
        v32 = v30 * v31;
LABEL_39:
        v47 = v29 - v31;
        v48 = &a1[2 * v31 + 8452];
        v49 = v32 + v30;
        do
        {
          *v48 = v49;
          v48 += 2;
          v49 += v30;
          --v47;
        }

        while (v47);
        goto LABEL_41;
      }
    }

    else
    {
      v34 = 0;
      v31 = 0;
    }

    v42 = v31;
    v31 = v29 & 0x7FFFFFFC;
    v32 = v30 * (v29 & 0x7FFFFFFC);
    v43 = vmlaq_s32(vdupq_n_s32(v34), v33, xmmword_273B90830);
    v44 = vdupq_n_s32(4 * v30);
    v45 = &a1[2 * v42 + 8452];
    v46 = v42 - v31;
    do
    {
      *v45++ = vmovn_s32(vaddq_s32(v43, v33));
      v43 = vaddq_s32(v43, v44);
      v46 += 4;
    }

    while (v46);
    if (v31 != v29)
    {
      goto LABEL_39;
    }

LABEL_41:
    *(a1 + 2137) = 0;
    *(a1 + 2138) = 3176576;
    v50 = *(a1 + 1676) << 7;
    *(a1 + 8644) = 0x1000000010000;
    *(a1 + 2143) = v50;
    *(a1 + 1082) = 0x1400000002;
    *(a1 + 1083) = 0;
    *(a1 + 2168) = 0;
    *(a1 + 2171) = 0;
    if (a3 > 2)
    {
      return 4294967293;
    }

    bzero(a1 + 8688, (v7 + 772));
    *(a1 + 1086) = &mode48000_960_120;
    *(a1 + 2174) = 120;
    *(a1 + 2175) = a3;
    *(a1 + 2176) = a3;
    *(a1 + 8708) = xmmword_273BBA750;
    v51 = a1 + 8708;
    *(a1 + 8724) = a3 == 1;
    opus_custom_decoder_ctl(a1 + 2172, 4028, v52, v53, v54, v55, v56, v57, v65);
    result = 4294967293;
    if (a2 <= 15999)
    {
      if (a2 == 8000)
      {
        v64 = 6;
        goto LABEL_54;
      }

      if (a2 == 12000)
      {
        v64 = 4;
        goto LABEL_54;
      }
    }

    else
    {
      switch(a2)
      {
        case 16000:
          v64 = 3;
          goto LABEL_54;
        case 48000:
          v64 = 1;
          goto LABEL_54;
        case 24000:
          v64 = 2;
LABEL_54:
          *(a1 + 2177) = v64;
          opus_custom_decoder_ctl(a1 + 2172, 10016, v58, v59, v60, v61, v62, v63, 0);
          result = 0;
          *(a1 + 15) = 0;
          *(a1 + 16) = a2 / 0x190u;
          v51 = a1 + 44;
          break;
      }
    }

    *v51 = 0;
    return result;
  }

  if (a2 == 8000 || a2 == 12000)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t opus_decode_native(int *a1, unsigned __int8 *a2, int a3, float32x4_t *a4, uint64_t a5, unsigned int a6, int a7, _DWORD *a8, int a9)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a6 > 1 || (!a2 || !a3 || a6) && a5 % (a1[3] / 400))
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2 || !a3)
  {
    LODWORD(v21) = 0;
    while (1)
    {
      v22 = opus_decode_frame(a1, 0, 0, &a4->f32[a1[2] * v21], a5 - v21, 0);
      if ((v22 & 0x80000000) != 0)
      {
        break;
      }

      v21 = (v22 + v21);
      if (v21 >= a5)
      {
LABEL_26:
        a1[18] = v21;
        return v21;
      }
    }

    return v22;
  }

  if (a3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *a2;
  v13 = *a2;
  if ((~v12 & 0x60) != 0)
  {
    v14 = 1000;
  }

  else
  {
    v14 = 1001;
  }

  if (v12 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1002;
  }

  HIDWORD(v38) = v14;
  v39 = v15;
  if (v12 < 0)
  {
    v16 = a7;
    v17 = a6;
    v23 = ((v13 >> 5) & 3) + 1102;
    if (((v13 >> 5) & 3) == 0)
    {
      v23 = 1101;
    }

    v40 = v23;
    v42 = 0;
    v41 = 0;
    v19 = a1 + 3;
    v20 = (a1[3] << ((v13 >> 3) & 3)) / 400;
  }

  else if ((~v13 & 0x60) != 0)
  {
    v16 = a7;
    v17 = a6;
    v40 = (v13 >> 5) + 1101;
    v42 = 0;
    v41 = 0;
    v19 = a1 + 3;
    v24 = a1[3];
    v25 = 1374389535 * (v24 << ((v13 >> 3) & 3));
    v26 = (v25 >> 37) + (v25 >> 63);
    v27 = 60 * v24 / 1000;
    if (((v13 >> 3) & 3) == 3)
    {
      v20 = v27;
    }

    else
    {
      v20 = v26;
    }
  }

  else
  {
    v16 = a7;
    v17 = a6;
    if ((v13 & 0x10) != 0)
    {
      v18 = 1105;
    }

    else
    {
      v18 = 1104;
    }

    v40 = v18;
    v42 = 0;
    v41 = 0;
    v19 = a1 + 3;
    if ((v13 & 8) != 0)
    {
      v20 = a1[3] / 50;
    }

    else
    {
      v20 = a1[3] / 100;
    }
  }

  if ((v13 & 4) != 0)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v30 = opus_packet_parse_impl(a2, a3, v16, &v41, 0, v43, &v42, a8);
  v21 = v30;
  if ((v30 & 0x80000000) == 0)
  {
    v31 = &a2[v42];
    if (v17)
    {
      if ((v13 & 0x80) != 0 || a5 < v20 || a1[14] == 1002)
      {
        if (a5 % (*v19 / 400))
        {
          return 0xFFFFFFFFLL;
        }

        LODWORD(v21) = 0;
        while (1)
        {
          v22 = opus_decode_frame(a1, 0, 0, &a4->f32[a1[2] * v21], a5 - v21, 0);
          if ((v22 & 0x80000000) != 0)
          {
            break;
          }

          v21 = (v22 + v21);
          if (v21 >= a5)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        if (a5 != v20)
        {
          v36 = a1[18];
          LODWORD(v38) = a9;
          v37 = opus_decode_native(a1, 0, 0, a4, (a5 - v20), 0, 0, 0, v38);
          if ((v37 & 0x80000000) != 0)
          {
            v21 = v37;
            a1[18] = v36;
            return v21;
          }
        }

        a1[16] = v20;
        a1[13] = v40;
        a1[14] = HIDWORD(v38);
        a1[12] = v28;
        v22 = opus_decode_frame(a1, v31, v43[0].i16[0], &a4->f32[a1[2] * (a5 - v20)], v20, 1);
        if ((v22 & 0x80000000) == 0)
        {
          a1[18] = a5;
          return a5;
        }
      }

      return v22;
    }

    if (v30 * v20 > a5)
    {
      return 4294967294;
    }

    a1[13] = v40;
    a1[14] = v39;
    a1[16] = v20;
    a1[12] = v28;
    if (v30)
    {
      v33 = v30;
      v34 = v43;
      LODWORD(v21) = 0;
      do
      {
        v22 = opus_decode_frame(a1, v31, v34->i16[0], &a4->f32[a1[2] * v21], a5 - v21, 0);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        v35 = v34->i16[0];
        v34 = (v34 + 2);
        v31 += v35;
        v21 = (v22 + v21);
      }

      while (--v33);
    }

    a1[18] = v21;
    if (a9)
    {
      opus_pcm_soft_clip(a4, v21, a1[2], (a1 + 19));
    }

    else
    {
      a1[19] = 0;
      a1[20] = 0;
    }
  }

  return v21;
}

uint64_t opus_decode_frame(int *a1, unsigned __int8 *a2, uint64_t a3, float32x2_t *a4, int a5, uint64_t a6)
{
  v279 = *MEMORY[0x277D85DE8];
  v273 = 0;
  v6 = a1[3];
  v7 = v6 / 50;
  v8 = ((v6 / 50) >> 3);
  if (v8 > a5)
  {
    return 4294967294;
  }

  v10 = a4;
  v12 = *a1;
  v13 = a1[1];
  v14 = v7 >> 1;
  v15 = v7 >> 2;
  v278 = 0;
  v276 = 0u;
  v277 = 0u;
  v275 = 0u;
  v274 = 0;
  v16 = 3 * (v6 / 25);
  if (v16 >= a5)
  {
    result = a5;
  }

  else
  {
    result = v16;
  }

  if (a3 > 1)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    v18 = a1[16];
    v19 = a1[13];
    v20 = a1[14];
    *&v275 = a2;
    DWORD2(v275) = a3;
    LODWORD(v276) = 0;
    v21 = *a2;
    HIDWORD(v277) = v21;
    v22 = 2;
    DWORD1(v277) = (v21 >> 1) ^ 0x7F;
    HIDWORD(v276) = 2;
    v23 = a2[1];
    if (a3 == 2)
    {
      v24 = 0;
    }

    else
    {
      v22 = 3;
      HIDWORD(v276) = 3;
      v24 = a2[2];
    }

    v30 = (v23 << 7) & 0xFF00 | (v21 << 15) | (((v21 >> 1) ^ 0x7F) << 16) | ((v24 | (v23 << 8)) >> 1);
    DWORD2(v276) = 33;
    LODWORD(v277) = 0x80000000;
    if (v22 >= a3)
    {
      v31 = 0;
    }

    else
    {
      HIDWORD(v276) = v22 + 1;
      v31 = a2[v22];
    }

    HIDWORD(v277) = v31;
    DWORD1(v277) = (((v31 | (v24 << 8)) >> 1) | (v30 << 8)) ^ 0xFFFFFF;
    v32 = a1[15];
    if (v32 >= 1)
    {
      if (v20 == 1002 && v32 != 1002)
      {
        if (!a1[17])
        {
          v63 = v19;
          v65 = a2;
          v270 = &v259;
          v271 = v12;
          v67 = MEMORY[0x28223BE20](result, a2, a3);
          v265 = v68;
          v69 = v67;
          v262 = &v259 - v70;
          v71 = opus_decode_frame(a1, 0, 0);
          if (v18 > v69)
          {
            return 0xFFFFFFFFLL;
          }

          MEMORY[0x28223BE20](v71, v72, v73);
          v266 = v258;
          v267 = 1;
          v33 = a3;
          v39 = v65;
          v35 = a6;
          v38 = v63;
LABEL_45:
          v263 = 0;
          v261 = 0;
          LODWORD(v260) = 0;
          HIDWORD(v259) = 0;
          v40 = 0;
          v41 = v35 == 0;
          v42 = 1;
          v269 = v39;
          v268 = v33;
          v43 = 21;
          v44 = 1002;
          if (v38 > 1101)
          {
            goto LABEL_46;
          }

          goto LABEL_143;
        }

        v28 = 0;
        v20 = 1002;
        goto LABEL_40;
      }

      if (v20 != 1002 && v32 == 1002)
      {
        v29 = a1[2] * v15;
        v28 = 1;
        goto LABEL_41;
      }
    }

    v28 = 0;
LABEL_40:
    v29 = 1;
    goto LABEL_41;
  }

  v17 = a1[16];
  if (result >= v17)
  {
    result = v17;
  }

  else
  {
    result = result;
  }

LABEL_13:
  if (a1[17])
  {
    v20 = 1002;
  }

  else
  {
    v20 = a1[15];
    if (!v20)
    {
      if (a1[2] * result >= 1)
      {
        v45 = 4 * (a1[2] * result);
        v46 = result;
        bzero(a4, v45);
        return v46;
      }

      return result;
    }
  }

  if (result <= v7)
  {
    if (result >= v7)
    {
      LODWORD(v18) = result;
      v265 = v7 >> 2;
      v270 = &v259;
      v271 = v12;
      if (v20 != 1002)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (result > v14)
      {
        a2 = 0;
        v28 = 0;
        v29 = 1;
        v18 = (v7 >> 1);
LABEL_41:
        if (v18 > result)
        {
          return 0xFFFFFFFFLL;
        }

        v270 = &v259;
        v265 = v7 >> 2;
        if (v20 == 1002)
        {
          v267 = v28;
          v271 = v12;
          MEMORY[0x28223BE20](result, a2, a3);
          v266 = v258;
          v262 = 0;
          goto LABEL_45;
        }

        result = v18;
LABEL_55:
        LODWORD(v262) = v29;
        v267 = v28;
        v271 = v12;
        MEMORY[0x28223BE20](result, a2, a3);
        v266 = (&v259 - v54);
        v55 = (a1 + v13);
        LODWORD(v54) = a1[15];
        v263 = v51;
        LODWORD(v264) = v49;
        v269 = v47;
        if (v54 != 1002)
        {
          goto LABEL_101;
        }

        goto LABEL_65;
      }

      if (v20 == 1000)
      {
        v265 = v7 >> 2;
        v270 = &v259;
        v28 = 0;
        a2 = 0;
        v29 = 1;
        LODWORD(v18) = result;
        goto LABEL_55;
      }

      if (result >= v15)
      {
        v56 = v7 >> 2;
      }

      else
      {
        v56 = result;
      }

      if (result >= v14)
      {
        LODWORD(v18) = result;
      }

      else
      {
        LODWORD(v18) = v56;
      }

      v265 = v7 >> 2;
      v270 = &v259;
      v271 = v12;
      if (v20 != 1002)
      {
LABEL_64:
        MEMORY[0x28223BE20](result, a2, a3);
        v266 = (&v259 - v57);
        v49 = 0;
        v47 = 0;
        v51 = 0;
        v267 = 0;
        LODWORD(v262) = 1;
        v55 = (a1 + v13);
        LODWORD(v57) = a1[15];
        v263 = 0;
        LODWORD(v264) = 0;
        v269 = 0;
        if (v57 != 1002)
        {
LABEL_101:
          v109 = 1000 * v18 / a1[3];
          if (v109 <= 10)
          {
            v109 = 10;
          }

          a1[8] = v109;
          if (v51)
          {
            a1[5] = a1[12];
            if (v20 == 1000 && (v49 - 1101) <= 2)
            {
              v110 = 4000 * (v49 - 1101) + 8000;
            }

            else
            {
              v110 = 16000;
            }

            a1[7] = v110;
          }

          HIDWORD(v259) = v20;
          v260 = v8;
          v268 = v48;
          v111 = 0;
          v112 = v50;
          if (v47)
          {
            v113 = 2 * v50;
          }

          else
          {
            v113 = 1;
          }

          v114 = v266;
          do
          {
            while (1)
            {
              v115 = silk_Decode(v55, (a1 + 4), v113, v111 == 0, &v275, v114, &v274, a1[11], *v52.i64, v53);
              if (v115)
              {
                break;
              }

              v114 += 2 * a1[2] * v274;
              v111 += v274;
              if (v111 >= v18)
              {
                goto LABEL_119;
              }
            }

            if (!v113)
            {
              return 4294967293;
            }

            v274 = v18;
            v117 = a1[2] * v18;
            if (v117 >= 1)
            {
              bzero(v114, (2 * v117));
            }

            v114 += 2 * v117;
            v111 += v18;
          }

          while (v111 < v18);
LABEL_119:
          v41 = v112 == 0;
          v118 = v263;
          if (v112)
          {
            v118 = 0;
          }

          if (v118 != 1)
          {
            v123 = 0;
            v261 = 0;
            v122 = v268;
            v8 = v260;
            v120 = HIDWORD(v259);
            goto LABEL_139;
          }

          v119 = __clz(v277);
          v120 = HIDWORD(v259);
          if (HIDWORD(v259) == 1001)
          {
            v121 = 5;
          }

          else
          {
            v121 = -15;
          }

          v122 = v268;
          v8 = v260;
          if ((DWORD2(v276) + v121 + v119) > (8 * v268))
          {
            v123 = 0;
            v261 = 0;
            v41 = 1;
            goto LABEL_139;
          }

          if (HIDWORD(v259) == 1001)
          {
            v115 = ec_dec_bit_logp(&v275, 12);
            if (!v115)
            {
              v123 = 0;
              v261 = 0;
              v41 = 1;
              v120 = 1001;
              v122 = v268;
              goto LABEL_139;
            }

            v124 = ec_dec_bit_logp(&v275, 1);
            v115 = ec_dec_uint(&v275, 0x100u);
            v125 = v115 + 2;
            v126 = DWORD2(v276);
            v127 = __clz(v277);
            v128 = v268;
          }

          else
          {
            v115 = ec_dec_bit_logp(&v275, 1);
            v124 = v115;
            v126 = DWORD2(v276);
            v127 = __clz(v277);
            v128 = v268;
            v125 = v268 - ((DWORD2(v276) + v127 - 25) >> 3);
          }

          v129 = v128 - v125;
          v130 = v127 + v126 - 32;
          v131 = (8 * v129) < v130;
          if ((8 * v129) < v130)
          {
            v123 = 0;
          }

          else
          {
            v123 = v125;
          }

          if (v131)
          {
            v122 = 0;
          }

          else
          {
            v122 = v129;
          }

          DWORD2(v275) -= v123;
          v261 = v124;
          v41 = 1;
LABEL_139:
          LODWORD(v260) = v123;
          MEMORY[0x28223BE20](v115, v116, v122);
          v263 = v133;
          if (v134 == 1)
          {
            v135 = v33;
            v262 = &v259 - v132;
            opus_decode_frame(a1, 0, 0);
            v33 = v135;
            HIDWORD(v259) = 0;
            v42 = 0;
            v40 = 17;
            v267 = 1;
          }

          else
          {
            v267 = 0;
            v42 = 0;
            v262 = 0;
            v40 = 17;
            HIDWORD(v259) = v133;
          }

          v38 = v264;
          v268 = v33;
          v43 = 21;
          v44 = v120;
          if (v264 > 1101)
          {
LABEL_46:
            if ((v38 - 1102) >= 2)
            {
              if (v38 == 1104)
              {
                v43 = 19;
              }
            }

            else
            {
              v43 = 17;
            }

            goto LABEL_146;
          }

LABEL_143:
          if (!v38)
          {
            goto LABEL_147;
          }

          if (v38 == 1101)
          {
            v43 = 13;
          }

LABEL_146:
          if (opus_custom_decoder_ctl((a1 + v271), 10012, v33, v38, v34, v35, v36, v37, v43))
          {
            return 4294967293;
          }

LABEL_147:
          v258[0] = a1[12];
          v136 = v271;
          v137 = opus_custom_decoder_ctl((a1 + v271), 10008, v33, v38, v34, v35, v36, v37, v258[0]);
          if (v137)
          {
            return 4294967293;
          }

          if (v263)
          {
            MEMORY[0x28223BE20](v137, v138, v139);
            v264 = (&v259 - v146);
            if (v261)
            {
              v271 = v136;
              if (opus_custom_decoder_ctl((a1 + v136), 10010, v140, v141, v142, v143, v144, v145, 0))
              {
                return 4294967293;
              }

              celt_decode_with_ec((a1 + v271), &v269[v268], v260, v264, v265, 0, 0);
              if (opus_custom_decoder_ctl((a1 + v271), 4031, v147, v148, v149, v150, v151, v152, &v273))
              {
                return 4294967293;
              }

              LODWORD(v259) = 1;
LABEL_155:
              v258[0] = v40;
              v153 = v136;
              if (!opus_custom_decoder_ctl((a1 + v136), 10010, v140, v141, v142, v143, v144, v145, v258[0]))
              {
                v160 = v44;
                if (v44 != 1000)
                {
                  if (v7 >= v18)
                  {
                    v162 = v18;
                  }

                  else
                  {
                    v162 = v7;
                  }

                  v163 = a1[15];
                  v164 = v268;
                  v165 = v269;
                  if (v44 != v163 && v163 >= 1 && !a1[17])
                  {
                    v169 = v162;
                    v170 = opus_custom_decoder_ctl((a1 + v153), 4028, v268, v155, v162, v157, v158, v159, v259);
                    LODWORD(v162) = v169;
                    v165 = v269;
                    v164 = v268;
                    if (v170)
                    {
                      return 4294967293;
                    }
                  }

                  if (v41)
                  {
                    v166 = v165;
                  }

                  else
                  {
                    v166 = 0;
                  }

                  v161 = celt_decode_with_ec((a1 + v153), v166, v164, v10, v162, &v275, 0);
LABEL_175:
                  if ((v42 & 1) == 0)
                  {
                    v167 = (a1[2] * v18);
                    if (v167 >= 1)
                    {
                      if (v167 < 4)
                      {
                        v168 = 0;
                        goto LABEL_191;
                      }

                      if (v167 >= 0x10)
                      {
                        v168 = v167 & 0x7FFFFFF0;
                        v171 = &v10[4];
                        v172 = (v266 + 2);
                        v173.i64[0] = 0x3800000038000000;
                        v173.i64[1] = 0x3800000038000000;
                        v174 = v168;
                        do
                        {
                          v175 = *v172[-2].i8;
                          v176 = vmlaq_f32(v171[-1], v173, vcvtq_f32_s32(vmovl_high_s16(v175)));
                          v177 = vmlaq_f32(*v171, v173, vcvtq_f32_s32(vmovl_s16(*v172)));
                          v178 = vmlaq_f32(v171[1], v173, vcvtq_f32_s32(vmovl_high_s16(*v172->i8)));
                          v171[-2] = vmlaq_f32(v171[-2], v173, vcvtq_f32_s32(vmovl_s16(*v175.i8)));
                          v171[-1] = v176;
                          *v171 = v177;
                          v171[1] = v178;
                          v171 += 4;
                          v172 += 4;
                          v174 -= 16;
                        }

                        while (v174);
                        if (v168 == v167)
                        {
                          goto LABEL_193;
                        }

                        if ((v167 & 0xC) == 0)
                        {
LABEL_191:
                          v185 = v167 - v168;
                          v186 = v266 + v168;
                          v187 = v10 + v168;
                          do
                          {
                            v188 = *v186++;
                            *v187 = *v187 + (v188 * 0.000030518);
                            ++v187;
                            --v185;
                          }

                          while (v185);
                          goto LABEL_193;
                        }
                      }

                      else
                      {
                        v168 = 0;
                      }

                      v179 = v168;
                      v168 = v167 & 0x7FFFFFFC;
                      v180 = (v10 + 4 * v179);
                      v181 = (v266 + 2 * v179);
                      v182 = v179 - v168;
                      v183.i64[0] = 0x3800000038000000;
                      v183.i64[1] = 0x3800000038000000;
                      do
                      {
                        v184 = *v181++;
                        *v180 = vmlaq_f32(*v180, v183, vcvtq_f32_s32(vmovl_s16(v184)));
                        ++v180;
                        v182 += 4;
                      }

                      while (v182);
                      if (v168 != v167)
                      {
                        goto LABEL_191;
                      }
                    }
                  }

LABEL_193:
                  v272 = 0;
                  if (opus_custom_decoder_ctl((a1 + v153), 10015, v154, v155, v156, v157, v158, v159, &v272))
                  {
                    return 4294967293;
                  }

                  v195 = *(v272 + 72);
                  if (HIDWORD(v259) == 0 || v261)
                  {
                    v197 = v267;
                    v196 = v268;
                    v198 = v265;
                    if (!v259)
                    {
                      goto LABEL_225;
                    }
                  }

                  else
                  {
                    if (opus_custom_decoder_ctl((a1 + v153), 4028, v189, v190, v191, v192, v193, v194, v259))
                    {
                      return 4294967293;
                    }

                    if (opus_custom_decoder_ctl((a1 + v153), 10010, v216, v217, v218, v219, v220, v221, 0))
                    {
                      return 4294967293;
                    }

                    v222 = v264;
                    celt_decode_with_ec((a1 + v153), &v269[v268], v260, v264, v265, 0, 0);
                    if (opus_custom_decoder_ctl((a1 + v153), 4031, v223, v224, v225, v226, v227, v228, &v273))
                    {
                      return 4294967293;
                    }

                    smooth_fade((v10 + 4 * a1[2] * (v18 - v8)), (v222 + 4 * a1[2] * v8), v10 + 4 * a1[2] * (v18 - v8), v8, a1[2], v195, a1[3]);
                    v197 = v267;
                    v196 = v268;
                    v198 = v265;
                    if (!v259)
                    {
                      goto LABEL_225;
                    }
                  }

                  if (a1[15] != 1000 || a1[17])
                  {
                    v199 = a1[2];
                    v200 = v264;
                    if (v8 >= 1 && v199 >= 1)
                    {
                      v201 = 0;
                      v203 = v8 > 7 && v199 == 1;
                      v204 = v10 + 2;
                      v205 = v264 + 2;
                      v206 = 4 * v199;
                      v207 = v264;
                      v208 = v10;
                      do
                      {
                        if (v203)
                        {
                          v209 = v8 & 0x7FFFFFF8;
                          v210 = v205;
                          v211 = v204;
                          do
                          {
                            v212 = *v210->f32;
                            *v211[-2].f32 = *v210[-2].f32;
                            *v211->f32 = v212;
                            v211 += 4;
                            v210 += 4;
                            v209 -= 8;
                          }

                          while (v209);
                          v213 = v8 & 0x7FFFFFF8;
                          if (v213 == v8)
                          {
                            goto LABEL_209;
                          }
                        }

                        else
                        {
                          v213 = 0;
                        }

                        v214 = v8 - v213;
                        v215 = v206 * v213;
                        do
                        {
                          *(v208->i32 + v215) = *(v207->i32 + v215);
                          v215 += v206;
                          --v214;
                        }

                        while (v214);
LABEL_209:
                        ++v201;
                        v204 = (v204 + 4);
                        v205 = (v205 + 4);
                        v208 = (v208 + 4);
                        v207 = (v207 + 4);
                      }

                      while (v201 != v199);
                    }

                    smooth_fade((v200 + 4 * v199 * v8), (v10 + 4 * v199 * v8), v10 + 4 * v199 * v8, v8, v199, v195, a1[3]);
                    v196 = v268;
                  }

LABEL_225:
                  if (v197)
                  {
                    v229 = a1[2];
                    if (v18 >= v198)
                    {
                      v234 = (v229 * v8);
                      v235 = v262;
                      if (v234 >= 1)
                      {
                        v236 = 0;
                        if (v234 < 8)
                        {
                          goto LABEL_234;
                        }

                        if ((v10 - v262) < 0x20)
                        {
                          goto LABEL_234;
                        }

                        v236 = v234 & 0x7FFFFFF8;
                        v237 = (v262 + 16);
                        v238 = v10 + 2;
                        v239 = v236;
                        do
                        {
                          v240 = *v237;
                          *v238[-2].f32 = *(v237 - 1);
                          *v238->f32 = v240;
                          v237 += 2;
                          v238 += 4;
                          v239 -= 8;
                        }

                        while (v239);
                        if (v236 != v234)
                        {
LABEL_234:
                          v241 = v234 - v236;
                          v242 = 4 * v236;
                          v243 = v10 + v236;
                          v244 = &v235[v242];
                          do
                          {
                            v245 = *v244;
                            v244 += 4;
                            *v243++ = v245;
                            --v241;
                          }

                          while (v241);
                        }
                      }

                      v246 = 4 * v234;
                      v230 = a1[3];
                      v231 = &v235[v246];
                      v232 = (v10 + v246);
                      v233 = v10 + v246;
                    }

                    else
                    {
                      v230 = a1[3];
                      v231 = v262;
                      v232 = v10;
                      v233 = v10;
                    }

                    smooth_fade(v231, v232, v233, v8, v229, v195, v230);
                    v196 = v268;
                  }

                  v247 = a1[10];
                  if (!v247)
                  {
                    goto LABEL_247;
                  }

                  v248 = exp((v247 * 0.00064881) * 0.693147181);
                  v196 = v268;
                  v249 = (a1[2] * v18);
                  if (v249 < 1)
                  {
                    goto LABEL_247;
                  }

                  v250 = v248;
                  if (v249 >= 8)
                  {
                    v251 = v249 & 0x7FFFFFF8;
                    v252 = &v10[2];
                    v253 = v251;
                    do
                    {
                      v254 = vmulq_n_f32(*v252, v250);
                      v252[-1] = vmulq_n_f32(v252[-1], v250);
                      *v252 = v254;
                      v252 += 2;
                      v253 -= 8;
                    }

                    while (v253);
                    if (v251 == v249)
                    {
LABEL_247:
                      if (v196 >= 2)
                      {
                        v257 = v273 ^ v277;
                      }

                      else
                      {
                        v257 = 0;
                      }

                      a1[21] = v257;
                      a1[15] = v160;
                      a1[17] = v263 & !v261;
                      if (v161 >= 0)
                      {
                        return v18;
                      }

                      else
                      {
                        return v161;
                      }
                    }
                  }

                  else
                  {
                    v251 = 0;
                  }

                  v255 = v249 - v251;
                  v256 = v10 + v251;
                  do
                  {
                    *v256 = *v256 * v250;
                    ++v256;
                    --v255;
                  }

                  while (v255);
                  goto LABEL_247;
                }

                LOWORD(v272) = -1;
                if (a1[2] * v18 >= 1)
                {
                  bzero(v10, 4 * (a1[2] * v18));
                }

                if (a1[15] != 1001 || v259 && a1[17])
                {
LABEL_164:
                  v161 = 0;
                  goto LABEL_175;
                }

                if (!opus_custom_decoder_ctl((a1 + v153), 10010, v154, v155, v156, v157, v158, v159, 0))
                {
                  celt_decode_with_ec((a1 + v153), &v272, 2, v10, v8, 0, 0);
                  goto LABEL_164;
                }
              }

              return 4294967293;
            }
          }

          else
          {
            MEMORY[0x28223BE20](v137, v138, v139);
            v264 = v258;
          }

          LODWORD(v259) = 0;
          goto LABEL_155;
        }

LABEL_65:
        v268 = v50;
        v58 = v48;
        bzero(v55, 0x10C0uLL);
        v55[594] = 1;
        *v55 = 0x10000;
        v55[1048] = 0;
        v59 = v55[585];
        if (v59 < 1)
        {
          goto LABEL_84;
        }

        v60 = 0x7FFF / (v59 + 1);
        if (v59 < 4)
        {
          v61 = 0;
          v62 = 0;
          goto LABEL_82;
        }

        v74 = vdupq_n_s32(v60);
        if (v59 >= 0x10)
        {
          v61 = v59 & 0x7FFFFFF0;
          v76 = vmulq_s32(v74, xmmword_273B92360);
          v77 = vmulq_s32(v74, xmmword_273B90830);
          v78 = vdupq_n_s32(8 * v60);
          v75 = v60 * (v59 & 0x7FFFFFF0);
          v79 = (a1 + v13 + 4092);
          v80 = v61;
          do
          {
            v81 = vaddq_s32(v76, v78);
            v82 = vaddq_s32(v77, v78);
            v79[-1] = vuzp1q_s16(vaddq_s32(v77, v74), vaddq_s32(v76, v74));
            *v79 = vuzp1q_s16(vaddq_s32(v82, v74), vaddq_s32(v81, v74));
            v77 = vaddq_s32(v82, v78);
            v76 = vaddq_s32(v81, v78);
            v79 += 2;
            v80 -= 16;
          }

          while (v80);
          if (v61 == v59)
          {
            goto LABEL_84;
          }

          if ((v59 & 0xC) == 0)
          {
            v62 = v60 * v61;
LABEL_82:
            v88 = v59 - v61;
            v89 = (a1 + 2 * v61 + v13 + 4076);
            v90 = v62 + v60;
            do
            {
              *v89++ = v90;
              v90 += v60;
              --v88;
            }

            while (v88);
            goto LABEL_84;
          }
        }

        else
        {
          v75 = 0;
          v61 = 0;
        }

        v83 = v61;
        v61 = v59 & 0x7FFFFFFC;
        v62 = v60 * (v59 & 0x7FFFFFFC);
        v84 = vmlaq_s32(vdupq_n_s32(v75), v74, xmmword_273B90830);
        v85 = vdupq_n_s32(4 * v60);
        v86 = (a1 + 2 * v83 + v13 + 4076);
        v87 = v83 - v61;
        do
        {
          *v86++ = vmovn_s32(vaddq_s32(v84, v74));
          v84 = vaddq_s32(v84, v85);
          v87 += 4;
        }

        while (v87);
        if (v61 != v59)
        {
          goto LABEL_82;
        }

LABEL_84:
        *(v55 + 1043) = 0x30788000000000;
        v55[1049] = v55[582] << 7;
        *(v55 + 1067) = 0x1000000010000;
        *(v55 + 535) = 0x1400000002;
        bzero(v55 + 1072, 0x10C0uLL);
        v55[1666] = 1;
        v55[1072] = 0x10000;
        v55[2120] = 0;
        v91 = v55[1657];
        v48 = v58;
        v47 = v269;
        v50 = v268;
        v49 = v264;
        if (v91 < 1)
        {
LABEL_100:
          v55[2115] = 0;
          v55[2116] = 3176576;
          v55[2121] = v55[1654] << 7;
          *(v55 + 2139) = 0x1000000010000;
          *(v55 + 1071) = 0x1400000002;
          *(v55 + 1072) = 0;
          v55[2146] = 0;
          v55[2149] = 0;
          v51 = v263;
          goto LABEL_101;
        }

        v92 = 0x7FFF / (v91 + 1);
        if (v91 < 4)
        {
          v93 = 0;
          v94 = 0;
          goto LABEL_98;
        }

        v52 = vdupq_n_s32(v92);
        if (v91 >= 0x10)
        {
          v93 = v91 & 0x7FFFFFF0;
          v96 = vmulq_s32(v52, xmmword_273B92360);
          v53 = vdupq_n_s32(8 * v92);
          v97 = vmulq_s32(v52, xmmword_273B90830);
          v95 = v92 * (v91 & 0x7FFFFFF0);
          v98 = (a1 + v13 + 8380);
          v99 = v93;
          do
          {
            v100 = vaddq_s32(v96, v53);
            v101 = vaddq_s32(v97, v53);
            v98[-1] = vuzp1q_s16(vaddq_s32(v97, v52), vaddq_s32(v96, v52));
            *v98 = vuzp1q_s16(vaddq_s32(v101, v52), vaddq_s32(v100, v52));
            v97 = vaddq_s32(v101, v53);
            v96 = vaddq_s32(v100, v53);
            v98 += 2;
            v99 -= 16;
          }

          while (v99);
          if (v93 == v91)
          {
            goto LABEL_100;
          }

          if ((v91 & 0xC) == 0)
          {
            v94 = v92 * v93;
LABEL_98:
            v106 = v91 - v93;
            v107 = (a1 + 2 * v93 + v13 + 8364);
            v108 = v94 + v92;
            do
            {
              *v107++ = v108;
              v108 += v92;
              --v106;
            }

            while (v106);
            goto LABEL_100;
          }
        }

        else
        {
          v95 = 0;
          v93 = 0;
        }

        v102 = v93;
        v93 = v91 & 0x7FFFFFFC;
        v94 = v92 * (v91 & 0x7FFFFFFC);
        v103 = vdupq_n_s32(4 * v92);
        v53 = vmlaq_s32(vdupq_n_s32(v95), v52, xmmword_273B90830);
        v104 = (a1 + 2 * v102 + v13 + 8364);
        v105 = v102 - v93;
        do
        {
          *v104++ = vmovn_s32(vaddq_s32(v53, v52));
          v53 = vaddq_s32(v53, v103);
          v105 += 4;
        }

        while (v105);
        if (v93 == v91)
        {
          goto LABEL_100;
        }

        goto LABEL_98;
      }
    }

    MEMORY[0x28223BE20](result, a2, a3);
    v266 = v258;
    v262 = 0;
    v38 = 0;
    v39 = 0;
    v267 = 0;
    goto LABEL_45;
  }

  v25 = result;
  v26 = result;
  while (1)
  {
    result = opus_decode_frame(a1, 0, 0);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v10 = (v10 + 4 * a1[2] * result);
    v27 = __OFSUB__(v26, result);
    v26 -= result;
    if ((v26 < 0) ^ v27 | (v26 == 0))
    {
      return v25;
    }
  }

  return result;
}