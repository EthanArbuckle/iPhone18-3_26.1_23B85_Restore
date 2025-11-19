_DWORD *read_bitdepth_colorspace_sampling(_DWORD *result, uint64_t *a2)
{
  v3 = result;
  v4 = result + 4096;
  v5 = *a2;
  if (result[4539] < 2u)
  {
    result[4540] = 8;
    result[81] = 0;
    v10 = a2[1];
    v9 = a2[2];
    v11 = (v5 + (v9 >> 3));
    if (v11 >= v10)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v6 = a2[2];
  v7 = (v5 + (v6 >> 3));
  if (v7 >= a2[1])
  {
    v15 = a2[4];
    if (v15)
    {
      result = v15(a2[3]);
      v5 = *a2;
    }

LABEL_11:
    v4[444] = 10;
    *(v3 + 324) = 1;
    v10 = a2[1];
    v9 = a2[2];
    v11 = (v5 + (v9 >> 3));
    if (v11 >= v10)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = *v7;
  a2[2] = v6 + 1;
  if (((v8 >> (~v6 & 7)) & 1) == 0)
  {
    goto LABEL_11;
  }

  result[4540] = 12;
  result[81] = 1;
  v10 = a2[1];
  v9 = a2[2];
  v11 = (v5 + (v9 >> 3));
  if (v11 >= v10)
  {
LABEL_12:
    v16 = a2[4];
    if (v16)
    {
      result = v16(a2[3]);
      v13 = 0;
      v10 = a2[1];
      v9 = a2[2];
      v5 = *a2;
      v14 = (*a2 + (v9 >> 3));
      if (v14 < v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      v14 = (v5 + (v9 >> 3));
      if (v14 < v10)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

LABEL_7:
  v12 = *v11 >> (~v9++ & 7);
  a2[2] = v9;
  v13 = 4 * (v12 & 1);
  v14 = (v5 + (v9 >> 3));
  if (v14 < v10)
  {
LABEL_14:
    v17 = *v14 >> (~v9++ & 7);
    a2[2] = v9;
    LODWORD(v14) = 2 * (v17 & 1);
    goto LABEL_18;
  }

LABEL_16:
  v14 = a2[4];
  if (v14)
  {
    result = v14(a2[3]);
    LODWORD(v14) = 0;
    v10 = a2[1];
    v9 = a2[2];
    v5 = *a2;
  }

LABEL_18:
  v18 = v14 | v13;
  v19 = (v5 + (v9 >> 3));
  if (v19 >= v10)
  {
    v19 = a2[4];
    if (v19)
    {
      result = v19(a2[3]);
      LODWORD(v19) = 0;
    }
  }

  else
  {
    LODWORD(v19) = (*v19 >> (~v9 & 7)) & 1;
    a2[2] = v9 + 1;
  }

  v20 = v19 | v18;
  *(v3 + 284) = v20;
  if (v20 != 7)
  {
    v23 = a2[2];
    v24 = (*a2 + (v23 >> 3));
    if (v24 >= a2[1])
    {
      v26 = a2[4];
      if (v26)
      {
        result = v26(a2[3]);
      }

      *(v3 + 288) = 0;
      if ((v4[443] | 2) != 3)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = (*v24 >> (~v23 & 7)) & 1;
      a2[2] = v23 + 1;
      *(v3 + 288) = v25;
      if ((v4[443] | 2) != 3)
      {
LABEL_28:
        *(v3 + 316) = 0x100000001;
        return result;
      }
    }

    v28 = a2[1];
    v27 = a2[2];
    v29 = *a2;
    v30 = (*a2 + (v27 >> 3));
    if (v30 >= v28)
    {
      v30 = a2[4];
      if (v30)
      {
        result = v30(a2[3]);
        LODWORD(v30) = 0;
        v28 = a2[1];
        v27 = a2[2];
        v29 = *a2;
      }
    }

    else
    {
      LODWORD(v30) = (*v30 >> (~v27++ & 7)) & 1;
      a2[2] = v27;
    }

    *(v3 + 316) = v30;
    v32 = (v29 + (v27 >> 3));
    if (v32 >= v28)
    {
      v35 = a2[4];
      if (v35)
      {
        result = v35(a2[3]);
      }

      *(v3 + 320) = 0;
      v21 = a2[2];
      v22 = (*a2 + (v21 >> 3));
      if (v22 >= a2[1])
      {
        goto LABEL_50;
      }
    }

    else
    {
      v33 = (*v32 >> (~v27 & 7)) & 1;
      a2[2] = v27 + 1;
      *(v3 + 320) = v33;
      if (v30 && v33)
      {
        result = vpx_internal_error(v3, 5, "4:2:0 color not supported in profile 1 or 3");
      }

      v21 = a2[2];
      v22 = (*a2 + (v21 >> 3));
      if (v22 >= a2[1])
      {
        goto LABEL_50;
      }
    }

LABEL_42:
    v34 = *v22;
    a2[2] = v21 + 1;
    if (((v34 >> (~v21 & 7)) & 1) == 0)
    {
      return result;
    }

    v31 = "Reserved bit set";
    goto LABEL_44;
  }

  *(v3 + 288) = 1;
  if ((v4[443] | 2) == 3)
  {
    *(v3 + 316) = 0;
    v21 = a2[2];
    v22 = (*a2 + (v21 >> 3));
    if (v22 >= a2[1])
    {
LABEL_50:
      v36 = a2[4];
      if (v36)
      {
        v37 = a2[3];

        return v36(v37);
      }

      return result;
    }

    goto LABEL_42;
  }

  v31 = "4:4:4 color not supported in profile 0 or 2";
LABEL_44:

  return vpx_internal_error(v3, 5, v31);
}

double setup_frame_size(jmp_buf a1, void *a2)
{
  v4 = 0;
  v5 = a1 + 4540;
  v6 = a1 + 73;
  v7 = *(a1 + 2281);
  for (i = 17; i > 1; --i)
  {
    while (1)
    {
      v10 = a2[2];
      v11 = (*a2 + (v10 >> 3));
      if (v11 >= a2[1])
      {
        break;
      }

      v9 = (*v11 >> (~v10 & 7)) & 1;
      a2[2] = v10 + 1;
      v4 |= v9 << (i-- - 2);
      if (i <= 1)
      {
        goto LABEL_7;
      }
    }

    v12 = a2[4];
    if (v12)
    {
      v12(a2[3]);
    }
  }

LABEL_7:
  v13 = 0;
  for (j = 17; j > 1; --j)
  {
    while (1)
    {
      v16 = a2[2];
      v17 = (*a2 + (v16 >> 3));
      if (v17 >= a2[1])
      {
        break;
      }

      v15 = (*v17 >> (~v16 & 7)) & 1;
      a2[2] = v16 + 1;
      v13 |= v15 << (j-- - 2);
      if (j <= 1)
      {
        goto LABEL_13;
      }
    }

    v18 = a2[4];
    if (v18)
    {
      v18(a2[3]);
    }
  }

LABEL_13:
  resize_context_buffers(a1, v4 + 1, v13 + 1);
  *(v6 + 1) = *v6;
  v19 = a2[2];
  v20 = (*a2 + (v19 >> 3));
  if (v20 >= a2[1])
  {
    v34 = a2[4];
    if (v34)
    {
      v34(a2[3]);
    }
  }

  else
  {
    v21 = *v20;
    a2[2] = v19 + 1;
    if ((v21 >> (~v19 & 7)))
    {
      v22 = 0;
      for (k = 17; k > 1; --k)
      {
        while (1)
        {
          v25 = a2[2];
          v26 = (*a2 + (v25 >> 3));
          if (v26 >= a2[1])
          {
            break;
          }

          v24 = (*v26 >> (~v25 & 7)) & 1;
          a2[2] = v25 + 1;
          v22 |= v24 << (k-- - 2);
          if (k <= 1)
          {
            goto LABEL_21;
          }
        }

        v27 = a2[4];
        if (v27)
        {
          v27(a2[3]);
        }
      }

LABEL_21:
      v28 = 0;
      v6[2] = v22 + 1;
      for (m = 17; m > 1; --m)
      {
        while (1)
        {
          v31 = a2[2];
          v32 = (*a2 + (v31 >> 3));
          if (v32 >= a2[1])
          {
            break;
          }

          v30 = (*v32 >> (~v31 & 7)) & 1;
          a2[2] = v31 + 1;
          v28 |= v30 << (m-- - 2);
          if (m <= 1)
          {
            goto LABEL_27;
          }
        }

        v33 = a2[4];
        if (v33)
        {
          v33(a2[3]);
        }
      }

LABEL_27:
      a1[76] = v28 + 1;
    }
  }

  if (vpx_realloc_frame_buffer(*(a1 + 2281) + 224 * a1[236] + 88, a1[73], a1[74], a1[79], a1[80], a1[81], 32, v5[20], (v7 + 24 + 224 * a1[236] + 40), *(v7 + 8), *v7))
  {
    vpx_internal_error(a1, 2, "Failed to allocate frame buffer");
  }

  v35 = v7 + 24 + 224 * a1[236];
  *&v36 = *(v6 + 3);
  DWORD2(v36) = *v5;
  HIDWORD(v36) = a1[71];
  *(v35 + 24) = 0;
  *(v35 + 184) = v36;
  *(v35 + 200) = a1[72];
  result = *(v6 + 1);
  *(v35 + 204) = result;
  return result;
}

void resize_context_buffers(jmp_buf a1, int a2, int a3)
{
  if (a2 > 0x4000 || a3 > 0x4000)
  {
    vpx_internal_error(a1, 7, "Dimensions of %dx%d beyond allowed size of %dx%d.", a2, a3, 0x4000, 0x4000);
    if (a1[73] != a2)
    {
      goto LABEL_7;
    }
  }

  else if (a1[73] != a2)
  {
    goto LABEL_7;
  }

  if (a1[74] == a3)
  {
    goto LABEL_14;
  }

LABEL_7:
  v6 = (a2 + 7) >> 3;
  if (v6 <= a1[330] && (v7 = (a3 + 7) >> 3, v7 <= a1[328]))
  {
    a1[330] = v6;
    a1[328] = v7;
    a1[331] = v6 + 8;
    v16 = (v6 + 1) >> 1;
    a1[329] = v16;
    v17 = (v7 + 1) >> 1;
    a1[327] = v17;
    a1[326] = v17 * v16;
    (*(a1 + 183))(a1);
    v8 = *(a1 + 192);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (vp9_alloc_context_buffers(a1, a2, a3))
    {
      *(a1 + 73) = 0;
      vpx_internal_error(a1, 2, "Failed to allocate context buffers");
    }

    (*(a1 + 183))(a1);
    v8 = *(a1 + 192);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  bzero(v8, a1[330] * a1[328]);
LABEL_13:
  a1[73] = a2;
  a1[74] = a3;
LABEL_14:
  v9 = *(a1 + 43);
  v10 = *(v9 + 8);
  if (v10)
  {
    if (a1[328] <= *(v9 + 16) && a1[330] <= *(v9 + 20))
    {
      return;
    }

    free(*(v10 - 8));
    v9 = *(a1 + 43);
  }

  v11 = a1[328];
  v12 = a1[330];
  *(v9 + 16) = v11;
  *(v9 + 20) = v12;
  if (((v12 * v11) & 0x80000000) == 0 && (v13 = 12 * (v12 * v11), (v14 = malloc_type_malloc(v13 + 23, 0xD93B561uLL)) != 0) && (v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0, *(v15 - 8) = v14, v15))
  {
    bzero(((v14 + 23) & 0xFFFFFFFFFFFFFFF0), v13);
    *(*(a1 + 43) + 8) = v15;
  }

  else
  {
    *(*(a1 + 43) + 8) = 0;

    vpx_internal_error(a1, 2, "Failed to allocate cm->cur_frame->mvs");
  }
}

uint64_t update_mv_probs(uint64_t result, unsigned int a2, uint64_t a3)
{
  v553 = result;
  v4 = 0;
  v560 = (a3 + 48);
  v5.i64[0] = 0x800000008;
  v5.i64[1] = 0x800000008;
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v559 = a2;
  do
  {
    v11 = *(a3 + 8);
    v12 = *(a3 + 12);
    v13 = *a3;
    if ((v12 & 0x80000000) == 0)
    {
      v14 = (252 * v11 + 4) >> 8;
      v15 = v14 << 56;
      v16 = *a3;
      v17 = v13 - (v14 << 56);
      if (v13 < v14 << 56)
      {
        goto LABEL_8;
      }

LABEL_7:
      LODWORD(v14) = *(a3 + 8) - v14;
      v16 = v17;
      goto LABEL_8;
    }

    v24 = *(a3 + 24);
    v25 = *(a3 + 16) - v24;
    v26 = *(a3 + 32);
    if (v26)
    {
      if (v25 >= 9)
      {
        v27 = 9;
      }

      else
      {
        v27 = *(a3 + 16) - v24;
      }

      v24 = v560;
      result = v26(*(a3 + 40), *(a3 + 24), v560, v27);
      v6.i64[0] = 0x7F0000007FLL;
      v6.i64[1] = 0x7F0000007FLL;
      v5.i64[0] = 0x800000008;
      v5.i64[1] = 0x800000008;
    }

    v28 = 8 * v25;
    v29 = 48 - v12;
    if (8 * v25 < 0x41)
    {
      v41 = 56 - v12 - v28;
      if (v41 < 0)
      {
        v31 = v12;
      }

      else
      {
        v31 = v12 + 0x40000000;
      }

      if (v28)
      {
        v42 = 1;
      }

      else
      {
        v42 = v41 <= -1;
      }

      v43 = v41 & ~(v41 >> 31);
      if (!v42 || v29 < v43)
      {
        v32 = v24;
      }

      else
      {
        v49 = v43 - 1;
        if (v43 - 1 >= (40 - v12))
        {
          v49 = 40 - v12;
        }

        v50 = 47 - v12 - v49;
        v32 = v24;
        v51 = 48 - v12;
        if (v50 < 0x78)
        {
          goto LABEL_251;
        }

        v52 = (v50 >> 3) + 1;
        v53 = v13;
        v54 = 0uLL;
        v55 = v31;
        v56 = vdupq_n_s32(v29);
        v57 = vaddq_s32(v56, xmmword_273BC3230);
        v32 = (v24 + (v52 & 0x3FFFFFF0));
        v58 = vaddq_s32(v56, xmmword_273BC3240);
        v51 = v29 - 8 * (v52 & 0x3FFFFFF0);
        v59 = vaddq_s32(v56, xmmword_273BC3250);
        v60 = vaddq_s32(v56, xmmword_273BC3220);
        v61 = v52 & 0x3FFFFFF0;
        v62 = v24;
        v63 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v70 = 0uLL;
        v71 = 0uLL;
        do
        {
          v72 = *v62++;
          v73 = vmovl_high_u8(v72);
          v74 = vmovl_high_u16(v73);
          v75.i64[0] = v74.u32[0];
          v75.i64[1] = v74.u32[1];
          v76 = v75;
          v77 = vmovl_u16(*v73.i8);
          v75.i64[0] = v77.u32[2];
          v75.i64[1] = v77.u32[3];
          v78 = v75;
          v79 = vmovl_u8(*v72.i8);
          v80 = vmovl_high_u16(v79);
          v75.i64[0] = v80.u32[2];
          v75.i64[1] = v80.u32[3];
          v81 = v75;
          v75.i64[0] = v74.u32[2];
          v75.i64[1] = v74.u32[3];
          v82 = v75;
          v75.i64[0] = v77.u32[0];
          v75.i64[1] = v77.u32[1];
          v83 = v75;
          v75.i64[0] = v80.u32[0];
          v75.i64[1] = v80.u32[1];
          v84 = v75;
          v85 = vmovl_u16(*v79.i8);
          v75.i64[0] = v85.u32[2];
          v75.i64[1] = v85.u32[3];
          v86 = v75;
          v75.i64[0] = v85.u32[0];
          v75.i64[1] = v85.u32[1];
          v87 = v75;
          v75.i64[0] = v60.u32[0];
          v75.i64[1] = v60.u32[1];
          v88 = vshlq_u64(v87, v75);
          v75.i64[0] = v60.u32[2];
          v75.i64[1] = v60.u32[3];
          v89 = vshlq_u64(v86, v75);
          v75.i64[0] = v59.u32[0];
          v75.i64[1] = v59.u32[1];
          v90 = vshlq_u64(v84, v75);
          v75.i64[0] = v58.u32[0];
          v75.i64[1] = v58.u32[1];
          v91 = vshlq_u64(v83, v75);
          v75.i64[0] = v57.u32[2];
          v75.i64[1] = v57.u32[3];
          v92 = vshlq_u64(v82, v75);
          v75.i64[0] = v59.u32[2];
          v75.i64[1] = v59.u32[3];
          v93 = vshlq_u64(v81, v75);
          v75.i64[0] = v58.u32[2];
          v75.i64[1] = v58.u32[3];
          v94 = vshlq_u64(v78, v75);
          v75.i64[0] = v57.u32[0];
          v75.i64[1] = v57.u32[1];
          v67 = vorrq_s8(vshlq_u64(v76, v75), v67);
          v66 = vorrq_s8(v94, v66);
          v64 = vorrq_s8(v93, v64);
          v68 = vorrq_s8(v92, v68);
          v65 = vorrq_s8(v91, v65);
          v63 = vorrq_s8(v90, v63);
          v54 = vorrq_s8(v89, v54);
          v53 = vorrq_s8(v88, v53);
          v55 = vaddq_s32(v55, v5);
          v69 = vaddq_s32(v69, v5);
          v70 = vaddq_s32(v70, v5);
          v71 = vaddq_s32(v71, v5);
          v60 = vaddq_s32(v60, v6);
          v59 = vaddq_s32(v59, v6);
          v58 = vaddq_s32(v58, v6);
          v57 = vaddq_s32(v57, v6);
          v61 -= 16;
        }

        while (v61);
        v95 = vorrq_s8(vorrq_s8(vorrq_s8(v53, v65), vorrq_s8(v63, v67)), vorrq_s8(vorrq_s8(v54, v66), vorrq_s8(v64, v68)));
        v13 = vorr_s8(*v95.i8, *&vextq_s8(v95, v95, 8uLL));
        v31 = vaddvq_s32(vaddq_s32(vaddq_s32(v55, v70), vaddq_s32(v69, v71)));
        if ((v52 & 0x3FFFFFF0) != v52)
        {
LABEL_251:
          do
          {
            v31 += 8;
            v96 = *v32;
            v32 = (v32 + 1);
            v13 |= v96 << v51;
            v51 -= 8;
          }

          while (v51 >= v43);
        }
      }
    }

    else
    {
      v30 = (v29 & 0x7FFFFFF8) + 8;
      v31 = v30 + v12;
      v32 = (v24 + (v30 >> 3));
      v13 = (bswap64(*v24) >> (56 - (v29 & 0xF8u)) << (v29 & 7)) | *a3;
    }

    *(a3 + 24) += v32 - v24;
    v12 = v31;
    v14 = (252 * v11 + 4) >> 8;
    v15 = v14 << 56;
    v16 = v13;
    v17 = v13 - (v14 << 56);
    if (v13 >= v14 << 56)
    {
      goto LABEL_7;
    }

LABEL_8:
    v18 = vpx_norm[v14];
    v19 = v14 << v18;
    v20 = v16 << v18;
    *a3 = v16 << v18;
    v21 = v12 - v18;
    *(a3 + 8) = v14 << v18;
    *(a3 + 12) = v12 - v18;
    if (v13 >= v15)
    {
      if ((v21 & 0x80000000) != 0)
      {
        v33 = *(a3 + 24);
        v34 = *(a3 + 16) - v33;
        v35 = *(a3 + 32);
        if (v35)
        {
          if (v34 >= 9)
          {
            v36 = 9;
          }

          else
          {
            v36 = *(a3 + 16) - v33;
          }

          v33 = v560;
          v35(*(a3 + 40), *(a3 + 24), v560, v36);
          v6.i64[0] = 0x7F0000007FLL;
          v6.i64[1] = 0x7F0000007FLL;
          v5.i64[0] = 0x800000008;
          v5.i64[1] = 0x800000008;
        }

        v37 = 8 * v34;
        v38 = 48 - v21;
        if (8 * v34 < 0x41)
        {
          v45 = 56 - v37 - v21;
          if (v45 >= 0)
          {
            v21 += 0x40000000;
          }

          if (v37)
          {
            v46 = 1;
          }

          else
          {
            v46 = v45 <= -1;
          }

          v47 = v45 & ~(v45 >> 31);
          if (!v46 || v38 < v47)
          {
            v40 = v33;
          }

          else
          {
            v97 = v18 - v12 + 40;
            if (v97 >= v47 - 1)
            {
              v97 = v47 - 1;
            }

            v98 = v18 - v12 - v97 + 47;
            v40 = v33;
            v99 = v38;
            if (v98 < 0x78)
            {
              goto LABEL_252;
            }

            v100 = (v98 >> 3) + 1;
            v101 = v20;
            v102 = 0uLL;
            v103 = v21;
            v104 = vdupq_n_s32(v38);
            v105 = vaddq_s32(v104, xmmword_273BC3230);
            v40 = (v33 + (v100 & 0x3FFFFFF0));
            v106 = vaddq_s32(v104, xmmword_273BC3240);
            v99 = v38 - 8 * (v100 & 0x3FFFFFF0);
            v107 = vaddq_s32(v104, xmmword_273BC3250);
            v108 = vaddq_s32(v104, xmmword_273BC3220);
            v109 = v100 & 0x3FFFFFF0;
            v110 = v33;
            v111 = 0uLL;
            v112 = 0uLL;
            v113 = 0uLL;
            v114 = 0uLL;
            v115 = 0uLL;
            v116 = 0uLL;
            v117 = 0uLL;
            v118 = 0uLL;
            v119 = 0uLL;
            do
            {
              v120 = *v110++;
              v121 = vmovl_high_u8(v120);
              v122 = vmovl_high_u16(v121);
              v123.i64[0] = v122.u32[0];
              v123.i64[1] = v122.u32[1];
              v124 = v123;
              v125 = vmovl_u16(*v121.i8);
              v123.i64[0] = v125.u32[2];
              v123.i64[1] = v125.u32[3];
              v126 = v123;
              v127 = vmovl_u8(*v120.i8);
              v128 = vmovl_high_u16(v127);
              v123.i64[0] = v128.u32[2];
              v123.i64[1] = v128.u32[3];
              v129 = v123;
              v123.i64[0] = v122.u32[2];
              v123.i64[1] = v122.u32[3];
              v130 = v123;
              v123.i64[0] = v125.u32[0];
              v123.i64[1] = v125.u32[1];
              v131 = v123;
              v123.i64[0] = v128.u32[0];
              v123.i64[1] = v128.u32[1];
              v132 = v123;
              v133 = vmovl_u16(*v127.i8);
              v123.i64[0] = v133.u32[2];
              v123.i64[1] = v133.u32[3];
              v134 = v123;
              v123.i64[0] = v133.u32[0];
              v123.i64[1] = v133.u32[1];
              v135 = v123;
              v123.i64[0] = v108.u32[0];
              v123.i64[1] = v108.u32[1];
              v136 = vshlq_u64(v135, v123);
              v123.i64[0] = v108.u32[2];
              v123.i64[1] = v108.u32[3];
              v137 = vshlq_u64(v134, v123);
              v123.i64[0] = v107.u32[0];
              v123.i64[1] = v107.u32[1];
              v138 = vshlq_u64(v132, v123);
              v123.i64[0] = v106.u32[0];
              v123.i64[1] = v106.u32[1];
              v139 = vshlq_u64(v131, v123);
              v123.i64[0] = v105.u32[2];
              v123.i64[1] = v105.u32[3];
              v140 = vshlq_u64(v130, v123);
              v123.i64[0] = v107.u32[2];
              v123.i64[1] = v107.u32[3];
              v141 = vshlq_u64(v129, v123);
              v123.i64[0] = v106.u32[2];
              v123.i64[1] = v106.u32[3];
              v142 = vshlq_u64(v126, v123);
              v123.i64[0] = v105.u32[0];
              v123.i64[1] = v105.u32[1];
              v115 = vorrq_s8(vshlq_u64(v124, v123), v115);
              v114 = vorrq_s8(v142, v114);
              v112 = vorrq_s8(v141, v112);
              v116 = vorrq_s8(v140, v116);
              v113 = vorrq_s8(v139, v113);
              v111 = vorrq_s8(v138, v111);
              v102 = vorrq_s8(v137, v102);
              v101 = vorrq_s8(v136, v101);
              v103 = vaddq_s32(v103, v5);
              v117 = vaddq_s32(v117, v5);
              v118 = vaddq_s32(v118, v5);
              v119 = vaddq_s32(v119, v5);
              v108 = vaddq_s32(v108, v6);
              v107 = vaddq_s32(v107, v6);
              v106 = vaddq_s32(v106, v6);
              v105 = vaddq_s32(v105, v6);
              v109 -= 16;
            }

            while (v109);
            v143 = vorrq_s8(vorrq_s8(vorrq_s8(v101, v113), vorrq_s8(v111, v115)), vorrq_s8(vorrq_s8(v102, v114), vorrq_s8(v112, v116)));
            v20 = vorr_s8(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
            v21 = vaddvq_s32(vaddq_s32(vaddq_s32(v103, v118), vaddq_s32(v117, v119)));
            if ((v100 & 0x3FFFFFF0) != v100)
            {
LABEL_252:
              do
              {
                v21 += 8;
                v144 = *v40;
                v40 = (v40 + 1);
                v20 |= v144 << v99;
                v99 -= 8;
              }

              while (v99 >= v47);
            }
          }
        }

        else
        {
          v39 = (v38 & 0x7FFFFFF8) + 8;
          v21 += v39;
          v40 = (v33 + (v39 >> 3));
          v20 = (bswap64(*v33) >> (56 - (v38 & 0xF8u)) << (v38 & 7)) | *a3;
        }

        *(a3 + 24) += v40 - v33;
        v22 = ((v19 << 7) + 128) >> 8;
        v23 = v20 - (v22 << 56);
        if (v20 >= v22 << 56)
        {
          goto LABEL_66;
        }

LABEL_11:
        v558 = 1;
      }

      else
      {
        v22 = ((v19 << 7) + 128) >> 8;
        v23 = v20 - (v22 << 56);
        if (v20 < v22 << 56)
        {
          goto LABEL_11;
        }

LABEL_66:
        LODWORD(v22) = *(a3 + 8) - v22;
        v558 = -127;
        v20 = v23;
      }

      v145 = vpx_norm[v22];
      v146 = v22 << v145;
      v147 = v20 << v145;
      *a3 = v147;
      v148 = v21 - v145;
      *(a3 + 8) = v22 << v145;
      *(a3 + 12) = v21 - v145;
      if ((v21 - v145) < 0)
      {
        v151 = *(a3 + 24);
        v152 = *(a3 + 16) - v151;
        v153 = *(a3 + 32);
        if (v153)
        {
          if (v152 >= 9)
          {
            v154 = 9;
          }

          else
          {
            v154 = *(a3 + 16) - v151;
          }

          v151 = v560;
          v153(*(a3 + 40), *(a3 + 24), v560, v154);
          v6.i64[0] = 0x7F0000007FLL;
          v6.i64[1] = 0x7F0000007FLL;
          v5.i64[0] = 0x800000008;
          v5.i64[1] = 0x800000008;
        }

        v155 = 8 * v152;
        v156 = 48 - v148;
        if (8 * v152 < 0x41)
        {
          v159 = 56 - v155 - v148;
          if (v159 >= 0)
          {
            v148 += 0x40000000;
          }

          if (v155)
          {
            v160 = 1;
          }

          else
          {
            v160 = v159 <= -1;
          }

          v161 = v159 & ~(v159 >> 31);
          if (!v160 || v156 < v161)
          {
            v158 = v151;
          }

          else
          {
            v163 = v145 - v21 + 40;
            if (v163 >= v161 - 1)
            {
              v163 = v161 - 1;
            }

            v164 = v145 - v21 - v163 + 47;
            v158 = v151;
            v165 = v156;
            if (v164 < 0x78)
            {
              goto LABEL_253;
            }

            v166 = (v164 >> 3) + 1;
            v167 = v147;
            v168 = 0uLL;
            v169 = v148;
            v170 = vdupq_n_s32(v156);
            v171 = vaddq_s32(v170, xmmword_273BC3230);
            v158 = (v151 + (v166 & 0x3FFFFFF0));
            v172 = vaddq_s32(v170, xmmword_273BC3240);
            v165 = v156 - 8 * (v166 & 0x3FFFFFF0);
            v173 = vaddq_s32(v170, xmmword_273BC3250);
            v174 = vaddq_s32(v170, xmmword_273BC3220);
            v175 = v166 & 0x3FFFFFF0;
            v176 = v151;
            v177 = 0uLL;
            v178 = 0uLL;
            v179 = 0uLL;
            v180 = 0uLL;
            v181 = 0uLL;
            v182 = 0uLL;
            v183 = 0uLL;
            v184 = 0uLL;
            v185 = 0uLL;
            do
            {
              v186 = *v176++;
              v187 = vmovl_high_u8(v186);
              v188 = vmovl_high_u16(v187);
              v189.i64[0] = v188.u32[0];
              v189.i64[1] = v188.u32[1];
              v190 = v189;
              v191 = vmovl_u16(*v187.i8);
              v189.i64[0] = v191.u32[2];
              v189.i64[1] = v191.u32[3];
              v192 = v189;
              v193 = vmovl_u8(*v186.i8);
              v194 = vmovl_high_u16(v193);
              v189.i64[0] = v194.u32[2];
              v189.i64[1] = v194.u32[3];
              v195 = v189;
              v189.i64[0] = v188.u32[2];
              v189.i64[1] = v188.u32[3];
              v196 = v189;
              v189.i64[0] = v191.u32[0];
              v189.i64[1] = v191.u32[1];
              v197 = v189;
              v189.i64[0] = v194.u32[0];
              v189.i64[1] = v194.u32[1];
              v198 = v189;
              v199 = vmovl_u16(*v193.i8);
              v189.i64[0] = v199.u32[2];
              v189.i64[1] = v199.u32[3];
              v200 = v189;
              v189.i64[0] = v199.u32[0];
              v189.i64[1] = v199.u32[1];
              v201 = v189;
              v189.i64[0] = v174.u32[0];
              v189.i64[1] = v174.u32[1];
              v202 = vshlq_u64(v201, v189);
              v189.i64[0] = v174.u32[2];
              v189.i64[1] = v174.u32[3];
              v203 = vshlq_u64(v200, v189);
              v189.i64[0] = v173.u32[0];
              v189.i64[1] = v173.u32[1];
              v204 = vshlq_u64(v198, v189);
              v189.i64[0] = v172.u32[0];
              v189.i64[1] = v172.u32[1];
              v205 = vshlq_u64(v197, v189);
              v189.i64[0] = v171.u32[2];
              v189.i64[1] = v171.u32[3];
              v206 = vshlq_u64(v196, v189);
              v189.i64[0] = v173.u32[2];
              v189.i64[1] = v173.u32[3];
              v207 = vshlq_u64(v195, v189);
              v189.i64[0] = v172.u32[2];
              v189.i64[1] = v172.u32[3];
              v208 = vshlq_u64(v192, v189);
              v189.i64[0] = v171.u32[0];
              v189.i64[1] = v171.u32[1];
              v181 = vorrq_s8(vshlq_u64(v190, v189), v181);
              v180 = vorrq_s8(v208, v180);
              v178 = vorrq_s8(v207, v178);
              v182 = vorrq_s8(v206, v182);
              v179 = vorrq_s8(v205, v179);
              v177 = vorrq_s8(v204, v177);
              v168 = vorrq_s8(v203, v168);
              v167 = vorrq_s8(v202, v167);
              v169 = vaddq_s32(v169, v5);
              v183 = vaddq_s32(v183, v5);
              v184 = vaddq_s32(v184, v5);
              v185 = vaddq_s32(v185, v5);
              v174 = vaddq_s32(v174, v6);
              v173 = vaddq_s32(v173, v6);
              v172 = vaddq_s32(v172, v6);
              v171 = vaddq_s32(v171, v6);
              v175 -= 16;
            }

            while (v175);
            v209 = vorrq_s8(vorrq_s8(vorrq_s8(v167, v179), vorrq_s8(v177, v181)), vorrq_s8(vorrq_s8(v168, v180), vorrq_s8(v178, v182)));
            v147 = vorr_s8(*v209.i8, *&vextq_s8(v209, v209, 8uLL));
            v148 = vaddvq_s32(vaddq_s32(vaddq_s32(v169, v184), vaddq_s32(v183, v185)));
            if ((v166 & 0x3FFFFFF0) != v166)
            {
LABEL_253:
              do
              {
                v148 += 8;
                v210 = *v158;
                v158 = (v158 + 1);
                v147 |= v210 << v165;
                v165 -= 8;
              }

              while (v165 >= v161);
            }
          }
        }

        else
        {
          v157 = (v156 & 0x7FFFFFF8) + 8;
          v148 += v157;
          v158 = (v151 + (v157 >> 3));
          v147 = (bswap64(*v151) >> (56 - (v156 & 0xF8u)) << (v156 & 7)) | *a3;
        }

        *(a3 + 24) += v158 - v151;
        v149 = ((v146 << 7) + 128) >> 8;
        v150 = v147 - (v149 << 56);
        if (v147 >= v149 << 56)
        {
          goto LABEL_96;
        }

LABEL_69:
        v557 = 0;
      }

      else
      {
        v149 = ((v146 << 7) + 128) >> 8;
        v150 = v147 - (v149 << 56);
        if (v147 < v149 << 56)
        {
          goto LABEL_69;
        }

LABEL_96:
        LODWORD(v149) = *(a3 + 8) - v149;
        v557 = 64;
        v147 = v150;
      }

      v211 = vpx_norm[v149];
      v212 = v149 << v211;
      v213 = v147 << v211;
      *a3 = v213;
      v214 = v148 - v211;
      *(a3 + 8) = v149 << v211;
      *(a3 + 12) = v148 - v211;
      if ((v148 - v211) < 0)
      {
        v217 = *(a3 + 24);
        v218 = *(a3 + 16) - v217;
        v219 = *(a3 + 32);
        if (v219)
        {
          if (v218 >= 9)
          {
            v220 = 9;
          }

          else
          {
            v220 = *(a3 + 16) - v217;
          }

          v217 = v560;
          v219(*(a3 + 40), *(a3 + 24), v560, v220);
          v6.i64[0] = 0x7F0000007FLL;
          v6.i64[1] = 0x7F0000007FLL;
          v5.i64[0] = 0x800000008;
          v5.i64[1] = 0x800000008;
        }

        v221 = 8 * v218;
        v222 = 48 - v214;
        if (8 * v218 < 0x41)
        {
          v225 = 56 - v221 - v214;
          if (v225 >= 0)
          {
            v214 += 0x40000000;
          }

          if (v221)
          {
            v226 = 1;
          }

          else
          {
            v226 = v225 <= -1;
          }

          v227 = v225 & ~(v225 >> 31);
          if (!v226 || v222 < v227)
          {
            v224 = v217;
          }

          else
          {
            v229 = v211 - v148 + 40;
            if (v229 >= v227 - 1)
            {
              v229 = v227 - 1;
            }

            v230 = v211 - v148 - v229 + 47;
            v224 = v217;
            v231 = v222;
            if (v230 < 0x78)
            {
              goto LABEL_254;
            }

            v232 = (v230 >> 3) + 1;
            v233 = v213;
            v234 = 0uLL;
            v235 = v214;
            v236 = vdupq_n_s32(v222);
            v237 = vaddq_s32(v236, xmmword_273BC3230);
            v224 = (v217 + (v232 & 0x3FFFFFF0));
            v238 = vaddq_s32(v236, xmmword_273BC3240);
            v231 = v222 - 8 * (v232 & 0x3FFFFFF0);
            v239 = vaddq_s32(v236, xmmword_273BC3250);
            v240 = vaddq_s32(v236, xmmword_273BC3220);
            v241 = v232 & 0x3FFFFFF0;
            v242 = v217;
            v243 = 0uLL;
            v244 = 0uLL;
            v245 = 0uLL;
            v246 = 0uLL;
            v247 = 0uLL;
            v248 = 0uLL;
            v249 = 0uLL;
            v250 = 0uLL;
            v251 = 0uLL;
            do
            {
              v252 = *v242++;
              v253 = vmovl_high_u8(v252);
              v254 = vmovl_high_u16(v253);
              v255.i64[0] = v254.u32[0];
              v255.i64[1] = v254.u32[1];
              v256 = v255;
              v257 = vmovl_u16(*v253.i8);
              v255.i64[0] = v257.u32[2];
              v255.i64[1] = v257.u32[3];
              v258 = v255;
              v259 = vmovl_u8(*v252.i8);
              v260 = vmovl_high_u16(v259);
              v255.i64[0] = v260.u32[2];
              v255.i64[1] = v260.u32[3];
              v261 = v255;
              v255.i64[0] = v254.u32[2];
              v255.i64[1] = v254.u32[3];
              v262 = v255;
              v255.i64[0] = v257.u32[0];
              v255.i64[1] = v257.u32[1];
              v263 = v255;
              v255.i64[0] = v260.u32[0];
              v255.i64[1] = v260.u32[1];
              v264 = v255;
              v265 = vmovl_u16(*v259.i8);
              v255.i64[0] = v265.u32[2];
              v255.i64[1] = v265.u32[3];
              v266 = v255;
              v255.i64[0] = v265.u32[0];
              v255.i64[1] = v265.u32[1];
              v267 = v255;
              v255.i64[0] = v240.u32[0];
              v255.i64[1] = v240.u32[1];
              v268 = vshlq_u64(v267, v255);
              v255.i64[0] = v240.u32[2];
              v255.i64[1] = v240.u32[3];
              v269 = vshlq_u64(v266, v255);
              v255.i64[0] = v239.u32[0];
              v255.i64[1] = v239.u32[1];
              v270 = vshlq_u64(v264, v255);
              v255.i64[0] = v238.u32[0];
              v255.i64[1] = v238.u32[1];
              v271 = vshlq_u64(v263, v255);
              v255.i64[0] = v237.u32[2];
              v255.i64[1] = v237.u32[3];
              v272 = vshlq_u64(v262, v255);
              v255.i64[0] = v239.u32[2];
              v255.i64[1] = v239.u32[3];
              v273 = vshlq_u64(v261, v255);
              v255.i64[0] = v238.u32[2];
              v255.i64[1] = v238.u32[3];
              v274 = vshlq_u64(v258, v255);
              v255.i64[0] = v237.u32[0];
              v255.i64[1] = v237.u32[1];
              v247 = vorrq_s8(vshlq_u64(v256, v255), v247);
              v246 = vorrq_s8(v274, v246);
              v244 = vorrq_s8(v273, v244);
              v248 = vorrq_s8(v272, v248);
              v245 = vorrq_s8(v271, v245);
              v243 = vorrq_s8(v270, v243);
              v234 = vorrq_s8(v269, v234);
              v233 = vorrq_s8(v268, v233);
              v235 = vaddq_s32(v235, v5);
              v249 = vaddq_s32(v249, v5);
              v250 = vaddq_s32(v250, v5);
              v251 = vaddq_s32(v251, v5);
              v240 = vaddq_s32(v240, v6);
              v239 = vaddq_s32(v239, v6);
              v238 = vaddq_s32(v238, v6);
              v237 = vaddq_s32(v237, v6);
              v241 -= 16;
            }

            while (v241);
            v275 = vorrq_s8(vorrq_s8(vorrq_s8(v233, v245), vorrq_s8(v243, v247)), vorrq_s8(vorrq_s8(v234, v246), vorrq_s8(v244, v248)));
            v213 = vorr_s8(*v275.i8, *&vextq_s8(v275, v275, 8uLL));
            v214 = vaddvq_s32(vaddq_s32(vaddq_s32(v235, v250), vaddq_s32(v249, v251)));
            if ((v232 & 0x3FFFFFF0) != v232)
            {
LABEL_254:
              do
              {
                v214 += 8;
                v276 = *v224;
                v224 = (v224 + 1);
                v213 |= v276 << v231;
                v231 -= 8;
              }

              while (v231 >= v227);
            }
          }
        }

        else
        {
          v223 = (v222 & 0x7FFFFFF8) + 8;
          v214 += v223;
          v224 = (v217 + (v223 >> 3));
          v213 = (bswap64(*v217) >> (56 - (v222 & 0xF8u)) << (v222 & 7)) | *a3;
        }

        *(a3 + 24) += v224 - v217;
        v215 = ((v212 << 7) + 128) >> 8;
        v216 = v213 - (v215 << 56);
        if (v213 >= v215 << 56)
        {
          goto LABEL_126;
        }

LABEL_99:
        result = 0;
      }

      else
      {
        v215 = ((v212 << 7) + 128) >> 8;
        v216 = v213 - (v215 << 56);
        if (v213 < v215 << 56)
        {
          goto LABEL_99;
        }

LABEL_126:
        LODWORD(v215) = *(a3 + 8) - v215;
        result = 32;
        v213 = v216;
      }

      v277 = vpx_norm[v215];
      v278 = v215 << v277;
      v279 = v213 << v277;
      *a3 = v279;
      v280 = v214 - v277;
      *(a3 + 8) = v215 << v277;
      *(a3 + 12) = v214 - v277;
      if ((v214 - v277) < 0)
      {
        v284 = *(a3 + 24);
        v285 = *(a3 + 16) - v284;
        v286 = *(a3 + 32);
        if (v286)
        {
          if (v285 >= 9)
          {
            v287 = 9;
          }

          else
          {
            v287 = *(a3 + 16) - v284;
          }

          v288 = result;
          v284 = v560;
          v286(*(a3 + 40), *(a3 + 24), v560, v287);
          result = v288;
          v6.i64[0] = 0x7F0000007FLL;
          v6.i64[1] = 0x7F0000007FLL;
          v5.i64[0] = 0x800000008;
          v5.i64[1] = 0x800000008;
        }

        v289 = 8 * v285;
        v290 = 48 - v280;
        if (8 * v285 < 0x41)
        {
          v293 = 56 - v289 - v280;
          if (v293 >= 0)
          {
            v280 += 0x40000000;
          }

          if (v289)
          {
            v294 = 1;
          }

          else
          {
            v294 = v293 <= -1;
          }

          v295 = v293 & ~(v293 >> 31);
          if (!v294 || v290 < v295)
          {
            v292 = v284;
          }

          else
          {
            v297 = v277 - v214 + 40;
            if (v297 >= v295 - 1)
            {
              v297 = v295 - 1;
            }

            v298 = v277 - v214 - v297 + 47;
            v292 = v284;
            v299 = v290;
            if (v298 < 0x78)
            {
              goto LABEL_255;
            }

            v300 = (v298 >> 3) + 1;
            v301 = v279;
            v302 = 0uLL;
            v303 = v280;
            v304 = vdupq_n_s32(v290);
            v305 = vaddq_s32(v304, xmmword_273BC3230);
            v292 = (v284 + (v300 & 0x3FFFFFF0));
            v306 = vaddq_s32(v304, xmmword_273BC3240);
            v299 = v290 - 8 * (v300 & 0x3FFFFFF0);
            v307 = vaddq_s32(v304, xmmword_273BC3250);
            v308 = vaddq_s32(v304, xmmword_273BC3220);
            v309 = v300 & 0x3FFFFFF0;
            v310 = v284;
            v311 = 0uLL;
            v312 = 0uLL;
            v313 = 0uLL;
            v314 = 0uLL;
            v315 = 0uLL;
            v316 = 0uLL;
            v317 = 0uLL;
            v318 = 0uLL;
            v319 = 0uLL;
            do
            {
              v320 = *v310++;
              v321 = vmovl_high_u8(v320);
              v322 = vmovl_high_u16(v321);
              v323.i64[0] = v322.u32[0];
              v323.i64[1] = v322.u32[1];
              v324 = v323;
              v325 = vmovl_u16(*v321.i8);
              v323.i64[0] = v325.u32[2];
              v323.i64[1] = v325.u32[3];
              v326 = v323;
              v327 = vmovl_u8(*v320.i8);
              v328 = vmovl_high_u16(v327);
              v323.i64[0] = v328.u32[2];
              v323.i64[1] = v328.u32[3];
              v329 = v323;
              v323.i64[0] = v322.u32[2];
              v323.i64[1] = v322.u32[3];
              v330 = v323;
              v323.i64[0] = v325.u32[0];
              v323.i64[1] = v325.u32[1];
              v331 = v323;
              v323.i64[0] = v328.u32[0];
              v323.i64[1] = v328.u32[1];
              v332 = v323;
              v333 = vmovl_u16(*v327.i8);
              v323.i64[0] = v333.u32[2];
              v323.i64[1] = v333.u32[3];
              v334 = v323;
              v323.i64[0] = v333.u32[0];
              v323.i64[1] = v333.u32[1];
              v335 = v323;
              v323.i64[0] = v308.u32[0];
              v323.i64[1] = v308.u32[1];
              v336 = vshlq_u64(v335, v323);
              v323.i64[0] = v308.u32[2];
              v323.i64[1] = v308.u32[3];
              v337 = vshlq_u64(v334, v323);
              v323.i64[0] = v307.u32[0];
              v323.i64[1] = v307.u32[1];
              v338 = vshlq_u64(v332, v323);
              v323.i64[0] = v306.u32[0];
              v323.i64[1] = v306.u32[1];
              v339 = vshlq_u64(v331, v323);
              v323.i64[0] = v305.u32[2];
              v323.i64[1] = v305.u32[3];
              v340 = vshlq_u64(v330, v323);
              v323.i64[0] = v307.u32[2];
              v323.i64[1] = v307.u32[3];
              v341 = vshlq_u64(v329, v323);
              v323.i64[0] = v306.u32[2];
              v323.i64[1] = v306.u32[3];
              v342 = vshlq_u64(v326, v323);
              v323.i64[0] = v305.u32[0];
              v323.i64[1] = v305.u32[1];
              v315 = vorrq_s8(vshlq_u64(v324, v323), v315);
              v314 = vorrq_s8(v342, v314);
              v312 = vorrq_s8(v341, v312);
              v316 = vorrq_s8(v340, v316);
              v313 = vorrq_s8(v339, v313);
              v311 = vorrq_s8(v338, v311);
              v302 = vorrq_s8(v337, v302);
              v301 = vorrq_s8(v336, v301);
              v303 = vaddq_s32(v303, v5);
              v317 = vaddq_s32(v317, v5);
              v318 = vaddq_s32(v318, v5);
              v319 = vaddq_s32(v319, v5);
              v308 = vaddq_s32(v308, v6);
              v307 = vaddq_s32(v307, v6);
              v306 = vaddq_s32(v306, v6);
              v305 = vaddq_s32(v305, v6);
              v309 -= 16;
            }

            while (v309);
            v343 = vorrq_s8(vorrq_s8(vorrq_s8(v301, v313), vorrq_s8(v311, v315)), vorrq_s8(vorrq_s8(v302, v314), vorrq_s8(v312, v316)));
            v279 = vorr_s8(*v343.i8, *&vextq_s8(v343, v343, 8uLL));
            v280 = vaddvq_s32(vaddq_s32(vaddq_s32(v303, v318), vaddq_s32(v317, v319)));
            if ((v300 & 0x3FFFFFF0) != v300)
            {
LABEL_255:
              do
              {
                v280 += 8;
                v344 = *v292;
                v292 = (v292 + 1);
                v279 |= v344 << v299;
                v299 -= 8;
              }

              while (v299 >= v295);
            }
          }
        }

        else
        {
          v291 = (v290 & 0x7FFFFFF8) + 8;
          v280 += v291;
          v292 = (v284 + (v291 >> 3));
          v279 = (bswap64(*v284) >> (56 - (v290 & 0xF8u)) << (v290 & 7)) | *a3;
        }

        *(a3 + 24) += v292 - v284;
        v281 = ((v278 << 7) + 128) >> 8;
        v282 = v279 - (v281 << 56);
        if (v279 >= v281 << 56)
        {
          goto LABEL_156;
        }

LABEL_129:
        v283 = 0;
      }

      else
      {
        v281 = ((v278 << 7) + 128) >> 8;
        v282 = v279 - (v281 << 56);
        if (v279 < v281 << 56)
        {
          goto LABEL_129;
        }

LABEL_156:
        LODWORD(v281) = *(a3 + 8) - v281;
        v283 = 16;
        v279 = v282;
      }

      v345 = vpx_norm[v281];
      v346 = v281 << v345;
      v347 = v279 << v345;
      *a3 = v347;
      v348 = v280 - v345;
      *(a3 + 8) = v281 << v345;
      *(a3 + 12) = v280 - v345;
      if ((v280 - v345) < 0)
      {
        v352 = *(a3 + 24);
        v353 = *(a3 + 16) - v352;
        v354 = *(a3 + 32);
        if (v354)
        {
          if (v353 >= 9)
          {
            v355 = 9;
          }

          else
          {
            v355 = *(a3 + 16) - v352;
          }

          v554 = result;
          v352 = v560;
          v356 = v4;
          v357 = v283;
          v354(*(a3 + 40), *(a3 + 24), v560, v355);
          v283 = v357;
          v4 = v356;
          result = v554;
          v6.i64[0] = 0x7F0000007FLL;
          v6.i64[1] = 0x7F0000007FLL;
          v5.i64[0] = 0x800000008;
          v5.i64[1] = 0x800000008;
        }

        v358 = 8 * v353;
        v359 = 48 - v348;
        if (8 * v353 < 0x41)
        {
          v362 = 56 - v358 - v348;
          if (v362 >= 0)
          {
            v348 += 0x40000000;
          }

          if (v358)
          {
            v363 = 1;
          }

          else
          {
            v363 = v362 <= -1;
          }

          v364 = v362 & ~(v362 >> 31);
          if (!v363 || v359 < v364)
          {
            v361 = v352;
          }

          else
          {
            v366 = v345 - v280 + 40;
            if (v366 >= v364 - 1)
            {
              v366 = v364 - 1;
            }

            v367 = v345 - v280 - v366 + 47;
            v361 = v352;
            v368 = v359;
            if (v367 < 0x78)
            {
              goto LABEL_256;
            }

            v369 = (v367 >> 3) + 1;
            v370 = v347;
            v371 = 0uLL;
            v372 = v348;
            v373 = vdupq_n_s32(v359);
            v374 = vaddq_s32(v373, xmmword_273BC3230);
            v361 = (v352 + (v369 & 0x3FFFFFF0));
            v375 = vaddq_s32(v373, xmmword_273BC3240);
            v368 = v359 - 8 * (v369 & 0x3FFFFFF0);
            v376 = vaddq_s32(v373, xmmword_273BC3250);
            v377 = vaddq_s32(v373, xmmword_273BC3220);
            v378 = v369 & 0x3FFFFFF0;
            v379 = v352;
            v380 = 0uLL;
            v381 = 0uLL;
            v382 = 0uLL;
            v383 = 0uLL;
            v384 = 0uLL;
            v385 = 0uLL;
            v386 = 0uLL;
            v387 = 0uLL;
            v388 = 0uLL;
            do
            {
              v389 = *v379++;
              v390 = vmovl_high_u8(v389);
              v391 = vmovl_high_u16(v390);
              v392.i64[0] = v391.u32[0];
              v392.i64[1] = v391.u32[1];
              v393 = v392;
              v394 = vmovl_u16(*v390.i8);
              v392.i64[0] = v394.u32[2];
              v392.i64[1] = v394.u32[3];
              v395 = v392;
              v396 = vmovl_u8(*v389.i8);
              v397 = vmovl_high_u16(v396);
              v392.i64[0] = v397.u32[2];
              v392.i64[1] = v397.u32[3];
              v398 = v392;
              v392.i64[0] = v391.u32[2];
              v392.i64[1] = v391.u32[3];
              v399 = v392;
              v392.i64[0] = v394.u32[0];
              v392.i64[1] = v394.u32[1];
              v400 = v392;
              v392.i64[0] = v397.u32[0];
              v392.i64[1] = v397.u32[1];
              v401 = v392;
              v402 = vmovl_u16(*v396.i8);
              v392.i64[0] = v402.u32[2];
              v392.i64[1] = v402.u32[3];
              v403 = v392;
              v392.i64[0] = v402.u32[0];
              v392.i64[1] = v402.u32[1];
              v404 = v392;
              v392.i64[0] = v377.u32[0];
              v392.i64[1] = v377.u32[1];
              v405 = vshlq_u64(v404, v392);
              v392.i64[0] = v377.u32[2];
              v392.i64[1] = v377.u32[3];
              v406 = vshlq_u64(v403, v392);
              v392.i64[0] = v376.u32[0];
              v392.i64[1] = v376.u32[1];
              v407 = vshlq_u64(v401, v392);
              v392.i64[0] = v375.u32[0];
              v392.i64[1] = v375.u32[1];
              v408 = vshlq_u64(v400, v392);
              v392.i64[0] = v374.u32[2];
              v392.i64[1] = v374.u32[3];
              v409 = vshlq_u64(v399, v392);
              v392.i64[0] = v376.u32[2];
              v392.i64[1] = v376.u32[3];
              v410 = vshlq_u64(v398, v392);
              v392.i64[0] = v375.u32[2];
              v392.i64[1] = v375.u32[3];
              v411 = vshlq_u64(v395, v392);
              v392.i64[0] = v374.u32[0];
              v392.i64[1] = v374.u32[1];
              v384 = vorrq_s8(vshlq_u64(v393, v392), v384);
              v383 = vorrq_s8(v411, v383);
              v381 = vorrq_s8(v410, v381);
              v385 = vorrq_s8(v409, v385);
              v382 = vorrq_s8(v408, v382);
              v380 = vorrq_s8(v407, v380);
              v371 = vorrq_s8(v406, v371);
              v370 = vorrq_s8(v405, v370);
              v372 = vaddq_s32(v372, v5);
              v386 = vaddq_s32(v386, v5);
              v387 = vaddq_s32(v387, v5);
              v388 = vaddq_s32(v388, v5);
              v377 = vaddq_s32(v377, v6);
              v376 = vaddq_s32(v376, v6);
              v375 = vaddq_s32(v375, v6);
              v374 = vaddq_s32(v374, v6);
              v378 -= 16;
            }

            while (v378);
            v412 = vorrq_s8(vorrq_s8(vorrq_s8(v370, v382), vorrq_s8(v380, v384)), vorrq_s8(vorrq_s8(v371, v383), vorrq_s8(v381, v385)));
            v347 = vorr_s8(*v412.i8, *&vextq_s8(v412, v412, 8uLL));
            v348 = vaddvq_s32(vaddq_s32(vaddq_s32(v372, v387), vaddq_s32(v386, v388)));
            if ((v369 & 0x3FFFFFF0) != v369)
            {
LABEL_256:
              do
              {
                v348 += 8;
                v413 = *v361;
                v361 = (v361 + 1);
                v347 |= v413 << v368;
                v368 -= 8;
              }

              while (v368 >= v364);
            }
          }
        }

        else
        {
          v360 = (v359 & 0x7FFFFFF8) + 8;
          v348 += v360;
          v361 = (v352 + (v360 >> 3));
          v347 = (bswap64(*v352) >> (56 - (v359 & 0xF8u)) << (v359 & 7)) | *a3;
        }

        *(a3 + 24) += v361 - v352;
        v349 = ((v346 << 7) + 128) >> 8;
        v350 = v347 - (v349 << 56);
        if (v347 >= v349 << 56)
        {
          goto LABEL_186;
        }

LABEL_159:
        v351 = 0;
      }

      else
      {
        v349 = ((v346 << 7) + 128) >> 8;
        v350 = v347 - (v349 << 56);
        if (v347 < v349 << 56)
        {
          goto LABEL_159;
        }

LABEL_186:
        LODWORD(v349) = *(a3 + 8) - v349;
        v351 = 8;
        v347 = v350;
      }

      v414 = vpx_norm[v349];
      v415 = v349 << v414;
      v416 = v347 << v414;
      *a3 = v347 << v414;
      v417 = v348 - v414;
      *(a3 + 8) = v349 << v414;
      *(a3 + 12) = v348 - v414;
      if ((v348 - v414) < 0)
      {
        v421 = *(a3 + 24);
        v422 = *(a3 + 16) - v421;
        v423 = *(a3 + 32);
        if (v423)
        {
          v551 = v351;
          if (v422 >= 9)
          {
            v424 = 9;
          }

          else
          {
            v424 = *(a3 + 16) - v421;
          }

          v555 = result;
          v421 = v560;
          v425 = v4;
          v426 = v283;
          v423(*(a3 + 40), *(a3 + 24), v560, v424);
          v351 = v551;
          v283 = v426;
          v4 = v425;
          result = v555;
          v6.i64[0] = 0x7F0000007FLL;
          v6.i64[1] = 0x7F0000007FLL;
          v5.i64[0] = 0x800000008;
          v5.i64[1] = 0x800000008;
        }

        v427 = 8 * v422;
        v428 = 48 - v417;
        if (8 * v422 < 0x41)
        {
          v431 = 56 - v427 - v417;
          if (v431 >= 0)
          {
            v417 += 0x40000000;
          }

          if (v427)
          {
            v432 = 1;
          }

          else
          {
            v432 = v431 <= -1;
          }

          v433 = v431 & ~(v431 >> 31);
          if (!v432 || v428 < v433)
          {
            v430 = v421;
          }

          else
          {
            v435 = v414 - v348 + 40;
            if (v435 >= v433 - 1)
            {
              v435 = v433 - 1;
            }

            v436 = v414 - v348 - v435 + 47;
            v430 = v421;
            v437 = v428;
            if (v436 < 0x78)
            {
              goto LABEL_257;
            }

            v438 = (v436 >> 3) + 1;
            v439 = v416;
            v440 = 0uLL;
            v441 = v417;
            v442 = vdupq_n_s32(v428);
            v443 = vaddq_s32(v442, xmmword_273BC3230);
            v430 = (v421 + (v438 & 0x3FFFFFF0));
            v444 = vaddq_s32(v442, xmmword_273BC3240);
            v437 = v428 - 8 * (v438 & 0x3FFFFFF0);
            v445 = vaddq_s32(v442, xmmword_273BC3250);
            v446 = vaddq_s32(v442, xmmword_273BC3220);
            v447 = v438 & 0x3FFFFFF0;
            v448 = v421;
            v449 = 0uLL;
            v450 = 0uLL;
            v451 = 0uLL;
            v452 = 0uLL;
            v453 = 0uLL;
            v454 = 0uLL;
            v455 = 0uLL;
            v456 = 0uLL;
            v457 = 0uLL;
            do
            {
              v458 = *v448++;
              v459 = vmovl_high_u8(v458);
              v460 = vmovl_high_u16(v459);
              v461.i64[0] = v460.u32[0];
              v461.i64[1] = v460.u32[1];
              v462 = v461;
              v463 = vmovl_u16(*v459.i8);
              v461.i64[0] = v463.u32[2];
              v461.i64[1] = v463.u32[3];
              v464 = v461;
              v465 = vmovl_u8(*v458.i8);
              v466 = vmovl_high_u16(v465);
              v461.i64[0] = v466.u32[2];
              v461.i64[1] = v466.u32[3];
              v467 = v461;
              v461.i64[0] = v460.u32[2];
              v461.i64[1] = v460.u32[3];
              v468 = v461;
              v461.i64[0] = v463.u32[0];
              v461.i64[1] = v463.u32[1];
              v469 = v461;
              v461.i64[0] = v466.u32[0];
              v461.i64[1] = v466.u32[1];
              v470 = v461;
              v471 = vmovl_u16(*v465.i8);
              v461.i64[0] = v471.u32[2];
              v461.i64[1] = v471.u32[3];
              v472 = v461;
              v461.i64[0] = v471.u32[0];
              v461.i64[1] = v471.u32[1];
              v473 = v461;
              v461.i64[0] = v446.u32[0];
              v461.i64[1] = v446.u32[1];
              v474 = vshlq_u64(v473, v461);
              v461.i64[0] = v446.u32[2];
              v461.i64[1] = v446.u32[3];
              v475 = vshlq_u64(v472, v461);
              v461.i64[0] = v445.u32[0];
              v461.i64[1] = v445.u32[1];
              v476 = vshlq_u64(v470, v461);
              v461.i64[0] = v444.u32[0];
              v461.i64[1] = v444.u32[1];
              v477 = vshlq_u64(v469, v461);
              v461.i64[0] = v443.u32[2];
              v461.i64[1] = v443.u32[3];
              v478 = vshlq_u64(v468, v461);
              v461.i64[0] = v445.u32[2];
              v461.i64[1] = v445.u32[3];
              v479 = vshlq_u64(v467, v461);
              v461.i64[0] = v444.u32[2];
              v461.i64[1] = v444.u32[3];
              v480 = vshlq_u64(v464, v461);
              v461.i64[0] = v443.u32[0];
              v461.i64[1] = v443.u32[1];
              v453 = vorrq_s8(vshlq_u64(v462, v461), v453);
              v452 = vorrq_s8(v480, v452);
              v450 = vorrq_s8(v479, v450);
              v454 = vorrq_s8(v478, v454);
              v451 = vorrq_s8(v477, v451);
              v449 = vorrq_s8(v476, v449);
              v440 = vorrq_s8(v475, v440);
              v439 = vorrq_s8(v474, v439);
              v441 = vaddq_s32(v441, v5);
              v455 = vaddq_s32(v455, v5);
              v456 = vaddq_s32(v456, v5);
              v457 = vaddq_s32(v457, v5);
              v446 = vaddq_s32(v446, v6);
              v445 = vaddq_s32(v445, v6);
              v444 = vaddq_s32(v444, v6);
              v443 = vaddq_s32(v443, v6);
              v447 -= 16;
            }

            while (v447);
            v481 = vorrq_s8(vorrq_s8(vorrq_s8(v439, v451), vorrq_s8(v449, v453)), vorrq_s8(vorrq_s8(v440, v452), vorrq_s8(v450, v454)));
            v416 = vorr_s8(*v481.i8, *&vextq_s8(v481, v481, 8uLL));
            v417 = vaddvq_s32(vaddq_s32(vaddq_s32(v441, v456), vaddq_s32(v455, v457)));
            if ((v438 & 0x3FFFFFF0) != v438)
            {
LABEL_257:
              do
              {
                v417 += 8;
                v482 = *v430;
                v430 = (v430 + 1);
                v416 |= v482 << v437;
                v437 -= 8;
              }

              while (v437 >= v433);
            }
          }
        }

        else
        {
          v429 = (v428 & 0x7FFFFFF8) + 8;
          v417 += v429;
          v430 = (v421 + (v429 >> 3));
          v416 = (bswap64(*v421) >> (56 - (v428 & 0xF8u)) << (v428 & 7)) | *a3;
        }

        *(a3 + 24) += v430 - v421;
        v418 = ((v415 << 7) + 128) >> 8;
        v419 = v416 - (v418 << 56);
        if (v416 >= v418 << 56)
        {
          goto LABEL_216;
        }

LABEL_189:
        v420 = 0;
      }

      else
      {
        v418 = ((v415 << 7) + 128) >> 8;
        v419 = v416 - (v418 << 56);
        if (v416 < v418 << 56)
        {
          goto LABEL_189;
        }

LABEL_216:
        LODWORD(v418) = *(a3 + 8) - v418;
        v420 = 4;
        v416 = v419;
      }

      v483 = vpx_norm[v418];
      v484 = v418 << v483;
      v9 = v416 << v483;
      *a3 = v9;
      v485 = v417 - v483;
      *(a3 + 8) = v418 << v483;
      *(a3 + 12) = v417 - v483;
      if ((v417 - v483) >= 0)
      {
        v487 = v557;
        v486 = v558;
        v7 = ((v484 << 7) + 128) >> 8;
        v488 = v9 - (v7 << 56);
        if (v9 < v7 << 56)
        {
LABEL_240:
          v8 = 0;
          goto LABEL_3;
        }

LABEL_2:
        LODWORD(v7) = *(a3 + 8) - v7;
        v8 = 2;
        v9 = v488;
LABEL_3:
        v10 = vpx_norm[v7];
        *a3 = v9 << v10;
        *(a3 + 8) = v7 << v10;
        *(a3 + 12) = v485 - v10;
        *(v553 + v4) = v486 | v487 | result | v283 | v351 | v420 | v8;
        goto LABEL_4;
      }

      v489 = *(a3 + 24);
      v490 = *(a3 + 16) - v489;
      v491 = *(a3 + 32);
      if (v491)
      {
        v552 = v351;
        if (v490 >= 9)
        {
          v492 = 9;
        }

        else
        {
          v492 = *(a3 + 16) - v489;
        }

        v556 = result;
        v489 = v560;
        v550 = v4;
        v493 = v283;
        v491(*(a3 + 40), *(a3 + 24), v560, v492);
        v351 = v552;
        v283 = v493;
        v4 = v550;
        result = v556;
        v6.i64[0] = 0x7F0000007FLL;
        v6.i64[1] = 0x7F0000007FLL;
        v5.i64[0] = 0x800000008;
        v5.i64[1] = 0x800000008;
      }

      v494 = 8 * v490;
      v495 = 48 - v485;
      if (8 * v490 >= 0x41)
      {
        v496 = (v495 & 0x7FFFFFF8) + 8;
        v485 += v496;
        v497 = (v489 + (v496 >> 3));
        v9 = (bswap64(*v489) >> (56 - (v495 & 0xF8u)) << (v495 & 7)) | *a3;
        goto LABEL_238;
      }

      v498 = 56 - v494 - v485;
      if (v498 >= 0)
      {
        v485 += 0x40000000;
      }

      if (v494)
      {
        v499 = 1;
      }

      else
      {
        v499 = v498 <= -1;
      }

      v500 = v498 & ~(v498 >> 31);
      if (!v499 || v495 < v500)
      {
        v497 = v489;
LABEL_238:
        v487 = v557;
        v486 = v558;
      }

      else
      {
        v502 = v483 - v417 + 40;
        if (v502 >= v500 - 1)
        {
          v502 = v500 - 1;
        }

        v503 = v483 - v417 - v502 + 47;
        v497 = v489;
        v504 = v495;
        v487 = v557;
        v486 = v558;
        if (v503 < 0x78)
        {
          goto LABEL_258;
        }

        v505 = (v503 >> 3) + 1;
        v506 = v9;
        v507 = 0uLL;
        v508 = v485;
        v509 = vdupq_n_s32(v495);
        v510 = vaddq_s32(v509, xmmword_273BC3230);
        v497 = (v489 + (v505 & 0x3FFFFFF0));
        v511 = vaddq_s32(v509, xmmword_273BC3240);
        v504 = v495 - 8 * (v505 & 0x3FFFFFF0);
        v512 = vaddq_s32(v509, xmmword_273BC3250);
        v513 = vaddq_s32(v509, xmmword_273BC3220);
        v514 = v505 & 0x3FFFFFF0;
        v515 = v489;
        v516 = 0uLL;
        v517 = 0uLL;
        v518 = 0uLL;
        v519 = 0uLL;
        v520 = 0uLL;
        v521 = 0uLL;
        v522 = 0uLL;
        v523 = 0uLL;
        v524 = 0uLL;
        do
        {
          v525 = *v515++;
          v526 = vmovl_high_u8(v525);
          v527 = vmovl_high_u16(v526);
          v528.i64[0] = v527.u32[0];
          v528.i64[1] = v527.u32[1];
          v529 = v528;
          v530 = vmovl_u16(*v526.i8);
          v528.i64[0] = v530.u32[2];
          v528.i64[1] = v530.u32[3];
          v531 = v528;
          v532 = vmovl_u8(*v525.i8);
          v533 = vmovl_high_u16(v532);
          v528.i64[0] = v533.u32[2];
          v528.i64[1] = v533.u32[3];
          v534 = v528;
          v528.i64[0] = v527.u32[2];
          v528.i64[1] = v527.u32[3];
          v535 = v528;
          v528.i64[0] = v530.u32[0];
          v528.i64[1] = v530.u32[1];
          v536 = v528;
          v528.i64[0] = v533.u32[0];
          v528.i64[1] = v533.u32[1];
          v537 = v528;
          v538 = vmovl_u16(*v532.i8);
          v528.i64[0] = v538.u32[2];
          v528.i64[1] = v538.u32[3];
          v539 = v528;
          v528.i64[0] = v538.u32[0];
          v528.i64[1] = v538.u32[1];
          v540 = v528;
          v528.i64[0] = v513.u32[0];
          v528.i64[1] = v513.u32[1];
          v541 = vshlq_u64(v540, v528);
          v528.i64[0] = v513.u32[2];
          v528.i64[1] = v513.u32[3];
          v542 = vshlq_u64(v539, v528);
          v528.i64[0] = v512.u32[0];
          v528.i64[1] = v512.u32[1];
          v543 = vshlq_u64(v537, v528);
          v528.i64[0] = v511.u32[0];
          v528.i64[1] = v511.u32[1];
          v544 = vshlq_u64(v536, v528);
          v528.i64[0] = v510.u32[2];
          v528.i64[1] = v510.u32[3];
          v545 = vshlq_u64(v535, v528);
          v528.i64[0] = v512.u32[2];
          v528.i64[1] = v512.u32[3];
          v546 = vshlq_u64(v534, v528);
          v528.i64[0] = v511.u32[2];
          v528.i64[1] = v511.u32[3];
          v547 = vshlq_u64(v531, v528);
          v528.i64[0] = v510.u32[0];
          v528.i64[1] = v510.u32[1];
          v520 = vorrq_s8(vshlq_u64(v529, v528), v520);
          v519 = vorrq_s8(v547, v519);
          v517 = vorrq_s8(v546, v517);
          v521 = vorrq_s8(v545, v521);
          v518 = vorrq_s8(v544, v518);
          v516 = vorrq_s8(v543, v516);
          v507 = vorrq_s8(v542, v507);
          v506 = vorrq_s8(v541, v506);
          v508 = vaddq_s32(v508, v5);
          v522 = vaddq_s32(v522, v5);
          v523 = vaddq_s32(v523, v5);
          v524 = vaddq_s32(v524, v5);
          v513 = vaddq_s32(v513, v6);
          v512 = vaddq_s32(v512, v6);
          v511 = vaddq_s32(v511, v6);
          v510 = vaddq_s32(v510, v6);
          v514 -= 16;
        }

        while (v514);
        v548 = vorrq_s8(vorrq_s8(vorrq_s8(v506, v518), vorrq_s8(v516, v520)), vorrq_s8(vorrq_s8(v507, v519), vorrq_s8(v517, v521)));
        v9 = vorr_s8(*v548.i8, *&vextq_s8(v548, v548, 8uLL));
        v485 = vaddvq_s32(vaddq_s32(vaddq_s32(v508, v523), vaddq_s32(v522, v524)));
        if ((v505 & 0x3FFFFFF0) != v505)
        {
LABEL_258:
          do
          {
            v485 += 8;
            v549 = *v497;
            v497 = (v497 + 1);
            v9 |= v549 << v504;
            v504 -= 8;
          }

          while (v504 >= v500);
        }
      }

      *(a3 + 24) += v497 - v489;
      v7 = ((v484 << 7) + 128) >> 8;
      v488 = v9 - (v7 << 56);
      if (v9 < v7 << 56)
      {
        goto LABEL_240;
      }

      goto LABEL_2;
    }

LABEL_4:
    ++v4;
  }

  while (v4 != v559);
  return result;
}

void init_mt(uint64_t a1)
{
  v2 = (a1 + 18900);
  v17 = *(a1 + 1976);
  if (*(a1 + 20568))
  {
    goto LABEL_2;
  }

  v9 = *(a1 + 20680);
  v10 = 56 * v9 + 23;
  if (v10 <= 0x10000000000 && (v11 = malloc_type_malloc(v10, 0xD93B561uLL)) != 0)
  {
    v12 = (a1 + 19016);
    v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v13 - 8) = v11;
    *(a1 + 19016) = v13;
    if (v13)
    {
      if (v9 < 1)
      {
        goto LABEL_2;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v12 = (a1 + 19016);
    *(a1 + 19016) = 0;
  }

  vpx_internal_error(a1 + 656, 2, "Failed to allocate pbi->tile_workers");
  if (v9 < 1)
  {
    goto LABEL_2;
  }

LABEL_23:
  for (i = 0; i != v9; ++i)
  {
    v15 = *v12 + 56 * i;
    ++v2[417];
    (g_worker_interface[0])(v15);
    *(v15 + 16) = "vpx tile worker";
    if (i < (v9 - 1) && !off_28100B628(v15))
    {
      v16 = v2[417];
      do
      {
        (off_28100B648[0])((*v12 + 56 * v16), (*v12 + 56 * v16 - 56));
        v16 = v2[417] - 1;
        v2[417] = v16;
      }

      while (v16);
      if (*v12)
      {
        free(*(*v12 - 8));
      }

      *v12 = 0;
      vpx_internal_error(a1 + 656, 1, "Tile decoder thread creation failed");
    }
  }

LABEL_2:
  if ((v2[450] || v2[449]) && *(a1 + 5384) && !*v2)
  {
    v3 = v2[417];
    v4 = (*(a1 + 1968) + 7) >> 3;
    if (!v2[425] || v4 != v2[426] || v2[429] < v3)
    {
      vp9_loop_filter_dealloc((a1 + 20576));
      vp9_loop_filter_alloc(a1 + 20576, a1 + 656, v4, *(a1 + 948), v3);
    }

    v5 = 4 * v4;
    memset(*(a1 + 20592), 255, v5);
    v2[439] = 0;
    bzero(*(a1 + 20648), v5);
    v2[8] = 0;
  }

  v6 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  bzero(*(a1 + 18920), 6 * v6);
  bzero(*(a1 + 18912), v6);
  if (*(a1 + 5384))
  {
    v7 = *(a1 + 5416);
    v8 = 160 * *(a1 + 5424) * ((*(a1 + 1968) + 7) >> 3);

    bzero(v7, v8);
  }
}

BOOL row_decode_worker_hook(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 + 0x4000;
  v6 = *(*a1 + 20704);
  v7 = *(*a1 + 1976);
  v8 = *(*a1 + 1968);
  v136 = *(*a1 + 18888);
  v9 = a1[2];
  v140 = 0;
  v139 = 0;
  pthread_mutex_lock((v6 + 128));
  if (*(v6 + 112) < (*(v6 + 104) + 12))
  {
    goto LABEL_2;
  }

  v133 = v4 + 656;
  v134 = v5;
  v11 = v6;
  v12 = v7 + 7;
  v13 = v4;
  v131 = v9;
  v132 = v3;
  v130 = v4 + 19032;
  v128 = (v4 + 2004);
  v129 = (v4 + 2036);
  v126 = v12 >> 3;
  v127 = ((v8 + 7) >> 3) - 1;
  v135 = v4;
  v137 = v3;
  v138 = a2;
  v125 = v6;
  if (*(v6 + 96) < (*(v6 + 104) + 12))
  {
    goto LABEL_11;
  }

  do
  {
LABEL_13:
    v15 = *(v11 + 104);
    v17 = *v15;
    v16 = v15[1];
    LODWORD(v18) = *v15;
    v19 = v15[2];
    *(v11 + 104) = v15 + 3;
    pthread_mutex_unlock((v6 + 128));
    if (!v19)
    {
      v38 = *(v13 + 19024) + 69568 * v16;
      if (setjmp((v38 + 69372)))
      {
        *(v38 + 69368) = 0;
        v140 = 1;
        v39 = *(v13 + 20704);
        v40 = 1 << v134[626];
        pthread_mutex_lock((v39 + 256));
        v41 = *(v39 + 248) + 1;
        *(v39 + 248) = v41;
        pthread_mutex_unlock((v39 + 256));
        if (v40 == v41)
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      }

      v124 = v17;
      v114 = (v38 + 69280);
      memcpy((v38 + 13328), v13, 0x290uLL);
      v70 = 0;
      if (!v134[625])
      {
        v70 = v38 + 80;
      }

      *(v38 + 13744) = v70;
      *(v38 + 69368) = 1;
      v111 = *(v13 + 20704);
      v110 = *(v13 + 1976);
      v71 = v38 + 13984;
      bzero((v38 + 13984), 0x1000uLL);
      v76 = *(v13 + 1968);
      v77.i32[0] = 0;
      v77.i32[1] = 8 * ((v76 + 7) >> 3 >> v134[627]);
      v78 = vdup_n_s32(v76);
      v79 = COERCE_DOUBLE(vmin_s32(v77, v78));
      *(v38 + 13752) = v79;
      v80 = *(v13 + 1976);
      v81 = v134[626];
      v82 = (v80 + 7) >> 3;
      v83 = 8 * ((v82 * v16) >> v81);
      if (v83 >= v80)
      {
        v83 = *(v13 + 1976);
      }

      *(v38 + 13760) = v83;
      v84 = 8 * ((v82 + v82 * v16) >> v81);
      if (v84 < v80)
      {
        v80 = v84;
      }

      *(v38 + 13764) = v80;
      v18 = v18;
      if (!v18)
      {
        v85 = v18;
        v86 = v130 + 24 * v16;
        v88 = *v86;
        v87 = *(v86 + 8);
        v89 = *(v13 + 20664);
        v90 = *(v13 + 20672);
        if ((v87 - 1) >= *v138 - *v86)
        {
          vpx_internal_error(v114, 7, "Truncated packet or corrupt tile length");
        }

        v91 = vpx_reader_init(v38 + 16, v88, v87, v89, v90, v79, *&v78, v72, v73, v74, v75);
        v13 = v135;
        v18 = v85;
        if (v91)
        {
          vpx_internal_error(v114, 2, "Failed to allocate BOOL decoder %d", 1);
        }
      }

      *(v38 + 13328) = v71;
      *(v38 + 13864) = *(v13 + 18920);
      v92 = *v128;
      *(v38 + 13424) = v128[1];
      *(v38 + 13408) = v92;
      v93 = *(v13 + 1976);
      v94 = *(v13 + 18920);
      *(v38 + 13832) = *(v13 + 5560);
      *(v38 + 13464) = v71;
      *(v38 + 13872) = v94 + 2 * ((v93 + 7) & 0x7FFFFFFFFFFFFFF8);
      v95 = v129[1];
      *(v38 + 13544) = *v129;
      *(v38 + 13560) = v95;
      v96 = *(v13 + 1976);
      v97 = *(v13 + 18920);
      *(v38 + 13832) = *(v13 + 5560);
      *(v38 + 13600) = v71;
      *(v38 + 13880) = v97 + 4 * ((v96 + 7) & 0x3FFFFFFFFFFFFFF8);
      v98 = v129[1];
      *(v38 + 13680) = *v129;
      *(v38 + 13696) = v98;
      v99 = *(v13 + 5560);
      LODWORD(v97) = *(v13 + 1932);
      v100 = *(v13 + 1980);
      v101 = *(v13 + 18912);
      *(v38 + 13832) = v99;
      *(v38 + 13936) = v101;
      *(v38 + 13768) = v100;
      if (v97)
      {
        v102 = (v99 + 126);
        if (*(v13 + 1948))
        {
          v102 = &vp9_kf_partition_probs;
        }
      }

      else
      {
        v102 = &vp9_kf_partition_probs;
      }

      *(v38 + 13808) = v102;
      *(v38 + 13968) = v114;
      *(v38 + 13888) = 0u;
      *(v38 + 13904) = 0u;
      *(v38 + 13920) = 0u;
      *(v38 + 13944) = 0;
      for (i = *(v38 + 13760); i < *(v38 + 13764); i = (i + 8))
      {
        v104 = ((v110 + 7) >> 3) * (v124 >> 3) + (i >> 3);
        v105 = 4 * (v104 << 8);
        *(v38 + 13456) = v111[1] + v105;
        v106 = 4 * (v104 << 12);
        *(v38 + 13328) = v111[5] + v106;
        *(v38 + 13592) = v111[2] + v105;
        *(v38 + 13464) = v111[6] + v106;
        v107 = v111[4];
        *(v38 + 13728) = v111[3] + v105;
        *(v38 + 13600) = v111[7] + v106;
        *(v38 + 13976) = v107 + 340 * v104;
        process_partition(v38, v13, v18, i, 0xCu, 4, 1, parse_block);
      }

      v140 |= *(v38 + 13960);
      if (v140)
      {
        vpx_internal_error(v114, 7, "Failed to decode tile data");
      }

      v6 = v125;
      pthread_mutex_lock((v125 + 128));
      if (*(v11 + 112) >= (*(v11 + 96) + 12))
      {
        v108 = *(v11 + 96);
        *v108 = v18;
        v108[1] = v16;
        v108[2] = 1;
        *(v11 + 96) += 12;
        pthread_cond_signal((v125 + 192));
      }

      pthread_mutex_unlock((v125 + 128));
      if (v124 + 8 >= *(v13 + 1968))
      {
        goto LABEL_9;
      }

      pthread_mutex_lock((v125 + 128));
      if (*(v11 + 112) >= (*(v11 + 96) + 12))
      {
        v109 = *(v11 + 96);
        *v109 = v124 + 8;
        v109[1] = v16;
        v109[2] = 0;
        *(v11 + 96) += 12;
        pthread_cond_signal((v125 + 192));
      }

      v14 = (v125 + 128);
LABEL_8:
      pthread_mutex_unlock(v14);
      goto LABEL_9;
    }

    if (v19 != 1)
    {
      if (v19 == 2)
      {
        *(v132 + 424) = v18;
        *(v132 + 428) = v17 + 8;
        if (*(v13 + 5384))
        {
          if (!v134[629] && v17 < *(v13 + 1968))
          {
            thread_loop_filter_rows(*v132, *(v132 + 8), v137 + 16, v18, v17 + 8, *(v132 + 432), v131);
          }
        }
      }

      goto LABEL_9;
    }

    if (!v139)
    {
      v20 = malloc_type_malloc(0x10FE7uLL, 0xD93B561uLL);
      if (v20)
      {
        *(((v20 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v20;
        v139 = (v20 + 39) & 0xFFFFFFFFFFFFFFE0;
        if (v139)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v139 = 0;
      }

      vpx_internal_error(v133, 2, "Failed to allocate tile_data_recon");
    }

LABEL_24:
    memcpy((v139 + 13328), v13, 0x290uLL);
    v21 = *(v13 + 1968);
    v22.i32[0] = 0;
    v22.i32[1] = 8 * ((v21 + 7) >> 3 >> v134[627]);
    *(v139 + 13752) = vmin_s32(v22, vdup_n_s32(v21));
    v23 = *(v13 + 1976);
    v24 = v134[626];
    v25 = (v23 + 7) >> 3;
    v26 = 8 * ((v25 * v16) >> v24);
    if (v26 >= v23)
    {
      v26 = *(v13 + 1976);
    }

    *(v139 + 13760) = v26;
    v27 = 8 * ((v25 + v25 * v16) >> v24);
    if (v27 < v23)
    {
      v23 = v27;
    }

    *(v139 + 13764) = v23;
    *(v139 + 13328) = v139 + 13984;
    *(v139 + 13864) = *(v13 + 18920);
    v28 = v128[1];
    *(v139 + 13408) = *v128;
    *(v139 + 13424) = v28;
    v29 = *(v13 + 1976);
    v30 = *(v13 + 18920);
    *(v139 + 13832) = *(v13 + 5560);
    *(v139 + 13464) = v139 + 13984;
    *(v139 + 13872) = v30 + 2 * ((v29 + 7) & 0x7FFFFFFFFFFFFFF8);
    v31 = v129[1];
    *(v139 + 13544) = *v129;
    *(v139 + 13560) = v31;
    v32 = *(v13 + 1976);
    v33 = *(v13 + 18920);
    *(v139 + 13832) = *(v13 + 5560);
    *(v139 + 13600) = v139 + 13984;
    *(v139 + 13880) = v33 + 4 * ((v32 + 7) & 0x3FFFFFFFFFFFFFF8);
    v34 = v129[1];
    *(v139 + 13680) = *v129;
    *(v139 + 13696) = v34;
    v35 = *(v13 + 5560);
    LODWORD(v32) = *(v13 + 1932);
    LODWORD(v33) = *(v13 + 1980);
    v36 = *(v13 + 18912);
    *(v139 + 13832) = v35;
    *(v139 + 13936) = v36;
    *(v139 + 13768) = v33;
    *(v139 + 13968) = v133;
    v122 = v18;
    if (v32)
    {
      v37 = (v35 + 126);
      if (*(v13 + 1948))
      {
        v37 = &vp9_kf_partition_probs;
      }
    }

    else
    {
      v37 = &vp9_kf_partition_probs;
    }

    v121 = v17 >> 3;
    *(v139 + 13808) = v37;
    v42 = *(v139 + 13760);
    v43 = *(v139 + 13764);
    if (!setjmp((v139 + 69372)))
    {
      *(v139 + 69368) = 1;
      *(v139 + 13968) = v139 + 69280;
      v120 = *(v13 + 20704);
      v49 = v134[626];
      v50 = *(v13 + 1976);
      v51 = *(v139 + 13760);
      v52 = *(v139 + 13764);
      *(v139 + 13888) = 0u;
      *(v139 + 13904) = 0u;
      *(v139 + 13920) = 0u;
      *(v139 + 13944) = 0;
      v119 = v52;
      if (v51 < v52)
      {
        v118 = v17;
        v53 = (v50 + 7) >> 3;
        v116 = v53 * v121;
        v117 = 1 << v49;
        v115 = v53 * (v121 - 1);
        v54 = ((v121 - 1) << v49) + v16;
        v113 = (v121 << v49) + v16;
        v112 = (v17 - 8);
        v123 = v17;
        do
        {
          v55 = v51 >> 3;
          if (v17 >= 8)
          {
            v56 = v55 + v115;
            v57 = *(v120 + 64);
            v58 = (*(v120 + 320) + (v54 << 6));
            pthread_mutex_lock(v58);
            while (!*(v57 + v56))
            {
              pthread_cond_wait((*(v120 + 328) + 48 * v54), v58);
            }

            pthread_mutex_unlock(v58);
            v13 = v135;
          }

          v17 = v55 + v116;
          v59 = 4 * (v17 << 8);
          *(v139 + 13456) = *(v120 + 8) + v59;
          v60 = 4 * (v17 << 12);
          *(v139 + 13328) = *(v120 + 40) + v60;
          *(v139 + 13592) = *(v120 + 16) + v59;
          *(v139 + 13464) = *(v120 + 48) + v60;
          v61 = *(v120 + 32);
          *(v139 + 13728) = *(v120 + 24) + v59;
          *(v139 + 13600) = *(v120 + 56) + v60;
          *(v139 + 13976) = v61 + 340 * v17;
          process_partition(v139, v13, v122, v51, 0xCu, 4, 2, recon_block);
          if (*(v13 + 5384))
          {
            v62 = v51 + 8;
            v51 = (v51 + 8);
            if (!v134[629] && v62 >= v119)
            {
              pthread_mutex_lock(*(v131 + 48));
              v63 = *(v131 + 80);
              pthread_mutex_unlock(*(v131 + 48));
              if (!v63)
              {
                pthread_mutex_lock((*(v131 + 56) + (v121 << 6)));
                v64 = *(v131 + 72);
                v65 = *(v64 + 4 * v121) + 1;
                *(v64 + 4 * v121) = v65;
                pthread_mutex_unlock((*(v131 + 56) + (v121 << 6)));
                if (v65 == v117)
                {
                  if (v121 >= 1)
                  {
                    pthread_mutex_lock((v120 + 128));
                    if (*(v120 + 112) >= (*(v120 + 96) + 12))
                    {
                      v66 = *(v120 + 96);
                      *v66 = v112;
                      *(v66 + 8) = 2;
                      *(v120 + 96) += 12;
                      pthread_cond_signal((v120 + 192));
                    }

                    pthread_mutex_unlock((v120 + 128));
                  }

                  if (v127 == v121)
                  {
                    pthread_mutex_lock((v120 + 128));
                    if (*(v120 + 112) >= (*(v120 + 96) + 12))
                    {
                      v67 = *(v120 + 96);
                      *v67 = v118;
                      *(v67 + 8) = 2;
                      *(v120 + 96) += 12;
                      pthread_cond_signal((v120 + 192));
                    }

                    pthread_mutex_unlock((v120 + 128));
                  }
                }
              }
            }
          }

          else
          {
            v51 = (v51 + 8);
          }

          pthread_mutex_lock((*(v120 + 320) + (v113 << 6)));
          *(*(v120 + 64) + v17) = 1;
          pthread_cond_signal((*(v120 + 328) + 48 * v113));
          pthread_mutex_unlock((*(v120 + 320) + (v113 << 6)));
          LODWORD(v17) = v123;
        }

        while (v51 < v119);
      }

      v6 = v125;
      if (v140)
      {
        vpx_internal_error(v139 + 69280, 7, "Failed to decode tile data");
      }

      if (v127 != v121)
      {
        goto LABEL_9;
      }

LABEL_66:
      v39 = *(v13 + 20704);
      v68 = 1 << v134[626];
      pthread_mutex_lock((v39 + 256));
      v69 = *(v39 + 248) + 1;
      *(v39 + 248) = v69;
      pthread_mutex_unlock((v39 + 256));
      if (v68 != v69)
      {
        goto LABEL_9;
      }

LABEL_7:
      pthread_mutex_lock((v39 + 128));
      *(v39 + 120) = 1;
      pthread_cond_broadcast((v39 + 192));
      v14 = (v39 + 128);
      goto LABEL_8;
    }

    *(v139 + 69368) = 0;
    v140 = 1;
    if (v42 < v43)
    {
      v44 = v42;
      v45 = v16 + (v121 << v136);
      v46 = v16 + (v121 << v136);
      do
      {
        v47 = v44;
        v48 = v121 * v126 + (v44 >> 3);
        pthread_mutex_lock((*(v11 + 320) + (v45 << 6)));
        *(*(v11 + 64) + v48) = 1;
        pthread_cond_signal((*(v11 + 328) + 48 * v46));
        pthread_mutex_unlock((*(v11 + 320) + (v45 << 6)));
        v44 = v47 + 8;
      }

      while (v47 + 8 < v43);
    }

    v13 = v135;
    v6 = v125;
    if (v127 == v121)
    {
      goto LABEL_66;
    }

LABEL_9:
    pthread_mutex_lock((v6 + 128));
    if (*(v11 + 112) < (*(v11 + 104) + 12))
    {
      goto LABEL_2;
    }
  }

  while (*(v11 + 96) >= (*(v11 + 104) + 12));
LABEL_11:
  while (*(v11 + 120) != 1)
  {
    pthread_cond_wait((v6 + 192), (v6 + 128));
    if (*(v11 + 96) >= (*(v11 + 104) + 12))
    {
      goto LABEL_13;
    }
  }

LABEL_2:
  pthread_mutex_unlock((v6 + 128));
  if (v139)
  {
    free(*(v139 - 8));
  }

  return v140 == 0;
}

uint64_t get_tile_buffers(uint64_t result, unsigned int *a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v6 = (a5 - 1);
  if (a5 >= 1)
  {
    v19 = (a4 - 1);
    if (a4 >= 1)
    {
      v8 = result;
      v9 = 0;
      v17 = a5;
      v10 = a6 + 8;
      v11 = a4;
      do
      {
        v12 = 0;
        v18 = v10;
        do
        {
          *(v10 + 8) = v12;
          v13 = *(v8 + 20664);
          v14 = a3 - a2;
          v15 = *(v8 + 20672);
          if (v9 != v6 || v19 != v12)
          {
            if (v14 <= 3)
            {
              result = vpx_internal_error(v8 + 656, 7, "Truncated packet or corrupt tile length");
            }

            if (v13)
            {
              result = v13(v15, a2, &v21, 4);
              v14 = bswap32(v21);
              if (a3 - ++a2 >= v14)
              {
                goto LABEL_6;
              }
            }

            else
            {
              v16 = *a2++;
              v14 = bswap32(v16);
              if (a3 - a2 >= v14)
              {
                goto LABEL_6;
              }
            }

            result = vpx_internal_error(v8 + 656, 7, "Truncated packet or corrupt tile size");
          }

LABEL_6:
          *(v10 - 8) = a2;
          *v10 = v14;
          a2 = (a2 + v14);
          ++v12;
          v10 += 24;
        }

        while (v11 != v12);
        ++v9;
        v10 = v18 + 1536;
      }

      while (v9 != v17);
    }
  }

  return result;
}

void *process_partition(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, char a7, uint64_t (*a8)(void))
{
  v8 = a5;
  v10 = (a6 - 1);
  __len = (1 << (a6 - 1));
  v11 = *(a2 + 1968);
  v12 = (__len >> 1) + a4;
  v13 = *(a2 + 1976);
  if (v11 <= a3 || v13 <= a4)
  {
    return result;
  }

  v17 = result;
  v43 = (__len >> 1) + a3;
  if (a7)
  {
    v20 = a2;
    v21 = result;
    v22 = a8;
    result = read_partition(result, a3, a4, ((__len >> 1) + a3) < v11, v12 < v13, a6 - 1);
    a8 = v22;
    v17 = v21;
    v8 = a5;
    a2 = v20;
    v19 = result;
    v18 = v21[1747];
    *v18 = result;
  }

  else
  {
    v18 = result[1747];
    v19 = *v18;
  }

  v17[1747] = v18 + 1;
  v23 = &subsize_lookup[13 * v19];
  v24 = v23[v8];
  if (!v10)
  {
    *(v17 + 13736) = 1u >> ((v19 & 2) != 0);
    *(v17 + 13737) = 1u >> (v19 & 1);
    result = (a8)(v17, a2, a3, a4, v24, 1, 1);
    goto LABEL_22;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      if (v19 == 3)
      {
        process_partition(v17);
        process_partition(v17);
        process_partition(v17);
        result = process_partition(v17);
      }

      goto LABEL_22;
    }

    v44 = v23[v8];
    v37 = a2;
    v38 = a8;
    result = a8(v17);
    v31 = v37;
    v24 = v44;
    if (v12 < v13)
    {
      v29 = v38;
      v30 = v17;
      v32 = a3;
      v33 = (__len >> 1) + a4;
      v34 = v44;
      v35 = v10;
      v36 = a6;
      goto LABEL_21;
    }
  }

  else
  {
    if (!v19)
    {
      result = (a8)(v17, a2, a3, a4, v23[v8], a6, a6);
      goto LABEL_22;
    }

    if (v19 == 1)
    {
      v25 = v17;
      v26 = a2;
      v27 = v17;
      v28 = a8;
      result = a8(v25);
      v29 = v28;
      v17 = v27;
      if (v43 < v11)
      {
        v30 = v27;
        v31 = v26;
        v32 = v43;
        v33 = a4;
        v34 = v24;
        v35 = a6;
        v36 = v10;
LABEL_21:
        result = v29(v30, v31, v32, v33, v34, v35, v36);
      }
    }
  }

LABEL_22:
  if (a7)
  {
    v39 = a5 == 3;
    if (v19 != 3)
    {
      v39 = 1;
    }

    if (a5 >= 3 && v39)
    {
      v40 = a3 & 7;
      v41 = &partition_context_lookup[2 * v24];
      memset((v17[1742] + a4), *v41, __len);
      v42 = v41[1];

      return memset(v17 + v40 + 13944, v42, __len);
    }
  }

  return result;
}

void *recon_block(int16x8_t *a1, uint64_t a2, int a3, int a4, unsigned int a5, char a6, char a7)
{
  v11 = *(a2 + 1980);
  v12 = a1[833].i32[2];
  v13 = a1 + 768;
  v14 = 2 << (a6 - 1);
  a1[840].i16[0] = v14 >> v12;
  v15 = a1[833].i32[3];
  v16 = 2 << (a7 - 1);
  a1[840].i16[1] = v16 >> v15;
  a1[840].i8[4] = a6 - v12;
  a1[840].i8[5] = a7 - v15;
  v17 = a1[842].i32[0];
  v18 = *(a2 + 2136);
  a1[848].i16[4] = v14 >> v17;
  v19 = 1 << (a6 - 1);
  v20 = 1 << (a7 - 1);
  v21 = a1[842].i32[1];
  a1[848].i16[5] = v16 >> v21;
  a1[848].i8[12] = a6 - v17;
  v22 = (v18 + 8 * (a4 + v11 * a3));
  v23 = a1[850].i32[2];
  v24 = v14 >> v23;
  v13[80].i8[13] = a7 - v21;
  v25 = a1[850].i32[3];
  v13[89].i16[0] = v24;
  v13[89].i16[1] = v16 >> v25;
  v26 = a1[866].i64[1] + ((2 * a4) >> v12);
  a1[861].i64[0] = v22;
  v13[89].i8[4] = a6 - v23;
  v27 = 2 * (a3 & 7);
  v13[89].i8[5] = a7 - v25;
  a1[837].i64[0] = v26;
  v28 = a1[867].i64[0] + ((2 * a4) >> v17);
  a1[837].i64[1] = a1[868].i64 + (v27 >> v15);
  a1[845].i64[1] = v28;
  a1[846].i64[0] = a1[869].i64 + (v27 >> v21);
  a1[854].i64[0] = a1[867].i64[1] + ((2 * a4) >> v23);
  a1[854].i64[1] = a1[870].i64 + (v27 >> v25);
  v29 = *(a2 + 1976);
  LODWORD(v13) = (*(a2 + 1968) - (v20 + a3)) << 6;
  a1[864].i32[0] = -64 * a3;
  a1[864].i32[1] = v13;
  a1[863].i32[2] = -64 * a4;
  a1[863].i32[3] = (v29 - (v19 + a4)) << 6;
  if (!a3)
  {
    a1[862].i64[0] = 0;
    if (a1[860].i32[0] < a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = 0;
    goto LABEL_6;
  }

  a1[862].i64[0] = v22[-a1[860].i32[2]];
  if (a1[860].i32[0] >= a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v30 = *(v22 - 1);
LABEL_6:
  a1[861].i64[1] = v30;
  v31 = *(a2 + 18904) + 224 * *(a2 + 1600);
  v32 = *(v31 + 144);
  v33 = *(v31 + 152);
  v34 = *(v31 + 160);
  v35 = *(v31 + 104);
  LODWORD(v31) = *(v31 + 124);
  a1[834].i64[0] = v32 + v35 * ((8 * a3) >> a1[833].i32[3]) + ((8 * a4) >> a1[833].i32[2]);
  a1[834].i32[2] = v35;
  a1[842].i64[1] = v33 + v31 * ((8 * a3) >> v21) + ((8 * a4) >> a1[842].i32[0]);
  a1[843].i32[0] = v31;
  a1[851].i64[0] = v34 + v31 * ((8 * a3) >> v25) + ((8 * a4) >> v23);
  a1[851].i32[2] = v31;
  v36 = *v22;
  if (a5 >= 3 && *(a2 + 972) && ss_size_lookup[4 * a5 + 2 * *(a2 + 972) + *(a2 + 976)] == 13)
  {
    vpx_internal_error(a1[873].i64[0], 7, "Invalid block size.");
  }

  if (v36[8] <= 0)
  {
    predict_recon_intra(a1[833].i64, v36, a1, predict_and_reconstruct_intra_block_row_mt);
  }

  else
  {
    dec_build_inter_predictors_sb(a1, a2, a1[833].i64, a3, a4);
    if (!v36[3])
    {
      predict_recon_inter(a1[833].i64, v36, a1, reconstruct_inter_block_row_mt);
    }
  }

  return vp9_build_mask((a2 + 656), v36, a3, a4, v19, v20);
}

uint64_t read_partition(uint64_t a1, char a2, int a3, int a4, int a5, int a6)
{
  v6 = a1;
  v7 = (*(*(a1 + 13936) + a3) >> a6) & 1 | (2 * ((*(a1 + (a2 & 7) + 13944) >> a6) & 1)) | (4 * a6);
  v8 = *(a1 + 13808) + v7 + 2 * v7;
  v9 = *(a1 + 13744);
  if (a4 && a5)
  {
    v216 = *(a1 + 13744);
    v217 = (*(*(a1 + 13936) + a3) >> a6) & 1 | (2 * ((*(a1 + (a2 & 7) + 13944) >> a6) & 1)) | (4 * a6);
    LOBYTE(v10) = 0;
    v11 = *(a1 + 24);
    v12 = *(a1 + 28);
    v218 = (a1 + 64);
    v13 = *(a1 + 16);
    v14 = 256;
    v15.i64[0] = 0x800000008;
    v15.i64[1] = 0x800000008;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    while (1)
    {
      v20 = *(v8 + (v10 >> 1));
      if ((v12 & 0x80000000) == 0)
      {
        v17 = (v14 + (v11 - 1) * v20) >> 8;
        v21 = v13 - (v17 << 56);
        if (v13 < v17 << 56)
        {
          goto LABEL_37;
        }

        goto LABEL_4;
      }

      v22 = *(v6 + 40);
      v23 = *(v6 + 32) - v22;
      v24 = *(v6 + 48);
      if (v24)
      {
        v220 = v11;
        if (v23 >= 9)
        {
          v25 = 9;
        }

        else
        {
          v25 = *(v6 + 32) - v22;
        }

        v26 = *(v6 + 56);
        v27 = *(v6 + 40);
        v22 = v218;
        v28 = v14;
        v24(v26, v27, v218, v25);
        v11 = v220;
        v14 = v28;
        v16.i64[0] = 0x7F0000007FLL;
        v16.i64[1] = 0x7F0000007FLL;
        v15.i64[0] = 0x800000008;
        v15.i64[1] = 0x800000008;
      }

      v29 = 8 * v23;
      v30 = 48 - v12;
      if (8 * v23 >= 0x41)
      {
        v31 = (v30 & 0x7FFFFFF8) + 8;
        v32 = v31 + v12;
        v33 = (v22 + (v31 >> 3));
        v6 = a1;
        v13 = (bswap64(*v22) >> (56 - (v30 & 0xF8u)) << (v30 & 7)) | *(a1 + 16);
        goto LABEL_36;
      }

      v34 = 56 - v12 - v29;
      if (v34 < 0)
      {
        v32 = v12;
      }

      else
      {
        v32 = v12 + 0x40000000;
      }

      if (v29)
      {
        v35 = 1;
      }

      else
      {
        v35 = v34 <= -1;
      }

      v36 = v34 & ~(v34 >> 31);
      v37 = !v35 || v30 < v36;
      v6 = a1;
      if (v37)
      {
        v33 = v22;
        goto LABEL_36;
      }

      v38 = v36 - 1;
      if (v36 - 1 >= (40 - v12))
      {
        v38 = 40 - v12;
      }

      v39 = 47 - v12 - v38;
      if (v39 < 0x78)
      {
        break;
      }

      v40 = (v39 >> 3) + 1;
      v41 = v13;
      v42 = 0uLL;
      v43 = v32;
      v44 = vdupq_n_s32(v30);
      v45 = vaddq_s32(v44, xmmword_273BC3230);
      v33 = (v22 + (v40 & 0x3FFFFFF0));
      v46 = vaddq_s32(v44, xmmword_273BC3240);
      v30 -= 8 * (v40 & 0x3FFFFFF0);
      v47 = vaddq_s32(v44, xmmword_273BC3250);
      v48 = vaddq_s32(v44, xmmword_273BC3220);
      v49 = v40 & 0x3FFFFFF0;
      v50 = v22;
      v51 = 0uLL;
      v52 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      do
      {
        v60 = *v50++;
        v61 = vmovl_high_u8(v60);
        v62 = vmovl_high_u16(v61);
        v63.i64[0] = v62.u32[0];
        v63.i64[1] = v62.u32[1];
        v64 = v63;
        v65 = vmovl_u16(*v61.i8);
        v63.i64[0] = v65.u32[2];
        v63.i64[1] = v65.u32[3];
        v66 = v63;
        v67 = vmovl_u8(*v60.i8);
        v68 = vmovl_high_u16(v67);
        v63.i64[0] = v68.u32[2];
        v63.i64[1] = v68.u32[3];
        v69 = v63;
        v63.i64[0] = v62.u32[2];
        v63.i64[1] = v62.u32[3];
        v70 = v63;
        v63.i64[0] = v65.u32[0];
        v63.i64[1] = v65.u32[1];
        v71 = v63;
        v63.i64[0] = v68.u32[0];
        v63.i64[1] = v68.u32[1];
        v72 = v63;
        v73 = vmovl_u16(*v67.i8);
        v63.i64[0] = v73.u32[2];
        v63.i64[1] = v73.u32[3];
        v74 = v63;
        v63.i64[0] = v73.u32[0];
        v63.i64[1] = v73.u32[1];
        v75 = v63;
        v63.i64[0] = v48.u32[0];
        v63.i64[1] = v48.u32[1];
        v76 = vshlq_u64(v75, v63);
        v63.i64[0] = v48.u32[2];
        v63.i64[1] = v48.u32[3];
        v77 = vshlq_u64(v74, v63);
        v63.i64[0] = v47.u32[0];
        v63.i64[1] = v47.u32[1];
        v78 = vshlq_u64(v72, v63);
        v63.i64[0] = v46.u32[0];
        v63.i64[1] = v46.u32[1];
        v79 = vshlq_u64(v71, v63);
        v63.i64[0] = v45.u32[2];
        v63.i64[1] = v45.u32[3];
        v80 = vshlq_u64(v70, v63);
        v63.i64[0] = v47.u32[2];
        v63.i64[1] = v47.u32[3];
        v81 = vshlq_u64(v69, v63);
        v63.i64[0] = v46.u32[2];
        v63.i64[1] = v46.u32[3];
        v82 = vshlq_u64(v66, v63);
        v63.i64[0] = v45.u32[0];
        v63.i64[1] = v45.u32[1];
        v55 = vorrq_s8(vshlq_u64(v64, v63), v55);
        v54 = vorrq_s8(v82, v54);
        v52 = vorrq_s8(v81, v52);
        v56 = vorrq_s8(v80, v56);
        v53 = vorrq_s8(v79, v53);
        v51 = vorrq_s8(v78, v51);
        v42 = vorrq_s8(v77, v42);
        v41 = vorrq_s8(v76, v41);
        v43 = vaddq_s32(v43, v15);
        v57 = vaddq_s32(v57, v15);
        v58 = vaddq_s32(v58, v15);
        v59 = vaddq_s32(v59, v15);
        v48 = vaddq_s32(v48, v16);
        v47 = vaddq_s32(v47, v16);
        v46 = vaddq_s32(v46, v16);
        v45 = vaddq_s32(v45, v16);
        v49 -= 16;
      }

      while (v49);
      v83 = vorrq_s8(vorrq_s8(vorrq_s8(v41, v53), vorrq_s8(v51, v55)), vorrq_s8(vorrq_s8(v42, v54), vorrq_s8(v52, v56)));
      v13 = vorr_s8(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
      v32 = vaddvq_s32(vaddq_s32(vaddq_s32(v43, v58), vaddq_s32(v57, v59)));
      if ((v40 & 0x3FFFFFF0) != v40)
      {
        goto LABEL_35;
      }

LABEL_36:
      *(v6 + 40) += v33 - v22;
      v12 = v32;
      v17 = (v14 + (v11 - 1) * v20) >> 8;
      v21 = v13 - (v17 << 56);
      if (v13 < v17 << 56)
      {
LABEL_37:
        v18 = 0;
        goto LABEL_5;
      }

LABEL_4:
      LODWORD(v17) = *(v6 + 24) - v17;
      v18 = 1;
      v13 = v21;
LABEL_5:
      v19 = vpx_norm[v17];
      v11 = v17 << v19;
      v13 <<= v19;
      v12 -= v19;
      *(v6 + 16) = v13;
      *(v6 + 24) = v17 << v19;
      *(v6 + 28) = v12;
      v10 = vp9_partition_tree[v18 + v10];
      if (v10 <= 0)
      {
        result = -v10;
        v9 = v216;
        v7 = v217;
        goto LABEL_105;
      }
    }

    v33 = v22;
    do
    {
LABEL_35:
      v32 += 8;
      v84 = *v33;
      v33 = (v33 + 1);
      v13 |= v84 << v30;
      v30 -= 8;
    }

    while (v30 >= v36);
    goto LABEL_36;
  }

  if (a4 || !a5)
  {
    result = 3;
    if (!a4 || a5)
    {
      goto LABEL_105;
    }

    v85 = *(v6 + 28);
    v86 = ((*(v6 + 24) - 1) * *(v8 + 2) + 256) >> 8;
    v87 = *(v6 + 16);
    if ((v85 & 0x80000000) != 0)
    {
      v99 = *(v6 + 40);
      v100 = *(v6 + 32) - v99;
      v101 = 8 * v100;
      v102 = *(v6 + 48);
      if (v102)
      {
        if (v100 >= 9)
        {
          v103 = 9;
        }

        else
        {
          v103 = *(v6 + 32) - v99;
        }

        v102(*(v6 + 56), v99, v6 + 64, v103);
        v99 = (v6 + 64);
      }

      v104 = 48 - v85;
      if (v101 < 0x41)
      {
        v161 = 56 - v85 - v101;
        if (v161 < 0)
        {
          v106 = v85;
        }

        else
        {
          v106 = v85 + 0x40000000;
        }

        if (v101)
        {
          v162 = 1;
        }

        else
        {
          v162 = v161 <= -1;
        }

        if (v162 && (v163 = v161 & ~(v161 >> 31), v104 >= v163))
        {
          v164 = v163 - 1;
          if (v163 - 1 >= (40 - v85))
          {
            v164 = 40 - v85;
          }

          v165 = 47 - v85 - v164;
          v107 = v99;
          v166 = 48 - v85;
          if (v165 < 0x78)
          {
            goto LABEL_109;
          }

          v167 = v87;
          v168 = v106;
          v169 = vdupq_n_s32(v104);
          v170 = 0uLL;
          v171 = vaddq_s32(v169, xmmword_273BC3230);
          v172 = vaddq_s32(v169, xmmword_273BC3240);
          v173 = vaddq_s32(v169, xmmword_273BC3250);
          v174 = vaddq_s32(v169, xmmword_273BC3220);
          v175.i64[0] = 0x800000008;
          v175.i64[1] = 0x800000008;
          v176.i64[0] = 0x7F0000007FLL;
          v176.i64[1] = 0x7F0000007FLL;
          v177 = (v165 >> 3) + 1;
          v178 = 0uLL;
          v179 = 0uLL;
          v180 = 0uLL;
          v107 = (v99 + (v177 & 0x3FFFFFF0));
          v166 = v104 - 8 * (v177 & 0x3FFFFFF0);
          v181 = v177 & 0x3FFFFFF0;
          v182 = v99;
          v183 = 0uLL;
          v184 = 0uLL;
          v185 = 0uLL;
          v186 = 0uLL;
          v187 = 0uLL;
          v188 = 0uLL;
          do
          {
            v189 = *v182++;
            v190 = vmovl_high_u8(v189);
            v191 = vmovl_high_u16(v190);
            v192.i64[0] = v191.u32[0];
            v192.i64[1] = v191.u32[1];
            v193 = v192;
            v194 = vmovl_u16(*v190.i8);
            v192.i64[0] = v194.u32[2];
            v192.i64[1] = v194.u32[3];
            v195 = v192;
            v196 = vmovl_u8(*v189.i8);
            v197 = vmovl_high_u16(v196);
            v192.i64[0] = v197.u32[2];
            v192.i64[1] = v197.u32[3];
            v198 = v192;
            v192.i64[0] = v191.u32[2];
            v192.i64[1] = v191.u32[3];
            v199 = v192;
            v192.i64[0] = v194.u32[0];
            v192.i64[1] = v194.u32[1];
            v200 = v192;
            v192.i64[0] = v197.u32[0];
            v192.i64[1] = v197.u32[1];
            v201 = v192;
            v202 = vmovl_u16(*v196.i8);
            v192.i64[0] = v202.u32[2];
            v192.i64[1] = v202.u32[3];
            v203 = v192;
            v192.i64[0] = v202.u32[0];
            v192.i64[1] = v202.u32[1];
            v204 = v192;
            v192.i64[0] = v174.u32[0];
            v192.i64[1] = v174.u32[1];
            v205 = vshlq_u64(v204, v192);
            v192.i64[0] = v174.u32[2];
            v192.i64[1] = v174.u32[3];
            v206 = vshlq_u64(v203, v192);
            v192.i64[0] = v173.u32[0];
            v192.i64[1] = v173.u32[1];
            v207 = vshlq_u64(v201, v192);
            v192.i64[0] = v172.u32[0];
            v192.i64[1] = v172.u32[1];
            v208 = vshlq_u64(v200, v192);
            v192.i64[0] = v171.u32[2];
            v192.i64[1] = v171.u32[3];
            v209 = vshlq_u64(v199, v192);
            v192.i64[0] = v173.u32[2];
            v192.i64[1] = v173.u32[3];
            v210 = vshlq_u64(v198, v192);
            v192.i64[0] = v172.u32[2];
            v192.i64[1] = v172.u32[3];
            v211 = vshlq_u64(v195, v192);
            v192.i64[0] = v171.u32[0];
            v192.i64[1] = v171.u32[1];
            v184 = vorrq_s8(vshlq_u64(v193, v192), v184);
            v183 = vorrq_s8(v211, v183);
            v179 = vorrq_s8(v210, v179);
            v185 = vorrq_s8(v209, v185);
            v180 = vorrq_s8(v208, v180);
            v178 = vorrq_s8(v207, v178);
            v170 = vorrq_s8(v206, v170);
            v167 = vorrq_s8(v205, v167);
            v168 = vaddq_s32(v168, v175);
            v186 = vaddq_s32(v186, v175);
            v187 = vaddq_s32(v187, v175);
            v188 = vaddq_s32(v188, v175);
            v174 = vaddq_s32(v174, v176);
            v173 = vaddq_s32(v173, v176);
            v172 = vaddq_s32(v172, v176);
            v171 = vaddq_s32(v171, v176);
            v181 -= 16;
          }

          while (v181);
          v212 = vorrq_s8(vorrq_s8(vorrq_s8(v167, v180), vorrq_s8(v178, v184)), vorrq_s8(vorrq_s8(v170, v183), vorrq_s8(v179, v185)));
          v87 = vorr_s8(*v212.i8, *&vextq_s8(v212, v212, 8uLL));
          v106 = vaddvq_s32(vaddq_s32(vaddq_s32(v168, v187), vaddq_s32(v186, v188)));
          if ((v177 & 0x3FFFFFF0) != v177)
          {
LABEL_109:
            do
            {
              v106 += 8;
              v213 = *v107;
              v107 = (v107 + 1);
              v87 |= v213 << v166;
              v166 -= 8;
            }

            while (v166 >= v163);
          }
        }

        else
        {
          v107 = v99;
        }
      }

      else
      {
        v105 = (v104 & 0x7FFFFFF8) + 8;
        v106 = v105 + v85;
        v107 = (v99 + (v105 >> 3));
        v87 = (bswap64(*v99) >> (56 - (v104 & 0xF8u)) << (v104 & 7)) | *(v6 + 16);
      }

      *(v6 + 40) += v107 - v99;
      v85 = v106;
      v88 = v87 - (v86 << 56);
      if (v87 >= v86 << 56)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v88 = v87 - (v86 << 56);
      if (v87 >= v86 << 56)
      {
        goto LABEL_103;
      }
    }

    result = 2;
    goto LABEL_104;
  }

  v85 = *(a1 + 28);
  v86 = ((*(a1 + 24) - 1) * *(v8 + 1) + 256) >> 8;
  v87 = *(a1 + 16);
  if ((v85 & 0x80000000) != 0)
  {
    v90 = *(a1 + 40);
    v91 = *(a1 + 32) - v90;
    v92 = 8 * v91;
    v93 = *(a1 + 48);
    if (v93)
    {
      if (v91 >= 9)
      {
        v94 = 9;
      }

      else
      {
        v94 = *(a1 + 32) - v90;
      }

      v93(*(a1 + 56), v90, a1 + 64, v94);
      v90 = (v6 + 64);
    }

    v95 = 48 - v85;
    if (v92 < 0x41)
    {
      v108 = 56 - v85 - v92;
      if (v108 < 0)
      {
        v97 = v85;
      }

      else
      {
        v97 = v85 + 0x40000000;
      }

      if (v92)
      {
        v109 = 1;
      }

      else
      {
        v109 = v108 <= -1;
      }

      if (v109 && (v110 = v108 & ~(v108 >> 31), v95 >= v110))
      {
        v111 = v110 - 1;
        if (v110 - 1 >= (40 - v85))
        {
          v111 = 40 - v85;
        }

        v112 = 47 - v85 - v111;
        v98 = v90;
        v113 = 48 - v85;
        if (v112 < 0x78)
        {
          goto LABEL_110;
        }

        v114 = v87;
        v115 = v97;
        v116 = vdupq_n_s32(v95);
        v117 = 0uLL;
        v118 = vaddq_s32(v116, xmmword_273BC3230);
        v119 = vaddq_s32(v116, xmmword_273BC3240);
        v120 = vaddq_s32(v116, xmmword_273BC3250);
        v121 = vaddq_s32(v116, xmmword_273BC3220);
        v122.i64[0] = 0x800000008;
        v122.i64[1] = 0x800000008;
        v123.i64[0] = 0x7F0000007FLL;
        v123.i64[1] = 0x7F0000007FLL;
        v124 = (v112 >> 3) + 1;
        v125 = 0uLL;
        v126 = 0uLL;
        v127 = 0uLL;
        v98 = (v90 + (v124 & 0x3FFFFFF0));
        v113 = v95 - 8 * (v124 & 0x3FFFFFF0);
        v128 = v124 & 0x3FFFFFF0;
        v129 = v90;
        v130 = 0uLL;
        v131 = 0uLL;
        v132 = 0uLL;
        v133 = 0uLL;
        v134 = 0uLL;
        v135 = 0uLL;
        do
        {
          v136 = *v129++;
          v137 = vmovl_high_u8(v136);
          v138 = vmovl_high_u16(v137);
          v139.i64[0] = v138.u32[0];
          v139.i64[1] = v138.u32[1];
          v140 = v139;
          v141 = vmovl_u16(*v137.i8);
          v139.i64[0] = v141.u32[2];
          v139.i64[1] = v141.u32[3];
          v142 = v139;
          v143 = vmovl_u8(*v136.i8);
          v144 = vmovl_high_u16(v143);
          v139.i64[0] = v144.u32[2];
          v139.i64[1] = v144.u32[3];
          v145 = v139;
          v139.i64[0] = v138.u32[2];
          v139.i64[1] = v138.u32[3];
          v146 = v139;
          v139.i64[0] = v141.u32[0];
          v139.i64[1] = v141.u32[1];
          v147 = v139;
          v139.i64[0] = v144.u32[0];
          v139.i64[1] = v144.u32[1];
          v148 = v139;
          v149 = vmovl_u16(*v143.i8);
          v139.i64[0] = v149.u32[2];
          v139.i64[1] = v149.u32[3];
          v150 = v139;
          v139.i64[0] = v149.u32[0];
          v139.i64[1] = v149.u32[1];
          v151 = v139;
          v139.i64[0] = v121.u32[0];
          v139.i64[1] = v121.u32[1];
          v152 = vshlq_u64(v151, v139);
          v139.i64[0] = v121.u32[2];
          v139.i64[1] = v121.u32[3];
          v153 = vshlq_u64(v150, v139);
          v139.i64[0] = v120.u32[0];
          v139.i64[1] = v120.u32[1];
          v154 = vshlq_u64(v148, v139);
          v139.i64[0] = v119.u32[0];
          v139.i64[1] = v119.u32[1];
          v155 = vshlq_u64(v147, v139);
          v139.i64[0] = v118.u32[2];
          v139.i64[1] = v118.u32[3];
          v156 = vshlq_u64(v146, v139);
          v139.i64[0] = v120.u32[2];
          v139.i64[1] = v120.u32[3];
          v157 = vshlq_u64(v145, v139);
          v139.i64[0] = v119.u32[2];
          v139.i64[1] = v119.u32[3];
          v158 = vshlq_u64(v142, v139);
          v139.i64[0] = v118.u32[0];
          v139.i64[1] = v118.u32[1];
          v131 = vorrq_s8(vshlq_u64(v140, v139), v131);
          v130 = vorrq_s8(v158, v130);
          v126 = vorrq_s8(v157, v126);
          v132 = vorrq_s8(v156, v132);
          v127 = vorrq_s8(v155, v127);
          v125 = vorrq_s8(v154, v125);
          v117 = vorrq_s8(v153, v117);
          v114 = vorrq_s8(v152, v114);
          v115 = vaddq_s32(v115, v122);
          v133 = vaddq_s32(v133, v122);
          v134 = vaddq_s32(v134, v122);
          v135 = vaddq_s32(v135, v122);
          v121 = vaddq_s32(v121, v123);
          v120 = vaddq_s32(v120, v123);
          v119 = vaddq_s32(v119, v123);
          v118 = vaddq_s32(v118, v123);
          v128 -= 16;
        }

        while (v128);
        v159 = vorrq_s8(vorrq_s8(vorrq_s8(v114, v127), vorrq_s8(v125, v131)), vorrq_s8(vorrq_s8(v117, v130), vorrq_s8(v126, v132)));
        v87 = vorr_s8(*v159.i8, *&vextq_s8(v159, v159, 8uLL));
        v97 = vaddvq_s32(vaddq_s32(vaddq_s32(v115, v134), vaddq_s32(v133, v135)));
        if ((v124 & 0x3FFFFFF0) != v124)
        {
LABEL_110:
          do
          {
            v97 += 8;
            v160 = *v98;
            v98 = (v98 + 1);
            v87 |= v160 << v113;
            v113 -= 8;
          }

          while (v113 >= v110);
        }
      }

      else
      {
        v98 = v90;
      }
    }

    else
    {
      v96 = (v95 & 0x7FFFFFF8) + 8;
      v97 = v96 + v85;
      v98 = (v90 + (v96 >> 3));
      v87 = (bswap64(*v90) >> (56 - (v95 & 0xF8u)) << (v95 & 7)) | *(v6 + 16);
    }

    *(v6 + 40) += v98 - v90;
    v85 = v97;
    v88 = v87 - (v86 << 56);
    if (v87 < v86 << 56)
    {
      goto LABEL_99;
    }

LABEL_103:
    LODWORD(v86) = *(v6 + 24) - v86;
    result = 3;
    v87 = v88;
    goto LABEL_104;
  }

  v88 = v87 - (v86 << 56);
  if (v87 >= v86 << 56)
  {
    goto LABEL_103;
  }

LABEL_99:
  result = 1;
LABEL_104:
  v214 = vpx_norm[v86];
  *(v6 + 16) = v87 << v214;
  *(v6 + 24) = v86 << v214;
  *(v6 + 28) = v85 - v214;
LABEL_105:
  if (v9)
  {
    v215 = v9 + 16 * v7 + 4 * result;
    ++*(v215 + 560);
  }

  return result;
}

unsigned __int8 *predict_recon_intra(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void (*a4)(uint64_t, unsigned __int8 *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a2[2];
  v9 = *(a1 + 492);
  if (v9 < 0)
  {
    v10 = *(a1 + 114);
    v11 = (v9 >> (*(a1 + 8) + 5)) + *(a1 + 112);
    v12 = *(a1 + 500);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *(a1 + 114);
    v11 = *(a1 + 112);
    v12 = *(a1 + 500);
    if ((v12 & 0x80000000) == 0)
    {
LABEL_3:
      v13 = 0;
      goto LABEL_6;
    }
  }

  v13 = v12 >> (*(a1 + 12) + 5);
LABEL_6:
  v14 = v13 + v10;
  *(a1 + 472) = v11 & (v9 >> 31);
  *(a1 + 476) = (v13 + v10) & (v12 >> 31);
  if (v13 + v10 >= 1 && v11 >= 1)
  {
    v16 = 0;
    v17 = 1 << v8;
    do
    {
      v18 = 0;
      do
      {
        a4(a3, a2, 0, v16, v18, v8);
        v18 = (v18 + v17);
      }

      while (v18 < v11);
      v16 = (v16 + v17);
    }

    while (v16 < v14);
    LODWORD(v8) = a2[2];
    v9 = *(a1 + 492);
    v12 = *(a1 + 500);
  }

  v19 = *a2;
  v20 = v8;
  result = uv_txsize_lookup;
  v22 = *(a1 + 144);
  v23 = *(a1 + 148);
  v24 = uv_txsize_lookup[16 * v19 + 4 * v8 + 2 * v22 + v23];
  v25 = ((v9 >> 31) & (v9 >> (v22 + 5))) + *(a1 + 248);
  v26 = ((v12 >> 31) & (v12 >> (v23 + 5))) + *(a1 + 250);
  *(a1 + 472) = (v9 >> 31) & v25;
  *(a1 + 476) = (v12 >> 31) & v26;
  if (v26 >= 1 && v25 >= 1)
  {
    v27 = 0;
    v28 = 1 << v24;
    do
    {
      v29 = 0;
      do
      {
        a4(a3, a2, 1, v27, v29, v24);
        v29 = (v29 + v28);
      }

      while (v29 < v25);
      v27 = (v27 + v28);
    }

    while (v27 < v26);
    v19 = *a2;
    v20 = a2[2];
    v9 = *(a1 + 492);
    v12 = *(a1 + 500);
    result = uv_txsize_lookup;
  }

  v30 = *(a1 + 280);
  v31 = *(a1 + 284);
  v32 = uv_txsize_lookup[16 * v19 + 4 * v20 + 2 * v30 + v31];
  LODWORD(v30) = v9 >> (v30 + 5);
  v33 = v9 >> 31;
  v34 = (v33 & v30) + *(a1 + 384);
  v35 = v12 >> (v31 + 5);
  v36 = v12 >> 31;
  v37 = (v36 & v35) + *(a1 + 386);
  *(a1 + 472) = v33 & v34;
  *(a1 + 476) = v36 & v37;
  if (v37 >= 1 && v34 >= 1)
  {
    v38 = 0;
    v39 = 1 << v32;
    do
    {
      v40 = 0;
      do
      {
        result = (a4)(a3, a2, 2, v38, v40, v32);
        v40 = (v40 + v39);
      }

      while (v40 < v34);
      v38 = (v38 + v39);
    }

    while (v38 < v37);
  }

  return result;
}

void predict_and_reconstruct_intra_block_row_mt(uint64_t a1, unsigned __int8 *a2, int a3, int a4, int a5, unsigned int a6)
{
  v10 = a1 + 13328;
  v11 = a1 + 13328 + 136 * a3;
  v12 = a2 + 6;
  if (!a3)
  {
    v12 = a2 + 1;
  }

  v13 = *(v11 + 24);
  v14 = (*(v11 + 16) + 4 * (a5 + v13 * a4));
  if (!a3 && *a2 <= 2u)
  {
    v12 = (**(a1 + 13776) + 12 * (a5 + 2 * a4) + 20);
  }

  v15 = *v12;
  vp9_predict_intra_block(a1 + 13328, *(v11 + 116), a6, v15, v14, v13, v14, v13, a5, a4, a3);
  if (!a2[3])
  {
    if (a3 || *(a1 + 13956))
    {
      v16 = 0;
      v17 = *(v11 + 128);
      v18 = *v17;
      if (*v17 < 1)
      {
LABEL_11:
        *v11 += 4 * (16 << (2 * a6));
        *(v11 + 128) = v17 + 1;
        return;
      }
    }

    else
    {
      v16 = intra_mode_to_tx_type_lookup[v15];
      v17 = *(v11 + 128);
      v18 = *v17;
      if (*v17 < 1)
      {
        goto LABEL_11;
      }
    }

    inverse_transform_block_intra(v10, a3, v16, a6, v14, *(v11 + 24), v18);
    v17 = *(v11 + 128);
    goto LABEL_11;
  }
}

uint64_t dec_build_inter_predictors_sb(int16x8_t *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = a3;
  v92 = 8 * a5;
  v6 = **(a3 + 448);
  v91 = *(&vp9_filter_kernels + v6[7]);
  v7 = 8 * a4;
  v8 = v6[9];
  v63 = v6 + 8;
  v62 = a2 + 1072;
  v94 = 8 * a4;
  if (*v6 < 3u)
  {
    v89 = **(a3 + 448);
    v9 = 0;
    v10 = v8 <= 0;
    v11 = 1;
    if (!v10)
    {
      v11 = 2;
    }

    v60 = v11;
    v61 = a3 + 512;
    v58 = a3 + 168;
    v59 = a3 + 32;
    v57 = a3 + 304;
    v79 = a3 + 152;
    v81 = a3 + 16;
    v67 = a3 + 288;
    while (1)
    {
      v12 = v62 + 176 * v63[v9];
      v15 = *(v12 - 176);
      v13 = v12 - 176;
      v14 = v15;
      v16 = *(v13 + 16);
      v17 = *(a2 + 18904);
      v87 = (v13 + 16);
      if (v16 == -1 || (v18 = *(v13 + 20), v18 == -1))
      {
        vpx_internal_error(*(v5 + 640), 5, "Reference frame has invalid dimensions");
        v16 = *(v13 + 16);
        if (v16 == -1)
        {
          break;
        }

        v18 = *(v13 + 20);
        if (v18 == -1)
        {
          break;
        }
      }

      if (v16 == 0x4000)
      {
        v19 = *(v13 + 8);
        if (v18 == 0x4000)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v19 = *(v13 + 8);
      }

      v75 = 1;
      v20 = v13 + 16;
LABEL_17:
      v74 = v17 + 224 * v14 + 24;
      result = vp9_setup_pre_planes(v5, v9, v19, a4, a5, v20);
      v76 = v9;
      *(v61 + 8 * v9) = v13;
      v68 = *(v5 + 114);
      if (*(v5 + 114) && *(a3 + 112))
      {
        v22 = 0;
        v23 = 0;
        v24 = 4 * *(a3 + 112);
        do
        {
          v25 = 0;
          v71 = v23;
          v83 = 4 * v23;
          do
          {
            v26 = v22++;
            v27 = average_split_mvs(a3, v89, v9, v26);
            result = dec_build_inter_predictors(a1, a3, 0, v24, 4 * v68, v25, v83, 4, 4, v92, v94, v91, v87, v59 + 16 * v9, v81, v27, HIWORD(v27), v74, v75, v9);
            v25 += 4;
          }

          while (v24 != v25);
          v23 = v71 + 1;
        }

        while (v71 + 1 != v68);
      }

      v69 = *(a3 + 250);
      if (*(a3 + 250) && *(a3 + 248))
      {
        v28 = 0;
        v29 = 0;
        v30 = 4 * *(a3 + 248);
        do
        {
          v31 = 0;
          v72 = v29;
          v84 = 4 * v29;
          do
          {
            v32 = v28++;
            v33 = average_split_mvs(a3 + 136, v89, v9, v32);
            result = dec_build_inter_predictors(a1, a3, 1u, v30, 4 * v69, v31, v84, 4, 4, v92, v94, v91, v87, v58 + 16 * v9, v79, v33, HIWORD(v33), v74, v75, v9);
            v31 += 4;
          }

          while (v30 != v31);
          v29 = v72 + 1;
        }

        while (v72 + 1 != v69);
      }

      v70 = *(a3 + 386);
      if (*(a3 + 386) && *(a3 + 384))
      {
        v34 = 0;
        v35 = 0;
        v36 = 4 * *(a3 + 384);
        do
        {
          v37 = 0;
          v73 = v35;
          v85 = 4 * v35;
          do
          {
            v38 = v34++;
            v39 = average_split_mvs(a3 + 272, v89, v9, v38);
            result = dec_build_inter_predictors(a1, a3, 2u, v36, 4 * v70, v37, v85, 4, 4, v92, v94, v91, v87, v57 + 16 * v9, v67, v39, HIWORD(v39), v74, v75, v9);
            v37 += 4;
          }

          while (v36 != v37);
          v35 = v73 + 1;
        }

        while (v73 + 1 != v70);
      }

      v5 = a3;
      ++v9;
      if (v76 + 1 == v60)
      {
        return result;
      }
    }

    v19 = *(v13 + 8);
LABEL_14:
    v75 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  v40 = 0;
  v41 = 0;
  v86 = a3 + 16;
  v88 = v6 + 12;
  if (v8 <= 0)
  {
    v42 = 1;
  }

  else
  {
    v42 = 2;
  }

  v80 = a3 + 152;
  v82 = v42;
  v77 = a3 + 288;
  do
  {
    v49 = v62 + 176 * v63[v41];
    v52 = *(v49 - 176);
    v51 = v49 - 176;
    v50 = v52;
    v54 = (v51 + 16);
    v53 = *(v51 + 16);
    v55 = *(a2 + 18904);
    if (v53 == -1 || (v56 = *(v51 + 20), v56 == -1))
    {
      vpx_internal_error(*(v5 + 640), 5, "Reference frame has invalid dimensions");
      v53 = *v54;
      if (*v54 == -1)
      {
        goto LABEL_40;
      }

      v56 = *(v51 + 20);
    }

    if (v56 == -1)
    {
LABEL_40:
      v43 = *(v51 + 8);
LABEL_41:
      v44 = 0;
      v45 = 0;
      goto LABEL_42;
    }

    if (v53 == 0x4000)
    {
      v43 = *(v51 + 8);
      if (v56 == 0x4000)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v43 = *(v51 + 8);
    }

    v44 = 1;
    v45 = v51 + 16;
LABEL_42:
    v46 = v55 + 224 * v50 + 24;
    vp9_setup_pre_planes(v5, v41, v43, a4, a5, v45);
    *(v5 + 8 * v41 + 512) = v51;
    v47 = *&v88[4 * v41];
    v90 = v40;
    v48 = v5 + v40;
    dec_build_inter_predictors(a1, a3, 0, 4 * *(v5 + 112), 4 * *(v5 + 114), 0, 0, 4 * *(v5 + 112), 4 * *(v5 + 114), v92, v7, v91, v54, v48 + 32, v86, v47, HIWORD(v47), v46, v44, v41);
    dec_build_inter_predictors(a1, a3, 1u, 4 * *(a3 + 248), 4 * *(a3 + 250), 0, 0, 4 * *(a3 + 248), 4 * *(a3 + 250), v92, v94, v91, v54, v48 + 168, v80, v47, HIWORD(v47), v46, v44, v41);
    v5 = a3;
    v7 = v94;
    result = dec_build_inter_predictors(a1, a3, 2u, 4 * *(a3 + 384), 4 * *(a3 + 386), 0, 0, 4 * *(a3 + 384), 4 * *(a3 + 386), v92, v94, v91, v54, v48 + 304, v77, v47, HIWORD(v47), v46, v44, v41++);
    v40 = v90 + 16;
  }

  while (v82 != v41);
  return result;
}

uint64_t predict_recon_inter(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int (*a4)(uint64_t, unsigned __int8 *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[2];
  v8 = *(a1 + 492);
  if (v8 < 0)
  {
    v9 = *(a1 + 114);
    v10 = (v8 >> (*(a1 + 8) + 5)) + *(a1 + 112);
    v11 = *(a1 + 500);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a1 + 114);
    v10 = *(a1 + 112);
    v11 = *(a1 + 500);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_6;
    }
  }

  v12 = v11 >> (*(a1 + 12) + 5);
LABEL_6:
  v13 = v12 + v9;
  *(a1 + 472) = v10 & (v8 >> 31);
  *(a1 + 476) = (v12 + v9) & (v11 >> 31);
  v14 = v12 + v9 < 1 || v10 < 1;
  v41 = a1;
  v15 = 0;
  if (!v14)
  {
    v16 = 0;
    v17 = 1 << v7;
    do
    {
      v18 = 0;
      do
      {
        v15 = a4(a3, a2, 0, v16, v18, v7) + v15;
        v18 = (v18 + v17);
      }

      while (v18 < v10);
      v16 = (v16 + v17);
    }

    while (v16 < v13);
    LODWORD(v7) = a2[2];
    a1 = v41;
    v8 = *(v41 + 492);
    v11 = *(v41 + 500);
  }

  v19 = *a2;
  v20 = v7;
  v21 = *(a1 + 144);
  v22 = *(a1 + 148);
  v23 = uv_txsize_lookup[16 * v19 + 4 * v7 + 2 * v21 + v22];
  v24 = ((v8 >> 31) & (v8 >> (v21 + 5))) + *(a1 + 248);
  v25 = ((v11 >> 31) & (v11 >> (v22 + 5))) + *(a1 + 250);
  *(a1 + 472) = (v8 >> 31) & v24;
  *(a1 + 476) = (v11 >> 31) & v25;
  if (v25 >= 1 && v24 >= 1)
  {
    v26 = 0;
    v27 = 1 << v23;
    do
    {
      v28 = 0;
      do
      {
        v15 = a4(a3, a2, 1, v26, v28, v23) + v15;
        v28 = (v28 + v27);
      }

      while (v28 < v24);
      v26 = (v26 + v27);
    }

    while (v26 < v25);
    v19 = *a2;
    v20 = a2[2];
    a1 = v41;
    v8 = *(v41 + 492);
    v11 = *(v41 + 500);
  }

  v29 = *(a1 + 280);
  v30 = *(a1 + 284);
  v31 = uv_txsize_lookup[16 * v19 + 4 * v20 + 2 * v29 + v30];
  LODWORD(v29) = v8 >> (v29 + 5);
  v32 = v8 >> 31;
  v33 = (v32 & v29) + *(a1 + 384);
  v34 = v11 >> (v30 + 5);
  v35 = v11 >> 31;
  v36 = (v35 & v34) + *(a1 + 386);
  *(a1 + 472) = v32 & v33;
  *(a1 + 476) = v35 & v36;
  if (v36 >= 1 && v33 >= 1)
  {
    v37 = 0;
    v38 = 1 << v31;
    do
    {
      v39 = 0;
      do
      {
        v15 = a4(a3, a2, 2, v37, v39, v31) + v15;
        v39 = (v39 + v38);
      }

      while (v39 < v33);
      v37 = (v37 + v38);
    }

    while (v37 < v36);
  }

  return v15;
}

uint64_t reconstruct_inter_block_row_mt(uint64_t a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  v7 = a1 + 13328;
  v8 = v7 + 136 * a3;
  v9 = *(v8 + 128);
  v10 = *v9;
  if (v10 >= 1)
  {
    inverse_transform_block_inter(v7, a3, a6, (*(v8 + 16) + 4 * (a5 + *(v8 + 24) * a4)), *(v8 + 24), v10);
    v9 = *(v8 + 128);
  }

  *v8 += 4 * (16 << (2 * a6));
  *(v8 + 128) = v9 + 1;
  return v10;
}

void inverse_transform_block_intra(uint64_t a1, int a2, int a3, int a4, uint8x8_t *a5, uint64_t a6, int a7)
{
  v10 = *(a1 + 136 * a2);
  if ((*(*(a1 + 528) + 152) & 8) != 0)
  {
    v12 = (2 * a5);
    if (*(a1 + 628))
    {
      v13 = *(a1 + 624);
      v14 = *(a1 + 136 * a2);
      v15 = (2 * a5);
      if (a7 >= 2)
      {
        vpx_highbd_iwht4x4_16_add_c(v14, v15, a6, v13);
        goto LABEL_46;
      }

      vpx_highbd_iwht4x4_1_add_c(v14, v15, a6, v13);
      goto LABEL_20;
    }

    if (a4 > 1)
    {
      if (a4 == 2)
      {
        vp9_highbd_iht16x16_add(a3, v10, v12, a6, a7, *(a1 + 624));
      }

      else if (a4 == 3)
      {
        v19 = *(a1 + 624);
        v20 = *(a1 + 136 * a2);
        v21 = (2 * a5);
        if (a7 == 1)
        {
          vpx_highbd_idct32x32_1_add_neon(v20->i32, v21, a6, v19);
LABEL_21:
          v10->i32[0] = 0;
          return;
        }

        if (a7 > 34)
        {
          if (a7 > 0x87)
          {
            vpx_highbd_idct32x32_1024_add_neon(v20, v21, a6);
          }

          else
          {
            vpx_highbd_idct32x32_135_add_neon(v20, v21, a6, v19);
          }

          goto LABEL_63;
        }

        vpx_highbd_idct32x32_34_add_neon(v20, v21, a6, v19);
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        v17 = *(a1 + 624);
        v18 = *(a1 + 136 * a2);
        if (a3)
        {
          vp9_highbd_iht8x8_64_add_neon(v18, v12, a6, a3, v17);
        }

        else
        {
          if (a7 == 1)
          {
            vpx_highbd_idct8x8_1_add_neon(v18->i32, v12, a6, v17);
            goto LABEL_21;
          }

          if (a7 > 12)
          {
            vpx_highbd_idct8x8_64_add_neon(v18, v12, a6, v17);
            goto LABEL_63;
          }

          vpx_highbd_idct8x8_12_add_neon(v18, v12, a6, v17);
        }
      }
    }

    else
    {
      v22 = *(a1 + 624);
      if (a3)
      {
        vp9_highbd_iht4x4_16_add_neon(*(a1 + 136 * a2), v12->i64, a6, a3, v22);
      }

      else
      {
        if (a7 >= 2)
        {
          vpx_highbd_idct4x4_16_add_neon(*(a1 + 136 * a2), v12->i64, a6, v22);
          goto LABEL_46;
        }

        v31 = vdupq_n_s16(~(-1 << v22));
        v32 = vdupq_n_s16((((11585 * ((3036938240 * v10->i32[0] + 0x80000000) >> 32) + 0x2000) >> 14) + 8) >> 4);
        v33.i64[0] = v12->i64[0];
        v34 = 2 * a6;
        v33.i64[1] = *(v12->i64 + v34);
        v35 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v32, v33), v31), 0);
        v12->i64[0] = v35.i64[0];
        *(v12->i64 + v34) = vextq_s8(v35, v35, 8uLL).u64[0];
        v36 = (v12->i64 + v34 + v34);
        v35.i64[0] = *v36;
        v35.i64[1] = *(v36 + v34);
        v37 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v32, v35), v31), 0);
        *v36 = v37.i64[0];
        *(v36 + v34) = vextq_s8(v37, v37, 8uLL).u64[0];
      }
    }

LABEL_20:
    if (a7 != 1)
    {
      goto LABEL_46;
    }

    goto LABEL_21;
  }

  if (*(a1 + 628))
  {
    v11 = *(a1 + 136 * a2);
    if (a7 >= 2)
    {
      vpx_iwht4x4_16_add_c(v11, a5, a6);
LABEL_46:
      if (!a3 && a4 <= 2 && a7 <= 10)
      {
        v23 = (64 << a4);
        v24 = v10;

LABEL_51:
        bzero(v24, v23);
        return;
      }

LABEL_63:
      if (a4 == 3 && a7 <= 34)
      {
        v24 = v10;
        v23 = 1024;
      }

      else
      {
        v23 = 4 * (16 << (2 * a4));
        v24 = v10;
      }

      goto LABEL_51;
    }

    vpx_iwht4x4_1_add_c(v11, a5, a6);
    goto LABEL_20;
  }

  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return;
      }

      v16 = *(a1 + 136 * a2);
      if (a3)
      {
        vp9_iht8x8_64_add_neon(v16, a5, a6, a3);
        goto LABEL_20;
      }

      if (a7 == 1)
      {
        vpx_idct8x8_1_add_neon(v16->i16, a5, a6);
        goto LABEL_21;
      }

      if (a7 > 12)
      {
        vpx_idct8x8_64_add_neon(v16, a5, a6);
        goto LABEL_63;
      }

      vpx_idct8x8_12_add_neon(v16, a5, a6);
    }

    else if (a3)
    {
      vp9_iht4x4_16_add_neon(*(a1 + 136 * a2), a5, a6, a3);
    }

    else
    {
      if (a7 >= 2)
      {
        vpx_idct4x4_16_add_neon(*(a1 + 136 * a2), a5, a6);
        goto LABEL_46;
      }

      v25 = vdupq_n_s16((((46340 * ((46340 * v10->i16[0] + 0x8000) >> 16) + 0x8000) >> 16) + 8) >> 4);
      v26.i32[0] = a5->i32[0];
      v27 = (a5 + a6);
      v26.i32[1] = *v27;
      v28 = (v27 + a6);
      v29 = vqmovun_s16(vaddw_u8(v25, v26));
      a5->i32[0] = v29.i32[0];
      *(a5->i32 + a6) = v29.i32[1];
      v30 = (v28 + a6);
      v29.i32[0] = *v28;
      v29.i32[1] = *v30;
      *v25.i8 = vqmovun_s16(vaddw_u8(v25, v29));
      *v28 = v25.i32[0];
      *v30 = v25.i32[1];
    }

    goto LABEL_20;
  }

  if (a4 == 2)
  {
    vp9_iht16x16_add(a3, v10, a5, a6, a7);
    goto LABEL_20;
  }

  if (a4 == 3)
  {
    vp9_idct32x32_add(*(a1 + 136 * a2), a5, a6, a7);
    goto LABEL_20;
  }
}

uint64_t dec_build_inter_predictors(int16x8_t *a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, uint64_t a12, int *a13, uint64_t a14, uint64_t a15, unsigned __int16 a16, unsigned __int16 a17, uint64_t a18, int a19, int a20)
{
  v22 = a15;
  v23 = a13;
  v24 = 136;
  v25 = a2 + 136 * a3;
  v302 = *a15 + *(a15 + 8) * a7 + a6;
  if (a3 == 1)
  {
    v24 = 128;
  }

  v26 = 92;
  if (!a3)
  {
    v26 = 72;
  }

  v27 = 96;
  if (!a3)
  {
    v27 = 76;
    v24 = 120;
  }

  v28 = *(a18 + v27);
  v29 = *(a18 + v26);
  v30 = *(a18 + v24);
  v319 = v28;
  v306 = a8;
  if (a19)
  {
    v32 = *(v25 + 8);
    v31 = *(v25 + 12);
    v315 = *(a18 + v24);
    v33 = a16 << (1 - v31);
    v34 = *(a2 + 488);
    v35 = 16 * a4 + (*(a2 + 492) << (1 - v32)) + 48;
    v36 = *(a2 + 496);
    v37 = (a17 << (1 - v32));
    if (v37 < v35)
    {
      LOWORD(v35) = a17 << (1 - v32);
    }

    if (v37 >= (v34 << (1 - v32)) - 16 * a4 - 64)
    {
      v38 = v35;
    }

    else
    {
      v38 = (v34 << (1 - v32)) - 16 * a4 - 64;
    }

    v309 = v38;
    v39 = v33;
    if (v33 >= 16 * a5 + (*(a2 + 500) << (1 - v31)) + 48)
    {
      v33 = 16 * a5 + (*(a2 + 500) << (1 - v31)) + 48;
    }

    if (v39 >= (v36 << (1 - v31)) - 16 * a5 - 64)
    {
      v40 = v33;
    }

    else
    {
      v40 = (v36 << (1 - v31)) - 16 * a5 - 64;
    }

    v307 = v40;
    v41 = ((-v34 >> (v32 + 3)) + a6);
    v42 = ((-v36 >> (v31 + 3)) + a7);
    v43 = a2;
    v317 = (*(a13 + 2))((16 * v41));
    v46 = (*(a13 + 3))((16 * v42), a13);
    LODWORD(v41) = (*(a13 + 2))(v41, a13);
    v47 = (*(a13 + 3))(v42, a13);
    v28 = v319;
    v23 = a13;
    a2 = v43;
    v22 = a15;
    v30 = v315;
    a8 = v306;
    v48 = ((((a11 + a7) * v23[1]) >> 10) & 0xF) + ((v307 * v23[1]) >> 14);
    v49 = ((((a10 + a6) * *v23) >> 10) & 0xF) + ((v309 * *v23) >> 14);
    v50 = a13[2];
    v51 = a13[3];
    v52 = v49 & 0xF;
    v53 = v48 & 0xF;
    v54 = v41 + (v49 >> 4);
    v55 = *(a14 + 8);
    v56 = v47 + (v48 >> 4);
  }

  else
  {
    v58 = *(v25 + 8);
    v57 = *(v25 + 12);
    v59 = (-*(a2 + 488) >> (v58 + 3)) + a6;
    v60 = (-*(a2 + 496) >> (v57 + 3)) + a7;
    v317 = 16 * v59;
    v46 = 16 * v60;
    v48 = a16 << (1 - v57);
    v49 = a17 << (1 - v58);
    v51 = 16;
    v50 = 16;
    v52 = v49 & 0xF;
    v53 = v48 & 0xF;
    v54 = v59 + (v49 >> 4);
    v55 = *(a14 + 8);
    v56 = v60 + (v48 >> 4);
    if (!v49 && !v48 && (v29 & 7) == 0 && (v28 & 7) == 0)
    {
      goto LABEL_23;
    }
  }

  v67 = v49 + v317;
  v68 = v46 + v51 * (a9 - 1) + v48;
  v69 = (v67 + v50 * (a8 - 1)) >> 4;
  if (v52 || v23[2] != 16)
  {
    v72 = v54 - 3;
    v71 = v69 + 5;
    v70 = 3;
    v73 = v68 >> 4;
    if (v53)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v70 = 0;
    v71 = v69 + 1;
    v72 = v54;
    v73 = v68 >> 4;
    if (v53)
    {
      goto LABEL_33;
    }
  }

  if (v23[3] == 16)
  {
    v74 = 0;
    v75 = v73 + 1;
    v76 = v56;
    if (v72 < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

LABEL_33:
  v76 = v56 - 3;
  v75 = v73 + 5;
  v74 = 3;
  if ((v72 & 0x80000000) == 0)
  {
LABEL_34:
    if (v72 >= v29 || (v71 & 0x80000000) != 0 || v71 >= v29 || v76 < 0 || v76 >= v28 || v75 < 0 || v75 >= v28)
    {
      goto LABEL_41;
    }

LABEL_23:
    v61 = &v30[v55 * v56 + v54];
    if ((*(*(a2 + 528) + 152) & 8) == 0)
    {
      v62 = *(v22 + 8);
      v63 = *&v23[8 * (v52 != 0) + 8 + 4 * (v53 != 0) + 2 * a20];
      v64 = v55;
      v65 = v302;
      v66 = a12;
LABEL_332:

      return v63(v61, v64, v65, v62, v66);
    }

    v86 = 2 * v61;
    v87 = 2 * v302;
    v88 = *(v22 + 8);
    v89 = *&v23[8 * (v52 != 0) + 24 + 4 * (v53 != 0) + 2 * a20];
    v90 = v55;
    v91 = a12;
    goto LABEL_255;
  }

LABEL_41:
  v77 = v76 * v55;
  v78 = v30;
  v79 = &v30[v77];
  v80 = v72;
  v81 = v71 - v72 + 1;
  v82 = v75 - v76 + 1;
  v83 = *(v22 + 8);
  v84 = a1 + 1130;
  v316 = v72;
  v318 = v55;
  v292 = v23;
  v290 = v52;
  v291 = v53;
  v289 = v83;
  v288 = v70 + v74 * v81;
  __b = a1 + 1130;
  if ((*(*(a2 + 528) + 152) & 8) == 0)
  {
    if (v76 >= v28)
    {
      v85 = &v78[v55 * (v28 - 1)];
    }

    else if (v76 <= 0)
    {
      v85 = v78;
    }

    else
    {
      v85 = v79;
    }

    v133 = -v72 & (v72 >> 31);
    if (v133 >= v81)
    {
      v133 = v81;
    }

    v96 = __OFSUB__(v71, v29);
    v134 = v71 - v29;
    if (v134 < 0 != v96)
    {
      v135 = 0;
    }

    else
    {
      v135 = v134 + 1;
    }

    if (v135 >= v81)
    {
      v136 = v81;
    }

    else
    {
      v136 = v135;
    }

    v137 = v136 + v133;
    v138 = v133;
    v139 = v81 - (v136 + v133);
    v140 = v139;
    v141 = v29 - 1;
    v142 = v136;
    v143 = v81;
    if (v133)
    {
      if (v136)
      {
        if (v81 == v137)
        {
          v144 = v75 + 1;
          v145 = a1 + 1130;
          do
          {
            memset(v145, *v85, v138);
            memset(&v145->i8[v138 + v140], v85[v141], v142);
            v145 = (v145 + v143);
            v146 = v76 + 1;
            v147 = v76 + 1 >= v319 || v76 <= -1;
            v148 = v318;
            if (v147)
            {
              v148 = 0;
            }

            v85 += v148;
            ++v76;
          }

          while (v144 != v146);
        }

        else
        {
          v221 = a1 + 1130;
          do
          {
            memset(v221, *v85, v138);
            memcpy(&v221->i8[v138], &v85[v316 + v138], v140);
            memset(&v221->i8[v138 + v140], v85[v141], v142);
            v221 = (v221 + v143);
            v222 = v76 + 1 >= v319 || v76 <= -1;
            v223 = v318;
            if (v222)
            {
              v223 = 0;
            }

            v85 += v223;
            ++v76;
            --v82;
          }

          while (v82);
        }
      }

      else
      {
        v187 = v75 + 1;
        if (v81 == v137)
        {
          v188 = a1 + 1130;
          do
          {
            memset(v188, *v85, v138);
            v188 = (v188 + v143);
            v189 = v76 + 1;
            v190 = v76 + 1 >= v319 || v76 <= -1;
            v191 = v318;
            if (v190)
            {
              v191 = 0;
            }

            v85 += v191;
            ++v76;
          }

          while (v187 != v189);
        }

        else
        {
          v277 = a1 + 1130;
          do
          {
            memset(v277, *v85, v138);
            memcpy(&v277->i8[v138], &v85[v80 + v138], v140);
            v277 = (v277 + v143);
            v278 = v76 + 1;
            v279 = v76 + 1 >= v319 || v76 <= -1;
            v280 = v318;
            if (v279)
            {
              v280 = 0;
            }

            v85 += v280;
            ++v76;
          }

          while (v187 != v278);
        }
      }
    }

    else if (v136)
    {
      v167 = v75 + 1;
      if (v81 == v137)
      {
        v168 = &a1[1130].i8[v139];
        do
        {
          memset(v168, v85[v141], v142);
          v169 = v76 + 1;
          v170 = v76 + 1 >= v319 || v76 <= -1;
          v171 = v318;
          if (v170)
          {
            v171 = 0;
          }

          v85 += v171;
          v168 += v143;
          ++v76;
        }

        while (v167 != v169);
      }

      else
      {
        v257 = a1 + 1130;
        do
        {
          memcpy(v257, &v85[v80 + v138], v140);
          memset(&v257->i8[v140], v85[v141], v142);
          v258 = v76 + 1;
          v259 = v76 + 1 >= v319 || v76 <= -1;
          v260 = v318;
          if (v259)
          {
            v260 = 0;
          }

          v85 += v260;
          v257 = (v257 + v143);
          ++v76;
        }

        while (v167 != v258);
      }
    }

    else if (v81 != v137)
    {
      v231 = v75 + 1;
      v232 = a1 + 1130;
      do
      {
        memcpy(v232, &v85[v80 + v138], v140);
        v233 = v76 + 1;
        v234 = v76 + 1 >= v319 || v76 <= -1;
        v235 = v318;
        if (v234)
        {
          v235 = 0;
        }

        v85 += v235;
        v232 = (v232 + v143);
        ++v76;
      }

      while (v231 != v233);
    }

    v61 = __b->i64 + v288;
    v63 = *&v292[8 * (v290 != 0) + 8 + 4 * (v291 != 0) + 2 * a20];
    v64 = v143;
    v65 = v302;
    v62 = v289;
    v66 = a12;
    goto LABEL_332;
  }

  v92 = 2 * &v79[v72] - 2 * v72;
  v93 = v92 - 2 * v77;
  if (v76 <= 0)
  {
    v92 -= 2 * v77;
  }

  if (v76 >= v28)
  {
    v94 = (v93 + 2 * v55 * (v28 - 1));
  }

  else
  {
    v94 = v92;
  }

  v95 = -v72 & (v72 >> 31);
  if (v95 >= v81)
  {
    v95 = v81;
  }

  v96 = __OFSUB__(v71, v29);
  v97 = v71 - v29;
  if (v97 < 0 != v96)
  {
    v98 = 0;
  }

  else
  {
    v98 = v97 + 1;
  }

  if (v98 >= v81)
  {
    v99 = v81;
  }

  else
  {
    v99 = v98;
  }

  v100 = v95;
  v101 = v99 + v95;
  v312 = 2 * (v81 - (v99 + v95));
  v313 = v29 - 1;
  v314 = v81 - (v99 + v95);
  v102 = v99;
  v308 = v81;
  if (v95)
  {
    v310 = v95 & 0xFFFFFFFFFFFFFFF0;
    v282 = 2 * v310;
    v287 = v95 & 0xCLL;
    v300 = v95 & 0xFFFFFFFFFFFFFFFCLL;
    v298 = 2 * v300;
    if (v99)
    {
      v304 = v99 & 0xFFFFFFFFFFFFFFF0;
      v281 = 2 * v304;
      v284 = v99 & 0xCLL;
      v103 = v99 & 0xFFFFFFFFFFFFFFFCLL;
      v293 = 2 * v103;
      v295 = v103;
      if (v81 == v101)
      {
        v104 = a1 + 1131;
        v105 = 2 * v81;
        v106 = v312 + 2 * v95;
        v107 = a1[1130].u64 + v106;
        v108 = -v103;
        while (1)
        {
          v111 = *v94;
          if (v100 < 4)
          {
            v112 = 0;
            v113 = v84;
            goto LABEL_84;
          }

          if (v100 >= 0x10)
          {
            v115 = vdupq_n_s16(v111);
            v116 = v310;
            v117 = v104;
            do
            {
              v117[-1] = v115;
              *v117 = v115;
              v117 += 2;
              v116 -= 16;
            }

            while (v116);
            if (v310 == v100)
            {
              goto LABEL_86;
            }

            v114 = v310;
            if (!v287)
            {
              v113 = (v84 + v282);
              v112 = v310;
LABEL_84:
              v121 = v100 - v112;
              do
              {
                v113->i16[0] = v111;
                v113 = (v113 + 2);
                --v121;
              }

              while (v121);
              goto LABEL_86;
            }
          }

          else
          {
            v114 = 0;
          }

          v113 = (v84 + v298);
          v118 = vdup_n_s16(v111);
          v119 = 2 * v114;
          v120 = v114 - (v100 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            *&v84->i8[v119] = v118;
            v119 += 8;
            v120 += 4;
          }

          while (v120);
          v112 = v300;
          if (v300 != v100)
          {
            goto LABEL_84;
          }

LABEL_86:
          v122 = &v84->i16[v100 + v314];
          v123 = v94[v313];
          if (v102 < 4)
          {
            v124 = v102;
            goto LABEL_100;
          }

          if (v102 >= 0x10)
          {
            v126 = vdupq_n_s16(v123);
            v127 = v304;
            v128 = v106;
            do
            {
              *(v84 + v128) = v126;
              *(v104 + v128) = v126;
              v128 += 32;
              v127 -= 16;
            }

            while (v127);
            if (v304 == v102)
            {
              goto LABEL_64;
            }

            v125 = v304;
            if (!v284)
            {
              v122 = (v122 + v281);
              v132 = v304;
LABEL_99:
              v124 = v102 - v132;
              do
              {
LABEL_100:
                *v122++ = v123;
                --v124;
              }

              while (v124);
              goto LABEL_64;
            }
          }

          else
          {
            v125 = 0;
          }

          v122 = (v122 + v293);
          v129 = vdup_n_s16(v123);
          v130 = (v107 + 2 * v125);
          v131 = v108 + v125;
          do
          {
            *v130++ = v129;
            v131 += 4;
          }

          while (v131);
          v132 = v295;
          if (v295 != v102)
          {
            goto LABEL_99;
          }

LABEL_64:
          v84 = (v84 + v105);
          if (v76 + 1 >= v28 || v76 <= -1)
          {
            v110 = 0;
          }

          else
          {
            v110 = v55;
          }

          v94 += v110;
          v104 = (v104 + v105);
          v107 += v105;
          ++v76;
          if (!--v82)
          {
            goto LABEL_254;
          }
        }
      }

      v192 = a1 + 1131;
      v193 = 2 * v81;
      v286 = -(v95 & 0xFFFFFFFFFFFFFFFCLL);
      v283 = v312 + 2 * v95;
      v194 = a1[1130].u64 + v283;
      v285 = -v103;
      while (1)
      {
        v197 = *v94;
        if (v100 < 4)
        {
          v198 = 0;
          v199 = v84;
          goto LABEL_219;
        }

        if (v100 >= 0x10)
        {
          v201 = vdupq_n_s16(v197);
          v202 = v310;
          v203 = v192;
          do
          {
            v203[-1] = v201;
            *v203 = v201;
            v203 += 2;
            v202 -= 16;
          }

          while (v202);
          if (v310 == v100)
          {
            goto LABEL_221;
          }

          v200 = v310;
          if (!v287)
          {
            v199 = (v84 + v282);
            v198 = v310;
LABEL_219:
            v207 = v100 - v198;
            do
            {
              v199->i16[0] = v197;
              v199 = (v199 + 2);
              --v207;
            }

            while (v207);
            goto LABEL_221;
          }
        }

        else
        {
          v200 = 0;
        }

        v199 = (v84 + v298);
        v204 = vdup_n_s16(v197);
        v205 = 2 * v200;
        v206 = v286 + v200;
        do
        {
          *&v84->i8[v205] = v204;
          v205 += 8;
          v206 += 4;
        }

        while (v206);
        v198 = v300;
        if (v300 != v100)
        {
          goto LABEL_219;
        }

LABEL_221:
        memcpy(v84 + 2 * v100, &v94[v316 + v100], v312);
        v208 = v94[v313];
        v209 = &v84->i16[v100 + v314];
        if (v102 < 4)
        {
          v210 = 0;
          v211 = v319;
          v212 = v318;
          goto LABEL_234;
        }

        if (v102 >= 0x10)
        {
          v214 = vdupq_n_s16(v208);
          v215 = v304;
          v216 = v283;
          v211 = v319;
          v212 = v318;
          do
          {
            *(v84 + v216) = v214;
            *(v192 + v216) = v214;
            v216 += 32;
            v215 -= 16;
          }

          while (v215);
          if (v304 == v102)
          {
            goto LABEL_199;
          }

          v213 = v304;
          if (!v284)
          {
            v209 = (v209 + v281);
            v210 = v304;
LABEL_234:
            v220 = v102 - v210;
            do
            {
              *v209++ = v208;
              --v220;
            }

            while (v220);
            goto LABEL_199;
          }
        }

        else
        {
          v213 = 0;
          v211 = v319;
          v212 = v318;
        }

        v209 = (v209 + v293);
        v217 = vdup_n_s16(v208);
        v218 = (v194 + 2 * v213);
        v219 = v285 + v213;
        do
        {
          *v218++ = v217;
          v219 += 4;
        }

        while (v219);
        v210 = v295;
        if (v295 != v102)
        {
          goto LABEL_234;
        }

LABEL_199:
        v84 = (v84 + v193);
        if (v76 + 1 >= v211 || v76 <= -1)
        {
          v196 = 0;
        }

        else
        {
          v196 = v212;
        }

        v94 += v196;
        v192 = (v192 + v193);
        v194 += v193;
        ++v76;
        if (!--v82)
        {
          goto LABEL_254;
        }
      }
    }

    if (v81 == v101)
    {
      v172 = a1 + 1131;
      v173 = 2 * v81;
      while (1)
      {
        v176 = *v94;
        if (v95 < 4)
        {
          v177 = 0;
          v178 = v84;
          goto LABEL_184;
        }

        if (v95 >= 0x10)
        {
          v180 = vdupq_n_s16(v176);
          v181 = v95 & 0xFFFFFFFFFFFFFFF0;
          v182 = v172;
          do
          {
            v182[-1] = v180;
            *v182 = v180;
            v182 += 2;
            v181 -= 16;
          }

          while (v181);
          if (v310 == v95)
          {
            goto LABEL_164;
          }

          v179 = v95 & 0xFFFFFFFFFFFFFFF0;
          if (!v287)
          {
            v178 = (v84 + v282);
            v177 = v95 & 0xFFFFFFFFFFFFFFF0;
LABEL_184:
            v186 = v95 - v177;
            do
            {
              v178->i16[0] = v176;
              v178 = (v178 + 2);
              --v186;
            }

            while (v186);
            goto LABEL_164;
          }
        }

        else
        {
          v179 = 0;
        }

        v178 = (v84 + v298);
        v183 = vdup_n_s16(v176);
        v184 = 2 * v179;
        v185 = v179 - (v95 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          *&v84->i8[v184] = v183;
          v184 += 8;
          v185 += 4;
        }

        while (v185);
        v177 = v95 & 0xFFFFFFFFFFFFFFFCLL;
        if (v300 != v95)
        {
          goto LABEL_184;
        }

LABEL_164:
        v84 = (v84 + v173);
        if (v76 + 1 >= v28 || v76 <= -1)
        {
          v175 = 0;
        }

        else
        {
          v175 = v55;
        }

        v94 += v175;
        v172 = (v172 + v173);
        ++v76;
        if (!--v82)
        {
          goto LABEL_254;
        }
      }
    }

    v261 = a1 + 1131;
    v262 = 2 * v81;
    v263 = v95;
    while (1)
    {
      v266 = *v94;
      if (v100 < 4)
      {
        v267 = 0;
        v268 = v84;
        goto LABEL_321;
      }

      if (v100 >= 0x10)
      {
        v270 = vdupq_n_s16(v266);
        v271 = v310;
        v272 = v261;
        do
        {
          v272[-1] = v270;
          *v272 = v270;
          v272 += 2;
          v271 -= 16;
        }

        while (v271);
        if (v310 == v100)
        {
          goto LABEL_301;
        }

        v269 = v310;
        if (!v287)
        {
          v268 = (v84 + v282);
          v267 = v310;
LABEL_321:
          v276 = v100 - v267;
          do
          {
            v268->i16[0] = v266;
            v268 = (v268 + 2);
            --v276;
          }

          while (v276);
          goto LABEL_301;
        }
      }

      else
      {
        v269 = 0;
      }

      v268 = (v84 + v298);
      v273 = vdup_n_s16(v266);
      v274 = 2 * v269;
      v275 = v269 - (v100 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        *&v84->i8[v274] = v273;
        v274 += 8;
        v275 += 4;
      }

      while (v275);
      v267 = v300;
      if (v300 != v100)
      {
        goto LABEL_321;
      }

LABEL_301:
      memcpy(&v84->i8[v263 * 2], &v94[v316 + v263], v312);
      v84 = (v84 + v262);
      v264 = v76 + 1 >= v319 || v76 <= -1;
      v265 = v318;
      if (v264)
      {
        v265 = 0;
      }

      v94 += v265;
      v261 = (v261 + v262);
      ++v76;
      if (!--v82)
      {
        goto LABEL_254;
      }
    }
  }

  if (v99)
  {
    v311 = v99 & 0xFFFFFFFFFFFFFFF0;
    v294 = 2 * v311;
    v296 = v99 & 0xCLL;
    v149 = v99 & 0xFFFFFFFFFFFFFFFCLL;
    v301 = 2 * (v102 & 0xFFFFFFFFFFFFFFFCLL);
    v305 = v102 & 0xFFFFFFFFFFFFFFFCLL;
    if (v81 == v101)
    {
      v150 = (a1 + 2 * v95 + v312);
      v151 = v150 + 1131;
      v152 = 2 * v81;
      v153 = v150 + 1130;
      while (1)
      {
        v156 = &v84->i16[v95 + v314];
        v157 = v94[v313];
        if (v102 < 4)
        {
          v158 = 0;
          goto LABEL_147;
        }

        if (v102 >= 0x10)
        {
          v160 = vdupq_n_s16(v157);
          v161 = v311;
          v162 = v151;
          do
          {
            v162[-1] = v160;
            *v162 = v160;
            v162 += 2;
            v161 -= 16;
          }

          while (v161);
          if (v311 == v102)
          {
            goto LABEL_127;
          }

          v159 = v311;
          if (!v296)
          {
            v156 = (v156 + v294);
            v158 = v311;
LABEL_147:
            v166 = v102 - v158;
            do
            {
              *v156++ = v157;
              --v166;
            }

            while (v166);
            goto LABEL_127;
          }
        }

        else
        {
          v159 = 0;
        }

        v156 = (v156 + v301);
        v163 = vdup_n_s16(v157);
        v164 = (v153 + 2 * v159);
        v165 = v159 - v149;
        do
        {
          *v164++ = v163;
          v165 += 4;
        }

        while (v165);
        v158 = v102 & 0xFFFFFFFFFFFFFFFCLL;
        if (v305 != v102)
        {
          goto LABEL_147;
        }

LABEL_127:
        v84 = (v84 + 2 * v308);
        if (v76 + 1 >= v28 || v76 <= -1)
        {
          v155 = 0;
        }

        else
        {
          v155 = v55;
        }

        v94 += v155;
        v151 = (v151 + v152);
        v153 = (v153 + v152);
        ++v76;
        if (!--v82)
        {
          goto LABEL_254;
        }
      }
    }

    v236 = (a1 + 2 * v95 + v312);
    v237 = v236 + 1131;
    v238 = a1 + 1130;
    v239 = 2 * v81;
    v240 = v236 + 1130;
    v299 = -v149;
    v241 = v95;
    while (1)
    {
      memcpy(&v238->i8[v241 * 2], &v94[v316 + v241], v312);
      v244 = v94[v313];
      v245 = &v238->i16[v314 + v241];
      if (v102 < 4)
      {
        v246 = 0;
        v247 = v319;
        v248 = v318;
        goto LABEL_289;
      }

      if (v102 >= 0x10)
      {
        v250 = vdupq_n_s16(v244);
        v251 = v311;
        v252 = v237;
        v247 = v319;
        v248 = v318;
        do
        {
          v252[-1] = v250;
          *v252 = v250;
          v252 += 2;
          v251 -= 16;
        }

        while (v251);
        if (v311 == v102)
        {
          goto LABEL_269;
        }

        v249 = v311;
        if (!v296)
        {
          v245 = (v245 + v294);
          v246 = v311;
LABEL_289:
          v256 = v102 - v246;
          do
          {
            *v245++ = v244;
            --v256;
          }

          while (v256);
          goto LABEL_269;
        }
      }

      else
      {
        v249 = 0;
        v247 = v319;
        v248 = v318;
      }

      v245 = (v245 + v301);
      v253 = vdup_n_s16(v244);
      v254 = (v240 + 2 * v249);
      v255 = v299 + v249;
      do
      {
        *v254++ = v253;
        v255 += 4;
      }

      while (v255);
      v246 = v102 & 0xFFFFFFFFFFFFFFFCLL;
      if (v305 != v102)
      {
        goto LABEL_289;
      }

LABEL_269:
      v238 = (v238 + 2 * v308);
      if (v76 + 1 >= v247 || v76 <= -1)
      {
        v243 = 0;
      }

      else
      {
        v243 = v248;
      }

      v94 += v243;
      v237 = (v237 + v239);
      v240 = (v240 + v239);
      ++v76;
      if (!--v82)
      {
        goto LABEL_254;
      }
    }
  }

  if (v81 != v101)
  {
    v224 = v75 + 1;
    v225 = a1 + 1130;
    v226 = 2 * v81;
    do
    {
      memcpy(v225, &v94[v316 + v100], v312);
      v227 = v76 + 1;
      v228 = v76 + 1 >= v319 || v76 <= -1;
      v229 = v318;
      if (v228)
      {
        v229 = 0;
      }

      v94 += v229;
      v225 = (v225 + v226);
      ++v76;
    }

    while (v224 != v227);
  }

LABEL_254:
  v86 = __b->i64 + 2 * v288;
  v87 = 2 * v302;
  v89 = *&v292[8 * (v290 != 0) + 24 + 4 * (v291 != 0) + 2 * a20];
  v90 = v308;
  v88 = v289;
  v91 = a12;
LABEL_255:

  return v89(v86, v90, v87, v88, v91);
}

void inverse_transform_block_inter(uint64_t a1, int a2, int a3, uint8x8_t *a4, uint64_t a5, int a6)
{
  v8 = *(a1 + 136 * a2);
  if ((*(*(a1 + 528) + 152) & 8) != 0)
  {
    v10 = (2 * a4);
    if (*(a1 + 628))
    {
      v11 = *(a1 + 624);
      if (a6 >= 2)
      {
        vpx_highbd_iwht4x4_16_add_c(v8->i32, v10->i16, a5, v11);
        goto LABEL_34;
      }

      vpx_highbd_iwht4x4_1_add_c(v8->i32, v10, a5, v11);
      goto LABEL_20;
    }

    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v18 = *(a1 + 624);
        if (a6 == 1)
        {
          vpx_highbd_idct16x16_1_add_neon(v8->i32, v10, a5, v18);
          goto LABEL_21;
        }

        if (a6 > 10)
        {
          if (a6 > 0x26)
          {
            vpx_highbd_idct16x16_256_add_neon(v8, v10, a5, v18);
          }

          else
          {
            vpx_highbd_idct16x16_38_add_neon(v8, v10, a5, v18);
          }

          goto LABEL_60;
        }

        vpx_highbd_idct16x16_10_add_neon(v8, v10, a5, v18);
      }

      else if (a3 == 3)
      {
        v14 = *(a1 + 624);
        if (a6 == 1)
        {
          vpx_highbd_idct32x32_1_add_neon(v8->i32, v10, a5, v14);
          goto LABEL_21;
        }

        if (a6 > 34)
        {
          if (a6 > 0x87)
          {
            vpx_highbd_idct32x32_1024_add_neon(v8, v10, a5);
          }

          else
          {
            vpx_highbd_idct32x32_135_add_neon(v8, v10, a5, v14);
          }

          goto LABEL_60;
        }

        vpx_highbd_idct32x32_34_add_neon(v8, v10, a5, v14);
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v13 = *(a1 + 624);
        if (a6 == 1)
        {
          vpx_highbd_idct8x8_1_add_neon(v8->i32, v10, a5, v13);
          goto LABEL_21;
        }

        if (a6 > 12)
        {
          vpx_highbd_idct8x8_64_add_neon(v8, v10, a5, v13);
          goto LABEL_60;
        }

        vpx_highbd_idct8x8_12_add_neon(v8, v10, a5, v13);
      }
    }

    else
    {
      v15 = *(a1 + 624);
      if (a6 >= 2)
      {
        vpx_highbd_idct4x4_16_add_neon(v8, v10->i64, a5, v15);
        goto LABEL_34;
      }

      v25 = vdupq_n_s16(~(-1 << v15));
      v26 = vdupq_n_s16((((11585 * ((3036938240 * v8->i32[0] + 0x80000000) >> 32) + 0x2000) >> 14) + 8) >> 4);
      v27.i64[0] = v10->i64[0];
      v28 = 2 * a5;
      v27.i64[1] = *(v10->i64 + v28);
      v29 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v26, v27), v25), 0);
      v10->i64[0] = v29.i64[0];
      *(v10->i64 + v28) = vextq_s8(v29, v29, 8uLL).u64[0];
      v30 = (v10->i64 + v28 + v28);
      v29.i64[0] = *v30;
      v29.i64[1] = *(v30 + v28);
      v31 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v26, v29), v25), 0);
      *v30 = v31.i64[0];
      *(v30 + v28) = vextq_s8(v31, v31, 8uLL).u64[0];
    }

LABEL_20:
    if (a6 != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (*(a1 + 628))
  {
    v9 = *(a1 + 136 * a2);
    if (a6 >= 2)
    {
      vpx_iwht4x4_16_add_c(v9, a4, a5);
LABEL_34:
      if (a3 <= 2 && a6 <= 10)
      {
        v16 = (64 << a3);
        v17 = v8;

LABEL_38:
        bzero(v17, v16);
        return;
      }

LABEL_60:
      if (a3 == 3 && a6 <= 34)
      {
        v17 = v8;
        v16 = 1024;
      }

      else
      {
        v16 = 4 * (16 << (2 * a3));
        v17 = v8;
      }

      goto LABEL_38;
    }

    vpx_iwht4x4_1_add_c(v9, a4, a5);
    goto LABEL_20;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v12 = *(a1 + 136 * a2);
      if (a6 == 1)
      {
        vpx_idct8x8_1_add_neon(v12->i16, a4, a5);
LABEL_21:
        v8->i32[0] = 0;
        return;
      }

      if (a6 > 12)
      {
        vpx_idct8x8_64_add_neon(v12, a4, a5);
        goto LABEL_60;
      }

      vpx_idct8x8_12_add_neon(v12, a4, a5);
    }

    else
    {
      if (a6 >= 2)
      {
        vpx_idct4x4_16_add_neon(*(a1 + 136 * a2), a4, a5);
        goto LABEL_34;
      }

      v19 = vdupq_n_s16((((46340 * ((46340 * v8->i16[0] + 0x8000) >> 16) + 0x8000) >> 16) + 8) >> 4);
      v20.i32[0] = a4->i32[0];
      v21 = (a4 + a5);
      v20.i32[1] = *v21;
      v22 = (v21 + a5);
      v23 = vqmovun_s16(vaddw_u8(v19, v20));
      a4->i32[0] = v23.i32[0];
      *(a4->i32 + a5) = v23.i32[1];
      v24 = (v22 + a5);
      v23.i32[0] = *v22;
      v23.i32[1] = *v24;
      *v19.i8 = vqmovun_s16(vaddw_u8(v19, v23));
      *v22 = v19.i32[0];
      *v24 = v19.i32[1];
    }

    goto LABEL_20;
  }

  if (a3 == 2)
  {
    vp9_idct16x16_add(*(a1 + 136 * a2), a4, a5, a6);
    goto LABEL_20;
  }

  if (a3 == 3)
  {
    vp9_idct32x32_add(*(a1 + 136 * a2), a4, a5, a6);
    goto LABEL_20;
  }
}

void parse_block(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6, char a7)
{
  v12 = 1 << (a6 - 1);
  v13 = 1 << (a7 - 1);
  v14 = *(a2 + 1976) - a4;
  if (v12 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = *(a2 + 1968) - a3;
  if (v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  v18 = set_offsets(a2 + 656, a1 + 13328, a5, a3, a4, 1 << (a6 - 1), 1 << (a7 - 1), v15, v17, a6, SHIWORD(a6), a7);
  if (a5 >= 3 && *(a2 + 972) && ss_size_lookup[4 * a5 + 2 * *(a2 + 972) + *(a2 + 976)] == 13)
  {
    vpx_internal_error(*(a1 + 13968), 7, "Invalid block size.");
  }

  vp9_read_mode_info(a1, a2, a3, a4, v15, v17, v19, v20, v21, v22, v23, v24);
  if (v18[3])
  {
    bzero(*(a1 + 13392), *(a1 + 13440));
    bzero(*(a1 + 13400), *(a1 + 13442));
    bzero(*(a1 + 13528), *(a1 + 13576));
    bzero(*(a1 + 13536), *(a1 + 13578));
    bzero(*(a1 + 13664), *(a1 + 13712));
    bzero(*(a1 + 13672), *(a1 + 13714));
  }

  if (v18[8] <= 0)
  {
    predict_recon_intra(a1 + 13328, v18, a1, parse_intra_block_row_mt);
  }

  else if (!v18[3])
  {
    v25 = *(a1 + 13328);
    v28 = *(a1 + 13592);
    v29 = *(a1 + 13456);
    v26 = *(a1 + 13728);
    v27 = predict_recon_inter(a1 + 13328, v18, a1, parse_inter_block_row_mt);
    if (a5 >= 3 && !v27)
    {
      v18[3] = 1;
      *(a1 + 13328) = v25;
      *(a1 + 13456) = v29;
      *(a1 + 13592) = v28;
      *(a1 + 13728) = v26;
    }
  }

  *(a1 + 13960) |= (*(a1 + 28) - 65) < 0x3FFFFFBF;
}

uint64_t set_offsets(uint64_t a1, uint64_t a2, char a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, __int16 a11, char a12)
{
  v12 = *(a1 + 1324);
  v13 = a5 + v12 * a4;
  v14 = *(a1 + 1480);
  v15 = v14 + 8 * v13;
  *(a2 + 448) = v15;
  v16 = (*(a1 + 1424) + 68 * v13);
  *v15 = v16;
  *v16 = a3;
  if (a9 >= 1)
  {
    v17 = 0;
    v18 = vdupq_n_s64(v16);
    v19 = v14 + 8 * v13 + 16;
    v20 = 8 * v12;
    v21 = v15;
    do
    {
      if ((v17 == 0) < a8)
      {
        v22 = v17 == 0;
        v23 = (__PAIR128__(a8, v17) - 1) >> 64;
        if (v23 >= 4)
        {
          v24 = v23 & 0xFFFFFFFFFFFFFFFCLL | v22;
          v25 = 8 * v22;
          v26 = (v19 + 8 * v22);
          v27 = (v21 + v25);
          v28 = v23 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            *v27 = v18;
            v27 += 2;
            *v26 = v18;
            v26 += 2;
            v28 -= 4;
          }

          while (v28);
          if (v23 == (v23 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_3;
          }
        }

        else
        {
          v24 = v17 == 0;
        }

        do
        {
          *(v21 + 8 * v24++) = v16;
        }

        while (a8 != v24);
      }

LABEL_3:
      ++v17;
      v19 += v20;
      v21 += v20;
    }

    while (v17 != a9);
  }

  v29 = *(a2 + 8);
  v30 = *(a2 + 12);
  *(a2 + 112) = (2 * a6) >> v29;
  *(a2 + 114) = (2 * a7) >> v30;
  *(a2 + 116) = a10 - v29;
  *(a2 + 117) = a12 - v30;
  v31 = *(a2 + 144);
  v32 = *(a2 + 148);
  *(a2 + 248) = (2 * a6) >> v31;
  *(a2 + 250) = (2 * a7) >> v32;
  v33 = *(a2 + 280);
  *(a2 + 252) = a10 - v31;
  v34 = *(a2 + 284);
  *(a2 + 253) = a12 - v32;
  *(a2 + 384) = (2 * a6) >> v33;
  v35 = 2 * (a4 & 7);
  *(a2 + 386) = (2 * a7) >> v34;
  v36 = *(a2 + 536) + ((2 * a5) >> v29);
  *(a2 + 388) = a10 - v33;
  *(a2 + 389) = a12 - v34;
  *(a2 + 64) = v36;
  *(a2 + 72) = a2 + 560 + (v35 >> v30);
  *(a2 + 200) = *(a2 + 544) + ((2 * a5) >> v31);
  *(a2 + 208) = a2 + 560 + (v35 >> v32) + 16;
  *(a2 + 336) = *(a2 + 552) + ((2 * a5) >> v33);
  *(a2 + 344) = a2 + 560 + (v35 >> v34) + 32;
  v37 = *(a1 + 1320);
  v38 = (*(a1 + 1312) - (a7 + a4)) << 6;
  *(a2 + 496) = -64 * a4;
  *(a2 + 500) = v38;
  *(a2 + 488) = -64 * a5;
  *(a2 + 492) = (v37 - (a6 + a5)) << 6;
  if (!a4)
  {
    *(a2 + 464) = 0;
    if (*(a2 + 432) < a5)
    {
      goto LABEL_14;
    }

LABEL_16:
    v39 = 0;
    goto LABEL_17;
  }

  *(a2 + 464) = *(v15 - 8 * *(a2 + 440));
  if (*(a2 + 432) >= a5)
  {
    goto LABEL_16;
  }

LABEL_14:
  v39 = *(v15 - 8);
LABEL_17:
  *(a2 + 456) = v39;
  v40 = *(a1 + 18248) + 224 * *(a1 + 944);
  v41 = *(v40 + 144);
  v42 = *(v40 + 152);
  v43 = *(v40 + 160);
  v44 = *(v40 + 104);
  LODWORD(v40) = *(v40 + 124);
  v45 = 8 * a5;
  v46 = 8 * a4;
  *(a2 + 16) = v41 + v44 * (v46 >> v30) + (v45 >> v29);
  *(a2 + 24) = v44;
  *(a2 + 152) = v42 + v40 * (v46 >> v32) + (v45 >> v31);
  *(a2 + 160) = v40;
  *(a2 + 288) = v43 + v40 * (v46 >> v34) + (v45 >> v33);
  *(a2 + 296) = v40;
  return *v15;
}

uint64_t parse_intra_block_row_mt(uint64_t result, unsigned __int8 *a2, int a3, int a4, int a5, unsigned int a6)
{
  v6 = a2 + 6;
  if (!a3)
  {
    v6 = a2 + 1;
    if (*a2 <= 2u)
    {
      v6 = (**(result + 13776) + 12 * (a5 + 2 * a4) + 20);
    }
  }

  if (!a2[3])
  {
    v7 = (result + 13328 + 136 * a3);
    if (a3 || *(result + 13956))
    {
      v8 = (&vp9_default_scan_orders + 3 * a6);
    }

    else
    {
      v8 = (&vp9_scan_orders + 12 * a6 + 3 * intra_mode_to_tx_type_lookup[*v6]);
    }

    v9 = a6;
    result = vp9_decode_block_tokens(result, a3, v8, a5, a4, a6, a2[4]);
    v10 = v7[16];
    *v10 = result;
    *v7 += 4 * (16 << (2 * v9));
    v7[16] = v10 + 1;
  }

  return result;
}

uint64_t parse_inter_block_row_mt(uint64_t a1, uint64_t a2, int a3, int a4, int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a1 + 136 * a3;
  result = vp9_decode_block_tokens(a1, a3, &vp9_default_scan_orders + 3 * a6, a5, a4, a6, *(a2 + 4));
  v9 = *(v7 + 13456);
  *v9 = result;
  *(v7 + 13328) += 4 * (16 << (2 * v6));
  *(v7 + 13456) = v9 + 1;
  return result;
}

BOOL tile_worker_hook(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 18888);
  v88 = a1 + 13752;
  v5 = *(a2 + 18888);
  v87 = 0;
  v6 = *(a1 + 13304);
  v7 = *(a1 + 13312);
  v84 = *(a1 + 8);
  if (!setjmp((a1 + 69372)))
  {
    v82 = -1 << v5;
    v83 = v6;
    v81 = (a1 + 69280);
    *(a1 + 69368) = 1;
    *(a1 + 13960) = 0;
    v80 = (a1 + 13984);
    v79 = (a2 + 2036);
    v9 = v4;
    do
    {
      v10 = a2 + 19032 + 24 * v84;
      bzero(v80, 0x1000uLL);
      v15 = *(v10 + 16);
      v16 = *(a2 + 1968);
      v17.i32[0] = 0;
      v17.i32[1] = 8 * ((v16 + 7) >> 3 >> v9[1]);
      v18 = vdup_n_s32(v16);
      v19 = COERCE_DOUBLE(vmin_s32(v17, v18));
      *v88 = v19;
      v20 = *(a2 + 1976);
      v21 = (v20 + 7) >> 3;
      v22 = v21 * v15;
      v23 = 8 * (v22 >> *v9);
      if (v23 >= v20)
      {
        v23 = *(a2 + 1976);
      }

      v24 = 8 * ((v21 + v22) >> *v9);
      if (v24 >= v20)
      {
        v24 = *(a2 + 1976);
      }

      *(v88 + 8) = v23;
      *(v88 + 12) = v24;
      v25 = *v10;
      v26 = *(v10 + 8);
      v27 = *(a2 + 20664);
      v28 = *(a2 + 20672);
      if ((v26 - 1) >= *a1 - *v10)
      {
        vpx_internal_error(v81, 7, "Truncated packet or corrupt tile length");
      }

      if (vpx_reader_init(a1 + 16, v25, v26, v27, v28, v19, *&v18, v11, v12, v13, v14))
      {
        vpx_internal_error(v81, 2, "Failed to allocate BOOL decoder %d", 1);
      }

      *(a1 + 13328) = v80;
      *(a1 + 13864) = *(a2 + 18920);
      v29 = *(a2 + 2020);
      *(a1 + 13408) = *(a2 + 2004);
      *(a1 + 13424) = v29;
      v30 = *(a2 + 1976);
      v31 = *(a2 + 18920);
      *(a1 + 13832) = *(a2 + 5560);
      *(a1 + 13464) = v80;
      *(a1 + 13872) = v31 + 2 * ((v30 + 7) & 0x7FFFFFFFFFFFFFF8);
      v32 = *(a2 + 2052);
      *(a1 + 13544) = *v79;
      *(a1 + 13560) = v32;
      v33 = *(a2 + 1976);
      v34 = *(a2 + 18920);
      *(a1 + 13832) = *(a2 + 5560);
      *(a1 + 13600) = v80;
      *(a1 + 13880) = v34 + 4 * ((v33 + 7) & 0x3FFFFFFFFFFFFFF8);
      v35 = *(a2 + 2052);
      *(a1 + 13680) = *v79;
      *(a1 + 13696) = v35;
      v36 = *(a2 + 5560);
      LODWORD(v34) = *(a2 + 1932);
      v37 = *(a2 + 1980);
      v38 = *(a2 + 18912);
      *(a1 + 13832) = v36;
      *(a1 + 13936) = v38;
      *(a1 + 13768) = v37;
      if (v34)
      {
        v39 = (v36 + 126);
        if (*(a2 + 1948))
        {
          v39 = &vp9_kf_partition_probs;
        }
      }

      else
      {
        v39 = &vp9_kf_partition_probs;
      }

      *(a1 + 13808) = v39;
      *(a1 + 13968) = v81;
      for (i = *v88; ; i = v86 + 8)
      {
        v86 = i;
        if (i >= *(v88 + 4))
        {
          break;
        }

        *(a1 + 13904) = 0u;
        *(a1 + 13920) = 0u;
        *(a1 + 13888) = 0u;
        *(a1 + 13944) = 0;
        for (j = *(v88 + 8); j < *(v88 + 12); j = (j + 8))
        {
          decode_partition(a1, a2, v86, j, 0xCu, 4);
        }

        if (v9[453] && *(a2 + 5384) && !v9[3])
        {
          v42 = *(a2 + 1968);
          v43 = 1 << *v9;
          v44 = *(a1 + 13960);
          pthread_mutex_lock(*(v7 + 48));
          *(v7 + 80) |= v44;
          pthread_mutex_unlock(*(v7 + 48));
          v45 = v86 >> 3;
          pthread_mutex_lock((*(v7 + 56) + (v45 << 6)));
          v46 = *(v7 + 72);
          v47 = *(v46 + 4 * (v86 >> 3)) + 1;
          *(v46 + 4 * (v86 >> 3)) = v47;
          if (v47 == v43)
          {
            v48 = (*(v7 + 64) + 48 * v45);
            if (((v42 + 7) >> 3) - 1 == v86 >> 3)
            {
              pthread_cond_broadcast(v48);
            }

            else
            {
              pthread_cond_signal(v48);
            }
          }

          pthread_mutex_unlock((*(v7 + 56) + (v45 << 6)));
        }
      }

      if ((*(a2 + 19032 + 24 * v84 + 16) ^ v82) == 0xFFFFFFFF)
      {
        v49 = *(a1 + 40);
        if ((*(a1 + 28) - 9) <= 0x36)
        {
          v50 = *(a1 + 28);
          do
          {
            v51 = v50 - 8;
            v52 = v49 - 1;
            v53 = v50 - 17;
            --v49;
            v50 -= 8;
          }

          while (v53 < 0x37);
          *(a1 + 28) = v51;
          *(a1 + 40) = v52;
          v49 = v52;
        }

        v87 = v49;
      }

      v54 = *(a1 + 13960);
      if (v54)
      {
        break;
      }

      v55 = v84++;
    }

    while (v55 < *(a1 + 12));
    if (!v9[453])
    {
      goto LABEL_70;
    }

    v56 = *(a1 + 12);
    v78 = v9;
    if (v84 < v56 && *(a2 + 5384) && !v9[3])
    {
      v85 = v84 + 1;
      v67 = *(a2 + 1968);
      v57 = *(a1 + 13960);
      if (v67 >= 1)
      {
        v68 = 1 << *v78;
        v69 = v56 - v85;
        do
        {
          v70 = v69;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          do
          {
            pthread_mutex_lock(*(v7 + 48));
            *(v7 + 80) |= 1u;
            pthread_mutex_unlock(*(v7 + 48));
            pthread_mutex_lock((*(v7 + 56) + v72));
            v75 = *(v7 + 72);
            v76 = *(v75 + 4 * v74) + 1;
            *(v75 + 4 * v74) = v76;
            if (v76 == v68)
            {
              v77 = (*(v7 + 64) + v73);
              if (((v67 + 7) >> 3) - 1 == v74)
              {
                pthread_cond_broadcast(v77);
              }

              else
              {
                pthread_cond_signal(v77);
              }
            }

            pthread_mutex_unlock((*(v7 + 56) + v72));
            v73 += 48;
            v72 += 64;
            ++v74;
            v71 += 8;
          }

          while (v67 > v71);
          v69 = v70 - 1;
        }

        while (v70);
        v54 = *(a1 + 13960);
        v57 = v54;
        if (!v78[453])
        {
          goto LABEL_70;
        }
      }
    }

    else
    {
      v57 = *(a1 + 13960);
    }

    v54 = v57;
    if (!v57)
    {
      if (*(a2 + 5384) && !v78[3])
      {
        vp9_loopfilter_rows(v83, v7);
        v54 = *(a1 + 13960);
      }

      else
      {
        v54 = 0;
      }
    }

LABEL_70:
    *a1 = v87;
    return v54 == 0;
  }

  *(a1 + 69368) = 0;
  *(a1 + 13960) = 1;
  *a1 = 0;
  if (!v4[453] || !*(a2 + 5384) || v4[3])
  {
    return 0;
  }

  v58 = *(a1 + 12) - v84;
  v59 = *(a2 + 1968);
  v60 = 1 << *v4;
  do
  {
    v61 = v58;
    if (v59 > 0)
    {
      for (k = 0; k < v59; k += 8)
      {
        pthread_mutex_lock(*(v7 + 48));
        *(v7 + 80) |= 1u;
        pthread_mutex_unlock(*(v7 + 48));
        v63 = k >> 3;
        pthread_mutex_lock((*(v7 + 56) + (v63 << 6)));
        v64 = *(v7 + 72);
        v65 = *(v64 + 4 * (k >> 3)) + 1;
        *(v64 + 4 * (k >> 3)) = v65;
        if (v65 == v60)
        {
          v66 = (*(v7 + 64) + 48 * v63);
          if (((v59 + 7) >> 3) - 1 == v63)
          {
            pthread_cond_broadcast(v66);
          }

          else
          {
            pthread_cond_signal(v66);
          }
        }

        pthread_mutex_unlock((*(v7 + 56) + (v63 << 6)));
      }
    }

    v58 = v61 - 1;
    result = 0;
  }

  while (v61);
  return result;
}

uint64_t compare_tile_buffers(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 > v3;
  v5 = v2 < v3;
  v6 = v4;
  return (v5 - v6);
}

uint64_t decode_partition(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 1968);
  v7 = *(a2 + 1976);
  if (v6 <= a3 || v7 <= a4)
  {
    return result;
  }

  v13 = result;
  v14 = (a6 - 1);
  __len = (1 << (a6 - 1));
  v15 = (__len >> 1) + a3;
  v16 = (__len >> 1) + a4;
  result = read_partition(result, a3, a4, v15 < v6, v16 < v7, a6 - 1);
  v17 = subsize_lookup[13 * result + a5];
  v29 = subsize_lookup[13 * result + a5];
  v28 = result;
  if (!v14)
  {
    *(v13 + 13736) = 1u >> ((result & 2) != 0);
    *(v13 + 13737) = 1u >> (result & 1);
    v18 = v13;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = 1;
    v23 = 1;
    goto LABEL_19;
  }

  if (result > 1u)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        decode_partition(v13, a2, a3, a4, v29, v14);
        decode_partition(v13, a2, a3, v16, v29, v14);
        decode_partition(v13, a2, v15, a4, v29, v14);
        result = decode_partition(v13, a2, v15, v16, v29, v14);
      }

      goto LABEL_20;
    }

    result = decode_block(v13, a2, a3, a4, v17, v14, a6);
    if (v16 >= v7)
    {
      goto LABEL_20;
    }

    v18 = v13;
    v19 = a2;
    v20 = a3;
    v21 = v16;
    v17 = v29;
    v22 = v14;
LABEL_18:
    v23 = a6;
    goto LABEL_19;
  }

  if (!result)
  {
    v18 = v13;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = a6;
    goto LABEL_18;
  }

  if (result == 1)
  {
    result = decode_block(v13, a2, a3, a4, v29, a6, v14);
    if (v15 < v6)
    {
      v18 = v13;
      v19 = a2;
      v20 = v15;
      v21 = a4;
      v17 = v29;
      v22 = a6;
      v23 = v14;
LABEL_19:
      result = decode_block(v18, v19, v20, v21, v17, v22, v23);
    }
  }

LABEL_20:
  if (a5 >= 3 && (a5 == 3 || v28 != 3))
  {
    v24 = a3 & 7;
    v25 = &partition_context_lookup[2 * v29];
    memset((*(v13 + 13936) + a4), *v25, __len);
    v26 = v25[1];

    return memset((v13 + 13944 + v24), v26, __len);
  }

  return result;
}

_DWORD *decode_block(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6, char a7)
{
  v11 = 1 << (a6 - 1);
  v12 = 1 << (a7 - 1);
  v13 = *(a2 + 1976) - a4;
  if (v11 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(a2 + 1968) - a3;
  if (v12 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  v98 = a1 + 13328;
  v87 = 1 << (a7 - 1);
  v88 = 1 << (a6 - 1);
  v99 = set_offsets(a2 + 656, a1 + 13328, a5, a3, a4, v88, v87, v14, v16, a6, SHIWORD(a6), a7);
  if (a5 >= 3 && *(a2 + 972) && ss_size_lookup[4 * a5 + 2 * *(a2 + 972) + *(a2 + 976)] == 13)
  {
    vpx_internal_error(*(a1 + 13968), 7, "Invalid block size.");
  }

  v23 = a1 + 12288;
  v91 = a2;
  vp9_read_mode_info(a1, a2, a3, a4, v14, v16, v17, v18, v19, v20, v21, v22);
  v24 = v99;
  if (v99[3])
  {
    bzero(*(a1 + 13392), *(a1 + 13440));
    bzero(*(a1 + 13400), *(a1 + 13442));
    bzero(*(a1 + 13528), *(a1 + 13576));
    bzero(*(a1 + 13536), *(a1 + 13578));
    bzero(*(a1 + 13664), *(a1 + 13712));
    bzero(*(a1 + 13672), *(a1 + 13714));
    v24 = v99;
  }

  v89 = a3;
  v90 = a4;
  if (v24[8] <= 0)
  {
    v31 = 0;
    v92 = v24 + 2;
    result = a1;
    while (1)
    {
      v32 = v98 + 136 * v31;
      v33 = v92;
      if (v31)
      {
        result = a1;
        v33 = &uv_txsize_lookup[16 * *v24 + 4 * v24[2] + 2 * *(v32 + 8) + *(v32 + 12)];
      }

      v34 = result[3455];
      if (v34 < 0)
      {
        v35 = v34 >> (*(v32 + 8) + 5);
        v36 = *(a1 + 13828);
        if ((v36 & 0x80000000) == 0)
        {
LABEL_24:
          v37 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        v35 = 0;
        v36 = *(a1 + 13828);
        if ((v36 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      v37 = v36 >> (*(v32 + 12) + 5);
LABEL_27:
      v38 = *v33;
      v39 = v35 + *(v32 + 112);
      v40 = v37 + *(v32 + 114);
      v97 = v39;
      *(a1 + 13800) = v39 & (v34 >> 31);
      *(a1 + 13804) = v40 & (v36 >> 31);
      v93 = v40;
      if (v40 >= 1)
      {
        v41 = (v31 ? v24 + 6 : v24 + 1);
        if (v39 >= 1)
        {
          v42 = 0;
          v43 = 0;
          v44 = 1 << v38;
          do
          {
            v45 = 0;
            v94 = v42;
            v46 = 12 * v42 + 20;
            do
            {
              v47 = v41;
              if (!v31)
              {
                v47 = v41;
                if (*v24 <= 2u)
                {
                  v47 = (**(a1 + 13776) + v46);
                }
              }

              v48 = *(v32 + 24);
              v49 = (*(v32 + 16) + 4 * (v45 + v43 * v48));
              v50 = *v47;
              vp9_predict_intra_block(v98, *(v32 + 116), v38, v50, v49, v48, v49, v48, v45, v43, v31);
              v24 = v99;
              if (!v99[3])
              {
                if (v31)
                {
                  v51 = 0;
                  v53 = (&vp9_default_scan_orders + 3 * v38);
                  v52 = a1;
                }

                else
                {
                  v52 = a1;
                  if (*(a1 + 13956))
                  {
                    v51 = 0;
                    v53 = (&vp9_default_scan_orders + 3 * v38);
                  }

                  else
                  {
                    v51 = intra_mode_to_tx_type_lookup[v50];
                    v53 = (&vp9_scan_orders + 12 * v38 + 3 * v51);
                  }
                }

                v54 = vp9_decode_block_tokens(v52, v31, v53, v45, v43, v38, v99[4]);
                v24 = v99;
                if (v54 >= 1)
                {
                  inverse_transform_block_intra(v98, v31, v51, v38, v49, *(v32 + 24), v54);
                  v24 = v99;
                }
              }

              v45 += v44;
              v46 += 12 * (1 << v38);
            }

            while (v45 < v97);
            v43 += v44;
            v42 = v94 + 2 * (1 << v38);
          }

          while (v43 < v93);
        }
      }

      ++v31;
      result = a1;
      if (v31 == 3)
      {
        goto LABEL_80;
      }
    }
  }

  dec_build_inter_predictors_sb(a1, a2, v98, a3, a4);
  v24 = v99;
  result = a1;
  if (v99[3])
  {
    goto LABEL_80;
  }

  v26 = *(a1 + 13820);
  v96 = a5;
  if (v26 < 0)
  {
    v27 = *(a1 + 13442);
    v28 = (v26 >> (*(a1 + 13336) + 5)) + *(a1 + 13440);
    v29 = *(a1 + 13828);
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27 = *(a1 + 13442);
    v28 = *(a1 + 13440);
    v29 = *(a1 + 13828);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_17:
      v30 = 0;
      goto LABEL_49;
    }
  }

  v30 = v29 >> (*(a1 + 13340) + 5);
LABEL_49:
  v55 = v99[2];
  v56 = v30 + v27;
  *(a1 + 13800) = v28 & (v26 >> 31);
  *(a1 + 13804) = (v30 + v27) & (v29 >> 31);
  if (v30 + v27 < 1 || v28 < 1)
  {
    v58 = 0;
    v62 = a1;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v59 = 1 << v55;
    do
    {
      v60 = 0;
      do
      {
        v61 = vp9_decode_block_tokens(a1, 0, &vp9_default_scan_orders + 3 * v55, v60, v57, v55, v24[4]);
        if (v61 >= 1)
        {
          inverse_transform_block_inter(v98, 0, v55, (*(a1 + 13344) + 4 * (v60 + v57 * *(a1 + 13352))), *(a1 + 13352), v61);
        }

        v58 += v61;
        v60 += v59;
        v24 = v99;
      }

      while (v60 < v28);
      v57 += v59;
    }

    while (v57 < v56);
    v26 = *(a1 + 13820);
    v62 = a1;
    v29 = *(a1 + 13828);
  }

  v63 = *v24;
  v64 = v62[3368];
  v65 = v62[3369];
  v66 = uv_txsize_lookup[16 * v63 + 4 * v24[2] + 2 * v64 + v65];
  v67 = ((v26 >> 31) & (v26 >> (v64 + 5))) + *(a1 + 13576);
  v68 = ((v29 >> 31) & (v29 >> (v65 + 5))) + *(a1 + 13578);
  v62[3450] = (v26 >> 31) & v67;
  v62[3451] = (v29 >> 31) & v68;
  if (v68 < 1 || v67 < 1)
  {
    result = a1;
  }

  else
  {
    v69 = 0;
    v70 = 1 << v66;
    result = a1;
    do
    {
      v71 = 0;
      do
      {
        v72 = result;
        v73 = vp9_decode_block_tokens(result, 1, &vp9_default_scan_orders + 3 * v66, v71, v69, v66, v24[4]);
        if (v73 >= 1)
        {
          inverse_transform_block_inter(v98, 1, v66, (*(v72 + 1685) + 4 * (v71 + v69 * v72[3372])), v72[3372], v73);
        }

        v58 += v73;
        v71 += v70;
        result = v72;
        v24 = v99;
      }

      while (v71 < v67);
      v69 += v70;
    }

    while (v69 < v68);
    v63 = *v99;
    v26 = v72[3455];
    v29 = v72[3457];
    v23 = a1 + 12288;
  }

  v74 = result[3402];
  v75 = result[3403];
  v76 = uv_txsize_lookup[16 * v63 + 4 * v24[2] + 2 * v74 + v75];
  LODWORD(v74) = v26 >> (v74 + 5);
  v77 = v26 >> 31;
  v78 = (v77 & v74) + *(v23 + 1424);
  v79 = v29 >> (v75 + 5);
  v80 = v29 >> 31;
  v81 = (v80 & v79) + *(v23 + 1426);
  result[3450] = v77 & v78;
  result[3451] = v80 & v81;
  if (v81 >= 1 && v78 >= 1)
  {
    v82 = 0;
    v83 = 1 << v76;
    do
    {
      v84 = 0;
      do
      {
        v85 = result;
        v86 = vp9_decode_block_tokens(result, 2, &vp9_default_scan_orders + 3 * v76, v84, v82, v76, v24[4]);
        if (v86 >= 1)
        {
          inverse_transform_block_inter(v98, 2, v76, (*(v85 + 1702) + 4 * (v84 + v82 * v85[3406])), v85[3406], v86);
        }

        v58 += v86;
        v84 += v83;
        result = v85;
        v24 = v99;
      }

      while (v84 < v78);
      v82 += v83;
    }

    while (v82 < v81);
  }

  if (v96 >= 3 && !v58)
  {
    v24[3] = 1;
  }

LABEL_80:
  result[3490] |= (result[7] - 65) < 0x3FFFFFBF;
  if (*(v91 + 5384))
  {

    return vp9_build_mask((v91 + 656), v24, v89, v90, v88, v87);
  }

  return result;
}

uint64_t vp9_read_mode_info(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12)
{
  v12 = a2;
  v2416 = *MEMORY[0x277D85DE8];
  v13 = (a2 + 4096);
  v2410 = (a1 + 16);
  v14 = **(a1 + 13776);
  v15 = *(a2 + 1976);
  v2388 = v14;
  v2373 = a6;
  v2387 = a5;
  if (!*(a2 + 1932) || *(a2 + 1948))
  {
    v2398 = *(a1 + 13792);
    v16 = *(a1 + 13784);
    v17 = *v14;
    v2399 = v16;
    if (!*(a2 + 5432))
    {
      v14[4] = 0;
      goto LABEL_91;
    }

    v18 = a4 + v15 * a3;
    LOBYTE(v19) = *(a2 + 5433);
    if (!v19)
    {
      if (a5 >= 1 && a6 >= 1)
      {
        v124 = *(a2 + 2192);
        v125 = *(a2 + 2200);
        if (v124)
        {
          v126 = 0;
          do
          {
            v127 = v18;
            v128 = a5;
            do
            {
              *(v125 + v127 + v126 * *(a2 + 1976)) = *(v124 + v127 + v126 * *(a2 + 1976));
              ++v127;
              --v128;
            }

            while (v128);
            ++v126;
          }

          while (v126 != a6);
        }

        else
        {
          do
          {
            v129 = v18;
            v130 = a5;
            do
            {
              *(v125 + v129 + v124 * *(a2 + 1976)) = 0;
              ++v129;
              --v130;
            }

            while (v130);
            LODWORD(v124) = v124 + 1;
          }

          while (v124 != a6);
        }

        LOBYTE(v19) = 0;
      }

LABEL_87:
      v131 = v13[1336];
      v14[4] = v19;
      if (!v131)
      {
        goto LABEL_91;
      }

      goto LABEL_88;
    }

    v2383 = a4 + v15 * a3;
    v2384 = *v14;
    v2394 = (a2 + 4096);
    v20 = 0;
    v21 = a2 + 5437;
    v23 = *(a1 + 24);
    v22 = *(a1 + 28);
    v2402 = (a1 + 64);
    v24 = *(a1 + 16);
    v25.i64[0] = 0x800000008;
    v25.i64[1] = 0x800000008;
    v26.i64[0] = 0x7F0000007FLL;
    v26.i64[1] = 0x7F0000007FLL;
    while (1)
    {
      v31 = *(v21 + (v20 >> 1));
      if ((v22 & 0x80000000) == 0)
      {
        v27 = ((v23 - 1) * v31 + 256) >> 8;
        v32 = v24 - (v27 << 56);
        if (v24 < v27 << 56)
        {
          goto LABEL_39;
        }

        goto LABEL_6;
      }

      v33 = *(a1 + 40);
      v34 = *(a1 + 32) - v33;
      v35 = *(a1 + 48);
      if (v35)
      {
        v2404 = v20;
        if (v34 >= 9)
        {
          v36 = 9;
        }

        else
        {
          v36 = *(a1 + 32) - v33;
        }

        v33 = v2402;
        v35(*(a1 + 56), *(a1 + 40), v2402, v36);
        v20 = v2404;
        v26.i64[0] = 0x7F0000007FLL;
        v26.i64[1] = 0x7F0000007FLL;
        v25.i64[0] = 0x800000008;
        v25.i64[1] = 0x800000008;
      }

      v37 = 8 * v34;
      v38 = 48 - v22;
      if (8 * v34 >= 0x41)
      {
        v39 = (v38 & 0x7FFFFFF8) + 8;
        v40 = v39 + v22;
        v41 = (v33 + (v39 >> 3));
        v24 = (bswap64(*v33) >> (56 - (v38 & 0xF8u)) << (v38 & 7)) | *v2410;
        goto LABEL_38;
      }

      v42 = 56 - v22 - v37;
      if (v42 < 0)
      {
        v40 = v22;
      }

      else
      {
        v40 = v22 + 0x40000000;
      }

      if (v37)
      {
        v43 = 1;
      }

      else
      {
        v43 = v42 <= -1;
      }

      v44 = v42 & ~(v42 >> 31);
      if (!v43 || v38 < v44)
      {
        v41 = v33;
        goto LABEL_38;
      }

      v46 = v44 - 1;
      if (v44 - 1 >= (40 - v22))
      {
        v46 = 40 - v22;
      }

      v47 = 47 - v22 - v46;
      if (v47 < 0x78)
      {
        break;
      }

      v48 = (v47 >> 3) + 1;
      v49 = v24;
      v50 = 0uLL;
      v51 = v40;
      v52 = vdupq_n_s32(v38);
      v53 = vaddq_s32(v52, xmmword_273BC3230);
      v41 = (v33 + (v48 & 0x3FFFFFF0));
      v54 = vaddq_s32(v52, xmmword_273BC3240);
      v38 -= 8 * (v48 & 0x3FFFFFF0);
      v55 = vaddq_s32(v52, xmmword_273BC3250);
      v56 = vaddq_s32(v52, xmmword_273BC3220);
      v57 = v48 & 0x3FFFFFF0;
      v58 = v33;
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      do
      {
        v68 = *v58++;
        v69 = vmovl_high_u8(v68);
        v70 = vmovl_high_u16(v69);
        v71.i64[0] = v70.u32[0];
        v71.i64[1] = v70.u32[1];
        v72 = v71;
        v73 = vmovl_u16(*v69.i8);
        v71.i64[0] = v73.u32[2];
        v71.i64[1] = v73.u32[3];
        v74 = v71;
        v75 = vmovl_u8(*v68.i8);
        v76 = vmovl_high_u16(v75);
        v71.i64[0] = v76.u32[2];
        v71.i64[1] = v76.u32[3];
        v77 = v71;
        v71.i64[0] = v70.u32[2];
        v71.i64[1] = v70.u32[3];
        v78 = v71;
        v71.i64[0] = v73.u32[0];
        v71.i64[1] = v73.u32[1];
        v79 = v71;
        v71.i64[0] = v76.u32[0];
        v71.i64[1] = v76.u32[1];
        v80 = v71;
        v81 = vmovl_u16(*v75.i8);
        v71.i64[0] = v81.u32[2];
        v71.i64[1] = v81.u32[3];
        v82 = v71;
        v71.i64[0] = v81.u32[0];
        v71.i64[1] = v81.u32[1];
        v83 = v71;
        v71.i64[0] = v56.u32[0];
        v71.i64[1] = v56.u32[1];
        v84 = vshlq_u64(v83, v71);
        v71.i64[0] = v56.u32[2];
        v71.i64[1] = v56.u32[3];
        v85 = vshlq_u64(v82, v71);
        v71.i64[0] = v55.u32[0];
        v71.i64[1] = v55.u32[1];
        v86 = vshlq_u64(v80, v71);
        v71.i64[0] = v54.u32[0];
        v71.i64[1] = v54.u32[1];
        v87 = vshlq_u64(v79, v71);
        v71.i64[0] = v53.u32[2];
        v71.i64[1] = v53.u32[3];
        v88 = vshlq_u64(v78, v71);
        v71.i64[0] = v55.u32[2];
        v71.i64[1] = v55.u32[3];
        v89 = vshlq_u64(v77, v71);
        v71.i64[0] = v54.u32[2];
        v71.i64[1] = v54.u32[3];
        v90 = vshlq_u64(v74, v71);
        v71.i64[0] = v53.u32[0];
        v71.i64[1] = v53.u32[1];
        v63 = vorrq_s8(vshlq_u64(v72, v71), v63);
        v62 = vorrq_s8(v90, v62);
        v60 = vorrq_s8(v89, v60);
        v64 = vorrq_s8(v88, v64);
        v61 = vorrq_s8(v87, v61);
        v59 = vorrq_s8(v86, v59);
        v50 = vorrq_s8(v85, v50);
        v49 = vorrq_s8(v84, v49);
        v51 = vaddq_s32(v51, v25);
        v65 = vaddq_s32(v65, v25);
        v66 = vaddq_s32(v66, v25);
        v67 = vaddq_s32(v67, v25);
        v56 = vaddq_s32(v56, v26);
        v55 = vaddq_s32(v55, v26);
        v54 = vaddq_s32(v54, v26);
        v53 = vaddq_s32(v53, v26);
        v57 -= 16;
      }

      while (v57);
      v91 = vorrq_s8(vorrq_s8(vorrq_s8(v49, v61), vorrq_s8(v59, v63)), vorrq_s8(vorrq_s8(v50, v62), vorrq_s8(v60, v64)));
      v24 = vorr_s8(*v91.i8, *&vextq_s8(v91, v91, 8uLL));
      v40 = vaddvq_s32(vaddq_s32(vaddq_s32(v51, v66), vaddq_s32(v65, v67)));
      if ((v48 & 0x3FFFFFF0) != v48)
      {
        goto LABEL_37;
      }

LABEL_38:
      *(a1 + 40) += v41 - v33;
      v22 = v40;
      v27 = ((v23 - 1) * v31 + 256) >> 8;
      v32 = v24 - (v27 << 56);
      if (v24 < v27 << 56)
      {
LABEL_39:
        v28 = 0;
        goto LABEL_7;
      }

LABEL_6:
      LODWORD(v27) = *(a1 + 24) - v27;
      v28 = 1;
      v24 = v32;
LABEL_7:
      v29 = vpx_norm[v27];
      v23 = v27 << v29;
      v24 <<= v29;
      v22 -= v29;
      *(a1 + 16) = v24;
      *(a1 + 24) = v27 << v29;
      *(a1 + 28) = v22;
      v30 = vp9_segment_tree[v28 + v20];
      v20 = v30;
      if (v30 <= 0)
      {
        v19 = -v30;
        if (v2373 >= 1)
        {
          v14 = v2388;
          v12 = a2;
          v13 = v2394;
          v16 = v2399;
          v17 = v2384;
          if (v2387 >= 1)
          {
            for (i = 0; i != v2373; ++i)
            {
              v94 = v2383;
              v95 = v2387;
              do
              {
                *(*(a2 + 2200) + v94 + i * *(a2 + 1976)) = v19;
                ++v94;
                --v95;
              }

              while (v95);
            }
          }

          goto LABEL_87;
        }

        v14 = v2388;
        v12 = a2;
        v16 = v2399;
        v17 = v2384;
        v133 = v2394[1336];
        v2388[4] = v19;
        if (!v133)
        {
LABEL_91:
          v134 = *(a1 + 13784);
          v135 = *(a1 + 13792);
          if (v135)
          {
            v135 = *(v135 + 3);
          }

          if (v134)
          {
            v134 = *(v134 + 3);
          }

          v136 = v134 + v135;
          v137 = *(a1 + 28);
          v138 = ((*(a1 + 24) - 1) * *(*(v12 + 5560) + v134 + v135 + 1967) + 256) >> 8;
          v139 = *(a1 + 16);
          if ((v137 & 0x80000000) != 0)
          {
            v141 = *(a1 + 40);
            v142 = *(a1 + 32) - v141;
            v143 = 8 * v142;
            v144 = *(a1 + 48);
            if (v144)
            {
              if (v142 >= 9)
              {
                v145 = 9;
              }

              else
              {
                v145 = *(a1 + 32) - v141;
              }

              v144(*(a1 + 56), v141, a1 + 64, v145);
              v141 = (a1 + 64);
              v14 = v2388;
            }

            v146 = 48 - v137;
            if (v143 < 0x41)
            {
              v150 = 56 - v137 - v143;
              if (v150 < 0)
              {
                v148 = v137;
              }

              else
              {
                v148 = v137 + 0x40000000;
              }

              if (v143)
              {
                v151 = 1;
              }

              else
              {
                v151 = v150 <= -1;
              }

              v12 = a2;
              if (v151 && (v152 = v150 & ~(v150 >> 31), v146 >= v152))
              {
                v153 = v152 - 1;
                if (v152 - 1 >= (40 - v137))
                {
                  v153 = 40 - v137;
                }

                v154 = 47 - v137 - v153;
                v149 = v141;
                v155 = 48 - v137;
                if (v154 < 0x78)
                {
                  goto LABEL_1473;
                }

                v156 = v139;
                v157 = v148;
                v158 = vdupq_n_s32(v146);
                v159 = 0uLL;
                v160 = vaddq_s32(v158, xmmword_273BC3230);
                v161 = vaddq_s32(v158, xmmword_273BC3240);
                v162 = vaddq_s32(v158, xmmword_273BC3250);
                v163 = vaddq_s32(v158, xmmword_273BC3220);
                v164.i64[0] = 0x800000008;
                v164.i64[1] = 0x800000008;
                v165.i64[0] = 0x7F0000007FLL;
                v165.i64[1] = 0x7F0000007FLL;
                v166 = (v154 >> 3) + 1;
                v167 = 0uLL;
                v168 = 0uLL;
                v169 = 0uLL;
                v149 = (v141 + (v166 & 0x3FFFFFF0));
                v155 = v146 - 8 * (v166 & 0x3FFFFFF0);
                v170 = v166 & 0x3FFFFFF0;
                v171 = v141;
                v172 = 0uLL;
                v173 = 0uLL;
                v174 = 0uLL;
                v175 = 0uLL;
                v176 = 0uLL;
                v177 = 0uLL;
                do
                {
                  v178 = *v171++;
                  v179 = vmovl_high_u8(v178);
                  v180 = vmovl_high_u16(v179);
                  v181.i64[0] = v180.u32[0];
                  v181.i64[1] = v180.u32[1];
                  v182 = v181;
                  v183 = vmovl_u16(*v179.i8);
                  v181.i64[0] = v183.u32[2];
                  v181.i64[1] = v183.u32[3];
                  v184 = v181;
                  v185 = vmovl_u8(*v178.i8);
                  v186 = vmovl_high_u16(v185);
                  v181.i64[0] = v186.u32[2];
                  v181.i64[1] = v186.u32[3];
                  v187 = v181;
                  v181.i64[0] = v180.u32[2];
                  v181.i64[1] = v180.u32[3];
                  v188 = v181;
                  v181.i64[0] = v183.u32[0];
                  v181.i64[1] = v183.u32[1];
                  v189 = v181;
                  v181.i64[0] = v186.u32[0];
                  v181.i64[1] = v186.u32[1];
                  v190 = v181;
                  v191 = vmovl_u16(*v185.i8);
                  v181.i64[0] = v191.u32[2];
                  v181.i64[1] = v191.u32[3];
                  v192 = v181;
                  v181.i64[0] = v191.u32[0];
                  v181.i64[1] = v191.u32[1];
                  v193 = v181;
                  v181.i64[0] = v163.u32[0];
                  v181.i64[1] = v163.u32[1];
                  v194 = vshlq_u64(v193, v181);
                  v181.i64[0] = v163.u32[2];
                  v181.i64[1] = v163.u32[3];
                  v195 = vshlq_u64(v192, v181);
                  v181.i64[0] = v162.u32[0];
                  v181.i64[1] = v162.u32[1];
                  v196 = vshlq_u64(v190, v181);
                  v181.i64[0] = v161.u32[0];
                  v181.i64[1] = v161.u32[1];
                  v197 = vshlq_u64(v189, v181);
                  v181.i64[0] = v160.u32[2];
                  v181.i64[1] = v160.u32[3];
                  v198 = vshlq_u64(v188, v181);
                  v181.i64[0] = v162.u32[2];
                  v181.i64[1] = v162.u32[3];
                  v199 = vshlq_u64(v187, v181);
                  v181.i64[0] = v161.u32[2];
                  v181.i64[1] = v161.u32[3];
                  v200 = vshlq_u64(v184, v181);
                  v181.i64[0] = v160.u32[0];
                  v181.i64[1] = v160.u32[1];
                  v173 = vorrq_s8(vshlq_u64(v182, v181), v173);
                  v172 = vorrq_s8(v200, v172);
                  v168 = vorrq_s8(v199, v168);
                  v174 = vorrq_s8(v198, v174);
                  v169 = vorrq_s8(v197, v169);
                  v167 = vorrq_s8(v196, v167);
                  v159 = vorrq_s8(v195, v159);
                  v156 = vorrq_s8(v194, v156);
                  v157 = vaddq_s32(v157, v164);
                  v175 = vaddq_s32(v175, v164);
                  v176 = vaddq_s32(v176, v164);
                  v177 = vaddq_s32(v177, v164);
                  v163 = vaddq_s32(v163, v165);
                  v162 = vaddq_s32(v162, v165);
                  v161 = vaddq_s32(v161, v165);
                  v160 = vaddq_s32(v160, v165);
                  v170 -= 16;
                }

                while (v170);
                v201 = vorrq_s8(vorrq_s8(vorrq_s8(v156, v169), vorrq_s8(v167, v173)), vorrq_s8(vorrq_s8(v159, v172), vorrq_s8(v168, v174)));
                v139 = vorr_s8(*v201.i8, *&vextq_s8(v201, v201, 8uLL));
                v148 = vaddvq_s32(vaddq_s32(vaddq_s32(v157, v176), vaddq_s32(v175, v177)));
                if ((v166 & 0x3FFFFFF0) != v166)
                {
LABEL_1473:
                  do
                  {
                    v148 += 8;
                    v202 = *v149;
                    v149 = (v149 + 1);
                    v139 |= v202 << v155;
                    v155 -= 8;
                  }

                  while (v155 >= v152);
                }
              }

              else
              {
                v149 = v141;
              }
            }

            else
            {
              v147 = (v146 & 0x7FFFFFF8) + 8;
              v148 = v147 + v137;
              v149 = (v141 + (v147 >> 3));
              v139 = (bswap64(*v141) >> (56 - (v146 & 0xF8u)) << (v146 & 7)) | *v2410;
              v12 = a2;
            }

            *(a1 + 40) += v149 - v141;
            v137 = v148;
            v140 = v139 - (v138 << 56);
            if (v139 >= v138 << 56)
            {
              goto LABEL_125;
            }

LABEL_97:
            v132 = 0;
          }

          else
          {
            v140 = v139 - (v138 << 56);
            if (v139 < v138 << 56)
            {
              goto LABEL_97;
            }

LABEL_125:
            LODWORD(v138) = *(a1 + 24) - v138;
            v132 = 1;
            v139 = v140;
          }

          v203 = vpx_norm[v138];
          *(a1 + 16) = v139 << v203;
          *(a1 + 24) = v138 << v203;
          *(a1 + 28) = v137 - v203;
          v204 = *(a1 + 13744);
          if (v204)
          {
            v205 = v204 + 8 * v136 + 4 * v132;
            ++*(v205 + 12776);
          }

          v16 = v2399;
LABEL_129:
          v14[3] = v132;
          result = read_tx_size(v12 + 656, a1 + 13328, 1, v2410);
          v14[2] = result;
          *(v14 + 4) = -256;
          if (v17 != 2)
          {
            if (v17 != 1)
            {
              if (!v17)
              {
                if (v2398 && v2398[8] <= 0)
                {
                  v522 = v2398 + 44;
                  if (*v2398 >= 3u)
                  {
                    v522 = v2398 + 1;
                  }

                  v207 = *v522;
                  if (v16)
                  {
                    goto LABEL_349;
                  }

LABEL_350:
                  v523 = 0;
                }

                else
                {
                  v207 = 0;
                  if (!v16)
                  {
                    goto LABEL_350;
                  }

LABEL_349:
                  if (v16[8] > 0)
                  {
                    goto LABEL_350;
                  }

                  v526 = v16 + 32;
                  if (*v16 >= 3u)
                  {
                    v526 = v16 + 1;
                  }

                  v523 = *v526;
                }

                LOBYTE(v527) = 0;
                v528 = &vp9_kf_y_mode_prob + 90 * v207 + 9 * v523;
                v236 = *(a1 + 24);
                v237 = *(a1 + 28);
                v2407 = a1 + 64;
                v238 = *(a1 + 16);
                v529.i64[0] = 0x800000008;
                v529.i64[1] = 0x800000008;
                v530.i64[0] = 0x7F0000007FLL;
                v530.i64[1] = 0x7F0000007FLL;
                while (2)
                {
                  v534 = v528[v527 >> 1];
                  if ((v237 & 0x80000000) == 0)
                  {
                    v531 = ((v236 - 1) * v534 + 256) >> 8;
                    v535 = v238 - (v531 << 56);
                    if (v238 < v531 << 56)
                    {
LABEL_393:
                      v532 = 0;
LABEL_361:
                      v533 = vpx_norm[v531];
                      v236 = v531 << v533;
                      v238 <<= v533;
                      v237 -= v533;
                      *(a1 + 16) = v238;
                      *(a1 + 24) = v531 << v533;
                      *(a1 + 28) = v237;
                      v527 = vp9_intra_mode_tree[v532 + v527];
                      if (v527 > 0)
                      {
                        continue;
                      }

                      v596 = -v527;
                      v2388[20] = -v527;
                      if (v2398)
                      {
                        if (v2398[8] <= 0)
                        {
                          v669 = v2398 + 56;
                          if (*v2398 >= 3u)
                          {
                            v669 = v2398 + 1;
                          }

                          v597 = *v669;
                        }

                        else
                        {
                          v597 = 0;
                        }
                      }

                      else
                      {
                        v597 = 0;
                      }

                      LOBYTE(v670) = 0;
                      v671 = &vp9_kf_y_mode_prob + 90 * v597 + 9 * v596;
                      v672.i64[0] = 0x800000008;
                      v672.i64[1] = 0x800000008;
                      v673.i64[0] = 0x7F0000007FLL;
                      v673.i64[1] = 0x7F0000007FLL;
                      while (2)
                      {
                        v677 = v671[v670 >> 1];
                        if ((v237 & 0x80000000) == 0)
                        {
                          v674 = ((v236 - 1) * v677 + 256) >> 8;
                          v678 = v238 - (v674 << 56);
                          if (v238 < v674 << 56)
                          {
LABEL_474:
                            v675 = 0;
LABEL_442:
                            v676 = vpx_norm[v674];
                            v236 = v674 << v676;
                            v238 <<= v676;
                            v237 -= v676;
                            *(a1 + 16) = v238;
                            *(a1 + 24) = v674 << v676;
                            *(a1 + 28) = v237;
                            v670 = vp9_intra_mode_tree[v675 + v670];
                            if (v670 <= 0)
                            {
                              v2388[32] = -v670;
                              if (v2399)
                              {
                                if (v2399[8] <= 0)
                                {
                                  v740 = v2399 + 56;
                                  if (*v2399 >= 3u)
                                  {
                                    v740 = v2399 + 1;
                                  }

                                  v739 = *v740;
                                }

                                else
                                {
                                  v739 = 0;
                                }
                              }

                              else
                              {
                                v739 = 0;
                              }

                              LOBYTE(v741) = 0;
                              v742 = &vp9_kf_y_mode_prob + 90 * v2388[20] + 9 * v739;
                              v743.i64[0] = 0x800000008;
                              v743.i64[1] = 0x800000008;
                              v744.i64[0] = 0x7F0000007FLL;
                              v744.i64[1] = 0x7F0000007FLL;
                              while (2)
                              {
                                v748 = v742[v741 >> 1];
                                if ((v237 & 0x80000000) == 0)
                                {
                                  v745 = ((v236 - 1) * v748 + 256) >> 8;
                                  v749 = v238 - (v745 << 56);
                                  if (v238 < v745 << 56)
                                  {
LABEL_516:
                                    v746 = 0;
LABEL_484:
                                    v747 = vpx_norm[v745];
                                    v236 = v745 << v747;
                                    v238 <<= v747;
                                    v237 -= v747;
                                    *(a1 + 16) = v238;
                                    *(a1 + 24) = v745 << v747;
                                    *(a1 + 28) = v237;
                                    v741 = vp9_intra_mode_tree[v746 + v741];
                                    if (v741 > 0)
                                    {
                                      continue;
                                    }

                                    LOBYTE(v810) = 0;
                                    v2388[44] = -v741;
                                    v811 = &vp9_kf_y_mode_prob + 90 * v2388[32] + 9 * -v741;
                                    v812.i64[0] = 0x800000008;
                                    v812.i64[1] = 0x800000008;
                                    v813.i64[0] = 0x7F0000007FLL;
                                    v813.i64[1] = 0x7F0000007FLL;
                                    while (2)
                                    {
                                      v817 = v811[v810 >> 1];
                                      if ((v237 & 0x80000000) == 0)
                                      {
                                        v814 = ((v236 - 1) * v817 + 256) >> 8;
                                        v818 = v238 - (v814 << 56);
                                        if (v238 < v814 << 56)
                                        {
LABEL_551:
                                          v815 = 0;
LABEL_519:
                                          v816 = vpx_norm[v814];
                                          v236 = v814 << v816;
                                          v238 <<= v816;
                                          v237 -= v816;
                                          *(a1 + 16) = v238;
                                          *(a1 + 24) = v814 << v816;
                                          *(a1 + 28) = v237;
                                          v810 = vp9_intra_mode_tree[v815 + v810];
                                          if (v810 <= 0)
                                          {
                                            v377 = -v810;
                                            v668 = v2388;
                                            v2388[56] = -v810;
LABEL_553:
                                            v668[1] = v377;
LABEL_554:
                                            LOBYTE(v879) = 0;
                                            v880 = &vp9_kf_uv_mode_prob + 9 * v377;
                                            v881 = 256;
                                            v882.i64[0] = 0x800000008;
                                            v882.i64[1] = 0x800000008;
                                            v883.i64[0] = 0x7F0000007FLL;
                                            v883.i64[1] = 0x7F0000007FLL;
                                            while (2)
                                            {
                                              v887 = v880[v879 >> 1];
                                              if ((v237 & 0x80000000) == 0)
                                              {
                                                v884 = (v881 + (v236 - 1) * v887) >> 8;
                                                v888 = v238 - (v884 << 56);
                                                if (v238 < v884 << 56)
                                                {
LABEL_588:
                                                  v885 = 0;
LABEL_556:
                                                  v886 = vpx_norm[v884];
                                                  v236 = v884 << v886;
                                                  v238 <<= v886;
                                                  v237 -= v886;
                                                  *(a1 + 16) = v238;
                                                  *(a1 + 24) = v884 << v886;
                                                  *(a1 + 28) = v237;
                                                  v879 = vp9_intra_mode_tree[v885 + v879];
                                                  if (v879 <= 0)
                                                  {
                                                    v2388[6] = -v879;
                                                    return result;
                                                  }

                                                  continue;
                                                }

LABEL_555:
                                                LODWORD(v884) = *(a1 + 24) - v884;
                                                v885 = 1;
                                                v238 = v888;
                                                goto LABEL_556;
                                              }

                                              break;
                                            }

                                            v889 = *(a1 + 40);
                                            v890 = *(a1 + 32) - v889;
                                            v891 = *(a1 + 48);
                                            if (v891)
                                            {
                                              v2409 = v879;
                                              if (v890 >= 9)
                                              {
                                                v892 = 9;
                                              }

                                              else
                                              {
                                                v892 = *(a1 + 32) - v889;
                                              }

                                              v889 = (a1 + 64);
                                              v893 = v236;
                                              v894 = v881;
                                              result = v891(*(a1 + 56), *(a1 + 40), a1 + 64, v892);
                                              LOBYTE(v879) = v2409;
                                              v881 = v894;
                                              v236 = v893;
                                              v883.i64[0] = 0x7F0000007FLL;
                                              v883.i64[1] = 0x7F0000007FLL;
                                              v882.i64[0] = 0x800000008;
                                              v882.i64[1] = 0x800000008;
                                            }

                                            v895 = 8 * v890;
                                            v896 = 48 - v237;
                                            if (8 * v890 >= 0x41)
                                            {
                                              v897 = (v896 & 0x7FFFFFF8) + 8;
                                              v898 = v897 + v237;
                                              v899 = (v889 + (v897 >> 3));
                                              v238 = (bswap64(*v889) >> (56 - (v896 & 0xF8u)) << (v896 & 7)) | *v2410;
                                              goto LABEL_587;
                                            }

                                            v900 = 56 - v237 - v895;
                                            if (v900 < 0)
                                            {
                                              v898 = v237;
                                            }

                                            else
                                            {
                                              v898 = v237 + 0x40000000;
                                            }

                                            if (v895)
                                            {
                                              v901 = 1;
                                            }

                                            else
                                            {
                                              v901 = v900 <= -1;
                                            }

                                            v902 = v900 & ~(v900 >> 31);
                                            if (!v901 || v896 < v902)
                                            {
                                              v899 = v889;
                                            }

                                            else
                                            {
                                              v904 = v902 - 1;
                                              if (v902 - 1 >= (40 - v237))
                                              {
                                                v904 = 40 - v237;
                                              }

                                              v905 = 47 - v237 - v904;
                                              if (v905 < 0x78)
                                              {
                                                v899 = v889;
                                                goto LABEL_586;
                                              }

                                              v906 = (v905 >> 3) + 1;
                                              v907 = v238;
                                              v908 = 0uLL;
                                              v909 = v898;
                                              v910 = vdupq_n_s32(v896);
                                              v911 = vaddq_s32(v910, xmmword_273BC3230);
                                              v899 = (v889 + (v906 & 0x3FFFFFF0));
                                              v912 = vaddq_s32(v910, xmmword_273BC3240);
                                              v896 -= 8 * (v906 & 0x3FFFFFF0);
                                              v913 = vaddq_s32(v910, xmmword_273BC3250);
                                              v914 = vaddq_s32(v910, xmmword_273BC3220);
                                              v915 = v906 & 0x3FFFFFF0;
                                              v916 = v889;
                                              v917 = 0uLL;
                                              v918 = 0uLL;
                                              v919 = 0uLL;
                                              v920 = 0uLL;
                                              v921 = 0uLL;
                                              v922 = 0uLL;
                                              v923 = 0uLL;
                                              v924 = 0uLL;
                                              v925 = 0uLL;
                                              do
                                              {
                                                v926 = *v916++;
                                                v927 = vmovl_high_u8(v926);
                                                v928 = vmovl_high_u16(v927);
                                                v929.i64[0] = v928.u32[0];
                                                v929.i64[1] = v928.u32[1];
                                                v930 = v929;
                                                v931 = vmovl_u16(*v927.i8);
                                                v929.i64[0] = v931.u32[2];
                                                v929.i64[1] = v931.u32[3];
                                                v932 = v929;
                                                v933 = vmovl_u8(*v926.i8);
                                                v934 = vmovl_high_u16(v933);
                                                v929.i64[0] = v934.u32[2];
                                                v929.i64[1] = v934.u32[3];
                                                v935 = v929;
                                                v929.i64[0] = v928.u32[2];
                                                v929.i64[1] = v928.u32[3];
                                                v936 = v929;
                                                v929.i64[0] = v931.u32[0];
                                                v929.i64[1] = v931.u32[1];
                                                v937 = v929;
                                                v929.i64[0] = v934.u32[0];
                                                v929.i64[1] = v934.u32[1];
                                                v938 = v929;
                                                v939 = vmovl_u16(*v933.i8);
                                                v929.i64[0] = v939.u32[2];
                                                v929.i64[1] = v939.u32[3];
                                                v940 = v929;
                                                v929.i64[0] = v939.u32[0];
                                                v929.i64[1] = v939.u32[1];
                                                v941 = v929;
                                                v929.i64[0] = v914.u32[0];
                                                v929.i64[1] = v914.u32[1];
                                                v942 = vshlq_u64(v941, v929);
                                                v929.i64[0] = v914.u32[2];
                                                v929.i64[1] = v914.u32[3];
                                                v943 = vshlq_u64(v940, v929);
                                                v929.i64[0] = v913.u32[0];
                                                v929.i64[1] = v913.u32[1];
                                                v944 = vshlq_u64(v938, v929);
                                                v929.i64[0] = v912.u32[0];
                                                v929.i64[1] = v912.u32[1];
                                                v945 = vshlq_u64(v937, v929);
                                                v929.i64[0] = v911.u32[2];
                                                v929.i64[1] = v911.u32[3];
                                                v946 = vshlq_u64(v936, v929);
                                                v929.i64[0] = v913.u32[2];
                                                v929.i64[1] = v913.u32[3];
                                                v947 = vshlq_u64(v935, v929);
                                                v929.i64[0] = v912.u32[2];
                                                v929.i64[1] = v912.u32[3];
                                                v948 = vshlq_u64(v932, v929);
                                                v929.i64[0] = v911.u32[0];
                                                v929.i64[1] = v911.u32[1];
                                                v921 = vorrq_s8(vshlq_u64(v930, v929), v921);
                                                v920 = vorrq_s8(v948, v920);
                                                v918 = vorrq_s8(v947, v918);
                                                v922 = vorrq_s8(v946, v922);
                                                v919 = vorrq_s8(v945, v919);
                                                v917 = vorrq_s8(v944, v917);
                                                v908 = vorrq_s8(v943, v908);
                                                v907 = vorrq_s8(v942, v907);
                                                v909 = vaddq_s32(v909, v882);
                                                v923 = vaddq_s32(v923, v882);
                                                v924 = vaddq_s32(v924, v882);
                                                v925 = vaddq_s32(v925, v882);
                                                v914 = vaddq_s32(v914, v883);
                                                v913 = vaddq_s32(v913, v883);
                                                v912 = vaddq_s32(v912, v883);
                                                v911 = vaddq_s32(v911, v883);
                                                v915 -= 16;
                                              }

                                              while (v915);
                                              v949 = vorrq_s8(vorrq_s8(vorrq_s8(v907, v919), vorrq_s8(v917, v921)), vorrq_s8(vorrq_s8(v908, v920), vorrq_s8(v918, v922)));
                                              v238 = vorr_s8(*v949.i8, *&vextq_s8(v949, v949, 8uLL));
                                              v898 = vaddvq_s32(vaddq_s32(vaddq_s32(v909, v924), vaddq_s32(v923, v925)));
                                              if ((v906 & 0x3FFFFFF0) != v906)
                                              {
                                                do
                                                {
LABEL_586:
                                                  v898 += 8;
                                                  v950 = *v899;
                                                  v899 = (v899 + 1);
                                                  v238 |= v950 << v896;
                                                  v896 -= 8;
                                                }

                                                while (v896 >= v902);
                                              }
                                            }

LABEL_587:
                                            *(a1 + 40) += v899 - v889;
                                            v237 = v898;
                                            v884 = (v881 + (v236 - 1) * v887) >> 8;
                                            v888 = v238 - (v884 << 56);
                                            if (v238 < v884 << 56)
                                            {
                                              goto LABEL_588;
                                            }

                                            goto LABEL_555;
                                          }

                                          continue;
                                        }

LABEL_518:
                                        LODWORD(v814) = *(a1 + 24) - v814;
                                        v815 = 1;
                                        v238 = v818;
                                        goto LABEL_519;
                                      }

                                      break;
                                    }

                                    v819 = *(a1 + 40);
                                    v820 = *(a1 + 32) - v819;
                                    v821 = *(a1 + 48);
                                    if (v821)
                                    {
                                      if (v820 >= 9)
                                      {
                                        v822 = 9;
                                      }

                                      else
                                      {
                                        v822 = *(a1 + 32) - v819;
                                      }

                                      v819 = (a1 + 64);
                                      result = v821(*(a1 + 56), *(a1 + 40), v2407, v822);
                                      v813.i64[0] = 0x7F0000007FLL;
                                      v813.i64[1] = 0x7F0000007FLL;
                                      v812.i64[0] = 0x800000008;
                                      v812.i64[1] = 0x800000008;
                                    }

                                    v823 = 8 * v820;
                                    v824 = 48 - v237;
                                    if (8 * v820 >= 0x41)
                                    {
                                      v825 = (v824 & 0x7FFFFFF8) + 8;
                                      v826 = v825 + v237;
                                      v827 = (v819 + (v825 >> 3));
                                      v238 = (bswap64(*v819) >> (56 - (v824 & 0xF8u)) << (v824 & 7)) | *v2410;
                                      goto LABEL_550;
                                    }

                                    v828 = 56 - v237 - v823;
                                    if (v828 < 0)
                                    {
                                      v826 = v237;
                                    }

                                    else
                                    {
                                      v826 = v237 + 0x40000000;
                                    }

                                    if (v823)
                                    {
                                      v829 = 1;
                                    }

                                    else
                                    {
                                      v829 = v828 <= -1;
                                    }

                                    v830 = v828 & ~(v828 >> 31);
                                    if (!v829 || v824 < v830)
                                    {
                                      v827 = v819;
                                    }

                                    else
                                    {
                                      v832 = v830 - 1;
                                      if (v830 - 1 >= (40 - v237))
                                      {
                                        v832 = 40 - v237;
                                      }

                                      v833 = 47 - v237 - v832;
                                      if (v833 < 0x78)
                                      {
                                        v827 = v819;
                                        goto LABEL_549;
                                      }

                                      v834 = (v833 >> 3) + 1;
                                      v835 = v238;
                                      v836 = 0uLL;
                                      v837 = v826;
                                      v838 = vdupq_n_s32(v824);
                                      v839 = vaddq_s32(v838, xmmword_273BC3230);
                                      v827 = (v819 + (v834 & 0x3FFFFFF0));
                                      v840 = vaddq_s32(v838, xmmword_273BC3240);
                                      v824 -= 8 * (v834 & 0x3FFFFFF0);
                                      v841 = vaddq_s32(v838, xmmword_273BC3250);
                                      v842 = vaddq_s32(v838, xmmword_273BC3220);
                                      v843 = v834 & 0x3FFFFFF0;
                                      v844 = v819;
                                      v845 = 0uLL;
                                      v846 = 0uLL;
                                      v847 = 0uLL;
                                      v848 = 0uLL;
                                      v849 = 0uLL;
                                      v850 = 0uLL;
                                      v851 = 0uLL;
                                      v852 = 0uLL;
                                      v853 = 0uLL;
                                      do
                                      {
                                        v854 = *v844++;
                                        v855 = vmovl_high_u8(v854);
                                        v856 = vmovl_high_u16(v855);
                                        v857.i64[0] = v856.u32[0];
                                        v857.i64[1] = v856.u32[1];
                                        v858 = v857;
                                        v859 = vmovl_u16(*v855.i8);
                                        v857.i64[0] = v859.u32[2];
                                        v857.i64[1] = v859.u32[3];
                                        v860 = v857;
                                        v861 = vmovl_u8(*v854.i8);
                                        v862 = vmovl_high_u16(v861);
                                        v857.i64[0] = v862.u32[2];
                                        v857.i64[1] = v862.u32[3];
                                        v863 = v857;
                                        v857.i64[0] = v856.u32[2];
                                        v857.i64[1] = v856.u32[3];
                                        v864 = v857;
                                        v857.i64[0] = v859.u32[0];
                                        v857.i64[1] = v859.u32[1];
                                        v865 = v857;
                                        v857.i64[0] = v862.u32[0];
                                        v857.i64[1] = v862.u32[1];
                                        v866 = v857;
                                        v867 = vmovl_u16(*v861.i8);
                                        v857.i64[0] = v867.u32[2];
                                        v857.i64[1] = v867.u32[3];
                                        v868 = v857;
                                        v857.i64[0] = v867.u32[0];
                                        v857.i64[1] = v867.u32[1];
                                        v869 = v857;
                                        v857.i64[0] = v842.u32[0];
                                        v857.i64[1] = v842.u32[1];
                                        v870 = vshlq_u64(v869, v857);
                                        v857.i64[0] = v842.u32[2];
                                        v857.i64[1] = v842.u32[3];
                                        v871 = vshlq_u64(v868, v857);
                                        v857.i64[0] = v841.u32[0];
                                        v857.i64[1] = v841.u32[1];
                                        v872 = vshlq_u64(v866, v857);
                                        v857.i64[0] = v840.u32[0];
                                        v857.i64[1] = v840.u32[1];
                                        v873 = vshlq_u64(v865, v857);
                                        v857.i64[0] = v839.u32[2];
                                        v857.i64[1] = v839.u32[3];
                                        v874 = vshlq_u64(v864, v857);
                                        v857.i64[0] = v841.u32[2];
                                        v857.i64[1] = v841.u32[3];
                                        v875 = vshlq_u64(v863, v857);
                                        v857.i64[0] = v840.u32[2];
                                        v857.i64[1] = v840.u32[3];
                                        v876 = vshlq_u64(v860, v857);
                                        v857.i64[0] = v839.u32[0];
                                        v857.i64[1] = v839.u32[1];
                                        v849 = vorrq_s8(vshlq_u64(v858, v857), v849);
                                        v848 = vorrq_s8(v876, v848);
                                        v846 = vorrq_s8(v875, v846);
                                        v850 = vorrq_s8(v874, v850);
                                        v847 = vorrq_s8(v873, v847);
                                        v845 = vorrq_s8(v872, v845);
                                        v836 = vorrq_s8(v871, v836);
                                        v835 = vorrq_s8(v870, v835);
                                        v837 = vaddq_s32(v837, v812);
                                        v851 = vaddq_s32(v851, v812);
                                        v852 = vaddq_s32(v852, v812);
                                        v853 = vaddq_s32(v853, v812);
                                        v842 = vaddq_s32(v842, v813);
                                        v841 = vaddq_s32(v841, v813);
                                        v840 = vaddq_s32(v840, v813);
                                        v839 = vaddq_s32(v839, v813);
                                        v843 -= 16;
                                      }

                                      while (v843);
                                      v877 = vorrq_s8(vorrq_s8(vorrq_s8(v835, v847), vorrq_s8(v845, v849)), vorrq_s8(vorrq_s8(v836, v848), vorrq_s8(v846, v850)));
                                      v238 = vorr_s8(*v877.i8, *&vextq_s8(v877, v877, 8uLL));
                                      v826 = vaddvq_s32(vaddq_s32(vaddq_s32(v837, v852), vaddq_s32(v851, v853)));
                                      if ((v834 & 0x3FFFFFF0) != v834)
                                      {
                                        do
                                        {
LABEL_549:
                                          v826 += 8;
                                          v878 = *v827;
                                          v827 = (v827 + 1);
                                          v238 |= v878 << v824;
                                          v824 -= 8;
                                        }

                                        while (v824 >= v830);
                                      }
                                    }

LABEL_550:
                                    *(a1 + 40) += v827 - v819;
                                    v237 = v826;
                                    v814 = ((v236 - 1) * v817 + 256) >> 8;
                                    v818 = v238 - (v814 << 56);
                                    if (v238 < v814 << 56)
                                    {
                                      goto LABEL_551;
                                    }

                                    goto LABEL_518;
                                  }

LABEL_483:
                                  LODWORD(v745) = *(a1 + 24) - v745;
                                  v746 = 1;
                                  v238 = v749;
                                  goto LABEL_484;
                                }

                                break;
                              }

                              v750 = *(a1 + 40);
                              v751 = *(a1 + 32) - v750;
                              v752 = *(a1 + 48);
                              if (v752)
                              {
                                if (v751 >= 9)
                                {
                                  v753 = 9;
                                }

                                else
                                {
                                  v753 = *(a1 + 32) - v750;
                                }

                                v750 = (a1 + 64);
                                result = v752(*(a1 + 56), *(a1 + 40), v2407, v753);
                                v744.i64[0] = 0x7F0000007FLL;
                                v744.i64[1] = 0x7F0000007FLL;
                                v743.i64[0] = 0x800000008;
                                v743.i64[1] = 0x800000008;
                              }

                              v754 = 8 * v751;
                              v755 = 48 - v237;
                              if (8 * v751 >= 0x41)
                              {
                                v756 = (v755 & 0x7FFFFFF8) + 8;
                                v757 = v756 + v237;
                                v758 = (v750 + (v756 >> 3));
                                v238 = (bswap64(*v750) >> (56 - (v755 & 0xF8u)) << (v755 & 7)) | *v2410;
                                goto LABEL_515;
                              }

                              v759 = 56 - v237 - v754;
                              if (v759 < 0)
                              {
                                v757 = v237;
                              }

                              else
                              {
                                v757 = v237 + 0x40000000;
                              }

                              if (v754)
                              {
                                v760 = 1;
                              }

                              else
                              {
                                v760 = v759 <= -1;
                              }

                              v761 = v759 & ~(v759 >> 31);
                              if (!v760 || v755 < v761)
                              {
                                v758 = v750;
                              }

                              else
                              {
                                v763 = v761 - 1;
                                if (v761 - 1 >= (40 - v237))
                                {
                                  v763 = 40 - v237;
                                }

                                v764 = 47 - v237 - v763;
                                if (v764 < 0x78)
                                {
                                  v758 = v750;
                                  goto LABEL_514;
                                }

                                v765 = (v764 >> 3) + 1;
                                v766 = v238;
                                v767 = 0uLL;
                                v768 = v757;
                                v769 = vdupq_n_s32(v755);
                                v770 = vaddq_s32(v769, xmmword_273BC3230);
                                v758 = (v750 + (v765 & 0x3FFFFFF0));
                                v771 = vaddq_s32(v769, xmmword_273BC3240);
                                v755 -= 8 * (v765 & 0x3FFFFFF0);
                                v772 = vaddq_s32(v769, xmmword_273BC3250);
                                v773 = vaddq_s32(v769, xmmword_273BC3220);
                                v774 = v765 & 0x3FFFFFF0;
                                v775 = v750;
                                v776 = 0uLL;
                                v777 = 0uLL;
                                v778 = 0uLL;
                                v779 = 0uLL;
                                v780 = 0uLL;
                                v781 = 0uLL;
                                v782 = 0uLL;
                                v783 = 0uLL;
                                v784 = 0uLL;
                                do
                                {
                                  v785 = *v775++;
                                  v786 = vmovl_high_u8(v785);
                                  v787 = vmovl_high_u16(v786);
                                  v788.i64[0] = v787.u32[0];
                                  v788.i64[1] = v787.u32[1];
                                  v789 = v788;
                                  v790 = vmovl_u16(*v786.i8);
                                  v788.i64[0] = v790.u32[2];
                                  v788.i64[1] = v790.u32[3];
                                  v791 = v788;
                                  v792 = vmovl_u8(*v785.i8);
                                  v793 = vmovl_high_u16(v792);
                                  v788.i64[0] = v793.u32[2];
                                  v788.i64[1] = v793.u32[3];
                                  v794 = v788;
                                  v788.i64[0] = v787.u32[2];
                                  v788.i64[1] = v787.u32[3];
                                  v795 = v788;
                                  v788.i64[0] = v790.u32[0];
                                  v788.i64[1] = v790.u32[1];
                                  v796 = v788;
                                  v788.i64[0] = v793.u32[0];
                                  v788.i64[1] = v793.u32[1];
                                  v797 = v788;
                                  v798 = vmovl_u16(*v792.i8);
                                  v788.i64[0] = v798.u32[2];
                                  v788.i64[1] = v798.u32[3];
                                  v799 = v788;
                                  v788.i64[0] = v798.u32[0];
                                  v788.i64[1] = v798.u32[1];
                                  v800 = v788;
                                  v788.i64[0] = v773.u32[0];
                                  v788.i64[1] = v773.u32[1];
                                  v801 = vshlq_u64(v800, v788);
                                  v788.i64[0] = v773.u32[2];
                                  v788.i64[1] = v773.u32[3];
                                  v802 = vshlq_u64(v799, v788);
                                  v788.i64[0] = v772.u32[0];
                                  v788.i64[1] = v772.u32[1];
                                  v803 = vshlq_u64(v797, v788);
                                  v788.i64[0] = v771.u32[0];
                                  v788.i64[1] = v771.u32[1];
                                  v804 = vshlq_u64(v796, v788);
                                  v788.i64[0] = v770.u32[2];
                                  v788.i64[1] = v770.u32[3];
                                  v805 = vshlq_u64(v795, v788);
                                  v788.i64[0] = v772.u32[2];
                                  v788.i64[1] = v772.u32[3];
                                  v806 = vshlq_u64(v794, v788);
                                  v788.i64[0] = v771.u32[2];
                                  v788.i64[1] = v771.u32[3];
                                  v807 = vshlq_u64(v791, v788);
                                  v788.i64[0] = v770.u32[0];
                                  v788.i64[1] = v770.u32[1];
                                  v780 = vorrq_s8(vshlq_u64(v789, v788), v780);
                                  v779 = vorrq_s8(v807, v779);
                                  v777 = vorrq_s8(v806, v777);
                                  v781 = vorrq_s8(v805, v781);
                                  v778 = vorrq_s8(v804, v778);
                                  v776 = vorrq_s8(v803, v776);
                                  v767 = vorrq_s8(v802, v767);
                                  v766 = vorrq_s8(v801, v766);
                                  v768 = vaddq_s32(v768, v743);
                                  v782 = vaddq_s32(v782, v743);
                                  v783 = vaddq_s32(v783, v743);
                                  v784 = vaddq_s32(v784, v743);
                                  v773 = vaddq_s32(v773, v744);
                                  v772 = vaddq_s32(v772, v744);
                                  v771 = vaddq_s32(v771, v744);
                                  v770 = vaddq_s32(v770, v744);
                                  v774 -= 16;
                                }

                                while (v774);
                                v808 = vorrq_s8(vorrq_s8(vorrq_s8(v766, v778), vorrq_s8(v776, v780)), vorrq_s8(vorrq_s8(v767, v779), vorrq_s8(v777, v781)));
                                v238 = vorr_s8(*v808.i8, *&vextq_s8(v808, v808, 8uLL));
                                v757 = vaddvq_s32(vaddq_s32(vaddq_s32(v768, v783), vaddq_s32(v782, v784)));
                                if ((v765 & 0x3FFFFFF0) != v765)
                                {
                                  do
                                  {
LABEL_514:
                                    v757 += 8;
                                    v809 = *v758;
                                    v758 = (v758 + 1);
                                    v238 |= v809 << v755;
                                    v755 -= 8;
                                  }

                                  while (v755 >= v761);
                                }
                              }

LABEL_515:
                              *(a1 + 40) += v758 - v750;
                              v237 = v757;
                              v745 = ((v236 - 1) * v748 + 256) >> 8;
                              v749 = v238 - (v745 << 56);
                              if (v238 < v745 << 56)
                              {
                                goto LABEL_516;
                              }

                              goto LABEL_483;
                            }

                            continue;
                          }

LABEL_441:
                          LODWORD(v674) = *(a1 + 24) - v674;
                          v675 = 1;
                          v238 = v678;
                          goto LABEL_442;
                        }

                        break;
                      }

                      v679 = *(a1 + 40);
                      v680 = *(a1 + 32) - v679;
                      v681 = *(a1 + 48);
                      if (v681)
                      {
                        if (v680 >= 9)
                        {
                          v682 = 9;
                        }

                        else
                        {
                          v682 = *(a1 + 32) - v679;
                        }

                        v679 = (a1 + 64);
                        result = v681(*(a1 + 56), *(a1 + 40), v2407, v682);
                        v673.i64[0] = 0x7F0000007FLL;
                        v673.i64[1] = 0x7F0000007FLL;
                        v672.i64[0] = 0x800000008;
                        v672.i64[1] = 0x800000008;
                      }

                      v683 = 8 * v680;
                      v684 = 48 - v237;
                      if (8 * v680 >= 0x41)
                      {
                        v685 = (v684 & 0x7FFFFFF8) + 8;
                        v686 = v685 + v237;
                        v687 = (v679 + (v685 >> 3));
                        v238 = (bswap64(*v679) >> (56 - (v684 & 0xF8u)) << (v684 & 7)) | *v2410;
                        goto LABEL_473;
                      }

                      v688 = 56 - v237 - v683;
                      if (v688 < 0)
                      {
                        v686 = v237;
                      }

                      else
                      {
                        v686 = v237 + 0x40000000;
                      }

                      if (v683)
                      {
                        v689 = 1;
                      }

                      else
                      {
                        v689 = v688 <= -1;
                      }

                      v690 = v688 & ~(v688 >> 31);
                      if (!v689 || v684 < v690)
                      {
                        v687 = v679;
                      }

                      else
                      {
                        v692 = v690 - 1;
                        if (v690 - 1 >= (40 - v237))
                        {
                          v692 = 40 - v237;
                        }

                        v693 = 47 - v237 - v692;
                        if (v693 < 0x78)
                        {
                          v687 = v679;
                          goto LABEL_472;
                        }

                        v694 = (v693 >> 3) + 1;
                        v695 = v238;
                        v696 = 0uLL;
                        v697 = v686;
                        v698 = vdupq_n_s32(v684);
                        v699 = vaddq_s32(v698, xmmword_273BC3230);
                        v687 = (v679 + (v694 & 0x3FFFFFF0));
                        v700 = vaddq_s32(v698, xmmword_273BC3240);
                        v684 -= 8 * (v694 & 0x3FFFFFF0);
                        v701 = vaddq_s32(v698, xmmword_273BC3250);
                        v702 = vaddq_s32(v698, xmmword_273BC3220);
                        v703 = v694 & 0x3FFFFFF0;
                        v704 = v679;
                        v705 = 0uLL;
                        v706 = 0uLL;
                        v707 = 0uLL;
                        v708 = 0uLL;
                        v709 = 0uLL;
                        v710 = 0uLL;
                        v711 = 0uLL;
                        v712 = 0uLL;
                        v713 = 0uLL;
                        do
                        {
                          v714 = *v704++;
                          v715 = vmovl_high_u8(v714);
                          v716 = vmovl_high_u16(v715);
                          v717.i64[0] = v716.u32[0];
                          v717.i64[1] = v716.u32[1];
                          v718 = v717;
                          v719 = vmovl_u16(*v715.i8);
                          v717.i64[0] = v719.u32[2];
                          v717.i64[1] = v719.u32[3];
                          v720 = v717;
                          v721 = vmovl_u8(*v714.i8);
                          v722 = vmovl_high_u16(v721);
                          v717.i64[0] = v722.u32[2];
                          v717.i64[1] = v722.u32[3];
                          v723 = v717;
                          v717.i64[0] = v716.u32[2];
                          v717.i64[1] = v716.u32[3];
                          v724 = v717;
                          v717.i64[0] = v719.u32[0];
                          v717.i64[1] = v719.u32[1];
                          v725 = v717;
                          v717.i64[0] = v722.u32[0];
                          v717.i64[1] = v722.u32[1];
                          v726 = v717;
                          v727 = vmovl_u16(*v721.i8);
                          v717.i64[0] = v727.u32[2];
                          v717.i64[1] = v727.u32[3];
                          v728 = v717;
                          v717.i64[0] = v727.u32[0];
                          v717.i64[1] = v727.u32[1];
                          v729 = v717;
                          v717.i64[0] = v702.u32[0];
                          v717.i64[1] = v702.u32[1];
                          v730 = vshlq_u64(v729, v717);
                          v717.i64[0] = v702.u32[2];
                          v717.i64[1] = v702.u32[3];
                          v731 = vshlq_u64(v728, v717);
                          v717.i64[0] = v701.u32[0];
                          v717.i64[1] = v701.u32[1];
                          v732 = vshlq_u64(v726, v717);
                          v717.i64[0] = v700.u32[0];
                          v717.i64[1] = v700.u32[1];
                          v733 = vshlq_u64(v725, v717);
                          v717.i64[0] = v699.u32[2];
                          v717.i64[1] = v699.u32[3];
                          v734 = vshlq_u64(v724, v717);
                          v717.i64[0] = v701.u32[2];
                          v717.i64[1] = v701.u32[3];
                          v735 = vshlq_u64(v723, v717);
                          v717.i64[0] = v700.u32[2];
                          v717.i64[1] = v700.u32[3];
                          v736 = vshlq_u64(v720, v717);
                          v717.i64[0] = v699.u32[0];
                          v717.i64[1] = v699.u32[1];
                          v709 = vorrq_s8(vshlq_u64(v718, v717), v709);
                          v708 = vorrq_s8(v736, v708);
                          v706 = vorrq_s8(v735, v706);
                          v710 = vorrq_s8(v734, v710);
                          v707 = vorrq_s8(v733, v707);
                          v705 = vorrq_s8(v732, v705);
                          v696 = vorrq_s8(v731, v696);
                          v695 = vorrq_s8(v730, v695);
                          v697 = vaddq_s32(v697, v672);
                          v711 = vaddq_s32(v711, v672);
                          v712 = vaddq_s32(v712, v672);
                          v713 = vaddq_s32(v713, v672);
                          v702 = vaddq_s32(v702, v673);
                          v701 = vaddq_s32(v701, v673);
                          v700 = vaddq_s32(v700, v673);
                          v699 = vaddq_s32(v699, v673);
                          v703 -= 16;
                        }

                        while (v703);
                        v737 = vorrq_s8(vorrq_s8(vorrq_s8(v695, v707), vorrq_s8(v705, v709)), vorrq_s8(vorrq_s8(v696, v708), vorrq_s8(v706, v710)));
                        v238 = vorr_s8(*v737.i8, *&vextq_s8(v737, v737, 8uLL));
                        v686 = vaddvq_s32(vaddq_s32(vaddq_s32(v697, v712), vaddq_s32(v711, v713)));
                        if ((v694 & 0x3FFFFFF0) != v694)
                        {
                          do
                          {
LABEL_472:
                            v686 += 8;
                            v738 = *v687;
                            v687 = (v687 + 1);
                            v238 |= v738 << v684;
                            v684 -= 8;
                          }

                          while (v684 >= v690);
                        }
                      }

LABEL_473:
                      *(a1 + 40) += v687 - v679;
                      v237 = v686;
                      v674 = ((v236 - 1) * v677 + 256) >> 8;
                      v678 = v238 - (v674 << 56);
                      if (v238 < v674 << 56)
                      {
                        goto LABEL_474;
                      }

                      goto LABEL_441;
                    }

LABEL_360:
                    LODWORD(v531) = *(a1 + 24) - v531;
                    v532 = 1;
                    v238 = v535;
                    goto LABEL_361;
                  }

                  break;
                }

                v536 = *(a1 + 40);
                v537 = *(a1 + 32) - v536;
                v538 = *(a1 + 48);
                if (v538)
                {
                  if (v537 >= 9)
                  {
                    v539 = 9;
                  }

                  else
                  {
                    v539 = *(a1 + 32) - v536;
                  }

                  v536 = (a1 + 64);
                  result = v538(*(a1 + 56), *(a1 + 40), v2407, v539);
                  v530.i64[0] = 0x7F0000007FLL;
                  v530.i64[1] = 0x7F0000007FLL;
                  v529.i64[0] = 0x800000008;
                  v529.i64[1] = 0x800000008;
                }

                v540 = 8 * v537;
                v541 = 48 - v237;
                if (8 * v537 >= 0x41)
                {
                  v542 = (v541 & 0x7FFFFFF8) + 8;
                  v543 = v542 + v237;
                  v544 = (v536 + (v542 >> 3));
                  v238 = (bswap64(*v536) >> (56 - (v541 & 0xF8u)) << (v541 & 7)) | *v2410;
                  goto LABEL_392;
                }

                v545 = 56 - v237 - v540;
                if (v545 < 0)
                {
                  v543 = v237;
                }

                else
                {
                  v543 = v237 + 0x40000000;
                }

                if (v540)
                {
                  v546 = 1;
                }

                else
                {
                  v546 = v545 <= -1;
                }

                v547 = v545 & ~(v545 >> 31);
                if (!v546 || v541 < v547)
                {
                  v544 = v536;
                }

                else
                {
                  v549 = v547 - 1;
                  if (v547 - 1 >= (40 - v237))
                  {
                    v549 = 40 - v237;
                  }

                  v550 = 47 - v237 - v549;
                  if (v550 < 0x78)
                  {
                    v544 = v536;
                    goto LABEL_391;
                  }

                  v551 = (v550 >> 3) + 1;
                  v552 = v238;
                  v553 = 0uLL;
                  v554 = v543;
                  v555 = vdupq_n_s32(v541);
                  v556 = vaddq_s32(v555, xmmword_273BC3230);
                  v544 = (v536 + (v551 & 0x3FFFFFF0));
                  v557 = vaddq_s32(v555, xmmword_273BC3240);
                  v541 -= 8 * (v551 & 0x3FFFFFF0);
                  v558 = vaddq_s32(v555, xmmword_273BC3250);
                  v559 = vaddq_s32(v555, xmmword_273BC3220);
                  v560 = v551 & 0x3FFFFFF0;
                  v561 = v536;
                  v562 = 0uLL;
                  v563 = 0uLL;
                  v564 = 0uLL;
                  v565 = 0uLL;
                  v566 = 0uLL;
                  v567 = 0uLL;
                  v568 = 0uLL;
                  v569 = 0uLL;
                  v570 = 0uLL;
                  do
                  {
                    v571 = *v561++;
                    v572 = vmovl_high_u8(v571);
                    v573 = vmovl_high_u16(v572);
                    v574.i64[0] = v573.u32[0];
                    v574.i64[1] = v573.u32[1];
                    v575 = v574;
                    v576 = vmovl_u16(*v572.i8);
                    v574.i64[0] = v576.u32[2];
                    v574.i64[1] = v576.u32[3];
                    v577 = v574;
                    v578 = vmovl_u8(*v571.i8);
                    v579 = vmovl_high_u16(v578);
                    v574.i64[0] = v579.u32[2];
                    v574.i64[1] = v579.u32[3];
                    v580 = v574;
                    v574.i64[0] = v573.u32[2];
                    v574.i64[1] = v573.u32[3];
                    v581 = v574;
                    v574.i64[0] = v576.u32[0];
                    v574.i64[1] = v576.u32[1];
                    v582 = v574;
                    v574.i64[0] = v579.u32[0];
                    v574.i64[1] = v579.u32[1];
                    v583 = v574;
                    v584 = vmovl_u16(*v578.i8);
                    v574.i64[0] = v584.u32[2];
                    v574.i64[1] = v584.u32[3];
                    v585 = v574;
                    v574.i64[0] = v584.u32[0];
                    v574.i64[1] = v584.u32[1];
                    v586 = v574;
                    v574.i64[0] = v559.u32[0];
                    v574.i64[1] = v559.u32[1];
                    v587 = vshlq_u64(v586, v574);
                    v574.i64[0] = v559.u32[2];
                    v574.i64[1] = v559.u32[3];
                    v588 = vshlq_u64(v585, v574);
                    v574.i64[0] = v558.u32[0];
                    v574.i64[1] = v558.u32[1];
                    v589 = vshlq_u64(v583, v574);
                    v574.i64[0] = v557.u32[0];
                    v574.i64[1] = v557.u32[1];
                    v590 = vshlq_u64(v582, v574);
                    v574.i64[0] = v556.u32[2];
                    v574.i64[1] = v556.u32[3];
                    v591 = vshlq_u64(v581, v574);
                    v574.i64[0] = v558.u32[2];
                    v574.i64[1] = v558.u32[3];
                    v592 = vshlq_u64(v580, v574);
                    v574.i64[0] = v557.u32[2];
                    v574.i64[1] = v557.u32[3];
                    v593 = vshlq_u64(v577, v574);
                    v574.i64[0] = v556.u32[0];
                    v574.i64[1] = v556.u32[1];
                    v566 = vorrq_s8(vshlq_u64(v575, v574), v566);
                    v565 = vorrq_s8(v593, v565);
                    v563 = vorrq_s8(v592, v563);
                    v567 = vorrq_s8(v591, v567);
                    v564 = vorrq_s8(v590, v564);
                    v562 = vorrq_s8(v589, v562);
                    v553 = vorrq_s8(v588, v553);
                    v552 = vorrq_s8(v587, v552);
                    v554 = vaddq_s32(v554, v529);
                    v568 = vaddq_s32(v568, v529);
                    v569 = vaddq_s32(v569, v529);
                    v570 = vaddq_s32(v570, v529);
                    v559 = vaddq_s32(v559, v530);
                    v558 = vaddq_s32(v558, v530);
                    v557 = vaddq_s32(v557, v530);
                    v556 = vaddq_s32(v556, v530);
                    v560 -= 16;
                  }

                  while (v560);
                  v594 = vorrq_s8(vorrq_s8(vorrq_s8(v552, v564), vorrq_s8(v562, v566)), vorrq_s8(vorrq_s8(v553, v565), vorrq_s8(v563, v567)));
                  v238 = vorr_s8(*v594.i8, *&vextq_s8(v594, v594, 8uLL));
                  v543 = vaddvq_s32(vaddq_s32(vaddq_s32(v554, v569), vaddq_s32(v568, v570)));
                  if ((v551 & 0x3FFFFFF0) != v551)
                  {
                    do
                    {
LABEL_391:
                      v543 += 8;
                      v595 = *v544;
                      v544 = (v544 + 1);
                      v238 |= v595 << v541;
                      v541 -= 8;
                    }

                    while (v541 >= v547);
                  }
                }

LABEL_392:
                *(a1 + 40) += v544 - v536;
                v237 = v543;
                v531 = ((v236 - 1) * v534 + 256) >> 8;
                v535 = v238 - (v531 << 56);
                if (v238 < v531 << 56)
                {
                  goto LABEL_393;
                }

                goto LABEL_360;
              }

              if (v2398 && v2398[8] <= 0)
              {
                v524 = v2398 + 44;
                if (*v2398 >= 3u)
                {
                  v524 = v2398 + 1;
                }

                v210 = *v524;
                if (v16)
                {
                  goto LABEL_354;
                }

LABEL_355:
                v525 = 0;
              }

              else
              {
                v210 = 0;
                if (!v16)
                {
                  goto LABEL_355;
                }

LABEL_354:
                if (v16[8] > 0)
                {
                  goto LABEL_355;
                }

                v598 = v16 + 32;
                if (*v16 >= 3u)
                {
                  v598 = v16 + 1;
                }

                v525 = *v598;
              }

              LOBYTE(v599) = 0;
              v600 = &vp9_kf_y_mode_prob + 90 * v210 + 9 * v525;
              v236 = *(a1 + 24);
              v237 = *(a1 + 28);
              v238 = *(a1 + 16);
              v601.i64[0] = 0x800000008;
              v601.i64[1] = 0x800000008;
              v602.i64[0] = 0x7F0000007FLL;
              v602.i64[1] = 0x7F0000007FLL;
              while (2)
              {
                v606 = v600[v599 >> 1];
                if ((v237 & 0x80000000) == 0)
                {
                  v603 = ((v236 - 1) * v606 + 256) >> 8;
                  v607 = v238 - (v603 << 56);
                  if (v238 < v603 << 56)
                  {
LABEL_435:
                    v604 = 0;
LABEL_403:
                    v605 = vpx_norm[v603];
                    v236 = v603 << v605;
                    v238 <<= v605;
                    v237 -= v605;
                    *(a1 + 16) = v238;
                    *(a1 + 24) = v603 << v605;
                    *(a1 + 28) = v237;
                    v599 = vp9_intra_mode_tree[v604 + v599];
                    if (v599 <= 0)
                    {
                      v377 = -v599;
                      v668 = v2388;
                      goto LABEL_553;
                    }

                    continue;
                  }

LABEL_402:
                  LODWORD(v603) = *(a1 + 24) - v603;
                  v604 = 1;
                  v238 = v607;
                  goto LABEL_403;
                }

                break;
              }

              v608 = *(a1 + 40);
              v609 = *(a1 + 32) - v608;
              v610 = *(a1 + 48);
              if (v610)
              {
                v2408 = v599;
                if (v609 >= 9)
                {
                  v611 = 9;
                }

                else
                {
                  v611 = *(a1 + 32) - v608;
                }

                v608 = (a1 + 64);
                result = v610(*(a1 + 56), *(a1 + 40), a1 + 64, v611);
                LOBYTE(v599) = v2408;
                v602.i64[0] = 0x7F0000007FLL;
                v602.i64[1] = 0x7F0000007FLL;
                v601.i64[0] = 0x800000008;
                v601.i64[1] = 0x800000008;
              }

              v612 = 8 * v609;
              v613 = 48 - v237;
              if (8 * v609 >= 0x41)
              {
                v614 = (v613 & 0x7FFFFFF8) + 8;
                v615 = v614 + v237;
                v616 = (v608 + (v614 >> 3));
                v238 = (bswap64(*v608) >> (56 - (v613 & 0xF8u)) << (v613 & 7)) | *v2410;
                goto LABEL_434;
              }

              v617 = 56 - v237 - v612;
              if (v617 < 0)
              {
                v615 = v237;
              }

              else
              {
                v615 = v237 + 0x40000000;
              }

              if (v612)
              {
                v618 = 1;
              }

              else
              {
                v618 = v617 <= -1;
              }

              v619 = v617 & ~(v617 >> 31);
              if (!v618 || v613 < v619)
              {
                v616 = v608;
              }

              else
              {
                v621 = v619 - 1;
                if (v619 - 1 >= (40 - v237))
                {
                  v621 = 40 - v237;
                }

                v622 = 47 - v237 - v621;
                if (v622 < 0x78)
                {
                  v616 = v608;
                  goto LABEL_433;
                }

                v623 = (v622 >> 3) + 1;
                v624 = v238;
                v625 = 0uLL;
                v626 = v615;
                v627 = vdupq_n_s32(v613);
                v628 = vaddq_s32(v627, xmmword_273BC3230);
                v616 = (v608 + (v623 & 0x3FFFFFF0));
                v629 = vaddq_s32(v627, xmmword_273BC3240);
                v613 -= 8 * (v623 & 0x3FFFFFF0);
                v630 = vaddq_s32(v627, xmmword_273BC3250);
                v631 = vaddq_s32(v627, xmmword_273BC3220);
                v632 = v623 & 0x3FFFFFF0;
                v633 = v608;
                v634 = 0uLL;
                v635 = 0uLL;
                v636 = 0uLL;
                v637 = 0uLL;
                v638 = 0uLL;
                v639 = 0uLL;
                v640 = 0uLL;
                v641 = 0uLL;
                v642 = 0uLL;
                do
                {
                  v643 = *v633++;
                  v644 = vmovl_high_u8(v643);
                  v645 = vmovl_high_u16(v644);
                  v646.i64[0] = v645.u32[0];
                  v646.i64[1] = v645.u32[1];
                  v647 = v646;
                  v648 = vmovl_u16(*v644.i8);
                  v646.i64[0] = v648.u32[2];
                  v646.i64[1] = v648.u32[3];
                  v649 = v646;
                  v650 = vmovl_u8(*v643.i8);
                  v651 = vmovl_high_u16(v650);
                  v646.i64[0] = v651.u32[2];
                  v646.i64[1] = v651.u32[3];
                  v652 = v646;
                  v646.i64[0] = v645.u32[2];
                  v646.i64[1] = v645.u32[3];
                  v653 = v646;
                  v646.i64[0] = v648.u32[0];
                  v646.i64[1] = v648.u32[1];
                  v654 = v646;
                  v646.i64[0] = v651.u32[0];
                  v646.i64[1] = v651.u32[1];
                  v655 = v646;
                  v656 = vmovl_u16(*v650.i8);
                  v646.i64[0] = v656.u32[2];
                  v646.i64[1] = v656.u32[3];
                  v657 = v646;
                  v646.i64[0] = v656.u32[0];
                  v646.i64[1] = v656.u32[1];
                  v658 = v646;
                  v646.i64[0] = v631.u32[0];
                  v646.i64[1] = v631.u32[1];
                  v659 = vshlq_u64(v658, v646);
                  v646.i64[0] = v631.u32[2];
                  v646.i64[1] = v631.u32[3];
                  v660 = vshlq_u64(v657, v646);
                  v646.i64[0] = v630.u32[0];
                  v646.i64[1] = v630.u32[1];
                  v661 = vshlq_u64(v655, v646);
                  v646.i64[0] = v629.u32[0];
                  v646.i64[1] = v629.u32[1];
                  v662 = vshlq_u64(v654, v646);
                  v646.i64[0] = v628.u32[2];
                  v646.i64[1] = v628.u32[3];
                  v663 = vshlq_u64(v653, v646);
                  v646.i64[0] = v630.u32[2];
                  v646.i64[1] = v630.u32[3];
                  v664 = vshlq_u64(v652, v646);
                  v646.i64[0] = v629.u32[2];
                  v646.i64[1] = v629.u32[3];
                  v665 = vshlq_u64(v649, v646);
                  v646.i64[0] = v628.u32[0];
                  v646.i64[1] = v628.u32[1];
                  v638 = vorrq_s8(vshlq_u64(v647, v646), v638);
                  v637 = vorrq_s8(v665, v637);
                  v635 = vorrq_s8(v664, v635);
                  v639 = vorrq_s8(v663, v639);
                  v636 = vorrq_s8(v662, v636);
                  v634 = vorrq_s8(v661, v634);
                  v625 = vorrq_s8(v660, v625);
                  v624 = vorrq_s8(v659, v624);
                  v626 = vaddq_s32(v626, v601);
                  v640 = vaddq_s32(v640, v601);
                  v641 = vaddq_s32(v641, v601);
                  v642 = vaddq_s32(v642, v601);
                  v631 = vaddq_s32(v631, v602);
                  v630 = vaddq_s32(v630, v602);
                  v629 = vaddq_s32(v629, v602);
                  v628 = vaddq_s32(v628, v602);
                  v632 -= 16;
                }

                while (v632);
                v666 = vorrq_s8(vorrq_s8(vorrq_s8(v624, v636), vorrq_s8(v634, v638)), vorrq_s8(vorrq_s8(v625, v637), vorrq_s8(v635, v639)));
                v238 = vorr_s8(*v666.i8, *&vextq_s8(v666, v666, 8uLL));
                v615 = vaddvq_s32(vaddq_s32(vaddq_s32(v626, v641), vaddq_s32(v640, v642)));
                if ((v623 & 0x3FFFFFF0) != v623)
                {
                  do
                  {
LABEL_433:
                    v615 += 8;
                    v667 = *v616;
                    v616 = (v616 + 1);
                    v238 |= v667 << v613;
                    v613 -= 8;
                  }

                  while (v613 >= v619);
                }
              }

LABEL_434:
              *(a1 + 40) += v616 - v608;
              v237 = v615;
              v603 = ((v236 - 1) * v606 + 256) >> 8;
              v607 = v238 - (v603 << 56);
              if (v238 < v603 << 56)
              {
                goto LABEL_435;
              }

              goto LABEL_402;
            }

            if (v2398 && v2398[8] <= 0)
            {
              v231 = v2398 + 44;
              if (*v2398 >= 3u)
              {
                v231 = v2398 + 1;
              }

              v208 = *v231;
              if (v16)
              {
                goto LABEL_178;
              }

LABEL_179:
              v232 = 0;
            }

            else
            {
              v208 = 0;
              if (!v16)
              {
                goto LABEL_179;
              }

LABEL_178:
              if (v16[8] > 0)
              {
                goto LABEL_179;
              }

              v233 = v16 + 32;
              if (*v16 >= 3u)
              {
                v233 = v16 + 1;
              }

              v232 = *v233;
            }

            LOBYTE(v234) = 0;
            v235 = &vp9_kf_y_mode_prob + 90 * v208 + 9 * v232;
            v236 = *(a1 + 24);
            v237 = *(a1 + 28);
            v2405 = a1 + 64;
            v238 = *(a1 + 16);
            v239.i64[0] = 0x800000008;
            v239.i64[1] = 0x800000008;
            v240.i64[0] = 0x7F0000007FLL;
            v240.i64[1] = 0x7F0000007FLL;
            while (2)
            {
              v244 = v235[v234 >> 1];
              if ((v237 & 0x80000000) == 0)
              {
                v241 = ((v236 - 1) * v244 + 256) >> 8;
                v245 = v238 - (v241 << 56);
                if (v238 < v241 << 56)
                {
LABEL_217:
                  v242 = 0;
LABEL_185:
                  v243 = vpx_norm[v241];
                  v236 = v241 << v243;
                  v238 <<= v243;
                  v237 -= v243;
                  *(a1 + 16) = v238;
                  *(a1 + 24) = v241 << v243;
                  *(a1 + 28) = v237;
                  v234 = vp9_intra_mode_tree[v242 + v234];
                  if (v234 > 0)
                  {
                    continue;
                  }

                  v2388[44] = -v234;
                  v2388[20] = -v234;
                  if (v2398 && v2398[8] <= 0)
                  {
                    v307 = v2398 + 56;
                    if (*v2398 >= 3u)
                    {
                      v307 = v2398 + 1;
                    }

                    v306 = *v307;
                  }

                  else
                  {
                    v306 = 0;
                  }

                  LOBYTE(v308) = 0;
                  v309 = &vp9_kf_y_mode_prob + 90 * v306 + 9 * -v234;
                  v310.i64[0] = 0x800000008;
                  v310.i64[1] = 0x800000008;
                  v311.i64[0] = 0x7F0000007FLL;
                  v311.i64[1] = 0x7F0000007FLL;
                  while (2)
                  {
                    v315 = v309[v308 >> 1];
                    if ((v237 & 0x80000000) == 0)
                    {
                      v312 = ((v236 - 1) * v315 + 256) >> 8;
                      v316 = v238 - (v312 << 56);
                      if (v238 < v312 << 56)
                      {
LABEL_258:
                        v313 = 0;
LABEL_226:
                        v314 = vpx_norm[v312];
                        v236 = v312 << v314;
                        v238 <<= v314;
                        v237 -= v314;
                        *(a1 + 16) = v238;
                        *(a1 + 24) = v312 << v314;
                        *(a1 + 28) = v237;
                        v308 = vp9_intra_mode_tree[v313 + v308];
                        if (v308 <= 0)
                        {
                          v377 = -v308;
                          v2388[1] = -v308;
                          v2388[56] = -v308;
                          v2388[32] = -v308;
                          goto LABEL_554;
                        }

                        continue;
                      }

LABEL_225:
                      LODWORD(v312) = *(a1 + 24) - v312;
                      v313 = 1;
                      v238 = v316;
                      goto LABEL_226;
                    }

                    break;
                  }

                  v317 = *(a1 + 40);
                  v318 = *(a1 + 32) - v317;
                  v319 = *(a1 + 48);
                  if (v319)
                  {
                    if (v318 >= 9)
                    {
                      v320 = 9;
                    }

                    else
                    {
                      v320 = *(a1 + 32) - v317;
                    }

                    v317 = (a1 + 64);
                    result = v319(*(a1 + 56), *(a1 + 40), v2405, v320);
                    v311.i64[0] = 0x7F0000007FLL;
                    v311.i64[1] = 0x7F0000007FLL;
                    v310.i64[0] = 0x800000008;
                    v310.i64[1] = 0x800000008;
                  }

                  v321 = 8 * v318;
                  v322 = 48 - v237;
                  if (8 * v318 >= 0x41)
                  {
                    v323 = (v322 & 0x7FFFFFF8) + 8;
                    v324 = v323 + v237;
                    v325 = (v317 + (v323 >> 3));
                    v238 = (bswap64(*v317) >> (56 - (v322 & 0xF8u)) << (v322 & 7)) | *v2410;
                    goto LABEL_257;
                  }

                  v326 = 56 - v237 - v321;
                  if (v326 < 0)
                  {
                    v324 = v237;
                  }

                  else
                  {
                    v324 = v237 + 0x40000000;
                  }

                  if (v321)
                  {
                    v327 = 1;
                  }

                  else
                  {
                    v327 = v326 <= -1;
                  }

                  v328 = v326 & ~(v326 >> 31);
                  if (!v327 || v322 < v328)
                  {
                    v325 = v317;
                  }

                  else
                  {
                    v330 = v328 - 1;
                    if (v328 - 1 >= (40 - v237))
                    {
                      v330 = 40 - v237;
                    }

                    v331 = 47 - v237 - v330;
                    if (v331 < 0x78)
                    {
                      v325 = v317;
                      goto LABEL_256;
                    }

                    v332 = (v331 >> 3) + 1;
                    v333 = v238;
                    v334 = 0uLL;
                    v335 = v324;
                    v336 = vdupq_n_s32(v322);
                    v337 = vaddq_s32(v336, xmmword_273BC3230);
                    v325 = (v317 + (v332 & 0x3FFFFFF0));
                    v338 = vaddq_s32(v336, xmmword_273BC3240);
                    v322 -= 8 * (v332 & 0x3FFFFFF0);
                    v339 = vaddq_s32(v336, xmmword_273BC3250);
                    v340 = vaddq_s32(v336, xmmword_273BC3220);
                    v341 = v332 & 0x3FFFFFF0;
                    v342 = v317;
                    v343 = 0uLL;
                    v344 = 0uLL;
                    v345 = 0uLL;
                    v346 = 0uLL;
                    v347 = 0uLL;
                    v348 = 0uLL;
                    v349 = 0uLL;
                    v350 = 0uLL;
                    v351 = 0uLL;
                    do
                    {
                      v352 = *v342++;
                      v353 = vmovl_high_u8(v352);
                      v354 = vmovl_high_u16(v353);
                      v355.i64[0] = v354.u32[0];
                      v355.i64[1] = v354.u32[1];
                      v356 = v355;
                      v357 = vmovl_u16(*v353.i8);
                      v355.i64[0] = v357.u32[2];
                      v355.i64[1] = v357.u32[3];
                      v358 = v355;
                      v359 = vmovl_u8(*v352.i8);
                      v360 = vmovl_high_u16(v359);
                      v355.i64[0] = v360.u32[2];
                      v355.i64[1] = v360.u32[3];
                      v361 = v355;
                      v355.i64[0] = v354.u32[2];
                      v355.i64[1] = v354.u32[3];
                      v362 = v355;
                      v355.i64[0] = v357.u32[0];
                      v355.i64[1] = v357.u32[1];
                      v363 = v355;
                      v355.i64[0] = v360.u32[0];
                      v355.i64[1] = v360.u32[1];
                      v364 = v355;
                      v365 = vmovl_u16(*v359.i8);
                      v355.i64[0] = v365.u32[2];
                      v355.i64[1] = v365.u32[3];
                      v366 = v355;
                      v355.i64[0] = v365.u32[0];
                      v355.i64[1] = v365.u32[1];
                      v367 = v355;
                      v355.i64[0] = v340.u32[0];
                      v355.i64[1] = v340.u32[1];
                      v368 = vshlq_u64(v367, v355);
                      v355.i64[0] = v340.u32[2];
                      v355.i64[1] = v340.u32[3];
                      v369 = vshlq_u64(v366, v355);
                      v355.i64[0] = v339.u32[0];
                      v355.i64[1] = v339.u32[1];
                      v370 = vshlq_u64(v364, v355);
                      v355.i64[0] = v338.u32[0];
                      v355.i64[1] = v338.u32[1];
                      v371 = vshlq_u64(v363, v355);
                      v355.i64[0] = v337.u32[2];
                      v355.i64[1] = v337.u32[3];
                      v372 = vshlq_u64(v362, v355);
                      v355.i64[0] = v339.u32[2];
                      v355.i64[1] = v339.u32[3];
                      v373 = vshlq_u64(v361, v355);
                      v355.i64[0] = v338.u32[2];
                      v355.i64[1] = v338.u32[3];
                      v374 = vshlq_u64(v358, v355);
                      v355.i64[0] = v337.u32[0];
                      v355.i64[1] = v337.u32[1];
                      v347 = vorrq_s8(vshlq_u64(v356, v355), v347);
                      v346 = vorrq_s8(v374, v346);
                      v344 = vorrq_s8(v373, v344);
                      v348 = vorrq_s8(v372, v348);
                      v345 = vorrq_s8(v371, v345);
                      v343 = vorrq_s8(v370, v343);
                      v334 = vorrq_s8(v369, v334);
                      v333 = vorrq_s8(v368, v333);
                      v335 = vaddq_s32(v335, v310);
                      v349 = vaddq_s32(v349, v310);
                      v350 = vaddq_s32(v350, v310);
                      v351 = vaddq_s32(v351, v310);
                      v340 = vaddq_s32(v340, v311);
                      v339 = vaddq_s32(v339, v311);
                      v338 = vaddq_s32(v338, v311);
                      v337 = vaddq_s32(v337, v311);
                      v341 -= 16;
                    }

                    while (v341);
                    v375 = vorrq_s8(vorrq_s8(vorrq_s8(v333, v345), vorrq_s8(v343, v347)), vorrq_s8(vorrq_s8(v334, v346), vorrq_s8(v344, v348)));
                    v238 = vorr_s8(*v375.i8, *&vextq_s8(v375, v375, 8uLL));
                    v324 = vaddvq_s32(vaddq_s32(vaddq_s32(v335, v350), vaddq_s32(v349, v351)));
                    if ((v332 & 0x3FFFFFF0) != v332)
                    {
                      do
                      {
LABEL_256:
                        v324 += 8;
                        v376 = *v325;
                        v325 = (v325 + 1);
                        v238 |= v376 << v322;
                        v322 -= 8;
                      }

                      while (v322 >= v328);
                    }
                  }

LABEL_257:
                  *(a1 + 40) += v325 - v317;
                  v237 = v324;
                  v312 = ((v236 - 1) * v315 + 256) >> 8;
                  v316 = v238 - (v312 << 56);
                  if (v238 < v312 << 56)
                  {
                    goto LABEL_258;
                  }

                  goto LABEL_225;
                }

LABEL_184:
                LODWORD(v241) = *(a1 + 24) - v241;
                v242 = 1;
                v238 = v245;
                goto LABEL_185;
              }

              break;
            }

            v246 = *(a1 + 40);
            v247 = *(a1 + 32) - v246;
            v248 = *(a1 + 48);
            if (v248)
            {
              if (v247 >= 9)
              {
                v249 = 9;
              }

              else
              {
                v249 = *(a1 + 32) - v246;
              }

              v246 = (a1 + 64);
              result = v248(*(a1 + 56), *(a1 + 40), v2405, v249);
              v240.i64[0] = 0x7F0000007FLL;
              v240.i64[1] = 0x7F0000007FLL;
              v239.i64[0] = 0x800000008;
              v239.i64[1] = 0x800000008;
            }

            v250 = 8 * v247;
            v251 = 48 - v237;
            if (8 * v247 >= 0x41)
            {
              v252 = (v251 & 0x7FFFFFF8) + 8;
              v253 = v252 + v237;
              v254 = (v246 + (v252 >> 3));
              v238 = (bswap64(*v246) >> (56 - (v251 & 0xF8u)) << (v251 & 7)) | *v2410;
              goto LABEL_216;
            }

            v255 = 56 - v237 - v250;
            if (v255 < 0)
            {
              v253 = v237;
            }

            else
            {
              v253 = v237 + 0x40000000;
            }

            if (v250)
            {
              v256 = 1;
            }

            else
            {
              v256 = v255 <= -1;
            }

            v257 = v255 & ~(v255 >> 31);
            if (!v256 || v251 < v257)
            {
              v254 = v246;
            }

            else
            {
              v259 = v257 - 1;
              if (v257 - 1 >= (40 - v237))
              {
                v259 = 40 - v237;
              }

              v260 = 47 - v237 - v259;
              if (v260 < 0x78)
              {
                v254 = v246;
                goto LABEL_215;
              }

              v261 = (v260 >> 3) + 1;
              v262 = v238;
              v263 = 0uLL;
              v264 = v253;
              v265 = vdupq_n_s32(v251);
              v266 = vaddq_s32(v265, xmmword_273BC3230);
              v254 = (v246 + (v261 & 0x3FFFFFF0));
              v267 = vaddq_s32(v265, xmmword_273BC3240);
              v251 -= 8 * (v261 & 0x3FFFFFF0);
              v268 = vaddq_s32(v265, xmmword_273BC3250);
              v269 = vaddq_s32(v265, xmmword_273BC3220);
              v270 = v261 & 0x3FFFFFF0;
              v271 = v246;
              v272 = 0uLL;
              v273 = 0uLL;
              v274 = 0uLL;
              v275 = 0uLL;
              v276 = 0uLL;
              v277 = 0uLL;
              v278 = 0uLL;
              v279 = 0uLL;
              v280 = 0uLL;
              do
              {
                v281 = *v271++;
                v282 = vmovl_high_u8(v281);
                v283 = vmovl_high_u16(v282);
                v284.i64[0] = v283.u32[0];
                v284.i64[1] = v283.u32[1];
                v285 = v284;
                v286 = vmovl_u16(*v282.i8);
                v284.i64[0] = v286.u32[2];
                v284.i64[1] = v286.u32[3];
                v287 = v284;
                v288 = vmovl_u8(*v281.i8);
                v289 = vmovl_high_u16(v288);
                v284.i64[0] = v289.u32[2];
                v284.i64[1] = v289.u32[3];
                v290 = v284;
                v284.i64[0] = v283.u32[2];
                v284.i64[1] = v283.u32[3];
                v291 = v284;
                v284.i64[0] = v286.u32[0];
                v284.i64[1] = v286.u32[1];
                v292 = v284;
                v284.i64[0] = v289.u32[0];
                v284.i64[1] = v289.u32[1];
                v293 = v284;
                v294 = vmovl_u16(*v288.i8);
                v284.i64[0] = v294.u32[2];
                v284.i64[1] = v294.u32[3];
                v295 = v284;
                v284.i64[0] = v294.u32[0];
                v284.i64[1] = v294.u32[1];
                v296 = v284;
                v284.i64[0] = v269.u32[0];
                v284.i64[1] = v269.u32[1];
                v297 = vshlq_u64(v296, v284);
                v284.i64[0] = v269.u32[2];
                v284.i64[1] = v269.u32[3];
                v298 = vshlq_u64(v295, v284);
                v284.i64[0] = v268.u32[0];
                v284.i64[1] = v268.u32[1];
                v299 = vshlq_u64(v293, v284);
                v284.i64[0] = v267.u32[0];
                v284.i64[1] = v267.u32[1];
                v300 = vshlq_u64(v292, v284);
                v284.i64[0] = v266.u32[2];
                v284.i64[1] = v266.u32[3];
                v301 = vshlq_u64(v291, v284);
                v284.i64[0] = v268.u32[2];
                v284.i64[1] = v268.u32[3];
                v302 = vshlq_u64(v290, v284);
                v284.i64[0] = v267.u32[2];
                v284.i64[1] = v267.u32[3];
                v303 = vshlq_u64(v287, v284);
                v284.i64[0] = v266.u32[0];
                v284.i64[1] = v266.u32[1];
                v276 = vorrq_s8(vshlq_u64(v285, v284), v276);
                v275 = vorrq_s8(v303, v275);
                v273 = vorrq_s8(v302, v273);
                v277 = vorrq_s8(v301, v277);
                v274 = vorrq_s8(v300, v274);
                v272 = vorrq_s8(v299, v272);
                v263 = vorrq_s8(v298, v263);
                v262 = vorrq_s8(v297, v262);
                v264 = vaddq_s32(v264, v239);
                v278 = vaddq_s32(v278, v239);
                v279 = vaddq_s32(v279, v239);
                v280 = vaddq_s32(v280, v239);
                v269 = vaddq_s32(v269, v240);
                v268 = vaddq_s32(v268, v240);
                v267 = vaddq_s32(v267, v240);
                v266 = vaddq_s32(v266, v240);
                v270 -= 16;
              }

              while (v270);
              v304 = vorrq_s8(vorrq_s8(vorrq_s8(v262, v274), vorrq_s8(v272, v276)), vorrq_s8(vorrq_s8(v263, v275), vorrq_s8(v273, v277)));
              v238 = vorr_s8(*v304.i8, *&vextq_s8(v304, v304, 8uLL));
              v253 = vaddvq_s32(vaddq_s32(vaddq_s32(v264, v279), vaddq_s32(v278, v280)));
              if ((v261 & 0x3FFFFFF0) != v261)
              {
                do
                {
LABEL_215:
                  v253 += 8;
                  v305 = *v254;
                  v254 = (v254 + 1);
                  v238 |= v305 << v251;
                  v251 -= 8;
                }

                while (v251 >= v257);
              }
            }

LABEL_216:
            *(a1 + 40) += v254 - v246;
            v237 = v253;
            v241 = ((v236 - 1) * v244 + 256) >> 8;
            v245 = v238 - (v241 << 56);
            if (v238 < v241 << 56)
            {
              goto LABEL_217;
            }

            goto LABEL_184;
          }

          if (v2398 && v2398[8] <= 0)
          {
            v378 = v2398 + 44;
            if (*v2398 >= 3u)
            {
              v378 = v2398 + 1;
            }

            v209 = *v378;
            if (v16)
            {
              goto LABEL_263;
            }

LABEL_264:
            v379 = 0;
          }

          else
          {
            v209 = 0;
            if (!v16)
            {
              goto LABEL_264;
            }

LABEL_263:
            if (v16[8] > 0)
            {
              goto LABEL_264;
            }

            v380 = v16 + 32;
            if (*v16 >= 3u)
            {
              v380 = v16 + 1;
            }

            v379 = *v380;
          }

          LOBYTE(v381) = 0;
          v382 = &vp9_kf_y_mode_prob + 90 * v209 + 9 * v379;
          v236 = *(a1 + 24);
          v237 = *(a1 + 28);
          v2406 = a1 + 64;
          v238 = *(a1 + 16);
          v383.i64[0] = 0x800000008;
          v383.i64[1] = 0x800000008;
          v384.i64[0] = 0x7F0000007FLL;
          v384.i64[1] = 0x7F0000007FLL;
          while (2)
          {
            v388 = v382[v381 >> 1];
            if ((v237 & 0x80000000) == 0)
            {
              v385 = ((v236 - 1) * v388 + 256) >> 8;
              v389 = v238 - (v385 << 56);
              if (v238 < v385 << 56)
              {
LABEL_302:
                v386 = 0;
LABEL_270:
                v387 = vpx_norm[v385];
                v236 = v385 << v387;
                v238 <<= v387;
                v237 -= v387;
                *(a1 + 16) = v238;
                *(a1 + 24) = v385 << v387;
                *(a1 + 28) = v237;
                v381 = vp9_intra_mode_tree[v386 + v381];
                if (v381 > 0)
                {
                  continue;
                }

                v450 = -v381;
                v2388[32] = -v381;
                v2388[20] = -v381;
                if (v2399)
                {
                  if (v2399[8] <= 0)
                  {
                    v452 = v2399 + 56;
                    if (*v2399 >= 3u)
                    {
                      v452 = v2399 + 1;
                    }

                    v451 = *v452;
                  }

                  else
                  {
                    v451 = 0;
                  }
                }

                else
                {
                  v451 = 0;
                }

                LOBYTE(v453) = 0;
                v454 = &vp9_kf_y_mode_prob + 90 * v450 + 9 * v451;
                v455.i64[0] = 0x800000008;
                v455.i64[1] = 0x800000008;
                v456.i64[0] = 0x7F0000007FLL;
                v456.i64[1] = 0x7F0000007FLL;
                while (2)
                {
                  v460 = v454[v453 >> 1];
                  if ((v237 & 0x80000000) == 0)
                  {
                    v457 = ((v236 - 1) * v460 + 256) >> 8;
                    v461 = v238 - (v457 << 56);
                    if (v238 < v457 << 56)
                    {
LABEL_344:
                      v458 = 0;
LABEL_312:
                      v459 = vpx_norm[v457];
                      v236 = v457 << v459;
                      v238 <<= v459;
                      v237 -= v459;
                      *(a1 + 16) = v238;
                      *(a1 + 24) = v457 << v459;
                      *(a1 + 28) = v237;
                      v453 = vp9_intra_mode_tree[v458 + v453];
                      if (v453 <= 0)
                      {
                        v377 = -v453;
                        v2388[1] = -v453;
                        v2388[56] = -v453;
                        v2388[44] = -v453;
                        goto LABEL_554;
                      }

                      continue;
                    }

LABEL_311:
                    LODWORD(v457) = *(a1 + 24) - v457;
                    v458 = 1;
                    v238 = v461;
                    goto LABEL_312;
                  }

                  break;
                }

                v462 = *(a1 + 40);
                v463 = *(a1 + 32) - v462;
                v464 = *(a1 + 48);
                if (v464)
                {
                  if (v463 >= 9)
                  {
                    v465 = 9;
                  }

                  else
                  {
                    v465 = *(a1 + 32) - v462;
                  }

                  v462 = (a1 + 64);
                  result = v464(*(a1 + 56), *(a1 + 40), v2406, v465);
                  v456.i64[0] = 0x7F0000007FLL;
                  v456.i64[1] = 0x7F0000007FLL;
                  v455.i64[0] = 0x800000008;
                  v455.i64[1] = 0x800000008;
                }

                v466 = 8 * v463;
                v467 = 48 - v237;
                if (8 * v463 >= 0x41)
                {
                  v468 = (v467 & 0x7FFFFFF8) + 8;
                  v469 = v468 + v237;
                  v470 = (v462 + (v468 >> 3));
                  v238 = (bswap64(*v462) >> (56 - (v467 & 0xF8u)) << (v467 & 7)) | *v2410;
                  goto LABEL_343;
                }

                v471 = 56 - v237 - v466;
                if (v471 < 0)
                {
                  v469 = v237;
                }

                else
                {
                  v469 = v237 + 0x40000000;
                }

                if (v466)
                {
                  v472 = 1;
                }

                else
                {
                  v472 = v471 <= -1;
                }

                v473 = v471 & ~(v471 >> 31);
                if (!v472 || v467 < v473)
                {
                  v470 = v462;
                }

                else
                {
                  v475 = v473 - 1;
                  if (v473 - 1 >= (40 - v237))
                  {
                    v475 = 40 - v237;
                  }

                  v476 = 47 - v237 - v475;
                  if (v476 < 0x78)
                  {
                    v470 = v462;
                    goto LABEL_342;
                  }

                  v477 = (v476 >> 3) + 1;
                  v478 = v238;
                  v479 = 0uLL;
                  v480 = v469;
                  v481 = vdupq_n_s32(v467);
                  v482 = vaddq_s32(v481, xmmword_273BC3230);
                  v470 = (v462 + (v477 & 0x3FFFFFF0));
                  v483 = vaddq_s32(v481, xmmword_273BC3240);
                  v467 -= 8 * (v477 & 0x3FFFFFF0);
                  v484 = vaddq_s32(v481, xmmword_273BC3250);
                  v485 = vaddq_s32(v481, xmmword_273BC3220);
                  v486 = v477 & 0x3FFFFFF0;
                  v487 = v462;
                  v488 = 0uLL;
                  v489 = 0uLL;
                  v490 = 0uLL;
                  v491 = 0uLL;
                  v492 = 0uLL;
                  v493 = 0uLL;
                  v494 = 0uLL;
                  v495 = 0uLL;
                  v496 = 0uLL;
                  do
                  {
                    v497 = *v487++;
                    v498 = vmovl_high_u8(v497);
                    v499 = vmovl_high_u16(v498);
                    v500.i64[0] = v499.u32[0];
                    v500.i64[1] = v499.u32[1];
                    v501 = v500;
                    v502 = vmovl_u16(*v498.i8);
                    v500.i64[0] = v502.u32[2];
                    v500.i64[1] = v502.u32[3];
                    v503 = v500;
                    v504 = vmovl_u8(*v497.i8);
                    v505 = vmovl_high_u16(v504);
                    v500.i64[0] = v505.u32[2];
                    v500.i64[1] = v505.u32[3];
                    v506 = v500;
                    v500.i64[0] = v499.u32[2];
                    v500.i64[1] = v499.u32[3];
                    v507 = v500;
                    v500.i64[0] = v502.u32[0];
                    v500.i64[1] = v502.u32[1];
                    v508 = v500;
                    v500.i64[0] = v505.u32[0];
                    v500.i64[1] = v505.u32[1];
                    v509 = v500;
                    v510 = vmovl_u16(*v504.i8);
                    v500.i64[0] = v510.u32[2];
                    v500.i64[1] = v510.u32[3];
                    v511 = v500;
                    v500.i64[0] = v510.u32[0];
                    v500.i64[1] = v510.u32[1];
                    v512 = v500;
                    v500.i64[0] = v485.u32[0];
                    v500.i64[1] = v485.u32[1];
                    v513 = vshlq_u64(v512, v500);
                    v500.i64[0] = v485.u32[2];
                    v500.i64[1] = v485.u32[3];
                    v514 = vshlq_u64(v511, v500);
                    v500.i64[0] = v484.u32[0];
                    v500.i64[1] = v484.u32[1];
                    v515 = vshlq_u64(v509, v500);
                    v500.i64[0] = v483.u32[0];
                    v500.i64[1] = v483.u32[1];
                    v516 = vshlq_u64(v508, v500);
                    v500.i64[0] = v482.u32[2];
                    v500.i64[1] = v482.u32[3];
                    v517 = vshlq_u64(v507, v500);
                    v500.i64[0] = v484.u32[2];
                    v500.i64[1] = v484.u32[3];
                    v518 = vshlq_u64(v506, v500);
                    v500.i64[0] = v483.u32[2];
                    v500.i64[1] = v483.u32[3];
                    v519 = vshlq_u64(v503, v500);
                    v500.i64[0] = v482.u32[0];
                    v500.i64[1] = v482.u32[1];
                    v492 = vorrq_s8(vshlq_u64(v501, v500), v492);
                    v491 = vorrq_s8(v519, v491);
                    v489 = vorrq_s8(v518, v489);
                    v493 = vorrq_s8(v517, v493);
                    v490 = vorrq_s8(v516, v490);
                    v488 = vorrq_s8(v515, v488);
                    v479 = vorrq_s8(v514, v479);
                    v478 = vorrq_s8(v513, v478);
                    v480 = vaddq_s32(v480, v455);
                    v494 = vaddq_s32(v494, v455);
                    v495 = vaddq_s32(v495, v455);
                    v496 = vaddq_s32(v496, v455);
                    v485 = vaddq_s32(v485, v456);
                    v484 = vaddq_s32(v484, v456);
                    v483 = vaddq_s32(v483, v456);
                    v482 = vaddq_s32(v482, v456);
                    v486 -= 16;
                  }

                  while (v486);
                  v520 = vorrq_s8(vorrq_s8(vorrq_s8(v478, v490), vorrq_s8(v488, v492)), vorrq_s8(vorrq_s8(v479, v491), vorrq_s8(v489, v493)));
                  v238 = vorr_s8(*v520.i8, *&vextq_s8(v520, v520, 8uLL));
                  v469 = vaddvq_s32(vaddq_s32(vaddq_s32(v480, v495), vaddq_s32(v494, v496)));
                  if ((v477 & 0x3FFFFFF0) != v477)
                  {
                    do
                    {
LABEL_342:
                      v469 += 8;
                      v521 = *v470;
                      v470 = (v470 + 1);
                      v238 |= v521 << v467;
                      v467 -= 8;
                    }

                    while (v467 >= v473);
                  }
                }

LABEL_343:
                *(a1 + 40) += v470 - v462;
                v237 = v469;
                v457 = ((v236 - 1) * v460 + 256) >> 8;
                v461 = v238 - (v457 << 56);
                if (v238 < v457 << 56)
                {
                  goto LABEL_344;
                }

                goto LABEL_311;
              }

LABEL_269:
              LODWORD(v385) = *(a1 + 24) - v385;
              v386 = 1;
              v238 = v389;
              goto LABEL_270;
            }

            break;
          }

          v390 = *(a1 + 40);
          v391 = *(a1 + 32) - v390;
          v392 = *(a1 + 48);
          if (v392)
          {
            if (v391 >= 9)
            {
              v393 = 9;
            }

            else
            {
              v393 = *(a1 + 32) - v390;
            }

            v390 = (a1 + 64);
            result = v392(*(a1 + 56), *(a1 + 40), v2406, v393);
            v384.i64[0] = 0x7F0000007FLL;
            v384.i64[1] = 0x7F0000007FLL;
            v383.i64[0] = 0x800000008;
            v383.i64[1] = 0x800000008;
          }

          v394 = 8 * v391;
          v395 = 48 - v237;
          if (8 * v391 >= 0x41)
          {
            v396 = (v395 & 0x7FFFFFF8) + 8;
            v397 = v396 + v237;
            v398 = (v390 + (v396 >> 3));
            v238 = (bswap64(*v390) >> (56 - (v395 & 0xF8u)) << (v395 & 7)) | *v2410;
            goto LABEL_301;
          }

          v399 = 56 - v237 - v394;
          if (v399 < 0)
          {
            v397 = v237;
          }

          else
          {
            v397 = v237 + 0x40000000;
          }

          if (v394)
          {
            v400 = 1;
          }

          else
          {
            v400 = v399 <= -1;
          }

          v401 = v399 & ~(v399 >> 31);
          if (!v400 || v395 < v401)
          {
            v398 = v390;
          }

          else
          {
            v403 = v401 - 1;
            if (v401 - 1 >= (40 - v237))
            {
              v403 = 40 - v237;
            }

            v404 = 47 - v237 - v403;
            if (v404 < 0x78)
            {
              v398 = v390;
              goto LABEL_300;
            }

            v405 = (v404 >> 3) + 1;
            v406 = v238;
            v407 = 0uLL;
            v408 = v397;
            v409 = vdupq_n_s32(v395);
            v410 = vaddq_s32(v409, xmmword_273BC3230);
            v398 = (v390 + (v405 & 0x3FFFFFF0));
            v411 = vaddq_s32(v409, xmmword_273BC3240);
            v395 -= 8 * (v405 & 0x3FFFFFF0);
            v412 = vaddq_s32(v409, xmmword_273BC3250);
            v413 = vaddq_s32(v409, xmmword_273BC3220);
            v414 = v405 & 0x3FFFFFF0;
            v415 = v390;
            v416 = 0uLL;
            v417 = 0uLL;
            v418 = 0uLL;
            v419 = 0uLL;
            v420 = 0uLL;
            v421 = 0uLL;
            v422 = 0uLL;
            v423 = 0uLL;
            v424 = 0uLL;
            do
            {
              v425 = *v415++;
              v426 = vmovl_high_u8(v425);
              v427 = vmovl_high_u16(v426);
              v428.i64[0] = v427.u32[0];
              v428.i64[1] = v427.u32[1];
              v429 = v428;
              v430 = vmovl_u16(*v426.i8);
              v428.i64[0] = v430.u32[2];
              v428.i64[1] = v430.u32[3];
              v431 = v428;
              v432 = vmovl_u8(*v425.i8);
              v433 = vmovl_high_u16(v432);
              v428.i64[0] = v433.u32[2];
              v428.i64[1] = v433.u32[3];
              v434 = v428;
              v428.i64[0] = v427.u32[2];
              v428.i64[1] = v427.u32[3];
              v435 = v428;
              v428.i64[0] = v430.u32[0];
              v428.i64[1] = v430.u32[1];
              v436 = v428;
              v428.i64[0] = v433.u32[0];
              v428.i64[1] = v433.u32[1];
              v437 = v428;
              v438 = vmovl_u16(*v432.i8);
              v428.i64[0] = v438.u32[2];
              v428.i64[1] = v438.u32[3];
              v439 = v428;
              v428.i64[0] = v438.u32[0];
              v428.i64[1] = v438.u32[1];
              v440 = v428;
              v428.i64[0] = v413.u32[0];
              v428.i64[1] = v413.u32[1];
              v441 = vshlq_u64(v440, v428);
              v428.i64[0] = v413.u32[2];
              v428.i64[1] = v413.u32[3];
              v442 = vshlq_u64(v439, v428);
              v428.i64[0] = v412.u32[0];
              v428.i64[1] = v412.u32[1];
              v443 = vshlq_u64(v437, v428);
              v428.i64[0] = v411.u32[0];
              v428.i64[1] = v411.u32[1];
              v444 = vshlq_u64(v436, v428);
              v428.i64[0] = v410.u32[2];
              v428.i64[1] = v410.u32[3];
              v445 = vshlq_u64(v435, v428);
              v428.i64[0] = v412.u32[2];
              v428.i64[1] = v412.u32[3];
              v446 = vshlq_u64(v434, v428);
              v428.i64[0] = v411.u32[2];
              v428.i64[1] = v411.u32[3];
              v447 = vshlq_u64(v431, v428);
              v428.i64[0] = v410.u32[0];
              v428.i64[1] = v410.u32[1];
              v420 = vorrq_s8(vshlq_u64(v429, v428), v420);
              v419 = vorrq_s8(v447, v419);
              v417 = vorrq_s8(v446, v417);
              v421 = vorrq_s8(v445, v421);
              v418 = vorrq_s8(v444, v418);
              v416 = vorrq_s8(v443, v416);
              v407 = vorrq_s8(v442, v407);
              v406 = vorrq_s8(v441, v406);
              v408 = vaddq_s32(v408, v383);
              v422 = vaddq_s32(v422, v383);
              v423 = vaddq_s32(v423, v383);
              v424 = vaddq_s32(v424, v383);
              v413 = vaddq_s32(v413, v384);
              v412 = vaddq_s32(v412, v384);
              v411 = vaddq_s32(v411, v384);
              v410 = vaddq_s32(v410, v384);
              v414 -= 16;
            }

            while (v414);
            v448 = vorrq_s8(vorrq_s8(vorrq_s8(v406, v418), vorrq_s8(v416, v420)), vorrq_s8(vorrq_s8(v407, v419), vorrq_s8(v417, v421)));
            v238 = vorr_s8(*v448.i8, *&vextq_s8(v448, v448, 8uLL));
            v397 = vaddvq_s32(vaddq_s32(vaddq_s32(v408, v423), vaddq_s32(v422, v424)));
            if ((v405 & 0x3FFFFFF0) != v405)
            {
              do
              {
LABEL_300:
                v397 += 8;
                v449 = *v398;
                v398 = (v398 + 1);
                v238 |= v449 << v395;
                v395 -= 8;
              }

              while (v395 >= v401);
            }
          }

LABEL_301:
          *(a1 + 40) += v398 - v390;
          v237 = v397;
          v385 = ((v236 - 1) * v388 + 256) >> 8;
          v389 = v238 - (v385 << 56);
          if (v238 < v385 << 56)
          {
            goto LABEL_302;
          }

          goto LABEL_269;
        }

LABEL_88:
        if ((*(v12 + 4 * v19 + 5512) & 8) == 0)
        {
          goto LABEL_91;
        }

        LOBYTE(v132) = 1;
        goto LABEL_129;
      }
    }

    v41 = v33;
    do
    {
LABEL_37:
      v40 += 8;
      v92 = *v41;
      v41 = (v41 + 1);
      v24 |= v92 << v38;
      v38 -= 8;
    }

    while (v38 >= v44);
    goto LABEL_38;
  }

  v2368 = *(*(a2 + 1000) + 8);
  v2367 = v15 * a3;
  if (!*(a2 + 5432))
  {
    v14[4] = 0;
    v2389 = (v14 + 4);
    goto LABEL_696;
  }

  v2395 = (a2 + 4096);
  v96 = v15 * a3 + a4;
  v97 = *(a2 + 2192);
  if (v97)
  {
    LOBYTE(v98) = -1;
    if (a5 >= 1 && a6 >= 1)
    {
      v99 = 0;
      v100 = a5 - 1;
      v101 = a5 & 0x7FFFFFFC;
      v98 = 0x7FFFFFFF;
      v102 = v15 * a3 + a4;
      do
      {
        if (a5 < 4 || (v96 + v15 * v99 + v100 >= v96 + v15 * v99 ? (v103 = HIDWORD(v100) == 0) : (v103 = 0), !v103))
        {
          v104 = 0;
LABEL_60:
          v105 = a5 - v104;
          v106 = v102 + v104;
          do
          {
            if (v98 >= *(v97 + v106))
            {
              v98 = *(v97 + v106);
            }

            ++v106;
            --v105;
          }

          while (v105);
          goto LABEL_53;
        }

        if (a5 >= 0x20)
        {
          v108 = v102;
          v109 = vdupq_n_s32(v98);
          v110 = a5 & 0x7FFFFFE0;
          v111 = v109;
          v112 = v109;
          v113 = v109;
          v114 = v109;
          v115 = v109;
          v116 = v109;
          v117 = v109;
          do
          {
            v118 = (v97 + v108);
            v119 = v118[1];
            v113 = vminq_s32(v113, vqtbl1q_s8(*v118, xmmword_273B8E7A0));
            v112 = vminq_s32(v112, vqtbl1q_s8(*v118, xmmword_273B8E7B0));
            v111 = vminq_s32(v111, vqtbl1q_s8(*v118, xmmword_273B8E7C0));
            v109 = vminq_s32(v109, vqtbl1q_s8(*v118, xmmword_273B8E7D0));
            v117 = vminq_s32(v117, vqtbl1q_s8(v119, xmmword_273B8E7A0));
            v116 = vminq_s32(v116, vqtbl1q_s8(v119, xmmword_273B8E7B0));
            v115 = vminq_s32(v115, vqtbl1q_s8(v119, xmmword_273B8E7C0));
            v114 = vminq_s32(v114, vqtbl1q_s8(v119, xmmword_273B8E7D0));
            v108 += 32;
            v110 -= 32;
          }

          while (v110);
          v120 = vminq_s32(vminq_s32(v109, v114), vminq_s32(v112, v116));
          a12 = vminq_s32(vminq_s32(v111, v115), vminq_s32(v113, v117));
          v98 = vminvq_s32(vminq_s32(v120, a12));
          if ((a5 & 0x7FFFFFE0) == a5)
          {
            goto LABEL_53;
          }

          v107 = a5 & 0x7FFFFFE0;
          v104 = v107;
          if ((a5 & 0x1C) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v107 = 0;
        }

        v121 = vdupq_n_s32(v98);
        v122 = v107 - v101;
        v123 = v102 + v107;
        do
        {
          a12.i32[0] = *(v97 + v123);
          a12 = vmovl_u16(*&vmovl_u8(*a12.i8));
          v121 = vminq_s32(v121, a12);
          v123 += 4;
          v122 += 4;
        }

        while (v122);
        v98 = vminvq_s32(v121);
        v104 = a5 & 0x7FFFFFFC;
        if (v101 != a5)
        {
          goto LABEL_60;
        }

LABEL_53:
        ++v99;
        v102 += v15;
      }

      while (v99 != a6);
    }
  }

  else
  {
    LOBYTE(v98) = 0;
  }

  if (!v2395[1337])
  {
    if (a5 >= 1 && a6 >= 1)
    {
      v225 = *(v12 + 2200);
      if (v97)
      {
        v226 = 0;
        do
        {
          v227 = v96;
          v228 = a5;
          do
          {
            *(v225 + v227 + v226 * *(v12 + 1976)) = *(v97 + v227 + v226 * *(v12 + 1976));
            ++v227;
            --v228;
          }

          while (v228);
          ++v226;
        }

        while (v226 != a6);
      }

      else
      {
        do
        {
          v229 = v96;
          v230 = a5;
          do
          {
            *(v225 + v229 + v97 * *(v12 + 1976)) = 0;
            ++v229;
            --v230;
          }

          while (v230);
          LODWORD(v97) = v97 + 1;
        }

        while (v97 != a6);
      }
    }

LABEL_691:
    v13 = v2395;
    v1155 = v2395[1336];
    v14[4] = v98;
    v2389 = (v14 + 4);
    if (!v1155)
    {
      goto LABEL_696;
    }

    goto LABEL_692;
  }

  if (!v2395[1340])
  {
    v951 = 0;
    v952 = v12 + 5437;
    v954 = *(a1 + 24);
    v953 = *(a1 + 28);
    v955 = *(a1 + 16);
    v956.i64[0] = 0x800000008;
    v956.i64[1] = 0x800000008;
    v957.i64[0] = 0x7F0000007FLL;
    v957.i64[1] = 0x7F0000007FLL;
    while (1)
    {
      v962 = *(v952 + (v951 >> 1));
      if ((v953 & 0x80000000) == 0)
      {
        v958 = ((v954 - 1) * v962 + 256) >> 8;
        v963 = v955 - (v958 << 56);
        if (v955 < v958 << 56)
        {
          goto LABEL_625;
        }

        goto LABEL_592;
      }

      v964 = *(a1 + 40);
      v965 = *(a1 + 32) - v964;
      v966 = *(a1 + 48);
      if (v966)
      {
        if (v965 >= 9)
        {
          v967 = 9;
        }

        else
        {
          v967 = *(a1 + 32) - v964;
        }

        v964 = (a1 + 64);
        v966(*(a1 + 56), *(a1 + 40), a1 + 64, v967, a5, a6, vpx_norm);
        v957.i64[0] = 0x7F0000007FLL;
        v957.i64[1] = 0x7F0000007FLL;
        v956.i64[0] = 0x800000008;
        v956.i64[1] = 0x800000008;
      }

      v968 = 8 * v965;
      v969 = 48 - v953;
      if (8 * v965 >= 0x41)
      {
        v970 = (v969 & 0x7FFFFFF8) + 8;
        v971 = v970 + v953;
        v972 = (v964 + (v970 >> 3));
        v955 = (bswap64(*v964) >> (56 - (v969 & 0xF8u)) << (v969 & 7)) | *v2410;
        goto LABEL_624;
      }

      v973 = 56 - v953 - v968;
      if (v973 < 0)
      {
        v971 = v953;
      }

      else
      {
        v971 = v953 + 0x40000000;
      }

      if (v968)
      {
        v974 = 1;
      }

      else
      {
        v974 = v973 <= -1;
      }

      v975 = v973 & ~(v973 >> 31);
      if (!v974 || v969 < v975)
      {
        v972 = v964;
        goto LABEL_624;
      }

      v977 = v975 - 1;
      if (v975 - 1 >= (40 - v953))
      {
        v977 = 40 - v953;
      }

      v978 = 47 - v953 - v977;
      if (v978 < 0x78)
      {
        break;
      }

      v979 = (v978 >> 3) + 1;
      v980 = v955;
      v981 = 0uLL;
      v982 = v971;
      v983 = vdupq_n_s32(v969);
      v984 = vaddq_s32(v983, xmmword_273BC3230);
      v972 = (v964 + (v979 & 0x3FFFFFF0));
      v985 = vaddq_s32(v983, xmmword_273BC3240);
      v969 -= 8 * (v979 & 0x3FFFFFF0);
      v986 = vaddq_s32(v983, xmmword_273BC3250);
      v987 = vaddq_s32(v983, xmmword_273BC3220);
      v988 = v979 & 0x3FFFFFF0;
      v989 = v964;
      v990 = 0uLL;
      v991 = 0uLL;
      v992 = 0uLL;
      v993 = 0uLL;
      v994 = 0uLL;
      v995 = 0uLL;
      v996 = 0uLL;
      v997 = 0uLL;
      v998 = 0uLL;
      do
      {
        v999 = *v989++;
        v1000 = vmovl_high_u8(v999);
        v1001 = vmovl_high_u16(v1000);
        v1002.i64[0] = v1001.u32[0];
        v1002.i64[1] = v1001.u32[1];
        v1003 = v1002;
        v1004 = vmovl_u16(*v1000.i8);
        v1002.i64[0] = v1004.u32[2];
        v1002.i64[1] = v1004.u32[3];
        v1005 = v1002;
        v1006 = vmovl_u8(*v999.i8);
        v1007 = vmovl_high_u16(v1006);
        v1002.i64[0] = v1007.u32[2];
        v1002.i64[1] = v1007.u32[3];
        v1008 = v1002;
        v1002.i64[0] = v1001.u32[2];
        v1002.i64[1] = v1001.u32[3];
        v1009 = v1002;
        v1002.i64[0] = v1004.u32[0];
        v1002.i64[1] = v1004.u32[1];
        v1010 = v1002;
        v1002.i64[0] = v1007.u32[0];
        v1002.i64[1] = v1007.u32[1];
        v1011 = v1002;
        v1012 = vmovl_u16(*v1006.i8);
        v1002.i64[0] = v1012.u32[2];
        v1002.i64[1] = v1012.u32[3];
        v1013 = v1002;
        v1002.i64[0] = v1012.u32[0];
        v1002.i64[1] = v1012.u32[1];
        v1014 = v1002;
        v1002.i64[0] = v987.u32[0];
        v1002.i64[1] = v987.u32[1];
        v1015 = vshlq_u64(v1014, v1002);
        v1002.i64[0] = v987.u32[2];
        v1002.i64[1] = v987.u32[3];
        v1016 = vshlq_u64(v1013, v1002);
        v1002.i64[0] = v986.u32[0];
        v1002.i64[1] = v986.u32[1];
        v1017 = vshlq_u64(v1011, v1002);
        v1002.i64[0] = v985.u32[0];
        v1002.i64[1] = v985.u32[1];
        v1018 = vshlq_u64(v1010, v1002);
        v1002.i64[0] = v984.u32[2];
        v1002.i64[1] = v984.u32[3];
        v1019 = vshlq_u64(v1009, v1002);
        v1002.i64[0] = v986.u32[2];
        v1002.i64[1] = v986.u32[3];
        v1020 = vshlq_u64(v1008, v1002);
        v1002.i64[0] = v985.u32[2];
        v1002.i64[1] = v985.u32[3];
        v1021 = vshlq_u64(v1005, v1002);
        v1002.i64[0] = v984.u32[0];
        v1002.i64[1] = v984.u32[1];
        v994 = vorrq_s8(vshlq_u64(v1003, v1002), v994);
        v993 = vorrq_s8(v1021, v993);
        v991 = vorrq_s8(v1020, v991);
        v995 = vorrq_s8(v1019, v995);
        v992 = vorrq_s8(v1018, v992);
        v990 = vorrq_s8(v1017, v990);
        v981 = vorrq_s8(v1016, v981);
        v980 = vorrq_s8(v1015, v980);
        v982 = vaddq_s32(v982, v956);
        v996 = vaddq_s32(v996, v956);
        v997 = vaddq_s32(v997, v956);
        v998 = vaddq_s32(v998, v956);
        v987 = vaddq_s32(v987, v957);
        v986 = vaddq_s32(v986, v957);
        v985 = vaddq_s32(v985, v957);
        v984 = vaddq_s32(v984, v957);
        v988 -= 16;
      }

      while (v988);
      v1022 = vorrq_s8(vorrq_s8(vorrq_s8(v980, v992), vorrq_s8(v990, v994)), vorrq_s8(vorrq_s8(v981, v993), vorrq_s8(v991, v995)));
      v955 = vorr_s8(*v1022.i8, *&vextq_s8(v1022, v1022, 8uLL));
      v971 = vaddvq_s32(vaddq_s32(vaddq_s32(v982, v997), vaddq_s32(v996, v998)));
      if ((v979 & 0x3FFFFFF0) != v979)
      {
        goto LABEL_623;
      }

LABEL_624:
      *(a1 + 40) += v972 - v964;
      v953 = v971;
      v958 = ((v954 - 1) * v962 + 256) >> 8;
      v963 = v955 - (v958 << 56);
      if (v955 < v958 << 56)
      {
LABEL_625:
        v959 = 0;
        goto LABEL_593;
      }

LABEL_592:
      LODWORD(v958) = *(a1 + 24) - v958;
      v959 = 1;
      v955 = v963;
LABEL_593:
      v960 = vpx_norm[v958];
      v954 = v958 << v960;
      v955 <<= v960;
      v953 -= v960;
      *(a1 + 16) = v955;
      *(a1 + 24) = v958 << v960;
      *(a1 + 28) = v953;
      v961 = vp9_segment_tree[v959 + v951];
      v951 = v961;
      if (v961 <= 0)
      {
LABEL_684:
        v98 = -v951;
        v14 = v2388;
        goto LABEL_685;
      }
    }

    v972 = v964;
    do
    {
LABEL_623:
      v971 += 8;
      v1023 = *v972;
      v972 = (v972 + 1);
      v955 |= v1023 << v969;
      v969 -= 8;
    }

    while (v969 >= v975);
    goto LABEL_624;
  }

  v211 = *(a1 + 13784);
  v212 = *(a1 + 13792);
  if (v212)
  {
    v212 = *(v212 + 5);
  }

  if (v211)
  {
    v211 = *(v211 + 5);
  }

  v213 = *(a1 + 28);
  v214 = ((*(a1 + 24) - 1) * *(v12 + v211 + v212 + 5444) + 256) >> 8;
  v215 = *(a1 + 16);
  if ((v213 & 0x80000000) != 0)
  {
    v216 = *(a1 + 40);
    v217 = *(a1 + 32) - v216;
    v218 = 8 * v217;
    v219 = *(a1 + 48);
    if (v219)
    {
      if (v217 >= 9)
      {
        v220 = 9;
      }

      else
      {
        v220 = *(a1 + 32) - v216;
      }

      v219(*(a1 + 56), v216, a1 + 64, v220, a5, a6, vpx_norm);
      v216 = (a1 + 64);
    }

    v221 = 48 - v213;
    if (v218 < 0x41)
    {
      v1024 = 56 - v213 - v218;
      if (v1024 < 0)
      {
        v223 = v213;
      }

      else
      {
        v223 = v213 + 0x40000000;
      }

      if (v218)
      {
        v1025 = 1;
      }

      else
      {
        v1025 = v1024 <= -1;
      }

      if (v1025)
      {
        v1026 = v1024 & ~(v1024 >> 31);
        if (v221 < v1026)
        {
          v224 = v216;
        }

        else
        {
          v1027 = v1026 - 1;
          if (v1026 - 1 >= (40 - v213))
          {
            v1027 = 40 - v213;
          }

          v1028 = 47 - v213 - v1027;
          v224 = v216;
          v1029 = 48 - v213;
          if (v1028 < 0x78)
          {
            goto LABEL_1474;
          }

          v1030 = v215;
          v1031 = v223;
          v1032 = vdupq_n_s32(v221);
          v1033 = 0uLL;
          v1034 = vaddq_s32(v1032, xmmword_273BC3230);
          v1035 = vaddq_s32(v1032, xmmword_273BC3240);
          v1036 = vaddq_s32(v1032, xmmword_273BC3250);
          v1037 = vaddq_s32(v1032, xmmword_273BC3220);
          v1038.i64[0] = 0x800000008;
          v1038.i64[1] = 0x800000008;
          v1039.i64[0] = 0x7F0000007FLL;
          v1039.i64[1] = 0x7F0000007FLL;
          v1040 = (v1028 >> 3) + 1;
          v1041 = 0uLL;
          v1042 = 0uLL;
          v1043 = 0uLL;
          v224 = (v216 + (v1040 & 0x3FFFFFF0));
          v1029 = v221 - 8 * (v1040 & 0x3FFFFFF0);
          v1044 = v1040 & 0x3FFFFFF0;
          v1045 = v216;
          v1046 = 0uLL;
          v1047 = 0uLL;
          v1048 = 0uLL;
          v1049 = 0uLL;
          v1050 = 0uLL;
          v1051 = 0uLL;
          do
          {
            v1052 = *v1045++;
            v1053 = vmovl_high_u8(v1052);
            v1054 = vmovl_high_u16(v1053);
            v1055.i64[0] = v1054.u32[0];
            v1055.i64[1] = v1054.u32[1];
            v1056 = v1055;
            v1057 = vmovl_u16(*v1053.i8);
            v1055.i64[0] = v1057.u32[2];
            v1055.i64[1] = v1057.u32[3];
            v1058 = v1055;
            v1059 = vmovl_u8(*v1052.i8);
            v1060 = vmovl_high_u16(v1059);
            v1055.i64[0] = v1060.u32[2];
            v1055.i64[1] = v1060.u32[3];
            v1061 = v1055;
            v1055.i64[0] = v1054.u32[2];
            v1055.i64[1] = v1054.u32[3];
            v1062 = v1055;
            v1055.i64[0] = v1057.u32[0];
            v1055.i64[1] = v1057.u32[1];
            v1063 = v1055;
            v1055.i64[0] = v1060.u32[0];
            v1055.i64[1] = v1060.u32[1];
            v1064 = v1055;
            v1065 = vmovl_u16(*v1059.i8);
            v1055.i64[0] = v1065.u32[2];
            v1055.i64[1] = v1065.u32[3];
            v1066 = v1055;
            v1055.i64[0] = v1065.u32[0];
            v1055.i64[1] = v1065.u32[1];
            v1067 = v1055;
            v1055.i64[0] = v1037.u32[0];
            v1055.i64[1] = v1037.u32[1];
            v1068 = vshlq_u64(v1067, v1055);
            v1055.i64[0] = v1037.u32[2];
            v1055.i64[1] = v1037.u32[3];
            v1069 = vshlq_u64(v1066, v1055);
            v1055.i64[0] = v1036.u32[0];
            v1055.i64[1] = v1036.u32[1];
            v1070 = vshlq_u64(v1064, v1055);
            v1055.i64[0] = v1035.u32[0];
            v1055.i64[1] = v1035.u32[1];
            v1071 = vshlq_u64(v1063, v1055);
            v1055.i64[0] = v1034.u32[2];
            v1055.i64[1] = v1034.u32[3];
            v1072 = vshlq_u64(v1062, v1055);
            v1055.i64[0] = v1036.u32[2];
            v1055.i64[1] = v1036.u32[3];
            v1073 = vshlq_u64(v1061, v1055);
            v1055.i64[0] = v1035.u32[2];
            v1055.i64[1] = v1035.u32[3];
            v1074 = vshlq_u64(v1058, v1055);
            v1055.i64[0] = v1034.u32[0];
            v1055.i64[1] = v1034.u32[1];
            v1047 = vorrq_s8(vshlq_u64(v1056, v1055), v1047);
            v1046 = vorrq_s8(v1074, v1046);
            v1042 = vorrq_s8(v1073, v1042);
            v1048 = vorrq_s8(v1072, v1048);
            v1043 = vorrq_s8(v1071, v1043);
            v1041 = vorrq_s8(v1070, v1041);
            v1033 = vorrq_s8(v1069, v1033);
            v1030 = vorrq_s8(v1068, v1030);
            v1031 = vaddq_s32(v1031, v1038);
            v1049 = vaddq_s32(v1049, v1038);
            v1050 = vaddq_s32(v1050, v1038);
            v1051 = vaddq_s32(v1051, v1038);
            v1037 = vaddq_s32(v1037, v1039);
            v1036 = vaddq_s32(v1036, v1039);
            v1035 = vaddq_s32(v1035, v1039);
            v1034 = vaddq_s32(v1034, v1039);
            v1044 -= 16;
          }

          while (v1044);
          v1075 = vorrq_s8(vorrq_s8(vorrq_s8(v1030, v1043), vorrq_s8(v1041, v1047)), vorrq_s8(vorrq_s8(v1033, v1046), vorrq_s8(v1042, v1048)));
          v215 = vorr_s8(*v1075.i8, *&vextq_s8(v1075, v1075, 8uLL));
          v223 = vaddvq_s32(vaddq_s32(vaddq_s32(v1031, v1050), vaddq_s32(v1049, v1051)));
          if ((v1040 & 0x3FFFFFF0) != v1040)
          {
LABEL_1474:
            do
            {
              v223 += 8;
              v1076 = *v224;
              v224 = (v224 + 1);
              v215 |= v1076 << v1029;
              v1029 -= 8;
            }

            while (v1029 >= v1026);
          }
        }
      }

      else
      {
        v224 = v216;
      }
    }

    else
    {
      v222 = (v221 & 0x7FFFFFF8) + 8;
      v223 = v222 + v213;
      v224 = (v216 + (v222 >> 3));
      v215 = (bswap64(*v216) >> (56 - (v221 & 0xF8u)) << (v221 & 7)) | *v2410;
    }

    *(a1 + 40) += v224 - v216;
    v213 = v223;
  }

  v1077 = v214 << 56;
  v1078 = v215 - (v214 << 56);
  if (v215 >= v214 << 56)
  {
    LODWORD(v214) = *(a1 + 24) - v214;
    v1079 = 1;
  }

  else
  {
    v1079 = 0;
    v1078 = v215;
  }

  v1080 = vpx_norm[v214];
  v1081 = v214 << v1080;
  v1082 = v1078 << v1080;
  *(a1 + 16) = v1078 << v1080;
  v1083 = v213 - v1080;
  *(a1 + 24) = v214 << v1080;
  *(a1 + 28) = v213 - v1080;
  v14 = v2388;
  v2388[5] = v1079;
  if (v215 < v1077)
  {
    v951 = 0;
    v1084.i64[0] = 0x800000008;
    v1084.i64[1] = 0x800000008;
    v1085.i64[0] = 0x7F0000007FLL;
    v1085.i64[1] = 0x7F0000007FLL;
    while (1)
    {
      v1090 = *(a2 + 5437 + (v951 >> 1));
      if ((v1083 & 0x80000000) == 0)
      {
        v1086 = ((v1081 - 1) * v1090 + 256) >> 8;
        v1091 = v1082 - (v1086 << 56);
        if (v1082 < v1086 << 56)
        {
          goto LABEL_683;
        }

        goto LABEL_650;
      }

      v1092 = *(a1 + 40);
      v1093 = *(a1 + 32) - v1092;
      v1094 = *(a1 + 48);
      if (v1094)
      {
        if (v1093 >= 9)
        {
          v1095 = 9;
        }

        else
        {
          v1095 = *(a1 + 32) - v1092;
        }

        v1092 = (a1 + 64);
        v1094(*(a1 + 56), *(a1 + 40), a1 + 64, v1095, a5, a6, vpx_norm);
        v1085.i64[0] = 0x7F0000007FLL;
        v1085.i64[1] = 0x7F0000007FLL;
        v1084.i64[0] = 0x800000008;
        v1084.i64[1] = 0x800000008;
      }

      v1096 = 8 * v1093;
      v1097 = 48 - v1083;
      if (8 * v1093 >= 0x41)
      {
        v1098 = (v1097 & 0x7FFFFFF8) + 8;
        v1099 = v1098 + v1083;
        v1100 = (v1092 + (v1098 >> 3));
        v1082 = (bswap64(*v1092) >> (56 - (v1097 & 0xF8u)) << (v1097 & 7)) | *v2410;
        goto LABEL_682;
      }

      v1101 = 56 - v1083 - v1096;
      if (v1101 < 0)
      {
        v1099 = v1083;
      }

      else
      {
        v1099 = v1083 + 0x40000000;
      }

      if (v1096)
      {
        v1102 = 1;
      }

      else
      {
        v1102 = v1101 <= -1;
      }

      v1103 = v1101 & ~(v1101 >> 31);
      if (!v1102 || v1097 < v1103)
      {
        v1100 = v1092;
        goto LABEL_682;
      }

      v1105 = v1103 - 1;
      if (v1103 - 1 >= (40 - v1083))
      {
        v1105 = 40 - v1083;
      }

      v1106 = 47 - v1083 - v1105;
      if (v1106 < 0x78)
      {
        break;
      }

      v1107 = (v1106 >> 3) + 1;
      v1108 = v1082;
      v1109 = 0uLL;
      v1110 = v1099;
      v1111 = vdupq_n_s32(v1097);
      v1112 = vaddq_s32(v1111, xmmword_273BC3230);
      v1100 = (v1092 + (v1107 & 0x3FFFFFF0));
      v1113 = vaddq_s32(v1111, xmmword_273BC3240);
      v1097 -= 8 * (v1107 & 0x3FFFFFF0);
      v1114 = vaddq_s32(v1111, xmmword_273BC3250);
      v1115 = vaddq_s32(v1111, xmmword_273BC3220);
      v1116 = v1107 & 0x3FFFFFF0;
      v1117 = v1092;
      v1118 = 0uLL;
      v1119 = 0uLL;
      v1120 = 0uLL;
      v1121 = 0uLL;
      v1122 = 0uLL;
      v1123 = 0uLL;
      v1124 = 0uLL;
      v1125 = 0uLL;
      v1126 = 0uLL;
      do
      {
        v1127 = *v1117++;
        v1128 = vmovl_high_u8(v1127);
        v1129 = vmovl_high_u16(v1128);
        v1130.i64[0] = v1129.u32[0];
        v1130.i64[1] = v1129.u32[1];
        v1131 = v1130;
        v1132 = vmovl_u16(*v1128.i8);
        v1130.i64[0] = v1132.u32[2];
        v1130.i64[1] = v1132.u32[3];
        v1133 = v1130;
        v1134 = vmovl_u8(*v1127.i8);
        v1135 = vmovl_high_u16(v1134);
        v1130.i64[0] = v1135.u32[2];
        v1130.i64[1] = v1135.u32[3];
        v1136 = v1130;
        v1130.i64[0] = v1129.u32[2];
        v1130.i64[1] = v1129.u32[3];
        v1137 = v1130;
        v1130.i64[0] = v1132.u32[0];
        v1130.i64[1] = v1132.u32[1];
        v1138 = v1130;
        v1130.i64[0] = v1135.u32[0];
        v1130.i64[1] = v1135.u32[1];
        v1139 = v1130;
        v1140 = vmovl_u16(*v1134.i8);
        v1130.i64[0] = v1140.u32[2];
        v1130.i64[1] = v1140.u32[3];
        v1141 = v1130;
        v1130.i64[0] = v1140.u32[0];
        v1130.i64[1] = v1140.u32[1];
        v1142 = v1130;
        v1130.i64[0] = v1115.u32[0];
        v1130.i64[1] = v1115.u32[1];
        v1143 = vshlq_u64(v1142, v1130);
        v1130.i64[0] = v1115.u32[2];
        v1130.i64[1] = v1115.u32[3];
        v1144 = vshlq_u64(v1141, v1130);
        v1130.i64[0] = v1114.u32[0];
        v1130.i64[1] = v1114.u32[1];
        v1145 = vshlq_u64(v1139, v1130);
        v1130.i64[0] = v1113.u32[0];
        v1130.i64[1] = v1113.u32[1];
        v1146 = vshlq_u64(v1138, v1130);
        v1130.i64[0] = v1112.u32[2];
        v1130.i64[1] = v1112.u32[3];
        v1147 = vshlq_u64(v1137, v1130);
        v1130.i64[0] = v1114.u32[2];
        v1130.i64[1] = v1114.u32[3];
        v1148 = vshlq_u64(v1136, v1130);
        v1130.i64[0] = v1113.u32[2];
        v1130.i64[1] = v1113.u32[3];
        v1149 = vshlq_u64(v1133, v1130);
        v1130.i64[0] = v1112.u32[0];
        v1130.i64[1] = v1112.u32[1];
        v1122 = vorrq_s8(vshlq_u64(v1131, v1130), v1122);
        v1121 = vorrq_s8(v1149, v1121);
        v1119 = vorrq_s8(v1148, v1119);
        v1123 = vorrq_s8(v1147, v1123);
        v1120 = vorrq_s8(v1146, v1120);
        v1118 = vorrq_s8(v1145, v1118);
        v1109 = vorrq_s8(v1144, v1109);
        v1108 = vorrq_s8(v1143, v1108);
        v1110 = vaddq_s32(v1110, v1084);
        v1124 = vaddq_s32(v1124, v1084);
        v1125 = vaddq_s32(v1125, v1084);
        v1126 = vaddq_s32(v1126, v1084);
        v1115 = vaddq_s32(v1115, v1085);
        v1114 = vaddq_s32(v1114, v1085);
        v1113 = vaddq_s32(v1113, v1085);
        v1112 = vaddq_s32(v1112, v1085);
        v1116 -= 16;
      }

      while (v1116);
      v1150 = vorrq_s8(vorrq_s8(vorrq_s8(v1108, v1120), vorrq_s8(v1118, v1122)), vorrq_s8(vorrq_s8(v1109, v1121), vorrq_s8(v1119, v1123)));
      v1082 = vorr_s8(*v1150.i8, *&vextq_s8(v1150, v1150, 8uLL));
      v1099 = vaddvq_s32(vaddq_s32(vaddq_s32(v1110, v1125), vaddq_s32(v1124, v1126)));
      if ((v1107 & 0x3FFFFFF0) != v1107)
      {
        goto LABEL_681;
      }

LABEL_682:
      *(a1 + 40) += v1100 - v1092;
      v1083 = v1099;
      v1086 = ((v1081 - 1) * v1090 + 256) >> 8;
      v1091 = v1082 - (v1086 << 56);
      if (v1082 < v1086 << 56)
      {
LABEL_683:
        v1087 = 0;
        goto LABEL_651;
      }

LABEL_650:
      LODWORD(v1086) = *(a1 + 24) - v1086;
      v1087 = 1;
      v1082 = v1091;
LABEL_651:
      v1088 = vpx_norm[v1086];
      v1081 = v1086 << v1088;
      v1082 <<= v1088;
      v1083 -= v1088;
      *(a1 + 16) = v1082;
      *(a1 + 24) = v1086 << v1088;
      *(a1 + 28) = v1083;
      v1089 = vp9_segment_tree[v1087 + v951];
      v951 = v1089;
      if (v1089 <= 0)
      {
        goto LABEL_684;
      }
    }

    v1100 = v1092;
    do
    {
LABEL_681:
      v1099 += 8;
      v1151 = *v1100;
      v1100 = (v1100 + 1);
      v1082 |= v1151 << v1097;
      v1097 -= 8;
    }

    while (v1097 >= v1103);
    goto LABEL_682;
  }

LABEL_685:
  a6 = v2373;
  if (v2373 >= 1)
  {
    v12 = a2;
    if (v2387 >= 1)
    {
      for (j = 0; j != v2373; ++j)
      {
        v1153 = v96;
        v1154 = v2387;
        do
        {
          *(*(a2 + 2200) + v1153 + j * *(a2 + 1976)) = v98;
          ++v1153;
          --v1154;
        }

        while (v1154);
      }
    }

    goto LABEL_691;
  }

  v12 = a2;
  v13 = v2395;
  v1156 = v2395[1336];
  v14[4] = v98;
  v2389 = (v14 + 4);
  if (!v1156)
  {
LABEL_696:
    v1157 = *(a1 + 13784);
    v1158 = *(a1 + 13792);
    if (v1158)
    {
      v1158 = *(v1158 + 3);
    }

    if (v1157)
    {
      v1157 = *(v1157 + 3);
    }

    v1159 = v1157 + v1158;
    v1160 = *(a1 + 28);
    v1161 = ((*(a1 + 24) - 1) * *(*(v12 + 5560) + v1157 + v1158 + 1967) + 256) >> 8;
    v1162 = *(a1 + 16);
    if ((v1160 & 0x80000000) != 0)
    {
      v1165 = *(a1 + 40);
      v1166 = *(a1 + 32) - v1165;
      v1167 = 8 * v1166;
      v1168 = *(a1 + 48);
      if (v1168)
      {
        if (v1166 >= 9)
        {
          v1169 = 9;
        }

        else
        {
          v1169 = *(a1 + 32) - v1165;
        }

        v1168(*(a1 + 56), v1165, a1 + 64, v1169, a5, a6, vpx_norm);
        v1165 = (a1 + 64);
        v12 = a2;
      }

      v1170 = 48 - v1160;
      if (v1167 < 0x41)
      {
        v1174 = 56 - v1160 - v1167;
        if (v1174 < 0)
        {
          v1172 = v1160;
        }

        else
        {
          v1172 = v1160 + 0x40000000;
        }

        if (v1167)
        {
          v1175 = 1;
        }

        else
        {
          v1175 = v1174 <= -1;
        }

        if (v1175)
        {
          v1176 = v1174 & ~(v1174 >> 31);
          if (v1170 < v1176)
          {
            v1173 = v1165;
          }

          else
          {
            v1177 = v1176 - 1;
            if (v1176 - 1 >= (40 - v1160))
            {
              v1177 = 40 - v1160;
            }

            v1178 = 47 - v1160 - v1177;
            v1173 = v1165;
            v1179 = 48 - v1160;
            if (v1178 < 0x78)
            {
              goto LABEL_1475;
            }

            v1180 = v1162;
            v1181 = v1172;
            v1182 = vdupq_n_s32(v1170);
            v1183 = 0uLL;
            v1184 = vaddq_s32(v1182, xmmword_273BC3230);
            v1185 = vaddq_s32(v1182, xmmword_273BC3240);
            v1186 = vaddq_s32(v1182, xmmword_273BC3250);
            v1187 = vaddq_s32(v1182, xmmword_273BC3220);
            v1188.i64[0] = 0x800000008;
            v1188.i64[1] = 0x800000008;
            v1189.i64[0] = 0x7F0000007FLL;
            v1189.i64[1] = 0x7F0000007FLL;
            v1190 = (v1178 >> 3) + 1;
            v1191 = 0uLL;
            v1192 = 0uLL;
            v1193 = 0uLL;
            v1173 = (v1165 + (v1190 & 0x3FFFFFF0));
            v1179 = v1170 - 8 * (v1190 & 0x3FFFFFF0);
            v1194 = v1190 & 0x3FFFFFF0;
            v1195 = v1165;
            v1196 = 0uLL;
            v1197 = 0uLL;
            v1198 = 0uLL;
            v1199 = 0uLL;
            v1200 = 0uLL;
            v1201 = 0uLL;
            do
            {
              v1202 = *v1195++;
              v1203 = vmovl_high_u8(v1202);
              v1204 = vmovl_high_u16(v1203);
              v1205.i64[0] = v1204.u32[0];
              v1205.i64[1] = v1204.u32[1];
              v1206 = v1205;
              v1207 = vmovl_u16(*v1203.i8);
              v1205.i64[0] = v1207.u32[2];
              v1205.i64[1] = v1207.u32[3];
              v1208 = v1205;
              v1209 = vmovl_u8(*v1202.i8);
              v1210 = vmovl_high_u16(v1209);
              v1205.i64[0] = v1210.u32[2];
              v1205.i64[1] = v1210.u32[3];
              v1211 = v1205;
              v1205.i64[0] = v1204.u32[2];
              v1205.i64[1] = v1204.u32[3];
              v1212 = v1205;
              v1205.i64[0] = v1207.u32[0];
              v1205.i64[1] = v1207.u32[1];
              v1213 = v1205;
              v1205.i64[0] = v1210.u32[0];
              v1205.i64[1] = v1210.u32[1];
              v1214 = v1205;
              v1215 = vmovl_u16(*v1209.i8);
              v1205.i64[0] = v1215.u32[2];
              v1205.i64[1] = v1215.u32[3];
              v1216 = v1205;
              v1205.i64[0] = v1215.u32[0];
              v1205.i64[1] = v1215.u32[1];
              v1217 = v1205;
              v1205.i64[0] = v1187.u32[0];
              v1205.i64[1] = v1187.u32[1];
              v1218 = vshlq_u64(v1217, v1205);
              v1205.i64[0] = v1187.u32[2];
              v1205.i64[1] = v1187.u32[3];
              v1219 = vshlq_u64(v1216, v1205);
              v1205.i64[0] = v1186.u32[0];
              v1205.i64[1] = v1186.u32[1];
              v1220 = vshlq_u64(v1214, v1205);
              v1205.i64[0] = v1185.u32[0];
              v1205.i64[1] = v1185.u32[1];
              v1221 = vshlq_u64(v1213, v1205);
              v1205.i64[0] = v1184.u32[2];
              v1205.i64[1] = v1184.u32[3];
              v1222 = vshlq_u64(v1212, v1205);
              v1205.i64[0] = v1186.u32[2];
              v1205.i64[1] = v1186.u32[3];
              v1223 = vshlq_u64(v1211, v1205);
              v1205.i64[0] = v1185.u32[2];
              v1205.i64[1] = v1185.u32[3];
              v1224 = vshlq_u64(v1208, v1205);
              v1205.i64[0] = v1184.u32[0];
              v1205.i64[1] = v1184.u32[1];
              v1197 = vorrq_s8(vshlq_u64(v1206, v1205), v1197);
              v1196 = vorrq_s8(v1224, v1196);
              v1192 = vorrq_s8(v1223, v1192);
              v1198 = vorrq_s8(v1222, v1198);
              v1193 = vorrq_s8(v1221, v1193);
              v1191 = vorrq_s8(v1220, v1191);
              v1183 = vorrq_s8(v1219, v1183);
              v1180 = vorrq_s8(v1218, v1180);
              v1181 = vaddq_s32(v1181, v1188);
              v1199 = vaddq_s32(v1199, v1188);
              v1200 = vaddq_s32(v1200, v1188);
              v1201 = vaddq_s32(v1201, v1188);
              v1187 = vaddq_s32(v1187, v1189);
              v1186 = vaddq_s32(v1186, v1189);
              v1185 = vaddq_s32(v1185, v1189);
              v1184 = vaddq_s32(v1184, v1189);
              v1194 -= 16;
            }

            while (v1194);
            v1225 = vorrq_s8(vorrq_s8(vorrq_s8(v1180, v1193), vorrq_s8(v1191, v1197)), vorrq_s8(vorrq_s8(v1183, v1196), vorrq_s8(v1192, v1198)));
            v1162 = vorr_s8(*v1225.i8, *&vextq_s8(v1225, v1225, 8uLL));
            v1172 = vaddvq_s32(vaddq_s32(vaddq_s32(v1181, v1200), vaddq_s32(v1199, v1201)));
            if ((v1190 & 0x3FFFFFF0) != v1190)
            {
LABEL_1475:
              do
              {
                v1172 += 8;
                v1226 = *v1173;
                v1173 = (v1173 + 1);
                v1162 |= v1226 << v1179;
                v1179 -= 8;
              }

              while (v1179 >= v1176);
            }
          }
        }

        else
        {
          v1173 = v1165;
        }
      }

      else
      {
        v1171 = (v1170 & 0x7FFFFFF8) + 8;
        v1172 = v1171 + v1160;
        v1173 = (v1165 + (v1171 >> 3));
        v1162 = (bswap64(*v1165) >> (56 - (v1170 & 0xF8u)) << (v1170 & 7)) | *v2410;
      }

      *(a1 + 40) += v1173 - v1165;
      v1160 = v1172;
      v1163 = v1162 - (v1161 << 56);
      if (v1162 < v1161 << 56)
      {
        goto LABEL_702;
      }
    }

    else
    {
      v1163 = v1162 - (v1161 << 56);
      if (v1162 < v1161 << 56)
      {
LABEL_702:
        v1164 = 0;
        goto LABEL_730;
      }
    }

    LODWORD(v1161) = *(a1 + 24) - v1161;
    v1164 = 1;
    v1162 = v1163;
LABEL_730:
    v1227 = vpx_norm[v1161];
    *(a1 + 16) = v1162 << v1227;
    *(a1 + 24) = v1161 << v1227;
    *(a1 + 28) = v1160 - v1227;
    v1228 = *(a1 + 13744);
    if (v1228)
    {
      v1229 = v1228 + 8 * v1159 + 4 * v1164;
      ++*(v1229 + 12776);
    }

    v14 = v2388;
    v2388[3] = v1164;
    if (!v13[1336])
    {
      goto LABEL_734;
    }

    goto LABEL_733;
  }

LABEL_692:
  if ((*(v12 + 4 * v98 + 5512) & 8) == 0)
  {
    goto LABEL_696;
  }

  v14[3] = 1;
  if (!v13[1336])
  {
    goto LABEL_734;
  }

LABEL_733:
  v1230 = *v2389;
  if ((*(v12 + 4 * v1230 + 5512) & 4) != 0)
  {
    v1237 = *(v12 + 8 * v1230 + 5452) != 0;
    goto LABEL_781;
  }

LABEL_734:
  v1231 = *(a1 + 13784);
  v1232 = *(a1 + 13792);
  if (v1232 && v1231)
  {
    v1233 = *(v1231 + 8) < 1;
    v1234 = *(v1232 + 8) < 1;
    v1235 = v1234 || v1233;
    if (v1233 && v1234)
    {
      v1236 = 3;
    }

    else
    {
      v1236 = v1235;
    }
  }

  else if (v1232 | v1231)
  {
    if (v1232)
    {
      v1231 = *(a1 + 13792);
    }

    v1236 = 2 * (*(v1231 + 8) < 1);
  }

  else
  {
    v1236 = 0;
  }

  v1238 = *(a1 + 28);
  v1239 = ((*(a1 + 24) - 1) * *(*(v12 + 5560) + v1236 + 1931) + 256) >> 8;
  v1240 = *(a1 + 16);
  if ((v1238 & 0x80000000) != 0)
  {
    v1242 = *(a1 + 40);
    v1243 = *(a1 + 32) - v1242;
    v1244 = 8 * v1243;
    v1245 = *(a1 + 48);
    if (v1245)
    {
      if (v1243 >= 9)
      {
        v1246 = 9;
      }

      else
      {
        v1246 = *(a1 + 32) - v1242;
      }

      v1245(*(a1 + 56), v1242, a1 + 64, v1246);
      v1242 = (a1 + 64);
      v12 = a2;
    }

    v1247 = 48 - v1238;
    if (v1244 < 0x41)
    {
      v1251 = 56 - v1238 - v1244;
      if (v1251 < 0)
      {
        v1249 = v1238;
      }

      else
      {
        v1249 = v1238 + 0x40000000;
      }

      if (v1244)
      {
        v1252 = 1;
      }

      else
      {
        v1252 = v1251 <= -1;
      }

      if (v1252)
      {
        v1253 = v1251 & ~(v1251 >> 31);
        if (v1247 < v1253)
        {
          v1250 = v1242;
        }

        else
        {
          v1254 = v1253 - 1;
          if (v1253 - 1 >= (40 - v1238))
          {
            v1254 = 40 - v1238;
          }

          v1255 = 47 - v1238 - v1254;
          v1250 = v1242;
          v1256 = 48 - v1238;
          if (v1255 < 0x78)
          {
            goto LABEL_1476;
          }

          v1257 = v1240;
          v1258 = v1249;
          v1259 = vdupq_n_s32(v1247);
          v1260 = 0uLL;
          v1261 = vaddq_s32(v1259, xmmword_273BC3230);
          v1262 = vaddq_s32(v1259, xmmword_273BC3240);
          v1263 = vaddq_s32(v1259, xmmword_273BC3250);
          v1264 = vaddq_s32(v1259, xmmword_273BC3220);
          v1265.i64[0] = 0x800000008;
          v1265.i64[1] = 0x800000008;
          v1266.i64[0] = 0x7F0000007FLL;
          v1266.i64[1] = 0x7F0000007FLL;
          v1267 = (v1255 >> 3) + 1;
          v1268 = 0uLL;
          v1269 = 0uLL;
          v1270 = 0uLL;
          v1250 = (v1242 + (v1267 & 0x3FFFFFF0));
          v1256 = v1247 - 8 * (v1267 & 0x3FFFFFF0);
          v1271 = v1267 & 0x3FFFFFF0;
          v1272 = v1242;
          v1273 = 0uLL;
          v1274 = 0uLL;
          v1275 = 0uLL;
          v1276 = 0uLL;
          v1277 = 0uLL;
          v1278 = 0uLL;
          do
          {
            v1279 = *v1272++;
            v1280 = vmovl_high_u8(v1279);
            v1281 = vmovl_high_u16(v1280);
            v1282.i64[0] = v1281.u32[0];
            v1282.i64[1] = v1281.u32[1];
            v1283 = v1282;
            v1284 = vmovl_u16(*v1280.i8);
            v1282.i64[0] = v1284.u32[2];
            v1282.i64[1] = v1284.u32[3];
            v1285 = v1282;
            v1286 = vmovl_u8(*v1279.i8);
            v1287 = vmovl_high_u16(v1286);
            v1282.i64[0] = v1287.u32[2];
            v1282.i64[1] = v1287.u32[3];
            v1288 = v1282;
            v1282.i64[0] = v1281.u32[2];
            v1282.i64[1] = v1281.u32[3];
            v1289 = v1282;
            v1282.i64[0] = v1284.u32[0];
            v1282.i64[1] = v1284.u32[1];
            v1290 = v1282;
            v1282.i64[0] = v1287.u32[0];
            v1282.i64[1] = v1287.u32[1];
            v1291 = v1282;
            v1292 = vmovl_u16(*v1286.i8);
            v1282.i64[0] = v1292.u32[2];
            v1282.i64[1] = v1292.u32[3];
            v1293 = v1282;
            v1282.i64[0] = v1292.u32[0];
            v1282.i64[1] = v1292.u32[1];
            v1294 = v1282;
            v1282.i64[0] = v1264.u32[0];
            v1282.i64[1] = v1264.u32[1];
            v1295 = vshlq_u64(v1294, v1282);
            v1282.i64[0] = v1264.u32[2];
            v1282.i64[1] = v1264.u32[3];
            v1296 = vshlq_u64(v1293, v1282);
            v1282.i64[0] = v1263.u32[0];
            v1282.i64[1] = v1263.u32[1];
            v1297 = vshlq_u64(v1291, v1282);
            v1282.i64[0] = v1262.u32[0];
            v1282.i64[1] = v1262.u32[1];
            v1298 = vshlq_u64(v1290, v1282);
            v1282.i64[0] = v1261.u32[2];
            v1282.i64[1] = v1261.u32[3];
            v1299 = vshlq_u64(v1289, v1282);
            v1282.i64[0] = v1263.u32[2];
            v1282.i64[1] = v1263.u32[3];
            v1300 = vshlq_u64(v1288, v1282);
            v1282.i64[0] = v1262.u32[2];
            v1282.i64[1] = v1262.u32[3];
            v1301 = vshlq_u64(v1285, v1282);
            v1282.i64[0] = v1261.u32[0];
            v1282.i64[1] = v1261.u32[1];
            v1274 = vorrq_s8(vshlq_u64(v1283, v1282), v1274);
            v1273 = vorrq_s8(v1301, v1273);
            v1269 = vorrq_s8(v1300, v1269);
            v1275 = vorrq_s8(v1299, v1275);
            v1270 = vorrq_s8(v1298, v1270);
            v1268 = vorrq_s8(v1297, v1268);
            v1260 = vorrq_s8(v1296, v1260);
            v1257 = vorrq_s8(v1295, v1257);
            v1258 = vaddq_s32(v1258, v1265);
            v1276 = vaddq_s32(v1276, v1265);
            v1277 = vaddq_s32(v1277, v1265);
            v1278 = vaddq_s32(v1278, v1265);
            v1264 = vaddq_s32(v1264, v1266);
            v1263 = vaddq_s32(v1263, v1266);
            v1262 = vaddq_s32(v1262, v1266);
            v1261 = vaddq_s32(v1261, v1266);
            v1271 -= 16;
          }

          while (v1271);
          v1302 = vorrq_s8(vorrq_s8(vorrq_s8(v1257, v1270), vorrq_s8(v1268, v1274)), vorrq_s8(vorrq_s8(v1260, v1273), vorrq_s8(v1269, v1275)));
          v1240 = vorr_s8(*v1302.i8, *&vextq_s8(v1302, v1302, 8uLL));
          v1249 = vaddvq_s32(vaddq_s32(vaddq_s32(v1258, v1277), vaddq_s32(v1276, v1278)));
          if ((v1267 & 0x3FFFFFF0) != v1267)
          {
LABEL_1476:
            do
            {
              v1249 += 8;
              v1303 = *v1250;
              v1250 = (v1250 + 1);
              v1240 |= v1303 << v1256;
              v1256 -= 8;
            }

            while (v1256 >= v1253);
          }
        }
      }

      else
      {
        v1250 = v1242;
      }
    }

    else
    {
      v1248 = (v1247 & 0x7FFFFFF8) + 8;
      v1249 = v1248 + v1238;
      v1250 = (v1242 + (v1248 >> 3));
      v1240 = (bswap64(*v1242) >> (56 - (v1247 & 0xF8u)) << (v1247 & 7)) | *v2410;
    }

    *(a1 + 40) += v1250 - v1242;
    v1238 = v1249;
    v1241 = v1240 - (v1239 << 56);
    if (v1240 < v1239 << 56)
    {
      goto LABEL_750;
    }

LABEL_777:
    LODWORD(v1239) = *(a1 + 24) - v1239;
    v1237 = 1;
    v1240 = v1241;
    goto LABEL_778;
  }

  v1241 = v1240 - (v1239 << 56);
  if (v1240 >= v1239 << 56)
  {
    goto LABEL_777;
  }

LABEL_750:
  v1237 = 0;
LABEL_778:
  v1304 = vpx_norm[v1239];
  *(a1 + 16) = v1240 << v1304;
  *(a1 + 24) = v1239 << v1304;
  *(a1 + 28) = v1238 - v1304;
  v1305 = *(a1 + 13744);
  if (v1305)
  {
    v1306 = v1305 + 8 * v1236 + 4 * v1237;
    ++*(v1306 + 12496);
  }

  v14 = v2388;
LABEL_781:
  if (v14[3])
  {
    v1307 = !v1237;
  }

  else
  {
    v1307 = 1;
  }

  v1308 = v1307;
  result = read_tx_size(v12 + 656, a1 + 13328, v1308, v2410);
  v14[2] = result;
  v1309 = *v14;
  if (!v1237)
  {
    if (v1309 != 2)
    {
      if (v1309 != 1)
      {
        if (!*v14)
        {
          v1319 = *(v12 + 5560);
          v1321 = *(a1 + 24);
          v1320 = *(a1 + 28);
          v1322 = a1 + 64;
          v1323.i64[0] = 0x800000008;
          v1323.i64[1] = 0x800000008;
          v1324.i64[0] = 0x7F0000007FLL;
          v1324.i64[1] = 0x7F0000007FLL;
          v1325 = *(a1 + 16);
          while (1)
          {
            v1329 = *(v1319 + (v1309 >> 1));
            if ((v1320 & 0x80000000) == 0)
            {
              v1326 = ((v1321 - 1) * v1329 + 256) >> 8;
              v1330 = v1325 - (v1326 << 56);
              if (v1325 < v1326 << 56)
              {
                goto LABEL_833;
              }

              goto LABEL_800;
            }

            v1331 = *(a1 + 40);
            v1332 = *(a1 + 32) - v1331;
            v1333 = *(a1 + 48);
            if (v1333)
            {
              if (v1332 >= 9)
              {
                v1334 = 9;
              }

              else
              {
                v1334 = *(a1 + 32) - v1331;
              }

              result = v1333(*(a1 + 56), v1331, v1322, v1334);
              v1324.i64[0] = 0x7F0000007FLL;
              v1324.i64[1] = 0x7F0000007FLL;
              v1323.i64[0] = 0x800000008;
              v1323.i64[1] = 0x800000008;
              v1331 = (a1 + 64);
            }

            v1335 = 8 * v1332;
            v1336 = 48 - v1320;
            if (8 * v1332 >= 0x41)
            {
              v1337 = (v1336 & 0x7FFFFFF8) + 8;
              v1338 = v1337 + v1320;
              v1339 = (v1331 + (v1337 >> 3));
              v1325 = (bswap64(*v1331) >> (56 - (v1336 & 0xF8u)) << (v1336 & 7)) | *v2410;
              goto LABEL_832;
            }

            v1340 = 56 - v1320 - v1335;
            if (v1340 < 0)
            {
              v1338 = v1320;
            }

            else
            {
              v1338 = v1320 + 0x40000000;
            }

            if (v1335)
            {
              v1341 = 1;
            }

            else
            {
              v1341 = v1340 <= -1;
            }

            v1342 = v1340 & ~(v1340 >> 31);
            if (!v1341 || v1336 < v1342)
            {
              v1339 = v1331;
              goto LABEL_832;
            }

            v1344 = v1342 - 1;
            if (v1342 - 1 >= (40 - v1320))
            {
              v1344 = 40 - v1320;
            }

            v1345 = 47 - v1320 - v1344;
            if (v1345 < 0x78)
            {
              break;
            }

            v1346 = (v1345 >> 3) + 1;
            v1347 = v1325;
            v1348 = 0uLL;
            v1349 = v1338;
            v1350 = vdupq_n_s32(v1336);
            v1351 = vaddq_s32(v1350, xmmword_273BC3230);
            v1339 = (v1331 + (v1346 & 0x3FFFFFF0));
            v1352 = vaddq_s32(v1350, xmmword_273BC3240);
            v1336 -= 8 * (v1346 & 0x3FFFFFF0);
            v1353 = vaddq_s32(v1350, xmmword_273BC3250);
            v1354 = vaddq_s32(v1350, xmmword_273BC3220);
            v1355 = v1346 & 0x3FFFFFF0;
            v1356 = v1331;
            v1357 = 0uLL;
            v1358 = 0uLL;
            v1359 = 0uLL;
            v1360 = 0uLL;
            v1361 = 0uLL;
            v1362 = 0uLL;
            v1363 = 0uLL;
            v1364 = 0uLL;
            v1365 = 0uLL;
            do
            {
              v1366 = *v1356++;
              v1367 = vmovl_high_u8(v1366);
              v1368 = vmovl_high_u16(v1367);
              v1369.i64[0] = v1368.u32[0];
              v1369.i64[1] = v1368.u32[1];
              v1370 = v1369;
              v1371 = vmovl_u16(*v1367.i8);
              v1369.i64[0] = v1371.u32[2];
              v1369.i64[1] = v1371.u32[3];
              v1372 = v1369;
              v1373 = vmovl_u8(*v1366.i8);
              v1374 = vmovl_high_u16(v1373);
              v1369.i64[0] = v1374.u32[2];
              v1369.i64[1] = v1374.u32[3];
              v1375 = v1369;
              v1369.i64[0] = v1368.u32[2];
              v1369.i64[1] = v1368.u32[3];
              v1376 = v1369;
              v1369.i64[0] = v1371.u32[0];
              v1369.i64[1] = v1371.u32[1];
              v1377 = v1369;
              v1369.i64[0] = v1374.u32[0];
              v1369.i64[1] = v1374.u32[1];
              v1378 = v1369;
              v1379 = vmovl_u16(*v1373.i8);
              v1369.i64[0] = v1379.u32[2];
              v1369.i64[1] = v1379.u32[3];
              v1380 = v1369;
              v1369.i64[0] = v1379.u32[0];
              v1369.i64[1] = v1379.u32[1];
              v1381 = v1369;
              v1369.i64[0] = v1354.u32[0];
              v1369.i64[1] = v1354.u32[1];
              v1382 = vshlq_u64(v1381, v1369);
              v1369.i64[0] = v1354.u32[2];
              v1369.i64[1] = v1354.u32[3];
              v1383 = vshlq_u64(v1380, v1369);
              v1369.i64[0] = v1353.u32[0];
              v1369.i64[1] = v1353.u32[1];
              v1384 = vshlq_u64(v1378, v1369);
              v1369.i64[0] = v1352.u32[0];
              v1369.i64[1] = v1352.u32[1];
              v1385 = vshlq_u64(v1377, v1369);
              v1369.i64[0] = v1351.u32[2];
              v1369.i64[1] = v1351.u32[3];
              v1386 = vshlq_u64(v1376, v1369);
              v1369.i64[0] = v1353.u32[2];
              v1369.i64[1] = v1353.u32[3];
              v1387 = vshlq_u64(v1375, v1369);
              v1369.i64[0] = v1352.u32[2];
              v1369.i64[1] = v1352.u32[3];
              v1388 = vshlq_u64(v1372, v1369);
              v1369.i64[0] = v1351.u32[0];
              v1369.i64[1] = v1351.u32[1];
              v1361 = vorrq_s8(vshlq_u64(v1370, v1369), v1361);
              v1360 = vorrq_s8(v1388, v1360);
              v1358 = vorrq_s8(v1387, v1358);
              v1362 = vorrq_s8(v1386, v1362);
              v1359 = vorrq_s8(v1385, v1359);
              v1357 = vorrq_s8(v1384, v1357);
              v1348 = vorrq_s8(v1383, v1348);
              v1347 = vorrq_s8(v1382, v1347);
              v1349 = vaddq_s32(v1349, v1323);
              v1363 = vaddq_s32(v1363, v1323);
              v1364 = vaddq_s32(v1364, v1323);
              v1365 = vaddq_s32(v1365, v1323);
              v1354 = vaddq_s32(v1354, v1324);
              v1353 = vaddq_s32(v1353, v1324);
              v1352 = vaddq_s32(v1352, v1324);
              v1351 = vaddq_s32(v1351, v1324);
              v1355 -= 16;
            }

            while (v1355);
            v1389 = vorrq_s8(vorrq_s8(vorrq_s8(v1347, v1359), vorrq_s8(v1357, v1361)), vorrq_s8(vorrq_s8(v1348, v1360), vorrq_s8(v1358, v1362)));
            v1325 = vorr_s8(*v1389.i8, *&vextq_s8(v1389, v1389, 8uLL));
            v1338 = vaddvq_s32(vaddq_s32(vaddq_s32(v1349, v1364), vaddq_s32(v1363, v1365)));
            if ((v1346 & 0x3FFFFFF0) != v1346)
            {
              goto LABEL_831;
            }

LABEL_832:
            *(a1 + 40) += v1339 - v1331;
            v1320 = v1338;
            v1326 = ((v1321 - 1) * v1329 + 256) >> 8;
            v1330 = v1325 - (v1326 << 56);
            if (v1325 < v1326 << 56)
            {
LABEL_833:
              v1327 = 0;
              goto LABEL_801;
            }

LABEL_800:
            LODWORD(v1326) = *(a1 + 24) - v1326;
            v1327 = 1;
            v1325 = v1330;
LABEL_801:
            v1328 = vpx_norm[v1326];
            v1321 = v1326 << v1328;
            v1325 <<= v1328;
            v1320 -= v1328;
            *(a1 + 16) = v1325;
            *(a1 + 24) = v1326 << v1328;
            *(a1 + 28) = v1320;
            LODWORD(v1309) = vp9_intra_mode_tree[v1327 + v1309];
            if (v1309 <= 0)
            {
              v1754 = -v1309;
              v1755 = *(a1 + 13744);
              if (v1755)
              {
                ++*(v1755 + 4 * -v1309);
                v1321 = *(a1 + 24);
                v1320 = *(a1 + 28);
              }

              LOBYTE(v1756) = 0;
              v2388[20] = v1754;
              v1757 = *(a2 + 5560);
              v1758.i64[0] = 0x800000008;
              v1758.i64[1] = 0x800000008;
              v1759.i64[0] = 0x7F0000007FLL;
              v1759.i64[1] = 0x7F0000007FLL;
              while (1)
              {
                v1763 = *(v1757 + (v1756 >> 1));
                if ((v1320 & 0x80000000) == 0)
                {
                  v1760 = ((v1321 - 1) * v1763 + 256) >> 8;
                  v1764 = v1325 - (v1760 << 56);
                  if (v1325 < v1760 << 56)
                  {
                    goto LABEL_1061;
                  }

                  goto LABEL_1028;
                }

                v1765 = *(a1 + 40);
                v1766 = *(a1 + 32) - v1765;
                v1767 = *(a1 + 48);
                if (v1767)
                {
                  if (v1766 >= 9)
                  {
                    v1768 = 9;
                  }

                  else
                  {
                    v1768 = *(a1 + 32) - v1765;
                  }

                  result = v1767(*(a1 + 56), v1765, v1322, v1768);
                  v1759.i64[0] = 0x7F0000007FLL;
                  v1759.i64[1] = 0x7F0000007FLL;
                  v1758.i64[0] = 0x800000008;
                  v1758.i64[1] = 0x800000008;
                  v1765 = (a1 + 64);
                }

                v1769 = 8 * v1766;
                v1770 = 48 - v1320;
                if (8 * v1766 >= 0x41)
                {
                  v1771 = (v1770 & 0x7FFFFFF8) + 8;
                  v1772 = v1771 + v1320;
                  v1773 = (v1765 + (v1771 >> 3));
                  v1325 = (bswap64(*v1765) >> (56 - (v1770 & 0xF8u)) << (v1770 & 7)) | *v2410;
                  goto LABEL_1060;
                }

                v1774 = 56 - v1320 - v1769;
                if (v1774 < 0)
                {
                  v1772 = v1320;
                }

                else
                {
                  v1772 = v1320 + 0x40000000;
                }

                if (v1769)
                {
                  v1775 = 1;
                }

                else
                {
                  v1775 = v1774 <= -1;
                }

                v1776 = v1774 & ~(v1774 >> 31);
                if (!v1775 || v1770 < v1776)
                {
                  v1773 = v1765;
                  goto LABEL_1060;
                }

                v1778 = v1776 - 1;
                if (v1776 - 1 >= (40 - v1320))
                {
                  v1778 = 40 - v1320;
                }

                v1779 = 47 - v1320 - v1778;
                if (v1779 < 0x78)
                {
                  break;
                }

                v1780 = (v1779 >> 3) + 1;
                v1781 = v1325;
                v1782 = 0uLL;
                v1783 = v1772;
                v1784 = vdupq_n_s32(v1770);
                v1785 = vaddq_s32(v1784, xmmword_273BC3230);
                v1773 = (v1765 + (v1780 & 0x3FFFFFF0));
                v1786 = vaddq_s32(v1784, xmmword_273BC3240);
                v1770 -= 8 * (v1780 & 0x3FFFFFF0);
                v1787 = vaddq_s32(v1784, xmmword_273BC3250);
                v1788 = vaddq_s32(v1784, xmmword_273BC3220);
                v1789 = v1780 & 0x3FFFFFF0;
                v1790 = v1765;
                v1791 = 0uLL;
                v1792 = 0uLL;
                v1793 = 0uLL;
                v1794 = 0uLL;
                v1795 = 0uLL;
                v1796 = 0uLL;
                v1797 = 0uLL;
                v1798 = 0uLL;
                v1799 = 0uLL;
                do
                {
                  v1800 = *v1790++;
                  v1801 = vmovl_high_u8(v1800);
                  v1802 = vmovl_high_u16(v1801);
                  v1803.i64[0] = v1802.u32[0];
                  v1803.i64[1] = v1802.u32[1];
                  v1804 = v1803;
                  v1805 = vmovl_u16(*v1801.i8);
                  v1803.i64[0] = v1805.u32[2];
                  v1803.i64[1] = v1805.u32[3];
                  v1806 = v1803;
                  v1807 = vmovl_u8(*v1800.i8);
                  v1808 = vmovl_high_u16(v1807);
                  v1803.i64[0] = v1808.u32[2];
                  v1803.i64[1] = v1808.u32[3];
                  v1809 = v1803;
                  v1803.i64[0] = v1802.u32[2];
                  v1803.i64[1] = v1802.u32[3];
                  v1810 = v1803;
                  v1803.i64[0] = v1805.u32[0];
                  v1803.i64[1] = v1805.u32[1];
                  v1811 = v1803;
                  v1803.i64[0] = v1808.u32[0];
                  v1803.i64[1] = v1808.u32[1];
                  v1812 = v1803;
                  v1813 = vmovl_u16(*v1807.i8);
                  v1803.i64[0] = v1813.u32[2];
                  v1803.i64[1] = v1813.u32[3];
                  v1814 = v1803;
                  v1803.i64[0] = v1813.u32[0];
                  v1803.i64[1] = v1813.u32[1];
                  v1815 = v1803;
                  v1803.i64[0] = v1788.u32[0];
                  v1803.i64[1] = v1788.u32[1];
                  v1816 = vshlq_u64(v1815, v1803);
                  v1803.i64[0] = v1788.u32[2];
                  v1803.i64[1] = v1788.u32[3];
                  v1817 = vshlq_u64(v1814, v1803);
                  v1803.i64[0] = v1787.u32[0];
                  v1803.i64[1] = v1787.u32[1];
                  v1818 = vshlq_u64(v1812, v1803);
                  v1803.i64[0] = v1786.u32[0];
                  v1803.i64[1] = v1786.u32[1];
                  v1819 = vshlq_u64(v1811, v1803);
                  v1803.i64[0] = v1785.u32[2];
                  v1803.i64[1] = v1785.u32[3];
                  v1820 = vshlq_u64(v1810, v1803);
                  v1803.i64[0] = v1787.u32[2];
                  v1803.i64[1] = v1787.u32[3];
                  v1821 = vshlq_u64(v1809, v1803);
                  v1803.i64[0] = v1786.u32[2];
                  v1803.i64[1] = v1786.u32[3];
                  v1822 = vshlq_u64(v1806, v1803);
                  v1803.i64[0] = v1785.u32[0];
                  v1803.i64[1] = v1785.u32[1];
                  v1795 = vorrq_s8(vshlq_u64(v1804, v1803), v1795);
                  v1794 = vorrq_s8(v1822, v1794);
                  v1792 = vorrq_s8(v1821, v1792);
                  v1796 = vorrq_s8(v1820, v1796);
                  v1793 = vorrq_s8(v1819, v1793);
                  v1791 = vorrq_s8(v1818, v1791);
                  v1782 = vorrq_s8(v1817, v1782);
                  v1781 = vorrq_s8(v1816, v1781);
                  v1783 = vaddq_s32(v1783, v1758);
                  v1797 = vaddq_s32(v1797, v1758);
                  v1798 = vaddq_s32(v1798, v1758);
                  v1799 = vaddq_s32(v1799, v1758);
                  v1788 = vaddq_s32(v1788, v1759);
                  v1787 = vaddq_s32(v1787, v1759);
                  v1786 = vaddq_s32(v1786, v1759);
                  v1785 = vaddq_s32(v1785, v1759);
                  v1789 -= 16;
                }

                while (v1789);
                v1823 = vorrq_s8(vorrq_s8(vorrq_s8(v1781, v1793), vorrq_s8(v1791, v1795)), vorrq_s8(vorrq_s8(v1782, v1794), vorrq_s8(v1792, v1796)));
                v1325 = vorr_s8(*v1823.i8, *&vextq_s8(v1823, v1823, 8uLL));
                v1772 = vaddvq_s32(vaddq_s32(vaddq_s32(v1783, v1798), vaddq_s32(v1797, v1799)));
                if ((v1780 & 0x3FFFFFF0) != v1780)
                {
                  goto LABEL_1059;
                }

LABEL_1060:
                *(a1 + 40) += v1773 - v1765;
                v1320 = v1772;
                v1760 = ((v1321 - 1) * v1763 + 256) >> 8;
                v1764 = v1325 - (v1760 << 56);
                if (v1325 < v1760 << 56)
                {
LABEL_1061:
                  v1761 = 0;
                  goto LABEL_1029;
                }

LABEL_1028:
                LODWORD(v1760) = *(a1 + 24) - v1760;
                v1761 = 1;
                v1325 = v1764;
LABEL_1029:
                v1762 = vpx_norm[v1760];
                v1321 = v1760 << v1762;
                v1325 <<= v1762;
                v1320 -= v1762;
                *(a1 + 16) = v1325;
                *(a1 + 24) = v1760 << v1762;
                *(a1 + 28) = v1320;
                v1756 = vp9_intra_mode_tree[v1761 + v1756];
                if (v1756 <= 0)
                {
                  v1827 = -v1756;
                  v1828 = *(a1 + 13744);
                  if (v1828)
                  {
                    ++*(v1828 + 4 * -v1756);
                    v1321 = *(a1 + 24);
                    v1320 = *(a1 + 28);
                  }

                  LOBYTE(v1829) = 0;
                  v2388[32] = v1827;
                  v1830 = *(a2 + 5560);
                  v1831.i64[0] = 0x800000008;
                  v1831.i64[1] = 0x800000008;
                  v1832.i64[0] = 0x7F0000007FLL;
                  v1832.i64[1] = 0x7F0000007FLL;
                  while (2)
                  {
                    v1836 = *(v1830 + (v1829 >> 1));
                    if ((v1320 & 0x80000000) == 0)
                    {
                      v1833 = ((v1321 - 1) * v1836 + 256) >> 8;
                      v1837 = v1325 - (v1833 << 56);
                      if (v1325 < v1833 << 56)
                      {
LABEL_1101:
                        v1834 = 0;
LABEL_1069:
                        v1835 = vpx_norm[v1833];
                        v1321 = v1833 << v1835;
                        v1325 <<= v1835;
                        v1320 -= v1835;
                        *(a1 + 16) = v1325;
                        *(a1 + 24) = v1833 << v1835;
                        *(a1 + 28) = v1320;
                        v1829 = vp9_intra_mode_tree[v1834 + v1829];
                        if (v1829 > 0)
                        {
                          continue;
                        }

                        v1898 = -v1829;
                        v1899 = *(a1 + 13744);
                        if (v1899)
                        {
                          ++*(v1899 + 4 * -v1829);
                          v1321 = *(a1 + 24);
                          v1320 = *(a1 + 28);
                        }

                        LOBYTE(v1900) = 0;
                        v2388[44] = v1898;
                        v1901 = *(a2 + 5560);
                        v1902.i64[0] = 0x800000008;
                        v1902.i64[1] = 0x800000008;
                        v1903.i64[0] = 0x7F0000007FLL;
                        v1903.i64[1] = 0x7F0000007FLL;
                        while (2)
                        {
                          v1907 = *(v1901 + (v1900 >> 1));
                          if ((v1320 & 0x80000000) == 0)
                          {
                            v1904 = ((v1321 - 1) * v1907 + 256) >> 8;
                            v1908 = v1325 - (v1904 << 56);
                            if (v1325 < v1904 << 56)
                            {
LABEL_1138:
                              v1905 = 0;
LABEL_1106:
                              v1906 = vpx_norm[v1904];
                              v1321 = v1904 << v1906;
                              v1325 <<= v1906;
                              v1320 -= v1906;
                              *(a1 + 16) = v1325;
                              *(a1 + 24) = v1904 << v1906;
                              *(a1 + 28) = v1320;
                              v1900 = vp9_intra_mode_tree[v1905 + v1900];
                              if (v1900 <= 0)
                              {
                                v1537 = -v1900;
                                v1969 = *(a1 + 13744);
                                if (v1969)
                                {
                                  ++*(v1969 + 4 * -v1900);
                                }

                                v1826 = v2388;
                                v2388[56] = v1537;
                                goto LABEL_1142;
                              }

                              continue;
                            }

LABEL_1105:
                            LODWORD(v1904) = *(a1 + 24) - v1904;
                            v1905 = 1;
                            v1325 = v1908;
                            goto LABEL_1106;
                          }

                          break;
                        }

                        v1909 = *(a1 + 40);
                        v1910 = *(a1 + 32) - v1909;
                        v1911 = *(a1 + 48);
                        if (v1911)
                        {
                          if (v1910 >= 9)
                          {
                            v1912 = 9;
                          }

                          else
                          {
                            v1912 = *(a1 + 32) - v1909;
                          }

                          result = v1911(*(a1 + 56), v1909, v1322, v1912);
                          v1903.i64[0] = 0x7F0000007FLL;
                          v1903.i64[1] = 0x7F0000007FLL;
                          v1902.i64[0] = 0x800000008;
                          v1902.i64[1] = 0x800000008;
                          v1909 = (a1 + 64);
                        }

                        v1913 = 8 * v1910;
                        v1914 = 48 - v1320;
                        if (8 * v1910 >= 0x41)
                        {
                          v1915 = (v1914 & 0x7FFFFFF8) + 8;
                          v1916 = v1915 + v1320;
                          v1917 = (v1909 + (v1915 >> 3));
                          v1325 = (bswap64(*v1909) >> (56 - (v1914 & 0xF8u)) << (v1914 & 7)) | *v2410;
                          goto LABEL_1137;
                        }

                        v1918 = 56 - v1320 - v1913;
                        if (v1918 < 0)
                        {
                          v1916 = v1320;
                        }

                        else
                        {
                          v1916 = v1320 + 0x40000000;
                        }

                        if (v1913)
                        {
                          v1919 = 1;
                        }

                        else
                        {
                          v1919 = v1918 <= -1;
                        }

                        v1920 = v1918 & ~(v1918 >> 31);
                        if (!v1919 || v1914 < v1920)
                        {
                          v1917 = v1909;
                        }

                        else
                        {
                          v1922 = v1920 - 1;
                          if (v1920 - 1 >= (40 - v1320))
                          {
                            v1922 = 40 - v1320;
                          }

                          v1923 = 47 - v1320 - v1922;
                          if (v1923 < 0x78)
                          {
                            v1917 = v1909;
                            goto LABEL_1136;
                          }

                          v1924 = (v1923 >> 3) + 1;
                          v1925 = v1325;
                          v1926 = 0uLL;
                          v1927 = v1916;
                          v1928 = vdupq_n_s32(v1914);
                          v1929 = vaddq_s32(v1928, xmmword_273BC3230);
                          v1917 = (v1909 + (v1924 & 0x3FFFFFF0));
                          v1930 = vaddq_s32(v1928, xmmword_273BC3240);
                          v1914 -= 8 * (v1924 & 0x3FFFFFF0);
                          v1931 = vaddq_s32(v1928, xmmword_273BC3250);
                          v1932 = vaddq_s32(v1928, xmmword_273BC3220);
                          v1933 = v1924 & 0x3FFFFFF0;
                          v1934 = v1909;
                          v1935 = 0uLL;
                          v1936 = 0uLL;
                          v1937 = 0uLL;
                          v1938 = 0uLL;
                          v1939 = 0uLL;
                          v1940 = 0uLL;
                          v1941 = 0uLL;
                          v1942 = 0uLL;
                          v1943 = 0uLL;
                          do
                          {
                            v1944 = *v1934++;
                            v1945 = vmovl_high_u8(v1944);
                            v1946 = vmovl_high_u16(v1945);
                            v1947.i64[0] = v1946.u32[0];
                            v1947.i64[1] = v1946.u32[1];
                            v1948 = v1947;
                            v1949 = vmovl_u16(*v1945.i8);
                            v1947.i64[0] = v1949.u32[2];
                            v1947.i64[1] = v1949.u32[3];
                            v1950 = v1947;
                            v1951 = vmovl_u8(*v1944.i8);
                            v1952 = vmovl_high_u16(v1951);
                            v1947.i64[0] = v1952.u32[2];
                            v1947.i64[1] = v1952.u32[3];
                            v1953 = v1947;
                            v1947.i64[0] = v1946.u32[2];
                            v1947.i64[1] = v1946.u32[3];
                            v1954 = v1947;
                            v1947.i64[0] = v1949.u32[0];
                            v1947.i64[1] = v1949.u32[1];
                            v1955 = v1947;
                            v1947.i64[0] = v1952.u32[0];
                            v1947.i64[1] = v1952.u32[1];
                            v1956 = v1947;
                            v1957 = vmovl_u16(*v1951.i8);
                            v1947.i64[0] = v1957.u32[2];
                            v1947.i64[1] = v1957.u32[3];
                            v1958 = v1947;
                            v1947.i64[0] = v1957.u32[0];
                            v1947.i64[1] = v1957.u32[1];
                            v1959 = v1947;
                            v1947.i64[0] = v1932.u32[0];
                            v1947.i64[1] = v1932.u32[1];
                            v1960 = vshlq_u64(v1959, v1947);
                            v1947.i64[0] = v1932.u32[2];
                            v1947.i64[1] = v1932.u32[3];
                            v1961 = vshlq_u64(v1958, v1947);
                            v1947.i64[0] = v1931.u32[0];
                            v1947.i64[1] = v1931.u32[1];
                            v1962 = vshlq_u64(v1956, v1947);
                            v1947.i64[0] = v1930.u32[0];
                            v1947.i64[1] = v1930.u32[1];
                            v1963 = vshlq_u64(v1955, v1947);
                            v1947.i64[0] = v1929.u32[2];
                            v1947.i64[1] = v1929.u32[3];
                            v1964 = vshlq_u64(v1954, v1947);
                            v1947.i64[0] = v1931.u32[2];
                            v1947.i64[1] = v1931.u32[3];
                            v1965 = vshlq_u64(v1953, v1947);
                            v1947.i64[0] = v1930.u32[2];
                            v1947.i64[1] = v1930.u32[3];
                            v1966 = vshlq_u64(v1950, v1947);
                            v1947.i64[0] = v1929.u32[0];
                            v1947.i64[1] = v1929.u32[1];
                            v1939 = vorrq_s8(vshlq_u64(v1948, v1947), v1939);
                            v1938 = vorrq_s8(v1966, v1938);
                            v1936 = vorrq_s8(v1965, v1936);
                            v1940 = vorrq_s8(v1964, v1940);
                            v1937 = vorrq_s8(v1963, v1937);
                            v1935 = vorrq_s8(v1962, v1935);
                            v1926 = vorrq_s8(v1961, v1926);
                            v1925 = vorrq_s8(v1960, v1925);
                            v1927 = vaddq_s32(v1927, v1902);
                            v1941 = vaddq_s32(v1941, v1902);
                            v1942 = vaddq_s32(v1942, v1902);
                            v1943 = vaddq_s32(v1943, v1902);
                            v1932 = vaddq_s32(v1932, v1903);
                            v1931 = vaddq_s32(v1931, v1903);
                            v1930 = vaddq_s32(v1930, v1903);
                            v1929 = vaddq_s32(v1929, v1903);
                            v1933 -= 16;
                          }

                          while (v1933);
                          v1967 = vorrq_s8(vorrq_s8(vorrq_s8(v1925, v1937), vorrq_s8(v1935, v1939)), vorrq_s8(vorrq_s8(v1926, v1938), vorrq_s8(v1936, v1940)));
                          v1325 = vorr_s8(*v1967.i8, *&vextq_s8(v1967, v1967, 8uLL));
                          v1916 = vaddvq_s32(vaddq_s32(vaddq_s32(v1927, v1942), vaddq_s32(v1941, v1943)));
                          if ((v1924 & 0x3FFFFFF0) != v1924)
                          {
                            do
                            {
LABEL_1136:
                              v1916 += 8;
                              v1968 = *v1917;
                              v1917 = (v1917 + 1);
                              v1325 |= v1968 << v1914;
                              v1914 -= 8;
                            }

                            while (v1914 >= v1920);
                          }
                        }

LABEL_1137:
                        *(a1 + 40) += v1917 - v1909;
                        v1320 = v1916;
                        v1904 = ((v1321 - 1) * v1907 + 256) >> 8;
                        v1908 = v1325 - (v1904 << 56);
                        if (v1325 < v1904 << 56)
                        {
                          goto LABEL_1138;
                        }

                        goto LABEL_1105;
                      }

LABEL_1068:
                      LODWORD(v1833) = *(a1 + 24) - v1833;
                      v1834 = 1;
                      v1325 = v1837;
                      goto LABEL_1069;
                    }

                    break;
                  }

                  v1838 = *(a1 + 40);
                  v1839 = *(a1 + 32) - v1838;
                  v1840 = *(a1 + 48);
                  if (v1840)
                  {
                    if (v1839 >= 9)
                    {
                      v1841 = 9;
                    }

                    else
                    {
                      v1841 = *(a1 + 32) - v1838;
                    }

                    result = v1840(*(a1 + 56), v1838, v1322, v1841);
                    v1832.i64[0] = 0x7F0000007FLL;
                    v1832.i64[1] = 0x7F0000007FLL;
                    v1831.i64[0] = 0x800000008;
                    v1831.i64[1] = 0x800000008;
                    v1838 = (a1 + 64);
                  }

                  v1842 = 8 * v1839;
                  v1843 = 48 - v1320;
                  if (8 * v1839 >= 0x41)
                  {
                    v1844 = (v1843 & 0x7FFFFFF8) + 8;
                    v1845 = v1844 + v1320;
                    v1846 = (v1838 + (v1844 >> 3));
                    v1325 = (bswap64(*v1838) >> (56 - (v1843 & 0xF8u)) << (v1843 & 7)) | *v2410;
                    goto LABEL_1100;
                  }

                  v1847 = 56 - v1320 - v1842;
                  if (v1847 < 0)
                  {
                    v1845 = v1320;
                  }

                  else
                  {
                    v1845 = v1320 + 0x40000000;
                  }

                  if (v1842)
                  {
                    v1848 = 1;
                  }

                  else
                  {
                    v1848 = v1847 <= -1;
                  }

                  v1849 = v1847 & ~(v1847 >> 31);
                  if (!v1848 || v1843 < v1849)
                  {
                    v1846 = v1838;
                  }

                  else
                  {
                    v1851 = v1849 - 1;
                    if (v1849 - 1 >= (40 - v1320))
                    {
                      v1851 = 40 - v1320;
                    }

                    v1852 = 47 - v1320 - v1851;
                    if (v1852 < 0x78)
                    {
                      v1846 = v1838;
                      goto LABEL_1099;
                    }

                    v1853 = (v1852 >> 3) + 1;
                    v1854 = v1325;
                    v1855 = 0uLL;
                    v1856 = v1845;
                    v1857 = vdupq_n_s32(v1843);
                    v1858 = vaddq_s32(v1857, xmmword_273BC3230);
                    v1846 = (v1838 + (v1853 & 0x3FFFFFF0));
                    v1859 = vaddq_s32(v1857, xmmword_273BC3240);
                    v1843 -= 8 * (v1853 & 0x3FFFFFF0);
                    v1860 = vaddq_s32(v1857, xmmword_273BC3250);
                    v1861 = vaddq_s32(v1857, xmmword_273BC3220);
                    v1862 = v1853 & 0x3FFFFFF0;
                    v1863 = v1838;
                    v1864 = 0uLL;
                    v1865 = 0uLL;
                    v1866 = 0uLL;
                    v1867 = 0uLL;
                    v1868 = 0uLL;
                    v1869 = 0uLL;
                    v1870 = 0uLL;
                    v1871 = 0uLL;
                    v1872 = 0uLL;
                    do
                    {
                      v1873 = *v1863++;
                      v1874 = vmovl_high_u8(v1873);
                      v1875 = vmovl_high_u16(v1874);
                      v1876.i64[0] = v1875.u32[0];
                      v1876.i64[1] = v1875.u32[1];
                      v1877 = v1876;
                      v1878 = vmovl_u16(*v1874.i8);
                      v1876.i64[0] = v1878.u32[2];
                      v1876.i64[1] = v1878.u32[3];
                      v1879 = v1876;
                      v1880 = vmovl_u8(*v1873.i8);
                      v1881 = vmovl_high_u16(v1880);
                      v1876.i64[0] = v1881.u32[2];
                      v1876.i64[1] = v1881.u32[3];
                      v1882 = v1876;
                      v1876.i64[0] = v1875.u32[2];
                      v1876.i64[1] = v1875.u32[3];
                      v1883 = v1876;
                      v1876.i64[0] = v1878.u32[0];
                      v1876.i64[1] = v1878.u32[1];
                      v1884 = v1876;
                      v1876.i64[0] = v1881.u32[0];
                      v1876.i64[1] = v1881.u32[1];
                      v1885 = v1876;
                      v1886 = vmovl_u16(*v1880.i8);
                      v1876.i64[0] = v1886.u32[2];
                      v1876.i64[1] = v1886.u32[3];
                      v1887 = v1876;
                      v1876.i64[0] = v1886.u32[0];
                      v1876.i64[1] = v1886.u32[1];
                      v1888 = v1876;
                      v1876.i64[0] = v1861.u32[0];
                      v1876.i64[1] = v1861.u32[1];
                      v1889 = vshlq_u64(v1888, v1876);
                      v1876.i64[0] = v1861.u32[2];
                      v1876.i64[1] = v1861.u32[3];
                      v1890 = vshlq_u64(v1887, v1876);
                      v1876.i64[0] = v1860.u32[0];
                      v1876.i64[1] = v1860.u32[1];
                      v1891 = vshlq_u64(v1885, v1876);
                      v1876.i64[0] = v1859.u32[0];
                      v1876.i64[1] = v1859.u32[1];
                      v1892 = vshlq_u64(v1884, v1876);
                      v1876.i64[0] = v1858.u32[2];
                      v1876.i64[1] = v1858.u32[3];
                      v1893 = vshlq_u64(v1883, v1876);
                      v1876.i64[0] = v1860.u32[2];
                      v1876.i64[1] = v1860.u32[3];
                      v1894 = vshlq_u64(v1882, v1876);
                      v1876.i64[0] = v1859.u32[2];
                      v1876.i64[1] = v1859.u32[3];
                      v1895 = vshlq_u64(v1879, v1876);
                      v1876.i64[0] = v1858.u32[0];
                      v1876.i64[1] = v1858.u32[1];
                      v1868 = vorrq_s8(vshlq_u64(v1877, v1876), v1868);
                      v1867 = vorrq_s8(v1895, v1867);
                      v1865 = vorrq_s8(v1894, v1865);
                      v1869 = vorrq_s8(v1893, v1869);
                      v1866 = vorrq_s8(v1892, v1866);
                      v1864 = vorrq_s8(v1891, v1864);
                      v1855 = vorrq_s8(v1890, v1855);
                      v1854 = vorrq_s8(v1889, v1854);
                      v1856 = vaddq_s32(v1856, v1831);
                      v1870 = vaddq_s32(v1870, v1831);
                      v1871 = vaddq_s32(v1871, v1831);
                      v1872 = vaddq_s32(v1872, v1831);
                      v1861 = vaddq_s32(v1861, v1832);
                      v1860 = vaddq_s32(v1860, v1832);
                      v1859 = vaddq_s32(v1859, v1832);
                      v1858 = vaddq_s32(v1858, v1832);
                      v1862 -= 16;
                    }

                    while (v1862);
                    v1896 = vorrq_s8(vorrq_s8(vorrq_s8(v1854, v1866), vorrq_s8(v1864, v1868)), vorrq_s8(vorrq_s8(v1855, v1867), vorrq_s8(v1865, v1869)));
                    v1325 = vorr_s8(*v1896.i8, *&vextq_s8(v1896, v1896, 8uLL));
                    v1845 = vaddvq_s32(vaddq_s32(vaddq_s32(v1856, v1871), vaddq_s32(v1870, v1872)));
                    if ((v1853 & 0x3FFFFFF0) != v1853)
                    {
                      do
                      {
LABEL_1099:
                        v1845 += 8;
                        v1897 = *v1846;
                        v1846 = (v1846 + 1);
                        v1325 |= v1897 << v1843;
                        v1843 -= 8;
                      }

                      while (v1843 >= v1849);
                    }
                  }

LABEL_1100:
                  *(a1 + 40) += v1846 - v1838;
                  v1320 = v1845;
                  v1833 = ((v1321 - 1) * v1836 + 256) >> 8;
                  v1837 = v1325 - (v1833 << 56);
                  if (v1325 < v1833 << 56)
                  {
                    goto LABEL_1101;
                  }

                  goto LABEL_1068;
                }
              }

              v1773 = v1765;
              do
              {
LABEL_1059:
                v1772 += 8;
                v1824 = *v1773;
                v1773 = (v1773 + 1);
                v1325 |= v1824 << v1770;
                v1770 -= 8;
              }

              while (v1770 >= v1776);
              goto LABEL_1060;
            }
          }

          v1339 = v1331;
          do
          {
LABEL_831:
            v1338 += 8;
            v1390 = *v1339;
            v1339 = (v1339 + 1);
            v1325 |= v1390 << v1336;
            v1336 -= 8;
          }

          while (v1336 >= v1342);
          goto LABEL_832;
        }

        LOBYTE(v1683) = 0;
        v2390 = size_group_lookup[*v14];
        v1684 = *(v12 + 5560) + 9 * v2390;
        v1686 = *(a1 + 24);
        v1685 = *(a1 + 28);
        v1325 = *(a1 + 16);
        v1687.i64[0] = 0x800000008;
        v1687.i64[1] = 0x800000008;
        v1688.i64[0] = 0x7F0000007FLL;
        v1688.i64[1] = 0x7F0000007FLL;
        while (1)
        {
          v1692 = *(v1684 + (v1683 >> 1));
          if ((v1685 & 0x80000000) == 0)
          {
            v1689 = ((v1686 - 1) * v1692 + 256) >> 8;
            v1693 = v1325 - (v1689 << 56);
            if (v1325 < v1689 << 56)
            {
              goto LABEL_1024;
            }

            goto LABEL_991;
          }

          v1694 = *(a1 + 40);
          v1695 = *(a1 + 32) - v1694;
          v1696 = *(a1 + 48);
          if (v1696)
          {
            if (v1695 >= 9)
            {
              v1697 = 9;
            }

            else
            {
              v1697 = *(a1 + 32) - v1694;
            }

            result = v1696(*(a1 + 56), v1694, a1 + 64, v1697);
            v1688.i64[0] = 0x7F0000007FLL;
            v1688.i64[1] = 0x7F0000007FLL;
            v1687.i64[0] = 0x800000008;
            v1687.i64[1] = 0x800000008;
            v1694 = (a1 + 64);
          }

          v1698 = 8 * v1695;
          v1699 = 48 - v1685;
          if (8 * v1695 >= 0x41)
          {
            v1700 = (v1699 & 0x7FFFFFF8) + 8;
            v1701 = v1700 + v1685;
            v1702 = (v1694 + (v1700 >> 3));
            v1325 = (bswap64(*v1694) >> (56 - (v1699 & 0xF8u)) << (v1699 & 7)) | *v2410;
            goto LABEL_1023;
          }

          v1703 = 56 - v1685 - v1698;
          if (v1703 < 0)
          {
            v1701 = v1685;
          }

          else
          {
            v1701 = v1685 + 0x40000000;
          }

          if (v1698)
          {
            v1704 = 1;
          }

          else
          {
            v1704 = v1703 <= -1;
          }

          v1705 = v1703 & ~(v1703 >> 31);
          if (!v1704 || v1699 < v1705)
          {
            v1702 = v1694;
            goto LABEL_1023;
          }

          v1707 = v1705 - 1;
          if (v1705 - 1 >= (40 - v1685))
          {
            v1707 = 40 - v1685;
          }

          v1708 = 47 - v1685 - v1707;
          if (v1708 < 0x78)
          {
            break;
          }

          v1709 = (v1708 >> 3) + 1;
          v1710 = v1325;
          v1711 = 0uLL;
          v1712 = v1701;
          v1713 = vdupq_n_s32(v1699);
          v1714 = vaddq_s32(v1713, xmmword_273BC3230);
          v1702 = (v1694 + (v1709 & 0x3FFFFFF0));
          v1715 = vaddq_s32(v1713, xmmword_273BC3240);
          v1699 -= 8 * (v1709 & 0x3FFFFFF0);
          v1716 = vaddq_s32(v1713, xmmword_273BC3250);
          v1717 = vaddq_s32(v1713, xmmword_273BC3220);
          v1718 = v1709 & 0x3FFFFFF0;
          v1719 = v1694;
          v1720 = 0uLL;
          v1721 = 0uLL;
          v1722 = 0uLL;
          v1723 = 0uLL;
          v1724 = 0uLL;
          v1725 = 0uLL;
          v1726 = 0uLL;
          v1727 = 0uLL;
          v1728 = 0uLL;
          do
          {
            v1729 = *v1719++;
            v1730 = vmovl_high_u8(v1729);
            v1731 = vmovl_high_u16(v1730);
            v1732.i64[0] = v1731.u32[0];
            v1732.i64[1] = v1731.u32[1];
            v1733 = v1732;
            v1734 = vmovl_u16(*v1730.i8);
            v1732.i64[0] = v1734.u32[2];
            v1732.i64[1] = v1734.u32[3];
            v1735 = v1732;
            v1736 = vmovl_u8(*v1729.i8);
            v1737 = vmovl_high_u16(v1736);
            v1732.i64[0] = v1737.u32[2];
            v1732.i64[1] = v1737.u32[3];
            v1738 = v1732;
            v1732.i64[0] = v1731.u32[2];
            v1732.i64[1] = v1731.u32[3];
            v1739 = v1732;
            v1732.i64[0] = v1734.u32[0];
            v1732.i64[1] = v1734.u32[1];
            v1740 = v1732;
            v1732.i64[0] = v1737.u32[0];
            v1732.i64[1] = v1737.u32[1];
            v1741 = v1732;
            v1742 = vmovl_u16(*v1736.i8);
            v1732.i64[0] = v1742.u32[2];
            v1732.i64[1] = v1742.u32[3];
            v1743 = v1732;
            v1732.i64[0] = v1742.u32[0];
            v1732.i64[1] = v1742.u32[1];
            v1744 = v1732;
            v1732.i64[0] = v1717.u32[0];
            v1732.i64[1] = v1717.u32[1];
            v1745 = vshlq_u64(v1744, v1732);
            v1732.i64[0] = v1717.u32[2];
            v1732.i64[1] = v1717.u32[3];
            v1746 = vshlq_u64(v1743, v1732);
            v1732.i64[0] = v1716.u32[0];
            v1732.i64[1] = v1716.u32[1];
            v1747 = vshlq_u64(v1741, v1732);
            v1732.i64[0] = v1715.u32[0];
            v1732.i64[1] = v1715.u32[1];
            v1748 = vshlq_u64(v1740, v1732);
            v1732.i64[0] = v1714.u32[2];
            v1732.i64[1] = v1714.u32[3];
            v1749 = vshlq_u64(v1739, v1732);
            v1732.i64[0] = v1716.u32[2];
            v1732.i64[1] = v1716.u32[3];
            v1750 = vshlq_u64(v1738, v1732);
            v1732.i64[0] = v1715.u32[2];
            v1732.i64[1] = v1715.u32[3];
            v1751 = vshlq_u64(v1735, v1732);
            v1732.i64[0] = v1714.u32[0];
            v1732.i64[1] = v1714.u32[1];
            v1724 = vorrq_s8(vshlq_u64(v1733, v1732), v1724);
            v1723 = vorrq_s8(v1751, v1723);
            v1721 = vorrq_s8(v1750, v1721);
            v1725 = vorrq_s8(v1749, v1725);
            v1722 = vorrq_s8(v1748, v1722);
            v1720 = vorrq_s8(v1747, v1720);
            v1711 = vorrq_s8(v1746, v1711);
            v1710 = vorrq_s8(v1745, v1710);
            v1712 = vaddq_s32(v1712, v1687);
            v1726 = vaddq_s32(v1726, v1687);
            v1727 = vaddq_s32(v1727, v1687);
            v1728 = vaddq_s32(v1728, v1687);
            v1717 = vaddq_s32(v1717, v1688);
            v1716 = vaddq_s32(v1716, v1688);
            v1715 = vaddq_s32(v1715, v1688);
            v1714 = vaddq_s32(v1714, v1688);
            v1718 -= 16;
          }

          while (v1718);
          v1752 = vorrq_s8(vorrq_s8(vorrq_s8(v1710, v1722), vorrq_s8(v1720, v1724)), vorrq_s8(vorrq_s8(v1711, v1723), vorrq_s8(v1721, v1725)));
          v1325 = vorr_s8(*v1752.i8, *&vextq_s8(v1752, v1752, 8uLL));
          v1701 = vaddvq_s32(vaddq_s32(vaddq_s32(v1712, v1727), vaddq_s32(v1726, v1728)));
          if ((v1709 & 0x3FFFFFF0) != v1709)
          {
            goto LABEL_1022;
          }

LABEL_1023:
          *(a1 + 40) += v1702 - v1694;
          v1685 = v1701;
          v1689 = ((v1686 - 1) * v1692 + 256) >> 8;
          v1693 = v1325 - (v1689 << 56);
          if (v1325 < v1689 << 56)
          {
LABEL_1024:
            v1690 = 0;
            goto LABEL_992;
          }

LABEL_991:
          LODWORD(v1689) = *(a1 + 24) - v1689;
          v1690 = 1;
          v1325 = v1693;
LABEL_992:
          v1691 = vpx_norm[v1689];
          v1686 = v1689 << v1691;
          v1325 <<= v1691;
          v1685 -= v1691;
          *(a1 + 16) = v1325;
          *(a1 + 24) = v1689 << v1691;
          *(a1 + 28) = v1685;
          v1683 = vp9_intra_mode_tree[v1690 + v1683];
          if (v1683 <= 0)
          {
            v1537 = -v1683;
            v1825 = *(a1 + 13744);
            if (v1825)
            {
              ++*(v1825 + 40 * v2390 + 4 * -v1683);
            }

            v1826 = v2388;
LABEL_1142:
            v1826[1] = v1537;
LABEL_1143:
            LOBYTE(v1970) = 0;
            v2391 = v1537;
            v1971 = *(a2 + 5560) + 9 * v1537 + 36;
            v1972 = *(a1 + 24);
            v1973 = *(a1 + 28);
            v1974.i64[0] = 0x800000008;
            v1974.i64[1] = 0x800000008;
            v1975.i64[0] = 0x7F0000007FLL;
            v1975.i64[1] = 0x7F0000007FLL;
            while (2)
            {
              v1979 = *(v1971 + (v1970 >> 1));
              if ((v1973 & 0x80000000) == 0)
              {
                v1976 = ((v1972 - 1) * v1979 + 256) >> 8;
                v1980 = v1325 - (v1976 << 56);
                if (v1325 < v1976 << 56)
                {
LABEL_1177:
                  v1977 = 0;
LABEL_1145:
                  v1978 = vpx_norm[v1976];
                  v1972 = v1976 << v1978;
                  v1325 <<= v1978;
                  v1973 -= v1978;
                  *(a1 + 16) = v1325;
                  *(a1 + 24) = v1976 << v1978;
                  *(a1 + 28) = v1973;
                  v1970 = vp9_intra_mode_tree[v1977 + v1970];
                  if (v1970 <= 0)
                  {
                    v2041 = -v1970;
                    v2042 = *(a1 + 13744);
                    if (v2042)
                    {
                      v2043 = v2042 + 40 * v2391 + 4 * v2041;
                      ++*(v2043 + 160);
                    }

                    v2044 = v2388;
                    v2388[6] = v2041;
                    *(v2388 + 7) = 3;
                    v2388[9] = -1;
                    v12 = a2;
                    v2045 = v2373;
                    v1314 = v2387;
                    if (v2373 < 1)
                    {
                      return result;
                    }

                    goto LABEL_1442;
                  }

                  continue;
                }

LABEL_1144:
                LODWORD(v1976) = *(a1 + 24) - v1976;
                v1977 = 1;
                v1325 = v1980;
                goto LABEL_1145;
              }

              break;
            }

            v1981 = *(a1 + 40);
            v1982 = *(a1 + 32) - v1981;
            v1983 = *(a1 + 48);
            if (v1983)
            {
              if (v1982 >= 9)
              {
                v1984 = 9;
              }

              else
              {
                v1984 = *(a1 + 32) - v1981;
              }

              result = v1983(*(a1 + 56), v1981, a1 + 64, v1984);
              v1975.i64[0] = 0x7F0000007FLL;
              v1975.i64[1] = 0x7F0000007FLL;
              v1974.i64[0] = 0x800000008;
              v1974.i64[1] = 0x800000008;
              v1981 = (a1 + 64);
            }

            v1985 = 8 * v1982;
            v1986 = 48 - v1973;
            if (8 * v1982 >= 0x41)
            {
              v1987 = (v1986 & 0x7FFFFFF8) + 8;
              v1988 = v1987 + v1973;
              v1989 = (v1981 + (v1987 >> 3));
              v1325 = (bswap64(*v1981) >> (56 - (v1986 & 0xF8u)) << (v1986 & 7)) | *v2410;
              goto LABEL_1176;
            }

            v1990 = 56 - v1973 - v1985;
            if (v1990 < 0)
            {
              v1988 = v1973;
            }

            else
            {
              v1988 = v1973 + 0x40000000;
            }

            if (v1985)
            {
              v1991 = 1;
            }

            else
            {
              v1991 = v1990 <= -1;
            }

            v1992 = v1990 & ~(v1990 >> 31);
            if (!v1991 || v1986 < v1992)
            {
              v1989 = v1981;
            }

            else
            {
              v1994 = v1992 - 1;
              if (v1992 - 1 >= (40 - v1973))
              {
                v1994 = 40 - v1973;
              }

              v1995 = 47 - v1973 - v1994;
              if (v1995 < 0x78)
              {
                v1989 = v1981;
                goto LABEL_1175;
              }

              v1996 = (v1995 >> 3) + 1;
              v1997 = v1325;
              v1998 = 0uLL;
              v1999 = v1988;
              v2000 = vdupq_n_s32(v1986);
              v2001 = vaddq_s32(v2000, xmmword_273BC3230);
              v1989 = (v1981 + (v1996 & 0x3FFFFFF0));
              v2002 = vaddq_s32(v2000, xmmword_273BC3240);
              v1986 -= 8 * (v1996 & 0x3FFFFFF0);
              v2003 = vaddq_s32(v2000, xmmword_273BC3250);
              v2004 = vaddq_s32(v2000, xmmword_273BC3220);
              v2005 = v1996 & 0x3FFFFFF0;
              v2006 = v1981;
              v2007 = 0uLL;
              v2008 = 0uLL;
              v2009 = 0uLL;
              v2010 = 0uLL;
              v2011 = 0uLL;
              v2012 = 0uLL;
              v2013 = 0uLL;
              v2014 = 0uLL;
              v2015 = 0uLL;
              do
              {
                v2016 = *v2006++;
                v2017 = vmovl_high_u8(v2016);
                v2018 = vmovl_high_u16(v2017);
                v2019.i64[0] = v2018.u32[0];
                v2019.i64[1] = v2018.u32[1];
                v2020 = v2019;
                v2021 = vmovl_u16(*v2017.i8);
                v2019.i64[0] = v2021.u32[2];
                v2019.i64[1] = v2021.u32[3];
                v2022 = v2019;
                v2023 = vmovl_u8(*v2016.i8);
                v2024 = vmovl_high_u16(v2023);
                v2019.i64[0] = v2024.u32[2];
                v2019.i64[1] = v2024.u32[3];
                v2025 = v2019;
                v2019.i64[0] = v2018.u32[2];
                v2019.i64[1] = v2018.u32[3];
                v2026 = v2019;
                v2019.i64[0] = v2021.u32[0];
                v2019.i64[1] = v2021.u32[1];
                v2027 = v2019;
                v2019.i64[0] = v2024.u32[0];
                v2019.i64[1] = v2024.u32[1];
                v2028 = v2019;
                v2029 = vmovl_u16(*v2023.i8);
                v2019.i64[0] = v2029.u32[2];
                v2019.i64[1] = v2029.u32[3];
                v2030 = v2019;
                v2019.i64[0] = v2029.u32[0];
                v2019.i64[1] = v2029.u32[1];
                v2031 = v2019;
                v2019.i64[0] = v2004.u32[0];
                v2019.i64[1] = v2004.u32[1];
                v2032 = vshlq_u64(v2031, v2019);
                v2019.i64[0] = v2004.u32[2];
                v2019.i64[1] = v2004.u32[3];
                v2033 = vshlq_u64(v2030, v2019);
                v2019.i64[0] = v2003.u32[0];
                v2019.i64[1] = v2003.u32[1];
                v2034 = vshlq_u64(v2028, v2019);
                v2019.i64[0] = v2002.u32[0];
                v2019.i64[1] = v2002.u32[1];
                v2035 = vshlq_u64(v2027, v2019);
                v2019.i64[0] = v2001.u32[2];
                v2019.i64[1] = v2001.u32[3];
                v2036 = vshlq_u64(v2026, v2019);
                v2019.i64[0] = v2003.u32[2];
                v2019.i64[1] = v2003.u32[3];
                v2037 = vshlq_u64(v2025, v2019);
                v2019.i64[0] = v2002.u32[2];
                v2019.i64[1] = v2002.u32[3];
                v2038 = vshlq_u64(v2022, v2019);
                v2019.i64[0] = v2001.u32[0];
                v2019.i64[1] = v2001.u32[1];
                v2011 = vorrq_s8(vshlq_u64(v2020, v2019), v2011);
                v2010 = vorrq_s8(v2038, v2010);
                v2008 = vorrq_s8(v2037, v2008);
                v2012 = vorrq_s8(v2036, v2012);
                v2009 = vorrq_s8(v2035, v2009);
                v2007 = vorrq_s8(v2034, v2007);
                v1998 = vorrq_s8(v2033, v1998);
                v1997 = vorrq_s8(v2032, v1997);
                v1999 = vaddq_s32(v1999, v1974);
                v2013 = vaddq_s32(v2013, v1974);
                v2014 = vaddq_s32(v2014, v1974);
                v2015 = vaddq_s32(v2015, v1974);
                v2004 = vaddq_s32(v2004, v1975);
                v2003 = vaddq_s32(v2003, v1975);
                v2002 = vaddq_s32(v2002, v1975);
                v2001 = vaddq_s32(v2001, v1975);
                v2005 -= 16;
              }

              while (v2005);
              v2039 = vorrq_s8(vorrq_s8(vorrq_s8(v1997, v2009), vorrq_s8(v2007, v2011)), vorrq_s8(vorrq_s8(v1998, v2010), vorrq_s8(v2008, v2012)));
              v1325 = vorr_s8(*v2039.i8, *&vextq_s8(v2039, v2039, 8uLL));
              v1988 = vaddvq_s32(vaddq_s32(vaddq_s32(v1999, v2014), vaddq_s32(v2013, v2015)));
              if ((v1996 & 0x3FFFFFF0) != v1996)
              {
                do
                {
LABEL_1175:
                  v1988 += 8;
                  v2040 = *v1989;
                  v1989 = (v1989 + 1);
                  v1325 |= v2040 << v1986;
                  v1986 -= 8;
                }

                while (v1986 >= v1992);
              }
            }

LABEL_1176:
            *(a1 + 40) += v1989 - v1981;
            v1973 = v1988;
            v1976 = ((v1972 - 1) * v1979 + 256) >> 8;
            v1980 = v1325 - (v1976 << 56);
            if (v1325 < v1976 << 56)
            {
              goto LABEL_1177;
            }

            goto LABEL_1144;
          }
        }

        v1702 = v1694;
        do
        {
LABEL_1022:
          v1701 += 8;
          v1753 = *v1702;
          v1702 = (v1702 + 1);
          v1325 |= v1753 << v1699;
          v1699 -= 8;
        }

        while (v1699 >= v1705);
        goto LABEL_1023;
      }

      LOBYTE(v1394) = 0;
      v1395 = *(v12 + 5560);
      v1396 = *(a1 + 24);
      v1397 = *(a1 + 28);
      v1398 = a1 + 64;
      v1399.i64[0] = 0x800000008;
      v1399.i64[1] = 0x800000008;
      v1400.i64[0] = 0x7F0000007FLL;
      v1400.i64[1] = 0x7F0000007FLL;
      v1325 = *(a1 + 16);
      while (1)
      {
        v1404 = *(v1395 + (v1394 >> 1));
        if ((v1397 & 0x80000000) == 0)
        {
          v1401 = ((v1396 - 1) * v1404 + 256) >> 8;
          v1405 = v1325 - (v1401 << 56);
          if (v1325 < v1401 << 56)
          {
            goto LABEL_874;
          }

          goto LABEL_841;
        }

        v1406 = *(a1 + 40);
        v1407 = *(a1 + 32) - v1406;
        v1408 = *(a1 + 48);
        if (v1408)
        {
          if (v1407 >= 9)
          {
            v1409 = 9;
          }

          else
          {
            v1409 = *(a1 + 32) - v1406;
          }

          result = v1408(*(a1 + 56), v1406, v1398, v1409);
          v1400.i64[0] = 0x7F0000007FLL;
          v1400.i64[1] = 0x7F0000007FLL;
          v1399.i64[0] = 0x800000008;
          v1399.i64[1] = 0x800000008;
          v1406 = (a1 + 64);
        }

        v1410 = 8 * v1407;
        v1411 = 48 - v1397;
        if (8 * v1407 >= 0x41)
        {
          v1412 = (v1411 & 0x7FFFFFF8) + 8;
          v1413 = v1412 + v1397;
          v1414 = (v1406 + (v1412 >> 3));
          v1325 = (bswap64(*v1406) >> (56 - (v1411 & 0xF8u)) << (v1411 & 7)) | *v2410;
          goto LABEL_873;
        }

        v1415 = 56 - v1397 - v1410;
        if (v1415 < 0)
        {
          v1413 = v1397;
        }

        else
        {
          v1413 = v1397 + 0x40000000;
        }

        if (v1410)
        {
          v1416 = 1;
        }

        else
        {
          v1416 = v1415 <= -1;
        }

        v1417 = v1415 & ~(v1415 >> 31);
        if (!v1416 || v1411 < v1417)
        {
          v1414 = v1406;
          goto LABEL_873;
        }

        v1419 = v1417 - 1;
        if (v1417 - 1 >= (40 - v1397))
        {
          v1419 = 40 - v1397;
        }

        v1420 = 47 - v1397 - v1419;
        if (v1420 < 0x78)
        {
          break;
        }

        v1421 = (v1420 >> 3) + 1;
        v1422 = v1325;
        v1423 = 0uLL;
        v1424 = v1413;
        v1425 = vdupq_n_s32(v1411);
        v1426 = vaddq_s32(v1425, xmmword_273BC3230);
        v1414 = (v1406 + (v1421 & 0x3FFFFFF0));
        v1427 = vaddq_s32(v1425, xmmword_273BC3240);
        v1411 -= 8 * (v1421 & 0x3FFFFFF0);
        v1428 = vaddq_s32(v1425, xmmword_273BC3250);
        v1429 = vaddq_s32(v1425, xmmword_273BC3220);
        v1430 = v1421 & 0x3FFFFFF0;
        v1431 = v1406;
        v1432 = 0uLL;
        v1433 = 0uLL;
        v1434 = 0uLL;
        v1435 = 0uLL;
        v1436 = 0uLL;
        v1437 = 0uLL;
        v1438 = 0uLL;
        v1439 = 0uLL;
        v1440 = 0uLL;
        do
        {
          v1441 = *v1431++;
          v1442 = vmovl_high_u8(v1441);
          v1443 = vmovl_high_u16(v1442);
          v1444.i64[0] = v1443.u32[0];
          v1444.i64[1] = v1443.u32[1];
          v1445 = v1444;
          v1446 = vmovl_u16(*v1442.i8);
          v1444.i64[0] = v1446.u32[2];
          v1444.i64[1] = v1446.u32[3];
          v1447 = v1444;
          v1448 = vmovl_u8(*v1441.i8);
          v1449 = vmovl_high_u16(v1448);
          v1444.i64[0] = v1449.u32[2];
          v1444.i64[1] = v1449.u32[3];
          v1450 = v1444;
          v1444.i64[0] = v1443.u32[2];
          v1444.i64[1] = v1443.u32[3];
          v1451 = v1444;
          v1444.i64[0] = v1446.u32[0];
          v1444.i64[1] = v1446.u32[1];
          v1452 = v1444;
          v1444.i64[0] = v1449.u32[0];
          v1444.i64[1] = v1449.u32[1];
          v1453 = v1444;
          v1454 = vmovl_u16(*v1448.i8);
          v1444.i64[0] = v1454.u32[2];
          v1444.i64[1] = v1454.u32[3];
          v1455 = v1444;
          v1444.i64[0] = v1454.u32[0];
          v1444.i64[1] = v1454.u32[1];
          v1456 = v1444;
          v1444.i64[0] = v1429.u32[0];
          v1444.i64[1] = v1429.u32[1];
          v1457 = vshlq_u64(v1456, v1444);
          v1444.i64[0] = v1429.u32[2];
          v1444.i64[1] = v1429.u32[3];
          v1458 = vshlq_u64(v1455, v1444);
          v1444.i64[0] = v1428.u32[0];
          v1444.i64[1] = v1428.u32[1];
          v1459 = vshlq_u64(v1453, v1444);
          v1444.i64[0] = v1427.u32[0];
          v1444.i64[1] = v1427.u32[1];
          v1460 = vshlq_u64(v1452, v1444);
          v1444.i64[0] = v1426.u32[2];
          v1444.i64[1] = v1426.u32[3];
          v1461 = vshlq_u64(v1451, v1444);
          v1444.i64[0] = v1428.u32[2];
          v1444.i64[1] = v1428.u32[3];
          v1462 = vshlq_u64(v1450, v1444);
          v1444.i64[0] = v1427.u32[2];
          v1444.i64[1] = v1427.u32[3];
          v1463 = vshlq_u64(v1447, v1444);
          v1444.i64[0] = v1426.u32[0];
          v1444.i64[1] = v1426.u32[1];
          v1436 = vorrq_s8(vshlq_u64(v1445, v1444), v1436);
          v1435 = vorrq_s8(v1463, v1435);
          v1433 = vorrq_s8(v1462, v1433);
          v1437 = vorrq_s8(v1461, v1437);
          v1434 = vorrq_s8(v1460, v1434);
          v1432 = vorrq_s8(v1459, v1432);
          v1423 = vorrq_s8(v1458, v1423);
          v1422 = vorrq_s8(v1457, v1422);
          v1424 = vaddq_s32(v1424, v1399);
          v1438 = vaddq_s32(v1438, v1399);
          v1439 = vaddq_s32(v1439, v1399);
          v1440 = vaddq_s32(v1440, v1399);
          v1429 = vaddq_s32(v1429, v1400);
          v1428 = vaddq_s32(v1428, v1400);
          v1427 = vaddq_s32(v1427, v1400);
          v1426 = vaddq_s32(v1426, v1400);
          v1430 -= 16;
        }

        while (v1430);
        v1464 = vorrq_s8(vorrq_s8(vorrq_s8(v1422, v1434), vorrq_s8(v1432, v1436)), vorrq_s8(vorrq_s8(v1423, v1435), vorrq_s8(v1433, v1437)));
        v1325 = vorr_s8(*v1464.i8, *&vextq_s8(v1464, v1464, 8uLL));
        v1413 = vaddvq_s32(vaddq_s32(vaddq_s32(v1424, v1439), vaddq_s32(v1438, v1440)));
        if ((v1421 & 0x3FFFFFF0) != v1421)
        {
          goto LABEL_872;
        }

LABEL_873:
        *(a1 + 40) += v1414 - v1406;
        v1397 = v1413;
        v1401 = ((v1396 - 1) * v1404 + 256) >> 8;
        v1405 = v1325 - (v1401 << 56);
        if (v1325 < v1401 << 56)
        {
LABEL_874:
          v1402 = 0;
          goto LABEL_842;
        }

LABEL_841:
        LODWORD(v1401) = *(a1 + 24) - v1401;
        v1402 = 1;
        v1325 = v1405;
LABEL_842:
        v1403 = vpx_norm[v1401];
        v1396 = v1401 << v1403;
        v1325 <<= v1403;
        v1397 -= v1403;
        *(a1 + 16) = v1325;
        *(a1 + 24) = v1401 << v1403;
        *(a1 + 28) = v1397;
        v1394 = vp9_intra_mode_tree[v1402 + v1394];
        if (v1394 <= 0)
        {
          v1466 = -v1394;
          v1467 = *(a1 + 13744);
          if (v1467)
          {
            ++*(v1467 + 4 * -v1394);
            v1396 = *(a1 + 24);
            v1397 = *(a1 + 28);
          }

          LOBYTE(v1468) = 0;
          v2388[44] = v1466;
          v2388[20] = v1466;
          v1469 = *(a2 + 5560);
          v1470.i64[0] = 0x800000008;
          v1470.i64[1] = 0x800000008;
          v1471.i64[0] = 0x7F0000007FLL;
          v1471.i64[1] = 0x7F0000007FLL;
          while (1)
          {
            v1475 = *(v1469 + (v1468 >> 1));
            if ((v1397 & 0x80000000) == 0)
            {
              v1472 = ((v1396 - 1) * v1475 + 256) >> 8;
              v1476 = v1325 - (v1472 << 56);
              if (v1325 < v1472 << 56)
              {
                goto LABEL_911;
              }

              goto LABEL_878;
            }

            v1477 = *(a1 + 40);
            v1478 = *(a1 + 32) - v1477;
            v1479 = *(a1 + 48);
            if (v1479)
            {
              if (v1478 >= 9)
              {
                v1480 = 9;
              }

              else
              {
                v1480 = *(a1 + 32) - v1477;
              }

              result = v1479(*(a1 + 56), v1477, v1398, v1480);
              v1471.i64[0] = 0x7F0000007FLL;
              v1471.i64[1] = 0x7F0000007FLL;
              v1470.i64[0] = 0x800000008;
              v1470.i64[1] = 0x800000008;
              v1477 = (a1 + 64);
            }

            v1481 = 8 * v1478;
            v1482 = 48 - v1397;
            if (8 * v1478 >= 0x41)
            {
              v1483 = (v1482 & 0x7FFFFFF8) + 8;
              v1484 = v1483 + v1397;
              v1485 = (v1477 + (v1483 >> 3));
              v1325 = (bswap64(*v1477) >> (56 - (v1482 & 0xF8u)) << (v1482 & 7)) | *v2410;
              goto LABEL_910;
            }

            v1486 = 56 - v1397 - v1481;
            if (v1486 < 0)
            {
              v1484 = v1397;
            }

            else
            {
              v1484 = v1397 + 0x40000000;
            }

            if (v1481)
            {
              v1487 = 1;
            }

            else
            {
              v1487 = v1486 <= -1;
            }

            v1488 = v1486 & ~(v1486 >> 31);
            if (!v1487 || v1482 < v1488)
            {
              v1485 = v1477;
              goto LABEL_910;
            }

            v1490 = v1488 - 1;
            if (v1488 - 1 >= (40 - v1397))
            {
              v1490 = 40 - v1397;
            }

            v1491 = 47 - v1397 - v1490;
            if (v1491 < 0x78)
            {
              break;
            }

            v1492 = (v1491 >> 3) + 1;
            v1493 = v1325;
            v1494 = 0uLL;
            v1495 = v1484;
            v1496 = vdupq_n_s32(v1482);
            v1497 = vaddq_s32(v1496, xmmword_273BC3230);
            v1485 = (v1477 + (v1492 & 0x3FFFFFF0));
            v1498 = vaddq_s32(v1496, xmmword_273BC3240);
            v1482 -= 8 * (v1492 & 0x3FFFFFF0);
            v1499 = vaddq_s32(v1496, xmmword_273BC3250);
            v1500 = vaddq_s32(v1496, xmmword_273BC3220);
            v1501 = v1492 & 0x3FFFFFF0;
            v1502 = v1477;
            v1503 = 0uLL;
            v1504 = 0uLL;
            v1505 = 0uLL;
            v1506 = 0uLL;
            v1507 = 0uLL;
            v1508 = 0uLL;
            v1509 = 0uLL;
            v1510 = 0uLL;
            v1511 = 0uLL;
            do
            {
              v1512 = *v1502++;
              v1513 = vmovl_high_u8(v1512);
              v1514 = vmovl_high_u16(v1513);
              v1515.i64[0] = v1514.u32[0];
              v1515.i64[1] = v1514.u32[1];
              v1516 = v1515;
              v1517 = vmovl_u16(*v1513.i8);
              v1515.i64[0] = v1517.u32[2];
              v1515.i64[1] = v1517.u32[3];
              v1518 = v1515;
              v1519 = vmovl_u8(*v1512.i8);
              v1520 = vmovl_high_u16(v1519);
              v1515.i64[0] = v1520.u32[2];
              v1515.i64[1] = v1520.u32[3];
              v1521 = v1515;
              v1515.i64[0] = v1514.u32[2];
              v1515.i64[1] = v1514.u32[3];
              v1522 = v1515;
              v1515.i64[0] = v1517.u32[0];
              v1515.i64[1] = v1517.u32[1];
              v1523 = v1515;
              v1515.i64[0] = v1520.u32[0];
              v1515.i64[1] = v1520.u32[1];
              v1524 = v1515;
              v1525 = vmovl_u16(*v1519.i8);
              v1515.i64[0] = v1525.u32[2];
              v1515.i64[1] = v1525.u32[3];
              v1526 = v1515;
              v1515.i64[0] = v1525.u32[0];
              v1515.i64[1] = v1525.u32[1];
              v1527 = v1515;
              v1515.i64[0] = v1500.u32[0];
              v1515.i64[1] = v1500.u32[1];
              v1528 = vshlq_u64(v1527, v1515);
              v1515.i64[0] = v1500.u32[2];
              v1515.i64[1] = v1500.u32[3];
              v1529 = vshlq_u64(v1526, v1515);
              v1515.i64[0] = v1499.u32[0];
              v1515.i64[1] = v1499.u32[1];
              v1530 = vshlq_u64(v1524, v1515);
              v1515.i64[0] = v1498.u32[0];
              v1515.i64[1] = v1498.u32[1];
              v1531 = vshlq_u64(v1523, v1515);
              v1515.i64[0] = v1497.u32[2];
              v1515.i64[1] = v1497.u32[3];
              v1532 = vshlq_u64(v1522, v1515);
              v1515.i64[0] = v1499.u32[2];
              v1515.i64[1] = v1499.u32[3];
              v1533 = vshlq_u64(v1521, v1515);
              v1515.i64[0] = v1498.u32[2];
              v1515.i64[1] = v1498.u32[3];
              v1534 = vshlq_u64(v1518, v1515);
              v1515.i64[0] = v1497.u32[0];
              v1515.i64[1] = v1497.u32[1];
              v1507 = vorrq_s8(vshlq_u64(v1516, v1515), v1507);
              v1506 = vorrq_s8(v1534, v1506);
              v1504 = vorrq_s8(v1533, v1504);
              v1508 = vorrq_s8(v1532, v1508);
              v1505 = vorrq_s8(v1531, v1505);
              v1503 = vorrq_s8(v1530, v1503);
              v1494 = vorrq_s8(v1529, v1494);
              v1493 = vorrq_s8(v1528, v1493);
              v1495 = vaddq_s32(v1495, v1470);
              v1509 = vaddq_s32(v1509, v1470);
              v1510 = vaddq_s32(v1510, v1470);
              v1511 = vaddq_s32(v1511, v1470);
              v1500 = vaddq_s32(v1500, v1471);
              v1499 = vaddq_s32(v1499, v1471);
              v1498 = vaddq_s32(v1498, v1471);
              v1497 = vaddq_s32(v1497, v1471);
              v1501 -= 16;
            }

            while (v1501);
            v1535 = vorrq_s8(vorrq_s8(vorrq_s8(v1493, v1505), vorrq_s8(v1503, v1507)), vorrq_s8(vorrq_s8(v1494, v1506), vorrq_s8(v1504, v1508)));
            v1325 = vorr_s8(*v1535.i8, *&vextq_s8(v1535, v1535, 8uLL));
            v1484 = vaddvq_s32(vaddq_s32(vaddq_s32(v1495, v1510), vaddq_s32(v1509, v1511)));
            if ((v1492 & 0x3FFFFFF0) != v1492)
            {
              goto LABEL_909;
            }

LABEL_910:
            *(a1 + 40) += v1485 - v1477;
            v1397 = v1484;
            v1472 = ((v1396 - 1) * v1475 + 256) >> 8;
            v1476 = v1325 - (v1472 << 56);
            if (v1325 < v1472 << 56)
            {
LABEL_911:
              v1473 = 0;
              goto LABEL_879;
            }

LABEL_878:
            LODWORD(v1472) = *(a1 + 24) - v1472;
            v1473 = 1;
            v1325 = v1476;
LABEL_879:
            v1474 = vpx_norm[v1472];
            v1396 = v1472 << v1474;
            v1325 <<= v1474;
            v1397 -= v1474;
            *(a1 + 16) = v1325;
            *(a1 + 24) = v1472 << v1474;
            *(a1 + 28) = v1397;
            v1468 = vp9_intra_mode_tree[v1473 + v1468];
            if (v1468 <= 0)
            {
              v1537 = -v1468;
              v1538 = *(a1 + 13744);
              if (v1538)
              {
                ++*(v1538 + 4 * -v1468);
              }

              v2388[1] = v1537;
              v2388[56] = v1537;
              v2388[32] = v1537;
              goto LABEL_1143;
            }
          }

          v1485 = v1477;
          do
          {
LABEL_909:
            v1484 += 8;
            v1536 = *v1485;
            v1485 = (v1485 + 1);
            v1325 |= v1536 << v1482;
            v1482 -= 8;
          }

          while (v1482 >= v1488);
          goto LABEL_910;
        }
      }

      v1414 = v1406;
      do
      {
LABEL_872:
        v1413 += 8;
        v1465 = *v1414;
        v1414 = (v1414 + 1);
        v1325 |= v1465 << v1411;
        v1411 -= 8;
      }

      while (v1411 >= v1417);
      goto LABEL_873;
    }

    LOBYTE(v1539) = 0;
    v1540 = *(v12 + 5560);
    v1541 = *(a1 + 24);
    v1542 = *(a1 + 28);
    v1543 = a1 + 64;
    v1544.i64[0] = 0x800000008;
    v1544.i64[1] = 0x800000008;
    v1545.i64[0] = 0x7F0000007FLL;
    v1545.i64[1] = 0x7F0000007FLL;
    v1325 = *(a1 + 16);
    while (1)
    {
      v1549 = *(v1540 + (v1539 >> 1));
      if ((v1542 & 0x80000000) == 0)
      {
        v1546 = ((v1541 - 1) * v1549 + 256) >> 8;
        v1550 = v1325 - (v1546 << 56);
        if (v1325 < v1546 << 56)
        {
          goto LABEL_949;
        }

        goto LABEL_916;
      }

      v1551 = *(a1 + 40);
      v1552 = *(a1 + 32) - v1551;
      v1553 = *(a1 + 48);
      if (v1553)
      {
        if (v1552 >= 9)
        {
          v1554 = 9;
        }

        else
        {
          v1554 = *(a1 + 32) - v1551;
        }

        result = v1553(*(a1 + 56), v1551, v1543, v1554);
        v1545.i64[0] = 0x7F0000007FLL;
        v1545.i64[1] = 0x7F0000007FLL;
        v1544.i64[0] = 0x800000008;
        v1544.i64[1] = 0x800000008;
        v1551 = (a1 + 64);
      }

      v1555 = 8 * v1552;
      v1556 = 48 - v1542;
      if (8 * v1552 >= 0x41)
      {
        v1557 = (v1556 & 0x7FFFFFF8) + 8;
        v1558 = v1557 + v1542;
        v1559 = (v1551 + (v1557 >> 3));
        v1325 = (bswap64(*v1551) >> (56 - (v1556 & 0xF8u)) << (v1556 & 7)) | *v2410;
        goto LABEL_948;
      }

      v1560 = 56 - v1542 - v1555;
      if (v1560 < 0)
      {
        v1558 = v1542;
      }

      else
      {
        v1558 = v1542 + 0x40000000;
      }

      if (v1555)
      {
        v1561 = 1;
      }

      else
      {
        v1561 = v1560 <= -1;
      }

      v1562 = v1560 & ~(v1560 >> 31);
      if (!v1561 || v1556 < v1562)
      {
        v1559 = v1551;
        goto LABEL_948;
      }

      v1564 = v1562 - 1;
      if (v1562 - 1 >= (40 - v1542))
      {
        v1564 = 40 - v1542;
      }

      v1565 = 47 - v1542 - v1564;
      if (v1565 < 0x78)
      {
        break;
      }

      v1566 = (v1565 >> 3) + 1;
      v1567 = v1325;
      v1568 = 0uLL;
      v1569 = v1558;
      v1570 = vdupq_n_s32(v1556);
      v1571 = vaddq_s32(v1570, xmmword_273BC3230);
      v1559 = (v1551 + (v1566 & 0x3FFFFFF0));
      v1572 = vaddq_s32(v1570, xmmword_273BC3240);
      v1556 -= 8 * (v1566 & 0x3FFFFFF0);
      v1573 = vaddq_s32(v1570, xmmword_273BC3250);
      v1574 = vaddq_s32(v1570, xmmword_273BC3220);
      v1575 = v1566 & 0x3FFFFFF0;
      v1576 = v1551;
      v1577 = 0uLL;
      v1578 = 0uLL;
      v1579 = 0uLL;
      v1580 = 0uLL;
      v1581 = 0uLL;
      v1582 = 0uLL;
      v1583 = 0uLL;
      v1584 = 0uLL;
      v1585 = 0uLL;
      do
      {
        v1586 = *v1576++;
        v1587 = vmovl_high_u8(v1586);
        v1588 = vmovl_high_u16(v1587);
        v1589.i64[0] = v1588.u32[0];
        v1589.i64[1] = v1588.u32[1];
        v1590 = v1589;
        v1591 = vmovl_u16(*v1587.i8);
        v1589.i64[0] = v1591.u32[2];
        v1589.i64[1] = v1591.u32[3];
        v1592 = v1589;
        v1593 = vmovl_u8(*v1586.i8);
        v1594 = vmovl_high_u16(v1593);
        v1589.i64[0] = v1594.u32[2];
        v1589.i64[1] = v1594.u32[3];
        v1595 = v1589;
        v1589.i64[0] = v1588.u32[2];
        v1589.i64[1] = v1588.u32[3];
        v1596 = v1589;
        v1589.i64[0] = v1591.u32[0];
        v1589.i64[1] = v1591.u32[1];
        v1597 = v1589;
        v1589.i64[0] = v1594.u32[0];
        v1589.i64[1] = v1594.u32[1];
        v1598 = v1589;
        v1599 = vmovl_u16(*v1593.i8);
        v1589.i64[0] = v1599.u32[2];
        v1589.i64[1] = v1599.u32[3];
        v1600 = v1589;
        v1589.i64[0] = v1599.u32[0];
        v1589.i64[1] = v1599.u32[1];
        v1601 = v1589;
        v1589.i64[0] = v1574.u32[0];
        v1589.i64[1] = v1574.u32[1];
        v1602 = vshlq_u64(v1601, v1589);
        v1589.i64[0] = v1574.u32[2];
        v1589.i64[1] = v1574.u32[3];
        v1603 = vshlq_u64(v1600, v1589);
        v1589.i64[0] = v1573.u32[0];
        v1589.i64[1] = v1573.u32[1];
        v1604 = vshlq_u64(v1598, v1589);
        v1589.i64[0] = v1572.u32[0];
        v1589.i64[1] = v1572.u32[1];
        v1605 = vshlq_u64(v1597, v1589);
        v1589.i64[0] = v1571.u32[2];
        v1589.i64[1] = v1571.u32[3];
        v1606 = vshlq_u64(v1596, v1589);
        v1589.i64[0] = v1573.u32[2];
        v1589.i64[1] = v1573.u32[3];
        v1607 = vshlq_u64(v1595, v1589);
        v1589.i64[0] = v1572.u32[2];
        v1589.i64[1] = v1572.u32[3];
        v1608 = vshlq_u64(v1592, v1589);
        v1589.i64[0] = v1571.u32[0];
        v1589.i64[1] = v1571.u32[1];
        v1581 = vorrq_s8(vshlq_u64(v1590, v1589), v1581);
        v1580 = vorrq_s8(v1608, v1580);
        v1578 = vorrq_s8(v1607, v1578);
        v1582 = vorrq_s8(v1606, v1582);
        v1579 = vorrq_s8(v1605, v1579);
        v1577 = vorrq_s8(v1604, v1577);
        v1568 = vorrq_s8(v1603, v1568);
        v1567 = vorrq_s8(v1602, v1567);
        v1569 = vaddq_s32(v1569, v1544);
        v1583 = vaddq_s32(v1583, v1544);
        v1584 = vaddq_s32(v1584, v1544);
        v1585 = vaddq_s32(v1585, v1544);
        v1574 = vaddq_s32(v1574, v1545);
        v1573 = vaddq_s32(v1573, v1545);
        v1572 = vaddq_s32(v1572, v1545);
        v1571 = vaddq_s32(v1571, v1545);
        v1575 -= 16;
      }

      while (v1575);
      v1609 = vorrq_s8(vorrq_s8(vorrq_s8(v1567, v1579), vorrq_s8(v1577, v1581)), vorrq_s8(vorrq_s8(v1568, v1580), vorrq_s8(v1578, v1582)));
      v1325 = vorr_s8(*v1609.i8, *&vextq_s8(v1609, v1609, 8uLL));
      v1558 = vaddvq_s32(vaddq_s32(vaddq_s32(v1569, v1584), vaddq_s32(v1583, v1585)));
      if ((v1566 & 0x3FFFFFF0) != v1566)
      {
        goto LABEL_947;
      }

LABEL_948:
      *(a1 + 40) += v1559 - v1551;
      v1542 = v1558;
      v1546 = ((v1541 - 1) * v1549 + 256) >> 8;
      v1550 = v1325 - (v1546 << 56);
      if (v1325 < v1546 << 56)
      {
LABEL_949:
        v1547 = 0;
        goto LABEL_917;
      }

LABEL_916:
      LODWORD(v1546) = *(a1 + 24) - v1546;
      v1547 = 1;
      v1325 = v1550;
LABEL_917:
      v1548 = vpx_norm[v1546];
      v1541 = v1546 << v1548;
      v1325 <<= v1548;
      v1542 -= v1548;
      *(a1 + 16) = v1325;
      *(a1 + 24) = v1546 << v1548;
      *(a1 + 28) = v1542;
      v1539 = vp9_intra_mode_tree[v1547 + v1539];
      if (v1539 <= 0)
      {
        v1611 = -v1539;
        v1612 = *(a1 + 13744);
        if (v1612)
        {
          ++*(v1612 + 4 * -v1539);
          v1541 = *(a1 + 24);
          v1542 = *(a1 + 28);
        }

        LOBYTE(v1613) = 0;
        v2388[32] = v1611;
        v2388[20] = v1611;
        v1614 = *(a2 + 5560);
        v1615.i64[0] = 0x800000008;
        v1615.i64[1] = 0x800000008;
        v1616.i64[0] = 0x7F0000007FLL;
        v1616.i64[1] = 0x7F0000007FLL;
        while (1)
        {
          v1620 = *(v1614 + (v1613 >> 1));
          if ((v1542 & 0x80000000) == 0)
          {
            v1617 = ((v1541 - 1) * v1620 + 256) >> 8;
            v1621 = v1325 - (v1617 << 56);
            if (v1325 < v1617 << 56)
            {
              goto LABEL_986;
            }

            goto LABEL_953;
          }

          v1622 = *(a1 + 40);
          v1623 = *(a1 + 32) - v1622;
          v1624 = *(a1 + 48);
          if (v1624)
          {
            if (v1623 >= 9)
            {
              v1625 = 9;
            }

            else
            {
              v1625 = *(a1 + 32) - v1622;
            }

            result = v1624(*(a1 + 56), v1622, v1543, v1625);
            v1616.i64[0] = 0x7F0000007FLL;
            v1616.i64[1] = 0x7F0000007FLL;
            v1615.i64[0] = 0x800000008;
            v1615.i64[1] = 0x800000008;
            v1622 = (a1 + 64);
          }

          v1626 = 8 * v1623;
          v1627 = 48 - v1542;
          if (8 * v1623 >= 0x41)
          {
            v1628 = (v1627 & 0x7FFFFFF8) + 8;
            v1629 = v1628 + v1542;
            v1630 = (v1622 + (v1628 >> 3));
            v1325 = (bswap64(*v1622) >> (56 - (v1627 & 0xF8u)) << (v1627 & 7)) | *v2410;
            goto LABEL_985;
          }

          v1631 = 56 - v1542 - v1626;
          if (v1631 < 0)
          {
            v1629 = v1542;
          }

          else
          {
            v1629 = v1542 + 0x40000000;
          }

          if (v1626)
          {
            v1632 = 1;
          }

          else
          {
            v1632 = v1631 <= -1;
          }

          v1633 = v1631 & ~(v1631 >> 31);
          if (!v1632 || v1627 < v1633)
          {
            v1630 = v1622;
            goto LABEL_985;
          }

          v1635 = v1633 - 1;
          if (v1633 - 1 >= (40 - v1542))
          {
            v1635 = 40 - v1542;
          }

          v1636 = 47 - v1542 - v1635;
          if (v1636 < 0x78)
          {
            break;
          }

          v1637 = (v1636 >> 3) + 1;
          v1638 = v1325;
          v1639 = 0uLL;
          v1640 = v1629;
          v1641 = vdupq_n_s32(v1627);
          v1642 = vaddq_s32(v1641, xmmword_273BC3230);
          v1630 = (v1622 + (v1637 & 0x3FFFFFF0));
          v1643 = vaddq_s32(v1641, xmmword_273BC3240);
          v1627 -= 8 * (v1637 & 0x3FFFFFF0);
          v1644 = vaddq_s32(v1641, xmmword_273BC3250);
          v1645 = vaddq_s32(v1641, xmmword_273BC3220);
          v1646 = v1637 & 0x3FFFFFF0;
          v1647 = v1622;
          v1648 = 0uLL;
          v1649 = 0uLL;
          v1650 = 0uLL;
          v1651 = 0uLL;
          v1652 = 0uLL;
          v1653 = 0uLL;
          v1654 = 0uLL;
          v1655 = 0uLL;
          v1656 = 0uLL;
          do
          {
            v1657 = *v1647++;
            v1658 = vmovl_high_u8(v1657);
            v1659 = vmovl_high_u16(v1658);
            v1660.i64[0] = v1659.u32[0];
            v1660.i64[1] = v1659.u32[1];
            v1661 = v1660;
            v1662 = vmovl_u16(*v1658.i8);
            v1660.i64[0] = v1662.u32[2];
            v1660.i64[1] = v1662.u32[3];
            v1663 = v1660;
            v1664 = vmovl_u8(*v1657.i8);
            v1665 = vmovl_high_u16(v1664);
            v1660.i64[0] = v1665.u32[2];
            v1660.i64[1] = v1665.u32[3];
            v1666 = v1660;
            v1660.i64[0] = v1659.u32[2];
            v1660.i64[1] = v1659.u32[3];
            v1667 = v1660;
            v1660.i64[0] = v1662.u32[0];
            v1660.i64[1] = v1662.u32[1];
            v1668 = v1660;
            v1660.i64[0] = v1665.u32[0];
            v1660.i64[1] = v1665.u32[1];
            v1669 = v1660;
            v1670 = vmovl_u16(*v1664.i8);
            v1660.i64[0] = v1670.u32[2];
            v1660.i64[1] = v1670.u32[3];
            v1671 = v1660;
            v1660.i64[0] = v1670.u32[0];
            v1660.i64[1] = v1670.u32[1];
            v1672 = v1660;
            v1660.i64[0] = v1645.u32[0];
            v1660.i64[1] = v1645.u32[1];
            v1673 = vshlq_u64(v1672, v1660);
            v1660.i64[0] = v1645.u32[2];
            v1660.i64[1] = v1645.u32[3];
            v1674 = vshlq_u64(v1671, v1660);
            v1660.i64[0] = v1644.u32[0];
            v1660.i64[1] = v1644.u32[1];
            v1675 = vshlq_u64(v1669, v1660);
            v1660.i64[0] = v1643.u32[0];
            v1660.i64[1] = v1643.u32[1];
            v1676 = vshlq_u64(v1668, v1660);
            v1660.i64[0] = v1642.u32[2];
            v1660.i64[1] = v1642.u32[3];
            v1677 = vshlq_u64(v1667, v1660);
            v1660.i64[0] = v1644.u32[2];
            v1660.i64[1] = v1644.u32[3];
            v1678 = vshlq_u64(v1666, v1660);
            v1660.i64[0] = v1643.u32[2];
            v1660.i64[1] = v1643.u32[3];
            v1679 = vshlq_u64(v1663, v1660);
            v1660.i64[0] = v1642.u32[0];
            v1660.i64[1] = v1642.u32[1];
            v1652 = vorrq_s8(vshlq_u64(v1661, v1660), v1652);
            v1651 = vorrq_s8(v1679, v1651);
            v1649 = vorrq_s8(v1678, v1649);
            v1653 = vorrq_s8(v1677, v1653);
            v1650 = vorrq_s8(v1676, v1650);
            v1648 = vorrq_s8(v1675, v1648);
            v1639 = vorrq_s8(v1674, v1639);
            v1638 = vorrq_s8(v1673, v1638);
            v1640 = vaddq_s32(v1640, v1615);
            v1654 = vaddq_s32(v1654, v1615);
            v1655 = vaddq_s32(v1655, v1615);
            v1656 = vaddq_s32(v1656, v1615);
            v1645 = vaddq_s32(v1645, v1616);
            v1644 = vaddq_s32(v1644, v1616);
            v1643 = vaddq_s32(v1643, v1616);
            v1642 = vaddq_s32(v1642, v1616);
            v1646 -= 16;
          }

          while (v1646);
          v1680 = vorrq_s8(vorrq_s8(vorrq_s8(v1638, v1650), vorrq_s8(v1648, v1652)), vorrq_s8(vorrq_s8(v1639, v1651), vorrq_s8(v1649, v1653)));
          v1325 = vorr_s8(*v1680.i8, *&vextq_s8(v1680, v1680, 8uLL));
          v1629 = vaddvq_s32(vaddq_s32(vaddq_s32(v1640, v1655), vaddq_s32(v1654, v1656)));
          if ((v1637 & 0x3FFFFFF0) != v1637)
          {
            goto LABEL_984;
          }

LABEL_985:
          *(a1 + 40) += v1630 - v1622;
          v1542 = v1629;
          v1617 = ((v1541 - 1) * v1620 + 256) >> 8;
          v1621 = v1325 - (v1617 << 56);
          if (v1325 < v1617 << 56)
          {
LABEL_986:
            v1618 = 0;
            goto LABEL_954;
          }

LABEL_953:
          LODWORD(v1617) = *(a1 + 24) - v1617;
          v1618 = 1;
          v1325 = v1621;
LABEL_954:
          v1619 = vpx_norm[v1617];
          v1541 = v1617 << v1619;
          v1325 <<= v1619;
          v1542 -= v1619;
          *(a1 + 16) = v1325;
          *(a1 + 24) = v1617 << v1619;
          *(a1 + 28) = v1542;
          v1613 = vp9_intra_mode_tree[v1618 + v1613];
          if (v1613 <= 0)
          {
            v1537 = -v1613;
            v1682 = *(a1 + 13744);
            if (v1682)
            {
              ++*(v1682 + 4 * -v1613);
            }

            v2388[1] = v1537;
            v2388[56] = v1537;
            v2388[44] = v1537;
            goto LABEL_1143;
          }
        }

        v1630 = v1622;
        do
        {
LABEL_984:
          v1629 += 8;
          v1681 = *v1630;
          v1630 = (v1630 + 1);
          v1325 |= v1681 << v1627;
          v1627 -= 8;
        }

        while (v1627 >= v1633);
        goto LABEL_985;
      }
    }

    v1559 = v1551;
    do
    {
LABEL_947:
      v1558 += 8;
      v1610 = *v1559;
      v1559 = (v1559 + 1);
      v1325 |= v1610 << v1556;
      v1556 -= 8;
    }

    while (v1556 >= v1562);
    goto LABEL_948;
  }

  v2393 = *(v12 + 1952);
  v2413 = 0;
  v2400 = (&mv_ref_blocks + 64 * v1309);
  v2369 = (v14 + 8);
  v1310 = *(v12 + 5560);
  v1311 = *(a1 + 13744);
  v2396 = v1309;
  if (v13[1336])
  {
    v1312 = *v2389;
    if ((*(v12 + 4 * v1312 + 5512) & 4) != 0)
    {
      v1391 = v2369;
      *v2369 = *(v12 + 8 * v1312 + 5452);
      v1392 = -1;
      v1393 = 1;
      v1314 = v2387;
      goto LABEL_1228;
    }
  }

  v1313 = *(v12 + 5552);
  v1314 = v2387;
  if (v1313 == 2)
  {
    v1315 = *(a1 + 13792);
    v1316 = *(a1 + 13784);
    if (v1315 && v1316)
    {
      v1317 = *(v1316 + 9);
      if (*(v1315 + 9) <= 0)
      {
        v2046 = *(v1315 + 8);
        v2047 = v13[1452];
        if (v1317 <= 0)
        {
          v1318 = (v2046 == v2047) ^ (*(v1316 + 8) == v2047);
          goto LABEL_1191;
        }

        if (v2046 == v2047)
        {
          goto LABEL_1187;
        }

        v2048 = v2046;
      }

      else
      {
        if (v1317 > 0)
        {
          v1318 = 4;
LABEL_1191:
          v2049 = *(a1 + 28);
          v2050 = ((*(a1 + 24) - 1) * *(v1310 + v1318 + 1935) + 256) >> 8;
          if (v2049 < 0)
          {
            vpx_reader_fill(v2410);
            v2049 = *(a1 + 28);
          }

          v2051 = *v2410;
          v2052 = *v2410 - (v2050 << 56);
          if (*v2410 >= v2050 << 56)
          {
            LODWORD(v2050) = *(a1 + 24) - v2050;
            v1313 = 1;
            v2051 = v2052;
          }

          else
          {
            v1313 = 0;
          }

          v2053 = vpx_norm[v2050];
          *(a1 + 16) = v2051 << v2053;
          *(a1 + 24) = v2050 << v2053;
          *(a1 + 28) = v2049 - v2053;
          v2054 = *(a1 + 13744);
          if (v2054)
          {
            v2055 = v2054 + 8 * v1318 + 4 * v1313;
            ++*(v2055 + 12528);
          }

          goto LABEL_1198;
        }

        v2048 = *(v1316 + 8);
        if (v2048 == v13[1452])
        {
          goto LABEL_1187;
        }

        v2048 = v2048;
      }

      v1318 = (v2048 > 0) ^ 3;
      goto LABEL_1191;
    }

    if (!(v1315 | v1316))
    {
      v1318 = 1;
      goto LABEL_1191;
    }

    if (v1315)
    {
      v1316 = *(a1 + 13792);
    }

    if (*(v1316 + 9) <= 0)
    {
      v1318 = *(v1316 + 8) == v13[1452];
      goto LABEL_1191;
    }

LABEL_1187:
    v1318 = 3;
    goto LABEL_1191;
  }

LABEL_1198:
  if (v1313)
  {
    if (v1313 != 1)
    {
      goto LABEL_1229;
    }

    v2056 = *(v12 + 4 * v13[1452] + 5364);
    pred_context_comp_ref_p = vp9_get_pred_context_comp_ref_p(v12 + 656, a1 + 13328);
    v2058 = *(a1 + 28);
    v2059 = ((*(a1 + 24) - 1) * *(v1310 + pred_context_comp_ref_p + 1950) + 256) >> 8;
    if (v2058 < 0)
    {
      vpx_reader_fill(v2410);
      v2058 = *(a1 + 28);
    }

    v2060 = *v2410;
    v2061 = *v2410 - (v2059 << 56);
    if (*v2410 >= v2059 << 56)
    {
      LODWORD(v2059) = *(a1 + 24) - v2059;
      v2062 = 1;
      v2060 = v2061;
    }

    else
    {
      v2062 = 0;
    }

    v2071 = vpx_norm[v2059];
    *(a1 + 16) = v2060 << v2071;
    *(a1 + 24) = v2059 << v2071;
    *(a1 + 28) = v2058 - v2071;
    if (v1311)
    {
      ++*(v1311 + 8 * pred_context_comp_ref_p + 4 * v2062 + 12648);
    }

    v1391 = v2369;
    v2369[v2056] = v13[1452];
    v1392 = *(v12 + v2062 + 5549);
    v1393 = v2056 == 0;
    LODWORD(v1309) = v2396;
  }

  else
  {
    pred_context_single_ref_p1 = vp9_get_pred_context_single_ref_p1(a1 + 13328);
    v2064 = v1310 + 1940;
    v2065 = *(a1 + 28);
    v2066 = ((*(a1 + 24) - 1) * *(v2064 + 2 * pred_context_single_ref_p1) + 256) >> 8;
    if (v2065 < 0)
    {
      vpx_reader_fill(v2410);
      v2065 = *(a1 + 28);
    }

    v2067 = *v2410;
    v2068 = v2066 << 56;
    v2069 = *v2410 - (v2066 << 56);
    if (*v2410 >= v2066 << 56)
    {
      LODWORD(v2066) = *(a1 + 24) - v2066;
      v2070 = 1;
    }

    else
    {
      v2070 = 0;
      v2069 = *v2410;
    }

    v2072 = vpx_norm[v2066];
    *(a1 + 16) = v2069 << v2072;
    *(a1 + 24) = v2066 << v2072;
    *(a1 + 28) = v2065 - v2072;
    if (v1311)
    {
      v2073 = v1311 + 16 * pred_context_single_ref_p1 + 4 * v2070;
      ++*(v2073 + 12568);
    }

    if (v2067 >= v2068)
    {
      pred_context_single_ref_p2 = vp9_get_pred_context_single_ref_p2(a1 + 13328);
      v2076 = *(a1 + 28);
      v2077 = ((*(a1 + 24) - 1) * *(v2064 + 2 * pred_context_single_ref_p2 + 1) + 256) >> 8;
      if (v2076 < 0)
      {
        vpx_reader_fill(v2410);
        v2076 = *(a1 + 28);
      }

      v2078 = *v2410;
      v2079 = v2077 << 56;
      v2080 = *v2410 - (v2077 << 56);
      if (*v2410 >= v2077 << 56)
      {
        LODWORD(v2077) = *(a1 + 24) - v2077;
        v2081 = 1;
      }

      else
      {
        v2081 = 0;
        v2080 = *v2410;
      }

      v2082 = vpx_norm[v2077];
      *(a1 + 16) = v2080 << v2082;
      *(a1 + 24) = v2077 << v2082;
      *(a1 + 28) = v2076 - v2082;
      if (v1311)
      {
        v2083 = v1311 + 16 * pred_context_single_ref_p2 + 4 * v2081;
        ++*(v2083 + 12576);
      }

      if (v2078 < v2079)
      {
        v2074 = 2;
      }

      else
      {
        v2074 = 3;
      }
    }

    else
    {
      v2074 = 1;
    }

    v1391 = v2369;
    *v2369 = v2074;
    v1392 = -1;
    v1393 = 1;
  }

LABEL_1228:
  v1391[v1393] = v1392;
LABEL_1229:
  v2044 = v2388;
  v2084 = v2388[9];
  v2382 = v2084 > 0;
  if (*v2400 + a3 < 0)
  {
    v2085 = 0;
    goto LABEL_1236;
  }

  v2085 = 0;
  if (*v2400 + a3 >= *(v12 + 1968) || (v2086 = v2400[1], v2086 + a4 < *(a1 + 13760)))
  {
LABEL_1236:
    v2087 = v2400[2];
    v2088 = v2087 + a3;
    if (v2087 + a3 < 0)
    {
      goto LABEL_1242;
    }

    goto LABEL_1237;
  }

  if (v2086 + a4 >= *(a1 + 13764))
  {
    v2085 = 0;
    v2087 = v2400[2];
    v2088 = v2087 + a3;
    if (v2087 + a3 < 0)
    {
      goto LABEL_1242;
    }

LABEL_1237:
    if (v2088 < *(v12 + 1968))
    {
      v2089 = v2400[3];
      if (v2089 + a4 >= *(a1 + 13760) && v2089 + a4 < *(a1 + 13764))
      {
        v2085 += mode_2_counter[*(*(*(a1 + 13776) + 8 * (v2089 + *(a1 + 13768) * v2087)) + 1)];
      }
    }

    goto LABEL_1242;
  }

  v2085 = mode_2_counter[*(*(*(a1 + 13776) + 8 * (v2086 + *(a1 + 13768) * *v2400)) + 1)];
  v2087 = v2400[2];
  v2088 = v2087 + a3;
  if (v2087 + a3 >= 0)
  {
    goto LABEL_1237;
  }

LABEL_1242:
  v2090 = counter_to_context[4 * v2085];
  if (v13[1336] && (*(v12 + 4 * *v2389 + 5512) & 8) != 0)
  {
    v2388[1] = 12;
    v2091 = v2393;
    if (v1309 > 2)
    {
      goto LABEL_1286;
    }

    result = vpx_internal_error(*(a1 + 13968), 5, "Invalid usage of segment feature on small blocks");
    v2045 = v2373;
    if (v2373 < 1)
    {
      return result;
    }

    goto LABEL_1442;
  }

  v2091 = v2393;
  if (v1309 < 3)
  {
    goto LABEL_1286;
  }

  v2385 = v2388[9];
  LOBYTE(v2092) = 0;
  v2379 = counter_to_context[4 * v2085];
  v2093 = *(v12 + 5560) + 3 * v2090 + 1910;
  v2095 = *(a1 + 24);
  v2094 = *(a1 + 28);
  v2096 = *(a1 + 16);
  v2097.i64[0] = 0x800000008;
  v2097.i64[1] = 0x800000008;
  v2098.i64[0] = 0x7F0000007FLL;
  v2098.i64[1] = 0x7F0000007FLL;
  do
  {
    v2102 = *(v2093 + (v2092 >> 1));
    if ((v2094 & 0x80000000) == 0)
    {
      v2099 = ((v2095 - 1) * v2102 + 256) >> 8;
      v2103 = v2096 - (v2099 << 56);
      if (v2096 >= v2099 << 56)
      {
        goto LABEL_1246;
      }

      goto LABEL_1279;
    }

    v2104 = *(a1 + 40);
    v2105 = *(a1 + 32) - v2104;
    v2106 = *(a1 + 48);
    if (v2106)
    {
      if (v2105 >= 9)
      {
        v2107 = 9;
      }

      else
      {
        v2107 = *(a1 + 32) - v2104;
      }

      v2106(*(a1 + 56), v2104, a1 + 64, v2107);
      v2098.i64[0] = 0x7F0000007FLL;
      v2098.i64[1] = 0x7F0000007FLL;
      v2097.i64[0] = 0x800000008;
      v2097.i64[1] = 0x800000008;
      v2104 = (a1 + 64);
    }

    v2108 = 8 * v2105;
    v2109 = 48 - v2094;
    if (8 * v2105 >= 0x41)
    {
      v2110 = (v2109 & 0x7FFFFFF8) + 8;
      v2111 = v2110 + v2094;
      v2112 = (v2104 + (v2110 >> 3));
      v2096 = (bswap64(*v2104) >> (56 - (v2109 & 0xF8u)) << (v2109 & 7)) | *v2410;
      goto LABEL_1278;
    }

    v2113 = 56 - v2094 - v2108;
    if (v2113 < 0)
    {
      v2111 = v2094;
    }

    else
    {
      v2111 = v2094 + 0x40000000;
    }

    if (v2108)
    {
      v2114 = 1;
    }

    else
    {
      v2114 = v2113 <= -1;
    }

    v2115 = v2113 & ~(v2113 >> 31);
    if (!v2114 || v2109 < v2115)
    {
      v2112 = v2104;
      goto LABEL_1278;
    }

    v2117 = v2115 - 1;
    if (v2115 - 1 >= (40 - v2094))
    {
      v2117 = 40 - v2094;
    }

    v2118 = 47 - v2094 - v2117;
    if (v2118 < 0x78)
    {
      v2112 = v2104;
      do
      {
LABEL_1277:
        v2111 += 8;
        v2163 = *v2112;
        v2112 = (v2112 + 1);
        v2096 |= v2163 << v2109;
        v2109 -= 8;
      }

      while (v2109 >= v2115);
      goto LABEL_1278;
    }

    v2119 = (v2118 >> 3) + 1;
    v2120 = v2096;
    v2121 = 0uLL;
    v2122 = v2111;
    v2123 = vdupq_n_s32(v2109);
    v2124 = vaddq_s32(v2123, xmmword_273BC3230);
    v2112 = (v2104 + (v2119 & 0x3FFFFFF0));
    v2125 = vaddq_s32(v2123, xmmword_273BC3240);
    v2109 -= 8 * (v2119 & 0x3FFFFFF0);
    v2126 = vaddq_s32(v2123, xmmword_273BC3250);
    v2127 = vaddq_s32(v2123, xmmword_273BC3220);
    v2128 = v2119 & 0x3FFFFFF0;
    v2129 = v2104;
    v2130 = 0uLL;
    v2131 = 0uLL;
    v2132 = 0uLL;
    v2133 = 0uLL;
    v2134 = 0uLL;
    v2135 = 0uLL;
    v2136 = 0uLL;
    v2137 = 0uLL;
    v2138 = 0uLL;
    do
    {
      v2139 = *v2129++;
      v2140 = vmovl_high_u8(v2139);
      v2141 = vmovl_high_u16(v2140);
      v2142.i64[0] = v2141.u32[0];
      v2142.i64[1] = v2141.u32[1];
      v2143 = v2142;
      v2144 = vmovl_u16(*v2140.i8);
      v2142.i64[0] = v2144.u32[2];
      v2142.i64[1] = v2144.u32[3];
      v2145 = v2142;
      v2146 = vmovl_u8(*v2139.i8);
      v2147 = vmovl_high_u16(v2146);
      v2142.i64[0] = v2147.u32[2];
      v2142.i64[1] = v2147.u32[3];
      v2148 = v2142;
      v2142.i64[0] = v2141.u32[2];
      v2142.i64[1] = v2141.u32[3];
      v2149 = v2142;
      v2142.i64[0] = v2144.u32[0];
      v2142.i64[1] = v2144.u32[1];
      v2150 = v2142;
      v2142.i64[0] = v2147.u32[0];
      v2142.i64[1] = v2147.u32[1];
      v2151 = v2142;
      v2152 = vmovl_u16(*v2146.i8);
      v2142.i64[0] = v2152.u32[2];
      v2142.i64[1] = v2152.u32[3];
      v2153 = v2142;
      v2142.i64[0] = v2152.u32[0];
      v2142.i64[1] = v2152.u32[1];
      v2154 = v2142;
      v2142.i64[0] = v2127.u32[0];
      v2142.i64[1] = v2127.u32[1];
      v2155 = vshlq_u64(v2154, v2142);
      v2142.i64[0] = v2127.u32[2];
      v2142.i64[1] = v2127.u32[3];
      v2156 = vshlq_u64(v2153, v2142);
      v2142.i64[0] = v2126.u32[0];
      v2142.i64[1] = v2126.u32[1];
      v2157 = vshlq_u64(v2151, v2142);
      v2142.i64[0] = v2125.u32[0];
      v2142.i64[1] = v2125.u32[1];
      v2158 = vshlq_u64(v2150, v2142);
      v2142.i64[0] = v2124.u32[2];
      v2142.i64[1] = v2124.u32[3];
      v2159 = vshlq_u64(v2149, v2142);
      v2142.i64[0] = v2126.u32[2];
      v2142.i64[1] = v2126.u32[3];
      v2160 = vshlq_u64(v2148, v2142);
      v2142.i64[0] = v2125.u32[2];
      v2142.i64[1] = v2125.u32[3];
      v2161 = vshlq_u64(v2145, v2142);
      v2142.i64[0] = v2124.u32[0];
      v2142.i64[1] = v2124.u32[1];
      v2134 = vorrq_s8(vshlq_u64(v2143, v2142), v2134);
      v2133 = vorrq_s8(v2161, v2133);
      v2131 = vorrq_s8(v2160, v2131);
      v2135 = vorrq_s8(v2159, v2135);
      v2132 = vorrq_s8(v2158, v2132);
      v2130 = vorrq_s8(v2157, v2130);
      v2121 = vorrq_s8(v2156, v2121);
      v2120 = vorrq_s8(v2155, v2120);
      v2122 = vaddq_s32(v2122, v2097);
      v2136 = vaddq_s32(v2136, v2097);
      v2137 = vaddq_s32(v2137, v2097);
      v2138 = vaddq_s32(v2138, v2097);
      v2127 = vaddq_s32(v2127, v2098);
      v2126 = vaddq_s32(v2126, v2098);
      v2125 = vaddq_s32(v2125, v2098);
      v2124 = vaddq_s32(v2124, v2098);
      v2128 -= 16;
    }

    while (v2128);
    v2162 = vorrq_s8(vorrq_s8(vorrq_s8(v2120, v2132), vorrq_s8(v2130, v2134)), vorrq_s8(vorrq_s8(v2121, v2133), vorrq_s8(v2131, v2135)));
    v2096 = vorr_s8(*v2162.i8, *&vextq_s8(v2162, v2162, 8uLL));
    v2111 = vaddvq_s32(vaddq_s32(vaddq_s32(v2122, v2137), vaddq_s32(v2136, v2138)));
    if ((v2119 & 0x3FFFFFF0) != v2119)
    {
      goto LABEL_1277;
    }

LABEL_1278:
    *(a1 + 40) += v2112 - v2104;
    v2094 = v2111;
    v2099 = ((v2095 - 1) * v2102 + 256) >> 8;
    v2103 = v2096 - (v2099 << 56);
    if (v2096 >= v2099 << 56)
    {
LABEL_1246:
      LODWORD(v2099) = *(a1 + 24) - v2099;
      v2100 = 1;
      v2096 = v2103;
      goto LABEL_1247;
    }

LABEL_1279:
    v2100 = 0;
LABEL_1247:
    v2091 = v2393;
    v2101 = vpx_norm[v2099];
    v2095 = v2099 << v2101;
    v2096 <<= v2101;
    v2094 -= v2101;
    *(a1 + 16) = v2096;
    *(a1 + 24) = v2099 << v2101;
    *(a1 + 28) = v2094;
    v2092 = vp9_inter_mode_tree[v2100 + v2092];
  }

  while (v2092 > 0);
  v2164 = *(a1 + 13744);
  LODWORD(v2090) = v2379;
  if (v2164)
  {
    v2165 = v2164 + 16 * v2379 + 4 * -v2092;
    ++*(v2165 + 12384);
  }

  v2044 = v2388;
  v2388[1] = 10 - v2092;
  v12 = a2;
  v1314 = v2387;
  LODWORD(v1309) = v2396;
  v2084 = v2385;
LABEL_1286:
  v2166 = *(v12 + 2212);
  if (v2166 != 4)
  {
    goto LABEL_1337;
  }

  v2167 = *(a1 + 13784);
  if (v2167)
  {
    v2168 = *(v2167 + 7);
    v2169 = *(a1 + 13792);
    v2386 = v2084;
    v2380 = v2090;
    if (v2169)
    {
      goto LABEL_1289;
    }

LABEL_1291:
    v2170 = 3;
  }

  else
  {
    v2168 = 3;
    v2169 = *(a1 + 13792);
    v2386 = v2084;
    v2380 = v2090;
    if (!v2169)
    {
      goto LABEL_1291;
    }

LABEL_1289:
    v2170 = *(v2169 + 7);
  }

  LOBYTE(v2171) = 0;
  if (v2170 == 3)
  {
    v2172 = v2168;
  }

  else
  {
    v2172 = 3;
  }

  if (v2168 == 3)
  {
    v2172 = v2170;
  }

  if (v2168 == v2170)
  {
    v2172 = v2168;
  }

  v2377 = v2172;
  v2173 = *(v12 + 5560) + 2 * v2172 + 1902;
  v2175 = *(a1 + 24);
  v2174 = *(a1 + 28);
  v2176 = *(a1 + 16);
  v2177.i64[0] = 0x800000008;
  v2177.i64[1] = 0x800000008;
  v2178.i64[0] = 0x7F0000007FLL;
  v2178.i64[1] = 0x7F0000007FLL;
  while (2)
  {
    v2182 = *(v2173 + (v2171 >> 1));
    if ((v2174 & 0x80000000) != 0)
    {
      v2184 = *(a1 + 40);
      v2185 = *(a1 + 32) - v2184;
      v2186 = *(a1 + 48);
      if (v2186)
      {
        if (v2185 >= 9)
        {
          v2187 = 9;
        }

        else
        {
          v2187 = *(a1 + 32) - v2184;
        }

        v2186(*(a1 + 56), v2184, a1 + 64, v2187);
        v2178.i64[0] = 0x7F0000007FLL;
        v2178.i64[1] = 0x7F0000007FLL;
        v2177.i64[0] = 0x800000008;
        v2177.i64[1] = 0x800000008;
        v2184 = (a1 + 64);
      }

      v2188 = 8 * v2185;
      v2189 = 48 - v2174;
      if (8 * v2185 >= 0x41)
      {
        v2190 = (v2189 & 0x7FFFFFF8) + 8;
        v2191 = v2190 + v2174;
        v2192 = (v2184 + (v2190 >> 3));
        v2176 = (bswap64(*v2184) >> (56 - (v2189 & 0xF8u)) << (v2189 & 7)) | *v2410;
        goto LABEL_1332;
      }

      v2193 = 56 - v2174 - v2188;
      if (v2193 < 0)
      {
        v2191 = v2174;
      }

      else
      {
        v2191 = v2174 + 0x40000000;
      }

      if (v2188)
      {
        v2194 = 1;
      }

      else
      {
        v2194 = v2193 <= -1;
      }

      v2195 = v2193 & ~(v2193 >> 31);
      if (!v2194 || v2189 < v2195)
      {
        v2192 = v2184;
        goto LABEL_1332;
      }

      v2197 = v2195 - 1;
      if (v2195 - 1 >= (40 - v2174))
      {
        v2197 = 40 - v2174;
      }

      v2198 = 47 - v2174 - v2197;
      if (v2198 >= 0x78)
      {
        v2199 = (v2198 >> 3) + 1;
        v2200 = v2176;
        v2201 = 0uLL;
        v2202 = v2191;
        v2203 = vdupq_n_s32(v2189);
        v2204 = vaddq_s32(v2203, xmmword_273BC3230);
        v2192 = (v2184 + (v2199 & 0x3FFFFFF0));
        v2205 = vaddq_s32(v2203, xmmword_273BC3240);
        v2189 -= 8 * (v2199 & 0x3FFFFFF0);
        v2206 = vaddq_s32(v2203, xmmword_273BC3250);
        v2207 = vaddq_s32(v2203, xmmword_273BC3220);
        v2208 = v2199 & 0x3FFFFFF0;
        v2209 = v2184;
        v2210 = 0uLL;
        v2211 = 0uLL;
        v2212 = 0uLL;
        v2213 = 0uLL;
        v2214 = 0uLL;
        v2215 = 0uLL;
        v2216 = 0uLL;
        v2217 = 0uLL;
        v2218 = 0uLL;
        do
        {
          v2219 = *v2209++;
          v2220 = vmovl_high_u8(v2219);
          v2221 = vmovl_high_u16(v2220);
          v2222.i64[0] = v2221.u32[0];
          v2222.i64[1] = v2221.u32[1];
          v2223 = v2222;
          v2224 = vmovl_u16(*v2220.i8);
          v2222.i64[0] = v2224.u32[2];
          v2222.i64[1] = v2224.u32[3];
          v2225 = v2222;
          v2226 = vmovl_u8(*v2219.i8);
          v2227 = vmovl_high_u16(v2226);
          v2222.i64[0] = v2227.u32[2];
          v2222.i64[1] = v2227.u32[3];
          v2228 = v2222;
          v2222.i64[0] = v2221.u32[2];
          v2222.i64[1] = v2221.u32[3];
          v2229 = v2222;
          v2222.i64[0] = v2224.u32[0];
          v2222.i64[1] = v2224.u32[1];
          v2230 = v2222;
          v2222.i64[0] = v2227.u32[0];
          v2222.i64[1] = v2227.u32[1];
          v2231 = v2222;
          v2232 = vmovl_u16(*v2226.i8);
          v2222.i64[0] = v2232.u32[2];
          v2222.i64[1] = v2232.u32[3];
          v2233 = v2222;
          v2222.i64[0] = v2232.u32[0];
          v2222.i64[1] = v2232.u32[1];
          v2234 = v2222;
          v2222.i64[0] = v2207.u32[0];
          v2222.i64[1] = v2207.u32[1];
          v2235 = vshlq_u64(v2234, v2222);
          v2222.i64[0] = v2207.u32[2];
          v2222.i64[1] = v2207.u32[3];
          v2236 = vshlq_u64(v2233, v2222);
          v2222.i64[0] = v2206.u32[0];
          v2222.i64[1] = v2206.u32[1];
          v2237 = vshlq_u64(v2231, v2222);
          v2222.i64[0] = v2205.u32[0];
          v2222.i64[1] = v2205.u32[1];
          v2238 = vshlq_u64(v2230, v2222);
          v2222.i64[0] = v2204.u32[2];
          v2222.i64[1] = v2204.u32[3];
          v2239 = vshlq_u64(v2229, v2222);
          v2222.i64[0] = v2206.u32[2];
          v2222.i64[1] = v2206.u32[3];
          v2240 = vshlq_u64(v2228, v2222);
          v2222.i64[0] = v2205.u32[2];
          v2222.i64[1] = v2205.u32[3];
          v2241 = vshlq_u64(v2225, v2222);
          v2222.i64[0] = v2204.u32[0];
          v2222.i64[1] = v2204.u32[1];
          v2214 = vorrq_s8(vshlq_u64(v2223, v2222), v2214);
          v2213 = vorrq_s8(v2241, v2213);
          v2211 = vorrq_s8(v2240, v2211);
          v2215 = vorrq_s8(v2239, v2215);
          v2212 = vorrq_s8(v2238, v2212);
          v2210 = vorrq_s8(v2237, v2210);
          v2201 = vorrq_s8(v2236, v2201);
          v2200 = vorrq_s8(v2235, v2200);
          v2202 = vaddq_s32(v2202, v2177);
          v2216 = vaddq_s32(v2216, v2177);
          v2217 = vaddq_s32(v2217, v2177);
          v2218 = vaddq_s32(v2218, v2177);
          v2207 = vaddq_s32(v2207, v2178);
          v2206 = vaddq_s32(v2206, v2178);
          v2205 = vaddq_s32(v2205, v2178);
          v2204 = vaddq_s32(v2204, v2178);
          v2208 -= 16;
        }

        while (v2208);
        v2242 = vorrq_s8(vorrq_s8(vorrq_s8(v2200, v2212), vorrq_s8(v2210, v2214)), vorrq_s8(vorrq_s8(v2201, v2213), vorrq_s8(v2211, v2215)));
        v2176 = vorr_s8(*v2242.i8, *&vextq_s8(v2242, v2242, 8uLL));
        v2191 = vaddvq_s32(vaddq_s32(vaddq_s32(v2202, v2217), vaddq_s32(v2216, v2218)));
        if ((v2199 & 0x3FFFFFF0) == v2199)
        {
LABEL_1332:
          *(a1 + 40) += v2192 - v2184;
          v2174 = v2191;
          v2179 = ((v2175 - 1) * v2182 + 256) >> 8;
          v2183 = v2176 - (v2179 << 56);
          if (v2176 < v2179 << 56)
          {
            goto LABEL_1333;
          }

          goto LABEL_1300;
        }
      }

      else
      {
        v2192 = v2184;
      }

      do
      {
        v2191 += 8;
        v2243 = *v2192;
        v2192 = (v2192 + 1);
        v2176 |= v2243 << v2189;
        v2189 -= 8;
      }

      while (v2189 >= v2195);
      goto LABEL_1332;
    }

    v2179 = ((v2175 - 1) * v2182 + 256) >> 8;
    v2183 = v2176 - (v2179 << 56);
    if (v2176 >= v2179 << 56)
    {
LABEL_1300:
      LODWORD(v2179) = *(a1 + 24) - v2179;
      v2180 = 1;
      v2176 = v2183;
      goto LABEL_1301;
    }

LABEL_1333:
    v2180 = 0;
LABEL_1301:
    v2091 = v2393;
    v2181 = vpx_norm[v2179];
    v2175 = v2179 << v2181;
    v2176 <<= v2181;
    v2174 -= v2181;
    *(a1 + 16) = v2176;
    *(a1 + 24) = v2179 << v2181;
    *(a1 + 28) = v2174;
    v2171 = vp9_switchable_interp_tree[v2180 + v2171];
    if (v2171 > 0)
    {
      continue;
    }

    break;
  }

  v2166 = -v2171;
  v2244 = *(a1 + 13744);
  if (v2244)
  {
    v2245 = v2244 + 12 * v2377 + 4 * v2166;
    ++*(v2245 + 12336);
  }

  v2044 = v2388;
  v12 = a2;
  v1314 = v2387;
  LODWORD(v1309) = v2396;
  v2084 = v2386;
  LODWORD(v2090) = v2380;
LABEL_1337:
  v2044[7] = v2166;
  if (v1309 > 2)
  {
    v2347 = v2044[1];
    v2348 = v2369;
    if (v2347 != 12)
    {
      if (v2084 <= 0)
      {
        v2355 = 1;
      }

      else
      {
        v2355 = 2;
      }

      v2356 = &v2413;
      do
      {
        v2357 = *v2348++;
        v2358 = (&v2414 + dec_find_mv_refs(v12 + 656, (a1 + 13328), v2347, v2357, v2400, &v2414, a3, a4, 0xFFFFFFFF) - 1);
        v2359 = *v2358;
        if (v2359 >= 0)
        {
          LOWORD(v2360) = *v2358;
        }

        else
        {
          v2360 = -v2359;
        }

        if (!v2091 || v2360 > 0x3Fu)
        {
          goto LABEL_1461;
        }

        v2361 = v2358[1];
        if (v2361 < 0)
        {
          v2361 = -v2361;
        }

        if (v2361 >= 0x40)
        {
LABEL_1461:
          if (v2359)
          {
            if (v2359 < 1)
            {
              v2362 = v2359 + 1;
            }

            else
            {
              v2362 = v2359 - 1;
            }

            *v2358 = v2362;
          }

          v2363 = v2358[1];
          if (v2363)
          {
            if (v2363 < 1)
            {
              v2364 = v2363 + 1;
            }

            else
            {
              v2364 = v2363 - 1;
            }

            v2358[1] = v2364;
          }
        }

        *v2356 = *v2358;
        v2356 = (v2356 + 4);
        --v2355;
      }

      while (v2355);
    }

    v2044 = v2388;
    result = assign_mv(v12 + 656, a1 + 13328, v2347, v2388 + 12, &v2413, &v2413, v2382, v2091, v2410);
    *(a1 + 13960) |= result ^ 1;
    v2045 = v2373;
    if (v2373 < 1)
    {
      return result;
    }

    goto LABEL_1442;
  }

  v2371 = 0;
  v2375 = *(a1 + 13736);
  v2374 = *(a1 + 13737);
  HIDWORD(v2412) = -2147450880;
  v2365 = 1 << v2374;
  if (v2084 <= 0)
  {
    v2246 = 1;
  }

  else
  {
    v2246 = 2;
  }

  v2372 = v2246;
  v2247 = 0;
  v2248.i64[0] = 0x800000008;
  v2248.i64[1] = 0x800000008;
  v2249.i64[0] = 0x7F0000007FLL;
  v2249.i64[1] = 0x7F0000007FLL;
  v2370 = v2090;
  v2376 = 3 * v2090;
  v2378 = v2044 + 20;
LABEL_1342:
  v2392 = 0;
  v2366 = v2247;
  v2381 = 2 * v2247;
  while (2)
  {
    LOBYTE(v2250) = 0;
    v2251 = *(v12 + 5560) + v2376 + 1910;
    v2253 = *(a1 + 24);
    v2252 = *(a1 + 28);
    v2254 = *(a1 + 16);
    while (2)
    {
      v2258 = *(v2251 + (v2250 >> 1));
      if ((v2252 & 0x80000000) != 0)
      {
        v2260 = *(a1 + 40);
        v2261 = *(a1 + 32) - v2260;
        v2262 = *(a1 + 48);
        if (v2262)
        {
          if (v2261 >= 9)
          {
            v2263 = 9;
          }

          else
          {
            v2263 = *(a1 + 32) - v2260;
          }

          v2262(*(a1 + 56), v2260, a1 + 64, v2263);
          v2249.i64[0] = 0x7F0000007FLL;
          v2249.i64[1] = 0x7F0000007FLL;
          v2248.i64[0] = 0x800000008;
          v2248.i64[1] = 0x800000008;
          v2260 = (a1 + 64);
        }

        v2264 = 8 * v2261;
        v2265 = 48 - v2252;
        if (8 * v2261 >= 0x41)
        {
          v2266 = (v2265 & 0x7FFFFFF8) + 8;
          v2267 = v2266 + v2252;
          v2268 = (v2260 + (v2266 >> 3));
          v2254 = (bswap64(*v2260) >> (56 - (v2265 & 0xF8u)) << (v2265 & 7)) | *v2410;
          goto LABEL_1377;
        }

        v2269 = 56 - v2252 - v2264;
        if (v2269 < 0)
        {
          v2267 = v2252;
        }

        else
        {
          v2267 = v2252 + 0x40000000;
        }

        if (v2264)
        {
          v2270 = 1;
        }

        else
        {
          v2270 = v2269 <= -1;
        }

        v2271 = v2269 & ~(v2269 >> 31);
        if (!v2270 || v2265 < v2271)
        {
          v2268 = v2260;
          goto LABEL_1377;
        }

        v2273 = v2271 - 1;
        if (v2271 - 1 >= (40 - v2252))
        {
          v2273 = 40 - v2252;
        }

        v2274 = 47 - v2252 - v2273;
        if (v2274 >= 0x78)
        {
          v2275 = (v2274 >> 3) + 1;
          v2276 = v2254;
          v2277 = 0uLL;
          v2278 = v2267;
          v2279 = vdupq_n_s32(v2265);
          v2280 = vaddq_s32(v2279, xmmword_273BC3230);
          v2268 = (v2260 + (v2275 & 0x3FFFFFF0));
          v2281 = vaddq_s32(v2279, xmmword_273BC3240);
          v2265 -= 8 * (v2275 & 0x3FFFFFF0);
          v2282 = vaddq_s32(v2279, xmmword_273BC3250);
          v2283 = vaddq_s32(v2279, xmmword_273BC3220);
          v2284 = v2275 & 0x3FFFFFF0;
          v2285 = v2260;
          v2286 = 0uLL;
          v2287 = 0uLL;
          v2288 = 0uLL;
          v2289 = 0uLL;
          v2290 = 0uLL;
          v2291 = 0uLL;
          v2292 = 0uLL;
          v2293 = 0uLL;
          v2294 = 0uLL;
          do
          {
            v2295 = *v2285++;
            v2296 = vmovl_high_u8(v2295);
            v2297 = vmovl_high_u16(v2296);
            v2298.i64[0] = v2297.u32[0];
            v2298.i64[1] = v2297.u32[1];
            v2299 = v2298;
            v2300 = vmovl_u16(*v2296.i8);
            v2298.i64[0] = v2300.u32[2];
            v2298.i64[1] = v2300.u32[3];
            v2301 = v2298;
            v2302 = vmovl_u8(*v2295.i8);
            v2303 = vmovl_high_u16(v2302);
            v2298.i64[0] = v2303.u32[2];
            v2298.i64[1] = v2303.u32[3];
            v2304 = v2298;
            v2298.i64[0] = v2297.u32[2];
            v2298.i64[1] = v2297.u32[3];
            v2305 = v2298;
            v2298.i64[0] = v2300.u32[0];
            v2298.i64[1] = v2300.u32[1];
            v2306 = v2298;
            v2298.i64[0] = v2303.u32[0];
            v2298.i64[1] = v2303.u32[1];
            v2307 = v2298;
            v2308 = vmovl_u16(*v2302.i8);
            v2298.i64[0] = v2308.u32[2];
            v2298.i64[1] = v2308.u32[3];
            v2309 = v2298;
            v2298.i64[0] = v2308.u32[0];
            v2298.i64[1] = v2308.u32[1];
            v2310 = v2298;
            v2298.i64[0] = v2283.u32[0];
            v2298.i64[1] = v2283.u32[1];
            v2311 = vshlq_u64(v2310, v2298);
            v2298.i64[0] = v2283.u32[2];
            v2298.i64[1] = v2283.u32[3];
            v2312 = vshlq_u64(v2309, v2298);
            v2298.i64[0] = v2282.u32[0];
            v2298.i64[1] = v2282.u32[1];
            v2313 = vshlq_u64(v2307, v2298);
            v2298.i64[0] = v2281.u32[0];
            v2298.i64[1] = v2281.u32[1];
            v2314 = vshlq_u64(v2306, v2298);
            v2298.i64[0] = v2280.u32[2];
            v2298.i64[1] = v2280.u32[3];
            v2315 = vshlq_u64(v2305, v2298);
            v2298.i64[0] = v2282.u32[2];
            v2298.i64[1] = v2282.u32[3];
            v2316 = vshlq_u64(v2304, v2298);
            v2298.i64[0] = v2281.u32[2];
            v2298.i64[1] = v2281.u32[3];
            v2317 = vshlq_u64(v2301, v2298);
            v2298.i64[0] = v2280.u32[0];
            v2298.i64[1] = v2280.u32[1];
            v2290 = vorrq_s8(vshlq_u64(v2299, v2298), v2290);
            v2289 = vorrq_s8(v2317, v2289);
            v2287 = vorrq_s8(v2316, v2287);
            v2291 = vorrq_s8(v2315, v2291);
            v2288 = vorrq_s8(v2314, v2288);
            v2286 = vorrq_s8(v2313, v2286);
            v2277 = vorrq_s8(v2312, v2277);
            v2276 = vorrq_s8(v2311, v2276);
            v2278 = vaddq_s32(v2278, v2248);
            v2292 = vaddq_s32(v2292, v2248);
            v2293 = vaddq_s32(v2293, v2248);
            v2294 = vaddq_s32(v2294, v2248);
            v2283 = vaddq_s32(v2283, v2249);
            v2282 = vaddq_s32(v2282, v2249);
            v2281 = vaddq_s32(v2281, v2249);
            v2280 = vaddq_s32(v2280, v2249);
            v2284 -= 16;
          }

          while (v2284);
          v2318 = vorrq_s8(vorrq_s8(vorrq_s8(v2276, v2288), vorrq_s8(v2286, v2290)), vorrq_s8(vorrq_s8(v2277, v2289), vorrq_s8(v2287, v2291)));
          v2254 = vorr_s8(*v2318.i8, *&vextq_s8(v2318, v2318, 8uLL));
          v2267 = vaddvq_s32(vaddq_s32(vaddq_s32(v2278, v2293), vaddq_s32(v2292, v2294)));
          if ((v2275 & 0x3FFFFFF0) == v2275)
          {
LABEL_1377:
            *(a1 + 40) += v2268 - v2260;
            v2252 = v2267;
            v2255 = ((v2253 - 1) * v2258 + 256) >> 8;
            v2259 = v2254 - (v2255 << 56);
            if (v2254 < v2255 << 56)
            {
              goto LABEL_1378;
            }

            goto LABEL_1345;
          }
        }

        else
        {
          v2268 = v2260;
        }

        do
        {
          v2267 += 8;
          v2319 = *v2268;
          v2268 = (v2268 + 1);
          v2254 |= v2319 << v2265;
          v2265 -= 8;
        }

        while (v2265 >= v2271);
        goto LABEL_1377;
      }

      v2255 = ((v2253 - 1) * v2258 + 256) >> 8;
      v2259 = v2254 - (v2255 << 56);
      if (v2254 >= v2255 << 56)
      {
LABEL_1345:
        LODWORD(v2255) = *(a1 + 24) - v2255;
        v2256 = 1;
        v2254 = v2259;
        goto LABEL_1346;
      }

LABEL_1378:
      v2256 = 0;
LABEL_1346:
      v2257 = vpx_norm[v2255];
      v2253 = v2255 << v2257;
      v2254 <<= v2257;
      v2252 -= v2257;
      *(a1 + 16) = v2254;
      *(a1 + 24) = v2255 << v2257;
      *(a1 + 28) = v2252;
      v2250 = vp9_inter_mode_tree[v2256 + v2250];
      if (v2250 > 0)
      {
        continue;
      }

      break;
    }

    v2320 = *(a1 + 13744);
    if (v2320)
    {
      v2321 = v2320 + 16 * v2370 + 4 * -v2250;
      ++*(v2321 + 12384);
    }

    v2322 = v2392 + v2381;
    v2323 = 10 - v2250;
    if (((10 - v2250) & 0xFE) == 0xA)
    {
      v2324 = 0;
      v2325 = 0;
      v2326 = *(a1 + 13776);
      v2327 = 8;
      v2328 = v2372;
      while (1)
      {
        v2331 = *v2326;
        if ((v2322 - 1) < 2)
        {
          if (v2250)
          {
            dec_find_mv_refs(a2 + 656, (a1 + 13328), (10 - v2250), *(v2331 + v2327), v2400, &v2414, a3, a4, v2322);
            *(&v2412 + v2324) = 0;
            v2332 = *(v2331 + v2324 + 24);
            v2330 = v2414;
            if (v2332 == v2414)
            {
              v2330 = v2415;
              if (v2332 == v2415)
              {
                goto LABEL_1386;
              }
            }

            goto LABEL_1385;
          }

          v2329 = (v2331 + 4 * v2325 + 24);
        }

        else if (v2322 == 3)
        {
          if (v2250)
          {
            *(&v2412 + v2324) = 0;
            v2333 = *(v2331 + v2324 + 48);
            v2330 = *(v2331 + v2324 + 36);
            if (v2333 == v2330)
            {
              v2330 = *(v2331 + v2324 + 24);
              if (v2333 == v2330)
              {
                dec_find_mv_refs(a2 + 656, (a1 + 13328), (10 - v2250), *(v2331 + v2327), v2400, &v2414, a3, a4, 3u);
                v2330 = v2414;
                if (v2333 == v2414)
                {
                  v2330 = v2415;
                  if (v2333 == v2415)
                  {
                    goto LABEL_1386;
                  }
                }
              }
            }

            goto LABEL_1385;
          }

          v2329 = (v2331 + v2324 + 48);
        }

        else
        {
          if (v2322)
          {
            goto LABEL_1386;
          }

          v2329 = &v2414 + dec_find_mv_refs(a2 + 656, (a1 + 13328), (10 - v2250), *(v2331 + v2327), v2400, &v2414, a3, a4, 0) - 1;
        }

        v2330 = *v2329;
LABEL_1385:
        *(&v2412 + v2324) = v2330;
LABEL_1386:
        ++v2325;
        ++v2327;
        v2324 += 4;
        if (!--v2328)
        {
          v12 = a2;
          v2335 = v2393;
          goto LABEL_1429;
        }
      }
    }

    v2334 = (10 - v2250) == 13 && v2371 == 0;
    v2335 = v2393;
    if (v2334)
    {
      v2336 = &v2413;
      v2337 = v2369;
      v2338 = v2372;
      do
      {
        v2339 = *v2337++;
        dec_find_mv_refs(v12 + 656, (a1 + 13328), 13, v2339, v2400, &v2414, a3, a4, 0xFFFFFFFF);
        if ((v2414 & 0x8000u) == 0)
        {
          LOWORD(v2340) = v2414;
        }

        else
        {
          v2340 = -v2414;
        }

        if (!v2393 || v2340 > 0x3Fu)
        {
          goto LABEL_1417;
        }

        v2341 = SHIWORD(v2414);
        if (v2414 < 0)
        {
          v2341 = -SHIWORD(v2414);
        }

        if (v2341 >= 0x40)
        {
LABEL_1417:
          if (v2414)
          {
            if (v2414 < 1)
            {
              v2342 = v2414 + 1;
            }

            else
            {
              v2342 = v2414 - 1;
            }

            LOWORD(v2414) = v2342;
          }

          if ((v2414 & 0x10000) != 0)
          {
            if (SHIWORD(v2414) < 1)
            {
              v2343 = HIWORD(v2414) + 1;
            }

            else
            {
              v2343 = HIWORD(v2414) - 1;
            }

            HIWORD(v2414) = v2343;
          }
        }

        *v2336 = v2414;
        v2336 = (v2336 + 4);
        --v2338;
      }

      while (v2338);
      v2371 = 1;
    }

LABEL_1429:
    v2344 = &v2378[12 * v2322];
    result = assign_mv(v12 + 656, a1 + 13328, v2323, v2344 + 4, &v2413, &v2412, v2382, v2335, v2410);
    v1314 = v2387;
    if (result)
    {
      if (v2374 == 1)
      {
        v2345 = &v2378[12 * v2322];
        *(v2345 + 3) = *v2344;
        *(v2345 + 8) = *(v2344 + 2);
        v2248.i64[0] = 0x800000008;
        v2248.i64[1] = 0x800000008;
        v2249.i64[0] = 0x7F0000007FLL;
        v2249.i64[1] = 0x7F0000007FLL;
        if (v2375 == 1)
        {
LABEL_1434:
          v2346 = &v2378[12 * v2322];
          *(v2346 + 12) = *v2344;
          *(v2346 + 5) = *(v2344 + 2);
        }
      }

      else
      {
        v2248.i64[0] = 0x800000008;
        v2248.i64[1] = 0x800000008;
        v2249.i64[0] = 0x7F0000007FLL;
        v2249.i64[1] = 0x7F0000007FLL;
        if (v2375 == 1)
        {
          goto LABEL_1434;
        }
      }

      v2392 += 1 << v2375;
      if (v2392 < 2)
      {
        continue;
      }

      v2247 = v2366 + v2365;
      if (v2366 + v2365 < 2)
      {
        goto LABEL_1342;
      }

      v2044 = v2388;
      v2388[1] = v2323;
      *(v2388 + 12) = *(v2388 + 60);
      v1314 = v2387;
      v2045 = v2373;
      if (v2373 < 1)
      {
        return result;
      }

LABEL_1442:
      v2349 = 0;
      v2350 = v2368 + 12 * v2367 + 12 * a4;
      v2351 = *(v2044 + 4);
      v2352 = *(v2044 + 12);
      do
      {
        if (v1314 >= 1)
        {
          v2353 = (v2350 + 8);
          v2354 = v1314;
          do
          {
            *v2353 = v2351;
            *(v2353 - 1) = v2352;
            v2353 += 6;
            --v2354;
          }

          while (v2354);
        }

        v2350 += 12 * *(v12 + 1976);
        ++v2349;
      }

      while (v2349 != v2045);
      return result;
    }

    break;
  }

  *(a1 + 13960) |= 1u;
  v2044 = v2388;
  v2045 = v2373;
  if (v2373 >= 1)
  {
    goto LABEL_1442;
  }

  return result;
}