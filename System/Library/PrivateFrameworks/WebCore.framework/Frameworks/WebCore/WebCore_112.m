void pitch_search(float32x4_t *a1, float *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a3;
  v7 = a2;
  v120[1] = *MEMORY[0x277D85DE8];
  v9 = (a3 >> 2);
  MEMORY[0x28223BE20](a1, a2, a3);
  v13 = MEMORY[0x28223BE20](v120 - v10, v11, v12);
  v15 = (v120 - v14);
  v17 = (v16 >> 1);
  v20 = MEMORY[0x28223BE20](v13, v18, v19);
  v25 = (v120 - v24);
  if (v9 >= 1)
  {
    if (v9 > 8)
    {
      v27 = v9 & 7;
      if ((v9 & 7) == 0)
      {
        v27 = 8;
      }

      v26 = v9 - v27;
      f32 = a1[2].f32;
      v29 = (v20 + 4);
      v30 = v26;
      do
      {
        v31 = f32 - 8;
        v23 = vld2q_f32(v31);
        v32 = vld2q_f32(f32);
        *(v29 - 1) = v23;
        *v29 = v32;
        f32 += 16;
        v29 += 2;
        v30 -= 8;
      }

      while (v30);
    }

    else
    {
      v26 = 0;
    }

    v33 = v9 - v26;
    v34 = &v20[v26];
    v35 = a1 + 2 * v26;
    do
    {
      v36 = *v35;
      v35 += 2;
      LODWORD(v23) = v36;
      *v34++ = v36;
      --v33;
    }

    while (v33);
  }

  if (v22 >= 1)
  {
    if (v22 > 8)
    {
      v38 = v22 & 7;
      if ((v22 & 7) == 0)
      {
        v38 = 8;
      }

      v37 = v22 - v38;
      v39 = v7 + 8;
      v40 = &v15[1];
      v41 = v37;
      do
      {
        v42 = v39 - 8;
        v23 = vld2q_f32(v42);
        v43 = vld2q_f32(v39);
        *(v40 - 1) = v23;
        *v40 = v43;
        v39 += 16;
        v40 += 2;
        v41 -= 8;
      }

      while (v41);
    }

    else
    {
      v37 = 0;
    }

    v44 = v22 - v37;
    v45 = &v15->i32[v37];
    v46 = &v7[2 * v37];
    do
    {
      v47 = *v46;
      v46 += 2;
      LODWORD(v23) = v47;
      *v45++ = v47;
      --v44;
    }

    while (v44);
  }

  v48 = (v21 >> 2);
  celt_pitch_xcorr_c(v20, v15, v25, v9, v48, v23);
  if (v9 < 1)
  {
    v50 = 1.0;
    goto LABEL_28;
  }

  if (v9 <= 7)
  {
    v49 = 0;
    v50 = 1.0;
LABEL_26:
    v55 = v9 - v49;
    v56 = &v15->f32[v49];
    do
    {
      v57 = *v56++;
      v50 = v50 + (v57 * v57);
      --v55;
    }

    while (v55);
    goto LABEL_28;
  }

  v49 = v9 & 0x7FFFFFF8;
  v51 = v15 + 1;
  v50 = 1.0;
  v52 = v49;
  do
  {
    v53 = vmulq_f32(v51[-1], v51[-1]);
    v54 = vmulq_f32(*v51, *v51);
    v50 = (((((((v50 + v53.f32[0]) + v53.f32[1]) + v53.f32[2]) + v53.f32[3]) + v54.f32[0]) + v54.f32[1]) + v54.f32[2]) + v54.f32[3];
    v51 += 2;
    v52 -= 8;
  }

  while (v52);
  if (v49 != v9)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v48 < 1)
  {
    v72 = 0;
    v73 = 2;
    v74 = (v6 >> 1);
    if (v17 < 1)
    {
      goto LABEL_73;
    }

    goto LABEL_52;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = -1.0;
  v62 = 0.0;
  v63 = 1;
  v64 = 0.0;
  v65 = -1.0;
  do
  {
    v68 = v25->n128_f32[v60];
    v70 = v68 <= 0.0;
    v69 = (v68 * 1.0e-12) * (v68 * 1.0e-12);
    v70 = v70 || (v64 * v69) <= (v65 * v50);
    if (!v70)
    {
      v71 = (v62 * v69) <= (v61 * v50);
      v63 = (v62 * v69) <= (v61 * v50) ? v60 : v59;
      if ((v62 * v69) <= (v61 * v50))
      {
        v65 = v69;
      }

      else
      {
        v58 = v60;
        v59 = v60;
        v65 = v61;
      }

      if ((v62 * v69) <= (v61 * v50))
      {
        v64 = v50;
      }

      else
      {
        v61 = v69;
        v64 = v62;
      }

      if (!v71)
      {
        v62 = v50;
      }
    }

    v66 = v15->f32[v9];
    v67 = v15->f32[0];
    v15 = (v15 + 4);
    v50 = v50 + ((v66 * v66) - (v67 * v67));
    if (v50 < 1.0)
    {
      v50 = 1.0;
    }

    ++v60;
    --v48;
  }

  while (v48);
  v72 = 2 * v58;
  v73 = 2 * v63;
  v74 = (v6 >> 1);
  if (v17 >= 1)
  {
LABEL_52:
    v75 = 0;
    v76 = (v7 + 4);
    v77 = v7;
    do
    {
      v25->n128_u32[v75] = 0;
      v79 = v75 - v72;
      if (v75 - v72 < 0)
      {
        v79 = v72 - v75;
      }

      if (v79 >= 3)
      {
        v80 = v75 - v73;
        if (v75 - v73 < 0)
        {
          v80 = v73 - v75;
        }

        if (v80 > 2)
        {
          goto LABEL_57;
        }
      }

      if (v74 < 1)
      {
        v78 = 0.0;
      }

      else
      {
        if (v74 >= 8)
        {
          v78 = 0.0;
          v82 = v74 & 0x7FFFFFF8;
          v83 = v76;
          v84 = a1 + 1;
          do
          {
            v85 = vmulq_f32(v84[-1], v83[-1]);
            v86 = vmulq_f32(*v84, *v83);
            v78 = (((((((v78 + v85.f32[0]) + v85.f32[1]) + v85.f32[2]) + v85.f32[3]) + v86.f32[0]) + v86.f32[1]) + v86.f32[2]) + v86.f32[3];
            v84 += 2;
            v83 += 2;
            v82 -= 8;
          }

          while (v82);
          v81 = v74 & 0x7FFFFFF8;
          if (v81 == v74)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v81 = 0;
          v78 = 0.0;
        }

        v87 = v74 - v81;
        v88 = v81;
        v89 = &v77[v81];
        v90 = &a1->f32[v88];
        do
        {
          v91 = *v90++;
          v92 = v91;
          v93 = *v89++;
          v78 = v78 + (v92 * v93);
          --v87;
        }

        while (v87);
      }

LABEL_54:
      if (v78 < -1.0)
      {
        v78 = -1.0;
      }

      v25->n128_f32[v75] = v78;
LABEL_57:
      ++v75;
      v76 = (v76 + 4);
      ++v77;
    }

    while (v75 != v17);
  }

LABEL_73:
  if (v74 < 1)
  {
    v95 = 1.0;
    goto LABEL_82;
  }

  if (v74 <= 7)
  {
    v94 = 0;
    v95 = 1.0;
LABEL_80:
    v100 = v74 - v94;
    v101 = &v7[v94];
    do
    {
      v102 = *v101++;
      v95 = v95 + (v102 * v102);
      --v100;
    }

    while (v100);
    goto LABEL_82;
  }

  v94 = v74 & 0x7FFFFFF8;
  v96 = (v7 + 4);
  v95 = 1.0;
  v97 = v94;
  do
  {
    v98 = vmulq_f32(v96[-1], v96[-1]);
    v99 = vmulq_f32(*v96, *v96);
    v95 = (((((((v95 + v98.f32[0]) + v98.f32[1]) + v98.f32[2]) + v98.f32[3]) + v99.f32[0]) + v99.f32[1]) + v99.f32[2]) + v99.f32[3];
    v96 += 2;
    v97 -= 8;
  }

  while (v97);
  if (v94 != v74)
  {
    goto LABEL_80;
  }

LABEL_82:
  if (v17 < 1)
  {
    v103 = 0;
    v116 = 0;
  }

  else
  {
    v103 = 0;
    v104 = 0;
    v105 = -1.0;
    v106 = 0.0;
    v107 = v17;
    v108 = 0.0;
    v109 = -1.0;
    do
    {
      v112 = v25->n128_f32[v104];
      v70 = v112 <= 0.0;
      v113 = (v112 * 1.0e-12) * (v112 * 1.0e-12);
      if (!v70 && (v108 * v113) > (v109 * v95))
      {
        v115 = (v106 * v113) <= (v105 * v95);
        if ((v106 * v113) <= (v105 * v95))
        {
          v109 = v113;
        }

        else
        {
          v103 = v104;
          v109 = v105;
        }

        if ((v106 * v113) <= (v105 * v95))
        {
          v108 = v95;
        }

        else
        {
          v105 = v113;
          v108 = v106;
        }

        if (!v115)
        {
          v106 = v95;
        }
      }

      v110 = v7[v74];
      v111 = *v7++;
      v95 = v95 + ((v110 * v110) - (v111 * v111));
      if (v95 < 1.0)
      {
        v95 = 1.0;
      }

      ++v104;
      --v107;
    }

    while (v107);
    v116 = 0;
    if (v103 >= 1 && v103 < v17 - 1)
    {
      v117 = v25 + v103;
      v118 = *(v117 - 1);
      v119 = v117[1];
      if ((v119 - v118) <= ((*v117 - v118) * 0.7))
      {
        v116 = (v118 - v119) > ((*v117 - v119) * 0.7);
      }

      else
      {
        v116 = -1;
      }
    }
  }

  *a5 = v116 + 2 * v103;
}

uint64_t remove_doubling(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int *a5)
{
  v95 = *MEMORY[0x277D85DE8];
  HIDWORD(v92) = a3;
  v93 = a5;
  result = MEMORY[0x28223BE20](a1, a2, (a2 + (a2 >> 31)) >> 1);
  v16 = (&v92 - v15);
  v17 = 0.0;
  v18 = 0.0;
  v94 = v19;
  v20 = (result + 4 * v19);
  if (v7 < 2)
  {
    goto LABEL_9;
  }

  if (v10 >= 2)
  {
    v22 = &v11->f32[-v12];
    v21 = v10 & 0x3FFFFFFE;
    v23 = &v20->f32[1];
    v24 = v21;
    do
    {
      v25 = *(v23 - 1);
      v26 = *v22;
      v27 = v22[1];
      v22 += 2;
      v18 = (v18 + (v25 * v26)) + (*v23 * v27);
      v17 = (v17 + (v25 * v25)) + (*v23 * *v23);
      v23 += 2;
      v24 -= 2;
    }

    while (v24);
    if (v21 == v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v21 = 0;
  }

  v28 = v10 - v21;
  v29 = (result + 4 * v21 + 4 * v94);
  do
  {
    v17 = v17 + (*v29 * *v29);
    v18 = v18 + (*v29 * v29[-v12]);
    ++v29;
    --v28;
  }

  while (v28);
LABEL_9:
  v30 = v13 >> 1;
  *v16 = v17;
  v31 = v8 + (v8 >> 31);
  if (v6 >= 2)
  {
    v32 = v9 - 1;
    v33 = v16 + 1;
    v34 = &v20[-1].f32[3];
    v35 = v17;
    do
    {
      v35 = (v35 + (*v34 * *v34)) - (v34[v10] * v34[v10]);
      if (v35 >= 0.0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 0.0;
      }

      *v33++ = v36;
      --v34;
      --v32;
    }

    while (v32);
  }

  v37 = v18 / sqrtf((v17 * v16[v12]) + 1.0);
  v38 = 2 * v12;
  LODWORD(v39) = 2 * v12 + 2;
  v40 = 2;
  v41 = 4;
  v42 = v12;
  do
  {
    v43 = (v38 + v40) / (2 * v40);
    if (v43 < v30)
    {
      break;
    }

    if (v40 == 2)
    {
      if (v43 + v12 <= v94)
      {
        v44 = v43 + v12;
      }

      else
      {
        v44 = v12;
      }

      v39 = v39;
      v45 = 0.0;
      if (v7 < 2)
      {
        goto LABEL_33;
      }

LABEL_25:
      if (v10 < 8)
      {
        v46 = 0;
        v47 = 0.0;
        goto LABEL_30;
      }

      v48 = v20 + 1;
      v49 = v10 & 0x3FFFFFF8;
      v47 = 0.0;
      do
      {
        v50 = v48[-1];
        v51 = vmulq_f32(v50, *(v48 - 4 * (v39 / v41) - 16));
        v52 = vmulq_f32(*v48, *(v48 - 4 * (v39 / v41)));
        v53 = vmulq_f32(v50, *(v48 - 4 * v44 - 16));
        v54 = vmulq_f32(*v48, *(v48 - 4 * v44));
        v45 = (((((((v45 + v53.f32[0]) + v53.f32[1]) + v53.f32[2]) + v53.f32[3]) + v54.f32[0]) + v54.f32[1]) + v54.f32[2]) + v54.f32[3];
        v47 = (((((((v47 + v51.f32[0]) + v51.f32[1]) + v51.f32[2]) + v51.f32[3]) + v52.f32[0]) + v52.f32[1]) + v52.f32[2]) + v52.f32[3];
        v48 += 2;
        v49 -= 8;
      }

      while (v49);
      v46 = v10 & 0x3FFFFFF8;
      if (v46 != v10)
      {
LABEL_30:
        v55 = v10 - v46;
        v56 = &v20->f32[v46];
        do
        {
          v47 = v47 + (*v56 * v56[-(v39 / v41)]);
          v45 = v45 + (*v56 * v56[-v44]);
          ++v56;
          --v55;
        }

        while (v55);
      }

      v45 = (v47 + v45) * 0.5;
      goto LABEL_33;
    }

    v44 = (v40 + second_check[v40] * v38) / (2 * v40);
    v39 = v39;
    v45 = 0.0;
    if (v7 >= 2)
    {
      goto LABEL_25;
    }

LABEL_33:
    v57 = v45 / sqrtf((v17 * ((v16[v43] + v16[v44]) * 0.5)) + 1.0);
    v58 = v43 - (v31 >> 1);
    if (v58 < 0)
    {
      v58 = (v31 >> 1) - v43;
    }

    if (v12 <= 5 * v40 * v40)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = v14 * 0.5;
    }

    if (v58 != 2)
    {
      v59 = 0.0;
    }

    if (v58 < 2)
    {
      v59 = v14;
    }

    v60 = -v59;
    v61 = v60 + (v37 * 0.7);
    if (v61 < 0.3)
    {
      v61 = 0.3;
    }

    v62 = v60 + (v37 * 0.85);
    if (v62 < 0.4)
    {
      v62 = 0.4;
    }

    if (v43 >= 3 * v30)
    {
      v62 = v61;
    }

    if (v57 > v62)
    {
      v42 = (v38 + v40) / (2 * v40);
    }

    ++v40;
    LODWORD(v39) = v39 + 1;
    v41 += 2;
  }

  while (v40 != 16);
  v63 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  if (v7 >= 2)
  {
    v66 = v42 - 1;
    if (v10 < 8)
    {
      v67 = 0;
      goto LABEL_56;
    }

    v67 = v10 & 0x3FFFFFF8;
    v68 = v67;
    v69 = v11;
    do
    {
      v70 = vmulq_f32(*v69, *(v69 - 4 * v66));
      v71 = vmulq_f32(v69[1], *(v69 - 4 * v66 + 16));
      v63 = (((((((v63 + v70.f32[0]) + v70.f32[1]) + v70.f32[2]) + v70.f32[3]) + v71.f32[0]) + v71.f32[1]) + v71.f32[2]) + v71.f32[3];
      v69 += 2;
      v68 -= 8;
    }

    while (v68);
    if (v67 != v10)
    {
LABEL_56:
      v72 = v10 - v67;
      v73 = -1 * v66;
      v74 = (result + 4 * v67 + 4 * v94);
      do
      {
        v63 = v63 + (*v74 * v74[v73]);
        ++v74;
        --v72;
      }

      while (v72);
    }

    if (v10 < 8)
    {
      v75 = 0;
      v64 = 0.0;
      goto LABEL_63;
    }

    v75 = v10 & 0x3FFFFFF8;
    v64 = 0.0;
    v76 = v75;
    v77 = v11;
    do
    {
      v78 = vmulq_f32(*v77, *(v77 - 4 * v42));
      v79 = vmulq_f32(v77[1], *(v77 - 4 * v42 + 16));
      v64 = (((((((v64 + v78.f32[0]) + v78.f32[1]) + v78.f32[2]) + v78.f32[3]) + v79.f32[0]) + v79.f32[1]) + v79.f32[2]) + v79.f32[3];
      v77 += 2;
      v76 -= 8;
    }

    while (v76);
    if (v75 != v10)
    {
LABEL_63:
      v80 = v10 - v75;
      v81 = (result + 4 * v75 + 4 * v94);
      do
      {
        v64 = v64 + (*v81 * v81[-v42]);
        ++v81;
        --v80;
      }

      while (v80);
    }

    v82 = v42 + 1;
    if (v10 < 8)
    {
      v83 = 0;
      v65 = 0.0;
      goto LABEL_70;
    }

    v83 = v10 & 0x3FFFFFF8;
    v65 = 0.0;
    v84 = v83;
    do
    {
      v85 = vmulq_f32(*v11, *(v11 - 4 * v82));
      v86 = vmulq_f32(v11[1], *(v11 - 4 * v82 + 16));
      v65 = (((((((v65 + v85.f32[0]) + v85.f32[1]) + v85.f32[2]) + v85.f32[3]) + v86.f32[0]) + v86.f32[1]) + v86.f32[2]) + v86.f32[3];
      v11 += 2;
      v84 -= 8;
    }

    while (v84);
    if (v83 != v10)
    {
LABEL_70:
      v87 = v10 - v83;
      v88 = -1 * v82;
      v89 = (result + 4 * v83 + 4 * v94);
      do
      {
        v65 = v65 + (*v89 * v89[v88]);
        ++v89;
        --v87;
      }

      while (v87);
    }
  }

  if ((v65 - v63) <= ((v64 - v63) * 0.7))
  {
    if ((v63 - v65) <= ((v64 - v65) * 0.7))
    {
      v90 = 0;
    }

    else
    {
      v90 = -1;
    }
  }

  else
  {
    v90 = 1;
  }

  v91 = v90 + 2 * v42;
  if (v91 <= SHIDWORD(v92))
  {
    v91 = HIDWORD(v92);
  }

  *v93 = v91;
  return result;
}

uint64_t silk_pitch_analysis_core_FLP(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3);
  v991 = v12;
  v994 = v13;
  v990 = v14;
  v16 = v15;
  v17 = v11.n128_f32[0];
  v19 = v18;
  v20 = v9;
  v1058 = *MEMORY[0x277D85DE8];
  v21 = 5 * a9 + 20;
  v22 = (v21 * v10);
  v23 = (4 * v21);
  v24 = (8 * v21);
  v988 = v25;
  v986 = v26;
  if (v10 == 16)
  {
    v27 = 16;
    if (v22 >= 1)
    {
      if (v22 > 7)
      {
        v35 = &v1019[2 * v22 + 2704];
        v36 = (v9 + 4 * v22 - 32);
        v11.n128_u64[0] = 0x7F0000007FLL;
        v11.n128_u64[1] = 0x7F0000007FLL;
        v37.i64[0] = 0x7F0000007FLL;
        v37.i64[1] = 0x7F0000007FLL;
        v38.i64[0] = 0x8000800080008000;
        v38.i64[1] = 0x8000800080008000;
        v39 = (16 * v21);
        do
        {
          v40 = *v36;
          v41 = v36[1];
          v36 -= 2;
          v42 = vrev64q_s32(v41);
          v43 = vextq_s8(v42, v42, 8uLL);
          v44 = vrev64q_s32(v40);
          v45 = vextq_s8(v44, v44, 8uLL);
          v46 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL)))));
          v47 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL)))));
          v48 = vuzp1q_s16(vcgtq_s32(v46, v11), vcgtq_s32(v47, v11));
          v49 = vrev64q_s16(vorrq_s8((*&v48 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vbicq_s8(vbslq_s8(vuzp1q_s16(vcgtq_s32(v37, v46), vcgtq_s32(v37, v47)), v38, vuzp1q_s16(v46, v47)), v48)));
          *v35-- = vextq_s8(v49, v49, 8uLL);
          v39 -= 8;
        }

        while (v39);
      }

      else
      {
        v28 = v22 - 1;
        do
        {
          v11.n128_f32[0] = rintf(*(v9 + 4 * v28));
          if (v11.n128_f32[0] >= -32768)
          {
            v29 = v11.n128_f32[0];
          }

          else
          {
            v29 = 0x8000;
          }

          if (v11.n128_f32[0] < 0x8000)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0x7FFF;
          }

          v1020[v28] = v30;
          v31 = v28-- + 1;
        }

        while (v31 > 1);
      }
    }

    v50 = (v22 >> 1);
    if (v50 >= 1)
    {
      v51 = 0;
      v52 = 0;
      v53 = v1021;
      v54 = &v1050;
      do
      {
        v55 = *(v53 - 1) << 10;
        v56 = v55 - v52;
        LODWORD(v55) = v55 + ((0xFFFFFFFF9B81 * v56) >> 16);
        v52 = v55 + v56;
        v57 = *v53 << 10;
        v58 = (9872 * (v57 - v51)) >> 16;
        LODWORD(v55) = v55 + v51 + v58;
        v51 = v57 + v58;
        v59 = ((v55 >> 10) + 1) >> 1;
        if (v59 <= -32768)
        {
          v59 = -32768;
        }

        if (v59 >= 0x7FFF)
        {
          LOWORD(v59) = 0x7FFF;
        }

        *v54++ = v59;
        v53 += 2;
        --v50;
      }

      while (v50);
      v1047.n128_u32[0] = v52;
      v1047.n128_u32[1] = v57 + v58;
    }

    if (a9 >= -3)
    {
      v60 = v24 - (v24 != 0) + 1;
      if (v60 < 8)
      {
        v61 = (8 * v21);
        goto LABEL_78;
      }

      if (v60 >= 0x10)
      {
        v71 = v60 & 0xFFFFFFFFFFFFFFF0;
        v123 = &v1049[v24 + 152];
        v124 = &v1054[4 * v24 + 288];
        v125 = v60 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v126 = vrev64q_s16(*v123);
          v127 = vextq_s8(v126, v126, 8uLL);
          v128 = vrev64q_s16(v123[-1]);
          v129 = vextq_s8(v128, v128, 8uLL);
          v130 = vcvtq_f32_s32(vmovl_high_s16(v127));
          v131 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v127.i8)));
          v132 = vrev64q_s32(v130);
          *v124 = vextq_s8(v132, v132, 8uLL);
          v124[1] = vextq_s8(v131, v131, 8uLL);
          v133 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v129.i8)));
          v11 = vextq_s8(v133, v133, 8uLL);
          v134 = vrev64q_s32(vcvtq_f32_s32(vmovl_high_s16(v129)));
          v124[-2] = vextq_s8(v134, v134, 8uLL);
          v124[-1] = v11;
          v123 -= 2;
          v124 -= 4;
          v125 -= 16;
        }

        while (v125);
        if (v60 == v71)
        {
          goto LABEL_94;
        }

        if ((v60 & 8) == 0)
        {
          v61 = v24 - v71;
LABEL_78:
          v135 = v61 - 1;
          do
          {
            v11.n128_u16[0] = *&v1051[2 * v135 - 2];
            v11.n128_u64[0] = vmovl_s16(v11.n128_u64[0]).u64[0];
            v11.n128_f32[0] = v11.n128_i32[0];
            v1055[v135] = v11.n128_u32[0];
            v136 = v135-- + 1;
          }

          while (v136 > 1);
          goto LABEL_94;
        }
      }

      else
      {
        v71 = 0;
      }

      v61 = v24 - (v60 & 0xFFFFFFFFFFFFFFF8);
      v72 = &v1055[v24 - v71 - 8];
      v73 = &v1051[2 * v24 - 18 + -2 * v71];
      v74 = v71 - (v60 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v75 = *v73--;
        v76 = vrev64q_s16(v75);
        v77 = vextq_s8(v76, v76, 8uLL);
        v78 = vcvtq_f32_s32(vmovl_high_s16(v77));
        v79 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v77.i8)));
        v11 = vextq_s8(v79, v79, 8uLL);
        v80 = vrev64q_s32(v78);
        *v72 = vextq_s8(v80, v80, 8uLL);
        v72[1] = v11;
        v72 -= 2;
        v74 += 8;
      }

      while (v74);
      if (v60 != (v60 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_78;
      }
    }

    goto LABEL_94;
  }

  v27 = v10;
  if (v10 == 12)
  {
    if (v22 < 1)
    {
      goto LABEL_58;
    }

    if (v22 >= 8)
    {
      v32 = (v21 * v10) & 4;
      v81 = &v1019[2 * v22 + 2704];
      v82 = (v9 + 4 * v22 - 32);
      v83.i64[0] = 0x7F0000007FLL;
      v83.i64[1] = 0x7F0000007FLL;
      v84.i64[0] = 0x7F0000007FLL;
      v84.i64[1] = 0x7F0000007FLL;
      v85.i64[0] = 0x8000800080008000;
      v85.i64[1] = 0x8000800080008000;
      v86 = v22 & 0x7FFFFFF8;
      do
      {
        v87 = *v82;
        v88 = v82[1];
        v82 -= 2;
        v89 = vrev64q_s32(v88);
        v90 = vextq_s8(v89, v89, 8uLL);
        v91 = vrev64q_s32(v87);
        v92 = vextq_s8(v91, v91, 8uLL);
        v93 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v90.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v90, v90, 8uLL)))));
        v94 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v92.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v92, v92, 8uLL)))));
        v95 = vuzp1q_s16(vcgtq_s32(v93, v83), vcgtq_s32(v94, v83));
        v96 = vrev64q_s16(vorrq_s8((*&v95 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vbicq_s8(vbslq_s8(vuzp1q_s16(vcgtq_s32(v84, v93), vcgtq_s32(v84, v94)), v85, vuzp1q_s16(v93, v94)), v95)));
        *v81-- = vextq_s8(v96, v96, 8uLL);
        v86 -= 8;
      }

      while (v86);
      if ((v22 & 0x7FFFFFF8) == v22)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v32 = (12 * v21);
    }

    v97 = v32 - 1;
    do
    {
      v98 = rintf(*(v9 + 4 * v97));
      if (v98 >= -32768)
      {
        v99 = v98;
      }

      else
      {
        v99 = 0x8000;
      }

      if (v98 < 0x8000)
      {
        v100 = v99;
      }

      else
      {
        v100 = 0x7FFF;
      }

      v1020[v97] = v100;
      v101 = v97-- + 1;
    }

    while (v101 > 1);
LABEL_58:
    v1047 = 0uLL;
    v1048 = 0;
    v11 = silk_resampler_down2_3(&v1047, &v1050, v1020, v22);
    if (a9 < -3)
    {
      goto LABEL_94;
    }

    v102 = v24 - (v24 != 0) + 1;
    if (v102 < 8)
    {
      v103 = (8 * v21);
      goto LABEL_92;
    }

    if (v102 >= 0x10)
    {
      v137 = v102 & 0xFFFFFFFFFFFFFFF0;
      v147 = &v1049[v24 + 152];
      v148 = &v1054[4 * v24 + 288];
      v149 = v102 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v150 = vrev64q_s16(*v147);
        v151 = vextq_s8(v150, v150, 8uLL);
        v152 = vrev64q_s16(v147[-1]);
        v153 = vextq_s8(v152, v152, 8uLL);
        v154 = vcvtq_f32_s32(vmovl_high_s16(v151));
        v155 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v151.i8)));
        v156 = vrev64q_s32(v154);
        *v148 = vextq_s8(v156, v156, 8uLL);
        v148[1] = vextq_s8(v155, v155, 8uLL);
        v157 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v153.i8)));
        v11 = vextq_s8(v157, v157, 8uLL);
        v158 = vrev64q_s32(vcvtq_f32_s32(vmovl_high_s16(v153)));
        v148[-2] = vextq_s8(v158, v158, 8uLL);
        v148[-1] = v11;
        v147 -= 2;
        v148 -= 4;
        v149 -= 16;
      }

      while (v149);
      if (v102 == v137)
      {
        goto LABEL_94;
      }

      if ((v102 & 8) == 0)
      {
        v103 = v24 - v137;
        goto LABEL_92;
      }
    }

    else
    {
      v137 = 0;
    }

    v103 = v24 - (v102 & 0xFFFFFFFFFFFFFFF8);
    v138 = &v1055[v24 - v137 - 8];
    v139 = &v1051[2 * v24 - 18 + -2 * v137];
    v140 = v137 - (v102 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v141 = *v139--;
      v142 = vrev64q_s16(v141);
      v143 = vextq_s8(v142, v142, 8uLL);
      v144 = vcvtq_f32_s32(vmovl_high_s16(v143));
      v145 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v143.i8)));
      v11 = vextq_s8(v145, v145, 8uLL);
      v146 = vrev64q_s32(v144);
      *v138 = vextq_s8(v146, v146, 8uLL);
      v138[1] = v11;
      v138 -= 2;
      v140 += 8;
    }

    while (v140);
    if (v102 == (v102 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_94;
    }

LABEL_92:
    v159 = v103 - 1;
    do
    {
      v11.n128_u16[0] = *&v1051[2 * v159 - 2];
      v11.n128_u64[0] = vmovl_s16(v11.n128_u64[0]).u64[0];
      v11.n128_f32[0] = v11.n128_i32[0];
      v1055[v159] = v11.n128_u32[0];
      v160 = v159-- + 1;
    }

    while (v160 > 1);
    goto LABEL_94;
  }

  if (a9 <= -4)
  {
    v1047.n128_u64[0] = 0;
    if (v21 >= 1)
    {
      v62 = 0;
      v63 = 0;
      v64 = v1051;
      v65 = v1049;
      do
      {
        v66 = *(v64 - 1) << 10;
        v67 = v66 - v63;
        LODWORD(v66) = v66 + ((0xFFFFFFFF9B81 * v67) >> 16);
        v63 = v66 + v67;
        v68 = *v64 << 10;
        v69 = (9872 * (v68 - v62)) >> 16;
        LODWORD(v66) = v66 + v62 + v69;
        v62 = v68 + v69;
        v70 = ((v66 >> 10) + 1) >> 1;
        if (v70 <= -32768)
        {
          v70 = -32768;
        }

        if (v70 >= 0x7FFF)
        {
          LOWORD(v70) = 0x7FFF;
        }

        *v65++ = v70;
        v64 += 2;
        --v23;
      }

      while (v23);
      v1047.n128_u32[0] = v63;
      v1047.n128_u32[1] = v68 + v69;
    }

    goto LABEL_129;
  }

  v33 = v24 - (v24 != 0) + 1;
  if (v33 >= 8)
  {
    v34 = v24 - (v33 & 0xFFFFFFFFFFFFFFF8);
    v104 = &v1049[v24 + 152];
    v105 = (v9 + 4 * v24 - 32);
    v11.n128_u64[0] = 0x7F0000007FLL;
    v11.n128_u64[1] = 0x7F0000007FLL;
    v106.i64[0] = 0x7F0000007FLL;
    v106.i64[1] = 0x7F0000007FLL;
    v107.i64[0] = 0x8000800080008000;
    v107.i64[1] = 0x8000800080008000;
    v108 = v33 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v109 = *v105;
      v110 = v105[1];
      v105 -= 2;
      v111 = vrev64q_s32(v110);
      v112 = vextq_s8(v111, v111, 8uLL);
      v113 = vrev64q_s32(v109);
      v114 = vextq_s8(v113, v113, 8uLL);
      v115 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v112.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v112, v112, 8uLL)))));
      v116 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v114.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v114, v114, 8uLL)))));
      v117 = vuzp1q_s16(vcgtq_s32(v115, v11), vcgtq_s32(v116, v11));
      v118 = vrev64q_s16(vorrq_s8((*&v117 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vbicq_s8(vbslq_s8(vuzp1q_s16(vcgtq_s32(v106, v115), vcgtq_s32(v106, v116)), v107, vuzp1q_s16(v115, v116)), v117)));
      *v104-- = vextq_s8(v118, v118, 8uLL);
      v108 -= 8;
    }

    while (v108);
    if (v33 == (v33 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_94;
    }
  }

  else
  {
    v34 = (8 * v21);
  }

  v119 = v34 - 1;
  do
  {
    v11.n128_f32[0] = rintf(*(v9 + 4 * v119));
    if (v11.n128_f32[0] >= -32768)
    {
      v120 = v11.n128_f32[0];
    }

    else
    {
      v120 = 0x8000;
    }

    if (v11.n128_f32[0] < 0x8000)
    {
      v121 = v120;
    }

    else
    {
      v121 = 0x7FFF;
    }

    *&v1051[2 * v119 - 2] = v121;
    v122 = v119-- + 1;
  }

  while (v122 > 1);
LABEL_94:
  v1047.n128_u64[0] = 0;
  if (v21 >= 1)
  {
    v161 = 0;
    v162 = 0;
    v163 = v1051;
    v164 = v1049;
    v165 = (4 * v21);
    do
    {
      v166 = *(v163 - 1) << 10;
      v167 = v166 - v162;
      LODWORD(v166) = v166 + ((0xFFFFFFFF9B81 * v167) >> 16);
      v162 = v166 + v167;
      v168 = *v163 << 10;
      v169 = (9872 * (v168 - v161)) >> 16;
      LODWORD(v166) = v166 + v161 + v169;
      v161 = v168 + v169;
      v170 = ((v166 >> 10) + 1) >> 1;
      if (v170 <= -32768)
      {
        v170 = -32768;
      }

      if (v170 >= 0x7FFF)
      {
        LOWORD(v170) = 0x7FFF;
      }

      *v164++ = v170;
      v163 += 2;
      --v165;
    }

    while (v165);
    v1047.n128_u32[0] = v162;
    v1047.n128_u32[1] = v168 + v169;
  }

  if (a9 >= -3)
  {
    v171 = v23 - (v23 != 0) + 1;
    v172 = (4 * v21);
    if (v171 < 4)
    {
      goto LABEL_115;
    }

    if (v171 >= 0x10)
    {
      v173 = v171 & 0xFFFFFFFFFFFFFFF0;
      v174 = &v1047.n128_i8[2 * v23 + 8];
      v175 = &v1051[4 * v23 + 606];
      v176 = v171 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v177 = vrev64q_s16(*v174);
        v178 = vextq_s8(v177, v177, 8uLL);
        v179 = vrev64q_s16(v174[-1]);
        v180 = vextq_s8(v179, v179, 8uLL);
        v181 = vcvtq_f32_s32(vmovl_high_s16(v178));
        v182 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v178.i8)));
        v183 = vrev64q_s32(v181);
        *v175 = vextq_s8(v183, v183, 8uLL);
        v175[1] = vextq_s8(v182, v182, 8uLL);
        v184 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(*v180.i8)));
        v11 = vextq_s8(v184, v184, 8uLL);
        v185 = vrev64q_s32(vcvtq_f32_s32(vmovl_high_s16(v180)));
        v175[-2] = vextq_s8(v185, v185, 8uLL);
        v175[-1] = v11;
        v174 -= 2;
        v175 -= 4;
        v176 -= 16;
      }

      while (v176);
      if (v171 == v173)
      {
LABEL_117:
        if (v23 >= 2)
        {
          v193 = 2;
        }

        else
        {
          v193 = 4 * v21;
        }

        v194 = 20 * a9 - v193 + 80;
        if (v194 >= 4)
        {
          v195 = v194 & 0xFFFFFFFC;
          v196 = v23 - v195;
          v197 = v23 + 0xFFFFFFFFLL;
          v198 = vdupq_n_s32(0x46FFFE00u);
          v199.i64[0] = 0xC7000000C7000000;
          v199.i64[1] = 0xC7000000C7000000;
          do
          {
            v200 = 4 * v197;
            v201 = vrev64q_s32(vaddq_f32(*&v1051[4 * ((v197 - 1) & 0xFFFFFFFE) + 626], vcvtq_f32_s32(vcvtq_s32_f32(*&v1051[v200 + 626]))));
            v202 = vextq_s8(v201, v201, 8uLL);
            v203 = vcgtq_f32(v202, v198);
            v204 = vcgtq_f32(v199, v202);
            v205 = vrev64q_s32(vbslq_s8(vbicq_s8(v204, v203), v199, vbslq_s8(vbicq_s8(vmvnq_s8(v203), v204), vcvtq_f32_s32(vmovl_s16(vmovn_s32(vcvtq_s32_f32(v202)))), v198)));
            *&v1051[v200 + 626] = vextq_s8(v205, v205, 8uLL);
            v197 -= 4;
            v195 -= 4;
          }

          while (v195);
          LODWORD(v23) = v196;
        }

        v206 = &v1052[(v23 - 2)];
        v207 = v23 + 1;
        v208 = &v1052[(v23 - 1)];
        do
        {
          v209 = *v206 + *v208;
          v210 = 32767.0;
          if (v209 <= 32767.0)
          {
            v210 = -32768.0;
            if (v209 >= -32768.0)
            {
              v210 = v209;
            }
          }

          *v208-- = v210;
          --v206;
          --v207;
        }

        while (v207 > 2);
        goto LABEL_129;
      }

      if ((v171 & 0xC) == 0)
      {
        v172 = v23 - v173;
        goto LABEL_115;
      }
    }

    else
    {
      v173 = 0;
    }

    v172 = v23 - (v171 & 0xFFFFFFFFFFFFFFFCLL);
    v186 = &v1052[v23 - v173 - 4];
    v187 = &v1049[v23 - v173 - 4];
    v188 = v173 - (v171 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v189 = *v187--;
      v190 = vrev64q_s32(vcvtq_f32_s32(vmovl_s16(vrev64_s16(v189))));
      v11 = vextq_s8(v190, v190, 8uLL);
      *v186-- = v11;
      v188 += 4;
    }

    while (v188);
    if (v171 == (v171 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_117;
    }

LABEL_115:
    v191 = v172 - 1;
    do
    {
      v11.n128_u16[0] = v1049[v191];
      v11.n128_u64[0] = vmovl_s16(v11.n128_u64[0]).u64[0];
      v11.n128_f32[0] = v11.n128_i32[0];
      v1052[v191] = v11.n128_u32[0];
      v192 = v191-- + 1;
    }

    while (v192 > 1);
    goto LABEL_117;
  }

LABEL_129:
  v987 = v20;
  v989 = v19;
  __memset_chk();
  if (a9 >> 1 >= 1)
  {
    v212 = 0;
    v213 = v1054;
    v214 = &v1053;
    do
    {
      celt_pitch_xcorr_c(v213->f32, v213 - 18, v1027, 40, 65, v211);
      v215 = 0;
      v217.i32[0] = v213->i32[0];
      v216.i32[0] = v213->i32[1];
      v219.i32[0] = v213->i32[2];
      v218.i32[0] = v213->i32[3];
      v220.i32[0] = v213[1].i32[0];
      v221.i32[0] = v213[1].i32[1];
      v223.i32[0] = v213[1].i32[2];
      v222.i32[0] = v213[1].i32[3];
      v224.i32[0] = v213[4].i32[0];
      v225.i32[0] = v213[4].i32[1];
      v227.i32[0] = v213[4].i32[2];
      v226.i32[0] = v213[4].i32[3];
      v229.i32[0] = v213[5].i32[0];
      v228.i32[0] = v213[5].i32[1];
      v231.i32[0] = v213[5].i32[2];
      v230.i32[0] = v213[5].i32[3];
      v233.i32[0] = v213[8].i32[0];
      v232.i32[0] = v213[8].i32[1];
      v235.i32[0] = v213[8].i32[2];
      v234.i32[0] = v213[8].i32[3];
      v237.i32[0] = v213[9].i32[0];
      v236.i32[0] = v213[9].i32[1];
      v239.i32[0] = v213[9].i32[2];
      v238.i32[0] = v213[9].i32[3];
      v216.i32[1] = v213[-2].i32[1];
      v240 = vcvtq_f64_f32(v216);
      v220.i32[1] = v213[-1].i32[0];
      v221.i32[1] = v213[-1].i32[1];
      v241 = vcvtq_f64_f32(v220);
      v242 = vcvtq_f64_f32(v221);
      v217.i32[1] = v213[-2].i32[0];
      v243 = vcvtq_f64_f32(v217);
      v224.i32[1] = v213[2].i32[0];
      v225.i32[1] = v213[2].i32[1];
      v244 = vcvtq_f64_f32(v224);
      v245 = vcvtq_f64_f32(v225);
      v227.i32[1] = v213[2].i32[2];
      v246 = vcvtq_f64_f32(v227);
      v226.i32[1] = v213[2].i32[3];
      v247 = vcvtq_f64_f32(v226);
      v248 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v245, v245), v244, v244), v246, v246), v247, v247);
      v229.i32[1] = v213[3].i32[0];
      v249 = vcvtq_f64_f32(v229);
      v228.i32[1] = v213[3].i32[1];
      v250 = vcvtq_f64_f32(v228);
      v231.i32[1] = v213[3].i32[2];
      v251 = vcvtq_f64_f32(v231);
      v230.i32[1] = v213[3].i32[3];
      v252 = vcvtq_f64_f32(v230);
      v253 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v250, v250), v249, v249), v251, v251), v252, v252);
      v233.i32[1] = v213[6].i32[0];
      v254 = vcvtq_f64_f32(v233);
      v232.i32[1] = v213[6].i32[1];
      v255 = vcvtq_f64_f32(v232);
      v235.i32[1] = v213[6].i32[2];
      v256 = vcvtq_f64_f32(v235);
      v234.i32[1] = v213[6].i32[3];
      v257 = vcvtq_f64_f32(v234);
      v258 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v255, v255), v254, v254), v256, v256), v257, v257);
      v237.i32[1] = v213[7].i32[0];
      v236.i32[1] = v213[7].i32[1];
      v259 = vcvtq_f64_f32(v237);
      v260 = vcvtq_f64_f32(v236);
      v239.i32[1] = v213[7].i32[2];
      v261 = vcvtq_f64_f32(v239);
      v238.i32[1] = v213[7].i32[3];
      v262 = vcvtq_f64_f32(v238);
      v263 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v260, v260), v259, v259), v261, v261), v262, v262);
      v219.i32[1] = v213[-2].i32[2];
      v264 = vcvtq_f64_f32(v219);
      v218.i32[1] = v213[-2].i32[3];
      v265 = vcvtq_f64_f32(v218);
      v223.i32[1] = v213[-1].i32[2];
      v266 = vcvtq_f64_f32(v223);
      v222.i32[1] = v213[-1].i32[3];
      v267 = vcvtq_f64_f32(v222);
      v268 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v242, v242), v241, v241), v266, v266), v267, v267);
      v269 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v240, v240), v243, v243), v264, v264), v265, v265);
      v211.n128_f64[0] = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v269, v268), vextq_s8(v248, v269, 8uLL)), vextq_s8(v253, v268, 8uLL)), v248), v253), vextq_s8(v258, v248, 8uLL)), vextq_s8(v263, v253, 8uLL)), v258), v263)) + 160000.0;
      *v267.f64 = (*(&v1028 + 1) + *(&v1028 + 1)) / v211.n128_f64[0];
      v1030 = v1030 + *v267.f64;
      v270 = v214;
      v271 = &v1028;
      do
      {
        v272 = *v271--;
        v211.n128_f64[0] = v211.n128_f64[0] + *v270 * *v270 - v270[40] * v270[40];
        v273 = (v272 + v272) / v211.n128_f64[0];
        *&v1031.i32[v215] = *&v1031.i32[v215] + v273;
        ++v215;
        --v270;
      }

      while (v215 != 64);
      v213 += 10;
      ++v212;
      v214 += 40;
    }

    while (v212 != a9 >> 1);
  }

  v274 = vrev64q_s32(v1046);
  v275 = vextq_s8(v274, v274, 8uLL);
  v276 = vrev64q_s32(v1045);
  v277 = vextq_s8(v276, v276, 8uLL);
  v278 = vdupq_n_s32(0x39800000u);
  v279 = vrev64q_s32(vaddq_f32(v275, vmulq_f32(vmulq_f32(v275, xmmword_273BC1160), v278)));
  v280 = vrev64q_s32(vaddq_f32(v277, vmulq_f32(vmulq_f32(v277, xmmword_273BC1170), v278)));
  v1045 = vextq_s8(v280, v280, 8uLL);
  v1046 = vextq_s8(v279, v279, 8uLL);
  v281 = vrev64q_s32(v1044);
  v282 = vextq_s8(v281, v281, 8uLL);
  v283 = vrev64q_s32(v1043);
  v284 = vextq_s8(v283, v283, 8uLL);
  v285 = vrev64q_s32(vaddq_f32(v282, vmulq_f32(vmulq_f32(v282, xmmword_273BC1180), v278)));
  v1044 = vextq_s8(v285, v285, 8uLL);
  v286 = vrev64q_s32(vaddq_f32(v284, vmulq_f32(vmulq_f32(v284, xmmword_273BC1190), v278)));
  v1043 = vextq_s8(v286, v286, 8uLL);
  v287 = vrev64q_s32(v1042);
  v288 = vextq_s8(v287, v287, 8uLL);
  v289 = vrev64q_s32(v1041);
  v290 = vextq_s8(v289, v289, 8uLL);
  v291 = vrev64q_s32(vaddq_f32(v288, vmulq_f32(vmulq_f32(v288, xmmword_273BC11A0), v278)));
  v1042 = vextq_s8(v291, v291, 8uLL);
  v292 = vrev64q_s32(vaddq_f32(v290, vmulq_f32(vmulq_f32(v290, xmmword_273BC11B0), v278)));
  v1041 = vextq_s8(v292, v292, 8uLL);
  v293 = vrev64q_s32(v1040);
  v294 = vextq_s8(v293, v293, 8uLL);
  v295 = vrev64q_s32(v1039);
  v296 = vextq_s8(v295, v295, 8uLL);
  v297 = vrev64q_s32(vaddq_f32(v294, vmulq_f32(vmulq_f32(v294, xmmword_273BC11C0), v278)));
  v1040 = vextq_s8(v297, v297, 8uLL);
  v298 = vrev64q_s32(vaddq_f32(v296, vmulq_f32(vmulq_f32(v296, xmmword_273BC11D0), v278)));
  v1039 = vextq_s8(v298, v298, 8uLL);
  v299 = vrev64q_s32(v1038);
  v300 = vextq_s8(v299, v299, 8uLL);
  v301 = vrev64q_s32(v1037);
  v302 = vextq_s8(v301, v301, 8uLL);
  v303 = vrev64q_s32(vaddq_f32(v300, vmulq_f32(vmulq_f32(v300, xmmword_273BC11E0), v278)));
  v1038 = vextq_s8(v303, v303, 8uLL);
  v304 = vrev64q_s32(vaddq_f32(v302, vmulq_f32(vmulq_f32(v302, xmmword_273BC11F0), v278)));
  v1037 = vextq_s8(v304, v304, 8uLL);
  v305 = vrev64q_s32(v1036);
  v306 = vextq_s8(v305, v305, 8uLL);
  v307 = vrev64q_s32(v1035);
  v308 = vextq_s8(v307, v307, 8uLL);
  v309 = vrev64q_s32(vaddq_f32(v306, vmulq_f32(vmulq_f32(v306, xmmword_273BC1200), v278)));
  v1036 = vextq_s8(v309, v309, 8uLL);
  v310 = vrev64q_s32(vaddq_f32(v308, vmulq_f32(vmulq_f32(v308, xmmword_273BC1210), v278)));
  v1035 = vextq_s8(v310, v310, 8uLL);
  v311 = vrev64q_s32(v1034);
  v312 = vextq_s8(v311, v311, 8uLL);
  v313 = vrev64q_s32(v1033);
  v314 = vextq_s8(v313, v313, 8uLL);
  v315 = vrev64q_s32(vaddq_f32(v312, vmulq_f32(vmulq_f32(v312, xmmword_273BC1220), v278)));
  v1034 = vextq_s8(v315, v315, 8uLL);
  v316 = vrev64q_s32(vaddq_f32(v314, vmulq_f32(vmulq_f32(v314, xmmword_273BC1230), v278)));
  v1033 = vextq_s8(v316, v316, 8uLL);
  v317 = vrev64q_s32(v1032);
  v318 = vextq_s8(v317, v317, 8uLL);
  v319 = vrev64q_s32(v1031);
  v320 = vextq_s8(v319, v319, 8uLL);
  v321 = vrev64q_s32(vaddq_f32(v318, vmulq_f32(vmulq_f32(v318, xmmword_273BC1240), v278)));
  v1032 = vextq_s8(v321, v321, 8uLL);
  v322 = vrev64q_s32(vaddq_f32(v320, vmulq_f32(vmulq_f32(v320, xmmword_273BC1250), v278)));
  v1031 = vextq_s8(v322, v322, 8uLL);
  v1030 = v1030 + ((v1030 * -8.0) * 0.00024414);
  v323 = (2 * v991 + 4);
  silk_insertion_sort_decreasing_FLP(&v1030, v1025, 65, 2 * v991 + 4);
  if (v1030 < 0.2)
  {
    bzero(v989, 4 * a9);
    LOBYTE(v324) = 0;
    *v994 = 0.0;
    *v988 = 0;
    result = 1;
    v326 = v990;
    goto LABEL_323;
  }

  v327 = a9;
  if (v991 >= -1)
  {
    v328 = 0;
    v329 = v1030 * v17;
    while (*(&v1030 + v328) > v329)
    {
      v1025[0].i32[v328] = 2 * v1025[0].i32[v328] + 16;
      if (v323 == ++v328)
      {
        goto LABEL_142;
      }
    }

    LODWORD(v323) = v328;
  }

LABEL_142:
  v1024 = 0;
  memset(&v1023[11], 0, 272);
  if (v323 < 1)
  {
    v331 = 0;
    goto LABEL_152;
  }

  if (v323 == 1)
  {
    v330 = 0;
  }

  else
  {
    v330 = v323 & 0x7FFFFFFE;
    v332 = &v1025[0].i32[1];
    v333 = v330;
    do
    {
      v334 = *v332;
      v1023[*(v332 - 1)] = 1;
      v1023[v334] = 1;
      v332 += 2;
      v333 -= 2;
    }

    while (v333);
    if (v330 == v323)
    {
      goto LABEL_151;
    }
  }

  v335 = v323 - v330;
  v336 = &v1025[0].i32[v330];
  do
  {
    v337 = *v336++;
    v1023[v337] = 1;
    --v335;
  }

  while (v335);
LABEL_151:
  v331 = v1023[145];
LABEL_152:
  v338 = 0;
  v339 = 0;
  v340 = vrev64q_s16(*&v1023[137]);
  v341 = vextq_s8(v340, v340, 8uLL);
  v342 = vrev64q_s16(*&v1023[129]);
  v343 = vextq_s8(v342, v342, 8uLL);
  v344 = vrev64q_s16(vaddq_s16(v341, vextq_s8(vdupq_n_s16(v331), v341, 0xEuLL)));
  *&v1023[139] = vaddq_s16(vextq_s8(v344, v344, 8uLL), *&v1023[139]);
  v345 = vrev64q_s16(vaddq_s16(v343, vextq_s8(v341, v343, 0xEuLL)));
  v346 = vaddq_s16(vextq_s8(v345, v345, 8uLL), *&v1023[131]);
  v347 = vrev64q_s16(*&v1023[121]);
  v348 = vextq_s8(v347, v347, 8uLL);
  v349 = vrev64q_s16(*&v1023[113]);
  v350 = vextq_s8(v349, v349, 8uLL);
  v351 = vextq_s8(v348, v350, 0xEuLL);
  v352 = vaddq_s16(v348, vextq_s8(v343, v348, 0xEuLL));
  v353 = *&v1023[17];
  v1023[18] += v1023[16] + v1023[17];
  v354 = vrev64q_s16(v352);
  *&v1023[131] = v346;
  v355 = vaddq_s16(vextq_s8(v354, v354, 8uLL), *&v1023[123]);
  v356 = vrev64q_s16(vaddq_s16(v350, v351));
  v357 = vrev64q_s16(*&v1023[105]);
  *&v1023[123] = v355;
  v358 = vextq_s8(v357, v357, 8uLL);
  v359 = vrev64q_s16(*&v1023[97]);
  v360 = vextq_s8(v359, v359, 8uLL);
  v1023[17] += v1023[15] + v1023[16];
  v983 = 18 * v27 - 1;
  *&v1023[115] = vaddq_s16(vextq_s8(v356, v356, 8uLL), *&v1023[115]);
  v361 = vrev64q_s16(vaddq_s16(v358, vextq_s8(v350, v358, 0xEuLL)));
  v362 = vrev64q_s16(vaddq_s16(v360, vextq_s8(v358, v360, 0xEuLL)));
  *&v1023[107] = vaddq_s16(vextq_s8(v361, v361, 8uLL), *&v1023[107]);
  v363 = vaddq_s16(vextq_s8(v362, v362, 8uLL), *&v1023[99]);
  v364 = vrev64q_s16(*&v1023[89]);
  v365 = vextq_s8(v364, v364, 8uLL);
  v366 = vrev64q_s16(*&v1023[81]);
  *&v1023[99] = v363;
  v367 = vextq_s8(v366, v366, 8uLL);
  v368 = vextq_s8(v360, v365, 0xEuLL);
  v369 = vextq_s8(v365, v367, 0xEuLL);
  v370 = vrev64q_s16(vaddq_s16(v365, v368));
  *&v1023[91] = vaddq_s16(vextq_s8(v370, v370, 8uLL), *&v1023[91]);
  v371 = vrev64q_s16(vaddq_s16(v367, v369));
  *&v1023[83] = vaddq_s16(vextq_s8(v371, v371, 8uLL), *&v1023[83]);
  v372 = vrev64q_s16(*&v1023[73]);
  v373 = vextq_s8(v372, v372, 8uLL);
  v374 = vrev64q_s16(*&v1023[65]);
  v375 = vextq_s8(v374, v374, 8uLL);
  v376 = vrev64q_s16(vaddq_s16(v373, vextq_s8(v367, v373, 0xEuLL)));
  *&v1023[75] = vaddq_s16(vextq_s8(v376, v376, 8uLL), *&v1023[75]);
  v377 = vrev64q_s16(vaddq_s16(v375, vextq_s8(v373, v375, 0xEuLL)));
  *&v1023[67] = vaddq_s16(vextq_s8(v377, v377, 8uLL), *&v1023[67]);
  v378 = vrev64q_s16(*&v1023[57]);
  v379 = vextq_s8(v378, v378, 8uLL);
  v380 = vrev64q_s16(*&v1023[49]);
  v381 = vextq_s8(v380, v380, 8uLL);
  v382 = vextq_s8(v379, v381, 0xEuLL);
  v383 = vrev64q_s16(vaddq_s16(v379, vextq_s8(v375, v379, 0xEuLL)));
  *&v1023[59] = vaddq_s16(vextq_s8(v383, v383, 8uLL), *&v1023[59]);
  v384 = vrev64q_s16(vaddq_s16(v381, v382));
  *&v1023[51] = vaddq_s16(vextq_s8(v384, v384, 8uLL), *&v1023[51]);
  v385 = vrev64q_s16(*&v1023[41]);
  v386 = vextq_s8(v385, v385, 8uLL);
  v387 = vrev64q_s16(*&v1023[33]);
  v388 = vextq_s8(v387, v387, 8uLL);
  v389 = vextq_s8(v386, v388, 0xEuLL);
  v390 = vrev64q_s16(vaddq_s16(v386, vextq_s8(v381, v386, 0xEuLL)));
  *&v1023[43] = vaddq_s16(vextq_s8(v390, v390, 8uLL), *&v1023[43]);
  v391 = vrev64q_s16(vaddq_s16(v388, v389));
  *&v1023[35] = vaddq_s16(vextq_s8(v391, v391, 8uLL), *&v1023[35]);
  v392 = vrev64q_s16(*&v1023[25]);
  v393 = vextq_s8(v392, v392, 8uLL);
  v394 = vrev64q_s16(v353);
  v395 = vextq_s8(v394, v394, 8uLL);
  v396 = vextq_s8(v388, v393, 0xEuLL);
  v397 = vextq_s8(v393, v395, 0xEuLL);
  v398 = vrev64q_s16(vaddq_s16(v393, v396));
  *&v1023[27] = vaddq_s16(vextq_s8(v398, v398, 8uLL), *&v1023[27]);
  v399 = vrev64q_s16(vaddq_s16(v395, v397));
  *&v1023[19] = vaddq_s16(vextq_s8(v399, v399, 8uLL), *&v1023[19]);
  v1023[16] += v1023[14] + v1023[15];
  do
  {
    if (v1023[v338 + 17] >= 1)
    {
      v1025[0].i32[v339++] = v338 + 16;
    }

    ++v338;
  }

  while (v338 != 128);
  v400 = 0;
  v401 = &v1023[145];
  v402 = vld1q_dup_s16(v401);
  v403 = &v1023[144];
  v404 = vld1q_dup_s16(v403);
  v405 = vrev64q_s16(*&v1023[136]);
  v406 = vextq_s8(v405, v405, 8uLL);
  v407 = vrev64q_s16(*&v1023[128]);
  v408 = vextq_s8(v407, v407, 8uLL);
  v409 = vextq_s8(v404, v406, 0xEuLL);
  v410 = vextq_s8(v406, v408, 0xEuLL);
  v411 = vrev64q_s16(vaddq_s16(vextq_s8(v402, v409, 0xEuLL), vaddq_s16(v409, v406)));
  *&v1023[139] = vaddq_s16(vextq_s8(v411, v411, 8uLL), *&v1023[139]);
  v412 = vrev64q_s16(vaddq_s16(vextq_s8(v409, v410, 0xEuLL), vaddq_s16(v410, v408)));
  *&v1023[131] = vaddq_s16(vextq_s8(v412, v412, 8uLL), *&v1023[131]);
  v413 = vrev64q_s16(*&v1023[120]);
  v414 = vextq_s8(v413, v413, 8uLL);
  v415 = vrev64q_s16(*&v1023[112]);
  v416 = vextq_s8(v415, v415, 8uLL);
  v417 = vextq_s8(v408, v414, 0xEuLL);
  v418 = vextq_s8(v414, v416, 0xEuLL);
  v419 = vrev64q_s16(vaddq_s16(vextq_s8(v410, v417, 0xEuLL), vaddq_s16(v417, v414)));
  *&v1023[123] = vaddq_s16(vextq_s8(v419, v419, 8uLL), *&v1023[123]);
  v420 = vrev64q_s16(vaddq_s16(vextq_s8(v417, v418, 0xEuLL), vaddq_s16(v418, v416)));
  *&v1023[115] = vaddq_s16(vextq_s8(v420, v420, 8uLL), *&v1023[115]);
  v421 = vrev64q_s16(*&v1023[104]);
  v422 = vextq_s8(v421, v421, 8uLL);
  v423 = vrev64q_s16(*&v1023[96]);
  v424 = vextq_s8(v423, v423, 8uLL);
  v425 = vextq_s8(v416, v422, 0xEuLL);
  v426 = vextq_s8(v422, v424, 0xEuLL);
  v427 = vrev64q_s16(vaddq_s16(vextq_s8(v418, v425, 0xEuLL), vaddq_s16(v425, v422)));
  *&v1023[107] = vaddq_s16(vextq_s8(v427, v427, 8uLL), *&v1023[107]);
  v428 = vrev64q_s16(vaddq_s16(vextq_s8(v425, v426, 0xEuLL), vaddq_s16(v426, v424)));
  *&v1023[99] = vaddq_s16(vextq_s8(v428, v428, 8uLL), *&v1023[99]);
  v429 = vrev64q_s16(*&v1023[88]);
  v430 = vextq_s8(v429, v429, 8uLL);
  v431 = vrev64q_s16(*&v1023[80]);
  v432 = vextq_s8(v431, v431, 8uLL);
  v433 = vextq_s8(v424, v430, 0xEuLL);
  v434 = vextq_s8(v430, v432, 0xEuLL);
  v435 = vrev64q_s16(vaddq_s16(vextq_s8(v426, v433, 0xEuLL), vaddq_s16(v433, v430)));
  *&v1023[91] = vaddq_s16(vextq_s8(v435, v435, 8uLL), *&v1023[91]);
  v436 = vrev64q_s16(vaddq_s16(vextq_s8(v433, v434, 0xEuLL), vaddq_s16(v434, v432)));
  *&v1023[83] = vaddq_s16(vextq_s8(v436, v436, 8uLL), *&v1023[83]);
  v437 = vrev64q_s16(*&v1023[72]);
  v438 = vextq_s8(v437, v437, 8uLL);
  v439 = vrev64q_s16(*&v1023[64]);
  v440 = vextq_s8(v439, v439, 8uLL);
  v441 = vextq_s8(v432, v438, 0xEuLL);
  v442 = vextq_s8(v438, v440, 0xEuLL);
  v443 = vrev64q_s16(vaddq_s16(vextq_s8(v434, v441, 0xEuLL), vaddq_s16(v441, v438)));
  *&v1023[75] = vaddq_s16(vextq_s8(v443, v443, 8uLL), *&v1023[75]);
  v444 = vrev64q_s16(vaddq_s16(vextq_s8(v441, v442, 0xEuLL), vaddq_s16(v442, v440)));
  *&v1023[67] = vaddq_s16(vextq_s8(v444, v444, 8uLL), *&v1023[67]);
  v445 = vrev64q_s16(*&v1023[56]);
  v446 = vextq_s8(v445, v445, 8uLL);
  v447 = vrev64q_s16(*&v1023[48]);
  v448 = vextq_s8(v447, v447, 8uLL);
  v449 = vextq_s8(v440, v446, 0xEuLL);
  v450 = vextq_s8(v446, v448, 0xEuLL);
  v451 = vrev64q_s16(vaddq_s16(vextq_s8(v442, v449, 0xEuLL), vaddq_s16(v449, v446)));
  *&v1023[59] = vaddq_s16(vextq_s8(v451, v451, 8uLL), *&v1023[59]);
  v452 = vrev64q_s16(vaddq_s16(vextq_s8(v449, v450, 0xEuLL), vaddq_s16(v450, v448)));
  *&v1023[51] = vaddq_s16(vextq_s8(v452, v452, 8uLL), *&v1023[51]);
  v453 = vrev64q_s16(*&v1023[40]);
  v454 = vextq_s8(v453, v453, 8uLL);
  v455 = vextq_s8(v448, v454, 0xEuLL);
  v456 = vrev64q_s16(vaddq_s16(vextq_s8(v450, v455, 0xEuLL), vaddq_s16(v455, v454)));
  *&v1023[43] = vaddq_s16(vextq_s8(v456, v456, 8uLL), *&v1023[43]);
  v457 = vrev64q_s16(*&v1023[32]);
  v458 = vextq_s8(v457, v457, 8uLL);
  v459 = vextq_s8(v454, v458, 0xEuLL);
  v460 = vrev64q_s16(vaddq_s16(vextq_s8(v455, v459, 0xEuLL), vaddq_s16(v459, v458)));
  *&v1023[35] = vaddq_s16(vextq_s8(v460, v460, 8uLL), *&v1023[35]);
  v461 = vrev64q_s16(*&v1023[24]);
  v462 = vextq_s8(v461, v461, 8uLL);
  v463 = vextq_s8(v458, v462, 0xEuLL);
  v464 = vrev64q_s16(vaddq_s16(vextq_s8(v459, v463, 0xEuLL), vaddq_s16(v463, v462)));
  *&v1023[27] = vaddq_s16(vextq_s8(v464, v464, 8uLL), *&v1023[27]);
  v465 = vrev64q_s16(*&v1023[16]);
  v466 = vextq_s8(v465, v465, 8uLL);
  v467 = vextq_s8(v462, v466, 0xEuLL);
  v468 = vrev64q_s16(vaddq_s16(vextq_s8(v463, v467, 0xEuLL), vaddq_s16(v467, v466)));
  *&v1023[19] = vaddq_s16(vextq_s8(v468, v468, 8uLL), *&v1023[19]);
  v1023[18] += v1023[17] + v1023[16] + v1023[15];
  v1023[17] += v1023[15] + v1023[14] + v1023[16];
  v1023[16] += v1023[15] + v1023[14] + v1023[13];
  for (i = 16; i != 147; ++i)
  {
    if (v1023[i] >= 1)
    {
      v1023[v400++] = i - 2;
    }
  }

  v984 = v16;
  v992 = (5 * v27);
  bzero(v1029, 0x950uLL);
  if (a9 >= 1)
  {
    v470 = 0;
    v471 = v1055;
    if (v27 == 8)
    {
      v471 = v20;
    }

    v472 = (v471 + 160);
    do
    {
      if (v400 >= 1)
      {
        v996 = *v472;
        v473 = v472[1] * v472[1] + v996 * v996 + v472[2] * v472[2] + v472[3] * v472[3] + v472[5] * v472[5] + v472[4] * v472[4] + v472[6] * v472[6] + v472[7] * v472[7] + v472[9] * v472[9] + v472[8] * v472[8] + v472[10] * v472[10] + v472[11] * v472[11] + v472[13] * v472[13] + v472[12] * v472[12] + v472[14] * v472[14] + v472[15] * v472[15];
        v474 = v473 + v472[17] * v472[17] + v472[16] * v472[16] + v472[18] * v472[18] + v472[19] * v472[19] + v472[21] * v472[21] + v472[20] * v472[20] + v472[22] * v472[22] + v472[23] * v472[23] + v472[25] * v472[25] + v472[24] * v472[24] + v472[26] * v472[26] + v472[27] * v472[27] + v472[29] * v472[29] + v472[28] * v472[28] + v472[30] * v472[30] + v472[31] * v472[31];
        v475 = v472[39];
        v995 = v474 + v472[33] * v472[33] + v472[32] * v472[32] + v472[34] * v472[34] + v472[35] * v472[35] + v472[37] * v472[37] + v472[36] * v472[36] + v472[38] * v472[38] + v475 * v475 + 1.0;
        v476 = v1023;
        v477 = v400;
        do
        {
          v479 = *v476++;
          v478 = v479;
          v480 = &v472[-v479];
          v1014 = v480[1];
          v1016 = *v480;
          v1011 = v480[2];
          v1009 = v480[3];
          v481 = v480[5];
          v1007 = v480[4];
          v1003 = v480[7];
          v482 = v1014 * v472[1] + v1016 * v996 + v1011 * v472[2] + v1009 * v472[3] + 0.0 + v481 * v472[5] + v1007 * v472[4] + v480[6] * v472[6] + v1003 * v472[7];
          v1001 = v480[9];
          v1002 = v480[8];
          v997 = v480[11];
          v483 = v480[12];
          v484 = v480[13];
          v485 = v480[14];
          v486 = v480[15];
          v487 = v480[16];
          v488 = v480[17];
          v489 = v480[18];
          v490 = v480[19];
          v491 = v480[20];
          v492 = v480[21];
          v493 = v480[22];
          v494 = v480[23];
          v495 = v480[24];
          v496 = v480[25];
          v497 = v480[26];
          v498 = v480[27];
          v499 = v482 + v1001 * v472[9] + v1002 * v472[8] + v480[10] * v472[10] + v997 * v472[11] + v484 * v472[13] + v483 * v472[12] + v485 * v472[14] + v486 * v472[15] + v488 * v472[17] + v487 * v472[16] + v489 * v472[18] + v490 * v472[19] + v492 * v472[21] + v491 * v472[20] + v493 * v472[22] + v494 * v472[23] + v496 * v472[25] + v495 * v472[24] + v497 * v472[26] + v498 * v472[27];
          v500 = v480[28];
          v501 = v480[29];
          v502 = v480[30];
          v503 = v480[31];
          v504 = v499 + v501 * v472[29] + v500 * v472[28] + v502 * v472[30] + v503 * v472[31];
          v505 = v480[32];
          v506 = v480[33];
          v507 = v480[34];
          v508 = v480[35];
          v509 = v504 + v506 * v472[33] + v505 * v472[32] + v507 * v472[34] + v508 * v472[35];
          v510 = v480[36];
          v511 = v480[37];
          v512 = v480[38];
          v513 = v480[39];
          v514 = v509 + v511 * v472[37] + v510 * v472[36] + v512 * v472[38] + v513 * v472[39];
          v515 = 0.0;
          if (v514 > 0.0)
          {
            v999 = v480[10];
            v1005 = v480[6];
            v515 = (v514 + v514) / (v995 + v1014 * v1014 + v1016 * v1016 + v1011 * v1011 + v1009 * v1009 + v481 * v481 + v1007 * v1007 + v1005 * v1005 + v1003 * v1003 + v1001 * v1001 + v1002 * v1002 + v999 * v999 + v997 * v997 + v484 * v484 + v483 * v483 + v485 * v485 + v486 * v486 + v488 * v488 + v487 * v487 + v489 * v489 + v490 * v490 + v492 * v492 + v491 * v491 + v493 * v493 + v494 * v494 + v496 * v496 + v495 * v495 + v497 * v497 + v498 * v498 + v501 * v501 + v500 * v500 + v502 * v502 + v503 * v503 + v506 * v506 + v505 * v505 + v507 * v507 + v508 * v508 + v511 * v511 + v510 * v510 + v512 * v512 + v513 * v513);
          }

          *&v1029[149 * v470 + v478] = v515;
          --v477;
        }

        while (v477);
      }

      v472 += 40;
      ++v470;
    }

    while (v470 != a9);
  }

  v1006 = 18 * v27;
  v1004 = 2 * v27;
  v985 = v27;
  if (v986 < 1)
  {
    v518 = 0;
    v517 = 0.0;
  }

  else
  {
    if (v27 == 12)
    {
      v516 = 2 * v986 / 3;
    }

    else
    {
      v516 = v986 >> (v27 == 16);
    }

    v517 = log10(v516) * 3.32192809;
    v518 = v516 > 0;
  }

  v519 = &silk_CB_lags_stage2_10_ms;
  if (a9 == 4)
  {
    v519 = &silk_CB_lags_stage2;
  }

  v1017 = v519;
  if (v339 < 1)
  {
    goto LABEL_219;
  }

  v520 = 0;
  v521 = 0;
  if (a9 == 4)
  {
    v522 = 11;
  }

  else
  {
    v522 = 3;
  }

  v524 = v991 > 0 && a9 == 4 && v985 == 8;
  v525 = a9 * 0.2;
  v1012 = a9;
  v526 = a9 * v984;
  if (v524)
  {
    v527 = 11;
  }

  else
  {
    v527 = 3;
  }

  v528 = v339;
  v529 = 0.0;
  v530 = -1;
  v531 = -1000.0;
  do
  {
    v532 = v1025[0].i32[v520];
    if (v327 < 1)
    {
      bzero(v1026, 4 * v527);
    }

    else
    {
      v533 = 0;
      v534 = v1017;
      do
      {
        v535 = 0.0;
        v536 = v1029;
        v537 = v534;
        v538 = v327;
        do
        {
          v535 = v535 + *&v536[v532 + *v537];
          v536 += 149;
          v537 += v522;
          --v538;
        }

        while (v538);
        *&v1026[v533++] = v535;
        ++v534;
      }

      while (v533 != v527);
    }

    v539 = 0;
    v540 = 0;
    v541 = -1000.0;
    do
    {
      if (*&v1026[v539] > v541)
      {
        v541 = *&v1026[v539];
        v540 = v539;
      }

      ++v539;
    }

    while (v527 != v539);
    v543.n128_f64[0] = log10(v532) * 3.32192809;
    v542 = v543.n128_f64[0];
    v543.n128_f32[0] = v541 + (-v525 * v542);
    if (v518)
    {
      v543.n128_f32[0] = v543.n128_f32[0] - ((((v542 - v517) * (v542 - v517)) * (v525 * *v994)) / (((v542 - v517) * (v542 - v517)) + 0.5));
      if (v543.n128_f32[0] > v531 && v541 > v526)
      {
LABEL_214:
        v529 = v541;
        v531 = v543.n128_f32[0];
        v521 = v540;
        v530 = v532;
      }
    }

    else if (v543.n128_f32[0] > v531 && v541 > v526)
    {
      goto LABEL_214;
    }

    ++v520;
    v327 = a9;
  }

  while (v520 != v528);
  if (v530 == -1)
  {
LABEL_219:
    LOBYTE(v324) = 0;
    v326 = v990;
    *v989 = 0;
    v989[1] = 0;
    *v994 = 0.0;
    result = 1;
    *v988 = 0;
    goto LABEL_323;
  }

  v543.n128_f32[0] = v529 / v1012;
  *v994 = v529 / v1012;
  if (v985 <= 8)
  {
    v547 = v989;
    LOBYTE(v324) = v521;
    if (a9 >= 1)
    {
      v548 = &v1017[v521];
      do
      {
        v549 = v530 + *v548;
        if (v549 <= 16)
        {
          v549 = 16;
        }

        if (v549 >= 144)
        {
          v549 = 144;
        }

        *v547++ = v549;
        v548 += v522;
        --v327;
      }

      while (v327);
    }

    v550 = v530 - 16;
    v326 = v990;
    goto LABEL_322;
  }

  if (v985 == 12)
  {
    v546 = ((3 * v530) & 1) + ((3 * v530) >> 1);
  }

  else
  {
    v546 = 2 * v530;
  }

  v551 = v987;
  v552 = v989;
  v326 = v990;
  if (v546 <= v1004)
  {
    v553 = v1004;
  }

  else
  {
    v553 = v546;
  }

  if (v546 >= v1006)
  {
    v554 = v983;
  }

  else
  {
    v554 = v553;
  }

  if (v554 - 2 <= v1004)
  {
    v555 = v1004;
  }

  else
  {
    v555 = v554 - 2;
  }

  v556 = v554 + 2;
  if (v554 + 2 >= v983)
  {
    v556 = v983;
  }

  v998 = v556;
  v1008 = v555;
  v1000 = v554;
  if (a9 != 4)
  {
    if (a9 <= 0)
    {
      v653 = &silk_CB_lags_stage3_10_ms;
      v654 = 12;
      v652 = 12;
      goto LABEL_290;
    }

    v558 = v992;
    v560 = &silk_CB_lags_stage3_10_ms;
    v559 = &v987[4 * v992];
    v557 = &silk_Lag_range_stage3_10_ms;
    v1018 = 12;
    v1010 = 12;
    v1013 = -v555;
LABEL_245:
    v561 = 0;
    v562 = v1019;
    v993 = v558;
    v1015 = v557;
    while (1)
    {
      v563 = &v557[2 * v561];
      v564 = *v563;
      v565 = *v563;
      v566 = v563[1];
      v567 = (v566 - v564 + 1);
      celt_pitch_xcorr_c(v559, &v559[v1013 - v563[1]], &v1057, v558, v566 - v564 + 1, v543);
      v568 = v562;
      v569 = v560;
      v570 = v1018;
      if (v566 < v564)
      {
        goto LABEL_255;
      }

      if (v567 < 8)
      {
        break;
      }

      v571 = v567 & 0xFFFFFFF8;
      v572 = v571 + v565;
      v573 = v1022;
      v574 = (&v1056 + v566 - v565);
      v575 = v571;
      do
      {
        v576 = vrev64q_s32(*v574);
        v577 = vrev64q_s32(v574[-1]);
        v573[-1] = vextq_s8(v576, v576, 8uLL);
        *v573 = vextq_s8(v577, v577, 8uLL);
        v573 += 2;
        v574 -= 2;
        v575 -= 8;
      }

      while (v575);
      v568 = v562;
      v569 = v560;
      v570 = v1018;
      if (v571 != v567)
      {
        goto LABEL_252;
      }

      do
      {
LABEL_255:
        v582 = *v569++;
        v583 = &v1020[2 * (v582 - v565)];
        v543 = *v583;
        *v568 = *v583;
        *(v568 + 4) = *(v583 + 4);
        v568 += 20;
        --v570;
      }

      while (v570);
      v558 = v993;
      v559 += v993;
      ++v561;
      v560 += v1010;
      v562 += 680;
      v557 = v1015;
      if (v561 == a9)
      {
        goto LABEL_257;
      }
    }

    v571 = 0;
    v572 = v565;
LABEL_252:
    v578 = &v1057 + v566 - v572;
    v579 = v567 - v571;
    v580 = &v1020[2 * v571];
    do
    {
      v581 = *v578--;
      *v580 = v581;
      v580 += 2;
      --v579;
    }

    while (v579);
    v568 = v562;
    v569 = v560;
    v570 = v1018;
    goto LABEL_255;
  }

  v557 = &silk_Lag_range_stage3 + 8 * v991;
  v558 = v992;
  v559 = &v987[4 * v992];
  if (silk_nb_cbk_searchs_stage3[v991] > 0)
  {
    v1013 = -v555;
    v1018 = silk_nb_cbk_searchs_stage3[v991];
    v560 = silk_CB_lags_stage3;
    v1010 = 34;
    goto LABEL_245;
  }

  v718 = *v557;
  v719 = v557[1];
  v720 = (v719 - v718 + 1);
  celt_pitch_xcorr_c(&v987[4 * v992], &v559[-v555 - v557[1]], &v1057, v992, v719 - v718 + 1, v543);
  if (v719 >= v718)
  {
    if (v720 <= 7)
    {
      v722 = 0;
      v723 = v718;
      goto LABEL_360;
    }

    v722 = v720 & 0xFFFFFFF8;
    v723 = v722 + v718;
    v752 = v1022;
    v753 = (&v1057 + 4 * v719 + -4 * v718 - 12);
    v754 = v722;
    do
    {
      v755 = vrev64q_s32(*v753);
      v721 = vextq_s8(v755, v755, 8uLL);
      v756 = vrev64q_s32(v753[-1]);
      v752[-1] = v721;
      *v752 = vextq_s8(v756, v756, 8uLL);
      v752 += 2;
      v753 -= 2;
      v754 -= 8;
    }

    while (v754);
    if (v722 != v720)
    {
LABEL_360:
      v757 = &v1057 + v719 - v723;
      v758 = v720 - v722;
      v759 = &v1020[2 * v722];
      do
      {
        v760 = *v757--;
        v721.n128_u32[0] = v760;
        *v759 = v760;
        v759 += 2;
        --v758;
      }

      while (v758);
    }
  }

  v761 = &v559[v992];
  v762 = v557[2];
  v763 = v557[3];
  v764 = (v763 - v762 + 1);
  celt_pitch_xcorr_c(v761, &v761[-v555 - v557[3]], &v1057, v992, v763 - v762 + 1, v721);
  if (v763 >= v762)
  {
    if (v764 < 8)
    {
      v766 = 0;
      v767 = v762;
      goto LABEL_368;
    }

    v766 = v764 & 0xFFFFFFF8;
    v767 = v766 + v762;
    v768 = v1022;
    v769 = (&v1057 + 4 * v763 + -4 * v762 - 12);
    v770 = v766;
    do
    {
      v771 = vrev64q_s32(*v769);
      v765 = vextq_s8(v771, v771, 8uLL);
      v772 = vrev64q_s32(v769[-1]);
      v768[-1] = v765;
      *v768 = vextq_s8(v772, v772, 8uLL);
      v768 += 2;
      v769 -= 2;
      v770 -= 8;
    }

    while (v770);
    if (v766 != v764)
    {
LABEL_368:
      v773 = &v1057 + v763 - v767;
      v774 = v764 - v766;
      v775 = &v1020[2 * v766];
      do
      {
        v776 = *v773--;
        v765.n128_u32[0] = v776;
        *v775 = v776;
        v775 += 2;
        --v774;
      }

      while (v774);
    }
  }

  v777 = &v761[v992];
  v778 = v557[4];
  v779 = v557[5];
  v780 = (v779 - v778 + 1);
  celt_pitch_xcorr_c(v777, &v777[-v555 - v557[5]], &v1057, v992, v779 - v778 + 1, v765);
  if (v779 >= v778)
  {
    if (v780 < 8)
    {
      v782 = 0;
      v783 = v778;
      goto LABEL_376;
    }

    v782 = v780 & 0xFFFFFFF8;
    v783 = v782 + v778;
    v784 = v1022;
    v785 = (&v1057 + 4 * v779 + -4 * v778 - 12);
    v786 = v782;
    do
    {
      v787 = vrev64q_s32(*v785);
      v781 = vextq_s8(v787, v787, 8uLL);
      v788 = vrev64q_s32(v785[-1]);
      v784[-1] = v781;
      *v784 = vextq_s8(v788, v788, 8uLL);
      v784 += 2;
      v785 -= 2;
      v786 -= 8;
    }

    while (v786);
    if (v782 != v780)
    {
LABEL_376:
      v789 = &v1057 + v779 - v783;
      v790 = v780 - v782;
      v791 = &v1020[2 * v782];
      do
      {
        v792 = *v789--;
        v781.n128_u32[0] = v792;
        *v791 = v792;
        v791 += 2;
        --v790;
      }

      while (v790);
    }
  }

  v793 = v557[6];
  v794 = v557[7];
  v795 = (v794 - v793 + 1);
  celt_pitch_xcorr_c(&v777[v992], &v777[v992 - v555 - v557[7]], &v1057, v992, v794 - v793 + 1, v781);
  v558 = v992;
  if (v794 >= v793)
  {
    if (v795 < 8)
    {
      v796 = 0;
      v797 = v793;
      goto LABEL_384;
    }

    v796 = v795 & 0xFFFFFFF8;
    v797 = v796 + v793;
    v798 = v1022;
    v799 = (&v1057 + 4 * v794 + -4 * v793 - 12);
    v800 = v796;
    do
    {
      v801 = vrev64q_s32(*v799);
      v802 = vrev64q_s32(v799[-1]);
      v798[-1] = vextq_s8(v801, v801, 8uLL);
      *v798 = vextq_s8(v802, v802, 8uLL);
      v798 += 2;
      v799 -= 2;
      v800 -= 8;
    }

    while (v800);
    if (v796 != v795)
    {
LABEL_384:
      v803 = &v1057 + v794 - v797;
      v804 = v795 - v796;
      v805 = &v1020[2 * v796];
      do
      {
        v806 = *v803--;
        *v805 = v806;
        v805 += 2;
        --v804;
      }

      while (v804);
    }
  }

LABEL_257:
  v327 = a9;
  if (a9 != 4)
  {
    v555 = v1008;
    v589 = &v987[4 * v558];
    v587 = &silk_CB_lags_stage3_10_ms;
    v584 = &silk_Lag_range_stage3_10_ms;
    v586 = 12;
    v588 = 12;
LABEL_261:
    v590 = 0;
    v591 = (v558 - 3);
    v592 = v558 & 0x7FFFFFFC;
    v593 = v558 - v592;
    v594 = 4;
    if (v591 > 4)
    {
      v594 = (v558 - 3);
    }

    v595 = ((v594 - 1) >> 2) + 1;
    v596 = 4 * v558;
    LODWORD(v992) = v558;
    v597 = v589 - 1;
    v598 = v1020;
    while (1)
    {
      v599 = v584[2 * v590];
      v600 = (v555 + v599);
      if (v591 < 0xD)
      {
        break;
      }

      v603 = -1 * v600;
      v602 = 0.0;
      v604 = v595 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v605 = &v589[v603];
        v603 += 16;
        v1064 = vld4_f32(v605);
        v605 += 8;
        v606 = vcvtq_f64_f32(v1064.val[0]);
        v1065 = vld4_f32(v605);
        v607 = vcvtq_f64_f32(v1065.val[0]);
        v608 = vcvtq_f64_f32(v1064.val[1]);
        v609 = vcvtq_f64_f32(v1065.val[1]);
        v610 = vmlaq_f64(vmulq_f64(v608, v608), v606, v606);
        v611 = vmlaq_f64(vmulq_f64(v609, v609), v607, v607);
        v612 = vcvtq_f64_f32(v1064.val[2]);
        v613 = vcvtq_f64_f32(v1065.val[2]);
        *v1064.val[0].f32 = vcvtq_f64_f32(v1064.val[3]);
        *v1064.val[1].f32 = vcvtq_f64_f32(v1065.val[3]);
        v614 = vmlaq_f64(vmlaq_f64(v610, v612, v612), *v1064.val[0].f32, *v1064.val[0].f32);
        v615 = vmlaq_f64(vmlaq_f64(v611, v613, v613), *v1064.val[1].f32, *v1064.val[1].f32);
        v602 = v602 + v614.f64[0] + v614.f64[1] + v615.f64[0] + v615.f64[1];
        v604 -= 4;
      }

      while (v604);
      v601 = 4 * (v595 & 0x7FFFFFFFFFFFFFFCLL);
      if (v595 != (v595 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_269;
      }

LABEL_271:
      if (v592 < v558)
      {
        if (v593 > 7)
        {
          v620 = 16 * ((v558 >> 2) & 0x1FFFFFFF) - 4 * v600;
          v621 = v593 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v622 = *(v589 + v620);
            v623 = *(v589 + v620 + 16);
            v624 = vcvtq_f64_f32(*v622.f32);
            v625 = vcvt_hight_f64_f32(v622);
            v626 = vcvtq_f64_f32(*v623.f32);
            v627 = vcvt_hight_f64_f32(v623);
            v628 = vmulq_f64(v625, v625);
            v629 = vmulq_f64(v624, v624);
            v630 = vmulq_f64(v627, v627);
            v631 = vmulq_f64(v626, v626);
            v602 = v602 + v629.f64[0] + v629.f64[1] + v628.f64[0] + v628.f64[1] + v631.f64[0] + v631.f64[1] + v630.f64[0] + v630.f64[1];
            v620 += 32;
            v621 -= 8;
          }

          while (v621);
          v619 = (v593 & 0xFFFFFFFFFFFFFFF8) + v592;
          if (v593 == (v593 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_279;
          }
        }

        else
        {
          v619 = v558 & 0x7FFFFFFC;
        }

        v632 = v558 - v619;
        v633 = 4 * v619 - 4 * v600;
        do
        {
          v602 = v602 + *(v589 + v633) * *(v589 + v633);
          v633 += 4;
          --v632;
        }

        while (v632);
      }

LABEL_279:
      v634 = -v584[2 * v590];
      v635 = v602 + 0.001;
      v636 = v635;
      v1057.n128_f32[0] = v636;
      v637 = v584[2 * v590 + 1];
      v638 = v598;
      v639 = v587;
      v640 = v586;
      v641 = __OFSUB__(v637, v599);
      v642 = v637 - v599;
      if (!((v642 < 0) ^ v641 | (v642 == 0)))
      {
        v643 = (v642 + 1) - 1;
        v644 = 4 * v600;
        v645 = &v597[-v600];
        v646 = 4 * v558 - 4 - v644;
        v647 = &v1057.n128_f32[1];
        do
        {
          v648 = *v645--;
          v635 = v635 - *(v589 + v646) * *(v589 + v646) + v648 * v648;
          v649 = v635;
          *v647++ = v649;
          v646 -= 4;
          --v643;
        }

        while (v643);
        v638 = v598;
        v639 = v587;
        v640 = v586;
      }

      do
      {
        v650 = *v639++;
        v651 = &v1057 + 4 * v650 + 4 * v634;
        *v638 = *v651;
        *(v638 + 4) = *(v651 + 4);
        v638 += 10;
        --v640;
      }

      while (v640);
      ++v590;
      v589 = (v589 + v596);
      v597 = (v597 + v596);
      v587 += v588;
      v598 += 340;
      v327 = a9;
      v555 = v1008;
      if (v590 == a9)
      {
        goto LABEL_285;
      }
    }

    v601 = 0;
    v602 = 0.0;
LABEL_269:
    v616 = v601 + 3;
    v617 = 4 * v601 - 4 * v600;
    do
    {
      v602 = v602 + *(v589 + v617 + 4) * *(v589 + v617 + 4) + *(v589 + v617) * *(v589 + v617) + *(v589 + v617 + 8) * *(v589 + v617 + 8) + *(v589 + v617 + 12) * *(v589 + v617 + 12);
      v618 = v616 + 1;
      v616 += 4;
      v617 += 16;
    }

    while (v618 < v591);
    goto LABEL_271;
  }

  v584 = &silk_Lag_range_stage3 + 8 * v991;
  v585 = 4 * v558;
  v555 = v1008;
  if (silk_nb_cbk_searchs_stage3[v991] > 0)
  {
    v586 = silk_nb_cbk_searchs_stage3[v991];
    v587 = silk_CB_lags_stage3;
    v588 = 34;
    v589 = &v987[v585];
    goto LABEL_261;
  }

  v724 = v585;
  v725 = (v558 - 3);
  v726 = v558 & 0x7FFFFFFC;
  v727 = *v584;
  v728 = (v1008 + v727);
  v729 = 4;
  if (v725 > 4)
  {
    v729 = (v558 - 3);
  }

  if (v725 <= 0xC)
  {
    v730 = 0;
    v731 = 0.0;
    goto LABEL_352;
  }

  v732 = ((v729 - 1) >> 2) + 1;
  v730 = 4 * (v732 & 0x7FFFFFFFFFFFFFFCLL);
  v733 = &v987[v724 - v728 + 8];
  v731 = 0.0;
  v734 = v732 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v735 = v733 - 8;
    v1060 = vld4_f32(v735);
    v1067 = vld4_f32(v733);
    v736 = vcvtq_f64_f32(v1060.val[0]);
    v737 = vcvtq_f64_f32(v1067.val[0]);
    v738 = vcvtq_f64_f32(v1060.val[1]);
    v739 = vcvtq_f64_f32(v1067.val[1]);
    v740 = vmlaq_f64(vmulq_f64(v738, v738), v736, v736);
    v741 = vmlaq_f64(vmulq_f64(v739, v739), v737, v737);
    v742 = vcvtq_f64_f32(v1060.val[2]);
    v743 = vcvtq_f64_f32(v1067.val[2]);
    *v1060.val[0].f32 = vcvtq_f64_f32(v1060.val[3]);
    *v1060.val[1].f32 = vcvtq_f64_f32(v1067.val[3]);
    v744 = vmlaq_f64(vmlaq_f64(v740, v742, v742), *v1060.val[0].f32, *v1060.val[0].f32);
    v745 = vmlaq_f64(vmlaq_f64(v741, v743, v743), *v1060.val[1].f32, *v1060.val[1].f32);
    v731 = v731 + v744.f64[0] + v744.f64[1] + v745.f64[0] + v745.f64[1];
    v733 += 16;
    v734 -= 4;
  }

  while (v734);
  if (v732 != (v732 & 0x7FFFFFFFFFFFFFFCLL))
  {
LABEL_352:
    v746 = (v987 + 4 * v730 + 4 * v724 - 4 * v728 + 8);
    do
    {
      v747 = *(v746 - 1) * *(v746 - 1) + *(v746 - 2) * *(v746 - 2);
      v748 = *v746;
      v749 = v746[1];
      v746 += 4;
      v731 = v731 + v747 + v748 * v748 + v749 * v749;
      v730 += 4;
    }

    while (v730 < v725);
  }

  if (v726 < v558)
  {
    v750 = v558 - v726;
    if (v558 - v726 <= 7)
    {
      v751 = v558 & 0x7FFFFFFC;
      goto LABEL_390;
    }

    v751 = (v750 & 0xFFFFFFFFFFFFFFF8) + v726;
    v807 = (v987 + 16 * ((v558 >> 2) & 0x1FFFFFFF) + 4 * v724 - 4 * v728 + 16);
    v808 = v750 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v809 = *v807[-2].f32;
      v810 = vcvtq_f64_f32(*v809.f32);
      v811 = vcvt_hight_f64_f32(v809);
      v812 = vcvtq_f64_f32(*v807);
      v813 = vcvt_hight_f64_f32(*v807->f32);
      v814 = vmulq_f64(v811, v811);
      v815 = vmulq_f64(v810, v810);
      v816 = vmulq_f64(v813, v813);
      v817 = vmulq_f64(v812, v812);
      v731 = v731 + v815.f64[0] + v815.f64[1] + v814.f64[0] + v814.f64[1] + v817.f64[0] + v817.f64[1] + v816.f64[0] + v816.f64[1];
      v807 += 4;
      v808 -= 8;
    }

    while (v808);
    if (v750 != (v750 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_390:
      v818 = v558 - v751;
      v819 = (v987 + 4 * v751 + 4 * v724 - 4 * v728);
      do
      {
        v820 = *v819++;
        v731 = v731 + v820 * v820;
        --v818;
      }

      while (v818);
    }
  }

  v821 = v584[1];
  v641 = __OFSUB__(v821, v727);
  v822 = v821 - v727;
  if (!((v822 < 0) ^ v641 | (v822 == 0)))
  {
    v823 = v731 + 0.001;
    v824 = (v822 + 1) - 1;
    v825 = &v1057.n128_f32[1];
    v826 = &v987[v724 - v728 - 1];
    do
    {
      v827 = v823 - v826[v558] * v826[v558];
      v828 = *v826--;
      v823 = v827 + v828 * v828;
      v829 = v823;
      *v825++ = v829;
      --v824;
    }

    while (v824);
  }

  v830 = v584[2];
  v831 = (v1008 + v830);
  if (v725 <= 4)
  {
    v832 = 4;
  }

  else
  {
    v832 = (v558 - 3);
  }

  v833 = 4 * v724;
  if (v725 < 0xD)
  {
    v834 = 0;
    v835 = 0.0;
    goto LABEL_403;
  }

  v836 = ((v832 - 1) >> 2) + 1;
  v834 = 4 * (v836 & 0x7FFFFFFFFFFFFFFCLL);
  v837 = (v987 + v833 + 4 * v558 - 4 * v831 + 32);
  v835 = 0.0;
  v838 = v836 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v839 = v837 - 8;
    v1061 = vld4_f32(v839);
    v1068 = vld4_f32(v837);
    v840 = vcvtq_f64_f32(v1061.val[0]);
    v841 = vcvtq_f64_f32(v1068.val[0]);
    v842 = vcvtq_f64_f32(v1061.val[1]);
    v843 = vcvtq_f64_f32(v1068.val[1]);
    v844 = vmlaq_f64(vmulq_f64(v842, v842), v840, v840);
    v845 = vmlaq_f64(vmulq_f64(v843, v843), v841, v841);
    v846 = vcvtq_f64_f32(v1061.val[2]);
    v847 = vcvtq_f64_f32(v1068.val[2]);
    *v1061.val[0].f32 = vcvtq_f64_f32(v1061.val[3]);
    *v1061.val[1].f32 = vcvtq_f64_f32(v1068.val[3]);
    v848 = vmlaq_f64(vmlaq_f64(v844, v846, v846), *v1061.val[0].f32, *v1061.val[0].f32);
    v849 = vmlaq_f64(vmlaq_f64(v845, v847, v847), *v1061.val[1].f32, *v1061.val[1].f32);
    v835 = v835 + v848.f64[0] + v848.f64[1] + v849.f64[0] + v849.f64[1];
    v837 += 16;
    v838 -= 4;
  }

  while (v838);
  if (v836 != (v836 & 0x7FFFFFFFFFFFFFFCLL))
  {
LABEL_403:
    v850 = (v987 + 4 * v834 + 4 * v724 + 4 * v558 - 4 * v831 + 8);
    do
    {
      v851 = *(v850 - 1) * *(v850 - 1) + *(v850 - 2) * *(v850 - 2);
      v852 = *v850;
      v853 = v850[1];
      v850 += 4;
      v835 = v835 + v851 + v852 * v852 + v853 * v853;
      v834 += 4;
    }

    while (v834 < v725);
  }

  if (v726 < v558)
  {
    v854 = v558 - v726;
    if (v558 - v726 < 8)
    {
      v855 = v558 & 0x7FFFFFFC;
      goto LABEL_411;
    }

    v855 = (v854 & 0xFFFFFFFFFFFFFFF8) + v726;
    v856 = (v987 + 16 * ((v558 >> 2) & 0x1FFFFFFF) + 4 * v724 + 4 * v558 - 4 * v831 + 16);
    v857 = v854 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v858 = *v856[-2].f32;
      v859 = vcvtq_f64_f32(*v858.f32);
      v860 = vcvt_hight_f64_f32(v858);
      v861 = vcvtq_f64_f32(*v856);
      v862 = vcvt_hight_f64_f32(*v856->f32);
      v863 = vmulq_f64(v860, v860);
      v864 = vmulq_f64(v859, v859);
      v865 = vmulq_f64(v862, v862);
      v866 = vmulq_f64(v861, v861);
      v835 = v835 + v864.f64[0] + v864.f64[1] + v863.f64[0] + v863.f64[1] + v866.f64[0] + v866.f64[1] + v865.f64[0] + v865.f64[1];
      v856 += 4;
      v857 -= 8;
    }

    while (v857);
    if (v854 != (v854 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_411:
      v867 = v558 - v855;
      v868 = (v987 + 4 * v855 + 4 * v724 + 4 * v558 - 4 * v831);
      do
      {
        v869 = *v868++;
        v835 = v835 + v869 * v869;
        --v867;
      }

      while (v867);
    }
  }

  v870 = v584[3];
  v641 = __OFSUB__(v870, v830);
  v871 = v870 - v830;
  if (!((v871 < 0) ^ v641 | (v871 == 0)))
  {
    v872 = v835 + 0.001;
    v873 = (v871 + 1) - 1;
    v874 = &v1057.n128_f32[1];
    v875 = 4 * v831;
    v876 = (v987 + v833 + 4 * v558 - 4 * v831 - 4);
    v877 = (v987 + v833 + 8 * v558 - v875 - 4);
    do
    {
      v878 = *v877--;
      v879 = v872 - v878 * v878;
      v880 = *v876--;
      v872 = v879 + v880 * v880;
      v881 = v872;
      *v874++ = v881;
      --v873;
    }

    while (v873);
  }

  v882 = v584[4];
  v883 = (v1008 + v882);
  if (v725 <= 4)
  {
    v884 = 4;
  }

  else
  {
    v884 = (v558 - 3);
  }

  v885 = 8 * v558;
  if (v725 < 0xD)
  {
    v886 = 0;
    v887 = 0.0;
    goto LABEL_424;
  }

  v888 = ((v884 - 1) >> 2) + 1;
  v886 = 4 * (v888 & 0x7FFFFFFFFFFFFFFCLL);
  v889 = (v987 + v885 + 4 * v724 - 4 * v883 + 32);
  v887 = 0.0;
  v890 = v888 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v891 = v889 - 8;
    v1062 = vld4_f32(v891);
    v1069 = vld4_f32(v889);
    v892 = vcvtq_f64_f32(v1062.val[0]);
    v893 = vcvtq_f64_f32(v1069.val[0]);
    v894 = vcvtq_f64_f32(v1062.val[1]);
    v895 = vcvtq_f64_f32(v1069.val[1]);
    v896 = vmlaq_f64(vmulq_f64(v894, v894), v892, v892);
    v897 = vmlaq_f64(vmulq_f64(v895, v895), v893, v893);
    v898 = vcvtq_f64_f32(v1062.val[2]);
    v899 = vcvtq_f64_f32(v1069.val[2]);
    *v1062.val[0].f32 = vcvtq_f64_f32(v1062.val[3]);
    *v1062.val[1].f32 = vcvtq_f64_f32(v1069.val[3]);
    v900 = vmlaq_f64(vmlaq_f64(v896, v898, v898), *v1062.val[0].f32, *v1062.val[0].f32);
    v901 = vmlaq_f64(vmlaq_f64(v897, v899, v899), *v1062.val[1].f32, *v1062.val[1].f32);
    v887 = v887 + v900.f64[0] + v900.f64[1] + v901.f64[0] + v901.f64[1];
    v889 += 16;
    v890 -= 4;
  }

  while (v890);
  if (v888 != (v888 & 0x7FFFFFFFFFFFFFFCLL))
  {
LABEL_424:
    v902 = (v987 + v885 + 4 * v886 + 4 * v724 - 4 * v883 + 8);
    do
    {
      v903 = *(v902 - 1) * *(v902 - 1) + *(v902 - 2) * *(v902 - 2);
      v904 = *v902;
      v905 = v902[1];
      v902 += 4;
      v887 = v887 + v903 + v904 * v904 + v905 * v905;
      v886 += 4;
    }

    while (v886 < v725);
  }

  if (v726 < v558)
  {
    v906 = v558 - v726;
    if (v558 - v726 < 8)
    {
      v907 = v558 & 0x7FFFFFFC;
      goto LABEL_432;
    }

    v907 = (v906 & 0xFFFFFFFFFFFFFFF8) + v726;
    v908 = (v987 + 16 * ((v558 >> 2) & 0x1FFFFFFF) + 8 * v558 + 4 * v724 - 4 * v883 + 16);
    v909 = v906 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v910 = *v908[-2].f32;
      v911 = vcvtq_f64_f32(*v910.f32);
      v912 = vcvt_hight_f64_f32(v910);
      v913 = vcvtq_f64_f32(*v908);
      v914 = vcvt_hight_f64_f32(*v908->f32);
      v915 = vmulq_f64(v912, v912);
      v916 = vmulq_f64(v911, v911);
      v917 = vmulq_f64(v914, v914);
      v918 = vmulq_f64(v913, v913);
      v887 = v887 + v916.f64[0] + v916.f64[1] + v915.f64[0] + v915.f64[1] + v918.f64[0] + v918.f64[1] + v917.f64[0] + v917.f64[1];
      v908 += 4;
      v909 -= 8;
    }

    while (v909);
    if (v906 != (v906 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_432:
      v919 = v558 - v907;
      v920 = (v987 + v885 + 4 * v907 + 4 * v724 - 4 * v883);
      do
      {
        v921 = *v920++;
        v887 = v887 + v921 * v921;
        --v919;
      }

      while (v919);
    }
  }

  v922 = v584[5];
  v641 = __OFSUB__(v922, v882);
  v923 = v922 - v882;
  if (!((v923 < 0) ^ v641 | (v923 == 0)))
  {
    v924 = v887 + 0.001;
    v925 = (v923 + 1) - 1;
    v926 = &v1057.n128_f32[1];
    v927 = 4 * v883;
    v928 = (v987 + v833 + 8 * v558 - 4 * v883 - 4);
    v929 = (v987 + v833 + 12 * v558 - v927 - 4);
    do
    {
      v930 = *v929--;
      v931 = v924 - v930 * v930;
      v932 = *v928--;
      v924 = v931 + v932 * v932;
      v933 = v924;
      *v926++ = v933;
      --v925;
    }

    while (v925);
  }

  v934 = v584[6];
  v935 = (v1008 + v934);
  v936 = 4;
  if (v725 > 4)
  {
    v936 = (v558 - 3);
  }

  if (v725 < 0xD)
  {
    v937 = 0;
    v938 = 0.0;
    goto LABEL_444;
  }

  v939 = ((v936 - 1) >> 2) + 1;
  v937 = 4 * (v939 & 0x7FFFFFFFFFFFFFFCLL);
  v940 = (v987 + v833 + 12 * v558 - 4 * v935 + 32);
  v938 = 0.0;
  v941 = v939 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v942 = v940 - 8;
    v1063 = vld4_f32(v942);
    v1070 = vld4_f32(v940);
    v943 = vcvtq_f64_f32(v1063.val[0]);
    v944 = vcvtq_f64_f32(v1070.val[0]);
    v945 = vcvtq_f64_f32(v1063.val[1]);
    v946 = vcvtq_f64_f32(v1070.val[1]);
    v947 = vmlaq_f64(vmulq_f64(v945, v945), v943, v943);
    v948 = vmlaq_f64(vmulq_f64(v946, v946), v944, v944);
    v949 = vcvtq_f64_f32(v1063.val[2]);
    v950 = vcvtq_f64_f32(v1070.val[2]);
    *v1063.val[0].f32 = vcvtq_f64_f32(v1063.val[3]);
    *v1063.val[1].f32 = vcvtq_f64_f32(v1070.val[3]);
    v951 = vmlaq_f64(vmlaq_f64(v947, v949, v949), *v1063.val[0].f32, *v1063.val[0].f32);
    v952 = vmlaq_f64(vmlaq_f64(v948, v950, v950), *v1063.val[1].f32, *v1063.val[1].f32);
    v938 = v938 + v951.f64[0] + v951.f64[1] + v952.f64[0] + v952.f64[1];
    v940 += 16;
    v941 -= 4;
  }

  while (v941);
  if (v939 != (v939 & 0x7FFFFFFFFFFFFFFCLL))
  {
LABEL_444:
    v953 = (v987 + 4 * v937 + 12 * v558 + 4 * v724 - 4 * v935 + 8);
    do
    {
      v954 = *(v953 - 1) * *(v953 - 1) + *(v953 - 2) * *(v953 - 2);
      v955 = *v953;
      v956 = v953[1];
      v953 += 4;
      v938 = v938 + v954 + v955 * v955 + v956 * v956;
      v937 += 4;
    }

    while (v937 < v725);
  }

  if (v726 < v558)
  {
    v957 = v558 - v726;
    if (v558 - v726 < 8)
    {
      goto LABEL_451;
    }

    v726 += v957 & 0xFFFFFFFFFFFFFFF8;
    v958 = (v987 + 16 * ((v558 >> 2) & 0x1FFFFFFF) + 12 * v558 + 4 * v724 - 4 * v935 + 16);
    v959 = v957 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v960 = *v958[-2].f32;
      v961 = vcvtq_f64_f32(*v960.f32);
      v962 = vcvt_hight_f64_f32(v960);
      v963 = vcvtq_f64_f32(*v958);
      v964 = vcvt_hight_f64_f32(*v958->f32);
      v965 = vmulq_f64(v962, v962);
      v966 = vmulq_f64(v961, v961);
      v967 = vmulq_f64(v964, v964);
      v968 = vmulq_f64(v963, v963);
      v938 = v938 + v966.f64[0] + v966.f64[1] + v965.f64[0] + v965.f64[1] + v968.f64[0] + v968.f64[1] + v967.f64[0] + v967.f64[1];
      v958 += 4;
      v959 -= 8;
    }

    while (v959);
    if (v957 != (v957 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_451:
      v969 = v558 - v726;
      v970 = (v987 + 4 * v726 + 12 * v558 + 4 * v724 - 4 * v935);
      do
      {
        v971 = *v970++;
        v938 = v938 + v971 * v971;
        --v969;
      }

      while (v969);
    }
  }

  LODWORD(v992) = v558;
  v972 = v584[7];
  v641 = __OFSUB__(v972, v934);
  v973 = v972 - v934;
  if (!((v973 < 0) ^ v641 | (v973 == 0)))
  {
    v974 = v938 + 0.001;
    v975 = (v973 + 1) - 1;
    v976 = &v1057.n128_f32[1];
    v977 = (v987 + v833 + 12 * v558 - 4 * v935 - 4);
    v978 = (v987 + v833 + 16 * v558 - 4 * v935 - 4);
    do
    {
      v979 = *v978--;
      v980 = v974 - v979 * v979;
      v981 = *v977--;
      v974 = v980 + v981 * v981;
      v982 = v974;
      *v976++ = v982;
      --v975;
    }

    while (v975);
  }

LABEL_285:
  if (v327 == 4)
  {
    v652 = silk_nb_cbk_searchs_stage3[v991];
    v653 = silk_CB_lags_stage3;
    v654 = 34;
  }

  else
  {
    v653 = &silk_CB_lags_stage3_10_ms;
    v654 = 12;
    v652 = 12;
  }

  v552 = v989;
  v326 = v990;
  v551 = v987;
LABEL_290:
  v655 = v1000;
  v656 = (4 * v992);
  v657 = (v992 * v327);
  if (v657 < 4)
  {
    LODWORD(v662) = 0;
    v661 = 0.0;
    if (v657 > 0)
    {
      goto LABEL_303;
    }
  }

  else
  {
    v658 = (v657 - 3);
    v659 = 4;
    if (v658 > 4)
    {
      v659 = (v657 - 3);
    }

    if (v658 <= 0xC)
    {
      v660 = 0;
      v661 = 0.0;
      goto LABEL_300;
    }

    v663 = ((v659 - 1) >> 2) + 1;
    v660 = 4 * (v663 & 0x7FFFFFFFFFFFFFFCLL);
    v664 = &v551[v656 + 8];
    v661 = 0.0;
    v665 = v663 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v666 = v664 - 8;
      v1059 = vld4_f32(v666);
      v1066 = vld4_f32(v664);
      v667 = vcvtq_f64_f32(v1059.val[0]);
      v668 = vcvtq_f64_f32(v1066.val[0]);
      v669 = vcvtq_f64_f32(v1059.val[1]);
      v670 = vcvtq_f64_f32(v1066.val[1]);
      v671 = vmlaq_f64(vmulq_f64(v669, v669), v667, v667);
      v672 = vmlaq_f64(vmulq_f64(v670, v670), v668, v668);
      v673 = vcvtq_f64_f32(v1059.val[2]);
      v674 = vcvtq_f64_f32(v1066.val[2]);
      *v1059.val[0].f32 = vcvtq_f64_f32(v1059.val[3]);
      *v1059.val[1].f32 = vcvtq_f64_f32(v1066.val[3]);
      v675 = vmlaq_f64(vmlaq_f64(v671, v673, v673), *v1059.val[0].f32, *v1059.val[0].f32);
      v676 = vmlaq_f64(vmlaq_f64(v672, v674, v674), *v1059.val[1].f32, *v1059.val[1].f32);
      v661 = v661 + v675.f64[0] + v675.f64[1] + v676.f64[0] + v676.f64[1];
      v664 += 16;
      v665 -= 4;
    }

    while (v665);
    if (v663 != (v663 & 0x7FFFFFFFFFFFFFFCLL))
    {
LABEL_300:
      v677 = &v551[v660 + 2 + v656];
      do
      {
        v678 = *(v677 - 1) * *(v677 - 1) + *(v677 - 2) * *(v677 - 2);
        v679 = *v677;
        v680 = v677[1];
        v677 += 4;
        v661 = v661 + v678 + v679 * v679 + v680 * v680;
        v660 += 4;
      }

      while (v660 < v658);
    }

    LODWORD(v662) = v657 & 0x7FFFFFFC;
    if ((v657 & 0x7FFFFFFC) < v657)
    {
LABEL_303:
      v681 = v662;
      v682 = v657 - v662;
      if (v682 <= 7)
      {
        v662 = v662;
        goto LABEL_308;
      }

      v662 = (v682 & 0xFFFFFFFFFFFFFFF8) + v662;
      v683 = &v551[v681 + 4 + v656];
      v684 = v682 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v685 = *v683[-2].f32;
        v686 = vcvtq_f64_f32(*v685.f32);
        v687 = vcvt_hight_f64_f32(v685);
        v688 = vcvtq_f64_f32(*v683);
        v689 = vcvt_hight_f64_f32(*v683->f32);
        v690 = vmulq_f64(v687, v687);
        v691 = vmulq_f64(v686, v686);
        v692 = vmulq_f64(v689, v689);
        v693 = vmulq_f64(v688, v688);
        v661 = v661 + v691.f64[0] + v691.f64[1] + v690.f64[0] + v690.f64[1] + v693.f64[0] + v693.f64[1] + v692.f64[0] + v692.f64[1];
        v683 += 4;
        v684 -= 8;
      }

      while (v684);
      if (v682 != (v682 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_308:
        v694 = v657 - v662;
        v695 = &v551[v662 + v656];
        do
        {
          v696 = *v695++;
          v661 = v661 + v696 * v696;
          --v694;
        }

        while (v694);
      }
    }
  }

  if (v555 <= v998)
  {
    v701 = 0;
    v324 = 0;
    v702 = v661 + 1.0;
    v703 = v998 - v555 + 1;
    v704 = v1020;
    v705 = v1019;
    v706 = -1000.0;
    do
    {
      if (v652 >= 1)
      {
        if (v327 <= 0)
        {
          for (j = 0; j != v652; ++j)
          {
            if (v706 < 0.0 && (v555 + silk_CB_lags_stage3[j]) < v1006)
            {
              v706 = 0.0;
              v324 = j;
              v655 = v555;
            }
          }
        }

        else
        {
          v707 = 0;
          v708 = v705;
          v709 = v704;
          do
          {
            v710 = 0.0;
            v711 = v708;
            v712 = v709;
            v713 = v327;
            v714 = v702;
            do
            {
              v710 = v710 + *v711;
              v714 = v714 + *v712;
              v712 += 170;
              v711 += 170;
              --v713;
            }

            while (v713);
            v715 = 0.0;
            if (v710 > 0.0)
            {
              v716 = (v710 + v710) / v714;
              v715 = (((-0.05 / v1000) * v707) + 1.0) * v716;
            }

            if (v715 > v706 && (v555 + silk_CB_lags_stage3[v707]) < v1006)
            {
              v706 = v715;
              v324 = v707;
              v655 = v555;
            }

            ++v707;
            v709 += 10;
            v708 += 5;
          }

          while (v707 != v652);
        }
      }

      ++v701;
      ++v555;
      v704 += 2;
      ++v705;
    }

    while (v701 != v703);
  }

  else
  {
    v324 = 0;
  }

  if (v327 >= 1)
  {
    v697 = &v653[v324];
    do
    {
      v698 = v655 + *v697;
      if (v698 <= v1004)
      {
        v699 = v1004;
      }

      else
      {
        v699 = v655 + *v697;
      }

      if (v698 <= v1006)
      {
        v700 = v699;
      }

      else
      {
        v700 = v1006;
      }

      *v552++ = v700;
      v697 += v654;
      --v327;
    }

    while (v327);
  }

  v550 = v655 - v1004;
LABEL_322:
  result = 0;
  *v988 = v550;
LABEL_323:
  *v326 = v324;
  return result;
}

void silk_PLC(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4, int a5)
{
  v6 = *(a1 + 2316);
  if (v6 != *(a1 + 4276))
  {
    *(a1 + 4196) = *(a1 + 2328) << 7;
    *(a1 + 4268) = 0x1000000010000;
    *(a1 + 4280) = 0x1400000002;
    *(a1 + 4276) = v6;
  }

  if (a4)
  {
    silk_PLC_conceal(a1, a2, a3, a5);
    ++*(a1 + 4184);
  }

  else
  {
    v7 = *(a1 + 2789);
    *(a1 + 4188) = v7;
    if (v7 == 2)
    {
      v8 = 0;
      v9 = *(a1 + 2324);
      if (v9)
      {
        v10 = v9 - 1;
        v11 = a2->i32[v10];
        if (v11 >= 1)
        {
          v8 = 0;
          v12 = a2 + 6;
          v13 = *(a1 + 2332);
          v14 = 1 - v9;
          v15 = v9 - 1;
          v16 = (v9 << 16) - 0x10000;
          v17 = 5 * v9 - 5;
          v18 = v13;
          do
          {
            v19 = vaddvq_s32(vmovl_s16(*&v12->i8[2 * v17])) + v12->i16[v17 + 4];
            if (v19 > v8)
            {
              v20 = &v12->i8[10 * (v16 >> 16)];
              v21 = *v20;
              *(a1 + 4208) = *(v20 + 4);
              *(a1 + 4200) = v21;
              *(a1 + 4196) = a2->i32[v15] << 8;
              v11 = a2->i32[v10];
              v8 = v19;
            }

            if (!v14)
            {
              break;
            }

            ++v14;
            --v15;
            v16 -= 0x10000;
            v17 -= 5;
            v22 = v18 < v11;
            v18 += v13;
          }

          while (v22);
        }
      }

      *(a1 + 4200) = 0;
      *(a1 + 4208) = 0;
      *(a1 + 4204) = v8;
      if (v8 > 11468)
      {
        if (v8 >= 0x3CCE)
        {
          *(a1 + 4200) = (0xF334000 / v8 * *(a1 + 4200)) >> 14;
          *(a1 + 4202) = (0xF334000 / v8 * *(a1 + 4202)) >> 14;
          *(a1 + 4204) = (0xF334000 / v8 * v8) >> 14;
          *(a1 + 4206) = (0xF334000 / v8 * *(a1 + 4206)) >> 14;
          *(a1 + 4208) = (0xF334000 / v8 * *(a1 + 4208)) >> 14;
        }
      }

      else
      {
        if (v8 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v8;
        }

        v24 = (0xB33400 / v23);
        *(a1 + 4200) = (v24 * *(a1 + 4200)) >> 10;
        *(a1 + 4202) = (v24 * *(a1 + 4202)) >> 10;
        *(a1 + 4204) = (v24 * v8) >> 10;
        *(a1 + 4206) = (v24 * *(a1 + 4206)) >> 10;
        *(a1 + 4208) = (v24 * *(a1 + 4208)) >> 10;
      }
    }

    else
    {
      *(a1 + 4196) = 4608 * v6;
      *(a1 + 4200) = 0;
      *(a1 + 4208) = 0;
    }

    memcpy((a1 + 4210), &a2[4], 2 * *(a1 + 2340));
    *(a1 + 4264) = a2[8].i32[2];
    v26 = *(a1 + 2324);
    *(a1 + 4268) = *(&a2->i64[1] + 4 * v26);
    *(a1 + 4284) = *(a1 + 2332);
    *(a1 + 4280) = v26;
  }
}

int32x4_t silk_PLC_conceal(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4)
{
  LODWORD(v128) = a4;
  v121 = a3;
  v5 = a1;
  v117[1] = v117;
  *&v139[10] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x28223BE20](a1, a2, a3);
  v127 = v117 - v7;
  v8 = *(v6 + 2336);
  v11 = MEMORY[0x28223BE20](v6, v9, v10);
  v129 = v117 - ((v12 + 15) & 0x3FFFFFFF0);
  v13 = (v11[1067] >> 6);
  v122 = (v11[1068] >> 6);
  if (v11[594])
  {
    *(v5 + 4210) = 0u;
    *(v5 + 4226) = 0u;
  }

  v130 = 0;
  v131 = 0;
  v14 = *(v5 + 2332);
  v116 = *(v5 + 2324);
  v125 = v5 + 4;
  silk_PLC_energy(&v130 + 4, &v131 + 4, &v130, &v131, v5 + 4, v13, v122, v14, v116);
  v15 = *(v5 + 4284) * (*(v5 + 4280) - (SHIDWORD(v130) >> v131 < v130 >> SBYTE4(v131)));
  if (v15 <= 128)
  {
    v15 = 128;
  }

  LODWORD(v124) = v15;
  LOWORD(v16) = *(v5 + 4252);
  v17 = *(v5 + 4184);
  if (v17 >= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = *(v5 + 4184);
  }

  v19 = HARM_ATT_Q15[v18];
  v20 = &PLC_RAND_ATTENUATE_UV_Q15;
  v21 = *(v5 + 4188);
  if (v21 == 2)
  {
    v20 = &PLC_RAND_ATTENUATE_V_Q15;
  }

  v22 = v20[v18];
  v126 = v20[v18];
  v23 = *(v5 + 2340);
  v24 = 64881;
  if (v23 >= 2)
  {
    v25 = (v5 + 4210);
    v26 = (v23 - 1);
    do
    {
      *v25 = (((v24 * *v25) >> 15) + 1) >> 1;
      ++v25;
      v24 += (((-655 * v24) >> 15) + 1) >> 1;
      --v26;
    }

    while (v26);
  }

  *(v5 + 4210 + 2 * (v23 - 1)) = (((v24 * *(v5 + 4210 + 2 * (v23 - 1))) >> 15) + 1) >> 1;
  __memcpy_chk();
  v118 = a2;
  if (!v17)
  {
    if (v21 == 2)
    {
      v27 = (0x4000 - (vaddv_s16(*(v5 + 4200)) + *(v5 + 4208)));
      if (v27 <= 3277)
      {
        v27 = 3277;
      }

      v16 = (v27 * *(v5 + 4264)) >> 14;
    }

    else
    {
      v28 = silk_LPC_inverse_pred_gain_c((v5 + 4210), v23);
      if (v28 >= 0x8000000)
      {
        v29 = 0x8000000;
      }

      else
      {
        v29 = v28;
      }

      if (v29 <= 0x400000)
      {
        v29 = 0x400000;
      }

      v126 = (8 * v29 * v22) >> 30;
      v23 = *(v5 + 2340);
      v8 = *(v5 + 2336);
      LOWORD(v16) = 0x4000;
    }
  }

  v30 = v127;
  v31 = v129;
  v32 = *(v5 + 4248);
  v33 = ((*(v5 + 4196) >> 7) + 1) >> 1;
  v34 = v8 - v23 - v33 - 2;
  silk_LPC_analysis_filter(&v129[2 * v34], v5 + 2 * v34 + 1348, &v132, 2 - (-v23 - v33), v23);
  v35 = *(v5 + 4272);
  if (v35 >= 0)
  {
    v36 = *(v5 + 4272);
  }

  else
  {
    v36 = -v35;
  }

  v37 = __clz(v36);
  v38 = (((-((((0x1FFFFFFF / (v35 << (v37 - 1) >> 16)) << 19) * (v35 << (v37 - 1))) & 0xFFFFFFF800000000) >> 32) * (0x1FFFFFFF / (v35 << (v37 - 1) >> 16))) >> 16) + ((0x1FFFFFFF / (v35 << (v37 - 1) >> 16)) << 16);
  v39 = HIWORD(v36);
  v40 = v38 >> (16 - v37);
  v41 = v37 - 16;
  v42 = 0x80000000 >> v41;
  if (v38 > 0x80000000 >> v41)
  {
    v42 = v38;
  }

  if (v38 <= (0x7FFFFFFFu >> v41))
  {
    v43 = v42;
  }

  else
  {
    v43 = 0x7FFFFFFFu >> v41;
  }

  v44 = v43 << v41;
  if (v39)
  {
    v45 = v40;
  }

  else
  {
    v45 = v44;
  }

  v129 = *(v5 + 2340);
  v46 = v129 + v34;
  v47 = *(v5 + 2336);
  v48 = v122;
  if (v129 + v34 < v47)
  {
    if (v45 >= 0x3FFFFFFF)
    {
      v45 = 0x3FFFFFFF;
    }

    v49 = v46;
    v50 = v47 - v46;
    v51 = v46;
    if (v50 <= 1)
    {
      goto LABEL_42;
    }

    v51 = (v50 & 0xFFFFFFFFFFFFFFFELL) + v46;
    v52 = &v31[2 * v46 + 2];
    v53 = &v30[4 * v49 + 4];
    v54 = v50 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v55 = (*v52 * v45) >> 16;
      *(v53 - 1) = (*(v52 - 1) * v45) >> 16;
      *v53 = v55;
      v52 += 4;
      v53 += 8;
      v54 -= 2;
    }

    while (v54);
    if (v50 != (v50 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_42:
      v56 = v47 - v51;
      v57 = &v30[4 * v51];
      v58 = &v31[2 * v51];
      do
      {
        v59 = *v58;
        v58 += 2;
        *v57 = (v59 * v45) >> 16;
        v57 += 4;
        --v56;
      }

      while (v56);
    }
  }

  v60 = *(v5 + 2324);
  v128 = v5;
  if (v60 >= 1)
  {
    v123 = v47;
    v61 = 0;
    v62 = v125 + 4 * (v124 - 128);
    v63 = *(v5 + 2332);
    v64 = v126;
    v65 = 4608 * *(v5 + 2316);
    v66 = *(v5 + 4196);
    v67 = *(v5 + 4200);
    v68 = *(v5 + 4208);
    v69 = vdup_n_s16(v19);
    do
    {
      if (v63 >= 1)
      {
        v70 = &v127[4 * v8];
        v71 = -4 * v33;
        v72 = v63;
        do
        {
          v32 = 196314165 * v32 + 907633515;
          *v70 = 4 * ((((((v67.u16[1] << 16) * *&v70[v71 + 4]) & 0xFFFFFFFF00000000) + (v67.u16[0] << 16) * *&v70[v71 + 8] + (((v67.u16[2] << 16) * *&v70[v71]) & 0xFFFFFFFF00000000) + (((v67.u16[3] << 16) * *&v70[v71 - 4]) & 0xFFFFFFFF00000000) + (((v68 << 16) * *&v70[v71 - 8]) & 0x3FFFFFFF00000000) + 0x200000000) >> 32) + ((*(v62 + 4 * (v32 >> 25)) * v16) >> 16));
          v70 += 4;
          ++v8;
          --v72;
        }

        while (v72);
      }

      v67 = vshrn_n_s32(vmull_s16(v69, v67), 0xFuLL);
      v68 = (v68 * v19) >> 15;
      v16 = (v16 * v64) >> 15;
      if ((v66 + ((655 * v66) >> 16)) >= v65)
      {
        v66 = v65;
      }

      else
      {
        v66 += (655 * v66) >> 16;
      }

      v5 = v128;
      *(v128 + 4196) = v66;
      v33 = ((v66 >> 7) + 1) >> 1;
      ++v61;
    }

    while (v61 != v60);
    *(v5 + 4208) = v68;
    *(v5 + 4200) = v67;
    v48 = v122;
    v47 = v123;
    v30 = v127;
  }

  v73 = &v30[4 * v47];
  v127 = v73 - 64;
  v74 = *(v5 + 1300);
  *(v73 - 4) = *(v5 + 1284);
  *(v73 - 3) = v74;
  v75 = *(v5 + 1316);
  v76 = *(v5 + 1332);
  v117[0] = v5 + 1284;
  *(v73 - 2) = v75;
  *(v73 - 1) = v76;
  v77 = *(v5 + 2328);
  v78 = v121;
  if (v77 >= 1)
  {
    v79 = 0;
    v126 = v132.i16[0];
    LODWORD(v125) = v129 >> 1;
    v80 = v132.i16[1];
    v81 = v132.i16[2];
    v82 = v132.i16[3];
    v83 = v133;
    v84 = v134;
    v124 = (v129 - 10);
    v123 = (v129 - 10) & 0xFFFFFFFFFFFFFFFELL;
    v85 = &v30[4 * v47];
    v86 = v85 - 48;
    v87 = v135;
    v119 = v139;
    v120 = v123 + 10;
    v88 = v136;
    v89 = v85 - 4;
    v90 = v137;
    v91 = v138;
    while (1)
    {
      v95 = &v127[4 * v79];
      v96 = v125 + ((v95[15] * v126) >> 16) + ((v95[14] * v80) >> 16) + ((v95[13] * v81) >> 16) + ((v95[12] * v82) >> 16) + ((v95[11] * v83) >> 16) + ((v95[10] * v84) >> 16) + ((v95[9] * v87) >> 16) + ((v95[8] * v88) >> 16) + ((v95[7] * v90) >> 16) + ((v95[6] * v91) >> 16);
      if (v129 < 11)
      {
        goto LABEL_57;
      }

      if (v124 < 2)
      {
        break;
      }

      v98 = 0;
      v99 = v119;
      v100 = v123;
      v101 = v86;
      do
      {
        v103 = *v101;
        v102 = *(v101 + 1);
        v101 -= 8;
        v96 += (*(v99 - 1) * v102) >> 16;
        v98 += (*v99 * v103) >> 16;
        v99 += 2;
        v100 -= 2;
      }

      while (v100);
      v96 += v98;
      v97 = v120;
      v78 = v121;
      v48 = v122;
      if (v124 != v123)
      {
        goto LABEL_73;
      }

LABEL_57:
      if (v96 <= -134217728)
      {
        v92 = -134217728;
      }

      else
      {
        v92 = v96;
      }

      if (v92 >= 0x7FFFFFF)
      {
        v92 = 0x7FFFFFF;
      }

      v93 = vqadds_s32(*&v73[4 * v79], 16 * v92);
      *&v73[4 * v79] = v93;
      v94 = ((((v48 * v93) >> 16) >> 7) + 1) >> 1;
      if (v94 <= -32768)
      {
        v94 = -32768;
      }

      if (v94 >= 0x7FFF)
      {
        LOWORD(v94) = 0x7FFF;
      }

      *(v78 + 2 * v79++) = v94;
      v86 += 4;
      v89 += 4;
      if (v79 == v77)
      {
        goto LABEL_76;
      }
    }

    v97 = 10;
LABEL_73:
    v104 = &v129[-v97];
    v105 = &v132 + v97;
    v106 = &v89[-4 * v97];
    do
    {
      v108 = *v106--;
      v107 = v108;
      v109 = *v105++;
      v96 += (v109 * v107) >> 16;
      --v104;
    }

    while (v104);
    goto LABEL_57;
  }

LABEL_76:
  v110 = &v127[4 * v77];
  v111 = *(v110 + 1);
  v112 = v117[0];
  *v117[0] = *v110;
  v112[1] = v111;
  v113 = *(v110 + 3);
  v112[2] = *(v110 + 2);
  v112[3] = v113;
  v114 = v128;
  *(v128 + 4248) = v32;
  *(v114 + 4252) = v16;
  result = vdupq_n_s32(v33);
  *v118 = result;
  return result;
}

_DWORD *silk_PLC_glue_frames(_DWORD *result, __int16 *a2, signed int a3)
{
  if (result[1046])
  {
    v3 = __clz(a3);
    v4 = 31 - v3;
    v5 = (a3 - 1);
    if (a3 < 2)
    {
      v15 = 0;
      v8 = a3;
      if (a3 <= 0)
      {
LABEL_41:
        v48 = v3 + __clz(v8);
        v49 = (34 - v48) & ~((34 - v48) >> 31);
        if (a3 < 2)
        {
          v53 = 0;
          v52 = 0;
          if (a3 <= 0)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        v50 = 2;
        if (v5 > 2)
        {
          v50 = (a3 - 1);
        }

        if (v5 < 7)
        {
          v51 = 0;
          v52 = 0;
          goto LABEL_59;
        }

        v54 = ((v50 - 1) >> 1) + 1;
        v55 = vdupq_n_s32(v49);
        if (v5 >= 0x1F)
        {
          v56 = v54 & 0x7FFFFFFFFFFFFFF0;
          v57 = a2 + 16;
          v58 = 0uLL;
          v59 = vnegq_s32(v55);
          v60 = v54 & 0x7FFFFFFFFFFFFFF0;
          v61 = 0uLL;
          v62 = 0uLL;
          v63 = 0uLL;
          do
          {
            v64 = v57 - 16;
            v114 = vld2q_s16(v64);
            v118 = vld2q_s16(v57);
            v61 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v114.val[1], v114.val[1]), v114.val[0], v114.val[0]), v59), v61);
            v58 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v114.val[1].i8, *v114.val[1].i8), *v114.val[0].i8, *v114.val[0].i8), v59), v58);
            v63 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v118.val[1], v118.val[1]), v118.val[0], v118.val[0]), v59), v63);
            v62 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v118.val[1].i8, *v118.val[1].i8), *v118.val[0].i8, *v118.val[0].i8), v59), v62);
            v57 += 32;
            v60 -= 16;
          }

          while (v60);
          v52 = vaddvq_s32(vaddq_s32(vaddq_s32(v62, v58), vaddq_s32(v63, v61)));
          if (v54 == v56)
          {
            goto LABEL_60;
          }

          if ((v54 & 0xC) == 0)
          {
            v51 = 2 * v56;
            do
            {
LABEL_59:
              v52 += (a2[v51] * a2[v51] + a2[v51 + 1] * a2[v51 + 1]) >> v49;
              v51 += 2;
            }

            while (v51 < v5);
            goto LABEL_60;
          }
        }

        else
        {
          v52 = 0;
          v56 = 0;
        }

        v51 = 2 * (v54 & 0x7FFFFFFFFFFFFFFCLL);
        v65 = v52;
        v66 = &a2[2 * v56];
        v67 = v56 - (v54 & 0x7FFFFFFFFFFFFFFCLL);
        v68 = vnegq_s32(v55);
        do
        {
          v110 = vld2_s16(v66);
          v66 += 8;
          v65 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v110.val[1], v110.val[1]), v110.val[0], v110.val[0]), v68), v65);
          v67 += 4;
        }

        while (v67);
        v52 = vaddvq_s32(v65);
        if (v54 != (v54 & 0x7FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_59;
        }

LABEL_60:
        v53 = a3 & 0x7FFFFFFE;
        if ((a3 & 0x7FFFFFFE) >= a3)
        {
LABEL_62:
          result[1065] = v49;
          result[1064] = v52;
          result[1061] = 1;
          return result;
        }

LABEL_61:
        v69 = a2[v53];
        v52 += (v69 * v69) >> v49;
        goto LABEL_62;
      }

LABEL_40:
      v47 = a2[v15];
      v8 += (v47 * v47) >> v4;
      goto LABEL_41;
    }

    v6 = 2;
    if (v5 > 2)
    {
      v6 = (a3 - 1);
    }

    if (a3 < 8)
    {
      v7 = 0;
      v8 = a3;
      goto LABEL_38;
    }

    v16 = ((v6 - 1) >> 1) + 1;
    v17 = vdupq_n_s32(v4);
    if (a3 >= 0x20)
    {
      v18 = v16 & 0x7FFFFFFFFFFFFFF0;
      v20 = a3;
      v21 = 0uLL;
      v22 = a2 + 16;
      v23 = vnegq_s32(v17);
      v24 = v16 & 0x7FFFFFFFFFFFFFF0;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v27 = v22 - 16;
        v112 = vld2q_s16(v27);
        v116 = vld2q_s16(v22);
        v21 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v112.val[1], v112.val[1]), v112.val[0], v112.val[0]), v23), v21);
        v20 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v112.val[1].i8, *v112.val[1].i8), *v112.val[0].i8, *v112.val[0].i8), v23), v20);
        v26 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v116.val[1], v116.val[1]), v116.val[0], v116.val[0]), v23), v26);
        v25 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v116.val[1].i8, *v116.val[1].i8), *v116.val[0].i8, *v116.val[0].i8), v23), v25);
        v22 += 32;
        v24 -= 16;
      }

      while (v24);
      v8 = vaddvq_s32(vaddq_s32(vaddq_s32(v25, v20), vaddq_s32(v26, v21)));
      if (v16 == v18)
      {
        goto LABEL_39;
      }

      if ((v16 & 0xC) == 0)
      {
        v7 = 2 * v18;
        do
        {
LABEL_38:
          v8 += (a2[v7] * a2[v7] + a2[v7 + 1] * a2[v7 + 1]) >> v4;
          v7 += 2;
        }

        while (v7 < v5);
        goto LABEL_39;
      }
    }

    else
    {
      v18 = 0;
      v8 = a3;
    }

    v7 = 2 * (v16 & 0x7FFFFFFFFFFFFFFCLL);
    v28 = v8;
    v29 = &a2[2 * v18];
    v30 = v18 - (v16 & 0x7FFFFFFFFFFFFFFCLL);
    v31 = vnegq_s32(v17);
    do
    {
      v108 = vld2_s16(v29);
      v29 += 8;
      v28 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v108.val[1], v108.val[1]), v108.val[0], v108.val[0]), v31), v28);
      v30 += 4;
    }

    while (v30);
    v8 = vaddvq_s32(v28);
    if (v16 != (v16 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_38;
    }

LABEL_39:
    v15 = a3 & 0x7FFFFFFE;
    if ((a3 & 0x7FFFFFFE) >= a3)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (!result[1061])
  {
    goto LABEL_109;
  }

  v9 = __clz(a3);
  v10 = 31 - v9;
  v11 = (a3 - 1);
  if (a3 >= 2)
  {
    v12 = 2;
    if (v11 > 2)
    {
      v12 = (a3 - 1);
    }

    if (a3 < 8)
    {
      v13 = 0;
      v14 = a3;
      goto LABEL_64;
    }

    v32 = ((v12 - 1) >> 1) + 1;
    v33 = vdupq_n_s32(v10);
    if (a3 >= 0x20)
    {
      v34 = v32 & 0x7FFFFFFFFFFFFFF0;
      v35 = a3;
      v36 = 0uLL;
      v37 = a2 + 16;
      v38 = vnegq_s32(v33);
      v39 = v32 & 0x7FFFFFFFFFFFFFF0;
      v40 = 0uLL;
      v41 = 0uLL;
      do
      {
        v42 = v37 - 16;
        v113 = vld2q_s16(v42);
        v117 = vld2q_s16(v37);
        v36 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v113.val[1], v113.val[1]), v113.val[0], v113.val[0]), v38), v36);
        v35 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v113.val[1].i8, *v113.val[1].i8), *v113.val[0].i8, *v113.val[0].i8), v38), v35);
        v41 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v117.val[1], v117.val[1]), v117.val[0], v117.val[0]), v38), v41);
        v40 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v117.val[1].i8, *v117.val[1].i8), *v117.val[0].i8, *v117.val[0].i8), v38), v40);
        v37 += 32;
        v39 -= 16;
      }

      while (v39);
      v14 = vaddvq_s32(vaddq_s32(vaddq_s32(v40, v35), vaddq_s32(v41, v36)));
      if (v32 == v34)
      {
        goto LABEL_65;
      }

      if ((v32 & 0xC) == 0)
      {
        v13 = 2 * v34;
        do
        {
LABEL_64:
          v14 += (a2[v13] * a2[v13] + a2[v13 + 1] * a2[v13 + 1]) >> v10;
          v13 += 2;
        }

        while (v13 < v11);
        goto LABEL_65;
      }
    }

    else
    {
      v34 = 0;
      v14 = a3;
    }

    v13 = 2 * (v32 & 0x7FFFFFFFFFFFFFFCLL);
    v43 = v14;
    v44 = &a2[2 * v34];
    v45 = v34 - (v32 & 0x7FFFFFFFFFFFFFFCLL);
    v46 = vnegq_s32(v33);
    do
    {
      v109 = vld2_s16(v44);
      v44 += 8;
      v43 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v109.val[1], v109.val[1]), v109.val[0], v109.val[0]), v46), v43);
      v45 += 4;
    }

    while (v45);
    v14 = vaddvq_s32(v43);
    if (v32 != (v32 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_64;
    }

LABEL_65:
    v19 = a3 & 0x7FFFFFFE;
    if ((a3 & 0x7FFFFFFE) >= a3)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v19 = 0;
  v14 = a3;
  if (a3 > 0)
  {
LABEL_66:
    v70 = a2[v19];
    v14 += (v70 * v70) >> v10;
  }

LABEL_67:
  v71 = v9 + __clz(v14);
  v72 = (34 - v71) & ~((34 - v71) >> 31);
  if (a3 < 2)
  {
    v76 = 0;
    v75 = 0;
    if (a3 <= 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v73 = 2;
  if (v11 > 2)
  {
    v73 = (a3 - 1);
  }

  if (a3 < 8)
  {
    v74 = 0;
    v75 = 0;
    goto LABEL_85;
  }

  v77 = ((v73 - 1) >> 1) + 1;
  v78 = vdupq_n_s32(v72);
  if (a3 >= 0x20)
  {
    v79 = v77 & 0x7FFFFFFFFFFFFFF0;
    v80 = a2 + 16;
    v81 = 0uLL;
    v82 = vnegq_s32(v78);
    v83 = v77 & 0x7FFFFFFFFFFFFFF0;
    v84 = 0uLL;
    v85 = 0uLL;
    v86 = 0uLL;
    do
    {
      v87 = v80 - 16;
      v115 = vld2q_s16(v87);
      v119 = vld2q_s16(v80);
      v84 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v115.val[1], v115.val[1]), v115.val[0], v115.val[0]), v82), v84);
      v81 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v115.val[1].i8, *v115.val[1].i8), *v115.val[0].i8, *v115.val[0].i8), v82), v81);
      v86 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v119.val[1], v119.val[1]), v119.val[0], v119.val[0]), v82), v86);
      v85 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v119.val[1].i8, *v119.val[1].i8), *v119.val[0].i8, *v119.val[0].i8), v82), v85);
      v80 += 32;
      v83 -= 16;
    }

    while (v83);
    v75 = vaddvq_s32(vaddq_s32(vaddq_s32(v85, v81), vaddq_s32(v86, v84)));
    if (v77 == v79)
    {
      goto LABEL_86;
    }

    if ((v77 & 0xC) == 0)
    {
      v74 = 2 * v79;
      do
      {
LABEL_85:
        v75 += (a2[v74] * a2[v74] + a2[v74 + 1] * a2[v74 + 1]) >> v72;
        v74 += 2;
      }

      while (v74 < v11);
      goto LABEL_86;
    }
  }

  else
  {
    v75 = 0;
    v79 = 0;
  }

  v74 = 2 * (v77 & 0x7FFFFFFFFFFFFFFCLL);
  v88 = v75;
  v89 = &a2[2 * v79];
  v90 = v79 - (v77 & 0x7FFFFFFFFFFFFFFCLL);
  v91 = vnegq_s32(v78);
  do
  {
    v111 = vld2_s16(v89);
    v89 += 8;
    v88 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v111.val[1], v111.val[1]), v111.val[0], v111.val[0]), v91), v88);
    v90 += 4;
  }

  while (v90);
  v75 = vaddvq_s32(v88);
  if (v77 != (v77 & 0x7FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_85;
  }

LABEL_86:
  v76 = a3 & 0x7FFFFFFE;
  if ((a3 & 0x7FFFFFFE) < a3)
  {
LABEL_87:
    v92 = a2[v76];
    v75 += (v92 * v92) >> v72;
  }

LABEL_88:
  v93 = result[1065];
  if (v72 <= v93)
  {
    if (v72 < v93)
    {
      v75 >>= v93 - v72;
    }

    v94 = result[1064];
    if (v75 <= v94)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v94 = result[1064] >> (v72 - v93);
    result[1064] = v94;
    if (v75 <= v94)
    {
      goto LABEL_109;
    }
  }

  v95 = __clz(v94);
  v96 = v94 << (v95 - 1);
  result[1064] = v96;
  v97 = v75 >> ((25 - v95) & ~((25 - v95) >> 31));
  if (v97 <= 1)
  {
    v97 = 1;
  }

  v98 = v96 / v97;
  if (v98 >= 1)
  {
    v99 = __clz(v98);
    if (v99 != 24)
    {
      v100 = v98 > 0x7F;
      v101 = (v98 << (v99 + 8)) | (v98 >> (24 - v99));
      v98 <<= v99 - 24;
      if (v100)
      {
        LOBYTE(v98) = v101;
      }
    }

    v102 = v98 & 0x7F;
    if (v99)
    {
      v103 = 0x8000;
    }

    else
    {
      v103 = 46214;
    }

    v104 = 16 * ((v103 >> (v99 >> 1)) + ((213 * (v103 >> (v99 >> 1)) * v102) >> 16));
    if (a3 < 1)
    {
      goto LABEL_109;
    }

    goto LABEL_106;
  }

  v104 = 0;
  if (a3 >= 1)
  {
LABEL_106:
    v105 = 4 * ((0x10000 - v104) / a3);
    v106 = a3 - 1;
    do
    {
      v107 = v106;
      *a2 = (*a2 * v104) >> 16;
      ++a2;
      v104 += v105;
      if (v104 > 0x10000)
      {
        break;
      }

      --v106;
    }

    while (v107);
  }

LABEL_109:
  result[1061] = 0;
  return result;
}

uint64_t silk_PLC_energy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v137[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20](a1, a2, a3);
  v18 = (v137 - v17);
  v19 = (v137 + 2 * v16 - v17);
  if (v16 <= 0)
  {
    v23 = 0;
    v24 = __clz(v16);
    v25 = 31 - v24;
    LODWORD(v26) = v16 - 1;
    v27 = v16;
    goto LABEL_45;
  }

  v20 = (a9 - 2) * v16;
  v21 = v14;
  if (v16 >= 8)
  {
    v28 = (v13 + 4 * v20);
    v22 = v16 & 0x7FFFFFF8;
    v29 = vdupq_n_s32(v14);
    v30 = v22;
    v31 = v18;
    do
    {
      v33 = *v28;
      v32 = v28[1];
      v28 += 2;
      *v31++ = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v29.i8, *v33.i8), 0x10uLL), vmull_high_s32(v29, v33), 0x10uLL), 8uLL)), vshrq_n_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v29.i8, *v32.i8), 0x10uLL), vmull_high_s32(v29, v32), 0x10uLL), 8uLL));
      v30 -= 8;
    }

    while (v30);
    if (v22 == v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = 0;
  }

  v34 = v20;
  v35 = v16 - v22;
  v36 = &v18->i8[2 * v22];
  v37 = (v13 + 4 * v22 + 4 * v34);
  do
  {
    v38 = *v37++;
    v39 = ((v38 * v21) >> 16) >> 8;
    if (v39 <= -32768)
    {
      v39 = -32768;
    }

    if (v39 >= 0x7FFF)
    {
      LOWORD(v39) = 0x7FFF;
    }

    *v36 = v39;
    v36 += 2;
    --v35;
  }

  while (v35);
LABEL_14:
  v40 = (a9 - 1) * v16;
  if (v16 >= 8)
  {
    v42 = (v13 + 4 * v40);
    v41 = v16 & 0x7FFFFFF8;
    v43 = vdupq_n_s32(v15);
    v44 = v41;
    v45 = v19;
    do
    {
      v47 = *v42;
      v46 = v42[1];
      v42 += 2;
      *v45++ = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v43.i8, *v47.i8), 0x10uLL), vmull_high_s32(v43, v47), 0x10uLL), 8uLL)), vshrq_n_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v43.i8, *v46.i8), 0x10uLL), vmull_high_s32(v43, v46), 0x10uLL), 8uLL));
      v44 -= 8;
    }

    while (v44);
    if (v41 == v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v41 = 0;
  }

  v48 = v40;
  v49 = v16 - v41;
  v50 = &v18->i8[2 * v41 + 2 * v16];
  v51 = (v13 + 4 * v41 + 4 * v48);
  do
  {
    v52 = *v51++;
    v53 = ((v52 * v15) >> 16) >> 8;
    if (v53 <= -32768)
    {
      v53 = -32768;
    }

    if (v53 >= 0x7FFF)
    {
      LOWORD(v53) = 0x7FFF;
    }

    *v50 = v53;
    v50 += 2;
    --v49;
  }

  while (v49);
LABEL_25:
  v24 = __clz(v16);
  v25 = v24 ^ 0x1F;
  v26 = (v16 - 1);
  if (v16 != 1)
  {
    v55 = 2;
    if (v26 > 2)
    {
      v55 = (v16 - 1);
    }

    if (v16 < 8)
    {
      v56 = 0;
      v27 = v16;
      goto LABEL_42;
    }

    v57 = ((v55 - 1) >> 1) + 1;
    v58 = vdupq_n_s32(v25);
    if (v16 >= 0x20)
    {
      v59 = v57 & 0x7FFFFFFFFFFFFFF0;
      v60 = v16;
      v61 = 0uLL;
      i16 = v18[2].i16;
      v63 = vnegq_s32(v58);
      v64 = v57 & 0x7FFFFFFFFFFFFFF0;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v67 = i16 - 16;
        v142 = vld2q_s16(v67);
        v146 = vld2q_s16(i16);
        v61 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v142.val[1], v142.val[1]), v142.val[0], v142.val[0]), v63), v61);
        v60 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v142.val[1].i8, *v142.val[1].i8), *v142.val[0].i8, *v142.val[0].i8), v63), v60);
        v66 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v146.val[1], v146.val[1]), v146.val[0], v146.val[0]), v63), v66);
        v65 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v146.val[1].i8, *v146.val[1].i8), *v146.val[0].i8, *v146.val[0].i8), v63), v65);
        i16 += 32;
        v64 -= 16;
      }

      while (v64);
      v27 = vaddvq_s32(vaddq_s32(vaddq_s32(v65, v60), vaddq_s32(v66, v61)));
      if (v57 == v59)
      {
        goto LABEL_43;
      }

      if ((v57 & 0xC) == 0)
      {
        v56 = 2 * v59;
        do
        {
LABEL_42:
          v27 += (v18->i16[v56] * v18->i16[v56] + v18->i16[v56 + 1] * v18->i16[v56 + 1]) >> v25;
          v56 += 2;
        }

        while (v56 < v26);
        goto LABEL_43;
      }
    }

    else
    {
      v59 = 0;
      v27 = v16;
    }

    v56 = 2 * (v57 & 0x7FFFFFFFFFFFFFFCLL);
    v68 = v27;
    v69 = &v18->i16[2 * v59];
    v70 = v59 - (v57 & 0x7FFFFFFFFFFFFFFCLL);
    v71 = vnegq_s32(v58);
    do
    {
      v138 = vld2_s16(v69);
      v69 += 8;
      v68 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v138.val[1], v138.val[1]), v138.val[0], v138.val[0]), v71), v68);
      v70 += 4;
    }

    while (v70);
    v27 = vaddvq_s32(v68);
    if (v57 != (v57 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_42;
    }

LABEL_43:
    v54 = v16 & 0x7FFFFFFE;
    v23 = 1;
    if ((v16 & 0x7FFFFFFE) >= v16)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v23 = 0;
  v54 = 0;
  v27 = 1;
LABEL_44:
  v72 = v18->i16[v54];
  v27 += (v72 * v72) >> v25;
LABEL_45:
  v73 = __clz(v27);
  v74 = (34 - v24 - v73) & ~((34 - v24 - v73) >> 31);
  v75 = v26;
  if (v23)
  {
    v76 = 2;
    if (v26 > 2uLL)
    {
      v76 = v26;
    }

    if (v26 < 7)
    {
      v77 = 0;
      v78 = 0;
      goto LABEL_63;
    }

    v80 = ((v76 - 1) >> 1) + 1;
    v81 = vdupq_n_s32(v74);
    if (v26 >= 0x1F)
    {
      v82 = v80 & 0x7FFFFFFFFFFFFFF0;
      v83 = v18[2].i16;
      v84 = 0uLL;
      v85 = vnegq_s32(v81);
      v86 = v80 & 0x7FFFFFFFFFFFFFF0;
      v87 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      do
      {
        v90 = v83 - 16;
        v143 = vld2q_s16(v90);
        v147 = vld2q_s16(v83);
        v87 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v143.val[1], v143.val[1]), v143.val[0], v143.val[0]), v85), v87);
        v84 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v143.val[1].i8, *v143.val[1].i8), *v143.val[0].i8, *v143.val[0].i8), v85), v84);
        v89 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v147.val[1], v147.val[1]), v147.val[0], v147.val[0]), v85), v89);
        v88 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v147.val[1].i8, *v147.val[1].i8), *v147.val[0].i8, *v147.val[0].i8), v85), v88);
        v83 += 32;
        v86 -= 16;
      }

      while (v86);
      v78 = vaddvq_s32(vaddq_s32(vaddq_s32(v88, v84), vaddq_s32(v89, v87)));
      if (v80 == v82)
      {
        goto LABEL_64;
      }

      if ((v80 & 0xC) == 0)
      {
        v77 = 2 * v82;
        do
        {
LABEL_63:
          v78 += (v18->i16[v77] * v18->i16[v77] + v18->i16[v77 + 1] * v18->i16[v77 + 1]) >> v74;
          v77 += 2;
        }

        while (v77 < v26);
        goto LABEL_64;
      }
    }

    else
    {
      v78 = 0;
      v82 = 0;
    }

    v77 = 2 * (v80 & 0x7FFFFFFFFFFFFFFCLL);
    v91 = v78;
    v92 = &v18->i16[2 * v82];
    v93 = v82 - (v80 & 0x7FFFFFFFFFFFFFFCLL);
    v94 = vnegq_s32(v81);
    do
    {
      v139 = vld2_s16(v92);
      v92 += 8;
      v91 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v139.val[1], v139.val[1]), v139.val[0], v139.val[0]), v94), v91);
      v93 += 4;
    }

    while (v93);
    v78 = vaddvq_s32(v91);
    if (v80 != (v80 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_63;
    }

LABEL_64:
    v79 = v16 & 0x7FFFFFFE;
    if ((v16 & 0x7FFFFFFE) >= v16)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v79 = 0;
  v78 = 0;
  if (v16 > 0)
  {
LABEL_65:
    v95 = v18->i16[v79];
    v78 += (v95 * v95) >> v74;
  }

LABEL_66:
  *v10 = v74;
  *v9 = v78;
  if (v23)
  {
    v96 = 2;
    if (v26 > 2uLL)
    {
      v96 = v26;
    }

    if (v26 < 7)
    {
      v97 = 0;
      LODWORD(result) = v16;
      goto LABEL_84;
    }

    v100 = ((v96 - 1) >> 1) + 1;
    v101 = vdupq_n_s32(v25);
    if (v26 >= 0x1F)
    {
      v102 = v100 & 0x7FFFFFFFFFFFFFF0;
      v103 = v16;
      v104 = 0uLL;
      v105 = v19[2].i16;
      v106 = vnegq_s32(v101);
      v107 = v100 & 0x7FFFFFFFFFFFFFF0;
      v108 = 0uLL;
      v109 = 0uLL;
      do
      {
        v110 = v105 - 16;
        v144 = vld2q_s16(v110);
        v148 = vld2q_s16(v105);
        v104 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v144.val[1], v144.val[1]), v144.val[0], v144.val[0]), v106), v104);
        v103 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v144.val[1].i8, *v144.val[1].i8), *v144.val[0].i8, *v144.val[0].i8), v106), v103);
        v109 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v148.val[1], v148.val[1]), v148.val[0], v148.val[0]), v106), v109);
        v108 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v148.val[1].i8, *v148.val[1].i8), *v148.val[0].i8, *v148.val[0].i8), v106), v108);
        v105 += 32;
        v107 -= 16;
      }

      while (v107);
      result = vaddvq_s32(vaddq_s32(vaddq_s32(v108, v103), vaddq_s32(v109, v104)));
      if (v100 == v102)
      {
        goto LABEL_85;
      }

      if ((v100 & 0xC) == 0)
      {
        v97 = 2 * v102;
        do
        {
LABEL_84:
          result = ((v19->i16[v97] * v19->i16[v97] + v19->i16[v97 + 1] * v19->i16[v97 + 1]) >> v25) + result;
          v97 += 2;
        }

        while (v97 < v26);
        goto LABEL_85;
      }
    }

    else
    {
      v102 = 0;
      LODWORD(result) = v16;
    }

    v111 = result;
    v97 = 2 * (v100 & 0x7FFFFFFFFFFFFFFCLL);
    v112 = &v18->i16[2 * v102 + v16];
    v113 = v102 - (v100 & 0x7FFFFFFFFFFFFFFCLL);
    v114 = vnegq_s32(v101);
    do
    {
      v140 = vld2_s16(v112);
      v112 += 8;
      v111 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v140.val[1], v140.val[1]), v140.val[0], v140.val[0]), v114), v111);
      v113 += 4;
    }

    while (v113);
    result = vaddvq_s32(v111);
    if (v100 != (v100 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_84;
    }

LABEL_85:
    v99 = v16 & 0x7FFFFFFE;
    if ((v16 & 0x7FFFFFFE) >= v16)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  v99 = 0;
  result = v16;
  if (v16 > 0)
  {
LABEL_86:
    v115 = v19->i16[v99];
    result = ((v115 * v115) >> v25) + result;
  }

LABEL_87:
  v116 = __clz(result);
  v117 = (34 - v24 - v116) & ~((34 - v24 - v116) >> 31);
  if (!v23)
  {
    v120 = 0;
    if (v16 <= 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  v118 = 2;
  if (v26 > 2uLL)
  {
    v118 = v26;
  }

  if (v26 < 7)
  {
    v119 = 0;
    v23 = 0;
    goto LABEL_105;
  }

  v121 = ((v118 - 1) >> 1) + 1;
  v122 = vdupq_n_s32(v117);
  if (v26 >= 0x1F)
  {
    v123 = v121 & 0x7FFFFFFFFFFFFFF0;
    v124 = v19[2].i16;
    v125 = 0uLL;
    v126 = vnegq_s32(v122);
    v127 = v121 & 0x7FFFFFFFFFFFFFF0;
    v128 = 0uLL;
    v129 = 0uLL;
    v130 = 0uLL;
    do
    {
      v131 = v124 - 16;
      v145 = vld2q_s16(v131);
      v149 = vld2q_s16(v124);
      v128 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v145.val[1], v145.val[1]), v145.val[0], v145.val[0]), v126), v128);
      v125 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v145.val[1].i8, *v145.val[1].i8), *v145.val[0].i8, *v145.val[0].i8), v126), v125);
      v130 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v149.val[1], v149.val[1]), v149.val[0], v149.val[0]), v126), v130);
      v129 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v149.val[1].i8, *v149.val[1].i8), *v149.val[0].i8, *v149.val[0].i8), v126), v129);
      v124 += 32;
      v127 -= 16;
    }

    while (v127);
    v23 = vaddvq_s32(vaddq_s32(vaddq_s32(v129, v125), vaddq_s32(v130, v128)));
    if (v121 == v123)
    {
      goto LABEL_106;
    }

    if ((v121 & 0xC) == 0)
    {
      v119 = 2 * v123;
      do
      {
LABEL_105:
        v23 += (v19->i16[v119] * v19->i16[v119] + v19->i16[v119 + 1] * v19->i16[v119 + 1]) >> v117;
        v119 += 2;
      }

      while (v119 < v75);
      goto LABEL_106;
    }
  }

  else
  {
    v23 = 0;
    v123 = 0;
  }

  v132 = v23;
  v119 = 2 * (v121 & 0x7FFFFFFFFFFFFFFCLL);
  v133 = &v18->i16[2 * v123 + v16];
  v134 = v123 - (v121 & 0x7FFFFFFFFFFFFFFCLL);
  v135 = vnegq_s32(v122);
  do
  {
    v141 = vld2_s16(v133);
    v133 += 8;
    v132 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v141.val[1], v141.val[1]), v141.val[0], v141.val[0]), v135), v132);
    v134 += 4;
  }

  while (v134);
  v23 = vaddvq_s32(v132);
  if (v121 != (v121 & 0x7FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_105;
  }

LABEL_106:
  v120 = v16 & 0x7FFFFFFE;
  if ((v16 & 0x7FFFFFFE) < v16)
  {
LABEL_107:
    v136 = v19->i16[v120];
    v23 += (v136 * v136) >> v117;
  }

LABEL_108:
  *v12 = v117;
  *v11 = v23;
  return result;
}

float32_t silk_process_gains_FLP(uint64_t a1, float32x4_t *a2, int a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a1 + 4096;
  if (*(a1 + 4781) != 2)
  {
    LODWORD(v8) = *(a1 + 4580);
    goto LABEL_11;
  }

  v7 = exp(((a2[44].f32[1] + -12.0) * -0.25));
  v8 = *(a1 + 4580);
  if (v8 < 1)
  {
    goto LABEL_11;
  }

  v9 = 1.0 / (v7 + 1.0);
  v10 = (v9 * -0.5) + 1.0;
  if (v8 < 8)
  {
    v11 = 0;
LABEL_9:
    v15 = v8 - v11;
    v16 = &a2->f32[v11];
    do
    {
      *v16 = v10 * *v16;
      ++v16;
      --v15;
    }

    while (v15);
    goto LABEL_11;
  }

  v11 = v8 & 0x7FFFFFF8;
  v12 = a2 + 1;
  v13 = v11;
  do
  {
    v14 = vmulq_n_f32(*v12, v10);
    v12[-1] = vmulq_n_f32(v12[-1], v10);
    *v12 = v14;
    v12 += 2;
    v13 -= 8;
  }

  while (v13);
  if (v11 != v8)
  {
    goto LABEL_9;
  }

LABEL_11:
  v17 = exp2((((*(a1 + 4732) * -0.0078125) + 21.0) * 0.33));
  if (v8 < 1)
  {
    goto LABEL_26;
  }

  v18 = v17 / *(a1 + 4588);
  if (v8 < 8)
  {
    v19 = 0;
LABEL_17:
    v24 = v8 - v19;
    v25 = &a2->f32[v19];
    do
    {
      *v25 = fminf(sqrtf((v25[178] * v18) + (*v25 * *v25)), 32767.0);
      ++v25;
      --v24;
    }

    while (v24);
    goto LABEL_19;
  }

  v19 = v8 & 0x7FFFFFF8;
  v20 = vdupq_n_s32(0x46FFFE00u);
  v21 = v19;
  v22 = a2;
  do
  {
    v23 = vminnmq_f32(vsqrtq_f32(vmlaq_f32(vmulq_n_f32(*(v22 + 728), v18), v22[1], v22[1])), v20);
    *v22 = vminnmq_f32(vsqrtq_f32(vmlaq_f32(vmulq_n_f32(*(v22 + 712), v18), *v22, *v22)), v20);
    v22[1] = v23;
    v22 += 2;
    v21 -= 8;
  }

  while (v21);
  if (v19 != v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (v8 < 8)
  {
    v26 = 0;
LABEL_24:
    v31 = v8 - v26;
    v32 = v26;
    v33 = &__src[4 * v26];
    v34 = &a2->f32[v32];
    do
    {
      v35 = *v34++;
      *v33++ = vcvts_n_s32_f32(v35, 0x10uLL);
      --v31;
    }

    while (v31);
    goto LABEL_26;
  }

  v26 = v8 & 0x7FFFFFF8;
  v27 = a2 + 1;
  v28 = &v52;
  v29 = v26;
  do
  {
    v30 = vcvtq_n_s32_f32(*v27, 0x10uLL);
    v28[-1] = vcvtq_n_s32_f32(v27[-1], 0x10uLL);
    *v28 = v30;
    v27 += 2;
    v28 += 2;
    v29 -= 8;
  }

  while (v29);
  if (v26 != v8)
  {
    goto LABEL_24;
  }

LABEL_26:
  memcpy(&a2[45].u32[2], __src, 4 * v8);
  a2[46].i8[8] = *(a1 + 7192);
  silk_gains_quant(a1 + 4752, __src, (a1 + 7192), a3 == 2, *(a1 + 4580));
  v36 = *(a1 + 4580);
  if (v36 >= 1)
  {
    if (v36 >= 8)
    {
      v37 = v36 & 0x7FFFFFF8;
      v38 = &v52;
      v39 = a2 + 1;
      v40 = vdupq_n_s32(0x37800000u);
      v41 = v37;
      do
      {
        v42 = vmulq_f32(vcvtq_f32_s32(*v38), v40);
        v39[-1] = vmulq_f32(vcvtq_f32_s32(v38[-1]), v40);
        *v39 = v42;
        v38 += 2;
        v39 += 2;
        v41 -= 8;
      }

      while (v41);
      if (v37 == v36)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v37 = 0;
    }

    v43 = v36 - v37;
    v44 = 4 * v37;
    v45 = &a2->f32[v37];
    v46 = &__src[v44];
    do
    {
      v47 = *v46++;
      *v45++ = v47 * 0.000015259;
      --v43;
    }

    while (v43);
  }

LABEL_34:
  v48 = *(v6 + 685);
  if (v48 == 2)
  {
    if ((a2[44].f32[1] + (*(a1 + 4728) * 0.000030518)) <= 1.0)
    {
      v49 = 1;
      *(v6 + 686) = 1;
    }

    else
    {
      v49 = 0;
      *(v6 + 686) = 0;
    }
  }

  else
  {
    v49 = *(v6 + 686);
  }

  result = (((((*(a1 + 4628) * -0.05) + 1.2) + ((*(a1 + 4532) * -0.2) * 0.0039062)) + (a2[43].f32[2] * -0.1)) + (a2[43].f32[3] * -0.2)) + (vcvts_n_f32_s32(silk_Quantization_Offsets_Q10[2 * (v48 >> 1) + v49], 0xAuLL) * 0.8);
  a2[43].f32[1] = result;
  return result;
}

void *silk_process_NLSFs(uint64_t a1, int16x8_t *a2, __int16 *a3, int16x8_t *a4)
{
  v130[2] = *MEMORY[0x277D85DE8];
  v8 = ((0xFFFFFFFBE76ELL * *(a1 + 4532)) >> 16) + 3146;
  if (*(a1 + 4580) == 2)
  {
    v9 = v8 >> 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 4640);
  v11 = *a3;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = *a3;
  }

  v13 = 0x20000 / v12;
  v14 = a3[1];
  v15 = v14 - v11;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v16 = 0x20000u / v15;
  v17 = 0x20000u / v15 + v13;
  if (v17 >= 0x7FFF)
  {
    LOWORD(v17) = 0x7FFF;
  }

  v127.i16[0] = v17;
  v18 = v10 - 1;
  LODWORD(v19) = v10 - 1;
  if (v10 > 2)
  {
    v20 = 0;
    v21 = v14;
    v18 = v19;
    do
    {
      v22 = &a3[v20];
      v23 = v22[2];
      v24 = v23 - v21;
      if (v24 <= 1)
      {
        v24 = 1;
      }

      v25 = 0x20000u / v24;
      v26 = 0x20000u / v24 + v16;
      if (v26 >= 0x7FFF)
      {
        LOWORD(v26) = 0x7FFF;
      }

      v27 = &v127.i8[2 * v20];
      *(v27 + 1) = v26;
      v21 = v22[3];
      v28 = v21 - v23;
      if (v28 <= 1)
      {
        v28 = 1;
      }

      v16 = 0x20000u / v28;
      v29 = v16 + v25;
      if (v16 + v25 >= 0x7FFF)
      {
        v29 = 0x7FFF;
      }

      *(v27 + 2) = v29;
      v30 = v20 + 3;
      v20 += 2;
    }

    while (v30 < v19);
  }

  v31 = 0x20000u / (0x8000 - a3[v18]) + v16;
  if (v31 >= 0x7FFF)
  {
    LOWORD(v31) = 0x7FFF;
  }

  v32 = &v127;
  v127.i16[v18] = v31;
  if (*(a1 + 4632) != 1 || (v33 = *(a1 + 4783), v33 > 3))
  {
    v35 = 0;
    goto LABEL_80;
  }

  if (v10 < 1)
  {
    v36 = 0;
    goto LABEL_43;
  }

  if (v10 >= 4)
  {
    v37 = vdupq_n_s32(v33);
    if (v10 >= 0x10)
    {
      v34 = v10 & 0x7FFFFFF0;
      v38 = a4 + 1;
      v39 = (a3 + 8);
      v40 = v130;
      v41 = v34;
      do
      {
        v42 = v38[-1];
        v43 = vsubq_s16(v39[-1], v42);
        v44 = vsubq_s16(*v39, *v38);
        v45 = vaddq_s16(*v38, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v37, vmovl_s16(*v44.i8)), 2uLL), vmulq_s32(v37, vmovl_high_s16(v44)), 2uLL));
        v40[-1] = vaddq_s16(v42, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v37, vmovl_s16(*v43.i8)), 2uLL), vmulq_s32(v37, vmovl_high_s16(v43)), 2uLL));
        *v40 = v45;
        v38 += 2;
        v39 += 2;
        v40 += 2;
        v41 -= 16;
      }

      while (v41);
      if (v34 == v10)
      {
        goto LABEL_42;
      }

      if ((v10 & 0xC) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v34 = 0;
    }

    v46 = v34;
    v34 = v10 & 0x7FFFFFFC;
    v47 = (a4 + 2 * v46);
    v48 = &a3[v46];
    v49 = &v129[v46];
    v50 = v46 - v34;
    do
    {
      v51 = *v47++;
      v52 = v51;
      v53 = *v48++;
      *v49++ = vadd_s16(v52, vshrn_n_s32(vmulq_s32(v37, vmovl_s16(vsub_s16(v53, v52))), 2uLL));
      v50 += 4;
    }

    while (v50);
    if (v34 == v10)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v34 = 0;
LABEL_40:
  v54 = v10 - v34;
  v55 = v34;
  v56 = &v129[v34];
  v57 = &a3[v55];
  v58 = &a4->i16[v55];
  do
  {
    v60 = *v58++;
    v59 = v60;
    v61 = *v57++;
    *v56++ = v59 + (((v61 - v59) * v33) >> 2);
    --v54;
  }

  while (v54);
LABEL_42:
  v36 = v129[0];
  LOWORD(v32) = v129[1];
LABEL_43:
  if (v36 <= 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = v36;
  }

  v63 = 0x20000 / v62;
  v64 = v32 - v36;
  if (v64 <= 1)
  {
    v64 = 1;
  }

  v65 = 0x20000u / v64;
  v66 = v65 + v63;
  if (v65 + v63 >= 0x7FFF)
  {
    v66 = 0x7FFF;
  }

  v125[0] = v66;
  if (v10 <= 2)
  {
    v19 = v19;
  }

  else
  {
    v67 = 0;
    v19 = v19;
    do
    {
      v68 = &v129[v67];
      v69 = v68[2];
      v70 = v69 - v32;
      if (v70 <= 1)
      {
        v70 = 1;
      }

      v71 = 0x20000u / v70;
      LODWORD(v32) = 0x20000u / v70 + v65;
      if (v32 >= 0x7FFF)
      {
        LOWORD(v32) = 0x7FFF;
      }

      v72 = &v125[v67];
      v72[1] = v32;
      LOWORD(v32) = v68[3];
      v73 = v32 - v69;
      if (v73 <= 1)
      {
        v73 = 1;
      }

      v65 = 0x20000u / v73;
      v74 = v65 + v71;
      if (v65 + v71 >= 0x7FFF)
      {
        v74 = 0x7FFF;
      }

      v72[2] = v74;
      v75 = v67 + 3;
      v67 += 2;
    }

    while (v75 < v19);
  }

  v76 = 0x20000u / (0x8000 - v129[v19]) + v65;
  if (v76 >= 0x7FFF)
  {
    LOWORD(v76) = 0x7FFF;
  }

  v125[v19] = v76;
  if (v10 < 1)
  {
    goto LABEL_79;
  }

  v77 = ((v33 * v33) << 11);
  if (v10 >= 4)
  {
    if (v10 >= 0x10)
    {
      v78 = v10 & 0x7FFFFFF0;
      v79 = &v128;
      v80 = &v126;
      v81 = vdupq_n_s16(v77);
      v82 = v78;
      do
      {
        v83 = vsraq_n_s16(vuzp2q_s16(vmull_s16(*v81.i8, *v80), vmull_high_s16(v81, *v80->i8)), *v79, 1uLL);
        v79[-1] = vsraq_n_s16(vuzp2q_s16(vmull_s16(*v81.i8, v80[-2]), vmull_high_s16(v81, *v80[-2].i8)), v79[-1], 1uLL);
        *v79 = v83;
        v79 += 2;
        v80 += 4;
        v82 -= 16;
      }

      while (v82);
      if (v78 == v10)
      {
        goto LABEL_79;
      }

      if ((v10 & 0xC) == 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v78 = 0;
    }

    v84 = v78;
    v78 = v10 & 0x7FFFFFFC;
    v85 = (&v127 + 2 * v84);
    v86 = &v125[v84];
    v87 = v84 - v78;
    v88 = vdup_n_s16(v77);
    do
    {
      v89 = *v86++;
      *v85 = vsra_n_s16(vshrn_n_s32(vmull_s16(v88, v89), 0x10uLL), *v85, 1uLL);
      ++v85;
      v87 += 4;
    }

    while (v87);
    if (v78 == v10)
    {
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v78 = 0;
LABEL_77:
  v90 = v10 - v78;
  v91 = v78;
  v92 = &v125[v78];
  v93 = &v127.i16[v91];
  do
  {
    v94 = *v92++;
    *v93 = (*v93 >> 1) + ((v94 * v77) >> 16);
    ++v93;
    --v90;
  }

  while (v90);
LABEL_79:
  v35 = 1;
LABEL_80:
  silk_NLSF_encode((a1 + 4760), a3, *(a1 + 4704), &v127, v9 + v8, *(a1 + 4660), *(a1 + 4781));
  silk_NLSF2A(a2 + 2, a3, *(a1 + 4640));
  v95 = *(a1 + 4640);
  v96 = *(a1 + 4640);
  if (!v35)
  {
    return memcpy(a2, &a2[2], 2 * v95);
  }

  if (v96 >= 1)
  {
    v97 = *(a1 + 4783);
    if (v96 < 4)
    {
      v98 = 0;
LABEL_94:
      v117 = v95 - v98;
      v118 = v98;
      v119 = &v129[v98];
      v120 = &a3[v118];
      v121 = &a4->i16[v118];
      do
      {
        v123 = *v121++;
        v122 = v123;
        v124 = *v120++;
        *v119++ = v122 + (((v124 - v122) * v97) >> 2);
        --v117;
      }

      while (v117);
      return silk_NLSF2A(a2, v129, v95);
    }

    v100 = vdupq_n_s32(v97);
    if (v95 >= 0x10)
    {
      v98 = v95 & 0x7FFFFFF0;
      v101 = a4 + 1;
      v102 = (a3 + 8);
      v103 = v130;
      v104 = v98;
      do
      {
        v105 = v101[-1];
        v106 = vsubq_s16(v102[-1], v105);
        v107 = vsubq_s16(*v102, *v101);
        v108 = vaddq_s16(*v101, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v100, vmovl_s16(*v107.i8)), 2uLL), vmulq_s32(v100, vmovl_high_s16(v107)), 2uLL));
        v103[-1] = vaddq_s16(v105, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v100, vmovl_s16(*v106.i8)), 2uLL), vmulq_s32(v100, vmovl_high_s16(v106)), 2uLL));
        *v103 = v108;
        v101 += 2;
        v102 += 2;
        v103 += 2;
        v104 -= 16;
      }

      while (v104);
      if (v98 == v95)
      {
        return silk_NLSF2A(a2, v129, v95);
      }

      if ((v95 & 0xC) == 0)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v98 = 0;
    }

    v109 = v98;
    v98 = v95 & 0x7FFFFFFC;
    v110 = (a4 + 2 * v109);
    v111 = &a3[v109];
    v112 = &v129[v109];
    v113 = v109 - v98;
    do
    {
      v114 = *v110++;
      v115 = v114;
      v116 = *v111++;
      *v112++ = vadd_s16(v115, vshrn_n_s32(vmulq_s32(v100, vmovl_s16(vsub_s16(v116, v115))), 2uLL));
      v113 += 4;
    }

    while (v113);
    if (v98 == v95)
    {
      return silk_NLSF2A(a2, v129, v95);
    }

    goto LABEL_94;
  }

  return silk_NLSF2A(a2, v129, v95);
}

uint64_t quant_coarse_energy(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6, unsigned int a7, void *a8, uint64_t a9, int a10, unsigned int a11, signed int a12, int a13, float *a14, int a15, int a16, int a17)
{
  v111 = a8;
  v123 = *MEMORY[0x277D85DE8];
  if (a13)
  {
    v21 = *a14;
    v22 = 1;
  }

  else
  {
    v21 = *a14;
    v22 = !a15 && (v23 = (a3 - a2) * a10, v21 > (2 * v23)) && v23 < a12;
  }

  v110 = a14;
  v114 = a11;
  v24 = 0.0;
  v115 = a1;
  v25 = *(a1 + 8);
  if (a2 < a4)
  {
    v26 = 0;
    v27 = 0;
    if (a10 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = a10;
    }

    v29 = a4;
    v30 = a4 - a2;
    a1 = v30 & 0xFFFFFFFFFFFFFFF8;
    v31 = 4 * a2 + 16;
    v32 = (a5 + v31);
    v33 = 4 * v25;
    v34 = &a6[v31];
    do
    {
      if (v30 >= 8)
      {
        v36 = v34;
        v37 = v32;
        v38 = v30 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v39 = vsubq_f32(v37[-1], v36[-1]);
          v40 = vsubq_f32(*v37, *v36);
          v41 = vmulq_f32(v39, v39);
          v42 = vmulq_f32(v40, v40);
          v24 = (((((((v24 + v41.f32[0]) + v41.f32[1]) + v41.f32[2]) + v41.f32[3]) + v42.f32[0]) + v42.f32[1]) + v42.f32[2]) + v42.f32[3];
          v37 += 2;
          v36 += 2;
          v38 -= 8;
        }

        while (v38);
        v35 = (v30 & 0xFFFFFFFFFFFFFFF8) + a2;
        if (v30 == a1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v35 = a2;
      }

      v43 = v29 - v35;
      v44 = 4 * (v35 + v26);
      v45 = &a6[v44];
      v46 = (a5 + v44);
      do
      {
        v47 = *v46++;
        v48 = v47;
        v49 = *v45++;
        v24 = v24 + ((v48 - v49) * (v48 - v49));
        --v43;
      }

      while (v43);
LABEL_12:
      ++v27;
      v32 = (v32 + v33);
      v34 = (v34 + v33);
      v26 += v25;
    }

    while (v27 != v28);
  }

  v109 = v93;
  v50 = __clz(*(a9 + 32));
  v51 = *(a9 + 24);
  v107 = *(a9 + 28);
  v52 = v51 + v50;
  v53 = a15 != 0;
  v54 = v52 - 29 <= a7;
  if (v52 - 29 > a7)
  {
    v53 = 0;
  }

  v102 = v53;
  v55 = v54 && v22;
  v113 = a7;
  LODWORD(v100) = v54 && v22;
  if (a15)
  {
    v55 = v52 - 29 <= a7;
  }

  v108 = v55;
  if (v24 <= 200.0)
  {
    v56 = v24;
  }

  else
  {
    v56 = 200.0;
  }

  v112 = v52 - 32;
  v57 = vcvts_n_f32_s32(a12, 3uLL);
  if (v57 > 16.0)
  {
    v57 = 16.0;
  }

  if (a3 - a2 <= 10)
  {
    v57 = 16.0;
  }

  if (a17)
  {
    v58 = 3.0;
  }

  else
  {
    v58 = v57;
  }

  *v122 = *a9;
  *&v122[12] = *(a9 + 12);
  v121 = *(a9 + 48);
  v103 = a9 + 32;
  v120 = *(a9 + 32);
  v59 = MEMORY[0x28223BE20](a1, a2, a3);
  v61 = v60;
  v63 = &v93[-v62];
  v64 = v115;
  MEMORY[0x28223BE20](v59, v65, v60);
  v67 = &v93[-v66];
  v69 = memcpy(v63, a6, 4 * v68);
  v106 = v61;
  v105 = a2;
  v104 = a17;
  v101 = v114;
  if (v108 == 1)
  {
    v69 = quant_coarse_energy_impl(v64, a2, v61, a5, v63, v113, v112, &e_prob_model + 84 * v114 + 42, v58, v67, a9, a10, v114, 1, a17);
    if (v100)
    {
      memcpy(a6, v63, 4 * *(v64 + 8) * a10);
      result = memcpy(v111, v67, 4 * *(v64 + 8) * a10);
      goto LABEL_43;
    }

    v99 = v69;
    v96 = v63;
    v97 = v67;
    v108 = a10;
  }

  else
  {
    v96 = v63;
    v97 = v67;
    v108 = a10;
    v99 = 0;
  }

  v100 = v93;
  v73 = *(a9 + 32);
  v74 = __clz(v73);
  v75 = v73 >> (16 - v74);
  v76 = v75 >> 12;
  v98 = v75 > ec_tell_frac_correction[(v75 >> 12) - 8];
  v116 = *(a9 + 8);
  v78 = *(a9 + 24);
  v77 = *(a9 + 28);
  v117 = v78;
  v79 = v103;
  v118 = *v103;
  v119 = *(v103 + 16);
  v80 = v107;
  v94 = v77;
  v81 = (v77 - v107);
  MEMORY[0x28223BE20](v69, v70, v71);
  v83 = &v93[-v82];
  v95 = v84;
  memcpy(&v93[-v82], (v84 + v80), v81);
  *a9 = *v122;
  *(a9 + 12) = *&v122[12];
  *(a9 + 28) = v80;
  *v79 = v120;
  *(v79 + 16) = v121;
  v85 = v101;
  result = quant_coarse_energy_impl(v115, v105, v106, a5, a6, v113, v112, &e_prob_model + 84 * v101, v58, v111, a9, v108, v114, 0, v104);
  if (!v102 || v99 >= result && (v99 != result || (v91 = *(a9 + 32), v92 = __clz(v91), (((__PAIR64__((((v21 * v113) * a16) / (v108 << 9)) + 8 * (v92 + *(a9 + 24)), ec_tell_frac_correction[(v91 >> (16 - v92) >> 12) - 8]) - __PAIR64__(v91 >> (16 - v92) >> 12, v91 >> (16 - v92))) >> 32) - 248) <= (8 * (v74 + v78) - v76 - v98 - 248))))
  {
    v90 = v110;
    v56 = v56 + ((pred_coef[v85] * pred_coef[v85]) * *v110);
    goto LABEL_47;
  }

  v86 = v95;
  *a9 = v95;
  *(a9 + 8) = v116;
  v87 = v94;
  *(a9 + 24) = v117;
  *(a9 + 28) = v87;
  *v79 = v118;
  *(v79 + 16) = v119;
  memcpy((v86 + v107), v83, v81);
  v88 = v115;
  v89 = v108;
  memcpy(a6, v96, 4 * *(v115 + 8) * v108);
  result = memcpy(v111, v97, 4 * *(v88 + 8) * v89);
LABEL_43:
  v90 = v110;
LABEL_47:
  *v90 = v56;
  return result;
}

uint64_t quant_coarse_energy_impl(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15)
{
  v80[1] = *MEMORY[0x277D85DE8];
  v80[0] = 0;
  if (a7 + 3 <= a6)
  {
    ec_enc_bit_logp(a11, a14, 3);
  }

  if (a14)
  {
    v20 = 0.0;
    v21 = 0.14999;
    v70 = a15;
    v22 = a2;
    if (a2 < a3)
    {
      goto LABEL_5;
    }

LABEL_82:
    v23 = 0;
    goto LABEL_83;
  }

  v21 = beta_coef[a13];
  v20 = pred_coef[a13];
  v70 = a15;
  v22 = a2;
  if (a2 >= a3)
  {
    goto LABEL_82;
  }

LABEL_5:
  v23 = 0;
  v69 = a3;
  v24 = -v21;
  if (a12 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = a12;
  }

  v75 = v25;
  v26 = *(a1 + 8);
  v74 = a6 + 32;
  v27 = v22;
  do
  {
    v28 = 0;
    if (v70)
    {
      v29 = v27 <= 1;
    }

    else
    {
      v29 = 1;
    }

    v30 = !v29;
    v78 = v30;
    v79 = 3 * a12 * (v27 - a3);
    if (v27 >= 20)
    {
      v31 = 20;
    }

    else
    {
      v31 = v27;
    }

    v72 = (2 * v31) | 1;
    v73 = 2 * v31;
    do
    {
      v40 = v27 + v26 * v28;
      v41 = *(a4 + 4 * v40);
      v42 = *(a5 + 4 * v40);
      if (v42 >= -9.0)
      {
        v43 = *(a5 + 4 * v40);
      }

      else
      {
        v43 = -9.0;
      }

      v44 = *(v80 + v28);
      v45 = (v41 + (-v20 * v43)) - v44;
      v46 = vcvtms_s32_f32(v45 + 0.5);
      if (v42 < -28.0)
      {
        v42 = -28.0;
      }

      v47 = v42 - a9;
      v48 = (v46 + (v47 - v41)) & ((v46 + (v47 - v41)) >> 31);
      if (v41 >= v47)
      {
        v48 = v46;
      }

      if (v46 < 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = v46;
      }

      v50 = v74 - *(a11 + 24) - __clz(*(a11 + 32));
      v51 = v50 + v79;
      if (v49 >= 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = v49;
      }

      if (v52 < 0)
      {
        v53 = -1;
      }

      else
      {
        v53 = v52;
      }

      if (v51 < 16)
      {
        v52 = v53;
      }

      if (v51 <= 23)
      {
        v54 = v52;
      }

      else
      {
        v54 = v49;
      }

      if (v27 == v22)
      {
        v54 = v49;
      }

      if (v78)
      {
        v36 = v54 & (v54 >> 31);
      }

      else
      {
        v36 = v54;
      }

      if (v50 < 15)
      {
        if (v50 >= 2)
        {
          if (v36 >= 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = v36;
          }

          v33 = a4;
          v34 = a8;
          if (v32 < 0)
          {
            v35 = -1;
          }

          else
          {
            v35 = v32;
          }

          ec_enc_icdf(a11, (2 * v35) ^ (v36 >> 31), &small_energy_icdf, 2);
          v36 = v35;
          a8 = v34;
          a4 = v33;
          v22 = a2;
        }

        else if (v50 == 1)
        {
          v36 &= v36 >> 31;
          ec_enc_bit_logp(a11, -v36, 1);
        }

        else
        {
          v36 = -1;
        }
      }

      else
      {
        v55 = *(a8 + v73) << 7;
        if (v36)
        {
          v56 = *(a8 + v72) << 6;
          if (v36 >= 0)
          {
            v57 = v36;
          }

          else
          {
            v57 = -v36;
          }

          v58 = (0x4000 - v56) * (32736 - v55);
          v59 = v58 >> 15;
          v60 = 1;
          if (v58 >= 0x8000 && v57 >= 2)
          {
            do
            {
              v61 = 2 * v59;
              v55 += v61 + 2;
              v58 = v61 * v56;
              ++v60;
              v59 = (v61 * v56) >> 15;
            }

            while (v58 >= 0x8000 && v60 < v57);
          }

          if (v58 >> 15)
          {
            if (v36 >= 0)
            {
              v67 = v59 + 1;
            }

            else
            {
              v67 = 0;
            }

            v66 = v67 + v55;
            v55 = v59 + 1;
          }

          else
          {
            v63 = v36 >> 31;
            v64 = v57 - v60;
            if (v64 >= ((((v36 >> 31) | 0x8000) - v55) >> 1) - 1)
            {
              v64 = ((((v36 >> 31) | 0x8000) - v55) >> 1) - 1;
            }

            v65 = v63 + v55 + 2 * v64;
            v66 = v65 + 1;
            v55 = v65 != 0x7FFF;
            v36 = (v60 + v63 + v64) ^ v63;
          }
        }

        else
        {
          v66 = 0;
        }

        ec_encode_bin(a11, v66, v66 + v55, 15);
      }

      v37 = v36;
      v26 = *(a1 + 8);
      v38 = v27 + v26 * v28;
      *(a10 + 4 * v38) = v45 - v36;
      v39 = v49 - v36;
      if (v49 - v36 < 0)
      {
        v39 = v36 - v49;
      }

      v23 += v39;
      *(a5 + 4 * v38) = (v44 + (v20 * v43)) + v37;
      *(v80 + v28++) = (v44 + v37) + (v24 * v37);
    }

    while (v28 != v75);
    ++v27;
    a3 = v69;
  }

  while (v27 != v69);
LABEL_83:
  if (v70)
  {
    return 0;
  }

  else
  {
    return v23;
  }
}

uint64_t quant_fine_energy(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8)
{
  if (a2 < a3)
  {
    if (a8 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a8;
    }

    v9 = a2;
    do
    {
      v10 = *(a6 + 4 * v9);
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = 0x10000 << v10 >> 16;
        v13 = *(result + 8);
        v14 = *(a7 + 4);
        v15 = *(a7 + 5);
        do
        {
          LODWORD(v17) = v11 * v13;
          v20 = vcvtms_s32_f32((*(a5 + 4 * v9 + 4 * v11 * v13) + 0.5) * v12);
          if (v12 <= v20)
          {
            v20 = v12 - 1;
          }

          v16 = v15 + v10;
          if ((v15 + v10) >= 0x21)
          {
            do
            {
              v27 = *(a7 + 2);
              v26 = *(a7 + 3);
              if (v26 + *(a7 + 7) < v27)
              {
                v21 = 0;
                v22 = *a7;
                v23 = v26 + 1;
                *(a7 + 3) = v23;
                *(v22 + v27 - v23) = v14;
              }

              else
              {
                v21 = -1;
              }

              *(a7 + 12) |= v21;
              v14 >>= 8;
              v24 = v15 - 8;
              v25 = v15 <= 15;
              v15 -= 8;
            }

            while (!v25);
            v16 = v10 + v24;
            v13 = *(result + 8);
            v17 = v13 * v11;
            LOBYTE(v15) = v24;
          }

          else
          {
            v17 = v17;
          }

          v18 = v20 & ~(v20 >> 31);
          v14 |= v18 << v15;
          *(a7 + 4) = v14;
          *(a7 + 5) = v16;
          *(a7 + 6) += v10;
          v10 = *(a6 + 4 * v9);
          v19 = (((v18 + 0.5) * (1 << (14 - v10))) * 0.000061035) + -0.5;
          *(a4 + 4 * (v9 + v17)) = *(a4 + 4 * (v9 + v17)) + v19;
          *(a5 + 4 * (v9 + v17)) = *(a5 + 4 * (v9 + v17)) - v19;
          ++v11;
          v15 = v16;
        }

        while (v11 != v8);
      }

      ++v9;
    }

    while (v9 != a3);
  }

  return result;
}

uint64_t quant_energy_finalise(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t *a9, int a10)
{
  if (a2 < a3)
  {
    if (a10 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a10;
    }

    v11 = a2;
    v12 = a3;
    if (a8 >= a10)
    {
      v13 = a2;
      do
      {
        if (*(a6 + 4 * v13) <= 7)
        {
          v14 = *(a7 + 4 * v13);
          if (!v14)
          {
            v15 = *(result + 8);
            v16 = *(a9 + 4);
            v17 = *(a9 + 5);
            do
            {
              LODWORD(v19) = v14 * v15;
              v22 = *(a5 + 4 * v13 + 4 * v14 * v15);
              v18 = v17 + 1;
              if ((v17 + 1) >= 0x21)
              {
                do
                {
                  v29 = *(a9 + 2);
                  v28 = *(a9 + 3);
                  if (v28 + *(a9 + 7) < v29)
                  {
                    v23 = 0;
                    v24 = *a9;
                    v25 = v28 + 1;
                    *(a9 + 3) = v25;
                    *(v24 + v29 - v25) = v16;
                  }

                  else
                  {
                    v23 = -1;
                  }

                  *(a9 + 12) |= v23;
                  v16 >>= 8;
                  v26 = v17 - 8;
                  v27 = v17 <= 15;
                  v17 -= 8;
                }

                while (!v27);
                v18 = v26 + 1;
                v15 = *(result + 8);
                v19 = v15 * v14;
                LOBYTE(v17) = v26;
              }

              else
              {
                v19 = v19;
              }

              v16 |= (v22 >= 0.0) << v17;
              *(a9 + 4) = v16;
              *(a9 + 5) = v18;
              ++*(a9 + 6);
              if (v22 < 0.0)
              {
                v20 = 0.0;
              }

              else
              {
                v20 = 1.0;
              }

              v21 = ((v20 + -0.5) * (1 << (13 - *(a6 + 4 * v13)))) * 0.000061035;
              *(a4 + 4 * (v13 + v19)) = *(a4 + 4 * (v13 + v19)) + v21;
              *(a5 + 4 * (v13 + v19)) = *(a5 + 4 * (v13 + v19)) - v21;
              ++v14;
              v17 = v18;
            }

            while (v14 != v10);
            a8 -= v10;
          }
        }

        ++v13;
      }

      while (v13 < v12 && a8 >= a10);
    }

    if (a8 >= a10)
    {
      do
      {
        if (*(a6 + 4 * v11) <= 7 && *(a7 + 4 * v11) == 1)
        {
          v30 = 0;
          v31 = *(result + 8);
          v32 = *(a9 + 4);
          v33 = *(a9 + 5);
          do
          {
            LODWORD(v35) = v30 * v31;
            v38 = *(a5 + 4 * v11 + 4 * v30 * v31);
            v34 = v33 + 1;
            if ((v33 + 1) >= 0x21)
            {
              do
              {
                v44 = *(a9 + 2);
                v43 = *(a9 + 3);
                if (v43 + *(a9 + 7) < v44)
                {
                  v39 = 0;
                  v40 = *a9;
                  v41 = v43 + 1;
                  *(a9 + 3) = v41;
                  *(v40 + v44 - v41) = v32;
                }

                else
                {
                  v39 = -1;
                }

                *(a9 + 12) |= v39;
                v32 >>= 8;
                v42 = v33 - 8;
                v27 = v33 <= 15;
                v33 -= 8;
              }

              while (!v27);
              v34 = v42 + 1;
              v31 = *(result + 8);
              v35 = v31 * v30;
              LOBYTE(v33) = v42;
            }

            else
            {
              v35 = v35;
            }

            v32 |= (v38 >= 0.0) << v33;
            *(a9 + 4) = v32;
            *(a9 + 5) = v34;
            ++*(a9 + 6);
            if (v38 < 0.0)
            {
              v36 = 0.0;
            }

            else
            {
              v36 = 1.0;
            }

            v37 = ((v36 + -0.5) * (1 << (13 - *(a6 + 4 * v11)))) * 0.000061035;
            *(a4 + 4 * (v11 + v35)) = *(a4 + 4 * (v11 + v35)) + v37;
            *(a5 + 4 * (v11 + v35)) = *(a5 + 4 * (v11 + v35)) - v37;
            ++v30;
            v33 = v34;
          }

          while (v30 != v10);
          a8 -= v10;
        }

        ++v11;
      }

      while (v11 < v12 && a8 >= a10);
    }
  }

  return result;
}

uint64_t unquant_coarse_energy(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t *a6, int a7, int a8)
{
  v67[1] = *MEMORY[0x277D85DE8];
  v67[0] = 0;
  if (a5)
  {
    v8 = 0.0;
    v9 = 0.14999;
    if (a2 >= a3)
    {
      return result;
    }
  }

  else
  {
    v9 = beta_coef[a8];
    v8 = pred_coef[a8];
    if (a2 >= a3)
    {
      return result;
    }
  }

  v10 = &e_prob_model + 84 * a8 + 42 * a5;
  v11 = *(a6 + 2);
  v12 = -v9;
  if (a7 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a7;
  }

  v14 = *(result + 8);
  v15 = *(a6 + 6);
  v16 = *(a6 + 8);
  result = 0x4000;
  do
  {
    v17 = 0;
    if (a2 >= 20)
    {
      v18 = 20;
    }

    else
    {
      v18 = a2;
    }

    v19 = 2 * v18;
    do
    {
      v24 = 8 * v11 + 32 - (v15 + __clz(v16));
      if (v24 < 15)
      {
        if (v24 < 2)
        {
          if (v24 == 1)
          {
            v59 = *(a6 + 9);
            v60 = v16 >> 1;
            v61 = v59;
            if (v59 >= v16 >> 1)
            {
              *(a6 + 9) = v59 - (v16 >> 1);
              v61 = v59 - v60;
            }

            if (v59 >= v60)
            {
              v62 = v16 - v60;
            }

            else
            {
              v62 = v16 >> 1;
            }

            *(a6 + 8) = v62;
            if (v62 >= 0x800001)
            {
              v16 = v62;
            }

            else
            {
              v63 = *(a6 + 11);
              v64 = *(a6 + 7);
              do
              {
                v15 += 8;
                *(a6 + 6) = v15;
                v16 = v62 << 8;
                *(a6 + 8) = v62 << 8;
                if (v64 < v11)
                {
                  v65 = *a6;
                  *(a6 + 7) = v64 + 1;
                  v66 = *(v65 + v64++);
                }

                else
                {
                  v66 = 0;
                }

                *(a6 + 11) = v66;
                v61 = (((v61 & 0x7FFFFF) << 8) | ((v66 | (v63 << 8)) >> 1)) ^ 0xFF;
                *(a6 + 9) = v61;
                v63 = v66;
                v44 = v62 > 0x8000;
                v62 <<= 8;
              }

              while (!v44);
            }

            if (v59 >= v60)
            {
              v30 = 0;
            }

            else
            {
              v30 = -1;
            }
          }

          else
          {
            v30 = -1;
          }
        }

        else
        {
          v32 = *(a6 + 9);
          v33 = v16 >> 2;
          v34 = -1;
          v35 = &small_energy_icdf;
          do
          {
            v36 = v16;
            v37 = *v35++;
            v16 = v33 * v37;
            ++v34;
            v38 = v32 - v33 * v37;
          }

          while (v32 < v33 * v37);
          v39 = v36 - v16;
          *(a6 + 8) = v36 - v16;
          *(a6 + 9) = v38;
          if (v36 - v16 >= 0x800001)
          {
            v16 = v36 - v16;
          }

          else
          {
            v40 = *(a6 + 11);
            v41 = *(a6 + 7);
            do
            {
              v15 += 8;
              *(a6 + 6) = v15;
              v16 = v39 << 8;
              *(a6 + 8) = v39 << 8;
              if (v41 < v11)
              {
                v42 = *a6;
                *(a6 + 7) = v41 + 1;
                v43 = *(v42 + v41++);
              }

              else
              {
                v43 = 0;
              }

              *(a6 + 11) = v43;
              v38 = (((v38 & 0x7FFFFF) << 8) | ((v43 | (v40 << 8)) >> 1)) ^ 0xFF;
              *(a6 + 9) = v38;
              v40 = v43;
              v44 = v39 > 0x8000;
              v39 <<= 8;
            }

            while (!v44);
          }

          v30 = -(v34 & 1) ^ (v34 >> 1);
        }
      }

      else
      {
        v25 = v10[v19] << 7;
        v26 = v10[v19 | 1];
        v27 = v16 >> 15;
        *(a6 + 10) = v16 >> 15;
        v28 = *(a6 + 9);
        if (v28 / (v16 >> 15) + 1 <= 0x8000)
        {
          v29 = 0x7FFF - v28 / (v16 >> 15);
        }

        else
        {
          v29 = 0;
        }

        if (v29 >= v25)
        {
          v45 = v26 << 6;
          v46 = (0x4000 - (v26 << 6)) * (32736 - v25);
          v47 = (v46 >> 15) + 1;
          v30 = 1;
          if (v46 < 0x8000)
          {
LABEL_37:
            v30 += (v29 - v25) >> 1;
            v48 = ((v29 - v25) & 0xFFFFFFFE) + v25;
          }

          else
          {
            v48 = v25;
            while (1)
            {
              v25 = 2 * v47 + v48;
              if (v29 < v25)
              {
                break;
              }

              ++v30;
              v49 = ((2 * v47 - 2) * v45) >> 15;
              v47 = v49 + 1;
              v48 = v25;
              if (!v49)
              {
                goto LABEL_37;
              }
            }
          }

          if (v29 >= v48 + v47)
          {
            v31 = v48 + v47;
          }

          else
          {
            v30 = -v30;
            v31 = v48;
          }

          v25 = v47;
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        v50 = v25 + v31;
        if (v25 + v31 >= 0x8000)
        {
          v50 = 0x8000;
        }

        v51 = (0x8000 - v50) * v27;
        v52 = v28 - v51;
        v53 = (v50 - v31) * v27;
        v16 -= v51;
        if (v31)
        {
          v16 = v53;
        }

        *(a6 + 8) = v16;
        *(a6 + 9) = v52;
        if (v16 < 0x800001)
        {
          v54 = *(a6 + 11);
          v55 = *(a6 + 7);
          do
          {
            v15 += 8;
            *(a6 + 6) = v15;
            v58 = v16 << 8;
            *(a6 + 8) = v16 << 8;
            if (v55 < v11)
            {
              v56 = *a6;
              *(a6 + 7) = v55 + 1;
              v57 = *(v56 + v55++);
            }

            else
            {
              v57 = 0;
            }

            *(a6 + 11) = v57;
            v52 = (((v52 & 0x7FFFFF) << 8) | ((v57 | (v54 << 8)) >> 1)) ^ 0xFF;
            *(a6 + 9) = v52;
            v54 = v57;
            v44 = v16 > 0x8000;
            v16 <<= 8;
          }

          while (!v44);
          v16 = v58;
        }
      }

      v20 = v30;
      v21 = a2 + v14 * v17;
      v22 = *(a4 + 4 * v21);
      if (v22 < -9.0)
      {
        v22 = -9.0;
      }

      v23 = *(v67 + v17);
      *(a4 + 4 * v21) = (v23 + (v8 * v22)) + v20;
      *(v67 + v17++) = (v23 + v20) + (v12 * v20);
    }

    while (v17 != v13);
    ++a2;
  }

  while (a2 != a3);
  return result;
}

uint64_t unquant_energy_finalise(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8, int a9)
{
  if (a2 < a3)
  {
    if (a9 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = a9;
    }

    v10 = a2;
    v11 = a3;
    v12 = (a4 + 4 * a2);
    if (a7 >= a9)
    {
      v13 = (a4 + 4 * a2);
      v14 = a2;
      while (*(a5 + 4 * v14) > 7 || *(a6 + 4 * v14))
      {
LABEL_24:
        if (++v14 < v11)
        {
          ++v13;
          if (a7 >= a9)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      v15 = *(a8 + 4);
      v16 = *(a8 + 5);
      v17 = 4 * *(result + 8);
      v18 = v9;
      v19 = v13;
      while (1)
      {
        if (v16)
        {
          goto LABEL_12;
        }

        v24 = *(a8 + 2);
        v25 = *(a8 + 3);
        if (v25 >= v24)
        {
          break;
        }

        v26 = *a8;
        *(a8 + 3) = ++v25;
        v27 = *(v26 + v24 - v25);
        if (v25 >= v24)
        {
          goto LABEL_16;
        }

        v30 = *a8;
        *(a8 + 3) = ++v25;
        v28 = *(v30 + v24 - v25) << 8;
        if (v25 >= v24)
        {
LABEL_17:
          v29 = 0;
          if (v25 >= v24)
          {
            goto LABEL_22;
          }

          goto LABEL_10;
        }

LABEL_21:
        v31 = *a8;
        *(a8 + 3) = ++v25;
        v29 = *(v31 + v24 - v25) << 16;
        if (v25 >= v24)
        {
LABEL_22:
          v22 = 0;
          goto LABEL_11;
        }

LABEL_10:
        v20 = *a8;
        v21 = v25 + 1;
        *(a8 + 3) = v21;
        v22 = *(v20 + v24 - v21) << 24;
LABEL_11:
        v15 |= v27 | v28 | v29 | v22;
        v16 = 32;
LABEL_12:
        v23 = v15 & 1;
        v15 >>= 1;
        --v16;
        *(a8 + 4) = v15;
        *(a8 + 5) = v16;
        ++*(a8 + 6);
        *v19 = *v19 + (((v23 + -0.5) * (1 << (13 - *(a5 + 4 * v14)))) * 0.000061035);
        v19 = (v19 + v17);
        if (!--v18)
        {
          a7 -= v9;
          goto LABEL_24;
        }
      }

      v27 = 0;
LABEL_16:
      v28 = 0;
      if (v25 >= v24)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

LABEL_26:
    if (a7 >= a9)
    {
      while (*(a5 + 4 * v10) > 7 || *(a6 + 4 * v10) != 1)
      {
LABEL_44:
        if (++v10 < v11)
        {
          ++v12;
          if (a7 >= a9)
          {
            continue;
          }
        }

        return result;
      }

      v33 = *(a8 + 4);
      v32 = *(a8 + 5);
      v34 = 4 * *(result + 8);
      v35 = v9;
      v36 = v12;
      while (1)
      {
        if (v32)
        {
          goto LABEL_32;
        }

        v41 = *(a8 + 2);
        v42 = *(a8 + 3);
        if (v42 >= v41)
        {
          break;
        }

        v43 = *a8;
        *(a8 + 3) = ++v42;
        v44 = *(v43 + v41 - v42);
        if (v42 >= v41)
        {
          goto LABEL_36;
        }

        v47 = *a8;
        *(a8 + 3) = ++v42;
        v45 = *(v47 + v41 - v42) << 8;
        if (v42 >= v41)
        {
LABEL_37:
          v46 = 0;
          if (v42 >= v41)
          {
            goto LABEL_42;
          }

          goto LABEL_30;
        }

LABEL_41:
        v48 = *a8;
        *(a8 + 3) = ++v42;
        v46 = *(v48 + v41 - v42) << 16;
        if (v42 >= v41)
        {
LABEL_42:
          v39 = 0;
          goto LABEL_31;
        }

LABEL_30:
        v37 = *a8;
        v38 = v42 + 1;
        *(a8 + 3) = v38;
        v39 = *(v37 + v41 - v38) << 24;
LABEL_31:
        v33 |= v44 | v45 | v46 | v39;
        v32 = 32;
LABEL_32:
        v40 = v33 & 1;
        v33 >>= 1;
        --v32;
        *(a8 + 4) = v33;
        *(a8 + 5) = v32;
        ++*(a8 + 6);
        *v36 = *v36 + (((v40 + -0.5) * (1 << (13 - *(a5 + 4 * v10)))) * 0.000061035);
        v36 = (v36 + v34);
        if (!--v35)
        {
          a7 -= v9;
          goto LABEL_44;
        }
      }

      v44 = 0;
LABEL_36:
      v45 = 0;
      if (v42 >= v41)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  return result;
}

void amp2Log2(uint64_t a1, int a2, int a3, float32x4_t *a4, float32x4_t *a5, int a6)
{
  v6 = a5;
  v7 = a2;
  if (a2 >= 1)
  {
    v8 = a4;
    v9 = *(a1 + 8);
    if (a2 < a3)
    {
      v10 = 0;
      v11 = 4 * (~a2 + a3);
      if (a6 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = a6;
      }

      v52 = v12;
      v13 = a2;
      v49 = a5 - a4;
      v46 = a5 - &eMeans;
      v54 = 4 * v9;
      v47 = a2 & 0x7FFFFFFC;
      v56 = vdupq_n_s64(0x3FF71547652B82FEuLL);
      v14 = a5;
      v44 = 4 * (~a2 + a3);
      v45 = *(a1 + 8);
      while (1)
      {
        if (v7 >= 4)
        {
          v15 = 0;
          if (v49 >= 0x10 && (v46 + v54 * v10) >= 0x10)
          {
            v17 = v47;
            v18 = &eMeans;
            v19 = v8;
            v20 = v14;
            do
            {
              v21 = *v19++;
              v64 = vcvt_hight_f64_f32(v21);
              __x = vcvtq_f64_f32(*v21.f32);
              v60 = log(__x.f64[1]);
              v22.f64[0] = log(__x.f64[0]);
              v22.f64[1] = v60;
              v61 = v22;
              __x.f64[0] = log(v64.f64[1]);
              v23.f64[0] = log(v64.f64[0]);
              v23.f64[1] = __x.f64[0];
              v24 = *v18++;
              *v20++ = vsubq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v61, v56)), vmulq_f64(v23, v56)), v24);
              v17 -= 4;
            }

            while (v17);
            v15 = v47;
            v7 = a2;
            v11 = v44;
            LODWORD(v9) = v45;
            if (v47 == v13)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
          v15 = 0;
        }

        do
        {
          v16 = log(v8->f32[v15]) * 1.44269504;
          v14->f32[v15] = v16 - *(&eMeans + v15);
          ++v15;
        }

        while (v13 != v15);
LABEL_7:
        memset_pattern16(&v6->f32[(v7 + v9 * v10++)], &memset_pattern_4, v11 + 4);
        v14 = (v14 + v54);
        v8 = (v8 + v54);
        if (v10 == v52)
        {
          return;
        }
      }
    }

    v29 = 0;
    if (a6 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = a6;
    }

    v31 = a2;
    v32 = a5 - a4;
    v53 = a5 - &eMeans;
    v33 = 4 * v9;
    v57 = vdupq_n_s64(0x3FF71547652B82FEuLL);
    v55 = a2 & 0x7FFFFFFC;
    v48 = a5 - a4;
    v50 = v30;
    while (1)
    {
      if (v7 >= 4)
      {
        v34 = 0;
        if (v32 >= 0x10 && (v53 + v33 * v29) >= 0x10)
        {
          v36 = v55;
          v37 = &eMeans;
          v38 = v8;
          v39 = v6;
          do
          {
            v40 = *v38++;
            v65 = vcvt_hight_f64_f32(v40);
            __xa = vcvtq_f64_f32(*v40.f32);
            v62 = log(__xa.f64[1]);
            v41.f64[0] = log(__xa.f64[0]);
            v41.f64[1] = v62;
            v63 = v41;
            __xa.f64[0] = log(v65.f64[1]);
            v42.f64[0] = log(v65.f64[0]);
            v42.f64[1] = __xa.f64[0];
            v43 = *v37++;
            *v39++ = vsubq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v63, v57)), vmulq_f64(v42, v57)), v43);
            v36 -= 4;
          }

          while (v36);
          v34 = v55;
          v7 = a2;
          v32 = v48;
          v30 = v50;
          if (v55 == v31)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v34 = 0;
      }

      do
      {
        v35 = log(v8->f32[v34]) * 1.44269504;
        v6->f32[v34] = v35 - *(&eMeans + v34);
        ++v34;
      }

      while (v31 != v34);
LABEL_29:
      ++v29;
      v6 = (v6 + v33);
      v8 = (v8 + v33);
      if (v29 == v30)
      {
        return;
      }
    }
  }

  if (a2 < a3)
  {
    v25 = 4 * *(a1 + 8);
    v26 = 4 * (~a2 + a3);
    if (a6 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = a6;
    }

    v28 = &a5->i8[4 * a2];
    do
    {
      memset_pattern16(v28, &memset_pattern_2, v26 + 4);
      v28 += v25;
      --v27;
    }

    while (v27);
  }
}

void *silk_quant_LTP_gains(uint64_t a1, char *__dst, _BYTE *a3, unsigned int *a4, _DWORD *a5, _DWORD *a6, int *a7, __int16 a8, unsigned int a9)
{
  v9 = a5;
  v10 = a4;
  v12 = __dst;
  v13 = a9;
  v88 = 0;
  v87 = 0;
  if (a9 < 1)
  {
    memcpy(__dst, __src, a9);
    *a3 = 1;
    memcpy(v12, __src, a9);
    v73 = *v10;
    *a3 = 2;
    result = memcpy(v12, __src, a9);
    v67 = v73;
    v52 = 0;
  }

  else
  {
    v14 = a7;
    v15 = a6;
    v85 = 0;
    v16 = __src;
    v17 = *a4;
    v18 = a9;
    v19 = a7;
    v20 = a6;
    do
    {
      v21 = 6229 - v17;
      if ((6229 - v17) < 0)
      {
        v22 = -51;
      }

      else
      {
        v22 = 2147483596;
        if (v21 <= 0xF7E)
        {
          v23 = 1 << (v21 >> 7);
          v24 = (v21 & 0x7F) + ((-174 * (v21 & 0x7F) * (128 - (v21 & 0x7F))) >> 16);
          v25 = v24 << (v21 >> 7) >> 7;
          if (v21 > 0x7FF)
          {
            v25 = v24 * (v23 >> 7);
          }

          v22 = v23 + v25 - 51;
        }
      }

      silk_VQ_WMat_EC_c(v16, &v88 + 1, &v88, &v87, v20, v19, &silk_LTP_gain_vq_0, &silk_LTP_gain_vq_0_gain, &silk_LTP_gain_BITS_Q5_0, a8, v22, 8);
      v26 = v88 + v85;
      v84 = v88 + v85;
      if (v88 + v85 < 0)
      {
        v26 = 0x7FFFFFFF;
      }

      v85 = v26;
      v27 = v87 + 51;
      v28 = __clz(v87 + 51);
      v29 = (v87 + 51) >> (24 - v28);
      LOBYTE(v30) = v87 + 51;
      if (v28 != 24)
      {
        v30 = (v27 << (v28 + 8)) | v29;
        if (v27 <= 0x7F)
        {
          LOBYTE(v30) = (v87 + 51) << (v28 - 24);
        }
      }

      v31 = 0;
      if ((v17 - (v28 << 7) + (v30 & 0x7F) + ((179 * (v30 & 0x7F) * (128 - (v30 & 0x7Fu))) >> 16) + 3968) >= 896)
      {
        v32 = (v27 << (v28 + 8)) | v29;
        if (v27 <= 0x7F)
        {
          LOBYTE(v32) = (v87 + 51) << (v28 - 24);
        }

        if (v28 != 24)
        {
          LOBYTE(v27) = v32;
        }

        v31 = v17 - (v28 << 7) + (v27 & 0x7F) + ((179 * (v27 & 0x7F) * (128 - (v27 & 0x7F))) >> 16) + 3072;
      }

      v20 += 25;
      v19 += 5;
      ++v16;
      v17 = v31;
      --v18;
    }

    while (v18);
    *a3 = 0;
    v33 = __src;
    memcpy(v12, __src, a9);
    v34 = 0;
    v82 = v10;
    v35 = *v10;
    v36 = a9;
    v37 = v14;
    v38 = v15;
    do
    {
      v39 = 6229 - v35;
      if ((6229 - v35) < 0)
      {
        v40 = -51;
      }

      else
      {
        v40 = 2147483596;
        if (v39 <= 0xF7E)
        {
          v41 = 1 << (v39 >> 7);
          v42 = (v39 & 0x7F) + ((-174 * (v39 & 0x7F) * (128 - (v39 & 0x7F))) >> 16);
          v43 = v42 << (v39 >> 7) >> 7;
          if (v39 > 0x7FF)
          {
            v43 = v42 * (v41 >> 7);
          }

          v40 = v41 + v43 - 51;
        }
      }

      silk_VQ_WMat_EC_c(v33, &v88 + 1, &v88, &v87, v38, v37, &silk_LTP_gain_vq_1, &silk_LTP_gain_vq_1_gain, &silk_LTP_gain_BITS_Q5_1, a8, v40, 16);
      if (v88 + v34 < 0)
      {
        v34 = 0x7FFFFFFF;
      }

      else
      {
        v34 += v88;
      }

      v44 = v87 + 51;
      v45 = __clz(v87 + 51);
      v46 = (v87 + 51) >> (24 - v45);
      LOBYTE(v47) = v87 + 51;
      if (v45 != 24)
      {
        v47 = (v44 << (v45 + 8)) | v46;
        if (v44 <= 0x7F)
        {
          LOBYTE(v47) = (v87 + 51) << (v45 - 24);
        }
      }

      v48 = 0;
      if ((v35 - (v45 << 7) + (v47 & 0x7F) + ((179 * (v47 & 0x7F) * (128 - (v47 & 0x7Fu))) >> 16) + 3968) >= 896)
      {
        v49 = (v44 << (v45 + 8)) | v46;
        if (v44 <= 0x7F)
        {
          LOBYTE(v49) = (v87 + 51) << (v45 - 24);
        }

        if (v45 != 24)
        {
          LOBYTE(v44) = v49;
        }

        v48 = v35 - (v45 << 7) + (v44 & 0x7F) + ((179 * (v44 & 0x7F) * (128 - (v44 & 0x7F))) >> 16) + 3072;
      }

      v38 += 25;
      v37 += 5;
      ++v33;
      v35 = v48;
      --v36;
    }

    while (v36);
    v50 = v79;
    if (v34 <= v85)
    {
      *a3 = 1;
      memcpy(v12, __src, a9);
      v84 = v34;
      v50 = v48;
    }

    v51 = 0;
    v52 = 0;
    v53 = *v82;
    v54 = __src;
    v55 = a9;
    do
    {
      v56 = 6229 - v53;
      if ((6229 - v53) < 0)
      {
        v57 = -51;
      }

      else
      {
        v57 = 2147483596;
        if (v56 <= 0xF7E)
        {
          v58 = 1 << (v56 >> 7);
          v59 = (v56 & 0x7F) + ((-174 * (v56 & 0x7F) * (128 - (v56 & 0x7F))) >> 16);
          v60 = v59 << (v56 >> 7) >> 7;
          if (v56 > 0x7FF)
          {
            v60 = v59 * (v58 >> 7);
          }

          v57 = v58 + v60 - 51;
        }
      }

      result = silk_VQ_WMat_EC_c(v54, &v88 + 1, &v88, &v87, v15, v14, &silk_LTP_gain_vq_2, &silk_LTP_gain_vq_2_gain, &silk_LTP_gain_BITS_Q5_2, a8, v57, 32);
      if (HIDWORD(v88) + v52 < 0)
      {
        v52 = 0x7FFFFFFF;
      }

      else
      {
        v52 += HIDWORD(v88);
      }

      if (v88 + v51 < 0)
      {
        v51 = 0x7FFFFFFF;
      }

      else
      {
        v51 += v88;
      }

      v62 = v87 + 51;
      v63 = __clz(v87 + 51);
      v64 = (v87 + 51) >> (24 - v63);
      LOBYTE(v65) = v87 + 51;
      if (v63 != 24)
      {
        v65 = (v62 << (v63 + 8)) | v64;
        if (v62 <= 0x7F)
        {
          LOBYTE(v65) = (v87 + 51) << (v63 - 24);
        }
      }

      v66 = 0;
      v67 = v50;
      if ((v53 - (v63 << 7) + (v65 & 0x7F) + ((179 * (v65 & 0x7F) * (128 - (v65 & 0x7Fu))) >> 16) + 3968) >= 896)
      {
        v68 = (v62 << (v63 + 8)) | v64;
        if (v62 <= 0x7F)
        {
          LOBYTE(v68) = (v87 + 51) << (v63 - 24);
        }

        if (v63 != 24)
        {
          LOBYTE(v62) = v68;
        }

        v66 = v53 - (v63 << 7) + (v62 & 0x7F) + ((179 * (v62 & 0x7F) * (128 - (v62 & 0x7F))) >> 16) + 3072;
      }

      v15 += 25;
      v14 += 5;
      ++v54;
      v53 = v66;
      --v55;
    }

    while (v55);
    if (v51 <= v84)
    {
      *a3 = 2;
      result = memcpy(v12, __src, a9);
      v67 = v66;
    }

    v69 = *(&silk_LTP_vq_ptrs_Q7 + *a3);
    v13 = a9;
    v70 = (a1 + 4);
    v9 = a5;
    v10 = v82;
    v71 = a9;
    do
    {
      *(v70 - 2) = *(v69 + 5 * *v12) << 7;
      *(v70 - 1) = *(v69 + 1 + 5 * *v12) << 7;
      *v70 = *(v69 + 2 + 5 * *v12) << 7;
      v70[1] = *(v69 + 3 + 5 * *v12) << 7;
      v72 = *v12++;
      v70[2] = *(v69 + 4 + 5 * v72) << 7;
      v70 += 5;
      --v71;
    }

    while (v71);
  }

  if (v13 == 2)
  {
    v74 = 1;
  }

  else
  {
    v74 = 2;
  }

  v75 = v52 >> v74;
  *v10 = v67;
  v76 = __clz(v52 >> v74);
  if (v76 != 24)
  {
    v77 = v75 > 0x7F;
    v78 = (v75 << (v76 + 8)) | (v75 >> (24 - v76));
    v75 <<= v76 - 24;
    if (v77)
    {
      LOBYTE(v75) = v78;
    }
  }

  *v9 = -3 * ((179 * (v75 & 0x7F) * (128 - (v75 & 0x7F)) - (v76 << 23) + ((v75 & 0x7F) << 16) + 0x8000000) >> 16);
  return result;
}

uint64_t clt_compute_allocation(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8, int a9, unsigned int *a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, int a17, int a18, int a19)
{
  v339 = a7;
  v347 = *MEMORY[0x277D85DE8];
  v328 = 8 * (a9 > 7);
  v20 = (a9 & ~(a9 >> 31)) - v328;
  v335 = a5;
  if (a14 == 2)
  {
    v21 = LOG2_FRAC_TABLE[a3 - a2];
    v22 = 8 * (v20 - v21 > 7);
    v23 = v20 - v21 - v22;
    v24 = v20 < v21;
    if (v20 < v21)
    {
      v21 = 0;
    }

    v345 = v21;
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v22;
    }

    v331 = v25;
    if (!v24)
    {
      v20 = v23;
    }

    v346 = v20;
  }

  else
  {
    v345 = 0;
    v346 = (a9 & ~(a9 >> 31)) - v328;
    v331 = 0;
  }

  v332 = a8;
  v342 = a11;
  v26 = MEMORY[0x28223BE20](a1, a2, a2);
  v29 = MEMORY[0x28223BE20](v26, v27, v28);
  v344 = &v327 - v30;
  v33 = MEMORY[0x28223BE20](v29, v31, v32);
  v36 = MEMORY[0x28223BE20](v33, v34, v35);
  v44 = &v327 - v43;
  v45 = 8 * a14;
  v334 = v39;
  v327 = v36;
  v343 = v37;
  v340 = v40;
  if (v39 <= v37)
  {
    v107 = 0;
    v50 = v39;
    v49 = v37;
    v108 = (v36 + 32);
    v109 = v37;
    v110 = v342;
    v112 = v345;
    v111 = v346;
    goto LABEL_153;
  }

  v338 = v41;
  v46 = *(v36 + 32);
  v341 = (v36 + 32);
  v47 = v38 - a15 - 5;
  v48 = a15 + 3;
  v49 = v37;
  v50 = v39;
  v51 = *(v46 + 2 * v37);
  v52 = v39 - v49;
  v53 = 4 * v49;
  v54 = v49;
  if (v52 >= 8)
  {
    v54 = (v52 & 0xFFFFFFFFFFFFFFF8) + v49;
    v55 = vdupq_n_s16(v51);
    v56 = vdupq_n_s32(v343);
    v57 = vaddq_s32(v56, xmmword_273B92360);
    v58 = vdupq_n_s32(a15);
    v59 = vdupq_n_s32(v45);
    v60 = vdupq_n_s32(v39);
    v61 = vdupq_n_s32(v47 * a14);
    v62 = vaddq_s32(v56, xmmword_273B90830);
    v63 = vdupq_n_s32(v48);
    v64 = (v46 + 2 * v49 + 2);
    v65 = (v40 + v53);
    v66 = &v44[v53];
    v67.i64[0] = 0x3000300030003;
    v67.i64[1] = 0x3000300030003;
    v68.i64[0] = 0x100000001;
    v68.i64[1] = 0x100000001;
    v69.i64[0] = 0x800000008;
    v69.i64[1] = 0x800000008;
    v70 = v52 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v71 = v55;
      v72 = *v64++;
      v55 = v72;
      v73 = vextq_s8(v71, v72, 0xEuLL);
      v74 = vsubl_s16(*v72.i8, *v73.i8);
      v75 = vsubl_high_s16(v72, v73);
      *v65 = vmaxq_s32(v59, vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmlsl_s16(vmull_s16(*v72.i8, 0x3000300030003), *v73.i8, 0x3000300030003), v58), 3uLL), 4uLL));
      v65[1] = vmaxq_s32(v59, vshrq_n_s32(vshlq_n_s32(vshlq_u32(vmlsl_high_s16(vmull_high_s16(v72, v67), v73, v67), v58), 3uLL), 4uLL));
      v65 += 2;
      *v66 = vsubq_s32(vshrq_n_s32(vshlq_u32(vmulq_s32(vmulq_s32(v61, vaddq_s32(v60, vmvnq_s8(v62))), v74), v63), 6uLL), vandq_s8(v59, vceqq_s32(vshlq_u32(v74, v58), v68)));
      v66[1] = vsubq_s32(vshrq_n_s32(vshlq_u32(vmulq_s32(vmulq_s32(v61, vaddq_s32(v60, vmvnq_s8(v57))), v75), v63), 6uLL), vandq_s8(v59, vceqq_s32(vshlq_u32(v75, v58), v68)));
      v66 += 2;
      v62 = vaddq_s32(v62, v69);
      v57 = vaddq_s32(v57, v69);
      v70 -= 8;
    }

    while (v70);
    if (v52 == (v52 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_24;
    }

    LOWORD(v51) = v55.i16[7];
  }

  v76 = &v44[4 * v54];
  v77 = a14 * v47;
  v78 = v77 * (~v54 + v39);
  v79 = (v40 + 4 * v54);
  v80 = v39 - v54;
  v81 = (v46 + 2 * v54 + 2);
  do
  {
    v82 = *v81++;
    v83 = v82 - v51;
    LOWORD(v51) = v82;
    v84 = (8 * ((3 * v83) << a15)) >> 4;
    if (v45 > v84)
    {
      v84 = 8 * a14;
    }

    *v79++ = v84;
    v85 = (v78 * v83) << v48 >> 6;
    if (v83 << a15 == 1)
    {
      v86 = 8 * a14;
    }

    else
    {
      v86 = 0;
    }

    *v76 = v85 - v86;
    v76 += 4;
    v78 -= v77;
    --v80;
  }

  while (v80);
LABEL_24:
  v336 = 4 * v49;
  v337 = v44;
  v87 = *(v36 + 52);
  v88 = v87 - 1;
  v89 = *(v36 + 32);
  v90 = *(v89 + 2 * v39);
  v91 = v335 - 4;
  v92 = v40 - 4;
  v93 = a4;
  v94 = a4 - 4;
  v95 = *(v36 + 56);
  v96 = v44 - 4;
  v97 = 1;
  do
  {
    v98 = 0;
    v99 = 0;
    v100 = (v97 + v88) >> 1;
    LOWORD(v101) = v90;
    v102 = v50;
    do
    {
      while (1)
      {
        v104 = v101;
        v101 = *(v89 - 2 + 2 * v50);
        v105 = ((v104 - v101) * a14 * *(v95 - 1 + v100 * v42 + v50)) << a15 >> 2;
        if (v105 >= 1)
        {
          v105 = (*&v96[4 * v50] + v105) & ~((*&v96[4 * v50] + v105) >> 31);
        }

        v103 = *(v94 + 4 * v50) + v105;
        if (v99 || v103 >= *(v92 + 4 * v50))
        {
          break;
        }

        v99 = 0;
        if (v103 >= v45)
        {
          v106 = 8 * a14;
        }

        else
        {
          v106 = 0;
        }

        --v50;
        v98 += v106;
        if (v50 <= v49)
        {
          goto LABEL_25;
        }
      }

      if (v103 >= *(v91 + 4 * v50))
      {
        v103 = *(v91 + 4 * v50);
      }

      v99 = 1;
      --v50;
      v98 += v103;
    }

    while (v50 > v49);
LABEL_25:
    if (v98 <= v346)
    {
      v97 = v100 + 1;
    }

    else
    {
      v88 = v100 - 1;
    }

    v50 = v102;
  }

  while (v97 <= v88);
  v113 = 0;
  v114 = (v97 - 1) * v42;
  v115 = v97 * v42;
  v116 = (v89 + 2 * v49);
  v119 = *v116;
  v117 = v116 + 1;
  v118 = v119;
  v120 = &v344[v336];
  v121 = v338;
  v122 = v338 + v336;
  v123 = v343;
  v124 = v93 + v336;
  v125 = &v337[v336];
  v126 = v95 + v49;
  v127 = v95 + v49 + v115;
  v128 = v335 + v336;
  v129 = v126 + v114;
  v109 = v343;
  v110 = v342;
  do
  {
    v133 = (v117[v113] - v118) * a14;
    if (v97 >= v87)
    {
      v134 = *(v128 + 4 * v113);
      v135 = (v133 * *(v129 + v113)) << a15 >> 2;
      if (v135 < 1)
      {
        goto LABEL_55;
      }

LABEL_54:
      v135 = (*&v125[4 * v113] + v135) & ~((*&v125[4 * v113] + v135) >> 31);
      goto LABEL_55;
    }

    v134 = (v133 * *(v127 + v113)) << a15 >> 2;
    v135 = (v133 * *(v129 + v113)) << a15 >> 2;
    if (v135 >= 1)
    {
      goto LABEL_54;
    }

LABEL_55:
    if (v134 >= 1)
    {
      v134 = (*&v125[4 * v113] + v134) & ~((*&v125[4 * v113] + v134) >> 31);
    }

    v118 = v117[v113];
    v130 = *(v124 + 4 * v113);
    if (v97 <= 1)
    {
      v131 = 0;
    }

    else
    {
      v131 = *(v124 + 4 * v113);
    }

    v132 = v131 + v135;
    if (v130 > 0)
    {
      v109 = v123 + v113;
    }

    *(v122 + 4 * v113) = v132;
    *&v120[4 * v113++] = (v130 + v134 - v132) & ~((v130 + v134 - v132) >> 31);
  }

  while (v52 != v113);
  v136 = 0;
  v137 = 0;
  v138 = v344 - 4;
  v139 = v121 - 4;
  v140 = v50;
  v112 = v345;
  v111 = v346;
  v40 = v340;
  do
  {
    while (1)
    {
      v141 = *(v139 + 4 * v140) + (*&v138[4 * v140] >> 1);
      if (v137 || v141 >= *(v92 + 4 * v140))
      {
        break;
      }

      v137 = 0;
      if (v141 >= v45)
      {
        v142 = 8 * a14;
      }

      else
      {
        v142 = 0;
      }

      --v140;
      v136 += v142;
      if (v140 <= v49)
      {
        goto LABEL_67;
      }
    }

    if (v141 >= *(v91 + 4 * v140))
    {
      v141 = *(v91 + 4 * v140);
    }

    v137 = 1;
    --v140;
    v136 += v141;
  }

  while (v140 > v49);
LABEL_67:
  v143 = 0;
  v144 = 0;
  if (v136 <= v346)
  {
    v145 = 48;
  }

  else
  {
    v145 = 16;
  }

  v146 = v50;
  v39 = v334;
  do
  {
    while (1)
    {
      v147 = *(v139 + 4 * v146) + ((*&v138[4 * v146] * v145) >> 6);
      if (v144 || v147 >= *(v92 + 4 * v146))
      {
        break;
      }

      v144 = 0;
      if (v147 >= v45)
      {
        v148 = 8 * a14;
      }

      else
      {
        v148 = 0;
      }

      --v146;
      v143 += v148;
      if (v146 <= v49)
      {
        goto LABEL_80;
      }
    }

    if (v147 >= *(v91 + 4 * v146))
    {
      v147 = *(v91 + 4 * v146);
    }

    v144 = 1;
    --v146;
    v143 += v147;
  }

  while (v146 > v49);
LABEL_80:
  v149 = 0;
  v150 = 0;
  v24 = v136 <= v346;
  v151 = 32 * (v136 <= v346);
  if (v24)
  {
    v152 = 64;
  }

  else
  {
    v152 = 32;
  }

  v153 = v143 <= v346;
  if (v143 <= v346)
  {
    v154 = v145;
  }

  else
  {
    v154 = v151;
  }

  if (v153)
  {
    v145 = v152;
  }

  v155 = v50;
  do
  {
    while (1)
    {
      v156 = *(v139 + 4 * v155) + ((*&v138[4 * v155] * ((v145 + v154) >> 1)) >> 6);
      if (v150 || v156 >= *(v92 + 4 * v155))
      {
        break;
      }

      v150 = 0;
      if (v156 >= v45)
      {
        v157 = 8 * a14;
      }

      else
      {
        v157 = 0;
      }

      --v155;
      v149 += v157;
      if (v155 <= v49)
      {
        goto LABEL_99;
      }
    }

    if (v156 >= *(v91 + 4 * v155))
    {
      v156 = *(v91 + 4 * v155);
    }

    v150 = 1;
    --v155;
    v149 += v156;
  }

  while (v155 > v49);
LABEL_99:
  v158 = 0;
  v159 = 0;
  if (v149 > v346)
  {
    v145 = (v145 + v154) >> 1;
  }

  else
  {
    v154 = (v145 + v154) >> 1;
  }

  v160 = v50;
  do
  {
    while (1)
    {
      v161 = *(v139 + 4 * v160) + ((*&v138[4 * v160] * ((v145 + v154) >> 1)) >> 6);
      if (v159 || v161 >= *(v92 + 4 * v160))
      {
        break;
      }

      v159 = 0;
      if (v161 >= v45)
      {
        v162 = 8 * a14;
      }

      else
      {
        v162 = 0;
      }

      --v160;
      v158 += v162;
      if (v160 <= v49)
      {
        goto LABEL_112;
      }
    }

    if (v161 >= *(v91 + 4 * v160))
    {
      v161 = *(v91 + 4 * v160);
    }

    v159 = 1;
    --v160;
    v158 += v161;
  }

  while (v160 > v49);
LABEL_112:
  v163 = 0;
  v164 = 0;
  if (v158 > v346)
  {
    v145 = (v145 + v154) >> 1;
  }

  else
  {
    v154 = (v145 + v154) >> 1;
  }

  v165 = v50;
  do
  {
    while (1)
    {
      v166 = *(v139 + 4 * v165) + ((*&v138[4 * v165] * ((v145 + v154) >> 1)) >> 6);
      if (v164 || v166 >= *(v92 + 4 * v165))
      {
        break;
      }

      v164 = 0;
      if (v166 >= v45)
      {
        v167 = 8 * a14;
      }

      else
      {
        v167 = 0;
      }

      --v165;
      v163 += v167;
      if (v165 <= v49)
      {
        goto LABEL_125;
      }
    }

    if (v166 >= *(v91 + 4 * v165))
    {
      v166 = *(v91 + 4 * v165);
    }

    v164 = 1;
    --v165;
    v163 += v166;
  }

  while (v165 > v49);
LABEL_125:
  v168 = 0;
  v169 = 0;
  v170 = v163 <= v346;
  if (v163 <= v346)
  {
    v171 = (v145 + v154) >> 1;
  }

  else
  {
    v171 = v154;
  }

  if (v170)
  {
    v172 = v145;
  }

  else
  {
    v172 = (v145 + v154) >> 1;
  }

  v173 = (v172 + v171) >> 1;
  v174 = v50;
  LODWORD(v37) = v343;
  do
  {
    while (1)
    {
      v175 = *(v139 + 4 * v174) + ((*&v138[4 * v174] * v173) >> 6);
      if (v169 || v175 >= *(v92 + 4 * v174))
      {
        break;
      }

      v169 = 0;
      if (v175 >= v45)
      {
        v176 = 8 * a14;
      }

      else
      {
        v176 = 0;
      }

      --v174;
      v168 += v176;
      if (v174 <= v49)
      {
        goto LABEL_141;
      }
    }

    if (v175 >= *(v91 + 4 * v174))
    {
      v175 = *(v91 + 4 * v174);
    }

    v169 = 1;
    --v174;
    v168 += v175;
  }

  while (v174 > v49);
LABEL_141:
  v107 = 0;
  v177 = 0;
  if (v168 <= v346)
  {
    v171 = v173;
  }

  v178 = v50;
  do
  {
    v179 = *(v139 + 4 * v178) + ((*&v138[4 * v178] * v171) >> 6);
    v177 |= v179 >= *(v92 + 4 * v178);
    if (v179 >= v45)
    {
      v180 = 8 * a14;
    }

    else
    {
      v180 = 0;
    }

    if ((v177 & 1) == 0)
    {
      v179 = v180;
    }

    if (v179 >= *(v91 + 4 * v178))
    {
      v179 = *(v91 + 4 * v178);
    }

    *(v110 - 4 + 4 * v178) = v179;
    v107 += v179;
    --v178;
  }

  while (v178 > v49);
  v108 = v341;
LABEL_153:
  v333 = v50;
  v329 = a10;
  LODWORD(v344) = a17;
  v330 = a14 > 1;
  v341 = v108;
  if (v39 - 1 > v109)
  {
    LODWORD(v338) = v37 + 2;
    v181 = v39 - 1;
    LODWORD(v337) = a18;
    v336 = a19;
    v182 = v109;
    v183 = v39;
    while (1)
    {
      v188 = *(*v108 + 2 * v183);
      v189 = *(*v108 + 2 * v49);
      v190 = (v111 - v107) / (v188 - v189);
      v191 = *(*v108 + 2 * v181);
      v192 = v111 - v107 + v189 - v191 + (v189 - v188) * v190;
      v193 = v192 & ~(v192 >> 31);
      v194 = v188 - v191;
      v185 = *(v110 + 4 * v181);
      v184 = v185 + v194 * v190 + v193;
      v195 = *(v40 + 4 * v181);
      if (v195 <= v45 + 8)
      {
        v195 = v45 + 8;
      }

      if (v184 >= v195)
      {
        if (v344)
        {
          v345 = v112;
          if (v183 <= v338)
          {
            goto LABEL_197;
          }

          if (v183 <= v337)
          {
            v196 = 7;
          }

          else
          {
            v196 = 9;
          }

          if (v183 <= 17)
          {
            v196 = 0;
          }

          if (v181 <= v336 && v184 > (8 * ((v194 * v196) << a15)) >> 4)
          {
LABEL_197:
            v217 = v183;
            ec_enc_bit_logp(a16, 1, 1);
            v183 = v217;
            v110 = v342;
            LODWORD(v37) = v343;
            v111 = v346;
            v108 = v341;
            v209 = v332;
            if (v345 > 0)
            {
              goto LABEL_189;
            }

            goto LABEL_206;
          }

          ec_enc_bit_logp(a16, 0, 1);
          v40 = v340;
          v108 = v341;
          v110 = v342;
          LODWORD(v37) = v343;
          v112 = v345;
          v111 = v346;
        }

        else
        {
          v197 = v183;
          v199 = *(a16 + 32);
          v198 = *(a16 + 36);
          v200 = v199 >> 1;
          v201 = v198;
          if (v198 >= v199 >> 1)
          {
            *(a16 + 36) = v198 - (v199 >> 1);
            v201 = v198 - v200;
          }

          v202 = v199 - v200;
          if (v198 < v200)
          {
            v202 = v200;
          }

          *(a16 + 32) = v202;
          if (v202 < 0x800001)
          {
            v203 = *(a16 + 8);
            v204 = *(a16 + 44);
            v205 = *(a16 + 28);
            v206 = *(a16 + 24) + 8;
            do
            {
              *(a16 + 24) = v206;
              *(a16 + 32) = v202 << 8;
              if (v205 < v203)
              {
                v207 = *a16;
                *(a16 + 28) = v205 + 1;
                v208 = *(v207 + v205++);
              }

              else
              {
                v208 = 0;
              }

              v201 = (((v201 & 0x7FFFFF) << 8) | ((v208 | (v204 << 8)) >> 1)) ^ 0xFF;
              *(a16 + 44) = v208;
              *(a16 + 36) = v201;
              v206 += 8;
              v204 = v208;
              v24 = v202 > 0x8000;
              v202 <<= 8;
            }

            while (!v24);
          }

          if (v198 < v200)
          {
            v209 = v332;
            v183 = v197;
            if (v112 <= 0)
            {
              goto LABEL_206;
            }

LABEL_200:
            v218 = v111;
            v219 = v183;
            v220 = ec_dec_uint(a16, v183 - v37 + 1);
            LODWORD(v37) = v343;
            v221 = v220 + v343;
            *v339 = v220 + v343;
            if (v221 <= v37)
            {
              v216 = v331;
            }

            else
            {
              v216 = 0;
            }

            if (!v331)
            {
              v108 = v341;
              v110 = v342;
              v111 = v218;
              v215 = v330;
              v183 = v219;
              goto LABEL_228;
            }

            v108 = v341;
            v110 = v342;
            v111 = v218;
            v215 = v330;
            v183 = v219;
            if (v221 <= v37)
            {
LABEL_228:
              *v209 = 0;
              v225 = a12;
              v226 = a13;
              v227 = v335;
              if (v183 > v37)
              {
                goto LABEL_229;
              }

LABEL_225:
              *v329 = 0;
              v240 = v333;
              if (v37 < v334)
              {
                goto LABEL_273;
              }

              return v183;
            }

            goto LABEL_214;
          }
        }

        v107 += 8;
        v184 -= 8;
        v185 = *(v110 + 4 * v181);
      }

      if (v112)
      {
        v186 = LOG2_FRAC_TABLE[v181 - v49];
      }

      else
      {
        v186 = 0;
      }

      if (v184 >= v45)
      {
        v187 = 8 * a14;
      }

      else
      {
        v187 = 0;
      }

      *(v110 + 4 * v181) = v187;
      v107 = v107 - v112 - v185 + v186 + v187;
      v183 = v181--;
      v112 = v186;
      if (v181 <= v182)
      {
        goto LABEL_188;
      }
    }
  }

  v183 = v39;
  v186 = v112;
LABEL_188:
  v111 += v328;
  v209 = v332;
  if (v186 <= 0)
  {
LABEL_206:
    v214 = 0;
    *v339 = 0;
    v215 = v330;
    if (v37 >= 0)
    {
      v216 = v331;
    }

    else
    {
      v216 = 0;
    }

    if (!v331)
    {
      goto LABEL_228;
    }
  }

  else
  {
LABEL_189:
    if (!v344)
    {
      goto LABEL_200;
    }

    v210 = v339;
    v211 = *v339;
    if (*v339 >= v183)
    {
      v211 = v183;
    }

    *v339 = v211;
    v212 = v111;
    v213 = v183;
    ec_enc_uint(a16, v211 - v37, v183 - v37 + 1);
    v183 = v213;
    v108 = v341;
    v110 = v342;
    v111 = v212;
    LODWORD(v37) = v343;
    v214 = *v210;
    v215 = v330;
    if (*v210 <= v343)
    {
      v216 = v331;
    }

    else
    {
      v216 = 0;
    }

    if (!v331)
    {
      goto LABEL_228;
    }
  }

  if (v214 <= v37)
  {
    goto LABEL_228;
  }

  if (v344)
  {
    v222 = v111;
    v223 = v183;
    v224 = v216;
    ec_enc_bit_logp(a16, *v209, 1);
    v216 = v224;
    v183 = v223;
    v108 = v341;
    v110 = v342;
    v111 = v222;
    LODWORD(v37) = v343;
    v225 = a12;
    v226 = a13;
    v227 = v335;
    if (v223 <= v343)
    {
      goto LABEL_225;
    }
  }

  else
  {
LABEL_214:
    v228 = v183;
    v230 = *(a16 + 32);
    v229 = *(a16 + 36);
    v231 = v230 >> 1;
    v232 = v229;
    if (v229 >= v230 >> 1)
    {
      *(a16 + 36) = v229 - (v230 >> 1);
      v232 = v229 - v231;
    }

    v233 = v230 - v231;
    if (v229 < v231)
    {
      v233 = v231;
    }

    *(a16 + 32) = v233;
    if (v233 <= 0x800000)
    {
      v234 = *(a16 + 8);
      v235 = *(a16 + 44);
      v236 = *(a16 + 28);
      v237 = *(a16 + 24) + 8;
      do
      {
        *(a16 + 24) = v237;
        *(a16 + 32) = v233 << 8;
        if (v236 < v234)
        {
          v238 = *a16;
          *(a16 + 28) = v236 + 1;
          v239 = *(v238 + v236++);
        }

        else
        {
          v239 = 0;
        }

        v232 = (((v232 & 0x7FFFFF) << 8) | ((v239 | (v235 << 8)) >> 1)) ^ 0xFF;
        *(a16 + 44) = v239;
        *(a16 + 36) = v232;
        v237 += 8;
        v235 = v239;
        v24 = v233 > 0x8000;
        v233 <<= 8;
      }

      while (!v24);
    }

    *v209 = v229 < v231;
    v183 = v228;
    v225 = a12;
    v226 = a13;
    v227 = v335;
    if (v228 <= v37)
    {
      goto LABEL_225;
    }
  }

LABEL_229:
  v241 = v111 - v107 + v216;
  v242 = *v108;
  v243 = *(*v108 + 2 * v183);
  v244 = *(*v108 + 2 * v49);
  v245 = v183;
  v246 = v183;
  v247 = *(*v108 + 2 * v49);
  v248 = v241 / (v243 - v244);
  v249 = v241 + (v244 - v243) * v248;
  v250 = v183 - v49;
  v251 = (v110 + 4 * v49);
  v252 = (*v108 + 2 * v49);
  v253 = *v252;
  v254 = v49;
  v255 = v327;
  if (v250 <= 0xF)
  {
LABEL_234:
    v268 = (v110 + 4 * v254);
    v269 = v246 - v254;
    v270 = (v242 + 2 * v254 + 2);
    do
    {
      v271 = *v270++;
      *v268++ += (v271 - v253) * v248;
      v253 = v271;
      --v269;
    }

    while (v269);
  }

  else
  {
    v256 = vdupq_n_s16(v247);
    v254 = v49 + (v250 & 0xFFFFFFFFFFFFFFF0);
    v257 = vdupq_n_s32(v248);
    v258 = (v252 + 9);
    v259 = v251 + 2;
    v260 = v250 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v261 = v258[-1];
      v262 = vextq_s8(v256, v261, 0xEuLL);
      v263 = *v258;
      v258 += 2;
      v256 = v263;
      v264 = vextq_s8(v261, v263, 0xEuLL);
      v265 = vmlaq_s32(v259[-1], vsubl_high_s16(v261, v262), v257);
      v266 = vmlaq_s32(*v259, vsubl_s16(*v263.i8, *v264.i8), v257);
      v267 = vmlaq_s32(v259[1], vsubl_high_s16(v263, v264), v257);
      v259[-2] = vmlaq_s32(v259[-2], vsubl_s16(*v261.i8, *v262.i8), v257);
      v259[-1] = v265;
      *v259 = v266;
      v259[1] = v267;
      v259 += 4;
      v260 -= 16;
    }

    while (v260);
    if (v250 != (v250 & 0xFFFFFFFFFFFFFFF0))
    {
      v253 = v256.i16[7];
      goto LABEL_234;
    }
  }

  v272 = v252 + 1;
  v273 = v247;
  do
  {
    v274 = *v272++;
    v275 = v274 - v273;
    v276 = v274;
    if (v249 < v275)
    {
      v275 = v249;
    }

    v251->i32[0] += v275;
    v251 = (v251 + 4);
    v249 -= v275;
    v273 = v276;
    --v250;
  }

  while (v250);
  v277 = 0;
  if (a14 <= 1)
  {
    v278 = 3;
  }

  else
  {
    v278 = 4;
  }

  v279 = v242 + 2;
  while (2)
  {
    while (2)
    {
      v283 = *(v279 + 2 * v49);
      v284 = (v283 - v247) << a15;
      v285 = *(v110 + 4 * v49) + v277;
      if (v284 >= 2)
      {
        v286 = 0;
        v287 = *(v227 + 4 * v49);
        v288 = v285 - v287;
        if (v285 >= v287)
        {
          v285 = *(v227 + 4 * v49);
        }

        *(v110 + 4 * v49) = v285;
        if (a14 == 2 && v284 != 2)
        {
          if (*v209)
          {
            v286 = 0;
          }

          else
          {
            v286 = v49 < *v339;
          }
        }

        v289 = v286 + v284 * a14;
        v290 = (8 * a15 + *(*(v255 + 64) + 2 * v49)) * v289;
        if (v284 == 2)
        {
          v291 = (8 * v289) >> 2;
        }

        else
        {
          v291 = 0;
        }

        v292 = v291 - 21 * v289 + (v290 >> 1);
        v293 = v292 + v285;
        v294 = v292 + (v290 >> 3);
        if (v292 + v285 >= (24 * v289))
        {
          v294 = v292;
        }

        v295 = v292 + (v290 >> 2);
        if (v293 >= (16 * v289))
        {
          v295 = v294;
        }

        v296 = (((v285 + 4 * v289 + v295) & ~((v285 + 4 * v289 + v295) >> 31)) / v289) >> 3;
        *(v225 + 4 * v49) = v296;
        v297 = *(v110 + 4 * v49);
        if (v296 * a14 > v297 >> 3)
        {
          v296 = v297 >> v215 >> 3;
        }

        if (v296 >= 8)
        {
          v296 = 8;
        }

        *(v225 + 4 * v49) = v296;
        *(v226 + 4 * v49) = (v296 * 8 * v289) >= *(v110 + 4 * v49) + v295;
        v247 = v288 & ~(v288 >> 31);
        *(v110 + 4 * v49) -= *(v225 + 4 * v49) * v45;
        if (v247)
        {
          break;
        }

        goto LABEL_271;
      }

      v247 = (v285 - v45) & ~((v285 - v45) >> 31);
      if (v285 >= v45)
      {
        v285 = 8 * a14;
      }

      *(v110 + 4 * v49) = v285;
      *(v225 + 4 * v49) = 0;
      *(v226 + 4 * v49) = 1;
      if (!v247)
      {
LABEL_271:
        v277 = 0;
        ++v49;
        LOWORD(v247) = v283;
        if (v246 == v49)
        {
          goto LABEL_272;
        }

        continue;
      }

      break;
    }

    v280 = v247 >> v278;
    v281 = *(v225 + 4 * v49);
    if ((v247 >> v278) >= 8 - v281)
    {
      v280 = 8 - v281;
    }

    *(v225 + 4 * v49) = v280 + v281;
    v282 = v280 * v45;
    *(v226 + 4 * v49) = v282 >= (v247 - v277);
    v277 = v247 - v282;
    ++v49;
    LOWORD(v247) = v283;
    if (v246 != v49)
    {
      continue;
    }

    break;
  }

LABEL_272:
  v183 = v245;
  LODWORD(v37) = v245;
  *v329 = v277;
  v240 = v333;
  if (v245 < v334)
  {
LABEL_273:
    v298 = v37;
    v299 = v240 - v37;
    if (v299 < 0xC)
    {
      goto LABEL_274;
    }

    v307 = v183;
    v308 = 4 * v298;
    v309 = v225 + 4 * v298;
    v310 = v225 + 4 * v240;
    v311 = v110 + 4 * v298;
    v312 = v110 + 4 * v240;
    v313 = v226 + 4 * v298;
    v314 = v226 + 4 * v240;
    v315 = v309 >= v314 || v313 >= v310;
    v316 = !v315;
    v317 = v311 >= v314 || v313 >= v312;
    v318 = !v317;
    v315 = v311 >= v310;
    v183 = v307;
    if (!v315 && v309 < v312)
    {
      goto LABEL_274;
    }

    if (v316)
    {
      goto LABEL_274;
    }

    if (v318)
    {
      goto LABEL_274;
    }

    v298 += v299 & 0xFFFFFFFFFFFFFFFCLL;
    v320 = (v110 + v308);
    v321 = (v225 + v308);
    v322 = (v226 + v308);
    v323 = vnegq_s32(vdupq_n_s32(v215));
    v324.i64[0] = 0x100000001;
    v324.i64[1] = 0x100000001;
    v325 = v299 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v326 = vshrq_n_s32(vshlq_s32(*v320, v323), 3uLL);
      *v321++ = v326;
      v320->i64[0] = 0;
      v320->i64[1] = 0;
      ++v320;
      *v322++ = vandq_s8(vclezq_s32(v326), v324);
      v325 -= 4;
    }

    while (v325);
    if (v299 != (v299 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_274:
      v300 = v240 - v298;
      v301 = 4 * v298;
      v302 = (v226 + v301);
      v303 = (v225 + v301);
      v304 = (v110 + v301);
      do
      {
        *v303 = *v304 >> v215 >> 3;
        *v304++ = 0;
        v305 = *v303++;
        *v302++ = v305 < 1;
        --v300;
      }

      while (v300);
    }
  }

  return v183;
}

uint64_t opus_repacketizer_cat(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 < 1)
  {
    return 4294967292;
  }

  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a2;
    if ((*a2 ^ *a1) > 3u)
    {
      return 4294967292;
    }
  }

  else
  {
    v6 = *a2;
    *a1 = *a2;
    v7 = (v6 >> 3) & 3;
    v8 = v7 == 3;
    v9 = 8000 << v7;
    if (v8)
    {
      v10 = 480;
    }

    else
    {
      v10 = (5243 * (v9 >> 2)) >> 17;
    }

    if ((v6 & 8) != 0)
    {
      v11 = 160;
    }

    else
    {
      v11 = 80;
    }

    if ((~v6 & 0x60) != 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    if (v6 < 0)
    {
      v13 = (2622 * (v9 >> 4)) >> 16;
    }

    else
    {
      v13 = v12;
    }

    *(a1 + 488) = v13;
    v4 = *a2;
  }

  v14 = v4 & 3;
  if (v14)
  {
    if (v14 != 3)
    {
      v15 = 2;
      if ((v3 + 2) * *(a1 + 488) > 960)
      {
        return 4294967292;
      }

      goto LABEL_27;
    }

    if (a3 == 1)
    {
      return 4294967292;
    }

    v15 = a2[1] & 0x3F;
    if ((a2[1] & 0x3F) == 0)
    {
      return 4294967292;
    }
  }

  else
  {
    v15 = 1;
  }

  if ((v15 + v3) * *(a1 + 488) > 960)
  {
    return 4294967292;
  }

LABEL_27:
  v17 = 0;
  result = opus_packet_parse_impl(a2, a3, 0, &v17, (a1 + 8 * v3 + 8), (a1 + 2 * v3 + 392), 0, 0);
  if (result >= 1)
  {
    result = 0;
    *(a1 + 4) += v15;
  }

  return result;
}

uint64_t opus_repacketizer_out_range_impl(uint64_t a1, unsigned int a2, int a3, _BYTE *a4, uint64_t a5, int a6, int a7)
{
  v7 = 0xFFFFFFFFLL;
  if ((a2 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = a3 - a2;
  if (a3 <= a2 || *(a1 + 4) < a3)
  {
    return v7;
  }

  v10 = (a1 + 2 * a2 + 392);
  if (!a6)
  {
    v7 = 0;
    if (v8 != 2)
    {
      goto LABEL_9;
    }

LABEL_13:
    v12 = *(a1 + 2 * a2 + 394);
    v13 = *v10;
    if (v12 != v13)
    {
      v17 = v7 + v12 + v13;
      if (v13 > 251)
      {
        ++v17;
      }

      v7 = (v17 + 2);
      if (v7 > a5)
      {
        return 4294967294;
      }

      *a4 = *a1 & 0xFC | 2;
      v18 = a4 + 1;
      v19 = *v10;
      if (v19 >= 252)
      {
        a4[2] = (v19 - (v19 | 0xFCu)) >> 2;
        v20 = 2;
        LOBYTE(v19) = v19 | 0xFC;
      }

      else
      {
        v20 = 1;
      }

      *v18 = v19;
      v14 = &v18[v20];
      if (!a7)
      {
        goto LABEL_78;
      }

      goto LABEL_19;
    }

    v7 = (v7 + 2 * v13 + 1);
    if (v7 > a5)
    {
      return 4294967294;
    }

    v11 = *a1 & 0xFC | 1;
    goto LABEL_16;
  }

  if (v10[v8 - 1] <= 251)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v8 == 2)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v8 == 1)
  {
    v7 = (v7 + *v10 + 1);
    if (v7 > a5)
    {
      return 4294967294;
    }

    v11 = *a1 & 0xFC;
LABEL_16:
    *a4 = v11;
    v14 = a4 + 1;
    goto LABEL_18;
  }

  v14 = a4;
  if (v8 > 2)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (!a7)
  {
    goto LABEL_78;
  }

LABEL_19:
  if (v7 < a5)
  {
LABEL_20:
    if (a6)
    {
      if (v10[v8 - 1] <= 251)
      {
        v15 = 3;
      }

      else
      {
        v15 = 4;
      }

      v16 = *v10;
      if (v8 < 2)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v15 = 2;
      v16 = *v10;
      if (v8 < 2)
      {
        goto LABEL_32;
      }
    }

    if (*(a1 + 2 * a2 + 394) == v16)
    {
      v23 = (a1 + 2 * a2 + 396);
      v24 = v8 - 2;
      v25 = 1;
      while (v24)
      {
        v26 = *v23++;
        --v24;
        ++v25;
        if (v26 != v16)
        {
          v21 = v25 >= v8;
          goto LABEL_40;
        }
      }

LABEL_32:
      v7 = v15 + v8 * v16;
      if (v7 <= a5)
      {
        *a4 = *a1 | 3;
        a4[1] = a3 - a2;
        v21 = 1;
        v22 = a3 - a2;
LABEL_62:
        v14 = a4 + 2;
        v55 = a5 - v7;
        if (a7 && a5 != v7)
        {
          a4[1] = v22 | 0x40;
          v56 = (v55 - 1) / 255;
          if (v55 >= 256)
          {
            if (v56 <= 1)
            {
              v57 = 1;
            }

            else
            {
              v57 = v56;
            }

            v76 = a1;
            v75 = a2;
            v58 = a4;
            v59 = a7;
            v60 = a6;
            v61 = v21;
            memset(a4 + 2, 255, v57);
            v21 = v61;
            a6 = v60;
            a1 = v76;
            a2 = v75;
            a7 = v59;
            a4 = v58;
            v14 = &v58[v57 + 2];
          }

          *v14++ = v56 + v55 - 1;
          v7 = a5;
        }

        v62 = v8 < 2 || v21;
        if ((v62 & 1) == 0)
        {
          v63 = (v8 - 1);
          v64 = v10;
          do
          {
            while (1)
            {
              v66 = *v64++;
              v65 = v66;
              if (v66 < 252)
              {
                break;
              }

              v14[1] = (v65 - (v65 | 0xFCu)) >> 2;
              *v14 = v65 | 0xFC;
              v14 += 2;
              if (!--v63)
              {
                goto LABEL_78;
              }
            }

            *v14++ = v65;
            --v63;
          }

          while (v63);
        }

        goto LABEL_78;
      }

      return 4294967294;
    }

    v21 = 0;
LABEL_40:
    v27 = (v8 - 1);
    if (v8 < 5)
    {
      v28 = 0;
      goto LABEL_54;
    }

    if (v8 >= 0x11)
    {
      v28 = v27 & 0x7FFFFFF0;
      v29 = 0uLL;
      v30 = v15;
      v31 = (a1 + 2 * a2 + 408);
      v32.i64[0] = 0xFB000000FBLL;
      v32.i64[1] = 0xFB000000FBLL;
      v33.i64[0] = 0x200000002;
      v33.i64[1] = 0x200000002;
      v34 = v28;
      v35 = 0uLL;
      v36 = 0uLL;
      do
      {
        v37 = v31[-1];
        v38 = vcgtq_s32(vmovl_high_s16(v37), v32);
        v39 = vcgtq_s32(vmovl_s16(*v37.i8), v32);
        v40 = vcgtq_s32(vmovl_high_s16(*v31), v32);
        v41 = vcgtq_s32(vmovl_s16(*v31->i8), v32);
        v29 = vaddq_s32(vaddw_high_s16(v29, v37), vsubq_s32(vandq_s8(v38, v33), vmvnq_s8(v38)));
        v30 = vaddq_s32(vaddw_s16(v30, *v37.i8), vsubq_s32(vandq_s8(v39, v33), vmvnq_s8(v39)));
        v36 = vaddq_s32(vaddw_high_s16(v36, *v31), vsubq_s32(vandq_s8(v40, v33), vmvnq_s8(v40)));
        v35 = vaddq_s32(vaddw_s16(v35, *v31->i8), vsubq_s32(vandq_s8(v41, v33), vmvnq_s8(v41)));
        v31 += 2;
        v34 -= 16;
      }

      while (v34);
      v15 = vaddvq_s32(vaddq_s32(vaddq_s32(v35, v30), vaddq_s32(v36, v29)));
      if (v28 == v27)
      {
        goto LABEL_59;
      }

      if (((a3 - a2 - 1) & 0xC) == 0)
      {
LABEL_54:
        v50 = v27 - v28;
        v51 = (2 * v28 + 2 * a2 + a1 + 392);
        do
        {
          v53 = *v51++;
          v52 = v53;
          if (v53 <= 251)
          {
            v54 = 1;
          }

          else
          {
            v54 = 2;
          }

          v15 += v52 + v54;
          --v50;
        }

        while (v50);
LABEL_59:
        v7 = v15 + v10[v27];
        if (v7 <= a5)
        {
          *a4 = *a1 | 3;
          v22 = (a3 - a2) | 0x80;
          a4[1] = v22;
          goto LABEL_62;
        }

        return 4294967294;
      }
    }

    else
    {
      v28 = 0;
    }

    v42 = v28;
    v28 = v27 & 0x7FFFFFFC;
    v43 = v15;
    v44 = (2 * v42 + 2 * a2 + a1 + 392);
    v45 = v42 - v28;
    v46.i64[0] = 0xFB000000FBLL;
    v46.i64[1] = 0xFB000000FBLL;
    v47.i64[0] = 0x200000002;
    v47.i64[1] = 0x200000002;
    do
    {
      v48 = *v44++;
      v49 = vcgtq_s32(vmovl_s16(v48), v46);
      v43 = vaddq_s32(vaddw_s16(v43, v48), vsubq_s32(vandq_s8(v49, v47), vmvnq_s8(v49)));
      v45 += 4;
    }

    while (v45);
    v15 = vaddvq_s32(v43);
    if (v28 == v27)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

LABEL_78:
  if (a6)
  {
    v67 = v10[v8 - 1];
    if (v67 >= 252)
    {
      v14[1] = (v67 - (v67 | 0xFCu)) >> 2;
      v68 = 2;
      LOBYTE(v67) = v67 | 0xFC;
    }

    else
    {
      v68 = 1;
    }

    v69 = a7;
    *v14 = v67;
    v14 += v68;
  }

  else
  {
    v69 = a7;
  }

  v70 = a4;
  if (v8 >= 1)
  {
    v71 = (a1 + 8 * a2 + 8);
    do
    {
      v72 = *v71++;
      memmove(v14, v72, *v10);
      v73 = *v10++;
      v14 += v73;
      --v8;
    }

    while (v8);
  }

  if (v69 && v14 < &v70[a5])
  {
    bzero(v14, &v70[a5] - v14);
  }

  return v7;
}