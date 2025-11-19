uint64_t sub_277A0EF3C()
{
  v0 = MEMORY[0x28223BE20]();
  v77[520] = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    v15 = v77;
    if (v3 == 4)
    {
      v30 = 65;
      do
      {
        v31 = 0;
        do
        {
          *&v15[v31] = vrhaddq_u8(*(v0 + v31 * 8), *(v0 + v31 * 8 + 1));
          v14 = v31 >= 6;
          v31 += 2;
        }

        while (!v14);
        v0 += v1;
        v15 += 8;
        --v30;
      }

      while (v30);
      v32 = v77;
      v33 = v76;
      v34 = 64;
      do
      {
        v35 = 0;
        do
        {
          *&v33[v35 * 8] = vrhaddq_u8(vrhaddq_u8(*&v32[v35], *&v32[v35 + 8]), *(v7 + v35 * 8));
          v36 = v35 * 8 + 16;
          v14 = v35 >= 6;
          v35 += 2;
        }

        while (!v14);
        v7 += v36;
        v32 += 8;
        v33 += 64;
        --v34;
      }

      while (v34);
    }

    else
    {
      if (!v3)
      {
        v16 = 64;
        do
        {
          v17 = 0;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u8(vrhaddq_u8(*(v0 + v17), *(v0 + v17 + 1)), *(v7 + v17));
            v18 = v17 + 16;
            v14 = v17 >= 0x30;
            v17 += 16;
          }

          while (!v14);
          v7 += v18;
          v0 += v1;
          v15 += 8;
          --v16;
        }

        while (v16);
        return (off_280ABCC78)(v77, 64, v4, v5, v6);
      }

      v45 = 65;
      do
      {
        v46 = 0;
        do
        {
          v47 = *(v0 + v46 * 8 + 1);
          v48 = vrhaddq_u8(*(v0 + v46 * 8), v47);
          *&v15[v46] = v48;
          v14 = v46 >= 6;
          v46 += 2;
        }

        while (!v14);
        v0 += v1;
        v15 += 8;
        --v45;
      }

      while (v45);
      v48.i32[0] = 8 - v3;
      v47.i32[0] = v3;
      v49 = v77;
      v50 = v76;
      v51 = 64;
      v52 = vdupq_lane_s8(*v48.i8, 0);
      v53 = vdupq_lane_s8(*v47.i8, 0);
      do
      {
        v54 = 0;
        do
        {
          *&v50[v54 * 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v49[v54 + 8], *v53.i8), v49[v54], *v52.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v49[v54 + 8], v53), *&v49[v54], v52), 3uLL), *(v7 + v54 * 8));
          v55 = v54 * 8 + 16;
          v14 = v54 >= 6;
          v54 += 2;
        }

        while (!v14);
        v7 += v55;
        v49 += 8;
        v50 += 64;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    if (!v2)
    {
      if (v3 == 4)
      {
        v25 = v0 + v1;
        v26 = v77;
        v27 = 64;
        do
        {
          v28 = 0;
          do
          {
            *&v26[v28 / 8] = vrhaddq_u8(vrhaddq_u8(*(v0 + v28), *(v25 + v28)), *(v7 + v28));
            v29 = v28 + 16;
            v14 = v28 >= 0x30;
            v28 += 16;
          }

          while (!v14);
          v7 += v29;
          v0 += v1;
          v26 += 8;
          v25 += v1;
          --v27;
        }

        while (v27);
      }

      else if (v3)
      {
        v8.i32[0] = 8 - v3;
        v9.i32[0] = v3;
        v37 = v0 + v1;
        v38 = v77;
        v39 = 64;
        v40 = vdupq_lane_s8(v8, 0);
        v41 = vdupq_lane_s8(v9, 0);
        do
        {
          v42 = 0;
          do
          {
            *&v38[v42 / 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v37 + v42), *v41.i8), *(v0 + v42), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v37 + v42), v41), *(v0 + v42), v40), 3uLL), *(v7 + v42));
            v43 = v42 + 16;
            v14 = v42 >= 0x30;
            v42 += 16;
          }

          while (!v14);
          v7 += v43;
          v0 += v1;
          v38 += 8;
          v37 += v1;
          --v39;
        }

        while (v39);
      }

      else
      {
        v10 = v77;
        v11 = 64;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12] = vrhaddq_u8(*(v0 + v12 * 8), *(v7 + v12 * 8));
            v13 = v12 * 8 + 16;
            v14 = v12 >= 6;
            v12 += 2;
          }

          while (!v14);
          v7 += v13;
          v0 += v1;
          v10 += 8;
          --v11;
        }

        while (v11);
      }

      return (off_280ABCC78)(v77, 64, v4, v5, v6);
    }

    v8.i32[0] = 8 - v2;
    v9.i32[0] = v2;
    v19 = v77;
    if (v3 == 4)
    {
      v56 = 65;
      v57 = vdupq_lane_s8(v8, 0);
      v58 = vdupq_lane_s8(v9, 0);
      do
      {
        v59 = 0;
        do
        {
          *&v19[v59 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v59 + 1), *v58.i8), *(v0 + v59), *v57.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v59 + 1), v58), *(v0 + v59), v57), 3uLL);
          v14 = v59 >= 0x30;
          v59 += 16;
        }

        while (!v14);
        v0 += v1;
        v19 += 8;
        --v56;
      }

      while (v56);
      v60 = v77;
      v61 = v76;
      v62 = 64;
      do
      {
        v63 = 0;
        do
        {
          *&v61[v63 * 8] = vrhaddq_u8(vrhaddq_u8(*&v60[v63], *&v60[v63 + 8]), *(v7 + v63 * 8));
          v64 = v63 * 8 + 16;
          v14 = v63 >= 6;
          v63 += 2;
        }

        while (!v14);
        v7 += v64;
        v60 += 8;
        v61 += 64;
        --v62;
      }

      while (v62);
    }

    else
    {
      if (!v3)
      {
        v20 = 64;
        v21 = vdupq_lane_s8(v8, 0);
        v22 = vdupq_lane_s8(v9, 0);
        do
        {
          v23 = 0;
          do
          {
            *&v19[v23 / 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v23 + 1), *v22.i8), *(v0 + v23), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v23 + 1), v22), *(v0 + v23), v21), 3uLL), *(v7 + v23));
            v24 = v23 + 16;
            v14 = v23 >= 0x30;
            v23 += 16;
          }

          while (!v14);
          v7 += v24;
          v0 += v1;
          v19 += 8;
          --v20;
        }

        while (v20);
        return (off_280ABCC78)(v77, 64, v4, v5, v6);
      }

      v65 = 65;
      v66 = vdupq_lane_s8(v8, 0);
      v67 = vdupq_lane_s8(v9, 0);
      do
      {
        v68 = 0;
        do
        {
          *&v19[v68 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v68 + 1), *v67.i8), *(v0 + v68), *v66.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v68 + 1), v67), *(v0 + v68), v66), 3uLL);
          v14 = v68 >= 0x30;
          v68 += 16;
        }

        while (!v14);
        v0 += v1;
        v19 += 8;
        --v65;
      }

      while (v65);
      v66.i32[0] = 8 - v3;
      v67.i32[0] = v3;
      v69 = v77;
      v70 = v76;
      v71 = 64;
      v72 = vdupq_lane_s8(*v66.i8, 0);
      v73 = vdupq_lane_s8(*v67.i8, 0);
      do
      {
        v74 = 0;
        do
        {
          *&v70[v74 * 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v69[v74 + 8], *v73.i8), v69[v74], *v72.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v69[v74 + 8], v73), *&v69[v74], v72), 3uLL), *(v7 + v74 * 8));
          v75 = v74 * 8 + 16;
          v14 = v74 >= 6;
          v74 += 2;
        }

        while (!v14);
        v7 += v75;
        v69 += 8;
        v70 += 64;
        --v71;
      }

      while (v71);
    }
  }

  return (off_280ABCC78)(v76, 64, v4, v5, v6);
}

uint64_t sub_277A0F4F4()
{
  v0 = MEMORY[0x28223BE20]();
  v77[1032] = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    v15 = v77;
    if (v3 == 4)
    {
      v30 = 129;
      do
      {
        v31 = 0;
        do
        {
          *&v15[v31] = vrhaddq_u8(*(v0 + v31 * 8), *(v0 + v31 * 8 + 1));
          v14 = v31 >= 6;
          v31 += 2;
        }

        while (!v14);
        v0 += v1;
        v15 += 8;
        --v30;
      }

      while (v30);
      v32 = v77;
      v33 = v76;
      v34 = 128;
      do
      {
        v35 = 0;
        do
        {
          *&v33[v35 * 8] = vrhaddq_u8(vrhaddq_u8(*&v32[v35], *&v32[v35 + 8]), *(v7 + v35 * 8));
          v36 = v35 * 8 + 16;
          v14 = v35 >= 6;
          v35 += 2;
        }

        while (!v14);
        v7 += v36;
        v32 += 8;
        v33 += 64;
        --v34;
      }

      while (v34);
    }

    else
    {
      if (!v3)
      {
        v16 = 128;
        do
        {
          v17 = 0;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u8(vrhaddq_u8(*(v0 + v17), *(v0 + v17 + 1)), *(v7 + v17));
            v18 = v17 + 16;
            v14 = v17 >= 0x30;
            v17 += 16;
          }

          while (!v14);
          v7 += v18;
          v0 += v1;
          v15 += 8;
          --v16;
        }

        while (v16);
        return (off_280ABCC60)(v77, 64, v4, v5, v6);
      }

      v45 = 129;
      do
      {
        v46 = 0;
        do
        {
          v47 = *(v0 + v46 * 8 + 1);
          v48 = vrhaddq_u8(*(v0 + v46 * 8), v47);
          *&v15[v46] = v48;
          v14 = v46 >= 6;
          v46 += 2;
        }

        while (!v14);
        v0 += v1;
        v15 += 8;
        --v45;
      }

      while (v45);
      v48.i32[0] = 8 - v3;
      v47.i32[0] = v3;
      v49 = v77;
      v50 = v76;
      v51 = 128;
      v52 = vdupq_lane_s8(*v48.i8, 0);
      v53 = vdupq_lane_s8(*v47.i8, 0);
      do
      {
        v54 = 0;
        do
        {
          *&v50[v54 * 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v49[v54 + 8], *v53.i8), v49[v54], *v52.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v49[v54 + 8], v53), *&v49[v54], v52), 3uLL), *(v7 + v54 * 8));
          v55 = v54 * 8 + 16;
          v14 = v54 >= 6;
          v54 += 2;
        }

        while (!v14);
        v7 += v55;
        v49 += 8;
        v50 += 64;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    if (!v2)
    {
      if (v3 == 4)
      {
        v25 = v0 + v1;
        v26 = v77;
        v27 = 128;
        do
        {
          v28 = 0;
          do
          {
            *&v26[v28 / 8] = vrhaddq_u8(vrhaddq_u8(*(v0 + v28), *(v25 + v28)), *(v7 + v28));
            v29 = v28 + 16;
            v14 = v28 >= 0x30;
            v28 += 16;
          }

          while (!v14);
          v7 += v29;
          v0 += v1;
          v26 += 8;
          v25 += v1;
          --v27;
        }

        while (v27);
      }

      else if (v3)
      {
        v8.i32[0] = 8 - v3;
        v9.i32[0] = v3;
        v37 = v0 + v1;
        v38 = v77;
        v39 = 128;
        v40 = vdupq_lane_s8(v8, 0);
        v41 = vdupq_lane_s8(v9, 0);
        do
        {
          v42 = 0;
          do
          {
            *&v38[v42 / 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v37 + v42), *v41.i8), *(v0 + v42), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v37 + v42), v41), *(v0 + v42), v40), 3uLL), *(v7 + v42));
            v43 = v42 + 16;
            v14 = v42 >= 0x30;
            v42 += 16;
          }

          while (!v14);
          v7 += v43;
          v0 += v1;
          v38 += 8;
          v37 += v1;
          --v39;
        }

        while (v39);
      }

      else
      {
        v10 = v77;
        v11 = 128;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12] = vrhaddq_u8(*(v0 + v12 * 8), *(v7 + v12 * 8));
            v13 = v12 * 8 + 16;
            v14 = v12 >= 6;
            v12 += 2;
          }

          while (!v14);
          v7 += v13;
          v0 += v1;
          v10 += 8;
          --v11;
        }

        while (v11);
      }

      return (off_280ABCC60)(v77, 64, v4, v5, v6);
    }

    v8.i32[0] = 8 - v2;
    v9.i32[0] = v2;
    v19 = v77;
    if (v3 == 4)
    {
      v56 = 129;
      v57 = vdupq_lane_s8(v8, 0);
      v58 = vdupq_lane_s8(v9, 0);
      do
      {
        v59 = 0;
        do
        {
          *&v19[v59 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v59 + 1), *v58.i8), *(v0 + v59), *v57.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v59 + 1), v58), *(v0 + v59), v57), 3uLL);
          v14 = v59 >= 0x30;
          v59 += 16;
        }

        while (!v14);
        v0 += v1;
        v19 += 8;
        --v56;
      }

      while (v56);
      v60 = v77;
      v61 = v76;
      v62 = 128;
      do
      {
        v63 = 0;
        do
        {
          *&v61[v63 * 8] = vrhaddq_u8(vrhaddq_u8(*&v60[v63], *&v60[v63 + 8]), *(v7 + v63 * 8));
          v64 = v63 * 8 + 16;
          v14 = v63 >= 6;
          v63 += 2;
        }

        while (!v14);
        v7 += v64;
        v60 += 8;
        v61 += 64;
        --v62;
      }

      while (v62);
    }

    else
    {
      if (!v3)
      {
        v20 = 128;
        v21 = vdupq_lane_s8(v8, 0);
        v22 = vdupq_lane_s8(v9, 0);
        do
        {
          v23 = 0;
          do
          {
            *&v19[v23 / 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v23 + 1), *v22.i8), *(v0 + v23), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v23 + 1), v22), *(v0 + v23), v21), 3uLL), *(v7 + v23));
            v24 = v23 + 16;
            v14 = v23 >= 0x30;
            v23 += 16;
          }

          while (!v14);
          v7 += v24;
          v0 += v1;
          v19 += 8;
          --v20;
        }

        while (v20);
        return (off_280ABCC60)(v77, 64, v4, v5, v6);
      }

      v65 = 129;
      v66 = vdupq_lane_s8(v8, 0);
      v67 = vdupq_lane_s8(v9, 0);
      do
      {
        v68 = 0;
        do
        {
          *&v19[v68 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v68 + 1), *v67.i8), *(v0 + v68), *v66.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v68 + 1), v67), *(v0 + v68), v66), 3uLL);
          v14 = v68 >= 0x30;
          v68 += 16;
        }

        while (!v14);
        v0 += v1;
        v19 += 8;
        --v65;
      }

      while (v65);
      v66.i32[0] = 8 - v3;
      v67.i32[0] = v3;
      v69 = v77;
      v70 = v76;
      v71 = 128;
      v72 = vdupq_lane_s8(*v66.i8, 0);
      v73 = vdupq_lane_s8(*v67.i8, 0);
      do
      {
        v74 = 0;
        do
        {
          *&v70[v74 * 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v69[v74 + 8], *v73.i8), v69[v74], *v72.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v69[v74 + 8], v73), *&v69[v74], v72), 3uLL), *(v7 + v74 * 8));
          v75 = v74 * 8 + 16;
          v14 = v74 >= 6;
          v74 += 2;
        }

        while (!v14);
        v7 += v75;
        v69 += 8;
        v70 += 64;
        --v71;
      }

      while (v71);
    }
  }

  return (off_280ABCC60)(v76, 64, v4, v5, v6);
}

uint64_t sub_277A0FAAC()
{
  v0 = MEMORY[0x28223BE20]();
  v77[1040] = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    v15 = v77;
    if (v3 == 4)
    {
      v30 = 65;
      do
      {
        v31 = 0;
        do
        {
          *&v15[v31] = vrhaddq_u8(*(v0 + v31 * 8), *(v0 + v31 * 8 + 1));
          v14 = v31 >= 14;
          v31 += 2;
        }

        while (!v14);
        v0 += v1;
        v15 += 16;
        --v30;
      }

      while (v30);
      v32 = v77;
      v33 = v76;
      v34 = 64;
      do
      {
        v35 = 0;
        do
        {
          *&v33[v35 * 8] = vrhaddq_u8(vrhaddq_u8(*&v32[v35], *&v32[v35 + 16]), *(v7 + v35 * 8));
          v36 = v35 * 8 + 16;
          v14 = v35 >= 14;
          v35 += 2;
        }

        while (!v14);
        v7 += v36;
        v32 += 16;
        v33 += 128;
        --v34;
      }

      while (v34);
    }

    else
    {
      if (!v3)
      {
        v16 = 64;
        do
        {
          v17 = 0;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u8(vrhaddq_u8(*(v0 + v17), *(v0 + v17 + 1)), *(v7 + v17));
            v18 = v17 + 16;
            v14 = v17 >= 0x70;
            v17 += 16;
          }

          while (!v14);
          v7 += v18;
          v0 += v1;
          v15 += 16;
          --v16;
        }

        while (v16);
        return (off_280ABCBF8)(v77, 128, v4, v5, v6);
      }

      v45 = 65;
      do
      {
        v46 = 0;
        do
        {
          v47 = *(v0 + v46 * 8 + 1);
          v48 = vrhaddq_u8(*(v0 + v46 * 8), v47);
          *&v15[v46] = v48;
          v14 = v46 >= 14;
          v46 += 2;
        }

        while (!v14);
        v0 += v1;
        v15 += 16;
        --v45;
      }

      while (v45);
      v48.i32[0] = 8 - v3;
      v47.i32[0] = v3;
      v49 = v77;
      v50 = v76;
      v51 = 64;
      v52 = vdupq_lane_s8(*v48.i8, 0);
      v53 = vdupq_lane_s8(*v47.i8, 0);
      do
      {
        v54 = 0;
        do
        {
          *&v50[v54 * 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v49[v54 + 16], *v53.i8), v49[v54], *v52.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v49[v54 + 16], v53), *&v49[v54], v52), 3uLL), *(v7 + v54 * 8));
          v55 = v54 * 8 + 16;
          v14 = v54 >= 14;
          v54 += 2;
        }

        while (!v14);
        v7 += v55;
        v49 += 16;
        v50 += 128;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    if (!v2)
    {
      if (v3 == 4)
      {
        v25 = v0 + v1;
        v26 = v77;
        v27 = 64;
        do
        {
          v28 = 0;
          do
          {
            *&v26[v28 / 8] = vrhaddq_u8(vrhaddq_u8(*(v0 + v28), *(v25 + v28)), *(v7 + v28));
            v29 = v28 + 16;
            v14 = v28 >= 0x70;
            v28 += 16;
          }

          while (!v14);
          v7 += v29;
          v0 += v1;
          v26 += 16;
          v25 += v1;
          --v27;
        }

        while (v27);
      }

      else if (v3)
      {
        v8.i32[0] = 8 - v3;
        v9.i32[0] = v3;
        v37 = v0 + v1;
        v38 = v77;
        v39 = 64;
        v40 = vdupq_lane_s8(v8, 0);
        v41 = vdupq_lane_s8(v9, 0);
        do
        {
          v42 = 0;
          do
          {
            *&v38[v42 / 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v37 + v42), *v41.i8), *(v0 + v42), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v37 + v42), v41), *(v0 + v42), v40), 3uLL), *(v7 + v42));
            v43 = v42 + 16;
            v14 = v42 >= 0x70;
            v42 += 16;
          }

          while (!v14);
          v7 += v43;
          v0 += v1;
          v38 += 16;
          v37 += v1;
          --v39;
        }

        while (v39);
      }

      else
      {
        v10 = v77;
        v11 = 64;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12] = vrhaddq_u8(*(v0 + v12 * 8), *(v7 + v12 * 8));
            v13 = v12 * 8 + 16;
            v14 = v12 >= 14;
            v12 += 2;
          }

          while (!v14);
          v7 += v13;
          v0 += v1;
          v10 += 16;
          --v11;
        }

        while (v11);
      }

      return (off_280ABCBF8)(v77, 128, v4, v5, v6);
    }

    v8.i32[0] = 8 - v2;
    v9.i32[0] = v2;
    v19 = v77;
    if (v3 == 4)
    {
      v56 = 65;
      v57 = vdupq_lane_s8(v8, 0);
      v58 = vdupq_lane_s8(v9, 0);
      do
      {
        v59 = 0;
        do
        {
          *&v19[v59 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v59 + 1), *v58.i8), *(v0 + v59), *v57.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v59 + 1), v58), *(v0 + v59), v57), 3uLL);
          v14 = v59 >= 0x70;
          v59 += 16;
        }

        while (!v14);
        v0 += v1;
        v19 += 16;
        --v56;
      }

      while (v56);
      v60 = v77;
      v61 = v76;
      v62 = 64;
      do
      {
        v63 = 0;
        do
        {
          *&v61[v63 * 8] = vrhaddq_u8(vrhaddq_u8(*&v60[v63], *&v60[v63 + 16]), *(v7 + v63 * 8));
          v64 = v63 * 8 + 16;
          v14 = v63 >= 14;
          v63 += 2;
        }

        while (!v14);
        v7 += v64;
        v60 += 16;
        v61 += 128;
        --v62;
      }

      while (v62);
    }

    else
    {
      if (!v3)
      {
        v20 = 64;
        v21 = vdupq_lane_s8(v8, 0);
        v22 = vdupq_lane_s8(v9, 0);
        do
        {
          v23 = 0;
          do
          {
            *&v19[v23 / 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v23 + 1), *v22.i8), *(v0 + v23), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v23 + 1), v22), *(v0 + v23), v21), 3uLL), *(v7 + v23));
            v24 = v23 + 16;
            v14 = v23 >= 0x70;
            v23 += 16;
          }

          while (!v14);
          v7 += v24;
          v0 += v1;
          v19 += 16;
          --v20;
        }

        while (v20);
        return (off_280ABCBF8)(v77, 128, v4, v5, v6);
      }

      v65 = 65;
      v66 = vdupq_lane_s8(v8, 0);
      v67 = vdupq_lane_s8(v9, 0);
      do
      {
        v68 = 0;
        do
        {
          *&v19[v68 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v68 + 1), *v67.i8), *(v0 + v68), *v66.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v68 + 1), v67), *(v0 + v68), v66), 3uLL);
          v14 = v68 >= 0x70;
          v68 += 16;
        }

        while (!v14);
        v0 += v1;
        v19 += 16;
        --v65;
      }

      while (v65);
      v66.i32[0] = 8 - v3;
      v67.i32[0] = v3;
      v69 = v77;
      v70 = v76;
      v71 = 64;
      v72 = vdupq_lane_s8(*v66.i8, 0);
      v73 = vdupq_lane_s8(*v67.i8, 0);
      do
      {
        v74 = 0;
        do
        {
          *&v70[v74 * 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v69[v74 + 16], *v73.i8), v69[v74], *v72.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v69[v74 + 16], v73), *&v69[v74], v72), 3uLL), *(v7 + v74 * 8));
          v75 = v74 * 8 + 16;
          v14 = v74 >= 14;
          v74 += 2;
        }

        while (!v14);
        v7 += v75;
        v69 += 16;
        v70 += 128;
        --v71;
      }

      while (v71);
    }
  }

  return (off_280ABCBF8)(v76, 128, v4, v5, v6);
}

uint64_t sub_277A10064()
{
  v0 = MEMORY[0x28223BE20]();
  v77[2064] = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    v15 = v77;
    if (v3 == 4)
    {
      v30 = 129;
      do
      {
        v31 = 0;
        do
        {
          *&v15[v31] = vrhaddq_u8(*(v0 + v31 * 8), *(v0 + v31 * 8 + 1));
          v14 = v31 >= 14;
          v31 += 2;
        }

        while (!v14);
        v0 += v1;
        v15 += 16;
        --v30;
      }

      while (v30);
      v32 = v77;
      v33 = v76;
      v34 = 128;
      do
      {
        v35 = 0;
        do
        {
          *&v33[v35 * 8] = vrhaddq_u8(vrhaddq_u8(*&v32[v35], *&v32[v35 + 16]), *(v7 + v35 * 8));
          v36 = v35 * 8 + 16;
          v14 = v35 >= 14;
          v35 += 2;
        }

        while (!v14);
        v7 += v36;
        v32 += 16;
        v33 += 128;
        --v34;
      }

      while (v34);
    }

    else
    {
      if (!v3)
      {
        v16 = 128;
        do
        {
          v17 = 0;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u8(vrhaddq_u8(*(v0 + v17), *(v0 + v17 + 1)), *(v7 + v17));
            v18 = v17 + 16;
            v14 = v17 >= 0x70;
            v17 += 16;
          }

          while (!v14);
          v7 += v18;
          v0 += v1;
          v15 += 16;
          --v16;
        }

        while (v16);
        return (off_280ABCBF0)(v77, 128, v4, v5, v6);
      }

      v45 = 129;
      do
      {
        v46 = 0;
        do
        {
          v47 = *(v0 + v46 * 8 + 1);
          v48 = vrhaddq_u8(*(v0 + v46 * 8), v47);
          *&v15[v46] = v48;
          v14 = v46 >= 14;
          v46 += 2;
        }

        while (!v14);
        v0 += v1;
        v15 += 16;
        --v45;
      }

      while (v45);
      v48.i32[0] = 8 - v3;
      v47.i32[0] = v3;
      v49 = v77;
      v50 = v76;
      v51 = 128;
      v52 = vdupq_lane_s8(*v48.i8, 0);
      v53 = vdupq_lane_s8(*v47.i8, 0);
      do
      {
        v54 = 0;
        do
        {
          *&v50[v54 * 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v49[v54 + 16], *v53.i8), v49[v54], *v52.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v49[v54 + 16], v53), *&v49[v54], v52), 3uLL), *(v7 + v54 * 8));
          v55 = v54 * 8 + 16;
          v14 = v54 >= 14;
          v54 += 2;
        }

        while (!v14);
        v7 += v55;
        v49 += 16;
        v50 += 128;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    if (!v2)
    {
      if (v3 == 4)
      {
        v25 = v0 + v1;
        v26 = v77;
        v27 = 128;
        do
        {
          v28 = 0;
          do
          {
            *&v26[v28 / 8] = vrhaddq_u8(vrhaddq_u8(*(v0 + v28), *(v25 + v28)), *(v7 + v28));
            v29 = v28 + 16;
            v14 = v28 >= 0x70;
            v28 += 16;
          }

          while (!v14);
          v7 += v29;
          v0 += v1;
          v26 += 16;
          v25 += v1;
          --v27;
        }

        while (v27);
      }

      else if (v3)
      {
        v8.i32[0] = 8 - v3;
        v9.i32[0] = v3;
        v37 = v0 + v1;
        v38 = v77;
        v39 = 128;
        v40 = vdupq_lane_s8(v8, 0);
        v41 = vdupq_lane_s8(v9, 0);
        do
        {
          v42 = 0;
          do
          {
            *&v38[v42 / 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v37 + v42), *v41.i8), *(v0 + v42), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v37 + v42), v41), *(v0 + v42), v40), 3uLL), *(v7 + v42));
            v43 = v42 + 16;
            v14 = v42 >= 0x70;
            v42 += 16;
          }

          while (!v14);
          v7 += v43;
          v0 += v1;
          v38 += 16;
          v37 += v1;
          --v39;
        }

        while (v39);
      }

      else
      {
        v10 = v77;
        v11 = 128;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12] = vrhaddq_u8(*(v0 + v12 * 8), *(v7 + v12 * 8));
            v13 = v12 * 8 + 16;
            v14 = v12 >= 14;
            v12 += 2;
          }

          while (!v14);
          v7 += v13;
          v0 += v1;
          v10 += 16;
          --v11;
        }

        while (v11);
      }

      return (off_280ABCBF0)(v77, 128, v4, v5, v6);
    }

    v8.i32[0] = 8 - v2;
    v9.i32[0] = v2;
    v19 = v77;
    if (v3 == 4)
    {
      v56 = 129;
      v57 = vdupq_lane_s8(v8, 0);
      v58 = vdupq_lane_s8(v9, 0);
      do
      {
        v59 = 0;
        do
        {
          *&v19[v59 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v59 + 1), *v58.i8), *(v0 + v59), *v57.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v59 + 1), v58), *(v0 + v59), v57), 3uLL);
          v14 = v59 >= 0x70;
          v59 += 16;
        }

        while (!v14);
        v0 += v1;
        v19 += 16;
        --v56;
      }

      while (v56);
      v60 = v77;
      v61 = v76;
      v62 = 128;
      do
      {
        v63 = 0;
        do
        {
          *&v61[v63 * 8] = vrhaddq_u8(vrhaddq_u8(*&v60[v63], *&v60[v63 + 16]), *(v7 + v63 * 8));
          v64 = v63 * 8 + 16;
          v14 = v63 >= 14;
          v63 += 2;
        }

        while (!v14);
        v7 += v64;
        v60 += 16;
        v61 += 128;
        --v62;
      }

      while (v62);
    }

    else
    {
      if (!v3)
      {
        v20 = 128;
        v21 = vdupq_lane_s8(v8, 0);
        v22 = vdupq_lane_s8(v9, 0);
        do
        {
          v23 = 0;
          do
          {
            *&v19[v23 / 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v23 + 1), *v22.i8), *(v0 + v23), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v23 + 1), v22), *(v0 + v23), v21), 3uLL), *(v7 + v23));
            v24 = v23 + 16;
            v14 = v23 >= 0x70;
            v23 += 16;
          }

          while (!v14);
          v7 += v24;
          v0 += v1;
          v19 += 16;
          --v20;
        }

        while (v20);
        return (off_280ABCBF0)(v77, 128, v4, v5, v6);
      }

      v65 = 129;
      v66 = vdupq_lane_s8(v8, 0);
      v67 = vdupq_lane_s8(v9, 0);
      do
      {
        v68 = 0;
        do
        {
          *&v19[v68 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v0 + v68 + 1), *v67.i8), *(v0 + v68), *v66.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v0 + v68 + 1), v67), *(v0 + v68), v66), 3uLL);
          v14 = v68 >= 0x70;
          v68 += 16;
        }

        while (!v14);
        v0 += v1;
        v19 += 16;
        --v65;
      }

      while (v65);
      v66.i32[0] = 8 - v3;
      v67.i32[0] = v3;
      v69 = v77;
      v70 = v76;
      v71 = 128;
      v72 = vdupq_lane_s8(*v66.i8, 0);
      v73 = vdupq_lane_s8(*v67.i8, 0);
      do
      {
        v74 = 0;
        do
        {
          *&v70[v74 * 8] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v69[v74 + 16], *v73.i8), v69[v74], *v72.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v69[v74 + 16], v73), *&v69[v74], v72), 3uLL), *(v7 + v74 * 8));
          v75 = v74 * 8 + 16;
          v14 = v74 >= 14;
          v74 += 2;
        }

        while (!v14);
        v7 += v75;
        v69 += 16;
        v70 += 128;
        --v71;
      }

      while (v71);
    }
  }

  return (off_280ABCBF0)(v76, 128, v4, v5, v6);
}

uint64_t sub_277A1061C(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10)
{
  v10 = 0;
  v24 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v11 = vdup_lane_s8(a9, 0);
  v12 = vdup_lane_s8(a10, 0);
  do
  {
    v13.i32[0] = *a1;
    v13.i32[1] = *(a1 + a2);
    v14.i32[0] = *(a1 + 1);
    v14.i32[1] = *(a1 + a2 + 1);
    v15 = vrshrn_n_s16(vmlal_u8(vmull_u8(v14, v12), v13, v11), 3uLL);
    *&v23[v10] = v15;
    a1 = (a1 + 2 * a2);
    v10 += 2;
  }

  while ((v10 * 4) != 72);
  v16 = 0;
  v11.i32[0] = 8 - a4;
  v12.i32[0] = a4;
  v17 = v23[0];
  v18 = vdup_lane_s8(v11, 0);
  v19 = vdup_lane_s8(v12, 0);
  do
  {
    v15.i32[0] = v17;
    v20 = *&v23[v16 / 4 + 1];
    v15 = vrhadd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(v20, v19), vzip1_s32(v15, v20), v18), 3uLL), *(a8 + v16));
    *&v22[v16] = v15;
    v17 = v20.i32[1];
    v16 += 8;
  }

  while (v16 != 64);
  return off_280ABCC48(v22, 4, a5, a6, a7);
}

uint64_t sub_277A10748(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10)
{
  v10 = 0;
  v22[33] = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v11 = (a1 + 1);
  v12 = vdup_lane_s8(a9, 0);
  v13 = vdup_lane_s8(a10, 0);
  do
  {
    v22[v10++] = vrshrn_n_s16(vmlal_u8(vmull_u8(*v11, v13), *(v11 - 1), v12), 3uLL);
    v11 = (v11 + a2);
  }

  while ((v10 * 8) != 264);
  v14 = 0;
  v12.i32[0] = 8 - a4;
  v13.i32[0] = a4;
  v15 = 33;
  v16 = v22[0];
  v17 = vdup_lane_s8(v12, 0);
  v18 = vdup_lane_s8(v13, 0);
  do
  {
    v19 = v22[v14 + 1];
    *&v21[v14 * 8] = vrhadd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(v19, v18), v16, v17), 3uLL), *(a8 + v14 * 8));
    --v15;
    ++v14;
    v16 = v19;
  }

  while (v15 > 1);
  return off_280ABCC88(v21, 8, a5, a6, a7);
}

uint64_t sub_277A10868(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10)
{
  v10 = 0;
  v22 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v11 = (a1 + 1);
  v12 = vdupq_lane_s8(a9, 0);
  v13 = vdupq_lane_s8(a10, 0);
  do
  {
    v21[v10++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11, *v13.i8), *(v11 - 1), *v12.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v11->i8, v13), *(&v11[-1].u32[1] + 3), v12), 3uLL);
    v11 = (v11 + a2);
  }

  while ((v10 * 16) != 80);
  v14 = 0;
  v12.i32[0] = 8 - a4;
  v13.i32[0] = a4;
  v15 = v21[0];
  v16 = vdupq_lane_s8(*v12.i8, 0);
  v17 = vdupq_lane_s8(*v13.i8, 0);
  do
  {
    v18 = v21[v14 / 0x10 + 1];
    *&v20[v14] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v18.i8, *v17.i8), *v15.i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v18, v17), v15, v16), 3uLL), *(a8 + v14));
    v14 += 16;
    v15 = v18;
  }

  while (v14 != 64);
  return off_280ABCC10(v20, 16, a5, a6, a7);
}

uint64_t sub_277A10990(uint8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v34 = 0;
      v35 = &a1->i8[1];
      do
      {
        v46[v34++] = vrhaddq_u8(*(v35 - 1), *v35);
        v35 = (v35 + a2);
      }

      while ((v34 * 16) != 1040);
      v36 = 0;
      v37 = v46[0];
      do
      {
        v38 = v46[v36 / 0x10 + 1];
        *&v45[v36] = vrhaddq_u8(vrhaddq_u8(v37, v38), *(a8 + v36));
        v36 += 16;
        v37 = v38;
      }

      while (v36 != 1024);
    }

    else
    {
      v11 = 0;
      v12 = &a1->i8[1];
      if (!a4)
      {
        do
        {
          v46[v11] = vrhaddq_u8(vrhaddq_u8(*(v12 - 1), *v12), *(a8 + v11 * 16));
          ++v11;
          v12 = (v12 + a2);
        }

        while ((v11 * 16) != 1024);
        return (off_280ABCC18)(v46, 16, a5, a6, a7);
      }

      do
      {
        v13 = *v12;
        v14 = vrhaddq_u8(*(v12 - 1), *v12);
        v46[v11++] = v14;
        v12 = (v12 + a2);
      }

      while ((v11 * 16) != 1040);
      v15 = 0;
      v14.i32[0] = 8 - a4;
      v13.i32[0] = a4;
      v16 = v46[0];
      v17 = vdupq_lane_s8(*v14.i8, 0);
      v18 = vdupq_lane_s8(*v13.i8, 0);
      do
      {
        v19 = v46[v15 / 0x10 + 1];
        *&v45[v15] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *v18.i8), *v16.i8, *v17.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v19, v18), v16, v17), 3uLL), *(a8 + v15));
        v15 += 16;
        v16 = v19;
      }

      while (v15 != 1024);
    }

    return (off_280ABCC18)(v45, 16, a5, a6, a7);
  }

  v10 = 0;
  if (a3)
  {
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v20 = &a1->i8[1];
    v21 = vdupq_lane_s8(a9, 0);
    v22 = vdupq_lane_s8(a10, 0);
    if (a4 == 4)
    {
      do
      {
        v46[v10++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
        v20 = (v20 + a2);
      }

      while ((v10 * 16) != 1040);
      v23 = 0;
      v24 = v46[0];
      do
      {
        v25 = v46[v23 / 0x10 + 1];
        *&v45[v23] = vrhaddq_u8(vrhaddq_u8(v24, v25), *(a8 + v23));
        v23 += 16;
        v24 = v25;
      }

      while (v23 != 1024);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v46[v10] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL), *(a8 + v10 * 16));
          ++v10;
          v20 = (v20 + a2);
        }

        while ((v10 * 16) != 1024);
        return (off_280ABCC18)(v46, 16, a5, a6, a7);
      }

      do
      {
        v46[v10++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
        v20 = (v20 + a2);
      }

      while ((v10 * 16) != 1040);
      v26 = 0;
      v21.i32[0] = 8 - a4;
      v22.i32[0] = a4;
      v27 = v46[0];
      v28 = vdupq_lane_s8(*v21.i8, 0);
      v29 = vdupq_lane_s8(*v22.i8, 0);
      do
      {
        v30 = v46[v26 / 0x10 + 1];
        *&v45[v26] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *v29.i8), *v27.i8, *v28.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v30, v29), v27, v28), 3uLL), *(a8 + v26));
        v26 += 16;
        v27 = v30;
      }

      while (v26 != 1024);
    }

    return (off_280ABCC18)(v45, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v31 = *a1;
    v32 = (a1 + a2);
    do
    {
      v33 = *v32;
      v46[v10] = vrhaddq_u8(vrhaddq_u8(v31, *v32), *(a8 + v10 * 16));
      ++v10;
      v32 = (v32 + a2);
      v31 = v33;
    }

    while ((v10 * 16) != 1024);
  }

  else if (a4)
  {
    a9.i32[0] = 8 - a4;
    a10.i32[0] = a4;
    v40 = *a1;
    v41 = &a1->i8[a2];
    v42 = vdupq_lane_s8(a9, 0);
    v43 = vdupq_lane_s8(a10, 0);
    do
    {
      v44 = *v41->i8;
      v46[v10] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41, *v43.i8), *v40.i8, *v42.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v41->i8, v43), v40, v42), 3uLL), *(a8 + v10 * 16));
      ++v10;
      v41 = (v41 + a2);
      v40 = v44;
    }

    while ((v10 * 16) != 1024);
  }

  else
  {
    do
    {
      v46[v10] = vrhaddq_u8(*a1, *(a8 + v10 * 16));
      a1 = (a1 + a2);
      ++v10;
    }

    while ((v10 * 16) != 1024);
  }

  return (off_280ABCC18)(v46, 16, a5, a6, a7);
}

uint64_t sub_277A10DB0(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x16_t *a8, int8x8_t a9, int8x8_t a10)
{
  v102 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v36 = 0;
      v37 = (a1 + 17);
      do
      {
        v38 = &v101[v36];
        v39 = vrhaddq_u8(*(v37 - 1), *v37);
        *v38 = vrhaddq_u8(*(v37 - 17), v37[-1]);
        v38[1] = v39;
        v36 += 32;
        v37 = (v37 + a2);
      }

      while (v36 != 288);
      v40 = v101;
      v41 = v100;
      v42 = 8;
      do
      {
        v43 = 0;
        v44 = 1;
        do
        {
          v45 = v44;
          v46 = *a8++;
          *&v41[v43] = vrhaddq_u8(vrhaddq_u8(*&v40[v43], *&v40[v43 + 32]), v46);
          v43 = 16;
          v44 = 0;
        }

        while ((v45 & 1) != 0);
        v40 += 32;
        v41 += 32;
        --v42;
      }

      while (v42);
    }

    else
    {
      if (!a4)
      {
        v16 = v101;
        v17 = 8;
        do
        {
          v18 = 0;
          v19 = 1;
          do
          {
            v20 = v19;
            v21 = *a8++;
            *&v16[v18] = vrhaddq_u8(vrhaddq_u8(*(a1 + v18), *(a1 + v18 + 1)), v21);
            v18 = 16;
            v19 = 0;
          }

          while ((v20 & 1) != 0);
          a1 += a2;
          v16 += 32;
          --v17;
        }

        while (v17);
        return (off_280ABCC40)(v101, 32, a5, a6, a7);
      }

      v56 = 0;
      v57 = (a1 + 17);
      do
      {
        v58 = &v101[v56];
        v59 = vrhaddq_u8(*(v57 - 17), v57[-1]);
        v60 = vrhaddq_u8(*(v57 - 1), *v57);
        *v58 = v59;
        v58[1] = v60;
        v56 += 32;
        v57 = (v57 + a2);
      }

      while (v56 != 288);
      v61 = 8;
      v59.i32[0] = 8 - a4;
      v60.i32[0] = a4;
      v62 = v101;
      v63 = v100;
      v64 = vdupq_lane_s8(*v59.i8, 0);
      v65 = vdupq_lane_s8(*v60.i8, 0);
      do
      {
        v66 = 0;
        v67 = 1;
        do
        {
          v68 = v67;
          v69 = *a8++;
          *&v63[v66] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v62[v66 + 32], *v65.i8), *&v62[v66], *v64.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v62[v66 + 32], v65), *&v62[v66], v64), 3uLL), v69);
          v66 = 16;
          v67 = 0;
        }

        while ((v68 & 1) != 0);
        v62 += 32;
        v63 += 32;
        --v61;
      }

      while (v61);
    }
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        v30 = v101;
        v31 = 8;
        do
        {
          v32 = 0;
          v33 = 1;
          do
          {
            v34 = v33;
            v35 = *a8++;
            *&v30[v32] = vrhaddq_u8(vrhaddq_u8(*(a1 + v32), *(a1 + v32 + a2)), v35);
            v32 = 16;
            v33 = 0;
          }

          while ((v34 & 1) != 0);
          a1 += a2;
          v30 += 32;
          --v31;
        }

        while (v31);
      }

      else if (a4)
      {
        v47 = 8;
        a9.i32[0] = 8 - a4;
        a10.i32[0] = a4;
        v48 = v101;
        v49 = vdupq_lane_s8(a9, 0);
        v50 = vdupq_lane_s8(a10, 0);
        do
        {
          v51 = 0;
          v52 = 1;
          do
          {
            v53 = v52;
            v54 = *a8++;
            *&v48[v51] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v51 + a2), *v50.i8), *(a1 + v51), *v49.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v51 + a2), v50), *(a1 + v51), v49), 3uLL), v54);
            v51 = 16;
            v52 = 0;
          }

          while ((v53 & 1) != 0);
          a1 += a2;
          v48 += 32;
          --v47;
        }

        while (v47);
      }

      else
      {
        v10 = v101;
        v11 = 8;
        do
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = *a8++;
            v15 = v13;
            *&v10[v12] = vrhaddq_u8(*(a1 + v12), v14);
            v12 = 16;
            v13 = 0;
          }

          while ((v15 & 1) != 0);
          a1 += a2;
          v10 += 32;
          --v11;
        }

        while (v11);
      }

      return (off_280ABCC40)(v101, 32, a5, a6, a7);
    }

    v22 = 8;
    if (a4 == 4)
    {
      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v70 = v101;
      v71 = 9;
      v72 = vdupq_lane_s8(a9, 0);
      v73 = vdupq_lane_s8(a10, 0);
      do
      {
        v74 = 0;
        v75 = 1;
        do
        {
          v76 = v75;
          *&v70[v74] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v74 + 1), *v73.i8), *(a1 + v74), *v72.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v74 + 1), v73), *(a1 + v74), v72), 3uLL);
          v74 = 16;
          v75 = 0;
        }

        while ((v76 & 1) != 0);
        a1 += a2;
        v70 += 32;
        --v71;
      }

      while (v71);
      v77 = v101;
      v78 = v100;
      v79 = 8;
      do
      {
        v80 = 0;
        v81 = 1;
        do
        {
          v82 = v81;
          v83 = *a8++;
          *&v78[v80] = vrhaddq_u8(vrhaddq_u8(*&v77[v80], *&v77[v80 + 32]), v83);
          v80 = 16;
          v81 = 0;
        }

        while ((v82 & 1) != 0);
        v77 += 32;
        v78 += 32;
        --v79;
      }

      while (v79);
    }

    else
    {
      if (!a4)
      {
        a9.i32[0] = 8 - a3;
        a10.i32[0] = a3;
        v23 = v101;
        v24 = vdupq_lane_s8(a9, 0);
        v25 = vdupq_lane_s8(a10, 0);
        do
        {
          v26 = 0;
          v27 = 1;
          do
          {
            v28 = v27;
            v29 = *a8++;
            *&v23[v26] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v26 + 1), *v25.i8), *(a1 + v26), *v24.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v26 + 1), v25), *(a1 + v26), v24), 3uLL), v29);
            v26 = 16;
            v27 = 0;
          }

          while ((v28 & 1) != 0);
          a1 += a2;
          v23 += 32;
          --v22;
        }

        while (v22);
        return (off_280ABCC40)(v101, 32, a5, a6, a7);
      }

      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v84 = v101;
      v85 = 9;
      v86 = vdupq_lane_s8(a9, 0);
      v87 = vdupq_lane_s8(a10, 0);
      do
      {
        v88 = 0;
        v89 = 1;
        do
        {
          v90 = v89;
          *&v84[v88] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v88 + 1), *v87.i8), *(a1 + v88), *v86.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v88 + 1), v87), *(a1 + v88), v86), 3uLL);
          v88 = 16;
          v89 = 0;
        }

        while ((v90 & 1) != 0);
        a1 += a2;
        v84 += 32;
        --v85;
      }

      while (v85);
      v91 = 8;
      v86.i32[0] = 8 - a4;
      v87.i32[0] = a4;
      v92 = v101;
      v93 = v100;
      v94 = vdupq_lane_s8(*v86.i8, 0);
      v95 = vdupq_lane_s8(*v87.i8, 0);
      do
      {
        v96 = 0;
        v97 = 1;
        do
        {
          v98 = v97;
          v99 = *a8++;
          *&v93[v96] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v92[v96 + 32], *v95.i8), *&v92[v96], *v94.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v92[v96 + 32], v95), *&v92[v96], v94), 3uLL), v99);
          v96 = 16;
          v97 = 0;
        }

        while ((v98 & 1) != 0);
        v92 += 32;
        v93 += 32;
        --v91;
      }

      while (v91);
    }
  }

  return (off_280ABCC40)(v100, 32, a5, a6, a7);
}

uint64_t sub_277A11334(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10)
{
  v78 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v15 = v77;
    if (a4 == 4)
    {
      v30 = 17;
      do
      {
        v31 = 0;
        do
        {
          *&v15[v31] = vrhaddq_u8(*(a1 + v31), *(a1 + v31 + 1));
          v14 = v31 >= 0x30;
          v31 += 16;
        }

        while (!v14);
        a1 += a2;
        v15 += 64;
        --v30;
      }

      while (v30);
      v32 = v77;
      v33 = v76;
      v34 = 16;
      do
      {
        v35 = 0;
        do
        {
          *&v33[v35] = vrhaddq_u8(vrhaddq_u8(*&v32[v35], *&v32[v35 + 64]), *(a8 + v35));
          v36 = v35 + 16;
          v14 = v35 >= 0x30;
          v35 += 16;
        }

        while (!v14);
        a8 += v36;
        v32 += 64;
        v33 += 64;
        --v34;
      }

      while (v34);
    }

    else
    {
      if (!a4)
      {
        v16 = 16;
        do
        {
          v17 = 0;
          do
          {
            *&v15[v17] = vrhaddq_u8(vrhaddq_u8(*(a1 + v17), *(a1 + v17 + 1)), *(a8 + v17));
            v18 = v17 + 16;
            v14 = v17 >= 0x30;
            v17 += 16;
          }

          while (!v14);
          a8 += v18;
          a1 += a2;
          v15 += 64;
          --v16;
        }

        while (v16);
        return (off_280ABCC68)(v77, 64, a5, a6, a7);
      }

      v45 = 17;
      do
      {
        v46 = 0;
        do
        {
          v47 = *(a1 + v46 + 1);
          v48 = vrhaddq_u8(*(a1 + v46), v47);
          *&v15[v46] = v48;
          v14 = v46 >= 0x30;
          v46 += 16;
        }

        while (!v14);
        a1 += a2;
        v15 += 64;
        --v45;
      }

      while (v45);
      v48.i32[0] = 8 - a4;
      v47.i32[0] = a4;
      v49 = v77;
      v50 = v76;
      v51 = 16;
      v52 = vdupq_lane_s8(*v48.i8, 0);
      v53 = vdupq_lane_s8(*v47.i8, 0);
      do
      {
        v54 = 0;
        do
        {
          *&v50[v54] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v49[v54 + 64], *v53.i8), *&v49[v54], *v52.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v49[v54 + 64], v53), *&v49[v54], v52), 3uLL), *(a8 + v54));
          v55 = v54 + 16;
          v14 = v54 >= 0x30;
          v54 += 16;
        }

        while (!v14);
        a8 += v55;
        v49 += 64;
        v50 += 64;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        v25 = a1 + a2;
        v26 = v77;
        v27 = 16;
        do
        {
          v28 = 0;
          do
          {
            *&v26[v28] = vrhaddq_u8(vrhaddq_u8(*(a1 + v28), *(v25 + v28)), *(a8 + v28));
            v29 = v28 + 16;
            v14 = v28 >= 0x30;
            v28 += 16;
          }

          while (!v14);
          a8 += v29;
          a1 += a2;
          v26 += 64;
          v25 += a2;
          --v27;
        }

        while (v27);
      }

      else if (a4)
      {
        a9.i32[0] = 8 - a4;
        a10.i32[0] = a4;
        v37 = a1 + a2;
        v38 = v77;
        v39 = 16;
        v40 = vdupq_lane_s8(a9, 0);
        v41 = vdupq_lane_s8(a10, 0);
        do
        {
          v42 = 0;
          do
          {
            *&v38[v42] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v37 + v42), *v41.i8), *(a1 + v42), *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v37 + v42), v41), *(a1 + v42), v40), 3uLL), *(a8 + v42));
            v43 = v42 + 16;
            v14 = v42 >= 0x30;
            v42 += 16;
          }

          while (!v14);
          a8 += v43;
          a1 += a2;
          v38 += 64;
          v37 += a2;
          --v39;
        }

        while (v39);
      }

      else
      {
        v10 = v77;
        v11 = 16;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12] = vrhaddq_u8(*(a1 + v12), *(a8 + v12));
            v13 = v12 + 16;
            v14 = v12 >= 0x30;
            v12 += 16;
          }

          while (!v14);
          a8 += v13;
          a1 += a2;
          v10 += 64;
          --v11;
        }

        while (v11);
      }

      return (off_280ABCC68)(v77, 64, a5, a6, a7);
    }

    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v19 = v77;
    if (a4 == 4)
    {
      v56 = 17;
      v57 = vdupq_lane_s8(a9, 0);
      v58 = vdupq_lane_s8(a10, 0);
      do
      {
        v59 = 0;
        do
        {
          *&v19[v59] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v59 + 1), *v58.i8), *(a1 + v59), *v57.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v59 + 1), v58), *(a1 + v59), v57), 3uLL);
          v14 = v59 >= 0x30;
          v59 += 16;
        }

        while (!v14);
        a1 += a2;
        v19 += 64;
        --v56;
      }

      while (v56);
      v60 = v77;
      v61 = v76;
      v62 = 16;
      do
      {
        v63 = 0;
        do
        {
          *&v61[v63] = vrhaddq_u8(vrhaddq_u8(*&v60[v63], *&v60[v63 + 64]), *(a8 + v63));
          v64 = v63 + 16;
          v14 = v63 >= 0x30;
          v63 += 16;
        }

        while (!v14);
        a8 += v64;
        v60 += 64;
        v61 += 64;
        --v62;
      }

      while (v62);
    }

    else
    {
      if (!a4)
      {
        v20 = 16;
        v21 = vdupq_lane_s8(a9, 0);
        v22 = vdupq_lane_s8(a10, 0);
        do
        {
          v23 = 0;
          do
          {
            *&v19[v23] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v23 + 1), *v22.i8), *(a1 + v23), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v23 + 1), v22), *(a1 + v23), v21), 3uLL), *(a8 + v23));
            v24 = v23 + 16;
            v14 = v23 >= 0x30;
            v23 += 16;
          }

          while (!v14);
          a8 += v24;
          a1 += a2;
          v19 += 64;
          --v20;
        }

        while (v20);
        return (off_280ABCC68)(v77, 64, a5, a6, a7);
      }

      v65 = 17;
      v66 = vdupq_lane_s8(a9, 0);
      v67 = vdupq_lane_s8(a10, 0);
      do
      {
        v68 = 0;
        do
        {
          *&v19[v68] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v68 + 1), *v67.i8), *(a1 + v68), *v66.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v68 + 1), v67), *(a1 + v68), v66), 3uLL);
          v14 = v68 >= 0x30;
          v68 += 16;
        }

        while (!v14);
        a1 += a2;
        v19 += 64;
        --v65;
      }

      while (v65);
      v66.i32[0] = 8 - a4;
      v67.i32[0] = a4;
      v69 = v77;
      v70 = v76;
      v71 = 16;
      v72 = vdupq_lane_s8(*v66.i8, 0);
      v73 = vdupq_lane_s8(*v67.i8, 0);
      do
      {
        v74 = 0;
        do
        {
          *&v70[v74] = vrhaddq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v69[v74 + 64], *v73.i8), *&v69[v74], *v72.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v69[v74 + 64], v73), *&v69[v74], v72), 3uLL), *(a8 + v74));
          v75 = v74 + 16;
          v14 = v74 >= 0x30;
          v74 += 16;
        }

        while (!v14);
        a8 += v75;
        v69 += 64;
        v70 += 64;
        --v71;
      }

      while (v71);
    }
  }

  return (off_280ABCC68)(v76, 64, a5, a6, a7);
}

uint64_t sub_277A118A8(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, double a11, double a12, int32x2_t a13, uint64_t a14)
{
  v14 = 0;
  v30 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v15 = vdup_lane_s8(a9, 0);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v17.i32[0] = *a1;
    v17.i32[1] = *(a1 + a2);
    v18.i32[0] = *(a1 + 1);
    v18.i32[1] = *(a1 + a2 + 1);
    v19 = vmlal_u8(vmull_u8(v18, v16), v17, v15);
    v20 = vrshrn_n_s16(v19, 3uLL);
    *&v29[v14] = v20;
    a1 = (a1 + 2 * a2);
    v14 += 2;
  }

  while ((v14 * 4) != 24);
  v21 = 0;
  v20.i8[0] = *(a14 + 4);
  v19.i8[0] = *(a14 + 8);
  v15.i32[0] = 8 - a4;
  v16.i32[0] = a4;
  v22 = v29[0];
  v23 = vdup_lane_s8(v15, 0);
  v24 = vdup_lane_s8(v16, 0);
  v25 = vdup_lane_s8(v20, 0);
  *v19.i8 = vdup_lane_s8(*v19.i8, 0);
  do
  {
    a13.i32[0] = v22;
    v26 = *&v29[v21 / 4 + 1];
    a13 = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v21), *v19.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(v26, v24), vzip1_s32(a13, v26), v23), 3uLL), v25), 4uLL);
    *&v28[v21] = *&a13;
    v22 = v26.i32[1];
    v21 += 8;
  }

  while (v21 != 16);
  return off_280ABCC50(v28, 4, a5, a6, a7);
}

uint64_t sub_277A119F0(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, double a11, double a12, int32x2_t a13, uint64_t a14)
{
  v14 = 0;
  v30 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v15 = vdup_lane_s8(a9, 0);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v17.i32[0] = *a1;
    v17.i32[1] = *(a1 + a2);
    v18.i32[0] = *(a1 + 1);
    v18.i32[1] = *(a1 + a2 + 1);
    v19 = vmlal_u8(vmull_u8(v18, v16), v17, v15);
    v20 = vrshrn_n_s16(v19, 3uLL);
    *&v29[v14] = v20;
    a1 = (a1 + 2 * a2);
    v14 += 2;
  }

  while ((v14 * 4) != 40);
  v21 = 0;
  v20.i8[0] = *(a14 + 4);
  v19.i8[0] = *(a14 + 8);
  v15.i32[0] = 8 - a4;
  v16.i32[0] = a4;
  v22 = v29[0];
  v23 = vdup_lane_s8(v15, 0);
  v24 = vdup_lane_s8(v16, 0);
  v25 = vdup_lane_s8(v20, 0);
  *v19.i8 = vdup_lane_s8(*v19.i8, 0);
  do
  {
    a13.i32[0] = v22;
    v26 = *&v29[v21 / 4 + 1];
    a13 = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v21), *v19.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(v26, v24), vzip1_s32(a13, v26), v23), 3uLL), v25), 4uLL);
    *&v28[v21] = *&a13;
    v22 = v26.i32[1];
    v21 += 8;
  }

  while (v21 != 32);
  return off_280ABCC58(v28, 4, a5, a6, a7);
}

uint64_t sub_277A11B38(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, uint64_t a11)
{
  v11 = 0;
  v26[5] = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v12 = (a1 + 1);
  v13 = vdup_lane_s8(a9, 0);
  v14 = vdup_lane_s8(a10, 0);
  do
  {
    v15 = vmlal_u8(vmull_u8(*v12, v14), *(v12 - 1), v13);
    v16 = vrshrn_n_s16(v15, 3uLL);
    v26[v11++] = v16;
    v12 = (v12 + a2);
  }

  while ((v11 * 8) != 40);
  v17 = 0;
  v16.i8[0] = *(a11 + 4);
  v15.i8[0] = *(a11 + 8);
  v13.i32[0] = 8 - a4;
  v14.i32[0] = a4;
  v18 = 5;
  v19 = v26[0];
  v20 = vdup_lane_s8(v13, 0);
  v21 = vdup_lane_s8(v14, 0);
  v22 = vdup_lane_s8(v16, 0);
  *v15.i8 = vdup_lane_s8(*v15.i8, 0);
  do
  {
    v23 = v26[v17 + 1];
    *&v25[v17 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v17 * 8), *v15.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(v23, v21), v19, v20), 3uLL), v22), 4uLL);
    --v18;
    ++v17;
    v19 = v23;
  }

  while (v18 > 1);
  return off_280ABCC90(v25, 8, a5, a6, a7);
}

uint64_t sub_277A11C6C(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, uint64_t a11)
{
  v11 = 0;
  v26[9] = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v12 = (a1 + 1);
  v13 = vdup_lane_s8(a9, 0);
  v14 = vdup_lane_s8(a10, 0);
  do
  {
    v15 = vmlal_u8(vmull_u8(*v12, v14), *(v12 - 1), v13);
    v16 = vrshrn_n_s16(v15, 3uLL);
    v26[v11++] = v16;
    v12 = (v12 + a2);
  }

  while ((v11 * 8) != 72);
  v17 = 0;
  v16.i8[0] = *(a11 + 4);
  v15.i8[0] = *(a11 + 8);
  v13.i32[0] = 8 - a4;
  v14.i32[0] = a4;
  v18 = 9;
  v19 = v26[0];
  v20 = vdup_lane_s8(v13, 0);
  v21 = vdup_lane_s8(v14, 0);
  v22 = vdup_lane_s8(v16, 0);
  *v15.i8 = vdup_lane_s8(*v15.i8, 0);
  do
  {
    v23 = v26[v17 + 1];
    *&v25[v17 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v17 * 8), *v15.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(v23, v21), v19, v20), 3uLL), v22), 4uLL);
    --v18;
    ++v17;
    v19 = v23;
  }

  while (v18 > 1);
  return off_280ABCC98(v25, 8, a5, a6, a7);
}

uint64_t sub_277A11DA0(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, uint64_t a11)
{
  v11 = 0;
  v26[17] = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v12 = (a1 + 1);
  v13 = vdup_lane_s8(a9, 0);
  v14 = vdup_lane_s8(a10, 0);
  do
  {
    v15 = vmlal_u8(vmull_u8(*v12, v14), *(v12 - 1), v13);
    v16 = vrshrn_n_s16(v15, 3uLL);
    v26[v11++] = v16;
    v12 = (v12 + a2);
  }

  while ((v11 * 8) != 136);
  v17 = 0;
  v16.i8[0] = *(a11 + 4);
  v15.i8[0] = *(a11 + 8);
  v13.i32[0] = 8 - a4;
  v14.i32[0] = a4;
  v18 = 17;
  v19 = v26[0];
  v20 = vdup_lane_s8(v13, 0);
  v21 = vdup_lane_s8(v14, 0);
  v22 = vdup_lane_s8(v16, 0);
  *v15.i8 = vdup_lane_s8(*v15.i8, 0);
  do
  {
    v23 = v26[v17 + 1];
    *&v25[v17 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v17 * 8), *v15.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(v23, v21), v19, v20), 3uLL), v22), 4uLL);
    --v18;
    ++v17;
    v19 = v23;
  }

  while (v18 > 1);
  return off_280ABCC80(v25, 8, a5, a6, a7);
}

uint64_t sub_277A11EDC(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, uint64_t a11)
{
  v14 = 0;
  v24 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v15 = (a1 + 1);
  v16 = vdupq_lane_s8(a9, 0);
  v17 = vdupq_lane_s8(a10, 0);
  do
  {
    v18 = *(v15 - 1);
    v19 = vmlal_high_u8(vmull_high_u8(*v15, v17), v18, v16);
    v20 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15->i8, *v17.i8), *v18.i8, *v16.i8), 3uLL), v19, 3uLL);
    *&v23[v14] = v20;
    v14 += 16;
    v15 = (v15 + a2);
  }

  while (v14 != 144);
  sub_277A11FE8(v23, v22, 16, 16, 0x10u, 8, a4, a8, *v16.i8, *v17.i8, *v20.i8, *v19.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  return off_280ABCC20(v22, 16, a5, a6, a7);
}

uint64_t sub_277A11FE8(uint64_t result, uint64_t a2, int a3, int a4, unsigned int a5, int a6, __int32 a7, uint64_t a8, int8x8_t a9, int8x8_t a10, int8x8_t a11, int8x8_t a12, __int8 a13, __int16 a14, __int8 a15)
{
  a11.i8[0] = a13;
  a12.i8[0] = a15;
  a9.i32[0] = 8 - a7;
  a10.i32[0] = a7;
  v15 = vdupq_lane_s8(a9, 0);
  v16 = result + a4;
  v17 = vdupq_lane_s8(a10, 0);
  v18 = vdup_lane_s8(a11, 0);
  v19 = vdupq_lane_s8(a12, 0);
  do
  {
    v20 = 0;
    do
    {
      *(a2 + v20) = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v20), *v19.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*(v16 + v20), *v17.i8), *(result + v20), *v15.i8), 3uLL), v18), 4uLL), vmlal_high_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(*(v16 + v20), v17), *(result + v20), v15), 3uLL), v18), *(a8 + v20), v19), 4uLL);
      v20 += 16;
    }

    while (v20 < a5);
    a8 += v20;
    result += a3;
    a2 += a5;
    v16 += a3;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t sub_277A12088(uint8x8_t *a1, int a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, int8x16_t a11, int16x8_t a12, uint64_t a13)
{
  v16 = a4;
  v61 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = 0;
      v33 = (a1 + 1);
      do
      {
        v34 = *v33;
        v35 = vrhaddq_u8(*(v33 - 1), *v33);
        v60[v32++] = v35;
        v33 = (v33 + a2);
      }

      while ((v32 * 16) != 272);
      v36 = 0;
      v35.i8[0] = *(a13 + 4);
      v34.i8[0] = *(a13 + 8);
      v37 = v60[0];
      v38 = vdupq_lane_s8(*v35.i8, 0);
      v39 = vdupq_lane_s8(*v34.i8, 0);
      do
      {
        v40 = v60[v36 / 0x10 + 1];
        v41 = vrhaddq_u8(v37, v40);
        *&v59[v36] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v36), *v39.i8), *v41.i8, *v38.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v36), v39), v41, v38), 4uLL);
        v36 += 16;
        v37 = v40;
      }

      while (v36 != 256);
      return (off_280ABCC00)(v59, 16, a5, a6, a7, a6, v16);
    }

    v20 = 0;
    if (!a4)
    {
      a9.i8[0] = *(a13 + 4);
      a10.i8[0] = *(a13 + 8);
      v21 = (a1 + 1);
      v22 = vdupq_lane_s8(a9, 0);
      v23 = vdupq_lane_s8(a10, 0);
      do
      {
        v24 = vrhaddq_u8(*(v21 - 1), *v21);
        v60[v20] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v20 * 16), *v23.i8), *v24.i8, *v22.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v20 * 16), v23), v24, v22), 4uLL);
        ++v20;
        v21 = (v21 + a2);
      }

      while ((v20 * 16) != 256);
      return (off_280ABCC00)(v60, 16, a5, a6, a7, a6, v16);
    }

    v43 = (a1 + 1);
    do
    {
      v44 = *v43;
      v45 = vrhaddq_u8(*(v43 - 1), *v43);
      v60[v20++] = v45;
      v43 = (v43 + a2);
    }

    while ((v20 * 16) != 272);
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        v25 = 0;
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v26 = *a1->i8;
        v27 = (a1 + a2);
        v28 = vdupq_lane_s8(a9, 0);
        v29 = vdupq_lane_s8(a10, 0);
        do
        {
          v30 = *v27;
          v31 = vrhaddq_u8(v26, *v27);
          v60[v25 / 0x10] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v25), *v29.i8), *v31.i8, *v28.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v25), v29), v31, v28), 4uLL);
          v25 += 16;
          v27 = (v27 + a2);
          v26 = v30;
        }

        while (v25 != 256);
      }

      else if (a4)
      {
        sub_277A11FE8(a1, v60, a2, a2, 0x10u, 16, a4, a8, a9, a10, *a11.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      }

      else
      {
        v17 = 0;
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v18 = vdupq_lane_s8(a9, 0);
        v19 = vdupq_lane_s8(a10, 0);
        do
        {
          v60[v17 / 0x10] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v17), *v19.i8), *a1, *v18.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v17), v19), *a1->i8, v18), 4uLL);
          a1 = (a1 + a2);
          v17 += 16;
        }

        while (v17 != 256);
      }

      return (off_280ABCC00)(v60, 16, a5, a6, a7, a6, v16);
    }

    if (a4 == 4)
    {
      v46 = 0;
      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v47 = (a1 + 1);
      v48 = vdupq_lane_s8(a9, 0);
      v49 = vdupq_lane_s8(a10, 0);
      do
      {
        v60[v46++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v47, *v49.i8), *(v47 - 1), *v48.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v47->i8, v49), *(&v47[-1].u32[1] + 3), v48), 3uLL);
        v47 = (v47 + a2);
      }

      while ((v46 * 16) != 272);
      v50 = 0;
      v48.i8[0] = *(a13 + 4);
      v49.i8[0] = *(a13 + 8);
      v51 = v60[0];
      v52 = vdupq_lane_s8(*v48.i8, 0);
      v53 = vdupq_lane_s8(*v49.i8, 0);
      do
      {
        v54 = v60[v50 / 0x10 + 1];
        v55 = vrhaddq_u8(v51, v54);
        *&v59[v50] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v50), *v53.i8), *v55.i8, *v52.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v50), v53), v55, v52), 4uLL);
        v50 += 16;
        v51 = v54;
      }

      while (v50 != 256);
      return (off_280ABCC00)(v59, 16, a5, a6, a7, a6, v16);
    }

    if (!a4)
    {
      sub_277A11FE8(a1, v60, a2, 1, 0x10u, 16, a3, a8, a9, a10, *a11.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      return (off_280ABCC00)(v60, 16, a5, a6, a7, a6, v16);
    }

    v56 = 0;
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v57 = (a1 + 1);
    v45 = vdupq_lane_s8(a9, 0);
    v44 = vdupq_lane_s8(a10, 0);
    do
    {
      v58 = *(v57 - 1);
      a12 = vmlal_high_u8(vmull_high_u8(*v57, v44), v58, v45);
      a11 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v57->i8, *v44.i8), *v58.i8, *v45.i8), 3uLL), a12, 3uLL);
      v60[v56++] = a11;
      v57 = (v57 + a2);
    }

    while ((v56 * 16) != 272);
  }

  sub_277A11FE8(v60, v59, 16, 16, 0x10u, 16, a4, a8, *v45.i8, *v44.i8, *a11.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
  return (off_280ABCC00)(v59, 16, a5, a6, a7, a6, v16);
}

uint64_t sub_277A124B4(uint8x8_t *a1, int a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, int8x16_t a11, int16x8_t a12, uint64_t a13)
{
  v16 = a4;
  v61 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = 0;
      v33 = (a1 + 1);
      do
      {
        v34 = *v33;
        v35 = vrhaddq_u8(*(v33 - 1), *v33);
        v60[v32++] = v35;
        v33 = (v33 + a2);
      }

      while ((v32 * 16) != 528);
      v36 = 0;
      v35.i8[0] = *(a13 + 4);
      v34.i8[0] = *(a13 + 8);
      v37 = v60[0];
      v38 = vdupq_lane_s8(*v35.i8, 0);
      v39 = vdupq_lane_s8(*v34.i8, 0);
      do
      {
        v40 = v60[v36 / 0x10 + 1];
        v41 = vrhaddq_u8(v37, v40);
        *&v59[v36] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v36), *v39.i8), *v41.i8, *v38.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v36), v39), v41, v38), 4uLL);
        v36 += 16;
        v37 = v40;
      }

      while (v36 != 512);
      return (off_280ABCC08)(v59, 16, a5, a6, a7, a6, v16);
    }

    v20 = 0;
    if (!a4)
    {
      a9.i8[0] = *(a13 + 4);
      a10.i8[0] = *(a13 + 8);
      v21 = (a1 + 1);
      v22 = vdupq_lane_s8(a9, 0);
      v23 = vdupq_lane_s8(a10, 0);
      do
      {
        v24 = vrhaddq_u8(*(v21 - 1), *v21);
        v60[v20] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v20 * 16), *v23.i8), *v24.i8, *v22.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v20 * 16), v23), v24, v22), 4uLL);
        ++v20;
        v21 = (v21 + a2);
      }

      while ((v20 * 16) != 512);
      return (off_280ABCC08)(v60, 16, a5, a6, a7, a6, v16);
    }

    v43 = (a1 + 1);
    do
    {
      v44 = *v43;
      v45 = vrhaddq_u8(*(v43 - 1), *v43);
      v60[v20++] = v45;
      v43 = (v43 + a2);
    }

    while ((v20 * 16) != 528);
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        v25 = 0;
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v26 = *a1->i8;
        v27 = (a1 + a2);
        v28 = vdupq_lane_s8(a9, 0);
        v29 = vdupq_lane_s8(a10, 0);
        do
        {
          v30 = *v27;
          v31 = vrhaddq_u8(v26, *v27);
          v60[v25 / 0x10] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v25), *v29.i8), *v31.i8, *v28.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v25), v29), v31, v28), 4uLL);
          v25 += 16;
          v27 = (v27 + a2);
          v26 = v30;
        }

        while (v25 != 512);
      }

      else if (a4)
      {
        sub_277A11FE8(a1, v60, a2, a2, 0x10u, 32, a4, a8, a9, a10, *a11.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      }

      else
      {
        v17 = 0;
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v18 = vdupq_lane_s8(a9, 0);
        v19 = vdupq_lane_s8(a10, 0);
        do
        {
          v60[v17 / 0x10] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v17), *v19.i8), *a1, *v18.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v17), v19), *a1->i8, v18), 4uLL);
          a1 = (a1 + a2);
          v17 += 16;
        }

        while (v17 != 512);
      }

      return (off_280ABCC08)(v60, 16, a5, a6, a7, a6, v16);
    }

    if (a4 == 4)
    {
      v46 = 0;
      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v47 = (a1 + 1);
      v48 = vdupq_lane_s8(a9, 0);
      v49 = vdupq_lane_s8(a10, 0);
      do
      {
        v60[v46++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v47, *v49.i8), *(v47 - 1), *v48.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v47->i8, v49), *(&v47[-1].u32[1] + 3), v48), 3uLL);
        v47 = (v47 + a2);
      }

      while ((v46 * 16) != 528);
      v50 = 0;
      v48.i8[0] = *(a13 + 4);
      v49.i8[0] = *(a13 + 8);
      v51 = v60[0];
      v52 = vdupq_lane_s8(*v48.i8, 0);
      v53 = vdupq_lane_s8(*v49.i8, 0);
      do
      {
        v54 = v60[v50 / 0x10 + 1];
        v55 = vrhaddq_u8(v51, v54);
        *&v59[v50] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v50), *v53.i8), *v55.i8, *v52.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v50), v53), v55, v52), 4uLL);
        v50 += 16;
        v51 = v54;
      }

      while (v50 != 512);
      return (off_280ABCC08)(v59, 16, a5, a6, a7, a6, v16);
    }

    if (!a4)
    {
      sub_277A11FE8(a1, v60, a2, 1, 0x10u, 32, a3, a8, a9, a10, *a11.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      return (off_280ABCC08)(v60, 16, a5, a6, a7, a6, v16);
    }

    v56 = 0;
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v57 = (a1 + 1);
    v45 = vdupq_lane_s8(a9, 0);
    v44 = vdupq_lane_s8(a10, 0);
    do
    {
      v58 = *(v57 - 1);
      a12 = vmlal_high_u8(vmull_high_u8(*v57, v44), v58, v45);
      a11 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v57->i8, *v44.i8), *v58.i8, *v45.i8), 3uLL), a12, 3uLL);
      v60[v56++] = a11;
      v57 = (v57 + a2);
    }

    while ((v56 * 16) != 528);
  }

  sub_277A11FE8(v60, v59, 16, 16, 0x10u, 32, a4, a8, *v45.i8, *v44.i8, *a11.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
  return (off_280ABCC08)(v59, 16, a5, a6, a7, a6, v16);
}

uint64_t sub_277A128E0(uint64_t a1, int a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x16_t *a8, int8x8_t a9, int8x8_t a10, int8x8_t a11, int16x8_t a12, uint64_t a13)
{
  v16 = a4;
  v92 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v43 = 0;
      v44 = (a1 + 17);
      do
      {
        v45 = &v91[v43];
        v46 = vrhaddq_u8(*(v44 - 17), v44[-1]);
        v47 = vrhaddq_u8(*(v44 - 1), *v44);
        *v45 = v46;
        v45[1] = v47;
        v43 += 32;
        v44 = (v44 + a2);
      }

      while (v43 != 544);
      v46.i8[0] = *(a13 + 4);
      v47.i8[0] = *(a13 + 8);
      v48 = v91;
      v49 = v90;
      v50 = 16;
      v51 = vdupq_lane_s8(*v46.i8, 0);
      v52 = vdupq_lane_s8(*v47.i8, 0);
      do
      {
        v53 = 0;
        v54 = 1;
        do
        {
          v55 = v54;
          v56 = *a8++;
          v57 = vrhaddq_u8(*&v48[v53], *&v48[v53 + 32]);
          *&v49[v53] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v56.i8, *v52.i8), *v57.i8, *v51.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v56, v52), v57, v51), 4uLL);
          v53 = 16;
          v54 = 0;
        }

        while ((v55 & 1) != 0);
        v48 += 32;
        v49 += 32;
        --v50;
      }

      while (v50);
      return (off_280ABCC28)(v90, 32, a5, a6, a7, a6, v16, a8);
    }

    if (!a4)
    {
      a9.i8[0] = *(a13 + 4);
      a10.i8[0] = *(a13 + 8);
      v25 = v91;
      v26 = 16;
      v27 = vdupq_lane_s8(a9, 0);
      v28 = vdupq_lane_s8(a10, 0);
      do
      {
        v29 = 0;
        v30 = 1;
        do
        {
          v31 = v30;
          v32 = *a8++;
          v33 = vrhaddq_u8(*(a1 + v29), *(a1 + v29 + 1));
          *&v25[v29] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *v28.i8), *v33.i8, *v27.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v32, v28), v33, v27), 4uLL);
          v29 = 16;
          v30 = 0;
        }

        while ((v31 & 1) != 0);
        a1 += a2;
        v25 += 32;
        --v26;
      }

      while (v26);
      return (off_280ABCC28)(v91, 32, a5, a6, a7, a6, v16, a8);
    }

    v59 = 0;
    v60 = (a1 + 17);
    do
    {
      v61 = &v91[v59];
      v62 = *v60;
      v63 = vrhaddq_u8(*(v60 - 17), v60[-1]);
      v64 = vrhaddq_u8(*(v60 - 1), *v60);
      *v61 = v63;
      v61[1] = v64;
      v59 += 32;
      v60 = (v60 + a2);
    }

    while (v59 != 544);
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v34 = v91;
        v35 = 16;
        v36 = vdupq_lane_s8(a9, 0);
        v37 = vdupq_lane_s8(a10, 0);
        do
        {
          v38 = 0;
          v39 = 1;
          do
          {
            v40 = v39;
            v41 = *a8++;
            v42 = vrhaddq_u8(*(a1 + v38), *(a1 + v38 + a2));
            *&v34[v38] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *v37.i8), *v42.i8, *v36.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v41, v37), v42, v36), 4uLL);
            v38 = 16;
            v39 = 0;
          }

          while ((v40 & 1) != 0);
          a1 += a2;
          v34 += 32;
          --v35;
        }

        while (v35);
      }

      else if (a4)
      {
        sub_277A11FE8(a1, v91, a2, a2, 0x20u, 16, a4, a8, a9, a10, a11, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      }

      else
      {
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v17 = v91;
        v18 = 16;
        v19 = vdupq_lane_s8(a9, 0);
        v20 = vdupq_lane_s8(a10, 0);
        do
        {
          v21 = 0;
          v22 = 1;
          do
          {
            v23 = v22;
            v24 = *a8++;
            *&v17[v21] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *v20.i8), *(a1 + v21), *v19.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v24, v20), *(a1 + v21), v19), 4uLL);
            v21 = 16;
            v22 = 0;
          }

          while ((v23 & 1) != 0);
          a1 += a2;
          v17 += 32;
          --v18;
        }

        while (v18);
      }

      return (off_280ABCC28)(v91, 32, a5, a6, a7, a6, v16, a8);
    }

    if (a4 == 4)
    {
      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v65 = v91;
      v66 = 17;
      v67 = vdupq_lane_s8(a9, 0);
      v68 = vdupq_lane_s8(a10, 0);
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          *&v65[v69] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v69 + 1), *v68.i8), *(a1 + v69), *v67.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v69 + 1), v68), *(a1 + v69), v67), 3uLL);
          v69 = 16;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        a1 += a2;
        v65 += 32;
        --v66;
      }

      while (v66);
      v67.i8[0] = *(a13 + 4);
      v68.i8[0] = *(a13 + 8);
      v72 = v91;
      v73 = v90;
      v74 = 16;
      v75 = vdupq_lane_s8(*v67.i8, 0);
      v76 = vdupq_lane_s8(*v68.i8, 0);
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *a8++;
          v81 = vrhaddq_u8(*&v72[v77], *&v72[v77 + 32]);
          *&v73[v77] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v80.i8, *v76.i8), *v81.i8, *v75.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v80, v76), v81, v75), 4uLL);
          v77 = 16;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v72 += 32;
        v73 += 32;
        --v74;
      }

      while (v74);
      return (off_280ABCC28)(v90, 32, a5, a6, a7, a6, v16, a8);
    }

    if (!a4)
    {
      sub_277A11FE8(a1, v91, a2, 1, 0x20u, 16, a3, a8, a9, a10, a11, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      return (off_280ABCC28)(v91, 32, a5, a6, a7, a6, v16, a8);
    }

    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v82 = v91;
    v83 = 17;
    v63 = vdupq_lane_s8(a9, 0);
    v64 = vdupq_lane_s8(a10, 0);
    do
    {
      v84 = 0;
      v85 = 1;
      do
      {
        v86 = v85;
        v87 = *(a1 + v84);
        v88 = *(a1 + v84 + 1);
        v89 = vmlal_u8(vmull_u8(*v88.i8, *v64.i8), *v87.i8, *v63.i8);
        a12 = vmlal_high_u8(vmull_high_u8(v88, v64), v87, v63);
        v62 = vrshrn_high_n_s16(vrshrn_n_s16(v89, 3uLL), a12, 3uLL);
        *&v82[v84] = v62;
        v84 = 16;
        v85 = 0;
      }

      while ((v86 & 1) != 0);
      a1 += a2;
      v82 += 32;
      --v83;
    }

    while (v83);
  }

  sub_277A11FE8(v91, v90, 32, 32, 0x20u, 16, a4, a8, *v63.i8, *v64.i8, *v62.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
  return (off_280ABCC28)(v90, 32, a5, a6, a7, a6, v16, a8);
}

uint64_t sub_277A12DC8(uint64_t a1, int a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x16_t *a8, int8x8_t a9, int8x8_t a10, int8x8_t a11, int16x8_t a12, uint64_t a13)
{
  v16 = a4;
  v92 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v43 = 0;
      v44 = (a1 + 17);
      do
      {
        v45 = &v91[v43];
        v46 = vrhaddq_u8(*(v44 - 17), v44[-1]);
        v47 = vrhaddq_u8(*(v44 - 1), *v44);
        *v45 = v46;
        v45[1] = v47;
        v43 += 32;
        v44 = (v44 + a2);
      }

      while (v43 != 1056);
      v46.i8[0] = *(a13 + 4);
      v47.i8[0] = *(a13 + 8);
      v48 = v91;
      v49 = v90;
      v50 = 32;
      v51 = vdupq_lane_s8(*v46.i8, 0);
      v52 = vdupq_lane_s8(*v47.i8, 0);
      do
      {
        v53 = 0;
        v54 = 1;
        do
        {
          v55 = v54;
          v56 = *a8++;
          v57 = vrhaddq_u8(*&v48[v53], *&v48[v53 + 32]);
          *&v49[v53] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v56.i8, *v52.i8), *v57.i8, *v51.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v56, v52), v57, v51), 4uLL);
          v53 = 16;
          v54 = 0;
        }

        while ((v55 & 1) != 0);
        v48 += 32;
        v49 += 32;
        --v50;
      }

      while (v50);
      return (off_280ABCC30)(v90, 32, a5, a6, a7, a6, v16, a8);
    }

    if (!a4)
    {
      a9.i8[0] = *(a13 + 4);
      a10.i8[0] = *(a13 + 8);
      v25 = v91;
      v26 = 32;
      v27 = vdupq_lane_s8(a9, 0);
      v28 = vdupq_lane_s8(a10, 0);
      do
      {
        v29 = 0;
        v30 = 1;
        do
        {
          v31 = v30;
          v32 = *a8++;
          v33 = vrhaddq_u8(*(a1 + v29), *(a1 + v29 + 1));
          *&v25[v29] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *v28.i8), *v33.i8, *v27.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v32, v28), v33, v27), 4uLL);
          v29 = 16;
          v30 = 0;
        }

        while ((v31 & 1) != 0);
        a1 += a2;
        v25 += 32;
        --v26;
      }

      while (v26);
      return (off_280ABCC30)(v91, 32, a5, a6, a7, a6, v16, a8);
    }

    v59 = 0;
    v60 = (a1 + 17);
    do
    {
      v61 = &v91[v59];
      v62 = *v60;
      v63 = vrhaddq_u8(*(v60 - 17), v60[-1]);
      v64 = vrhaddq_u8(*(v60 - 1), *v60);
      *v61 = v63;
      v61[1] = v64;
      v59 += 32;
      v60 = (v60 + a2);
    }

    while (v59 != 1056);
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v34 = v91;
        v35 = 32;
        v36 = vdupq_lane_s8(a9, 0);
        v37 = vdupq_lane_s8(a10, 0);
        do
        {
          v38 = 0;
          v39 = 1;
          do
          {
            v40 = v39;
            v41 = *a8++;
            v42 = vrhaddq_u8(*(a1 + v38), *(a1 + v38 + a2));
            *&v34[v38] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *v37.i8), *v42.i8, *v36.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v41, v37), v42, v36), 4uLL);
            v38 = 16;
            v39 = 0;
          }

          while ((v40 & 1) != 0);
          a1 += a2;
          v34 += 32;
          --v35;
        }

        while (v35);
      }

      else if (a4)
      {
        sub_277A11FE8(a1, v91, a2, a2, 0x20u, 32, a4, a8, a9, a10, a11, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      }

      else
      {
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v17 = v91;
        v18 = 32;
        v19 = vdupq_lane_s8(a9, 0);
        v20 = vdupq_lane_s8(a10, 0);
        do
        {
          v21 = 0;
          v22 = 1;
          do
          {
            v23 = v22;
            v24 = *a8++;
            *&v17[v21] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *v20.i8), *(a1 + v21), *v19.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v24, v20), *(a1 + v21), v19), 4uLL);
            v21 = 16;
            v22 = 0;
          }

          while ((v23 & 1) != 0);
          a1 += a2;
          v17 += 32;
          --v18;
        }

        while (v18);
      }

      return (off_280ABCC30)(v91, 32, a5, a6, a7, a6, v16, a8);
    }

    if (a4 == 4)
    {
      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v65 = v91;
      v66 = 33;
      v67 = vdupq_lane_s8(a9, 0);
      v68 = vdupq_lane_s8(a10, 0);
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          *&v65[v69] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v69 + 1), *v68.i8), *(a1 + v69), *v67.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v69 + 1), v68), *(a1 + v69), v67), 3uLL);
          v69 = 16;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        a1 += a2;
        v65 += 32;
        --v66;
      }

      while (v66);
      v67.i8[0] = *(a13 + 4);
      v68.i8[0] = *(a13 + 8);
      v72 = v91;
      v73 = v90;
      v74 = 32;
      v75 = vdupq_lane_s8(*v67.i8, 0);
      v76 = vdupq_lane_s8(*v68.i8, 0);
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *a8++;
          v81 = vrhaddq_u8(*&v72[v77], *&v72[v77 + 32]);
          *&v73[v77] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v80.i8, *v76.i8), *v81.i8, *v75.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v80, v76), v81, v75), 4uLL);
          v77 = 16;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v72 += 32;
        v73 += 32;
        --v74;
      }

      while (v74);
      return (off_280ABCC30)(v90, 32, a5, a6, a7, a6, v16, a8);
    }

    if (!a4)
    {
      sub_277A11FE8(a1, v91, a2, 1, 0x20u, 32, a3, a8, a9, a10, a11, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      return (off_280ABCC30)(v91, 32, a5, a6, a7, a6, v16, a8);
    }

    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v82 = v91;
    v83 = 33;
    v63 = vdupq_lane_s8(a9, 0);
    v64 = vdupq_lane_s8(a10, 0);
    do
    {
      v84 = 0;
      v85 = 1;
      do
      {
        v86 = v85;
        v87 = *(a1 + v84);
        v88 = *(a1 + v84 + 1);
        v89 = vmlal_u8(vmull_u8(*v88.i8, *v64.i8), *v87.i8, *v63.i8);
        a12 = vmlal_high_u8(vmull_high_u8(v88, v64), v87, v63);
        v62 = vrshrn_high_n_s16(vrshrn_n_s16(v89, 3uLL), a12, 3uLL);
        *&v82[v84] = v62;
        v84 = 16;
        v85 = 0;
      }

      while ((v86 & 1) != 0);
      a1 += a2;
      v82 += 32;
      --v83;
    }

    while (v83);
  }

  sub_277A11FE8(v91, v90, 32, 32, 0x20u, 32, a4, a8, *v63.i8, *v64.i8, *v62.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
  return (off_280ABCC30)(v90, 32, a5, a6, a7, a6, v16, a8);
}

uint64_t sub_277A132B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v99 = *MEMORY[0x277D85DE8];
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v50 = 0;
      v51 = (v9 + 17);
      do
      {
        v52 = &v98[v50];
        v53 = vrhaddq_u8(*(v51 - 17), v51[-1]);
        v54 = vrhaddq_u8(*(v51 - 1), *v51);
        *v52 = v53;
        v52[1] = v54;
        v50 += 32;
        v51 = (v51 + v10);
      }

      while (v50 != 2080);
      v53.i8[0] = *(a9 + 4);
      v54.i8[0] = *(a9 + 8);
      v55 = v98;
      v56 = v97;
      v57 = 64;
      v58 = vdupq_lane_s8(*v53.i8, 0);
      v59 = vdupq_lane_s8(*v54.i8, 0);
      do
      {
        v60 = 0;
        v61 = 1;
        do
        {
          v62 = v61;
          v63 = *v13++;
          v64 = vrhaddq_u8(*&v55[v60], *&v55[v60 + 32]);
          *&v56[v60] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v63.i8, *v59.i8), *v64.i8, *v58.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v63, v59), v64, v58), 4uLL);
          v60 = 16;
          v61 = 0;
        }

        while ((v62 & 1) != 0);
        v55 += 32;
        v56 += 32;
        --v57;
      }

      while (v57);
      return (off_280ABCC38)(v97, 32, v23, v21, v19);
    }

    if (!v12)
    {
      v14.i8[0] = *(a9 + 4);
      v15.i8[0] = *(a9 + 8);
      v32 = v98;
      v33 = 64;
      v34 = vdupq_lane_s8(v14, 0);
      v35 = vdupq_lane_s8(v15, 0);
      do
      {
        v36 = 0;
        v37 = 1;
        do
        {
          v38 = v37;
          v39 = *v13++;
          v40 = vrhaddq_u8(*(v9 + v36), *(v9 + v36 + 1));
          *&v32[v36] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v39.i8, *v35.i8), *v40.i8, *v34.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v39, v35), v40, v34), 4uLL);
          v36 = 16;
          v37 = 0;
        }

        while ((v38 & 1) != 0);
        v9 += v10;
        v32 += 32;
        --v33;
      }

      while (v33);
      return (off_280ABCC38)(v98, 32, v23, v21, v19);
    }

    v66 = 0;
    v67 = (v9 + 17);
    do
    {
      v68 = &v98[v66];
      v69 = *v67;
      v70 = vrhaddq_u8(*(v67 - 17), v67[-1]);
      v71 = vrhaddq_u8(*(v67 - 1), *v67);
      *v68 = v70;
      v68[1] = v71;
      v66 += 32;
      v67 = (v67 + v10);
    }

    while (v66 != 2080);
  }

  else
  {
    if (!v11)
    {
      if (v12 == 4)
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v41 = v98;
        v42 = 64;
        v43 = vdupq_lane_s8(v14, 0);
        v44 = vdupq_lane_s8(v15, 0);
        do
        {
          v45 = 0;
          v46 = 1;
          do
          {
            v47 = v46;
            v48 = *v13++;
            v49 = vrhaddq_u8(*(v9 + v45), *(v9 + v45 + v10));
            *&v41[v45] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v48.i8, *v44.i8), *v49.i8, *v43.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v48, v44), v49, v43), 4uLL);
            v45 = 16;
            v46 = 0;
          }

          while ((v47 & 1) != 0);
          v9 += v10;
          v41 += 32;
          --v42;
        }

        while (v42);
      }

      else if (v12)
      {
        sub_277A11FE8(v9, v98, v10, v10, 0x20u, 64, v12, v13, v14, v15, v16, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      }

      else
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v24 = v98;
        v25 = 64;
        v26 = vdupq_lane_s8(v14, 0);
        v27 = vdupq_lane_s8(v15, 0);
        do
        {
          v28 = 0;
          v29 = 1;
          do
          {
            v30 = v29;
            v31 = *v13++;
            *&v24[v28] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v31.i8, *v27.i8), *(v9 + v28), *v26.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v31, v27), *(v9 + v28), v26), 4uLL);
            v28 = 16;
            v29 = 0;
          }

          while ((v30 & 1) != 0);
          v9 += v10;
          v24 += 32;
          --v25;
        }

        while (v25);
      }

      return (off_280ABCC38)(v98, 32, v23, v21, v19);
    }

    if (v12 == 4)
    {
      v14.i32[0] = 8 - v11;
      v15.i32[0] = v11;
      v72 = v98;
      v73 = 65;
      v74 = vdupq_lane_s8(v14, 0);
      v75 = vdupq_lane_s8(v15, 0);
      do
      {
        v76 = 0;
        v77 = 1;
        do
        {
          v78 = v77;
          *&v72[v76] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v9 + v76 + 1), *v75.i8), *(v9 + v76), *v74.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v9 + v76 + 1), v75), *(v9 + v76), v74), 3uLL);
          v76 = 16;
          v77 = 0;
        }

        while ((v78 & 1) != 0);
        v9 += v10;
        v72 += 32;
        --v73;
      }

      while (v73);
      v74.i8[0] = *(a9 + 4);
      v75.i8[0] = *(a9 + 8);
      v79 = v98;
      v80 = v97;
      v81 = 64;
      v82 = vdupq_lane_s8(*v74.i8, 0);
      v83 = vdupq_lane_s8(*v75.i8, 0);
      do
      {
        v84 = 0;
        v85 = 1;
        do
        {
          v86 = v85;
          v87 = *v13++;
          v88 = vrhaddq_u8(*&v79[v84], *&v79[v84 + 32]);
          *&v80[v84] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v87.i8, *v83.i8), *v88.i8, *v82.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v87, v83), v88, v82), 4uLL);
          v84 = 16;
          v85 = 0;
        }

        while ((v86 & 1) != 0);
        v79 += 32;
        v80 += 32;
        --v81;
      }

      while (v81);
      return (off_280ABCC38)(v97, 32, v23, v21, v19);
    }

    if (!v12)
    {
      sub_277A11FE8(v9, v98, v10, 1, 0x20u, 64, v11, v13, v14, v15, v16, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      return (off_280ABCC38)(v98, 32, v23, v21, v19);
    }

    v14.i32[0] = 8 - v11;
    v15.i32[0] = v11;
    v89 = v98;
    v90 = 65;
    v70 = vdupq_lane_s8(v14, 0);
    v71 = vdupq_lane_s8(v15, 0);
    do
    {
      v91 = 0;
      v92 = 1;
      do
      {
        v93 = v92;
        v94 = *(v9 + v91);
        v95 = *(v9 + v91 + 1);
        v96 = vmlal_u8(vmull_u8(*v95.i8, *v71.i8), *v94.i8, *v70.i8);
        v17 = vmlal_high_u8(vmull_high_u8(v95, v71), v94, v70);
        v69 = vrshrn_high_n_s16(vrshrn_n_s16(v96, 3uLL), v17, 3uLL);
        *&v89[v91] = v69;
        v91 = 16;
        v92 = 0;
      }

      while ((v93 & 1) != 0);
      v9 += v10;
      v89 += 32;
      --v90;
    }

    while (v90);
  }

  sub_277A11FE8(v98, v97, 32, 32, 0x20u, 64, v12, v13, *v70.i8, *v71.i8, *v69.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return (off_280ABCC38)(v97, 32, v23, v21, v19);
}

uint64_t sub_277A137B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v86 = *MEMORY[0x277D85DE8];
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v46 = v85;
      v47 = 33;
      do
      {
        v48 = 0;
        do
        {
          v49 = *(v9 + v48 + 1);
          v50 = vrhaddq_u8(*(v9 + v48), v49);
          *&v46[v48] = v50;
          v30 = v48 >= 0x30;
          v48 += 16;
        }

        while (!v30);
        v9 += v10;
        v46 += 64;
        --v47;
      }

      while (v47);
      v50.i8[0] = *(a9 + 4);
      v49.i8[0] = *(a9 + 8);
      v51 = v85;
      v52 = v84;
      v53 = 32;
      v54 = vdupq_lane_s8(*v50.i8, 0);
      v55 = vdupq_lane_s8(*v49.i8, 0);
      do
      {
        v56 = 0;
        do
        {
          v57 = vrhaddq_u8(*&v51[v56], *&v51[v56 + 64]);
          *&v52[v56] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v56), *v55.i8), *v57.i8, *v54.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v56), v55), v57, v54), 4uLL);
          v58 = v56 + 16;
          v30 = v56 >= 0x30;
          v56 += 16;
        }

        while (!v30);
        v13 += v58;
        v51 += 64;
        v52 += 64;
        --v53;
      }

      while (v53);
      return (off_280ABCC70)(v84, 64, v23, v21, v19);
    }

    if (!v12)
    {
      v14.i8[0] = *(a9 + 4);
      v15.i8[0] = *(a9 + 8);
      v31 = v85;
      v32 = 32;
      v33 = vdupq_lane_s8(v14, 0);
      v34 = vdupq_lane_s8(v15, 0);
      do
      {
        v35 = 0;
        do
        {
          v36 = vrhaddq_u8(*(v9 + v35), *(v9 + v35 + 1));
          *&v31[v35] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v35), *v34.i8), *v36.i8, *v33.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v35), v34), v36, v33), 4uLL);
          v37 = v35 + 16;
          v30 = v35 >= 0x30;
          v35 += 16;
        }

        while (!v30);
        v13 += v37;
        v9 += v10;
        v31 += 64;
        --v32;
      }

      while (v32);
      return (off_280ABCC70)(v85, 64, v23, v21, v19);
    }

    v60 = v85;
    v61 = 33;
    do
    {
      v62 = 0;
      do
      {
        v63 = *(v9 + v62 + 1);
        v64 = vrhaddq_u8(*(v9 + v62), v63);
        *&v60[v62] = v64;
        v30 = v62 >= 0x30;
        v62 += 16;
      }

      while (!v30);
      v9 += v10;
      v60 += 64;
      --v61;
    }

    while (v61);
  }

  else
  {
    if (!v11)
    {
      if (v12 == 4)
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v38 = v9 + v10;
        v39 = v85;
        v40 = 32;
        v41 = vdupq_lane_s8(v14, 0);
        v42 = vdupq_lane_s8(v15, 0);
        do
        {
          v43 = 0;
          do
          {
            v44 = vrhaddq_u8(*(v9 + v43), *(v38 + v43));
            *&v39[v43] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v43), *v42.i8), *v44.i8, *v41.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v43), v42), v44, v41), 4uLL);
            v45 = v43 + 16;
            v30 = v43 >= 0x30;
            v43 += 16;
          }

          while (!v30);
          v13 += v45;
          v9 += v10;
          v39 += 64;
          v38 += v10;
          --v40;
        }

        while (v40);
      }

      else if (v12)
      {
        sub_277A11FE8(v9, v85, v10, v10, 0x40u, 32, v12, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      }

      else
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v24 = v85;
        v25 = 32;
        v26 = vdupq_lane_s8(v14, 0);
        v27 = vdupq_lane_s8(v15, 0);
        do
        {
          v28 = 0;
          do
          {
            *&v24[v28] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v28), *v27.i8), *(v9 + v28), *v26.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v28), v27), *(v9 + v28), v26), 4uLL);
            v29 = v28 + 16;
            v30 = v28 >= 0x30;
            v28 += 16;
          }

          while (!v30);
          v13 += v29;
          v9 += v10;
          v24 += 64;
          --v25;
        }

        while (v25);
      }

      return (off_280ABCC70)(v85, 64, v23, v21, v19);
    }

    if (v12 == 4)
    {
      v14.i32[0] = 8 - v11;
      v15.i32[0] = v11;
      v65 = v85;
      v66 = 33;
      v67 = vdupq_lane_s8(v14, 0);
      v68 = vdupq_lane_s8(v15, 0);
      do
      {
        v69 = 0;
        do
        {
          *&v65[v69] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v9 + v69 + 1), *v68.i8), *(v9 + v69), *v67.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v9 + v69 + 1), v68), *(v9 + v69), v67), 3uLL);
          v30 = v69 >= 0x30;
          v69 += 16;
        }

        while (!v30);
        v9 += v10;
        v65 += 64;
        --v66;
      }

      while (v66);
      v67.i8[0] = *(a9 + 4);
      v68.i8[0] = *(a9 + 8);
      v70 = v85;
      v71 = v84;
      v72 = 32;
      v73 = vdupq_lane_s8(*v67.i8, 0);
      v74 = vdupq_lane_s8(*v68.i8, 0);
      do
      {
        v75 = 0;
        do
        {
          v76 = vrhaddq_u8(*&v70[v75], *&v70[v75 + 64]);
          *&v71[v75] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v75), *v74.i8), *v76.i8, *v73.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v75), v74), v76, v73), 4uLL);
          v77 = v75 + 16;
          v30 = v75 >= 0x30;
          v75 += 16;
        }

        while (!v30);
        v13 += v77;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
      return (off_280ABCC70)(v84, 64, v23, v21, v19);
    }

    if (!v12)
    {
      sub_277A11FE8(v9, v85, v10, 1, 0x40u, 32, v11, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      return (off_280ABCC70)(v85, 64, v23, v21, v19);
    }

    v14.i32[0] = 8 - v11;
    v15.i32[0] = v11;
    v78 = v85;
    v79 = 33;
    v64 = vdupq_lane_s8(v14, 0);
    v63 = vdupq_lane_s8(v15, 0);
    do
    {
      v80 = 0;
      do
      {
        v81 = *(v9 + v80);
        v82 = *(v9 + v80 + 1);
        v83 = vmlal_u8(vmull_u8(*v82.i8, *v63.i8), *v81.i8, *v64.i8);
        v17 = vmlal_high_u8(vmull_high_u8(v82, v63), v81, v64);
        v16 = vrshrn_high_n_s16(vrshrn_n_s16(v83, 3uLL), v17, 3uLL);
        *&v78[v80] = v16;
        v30 = v80 >= 0x30;
        v80 += 16;
      }

      while (!v30);
      v9 += v10;
      v78 += 64;
      --v79;
    }

    while (v79);
  }

  sub_277A11FE8(v85, v84, 64, 64, 0x40u, 32, v12, v13, *v64.i8, *v63.i8, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return (off_280ABCC70)(v84, 64, v23, v21, v19);
}

uint64_t sub_277A13CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v85[520] = *MEMORY[0x277D85DE8];
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v46 = v85;
      v47 = 65;
      do
      {
        v48 = 0;
        do
        {
          v49 = *(v9 + v48 * 8 + 1);
          v50 = vrhaddq_u8(*(v9 + v48 * 8), v49);
          *&v46[v48] = v50;
          v30 = v48 >= 6;
          v48 += 2;
        }

        while (!v30);
        v9 += v10;
        v46 += 8;
        --v47;
      }

      while (v47);
      v50.i8[0] = *(a9 + 4);
      v49.i8[0] = *(a9 + 8);
      v51 = v85;
      v52 = v84;
      v53 = 64;
      v54 = vdupq_lane_s8(*v50.i8, 0);
      v55 = vdupq_lane_s8(*v49.i8, 0);
      do
      {
        v56 = 0;
        do
        {
          v57 = vrhaddq_u8(*&v51[v56], *&v51[v56 + 8]);
          *&v52[v56 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v56 * 8), *v55.i8), *v57.i8, *v54.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v56 * 8), v55), v57, v54), 4uLL);
          v58 = v56 * 8 + 16;
          v30 = v56 >= 6;
          v56 += 2;
        }

        while (!v30);
        v13 += v58;
        v51 += 8;
        v52 += 64;
        --v53;
      }

      while (v53);
      return (off_280ABCC78)(v84, 64, v23, v21, v19);
    }

    if (!v12)
    {
      v14.i8[0] = *(a9 + 4);
      v15.i8[0] = *(a9 + 8);
      v31 = v85;
      v32 = 64;
      v33 = vdupq_lane_s8(v14, 0);
      v34 = vdupq_lane_s8(v15, 0);
      do
      {
        v35 = 0;
        do
        {
          v36 = vrhaddq_u8(*(v9 + v35), *(v9 + v35 + 1));
          *&v31[v35 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v35), *v34.i8), *v36.i8, *v33.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v35), v34), v36, v33), 4uLL);
          v37 = v35 + 16;
          v30 = v35 >= 0x30;
          v35 += 16;
        }

        while (!v30);
        v13 += v37;
        v9 += v10;
        v31 += 8;
        --v32;
      }

      while (v32);
      return (off_280ABCC78)(v85, 64, v23, v21, v19);
    }

    v60 = v85;
    v61 = 65;
    do
    {
      v62 = 0;
      do
      {
        v63 = *(v9 + v62 * 8 + 1);
        v64 = vrhaddq_u8(*(v9 + v62 * 8), v63);
        *&v60[v62] = v64;
        v30 = v62 >= 6;
        v62 += 2;
      }

      while (!v30);
      v9 += v10;
      v60 += 8;
      --v61;
    }

    while (v61);
  }

  else
  {
    if (!v11)
    {
      if (v12 == 4)
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v38 = v9 + v10;
        v39 = v85;
        v40 = 64;
        v41 = vdupq_lane_s8(v14, 0);
        v42 = vdupq_lane_s8(v15, 0);
        do
        {
          v43 = 0;
          do
          {
            v44 = vrhaddq_u8(*(v9 + v43), *(v38 + v43));
            *&v39[v43 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v43), *v42.i8), *v44.i8, *v41.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v43), v42), v44, v41), 4uLL);
            v45 = v43 + 16;
            v30 = v43 >= 0x30;
            v43 += 16;
          }

          while (!v30);
          v13 += v45;
          v9 += v10;
          v39 += 8;
          v38 += v10;
          --v40;
        }

        while (v40);
      }

      else if (v12)
      {
        sub_277A11FE8(v9, v85, v10, v10, 0x40u, 64, v12, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      }

      else
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v24 = v85;
        v25 = 64;
        v26 = vdupq_lane_s8(v14, 0);
        v27 = vdupq_lane_s8(v15, 0);
        do
        {
          v28 = 0;
          do
          {
            *&v24[v28 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v28), *v27.i8), *(v9 + v28), *v26.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v28), v27), *(v9 + v28), v26), 4uLL);
            v29 = v28 + 16;
            v30 = v28 >= 0x30;
            v28 += 16;
          }

          while (!v30);
          v13 += v29;
          v9 += v10;
          v24 += 8;
          --v25;
        }

        while (v25);
      }

      return (off_280ABCC78)(v85, 64, v23, v21, v19);
    }

    if (v12 == 4)
    {
      v14.i32[0] = 8 - v11;
      v15.i32[0] = v11;
      v65 = v85;
      v66 = 65;
      v67 = vdupq_lane_s8(v14, 0);
      v68 = vdupq_lane_s8(v15, 0);
      do
      {
        v69 = 0;
        do
        {
          *&v65[v69 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v9 + v69 + 1), *v68.i8), *(v9 + v69), *v67.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v9 + v69 + 1), v68), *(v9 + v69), v67), 3uLL);
          v30 = v69 >= 0x30;
          v69 += 16;
        }

        while (!v30);
        v9 += v10;
        v65 += 8;
        --v66;
      }

      while (v66);
      v67.i8[0] = *(a9 + 4);
      v68.i8[0] = *(a9 + 8);
      v70 = v85;
      v71 = v84;
      v72 = 64;
      v73 = vdupq_lane_s8(*v67.i8, 0);
      v74 = vdupq_lane_s8(*v68.i8, 0);
      do
      {
        v75 = 0;
        do
        {
          v76 = vrhaddq_u8(*&v70[v75], *&v70[v75 + 8]);
          *&v71[v75 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v75 * 8), *v74.i8), *v76.i8, *v73.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v75 * 8), v74), v76, v73), 4uLL);
          v77 = v75 * 8 + 16;
          v30 = v75 >= 6;
          v75 += 2;
        }

        while (!v30);
        v13 += v77;
        v70 += 8;
        v71 += 64;
        --v72;
      }

      while (v72);
      return (off_280ABCC78)(v84, 64, v23, v21, v19);
    }

    if (!v12)
    {
      sub_277A11FE8(v9, v85, v10, 1, 0x40u, 64, v11, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      return (off_280ABCC78)(v85, 64, v23, v21, v19);
    }

    v14.i32[0] = 8 - v11;
    v15.i32[0] = v11;
    v78 = v85;
    v79 = 65;
    v64 = vdupq_lane_s8(v14, 0);
    v63 = vdupq_lane_s8(v15, 0);
    do
    {
      v80 = 0;
      do
      {
        v81 = *(v9 + v80 * 8);
        v82 = *(v9 + v80 * 8 + 1);
        v83 = vmlal_u8(vmull_u8(*v82.i8, *v63.i8), *v81.i8, *v64.i8);
        v17 = vmlal_high_u8(vmull_high_u8(v82, v63), v81, v64);
        v16 = vrshrn_high_n_s16(vrshrn_n_s16(v83, 3uLL), v17, 3uLL);
        *&v78[v80] = v16;
        v30 = v80 >= 6;
        v80 += 2;
      }

      while (!v30);
      v9 += v10;
      v78 += 8;
      --v79;
    }

    while (v79);
  }

  sub_277A11FE8(v85, v84, 64, 64, 0x40u, 64, v12, v13, *v64.i8, *v63.i8, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return (off_280ABCC78)(v84, 64, v23, v21, v19);
}

uint64_t sub_277A14210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v85[1032] = *MEMORY[0x277D85DE8];
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v46 = v85;
      v47 = 129;
      do
      {
        v48 = 0;
        do
        {
          v49 = *(v9 + v48 * 8 + 1);
          v50 = vrhaddq_u8(*(v9 + v48 * 8), v49);
          *&v46[v48] = v50;
          v30 = v48 >= 6;
          v48 += 2;
        }

        while (!v30);
        v9 += v10;
        v46 += 8;
        --v47;
      }

      while (v47);
      v50.i8[0] = *(a9 + 4);
      v49.i8[0] = *(a9 + 8);
      v51 = v85;
      v52 = v84;
      v53 = 128;
      v54 = vdupq_lane_s8(*v50.i8, 0);
      v55 = vdupq_lane_s8(*v49.i8, 0);
      do
      {
        v56 = 0;
        do
        {
          v57 = vrhaddq_u8(*&v51[v56], *&v51[v56 + 8]);
          *&v52[v56 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v56 * 8), *v55.i8), *v57.i8, *v54.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v56 * 8), v55), v57, v54), 4uLL);
          v58 = v56 * 8 + 16;
          v30 = v56 >= 6;
          v56 += 2;
        }

        while (!v30);
        v13 += v58;
        v51 += 8;
        v52 += 64;
        --v53;
      }

      while (v53);
      return (off_280ABCC60)(v84, 64, v23, v21, v19);
    }

    if (!v12)
    {
      v14.i8[0] = *(a9 + 4);
      v15.i8[0] = *(a9 + 8);
      v31 = v85;
      v32 = 128;
      v33 = vdupq_lane_s8(v14, 0);
      v34 = vdupq_lane_s8(v15, 0);
      do
      {
        v35 = 0;
        do
        {
          v36 = vrhaddq_u8(*(v9 + v35), *(v9 + v35 + 1));
          *&v31[v35 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v35), *v34.i8), *v36.i8, *v33.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v35), v34), v36, v33), 4uLL);
          v37 = v35 + 16;
          v30 = v35 >= 0x30;
          v35 += 16;
        }

        while (!v30);
        v13 += v37;
        v9 += v10;
        v31 += 8;
        --v32;
      }

      while (v32);
      return (off_280ABCC60)(v85, 64, v23, v21, v19);
    }

    v60 = v85;
    v61 = 129;
    do
    {
      v62 = 0;
      do
      {
        v63 = *(v9 + v62 * 8 + 1);
        v64 = vrhaddq_u8(*(v9 + v62 * 8), v63);
        *&v60[v62] = v64;
        v30 = v62 >= 6;
        v62 += 2;
      }

      while (!v30);
      v9 += v10;
      v60 += 8;
      --v61;
    }

    while (v61);
  }

  else
  {
    if (!v11)
    {
      if (v12 == 4)
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v38 = v9 + v10;
        v39 = v85;
        v40 = 128;
        v41 = vdupq_lane_s8(v14, 0);
        v42 = vdupq_lane_s8(v15, 0);
        do
        {
          v43 = 0;
          do
          {
            v44 = vrhaddq_u8(*(v9 + v43), *(v38 + v43));
            *&v39[v43 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v43), *v42.i8), *v44.i8, *v41.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v43), v42), v44, v41), 4uLL);
            v45 = v43 + 16;
            v30 = v43 >= 0x30;
            v43 += 16;
          }

          while (!v30);
          v13 += v45;
          v9 += v10;
          v39 += 8;
          v38 += v10;
          --v40;
        }

        while (v40);
      }

      else if (v12)
      {
        sub_277A11FE8(v9, v85, v10, v10, 0x40u, 128, v12, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      }

      else
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v24 = v85;
        v25 = 128;
        v26 = vdupq_lane_s8(v14, 0);
        v27 = vdupq_lane_s8(v15, 0);
        do
        {
          v28 = 0;
          do
          {
            *&v24[v28 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v28), *v27.i8), *(v9 + v28), *v26.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v28), v27), *(v9 + v28), v26), 4uLL);
            v29 = v28 + 16;
            v30 = v28 >= 0x30;
            v28 += 16;
          }

          while (!v30);
          v13 += v29;
          v9 += v10;
          v24 += 8;
          --v25;
        }

        while (v25);
      }

      return (off_280ABCC60)(v85, 64, v23, v21, v19);
    }

    if (v12 == 4)
    {
      v14.i32[0] = 8 - v11;
      v15.i32[0] = v11;
      v65 = v85;
      v66 = 129;
      v67 = vdupq_lane_s8(v14, 0);
      v68 = vdupq_lane_s8(v15, 0);
      do
      {
        v69 = 0;
        do
        {
          *&v65[v69 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v9 + v69 + 1), *v68.i8), *(v9 + v69), *v67.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v9 + v69 + 1), v68), *(v9 + v69), v67), 3uLL);
          v30 = v69 >= 0x30;
          v69 += 16;
        }

        while (!v30);
        v9 += v10;
        v65 += 8;
        --v66;
      }

      while (v66);
      v67.i8[0] = *(a9 + 4);
      v68.i8[0] = *(a9 + 8);
      v70 = v85;
      v71 = v84;
      v72 = 128;
      v73 = vdupq_lane_s8(*v67.i8, 0);
      v74 = vdupq_lane_s8(*v68.i8, 0);
      do
      {
        v75 = 0;
        do
        {
          v76 = vrhaddq_u8(*&v70[v75], *&v70[v75 + 8]);
          *&v71[v75 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v75 * 8), *v74.i8), *v76.i8, *v73.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v75 * 8), v74), v76, v73), 4uLL);
          v77 = v75 * 8 + 16;
          v30 = v75 >= 6;
          v75 += 2;
        }

        while (!v30);
        v13 += v77;
        v70 += 8;
        v71 += 64;
        --v72;
      }

      while (v72);
      return (off_280ABCC60)(v84, 64, v23, v21, v19);
    }

    if (!v12)
    {
      sub_277A11FE8(v9, v85, v10, 1, 0x40u, 128, v11, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      return (off_280ABCC60)(v85, 64, v23, v21, v19);
    }

    v14.i32[0] = 8 - v11;
    v15.i32[0] = v11;
    v78 = v85;
    v79 = 129;
    v64 = vdupq_lane_s8(v14, 0);
    v63 = vdupq_lane_s8(v15, 0);
    do
    {
      v80 = 0;
      do
      {
        v81 = *(v9 + v80 * 8);
        v82 = *(v9 + v80 * 8 + 1);
        v83 = vmlal_u8(vmull_u8(*v82.i8, *v63.i8), *v81.i8, *v64.i8);
        v17 = vmlal_high_u8(vmull_high_u8(v82, v63), v81, v64);
        v16 = vrshrn_high_n_s16(vrshrn_n_s16(v83, 3uLL), v17, 3uLL);
        *&v78[v80] = v16;
        v30 = v80 >= 6;
        v80 += 2;
      }

      while (!v30);
      v9 += v10;
      v78 += 8;
      --v79;
    }

    while (v79);
  }

  sub_277A11FE8(v85, v84, 64, 64, 0x40u, 128, v12, v13, *v64.i8, *v63.i8, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return (off_280ABCC60)(v84, 64, v23, v21, v19);
}

uint64_t sub_277A14758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v85[1040] = *MEMORY[0x277D85DE8];
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v46 = v85;
      v47 = 65;
      do
      {
        v48 = 0;
        do
        {
          v49 = *(v9 + v48 * 8 + 1);
          v50 = vrhaddq_u8(*(v9 + v48 * 8), v49);
          *&v46[v48] = v50;
          v30 = v48 >= 14;
          v48 += 2;
        }

        while (!v30);
        v9 += v10;
        v46 += 16;
        --v47;
      }

      while (v47);
      v50.i8[0] = *(a9 + 4);
      v49.i8[0] = *(a9 + 8);
      v51 = v85;
      v52 = v84;
      v53 = 64;
      v54 = vdupq_lane_s8(*v50.i8, 0);
      v55 = vdupq_lane_s8(*v49.i8, 0);
      do
      {
        v56 = 0;
        do
        {
          v57 = vrhaddq_u8(*&v51[v56], *&v51[v56 + 16]);
          *&v52[v56 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v56 * 8), *v55.i8), *v57.i8, *v54.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v56 * 8), v55), v57, v54), 4uLL);
          v58 = v56 * 8 + 16;
          v30 = v56 >= 14;
          v56 += 2;
        }

        while (!v30);
        v13 += v58;
        v51 += 16;
        v52 += 128;
        --v53;
      }

      while (v53);
      return (off_280ABCBF8)(v84, 128, v23, v21, v19);
    }

    if (!v12)
    {
      v14.i8[0] = *(a9 + 4);
      v15.i8[0] = *(a9 + 8);
      v31 = v85;
      v32 = 64;
      v33 = vdupq_lane_s8(v14, 0);
      v34 = vdupq_lane_s8(v15, 0);
      do
      {
        v35 = 0;
        do
        {
          v36 = vrhaddq_u8(*(v9 + v35), *(v9 + v35 + 1));
          *&v31[v35 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v35), *v34.i8), *v36.i8, *v33.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v35), v34), v36, v33), 4uLL);
          v37 = v35 + 16;
          v30 = v35 >= 0x70;
          v35 += 16;
        }

        while (!v30);
        v13 += v37;
        v9 += v10;
        v31 += 16;
        --v32;
      }

      while (v32);
      return (off_280ABCBF8)(v85, 128, v23, v21, v19);
    }

    v60 = v85;
    v61 = 65;
    do
    {
      v62 = 0;
      do
      {
        v63 = *(v9 + v62 * 8 + 1);
        v64 = vrhaddq_u8(*(v9 + v62 * 8), v63);
        *&v60[v62] = v64;
        v30 = v62 >= 14;
        v62 += 2;
      }

      while (!v30);
      v9 += v10;
      v60 += 16;
      --v61;
    }

    while (v61);
  }

  else
  {
    if (!v11)
    {
      if (v12 == 4)
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v38 = v9 + v10;
        v39 = v85;
        v40 = 64;
        v41 = vdupq_lane_s8(v14, 0);
        v42 = vdupq_lane_s8(v15, 0);
        do
        {
          v43 = 0;
          do
          {
            v44 = vrhaddq_u8(*(v9 + v43), *(v38 + v43));
            *&v39[v43 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v43), *v42.i8), *v44.i8, *v41.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v43), v42), v44, v41), 4uLL);
            v45 = v43 + 16;
            v30 = v43 >= 0x70;
            v43 += 16;
          }

          while (!v30);
          v13 += v45;
          v9 += v10;
          v39 += 16;
          v38 += v10;
          --v40;
        }

        while (v40);
      }

      else if (v12)
      {
        sub_277A11FE8(v9, v85, v10, v10, 0x80u, 64, v12, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      }

      else
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v24 = v85;
        v25 = 64;
        v26 = vdupq_lane_s8(v14, 0);
        v27 = vdupq_lane_s8(v15, 0);
        do
        {
          v28 = 0;
          do
          {
            *&v24[v28 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v28), *v27.i8), *(v9 + v28), *v26.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v28), v27), *(v9 + v28), v26), 4uLL);
            v29 = v28 + 16;
            v30 = v28 >= 0x70;
            v28 += 16;
          }

          while (!v30);
          v13 += v29;
          v9 += v10;
          v24 += 16;
          --v25;
        }

        while (v25);
      }

      return (off_280ABCBF8)(v85, 128, v23, v21, v19);
    }

    if (v12 == 4)
    {
      v14.i32[0] = 8 - v11;
      v15.i32[0] = v11;
      v65 = v85;
      v66 = 65;
      v67 = vdupq_lane_s8(v14, 0);
      v68 = vdupq_lane_s8(v15, 0);
      do
      {
        v69 = 0;
        do
        {
          *&v65[v69 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v9 + v69 + 1), *v68.i8), *(v9 + v69), *v67.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v9 + v69 + 1), v68), *(v9 + v69), v67), 3uLL);
          v30 = v69 >= 0x70;
          v69 += 16;
        }

        while (!v30);
        v9 += v10;
        v65 += 16;
        --v66;
      }

      while (v66);
      v67.i8[0] = *(a9 + 4);
      v68.i8[0] = *(a9 + 8);
      v70 = v85;
      v71 = v84;
      v72 = 64;
      v73 = vdupq_lane_s8(*v67.i8, 0);
      v74 = vdupq_lane_s8(*v68.i8, 0);
      do
      {
        v75 = 0;
        do
        {
          v76 = vrhaddq_u8(*&v70[v75], *&v70[v75 + 16]);
          *&v71[v75 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v75 * 8), *v74.i8), *v76.i8, *v73.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v75 * 8), v74), v76, v73), 4uLL);
          v77 = v75 * 8 + 16;
          v30 = v75 >= 14;
          v75 += 2;
        }

        while (!v30);
        v13 += v77;
        v70 += 16;
        v71 += 128;
        --v72;
      }

      while (v72);
      return (off_280ABCBF8)(v84, 128, v23, v21, v19);
    }

    if (!v12)
    {
      sub_277A11FE8(v9, v85, v10, 1, 0x80u, 64, v11, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      return (off_280ABCBF8)(v85, 128, v23, v21, v19);
    }

    v14.i32[0] = 8 - v11;
    v15.i32[0] = v11;
    v78 = v85;
    v79 = 65;
    v64 = vdupq_lane_s8(v14, 0);
    v63 = vdupq_lane_s8(v15, 0);
    do
    {
      v80 = 0;
      do
      {
        v81 = *(v9 + v80 * 8);
        v82 = *(v9 + v80 * 8 + 1);
        v83 = vmlal_u8(vmull_u8(*v82.i8, *v63.i8), *v81.i8, *v64.i8);
        v17 = vmlal_high_u8(vmull_high_u8(v82, v63), v81, v64);
        v16 = vrshrn_high_n_s16(vrshrn_n_s16(v83, 3uLL), v17, 3uLL);
        *&v78[v80] = v16;
        v30 = v80 >= 14;
        v80 += 2;
      }

      while (!v30);
      v9 += v10;
      v78 += 16;
      --v79;
    }

    while (v79);
  }

  sub_277A11FE8(v85, v84, 128, 128, 0x80u, 64, v12, v13, *v64.i8, *v63.i8, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return (off_280ABCBF8)(v84, 128, v23, v21, v19);
}

uint64_t sub_277A14CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v85[2064] = *MEMORY[0x277D85DE8];
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v46 = v85;
      v47 = 129;
      do
      {
        v48 = 0;
        do
        {
          v49 = *(v9 + v48 * 8 + 1);
          v50 = vrhaddq_u8(*(v9 + v48 * 8), v49);
          *&v46[v48] = v50;
          v30 = v48 >= 14;
          v48 += 2;
        }

        while (!v30);
        v9 += v10;
        v46 += 16;
        --v47;
      }

      while (v47);
      v50.i8[0] = *(a9 + 4);
      v49.i8[0] = *(a9 + 8);
      v51 = v85;
      v52 = v84;
      v53 = 128;
      v54 = vdupq_lane_s8(*v50.i8, 0);
      v55 = vdupq_lane_s8(*v49.i8, 0);
      do
      {
        v56 = 0;
        do
        {
          v57 = vrhaddq_u8(*&v51[v56], *&v51[v56 + 16]);
          *&v52[v56 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v56 * 8), *v55.i8), *v57.i8, *v54.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v56 * 8), v55), v57, v54), 4uLL);
          v58 = v56 * 8 + 16;
          v30 = v56 >= 14;
          v56 += 2;
        }

        while (!v30);
        v13 += v58;
        v51 += 16;
        v52 += 128;
        --v53;
      }

      while (v53);
      return (off_280ABCBF0)(v84, 128, v23, v21, v19);
    }

    if (!v12)
    {
      v14.i8[0] = *(a9 + 4);
      v15.i8[0] = *(a9 + 8);
      v31 = v85;
      v32 = 128;
      v33 = vdupq_lane_s8(v14, 0);
      v34 = vdupq_lane_s8(v15, 0);
      do
      {
        v35 = 0;
        do
        {
          v36 = vrhaddq_u8(*(v9 + v35), *(v9 + v35 + 1));
          *&v31[v35 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v35), *v34.i8), *v36.i8, *v33.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v35), v34), v36, v33), 4uLL);
          v37 = v35 + 16;
          v30 = v35 >= 0x70;
          v35 += 16;
        }

        while (!v30);
        v13 += v37;
        v9 += v10;
        v31 += 16;
        --v32;
      }

      while (v32);
      return (off_280ABCBF0)(v85, 128, v23, v21, v19);
    }

    v60 = v85;
    v61 = 129;
    do
    {
      v62 = 0;
      do
      {
        v63 = *(v9 + v62 * 8 + 1);
        v64 = vrhaddq_u8(*(v9 + v62 * 8), v63);
        *&v60[v62] = v64;
        v30 = v62 >= 14;
        v62 += 2;
      }

      while (!v30);
      v9 += v10;
      v60 += 16;
      --v61;
    }

    while (v61);
  }

  else
  {
    if (!v11)
    {
      if (v12 == 4)
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v38 = v9 + v10;
        v39 = v85;
        v40 = 128;
        v41 = vdupq_lane_s8(v14, 0);
        v42 = vdupq_lane_s8(v15, 0);
        do
        {
          v43 = 0;
          do
          {
            v44 = vrhaddq_u8(*(v9 + v43), *(v38 + v43));
            *&v39[v43 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v43), *v42.i8), *v44.i8, *v41.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v43), v42), v44, v41), 4uLL);
            v45 = v43 + 16;
            v30 = v43 >= 0x70;
            v43 += 16;
          }

          while (!v30);
          v13 += v45;
          v9 += v10;
          v39 += 16;
          v38 += v10;
          --v40;
        }

        while (v40);
      }

      else if (v12)
      {
        sub_277A11FE8(v9, v85, v10, v10, 0x80u, 128, v12, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      }

      else
      {
        v14.i32[0] = *(a9 + 4);
        v15.i8[0] = *(a9 + 8);
        v24 = v85;
        v25 = 128;
        v26 = vdupq_lane_s8(v14, 0);
        v27 = vdupq_lane_s8(v15, 0);
        do
        {
          v28 = 0;
          do
          {
            *&v24[v28 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v28), *v27.i8), *(v9 + v28), *v26.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v28), v27), *(v9 + v28), v26), 4uLL);
            v29 = v28 + 16;
            v30 = v28 >= 0x70;
            v28 += 16;
          }

          while (!v30);
          v13 += v29;
          v9 += v10;
          v24 += 16;
          --v25;
        }

        while (v25);
      }

      return (off_280ABCBF0)(v85, 128, v23, v21, v19);
    }

    if (v12 == 4)
    {
      v14.i32[0] = 8 - v11;
      v15.i32[0] = v11;
      v65 = v85;
      v66 = 129;
      v67 = vdupq_lane_s8(v14, 0);
      v68 = vdupq_lane_s8(v15, 0);
      do
      {
        v69 = 0;
        do
        {
          *&v65[v69 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v9 + v69 + 1), *v68.i8), *(v9 + v69), *v67.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v9 + v69 + 1), v68), *(v9 + v69), v67), 3uLL);
          v30 = v69 >= 0x70;
          v69 += 16;
        }

        while (!v30);
        v9 += v10;
        v65 += 16;
        --v66;
      }

      while (v66);
      v67.i8[0] = *(a9 + 4);
      v68.i8[0] = *(a9 + 8);
      v70 = v85;
      v71 = v84;
      v72 = 128;
      v73 = vdupq_lane_s8(*v67.i8, 0);
      v74 = vdupq_lane_s8(*v68.i8, 0);
      do
      {
        v75 = 0;
        do
        {
          v76 = vrhaddq_u8(*&v70[v75], *&v70[v75 + 16]);
          *&v71[v75 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v13 + v75 * 8), *v74.i8), *v76.i8, *v73.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(v13 + v75 * 8), v74), v76, v73), 4uLL);
          v77 = v75 * 8 + 16;
          v30 = v75 >= 14;
          v75 += 2;
        }

        while (!v30);
        v13 += v77;
        v70 += 16;
        v71 += 128;
        --v72;
      }

      while (v72);
      return (off_280ABCBF0)(v84, 128, v23, v21, v19);
    }

    if (!v12)
    {
      sub_277A11FE8(v9, v85, v10, 1, 0x80u, 128, v11, v13, v14, v15, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      return (off_280ABCBF0)(v85, 128, v23, v21, v19);
    }

    v14.i32[0] = 8 - v11;
    v15.i32[0] = v11;
    v78 = v85;
    v79 = 129;
    v64 = vdupq_lane_s8(v14, 0);
    v63 = vdupq_lane_s8(v15, 0);
    do
    {
      v80 = 0;
      do
      {
        v81 = *(v9 + v80 * 8);
        v82 = *(v9 + v80 * 8 + 1);
        v83 = vmlal_u8(vmull_u8(*v82.i8, *v63.i8), *v81.i8, *v64.i8);
        v17 = vmlal_high_u8(vmull_high_u8(v82, v63), v81, v64);
        v16 = vrshrn_high_n_s16(vrshrn_n_s16(v83, 3uLL), v17, 3uLL);
        *&v78[v80] = v16;
        v30 = v80 >= 14;
        v80 += 2;
      }

      while (!v30);
      v9 += v10;
      v78 += 16;
      --v79;
    }

    while (v79);
  }

  sub_277A11FE8(v85, v84, 128, 128, 0x80u, 128, v12, v13, *v64.i8, *v63.i8, *v16.i8, *v17.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return (off_280ABCBF0)(v84, 128, v23, v21, v19);
}

uint64_t sub_277A151E8(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, double a11, double a12, int32x2_t a13, uint64_t a14)
{
  v14 = 0;
  v30 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v15 = vdup_lane_s8(a9, 0);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v17.i32[0] = *a1;
    v17.i32[1] = *(a1 + a2);
    v18.i32[0] = *(a1 + 1);
    v18.i32[1] = *(a1 + a2 + 1);
    v19 = vmlal_u8(vmull_u8(v18, v16), v17, v15);
    v20 = vrshrn_n_s16(v19, 3uLL);
    *&v29[v14] = v20;
    a1 = (a1 + 2 * a2);
    v14 += 2;
  }

  while ((v14 * 4) != 72);
  v21 = 0;
  v20.i8[0] = *(a14 + 4);
  v19.i8[0] = *(a14 + 8);
  v15.i32[0] = 8 - a4;
  v16.i32[0] = a4;
  v22 = v29[0];
  v23 = vdup_lane_s8(v15, 0);
  v24 = vdup_lane_s8(v16, 0);
  v25 = vdup_lane_s8(v20, 0);
  *v19.i8 = vdup_lane_s8(*v19.i8, 0);
  do
  {
    a13.i32[0] = v22;
    v26 = *&v29[v21 / 4 + 1];
    a13 = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v21), *v19.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(v26, v24), vzip1_s32(a13, v26), v23), 3uLL), v25), 4uLL);
    *&v28[v21] = *&a13;
    v22 = v26.i32[1];
    v21 += 8;
  }

  while (v21 != 64);
  return off_280ABCC48(v28, 4, a5, a6, a7);
}

uint64_t sub_277A15330(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, uint64_t a11)
{
  v11 = 0;
  v26[33] = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v12 = (a1 + 1);
  v13 = vdup_lane_s8(a9, 0);
  v14 = vdup_lane_s8(a10, 0);
  do
  {
    v15 = vmlal_u8(vmull_u8(*v12, v14), *(v12 - 1), v13);
    v16 = vrshrn_n_s16(v15, 3uLL);
    v26[v11++] = v16;
    v12 = (v12 + a2);
  }

  while ((v11 * 8) != 264);
  v17 = 0;
  v16.i8[0] = *(a11 + 4);
  v15.i8[0] = *(a11 + 8);
  v13.i32[0] = 8 - a4;
  v14.i32[0] = a4;
  v18 = 33;
  v19 = v26[0];
  v20 = vdup_lane_s8(v13, 0);
  v21 = vdup_lane_s8(v14, 0);
  v22 = vdup_lane_s8(v16, 0);
  *v15.i8 = vdup_lane_s8(*v15.i8, 0);
  do
  {
    v23 = v26[v17 + 1];
    *&v25[v17 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v17 * 8), *v15.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(v23, v21), v19, v20), 3uLL), v22), 4uLL);
    --v18;
    ++v17;
    v19 = v23;
  }

  while (v18 > 1);
  return off_280ABCC88(v25, 8, a5, a6, a7);
}

uint64_t sub_277A1546C(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, uint64_t a11)
{
  v14 = 0;
  v24 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v15 = (a1 + 1);
  v16 = vdupq_lane_s8(a9, 0);
  v17 = vdupq_lane_s8(a10, 0);
  do
  {
    v18 = *(v15 - 1);
    v19 = vmlal_high_u8(vmull_high_u8(*v15, v17), v18, v16);
    v20 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15->i8, *v17.i8), *v18.i8, *v16.i8), 3uLL), v19, 3uLL);
    *&v23[v14] = v20;
    v14 += 16;
    v15 = (v15 + a2);
  }

  while (v14 != 80);
  sub_277A11FE8(v23, v22, 16, 16, 0x10u, 4, a4, a8, *v16.i8, *v17.i8, *v20.i8, *v19.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  return off_280ABCC10(v22, 16, a5, a6, a7);
}

uint64_t sub_277A15578(uint8x8_t *a1, int a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, int8x16_t a11, int16x8_t a12, uint64_t a13)
{
  v16 = a4;
  v61 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = 0;
      v33 = (a1 + 1);
      do
      {
        v34 = *v33;
        v35 = vrhaddq_u8(*(v33 - 1), *v33);
        v60[v32++] = v35;
        v33 = (v33 + a2);
      }

      while ((v32 * 16) != 1040);
      v36 = 0;
      v35.i8[0] = *(a13 + 4);
      v34.i8[0] = *(a13 + 8);
      v37 = v60[0];
      v38 = vdupq_lane_s8(*v35.i8, 0);
      v39 = vdupq_lane_s8(*v34.i8, 0);
      do
      {
        v40 = v60[v36 / 0x10 + 1];
        v41 = vrhaddq_u8(v37, v40);
        *&v59[v36] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v36), *v39.i8), *v41.i8, *v38.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v36), v39), v41, v38), 4uLL);
        v36 += 16;
        v37 = v40;
      }

      while (v36 != 1024);
      return (off_280ABCC18)(v59, 16, a5, a6, a7, a6, v16);
    }

    v20 = 0;
    if (!a4)
    {
      a9.i8[0] = *(a13 + 4);
      a10.i8[0] = *(a13 + 8);
      v21 = (a1 + 1);
      v22 = vdupq_lane_s8(a9, 0);
      v23 = vdupq_lane_s8(a10, 0);
      do
      {
        v24 = vrhaddq_u8(*(v21 - 1), *v21);
        v60[v20] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v20 * 16), *v23.i8), *v24.i8, *v22.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v20 * 16), v23), v24, v22), 4uLL);
        ++v20;
        v21 = (v21 + a2);
      }

      while ((v20 * 16) != 1024);
      return (off_280ABCC18)(v60, 16, a5, a6, a7, a6, v16);
    }

    v43 = (a1 + 1);
    do
    {
      v44 = *v43;
      v45 = vrhaddq_u8(*(v43 - 1), *v43);
      v60[v20++] = v45;
      v43 = (v43 + a2);
    }

    while ((v20 * 16) != 1040);
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        v25 = 0;
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v26 = *a1->i8;
        v27 = (a1 + a2);
        v28 = vdupq_lane_s8(a9, 0);
        v29 = vdupq_lane_s8(a10, 0);
        do
        {
          v30 = *v27;
          v31 = vrhaddq_u8(v26, *v27);
          v60[v25 / 0x10] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v25), *v29.i8), *v31.i8, *v28.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v25), v29), v31, v28), 4uLL);
          v25 += 16;
          v27 = (v27 + a2);
          v26 = v30;
        }

        while (v25 != 1024);
      }

      else if (a4)
      {
        sub_277A11FE8(a1, v60, a2, a2, 0x10u, 64, a4, a8, a9, a10, *a11.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      }

      else
      {
        v17 = 0;
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v18 = vdupq_lane_s8(a9, 0);
        v19 = vdupq_lane_s8(a10, 0);
        do
        {
          v60[v17 / 0x10] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v17), *v19.i8), *a1, *v18.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v17), v19), *a1->i8, v18), 4uLL);
          a1 = (a1 + a2);
          v17 += 16;
        }

        while (v17 != 1024);
      }

      return (off_280ABCC18)(v60, 16, a5, a6, a7, a6, v16);
    }

    if (a4 == 4)
    {
      v46 = 0;
      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v47 = (a1 + 1);
      v48 = vdupq_lane_s8(a9, 0);
      v49 = vdupq_lane_s8(a10, 0);
      do
      {
        v60[v46++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v47, *v49.i8), *(v47 - 1), *v48.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v47->i8, v49), *(&v47[-1].u32[1] + 3), v48), 3uLL);
        v47 = (v47 + a2);
      }

      while ((v46 * 16) != 1040);
      v50 = 0;
      v48.i8[0] = *(a13 + 4);
      v49.i8[0] = *(a13 + 8);
      v51 = v60[0];
      v52 = vdupq_lane_s8(*v48.i8, 0);
      v53 = vdupq_lane_s8(*v49.i8, 0);
      do
      {
        v54 = v60[v50 / 0x10 + 1];
        v55 = vrhaddq_u8(v51, v54);
        *&v59[v50] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v50), *v53.i8), *v55.i8, *v52.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v50), v53), v55, v52), 4uLL);
        v50 += 16;
        v51 = v54;
      }

      while (v50 != 1024);
      return (off_280ABCC18)(v59, 16, a5, a6, a7, a6, v16);
    }

    if (!a4)
    {
      sub_277A11FE8(a1, v60, a2, 1, 0x10u, 64, a3, a8, a9, a10, *a11.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      return (off_280ABCC18)(v60, 16, a5, a6, a7, a6, v16);
    }

    v56 = 0;
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v57 = (a1 + 1);
    v45 = vdupq_lane_s8(a9, 0);
    v44 = vdupq_lane_s8(a10, 0);
    do
    {
      v58 = *(v57 - 1);
      a12 = vmlal_high_u8(vmull_high_u8(*v57, v44), v58, v45);
      a11 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v57->i8, *v44.i8), *v58.i8, *v45.i8), 3uLL), a12, 3uLL);
      v60[v56++] = a11;
      v57 = (v57 + a2);
    }

    while ((v56 * 16) != 1040);
  }

  sub_277A11FE8(v60, v59, 16, 16, 0x10u, 64, a4, a8, *v45.i8, *v44.i8, *a11.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
  return (off_280ABCC18)(v59, 16, a5, a6, a7, a6, v16);
}

uint64_t sub_277A159A4(uint64_t a1, int a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x16_t *a8, int8x8_t a9, int8x8_t a10, int8x8_t a11, int16x8_t a12, uint64_t a13)
{
  v16 = a4;
  v92 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v43 = 0;
      v44 = (a1 + 17);
      do
      {
        v45 = &v91[v43];
        v46 = vrhaddq_u8(*(v44 - 17), v44[-1]);
        v47 = vrhaddq_u8(*(v44 - 1), *v44);
        *v45 = v46;
        v45[1] = v47;
        v43 += 32;
        v44 = (v44 + a2);
      }

      while (v43 != 288);
      v46.i8[0] = *(a13 + 4);
      v47.i8[0] = *(a13 + 8);
      v48 = v91;
      v49 = v90;
      v50 = 8;
      v51 = vdupq_lane_s8(*v46.i8, 0);
      v52 = vdupq_lane_s8(*v47.i8, 0);
      do
      {
        v53 = 0;
        v54 = 1;
        do
        {
          v55 = v54;
          v56 = *a8++;
          v57 = vrhaddq_u8(*&v48[v53], *&v48[v53 + 32]);
          *&v49[v53] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v56.i8, *v52.i8), *v57.i8, *v51.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v56, v52), v57, v51), 4uLL);
          v53 = 16;
          v54 = 0;
        }

        while ((v55 & 1) != 0);
        v48 += 32;
        v49 += 32;
        --v50;
      }

      while (v50);
      return (off_280ABCC40)(v90, 32, a5, a6, a7, a6, v16, a8);
    }

    if (!a4)
    {
      a9.i8[0] = *(a13 + 4);
      a10.i8[0] = *(a13 + 8);
      v25 = v91;
      v26 = 8;
      v27 = vdupq_lane_s8(a9, 0);
      v28 = vdupq_lane_s8(a10, 0);
      do
      {
        v29 = 0;
        v30 = 1;
        do
        {
          v31 = v30;
          v32 = *a8++;
          v33 = vrhaddq_u8(*(a1 + v29), *(a1 + v29 + 1));
          *&v25[v29] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *v28.i8), *v33.i8, *v27.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v32, v28), v33, v27), 4uLL);
          v29 = 16;
          v30 = 0;
        }

        while ((v31 & 1) != 0);
        a1 += a2;
        v25 += 32;
        --v26;
      }

      while (v26);
      return (off_280ABCC40)(v91, 32, a5, a6, a7, a6, v16, a8);
    }

    v59 = 0;
    v60 = (a1 + 17);
    do
    {
      v61 = &v91[v59];
      v62 = *v60;
      v63 = vrhaddq_u8(*(v60 - 17), v60[-1]);
      v64 = vrhaddq_u8(*(v60 - 1), *v60);
      *v61 = v63;
      v61[1] = v64;
      v59 += 32;
      v60 = (v60 + a2);
    }

    while (v59 != 288);
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v34 = v91;
        v35 = 8;
        v36 = vdupq_lane_s8(a9, 0);
        v37 = vdupq_lane_s8(a10, 0);
        do
        {
          v38 = 0;
          v39 = 1;
          do
          {
            v40 = v39;
            v41 = *a8++;
            v42 = vrhaddq_u8(*(a1 + v38), *(a1 + v38 + a2));
            *&v34[v38] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *v37.i8), *v42.i8, *v36.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v41, v37), v42, v36), 4uLL);
            v38 = 16;
            v39 = 0;
          }

          while ((v40 & 1) != 0);
          a1 += a2;
          v34 += 32;
          --v35;
        }

        while (v35);
      }

      else if (a4)
      {
        sub_277A11FE8(a1, v91, a2, a2, 0x20u, 8, a4, a8, a9, a10, a11, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      }

      else
      {
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v17 = v91;
        v18 = 8;
        v19 = vdupq_lane_s8(a9, 0);
        v20 = vdupq_lane_s8(a10, 0);
        do
        {
          v21 = 0;
          v22 = 1;
          do
          {
            v23 = v22;
            v24 = *a8++;
            *&v17[v21] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *v20.i8), *(a1 + v21), *v19.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v24, v20), *(a1 + v21), v19), 4uLL);
            v21 = 16;
            v22 = 0;
          }

          while ((v23 & 1) != 0);
          a1 += a2;
          v17 += 32;
          --v18;
        }

        while (v18);
      }

      return (off_280ABCC40)(v91, 32, a5, a6, a7, a6, v16, a8);
    }

    if (a4 == 4)
    {
      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v65 = v91;
      v66 = 9;
      v67 = vdupq_lane_s8(a9, 0);
      v68 = vdupq_lane_s8(a10, 0);
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          *&v65[v69] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v69 + 1), *v68.i8), *(a1 + v69), *v67.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v69 + 1), v68), *(a1 + v69), v67), 3uLL);
          v69 = 16;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        a1 += a2;
        v65 += 32;
        --v66;
      }

      while (v66);
      v67.i8[0] = *(a13 + 4);
      v68.i8[0] = *(a13 + 8);
      v72 = v91;
      v73 = v90;
      v74 = 8;
      v75 = vdupq_lane_s8(*v67.i8, 0);
      v76 = vdupq_lane_s8(*v68.i8, 0);
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *a8++;
          v81 = vrhaddq_u8(*&v72[v77], *&v72[v77 + 32]);
          *&v73[v77] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v80.i8, *v76.i8), *v81.i8, *v75.i8), 4uLL), vmlal_high_u8(vmull_high_u8(v80, v76), v81, v75), 4uLL);
          v77 = 16;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v72 += 32;
        v73 += 32;
        --v74;
      }

      while (v74);
      return (off_280ABCC40)(v90, 32, a5, a6, a7, a6, v16, a8);
    }

    if (!a4)
    {
      sub_277A11FE8(a1, v91, a2, 1, 0x20u, 8, a3, a8, a9, a10, a11, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      return (off_280ABCC40)(v91, 32, a5, a6, a7, a6, v16, a8);
    }

    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v82 = v91;
    v83 = 9;
    v63 = vdupq_lane_s8(a9, 0);
    v64 = vdupq_lane_s8(a10, 0);
    do
    {
      v84 = 0;
      v85 = 1;
      do
      {
        v86 = v85;
        v87 = *(a1 + v84);
        v88 = *(a1 + v84 + 1);
        v89 = vmlal_u8(vmull_u8(*v88.i8, *v64.i8), *v87.i8, *v63.i8);
        a12 = vmlal_high_u8(vmull_high_u8(v88, v64), v87, v63);
        v62 = vrshrn_high_n_s16(vrshrn_n_s16(v89, 3uLL), a12, 3uLL);
        *&v82[v84] = v62;
        v84 = 16;
        v85 = 0;
      }

      while ((v86 & 1) != 0);
      a1 += a2;
      v82 += 32;
      --v83;
    }

    while (v83);
  }

  sub_277A11FE8(v91, v90, 32, 32, 0x20u, 8, a4, a8, *v63.i8, *v64.i8, *v62.i8, *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
  return (off_280ABCC40)(v90, 32, a5, a6, a7, a6, v16, a8);
}

uint64_t sub_277A15E8C(uint64_t a1, int a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, int8x8_t a10, __n128 a11, int16x8_t a12, uint64_t a13)
{
  v16 = a4;
  v79 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v39 = v78;
      v40 = 17;
      do
      {
        v41 = 0;
        do
        {
          v42 = *(a1 + v41 + 1);
          v43 = vrhaddq_u8(*(a1 + v41), v42);
          *&v39[v41] = v43;
          v23 = v41 >= 0x30;
          v41 += 16;
        }

        while (!v23);
        a1 += a2;
        v39 += 64;
        --v40;
      }

      while (v40);
      v43.i8[0] = *(a13 + 4);
      v42.i8[0] = *(a13 + 8);
      v44 = v78;
      v45 = v77;
      v46 = 16;
      v47 = vdupq_lane_s8(*v43.i8, 0);
      v48 = vdupq_lane_s8(*v42.i8, 0);
      do
      {
        v49 = 0;
        do
        {
          v50 = vrhaddq_u8(*&v44[v49], *&v44[v49 + 64]);
          *&v45[v49] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v49), *v48.i8), *v50.i8, *v47.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v49), v48), v50, v47), 4uLL);
          v51 = v49 + 16;
          v23 = v49 >= 0x30;
          v49 += 16;
        }

        while (!v23);
        a8 += v51;
        v44 += 64;
        v45 += 64;
        --v46;
      }

      while (v46);
      return (off_280ABCC68)(v77, 64, a5, a6, a7, a6, v16, a8);
    }

    if (!a4)
    {
      a9.i8[0] = *(a13 + 4);
      a10.i8[0] = *(a13 + 8);
      v24 = v78;
      v25 = 16;
      v26 = vdupq_lane_s8(a9, 0);
      v27 = vdupq_lane_s8(a10, 0);
      do
      {
        v28 = 0;
        do
        {
          v29 = vrhaddq_u8(*(a1 + v28), *(a1 + v28 + 1));
          *&v24[v28] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v28), *v27.i8), *v29.i8, *v26.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v28), v27), v29, v26), 4uLL);
          v30 = v28 + 16;
          v23 = v28 >= 0x30;
          v28 += 16;
        }

        while (!v23);
        a8 += v30;
        a1 += a2;
        v24 += 64;
        --v25;
      }

      while (v25);
      return (off_280ABCC68)(v78, 64, a5, a6, a7, a6, v16, a8);
    }

    v53 = v78;
    v54 = 17;
    do
    {
      v55 = 0;
      do
      {
        v56 = *(a1 + v55 + 1);
        v57 = vrhaddq_u8(*(a1 + v55), v56);
        *&v53[v55] = v57;
        v23 = v55 >= 0x30;
        v55 += 16;
      }

      while (!v23);
      a1 += a2;
      v53 += 64;
      --v54;
    }

    while (v54);
  }

  else
  {
    if (!a3)
    {
      if (a4 == 4)
      {
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v31 = a1 + a2;
        v32 = v78;
        v33 = 16;
        v34 = vdupq_lane_s8(a9, 0);
        v35 = vdupq_lane_s8(a10, 0);
        do
        {
          v36 = 0;
          do
          {
            v37 = vrhaddq_u8(*(a1 + v36), *(v31 + v36));
            *&v32[v36] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v36), *v35.i8), *v37.i8, *v34.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v36), v35), v37, v34), 4uLL);
            v38 = v36 + 16;
            v23 = v36 >= 0x30;
            v36 += 16;
          }

          while (!v23);
          a8 += v38;
          a1 += a2;
          v32 += 64;
          v31 += a2;
          --v33;
        }

        while (v33);
      }

      else if (a4)
      {
        sub_277A11FE8(a1, v78, a2, a2, 0x40u, 16, a4, a8, a9, a10, a11.n128_u64[0], *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      }

      else
      {
        a9.i32[0] = *(a13 + 4);
        a10.i8[0] = *(a13 + 8);
        v17 = v78;
        v18 = 16;
        v19 = vdupq_lane_s8(a9, 0);
        v20 = vdupq_lane_s8(a10, 0);
        do
        {
          v21 = 0;
          do
          {
            *&v17[v21] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v21), *v20.i8), *(a1 + v21), *v19.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v21), v20), *(a1 + v21), v19), 4uLL);
            v22 = v21 + 16;
            v23 = v21 >= 0x30;
            v21 += 16;
          }

          while (!v23);
          a8 += v22;
          a1 += a2;
          v17 += 64;
          --v18;
        }

        while (v18);
      }

      return (off_280ABCC68)(v78, 64, a5, a6, a7, a6, v16, a8);
    }

    if (a4 == 4)
    {
      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v58 = v78;
      v59 = 17;
      v60 = vdupq_lane_s8(a9, 0);
      v61 = vdupq_lane_s8(a10, 0);
      do
      {
        v62 = 0;
        do
        {
          *&v58[v62] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a1 + v62 + 1), *v61.i8), *(a1 + v62), *v60.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(a1 + v62 + 1), v61), *(a1 + v62), v60), 3uLL);
          v23 = v62 >= 0x30;
          v62 += 16;
        }

        while (!v23);
        a1 += a2;
        v58 += 64;
        --v59;
      }

      while (v59);
      v60.i8[0] = *(a13 + 4);
      v61.i8[0] = *(a13 + 8);
      v63 = v78;
      v64 = v77;
      v65 = 16;
      v66 = vdupq_lane_s8(*v60.i8, 0);
      v67 = vdupq_lane_s8(*v61.i8, 0);
      do
      {
        v68 = 0;
        do
        {
          v69 = vrhaddq_u8(*&v63[v68], *&v63[v68 + 64]);
          *&v64[v68] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(a8 + v68), *v67.i8), *v69.i8, *v66.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*(a8 + v68), v67), v69, v66), 4uLL);
          v70 = v68 + 16;
          v23 = v68 >= 0x30;
          v68 += 16;
        }

        while (!v23);
        a8 += v70;
        v63 += 64;
        v64 += 64;
        --v65;
      }

      while (v65);
      return (off_280ABCC68)(v77, 64, a5, a6, a7, a6, v16, a8);
    }

    if (!a4)
    {
      sub_277A11FE8(a1, v78, a2, 1, 0x40u, 16, a3, a8, a9, a10, a11.n128_u64[0], *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
      return (off_280ABCC68)(v78, 64, a5, a6, a7, a6, v16, a8);
    }

    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v71 = v78;
    v72 = 17;
    v57 = vdupq_lane_s8(a9, 0);
    v56 = vdupq_lane_s8(a10, 0);
    do
    {
      v73 = 0;
      do
      {
        v74 = *(a1 + v73);
        v75 = *(a1 + v73 + 1);
        v76 = vmlal_u8(vmull_u8(*v75.i8, *v56.i8), *v74.i8, *v57.i8);
        a12 = vmlal_high_u8(vmull_high_u8(v75, v56), v74, v57);
        a11 = vrshrn_high_n_s16(vrshrn_n_s16(v76, 3uLL), a12, 3uLL);
        *&v71[v73] = a11;
        v23 = v73 >= 0x30;
        v73 += 16;
      }

      while (!v23);
      a1 += a2;
      v71 += 64;
      --v72;
    }

    while (v72);
  }

  sub_277A11FE8(v78, v77, 64, 64, 0x40u, 16, a4, a8, *v57.i8, *v56.i8, a11.n128_u64[0], *a12.i8, *(a13 + 4), HIWORD(*(a13 + 4)), *(a13 + 8));
  return (off_280ABCC68)(v77, 64, a5, a6, a7, a6, v16, a8);
}

uint64_t sub_277A16384(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  v23 = *MEMORY[0x277D85DE8];
  a8.i32[0] = 8 - a3;
  a9.i32[0] = a3;
  v10 = vdup_lane_s8(a8, 0);
  v11 = vdup_lane_s8(a9, 0);
  do
  {
    v12.i32[0] = *a1;
    v12.i32[1] = *(a1 + a2);
    v13.i32[0] = *(a1 + 1);
    v13.i32[1] = *(a1 + a2 + 1);
    v14 = vrshrn_n_s16(vmlal_u8(vmull_u8(v13, v11), v12, v10), 3uLL);
    *&v22[v9] = v14;
    a1 = (a1 + 2 * a2);
    v9 += 2;
  }

  while ((v9 * 4) != 24);
  v15 = 0;
  v10.i32[0] = 8 - a4;
  v11.i32[0] = a4;
  v16 = v22[0];
  v17 = vdup_lane_s8(v10, 0);
  v18 = vdup_lane_s8(v11, 0);
  do
  {
    v14.i32[0] = v16;
    v19 = *&v22[v15 + 1];
    v14 = vrshrn_n_s16(vmlal_u8(vmull_u8(v19, v18), vzip1_s32(v14, v19), v17), 3uLL);
    *&v21[v15] = v14;
    v16 = v19.i32[1];
    v15 += 2;
  }

  while ((v15 * 4) != 16);
  return sub_277B2F8C0(v21, 4, a5, a6, a7);
}

uint64_t sub_277A164A0(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  v23 = *MEMORY[0x277D85DE8];
  a8.i32[0] = 8 - a3;
  a9.i32[0] = a3;
  v10 = vdup_lane_s8(a8, 0);
  v11 = vdup_lane_s8(a9, 0);
  do
  {
    v12.i32[0] = *a1;
    v12.i32[1] = *(a1 + a2);
    v13.i32[0] = *(a1 + 1);
    v13.i32[1] = *(a1 + a2 + 1);
    v14 = vrshrn_n_s16(vmlal_u8(vmull_u8(v13, v11), v12, v10), 3uLL);
    *&v22[v9] = v14;
    a1 = (a1 + 2 * a2);
    v9 += 2;
  }

  while ((v9 * 4) != 40);
  v15 = 0;
  v10.i32[0] = 8 - a4;
  v11.i32[0] = a4;
  v16 = v22[0];
  v17 = vdup_lane_s8(v10, 0);
  v18 = vdup_lane_s8(v11, 0);
  do
  {
    v14.i32[0] = v16;
    v19 = *&v22[v15 + 1];
    v14 = vrshrn_n_s16(vmlal_u8(vmull_u8(v19, v18), vzip1_s32(v14, v19), v17), 3uLL);
    *&v21[v15] = v14;
    v16 = v19.i32[1];
    v15 += 2;
  }

  while ((v15 * 4) != 32);
  return sub_277B2F954(v21, 4, a5, a6, a7);
}

uint64_t sub_277A165BC(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  v23 = *MEMORY[0x277D85DE8];
  a8.i32[0] = 8 - a3;
  a9.i32[0] = a3;
  v10 = vdup_lane_s8(a8, 0);
  v11 = vdup_lane_s8(a9, 0);
  do
  {
    v12.i32[0] = *a1;
    v12.i32[1] = *(a1 + a2);
    v13.i32[0] = *(a1 + 1);
    v13.i32[1] = *(a1 + a2 + 1);
    v14 = vrshrn_n_s16(vmlal_u8(vmull_u8(v13, v11), v12, v10), 3uLL);
    *&v22[v9] = v14;
    a1 = (a1 + 2 * a2);
    v9 += 2;
  }

  while ((v9 * 4) != 72);
  v15 = 0;
  v10.i32[0] = 8 - a4;
  v11.i32[0] = a4;
  v16 = v22[0];
  v17 = vdup_lane_s8(v10, 0);
  v18 = vdup_lane_s8(v11, 0);
  do
  {
    v14.i32[0] = v16;
    v19 = *&v22[v15 + 1];
    v14 = vrshrn_n_s16(vmlal_u8(vmull_u8(v19, v18), vzip1_s32(v14, v19), v17), 3uLL);
    *&v21[v15] = v14;
    v16 = v19.i32[1];
    v15 += 2;
  }

  while ((v15 * 4) != 64);
  return sub_277B305E0(v21, 4, a5, a6, a7);
}

uint64_t sub_277A166D8(uint64_t a1, int a2, __int32 a3, __int32 a4, int32x4_t *a5, int16x8_t *a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  v37[5] = *MEMORY[0x277D85DE8];
  a8.i32[0] = 8 - a3;
  a9.i32[0] = a3;
  v10 = (a1 + 1);
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v37[v9++] = vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, v12), *(v10 - 1), v11), 3uLL);
    v10 = (v10 + a2);
  }

  while ((v9 * 8) != 40);
  v13 = 0;
  v11.i32[0] = 8 - a4;
  v12.i32[0] = a4;
  v14 = v37[0];
  v15 = vdup_lane_s8(v11, 0);
  v16 = vdup_lane_s8(v12, 0);
  do
  {
    v17 = v37[v13 + 1];
    *&v36[v13 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(v17, v16), v14, v15), 3uLL);
    ++v13;
    v14 = v17;
  }

  while ((v13 * 8) != 32);
  v18 = 0;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vmovl_u8(*&v36[v18]);
    v22 = *a5;
    v23 = a5[1];
    a5 += 2;
    v24 = *a6;
    v25 = a6[1];
    a6 += 2;
    v26 = vuzp1q_s16(v24, v25);
    v27 = vmlsl_s16(v22, *v21.i8, *v26.i8);
    v28 = vmlsl_high_s16(v23, v21, v26);
    v29 = vsraq_n_s32(v27, v27, 0x1FuLL);
    v30 = vsraq_n_s32(v28, v28, 0x1FuLL);
    v31 = vrshrq_n_s32(v29, 0xCuLL);
    v32 = vrshrq_n_s32(v30, 0xCuLL);
    v20 = vrsraq_n_s32(vrsraq_n_s32(v20, v29, 0xCuLL), v30, 0xCuLL);
    v19 = vmlaq_s32(vmlaq_s32(v19, v31, v31), v32, v32);
    v18 += 8;
  }

  while (v18 != 32);
  v33 = vaddvq_s32(v19);
  *a7 = v33;
  v34 = vaddvq_s32(v20);
  return v33 - ((v34 * v34) >> 5);
}

uint64_t sub_277A16838(uint64_t a1, int a2, __int32 a3, __int32 a4, int32x4_t *a5, int16x8_t *a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  v37[9] = *MEMORY[0x277D85DE8];
  a8.i32[0] = 8 - a3;
  a9.i32[0] = a3;
  v10 = (a1 + 1);
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v37[v9++] = vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, v12), *(v10 - 1), v11), 3uLL);
    v10 = (v10 + a2);
  }

  while ((v9 * 8) != 72);
  v13 = 0;
  v11.i32[0] = 8 - a4;
  v12.i32[0] = a4;
  v14 = v37[0];
  v15 = vdup_lane_s8(v11, 0);
  v16 = vdup_lane_s8(v12, 0);
  do
  {
    v17 = v37[v13 + 1];
    *&v36[v13 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(v17, v16), v14, v15), 3uLL);
    ++v13;
    v14 = v17;
  }

  while ((v13 * 8) != 64);
  v18 = 0;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vmovl_u8(*&v36[v18]);
    v22 = *a5;
    v23 = a5[1];
    a5 += 2;
    v24 = *a6;
    v25 = a6[1];
    a6 += 2;
    v26 = vuzp1q_s16(v24, v25);
    v27 = vmlsl_s16(v22, *v21.i8, *v26.i8);
    v28 = vmlsl_high_s16(v23, v21, v26);
    v29 = vsraq_n_s32(v27, v27, 0x1FuLL);
    v30 = vsraq_n_s32(v28, v28, 0x1FuLL);
    v31 = vrshrq_n_s32(v29, 0xCuLL);
    v32 = vrshrq_n_s32(v30, 0xCuLL);
    v20 = vrsraq_n_s32(vrsraq_n_s32(v20, v29, 0xCuLL), v30, 0xCuLL);
    v19 = vmlaq_s32(vmlaq_s32(v19, v31, v31), v32, v32);
    v18 += 8;
  }

  while (v18 != 64);
  v33 = vaddvq_s32(v19);
  *a7 = v33;
  v34 = vaddvq_s32(v20);
  return v33 - ((v34 * v34) >> 6);
}

uint64_t sub_277A16998(uint64_t a1, int a2, __int32 a3, __int32 a4, int32x4_t *a5, int16x8_t *a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  v37[17] = *MEMORY[0x277D85DE8];
  a8.i32[0] = 8 - a3;
  a9.i32[0] = a3;
  v10 = (a1 + 1);
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v37[v9++] = vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, v12), *(v10 - 1), v11), 3uLL);
    v10 = (v10 + a2);
  }

  while ((v9 * 8) != 136);
  v13 = 0;
  v11.i32[0] = 8 - a4;
  v12.i32[0] = a4;
  v14 = v37[0];
  v15 = vdup_lane_s8(v11, 0);
  v16 = vdup_lane_s8(v12, 0);
  do
  {
    v17 = v37[v13 + 1];
    *&v36[v13 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(v17, v16), v14, v15), 3uLL);
    ++v13;
    v14 = v17;
  }

  while ((v13 * 8) != 128);
  v18 = 0;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vmovl_u8(*&v36[v18]);
    v22 = *a5;
    v23 = a5[1];
    a5 += 2;
    v24 = *a6;
    v25 = a6[1];
    a6 += 2;
    v26 = vuzp1q_s16(v24, v25);
    v27 = vmlsl_s16(v22, *v21.i8, *v26.i8);
    v28 = vmlsl_high_s16(v23, v21, v26);
    v29 = vsraq_n_s32(v27, v27, 0x1FuLL);
    v30 = vsraq_n_s32(v28, v28, 0x1FuLL);
    v31 = vrshrq_n_s32(v29, 0xCuLL);
    v32 = vrshrq_n_s32(v30, 0xCuLL);
    v20 = vrsraq_n_s32(vrsraq_n_s32(v20, v29, 0xCuLL), v30, 0xCuLL);
    v19 = vmlaq_s32(vmlaq_s32(v19, v31, v31), v32, v32);
    v18 += 8;
  }

  while (v18 != 128);
  v33 = vaddvq_s32(v19);
  *a7 = v33;
  v34 = vaddvq_s32(v20);
  return v33 - ((v34 * v34) >> 7);
}

uint64_t sub_277A16B00(uint64_t a1, int a2, __int32 a3, __int32 a4, int32x4_t *a5, int16x8_t *a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  v37[33] = *MEMORY[0x277D85DE8];
  a8.i32[0] = 8 - a3;
  a9.i32[0] = a3;
  v10 = (a1 + 1);
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v37[v9++] = vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, v12), *(v10 - 1), v11), 3uLL);
    v10 = (v10 + a2);
  }

  while ((v9 * 8) != 264);
  v13 = 0;
  v11.i32[0] = 8 - a4;
  v12.i32[0] = a4;
  v14 = v37[0];
  v15 = vdup_lane_s8(v11, 0);
  v16 = vdup_lane_s8(v12, 0);
  do
  {
    v17 = v37[v13 + 1];
    *&v36[v13 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(v17, v16), v14, v15), 3uLL);
    ++v13;
    v14 = v17;
  }

  while ((v13 * 8) != 256);
  v18 = 0;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vmovl_u8(*&v36[v18]);
    v22 = *a5;
    v23 = a5[1];
    a5 += 2;
    v24 = *a6;
    v25 = a6[1];
    a6 += 2;
    v26 = vuzp1q_s16(v24, v25);
    v27 = vmlsl_s16(v22, *v21.i8, *v26.i8);
    v28 = vmlsl_high_s16(v23, v21, v26);
    v29 = vsraq_n_s32(v27, v27, 0x1FuLL);
    v30 = vsraq_n_s32(v28, v28, 0x1FuLL);
    v31 = vrshrq_n_s32(v29, 0xCuLL);
    v32 = vrshrq_n_s32(v30, 0xCuLL);
    v20 = vrsraq_n_s32(vrsraq_n_s32(v20, v29, 0xCuLL), v30, 0xCuLL);
    v19 = vmlaq_s32(vmlaq_s32(v19, v31, v31), v32, v32);
    v18 += 8;
  }

  while (v18 != 256);
  v33 = vaddvq_s32(v19);
  *a7 = v33;
  v34 = vaddvq_s32(v20);
  return v33 - ((v34 * v34) >> 8);
}

uint64_t sub_277A16C68(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  v21 = *MEMORY[0x277D85DE8];
  a8.i32[0] = 8 - a3;
  a9.i32[0] = a3;
  v10 = (a1 + 1);
  v11 = vdupq_lane_s8(a8, 0);
  v12 = vdupq_lane_s8(a9, 0);
  do
  {
    v20[v9++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, *v12.i8), *(v10 - 1), *v11.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v10->i8, v12), *(&v10[-1].u32[1] + 3), v11), 3uLL);
    v10 = (v10 + a2);
  }

  while ((v9 * 16) != 80);
  v13 = 0;
  v11.i32[0] = 8 - a4;
  v12.i32[0] = a4;
  v14 = v20[0];
  v15 = vdupq_lane_s8(*v11.i8, 0);
  v16 = vdupq_lane_s8(*v12.i8, 0);
  do
  {
    v17 = v20[v13 + 1];
    v19[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v16.i8), *v14.i8, *v15.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v17, v16), v14, v15), 3uLL);
    v14 = v17;
  }

  while ((v13 * 16) != 64);
  return sub_277B30674(v19, 16, a5, a6, a7);
}

uint64_t sub_277A16D80(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  v21 = *MEMORY[0x277D85DE8];
  a8.i32[0] = 8 - a3;
  a9.i32[0] = a3;
  v10 = (a1 + 1);
  v11 = vdupq_lane_s8(a8, 0);
  v12 = vdupq_lane_s8(a9, 0);
  do
  {
    v20[v9++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, *v12.i8), *(v10 - 1), *v11.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v10->i8, v12), *(&v10[-1].u32[1] + 3), v11), 3uLL);
    v10 = (v10 + a2);
  }

  while ((v9 * 16) != 144);
  v13 = 0;
  v11.i32[0] = 8 - a4;
  v12.i32[0] = a4;
  v14 = v20[0];
  v15 = vdupq_lane_s8(*v11.i8, 0);
  v16 = vdupq_lane_s8(*v12.i8, 0);
  do
  {
    v17 = v20[v13 + 1];
    v19[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v16.i8), *v14.i8, *v15.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v17, v16), v14, v15), 3uLL);
    v14 = v17;
  }

  while ((v13 * 16) != 128);
  return sub_277B2FB80(v19, 16, a5, a6, a7);
}

uint64_t sub_277A16EA0(int8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = &a1->i8[1];
      do
      {
        v48[v35++] = vrhaddq_u8(*(v36 - 1), *v36);
        v36 = (v36 + a2);
      }

      while ((v35 * 16) != 272);
      v37 = 0;
      v38 = v48[0];
      do
      {
        v39 = v48[v37 + 1];
        *&v47[v37 * 16] = vrhaddq_u8(v38, v39);
        ++v37;
        v38 = v39;
      }

      while ((v37 * 16) != 256);
    }

    else
    {
      v10 = 0;
      v11 = &a1->i8[1];
      if (!a4)
      {
        do
        {
          v48[v10++] = vrhaddq_u8(*(v11 - 1), *v11);
          v11 = (v11 + a2);
        }

        while ((v10 * 16) != 256);
        goto LABEL_38;
      }

      do
      {
        v12 = *v11;
        v13 = vrhaddq_u8(*(v11 - 1), *v11);
        v48[v10++] = v13;
        v11 = (v11 + a2);
      }

      while ((v10 * 16) != 272);
      v14 = 0;
      v13.i32[0] = 8 - a4;
      v12.i32[0] = a4;
      v15 = v48[0];
      v16 = vdupq_lane_s8(*v13.i8, 0);
      v17 = vdupq_lane_s8(*v12.i8, 0);
      do
      {
        v18 = v48[v14 + 1];
        *&v47[v14 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v18.i8, *v17.i8), *v15.i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v18, v17), v15, v16), 3uLL);
        ++v14;
        v15 = v18;
      }

      while ((v14 * 16) != 256);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v19 = 0;
    a8.i32[0] = 8 - a3;
    a9.i32[0] = a3;
    v20 = &a1->i8[1];
    v21 = vdupq_lane_s8(a8, 0);
    v22 = vdupq_lane_s8(a9, 0);
    if (a4 == 4)
    {
      do
      {
        v48[v19++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
        v20 = (v20 + a2);
      }

      while ((v19 * 16) != 272);
      v23 = 0;
      v24 = v48[0];
      do
      {
        v25 = v48[v23 + 1];
        *&v47[v23 * 16] = vrhaddq_u8(v24, v25);
        ++v23;
        v24 = v25;
      }

      while ((v23 * 16) != 256);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v48[v19++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
          v20 = (v20 + a2);
        }

        while ((v19 * 16) != 256);
        goto LABEL_38;
      }

      do
      {
        v48[v19++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
        v20 = (v20 + a2);
      }

      while ((v19 * 16) != 272);
      v26 = 0;
      v21.i32[0] = 8 - a4;
      v22.i32[0] = a4;
      v27 = v48[0];
      v28 = vdupq_lane_s8(*v21.i8, 0);
      v29 = vdupq_lane_s8(*v22.i8, 0);
      do
      {
        v30 = v48[v26 + 1];
        *&v47[v26 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *v29.i8), *v27.i8, *v28.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v30, v29), v27, v28), 3uLL);
        ++v26;
        v27 = v30;
      }

      while ((v26 * 16) != 256);
    }

LABEL_35:
    v40 = v47;
    return sub_277B2FC60(v40, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v31 = 0;
    v32 = *a1;
    v33 = &a1->i8[a2];
    do
    {
      v34 = *v33;
      v48[v31++] = vrhaddq_u8(v32, *v33);
      v33 = (v33 + a2);
      v32 = v34;
    }

    while ((v31 * 16) != 256);
    goto LABEL_38;
  }

  if (a4)
  {
    v41 = 0;
    a8.i32[0] = 8 - a4;
    a9.i32[0] = a4;
    v42 = *a1;
    v43 = &a1->i8[a2];
    v44 = vdupq_lane_s8(a8, 0);
    v45 = vdupq_lane_s8(a9, 0);
    do
    {
      v46 = *v43->i8;
      v48[v41++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v43, *v45.i8), *v42.i8, *v44.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v43->i8, v45), v42, v44), 3uLL);
      v43 = (v43 + a2);
      v42 = v46;
    }

    while ((v41 * 16) != 256);
LABEL_38:
    v40 = v48;
    return sub_277B2FC60(v40, 16, a5, a6, a7);
  }

  return sub_277B2FC60(a1, a2, a5, a6, a7);
}

uint64_t sub_277A1728C(int8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = &a1->i8[1];
      do
      {
        v48[v35++] = vrhaddq_u8(*(v36 - 1), *v36);
        v36 = (v36 + a2);
      }

      while ((v35 * 16) != 528);
      v37 = 0;
      v38 = v48[0];
      do
      {
        v39 = v48[v37 + 1];
        *&v47[v37 * 16] = vrhaddq_u8(v38, v39);
        ++v37;
        v38 = v39;
      }

      while ((v37 * 16) != 512);
    }

    else
    {
      v10 = 0;
      v11 = &a1->i8[1];
      if (!a4)
      {
        do
        {
          v48[v10++] = vrhaddq_u8(*(v11 - 1), *v11);
          v11 = (v11 + a2);
        }

        while ((v10 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v12 = *v11;
        v13 = vrhaddq_u8(*(v11 - 1), *v11);
        v48[v10++] = v13;
        v11 = (v11 + a2);
      }

      while ((v10 * 16) != 528);
      v14 = 0;
      v13.i32[0] = 8 - a4;
      v12.i32[0] = a4;
      v15 = v48[0];
      v16 = vdupq_lane_s8(*v13.i8, 0);
      v17 = vdupq_lane_s8(*v12.i8, 0);
      do
      {
        v18 = v48[v14 + 1];
        *&v47[v14 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v18.i8, *v17.i8), *v15.i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v18, v17), v15, v16), 3uLL);
        ++v14;
        v15 = v18;
      }

      while ((v14 * 16) != 512);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v19 = 0;
    a8.i32[0] = 8 - a3;
    a9.i32[0] = a3;
    v20 = &a1->i8[1];
    v21 = vdupq_lane_s8(a8, 0);
    v22 = vdupq_lane_s8(a9, 0);
    if (a4 == 4)
    {
      do
      {
        v48[v19++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
        v20 = (v20 + a2);
      }

      while ((v19 * 16) != 528);
      v23 = 0;
      v24 = v48[0];
      do
      {
        v25 = v48[v23 + 1];
        *&v47[v23 * 16] = vrhaddq_u8(v24, v25);
        ++v23;
        v24 = v25;
      }

      while ((v23 * 16) != 512);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v48[v19++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
          v20 = (v20 + a2);
        }

        while ((v19 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v48[v19++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
        v20 = (v20 + a2);
      }

      while ((v19 * 16) != 528);
      v26 = 0;
      v21.i32[0] = 8 - a4;
      v22.i32[0] = a4;
      v27 = v48[0];
      v28 = vdupq_lane_s8(*v21.i8, 0);
      v29 = vdupq_lane_s8(*v22.i8, 0);
      do
      {
        v30 = v48[v26 + 1];
        *&v47[v26 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *v29.i8), *v27.i8, *v28.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v30, v29), v27, v28), 3uLL);
        ++v26;
        v27 = v30;
      }

      while ((v26 * 16) != 512);
    }

LABEL_35:
    v40 = v47;
    return sub_277B2FD40(v40, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v31 = 0;
    v32 = *a1;
    v33 = &a1->i8[a2];
    do
    {
      v34 = *v33;
      v48[v31++] = vrhaddq_u8(v32, *v33);
      v33 = (v33 + a2);
      v32 = v34;
    }

    while ((v31 * 16) != 512);
    goto LABEL_38;
  }

  if (a4)
  {
    v41 = 0;
    a8.i32[0] = 8 - a4;
    a9.i32[0] = a4;
    v42 = *a1;
    v43 = &a1->i8[a2];
    v44 = vdupq_lane_s8(a8, 0);
    v45 = vdupq_lane_s8(a9, 0);
    do
    {
      v46 = *v43->i8;
      v48[v41++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v43, *v45.i8), *v42.i8, *v44.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v43->i8, v45), v42, v44), 3uLL);
      v43 = (v43 + a2);
      v42 = v46;
    }

    while ((v41 * 16) != 512);
LABEL_38:
    v40 = v48;
    return sub_277B2FD40(v40, 16, a5, a6, a7);
  }

  return sub_277B2FD40(a1, a2, a5, a6, a7);
}

uint64_t sub_277A17678(int8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = &a1->i8[1];
      do
      {
        v48[v35++] = vrhaddq_u8(*(v36 - 1), *v36);
        v36 = (v36 + a2);
      }

      while ((v35 * 16) != 1040);
      v37 = 0;
      v38 = v48[0];
      do
      {
        v39 = v48[v37 + 1];
        *&v47[v37 * 16] = vrhaddq_u8(v38, v39);
        ++v37;
        v38 = v39;
      }

      while ((v37 * 16) != 1024);
    }

    else
    {
      v10 = 0;
      v11 = &a1->i8[1];
      if (!a4)
      {
        do
        {
          v48[v10++] = vrhaddq_u8(*(v11 - 1), *v11);
          v11 = (v11 + a2);
        }

        while ((v10 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v12 = *v11;
        v13 = vrhaddq_u8(*(v11 - 1), *v11);
        v48[v10++] = v13;
        v11 = (v11 + a2);
      }

      while ((v10 * 16) != 1040);
      v14 = 0;
      v13.i32[0] = 8 - a4;
      v12.i32[0] = a4;
      v15 = v48[0];
      v16 = vdupq_lane_s8(*v13.i8, 0);
      v17 = vdupq_lane_s8(*v12.i8, 0);
      do
      {
        v18 = v48[v14 + 1];
        *&v47[v14 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v18.i8, *v17.i8), *v15.i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v18, v17), v15, v16), 3uLL);
        ++v14;
        v15 = v18;
      }

      while ((v14 * 16) != 1024);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v19 = 0;
    a8.i32[0] = 8 - a3;
    a9.i32[0] = a3;
    v20 = &a1->i8[1];
    v21 = vdupq_lane_s8(a8, 0);
    v22 = vdupq_lane_s8(a9, 0);
    if (a4 == 4)
    {
      do
      {
        v48[v19++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
        v20 = (v20 + a2);
      }

      while ((v19 * 16) != 1040);
      v23 = 0;
      v24 = v48[0];
      do
      {
        v25 = v48[v23 + 1];
        *&v47[v23 * 16] = vrhaddq_u8(v24, v25);
        ++v23;
        v24 = v25;
      }

      while ((v23 * 16) != 1024);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v48[v19++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
          v20 = (v20 + a2);
        }

        while ((v19 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v48[v19++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v20, *v22.i8), *(v20 - 1), *v21.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v20->i8, v22), *(&v20[-1].u32[1] + 3), v21), 3uLL);
        v20 = (v20 + a2);
      }

      while ((v19 * 16) != 1040);
      v26 = 0;
      v21.i32[0] = 8 - a4;
      v22.i32[0] = a4;
      v27 = v48[0];
      v28 = vdupq_lane_s8(*v21.i8, 0);
      v29 = vdupq_lane_s8(*v22.i8, 0);
      do
      {
        v30 = v48[v26 + 1];
        *&v47[v26 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *v29.i8), *v27.i8, *v28.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v30, v29), v27, v28), 3uLL);
        ++v26;
        v27 = v30;
      }

      while ((v26 * 16) != 1024);
    }

LABEL_35:
    v40 = v47;
    return sub_277B308D4(v40, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v31 = 0;
    v32 = *a1;
    v33 = &a1->i8[a2];
    do
    {
      v34 = *v33;
      v48[v31++] = vrhaddq_u8(v32, *v33);
      v33 = (v33 + a2);
      v32 = v34;
    }

    while ((v31 * 16) != 1024);
    goto LABEL_38;
  }

  if (a4)
  {
    v41 = 0;
    a8.i32[0] = 8 - a4;
    a9.i32[0] = a4;
    v42 = *a1;
    v43 = &a1->i8[a2];
    v44 = vdupq_lane_s8(a8, 0);
    v45 = vdupq_lane_s8(a9, 0);
    do
    {
      v46 = *v43->i8;
      v48[v41++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v43, *v45.i8), *v42.i8, *v44.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v43->i8, v45), v42, v44), 3uLL);
      v43 = (v43 + a2);
      v42 = v46;
    }

    while ((v41 * 16) != 1024);
LABEL_38:
    v40 = v48;
    return sub_277B308D4(v40, 16, a5, a6, a7);
  }

  return sub_277B308D4(a1, a2, a5, a6, a7);
}

uint64_t sub_277A17A64(uint8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v88[31] = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v38 = 0;
      v39 = (a1 + 17);
      do
      {
        v40 = &v87[v38];
        v41 = vrhaddq_u8(*(v39 - 1), *v39);
        *v40 = vrhaddq_u8(*(v39 - 17), v39[-1]);
        v40[1] = v41;
        v38 += 2;
        v39 = (v39 + a2);
      }

      while ((v38 * 16) != 288);
      v42 = v87[0];
      v43 = v88;
      v44 = 32;
      do
      {
        v45 = &v86[v44];
        v47 = v43[-2];
        v46 = v43[-1];
        v48 = *v43;
        v43 += 2;
        v45[-2] = vrhaddq_u8(v42, v46);
        v45[-1] = vrhaddq_u8(v47, v48);
        v44 += 32;
        v42 = v46;
      }

      while (v44 != 288);
    }

    else
    {
      v10 = 0;
      v11 = (a1 + 17);
      if (!a4)
      {
        do
        {
          v12 = &v87[v10];
          v13 = vrhaddq_u8(*(v11 - 1), *v11);
          *v12 = vrhaddq_u8(*(v11 - 17), v11[-1]);
          v12[1] = v13;
          v10 += 2;
          v11 = (v11 + a2);
        }

        while ((v10 * 16) != 256);
        goto LABEL_37;
      }

      do
      {
        v14 = &v87[v10];
        v15 = vrhaddq_u8(*(v11 - 17), v11[-1]);
        v16 = vrhaddq_u8(*(v11 - 1), *v11);
        *v14 = v15;
        v14[1] = v16;
        v10 += 2;
        v11 = (v11 + a2);
      }

      while ((v10 * 16) != 288);
      v17 = 8;
      v15.i32[0] = 8 - a4;
      v16.i32[0] = a4;
      v18 = v87;
      v19 = v86;
      v20 = vdupq_lane_s8(*v15.i8, 0);
      v21 = vdupq_lane_s8(*v16.i8, 0);
      do
      {
        v22 = 0;
        v23 = 1;
        do
        {
          v24 = v23;
          *&v19[v22 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v18[v22 + 2], *v21.i8), *&v18[v22], *v20.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v18[v22 + 2], v21), v18[v22], v20), 3uLL);
          v22 = 1;
          v23 = 0;
        }

        while ((v24 & 1) != 0);
        v18 += 2;
        v19 += 32;
        --v17;
      }

      while (v17);
    }

LABEL_53:
    v56 = v86;
    return sub_277B307DC(v56, 32, a5, a6, a7);
  }

  if (a3)
  {
    v25 = 8;
    if (a4 == 4)
    {
      a8.i32[0] = 8 - a3;
      a9.i32[0] = a3;
      v57 = v87;
      v58 = 9;
      v59 = vdupq_lane_s8(a8, 0);
      v60 = vdupq_lane_s8(a9, 0);
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v57[v61] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v61].i8[1], *v60.i8), *a1[v61].i8, *v59.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v61] + 1), v60), a1[v61], v59), 3uLL);
          v61 = 1;
          v62 = 0;
        }

        while ((v63 & 1) != 0);
        a1 = (a1 + a2);
        v57 += 2;
        --v58;
      }

      while (v58);
      v64 = v87[0];
      v65 = v88;
      v66 = 32;
      do
      {
        v67 = &v86[v66];
        v69 = v65[-2];
        v68 = v65[-1];
        v70 = *v65;
        v65 += 2;
        v67[-2] = vrhaddq_u8(v64, v68);
        v67[-1] = vrhaddq_u8(v69, v70);
        v66 += 32;
        v64 = v68;
      }

      while (v66 != 288);
    }

    else
    {
      if (!a4)
      {
        a8.i32[0] = 8 - a3;
        a9.i32[0] = a3;
        v26 = v87;
        v27 = vdupq_lane_s8(a8, 0);
        v28 = vdupq_lane_s8(a9, 0);
        do
        {
          v29 = 0;
          v30 = 1;
          do
          {
            v31 = v30;
            v26[v29] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v29].i8[1], *v28.i8), *a1[v29].i8, *v27.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v29] + 1), v28), a1[v29], v27), 3uLL);
            v29 = 1;
            v30 = 0;
          }

          while ((v31 & 1) != 0);
          a1 = (a1 + a2);
          v26 += 2;
          --v25;
        }

        while (v25);
        goto LABEL_37;
      }

      a8.i32[0] = 8 - a3;
      a9.i32[0] = a3;
      v71 = v87;
      v72 = 9;
      v73 = vdupq_lane_s8(a8, 0);
      v74 = vdupq_lane_s8(a9, 0);
      do
      {
        v75 = 0;
        v76 = 1;
        do
        {
          v77 = v76;
          v71[v75] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v75].i8[1], *v74.i8), *a1[v75].i8, *v73.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v75] + 1), v74), a1[v75], v73), 3uLL);
          v75 = 1;
          v76 = 0;
        }

        while ((v77 & 1) != 0);
        a1 = (a1 + a2);
        v71 += 2;
        --v72;
      }

      while (v72);
      v78 = 8;
      v73.i32[0] = 8 - a4;
      v74.i32[0] = a4;
      v79 = v87;
      v80 = v86;
      v81 = vdupq_lane_s8(*v73.i8, 0);
      v82 = vdupq_lane_s8(*v74.i8, 0);
      do
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = v84;
          *&v80[v83 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v79[v83 + 2], *v82.i8), *&v79[v83], *v81.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v79[v83 + 2], v82), v79[v83], v81), 3uLL);
          v83 = 1;
          v84 = 0;
        }

        while ((v85 & 1) != 0);
        v79 += 2;
        v80 += 32;
        --v78;
      }

      while (v78);
    }

    goto LABEL_53;
  }

  if (a4 == 4)
  {
    v32 = 0;
    v33 = *a1;
    do
    {
      v34 = &v87[v32];
      v35 = a1[1];
      a1 = (a1 + a2);
      v36 = *a1;
      v37 = vrhaddq_u8(v35, a1[1]);
      *v34 = vrhaddq_u8(v33, *a1);
      v34[1] = v37;
      v32 += 2;
      v33 = v36;
    }

    while ((v32 * 16) != 256);
LABEL_37:
    v56 = v87;
    return sub_277B307DC(v56, 32, a5, a6, a7);
  }

  if (a4)
  {
    v49 = 8;
    a8.i32[0] = 8 - a4;
    a9.i32[0] = a4;
    v50 = v87;
    v51 = vdupq_lane_s8(a8, 0);
    v52 = vdupq_lane_s8(a9, 0);
    do
    {
      v53 = 0;
      v54 = 1;
      do
      {
        v55 = v54;
        v50[v53] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v53].i8[a2], *v52.i8), *a1[v53].i8, *v51.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v53] + a2), v52), a1[v53], v51), 3uLL);
        v53 = 1;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      a1 = (a1 + a2);
      v50 += 2;
      --v49;
    }

    while (v49);
    goto LABEL_37;
  }

  return sub_277B307DC(a1, a2, a5, a6, a7);
}

uint64_t sub_277A17F54(uint8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v86[63] = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v38 = 0;
      v39 = (a1 + 17);
      do
      {
        v40 = &v85[v38];
        v41 = vrhaddq_u8(*(v39 - 1), *v39);
        *v40 = vrhaddq_u8(*(v39 - 17), v39[-1]);
        v40[1] = v41;
        v38 += 2;
        v39 = (v39 + a2);
      }

      while ((v38 * 16) != 544);
      v42 = v85[0];
      v43 = v86;
      v44 = 32;
      do
      {
        v45 = &v84[v44];
        v47 = v43[-2];
        v46 = v43[-1];
        v48 = *v43;
        v43 += 2;
        v45[-2] = vrhaddq_u8(v42, v46);
        v45[-1] = vrhaddq_u8(v47, v48);
        v44 += 32;
        v42 = v46;
      }

      while (v44 != 544);
    }

    else
    {
      v10 = 0;
      v11 = (a1 + 17);
      if (!a4)
      {
        do
        {
          v12 = &v85[v10];
          v13 = vrhaddq_u8(*(v11 - 1), *v11);
          *v12 = vrhaddq_u8(*(v11 - 17), v11[-1]);
          v12[1] = v13;
          v10 += 2;
          v11 = (v11 + a2);
        }

        while ((v10 * 16) != 512);
        goto LABEL_37;
      }

      do
      {
        v14 = &v85[v10];
        v15 = vrhaddq_u8(*(v11 - 17), v11[-1]);
        v16 = vrhaddq_u8(*(v11 - 1), *v11);
        *v14 = v15;
        v14[1] = v16;
        v10 += 2;
        v11 = (v11 + a2);
      }

      while ((v10 * 16) != 544);
      v15.i32[0] = 8 - a4;
      v16.i32[0] = a4;
      v17 = v85;
      v18 = v84;
      v19 = 16;
      v20 = vdupq_lane_s8(*v15.i8, 0);
      v21 = vdupq_lane_s8(*v16.i8, 0);
      do
      {
        v22 = 0;
        v23 = 1;
        do
        {
          v24 = v23;
          *&v18[v22 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v17[v22 + 2], *v21.i8), *&v17[v22], *v20.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v17[v22 + 2], v21), v17[v22], v20), 3uLL);
          v22 = 1;
          v23 = 0;
        }

        while ((v24 & 1) != 0);
        v17 += 2;
        v18 += 32;
        --v19;
      }

      while (v19);
    }

LABEL_53:
    v56 = v84;
    return sub_277B2FE20(v56, 32, a5, a6, a7);
  }

  if (a3)
  {
    a8.i32[0] = 8 - a3;
    a9.i32[0] = a3;
    v25 = v85;
    if (a4 == 4)
    {
      v57 = 17;
      v58 = vdupq_lane_s8(a8, 0);
      v59 = vdupq_lane_s8(a9, 0);
      do
      {
        v60 = 0;
        v61 = 1;
        do
        {
          v62 = v61;
          v25[v60] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v60].i8[1], *v59.i8), *a1[v60].i8, *v58.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v60] + 1), v59), a1[v60], v58), 3uLL);
          v60 = 1;
          v61 = 0;
        }

        while ((v62 & 1) != 0);
        a1 = (a1 + a2);
        v25 += 2;
        --v57;
      }

      while (v57);
      v63 = v85[0];
      v64 = v86;
      v65 = 32;
      do
      {
        v66 = &v84[v65];
        v68 = v64[-2];
        v67 = v64[-1];
        v69 = *v64;
        v64 += 2;
        v66[-2] = vrhaddq_u8(v63, v67);
        v66[-1] = vrhaddq_u8(v68, v69);
        v65 += 32;
        v63 = v67;
      }

      while (v65 != 544);
    }

    else
    {
      if (!a4)
      {
        v26 = 16;
        v27 = vdupq_lane_s8(a8, 0);
        v28 = vdupq_lane_s8(a9, 0);
        do
        {
          v29 = 0;
          v30 = 1;
          do
          {
            v31 = v30;
            v25[v29] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v29].i8[1], *v28.i8), *a1[v29].i8, *v27.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v29] + 1), v28), a1[v29], v27), 3uLL);
            v29 = 1;
            v30 = 0;
          }

          while ((v31 & 1) != 0);
          a1 = (a1 + a2);
          v25 += 2;
          --v26;
        }

        while (v26);
        goto LABEL_37;
      }

      v70 = 17;
      v71 = vdupq_lane_s8(a8, 0);
      v72 = vdupq_lane_s8(a9, 0);
      do
      {
        v73 = 0;
        v74 = 1;
        do
        {
          v75 = v74;
          v25[v73] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v73].i8[1], *v72.i8), *a1[v73].i8, *v71.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v73] + 1), v72), a1[v73], v71), 3uLL);
          v73 = 1;
          v74 = 0;
        }

        while ((v75 & 1) != 0);
        a1 = (a1 + a2);
        v25 += 2;
        --v70;
      }

      while (v70);
      v71.i32[0] = 8 - a4;
      v72.i32[0] = a4;
      v76 = v85;
      v77 = v84;
      v78 = 16;
      v79 = vdupq_lane_s8(*v71.i8, 0);
      v80 = vdupq_lane_s8(*v72.i8, 0);
      do
      {
        v81 = 0;
        v82 = 1;
        do
        {
          v83 = v82;
          *&v77[v81 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v76[v81 + 2], *v80.i8), *&v76[v81], *v79.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v76[v81 + 2], v80), v76[v81], v79), 3uLL);
          v81 = 1;
          v82 = 0;
        }

        while ((v83 & 1) != 0);
        v76 += 2;
        v77 += 32;
        --v78;
      }

      while (v78);
    }

    goto LABEL_53;
  }

  if (a4 == 4)
  {
    v32 = 0;
    v33 = *a1;
    do
    {
      v34 = &v85[v32];
      v35 = a1[1];
      a1 = (a1 + a2);
      v36 = *a1;
      v37 = vrhaddq_u8(v35, a1[1]);
      *v34 = vrhaddq_u8(v33, *a1);
      v34[1] = v37;
      v32 += 2;
      v33 = v36;
    }

    while ((v32 * 16) != 512);
LABEL_37:
    v56 = v85;
    return sub_277B2FE20(v56, 32, a5, a6, a7);
  }

  if (a4)
  {
    a8.i32[0] = 8 - a4;
    a9.i32[0] = a4;
    v49 = v85;
    v50 = 16;
    v51 = vdupq_lane_s8(a8, 0);
    v52 = vdupq_lane_s8(a9, 0);
    do
    {
      v53 = 0;
      v54 = 1;
      do
      {
        v55 = v54;
        v49[v53] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v53].i8[a2], *v52.i8), *a1[v53].i8, *v51.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v53] + a2), v52), a1[v53], v51), 3uLL);
        v53 = 1;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      a1 = (a1 + a2);
      v49 += 2;
      --v50;
    }

    while (v50);
    goto LABEL_37;
  }

  return sub_277B2FE20(a1, a2, a5, a6, a7);
}

uint64_t sub_277A1842C(uint8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v86[127] = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v38 = 0;
      v39 = (a1 + 17);
      do
      {
        v40 = &v85[v38];
        v41 = vrhaddq_u8(*(v39 - 1), *v39);
        *v40 = vrhaddq_u8(*(v39 - 17), v39[-1]);
        v40[1] = v41;
        v38 += 2;
        v39 = (v39 + a2);
      }

      while ((v38 * 16) != 1056);
      v42 = v85[0];
      v43 = v86;
      v44 = 32;
      do
      {
        v45 = &v84[v44];
        v47 = v43[-2];
        v46 = v43[-1];
        v48 = *v43;
        v43 += 2;
        v45[-2] = vrhaddq_u8(v42, v46);
        v45[-1] = vrhaddq_u8(v47, v48);
        v44 += 32;
        v42 = v46;
      }

      while (v44 != 1056);
    }

    else
    {
      v10 = 0;
      v11 = (a1 + 17);
      if (!a4)
      {
        do
        {
          v12 = &v85[v10];
          v13 = vrhaddq_u8(*(v11 - 1), *v11);
          *v12 = vrhaddq_u8(*(v11 - 17), v11[-1]);
          v12[1] = v13;
          v10 += 2;
          v11 = (v11 + a2);
        }

        while ((v10 * 16) != 1024);
        goto LABEL_37;
      }

      do
      {
        v14 = &v85[v10];
        v15 = vrhaddq_u8(*(v11 - 17), v11[-1]);
        v16 = vrhaddq_u8(*(v11 - 1), *v11);
        *v14 = v15;
        v14[1] = v16;
        v10 += 2;
        v11 = (v11 + a2);
      }

      while ((v10 * 16) != 1056);
      v15.i32[0] = 8 - a4;
      v16.i32[0] = a4;
      v17 = v85;
      v18 = v84;
      v19 = 32;
      v20 = vdupq_lane_s8(*v15.i8, 0);
      v21 = vdupq_lane_s8(*v16.i8, 0);
      do
      {
        v22 = 0;
        v23 = 1;
        do
        {
          v24 = v23;
          *&v18[v22 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v17[v22 + 2], *v21.i8), *&v17[v22], *v20.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v17[v22 + 2], v21), v17[v22], v20), 3uLL);
          v22 = 1;
          v23 = 0;
        }

        while ((v24 & 1) != 0);
        v17 += 2;
        v18 += 32;
        --v19;
      }

      while (v19);
    }

LABEL_53:
    v56 = v84;
    return sub_277B2FF18(v56, 32, a5, a6, a7);
  }

  if (a3)
  {
    a8.i32[0] = 8 - a3;
    a9.i32[0] = a3;
    v25 = v85;
    if (a4 == 4)
    {
      v57 = 33;
      v58 = vdupq_lane_s8(a8, 0);
      v59 = vdupq_lane_s8(a9, 0);
      do
      {
        v60 = 0;
        v61 = 1;
        do
        {
          v62 = v61;
          v25[v60] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v60].i8[1], *v59.i8), *a1[v60].i8, *v58.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v60] + 1), v59), a1[v60], v58), 3uLL);
          v60 = 1;
          v61 = 0;
        }

        while ((v62 & 1) != 0);
        a1 = (a1 + a2);
        v25 += 2;
        --v57;
      }

      while (v57);
      v63 = v85[0];
      v64 = v86;
      v65 = 32;
      do
      {
        v66 = &v84[v65];
        v68 = v64[-2];
        v67 = v64[-1];
        v69 = *v64;
        v64 += 2;
        v66[-2] = vrhaddq_u8(v63, v67);
        v66[-1] = vrhaddq_u8(v68, v69);
        v65 += 32;
        v63 = v67;
      }

      while (v65 != 1056);
    }

    else
    {
      if (!a4)
      {
        v26 = 32;
        v27 = vdupq_lane_s8(a8, 0);
        v28 = vdupq_lane_s8(a9, 0);
        do
        {
          v29 = 0;
          v30 = 1;
          do
          {
            v31 = v30;
            v25[v29] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v29].i8[1], *v28.i8), *a1[v29].i8, *v27.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v29] + 1), v28), a1[v29], v27), 3uLL);
            v29 = 1;
            v30 = 0;
          }

          while ((v31 & 1) != 0);
          a1 = (a1 + a2);
          v25 += 2;
          --v26;
        }

        while (v26);
        goto LABEL_37;
      }

      v70 = 33;
      v71 = vdupq_lane_s8(a8, 0);
      v72 = vdupq_lane_s8(a9, 0);
      do
      {
        v73 = 0;
        v74 = 1;
        do
        {
          v75 = v74;
          v25[v73] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v73].i8[1], *v72.i8), *a1[v73].i8, *v71.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v73] + 1), v72), a1[v73], v71), 3uLL);
          v73 = 1;
          v74 = 0;
        }

        while ((v75 & 1) != 0);
        a1 = (a1 + a2);
        v25 += 2;
        --v70;
      }

      while (v70);
      v71.i32[0] = 8 - a4;
      v72.i32[0] = a4;
      v76 = v85;
      v77 = v84;
      v78 = 32;
      v79 = vdupq_lane_s8(*v71.i8, 0);
      v80 = vdupq_lane_s8(*v72.i8, 0);
      do
      {
        v81 = 0;
        v82 = 1;
        do
        {
          v83 = v82;
          *&v77[v81 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v76[v81 + 2], *v80.i8), *&v76[v81], *v79.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v76[v81 + 2], v80), v76[v81], v79), 3uLL);
          v81 = 1;
          v82 = 0;
        }

        while ((v83 & 1) != 0);
        v76 += 2;
        v77 += 32;
        --v78;
      }

      while (v78);
    }

    goto LABEL_53;
  }

  if (a4 == 4)
  {
    v32 = 0;
    v33 = *a1;
    do
    {
      v34 = &v85[v32];
      v35 = a1[1];
      a1 = (a1 + a2);
      v36 = *a1;
      v37 = vrhaddq_u8(v35, a1[1]);
      *v34 = vrhaddq_u8(v33, *a1);
      v34[1] = v37;
      v32 += 2;
      v33 = v36;
    }

    while ((v32 * 16) != 1024);
LABEL_37:
    v56 = v85;
    return sub_277B2FF18(v56, 32, a5, a6, a7);
  }

  if (a4)
  {
    a8.i32[0] = 8 - a4;
    a9.i32[0] = a4;
    v49 = v85;
    v50 = 32;
    v51 = vdupq_lane_s8(a8, 0);
    v52 = vdupq_lane_s8(a9, 0);
    do
    {
      v53 = 0;
      v54 = 1;
      do
      {
        v55 = v54;
        v49[v53] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v53].i8[a2], *v52.i8), *a1[v53].i8, *v51.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v53] + a2), v52), a1[v53], v51), 3uLL);
        v53 = 1;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      a1 = (a1 + a2);
      v49 += 2;
      --v50;
    }

    while (v50);
    goto LABEL_37;
  }

  return sub_277B2FF18(a1, a2, a5, a6, a7);
}

uint64_t sub_277A18904()
{
  v0 = MEMORY[0x28223BE20]();
  v86[255] = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v38 = 0;
      v39 = (v0 + 17);
      do
      {
        v40 = &v85[v38];
        v41 = vrhaddq_u8(*(v39 - 1), *v39);
        *v40 = vrhaddq_u8(*(v39 - 17), v39[-1]);
        v40[1] = v41;
        v38 += 2;
        v39 = (v39 + v1);
      }

      while ((v38 * 16) != 2080);
      v42 = v85[0];
      v43 = v86;
      v44 = 32;
      do
      {
        v45 = &v84[v44];
        v47 = v43[-2];
        v46 = v43[-1];
        v48 = *v43;
        v43 += 2;
        v45[-2] = vrhaddq_u8(v42, v46);
        v45[-1] = vrhaddq_u8(v47, v48);
        v44 += 32;
        v42 = v46;
      }

      while (v44 != 2080);
    }

    else
    {
      v10 = 0;
      v11 = (v0 + 17);
      if (!v3)
      {
        do
        {
          v12 = &v85[v10];
          v13 = vrhaddq_u8(*(v11 - 1), *v11);
          *v12 = vrhaddq_u8(*(v11 - 17), v11[-1]);
          v12[1] = v13;
          v10 += 2;
          v11 = (v11 + v1);
        }

        while ((v10 * 16) != 2048);
        goto LABEL_37;
      }

      do
      {
        v14 = &v85[v10];
        v15 = vrhaddq_u8(*(v11 - 17), v11[-1]);
        v16 = vrhaddq_u8(*(v11 - 1), *v11);
        *v14 = v15;
        v14[1] = v16;
        v10 += 2;
        v11 = (v11 + v1);
      }

      while ((v10 * 16) != 2080);
      v15.i32[0] = 8 - v3;
      v16.i32[0] = v3;
      v17 = v85;
      v18 = v84;
      v19 = 64;
      v20 = vdupq_lane_s8(*v15.i8, 0);
      v21 = vdupq_lane_s8(*v16.i8, 0);
      do
      {
        v22 = 0;
        v23 = 1;
        do
        {
          v24 = v23;
          *&v18[v22 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v17[v22 + 2], *v21.i8), *&v17[v22], *v20.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v17[v22 + 2], v21), v17[v22], v20), 3uLL);
          v22 = 1;
          v23 = 0;
        }

        while ((v24 & 1) != 0);
        v17 += 2;
        v18 += 32;
        --v19;
      }

      while (v19);
    }

LABEL_53:
    v56 = v84;
    return sub_277B30010(v56, 32, v4, v5, v6);
  }

  if (v2)
  {
    v7.i32[0] = 8 - v2;
    v8.i32[0] = v2;
    v25 = v85;
    if (v3 == 4)
    {
      v57 = 65;
      v58 = vdupq_lane_s8(v7, 0);
      v59 = vdupq_lane_s8(v8, 0);
      do
      {
        v60 = 0;
        v61 = 1;
        do
        {
          v62 = v61;
          v25[v60] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v60].i8[1], *v59.i8), *v0[v60].i8, *v58.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v60] + 1), v59), v0[v60], v58), 3uLL);
          v60 = 1;
          v61 = 0;
        }

        while ((v62 & 1) != 0);
        v0 = (v0 + v1);
        v25 += 2;
        --v57;
      }

      while (v57);
      v63 = v85[0];
      v64 = v86;
      v65 = 32;
      do
      {
        v66 = &v84[v65];
        v68 = v64[-2];
        v67 = v64[-1];
        v69 = *v64;
        v64 += 2;
        v66[-2] = vrhaddq_u8(v63, v67);
        v66[-1] = vrhaddq_u8(v68, v69);
        v65 += 32;
        v63 = v67;
      }

      while (v65 != 2080);
    }

    else
    {
      if (!v3)
      {
        v26 = 64;
        v27 = vdupq_lane_s8(v7, 0);
        v28 = vdupq_lane_s8(v8, 0);
        do
        {
          v29 = 0;
          v30 = 1;
          do
          {
            v31 = v30;
            v25[v29] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v29].i8[1], *v28.i8), *v0[v29].i8, *v27.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v29] + 1), v28), v0[v29], v27), 3uLL);
            v29 = 1;
            v30 = 0;
          }

          while ((v31 & 1) != 0);
          v0 = (v0 + v1);
          v25 += 2;
          --v26;
        }

        while (v26);
        goto LABEL_37;
      }

      v70 = 65;
      v71 = vdupq_lane_s8(v7, 0);
      v72 = vdupq_lane_s8(v8, 0);
      do
      {
        v73 = 0;
        v74 = 1;
        do
        {
          v75 = v74;
          v25[v73] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v73].i8[1], *v72.i8), *v0[v73].i8, *v71.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v73] + 1), v72), v0[v73], v71), 3uLL);
          v73 = 1;
          v74 = 0;
        }

        while ((v75 & 1) != 0);
        v0 = (v0 + v1);
        v25 += 2;
        --v70;
      }

      while (v70);
      v71.i32[0] = 8 - v3;
      v72.i32[0] = v3;
      v76 = v85;
      v77 = v84;
      v78 = 64;
      v79 = vdupq_lane_s8(*v71.i8, 0);
      v80 = vdupq_lane_s8(*v72.i8, 0);
      do
      {
        v81 = 0;
        v82 = 1;
        do
        {
          v83 = v82;
          *&v77[v81 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v76[v81 + 2], *v80.i8), *&v76[v81], *v79.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v76[v81 + 2], v80), v76[v81], v79), 3uLL);
          v81 = 1;
          v82 = 0;
        }

        while ((v83 & 1) != 0);
        v76 += 2;
        v77 += 32;
        --v78;
      }

      while (v78);
    }

    goto LABEL_53;
  }

  if (v3 == 4)
  {
    v32 = 0;
    v33 = *v0;
    do
    {
      v34 = &v85[v32];
      v35 = v0[1];
      v0 = (v0 + v1);
      v36 = *v0;
      v37 = vrhaddq_u8(v35, v0[1]);
      *v34 = vrhaddq_u8(v33, *v0);
      v34[1] = v37;
      v32 += 2;
      v33 = v36;
    }

    while ((v32 * 16) != 2048);
LABEL_37:
    v56 = v85;
    return sub_277B30010(v56, 32, v4, v5, v6);
  }

  if (v3)
  {
    v7.i32[0] = 8 - v3;
    v8.i32[0] = v3;
    v49 = v85;
    v50 = 64;
    v51 = vdupq_lane_s8(v7, 0);
    v52 = vdupq_lane_s8(v8, 0);
    do
    {
      v53 = 0;
      v54 = 1;
      do
      {
        v55 = v54;
        v49[v53] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v53].i8[v1], *v52.i8), *v0[v53].i8, *v51.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v53] + v1), v52), v0[v53], v51), 3uLL);
        v53 = 1;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      v0 = (v0 + v1);
      v49 += 2;
      --v50;
    }

    while (v50);
    goto LABEL_37;
  }

  return sub_277B30010(v0, v1, v4, v5, v6);
}

uint64_t sub_277A18DFC(int8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, int *a7, int8x8_t a8, int8x8_t a9)
{
  v66 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v10 = v65;
    if (a4 == 4)
    {
      v23 = 17;
      do
      {
        v24 = 0;
        do
        {
          *&v10[v24 * 16] = vrhaddq_u8(a1[v24], *(&a1[v24] + 1));
          v13 = v24++ >= 3;
        }

        while (!v13);
        a1 = (a1 + a2);
        v10 += 64;
        --v23;
      }

      while (v23);
      v25 = v65;
      v26 = v64;
      v27 = 16;
      do
      {
        v28 = 0;
        do
        {
          *&v26[v28] = vrhaddq_u8(*&v25[v28], *&v25[v28 + 64]);
          v13 = v28 >= 0x30;
          v28 += 16;
        }

        while (!v13);
        v25 += 64;
        v26 += 64;
        --v27;
      }

      while (v27);
    }

    else
    {
      if (!a4)
      {
        v11 = 16;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12 * 16] = vrhaddq_u8(a1[v12], *(&a1[v12] + 1));
            v13 = v12++ >= 3;
          }

          while (!v13);
          a1 = (a1 + a2);
          v10 += 64;
          --v11;
        }

        while (v11);
        goto LABEL_46;
      }

      v36 = 17;
      do
      {
        v37 = 0;
        do
        {
          v38 = *(&a1[v37] + 1);
          v39 = vrhaddq_u8(a1[v37], v38);
          *&v10[v37 * 16] = v39;
          v13 = v37++ >= 3;
        }

        while (!v13);
        a1 = (a1 + a2);
        v10 += 64;
        --v36;
      }

      while (v36);
      v39.i32[0] = 8 - a4;
      v38.i32[0] = a4;
      v40 = v65;
      v41 = v64;
      v42 = 16;
      v43 = vdupq_lane_s8(*v39.i8, 0);
      v44 = vdupq_lane_s8(*v38.i8, 0);
      do
      {
        v45 = 0;
        do
        {
          *&v41[v45] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v40[v45 + 64], *v44.i8), *&v40[v45], *v43.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v40[v45 + 64], v44), *&v40[v45], v43), 3uLL);
          v13 = v45 >= 0x30;
          v45 += 16;
        }

        while (!v13);
        v40 += 64;
        v41 += 64;
        --v42;
      }

      while (v42);
    }

    goto LABEL_79;
  }

  if (a3)
  {
    a8.i32[0] = 8 - a3;
    a9.i32[0] = a3;
    v14 = v65;
    if (a4 == 4)
    {
      v46 = 17;
      v47 = vdupq_lane_s8(a8, 0);
      v48 = vdupq_lane_s8(a9, 0);
      do
      {
        v49 = 0;
        do
        {
          *&v14[v49 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v49].i8[1], *v48.i8), *a1[v49].i8, *v47.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v49] + 1), v48), a1[v49], v47), 3uLL);
          v13 = v49++ >= 3;
        }

        while (!v13);
        a1 = (a1 + a2);
        v14 += 64;
        --v46;
      }

      while (v46);
      v50 = v65;
      v51 = v64;
      v52 = 16;
      do
      {
        v53 = 0;
        do
        {
          *&v51[v53] = vrhaddq_u8(*&v50[v53], *&v50[v53 + 64]);
          v13 = v53 >= 0x30;
          v53 += 16;
        }

        while (!v13);
        v50 += 64;
        v51 += 64;
        --v52;
      }

      while (v52);
    }

    else
    {
      if (!a4)
      {
        v15 = 16;
        v16 = vdupq_lane_s8(a8, 0);
        v17 = vdupq_lane_s8(a9, 0);
        do
        {
          v18 = 0;
          do
          {
            *&v14[v18 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v18].i8[1], *v17.i8), *a1[v18].i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v18] + 1), v17), a1[v18], v16), 3uLL);
            v13 = v18++ >= 3;
          }

          while (!v13);
          a1 = (a1 + a2);
          v14 += 64;
          --v15;
        }

        while (v15);
        goto LABEL_46;
      }

      v54 = 17;
      v55 = vdupq_lane_s8(a8, 0);
      v56 = vdupq_lane_s8(a9, 0);
      do
      {
        v57 = 0;
        do
        {
          *&v14[v57 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v57].i8[1], *v56.i8), *a1[v57].i8, *v55.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v57] + 1), v56), a1[v57], v55), 3uLL);
          v13 = v57++ >= 3;
        }

        while (!v13);
        a1 = (a1 + a2);
        v14 += 64;
        --v54;
      }

      while (v54);
      v55.i32[0] = 8 - a4;
      v56.i32[0] = a4;
      v58 = v65;
      v59 = v64;
      v60 = 16;
      v61 = vdupq_lane_s8(*v55.i8, 0);
      v62 = vdupq_lane_s8(*v56.i8, 0);
      do
      {
        v63 = 0;
        do
        {
          *&v59[v63] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v58[v63 + 64], *v62.i8), *&v58[v63], *v61.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v58[v63 + 64], v62), *&v58[v63], v61), 3uLL);
          v13 = v63 >= 0x30;
          v63 += 16;
        }

        while (!v13);
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

LABEL_79:
    v35 = v64;
    return sub_277B309B4(v35, 64, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v19 = v65;
    v20 = 16;
    v21 = &a1->i8[a2];
    do
    {
      v22 = 0;
      do
      {
        *&v19[v22 * 16] = vrhaddq_u8(a1[v22], *&v21[v22 * 16]);
        v13 = v22++ >= 3;
      }

      while (!v13);
      a1 = (a1 + a2);
      v19 += 64;
      v21 += a2;
      --v20;
    }

    while (v20);
    goto LABEL_46;
  }

  if (a4)
  {
    a8.i32[0] = 8 - a4;
    a9.i32[0] = a4;
    v29 = &a1->i8[a2];
    v30 = v65;
    v31 = 16;
    v32 = vdupq_lane_s8(a8, 0);
    v33 = vdupq_lane_s8(a9, 0);
    do
    {
      v34 = 0;
      do
      {
        *&v30[v34 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v29[v34 * 16], *v33.i8), *a1[v34].i8, *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v29[v34 * 16], v33), a1[v34], v32), 3uLL);
        v13 = v34++ >= 3;
      }

      while (!v13);
      a1 = (a1 + a2);
      v30 += 64;
      v29 += a2;
      --v31;
    }

    while (v31);
LABEL_46:
    v35 = v65;
    return sub_277B309B4(v35, 64, a5, a6, a7);
  }

  return sub_277B309B4(a1, a2, a5, a6, a7);
}

uint64_t sub_277A192F8()
{
  v0 = MEMORY[0x28223BE20]();
  v66 = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    v10 = v65;
    if (v3 == 4)
    {
      v23 = 33;
      do
      {
        v24 = 0;
        do
        {
          *&v10[v24 * 16] = vrhaddq_u8(v0[v24], *(&v0[v24] + 1));
          v13 = v24++ >= 3;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 64;
        --v23;
      }

      while (v23);
      v25 = v65;
      v26 = v64;
      v27 = 32;
      do
      {
        v28 = 0;
        do
        {
          *&v26[v28] = vrhaddq_u8(*&v25[v28], *&v25[v28 + 64]);
          v13 = v28 >= 0x30;
          v28 += 16;
        }

        while (!v13);
        v25 += 64;
        v26 += 64;
        --v27;
      }

      while (v27);
    }

    else
    {
      if (!v3)
      {
        v11 = 32;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12 * 16] = vrhaddq_u8(v0[v12], *(&v0[v12] + 1));
            v13 = v12++ >= 3;
          }

          while (!v13);
          v0 = (v0 + v1);
          v10 += 64;
          --v11;
        }

        while (v11);
        goto LABEL_46;
      }

      v36 = 33;
      do
      {
        v37 = 0;
        do
        {
          v38 = *(&v0[v37] + 1);
          v39 = vrhaddq_u8(v0[v37], v38);
          *&v10[v37 * 16] = v39;
          v13 = v37++ >= 3;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 64;
        --v36;
      }

      while (v36);
      v39.i32[0] = 8 - v3;
      v38.i32[0] = v3;
      v40 = v65;
      v41 = v64;
      v42 = 32;
      v43 = vdupq_lane_s8(*v39.i8, 0);
      v44 = vdupq_lane_s8(*v38.i8, 0);
      do
      {
        v45 = 0;
        do
        {
          *&v41[v45] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v40[v45 + 64], *v44.i8), *&v40[v45], *v43.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v40[v45 + 64], v44), *&v40[v45], v43), 3uLL);
          v13 = v45 >= 0x30;
          v45 += 16;
        }

        while (!v13);
        v40 += 64;
        v41 += 64;
        --v42;
      }

      while (v42);
    }

    goto LABEL_79;
  }

  if (v2)
  {
    v7.i32[0] = 8 - v2;
    v8.i32[0] = v2;
    v14 = v65;
    if (v3 == 4)
    {
      v46 = 33;
      v47 = vdupq_lane_s8(v7, 0);
      v48 = vdupq_lane_s8(v8, 0);
      do
      {
        v49 = 0;
        do
        {
          *&v14[v49 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v49].i8[1], *v48.i8), *v0[v49].i8, *v47.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v49] + 1), v48), v0[v49], v47), 3uLL);
          v13 = v49++ >= 3;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 64;
        --v46;
      }

      while (v46);
      v50 = v65;
      v51 = v64;
      v52 = 32;
      do
      {
        v53 = 0;
        do
        {
          *&v51[v53] = vrhaddq_u8(*&v50[v53], *&v50[v53 + 64]);
          v13 = v53 >= 0x30;
          v53 += 16;
        }

        while (!v13);
        v50 += 64;
        v51 += 64;
        --v52;
      }

      while (v52);
    }

    else
    {
      if (!v3)
      {
        v15 = 32;
        v16 = vdupq_lane_s8(v7, 0);
        v17 = vdupq_lane_s8(v8, 0);
        do
        {
          v18 = 0;
          do
          {
            *&v14[v18 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v18].i8[1], *v17.i8), *v0[v18].i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v18] + 1), v17), v0[v18], v16), 3uLL);
            v13 = v18++ >= 3;
          }

          while (!v13);
          v0 = (v0 + v1);
          v14 += 64;
          --v15;
        }

        while (v15);
        goto LABEL_46;
      }

      v54 = 33;
      v55 = vdupq_lane_s8(v7, 0);
      v56 = vdupq_lane_s8(v8, 0);
      do
      {
        v57 = 0;
        do
        {
          *&v14[v57 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v57].i8[1], *v56.i8), *v0[v57].i8, *v55.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v57] + 1), v56), v0[v57], v55), 3uLL);
          v13 = v57++ >= 3;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 64;
        --v54;
      }

      while (v54);
      v55.i32[0] = 8 - v3;
      v56.i32[0] = v3;
      v58 = v65;
      v59 = v64;
      v60 = 32;
      v61 = vdupq_lane_s8(*v55.i8, 0);
      v62 = vdupq_lane_s8(*v56.i8, 0);
      do
      {
        v63 = 0;
        do
        {
          *&v59[v63] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v58[v63 + 64], *v62.i8), *&v58[v63], *v61.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v58[v63 + 64], v62), *&v58[v63], v61), 3uLL);
          v13 = v63 >= 0x30;
          v63 += 16;
        }

        while (!v13);
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

LABEL_79:
    v35 = v64;
    return sub_277B30108(v35, 64, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v19 = v65;
    v20 = 32;
    v21 = &v0->i8[v1];
    do
    {
      v22 = 0;
      do
      {
        *&v19[v22 * 16] = vrhaddq_u8(v0[v22], *&v21[v22 * 16]);
        v13 = v22++ >= 3;
      }

      while (!v13);
      v0 = (v0 + v1);
      v19 += 64;
      v21 += v1;
      --v20;
    }

    while (v20);
    goto LABEL_46;
  }

  if (v3)
  {
    v7.i32[0] = 8 - v3;
    v8.i32[0] = v3;
    v29 = &v0->i8[v1];
    v30 = v65;
    v31 = 32;
    v32 = vdupq_lane_s8(v7, 0);
    v33 = vdupq_lane_s8(v8, 0);
    do
    {
      v34 = 0;
      do
      {
        *&v30[v34 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v29[v34 * 16], *v33.i8), *v0[v34].i8, *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v29[v34 * 16], v33), v0[v34], v32), 3uLL);
        v13 = v34++ >= 3;
      }

      while (!v13);
      v0 = (v0 + v1);
      v30 += 64;
      v29 += v1;
      --v31;
    }

    while (v31);
LABEL_46:
    v35 = v65;
    return sub_277B30108(v35, 64, v4, v5, v6);
  }

  return sub_277B30108(v0, v1, v4, v5, v6);
}

uint64_t sub_277A19814()
{
  v0 = MEMORY[0x28223BE20]();
  v65[520] = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    v10 = v65;
    if (v3 == 4)
    {
      v23 = 65;
      do
      {
        v24 = 0;
        do
        {
          *&v10[v24 / 8] = vrhaddq_u8(v0[v24 / 0x10], *(&v0[v24 / 0x10] + 1));
          v13 = v24 >= 0x30;
          v24 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 8;
        --v23;
      }

      while (v23);
      v25 = v65;
      v26 = v64;
      v27 = 64;
      do
      {
        v28 = 0;
        do
        {
          *&v26[v28 * 8] = vrhaddq_u8(*&v25[v28], *&v25[v28 + 8]);
          v13 = v28 >= 6;
          v28 += 2;
        }

        while (!v13);
        v25 += 8;
        v26 += 64;
        --v27;
      }

      while (v27);
    }

    else
    {
      if (!v3)
      {
        v11 = 64;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12 / 8] = vrhaddq_u8(v0[v12 / 0x10], *(&v0[v12 / 0x10] + 1));
            v13 = v12 >= 0x30;
            v12 += 16;
          }

          while (!v13);
          v0 = (v0 + v1);
          v10 += 8;
          --v11;
        }

        while (v11);
        goto LABEL_46;
      }

      v36 = 65;
      do
      {
        v37 = 0;
        do
        {
          v38 = *(&v0[v37 / 2] + 1);
          v39 = vrhaddq_u8(v0[v37 / 2], v38);
          *&v10[v37] = v39;
          v13 = v37 >= 6;
          v37 += 2;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 8;
        --v36;
      }

      while (v36);
      v39.i32[0] = 8 - v3;
      v38.i32[0] = v3;
      v40 = v65;
      v41 = v64;
      v42 = 64;
      v43 = vdupq_lane_s8(*v39.i8, 0);
      v44 = vdupq_lane_s8(*v38.i8, 0);
      do
      {
        v45 = 0;
        do
        {
          *&v41[v45 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v40[v45 + 8], *v44.i8), v40[v45], *v43.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v40[v45 + 8], v44), *&v40[v45], v43), 3uLL);
          v13 = v45 >= 6;
          v45 += 2;
        }

        while (!v13);
        v40 += 8;
        v41 += 64;
        --v42;
      }

      while (v42);
    }

    goto LABEL_79;
  }

  if (v2)
  {
    v7.i32[0] = 8 - v2;
    v8.i32[0] = v2;
    v14 = v65;
    if (v3 == 4)
    {
      v46 = 65;
      v47 = vdupq_lane_s8(v7, 0);
      v48 = vdupq_lane_s8(v8, 0);
      do
      {
        v49 = 0;
        do
        {
          *&v14[v49 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v49 / 0x10].i8[1], *v48.i8), *v0[v49 / 0x10].i8, *v47.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v49 / 0x10] + 1), v48), v0[v49 / 0x10], v47), 3uLL);
          v13 = v49 >= 0x30;
          v49 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 8;
        --v46;
      }

      while (v46);
      v50 = v65;
      v51 = v64;
      v52 = 64;
      do
      {
        v53 = 0;
        do
        {
          *&v51[v53 * 8] = vrhaddq_u8(*&v50[v53], *&v50[v53 + 8]);
          v13 = v53 >= 6;
          v53 += 2;
        }

        while (!v13);
        v50 += 8;
        v51 += 64;
        --v52;
      }

      while (v52);
    }

    else
    {
      if (!v3)
      {
        v15 = 64;
        v16 = vdupq_lane_s8(v7, 0);
        v17 = vdupq_lane_s8(v8, 0);
        do
        {
          v18 = 0;
          do
          {
            *&v14[v18 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v18 / 0x10].i8[1], *v17.i8), *v0[v18 / 0x10].i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v18 / 0x10] + 1), v17), v0[v18 / 0x10], v16), 3uLL);
            v13 = v18 >= 0x30;
            v18 += 16;
          }

          while (!v13);
          v0 = (v0 + v1);
          v14 += 8;
          --v15;
        }

        while (v15);
        goto LABEL_46;
      }

      v54 = 65;
      v55 = vdupq_lane_s8(v7, 0);
      v56 = vdupq_lane_s8(v8, 0);
      do
      {
        v57 = 0;
        do
        {
          *&v14[v57 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v57 / 0x10].i8[1], *v56.i8), *v0[v57 / 0x10].i8, *v55.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v57 / 0x10] + 1), v56), v0[v57 / 0x10], v55), 3uLL);
          v13 = v57 >= 0x30;
          v57 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 8;
        --v54;
      }

      while (v54);
      v55.i32[0] = 8 - v3;
      v56.i32[0] = v3;
      v58 = v65;
      v59 = v64;
      v60 = 64;
      v61 = vdupq_lane_s8(*v55.i8, 0);
      v62 = vdupq_lane_s8(*v56.i8, 0);
      do
      {
        v63 = 0;
        do
        {
          *&v59[v63 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v58[v63 + 8], *v62.i8), v58[v63], *v61.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v58[v63 + 8], v62), *&v58[v63], v61), 3uLL);
          v13 = v63 >= 6;
          v63 += 2;
        }

        while (!v13);
        v58 += 8;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

LABEL_79:
    v35 = v64;
    return sub_277B30200(v35, 64, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v19 = v65;
    v20 = 64;
    v21 = &v0->i8[v1];
    do
    {
      v22 = 0;
      do
      {
        *&v19[v22 / 8] = vrhaddq_u8(v0[v22 / 0x10], *&v21[v22]);
        v13 = v22 >= 0x30;
        v22 += 16;
      }

      while (!v13);
      v0 = (v0 + v1);
      v19 += 8;
      v21 += v1;
      --v20;
    }

    while (v20);
    goto LABEL_46;
  }

  if (v3)
  {
    v7.i32[0] = 8 - v3;
    v8.i32[0] = v3;
    v29 = &v0->i8[v1];
    v30 = v65;
    v31 = 64;
    v32 = vdupq_lane_s8(v7, 0);
    v33 = vdupq_lane_s8(v8, 0);
    do
    {
      v34 = 0;
      do
      {
        *&v30[v34 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v29[v34], *v33.i8), *v0[v34 / 0x10].i8, *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v29[v34], v33), v0[v34 / 0x10], v32), 3uLL);
        v13 = v34 >= 0x30;
        v34 += 16;
      }

      while (!v13);
      v0 = (v0 + v1);
      v30 += 8;
      v29 += v1;
      --v31;
    }

    while (v31);
LABEL_46:
    v35 = v65;
    return sub_277B30200(v35, 64, v4, v5, v6);
  }

  return sub_277B30200(v0, v1, v4, v5, v6);
}

uint64_t sub_277A19D54()
{
  v0 = MEMORY[0x28223BE20]();
  v65[1032] = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    v10 = v65;
    if (v3 == 4)
    {
      v23 = 129;
      do
      {
        v24 = 0;
        do
        {
          *&v10[v24 / 8] = vrhaddq_u8(v0[v24 / 0x10], *(&v0[v24 / 0x10] + 1));
          v13 = v24 >= 0x30;
          v24 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 8;
        --v23;
      }

      while (v23);
      v25 = v65;
      v26 = v64;
      v27 = 128;
      do
      {
        v28 = 0;
        do
        {
          *&v26[v28 * 8] = vrhaddq_u8(*&v25[v28], *&v25[v28 + 8]);
          v13 = v28 >= 6;
          v28 += 2;
        }

        while (!v13);
        v25 += 8;
        v26 += 64;
        --v27;
      }

      while (v27);
    }

    else
    {
      if (!v3)
      {
        v11 = 128;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12 / 8] = vrhaddq_u8(v0[v12 / 0x10], *(&v0[v12 / 0x10] + 1));
            v13 = v12 >= 0x30;
            v12 += 16;
          }

          while (!v13);
          v0 = (v0 + v1);
          v10 += 8;
          --v11;
        }

        while (v11);
        goto LABEL_46;
      }

      v36 = 129;
      do
      {
        v37 = 0;
        do
        {
          v38 = *(&v0[v37 / 2] + 1);
          v39 = vrhaddq_u8(v0[v37 / 2], v38);
          *&v10[v37] = v39;
          v13 = v37 >= 6;
          v37 += 2;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 8;
        --v36;
      }

      while (v36);
      v39.i32[0] = 8 - v3;
      v38.i32[0] = v3;
      v40 = v65;
      v41 = v64;
      v42 = 128;
      v43 = vdupq_lane_s8(*v39.i8, 0);
      v44 = vdupq_lane_s8(*v38.i8, 0);
      do
      {
        v45 = 0;
        do
        {
          *&v41[v45 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v40[v45 + 8], *v44.i8), v40[v45], *v43.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v40[v45 + 8], v44), *&v40[v45], v43), 3uLL);
          v13 = v45 >= 6;
          v45 += 2;
        }

        while (!v13);
        v40 += 8;
        v41 += 64;
        --v42;
      }

      while (v42);
    }

    goto LABEL_79;
  }

  if (v2)
  {
    v7.i32[0] = 8 - v2;
    v8.i32[0] = v2;
    v14 = v65;
    if (v3 == 4)
    {
      v46 = 129;
      v47 = vdupq_lane_s8(v7, 0);
      v48 = vdupq_lane_s8(v8, 0);
      do
      {
        v49 = 0;
        do
        {
          *&v14[v49 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v49 / 0x10].i8[1], *v48.i8), *v0[v49 / 0x10].i8, *v47.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v49 / 0x10] + 1), v48), v0[v49 / 0x10], v47), 3uLL);
          v13 = v49 >= 0x30;
          v49 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 8;
        --v46;
      }

      while (v46);
      v50 = v65;
      v51 = v64;
      v52 = 128;
      do
      {
        v53 = 0;
        do
        {
          *&v51[v53 * 8] = vrhaddq_u8(*&v50[v53], *&v50[v53 + 8]);
          v13 = v53 >= 6;
          v53 += 2;
        }

        while (!v13);
        v50 += 8;
        v51 += 64;
        --v52;
      }

      while (v52);
    }

    else
    {
      if (!v3)
      {
        v15 = 128;
        v16 = vdupq_lane_s8(v7, 0);
        v17 = vdupq_lane_s8(v8, 0);
        do
        {
          v18 = 0;
          do
          {
            *&v14[v18 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v18 / 0x10].i8[1], *v17.i8), *v0[v18 / 0x10].i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v18 / 0x10] + 1), v17), v0[v18 / 0x10], v16), 3uLL);
            v13 = v18 >= 0x30;
            v18 += 16;
          }

          while (!v13);
          v0 = (v0 + v1);
          v14 += 8;
          --v15;
        }

        while (v15);
        goto LABEL_46;
      }

      v54 = 129;
      v55 = vdupq_lane_s8(v7, 0);
      v56 = vdupq_lane_s8(v8, 0);
      do
      {
        v57 = 0;
        do
        {
          *&v14[v57 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v57 / 0x10].i8[1], *v56.i8), *v0[v57 / 0x10].i8, *v55.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v57 / 0x10] + 1), v56), v0[v57 / 0x10], v55), 3uLL);
          v13 = v57 >= 0x30;
          v57 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 8;
        --v54;
      }

      while (v54);
      v55.i32[0] = 8 - v3;
      v56.i32[0] = v3;
      v58 = v65;
      v59 = v64;
      v60 = 128;
      v61 = vdupq_lane_s8(*v55.i8, 0);
      v62 = vdupq_lane_s8(*v56.i8, 0);
      do
      {
        v63 = 0;
        do
        {
          *&v59[v63 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v58[v63 + 8], *v62.i8), v58[v63], *v61.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v58[v63 + 8], v62), *&v58[v63], v61), 3uLL);
          v13 = v63 >= 6;
          v63 += 2;
        }

        while (!v13);
        v58 += 8;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

LABEL_79:
    v35 = v64;
    return sub_277B302F8(v35, 64, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v19 = v65;
    v20 = 128;
    v21 = &v0->i8[v1];
    do
    {
      v22 = 0;
      do
      {
        *&v19[v22 / 8] = vrhaddq_u8(v0[v22 / 0x10], *&v21[v22]);
        v13 = v22 >= 0x30;
        v22 += 16;
      }

      while (!v13);
      v0 = (v0 + v1);
      v19 += 8;
      v21 += v1;
      --v20;
    }

    while (v20);
    goto LABEL_46;
  }

  if (v3)
  {
    v7.i32[0] = 8 - v3;
    v8.i32[0] = v3;
    v29 = &v0->i8[v1];
    v30 = v65;
    v31 = 128;
    v32 = vdupq_lane_s8(v7, 0);
    v33 = vdupq_lane_s8(v8, 0);
    do
    {
      v34 = 0;
      do
      {
        *&v30[v34 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v29[v34], *v33.i8), *v0[v34 / 0x10].i8, *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v29[v34], v33), v0[v34 / 0x10], v32), 3uLL);
        v13 = v34 >= 0x30;
        v34 += 16;
      }

      while (!v13);
      v0 = (v0 + v1);
      v30 += 8;
      v29 += v1;
      --v31;
    }

    while (v31);
LABEL_46:
    v35 = v65;
    return sub_277B302F8(v35, 64, v4, v5, v6);
  }

  return sub_277B302F8(v0, v1, v4, v5, v6);
}

uint64_t sub_277A1A294()
{
  v0 = MEMORY[0x28223BE20]();
  v65[1040] = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    v10 = v65;
    if (v3 == 4)
    {
      v23 = 65;
      do
      {
        v24 = 0;
        do
        {
          *&v10[v24 / 8] = vrhaddq_u8(v0[v24 / 0x10], *(&v0[v24 / 0x10] + 1));
          v13 = v24 >= 0x70;
          v24 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 16;
        --v23;
      }

      while (v23);
      v25 = v65;
      v26 = v64;
      v27 = 64;
      do
      {
        v28 = 0;
        do
        {
          *&v26[v28 * 8] = vrhaddq_u8(*&v25[v28], *&v25[v28 + 16]);
          v13 = v28 >= 14;
          v28 += 2;
        }

        while (!v13);
        v25 += 16;
        v26 += 128;
        --v27;
      }

      while (v27);
    }

    else
    {
      if (!v3)
      {
        v11 = 64;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12 / 8] = vrhaddq_u8(v0[v12 / 0x10], *(&v0[v12 / 0x10] + 1));
            v13 = v12 >= 0x70;
            v12 += 16;
          }

          while (!v13);
          v0 = (v0 + v1);
          v10 += 16;
          --v11;
        }

        while (v11);
        goto LABEL_46;
      }

      v36 = 65;
      do
      {
        v37 = 0;
        do
        {
          v38 = *(&v0[v37 / 2] + 1);
          v39 = vrhaddq_u8(v0[v37 / 2], v38);
          *&v10[v37] = v39;
          v13 = v37 >= 14;
          v37 += 2;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 16;
        --v36;
      }

      while (v36);
      v39.i32[0] = 8 - v3;
      v38.i32[0] = v3;
      v40 = v65;
      v41 = v64;
      v42 = 64;
      v43 = vdupq_lane_s8(*v39.i8, 0);
      v44 = vdupq_lane_s8(*v38.i8, 0);
      do
      {
        v45 = 0;
        do
        {
          *&v41[v45 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v40[v45 + 16], *v44.i8), v40[v45], *v43.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v40[v45 + 16], v44), *&v40[v45], v43), 3uLL);
          v13 = v45 >= 14;
          v45 += 2;
        }

        while (!v13);
        v40 += 16;
        v41 += 128;
        --v42;
      }

      while (v42);
    }

    goto LABEL_79;
  }

  if (v2)
  {
    v7.i32[0] = 8 - v2;
    v8.i32[0] = v2;
    v14 = v65;
    if (v3 == 4)
    {
      v46 = 65;
      v47 = vdupq_lane_s8(v7, 0);
      v48 = vdupq_lane_s8(v8, 0);
      do
      {
        v49 = 0;
        do
        {
          *&v14[v49 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v49 / 0x10].i8[1], *v48.i8), *v0[v49 / 0x10].i8, *v47.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v49 / 0x10] + 1), v48), v0[v49 / 0x10], v47), 3uLL);
          v13 = v49 >= 0x70;
          v49 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 16;
        --v46;
      }

      while (v46);
      v50 = v65;
      v51 = v64;
      v52 = 64;
      do
      {
        v53 = 0;
        do
        {
          *&v51[v53 * 8] = vrhaddq_u8(*&v50[v53], *&v50[v53 + 16]);
          v13 = v53 >= 14;
          v53 += 2;
        }

        while (!v13);
        v50 += 16;
        v51 += 128;
        --v52;
      }

      while (v52);
    }

    else
    {
      if (!v3)
      {
        v15 = 64;
        v16 = vdupq_lane_s8(v7, 0);
        v17 = vdupq_lane_s8(v8, 0);
        do
        {
          v18 = 0;
          do
          {
            *&v14[v18 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v18 / 0x10].i8[1], *v17.i8), *v0[v18 / 0x10].i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v18 / 0x10] + 1), v17), v0[v18 / 0x10], v16), 3uLL);
            v13 = v18 >= 0x70;
            v18 += 16;
          }

          while (!v13);
          v0 = (v0 + v1);
          v14 += 16;
          --v15;
        }

        while (v15);
        goto LABEL_46;
      }

      v54 = 65;
      v55 = vdupq_lane_s8(v7, 0);
      v56 = vdupq_lane_s8(v8, 0);
      do
      {
        v57 = 0;
        do
        {
          *&v14[v57 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v57 / 0x10].i8[1], *v56.i8), *v0[v57 / 0x10].i8, *v55.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v57 / 0x10] + 1), v56), v0[v57 / 0x10], v55), 3uLL);
          v13 = v57 >= 0x70;
          v57 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 16;
        --v54;
      }

      while (v54);
      v55.i32[0] = 8 - v3;
      v56.i32[0] = v3;
      v58 = v65;
      v59 = v64;
      v60 = 64;
      v61 = vdupq_lane_s8(*v55.i8, 0);
      v62 = vdupq_lane_s8(*v56.i8, 0);
      do
      {
        v63 = 0;
        do
        {
          *&v59[v63 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v58[v63 + 16], *v62.i8), v58[v63], *v61.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v58[v63 + 16], v62), *&v58[v63], v61), 3uLL);
          v13 = v63 >= 14;
          v63 += 2;
        }

        while (!v13);
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

LABEL_79:
    v35 = v64;
    return sub_277B303F0(v35, 128, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v19 = v65;
    v20 = 64;
    v21 = &v0->i8[v1];
    do
    {
      v22 = 0;
      do
      {
        *&v19[v22 / 8] = vrhaddq_u8(v0[v22 / 0x10], *&v21[v22]);
        v13 = v22 >= 0x70;
        v22 += 16;
      }

      while (!v13);
      v0 = (v0 + v1);
      v19 += 16;
      v21 += v1;
      --v20;
    }

    while (v20);
    goto LABEL_46;
  }

  if (v3)
  {
    v7.i32[0] = 8 - v3;
    v8.i32[0] = v3;
    v29 = &v0->i8[v1];
    v30 = v65;
    v31 = 64;
    v32 = vdupq_lane_s8(v7, 0);
    v33 = vdupq_lane_s8(v8, 0);
    do
    {
      v34 = 0;
      do
      {
        *&v30[v34 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v29[v34], *v33.i8), *v0[v34 / 0x10].i8, *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v29[v34], v33), v0[v34 / 0x10], v32), 3uLL);
        v13 = v34 >= 0x70;
        v34 += 16;
      }

      while (!v13);
      v0 = (v0 + v1);
      v30 += 16;
      v29 += v1;
      --v31;
    }

    while (v31);
LABEL_46:
    v35 = v65;
    return sub_277B303F0(v35, 128, v4, v5, v6);
  }

  return sub_277B303F0(v0, v1, v4, v5, v6);
}

uint64_t sub_277A1A7D4()
{
  v0 = MEMORY[0x28223BE20]();
  v65[2064] = *MEMORY[0x277D85DE8];
  if (v2 == 4)
  {
    v10 = v65;
    if (v3 == 4)
    {
      v23 = 129;
      do
      {
        v24 = 0;
        do
        {
          *&v10[v24 / 8] = vrhaddq_u8(v0[v24 / 0x10], *(&v0[v24 / 0x10] + 1));
          v13 = v24 >= 0x70;
          v24 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 16;
        --v23;
      }

      while (v23);
      v25 = v65;
      v26 = v64;
      v27 = 128;
      do
      {
        v28 = 0;
        do
        {
          *&v26[v28 * 8] = vrhaddq_u8(*&v25[v28], *&v25[v28 + 16]);
          v13 = v28 >= 14;
          v28 += 2;
        }

        while (!v13);
        v25 += 16;
        v26 += 128;
        --v27;
      }

      while (v27);
    }

    else
    {
      if (!v3)
      {
        v11 = 128;
        do
        {
          v12 = 0;
          do
          {
            *&v10[v12 / 8] = vrhaddq_u8(v0[v12 / 0x10], *(&v0[v12 / 0x10] + 1));
            v13 = v12 >= 0x70;
            v12 += 16;
          }

          while (!v13);
          v0 = (v0 + v1);
          v10 += 16;
          --v11;
        }

        while (v11);
        goto LABEL_46;
      }

      v36 = 129;
      do
      {
        v37 = 0;
        do
        {
          v38 = *(&v0[v37 / 2] + 1);
          v39 = vrhaddq_u8(v0[v37 / 2], v38);
          *&v10[v37] = v39;
          v13 = v37 >= 14;
          v37 += 2;
        }

        while (!v13);
        v0 = (v0 + v1);
        v10 += 16;
        --v36;
      }

      while (v36);
      v39.i32[0] = 8 - v3;
      v38.i32[0] = v3;
      v40 = v65;
      v41 = v64;
      v42 = 128;
      v43 = vdupq_lane_s8(*v39.i8, 0);
      v44 = vdupq_lane_s8(*v38.i8, 0);
      do
      {
        v45 = 0;
        do
        {
          *&v41[v45 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v40[v45 + 16], *v44.i8), v40[v45], *v43.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v40[v45 + 16], v44), *&v40[v45], v43), 3uLL);
          v13 = v45 >= 14;
          v45 += 2;
        }

        while (!v13);
        v40 += 16;
        v41 += 128;
        --v42;
      }

      while (v42);
    }

    goto LABEL_79;
  }

  if (v2)
  {
    v7.i32[0] = 8 - v2;
    v8.i32[0] = v2;
    v14 = v65;
    if (v3 == 4)
    {
      v46 = 129;
      v47 = vdupq_lane_s8(v7, 0);
      v48 = vdupq_lane_s8(v8, 0);
      do
      {
        v49 = 0;
        do
        {
          *&v14[v49 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v49 / 0x10].i8[1], *v48.i8), *v0[v49 / 0x10].i8, *v47.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v49 / 0x10] + 1), v48), v0[v49 / 0x10], v47), 3uLL);
          v13 = v49 >= 0x70;
          v49 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 16;
        --v46;
      }

      while (v46);
      v50 = v65;
      v51 = v64;
      v52 = 128;
      do
      {
        v53 = 0;
        do
        {
          *&v51[v53 * 8] = vrhaddq_u8(*&v50[v53], *&v50[v53 + 16]);
          v13 = v53 >= 14;
          v53 += 2;
        }

        while (!v13);
        v50 += 16;
        v51 += 128;
        --v52;
      }

      while (v52);
    }

    else
    {
      if (!v3)
      {
        v15 = 128;
        v16 = vdupq_lane_s8(v7, 0);
        v17 = vdupq_lane_s8(v8, 0);
        do
        {
          v18 = 0;
          do
          {
            *&v14[v18 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v18 / 0x10].i8[1], *v17.i8), *v0[v18 / 0x10].i8, *v16.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v18 / 0x10] + 1), v17), v0[v18 / 0x10], v16), 3uLL);
            v13 = v18 >= 0x70;
            v18 += 16;
          }

          while (!v13);
          v0 = (v0 + v1);
          v14 += 16;
          --v15;
        }

        while (v15);
        goto LABEL_46;
      }

      v54 = 129;
      v55 = vdupq_lane_s8(v7, 0);
      v56 = vdupq_lane_s8(v8, 0);
      do
      {
        v57 = 0;
        do
        {
          *&v14[v57 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v0[v57 / 0x10].i8[1], *v56.i8), *v0[v57 / 0x10].i8, *v55.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v0[v57 / 0x10] + 1), v56), v0[v57 / 0x10], v55), 3uLL);
          v13 = v57 >= 0x70;
          v57 += 16;
        }

        while (!v13);
        v0 = (v0 + v1);
        v14 += 16;
        --v54;
      }

      while (v54);
      v55.i32[0] = 8 - v3;
      v56.i32[0] = v3;
      v58 = v65;
      v59 = v64;
      v60 = 128;
      v61 = vdupq_lane_s8(*v55.i8, 0);
      v62 = vdupq_lane_s8(*v56.i8, 0);
      do
      {
        v63 = 0;
        do
        {
          *&v59[v63 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v58[v63 + 16], *v62.i8), v58[v63], *v61.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v58[v63 + 16], v62), *&v58[v63], v61), 3uLL);
          v13 = v63 >= 14;
          v63 += 2;
        }

        while (!v13);
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

LABEL_79:
    v35 = v64;
    return sub_277B304E8(v35, 128, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v19 = v65;
    v20 = 128;
    v21 = &v0->i8[v1];
    do
    {
      v22 = 0;
      do
      {
        *&v19[v22 / 8] = vrhaddq_u8(v0[v22 / 0x10], *&v21[v22]);
        v13 = v22 >= 0x70;
        v22 += 16;
      }

      while (!v13);
      v0 = (v0 + v1);
      v19 += 16;
      v21 += v1;
      --v20;
    }

    while (v20);
    goto LABEL_46;
  }

  if (v3)
  {
    v7.i32[0] = 8 - v3;
    v8.i32[0] = v3;
    v29 = &v0->i8[v1];
    v30 = v65;
    v31 = 128;
    v32 = vdupq_lane_s8(v7, 0);
    v33 = vdupq_lane_s8(v8, 0);
    do
    {
      v34 = 0;
      do
      {
        *&v30[v34 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v29[v34], *v33.i8), *v0[v34 / 0x10].i8, *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v29[v34], v33), v0[v34 / 0x10], v32), 3uLL);
        v13 = v34 >= 0x70;
        v34 += 16;
      }

      while (!v13);
      v0 = (v0 + v1);
      v30 += 16;
      v29 += v1;
      --v31;
    }

    while (v31);
LABEL_46:
    v35 = v65;
    return sub_277B304E8(v35, 128, v4, v5, v6);
  }

  return sub_277B304E8(v0, v1, v4, v5, v6);
}