uint64_t sub_277B50780(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 528);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 512);
  return sub_2779979E0(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B5088C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 160);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 4;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 4;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 160);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 4;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 160);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 4;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 4;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 160);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 4;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277997A6C(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 4;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 4;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 128);
  }

LABEL_38:
  v54 = v98;
  return sub_277997A6C(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B50E0C()
{
  v0 = MEMORY[0x28223BE20]();
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * v1);
      }

      while (v35 != 2080);
      v38 = (2 * v7);
      v39 = v98;
      v40 = v97;
      v41 = 64;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v3)
      {
        v13 = (2 * v7);
        v14 = v98;
        v15 = 64;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * v1;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * v1);
      }

      while (v55 != 2080);
      v58 = vdupq_n_s16(8 - v3);
      v59 = (2 * v7);
      v60 = vdupq_n_s16(v3);
      v61 = v98;
      v62 = v97;
      v63 = 64;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - v2);
      v70 = vdupq_n_s16(v2);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * v1);
      }

      while (v68 != 2080);
      v73 = (2 * v7);
      v74 = v98;
      v75 = v97;
      v76 = 64;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!v3)
      {
        v20 = (2 * v7);
        v21 = vdupq_n_s16(8 - v2);
        v22 = vdupq_n_s16(v2);
        v23 = v98;
        v24 = 64;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * v1;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - v2);
      v83 = vdupq_n_s16(v2);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * v1);
      }

      while (v81 != 2080);
      v86 = vdupq_n_s16(8 - v3);
      v87 = (2 * v7);
      v88 = vdupq_n_s16(v3);
      v89 = v98;
      v90 = v97;
      v91 = 64;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277997B14(v54 >> 1, 16, v4, v5, v6);
  }

  v9 = (2 * v7);
  if (v3 == 4)
  {
    v29 = v98;
    v30 = 64;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * v1)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * v1;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (v3)
  {
    v46 = vdupq_n_s16(8 - v3);
    v47 = vdupq_n_s16(v3);
    v48 = v98;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * v1), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * v1;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * v1);
    }

    while ((v10 * 16) != 2048);
  }

LABEL_38:
  v54 = v98;
  return sub_277997B14(v54 >> 1, 16, v4, v5, v6);
}

uint64_t sub_277B513A8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = v91;
      v33 = 9;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v32 += 64;
        v8 += 2 * a2;
        --v33;
      }

      while (v33);
      v36 = 2 * a8;
      v37 = v91;
      v38 = v90;
      v39 = 8;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 64]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v36 += v40;
        v37 += 64;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!a4)
      {
        v14 = 2 * a8;
        v15 = v91;
        v16 = 8;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 64;
          v8 += 2 * a2;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 9;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v8 += 2 * a2;
        --v52;
      }

      while (v52);
      v55 = 2 * a8;
      v56 = 8;
      v57 = vdupq_n_s16(8 - a4);
      v58 = vdupq_n_s16(a4);
      v59 = v91;
      v60 = v90;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v60[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v59[v61], v57), *&v59[v61 + 64], v58), 3uLL), *(v55 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v55 += v61;
        v59 += 64;
        v60 += 64;
        --v56;
      }

      while (v56);
    }

    goto LABEL_69;
  }

  if (a3)
  {
    v19 = 8;
    if (a4 == 4)
    {
      v63 = vdupq_n_s16(8 - a3);
      v64 = vdupq_n_s16(a3);
      v65 = v91;
      v66 = 9;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v8 += 2 * a2;
        --v66;
      }

      while (v66);
      v69 = 2 * a8;
      v70 = v91;
      v71 = v90;
      v72 = 8;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 64]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v69 += v73;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!a4)
      {
        v20 = vdupq_n_s16(8 - a3);
        v21 = 2 * a8;
        v22 = vdupq_n_s16(a3);
        v23 = v91;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v23[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v22), 3uLL), *(v21 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v21 += v24;
          v23 += 64;
          v8 += 2 * a2;
          --v19;
        }

        while (v19);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - a3);
      v76 = vdupq_n_s16(a3);
      v77 = v91;
      v78 = 9;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * a2;
        --v78;
      }

      while (v78);
      v81 = 2 * a8;
      v82 = 8;
      v83 = vdupq_n_s16(8 - a4);
      v84 = vdupq_n_s16(a4);
      v85 = v91;
      v86 = v90;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v86[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v87], v83), *&v85[v87 + 64], v84), 3uLL), *(v81 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v81 += v87;
        v85 += 64;
        v86 += 64;
        --v82;
      }

      while (v82);
    }

LABEL_69:
    v50 = v90;
    return sub_277997BBC(v50 >> 1, 32, a5, a6, a7);
  }

  v9 = 2 * a8;
  if (a4 == 4)
  {
    v26 = 2 * a2;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 8;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 64;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    v42 = 8;
    v43 = vdupq_n_s16(8 - a4);
    v44 = vdupq_n_s16(a4);
    v45 = 2 * a2;
    v46 = v8 + v45;
    v47 = v91;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v47[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v43), *(v46 + v48), v44), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v47 += 64;
      v46 += v45;
      v8 += v45;
      --v42;
    }

    while (v42);
  }

  else
  {
    v10 = v91;
    v11 = 8;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 64;
      v8 += 2 * a2;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277997BBC(v50 >> 1, 32, a5, a6, a7);
}

uint64_t sub_277B51918()
{
  v0 = MEMORY[0x28223BE20]();
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 17;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x38);
        v32 += 128;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 16;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 128]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x38);
        v36 += v40;
        v37 += 128;
        v38 += 128;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 16;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x38);
          v14 += v17;
          v15 += 128;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x38);
        v51 += 128;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 128], v57), 3uLL), *(v56 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v56 += v61;
        v58 += 128;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x38);
        v65 += 128;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 16;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 128]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x38);
        v69 += v73;
        v70 += 128;
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x38);
          v19 += v24;
          v22 += 128;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 17;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x38);
        v77 += 128;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 16;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 128], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x38);
        v82 += v87;
        v84 += 128;
        v85 += 128;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277997C60(v50 >> 1, 64, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x38);
      v9 += v30;
      v28 += 128;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 16;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x38);
      v9 += v48;
      v46 += 128;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 16;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x38);
      v9 += v12;
      v10 += 128;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277997C60(v50 >> 1, 64, v4, v5, v6);
}

uint64_t sub_277B51EBC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[5] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 40);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 32);
  return sub_277996B04(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B51FC0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[9] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 72);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 64);
  return sub_277996BAC(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B520C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 80);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 64);
  return sub_277996C54(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B521C8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 144);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 128);
  return sub_277996CE0(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B522D4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 272);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 256);
  return sub_277996D6C(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B523E0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 288);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 8;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 8;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 288);
      v58 = (2 * a8);
      v59 = 8;
      v60 = vdupq_n_s16(8 - a4);
      v61 = vdupq_n_s16(a4);
      v62 = v98;
      v63 = v97;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v58++;
          *&v63[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v62[2 * v64], v60), *&v62[2 * v64 + 32], v61), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v62 += 32;
        v63 += 32;
        --v59;
      }

      while (v59);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 288);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 8;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = 8;
        v21 = vdupq_n_s16(8 - a3);
        v22 = (2 * a8);
        v23 = vdupq_n_s16(a3);
        v24 = v98;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v22++;
            *&v24[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v23), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v24 += 32;
          --v20;
        }

        while (v20);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 288);
      v86 = (2 * a8);
      v87 = 8;
      v88 = vdupq_n_s16(8 - a4);
      v89 = vdupq_n_s16(a4);
      v90 = v98;
      v91 = v97;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v86++;
          *&v91[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v90[2 * v92], v88), *&v90[2 * v92 + 32], v89), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v90 += 32;
        v91 += 32;
        --v87;
      }

      while (v87);
    }

LABEL_59:
    v54 = v97;
    return sub_277996DF8(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 8;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = 8;
    v47 = vdupq_n_s16(8 - a4);
    v48 = vdupq_n_s16(a4);
    v49 = v98;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v49[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v47), *(v8 + 2 * v50 + 2 * a2), v48), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v49 += 32;
      --v46;
    }

    while (v46);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 256);
  }

LABEL_38:
  v54 = v98;
  return sub_277996DF8(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B52950(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 544);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 16;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 16;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 544);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 16;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 544);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 16;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 16;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 544);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 16;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277996EA0(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 16;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 512);
  }

LABEL_38:
  v54 = v98;
  return sub_277996EA0(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B52ED0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 1056);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 32;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 32;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 1056);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 32;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 1056);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 32;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 32;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 1056);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 32;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277996F48(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 32;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 1024);
  }

LABEL_38:
  v54 = v98;
  return sub_277996F48(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B53450(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = v91;
      v33 = 17;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v32 += 64;
        v8 += 2 * a2;
        --v33;
      }

      while (v33);
      v36 = 2 * a8;
      v37 = v91;
      v38 = v90;
      v39 = 16;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 64]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v36 += v40;
        v37 += 64;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!a4)
      {
        v14 = 2 * a8;
        v15 = v91;
        v16 = 16;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 64;
          v8 += 2 * a2;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v8 += 2 * a2;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - a4);
      v56 = 2 * a8;
      v57 = vdupq_n_s16(a4);
      v58 = v91;
      v59 = v90;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 64], v57), 3uLL), *(v56 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v56 += v61;
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v63 = vdupq_n_s16(8 - a3);
      v64 = vdupq_n_s16(a3);
      v65 = v91;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v8 += 2 * a2;
        --v66;
      }

      while (v66);
      v69 = 2 * a8;
      v70 = v91;
      v71 = v90;
      v72 = 16;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 64]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v69 += v73;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!a4)
      {
        v19 = 2 * a8;
        v20 = vdupq_n_s16(8 - a3);
        v21 = vdupq_n_s16(a3);
        v22 = v91;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v19 += v24;
          v22 += 64;
          v8 += 2 * a2;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - a3);
      v76 = vdupq_n_s16(a3);
      v77 = v91;
      v78 = 17;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * a2;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - a4);
      v82 = 2 * a8;
      v83 = vdupq_n_s16(a4);
      v84 = v91;
      v85 = v90;
      v86 = 16;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 64], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v82 += v87;
        v84 += 64;
        v85 += 64;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277996FF0(v50 >> 1, 32, a5, a6, a7);
  }

  v9 = 2 * a8;
  if (a4 == 4)
  {
    v26 = 2 * a2;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 64;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    v42 = vdupq_n_s16(8 - a4);
    v43 = vdupq_n_s16(a4);
    v44 = 2 * a2;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 16;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v46 += 64;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 16;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 64;
      v8 += 2 * a2;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277996FF0(v50 >> 1, 32, a5, a6, a7);
}

uint64_t sub_277B539D8()
{
  v0 = MEMORY[0x28223BE20]();
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 33;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v32 += 64;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 32;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 64]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v36 += v40;
        v37 += 64;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 32;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 64;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 33;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 32;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 64], v57), 3uLL), *(v56 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v56 += v61;
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 33;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 32;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 64]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v69 += v73;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 32;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v19 += v24;
          v22 += 64;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 33;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 32;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 64], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v82 += v87;
        v84 += 64;
        v85 += 64;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277997094(v50 >> 1, 32, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 32;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 64;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 32;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v46 += 64;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 32;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 64;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277997094(v50 >> 1, 32, v4, v5, v6);
}

uint64_t sub_277B53F7C()
{
  v0 = MEMORY[0x28223BE20]();
  v91[520] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 65;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x18);
        v32 += 8;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 64;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 8]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x18);
        v36 += v40 * 8;
        v37 += 8;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 64;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 8;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x18);
        v51 += 8;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 8], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x18);
        v56 += v61 * 8;
        v58 += 8;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 65;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x18);
        v65 += 8;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 64;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 8]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x18);
        v69 += v73 * 8;
        v70 += 8;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 64;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v19 += v24;
          v22 += 8;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 65;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x18);
        v77 += 8;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 64;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 8], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x18);
        v82 += v87 * 8;
        v84 += 8;
        v85 += 64;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277997138(v50 >> 1, 32, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 64;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 8;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 64;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v46 += 8;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 64;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 8;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277997138(v50 >> 1, 32, v4, v5, v6);
}

uint64_t sub_277B54558()
{
  v0 = MEMORY[0x28223BE20]();
  v91[528] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 33;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x38);
        v32 += 16;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 32;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 16]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x38);
        v36 += v40 * 8;
        v37 += 16;
        v38 += 128;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 32;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x38);
          v14 += v17;
          v15 += 16;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 33;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v51 += 16;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 32;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 16], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v56 += v61 * 8;
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 33;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x38);
        v65 += 16;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 32;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 16]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x38);
        v69 += v73 * 8;
        v70 += 16;
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 32;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x38);
          v19 += v24;
          v22 += 16;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 33;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v77 += 16;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 32;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 16], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v82 += v87 * 8;
        v84 += 16;
        v85 += 128;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277997208(v50 >> 1, 64, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 32;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x38);
      v9 += v30;
      v28 += 16;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 32;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x38);
      v9 += v48;
      v46 += 16;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 32;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x38);
      v9 += v12;
      v10 += 16;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277997208(v50 >> 1, 64, v4, v5, v6);
}

uint64_t sub_277B54B34()
{
  v0 = MEMORY[0x28223BE20]();
  v91[1040] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 65;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x38);
        v32 += 16;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 64;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 16]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x38);
        v36 += v40 * 8;
        v37 += 16;
        v38 += 128;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 64;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x38);
          v14 += v17;
          v15 += 16;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v51 += 16;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 16], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v56 += v61 * 8;
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 65;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x38);
        v65 += 16;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 64;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 16]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x38);
        v69 += v73 * 8;
        v70 += 16;
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 64;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x38);
          v19 += v24;
          v22 += 16;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 65;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v77 += 16;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 64;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 16], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v82 += v87 * 8;
        v84 += 16;
        v85 += 128;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_2779972D8(v50 >> 1, 64, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 64;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x38);
      v9 += v30;
      v28 += 16;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 64;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x38);
      v9 += v48;
      v46 += 16;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 64;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x38);
      v9 += v12;
      v10 += 16;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_2779972D8(v50 >> 1, 64, v4, v5, v6);
}

uint64_t sub_277B55110()
{
  v0 = MEMORY[0x28223BE20]();
  v91[2064] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 129;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x38);
        v32 += 16;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 128;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 16]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x38);
        v36 += v40 * 8;
        v37 += 16;
        v38 += 128;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 128;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x38);
          v14 += v17;
          v15 += 16;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 129;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v51 += 16;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 128;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 16], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v56 += v61 * 8;
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 129;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x38);
        v65 += 16;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 128;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 16]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x38);
        v69 += v73 * 8;
        v70 += 16;
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 128;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x38);
          v19 += v24;
          v22 += 16;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 129;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v77 += 16;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 128;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 16], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v82 += v87 * 8;
        v84 += 16;
        v85 += 128;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_2779973A8(v50 >> 1, 64, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 128;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x38);
      v9 += v30;
      v28 += 16;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 128;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x38);
      v9 += v48;
      v46 += 16;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 128;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x38);
      v9 += v12;
      v10 += 16;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_2779973A8(v50 >> 1, 64, v4, v5, v6);
}

uint64_t sub_277B556EC()
{
  v0 = MEMORY[0x28223BE20]();
  v91[2080] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 65;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x78);
        v32 += 32;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 64;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 32]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x78);
        v36 += v40 * 8;
        v37 += 32;
        v38 += 256;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 64;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x78);
          v14 += v17;
          v15 += 32;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x78);
        v51 += 32;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 32], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v56 += v61 * 8;
        v58 += 32;
        v59 += 256;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 65;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x78);
        v65 += 32;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 64;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 32]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x78);
        v69 += v73 * 8;
        v70 += 32;
        v71 += 256;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 64;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x78);
          v19 += v24;
          v22 += 32;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 65;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v77 += 32;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 64;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 32], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x78);
        v82 += v87 * 8;
        v84 += 32;
        v85 += 256;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277997478(v50 >> 1, 128, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 64;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x78);
      v9 += v30;
      v28 += 32;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 64;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x78);
      v9 += v48;
      v46 += 32;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 64;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x78);
      v9 += v12;
      v10 += 32;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277997478(v50 >> 1, 128, v4, v5, v6);
}

uint64_t sub_277B55CC8()
{
  v0 = MEMORY[0x28223BE20]();
  v91[4128] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 129;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x78);
        v32 += 32;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 128;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 32]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x78);
        v36 += v40 * 8;
        v37 += 32;
        v38 += 256;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 128;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x78);
          v14 += v17;
          v15 += 32;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 129;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x78);
        v51 += 32;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 128;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 32], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v56 += v61 * 8;
        v58 += 32;
        v59 += 256;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 129;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x78);
        v65 += 32;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 128;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 32]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x78);
        v69 += v73 * 8;
        v70 += 32;
        v71 += 256;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 128;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x78);
          v19 += v24;
          v22 += 32;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 129;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v77 += 32;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 128;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 32], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x78);
        v82 += v87 * 8;
        v84 += 32;
        v85 += 256;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277997548(v50 >> 1, 128, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 128;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x78);
      v9 += v30;
      v28 += 32;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 128;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x78);
      v9 += v48;
      v46 += 32;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 128;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x78);
      v9 += v12;
      v10 += 32;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277997548(v50 >> 1, 128, v4, v5, v6);
}

uint64_t sub_277B562A8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[17] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 136);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 128);
  return sub_277997D04(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B563B4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 528);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 512);
  return sub_277997DAC(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B564C0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 160);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 4;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 4;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 160);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 4;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 160);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 4;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 4;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 160);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 4;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277997E38(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 4;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 4;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 128);
  }

LABEL_38:
  v54 = v98;
  return sub_277997E38(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B56A40()
{
  v0 = MEMORY[0x28223BE20]();
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * v1);
      }

      while (v35 != 2080);
      v38 = (2 * v7);
      v39 = v98;
      v40 = v97;
      v41 = 64;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v3)
      {
        v13 = (2 * v7);
        v14 = v98;
        v15 = 64;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * v1;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * v1);
      }

      while (v55 != 2080);
      v58 = vdupq_n_s16(8 - v3);
      v59 = (2 * v7);
      v60 = vdupq_n_s16(v3);
      v61 = v98;
      v62 = v97;
      v63 = 64;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - v2);
      v70 = vdupq_n_s16(v2);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * v1);
      }

      while (v68 != 2080);
      v73 = (2 * v7);
      v74 = v98;
      v75 = v97;
      v76 = 64;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!v3)
      {
        v20 = (2 * v7);
        v21 = vdupq_n_s16(8 - v2);
        v22 = vdupq_n_s16(v2);
        v23 = v98;
        v24 = 64;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * v1;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - v2);
      v83 = vdupq_n_s16(v2);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * v1);
      }

      while (v81 != 2080);
      v86 = vdupq_n_s16(8 - v3);
      v87 = (2 * v7);
      v88 = vdupq_n_s16(v3);
      v89 = v98;
      v90 = v97;
      v91 = 64;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277997EE0(v54 >> 1, 16, v4, v5, v6);
  }

  v9 = (2 * v7);
  if (v3 == 4)
  {
    v29 = v98;
    v30 = 64;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * v1)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * v1;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (v3)
  {
    v46 = vdupq_n_s16(8 - v3);
    v47 = vdupq_n_s16(v3);
    v48 = v98;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * v1), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * v1;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * v1);
    }

    while ((v10 * 16) != 2048);
  }

LABEL_38:
  v54 = v98;
  return sub_277997EE0(v54 >> 1, 16, v4, v5, v6);
}

uint64_t sub_277B56FDC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = v91;
      v33 = 9;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v32 += 64;
        v8 += 2 * a2;
        --v33;
      }

      while (v33);
      v36 = 2 * a8;
      v37 = v91;
      v38 = v90;
      v39 = 8;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 64]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v36 += v40;
        v37 += 64;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!a4)
      {
        v14 = 2 * a8;
        v15 = v91;
        v16 = 8;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 64;
          v8 += 2 * a2;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 9;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v8 += 2 * a2;
        --v52;
      }

      while (v52);
      v55 = 2 * a8;
      v56 = 8;
      v57 = vdupq_n_s16(8 - a4);
      v58 = vdupq_n_s16(a4);
      v59 = v91;
      v60 = v90;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v60[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v59[v61], v57), *&v59[v61 + 64], v58), 3uLL), *(v55 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v55 += v61;
        v59 += 64;
        v60 += 64;
        --v56;
      }

      while (v56);
    }

    goto LABEL_69;
  }

  if (a3)
  {
    v19 = 8;
    if (a4 == 4)
    {
      v63 = vdupq_n_s16(8 - a3);
      v64 = vdupq_n_s16(a3);
      v65 = v91;
      v66 = 9;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v8 += 2 * a2;
        --v66;
      }

      while (v66);
      v69 = 2 * a8;
      v70 = v91;
      v71 = v90;
      v72 = 8;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 64]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v69 += v73;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!a4)
      {
        v20 = vdupq_n_s16(8 - a3);
        v21 = 2 * a8;
        v22 = vdupq_n_s16(a3);
        v23 = v91;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v23[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v22), 3uLL), *(v21 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v21 += v24;
          v23 += 64;
          v8 += 2 * a2;
          --v19;
        }

        while (v19);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - a3);
      v76 = vdupq_n_s16(a3);
      v77 = v91;
      v78 = 9;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * a2;
        --v78;
      }

      while (v78);
      v81 = 2 * a8;
      v82 = 8;
      v83 = vdupq_n_s16(8 - a4);
      v84 = vdupq_n_s16(a4);
      v85 = v91;
      v86 = v90;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v86[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v87], v83), *&v85[v87 + 64], v84), 3uLL), *(v81 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v81 += v87;
        v85 += 64;
        v86 += 64;
        --v82;
      }

      while (v82);
    }

LABEL_69:
    v50 = v90;
    return sub_277997F88(v50 >> 1, 32, a5, a6, a7);
  }

  v9 = 2 * a8;
  if (a4 == 4)
  {
    v26 = 2 * a2;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 8;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 64;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    v42 = 8;
    v43 = vdupq_n_s16(8 - a4);
    v44 = vdupq_n_s16(a4);
    v45 = 2 * a2;
    v46 = v8 + v45;
    v47 = v91;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v47[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v43), *(v46 + v48), v44), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v47 += 64;
      v46 += v45;
      v8 += v45;
      --v42;
    }

    while (v42);
  }

  else
  {
    v10 = v91;
    v11 = 8;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 64;
      v8 += 2 * a2;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277997F88(v50 >> 1, 32, a5, a6, a7);
}

uint64_t sub_277B5754C()
{
  v0 = MEMORY[0x28223BE20]();
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 17;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x38);
        v32 += 128;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 16;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 128]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x38);
        v36 += v40;
        v37 += 128;
        v38 += 128;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 16;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x38);
          v14 += v17;
          v15 += 128;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x38);
        v51 += 128;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 128], v57), 3uLL), *(v56 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v56 += v61;
        v58 += 128;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x38);
        v65 += 128;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 16;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 128]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x38);
        v69 += v73;
        v70 += 128;
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x38);
          v19 += v24;
          v22 += 128;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 17;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x38);
        v77 += 128;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 16;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 128], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x38);
        v82 += v87;
        v84 += 128;
        v85 += 128;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_27799802C(v50 >> 1, 64, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x38);
      v9 += v30;
      v28 += 128;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 16;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x38);
      v9 += v48;
      v46 += 128;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 16;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x38);
      v9 += v12;
      v10 += 128;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_27799802C(v50 >> 1, 64, v4, v5, v6);
}

uint64_t sub_277B57AF0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, int a10, int a11, int *a12)
{
  v12 = 0;
  v28[5] = *MEMORY[0x277D85DE8];
  v13 = vdup_n_s16(8 - a3);
  v14 = vdup_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    v28[v12++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v15 = (v15 + 2 * a2);
  }

  while ((v12 * 8) != 40);
  v16 = 0;
  v17 = vdup_n_s16(8 - a4);
  v18 = vdup_n_s16(a4);
  v19 = v28[0];
  do
  {
    v20 = v28[v16 + 1];
    *&v27[v16 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v19, v17), v20, v18), 3uLL);
    ++v16;
    v19 = v20;
  }

  while ((v16 * 8) != 32);
  v21 = 0;
  v22 = (2 * a7);
  if (a11)
  {
    v23 = (2 * a7);
  }

  else
  {
    v23 = v27;
  }

  if (a11)
  {
    v22 = v27;
  }

  a9.i32[0] = 4194368;
  a9.i16[2] = 64;
  a9.i16[3] = 64;
  do
  {
    v20.i32[0] = *a8;
    v24 = vmovl_u8(v20).u64[0];
    v20 = vsubw_u8(a9, v20).u64[0];
    *&v26[v21] = vrshrn_n_s32(vmlal_u16(vmull_u16(v20, *&v22[v21]), v24, *&v23[v21]), 6uLL);
    a8 = (a8 + a10);
    v21 += 8;
  }

  while (v21 != 32);
  return sub_2779958B4(v26 >> 1, 4u, a5, a6, a12);
}

uint64_t sub_277B57C48(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, int a10, int a11, int *a12)
{
  v12 = 0;
  v28[9] = *MEMORY[0x277D85DE8];
  v13 = vdup_n_s16(8 - a3);
  v14 = vdup_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    v28[v12++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v15 = (v15 + 2 * a2);
  }

  while ((v12 * 8) != 72);
  v16 = 0;
  v17 = vdup_n_s16(8 - a4);
  v18 = vdup_n_s16(a4);
  v19 = v28[0];
  do
  {
    v20 = v28[v16 + 1];
    *&v27[v16 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v19, v17), v20, v18), 3uLL);
    ++v16;
    v19 = v20;
  }

  while ((v16 * 8) != 64);
  v21 = 0;
  v22 = (2 * a7);
  if (a11)
  {
    v23 = (2 * a7);
  }

  else
  {
    v23 = v27;
  }

  if (a11)
  {
    v22 = v27;
  }

  a9.i32[0] = 4194368;
  a9.i16[2] = 64;
  a9.i16[3] = 64;
  do
  {
    v20.i32[0] = *a8;
    v24 = vmovl_u8(v20).u64[0];
    v20 = vsubw_u8(a9, v20).u64[0];
    *&v26[v21] = vrshrn_n_s32(vmlal_u16(vmull_u16(v20, *&v22[v21]), v24, *&v23[v21]), 6uLL);
    a8 = (a8 + a10);
    v21 += 8;
  }

  while (v21 != 64);
  return sub_27799593C(v26 >> 1, 4u, a5, a6, a12);
}

uint64_t sub_277B57DA0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v34 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v33[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 80);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v33[0];
  do
  {
    v21 = v33[v17 + 1];
    *&v32[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 64);
  sub_2779725E0(v31 >> 1, a7, 8, 4, v32 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  v22 = 0;
  v23 = (2 * a5);
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  do
  {
    v27 = vsubq_s16(*&v31[v22], *v23);
    v26 = vpadalq_s16(v26, v27);
    v24 = vmlal_s16(v24, *v27.i8, *v27.i8);
    v25 = vmlal_high_s16(v25, v27, v27);
    v22 += 16;
    v23 = (v23 + 2 * a6);
  }

  while (v22 != 64);
  v28 = vaddlvq_u32(vaddq_s32(v25, v24));
  *a11 = v28;
  v29 = vaddvq_s32(v26);
  return v28 - ((v29 * v29) >> 5);
}

uint64_t sub_277B57F38(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v34 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v33[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 144);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v33[0];
  do
  {
    v21 = v33[v17 + 1];
    *&v32[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 128);
  sub_2779725E0(v31 >> 1, a7, 8, 8, v32 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  v22 = 0;
  v23 = (2 * a5);
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  do
  {
    v27 = vsubq_s16(*&v31[v22], *v23);
    v26 = vpadalq_s16(v26, v27);
    v24 = vmlal_s16(v24, *v27.i8, *v27.i8);
    v25 = vmlal_high_s16(v25, v27, v27);
    v22 += 16;
    v23 = (v23 + 2 * a6);
  }

  while (v22 != 128);
  v28 = vaddlvq_u32(vaddq_s32(v25, v24));
  *a11 = v28;
  v29 = vaddvq_s32(v26);
  return v28 - ((v29 * v29) >> 6);
}

uint64_t sub_277B580D0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v34 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v33[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 272);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v33[0];
  do
  {
    v21 = v33[v17 + 1];
    *&v32[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 256);
  sub_2779725E0(v31 >> 1, a7, 8, 16, v32 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  v22 = 0;
  v23 = (2 * a5);
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  do
  {
    v27 = vsubq_s16(*&v31[v22], *v23);
    v26 = vpadalq_s16(v26, v27);
    v24 = vmlal_s16(v24, *v27.i8, *v27.i8);
    v25 = vmlal_high_s16(v25, v27, v27);
    v22 += 16;
    v23 = (v23 + 2 * a6);
  }

  while (v22 != 256);
  v28 = vaddlvq_u32(vaddq_s32(v25, v24));
  *a11 = v28;
  v29 = vaddvq_s32(v26);
  return v28 - ((v29 * v29) >> 7);
}

uint64_t sub_277B58268(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, double a11, uint8x8_t a12, int a13, int a14, _DWORD *a15)
{
  v154[31] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v115 = 0;
      v116 = (v17 + 18);
      do
      {
        v117 = &v153[v115];
        *v117 = vrhaddq_u16(*(v116 - 18), v116[-1]);
        v117[1] = vrhaddq_u16(*(v116 - 2), *v116);
        v115 += 2;
        v116 = (v116 + 2 * a2);
      }

      while ((v115 * 16) != 288);
      v118 = v153[0];
      v119 = v154;
      v120 = 32;
      do
      {
        v121 = &v151[v120];
        v123 = v119[-2];
        v122 = v119[-1];
        v124 = *v119;
        v119 += 2;
        v125 = *v124.i8;
        v126 = vrhaddq_u16(v123, v124);
        v121[-2] = vrhaddq_u16(v118, v122);
        v121[-1] = v126;
        v120 += 32;
        v118 = v122;
      }

      while (v120 != 288);
      v127 = v152;
      v128 = 8;
      sub_2779725E0(v152 >> 1, a7, 16, 8, v151 >> 1, 16, a8, a13, v122, *v122.i64, *v126.i64, v125, a14);
      v129 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v130 = 0;
        v131 = 1;
        do
        {
          v132 = v131;
          v133 = vsubq_s16(*&v127[2 * v130], *(v129 + 2 * v130));
          v23 = vpadalq_s16(v23, v133);
          v21 = vmlal_s16(v21, *v133.i8, *v133.i8);
          v22 = vmlal_high_s16(v22, v133, v133);
          v130 = 8;
          v131 = 0;
        }

        while ((v132 & 1) != 0);
        v127 += 32;
        v129 += 2 * a6;
        --v128;
      }

      while (v128);
    }

    else
    {
      v28 = 0;
      v29 = (v17 + 18);
      v30 = 2 * a2;
      if (a4)
      {
        do
        {
          v41 = &v153[v28];
          *v41 = vrhaddq_u16(*(v29 - 18), v29[-1]);
          v41[1] = vrhaddq_u16(*(v29 - 2), *v29);
          v28 += 2;
          v29 = (v29 + v30);
        }

        while ((v28 * 16) != 288);
        v42 = vdupq_n_s16(8 - a4);
        v43 = vdupq_n_s16(a4);
        v44 = v153[0];
        v45 = v154;
        v46 = 32;
        do
        {
          v48 = v45[-2];
          v47 = v45[-1];
          v49 = *v45;
          v45 += 2;
          v50 = &v151[v46];
          v50[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v42), v47, v43), 3uLL);
          v50[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v48, v42), v49, v43), 3uLL);
          v46 += 32;
          v44 = v47;
        }

        while (v46 != 288);
        v51 = v152;
        v52 = 8;
        sub_2779725E0(v152 >> 1, a7, 16, 8, v151 >> 1, 16, a8, a13, v42, *v43.i64, *v47.i64, *v47.i8, a14);
        v53 = 2 * a5;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v54 = 0;
          v55 = 1;
          do
          {
            v56 = v55;
            v57 = vsubq_s16(*&v51[2 * v54], *(v53 + 2 * v54));
            v23 = vpadalq_s16(v23, v57);
            v21 = vmlal_s16(v21, *v57.i8, *v57.i8);
            v22 = vmlal_high_s16(v22, v57, v57);
            v54 = 8;
            v55 = 0;
          }

          while ((v56 & 1) != 0);
          v51 += 32;
          v53 += 2 * a6;
          --v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v31 = &v153[v28];
          *v31 = vrhaddq_u16(*(v29 - 18), v29[-1]);
          v32 = *v29;
          v33 = vrhaddq_u16(*(v29 - 2), *v29);
          v31[1] = v33;
          v28 += 2;
          v29 = (v29 + v30);
        }

        while ((v28 * 16) != 256);
        v34 = v151;
        v35 = 8;
        sub_2779725E0(v151 >> 1, a7, 16, 8, v153 >> 1, 16, a8, a13, v33, *v32.i64, a11, a12, a14);
        v36 = 2 * a5;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v37 = 0;
          v38 = 1;
          do
          {
            v39 = v38;
            v40 = vsubq_s16(*&v34[2 * v37], *(v36 + 2 * v37));
            v23 = vpadalq_s16(v23, v40);
            v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
            v22 = vmlal_high_s16(v22, v40, v40);
            v37 = 8;
            v38 = 0;
          }

          while ((v39 & 1) != 0);
          v34 += 32;
          v36 += 2 * a6;
          --v35;
        }

        while (v35);
      }
    }
  }

  else if (a3)
  {
    v58 = 0;
    v59 = vdupq_n_s16(8 - a3);
    v60 = vdupq_n_s16(a3);
    v61 = (v17 + 18);
    v62 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v73 = &v153[v58];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 288);
      v74 = 0;
      v75 = v153[0];
      do
      {
        v76 = &v151[v74 * 16];
        v77 = v153[v74 + 2];
        v78 = v153[v74 + 3];
        v79 = vrhaddq_u16(v153[v74 + 1], v78);
        *v76 = vrhaddq_u16(v75, v77);
        v76[1] = v79;
        v74 += 2;
        v75 = v77;
      }

      while ((v74 * 16) != 256);
      v80 = v152;
      v81 = 8;
      sub_2779725E0(v152 >> 1, a7, 16, 8, v151 >> 1, 16, a8, a13, v77, *v77.i64, *v79.i64, *v78.i8, a14);
      v82 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = v84;
          v86 = vsubq_s16(*&v80[2 * v83], *(v82 + 2 * v83));
          v23 = vpadalq_s16(v23, v86);
          v21 = vmlal_s16(v21, *v86.i8, *v86.i8);
          v22 = vmlal_high_s16(v22, v86, v86);
          v83 = 8;
          v84 = 0;
        }

        while ((v85 & 1) != 0);
        v80 += 32;
        v82 += 2 * a6;
        --v81;
      }

      while (v81);
    }

    else if (a4)
    {
      do
      {
        v87 = &v153[v58];
        *v87 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v87[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 288);
      v88 = 0;
      v89 = vdupq_n_s16(8 - a4);
      v90 = vdupq_n_s16(a4);
      v91 = v153[0];
      do
      {
        v92 = v153[v88 + 2];
        v93 = &v151[v88 * 16];
        v94 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153[v88 + 1], v89), v153[v88 + 3], v90), 3uLL);
        *v93 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v91, v89), v92, v90), 3uLL);
        v93[1] = v94;
        v88 += 2;
        v91 = v92;
      }

      while ((v88 * 16) != 256);
      v95 = v152;
      v96 = 8;
      sub_2779725E0(v152 >> 1, a7, 16, 8, v151 >> 1, 16, a8, a13, v89, *v90.i64, *v92.i64, *v92.i8, a14);
      v97 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v98 = 0;
        v99 = 1;
        do
        {
          v100 = v99;
          v101 = vsubq_s16(*&v95[2 * v98], *(v97 + 2 * v98));
          v23 = vpadalq_s16(v23, v101);
          v21 = vmlal_s16(v21, *v101.i8, *v101.i8);
          v22 = vmlal_high_s16(v22, v101, v101);
          v98 = 8;
          v99 = 0;
        }

        while ((v100 & 1) != 0);
        v95 += 32;
        v97 += 2 * a6;
        --v96;
      }

      while (v96);
    }

    else
    {
      do
      {
        v63 = &v153[v58];
        *v63 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v64 = *v61;
        v65 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v63[1] = v65;
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 256);
      v66 = v151;
      v67 = 8;
      sub_2779725E0(v151 >> 1, a7, 16, 8, v153 >> 1, 16, a8, a13, v59, *v60.i64, *v65.i64, *v64.i8, a14);
      v68 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v66[2 * v69], *(v68 + 2 * v69));
          v23 = vpadalq_s16(v23, v72);
          v21 = vmlal_s16(v21, *v72.i8, *v72.i8);
          v22 = vmlal_high_s16(v22, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v66 += 32;
        v68 += 2 * a6;
        --v67;
      }

      while (v67);
    }
  }

  else if (a4 == 4)
  {
    v102 = 0;
    v103 = *v17;
    v104 = 2 * a2;
    do
    {
      v105 = &v153[v102];
      v106 = *(v17 + 2 * a2);
      *v105 = vrhaddq_u16(v103, v106);
      v107 = *(v17 + v104 + 16);
      v105[1] = vrhaddq_u16(*(v17 + 16), v107);
      v102 += 2;
      v17 += v104;
      v103 = v106;
    }

    while ((v102 * 16) != 256);
    v108 = v151;
    v109 = 8;
    sub_2779725E0(v151 >> 1, a7, 16, 8, v153 >> 1, 16, a8, a13, v106, *v106.i64, *v107.i64, a12, a14);
    v110 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v111 = 0;
      v112 = 1;
      do
      {
        v113 = v112;
        v114 = vsubq_s16(*&v108[2 * v111], *(v110 + 2 * v111));
        v23 = vpadalq_s16(v23, v114);
        v21 = vmlal_s16(v21, *v114.i8, *v114.i8);
        v22 = vmlal_high_s16(v22, v114, v114);
        v111 = 8;
        v112 = 0;
      }

      while ((v113 & 1) != 0);
      v108 += 32;
      v110 += 2 * a6;
      --v109;
    }

    while (v109);
  }

  else if (a4)
  {
    v134 = 0;
    v135 = vdupq_n_s16(8 - a4);
    v136 = vdupq_n_s16(a4);
    v137 = *v17;
    v138 = 2 * a2;
    do
    {
      v139 = &v153[v134];
      v140 = *(v17 + 2 * a2);
      *v139 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v137, v135), v140, v136), 3uLL);
      v139[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v135), *(v17 + v138 + 16), v136), 3uLL);
      v134 += 2;
      v17 += v138;
      v137 = v140;
    }

    while ((v134 * 16) != 256);
    v141 = v151;
    v142 = 8;
    sub_2779725E0(v151 >> 1, a7, 16, 8, v153 >> 1, 16, a8, a13, v135, *v136.i64, *v140.i64, *v140.i8, a14);
    v143 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v144 = 0;
      v145 = 1;
      do
      {
        v146 = v145;
        v147 = vsubq_s16(*&v141[2 * v144], *(v143 + 2 * v144));
        v23 = vpadalq_s16(v23, v147);
        v21 = vmlal_s16(v21, *v147.i8, *v147.i8);
        v22 = vmlal_high_s16(v22, v147, v147);
        v144 = 8;
        v145 = 0;
      }

      while ((v146 & 1) != 0);
      v141 += 32;
      v143 += 2 * a6;
      --v142;
    }

    while (v142);
  }

  else
  {
    v18 = v153;
    v19 = 8;
    sub_2779725E0(v153 >> 1, a7, 16, 8, a1, a2, a8, a13, a9, a10, a11, a12, a14);
    v20 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = v25;
        v27 = vsubq_s16(v18[v24 / 8], *(v20 + 2 * v24));
        v23 = vpadalq_s16(v23, v27);
        v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
        v22 = vmlal_high_s16(v22, v27, v27);
        v24 = 8;
        v25 = 0;
      }

      while ((v26 & 1) != 0);
      v18 += 2;
      v20 += 2 * a6;
      --v19;
    }

    while (v19);
  }

  v148 = vaddvq_s32(v23);
  v149 = vaddlvq_u32(vaddq_s32(v22, v21));
  *a15 = v149;
  return v149 - ((v148 * v148) >> 7);
}

uint64_t sub_277B58B9C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, double a11, uint8x8_t a12, int a13, int a14, _DWORD *a15)
{
  v154[63] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v115 = 0;
      v116 = (v17 + 18);
      do
      {
        v117 = &v153[v115];
        *v117 = vrhaddq_u16(*(v116 - 18), v116[-1]);
        v117[1] = vrhaddq_u16(*(v116 - 2), *v116);
        v115 += 2;
        v116 = (v116 + 2 * a2);
      }

      while ((v115 * 16) != 544);
      v118 = v153[0];
      v119 = v154;
      v120 = 32;
      do
      {
        v121 = &v151[v120];
        v123 = v119[-2];
        v122 = v119[-1];
        v124 = *v119;
        v119 += 2;
        v125 = *v124.i8;
        v126 = vrhaddq_u16(v123, v124);
        v121[-2] = vrhaddq_u16(v118, v122);
        v121[-1] = v126;
        v120 += 32;
        v118 = v122;
      }

      while (v120 != 544);
      v127 = v152;
      v128 = 16;
      sub_2779725E0(v152 >> 1, a7, 16, 16, v151 >> 1, 16, a8, a13, v122, *v122.i64, *v126.i64, v125, a14);
      v129 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v130 = 0;
        v131 = 1;
        do
        {
          v132 = v131;
          v133 = vsubq_s16(*&v127[2 * v130], *(v129 + 2 * v130));
          v23 = vpadalq_s16(v23, v133);
          v21 = vmlal_s16(v21, *v133.i8, *v133.i8);
          v22 = vmlal_high_s16(v22, v133, v133);
          v130 = 8;
          v131 = 0;
        }

        while ((v132 & 1) != 0);
        v127 += 32;
        v129 += 2 * a6;
        --v128;
      }

      while (v128);
    }

    else
    {
      v28 = 0;
      v29 = (v17 + 18);
      v30 = 2 * a2;
      if (a4)
      {
        do
        {
          v41 = &v153[v28];
          *v41 = vrhaddq_u16(*(v29 - 18), v29[-1]);
          v41[1] = vrhaddq_u16(*(v29 - 2), *v29);
          v28 += 2;
          v29 = (v29 + v30);
        }

        while ((v28 * 16) != 544);
        v42 = vdupq_n_s16(8 - a4);
        v43 = vdupq_n_s16(a4);
        v44 = v153[0];
        v45 = v154;
        v46 = 32;
        do
        {
          v48 = v45[-2];
          v47 = v45[-1];
          v49 = *v45;
          v45 += 2;
          v50 = &v151[v46];
          v50[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v42), v47, v43), 3uLL);
          v50[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v48, v42), v49, v43), 3uLL);
          v46 += 32;
          v44 = v47;
        }

        while (v46 != 544);
        v51 = v152;
        v52 = 16;
        sub_2779725E0(v152 >> 1, a7, 16, 16, v151 >> 1, 16, a8, a13, v42, *v43.i64, *v47.i64, *v47.i8, a14);
        v53 = 2 * a5;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v54 = 0;
          v55 = 1;
          do
          {
            v56 = v55;
            v57 = vsubq_s16(*&v51[2 * v54], *(v53 + 2 * v54));
            v23 = vpadalq_s16(v23, v57);
            v21 = vmlal_s16(v21, *v57.i8, *v57.i8);
            v22 = vmlal_high_s16(v22, v57, v57);
            v54 = 8;
            v55 = 0;
          }

          while ((v56 & 1) != 0);
          v51 += 32;
          v53 += 2 * a6;
          --v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v31 = &v153[v28];
          *v31 = vrhaddq_u16(*(v29 - 18), v29[-1]);
          v32 = *v29;
          v33 = vrhaddq_u16(*(v29 - 2), *v29);
          v31[1] = v33;
          v28 += 2;
          v29 = (v29 + v30);
        }

        while ((v28 * 16) != 512);
        v34 = v151;
        v35 = 16;
        sub_2779725E0(v151 >> 1, a7, 16, 16, v153 >> 1, 16, a8, a13, v33, *v32.i64, a11, a12, a14);
        v36 = 2 * a5;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v37 = 0;
          v38 = 1;
          do
          {
            v39 = v38;
            v40 = vsubq_s16(*&v34[2 * v37], *(v36 + 2 * v37));
            v23 = vpadalq_s16(v23, v40);
            v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
            v22 = vmlal_high_s16(v22, v40, v40);
            v37 = 8;
            v38 = 0;
          }

          while ((v39 & 1) != 0);
          v34 += 32;
          v36 += 2 * a6;
          --v35;
        }

        while (v35);
      }
    }
  }

  else if (a3)
  {
    v58 = 0;
    v59 = vdupq_n_s16(8 - a3);
    v60 = vdupq_n_s16(a3);
    v61 = (v17 + 18);
    v62 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v73 = &v153[v58];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 544);
      v74 = 0;
      v75 = v153[0];
      do
      {
        v76 = &v151[v74 * 16];
        v77 = v153[v74 + 2];
        v78 = v153[v74 + 3];
        v79 = vrhaddq_u16(v153[v74 + 1], v78);
        *v76 = vrhaddq_u16(v75, v77);
        v76[1] = v79;
        v74 += 2;
        v75 = v77;
      }

      while ((v74 * 16) != 512);
      v80 = v152;
      v81 = 16;
      sub_2779725E0(v152 >> 1, a7, 16, 16, v151 >> 1, 16, a8, a13, v77, *v77.i64, *v79.i64, *v78.i8, a14);
      v82 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = v84;
          v86 = vsubq_s16(*&v80[2 * v83], *(v82 + 2 * v83));
          v23 = vpadalq_s16(v23, v86);
          v21 = vmlal_s16(v21, *v86.i8, *v86.i8);
          v22 = vmlal_high_s16(v22, v86, v86);
          v83 = 8;
          v84 = 0;
        }

        while ((v85 & 1) != 0);
        v80 += 32;
        v82 += 2 * a6;
        --v81;
      }

      while (v81);
    }

    else if (a4)
    {
      do
      {
        v87 = &v153[v58];
        *v87 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v87[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 544);
      v88 = 0;
      v89 = vdupq_n_s16(8 - a4);
      v90 = vdupq_n_s16(a4);
      v91 = v153[0];
      do
      {
        v92 = v153[v88 + 2];
        v93 = &v151[v88 * 16];
        v94 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153[v88 + 1], v89), v153[v88 + 3], v90), 3uLL);
        *v93 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v91, v89), v92, v90), 3uLL);
        v93[1] = v94;
        v88 += 2;
        v91 = v92;
      }

      while ((v88 * 16) != 512);
      v95 = v152;
      v96 = 16;
      sub_2779725E0(v152 >> 1, a7, 16, 16, v151 >> 1, 16, a8, a13, v89, *v90.i64, *v92.i64, *v92.i8, a14);
      v97 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v98 = 0;
        v99 = 1;
        do
        {
          v100 = v99;
          v101 = vsubq_s16(*&v95[2 * v98], *(v97 + 2 * v98));
          v23 = vpadalq_s16(v23, v101);
          v21 = vmlal_s16(v21, *v101.i8, *v101.i8);
          v22 = vmlal_high_s16(v22, v101, v101);
          v98 = 8;
          v99 = 0;
        }

        while ((v100 & 1) != 0);
        v95 += 32;
        v97 += 2 * a6;
        --v96;
      }

      while (v96);
    }

    else
    {
      do
      {
        v63 = &v153[v58];
        *v63 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v64 = *v61;
        v65 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v63[1] = v65;
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 512);
      v66 = v151;
      v67 = 16;
      sub_2779725E0(v151 >> 1, a7, 16, 16, v153 >> 1, 16, a8, a13, v59, *v60.i64, *v65.i64, *v64.i8, a14);
      v68 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v66[2 * v69], *(v68 + 2 * v69));
          v23 = vpadalq_s16(v23, v72);
          v21 = vmlal_s16(v21, *v72.i8, *v72.i8);
          v22 = vmlal_high_s16(v22, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v66 += 32;
        v68 += 2 * a6;
        --v67;
      }

      while (v67);
    }
  }

  else if (a4 == 4)
  {
    v102 = 0;
    v103 = *v17;
    v104 = 2 * a2;
    do
    {
      v105 = &v153[v102];
      v106 = *(v17 + 2 * a2);
      *v105 = vrhaddq_u16(v103, v106);
      v107 = *(v17 + v104 + 16);
      v105[1] = vrhaddq_u16(*(v17 + 16), v107);
      v102 += 2;
      v17 += v104;
      v103 = v106;
    }

    while ((v102 * 16) != 512);
    v108 = v151;
    v109 = 16;
    sub_2779725E0(v151 >> 1, a7, 16, 16, v153 >> 1, 16, a8, a13, v106, *v106.i64, *v107.i64, a12, a14);
    v110 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v111 = 0;
      v112 = 1;
      do
      {
        v113 = v112;
        v114 = vsubq_s16(*&v108[2 * v111], *(v110 + 2 * v111));
        v23 = vpadalq_s16(v23, v114);
        v21 = vmlal_s16(v21, *v114.i8, *v114.i8);
        v22 = vmlal_high_s16(v22, v114, v114);
        v111 = 8;
        v112 = 0;
      }

      while ((v113 & 1) != 0);
      v108 += 32;
      v110 += 2 * a6;
      --v109;
    }

    while (v109);
  }

  else if (a4)
  {
    v134 = 0;
    v135 = vdupq_n_s16(8 - a4);
    v136 = vdupq_n_s16(a4);
    v137 = *v17;
    v138 = 2 * a2;
    do
    {
      v139 = &v153[v134];
      v140 = *(v17 + 2 * a2);
      *v139 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v137, v135), v140, v136), 3uLL);
      v139[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v135), *(v17 + v138 + 16), v136), 3uLL);
      v134 += 2;
      v17 += v138;
      v137 = v140;
    }

    while ((v134 * 16) != 512);
    v141 = v151;
    v142 = 16;
    sub_2779725E0(v151 >> 1, a7, 16, 16, v153 >> 1, 16, a8, a13, v135, *v136.i64, *v140.i64, *v140.i8, a14);
    v143 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v144 = 0;
      v145 = 1;
      do
      {
        v146 = v145;
        v147 = vsubq_s16(*&v141[2 * v144], *(v143 + 2 * v144));
        v23 = vpadalq_s16(v23, v147);
        v21 = vmlal_s16(v21, *v147.i8, *v147.i8);
        v22 = vmlal_high_s16(v22, v147, v147);
        v144 = 8;
        v145 = 0;
      }

      while ((v146 & 1) != 0);
      v141 += 32;
      v143 += 2 * a6;
      --v142;
    }

    while (v142);
  }

  else
  {
    v18 = v153;
    v19 = 16;
    sub_2779725E0(v153 >> 1, a7, 16, 16, a1, a2, a8, a13, a9, a10, a11, a12, a14);
    v20 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = v25;
        v27 = vsubq_s16(v18[v24 / 8], *(v20 + 2 * v24));
        v23 = vpadalq_s16(v23, v27);
        v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
        v22 = vmlal_high_s16(v22, v27, v27);
        v24 = 8;
        v25 = 0;
      }

      while ((v26 & 1) != 0);
      v18 += 2;
      v20 += 2 * a6;
      --v19;
    }

    while (v19);
  }

  v148 = vaddvq_s32(v23);
  v149 = vaddlvq_u32(vaddq_s32(v22, v21));
  *a15 = v149;
  return v149 - ((v148 * v148) >> 8);
}

uint64_t sub_277B594D0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, double a11, uint8x8_t a12, int a13, int a14, _DWORD *a15)
{
  v154[127] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v115 = 0;
      v116 = (v17 + 18);
      do
      {
        v117 = &v153[v115];
        *v117 = vrhaddq_u16(*(v116 - 18), v116[-1]);
        v117[1] = vrhaddq_u16(*(v116 - 2), *v116);
        v115 += 2;
        v116 = (v116 + 2 * a2);
      }

      while ((v115 * 16) != 1056);
      v118 = v153[0];
      v119 = v154;
      v120 = 32;
      do
      {
        v121 = &v151[v120];
        v123 = v119[-2];
        v122 = v119[-1];
        v124 = *v119;
        v119 += 2;
        v125 = *v124.i8;
        v126 = vrhaddq_u16(v123, v124);
        v121[-2] = vrhaddq_u16(v118, v122);
        v121[-1] = v126;
        v120 += 32;
        v118 = v122;
      }

      while (v120 != 1056);
      v127 = v152;
      v128 = 32;
      sub_2779725E0(v152 >> 1, a7, 16, 32, v151 >> 1, 16, a8, a13, v122, *v122.i64, *v126.i64, v125, a14);
      v129 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v130 = 0;
        v131 = 1;
        do
        {
          v132 = v131;
          v133 = vsubq_s16(*&v127[2 * v130], *(v129 + 2 * v130));
          v23 = vpadalq_s16(v23, v133);
          v21 = vmlal_s16(v21, *v133.i8, *v133.i8);
          v22 = vmlal_high_s16(v22, v133, v133);
          v130 = 8;
          v131 = 0;
        }

        while ((v132 & 1) != 0);
        v127 += 32;
        v129 += 2 * a6;
        --v128;
      }

      while (v128);
    }

    else
    {
      v28 = 0;
      v29 = (v17 + 18);
      v30 = 2 * a2;
      if (a4)
      {
        do
        {
          v41 = &v153[v28];
          *v41 = vrhaddq_u16(*(v29 - 18), v29[-1]);
          v41[1] = vrhaddq_u16(*(v29 - 2), *v29);
          v28 += 2;
          v29 = (v29 + v30);
        }

        while ((v28 * 16) != 1056);
        v42 = vdupq_n_s16(8 - a4);
        v43 = vdupq_n_s16(a4);
        v44 = v153[0];
        v45 = v154;
        v46 = 32;
        do
        {
          v48 = v45[-2];
          v47 = v45[-1];
          v49 = *v45;
          v45 += 2;
          v50 = &v151[v46];
          v50[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v42), v47, v43), 3uLL);
          v50[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v48, v42), v49, v43), 3uLL);
          v46 += 32;
          v44 = v47;
        }

        while (v46 != 1056);
        v51 = v152;
        v52 = 32;
        sub_2779725E0(v152 >> 1, a7, 16, 32, v151 >> 1, 16, a8, a13, v42, *v43.i64, *v47.i64, *v47.i8, a14);
        v53 = 2 * a5;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v54 = 0;
          v55 = 1;
          do
          {
            v56 = v55;
            v57 = vsubq_s16(*&v51[2 * v54], *(v53 + 2 * v54));
            v23 = vpadalq_s16(v23, v57);
            v21 = vmlal_s16(v21, *v57.i8, *v57.i8);
            v22 = vmlal_high_s16(v22, v57, v57);
            v54 = 8;
            v55 = 0;
          }

          while ((v56 & 1) != 0);
          v51 += 32;
          v53 += 2 * a6;
          --v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v31 = &v153[v28];
          *v31 = vrhaddq_u16(*(v29 - 18), v29[-1]);
          v32 = *v29;
          v33 = vrhaddq_u16(*(v29 - 2), *v29);
          v31[1] = v33;
          v28 += 2;
          v29 = (v29 + v30);
        }

        while ((v28 * 16) != 1024);
        v34 = v151;
        v35 = 32;
        sub_2779725E0(v151 >> 1, a7, 16, 32, v153 >> 1, 16, a8, a13, v33, *v32.i64, a11, a12, a14);
        v36 = 2 * a5;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v37 = 0;
          v38 = 1;
          do
          {
            v39 = v38;
            v40 = vsubq_s16(*&v34[2 * v37], *(v36 + 2 * v37));
            v23 = vpadalq_s16(v23, v40);
            v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
            v22 = vmlal_high_s16(v22, v40, v40);
            v37 = 8;
            v38 = 0;
          }

          while ((v39 & 1) != 0);
          v34 += 32;
          v36 += 2 * a6;
          --v35;
        }

        while (v35);
      }
    }
  }

  else if (a3)
  {
    v58 = 0;
    v59 = vdupq_n_s16(8 - a3);
    v60 = vdupq_n_s16(a3);
    v61 = (v17 + 18);
    v62 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v73 = &v153[v58];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 1056);
      v74 = 0;
      v75 = v153[0];
      do
      {
        v76 = &v151[v74 * 16];
        v77 = v153[v74 + 2];
        v78 = v153[v74 + 3];
        v79 = vrhaddq_u16(v153[v74 + 1], v78);
        *v76 = vrhaddq_u16(v75, v77);
        v76[1] = v79;
        v74 += 2;
        v75 = v77;
      }

      while ((v74 * 16) != 1024);
      v80 = v152;
      v81 = 32;
      sub_2779725E0(v152 >> 1, a7, 16, 32, v151 >> 1, 16, a8, a13, v77, *v77.i64, *v79.i64, *v78.i8, a14);
      v82 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = v84;
          v86 = vsubq_s16(*&v80[2 * v83], *(v82 + 2 * v83));
          v23 = vpadalq_s16(v23, v86);
          v21 = vmlal_s16(v21, *v86.i8, *v86.i8);
          v22 = vmlal_high_s16(v22, v86, v86);
          v83 = 8;
          v84 = 0;
        }

        while ((v85 & 1) != 0);
        v80 += 32;
        v82 += 2 * a6;
        --v81;
      }

      while (v81);
    }

    else if (a4)
    {
      do
      {
        v87 = &v153[v58];
        *v87 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v87[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 1056);
      v88 = 0;
      v89 = vdupq_n_s16(8 - a4);
      v90 = vdupq_n_s16(a4);
      v91 = v153[0];
      do
      {
        v92 = v153[v88 + 2];
        v93 = &v151[v88 * 16];
        v94 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153[v88 + 1], v89), v153[v88 + 3], v90), 3uLL);
        *v93 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v91, v89), v92, v90), 3uLL);
        v93[1] = v94;
        v88 += 2;
        v91 = v92;
      }

      while ((v88 * 16) != 1024);
      v95 = v152;
      v96 = 32;
      sub_2779725E0(v152 >> 1, a7, 16, 32, v151 >> 1, 16, a8, a13, v89, *v90.i64, *v92.i64, *v92.i8, a14);
      v97 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v98 = 0;
        v99 = 1;
        do
        {
          v100 = v99;
          v101 = vsubq_s16(*&v95[2 * v98], *(v97 + 2 * v98));
          v23 = vpadalq_s16(v23, v101);
          v21 = vmlal_s16(v21, *v101.i8, *v101.i8);
          v22 = vmlal_high_s16(v22, v101, v101);
          v98 = 8;
          v99 = 0;
        }

        while ((v100 & 1) != 0);
        v95 += 32;
        v97 += 2 * a6;
        --v96;
      }

      while (v96);
    }

    else
    {
      do
      {
        v63 = &v153[v58];
        *v63 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v64 = *v61;
        v65 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v63[1] = v65;
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 1024);
      v66 = v151;
      v67 = 32;
      sub_2779725E0(v151 >> 1, a7, 16, 32, v153 >> 1, 16, a8, a13, v59, *v60.i64, *v65.i64, *v64.i8, a14);
      v68 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v66[2 * v69], *(v68 + 2 * v69));
          v23 = vpadalq_s16(v23, v72);
          v21 = vmlal_s16(v21, *v72.i8, *v72.i8);
          v22 = vmlal_high_s16(v22, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v66 += 32;
        v68 += 2 * a6;
        --v67;
      }

      while (v67);
    }
  }

  else if (a4 == 4)
  {
    v102 = 0;
    v103 = *v17;
    v104 = 2 * a2;
    do
    {
      v105 = &v153[v102];
      v106 = *(v17 + 2 * a2);
      *v105 = vrhaddq_u16(v103, v106);
      v107 = *(v17 + v104 + 16);
      v105[1] = vrhaddq_u16(*(v17 + 16), v107);
      v102 += 2;
      v17 += v104;
      v103 = v106;
    }

    while ((v102 * 16) != 1024);
    v108 = v151;
    v109 = 32;
    sub_2779725E0(v151 >> 1, a7, 16, 32, v153 >> 1, 16, a8, a13, v106, *v106.i64, *v107.i64, a12, a14);
    v110 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v111 = 0;
      v112 = 1;
      do
      {
        v113 = v112;
        v114 = vsubq_s16(*&v108[2 * v111], *(v110 + 2 * v111));
        v23 = vpadalq_s16(v23, v114);
        v21 = vmlal_s16(v21, *v114.i8, *v114.i8);
        v22 = vmlal_high_s16(v22, v114, v114);
        v111 = 8;
        v112 = 0;
      }

      while ((v113 & 1) != 0);
      v108 += 32;
      v110 += 2 * a6;
      --v109;
    }

    while (v109);
  }

  else if (a4)
  {
    v134 = 0;
    v135 = vdupq_n_s16(8 - a4);
    v136 = vdupq_n_s16(a4);
    v137 = *v17;
    v138 = 2 * a2;
    do
    {
      v139 = &v153[v134];
      v140 = *(v17 + 2 * a2);
      *v139 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v137, v135), v140, v136), 3uLL);
      v139[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v135), *(v17 + v138 + 16), v136), 3uLL);
      v134 += 2;
      v17 += v138;
      v137 = v140;
    }

    while ((v134 * 16) != 1024);
    v141 = v151;
    v142 = 32;
    sub_2779725E0(v151 >> 1, a7, 16, 32, v153 >> 1, 16, a8, a13, v135, *v136.i64, *v140.i64, *v140.i8, a14);
    v143 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v144 = 0;
      v145 = 1;
      do
      {
        v146 = v145;
        v147 = vsubq_s16(*&v141[2 * v144], *(v143 + 2 * v144));
        v23 = vpadalq_s16(v23, v147);
        v21 = vmlal_s16(v21, *v147.i8, *v147.i8);
        v22 = vmlal_high_s16(v22, v147, v147);
        v144 = 8;
        v145 = 0;
      }

      while ((v146 & 1) != 0);
      v141 += 32;
      v143 += 2 * a6;
      --v142;
    }

    while (v142);
  }

  else
  {
    v18 = v153;
    v19 = 32;
    sub_2779725E0(v153 >> 1, a7, 16, 32, a1, a2, a8, a13, a9, a10, a11, a12, a14);
    v20 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = v25;
        v27 = vsubq_s16(v18[v24 / 8], *(v20 + 2 * v24));
        v23 = vpadalq_s16(v23, v27);
        v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
        v22 = vmlal_high_s16(v22, v27, v27);
        v24 = 8;
        v25 = 0;
      }

      while ((v26 & 1) != 0);
      v18 += 2;
      v20 += 2 * a6;
      --v19;
    }

    while (v19);
  }

  v148 = vaddvq_s32(v23);
  v149 = vaddlvq_u32(vaddq_s32(v22, v21));
  *a15 = v149;
  return v149 - ((v148 * v148) >> 9);
}

uint64_t sub_277B59E04(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, double a11, uint8x8_t a12, int a13, int a14, _DWORD *a15)
{
  v159 = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    v27 = 2 * a2;
    v28 = v158;
    if (a4 == 4)
    {
      v69 = 17;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v28[v70] = vrhaddq_u16(*(v17 + v70), *(v17 + v70 + 2));
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x18);
        v28 += 64;
        v17 += v27;
        --v69;
      }

      while (v69);
      v72 = v158;
      v73 = v156;
      v74 = 16;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          v77 = *&v72[v75 + 64];
          v78 = vrhaddq_u16(*&v72[v75], v77);
          *&v73[v75] = v78;
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v72 += 64;
        v73 += 64;
        --v74;
      }

      while (v74);
      v79 = v157;
      v80 = 16;
      sub_2779725E0(v157 >> 1, a7, 32, 16, v156 >> 1, 32, a8, a13, v78, *v77.i64, a11, a12, a14);
      v81 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v82 = 0;
        v83 = -8;
        do
        {
          v84 = vsubq_s16(*&v79[v82], *(v81 + v82));
          v23 = vpadalq_s16(v23, v84);
          v21 = vmlal_s16(v21, *v84.i8, *v84.i8);
          v22 = vmlal_high_s16(v22, v84, v84);
          v83 += 8;
          v82 += 16;
        }

        while (v83 < 0x18);
        v79 += 64;
        v81 += 2 * a6;
        --v80;
      }

      while (v80);
    }

    else if (a4)
    {
      v101 = 17;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v28[v102] = vrhaddq_u16(*(v17 + v102), *(v17 + v102 + 2));
          v103 += 8;
          v102 += 16;
        }

        while (v103 < 0x18);
        v28 += 64;
        v17 += v27;
        --v101;
      }

      while (v101);
      v104 = vdupq_n_s16(8 - a4);
      v105 = vdupq_n_s16(a4);
      v106 = v158;
      v107 = v156;
      v108 = 16;
      do
      {
        v109 = 0;
        v110 = -8;
        do
        {
          v111 = *&v106[v109 + 64];
          v112 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v106[v109], v104), v111, v105), 3uLL);
          *&v107[v109] = v112;
          v110 += 8;
          v109 += 16;
        }

        while (v110 < 0x18);
        v106 += 64;
        v107 += 64;
        --v108;
      }

      while (v108);
      v113 = v157;
      v114 = 16;
      sub_2779725E0(v157 >> 1, a7, 32, 16, v156 >> 1, 32, a8, a13, v104, *v105.i64, *v112.i64, *v111.i8, a14);
      v115 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v116 = 0;
        v117 = -8;
        do
        {
          v118 = vsubq_s16(*&v113[v116], *(v115 + v116));
          v23 = vpadalq_s16(v23, v118);
          v21 = vmlal_s16(v21, *v118.i8, *v118.i8);
          v22 = vmlal_high_s16(v22, v118, v118);
          v117 += 8;
          v116 += 16;
        }

        while (v117 < 0x18);
        v113 += 64;
        v115 += 2 * a6;
        --v114;
      }

      while (v114);
    }

    else
    {
      v29 = 16;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = *(v17 + v30 + 2);
          v33 = vrhaddq_u16(*(v17 + v30), v32);
          *&v28[v30] = v33;
          v31 += 8;
          v30 += 16;
        }

        while (v31 < 0x18);
        v28 += 64;
        v17 += v27;
        --v29;
      }

      while (v29);
      v34 = v156;
      v35 = 16;
      sub_2779725E0(v156 >> 1, a7, 32, 16, v158 >> 1, 32, a8, a13, v33, *v32.i64, a11, a12, a14);
      v36 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v34[v37], *(v36 + v37));
          v23 = vpadalq_s16(v23, v39);
          v21 = vmlal_s16(v21, *v39.i8, *v39.i8);
          v22 = vmlal_high_s16(v22, v39, v39);
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v34 += 64;
        v36 += 2 * a6;
        --v35;
      }

      while (v35);
    }
  }

  else if (a3)
  {
    v40 = vdupq_n_s16(8 - a3);
    v41 = vdupq_n_s16(a3);
    v42 = 2 * a2;
    v43 = v158;
    if (a4 == 4)
    {
      v119 = 17;
      do
      {
        v120 = 0;
        v121 = -8;
        do
        {
          v122 = *(v17 + v120 + 2);
          v123 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v120), v40), v122, v41), 3uLL);
          *&v43[v120] = v123;
          v121 += 8;
          v120 += 16;
        }

        while (v121 < 0x18);
        v43 += 64;
        v17 += v42;
        --v119;
      }

      while (v119);
      v124 = 0;
      v125 = 16;
      do
      {
        v126 = -8;
        v127 = v124;
        do
        {
          v128 = *&v158[v127 + 64];
          v129 = vrhaddq_u16(*&v158[v127], v128);
          *&v156[v127] = v129;
          v126 += 8;
          v127 += 16;
        }

        while (v126 < 0x18);
        v124 += 64;
        --v125;
      }

      while (v125);
      v130 = v157;
      v131 = 16;
      sub_2779725E0(v157 >> 1, a7, 32, 16, v156 >> 1, 32, a8, a13, v129, *v128.i64, *v123.i64, *v122.i8, a14);
      v132 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v133 = 0;
        v134 = -8;
        do
        {
          v135 = vsubq_s16(*&v130[v133], *(v132 + v133));
          v23 = vpadalq_s16(v23, v135);
          v21 = vmlal_s16(v21, *v135.i8, *v135.i8);
          v22 = vmlal_high_s16(v22, v135, v135);
          v134 += 8;
          v133 += 16;
        }

        while (v134 < 0x18);
        v130 += 64;
        v132 += 2 * a6;
        --v131;
      }

      while (v131);
    }

    else if (a4)
    {
      v136 = 17;
      do
      {
        v137 = 0;
        v138 = -8;
        do
        {
          *&v43[v137] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v137), v40), *(v17 + v137 + 2), v41), 3uLL);
          v138 += 8;
          v137 += 16;
        }

        while (v138 < 0x18);
        v43 += 64;
        v17 += v42;
        --v136;
      }

      while (v136);
      v139 = 0;
      v140 = vdupq_n_s16(8 - a4);
      v141 = vdupq_n_s16(a4);
      v142 = 16;
      do
      {
        v143 = -8;
        v144 = v139;
        do
        {
          v145 = *&v158[v144 + 64];
          v146 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v158[v144], v140), v145, v141), 3uLL);
          *&v156[v144] = v146;
          v143 += 8;
          v144 += 16;
        }

        while (v143 < 0x18);
        v139 += 64;
        --v142;
      }

      while (v142);
      v147 = v157;
      v148 = 16;
      sub_2779725E0(v157 >> 1, a7, 32, 16, v156 >> 1, 32, a8, a13, v140, *v141.i64, *v146.i64, *v145.i8, a14);
      v149 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v150 = 0;
        v151 = -8;
        do
        {
          v152 = vsubq_s16(*&v147[v150], *(v149 + v150));
          v23 = vpadalq_s16(v23, v152);
          v21 = vmlal_s16(v21, *v152.i8, *v152.i8);
          v22 = vmlal_high_s16(v22, v152, v152);
          v151 += 8;
          v150 += 16;
        }

        while (v151 < 0x18);
        v147 += 64;
        v149 += 2 * a6;
        --v148;
      }

      while (v148);
    }

    else
    {
      v44 = 16;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = *(v17 + v45 + 2);
          v48 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v45), v40), v47, v41), 3uLL);
          *&v43[v45] = v48;
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v43 += 64;
        v17 += v42;
        --v44;
      }

      while (v44);
      v49 = v156;
      v50 = 16;
      sub_2779725E0(v156 >> 1, a7, 32, 16, v158 >> 1, 32, a8, a13, v40, *v41.i64, *v48.i64, *v47.i8, a14);
      v51 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vsubq_s16(*&v49[v52], *(v51 + v52));
          v23 = vpadalq_s16(v23, v54);
          v21 = vmlal_s16(v21, *v54.i8, *v54.i8);
          v22 = vmlal_high_s16(v22, v54, v54);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v49 += 64;
        v51 += 2 * a6;
        --v50;
      }

      while (v50);
    }
  }

  else if (a4 == 4)
  {
    v55 = 2 * a2;
    v56 = v158;
    v57 = 16;
    v58 = v17 + v55;
    do
    {
      v59 = 0;
      v60 = -8;
      do
      {
        v61 = *(v58 + v59);
        v62 = vrhaddq_u16(*(v17 + v59), v61);
        *&v56[v59] = v62;
        v60 += 8;
        v59 += 16;
      }

      while (v60 < 0x18);
      v56 += 64;
      v58 += v55;
      v17 += v55;
      --v57;
    }

    while (v57);
    v63 = v156;
    v64 = 16;
    sub_2779725E0(v156 >> 1, a7, 32, 16, v158 >> 1, 32, a8, a13, v62, *v61.i64, a11, a12, a14);
    v65 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v66 = 0;
      v67 = -8;
      do
      {
        v68 = vsubq_s16(*&v63[v66], *(v65 + v66));
        v23 = vpadalq_s16(v23, v68);
        v21 = vmlal_s16(v21, *v68.i8, *v68.i8);
        v22 = vmlal_high_s16(v22, v68, v68);
        v67 += 8;
        v66 += 16;
      }

      while (v67 < 0x18);
      v63 += 64;
      v65 += 2 * a6;
      --v64;
    }

    while (v64);
  }

  else if (a4)
  {
    v85 = vdupq_n_s16(8 - a4);
    v86 = vdupq_n_s16(a4);
    v87 = 2 * a2;
    v88 = v17 + v87;
    v89 = v158;
    v90 = 16;
    do
    {
      v91 = 0;
      v92 = -8;
      do
      {
        v93 = *(v88 + v91);
        v94 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v91), v85), v93, v86), 3uLL);
        *&v89[v91] = v94;
        v92 += 8;
        v91 += 16;
      }

      while (v92 < 0x18);
      v89 += 64;
      v88 += v87;
      v17 += v87;
      --v90;
    }

    while (v90);
    v95 = v156;
    v96 = 16;
    sub_2779725E0(v156 >> 1, a7, 32, 16, v158 >> 1, 32, a8, a13, v85, *v86.i64, *v94.i64, *v93.i8, a14);
    v97 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v98 = 0;
      v99 = -8;
      do
      {
        v100 = vsubq_s16(*&v95[v98], *(v97 + v98));
        v23 = vpadalq_s16(v23, v100);
        v21 = vmlal_s16(v21, *v100.i8, *v100.i8);
        v22 = vmlal_high_s16(v22, v100, v100);
        v99 += 8;
        v98 += 16;
      }

      while (v99 < 0x18);
      v95 += 64;
      v97 += 2 * a6;
      --v96;
    }

    while (v96);
  }

  else
  {
    v18 = v158;
    v19 = 16;
    sub_2779725E0(v158 >> 1, a7, 32, 16, a1, a2, a8, a13, a9, a10, a11, a12, a14);
    v20 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = 0;
      v25 = -8;
      do
      {
        v26 = vsubq_s16(*&v18[v24], *(v20 + v24));
        v23 = vpadalq_s16(v23, v26);
        v21 = vmlal_s16(v21, *v26.i8, *v26.i8);
        v22 = vmlal_high_s16(v22, v26, v26);
        v25 += 8;
        v24 += 16;
      }

      while (v25 < 0x18);
      v18 += 64;
      v20 += 2 * a6;
      --v19;
    }

    while (v19);
  }

  v153 = vaddvq_s32(v23);
  v154 = vaddlvq_u32(vaddq_s32(v22, v21));
  *a15 = v154;
  return v154 - ((v153 * v153) >> 9);
}

uint64_t sub_277B5A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v167 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v35 = 2 * v12;
    v36 = v166;
    if (v14 == 4)
    {
      v77 = 33;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v36[v78] = vrhaddq_u16(*(v25 + v78), *(v25 + v78 + 2));
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x18);
        v36 += 64;
        v25 += v35;
        --v77;
      }

      while (v77);
      v80 = v166;
      v81 = v164;
      v82 = 32;
      do
      {
        v83 = 0;
        v84 = -8;
        do
        {
          v85 = *&v80[v83 + 64];
          v86 = vrhaddq_u16(*&v80[v83], v85);
          *&v81[v83] = v86;
          v84 += 8;
          v83 += 16;
        }

        while (v84 < 0x18);
        v80 += 64;
        v81 += 64;
        --v82;
      }

      while (v82);
      v87 = v165;
      v88 = 32;
      sub_2779725E0(v165 >> 1, v15, 32, 32, v164 >> 1, 32, v16, a9, v86, *v85.i64, v19, v20, a10);
      v89 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v90 = 0;
        v91 = -8;
        do
        {
          v92 = vsubq_s16(*&v87[v90], *(v89 + v90));
          v31 = vpadalq_s16(v31, v92);
          v29 = vmlal_s16(v29, *v92.i8, *v92.i8);
          v30 = vmlal_high_s16(v30, v92, v92);
          v91 += 8;
          v90 += 16;
        }

        while (v91 < 0x18);
        v87 += 64;
        v89 += 2 * v22;
        --v88;
      }

      while (v88);
    }

    else if (v14)
    {
      v109 = 33;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v36[v110] = vrhaddq_u16(*(v25 + v110), *(v25 + v110 + 2));
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v36 += 64;
        v25 += v35;
        --v109;
      }

      while (v109);
      v112 = vdupq_n_s16(8 - v14);
      v113 = vdupq_n_s16(v14);
      v114 = v166;
      v115 = v164;
      v116 = 32;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          v119 = *&v114[v117 + 64];
          v120 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v114[v117], v112), v119, v113), 3uLL);
          *&v115[v117] = v120;
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x18);
        v114 += 64;
        v115 += 64;
        --v116;
      }

      while (v116);
      v121 = v165;
      v122 = 32;
      sub_2779725E0(v165 >> 1, v15, 32, 32, v164 >> 1, 32, v16, a9, v112, *v113.i64, *v120.i64, *v119.i8, a10);
      v123 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v124 = 0;
        v125 = -8;
        do
        {
          v126 = vsubq_s16(*&v121[v124], *(v123 + v124));
          v31 = vpadalq_s16(v31, v126);
          v29 = vmlal_s16(v29, *v126.i8, *v126.i8);
          v30 = vmlal_high_s16(v30, v126, v126);
          v125 += 8;
          v124 += 16;
        }

        while (v125 < 0x18);
        v121 += 64;
        v123 += 2 * v22;
        --v122;
      }

      while (v122);
    }

    else
    {
      v37 = 32;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = *(v25 + v38 + 2);
          v41 = vrhaddq_u16(*(v25 + v38), v40);
          *&v36[v38] = v41;
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x18);
        v36 += 64;
        v25 += v35;
        --v37;
      }

      while (v37);
      v42 = v164;
      v43 = 32;
      sub_2779725E0(v164 >> 1, v15, 32, 32, v166 >> 1, 32, v16, a9, v41, *v40.i64, v19, v20, a10);
      v44 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v31 = vpadalq_s16(v31, v47);
          v29 = vmlal_s16(v29, *v47.i8, *v47.i8);
          v30 = vmlal_high_s16(v30, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v42 += 64;
        v44 += 2 * v22;
        --v43;
      }

      while (v43);
    }
  }

  else if (v13)
  {
    v48 = vdupq_n_s16(8 - v13);
    v49 = vdupq_n_s16(v13);
    v50 = 2 * v12;
    v51 = v166;
    if (v14 == 4)
    {
      v127 = 33;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = *(v25 + v128 + 2);
          v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v128), v48), v130, v49), 3uLL);
          *&v51[v128] = v131;
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x18);
        v51 += 64;
        v25 += v50;
        --v127;
      }

      while (v127);
      v132 = 0;
      v133 = 32;
      do
      {
        v134 = -8;
        v135 = v132;
        do
        {
          v136 = *&v166[v135 + 64];
          v137 = vrhaddq_u16(*&v166[v135], v136);
          *&v164[v135] = v137;
          v134 += 8;
          v135 += 16;
        }

        while (v134 < 0x18);
        v132 += 64;
        --v133;
      }

      while (v133);
      v138 = v165;
      v139 = 32;
      sub_2779725E0(v165 >> 1, v15, 32, 32, v164 >> 1, 32, v16, a9, v137, *v136.i64, *v131.i64, *v130.i8, a10);
      v140 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v141 = 0;
        v142 = -8;
        do
        {
          v143 = vsubq_s16(*&v138[v141], *(v140 + v141));
          v31 = vpadalq_s16(v31, v143);
          v29 = vmlal_s16(v29, *v143.i8, *v143.i8);
          v30 = vmlal_high_s16(v30, v143, v143);
          v142 += 8;
          v141 += 16;
        }

        while (v142 < 0x18);
        v138 += 64;
        v140 += 2 * v22;
        --v139;
      }

      while (v139);
    }

    else if (v14)
    {
      v144 = 33;
      do
      {
        v145 = 0;
        v146 = -8;
        do
        {
          *&v51[v145] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v145), v48), *(v25 + v145 + 2), v49), 3uLL);
          v146 += 8;
          v145 += 16;
        }

        while (v146 < 0x18);
        v51 += 64;
        v25 += v50;
        --v144;
      }

      while (v144);
      v147 = 0;
      v148 = vdupq_n_s16(8 - v14);
      v149 = vdupq_n_s16(v14);
      v150 = 32;
      do
      {
        v151 = -8;
        v152 = v147;
        do
        {
          v153 = *&v166[v152 + 64];
          v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v166[v152], v148), v153, v149), 3uLL);
          *&v164[v152] = v154;
          v151 += 8;
          v152 += 16;
        }

        while (v151 < 0x18);
        v147 += 64;
        --v150;
      }

      while (v150);
      v155 = v165;
      v156 = 32;
      sub_2779725E0(v165 >> 1, v15, 32, 32, v164 >> 1, 32, v16, a9, v148, *v149.i64, *v154.i64, *v153.i8, a10);
      v157 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v158 = 0;
        v159 = -8;
        do
        {
          v160 = vsubq_s16(*&v155[v158], *(v157 + v158));
          v31 = vpadalq_s16(v31, v160);
          v29 = vmlal_s16(v29, *v160.i8, *v160.i8);
          v30 = vmlal_high_s16(v30, v160, v160);
          v159 += 8;
          v158 += 16;
        }

        while (v159 < 0x18);
        v155 += 64;
        v157 += 2 * v22;
        --v156;
      }

      while (v156);
    }

    else
    {
      v52 = 32;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          v55 = *(v25 + v53 + 2);
          v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v53), v48), v55, v49), 3uLL);
          *&v51[v53] = v56;
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v25 += v50;
        --v52;
      }

      while (v52);
      v57 = v164;
      v58 = 32;
      sub_2779725E0(v164 >> 1, v15, 32, 32, v166 >> 1, 32, v16, a9, v48, *v49.i64, *v56.i64, *v55.i8, a10);
      v59 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v57[v60], *(v59 + v60));
          v31 = vpadalq_s16(v31, v62);
          v29 = vmlal_s16(v29, *v62.i8, *v62.i8);
          v30 = vmlal_high_s16(v30, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v57 += 64;
        v59 += 2 * v22;
        --v58;
      }

      while (v58);
    }
  }

  else if (v14 == 4)
  {
    v63 = 2 * v12;
    v64 = v166;
    v65 = 32;
    v66 = v25 + v63;
    do
    {
      v67 = 0;
      v68 = -8;
      do
      {
        v69 = *(v66 + v67);
        v70 = vrhaddq_u16(*(v25 + v67), v69);
        *&v64[v67] = v70;
        v68 += 8;
        v67 += 16;
      }

      while (v68 < 0x18);
      v64 += 64;
      v66 += v63;
      v25 += v63;
      --v65;
    }

    while (v65);
    v71 = v164;
    v72 = 32;
    sub_2779725E0(v164 >> 1, v15, 32, 32, v166 >> 1, 32, v16, a9, v70, *v69.i64, v19, v20, a10);
    v73 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v71[v74], *(v73 + v74));
        v31 = vpadalq_s16(v31, v76);
        v29 = vmlal_s16(v29, *v76.i8, *v76.i8);
        v30 = vmlal_high_s16(v30, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x18);
      v71 += 64;
      v73 += 2 * v22;
      --v72;
    }

    while (v72);
  }

  else if (v14)
  {
    v93 = vdupq_n_s16(8 - v14);
    v94 = vdupq_n_s16(v14);
    v95 = 2 * v12;
    v96 = v25 + v95;
    v97 = v166;
    v98 = 32;
    do
    {
      v99 = 0;
      v100 = -8;
      do
      {
        v101 = *(v96 + v99);
        v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v99), v93), v101, v94), 3uLL);
        *&v97[v99] = v102;
        v100 += 8;
        v99 += 16;
      }

      while (v100 < 0x18);
      v97 += 64;
      v96 += v95;
      v25 += v95;
      --v98;
    }

    while (v98);
    v103 = v164;
    v104 = 32;
    sub_2779725E0(v164 >> 1, v15, 32, 32, v166 >> 1, 32, v16, a9, v93, *v94.i64, *v102.i64, *v101.i8, a10);
    v105 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v106 = 0;
      v107 = -8;
      do
      {
        v108 = vsubq_s16(*&v103[v106], *(v105 + v106));
        v31 = vpadalq_s16(v31, v108);
        v29 = vmlal_s16(v29, *v108.i8, *v108.i8);
        v30 = vmlal_high_s16(v30, v108, v108);
        v107 += 8;
        v106 += 16;
      }

      while (v107 < 0x18);
      v103 += 64;
      v105 += 2 * v22;
      --v104;
    }

    while (v104);
  }

  else
  {
    v26 = v166;
    v27 = 32;
    sub_2779725E0(v166 >> 1, v15, 32, 32, v11, v12, v16, a9, v17, v18, v19, v20, a10);
    v28 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = 0;
      v33 = -8;
      do
      {
        v34 = vsubq_s16(*&v26[v32], *(v28 + v32));
        v31 = vpadalq_s16(v31, v34);
        v29 = vmlal_s16(v29, *v34.i8, *v34.i8);
        v30 = vmlal_high_s16(v30, v34, v34);
        v33 += 8;
        v32 += 16;
      }

      while (v33 < 0x18);
      v26 += 64;
      v28 += 2 * v22;
      --v27;
    }

    while (v27);
  }

  v161 = vaddvq_s32(v31);
  v162 = vaddlvq_u32(vaddq_s32(v30, v29));
  *a11 = v162;
  return v162 - ((v161 * v161) >> 10);
}

uint64_t sub_277B5B0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v167 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v35 = 2 * v12;
    v36 = v166;
    if (v14 == 4)
    {
      v77 = 65;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v36[v78] = vrhaddq_u16(*(v25 + v78), *(v25 + v78 + 2));
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x18);
        v36 += 64;
        v25 += v35;
        --v77;
      }

      while (v77);
      v80 = v166;
      v81 = v164;
      v82 = 64;
      do
      {
        v83 = 0;
        v84 = -8;
        do
        {
          v85 = *&v80[v83 + 64];
          v86 = vrhaddq_u16(*&v80[v83], v85);
          *&v81[v83] = v86;
          v84 += 8;
          v83 += 16;
        }

        while (v84 < 0x18);
        v80 += 64;
        v81 += 64;
        --v82;
      }

      while (v82);
      v87 = v165;
      v88 = 64;
      sub_2779725E0(v165 >> 1, v15, 32, 64, v164 >> 1, 32, v16, a9, v86, *v85.i64, v19, v20, a10);
      v89 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v90 = 0;
        v91 = -8;
        do
        {
          v92 = vsubq_s16(*&v87[v90], *(v89 + v90));
          v31 = vpadalq_s16(v31, v92);
          v29 = vmlal_s16(v29, *v92.i8, *v92.i8);
          v30 = vmlal_high_s16(v30, v92, v92);
          v91 += 8;
          v90 += 16;
        }

        while (v91 < 0x18);
        v87 += 64;
        v89 += 2 * v22;
        --v88;
      }

      while (v88);
    }

    else if (v14)
    {
      v109 = 65;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v36[v110] = vrhaddq_u16(*(v25 + v110), *(v25 + v110 + 2));
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v36 += 64;
        v25 += v35;
        --v109;
      }

      while (v109);
      v112 = vdupq_n_s16(8 - v14);
      v113 = vdupq_n_s16(v14);
      v114 = v166;
      v115 = v164;
      v116 = 64;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          v119 = *&v114[v117 + 64];
          v120 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v114[v117], v112), v119, v113), 3uLL);
          *&v115[v117] = v120;
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x18);
        v114 += 64;
        v115 += 64;
        --v116;
      }

      while (v116);
      v121 = v165;
      v122 = 64;
      sub_2779725E0(v165 >> 1, v15, 32, 64, v164 >> 1, 32, v16, a9, v112, *v113.i64, *v120.i64, *v119.i8, a10);
      v123 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v124 = 0;
        v125 = -8;
        do
        {
          v126 = vsubq_s16(*&v121[v124], *(v123 + v124));
          v31 = vpadalq_s16(v31, v126);
          v29 = vmlal_s16(v29, *v126.i8, *v126.i8);
          v30 = vmlal_high_s16(v30, v126, v126);
          v125 += 8;
          v124 += 16;
        }

        while (v125 < 0x18);
        v121 += 64;
        v123 += 2 * v22;
        --v122;
      }

      while (v122);
    }

    else
    {
      v37 = 64;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = *(v25 + v38 + 2);
          v41 = vrhaddq_u16(*(v25 + v38), v40);
          *&v36[v38] = v41;
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x18);
        v36 += 64;
        v25 += v35;
        --v37;
      }

      while (v37);
      v42 = v164;
      v43 = 64;
      sub_2779725E0(v164 >> 1, v15, 32, 64, v166 >> 1, 32, v16, a9, v41, *v40.i64, v19, v20, a10);
      v44 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v31 = vpadalq_s16(v31, v47);
          v29 = vmlal_s16(v29, *v47.i8, *v47.i8);
          v30 = vmlal_high_s16(v30, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v42 += 64;
        v44 += 2 * v22;
        --v43;
      }

      while (v43);
    }
  }

  else if (v13)
  {
    v48 = vdupq_n_s16(8 - v13);
    v49 = vdupq_n_s16(v13);
    v50 = 2 * v12;
    v51 = v166;
    if (v14 == 4)
    {
      v127 = 65;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = *(v25 + v128 + 2);
          v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v128), v48), v130, v49), 3uLL);
          *&v51[v128] = v131;
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x18);
        v51 += 64;
        v25 += v50;
        --v127;
      }

      while (v127);
      v132 = 0;
      v133 = 64;
      do
      {
        v134 = -8;
        v135 = v132;
        do
        {
          v136 = *&v166[v135 + 64];
          v137 = vrhaddq_u16(*&v166[v135], v136);
          *&v164[v135] = v137;
          v134 += 8;
          v135 += 16;
        }

        while (v134 < 0x18);
        v132 += 64;
        --v133;
      }

      while (v133);
      v138 = v165;
      v139 = 64;
      sub_2779725E0(v165 >> 1, v15, 32, 64, v164 >> 1, 32, v16, a9, v137, *v136.i64, *v131.i64, *v130.i8, a10);
      v140 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v141 = 0;
        v142 = -8;
        do
        {
          v143 = vsubq_s16(*&v138[v141], *(v140 + v141));
          v31 = vpadalq_s16(v31, v143);
          v29 = vmlal_s16(v29, *v143.i8, *v143.i8);
          v30 = vmlal_high_s16(v30, v143, v143);
          v142 += 8;
          v141 += 16;
        }

        while (v142 < 0x18);
        v138 += 64;
        v140 += 2 * v22;
        --v139;
      }

      while (v139);
    }

    else if (v14)
    {
      v144 = 65;
      do
      {
        v145 = 0;
        v146 = -8;
        do
        {
          *&v51[v145] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v145), v48), *(v25 + v145 + 2), v49), 3uLL);
          v146 += 8;
          v145 += 16;
        }

        while (v146 < 0x18);
        v51 += 64;
        v25 += v50;
        --v144;
      }

      while (v144);
      v147 = 0;
      v148 = vdupq_n_s16(8 - v14);
      v149 = vdupq_n_s16(v14);
      v150 = 64;
      do
      {
        v151 = -8;
        v152 = v147;
        do
        {
          v153 = *&v166[v152 + 64];
          v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v166[v152], v148), v153, v149), 3uLL);
          *&v164[v152] = v154;
          v151 += 8;
          v152 += 16;
        }

        while (v151 < 0x18);
        v147 += 64;
        --v150;
      }

      while (v150);
      v155 = v165;
      v156 = 64;
      sub_2779725E0(v165 >> 1, v15, 32, 64, v164 >> 1, 32, v16, a9, v148, *v149.i64, *v154.i64, *v153.i8, a10);
      v157 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v158 = 0;
        v159 = -8;
        do
        {
          v160 = vsubq_s16(*&v155[v158], *(v157 + v158));
          v31 = vpadalq_s16(v31, v160);
          v29 = vmlal_s16(v29, *v160.i8, *v160.i8);
          v30 = vmlal_high_s16(v30, v160, v160);
          v159 += 8;
          v158 += 16;
        }

        while (v159 < 0x18);
        v155 += 64;
        v157 += 2 * v22;
        --v156;
      }

      while (v156);
    }

    else
    {
      v52 = 64;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          v55 = *(v25 + v53 + 2);
          v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v53), v48), v55, v49), 3uLL);
          *&v51[v53] = v56;
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v25 += v50;
        --v52;
      }

      while (v52);
      v57 = v164;
      v58 = 64;
      sub_2779725E0(v164 >> 1, v15, 32, 64, v166 >> 1, 32, v16, a9, v48, *v49.i64, *v56.i64, *v55.i8, a10);
      v59 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v57[v60], *(v59 + v60));
          v31 = vpadalq_s16(v31, v62);
          v29 = vmlal_s16(v29, *v62.i8, *v62.i8);
          v30 = vmlal_high_s16(v30, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v57 += 64;
        v59 += 2 * v22;
        --v58;
      }

      while (v58);
    }
  }

  else if (v14 == 4)
  {
    v63 = 2 * v12;
    v64 = v166;
    v65 = 64;
    v66 = v25 + v63;
    do
    {
      v67 = 0;
      v68 = -8;
      do
      {
        v69 = *(v66 + v67);
        v70 = vrhaddq_u16(*(v25 + v67), v69);
        *&v64[v67] = v70;
        v68 += 8;
        v67 += 16;
      }

      while (v68 < 0x18);
      v64 += 64;
      v66 += v63;
      v25 += v63;
      --v65;
    }

    while (v65);
    v71 = v164;
    v72 = 64;
    sub_2779725E0(v164 >> 1, v15, 32, 64, v166 >> 1, 32, v16, a9, v70, *v69.i64, v19, v20, a10);
    v73 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v71[v74], *(v73 + v74));
        v31 = vpadalq_s16(v31, v76);
        v29 = vmlal_s16(v29, *v76.i8, *v76.i8);
        v30 = vmlal_high_s16(v30, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x18);
      v71 += 64;
      v73 += 2 * v22;
      --v72;
    }

    while (v72);
  }

  else if (v14)
  {
    v93 = vdupq_n_s16(8 - v14);
    v94 = vdupq_n_s16(v14);
    v95 = 2 * v12;
    v96 = v25 + v95;
    v97 = v166;
    v98 = 64;
    do
    {
      v99 = 0;
      v100 = -8;
      do
      {
        v101 = *(v96 + v99);
        v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v99), v93), v101, v94), 3uLL);
        *&v97[v99] = v102;
        v100 += 8;
        v99 += 16;
      }

      while (v100 < 0x18);
      v97 += 64;
      v96 += v95;
      v25 += v95;
      --v98;
    }

    while (v98);
    v103 = v164;
    v104 = 64;
    sub_2779725E0(v164 >> 1, v15, 32, 64, v166 >> 1, 32, v16, a9, v93, *v94.i64, *v102.i64, *v101.i8, a10);
    v105 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v106 = 0;
      v107 = -8;
      do
      {
        v108 = vsubq_s16(*&v103[v106], *(v105 + v106));
        v31 = vpadalq_s16(v31, v108);
        v29 = vmlal_s16(v29, *v108.i8, *v108.i8);
        v30 = vmlal_high_s16(v30, v108, v108);
        v107 += 8;
        v106 += 16;
      }

      while (v107 < 0x18);
      v103 += 64;
      v105 += 2 * v22;
      --v104;
    }

    while (v104);
  }

  else
  {
    v26 = v166;
    v27 = 64;
    sub_2779725E0(v166 >> 1, v15, 32, 64, v11, v12, v16, a9, v17, v18, v19, v20, a10);
    v28 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = 0;
      v33 = -8;
      do
      {
        v34 = vsubq_s16(*&v26[v32], *(v28 + v32));
        v31 = vpadalq_s16(v31, v34);
        v29 = vmlal_s16(v29, *v34.i8, *v34.i8);
        v30 = vmlal_high_s16(v30, v34, v34);
        v33 += 8;
        v32 += 16;
      }

      while (v33 < 0x18);
      v26 += 64;
      v28 += 2 * v22;
      --v27;
    }

    while (v27);
  }

  v161 = vaddvq_s32(v31);
  v162 = vaddlvq_u32(vaddq_s32(v30, v29));
  *a11 = v162;
  return v162 - ((v161 * v161) >> 11);
}