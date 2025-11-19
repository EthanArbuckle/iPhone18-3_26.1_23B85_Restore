uint64_t sub_277B89278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[2064] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 129;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 129;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 128, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_2779973A8(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 128, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 129;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 128;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 128, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 128;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_2779973A8(v72, 64, v20, v18, v16);
}

uint64_t sub_277B897A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[2080] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v23 += v30;
          v28 += 32;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x78);
        v54 += 32;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x78);
      v41 += 32;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 32]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x78);
      v23 += v50;
      v47 += 32;
      v48 += 256;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x80u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997478(v72, 128, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 128, 128, 0x80u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x78);
      v62 += 32;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 32]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x78);
      v23 += v69;
      v66 += 32;
      v67 += 256;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v23 += v38;
      v36 += 32;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x80u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x78);
      v23 += v26;
      v24 += 32;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997478(v72, 128, v20, v18, v16);
}

uint64_t sub_277B89CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[4128] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v23 += v30;
          v28 += 32;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 129;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x78);
        v54 += 32;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 129;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x78);
      v41 += 32;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 32]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x78);
      v23 += v50;
      v47 += 32;
      v48 += 256;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x80u, 128, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997548(v72, 128, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 128, 128, 0x80u, 128, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 129;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x78);
      v62 += 32;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 128;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 32]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x78);
      v23 += v69;
      v66 += 32;
      v67 += 256;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v23 += v38;
      v36 += 32;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x80u, 128, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 128;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x78);
      v23 += v26;
      v24 += 32;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997548(v72, 128, v20, v18, v16);
}

uint64_t sub_277B8A20C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[17] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 136);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 128);
  return sub_277997D04(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B8A32C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 528);
  sub_277B79A68(v18, v17, 8, 8, 8u, 32, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277997DAC(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B8A430(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 4;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 160);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 160);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 4;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 4, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277997E38(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 160);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 4, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 160);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 4;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 4;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 4, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 4;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277997E38(v69, 16, a5, a6, a7);
}

uint64_t sub_277B8A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v84 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = (2 * v22);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v30 = v83;
        v31 = 64;
        do
        {
          v32 = 0;
          v33 = 1;
          do
          {
            v34 = v33;
            v35 = *v23++;
            v36 = vrhaddq_u16(*(v21 + 2 * v32), *(v21 + 2 * v32 + 2));
            *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, v14, 0), *v36.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, v14, 0), v36, v13, 0), 4uLL);
            v32 = 8;
            v33 = 0;
          }

          while ((v34 & 1) != 0);
          v21 += 2 * v10;
          v30 += 32;
          --v31;
        }

        while (v31);
        goto LABEL_33;
      }

      v59 = 0;
      v60 = (v21 + 18);
      do
      {
        v61 = &v83[v59];
        *v61 = vrhaddq_u16(*(v60 - 18), v60[-1]);
        v62 = *v60;
        v63 = vrhaddq_u16(*(v60 - 2), *v60);
        v61[1] = v63;
        v59 += 32;
        v60 = (v60 + 2 * v10);
      }

      while (v59 != 2080);
      goto LABEL_47;
    }

    v45 = 0;
    v46 = (v21 + 18);
    do
    {
      v47 = &v83[v45];
      *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
      v48 = *v46;
      v49 = vrhaddq_u16(*(v46 - 2), *v46);
      v47[1] = v49;
      v45 += 32;
      v46 = (v46 + 2 * v10);
    }

    while (v45 != 2080);
    v49.i16[0] = *(a9 + 4);
    v48.i16[0] = *(a9 + 8);
    v50 = v83;
    v51 = v82;
    v52 = 64;
    do
    {
      v53 = 0;
      v54 = 1;
      do
      {
        v55 = v54;
        v56 = *v23++;
        v57 = vrhaddq_u16(*&v50[2 * v53], *&v50[2 * v53 + 32]);
        *&v51[2 * v53] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v56.i8, *v48.i8, 0), *v57.i8, *v49.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v56, *v48.i8, 0), v57, *v49.i8, 0), 4uLL);
        v53 = 8;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      v50 += 32;
      v51 += 32;
      --v52;
    }

    while (v52);
LABEL_43:
    v58 = v82;
    goto LABEL_44;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v37 = v83;
        sub_277B79A68(v21, v83, v10, 1, 0x10u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_48:
        v77 = v37 >> 1;
        return sub_277997EE0(v77, 16, v20, v18, v16);
      }

      v78 = 0;
      v63 = vdupq_n_s16(8 - v11);
      v62 = vdupq_n_s16(v11);
      v79 = (v21 + 18);
      do
      {
        v80 = &v83[v78];
        *v80 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 18), v63), v79[-1], v62), 3uLL);
        v80[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 2), v63), *v79, v62), 3uLL);
        v78 += 32;
        v79 = (v79 + 2 * v10);
      }

      while (v78 != 2080);
LABEL_47:
      v37 = v82;
      sub_277B79A68(v83, v82, 16, 16, 0x10u, 64, v12, v23, *v63.i8, *v62.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_48;
    }

    v64 = 0;
    v65 = vdupq_n_s16(8 - v11);
    v66 = vdupq_n_s16(v11);
    v67 = (v21 + 18);
    do
    {
      v68 = &v83[v64];
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v67 - 18), v65), v67[-1], v66), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v67 - 2), v65), *v67, v66), 3uLL);
      v64 += 32;
      v67 = (v67 + 2 * v10);
    }

    while (v64 != 2080);
    v65.i16[0] = *(a9 + 4);
    v66.i16[0] = *(a9 + 8);
    v69 = v83;
    v70 = v82;
    v71 = 64;
    do
    {
      v72 = 0;
      v73 = 1;
      do
      {
        v74 = v73;
        v75 = *v23++;
        v76 = vrhaddq_u16(*&v69[2 * v72], *&v69[2 * v72 + 32]);
        *&v70[2 * v72] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v75.i8, *v66.i8, 0), *v76.i8, *v65.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v75, *v66.i8, 0), v76, *v65.i8, 0), 4uLL);
        v72 = 8;
        v73 = 0;
      }

      while ((v74 & 1) != 0);
      v69 += 32;
      v70 += 32;
      --v71;
    }

    while (v71);
    goto LABEL_43;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v38 = v83;
    v39 = 64;
    do
    {
      v40 = 0;
      v41 = 1;
      do
      {
        v42 = v41;
        v43 = *v23++;
        v44 = vrhaddq_u16(*(v21 + 2 * v40), *(v21 + 2 * v40 + 2 * v10));
        *&v38[2 * v40] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v43.i8, v14, 0), *v44.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v43, v14, 0), v44, v13, 0), 4uLL);
        v40 = 8;
        v41 = 0;
      }

      while ((v42 & 1) != 0);
      v21 += 2 * v10;
      v38 += 32;
      --v39;
    }

    while (v39);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v83, v10, v10, 0x10u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v83;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = 1;
      do
      {
        v28 = v27;
        v29 = *v23++;
        *&v24[2 * v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v29.i8, v14, 0), *(v21 + 2 * v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v29, v14, 0), *(v21 + 2 * v26), v13, 0), 4uLL);
        v26 = 8;
        v27 = 0;
      }

      while ((v28 & 1) != 0);
      v21 += 2 * v10;
      v24 += 32;
      --v25;
    }

    while (v25);
  }

LABEL_33:
  v58 = v83;
LABEL_44:
  v77 = v58 >> 1;
  return sub_277997EE0(v77, 16, v20, v18, v16);
}

uint64_t sub_277B8ADFC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v20 = v71;
        v21 = 8;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = vrhaddq_u16(*(v14 + v22), *(v14 + v22 + 2));
            *&v20[v22] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v22), a10, 0), *v24.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v22), a10, 0), v24, a9, 0), 4uLL);
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v15 += v22;
          v20 += 64;
          v14 += 2 * a2;
          --v21;
        }

        while (v21);
        goto LABEL_35;
      }

      v46 = v71;
      v47 = 9;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          v50 = *(v14 + v48 + 2);
          v51 = vrhaddq_u16(*(v14 + v48), v50);
          *&v46[v48] = v51;
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v46 += 64;
        v14 += 2 * a2;
        --v47;
      }

      while (v47);
      goto LABEL_55;
    }

    v33 = v71;
    v34 = 9;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v37 = *(v14 + v35 + 2);
        v38 = vrhaddq_u16(*(v14 + v35), v37);
        *&v33[v35] = v38;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v33 += 64;
      v14 += 2 * a2;
      --v34;
    }

    while (v34);
    v38.i16[0] = *(a11 + 4);
    v37.i16[0] = *(a11 + 8);
    v39 = v71;
    v40 = v70;
    v41 = 8;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        v44 = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
        *&v40[v42] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v42), *v37.i8, 0), *v44.i8, *v38.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v42), *v37.i8, 0), v44, *v38.i8, 0), 4uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v15 += v42;
      v39 += 64;
      v40 += 64;
      --v41;
    }

    while (v41);
LABEL_49:
    v45 = v70;
    goto LABEL_50;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v25 = v71;
        sub_277B79A68(v14, v71, a2, 1, 0x20u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_56:
        v64 = v25 >> 1;
        return sub_277997F88(v64, 32, a5, a6, a7);
      }

      v51 = vdupq_n_s16(8 - a3);
      v50 = vdupq_n_s16(a3);
      v65 = v71;
      v66 = 9;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v67), v51), *(v14 + v67 + 2), v50), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v14 += 2 * a2;
        --v66;
      }

      while (v66);
LABEL_55:
      v25 = v70;
      sub_277B79A68(v71, v70, 32, 32, 0x20u, 8, a4, v15, *v51.i8, *v50.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_56;
    }

    v52 = vdupq_n_s16(8 - a3);
    v53 = vdupq_n_s16(a3);
    v54 = v71;
    v55 = 9;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v56), v52), *(v14 + v56 + 2), v53), 3uLL);
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v54 += 64;
      v14 += 2 * a2;
      --v55;
    }

    while (v55);
    v52.i16[0] = *(a11 + 4);
    v53.i16[0] = *(a11 + 8);
    v58 = v71;
    v59 = v70;
    v60 = 8;
    do
    {
      v61 = 0;
      v62 = -8;
      do
      {
        v63 = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
        *&v59[v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v61), *v53.i8, 0), *v63.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v61), *v53.i8, 0), v63, *v52.i8, 0), 4uLL);
        v62 += 8;
        v61 += 16;
      }

      while (v62 < 0x18);
      v15 += v61;
      v58 += 64;
      v59 += 64;
      --v60;
    }

    while (v60);
    goto LABEL_49;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v26 = 2 * a2;
    v27 = v14 + v26;
    v28 = v71;
    v29 = 8;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        v32 = vrhaddq_u16(*(v14 + v30), *(v27 + v30));
        *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v30), a10, 0), *v32.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v30), a10, 0), v32, a9, 0), 4uLL);
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v15 += v30;
      v28 += 64;
      v27 += v26;
      v14 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v71, a2, a2, 0x20u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v71;
    v17 = 8;
    do
    {
      v18 = 0;
      v19 = -8;
      do
      {
        *&v16[v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL);
        v19 += 8;
        v18 += 16;
      }

      while (v19 < 0x18);
      v15 += v18;
      v16 += 64;
      v14 += 2 * a2;
      --v17;
    }

    while (v17);
  }

LABEL_35:
  v45 = v71;
LABEL_50:
  v64 = v45 >> 1;
  return sub_277997F88(v64, 32, a5, a6, a7);
}

uint64_t sub_277B8B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v80 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 16;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 128;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 17;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 + 2);
          v59 = vrhaddq_u16(*(v21 + v56), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x38);
        v54 += 128;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 17;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 + 2);
        v46 = vrhaddq_u16(*(v21 + v43), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v41 += 128;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50], *&v47[v50 + 128]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 128;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 16, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_27799802C(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 17;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75), v59), *(v21 + v75 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x38);
        v73 += 128;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 16, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 17;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64), v60), *(v21 + v64 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 16;
      }

      while (v65 < 0x38);
      v62 += 128;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 16;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69], *&v66[v69 + 128]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 128;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 16;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 128;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 16, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 16;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 128;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_27799802C(v72, 64, v20, v18, v16);
}

void sub_277B8B7D0(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 0;
  v7 = a2;
  v8 = a4;
  v9 = 2 * a4;
  v10 = 3 * a4;
  v49 = 3 * a2;
  v50 = 2 * a2;
  v11 = 4 * a4;
  v12 = 4 * a2;
  v13 = 4 * a2;
  v14 = a1 + 3 * a2;
  v15 = a1 + 2 * a2;
  v16 = a4;
  v17 = 6 * a4;
  v18 = 4 * a4;
  v48 = v10;
  v19 = a1;
  v20 = a1 + a2;
  v21 = 4 * a2;
  v22 = v11;
  LODWORD(v23) = a6;
  do
  {
    v24 = v23;
    v25 = v22;
    v26 = v21;
    v27 = (a3 + 2 * 4 * v6 * v8);
    if (a5 < 7)
    {
      v33 = a1 + 4 * v6 * v7;
      v34 = a5;
    }

    else
    {
      v28 = 0;
      v29 = a5 + 8;
      do
      {
        v30 = vmovl_u8(*(v20 + v28));
        v31 = vmovl_u8(*(v15 + v28));
        v32 = vmovl_u8(*(v14 + v28));
        *v27 = vmovl_u8(*(v19 + v28));
        *(v27 + v16 * 2) = v30;
        *(v27 + v18) = v31;
        *(v27++ + v17) = v32;
        v28 += 8;
        v29 -= 8;
      }

      while (v29 > 0xF);
      v33 = v19 + v28;
      v34 = a5 - v28;
    }

    if (v34 >= 1)
    {
      for (i = 0; i != v34; ++i)
      {
        v27->i16[i] = *(v33 + i);
        v27->i16[i + v16] = *(v33 + v7 + i);
        v27->i16[v9 + i] = *(v33 + v50 + i);
        v27->i16[i + v48] = *(v33 + v49 + i);
      }
    }

    ++v6;
    v23 = (v24 - 4);
    v22 += v11;
    v21 += v12;
    v19 += v13;
    v14 += v13;
    v15 += v13;
    v20 += v13;
  }

  while (v24 > 7);
  v36 = 2 * v8;
  if (v24 >= 5)
  {
    v37 = 0;
    v38 = (a3 + 2 * v25);
    v39 = (a1 + v26);
    do
    {
      v40 = v39;
      v41 = v38;
      v42 = a5;
      if (a5 >= 1)
      {
        do
        {
          v43 = *v40++;
          *v41++ = v43;
          --v42;
        }

        while (v42);
      }

      ++v37;
      v38 = (v38 + v36);
      v39 += v7;
    }

    while (v37 < v23);
  }

  v44 = 2 * a5;
  v45 = (a3 + 2 * v8 * a6);
  v46 = 5;
  do
  {
    bzero(v45, v44 + 4);
    v45 += v36;
    --v46;
  }

  while (v46);
}

uint64_t sub_277B8BA38(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = (&unk_277C3C250 + 16 * a8);
  v16 = *v15;
  v17 = malloc_type_malloc(0x17BBFuLL, 0x5F484EBFuLL);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v18 - 1) = v17;
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v311 = v15;
  v312 = v16;
  v313 = a7;
  v314 = a6;
  v317 = a5;
  v19 = 0;
  v309 = a2 + 9;
  v310 = (a2 + 9) & 0xFFFFFFFC;
  v319 = v310 + 16;
  v335 = (2 * (v310 + 16));
  v334 = a1 - 6 * a4 - 6;
  v20 = 4 * v335;
  v315 = a4;
  v347 = (8 * (v310 + 16));
  v21 = 2 * v347;
  v22 = 16 * v335;
  v23 = 4 * v347;
  v24 = 4 * a4;
  v25 = 16 * a4;
  v332 = v24 + v25 - 6 * a4 + a1 - 6;
  v26 = 2 * a4;
  v330 = v25 - 6 * a4 + a1 - 6;
  v331 = v25 + v26 - 6 * a4 + a1 - 6;
  v27 = 6 * a4;
  v328 = v24 + 8 * a4 - 6 * a4 + a1 - 6;
  v329 = v27 + 8 * a4 - 6 * a4 + a1 - 6;
  v327 = v26 + 8 * a4 - 6 * a4 + a1 - 6;
  v326 = 8 * a4 - 6 * a4 + a1 - 6;
  v28 = 12 * v335;
  v29 = 8 * v335;
  v324 = v24 - 6 * a4 + a1 - 6;
  v325 = v27 - 6 * a4 + a1 - 6;
  v316 = a1;
  v323 = v26 - 6 * a4 + a1 - 6;
  v318 = v18 + 64800;
  v321 = a2;
  v30 = a2 + 6;
  v346 = a3 + 6;
  v320 = a3;
  v322 = a3 + 14;
  do
  {
    v336 = v30;
    v31 = &v18[6 * v335 + 64800];
    v32 = v323;
    v33 = &v18[8 * v335 + 64800];
    v34 = v334;
    v36 = v324;
    v35 = v325;
    v38 = v326;
    v37 = v327;
    v40 = v328;
    v39 = v329;
    v42 = v330;
    v41 = v331;
    v43 = v332;
    v342 = v22;
    v344 = v20;
    v44 = v20;
    v338 = v29;
    v340 = v28;
    v45 = v28;
    v46 = v22;
    v47 = &v18[4 * v335 + 64800];
    v48 = &v18[2 * v335 + 64800];
    v49 = v322;
    do
    {
      v50 = &v18[v44];
      v51 = *(v34 + v19);
      v52 = *(v32 + v19);
      v53 = *(v36 + v19);
      v54 = *(v35 + v19);
      v55 = *(v38 + v19);
      v56 = *(v37 + v19);
      v57 = *(v40 + v19);
      v58 = *(v39 + v19);
      v59 = *(v42 + v19);
      v60 = *(v41 + v19);
      v61 = *(v43 + v19);
      v62 = vaddq_s16(v57, v56);
      v63 = vaddq_s16(v59, v58);
      v64 = vaddq_s16(vaddq_s16(v54, v53), v55);
      *(v48 + v19) = vaddq_s16(vaddq_s16(v52, v51), v64);
      *(v47 + v19) = vaddq_s16(v62, v64);
      *(v31 + v19) = vaddq_s16(vaddq_s16(v62, v55), v63);
      *(v33 + v19) = vaddq_s16(vaddq_s16(v63, vaddq_s16(v57, v60)), v61);
      v65 = vmlal_s16(vmull_s16(*v57.i8, *v57.i8), *v56.i8, *v56.i8);
      v66 = vmlal_s16(vmlal_s16(vmull_s16(*v54.i8, *v54.i8), *v53.i8, *v53.i8), *v55.i8, *v55.i8);
      v67 = vaddq_s32(v65, v66);
      v68 = vmlal_s16(vmlal_s16(v65, *v58.i8, *v58.i8), *v59.i8, *v59.i8);
      *v50 = vaddq_s32(vmlal_s16(vmull_s16(*v52.i8, *v52.i8), *v51.i8, *v51.i8), v66);
      v69 = &v18[v29];
      *v69 = v67;
      v70 = &v18[v45];
      *v70 = vmlal_s16(v68, *v55.i8, *v55.i8);
      v71 = &v18[v46];
      *v71 = vmlal_s16(vaddq_s32(vmlsl_s16(vmull_s16(*v60.i8, *v60.i8), *v56.i8, *v56.i8), v68), *v61.i8, *v61.i8);
      v72 = vmlal_high_s16(vmull_high_s16(v52, v52), v51, v51);
      v73 = vmlal_high_s16(vmull_high_s16(v57, v57), v56, v56);
      v74 = vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v54, v54), v53, v53), v55, v55);
      v75 = vaddq_s32(v73, v74);
      v76 = vmlal_high_s16(vmlal_high_s16(v73, v58, v58), v59, v59);
      v49 -= 8;
      v48 += v21;
      v47 += v21;
      v46 += v23;
      v45 += v23;
      v29 += v23;
      v44 += v23;
      v43 += v25;
      v41 += v25;
      v42 += v25;
      v39 += v25;
      v40 += v25;
      v37 += v25;
      v50[1] = vaddq_s32(v72, v74);
      v69[1] = v75;
      v38 += v25;
      v35 += v25;
      v36 += v25;
      v32 += v25;
      v70[1] = vmlal_high_s16(v76, v55, v55);
      v71[1] = vmlal_high_s16(vaddq_s32(vmlsl_high_s16(vmull_high_s16(v60, v60), v56, v56), v76), v61, v61);
      v34 += v25;
      v33 += v21;
      v31 += v21;
    }

    while (v49 > 8);
    v19 += 16;
    v22 = v342 + 32;
    v28 = v340 + 32;
    v29 = v338 + 32;
    v20 = v344 + 32;
    v30 = v336 - 8;
  }

  while (v336 > 8);
  v77 = 4 * (v321 + 10);
  bzero(v318, 2 * (v321 + 10));
  bzero(v18, v77);
  bzero(&v318[2 * v319], 2 * (v321 + 10));
  bzero(&v18[4 * v319], v77);
  if (v320 >= -5)
  {
    v78 = (v320 + 8) - 2;
    v79 = v321 + 8 * (v309 >> 2) + 40;
    do
    {
      v80 = &v318[2 * v79];
      *(v80 + 2) = 0;
      *v80 = 0;
      v81 = &v18[4 * v79];
      *(v81 + 2) = 0;
      *v81 = 0;
      v79 += v319;
      --v78;
    }

    while (v78);
  }

  v82 = 0;
  v83 = (2 * (v310 + 16));
  v84 = 16 * v335;
  v85 = 4 * v347;
  v86 = 12 * v335;
  v87 = 8 * v335;
  v88 = 4 * v335;
  v89 = 16 * v335 + 32408;
  v90 = 12 * v335 + 32408;
  v91 = 8 * v335 + 32408;
  v92 = 4 * v335 + 32408;
  v93 = 8 * v335 + 64808;
  v333 = 2 * v347;
  v94 = 6 * v335 + 64808;
  v95 = 4 * v335 + 64808;
  v96 = 2 * v335;
  v97 = 4 * v335;
  v98 = 2 * v335 + 64808;
  do
  {
    v345 = v82;
    v99 = &v18[4 * v335 + 4 * v82 * v347];
    v100 = &v18[2 * v335 + 64800 + 2 * v82 * v347];
    v101 = *v100;
    v102 = (v100 + 2 * v83);
    v103 = *v102;
    v104 = (v102 + 2 * v83);
    v105 = *(v104 + 2 * v335);
    v106 = vtrn1_s16(v101, v103);
    v107 = vtrn2_s16(v101, v103);
    v108 = vtrn1_s16(*v104, v105);
    v109 = vtrn2_s16(*v104, v105);
    v110 = vzip1_s32(v106, v108);
    v111 = vzip2_s32(v106, v108);
    v112 = vzip1_s32(v107, v109);
    v113 = vzip2_s32(v107, v109);
    v114 = (v99 + 4 * v83);
    v115 = *v114;
    v116 = (v114 + 4 * v83);
    v117 = *(v116 + 4 * v335);
    v118 = vtrn1q_s32(*v99, v115);
    v131 = vtrn2q_s32(*v99, v115);
    v119 = vtrn1q_s32(*v116, v117);
    v120 = vzip2q_s64(v118, v119);
    v121.i64[0] = v118.i64[0];
    v121.i64[1] = v119.i64[0];
    v122 = vtrn2q_s32(*v116, v117);
    v123 = vzip2q_s64(v131, v122);
    v124 = v98;
    v125 = v95;
    v126 = v94;
    v127 = v93;
    v128 = v92;
    v129 = v91;
    v337 = v90;
    v339 = v89;
    v130 = v97;
    v131.i64[1] = v122.i64[0];
    v341 = v87;
    v343 = v86;
    v132 = v86;
    v133 = v84;
    v134 = v84;
    v135 = v321 + 10;
    do
    {
      v136 = *&v18[v124];
      v137 = *&v18[v125];
      v138 = &v18[v130];
      v139 = *&v18[v126];
      v140 = *&v18[v127];
      v141 = vtrn1_s16(v136, v137);
      v142 = vtrn2_s16(v136, v137);
      v143 = vtrn1_s16(v139, v140);
      v144 = vtrn2_s16(v139, v140);
      v145 = vzip1_s32(v141, v143);
      v146 = vzip2_s32(v141, v143);
      v147 = vaddl_s16(v111, v112);
      v112 = vzip1_s32(v142, v144);
      v148 = vaddl_s16(v145, v113);
      v113 = vzip2_s32(v142, v144);
      v149 = *&v18[v130 + 16];
      v150 = &v18[v87];
      v151 = *&v18[v87 + 16];
      v152 = &v18[v132];
      v153 = *&v18[v132 + 16];
      v154 = &v18[v134];
      v155 = *&v18[v134 + 16];
      v156 = vtrn1q_s32(v149, v151);
      v157 = vtrn2q_s32(v149, v151);
      v158 = vtrn1q_s32(v153, v155);
      v159 = vtrn2q_s32(v153, v155);
      v160 = vzip2q_s64(v156, v158);
      v153.i64[0] = v156.i64[0];
      v153.i64[1] = v158.i64[0];
      v161 = vzip2q_s64(v157, v159);
      v162 = vaddq_s32(v120, v131);
      v131.i64[0] = v157.i64[0];
      v131.i64[1] = v159.i64[0];
      v163 = vaddq_s32(v147, v148);
      v164 = vaddq_s32(vaddl_s16(v112, v146), v148);
      v165 = vaddw_s16(v163, v110);
      v166 = vaddw_s16(v163, v112);
      v167 = vaddw_s16(v164, v111);
      v168 = vaddw_s16(v164, v113);
      v169 = vtrn1q_s32(v165, v166);
      v170 = vtrn2q_s32(v165, v166);
      v171 = vtrn1q_s32(v167, v168);
      v172 = vtrn2q_s32(v167, v168);
      v173 = vzip2q_s64(v169, v171);
      v169.i64[1] = v171.i64[0];
      v174 = vzip2q_s64(v170, v172);
      v170.i64[1] = v172.i64[0];
      *&v18[v128] = v169;
      *&v18[v129] = v170;
      *&v18[v90] = v173;
      v175 = vaddq_s32(v153, v123);
      *&v18[v89] = v174;
      v176 = vaddq_s32(v162, v175);
      v177 = vaddq_s32(vaddq_s32(v131, v160), v175);
      v178 = vaddq_s32(v176, v121);
      v179 = vaddq_s32(v176, v131);
      v180 = vaddq_s32(v177, v120);
      v181 = vaddq_s32(v177, v161);
      v182 = vtrn1q_s32(v178, v179);
      v183 = vtrn2q_s32(v178, v179);
      v184 = vtrn1q_s32(v180, v181);
      v185 = vtrn2q_s32(v180, v181);
      v186 = vzip2q_s64(v182, v184);
      v182.i64[1] = v184.i64[0];
      v187 = vzip2q_s64(v183, v185);
      v135 -= 4;
      v134 += 16;
      v132 += 16;
      v87 += 16;
      v130 += 16;
      v89 += 16;
      v90 += 16;
      v129 += 16;
      v128 += 16;
      v127 += 8;
      v183.i64[1] = v185.i64[0];
      v126 += 8;
      v125 += 8;
      v124 += 8;
      v110 = v145;
      *(v138 + 8) = v182;
      *(v150 + 8) = v183;
      v111 = v146;
      v121 = v153;
      *(v152 + 8) = v186;
      *(v154 + 8) = v187;
      v120 = v160;
      v123 = v161;
    }

    while (v135 > 4);
    v82 = v345 + 1;
    v84 = v133 + v85;
    v86 = v343 + v85;
    v87 = v341 + v85;
    v97 += v85;
    v89 = v339 + v85;
    v83 = (2 * (v310 + 16));
    v90 = v337 + v85;
    v91 += v85;
    v92 += v85;
    v93 += v333;
    v94 += v333;
    v95 += v333;
    v98 += v333;
    v188 = __OFSUB__(v346, 8);
    v346 -= 8;
  }

  while (!((v346 < 0) ^ v188 | (v346 == 0)));
  v189 = 3 * v319;
  v190 = &v18[4 * ((3 * v319) | 3) - 4 + 4 * (-16 - v310)];
  v191 = &v318[2 * ((3 * v319) | 3) - 2 + 2 * (-16 - v310)];
  v192 = &v18[4 * ((3 * v319) | 3) + 32396 + 4 * (-16 - v310)];
  v193 = v320 + 2;
  v194 = v311[2];
  v195 = ((2 * v312) | 1) * ((2 * v312) | 1);
  if (v313 < 9)
  {
    v237 = 0;
    v238 = vdupq_n_s32(v195);
    v239 = (&unk_277C3C350 + 4 * v195 - 4);
    v240 = vld1q_dup_f32(v239);
    v241 = vdupq_n_s32(v194);
    v242.i64[0] = 0xFF000000FFLL;
    v242.i64[1] = 0xFF000000FFLL;
    v243.i64[0] = 0x10000000100;
    v243.i64[1] = 0x10000000100;
    v206 = v315;
    v205 = v316;
    do
    {
      v244 = (v190 + 4 * v347 * v237);
      v245 = (v192 + 4 * v347 * v237);
      v246 = (v191 + 2 * v347 * v237);
      v247 = v321 + 2;
      do
      {
        v248 = 0;
        v249 = (v244 + 4 * v335);
        v250 = (v249 + 4 * v335);
        v251 = *v245;
        v252 = (v245 + 4 * v335);
        v253 = *v252;
        v254 = (v252 + 4 * v335);
        v255 = *v254;
        v256 = (v254 + 4 * v335);
        v257 = *v256;
        v258 = vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*(v250 + 4 * v335), v238), vmulq_s32(v257, v257)), v241), 0x14uLL);
        v259 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v249, v238), vmulq_s32(v253, v253)), v241), 0x14uLL), v242);
        v260 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v250, v238), vmulq_s32(v255, v255)), v241), 0x14uLL), v242);
        *v244 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v244, v238), vmulq_s32(*v245, *v245)), v241), 0x14uLL), v242);
        *v249 = v259;
        *v250 = v260;
        *(v250 + 4 * v335) = vminq_u32(v258, v242);
        v261 = v244;
        v262 = v246;
        do
        {
          for (i = 0; i != 4; ++i)
          {
            v262->i16[i] = dword_277C3C3B4[v261->i32[i]];
          }

          ++v248;
          v262 = (v262 + v96);
          v261 = (v261 + v88);
        }

        while (v248 != 4);
        v264 = (v246 + 2 * v335);
        v265 = *v264;
        v266 = (v264 + 2 * v335);
        v267 = vmulq_s32(vmulq_s32(v257, v240), vsubw_u16(v243, *(v266 + 2 * v335)));
        v268 = vrshrq_n_u32(vmulq_s32(vmulq_s32(v255, v240), vsubw_u16(v243, *v266)), 0xCuLL);
        *v245++ = vrshrq_n_u32(vmulq_s32(vmulq_s32(v251, v240), vsubw_u16(v243, *v246)), 0xCuLL);
        *v252 = vrshrq_n_u32(vmulq_s32(vmulq_s32(v253, v240), vsubw_u16(v243, v265)), 0xCuLL);
        *v254 = v268;
        *v256 = vrshrq_n_u32(v267, 0xCuLL);
        ++v244;
        ++v246;
        v188 = __OFSUB__(v247, 4);
        v247 -= 4;
      }

      while (!((v247 < 0) ^ v188 | (v247 == 0)));
      ++v237;
      v188 = __OFSUB__(v193, 8);
      v193 -= 8;
    }

    while (!((v193 < 0) ^ v188 | (v193 == 0)));
  }

  else
  {
    v196 = 0;
    v197 = vdupq_n_s32(8 - v313);
    v198 = vdupq_n_s32(16 - 2 * v313);
    v199 = vdupq_n_s32(v195);
    v200 = (&unk_277C3C350 + 4 * v195 - 4);
    v201 = vld1q_dup_f32(v200);
    v202 = vdupq_n_s32(v194);
    v203.i64[0] = 0xFF000000FFLL;
    v203.i64[1] = 0xFF000000FFLL;
    v204.i64[0] = 0x10000000100;
    v204.i64[1] = 0x10000000100;
    v206 = v315;
    v205 = v316;
    do
    {
      v207 = (v190 + 4 * v347 * v196);
      v208 = (v192 + 4 * v347 * v196);
      v209 = (v191 + 2 * v347 * v196);
      v210 = v321 + 2;
      do
      {
        v211 = 0;
        v212 = (v207 + 4 * v335);
        v213 = (v212 + 4 * v335);
        v214 = *v208;
        v215 = (v208 + 4 * v335);
        v216 = *v215;
        v217 = (v215 + 4 * v335);
        v218 = *v217;
        v219 = (v217 + 4 * v335);
        v220 = *v219;
        v221 = vrshlq_u32(*v208, v197);
        v222 = vrshlq_u32(*v215, v197);
        v223 = vrshlq_u32(*v217, v197);
        v224 = vrshlq_u32(*v219, v197);
        v225 = vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*(v213 + 4 * v335), v198), v199), vmulq_s32(v224, v224)), v202), 0x14uLL);
        v226 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v212, v198), v199), vmulq_s32(v222, v222)), v202), 0x14uLL), v203);
        v227 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v213, v198), v199), vmulq_s32(v223, v223)), v202), 0x14uLL), v203);
        *v207 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v207, v198), v199), vmulq_s32(v221, v221)), v202), 0x14uLL), v203);
        *v212 = v226;
        *v213 = v227;
        *(v213 + 4 * v335) = vminq_u32(v225, v203);
        v228 = v207;
        v229 = v209;
        do
        {
          for (j = 0; j != 4; ++j)
          {
            v229->i16[j] = dword_277C3C3B4[v228->i32[j]];
          }

          ++v211;
          v229 = (v229 + v96);
          v228 = (v228 + v88);
        }

        while (v211 != 4);
        v231 = (v209 + 2 * v335);
        v232 = *v231;
        v233 = (v231 + 2 * v335);
        v234 = vmulq_s32(vmulq_s32(v220, v201), vsubw_u16(v204, *(v233 + 2 * v335)));
        v235 = vrshrq_n_u32(vmulq_s32(vmulq_s32(v218, v201), vsubw_u16(v204, *v233)), 0xCuLL);
        *v208++ = vrshrq_n_u32(vmulq_s32(vmulq_s32(v214, v201), vsubw_u16(v204, *v209)), 0xCuLL);
        *v215 = vrshrq_n_u32(vmulq_s32(vmulq_s32(v216, v201), vsubw_u16(v204, v232)), 0xCuLL);
        *v217 = v235;
        *v219 = vrshrq_n_u32(v234, 0xCuLL);
        ++v207;
        ++v209;
        v188 = __OFSUB__(v210, 4);
        v210 -= 4;
      }

      while (!((v210 < 0) ^ v188 | (v210 == 0)));
      ++v196;
      v188 = __OFSUB__(v193, 8);
      v193 -= 8;
    }

    while (!((v193 < 0) ^ v188 | (v193 == 0)));
  }

  v269 = 0;
  v270 = 4 * v189 + 32432;
  v271 = 4 * v319;
  if (v320 <= 1)
  {
    v272 = 1;
  }

  else
  {
    v272 = v320;
  }

  v273 = 2 * v189;
  v274 = &v18[v270];
  v275 = 2 * v319;
  v276 = &v18[v273 + 64808];
  v277 = v275 + v273 + 64804;
  v278 = v273 - v275 + 64804;
  v279 = v270 - 4 * v319;
  v280.i64[0] = 0x5000500050005;
  v280.i64[1] = 0x5000500050005;
  v281.i64[0] = 0x6000600060006;
  v281.i64[1] = 0x6000600060006;
  v282.i64[0] = 0x500000005;
  v282.i64[1] = 0x500000005;
  v283 = v270 + 4 * v319;
  do
  {
    v284 = (v205 + 2 * v269 * v206);
    v285 = (v317 + 4 * v269 * v314);
    if (v269)
    {
      v298 = v276;
      v299 = v274;
      v300 = v321 + 8;
      do
      {
        v301 = *v284++;
        v302 = v301;
        v303 = *(v298 - 4);
        v304 = *(v298 - 2);
        v305 = *v298++;
        v306 = vmulq_s16(vaddq_s16(v305, v303), v280);
        v307 = vmulq_s16(v304, v281);
        v308 = vmlaq_s32(vmlaq_s32(*(v299 - 4), vaddl_high_u16(v306, v307), vmovl_high_s16(v302)), vaddq_s32(vaddq_s32(*(v299 - 4), *(v299 - 8)), *v299), v282);
        *v285 = vrshrq_n_s32(vmlaq_s32(vmlaq_s32(*(v299 - 20), vaddq_s32(vaddq_s32(*(v299 - 20), *(v299 - 24)), v299[-1]), v282), vaddl_u16(*v306.i8, *v307.i8), vmovl_s16(*v302.i8)), 8uLL);
        v285[1] = vrshrq_n_s32(v308, 8uLL);
        v285 += 2;
        v300 -= 8;
        v299 += 2;
      }

      while (v300 > 8);
    }

    else
    {
      v286 = v278;
      v287 = v277;
      v288 = v283;
      v289 = v279;
      v290 = v321 + 8;
      do
      {
        v291 = *v284++;
        v292 = vmulq_s16(vaddq_s16(vaddq_s16(*&v18[v286 + 4], *&v18[v286]), vaddq_s16(*&v18[v287], *&v18[v287 + 4])), v280);
        v293 = vmulq_s16(vaddq_s16(*&v18[v287 + 2], *&v18[v286 + 2]), v281);
        v294 = vaddq_s32(*&v18[v288 - 20], *&v18[v289 - 20]);
        v295 = vaddq_s32(*&v18[v288 - 4], *&v18[v289 - 4]);
        v296 = vrshrq_n_s32(vmlaq_s32(vmlaq_s32(v294, vaddl_u16(*v292.i8, *v293.i8), vmovl_s16(*v291.i8)), vaddq_s32(vaddq_s32(vaddq_s32(*&v18[v289 - 16], *&v18[v289 - 24]), vaddq_s32(*&v18[v288 - 24], *&v18[v288 - 16])), v294), v282), 9uLL);
        v297 = vrshrq_n_s32(vmlaq_s32(vmlaq_s32(v295, vaddl_high_u16(v292, v293), vmovl_high_s16(v291)), vaddq_s32(vaddq_s32(vaddq_s32(*&v18[v289], *&v18[v289 - 8]), vaddq_s32(*&v18[v288 - 8], *&v18[v288])), v295), v282), 9uLL);
        v290 -= 8;
        v289 += 32;
        v288 += 32;
        *v285 = v296;
        v285[1] = v297;
        v285 += 2;
        v287 += 16;
        v286 += 16;
      }

      while (v290 > 8);
    }

    ++v269;
    v274 = (v274 + v271);
    v276 += v275;
    v279 += v271;
    v283 += v271;
    v277 += v275;
    v278 += v275;
  }

  while (v269 != v272);
  free(*(v18 - 1));
  return 0;
}

uint64_t sub_277B8C81C(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = &unk_277C3C250 + 16 * a8;
  v16 = *(v15 + 1);
  v17 = malloc_type_malloc(0x17BBFuLL, 0x5F484EBFuLL);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v18 - 1) = v17;
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v297 = v15;
  v298 = v16;
  v299 = a7;
  v300 = a6;
  v302 = a5;
  v19 = 0;
  v295 = a2 + 9;
  v296 = (a2 + 9) & 0xFFFFFFFC;
  v314 = a4;
  v304 = a2;
  v20 = a2 + 6;
  v21 = 2 * (v296 + 16);
  v313 = a3 + 6;
  v22 = (v296 + 16);
  v23 = 4 * (v296 + 16);
  v305 = a1 - 6 * a4 - 6;
  v306 = v18 + 81000;
  v24 = 8 * a4;
  v301 = a1;
  v25 = v24 - 6 * a4 + a1 - 6;
  v26 = 2 * a4;
  v27 = 4 * v21;
  v28 = 4 * v23;
  v29 = 8 * v22 + v27;
  v30 = v27 + 4 * v22;
  v31 = 2 * v21 + 81000;
  v32 = v31 + 6 * v22;
  v307 = v23;
  v33 = 2 * v23;
  v34 = v31 + 4 * v22;
  v35 = 6 * a4;
  v36 = 4 * a4;
  v303 = v296 + 16;
  v37 = v31 + 2 * v22;
  v38 = v27 + 12 * v22;
  do
  {
    v311 = v20;
    v312 = v19;
    v39 = (v305 + 16 * v19 + 2 * v314);
    v40 = *v39;
    v41 = (v39 + 2 * v314);
    v42 = *v41;
    v43 = *(v41 + 2 * v314);
    v44 = vaddq_s16(v43, *v41);
    v45 = vaddq_s16(v44, v40);
    v46 = vmull_s16(*v43.i8, *v43.i8);
    v47 = vmlal_s16(v46, *v42.i8, *v42.i8);
    v48 = vmlal_s16(v47, *v40.i8, *v40.i8);
    v49 = vmull_high_s16(v43, v43);
    v50 = vmlal_high_s16(v49, v42, v42);
    v51 = 10;
    v52 = v31;
    v53 = vmlal_high_s16(v50, v40, v40);
    v54 = v37;
    v55 = v34;
    v56 = v32;
    v308 = v38;
    v309 = v27;
    v57 = v27;
    v58 = v30;
    v59 = v29;
    v310 = v25;
    v60 = v25;
    do
    {
      v61 = &v18[v57];
      v62 = *v60;
      v63 = *(v60 + v26);
      v64 = *(v60 + v36);
      v65 = vaddq_s16(v63, *v60);
      v66 = vaddq_s16(v65, v43);
      v43 = *(v60 + v35);
      v67 = vaddq_s16(*v60, v44);
      v44 = vaddq_s16(v43, v64);
      *&v18[v52] = v45;
      *&v18[v54] = v67;
      *&v18[v55] = v66;
      v45 = vaddq_s16(v44, v63);
      *&v18[v56] = vaddq_s16(v64, v65);
      v68 = vmlal_s16(vmull_s16(*v63.i8, *v63.i8), *v62.i8, *v62.i8);
      v69 = vaddq_s32(v68, v46);
      v46 = vmull_s16(*v43.i8, *v43.i8);
      *v61 = v48;
      v70 = &v18[v58];
      *v70 = vmlal_s16(v47, *v62.i8, *v62.i8);
      v47 = vmlal_s16(v46, *v64.i8, *v64.i8);
      v71 = &v18[v59];
      *v71 = v69;
      v72 = &v18[v38];
      *v72 = vmlal_s16(v68, *v64.i8, *v64.i8);
      v73 = vmlal_high_s16(v50, v62, v62);
      v74 = vmlal_high_s16(vmull_high_s16(v63, v63), v62, v62);
      v75 = vaddq_s32(v74, v49);
      v49 = vmull_high_s16(v43, v43);
      v61[1] = v53;
      v70[1] = v73;
      v50 = vmlal_high_s16(v49, v64, v64);
      v60 = (v60 + v24);
      v38 += v28;
      v59 += v28;
      v58 += v28;
      v57 += v28;
      v56 += v33;
      v55 += v33;
      v54 += v33;
      v52 += v33;
      v51 -= 4;
      v71[1] = v75;
      v72[1] = vmlal_high_s16(v74, v64, v64);
      v48 = vmlal_s16(v47, *v63.i8, *v63.i8);
      v53 = vmlal_high_s16(v50, v63, v63);
    }

    while (a3 + v51 > 4);
    v19 = v312 + 1;
    v25 = v310 + 16;
    v38 = v308 + 32;
    v29 += 32;
    v30 += 32;
    v27 = v309 + 32;
    v32 += 16;
    v34 += 16;
    v37 += 16;
    v31 += 16;
    v20 = v311 - 8;
  }

  while (v311 > 8);
  v76 = 4 * (v304 + 10);
  v77 = v18 + 81000;
  bzero(v306, 2 * (v304 + 10));
  bzero(v18, v76);
  bzero(&v306[2 * v22], 2 * (v304 + 10));
  bzero(&v18[4 * v22], v76);
  if (a3 >= -5)
  {
    v78 = (a3 + 8) - 2;
    v79 = v304 + 8 * (v295 >> 2) + 40;
    do
    {
      v80 = &v306[2 * v79];
      *(v80 + 2) = 0;
      *v80 = 0;
      v81 = &v18[4 * v79];
      *(v81 + 2) = 0;
      *v81 = 0;
      v79 += v303;
      --v78;
    }

    while (v78);
  }

  v82 = 0;
  v83 = 0;
  v84 = 4 * v22;
  v85 = 2 * v22;
  v86 = 4 * (v296 + 16);
  do
  {
    v87 = 12 * v22 + 16 + 4 * v82;
    v88 = 8 * v22 + 8 + 4 * v82;
    v89 = 4 * v22 + 8 + 4 * v82;
    v90 = 4 * v82 + 8;
    v91 = 6 * v22 + 81004 + 2 * v82;
    v92 = 4 * v22 + 81004 + 2 * v82;
    v93 = 2 * v22 + 81004 + 2 * v82;
    v94 = 2 * v82 + 81004;
    v95 = &v77[2 * v86 * v83];
    v96 = &v18[4 * v86 * v83];
    v97 = *v95;
    v98 = (v95 + 2 * v22);
    v99 = *v98;
    v100 = (v98 + 2 * v22);
    v101 = *v100;
    v102 = vtrn2_s16(v97, v99);
    v97.i16[3] = v99.i16[2];
    v103 = vtrn2_s16(*v100, *(v100 + 2 * v22));
    v101.i16[3] = WORD2(*(v100 + 2 * v22));
    v104 = vzip2_s32(v97, v101);
    v105 = vzip1_s32(v102, v103);
    v106 = vzip2_s32(v102, v103);
    v107 = *v96;
    v108 = (v96 + 4 * v22);
    v109 = *v108;
    v110 = (v108 + 4 * v22);
    v111 = *v110;
    v112 = vtrn2q_s32(v107, v109);
    v107.i32[3] = v109.i32[2];
    v113 = vtrn2q_s32(*v110, *(v110 + 4 * v22));
    v111.i32[3] = *(&v110->i64[1] + v84);
    v114 = vzip2q_s64(v112, v113);
    v112.i64[1] = v113.i64[0];
    v115 = vzip2q_s64(v107, v111);
    v116 = vadd_s16(v106, v104);
    v117 = vadd_s16(v116, v105);
    v118 = vaddq_s32(v114, v115);
    v119 = vaddq_s32(v118, v112);
    v120 = v304 + 10;
    do
    {
      v121 = &v18[v90];
      v122 = *&v18[v94 + 4];
      v123 = *&v18[v93 + 4];
      v124 = *&v18[v92 + 4];
      v125 = *&v18[v91 + 4];
      v126 = vtrn1_s16(v122, v123);
      v127 = vtrn2_s16(v122, v123);
      v128 = vtrn1_s16(v124, v125);
      v129 = vtrn2_s16(v124, v125);
      v130 = vzip1_s32(v126, v128);
      v131 = vzip2_s32(v126, v128);
      v132 = vzip1_s32(v127, v129);
      v133 = vadd_s16(v130, v132);
      v134 = vadd_s16(v133, v106);
      v106 = vzip2_s32(v127, v129);
      v135 = *&v18[v90 + 8];
      v136 = &v18[v89];
      v137 = *&v18[v89 + 8];
      v138 = &v18[v88];
      v139 = *&v18[v88 + 8];
      v140 = &v18[v87];
      v141 = *&v18[v87];
      v142 = vtrn1q_s32(v135, v137);
      v143 = vtrn2q_s32(v135, v137);
      v144 = vtrn1q_s32(v139, v141);
      v145 = vtrn2q_s32(v139, v141);
      v146 = vzip2q_s64(v142, v144);
      v142.i64[1] = v144.i64[0];
      v147 = vzip2q_s64(v143, v145);
      v143.i64[1] = v145.i64[0];
      v148 = vadd_s16(v116, v130);
      v149 = vadd_s16(v133, v131);
      v116 = vadd_s16(v131, v106);
      v150 = vtrn1_s16(v117, v148);
      v151 = vtrn2_s16(v117, v148);
      v117 = vadd_s16(v116, v132);
      v152 = vtrn1_s16(v134, v149);
      v153 = vtrn2_s16(v134, v149);
      *&v18[v94] = vzip1_s32(v150, v152);
      *&v18[v93] = vzip1_s32(v151, v153);
      *&v18[v92] = vzip2_s32(v150, v152);
      *&v18[v91] = vzip2_s32(v151, v153);
      v154 = vaddq_s32(v118, v142);
      v155 = vaddq_s32(v142, v143);
      v156 = vaddq_s32(v155, v114);
      v157 = vaddq_s32(v155, v146);
      v118 = vaddq_s32(v146, v147);
      v158 = vtrn1q_s32(v119, v154);
      v159 = vtrn2q_s32(v119, v154);
      v160 = vaddq_s32(v118, v143);
      v161 = vtrn1q_s32(v156, v157);
      v162 = vtrn2q_s32(v156, v157);
      v163 = vzip2q_s64(v158, v161);
      v158.i64[1] = v161.i64[0];
      v164 = vzip2q_s64(v159, v162);
      v87 += 16;
      v88 += 16;
      v159.i64[1] = v162.i64[0];
      v89 += 16;
      v90 += 16;
      v91 += 8;
      v92 += 8;
      *v121 = v158;
      *v136 = v159;
      v93 += 8;
      v94 += 8;
      v120 -= 4;
      *v138 = v163;
      *(v140 - 8) = v164;
      v119 = v160;
      v114 = v147;
    }

    while (v120 > 4);
    ++v83;
    v86 = 4 * (v296 + 16);
    v82 += v307;
    v165 = __OFSUB__(v313, 4);
    v313 -= 4;
    v77 = v18 + 81000;
  }

  while (!((v313 < 0) ^ v165 | (v313 == 0)));
  v166 = 3 * v303;
  v167 = &v18[4 * ((3 * v303) | 3) - 4 + 4 * (-16 - v296)];
  v168 = &v18[2 * ((3 * v303) | 3) + 64798 + 2 * (-16 - v296)];
  v169 = &v306[2 * ((3 * v303) | 3) - 2 + 2 * (-16 - v296)];
  v170 = &v18[4 * ((3 * v303) | 3) + 32396 + 4 * (-16 - v296)];
  v171 = a3 + 2;
  v172 = *(v297 + 3);
  v173 = ((2 * v298) | 1) * ((2 * v298) | 1);
  if (v299 < 9)
  {
    v226 = 0;
    v227 = vdupq_n_s32(v173);
    v118.i32[0] = dword_277C3C350[v173 - 1];
    v228 = vdupq_n_s32(v172);
    v229.i64[0] = 0xFF000000FFLL;
    v229.i64[1] = 0xFF000000FFLL;
    v230.i64[0] = 0x100010001000100;
    v230.i64[1] = 0x100010001000100;
    v182 = v301;
    v181 = v302;
    do
    {
      v231 = (v168 + 2 * v307 * v226);
      v232 = (v167 + 4 * v307 * v226);
      v233 = (v169 + 2 * v307 * v226);
      v234 = (v170 + 4 * v307 * v226);
      v235 = v304 + 2;
      do
      {
        v236 = 0;
        v237 = (v232 + 4 * v22);
        v238 = (v237 + 4 * v22);
        v239 = (v232 + 4 * v22 + 16);
        v240 = (v233 + 2 * v22);
        v241 = *v240;
        v242 = (v240 + 2 * v22);
        v243 = *(v242 + 2 * v22);
        v244 = *v242;
        v245 = (v239 + 4 * v22);
        v246 = *v233->i8;
        v247 = vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*(v245 + 4 * v22), v227), vmull_high_u16(v243, v243)), v228), 0x14uLL);
        v248 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v237, v227), vmull_u16(*v241.i8, *v241.i8)), v228), 0x14uLL), v229);
        v249 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v238, v227), vmull_u16(*v244.i8, *v244.i8)), v228), 0x14uLL), v229);
        v250 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*(v238 + 4 * v22), v227), vmull_u16(*v243.i8, *v243.i8)), v228), 0x14uLL), v229);
        v251 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(v232[1], v227), vmull_high_u16(v246, v246)), v228), 0x14uLL), v229);
        v252 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v239, v227), vmull_high_u16(v241, v241)), v228), 0x14uLL), v229);
        v253 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v245, v227), vmull_high_u16(v244, v244)), v228), 0x14uLL), v229);
        *v232 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v232, v227), vmull_u16(*v233, *v233)), v228), 0x14uLL), v229);
        *v237 = v248;
        *v238 = v249;
        *(v238 + 4 * v22) = v250;
        v232[1] = v251;
        *v239 = v252;
        *v245 = v253;
        *(v245 + 4 * v22) = vminq_u32(v247, v229);
        v254 = v232;
        v255 = v231;
        do
        {
          for (i = 0; i != 8; ++i)
          {
            v255->i16[i] = dword_277C3C3B4[v254->i32[i]];
          }

          ++v236;
          v255 = (v255 + v85);
          v254 = (v254 + v84);
        }

        while (v236 != 4);
        v257 = (v231 + 2 * v22);
        v258 = *v257;
        v259 = (v257 + 2 * v22);
        v260 = vsubq_s16(v230, *v231);
        v261 = vsubq_s16(v230, v258);
        v262 = vsubq_s16(v230, *v259);
        v263 = vsubq_s16(v230, *(v259 + 2 * v22));
        *v234 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v246.i8, *v118.i8, 0), vmovl_u16(*v260.i8)), 0xCuLL);
        v264 = (v234 + 4 * v22);
        *v264 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v241.i8, *v118.i8, 0), vmovl_u16(*v261.i8)), 0xCuLL);
        v265 = (v264 + 4 * v22);
        *v265 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v244.i8, *v118.i8, 0), vmovl_u16(*v262.i8)), 0xCuLL);
        *(v265 + 4 * v22) = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v243.i8, *v118.i8, 0), vmovl_u16(*v263.i8)), 0xCuLL);
        v234[1] = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v246, *v118.i8, 0), vmovl_high_u16(v260)), 0xCuLL);
        v266 = v234 + 1;
        v267 = (v266 + 4 * v22);
        *v267 = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v241, *v118.i8, 0), vmovl_high_u16(v261)), 0xCuLL);
        v268 = (v267 + 4 * v22);
        *v268 = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v244, *v118.i8, 0), vmovl_high_u16(v262)), 0xCuLL);
        *(v268 + 4 * v22) = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v243, *v118.i8, 0), vmovl_high_u16(v263)), 0xCuLL);
        v234 = v266 + 1;
        v232 += 2;
        v233 += 2;
        ++v231;
        v165 = __OFSUB__(v235, 8);
        v235 -= 8;
      }

      while (!((v235 < 0) ^ v165 | (v235 == 0)));
      ++v226;
      v165 = __OFSUB__(v171, 4);
      v171 -= 4;
    }

    while (!((v171 < 0) ^ v165 | (v171 == 0)));
  }

  else
  {
    v174 = 0;
    v175 = vdupq_n_s16(8 - v299);
    v176 = vdupq_n_s32(16 - 2 * v299);
    v177 = vdupq_n_s32(v173);
    v119.i32[0] = dword_277C3C350[v173 - 1];
    v178 = vdupq_n_s32(v172);
    v179.i64[0] = 0xFF000000FFLL;
    v179.i64[1] = 0xFF000000FFLL;
    v180.i64[0] = 0x100010001000100;
    v180.i64[1] = 0x100010001000100;
    v182 = v301;
    v181 = v302;
    do
    {
      v183 = (v167 + 4 * v307 * v174);
      v184 = (v169 + 2 * v307 * v174);
      v185 = (v170 + 4 * v307 * v174);
      v186 = (v168 + 2 * v307 * v174);
      v187 = v304 + 2;
      do
      {
        v188 = 0;
        v189 = (v183 + 4 * v22);
        v190 = (v189 + 4 * v22);
        v191 = (v183 + 4 * v22 + 16);
        v192 = (v184 + 2 * v22);
        v193 = *v192;
        v194 = (v192 + 2 * v22);
        v195 = *(v194 + 2 * v22);
        v196 = *v194;
        v197 = (v191 + 4 * v22);
        v198 = *v184;
        v199 = vrshlq_u16(*v184, v175);
        v200 = vrshlq_u16(v193, v175);
        v201 = vrshlq_u16(v196, v175);
        v202 = vrshlq_u16(v195, v175);
        v203 = vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*(v197 + 4 * v22), v176), v177), vmull_high_u16(v202, v202)), v178), 0x14uLL);
        v204 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v189, v176), v177), vmull_u16(*v200.i8, *v200.i8)), v178), 0x14uLL), v179);
        v205 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v190, v176), v177), vmull_u16(*v201.i8, *v201.i8)), v178), 0x14uLL), v179);
        v206 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*(v190 + 4 * v22), v176), v177), vmull_u16(*v202.i8, *v202.i8)), v178), 0x14uLL), v179);
        v207 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(v183[1], v176), v177), vmull_high_u16(v199, v199)), v178), 0x14uLL), v179);
        v208 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v191, v176), v177), vmull_high_u16(v200, v200)), v178), 0x14uLL), v179);
        v209 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v197, v176), v177), vmull_high_u16(v201, v201)), v178), 0x14uLL), v179);
        *v183 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v183, v176), v177), vmull_u16(*v199.i8, *v199.i8)), v178), 0x14uLL), v179);
        *v189 = v204;
        *v190 = v205;
        *(v190 + 4 * v22) = v206;
        v183[1] = v207;
        *v191 = v208;
        *v197 = v209;
        *(v197 + 4 * v22) = vminq_u32(v203, v179);
        v210 = v183;
        v211 = v186;
        do
        {
          for (j = 0; j != 8; ++j)
          {
            v211->i16[j] = dword_277C3C3B4[v210->i32[j]];
          }

          ++v188;
          v211 = (v211 + v85);
          v210 = (v210 + v84);
        }

        while (v188 != 4);
        v213 = (v186 + 2 * v22);
        v214 = *v213;
        v215 = (v213 + 2 * v22);
        v216 = vsubq_s16(v180, *v186);
        v217 = vsubq_s16(v180, v214);
        v218 = vsubq_s16(v180, *v215);
        v219 = vsubq_s16(v180, *(v215 + 2 * v22));
        *v185 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v198.i8, *v119.i8, 0), vmovl_u16(*v216.i8)), 0xCuLL);
        v220 = (v185 + 4 * v22);
        *v220 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v193.i8, *v119.i8, 0), vmovl_u16(*v217.i8)), 0xCuLL);
        v221 = (v220 + 4 * v22);
        *v221 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v196.i8, *v119.i8, 0), vmovl_u16(*v218.i8)), 0xCuLL);
        *(v221 + 4 * v22) = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v195.i8, *v119.i8, 0), vmovl_u16(*v219.i8)), 0xCuLL);
        v185[1] = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v198, *v119.i8, 0), vmovl_high_u16(v216)), 0xCuLL);
        v222 = v185 + 1;
        v223 = (v222 + 4 * v22);
        *v223 = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v193, *v119.i8, 0), vmovl_high_u16(v217)), 0xCuLL);
        v224 = (v223 + 4 * v22);
        *v224 = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v196, *v119.i8, 0), vmovl_high_u16(v218)), 0xCuLL);
        *(v224 + 4 * v22) = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v195, *v119.i8, 0), vmovl_high_u16(v219)), 0xCuLL);
        v185 = v222 + 1;
        v183 += 2;
        ++v184;
        ++v186;
        v165 = __OFSUB__(v187, 8);
        v187 -= 8;
      }

      while (!((v187 < 0) ^ v165 | (v187 == 0)));
      ++v174;
      v165 = __OFSUB__(v171, 4);
      v171 -= 4;
    }

    while (!((v171 < 0) ^ v165 | (v171 == 0)));
  }

  v269 = 0;
  v270 = 4 * v166 + 32432;
  if (a3 <= 1)
  {
    v271 = 1;
  }

  else
  {
    v271 = a3;
  }

  v272 = v270 - 4 * v22;
  v273 = 2 * v166;
  v274 = v273 + 64804;
  v275 = v273 - 2 * v22 + 64806;
  v276 = v270 + 4 * v22;
  v277.i64[0] = 0x3000300030003;
  v277.i64[1] = 0x3000300030003;
  v278 = v274 + 2 * v22;
  do
  {
    v279 = (v182 + 2 * v269 * v314);
    v280 = (v181 + 4 * v269 * v300);
    v281 = v275;
    v282 = v274;
    v283 = v270;
    v284 = v278;
    v285 = v276;
    v286 = v272;
    v287 = v304 + 8;
    do
    {
      v288 = *v279++;
      v289 = vshlq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(*&v18[v282], *&v18[v281]), vaddq_s16(*&v18[v282 + 2], *&v18[v282 + 4])), *&v18[v284 + 2]), 2uLL);
      v290 = vmulq_s16(vaddq_s16(vaddq_s16(*&v18[v281 + 2], *&v18[v281 - 2]), vaddq_s16(*&v18[v284], *&v18[v284 + 4])), v277);
      v291 = vaddq_s32(vaddq_s32(*&v18[v286 - 16], *&v18[v286 - 24]), vaddq_s32(*&v18[v285 - 24], *&v18[v285 - 16]));
      v292 = vaddq_s32(vaddq_s32(*&v18[v286], *&v18[v286 - 8]), vaddq_s32(*&v18[v285 - 8], *&v18[v285]));
      v293 = vaddq_s32(vmlaq_s32(vnegq_s32(v292), vaddl_high_u16(v290, v289), vmovl_high_s16(v288)), vshlq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(*&v18[v283 - 8], *&v18[v286 - 4]), vaddq_s32(*&v18[v283 - 4], *&v18[v283])), *&v18[v285 - 4]), v292), 2uLL));
      v294 = vrshrq_n_s32(vaddq_s32(vmlaq_s32(vnegq_s32(v291), vaddl_u16(*v290.i8, *v289.i8), vmovl_s16(*v288.i8)), vshlq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(*&v18[v283 - 24], *&v18[v286 - 20]), vaddq_s32(*&v18[v283 - 20], *&v18[v283 - 16])), *&v18[v285 - 20]), v291), 2uLL)), 9uLL);
      v287 -= 8;
      v286 += 32;
      v285 += 32;
      v284 += 16;
      v283 += 32;
      *v280 = v294;
      v280[1] = vrshrq_n_s32(v293, 9uLL);
      v280 += 2;
      v282 += 16;
      v281 += 16;
    }

    while (v287 > 8);
    ++v269;
    v272 += v84;
    v276 += v84;
    v278 += v85;
    v270 += v84;
    v274 += v85;
    v275 += v85;
  }

  while (v269 != v271);
  free(*(v18 - 1));
  return 0;
}

uint64_t sub_277B8D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v11 = MEMORY[0x28223BE20]();
  v119 = v14;
  v120 = v15;
  v17 = v16;
  v18 = v12;
  v20 = v19;
  v21 = a11;
  v22 = a9;
  v141 = *MEMORY[0x277D85DE8];
  v23 = v19 + 6;
  v24 = 3 * (v19 + 6);
  v25 = v139;
  v26 = &v139[v24 + 3];
  v27 = v12 + 6;
  v122 = v28;
  v123 = (&unk_277C3C250 + 16 * v28);
  v29 = 3 * v13;
  v121 = v19 + 6;
  if (a11)
  {
    v116 = v12;
    v118 = v17;
    v30 = 2 * v11;
    v112 = v29;
    v31 = 2 * v11 - 2 * v29;
    v111 = v13;
    v114 = v23;
    v32 = 2 * v13;
    v33 = 4 * v13;
    v34 = 6 * v13 - 2 * v29 + 2 * v11 - 6;
    v35 = v31 + 4 * v13 - 6;
    v36 = 2 * v13 - 2 * v29;
    v37 = v36 + 2 * v11 - 6;
    v38 = &v139[3 * v23];
    v39 = &v139[2 * v23];
    v40 = &v139[v23];
    v117 = v20;
    v125 = v20 + 14;
    v126 = 4 * v20 + 24;
    v41 = v140;
    v42 = &v140[v24];
    v113 = v30;
    v43 = v30 + 10;
    v44 = &v140[2 * v23];
    v45 = v43 - 2 * v29;
    v124 = 8 * v13;
    v46 = 4 * v23;
    v47 = (v43 + v36);
    v48 = v31 + 10;
    v49 = (v45 + 2 * v32);
    v50 = v126;
    v127 = v33;
    v51 = v33;
    v115 = v27;
    LODWORD(v52) = v27;
    v53 = &v140[v23];
    do
    {
      v54 = 0;
      v129 = v52;
      v130 = v51;
      v131 = v50;
      v133 = v48;
      v134 = v47;
      v55 = v48;
      v137 = v42;
      v138 = v41;
      v56 = v41;
      v57 = v47;
      v128 = v53;
      v58 = v53;
      v132 = v49;
      v59 = v49;
      v135 = v44;
      v136 = v43;
      v60 = v43;
      v61 = v125;
      do
      {
        v62 = v61;
        v63 = v42;
        v64 = v60;
        v65 = v44;
        v66 = v59;
        v67 = v58;
        v68 = v57;
        v69 = v56;
        v70 = *(v37 + v54 * 2);
        v71 = *(v35 + v54 * 2);
        v72 = *(v34 + v54 * 2);
        *&v25[v54] = *(v31 + v54 * 2 - 6);
        *&v40[v54] = v70;
        *&v39[v54] = v71;
        *&v38[v54] = v72;
        v73 = v55;
        v54 += 8;
        v61 -= 8;
        v42 += 8;
        v60 += 8;
        v44 += 8;
        v59 += 8;
        v58 += 8;
        v57 += 8;
        v56 += 8;
        v55 += 8;
      }

      while (v61 > 15);
      if (v61 > 8)
      {
        v74 = 0;
        do
        {
          v75 = *v73++;
          *v69++ = v75;
          v76 = *v68++;
          *v67++ = v76;
          v77 = *v66++;
          *v65++ = v77;
          v78 = *v64++;
          *v63++ = v78;
          ++v74;
        }

        while (v74 < (v62 - 16));
      }

      v52 = (v129 - 4);
      v51 = v130 + v127;
      v50 = v131 + v126;
      v34 += v124;
      v35 += v124;
      v37 += v124;
      v31 += v124;
      v25 = (v25 + v46 * 2);
      v38 = (v38 + v46 * 2);
      v39 = (v39 + v46 * 2);
      v40 = (v40 + v46 * 2);
      v42 = &v137[v46];
      v43 = v136 + v124;
      v44 = &v135[v46];
      v49 = &v132[v124 / 2];
      v53 = &v128[v46];
      v47 = &v134[v124 / 2];
      v41 = &v138[v46];
      v48 = v133 + v124;
    }

    while (v129 >= 8);
    v79 = 2 * v114;
    if (v129 >= 5)
    {
      v80 = 0;
      v81 = (v113 - 2 * v112 + 2 * v130 - 6);
      v82 = &v139[v131];
      do
      {
        memcpy(v82, v81, v79);
        ++v80;
        v81 += 2 * v111;
        v82 = (v82 + v79);
      }

      while (v80 < v52);
    }

    v20 = v117;
    v22 = a9;
    v18 = v116;
    v83 = v116 + 10;
    if (v116 + 10 <= v115)
    {
      v83 = v115;
    }

    v84 = v83 - v115 + 1;
    v85 = &v139[v114 * v115];
    v17 = v118;
    v21 = a11;
    do
    {
      bzero(v85, 2 * v117 + 16);
      v85 = (v85 + v79);
      --v84;
    }

    while (v84);
  }

  else
  {
    sub_277B8B7D0(v11 - v29 - 3, v13, v139, v23, v23, v27);
  }

  v87 = *v123;
  if (*v123 >= 1 && sub_277B8BA38(v26, v20, v18, v121, v22, v20, a10, v122))
  {
    return 0xFFFFFFFFLL;
  }

  v88 = v18;
  v89 = v123[1];
  if (v89 >= 1)
  {
    if (sub_277B8C81C(v26, v20, v88, v121, v22 + 646352, v20, a10, v122))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v87)
  {
    v86.i32[0] = *v119;
    if (v89)
    {
      v91 = 128 - (*v119 + v119[1]);
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 128 - v119[1];
    v86 = 0;
  }

  v92 = 0;
  v93 = vdupq_lane_s32(v86, 0);
  v94 = vdupq_n_s32(v91);
  v95 = vdupq_n_s16(~(-1 << a10));
  if (v88 <= 1)
  {
    v96 = 1;
  }

  else
  {
    v96 = v88;
  }

  v97 = (v22 + 646368);
  v98 = 4 * v20;
  do
  {
    v99 = 0;
    v100 = (v17 + v92 * v120);
    v101 = (2 * v17 + 2 * v92 * v120);
    v102 = v20 + 8;
    v103 = v22;
    v104 = v97;
    do
    {
      v105 = *&v26[v99];
      v106 = vshll_n_s16(*v105.i8, 4uLL);
      v107 = vshll_high_n_s16(v105, 4uLL);
      v108 = vshll_n_s16(*v105.i8, 0xBuLL);
      v109 = vshll_high_n_s16(v105, 0xBuLL);
      if (v87 >= 1)
      {
        v108 = vmlaq_s32(v108, vsubq_s32(*v103, v106), v93);
        v109 = vmlaq_s32(v109, vsubq_s32(v103[1], v107), v93);
      }

      if (v89 >= 1)
      {
        v108 = vmlaq_s32(v108, vsubq_s32(v104[-1], v106), v94);
        v109 = vmlaq_s32(v109, vsubq_s32(*v104, v107), v94);
      }

      v110 = vmaxq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v108, 0xBuLL), v109, 0xBuLL), 0);
      if (v21)
      {
        *v101++ = vminq_u16(v110, v95);
      }

      else
      {
        *v100++ = vqmovn_u16(v110);
      }

      v104 += 2;
      v103 += 2;
      v99 += 8;
      v102 -= 8;
    }

    while (v102 > 8);
    ++v92;
    v97 = (v97 + v98);
    v22 += v98;
    v26 += v121;
  }

  while (v92 != v96);
  return 0;
}

uint16x4_t *sub_277B8DC48(uint16x4_t *result, uint64_t a2, int16x4_t *a3, int16x4_t *a4)
{
  v4 = vpadd_s16(*a3, *a4);
  v5 = vpadd_s16(v4, v4);
  v6 = vrshr_n_u16(vpadd_s16(v5, v5), 3uLL);
  v7 = 4;
  do
  {
    *result = v6;
    result = (result + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8DC7C(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(*a4, *a3));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 4uLL), 0);
  v7 = 8;
  do
  {
    *result = v6;
    result = (result + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8DCB8(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(*a4, a4[1])));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 5uLL), 0);
  v7 = result + 1;
  v8 = 16;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8DD00(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), vaddq_s16(vaddq_s16(*a4, a4[1]), a4[2])), a4[3]));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 6uLL), 0);
  v7 = result + 2;
  v8 = 32;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8DD64(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), vaddq_s16(vaddq_s16(a3[4], a3[5]), a3[6])), vaddq_s16(vaddq_s16(vaddq_s16(a3[7], *a4), a4[1]), a4[2])), vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a4[3], a4[4]), a4[5]), a4[6]), a4[7])));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 7uLL), 0);
  v7 = result + 4;
  v8 = 64;
  do
  {
    v7[-4] = v6;
    v7[-3] = v6;
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7[2] = v6;
    v7[3] = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

void *sub_277B8DE00(void *result, uint64_t a2, unint64_t *a3, int16x8_t *a4, int16x8_t a5)
{
  a5.i64[0] = *a3;
  *a5.i8 = vdup_n_s16((43691 * ((vaddlvq_u16(vaddq_s16(*a4, a5)) + 6) >> 2)) >> 17);
  v5 = 8;
  do
  {
    *result = a5.i64[0];
    result = (result + 2 * a2);
    --v5;
  }

  while (v5);
  return result;
}

void *sub_277B8DE48(void *result, uint64_t a2, unint64_t *a3, int16x8_t *a4, int16x8_t a5)
{
  a5.i64[0] = *a3;
  *a5.i8 = vdup_n_s16((26215 * ((vaddlvq_u16(vaddq_s16(a5, vaddq_s16(*a4, a4[1]))) + 10) >> 2)) >> 17);
  v5 = 16;
  do
  {
    *result = a5.i64[0];
    result = (result + 2 * a2);
    --v5;
  }

  while (v5);
  return result;
}

int16x8_t *sub_277B8DE94(int16x8_t *result, uint64_t a2, int16x8_t *a3, unint64_t *a4, double a5, int16x8_t a6)
{
  a6.i64[0] = *a4;
  v6 = vdupq_n_s16((43691 * ((vaddlvq_u16(vaddq_s16(a6, *a3)) + 6) >> 2)) >> 17);
  v7 = 4;
  do
  {
    *result = v6;
    result = (result + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8DEDC(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((43691 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(*a4, *a3), a4[1])) + 12) >> 3)) >> 17);
  v5 = 16;
  do
  {
    *result = v4;
    result = (result + 2 * a2);
    --v5;
  }

  while (v5);
  return result;
}

int16x8_t *sub_277B8DF28(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((26215 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(*a4, *a3), vaddq_s16(a4[1], a4[2])), a4[3])) + 20) >> 3)) >> 17);
  v5 = 32;
  do
  {
    *result = v4;
    result = (result + 2 * a2);
    --v5;
  }

  while (v5);
  return result;
}

int16x8_t *sub_277B8DF80(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t *a4)
{
  v4 = a3[1];
  v5 = vaddq_s16(v4, *a3);
  v4.i64[0] = *a4;
  v6 = vdupq_n_s16((26215 * ((vaddlvq_u16(vaddq_s16(v5, v4)) + 10) >> 2)) >> 17);
  v7 = result + 1;
  v8 = 4;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8DFD0(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((43691 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(a3[1], *a3), *a4)) + 12) >> 3)) >> 17);
  v5 = result + 1;
  v6 = 8;
  do
  {
    v5[-1] = v4;
    *v5 = v4;
    v5 = (v5 + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E020(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((43691 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(*a4, a4[1])), vaddq_s16(a4[2], a4[3]))) + 24) >> 4)) >> 17);
  v5 = result + 1;
  v6 = 32;
  do
  {
    v5[-1] = v4;
    *v5 = v4;
    v5 = (v5 + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E080(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((26215 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(*a4, a4[1])), vaddq_s16(vaddq_s16(a4[2], a4[3]), a4[4])), vaddq_s16(vaddq_s16(a4[5], a4[6]), a4[7]))) + 40) >> 4)) >> 17);
  v5 = result + 1;
  v6 = 64;
  do
  {
    v5[-1] = v4;
    *v5 = v4;
    v5 = (v5 + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E0F8(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((26215 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), *a4)) + 20) >> 3)) >> 17);
  v5 = result + 2;
  v6 = 8;
  do
  {
    v5[-2] = v4;
    v5[-1] = v4;
    *v5 = v4;
    v5[1] = v4;
    v5 = (v5 + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E158(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((43691 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), vaddq_s16(*a4, a4[1]))) + 24) >> 4)) >> 17);
  v5 = result + 2;
  v6 = 16;
  do
  {
    v5[-2] = v4;
    v5[-1] = v4;
    *v5 = v4;
    v5[1] = v4;
    v5 = (v5 + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E1BC(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((43691 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), vaddq_s16(vaddq_s16(*a4, a4[1]), a4[2])), vaddq_s16(vaddq_s16(vaddq_s16(a4[3], a4[4]), a4[5]), a4[6])), a4[7])) + 48) >> 5)) >> 17);
  v5 = result + 2;
  v6 = 64;
  do
  {
    v5[-2] = v4;
    v5[-1] = v4;
    *v5 = v4;
    v5[1] = v4;
    v5 = (v5 + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E244(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((26215 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), vaddq_s16(vaddq_s16(a3[4], a3[5]), a3[6])), vaddq_s16(vaddq_s16(a3[7], *a4), a4[1]))) + 40) >> 4)) >> 17);
  v5 = result + 4;
  v6 = 16;
  do
  {
    v5[-4] = v4;
    v5[-3] = v4;
    v5[-2] = v4;
    v5[-1] = v4;
    *v5 = v4;
    v5[1] = v4;
    v5[2] = v4;
    v5[3] = v4;
    v5 = (v5 + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E2C8(int16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  v4 = vdupq_n_s16((43691 * ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), vaddq_s16(vaddq_s16(a3[4], a3[5]), a3[6])), vaddq_s16(vaddq_s16(vaddq_s16(a3[7], *a4), a4[1]), a4[2])), a4[3])) + 48) >> 5)) >> 17);
  v5 = result + 4;
  v6 = 32;
  do
  {
    v5[-4] = v4;
    v5[-3] = v4;
    v5[-2] = v4;
    v5[-1] = v4;
    *v5 = v4;
    v5[1] = v4;
    v5[2] = v4;
    v5[3] = v4;
    v5 = (v5 + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x4_t *sub_277B8E358(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdup_n_s16(128 << (a5 - 8));
  v6 = 4;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x4_t *sub_277B8E384(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdup_n_s16(128 << (a5 - 8));
  v6 = 8;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x4_t *sub_277B8E3B0(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdup_n_s16(128 << (a5 - 8));
  v6 = 16;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E3DC(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = 4;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E408(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = 8;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E434(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = 16;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E460(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = 32;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E48C(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 1;
  v7 = 4;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E4BC(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 1;
  v7 = 8;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E4EC(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 1;
  v7 = 16;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E51C(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 1;
  v7 = 32;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E54C(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 1;
  v7 = 64;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E57C(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 2;
  v7 = 8;
  do
  {
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E5B0(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 2;
  v7 = 16;
  do
  {
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E5E4(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 2;
  v7 = 32;
  do
  {
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E618(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 2;
  v7 = 64;
  do
  {
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E64C(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 4;
  v7 = 16;
  do
  {
    v6[-4] = v5;
    v6[-3] = v5;
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6[2] = v5;
    v6[3] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E688(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 4;
  v7 = 32;
  do
  {
    v6[-4] = v5;
    v6[-3] = v5;
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6[2] = v5;
    v6[3] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E6C4(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = vdupq_n_s16(128 << (a5 - 8));
  v6 = result + 4;
  v7 = 64;
  do
  {
    v6[-4] = v5;
    v6[-3] = v5;
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6[2] = v5;
    v6[3] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

void *sub_277B8E700(void *result, uint64_t a2, int32x4_t a3, uint64_t a4, int16x4_t *a5)
{
  *a3.i8 = vpaddl_u16(vpadd_s16(*a5, *a5));
  *a3.i8 = vdup_lane_s16(vrshrn_n_s32(a3, 2uLL), 0);
  v5 = 4;
  do
  {
    *result = a3.i64[0];
    result = (result + 2 * a2);
    --v5;
  }

  while (v5);
  return result;
}

int16x4_t *sub_277B8E730(int16x4_t *result, uint64_t a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = vpaddlq_u16(*a4);
  v5 = vpaddq_s32(v4, v4);
  v6 = vdup_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 3uLL), 0);
  v7 = 8;
  do
  {
    *result = v6;
    result = (result + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x4_t *sub_277B8E764(int16x4_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(a4[1], *a4));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdup_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 4uLL), 0);
  v7 = 16;
  do
  {
    *result = v6;
    result = (result + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E79C(int16x8_t *result, uint64_t a2, int32x4_t a3, uint64_t a4, int16x4_t *a5)
{
  *a3.i8 = vpaddl_u16(vpadd_s16(*a5, *a5));
  v5 = vdupq_lane_s16(vrshrn_n_s32(a3, 2uLL), 0);
  v6 = 4;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8E7CC(int16x8_t *result, uint64_t a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = vpaddlq_u16(*a4);
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 3uLL), 0);
  v7 = 8;
  do
  {
    *result = v6;
    result = (result + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E800(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(a4[1], *a4));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 4uLL), 0);
  v7 = 16;
  do
  {
    *result = v6;
    result = (result + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E838(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(a4[1], *a4), vaddq_s16(a4[2], a4[3])));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 5uLL), 0);
  v7 = 32;
  do
  {
    *result = v6;
    result = (result + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E87C(int16x8_t *result, uint64_t a2, int32x4_t a3, uint64_t a4, int16x4_t *a5)
{
  *a3.i8 = vpaddl_u16(vpadd_s16(*a5, *a5));
  v5 = vdupq_lane_s16(vrshrn_n_s32(a3, 2uLL), 0);
  v6 = result + 1;
  v7 = 4;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8E8B0(int16x8_t *result, uint64_t a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = vpaddlq_u16(*a4);
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 3uLL), 0);
  v7 = result + 1;
  v8 = 8;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8E8E8(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(a4[1], *a4));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 4uLL), 0);
  v7 = result + 1;
  v8 = 16;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8E924(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(a4[1], *a4), vaddq_s16(a4[2], a4[3])));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 5uLL), 0);
  v7 = result + 1;
  v8 = 32;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8E96C(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a4[1], *a4), vaddq_s16(a4[2], a4[3])), vaddq_s16(vaddq_s16(a4[4], a4[5]), a4[6])), a4[7]));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 6uLL), 0);
  v7 = result + 1;
  v8 = 64;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8E9CC(int16x8_t *result, uint64_t a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = vpaddlq_u16(*a4);
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 3uLL), 0);
  v7 = result + 2;
  v8 = 8;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8EA08(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(a4[1], *a4));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 4uLL), 0);
  v7 = result + 2;
  v8 = 16;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8EA48(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(a4[1], *a4), vaddq_s16(a4[2], a4[3])));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 5uLL), 0);
  v7 = result + 2;
  v8 = 32;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8EA94(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a4[1], *a4), vaddq_s16(a4[2], a4[3])), vaddq_s16(vaddq_s16(a4[4], a4[5]), a4[6])), a4[7]));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 6uLL), 0);
  v7 = result + 2;
  v8 = 64;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8EAF8(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(a4[1], *a4));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 4uLL), 0);
  v7 = result + 4;
  v8 = 16;
  do
  {
    v7[-4] = v6;
    v7[-3] = v6;
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7[2] = v6;
    v7[3] = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8EB40(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(a4[1], *a4), vaddq_s16(a4[2], a4[3])));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 5uLL), 0);
  v7 = result + 4;
  v8 = 32;
  do
  {
    v7[-4] = v6;
    v7[-3] = v6;
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7[2] = v6;
    v7[3] = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

int16x8_t *sub_277B8EB94(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a4[1], *a4), vaddq_s16(a4[2], a4[3])), vaddq_s16(vaddq_s16(a4[4], a4[5]), a4[6])), a4[7]));
  v5 = vpaddq_s32(v4, v4);
  v6 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v5, v5), 6uLL), 0);
  v7 = result + 4;
  v8 = 64;
  do
  {
    v7[-4] = v6;
    v7[-3] = v6;
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7[2] = v6;
    v7[3] = v6;
    v7 = (v7 + 2 * a2);
    --v8;
  }

  while (v8);
  return result;
}

void *sub_277B8EC00(void *result, uint64_t a2, int16x4_t *a3, int32x4_t a4)
{
  *a4.i8 = vpaddl_u16(vpadd_s16(*a3, *a3));
  *a4.i8 = vdup_lane_s16(vrshrn_n_s32(a4, 2uLL), 0);
  v4 = 4;
  do
  {
    *result = a4.i64[0];
    result = (result + 2 * a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_277B8EC30(void *result, uint64_t a2, int16x4_t *a3, int32x4_t a4)
{
  *a4.i8 = vpaddl_u16(vpadd_s16(*a3, *a3));
  *a4.i8 = vdup_lane_s16(vrshrn_n_s32(a4, 2uLL), 0);
  v4 = 8;
  do
  {
    *result = a4.i64[0];
    result = (result + 2 * a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_277B8EC60(void *result, uint64_t a2, int16x4_t *a3, int32x4_t a4)
{
  *a4.i8 = vpaddl_u16(vpadd_s16(*a3, *a3));
  *a4.i8 = vdup_lane_s16(vrshrn_n_s32(a4, 2uLL), 0);
  v4 = 16;
  do
  {
    *result = a4.i64[0];
    result = (result + 2 * a2);
    --v4;
  }

  while (v4);
  return result;
}

int16x8_t *sub_277B8EC90(int16x8_t *result, uint64_t a2, uint16x8_t *a3)
{
  v3 = vpaddlq_u16(*a3);
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 3uLL), 0);
  v6 = 4;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8ECC4(int16x8_t *result, uint64_t a2, uint16x8_t *a3)
{
  v3 = vpaddlq_u16(*a3);
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 3uLL), 0);
  v6 = 8;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8ECF8(int16x8_t *result, uint64_t a2, uint16x8_t *a3)
{
  v3 = vpaddlq_u16(*a3);
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 3uLL), 0);
  v6 = 16;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8ED2C(int16x8_t *result, uint64_t a2, uint16x8_t *a3)
{
  v3 = vpaddlq_u16(*a3);
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 3uLL), 0);
  v6 = 32;
  do
  {
    *result = v5;
    result = (result + 2 * a2);
    --v6;
  }

  while (v6);
  return result;
}

int16x8_t *sub_277B8ED60(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(a3[1], *a3));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 4uLL), 0);
  v6 = result + 1;
  v7 = 4;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8ED9C(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(a3[1], *a3));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 4uLL), 0);
  v6 = result + 1;
  v7 = 8;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8EDD8(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(a3[1], *a3));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 4uLL), 0);
  v6 = result + 1;
  v7 = 16;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8EE14(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(a3[1], *a3));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 4uLL), 0);
  v6 = result + 1;
  v7 = 32;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8EE50(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(a3[1], *a3));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 4uLL), 0);
  v6 = result + 1;
  v7 = 64;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8EE8C(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 5uLL), 0);
  v6 = result + 2;
  v7 = 8;
  do
  {
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8EED8(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 5uLL), 0);
  v6 = result + 2;
  v7 = 16;
  do
  {
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8EF24(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 5uLL), 0);
  v6 = result + 2;
  v7 = 32;
  do
  {
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8EF70(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 5uLL), 0);
  v6 = result + 2;
  v7 = 64;
  do
  {
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8EFBC(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), vaddq_s16(vaddq_s16(a3[4], a3[5]), a3[6])), a3[7]));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 6uLL), 0);
  v6 = result + 4;
  v7 = 16;
  do
  {
    v6[-4] = v5;
    v6[-3] = v5;
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6[2] = v5;
    v6[3] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8F028(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), vaddq_s16(vaddq_s16(a3[4], a3[5]), a3[6])), a3[7]));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 6uLL), 0);
  v6 = result + 4;
  v7 = 32;
  do
  {
    v6[-4] = v5;
    v6[-3] = v5;
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6[2] = v5;
    v6[3] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

int16x8_t *sub_277B8F094(int16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a3[1], *a3), vaddq_s16(a3[2], a3[3])), vaddq_s16(vaddq_s16(a3[4], a3[5]), a3[6])), a3[7]));
  v4 = vpaddq_s32(v3, v3);
  v5 = vdupq_lane_s16(vrshrn_n_s32(vpaddq_s32(v4, v4), 6uLL), 0);
  v6 = result + 4;
  v7 = 64;
  do
  {
    v6[-4] = v5;
    v6[-3] = v5;
    v6[-2] = v5;
    v6[-1] = v5;
    *v6 = v5;
    v6[1] = v5;
    v6[2] = v5;
    v6[3] = v5;
    v6 = (v6 + 2 * a2);
    --v7;
  }

  while (v7);
  return result;
}

double sub_277B8F100(void *a1, uint64_t a2, double *a3)
{
  result = *a3;
  *a1 = *a3;
  v4 = 2 * a2;
  *(a1 + v4) = result;
  v5 = (a1 + 4 * a2);
  *v5 = result;
  *(v5 + v4) = result;
  return result;
}

void *sub_277B8F120(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = -8;
  do
  {
    *result = v3;
    *(result + 2 * a2) = v3;
    result = (result + 4 * a2);
    v4 += 2;
  }

  while (v4);
  return result;
}

void *sub_277B8F148(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = -16;
  do
  {
    *result = v3;
    *(result + 2 * a2) = v3;
    result = (result + 4 * a2);
    v4 += 2;
  }

  while (v4);
  return result;
}

__n128 sub_277B8F170(__n128 *a1, uint64_t a2, __n128 *a3)
{
  result = *a3;
  *a1 = *a3;
  v4 = 2 * a2;
  *(a1 + v4) = result;
  v5 = (a1 + 4 * a2);
  *v5 = result;
  *(v5 + v4) = result;
  return result;
}

_OWORD *sub_277B8F190(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = -8;
  do
  {
    *result = v3;
    *(result + 2 * a2) = v3;
    result = (result + 4 * a2);
    v4 += 2;
  }

  while (v4);
  return result;
}

_OWORD *sub_277B8F1B8(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = -16;
  do
  {
    *result = v3;
    *(result + 2 * a2) = v3;
    result = (result + 4 * a2);
    v4 += 2;
  }

  while (v4);
  return result;
}

_OWORD *sub_277B8F1E0(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = -32;
  do
  {
    *result = v3;
    *(result + 2 * a2) = v3;
    result = (result + 4 * a2);
    v4 += 2;
  }

  while (v4);
  return result;
}

_OWORD *sub_277B8F208(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = 2 * a2;
  v6 = -4;
  do
  {
    *result = v3;
    result[1] = v4;
    v7 = (result + v5);
    *v7 = v3;
    v7[1] = v4;
    result = (result + v5 + v5);
    v6 += 2;
  }

  while (v6);
  return result;
}

_OWORD *sub_277B8F230(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = 2 * a2;
  v6 = -8;
  do
  {
    *result = v3;
    result[1] = v4;
    v7 = (result + v5);
    *v7 = v3;
    v7[1] = v4;
    result = (result + v5 + v5);
    v6 += 2;
  }

  while (v6);
  return result;
}

_OWORD *sub_277B8F258(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = 2 * a2;
  v6 = -16;
  do
  {
    *result = v3;
    result[1] = v4;
    v7 = (result + v5);
    *v7 = v3;
    v7[1] = v4;
    result = (result + v5 + v5);
    v6 += 2;
  }

  while (v6);
  return result;
}

_OWORD *sub_277B8F280(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = 2 * a2;
  v6 = -32;
  do
  {
    *result = v3;
    result[1] = v4;
    v7 = (result + v5);
    *v7 = v3;
    v7[1] = v4;
    result = (result + v5 + v5);
    v6 += 2;
  }

  while (v6);
  return result;
}

_OWORD *sub_277B8F2A8(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = 2 * a2;
  v6 = -64;
  do
  {
    *result = v3;
    result[1] = v4;
    v7 = (result + v5);
    *v7 = v3;
    v7[1] = v4;
    result = (result + v5 + v5);
    v6 += 2;
  }

  while (v6);
  return result;
}

_OWORD *sub_277B8F2D0(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = 2 * a2;
  v8 = -8;
  do
  {
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
    v9 = (result + v7);
    *v9 = v3;
    v9[1] = v4;
    result = (result + v7 + v7);
    v9[2] = v5;
    v9[3] = v6;
    v8 += 2;
  }

  while (v8);
  return result;
}

_OWORD *sub_277B8F304(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = 2 * a2;
  v8 = -16;
  do
  {
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
    v9 = (result + v7);
    *v9 = v3;
    v9[1] = v4;
    result = (result + v7 + v7);
    v9[2] = v5;
    v9[3] = v6;
    v8 += 2;
  }

  while (v8);
  return result;
}

_OWORD *sub_277B8F338(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = 2 * a2;
  v8 = -32;
  do
  {
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
    v9 = (result + v7);
    *v9 = v3;
    v9[1] = v4;
    result = (result + v7 + v7);
    v9[2] = v5;
    v9[3] = v6;
    v8 += 2;
  }

  while (v8);
  return result;
}

_OWORD *sub_277B8F36C(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = 2 * a2;
  v8 = -64;
  do
  {
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
    v9 = (result + v7);
    *v9 = v3;
    v9[1] = v4;
    result = (result + v7 + v7);
    v9[2] = v5;
    v9[3] = v6;
    v8 += 2;
  }

  while (v8);
  return result;
}

_OWORD *sub_277B8F3A0(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = 2 * a2;
  v10 = -16;
  v11 = a3[6];
  v12 = a3[7];
  do
  {
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    result[5] = v8;
    result[6] = v11;
    result[7] = v12;
    v13 = (result + v9);
    *v13 = v3;
    v13[1] = v4;
    v13[2] = v5;
    v13[3] = v6;
    v13[4] = v7;
    v13[5] = v8;
    v13[6] = v11;
    v13[7] = v12;
    result = (result + v9 + v9);
    v10 += 2;
  }

  while (v10);
  return result;
}

_OWORD *sub_277B8F3EC(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = 2 * a2;
  v10 = -32;
  v11 = a3[6];
  v12 = a3[7];
  do
  {
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    result[5] = v8;
    result[6] = v11;
    result[7] = v12;
    v13 = (result + v9);
    *v13 = v3;
    v13[1] = v4;
    v13[2] = v5;
    v13[3] = v6;
    v13[4] = v7;
    v13[5] = v8;
    v13[6] = v11;
    v13[7] = v12;
    result = (result + v9 + v9);
    v10 += 2;
  }

  while (v10);
  return result;
}

_OWORD *sub_277B8F438(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = 2 * a2;
  v10 = -64;
  v11 = a3[6];
  v12 = a3[7];
  do
  {
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    result[5] = v8;
    result[6] = v11;
    result[7] = v12;
    v13 = (result + v9);
    *v13 = v3;
    v13[1] = v4;
    v13[2] = v5;
    v13[3] = v6;
    v13[4] = v7;
    v13[5] = v8;
    v13[6] = v11;
    v13[7] = v12;
    result = (result + v9 + v9);
    v10 += 2;
  }

  while (v10);
  return result;
}

int16x4_t sub_277B8F484(int16x4_t *a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  v4 = *a4;
  *a1 = vdup_lane_s16(*a4, 0);
  *(a1 + 2 * a2) = vdup_lane_s16(v4, 1);
  *(a1 + 4 * a2) = vdup_lane_s16(v4, 2);
  result = vdup_lane_s16(v4, 3);
  *(a1 + 6 * a2) = result;
  return result;
}

int16x4_t sub_277B8F4BC(int16x4_t *a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  v4 = *a4->i8;
  *a1 = vdup_lane_s16(*a4, 0);
  v5 = 2 * a2;
  *(a1 + v5) = vdup_lane_s16(*v4.i8, 1);
  v6 = 4 * a2;
  *(a1 + v6) = vdup_lane_s16(*v4.i8, 2);
  v7 = 6 * a2;
  *(a1 + v7) = vdup_lane_s16(*v4.i8, 3);
  v8 = &a1[a2];
  *v8 = vdup_laneq_s16(v4, 4);
  *(v8 + v5) = vdup_laneq_s16(v4, 5);
  *(v8 + v6) = vdup_laneq_s16(v4, 6);
  result = vdup_laneq_s16(v4, 7);
  *(v8 + v7) = result;
  return result;
}

int16x8_t sub_277B8F518(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  v4 = *a4;
  *a1 = vdupq_lane_s16(*a4, 0);
  *(a1 + 2 * a2) = vdupq_lane_s16(v4, 1);
  *(a1 + 4 * a2) = vdupq_lane_s16(v4, 2);
  result = vdupq_lane_s16(v4, 3);
  *(a1 + 6 * a2) = result;
  return result;
}

int16x8_t sub_277B8F550(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  v4 = *a4->i8;
  *a1 = vdupq_lane_s16(*a4, 0);
  v5 = 2 * a2;
  *(a1 + v5) = vdupq_lane_s16(*v4.i8, 1);
  v6 = 4 * a2;
  *(a1 + v6) = vdupq_lane_s16(*v4.i8, 2);
  v7 = 6 * a2;
  *(a1 + v7) = vdupq_lane_s16(*v4.i8, 3);
  v8 = (a1 + 8 * a2);
  *v8 = vdupq_laneq_s16(v4, 4);
  *(v8 + v5) = vdupq_laneq_s16(v4, 5);
  *(v8 + v6) = vdupq_laneq_s16(v4, 6);
  result = vdupq_laneq_s16(v4, 7);
  *(v8 + v7) = result;
  return result;
}

int16x8_t sub_277B8F5AC(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  v4 = *a4;
  v5 = vdupq_lane_s16(*a4, 0);
  *a1 = v5;
  a1[1] = v5;
  v6 = (a1 + 2 * a2);
  v7 = vdupq_lane_s16(v4, 1);
  *v6 = v7;
  v6[1] = v7;
  v8 = (a1 + 4 * a2);
  v9 = vdupq_lane_s16(v4, 2);
  *v8 = v9;
  v8[1] = v9;
  v10 = (a1 + 6 * a2);
  result = vdupq_lane_s16(v4, 3);
  *v10 = result;
  v10[1] = result;
  return result;
}

int16x8_t sub_277B8F5E4(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  v4 = *a4->i8;
  v5 = vdupq_lane_s16(*a4, 0);
  *a1 = v5;
  a1[1] = v5;
  v6 = (a1 + 2 * a2);
  v7 = vdupq_lane_s16(*v4.i8, 1);
  *v6 = v7;
  v6[1] = v7;
  v8 = (a1 + 4 * a2);
  v9 = vdupq_lane_s16(*v4.i8, 2);
  *v8 = v9;
  v8[1] = v9;
  v10 = (a1 + 6 * a2);
  v11 = vdupq_lane_s16(*v4.i8, 3);
  *v10 = v11;
  v10[1] = v11;
  v12 = vdupq_laneq_s16(v4, 4);
  v13 = (a1 + 8 * a2);
  *v13 = v12;
  v13[1] = v12;
  v14 = (v13 + 2 * a2);
  v15 = vdupq_laneq_s16(v4, 5);
  *v14 = v15;
  v14[1] = v15;
  v16 = (v13 + 4 * a2);
  v17 = vdupq_laneq_s16(v4, 6);
  *v16 = v17;
  v16[1] = v17;
  v18 = (v13 + 6 * a2);
  result = vdupq_laneq_s16(v4, 7);
  *v18 = result;
  v18[1] = result;
  return result;
}

int16x8_t sub_277B8F64C(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x4_t *a4)
{
  v4 = *a4->i8;
  v5 = vdupq_lane_s16(*a4, 0);
  *a1 = v5;
  a1[1] = v5;
  a1[2] = v5;
  a1[3] = v5;
  v6 = vdupq_lane_s16(*v4.i8, 1);
  v7 = (a1 + 2 * a2);
  *v7 = v6;
  v7[1] = v6;
  v7[2] = v6;
  v7[3] = v6;
  v8 = (a1 + 4 * a2);
  v9 = vdupq_lane_s16(*v4.i8, 2);
  *v8 = v9;
  v8[1] = v9;
  v8[2] = v9;
  v8[3] = v9;
  v10 = (a1 + 6 * a2);
  v11 = vdupq_lane_s16(*v4.i8, 3);
  *v10 = v11;
  v10[1] = v11;
  v10[2] = v11;
  v10[3] = v11;
  v12 = (a1 + 8 * a2);
  v13 = vdupq_laneq_s16(v4, 4);
  *v12 = v13;
  v12[1] = v13;
  v12[2] = v13;
  v12[3] = v13;
  v14 = (v12 + 2 * a2);
  v15 = vdupq_laneq_s16(v4, 5);
  *v14 = v15;
  v14[1] = v15;
  v14[2] = v15;
  v14[3] = v15;
  v16 = vdupq_laneq_s16(v4, 6);
  v17 = (v12 + 4 * a2);
  *v17 = v16;
  v17[1] = v16;
  v17[2] = v16;
  v17[3] = v16;
  v18 = (v12 + 6 * a2);
  result = vdupq_laneq_s16(v4, 7);
  *v18 = result;
  v18[1] = result;
  v18[2] = result;
  v18[3] = result;
  return result;
}

int16x4_t sub_277B8F6D4(int16x4_t *a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  v6 = 4 * a2;
  *a1 = vdup_lane_s16(*a4->i8, 0);
  v7 = 2 * a2;
  *(a1 + v7) = vdup_lane_s16(*v4.i8, 1);
  v8 = 6 * a2;
  *(a1 + v6) = vdup_lane_s16(*v4.i8, 2);
  *(a1 + v8) = vdup_lane_s16(*v4.i8, 3);
  v9 = &a1[a2];
  *v9 = vdup_laneq_s16(v4, 4);
  *(v9 + v7) = vdup_laneq_s16(v4, 5);
  *(v9 + v6) = vdup_laneq_s16(v4, 6);
  *(v9 + v8) = vdup_laneq_s16(v4, 7);
  v10 = &a1[2 * a2];
  *v10 = vdup_lane_s16(*v5.i8, 0);
  *(v10 + v7) = vdup_lane_s16(*v5.i8, 1);
  *(v10 + v6) = vdup_lane_s16(*v5.i8, 2);
  *(v10 + v8) = vdup_lane_s16(*v5.i8, 3);
  v11 = &a1[3 * a2];
  *v11 = vdup_laneq_s16(v5, 4);
  *(v11 + v7) = vdup_laneq_s16(v5, 5);
  *(v11 + v6) = vdup_laneq_s16(v5, 6);
  result = vdup_laneq_s16(v5, 7);
  *(v11 + v8) = result;
  return result;
}

int16x8_t sub_277B8F77C(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  v6 = 4 * a2;
  *a1 = vdupq_lane_s16(*a4->i8, 0);
  v7 = 2 * a2;
  *(a1 + v7) = vdupq_lane_s16(*v4.i8, 1);
  v8 = 6 * a2;
  *(a1 + v6) = vdupq_lane_s16(*v4.i8, 2);
  *(a1 + v8) = vdupq_lane_s16(*v4.i8, 3);
  v9 = (a1 + 8 * a2);
  *v9 = vdupq_laneq_s16(v4, 4);
  *(v9 + v7) = vdupq_laneq_s16(v4, 5);
  *(v9 + v6) = vdupq_laneq_s16(v4, 6);
  *(v9 + v8) = vdupq_laneq_s16(v4, 7);
  v10 = &a1[a2];
  *v10 = vdupq_lane_s16(*v5.i8, 0);
  *(v10 + v7) = vdupq_lane_s16(*v5.i8, 1);
  *(v10 + v6) = vdupq_lane_s16(*v5.i8, 2);
  *(v10 + v8) = vdupq_lane_s16(*v5.i8, 3);
  v11 = (a1 + 24 * a2);
  *v11 = vdupq_laneq_s16(v5, 4);
  *(v11 + v7) = vdupq_laneq_s16(v5, 5);
  *(v11 + v6) = vdupq_laneq_s16(v5, 6);
  result = vdupq_laneq_s16(v5, 7);
  *(v11 + v8) = result;
  return result;
}

int16x8_t *sub_277B8F824(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 2 * a2;
  v5 = 1;
  do
  {
    v6 = *a4;
    v7 = a4[1];
    a4 += 2;
    *result = vdupq_lane_s16(*v6.i8, 0);
    *(result + 2 * a2) = vdupq_lane_s16(*v6.i8, 1);
    v8 = (result + v4 + v4);
    *v8 = vdupq_lane_s16(*v6.i8, 2);
    v9 = (v8 + v4);
    *v9 = vdupq_lane_s16(*v6.i8, 3);
    v10 = (v9 + v4);
    *v10 = vdupq_laneq_s16(v6, 4);
    v11 = (v10 + v4);
    *v11 = vdupq_laneq_s16(v6, 5);
    v12 = v5;
    *(v11 + 2 * a2) = vdupq_laneq_s16(v6, 6);
    v13 = (v11 + v4 + v4);
    *v13 = vdupq_laneq_s16(v6, 7);
    v14 = (v13 + v4);
    *v14 = vdupq_lane_s16(*v7.i8, 0);
    v15 = (v14 + v4);
    *v15 = vdupq_lane_s16(*v7.i8, 1);
    v16 = (v15 + v4);
    *v16 = vdupq_lane_s16(*v7.i8, 2);
    v17 = (v16 + v4);
    *v17 = vdupq_lane_s16(*v7.i8, 3);
    v18 = (v17 + v4);
    *v18 = vdupq_laneq_s16(v7, 4);
    v19 = (v18 + v4);
    *v19 = vdupq_laneq_s16(v7, 5);
    v20 = (v19 + v4);
    *v20 = vdupq_laneq_s16(v7, 6);
    v21 = (v20 + v4);
    result = (v21 + v4);
    *v21 = vdupq_laneq_s16(v7, 7);
    v5 = 0;
  }

  while ((v12 & 1) != 0);
  return result;
}

int16x8_t sub_277B8F900(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v6 = vdupq_lane_s16(*a4->i8, 0);
  *a1 = v6;
  a1[1] = v6;
  v7 = (a1 + 2 * a2);
  v8 = vdupq_lane_s16(*v5.i8, 1);
  *v7 = v8;
  v7[1] = v8;
  v9 = (a1 + 4 * a2);
  v10 = vdupq_lane_s16(*v5.i8, 2);
  *v9 = v10;
  v9[1] = v10;
  v11 = (a1 + 6 * a2);
  v12 = vdupq_lane_s16(*v5.i8, 3);
  *v11 = v12;
  v11[1] = v12;
  v13 = (a1 + 8 * a2);
  v14 = vdupq_laneq_s16(v5, 4);
  *v13 = v14;
  v13[1] = v14;
  v15 = (v13 + 2 * a2);
  v16 = vdupq_laneq_s16(v5, 5);
  *v15 = v16;
  v15[1] = v16;
  v17 = vdupq_laneq_s16(v5, 6);
  v18 = (v13 + 4 * a2);
  *v18 = v17;
  v18[1] = v17;
  v19 = (v13 + 6 * a2);
  v20 = vdupq_laneq_s16(v5, 7);
  *v19 = v20;
  v19[1] = v20;
  v21 = &a1[a2];
  v22 = vdupq_lane_s16(*v4.i8, 0);
  *v21 = v22;
  v21[1] = v22;
  v23 = (v21 + 2 * a2);
  v24 = vdupq_lane_s16(*v4.i8, 1);
  *v23 = v24;
  v23[1] = v24;
  v25 = (v21 + 4 * a2);
  v26 = vdupq_lane_s16(*v4.i8, 2);
  *v25 = v26;
  v25[1] = v26;
  v27 = (v21 + 6 * a2);
  v28 = vdupq_lane_s16(*v4.i8, 3);
  *v27 = v28;
  v27[1] = v28;
  v29 = vdupq_laneq_s16(v4, 4);
  v30 = (a1 + 24 * a2);
  *v30 = v29;
  v30[1] = v29;
  v31 = (v30 + 2 * a2);
  v32 = vdupq_laneq_s16(v4, 5);
  *v31 = v32;
  v31[1] = v32;
  v33 = (v30 + 4 * a2);
  v34 = vdupq_laneq_s16(v4, 6);
  *v33 = v34;
  v33[1] = v34;
  v35 = (v30 + 6 * a2);
  result = vdupq_laneq_s16(v4, 7);
  *v35 = result;
  v35[1] = result;
  return result;
}

int16x8_t *sub_277B8F9CC(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 2 * a2;
  v5 = 1;
  do
  {
    v7 = *a4;
    v6 = a4[1];
    a4 += 2;
    v8 = vdupq_lane_s16(*v7.i8, 0);
    v9 = vdupq_lane_s16(*v7.i8, 1);
    *result = v8;
    result[1] = v8;
    v10 = (result + v4);
    *v10 = v9;
    v10[1] = v9;
    v11 = vdupq_lane_s16(*v7.i8, 2);
    v12 = v5;
    v13 = (result + v4 + v4);
    *v13 = v11;
    v13[1] = v11;
    v14 = vdupq_lane_s16(*v7.i8, 3);
    v15 = (v13 + v4);
    *v15 = v14;
    v15[1] = v14;
    v16 = vdupq_laneq_s16(v7, 4);
    v17 = (v15 + v4);
    *v17 = v16;
    v17[1] = v16;
    v18 = vdupq_laneq_s16(v7, 5);
    v19 = (v17 + v4);
    *v19 = v18;
    v19[1] = v18;
    v20 = vdupq_laneq_s16(v7, 6);
    v21 = (v19 + v4);
    *v21 = v20;
    v21[1] = v20;
    v22 = vdupq_laneq_s16(v7, 7);
    v23 = (v21 + v4);
    v24 = vdupq_lane_s16(*v6.i8, 0);
    *v23 = v22;
    v23[1] = v22;
    v25 = (v23 + v4);
    *v25 = v24;
    v25[1] = v24;
    v26 = vdupq_lane_s16(*v6.i8, 1);
    v27 = (v25 + v4);
    *v27 = v26;
    v27[1] = v26;
    v28 = vdupq_lane_s16(*v6.i8, 2);
    v29 = (v27 + v4);
    *v29 = v28;
    v29[1] = v28;
    v30 = vdupq_lane_s16(*v6.i8, 3);
    v31 = (v29 + v4);
    *v31 = v30;
    v31[1] = v30;
    v32 = vdupq_laneq_s16(v6, 4);
    v33 = (v31 + v4);
    *v33 = v32;
    v33[1] = v32;
    v34 = vdupq_laneq_s16(v6, 5);
    v35 = (v33 + v4);
    v36 = vdupq_laneq_s16(v6, 6);
    *v35 = v34;
    v35[1] = v34;
    v37 = (v35 + v4);
    *v37 = v36;
    v37[1] = v36;
    v38 = vdupq_laneq_s16(v6, 7);
    v39 = (v37 + v4);
    result = (v39 + v4);
    *v39 = v38;
    v39[1] = v38;
    v5 = 0;
  }

  while ((v12 & 1) != 0);
  return result;
}

int16x8_t *sub_277B8FAA8(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 2 * a2;
  do
  {
    v7 = *(a4 + v4);
    v6 = *(a4 + v4 + 16);
    v8 = vdupq_lane_s16(*v7.i8, 0);
    *result = v8;
    result[1] = v8;
    v9 = vdupq_lane_s16(*v7.i8, 1);
    v10 = (result + v5);
    v11 = vdupq_lane_s16(*v7.i8, 2);
    *v10 = v9;
    v10[1] = v9;
    v12 = (result + v5 + v5);
    *v12 = v11;
    v12[1] = v11;
    v13 = vdupq_lane_s16(*v7.i8, 3);
    v14 = (v12 + v5);
    *v14 = v13;
    v14[1] = v13;
    v15 = vdupq_laneq_s16(v7, 4);
    v16 = (v14 + v5);
    *v16 = v15;
    v16[1] = v15;
    v17 = vdupq_laneq_s16(v7, 5);
    v18 = (v16 + v5);
    *v18 = v17;
    v18[1] = v17;
    v19 = vdupq_laneq_s16(v7, 6);
    v20 = (v18 + v5);
    *v20 = v19;
    v20[1] = v19;
    v21 = vdupq_laneq_s16(v7, 7);
    v22 = (v20 + v5);
    v23 = vdupq_lane_s16(*v6.i8, 0);
    *v22 = v21;
    v22[1] = v21;
    v24 = (v22 + v5);
    *v24 = v23;
    v24[1] = v23;
    v25 = vdupq_lane_s16(*v6.i8, 1);
    v26 = (v24 + v5);
    *v26 = v25;
    v26[1] = v25;
    v27 = vdupq_lane_s16(*v6.i8, 2);
    v28 = (v26 + v5);
    *v28 = v27;
    v28[1] = v27;
    v29 = vdupq_lane_s16(*v6.i8, 3);
    v30 = (v28 + v5);
    *v30 = v29;
    v30[1] = v29;
    v31 = vdupq_laneq_s16(v6, 4);
    v32 = (v30 + v5);
    *v32 = v31;
    v32[1] = v31;
    v33 = vdupq_laneq_s16(v6, 5);
    v34 = (v32 + v5);
    v35 = vdupq_laneq_s16(v6, 6);
    *v34 = v33;
    v34[1] = v33;
    v36 = (v34 + v5);
    *v36 = v35;
    v36[1] = v35;
    v37 = vdupq_laneq_s16(v6, 7);
    v38 = (v36 + v5);
    v4 += 32;
    result = (v38 + v5);
    *v38 = v37;
    v38[1] = v37;
  }

  while (v4 != 128);
  return result;
}

int16x8_t sub_277B8FB88(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v6 = vdupq_lane_s16(*a4->i8, 0);
  *a1 = v6;
  a1[1] = v6;
  a1[2] = v6;
  a1[3] = v6;
  v7 = (a1 + 2 * a2);
  v8 = vdupq_lane_s16(*v5.i8, 1);
  *v7 = v8;
  v7[1] = v8;
  v7[2] = v8;
  v7[3] = v8;
  v9 = vdupq_lane_s16(*v5.i8, 2);
  v10 = (a1 + 4 * a2);
  *v10 = v9;
  v10[1] = v9;
  v10[2] = v9;
  v10[3] = v9;
  v11 = (a1 + 6 * a2);
  v12 = vdupq_lane_s16(*v5.i8, 3);
  *v11 = v12;
  v11[1] = v12;
  v11[2] = v12;
  v11[3] = v12;
  v13 = (a1 + 8 * a2);
  v14 = vdupq_laneq_s16(v5, 4);
  *v13 = v14;
  v13[1] = v14;
  v13[2] = v14;
  v13[3] = v14;
  v15 = (v13 + 2 * a2);
  v16 = vdupq_laneq_s16(v5, 5);
  *v15 = v16;
  v15[1] = v16;
  v15[2] = v16;
  v15[3] = v16;
  v17 = (v13 + 4 * a2);
  v18 = vdupq_laneq_s16(v5, 6);
  *v17 = v18;
  v17[1] = v18;
  v17[2] = v18;
  v17[3] = v18;
  v19 = (v13 + 6 * a2);
  v20 = vdupq_laneq_s16(v5, 7);
  *v19 = v20;
  v19[1] = v20;
  v19[2] = v20;
  v19[3] = v20;
  v21 = vdupq_lane_s16(*v4.i8, 0);
  v22 = &a1[a2];
  *v22 = v21;
  v22[1] = v21;
  v22[2] = v21;
  v22[3] = v21;
  v23 = (v22 + 2 * a2);
  v24 = vdupq_lane_s16(*v4.i8, 1);
  *v23 = v24;
  v23[1] = v24;
  v23[2] = v24;
  v23[3] = v24;
  v25 = (v22 + 4 * a2);
  v26 = vdupq_lane_s16(*v4.i8, 2);
  *v25 = v26;
  v25[1] = v26;
  v25[2] = v26;
  v25[3] = v26;
  v27 = (v22 + 6 * a2);
  v28 = vdupq_lane_s16(*v4.i8, 3);
  *v27 = v28;
  v27[1] = v28;
  v27[2] = v28;
  v27[3] = v28;
  v29 = (a1 + 24 * a2);
  v30 = vdupq_laneq_s16(v4, 4);
  *v29 = v30;
  v29[1] = v30;
  v29[2] = v30;
  v29[3] = v30;
  v31 = (v29 + 2 * a2);
  v32 = vdupq_laneq_s16(v4, 5);
  *v31 = v32;
  v31[1] = v32;
  v31[2] = v32;
  v31[3] = v32;
  v33 = vdupq_laneq_s16(v4, 6);
  v34 = (v29 + 4 * a2);
  *v34 = v33;
  v34[1] = v33;
  v34[2] = v33;
  v34[3] = v33;
  v35 = (v29 + 6 * a2);
  result = vdupq_laneq_s16(v4, 7);
  *v35 = result;
  v35[1] = result;
  v35[2] = result;
  v35[3] = result;
  return result;
}

int16x8_t *sub_277B8FC94(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 2 * a2;
  v5 = 1;
  do
  {
    v7 = *a4;
    v6 = a4[1];
    a4 += 2;
    v8 = vdupq_lane_s16(*v7.i8, 0);
    *result = v8;
    result[1] = v8;
    v9 = vdupq_lane_s16(*v7.i8, 1);
    result[2] = v8;
    result[3] = v8;
    v10 = (result + v4);
    *v10 = v9;
    v10[1] = v9;
    v10[2] = v9;
    v10[3] = v9;
    v11 = vdupq_lane_s16(*v7.i8, 2);
    v12 = (result + v4 + v4);
    *v12 = v11;
    v12[1] = v11;
    v12[2] = v11;
    v12[3] = v11;
    v13 = vdupq_lane_s16(*v7.i8, 3);
    v14 = (v12 + v4);
    *v14 = v13;
    v14[1] = v13;
    v14[2] = v13;
    v14[3] = v13;
    v15 = vdupq_laneq_s16(v7, 4);
    v16 = (v14 + v4);
    *v16 = v15;
    v16[1] = v15;
    v16[2] = v15;
    v16[3] = v15;
    v17 = vdupq_laneq_s16(v7, 5);
    v18 = (v16 + v4);
    *v18 = v17;
    v18[1] = v17;
    v18[2] = v17;
    v18[3] = v17;
    v19 = vdupq_laneq_s16(v7, 6);
    LOBYTE(v16) = v5;
    v20 = (v18 + v4);
    *v20 = v19;
    v20[1] = v19;
    v20[2] = v19;
    v20[3] = v19;
    v21 = vdupq_laneq_s16(v7, 7);
    v22 = (v18 + v4 + v4);
    *v22 = v21;
    v22[1] = v21;
    v22[2] = v21;
    v22[3] = v21;
    v23 = vdupq_lane_s16(*v6.i8, 0);
    v24 = (v22 + v4);
    *v24 = v23;
    v24[1] = v23;
    v24[2] = v23;
    v24[3] = v23;
    v25 = vdupq_lane_s16(*v6.i8, 1);
    v26 = (v24 + v4);
    *v26 = v25;
    v26[1] = v25;
    v26[2] = v25;
    v26[3] = v25;
    v27 = vdupq_lane_s16(*v6.i8, 2);
    v28 = (v26 + v4);
    *v28 = v27;
    v28[1] = v27;
    v28[2] = v27;
    v28[3] = v27;
    v29 = vdupq_lane_s16(*v6.i8, 3);
    v30 = (v28 + v4);
    *v30 = v29;
    v30[1] = v29;
    v31 = vdupq_laneq_s16(v6, 4);
    v30[2] = v29;
    v30[3] = v29;
    v32 = (v30 + v4);
    *v32 = v31;
    v32[1] = v31;
    v32[2] = v31;
    v32[3] = v31;
    v33 = vdupq_laneq_s16(v6, 5);
    v34 = (v32 + v4);
    *v34 = v33;
    v34[1] = v33;
    v34[2] = v33;
    v34[3] = v33;
    v35 = vdupq_laneq_s16(v6, 6);
    v36 = (v34 + v4);
    *v36 = v35;
    v36[1] = v35;
    v36[2] = v35;
    v36[3] = v35;
    v37 = vdupq_laneq_s16(v6, 7);
    v38 = (v36 + v4);
    *v38 = v37;
    v38[1] = v37;
    result = (v38 + v4);
    v38[2] = v37;
    v38[3] = v37;
    v5 = 0;
  }

  while ((v16 & 1) != 0);
  return result;
}

int16x8_t *sub_277B8FDB0(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 2 * a2;
  do
  {
    v7 = *(a4 + v4);
    v6 = *(a4 + v4 + 16);
    v8 = vdupq_lane_s16(*v7.i8, 0);
    *result = v8;
    result[1] = v8;
    result[2] = v8;
    result[3] = v8;
    v9 = vdupq_lane_s16(*v7.i8, 1);
    v10 = (result + v5);
    *v10 = v9;
    v10[1] = v9;
    v10[2] = v9;
    v10[3] = v9;
    v11 = vdupq_lane_s16(*v7.i8, 2);
    v12 = (result + v5 + v5);
    *v12 = v11;
    v12[1] = v11;
    v12[2] = v11;
    v12[3] = v11;
    v13 = vdupq_lane_s16(*v7.i8, 3);
    v14 = (v12 + v5);
    *v14 = v13;
    v14[1] = v13;
    v14[2] = v13;
    v14[3] = v13;
    v15 = vdupq_laneq_s16(v7, 4);
    v16 = (v14 + v5);
    *v16 = v15;
    v16[1] = v15;
    v16[2] = v15;
    v16[3] = v15;
    v17 = vdupq_laneq_s16(v7, 5);
    v18 = (v16 + v5);
    *v18 = v17;
    v18[1] = v17;
    v19 = vdupq_laneq_s16(v7, 6);
    v18[2] = v17;
    v18[3] = v17;
    v20 = (v18 + v5);
    *v20 = v19;
    v20[1] = v19;
    v20[2] = v19;
    v20[3] = v19;
    v21 = vdupq_laneq_s16(v7, 7);
    v22 = (v20 + v5);
    *v22 = v21;
    v22[1] = v21;
    v22[2] = v21;
    v22[3] = v21;
    v23 = vdupq_lane_s16(*v6.i8, 0);
    v24 = (v22 + v5);
    *v24 = v23;
    v24[1] = v23;
    v24[2] = v23;
    v24[3] = v23;
    v25 = vdupq_lane_s16(*v6.i8, 1);
    v26 = (v24 + v5);
    *v26 = v25;
    v26[1] = v25;
    v26[2] = v25;
    v26[3] = v25;
    v27 = vdupq_lane_s16(*v6.i8, 2);
    v28 = (v26 + v5);
    *v28 = v27;
    v28[1] = v27;
    v28[2] = v27;
    v28[3] = v27;
    v29 = vdupq_lane_s16(*v6.i8, 3);
    v30 = (v28 + v5);
    *v30 = v29;
    v30[1] = v29;
    v31 = vdupq_laneq_s16(v6, 4);
    v30[2] = v29;
    v30[3] = v29;
    v32 = (v30 + v5);
    *v32 = v31;
    v32[1] = v31;
    v32[2] = v31;
    v32[3] = v31;
    v33 = vdupq_laneq_s16(v6, 5);
    v34 = (v32 + v5);
    *v34 = v33;
    v34[1] = v33;
    v34[2] = v33;
    v34[3] = v33;
    v35 = vdupq_laneq_s16(v6, 6);
    v36 = (v34 + v5);
    *v36 = v35;
    v36[1] = v35;
    v36[2] = v35;
    v36[3] = v35;
    v37 = vdupq_laneq_s16(v6, 7);
    v38 = (v36 + v5);
    *v38 = v37;
    v38[1] = v37;
    v4 += 32;
    result = (v38 + v5);
    v38[2] = v37;
    v38[3] = v37;
  }

  while (v4 != 128);
  return result;
}

int16x8_t sub_277B8FED0(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v6 = vdupq_lane_s16(*a4->i8, 0);
  *a1 = v6;
  a1[1] = v6;
  a1[2] = v6;
  a1[3] = v6;
  a1[4] = v6;
  a1[5] = v6;
  a1[6] = v6;
  a1[7] = v6;
  v7 = (a1 + 2 * a2);
  v8 = vdupq_lane_s16(*v5.i8, 1);
  *v7 = v8;
  v7[1] = v8;
  v7[2] = v8;
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v8;
  v7[6] = v8;
  v7[7] = v8;
  v9 = (a1 + 4 * a2);
  v10 = vdupq_lane_s16(*v5.i8, 2);
  *v9 = v10;
  v9[1] = v10;
  v9[2] = v10;
  v9[3] = v10;
  v9[4] = v10;
  v9[5] = v10;
  v9[6] = v10;
  v9[7] = v10;
  v11 = (a1 + 6 * a2);
  v12 = vdupq_lane_s16(*v5.i8, 3);
  *v11 = v12;
  v11[1] = v12;
  v11[2] = v12;
  v11[3] = v12;
  v11[4] = v12;
  v11[5] = v12;
  v11[6] = v12;
  v11[7] = v12;
  v13 = (a1 + 8 * a2);
  v14 = vdupq_laneq_s16(v5, 4);
  *v13 = v14;
  v13[1] = v14;
  v13[2] = v14;
  v13[3] = v14;
  v13[4] = v14;
  v13[5] = v14;
  v13[6] = v14;
  v13[7] = v14;
  v15 = (v13 + 2 * a2);
  v16 = vdupq_laneq_s16(v5, 5);
  *v15 = v16;
  v15[1] = v16;
  v15[2] = v16;
  v15[3] = v16;
  v15[4] = v16;
  v15[5] = v16;
  v15[6] = v16;
  v15[7] = v16;
  v17 = vdupq_laneq_s16(v5, 6);
  v18 = (v13 + 4 * a2);
  *v18 = v17;
  v18[1] = v17;
  v18[2] = v17;
  v18[3] = v17;
  v18[4] = v17;
  v18[5] = v17;
  v18[6] = v17;
  v18[7] = v17;
  v19 = (v13 + 6 * a2);
  v20 = vdupq_laneq_s16(v5, 7);
  *v19 = v20;
  v19[1] = v20;
  v19[2] = v20;
  v19[3] = v20;
  v19[4] = v20;
  v19[5] = v20;
  v19[6] = v20;
  v19[7] = v20;
  v21 = &a1[a2];
  v22 = vdupq_lane_s16(*v4.i8, 0);
  *v21 = v22;
  v21[1] = v22;
  v21[2] = v22;
  v21[3] = v22;
  v21[4] = v22;
  v21[5] = v22;
  v21[6] = v22;
  v21[7] = v22;
  v23 = (v21 + 2 * a2);
  v24 = vdupq_lane_s16(*v4.i8, 1);
  *v23 = v24;
  v23[1] = v24;
  v23[2] = v24;
  v23[3] = v24;
  v23[4] = v24;
  v23[5] = v24;
  v23[6] = v24;
  v23[7] = v24;
  v25 = (v21 + 4 * a2);
  v26 = vdupq_lane_s16(*v4.i8, 2);
  *v25 = v26;
  v25[1] = v26;
  v25[2] = v26;
  v25[3] = v26;
  v25[4] = v26;
  v25[5] = v26;
  v25[6] = v26;
  v25[7] = v26;
  v27 = (v21 + 6 * a2);
  v28 = vdupq_lane_s16(*v4.i8, 3);
  *v27 = v28;
  v27[1] = v28;
  v27[2] = v28;
  v27[3] = v28;
  v27[4] = v28;
  v27[5] = v28;
  v27[6] = v28;
  v27[7] = v28;
  v29 = vdupq_laneq_s16(v4, 4);
  v30 = (a1 + 24 * a2);
  *v30 = v29;
  v30[1] = v29;
  v30[2] = v29;
  v30[3] = v29;
  v30[4] = v29;
  v30[5] = v29;
  v30[6] = v29;
  v30[7] = v29;
  v31 = (v30 + 2 * a2);
  v32 = vdupq_laneq_s16(v4, 5);
  *v31 = v32;
  v31[1] = v32;
  v31[2] = v32;
  v31[3] = v32;
  v31[4] = v32;
  v31[5] = v32;
  v31[6] = v32;
  v31[7] = v32;
  v33 = (v30 + 4 * a2);
  v34 = vdupq_laneq_s16(v4, 6);
  *v33 = v34;
  v33[1] = v34;
  v33[2] = v34;
  v33[3] = v34;
  v33[4] = v34;
  v33[5] = v34;
  v33[6] = v34;
  v33[7] = v34;
  v35 = (v30 + 6 * a2);
  result = vdupq_laneq_s16(v4, 7);
  *v35 = result;
  v35[1] = result;
  v35[2] = result;
  v35[3] = result;
  v35[4] = result;
  v35[5] = result;
  v35[6] = result;
  v35[7] = result;
  return result;
}

int16x8_t *sub_277B9005C(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 2 * a2;
  v5 = 1;
  do
  {
    v7 = *a4;
    v6 = a4[1];
    a4 += 2;
    v8 = vdupq_lane_s16(*v7.i8, 0);
    *result = v8;
    result[1] = v8;
    result[2] = v8;
    result[3] = v8;
    result[4] = v8;
    result[5] = v8;
    v9 = vdupq_lane_s16(*v7.i8, 1);
    result[6] = v8;
    result[7] = v8;
    v10 = (result + v4);
    *v10 = v9;
    v10[1] = v9;
    v10[2] = v9;
    v10[3] = v9;
    v10[4] = v9;
    v10[5] = v9;
    v10[6] = v9;
    v10[7] = v9;
    v11 = vdupq_lane_s16(*v7.i8, 2);
    v12 = v5;
    v13 = (result + v4 + v4);
    *v13 = v11;
    v13[1] = v11;
    v13[2] = v11;
    v13[3] = v11;
    v13[4] = v11;
    v13[5] = v11;
    v13[6] = v11;
    v13[7] = v11;
    v14 = vdupq_lane_s16(*v7.i8, 3);
    v15 = (v13 + v4);
    *v15 = v14;
    v15[1] = v14;
    v15[2] = v14;
    v15[3] = v14;
    v15[4] = v14;
    v15[5] = v14;
    v15[6] = v14;
    v15[7] = v14;
    v16 = vdupq_laneq_s16(v7, 4);
    v17 = (v15 + v4);
    *v17 = v16;
    v17[1] = v16;
    v17[2] = v16;
    v17[3] = v16;
    v17[4] = v16;
    v17[5] = v16;
    v17[6] = v16;
    v17[7] = v16;
    v18 = vdupq_laneq_s16(v7, 5);
    v19 = (v17 + v4);
    *v19 = v18;
    v19[1] = v18;
    v19[2] = v18;
    v19[3] = v18;
    v19[4] = v18;
    v19[5] = v18;
    v19[6] = v18;
    v19[7] = v18;
    v20 = vdupq_laneq_s16(v7, 6);
    v21 = (v19 + v4);
    *v21 = v20;
    v21[1] = v20;
    v21[2] = v20;
    v21[3] = v20;
    v21[4] = v20;
    v21[5] = v20;
    v21[6] = v20;
    v21[7] = v20;
    v22 = vdupq_laneq_s16(v7, 7);
    v23 = (v21 + v4);
    *v23 = v22;
    v23[1] = v22;
    v23[2] = v22;
    v23[3] = v22;
    v23[4] = v22;
    v23[5] = v22;
    v24 = vdupq_lane_s16(*v6.i8, 0);
    v23[6] = v22;
    v23[7] = v22;
    v25 = (v23 + v4);
    *v25 = v24;
    v25[1] = v24;
    v25[2] = v24;
    v25[3] = v24;
    v25[4] = v24;
    v25[5] = v24;
    v25[6] = v24;
    v25[7] = v24;
    v26 = vdupq_lane_s16(*v6.i8, 1);
    v27 = (v25 + v4);
    *v27 = v26;
    v27[1] = v26;
    v27[2] = v26;
    v27[3] = v26;
    v27[4] = v26;
    v27[5] = v26;
    v27[6] = v26;
    v27[7] = v26;
    v28 = vdupq_lane_s16(*v6.i8, 2);
    v29 = (v27 + v4);
    *v29 = v28;
    v29[1] = v28;
    v29[2] = v28;
    v29[3] = v28;
    v29[4] = v28;
    v29[5] = v28;
    v29[6] = v28;
    v29[7] = v28;
    v30 = vdupq_lane_s16(*v6.i8, 3);
    v31 = (v29 + v4);
    *v31 = v30;
    v31[1] = v30;
    v31[2] = v30;
    v31[3] = v30;
    v31[4] = v30;
    v31[5] = v30;
    v31[6] = v30;
    v31[7] = v30;
    v32 = vdupq_laneq_s16(v6, 4);
    v33 = (v31 + v4);
    *v33 = v32;
    v33[1] = v32;
    v33[2] = v32;
    v33[3] = v32;
    v33[4] = v32;
    v33[5] = v32;
    v33[6] = v32;
    v33[7] = v32;
    v34 = vdupq_laneq_s16(v6, 5);
    v35 = (v33 + v4);
    *v35 = v34;
    v35[1] = v34;
    v35[2] = v34;
    v35[3] = v34;
    v35[4] = v34;
    v35[5] = v34;
    v36 = vdupq_laneq_s16(v6, 6);
    v35[6] = v34;
    v35[7] = v34;
    v37 = (v35 + v4);
    *v37 = v36;
    v37[1] = v36;
    v37[2] = v36;
    v37[3] = v36;
    v37[4] = v36;
    v37[5] = v36;
    v37[6] = v36;
    v37[7] = v36;
    v38 = vdupq_laneq_s16(v6, 7);
    v39 = (v37 + v4);
    *v39 = v38;
    v39[1] = v38;
    v39[2] = v38;
    v39[3] = v38;
    v39[4] = v38;
    v39[5] = v38;
    result = (v39 + v4);
    v39[6] = v38;
    v39[7] = v38;
    v5 = 0;
  }

  while ((v12 & 1) != 0);
  return result;
}

int16x8_t *sub_277B901F8(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 2 * a2;
  do
  {
    v7 = *(a4 + v4);
    v6 = *(a4 + v4 + 16);
    v8 = vdupq_lane_s16(*v7.i8, 0);
    *result = v8;
    result[1] = v8;
    result[2] = v8;
    result[3] = v8;
    result[4] = v8;
    result[5] = v8;
    result[6] = v8;
    result[7] = v8;
    v9 = vdupq_lane_s16(*v7.i8, 1);
    v10 = (result + v5);
    *v10 = v9;
    v10[1] = v9;
    v10[2] = v9;
    v10[3] = v9;
    v10[4] = v9;
    v10[5] = v9;
    v11 = vdupq_lane_s16(*v7.i8, 2);
    v10[6] = v9;
    v10[7] = v9;
    v12 = (result + v5 + v5);
    *v12 = v11;
    v12[1] = v11;
    v12[2] = v11;
    v12[3] = v11;
    v12[4] = v11;
    v12[5] = v11;
    v12[6] = v11;
    v12[7] = v11;
    v13 = vdupq_lane_s16(*v7.i8, 3);
    v14 = (v12 + v5);
    *v14 = v13;
    v14[1] = v13;
    v14[2] = v13;
    v14[3] = v13;
    v14[4] = v13;
    v14[5] = v13;
    v14[6] = v13;
    v14[7] = v13;
    v15 = vdupq_laneq_s16(v7, 4);
    v16 = (v14 + v5);
    *v16 = v15;
    v16[1] = v15;
    v16[2] = v15;
    v16[3] = v15;
    v16[4] = v15;
    v16[5] = v15;
    v16[6] = v15;
    v16[7] = v15;
    v17 = vdupq_laneq_s16(v7, 5);
    v18 = (v16 + v5);
    *v18 = v17;
    v18[1] = v17;
    v18[2] = v17;
    v18[3] = v17;
    v18[4] = v17;
    v18[5] = v17;
    v18[6] = v17;
    v18[7] = v17;
    v19 = vdupq_laneq_s16(v7, 6);
    v20 = (v18 + v5);
    *v20 = v19;
    v20[1] = v19;
    v20[2] = v19;
    v20[3] = v19;
    v20[4] = v19;
    v20[5] = v19;
    v20[6] = v19;
    v20[7] = v19;
    v21 = vdupq_laneq_s16(v7, 7);
    v22 = (v20 + v5);
    *v22 = v21;
    v22[1] = v21;
    v22[2] = v21;
    v22[3] = v21;
    v22[4] = v21;
    v22[5] = v21;
    v23 = vdupq_lane_s16(*v6.i8, 0);
    v22[6] = v21;
    v22[7] = v21;
    v24 = (v22 + v5);
    *v24 = v23;
    v24[1] = v23;
    v24[2] = v23;
    v24[3] = v23;
    v24[4] = v23;
    v24[5] = v23;
    v24[6] = v23;
    v24[7] = v23;
    v25 = vdupq_lane_s16(*v6.i8, 1);
    v26 = (v24 + v5);
    *v26 = v25;
    v26[1] = v25;
    v26[2] = v25;
    v26[3] = v25;
    v26[4] = v25;
    v26[5] = v25;
    v26[6] = v25;
    v26[7] = v25;
    v27 = vdupq_lane_s16(*v6.i8, 2);
    v28 = (v26 + v5);
    *v28 = v27;
    v28[1] = v27;
    v28[2] = v27;
    v28[3] = v27;
    v28[4] = v27;
    v28[5] = v27;
    v28[6] = v27;
    v28[7] = v27;
    v29 = vdupq_lane_s16(*v6.i8, 3);
    v30 = (v28 + v5);
    *v30 = v29;
    v30[1] = v29;
    v30[2] = v29;
    v30[3] = v29;
    v30[4] = v29;
    v30[5] = v29;
    v30[6] = v29;
    v30[7] = v29;
    v31 = vdupq_laneq_s16(v6, 4);
    v32 = (v30 + v5);
    *v32 = v31;
    v32[1] = v31;
    v32[2] = v31;
    v32[3] = v31;
    v32[4] = v31;
    v32[5] = v31;
    v32[6] = v31;
    v32[7] = v31;
    v33 = vdupq_laneq_s16(v6, 5);
    v34 = (v32 + v5);
    *v34 = v33;
    v34[1] = v33;
    v34[2] = v33;
    v34[3] = v33;
    v34[4] = v33;
    v34[5] = v33;
    v35 = vdupq_laneq_s16(v6, 6);
    v34[6] = v33;
    v34[7] = v33;
    v36 = (v34 + v5);
    *v36 = v35;
    v36[1] = v35;
    v36[2] = v35;
    v36[3] = v35;
    v36[4] = v35;
    v36[5] = v35;
    v36[6] = v35;
    v36[7] = v35;
    v37 = vdupq_laneq_s16(v6, 7);
    v38 = (v36 + v5);
    *v38 = v37;
    v38[1] = v37;
    v38[2] = v37;
    v38[3] = v37;
    v38[4] = v37;
    v38[5] = v37;
    v4 += 32;
    result = (v38 + v5);
    v38[6] = v37;
    v38[7] = v37;
  }

  while (v4 != 128);
  return result;
}

int8x8_t *sub_277B90398(int8x8_t *result, uint64_t a2, unint64_t *a3, uint64_t a4, double a5, double a6, uint16x8_t a7)
{
  v7 = 0;
  v8 = *(a3 - 1);
  v9 = vdupq_n_s16(v8);
  v10 = vdupq_n_s16(2 * v8);
  a7.i64[0] = *a3;
  v11 = vabdq_u16(a7, v9);
  do
  {
    v12 = (a4 + v7);
    v13 = vld1q_dup_s16(v12);
    v14 = vabdq_u16(v13, v9);
    v15 = vabdq_u16(vaddq_s16(v13, a7), v10);
    v16 = vcgtq_u16(v14, v15);
    v17 = vcgtq_u16(v11, vminq_u16(v15, v14));
    *result = vorr_s8(vand_s8(vand_s8(*v9.i8, *v16.i8), *v17.i8), *&vbslq_s8(v17, vbicq_s8(a7, v16), v13));
    v7 += 2;
    result = (result + 2 * a2);
  }

  while (v7 != 8);
  return result;
}

int8x8_t *sub_277B90404(int8x8_t *result, uint64_t a2, unint64_t *a3, uint64_t a4, double a5, double a6, uint16x8_t a7)
{
  v7 = 0;
  v8 = *(a3 - 1);
  v9 = vdupq_n_s16(v8);
  v10 = vdupq_n_s16(2 * v8);
  a7.i64[0] = *a3;
  v11 = vabdq_u16(a7, v9);
  do
  {
    v12 = (a4 + v7);
    v13 = vld1q_dup_s16(v12);
    v14 = vabdq_u16(v13, v9);
    v15 = vabdq_u16(vaddq_s16(v13, a7), v10);
    v16 = vcgtq_u16(v14, v15);
    v17 = vcgtq_u16(v11, vminq_u16(v15, v14));
    *result = vorr_s8(vand_s8(vand_s8(*v9.i8, *v16.i8), *v17.i8), *&vbslq_s8(v17, vbicq_s8(a7, v16), v13));
    v7 += 2;
    result = (result + 2 * a2);
  }

  while (v7 != 16);
  return result;
}

int8x8_t *sub_277B90470(int8x8_t *result, uint64_t a2, unint64_t *a3, uint64_t a4, double a5, double a6, uint16x8_t a7)
{
  v7 = 0;
  v8 = *(a3 - 1);
  v9 = vdupq_n_s16(v8);
  v10 = vdupq_n_s16(2 * v8);
  a7.i64[0] = *a3;
  v11 = vabdq_u16(a7, v9);
  do
  {
    v12 = (a4 + v7);
    v13 = vld1q_dup_s16(v12);
    v14 = vabdq_u16(v13, v9);
    v15 = vabdq_u16(vaddq_s16(v13, a7), v10);
    v16 = vcgtq_u16(v14, v15);
    v17 = vcgtq_u16(v11, vminq_u16(v15, v14));
    *result = vorr_s8(vand_s8(vand_s8(*v9.i8, *v16.i8), *v17.i8), *&vbslq_s8(v17, vbicq_s8(a7, v16), v13));
    v7 += 2;
    result = (result + 2 * a2);
  }

  while (v7 != 32);
  return result;
}

int8x16_t *sub_277B904DC(int8x16_t *result, uint64_t a2, uint16x8_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabdq_u16(*a3, v6);
  do
  {
    v10 = (a4 + v4);
    v11 = vld1q_dup_s16(v10);
    v12 = vabdq_u16(v11, v6);
    v13 = vabdq_u16(vaddq_s16(v11, v8), v7);
    v14 = vcgtq_u16(v12, v13);
    v15 = vcgtq_u16(v9, vminq_u16(v13, v12));
    *result = vorrq_s8(vandq_s8(vandq_s8(v6, v14), v15), vbslq_s8(v15, vbicq_s8(v8, v14), v11));
    v4 += 2;
    result = (result + 2 * a2);
  }

  while (v4 != 8);
  return result;
}

int8x16_t *sub_277B90548(int8x16_t *result, uint64_t a2, uint16x8_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabdq_u16(*a3, v6);
  do
  {
    v10 = (a4 + v4);
    v11 = vld1q_dup_s16(v10);
    v12 = vabdq_u16(v11, v6);
    v13 = vabdq_u16(vaddq_s16(v11, v8), v7);
    v14 = vcgtq_u16(v12, v13);
    v15 = vcgtq_u16(v9, vminq_u16(v13, v12));
    *result = vorrq_s8(vandq_s8(vandq_s8(v6, v14), v15), vbslq_s8(v15, vbicq_s8(v8, v14), v11));
    v4 += 2;
    result = (result + 2 * a2);
  }

  while (v4 != 16);
  return result;
}

int8x16_t *sub_277B905B4(int8x16_t *result, uint64_t a2, uint16x8_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabdq_u16(*a3, v6);
  do
  {
    v10 = (a4 + v4);
    v11 = vld1q_dup_s16(v10);
    v12 = vabdq_u16(v11, v6);
    v13 = vabdq_u16(vaddq_s16(v11, v8), v7);
    v14 = vcgtq_u16(v12, v13);
    v15 = vcgtq_u16(v9, vminq_u16(v13, v12));
    *result = vorrq_s8(vandq_s8(vandq_s8(v6, v14), v15), vbslq_s8(v15, vbicq_s8(v8, v14), v11));
    v4 += 2;
    result = (result + 2 * a2);
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B90620(int8x16_t *result, uint64_t a2, uint16x8_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabdq_u16(*a3, v6);
  do
  {
    v10 = (a4 + v4);
    v11 = vld1q_dup_s16(v10);
    v12 = vabdq_u16(v11, v6);
    v13 = vabdq_u16(vaddq_s16(v11, v8), v7);
    v14 = vcgtq_u16(v12, v13);
    v15 = vcgtq_u16(v9, vminq_u16(v13, v12));
    *result = vorrq_s8(vandq_s8(vandq_s8(v6, v14), v15), vbslq_s8(v15, vbicq_s8(v8, v14), v11));
    v4 += 2;
    result = (result + 2 * a2);
  }

  while (v4 != 64);
  return result;
}

int8x16_t *sub_277B9068C(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = vabdq_u16(*a3, v6);
  v11 = vabdq_u16(v9, v6);
  v12 = result + 1;
  do
  {
    v13 = (a4 + v4);
    v14 = vld1q_dup_s16(v13);
    v15 = vabdq_u16(v14, v6);
    v16 = vabdq_u16(vaddq_s16(v14, v8), v7);
    v17 = vcgtq_u16(v15, v16);
    v18 = vcgtq_u16(v10, vminq_u16(v16, v15));
    v19 = vorrq_s8(vandq_s8(vandq_s8(v6, v17), v18), vbslq_s8(v18, vbicq_s8(v8, v17), v14));
    v20 = vabdq_u16(vaddq_s16(v14, v9), v7);
    v21 = vcgtq_u16(v15, v20);
    v22 = vcgtq_u16(v11, vminq_u16(v20, v15));
    v12[-1] = v19;
    *v12 = vorrq_s8(vandq_s8(vandq_s8(v6, v21), v22), vbslq_s8(v22, vbicq_s8(v9, v21), v14));
    v4 += 2;
    v12 = (v12 + 2 * a2);
  }

  while (v4 != 8);
  return result;
}

int8x16_t *sub_277B90728(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = vabdq_u16(*a3, v6);
  v11 = vabdq_u16(v9, v6);
  v12 = result + 1;
  do
  {
    v13 = (a4 + v4);
    v14 = vld1q_dup_s16(v13);
    v15 = vabdq_u16(v14, v6);
    v16 = vabdq_u16(vaddq_s16(v14, v8), v7);
    v17 = vcgtq_u16(v15, v16);
    v18 = vcgtq_u16(v10, vminq_u16(v16, v15));
    v19 = vorrq_s8(vandq_s8(vandq_s8(v6, v17), v18), vbslq_s8(v18, vbicq_s8(v8, v17), v14));
    v20 = vabdq_u16(vaddq_s16(v14, v9), v7);
    v21 = vcgtq_u16(v15, v20);
    v22 = vcgtq_u16(v11, vminq_u16(v20, v15));
    v12[-1] = v19;
    *v12 = vorrq_s8(vandq_s8(vandq_s8(v6, v21), v22), vbslq_s8(v22, vbicq_s8(v9, v21), v14));
    v4 += 2;
    v12 = (v12 + 2 * a2);
  }

  while (v4 != 16);
  return result;
}

int8x16_t *sub_277B907C4(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = vabdq_u16(*a3, v6);
  v11 = vabdq_u16(v9, v6);
  v12 = result + 1;
  do
  {
    v13 = (a4 + v4);
    v14 = vld1q_dup_s16(v13);
    v15 = vabdq_u16(v14, v6);
    v16 = vabdq_u16(vaddq_s16(v14, v8), v7);
    v17 = vcgtq_u16(v15, v16);
    v18 = vcgtq_u16(v10, vminq_u16(v16, v15));
    v19 = vorrq_s8(vandq_s8(vandq_s8(v6, v17), v18), vbslq_s8(v18, vbicq_s8(v8, v17), v14));
    v20 = vabdq_u16(vaddq_s16(v14, v9), v7);
    v21 = vcgtq_u16(v15, v20);
    v22 = vcgtq_u16(v11, vminq_u16(v20, v15));
    v12[-1] = v19;
    *v12 = vorrq_s8(vandq_s8(vandq_s8(v6, v21), v22), vbslq_s8(v22, vbicq_s8(v9, v21), v14));
    v4 += 2;
    v12 = (v12 + 2 * a2);
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B90860(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = vabdq_u16(*a3, v6);
  v11 = vabdq_u16(v9, v6);
  v12 = result + 1;
  do
  {
    v13 = (a4 + v4);
    v14 = vld1q_dup_s16(v13);
    v15 = vabdq_u16(v14, v6);
    v16 = vabdq_u16(vaddq_s16(v14, v8), v7);
    v17 = vcgtq_u16(v15, v16);
    v18 = vcgtq_u16(v10, vminq_u16(v16, v15));
    v19 = vorrq_s8(vandq_s8(vandq_s8(v6, v17), v18), vbslq_s8(v18, vbicq_s8(v8, v17), v14));
    v20 = vabdq_u16(vaddq_s16(v14, v9), v7);
    v21 = vcgtq_u16(v15, v20);
    v22 = vcgtq_u16(v11, vminq_u16(v20, v15));
    v12[-1] = v19;
    *v12 = vorrq_s8(vandq_s8(vandq_s8(v6, v21), v22), vbslq_s8(v22, vbicq_s8(v9, v21), v14));
    v4 += 2;
    v12 = (v12 + 2 * a2);
  }

  while (v4 != 64);
  return result;
}

int8x16_t *sub_277B908FC(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = vabdq_u16(*a3, v6);
  v11 = vabdq_u16(v9, v6);
  v12 = result + 1;
  do
  {
    v13 = (a4 + v4);
    v14 = vld1q_dup_s16(v13);
    v15 = vabdq_u16(v14, v6);
    v16 = vabdq_u16(vaddq_s16(v14, v8), v7);
    v17 = vcgtq_u16(v15, v16);
    v18 = vcgtq_u16(v10, vminq_u16(v16, v15));
    v19 = vorrq_s8(vandq_s8(vandq_s8(v6, v17), v18), vbslq_s8(v18, vbicq_s8(v8, v17), v14));
    v20 = vabdq_u16(vaddq_s16(v14, v9), v7);
    v21 = vcgtq_u16(v15, v20);
    v22 = vcgtq_u16(v11, vminq_u16(v20, v15));
    v12[-1] = v19;
    *v12 = vorrq_s8(vandq_s8(vandq_s8(v6, v21), v22), vbslq_s8(v22, vbicq_s8(v9, v21), v14));
    v4 += 2;
    v12 = (v12 + 2 * a2);
  }

  while (v4 != 128);
  return result;
}

int8x16_t *sub_277B90998(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = vabdq_u16(*a3, v6);
  v13 = vabdq_u16(v9, v6);
  v14 = vabdq_u16(v10, v6);
  v15 = vabdq_u16(v11, v6);
  v16 = result + 2;
  do
  {
    v17 = (a4 + v4);
    v18 = vld1q_dup_s16(v17);
    v19 = vabdq_u16(v18, v6);
    v20 = vabdq_u16(vaddq_s16(v18, v8), v7);
    v21 = vcgtq_u16(v19, v20);
    v22 = vcgtq_u16(v12, vminq_u16(v20, v19));
    v23 = vorrq_s8(vandq_s8(vandq_s8(v6, v21), v22), vbslq_s8(v22, vbicq_s8(v8, v21), v18));
    v24 = vabdq_u16(vaddq_s16(v18, v9), v7);
    v25 = vcgtq_u16(v19, v24);
    v26 = vcgtq_u16(v13, vminq_u16(v24, v19));
    v16[-2] = v23;
    v16[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v25), v26), vbslq_s8(v26, vbicq_s8(v9, v25), v18));
    v27 = vabdq_u16(vaddq_s16(v18, v10), v7);
    v28 = vcgtq_u16(v19, v27);
    v29 = vcgtq_u16(v14, vminq_u16(v27, v19));
    v30 = vorrq_s8(vandq_s8(vandq_s8(v6, v28), v29), vbslq_s8(v29, vbicq_s8(v10, v28), v18));
    v31 = vabdq_u16(vaddq_s16(v18, v11), v7);
    v32 = vcgtq_u16(v19, v31);
    v33 = vcgtq_u16(v15, vminq_u16(v31, v19));
    *v16 = v30;
    v16[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v32), v33), vbslq_s8(v33, vbicq_s8(v11, v32), v18));
    v4 += 2;
    v16 = (v16 + 2 * a2);
  }

  while (v4 != 16);
  return result;
}

int8x16_t *sub_277B90A94(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = vabdq_u16(*a3, v6);
  v13 = vabdq_u16(v9, v6);
  v14 = vabdq_u16(v10, v6);
  v15 = vabdq_u16(v11, v6);
  v16 = result + 2;
  do
  {
    v17 = (a4 + v4);
    v18 = vld1q_dup_s16(v17);
    v19 = vabdq_u16(v18, v6);
    v20 = vabdq_u16(vaddq_s16(v18, v8), v7);
    v21 = vcgtq_u16(v19, v20);
    v22 = vcgtq_u16(v12, vminq_u16(v20, v19));
    v23 = vorrq_s8(vandq_s8(vandq_s8(v6, v21), v22), vbslq_s8(v22, vbicq_s8(v8, v21), v18));
    v24 = vabdq_u16(vaddq_s16(v18, v9), v7);
    v25 = vcgtq_u16(v19, v24);
    v26 = vcgtq_u16(v13, vminq_u16(v24, v19));
    v16[-2] = v23;
    v16[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v25), v26), vbslq_s8(v26, vbicq_s8(v9, v25), v18));
    v27 = vabdq_u16(vaddq_s16(v18, v10), v7);
    v28 = vcgtq_u16(v19, v27);
    v29 = vcgtq_u16(v14, vminq_u16(v27, v19));
    v30 = vorrq_s8(vandq_s8(vandq_s8(v6, v28), v29), vbslq_s8(v29, vbicq_s8(v10, v28), v18));
    v31 = vabdq_u16(vaddq_s16(v18, v11), v7);
    v32 = vcgtq_u16(v19, v31);
    v33 = vcgtq_u16(v15, vminq_u16(v31, v19));
    *v16 = v30;
    v16[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v32), v33), vbslq_s8(v33, vbicq_s8(v11, v32), v18));
    v4 += 2;
    v16 = (v16 + 2 * a2);
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B90B90(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = vabdq_u16(*a3, v6);
  v13 = vabdq_u16(v9, v6);
  v14 = vabdq_u16(v10, v6);
  v15 = vabdq_u16(v11, v6);
  v16 = result + 2;
  do
  {
    v17 = (a4 + v4);
    v18 = vld1q_dup_s16(v17);
    v19 = vabdq_u16(v18, v6);
    v20 = vabdq_u16(vaddq_s16(v18, v8), v7);
    v21 = vcgtq_u16(v19, v20);
    v22 = vcgtq_u16(v12, vminq_u16(v20, v19));
    v23 = vorrq_s8(vandq_s8(vandq_s8(v6, v21), v22), vbslq_s8(v22, vbicq_s8(v8, v21), v18));
    v24 = vabdq_u16(vaddq_s16(v18, v9), v7);
    v25 = vcgtq_u16(v19, v24);
    v26 = vcgtq_u16(v13, vminq_u16(v24, v19));
    v16[-2] = v23;
    v16[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v25), v26), vbslq_s8(v26, vbicq_s8(v9, v25), v18));
    v27 = vabdq_u16(vaddq_s16(v18, v10), v7);
    v28 = vcgtq_u16(v19, v27);
    v29 = vcgtq_u16(v14, vminq_u16(v27, v19));
    v30 = vorrq_s8(vandq_s8(vandq_s8(v6, v28), v29), vbslq_s8(v29, vbicq_s8(v10, v28), v18));
    v31 = vabdq_u16(vaddq_s16(v18, v11), v7);
    v32 = vcgtq_u16(v19, v31);
    v33 = vcgtq_u16(v15, vminq_u16(v31, v19));
    *v16 = v30;
    v16[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v32), v33), vbslq_s8(v33, vbicq_s8(v11, v32), v18));
    v4 += 2;
    v16 = (v16 + 2 * a2);
  }

  while (v4 != 64);
  return result;
}

int8x16_t *sub_277B90C8C(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = vabdq_u16(*a3, v6);
  v13 = vabdq_u16(v9, v6);
  v14 = vabdq_u16(v10, v6);
  v15 = vabdq_u16(v11, v6);
  v16 = result + 2;
  do
  {
    v17 = (a4 + v4);
    v18 = vld1q_dup_s16(v17);
    v19 = vabdq_u16(v18, v6);
    v20 = vabdq_u16(vaddq_s16(v18, v8), v7);
    v21 = vcgtq_u16(v19, v20);
    v22 = vcgtq_u16(v12, vminq_u16(v20, v19));
    v23 = vorrq_s8(vandq_s8(vandq_s8(v6, v21), v22), vbslq_s8(v22, vbicq_s8(v8, v21), v18));
    v24 = vabdq_u16(vaddq_s16(v18, v9), v7);
    v25 = vcgtq_u16(v19, v24);
    v26 = vcgtq_u16(v13, vminq_u16(v24, v19));
    v16[-2] = v23;
    v16[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v25), v26), vbslq_s8(v26, vbicq_s8(v9, v25), v18));
    v27 = vabdq_u16(vaddq_s16(v18, v10), v7);
    v28 = vcgtq_u16(v19, v27);
    v29 = vcgtq_u16(v14, vminq_u16(v27, v19));
    v30 = vorrq_s8(vandq_s8(vandq_s8(v6, v28), v29), vbslq_s8(v29, vbicq_s8(v10, v28), v18));
    v31 = vabdq_u16(vaddq_s16(v18, v11), v7);
    v32 = vcgtq_u16(v19, v31);
    v33 = vcgtq_u16(v15, vminq_u16(v31, v19));
    *v16 = v30;
    v16[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v32), v33), vbslq_s8(v33, vbicq_s8(v11, v32), v18));
    v4 += 2;
    v16 = (v16 + 2 * a2);
  }

  while (v4 != 128);
  return result;
}

int8x16_t *sub_277B90D88(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a3[6];
  v15 = a3[7];
  v16 = vabdq_u16(*a3, v6);
  v17 = vabdq_u16(v9, v6);
  v18 = vabdq_u16(v10, v6);
  v19 = vabdq_u16(v11, v6);
  v20 = vabdq_u16(v12, v6);
  v21 = vabdq_u16(v13, v6);
  v22 = vabdq_u16(v14, v6);
  v23 = vabdq_u16(v15, v6);
  v24 = result + 4;
  do
  {
    v25 = (a4 + v4);
    v26 = vld1q_dup_s16(v25);
    v27 = vabdq_u16(v26, v6);
    v28 = vabdq_u16(vaddq_s16(v26, v8), v7);
    v29 = vcgtq_u16(v27, v28);
    v30 = vcgtq_u16(v16, vminq_u16(v28, v27));
    v31 = vorrq_s8(vandq_s8(vandq_s8(v6, v29), v30), vbslq_s8(v30, vbicq_s8(v8, v29), v26));
    v32 = vabdq_u16(vaddq_s16(v26, v9), v7);
    v33 = vcgtq_u16(v27, v32);
    v34 = vcgtq_u16(v17, vminq_u16(v32, v27));
    v24[-4] = v31;
    v24[-3] = vorrq_s8(vandq_s8(vandq_s8(v6, v33), v34), vbslq_s8(v34, vbicq_s8(v9, v33), v26));
    v35 = vabdq_u16(vaddq_s16(v26, v10), v7);
    v36 = vcgtq_u16(v27, v35);
    v37 = vcgtq_u16(v18, vminq_u16(v35, v27));
    v38 = vorrq_s8(vandq_s8(vandq_s8(v6, v36), v37), vbslq_s8(v37, vbicq_s8(v10, v36), v26));
    v39 = vabdq_u16(vaddq_s16(v26, v11), v7);
    v40 = vcgtq_u16(v27, v39);
    v41 = vcgtq_u16(v19, vminq_u16(v39, v27));
    v24[-2] = v38;
    v24[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v40), v41), vbslq_s8(v41, vbicq_s8(v11, v40), v26));
    v42 = vabdq_u16(vaddq_s16(v26, v12), v7);
    v43 = vcgtq_u16(v27, v42);
    v44 = vcgtq_u16(v20, vminq_u16(v42, v27));
    v45 = vorrq_s8(vandq_s8(vandq_s8(v6, v43), v44), vbslq_s8(v44, vbicq_s8(v12, v43), v26));
    v46 = vabdq_u16(vaddq_s16(v26, v13), v7);
    v47 = vcgtq_u16(v27, v46);
    v48 = vcgtq_u16(v21, vminq_u16(v46, v27));
    *v24 = v45;
    v24[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v47), v48), vbslq_s8(v48, vbicq_s8(v13, v47), v26));
    v49 = vabdq_u16(vaddq_s16(v26, v14), v7);
    v50 = vcgtq_u16(v27, v49);
    v51 = vcgtq_u16(v22, vminq_u16(v49, v27));
    v52 = vorrq_s8(vandq_s8(vandq_s8(v6, v50), v51), vbslq_s8(v51, vbicq_s8(v14, v50), v26));
    v53 = vabdq_u16(vaddq_s16(v26, v15), v7);
    v54 = vcgtq_u16(v27, v53);
    v55 = vcgtq_u16(v23, vminq_u16(v53, v27));
    v24[2] = v52;
    v24[3] = vorrq_s8(vandq_s8(vandq_s8(v6, v54), v55), vbslq_s8(v55, vbicq_s8(v15, v54), v26));
    v4 += 2;
    v24 = (v24 + 2 * a2);
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B90F44(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a3[6];
  v15 = a3[7];
  v16 = vabdq_u16(*a3, v6);
  v17 = vabdq_u16(v9, v6);
  v18 = vabdq_u16(v10, v6);
  v19 = vabdq_u16(v11, v6);
  v20 = vabdq_u16(v12, v6);
  v21 = vabdq_u16(v13, v6);
  v22 = vabdq_u16(v14, v6);
  v23 = vabdq_u16(v15, v6);
  v24 = result + 4;
  do
  {
    v25 = (a4 + v4);
    v26 = vld1q_dup_s16(v25);
    v27 = vabdq_u16(v26, v6);
    v28 = vabdq_u16(vaddq_s16(v26, v8), v7);
    v29 = vcgtq_u16(v27, v28);
    v30 = vcgtq_u16(v16, vminq_u16(v28, v27));
    v31 = vorrq_s8(vandq_s8(vandq_s8(v6, v29), v30), vbslq_s8(v30, vbicq_s8(v8, v29), v26));
    v32 = vabdq_u16(vaddq_s16(v26, v9), v7);
    v33 = vcgtq_u16(v27, v32);
    v34 = vcgtq_u16(v17, vminq_u16(v32, v27));
    v24[-4] = v31;
    v24[-3] = vorrq_s8(vandq_s8(vandq_s8(v6, v33), v34), vbslq_s8(v34, vbicq_s8(v9, v33), v26));
    v35 = vabdq_u16(vaddq_s16(v26, v10), v7);
    v36 = vcgtq_u16(v27, v35);
    v37 = vcgtq_u16(v18, vminq_u16(v35, v27));
    v38 = vorrq_s8(vandq_s8(vandq_s8(v6, v36), v37), vbslq_s8(v37, vbicq_s8(v10, v36), v26));
    v39 = vabdq_u16(vaddq_s16(v26, v11), v7);
    v40 = vcgtq_u16(v27, v39);
    v41 = vcgtq_u16(v19, vminq_u16(v39, v27));
    v24[-2] = v38;
    v24[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v40), v41), vbslq_s8(v41, vbicq_s8(v11, v40), v26));
    v42 = vabdq_u16(vaddq_s16(v26, v12), v7);
    v43 = vcgtq_u16(v27, v42);
    v44 = vcgtq_u16(v20, vminq_u16(v42, v27));
    v45 = vorrq_s8(vandq_s8(vandq_s8(v6, v43), v44), vbslq_s8(v44, vbicq_s8(v12, v43), v26));
    v46 = vabdq_u16(vaddq_s16(v26, v13), v7);
    v47 = vcgtq_u16(v27, v46);
    v48 = vcgtq_u16(v21, vminq_u16(v46, v27));
    *v24 = v45;
    v24[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v47), v48), vbslq_s8(v48, vbicq_s8(v13, v47), v26));
    v49 = vabdq_u16(vaddq_s16(v26, v14), v7);
    v50 = vcgtq_u16(v27, v49);
    v51 = vcgtq_u16(v22, vminq_u16(v49, v27));
    v52 = vorrq_s8(vandq_s8(vandq_s8(v6, v50), v51), vbslq_s8(v51, vbicq_s8(v14, v50), v26));
    v53 = vabdq_u16(vaddq_s16(v26, v15), v7);
    v54 = vcgtq_u16(v27, v53);
    v55 = vcgtq_u16(v23, vminq_u16(v53, v27));
    v24[2] = v52;
    v24[3] = vorrq_s8(vandq_s8(vandq_s8(v6, v54), v55), vbslq_s8(v55, vbicq_s8(v15, v54), v26));
    v4 += 2;
    v24 = (v24 + 2 * a2);
  }

  while (v4 != 64);
  return result;
}

int8x16_t *sub_277B91100(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u16[7];
  v6 = vdupq_n_s16(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a3[6];
  v15 = a3[7];
  v16 = vabdq_u16(*a3, v6);
  v17 = vabdq_u16(v9, v6);
  v18 = vabdq_u16(v10, v6);
  v19 = vabdq_u16(v11, v6);
  v20 = vabdq_u16(v12, v6);
  v21 = vabdq_u16(v13, v6);
  v22 = vabdq_u16(v14, v6);
  v23 = vabdq_u16(v15, v6);
  v24 = result + 4;
  do
  {
    v25 = (a4 + v4);
    v26 = vld1q_dup_s16(v25);
    v27 = vabdq_u16(v26, v6);
    v28 = vabdq_u16(vaddq_s16(v26, v8), v7);
    v29 = vcgtq_u16(v27, v28);
    v30 = vcgtq_u16(v16, vminq_u16(v28, v27));
    v31 = vorrq_s8(vandq_s8(vandq_s8(v6, v29), v30), vbslq_s8(v30, vbicq_s8(v8, v29), v26));
    v32 = vabdq_u16(vaddq_s16(v26, v9), v7);
    v33 = vcgtq_u16(v27, v32);
    v34 = vcgtq_u16(v17, vminq_u16(v32, v27));
    v24[-4] = v31;
    v24[-3] = vorrq_s8(vandq_s8(vandq_s8(v6, v33), v34), vbslq_s8(v34, vbicq_s8(v9, v33), v26));
    v35 = vabdq_u16(vaddq_s16(v26, v10), v7);
    v36 = vcgtq_u16(v27, v35);
    v37 = vcgtq_u16(v18, vminq_u16(v35, v27));
    v38 = vorrq_s8(vandq_s8(vandq_s8(v6, v36), v37), vbslq_s8(v37, vbicq_s8(v10, v36), v26));
    v39 = vabdq_u16(vaddq_s16(v26, v11), v7);
    v40 = vcgtq_u16(v27, v39);
    v41 = vcgtq_u16(v19, vminq_u16(v39, v27));
    v24[-2] = v38;
    v24[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v40), v41), vbslq_s8(v41, vbicq_s8(v11, v40), v26));
    v42 = vabdq_u16(vaddq_s16(v26, v12), v7);
    v43 = vcgtq_u16(v27, v42);
    v44 = vcgtq_u16(v20, vminq_u16(v42, v27));
    v45 = vorrq_s8(vandq_s8(vandq_s8(v6, v43), v44), vbslq_s8(v44, vbicq_s8(v12, v43), v26));
    v46 = vabdq_u16(vaddq_s16(v26, v13), v7);
    v47 = vcgtq_u16(v27, v46);
    v48 = vcgtq_u16(v21, vminq_u16(v46, v27));
    *v24 = v45;
    v24[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v47), v48), vbslq_s8(v48, vbicq_s8(v13, v47), v26));
    v49 = vabdq_u16(vaddq_s16(v26, v14), v7);
    v50 = vcgtq_u16(v27, v49);
    v51 = vcgtq_u16(v22, vminq_u16(v49, v27));
    v52 = vorrq_s8(vandq_s8(vandq_s8(v6, v50), v51), vbslq_s8(v51, vbicq_s8(v14, v50), v26));
    v53 = vabdq_u16(vaddq_s16(v26, v15), v7);
    v54 = vcgtq_u16(v27, v53);
    v55 = vcgtq_u16(v23, vminq_u16(v53, v27));
    v24[2] = v52;
    v24[3] = vorrq_s8(vandq_s8(vandq_s8(v6, v54), v55), vbslq_s8(v55, vbicq_s8(v15, v54), v26));
    v4 += 2;
    v24 = (v24 + 2 * a2);
  }

  while (v4 != 128);
  return result;
}

int16x4_t *sub_277B912BC(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, uint16x4_t a6)
{
  v6 = 0;
  v7 = a3 + 3;
  v8 = *a3;
  a6.i16[0] = *(a4 + 6);
  v9 = vld1_dup_s16(v7);
  v10 = vmull_u16(0xC000AB006B0001, v9);
  do
  {
    v11 = (a4 + v6 * 2);
    v12 = vld1_dup_s16(v11);
    *result = vrshrn_n_s32(vmlal_lane_u16(vmlal_u16(vmlal_u16(v10, v8, vdup_n_s16(word_277C3C800[v6])), 0x400055009500FFLL, v12), vdup_n_s16(256 - word_277C3C800[v6]), a6, 0), 9uLL);
    ++v6;
    result = (result + 2 * a2);
  }

  while (v6 != 4);
  return result;
}

int16x4_t *sub_277B91338(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, uint16x4_t a6)
{
  v6 = 0;
  v7 = a3 + 3;
  v8 = *a3;
  a6.i16[0] = *(a4 + 14);
  v9 = vld1_dup_s16(v7);
  v10 = vmull_u16(0xC000AB006B0001, v9);
  do
  {
    v11 = (a4 + v6 * 2);
    v12 = vld1_dup_s16(v11);
    *result = vrshrn_n_s32(vmlal_lane_u16(vmlal_u16(vmlal_u16(v10, v8, vdup_n_s16(word_277C3C800[v6 + 4])), 0x400055009500FFLL, v12), vdup_n_s16(256 - word_277C3C800[v6 + 4]), a6, 0), 9uLL);
    ++v6;
    result = (result + 2 * a2);
  }

  while (v6 != 8);
  return result;
}

int16x4_t *sub_277B913C0(int16x4_t *result, uint64_t a2, uint16x4_t *a3, const __int16 *a4, unsigned int a5, double a6, double a7, uint16x4_t a8)
{
  v8 = &a3[1] + 3;
  v9 = a5;
  v10 = &word_277C3C800[a5 - 4];
  v11 = *a3;
  v12 = a3[1];
  a8.i32[0] = a4[a5 - 1];
  v13 = vld1_dup_s16(v8);
  v14 = vmull_u16(0x97006E003B0001, v13);
  v15 = vmull_u16(0xE000DB00CE00B7, v13);
  v16 = result + 1;
  do
  {
    v17 = *v10++;
    v18 = vdup_n_s16(256 - v17);
    v19 = vmlal_lane_u16(v14, v18, a8, 0);
    v20 = vmlal_lane_u16(v15, v18, a8, 0);
    v21 = vdup_n_s16(v17);
    v22 = vld1_dup_s16(a4++);
    v16[-1] = vrshrn_n_s32(vmlal_u16(vmlal_u16(v19, v11, v21), 0x69009200C500FFLL, v22), 9uLL);
    *v16 = vrshrn_n_s32(vmlal_u16(vmlal_u16(v20, v12, v21), 0x20002500320049, v22), 9uLL);
    v16 = (v16 + 2 * a2);
    --v9;
  }

  while (v9);
  return result;
}

int16x4_t *sub_277B91478(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, uint16x4_t a6)
{
  v6 = 0;
  v7 = a3 + 3;
  v8 = *a3;
  a6.i16[0] = *(a4 + 30);
  v9 = vld1_dup_s16(v7);
  v10 = vmull_u16(0xC000AB006B0001, v9);
  do
  {
    v11 = (a4 + v6 * 2);
    v12 = vld1_dup_s16(v11);
    *result = vrshrn_n_s32(vmlal_lane_u16(vmlal_u16(vmlal_u16(v10, v8, vdup_n_s16(word_277C3C800[v6 + 12])), 0x400055009500FFLL, v12), vdup_n_s16(256 - word_277C3C800[v6 + 12]), a6, 0), 9uLL);
    ++v6;
    result = (result + 2 * a2);
  }

  while (v6 != 16);
  return result;
}

int16x4_t *sub_277B91510(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint16x4_t a6)
{
  v6 = 0;
  v7 = a5;
  v8 = *(a4 + 2 * a5 - 2);
  a6.i16[0] = *(a3 + 30);
  v9 = v33;
  v10 = v31;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = &word_277C3C800[v6];
    v14 = v13[4];
    *v9 = vmull_lane_u16(vneg_s8(v13[3]), a6, 0);
    *v10 = vmull_lane_u16(vneg_s8(v14), a6, 0);
    v9 = v32;
    v10 = v30;
    v6 = 8;
    v11 = 0;
  }

  while ((v12 & 1) != 0);
  v15 = 0;
  v16 = &word_277C3C800[a5 - 4];
  a6.i32[0] = v8;
  do
  {
    v17 = 0;
    v18 = vmull_lane_u16(vdup_n_s16(256 - v16[v15]), a6, 0);
    v14.i32[0] = v16[v15];
    v19 = v33;
    v20 = v31;
    v21 = 1;
    v23 = result;
    do
    {
      v24 = v21;
      v25 = (a3 + 2 * v17);
      v26 = &word_277C3C800[v17];
      v22 = (a4 + 2 * v15);
      v27 = vld1_dup_s16(v22);
      v28 = vrshrn_n_s32(vmlal_u16(vmlal_lane_u16(vaddq_s32(*v19, v18), *v25, v14, 0), v26[3], v27), 9uLL);
      v29 = vrshrn_n_s32(vmlal_u16(vmlal_lane_u16(vaddq_s32(*v20, v18), v25[1], v14, 0), v26[4], v27), 9uLL);
      *v23 = v28;
      v23[1] = v29;
      v23 += 2;
      v19 = v32;
      v20 = v30;
      v17 = 8;
      v21 = 0;
    }

    while ((v24 & 1) != 0);
    result = (result + 2 * a2);
    ++v15;
  }

  while (v15 != v7);
  return result;
}

uint64_t sub_277B9164C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint16x4_t a6)
{
  v6 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 2 * a5 - 2);
  a6.i16[0] = *(a3 + 62);
  v8 = &unk_277C3C840;
  do
  {
    v9 = *v8;
    *&v20[16 * v6 + 64] = vmull_lane_u16(vneg_s8(v8[-1]), a6, 0);
    *&v20[16 * v6++] = vmull_lane_u16(vneg_s8(v9), a6, 0);
    v8 += 2;
  }

  while (v6 != 4);
  v10 = 0;
  v11 = &word_277C3C800[a5 - 4];
  a6.i32[0] = v7;
  v12 = 2 * a2;
  do
  {
    v13 = 0;
    v14 = vmull_lane_u16(vdup_n_s16(256 - v11[v10]), a6, 0);
    v9.i32[0] = v11[v10];
    do
    {
      v16 = (result + v13);
      v15 = (a4 + 2 * v10);
      v17 = vld1_dup_s16(v15);
      v18 = vrshrn_n_s32(vmlal_u16(vmlal_lane_u16(vaddq_s32(*&v20[v13 + 64], v14), *(a3 + v13), v9, 0), *&word_277C3C800[v13 / 2 + 28], v17), 9uLL);
      v19 = vrshrn_n_s32(vmlal_u16(vmlal_lane_u16(vaddq_s32(*&v20[v13], v14), *(a3 + v13 + 8), v9, 0), *&word_277C3C800[v13 / 2 + 32], v17), 9uLL);
      *v16 = v18;
      v16[1] = v19;
      v13 += 16;
    }

    while (v13 != 64);
    ++v10;
    result += v12;
  }

  while (v10 != a5);
  return result;
}

uint64_t sub_277B917A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint16x4_t a6)
{
  v6 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 2 * a5 - 2);
  a6.i16[0] = *(a3 + 126);
  v8 = &unk_277C3C880;
  do
  {
    v9 = *v8;
    *&v20[16 * v6 + 128] = vmull_lane_u16(vneg_s8(v8[-1]), a6, 0);
    *&v20[16 * v6++] = vmull_lane_u16(vneg_s8(v9), a6, 0);
    v8 += 2;
  }

  while (v6 != 8);
  v10 = 0;
  v11 = &word_277C3C800[a5 - 4];
  a6.i32[0] = v7;
  v12 = 2 * a2;
  do
  {
    v13 = 0;
    v14 = vmull_lane_u16(vdup_n_s16(256 - v11[v10]), a6, 0);
    v9.i32[0] = v11[v10];
    do
    {
      v16 = (result + v13);
      v15 = (a4 + 2 * v10);
      v17 = vld1_dup_s16(v15);
      v18 = vrshrn_n_s32(vmlal_u16(vmlal_lane_u16(vaddq_s32(*&v20[v13 + 128], v14), *(a3 + v13), v9, 0), *&word_277C3C800[v13 / 2 + 60], v17), 9uLL);
      v19 = vrshrn_n_s32(vmlal_u16(vmlal_lane_u16(vaddq_s32(*&v20[v13], v14), *(a3 + v13 + 8), v9, 0), *&word_277C3C800[v13 / 2 + 64], v17), 9uLL);
      *v16 = v18;
      v16[1] = v19;
      v13 += 16;
    }

    while (v13 != 128);
    ++v10;
    result += v12;
  }

  while (v10 != a5);
  return result;
}

int16x4_t *sub_277B918FC(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, uint16x4_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i16[0] = *(a4 + 6);
  do
  {
    *result = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v7, vdup_n_s16(word_277C3C800[v6])), vdup_n_s16(256 - word_277C3C800[v6]), a6, 0), 8uLL);
    ++v6;
    result = (result + 2 * a2);
  }

  while (v6 != 4);
  return result;
}

int16x4_t *sub_277B9194C(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, uint16x4_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i16[0] = *(a4 + 14);
  do
  {
    *result = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v7, vdup_n_s16(word_277C3C800[v6 + 4])), vdup_n_s16(256 - word_277C3C800[v6 + 4]), a6, 0), 8uLL);
    ++v6;
    result = (result + 2 * a2);
  }

  while (v6 != 8);
  return result;
}

int16x4_t *sub_277B919A0(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, uint16x4_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i16[0] = *(a4 + 30);
  do
  {
    *result = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v7, vdup_n_s16(word_277C3C800[v6 + 12])), vdup_n_s16(256 - word_277C3C800[v6 + 12]), a6, 0), 8uLL);
    ++v6;
    result = (result + 2 * a2);
  }

  while (v6 != 16);
  return result;
}

int16x4_t *sub_277B919F4(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, double a6, uint16x4_t a7)
{
  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  a7.i16[0] = *(a4 + 6);
  v10 = result + 1;
  do
  {
    v11 = word_277C3C800[v7];
    v12 = vdup_n_s16(256 - v11);
    v13 = vdup_n_s16(v11);
    v10[-1] = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v8, v13), v12, a7, 0), 8uLL);
    *v10 = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v9, v13), v12, a7, 0), 8uLL);
    ++v7;
    v10 = (v10 + 2 * a2);
  }

  while (v7 != 4);
  return result;
}

int16x4_t *sub_277B91A54(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, double a6, uint16x4_t a7)
{
  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  a7.i16[0] = *(a4 + 14);
  v10 = result + 1;
  do
  {
    v11 = word_277C3C800[v7 + 4];
    v12 = vdup_n_s16(256 - v11);
    v13 = vdup_n_s16(v11);
    v10[-1] = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v8, v13), v12, a7, 0), 8uLL);
    *v10 = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v9, v13), v12, a7, 0), 8uLL);
    ++v7;
    v10 = (v10 + 2 * a2);
  }

  while (v7 != 8);
  return result;
}

int16x4_t *sub_277B91AB8(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, double a6, uint16x4_t a7)
{
  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  a7.i16[0] = *(a4 + 30);
  v10 = result + 1;
  do
  {
    v11 = word_277C3C800[v7 + 12];
    v12 = vdup_n_s16(256 - v11);
    v13 = vdup_n_s16(v11);
    v10[-1] = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v8, v13), v12, a7, 0), 8uLL);
    *v10 = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v9, v13), v12, a7, 0), 8uLL);
    ++v7;
    v10 = (v10 + 2 * a2);
  }

  while (v7 != 16);
  return result;
}

int16x4_t *sub_277B91B1C(int16x4_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, double a5, double a6, uint16x4_t a7)
{
  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  a7.i16[0] = *(a4 + 62);
  v10 = result + 1;
  do
  {
    v11 = word_277C3C800[v7 + 28];
    v12 = vdup_n_s16(256 - v11);
    v13 = vdup_n_s16(v11);
    v10[-1] = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v8, v13), v12, a7, 0), 8uLL);
    *v10 = vrshrn_n_s32(vmlal_lane_u16(vmull_u16(v9, v13), v12, a7, 0), 8uLL);
    ++v7;
    v10 = (v10 + 2 * a2);
  }

  while (v7 != 32);
  return result;
}

int16x4_t *sub_277B91B88(int16x4_t *result, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, double a6, double a7, uint16x4_t a8)
{
  v8 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 2 * a5 - 2);
  v18 = *a3;
  v19 = *(a3 + 1);
  v11 = a3[3];
  v20 = v11;
  v10 = &word_277C3C800[a5 - 4];
  v11.i32[0] = v9;
  do
  {
    v12 = vmull_lane_u16(vdup_n_s16(256 - v10[v8]), v11, 0);
    a8.i32[0] = v10[v8];
    v13 = &v18;
    v14 = 1;
    v15 = result;
    do
    {
      v16 = v14;
      v17 = vrshrn_n_s32(vmlal_lane_u16(v12, v13[1], a8, 0), 8uLL);
      *v15 = vrshrn_n_s32(vmlal_lane_u16(v12, *v13, a8, 0), 8uLL);
      v15[1] = v17;
      v15 += 2;
      v13 = &v19 + 1;
      v14 = 0;
    }

    while ((v16 & 1) != 0);
    result = (result + 2 * a2);
    ++v8;
  }

  while (v8 != a5);
  return result;
}

uint64_t sub_277B91CA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, double a6, double a7, uint16x4_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 2 * a5 - 2);
  do
  {
    v10 = &v19[v8];
    v11 = *(a3 + v8);
    v12 = *(a3 + v8 + 8);
    *v10 = v11;
    v10[1] = v12;
    v8 += 16;
  }

  while (v8 != 64);
  v13 = 0;
  v14 = &word_277C3C800[a5 - 4];
  v11.i32[0] = v9;
  do
  {
    v15 = 0;
    v16 = vmull_lane_u16(vdup_n_s16(256 - v14[v13]), v11, 0);
    a8.i32[0] = v14[v13];
    do
    {
      v17 = (result + v15);
      v18 = vrshrn_n_s32(vmlal_lane_u16(v16, *&v19[v15 + 8], a8, 0), 8uLL);
      *v17 = vrshrn_n_s32(vmlal_lane_u16(v16, *&v19[v15], a8, 0), 8uLL);
      v17[1] = v18;
      v15 += 16;
    }

    while (v15 != 64);
    ++v13;
    result += 2 * a2;
  }

  while (v13 != a5);
  return result;
}

uint64_t sub_277B91DB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, double a6, double a7, uint16x4_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 2 * a5 - 2);
  do
  {
    v10 = &v19[v8];
    v11 = *(a3 + v8);
    v12 = *(a3 + v8 + 8);
    *v10 = v11;
    v10[1] = v12;
    v8 += 16;
  }

  while (v8 != 128);
  v13 = 0;
  v14 = &word_277C3C800[a5 - 4];
  v11.i32[0] = v9;
  do
  {
    v15 = 0;
    v16 = vmull_lane_u16(vdup_n_s16(256 - v14[v13]), v11, 0);
    a8.i32[0] = v14[v13];
    do
    {
      v17 = (result + v15);
      v18 = vrshrn_n_s32(vmlal_lane_u16(v16, *&v19[v15 + 8], a8, 0), 8uLL);
      *v17 = vrshrn_n_s32(vmlal_lane_u16(v16, *&v19[v15], a8, 0), 8uLL);
      v17[1] = v18;
      v15 += 16;
    }

    while (v15 != 128);
    ++v13;
    result += 2 * a2;
  }

  while (v13 != a5);
  return result;
}

int16x4_t *sub_277B91EC0(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 6);
  v6 = vld1_dup_s16(v5);
  v7 = vmull_u16(0xC000AB006B0001, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s16(v8);
    *result = vrshrn_n_s32(vmlal_u16(v7, 0x400055009500FFLL, v9), 8uLL);
    v4 += 2;
    result = (result + 2 * a2);
  }

  while (v4 != 8);
  return result;
}

int16x4_t *sub_277B91F10(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 6);
  v6 = vld1_dup_s16(v5);
  v7 = vmull_u16(0xC000AB006B0001, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s16(v8);
    *result = vrshrn_n_s32(vmlal_u16(v7, 0x400055009500FFLL, v9), 8uLL);
    v4 += 2;
    result = (result + 2 * a2);
  }

  while (v4 != 16);
  return result;
}

int16x4_t *sub_277B91F60(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 6);
  v6 = vld1_dup_s16(v5);
  v7 = vmull_u16(0xC000AB006B0001, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s16(v8);
    *result = vrshrn_n_s32(vmlal_u16(v7, 0x400055009500FFLL, v9), 8uLL);
    v4 += 2;
    result = (result + 2 * a2);
  }

  while (v4 != 32);
  return result;
}

int16x4_t *sub_277B91FB0(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 14);
  v6 = vld1_dup_s16(v5);
  v7 = vmull_u16(0x97006E003B0001, v6);
  v8 = vmull_u16(0xE000DB00CE00B7, v6);
  v9 = result + 1;
  do
  {
    v10 = (a4 + v4);
    v11 = vld1_dup_s16(v10);
    v9[-1] = vrshrn_n_s32(vmlal_u16(v7, 0x69009200C500FFLL, v11), 8uLL);
    *v9 = vrshrn_n_s32(vmlal_u16(v8, 0x20002500320049, v11), 8uLL);
    v4 += 2;
    v9 = (v9 + 2 * a2);
  }

  while (v4 != 8);
  return result;
}

int16x4_t *sub_277B92024(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 14);
  v6 = vld1_dup_s16(v5);
  v7 = vmull_u16(0x97006E003B0001, v6);
  v8 = vmull_u16(0xE000DB00CE00B7, v6);
  v9 = result + 1;
  do
  {
    v10 = (a4 + v4);
    v11 = vld1_dup_s16(v10);
    v9[-1] = vrshrn_n_s32(vmlal_u16(v7, 0x69009200C500FFLL, v11), 8uLL);
    *v9 = vrshrn_n_s32(vmlal_u16(v8, 0x20002500320049, v11), 8uLL);
    v4 += 2;
    v9 = (v9 + 2 * a2);
  }

  while (v4 != 16);
  return result;
}

int16x4_t *sub_277B92098(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 14);
  v6 = vld1_dup_s16(v5);
  v7 = vmull_u16(0x97006E003B0001, v6);
  v8 = vmull_u16(0xE000DB00CE00B7, v6);
  v9 = result + 1;
  do
  {
    v10 = (a4 + v4);
    v11 = vld1_dup_s16(v10);
    v9[-1] = vrshrn_n_s32(vmlal_u16(v7, 0x69009200C500FFLL, v11), 8uLL);
    *v9 = vrshrn_n_s32(vmlal_u16(v8, 0x20002500320049, v11), 8uLL);
    v4 += 2;
    v9 = (v9 + 2 * a2);
  }

  while (v4 != 32);
  return result;
}

int16x4_t *sub_277B9210C(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 14);
  v6 = vld1_dup_s16(v5);
  v7 = vmull_u16(0x97006E003B0001, v6);
  v8 = vmull_u16(0xE000DB00CE00B7, v6);
  v9 = result + 1;
  do
  {
    v10 = (a4 + v4);
    v11 = vld1_dup_s16(v10);
    v9[-1] = vrshrn_n_s32(vmlal_u16(v7, 0x69009200C500FFLL, v11), 8uLL);
    *v9 = vrshrn_n_s32(vmlal_u16(v8, 0x20002500320049, v11), 8uLL);
    v4 += 2;
    v9 = (v9 + 2 * a2);
  }

  while (v4 != 64);
  return result;
}

int16x4_t *sub_277B9218C(int16x4_t *result, uint64_t a2, __int32 a3, uint64_t a4, int a5, uint16x4_t a6)
{
  v6 = 0;
  a6.i32[0] = a3;
  v7 = &v32;
  v8 = &v30;
  v9 = v28;
  v10 = v26;
  v11 = 1;
  do
  {
    v12 = &word_277C3C800[v6];
    v13 = *(v12 + 12);
    v14 = *(v12 + 16);
    *v7 = v13;
    *v9 = vmull_lane_u16(vneg_s8(v13), a6, 0);
    v15 = v11;
    *v8 = v14;
    v7 = &v31;
    v8 = &v29;
    *v10 = vmull_lane_u16(vneg_s8(v14), a6, 0);
    v9 = v27;
    v10 = v25;
    v6 = 8;
    v11 = 0;
  }

  while ((v15 & 1) != 0);
  v16 = 0;
  do
  {
    a6.i16[0] = *(a4 + 2 * v16);
    v17 = &v32;
    v18 = &v30;
    v19 = v28;
    v20 = v26;
    v21 = 1;
    v22 = result;
    do
    {
      v23 = v21;
      v24 = vrshrn_n_s32(vmlal_lane_u16(*v20, *v18, a6, 0), 8uLL);
      *v22 = vrshrn_n_s32(vmlal_lane_u16(*v19, *v17, a6, 0), 8uLL);
      v22[1] = v24;
      v22 += 2;
      v17 = &v31;
      v18 = &v29;
      v19 = v27;
      v20 = v25;
      v21 = 0;
    }

    while ((v23 & 1) != 0);
    result = (result + 2 * a2);
    ++v16;
  }

  while (v16 != a5);
  return result;
}

uint64_t sub_277B922B4(uint64_t result, uint64_t a2, __int32 a3, uint64_t a4, int a5, uint16x4_t a6)
{
  v6 = 0;
  v16 = *MEMORY[0x277D85DE8];
  a6.i32[0] = a3;
  v7 = &unk_277C3C840;
  do
  {
    v8 = v7[-1];
    v9 = *v7;
    *&v15[8 * v6 + 168] = v8;
    *&v15[16 * v6 + 64] = vmull_lane_u16(vneg_s8(v8), a6, 0);
    *&v15[8 * v6 + 136] = v9;
    *&v15[16 * v6++] = vmull_lane_u16(vneg_s8(v9), a6, 0);
    v7 += 2;
  }

  while (v6 != 4);
  v10 = 0;
  do
  {
    v11 = 0;
    v12 = 0;
    a6.i16[0] = *(a4 + 2 * v10);
    do
    {
      v13 = (result + v12);
      v14 = vrshrn_n_s32(vmlal_lane_u16(*&v15[v12], *&v15[v11 + 136], a6, 0), 8uLL);
      *v13 = vrshrn_n_s32(vmlal_lane_u16(*&v15[v12 + 64], *&v15[v11 + 168], a6, 0), 8uLL);
      v13[1] = v14;
      v12 += 16;
      v11 += 8;
    }

    while (v12 != 64);
    ++v10;
    result += 2 * a2;
  }

  while (v10 != a5);
  return result;
}

uint64_t sub_277B923F0(uint64_t result, uint64_t a2, __int32 a3, uint64_t a4, int a5, uint16x4_t a6)
{
  v6 = 0;
  v16 = *MEMORY[0x277D85DE8];
  a6.i32[0] = a3;
  v7 = &unk_277C3C880;
  do
  {
    v8 = v7[-1];
    v9 = *v7;
    *&v15[8 * v6 + 328] = v8;
    *&v15[16 * v6 + 128] = vmull_lane_u16(vneg_s8(v8), a6, 0);
    *&v15[8 * v6 + 264] = v9;
    *&v15[16 * v6++] = vmull_lane_u16(vneg_s8(v9), a6, 0);
    v7 += 2;
  }

  while (v6 != 8);
  v10 = 0;
  do
  {
    v11 = 0;
    v12 = 0;
    a6.i16[0] = *(a4 + 2 * v10);
    do
    {
      v13 = (result + v12);
      v14 = vrshrn_n_s32(vmlal_lane_u16(*&v15[v12], *&v15[v11 + 264], a6, 0), 8uLL);
      *v13 = vrshrn_n_s32(vmlal_lane_u16(*&v15[v12 + 128], *&v15[v11 + 328], a6, 0), 8uLL);
      v13[1] = v14;
      v12 += 16;
      v11 += 8;
    }

    while (v12 != 128);
    ++v10;
    result += 2 * a2;
  }

  while (v10 != a5);
  return result;
}

int8x8_t *sub_277B9251C(int8x8_t *result, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, uint16x4_t a15)
{
  v17 = a4 + a3;
  v18 = 2 * a2;
  v19 = 0;
  if (a6)
  {
    v20 = 2 * v17 - 2;
    v21 = *(a5 + 2 * v20);
    v22 = vdupq_n_s16(v21);
    v23 = vdupq_n_s64(a3 - 1);
    v24 = a7;
    do
    {
      v25 = v24 >> 5;
      if (v20 <= v24 >> 5)
      {
        if (v19 >= a4)
        {
          return result;
        }

        v28 = result + 1;
        v29 = v19;
        do
        {
          if (a3)
          {
            v30 = 0;
            v31 = v28;
            do
            {
              v32 = vdupq_n_s64(v30);
              v33 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v32, xmmword_277BB70A0)));
              if (vuzp1_s8(vuzp1_s16(v33, *v22.i8), *v22.i8).u8[0])
              {
                v31[-1].i16[0] = v21;
              }

              if (vuzp1_s8(vuzp1_s16(v33, *&v22), *&v22).i8[1])
              {
                v31[-1].i16[1] = v21;
              }

              if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v32, xmmword_277BB7090)))), *&v22).i8[2])
              {
                v31[-1].i16[2] = v21;
                v31[-1].i16[3] = v21;
              }

              v34 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v32, xmmword_277BB7080)));
              if (vuzp1_s8(*&v22, vuzp1_s16(v34, *&v22)).i32[1])
              {
                v31->i16[0] = v21;
              }

              if (vuzp1_s8(*&v22, vuzp1_s16(v34, *&v22)).i8[5])
              {
                v31->i16[1] = v21;
              }

              if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v32, xmmword_277BB7070))))).i8[6])
              {
                v31->i16[2] = v21;
                v31->i16[3] = v21;
              }

              v30 += 8;
              v31 += 2;
            }

            while (((a3 + 7) & 0xFFFFFFFFFFFFFFF8) != v30);
          }

          result = (result + 2 * a2);
          ++v29;
          v28 = (v28 + v18);
        }

        while (v29 != a4);
      }

      else
      {
        v26 = 2 * (v24 & 0x1F);
        if (a3 == 4)
        {
          v27 = (a5 + 2 * v25);
          v68 = vld2_s16(v27);
          *result = vbsl_s8(vcgt_s16(0x7000500030001, vdup_n_s16(v20 - v25)), *v22.i8, vrshrn_n_s32(vmlal_u16(vmull_u16(v68.val[0], vdup_n_s16(64 - v26)), v68.val[1], vdup_n_s16(v26)), 6uLL));
        }

        else
        {
          v35 = 0;
          v16.i32[0] = 64 - v26;
          v36 = v20 - v25;
          v37 = v24 >> 5;
          v38 = result;
          do
          {
            v39 = (a5 + 2 * v37);
            v69 = vld2q_s16(v39);
            v15.i32[0] = 2 * (v24 & 0x1F);
            *v38++ = vbslq_s8(vcgtq_s16(xmmword_277BB7B60, vdupq_n_s16(v36)), v22, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v69.val[0].i8, v16, 0), *v69.val[1].i8, v15, 0), 6uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v69.val[0], v16, 0), v69.val[1], v15, 0), 6uLL));
            v35 += 8;
            v36 -= 16;
            v37 += 16;
          }

          while (v35 < a3);
        }

        result = (result + 2 * a2);
        v24 += a7;
      }

      if (v20 <= v25)
      {
        break;
      }

      ++v19;
    }

    while (v19 < a4);
  }

  else
  {
    v40 = v17 - 1;
    v41 = *(a5 + 2 * (v17 - 1));
    v42 = v17 - 1;
    v43 = vdupq_n_s16(v41);
    v44 = (a5 + 2 * v17 - 16);
    v45 = v17 - 1 - 7;
    v46 = v17 - 1 - 8;
    v47 = vdupq_n_s64(a3 - 1);
    v48 = v17 - 2;
    v49 = a7;
    do
    {
      v50 = v49 >> 6;
      if (v49 >> 6 >= v42)
      {
        if (v19 >= a4)
        {
          return result;
        }

        v52 = result + 1;
        v53 = v19;
        do
        {
          if (a3)
          {
            v54 = 0;
            v55 = v52;
            do
            {
              v56 = vdupq_n_s64(v54);
              v57 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v56, xmmword_277BB70A0)));
              if (vuzp1_s8(vuzp1_s16(v57, *v43.i8), *v43.i8).u8[0])
              {
                v55[-1].i16[0] = v41;
              }

              if (vuzp1_s8(vuzp1_s16(v57, *&v43), *&v43).i8[1])
              {
                v55[-1].i16[1] = v41;
              }

              if (vuzp1_s8(vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v47, vorrq_s8(v56, xmmword_277BB7090)))), *&v43).i8[2])
              {
                v55[-1].i16[2] = v41;
                v55[-1].i16[3] = v41;
              }

              v58 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v56, xmmword_277BB7080)));
              if (vuzp1_s8(*&v43, vuzp1_s16(v58, *&v43)).i32[1])
              {
                v55->i16[0] = v41;
              }

              if (vuzp1_s8(*&v43, vuzp1_s16(v58, *&v43)).i8[5])
              {
                v55->i16[1] = v41;
              }

              v59 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v56, xmmword_277BB7070)));
              if (vuzp1_s8(*&v43, vuzp1_s16(*&v43, v59)).i8[6])
              {
                v55->i16[2] = v41;
              }

              a15 = vuzp1_s8(*v43.i8, vuzp1_s16(*v43.i8, v59));
              if (a15.i8[7])
              {
                v55->i16[3] = v41;
              }

              v54 += 8;
              v55 += 2;
            }

            while (((a3 + 7) & 0xFFFFFFFFFFFFFFF8) != v54);
          }

          result = (result + 2 * a2);
          ++v53;
          v52 = (v52 + v18);
        }

        while (v53 != a4);
      }

      else
      {
        v51 = v49 & 0x3E;
        if (a3 == 4)
        {
          a15 = vbsl_s8(vcgt_s16(0x4000300020001, vdup_n_s16(v42 - v50)), *v43.i8, vrshrn_n_s32(vmlal_u16(vmull_u16(*(a5 + 2 * v50), vdup_n_s16(64 - v51)), *(a5 + 2 * v50 + 2), vdup_n_s16(v51)), 6uLL));
          *result = a15;
        }

        else
        {
          v60 = 0;
          v15.i32[0] = 64 - v51;
          v61 = 16 * (v48 - v50);
          v62 = 16 * (v40 - v50);
          v63 = result;
          v64 = (a5 + 2 + 2 * v50);
          do
          {
            v65 = v50 + v60;
            v66 = v43;
            v67 = v43;
            if (v65 < v40)
            {
              if (v65 >= v45)
              {
                v66 = vqtbl1q_s8(*v44, *(&unk_277C3C8F8 + v62));
              }

              else
              {
                v66 = *(v64 - 2);
              }

              if (v65 >= v46)
              {
                v67 = vqtbl1q_s8(*v44, *(&unk_277C3C8F8 + v61));
              }

              else
              {
                v67 = *v64;
              }
            }

            a15.i32[0] = v49 & 0x3E;
            *v63++ = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v66.i8, v15, 0), *v67.i8, a15, 0), 6uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v66, v15, 0), v67, a15, 0), 6uLL);
            v60 += 8;
            ++v64;
            v61 -= 128;
            v62 -= 128;
          }

          while (v60 < a3);
        }

        result = (result + 2 * a2);
        v49 += a7;
      }

      if (v50 >= v42)
      {
        break;
      }

      ++v19;
    }

    while (v19 < a4);
  }

  return result;
}

int16x8_t *sub_277B92A44(int16x8_t *result, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, int16x8_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15)
{
  v16 = 0;
  v58 = *MEMORY[0x277D85DE8];
  v17 = *(a4 + 78);
  v18 = *(a4 + 110);
  v56[6] = *(a4 + 94);
  v56[7] = v18;
  v57 = *(a4 + 126);
  v19 = *(a4 + 14);
  v20 = *(a4 + 46);
  v56[2] = *(a4 + 30);
  v56[3] = v20;
  v56[4] = *(a4 + 62);
  v56[5] = v17;
  v21 = *(&a3[-1] + 14);
  v22 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v23 = vextq_s8(v21, v21, 8uLL).u64[0];
  v25 = 2 * a2;
  v26 = -a15;
  v27 = 8 * a15;
  v28 = -a14;
  v56[0] = *(a4 - 2);
  v56[1] = v19;
  v29.i64[0] = 0x1F001F001F001FLL;
  v29.i64[1] = 0x1F001F001F001FLL;
  v30 = *a3;
  do
  {
    v31 = (++v16 * a14 - 1) >> 6;
    v32 = -8;
    v33 = v28;
    v34 = v26;
    v35 = result;
    do
    {
      a11.i32[0] = (v33 >> 1) & 0x1F;
      if (v31 <= 0)
      {
        v51 = &a3->i8[2 * (v33 >> 6)];
        v52 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(*a11.i8, 0));
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v51, v52), *(v51 + 2), *a11.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v51, *v51, 8uLL), v52), *(v51 + 2), *a11.i8, 0), 5uLL);
      }

      else
      {
        v36 = vaddq_s16(vdupq_n_s16(v34), v22);
        v37 = vshrq_n_u16(v36, 1uLL);
        v38 = vshrq_n_s16(v36, 6uLL);
        v39 = v38.i64[1];
        v40 = v38.i64[0];
        v41 = (v38.i64[0] >> 16) >> 16;
        v42 = vandq_s8(v37, v29);
        v43 = v40 >> 48;
        v44 = v39 >> 16;
        v45 = (v39 >> 16) >> 16;
        v46 = vextq_s8(v42, v42, 8uLL).u64[0];
        if (v31 > 7)
        {
          v53.i32[0] = *(v56 + 2 * v40 + 2);
          v53.i32[1] = *(v56 + 2 * (v40 >> 16) + 2);
          v53.i32[2] = *(v56 + 2 * v41 + 2);
          v53.i32[3] = *(v56 + 2 * v43 + 2);
          v54.i32[0] = *(v56 + 2 * v39 + 2);
          v54.i32[1] = *(v56 + 2 * v44 + 2);
          v54.i32[2] = *(v56 + 2 * v45 + 2);
          v54.i32[3] = *(v56 + 2 * (v39 >> 48) + 2);
          v55 = vuzp1q_s16(v53, v54);
          a11 = vuzp2q_s16(v53, v54);
          v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v55.i8, vsub_s16(0x20002000200020, *v42.i8)), *a11.i8, *v42.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v55, v55, 8uLL), vsub_s16(0x20002000200020, v46)), a11, v42), 5uLL);
        }

        else
        {
          v15.i32[0] = *(v56 + 2 * v40 + 2);
          v47 = 0uLL;
          if (v31 != 1)
          {
            v15.i32[1] = *(v56 + 2 * (v40 >> 16) + 2);
            if (v31 != 2)
            {
              v15.i32[2] = *(v56 + 2 * v41 + 2);
              if (v31 >= 4)
              {
                v15.i32[3] = *(v56 + 2 * v43 + 2);
                if (v31 != 4)
                {
                  v47.i32[0] = *(v56 + 2 * v39 + 2);
                  if (v31 >= 6)
                  {
                    v47.i32[1] = *(v56 + 2 * v44 + 2);
                    if (v31 != 6)
                    {
                      v47.i32[2] = *(v56 + 2 * v45 + 2);
                    }
                  }
                }
              }
            }
          }

          v48 = vuzp1q_s16(v15, v47);
          v49 = vuzp2q_s16(v15, v47);
          v59.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v48.i8, vsub_s16(0x20002000200020, *v42.i8)), *v49.i8, *v42.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v48, v48, 8uLL), vsub_s16(0x20002000200020, v46)), v49, v42), 5uLL);
          v50 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(*a11.i8, 0));
          v59.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v21.i8, v50), *v30.i8, *a11.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v23, v50), v30, *a11.i8, 0), 5uLL);
          a11 = xmmword_277C3CA58[v31];
          v15 = vqtbl2q_s8(v59, a11);
        }
      }

      *v35++ = v15;
      v32 += 8;
      v31 -= 8;
      v34 -= v27;
      v33 += 512;
    }

    while (v32 < 0x38);
    result = (result + v25);
    v26 += 64;
    LODWORD(v28) = v28 - a14;
  }

  while (v16 != 64);
  return result;
}

int16x8_t *sub_277B92D3C(int16x8_t *result, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15)
{
  v16 = 0;
  v56 = *MEMORY[0x277D85DE8];
  v17 = *(a4 + 14);
  v18 = *(a4 + 46);
  v54[2] = *(a4 + 30);
  v54[3] = v18;
  v55 = *(a4 + 62);
  v54[0] = *(a4 - 2);
  v54[1] = v17;
  v19 = *(&a3[-1] + 14);
  v20 = *a3;
  v22 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v23 = vextq_s8(v19, v19, 8uLL).u64[0];
  v24 = 2 * a2;
  v25 = -a15;
  v26 = 8 * a15;
  v27 = -a14;
  v28.i64[0] = 0x1F001F001F001FLL;
  v28.i64[1] = 0x1F001F001F001FLL;
  do
  {
    v29 = (++v16 * a14 - 1) >> 6;
    v30 = -8;
    v31 = v27;
    v32 = v25;
    v33 = result;
    do
    {
      a11.n128_u32[0] = (v31 >> 1) & 0x1F;
      if (v29 <= 0)
      {
        v49 = &a3->i8[2 * (v31 >> 6)];
        v50 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v49, v50), *(v49 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v49, *v49, 8uLL), v50), *(v49 + 2), a11.n128_u64[0], 0), 5uLL);
      }

      else
      {
        v34 = vaddq_s16(vdupq_n_s16(v32), v22);
        v35 = vshrq_n_u16(v34, 1uLL);
        v36 = vshrq_n_s16(v34, 6uLL);
        v37 = v36.i64[1];
        v38 = v36.i64[0];
        v39 = (v36.i64[0] >> 16) >> 16;
        v40 = vandq_s8(v35, v28);
        v41 = v38 >> 48;
        v42 = v37 >> 16;
        v43 = (v37 >> 16) >> 16;
        v44 = vextq_s8(v40, v40, 8uLL).u64[0];
        if (v29 > 7)
        {
          v51.i32[0] = *(v54 + 2 * v38 + 2);
          v51.i32[1] = *(v54 + 2 * (v38 >> 16) + 2);
          v51.i32[2] = *(v54 + 2 * v39 + 2);
          v51.i32[3] = *(v54 + 2 * v41 + 2);
          v52.i32[0] = *(v54 + 2 * v37 + 2);
          v52.i32[1] = *(v54 + 2 * v42 + 2);
          v52.i32[2] = *(v54 + 2 * v43 + 2);
          v52.i32[3] = *(v54 + 2 * (v37 >> 48) + 2);
          v53 = vuzp1q_s16(v51, v52);
          a11 = vuzp2q_s16(v51, v52);
          v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v53.i8, vsub_s16(0x20002000200020, *v40.i8)), a11.n128_u64[0], *v40.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v53, v53, 8uLL), vsub_s16(0x20002000200020, v44)), a11, v40), 5uLL);
        }

        else
        {
          v15.i32[0] = *(v54 + 2 * v38 + 2);
          v45 = 0uLL;
          if (v29 != 1)
          {
            v15.i32[1] = *(v54 + 2 * (v38 >> 16) + 2);
            if (v29 != 2)
            {
              v15.i32[2] = *(v54 + 2 * v39 + 2);
              if (v29 >= 4)
              {
                v15.i32[3] = *(v54 + 2 * v41 + 2);
                if (v29 != 4)
                {
                  v45.i32[0] = *(v54 + 2 * v37 + 2);
                  if (v29 >= 6)
                  {
                    v45.i32[1] = *(v54 + 2 * v42 + 2);
                    if (v29 != 6)
                    {
                      v45.i32[2] = *(v54 + 2 * v43 + 2);
                    }
                  }
                }
              }
            }
          }

          v46 = vuzp1q_s16(v15, v45);
          v47 = vuzp2q_s16(v15, v45);
          v57.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v46.i8, vsub_s16(0x20002000200020, *v40.i8)), *v47.i8, *v40.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v46, v46, 8uLL), vsub_s16(0x20002000200020, v44)), v47, v40), 5uLL);
          v48 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
          v57.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v19.i8, v48), *v20.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v23, v48), v20, a11.n128_u64[0], 0), 5uLL);
          a11 = xmmword_277C3CA58[v29];
          v15 = vqtbl2q_s8(v57, a11);
        }
      }

      *v33++ = v15;
      v30 += 8;
      v29 -= 8;
      v32 -= v26;
      v31 += 512;
    }

    while (v30 < 0x38);
    result = (result + v24);
    v25 += 64;
    LODWORD(v27) = v27 - a14;
  }

  while (v16 != 32);
  return result;
}

int16x8_t *sub_277B9301C(int16x8_t *result, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15)
{
  v16 = 0;
  v55 = *MEMORY[0x277D85DE8];
  v17 = *(a4 + 14);
  v53[0] = *(a4 - 2);
  v53[1] = v17;
  v54 = *(a4 + 30);
  v18 = *(&a3[-1] + 14);
  v19 = *a3;
  v21 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v22 = vextq_s8(v18, v18, 8uLL).u64[0];
  v23 = 2 * a2;
  v24 = -a15;
  v25 = 8 * a15;
  v26 = -a14;
  v27.i64[0] = 0x1F001F001F001FLL;
  v27.i64[1] = 0x1F001F001F001FLL;
  do
  {
    v28 = (++v16 * a14 - 1) >> 6;
    v29 = -8;
    v30 = v26;
    v31 = v24;
    v32 = result;
    do
    {
      a11.n128_u32[0] = (v30 >> 1) & 0x1F;
      if (v28 <= 0)
      {
        v48 = &a3->i8[2 * (v30 >> 6)];
        v49 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v48, v49), *(v48 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v48, *v48, 8uLL), v49), *(v48 + 2), a11.n128_u64[0], 0), 5uLL);
      }

      else
      {
        v33 = vaddq_s16(vdupq_n_s16(v31), v21);
        v34 = vshrq_n_u16(v33, 1uLL);
        v35 = vshrq_n_s16(v33, 6uLL);
        v36 = v35.i64[1];
        v37 = v35.i64[0];
        v38 = (v35.i64[0] >> 16) >> 16;
        v39 = vandq_s8(v34, v27);
        v40 = v37 >> 48;
        v41 = v36 >> 16;
        v42 = (v36 >> 16) >> 16;
        v43 = vextq_s8(v39, v39, 8uLL).u64[0];
        if (v28 > 7)
        {
          v50.i32[0] = *(v53 + 2 * v37 + 2);
          v50.i32[1] = *(v53 + 2 * (v37 >> 16) + 2);
          v50.i32[2] = *(v53 + 2 * v38 + 2);
          v50.i32[3] = *(v53 + 2 * v40 + 2);
          v51.i32[0] = *(v53 + 2 * v36 + 2);
          v51.i32[1] = *(v53 + 2 * v41 + 2);
          v51.i32[2] = *(v53 + 2 * v42 + 2);
          v51.i32[3] = *(v53 + 2 * (v36 >> 48) + 2);
          v52 = vuzp1q_s16(v50, v51);
          a11 = vuzp2q_s16(v50, v51);
          v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v52.i8, vsub_s16(0x20002000200020, *v39.i8)), a11.n128_u64[0], *v39.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v52, v52, 8uLL), vsub_s16(0x20002000200020, v43)), a11, v39), 5uLL);
        }

        else
        {
          v15.i32[0] = *(v53 + 2 * v37 + 2);
          v44 = 0uLL;
          if (v28 != 1)
          {
            v15.i32[1] = *(v53 + 2 * (v37 >> 16) + 2);
            if (v28 != 2)
            {
              v15.i32[2] = *(v53 + 2 * v38 + 2);
              if (v28 >= 4)
              {
                v15.i32[3] = *(v53 + 2 * v40 + 2);
                if (v28 != 4)
                {
                  v44.i32[0] = *(v53 + 2 * v36 + 2);
                  if (v28 >= 6)
                  {
                    v44.i32[1] = *(v53 + 2 * v41 + 2);
                    if (v28 != 6)
                    {
                      v44.i32[2] = *(v53 + 2 * v42 + 2);
                    }
                  }
                }
              }
            }
          }

          v45 = vuzp1q_s16(v15, v44);
          v46 = vuzp2q_s16(v15, v44);
          v56.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v45.i8, vsub_s16(0x20002000200020, *v39.i8)), *v46.i8, *v39.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v45, v45, 8uLL), vsub_s16(0x20002000200020, v43)), v46, v39), 5uLL);
          v47 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
          v56.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v18.i8, v47), *v19.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v47), v19, a11.n128_u64[0], 0), 5uLL);
          a11 = xmmword_277C3CA58[v28];
          v15 = vqtbl2q_s8(v56, a11);
        }
      }

      *v32++ = v15;
      v29 += 8;
      v28 -= 8;
      v31 -= v25;
      v30 += 512;
    }

    while (v29 < 0x38);
    result = (result + v23);
    v24 += 64;
    LODWORD(v26) = v26 - a14;
  }

  while (v16 != 16);
  return result;
}

int16x8_t *sub_277B932F0(int16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v115 = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 78);
  v17 = *(a4 + 110);
  v113[6] = *(a4 + 94);
  v113[7] = v17;
  v114 = *(a4 + 126);
  v18 = *(a4 + 14);
  v19 = *(a4 + 46);
  v113[2] = *(a4 + 30);
  v113[3] = v19;
  v113[4] = *(a4 + 62);
  v113[5] = v16;
  v20 = *(&a3[-1] + 14);
  v21 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v22 = vextq_s8(v20, v20, 8uLL).u64[0];
  v23 = 65527 * a15;
  v24 = 65519 * a15;
  v25 = 65511 * a15;
  v26 = -a15;
  v27 = -a14;
  v28 = a14 - 1;
  v29 = a1 + 2;
  v30 = 2 * a2;
  v31 = -4096;
  v113[0] = *(a4 - 2);
  v113[1] = v18;
  v32.i64[0] = 0x1F001F001F001FLL;
  v32.i64[1] = 0x1F001F001F001FLL;
  result = xmmword_277C3CA58;
  v34 = *a3;
  do
  {
    v35 = v28 >> 6;
    a11.n128_u32[0] = (v27 >> 1) & 0x1F;
    if (v28 >> 6 <= 0)
    {
      v52 = &a3->i8[2 * (v27 >> 6)];
      v53 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v51 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v52, v53), *(v52 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v52, *v52, 8uLL), v53), *(v52 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    else
    {
      v36 = vaddq_s16(vdupq_n_s16(v26 + v31 + 4096), v21);
      v37 = vshrq_n_u16(v36, 1uLL);
      v38 = vshrq_n_s16(v36, 6uLL);
      v39 = v38.i64[1];
      v40 = v38.i64[0];
      v41 = (v38.i64[0] >> 16) >> 16;
      v42 = vandq_s8(v37, v32);
      v43 = v40 >> 48;
      v44 = v39 >> 16;
      v45 = (v39 >> 16) >> 16;
      v46 = vextq_s8(v42, v42, 8uLL).u64[0];
      if (v35 > 7)
      {
        v54.i32[0] = *(v113 + 2 * v40 + 2);
        v54.i32[1] = *(v113 + 2 * (v40 >> 16) + 2);
        v54.i32[2] = *(v113 + 2 * v41 + 2);
        v54.i32[3] = *(v113 + 2 * v43 + 2);
        v55.i32[0] = *(v113 + 2 * v39 + 2);
        v55.i32[1] = *(v113 + 2 * v44 + 2);
        v55.i32[2] = *(v113 + 2 * v45 + 2);
        v55.i32[3] = *(v113 + 2 * (v39 >> 48) + 2);
        v56 = vuzp1q_s16(v54, v55);
        a11 = vuzp2q_s16(v54, v55);
        v51 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v56.i8, vsub_s16(0x20002000200020, *v42.i8)), a11.n128_u64[0], *v42.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v56, v56, 8uLL), vsub_s16(0x20002000200020, v46)), a11, v42), 5uLL);
      }

      else
      {
        v15.i32[0] = *(v113 + 2 * v40 + 2);
        v47 = 0uLL;
        if (v35 != 1)
        {
          v15.i32[1] = *(v113 + 2 * (v40 >> 16) + 2);
          if (v35 != 2)
          {
            v15.i32[2] = *(v113 + 2 * v41 + 2);
            if (v35 >= 4)
            {
              v15.i32[3] = *(v113 + 2 * v43 + 2);
              if (v35 != 4)
              {
                v47.i32[0] = *(v113 + 2 * v39 + 2);
                if (v35 >= 6)
                {
                  v47.i32[1] = *(v113 + 2 * v44 + 2);
                  if (v35 != 6)
                  {
                    v47.i32[2] = *(v113 + 2 * v45 + 2);
                  }
                }
              }
            }
          }
        }

        v48 = vuzp1q_s16(v15, v47);
        v49 = vuzp2q_s16(v15, v47);
        v116.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v48.i8, vsub_s16(0x20002000200020, *v42.i8)), *v49.i8, *v42.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v48, v48, 8uLL), vsub_s16(0x20002000200020, v46)), v49, v42), 5uLL);
        v50 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v116.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v20.i8, v50), *v34.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v50), v34, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v35];
        v51 = vqtbl2q_s8(v116, a11);
      }
    }

    v29[-2] = v51;
    a11.n128_u32[0] = ((v27 + 512) >> 1) & 0x1F;
    if (v35 >= 9)
    {
      v60 = vaddq_s16(vdupq_n_s16(v23 + v31 + 4096), v21);
      v68 = vshrq_n_s16(v60, 6uLL);
      v61 = v68.i32[0];
      v62 = (v68.i64[0] >> 16) >> 16;
      v63 = vandq_s8(vshrq_n_u16(v60, 1uLL), v32);
      v64 = v35 - 8;
      v65 = v68.i64[0] >> 48;
      v66 = v68.i32[2] >> 16;
      v67 = (v68.i64[1] >> 16) >> 16;
      v68.i64[0] = vextq_s8(v63, v63, 8uLL).u64[0];
      if ((v35 - 8) >= 8)
      {
        v73.i32[0] = *(v113 + 2 * v61 + 2);
        v73.i32[1] = *(v113 + 2 * (v61 >> 16) + 2);
        v73.i32[2] = *(v113 + 2 * v62 + 2);
        v73.i32[3] = *(v113 + 2 * v65 + 2);
        v74.i32[0] = *(v113 + 2 * v68.i16[4] + 2);
        v74.i32[1] = *(v113 + 2 * v66 + 2);
        v74.i32[2] = *(v113 + 2 * v67 + 2);
        v74.i32[3] = *(v113 + 2 * (v68.i64[1] >> 48) + 2);
        v75 = vuzp1q_s16(v73, v74);
        a11 = vuzp2q_s16(v73, v74);
        v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v75.i8, vsub_s16(0x20002000200020, *v63.i8)), a11.n128_u64[0], *v63.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v75, v75, 8uLL), vsub_s16(0x20002000200020, *v68.i8)), a11, v63), 5uLL);
      }

      else
      {
        v51.i32[0] = *(v113 + 2 * v61 + 2);
        v69 = 0uLL;
        if (v35 != 9)
        {
          v51.i32[1] = *(v113 + 2 * (v61 >> 16) + 2);
          if (v35 != 10)
          {
            v51.i32[2] = *(v113 + 2 * v62 + 2);
            if (v64 >= 4)
            {
              v51.i32[3] = *(v113 + 2 * v65 + 2);
              if (v35 != 12)
              {
                v69.i32[0] = *(v113 + 2 * v68.i16[4] + 2);
                if (v64 >= 6)
                {
                  v69.i32[1] = *(v113 + 2 * v66 + 2);
                  if (v35 != 14)
                  {
                    v69.i32[2] = *(v113 + 2 * v67 + 2);
                  }
                }
              }
            }
          }
        }

        v70 = vuzp1q_s16(v51, v69);
        v71 = vuzp2q_s16(v51, v69);
        v117.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v70.i8, vsub_s16(0x20002000200020, *v63.i8)), *v71.i8, *v63.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v70, v70, 8uLL), vsub_s16(0x20002000200020, *v68.i8)), v71, v63), 5uLL);
        v72 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v117.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v20.i8, v72), *v34.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v72), v34, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v64];
        v59 = vqtbl2q_s8(v117, a11);
      }
    }

    else
    {
      v57 = &a3->i8[2 * ((v27 + 512) >> 6)];
      v58 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v57, v58), *(v57 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v57, *v57, 8uLL), v58), *(v57 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v29[-1] = v59;
    a11.n128_u32[0] = ((v27 + 1024) >> 1) & 0x1F;
    if (v35 >= 17)
    {
      v79 = vaddq_s16(vdupq_n_s16(v24 + v31 + 4096), v21);
      v87 = vshrq_n_s16(v79, 6uLL);
      v80 = v87.i32[0];
      v81 = (v87.i64[0] >> 16) >> 16;
      v82 = vandq_s8(vshrq_n_u16(v79, 1uLL), v32);
      v83 = v35 - 16;
      v84 = v87.i64[0] >> 48;
      v85 = v87.i32[2] >> 16;
      v86 = (v87.i64[1] >> 16) >> 16;
      v87.i64[0] = vextq_s8(v82, v82, 8uLL).u64[0];
      if ((v35 - 16) >= 8)
      {
        v92.i32[0] = *(v113 + 2 * v80 + 2);
        v92.i32[1] = *(v113 + 2 * (v80 >> 16) + 2);
        v92.i32[2] = *(v113 + 2 * v81 + 2);
        v92.i32[3] = *(v113 + 2 * v84 + 2);
        v93.i32[0] = *(v113 + 2 * v87.i16[4] + 2);
        v93.i32[1] = *(v113 + 2 * v85 + 2);
        v93.i32[2] = *(v113 + 2 * v86 + 2);
        v93.i32[3] = *(v113 + 2 * (v87.i64[1] >> 48) + 2);
        v94 = vuzp1q_s16(v92, v93);
        a11 = vuzp2q_s16(v92, v93);
        v78 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v94.i8, vsub_s16(0x20002000200020, *v82.i8)), a11.n128_u64[0], *v82.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v94, v94, 8uLL), vsub_s16(0x20002000200020, *v87.i8)), a11, v82), 5uLL);
      }

      else
      {
        v59.i32[0] = *(v113 + 2 * v80 + 2);
        v88 = 0uLL;
        if (v35 != 17)
        {
          v59.i32[1] = *(v113 + 2 * (v80 >> 16) + 2);
          if (v35 != 18)
          {
            v59.i32[2] = *(v113 + 2 * v81 + 2);
            if (v83 >= 4)
            {
              v59.i32[3] = *(v113 + 2 * v84 + 2);
              if (v35 != 20)
              {
                v88.i32[0] = *(v113 + 2 * v87.i16[4] + 2);
                if (v83 >= 6)
                {
                  v88.i32[1] = *(v113 + 2 * v85 + 2);
                  if (v35 != 22)
                  {
                    v88.i32[2] = *(v113 + 2 * v86 + 2);
                  }
                }
              }
            }
          }
        }

        v89 = vuzp1q_s16(v59, v88);
        v90 = vuzp2q_s16(v59, v88);
        v118.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v89.i8, vsub_s16(0x20002000200020, *v82.i8)), *v90.i8, *v82.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v89, v89, 8uLL), vsub_s16(0x20002000200020, *v87.i8)), v90, v82), 5uLL);
        v91 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v118.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v20.i8, v91), *v34.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v91), v34, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v83];
        v78 = vqtbl2q_s8(v118, a11);
      }
    }

    else
    {
      v76 = &a3->i8[2 * ((v27 + 1024) >> 6)];
      v77 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v78 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v76, v77), *(v76 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v76, *v76, 8uLL), v77), *(v76 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    *v29 = v78;
    a11.n128_u32[0] = ((v27 + 1536) >> 1) & 0x1F;
    if (v35 >= 25)
    {
      v97 = vaddq_s16(vdupq_n_s16(v25 + v31 + 4096), v21);
      v105 = vshrq_n_s16(v97, 6uLL);
      v98 = v105.i32[0];
      v99 = (v105.i64[0] >> 16) >> 16;
      v100 = vandq_s8(vshrq_n_u16(v97, 1uLL), v32);
      v101 = v35 - 24;
      v102 = v105.i64[0] >> 48;
      v103 = v105.i32[2] >> 16;
      v104 = (v105.i64[1] >> 16) >> 16;
      v105.i64[0] = vextq_s8(v100, v100, 8uLL).u64[0];
      if (v101 >= 8)
      {
        v110.i32[0] = *(v113 + 2 * v98 + 2);
        v110.i32[1] = *(v113 + 2 * (v98 >> 16) + 2);
        v110.i32[2] = *(v113 + 2 * v99 + 2);
        v110.i32[3] = *(v113 + 2 * v102 + 2);
        v111.i32[0] = *(v113 + 2 * v105.i16[4] + 2);
        v111.i32[1] = *(v113 + 2 * v103 + 2);
        v111.i32[2] = *(v113 + 2 * v104 + 2);
        v111.i32[3] = *(v113 + 2 * (v105.i64[1] >> 48) + 2);
        v112 = vuzp1q_s16(v110, v111);
        a11 = vuzp2q_s16(v110, v111);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v112.i8, vsub_s16(0x20002000200020, *v100.i8)), a11.n128_u64[0], *v100.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v112, v112, 8uLL), vsub_s16(0x20002000200020, *v105.i8)), a11, v100), 5uLL);
      }

      else
      {
        v78.i32[0] = *(v113 + 2 * v98 + 2);
        v106 = 0uLL;
        if (v101 != 1)
        {
          v78.i32[1] = *(v113 + 2 * (v98 >> 16) + 2);
          if (v101 != 2)
          {
            v78.i32[2] = *(v113 + 2 * v99 + 2);
            if (v101 >= 4)
            {
              v78.i32[3] = *(v113 + 2 * v102 + 2);
              if (v101 != 4)
              {
                v106.i32[0] = *(v113 + 2 * v105.i16[4] + 2);
                if (v101 >= 6)
                {
                  v106.i32[1] = *(v113 + 2 * v103 + 2);
                  if (v101 != 6)
                  {
                    v106.i32[2] = *(v113 + 2 * v104 + 2);
                  }
                }
              }
            }
          }
        }

        v107 = vuzp1q_s16(v78, v106);
        v108 = vuzp2q_s16(v78, v106);
        v119.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v107.i8, vsub_s16(0x20002000200020, *v100.i8)), *v108.i8, *v100.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v107, v107, 8uLL), vsub_s16(0x20002000200020, *v105.i8)), v108, v100), 5uLL);
        v109 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v119.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v20.i8, v109), *v34.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v22, v109), v34, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v101];
        v15 = vqtbl2q_s8(v119, a11);
      }
    }

    else
    {
      v95 = &a3->i8[2 * ((v27 + 1536) >> 6)];
      v96 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v95, v96), *(v95 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v95, *v95, 8uLL), v96), *(v95 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v29[1] = v15;
    v27 -= a14;
    v28 += a14;
    v29 = (v29 + v30);
    v31 += 64;
  }

  while (v31);
  return result;
}

int16x8_t *sub_277B93B60(int16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v113 = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 14);
  v17 = *(a4 + 46);
  v111[2] = *(a4 + 30);
  v111[3] = v17;
  v112 = *(a4 + 62);
  v111[0] = *(a4 - 2);
  v111[1] = v16;
  v18 = *(&a3[-1] + 14);
  v19 = *a3;
  v20 = 65527 * a15;
  v21 = 65519 * a15;
  v22 = 65511 * a15;
  v23 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v24 = vextq_s8(v18, v18, 8uLL).u64[0];
  v25 = -a15;
  v26 = -a14;
  v27 = a14 - 1;
  v28 = a1 + 2;
  v29 = 2 * a2;
  v30 = -2048;
  v31.i64[0] = 0x1F001F001F001FLL;
  v31.i64[1] = 0x1F001F001F001FLL;
  result = xmmword_277C3CA58;
  do
  {
    v33 = v27 >> 6;
    a11.n128_u32[0] = (v26 >> 1) & 0x1F;
    if (v27 >> 6 <= 0)
    {
      v50 = &a3->i8[2 * (v26 >> 6)];
      v51 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v49 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v50, v51), *(v50 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v50, *v50, 8uLL), v51), *(v50 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    else
    {
      v34 = vaddq_s16(vdupq_n_s16(v25 + v30 + 2048), v23);
      v35 = vshrq_n_u16(v34, 1uLL);
      v36 = vshrq_n_s16(v34, 6uLL);
      v37 = v36.i64[1];
      v38 = v36.i64[0];
      v39 = (v36.i64[0] >> 16) >> 16;
      v40 = vandq_s8(v35, v31);
      v41 = v38 >> 48;
      v42 = v37 >> 16;
      v43 = (v37 >> 16) >> 16;
      v44 = vextq_s8(v40, v40, 8uLL).u64[0];
      if (v33 > 7)
      {
        v52.i32[0] = *(v111 + 2 * v38 + 2);
        v52.i32[1] = *(v111 + 2 * (v38 >> 16) + 2);
        v52.i32[2] = *(v111 + 2 * v39 + 2);
        v52.i32[3] = *(v111 + 2 * v41 + 2);
        v53.i32[0] = *(v111 + 2 * v37 + 2);
        v53.i32[1] = *(v111 + 2 * v42 + 2);
        v53.i32[2] = *(v111 + 2 * v43 + 2);
        v53.i32[3] = *(v111 + 2 * (v37 >> 48) + 2);
        v54 = vuzp1q_s16(v52, v53);
        a11 = vuzp2q_s16(v52, v53);
        v49 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v54.i8, vsub_s16(0x20002000200020, *v40.i8)), a11.n128_u64[0], *v40.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v54, v54, 8uLL), vsub_s16(0x20002000200020, v44)), a11, v40), 5uLL);
      }

      else
      {
        v15.i32[0] = *(v111 + 2 * v38 + 2);
        v45 = 0uLL;
        if (v33 != 1)
        {
          v15.i32[1] = *(v111 + 2 * (v38 >> 16) + 2);
          if (v33 != 2)
          {
            v15.i32[2] = *(v111 + 2 * v39 + 2);
            if (v33 >= 4)
            {
              v15.i32[3] = *(v111 + 2 * v41 + 2);
              if (v33 != 4)
              {
                v45.i32[0] = *(v111 + 2 * v37 + 2);
                if (v33 >= 6)
                {
                  v45.i32[1] = *(v111 + 2 * v42 + 2);
                  if (v33 != 6)
                  {
                    v45.i32[2] = *(v111 + 2 * v43 + 2);
                  }
                }
              }
            }
          }
        }

        v46 = vuzp1q_s16(v15, v45);
        v47 = vuzp2q_s16(v15, v45);
        v114.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v46.i8, vsub_s16(0x20002000200020, *v40.i8)), *v47.i8, *v40.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v46, v46, 8uLL), vsub_s16(0x20002000200020, v44)), v47, v40), 5uLL);
        v48 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v114.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v18.i8, v48), *v19.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v24, v48), v19, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v33];
        v49 = vqtbl2q_s8(v114, a11);
      }
    }

    v28[-2] = v49;
    a11.n128_u32[0] = ((v26 + 512) >> 1) & 0x1F;
    if (v33 >= 9)
    {
      v58 = vaddq_s16(vdupq_n_s16(v20 + v30 + 2048), v23);
      v66 = vshrq_n_s16(v58, 6uLL);
      v59 = v66.i32[0];
      v60 = (v66.i64[0] >> 16) >> 16;
      v61 = vandq_s8(vshrq_n_u16(v58, 1uLL), v31);
      v62 = v33 - 8;
      v63 = v66.i64[0] >> 48;
      v64 = v66.i32[2] >> 16;
      v65 = (v66.i64[1] >> 16) >> 16;
      v66.i64[0] = vextq_s8(v61, v61, 8uLL).u64[0];
      if ((v33 - 8) >= 8)
      {
        v71.i32[0] = *(v111 + 2 * v59 + 2);
        v71.i32[1] = *(v111 + 2 * (v59 >> 16) + 2);
        v71.i32[2] = *(v111 + 2 * v60 + 2);
        v71.i32[3] = *(v111 + 2 * v63 + 2);
        v72.i32[0] = *(v111 + 2 * v66.i16[4] + 2);
        v72.i32[1] = *(v111 + 2 * v64 + 2);
        v72.i32[2] = *(v111 + 2 * v65 + 2);
        v72.i32[3] = *(v111 + 2 * (v66.i64[1] >> 48) + 2);
        v73 = vuzp1q_s16(v71, v72);
        a11 = vuzp2q_s16(v71, v72);
        v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v73.i8, vsub_s16(0x20002000200020, *v61.i8)), a11.n128_u64[0], *v61.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v73, v73, 8uLL), vsub_s16(0x20002000200020, *v66.i8)), a11, v61), 5uLL);
      }

      else
      {
        v49.i32[0] = *(v111 + 2 * v59 + 2);
        v67 = 0uLL;
        if (v33 != 9)
        {
          v49.i32[1] = *(v111 + 2 * (v59 >> 16) + 2);
          if (v33 != 10)
          {
            v49.i32[2] = *(v111 + 2 * v60 + 2);
            if (v62 >= 4)
            {
              v49.i32[3] = *(v111 + 2 * v63 + 2);
              if (v33 != 12)
              {
                v67.i32[0] = *(v111 + 2 * v66.i16[4] + 2);
                if (v62 >= 6)
                {
                  v67.i32[1] = *(v111 + 2 * v64 + 2);
                  if (v33 != 14)
                  {
                    v67.i32[2] = *(v111 + 2 * v65 + 2);
                  }
                }
              }
            }
          }
        }

        v68 = vuzp1q_s16(v49, v67);
        v69 = vuzp2q_s16(v49, v67);
        v115.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v68.i8, vsub_s16(0x20002000200020, *v61.i8)), *v69.i8, *v61.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v68, v68, 8uLL), vsub_s16(0x20002000200020, *v66.i8)), v69, v61), 5uLL);
        v70 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v115.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v18.i8, v70), *v19.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v24, v70), v19, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v62];
        v57 = vqtbl2q_s8(v115, a11);
      }
    }

    else
    {
      v55 = &a3->i8[2 * ((v26 + 512) >> 6)];
      v56 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v55, v56), *(v55 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v55, *v55, 8uLL), v56), *(v55 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v28[-1] = v57;
    a11.n128_u32[0] = ((v26 + 1024) >> 1) & 0x1F;
    if (v33 >= 17)
    {
      v77 = vaddq_s16(vdupq_n_s16(v21 + v30 + 2048), v23);
      v85 = vshrq_n_s16(v77, 6uLL);
      v78 = v85.i32[0];
      v79 = (v85.i64[0] >> 16) >> 16;
      v80 = vandq_s8(vshrq_n_u16(v77, 1uLL), v31);
      v81 = v33 - 16;
      v82 = v85.i64[0] >> 48;
      v83 = v85.i32[2] >> 16;
      v84 = (v85.i64[1] >> 16) >> 16;
      v85.i64[0] = vextq_s8(v80, v80, 8uLL).u64[0];
      if ((v33 - 16) >= 8)
      {
        v90.i32[0] = *(v111 + 2 * v78 + 2);
        v90.i32[1] = *(v111 + 2 * (v78 >> 16) + 2);
        v90.i32[2] = *(v111 + 2 * v79 + 2);
        v90.i32[3] = *(v111 + 2 * v82 + 2);
        v91.i32[0] = *(v111 + 2 * v85.i16[4] + 2);
        v91.i32[1] = *(v111 + 2 * v83 + 2);
        v91.i32[2] = *(v111 + 2 * v84 + 2);
        v91.i32[3] = *(v111 + 2 * (v85.i64[1] >> 48) + 2);
        v92 = vuzp1q_s16(v90, v91);
        a11 = vuzp2q_s16(v90, v91);
        v76 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v92.i8, vsub_s16(0x20002000200020, *v80.i8)), a11.n128_u64[0], *v80.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v92, v92, 8uLL), vsub_s16(0x20002000200020, *v85.i8)), a11, v80), 5uLL);
      }

      else
      {
        v57.i32[0] = *(v111 + 2 * v78 + 2);
        v86 = 0uLL;
        if (v33 != 17)
        {
          v57.i32[1] = *(v111 + 2 * (v78 >> 16) + 2);
          if (v33 != 18)
          {
            v57.i32[2] = *(v111 + 2 * v79 + 2);
            if (v81 >= 4)
            {
              v57.i32[3] = *(v111 + 2 * v82 + 2);
              if (v33 != 20)
              {
                v86.i32[0] = *(v111 + 2 * v85.i16[4] + 2);
                if (v81 >= 6)
                {
                  v86.i32[1] = *(v111 + 2 * v83 + 2);
                  if (v33 != 22)
                  {
                    v86.i32[2] = *(v111 + 2 * v84 + 2);
                  }
                }
              }
            }
          }
        }

        v87 = vuzp1q_s16(v57, v86);
        v88 = vuzp2q_s16(v57, v86);
        v116.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v87.i8, vsub_s16(0x20002000200020, *v80.i8)), *v88.i8, *v80.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v87, v87, 8uLL), vsub_s16(0x20002000200020, *v85.i8)), v88, v80), 5uLL);
        v89 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v116.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v18.i8, v89), *v19.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v24, v89), v19, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v81];
        v76 = vqtbl2q_s8(v116, a11);
      }
    }

    else
    {
      v74 = &a3->i8[2 * ((v26 + 1024) >> 6)];
      v75 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v76 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v74, v75), *(v74 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v74, *v74, 8uLL), v75), *(v74 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    *v28 = v76;
    a11.n128_u32[0] = ((v26 + 1536) >> 1) & 0x1F;
    if (v33 >= 25)
    {
      v95 = vaddq_s16(vdupq_n_s16(v22 + v30 + 2048), v23);
      v103 = vshrq_n_s16(v95, 6uLL);
      v96 = v103.i32[0];
      v97 = (v103.i64[0] >> 16) >> 16;
      v98 = vandq_s8(vshrq_n_u16(v95, 1uLL), v31);
      v99 = v33 - 24;
      v100 = v103.i64[0] >> 48;
      v101 = v103.i32[2] >> 16;
      v102 = (v103.i64[1] >> 16) >> 16;
      v103.i64[0] = vextq_s8(v98, v98, 8uLL).u64[0];
      if (v99 >= 8)
      {
        v108.i32[0] = *(v111 + 2 * v96 + 2);
        v108.i32[1] = *(v111 + 2 * (v96 >> 16) + 2);
        v108.i32[2] = *(v111 + 2 * v97 + 2);
        v108.i32[3] = *(v111 + 2 * v100 + 2);
        v109.i32[0] = *(v111 + 2 * v103.i16[4] + 2);
        v109.i32[1] = *(v111 + 2 * v101 + 2);
        v109.i32[2] = *(v111 + 2 * v102 + 2);
        v109.i32[3] = *(v111 + 2 * (v103.i64[1] >> 48) + 2);
        v110 = vuzp1q_s16(v108, v109);
        a11 = vuzp2q_s16(v108, v109);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v110.i8, vsub_s16(0x20002000200020, *v98.i8)), a11.n128_u64[0], *v98.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v110, v110, 8uLL), vsub_s16(0x20002000200020, *v103.i8)), a11, v98), 5uLL);
      }

      else
      {
        v76.i32[0] = *(v111 + 2 * v96 + 2);
        v104 = 0uLL;
        if (v99 != 1)
        {
          v76.i32[1] = *(v111 + 2 * (v96 >> 16) + 2);
          if (v99 != 2)
          {
            v76.i32[2] = *(v111 + 2 * v97 + 2);
            if (v99 >= 4)
            {
              v76.i32[3] = *(v111 + 2 * v100 + 2);
              if (v99 != 4)
              {
                v104.i32[0] = *(v111 + 2 * v103.i16[4] + 2);
                if (v99 >= 6)
                {
                  v104.i32[1] = *(v111 + 2 * v101 + 2);
                  if (v99 != 6)
                  {
                    v104.i32[2] = *(v111 + 2 * v102 + 2);
                  }
                }
              }
            }
          }
        }

        v105 = vuzp1q_s16(v76, v104);
        v106 = vuzp2q_s16(v76, v104);
        v117.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v105.i8, vsub_s16(0x20002000200020, *v98.i8)), *v106.i8, *v98.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v105, v105, 8uLL), vsub_s16(0x20002000200020, *v103.i8)), v106, v98), 5uLL);
        v107 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v117.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v18.i8, v107), *v19.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v24, v107), v19, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v99];
        v15 = vqtbl2q_s8(v117, a11);
      }
    }

    else
    {
      v93 = &a3->i8[2 * ((v26 + 1536) >> 6)];
      v94 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v93, v94), *(v93 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v93, *v93, 8uLL), v94), *(v93 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v28[1] = v15;
    v26 -= a14;
    v27 += a14;
    v28 = (v28 + v29);
    v30 += 64;
  }

  while (v30);
  return result;
}

int16x8_t *sub_277B943B8(int16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v112 = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 14);
  v110[0] = *(a4 - 2);
  v110[1] = v16;
  v111 = *(a4 + 30);
  v17 = *(&a3[-1] + 14);
  v18 = *a3;
  v19 = 65527 * a15;
  v20 = 65519 * a15;
  v21 = 65511 * a15;
  v22 = vmulq_s16(vdupq_n_s16(a15), xmmword_277BB7B70);
  v23 = vextq_s8(v17, v17, 8uLL).u64[0];
  v24 = -a15;
  v25 = -a14;
  v26 = a14 - 1;
  v27 = a1 + 2;
  v28 = 2 * a2;
  v29 = -1024;
  v30.i64[0] = 0x1F001F001F001FLL;
  v30.i64[1] = 0x1F001F001F001FLL;
  result = xmmword_277C3CA58;
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
      v33 = vaddq_s16(vdupq_n_s16(v24 + v29 + 1024), v22);
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
        v51.i32[0] = *(v110 + 2 * v37 + 2);
        v51.i32[1] = *(v110 + 2 * (v37 >> 16) + 2);
        v51.i32[2] = *(v110 + 2 * v38 + 2);
        v51.i32[3] = *(v110 + 2 * v40 + 2);
        v52.i32[0] = *(v110 + 2 * v36 + 2);
        v52.i32[1] = *(v110 + 2 * v41 + 2);
        v52.i32[2] = *(v110 + 2 * v42 + 2);
        v52.i32[3] = *(v110 + 2 * (v36 >> 48) + 2);
        v53 = vuzp1q_s16(v51, v52);
        a11 = vuzp2q_s16(v51, v52);
        v48 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v53.i8, vsub_s16(0x20002000200020, *v39.i8)), a11.n128_u64[0], *v39.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v53, v53, 8uLL), vsub_s16(0x20002000200020, v43)), a11, v39), 5uLL);
      }

      else
      {
        v15.i32[0] = *(v110 + 2 * v37 + 2);
        v44 = 0uLL;
        if (v32 != 1)
        {
          v15.i32[1] = *(v110 + 2 * (v37 >> 16) + 2);
          if (v32 != 2)
          {
            v15.i32[2] = *(v110 + 2 * v38 + 2);
            if (v32 >= 4)
            {
              v15.i32[3] = *(v110 + 2 * v40 + 2);
              if (v32 != 4)
              {
                v44.i32[0] = *(v110 + 2 * v36 + 2);
                if (v32 >= 6)
                {
                  v44.i32[1] = *(v110 + 2 * v41 + 2);
                  if (v32 != 6)
                  {
                    v44.i32[2] = *(v110 + 2 * v42 + 2);
                  }
                }
              }
            }
          }
        }

        v45 = vuzp1q_s16(v15, v44);
        v46 = vuzp2q_s16(v15, v44);
        v113.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v45.i8, vsub_s16(0x20002000200020, *v39.i8)), *v46.i8, *v39.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v45, v45, 8uLL), vsub_s16(0x20002000200020, v43)), v46, v39), 5uLL);
        v47 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v113.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v17.i8, v47), *v18.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v23, v47), v18, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v32];
        v48 = vqtbl2q_s8(v113, a11);
      }
    }

    v27[-2] = v48;
    a11.n128_u32[0] = ((v25 + 512) >> 1) & 0x1F;
    if (v32 >= 9)
    {
      v57 = vaddq_s16(vdupq_n_s16(v19 + v29 + 1024), v22);
      v65 = vshrq_n_s16(v57, 6uLL);
      v58 = v65.i32[0];
      v59 = (v65.i64[0] >> 16) >> 16;
      v60 = vandq_s8(vshrq_n_u16(v57, 1uLL), v30);
      v61 = v32 - 8;
      v62 = v65.i64[0] >> 48;
      v63 = v65.i32[2] >> 16;
      v64 = (v65.i64[1] >> 16) >> 16;
      v65.i64[0] = vextq_s8(v60, v60, 8uLL).u64[0];
      if ((v32 - 8) >= 8)
      {
        v70.i32[0] = *(v110 + 2 * v58 + 2);
        v70.i32[1] = *(v110 + 2 * (v58 >> 16) + 2);
        v70.i32[2] = *(v110 + 2 * v59 + 2);
        v70.i32[3] = *(v110 + 2 * v62 + 2);
        v71.i32[0] = *(v110 + 2 * v65.i16[4] + 2);
        v71.i32[1] = *(v110 + 2 * v63 + 2);
        v71.i32[2] = *(v110 + 2 * v64 + 2);
        v71.i32[3] = *(v110 + 2 * (v65.i64[1] >> 48) + 2);
        v72 = vuzp1q_s16(v70, v71);
        a11 = vuzp2q_s16(v70, v71);
        v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v72.i8, vsub_s16(0x20002000200020, *v60.i8)), a11.n128_u64[0], *v60.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v72, v72, 8uLL), vsub_s16(0x20002000200020, *v65.i8)), a11, v60), 5uLL);
      }

      else
      {
        v48.i32[0] = *(v110 + 2 * v58 + 2);
        v66 = 0uLL;
        if (v32 != 9)
        {
          v48.i32[1] = *(v110 + 2 * (v58 >> 16) + 2);
          if (v32 != 10)
          {
            v48.i32[2] = *(v110 + 2 * v59 + 2);
            if (v61 >= 4)
            {
              v48.i32[3] = *(v110 + 2 * v62 + 2);
              if (v32 != 12)
              {
                v66.i32[0] = *(v110 + 2 * v65.i16[4] + 2);
                if (v61 >= 6)
                {
                  v66.i32[1] = *(v110 + 2 * v63 + 2);
                  if (v32 != 14)
                  {
                    v66.i32[2] = *(v110 + 2 * v64 + 2);
                  }
                }
              }
            }
          }
        }

        v67 = vuzp1q_s16(v48, v66);
        v68 = vuzp2q_s16(v48, v66);
        v114.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v67.i8, vsub_s16(0x20002000200020, *v60.i8)), *v68.i8, *v60.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v67, v67, 8uLL), vsub_s16(0x20002000200020, *v65.i8)), v68, v60), 5uLL);
        v69 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v114.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v17.i8, v69), *v18.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v23, v69), v18, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v61];
        v56 = vqtbl2q_s8(v114, a11);
      }
    }

    else
    {
      v54 = &a3->i8[2 * ((v25 + 512) >> 6)];
      v55 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v54, v55), *(v54 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v54, *v54, 8uLL), v55), *(v54 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v27[-1] = v56;
    a11.n128_u32[0] = ((v25 + 1024) >> 1) & 0x1F;
    if (v32 >= 17)
    {
      v76 = vaddq_s16(vdupq_n_s16(v20 + v29 + 1024), v22);
      v84 = vshrq_n_s16(v76, 6uLL);
      v77 = v84.i32[0];
      v78 = (v84.i64[0] >> 16) >> 16;
      v79 = vandq_s8(vshrq_n_u16(v76, 1uLL), v30);
      v80 = v32 - 16;
      v81 = v84.i64[0] >> 48;
      v82 = v84.i32[2] >> 16;
      v83 = (v84.i64[1] >> 16) >> 16;
      v84.i64[0] = vextq_s8(v79, v79, 8uLL).u64[0];
      if ((v32 - 16) >= 8)
      {
        v89.i32[0] = *(v110 + 2 * v77 + 2);
        v89.i32[1] = *(v110 + 2 * (v77 >> 16) + 2);
        v89.i32[2] = *(v110 + 2 * v78 + 2);
        v89.i32[3] = *(v110 + 2 * v81 + 2);
        v90.i32[0] = *(v110 + 2 * v84.i16[4] + 2);
        v90.i32[1] = *(v110 + 2 * v82 + 2);
        v90.i32[2] = *(v110 + 2 * v83 + 2);
        v90.i32[3] = *(v110 + 2 * (v84.i64[1] >> 48) + 2);
        v91 = vuzp1q_s16(v89, v90);
        a11 = vuzp2q_s16(v89, v90);
        v75 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v91.i8, vsub_s16(0x20002000200020, *v79.i8)), a11.n128_u64[0], *v79.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v91, v91, 8uLL), vsub_s16(0x20002000200020, *v84.i8)), a11, v79), 5uLL);
      }

      else
      {
        v56.i32[0] = *(v110 + 2 * v77 + 2);
        v85 = 0uLL;
        if (v32 != 17)
        {
          v56.i32[1] = *(v110 + 2 * (v77 >> 16) + 2);
          if (v32 != 18)
          {
            v56.i32[2] = *(v110 + 2 * v78 + 2);
            if (v80 >= 4)
            {
              v56.i32[3] = *(v110 + 2 * v81 + 2);
              if (v32 != 20)
              {
                v85.i32[0] = *(v110 + 2 * v84.i16[4] + 2);
                if (v80 >= 6)
                {
                  v85.i32[1] = *(v110 + 2 * v82 + 2);
                  if (v32 != 22)
                  {
                    v85.i32[2] = *(v110 + 2 * v83 + 2);
                  }
                }
              }
            }
          }
        }

        v86 = vuzp1q_s16(v56, v85);
        v87 = vuzp2q_s16(v56, v85);
        v115.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v86.i8, vsub_s16(0x20002000200020, *v79.i8)), *v87.i8, *v79.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v86, v86, 8uLL), vsub_s16(0x20002000200020, *v84.i8)), v87, v79), 5uLL);
        v88 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v115.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v17.i8, v88), *v18.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v23, v88), v18, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v80];
        v75 = vqtbl2q_s8(v115, a11);
      }
    }

    else
    {
      v73 = &a3->i8[2 * ((v25 + 1024) >> 6)];
      v74 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v75 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v73, v74), *(v73 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v73, *v73, 8uLL), v74), *(v73 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    *v27 = v75;
    a11.n128_u32[0] = ((v25 + 1536) >> 1) & 0x1F;
    if (v32 >= 25)
    {
      v94 = vaddq_s16(vdupq_n_s16(v21 + v29 + 1024), v22);
      v102 = vshrq_n_s16(v94, 6uLL);
      v95 = v102.i32[0];
      v96 = (v102.i64[0] >> 16) >> 16;
      v97 = vandq_s8(vshrq_n_u16(v94, 1uLL), v30);
      v98 = v32 - 24;
      v99 = v102.i64[0] >> 48;
      v100 = v102.i32[2] >> 16;
      v101 = (v102.i64[1] >> 16) >> 16;
      v102.i64[0] = vextq_s8(v97, v97, 8uLL).u64[0];
      if (v98 >= 8)
      {
        v107.i32[0] = *(v110 + 2 * v95 + 2);
        v107.i32[1] = *(v110 + 2 * (v95 >> 16) + 2);
        v107.i32[2] = *(v110 + 2 * v96 + 2);
        v107.i32[3] = *(v110 + 2 * v99 + 2);
        v108.i32[0] = *(v110 + 2 * v102.i16[4] + 2);
        v108.i32[1] = *(v110 + 2 * v100 + 2);
        v108.i32[2] = *(v110 + 2 * v101 + 2);
        v108.i32[3] = *(v110 + 2 * (v102.i64[1] >> 48) + 2);
        v109 = vuzp1q_s16(v107, v108);
        a11 = vuzp2q_s16(v107, v108);
        v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v109.i8, vsub_s16(0x20002000200020, *v97.i8)), a11.n128_u64[0], *v97.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v109, v109, 8uLL), vsub_s16(0x20002000200020, *v102.i8)), a11, v97), 5uLL);
      }

      else
      {
        v75.i32[0] = *(v110 + 2 * v95 + 2);
        v103 = 0uLL;
        if (v98 != 1)
        {
          v75.i32[1] = *(v110 + 2 * (v95 >> 16) + 2);
          if (v98 != 2)
          {
            v75.i32[2] = *(v110 + 2 * v96 + 2);
            if (v98 >= 4)
            {
              v75.i32[3] = *(v110 + 2 * v99 + 2);
              if (v98 != 4)
              {
                v103.i32[0] = *(v110 + 2 * v102.i16[4] + 2);
                if (v98 >= 6)
                {
                  v103.i32[1] = *(v110 + 2 * v100 + 2);
                  if (v98 != 6)
                  {
                    v103.i32[2] = *(v110 + 2 * v101 + 2);
                  }
                }
              }
            }
          }
        }

        v104 = vuzp1q_s16(v75, v103);
        v105 = vuzp2q_s16(v75, v103);
        v116.val[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v104.i8, vsub_s16(0x20002000200020, *v97.i8)), *v105.i8, *v97.i8), 5uLL), vmlal_high_u16(vmull_u16(*&vextq_s8(v104, v104, 8uLL), vsub_s16(0x20002000200020, *v102.i8)), v105, v97), 5uLL);
        v106 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
        v116.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v17.i8, v106), *v18.i8, a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(v23, v106), v18, a11.n128_u64[0], 0), 5uLL);
        a11 = xmmword_277C3CA58[v98];
        v15 = vqtbl2q_s8(v116, a11);
      }
    }

    else
    {
      v92 = &a3->i8[2 * ((v25 + 1536) >> 6)];
      v93 = vsub_s16(0x20002000200020, *&vdupq_lane_s16(a11.n128_u64[0], 0));
      v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_u16(*v92, v93), *(v92 + 2), a11.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_u16(*&vextq_s8(*v92, *v92, 8uLL), v93), *(v92 + 2), a11.n128_u64[0], 0), 5uLL);
    }

    v27[1] = v15;
    v25 -= a14;
    v26 += a14;
    v27 = (v27 + v28);
    v29 += 64;
  }

  while (v29);
  return result;
}