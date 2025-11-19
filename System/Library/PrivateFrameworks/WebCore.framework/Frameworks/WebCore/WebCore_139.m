uint64_t vp9_filter_block_plane_ss00(_DWORD *a1, uint64_t a2, int a3, uint64_t *a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  result = *(a2 + 16);
  v16 = a4 + 90;
  v17 = a3;
  if (a1[328] > a3)
  {
    v19 = a4[1];
    v18 = a4[2];
    v20 = *a4;
    v21 = a4[8];
    v22 = *(a2 + 8);
    v70 = *(a2 + 16);
    if (a1[81])
    {
      highbd_filter_selectively_vert_row2(v22, (2 * result), *(a2 + 24), v18, v19, v20, v21, (a1 + 392), a4 + 90, a1[4540]);
    }

    else
    {
      filter_selectively_vert_row2(v22, result, *(a2 + 24), v18, v19, v20, v21, (a1 + 392), a5, a6, a7, a8, a9, a10, a11, a12, a4 + 90);
    }

    v31 = *(a2 + 24);
    v32 = *(a2 + 16) + 16 * v31;
    *(a2 + 16) = v32;
    result = v70;
    if (v17 + 2 < a1[328])
    {
      v33 = *(a2 + 8);
      v34 = v21 >> 16;
      v35 = v20 >> 16;
      v36 = v19 >> 16;
      if (a1[81])
      {
        highbd_filter_selectively_vert_row2(v33, (2 * v32), v31, v18 >> 16, v36, v35, v34, (a1 + 392), a4 + 106, a1[4540]);
      }

      else
      {
        filter_selectively_vert_row2(v33, v32, v31, v18 >> 16, v36, v35, v34, (a1 + 392), v23, v24, v25, v26, v27, v28, v29, v30, a4 + 106);
      }

      v45 = *(a2 + 24);
      v46 = *(a2 + 16) + 16 * v45;
      *(a2 + 16) = v46;
      result = v70;
      if (v17 + 4 < a1[328])
      {
        v47 = *(a2 + 8);
        if (a1[81])
        {
          highbd_filter_selectively_vert_row2(v47, (2 * v46), v45, HIDWORD(v18), HIDWORD(v19), HIDWORD(v20), HIDWORD(v21), (a1 + 392), a4 + 122, a1[4540]);
        }

        else
        {
          filter_selectively_vert_row2(v47, v46, v45, HIDWORD(v18), HIDWORD(v19), HIDWORD(v20), HIDWORD(v21), (a1 + 392), v37, v38, v39, v40, v41, v42, v43, v44, a4 + 122);
        }

        v56 = *(a2 + 24);
        v57 = *(a2 + 16) + 16 * v56;
        *(a2 + 16) = v57;
        result = v70;
        if (v17 + 6 < a1[328])
        {
          v58 = *(a2 + 8);
          v59 = HIWORD(v21);
          v60 = HIWORD(v20);
          v61 = HIWORD(v19);
          if (a1[81])
          {
            highbd_filter_selectively_vert_row2(v58, (2 * v57), v56, HIWORD(v18), v61, v60, v59, (a1 + 392), a4 + 138, a1[4540]);
          }

          else
          {
            filter_selectively_vert_row2(v58, v57, v56, HIWORD(v18), v61, v60, v59, (a1 + 392), v48, v49, v50, v51, v52, v53, v54, v55, a4 + 138);
          }

          result = v70;
        }
      }
    }
  }

  *(a2 + 16) = result;
  v63 = a4[5];
  v62 = a4[6];
  v64 = a4[4];
  v65 = 64;
  v66 = a4[8];
  do
  {
    if (v17 >= a1[328])
    {
      break;
    }

    v67 = v17 ? v62 : 0;
    v68 = v17 ? v63 : 0;
    v69 = v17 ? v64 : 0;
    if (a1[81])
    {
      highbd_filter_selectively_horiz((2 * result), *(a2 + 24), v67, v68, v69, v66, (a1 + 392), v16, a1[4540]);
    }

    else
    {
      filter_selectively_horiz(result, *(a2 + 24), v67, v68, v69, v66, (a1 + 392), v16);
    }

    result = *(a2 + 16) + 8 * *(a2 + 24);
    v62 >>= 8;
    v63 >>= 8;
    v64 >>= 8;
    *(a2 + 16) = result;
    v66 >>= 8;
    v16 += 8;
    ++v17;
    v65 -= 8;
  }

  while (v65);
  return result;
}

void highbd_filter_selectively_vert_row2(int a1, int16x8_t *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned __int8 *a9, int a10)
{
  v59[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = 255;
  }

  else
  {
    v10 = 0xFFFF;
  }

  if (a1)
  {
    v11 = 4;
  }

  else
  {
    v11 = 8;
  }

  v54 = v11;
  v59[0] = a2;
  v12 = (a5 | a4 | a6 | a7) & v10;
  if (v12)
  {
    v13 = a7;
    v14 = a6;
    v15 = a5;
    v16 = a4;
    v17 = a2;
    v18 = a10;
    v20 = (1 << v11) | 1;
    v55 = ~(1 << v11);
    v51 = vdupq_n_s16(a10 - 8);
    v52 = a3;
    while (1)
    {
      if ((v12 & v20) == 0)
      {
        goto LABEL_10;
      }

      v23 = (a8 + 48 * *a9);
      v24 = (a8 + 48 * a9[v54]);
      v58[0] = v23;
      v58[1] = v24;
      v56 = v24;
      v59[1] = &v17[v52];
      if ((v16 & v20) != 0)
      {
        if ((v16 & v20) == v20)
        {
          v25 = v23 + 16;
          v26 = v23 + 32;
          v27 = vld1_dup_s8(v23);
          v28 = vld1_dup_s8(v25);
          v29 = vld1_dup_s8(v26);
          v49 = vshlq_u16(vmovl_u8(v28), v51);
          v50 = vshlq_u16(vmovl_u8(v27), v51);
          v48 = vshlq_u16(vmovl_u8(v29), v51);
          lpf_vertical_16_kernel(v17, a3, a10, v50, v49, v48);
          v30 = &v17[v52];
          v31 = a3;
          v18 = a10;
          v33 = v49;
          v32 = v50;
          v34 = v48;
        }

        else
        {
          v35 = v58[(v16 & 1) == 0];
          v30 = v59[(v16 & 1) == 0];
          v36 = v35 + 16;
          v37 = v35 + 32;
          v38 = vld1_dup_s8(v35);
          v39 = vld1_dup_s8(v36);
          v40 = vld1_dup_s8(v37);
          v32 = vshlq_u16(vmovl_u8(v38), v51);
          v33 = vshlq_u16(vmovl_u8(v39), v51);
          v34 = vshlq_u16(vmovl_u8(v40), v51);
          v31 = a3;
        }

        lpf_vertical_16_kernel(v30, v31, v18, v32, v33, v34);
      }

      if ((v15 & v20) != 0)
      {
        if ((v15 & v20) == v20)
        {
          vpx_highbd_lpf_vertical_8_neon(v17, a3, v23, v23 + 16, v23 + 32, a10);
          v41 = v56;
          v42 = v56 + 16;
          v43 = v56 + 32;
          v44 = &v17[v52];
          v45 = a3;
          v18 = a10;
        }

        else
        {
          v41 = v58[(v15 & 1) == 0];
          v44 = v59[(v15 & 1) == 0];
          v42 = v41 + 16;
          v43 = v41 + 32;
          v45 = a3;
        }

        vpx_highbd_lpf_vertical_8_neon(v44, v45, v41, v42, v43, v18);
      }

      if ((v14 & v20) == 0)
      {
        goto LABEL_25;
      }

      if ((v14 & v20) == v20)
      {
        break;
      }

      v47 = v58[(v14 & 1) == 0];
      vpx_highbd_lpf_vertical_4_neon(v59[(v14 & 1) == 0], a3, v47, v47 + 16, v47 + 32, v18);
      v46 = v13 & v20;
      if ((v13 & v20) != 0)
      {
LABEL_28:
        if (v46 == v20)
        {
          vpx_highbd_lpf_vertical_4_dual_neon(&v17->i16[4], a3, v23, v23 + 16, v23 + 32, v56, v56 + 16, v56 + 32, v18);
        }

        else
        {
          v21 = v58[(v13 & 1) == 0];
          vpx_highbd_lpf_vertical_4_neon(v59[(v13 & 1) == 0] + 8, a3, v21, v21 + 16, v21 + 32, v18);
        }
      }

LABEL_10:
      v16 >>= 1;
      v59[0] = ++v17;
      ++a9;
      v15 >>= 1;
      v14 >>= 1;
      v13 >>= 1;
      v22 = v12 & v55;
      v12 = (v12 & v55) >> 1;
      if (v22 <= 1)
      {
        return;
      }
    }

    vpx_highbd_lpf_vertical_4_dual_neon(v17, a3, v23, v23 + 16, v23 + 32, v56, v56 + 16, v56 + 32, v18);
LABEL_25:
    v46 = v13 & v20;
    if ((v13 & v20) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_10;
  }
}

void filter_selectively_vert_row2(int a1, _BYTE *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16, unsigned __int8 *a17)
{
  v43[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v17 = 255;
  }

  else
  {
    v17 = 0xFFFF;
  }

  if (a1)
  {
    v18 = 4;
  }

  else
  {
    v18 = 8;
  }

  v39 = v18;
  v43[0] = a2;
  v19 = (a5 | a4 | a6 | a7) & v17;
  if (v19)
  {
    v20 = a7;
    v21 = a6;
    v22 = a5;
    v23 = a4;
    v24 = a2;
    v25 = (1 << v18) | 1;
    v37 = 8 * a3;
    v40 = ~(1 << v18);
    while (1)
    {
      if ((v19 & v25) == 0)
      {
        goto LABEL_10;
      }

      v29 = (a8 + 48 * *a17);
      v30 = (a8 + 48 * a17[v39]);
      v42[0] = v29;
      v42[1] = v30;
      v43[1] = &v24[v37];
      if ((v23 & v25) == 0)
      {
        goto LABEL_15;
      }

      if ((v23 & v25) == v25)
      {
        break;
      }

      v32 = v42[(v23 & 1) == 0];
      a9 = vpx_lpf_vertical_16_neon(v43[(v23 & 1) == 0], a3, v32, v32 + 16, v32 + 32);
      v31 = v22 & v25;
      if ((v22 & v25) == 0)
      {
        goto LABEL_20;
      }

LABEL_18:
      if (v31 == v25)
      {
        *a9.i64 = vpx_lpf_vertical_8_dual_neon(v24, a3, v29, v29 + 16, v29 + 32, v30, v30 + 16, v30 + 32);
LABEL_20:
        v33 = v21 & v25;
        if ((v21 & v25) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v34 = v42[(v22 & 1) == 0];
      a9 = vpx_lpf_vertical_8_neon(v43[(v22 & 1) == 0], a3, v34, v34 + 16, v34 + 32, a9, a10, a11, a12, a13, a14, a15, a16);
      v33 = v21 & v25;
      if ((v21 & v25) == 0)
      {
        goto LABEL_25;
      }

LABEL_23:
      if (v33 == v25)
      {
        *a9.i64 = vpx_lpf_vertical_4_dual_neon(v24, a3, v29, v29 + 16, v29 + 32, v30, v30 + 16, v30 + 32);
LABEL_25:
        v35 = v20 & v25;
        if ((v20 & v25) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_10;
      }

      v36 = v42[(v21 & 1) == 0];
      *a9.i8 = vpx_lpf_vertical_4_neon(v43[(v21 & 1) == 0], a3, v36, v36 + 16, v36 + 32, *a9.i64, *a10.i64, *a11.i64, a12, a13, a14, a15, a16);
      v35 = v20 & v25;
      if ((v20 & v25) != 0)
      {
LABEL_28:
        if (v35 == v25)
        {
          *a9.i64 = vpx_lpf_vertical_4_dual_neon((v24 + 4), a3, v29, v29 + 16, v29 + 32, v30, v30 + 16, v30 + 32);
        }

        else
        {
          v27 = v42[(v20 & 1) == 0];
          *a9.i8 = vpx_lpf_vertical_4_neon(v43[(v20 & 1) == 0] + 4, a3, v27, v27 + 16, v27 + 32, *a9.i64, *a10.i64, *a11.i64, a12, a13, a14, a15, a16);
        }
      }

LABEL_10:
      v23 >>= 1;
      v24 += 8;
      v43[0] = v24;
      ++a17;
      v22 >>= 1;
      v21 >>= 1;
      v20 >>= 1;
      v28 = v19 & v40;
      v19 = (v19 & v40) >> 1;
      if (v28 <= 1)
      {
        return;
      }
    }

    a9 = vpx_lpf_vertical_16_dual_neon(v24, a3, v29, v29 + 16, v29 + 32);
LABEL_15:
    v31 = v22 & v25;
    if ((v22 & v25) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }
}

void vp9_filter_block_plane_ss11(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v16 = *(a2 + 16);
  v17 = *(a4 + 76);
  v18 = *(a4 + 74);
  v19 = *(a4 + 72);
  v20 = *(a4 + 88);
  v69 = 0;
  v70[0] = 0;
  v21 = a3;
  v22 = a1[328];
  if (v22 <= a3)
  {
    *(a2 + 16) = v16;
    if (v22 <= a3)
    {
      return;
    }
  }

  else
  {
    LOBYTE(v69) = *(a4 + 90);
    BYTE4(v69) = *(a4 + 106);
    BYTE1(v69) = *(a4 + 92);
    BYTE5(v69) = *(a4 + 108);
    BYTE2(v69) = *(a4 + 94);
    BYTE6(v69) = *(a4 + 110);
    BYTE3(v69) = *(a4 + 96);
    HIBYTE(v69) = *(a4 + 112);
    v23 = a1[81];
    v24 = *(a2 + 8);
    if (v23)
    {
      highbd_filter_selectively_vert_row2(v24, (2 * v16), *(a2 + 24), v17, v18, v19, v20, (a1 + 392), &v69, a1[4540]);
    }

    else
    {
      filter_selectively_vert_row2(v24, v16, *(a2 + 24), v17, v18, v19, v20, (a1 + 392), a5, a6, a7, a8, a9, a10, a11, a12, &v69);
    }

    v33 = *(a2 + 24);
    v34 = *(a2 + 16) + 16 * v33;
    *(a2 + 16) = v34;
    v22 = a1[328];
    if (v21 + 4 >= v22)
    {
      *(a2 + 16) = v16;
      if (v22 <= v21)
      {
        return;
      }
    }

    else
    {
      v35 = v17 >> 8;
      LOBYTE(v70[0]) = *(a4 + 122);
      v36 = v18 >> 8;
      v37 = v19 >> 8;
      BYTE4(v70[0]) = *(a4 + 138);
      v38 = v20 >> 8;
      BYTE1(v70[0]) = *(a4 + 124);
      BYTE5(v70[0]) = *(a4 + 140);
      BYTE2(v70[0]) = *(a4 + 126);
      BYTE6(v70[0]) = *(a4 + 142);
      BYTE3(v70[0]) = *(a4 + 128);
      HIBYTE(v70[0]) = *(a4 + 144);
      v39 = *(a2 + 8);
      if (a1[81])
      {
        highbd_filter_selectively_vert_row2(v39, (2 * v34), v33, v35, v36, v37, v38, (a1 + 392), v70, a1[4540]);
      }

      else
      {
        filter_selectively_vert_row2(v39, v34, v33, v35, v36, v37, v38, (a1 + 392), v25, v26, v27, v28, v29, v30, v31, v32, v70);
      }

      v22 = a1[328];
      *(a2 + 16) = v16;
      if (v22 <= v21)
      {
        return;
      }
    }
  }

  v40 = *(a4 + 84);
  v41 = *(a4 + 82);
  v42 = *(a4 + 80);
  v43 = *(a4 + 88);
  if (v22 - 1 == a3)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43 & 0xF;
  }

  if (a3)
  {
    v45 = v40 & 0xF;
  }

  else
  {
    v45 = 0;
  }

  if (a3)
  {
    v46 = v41 & 0xF;
  }

  else
  {
    v46 = 0;
  }

  if (a3)
  {
    v47 = v42 & 0xF;
  }

  else
  {
    v47 = 0;
  }

  if (a1[81])
  {
    highbd_filter_selectively_horiz((2 * v16), *(a2 + 24), v45, v46, v47, v44, (a1 + 392), &v69, a1[4540]);
  }

  else
  {
    filter_selectively_horiz(v16, *(a2 + 24), v45, v46, v47, v44, (a1 + 392), &v69);
  }

  v48 = *(a2 + 24);
  v49 = *(a2 + 16) + 8 * v48;
  *(a2 + 16) = v49;
  v50 = a1[328];
  if (v21 + 2 >= v50)
  {
    return;
  }

  v51 = v50 - 1 == v21 + 2 ? 0 : (v43 >> 4);
  v52 = v21 == -2 ? 0 : (v40 >> 4);
  v53 = v21 == -2 ? 0 : (v41 >> 4);
  v54 = v21 == -2 ? 0 : (v42 >> 4);
  if (a1[81])
  {
    highbd_filter_selectively_horiz((2 * v49), v48, v52, v53, v54, v51, (a1 + 392), &v69 + 4, a1[4540]);
  }

  else
  {
    filter_selectively_horiz(v49, v48, v52, v53, v54, v51, (a1 + 392), &v69 + 4);
  }

  v55 = *(a2 + 24);
  v56 = *(a2 + 16) + 8 * v55;
  *(a2 + 16) = v56;
  v57 = a1[328];
  if (v21 + 4 >= v57)
  {
    return;
  }

  if (v57 - 1 == v21 + 4)
  {
    v58 = 0;
  }

  else
  {
    v58 = (v43 >> 8) & 0xF;
  }

  if (v21 == -4)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    if (a1[81])
    {
      goto LABEL_51;
    }
  }

  else
  {
    v59 = (v40 >> 8) & 0xF;
    v60 = (v41 >> 8) & 0xF;
    v61 = (v42 >> 8) & 0xF;
    if (a1[81])
    {
LABEL_51:
      highbd_filter_selectively_horiz((2 * v56), v55, v59, v60, v61, v58, (a1 + 392), v70, a1[4540]);
      goto LABEL_54;
    }
  }

  filter_selectively_horiz(v56, v55, v59, v60, v61, v58, (a1 + 392), v70);
LABEL_54:
  v62 = *(a2 + 24);
  v63 = *(a2 + 16) + 8 * v62;
  *(a2 + 16) = v63;
  v64 = a1[328];
  if (v21 + 6 < v64)
  {
    if (v64 - 1 == v21 + 6)
    {
      v65 = 0;
    }

    else
    {
      v65 = v43 >> 12;
    }

    if (v21 == -6)
    {
      v66 = 0;
    }

    else
    {
      v66 = v40 >> 12;
    }

    if (v21 == -6)
    {
      v67 = 0;
    }

    else
    {
      v67 = v41 >> 12;
    }

    if (v21 == -6)
    {
      v68 = 0;
    }

    else
    {
      v68 = v42 >> 12;
    }

    if (a1[81])
    {
      highbd_filter_selectively_horiz((2 * v63), v62, v66, v67, v68, v65, (a1 + 392), v70 + 4, a1[4540]);
    }

    else
    {
      filter_selectively_horiz(v63, v62, v66, v67, v68, v65, (a1 + 392), v70 + 4);
    }

    *(a2 + 16) += 8 * *(a2 + 24);
  }
}

void loop_filter_rows(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = a5;
  v7 = a4;
  if (a6)
  {
LABEL_2:
    v11 = 1;
    if (a4 >= a5)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a3 + 148);
  if (!v12)
  {
    if (!*(a3 + 144))
    {
      goto LABEL_2;
    }

    goto LABEL_10;
  }

  if (v12 != 1 || *(a3 + 144) != 1)
  {
LABEL_10:
    v11 = 2;
    if (a4 >= a5)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = 0;
  if (a4 >= a5)
  {
    return;
  }

LABEL_11:
  v13 = *(a2 + 1320);
  if (v13 >= 1)
  {
    if (a6)
    {
      do
      {
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = (*(a2 + 4760) + 160 * *(a2 + 4768) * (v7 >> 3));
          v17 = 8 * v7;
          do
          {
            v18 = *(a1 + 64);
            v19 = *(a1 + 72);
            v20 = *(a1 + 16);
            v21 = *(a1 + 36);
            *(a3 + 16) = *(a1 + 56) + v20 * (v17 >> *(a3 + 12)) + (v14 >> *(a3 + 8));
            *(a3 + 24) = v20;
            *(a3 + 152) = v18 + v21 * (v17 >> *(a3 + 148)) + (v14 >> *(a3 + 144));
            *(a3 + 160) = v21;
            *(a3 + 288) = v19 + v21 * (v17 >> *(a3 + 284)) + (v14 >> *(a3 + 280));
            *(a3 + 296) = v21;
            vp9_adjust_mask(a2, v7, v15, v16);
            vp9_filter_block_plane_ss00(a2, a3, v7, v16, v22, v23, v24, v25, v26, v27, v28, v29);
            v15 += 8;
            v16 += 20;
            v13 = *(a2 + 1320);
            v14 += 64;
          }

          while (v15 < v13);
        }

        v7 += 8;
      }

      while (v7 < v6);
    }

    else
    {
      do
      {
        if (v13 >= 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = (*(a2 + 4760) + 160 * *(a2 + 4768) * (v7 >> 3));
          v33 = 8 * v7;
          v34 = *(a2 + 1480) + 8 * *(a2 + 1324) * v7;
          do
          {
            v43 = *(a1 + 64);
            v44 = *(a1 + 72);
            v45 = *(a1 + 16);
            v46 = *(a1 + 36);
            *(a3 + 16) = *(a1 + 56) + v45 * (v33 >> *(a3 + 12)) + (v30 >> *(a3 + 8));
            *(a3 + 24) = v45;
            *(a3 + 152) = v43 + v46 * (v33 >> *(a3 + 148)) + (v30 >> *(a3 + 144));
            *(a3 + 160) = v46;
            *(a3 + 288) = v44 + v46 * (v33 >> *(a3 + 284)) + (v30 >> *(a3 + 280));
            *(a3 + 296) = v46;
            vp9_adjust_mask(a2, v7, v31, v32);
            vp9_filter_block_plane_ss00(a2, a3, v7, v32, v47, v48, v49, v50, v51, v52, v53, v54);
            v63 = a3 + 136;
            if (v11)
            {
              if (v11 == 1)
              {
                vp9_filter_block_plane_ss00(a2, v63, v7, v32, v55, v56, v57, v58, v59, v60, v61, v62);
                vp9_filter_block_plane_ss00(a2, a3 + 272, v7, v32, v64, v65, v66, v67, v68, v69, v70, v71);
              }

              else
              {
                vp9_filter_block_plane_non420(a2, v63, v34, v7, v31, *v55.i64, v56, v57, v58, v59, v60, v61, v62);
                vp9_filter_block_plane_non420(a2, a3 + 272, v34, v7, v31, v72, v73, v74, v75, v76, v77, v78, v79);
              }
            }

            else
            {
              vp9_filter_block_plane_ss11(a2, v63, v7, v32, v55, v56, v57, v58, v59, v60, v61, v62);
              vp9_filter_block_plane_ss11(a2, a3 + 272, v7, v32, v35, v36, v37, v38, v39, v40, v41, v42);
            }

            v32 += 20;
            v13 = *(a2 + 1320);
            v31 += 8;
            v34 += 64;
            v30 += 64;
          }

          while (v13 > v31);
          v6 = a5;
        }

        v7 += 8;
      }

      while (v7 < v6);
    }
  }
}

uint64_t vp9_build_mask_frame(uint64_t result, int a2, int a3)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 1312);
  if (!a3 || v4 < 9)
  {
    result = vp9_loop_filter_frame_init(result, a2);
    if (v4 < 1)
    {
      return result;
    }

    v5 = 0;
    v7 = *(v3 + 1320);
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v5 = (v4 >> 1) & 0x3FFFFFF8;
  v6 = v4 >> 3;
  if (v4 <= 0x47)
  {
    v6 = 8;
  }

  v4 = v5 + v6;
  result = vp9_loop_filter_frame_init(result, a2);
  v7 = *(v3 + 1320);
  if (v7 >= 1)
  {
LABEL_10:
    v8 = v5 >> 3;
    do
    {
      if (v7 >= 1)
      {
        v9 = 0;
        v10 = 0;
        v11 = (*(v3 + 1480) + 8 * *(v3 + 1324) * v5);
        do
        {
          result = vp9_setup_mask(v3, v5, v10, v11, *(v3 + 1324), (*(v3 + 4760) + 160 * (v9 + v8 * *(v3 + 4768))));
          v7 = *(v3 + 1320);
          v10 += 8;
          ++v9;
          v11 += 8;
        }

        while (v7 > v10);
      }

      v5 += 8;
      ++v8;
    }

    while (v5 < v4);
  }

  return result;
}

void *vp9_build_mask(void *result, unsigned __int8 *a2, int a3, int a4, int a5, int a6)
{
  v6 = &result[a2[4]] + 2 * a2[8] + mode_lf_lut[a2[1]];
  v7 = *(v6 + 4640);
  if (*(v6 + 4640))
  {
    v8 = a6;
    v11 = *a2;
    v12 = a2[2];
    v13 = uv_txsize_lookup[16 * v11 + 3 + 4 * v12];
    v14 = result[595];
    v15 = *(result + 1192) * (a3 >> 3) + (a4 >> 3);
    v16 = v14 + 160 * v15;
    v17 = v16 + 32;
    v18 = (8 * (a3 & 7)) | a4 & 7;
    v19 = (2 * a3) & 0xC;
    v20 = first_block_in_16x16[8 * (a3 & 7) + (a4 & 7)];
    if (a6 > 0)
    {
      v30 = first_block_in_16x16[8 * (a3 & 7) + (a4 & 7)];
      v31 = (2 * a3) & 0xC;
      v32 = *a2;
      v21 = a5;
      v22 = (8 * (a3 & 7) + (a4 & 7u) + 160 * v15 + v14 + 90);
      do
      {
        result = memset(v22, v7, v21);
        v22 += 8;
        --v8;
      }

      while (v8);
      v11 = v32;
      v20 = v30;
      v19 = v31;
      v17 = v16 + 32;
    }

    v23 = v16 + 72;
    v24 = v16 + 80;
    v25 = v19 & 0xFFFFFFFC | (a4 >> 1) & 3;
    v26 = *(v17 + 8 * v12) | (above_prediction_mask[v11] << v18);
    *(v17 + 8 * v12) = v26;
    v27 = *(v16 + 8 * v12) | (left_prediction_mask[v11] << v18);
    *(v16 + 8 * v12) = v27;
    if (v20)
    {
      *(v24 + 2 * v13) |= above_prediction_mask_uv[v11] << v25;
      *(v23 + 2 * v13) |= left_prediction_mask_uv[v11] << v25;
    }

    if (!a2[3] || a2[8] <= 0)
    {
      v28 = size_mask[v11];
      *(v17 + 8 * v12) = ((above_64x64_txform_mask[v12] & v28) << v18) | v26;
      *(v16 + 8 * v12) = ((left_64x64_txform_mask[v12] & v28) << v18) | v27;
      if (v20)
      {
        v29 = size_mask_uv[v11];
        *(v24 + 2 * v13) |= (above_64x64_txform_mask_uv[v13] & v29) << v25;
        *(v23 + 2 * v13) |= (left_64x64_txform_mask_uv[v13] & v29) << v25;
      }

      if (!v12)
      {
        *(v16 + 64) |= v28 << v18;
      }

      if (v20)
      {
        if (!v13)
        {
          *(v16 + 88) |= size_mask_uv[v11] << v25;
        }
      }
    }
  }

  return result;
}

double vp9_init_dsmotion_compensation(uint64_t a1, signed int a2)
{
  v2 = vdup_n_s32(a2);
  v3 = vmul_s32(v2, 0x400FFFFFC00);
  *a1 = 0x4000000FC00;
  *&v4 = v3.i32[0];
  *(&v4 + 1) = v3.i32[1];
  *(a1 + 352) = v4;
  *(a1 + 8) = 0x4000000FC000000;
  *(a1 + 368) = -1024;
  *(a1 + 376) = 1024;
  v5 = vmul_s32(v2, 0x200FFFFFE00);
  *(a1 + 16) = 0x2000000FE00;
  *&v4 = v5.i32[0];
  *(&v4 + 1) = v5.i32[1];
  *(a1 + 384) = v4;
  *(a1 + 24) = 0x2000000FE000000;
  *(a1 + 400) = -512;
  *(a1 + 408) = 512;
  v6 = vmul_s32(v2, 0x100FFFFFF00);
  *(a1 + 32) = 0x1000000FF00;
  *&v4 = v6.i32[0];
  *(&v4 + 1) = v6.i32[1];
  *(a1 + 416) = v4;
  *(a1 + 40) = 0x1000000FF000000;
  *(a1 + 432) = -256;
  *(a1 + 440) = 256;
  v7 = vmul_s32(v2, 0x80FFFFFF80);
  *(a1 + 48) = 0x800000FF80;
  *&v4 = v7.i32[0];
  *(&v4 + 1) = v7.i32[1];
  *(a1 + 448) = v4;
  *(a1 + 56) = 0x800000FF800000;
  *(a1 + 464) = -128;
  *(a1 + 472) = 128;
  v8 = vmul_s32(v2, 0x40FFFFFFC0);
  *(a1 + 64) = 0x400000FFC0;
  *&v4 = v8.i32[0];
  *(&v4 + 1) = v8.i32[1];
  *(a1 + 480) = v4;
  *(a1 + 72) = 0x400000FFC00000;
  *(a1 + 496) = -64;
  *(a1 + 504) = 64;
  v9 = vmul_s32(v2, 0x20FFFFFFE0);
  *(a1 + 80) = 0x200000FFE0;
  *&v4 = v9.i32[0];
  *(&v4 + 1) = v9.i32[1];
  *(a1 + 512) = v4;
  *(a1 + 88) = 0x200000FFE00000;
  *(a1 + 528) = -32;
  *(a1 + 536) = 32;
  v10 = vmul_s32(v2, 0x10FFFFFFF0);
  *(a1 + 96) = 0x100000FFF0;
  *&v4 = v10.i32[0];
  *(&v4 + 1) = v10.i32[1];
  *(a1 + 544) = v4;
  *(a1 + 104) = 0x100000FFF00000;
  *(a1 + 560) = -16;
  *(a1 + 568) = 16;
  v11 = vmul_s32(v2, 0x8FFFFFFF8);
  *(a1 + 112) = 0x80000FFF8;
  *&v4 = v11.i32[0];
  *(&v4 + 1) = v11.i32[1];
  *(a1 + 576) = v4;
  *(a1 + 592) = -8;
  *(a1 + 120) = -524288;
  *(a1 + 124) = 0x80000;
  *(a1 + 600) = 8;
  v12 = vmul_s32(v2, 0x4FFFFFFFCLL);
  *(a1 + 128) = 0x40000FFFCLL;
  *&v4 = v12.i32[0];
  *(&v4 + 1) = v12.i32[1];
  *(a1 + 608) = v4;
  *(a1 + 624) = -4;
  *(a1 + 136) = -262144;
  *(a1 + 140) = 0x40000;
  *(a1 + 632) = 4;
  v13 = vmul_s32(v2, 0x2FFFFFFFELL);
  *(a1 + 144) = 0x20000FFFELL;
  *&v4 = v13.i32[0];
  *(&v4 + 1) = v13.i32[1];
  *(a1 + 640) = v4;
  *(a1 + 656) = -2;
  *(a1 + 152) = -131072;
  *(a1 + 156) = 0x20000;
  *(a1 + 664) = 2;
  *(a1 + 672) = -a2;
  *(a1 + 160) = 0x10000FFFFLL;
  *(a1 + 680) = a2;
  *(a1 + 688) = -1;
  *(a1 + 168) = -65536;
  *(a1 + 172) = 0x10000;
  *(a1 + 696) = 1;
  *&result = 0xB00000004;
  *(a1 + 1056) = 0xB00000004;
  return result;
}

double vp9_init3smotion_compensation(uint64_t a1, int a2)
{
  v2 = (a1 + 408);
  v3 = (a1 + 16);
  v4 = 1024;
  do
  {
    v5 = -v4;
    *(v3 - 4) = v5;
    *(v2 - 7) = -(v4 * a2);
    *(v3 - 3) = v4;
    *(v2 - 6) = (v4 * a2);
    *(v3 - 2) = -65536 * v4;
    *(v2 - 5) = -v4;
    *(v3 - 1) = v4 << 16;
    *(v2 - 4) = v4;
    *v3 = v5 - (v4 << 16);
    *(v2 - 3) = (v4 * ~a2);
    v3[1] = (v4 << 16) | v5;
    *(v2 - 2) = (v4 - v4 * a2);
    v3[2] = (-65536 * v4) | v4;
    *(v2 - 1) = (v4 * (a2 - 1));
    v3[3] = (v4 << 16) | v4;
    *v2 = (v4 * (a2 + 1));
    v2 += 8;
    v3 += 8;
    v6 = v4 > 1;
    v4 >>= 1;
  }

  while (v6);
  *&result = 0xB00000008;
  *(a1 + 1056) = 0xB00000008;
  return result;
}

uint64_t vp9_skip_sub_pixel_tree(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unsigned int *a12, uint64_t a13, uint8x16_t *a14, int a15, int a16)
{
  v17 = *(a1 + 8216);
  v18 = *(a1 + 8224);
  v19 = *(a1 + 24952);
  v20 = *a2;
  v21 = a2[1];
  v22 = *(a1 + 24944);
  *a2 = 8 * v20;
  a2[1] = 8 * v21;
  return setup_center_error(a1 + 24912, a2, a3, a5, a6, v17, v18, v22, v19, a14, a15, a16, v21 + v19 * v20, a10, a11, a13, a12);
}

uint64_t setup_center_error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint8x16_t *a10, int a11, int a12, int a13, uint64_t a14, void *a15, uint64_t a16, unsigned int *a17)
{
  v17 = MEMORY[0x28223BE20](a1, a2, a3);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a10;
  STACK[0x2018] = *MEMORY[0x277D85DE8];
  if (a10)
  {
    v29 = a12;
    if ((*(*(v17 + 528) + 152) & 8) != 0)
    {
      v34 = (2 * a10);
      v35 = (2 * (v21 + a13));
      if (a11 < 9)
      {
        if (a11 == 8)
        {
          v44 = &v58;
          do
          {
            v45 = *v34++;
            *v44++ = vrhaddq_u16(v45, *v35);
            v35 = (v35 + 2 * a9);
            --v29;
          }

          while (v29);
        }

        else
        {
          v55 = 0;
          do
          {
            *(&v58 + v55) = vrhadd_u16(*&v34->i8[v55], *v35->i8);
            v35 = (v35 + 2 * a9);
            v55 += 2 * a11;
            --v29;
          }

          while (v29);
        }
      }

      else
      {
        v36 = 2 * a11;
        v37 = &v58;
        do
        {
          v38 = 0;
          for (i = 0; i < a11; i += 8)
          {
            *&v37[v38 / 8] = vrhaddq_u16(v34[v38 / 0x10], v35[v38 / 0x10]);
            v38 += 16;
          }

          v37 = (v37 + v36);
          v35 = (v35 + 2 * a9);
          v34 = (v34 + v36);
          --v29;
        }

        while (v29);
      }

      v33 = (*(v18 + 24))(&v58 >> 1);
      *a17 = v33;
      if (a15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v30 = (v21 + a13);
      if (a11 < 9)
      {
        if (a11 == 8)
        {
          v40 = &v58;
          v41 = -8 * a12;
          do
          {
            v42 = *v28++;
            v43.i64[0] = *v30;
            v43.i64[1] = *(v30 + a9);
            v30 = (v30 + 2 * a9);
            *v40++ = vrhaddq_u8(v43, v42);
            v41 += 16;
          }

          while (v41);
        }

        else
        {
          v46 = a12 * a11;
          v47 = &v58;
          do
          {
            v48 = *v28++;
            v49.i32[0] = *v30;
            v49.i32[1] = *(v30 + a9);
            v49.i32[2] = *(v30 + 2 * a9);
            v49.i32[3] = *(v30 + 3 * a9);
            v30 = (v30 + 4 * a9);
            *v47++ = vrhaddq_u8(v49, v48);
            v46 -= 16;
          }

          while (v46);
        }
      }

      else
      {
        v31 = &v58;
        do
        {
          for (j = 0; j < a11; j += 16)
          {
            *&v31[j / 8] = vrhaddq_u8(v28[j / 0x10], *&v30[j / 8]);
          }

          v31 = (v31 + a11);
          v28 = (v28 + a11);
          v30 = (v30 + a9);
          --v29;
        }

        while (v29);
      }

      v33 = (*(v18 + 24))(&v58);
      *a17 = v33;
      if (a15)
      {
        goto LABEL_28;
      }
    }

LABEL_36:
    v54 = 0;
    goto LABEL_37;
  }

  v33 = (*(v18 + 24))(v21 + a13, a9, v19, v20, a16);
  *a17 = v33;
  if (!a15)
  {
    goto LABEL_36;
  }

LABEL_28:
  v50 = v27[1] - v25[1];
  v51 = v27[1] != v25[1];
  v52 = 2;
  if (v50)
  {
    v52 = 3;
  }

  v53 = *v27 - *v25;
  if (v53)
  {
    v51 = v52;
  }

  v54 = (((v23 * (*(*a15 + 4 * v53) + *(a15[1] + 4 * v50) + *(a14 + 4 * v51))) << 18) + 0x80000000) >> 32;
LABEL_37:
  v56 = v54 + v33;
  if (v56 > 0xFFFFFFFE)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v56;
  }
}

uint64_t vp9_find_best_sub_pixel_tree_pruned_evenmore(uint64_t a1, __int16 *a2, unsigned __int16 *a3, int a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, int *a9, uint64_t a10, void *a11, unsigned int *a12, _DWORD *a13, uint8x16_t *a14, int a15, int a16)
{
  v17 = a5;
  v18 = a2;
  v19 = a11;
  v20 = *(a1 + 8216);
  v21 = *(a1 + 8224);
  v548[0] = 0;
  v22 = *(a1 + 24952);
  v23 = *a2;
  v24 = a2[1];
  v25 = *a3;
  v26 = a3[1];
  v27 = 8 * *(a1 + 25848);
  if (v27 <= v26 - 8184)
  {
    v27 = v26 - 8184;
  }

  v28 = 8 * *(a1 + 25852);
  if (v28 >= v26 + 8184)
  {
    v28 = v26 + 8184;
  }

  v29 = v25 - 8184;
  if (8 * *(a1 + 25856) > v25 - 8184)
  {
    v29 = 8 * *(a1 + 25856);
  }

  v30 = 8 * *(a1 + 25860);
  if (v30 >= v25 + 8184)
  {
    v30 = v25 + 8184;
  }

  if (v27 <= -16383)
  {
    v27 = -16383;
  }

  v545 = v27;
  if (v28 >= 16382)
  {
    v28 = 16382;
  }

  v544 = v28;
  if (v29 <= -16383)
  {
    v29 = -16383;
  }

  v546 = v29;
  v501 = v22 * v23;
  v31 = v501 + v24;
  v533 = *a3;
  v534 = a3[1];
  v32 = 8 * v23;
  if (v30 >= 16382)
  {
    v30 = 16382;
  }

  v543 = v30;
  *a2 = v32;
  v540 = 8 * v24;
  a2[1] = 8 * v24;
  v523 = 8 * v23;
  v537 = a6;
  v538 = v20;
  v539 = v21;
  v536 = *(a1 + 24944);
  v33 = setup_center_error(a1 + 24912, a2, a3, a5, a6, v20, v21, v536, v22, a14, a15, a16, v31, a10, a11, a13, a12);
  v535 = v22;
  if (a9)
  {
    v34 = *a9;
    if (*a9 != 0x7FFFFFFF)
    {
      v35 = a9[1];
      if (v35 != 0x7FFFFFFF)
      {
        v36 = a9[2];
        if (v36 != 0x7FFFFFFF)
        {
          v37 = a9[3];
          if (v37 != 0x7FFFFFFF)
          {
            v102 = a9[4];
            if (v34 < v102 && v34 < v37 && v34 < v36 && v34 < v35 && v102 != 0x7FFFFFFF)
            {
              v547 = 0;
              get_cost_surf_min(a9, &v547 + 1, &v547, 2);
              if (v547)
              {
                v38 = 8 * v24;
                v103 = 2 * v547 + v540;
                if (v103 >= v545 && v103 <= v544)
                {
                  v104 = 2 * HIDWORD(v547) + v32;
                  if (v104 >= v546 && v104 <= v543)
                  {
                    v105 = v536 + (v104 >> 3) * v22 + (v103 >> 3);
                    if (a14)
                    {
                      v106 = (*(a6 + 40))(v105, v22, (2 * v547) & 6, (2 * BYTE4(v547)) & 6, v538, v539, v548, a14);
                    }

                    else
                    {
                      v106 = (*(a6 + 32))(v105, v22, (2 * v547) & 6, (2 * BYTE4(v547)) & 6, v538, v539, v548);
                    }

                    if (a11)
                    {
                      v480 = v103 != v534;
                      v481 = 2;
                      if (v103 != v534)
                      {
                        v481 = 3;
                      }

                      if (v533 != v104)
                      {
                        v480 = v481;
                      }

                      v482 = (((v17 * (*(*a11 + 4 * (v104 - v533)) + *(a11[1] + 4 * (v103 - v534)) + *(a10 + 4 * v480))) << 18) + 0x80000000) >> 32;
                    }

                    else
                    {
                      v482 = 0;
                    }

                    v38 = 8 * v24;
                    v483 = v482 + v106;
                    if (v483 <= 2147483646 && v33 > v483)
                    {
                      *a12 = v106;
                      *a13 = v548[0];
                      v33 = v482 + v106;
                      v523 = v104;
                      v38 = v103;
                    }
                  }
                }
              }

              else
              {
                v38 = 8 * v24;
              }

              v135 = 2;
              v60 = v523;
              goto LABEL_429;
            }
          }
        }
      }
    }
  }

  v38 = 8 * v24;
  v39 = v540 - 4;
  v40 = v540 - 4 >= v545 && v39 <= v544;
  v41 = !v40;
  v500 = v41;
  LODWORD(v42) = 0x7FFFFFFF;
  v498 = v540 - 4;
  if (!v40 || v32 < v546 || v32 > v543)
  {
    goto LABEL_44;
  }

  v43 = v501 + (v39 >> 3);
  if (a14)
  {
    v44 = (*(v537 + 40))(v536 + v43, v22, 4, 0, v538, v539, v548, a14);
    v45 = v44;
    if (a11)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v44 = (*(v537 + 32))(v536 + v43, v22, 4, 0, v538, v539, v548);
    v45 = v44;
    if (a11)
    {
LABEL_34:
      v46 = (v540 - 4) != v534;
      v47 = 2;
      if ((v540 - 4) != v534)
      {
        v47 = 3;
      }

      if (v533 != v32)
      {
        v46 = v47;
      }

      v38 = 8 * v24;
      v42 = ((((v17 * (*(*a11 + 4 * (v32 - v533)) + *(a11[1] + 4 * (v39 - v534)) + *(a10 + 4 * v46))) << 18) + 0x80000000) >> 32) + v45;
      if (v42 > 2147483646)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }
  }

  v38 = 8 * v24;
  v42 = v45;
  if (v45 > 2147483646)
  {
LABEL_39:
    LODWORD(v42) = 0x7FFFFFFF;
    goto LABEL_44;
  }

LABEL_42:
  if (v33 > v42)
  {
    *a12 = v44;
    *a13 = v548[0];
    v33 = v42;
    v528 = v540 - 4;
    goto LABEL_45;
  }

LABEL_44:
  v528 = v38;
LABEL_45:
  v506 = v38 | 4;
  v48 = (v38 | 4) >= v545 && (v38 | 4) <= v544;
  v49 = !v48;
  v499 = v49;
  LODWORD(v50) = 0x7FFFFFFF;
  if (!v48 || v32 < v546 || v32 > v543)
  {
    goto LABEL_67;
  }

  if (a14)
  {
    v51 = (*(v537 + 40))(v536 + v31, v22, 4, 0, v538, v539, v548, a14);
    v52 = v51;
    if (a11)
    {
      goto LABEL_57;
    }

LABEL_64:
    v38 = 8 * v24;
    v50 = v52;
    if (v52 > 2147483646)
    {
LABEL_62:
      LODWORD(v50) = 0x7FFFFFFF;
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  v51 = (*(v537 + 32))(v536 + v31, v22, 4, 0, v538, v539, v548);
  v52 = v51;
  if (!a11)
  {
    goto LABEL_64;
  }

LABEL_57:
  v53 = v506 != v534;
  v54 = 2;
  if (v506 != v534)
  {
    v54 = 3;
  }

  if (v533 != v32)
  {
    v53 = v54;
  }

  v38 = 8 * v24;
  v50 = ((((v17 * (*(*a11 + 4 * (v32 - v533)) + *(a11[1] + 4 * (v506 - v534)) + *(a10 + 4 * v53))) << 18) + 0x80000000) >> 32) + v52;
  if (v50 > 2147483646)
  {
    goto LABEL_62;
  }

LABEL_65:
  if (v33 > v50)
  {
    *a12 = v51;
    *a13 = v548[0];
    v33 = v50;
    v528 = v506;
  }

LABEL_67:
  LODWORD(v55) = 0x7FFFFFFF;
  if (v38 < v545 || v38 > v544)
  {
    v60 = v32;
    LODWORD(v64) = 0x7FFFFFFF;
    goto LABEL_101;
  }

  v56 = v32 - 4;
  LODWORD(v55) = 0x7FFFFFFF;
  if (v32 - 4 < v546 || v56 > v543)
  {
    goto LABEL_84;
  }

  v57 = v536 + v24 + (v56 >> 3) * v22;
  if (a14)
  {
    v58 = (*(v537 + 40))(v57, v22, 0, 4, v538, v539, v548);
    v59 = v58;
    v38 = 8 * v24;
    v60 = v32 - 4;
    if (a11)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v58 = (*(v537 + 32))(v57, v22, 0, 4, v538, v539, v548);
    v59 = v58;
    v38 = 8 * v24;
    v60 = v32 - 4;
    if (a11)
    {
LABEL_73:
      v61 = v38 != v534;
      v62 = 2;
      if (v38 != v534)
      {
        v62 = 3;
      }

      if (v533 != v60)
      {
        v61 = v62;
      }

      v55 = ((((v17 * (*(*a11 + 4 * (v60 - v533)) + *(a11[1] + 4 * (v38 - v534)) + *(a10 + 4 * v61))) << 18) + 0x80000000) >> 32) + v59;
      if (v55 > 2147483646)
      {
        goto LABEL_78;
      }

      goto LABEL_82;
    }
  }

  v55 = v59;
  if (v59 > 2147483646)
  {
LABEL_78:
    v63 = v18;
    LODWORD(v55) = 0x7FFFFFFF;
LABEL_85:
    v60 = v32;
    goto LABEL_86;
  }

LABEL_82:
  if (v33 <= v55)
  {
LABEL_84:
    v63 = v18;
    goto LABEL_85;
  }

  v63 = v18;
  *a12 = v58;
  *a13 = v548[0];
  v33 = v55;
  v528 = v38;
LABEL_86:
  v65 = v32 | 4;
  LODWORD(v64) = 0x7FFFFFFF;
  if ((v32 | 4) < v546 || v65 > v543)
  {
    goto LABEL_100;
  }

  v66 = v60;
  v67 = v536 + v31;
  if (a14)
  {
    v68 = (*(v537 + 40))(v67, v535, 0, 4, v538, v539, v548);
    v69 = v68;
    v70 = a11;
    v38 = 8 * v24;
    if (a11)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v68 = (*(v537 + 32))(v67, v535, 0, 4, v538, v539, v548);
    v69 = v68;
    v70 = a11;
    v38 = 8 * v24;
    if (a11)
    {
LABEL_90:
      v71 = *v70;
      v72 = v70[1];
      v73 = v38 != v534;
      v74 = 2;
      if (v38 != v534)
      {
        v74 = 3;
      }

      if (v533 != v65)
      {
        v73 = v74;
      }

      v60 = v66;
      v64 = ((((v17 * (*(v71 + 4 * (v65 - v533)) + *(v72 + 4 * (v38 - v534)) + *(a10 + 4 * v73))) << 18) + 0x80000000) >> 32) + v69;
      if (v64 > 2147483646)
      {
        goto LABEL_95;
      }

LABEL_98:
      if (v33 > v64)
      {
        *a12 = v68;
        *a13 = v548[0];
        v33 = v64;
        v60 = v32 | 4;
        v528 = v38;
      }

      goto LABEL_100;
    }
  }

  v60 = v66;
  v64 = v69;
  if (v69 <= 2147483646)
  {
    goto LABEL_98;
  }

LABEL_95:
  LODWORD(v64) = 0x7FFFFFFF;
LABEL_100:
  v18 = v63;
  v19 = a11;
LABEL_101:
  v75 = (v42 >= v50) | (2 * (v55 >= v64));
  if (v75 > 1)
  {
    if (v75 == 2)
    {
      v76 = v528;
      if (v500)
      {
        goto LABEL_176;
      }

      v77 = v32 | 4;
      if ((v32 | 4) < v546 || v77 > v543)
      {
        goto LABEL_176;
      }

      v85 = v60;
      v86 = v501 + (v498 >> 3);
      if (a14)
      {
        v80 = (*(v537 + 40))(v536 + v86, v535, 4, 4, v538, v539, v548);
        v87 = v80;
        if (v19)
        {
LABEL_119:
          v88 = (v540 - 4) != v534;
          v89 = 2;
          if ((v540 - 4) != v534)
          {
            v89 = 3;
          }

          if (v533 != v77)
          {
            v88 = v89;
          }

          v90 = (((v17 * (*(*v19 + 4 * (v77 - v533)) + *(v19[1] + 4 * (v498 - v534)) + *(a10 + 4 * v88))) << 18) + 0x80000000) >> 32;
          goto LABEL_165;
        }
      }

      else
      {
        v80 = (*(v537 + 32))(v536 + v86, v535, 4, 4, v538, v539, v548);
        v87 = v80;
        if (v19)
        {
          goto LABEL_119;
        }
      }

      v90 = 0;
LABEL_165:
      v38 = 8 * v24;
      v60 = v85;
      v101 = v90 + v87;
      v76 = v528;
      if (v101 > 2147483646)
      {
        goto LABEL_176;
      }

      v107 = v101;
      v108 = v540 - 4;
LABEL_174:
      if (v33 <= v101)
      {
        goto LABEL_176;
      }

      goto LABEL_175;
    }

    if ((v499 & 1) != 0 || (v77 = v32 | 4, (v32 | 4) < v546) || v77 > v543)
    {
      v76 = v528;
      goto LABEL_176;
    }

    v519 = v60;
    v97 = v536 + v31;
    if (a14)
    {
      v80 = (*(v537 + 40))(v97, v535, 4, 4, v538, v539, v548);
      v98 = v80;
      v76 = v528;
      if (v19)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v80 = (*(v537 + 32))(v97, v535, 4, 4, v538, v539, v548);
      v98 = v80;
      v76 = v528;
      if (v19)
      {
LABEL_140:
        v99 = v506 != v534;
        v100 = 2;
        if (v506 != v534)
        {
          v100 = 3;
        }

        if (v533 != v77)
        {
          v99 = v100;
        }

        v38 = 8 * v24;
        v60 = v519;
        v101 = ((((v17 * (*(*v19 + 4 * (v77 - v533)) + *(v19[1] + 4 * (v506 - v534)) + *(a10 + 4 * v99))) << 18) + 0x80000000) >> 32) + v98;
        if (v101 > 2147483646)
        {
          goto LABEL_176;
        }

        goto LABEL_173;
      }
    }

    v38 = 8 * v24;
    v60 = v519;
    v101 = v98;
    if (v98 > 2147483646)
    {
      goto LABEL_176;
    }

LABEL_173:
    v107 = v101;
    v108 = v506;
    goto LABEL_174;
  }

  if (v75)
  {
    v76 = v528;
    if (v499)
    {
      goto LABEL_176;
    }

    v77 = v32 - 4;
    if (v32 - 4 < v546 || v77 > v543)
    {
      goto LABEL_176;
    }

    v91 = v60;
    v92 = v536 + (v24 + (v77 >> 3) * v535);
    if (a14)
    {
      v80 = (*(v537 + 40))(v92);
      v93 = v80;
      if (v19)
      {
LABEL_129:
        v94 = v506 != v534;
        v95 = 2;
        if (v506 != v534)
        {
          v95 = 3;
        }

        if (v533 != v77)
        {
          v94 = v95;
        }

        v96 = (((v17 * (*(*v19 + 4 * (v77 - v533)) + *(v19[1] + 4 * (v506 - v534)) + *(a10 + 4 * v94))) << 18) + 0x80000000) >> 32;
LABEL_169:
        v38 = 8 * v24;
        v60 = v91;
        v101 = v96 + v93;
        v76 = v528;
        if (v101 > 2147483646)
        {
          goto LABEL_176;
        }

        goto LABEL_173;
      }
    }

    else
    {
      v80 = (*(v537 + 32))(v92);
      v93 = v80;
      if (v19)
      {
        goto LABEL_129;
      }
    }

    v96 = 0;
    goto LABEL_169;
  }

  v76 = v528;
  if ((v500 & 1) == 0)
  {
    v77 = v32 - 4;
    if (v32 - 4 >= v546 && v77 <= v543)
    {
      v78 = v60;
      v79 = v536 + ((v77 >> 3) * v535 + (v498 >> 3));
      if (a14)
      {
        v80 = (*(v537 + 40))(v79);
        v81 = v80;
        if (v19)
        {
LABEL_108:
          v82 = (v540 - 4) != v534;
          v83 = 2;
          if ((v540 - 4) != v534)
          {
            v83 = 3;
          }

          if (v533 != v77)
          {
            v82 = v83;
          }

          v84 = (((v17 * (*(*v19 + 4 * (v77 - v533)) + *(v19[1] + 4 * (v498 - v534)) + *(a10 + 4 * v82))) << 18) + 0x80000000) >> 32;
LABEL_160:
          v38 = 8 * v24;
          v60 = v78;
          v107 = v84 + v81;
          v76 = v528;
          if (v107 > 2147483646)
          {
            goto LABEL_176;
          }

          v108 = v540 - 4;
          if (v33 <= v107)
          {
            goto LABEL_176;
          }

LABEL_175:
          *a12 = v80;
          *a13 = v548[0];
          v33 = v107;
          v60 = v77;
          v76 = v108;
          goto LABEL_176;
        }
      }

      else
      {
        v80 = (*(v537 + 32))(v79);
        v81 = v80;
        if (v19)
        {
          goto LABEL_108;
        }
      }

      v84 = 0;
      goto LABEL_160;
    }
  }

LABEL_176:
  if (a8 < 2)
  {
    goto LABEL_213;
  }

  v109 = v60 - v32;
  if (v60 == v32 || v76 == v38)
  {
    if (v60 == v32)
    {
      v121 = v76 - v38;
      if (v76 != v38)
      {
        v122 = 2 * v121;
        v123 = 2 * v121 + v38;
        if (v123 < v545 || v123 > v544)
        {
          v38 = v76;
        }

        else
        {
          v124 = v32 | 4;
          if ((v32 | 4) < v546 || v124 > v543)
          {
            v38 = v76;
          }

          else
          {
            v125 = v501 + (v123 >> 3);
            if (a14)
            {
              v126 = (*(v537 + 40))(v536 + v125, v535, v122 & 6, 4, v538, v539, v548);
            }

            else
            {
              v126 = (*(v537 + 32))(v536 + v125, v535, v122 & 6, 4, v538, v539, v548);
            }

            if (a11)
            {
              v321 = v123 != v534;
              v322 = 2;
              if (v123 != v534)
              {
                v322 = 3;
              }

              if (v533 != v124)
              {
                v321 = v322;
              }

              v323 = (((v17 * (*(*a11 + 4 * (v124 - v533)) + *(a11[1] + 4 * (v123 - v534)) + *(a10 + 4 * v321))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v323 = 0;
            }

            v324 = v323 + v126;
            v38 = v76;
            if (v324 <= 2147483646 && v33 > v324)
            {
              *a12 = v126;
              *a13 = v548[0];
              v33 = v323 + v126;
              v523 = v32 | 4;
              v38 = v123;
            }
          }

          v325 = v32 - 4;
          if (v32 - 4 >= v546 && v325 <= v543)
          {
            v531 = v76;
            v326 = v38;
            v327 = v536 + ((v325 >> 3) * v535 + (v123 >> 3));
            if (a14)
            {
              v328 = (*(v537 + 40))(v327);
            }

            else
            {
              v328 = (*(v537 + 32))(v327);
            }

            if (a11)
            {
              v329 = v123 != v534;
              v330 = 2;
              if (v123 != v534)
              {
                v330 = 3;
              }

              if (v533 != v325)
              {
                v329 = v330;
              }

              v331 = (((v17 * (*(*a11 + 4 * (v325 - v533)) + *(a11[1] + 4 * (v123 - v534)) + *(a10 + 4 * v329))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v331 = 0;
            }

            v38 = v326;
            v332 = v331 + v328;
            v76 = v531;
            if (v332 <= 2147483646 && v33 > v332)
            {
              *a12 = v328;
              *a13 = v548[0];
              v33 = v331 + v328;
              v523 = v32 - 4;
              v38 = v123;
            }
          }
        }

        v166 = v76 < v545 || v76 > v544;
        if (v55 >= v64)
        {
          v19 = a11;
          v111 = a14;
          if (v166)
          {
            goto LABEL_290;
          }

          v167 = v32 - 4;
          if (v32 - 4 < v546 || v167 > v543)
          {
            goto LABEL_290;
          }

          v168 = v38;
          v207 = v536 + ((v167 >> 3) * v535 + (v76 >> 3));
          if (a14)
          {
            v134 = (*(v537 + 40))(v207);
          }

          else
          {
            v134 = (*(v537 + 32))(v207);
          }

          v359 = v134;
          if (!a11)
          {
LABEL_687:
            v360 = 0;
            goto LABEL_695;
          }
        }

        else
        {
          v19 = a11;
          v111 = a14;
          if (v166)
          {
            goto LABEL_290;
          }

          v167 = v32 | 4;
          if ((v32 | 4) < v546 || v167 > v543)
          {
            goto LABEL_290;
          }

          v168 = v38;
          v169 = v501 + (v76 >> 3);
          if (a14)
          {
            v134 = (*(v537 + 40))(v536 + v169, v535, v76 & 7, 4, v538, v539, v548, a14);
          }

          else
          {
            v134 = (*(v537 + 32))(v536 + v169, v535, v76 & 7, 4, v538, v539, v548);
          }

          v359 = v134;
          if (!a11)
          {
            goto LABEL_687;
          }
        }

        v361 = v76 != v534;
        v362 = 2;
        if (v76 != v534)
        {
          v362 = 3;
        }

        if (v533 != v167)
        {
          v361 = v362;
        }

        v360 = (((v17 * (*(*v19 + 4 * (v167 - v533)) + *(v19[1] + 4 * (v76 - v534)) + *(a10 + 4 * v361))) << 18) + 0x80000000) >> 32;
LABEL_695:
        v38 = v168;
        v356 = v360 + v359;
        if (v356 <= 2147483646)
        {
          v193 = v356;
          v60 = v523;
LABEL_697:
          if (v33 <= v356)
          {
            goto LABEL_214;
          }

LABEL_698:
          *a12 = v134;
          *a13 = v548[0];
          v33 = v193;
          v60 = v167;
          goto LABEL_699;
        }

LABEL_290:
        v60 = v523;
        goto LABEL_214;
      }
    }

    if (v60 != v32)
    {
      v111 = a14;
      if (v76 != v38)
      {
LABEL_699:
        v38 = v76;
        goto LABEL_214;
      }

      v127 = 2 * (v60 - v32);
      if ((v499 & 1) != 0 || (v196 = v127 + v32, v127 + v32 < v546) || v196 > v543)
      {
        v128 = v60;
      }

      else
      {
        v128 = v60;
        v197 = v536 + (v24 + (v196 >> 3) * v535);
        if (a14)
        {
          v198 = (*(v537 + 40))(v197);
        }

        else
        {
          v198 = (*(v537 + 32))(v197);
        }

        if (v19)
        {
          v347 = v506 != v534;
          v348 = 2;
          if (v506 != v534)
          {
            v348 = 3;
          }

          if (v533 != v196)
          {
            v347 = v348;
          }

          v349 = (((v17 * (*(*v19 + 4 * (v196 - v533)) + *(v19[1] + 4 * (v506 - v534)) + *(a10 + 4 * v347))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v349 = 0;
        }

        v38 = 8 * v24;
        v60 = v128;
        v357 = v349 + v198;
        if (v357 <= 2147483646 && v33 > v357)
        {
          *a12 = v198;
          *a13 = v548[0];
          v33 = v349 + v198;
          v128 = v127 + v32;
          v38 = v506;
        }
      }

      if ((v500 & 1) != 0 || (v199 = v127 + v32, v127 + v32 < v546) || v199 > v543)
      {
        v129 = v535;
      }

      else
      {
        v521 = v60;
        v200 = v38;
        v201 = v536 + ((v199 >> 3) * v535 + (v498 >> 3));
        if (a14)
        {
          v202 = (*(v537 + 40))(v201, v535, 4, v127 & 6, v538, v539, v548);
        }

        else
        {
          v202 = (*(v537 + 32))(v201, v535, 4, v127 & 6, v538, v539, v548);
        }

        v129 = v535;
        if (v19)
        {
          v350 = (v540 - 4) != v534;
          v351 = 2;
          if ((v540 - 4) != v534)
          {
            v351 = 3;
          }

          if (v533 != v199)
          {
            v350 = v351;
          }

          v352 = (((v17 * (*(*v19 + 4 * (v199 - v533)) + *(v19[1] + 4 * (v498 - v534)) + *(a10 + 4 * v350))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v352 = 0;
        }

        v111 = a14;
        v38 = v200;
        v60 = v521;
        v358 = v352 + v202;
        if (v358 <= 2147483646 && v33 > v358)
        {
          *a12 = v202;
          *a13 = v548[0];
          v33 = v352 + v202;
          v128 = v199;
          v38 = v540 - 4;
        }
      }

      if (v75 > 1)
      {
        if (v75 != 3)
        {
LABEL_207:
          v130 = v499;
          if (v60 < v546)
          {
            v130 = 1;
          }

          if ((v130 & 1) == 0 && v60 <= v543)
          {
            v131 = v38;
            v132 = v536 + (v24 + (v60 >> 3) * v129);
            v133 = v60;
            v134 = v111 ? (*(v537 + 40))(v132) : (*(v537 + 32))(v132);
            if (v19)
            {
              v344 = v506 != v534;
              v345 = 2;
              if (v506 != v534)
              {
                v345 = 3;
              }

              if (v533 != v133)
              {
                v344 = v345;
              }

              v346 = (((v17 * (*(*v19 + 4 * (v133 - v533)) + *(v19[1] + 4 * (v506 - v534)) + *(a10 + 4 * v344))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v346 = 0;
            }

            v38 = v131;
            v356 = v346 + v134;
            if (v356 <= 2147483646)
            {
              v193 = v356;
              v167 = v133;
              v76 = v506;
LABEL_683:
              v60 = v128;
              goto LABEL_697;
            }
          }

          goto LABEL_684;
        }
      }

      else if (!v75)
      {
        goto LABEL_207;
      }

      v203 = v500;
      if (v60 < v546)
      {
        v203 = 1;
      }

      if ((v203 & 1) == 0 && v60 <= v543)
      {
        v204 = v38;
        v205 = v536 + ((v60 >> 3) * v129 + (v498 >> 3));
        v206 = v60;
        v134 = v111 ? (*(v537 + 40))(v205) : (*(v537 + 32))(v205);
        if (v19)
        {
          v353 = (v540 - 4) != v534;
          v354 = 2;
          if ((v540 - 4) != v534)
          {
            v354 = 3;
          }

          if (v533 != v206)
          {
            v353 = v354;
          }

          v355 = (((v17 * (*(*v19 + 4 * (v206 - v533)) + *(v19[1] + 4 * (v498 - v534)) + *(a10 + 4 * v353))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v355 = 0;
        }

        v38 = v204;
        v356 = v355 + v134;
        if (v356 <= 2147483646)
        {
          v193 = v356;
          v167 = v206;
          v76 = v540 - 4;
          goto LABEL_683;
        }
      }

LABEL_684:
      v60 = v128;
      goto LABEL_214;
    }

LABEL_213:
    v38 = v76;
    v111 = a14;
    goto LABEL_214;
  }

  v110 = 2 * (v76 - v38) + v38;
  if (v110 < v545)
  {
    v38 = v76;
    v111 = a14;
    if (v76 >= v545)
    {
      goto LABEL_340;
    }

    goto LABEL_376;
  }

  v111 = a14;
  if (v110 <= v544 && v60 >= v546 && v60 <= v543)
  {
    v112 = v536 + ((v60 >> 3) * v535 + (v110 >> 3));
    if (a14)
    {
      v113 = v60;
      v114 = (*(v537 + 40))(v112);
      v115 = v114;
      v116 = a11;
      if (a11)
      {
        goto LABEL_185;
      }
    }

    else
    {
      v113 = v60;
      v114 = (*(v537 + 32))(v112);
      v115 = v114;
      v116 = a11;
      if (a11)
      {
LABEL_185:
        v60 = v113;
        v117 = *v116;
        v118 = v116[1];
        v119 = v110 != v534;
        v120 = 2;
        if (v110 != v534)
        {
          v120 = 3;
        }

        if (v533 != v113)
        {
          v119 = v120;
        }

        v115 += (((v17 * (*(v117 + 4 * (v113 - v533)) + *(v118 + 4 * (v110 - v534)) + *(a10 + 4 * v119))) << 18) + 0x80000000) >> 32;
        v38 = v76;
        if (v115 > 2147483646)
        {
LABEL_339:
          if (v76 >= v545)
          {
            goto LABEL_340;
          }

LABEL_376:
          v19 = a11;
          goto LABEL_214;
        }

LABEL_337:
        if (v33 > v115)
        {
          *a12 = v114;
          *a13 = v548[0];
          v33 = v115;
          v38 = v110;
        }

        goto LABEL_339;
      }
    }

    v60 = v113;
    v38 = v76;
    if (v115 > 2147483646)
    {
      goto LABEL_339;
    }

    goto LABEL_337;
  }

  v38 = v76;
  if (v76 < v545)
  {
    goto LABEL_376;
  }

LABEL_340:
  v19 = a11;
  if (v76 > v544)
  {
    goto LABEL_214;
  }

  v167 = 2 * v109 + v32;
  if (v167 < v546 || v167 > v543)
  {
    goto LABEL_214;
  }

  v190 = v60;
  v191 = v38;
  v192 = v536 + ((v167 >> 3) * v535 + (v76 >> 3));
  if (v111)
  {
    v134 = (*(v537 + 40))(v192);
    v193 = v134;
    if (a11)
    {
      goto LABEL_345;
    }

LABEL_372:
    v38 = v191;
    v60 = v190;
    if (v193 > 2147483646)
    {
      goto LABEL_214;
    }

LABEL_373:
    if (v33 <= v193)
    {
      goto LABEL_214;
    }

    goto LABEL_698;
  }

  v134 = (*(v537 + 32))(v192);
  v193 = v134;
  if (!a11)
  {
    goto LABEL_372;
  }

LABEL_345:
  v194 = v76 != v534;
  v195 = 2;
  if (v76 != v534)
  {
    v195 = 3;
  }

  if (v533 != v167)
  {
    v194 = v195;
  }

  v38 = v191;
  v60 = v190;
  v193 += (((v17 * (*(*a11 + 4 * (v167 - v533)) + *(a11[1] + 4 * (v76 - v534)) + *(a10 + 4 * v194))) << 18) + 0x80000000) >> 32;
  if (v193 <= 2147483646)
  {
    goto LABEL_373;
  }

LABEL_214:
  if (a7 != 2)
  {
    v529 = v33;
    v136 = v38 - 2;
    v137 = v38 - 2 >= v545 && v136 <= v544;
    v138 = !v137;
    v524 = v138;
    LODWORD(v139) = 0x7FFFFFFF;
    v541 = v38;
    v520 = v60;
    if (!v137)
    {
      v170 = v38;
      v171 = v535;
      goto LABEL_241;
    }

    v171 = v535;
    if (v60 < v546 || v60 > v543)
    {
      goto LABEL_240;
    }

    v140 = v536 + ((v60 >> 3) * v535 + (v136 >> 3));
    if (v111)
    {
      v141 = (*(v537 + 40))(v140, v535, v136 & 7, v60 & 7, v538, v539, v548, v111);
      v142 = v141;
      if (v19)
      {
        goto LABEL_228;
      }
    }

    else
    {
      v141 = (*(v537 + 32))(v140, v535, v136 & 7, v60 & 7, v538, v539, v548);
      v142 = v141;
      if (v19)
      {
LABEL_228:
        v60 = v520;
        v143 = v136 != v534;
        v144 = 2;
        if (v136 != v534)
        {
          v144 = 3;
        }

        if (v533 != v520)
        {
          v143 = v144;
        }

        v38 = v541;
        v139 = ((((v17 * (*(*v19 + 4 * (v520 - v533)) + *(v19[1] + 4 * (v136 - v534)) + *(a10 + 4 * v143))) << 18) + 0x80000000) >> 32) + v142;
        if (v139 > 2147483646)
        {
          goto LABEL_233;
        }

        goto LABEL_238;
      }
    }

    v38 = v541;
    v60 = v520;
    LODWORD(v139) = v142;
    if (v142 > 2147483646)
    {
LABEL_233:
      LODWORD(v139) = 0x7FFFFFFF;
      goto LABEL_240;
    }

LABEL_238:
    if (v529 > v139)
    {
      *a12 = v141;
      *a13 = v548[0];
      v529 = v139;
      v170 = v136;
      goto LABEL_241;
    }

LABEL_240:
    v170 = v38;
LABEL_241:
    v145 = v38 + 2;
    v146 = v38 + 2 >= v545 && v145 <= v544;
    v147 = !v146;
    v507 = v147;
    LODWORD(v148) = 0x7FFFFFFF;
    if (!v146 || v60 < v546 || v60 > v543)
    {
      goto LABEL_263;
    }

    v149 = v170;
    v150 = v536 + (v60 >> 3) * v171 + (v145 >> 3);
    if (v111)
    {
      v151 = (*(v537 + 40))(v150, v171, v145 & 7, v60 & 7, v538, v539, v548, v111);
      v152 = v151;
      if (v19)
      {
        goto LABEL_253;
      }
    }

    else
    {
      v151 = (*(v537 + 32))(v150, v171, v145 & 7, v60 & 7, v538, v539, v548);
      v152 = v151;
      if (v19)
      {
LABEL_253:
        v60 = v520;
        v153 = v145 != v534;
        v154 = 2;
        if (v145 != v534)
        {
          v154 = 3;
        }

        if (v533 != v520)
        {
          v153 = v154;
        }

        v38 = v541;
        v170 = v149;
        v148 = ((((v17 * (*(*v19 + 4 * (v520 - v533)) + *(v19[1] + 4 * (v145 - v534)) + *(a10 + 4 * v153))) << 18) + 0x80000000) >> 32) + v152;
        if (v148 > 2147483646)
        {
          goto LABEL_258;
        }

LABEL_261:
        if (v529 > v148)
        {
          *a12 = v151;
          *a13 = v548[0];
          v529 = v148;
          v170 = v145;
        }

LABEL_263:
        LODWORD(v155) = 0x7FFFFFFF;
        if (v38 < v545 || v38 > v544)
        {
          v156 = v60;
          LODWORD(v164) = 0x7FFFFFFF;
          goto LABEL_312;
        }

        v156 = v60 - 2;
        LODWORD(v155) = 0x7FFFFFFF;
        if (v60 - 2 < v546 || v156 > v543)
        {
LABEL_295:
          v163 = v18;
          goto LABEL_296;
        }

        v157 = v170;
        v158 = v536 + (v156 >> 3) * v171 + (v38 >> 3);
        if (a14)
        {
          v159 = (*(v537 + 40))(v158, v171, v38 & 7, v156 & 7, v538, v539, v548);
          v160 = v159;
          if (v19)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v159 = (*(v537 + 32))(v158, v171, v38 & 7, v156 & 7, v538, v539, v548);
          v160 = v159;
          if (v19)
          {
LABEL_269:
            v38 = v541;
            v161 = v541 != v534;
            v162 = 2;
            if (v541 != v534)
            {
              v162 = 3;
            }

            if (v533 != v156)
            {
              v161 = v162;
            }

            v60 = v520;
            v170 = v157;
            v155 = ((((v17 * (*(*v19 + 4 * (v156 - v533)) + *(v19[1] + 4 * (v541 - v534)) + *(a10 + 4 * v161))) << 18) + 0x80000000) >> 32) + v160;
            if (v155 > 2147483646)
            {
              goto LABEL_274;
            }

LABEL_293:
            if (v529 > v155)
            {
              v163 = v18;
              *a12 = v159;
              *a13 = v548[0];
              v529 = v155;
              v170 = v38;
LABEL_297:
              v172 = v60 + 2;
              LODWORD(v164) = 0x7FFFFFFF;
              if (v60 + 2 < v546 || v172 > v543)
              {
                goto LABEL_311;
              }

              v173 = v170;
              v174 = v536 + ((v172 >> 3) * v535 + (v38 >> 3));
              if (a14)
              {
                v175 = (*(v537 + 40))(v174);
                v176 = v175;
                v177 = a11;
                if (a11)
                {
                  goto LABEL_301;
                }
              }

              else
              {
                v175 = (*(v537 + 32))(v174);
                v176 = v175;
                v177 = a11;
                if (a11)
                {
LABEL_301:
                  v38 = v541;
                  v178 = *v177;
                  v179 = v177[1];
                  v180 = v541 != v534;
                  v181 = 2;
                  if (v541 != v534)
                  {
                    v181 = 3;
                  }

                  if (v533 != v172)
                  {
                    v180 = v181;
                  }

                  v182 = v17 * (*(v178 + 4 * (v172 - v533)) + *(v179 + 4 * (v541 - v534)) + *(a10 + 4 * v180));
                  v60 = v520;
                  v170 = v173;
                  v164 = (((v182 << 18) + 0x80000000) >> 32) + v176;
                  if (v164 > 2147483646)
                  {
                    goto LABEL_306;
                  }

                  goto LABEL_309;
                }
              }

              v38 = v541;
              v60 = v520;
              v170 = v173;
              LODWORD(v164) = v176;
              if (v176 > 2147483646)
              {
LABEL_306:
                LODWORD(v164) = 0x7FFFFFFF;
LABEL_311:
                v18 = v163;
                v19 = a11;
LABEL_312:
                v183 = (v139 >= v148) | (2 * (v155 >= v164));
                if (v183 > 1)
                {
                  if (v183 == 2)
                  {
                    if (v524)
                    {
                      goto LABEL_412;
                    }

                    v184 = v60 + 2;
                    if (v60 + 2 < v546 || v184 > v543)
                    {
                      goto LABEL_412;
                    }

                    v503 = v170;
                    v187 = v536 + ((v184 >> 3) * v535 + (v136 >> 3));
                    v186 = a14 ? (*(v537 + 40))(v187) : (*(v537 + 32))(v187);
                    if (v19)
                    {
                      v211 = v136 != v534;
                      v212 = 2;
                      if (v136 != v534)
                      {
                        v212 = 3;
                      }

                      if (v533 != v184)
                      {
                        v211 = v212;
                      }

                      v213 = (((v17 * (*(*v19 + 4 * (v184 - v533)) + *(v19[1] + 4 * (v136 - v534)) + *(a10 + 4 * v211))) << 18) + 0x80000000) >> 32;
                    }

                    else
                    {
                      v213 = 0;
                    }

                    v38 = v541;
                    v60 = v520;
                    v170 = v503;
                    v221 = v213 + v186;
                    if (v221 > 2147483646 || (LODWORD(v219) = v221, v220 = v136, v529 <= v221))
                    {
LABEL_412:
                      if (a8 < 2)
                      {
                        v135 = 1;
                      }

                      else
                      {
                        v222 = v156 - v60;
                        if (v156 != v60 && v170 != v38)
                        {
                          v223 = v38 + 2 * (v170 - v38);
                          if (v223 < v545)
                          {
                            v38 = v170;
                            v33 = v529;
                          }

                          else
                          {
                            v33 = v529;
                            if (v223 <= v544 && v156 >= v546 && v156 <= v543)
                            {
                              v224 = v170;
                              v225 = v536 + ((v156 >> 3) * v535 + (v223 >> 3));
                              if (a14)
                              {
                                v226 = (*(v537 + 40))(v225);
                                v227 = v226;
                                if (v19)
                                {
LABEL_421:
                                  v228 = v223 != v534;
                                  v229 = 2;
                                  if (v223 != v534)
                                  {
                                    v229 = 3;
                                  }

                                  if (v533 != v156)
                                  {
                                    v228 = v229;
                                  }

                                  v230 = (((v17 * (*(*v19 + 4 * (v156 - v533)) + *(v19[1] + 4 * (v223 - v534)) + *(a10 + 4 * v228))) << 18) + 0x80000000) >> 32;
                                  goto LABEL_524;
                                }
                              }

                              else
                              {
                                v226 = (*(v537 + 32))(v225);
                                v227 = v226;
                                if (v19)
                                {
                                  goto LABEL_421;
                                }
                              }

                              v230 = 0;
LABEL_524:
                              v60 = v520;
                              v170 = v224;
                              v288 = v230 + v227;
                              v38 = v224;
                              if (v288 <= 2147483646 && v529 > v288)
                              {
                                *a12 = v226;
                                *a13 = v548[0];
                                v33 = v288;
                                v38 = v223;
                              }

                              goto LABEL_622;
                            }

                            v38 = v170;
                          }

LABEL_622:
                          v135 = 1;
                          if (v170 < v545)
                          {
                            v60 = v156;
                            goto LABEL_428;
                          }

                          v22 = v535;
                          if (v170 > v544 || (v333 = v60 + 2 * v222, v333 < v546) || v333 > v543)
                          {
                            v60 = v156;
                            goto LABEL_429;
                          }

                          v334 = v38;
                          v335 = v536 + ((v333 >> 3) * v535 + (v170 >> 3));
                          v336 = v170;
                          v337 = v333;
                          if (a14)
                          {
                            v338 = (*(v537 + 40))(v335, v535, v170 & 7, v333 & 7, v538, v539, v548);
                          }

                          else
                          {
                            v338 = (*(v537 + 32))(v335, v535, v170 & 7, v333 & 7, v538, v539, v548);
                          }

                          if (v19)
                          {
                            v339 = v336;
                            v60 = v337;
                            v340 = v336 != v534;
                            v341 = 2;
                            if (v336 != v534)
                            {
                              v341 = 3;
                            }

                            if (v533 != v337)
                            {
                              v340 = v341;
                            }

                            v342 = (((v17 * (*(*v19 + 4 * (v337 - v533)) + *(v19[1] + 4 * (v336 - v534)) + *(a10 + 4 * v340))) << 18) + 0x80000000) >> 32;
                            v38 = v334;
                            v231 = a3;
                            v232 = a4;
                          }

                          else
                          {
                            v342 = 0;
                            v38 = v334;
                            v231 = a3;
                            v60 = v337;
                            v232 = a4;
                            v339 = v336;
                          }

                          v343 = v342 + v338;
                          if (v343 > 2147483646 || v33 <= v343)
                          {
                            v135 = 1;
                            v60 = v156;
                            goto LABEL_430;
                          }

LABEL_754:
                          *a12 = v338;
                          *a13 = v548[0];
                          v135 = 1;
                          v33 = v343;
                          v38 = v339;
                          goto LABEL_430;
                        }

                        if (v156 == v60 && v170 != v38)
                        {
                          v249 = v38 + 2 * (v170 - v38);
                          if (v249 < v545)
                          {
                            v289 = v60;
                            v38 = v170;
                            v33 = v529;
                          }

                          else
                          {
                            v33 = v529;
                            if (v249 > v544)
                            {
                              v289 = v60;
                              v38 = v170;
                            }

                            else
                            {
                              v250 = v60 + 2;
                              if (v60 + 2 < v546 || v250 > v543)
                              {
                                goto LABEL_709;
                              }

                              v251 = v170;
                              v252 = v536 + ((v250 >> 3) * v535 + (v249 >> 3));
                              v253 = a14 ? (*(v537 + 40))(v252) : (*(v537 + 32))(v252);
                              if (v19)
                              {
                                v363 = v249 != v534;
                                v364 = 2;
                                if (v249 != v534)
                                {
                                  v364 = 3;
                                }

                                if (v533 != v250)
                                {
                                  v363 = v364;
                                }

                                v365 = (((v17 * (*(*v19 + 4 * (v250 - v533)) + *(v19[1] + 4 * (v249 - v534)) + *(a10 + 4 * v363))) << 18) + 0x80000000) >> 32;
                              }

                              else
                              {
                                v365 = 0;
                              }

                              v60 = v520;
                              v170 = v251;
                              v366 = v365 + v253;
                              if (v366 <= 2147483646)
                              {
                                v289 = v520;
                                v38 = v170;
                                if (v529 > v366)
                                {
                                  *a12 = v253;
                                  *a13 = v548[0];
                                  v33 = v365 + v253;
                                  v289 = v250;
                                  v38 = v249;
                                }
                              }

                              else
                              {
LABEL_709:
                                v289 = v60;
                                v38 = v170;
                              }

                              v367 = v60 - 2;
                              if (v60 - 2 >= v546 && v367 <= v543)
                              {
                                v505 = v170;
                                v368 = v38;
                                v369 = v536 + ((v367 >> 3) * v535 + (v249 >> 3));
                                if (a14)
                                {
                                  v370 = (*(v537 + 40))(v369);
                                }

                                else
                                {
                                  v370 = (*(v537 + 32))(v369);
                                }

                                if (v19)
                                {
                                  v371 = v249 != v534;
                                  v372 = 2;
                                  if (v249 != v534)
                                  {
                                    v372 = 3;
                                  }

                                  if (v533 != v367)
                                  {
                                    v371 = v372;
                                  }

                                  v373 = (((v17 * (*(*v19 + 4 * (v367 - v533)) + *(v19[1] + 4 * (v249 - v534)) + *(a10 + 4 * v371))) << 18) + 0x80000000) >> 32;
                                }

                                else
                                {
                                  v373 = 0;
                                }

                                v38 = v368;
                                v60 = v520;
                                v170 = v505;
                                v374 = v373 + v370;
                                if (v374 <= 2147483646 && v33 > v374)
                                {
                                  *a12 = v370;
                                  *a13 = v548[0];
                                  v33 = v373 + v370;
                                  v289 = v367;
                                  v38 = v249;
                                }
                              }
                            }
                          }

                          v376 = v170 < v545 || v170 > v544;
                          if (v155 >= v164)
                          {
                            v22 = v535;
                            v377 = a14;
                            if (!v376)
                            {
                              v378 = v60 - 2;
                              goto LABEL_740;
                            }
                          }

                          else
                          {
                            v22 = v535;
                            v377 = a14;
                            if (!v376)
                            {
                              v378 = v60 + 2;
LABEL_740:
                              v135 = 1;
                              if (v378 >= v546 && v378 <= v543)
                              {
                                v379 = v38;
                                v380 = v536 + (v378 >> 3) * v22 + (v170 >> 3);
                                v381 = v170;
                                v382 = v378;
                                if (v377)
                                {
                                  v338 = (*(v537 + 40))(v380, v22, v170 & 7, v378 & 7, v538, v539, v548);
                                }

                                else
                                {
                                  v338 = (*(v537 + 32))(v380, v22, v170 & 7, v378 & 7, v538, v539, v548);
                                }

                                if (v19)
                                {
                                  v339 = v381;
                                  v60 = v382;
                                  v383 = v381 != v534;
                                  v384 = 2;
                                  if (v381 != v534)
                                  {
                                    v384 = 3;
                                  }

                                  if (v533 != v382)
                                  {
                                    v383 = v384;
                                  }

                                  v385 = (((v17 * (*(*v19 + 4 * (v382 - v533)) + *(v19[1] + 4 * (v381 - v534)) + *(a10 + 4 * v383))) << 18) + 0x80000000) >> 32;
                                  v38 = v379;
                                  v231 = a3;
                                  v232 = a4;
                                }

                                else
                                {
                                  v385 = 0;
                                  v38 = v379;
                                  v231 = a3;
                                  v60 = v382;
                                  v232 = a4;
                                  v339 = v381;
                                }

                                v343 = v385 + v338;
                                if (v343 > 2147483646 || v33 <= v343)
                                {
                                  v135 = 1;
                                  v60 = v289;
                                  goto LABEL_430;
                                }

                                goto LABEL_754;
                              }

LABEL_738:
                              v60 = v289;
                              goto LABEL_429;
                            }
                          }

                          v135 = 1;
                          goto LABEL_738;
                        }

                        v135 = 1;
                        v254 = v156 - v60;
                        if (v156 != v60)
                        {
                          v22 = v535;
                          if (v170 != v38)
                          {
                            v60 = v156;
                            v38 = v170;
                            v33 = v529;
                            goto LABEL_429;
                          }

                          if ((v507 & 1) != 0 || (v290 = v60 + 2 * v254, v290 < v546) || v290 > v543)
                          {
                            v255 = v156;
                          }

                          else
                          {
                            v291 = v536 + ((v290 >> 3) * v535 + (v145 >> 3));
                            if (a14)
                            {
                              v292 = (*(v537 + 40))(v291);
                            }

                            else
                            {
                              v292 = (*(v537 + 32))(v291);
                            }

                            if (v19)
                            {
                              v437 = v145 != v534;
                              v438 = 2;
                              if (v145 != v534)
                              {
                                v438 = 3;
                              }

                              if (v533 != v290)
                              {
                                v437 = v438;
                              }

                              v439 = (((v17 * (*(*v19 + 4 * (v290 - v533)) + *(v19[1] + 4 * (v145 - v534)) + *(a10 + 4 * v437))) << 18) + 0x80000000) >> 32;
                            }

                            else
                            {
                              v439 = 0;
                            }

                            v38 = v541;
                            v60 = v520;
                            v447 = v439 + v292;
                            v255 = v156;
                            if (v447 <= 2147483646 && v529 > v447)
                            {
                              *a12 = v292;
                              *a13 = v548[0];
                              v529 = v439 + v292;
                              v255 = v290;
                              v38 = v145;
                            }
                          }

                          if (v524)
                          {
                            v22 = v535;
                          }

                          else
                          {
                            v293 = v60 + 2 * v254;
                            v22 = v535;
                            if (v293 >= v546 && v293 <= v543)
                            {
                              v294 = v38;
                              v295 = v536 + ((v293 >> 3) * v535 + (v136 >> 3));
                              if (a14)
                              {
                                v296 = (*(v537 + 40))(v295, v535, v136 & 7, v293 & 7, v538, v539, v548);
                              }

                              else
                              {
                                v296 = (*(v537 + 32))(v295, v535, v136 & 7, v293 & 7, v538, v539, v548);
                              }

                              if (a11)
                              {
                                v440 = v136 != v534;
                                v441 = 2;
                                if (v136 != v534)
                                {
                                  v441 = 3;
                                }

                                if (v533 != v293)
                                {
                                  v440 = v441;
                                }

                                v442 = (((v17 * (*(*a11 + 4 * (v293 - v533)) + *(a11[1] + 4 * (v136 - v534)) + *(a10 + 4 * v440))) << 18) + 0x80000000) >> 32;
                              }

                              else
                              {
                                v442 = 0;
                              }

                              v38 = v294;
                              v448 = v442 + v296;
                              if (v448 <= 2147483646 && v529 > v448)
                              {
                                *a12 = v296;
                                *a13 = v548[0];
                                v529 = v442 + v296;
                                v255 = v293;
                                v38 = v136;
                              }
                            }
                          }

                          if (v183 > 1)
                          {
                            if (v183 != 3)
                            {
LABEL_474:
                              v256 = v507;
                              if (v156 < v546)
                              {
                                v256 = 1;
                              }

                              v135 = 1;
                              if ((v256 & 1) == 0)
                              {
                                v33 = v529;
                                if (v156 <= v543)
                                {
                                  v257 = v38;
                                  v258 = v536 + (v156 >> 3) * v22 + (v145 >> 3);
                                  v259 = a14 ? (*(v537 + 40))(v258, v22, v145 & 7, v156 & 7, v538, v539, v548) : (*(v537 + 32))(v258, v22, v145 & 7, v156 & 7, v538, v539, v548);
                                  if (a11)
                                  {
                                    v434 = v145 != v534;
                                    v435 = 2;
                                    if (v145 != v534)
                                    {
                                      v435 = 3;
                                    }

                                    if (v533 != v156)
                                    {
                                      v434 = v435;
                                    }

                                    v436 = (((v17 * (*(*a11 + 4 * (v156 - v533)) + *(a11[1] + 4 * (v145 - v534)) + *(a10 + 4 * v434))) << 18) + 0x80000000) >> 32;
                                  }

                                  else
                                  {
                                    v436 = 0;
                                  }

                                  v38 = v257;
                                  v446 = v436 + v259;
                                  if (v446 <= 2147483646 && v529 > v446)
                                  {
                                    *a12 = v259;
                                    *a13 = v548[0];
                                    v33 = v436 + v259;
                                    v60 = v156;
                                    v38 = v145;
                                    goto LABEL_429;
                                  }
                                }

LABEL_896:
                                v60 = v255;
                                goto LABEL_429;
                              }

                              goto LABEL_620;
                            }
                          }

                          else if (!v183)
                          {
                            goto LABEL_474;
                          }

                          v297 = v524;
                          if (v156 < v546)
                          {
                            v297 = 1;
                          }

                          v135 = 1;
                          if ((v297 & 1) == 0)
                          {
                            v33 = v529;
                            if (v156 <= v543)
                            {
                              v298 = v38;
                              v299 = v536 + (v156 >> 3) * v22 + (v136 >> 3);
                              v300 = a14 ? (*(v537 + 40))(v299, v22, v136 & 7, v156 & 7, v538, v539, v548) : (*(v537 + 32))(v299, v22, v136 & 7, v156 & 7, v538, v539, v548);
                              if (a11)
                              {
                                v443 = v136 != v534;
                                v444 = 2;
                                if (v136 != v534)
                                {
                                  v444 = 3;
                                }

                                if (v533 != v156)
                                {
                                  v443 = v444;
                                }

                                v445 = (((v17 * (*(*a11 + 4 * (v156 - v533)) + *(a11[1] + 4 * (v136 - v534)) + *(a10 + 4 * v443))) << 18) + 0x80000000) >> 32;
                              }

                              else
                              {
                                v445 = 0;
                              }

                              v38 = v298;
                              v449 = v445 + v300;
                              if (v449 <= 2147483646 && v529 > v449)
                              {
                                *a12 = v300;
                                *a13 = v548[0];
                                v33 = v445 + v300;
                                v60 = v156;
                                v38 = v136;
                                goto LABEL_429;
                              }
                            }

                            goto LABEL_896;
                          }

LABEL_620:
                          v60 = v255;
                          v33 = v529;
                          goto LABEL_429;
                        }
                      }

                      v60 = v156;
                      v38 = v170;
                      v33 = v529;
                      goto LABEL_428;
                    }

LABEL_411:
                    *a12 = v186;
                    *a13 = v548[0];
                    v529 = v219;
                    v156 = v184;
                    v170 = v220;
                    goto LABEL_412;
                  }

                  if (v507)
                  {
                    goto LABEL_412;
                  }

                  v184 = v60 + 2;
                  if (v60 + 2 < v546 || v184 > v543)
                  {
                    goto LABEL_412;
                  }

                  v504 = v170;
                  v189 = v536 + ((v184 >> 3) * v535 + (v145 >> 3));
                  if (a14)
                  {
                    v186 = (*(v537 + 40))(v189);
                  }

                  else
                  {
                    v186 = (*(v537 + 32))(v189);
                  }

                  v214 = v186;
                  if (v19)
                  {
                    goto LABEL_393;
                  }
                }

                else
                {
                  if (!v183)
                  {
                    if (v524)
                    {
                      goto LABEL_412;
                    }

                    v184 = v60 - 2;
                    if (v60 - 2 < v546 || v184 > v543)
                    {
                      goto LABEL_412;
                    }

                    v502 = v170;
                    v185 = v536 + ((v184 >> 3) * v535 + (v136 >> 3));
                    v186 = a14 ? (*(v537 + 40))(v185) : (*(v537 + 32))(v185);
                    if (v19)
                    {
                      v208 = v136 != v534;
                      v209 = 2;
                      if (v136 != v534)
                      {
                        v209 = 3;
                      }

                      if (v533 != v184)
                      {
                        v208 = v209;
                      }

                      v210 = (((v17 * (*(*v19 + 4 * (v184 - v533)) + *(v19[1] + 4 * (v136 - v534)) + *(a10 + 4 * v208))) << 18) + 0x80000000) >> 32;
                    }

                    else
                    {
                      v210 = 0;
                    }

                    v38 = v541;
                    v60 = v520;
                    v170 = v502;
                    v219 = v210 + v186;
                    if (v219 > 2147483646)
                    {
                      goto LABEL_412;
                    }

                    v220 = v136;
                    if (v529 <= v219)
                    {
                      goto LABEL_412;
                    }

                    goto LABEL_411;
                  }

                  if (v507)
                  {
                    goto LABEL_412;
                  }

                  v184 = v60 - 2;
                  if (v60 - 2 < v546 || v184 > v543)
                  {
                    goto LABEL_412;
                  }

                  v504 = v170;
                  v188 = v536 + ((v184 >> 3) * v535 + (v145 >> 3));
                  if (a14)
                  {
                    v186 = (*(v537 + 40))(v188);
                  }

                  else
                  {
                    v186 = (*(v537 + 32))(v188);
                  }

                  v214 = v186;
                  if (v19)
                  {
LABEL_393:
                    v215 = v145 != v534;
                    v216 = 2;
                    if (v145 != v534)
                    {
                      v216 = 3;
                    }

                    if (v533 != v184)
                    {
                      v215 = v216;
                    }

                    v217 = (((v17 * (*(*v19 + 4 * (v184 - v533)) + *(v19[1] + 4 * (v145 - v534)) + *(a10 + 4 * v215))) << 18) + 0x80000000) >> 32;
LABEL_401:
                    v38 = v541;
                    v60 = v520;
                    v170 = v504;
                    v218 = v217 + v214;
                    if (v218 > 2147483646)
                    {
                      goto LABEL_412;
                    }

                    LODWORD(v219) = v218;
                    v220 = v145;
                    if (v529 <= v218)
                    {
                      goto LABEL_412;
                    }

                    goto LABEL_411;
                  }
                }

                v217 = 0;
                goto LABEL_401;
              }

LABEL_309:
              if (v529 > v164)
              {
                *a12 = v175;
                *a13 = v548[0];
                v529 = v164;
                v156 = v172;
                v170 = v38;
              }

              goto LABEL_311;
            }

            goto LABEL_295;
          }
        }

        v38 = v541;
        v60 = v520;
        v170 = v157;
        LODWORD(v155) = v160;
        if (v160 > 2147483646)
        {
LABEL_274:
          v163 = v18;
          LODWORD(v155) = 0x7FFFFFFF;
LABEL_296:
          v156 = v60;
          goto LABEL_297;
        }

        goto LABEL_293;
      }
    }

    v38 = v541;
    v60 = v520;
    v170 = v149;
    LODWORD(v148) = v152;
    if (v152 > 2147483646)
    {
LABEL_258:
      LODWORD(v148) = 0x7FFFFFFF;
      goto LABEL_263;
    }

    goto LABEL_261;
  }

  v135 = 2;
LABEL_428:
  v22 = v535;
LABEL_429:
  v231 = a3;
  v232 = a4;
LABEL_430:
  if (!v232)
  {
    goto LABEL_456;
  }

  v233 = *v231;
  if (v233 < 0)
  {
    v233 = -v233;
  }

  if (v233 > 0x3F)
  {
    goto LABEL_456;
  }

  v234 = v231[1];
  if (v234 < 0)
  {
    v234 = -v234;
  }

  if (a7 || v234 > 0x3Fu)
  {
LABEL_456:
    LOWORD(v247) = v60;
    goto LABEL_457;
  }

  v235 = v38 - v135;
  v236 = v38 - v135 >= v545 && v235 <= v544;
  v237 = !v236;
  v527 = v237;
  LODWORD(v238) = 0x7FFFFFFF;
  v542 = v38;
  v522 = v60;
  if (!v236 || v60 < v546 || v60 > v543)
  {
    goto LABEL_485;
  }

  v239 = v536 + (v60 >> 3) * v22 + (v235 >> 3);
  if (a14)
  {
    v240 = (*(v537 + 40))(v239, v22, v235 & 7, v60 & 7, v538, v539, v548);
    v241 = a11;
    v242 = v240;
    if (a11)
    {
      goto LABEL_450;
    }
  }

  else
  {
    v240 = (*(v537 + 32))(v239, v22, v235 & 7, v60 & 7, v538, v539, v548);
    v241 = a11;
    v242 = v240;
    if (a11)
    {
LABEL_450:
      v60 = v522;
      v243 = *v241;
      v244 = v241[1];
      v245 = v235 != v534;
      v246 = 2;
      if (v235 != v534)
      {
        v246 = 3;
      }

      if (v533 != v522)
      {
        v245 = v246;
      }

      v38 = v542;
      v238 = ((((v17 * (*(v243 + 4 * (v522 - v533)) + *(v244 + 4 * (v235 - v534)) + *(a10 + 4 * v245))) << 18) + 0x80000000) >> 32) + v242;
      if (v238 > 2147483646)
      {
        goto LABEL_455;
      }

      goto LABEL_483;
    }
  }

  v38 = v542;
  v60 = v522;
  LODWORD(v238) = v242;
  if (v242 > 2147483646)
  {
LABEL_455:
    LODWORD(v238) = 0x7FFFFFFF;
    goto LABEL_485;
  }

LABEL_483:
  if (v33 > v238)
  {
    *a12 = v240;
    *a13 = v548[0];
    LODWORD(v33) = v238;
    v260 = v235;
    goto LABEL_486;
  }

LABEL_485:
  v260 = v38;
LABEL_486:
  v261 = v135 + v38;
  v262 = v135 + v38 >= v545 && v261 <= v544;
  v263 = !v262;
  v525 = v263;
  LODWORD(v264) = 0x7FFFFFFF;
  if (!v262 || v60 < v546 || v60 > v543)
  {
    goto LABEL_508;
  }

  v265 = v260;
  v266 = v536 + (v60 >> 3) * v22 + (v261 >> 3);
  if (a14)
  {
    v267 = (*(v537 + 40))(v266, v22, v261 & 7, v60 & 7, v538, v539, v548);
    v268 = a11;
    v269 = v267;
    if (a11)
    {
      goto LABEL_498;
    }
  }

  else
  {
    v267 = (*(v537 + 32))(v266, v22, v261 & 7, v60 & 7, v538, v539, v548);
    v268 = a11;
    v269 = v267;
    if (a11)
    {
LABEL_498:
      v60 = v522;
      v270 = *v268;
      v271 = v268[1];
      v272 = v261 != v534;
      v273 = 2;
      if (v261 != v534)
      {
        v273 = 3;
      }

      if (v533 != v522)
      {
        v272 = v273;
      }

      v274 = v17 * (*(v270 + 4 * (v522 - v533)) + *(v271 + 4 * (v261 - v534)) + *(a10 + 4 * v272));
      v38 = v542;
      v260 = v265;
      v264 = (((v274 << 18) + 0x80000000) >> 32) + v269;
      if (v264 > 2147483646)
      {
        goto LABEL_503;
      }

      goto LABEL_506;
    }
  }

  v38 = v542;
  v60 = v522;
  v260 = v265;
  LODWORD(v264) = v269;
  if (v269 <= 2147483646)
  {
LABEL_506:
    if (v33 > v264)
    {
      *a12 = v267;
      *a13 = v548[0];
      v530 = v264;
      v260 = v261;
      goto LABEL_509;
    }

LABEL_508:
    v530 = v33;
    goto LABEL_509;
  }

LABEL_503:
  v530 = v33;
  LODWORD(v264) = 0x7FFFFFFF;
LABEL_509:
  LODWORD(v275) = 0x7FFFFFFF;
  if (v38 < v545 || v38 > v544)
  {
    v247 = v60;
    v287 = 0x7FFFFFFF;
    goto LABEL_569;
  }

  v247 = v60 - v135;
  LODWORD(v275) = 0x7FFFFFFF;
  if (v60 - v135 < v546 || v247 > v543)
  {
    goto LABEL_549;
  }

  v276 = v260;
  v277 = v536 + (v247 >> 3) * v22 + (v38 >> 3);
  if (a14)
  {
    v278 = (*(v537 + 40))(v277, v22, v38 & 7, v247 & 7, v538, v539, v548);
    v279 = v278;
    v280 = a11;
    if (a11)
    {
      goto LABEL_515;
    }
  }

  else
  {
    v278 = (*(v537 + 32))(v277, v22, v38 & 7, v247 & 7, v538, v539, v548);
    v279 = v278;
    v280 = a11;
    if (a11)
    {
LABEL_515:
      v38 = v542;
      v281 = *v280;
      v282 = v280[1];
      v283 = v542 != v534;
      v284 = 2;
      if (v542 != v534)
      {
        v284 = 3;
      }

      if (v533 != v247)
      {
        v283 = v284;
      }

      v285 = v17 * (*(v281 + 4 * (v247 - v533)) + *(v282 + 4 * (v542 - v534)) + *(a10 + 4 * v283));
      v60 = v522;
      v260 = v276;
      v275 = (((v285 << 18) + 0x80000000) >> 32) + v279;
      if (v275 > 2147483646)
      {
        goto LABEL_520;
      }

      goto LABEL_547;
    }
  }

  v38 = v542;
  v60 = v522;
  v260 = v276;
  LODWORD(v275) = v279;
  if (v279 > 2147483646)
  {
LABEL_520:
    v286 = v18;
    LODWORD(v275) = 0x7FFFFFFF;
LABEL_550:
    v247 = v60;
    goto LABEL_551;
  }

LABEL_547:
  if (v530 <= v275)
  {
LABEL_549:
    v286 = v18;
    goto LABEL_550;
  }

  v286 = v18;
  *a12 = v278;
  *a13 = v548[0];
  v530 = v275;
  v260 = v38;
LABEL_551:
  v301 = v135 + v60;
  v287 = 0x7FFFFFFF;
  if (v135 + v60 < v546 || v301 > v543)
  {
    v18 = v286;
    v22 = v535;
    goto LABEL_569;
  }

  v514 = v261;
  v302 = v275;
  v303 = v235;
  v304 = v260;
  v305 = v536 + ((v301 >> 3) * v535 + (v38 >> 3));
  if (a14)
  {
    v306 = (*(v537 + 40))(v305);
    v307 = v306;
    v308 = a11;
    if (a11)
    {
LABEL_555:
      v38 = v542;
      v309 = *v308;
      v310 = v308[1];
      v311 = v542 != v534;
      v312 = 2;
      if (v542 != v534)
      {
        v312 = 3;
      }

      if (v533 != v301)
      {
        v311 = v312;
      }

      v313 = (((v17 * (*(v309 + 4 * (v301 - v533)) + *(v310 + 4 * (v542 - v534)) + *(a10 + 4 * v311))) << 18) + 0x80000000) >> 32;
      goto LABEL_563;
    }
  }

  else
  {
    v306 = (*(v537 + 32))(v305);
    v307 = v306;
    v308 = a11;
    if (a11)
    {
      goto LABEL_555;
    }
  }

  v313 = 0;
  v38 = v542;
LABEL_563:
  v60 = v522;
  v260 = v304;
  v287 = v313 + v307;
  v235 = v303;
  if (v313 + v307 <= 2147483646)
  {
    LODWORD(v275) = v302;
    if (v530 > v287)
    {
      *a12 = v306;
      *a13 = v548[0];
      v530 = v313 + v307;
      v247 = v301;
      v260 = v38;
    }

    v18 = v286;
    v22 = v535;
  }

  else
  {
    v287 = 0x7FFFFFFF;
    v18 = v286;
    v22 = v535;
    LODWORD(v275) = v302;
  }

  v261 = v514;
LABEL_569:
  v314 = (v238 >= v264) | (2 * (v275 >= v287));
  if (v314 <= 1)
  {
    if (!v314)
    {
      if (v527)
      {
        goto LABEL_791;
      }

      v315 = v60 - v135;
      if (v60 - v135 < v546 || v315 > v543)
      {
        goto LABEL_791;
      }

      v509 = v287;
      v515 = v260;
      v316 = v536 + (v315 >> 3) * v22 + (v235 >> 3);
      v317 = a14 ? (*(v537 + 40))(v316, v22, v235 & 7, v315 & 7, v538, v539, v548) : (*(v537 + 32))(v316, v22, v235 & 7, v315 & 7, v538, v539, v548);
      if (a11)
      {
        v386 = v235 != v534;
        v387 = 2;
        if (v235 != v534)
        {
          v387 = 3;
        }

        if (v533 != v315)
        {
          v386 = v387;
        }

        v388 = (((v17 * (*(*a11 + 4 * (v315 - v533)) + *(a11[1] + 4 * (v235 - v534)) + *(a10 + 4 * v386))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v388 = 0;
      }

      v38 = v542;
      v60 = v522;
      v260 = v515;
      v287 = v509;
      v400 = v388 + v317;
      if (v400 > 2147483646)
      {
        goto LABEL_791;
      }

      v401 = v235;
      if (v530 <= v400)
      {
        goto LABEL_791;
      }

LABEL_790:
      *a12 = v317;
      *a13 = v548[0];
      v530 = v400;
      v247 = v315;
      v260 = v401;
      goto LABEL_791;
    }

    if (v525)
    {
      goto LABEL_791;
    }

    v315 = v60 - v135;
    if (v60 - v135 < v546 || v315 > v543)
    {
      goto LABEL_791;
    }

    v511 = v287;
    v517 = v260;
    v319 = v536 + (v315 >> 3) * v22 + (v261 >> 3);
    if (a14)
    {
      v317 = (*(v537 + 40))(v319, v22, v261 & 7, v315 & 7, v538, v539, v548);
    }

    else
    {
      v317 = (*(v537 + 32))(v319, v22, v261 & 7, v315 & 7, v538, v539, v548);
    }

    v392 = v317;
    v393 = a11;
    if (a11)
    {
      goto LABEL_772;
    }

    goto LABEL_779;
  }

  if (v314 != 2)
  {
    if (v525)
    {
      goto LABEL_791;
    }

    v315 = v135 + v60;
    if (v135 + v60 < v546 || v315 > v543)
    {
      goto LABEL_791;
    }

    v511 = v287;
    v517 = v260;
    v320 = v536 + (v315 >> 3) * v22 + (v261 >> 3);
    if (a14)
    {
      v317 = (*(v537 + 40))(v320, v22, v261 & 7, v315 & 7, v538, v539, v548);
    }

    else
    {
      v317 = (*(v537 + 32))(v320, v22, v261 & 7, v315 & 7, v538, v539, v548);
    }

    v392 = v317;
    v393 = a11;
    if (a11)
    {
LABEL_772:
      v394 = *v393;
      v395 = v393[1];
      v396 = v261 != v534;
      v397 = 2;
      if (v261 != v534)
      {
        v397 = 3;
      }

      if (v533 != v315)
      {
        v396 = v397;
      }

      v398 = (((v17 * (*(v394 + 4 * (v315 - v533)) + *(v395 + 4 * (v261 - v534)) + *(a10 + 4 * v396))) << 18) + 0x80000000) >> 32;
      goto LABEL_780;
    }

LABEL_779:
    v398 = 0;
LABEL_780:
    v38 = v542;
    v60 = v522;
    v260 = v517;
    v287 = v511;
    v399 = v398 + v392;
    if (v399 > 2147483646)
    {
      goto LABEL_791;
    }

    LODWORD(v400) = v399;
    v401 = v261;
LABEL_789:
    if (v530 <= v399)
    {
      goto LABEL_791;
    }

    goto LABEL_790;
  }

  if ((v527 & 1) == 0)
  {
    v315 = v135 + v60;
    if (v135 + v60 >= v546 && v315 <= v543)
    {
      v510 = v287;
      v516 = v260;
      v318 = v536 + (v315 >> 3) * v22 + (v235 >> 3);
      v317 = a14 ? (*(v537 + 40))(v318, v22, v235 & 7, v315 & 7, v538, v539, v548) : (*(v537 + 32))(v318, v22, v235 & 7, v315 & 7, v538, v539, v548);
      if (a11)
      {
        v389 = v235 != v534;
        v390 = 2;
        if (v235 != v534)
        {
          v390 = 3;
        }

        if (v533 != v315)
        {
          v389 = v390;
        }

        v391 = (((v17 * (*(*a11 + 4 * (v315 - v533)) + *(a11[1] + 4 * (v235 - v534)) + *(a10 + 4 * v389))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v391 = 0;
      }

      v38 = v542;
      v60 = v522;
      v260 = v516;
      v287 = v510;
      v399 = v391 + v317;
      if (v399 <= 2147483646)
      {
        LODWORD(v400) = v399;
        v401 = v235;
        goto LABEL_789;
      }
    }
  }

LABEL_791:
  if (a8 < 2)
  {
    goto LABEL_821;
  }

  v402 = v247 - v60;
  if (v247 != v60 && v260 != v38)
  {
    v403 = v38 + 2 * (v260 - v38);
    if (v403 < v545)
    {
      LOWORD(v38) = v260;
      v33 = v530;
      v404 = a14;
    }

    else
    {
      v33 = v530;
      v404 = a14;
      if (v403 > v544 || v247 < v546 || v247 > v543)
      {
        LOWORD(v38) = v260;
      }

      else
      {
        v405 = v260;
        v406 = v536 + (v247 >> 3) * v22 + (v403 >> 3);
        if (a14)
        {
          v407 = (*(v537 + 40))(v406, v22, v403 & 7, v247 & 7, v538, v539, v548, a14);
        }

        else
        {
          v407 = (*(v537 + 32))(v406, v22, v403 & 7, v247 & 7, v538, v539, v548);
        }

        if (a11)
        {
          v422 = v403 != v534;
          v423 = 2;
          if (v403 != v534)
          {
            v423 = 3;
          }

          if (v533 != v247)
          {
            v422 = v423;
          }

          v424 = (((v17 * (*(*a11 + 4 * (v247 - v533)) + *(a11[1] + 4 * (v403 - v534)) + *(a10 + 4 * v422))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v424 = 0;
        }

        v60 = v522;
        v260 = v405;
        v425 = v424 + v407;
        LOWORD(v38) = v405;
        if (v425 <= 2147483646 && v530 > v425)
        {
          *a12 = v407;
          *a13 = v548[0];
          v33 = v424 + v407;
          LOWORD(v38) = v403;
        }
      }
    }

    if (v260 < v545)
    {
      goto LABEL_457;
    }

    if (v260 > v544)
    {
      goto LABEL_457;
    }

    v450 = v60 + 2 * v402;
    if (v450 < v546 || v450 > v543)
    {
      goto LABEL_457;
    }

    v451 = v38;
    v452 = v536 + ((v450 >> 3) * v535 + (v260 >> 3));
    v453 = v260;
    v421 = v404 ? (*(v537 + 40))(v452) : (*(v537 + 32))(v452);
    if (a11)
    {
      LOWORD(v235) = v453;
      v454 = v453 != v534;
      v455 = 2;
      if (v453 != v534)
      {
        v455 = 3;
      }

      if (v533 != v450)
      {
        v454 = v455;
      }

      v456 = (((v17 * (*(*a11 + 4 * (v450 - v533)) + *(a11[1] + 4 * (v453 - v534)) + *(a10 + 4 * v454))) << 18) + 0x80000000) >> 32;
      LOWORD(v38) = v451;
    }

    else
    {
      v456 = 0;
      LOWORD(v38) = v451;
      LOWORD(v235) = v453;
    }

    v457 = v456 + v421;
    if (v457 > 2147483646 || v33 <= v457)
    {
      goto LABEL_457;
    }

LABEL_1022:
    *a12 = v421;
    *a13 = v548[0];
    v33 = v457;
    LOWORD(v247) = v450;
    LOWORD(v38) = v235;
    goto LABEL_457;
  }

  if (v247 != v60 || v260 == v38)
  {
    if (v247 != v60)
    {
      v33 = v530;
      if (v260 != v38)
      {
        LOWORD(v38) = v260;
        goto LABEL_457;
      }

      v415 = v60 + 2 * (v247 - v60);
      if ((v525 & 1) != 0 || v415 < v546 || v415 > v543)
      {
        v416 = v247;
      }

      else
      {
        v426 = v536 + ((v415 >> 3) * v535 + (v261 >> 3));
        if (a14)
        {
          v427 = (*(v537 + 40))(v426);
        }

        else
        {
          v427 = (*(v537 + 32))(v426);
        }

        if (a11)
        {
          v487 = v261 != v534;
          v488 = 2;
          if (v261 != v534)
          {
            v488 = 3;
          }

          if (v533 != v415)
          {
            v487 = v488;
          }

          v489 = (((v17 * (*(*a11 + 4 * (v415 - v533)) + *(a11[1] + 4 * (v261 - v534)) + *(a10 + 4 * v487))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v489 = 0;
        }

        LOWORD(v38) = v542;
        v496 = v489 + v427;
        v416 = v247;
        if (v496 <= 2147483646 && v530 > v496)
        {
          *a12 = v427;
          *a13 = v548[0];
          v33 = v489 + v427;
          v416 = v415;
          LOWORD(v38) = v261;
        }
      }

      if ((v527 & 1) == 0 && v415 >= v546 && v415 <= v543)
      {
        v428 = v38;
        v429 = v536 + ((v415 >> 3) * v535 + (v235 >> 3));
        if (a14)
        {
          v430 = (*(v537 + 40))(v429);
        }

        else
        {
          v430 = (*(v537 + 32))(v429);
        }

        if (a11)
        {
          v490 = v235 != v534;
          v491 = 2;
          if (v235 != v534)
          {
            v491 = 3;
          }

          if (v533 != v415)
          {
            v490 = v491;
          }

          v492 = (((v17 * (*(*a11 + 4 * (v415 - v533)) + *(a11[1] + 4 * (v235 - v534)) + *(a10 + 4 * v490))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v492 = 0;
        }

        LOWORD(v38) = v428;
        v497 = v492 + v430;
        if (v497 <= 2147483646 && v33 > v497)
        {
          *a12 = v430;
          *a13 = v548[0];
          v33 = v492 + v430;
          v416 = v415;
          LOWORD(v38) = v235;
        }
      }

      if (v314 > 1)
      {
        v417 = v535;
        if (v314 != 3)
        {
LABEL_815:
          v418 = v525;
          if (v247 < v546)
          {
            v418 = 1;
          }

          if ((v418 & 1) == 0 && v247 <= v543)
          {
            v419 = v38;
            v420 = v536 + ((v247 >> 3) * v417 + (v261 >> 3));
            v421 = a14 ? (*(v537 + 40))(v420) : (*(v537 + 32))(v420);
            if (a11)
            {
              v484 = v261 != v534;
              v485 = 2;
              if (v261 != v534)
              {
                v485 = 3;
              }

              if (v533 != v247)
              {
                v484 = v485;
              }

              v486 = (((v17 * (*(*a11 + 4 * (v247 - v533)) + *(a11[1] + 4 * (v261 - v534)) + *(a10 + 4 * v484))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v486 = 0;
            }

            LOWORD(v38) = v419;
            v479 = v486 + v421;
            if (v479 <= 2147483646)
            {
              v457 = v479;
              LOWORD(v450) = v247;
              LOWORD(v235) = v261;
LABEL_1020:
              LOWORD(v247) = v416;
LABEL_1021:
              if (v33 <= v479)
              {
                goto LABEL_457;
              }

              goto LABEL_1022;
            }
          }

          goto LABEL_1023;
        }
      }

      else
      {
        v417 = v535;
        if (!v314)
        {
          goto LABEL_815;
        }
      }

      v431 = v527;
      if (v247 < v546)
      {
        v431 = 1;
      }

      if ((v431 & 1) == 0 && v247 <= v543)
      {
        v432 = v38;
        v433 = v536 + ((v247 >> 3) * v417 + (v235 >> 3));
        v421 = a14 ? (*(v537 + 40))(v433) : (*(v537 + 32))(v433);
        if (a11)
        {
          v493 = v235 != v534;
          v494 = 2;
          if (v235 != v534)
          {
            v494 = 3;
          }

          if (v533 != v247)
          {
            v493 = v494;
          }

          v495 = (((v17 * (*(*a11 + 4 * (v247 - v533)) + *(a11[1] + 4 * (v235 - v534)) + *(a10 + 4 * v493))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v495 = 0;
        }

        LOWORD(v38) = v432;
        v479 = v495 + v421;
        if (v479 <= 2147483646)
        {
          v457 = v479;
          LOWORD(v450) = v247;
          goto LABEL_1020;
        }
      }

LABEL_1023:
      LOWORD(v247) = v416;
      goto LABEL_457;
    }

LABEL_821:
    LOWORD(v38) = v260;
    v33 = v530;
    goto LABEL_457;
  }

  v408 = v38 + 2 * (v260 - v38);
  if (v408 < v545)
  {
    LOWORD(v247) = v60;
    LOWORD(v38) = v260;
    v409 = a14;
  }

  else
  {
    v409 = a14;
    if (v408 > v544)
    {
      LOWORD(v247) = v60;
      LOWORD(v38) = v260;
    }

    else
    {
      v410 = v135 + v60;
      if (v135 + v60 < v546 || v410 > v543)
      {
        goto LABEL_924;
      }

      v411 = v287;
      v412 = v260;
      v413 = v536 + (v410 >> 3) * v22 + (v408 >> 3);
      v414 = a14 ? (*(v537 + 40))(v413, v22, v408 & 7, v410 & 7, v538, v539, v548, a14) : (*(v537 + 32))(v413, v22, v408 & 7, v410 & 7, v538, v539, v548);
      if (a11)
      {
        v458 = v408 != v534;
        v459 = 2;
        if (v408 != v534)
        {
          v459 = 3;
        }

        if (v533 != v410)
        {
          v458 = v459;
        }

        v460 = (((v17 * (*(*a11 + 4 * (v410 - v533)) + *(a11[1] + 4 * (v408 - v534)) + *(a10 + 4 * v458))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v460 = 0;
      }

      v60 = v522;
      v260 = v412;
      v287 = v411;
      v461 = v460 + v414;
      if (v461 <= 2147483646)
      {
        LOWORD(v247) = v522;
        LOWORD(v38) = v412;
        if (v530 > v461)
        {
          *a12 = v414;
          *a13 = v548[0];
          v530 = v460 + v414;
          LOWORD(v247) = v410;
          LOWORD(v38) = v408;
        }
      }

      else
      {
LABEL_924:
        LOWORD(v247) = v60;
        LOWORD(v38) = v260;
      }

      v462 = v60 - v135;
      if (v60 - v135 >= v546 && v462 <= v543)
      {
        v512 = v287;
        v518 = v260;
        v463 = v38;
        v464 = v536 + (v462 >> 3) * v22 + (v408 >> 3);
        if (a14)
        {
          v465 = (*(v537 + 40))(v464, v22, v408 & 7, v462 & 7, v538, v539, v548, a14);
        }

        else
        {
          v465 = (*(v537 + 32))(v464, v22, v408 & 7, v462 & 7, v538, v539, v548);
        }

        if (a11)
        {
          v466 = v408 != v534;
          v467 = 2;
          if (v408 != v534)
          {
            v467 = 3;
          }

          if (v533 != v462)
          {
            v466 = v467;
          }

          v468 = (((v17 * (*(*a11 + 4 * (v462 - v533)) + *(a11[1] + 4 * (v408 - v534)) + *(a10 + 4 * v466))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v468 = 0;
        }

        LOWORD(v38) = v463;
        v60 = v522;
        v260 = v518;
        v287 = v512;
        v469 = v468 + v465;
        if (v469 <= 2147483646 && v530 > v469)
        {
          *a12 = v465;
          *a13 = v548[0];
          v530 = v468 + v465;
          LOWORD(v247) = v462;
          LOWORD(v38) = v408;
        }
      }
    }
  }

  v471 = v260 < v545 || v260 > v544;
  if (v275 >= v287)
  {
    v33 = v530;
    v472 = a11;
    if (v471)
    {
      goto LABEL_457;
    }

    v450 = v60 - v135;
  }

  else
  {
    v33 = v530;
    v472 = a11;
    if (v471)
    {
      goto LABEL_457;
    }

    v450 = v135 + v60;
  }

  if (v450 >= v546 && v450 <= v543)
  {
    v473 = v38;
    v474 = v536 + ((v450 >> 3) * v535 + (v260 >> 3));
    v475 = v260;
    v421 = v409 ? (*(v537 + 40))(v474) : (*(v537 + 32))(v474);
    if (v472)
    {
      LOWORD(v235) = v475;
      v476 = v475 != v534;
      v477 = 2;
      if (v475 != v534)
      {
        v477 = 3;
      }

      if (v533 != v450)
      {
        v476 = v477;
      }

      v478 = (((v17 * (*(*v472 + 4 * (v450 - v533)) + *(v472[1] + 4 * (v475 - v534)) + *(a10 + 4 * v476))) << 18) + 0x80000000) >> 32;
      LOWORD(v38) = v473;
    }

    else
    {
      v478 = 0;
      LOWORD(v38) = v473;
      LOWORD(v235) = v475;
    }

    v479 = v478 + v421;
    if (v479 <= 2147483646)
    {
      v457 = v479;
      goto LABEL_1021;
    }
  }

LABEL_457:
  *v18 = v247;
  v18[1] = v38;
  return v33;
}

int *get_cost_surf_min(int *result, _DWORD *a2, _DWORD *a3, char a4)
{
  v4 = result[1];
  v6 = result[2];
  v5 = result[3];
  v7 = v4 - v5;
  v8 = 2 * *result;
  v9 = v4 - v8 + v5;
  v10 = result[4];
  v11 = v10 - v6;
  v12 = v10 - v8 + v6;
  v13 = a4 - 1;
  v14 = v7 << (a4 - 1);
  if ((v9 ^ v14) >= 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = -2;
  }

  *a3 = (v9 / v15 + v14) / v9;
  v16 = v11 << v13;
  if (((v11 << v13) ^ v12) >= 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = -2;
  }

  *a2 = (v12 / v17 + v16) / v12;
  return result;
}

uint64_t vp9_find_best_sub_pixel_tree_pruned_more(uint64_t a1, __int16 *a2, unsigned __int16 *a3, int a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, int *a9, uint64_t a10, uint64_t *a11, unsigned int *a12, _DWORD *a13, uint8x16_t *a14, int a15, int a16)
{
  v17 = a5;
  v18 = *(a1 + 8216);
  v19 = *(a1 + 8224);
  v527[0] = 0;
  v20 = *(a1 + 24952);
  v21 = *a2;
  v22 = a2[1];
  v23 = *a3;
  v24 = a3[1];
  v25 = 8 * *(a1 + 25848);
  if (v25 <= v24 - 8184)
  {
    v25 = v24 - 8184;
  }

  v26 = 8 * *(a1 + 25852);
  if (v26 >= v24 + 8184)
  {
    v26 = v24 + 8184;
  }

  v27 = v23 - 8184;
  if (8 * *(a1 + 25856) > v23 - 8184)
  {
    v27 = 8 * *(a1 + 25856);
  }

  v28 = 8 * *(a1 + 25860);
  if (v28 >= v23 + 8184)
  {
    v28 = v23 + 8184;
  }

  if (v25 <= -16383)
  {
    v25 = -16383;
  }

  v524 = v25;
  if (v26 >= 16382)
  {
    v26 = 16382;
  }

  v523 = v26;
  if (v27 <= -16383)
  {
    v27 = -16383;
  }

  v525 = v27;
  v495 = (v20 * v21);
  v29 = v495 + v22;
  v504 = *a3;
  v505 = a3[1];
  v30 = 8 * v21;
  if (v28 >= 16382)
  {
    v28 = 16382;
  }

  v522 = v28;
  *a2 = v30;
  v518 = 8 * v22;
  a2[1] = 8 * v22;
  v515 = v20;
  v506 = a5;
  v512 = a6;
  v513 = v18;
  v514 = v19;
  v511 = *(a1 + 24944);
  v31 = setup_center_error(a1 + 24912, a2, a3, a5, a6, v18, v19, v511, v20, a14, a15, a16, v29, a10, a11, a13, a12);
  if (a9)
  {
    v32 = *a9;
    if (*a9 != 0x7FFFFFFF)
    {
      v33 = a9[1];
      if (v33 != 0x7FFFFFFF)
      {
        v34 = a9[2];
        if (v34 != 0x7FFFFFFF)
        {
          v35 = a9[3];
          if (v35 != 0x7FFFFFFF)
          {
            v115 = a9[4];
            if (v32 < v115 && v32 < v35 && v32 < v34 && v32 < v33 && v115 != 0x7FFFFFFF)
            {
              v526 = 0;
              get_cost_surf_min(a9, &v526 + 1, &v526, 1);
              if (!v526)
              {
                v124 = v20;
                v77 = v30;
                v36 = 8 * v22;
                goto LABEL_274;
              }

              v77 = v30;
              v36 = 8 * v22;
              v116 = 4 * v526 + v518;
              if (v116 >= v524 && v116 <= v523)
              {
                v117 = 4 * HIDWORD(v526) + v30;
                if (v117 >= v525 && v117 <= v522)
                {
                  v118 = v511 + ((v117 >> 3) * v20 + (v116 >> 3));
                  if (a14)
                  {
                    v119 = (*(v512 + 40))(v118);
                  }

                  else
                  {
                    v119 = (*(v512 + 32))(v118);
                  }

                  if (a11)
                  {
                    v459 = v116 != v505;
                    v460 = 2;
                    if (v116 != v505)
                    {
                      v460 = 3;
                    }

                    if (v504 != v117)
                    {
                      v459 = v460;
                    }

                    v461 = (((v506 * (*(*a11 + 4 * (v117 - v504)) + *(a11[1] + 4 * (v116 - v505)) + *(a10 + 4 * v459))) << 18) + 0x80000000) >> 32;
                  }

                  else
                  {
                    v461 = 0;
                  }

                  v124 = v20;
                  v77 = v30;
                  v36 = 8 * v22;
                  v462 = v461 + v119;
                  if (v462 <= 2147483646 && v31 > v462)
                  {
                    *a12 = v119;
                    *a13 = v527[0];
                    v31 = v461 + v119;
                    v77 = v117;
                    v36 = v116;
                  }

                  goto LABEL_274;
                }
              }

LABEL_215:
              v124 = v515;
              goto LABEL_274;
            }
          }
        }
      }
    }
  }

  v36 = 8 * v22;
  v37 = v518 - 4;
  v38 = v518 - 4 >= v524 && v37 <= v523;
  v39 = !v38;
  v493 = v39;
  LODWORD(v40) = 0x7FFFFFFF;
  if (!v38)
  {
    v76 = 8 * v22;
    v77 = v30;
    goto LABEL_45;
  }

  v77 = v30;
  if (v30 < v525 || v30 > v522)
  {
    goto LABEL_44;
  }

  v41 = v495 + (v37 >> 3);
  if (a14)
  {
    v42 = (*(v512 + 40))(v511 + v41, v515, 4, 0, v513, v514, v527, a14);
    v43 = v42;
    if (a11)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v42 = (*(v512 + 32))(v511 + v41, v515, 4, 0, v513, v514, v527);
    v43 = v42;
    if (a11)
    {
LABEL_34:
      v44 = (v518 - 4) != v505;
      v45 = 2;
      if ((v518 - 4) != v505)
      {
        v45 = 3;
      }

      if (v504 != v30)
      {
        v44 = v45;
      }

      v77 = v30;
      v36 = 8 * v22;
      v40 = ((((v17 * (*(*a11 + 4 * (v30 - v504)) + *(a11[1] + 4 * (v37 - v505)) + *(a10 + 4 * v44))) << 18) + 0x80000000) >> 32) + v43;
      if (v40 > 2147483646)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }
  }

  v77 = v30;
  v36 = 8 * v22;
  v40 = v43;
  if (v43 > 2147483646)
  {
LABEL_39:
    LODWORD(v40) = 0x7FFFFFFF;
    goto LABEL_44;
  }

LABEL_42:
  if (v31 > v40)
  {
    *a12 = v42;
    *a13 = v527[0];
    v31 = v40;
    v76 = v518 - 4;
    goto LABEL_45;
  }

LABEL_44:
  v76 = v36;
LABEL_45:
  v46 = v36 | 4;
  v47 = (v36 | 4) >= v524 && v46 <= v523;
  v48 = !v47;
  v492 = v48;
  LODWORD(v49) = 0x7FFFFFFF;
  if (!v47 || v30 < v525 || v30 > v522)
  {
    goto LABEL_67;
  }

  if (a14)
  {
    v50 = (*(v512 + 40))(v511 + v29, v515, 4, 0, v513, v514, v527, a14);
    v51 = v50;
    if (a11)
    {
      goto LABEL_57;
    }

LABEL_64:
    v77 = v30;
    v36 = 8 * v22;
    v49 = v51;
    if (v51 > 2147483646)
    {
LABEL_62:
      LODWORD(v49) = 0x7FFFFFFF;
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  v50 = (*(v512 + 32))(v511 + v29, v515, 4, 0, v513, v514, v527);
  v51 = v50;
  if (!a11)
  {
    goto LABEL_64;
  }

LABEL_57:
  v52 = v46 != v505;
  v53 = 2;
  if (v46 != v505)
  {
    v53 = 3;
  }

  if (v504 != v30)
  {
    v52 = v53;
  }

  v77 = v30;
  v36 = 8 * v22;
  v49 = ((((v506 * (*(*a11 + 4 * (v30 - v504)) + *(a11[1] + 4 * (v46 - v505)) + *(a10 + 4 * v52))) << 18) + 0x80000000) >> 32) + v51;
  if (v49 > 2147483646)
  {
    goto LABEL_62;
  }

LABEL_65:
  if (v31 > v49)
  {
    *a12 = v50;
    *a13 = v527[0];
    v31 = v49;
    v76 = v46;
  }

LABEL_67:
  LODWORD(v54) = 0x7FFFFFFF;
  v491 = v46;
  if (v36 < v524 || v36 > v523)
  {
    v55 = v77;
    LODWORD(v67) = 0x7FFFFFFF;
    goto LABEL_103;
  }

  v55 = v30 - 4;
  LODWORD(v54) = 0x7FFFFFFF;
  if (v30 - 4 >= v525 && v55 <= v522)
  {
    v56 = v511 + (v22 + (v55 >> 3) * v515);
    if (a14)
    {
      v57 = (*(v512 + 40))(v56);
      v58 = v57;
      v59 = a11;
      v36 = 8 * v22;
      if (a11)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v57 = (*(v512 + 32))(v56);
      v58 = v57;
      v59 = a11;
      v36 = 8 * v22;
      if (a11)
      {
LABEL_73:
        v60 = *v59;
        v61 = v59[1];
        v62 = v36 != v505;
        v63 = 2;
        if (v36 != v505)
        {
          v63 = 3;
        }

        if (v504 != v55)
        {
          v62 = v63;
        }

        v77 = v30;
        v54 = ((((v506 * (*(v60 + 4 * (v55 - v504)) + *(v61 + 4 * (v36 - v505)) + *(a10 + 4 * v62))) << 18) + 0x80000000) >> 32) + v58;
        v64 = v518 - 4;
        if (v54 > 2147483646)
        {
LABEL_78:
          v65 = v31;
          LODWORD(v54) = 0x7FFFFFFF;
          v55 = v77;
          v66 = v30 | 4;
          LODWORD(v67) = 0x7FFFFFFF;
          if ((v30 | 4) < v525)
          {
            goto LABEL_101;
          }

          goto LABEL_83;
        }

        goto LABEL_94;
      }
    }

    v77 = v30;
    v54 = v58;
    v64 = v518 - 4;
    if (v58 > 2147483646)
    {
      goto LABEL_78;
    }

LABEL_94:
    if (v31 > v54)
    {
      *a12 = v57;
      *a13 = v527[0];
      v65 = v54;
      v76 = v36;
      v66 = v30 | 4;
      LODWORD(v67) = 0x7FFFFFFF;
      if ((v30 | 4) < v525)
      {
        goto LABEL_101;
      }

      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v64 = v518 - 4;
LABEL_82:
  v65 = v31;
  v55 = v77;
  v66 = v30 | 4;
  LODWORD(v67) = 0x7FFFFFFF;
  if ((v30 | 4) < v525)
  {
LABEL_101:
    v31 = v65;
    goto LABEL_102;
  }

LABEL_83:
  if (v66 > v522)
  {
    goto LABEL_101;
  }

  v68 = v511 + v29;
  if (a14)
  {
    v69 = (*(v512 + 40))(v68, v515, 0, 4, v513, v514, v527);
    v70 = v69;
    v71 = a11;
    v36 = 8 * v22;
    if (a11)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v69 = (*(v512 + 32))(v68, v515, 0, 4, v513, v514, v527);
    v70 = v69;
    v71 = a11;
    v36 = 8 * v22;
    if (a11)
    {
LABEL_86:
      v72 = *v71;
      v73 = v71[1];
      v74 = v36 != v505;
      v75 = 2;
      if (v36 != v505)
      {
        v75 = 3;
      }

      if (v504 != v66)
      {
        v74 = v75;
      }

      v77 = v30;
      v67 = ((((v506 * (*(v72 + 4 * (v66 - v504)) + *(v73 + 4 * (v36 - v505)) + *(a10 + 4 * v74))) << 18) + 0x80000000) >> 32) + v70;
      if (v67 > 2147483646)
      {
        goto LABEL_91;
      }

      goto LABEL_99;
    }
  }

  v77 = v30;
  v67 = v70;
  if (v70 > 2147483646)
  {
LABEL_91:
    LODWORD(v67) = 0x7FFFFFFF;
    goto LABEL_101;
  }

LABEL_99:
  if (v65 <= v67)
  {
    goto LABEL_101;
  }

  *a12 = v69;
  *a13 = v527[0];
  v55 = v66;
  v31 = v67;
  v76 = v36;
LABEL_102:
  v37 = v64;
LABEL_103:
  v78 = (v40 >= v49) | (2 * (v54 >= v67));
  if (v78 > 1)
  {
    if (v78 == 2)
    {
      if ((v493 & 1) == 0)
      {
        v80 = v30 | 4;
        v79 = v76;
        if ((v30 | 4) < v525 || v80 > v522)
        {
          goto LABEL_178;
        }

        v90 = v67;
        v91 = v495 + (v37 >> 3);
        if (a14)
        {
          v83 = (*(v512 + 40))(v511 + v91, v515, 4, 4, v513, v514, v527);
          v92 = v83;
          v93 = a11;
          if (a11)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v83 = (*(v512 + 32))(v511 + v91, v515, 4, 4, v513, v514, v527);
          v92 = v83;
          v93 = a11;
          if (a11)
          {
LABEL_122:
            v67 = *v93;
            v94 = v93[1];
            v95 = v37 != v505;
            v96 = 2;
            if (v37 != v505)
            {
              v96 = 3;
            }

            if (v504 != v80)
            {
              v95 = v96;
            }

            v97 = v506 * (*(v67 + 4 * (v80 - v504)) + *(v94 + 4 * (v37 - v505)) + *(a10 + 4 * v95));
            v77 = v30;
            v36 = 8 * v22;
            LODWORD(v67) = v90;
            v98 = (((v97 << 18) + 0x80000000) >> 32) + v92;
            if (v98 > 2147483646)
            {
              goto LABEL_178;
            }

LABEL_167:
            v84 = v98;
            v120 = v37;
LABEL_176:
            if (v31 > v98)
            {
LABEL_177:
              *a12 = v83;
              *a13 = v527[0];
              v31 = v84;
              v55 = v80;
              v79 = v120;
              goto LABEL_178;
            }

            goto LABEL_178;
          }
        }

        v77 = v30;
        v36 = 8 * v22;
        LODWORD(v67) = v90;
        v98 = v92;
        if (v92 > 2147483646)
        {
          goto LABEL_178;
        }

        goto LABEL_167;
      }

LABEL_139:
      v79 = v76;
      goto LABEL_178;
    }

    if (v492)
    {
      goto LABEL_139;
    }

    v80 = v30 | 4;
    if ((v30 | 4) < v525 || v80 > v522)
    {
      goto LABEL_139;
    }

    v108 = v67;
    v109 = v511 + v29;
    if (a14)
    {
      v83 = (*(v512 + 40))(v109, v515, 4, 4, v513, v514, v527);
      v101 = v83;
      v110 = a11;
      v79 = v76;
      if (a11)
      {
LABEL_144:
        v111 = *v110;
        v112 = v110[1];
        v113 = v491 != v505;
        v114 = 2;
        if (v491 != v505)
        {
          v114 = 3;
        }

        if (v504 != v80)
        {
          v113 = v114;
        }

        v107 = (((v506 * (*(v111 + 4 * (v80 - v504)) + *(v112 + 4 * (v491 - v505)) + *(a10 + 4 * v113))) << 18) + 0x80000000) >> 32;
        goto LABEL_173;
      }
    }

    else
    {
      v83 = (*(v512 + 32))(v109, v515, 4, 4, v513, v514, v527);
      v101 = v83;
      v110 = a11;
      v79 = v76;
      if (a11)
      {
        goto LABEL_144;
      }
    }

    v107 = 0;
LABEL_173:
    v77 = v30;
    v36 = 8 * v22;
    LODWORD(v67) = v108;
    goto LABEL_174;
  }

  v79 = v76;
  if (v78)
  {
    if (v492)
    {
      goto LABEL_178;
    }

    v80 = v30 - 4;
    if (v30 - 4 < v525 || v80 > v522)
    {
      goto LABEL_178;
    }

    v99 = v67;
    v100 = v511 + (v22 + (v80 >> 3) * v515);
    if (a14)
    {
      v83 = (*(v512 + 40))(v100);
      v101 = v83;
      v102 = a11;
      if (a11)
      {
LABEL_133:
        v103 = *v102;
        v104 = v102[1];
        v105 = v491 != v505;
        v106 = 2;
        if (v491 != v505)
        {
          v106 = 3;
        }

        if (v504 != v80)
        {
          v105 = v106;
        }

        v107 = (((v506 * (*(v103 + 4 * (v80 - v504)) + *(v104 + 4 * (v491 - v505)) + *(a10 + 4 * v105))) << 18) + 0x80000000) >> 32;
        goto LABEL_170;
      }
    }

    else
    {
      v83 = (*(v512 + 32))(v100);
      v101 = v83;
      v102 = a11;
      if (a11)
      {
        goto LABEL_133;
      }
    }

    v107 = 0;
LABEL_170:
    v77 = v30;
    v36 = 8 * v22;
    LODWORD(v67) = v99;
LABEL_174:
    v98 = v107 + v101;
    if (v98 > 2147483646)
    {
      goto LABEL_178;
    }

    v84 = v98;
    v120 = v491;
    goto LABEL_176;
  }

  if (v493)
  {
    goto LABEL_178;
  }

  v80 = v30 - 4;
  if (v30 - 4 < v525 || v80 > v522)
  {
    goto LABEL_178;
  }

  v81 = v67;
  v82 = v511 + ((v80 >> 3) * v515 + (v37 >> 3));
  if (a14)
  {
    v83 = (*(v512 + 40))(v82);
    v84 = v83;
    v85 = a11;
    if (a11)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v83 = (*(v512 + 32))(v82);
    v84 = v83;
    v85 = a11;
    if (a11)
    {
LABEL_110:
      v67 = *v85;
      v86 = v85[1];
      v87 = v37 != v505;
      v88 = 2;
      if (v37 != v505)
      {
        v88 = 3;
      }

      if (v504 != v80)
      {
        v87 = v88;
      }

      v89 = v506 * (*(v67 + 4 * (v80 - v504)) + *(v86 + 4 * (v37 - v505)) + *(a10 + 4 * v87));
      v77 = v30;
      v36 = 8 * v22;
      LODWORD(v67) = v81;
      v84 += ((v89 << 18) + 0x80000000) >> 32;
      if (v84 > 2147483646)
      {
        goto LABEL_178;
      }

LABEL_163:
      v120 = v37;
      if (v31 <= v84)
      {
        goto LABEL_178;
      }

      goto LABEL_177;
    }
  }

  v77 = v30;
  v36 = 8 * v22;
  LODWORD(v67) = v81;
  if (v84 <= 2147483646)
  {
    goto LABEL_163;
  }

LABEL_178:
  if (a8 < 2)
  {
    goto LABEL_214;
  }

  v121 = v55 - v30;
  if (v55 != v30 && v79 != v36)
  {
    v122 = 2 * (v79 - v36);
    v123 = v122 + v36;
    if (v122 + v36 < v524)
    {
      v36 = v79;
      v124 = v515;
      v125 = a14;
      if (v79 < v524)
      {
        goto LABEL_273;
      }
    }

    else
    {
      v124 = v515;
      v125 = a14;
      if (v123 <= v523 && v55 >= v525 && v55 <= v522)
      {
        v126 = v511 + ((v55 >> 3) * v515 + (v123 >> 3));
        if (a14)
        {
          v127 = (*(v512 + 40))(v126, v515, v122 & 6, v55 & 7, v513, v514, v527, a14);
          v128 = v127;
          v129 = a11;
          if (a11)
          {
            goto LABEL_187;
          }
        }

        else
        {
          v127 = (*(v512 + 32))(v126, v515, v122 & 6, v55 & 7, v513, v514, v527);
          v128 = v127;
          v129 = a11;
          if (a11)
          {
LABEL_187:
            v130 = *v129;
            v131 = v129[1];
            v132 = v123 != v505;
            v133 = 2;
            if (v123 != v505)
            {
              v133 = 3;
            }

            if (v504 != v55)
            {
              v132 = v133;
            }

            v128 += (((v506 * (*(v130 + 4 * (v55 - v504)) + *(v131 + 4 * (v123 - v505)) + *(a10 + 4 * v132))) << 18) + 0x80000000) >> 32;
            v36 = v79;
            if (v128 > 2147483646)
            {
LABEL_240:
              if (v79 < v524)
              {
                goto LABEL_273;
              }

              goto LABEL_241;
            }

LABEL_238:
            if (v31 > v128)
            {
              *a12 = v127;
              *a13 = v527[0];
              v31 = v128;
              v36 = v123;
            }

            goto LABEL_240;
          }
        }

        v36 = v79;
        if (v128 > 2147483646)
        {
          goto LABEL_240;
        }

        goto LABEL_238;
      }

      v36 = v79;
      if (v79 < v524)
      {
        goto LABEL_273;
      }
    }

LABEL_241:
    if (v79 <= v523)
    {
      v155 = 2 * v121;
      v149 = 2 * v121 + v30;
      if (v149 >= v525 && v149 <= v522)
      {
        v156 = v36;
        v157 = v511 + (v149 >> 3) * v124 + (v79 >> 3);
        if (v125)
        {
          v153 = (*(v512 + 40))(v157, v124, v79 & 7, v155 & 6, v513, v514, v527, v125);
          v158 = v153;
          v159 = a11;
          if (a11)
          {
LABEL_246:
            v160 = *v159;
            v161 = v159[1];
            v162 = v79 != v505;
            v163 = 2;
            if (v79 != v505)
            {
              v163 = 3;
            }

            if (v504 != v149)
            {
              v162 = v163;
            }

            v164 = (((v506 * (*(v160 + 4 * (v149 - v504)) + *(v161 + 4 * (v79 - v505)) + *(a10 + 4 * v162))) << 18) + 0x80000000) >> 32;
LABEL_270:
            v36 = v156;
            v178 = v164 + v158;
            v77 = v55;
            if (v178 > 2147483646)
            {
              goto LABEL_274;
            }

LABEL_734:
            if (v31 > v178)
            {
              *a12 = v153;
              *a13 = v527[0];
              v31 = v178;
              v77 = v149;
              v36 = v79;
            }

            goto LABEL_274;
          }
        }

        else
        {
          v153 = (*(v512 + 32))(v157, v124, v79 & 7, v155 & 6, v513, v514, v527);
          v158 = v153;
          v159 = a11;
          if (a11)
          {
            goto LABEL_246;
          }
        }

        v164 = 0;
        goto LABEL_270;
      }
    }

LABEL_273:
    v77 = v55;
    goto LABEL_274;
  }

  if (v55 == v30)
  {
    v134 = v79 - v36;
    if (v79 != v36)
    {
      v135 = 2 * v134;
      v136 = 2 * v134 + v36;
      if (v136 < v524 || v136 > v523)
      {
        v36 = v79;
      }

      else
      {
        v137 = v30 | 4;
        if ((v30 | 4) < v525 || v137 > v522)
        {
          v36 = v79;
        }

        else
        {
          v138 = v67;
          v139 = v495 + (v136 >> 3);
          if (a14)
          {
            v140 = (*(v512 + 40))(v511 + v139, v515, v135 & 6, 4, v513, v514, v527);
          }

          else
          {
            v140 = (*(v512 + 32))(v511 + v139, v515, v135 & 6, 4, v513, v514, v527);
          }

          if (a11)
          {
            v316 = v136 != v505;
            v317 = 2;
            if (v136 != v505)
            {
              v317 = 3;
            }

            if (v504 != v137)
            {
              v316 = v317;
            }

            v318 = (((v506 * (*(*a11 + 4 * (v137 - v504)) + *(a11[1] + 4 * (v136 - v505)) + *(a10 + 4 * v316))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v318 = 0;
          }

          v77 = v30;
          LODWORD(v67) = v138;
          v319 = v318 + v140;
          v36 = v79;
          if (v319 <= 2147483646 && v31 > v319)
          {
            *a12 = v140;
            *a13 = v527[0];
            v31 = v318 + v140;
            v77 = v30 | 4;
            v36 = v136;
          }
        }

        v320 = v30 - 4;
        if (v30 - 4 >= v525 && v320 <= v522)
        {
          v321 = v67;
          v521 = v79;
          v322 = v77;
          v323 = v36;
          v324 = v511 + ((v320 >> 3) * v515 + (v136 >> 3));
          if (a14)
          {
            v325 = (*(v512 + 40))(v324);
          }

          else
          {
            v325 = (*(v512 + 32))(v324);
          }

          if (a11)
          {
            v326 = v136 != v505;
            v327 = 2;
            if (v136 != v505)
            {
              v327 = 3;
            }

            if (v504 != v320)
            {
              v326 = v327;
            }

            v328 = (((v506 * (*(*a11 + 4 * (v320 - v504)) + *(a11[1] + 4 * (v136 - v505)) + *(a10 + 4 * v326))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v328 = 0;
          }

          v36 = v323;
          v77 = v322;
          LODWORD(v67) = v321;
          v329 = v328 + v325;
          v79 = v521;
          if (v329 <= 2147483646 && v31 > v329)
          {
            *a12 = v325;
            *a13 = v527[0];
            v31 = v328 + v325;
            v77 = v30 - 4;
            v36 = v136;
          }
        }
      }

      v148 = v79 < v524 || v79 > v523;
      if (v54 >= v67)
      {
        v124 = v515;
        if (v148)
        {
          goto LABEL_274;
        }

        v149 = v30 - 4;
        if (v30 - 4 < v525 || v149 > v522)
        {
          goto LABEL_274;
        }

        v150 = v77;
        v151 = v36;
        v154 = v511 + ((v149 >> 3) * v515 + (v79 >> 3));
        if (a14)
        {
          v153 = (*(v512 + 40))(v154, v515, v79 & 7, 4, v513, v514, v527, a14);
        }

        else
        {
          v153 = (*(v512 + 32))(v154, v515, v79 & 7, 4, v513, v514, v527);
        }

        v370 = a11;
        v371 = v153;
        if (a11)
        {
          goto LABEL_725;
        }
      }

      else
      {
        v124 = v515;
        if (v148)
        {
          goto LABEL_274;
        }

        v149 = v30 | 4;
        if ((v30 | 4) < v525 || v149 > v522)
        {
          goto LABEL_274;
        }

        v150 = v77;
        v151 = v36;
        v152 = v495 + (v79 >> 3);
        if (a14)
        {
          v153 = (*(v512 + 40))(v511 + v152, v515, v79 & 7, 4, v513, v514, v527, a14);
        }

        else
        {
          v153 = (*(v512 + 32))(v511 + v152, v515, v79 & 7, 4, v513, v514, v527);
        }

        v370 = a11;
        v371 = v153;
        if (a11)
        {
LABEL_725:
          v372 = *v370;
          v373 = v370[1];
          v374 = v79 != v505;
          v375 = 2;
          if (v79 != v505)
          {
            v375 = 3;
          }

          if (v504 != v149)
          {
            v374 = v375;
          }

          v376 = (((v506 * (*(v372 + 4 * (v149 - v504)) + *(v373 + 4 * (v79 - v505)) + *(a10 + 4 * v374))) << 18) + 0x80000000) >> 32;
LABEL_733:
          v36 = v151;
          v77 = v150;
          v178 = v376 + v371;
          if (v178 > 2147483646)
          {
            goto LABEL_274;
          }

          goto LABEL_734;
        }
      }

      v376 = 0;
      goto LABEL_733;
    }
  }

  if (v55 == v30)
  {
LABEL_214:
    v77 = v55;
    v36 = v79;
    goto LABEL_215;
  }

  v124 = v515;
  if (v79 != v36)
  {
    v77 = v55;
    v36 = v79;
    goto LABEL_274;
  }

  v141 = 2 * (v55 - v30);
  if ((v492 & 1) != 0 || (v165 = v141 + v30, v141 + v30 < v525) || v165 > v522)
  {
    v77 = v55;
  }

  else
  {
    v166 = v511 + (v22 + (v165 >> 3) * v515);
    if (a14)
    {
      v167 = (*(v512 + 40))(v166);
    }

    else
    {
      v167 = (*(v512 + 32))(v166);
    }

    if (a11)
    {
      v357 = v491 != v505;
      v358 = 2;
      if (v491 != v505)
      {
        v358 = 3;
      }

      if (v504 != v165)
      {
        v357 = v358;
      }

      v359 = (((v506 * (*(*a11 + 4 * (v165 - v504)) + *(a11[1] + 4 * (v491 - v505)) + *(a10 + 4 * v357))) << 18) + 0x80000000) >> 32;
    }

    else
    {
      v359 = 0;
    }

    v36 = 8 * v22;
    v367 = v359 + v167;
    v77 = v55;
    if (v367 <= 2147483646 && v31 > v367)
    {
      *a12 = v167;
      *a13 = v527[0];
      v31 = v359 + v167;
      v77 = v141 + v30;
      v36 = v491;
    }
  }

  if ((v493 & 1) == 0)
  {
    v168 = v141 + v30;
    if (v141 + v30 >= v525 && v168 <= v522)
    {
      v169 = v77;
      v170 = v36;
      v171 = v511 + ((v168 >> 3) * v515 + (v37 >> 3));
      if (a14)
      {
        v172 = (*(v512 + 40))(v171);
      }

      else
      {
        v172 = (*(v512 + 32))(v171);
      }

      if (a11)
      {
        v360 = v37 != v505;
        v361 = 2;
        if (v37 != v505)
        {
          v361 = 3;
        }

        if (v504 != v168)
        {
          v360 = v361;
        }

        v362 = (((v506 * (*(*a11 + 4 * (v168 - v504)) + *(a11[1] + 4 * (v37 - v505)) + *(a10 + 4 * v360))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v362 = 0;
      }

      v36 = v170;
      v77 = v169;
      v368 = v362 + v172;
      if (v368 <= 2147483646 && v31 > v368)
      {
        *a12 = v172;
        *a13 = v527[0];
        v31 = v362 + v172;
        v77 = v141 + v30;
        v36 = v37;
      }
    }
  }

  if (v78 > 1)
  {
    v124 = v515;
    if (v78 != 3)
    {
      goto LABEL_208;
    }
  }

  else
  {
    v124 = v515;
    if (!v78)
    {
LABEL_208:
      v142 = v492;
      if (v55 < v525)
      {
        v142 = 1;
      }

      if ((v142 & 1) == 0 && v55 <= v522)
      {
        v143 = v77;
        v144 = v36;
        v145 = v511 + v22 + (v55 >> 3) * v124;
        if (a14)
        {
          v146 = (*(v512 + 40))(v145, v124, 4, v55 & 7, v513, v514, v527, a14);
        }

        else
        {
          v146 = (*(v512 + 32))(v145, v124, 4, v55 & 7, v513, v514, v527);
        }

        if (a11)
        {
          v354 = v491 != v505;
          v355 = 2;
          if (v491 != v505)
          {
            v355 = 3;
          }

          if (v504 != v55)
          {
            v354 = v355;
          }

          v356 = (((v506 * (*(*a11 + 4 * (v55 - v504)) + *(a11[1] + 4 * (v491 - v505)) + *(a10 + 4 * v354))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v356 = 0;
        }

        v36 = v144;
        v77 = v143;
        v366 = v356 + v146;
        if (v366 <= 2147483646 && v31 > v366)
        {
          *a12 = v146;
          *a13 = v527[0];
          v31 = v356 + v146;
          v77 = v55;
          v36 = v491;
        }
      }

      goto LABEL_274;
    }
  }

  v173 = v493;
  if (v55 < v525)
  {
    v173 = 1;
  }

  if ((v173 & 1) == 0 && v55 <= v522)
  {
    v174 = v77;
    v175 = v36;
    v176 = v511 + (v55 >> 3) * v124 + (v37 >> 3);
    if (a14)
    {
      v177 = (*(v512 + 40))(v176, v124, 4, v55 & 7, v513, v514, v527, a14);
    }

    else
    {
      v177 = (*(v512 + 32))(v176, v124, 4, v55 & 7, v513, v514, v527);
    }

    if (a11)
    {
      v363 = v37 != v505;
      v364 = 2;
      if (v37 != v505)
      {
        v364 = 3;
      }

      if (v504 != v55)
      {
        v363 = v364;
      }

      v365 = (((v506 * (*(*a11 + 4 * (v55 - v504)) + *(a11[1] + 4 * (v37 - v505)) + *(a10 + 4 * v363))) << 18) + 0x80000000) >> 32;
    }

    else
    {
      v365 = 0;
    }

    v36 = v175;
    v77 = v174;
    v369 = v365 + v177;
    if (v369 <= 2147483646 && v31 > v369)
    {
      *a12 = v177;
      *a13 = v527[0];
      v31 = v365 + v177;
      v77 = v55;
      v36 = v37;
    }
  }

LABEL_274:
  if (a7 == 2)
  {
    v179 = 2;
    v180 = v77;
    v181 = a11;
    goto LABEL_431;
  }

  v182 = v36 - 2;
  v183 = v36 - 2 >= v524 && v182 <= v523;
  v184 = !v183;
  v496 = v184;
  LODWORD(v185) = 0x7FFFFFFF;
  v186 = v31;
  v516 = v77;
  v519 = v36;
  if (!v183)
  {
    v209 = v36;
    v181 = a11;
    goto LABEL_299;
  }

  v181 = a11;
  if (v77 < v525 || v77 > v522)
  {
    goto LABEL_298;
  }

  v187 = v511 + (v77 >> 3) * v124 + (v182 >> 3);
  if (a14)
  {
    v188 = (*(v512 + 40))(v187, v124, v182 & 7, v77 & 7, v513, v514, v527);
    v189 = v31;
    v190 = v188;
    if (a11)
    {
      goto LABEL_288;
    }
  }

  else
  {
    v188 = (*(v512 + 32))(v187, v124, v182 & 7, v77 & 7, v513, v514, v527);
    v189 = v31;
    v190 = v188;
    if (a11)
    {
LABEL_288:
      v77 = v516;
      v191 = v182 != v505;
      v192 = 2;
      if (v182 != v505)
      {
        v192 = 3;
      }

      if (v504 != v516)
      {
        v191 = v192;
      }

      v36 = v519;
      v185 = ((((v506 * (*(*a11 + 4 * (v516 - v504)) + *(a11[1] + 4 * (v182 - v505)) + *(a10 + 4 * v191))) << 18) + 0x80000000) >> 32) + v190;
      if (v185 > 2147483646)
      {
        goto LABEL_293;
      }

      goto LABEL_296;
    }
  }

  v77 = v516;
  v36 = v519;
  v185 = v190;
  if (v190 > 2147483646)
  {
LABEL_293:
    LODWORD(v185) = 0x7FFFFFFF;
    goto LABEL_298;
  }

LABEL_296:
  if (v189 > v185)
  {
    *a12 = v188;
    *a13 = v527[0];
    v186 = v185;
    v209 = v182;
    goto LABEL_299;
  }

LABEL_298:
  v209 = v36;
LABEL_299:
  v193 = v36 + 2;
  v194 = v36 + 2 >= v524 && v193 <= v523;
  v195 = !v194;
  v494 = v195;
  LODWORD(v196) = 0x7FFFFFFF;
  if (!v194 || v77 < v525 || v77 > v522)
  {
    goto LABEL_321;
  }

  v197 = v511 + (v77 >> 3) * v124 + (v193 >> 3);
  if (a14)
  {
    v198 = (*(v512 + 40))(v197, v124, v193 & 7, v77 & 7, v513, v514, v527);
    v199 = v198;
    if (v181)
    {
      goto LABEL_311;
    }

LABEL_318:
    v77 = v516;
    v36 = v519;
    v196 = v199;
    if (v199 > 2147483646)
    {
LABEL_316:
      LODWORD(v196) = 0x7FFFFFFF;
      goto LABEL_321;
    }

    goto LABEL_319;
  }

  v198 = (*(v512 + 32))(v197, v124, v193 & 7, v77 & 7, v513, v514, v527);
  v199 = v198;
  if (!v181)
  {
    goto LABEL_318;
  }

LABEL_311:
  v77 = v516;
  v200 = v193 != v505;
  v201 = 2;
  if (v193 != v505)
  {
    v201 = 3;
  }

  if (v504 != v516)
  {
    v200 = v201;
  }

  v36 = v519;
  v196 = ((((v506 * (*(*v181 + 4 * (v516 - v504)) + *(v181[1] + 4 * (v193 - v505)) + *(a10 + 4 * v200))) << 18) + 0x80000000) >> 32) + v199;
  if (v196 > 2147483646)
  {
    goto LABEL_316;
  }

LABEL_319:
  if (v186 > v196)
  {
    *a12 = v198;
    *a13 = v527[0];
    v186 = v196;
    v209 = v193;
  }

LABEL_321:
  LODWORD(v202) = 0x7FFFFFFF;
  if (v36 < v524 || v36 > v523)
  {
    v180 = v77;
    LODWORD(v208) = 0x7FFFFFFF;
    goto LABEL_354;
  }

  v180 = v77 - 2;
  LODWORD(v202) = 0x7FFFFFFF;
  if (v77 - 2 < v525 || v180 > v522)
  {
    goto LABEL_338;
  }

  v203 = v511 + (v180 >> 3) * v124 + (v36 >> 3);
  if (a14)
  {
    v204 = (*(v512 + 40))(v203, v124, v36 & 7, v180 & 7, v513, v514, v527);
    v205 = v204;
    if (v181)
    {
      goto LABEL_327;
    }
  }

  else
  {
    v204 = (*(v512 + 32))(v203, v124, v36 & 7, v180 & 7, v513, v514, v527);
    v205 = v204;
    if (v181)
    {
LABEL_327:
      v36 = v519;
      v206 = v519 != v505;
      v207 = 2;
      if (v519 != v505)
      {
        v207 = 3;
      }

      if (v504 != v180)
      {
        v206 = v207;
      }

      v77 = v516;
      v202 = ((((v506 * (*(*v181 + 4 * (v180 - v504)) + *(v181[1] + 4 * (v519 - v505)) + *(a10 + 4 * v206))) << 18) + 0x80000000) >> 32) + v205;
      if (v202 > 2147483646)
      {
        goto LABEL_332;
      }

      goto LABEL_336;
    }
  }

  v77 = v516;
  v36 = v519;
  v202 = v205;
  if (v205 > 2147483646)
  {
LABEL_332:
    LODWORD(v202) = 0x7FFFFFFF;
LABEL_338:
    v180 = v77;
    goto LABEL_339;
  }

LABEL_336:
  if (v186 <= v202)
  {
    goto LABEL_338;
  }

  *a12 = v204;
  *a13 = v527[0];
  v186 = v202;
  v209 = v36;
LABEL_339:
  v210 = v77 + 2;
  LODWORD(v208) = 0x7FFFFFFF;
  if (v77 + 2 < v525 || v210 > v522)
  {
    goto LABEL_353;
  }

  v211 = v511 + ((v210 >> 3) * v515 + (v36 >> 3));
  if (a14)
  {
    v212 = (*(v512 + 40))(v211);
    v213 = v212;
    v214 = a11;
    if (a11)
    {
      goto LABEL_343;
    }
  }

  else
  {
    v212 = (*(v512 + 32))(v211);
    v213 = v212;
    v214 = a11;
    if (a11)
    {
LABEL_343:
      v36 = v519;
      v215 = *v214;
      v216 = v214[1];
      v217 = v519 != v505;
      v218 = 2;
      if (v519 != v505)
      {
        v218 = 3;
      }

      if (v504 != v210)
      {
        v217 = v218;
      }

      v77 = v516;
      v208 = ((((v506 * (*(v215 + 4 * (v210 - v504)) + *(v216 + 4 * (v519 - v505)) + *(a10 + 4 * v217))) << 18) + 0x80000000) >> 32) + v213;
      if (v208 > 2147483646)
      {
        goto LABEL_348;
      }

LABEL_351:
      if (v186 > v208)
      {
        *a12 = v212;
        *a13 = v527[0];
        v186 = v208;
        v180 = v210;
        v209 = v36;
      }

      goto LABEL_353;
    }
  }

  v77 = v516;
  v36 = v519;
  v208 = v213;
  if (v213 <= 2147483646)
  {
    goto LABEL_351;
  }

LABEL_348:
  LODWORD(v208) = 0x7FFFFFFF;
LABEL_353:
  v181 = a11;
LABEL_354:
  v219 = (v185 >= v196) | (2 * (v202 >= v208));
  if (v219 <= 1)
  {
    if (!v219)
    {
      if (v496)
      {
        goto LABEL_412;
      }

      v220 = v77 - 2;
      if (v77 - 2 < v525 || v220 > v522)
      {
        goto LABEL_412;
      }

      v221 = v511 + ((v220 >> 3) * v515 + (v182 >> 3));
      v222 = a14 ? (*(v512 + 40))(v221) : (*(v512 + 32))(v221);
      if (v181)
      {
        v226 = v182 != v505;
        v227 = 2;
        if (v182 != v505)
        {
          v227 = 3;
        }

        if (v504 != v220)
        {
          v226 = v227;
        }

        v228 = (((v506 * (*(*v181 + 4 * (v220 - v504)) + *(v181[1] + 4 * (v182 - v505)) + *(a10 + 4 * v226))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v228 = 0;
      }

      v77 = v516;
      v36 = v519;
      v236 = v228 + v222;
      if (v236 > 2147483646)
      {
        goto LABEL_412;
      }

      v237 = v182;
      if (v186 <= v236)
      {
        goto LABEL_412;
      }

LABEL_411:
      *a12 = v222;
      *a13 = v527[0];
      v186 = v236;
      v180 = v220;
      v209 = v237;
      goto LABEL_412;
    }

    if (v494)
    {
      goto LABEL_412;
    }

    v220 = v77 - 2;
    if (v77 - 2 < v525 || v220 > v522)
    {
      goto LABEL_412;
    }

    v224 = v511 + ((v220 >> 3) * v515 + (v193 >> 3));
    if (a14)
    {
      v222 = (*(v512 + 40))(v224);
    }

    else
    {
      v222 = (*(v512 + 32))(v224);
    }

    v232 = v222;
    if (v181)
    {
LABEL_393:
      v233 = v193 != v505;
      v234 = 2;
      if (v193 != v505)
      {
        v234 = 3;
      }

      if (v504 != v220)
      {
        v233 = v234;
      }

      v77 = v516;
      v36 = v519;
      v235 = ((((v506 * (*(*v181 + 4 * (v220 - v504)) + *(v181[1] + 4 * (v193 - v505)) + *(a10 + 4 * v233))) << 18) + 0x80000000) >> 32) + v232;
      if (v235 > 2147483646)
      {
        goto LABEL_412;
      }

LABEL_402:
      v236 = v235;
      v237 = v193;
      if (v186 <= v235)
      {
        goto LABEL_412;
      }

      goto LABEL_411;
    }

LABEL_401:
    v77 = v516;
    v36 = v519;
    v235 = v232;
    if (v232 > 2147483646)
    {
      goto LABEL_412;
    }

    goto LABEL_402;
  }

  if (v219 != 2)
  {
    if (v494)
    {
      goto LABEL_412;
    }

    v220 = v77 + 2;
    if (v77 + 2 < v525 || v220 > v522)
    {
      goto LABEL_412;
    }

    v225 = v511 + ((v220 >> 3) * v515 + (v193 >> 3));
    if (a14)
    {
      v222 = (*(v512 + 40))(v225);
    }

    else
    {
      v222 = (*(v512 + 32))(v225);
    }

    v232 = v222;
    if (v181)
    {
      goto LABEL_393;
    }

    goto LABEL_401;
  }

  if ((v496 & 1) == 0)
  {
    v220 = v77 + 2;
    if (v77 + 2 >= v525 && v220 <= v522)
    {
      v223 = v511 + ((v220 >> 3) * v515 + (v182 >> 3));
      v222 = a14 ? (*(v512 + 40))(v223) : (*(v512 + 32))(v223);
      if (v181)
      {
        v229 = v182 != v505;
        v230 = 2;
        if (v182 != v505)
        {
          v230 = 3;
        }

        if (v504 != v220)
        {
          v229 = v230;
        }

        v231 = (((v506 * (*(*v181 + 4 * (v220 - v504)) + *(v181[1] + 4 * (v182 - v505)) + *(a10 + 4 * v229))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v231 = 0;
      }

      v77 = v516;
      v36 = v519;
      v238 = v231 + v222;
      if (v238 <= 2147483646)
      {
        v236 = v238;
        v237 = v182;
        if (v186 > v238)
        {
          goto LABEL_411;
        }
      }
    }
  }

LABEL_412:
  if (a8 < 2)
  {
    v179 = 1;
    goto LABEL_428;
  }

  v239 = v180 - v77;
  if (v180 == v77 || v209 == v36)
  {
    if (v180 == v77 && v209 != v36)
    {
      v260 = v36 + 2 * (v209 - v36);
      if (v260 < v524)
      {
        v180 = v77;
        v36 = v209;
        v31 = v186;
        v262 = a14;
      }

      else
      {
        v31 = v186;
        if (v260 > v523)
        {
          v180 = v77;
          v36 = v209;
          v262 = a14;
        }

        else
        {
          v261 = v77 + 2;
          v262 = a14;
          if (v77 + 2 < v525 || v261 > v522)
          {
            goto LABEL_643;
          }

          v263 = v511 + ((v261 >> 3) * v515 + (v260 >> 3));
          v264 = a14 ? (*(v512 + 40))(v263) : (*(v512 + 32))(v263);
          if (v181)
          {
            v337 = v260 != v505;
            v338 = 2;
            if (v260 != v505)
            {
              v338 = 3;
            }

            if (v504 != v261)
            {
              v337 = v338;
            }

            v339 = (((v506 * (*(*v181 + 4 * (v261 - v504)) + *(v181[1] + 4 * (v260 - v505)) + *(a10 + 4 * v337))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v339 = 0;
          }

          v77 = v516;
          v340 = v339 + v264;
          if (v340 <= 2147483646)
          {
            v180 = v516;
            v36 = v209;
            if (v31 > v340)
            {
              *a12 = v264;
              *a13 = v527[0];
              v31 = v339 + v264;
              v180 = v261;
              v36 = v260;
            }
          }

          else
          {
LABEL_643:
            v180 = v77;
            v36 = v209;
          }

          v341 = v77 - 2;
          if (v77 - 2 >= v525 && v341 <= v522)
          {
            v342 = v36;
            v343 = v511 + ((v341 >> 3) * v515 + (v260 >> 3));
            if (a14)
            {
              v344 = (*(v512 + 40))(v343);
            }

            else
            {
              v344 = (*(v512 + 32))(v343);
            }

            if (v181)
            {
              v345 = v260 != v505;
              v346 = 2;
              if (v260 != v505)
              {
                v346 = 3;
              }

              if (v504 != v341)
              {
                v345 = v346;
              }

              v347 = (((v506 * (*(*v181 + 4 * (v341 - v504)) + *(v181[1] + 4 * (v260 - v505)) + *(a10 + 4 * v345))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v347 = 0;
            }

            v36 = v342;
            v77 = v516;
            v348 = v347 + v344;
            if (v348 <= 2147483646 && v31 > v348)
            {
              *a12 = v344;
              *a13 = v527[0];
              v31 = v347 + v344;
              v180 = v341;
              v36 = v260;
            }
          }
        }
      }

      v350 = v209 < v524 || v209 > v523;
      if (v202 >= v208)
      {
        v124 = v515;
        if (!v350)
        {
          v330 = v77 - 2;
          v179 = 1;
          if (v77 - 2 < v525 || v330 > v522)
          {
            goto LABEL_431;
          }

          v351 = v36;
          v353 = v511 + ((v330 >> 3) * v515 + (v209 >> 3));
          if (v262)
          {
            v270 = (*(v512 + 40))(v353, v515, v209 & 7, v330 & 7, v513, v514, v527, v262);
          }

          else
          {
            v270 = (*(v512 + 32))(v353, v515, v209 & 7, v330 & 7, v513, v514, v527);
          }

          v428 = v270;
          if (v181)
          {
LABEL_860:
            v429 = v209 != v505;
            v430 = 2;
            if (v209 != v505)
            {
              v430 = 3;
            }

            if (v504 != v330)
            {
              v429 = v430;
            }

            v431 = (((v506 * (*(*v181 + 4 * (v330 - v504)) + *(v181[1] + 4 * (v209 - v505)) + *(a10 + 4 * v429))) << 18) + 0x80000000) >> 32;
LABEL_868:
            v36 = v351;
            v432 = v431 + v428;
            v179 = 1;
            if (v432 > 2147483646)
            {
              goto LABEL_431;
            }

            v336 = v432;
            if (v31 <= v432)
            {
              goto LABEL_431;
            }

            goto LABEL_870;
          }

LABEL_867:
          v431 = 0;
          goto LABEL_868;
        }
      }

      else
      {
        v124 = v515;
        if (!v350)
        {
          v330 = v77 + 2;
          v179 = 1;
          if (v77 + 2 < v525 || v330 > v522)
          {
            goto LABEL_431;
          }

          v351 = v36;
          v352 = v511 + ((v330 >> 3) * v515 + (v209 >> 3));
          if (v262)
          {
            v270 = (*(v512 + 40))(v352, v515, v209 & 7, v330 & 7, v513, v514, v527, v262);
          }

          else
          {
            v270 = (*(v512 + 32))(v352, v515, v209 & 7, v330 & 7, v513, v514, v527);
          }

          v428 = v270;
          if (v181)
          {
            goto LABEL_860;
          }

          goto LABEL_867;
        }
      }

      v179 = 1;
      goto LABEL_431;
    }

    v179 = 1;
    if (v180 != v77)
    {
      v124 = v515;
      if (v209 != v36)
      {
        v36 = v209;
        v31 = v186;
        goto LABEL_431;
      }

      v265 = v77 + 2 * (v180 - v77);
      if ((v494 & 1) != 0 || v265 < v525 || v265 > v522)
      {
        v266 = v180;
      }

      else
      {
        v290 = v511 + ((v265 >> 3) * v515 + (v193 >> 3));
        if (a14)
        {
          v291 = (*(v512 + 40))(v290, v515, v193 & 7, v265 & 7, v513, v514, v527);
        }

        else
        {
          v291 = (*(v512 + 32))(v290, v515, v193 & 7, v265 & 7, v513, v514, v527);
        }

        if (v181)
        {
          v414 = v193 != v505;
          v415 = 2;
          if (v193 != v505)
          {
            v415 = 3;
          }

          if (v504 != v265)
          {
            v414 = v415;
          }

          v416 = (((v506 * (*(*v181 + 4 * (v265 - v504)) + *(v181[1] + 4 * (v193 - v505)) + *(a10 + 4 * v414))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v416 = 0;
        }

        v36 = v519;
        v425 = v416 + v291;
        v266 = v180;
        if (v425 <= 2147483646 && v186 > v425)
        {
          *a12 = v291;
          *a13 = v527[0];
          v186 = v416 + v291;
          v266 = v265;
          v36 = v193;
        }
      }

      if ((v496 & 1) == 0 && v265 >= v525 && v265 <= v522)
      {
        v292 = v36;
        v293 = v511 + ((v265 >> 3) * v515 + (v182 >> 3));
        if (a14)
        {
          v294 = (*(v512 + 40))(v293);
        }

        else
        {
          v294 = (*(v512 + 32))(v293);
        }

        if (v181)
        {
          v417 = v182 != v505;
          v418 = 2;
          if (v182 != v505)
          {
            v418 = 3;
          }

          if (v504 != v265)
          {
            v417 = v418;
          }

          v419 = (((v506 * (*(*v181 + 4 * (v265 - v504)) + *(v181[1] + 4 * (v182 - v505)) + *(a10 + 4 * v417))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v419 = 0;
        }

        v36 = v292;
        v426 = v419 + v294;
        if (v426 <= 2147483646 && v186 > v426)
        {
          *a12 = v294;
          *a13 = v527[0];
          v186 = v419 + v294;
          v266 = v265;
          v36 = v182;
        }
      }

      if (v219 > 1)
      {
        if (v219 != 3)
        {
LABEL_474:
          v267 = v494;
          if (v180 < v525)
          {
            v267 = 1;
          }

          v179 = 1;
          if ((v267 & 1) == 0 && v180 <= v522)
          {
            v268 = v36;
            v269 = v511 + ((v180 >> 3) * v515 + (v193 >> 3));
            v270 = a14 ? (*(v512 + 40))(v269) : (*(v512 + 32))(v269);
            if (v181)
            {
              v411 = v193 != v505;
              v412 = 2;
              if (v193 != v505)
              {
                v412 = 3;
              }

              if (v504 != v180)
              {
                v411 = v412;
              }

              v413 = (((v506 * (*(*v181 + 4 * (v180 - v504)) + *(v181[1] + 4 * (v193 - v505)) + *(a10 + 4 * v411))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v413 = 0;
            }

            v36 = v268;
            v423 = v413 + v270;
            v179 = 1;
            if (v423 <= 2147483646)
            {
              v336 = v423;
              v330 = v180;
              v209 = v193;
              v180 = v266;
              v31 = v186;
              v424 = v186 > v423;
              goto LABEL_855;
            }
          }

LABEL_843:
          v180 = v266;
          goto LABEL_429;
        }
      }

      else if (!v219)
      {
        goto LABEL_474;
      }

      v295 = v496;
      if (v180 < v525)
      {
        v295 = 1;
      }

      v179 = 1;
      if ((v295 & 1) == 0)
      {
        v31 = v186;
        if (v180 <= v522)
        {
          v296 = v36;
          v297 = v511 + ((v180 >> 3) * v515 + (v182 >> 3));
          v270 = a14 ? (*(v512 + 40))(v297) : (*(v512 + 32))(v297);
          if (v181)
          {
            v420 = v182 != v505;
            v421 = 2;
            if (v182 != v505)
            {
              v421 = 3;
            }

            if (v504 != v180)
            {
              v420 = v421;
            }

            v422 = (((v506 * (*(*v181 + 4 * (v180 - v504)) + *(v181[1] + 4 * (v182 - v505)) + *(a10 + 4 * v420))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v422 = 0;
          }

          v36 = v296;
          v427 = v422 + v270;
          v179 = 1;
          if (v427 <= 2147483646)
          {
            v336 = v427;
            v330 = v180;
            v209 = v182;
            v180 = v266;
            v424 = v186 > v427;
LABEL_855:
            v124 = v515;
            if (!v424)
            {
              goto LABEL_431;
            }

            goto LABEL_870;
          }
        }

        v180 = v266;
LABEL_430:
        v124 = v515;
        goto LABEL_431;
      }

      goto LABEL_843;
    }

LABEL_428:
    v36 = v209;
LABEL_429:
    v31 = v186;
    goto LABEL_430;
  }

  v240 = v36 + 2 * (v209 - v36);
  if (v240 < v524)
  {
    v36 = v209;
    v31 = v186;
    v124 = v515;
    goto LABEL_616;
  }

  v31 = v186;
  v124 = v515;
  if (v240 > v523)
  {
    v36 = v209;
LABEL_616:
    v241 = a14;
    goto LABEL_617;
  }

  v241 = a14;
  if (v180 < v525 || v180 > v522)
  {
    v36 = v209;
    goto LABEL_617;
  }

  v242 = v511 + ((v180 >> 3) * v515 + (v240 >> 3));
  if (a14)
  {
    v243 = (*(v512 + 40))(v242, v515, v240 & 7, v180 & 7, v513, v514, v527, a14);
    v244 = v243;
    if (v181)
    {
      goto LABEL_421;
    }

LABEL_523:
    v77 = v516;
    v36 = v209;
    if (v244 > 2147483646)
    {
      goto LABEL_617;
    }

    goto LABEL_524;
  }

  v243 = (*(v512 + 32))(v242, v515, v240 & 7, v180 & 7, v513, v514, v527);
  v244 = v243;
  if (!v181)
  {
    goto LABEL_523;
  }

LABEL_421:
  v245 = v240 != v505;
  v246 = 2;
  if (v240 != v505)
  {
    v246 = 3;
  }

  if (v504 != v180)
  {
    v245 = v246;
  }

  v77 = v516;
  v244 += (((v506 * (*(*v181 + 4 * (v180 - v504)) + *(v181[1] + 4 * (v240 - v505)) + *(a10 + 4 * v245))) << 18) + 0x80000000) >> 32;
  v36 = v209;
  if (v244 <= 2147483646)
  {
LABEL_524:
    if (v186 > v244)
    {
      *a12 = v243;
      *a13 = v527[0];
      v31 = v244;
      v36 = v240;
    }
  }

LABEL_617:
  v179 = 1;
  if (v209 >= v524 && v209 <= v523)
  {
    v330 = v77 + 2 * v239;
    if (v330 >= v525 && v330 <= v522)
    {
      v331 = v36;
      v332 = v511 + (v330 >> 3) * v124 + (v209 >> 3);
      v270 = v241 ? (*(v512 + 40))(v332, v124, v209 & 7, v330 & 7, v513, v514, v527, v241) : (*(v512 + 32))(v332, v124, v209 & 7, v330 & 7, v513, v514, v527);
      if (v181)
      {
        v333 = v209 != v505;
        v334 = 2;
        if (v209 != v505)
        {
          v334 = 3;
        }

        if (v504 != v330)
        {
          v333 = v334;
        }

        v335 = (((v506 * (*(*v181 + 4 * (v330 - v504)) + *(v181[1] + 4 * (v209 - v505)) + *(a10 + 4 * v333))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v335 = 0;
      }

      v36 = v331;
      v336 = v335 + v270;
      v179 = 1;
      if (v336 <= 2147483646 && v31 > v336)
      {
LABEL_870:
        *a12 = v270;
        *a13 = v527[0];
        v31 = v336;
        v180 = v330;
        v36 = v209;
      }
    }
  }

LABEL_431:
  if (!a4)
  {
    goto LABEL_457;
  }

  v247 = *a3;
  if (v247 < 0)
  {
    v247 = -v247;
  }

  if (v247 > 0x3F)
  {
    goto LABEL_457;
  }

  v248 = a3[1];
  if (v248 < 0)
  {
    v248 = -v248;
  }

  if (a7 || v248 > 0x3Fu)
  {
LABEL_457:
    LOWORD(v258) = v180;
    goto LABEL_458;
  }

  v249 = v36 - v179;
  v250 = v36 - v179 >= v524 && v249 <= v523;
  v251 = !v250;
  v502 = v251;
  LODWORD(v252) = 0x7FFFFFFF;
  v520 = v36;
  if (!v250 || v180 < v525 || v180 > v522)
  {
LABEL_485:
    v517 = v31;
    goto LABEL_486;
  }

  v253 = v511 + (v180 >> 3) * v124 + (v249 >> 3);
  if (a14)
  {
    v254 = (*(v512 + 40))(v253, v124, v249 & 7, v180 & 7, v513, v514, v527);
    v255 = v254;
    if (v181)
    {
      goto LABEL_451;
    }
  }

  else
  {
    v254 = (*(v512 + 32))(v253, v124, v249 & 7, v180 & 7, v513, v514, v527);
    v255 = v254;
    if (v181)
    {
LABEL_451:
      v256 = v249 != v505;
      v257 = 2;
      if (v249 != v505)
      {
        v257 = 3;
      }

      if (v504 != v180)
      {
        v256 = v257;
      }

      v36 = v520;
      v252 = ((((v506 * (*(*v181 + 4 * (v180 - v504)) + *(v181[1] + 4 * (v249 - v505)) + *(a10 + 4 * v256))) << 18) + 0x80000000) >> 32) + v255;
      if (v252 > 2147483646)
      {
        goto LABEL_456;
      }

      goto LABEL_483;
    }
  }

  v36 = v520;
  LODWORD(v252) = v255;
  if (v255 <= 2147483646)
  {
LABEL_483:
    if (v31 > v252)
    {
      *a12 = v254;
      *a13 = v527[0];
      v517 = v252;
      v271 = v249;
      goto LABEL_487;
    }

    goto LABEL_485;
  }

LABEL_456:
  v517 = v31;
  LODWORD(v252) = 0x7FFFFFFF;
LABEL_486:
  v271 = v36;
LABEL_487:
  v272 = v179 + v36;
  v273 = v179 + v36 >= v524 && v272 <= v523;
  v274 = !v273;
  v499 = v274;
  LODWORD(v275) = 0x7FFFFFFF;
  if (!v273 || v180 < v525 || v180 > v522)
  {
    goto LABEL_509;
  }

  v276 = v271;
  v277 = v511 + (v180 >> 3) * v124 + (v272 >> 3);
  if (a14)
  {
    v278 = (*(v512 + 40))(v277, v124, v272 & 7, v180 & 7, v513, v514, v527);
    v279 = v278;
    if (v181)
    {
      goto LABEL_499;
    }

LABEL_506:
    v36 = v520;
    v271 = v276;
    LODWORD(v275) = v279;
    if (v279 > 2147483646)
    {
LABEL_504:
      LODWORD(v275) = 0x7FFFFFFF;
      goto LABEL_509;
    }

    goto LABEL_507;
  }

  v278 = (*(v512 + 32))(v277, v124, v272 & 7, v180 & 7, v513, v514, v527);
  v279 = v278;
  if (!v181)
  {
    goto LABEL_506;
  }

LABEL_499:
  v280 = v272 != v505;
  v281 = 2;
  if (v272 != v505)
  {
    v281 = 3;
  }

  if (v504 != v180)
  {
    v280 = v281;
  }

  v36 = v520;
  v271 = v276;
  v275 = ((((v506 * (*(*v181 + 4 * (v180 - v504)) + *(v181[1] + 4 * (v272 - v505)) + *(a10 + 4 * v280))) << 18) + 0x80000000) >> 32) + v279;
  if (v275 > 2147483646)
  {
    goto LABEL_504;
  }

LABEL_507:
  if (v517 > v275)
  {
    *a12 = v278;
    *a13 = v527[0];
    v517 = v275;
    v271 = v272;
  }

LABEL_509:
  LODWORD(v282) = 0x7FFFFFFF;
  if (v36 < v524 || v36 > v523)
  {
    v258 = v180;
    LODWORD(v289) = 0x7FFFFFFF;
    goto LABEL_564;
  }

  v258 = v180 - v179;
  LODWORD(v282) = 0x7FFFFFFF;
  if (v180 - v179 < v525 || v258 > v522)
  {
    goto LABEL_548;
  }

  v283 = v271;
  v284 = v511 + ((v258 >> 3) * v515 + (v36 >> 3));
  if (a14)
  {
    v285 = (*(v512 + 40))(v284);
    v286 = v285;
    if (v181)
    {
      goto LABEL_515;
    }
  }

  else
  {
    v285 = (*(v512 + 32))(v284);
    v286 = v285;
    if (v181)
    {
LABEL_515:
      v36 = v520;
      v287 = v520 != v505;
      v288 = 2;
      if (v520 != v505)
      {
        v288 = 3;
      }

      if (v504 != v258)
      {
        v287 = v288;
      }

      v271 = v283;
      v282 = ((((v506 * (*(*v181 + 4 * (v258 - v504)) + *(v181[1] + 4 * (v520 - v505)) + *(a10 + 4 * v287))) << 18) + 0x80000000) >> 32) + v286;
      if (v282 > 2147483646)
      {
        goto LABEL_520;
      }

      goto LABEL_546;
    }
  }

  v36 = v520;
  v271 = v283;
  LODWORD(v282) = v286;
  if (v286 > 2147483646)
  {
LABEL_520:
    LODWORD(v282) = 0x7FFFFFFF;
LABEL_548:
    v258 = v180;
    goto LABEL_549;
  }

LABEL_546:
  if (v517 <= v282)
  {
    goto LABEL_548;
  }

  *a12 = v285;
  *a13 = v527[0];
  v517 = v282;
  v271 = v36;
LABEL_549:
  v298 = v179 + v180;
  LODWORD(v289) = 0x7FFFFFFF;
  if (v179 + v180 < v525 || v298 > v522)
  {
    goto LABEL_563;
  }

  v299 = v271;
  v300 = v511 + ((v298 >> 3) * v515 + (v36 >> 3));
  if (a14)
  {
    v301 = (*(v512 + 40))(v300);
    v302 = v301;
    v303 = a11;
    if (a11)
    {
      goto LABEL_553;
    }
  }

  else
  {
    v301 = (*(v512 + 32))(v300);
    v302 = v301;
    v303 = a11;
    if (a11)
    {
LABEL_553:
      v36 = v520;
      v304 = *v303;
      v305 = v303[1];
      v306 = v520 != v505;
      v307 = 2;
      if (v520 != v505)
      {
        v307 = 3;
      }

      if (v504 != v298)
      {
        v306 = v307;
      }

      v308 = v506 * (*(v304 + 4 * (v298 - v504)) + *(v305 + 4 * (v520 - v505)) + *(a10 + 4 * v306));
      v271 = v299;
      v289 = (((v308 << 18) + 0x80000000) >> 32) + v302;
      if (v289 > 2147483646)
      {
        goto LABEL_558;
      }

LABEL_561:
      if (v517 > v289)
      {
        *a12 = v301;
        *a13 = v527[0];
        v517 = v289;
        v258 = v179 + v180;
        v271 = v36;
      }

      goto LABEL_563;
    }
  }

  v36 = v520;
  v271 = v299;
  LODWORD(v289) = v302;
  if (v302 <= 2147483646)
  {
    goto LABEL_561;
  }

LABEL_558:
  LODWORD(v289) = 0x7FFFFFFF;
LABEL_563:
  v181 = a11;
LABEL_564:
  v309 = (v252 >= v275) | (2 * (v282 >= v289));
  if (v309 <= 1)
  {
    if (!v309)
    {
      if (v502)
      {
        goto LABEL_771;
      }

      v310 = v180 - v179;
      if (v180 - v179 < v525 || v310 > v522)
      {
        goto LABEL_771;
      }

      v507 = v271;
      v311 = v511 + ((v310 >> 3) * v515 + (v249 >> 3));
      v312 = a14 ? (*(v512 + 40))(v311) : (*(v512 + 32))(v311);
      if (v181)
      {
        v377 = v249 != v505;
        v378 = 2;
        if (v249 != v505)
        {
          v378 = 3;
        }

        if (v504 != v310)
        {
          v377 = v378;
        }

        v379 = (((v506 * (*(*v181 + 4 * (v310 - v504)) + *(v181[1] + 4 * (v249 - v505)) + *(a10 + 4 * v377))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v379 = 0;
      }

      v36 = v520;
      v271 = v507;
      v388 = v379 + v312;
      if (v388 > 2147483646)
      {
        goto LABEL_771;
      }

      v389 = v249;
      if (v517 <= v388)
      {
        goto LABEL_771;
      }

LABEL_770:
      *a12 = v312;
      *a13 = v527[0];
      v517 = v388;
      v258 = v310;
      v271 = v389;
      goto LABEL_771;
    }

    if (v499)
    {
      goto LABEL_771;
    }

    v310 = v180 - v179;
    if (v180 - v179 < v525 || v310 > v522)
    {
      goto LABEL_771;
    }

    v509 = v271;
    v314 = v511 + ((v310 >> 3) * v515 + (v272 >> 3));
    if (a14)
    {
      v312 = (*(v512 + 40))(v314);
    }

    else
    {
      v312 = (*(v512 + 32))(v314);
    }

    v383 = v312;
    if (v181)
    {
      goto LABEL_752;
    }

    goto LABEL_759;
  }

  if (v309 != 2)
  {
    if (v499)
    {
      goto LABEL_771;
    }

    v310 = v179 + v180;
    if (v179 + v180 < v525 || v310 > v522)
    {
      goto LABEL_771;
    }

    v509 = v271;
    v315 = v511 + ((v310 >> 3) * v515 + (v272 >> 3));
    if (a14)
    {
      v312 = (*(v512 + 40))(v315);
    }

    else
    {
      v312 = (*(v512 + 32))(v315);
    }

    v383 = v312;
    if (v181)
    {
LABEL_752:
      v384 = v272 != v505;
      v385 = 2;
      if (v272 != v505)
      {
        v385 = 3;
      }

      if (v504 != v310)
      {
        v384 = v385;
      }

      v386 = (((v506 * (*(*v181 + 4 * (v310 - v504)) + *(v181[1] + 4 * (v272 - v505)) + *(a10 + 4 * v384))) << 18) + 0x80000000) >> 32;
      goto LABEL_760;
    }

LABEL_759:
    v386 = 0;
LABEL_760:
    v36 = v520;
    v271 = v509;
    v387 = v386 + v383;
    if (v387 > 2147483646)
    {
      goto LABEL_771;
    }

    LODWORD(v388) = v387;
    v389 = v272;
LABEL_769:
    if (v517 <= v387)
    {
      goto LABEL_771;
    }

    goto LABEL_770;
  }

  if ((v502 & 1) == 0)
  {
    v310 = v179 + v180;
    if (v179 + v180 >= v525 && v310 <= v522)
    {
      v508 = v271;
      v313 = v511 + ((v310 >> 3) * v515 + (v249 >> 3));
      v312 = a14 ? (*(v512 + 40))(v313) : (*(v512 + 32))(v313);
      if (v181)
      {
        v380 = v249 != v505;
        v381 = 2;
        if (v249 != v505)
        {
          v381 = 3;
        }

        if (v504 != v310)
        {
          v380 = v381;
        }

        v382 = (((v506 * (*(*v181 + 4 * (v310 - v504)) + *(v181[1] + 4 * (v249 - v505)) + *(a10 + 4 * v380))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v382 = 0;
      }

      v36 = v520;
      v271 = v508;
      v387 = v382 + v312;
      if (v387 <= 2147483646)
      {
        LODWORD(v388) = v387;
        v389 = v249;
        goto LABEL_769;
      }
    }
  }

LABEL_771:
  if (a8 < 2)
  {
    goto LABEL_792;
  }

  if (v258 == v180 || v271 == v36)
  {
    if (v258 == v180 && v271 != v36)
    {
      v396 = v36 + 2 * (v271 - v36);
      if (v396 < v524)
      {
        LOWORD(v258) = v180;
        LOWORD(v36) = v271;
        v397 = a14;
      }

      else
      {
        v397 = a14;
        if (v396 > v523)
        {
          LOWORD(v258) = v180;
          LOWORD(v36) = v271;
        }

        else
        {
          v398 = v179 + v180;
          if (v179 + v180 < v525 || v398 > v522)
          {
            goto LABEL_899;
          }

          v399 = v271;
          v400 = v511 + ((v398 >> 3) * v515 + (v396 >> 3));
          v401 = a14 ? (*(v512 + 40))(v400) : (*(v512 + 32))(v400);
          if (v181)
          {
            v442 = v396 != v505;
            v443 = 2;
            if (v396 != v505)
            {
              v443 = 3;
            }

            if (v504 != v398)
            {
              v442 = v443;
            }

            v444 = (((v506 * (*(*v181 + 4 * (v398 - v504)) + *(v181[1] + 4 * (v396 - v505)) + *(a10 + 4 * v442))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v444 = 0;
          }

          v271 = v399;
          v445 = v444 + v401;
          if (v445 <= 2147483646)
          {
            LOWORD(v258) = v180;
            LOWORD(v36) = v399;
            if (v517 > v445)
            {
              *a12 = v401;
              *a13 = v527[0];
              v517 = v444 + v401;
              LOWORD(v258) = v179 + v180;
              LOWORD(v36) = v396;
            }
          }

          else
          {
LABEL_899:
            LOWORD(v258) = v180;
            LOWORD(v36) = v271;
          }

          v446 = v180 - v179;
          if (v180 - v179 >= v525 && v446 <= v522)
          {
            v510 = v271;
            v447 = v36;
            v448 = v511 + ((v446 >> 3) * v515 + (v396 >> 3));
            if (a14)
            {
              v449 = (*(v512 + 40))(v448);
            }

            else
            {
              v449 = (*(v512 + 32))(v448);
            }

            if (v181)
            {
              v450 = v396 != v505;
              v451 = 2;
              if (v396 != v505)
              {
                v451 = 3;
              }

              if (v504 != v446)
              {
                v450 = v451;
              }

              v452 = (((v506 * (*(*v181 + 4 * (v446 - v504)) + *(v181[1] + 4 * (v396 - v505)) + *(a10 + 4 * v450))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v452 = 0;
            }

            LOWORD(v36) = v447;
            v271 = v510;
            v453 = v452 + v449;
            if (v453 <= 2147483646 && v517 > v453)
            {
              *a12 = v449;
              *a13 = v527[0];
              v517 = v452 + v449;
              LOWORD(v258) = v180 - v179;
              LOWORD(v36) = v396;
            }
          }
        }
      }

      v455 = v271 < v524 || v271 > v523;
      if (v282 >= v289)
      {
        v31 = v517;
        if (v455)
        {
          goto LABEL_458;
        }

        v433 = v180 - v179;
        if (v433 < v525 || v433 > v522)
        {
          goto LABEL_458;
        }

        v456 = v36;
        v458 = v511 + ((v433 >> 3) * v515 + (v271 >> 3));
        LOWORD(v249) = v271;
        if (v397)
        {
          v437 = (*(v512 + 40))(v458);
        }

        else
        {
          v437 = (*(v512 + 32))(v458);
        }

        v487 = v437;
        if (v181)
        {
          goto LABEL_1011;
        }
      }

      else
      {
        v31 = v517;
        if (v455)
        {
          goto LABEL_458;
        }

        v433 = v179 + v180;
        if (v433 < v525 || v433 > v522)
        {
          goto LABEL_458;
        }

        v456 = v36;
        v457 = v511 + ((v433 >> 3) * v515 + (v271 >> 3));
        LOWORD(v249) = v271;
        if (v397)
        {
          v437 = (*(v512 + 40))(v457);
        }

        else
        {
          v437 = (*(v512 + 32))(v457);
        }

        v487 = v437;
        if (v181)
        {
LABEL_1011:
          v488 = v249 != v505;
          v489 = 2;
          if (v249 != v505)
          {
            v489 = 3;
          }

          if (v504 != v433)
          {
            v488 = v489;
          }

          v490 = (((v506 * (*(*v181 + 4 * (v433 - v504)) + *(v181[1] + 4 * (v249 - v505)) + *(a10 + 4 * v488))) << 18) + 0x80000000) >> 32;
          goto LABEL_1019;
        }
      }

      v490 = 0;
LABEL_1019:
      LOWORD(v36) = v456;
      v485 = v490 + v487;
      if (v485 > 2147483646)
      {
        goto LABEL_458;
      }

      v441 = v485;
      goto LABEL_1021;
    }

    if (v258 != v180 && v271 == v36)
    {
      v402 = v180 + 2 * (v258 - v180);
      if (v499)
      {
        v403 = v258;
        v404 = v515;
      }

      else
      {
        v404 = v515;
        if (v402 < v525 || v402 > v522)
        {
          v403 = v258;
        }

        else
        {
          v409 = v511 + ((v402 >> 3) * v515 + (v272 >> 3));
          if (a14)
          {
            v410 = (*(v512 + 40))(v409, v515, v272 & 7, v402 & 7, v513, v514, v527);
          }

          else
          {
            v410 = (*(v512 + 32))(v409, v515, v272 & 7, v402 & 7, v513, v514, v527);
          }

          if (v181)
          {
            v463 = v272 != v505;
            v464 = 2;
            if (v272 != v505)
            {
              v464 = 3;
            }

            if (v504 != v402)
            {
              v463 = v464;
            }

            v465 = (((v506 * (*(*v181 + 4 * (v402 - v504)) + *(v181[1] + 4 * (v272 - v505)) + *(a10 + 4 * v463))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v465 = 0;
          }

          LOWORD(v36) = v520;
          v466 = v465 + v410;
          v403 = v258;
          if (v466 <= 2147483646 && v517 > v466)
          {
            *a12 = v410;
            *a13 = v527[0];
            v517 = v465 + v410;
            v403 = v402;
            LOWORD(v36) = v272;
          }
        }
      }

      if ((v502 & 1) == 0 && v402 >= v525 && v402 <= v522)
      {
        v470 = v36;
        v471 = v511 + (v402 >> 3) * v404 + (v249 >> 3);
        if (a14)
        {
          v472 = (*(v512 + 40))(v471, v404, v249 & 7, v402 & 7, v513, v514, v527);
        }

        else
        {
          v472 = (*(v512 + 32))(v471, v404, v249 & 7, v402 & 7, v513, v514, v527);
        }

        if (v181)
        {
          v479 = v249 != v505;
          v480 = 2;
          if (v249 != v505)
          {
            v480 = 3;
          }

          if (v504 != v402)
          {
            v479 = v480;
          }

          v481 = (((v506 * (*(*v181 + 4 * (v402 - v504)) + *(v181[1] + 4 * (v249 - v505)) + *(a10 + 4 * v479))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v481 = 0;
        }

        LOWORD(v36) = v470;
        v486 = v481 + v472;
        if (v486 <= 2147483646 && v517 > v486)
        {
          *a12 = v472;
          *a13 = v527[0];
          v517 = v481 + v472;
          v403 = v402;
          LOWORD(v36) = v249;
        }
      }

      if (v309 > 1)
      {
        if (v309 != 3)
        {
LABEL_959:
          v467 = v499;
          if (v258 < v525)
          {
            v467 = 1;
          }

          if ((v467 & 1) == 0 && v258 <= v522)
          {
            v468 = v36;
            v469 = v511 + (v258 >> 3) * v404 + (v272 >> 3);
            v437 = a14 ? (*(v512 + 40))(v469, v404, v272 & 7, v258 & 7, v513, v514, v527) : (*(v512 + 32))(v469, v404, v272 & 7, v258 & 7, v513, v514, v527);
            if (v181)
            {
              v476 = v272 != v505;
              v477 = 2;
              if (v272 != v505)
              {
                v477 = 3;
              }

              if (v504 != v258)
              {
                v476 = v477;
              }

              v478 = (((v506 * (*(*v181 + 4 * (v258 - v504)) + *(v181[1] + 4 * (v272 - v505)) + *(a10 + 4 * v476))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v478 = 0;
            }

            LOWORD(v36) = v468;
            v485 = v478 + v437;
            if (v485 <= 2147483646)
            {
              v441 = v485;
              LOWORD(v433) = v258;
              LOWORD(v249) = v272;
              LOWORD(v258) = v403;
              v31 = v517;
LABEL_1021:
              if (v31 <= v485)
              {
                goto LABEL_458;
              }

LABEL_1022:
              *a12 = v437;
              *a13 = v527[0];
              v31 = v441;
              LOWORD(v258) = v433;
              LOWORD(v36) = v249;
              goto LABEL_458;
            }
          }

          goto LABEL_1000;
        }
      }

      else if (!v309)
      {
        goto LABEL_959;
      }

      v473 = v502;
      if (v258 < v525)
      {
        v473 = 1;
      }

      if ((v473 & 1) == 0)
      {
        v31 = v517;
        if (v258 > v522)
        {
          goto LABEL_1008;
        }

        v474 = v36;
        v475 = v511 + (v258 >> 3) * v404 + (v249 >> 3);
        v437 = a14 ? (*(v512 + 40))(v475, v404, v249 & 7, v258 & 7, v513, v514, v527) : (*(v512 + 32))(v475, v404, v249 & 7, v258 & 7, v513, v514, v527);
        if (v181)
        {
          v482 = v249 != v505;
          v483 = 2;
          if (v249 != v505)
          {
            v483 = 3;
          }

          if (v504 != v258)
          {
            v482 = v483;
          }

          v484 = (((v506 * (*(*v181 + 4 * (v258 - v504)) + *(v181[1] + 4 * (v249 - v505)) + *(a10 + 4 * v482))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v484 = 0;
        }

        LOWORD(v36) = v474;
        v485 = v484 + v437;
        if (v485 > 2147483646)
        {
LABEL_1008:
          LOWORD(v258) = v403;
          goto LABEL_458;
        }

        v441 = v485;
        LOWORD(v433) = v258;
        LOWORD(v258) = v403;
        goto LABEL_1021;
      }

LABEL_1000:
      LOWORD(v258) = v403;
      goto LABEL_793;
    }

LABEL_792:
    LOWORD(v36) = v271;
LABEL_793:
    v31 = v517;
    goto LABEL_458;
  }

  v390 = v36 + 2 * (v271 - v36);
  v31 = v517;
  if (v390 < v524)
  {
    LOWORD(v36) = v271;
    v391 = v515;
    v392 = a14;
  }

  else
  {
    v391 = v515;
    v392 = a14;
    if (v390 > v523 || v258 < v525 || v258 > v522)
    {
      LOWORD(v36) = v271;
    }

    else
    {
      v393 = v271;
      v394 = v511 + ((v258 >> 3) * v515 + (v390 >> 3));
      if (a14)
      {
        v395 = (*(v512 + 40))(v394, v515, v390 & 7, v258 & 7, v513, v514, v527, a14);
      }

      else
      {
        v395 = (*(v512 + 32))(v394, v515, v390 & 7, v258 & 7, v513, v514, v527);
      }

      if (v181)
      {
        v405 = v390 != v505;
        v406 = 2;
        if (v390 != v505)
        {
          v406 = 3;
        }

        if (v504 != v258)
        {
          v405 = v406;
        }

        v407 = (((v506 * (*(*v181 + 4 * (v258 - v504)) + *(v181[1] + 4 * (v390 - v505)) + *(a10 + 4 * v405))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v407 = 0;
      }

      v271 = v393;
      v408 = v407 + v395;
      LOWORD(v36) = v393;
      if (v408 <= 2147483646 && v517 > v408)
      {
        *a12 = v395;
        *a13 = v527[0];
        v31 = v407 + v395;
        LOWORD(v36) = v390;
      }
    }
  }

  if (v271 >= v524 && v271 <= v523)
  {
    v433 = v180 + 2 * (v258 - v180);
    if (v433 >= v525 && v433 <= v522)
    {
      v434 = v36;
      v435 = v511 + (v433 >> 3) * v391 + (v271 >> 3);
      v436 = v271;
      v437 = v392 ? (*(v512 + 40))(v435, v391, v271 & 7, v433 & 7, v513, v514, v527, v392) : (*(v512 + 32))(v435, v391, v271 & 7, v433 & 7, v513, v514, v527);
      if (v181)
      {
        LOWORD(v249) = v436;
        v438 = v436 != v505;
        v439 = 2;
        if (v436 != v505)
        {
          v439 = 3;
        }

        if (v504 != v433)
        {
          v438 = v439;
        }

        v440 = (((v506 * (*(*v181 + 4 * (v433 - v504)) + *(v181[1] + 4 * (v436 - v505)) + *(a10 + 4 * v438))) << 18) + 0x80000000) >> 32;
        LOWORD(v36) = v434;
      }

      else
      {
        v440 = 0;
        LOWORD(v36) = v434;
        LOWORD(v249) = v436;
      }

      v441 = v440 + v437;
      if (v441 <= 2147483646 && v31 > v441)
      {
        goto LABEL_1022;
      }
    }
  }

LABEL_458:
  *a2 = v258;
  a2[1] = v36;
  return v31;
}

uint64_t vp9_find_best_sub_pixel_tree_pruned(uint64_t a1, __int16 *a2, unsigned __int16 *a3, int a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, _DWORD *a9, uint64_t a10, void *a11, unsigned int *a12, _DWORD *a13, uint8x16_t *a14, int a15, int a16)
{
  v17 = a5;
  v18 = a14;
  v19 = *(a1 + 8216);
  v20 = *(a1 + 8224);
  v573[0] = 0;
  v21 = *(a1 + 24952);
  v22 = *a2;
  v23 = a2[1];
  v24 = *a3;
  v25 = a3[1];
  v26 = 8 * *(a1 + 25848);
  if (v26 <= v25 - 8184)
  {
    v26 = v25 - 8184;
  }

  v27 = 8 * *(a1 + 25852);
  if (v27 >= v25 + 8184)
  {
    v27 = v25 + 8184;
  }

  v28 = v24 - 8184;
  if (8 * *(a1 + 25856) > v24 - 8184)
  {
    v28 = 8 * *(a1 + 25856);
  }

  v29 = 8 * *(a1 + 25860);
  if (v29 >= v24 + 8184)
  {
    v29 = v24 + 8184;
  }

  if (v26 <= -16383)
  {
    v26 = -16383;
  }

  v571 = v26;
  if (v27 >= 16382)
  {
    v27 = 16382;
  }

  v570 = v27;
  if (v28 <= -16383)
  {
    v28 = -16383;
  }

  v572 = v28;
  v541 = v21 * v22;
  v30 = v541 + v23;
  v557 = *a3;
  v558 = a3[1];
  v31 = 8 * v22;
  if (v29 >= 16382)
  {
    v29 = 16382;
  }

  v569 = v29;
  v538 = a2[1];
  *a2 = v31;
  v560 = 8 * v23;
  a2[1] = 8 * v23;
  v545 = 8 * v22;
  v559 = a5;
  v32 = a11;
  v565 = a6;
  v566 = v19;
  v567 = v20;
  v564 = *(a1 + 24944);
  v568 = setup_center_error(a1 + 24912, a2, a3, a5, a6, v19, v20, v564, v21, a14, a15, a16, v30, a10, a11, a13, a12);
  v563 = v21;
  if (a9)
  {
    if (*a9 != 0x7FFFFFFF)
    {
      v33 = a9[1];
      if (v33 != 0x7FFFFFFF)
      {
        v34 = a9[2];
        if (v34 != 0x7FFFFFFF)
        {
          v35 = a9[3];
          if (v35 != 0x7FFFFFFF)
          {
            v36 = a9[4];
            if (v36 != 0x7FFFFFFF)
            {
              v148 = (v33 >= v35) | (2 * (v34 >= v36));
              if (v148 <= 1)
              {
                v149 = v560;
                if (!v148)
                {
                  v119 = v560 - 4;
                  v150 = v560 - 4 >= v571 && v560 - 4 <= v570;
                  v151 = !v150;
                  if (v150 && v31 >= v572 && v31 <= v569)
                  {
                    v152 = v541 + (v119 >> 3);
                    if (a14)
                    {
                      v153 = (*(v565 + 40))(v564 + v152, v21, 4, 0, v566, v567, v573, a14);
                    }

                    else
                    {
                      v153 = (*(v565 + 32))(v564 + v152, v21, 4, 0, v566, v567, v573);
                    }

                    if (a11)
                    {
                      v197 = (v560 - 4) != v558;
                      v198 = 2;
                      if ((v560 - 4) != v558)
                      {
                        v198 = 3;
                      }

                      if (v557 != v31)
                      {
                        v197 = v198;
                      }

                      v199 = (((v17 * (*(*a11 + 4 * (v31 - v557)) + *(a11[1] + 4 * (v119 - v558)) + *(a10 + 4 * v197))) << 18) + 0x80000000) >> 32;
                    }

                    else
                    {
                      v199 = 0;
                    }

                    v149 = v560;
                    v209 = v199 + v153;
                    v131 = v560;
                    if (v209 <= 2147483646 && v568 > v209)
                    {
                      *a12 = v153;
                      *a13 = v573[0];
                      v568 = v199 + v153;
                      v131 = v560 - 4;
                    }
                  }

                  else
                  {
                    v131 = v560;
                  }

                  if (v149 < v571 || v149 > v570 || (v210 = v31 | 4, (v31 | 4) < v572) || v210 > v569)
                  {
                    v116 = v31;
                  }

                  else
                  {
                    if (a14)
                    {
                      v211 = (*(v565 + 40))(v564 + v30, v21, 0, 4, v566, v567, v573, a14);
                    }

                    else
                    {
                      v211 = (*(v565 + 32))(v564 + v30, v21, 0, 4, v566, v567, v573);
                    }

                    v116 = v31;
                    if (a11)
                    {
                      v228 = v560 != v558;
                      v229 = 2;
                      if (v560 != v558)
                      {
                        v229 = 3;
                      }

                      if (v557 != v210)
                      {
                        v228 = v229;
                      }

                      v230 = (((v559 * (*(*a11 + 4 * (v210 - v557)) + *(a11[1] + 4 * (v560 - v558)) + *(a10 + 4 * v228))) << 18) + 0x80000000) >> 32;
                    }

                    else
                    {
                      v230 = 0;
                    }

                    v240 = v230 + v211;
                    if (v240 <= 2147483646 && v568 > v240)
                    {
                      *a12 = v211;
                      *a13 = v573[0];
                      v568 = v230 + v211;
                      v116 = v31 | 4;
                      v131 = v560;
                    }
                  }

                  if (v151)
                  {
                    goto LABEL_297;
                  }

                  v132 = v31 | 4;
                  if ((v31 | 4) < v572)
                  {
                    goto LABEL_297;
                  }

                  v117 = v131;
                  if (v132 <= v569)
                  {
                    v212 = v541 + (v119 >> 3);
                    v129 = a14 ? (*(v565 + 40))(v564 + v212, v21, 4, 4, v566, v567, v573, a14) : (*(v565 + 32))(v564 + v212, v21, 4, 4, v566, v567, v573);
                    if (a11)
                    {
                      v225 = (v560 - 4) != v558;
                      v226 = 2;
                      if ((v560 - 4) != v558)
                      {
                        v226 = 3;
                      }

                      if (v557 != v132)
                      {
                        v225 = v226;
                      }

                      v227 = (((v559 * (*(*a11 + 4 * (v132 - v557)) + *(a11[1] + 4 * (v119 - v558)) + *(a10 + 4 * v225))) << 18) + 0x80000000) >> 32;
                    }

                    else
                    {
                      v227 = 0;
                    }

                    v138 = v227 + v129;
                    if (v138 <= 2147483646 && v568 > v138)
                    {
LABEL_548:
                      *a12 = v129;
                      *a13 = v573[0];
                      v568 = v138;
                      v116 = v132;
                      v117 = v119;
                      goto LABEL_549;
                    }
                  }

                  goto LABEL_549;
                }

                v119 = v560 | 4;
                v188 = (v560 | 4) >= v571 && (v560 | 4) <= v570;
                v189 = !v188;
                if (v188 && v31 >= v572 && v31 <= v569)
                {
                  v190 = v564 + v30;
                  if (a14)
                  {
                    v191 = (*(v565 + 40))(v190, v21, 4, 0, v566, v567, v573, a14);
                  }

                  else
                  {
                    v191 = (*(v565 + 32))(v190, v21, 4, 0, v566, v567, v573);
                  }

                  if (a11)
                  {
                    v203 = (v560 | 4) != v558;
                    v204 = 2;
                    if ((v560 | 4) != v558)
                    {
                      v204 = 3;
                    }

                    if (v557 != v31)
                    {
                      v203 = v204;
                    }

                    v205 = (((v17 * (*(*a11 + 4 * (v31 - v557)) + *(a11[1] + 4 * (v119 - v558)) + *(a10 + 4 * v203))) << 18) + 0x80000000) >> 32;
                  }

                  else
                  {
                    v205 = 0;
                  }

                  v149 = v560;
                  v217 = v205 + v191;
                  v196 = v560;
                  if (v217 <= 2147483646 && v568 > v217)
                  {
                    *a12 = v191;
                    *a13 = v573[0];
                    v568 = v205 + v191;
                    v196 = v560 | 4;
                  }
                }

                else
                {
                  v196 = v560;
                }

                if (v149 >= v571 && v149 <= v570)
                {
                  v218 = v31 | 4;
                  if ((v31 | 4) >= v572 && v218 <= v569)
                  {
                    v219 = v564 + v30;
                    if (a14)
                    {
                      v220 = (*(v565 + 40))(v219, v21, 0, 4, v566, v567, v573, a14);
                    }

                    else
                    {
                      v220 = (*(v565 + 32))(v219, v21, 0, 4, v566, v567, v573);
                    }

                    if (a11)
                    {
                      v234 = v560 != v558;
                      v235 = 2;
                      if (v560 != v558)
                      {
                        v235 = 3;
                      }

                      if (v557 != v218)
                      {
                        v234 = v235;
                      }

                      v236 = (((v559 * (*(*a11 + 4 * (v218 - v557)) + *(a11[1] + 4 * (v560 - v558)) + *(a10 + 4 * v234))) << 18) + 0x80000000) >> 32;
                    }

                    else
                    {
                      v236 = 0;
                    }

                    v243 = v236 + v220;
                    if (v243 <= 2147483646 && v568 > v243)
                    {
                      *a12 = v220;
                      *a13 = v573[0];
                      v568 = v236 + v220;
                      v545 = v31 | 4;
                      v196 = v560;
                    }
                  }
                }

                if ((v189 & 1) == 0)
                {
                  v132 = v31 | 4;
                  if ((v31 | 4) >= v572)
                  {
                    v117 = v196;
                    if (v132 > v569)
                    {
                      v116 = v545;
                      if (a7 == 2)
                      {
                        goto LABEL_550;
                      }

                      goto LABEL_552;
                    }

                    v244 = v564 + v30;
                    if (a14)
                    {
                      v129 = (*(v565 + 40))(v244, v21, 4, 4, v566, v567, v573, a14);
                    }

                    else
                    {
                      v129 = (*(v565 + 32))(v244, v21, 4, 4, v566, v567, v573);
                    }

                    v245 = v129;
                    v116 = v545;
                    if (a11)
                    {
                      goto LABEL_540;
                    }

                    goto LABEL_527;
                  }
                }

LABEL_533:
                v117 = v196;
                v116 = v545;
                if (a7 == 2)
                {
                  goto LABEL_550;
                }

                goto LABEL_552;
              }

              v169 = v560;
              if (v148 == 2)
              {
                v119 = v560 - 4;
                v170 = v560 - 4 >= v571 && v560 - 4 <= v570;
                v171 = !v170;
                if (v170 && v31 >= v572 && v31 <= v569)
                {
                  v172 = v541 + (v119 >> 3);
                  if (a14)
                  {
                    v173 = (*(v565 + 40))(v564 + v172, v21, 4, 0, v566, v567, v573, a14);
                  }

                  else
                  {
                    v173 = (*(v565 + 32))(v564 + v172, v21, 4, 0, v566, v567, v573);
                  }

                  if (a11)
                  {
                    v200 = (v560 - 4) != v558;
                    v201 = 2;
                    if ((v560 - 4) != v558)
                    {
                      v201 = 3;
                    }

                    if (v557 != v31)
                    {
                      v200 = v201;
                    }

                    v202 = (((v17 * (*(*a11 + 4 * (v31 - v557)) + *(a11[1] + 4 * (v119 - v558)) + *(a10 + 4 * v200))) << 18) + 0x80000000) >> 32;
                  }

                  else
                  {
                    v202 = 0;
                  }

                  v169 = v560;
                  v213 = v202 + v173;
                  v196 = v560;
                  if (v213 <= 2147483646 && v568 > v213)
                  {
                    *a12 = v173;
                    *a13 = v573[0];
                    v568 = v202 + v173;
                    v196 = v560 - 4;
                  }
                }

                else
                {
                  v196 = v560;
                }

                if (v169 >= v571 && v169 <= v570)
                {
                  v214 = v31 - 4;
                  if (v31 - 4 >= v572 && v214 <= v569)
                  {
                    v215 = v564 + v538 + (v214 >> 3) * v21;
                    if (a14)
                    {
                      v216 = (*(v565 + 40))(v215, v21, 0, 4, v566, v567, v573, a14);
                    }

                    else
                    {
                      v216 = (*(v565 + 32))(v215, v21, 0, 4, v566, v567, v573);
                    }

                    if (a11)
                    {
                      v231 = v560 != v558;
                      v232 = 2;
                      if (v560 != v558)
                      {
                        v232 = 3;
                      }

                      if (v557 != v214)
                      {
                        v231 = v232;
                      }

                      v233 = (((v559 * (*(*a11 + 4 * (v214 - v557)) + *(a11[1] + 4 * (v560 - v558)) + *(a10 + 4 * v231))) << 18) + 0x80000000) >> 32;
                    }

                    else
                    {
                      v233 = 0;
                    }

                    v241 = v233 + v216;
                    if (v241 <= 2147483646 && v568 > v241)
                    {
                      *a12 = v216;
                      *a13 = v573[0];
                      v568 = v233 + v216;
                      v545 = v31 - 4;
                      v196 = v560;
                    }
                  }
                }

                if (v171)
                {
                  goto LABEL_533;
                }

                v132 = v31 - 4;
                v116 = v545;
                if (v31 - 4 >= v572)
                {
                  v117 = v196;
                  if (v132 > v569)
                  {
                    goto LABEL_549;
                  }

                  v242 = v564 + (v132 >> 3) * v21 + (v119 >> 3);
                  if (!a14)
                  {
LABEL_513:
                    v129 = (*(v565 + 32))(v242, v21, 4, 4, v566, v567, v573);
                    goto LABEL_539;
                  }

LABEL_538:
                  v129 = (*(v565 + 40))(v242, v21, 4, 4, v566, v567, v573, a14);
                  goto LABEL_539;
                }
              }

              else
              {
                v119 = v560 | 4;
                v192 = (v560 | 4) >= v571 && (v560 | 4) <= v570;
                v193 = !v192;
                if (v192 && v31 >= v572 && v31 <= v569)
                {
                  v194 = v564 + v30;
                  if (a14)
                  {
                    v195 = (*(v565 + 40))(v194, v21, 4, 0, v566, v567, v573, a14);
                  }

                  else
                  {
                    v195 = (*(v565 + 32))(v194, v21, 4, 0, v566, v567, v573);
                  }

                  if (a11)
                  {
                    v206 = (v560 | 4) != v558;
                    v207 = 2;
                    if ((v560 | 4) != v558)
                    {
                      v207 = 3;
                    }

                    if (v557 != v31)
                    {
                      v206 = v207;
                    }

                    v208 = (((v17 * (*(*a11 + 4 * (v31 - v557)) + *(a11[1] + 4 * (v119 - v558)) + *(a10 + 4 * v206))) << 18) + 0x80000000) >> 32;
                  }

                  else
                  {
                    v208 = 0;
                  }

                  v169 = v560;
                  v221 = v208 + v195;
                  v196 = v560;
                  if (v221 <= 2147483646 && v568 > v221)
                  {
                    *a12 = v195;
                    *a13 = v573[0];
                    v568 = v208 + v195;
                    v196 = v560 | 4;
                  }
                }

                else
                {
                  v196 = v560;
                }

                if (v169 >= v571 && v169 <= v570)
                {
                  v222 = v31 - 4;
                  if (v31 - 4 >= v572 && v222 <= v569)
                  {
                    v223 = v564 + v538 + (v222 >> 3) * v21;
                    if (a14)
                    {
                      v224 = (*(v565 + 40))(v223, v21, 0, 4, v566, v567, v573, a14);
                    }

                    else
                    {
                      v224 = (*(v565 + 32))(v223, v21, 0, 4, v566, v567, v573);
                    }

                    if (a11)
                    {
                      v237 = v560 != v558;
                      v238 = 2;
                      if (v560 != v558)
                      {
                        v238 = 3;
                      }

                      if (v557 != v222)
                      {
                        v237 = v238;
                      }

                      v239 = (((v559 * (*(*a11 + 4 * (v222 - v557)) + *(a11[1] + 4 * (v560 - v558)) + *(a10 + 4 * v237))) << 18) + 0x80000000) >> 32;
                    }

                    else
                    {
                      v239 = 0;
                    }

                    v247 = v239 + v224;
                    if (v247 <= 2147483646 && v568 > v247)
                    {
                      *a12 = v224;
                      *a13 = v573[0];
                      v568 = v239 + v224;
                      v545 = v31 - 4;
                      v196 = v560;
                    }
                  }
                }

                if (v193)
                {
                  goto LABEL_533;
                }

                v132 = v31 - 4;
                v116 = v545;
                if (v31 - 4 >= v572)
                {
                  v117 = v196;
                  if (v132 > v569)
                  {
                    goto LABEL_549;
                  }

                  v242 = v564 + v538 + (v132 >> 3) * v21;
                  if (!a14)
                  {
                    goto LABEL_513;
                  }

                  goto LABEL_538;
                }
              }

              v117 = v196;
              if (a7 == 2)
              {
                goto LABEL_550;
              }

              goto LABEL_552;
            }
          }
        }
      }
    }
  }

  v37 = v560;
  v38 = v560 - 4;
  v39 = v560 - 4 >= v571 && v38 <= v570;
  v40 = !v39;
  v540 = v40;
  LODWORD(v41) = 0x7FFFFFFF;
  if (!v39 || v31 < v572 || v31 > v569)
  {
    goto LABEL_45;
  }

  v42 = v541 + (v38 >> 3);
  if (a14)
  {
    v43 = (*(v565 + 40))(v564 + v42, v21, 4, 0, v566, v567, v573, a14);
    v44 = v43;
    if (a11)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v43 = (*(v565 + 32))(v564 + v42, v21, 4, 0, v566, v567, v573);
    v44 = v43;
    if (a11)
    {
LABEL_35:
      v45 = (v560 - 4) != v558;
      v46 = 2;
      if ((v560 - 4) != v558)
      {
        v46 = 3;
      }

      if (v557 != v31)
      {
        v45 = v46;
      }

      v37 = v560;
      v41 = ((((v17 * (*(*a11 + 4 * (v31 - v557)) + *(a11[1] + 4 * (v38 - v558)) + *(a10 + 4 * v45))) << 18) + 0x80000000) >> 32) + v44;
      if (v41 > 2147483646)
      {
        goto LABEL_40;
      }

      goto LABEL_43;
    }
  }

  v37 = v560;
  LODWORD(v41) = v44;
  if (v44 > 2147483646)
  {
LABEL_40:
    LODWORD(v41) = 0x7FFFFFFF;
    goto LABEL_45;
  }

LABEL_43:
  if (v568 > v41)
  {
    *a12 = v43;
    *a13 = v573[0];
    v568 = v41;
    v47 = v560 - 4;
    goto LABEL_46;
  }

LABEL_45:
  v47 = v37;
LABEL_46:
  v48 = v37 | 4;
  v49 = (v37 | 4) >= v571 && v48 <= v570;
  v50 = !v49;
  v539 = v50;
  LODWORD(v51) = 0x7FFFFFFF;
  if (!v49 || v31 < v572 || v31 > v569)
  {
    goto LABEL_68;
  }

  v52 = v564 + v30;
  if (a14)
  {
    v53 = (*(v565 + 40))(v52, v21, 4, 0, v566, v567, v573, a14);
    v54 = a11;
    v55 = v53;
    if (a11)
    {
      goto LABEL_58;
    }

LABEL_65:
    v37 = v560;
    LODWORD(v51) = v55;
    if (v55 > 2147483646)
    {
LABEL_63:
      LODWORD(v51) = 0x7FFFFFFF;
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v53 = (*(v565 + 32))(v52, v21, 4, 0, v566, v567, v573);
  v54 = a11;
  v55 = v53;
  if (!a11)
  {
    goto LABEL_65;
  }

LABEL_58:
  v56 = *v54;
  v57 = v54[1];
  v58 = v48 != v558;
  v59 = 2;
  if (v48 != v558)
  {
    v59 = 3;
  }

  if (v557 != v31)
  {
    v58 = v59;
  }

  v37 = v560;
  v51 = ((((v559 * (*(v56 + 4 * (v31 - v557)) + *(v57 + 4 * (v48 - v558)) + *(a10 + 4 * v58))) << 18) + 0x80000000) >> 32) + v55;
  if (v51 > 2147483646)
  {
    goto LABEL_63;
  }

LABEL_66:
  if (v568 > v51)
  {
    *a12 = v53;
    *a13 = v573[0];
    v568 = v51;
    v47 = v48;
  }

LABEL_68:
  LODWORD(v60) = 0x7FFFFFFF;
  v537 = v48;
  if (v37 < v571 || v37 > v570)
  {
    v61 = v31;
    LODWORD(v71) = 0x7FFFFFFF;
    goto LABEL_102;
  }

  v61 = v31 - 4;
  LODWORD(v60) = 0x7FFFFFFF;
  if (v31 - 4 >= v572 && v61 <= v569)
  {
    v62 = v564 + v538 + (v61 >> 3) * v21;
    if (a14)
    {
      v63 = (*(v565 + 40))(v62, v21, 0, 4, v566, v567, v573);
      v64 = v63;
      v65 = a11;
      v37 = v560;
      if (a11)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v63 = (*(v565 + 32))(v62, v21, 0, 4, v566, v567, v573);
      v64 = v63;
      v65 = a11;
      v37 = v560;
      if (a11)
      {
LABEL_74:
        v66 = *v65;
        v67 = v65[1];
        v68 = v37 != v558;
        v69 = 2;
        if (v37 != v558)
        {
          v69 = 3;
        }

        if (v557 != v61)
        {
          v68 = v69;
        }

        v60 = ((((v559 * (*(v66 + 4 * (v61 - v557)) + *(v67 + 4 * (v37 - v558)) + *(a10 + 4 * v68))) << 18) + 0x80000000) >> 32) + v64;
        if (v60 > 2147483646)
        {
          goto LABEL_79;
        }

LABEL_83:
        if (v568 > v60)
        {
          *a12 = v63;
          *a13 = v573[0];
          v568 = v60;
          v70 = v37;
          v72 = v31 | 4;
          LODWORD(v71) = 0x7FFFFFFF;
          if ((v31 | 4) < v572)
          {
            goto LABEL_101;
          }

          goto LABEL_88;
        }

        goto LABEL_86;
      }
    }

    LODWORD(v60) = v64;
    if (v64 > 2147483646)
    {
LABEL_79:
      v70 = v47;
      LODWORD(v60) = 0x7FFFFFFF;
      goto LABEL_87;
    }

    goto LABEL_83;
  }

LABEL_86:
  v70 = v47;
LABEL_87:
  v61 = v31;
  v72 = v31 | 4;
  LODWORD(v71) = 0x7FFFFFFF;
  if ((v31 | 4) < v572)
  {
    goto LABEL_101;
  }

LABEL_88:
  if (v72 > v569)
  {
    goto LABEL_101;
  }

  v73 = v564 + v30;
  if (a14)
  {
    v74 = (*(v565 + 40))(v73, v563, 0, 4, v566, v567, v573);
    v75 = v74;
    v76 = a11;
    v37 = v560;
    if (a11)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v74 = (*(v565 + 32))(v73, v563, 0, 4, v566, v567, v573);
    v75 = v74;
    v76 = a11;
    v37 = v560;
    if (a11)
    {
LABEL_91:
      v77 = *v76;
      v78 = v76[1];
      v79 = v37 != v558;
      v80 = 2;
      if (v37 != v558)
      {
        v80 = 3;
      }

      if (v557 != v72)
      {
        v79 = v80;
      }

      v71 = ((((v559 * (*(v77 + 4 * (v72 - v557)) + *(v78 + 4 * (v37 - v558)) + *(a10 + 4 * v79))) << 18) + 0x80000000) >> 32) + v75;
      if (v71 > 2147483646)
      {
        goto LABEL_96;
      }

      goto LABEL_99;
    }
  }

  LODWORD(v71) = v75;
  if (v75 > 2147483646)
  {
LABEL_96:
    LODWORD(v71) = 0x7FFFFFFF;
    v47 = v70;
    goto LABEL_102;
  }

LABEL_99:
  if (v568 > v71)
  {
    *a12 = v74;
    *a13 = v573[0];
    v568 = v71;
    v61 = v72;
    v47 = v37;
    goto LABEL_102;
  }

LABEL_101:
  v47 = v70;
LABEL_102:
  v81 = (v41 >= v51) | (2 * (v60 >= v71));
  if (v81 <= 1)
  {
    if (!v81)
    {
      if (v540)
      {
        goto LABEL_155;
      }

      v82 = v31 - 4;
      if (v31 - 4 < v572 || v82 > v569)
      {
        goto LABEL_155;
      }

      v83 = v564 + ((v82 >> 3) * v563 + (v38 >> 3));
      if (a14)
      {
        v84 = (*(v565 + 40))(v83);
        v85 = v84;
        v86 = a11;
        if (a11)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v84 = (*(v565 + 32))(v83);
        v85 = v84;
        v86 = a11;
        if (a11)
        {
LABEL_109:
          v87 = *v86;
          v88 = v86[1];
          v89 = (v560 - 4) != v558;
          v90 = 2;
          if ((v560 - 4) != v558)
          {
            v90 = 3;
          }

          if (v557 != v82)
          {
            v89 = v90;
          }

          v37 = v560;
          v85 += (((v559 * (*(v87 + 4 * (v82 - v557)) + *(v88 + 4 * (v38 - v558)) + *(a10 + 4 * v89))) << 18) + 0x80000000) >> 32;
          if (v85 > 2147483646)
          {
            goto LABEL_155;
          }

          goto LABEL_145;
        }
      }

      v37 = v560;
      if (v85 > 2147483646)
      {
        goto LABEL_155;
      }

LABEL_145:
      v106 = v560 - 4;
      if (v568 <= v85)
      {
        goto LABEL_155;
      }

LABEL_154:
      *a12 = v84;
      *a13 = v573[0];
      v568 = v85;
      v61 = v82;
      v47 = v106;
      goto LABEL_155;
    }

    if (v539)
    {
      goto LABEL_155;
    }

    v82 = v31 - 4;
    if (v31 - 4 < v572 || v82 > v569)
    {
      goto LABEL_155;
    }

    v99 = v564 + (v538 + (v82 >> 3) * v563);
    if (a14)
    {
LABEL_136:
      v84 = (*(v565 + 40))(v99);
      v100 = v84;
      v101 = a11;
      if (a11)
      {
        goto LABEL_137;
      }

      goto LABEL_151;
    }

LABEL_150:
    v84 = (*(v565 + 32))(v99);
    v100 = v84;
    v101 = a11;
    if (a11)
    {
LABEL_137:
      v102 = *v101;
      v103 = v101[1];
      v104 = v537 != v558;
      v105 = 2;
      if (v537 != v558)
      {
        v105 = 3;
      }

      if (v557 != v82)
      {
        v104 = v105;
      }

      v37 = v560;
      v98 = ((((v559 * (*(v102 + 4 * (v82 - v557)) + *(v103 + 4 * (v537 - v558)) + *(a10 + 4 * v104))) << 18) + 0x80000000) >> 32) + v100;
      if (v98 > 2147483646)
      {
        goto LABEL_155;
      }

      goto LABEL_152;
    }

LABEL_151:
    v37 = v560;
    LODWORD(v98) = v100;
    if (v100 > 2147483646)
    {
      goto LABEL_155;
    }

LABEL_152:
    LODWORD(v85) = v98;
    v106 = v537;
LABEL_153:
    if (v568 <= v98)
    {
      goto LABEL_155;
    }

    goto LABEL_154;
  }

  if (v81 != 2)
  {
    if (v539)
    {
      goto LABEL_155;
    }

    v82 = v31 | 4;
    if ((v31 | 4) < v572 || v82 > v569)
    {
      goto LABEL_155;
    }

    v99 = v564 + v30;
    if (a14)
    {
      goto LABEL_136;
    }

    goto LABEL_150;
  }

  if (v540)
  {
    goto LABEL_155;
  }

  v82 = v31 | 4;
  if ((v31 | 4) < v572 || v82 > v569)
  {
    goto LABEL_155;
  }

  v91 = v541 + (v38 >> 3);
  if (a14)
  {
    v84 = (*(v565 + 40))(v564 + v91, v563, 4, 4, v566, v567, v573);
    v92 = v84;
    v93 = a11;
    if (a11)
    {
      goto LABEL_121;
    }

LABEL_148:
    v37 = v560;
    LODWORD(v98) = v92;
    if (v92 > 2147483646)
    {
      goto LABEL_155;
    }

    goto LABEL_149;
  }

  v84 = (*(v565 + 32))(v564 + v91, v563, 4, 4, v566, v567, v573);
  v92 = v84;
  v93 = a11;
  if (!a11)
  {
    goto LABEL_148;
  }

LABEL_121:
  v94 = *v93;
  v95 = v93[1];
  v96 = (v560 - 4) != v558;
  v97 = 2;
  if ((v560 - 4) != v558)
  {
    v97 = 3;
  }

  if (v557 != v82)
  {
    v96 = v97;
  }

  v37 = v560;
  v98 = ((((v559 * (*(v94 + 4 * (v82 - v557)) + *(v95 + 4 * (v38 - v558)) + *(a10 + 4 * v96))) << 18) + 0x80000000) >> 32) + v92;
  if (v98 <= 2147483646)
  {
LABEL_149:
    LODWORD(v85) = v98;
    v106 = v560 - 4;
    goto LABEL_153;
  }

LABEL_155:
  if (a8 < 2)
  {
    v116 = v61;
    v117 = v47;
    v32 = a11;
    goto LABEL_171;
  }

  v107 = v61 - v31;
  v32 = a11;
  if (v61 != v31 && v47 != v37)
  {
    v108 = 2 * (v47 - v37);
    v109 = v108 + v37;
    if (v108 + v37 < v571)
    {
      v115 = v47;
      v21 = v563;
      v18 = a14;
      if (v47 < v571)
      {
        goto LABEL_254;
      }

      goto LABEL_203;
    }

    v21 = v563;
    v18 = a14;
    if (v109 > v570 || v61 < v572 || v61 > v569)
    {
      v115 = v47;
      if (v47 < v571)
      {
        goto LABEL_254;
      }

      goto LABEL_203;
    }

    v110 = v564 + ((v61 >> 3) * v563 + (v109 >> 3));
    if (a14)
    {
      v111 = (*(v565 + 40))(v110, v563, v108 & 6, v61 & 7, v566, v567, v573, a14);
      v112 = v111;
      if (a11)
      {
        goto LABEL_164;
      }
    }

    else
    {
      v111 = (*(v565 + 32))(v110, v563, v108 & 6, v61 & 7, v566, v567, v573);
      v112 = v111;
      if (a11)
      {
LABEL_164:
        v113 = v109 != v558;
        v114 = 2;
        if (v109 != v558)
        {
          v114 = 3;
        }

        if (v557 != v61)
        {
          v113 = v114;
        }

        v112 += (((v559 * (*(*a11 + 4 * (v61 - v557)) + *(a11[1] + 4 * (v109 - v558)) + *(a10 + 4 * v113))) << 18) + 0x80000000) >> 32;
        v115 = v47;
        if (v112 > 2147483646)
        {
LABEL_202:
          if (v47 < v571)
          {
            goto LABEL_254;
          }

LABEL_203:
          if (v47 <= v570)
          {
            v119 = v47;
            v132 = 2 * v107 + v31;
            if (v132 >= v572)
            {
              v117 = v115;
              if (v132 > v569)
              {
                goto LABEL_235;
              }

              v133 = v564 + (v132 >> 3) * v21 + (v119 >> 3);
              if (v18)
              {
                v129 = (*(v565 + 40))(v133, v21, v119 & 7, (2 * v107) & 6, v566, v567, v573, v18);
                v134 = v129;
                if (a11)
                {
                  goto LABEL_208;
                }
              }

              else
              {
                v129 = (*(v565 + 32))(v133, v21, v119 & 7, (2 * v107) & 6, v566, v567, v573);
                v134 = v129;
                if (a11)
                {
LABEL_208:
                  v135 = v119 != v558;
                  v136 = 2;
                  if (v119 != v558)
                  {
                    v136 = 3;
                  }

                  if (v557 != v132)
                  {
                    v135 = v136;
                  }

                  v137 = ((((v559 * (*(*a11 + 4 * (v132 - v557)) + *(a11[1] + 4 * (v119 - v558)) + *(a10 + 4 * v135))) << 18) + 0x80000000) >> 32) + v134;
                  if (v137 <= 2147483646)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_235;
                }
              }

              LODWORD(v137) = v134;
              if (v134 <= 2147483646)
              {
LABEL_213:
                LODWORD(v138) = v137;
                v116 = v61;
                goto LABEL_547;
              }

LABEL_235:
              v116 = v61;
              if (a7 == 2)
              {
                goto LABEL_550;
              }

              goto LABEL_552;
            }
          }

LABEL_254:
          v116 = v61;
          v117 = v115;
          if (a7 == 2)
          {
            goto LABEL_550;
          }

          goto LABEL_552;
        }

LABEL_200:
        if (v568 > v112)
        {
          *a12 = v111;
          *a13 = v573[0];
          v568 = v112;
          v115 = v109;
        }

        goto LABEL_202;
      }
    }

    v115 = v47;
    if (v112 > 2147483646)
    {
      goto LABEL_202;
    }

    goto LABEL_200;
  }

  if (v61 == v31)
  {
    v118 = v47 - v37;
    if (v47 != v37)
    {
      v119 = v47;
      v120 = 2 * v118;
      v121 = 2 * v118 + v37;
      if (v121 < v571 || v121 > v570)
      {
        v130 = v119;
        v131 = v119;
        v116 = v31;
      }

      else
      {
        v122 = v31 | 4;
        if ((v31 | 4) < v572 || v122 > v569)
        {
          v131 = v119;
        }

        else
        {
          v123 = v541 + (v121 >> 3);
          if (a14)
          {
            v124 = (*(v565 + 40))(v564 + v123, v563, v120 & 6, 4, v566, v567, v573);
          }

          else
          {
            v124 = (*(v565 + 32))(v564 + v123, v563, v120 & 6, 4, v566, v567, v573);
          }

          if (a11)
          {
            v154 = v121 != v558;
            v155 = 2;
            if (v121 != v558)
            {
              v155 = 3;
            }

            if (v557 != v122)
            {
              v154 = v155;
            }

            v156 = (((v559 * (*(*a11 + 4 * (v122 - v557)) + *(a11[1] + 4 * (v121 - v558)) + *(a10 + 4 * v154))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v156 = 0;
          }

          v157 = v156 + v124;
          v131 = v119;
          if (v157 <= 2147483646 && v568 > v157)
          {
            *a12 = v124;
            *a13 = v573[0];
            v568 = v156 + v124;
            v545 = v31 | 4;
            v131 = v121;
          }
        }

        v158 = v31 - 4;
        if (v31 - 4 < v572 || v158 > v569)
        {
          v116 = v545;
          v130 = v119;
        }

        else
        {
          v159 = v564 + ((v158 >> 3) * v563 + (v121 >> 3));
          if (a14)
          {
            v160 = (*(v565 + 40))(v159);
          }

          else
          {
            v160 = (*(v565 + 32))(v159);
          }

          v116 = v545;
          if (a11)
          {
            v161 = v121 != v558;
            v162 = 2;
            if (v121 != v558)
            {
              v162 = 3;
            }

            if (v557 != v158)
            {
              v161 = v162;
            }

            v163 = (((v559 * (*(*a11 + 4 * (v158 - v557)) + *(a11[1] + 4 * (v121 - v558)) + *(a10 + 4 * v161))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v163 = 0;
          }

          v164 = v163 + v160;
          if (v164 <= 2147483646)
          {
            v130 = v119;
            if (v568 > v164)
            {
              *a12 = v160;
              *a13 = v573[0];
              v568 = v163 + v160;
              v116 = v31 - 4;
              v131 = v121;
            }
          }

          else
          {
            v130 = v119;
          }
        }
      }

      v166 = v130 < v571 || v130 > v570;
      if (v60 >= v71)
      {
        v21 = v563;
        v18 = a14;
        if (!v166)
        {
          v132 = v31 - 4;
          if (v31 - 4 >= v572)
          {
            v117 = v131;
            if (v132 > v569)
            {
              goto LABEL_549;
            }

            v168 = v564 + ((v132 >> 3) * v563 + (v119 >> 3));
            if (a14)
            {
              v129 = (*(v565 + 40))(v168, v563, v119 & 7, 4, v566, v567, v573, a14);
            }

            else
            {
              v129 = (*(v565 + 32))(v168, v563, v119 & 7, 4, v566, v567, v573);
            }

LABEL_539:
            v245 = v129;
            if (v32)
            {
LABEL_540:
              v248 = v119 != v558;
              v249 = 2;
              if (v119 != v558)
              {
                v249 = 3;
              }

              if (v557 != v132)
              {
                v248 = v249;
              }

              v246 = (((v559 * (*(*v32 + 4 * (v132 - v557)) + *(v32[1] + 4 * (v119 - v558)) + *(a10 + 4 * v248))) << 18) + 0x80000000) >> 32;
              goto LABEL_545;
            }

LABEL_527:
            v246 = 0;
LABEL_545:
            v137 = v246 + v245;
            if (v137 > 2147483646)
            {
              goto LABEL_549;
            }

            LODWORD(v138) = v137;
LABEL_547:
            if (v568 <= v137)
            {
              goto LABEL_549;
            }

            goto LABEL_548;
          }
        }
      }

      else
      {
        v21 = v563;
        v18 = a14;
        if (!v166)
        {
          v132 = v31 | 4;
          if ((v31 | 4) >= v572)
          {
            v117 = v131;
            if (v132 > v569)
            {
              goto LABEL_549;
            }

            v167 = v541 + (v119 >> 3);
            if (a14)
            {
              v129 = (*(v565 + 40))(v564 + v167, v563, v119 & 7, 4, v566, v567, v573, a14);
            }

            else
            {
              v129 = (*(v565 + 32))(v564 + v167, v563, v119 & 7, 4, v566, v567, v573);
            }

            goto LABEL_539;
          }
        }
      }

LABEL_297:
      v117 = v131;
      if (a7 == 2)
      {
        goto LABEL_550;
      }

      goto LABEL_552;
    }
  }

  if (v61 == v31)
  {
    v116 = v61;
    v117 = v47;
LABEL_171:
    v21 = v563;
    v18 = a14;
    if (a7 == 2)
    {
      goto LABEL_550;
    }

    goto LABEL_552;
  }

  v21 = v563;
  v18 = a14;
  if (v47 != v37)
  {
    v116 = v61;
    v117 = v47;
    if (a7 == 2)
    {
      goto LABEL_550;
    }

    goto LABEL_552;
  }

  v125 = 2 * (v61 - v31);
  if ((v539 & 1) != 0 || (v139 = v125 + v31, v125 + v31 < v572) || v139 > v569)
  {
    v126 = v61;
  }

  else
  {
    v140 = v564 + (v538 + (v139 >> 3) * v563);
    if (a14)
    {
      v141 = (*(v565 + 40))(v140, v563, 4, v125 & 6, v566, v567, v573, a14);
    }

    else
    {
      v141 = (*(v565 + 32))(v140, v563, 4, v125 & 6, v566, v567, v573);
    }

    if (a11)
    {
      v177 = v537 != v558;
      v178 = 2;
      if (v537 != v558)
      {
        v178 = 3;
      }

      if (v557 != v139)
      {
        v177 = v178;
      }

      v179 = (((v559 * (*(*a11 + 4 * (v139 - v557)) + *(a11[1] + 4 * (v537 - v558)) + *(a10 + 4 * v177))) << 18) + 0x80000000) >> 32;
    }

    else
    {
      v179 = 0;
    }

    v37 = v560;
    v186 = v179 + v141;
    v126 = v61;
    if (v186 <= 2147483646 && v568 > v186)
    {
      *a12 = v141;
      *a13 = v573[0];
      v568 = v179 + v141;
      v126 = v125 + v31;
      v37 = v537;
    }
  }

  if ((v540 & 1) != 0 || (v142 = v125 + v31, v125 + v31 < v572) || v142 > v569)
  {
    v116 = v126;
  }

  else
  {
    v143 = v37;
    v144 = v564 + ((v142 >> 3) * v563 + (v38 >> 3));
    if (a14)
    {
      v145 = (*(v565 + 40))(v144, v563, 4, v125 & 6, v566, v567, v573, a14);
    }

    else
    {
      v145 = (*(v565 + 32))(v144, v563, 4, v125 & 6, v566, v567, v573);
    }

    v116 = v126;
    if (a11)
    {
      v180 = (v560 - 4) != v558;
      v181 = 2;
      if ((v560 - 4) != v558)
      {
        v181 = 3;
      }

      if (v557 != v142)
      {
        v180 = v181;
      }

      v182 = (((v559 * (*(*a11 + 4 * (v142 - v557)) + *(a11[1] + 4 * (v38 - v558)) + *(a10 + 4 * v180))) << 18) + 0x80000000) >> 32;
    }

    else
    {
      v182 = 0;
    }

    v37 = v143;
    v187 = v182 + v145;
    if (v187 <= 2147483646 && v568 > v187)
    {
      *a12 = v145;
      *a13 = v573[0];
      v568 = v182 + v145;
      v116 = v142;
      v37 = v560 - 4;
    }
  }

  if (v81 > 1)
  {
    v32 = a11;
    if (v81 != 3)
    {
LABEL_189:
      v127 = v539;
      if (v61 < v572)
      {
        v127 = 1;
      }

      if ((v127 & 1) == 0)
      {
        v117 = v37;
        if (v61 <= v569)
        {
          v128 = v564 + (v538 + (v61 >> 3) * v563);
          v129 = a14 ? (*(v565 + 40))(v128, v563, 4, v61 & 7, v566, v567, v573, a14) : (*(v565 + 32))(v128, v563, 4, v61 & 7, v566, v567, v573);
          if (v32)
          {
            v174 = v537 != v558;
            v175 = 2;
            if (v537 != v558)
            {
              v175 = 3;
            }

            if (v557 != v61)
            {
              v174 = v175;
            }

            v176 = (((v559 * (*(*v32 + 4 * (v61 - v557)) + *(v32[1] + 4 * (v537 - v558)) + *(a10 + 4 * v174))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v176 = 0;
          }

          v137 = v176 + v129;
          if (v137 <= 2147483646)
          {
            LODWORD(v138) = v137;
            v132 = v61;
            v119 = v537;
            goto LABEL_547;
          }
        }

        goto LABEL_549;
      }

LABEL_251:
      v117 = v37;
      if (a7 == 2)
      {
        goto LABEL_550;
      }

      goto LABEL_552;
    }
  }

  else
  {
    v32 = a11;
    if (!v81)
    {
      goto LABEL_189;
    }
  }

  v146 = v540;
  if (v61 < v572)
  {
    v146 = 1;
  }

  if (v146)
  {
    goto LABEL_251;
  }

  v117 = v37;
  if (v61 <= v569)
  {
    v147 = v564 + ((v61 >> 3) * v563 + (v38 >> 3));
    v129 = a14 ? (*(v565 + 40))(v147, v563, 4, v61 & 7, v566, v567, v573, a14) : (*(v565 + 32))(v147, v563, 4, v61 & 7, v566, v567, v573);
    if (v32)
    {
      v183 = (v560 - 4) != v558;
      v184 = 2;
      if ((v560 - 4) != v558)
      {
        v184 = 3;
      }

      if (v557 != v61)
      {
        v183 = v184;
      }

      v185 = (((v559 * (*(*v32 + 4 * (v61 - v557)) + *(v32[1] + 4 * (v38 - v558)) + *(a10 + 4 * v183))) << 18) + 0x80000000) >> 32;
    }

    else
    {
      v185 = 0;
    }

    v137 = v185 + v129;
    if (v137 <= 2147483646)
    {
      LODWORD(v138) = v137;
      v132 = v61;
      v119 = v560 - 4;
      goto LABEL_547;
    }
  }

LABEL_549:
  if (a7 == 2)
  {
LABEL_550:
    v250 = 2;
    v251 = v116;
    goto LABEL_713;
  }

LABEL_552:
  v252 = v117 - 2;
  v253 = v117 - 2 >= v571 && v252 <= v570;
  v254 = !v253;
  LODWORD(v255) = 0x7FFFFFFF;
  if (!v253 || v116 < v572 || v116 > v569)
  {
    goto LABEL_574;
  }

  v256 = v564 + (v116 >> 3) * v21 + (v252 >> 3);
  if (v18)
  {
    v257 = (*(v565 + 40))(v256, v21, v252 & 7, v116 & 7, v566, v567, v573, v18);
    v258 = v257;
    if (v32)
    {
      goto LABEL_564;
    }
  }

  else
  {
    v257 = (*(v565 + 32))(v256, v21, v252 & 7, v116 & 7, v566, v567, v573);
    v258 = v257;
    if (v32)
    {
LABEL_564:
      v259 = (v117 - 2) != v558;
      v260 = 2;
      if ((v117 - 2) != v558)
      {
        v260 = 3;
      }

      if (v557 != v116)
      {
        v259 = v260;
      }

      v255 = ((((v559 * (*(*v32 + 4 * (v116 - v557)) + *(v32[1] + 4 * (v252 - v558)) + *(a10 + 4 * v259))) << 18) + 0x80000000) >> 32) + v258;
      if (v255 > 2147483646)
      {
        goto LABEL_569;
      }

      goto LABEL_572;
    }
  }

  LODWORD(v255) = v258;
  if (v258 > 2147483646)
  {
LABEL_569:
    LODWORD(v255) = 0x7FFFFFFF;
    goto LABEL_574;
  }

LABEL_572:
  if (v568 > v255)
  {
    *a12 = v257;
    *a13 = v573[0];
    v568 = v255;
    v261 = v117 - 2;
    goto LABEL_575;
  }

LABEL_574:
  v261 = v117;
LABEL_575:
  v262 = v117 + 2;
  v263 = v117 + 2 >= v571 && v262 <= v570;
  v264 = !v263;
  v561 = v264;
  LODWORD(v265) = 0x7FFFFFFF;
  if (!v263 || v116 < v572 || v116 > v569)
  {
    goto LABEL_597;
  }

  v266 = v564 + ((v116 >> 3) * v563 + (v262 >> 3));
  if (v18)
  {
    v267 = (*(v565 + 40))(v266);
    v268 = v267;
    if (v32)
    {
      goto LABEL_587;
    }

LABEL_594:
    LODWORD(v265) = v268;
    if (v268 > 2147483646)
    {
LABEL_592:
      LODWORD(v265) = 0x7FFFFFFF;
      goto LABEL_597;
    }

    goto LABEL_595;
  }

  v267 = (*(v565 + 32))(v266);
  v268 = v267;
  if (!v32)
  {
    goto LABEL_594;
  }

LABEL_587:
  v269 = (v117 + 2) != v558;
  v270 = 2;
  if ((v117 + 2) != v558)
  {
    v270 = 3;
  }

  if (v557 != v116)
  {
    v269 = v270;
  }

  v265 = ((((v559 * (*(*v32 + 4 * (v116 - v557)) + *(v32[1] + 4 * (v262 - v558)) + *(a10 + 4 * v269))) << 18) + 0x80000000) >> 32) + v268;
  if (v265 > 2147483646)
  {
    goto LABEL_592;
  }

LABEL_595:
  if (v568 > v265)
  {
    *a12 = v267;
    *a13 = v573[0];
    v568 = v265;
    v261 = v117 + 2;
  }

LABEL_597:
  LODWORD(v271) = 0x7FFFFFFF;
  if (v117 < v571 || v117 > v570)
  {
    v251 = v116;
    LODWORD(v282) = 0x7FFFFFFF;
    goto LABEL_631;
  }

  v546 = v254;
  v272 = v261;
  v273 = v116;
  v274 = v116 - 2;
  LODWORD(v271) = 0x7FFFFFFF;
  v275 = v117;
  if (v274 < v572 || v274 > v569)
  {
    goto LABEL_614;
  }

  v276 = v564 + ((v274 >> 3) * v563 + (v117 >> 3));
  if (a14)
  {
    v277 = v274;
    v278 = (*(v565 + 40))(v276);
    v279 = v278;
    if (v32)
    {
      goto LABEL_603;
    }
  }

  else
  {
    v277 = v274;
    v278 = (*(v565 + 32))(v276);
    v279 = v278;
    if (v32)
    {
LABEL_603:
      v251 = v277;
      v280 = v117 != v558;
      v281 = 2;
      if (v117 != v558)
      {
        v281 = 3;
      }

      if (v557 != v277)
      {
        v280 = v281;
      }

      v271 = ((((v559 * (*(*v32 + 4 * (v277 - v557)) + *(v32[1] + 4 * (v117 - v558)) + *(a10 + 4 * v280))) << 18) + 0x80000000) >> 32) + v279;
      if (v271 > 2147483646)
      {
        goto LABEL_608;
      }

      goto LABEL_612;
    }
  }

  v251 = v277;
  LODWORD(v271) = v279;
  if (v279 > 2147483646)
  {
LABEL_608:
    LODWORD(v271) = 0x7FFFFFFF;
LABEL_614:
    v283 = v273;
    v251 = v273;
    goto LABEL_615;
  }

LABEL_612:
  if (v568 <= v271)
  {
    goto LABEL_614;
  }

  *a12 = v278;
  *a13 = v573[0];
  v568 = v271;
  v272 = v117;
  v283 = v273;
LABEL_615:
  v284 = v283 + 2;
  LODWORD(v282) = 0x7FFFFFFF;
  if (v283 + 2 < v572 || v284 > v569)
  {
    goto LABEL_629;
  }

  v285 = v251;
  v286 = v564 + ((v284 >> 3) * v563 + (v275 >> 3));
  if (a14)
  {
    v287 = (*(v565 + 40))(v286);
    v288 = a11;
    v289 = v287;
    if (a11)
    {
      goto LABEL_619;
    }
  }

  else
  {
    v287 = (*(v565 + 32))(v286);
    v288 = a11;
    v289 = v287;
    if (a11)
    {
LABEL_619:
      v290 = *v288;
      v291 = v288[1];
      v292 = v275 != v558;
      v293 = 2;
      if (v275 != v558)
      {
        v293 = 3;
      }

      if (v557 != v284)
      {
        v292 = v293;
      }

      v251 = v285;
      v282 = ((((v559 * (*(v290 + 4 * (v284 - v557)) + *(v291 + 4 * (v275 - v558)) + *(a10 + 4 * v292))) << 18) + 0x80000000) >> 32) + v289;
      if (v282 > 2147483646)
      {
        goto LABEL_624;
      }

      goto LABEL_627;
    }
  }

  v251 = v285;
  LODWORD(v282) = v289;
  if (v289 > 2147483646)
  {
LABEL_624:
    LODWORD(v282) = 0x7FFFFFFF;
LABEL_629:
    v117 = v275;
    v116 = v273;
    v261 = v272;
    goto LABEL_630;
  }

LABEL_627:
  if (v568 <= v282)
  {
    goto LABEL_629;
  }

  *a12 = v287;
  *a13 = v573[0];
  v568 = v282;
  v251 = v284;
  v117 = v275;
  v294 = v275;
  v116 = v273;
  v261 = v294;
LABEL_630:
  v254 = v546;
LABEL_631:
  v295 = (v255 >= v265) | (2 * (v271 >= v282));
  if (v295 <= 1)
  {
    if (!v295)
    {
      if (v254)
      {
        goto LABEL_689;
      }

      v296 = v116 - 2;
      if (v116 - 2 < v572 || v296 > v569)
      {
        goto LABEL_689;
      }

      v547 = v254;
      v297 = v251;
      v298 = v564 + ((v296 >> 3) * v563 + (v252 >> 3));
      v299 = a14 ? (*(v565 + 40))(v298) : (*(v565 + 32))(v298);
      if (a11)
      {
        v305 = v252 != v558;
        v306 = 2;
        if (v252 != v558)
        {
          v306 = 3;
        }

        if (v557 != v296)
        {
          v305 = v306;
        }

        v307 = (((v559 * (*(*a11 + 4 * (v296 - v557)) + *(a11[1] + 4 * (v252 - v558)) + *(a10 + 4 * v305))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v307 = 0;
      }

      v251 = v297;
      v318 = v307 + v299;
      v254 = v547;
      if (v318 > 2147483646)
      {
        goto LABEL_689;
      }

      v319 = v252;
      if (v568 <= v318)
      {
        goto LABEL_689;
      }

LABEL_688:
      *a12 = v299;
      *a13 = v573[0];
      v568 = v318;
      v251 = v296;
      v261 = v319;
      goto LABEL_689;
    }

    if (v561)
    {
      goto LABEL_689;
    }

    v296 = v116 - 2;
    if (v116 - 2 < v572 || v296 > v569)
    {
      goto LABEL_689;
    }

    v549 = v254;
    v302 = v251;
    v303 = v564 + ((v296 >> 3) * v563 + (v262 >> 3));
    if (a14)
    {
      v299 = (*(v565 + 40))(v303);
    }

    else
    {
      v299 = (*(v565 + 32))(v303);
    }

    v311 = v299;
    v312 = a11;
    if (a11)
    {
LABEL_670:
      v313 = *v312;
      v314 = v312[1];
      v315 = v262 != v558;
      v316 = 2;
      if (v262 != v558)
      {
        v316 = 3;
      }

      if (v557 != v296)
      {
        v315 = v316;
      }

      v251 = v302;
      v317 = ((((v559 * (*(v313 + 4 * (v296 - v557)) + *(v314 + 4 * (v262 - v558)) + *(a10 + 4 * v315))) << 18) + 0x80000000) >> 32) + v311;
      v254 = v549;
      if (v317 > 2147483646)
      {
        goto LABEL_689;
      }

LABEL_679:
      LODWORD(v318) = v317;
      v319 = v262;
      if (v568 <= v317)
      {
        goto LABEL_689;
      }

      goto LABEL_688;
    }

LABEL_678:
    v251 = v302;
    LODWORD(v317) = v311;
    v254 = v549;
    if (v311 > 2147483646)
    {
      goto LABEL_689;
    }

    goto LABEL_679;
  }

  if (v295 != 2)
  {
    if (v561)
    {
      goto LABEL_689;
    }

    v296 = v116 + 2;
    if (v116 + 2 < v572 || v296 > v569)
    {
      goto LABEL_689;
    }

    v549 = v254;
    v302 = v251;
    v304 = v564 + ((v296 >> 3) * v563 + (v262 >> 3));
    if (a14)
    {
      v299 = (*(v565 + 40))(v304);
    }

    else
    {
      v299 = (*(v565 + 32))(v304);
    }

    v311 = v299;
    v312 = a11;
    if (a11)
    {
      goto LABEL_670;
    }

    goto LABEL_678;
  }

  if ((v254 & 1) == 0)
  {
    v296 = v116 + 2;
    if (v116 + 2 >= v572 && v296 <= v569)
    {
      v548 = v254;
      v300 = v251;
      v301 = v564 + ((v296 >> 3) * v563 + (v252 >> 3));
      v299 = a14 ? (*(v565 + 40))(v301) : (*(v565 + 32))(v301);
      if (a11)
      {
        v308 = v252 != v558;
        v309 = 2;
        if (v252 != v558)
        {
          v309 = 3;
        }

        if (v557 != v296)
        {
          v308 = v309;
        }

        v310 = (((v559 * (*(*a11 + 4 * (v296 - v557)) + *(a11[1] + 4 * (v252 - v558)) + *(a10 + 4 * v308))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v310 = 0;
      }

      v251 = v300;
      v320 = v310 + v299;
      v254 = v548;
      if (v320 <= 2147483646)
      {
        LODWORD(v318) = v320;
        v319 = v252;
        if (v568 > v320)
        {
          goto LABEL_688;
        }
      }
    }
  }

LABEL_689:
  if (a8 < 2)
  {
    v250 = 1;
    goto LABEL_711;
  }

  v321 = v251 - v116;
  if (v251 == v116 || (v322 = v261 - v117, v261 == v117))
  {
    if (v251 == v116 && v261 != v117)
    {
      v350 = v116;
      v351 = v117 + 2 * (v261 - v117);
      if (v351 < v571)
      {
        v251 = v350;
        v117 = v261;
        v21 = v563;
      }

      else
      {
        v21 = v563;
        if (v351 > v570)
        {
          v251 = v350;
          v117 = v261;
        }

        else
        {
          v352 = v350 + 2;
          if (v350 + 2 < v572 || v352 > v569)
          {
            goto LABEL_890;
          }

          v353 = v564 + ((v352 >> 3) * v563 + (v351 >> 3));
          v354 = a14 ? (*(v565 + 40))(v353, v563, v351 & 7, v352 & 7, v566, v567, v573) : (*(v565 + 32))(v353, v563, v351 & 7, v352 & 7, v566, v567, v573);
          if (a11)
          {
            v408 = (v117 + 2 * (v261 - v117)) != v558;
            v409 = 2;
            if ((v117 + 2 * (v261 - v117)) != v558)
            {
              v409 = 3;
            }

            if (v557 != v352)
            {
              v408 = v409;
            }

            v410 = (((v559 * (*(*a11 + 4 * (v352 - v557)) + *(a11[1] + 4 * (v351 - v558)) + *(a10 + 4 * v408))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v410 = 0;
          }

          v411 = v410 + v354;
          if (v411 <= 2147483646)
          {
            v412 = v350;
            v251 = v350;
            v117 = v261;
            if (v568 > v411)
            {
              *a12 = v354;
              *a13 = v573[0];
              v568 = v410 + v354;
              v251 = v350 + 2;
              v117 = v351;
            }
          }

          else
          {
LABEL_890:
            v412 = v350;
            v251 = v350;
            v117 = v261;
          }

          v413 = v412 - 2;
          if (v412 - 2 >= v572 && v413 <= v569)
          {
            v414 = v251;
            v415 = v564 + ((v413 >> 3) * v563 + (v351 >> 3));
            if (a14)
            {
              v416 = (*(v565 + 40))(v415, v563, v351 & 7, v413 & 7, v566, v567, v573);
            }

            else
            {
              v416 = (*(v565 + 32))(v415, v563, v351 & 7, v413 & 7, v566, v567, v573);
            }

            if (a11)
            {
              v417 = v351 != v558;
              v418 = 2;
              if (v351 != v558)
              {
                v418 = 3;
              }

              if (v557 != v413)
              {
                v417 = v418;
              }

              v419 = (((v559 * (*(*a11 + 4 * (v413 - v557)) + *(a11[1] + 4 * (v351 - v558)) + *(a10 + 4 * v417))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v419 = 0;
            }

            v251 = v414;
            v420 = v419 + v416;
            if (v420 <= 2147483646 && v568 > v420)
            {
              *a12 = v416;
              *a13 = v573[0];
              v568 = v419 + v416;
              v251 = v413;
              v117 = v351;
            }
          }
        }
      }

      v422 = v261 < v571 || v261 > v570;
      if (v271 >= v282)
      {
        v32 = a11;
        if (!v422)
        {
          v333 = v350 - 2;
          v250 = 1;
          if (v350 - 2 < v572 || v333 > v569)
          {
            goto LABEL_713;
          }

          v423 = v251;
          v425 = v564 + (v333 >> 3) * v21 + (v261 >> 3);
          if (a14)
          {
            v336 = (*(v565 + 40))(v425, v21, v261 & 7, v333 & 7, v566, v567, v573);
          }

          else
          {
            v336 = (*(v565 + 32))(v425, v21, v261 & 7, v333 & 7, v566, v567, v573);
          }

          v491 = v336;
          if (a11)
          {
LABEL_1064:
            v492 = v261 != v558;
            v493 = 2;
            if (v261 != v558)
            {
              v493 = 3;
            }

            if (v557 != v333)
            {
              v492 = v493;
            }

            v494 = (((v559 * (*(*v32 + 4 * (v333 - v557)) + *(v32[1] + 4 * (v261 - v558)) + *(a10 + 4 * v492))) << 18) + 0x80000000) >> 32;
            goto LABEL_1072;
          }

LABEL_1071:
          v494 = 0;
LABEL_1072:
          v251 = v423;
          v490 = v494 + v491;
          if (v490 > 2147483646)
          {
            goto LABEL_713;
          }

          LODWORD(v407) = v490;
LABEL_1074:
          if (v568 <= v490)
          {
            goto LABEL_713;
          }

LABEL_1075:
          *a12 = v336;
          *a13 = v573[0];
          v568 = v407;
          v251 = v333;
          v117 = v261;
          goto LABEL_713;
        }
      }

      else
      {
        v32 = a11;
        if (!v422)
        {
          v333 = v350 + 2;
          v250 = 1;
          if (v350 + 2 < v572 || v333 > v569)
          {
            goto LABEL_713;
          }

          v423 = v251;
          v424 = v564 + (v333 >> 3) * v21 + (v261 >> 3);
          if (a14)
          {
            v336 = (*(v565 + 40))(v424, v21, v261 & 7, v333 & 7, v566, v567, v573);
          }

          else
          {
            v336 = (*(v565 + 32))(v424, v21, v261 & 7, v333 & 7, v566, v567, v573);
          }

          v491 = v336;
          if (a11)
          {
            goto LABEL_1064;
          }

          goto LABEL_1071;
        }
      }

      v250 = 1;
      goto LABEL_713;
    }

    v250 = 1;
    if (v251 != v116)
    {
      v32 = a11;
      if (v261 == v117)
      {
        v355 = v116 + 2 * (v251 - v116);
        if ((v561 & 1) != 0 || v355 < v572 || v355 > v569)
        {
          v356 = v251;
        }

        else
        {
          v380 = v251;
          v381 = v564 + ((v355 >> 3) * v563 + (v262 >> 3));
          if (a14)
          {
            v382 = (*(v565 + 40))(v381);
          }

          else
          {
            v382 = (*(v565 + 32))(v381);
          }

          if (a11)
          {
            v478 = v262 != v558;
            v479 = 2;
            if (v262 != v558)
            {
              v479 = 3;
            }

            if (v557 != v355)
            {
              v478 = v479;
            }

            v480 = (((v559 * (*(*a11 + 4 * (v355 - v557)) + *(a11[1] + 4 * (v262 - v558)) + *(a10 + 4 * v478))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v480 = 0;
          }

          v251 = v380;
          v488 = v480 + v382;
          v356 = v380;
          if (v488 <= 2147483646 && v568 > v488)
          {
            *a12 = v382;
            *a13 = v573[0];
            v568 = v480 + v382;
            v356 = v355;
            v117 = v262;
          }
        }

        if ((v254 & 1) == 0 && v355 >= v572 && v355 <= v569)
        {
          v383 = v251;
          v384 = v564 + ((v355 >> 3) * v563 + (v252 >> 3));
          if (a14)
          {
            v385 = (*(v565 + 40))(v384);
          }

          else
          {
            v385 = (*(v565 + 32))(v384);
          }

          if (a11)
          {
            v481 = v252 != v558;
            v482 = 2;
            if (v252 != v558)
            {
              v482 = 3;
            }

            if (v557 != v355)
            {
              v481 = v482;
            }

            v483 = (((v559 * (*(*a11 + 4 * (v355 - v557)) + *(a11[1] + 4 * (v252 - v558)) + *(a10 + 4 * v481))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v483 = 0;
          }

          v251 = v383;
          v489 = v483 + v385;
          if (v489 <= 2147483646 && v568 > v489)
          {
            *a12 = v385;
            *a13 = v573[0];
            v568 = v483 + v385;
            v356 = v355;
            v117 = v252;
          }
        }

        if (v295 > 1)
        {
          if (v295 != 3)
          {
LABEL_756:
            v357 = v561;
            if (v251 < v572)
            {
              v357 = 1;
            }

            if ((v357 & 1) == 0 && v251 <= v569)
            {
              v358 = v564 + ((v251 >> 3) * v563 + (v262 >> 3));
              v333 = v251;
              v336 = a14 ? (*(v565 + 40))(v358) : (*(v565 + 32))(v358);
              if (a11)
              {
                v475 = v262 != v558;
                v476 = 2;
                if (v262 != v558)
                {
                  v476 = 3;
                }

                if (v557 != v333)
                {
                  v475 = v476;
                }

                v477 = (((v559 * (*(*a11 + 4 * (v333 - v557)) + *(a11[1] + 4 * (v262 - v558)) + *(a10 + 4 * v475))) << 18) + 0x80000000) >> 32;
              }

              else
              {
                v477 = 0;
              }

              v487 = v477 + v336;
              if (v487 <= 2147483646)
              {
                LODWORD(v407) = v487;
                v261 = v262;
                v251 = v356;
                v21 = v563;
                if (v568 <= v487)
                {
                  goto LABEL_713;
                }

                goto LABEL_1075;
              }
            }

LABEL_1049:
            v251 = v356;
            goto LABEL_712;
          }
        }

        else if (!v295)
        {
          goto LABEL_756;
        }

        if (v251 < v572)
        {
          v386 = 1;
        }

        else
        {
          v386 = v254;
        }

        if ((v386 & 1) == 0)
        {
          v21 = v563;
          if (v251 > v569)
          {
            goto LABEL_1061;
          }

          v387 = v564 + ((v251 >> 3) * v563 + (v252 >> 3));
          v333 = v251;
          v336 = a14 ? (*(v565 + 40))(v387, v563, v252 & 7, v251 & 7, v566, v567, v573) : (*(v565 + 32))(v387, v563, v252 & 7, v251 & 7, v566, v567, v573);
          if (a11)
          {
            v484 = v252 != v558;
            v485 = 2;
            if (v252 != v558)
            {
              v485 = 3;
            }

            if (v557 != v333)
            {
              v484 = v485;
            }

            v486 = (((v559 * (*(*a11 + 4 * (v333 - v557)) + *(a11[1] + 4 * (v252 - v558)) + *(a10 + 4 * v484))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v486 = 0;
          }

          v490 = v486 + v336;
          if (v490 > 2147483646)
          {
LABEL_1061:
            v251 = v356;
            goto LABEL_713;
          }

          LODWORD(v407) = v490;
          v261 = v252;
          v251 = v356;
          goto LABEL_1074;
        }

        goto LABEL_1049;
      }

      v117 = v261;
LABEL_712:
      v21 = v563;
      goto LABEL_713;
    }

LABEL_711:
    v117 = v261;
    v32 = a11;
    goto LABEL_712;
  }

  v323 = v261;
  v324 = v116;
  v325 = v117 + 2 * v322;
  if (v325 < v571)
  {
    v332 = v323;
    v117 = v323;
    v32 = a11;
    v21 = v563;
    goto LABEL_704;
  }

  v32 = a11;
  v21 = v563;
  if (v325 > v570 || v251 < v572 || v251 > v569)
  {
    goto LABEL_703;
  }

  v326 = v564 + ((v251 >> 3) * v563 + (v325 >> 3));
  if (a14)
  {
    v327 = v251;
    v328 = (*(v565 + 40))(v326, v563, v325 & 7, v251 & 7, v566, v567, v573);
    v329 = v328;
    if (a11)
    {
      goto LABEL_698;
    }
  }

  else
  {
    v327 = v251;
    v328 = (*(v565 + 32))(v326, v563, v325 & 7, v251 & 7, v566, v567, v573);
    v329 = v328;
    if (a11)
    {
LABEL_698:
      v251 = v327;
      v330 = v325 != v558;
      v331 = 2;
      if (v325 != v558)
      {
        v331 = 3;
      }

      if (v557 != v327)
      {
        v330 = v331;
      }

      v329 += (((v559 * (*(*a11 + 4 * (v327 - v557)) + *(a11[1] + 4 * (v325 - v558)) + *(a10 + 4 * v330))) << 18) + 0x80000000) >> 32;
      if (v329 > 2147483646)
      {
        goto LABEL_703;
      }

      goto LABEL_804;
    }
  }

  v251 = v327;
  if (v329 > 2147483646)
  {
LABEL_703:
    v332 = v323;
    v117 = v323;
    goto LABEL_704;
  }

LABEL_804:
  v332 = v323;
  v117 = v323;
  if (v568 > v329)
  {
    *a12 = v328;
    *a13 = v573[0];
    v568 = v329;
    v117 = v325;
  }

LABEL_704:
  v250 = 1;
  if (v332 >= v571 && v332 <= v570)
  {
    v333 = v324 + 2 * v321;
    if (v333 >= v572 && v333 <= v569)
    {
      v334 = v251;
      v261 = v323;
      v335 = v564 + (v333 >> 3) * v21 + (v323 >> 3);
      v336 = a14 ? (*(v565 + 40))(v335, v21, v323 & 7, v333 & 7, v566, v567, v573) : (*(v565 + 32))(v335, v21, v323 & 7, v333 & 7, v566, v567, v573);
      if (v32)
      {
        v404 = v323 != v558;
        v405 = 2;
        if (v323 != v558)
        {
          v405 = 3;
        }

        if (v557 != v333)
        {
          v404 = v405;
        }

        v406 = (((v559 * (*(*v32 + 4 * (v333 - v557)) + *(v32[1] + 4 * (v323 - v558)) + *(a10 + 4 * v404))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v406 = 0;
      }

      v251 = v334;
      v407 = v406 + v336;
      if (v407 <= 2147483646 && v568 > v407)
      {
        goto LABEL_1075;
      }
    }
  }

LABEL_713:
  if (!a4)
  {
    goto LABEL_739;
  }

  v337 = *a3;
  if (v337 < 0)
  {
    v337 = -v337;
  }

  if (v337 > 0x3F)
  {
    goto LABEL_739;
  }

  v338 = a3[1];
  if (v338 < 0)
  {
    v338 = -v338;
  }

  if (a7 || v338 > 0x3Fu)
  {
LABEL_739:
    LOWORD(v348) = v251;
    goto LABEL_740;
  }

  v339 = v117 - v250;
  v340 = v117 - v250 >= v571 && v339 <= v570;
  v341 = !v340;
  LODWORD(v342) = 0x7FFFFFFF;
  v562 = v251;
  if (!v340 || v251 < v572 || v251 > v569)
  {
    goto LABEL_766;
  }

  v343 = v564 + (v251 >> 3) * v21 + (v339 >> 3);
  if (a14)
  {
    v344 = (*(v565 + 40))(v343, v21, v339 & 7, v251 & 7, v566, v567, v573);
    v345 = v344;
    if (v32)
    {
      goto LABEL_733;
    }
  }

  else
  {
    v344 = (*(v565 + 32))(v343, v21, v339 & 7, v251 & 7, v566, v567, v573);
    v345 = v344;
    if (v32)
    {
LABEL_733:
      v251 = v562;
      v346 = (v117 - v250) != v558;
      v347 = 2;
      if ((v117 - v250) != v558)
      {
        v347 = 3;
      }

      if (v557 != v562)
      {
        v346 = v347;
      }

      v342 = ((((v559 * (*(*v32 + 4 * (v562 - v557)) + *(v32[1] + 4 * (v339 - v558)) + *(a10 + 4 * v346))) << 18) + 0x80000000) >> 32) + v345;
      if (v342 > 2147483646)
      {
        goto LABEL_738;
      }

      goto LABEL_764;
    }
  }

  v251 = v562;
  LODWORD(v342) = v345;
  if (v345 > 2147483646)
  {
LABEL_738:
    LODWORD(v342) = 0x7FFFFFFF;
    goto LABEL_766;
  }

LABEL_764:
  if (v568 > v342)
  {
    *a12 = v344;
    *a13 = v573[0];
    v568 = v342;
    LODWORD(v359) = v117 - v250;
    goto LABEL_767;
  }

LABEL_766:
  LODWORD(v359) = v117;
LABEL_767:
  v360 = v117 + v250;
  v361 = v117 + v250 >= v571 && v360 <= v570;
  v362 = !v361;
  v555 = v362;
  LODWORD(v363) = 0x7FFFFFFF;
  if (!v361 || v251 < v572 || v251 > v569)
  {
    goto LABEL_789;
  }

  v364 = v564 + ((v251 >> 3) * v563 + (v360 >> 3));
  if (a14)
  {
    v365 = (*(v565 + 40))(v364);
    v366 = v365;
    if (v32)
    {
      goto LABEL_779;
    }

LABEL_786:
    v251 = v562;
    LODWORD(v363) = v366;
    if (v366 > 2147483646)
    {
LABEL_784:
      LODWORD(v363) = 0x7FFFFFFF;
      goto LABEL_789;
    }

    goto LABEL_787;
  }

  v365 = (*(v565 + 32))(v364);
  v366 = v365;
  if (!v32)
  {
    goto LABEL_786;
  }

LABEL_779:
  v251 = v562;
  v367 = (v117 + v250) != v558;
  v368 = 2;
  if ((v117 + v250) != v558)
  {
    v368 = 3;
  }

  if (v557 != v562)
  {
    v367 = v368;
  }

  v363 = ((((v559 * (*(*v32 + 4 * (v562 - v557)) + *(v32[1] + 4 * (v360 - v558)) + *(a10 + 4 * v367))) << 18) + 0x80000000) >> 32) + v366;
  if (v363 > 2147483646)
  {
    goto LABEL_784;
  }

LABEL_787:
  if (v568 > v363)
  {
    *a12 = v365;
    *a13 = v573[0];
    v568 = v363;
    LODWORD(v359) = v117 + v250;
  }

LABEL_789:
  LODWORD(v369) = 0x7FFFFFFF;
  if (v117 < v571 || v117 > v570)
  {
    v348 = v251;
    LODWORD(v379) = 0x7FFFFFFF;
    goto LABEL_846;
  }

  v550 = v341;
  v370 = v359;
  v348 = v251 - v250;
  LODWORD(v369) = 0x7FFFFFFF;
  LODWORD(v359) = v117;
  if (v251 - v250 < v572 || v348 > v569)
  {
    goto LABEL_829;
  }

  v371 = v564 + ((v348 >> 3) * v563 + (v117 >> 3));
  if (a14)
  {
    v372 = (*(v565 + 40))(v371);
    v373 = a11;
    v374 = v372;
    if (a11)
    {
      goto LABEL_795;
    }
  }

  else
  {
    v372 = (*(v565 + 32))(v371);
    v373 = a11;
    v374 = v372;
    if (a11)
    {
LABEL_795:
      v375 = *v373;
      v376 = v373[1];
      v377 = v117 != v558;
      v378 = 2;
      if (v117 != v558)
      {
        v378 = 3;
      }

      if (v557 != v348)
      {
        v377 = v378;
      }

      v251 = v562;
      v369 = ((((v559 * (*(v375 + 4 * (v348 - v557)) + *(v376 + 4 * (v117 - v558)) + *(a10 + 4 * v377))) << 18) + 0x80000000) >> 32) + v374;
      if (v369 > 2147483646)
      {
        goto LABEL_800;
      }

      goto LABEL_827;
    }
  }

  v251 = v562;
  LODWORD(v369) = v374;
  if (v374 > 2147483646)
  {
LABEL_800:
    LODWORD(v369) = 0x7FFFFFFF;
LABEL_829:
    v348 = v251;
    goto LABEL_830;
  }

LABEL_827:
  if (v568 <= v369)
  {
    goto LABEL_829;
  }

  *a12 = v372;
  *a13 = v573[0];
  v568 = v369;
  v370 = v117;
LABEL_830:
  v388 = v251 + v250;
  LODWORD(v379) = 0x7FFFFFFF;
  if (v251 + v250 < v572 || v388 > v569)
  {
    goto LABEL_844;
  }

  v389 = v564 + ((v388 >> 3) * v563 + (v359 >> 3));
  if (a14)
  {
    v390 = (*(v565 + 40))(v389);
    v391 = v390;
    v392 = a11;
    if (a11)
    {
      goto LABEL_834;
    }
  }

  else
  {
    v390 = (*(v565 + 32))(v389);
    v391 = v390;
    v392 = a11;
    if (a11)
    {
LABEL_834:
      v393 = *v392;
      v394 = v392[1];
      v395 = v359 != v558;
      v396 = 2;
      if (v359 != v558)
      {
        v396 = 3;
      }

      if (v557 != v388)
      {
        v395 = v396;
      }

      v251 = v562;
      v379 = ((((v559 * (*(v393 + 4 * (v388 - v557)) + *(v394 + 4 * (v359 - v558)) + *(a10 + 4 * v395))) << 18) + 0x80000000) >> 32) + v391;
      if (v379 > 2147483646)
      {
        goto LABEL_839;
      }

      goto LABEL_842;
    }
  }

  v251 = v562;
  LODWORD(v379) = v391;
  if (v391 > 2147483646)
  {
LABEL_839:
    LODWORD(v379) = 0x7FFFFFFF;
LABEL_844:
    v117 = v359;
    LODWORD(v359) = v370;
    goto LABEL_845;
  }

LABEL_842:
  if (v568 <= v379)
  {
    goto LABEL_844;
  }

  *a12 = v390;
  *a13 = v573[0];
  v568 = v379;
  v348 = v388;
  v117 = v359;
LABEL_845:
  v341 = v550;
LABEL_846:
  v397 = (v342 >= v363) | (2 * (v369 >= v379));
  if (v397 <= 1)
  {
    if (!v397)
    {
      if (v341)
      {
        goto LABEL_961;
      }

      v398 = v251 - v250;
      if (v251 - v250 < v572 || v398 > v569)
      {
        goto LABEL_961;
      }

      v551 = v379;
      v399 = v564 + ((v398 >> 3) * v563 + (v339 >> 3));
      v400 = a14 ? (*(v565 + 40))(v399) : (*(v565 + 32))(v399);
      if (a11)
      {
        v426 = v339 != v558;
        v427 = 2;
        if (v339 != v558)
        {
          v427 = 3;
        }

        if (v557 != v398)
        {
          v426 = v427;
        }

        v428 = (((v559 * (*(*a11 + 4 * (v398 - v557)) + *(a11[1] + 4 * (v339 - v558)) + *(a10 + 4 * v426))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v428 = 0;
      }

      v251 = v562;
      LODWORD(v379) = v551;
      v440 = v428 + v400;
      if (v440 > 2147483646)
      {
        goto LABEL_961;
      }

      v441 = v339;
      if (v568 <= v440)
      {
        goto LABEL_961;
      }

LABEL_960:
      *a12 = v400;
      *a13 = v573[0];
      v568 = v440;
      v348 = v398;
      LODWORD(v359) = v441;
      goto LABEL_961;
    }

    if (v555)
    {
      goto LABEL_961;
    }

    v398 = v251 - v250;
    if (v251 - v250 < v572 || v398 > v569)
    {
      goto LABEL_961;
    }

    v553 = v379;
    v402 = v564 + ((v398 >> 3) * v563 + (v360 >> 3));
    if (a14)
    {
      v400 = (*(v565 + 40))(v402);
    }

    else
    {
      v400 = (*(v565 + 32))(v402);
    }

    v432 = v400;
    v433 = a11;
    if (a11)
    {
      goto LABEL_942;
    }

    goto LABEL_949;
  }

  if (v397 != 2)
  {
    if (v555)
    {
      goto LABEL_961;
    }

    v398 = v251 + v250;
    if (v251 + v250 < v572 || v398 > v569)
    {
      goto LABEL_961;
    }

    v553 = v379;
    v403 = v564 + ((v398 >> 3) * v563 + (v360 >> 3));
    if (a14)
    {
      v400 = (*(v565 + 40))(v403);
    }

    else
    {
      v400 = (*(v565 + 32))(v403);
    }

    v432 = v400;
    v433 = a11;
    if (a11)
    {
LABEL_942:
      v434 = *v433;
      v435 = v433[1];
      v436 = v360 != v558;
      v437 = 2;
      if (v360 != v558)
      {
        v437 = 3;
      }

      if (v557 != v398)
      {
        v436 = v437;
      }

      v438 = (((v559 * (*(v434 + 4 * (v398 - v557)) + *(v435 + 4 * (v360 - v558)) + *(a10 + 4 * v436))) << 18) + 0x80000000) >> 32;
      goto LABEL_950;
    }

LABEL_949:
    v438 = 0;
LABEL_950:
    v251 = v562;
    LODWORD(v379) = v553;
    v439 = v438 + v432;
    if (v439 > 2147483646)
    {
      goto LABEL_961;
    }

    LODWORD(v440) = v439;
    v441 = v360;
LABEL_959:
    if (v568 <= v439)
    {
      goto LABEL_961;
    }

    goto LABEL_960;
  }

  if ((v341 & 1) == 0)
  {
    v398 = v251 + v250;
    if (v251 + v250 >= v572 && v398 <= v569)
    {
      v552 = v379;
      v401 = v564 + ((v398 >> 3) * v563 + (v339 >> 3));
      v400 = a14 ? (*(v565 + 40))(v401) : (*(v565 + 32))(v401);
      if (a11)
      {
        v429 = v339 != v558;
        v430 = 2;
        if (v339 != v558)
        {
          v430 = 3;
        }

        if (v557 != v398)
        {
          v429 = v430;
        }

        v431 = (((v559 * (*(*a11 + 4 * (v398 - v557)) + *(a11[1] + 4 * (v339 - v558)) + *(a10 + 4 * v429))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v431 = 0;
      }

      v251 = v562;
      LODWORD(v379) = v552;
      v439 = v431 + v400;
      if (v439 <= 2147483646)
      {
        LODWORD(v440) = v439;
        v441 = v339;
        goto LABEL_959;
      }
    }
  }

LABEL_961:
  if (a8 < 2)
  {
LABEL_1201:
    LOWORD(v117) = v359;
    goto LABEL_740;
  }

  v442 = v348 - v251;
  if (v348 == v251 || v359 == v117)
  {
    if (v348 == v251 && v359 != v117)
    {
      v448 = v117 + 2 * (v359 - v117);
      if (v448 < v571)
      {
        LOWORD(v348) = v251;
        LOWORD(v117) = v359;
        v449 = v563;
      }

      else
      {
        v449 = v563;
        if (v448 > v570)
        {
          LOWORD(v348) = v251;
          LOWORD(v117) = v359;
        }

        else
        {
          v450 = v251 + v250;
          if (v251 + v250 < v572 || v450 > v569)
          {
            goto LABEL_1087;
          }

          v451 = v379;
          v452 = v564 + ((v450 >> 3) * v563 + (v448 >> 3));
          v453 = a14 ? (*(v565 + 40))(v452, v563, v448 & 7, v450 & 7, v566, v567, v573) : (*(v565 + 32))(v452, v563, v448 & 7, v450 & 7, v566, v567, v573);
          if (a11)
          {
            v495 = (v117 + 2 * (v359 - v117)) != v558;
            v496 = 2;
            if ((v117 + 2 * (v359 - v117)) != v558)
            {
              v496 = 3;
            }

            if (v557 != v450)
            {
              v495 = v496;
            }

            v497 = (((v559 * (*(*a11 + 4 * (v450 - v557)) + *(a11[1] + 4 * (v448 - v558)) + *(a10 + 4 * v495))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v497 = 0;
          }

          v251 = v562;
          LODWORD(v379) = v451;
          v498 = v497 + v453;
          if (v498 <= 2147483646)
          {
            LOWORD(v348) = v562;
            LOWORD(v117) = v359;
            if (v568 > v498)
            {
              *a12 = v453;
              *a13 = v573[0];
              v568 = v497 + v453;
              LOWORD(v348) = v450;
              LOWORD(v117) = v448;
            }
          }

          else
          {
LABEL_1087:
            LOWORD(v348) = v251;
            LOWORD(v117) = v359;
          }

          v499 = v251 - v250;
          if (v251 - v250 >= v572 && v499 <= v569)
          {
            v500 = v379;
            v501 = v564 + ((v499 >> 3) * v563 + (v448 >> 3));
            if (a14)
            {
              v502 = (*(v565 + 40))(v501, v563, v448 & 7, v499 & 7, v566, v567, v573);
            }

            else
            {
              v502 = (*(v565 + 32))(v501, v563, v448 & 7, v499 & 7, v566, v567, v573);
            }

            if (a11)
            {
              v503 = v448 != v558;
              v504 = 2;
              if (v448 != v558)
              {
                v504 = 3;
              }

              if (v557 != v499)
              {
                v503 = v504;
              }

              v505 = (((v559 * (*(*a11 + 4 * (v499 - v557)) + *(a11[1] + 4 * (v448 - v558)) + *(a10 + 4 * v503))) << 18) + 0x80000000) >> 32;
            }

            else
            {
              v505 = 0;
            }

            v251 = v562;
            LODWORD(v379) = v500;
            v506 = v505 + v502;
            if (v506 <= 2147483646 && v568 > v506)
            {
              *a12 = v502;
              *a13 = v573[0];
              v568 = v505 + v502;
              LOWORD(v348) = v499;
              LOWORD(v117) = v448;
            }
          }
        }
      }

      v508 = v359 < v571 || v359 > v570;
      if (v369 >= v379)
      {
        v509 = a11;
        if (v508)
        {
          goto LABEL_740;
        }

        v464 = v251 - v250;
        if (v251 - v250 < v572 || v464 > v569)
        {
          goto LABEL_740;
        }

        v511 = v564 + (v464 >> 3) * v449 + (v359 >> 3);
        if (a14)
        {
          v466 = (*(v565 + 40))(v511, v449, v359 & 7, v464 & 7, v566, v567, v573);
        }

        else
        {
          v466 = (*(v565 + 32))(v511, v449, v359 & 7, v464 & 7, v566, v567, v573);
        }

        v533 = v466;
        if (a11)
        {
          goto LABEL_1189;
        }
      }

      else
      {
        v509 = a11;
        if (v508)
        {
          goto LABEL_740;
        }

        v464 = v251 + v250;
        if (v251 + v250 < v572 || v464 > v569)
        {
          goto LABEL_740;
        }

        v510 = v564 + (v464 >> 3) * v449 + (v359 >> 3);
        if (a14)
        {
          v466 = (*(v565 + 40))(v510, v449, v359 & 7, v464 & 7, v566, v567, v573);
        }

        else
        {
          v466 = (*(v565 + 32))(v510, v449, v359 & 7, v464 & 7, v566, v567, v573);
        }

        v533 = v466;
        if (a11)
        {
LABEL_1189:
          v534 = v359 != v558;
          v535 = 2;
          if (v359 != v558)
          {
            v535 = 3;
          }

          if (v557 != v464)
          {
            v534 = v535;
          }

          v536 = (((v559 * (*(*v509 + 4 * (v464 - v557)) + *(v509[1] + 4 * (v359 - v558)) + *(a10 + 4 * v534))) << 18) + 0x80000000) >> 32;
          goto LABEL_1197;
        }
      }

      v536 = 0;
LABEL_1197:
      v531 = v536 + v533;
      if (v531 > 2147483646)
      {
        goto LABEL_740;
      }

      LODWORD(v474) = v531;
      goto LABEL_1199;
    }

    if (v348 == v251 || v359 != v117)
    {
      goto LABEL_1201;
    }

    v454 = v341;
    v455 = v251 + 2 * (v348 - v251);
    if (v555)
    {
      v456 = v348;
      v457 = a11;
      v458 = a14;
    }

    else
    {
      v457 = a11;
      v458 = a14;
      if (v455 < v572 || v455 > v569)
      {
        v456 = v348;
      }

      else
      {
        v467 = v564 + ((v455 >> 3) * v563 + (v360 >> 3));
        if (a14)
        {
          v468 = (*(v565 + 40))(v467);
        }

        else
        {
          v468 = (*(v565 + 32))(v467);
        }

        if (a11)
        {
          v512 = v360 != v558;
          v513 = 2;
          if (v360 != v558)
          {
            v513 = 3;
          }

          if (v557 != v455)
          {
            v512 = v513;
          }

          v514 = (((v559 * (*(*a11 + 4 * (v455 - v557)) + *(a11[1] + 4 * (v360 - v558)) + *(a10 + 4 * v512))) << 18) + 0x80000000) >> 32;
        }

        else
        {
          v514 = 0;
        }

        v515 = v514 + v468;
        v456 = v348;
        if (v515 <= 2147483646 && v568 > v515)
        {
          *a12 = v468;
          *a13 = v573[0];
          v568 = v514 + v468;
          v456 = v455;
          LOWORD(v117) = v360;
        }
      }
    }

    if ((v454 & 1) == 0 && v455 >= v572 && v455 <= v569)
    {
      v518 = v564 + ((v455 >> 3) * v563 + (v339 >> 3));
      if (v458)
      {
        v519 = (*(v565 + 40))(v518);
      }

      else
      {
        v519 = (*(v565 + 32))(v518);
      }

      if (v457)
      {
        v525 = v339 != v558;
        v526 = 2;
        if (v339 != v558)
        {
          v526 = 3;
        }

        if (v557 != v455)
        {
          v525 = v526;
        }

        v527 = (((v559 * (*(*v457 + 4 * (v455 - v557)) + *(v457[1] + 4 * (v339 - v558)) + *(a10 + 4 * v525))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v527 = 0;
      }

      v532 = v527 + v519;
      if (v532 <= 2147483646 && v568 > v532)
      {
        *a12 = v519;
        *a13 = v573[0];
        v568 = v527 + v519;
        v456 = v455;
        LOWORD(v117) = v339;
      }
    }

    if (v397 > 1)
    {
      if (v397 != 3)
      {
LABEL_1136:
        v516 = v555;
        if (v348 < v572)
        {
          v516 = 1;
        }

        if ((v516 & 1) == 0 && v348 <= v569)
        {
          v517 = v564 + ((v348 >> 3) * v563 + (v360 >> 3));
          v466 = v458 ? (*(v565 + 40))(v517) : (*(v565 + 32))(v517);
          if (v457)
          {
            v522 = v360 != v558;
            v523 = 2;
            if (v360 != v558)
            {
              v523 = 3;
            }

            if (v557 != v348)
            {
              v522 = v523;
            }

            v524 = (((v559 * (*(*v457 + 4 * (v348 - v557)) + *(v457[1] + 4 * (v360 - v558)) + *(a10 + 4 * v522))) << 18) + 0x80000000) >> 32;
          }

          else
          {
            v524 = 0;
          }

          v531 = v524 + v466;
          if (v531 <= 2147483646)
          {
            LODWORD(v474) = v531;
            LOWORD(v464) = v348;
            LOWORD(v359) = v360;
LABEL_1185:
            LOWORD(v348) = v456;
LABEL_1199:
            if (v568 <= v531)
            {
              goto LABEL_740;
            }

            goto LABEL_1200;
          }
        }

        goto LABEL_1186;
      }
    }

    else if (!v397)
    {
      goto LABEL_1136;
    }

    if (v348 < v572)
    {
      v520 = 1;
    }

    else
    {
      v520 = v454;
    }

    if ((v520 & 1) == 0 && v348 <= v569)
    {
      v521 = v564 + ((v348 >> 3) * v563 + (v339 >> 3));
      v466 = v458 ? (*(v565 + 40))(v521) : (*(v565 + 32))(v521);
      if (v457)
      {
        v528 = v339 != v558;
        v529 = 2;
        if (v339 != v558)
        {
          v529 = 3;
        }

        if (v557 != v348)
        {
          v528 = v529;
        }

        v530 = (((v559 * (*(*v457 + 4 * (v348 - v557)) + *(v457[1] + 4 * (v339 - v558)) + *(a10 + 4 * v528))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v530 = 0;
      }

      v531 = v530 + v466;
      if (v531 <= 2147483646)
      {
        LODWORD(v474) = v531;
        LOWORD(v464) = v348;
        LOWORD(v359) = v339;
        goto LABEL_1185;
      }
    }

LABEL_1186:
    LOWORD(v348) = v456;
    goto LABEL_740;
  }

  v443 = v117 + 2 * (v359 - v117);
  v444 = v359;
  if (v443 < v571)
  {
    LOWORD(v117) = v359;
    v463 = v359;
    v359 = a11;
    v445 = v563;
  }

  else
  {
    v359 = a11;
    v445 = v563;
    if (v443 > v570 || v348 < v572 || v348 > v569)
    {
      goto LABEL_991;
    }

    v446 = v564 + ((v348 >> 3) * v563 + (v443 >> 3));
    v447 = a14 ? (*(v565 + 40))(v446, v563, v443 & 7, v348 & 7, v566, v567, v573) : (*(v565 + 32))(v446, v563, v443 & 7, v348 & 7, v566, v567, v573);
    if (a11)
    {
      v459 = v443 != v558;
      v460 = 2;
      if (v443 != v558)
      {
        v460 = 3;
      }

      if (v557 != v348)
      {
        v459 = v460;
      }

      v461 = (((v559 * (*(*a11 + 4 * (v348 - v557)) + *(a11[1] + 4 * (v443 - v558)) + *(a10 + 4 * v459))) << 18) + 0x80000000) >> 32;
    }

    else
    {
      v461 = 0;
    }

    v251 = v562;
    v462 = v461 + v447;
    if (v462 <= 2147483646)
    {
      v463 = v444;
      LOWORD(v117) = v444;
      if (v568 > v462)
      {
        *a12 = v447;
        *a13 = v573[0];
        v568 = v461 + v447;
        LOWORD(v117) = v443;
      }
    }

    else
    {
LABEL_991:
      v463 = v444;
      LOWORD(v117) = v444;
    }
  }

  if (v463 >= v571 && v463 <= v570)
  {
    v464 = v251 + 2 * v442;
    if (v464 >= v572 && v464 <= v569)
    {
      v465 = v564 + (v464 >> 3) * v445 + (v444 >> 3);
      v466 = a14 ? (*(v565 + 40))(v465, v445, v444 & 7, v464 & 7, v566, v567, v573) : (*(v565 + 32))(v465, v445, v444 & 7, v464 & 7, v566, v567, v573);
      if (v359)
      {
        v469 = *v359;
        v470 = v359[1];
        LOWORD(v359) = v444;
        v471 = v444 != v558;
        v472 = 2;
        if (v444 != v558)
        {
          v472 = 3;
        }

        if (v557 != v464)
        {
          v471 = v472;
        }

        v473 = (((v559 * (*(v469 + 4 * (v464 - v557)) + *(v470 + 4 * (v444 - v558)) + *(a10 + 4 * v471))) << 18) + 0x80000000) >> 32;
      }

      else
      {
        v473 = 0;
        LOWORD(v359) = v444;
      }

      v474 = v473 + v466;
      if (v474 <= 2147483646 && v568 > v474)
      {
LABEL_1200:
        *a12 = v466;
        *a13 = v573[0];
        v568 = v474;
        LOWORD(v348) = v464;
        goto LABEL_1201;
      }
    }
  }

LABEL_740:
  *a2 = v348;
  a2[1] = v117;
  return v568;
}