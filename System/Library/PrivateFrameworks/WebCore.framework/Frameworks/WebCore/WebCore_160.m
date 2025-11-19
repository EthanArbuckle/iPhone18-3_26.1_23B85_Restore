uint64_t write_frame_size_0(uint64_t result, int a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = *(result + 76);
    v4 = *(result + 24680);
    v6 = *v4;
    v5 = v4[1];
    if (v6 >= 1)
    {
      v7 = *(result + 72) - 1;
      v8 = *(a3 + 2);
      v9 = 7 - v8;
      v10 = v6 + 1;
      do
      {
        v13 = (v7 >> (v10 - 2)) & 1;
        v14 = v8 + 7;
        if (v8 >= 0)
        {
          v14 = v8;
        }

        v15 = v14 & 0xFFFFFFF8;
        v12 = *a3;
        v16 = v14 >> 3;
        if (v15 == v8)
        {
          LOBYTE(v13) = v13 << 7;
        }

        else
        {
          v11 = v9 + v15;
          *(v12 + v16) &= ~(1 << v11);
          v12 = *a3;
          v13 = *(*a3 + v16) | (v13 << v11);
        }

        *(v12 + v16) = v13;
        *(a3 + 2) = ++v8;
        --v9;
        --v10;
      }

      while (v10 > 1);
    }

    if (v5 >= 1)
    {
      v17 = v3 - 1;
      v18 = *(a3 + 2);
      v19 = 7 - v18;
      v20 = v5 + 1;
      do
      {
        v23 = (v17 >> (v20 - 2)) & 1;
        v24 = v18 + 7;
        if (v18 >= 0)
        {
          v24 = v18;
        }

        v25 = v24 & 0xFFFFFFF8;
        v22 = *a3;
        v26 = v24 >> 3;
        if (v25 == v18)
        {
          LOBYTE(v23) = v23 << 7;
        }

        else
        {
          v21 = v19 + v25;
          *(v22 + v26) &= ~(1 << v21);
          v22 = *a3;
          v23 = *(*a3 + v26) | (v23 << v21);
        }

        *(v22 + v26) = v23;
        *(a3 + 2) = ++v18;
        --v19;
        --v20;
      }

      while (v20 > 1);
    }
  }

  if (*(*(result + 24680) + 66))
  {
    v27 = *(a3 + 2);
    v28 = v27 + 7;
    if (v27 >= 0)
    {
      v28 = *(a3 + 2);
    }

    v29 = v27 - (v28 & 0xFFFFFFF8);
    v30 = *a3;
    v31 = v28 >> 3;
    if (*(result + 80) == 8)
    {
      if (v29)
      {
        v29 = *(v30 + v31) & ~(1 << (7 - v29));
      }

      *(v30 + v31) = v29;
      v32 = 1;
    }

    else
    {
      if (v29)
      {
        v33 = 1 << (7 - v29);
        *(v30 + v31) &= ~v33;
        v30 = *a3;
        v34 = *(*a3 + v31) | v33;
      }

      else
      {
        v34 = 0x80;
      }

      *(v30 + v31) = v34;
      *(a3 + 2) = v27 + 1;
      v35 = *(result + 80) - 9;
      v36 = v27 + 8;
      if (v27 >= -1)
      {
        v36 = v27 + 1;
      }

      v37 = v36 & 0xFFFFFFF8;
      v38 = *a3;
      v39 = v36 >> 3;
      v40 = v27 + 1 - v37;
      if (v40)
      {
        v41 = 7 - v40;
        *(v38 + v39) &= ~(1 << v41);
        v38 = *a3;
        v42 = *(*a3 + v39) | (((v35 >> 2) & 1) << v41);
      }

      else
      {
        LOBYTE(v42) = ((v35 & 4) != 0) << 7;
      }

      *(v38 + v39) = v42;
      *(a3 + 2) = v27 + 2;
      v43 = v27 + 9;
      if (v27 >= -2)
      {
        v43 = v27 + 2;
      }

      v44 = v43 & 0xFFFFFFF8;
      v45 = *a3;
      v46 = v43 >> 3;
      v47 = v27 + 2 - v44;
      if (v47)
      {
        v48 = 7 - v47;
        *(v45 + v46) &= ~(1 << v48);
        v45 = *a3;
        v49 = *(*a3 + v46) | (((v35 >> 1) & 1) << v48);
      }

      else
      {
        LOBYTE(v49) = ((v35 & 2) != 0) << 7;
      }

      *(v45 + v46) = v49;
      *(a3 + 2) = v27 + 3;
      v50 = v35 & 1;
      v51 = v27 + 10;
      if (v27 >= -3)
      {
        v51 = v27 + 3;
      }

      v52 = v51 & 0xFFFFFFF8;
      v53 = *a3;
      v54 = v51 >> 3;
      v55 = v27 + 3 - v52;
      if (v55)
      {
        v56 = 7 - v55;
        *(v53 + v54) &= ~(1 << v56);
        v53 = *a3;
        v50 = *(*a3 + v54) | (v50 << v56);
      }

      else
      {
        LOBYTE(v50) = v50 << 7;
      }

      *(v53 + v54) = v50;
      v32 = 4;
    }

    *(a3 + 2) = v27 + v32;
  }

  if (*(result + 72) == *(result + 64))
  {
    v57 = *(result + 76);
    v58 = *(result + 68);
    v59 = *(a3 + 2);
    v60 = v59 + 7;
    if (v59 >= 0)
    {
      v60 = *(a3 + 2);
    }

    v61 = v60 & 0xFFFFFFF8;
    v62 = *a3;
    v63 = v60 >> 3;
    v64 = v59 - v61;
    if (v64)
    {
      v65 = 7 - v64;
      *(v62 + v63) &= ~(1 << v65);
      *(*a3 + v63) |= (v57 != v58) << v65;
      v66 = v59 + 1;
      *(a3 + 2) = v66;
      if (v57 == v58)
      {
        return result;
      }
    }

    else
    {
      *(v62 + v63) = (v57 != v58) << 7;
      v66 = v59 + 1;
      *(a3 + 2) = v66;
      if (v57 == v58)
      {
        return result;
      }
    }
  }

  else
  {
    v67 = *(a3 + 2);
    v68 = v67 + 7;
    if (v67 >= 0)
    {
      v68 = *(a3 + 2);
    }

    v69 = v68 & 0xFFFFFFF8;
    v70 = *a3;
    v71 = v68 >> 3;
    v72 = v67 - v69;
    if (v72)
    {
      v73 = 1 << (7 - v72);
      *(v70 + v71) &= ~v73;
      v70 = *a3;
      v74 = *(*a3 + v71) | v73;
    }

    else
    {
      v74 = 0x80;
    }

    *(v70 + v71) = v74;
    v66 = v67 + 1;
    *(a3 + 2) = v67 + 1;
  }

  v75 = *(result + 64) - 1;
  v76 = 17;
  v77 = v66;
  do
  {
    while (1)
    {
      v79 = (v75 >> (v76 - 2)) & 1;
      v80 = v77 + 7;
      if (v77 >= 0)
      {
        v80 = v77;
      }

      v81 = v76 - v66 + (v80 & 0xFFFFFFF8);
      v82 = *a3;
      v83 = v80 >> 3;
      if (v81 == 17)
      {
        break;
      }

      v78 = v81 - 10;
      *(v82 + v83) &= ~(1 << v78);
      *(*a3 + v83) |= v79 << v78;
      *(a3 + 2) = ++v77;
      if (--v76 <= 1)
      {
        goto LABEL_65;
      }
    }

    *(v82 + v83) = v79 << 7;
    *(a3 + 2) = ++v77;
    --v76;
  }

  while (v76 > 1);
LABEL_65:
  v84 = *(result + 68) - 1;
  v85 = v76 - v66 - 10;
  for (i = 17; i > 1; --i)
  {
    v89 = (v84 >> (i - 2)) & 1;
    v90 = v77 + 7;
    if (v77 >= 0)
    {
      v90 = v77;
    }

    v91 = v90 & 0xFFFFFFF8;
    v88 = *a3;
    v92 = v90 >> 3;
    if (v91 == v77)
    {
      LOBYTE(v89) = v89 << 7;
    }

    else
    {
      v87 = v85 + v91;
      result = *(v88 + v92);
      *(v88 + v92) = result & ~(1 << v87);
      v88 = *a3;
      v89 = *(*a3 + v92) | (v89 << v87);
    }

    *(v88 + v92) = v89;
    *(a3 + 2) = ++v77;
    --v85;
  }

  return result;
}

_DWORD *write_modes_sb_0(_DWORD *result, uint64_t a2, int *a3, uint64_t a4, _BYTE **a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = (result + 59392);
  v9 = result[59897];
  if (v9 <= a6)
  {
    return result;
  }

  v11 = result[59898];
  if (v11 <= a7)
  {
    return result;
  }

  v14 = mi_size_wide_5[a8];
  v15 = v14 >> 1;
  v16 = result[59909];
  v17 = (*(result + 29953) + 8 * (a7 + v16 * a6));
  v18 = **v17;
  if (v18 == a8)
  {
    v19 = 0;
  }

  else
  {
    v20 = mi_size_high_4[a8];
    v21 = mi_size_high_4[**v17];
    v22 = mi_size_wide_5[**v17];
    if (a8 >= 4 && (v15 + a6 < v9 ? (v23 = ((v20 >> 1) + a7) < v11) : (v23 = 0), v23))
    {
      v27 = v17[(v20 >> 1) * v16];
      if (v22 == v14)
      {
        if (v20 == 4 * v21)
        {
          v19 = 8;
        }

        else if (*v27 == v18)
        {
          v19 = 1;
        }

        else
        {
          v19 = 5;
        }
      }

      else
      {
        v58 = v17[v15];
        if (v21 == v20)
        {
          if (v14 == 4 * v22)
          {
            v19 = 9;
          }

          else if (*v58 == v18)
          {
            v19 = 2;
          }

          else
          {
            v19 = 7;
          }
        }

        else if (v14 == 2 * v22 && 2 * v21 == v20)
        {
          if (mi_size_wide_5[*v27] == v14)
          {
            v19 = 4;
          }

          else if (mi_size_high_4[*v58] == v20)
          {
            v19 = 6;
          }

          else
          {
            v19 = 3;
          }
        }

        else
        {
          v19 = 3;
        }
      }
    }

    else
    {
      v24 = (v21 < v20) | (2 * (v22 < v14));
      if (!v24)
      {
        v19 = 255;
        v26 = 255;
        goto LABEL_31;
      }

      v19 = get_partition_base_partitions[v24];
    }
  }

  if (a8 > 8)
  {
    switch(a8)
    {
      case 9u:
        v25 = 3;
        goto LABEL_30;
      case 0xCu:
        v25 = 4;
        goto LABEL_30;
      case 0xFu:
        v25 = 5;
        goto LABEL_30;
    }
  }

  else
  {
    switch(a8)
    {
      case 0u:
        v25 = 0;
        goto LABEL_30;
      case 3u:
        v25 = 1;
        goto LABEL_30;
      case 6u:
        v25 = 2;
LABEL_30:
        v26 = *(&subsize_lookup_0 + 6 * v19 + v25);
        goto LABEL_31;
    }
  }

  v26 = 255;
LABEL_31:
  v147 = v26;
  __len = mi_size_wide_5[a8];
  v146 = a8;
  if (a8 < 3)
  {
    goto LABEL_81;
  }

  v28 = v15 + a6;
  v29 = v15 + a7;
  v30 = mi_size_wide_log2_0[a8];
  v31 = *(a2 + 11064);
  if (v15 + a6 >= v9 && v29 >= v11)
  {
    goto LABEL_81;
  }

  v32 = (*(*(a2 + 8504) + a7) >> (v30 - 1)) & 1;
  v33 = *(a2 + (a6 & 0x1F) + 8512) >> (v30 - 1);
  v34 = v32 | (2 * (v33 & 1)) | (4 * (v30 - 1));
  if (v28 < v9 && v29 < v11)
  {
    v35 = (v31 + 22 * v34 + 13618);
    if (a8 == 15)
    {
      v36 = 8;
    }

    else
    {
      v36 = 10;
    }

    if (a8 == 3)
    {
      v37 = 4;
    }

    else
    {
      v37 = v36;
    }

    v144 = a5;
    v145 = result;
    v142 = v31 + 22 * v34 + 13618;
    v143 = *(a2 + 11064);
    v140 = v32;
    v141 = v37;
    if (v19)
    {
      v38 = &v35[v19];
      v39 = *(v38 - 1);
      v40 = *v38;
      v41 = *(a4 + 32);
      v42 = *(a4 + 40);
      v43 = v37 - 1;
      v44 = v42 >> 8;
      if ((v39 & 0x80000000) == 0)
      {
        v45 = a3;
        v46 = ((v44 * (v39 >> 6)) >> 1) + 4 * (v37 - v19);
        v41 += v42 - v46;
        v47 = v46 - ((v44 * (v40 >> 6)) >> 1) + 4 * (v19 - v43);
        goto LABEL_59;
      }
    }

    else
    {
      v40 = *v35;
      v41 = *(a4 + 32);
      v42 = *(a4 + 40);
      v43 = v37 - 1;
      v44 = v42 >> 8;
    }

    v45 = a3;
    v47 = v42 + 4 * (v19 - v43) - (((v40 >> 6) * v44) >> 1);
LABEL_59:
    v59 = a4;
    od_ec_enc_normalize((a4 + 16), v41, v47);
    a4 = v59;
    a5 = v144;
    result = v145;
    a3 = v45;
    LODWORD(v14) = __len;
    if (*(v59 + 48))
    {
      v60 = 0;
      v61 = *(v142 + 2 * v141);
      v62 = (v61 >> 4) + 5;
      v63 = v141 - 1;
      v64 = (2 * (v33 & 1)) | (4 * v30);
      if (a8 == 3)
      {
        v65 = v140;
      }

      else
      {
        v65 = v140;
        if (a8 != 15)
        {
          v60 = v63 & 0xFFFFFFF8;
          v66 = vdupq_n_s64(v19);
          v67 = (v143 + 22 * (v64 + v140 - 4) + 13618);
          v68 = xmmword_273BB9B30;
          v69 = xmmword_273BB9B40;
          v70 = xmmword_273B92120;
          v71 = xmmword_273B92130;
          v72 = vnegq_s32(vdupq_n_s32(v62));
          v73.i64[0] = 0x800000008000;
          v73.i64[1] = 0x800000008000;
          v74 = vdupq_n_s64(8uLL);
          v75 = v60;
          do
          {
            *v67 = vaddq_s16(*v67, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_s64(v66, v71), vcgtq_s64(v66, v70)), vuzp1q_s32(vcgtq_s64(v66, v69), vcgtq_s64(v66, v68))), vuzp1q_s16(vshlq_s32(vsubw_u16(v73, *v67->i8), v72), vshlq_s32(vsubw_high_u16(v73, *v67), v72)), vnegq_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v67->i8), v72), vshlq_u32(vmovl_high_u16(*v67), v72)))));
            ++v67;
            v69 = vaddq_s64(v69, v74);
            v70 = vaddq_s64(v70, v74);
            v71 = vaddq_s64(v71, v74);
            v68 = vaddq_s64(v68, v74);
            v75 -= 8;
          }

          while (v75);
        }
      }

      v77 = v143 + 22 * (v64 + v65 - 4) + 13618;
      do
      {
        v78 = *(v77 + 2 * v60);
        v79 = v78 - (v78 >> v62);
        v80 = v78 + ((0x8000 - v78) >> v62);
        if (v60 >= v19)
        {
          LOWORD(v80) = v79;
        }

        *(v77 + 2 * v60++) = v80;
      }

      while (v63 != v60);
      v81 = *(v142 + 2 * v141);
      if (v61 < 0x20)
      {
        ++v81;
      }

      *(v142 + 2 * v141) = v81;
    }

    goto LABEL_81;
  }

  v48 = (v31 + 22 * v34 + 13618);
  if (v28 < v9 || v29 >= v11)
  {
    v49 = result;
    v50 = a3;
    v51 = a5;
    v56 = ((v48[1] - *v48) ^ 0x8000) - v48[2] + v48[6];
    if (a8 != 15)
    {
      v56 = v56 - v48[7] + v48[8];
    }

    v150[0] = 0x8000 - v56;
    v150[1] = 0;
    v53 = v19 == 3;
    v54 = a4 + 16;
    v55 = v150;
  }

  else
  {
    v49 = result;
    v50 = a3;
    v51 = a5;
    v52 = v48[4] - v48[1] - v48[5] + v48[7] + 0x8000;
    if (a8 != 15)
    {
      v52 = v52 - v48[8] + v48[9];
    }

    v151[0] = 0x8000 - v52;
    v151[1] = 0;
    v53 = v19 == 3;
    v54 = a4 + 16;
    v55 = v151;
  }

  v57 = a4;
  od_ec_encode_cdf_q15(v54, v53, v55, 2);
  a4 = v57;
  a5 = v51;
  a3 = v50;
  result = v49;
  LODWORD(v14) = __len;
LABEL_81:
  if (v19 > 4)
  {
    if (v19 <= 6)
    {
      if (v19 != 5)
      {
        v88 = result;
        v89 = a3;
        v90 = a4;
        v91 = a5;
        write_modes_b_0(result, a2, a3, a4, a5, a6, a7);
        write_modes_b_0(v88, a2, v89, v90, v91, v15 + a6, a7);
        v93 = v15 + a7;
LABEL_103:
        result = write_modes_b_0(v88, a2, v89, v90, v91, a6, v93);
        goto LABEL_110;
      }

      v95 = result;
      v96 = a3;
      v97 = a4;
      v98 = a5;
      write_modes_b_0(result, a2, a3, a4, a5, a6, a7);
      v99 = v15 + a6;
      v100 = v95;
      v101 = a2;
      v102 = v96;
      v103 = v97;
      v104 = v98;
      v105 = a7;
    }

    else
    {
      if (v19 != 7)
      {
        v87 = v14 >> 2;
        if (v19 == 8)
        {
          v82 = result;
          v83 = a3;
          v84 = a4;
          v85 = a5;
          result = write_modes_b_0(result, a2, a3, a4, a5, a6, a7);
          if ((v87 + a6) < *(v8 + 505))
          {
            result = write_modes_b_0(v82, a2, v83, v84, v85, v87 + a6, a7);
            v110 = a6 + 2 * v87;
            if (v110 < *(v8 + 505))
            {
              result = write_modes_b_0(v82, a2, v83, v84, v85, v110, a7);
              v86 = 3 * v87 + a6;
              if (v86 < *(v8 + 505))
              {
                goto LABEL_95;
              }
            }
          }

          goto LABEL_110;
        }

        if (v19 != 9)
        {
          goto LABEL_110;
        }

        v88 = result;
        v89 = a3;
        v90 = a4;
        v91 = a5;
        result = write_modes_b_0(result, a2, a3, a4, a5, a6, a7);
        if ((v87 + a7) >= *(v8 + 506))
        {
          goto LABEL_110;
        }

        result = write_modes_b_0(v88, a2, v89, v90, v91, a6, v87 + a7);
        v92 = a7 + 2 * v87;
        if (v92 >= *(v8 + 506))
        {
          goto LABEL_110;
        }

        result = write_modes_b_0(v88, a2, v89, v90, v91, a6, v92);
        v93 = 3 * v87 + a7;
        goto LABEL_102;
      }

      v95 = result;
      v96 = a3;
      v97 = a4;
      v98 = a5;
      write_modes_b_0(result, a2, a3, a4, a5, a6, a7);
      v105 = v15 + a7;
      v100 = v95;
      v101 = a2;
      v102 = v96;
      v103 = v97;
      v104 = v98;
      v99 = a6;
    }

    write_modes_b_0(v100, v101, v102, v103, v104, v99, v105);
    result = write_modes_b_0(v95, a2, v96, v97, v98, v15 + a6, v15 + a7);
    goto LABEL_110;
  }

  if (v19 <= 1)
  {
    if (!v19)
    {
      v94 = a2;
      v86 = a6;
      goto LABEL_99;
    }

    v82 = result;
    v83 = a3;
    v84 = a4;
    v85 = a5;
    result = write_modes_b_0(result, a2, a3, a4, a5, a6, a7);
    v86 = v15 + a6;
    if (v15 + a6 >= *(v8 + 505))
    {
      goto LABEL_110;
    }

LABEL_95:
    result = v82;
    v94 = a2;
    a3 = v83;
    a4 = v84;
    a5 = v85;
LABEL_99:
    result = write_modes_b_0(result, v94, a3, a4, a5, v86, a7);
    goto LABEL_110;
  }

  if (v19 == 2)
  {
    v88 = result;
    v89 = a3;
    v90 = a4;
    v91 = a5;
    result = write_modes_b_0(result, a2, a3, a4, a5, a6, a7);
    v93 = v15 + a7;
LABEL_102:
    if (v93 >= *(v8 + 506))
    {
      goto LABEL_110;
    }

    goto LABEL_103;
  }

  if (v19 != 3)
  {
    v82 = result;
    v83 = a3;
    v84 = a4;
    v85 = a5;
    write_modes_b_0(result, a2, a3, a4, a5, a6, a7);
    write_modes_b_0(v82, a2, v83, v84, v85, a6, v15 + a7);
    v86 = v15 + a6;
    goto LABEL_95;
  }

  v106 = result;
  v107 = a3;
  v108 = a4;
  v109 = a5;
  (write_modes_sb_0)();
  write_modes_sb_0(v106, a2, v107, v108, v109, a6, (v15 + a7), v147);
  write_modes_sb_0(v106, a2, v107, v108, v109, (v15 + a6), a7, v147);
  result = write_modes_sb_0(v106, a2, v107, v108, v109, (v15 + a6), (v15 + a7), v147);
LABEL_110:
  if (a8 < 3)
  {
    return result;
  }

  v111 = 255;
  if (a8 <= 8)
  {
    if (a8 == 3)
    {
      v112 = 1u;
    }

    else
    {
      if (a8 != 6)
      {
        goto LABEL_123;
      }

      v112 = 2u;
    }
  }

  else
  {
    switch(a8)
    {
      case 9u:
        v112 = 3u;
        break;
      case 0xCu:
        v112 = 4u;
        break;
      case 0xFu:
        v112 = 5u;
        break;
      default:
        goto LABEL_123;
    }
  }

  v111 = *(&subsize_lookup_0 + v112 + 18);
LABEL_123:
  v113 = __len >> 1;
  if (v19 > 4)
  {
    if (v19 <= 7)
    {
      if (v19 != 5)
      {
        v122 = a7;
        if (v19 == 6)
        {
          v123 = a6 & 0x1F;
          v124 = a2 + 8512;
          v125 = mi_size_wide_5[v147];
          v126 = mi_size_high_4[v147];
          v139 = &partition_context_lookup_0 + 2 * v111;
          memset((*(a2 + 8504) + v122), *v139, v125);
          memset((a2 + 8512 + v123), v139[1], v126);
          v128 = v122 + v113;
          v129 = *(a2 + 8504);
          v130 = &partition_context_lookup_0 + 2 * v147;
        }

        else
        {
          v123 = a6 & 0x1F;
          v124 = a2 + 8512;
          v125 = mi_size_wide_5[v147];
          v126 = mi_size_high_4[v147];
          v127 = &partition_context_lookup_0 + 2 * v147;
          memset((*(a2 + 8504) + v122), *v127, v125);
          memset((a2 + 8512 + v123), v127[1], v126);
          v128 = v122 + v113;
          v129 = *(a2 + 8504);
          v130 = &partition_context_lookup_0 + 2 * v111;
        }

        memset((v129 + v128), *v130, v125);
        v135 = v130[1];
        v136 = (v124 + v123);
        v137 = v126;
        goto LABEL_137;
      }

      v114 = a7;
      v115 = a2 + 8512;
      v116 = mi_size_wide_5[v147];
      v117 = mi_size_high_4[v147];
      v138 = &partition_context_lookup_0 + 2 * v147;
      memset((*(a2 + 8504) + v114), *v138, v116);
      memset((a2 + 8512 + (a6 & 0x1F)), v138[1], v117);
      v119 = *(a2 + 8504);
      v120 = (v113 + a6) & 0x1F;
      v121 = &partition_context_lookup_0 + 2 * v111;
      goto LABEL_134;
    }

    if ((v19 - 8) >= 2)
    {
      return result;
    }
  }

  else if (v19 >= 3)
  {
    if (v19 != 3)
    {
      v114 = a7;
      v115 = a2 + 8512;
      v116 = mi_size_wide_5[v147];
      v117 = mi_size_high_4[v147];
      v118 = &partition_context_lookup_0 + 2 * v111;
      memset((*(a2 + 8504) + v114), *v118, v116);
      memset((a2 + 8512 + (a6 & 0x1F)), v118[1], v117);
      v119 = *(a2 + 8504);
      v120 = (v113 + a6) & 0x1F;
      v121 = &partition_context_lookup_0 + 2 * v147;
LABEL_134:
      memset((v119 + v114), *v121, v116);
      v135 = v121[1];
      v136 = (v115 + v120);
      v137 = v117;
      goto LABEL_137;
    }

    if (a8 != 3)
    {
      return result;
    }
  }

  v131 = (*(a2 + 8504) + a7);
  v132 = a2 + 8512;
  v133 = mi_size_high_4[v146];
  v134 = &partition_context_lookup_0 + 2 * v147;
  memset(v131, *v134, __len);
  v135 = v134[1];
  v136 = (v132 + (a6 & 0x1F));
  v137 = v133;
LABEL_137:

  return memset(v136, v135, v137);
}

uint64_t write_modes_b_0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, _BYTE **a5, int a6, int a7)
{
  v895 = *MEMORY[0x277D85DE8];
  v889 = *(a2 + 11064);
  v9 = *(a1 + 239636);
  v10 = a7 + (v9 * a6);
  v11 = (*(a1 + 239624) + 8 * v10);
  *(a2 + 8280) = v11;
  v12 = mi_size_wide_5[*(a1 + 239616)];
  v874 = *(a1 + 239008) + 84 * (a7 / v12 + a6 / v12 * *(a1 + 239020));
  *(a2 + 16760) = v874;
  *(a2 + 8328) = *(a1 + 239640) + v10;
  *(a2 + 8336) = v9;
  v13 = *v11;
  v14 = **v11;
  v15 = mi_size_high_4[v14];
  v16 = mi_size_wide_5[v14];
  v17 = *(a1 + 239588);
  v841 = a1 + 239008;
  LODWORD(v10) = *(a1 + 239592);
  v18 = *a3;
  v19 = a3[2];
  *(a2 + 8348) = -32 * a6;
  *(a2 + 8352) = 32 * (v17 - a6 - v15);
  *(a2 + 8340) = -32 * a7;
  *(a2 + 8344) = 32 * (v10 - (v16 + a7));
  *(a2 + 416) = a6;
  *(a2 + 420) = a7;
  v20 = v18 < a6;
  *(a2 + 8288) = v20;
  v21 = *(a2 + 3044);
  v22 = *(a2 + 3048);
  v23 = v19 < a7;
  *(a2 + 8289) = v23;
  *(a2 + 8290) = v20;
  if (!((0x3EFFFCuLL >> v14) & 1 | (v21 == 0)))
  {
    v23 = a7 - 1 > v19;
  }

  *(a2 + 8291) = v23;
  if (((0x20005uLL >> v14) & 1) != 0 && v22)
  {
    v20 = a6 - 1 > v18;
    *(a2 + 8290) = v20;
  }

  if (v18 >= a6)
  {
    *(a2 + 8304) = 0;
    if (v19 >= a7)
    {
LABEL_8:
      *(a2 + 8296) = 0;
      if (a6)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else
  {
    *(a2 + 8304) = v11[-*(a2 + 424)];
    if (v19 >= a7)
    {
      goto LABEL_8;
    }
  }

  *(a2 + 8296) = *(v11 - 1);
  if (a6)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v15 & 1) != 0 && v22)
  {
    *(a2 + 428) = 0;
    goto LABEL_25;
  }

LABEL_15:
  if ((a7 & 1) != 0 || (v16 & 1) == 0)
  {
    *(a2 + 428) = 1;
    goto LABEL_20;
  }

  *(a2 + 428) = v21 == 0;
  if (!v21)
  {
LABEL_20:
    v24 = *(a2 + 424);
    v25 = &(&v11[-(v21 & a7)])[-(v24 * (v22 & a6))];
    if (v20)
    {
      *(a2 + 8320) = v25[v21 - v24];
      if (!v23)
      {
LABEL_22:
        *(a2 + 8312) = 0;
        goto LABEL_25;
      }
    }

    else
    {
      *(a2 + 8320) = 0;
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    *(a2 + 8312) = v25[v24 * v22 - 1];
  }

LABEL_25:
  v845 = v13;
  *(a2 + 8725) = v15;
  v849 = a1 + 262760;
  *(a2 + 8724) = v16;
  *(a2 + 11048) = 0;
  if (v16 >= v15 || ((v16 + a7) & (v15 - 1)) != 0)
  {
    *(a2 + 11049) = 0;
    if (v16 <= v15)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(a2 + 11048) = 1;
    *(a2 + 11049) = 0;
    if (v16 <= v15)
    {
      goto LABEL_31;
    }
  }

  if (((v16 - 1) & a6) == 0)
  {
    *(a2 + 11049) = 1;
  }

LABEL_31:
  v26 = (a1 + 258048);
  *(a2 + 8544) = *(*(a1 + 264392) + 8 * a3[4]) + a7;
  *(a2 + 8552) = a2 + 8560 + (a6 & 0x1F);
  v27 = *v11;
  v887 = a2;
  v888 = a4;
  v839 = (a2 + 8288);
  v880 = *v11;
  v840 = v15;
  v838 = v16;
  v837 = v14;
  if ((*(a1 + 239056) & 0xFD) == 0)
  {
    if (*(a1 + 258216) && *(a1 + 258049))
    {
      write_segment_id(a1, (a2 + 416), v27, a4, a1 + 258048, v889 + 12490, 0);
      a2 = v887;
      a4 = v888;
    }

    if (*v26 && (*(a1 + 4 * (*(v27 + 167) & 7) + 258180) & 0x40) != 0)
    {
      v36 = 1;
      if (*(a1 + 258216))
      {
        goto LABEL_88;
      }

      goto LABEL_86;
    }

    v36 = v27[144];
    v37 = *(a2 + 8296);
    v38 = *(a2 + 8304);
    if (v38)
    {
      LODWORD(v38) = *(v38 + 144);
    }

    if (v37)
    {
      LODWORD(v37) = *(v37 + 144);
    }

    v39 = (*(a2 + 11064) + 6 * (v37 + v38) + 11870);
    if (v36)
    {
      v40 = &v39[v36];
      v41 = *(v40 - 1);
      v42 = *v40;
      v43 = *(a4 + 32);
      v44 = *(a4 + 40);
      v45 = v44 >> 8;
      if ((v41 & 0x80000000) == 0)
      {
        v46 = ((v45 * (v41 >> 6)) >> 1) - 4 * v36 + 8;
        od_ec_enc_normalize((a4 + 16), v43 + v44 - v46, 4 * v36 - ((v45 * (v42 >> 6)) >> 1) + v46 - 4);
        a4 = v888;
        if (!*(v888 + 48))
        {
          goto LABEL_58;
        }

LABEL_80:
        v63 = v39[2];
        v64 = (v63 >> 4) + 4;
        v65 = *v39;
        a2 = v887;
        if (v36 < 1)
        {
          v66 = v65 - (v65 >> v64);
        }

        else
        {
          v66 = v65 + ((0x8000 - v65) >> v64);
        }

        *v39 = v66;
        if (v63 < 0x20)
        {
          LOWORD(v63) = v63 + 1;
        }

        v39[2] = v63;
        if (*(a1 + 258216))
        {
LABEL_88:
          if ((*(v841 + 547) & 1) == 0 && (*(v841 + 544) & 1) == 0)
          {
            v67 = *(a1 + 263736);
            v68 = *(a2 + 416);
            v69 = *(a2 + 420);
            if (!(v68 & (*(v67 + 32) - 1) | v69 & (*(v67 + 32) - 1)))
            {
              *(v839 + 2885) = 0;
            }

            if (*(v67 + 28) == 15)
            {
              v70 = (v68 >> 3) & 2 | (v69 >> 4) & 1;
            }

            else
            {
              v70 = 0;
            }

            if (!v36)
            {
              v71 = a2 + 11173;
              if ((*(a2 + 11173 + v70) & 1) == 0)
              {
                if (*v849 >= 1)
                {
                  v72 = (2 * *(*(*(v841 + 616) + 8 * ((v69 & 0xFFFFFFF0) + *(v841 + 628) * (v68 & 0xFFFFFFF0))) + 167)) >> 12;
                  v73 = *v849 + 1;
                  do
                  {
                    v74 = *(a4 + 40);
                    v75 = (v74 >> 1) & 0x7F80 | 4;
                    v76 = 1 << (v73 - 2);
                    v77 = v74 - v75;
                    v78 = (v76 & v72) == 0;
                    if ((v76 & v72) != 0)
                    {
                      v79 = v77;
                    }

                    else
                    {
                      v79 = 0;
                    }

                    if (v78)
                    {
                      v80 = v77;
                    }

                    else
                    {
                      v80 = v75;
                    }

                    od_ec_enc_normalize((a4 + 16), *(a4 + 32) + v79, v80);
                    a4 = v888;
                    --v73;
                  }

                  while (v73 > 1);
                }

                *(v71 + v70) = 1;
                a2 = v887;
              }
            }
          }

          write_delta_q_params((a1 + 239056), a2 + 416, v36, a4);
          v82 = v887;
          result = v888;
          v83 = v845;
          if ((*(a1 + 239056) & 0xFD) != 0 || *(v841 + 543) != 1 || !*(v841 + 544))
          {
LABEL_234:
            v168 = result;
            v169 = a1 + 239056;
            v170 = v82 + 416;
            v171 = 1;
            goto LABEL_235;
          }

          v84 = *(v887 + 11064);
          v85 = **(v887 + 8280);
          v86 = (*(v85 + 167) >> 7) & 1;
          v87 = v84 + 6242;
          if (v86)
          {
            v88 = &v87[v86];
            v89 = *(v88 - 1);
            v90 = *v88;
            v91 = *(v888 + 32);
            v92 = *(v888 + 40);
            v93 = v92 >> 8;
            v94 = v874;
            if ((v89 & 0x80000000) == 0)
            {
              v95 = ((v93 * (v89 >> 6)) >> 1) + 4;
              v91 += v92 - v95;
              v96 = v95 - ((v93 * (v90 >> 6)) >> 1);
              goto LABEL_221;
            }
          }

          else
          {
            v90 = *v87;
            v91 = *(v888 + 32);
            v92 = *(v888 + 40);
            v93 = v92 >> 8;
            v94 = v874;
          }

          v96 = v92 + 4 * v86 - (((v90 >> 6) * v93) >> 1) - 4;
LABEL_221:
          od_ec_enc_normalize((v888 + 16), v91, v96);
          v82 = v887;
          result = v888;
          if (*(v888 + 48))
          {
            v172 = v84[6244];
            v173 = (v172 >> 4) + 4;
            v174 = v84[6242];
            if (v86)
            {
              v175 = v174 + ((0x8000 - v174) >> v173);
            }

            else
            {
              v175 = v174 - (v174 >> v173);
            }

            v84[6242] = v175;
            if (v172 < 0x20)
            {
              LOWORD(v172) = v172 + 1;
            }

            v84[6244] = v172;
          }

          if (v86)
          {
            LODWORD(v893) = *v94;
            av1_encode_dv(v888, (v85 + 8), &v893, v84 + 6099);
            v82 = v887;
            result = v888;
          }

          if ((*(v880 + 167) & 0x80) != 0)
          {
            goto LABEL_236;
          }

          goto LABEL_234;
        }

LABEL_86:
        if (*(a1 + 258049))
        {
          write_segment_id(a1, (a2 + 416), v880, a4, a1 + 258048, v889 + 12490, v36);
          a2 = v887;
          a4 = v888;
        }

        goto LABEL_88;
      }
    }

    else
    {
      v42 = *v39;
      v43 = *(a4 + 32);
      v44 = *(a4 + 40);
      v45 = v44 >> 8;
    }

    od_ec_enc_normalize((a4 + 16), v43, v44 + 4 * v36 - (((v42 >> 6) * v45) >> 1) - 4);
    a4 = v888;
    if (!*(v888 + 48))
    {
LABEL_58:
      a2 = v887;
      if (*(a1 + 258216))
      {
        goto LABEL_88;
      }

      goto LABEL_86;
    }

    goto LABEL_80;
  }

  v28 = v27[16];
  v29 = v27[17];
  if (v28 > 8)
  {
    goto LABEL_38;
  }

  if (v28 <= 1)
  {
    v28 = 1;
  }

  v30 = *(a1 + 4 * (v28 - 1) + 239296);
  if (v30 == -1)
  {
LABEL_38:
    *(a2 + 8360) = 0;
    if (v29 > 8)
    {
LABEL_43:
      v32 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    *(a2 + 8360) = a1 + 16 * v30 + 239344;
    if (v29 > 8)
    {
      goto LABEL_43;
    }
  }

  if (v29 <= 1)
  {
    v29 = 1;
  }

  v31 = *(a1 + 4 * (v29 - 1) + 239296);
  if (v31 == -1)
  {
    goto LABEL_43;
  }

  v32 = a1 + 16 * v31 + 239344;
LABEL_44:
  *(a2 + 8368) = v32;
  v865 = v27[2];
  v33 = *(v27 + 167);
  v34 = v33 & 7;
  v858 = *v27;
  v862 = *(a1 + 239549);
  v35 = (v33 & 0x80) != 0 || v27[16] > 0;
  v856 = v27[17];
  write_inter_segment_id(a1, a2 + 416, a4, (a1 + 258048), v889 + 12490, 0, 1);
  v47 = v888;
  if (*(v841 + 72) && (!*v26 || (*(a1 + 4 * v34 + 258180) & 0x40) == 0))
  {
    v48 = *v27;
    v49 = block_size_wide_3[v48];
    v50 = block_size_high_2[v48];
    if (v49 < v50)
    {
      v50 = v49;
    }

    if (v50 >= 8 && (!*v26 || (*(a1 + 4 * v34 + 258180) & 0xA0) == 0))
    {
      v51 = (*(v27 + 167) >> 6) & 1;
      v52 = *(v887 + 8296);
      v53 = *(v887 + 8304);
      if (v53)
      {
        v53 = (*(v53 + 167) >> 6) & 1;
      }

      if (v52)
      {
        v52 = (*(v52 + 167) >> 6) & 1;
      }

      v54 = (*(v887 + 11064) + 6 * (v52 + v53) + 11852);
      if (v51)
      {
        v55 = &v54[v51];
        v56 = *(v55 - 1);
        v57 = *v55;
        v58 = *(v888 + 32);
        v59 = *(v888 + 40);
        v60 = v59 >> 8;
        if ((v56 & 0x80000000) == 0)
        {
          v61 = ((v60 * (v56 >> 6)) >> 1) + 4;
          v58 += v59 - v61;
          v62 = v61 - ((v60 * (v57 >> 6)) >> 1);
          goto LABEL_115;
        }
      }

      else
      {
        v57 = *v54;
        v58 = *(v888 + 32);
        v59 = *(v888 + 40);
        v60 = v59 >> 8;
      }

      v62 = v59 + 4 * v51 - (((v57 >> 6) * v60) >> 1) - 4;
LABEL_115:
      od_ec_enc_normalize((v888 + 16), v58, v62);
      v47 = v888;
      if (*(v888 + 48))
      {
        v97 = v54[2];
        v98 = (v97 >> 4) + 4;
        v99 = *v54;
        if (v51)
        {
          v100 = v99 + ((0x8000 - v99) >> v98);
        }

        else
        {
          v100 = v99 - (v99 >> v98);
        }

        *v54 = v100;
        if (v97 < 0x20)
        {
          LOWORD(v97) = v97 + 1;
        }

        v54[2] = v97;
      }
    }
  }

  v868 = v34;
  if ((*(v27 + 167) & 0x40) != 0)
  {
    v103 = 1;
    v102 = a1;
    v101 = v887;
    goto LABEL_143;
  }

  v102 = a1;
  v101 = v887;
  if (*v26 && (*(a1 + 4 * v868 + 258180) & 0x40) != 0)
  {
    v103 = 1;
    goto LABEL_143;
  }

  v103 = v27[144];
  v104 = *(v887 + 8296);
  v105 = *(v887 + 8304);
  if (v105)
  {
    LODWORD(v105) = *(v105 + 144);
  }

  if (v104)
  {
    LODWORD(v104) = *(v104 + 144);
  }

  v106 = (*(v887 + 11064) + 6 * (v104 + v105) + 11870);
  if (!v103)
  {
    v109 = *v106;
    v110 = *(v47 + 32);
    v111 = *(v47 + 40);
    v112 = v111 >> 8;
LABEL_136:
    od_ec_enc_normalize((v47 + 16), v110, v111 + 4 * v103 - (((v109 >> 6) * v112) >> 1) - 4);
    v47 = v888;
    if (!*(v888 + 48))
    {
      goto LABEL_132;
    }

    goto LABEL_137;
  }

  v107 = &v106[v103];
  v108 = *(v107 - 1);
  v109 = *v107;
  v110 = *(v47 + 32);
  v111 = *(v47 + 40);
  v112 = v111 >> 8;
  if (v108 < 0)
  {
    goto LABEL_136;
  }

  v113 = ((v112 * (v108 >> 6)) >> 1) - 4 * v103 + 8;
  od_ec_enc_normalize((v47 + 16), v110 + v111 - v113, 4 * v103 - ((v112 * (v109 >> 6)) >> 1) + v113 - 4);
  v47 = v888;
  if (!*(v888 + 48))
  {
LABEL_132:
    v101 = v887;
    goto LABEL_143;
  }

LABEL_137:
  v114 = v106[2];
  v115 = (v114 >> 4) + 4;
  v116 = *v106;
  v101 = v887;
  if (v103 < 1)
  {
    v117 = v116 - (v116 >> v115);
  }

  else
  {
    v117 = v116 + ((0x8000 - v116) >> v115);
  }

  *v106 = v117;
  if (v114 < 0x20)
  {
    LOWORD(v114) = v114 + 1;
  }

  v106[2] = v114;
LABEL_143:
  write_inter_segment_id(v102, v101 + 416, v47, v26, v889 + 12490, v103, 0);
  v118 = v887;
  if ((*(v841 + 547) & 1) == 0 && (*(v841 + 544) & 1) == 0)
  {
    v119 = *(v849 + 976);
    v120 = *(v887 + 416);
    v121 = *(v887 + 420);
    if (!(v120 & (*(v119 + 32) - 1) | v121 & (*(v119 + 32) - 1)))
    {
      *(v839 + 2885) = 0;
    }

    if (*(v119 + 28) == 15)
    {
      v122 = (v120 >> 3) & 2 | (v121 >> 4) & 1;
    }

    else
    {
      v122 = 0;
    }

    if (!v103 && (*(v887 + 11173 + v122) & 1) == 0)
    {
      if (*v849 >= 1)
      {
        v123 = (2 * *(*(*(v841 + 616) + 8 * ((v121 & 0xFFFFFFF0) + *(v841 + 628) * (v120 & 0xFFFFFFF0))) + 167)) >> 12;
        v124 = *v849 + 1;
        do
        {
          v125 = *(v888 + 40);
          v126 = (v125 >> 1) & 0x7F80 | 4;
          v127 = 1 << (v124 - 2);
          v128 = v125 - v126;
          v129 = (v127 & v123) == 0;
          if ((v127 & v123) != 0)
          {
            v130 = v128;
          }

          else
          {
            v130 = 0;
          }

          if (v129)
          {
            v131 = v128;
          }

          else
          {
            v131 = v126;
          }

          od_ec_enc_normalize((v888 + 16), *(v888 + 32) + v130, v131);
          --v124;
        }

        while (v124 > 1);
      }

      *(v887 + 11173 + v122) = 1;
      v102 = a1;
      v118 = v887;
    }
  }

  write_delta_q_params(v102 + 59764, v118 + 416, v103, v888);
  result = v888;
  v82 = v887;
  v133 = *(v880 + 167);
  if ((v133 & 0x40) == 0 && (!*v26 || (v102[(v133 & 7) + 64545] & 0xA0) == 0))
  {
    v134 = *(v887 + 8304);
    v135 = *(v887 + 8296);
    v136 = *v839;
    if (v136 != 1 || !v839[1])
    {
      if ((v136 & 1) == 0 && !v839[1])
      {
        goto LABEL_177;
      }

      if (*v839)
      {
        v135 = *(v887 + 8304);
      }

      if ((*(v135 + 167) & 0x80) == 0)
      {
        v139 = (*(v887 + 11064) + 12 * (*(v135 + 16) < 1) + 11888);
        if (v35)
        {
          goto LABEL_185;
        }
      }

      else
      {
LABEL_177:
        v139 = (*(v887 + 11064) + 11888);
        if (v35)
        {
          goto LABEL_185;
        }
      }

      goto LABEL_178;
    }

    if ((*(v134 + 167) & 0x80) != 0)
    {
      v137 = 0;
      if ((*(v135 + 167) & 0x80) != 0)
      {
        goto LABEL_169;
      }
    }

    else
    {
      v137 = *(v134 + 16) < 1;
      if ((*(v135 + 167) & 0x80) != 0)
      {
LABEL_169:
        v138 = 0;
        goto LABEL_181;
      }
    }

    v138 = *(v135 + 16) < 1;
LABEL_181:
    v144 = v138 || v137;
    v78 = !v138 || !v137;
    v145 = 3;
    if (v78)
    {
      v145 = v144;
    }

    v139 = (*(v887 + 11064) + 6 * v145 + 11888);
    if (v35)
    {
LABEL_185:
      v146 = &v139[v35];
      v147 = *(v146 - 1);
      v140 = *v146;
      v141 = *(v888 + 32);
      v142 = *(v888 + 40);
      v143 = v142 >> 8;
      if ((v147 & 0x80000000) == 0)
      {
        v148 = ((v143 * (v147 >> 6)) >> 1) - 4 * v35 + 8;
        od_ec_enc_normalize((v888 + 16), v141 + v142 - v148, 4 * v35 - ((v143 * (v140 >> 6)) >> 1) + v148 - 4);
        v82 = v887;
        result = v888;
        if (!*(v888 + 48))
        {
          goto LABEL_195;
        }

        goto LABEL_189;
      }

LABEL_188:
      od_ec_enc_normalize((v888 + 16), v141, v142 + 4 * v35 - (((v140 >> 6) * v143) >> 1) - 4);
      v82 = v887;
      result = v888;
      if (!*(v888 + 48))
      {
        goto LABEL_195;
      }

LABEL_189:
      v149 = v139[2];
      v150 = (v149 >> 4) + 4;
      v151 = *v139;
      if (v35)
      {
        v152 = v151 + ((0x8000 - v151) >> v150);
      }

      else
      {
        v152 = v151 - (v151 >> v150);
      }

      *v139 = v152;
      if (v149 < 0x20)
      {
        LOWORD(v149) = v149 + 1;
      }

      v139[2] = v149;
      goto LABEL_195;
    }

LABEL_178:
    v140 = *v139;
    v141 = *(v888 + 32);
    v142 = *(v888 + 40);
    v143 = v142 >> 8;
    goto LABEL_188;
  }

LABEL_195:
  v83 = v845;
  if ((*(v880 + 167) & 0x40) != 0)
  {
    goto LABEL_236;
  }

  if (!v35)
  {
    v168 = result;
    v169 = a1 + 239056;
    v170 = v82 + 416;
    v171 = 0;
LABEL_235:
    write_intra_prediction_modes(v169, v170, v171, v168);
    v82 = v887;
    result = v888;
    goto LABEL_236;
  }

  v153 = v839 + 2762;
  *(v839 + 2762) = 0;
  v154 = *(v82 + 8304);
  v155 = *(v82 + 8296);
  v156 = *v839;
  v157 = v839[1];
  v158 = a1;
  if (v156 == 1 && ((*(v154 + 167) & 0x80) != 0 || *(v154 + 16) >= 1))
  {
    ++v153[*(v154 + 16)];
    v159 = *(v154 + 17);
    if (v159 >= 1)
    {
      ++v153[v159];
    }
  }

  if (v157 && ((*(v155 + 167) & 0x80) != 0 || *(v155 + 16) >= 1))
  {
    ++v153[*(v155 + 16)];
    v160 = *(v155 + 17);
    if (v160 >= 1)
    {
      ++v153[v160];
    }
  }

  v161 = **(v82 + 8280);
  v162 = v161[17];
  if (*v26 && (*(a1 + 4 * (*(v161 + 167) & 7) + 258180) & 0xE0) != 0)
  {
    goto LABEL_665;
  }

  if (*(v841 + 49) == 2)
  {
    v163 = *v161;
    v164 = block_size_wide_3[v163];
    v165 = block_size_high_2[v163];
    if (v164 < v165)
    {
      v165 = v164;
    }

    if (v165 >= 8)
    {
      if (!v156 || !v157)
      {
        if ((v156 & 1) == 0 && !v157)
        {
          v167 = 1;
          goto LABEL_453;
        }

        if (v156)
        {
          v155 = v154;
        }

        if (*(v155 + 17) <= 0)
        {
          v167 = *(v155 + 16) - 5 < 3;
          goto LABEL_453;
        }

        goto LABEL_447;
      }

      v166 = *(v155 + 17);
      if (*(v154 + 17) <= 0)
      {
        v353 = *(v154 + 16);
        v354 = v353 - 5;
        if (v166 <= 0)
        {
          v167 = (v354 < 3) ^ (*(v155 + 16) - 5 < 3);
          goto LABEL_453;
        }

        if (v354 < 3)
        {
LABEL_447:
          v167 = 3;
          goto LABEL_453;
        }

        v355 = (*(v154 + 167) >> 7) & 1;
        v356 = v353;
      }

      else
      {
        if (v166 > 0)
        {
          v167 = 4;
          goto LABEL_453;
        }

        v356 = *(v155 + 16);
        if ((v356 - 5) < 3)
        {
          goto LABEL_447;
        }

        v355 = (*(v155 + 167) >> 7) & 1;
        v356 = v356;
      }

      if (v356 > 0)
      {
        v355 = 1;
      }

      v167 = v355 ^ 3;
LABEL_453:
      v357 = (*(v82 + 11064) + 11342 + 6 * v167);
      if (v162 <= 0)
      {
        v358 = *v357;
        v359 = *(result + 32);
        v360 = *(result + 40);
        v361 = v360 >> 8;
      }

      else
      {
        v358 = v357[1];
        v359 = *(result + 32);
        v360 = *(result + 40);
        v361 = v360 >> 8;
        if ((*v357 & 0x80000000) == 0)
        {
          v362 = ((v361 * (*v357 >> 6)) >> 1) + 4;
          v359 += v360 - v362;
          v363 = v362 - ((v361 * (v358 >> 6)) >> 1);
          goto LABEL_461;
        }
      }

      v364 = (v358 >> 6) * v361;
      if (v162 >= 1)
      {
        v365 = 0;
      }

      else
      {
        v365 = -1;
      }

      v363 = v360 + 4 * v365 - (v364 >> 1);
LABEL_461:
      od_ec_enc_normalize((result + 16), v359, v363);
      v82 = v887;
      result = v888;
      if (*(v888 + 48))
      {
        v366 = v357[2];
        v367 = (v366 >> 4) + 4;
        v368 = *v357;
        if (v162 < 1)
        {
          v369 = v368 - (v368 >> v367);
        }

        else
        {
          v369 = v368 + ((0x8000 - v368) >> v367);
        }

        *v357 = v369;
        if (v366 < 0x20)
        {
          LOWORD(v366) = v366 + 1;
        }

        v357[2] = v366;
      }
    }
  }

  if (v162 >= 1)
  {
    if (v161[17] < 1)
    {
      v370 = 0;
    }

    else
    {
      v370 = (v161[17] < 5u) ^ (v161[16] > 4);
    }

    v381 = (*(v887 + 11064) + 6 * av1_get_comp_reference_type_context(v82 + 416) + 11480);
    v382 = &v381[v370 ^ 1];
    if (v370)
    {
      v383 = *v382;
      v384 = v888;
      v385 = *(v888 + 32);
      v386 = *(v888 + 40);
      v387 = v386 >> 8;
    }

    else
    {
      v390 = *(v382 - 1);
      v383 = *v382;
      v384 = v888;
      v385 = *(v888 + 32);
      v386 = *(v888 + 40);
      v387 = v386 >> 8;
      if ((v390 & 0x80000000) == 0)
      {
        v391 = ((v387 * (v390 >> 6)) >> 1) + 4;
        od_ec_enc_normalize((v888 + 16), v385 + v386 - v391, v391 - ((v387 * (v383 >> 6)) >> 1));
        v388 = v887;
        v389 = v888;
        if (!*(v888 + 48))
        {
          goto LABEL_497;
        }

LABEL_482:
        v392 = v381[2];
        v393 = (v392 >> 4) + 4;
        v394 = *v381;
        if (v370)
        {
          v395 = v394 - (v394 >> v393);
        }

        else
        {
          v395 = v394 + ((0x8000 - v394) >> v393);
        }

        *v381 = v395;
        if (v392 < 0x20)
        {
          LOWORD(v392) = v392 + 1;
        }

        v381[2] = v392;
LABEL_497:
        v404 = v161[16];
        v405 = v839[2766];
        if (v370)
        {
          v406 = v839[2764] + v839[2763] + v839[2765] + v405;
          v407 = v839[2768] + v839[2767] + v839[2769];
          v78 = v406 == v407;
          v408 = 2 * (v406 >= v407);
          if (v78)
          {
            v408 = 1;
          }

          v409 = (*(v388 + 11064) + 18 * v408 + 11510);
          if (v404 == 5)
          {
            v410 = *(*(v388 + 11064) + 18 * v408 + 11512);
            v411 = *(v389 + 32);
            v412 = *(v389 + 40);
            v413 = v412 >> 8;
            if ((*v409 & 0x80000000) == 0)
            {
              v423 = ((v413 * (*v409 >> 6)) >> 1) + 4;
              v411 += v412 - v423;
              v424 = v423 - ((v413 * (v410 >> 6)) >> 1);
              goto LABEL_514;
            }
          }

          else
          {
            v410 = *v409;
            v411 = *(v389 + 32);
            v412 = *(v389 + 40);
            v413 = v412 >> 8;
          }

          v425 = (v410 >> 6) * v413;
          if (v404 == 5)
          {
            v426 = 0;
          }

          else
          {
            v426 = -1;
          }

          v424 = v412 + 4 * v426 - (v425 >> 1);
LABEL_514:
          od_ec_enc_normalize((v389 + 16), v411, v424);
          v82 = v887;
          result = v888;
          if (*(v888 + 48))
          {
            v427 = v409[2];
            v428 = (v427 >> 4) + 4;
            v429 = *v409;
            if (v404 == 5)
            {
              v430 = v429 + ((0x8000 - v429) >> v428);
            }

            else
            {
              v430 = v429 - (v429 >> v428);
            }

            *v409 = v430;
            if (v427 < 0x20)
            {
              LOWORD(v427) = v427 + 1;
            }

            v409[2] = v427;
          }

          if (v404 == 5)
          {
            goto LABEL_665;
          }

          v431 = v161[17] - 5;
          v432 = v839[2764];
          v433 = v839[2766] + v839[2765];
          v78 = v433 == v432;
          v434 = 2 * (v433 <= v432);
          if (v78)
          {
            v434 = 1;
          }

          v435 = (*(v887 + 11064) + 18 * v434 + 11516);
          if (v431 > 0xFFFFFFFD)
          {
            v436 = *(*(v887 + 11064) + 18 * v434 + 11518);
            v437 = *(v888 + 32);
            v438 = *(v888 + 40);
            v439 = v438 >> 8;
            if ((*v435 & 0x80000000) == 0)
            {
              v468 = ((v439 * (*v435 >> 6)) >> 1) + 4;
              v437 += v438 - v468;
              v469 = v468 - ((v439 * (v436 >> 6)) >> 1);
              goto LABEL_557;
            }
          }

          else
          {
            v436 = *v435;
            v437 = *(v888 + 32);
            v438 = *(v888 + 40);
            v439 = v438 >> 8;
          }

          v470 = (v436 >> 6) * v439;
          if (v431 >= 0xFFFFFFFE)
          {
            v471 = 0;
          }

          else
          {
            v471 = -1;
          }

          v469 = v438 + 4 * v471 - (v470 >> 1);
LABEL_557:
          od_ec_enc_normalize((v888 + 16), v437, v469);
          v82 = v887;
          result = v888;
          if (*(v888 + 48))
          {
            v472 = v435[2];
            v473 = (v472 >> 4) + 4;
            v474 = *v435;
            if (v431 >= 0xFFFFFFFE)
            {
              v475 = v474 + ((0x8000 - v474) >> v473);
            }

            else
            {
              v475 = v474 - (v474 >> v473);
            }

            *v435 = v475;
            if (v472 < 0x20)
            {
              LOWORD(v472) = v472 + 1;
            }

            v435[2] = v472;
          }

          if (v431 >= 0xFFFFFFFE)
          {
            v509 = v161[17] == 4;
            v510 = v839[2765];
            v511 = v839[2766];
            v78 = v510 == v511;
            v512 = 2 * (v510 >= v511);
            if (v78)
            {
              v512 = 1;
            }

            v513 = *(v887 + 11064) + 18 * v512;
            v514 = 11522;
LABEL_625:
            v520 = (v513 + v514);
LABEL_626:
            aom_write_symbol(result, v509, v520, 2);
            v82 = v887;
            result = v888;
            goto LABEL_665;
          }

          goto LABEL_665;
        }

        v414 = v404 - 5;
        v415 = v839[2764] + v839[2763];
        v416 = v405 + v839[2765];
        v78 = v415 == v416;
        v417 = 2 * (v415 >= v416);
        if (v78)
        {
          v417 = 1;
        }

        v418 = (*(v388 + 11064) + 18 * v417 + 11564);
        if (v414 > 0xFFFFFFFD)
        {
          v419 = *(*(v388 + 11064) + 18 * v417 + 11566);
          v420 = *(v389 + 32);
          v421 = *(v389 + 40);
          v422 = v421 >> 8;
          if ((*v418 & 0x80000000) == 0)
          {
            v460 = ((v422 * (*v418 >> 6)) >> 1) + 4;
            v420 += v421 - v460;
            v461 = v460 - ((v422 * (v419 >> 6)) >> 1);
            goto LABEL_548;
          }
        }

        else
        {
          v419 = *v418;
          v420 = *(v389 + 32);
          v421 = *(v389 + 40);
          v422 = v421 >> 8;
        }

        v462 = (v419 >> 6) * v422;
        if (v414 >= 0xFFFFFFFE)
        {
          v463 = 0;
        }

        else
        {
          v463 = -1;
        }

        v461 = v421 + 4 * v463 - (v462 >> 1);
LABEL_548:
        od_ec_enc_normalize((v389 + 16), v420, v461);
        if (*(v888 + 48))
        {
          v464 = v418[2];
          v465 = (v464 >> 4) + 4;
          v466 = *v418;
          if (v414 >= 0xFFFFFFFE)
          {
            v467 = v466 + ((0x8000 - v466) >> v465);
          }

          else
          {
            v467 = v466 - (v466 >> v465);
          }

          *v418 = v467;
          if (v464 < 0x20)
          {
            LOWORD(v464) = v464 + 1;
          }

          v418[2] = v464;
        }

        v492 = v161[16];
        v493 = *(v887 + 11064) + 11564;
        if (v414 >= 0xFFFFFFFE)
        {
          v504 = v839[2765];
          v505 = v839[2766];
          v78 = v504 == v505;
          v506 = 2 * (v504 >= v505);
          if (v78)
          {
            v506 = 1;
          }

          v497 = (v493 + 18 * v506 + 12);
          if (v492 != 4)
          {
            goto LABEL_587;
          }
        }

        else
        {
          v494 = v839[2763];
          v495 = v839[2764];
          v78 = v494 == v495;
          v496 = 2 * (v494 >= v495);
          if (v78)
          {
            v496 = 1;
          }

          v497 = (v493 + 18 * v496 + 6);
          if (v492 != 2)
          {
LABEL_587:
            v498 = 0;
            v499 = *v497;
            v500 = *(v888 + 32);
            v501 = *(v888 + 40);
            v502 = v501 >> 8;
            v503 = -4;
            goto LABEL_628;
          }
        }

        v499 = v497[1];
        v500 = *(v888 + 32);
        v501 = *(v888 + 40);
        v502 = v501 >> 8;
        if ((*v497 & 0x80000000) == 0)
        {
          v507 = ((v502 * (*v497 >> 6)) >> 1) + 4;
          v500 += v501 - v507;
          v508 = v507 - ((v502 * (v499 >> 6)) >> 1);
          v498 = 1;
          goto LABEL_629;
        }

        v503 = 0;
        v498 = 1;
LABEL_628:
        v508 = v501 + v503 - (((v499 >> 6) * v502) >> 1);
LABEL_629:
        od_ec_enc_normalize((v888 + 16), v500, v508);
        if (*(v888 + 48))
        {
          v527 = v497[2];
          v528 = (v527 >> 4) + 4;
          v529 = *v497;
          if (v498)
          {
            v530 = v529 + ((0x8000 - v529) >> v528);
          }

          else
          {
            v530 = v529 - (v529 >> v528);
          }

          *v497 = v530;
          if (v527 < 0x20)
          {
            LOWORD(v527) = v527 + 1;
          }

          v497[2] = v527;
        }

        v531 = v161[17];
        v532 = v839[2768] + v839[2767];
        v533 = v839[2769];
        v78 = v532 == v533;
        v534 = 2 * (v532 >= v533);
        if (v78)
        {
          v534 = 1;
        }

        v535 = (*(v887 + 11064) + 12 * v534 + 11618);
        if (v531 == 7)
        {
          v536 = *(*(v887 + 11064) + 12 * v534 + 11620);
          v537 = *(v888 + 32);
          v538 = *(v888 + 40);
          v539 = v538 >> 8;
          if ((*v535 & 0x80000000) == 0)
          {
            v540 = ((v539 * (*v535 >> 6)) >> 1) + 4;
            v537 += v538 - v540;
            v541 = v540 - ((v539 * (v536 >> 6)) >> 1);
LABEL_647:
            od_ec_enc_normalize((v888 + 16), v537, v541);
            v82 = v887;
            result = v888;
            if (*(v888 + 48))
            {
              v544 = v535[2];
              v545 = (v544 >> 4) + 4;
              v546 = *v535;
              if (v531 == 7)
              {
                v547 = v546 + ((0x8000 - v546) >> v545);
              }

              else
              {
                v547 = v546 - (v546 >> v545);
              }

              *v535 = v547;
              if (v544 < 0x20)
              {
                LOWORD(v544) = v544 + 1;
              }

              v535[2] = v544;
            }

            if (v531 != 7)
            {
              v548 = v161[17];
              v549 = v839[2767];
              v550 = v839[2768];
              v78 = v549 == v550;
              v551 = 2 * (v549 >= v550);
              if (v78)
              {
                v551 = 1;
              }

              v552 = (*(v887 + 11064) + 12 * v551 + 11624);
              od_ec_encode_cdf_q15(v888 + 16, v548 == 6, v552, 2);
              v82 = v887;
              result = v888;
              if (*(v888 + 48))
              {
                v553 = v552[2];
                v554 = (v553 >> 4) + 4;
                v555 = *v552;
                if (v548 == 6)
                {
                  v556 = v555 + ((0x8000 - v555) >> v554);
                }

                else
                {
                  v556 = v555 - (v555 >> v554);
                }

                *v552 = v556;
                if (v553 < 0x20)
                {
                  LOWORD(v553) = v553 + 1;
                }

                v552[2] = v553;
              }
            }

            goto LABEL_665;
          }
        }

        else
        {
          v536 = *v535;
          v537 = *(v888 + 32);
          v538 = *(v888 + 40);
          v539 = v538 >> 8;
        }

        v542 = (v536 >> 6) * v539;
        if (v531 == 7)
        {
          v543 = 0;
        }

        else
        {
          v543 = -1;
        }

        v541 = v538 + 4 * v543 - (v542 >> 1);
        goto LABEL_647;
      }
    }

    od_ec_enc_normalize((v384 + 16), v385, v386 - (4 * v370 + (((v383 >> 6) * v387) >> 1)));
    v388 = v887;
    v389 = v888;
    if (!*(v888 + 48))
    {
      goto LABEL_497;
    }

    goto LABEL_482;
  }

  v371 = v161[16] - 8;
  v132.i32[0] = *(v839 + 2763);
  v372 = vaddv_s16(*&vmovl_u8(v132));
  v373 = v839[2768] + v839[2767] + v839[2769];
  v374 = 2 * (v373 <= v372);
  if (v373 == v372)
  {
    v374 = 1;
  }

  v375 = *(v82 + 11064) + 36 * v374;
  v376 = (v375 + 11372);
  if (v371 > 0xFFFFFFFC)
  {
    v377 = *(v375 + 11374);
    v378 = *(result + 32);
    v379 = *(result + 40);
    v380 = v379 >> 8;
    if ((*v376 & 0x80000000) == 0)
    {
      v396 = ((v380 * (*v376 >> 6)) >> 1) + 4;
      v378 += v379 - v396;
      v397 = v396 - ((v380 * (v377 >> 6)) >> 1);
      goto LABEL_490;
    }
  }

  else
  {
    v377 = *v376;
    v378 = *(result + 32);
    v379 = *(result + 40);
    v380 = v379 >> 8;
  }

  v398 = (v377 >> 6) * v380;
  if (v371 >= 0xFFFFFFFD)
  {
    v399 = 0;
  }

  else
  {
    v399 = -1;
  }

  v397 = v379 + 4 * v399 - (v398 >> 1);
LABEL_490:
  od_ec_enc_normalize((result + 16), v378, v397);
  if (*(v888 + 48))
  {
    v400 = v376[2];
    v401 = (v400 >> 4) + 4;
    v402 = *v376;
    if (v371 >= 0xFFFFFFFD)
    {
      v403 = v402 + ((0x8000 - v402) >> v401);
    }

    else
    {
      v403 = v402 - (v402 >> v401);
    }

    *v376 = v403;
    if (v400 < 0x20)
    {
      LOWORD(v400) = v400 + 1;
    }

    v376[2] = v400;
  }

  v440 = v161[16];
  if (v371 < 0xFFFFFFFD)
  {
    v441 = v440 - 5;
    v442 = v839[2764] + v839[2763];
    v443 = v839[2766] + v839[2765];
    v78 = v442 == v443;
    v444 = 2 * (v442 >= v443);
    if (v78)
    {
      v444 = 1;
    }

    v445 = *(v887 + 11064) + 36 * v444;
    v446 = (v445 + 11384);
    if (v441 > 0xFFFFFFFD)
    {
      v447 = *(v445 + 11386);
      v448 = *(v888 + 32);
      v449 = *(v888 + 40);
      v450 = v449 >> 8;
      if ((*v446 & 0x80000000) == 0)
      {
        v476 = ((v450 * (*v446 >> 6)) >> 1) + 4;
        v448 += v449 - v476;
        v477 = v476 - ((v450 * (v447 >> 6)) >> 1);
LABEL_566:
        od_ec_enc_normalize((v888 + 16), v448, v477);
        result = v888;
        if (*(v888 + 48))
        {
          v480 = v446[2];
          v481 = (v480 >> 4) + 4;
          v482 = *v446;
          if (v441 >= 0xFFFFFFFE)
          {
            v483 = v482 + ((0x8000 - v482) >> v481);
          }

          else
          {
            v483 = v482 - (v482 >> v481);
          }

          *v446 = v483;
          if (v480 < 0x20)
          {
            LOWORD(v480) = v480 + 1;
          }

          v446[2] = v480;
        }

        v515 = v161[16];
        v516 = *(v887 + 11064) + 11372;
        if (v441 > 0xFFFFFFFD)
        {
          v509 = v515 != 3;
          v521 = v839[2765];
          v522 = v839[2766];
          v78 = v521 == v522;
          v523 = 2 * (v521 >= v522);
          if (v78)
          {
            v523 = 1;
          }

          v520 = (v516 + 36 * v523 + 24);
        }

        else
        {
          v509 = v515 != 1;
          v517 = v839[2763];
          v518 = v839[2764];
          v78 = v517 == v518;
          v519 = 2 * (v517 >= v518);
          if (v78)
          {
            v519 = 1;
          }

          v520 = (v516 + 36 * v519 + 18);
        }

        goto LABEL_626;
      }
    }

    else
    {
      v447 = *v446;
      v448 = *(v888 + 32);
      v449 = *(v888 + 40);
      v450 = v449 >> 8;
    }

    v478 = (v447 >> 6) * v450;
    if (v441 >= 0xFFFFFFFE)
    {
      v479 = 0;
    }

    else
    {
      v479 = -1;
    }

    v477 = v449 + 4 * v479 - (v478 >> 1);
    goto LABEL_566;
  }

  v451 = v839[2768] + v839[2767];
  v452 = v839[2769];
  v78 = v451 == v452;
  v453 = 2 * (v451 >= v452);
  if (v78)
  {
    v453 = 1;
  }

  v454 = *(v887 + 11064) + 36 * v453;
  v455 = (v454 + 11378);
  if (v440 == 7)
  {
    v456 = *(v454 + 11380);
    v457 = *(v888 + 32);
    v458 = *(v888 + 40);
    v459 = v458 >> 8;
    if ((*v455 & 0x80000000) == 0)
    {
      v484 = ((v459 * (*v455 >> 6)) >> 1) + 4;
      v457 += v458 - v484;
      v485 = v484 - ((v459 * (v456 >> 6)) >> 1);
      goto LABEL_575;
    }
  }

  else
  {
    v456 = *v455;
    v457 = *(v888 + 32);
    v458 = *(v888 + 40);
    v459 = v458 >> 8;
  }

  v486 = (v456 >> 6) * v459;
  if (v440 == 7)
  {
    v487 = 0;
  }

  else
  {
    v487 = -1;
  }

  v485 = v458 + 4 * v487 - (v486 >> 1);
LABEL_575:
  od_ec_enc_normalize((v888 + 16), v457, v485);
  v82 = v887;
  result = v888;
  if (*(v888 + 48))
  {
    v488 = v455[2];
    v489 = (v488 >> 4) + 4;
    v490 = *v455;
    if (v440 == 7)
    {
      v491 = v490 + ((0x8000 - v490) >> v489);
    }

    else
    {
      v491 = v490 - (v490 >> v489);
    }

    *v455 = v491;
    if (v488 < 0x20)
    {
      LOWORD(v488) = v488 + 1;
    }

    v455[2] = v488;
  }

  if (v440 != 7)
  {
    v509 = v161[16] == 6;
    v524 = v839[2767];
    v525 = v839[2768];
    v78 = v524 == v525;
    v526 = 2 * (v524 >= v525);
    if (v78)
    {
      v526 = 1;
    }

    v513 = *(v887 + 11064) + 36 * v526;
    v514 = 11402;
    goto LABEL_625;
  }

LABEL_665:
  v557 = *(v874 + 76);
  v558 = v880;
  if (v880[17] >= 1)
  {
    v559 = v557 & 7;
    if ((v557 & 4) != 0)
    {
      v559 = 4;
    }

    v557 = compound_mode_ctx_map[5 * (v557 >> 5) + v559];
  }

  v560 = v865;
  if (*v26 && (*(a1 + 4 * v868 + 258180) & 0x40) != 0)
  {
    goto LABEL_778;
  }

  v561 = (v865 - 17);
  if (v561 <= 7)
  {
    v567 = (*(v82 + 11064) + 18 * v557 + 0x2000);
    v568 = (v865 - 17);
    if (v865 == 17)
    {
      v571 = *v567;
      v572 = *(result + 32);
      v573 = *(result + 40);
      v574 = v573 >> 8;
    }

    else
    {
      v569 = &v567[(v865 - 17)];
      v570 = *(v569 - 1);
      v571 = *v569;
      v572 = *(result + 32);
      v573 = *(result + 40);
      v574 = v573 >> 8;
      if ((v570 & 0x80000000) == 0)
      {
        v575 = 4 * v568;
        v576 = ((v574 * (v570 >> 6)) >> 1) - v575 + 32;
        v572 += v573 - v576;
        v577 = v575 - ((v574 * (v571 >> 6)) >> 1) + v576;
        goto LABEL_680;
      }
    }

    v577 = v573 + 4 * v568 - (((v571 >> 6) * v574) >> 1);
LABEL_680:
    od_ec_enc_normalize((result + 16), v572, v577 - 28);
    v82 = v887;
    result = v888;
    if (!*(v888 + 48))
    {
      goto LABEL_709;
    }

    v578 = v567 + 8;
    v579 = v567[8];
    v580 = (v579 >> 4) + 5;
    v581 = *v567;
    if (v865 == 17)
    {
      *v567 = v581 - (v581 >> v580);
      v582 = v567[1];
    }

    else
    {
      *v567 = v581 + ((0x8000 - v581) >> v580);
      v582 = v567[1];
      if ((v865 - 17) != 1)
      {
        v567[1] = v582 + ((0x8000 - v582) >> v580);
        v583 = v567[2];
        if ((v865 - 17) > 2u)
        {
          v567[2] = v583 + ((0x8000 - v583) >> v580);
          v584 = v567[3];
          if ((v865 - 17) != 3)
          {
            v567[3] = v584 + ((0x8000 - v584) >> v580);
            v585 = v567[4];
            if ((v865 - 17) > 4u)
            {
              v567[4] = v585 + ((0x8000 - v585) >> v580);
              v586 = v567[5];
              if ((v865 - 17) != 5)
              {
                v587 = v586 + ((0x8000 - v586) >> v580);
                v590 = v567[6];
                v589 = v567 + 6;
                v588 = v590;
                *(v589 - 1) = v587;
                if ((v865 - 17) == 7)
                {
                  v591 = v588 + ((0x8000 - v588) >> v580);
LABEL_705:
                  *v589 = v591;
LABEL_706:
                  if (v579 < 0x20)
                  {
                    LOWORD(v579) = v579 + 1;
                  }

                  *v578 = v579;
                  goto LABEL_709;
                }

LABEL_704:
                v591 = v588 - (v588 >> v580);
                goto LABEL_705;
              }

LABEL_703:
              v600 = v586 - (v586 >> v580);
              v601 = v567[6];
              v589 = v567 + 6;
              v588 = v601;
              *(v589 - 1) = v600;
              goto LABEL_704;
            }

LABEL_702:
            v567[4] = v585 - (v585 >> v580);
            v586 = v567[5];
            goto LABEL_703;
          }

LABEL_701:
          v567[3] = v584 - (v584 >> v580);
          v585 = v567[4];
          goto LABEL_702;
        }

LABEL_700:
        v567[2] = v583 - (v583 >> v580);
        v584 = v567[3];
        goto LABEL_701;
      }
    }

    v567[1] = v582 - (v582 >> v580);
    v583 = v567[2];
    goto LABEL_700;
  }

  if (v561 < 0xFC)
  {
    goto LABEL_709;
  }

  v562 = (v889 + 6 * (v557 & 7) + 8090);
  if (v865 == 16)
  {
    v563 = *v562;
    v564 = *(result + 32);
    v565 = *(result + 40);
    v566 = v565 >> 8;
  }

  else
  {
    v563 = *(v889 + 6 * (v557 & 7) + 8092);
    v564 = *(result + 32);
    v565 = *(result + 40);
    v566 = v565 >> 8;
    if ((*v562 & 0x80000000) == 0)
    {
      v592 = ((v566 * (*v562 >> 6)) >> 1) + 4;
      v564 += v565 - v592;
      v593 = v592 - ((v566 * (v563 >> 6)) >> 1);
      goto LABEL_695;
    }
  }

  v594 = (v563 >> 6) * v566;
  if (v865 == 16)
  {
    v595 = -1;
  }

  else
  {
    v595 = 0;
  }

  v593 = v565 + 4 * v595 - (v594 >> 1);
LABEL_695:
  od_ec_enc_normalize((result + 16), v564, v593);
  v82 = v887;
  result = v888;
  if (*(v888 + 48))
  {
    v596 = *(v889 + 6 * (v557 & 7) + 8094);
    v597 = (v596 >> 4) + 4;
    v598 = *v562;
    if (v865 == 16)
    {
      v599 = v598 - (v598 >> v597);
    }

    else
    {
      v599 = v598 + ((0x8000 - v598) >> v597);
    }

    *v562 = v599;
    if (v596 < 0x20)
    {
      LOWORD(v596) = v596 + 1;
    }

    *(v889 + 6 * (v557 & 7) + 8094) = v596;
  }

  if (v865 == 16)
  {
    goto LABEL_718;
  }

  v621 = (v889 + 6 * ((v557 >> 3) & 1) + 8126);
  od_ec_encode_cdf_q15(v888 + 16, v865 != 15, v621, 2);
  result = v888;
  if (*(v888 + 48))
  {
    v622 = *(v889 + 6 * ((v557 >> 3) & 1) + 8130);
    v623 = (v622 >> 4) + 4;
    v624 = *v621;
    if (v865 == 15)
    {
      v625 = v624 - (v624 >> v623);
    }

    else
    {
      v625 = v624 + ((0x8000 - v624) >> v623);
    }

    *v621 = v625;
    if (v622 < 0x20)
    {
      LOWORD(v622) = v622 + 1;
    }

    *(v889 + 6 * ((v557 >> 3) & 1) + 8130) = v622;
  }

  v82 = v887;
  if (v865 == 15)
  {
    goto LABEL_817;
  }

  v635 = (v889 + 6 * (v557 >> 4) + 8138);
  od_ec_encode_cdf_q15(v888 + 16, v865 != 13, v635, 2);
  v82 = v887;
  result = v888;
  if (*(v888 + 48))
  {
    v578 = (v889 + 6 * (v557 >> 4) + 8142);
    v579 = *v578;
    v636 = (v579 >> 4) + 4;
    v637 = *v635;
    if (v865 == 13)
    {
      v638 = v637 - (v637 >> v636);
    }

    else
    {
      v638 = v637 + ((0x8000 - v637) >> v636);
    }

    *v635 = v638;
    goto LABEL_706;
  }

LABEL_709:
  if ((v865 & 0xFFFFFFF7) != 0x10 && (v865 > 0x16 || ((1 << v865) & 0x644000) == 0))
  {
    goto LABEL_778;
  }

LABEL_718:
  v602 = v880[2];
  if (v602 > 0x18)
  {
    goto LABEL_778;
  }

  v603 = 1 << v602;
  if ((v603 & 0x644000) != 0)
  {
    if (*(v874 + 40) < 3u)
    {
      goto LABEL_778;
    }

    v604 = v889 + 8174;
    if (*(v874 + 34) <= 0x27Fu)
    {
      v605 = 2 * (*(v874 + 36) < 0x280u);
    }

    else
    {
      v605 = *(v874 + 36) < 0x280u;
    }

    v606 = (v604 + 6 * v605);
    v607 = *(v880 + 167) & 0x30;
    if (v607)
    {
      v608 = v606[1];
      v609 = *(result + 32);
      v610 = *(result + 40);
      v611 = v610 >> 8;
      if ((*v606 & 0x80000000) == 0)
      {
        v612 = ((v611 * (*v606 >> 6)) >> 1) + 4;
        v609 += v610 - v612;
        v613 = v612 - ((v611 * (v608 >> 6)) >> 1);
        goto LABEL_743;
      }
    }

    else
    {
      v608 = *v606;
      v609 = *(result + 32);
      v610 = *(result + 40);
      v611 = v610 >> 8;
    }

    v626 = (v608 >> 6) * v611;
    if (v607)
    {
      v627 = 0;
    }

    else
    {
      v627 = -1;
    }

    v613 = v610 + 4 * v627 - (v626 >> 1);
LABEL_743:
    od_ec_enc_normalize((result + 16), v609, v613);
    v82 = v887;
    result = v888;
    if (*(v888 + 48))
    {
      v628 = v606[2];
      v629 = (v628 >> 4) + 4;
      v630 = *v606;
      if (v607)
      {
        v631 = v630 + ((0x8000 - v630) >> v629);
      }

      else
      {
        v631 = v630 - (v630 >> v629);
      }

      *v606 = v631;
      if (v628 < 0x20)
      {
        LOWORD(v628) = v628 + 1;
      }

      v606[2] = v628;
    }

    v632 = *(v880 + 167) & 0x30;
    v158 = a1;
    v560 = v865;
    if (v632 && *(v874 + 40) >= 4u)
    {
      v633 = *(v874 + 36);
      v634 = *(v874 + 38);
      goto LABEL_768;
    }

    goto LABEL_778;
  }

  if ((v603 & 0x1010000) != 0 && *(v874 + 40) >= 2u)
  {
    v604 = v889 + 8174;
    if (*(v874 + 32) <= 0x27Fu)
    {
      v614 = 2 * (*(v874 + 34) < 0x280u);
    }

    else
    {
      v614 = *(v874 + 34) < 0x280u;
    }

    v615 = *(v880 + 167) & 0x30;
    v616 = (v604 + 6 * v614);
    od_ec_encode_cdf_q15(result + 16, v615 != 0, v616, 2);
    result = v888;
    if (*(v888 + 48))
    {
      v617 = v616[2];
      v618 = (v617 >> 4) + 4;
      v619 = *v616;
      if (v615)
      {
        v620 = v619 + ((0x8000 - v619) >> v618);
      }

      else
      {
        v620 = v619 - (v619 >> v618);
      }

      *v616 = v620;
      if (v617 < 0x20)
      {
        LOWORD(v617) = v617 + 1;
      }

      v616[2] = v617;
    }

    v632 = *(v880 + 167) & 0x30;
    v82 = v887;
    if (v632)
    {
      if (*(v874 + 40) >= 3u)
      {
        v633 = *(v874 + 34);
        v634 = *(v874 + 36);
LABEL_768:
        v639 = v634 < 0x280;
        if (v633 <= 0x27F)
        {
          v640 = 2 * v639;
        }

        else
        {
          v640 = v639;
        }

        v641 = (v604 + 6 * v640);
        od_ec_encode_cdf_q15(result + 16, v632 != 16, v641, 2);
        v82 = v887;
        result = v888;
        if (*(v888 + 48))
        {
          v642 = v641[2];
          v643 = (v642 >> 4) + 4;
          v644 = *v641;
          if (v632 == 16)
          {
            v645 = v644 - (v644 >> v643);
          }

          else
          {
            v645 = v644 + ((0x8000 - v644) >> v643);
          }

          *v641 = v645;
          if (v642 < 0x20)
          {
            LOWORD(v642) = v642 + 1;
          }

          v641[2] = v642;
        }
      }
    }
  }

LABEL_778:
  if ((v560 & 0xFFFFFFF7) == 0x10)
  {
    LODWORD(v893) = 0;
    v646 = *(v82 + 16760);
    v647 = **(v82 + 8280);
    v648 = (*(v647 + 167) >> 4) & 3;
    if (*(v647 + 2) - 21 < 2)
    {
      ++v648;
    }

    v649 = *(v647 + 17);
    if (v856 >= 1)
    {
      if (v649 <= 0)
      {
        v669 = *(v646 + 40);
        v670 = (v646 + 8 * v648);
        v650 = (v646 + 4 * *(v647 + 16) + 44);
        if (v648 < v669)
        {
          v650 = v670;
        }
      }

      else
      {
        v650 = (v646 + 8 * v648);
      }

      LODWORD(v893) = *v650;
      av1_encode_mv(v158, result, v82, v880 + 4, &v893, (v889 + 11912), v862);
      LODWORD(v893) = 0;
      v671 = *(v887 + 16760);
      v672 = **(v887 + 8280);
      v673 = (*(v672 + 167) >> 4) & 3;
      if (*(v672 + 2) - 21 < 2)
      {
        ++v673;
      }

      v674 = (v671 + 8 * v673);
      if (*(v672 + 17) <= 0)
      {
        v676 = *(v671 + 40);
        v675 = (v671 + 4 * *(v672 + 16) + 44);
        if (v673 < v676)
        {
          v675 = v674;
        }
      }

      else
      {
        v675 = v674 + 1;
      }

      LODWORD(v893) = *v675;
      av1_encode_mv(v158, v888, v887, v880 + 6, &v893, (v889 + 11912), v862);
      result = v888;
      goto LABEL_816;
    }

    v657 = (v646 + 8 * v648);
    v655 = result;
    if (v649 <= 0)
    {
      v658 = *(v646 + 40);
      v659 = v646 + 4 * *(v647 + 16) + 44;
      if (v648 >= v658)
      {
        v657 = v659;
      }
    }

    LODWORD(v893) = *v657;
    v660 = (v880 + 8);
    v661 = (v889 + 11912);
    v662 = v158;
    v651 = v862;
  }

  else
  {
    v651 = v862;
    if (v560 == 21 || v560 == 19)
    {
      LODWORD(v893) = 0;
      v652 = *(v82 + 16760);
      v653 = **(v82 + 8280);
      v654 = (*(v653 + 167) >> 4) & 3;
      if (*(v653 + 2) - 21 < 2)
      {
        ++v654;
      }

      v655 = result;
      if (*(v653 + 17) < 1)
      {
        v667 = *(v652 + 40);
        v668 = (v652 + 8 * v654);
        v656 = (v652 + 4 * *(v653 + 16) + 44);
        if (v654 < v667)
        {
          v656 = v668;
        }
      }

      else
      {
        v656 = (v652 + 8 * v654 + 4);
      }

      LODWORD(v893) = *v656;
      v660 = (v880 + 12);
    }

    else
    {
      if ((v560 & 0xFFFFFFFD) != 0x14)
      {
        goto LABEL_817;
      }

      LODWORD(v893) = 0;
      v663 = *(v82 + 16760);
      v664 = **(v82 + 8280);
      v665 = (*(v664 + 167) >> 4) & 3;
      if (*(v664 + 2) - 21 < 2)
      {
        ++v665;
      }

      v655 = result;
      if (*(v664 + 17) < 1)
      {
        v677 = *(v663 + 40);
        v678 = (v663 + 8 * v665);
        v666 = (v663 + 4 * *(v664 + 16) + 44);
        if (v665 < v677)
        {
          v666 = v678;
        }
      }

      else
      {
        v666 = (v663 + 8 * v665);
      }

      LODWORD(v893) = *v666;
      v660 = (v880 + 8);
    }

    v661 = (v889 + 11912);
    v662 = v158;
  }

  av1_encode_mv(v662, v655, v82, v660, &v893, v661, v651);
  result = v888;
LABEL_816:
  v82 = v887;
LABEL_817:
  if (*(v841 + 49) != 1 && *(*(v849 + 976) + 62) && *v880 - 10 >= 0xFFFFFFF9 && v880[2] - 17 >= 0xFFFFFFFC && v880[16] >= 1)
  {
    v679 = v880[17];
    if (v880[17] > 0)
    {
      goto LABEL_834;
    }

    v680 = size_group_lookup_0[v858];
    v681 = (v889 + 6 * size_group_lookup_0[v858] + 9216);
    od_ec_encode_cdf_q15(result + 16, v679 == 0, v681, 2);
    result = v888;
    if (*(v888 + 48))
    {
      v682 = v681[2];
      v683 = (v682 >> 4) + 4;
      v684 = *v681;
      if (v679)
      {
        v685 = v684 - (v684 >> v683);
      }

      else
      {
        v685 = v684 + ((0x8000 - v684) >> v683);
      }

      *v681 = v685;
      if (v682 < 0x20)
      {
        LOWORD(v682) = v682 + 1;
      }

      v681[2] = v682;
    }

    v82 = v887;
    v558 = v880;
    if (!v679)
    {
      v708 = v880[64];
      v709 = (v889 + 10 * v680 + 9372);
      od_ec_encode_cdf_q15(v888 + 16, v708, v709, 4);
      result = v888;
      if (!*(v888 + 48))
      {
LABEL_1060:
        v82 = v887;
        v558 = v880;
        if (av1_wedge_params_lookup[8 * v858] >= 1)
        {
          aom_write_symbol(v888, (*(v880 + 167) >> 10) & 1, (v889 + 6 * v858 + 9240), 2);
          v82 = v887;
          result = v888;
          if ((*(v880 + 167) & 0x400) != 0)
          {
            aom_write_symbol(v888, v880[65], (v889 + 34 * v858 + 8468), 16);
            v82 = v887;
            result = v888;
          }
        }

        goto LABEL_833;
      }

      v710 = *(v889 + 10 * v680 + 9380);
      v711 = (v710 >> 4) + 5;
      v712 = *v709;
      if (v708 <= 0)
      {
        *v709 = v712 - (v712 >> v711);
        v713 = *(v889 + 10 * v680 + 9374);
      }

      else
      {
        *v709 = v712 + ((0x8000 - v712) >> v711);
        v713 = *(v889 + 10 * v680 + 9374);
        if (v708 != 1)
        {
          *(v889 + 10 * v680 + 9374) = v713 + ((0x8000 - v713) >> v711);
          v714 = *(v889 + 10 * v680 + 9376);
          if (v708 > 2)
          {
            v715 = v714 + ((0x8000 - v714) >> v711);
LABEL_1057:
            *(v889 + 10 * v680 + 9376) = v715;
            if (v710 < 0x20)
            {
              LOWORD(v710) = v710 + 1;
            }

            *(v889 + 10 * v680 + 9380) = v710;
            goto LABEL_1060;
          }

LABEL_1056:
          v715 = v714 - (v714 >> v711);
          goto LABEL_1057;
        }
      }

      *(v889 + 10 * v680 + 9374) = v713 - (v713 >> v711);
      v714 = *(v889 + 10 * v680 + 9376);
      goto LABEL_1056;
    }
  }

LABEL_833:
  LOBYTE(v679) = v558[17];
  if (!v679)
  {
    goto LABEL_997;
  }

LABEL_834:
  if (*(v841 + 551) != 1 || !v880[26])
  {
    goto LABEL_879;
  }

  v686 = *(v82 + 11144);
  v687 = *v880;
  if (v686)
  {
    v688 = block_size_wide_3[v687];
    if (v688 >= block_size_high_2[v687])
    {
      v688 = block_size_high_2[v687];
    }

    goto LABEL_839;
  }

  v702 = v880[2];
  v688 = block_size_wide_3[v687];
  if (v688 >= block_size_high_2[v687])
  {
    v688 = block_size_high_2[v687];
  }

  v704 = v702 != 15 && v702 != 23;
  if (*(v158 + 263444 + 36 * v880[16] + 32) < 2u || v704 || v688 <= 7)
  {
LABEL_839:
    if (v688 < 8 || (v679 & 0x80) == 0 || v880[2] - 25 < 0xFFFFFFF4)
    {
      goto LABEL_879;
    }

    if (v686 || !*(v841 + 545) || !v880[25] || (v689 = *(v82 + 8360), v690 = *v689, *v689 != -1) && (v691 = v689[1], v691 != -1) && (v690 != 0x4000 || v691 != 0x4000))
    {
      v705 = v880[24];
      v699 = (*(v82 + 11064) + 6 * *v880 + 9588);
      od_ec_encode_cdf_q15(result + 16, v705 == 1, v699, 2);
      v82 = v887;
      result = v888;
      if (!*(v888 + 48))
      {
        goto LABEL_879;
      }

      v694 = v699 + 2;
      v695 = v699[2];
      v706 = (v695 >> 4) + 4;
      v707 = *v699;
      if (v705 == 1)
      {
        v701 = v707 + ((0x8000 - v707) >> v706);
      }

      else
      {
        v701 = v707 - (v707 >> v706);
      }

      goto LABEL_876;
    }

    v692 = v880[24];
    v693 = (*(v82 + 11064) + 8 * v687 + 9412);
    od_ec_encode_cdf_q15(result + 16, v692, v693, 3);
    v82 = v887;
    result = v888;
    if (!*(v888 + 48))
    {
      goto LABEL_879;
    }

    v694 = v693 + 3;
    v695 = v693[3];
    v696 = (v695 >> 4) + 4;
    v697 = *v693;
    if (v692 <= 0)
    {
      *v693 = v697 - (v697 >> v696);
      v716 = v693[1];
      v699 = v693 + 1;
      v698 = v716;
    }

    else
    {
      *v693 = v697 + ((0x8000 - v697) >> v696);
      v700 = v693[1];
      v699 = v693 + 1;
      v698 = v700;
      if (v692 != 1)
      {
        v701 = v698 + ((0x8000 - v698) >> v696);
LABEL_876:
        *v699 = v701;
        if (v695 < 0x20)
        {
          LOWORD(v695) = v695 + 1;
        }

        *v694 = v695;
        goto LABEL_879;
      }
    }

    v701 = v698 - (v698 >> v696);
    goto LABEL_876;
  }

LABEL_879:
  v717 = v880;
  if (v880[17] < 1)
  {
    goto LABEL_997;
  }

  v718 = block_size_wide_3[v858];
  if (v718 >= block_size_high_2[v858])
  {
    v718 = block_size_high_2[v858];
  }

  if (v718 < 8)
  {
    v719 = *(v880 + 167);
    if ((v719 & 0x100) != 0)
    {
      goto LABEL_963;
    }

    goto LABEL_913;
  }

  if (*(*(v849 + 976) + 63))
  {
    v720 = *(v82 + 8296);
    v721 = *(v82 + 8304);
    if (v721)
    {
      if (*(v721 + 17) < 1)
      {
        if (*(v721 + 16) == 7)
        {
          LODWORD(v721) = 3;
        }

        else
        {
          LODWORD(v721) = 0;
        }
      }

      else
      {
        LODWORD(v721) = HIBYTE(*(v721 + 167)) & 1;
      }
    }

    if (v720)
    {
      if (*(v720 + 17) < 1)
      {
        if (*(v720 + 16) == 7)
        {
          LODWORD(v720) = 3;
        }

        else
        {
          LODWORD(v720) = 0;
        }
      }

      else
      {
        LODWORD(v720) = HIBYTE(*(v720 + 167)) & 1;
      }
    }

    v722 = v720 + v721;
    if (v722 >= 5)
    {
      v722 = 5;
    }

    v723 = (*(v880 + 167) >> 8) & 1;
    v724 = (v889 + 6 * v722 + 11816);
    if (v723)
    {
      v725 = &v724[v723];
      v726 = *(v725 - 1);
      v727 = *v725;
      v728 = *(result + 32);
      v729 = *(result + 40);
      v730 = v729 >> 8;
      if ((v726 & 0x80000000) == 0)
      {
        v731 = ((v730 * (v726 >> 6)) >> 1) + 4;
        v728 += v729 - v731;
        v732 = v731 - ((v730 * (v727 >> 6)) >> 1);
        goto LABEL_905;
      }
    }

    else
    {
      v727 = *v724;
      v728 = *(result + 32);
      v729 = *(result + 40);
      v730 = v729 >> 8;
    }

    v732 = v729 + 4 * v723 - (((v727 >> 6) * v730) >> 1) - 4;
LABEL_905:
    od_ec_enc_normalize((result + 16), v728, v732);
    v82 = v887;
    result = v888;
    if (*(v888 + 48))
    {
      v733 = v724[2];
      v734 = (v733 >> 4) + 4;
      v735 = *v724;
      if (v723)
      {
        v736 = v735 + ((0x8000 - v735) >> v734);
      }

      else
      {
        v736 = v735 - (v735 >> v734);
      }

      *v724 = v736;
      if (v733 < 0x20)
      {
        LOWORD(v733) = v733 + 1;
      }

      v724[2] = v733;
    }
  }

  v719 = *(v880 + 167);
  if ((v719 & 0x100) != 0)
  {
    if (av1_wedge_params_lookup[8 * v858] >= 1)
    {
      v742 = v880[83] - 2;
      v743 = (v889 + 6 * v858 + 8336);
      od_ec_encode_cdf_q15(result + 16, v880[83] - 2, v743, 2);
      result = v888;
      if (*(v888 + 48))
      {
        v744 = *(v889 + 6 * v858 + 8340);
        v745 = (v744 >> 4) + 4;
        v746 = *v743;
        if (v742 < 1)
        {
          v747 = v746 - (v746 >> v745);
        }

        else
        {
          v747 = v746 + ((0x8000 - v746) >> v745);
        }

        *v743 = v747;
        if (v744 < 0x20)
        {
          LOWORD(v744) = v744 + 1;
        }

        *(v889 + 6 * v858 + 8340) = v744;
        v717 = v880;
      }
    }

LABEL_963:
    if (v717[83] != 2)
    {
      v788 = result + 16;
      v789 = v717[82] & 1;
LABEL_996:
      od_ec_encode_BOOL_q15(v788, v789, 0x4000u);
      v82 = v887;
      result = v888;
      goto LABEL_997;
    }

    v772 = v717[80];
    v773 = (v889 + 34 * v858 + 8468);
    od_ec_encode_cdf_q15(result + 16, v717[80], v773, 16);
    v774 = v888;
    if (!*(v888 + 48))
    {
LABEL_995:
      v789 = v880[81];
      v788 = v774 + 16;
      goto LABEL_996;
    }

    v775 = *(v889 + 34 * v858 + 8500);
    v776 = (v775 >> 4) + 5;
    v777 = *v773;
    if (v772 <= 0)
    {
      *v773 = v777 - (v777 >> v776);
      v779 = *(v889 + 34 * v858 + 8470);
    }

    else
    {
      v778 = v772 << 56;
      *v773 = v777 + ((0x8000 - v777) >> v776);
      v779 = *(v889 + 34 * v858 + 8470);
      if (v772 << 56 != 0x100000000000000)
      {
        *(v889 + 34 * v858 + 8470) = v779 + ((0x8000 - v779) >> v776);
        v780 = *(v889 + 34 * v858 + 8472);
        if (v772 > 2)
        {
          *(v889 + 34 * v858 + 8472) = v780 + ((0x8000 - v780) >> v776);
          v781 = *(v889 + 34 * v858 + 8474);
          if (v778 != 0x300000000000000)
          {
            *(v889 + 34 * v858 + 8474) = v781 + ((0x8000 - v781) >> v776);
            v782 = *(v889 + 34 * v858 + 8476);
            if (v772 > 4)
            {
              *(v889 + 34 * v858 + 8476) = v782 + ((0x8000 - v782) >> v776);
              v783 = *(v889 + 34 * v858 + 8478);
              if (v778 != 0x500000000000000)
              {
                *(v889 + 34 * v858 + 8478) = v783 + ((0x8000 - v783) >> v776);
                v784 = *(v889 + 34 * v858 + 8480);
                if (v772 > 6)
                {
                  *(v889 + 34 * v858 + 8480) = v784 + ((0x8000 - v784) >> v776);
                  v785 = *(v889 + 34 * v858 + 8482);
                  if (v778 != 0x700000000000000)
                  {
                    *(v889 + 34 * v858 + 8482) = v785 + ((0x8000 - v785) >> v776);
                    v786 = *(v889 + 34 * v858 + 8484);
                    if (v772 > 8)
                    {
                      *(v889 + 34 * v858 + 8484) = v786 + ((0x8000 - v786) >> v776);
                      v787 = *(v889 + 34 * v858 + 8486);
                      if (v778 != 0x900000000000000)
                      {
                        *(v889 + 34 * v858 + 8486) = v787 + ((0x8000 - v787) >> v776);
                        v790 = *(v889 + 34 * v858 + 8488);
                        if (v772 > 0xA)
                        {
                          *(v889 + 34 * v858 + 8488) = v790 + ((0x8000 - v790) >> v776);
                          v791 = *(v889 + 34 * v858 + 8490);
                          if (v778 != 0xB00000000000000)
                          {
                            *(v889 + 34 * v858 + 8490) = v791 + ((0x8000 - v791) >> v776);
                            v792 = *(v889 + 34 * v858 + 8492);
                            if (v772 > 0xC)
                            {
                              *(v889 + 34 * v858 + 8492) = v792 + ((0x8000 - v792) >> v776);
                              v793 = *(v889 + 34 * v858 + 8494);
                              if (v778 != 0xD00000000000000)
                              {
                                *(v889 + 34 * v858 + 8494) = v793 + ((0x8000 - v793) >> v776);
                                v794 = *(v889 + 34 * v858 + 8496);
                                if (v772 > 0xE)
                                {
                                  v795 = v794 + ((0x8000 - v794) >> v776);
                                  v774 = v888;
                                  v83 = v845;
                                  goto LABEL_992;
                                }

                                v774 = v888;
                                v83 = v845;
LABEL_991:
                                v795 = v794 - (v794 >> v776);
LABEL_992:
                                *(v889 + 34 * v858 + 8496) = v795;
                                if (v775 < 0x20)
                                {
                                  LOWORD(v775) = v775 + 1;
                                }

                                *(v889 + 34 * v858 + 8500) = v775;
                                goto LABEL_995;
                              }

                              v774 = v888;
                              v83 = v845;
LABEL_990:
                              *(v889 + 34 * v858 + 8494) = v793 - (v793 >> v776);
                              v794 = *(v889 + 34 * v858 + 8496);
                              goto LABEL_991;
                            }

                            v774 = v888;
                            v83 = v845;
LABEL_989:
                            *(v889 + 34 * v858 + 8492) = v792 - (v792 >> v776);
                            v793 = *(v889 + 34 * v858 + 8494);
                            goto LABEL_990;
                          }

                          v774 = v888;
                          v83 = v845;
LABEL_988:
                          *(v889 + 34 * v858 + 8490) = v791 - (v791 >> v776);
                          v792 = *(v889 + 34 * v858 + 8492);
                          goto LABEL_989;
                        }

                        v774 = v888;
                        v83 = v845;
LABEL_987:
                        *(v889 + 34 * v858 + 8488) = v790 - (v790 >> v776);
                        v791 = *(v889 + 34 * v858 + 8490);
                        goto LABEL_988;
                      }

                      v774 = v888;
                      v83 = v845;
LABEL_986:
                      *(v889 + 34 * v858 + 8486) = v787 - (v787 >> v776);
                      v790 = *(v889 + 34 * v858 + 8488);
                      goto LABEL_987;
                    }

                    v774 = v888;
                    v83 = v845;
LABEL_985:
                    *(v889 + 34 * v858 + 8484) = v786 - (v786 >> v776);
                    v787 = *(v889 + 34 * v858 + 8486);
                    goto LABEL_986;
                  }

LABEL_984:
                  *(v889 + 34 * v858 + 8482) = v785 - (v785 >> v776);
                  v786 = *(v889 + 34 * v858 + 8484);
                  goto LABEL_985;
                }

LABEL_983:
                *(v889 + 34 * v858 + 8480) = v784 - (v784 >> v776);
                v785 = *(v889 + 34 * v858 + 8482);
                goto LABEL_984;
              }

LABEL_982:
              *(v889 + 34 * v858 + 8478) = v783 - (v783 >> v776);
              v784 = *(v889 + 34 * v858 + 8480);
              goto LABEL_983;
            }

LABEL_981:
            *(v889 + 34 * v858 + 8476) = v782 - (v782 >> v776);
            v783 = *(v889 + 34 * v858 + 8478);
            goto LABEL_982;
          }

LABEL_980:
          *(v889 + 34 * v858 + 8474) = v781 - (v781 >> v776);
          v782 = *(v889 + 34 * v858 + 8476);
          goto LABEL_981;
        }

LABEL_979:
        *(v889 + 34 * v858 + 8472) = v780 - (v780 >> v776);
        v781 = *(v889 + 34 * v858 + 8474);
        goto LABEL_980;
      }
    }

    *(v889 + 34 * v858 + 8470) = v779 - (v779 >> v776);
    v780 = *(v889 + 34 * v858 + 8472);
    goto LABEL_979;
  }

LABEL_913:
  v737 = *(v849 + 976);
  if (!v737[12])
  {
    goto LABEL_997;
  }

  v738 = **(v82 + 8280);
  v739 = *(v738 + 16);
  if ((v739 - 1) > 7 || (v740 = *(v158 + 4 * (v739 - 1) + 239296), v740 == -1))
  {
    v741 = 0;
  }

  else
  {
    v741 = *(v158 + 8 * v740 + 239472);
  }

  v748 = *(v738 + 17);
  if ((v748 - 1) > 7 || (v749 = *(v158 + 4 * (v748 - 1) + 239296), v749 == -1))
  {
    v750 = 0;
  }

  else
  {
    v750 = *(v158 + 8 * v749 + 239472);
  }

  if (v741)
  {
    LODWORD(v741) = *(v741 + 4);
  }

  if (v750)
  {
    LODWORD(v750) = *(v750 + 4);
  }

  if (v737[10])
  {
    v751 = *(*(v841 + 280) + 4);
    v752 = 1 << v737[11];
    v753 = ((v752 - 1) & (v750 - v751)) - (v752 & (v750 - v751));
    v754 = ((v752 - 1) & (v751 - v741)) - (v752 & (v751 - v741));
  }

  else
  {
    v753 = 0;
    v754 = 0;
  }

  v755 = *(v82 + 8304);
  v756 = *(v82 + 8296);
  if (v755)
  {
    if (*(v755 + 17) < 1)
    {
      LODWORD(v755) = *(v755 + 16) == 7;
    }

    else
    {
      v755 = (*(v755 + 167) >> 9) & 1;
    }
  }

  if (v756)
  {
    if (*(v756 + 17) < 1)
    {
      LODWORD(v756) = *(v756 + 16) == 7;
    }

    else
    {
      v756 = (*(v756 + 167) >> 9) & 1;
    }
  }

  if (v753 < 0)
  {
    v753 = -v753;
  }

  if (v754 < 0)
  {
    v754 = -v754;
  }

  v78 = v753 == v754;
  v757 = 3;
  if (!v78)
  {
    v757 = 0;
  }

  v758 = (v719 >> 9) & 1;
  v759 = (v889 + 6 * (v755 + v756 + v757) + 11780);
  if (v758)
  {
    v764 = &v759[v758];
    v765 = *(v764 - 1);
    v760 = *v764;
    v761 = *(result + 32);
    v762 = *(result + 40);
    v763 = v762 >> 8;
    if ((v765 & 0x80000000) == 0)
    {
      v766 = ((v763 * (v765 >> 6)) >> 1) + 4;
      v761 += v762 - v766;
      v767 = v766 - ((v763 * (v760 >> 6)) >> 1);
      goto LABEL_952;
    }
  }

  else
  {
    v760 = *v759;
    v761 = *(result + 32);
    v762 = *(result + 40);
    v763 = v762 >> 8;
  }

  v767 = v762 + 4 * v758 - (((v760 >> 6) * v763) >> 1) - 4;
LABEL_952:
  od_ec_enc_normalize((result + 16), v761, v767);
  v82 = v887;
  result = v888;
  if (*(v888 + 48))
  {
    v768 = v759[2];
    v769 = (v768 >> 4) + 4;
    v770 = *v759;
    if (v758)
    {
      v771 = v770 + ((0x8000 - v770) >> v769);
    }

    else
    {
      v771 = v770 - (v770 >> v769);
    }

    *v759 = v771;
    if (v768 < 0x20)
    {
      LOWORD(v768) = v768 + 1;
    }

    v759[2] = v768;
  }

LABEL_997:
  v796 = *(v82 + 8280);
  v797 = *v796;
  if ((*(*v796 + 167) & 0x40) != 0 || v797[24] == 2)
  {
    goto LABEL_236;
  }

  v798 = v797[2];
  if (v798 == 23 || v798 == 15)
  {
    v799 = *v797;
    v800 = mi_size_wide_5[v799];
    v801 = mi_size_high_4[v799];
    if (v800 < v801)
    {
      v801 = v800;
    }

    if (v801 >= 2)
    {
      v805 = v797[17];
      v806 = *(v82 + 11160);
      v807 = *(v806 + 36 * v797[16] + 32);
      if (v805 < 1 || v807 == 1)
      {
        if (v805 <= 0 && v807 != 1)
        {
          goto LABEL_236;
        }
      }

      else if (*(v806 + 36 * v797[17] + 32) != 1)
      {
        goto LABEL_236;
      }
    }
  }

  if (*(v841 + 553) == 4)
  {
    v802 = v797[16];
    if (v839[1] == 1 && ((v803 = *(v796 - 1), v803[16] == v802) || v803[17] == v802))
    {
      v804 = v803[20];
    }

    else
    {
      v804 = 3;
    }

    if (*v839 == 1 && ((v808 = v796[-*(v82 + 424)], v808[16] == v802) || v808[17] == v802))
    {
      v809 = v808[20];
    }

    else
    {
      v809 = 3;
    }

    v810 = *(v82 + 11064) + 14058;
    v811 = 4 * (v797[17] > 0);
    if (v804 == v809)
    {
      goto LABEL_1027;
    }

    if (v804 == 3)
    {
      v812 = v82 + 148400;
      v813 = v797[20];
      v814 = (v810 + 8 * (v809 + v811));
      if (!v797[20])
      {
        goto LABEL_1032;
      }

LABEL_1028:
      v815 = &v814[v813];
      v816 = *(v815 - 1);
      v817 = *v815;
      v818 = *(result + 32);
      v819 = *(result + 40);
      v820 = v819 >> 8;
      if ((v816 & 0x80000000) == 0)
      {
        v821 = ((v820 * (v816 >> 6)) >> 1) - 4 * v813 + 12;
        v818 += v819 - v821;
        v822 = 4 * v813 - ((v820 * (v817 >> 6)) >> 1) + v821 - 8;
        v823 = v813;
        goto LABEL_1034;
      }

      v823 = v813;
LABEL_1033:
      v822 = v819 + 4 * v813 - (((v817 >> 6) * v820) >> 1) - 8;
LABEL_1034:
      od_ec_enc_normalize((result + 16), v818, v822);
      v82 = v887;
      result = v888;
      if (!*(v888 + 48))
      {
        goto LABEL_1043;
      }

      v824 = v814[3];
      v825 = (v824 >> 4) + 4;
      v826 = *v814;
      if (v813 <= 0)
      {
        *v814 = v826 - (v826 >> v825);
        v827 = v814[1];
      }

      else
      {
        *v814 = v826 + ((0x8000 - v826) >> v825);
        v827 = v814[1];
        if (v813 != 1)
        {
          v828 = v827 + ((0x8000 - v827) >> v825);
LABEL_1040:
          v814[1] = v828;
          if (v824 < 0x20)
          {
            LOWORD(v824) = v824 + 1;
          }

          v814[3] = v824;
LABEL_1043:
          ++*(v812 + 4 * v823);
          if (*(*(v849 + 976) + 64))
          {
            pred_context_switchable_interp = av1_get_pred_context_switchable_interp(v887 + 416, 1);
            v830 = *(v797 + 5);
            v831 = (v810 + 8 * pred_context_switchable_interp);
            od_ec_encode_cdf_q15(v888 + 16, BYTE2(v830), v831, 3);
            result = v888;
            if (!*(v888 + 48))
            {
LABEL_1053:
              ++*(v812 + 4 * BYTE2(v830));
              v82 = v887;
              goto LABEL_236;
            }

            v832 = v831[3];
            v833 = (v832 >> 4) + 4;
            v834 = *v831;
            if (v830 << 8 >> 24 <= 0)
            {
              *v831 = v834 - (v834 >> v833);
              v835 = v831[1];
            }

            else
            {
              *v831 = v834 + ((0x8000 - v834) >> v833);
              v835 = v831[1];
              if (BYTE2(v830) != 1)
              {
                v836 = v835 + ((0x8000 - v835) >> v833);
LABEL_1050:
                v831[1] = v836;
                if (v832 < 0x20)
                {
                  LOWORD(v832) = v832 + 1;
                }

                v831[3] = v832;
                goto LABEL_1053;
              }
            }

            v836 = v835 - (v835 >> v833);
            goto LABEL_1050;
          }

          goto LABEL_236;
        }
      }

      v828 = v827 - (v827 >> v825);
      goto LABEL_1040;
    }

    if (v809 == 3)
    {
LABEL_1027:
      v812 = v82 + 148400;
      v813 = v797[20];
      v814 = (v810 + 8 * (v804 + v811));
      if (v797[20])
      {
        goto LABEL_1028;
      }
    }

    else
    {
      v812 = v82 + 148400;
      v813 = v797[20];
      v814 = (v810 + 8 * (v811 | 3u));
      if (v797[20])
      {
        goto LABEL_1028;
      }
    }

LABEL_1032:
    v823 = 0;
    v817 = *v814;
    v818 = *(result + 32);
    v819 = *(result + 40);
    v820 = v819 >> 8;
    goto LABEL_1033;
  }

LABEL_236:
  v176 = 0;
  v177 = 0;
  v847 = v83 + 142;
  v842 = v889 - 180;
  v855 = v82 + 432;
  v178 = 9944;
  v179 = 1;
  v843 = a5;
  v866 = vdupq_n_s64(8uLL);
  do
  {
    v181 = v847[v177];
    if (v847[v177])
    {
      v850 = v179;
      v182 = *v83;
      v183 = block_size_wide_3[v182];
      v184 = *(v82 + 8344);
      v185 = v855 + 2608 * v177;
      v186 = *(v185 + 4);
      v187 = *(v185 + 8);
      v188 = block_size_high_2[v182];
      v189 = *(v82 + 8352);
      if ((v176 & (v188 >> v187 < 4)) != 0)
      {
        v190 = 2;
      }

      else
      {
        v190 = 0;
      }

      if ((v176 & (v183 >> v186 < 4)) != 0)
      {
        v191 = 2;
      }

      else
      {
        v191 = 0;
      }

      v192 = *a5;
      v193 = *v192 & 7;
      v194 = __clz(v181);
      v195 = v194 ^ 0x1F;
      v890 = v181;
      v196 = (2 << (v194 ^ 0x1F)) - v181;
      v197 = v193 - v196;
      v859 = v178;
      v881 = v186;
      v875 = v183;
      v869 = v190;
      v863 = v191;
      if (v193 >= v196)
      {
        if (v194 != 31)
        {
          v206 = v196 + (v197 >> 1);
          v207 = v195 + 1;
          do
          {
            v208 = *(result + 40);
            v209 = (v208 >> 1) & 0x7F80 | 4;
            v210 = 1 << (v207 - 2);
            v211 = v208 - v209;
            v212 = (v210 & v206) == 0;
            if ((v210 & v206) != 0)
            {
              v213 = v211;
            }

            else
            {
              v213 = 0;
            }

            if (v212)
            {
              v214 = v211;
            }

            else
            {
              v214 = v209;
            }

            od_ec_enc_normalize((result + 16), *(result + 32) + v213, v214);
            result = v888;
            --v207;
          }

          while (v207 > 1);
        }

        v215 = *(result + 40);
        v216 = (v215 >> 1) & 0x7F80 | 4;
        v217 = v215 - v216;
        if (v197)
        {
          v218 = v216;
        }

        else
        {
          v218 = v217;
        }

        od_ec_enc_normalize((result + 16), *(result + 32) + ((v197 << 31 >> 31) & v217), v218);
        result = v888;
      }

      else if (v194 != 31)
      {
        v198 = v195 + 1;
        do
        {
          v199 = *(result + 40);
          v200 = (v199 >> 1) & 0x7F80 | 4;
          v201 = 1 << (v198 - 2);
          v202 = v199 - v200;
          v203 = (v201 & v193) == 0;
          if ((v201 & v193) != 0)
          {
            v204 = v202;
          }

          else
          {
            v204 = 0;
          }

          if (v203)
          {
            v205 = v202;
          }

          else
          {
            v205 = v200;
          }

          od_ec_enc_normalize((result + 16), *(result + 32) + v204, v205);
          result = v888;
          --v198;
        }

        while (v198 > 1);
      }

      v219 = (((((v189 >> 31) & (v189 >> 3)) + v188) >> v187) + v869) * (v863 + ((((v184 >> 31) & (v184 >> 3)) + v875) >> v881));
      v220 = v192 + 1;
      v882 = v219 - 2;
      if (v219 >= 2)
      {
        v221 = 0;
        v876 = v842 + v859;
        v222 = v890;
        if (v890 <= 2)
        {
          v223 = 2;
        }

        else
        {
          v223 = v890;
        }

        v224 = (v223 - 1);
        v870 = v890 - 1;
        v860 = v842 + v859 + 90 * v890;
        while (1)
        {
          v226 = *v220;
          v227 = (v876 + 90 * v222 + 18 * (*v220 >> 4));
          v228 = *v220 & 7;
          if ((*v220 & 7) != 0)
          {
            v229 = v227 + v228;
            v230 = *(v229 - 1);
            v231 = *v229;
            v232 = *(result + 32);
            v233 = *(result + 40);
            v234 = v233 >> 8;
            if ((v230 & 0x80000000) == 0)
            {
              v235 = ((v234 * (v230 >> 6)) >> 1) + 4 * (v222 - v228);
              v232 += v233 - v235;
              v236 = v235 - ((v234 * (v231 >> 6)) >> 1) + 4 * (v228 - v870);
              goto LABEL_285;
            }
          }

          else
          {
            v231 = v227->u16[0];
            v232 = *(result + 32);
            v233 = *(result + 40);
            v234 = v233 >> 8;
          }

          v236 = v233 + 4 * (v228 - v870) - (((v231 >> 6) * v234) >> 1);
LABEL_285:
          od_ec_enc_normalize((result + 16), v232, v236);
          v82 = v887;
          result = v888;
          v237.i64[0] = 0x800000008000;
          v237.i64[1] = 0x800000008000;
          v222 = v890;
          if (*(v888 + 48))
          {
            v238 = v227->u16[v890];
            v239 = (v890 > 3) + (v238 >> 4) + 4;
            if (v890 >= 9)
            {
              v241 = vdupq_n_s64(v228);
              v242 = v224 & 0xFFFFFFF8;
              v243 = v227;
              v244 = vnegq_s32(vdupq_n_s32(v239));
              v245 = xmmword_273B92130;
              v246 = xmmword_273B92120;
              v247 = xmmword_273BB9B40;
              v248 = xmmword_273BB9B30;
              do
              {
                *v243 = vaddq_s16(*v243, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v241, v245), vcgtq_u64(v241, v246)), vuzp1q_s32(vcgtq_u64(v241, v247), vcgtq_u64(v241, v248))), vuzp1q_s16(vshlq_s32(vsubw_u16(v237, *v243->i8), v244), vshlq_s32(vsubw_high_u16(v237, *v243), v244)), vnegq_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v243->i8), v244), vshlq_u32(vmovl_high_u16(*v243), v244)))));
                ++v243;
                v247 = vaddq_s64(v247, v866);
                v246 = vaddq_s64(v246, v866);
                v245 = vaddq_s64(v245, v866);
                v248 = vaddq_s64(v248, v866);
                v242 -= 8;
              }

              while (v242);
              v240 = v224 & 0xFFFFFFF8;
              if (v240 != v224)
              {
                goto LABEL_291;
              }
            }

            else
            {
              v240 = 0;
LABEL_291:
              v249 = (v860 + 18 * (v226 >> 4) + 2 * v240);
              do
              {
                v250 = *v249;
                v251 = v250 - (v250 >> v239);
                v252 = v250 + ((0x8000 - v250) >> v239);
                if (v240 >= v228)
                {
                  LOWORD(v252) = v251;
                }

                *v249++ = v252;
                ++v240;
              }

              while (v224 != v240);
            }

            v225 = v227->u16[v890];
            if (v238 < 0x20)
            {
              ++v225;
            }

            v227->i16[v890] = v225;
          }

          ++v220;
          v78 = v221++ == v882;
          if (v78)
          {
            goto LABEL_238;
          }
        }
      }

      v82 = v887;
LABEL_238:
      a5 = v843;
      v83 = v845;
      *v843 = v220;
      v179 = v850;
    }

    v180 = v179 & (*(*(v849 + 976) + 77) == 0);
    v176 = 1;
    v178 = 10574;
    v177 = 1;
    v179 = 0;
  }

  while ((v180 & 1) != 0);
  v253 = *(v83 + 167);
  if ((v253 & 0x80) != 0)
  {
    v254 = 1;
    v255 = v839;
    v256 = v837;
    v257 = v83[144];
    v258 = v257 != 0;
    if (!v837)
    {
      goto LABEL_306;
    }
  }

  else
  {
    v254 = v83[16] > 0;
    v255 = v839;
    v256 = v837;
    v257 = v83[144];
    if (v257)
    {
      v258 = v83[16] > 0;
    }

    else
    {
      v258 = 0;
    }

    if (!v837)
    {
LABEL_306:
      v259 = v82;
      v260 = v83[145];
      v261 = v255[436];
      v262 = v255[437];
      v263 = v257 != 0 && v254;
      if (v263)
      {
        v264 = 4 * v262;
      }

      else
      {
        v264 = tx_size_high_2[v260];
      }

      if (v255[436])
      {
        v265 = tx_size_wide_3[v260];
        if (v263)
        {
          v266 = 4 * v261;
        }

        else
        {
          v266 = v265;
        }

        memset(*(v259 + 8544), v266, v261);
        v259 = v887;
        result = v888;
      }

      v82 = v259;
      if (!v262)
      {
        goto LABEL_316;
      }

      goto LABEL_315;
    }
  }

  if (*(v841 + 552) != 2 || v258 || *(v82 + 11108 + 4 * (v253 & 7)))
  {
    goto LABEL_306;
  }

  v310 = **(v82 + 8280);
  if (v254)
  {
    if (*(v82 + 11108 + 4 * (*(v310 + 167) & 7)))
    {
      v311 = 0;
    }

    else
    {
      v311 = max_txsize_rect_lookup_0[v256];
    }

    v324 = 0;
    v325 = tx_size_high_unit_0[v311];
    v326 = tx_size_wide_unit_0[v311];
    do
    {
      v327 = 0;
      do
      {
        write_tx_size_vartx((v82 + 416), v83, v311, 0, v324, v327, result);
        v82 = v887;
        result = v888;
        v327 += v326;
      }

      while (v327 < v838);
      v324 += v325;
    }

    while (v324 < v840);
    goto LABEL_316;
  }

  v312 = *v310;
  if (*v310)
  {
    v313 = max_txsize_rect_lookup_0[v312];
    v314 = v839[1];
    v315 = **(v82 + 8544);
    v316 = **(v82 + 8552);
    if (*v839 == 1)
    {
      v317 = *(v82 + 8304);
      if ((*(v317 + 167) & 0x80) != 0 || v317[16] >= 1)
      {
        v315 = block_size_wide_3[*v317];
      }
    }

    v318 = v310[145];
    if (v839[1])
    {
      v319 = *(v82 + 8296);
      if ((*(v319 + 167) & 0x80) != 0 || v319[16] >= 1)
      {
        v316 = block_size_high_2[*v319];
      }
    }

    if (tx_size_high_2[max_txsize_rect_lookup_0[v312]] <= v316)
    {
      v320 = v839[1];
    }

    else
    {
      v320 = 0;
    }

    if (tx_size_wide_3[max_txsize_rect_lookup_0[v312]] <= v315)
    {
      v321 = *v839;
    }

    else
    {
      v321 = 0;
    }

    v322 = v320 + v321;
    if (v313 == v318)
    {
      v323 = 0;
    }

    else
    {
      v323 = 0;
      do
      {
        ++v323;
        v313 = sub_tx_size_map[v313];
      }

      while (v313 != v318);
    }

    v328 = bsize_to_max_depth_bsize_to_max_depth_table[v312];
    v329 = bsize_to_tx_size_cat_bsize_to_tx_size_depth_table[v312];
    v330 = *(v82 + 11064) + 24 * bsize_to_tx_size_cat_bsize_to_tx_size_depth_table[v312] + 8 * v322 + 14990;
    v331 = v328 + 1;
    v892 = *v839;
    v885 = *(v82 + 11064);
    v879 = tx_size_wide_3[max_txsize_rect_lookup_0[v312]];
    v873 = tx_size_high_2[max_txsize_rect_lookup_0[v312]];
    if (v323 <= 0)
    {
      v334 = *(v330 + 2 * v323);
      v335 = *(result + 32);
      v336 = *(result + 40);
      v337 = v336 >> 8;
    }

    else
    {
      v332 = (v330 + 2 * v323);
      v333 = *(v332 - 1);
      v334 = *v332;
      v335 = *(result + 32);
      v336 = *(result + 40);
      v337 = v336 >> 8;
      if ((v333 & 0x80000000) == 0)
      {
        v338 = ((v337 * (v333 >> 6)) >> 1) + 4 * (v331 - v323);
        v335 += v336 - v338;
        v339 = v338 - ((v337 * (v334 >> 6)) >> 1) + 4 * (v323 - v328);
        goto LABEL_419;
      }
    }

    v339 = v336 + 4 * (v323 - v328) - (((v334 >> 6) * v337) >> 1);
LABEL_419:
    od_ec_enc_normalize((result + 16), v335, v339);
    v82 = v887;
    result = v888;
    if (*(v888 + 48))
    {
      v340 = 0;
      v341 = *(v330 + 2 * v331);
      v342 = v879 <= v315;
      if (v328 <= 1)
      {
        v343 = 1;
      }

      else
      {
        v343 = v328;
      }

      if ((v873 <= v316) >= v314)
      {
        v344 = v314;
      }

      else
      {
        v344 = v873 <= v316;
      }

      v345 = (v341 >> 4) + 4;
      if (v342 >= v892)
      {
        v342 = v892;
      }

      v346 = 8 * (v344 + v342) + 24 * v329 + v885 + 14990;
      do
      {
        v347 = *(v346 + 2 * v340);
        v348 = v347 - (v347 >> v345);
        v349 = v347 + ((0x8000 - v347) >> v345);
        if (v340 >= v323)
        {
          LOWORD(v349) = v348;
        }

        *(v346 + 2 * v340++) = v349;
      }

      while (v343 != v340);
      v350 = *(v330 + 2 * v331);
      if (v341 < 0x20)
      {
        ++v350;
      }

      *(v330 + 2 * v331) = v350;
    }
  }

  v351 = v82;
  v352 = v83[145];
  v262 = v839[437];
  v264 = tx_size_high_2[v352];
  if (v839[436])
  {
    memset(*(v82 + 8544), tx_size_wide_3[v352], v839[436]);
    v351 = v887;
    result = v888;
  }

  v82 = v351;
  if (!v262)
  {
    goto LABEL_316;
  }

LABEL_315:
  memset(*(v82 + 8552), v264, v262);
  v82 = v887;
  result = v888;
LABEL_316:
  if (v83[144])
  {
    return result;
  }

  v267 = *(result + 42);
  v268 = *(result + 28);
  v269 = **(v82 + 8280);
  v270 = *v269;
  if ((*(v269 + 167) & 0x80) == 0 && v269[16] <= 0)
  {
    av1_write_intra_coeffs_mb((a1 + 239056), v82, result, v270);
    v82 = v887;
    result = v888;
    goto LABEL_383;
  }

  v844 = *(result + 28);
  v846 = *(result + 42);
  v864 = 0;
  v271 = 0;
  v894 = 0;
  v893 = 0;
  v272 = mi_size_wide_5[v270];
  v853 = v272;
  if (v272 >= 0x10)
  {
    v272 = 16;
  }

  v851 = mi_size_high_4[v270];
  v852 = v272;
  if (v851 >= 0x10)
  {
    v273 = 16;
  }

  else
  {
    v273 = mi_size_high_4[v270];
  }

  v848 = v273;
  v861 = v82 + 11108;
  v857 = *(*(v849 + 976) + 77);
  v891 = v269;
  while (2)
  {
    v867 = 0;
    while (2)
    {
      v274 = 0;
      do
      {
        if (!v274)
        {
          v280 = *(v82 + 436);
          v281 = *(v82 + 440);
          v282 = av1_ss_size_lookup[4 * *v269 + 2 * v280 + v281];
          if (*(v861 + 4 * (*(**(v82 + 8280) + 167) & 7)))
          {
            v283 = 0;
          }

          else
          {
            v283 = max_txsize_rect_lookup_0[v282];
          }

          v285 = 0;
          v286 = av1_ss_size_lookup[2 * v280 + 48 + v281];
          v287 = mi_size_wide_5[v286];
          v288 = v864 >> v281;
          v289 = (v864 >> v281) + mi_size_high_4[v286];
          if (v289 >= mi_size_high_4[v282])
          {
            v290 = mi_size_high_4[v282];
          }

          else
          {
            v290 = v289;
          }

          v291 = v867 >> v280;
          v292 = (v867 >> v280) + v287;
          if (v292 >= mi_size_wide_5[v282])
          {
            v293 = mi_size_wide_5[v282];
          }

          else
          {
            v293 = v292;
          }

          v883 = v290;
          v877 = v291;
          if (v288 < v290 && v291 < v293)
          {
            v295 = tx_size_wide_unit_0[v283];
            v871 = tx_size_high_unit_0[v283];
            do
            {
              v296 = v877;
              do
              {
                pack_txb_tokens(result, a1 + 239056, v82, v82 + 416, v891, 0, v282, v271, v288, v296, v283);
                result = v888;
                v269 = v891;
                v82 = v887;
                v271 = (v271 + v871 * v295);
                v296 += v295;
              }

              while (v296 < v293);
              v288 += v871;
            }

            while (v288 < v883);
          }

LABEL_374:
          if (v857)
          {
            break;
          }

          goto LABEL_380;
        }

        if ((*(v82 + 428) & 1) == 0)
        {
          break;
        }

        v275 = v855 + 2608 * v274;
        v276 = *(v275 + 4);
        v277 = *(v275 + 8);
        v278 = av1_ss_size_lookup[4 * *v269 + 2 * v276 + v277];
        if (*(v861 + 4 * (*(**(v82 + 8280) + 167) & 7)))
        {
          v279 = 0;
        }

        else
        {
          v279 = max_txsize_rect_lookup_0[v278];
          if (v279 > 0x10)
          {
            if (v279 == 18)
            {
              v279 = 10;
            }

            else if (v279 == 17)
            {
              v279 = 9;
            }
          }

          else if (v279 - 11 < 2 || v279 == 4)
          {
            v279 = 3;
          }
        }

        v297 = av1_ss_size_lookup[2 * v276 + 48 + v277];
        v298 = mi_size_wide_5[v297];
        v299 = v864 >> v277;
        v300 = (v864 >> v277) + mi_size_high_4[v297];
        if (v300 >= mi_size_high_4[v278])
        {
          v301 = mi_size_high_4[v278];
        }

        else
        {
          v301 = v300;
        }

        v302 = v867 >> v276;
        v303 = (v867 >> v276) + v298;
        if (v303 >= mi_size_wide_5[v278])
        {
          v304 = mi_size_wide_5[v278];
        }

        else
        {
          v304 = v303;
        }

        v884 = v301;
        v878 = v302;
        if (v299 >= v301 || v302 >= v304)
        {
          v285 = v274;
          goto LABEL_374;
        }

        v854 = v271;
        v306 = tx_size_wide_unit_0[v279];
        v872 = tx_size_high_unit_0[v279];
        v307 = *(&v893 + v274);
        do
        {
          v308 = v878;
          do
          {
            v285 = v274;
            v309 = v304;
            pack_txb_tokens(result, a1 + 239056, v82, v82 + 416, v891, v274, v278, v307, v299, v308, v279);
            v304 = v309;
            v274 = v285;
            result = v888;
            v269 = v891;
            v82 = v887;
            v307 = (v307 + v872 * v306);
            *(&v893 + v285) = v307;
            v308 += v306;
          }

          while (v308 < v309);
          v299 += v872;
        }

        while (v299 < v884);
        v271 = v854;
        if (v857)
        {
          break;
        }

LABEL_380:
        v274 = v285 + 1;
      }

      while (v285 < 2);
      v867 += v852;
      if (v867 < v853)
      {
        continue;
      }

      break;
    }

    v864 += v848;
    if (v864 < v851)
    {
      continue;
    }

    break;
  }

  v267 = v846;
  v268 = v844;
LABEL_383:
  *(v82 + 148392) = *(v82 + 148392) - v267 + *(result + 42) + 8 * (*(result + 28) - v268);
  return result;
}

_DWORD *write_tx_size_vartx(_DWORD *result, unsigned __int8 *a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7)
{
  v8 = *a2;
  v9 = block_size_high_2[v8];
  v10 = result[1984];
  v11 = v9;
  if (v10 < 0)
  {
    v11 = (v10 >> (result[6] + 3)) + v9;
  }

  v12 = v11 >> 2;
  v13 = block_size_wide_3[v8];
  v14 = result[1982];
  if (v14 < 0)
  {
    if (v12 <= a5 || ((v14 >> (result[5] + 3)) + v13) >> 2 <= a6)
    {
      return result;
    }
  }

  else if (v12 <= a5 || block_size_wide_3[v8] >> 2 <= a6)
  {
    return result;
  }

  v17 = *(result + 1016);
  v18 = a6;
  v19 = *(result + 1017);
  v20 = a5;
  if (a4 == 2)
  {
    v21 = txsize_to_bsize_1[a3];
    v22 = mi_size_wide_5[v21];
    v23 = *(&tx_size_wide_3 + a3);
    v24 = *(&tx_size_high_2 + a3);
    v25 = mi_size_high_4[v21];
    if (v25 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    memset((v19 + a5), v24, v26);
    if (v22 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v22;
    }

    v28 = (v17 + v18);
LABEL_22:
    v29 = v23;
LABEL_54:

    return memset(v28, v29, v27);
  }

  v30 = *(v17 + a6);
  v31 = *(v19 + a5);
  v32 = a3;
  v33 = 4 * a3;
  v34 = *(&tx_size_wide_3 + v33);
  v35 = *(&tx_size_high_2 + v33);
  v36 = v34 > v30;
  v37 = v35 > v31;
  if (a3)
  {
    if (v13 <= v9)
    {
      v38 = block_size_high_2[v8];
    }

    else
    {
      v38 = block_size_wide_3[v8];
    }

    v39 = 63;
    if (v38 <= 31)
    {
      if (v38 == 8)
      {
        v41 = 0;
        v40 = 1;
        goto LABEL_37;
      }

      if (v38 == 16)
      {
        v40 = 2;
        v41 = 1;
        goto LABEL_37;
      }
    }

    else
    {
      v40 = 4;
      v41 = 1;
      if (v38 == 128 || v38 == 64)
      {
LABEL_37:
        if (txsize_sqr_up_map[a3] == v40)
        {
          v43 = 0;
        }

        else
        {
          v43 = v41;
        }

        v39 = (3 * (v43 - 2 * v40) + 24);
        goto LABEL_41;
      }

      if (v38 == 32)
      {
        v40 = 3;
        goto LABEL_37;
      }
    }

LABEL_41:
    v42 = v37 + v36 + v39;
    goto LABEL_42;
  }

  v42 = 0;
LABEL_42:
  v82 = result;
  v44 = *(result + 1331);
  if (a2[(a6 >> av1_get_txb_size_index_tw_w_log2_table_0[v8]) + 146 + (a5 >> av1_get_txb_size_index_tw_h_log2_table_0[v8] << av1_get_txb_size_index_stride_log2_table_0[v8])] == a3)
  {
    v45 = a3;
    v46 = (v44 + 6 * v42 + 11654);
    od_ec_enc_normalize((a7 + 16), *(a7 + 32), *(a7 + 40) - ((HIBYTE(*(a7 + 40)) * (*v46 >> 6)) >> 1) - 4);
    if (*(a7 + 48))
    {
      v48 = v46[2];
      *v46 -= *v46 >> ((v48 >> 4) + 4);
      if (v48 < 0x20)
      {
        LOWORD(v48) = v48 + 1;
      }

      v46[2] = v48;
    }

    v49 = *(v82 + 1016);
    v50 = txsize_to_bsize_1[v45];
    v51 = mi_size_wide_5[v50];
    v52 = mi_size_high_4[v50];
    if (v52 <= 1)
    {
      v53 = 1;
    }

    else
    {
      v53 = v52;
    }

    memset((*(v82 + 1017) + v20), v35, v53);
    if (v51 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v51;
    }

    v28 = (v49 + v18);
    v29 = v34;
    goto LABEL_54;
  }

  v57 = sub_tx_size_map[a3];
  v58 = tx_size_wide_unit_0[v57];
  v81 = tx_size_high_unit_0[v57];
  v59 = (v44 + 6 * v42 + 11654);
  v60 = *v59;
  v61 = *(a7 + 40);
  v62 = (v61 >> 8) * (*(v44 + 6 * v42 + 11656) >> 6);
  v63 = v61 - (v62 >> 1);
  v64 = (((v61 >> 8) * (*v59 >> 6)) >> 1) + 4;
  v65 = *(a7 + 32) + v61 - v64;
  v66 = v64 - (v62 >> 1);
  if (v60 >= 0)
  {
    v67 = v66;
  }

  else
  {
    v67 = v63;
  }

  if (v60 >= 0)
  {
    v68 = v65;
  }

  else
  {
    v68 = *(a7 + 32);
  }

  od_ec_enc_normalize((a7 + 16), v68, v67);
  if (*(a7 + 48))
  {
    v70 = v59[2];
    *v59 += (0x8000 - *v59) >> ((v70 >> 4) + 4);
    if (v70 < 0x20)
    {
      LOWORD(v70) = v70 + 1;
    }

    v59[2] = v70;
  }

  if ((0x63uLL >> v32))
  {
    v74 = v32;
    v75 = *(v82 + 1016);
    v76 = txsize_to_bsize_1[v74];
    v77 = mi_size_wide_5[v76];
    v23 = *(&tx_size_wide_3 + v57);
    v78 = mi_size_high_4[v76];
    if (v78 <= 1)
    {
      v79 = 1;
    }

    else
    {
      v79 = v78;
    }

    memset((*(v82 + 1017) + a5), *(&tx_size_high_2 + v57), v79);
    if (v77 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v77;
    }

    v28 = (v75 + v18);
    goto LABEL_22;
  }

  v71 = 0;
  v80 = tx_size_high_unit_0[v32];
  v72 = tx_size_wide_unit_0[v32];
  do
  {
    v73 = 0;
    do
    {
      result = write_tx_size_vartx(v82, a2, v57, (a4 + 1), (v71 + a5), (a6 + v73), a7);
      v73 += v58;
    }

    while (v73 < v72);
    v71 += v81;
  }

  while (v71 < v80);
  return result;
}

_DWORD *write_segment_id(_DWORD *result, int *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!*a5 || !*(a5 + 1))
  {
    return result;
  }

  v7 = a3;
  v8 = result + 114188;
  result += 59822;
  if (*(v8[2] + 108))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v11 = *a2;
  v10 = a2[1];
  v12 = *(*result + 80);
  if ((a2[1968] & 1) == 0)
  {
    if ((*(a2 + 7873) & 1) == 0)
    {
      v21 = 255;
      v19 = 255;
      goto LABEL_45;
    }

    v16 = result[76];
    v14 = v10 - v9;
    v19 = 255;
    v17 = 255;
    v21 = 8;
    if (result[75] > v11 && v16 > v14)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if ((*(a2 + 7873) & 1) == 0)
  {
    v27 = result[76];
    v28 = v11 - v9;
    v19 = 8;
    if (result[75] > v28 && v27 > v10)
    {
      v30 = *(v12 + v10 + v27 * v28);
      if (v30 >= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v30;
      }
    }

    v21 = 255;
    goto LABEL_45;
  }

  v13 = v11 - v9;
  v14 = v10 - v9;
  v15 = result[75];
  v16 = result[76];
  v17 = 8;
  if (v15 > v11 - v9 && v16 > v14)
  {
    if (*(v12 + v14 + v16 * v13) >= 8u)
    {
      v17 = 8;
    }

    else
    {
      v17 = *(v12 + v14 + v16 * v13);
    }

    v19 = 8;
    if (v15 > v13 && v16 > v10)
    {
      goto LABEL_96;
    }

LABEL_18:
    v21 = 8;
    if (v15 > v11 && v16 > v14)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v19 = 8;
  if (v15 <= v13 || v16 <= v10)
  {
    goto LABEL_18;
  }

LABEL_96:
  v60 = *(v12 + v10 + v16 * v13);
  if (v60 >= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v60;
  }

  v21 = 8;
  if (v15 > v11 && v16 > v14)
  {
LABEL_22:
    v23 = *(v12 + v14 + v16 * v11);
    if (v23 >= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v23;
    }
  }

LABEL_25:
  if (v17 == 255)
  {
LABEL_45:
    v24 = 0;
    v17 = 255;
    goto LABEL_46;
  }

  if (v17 == v19 && v17 == v21)
  {
    v24 = 2;
    v21 = v17;
    v25 = v17;
    goto LABEL_47;
  }

  v58 = v17 == v21 || v21 == v19;
  v24 = v17 == v19 || v58;
LABEL_46:
  v25 = v19;
LABEL_47:
  if (v17 == v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = v21;
  }

  if (v21 == 255)
  {
    v31 = v19;
    v21 = 0;
  }

  if (v19 == 255)
  {
    v32 = v21;
  }

  else
  {
    v32 = v31;
  }

  if (a7)
  {
    v33 = *a3;
    v34 = result[75] - v11;
    if (v34 >= mi_size_high_4[v33])
    {
      v35 = mi_size_high_4[v33];
    }

    else
    {
      v35 = v34;
    }

    if (v35 >= 1)
    {
      v37 = result;
      v38 = result[76];
      v39 = *a2;
      v40 = (v12 + v10 + v38 * v11);
      v41 = a2[1];
      v42 = v38 - v10;
      v43 = mi_size_wide_5[v33];
      if (v38 - v10 >= v43)
      {
        v42 = v43;
      }

      v44 = v42;
      do
      {
        result = memset(v40, v32, v44);
        v40 += v38;
        --v35;
      }

      while (v35);
      v7 = a3;
      v45 = *a3;
      v46 = v37[75] - v39;
      if (v46 >= mi_size_high_4[v45])
      {
        v47 = mi_size_high_4[v45];
      }

      else
      {
        v47 = v46;
      }

      if (v47 >= 1)
      {
        v48 = v37[76];
        v49 = (*v8 + v41 + v48 * v39);
        v50 = mi_size_wide_5[v45];
        if (v48 - v41 < v50)
        {
          v50 = v48 - v41;
        }

        v51 = v50;
        do
        {
          result = memset(v49, v32, v51);
          v49 += v48;
          --v47;
        }

        while (v47);
      }
    }

    *(v7 + 167) = *(v7 + 167) & 0xFFF8 | v32 & 7;
    return result;
  }

  v52 = *(a3 + 167) & 7;
  if (v32)
  {
    v53 = *(a5 + 164);
    if (v53 > v32)
    {
      v54 = v53 + 1;
      v55 = v52 - v32;
      if (v52 - v32 >= 0)
      {
        v56 = v52 - v32;
      }

      else
      {
        v56 = v32 - v52;
      }

      if (v54 > 2 * v32)
      {
        if (v56 > v32)
        {
          goto LABEL_109;
        }

        if (v55 <= 0)
        {
          goto LABEL_81;
        }

        goto LABEL_107;
      }

      if (v56 < (v54 - v32))
      {
        if (v55 <= 0)
        {
LABEL_81:
          v52 = (-2 * v55);
          goto LABEL_109;
        }

LABEL_107:
        v62 = result;
        v52 = (2 * v55 - 1);
        v63 = (a6 + 18 * v24 + 18);
        v64 = (a4 + 16);
        goto LABEL_110;
      }
    }

    v52 = (v53 - v52);
  }

LABEL_109:
  v62 = result;
  v63 = (a6 + 18 * v24 + 18);
  v64 = (a4 + 16);
  if (v52 <= 0)
  {
    v65 = a3;
    v72 = *a2;
    v73 = a2[1];
    v68 = v63[v52];
    v69 = *(a4 + 32);
    v70 = *(a4 + 40);
    v71 = v70 >> 8;
    goto LABEL_113;
  }

LABEL_110:
  v65 = a3;
  v66 = &v63[v52];
  v67 = *(v66 - 1);
  v68 = *v66;
  v69 = *(a4 + 32);
  v70 = *(a4 + 40);
  v71 = v70 >> 8;
  v72 = v11;
  v73 = v10;
  if ((v67 & 0x80000000) == 0)
  {
    v74 = a4;
    v75 = ((v71 * (v67 >> 6)) >> 1) - 4 * v52 + 32;
    v69 += v70 - v75;
    v76 = 4 * v52 - ((v71 * (v68 >> 6)) >> 1) + v75;
    goto LABEL_114;
  }

LABEL_113:
  v74 = a4;
  v76 = v70 + 4 * v52 - (((v68 >> 6) * v71) >> 1);
LABEL_114:
  result = od_ec_enc_normalize(v64, v69, v76 - 28);
  if (*(v74 + 48))
  {
    v77 = v63[8];
    v78 = (v77 >> 4) + 5;
    v79 = *v63;
    if (v52 <= 0)
    {
      *v63 = v79 - (v79 >> v78);
      v81 = v63[1];
    }

    else
    {
      v80 = v52 << 56;
      *v63 = v79 + ((0x8000 - v79) >> v78);
      v81 = v63[1];
      if (v52 << 56 != 0x100000000000000)
      {
        v63[1] = v81 + ((0x8000 - v81) >> v78);
        v82 = v63[2];
        if (v52 > 2)
        {
          v63[2] = v82 + ((0x8000 - v82) >> v78);
          v83 = v63[3];
          if (v80 != 0x300000000000000)
          {
            v63[3] = v83 + ((0x8000 - v83) >> v78);
            v84 = v63[4];
            if (v52 > 4)
            {
              v63[4] = v84 + ((0x8000 - v84) >> v78);
              v85 = v63[5];
              if (v80 != 0x500000000000000)
              {
                v63[5] = v85 + ((0x8000 - v85) >> v78);
                v86 = v63[6];
                if (v52 > 6)
                {
                  v87 = v86 + ((0x8000 - v86) >> v78);
LABEL_130:
                  v63[6] = v87;
                  if (v77 < 0x20)
                  {
                    LOWORD(v77) = v77 + 1;
                  }

                  v63[8] = v77;
                  goto LABEL_133;
                }

LABEL_129:
                v87 = v86 - (v86 >> v78);
                goto LABEL_130;
              }

LABEL_128:
              v63[5] = v85 - (v85 >> v78);
              v86 = v63[6];
              goto LABEL_129;
            }

LABEL_127:
            v63[4] = v84 - (v84 >> v78);
            v85 = v63[5];
            goto LABEL_128;
          }

LABEL_126:
          v63[3] = v83 - (v83 >> v78);
          v84 = v63[4];
          goto LABEL_127;
        }

LABEL_125:
        v63[2] = v82 - (v82 >> v78);
        v83 = v63[3];
        goto LABEL_126;
      }
    }

    v63[1] = v81 - (v81 >> v78);
    v82 = v63[2];
    goto LABEL_125;
  }

LABEL_133:
  v88 = *v65;
  v89 = v62[75] - v72;
  if (v89 >= mi_size_high_4[v88])
  {
    v90 = mi_size_high_4[v88];
  }

  else
  {
    v90 = v89;
  }

  if (v90 >= 1)
  {
    v91 = v62[76];
    v92 = v73;
    v93 = (*(*v62 + 80) + v73 + v91 * v72);
    v94 = v65[167];
    v95 = mi_size_wide_5[v88];
    if (v91 - v92 < v95)
    {
      v95 = v91 - v92;
    }

    v96 = v95;
    do
    {
      result = memset(v93, v94 & 7, v96);
      v93 += v91;
      --v90;
    }

    while (v90);
  }

  return result;
}

_DWORD *write_delta_q_params(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result + 5120;
  if (!result[6092])
  {
    return result;
  }

  v6 = *(result + 3085);
  v7 = *(v6 + 32) - 1;
  if ((v7 & *a2) != 0)
  {
    return result;
  }

  v8 = **(a2 + 7864);
  v9 = *(a2 + 4) & v7;
  v10 = *v8 != *(v6 + 28) || a3 == 0;
  if (!v10 || v9 != 0)
  {
    return result;
  }

  v13 = (*(v8 + 1) - *(a2 + 10724)) / result[6093];
  v14 = (*(a2 + 10648) + 12288);
  if (v13 >= 0)
  {
    v15 = (*(v8 + 1) - *(a2 + 10724)) / result[6093];
  }

  else
  {
    v15 = -v13;
  }

  if (v15 >= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = v15;
  }

  v17 = &v14[v16];
  v68 = result;
  if (v13)
  {
    v18 = v17[1410];
    v19 = v17[1411];
    v20 = *(a4 + 32);
    v21 = *(a4 + 40);
    v22 = v21 >> 8;
    if ((v18 & 0x80000000) == 0)
    {
      v23 = 4 * v16;
      v24 = ((v22 * (v18 >> 6)) >> 1) - v23 + 16;
      v20 += v21 - v24;
      v25 = v23 - ((v22 * (v19 >> 6)) >> 1) + v24;
      goto LABEL_22;
    }
  }

  else
  {
    v19 = v17[1411];
    v20 = *(a4 + 32);
    v21 = *(a4 + 40);
    v22 = v21 >> 8;
  }

  v25 = v21 + 4 * v16 - (((v19 >> 6) * v22) >> 1);
LABEL_22:
  result = od_ec_enc_normalize((a4 + 16), v20, v25 - 12);
  if (*(a4 + 48))
  {
    v26 = v14[1415];
    v27 = (v26 >> 4) + 5;
    v28 = v14[1411];
    v29 = v28 - (v28 >> ((v26 >> 4) + 5));
    v30 = v28 + ((0x8000 - v28) >> ((v26 >> 4) + 5));
    if (!v13)
    {
      LOWORD(v30) = v29;
    }

    v14[1411] = v30;
    v31 = v14[1412];
    if (v15 <= 1)
    {
      v14[1412] = v31 - (v31 >> v27);
      v32 = v14[1413];
    }

    else
    {
      v14[1412] = v31 + ((0x8000 - v31) >> v27);
      v32 = v14[1413];
      if (v15 != 2)
      {
        v33 = v32 + ((0x8000 - v32) >> v27);
LABEL_30:
        v14[1413] = v33;
        if (v26 < 0x20)
        {
          LOWORD(v26) = v26 + 1;
        }

        v14[1415] = v26;
        goto LABEL_33;
      }
    }

    v33 = v32 - (v32 >> v27);
    goto LABEL_30;
  }

LABEL_33:
  if (v15 >= 3)
  {
    v34 = __clz(v15 - 1);
    v35 = v34 ^ 0x1F;
    v36 = 1 << (v34 ^ 0x1F);
    v37 = (v34 ^ 0x1F) - 1;
    v38 = *(a4 + 40);
    v39 = (v38 >> 1) & 0x7F80 | 4;
    v40 = v38 - v39;
    if ((v37 & 4) != 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = v40;
    }

    od_ec_enc_normalize((a4 + 16), *(a4 + 32) + (v40 & (v37 << 29 >> 31)), v41);
    v42 = *(a4 + 40);
    v43 = (v42 >> 1) & 0x7F80 | 4;
    v44 = v42 - v43;
    if ((v37 & 2) != 0)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    od_ec_enc_normalize((a4 + 16), *(a4 + 32) + (v44 & (v37 << 30 >> 31)), v45);
    v46 = *(a4 + 40);
    v47 = (v46 >> 1) & 0x7F80 | 4;
    v48 = v46 - v47;
    if (v37)
    {
      v49 = v47;
    }

    else
    {
      v49 = v48;
    }

    od_ec_enc_normalize((a4 + 16), *(a4 + 32) + ((v37 << 31 >> 31) & v48), v49);
    v50 = v15 + ~v36;
    v51 = v35 + 1;
    do
    {
      v52 = *(a4 + 40);
      v53 = (v52 >> 1) & 0x7F80 | 4;
      v54 = 1 << (v51 - 2);
      v55 = v52 - v53;
      v56 = (v54 & v50) == 0;
      if ((v54 & v50) != 0)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0;
      }

      if (v56)
      {
        v58 = v55;
      }

      else
      {
        v58 = v53;
      }

      result = od_ec_enc_normalize((a4 + 16), *(a4 + 32) + v57, v58);
      --v51;
    }

    while (v51 > 1);
  }

  if (v13)
  {
    v59 = *(a4 + 40);
    v60 = (v59 >> 1) & 0x7F80 | 4;
    v61 = v59 - v60;
    if (v13 < 0)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    if (v13 < 0)
    {
      v63 = v60;
    }

    else
    {
      v63 = v61;
    }

    result = od_ec_enc_normalize((a4 + 16), *(a4 + 32) + v62, v63);
  }

  *(a2 + 10724) = *(v8 + 1);
  if (v4[974])
  {
    if (v4[976])
    {
      v64 = 0;
      v65 = v8 + 163;
      v66 = a2 + 10753;
      if (*(*(v68 + 3085) + 77))
      {
        v67 = 2;
      }

      else
      {
        v67 = 4;
      }

      do
      {
        result = write_delta_lflevel(*(a2 + 10648), v64, (v65[v64] - *(v66 + v64)) / v4[975], 1, a4);
        *(v66 + v64) = v65[v64];
        ++v64;
      }

      while (v67 != v64);
    }

    else
    {
      result = write_delta_lflevel(*(a2 + 10648), -1, (v8[162] - *(a2 + 10752)) / v4[975], 0, a4);
      *(a2 + 10752) = v8[162];
    }
  }

  return result;
}

_DWORD *write_intra_prediction_modes(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v368 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 10648);
  v8 = *(a2 + 7864);
  v9 = *v8;
  v10 = (*v8)[2];
  v11 = **v8;
  if (!a3)
  {
    v14 = &v7[14 * size_group_lookup_0[**v8] + 6363];
    if ((*v8)[2])
    {
      goto LABEL_7;
    }

LABEL_11:
    v17 = *v14;
    v18 = *(a4 + 32);
    v19 = *(a4 + 40);
    v20 = v19 >> 8;
LABEL_12:
    result = od_ec_enc_normalize((a4 + 16), v18, v19 + 4 * v10 - (((v17 >> 6) * v20) >> 1) - 48);
    if (!*(a4 + 48))
    {
      goto LABEL_41;
    }

    goto LABEL_13;
  }

  v12 = *(a2 + 7888);
  v13 = *(a2 + 7880);
  if (v12)
  {
    v12 = *(v12 + 2);
  }

  if (v13)
  {
    v13 = *(v13 + 2);
  }

  v14 = &v7[70 * intra_mode_context[v12] + 7093 + 14 * intra_mode_context[v13]];
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v15 = &v14[v10];
  v16 = *(v15 - 1);
  v17 = *v15;
  v18 = *(a4 + 32);
  v19 = *(a4 + 40);
  v20 = v19 >> 8;
  if (v16 < 0)
  {
    goto LABEL_12;
  }

  v21 = ((v20 * (v16 >> 6)) >> 1) - 4 * v10 + 52;
  result = od_ec_enc_normalize((a4 + 16), v18 + v19 - v21, 4 * v10 - ((v20 * (v17 >> 6)) >> 1) + v21 - 48);
  if (!*(a4 + 48))
  {
    goto LABEL_41;
  }

LABEL_13:
  v23 = v14 + 13;
  v24 = v14[13];
  v25 = (v24 >> 4) + 5;
  v26 = *v14;
  if (v10 <= 0)
  {
    *v14 = v26 - (v26 >> v25);
    v27 = v14[1];
    goto LABEL_27;
  }

  *v14 = v26 + ((0x8000 - v26) >> v25);
  v27 = v14[1];
  if (v10 == 1)
  {
LABEL_27:
    v14[1] = v27 - (v27 >> v25);
    v28 = v14[2];
    goto LABEL_28;
  }

  v14[1] = v27 + ((0x8000 - v27) >> v25);
  v28 = v14[2];
  if (v10 <= 2)
  {
LABEL_28:
    v14[2] = v28 - (v28 >> v25);
    v29 = v14[3];
    goto LABEL_29;
  }

  v14[2] = v28 + ((0x8000 - v28) >> v25);
  v29 = v14[3];
  if (v10 == 3)
  {
LABEL_29:
    v14[3] = v29 - (v29 >> v25);
    v30 = v14[4];
    goto LABEL_30;
  }

  v14[3] = v29 + ((0x8000 - v29) >> v25);
  v30 = v14[4];
  if (v10 <= 4)
  {
LABEL_30:
    v14[4] = v30 - (v30 >> v25);
    v31 = v14[5];
    goto LABEL_31;
  }

  v14[4] = v30 + ((0x8000 - v30) >> v25);
  v31 = v14[5];
  if (v10 == 5)
  {
LABEL_31:
    v14[5] = v31 - (v31 >> v25);
    v32 = v14[6];
    goto LABEL_32;
  }

  v14[5] = v31 + ((0x8000 - v31) >> v25);
  v32 = v14[6];
  if (v10 <= 6)
  {
LABEL_32:
    v14[6] = v32 - (v32 >> v25);
    v33 = v14[7];
    goto LABEL_33;
  }

  v14[6] = v32 + ((0x8000 - v32) >> v25);
  v33 = v14[7];
  if (v10 == 7)
  {
LABEL_33:
    v14[7] = v33 - (v33 >> v25);
    v34 = v14[8];
    goto LABEL_34;
  }

  v14[7] = v33 + ((0x8000 - v33) >> v25);
  v34 = v14[8];
  if (v10 <= 8)
  {
LABEL_34:
    v14[8] = v34 - (v34 >> v25);
    v35 = v14[9];
    goto LABEL_35;
  }

  v14[8] = v34 + ((0x8000 - v34) >> v25);
  v35 = v14[9];
  if (v10 == 9)
  {
LABEL_35:
    v14[9] = v35 - (v35 >> v25);
    v36 = v14[10];
    goto LABEL_36;
  }

  v14[9] = v35 + ((0x8000 - v35) >> v25);
  v36 = v14[10];
  if (v10 <= 0xA)
  {
LABEL_36:
    v42 = v36 - (v36 >> v25);
    v43 = v14[11];
    v39 = v14 + 11;
    v38 = v43;
    *(v39 - 1) = v42;
    goto LABEL_37;
  }

  v37 = v36 + ((0x8000 - v36) >> v25);
  v40 = v14[11];
  v39 = v14 + 11;
  v38 = v40;
  *(v39 - 1) = v37;
  if (v10 == 11)
  {
LABEL_37:
    v41 = v38 - (v38 >> v25);
    goto LABEL_38;
  }

  v41 = v38 + ((0x8000 - v38) >> v25);
LABEL_38:
  *v39 = v41;
  if (v24 < 0x20)
  {
    LOWORD(v24) = v24 + 1;
  }

  *v23 = v24;
LABEL_41:
  if (v11 >= 3 && (v10 - 9) >= 0xFFFFFFF8)
  {
    result = write_angle_delta(a4, v9[88], &v7[8 * v10 + 7435]);
  }

  if (!*(*(a1 + 24680) + 77) && *(a2 + 12) == 1)
  {
    v45 = v9[3];
    v46 = **(a2 + 7864);
    v47 = *v46;
    if (*(a2 + 4 * (*(v46 + 167) & 7) + 10692))
    {
      v48 = av1_ss_size_lookup[4 * v47 + 2 * *(a2 + 2628) + *(a2 + 2632)] == 0;
    }

    else
    {
      v48 = (0x1F07FFuLL >> v47) & (0x2F0BFFuLL >> v47);
    }

    v49 = &v7[195 * (v48 & 1) + 6419 + 15 * v10];
    if (v48)
    {
      v50 = 14;
    }

    else
    {
      v50 = 13;
    }

    if (v45)
    {
      v51 = &v49[v9[3]];
      v52 = *(v51 - 1);
      v53 = *v51;
      v54 = *(a4 + 32);
      v55 = *(a4 + 40);
      v56 = v50 - 1;
      v57 = v55 >> 8;
      if ((v52 & 0x80000000) == 0)
      {
        v58 = ((v57 * (v52 >> 6)) >> 1) + 4 * (v50 - v45);
        result = od_ec_enc_normalize((a4 + 16), v54 + v55 - v58, v58 - ((v57 * (v53 >> 6)) >> 1) + 4 * (v45 - v56));
        if (!*(a4 + 48))
        {
          goto LABEL_68;
        }

        goto LABEL_61;
      }
    }

    else
    {
      v53 = *v49;
      v54 = *(a4 + 32);
      v55 = *(a4 + 40);
      v56 = v50 - 1;
      v57 = v55 >> 8;
    }

    result = od_ec_enc_normalize((a4 + 16), v54, v55 + 4 * (v45 - v56) - (((v53 >> 6) * v57) >> 1));
    if (!*(a4 + 48))
    {
      goto LABEL_68;
    }

LABEL_61:
    v59 = 0;
    v60 = v49[v50];
    v61 = (v60 >> 4) + 5;
    do
    {
      v62 = v49[v59];
      v63 = v62 - (v62 >> v61);
      v64 = v62 + ((0x8000 - v62) >> v61);
      if (v59 >= v45)
      {
        LOWORD(v64) = v63;
      }

      v49[v59++] = v64;
    }

    while (v50 - 1 != v59);
    v65 = v49[v50];
    if (v60 < 0x20)
    {
      ++v65;
    }

    v49[v50] = v65;
LABEL_68:
    if (v45 != 13)
    {
      goto LABEL_180;
    }

    v360 = v9[93];
    v66 = v9[92];
    v67 = v7 + 10509;
    if (v66 <= 0)
    {
      v70 = v67[v9[92]];
      v71 = *(a4 + 32);
      v72 = *(a4 + 40);
      v73 = v72 >> 8;
    }

    else
    {
      v68 = &v67[v66];
      v69 = *(v68 - 1);
      v70 = *v68;
      v71 = *(a4 + 32);
      v72 = *(a4 + 40);
      v73 = v72 >> 8;
      if ((v69 & 0x80000000) == 0)
      {
        v74 = ((v73 * (v69 >> 6)) >> 1) - 4 * v66 + 32;
        v71 += v72 - v74;
        v75 = 4 * v66 - ((v73 * (v70 >> 6)) >> 1) + v74;
        goto LABEL_74;
      }
    }

    v75 = v72 + 4 * v66 - (((v70 >> 6) * v73) >> 1);
LABEL_74:
    result = od_ec_enc_normalize((a4 + 16), v71, v75 - 28);
    v76 = v360;
    if (!*(a4 + 48))
    {
      goto LABEL_93;
    }

    v77 = v7[10517];
    v78 = (v77 >> 4) + 5;
    v79 = v7[10509];
    if (v66 <= 0)
    {
      v7[10509] = v79 - (v79 >> v78);
      v81 = v7[10510];
    }

    else
    {
      v80 = v66 << 56;
      v7[10509] = v79 + ((0x8000 - v79) >> v78);
      v81 = v7[10510];
      if (v66 << 56 != 0x100000000000000)
      {
        v7[10510] = v81 + ((0x8000 - v81) >> v78);
        v82 = v7[10511];
        if (v66 > 2)
        {
          v7[10511] = v82 + ((0x8000 - v82) >> v78);
          v83 = v7[10512];
          if (v80 != 0x300000000000000)
          {
            v7[10512] = v83 + ((0x8000 - v83) >> v78);
            v84 = v7[10513];
            if (v66 > 4)
            {
              v7[10513] = v84 + ((0x8000 - v84) >> v78);
              v85 = v7[10514];
              if (v80 != 0x500000000000000)
              {
                v7[10514] = v85 + ((0x8000 - v85) >> v78);
                v86 = v7[10515];
                if (v66 > 6)
                {
                  v87 = v86 + ((0x8000 - v86) >> v78);
LABEL_90:
                  v7[10515] = v87;
                  if (v77 < 0x20)
                  {
                    LOWORD(v77) = v77 + 1;
                  }

                  v7[10517] = v77;
LABEL_93:
                  v88 = v66 + 1;
                  v89 = 11 * (v66 + 1);
                  v90 = v89 >> 5;
                  if (v89 < 0x20)
                  {
                    goto LABEL_139;
                  }

                  v91 = &v7[17 * v66 + 10484];
                  v92 = v360 >> 4;
                  v93 = &v91[v360 >> 4];
                  v356 = v360 >> 4;
                  if (v360 > 0xF)
                  {
                    v98 = *(v93 - 1);
                    v94 = *v93;
                    v95 = *(a4 + 32);
                    v96 = *(a4 + 40);
                    v97 = v96 >> 8;
                    if ((v98 & 0x80000000) == 0)
                    {
                      v99 = 4 * v92;
                      v100 = ((v97 * (v98 >> 6)) >> 1) - v99 + 64;
                      v95 += v96 - v100;
                      v101 = v99 - ((v97 * (v94 >> 6)) >> 1) + v100;
                      goto LABEL_99;
                    }
                  }

                  else
                  {
                    v94 = *v93;
                    v95 = *(a4 + 32);
                    v96 = *(a4 + 40);
                    v97 = v96 >> 8;
                  }

                  v101 = v96 + 4 * v92 - (((v94 >> 6) * v97) >> 1);
LABEL_99:
                  result = od_ec_enc_normalize((a4 + 16), v95, v101 - 60);
                  v76 = v360;
                  if (!*(a4 + 48))
                  {
                    goto LABEL_139;
                  }

                  v102 = v91[16];
                  v103 = (v102 >> 4) + 5;
                  v104 = *v91;
                  if (v360 > 0xF)
                  {
                    *v91 = v104 + ((0x8000 - v104) >> v103);
                    v105 = v91[1];
                    if (v360 > 0x1F)
                    {
                      v91[1] = v105 + ((0x8000 - v105) >> v103);
                      v106 = v91[2];
                      if (v360 > 0x2F)
                      {
                        v91[2] = v106 + ((0x8000 - v106) >> v103);
                        v107 = v91[3];
                        if (v360 > 0x3F)
                        {
                          v91[3] = v107 + ((0x8000 - v107) >> v103);
                          v108 = v91[4];
                          if (v360 > 0x4F)
                          {
                            v91[4] = v108 + ((0x8000 - v108) >> v103);
                            v109 = v91[5];
                            if (v360 > 0x5F)
                            {
                              v91[5] = v109 + ((0x8000 - v109) >> v103);
                              v110 = v91[6];
                              if (v360 > 0x6F)
                              {
                                v91[6] = v110 + ((0x8000 - v110) >> v103);
                                v111 = v91[7];
                                if ((v360 & 0x80) != 0)
                                {
                                  v91[7] = v111 + ((0x8000 - v111) >> v103);
                                  v113 = v91[8];
                                  if (v360 > 0x8F)
                                  {
                                    v91[8] = v113 + ((0x8000 - v113) >> v103);
                                    v114 = v91[9];
                                    if (v360 > 0x9F)
                                    {
                                      v91[9] = v114 + ((0x8000 - v114) >> v103);
                                      v115 = v91[10];
                                      if (v360 > 0xAF)
                                      {
                                        v91[10] = v115 + ((0x8000 - v115) >> v103);
                                        v116 = v91[11];
                                        if (v360 > 0xBF)
                                        {
                                          v91[11] = v116 + ((0x8000 - v116) >> v103);
                                          v117 = v91[12];
                                          if (v360 > 0xCF)
                                          {
                                            v91[12] = v117 + ((0x8000 - v117) >> v103);
                                            v120 = v91[13];
                                            if (v360 <= 0xDF)
                                            {
                                              v76 = v360;
                                              v91[13] = v120 - (v120 >> v103);
                                              v118 = v91[14];
                                              if (v356 == 15)
                                              {
                                                goto LABEL_122;
                                              }
                                            }

                                            else
                                            {
                                              v76 = v360;
                                              v91[13] = v120 + ((0x8000 - v120) >> v103);
                                              v118 = v91[14];
                                              if (v356 == 15)
                                              {
                                                goto LABEL_122;
                                              }
                                            }

                                            goto LABEL_135;
                                          }

                                          v112 = v360 >> 4;
                                          v76 = v360;
LABEL_121:
                                          v91[12] = v117 - (v117 >> v103);
                                          v91[13] -= v91[13] >> v103;
                                          v118 = v91[14];
                                          if (v112 == 15)
                                          {
LABEL_122:
                                            v119 = v118 + ((0x8000 - v118) >> v103);
LABEL_136:
                                            v91[14] = v119;
                                            if (v102 < 0x20)
                                            {
                                              LOWORD(v102) = v102 + 1;
                                            }

                                            v91[16] = v102;
LABEL_139:
                                            if (!(-3 * v90 + v88))
                                            {
                                              goto LABEL_180;
                                            }

                                            v121 = &v7[51 * v88 + 10467 + 17 * v90 + -153 * v90];
                                            v122 = v76 & 0xF;
                                            if ((v76 & 0xF) != 0)
                                            {
                                              v123 = &v121[v122];
                                              v124 = *(v123 - 1);
                                              v125 = *v123;
                                              v126 = *(a4 + 32);
                                              v127 = *(a4 + 40);
                                              v128 = v127 >> 8;
                                              if ((v124 & 0x80000000) == 0)
                                              {
                                                v129 = ((v128 * (v124 >> 6)) >> 1) - 4 * v122 + 64;
                                                v126 += v127 - v129;
                                                v130 = 4 * v122 - ((v128 * (v125 >> 6)) >> 1) + v129;
                                                goto LABEL_145;
                                              }
                                            }

                                            else
                                            {
                                              v125 = *v121;
                                              v126 = *(a4 + 32);
                                              v127 = *(a4 + 40);
                                              v128 = v127 >> 8;
                                            }

                                            v130 = v127 + 4 * v122 - (((v125 >> 6) * v128) >> 1);
LABEL_145:
                                            result = od_ec_enc_normalize((a4 + 16), v126, v130 - 60);
                                            if (*(a4 + 48))
                                            {
                                              v131 = v121[16];
                                              v132 = (v131 >> 4) + 5;
                                              v133 = *v121;
                                              if (v122)
                                              {
                                                *v121 = v133 + ((0x8000 - v133) >> v132);
                                                v134 = v121[1];
                                                if (v122 != 1)
                                                {
                                                  v121[1] = v134 + ((0x8000 - v134) >> v132);
                                                  v135 = v121[2];
                                                  if (v122 > 2)
                                                  {
                                                    v121[2] = v135 + ((0x8000 - v135) >> v132);
                                                    v136 = v121[3];
                                                    if (v122 != 3)
                                                    {
                                                      v121[3] = v136 + ((0x8000 - v136) >> v132);
                                                      v137 = v121[4];
                                                      if (v122 > 4)
                                                      {
                                                        v121[4] = v137 + ((0x8000 - v137) >> v132);
                                                        v138 = v121[5];
                                                        if (v122 != 5)
                                                        {
                                                          v121[5] = v138 + ((0x8000 - v138) >> v132);
                                                          v139 = v121[6];
                                                          if (v122 > 6)
                                                          {
                                                            v121[6] = v139 + ((0x8000 - v139) >> v132);
                                                            v140 = v121[7];
                                                            if (v122 != 7)
                                                            {
                                                              v121[7] = v140 + ((0x8000 - v140) >> v132);
                                                              v141 = v121[8];
                                                              if (v122 > 8)
                                                              {
                                                                v121[8] = v141 + ((0x8000 - v141) >> v132);
                                                                v142 = v121[9];
                                                                if (v122 != 9)
                                                                {
                                                                  v121[9] = v142 + ((0x8000 - v142) >> v132);
                                                                  v143 = v121[10];
                                                                  if (v122 > 0xA)
                                                                  {
                                                                    v121[10] = v143 + ((0x8000 - v143) >> v132);
                                                                    v144 = v121[11];
                                                                    if (v122 != 11)
                                                                    {
                                                                      v121[11] = v144 + ((0x8000 - v144) >> v132);
                                                                      v145 = v121[12];
                                                                      if (v122 > 0xC)
                                                                      {
                                                                        v121[12] = v145 + ((0x8000 - v145) >> v132);
                                                                        v146 = v121[13];
                                                                        if (v122 != 13)
                                                                        {
                                                                          v121[13] = v146 + ((0x8000 - v146) >> v132);
                                                                          v147 = v121[14];
                                                                          if (v122 == 15)
                                                                          {
                                                                            v148 = v147 + ((0x8000 - v147) >> v132);
LABEL_177:
                                                                            v121[14] = v148;
                                                                            if (v131 < 0x20)
                                                                            {
                                                                              LOWORD(v131) = v131 + 1;
                                                                            }

                                                                            v121[16] = v131;
                                                                            goto LABEL_180;
                                                                          }

LABEL_176:
                                                                          v148 = v147 - (v147 >> v132);
                                                                          goto LABEL_177;
                                                                        }

LABEL_175:
                                                                        v121[13] = v146 - (v146 >> v132);
                                                                        v147 = v121[14];
                                                                        goto LABEL_176;
                                                                      }

LABEL_174:
                                                                      v121[12] = v145 - (v145 >> v132);
                                                                      v146 = v121[13];
                                                                      goto LABEL_175;
                                                                    }

LABEL_173:
                                                                    v121[11] = v144 - (v144 >> v132);
                                                                    v145 = v121[12];
                                                                    goto LABEL_174;
                                                                  }

LABEL_172:
                                                                  v121[10] = v143 - (v143 >> v132);
                                                                  v144 = v121[11];
                                                                  goto LABEL_173;
                                                                }

LABEL_171:
                                                                v121[9] = v142 - (v142 >> v132);
                                                                v143 = v121[10];
                                                                goto LABEL_172;
                                                              }

LABEL_170:
                                                              v121[8] = v141 - (v141 >> v132);
                                                              v142 = v121[9];
                                                              goto LABEL_171;
                                                            }

LABEL_169:
                                                            v121[7] = v140 - (v140 >> v132);
                                                            v141 = v121[8];
                                                            goto LABEL_170;
                                                          }

LABEL_168:
                                                          v121[6] = v139 - (v139 >> v132);
                                                          v140 = v121[7];
                                                          goto LABEL_169;
                                                        }

LABEL_167:
                                                        v121[5] = v138 - (v138 >> v132);
                                                        v139 = v121[6];
                                                        goto LABEL_168;
                                                      }

LABEL_166:
                                                      v121[4] = v137 - (v137 >> v132);
                                                      v138 = v121[5];
                                                      goto LABEL_167;
                                                    }

LABEL_165:
                                                    v121[3] = v136 - (v136 >> v132);
                                                    v137 = v121[4];
                                                    goto LABEL_166;
                                                  }

LABEL_164:
                                                  v121[2] = v135 - (v135 >> v132);
                                                  v136 = v121[3];
                                                  goto LABEL_165;
                                                }
                                              }

                                              else
                                              {
                                                *v121 = v133 - (v133 >> v132);
                                                v134 = v121[1];
                                              }

                                              v121[1] = v134 - (v134 >> v132);
                                              v135 = v121[2];
                                              goto LABEL_164;
                                            }

LABEL_180:
                                            if (v11 >= 3)
                                            {
                                              v149 = get_uv_mode_uv2y[v45];
                                              if ((v149 - 9) >= 0xFFFFFFF8)
                                              {
                                                result = write_angle_delta(a4, v9[89], &v7[8 * v149 + 7435]);
                                              }
                                            }

                                            goto LABEL_183;
                                          }

LABEL_135:
                                          v119 = v118 - (v118 >> v103);
                                          goto LABEL_136;
                                        }

                                        v112 = v360 >> 4;
                                        v76 = v360;
LABEL_120:
                                        v91[11] = v116 - (v116 >> v103);
                                        v117 = v91[12];
                                        goto LABEL_121;
                                      }

                                      v112 = v360 >> 4;
                                      v76 = v360;
LABEL_119:
                                      v91[10] = v115 - (v115 >> v103);
                                      v116 = v91[11];
                                      goto LABEL_120;
                                    }

                                    v112 = v360 >> 4;
                                    v76 = v360;
LABEL_118:
                                    v91[9] = v114 - (v114 >> v103);
                                    v115 = v91[10];
                                    goto LABEL_119;
                                  }

                                  v112 = v360 >> 4;
LABEL_117:
                                  v91[8] = v113 - (v113 >> v103);
                                  v114 = v91[9];
                                  goto LABEL_118;
                                }

                                v112 = v360 >> 4;
LABEL_116:
                                v91[7] = v111 - (v111 >> v103);
                                v113 = v91[8];
                                goto LABEL_117;
                              }

                              v112 = v360 >> 4;
LABEL_115:
                              v91[6] = v110 - (v110 >> v103);
                              v111 = v91[7];
                              goto LABEL_116;
                            }

                            v112 = v360 >> 4;
LABEL_114:
                            v91[5] = v109 - (v109 >> v103);
                            v110 = v91[6];
                            goto LABEL_115;
                          }

                          v112 = v360 >> 4;
LABEL_113:
                          v91[4] = v108 - (v108 >> v103);
                          v109 = v91[5];
                          goto LABEL_114;
                        }

                        v112 = v360 >> 4;
LABEL_112:
                        v91[3] = v107 - (v107 >> v103);
                        v108 = v91[4];
                        goto LABEL_113;
                      }

                      v112 = v360 >> 4;
LABEL_111:
                      v91[2] = v106 - (v106 >> v103);
                      v107 = v91[3];
                      goto LABEL_112;
                    }
                  }

                  else
                  {
                    *v91 = v104 - (v104 >> v103);
                    v105 = v91[1];
                  }

                  v112 = v360 >> 4;
                  v91[1] = v105 - (v105 >> v103);
                  v106 = v91[2];
                  goto LABEL_111;
                }

LABEL_89:
                v87 = v86 - (v86 >> v78);
                goto LABEL_90;
              }

LABEL_88:
              v7[10514] = v85 - (v85 >> v78);
              v86 = v7[10515];
              goto LABEL_89;
            }

LABEL_87:
            v7[10513] = v84 - (v84 >> v78);
            v85 = v7[10514];
            goto LABEL_88;
          }

LABEL_86:
          v7[10512] = v83 - (v83 >> v78);
          v84 = v7[10513];
          goto LABEL_87;
        }

LABEL_85:
        v7[10511] = v82 - (v82 >> v78);
        v83 = v7[10512];
        goto LABEL_86;
      }
    }

    v7[10510] = v81 - (v81 >> v78);
    v82 = v7[10511];
    goto LABEL_85;
  }

LABEL_183:
  if (!*(a1 + 495) || v11 <= 0xF && ((1 << v11) & 0xE007) != 0)
  {
    goto LABEL_186;
  }

  v161 = *(*(a1 + 24680) + 77);
  v162 = v9 + 94;
  v163 = num_pels_log2_lookup_3[*v9] - 6;
  if (v9[2])
  {
    goto LABEL_312;
  }

  v164 = v9[142];
  v165 = *(a2 + 7880);
  v166 = *(a2 + 7888);
  if (v166)
  {
    LODWORD(v166) = *(v166 + 142) != 0;
  }

  if (v165 && *(v165 + 142))
  {
    LODWORD(v166) = v166 + 1;
  }

  v167 = *(a2 + 10648) + 18 * v163 + 6 * v166;
  v168 = (v167 + 11204);
  if (v9[142])
  {
    v169 = *(v167 + 11206);
    v170 = *(a4 + 32);
    v171 = *(a4 + 40);
    v172 = v171 >> 8;
    if ((*v168 & 0x80000000) == 0)
    {
      v173 = ((v172 * (*v168 >> 6)) >> 1) + 4;
      v170 += v171 - v173;
      v174 = v173 - ((v172 * (v169 >> 6)) >> 1);
      goto LABEL_224;
    }
  }

  else
  {
    v169 = *v168;
    v170 = *(a4 + 32);
    v171 = *(a4 + 40);
    v172 = v171 >> 8;
  }

  v193 = (v169 >> 6) * v172;
  if (v9[142])
  {
    v194 = 0;
  }

  else
  {
    v194 = -1;
  }

  v174 = v171 + 4 * v194 - (v193 >> 1);
LABEL_224:
  result = od_ec_enc_normalize((a4 + 16), v170, v174);
  if (*(a4 + 48))
  {
    v195 = v168[2];
    v196 = (v195 >> 4) + 4;
    v197 = *v168;
    v198 = v197 - (v197 >> v196);
    v199 = v197 + ((0x8000 - v197) >> v196);
    if (!v164)
    {
      LOWORD(v199) = v198;
    }

    *v168 = v199;
    if (v195 < 0x20)
    {
      LOWORD(v195) = v195 + 1;
    }

    v168[2] = v195;
  }

  if (v164)
  {
    v354 = v161;
    v200 = (*(a2 + 10648) + 16 * v163 + 9720);
    v201 = v164 - 2;
    if (v164 <= 2)
    {
      v204 = v200[v201];
      v205 = *(a4 + 32);
      v206 = *(a4 + 40);
      v207 = v206 >> 8;
    }

    else
    {
      v202 = &v200[v201];
      v203 = *(v202 - 1);
      v204 = *v202;
      v205 = *(a4 + 32);
      v206 = *(a4 + 40);
      v207 = v206 >> 8;
      if ((v203 & 0x80000000) == 0)
      {
        v208 = ((v207 * (v203 >> 6)) >> 1) - 4 * v164 + 36;
        v205 += v206 - v208;
        v209 = 4 * v164 - ((v207 * (v204 >> 6)) >> 1) + v208;
        goto LABEL_236;
      }
    }

    v209 = v206 + 4 * v164 - (((v204 >> 6) * v207) >> 1);
LABEL_236:
    v361 = v163;
    od_ec_enc_normalize((a4 + 16), v205, v209 - 32);
    if (!*(a4 + 48))
    {
      goto LABEL_268;
    }

    v210 = v200[7];
    v211 = (v210 >> 4) + 5;
    v212 = *v200;
    if ((v164 - 2) <= 0)
    {
      *v200 = v212 - (v212 >> v211);
      v214 = v200[1];
    }

    else
    {
      v213 = v201 << 56;
      *v200 = v212 + ((0x8000 - v212) >> v211);
      v214 = v200[1];
      if (v201 << 56 != 0x100000000000000)
      {
        v200[1] = v214 + ((0x8000 - v214) >> v211);
        v215 = v200[2];
        if ((v164 - 2) > 2)
        {
          v200[2] = v215 + ((0x8000 - v215) >> v211);
          v216 = v200[3];
          if (v213 != 0x300000000000000)
          {
            v200[3] = v216 + ((0x8000 - v216) >> v211);
            v217 = v200[4];
            if ((v164 - 2) > 4)
            {
              v200[4] = v217 + ((0x8000 - v217) >> v211);
              v218 = v200[5];
              if (v213 != 0x500000000000000)
              {
                v219 = v218 + ((0x8000 - v218) >> v211);
LABEL_265:
                v200[5] = v219;
                if (v210 < 0x20)
                {
                  LOWORD(v210) = v210 + 1;
                }

                v200[7] = v210;
LABEL_268:
                v227 = *(*(a1 + 24680) + 72);
                v228 = v9[142];
                palette_cache = av1_get_palette_cache(a2, 0, &v366);
                if (palette_cache > 0)
                {
                  v230 = palette_cache;
                  v231 = palette_cache;
                  __memset_chk();
                  memset(v367, 0, sizeof(v367));
                  if (v228)
                  {
                    v232 = 0;
                    v233 = 0;
                    palette_cache = v230;
                    do
                    {
                      v234 = v367;
                      v235 = (v9 + 94);
                      v236 = v228;
                      while (1)
                      {
                        v237 = *v235++;
                        if (v237 == v366.u16[v232])
                        {
                          break;
                        }

                        ++v234;
                        if (!--v236)
                        {
                          goto LABEL_276;
                        }
                      }

                      *v234 = 1;
                      *(v364 + v232) = 1;
                      ++v233;
LABEL_276:
                      ++v232;
                    }

                    while (v232 < v231 && v233 < v228);
                    v238 = 0;
                    v239 = v367;
                    v240 = v228;
                    v241 = (v9 + 94);
                    do
                    {
                      if (!*v239++)
                      {
                        v365[v238++] = *v241;
                      }

                      ++v241;
                      --v240;
                    }

                    while (v240);
                  }

                  else
                  {
                    v238 = 0;
                    palette_cache = v230;
                  }

                  goto LABEL_299;
                }

                if (!v228)
                {
                  v238 = 0;
LABEL_311:
                  result = delta_encode_palette_colors(v365, v238, v227, 1, a4);
                  v161 = v354;
                  goto LABEL_312;
                }

                if (v228 < 4)
                {
                  v243 = 0;
LABEL_296:
                  v255 = v228 - v243;
                  v256 = &v365[v243];
                  v257 = &v9[2 * v243 + 94];
                  do
                  {
                    v258 = *v257;
                    v257 += 2;
                    *v256++ = v258;
                    --v255;
                  }

                  while (v255);
LABEL_298:
                  v238 = v228;
LABEL_299:
                  if (palette_cache >= 1 && v228)
                  {
                    v350 = v227;
                    v357 = a1;
                    v259 = 0;
                    v260 = 0;
                    v261 = palette_cache;
                    do
                    {
                      v262 = *(v364 + v259);
                      v263 = *(a4 + 40);
                      v264 = (v263 >> 1) & 0x7F80 | 4;
                      v265 = v263 - v264;
                      if (*(v364 + v259))
                      {
                        v266 = v265;
                      }

                      else
                      {
                        v266 = 0;
                      }

                      if (*(v364 + v259))
                      {
                        v267 = v264;
                      }

                      else
                      {
                        v267 = v265;
                      }

                      od_ec_enc_normalize((a4 + 16), v266 + *(a4 + 32), v267);
                      if (++v259 >= v261)
                      {
                        break;
                      }

                      v260 += v262;
                    }

                    while (v260 < v228);
                    a1 = v357;
                    LODWORD(v163) = v361;
                    v162 = v9 + 94;
                    v227 = v350;
                  }

                  goto LABEL_311;
                }

                if (v228 >= 0x10)
                {
                  v243 = v228 & 0xF0;
                  v244 = (v9 + 110);
                  v245 = &v366;
                  v246 = v243;
                  do
                  {
                    v247 = *v244[-2].i8;
                    v248 = vmovl_u16(*v244);
                    v249 = vmovl_high_u16(*v244->i8);
                    v245[-2] = vmovl_u16(*v247.i8);
                    v245[-1] = vmovl_high_u16(v247);
                    *v245 = v248;
                    v245[1] = v249;
                    v245 += 4;
                    v244 += 4;
                    v246 -= 16;
                  }

                  while (v246);
                  if (v243 == v228)
                  {
                    goto LABEL_298;
                  }

                  if ((v228 & 0xC) == 0)
                  {
                    goto LABEL_296;
                  }
                }

                else
                {
                  v243 = 0;
                }

                v250 = v243;
                v243 = v228 & 0xFC;
                v251 = &v9[2 * v250 + 94];
                v252 = &v365[v250];
                v253 = v250 - v243;
                do
                {
                  v254 = *v251++;
                  *v252++ = vmovl_u16(v254);
                  v253 += 4;
                }

                while (v253);
                if (v243 == v228)
                {
                  goto LABEL_298;
                }

                goto LABEL_296;
              }

LABEL_264:
              v219 = v218 - (v218 >> v211);
              goto LABEL_265;
            }

LABEL_263:
            v200[4] = v217 - (v217 >> v211);
            v218 = v200[5];
            goto LABEL_264;
          }

LABEL_262:
          v200[3] = v216 - (v216 >> v211);
          v217 = v200[4];
          goto LABEL_263;
        }

LABEL_261:
        v200[2] = v215 - (v215 >> v211);
        v216 = v200[3];
        goto LABEL_262;
      }
    }

    v200[1] = v214 - (v214 >> v211);
    v215 = v200[2];
    goto LABEL_261;
  }

LABEL_312:
  if (v161 || v9[3] || *(a2 + 12) != 1)
  {
    goto LABEL_186;
  }

  v268 = v9[143];
  v269 = (*(a2 + 10648) + 6 * (v9[142] != 0) + 11330);
  result = od_ec_encode_cdf_q15(a4 + 16, v9[143] != 0, v269, 2);
  if (*(a4 + 48))
  {
    v270 = v269[2];
    v271 = (v270 >> 4) + 4;
    v272 = *v269;
    v273 = v272 - (v272 >> v271);
    v274 = v272 + ((0x8000 - v272) >> v271);
    if (!v268)
    {
      LOWORD(v274) = v273;
    }

    *v269 = v274;
    if (v270 < 0x20)
    {
      LOWORD(v270) = v270 + 1;
    }

    v269[2] = v270;
  }

  if (!v268)
  {
    goto LABEL_186;
  }

  v352 = v162;
  v275 = (v268 - 2);
  v276 = (*(a2 + 10648) + 16 * v163 + 9832);
  od_ec_encode_cdf_q15(a4 + 16, v275, v276, 7);
  if (*(a4 + 48))
  {
    v277 = v276[7];
    v278 = (v277 >> 4) + 5;
    v279 = *v276;
    if (v275 <= 0)
    {
      *v276 = v279 - (v279 >> v278);
      v281 = v276[1];
    }

    else
    {
      v280 = v275 << 56;
      *v276 = v279 + ((0x8000 - v279) >> v278);
      v281 = v276[1];
      if (v275 << 56 != 0x100000000000000)
      {
        v276[1] = v281 + ((0x8000 - v281) >> v278);
        v282 = v276[2];
        if (v275 > 2)
        {
          v276[2] = v282 + ((0x8000 - v282) >> v278);
          v283 = v276[3];
          if (v280 != 0x300000000000000)
          {
            v276[3] = v283 + ((0x8000 - v283) >> v278);
            v284 = v276[4];
            if (v275 > 4)
            {
              v276[4] = v284 + ((0x8000 - v284) >> v278);
              v285 = v276[5];
              if (v280 != 0x500000000000000)
              {
                v286 = v285 + ((0x8000 - v285) >> v278);
LABEL_336:
                v276[5] = v286;
                if (v277 < 0x20)
                {
                  LOWORD(v277) = v277 + 1;
                }

                v276[7] = v277;
                goto LABEL_339;
              }

LABEL_335:
              v286 = v285 - (v285 >> v278);
              goto LABEL_336;
            }

LABEL_334:
            v276[4] = v284 - (v284 >> v278);
            v285 = v276[5];
            goto LABEL_335;
          }

LABEL_333:
          v276[3] = v283 - (v283 >> v278);
          v284 = v276[4];
          goto LABEL_334;
        }

LABEL_332:
        v276[2] = v282 - (v282 >> v278);
        v283 = v276[3];
        goto LABEL_333;
      }
    }

    v276[1] = v281 - (v281 >> v278);
    v282 = v276[2];
    goto LABEL_332;
  }

LABEL_339:
  v351 = *(*(a1 + 24680) + 72);
  v287 = v9[143];
  v362 = (v9 + 126);
  v288 = av1_get_palette_cache(a2, 1, v367);
  v358 = av1_index_color_cache(v367, v288, (v9 + 110), v287, v365, &v366);
  if (v288 >= 1 && v287)
  {
    v289 = 0;
    v290 = 0;
    do
    {
      v291 = *(v365 + v289);
      v292 = *(a4 + 40);
      v293 = (v292 >> 1) & 0x7F80 | 4;
      v294 = v292 - v293;
      if (*(v365 + v289))
      {
        v295 = v294;
      }

      else
      {
        v295 = 0;
      }

      if (*(v365 + v289))
      {
        v296 = v293;
      }

      else
      {
        v296 = v294;
      }

      od_ec_enc_normalize((a4 + 16), v295 + *(a4 + 32), v296);
      if (++v289 >= v288)
      {
        break;
      }

      v290 += v291;
    }

    while (v290 < v287);
  }

  delta_encode_palette_colors(&v366, v358, v351, 0, a4);
  v363 = 0;
  v364[0] = 0;
  palette_delta_bits_v = av1_get_palette_delta_bits_v(v352, v351, v364, &v363);
  v298 = *(a4 + 32);
  v299 = *(a4 + 40);
  v300 = (v299 >> 1) & 0x7F80;
  v355 = v287;
  if (v351 - v364[0] + v287 - 1 + (v287 - 1) * palette_delta_bits_v + 2 >= v351 * v287)
  {
    result = od_ec_enc_normalize((a4 + 16), v298, v299 - v300 - 4);
    if (v351 >= 1 && v287)
    {
      v339 = 0;
      do
      {
        v340 = v362[v339];
        v341 = v351 + 1;
        do
        {
          v342 = *(a4 + 40);
          v343 = (v342 >> 1) & 0x7F80 | 4;
          v344 = 1 << (v341 - 2);
          v345 = v342 - v343;
          v346 = (v344 & v340) == 0;
          if ((v344 & v340) != 0)
          {
            v347 = v345;
          }

          else
          {
            v347 = 0;
          }

          if (v346)
          {
            v348 = v345;
          }

          else
          {
            v348 = v343;
          }

          result = od_ec_enc_normalize((a4 + 16), *(a4 + 32) + v347, v348);
          --v341;
        }

        while (v341 > 1);
        ++v339;
      }

      while (v339 != v355);
    }
  }

  else
  {
    v301 = palette_delta_bits_v;
    v359 = a1;
    od_ec_enc_normalize((a4 + 16), v298 + v299 - (v300 | 4), v300 | 4);
    v353 = v301;
    v302 = v301 - v363;
    od_ec_encode_BOOL_q15(a4 + 16, ((v301 - v363) >> 1) & 1, 0x4000u);
    result = od_ec_encode_BOOL_q15(a4 + 16, v302 & 1, 0x4000u);
    if (v351 >= 1)
    {
      v303 = *v362;
      v304 = v351 + 1;
      do
      {
        v305 = *(a4 + 40);
        v306 = (v305 >> 1) & 0x7F80 | 4;
        v307 = 1 << (v304 - 2);
        v308 = v305 - v306;
        v309 = (v307 & v303) == 0;
        if ((v307 & v303) != 0)
        {
          v310 = v308;
        }

        else
        {
          v310 = 0;
        }

        if (v309)
        {
          v311 = v308;
        }

        else
        {
          v311 = v306;
        }

        result = od_ec_enc_normalize((a4 + 16), *(a4 + 32) + v310, v311);
        --v304;
      }

      while (v304 > 1);
    }

    v312 = v355;
    a1 = v359;
    v313 = v353;
    if (v355 >= 2)
    {
      v349 = 1 << v351;
      for (i = 1; i != v312; ++i)
      {
        v316 = &v362[i];
        v317 = *v316;
        v318 = *(v316 - 1);
        if (v317 == v318)
        {
          if (v313)
          {
            v319 = v353 + 1;
            do
            {
              result = od_ec_enc_normalize((a4 + 16), *(a4 + 32), *(a4 + 40) - ((*(a4 + 40) >> 1) & 0x7F80u) - 4);
              --v319;
            }

            while (v319 > 1);
          }

          goto LABEL_365;
        }

        v315 = v317 < v318;
        if ((v317 - v318) >= 0)
        {
          v320 = v317 - v318;
        }

        else
        {
          v320 = v318 - v317;
        }

        v321 = v349 - v320;
        if (v320 <= v349 - v320)
        {
          v313 = v353;
          if (!v353)
          {
            goto LABEL_364;
          }

          v330 = v317 < v318;
          v331 = v353 + 1;
          do
          {
            v332 = *(a4 + 40);
            v333 = (v332 >> 1) & 0x7F80 | 4;
            v334 = 1 << (v331 - 2);
            v335 = v332 - v333;
            v336 = (v334 & v320) == 0;
            if ((v334 & v320) != 0)
            {
              v337 = v335;
            }

            else
            {
              v337 = 0;
            }

            if (v336)
            {
              v338 = v335;
            }

            else
            {
              v338 = v333;
            }

            od_ec_enc_normalize((a4 + 16), *(a4 + 32) + v337, v338);
            --v331;
          }

          while (v331 > 1);
          v315 = v330;
        }

        else
        {
          if (v353)
          {
            v322 = v353 + 1;
            do
            {
              v323 = *(a4 + 40);
              v324 = (v323 >> 1) & 0x7F80 | 4;
              v325 = 1 << (v322 - 2);
              v326 = v323 - v324;
              v327 = (v325 & v321) == 0;
              if ((v325 & v321) != 0)
              {
                v328 = v326;
              }

              else
              {
                v328 = 0;
              }

              if (v327)
              {
                v329 = v326;
              }

              else
              {
                v329 = v324;
              }

              od_ec_enc_normalize((a4 + 16), *(a4 + 32) + v328, v329);
              --v322;
            }

            while (v322 > 1);
          }

          v315 = v317 >= v318;
        }

        v313 = v353;
LABEL_364:
        result = od_ec_encode_BOOL_q15(a4 + 16, v315, 0x4000u);
        v312 = v355;
LABEL_365:
        a1 = v359;
      }
    }
  }

LABEL_186:
  if (v9[2])
  {
    return result;
  }

  if (v9[142])
  {
    return result;
  }

  v150 = *v9;
  if (v150 == 255 || !*(*(a1 + 24680) + 60) || ((0x1F07FFuLL >> v150) & 1) == 0 || ((0x2F0BFFuLL >> v150) & 1) == 0)
  {
    return result;
  }

  v151 = v9[91];
  v152 = (*(a2 + 10648) + 6 * *v9 + 12562);
  if (v9[91])
  {
    v153 = &v152[v9[91]];
    v154 = *(v153 - 1);
    v155 = *v153;
    v156 = *(a4 + 32);
    v157 = *(a4 + 40);
    v158 = v157 >> 8;
    if ((v154 & 0x80000000) == 0)
    {
      v159 = ((v158 * (v154 >> 6)) >> 1) - 4 * v151 + 8;
      v156 += v157 - v159;
      v160 = 4 * v151 - ((v158 * (v155 >> 6)) >> 1) + v159;
      goto LABEL_207;
    }
  }

  else
  {
    v155 = *v152;
    v156 = *(a4 + 32);
    v157 = *(a4 + 40);
    v158 = v157 >> 8;
  }

  v160 = v157 + 4 * v151 - (((v155 >> 6) * v158) >> 1);
LABEL_207:
  result = od_ec_enc_normalize((a4 + 16), v156, v160 - 4);
  if (*(a4 + 48))
  {
    v175 = v152[2];
    v176 = (v175 >> 4) + 4;
    v177 = *v152;
    v178 = v177 - (v177 >> v176);
    v179 = v177 + ((0x8000 - v177) >> v176);
    if (v151 >= 1)
    {
      v180 = v179;
    }

    else
    {
      v180 = v178;
    }

    *v152 = v180;
    if (v175 >= 0x20)
    {
      v181 = v175;
    }

    else
    {
      v181 = v175 + 1;
    }

    v152[2] = v181;
  }

  if (v9[91])
  {
    v182 = v9[90];
    v183 = *(a2 + 10648);
    v184 = v183 + 6347;
    if (v9[90])
    {
      v185 = &v184[v182];
      v186 = *(v185 - 1);
      v187 = *v185;
      v188 = *(a4 + 32);
      v189 = *(a4 + 40);
      v190 = v189 >> 8;
      if ((v186 & 0x80000000) == 0)
      {
        v191 = ((v190 * (v186 >> 6)) >> 1) - 4 * v182 + 20;
        v188 += v189 - v191;
        v192 = 4 * v182 - ((v190 * (v187 >> 6)) >> 1) + v191;
        goto LABEL_246;
      }
    }

    else
    {
      v187 = *v184;
      v188 = *(a4 + 32);
      v189 = *(a4 + 40);
      v190 = v189 >> 8;
    }

    v192 = v189 + 4 * v182 - (((v187 >> 6) * v190) >> 1);
LABEL_246:
    result = od_ec_enc_normalize((a4 + 16), v188, v192 - 16);
    if (!*(a4 + 48))
    {
      return result;
    }

    v220 = v183[6352];
    v221 = (v220 >> 4) + 5;
    v222 = v183[6347];
    if (v182 <= 0)
    {
      v183[6347] = v222 - (v222 >> v221);
      v223 = v183[6348];
    }

    else
    {
      v183[6347] = v222 + ((0x8000 - v222) >> v221);
      v223 = v183[6348];
      if (v182 != 1)
      {
        v183[6348] = v223 + ((0x8000 - v223) >> v221);
        v224 = v183[6349];
        if (v182 > 2)
        {
          v183[6349] = v224 + ((0x8000 - v224) >> v221);
          v225 = v183[6350];
          if (v182 != 3)
          {
            v226 = v225 + ((0x8000 - v225) >> v221);
LABEL_256:
            v183[6350] = v226;
            if (v220 < 0x20)
            {
              LOWORD(v220) = v220 + 1;
            }

            v183[6352] = v220;
            return result;
          }

LABEL_255:
          v226 = v225 - (v225 >> v221);
          goto LABEL_256;
        }

LABEL_254:
        v183[6349] = v224 - (v224 >> v221);
        v225 = v183[6350];
        goto LABEL_255;
      }
    }

    v183[6348] = v223 - (v223 >> v221);
    v224 = v183[6349];
    goto LABEL_254;
  }

  return result;
}

_DWORD *write_delta_lflevel(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  if (a3 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = -a3;
  }

  if (v7 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (a4)
  {
    v9 = (a1 + 10 * a2 + 15120);
  }

  else
  {
    v9 = (a1 + 15160);
  }

  v10 = &v9[v8];
  if (!a3)
  {
    v12 = *v10;
    v13 = *(a5 + 32);
    v14 = *(a5 + 40);
    v15 = v14 >> 8;
LABEL_15:
    result = od_ec_enc_normalize((a5 + 16), v13, v14 + 4 * v8 - (((v12 >> 6) * v15) >> 1) - 12);
    if (!*(a5 + 48))
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v11 = *(v10 - 1);
  v12 = *v10;
  v13 = *(a5 + 32);
  v14 = *(a5 + 40);
  v15 = v14 >> 8;
  if (v11 < 0)
  {
    goto LABEL_15;
  }

  v16 = 4 * v8;
  v17 = ((v15 * (v11 >> 6)) >> 1) - v16 + 16;
  result = od_ec_enc_normalize((a5 + 16), v13 + v14 - v17, v16 - ((v15 * (v12 >> 6)) >> 1) + v17 - 12);
  if (!*(a5 + 48))
  {
    goto LABEL_26;
  }

LABEL_16:
  v19 = v9[4];
  v20 = (v19 >> 4) + 5;
  v21 = *v9;
  v22 = v21 - (v21 >> ((v19 >> 4) + 5));
  v23 = v21 + ((0x8000 - v21) >> ((v19 >> 4) + 5));
  if (!a3)
  {
    LOWORD(v23) = v22;
  }

  *v9 = v23;
  v24 = v9[1];
  if (v7 <= 1)
  {
    v9[1] = v24 - (v24 >> v20);
    v25 = v9[2];
    goto LABEL_22;
  }

  v9[1] = v24 + ((0x8000 - v24) >> v20);
  v25 = v9[2];
  if (v7 == 2)
  {
LABEL_22:
    v26 = v25 - (v25 >> v20);
    goto LABEL_23;
  }

  v26 = v25 + ((0x8000 - v25) >> v20);
LABEL_23:
  v9[2] = v26;
  if (v19 < 0x20)
  {
    LOWORD(v19) = v19 + 1;
  }

  v9[4] = v19;
LABEL_26:
  if (v7 >= 3)
  {
    v27 = __clz(v7 - 1);
    v28 = v27 ^ 0x1F;
    v29 = 1 << (v27 ^ 0x1F);
    v30 = (v27 ^ 0x1F) - 1;
    v31 = *(a5 + 40);
    v32 = (v31 >> 1) & 0x7F80 | 4;
    v33 = v31 - v32;
    if ((v30 & 4) != 0)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    od_ec_enc_normalize((a5 + 16), *(a5 + 32) + (v33 & (v30 << 29 >> 31)), v34);
    v35 = *(a5 + 40);
    v36 = (v35 >> 1) & 0x7F80 | 4;
    v37 = v35 - v36;
    if ((v30 & 2) != 0)
    {
      v38 = v36;
    }

    else
    {
      v38 = v37;
    }

    od_ec_enc_normalize((a5 + 16), *(a5 + 32) + (v37 & (v30 << 30 >> 31)), v38);
    v39 = *(a5 + 40);
    v40 = (v39 >> 1) & 0x7F80 | 4;
    v41 = v39 - v40;
    if (v30)
    {
      v42 = v40;
    }

    else
    {
      v42 = v41;
    }

    od_ec_enc_normalize((a5 + 16), *(a5 + 32) + ((v30 << 31 >> 31) & v41), v42);
    v43 = v7 + ~v29;
    v44 = v28 + 1;
    do
    {
      v45 = *(a5 + 40);
      v46 = (v45 >> 1) & 0x7F80 | 4;
      v47 = 1 << (v44 - 2);
      v48 = v45 - v46;
      v49 = (v47 & v43) == 0;
      if ((v47 & v43) != 0)
      {
        v50 = v48;
      }

      else
      {
        v50 = 0;
      }

      if (v49)
      {
        v51 = v48;
      }

      else
      {
        v51 = v46;
      }

      result = od_ec_enc_normalize((a5 + 16), *(a5 + 32) + v50, v51);
      --v44;
    }

    while (v44 > 1);
  }

  if (a3)
  {
    v52 = *(a5 + 32);
    v53 = *(a5 + 40);
    v54 = (v53 >> 1) & 0x7F80 | 4;
    v55 = v53 - v54;
    if (a3 < 0)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    if (a3 < 0)
    {
      v57 = v54;
    }

    else
    {
      v57 = v55;
    }

    return od_ec_enc_normalize((a5 + 16), v52 + v56, v57);
  }

  return result;
}

_DWORD *write_angle_delta(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v6 = (a2 + 3);
  if (a2 <= -3)
  {
    v9 = a3[v6];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v11 >> 8;
  }

  else
  {
    v7 = &a3[v6];
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v11 >> 8;
    if ((v8 & 0x80000000) == 0)
    {
      v13 = 4 * a2;
      v14 = ((v12 * (v8 >> 6)) >> 1) - v13 + 16;
      result = od_ec_enc_normalize((a1 + 16), v10 + v11 - v14, v13 - ((v12 * (v9 >> 6)) >> 1) + v14 - 12);
      if (!*(a1 + 48))
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  result = od_ec_enc_normalize((a1 + 16), v10, v11 + 4 * a2 - (((v9 >> 6) * v12) >> 1) - 12);
  if (!*(a1 + 48))
  {
    return result;
  }

LABEL_7:
  v16 = a3[7];
  v17 = (v16 >> 4) + 5;
  v18 = *a3;
  if (v6 <= 0)
  {
    *a3 = v18 - (v18 >> v17);
    v20 = a3[1];
    goto LABEL_15;
  }

  v19 = v6 << 56;
  *a3 = v18 + ((0x8000 - v18) >> v17);
  v20 = a3[1];
  if (v6 << 56 == 0x100000000000000)
  {
LABEL_15:
    a3[1] = v20 - (v20 >> v17);
    v21 = a3[2];
    goto LABEL_16;
  }

  a3[1] = v20 + ((0x8000 - v20) >> v17);
  v21 = a3[2];
  if (v6 <= 2)
  {
LABEL_16:
    a3[2] = v21 - (v21 >> v17);
    v22 = a3[3];
    goto LABEL_17;
  }

  a3[2] = v21 + ((0x8000 - v21) >> v17);
  v22 = a3[3];
  if (v19 == 0x300000000000000)
  {
LABEL_17:
    a3[3] = v22 - (v22 >> v17);
    v23 = a3[4];
    goto LABEL_18;
  }

  a3[3] = v22 + ((0x8000 - v22) >> v17);
  v23 = a3[4];
  if (v6 <= 4)
  {
LABEL_18:
    a3[4] = v23 - (v23 >> v17);
    v24 = a3[5];
    goto LABEL_19;
  }

  a3[4] = v23 + ((0x8000 - v23) >> v17);
  v24 = a3[5];
  if (v19 == 0x500000000000000)
  {
LABEL_19:
    v25 = v24 - (v24 >> v17);
    goto LABEL_20;
  }

  v25 = v24 + ((0x8000 - v24) >> v17);
LABEL_20:
  a3[5] = v25;
  if (v16 < 0x20)
  {
    LOWORD(v16) = v16 + 1;
  }

  a3[7] = v16;
  return result;
}

unsigned int *delta_encode_palette_colors(unsigned int *result, int a2, int a3, int a4, uint64_t a5)
{
  v74 = a4;
  v77 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    v8 = result;
    if (a3 >= 1)
    {
      v9 = *result;
      v10 = a3 + 1;
      do
      {
        v11 = *(a5 + 40);
        v12 = (v11 >> 1) & 0x7F80 | 4;
        v13 = 1 << (v10 - 2);
        v14 = v11 - v12;
        v15 = (v13 & v9) == 0;
        if ((v13 & v9) != 0)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = v14;
        }

        else
        {
          v17 = v12;
        }

        result = od_ec_enc_normalize((a5 + 16), *(a5 + 32) + v16, v17);
        --v10;
      }

      while (v10 > 1);
    }

    if (a2 != 1)
    {
      v18 = 0uLL;
      v75 = 0u;
      v76 = 0u;
      if (a2 <= 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = a2;
      }

      v20 = *v8;
      if (a2 >= 9)
      {
        v24 = (v19 - 1) & 0xFFFFFFFFFFFFFFF8;
        v25 = vdupq_n_s32(v20);
        v22 = v24 | 1;
        v26 = &v76;
        v27 = (v8 + 5);
        v28 = v24;
        v29 = 0uLL;
        do
        {
          v30 = v27[-1];
          v31 = vextq_s8(v25, v30, 0xCuLL);
          v32 = *v27;
          v27 += 2;
          v25 = v32;
          v33 = vextq_s8(v30, v32, 0xCuLL);
          v34 = vsubq_s32(v30, v31);
          v35 = vsubq_s32(v32, v33);
          v26[-1] = v34;
          *v26 = v35;
          v18 = vmaxq_s32(v34, v18);
          v29 = vmaxq_s32(v35, v29);
          v26 += 2;
          v28 -= 8;
        }

        while (v28);
        v21 = vmaxvq_s32(vmaxq_s32(v18, v29));
        if (v19 - 1 == v24)
        {
LABEL_26:
          v43 = a3 - 3;
          v44 = v74;
          v45 = v21 - v74;
          v46 = v45 + 1;
          v47 = __clz(v45) ^ 0x1F;
          if (v46 >= 2)
          {
            v48 = v47 + 1;
          }

          else
          {
            v48 = 0;
          }

          if (v48 <= v43)
          {
            v49 = a3 - 3;
          }

          else
          {
            v49 = v48;
          }

          v50 = v49 - v43;
          v51 = *(a5 + 40);
          v52 = (v51 >> 1) & 0x7F80 | 4;
          v53 = v51 - v52;
          if ((v50 & 2) != 0)
          {
            v54 = v52;
          }

          else
          {
            v54 = v53;
          }

          od_ec_enc_normalize((a5 + 16), *(a5 + 32) + (v53 & (v50 << 30 >> 31)), v54);
          v55 = *(a5 + 40);
          v56 = (v55 >> 1) & 0x7F80 | 4;
          v57 = v55 - v56;
          if (v50)
          {
            v58 = v56;
          }

          else
          {
            v58 = v57;
          }

          result = od_ec_enc_normalize((a5 + 16), *(a5 + 32) + ((v50 << 31 >> 31) & v57), v58);
          v59 = 0;
          v60 = (1 << a3) - (v20 + v44);
          v61 = (v19 - 1);
          do
          {
            v64 = *(&v75 + v59);
            if (v49 >= 1)
            {
              v65 = v64 - v74;
              v66 = v49 + 1;
              do
              {
                v67 = *(a5 + 40);
                v68 = (v67 >> 1) & 0x7F80 | 4;
                v69 = 1 << (v66 - 2);
                v70 = v67 - v68;
                v71 = (v69 & v65) == 0;
                if ((v69 & v65) != 0)
                {
                  v72 = v70;
                }

                else
                {
                  v72 = 0;
                }

                if (v71)
                {
                  v73 = v70;
                }

                else
                {
                  v73 = v68;
                }

                result = od_ec_enc_normalize((a5 + 16), *(a5 + 32) + v72, v73);
                --v66;
              }

              while (v66 > 1);
            }

            v60 -= v64;
            v62 = __clz(v60 - 1) ^ 0x1F;
            if (v60 >= 2)
            {
              v63 = v62 + 1;
            }

            else
            {
              v63 = 0;
            }

            if (v49 >= v63)
            {
              v49 = v63;
            }

            ++v59;
          }

          while (v59 != v61);
          return result;
        }

        v23 = v25.u32[3];
      }

      else
      {
        v21 = 0;
        v22 = 1;
        v23 = *v8;
      }

      v36 = v19 - v22;
      v37 = v22;
      v38 = &v75 + v22 - 1;
      v39 = &v8[v37];
      do
      {
        v41 = *v39++;
        v40 = v41;
        v42 = v41 - v23;
        *v38++ = v42;
        if (v42 > v21)
        {
          v21 = v42;
        }

        v23 = v40;
        --v36;
      }

      while (v36);
      goto LABEL_26;
    }
  }

  return result;
}

_DWORD *write_inter_segment_id(_DWORD *result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, int a6, int a7)
{
  if (!a4[1])
  {
    return result;
  }

  v8 = **(a2 + 7864);
  v10 = *a2;
  v9 = *(a2 + 4);
  if (a7)
  {
    if (!a4[168])
    {
      return result;
    }

    goto LABEL_4;
  }

  if (a4[168])
  {
    return result;
  }

  if (!a6)
  {
LABEL_4:
    if (!a4[3])
    {
      v27 = **(a2 + 7864);
      v29 = a3;
      v30 = a5;
      v31 = a4;
LABEL_36:

      return write_segment_id(result, a2, v27, v29, v31, v30, 0);
    }

    v11 = (*(v8 + 167) >> 3) & 1;
    v12 = *(a2 + 7880);
    v13 = *(a2 + 7888);
    if (v13)
    {
      v13 = (*(v13 + 167) >> 3) & 1;
    }

    if (v12)
    {
      v12 = (*(v12 + 167) >> 3) & 1;
    }

    v14 = (a5 + 6 * (v12 + v13));
    if (v11)
    {
      v15 = &v14[v11];
      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = *(a3 + 32);
      v19 = *(a3 + 40);
      v20 = v19 >> 8;
      if ((v16 & 0x80000000) == 0)
      {
        v21 = result;
        v22 = a2;
        v23 = a5;
        v24 = a4;
        v25 = ((v20 * (v16 >> 6)) >> 1) + 4;
        od_ec_enc_normalize((a3 + 16), v18 + v19 - v25, v25 - ((v20 * (v17 >> 6)) >> 1));
        if (!*(a3 + 48))
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v17 = *v14;
      v18 = *(a3 + 32);
      v19 = *(a3 + 40);
      v20 = v19 >> 8;
    }

    v21 = result;
    v22 = a2;
    v23 = a5;
    v24 = a4;
    od_ec_enc_normalize((a3 + 16), v18, v19 + 4 * v11 - (((v17 >> 6) * v20) >> 1) - 4);
    if (!*(a3 + 48))
    {
LABEL_25:
      result = v21;
      if (v11)
      {
        v37 = *v8;
        v38 = v21[59897] - v10;
        if (v38 >= mi_size_high_4[v37])
        {
          v39 = mi_size_high_4[v37];
        }

        else
        {
          v39 = v38;
        }

        if (v39 >= 1)
        {
          v40 = v21[59898];
          v41 = (*(*(v21 + 29911) + 80) + v9 + v40 * v10);
          v42 = v8[167];
          v43 = mi_size_wide_5[v37];
          if (v40 - v9 < v43)
          {
            v43 = v40 - v9;
          }

          v44 = v43;
          do
          {
            result = memset(v41, v42 & 7, v44);
            v41 += v40;
            --v39;
          }

          while (v39);
        }

        return result;
      }

      a2 = v22;
      v27 = v8;
      v29 = a3;
      v31 = v24;
      v30 = v23;
      goto LABEL_36;
    }

LABEL_20:
    v32 = v14[2];
    v33 = (v32 >> 4) + 4;
    v34 = *v14;
    v35 = v34 - (v34 >> v33);
    v36 = v34 + ((0x8000 - v34) >> v33);
    if (!v11)
    {
      LOWORD(v36) = v35;
    }

    *v14 = v36;
    if (v32 < 0x20)
    {
      LOWORD(v32) = v32 + 1;
    }

    v14[2] = v32;
    goto LABEL_25;
  }

  result = write_segment_id(result, a2, **(a2 + 7864), a3, a4, a5, 1);
  if (a4[3])
  {
    *(v8 + 167) &= ~8u;
  }

  return result;
}

_DWORD *pack_txb_tokens(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9, int a10, unsigned __int8 a11)
{
  v17 = result;
  v18 = *(a4 + 7936);
  v19 = block_size_high_2[a7];
  if (v18 < 0)
  {
    v19 += v18 >> (*(a4 + 2608 * a6 + 24) + 3);
  }

  v20 = a9;
  v21 = v19 >> 2;
  v22 = block_size_wide_3[a7];
  v23 = *(a4 + 7928);
  if (v23 < 0)
  {
    v24 = ((v23 >> (*(a4 + 2608 * a6 + 20) + 3)) + v22) >> 2;
    v25 = __OFSUB__(v21, a9);
    v26 = v21 - a9;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v28 = 1;
    }

    else
    {
      v28 = v24 <= a10;
    }

    if (v28)
    {
      return result;
    }
  }

  else
  {
    v24 = v22 >> 2;
    v25 = __OFSUB__(v21, a9);
    v26 = v21 - a9;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v27 = 1;
    }

    else
    {
      v27 = v24 <= a10;
    }

    if (v27)
    {
      return result;
    }
  }

  if (a6 || *(a5 + (a10 >> av1_get_txb_size_index_tw_w_log2_table_0[a7]) + (a9 >> av1_get_txb_size_index_tw_h_log2_table_0[a7] << av1_get_txb_size_index_stride_log2_table_0[a7]) + 146) == a11)
  {

    return av1_write_coeffs_txb(a2, a3, result);
  }

  else
  {
    v29 = tx_size_high_unit_0[a11];
    if (v29 >= v26)
    {
      v29 = v26;
    }

    v30 = v24 - a10;
    if (tx_size_wide_unit_0[a11] >= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = tx_size_wide_unit_0[a11];
    }

    v38 = v29;
    if (v29 >= 1 && v31 >= 1)
    {
      v32 = 0;
      v33 = sub_tx_size_map[a11];
      v37 = tx_size_high_unit_0[v33];
      v40 = v37 * tx_size_wide_unit_0[v33];
      v41 = tx_size_wide_unit_0[v33];
      do
      {
        v34 = 0;
        v39 = v32;
        v42 = v32 + v20;
        do
        {
          v43 = a8;
          LOBYTE(v36) = v33;
          HIDWORD(v35) = a10 + v34;
          LODWORD(v35) = v42;
          result = pack_txb_tokens(v17, a2, a3, a4, a5, 0, a7, a8, v35, v36);
          a8 = (v43 + v40);
          v34 += v41;
        }

        while (v34 < v31);
        v20 = a9;
        v32 = v39 + v37;
      }

      while (v39 + v37 < v38);
    }
  }

  return result;
}

uint64_t remux_tiles(int *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int *a6, int *a7)
{
  v7 = a3;
  if (!a1[145])
  {
    if (!HIBYTE(a4))
    {
      if (a4 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (HIWORD(a4))
      {
        v11 = 3;
      }

      else
      {
        v11 = v12;
      }

      v13 = 4;
      *a6 = v11;
      *a7 = 4;
      v14 = *a1;
      if (a1[145])
      {
LABEL_46:
        if (v14 >= 1)
        {
          v22 = 0;
          v23 = 0;
          v17 = 0;
          v24 = a1[1];
          while (1)
          {
            if (v22 >= v14 - 1)
            {
              goto LABEL_59;
            }

            v25 = *(a2 + v23) + v24 * (v11 - 4);
            v26 = (a2 + v17);
            *v26 = v25;
            v27 = 8;
            if (v13 > 2)
            {
              if (v13 == 3)
              {
                v29 = 16;
                v30 = 1;
                v28 = 2;
              }

              else
              {
                v26[1] = BYTE1(v25);
                v29 = 24;
                v27 = 16;
                v30 = 2;
                v28 = 3;
              }

              v26[v30] = v25 >> v27;
              v27 = v29;
            }

            else
            {
              v28 = 1;
              if (v13 == 1)
              {
                goto LABEL_58;
              }
            }

            v26[v28] = v25 >> v27;
LABEL_58:
            v23 += 4;
            v17 = (v17 + v13);
            v24 = a1[1];
LABEL_59:
            if (v24 >= 1)
            {
              for (i = 0; i < v24; ++i)
              {
                v34 = *(a2 + v23);
                v23 += 4;
                v35 = a2 + v17;
                if ((v34 & 0x80000000) == 0)
                {
                  if (v11 > 2)
                  {
                    if (v11 == 3)
                    {
                      *v35 = v34;
                      *(v35 + 2) = BYTE2(v34);
                    }

                    else
                    {
                      *v35 = v34;
                    }
                  }

                  else if (v11 == 1)
                  {
                    *v35 = v34;
                  }

                  else if (v11 == 2)
                  {
                    *v35 = v34;
                  }

                  v32 = (v17 + v11);
                  v33 = v34 + 1;
                  memmove((a2 + v32), (a2 + v23), v34 + 1);
                  v23 += v33;
                  v17 = (v33 + v32);
                  goto LABEL_63;
                }

                v36 = v34 >> (32 - 8 * v11);
                if (v11 > 2)
                {
                  if (v11 == 3)
                  {
                    *v35 = v36;
                    *(v35 + 2) = BYTE2(v36);
LABEL_80:
                    v17 = (v17 + v11);
                    goto LABEL_63;
                  }

                  *v35 = v34;
                  v17 = (v17 + 4);
                }

                else if (v11 == 1)
                {
                  *v35 = v36;
                  v17 = (v17 + 1);
                }

                else
                {
                  if (v11 != 2)
                  {
                    goto LABEL_80;
                  }

                  *v35 = v36;
                  v17 = (v17 + 2);
                }

LABEL_63:
                v24 = a1[1];
              }
            }

            ++v22;
            v14 = *a1;
            if (v22 >= *a1)
            {
              return v17;
            }
          }
        }

        return 0;
      }

      goto LABEL_23;
    }

    goto LABEL_81;
  }

  if ((a4 & 0x80000000) != 0)
  {
    v11 = -1;
    if (!HIBYTE(a5))
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  if (a4 >> 23)
  {
    if (!HIBYTE(a5))
    {
      v11 = 4;
      goto LABEL_39;
    }

LABEL_81:
    *a6 = 4;
    *a7 = 4;
    return a3;
  }

  if (a4 < 0x80)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (a4 >> 15)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  if (!HIBYTE(a5))
  {
LABEL_39:
    if (a5 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (HIWORD(a5))
    {
      v13 = 3;
    }

    else
    {
      v13 = v21;
    }

    *a6 = v11;
    *a7 = v13;
    v14 = *a1;
    if (a1[145])
    {
      goto LABEL_46;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = 4;
  *a6 = v11;
  *a7 = 4;
  v14 = *a1;
  if (a1[145])
  {
    goto LABEL_46;
  }

LABEL_23:
  v15 = a1[1] * v14;
  if (v15 < 1)
  {
    return 0;
  }

  v16 = 0;
  LODWORD(v17) = 0;
  do
  {
    if (v15 == 1)
    {
      v18 = v7 - v16;
    }

    else
    {
      v19 = *(a2 + v16);
      v20 = a2 + v17;
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          *v20 = v19;
          *(v20 + 2) = BYTE2(v19);
        }

        else
        {
          *v20 = v19;
        }
      }

      else if (v11 == 1)
      {
        *v20 = v19;
      }

      else if (v11 == 2)
      {
        *v20 = v19;
      }

      v16 += 4;
      v18 = v19 + 1;
      LODWORD(v17) = v17 + v11;
    }

    memmove((a2 + v17), (a2 + v16), v18);
    v16 += v18;
    v17 = (v18 + v17);
    --v15;
  }

  while (v15);
  return v17;
}

uint64_t *aom_wb_write_bit(uint64_t *result, int a2)
{
  v2 = *(result + 2);
  v3 = v2 + 7;
  if (v2 >= 0)
  {
    v3 = *(result + 2);
  }

  v4 = v3 & 0xFFFFFFF8;
  v5 = *result;
  v6 = v3 >> 3;
  v7 = v2 - v4;
  if (v7)
  {
    v8 = 7 - v7;
    *(v5 + v6) &= ~(1 << v8);
    *(*result + v6) |= a2 << v8;
  }

  else
  {
    *(v5 + v6) = a2 << 7;
  }

  *(result + 2) = v2 + 1;
  return result;
}

uint64_t *aom_wb_write_literal(uint64_t *result, unsigned int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = *(result + 2);
    v4 = 7 - v3;
    v5 = a3 + 1;
    do
    {
      v6 = (a2 >> (v5 - 2)) & 1;
      v7 = v3 + 7;
      if (v3 >= 0)
      {
        v7 = v3;
      }

      v8 = v7 & 0xFFFFFFF8;
      v9 = *result;
      v10 = v7 >> 3;
      if (v8 == v3)
      {
        LOBYTE(v6) = v6 << 7;
      }

      else
      {
        v11 = v4 + v8;
        *(v9 + v10) &= ~(1 << v11);
        v9 = *result;
        v6 = *(*result + v10) | (v6 << v11);
      }

      *(v9 + v10) = v6;
      *(result + 2) = ++v3;
      --v4;
      --v5;
    }

    while (v5 > 1);
  }

  return result;
}

uint64_t aom_wb_overwrite_literal(uint64_t result, unsigned int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = *(result + 8);
    v4 = 7 - v3;
    v5 = a3 + 1;
    do
    {
      v6 = v3 + 7;
      if (v3 >= 0)
      {
        v6 = v3;
      }

      v7 = v4 + (v6 & 0xF8);
      v8 = v6 >> 3;
      *(*result + v8) &= ~(1 << v7);
      *(*result + v8) |= ((a2 >> (v5 - 2)) & 1) << v7;
      *(result + 8) = ++v3;
      --v4;
      --v5;
    }

    while (v5 > 1);
  }

  return result;
}

uint64_t *aom_wb_write_signed_primitive_refsubexpfin(uint64_t *result, __int16 a2, int a3, __int16 a4, __int16 a5)
{
  v5 = a2 - 1 + a4;
  v6 = a2 - 1 + a5;
  v7 = 2 * v5;
  v8 = (2 * a2 - 1);
  v9 = 2 * a2 - 2;
  v10 = v9 - v5;
  v11 = v9 - v6;
  v12 = 2 * (v10 - v11) - 1;
  if (v11 >= v10)
  {
    v12 = 2 * (v11 - v10);
  }

  if (v11 <= 2 * v10)
  {
    v11 = v12;
  }

  if ((a2 - 1 + a5) >= v5)
  {
    v13 = 2 * (v6 - v5);
  }

  else
  {
    v13 = 2 * (v5 - v6) - 1;
  }

  if (v7 < v6)
  {
    v13 = a2 - 1 + a5;
  }

  if (v7 > v8)
  {
    v13 = v11;
  }

  if (3 << a3 >= v8)
  {
    LOWORD(v21) = 0;
    v29 = (2 * a2 - 1);
    if (v29 >= 2)
    {
LABEL_24:
      v30 = __clz(v29) ^ 0x1F;
      v31 = (2 << v30) - v29;
      v32 = (v13 - v21);
      v33 = v32 - v31;
      if (v32 >= v31)
      {
        v51 = 0;
        v52 = v31 + (v33 >> 1);
        v53 = *(result + 2);
        v54 = v53;
        do
        {
          v57 = (v52 >> (v30 - 1 + v51)) & 1;
          v58 = v54 + 7;
          if (v54 >= 0)
          {
            v58 = v54;
          }

          v59 = v58 & 0xFFFFFFF8;
          v56 = *result;
          v60 = v58 >> 3;
          if (v51 - v53 + v59)
          {
            v55 = v51 - v53 + v59 + 7;
            *(v56 + v60) &= ~(1 << v55);
            v56 = *result;
            v57 = *(*result + v60) | (v57 << v55);
          }

          else
          {
            LOBYTE(v57) = v57 << 7;
          }

          *(v56 + v60) = v57;
          *(result + 2) = ++v54;
          --v51;
        }

        while (v30 + v51 + 1 > 1);
        v61 = v33 & 1;
        if (v54 >= 0)
        {
          v62 = v54;
        }

        else
        {
          v62 = v54 + 7;
        }

        v63 = (v62 & 0xFFFFFFF8) - v53;
        v64 = *result;
        v65 = v62 >> 3;
        if (v63 + v51)
        {
          v66 = v63 + v51 + 7;
          *(v64 + v65) &= ~(1 << v66);
          *(*result + v65) |= v61 << v66;
        }

        else
        {
          *(v64 + v65) = v61 << 7;
        }

        *(result + 2) = v54 + 1;
      }

      else
      {
        v34 = *(result + 2);
        v35 = 7 - v34;
        v36 = v30 + 1;
        do
        {
          v39 = (v32 >> (v36 - 2)) & 1;
          v40 = v34 + 7;
          if (v34 >= 0)
          {
            v40 = v34;
          }

          v41 = v40 & 0xFFFFFFF8;
          v38 = *result;
          v42 = v40 >> 3;
          if (v41 == v34)
          {
            LOBYTE(v39) = v39 << 7;
          }

          else
          {
            v37 = v35 + v41;
            *(v38 + v42) &= ~(1 << v37);
            v38 = *result;
            v39 = *(*result + v42) | (v39 << v37);
          }

          *(v38 + v42) = v39;
          *(result + 2) = ++v34;
          --v35;
          --v36;
        }

        while (v36 > 1);
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = v13;
    v17 = *(result + 2);
    v18 = 7 - v17;
    v19 = a3;
    v20 = a3;
    do
    {
      v21 = v15 + (1 << v20);
      v22 = v17 + 7;
      if (v17 >= 0)
      {
        v22 = v17;
      }

      v23 = v22 & 0xFFFFFFF8;
      v24 = *result;
      v25 = v22 >> 3;
      if (v23 == v17)
      {
        *(v24 + v25) = (v21 <= v13) << 7;
        v26 = v17 + 1;
        *(result + 2) = v17 + 1;
        if (v21 > v13)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v27 = v18 + v23;
        *(v24 + v25) &= ~(1 << v27);
        *(*result + v25) |= (v21 <= v13) << v27;
        v26 = v17 + 1;
        *(result + 2) = v17 + 1;
        if (v21 > v13)
        {
LABEL_32:
          if (v20 >= 1)
          {
            v43 = 6 - v17;
            v44 = v20 + 1;
            do
            {
              v47 = ((v16 - v15) >> (v44 - 2)) & 1;
              v48 = v26 + 7;
              if (v26 >= 0)
              {
                v48 = v26;
              }

              v49 = v48 & 0xFFFFFFF8;
              v46 = *result;
              v50 = v48 >> 3;
              if (v49 == v26)
              {
                LOBYTE(v47) = v47 << 7;
              }

              else
              {
                v45 = v43 + v49;
                *(v46 + v50) &= ~(1 << v45);
                v46 = *result;
                v47 = *(*result + v50) | (v47 << v45);
              }

              *(v46 + v50) = v47;
              *(result + 2) = ++v26;
              --v43;
              --v44;
            }

            while (v44 > 1);
          }

          return result;
        }
      }

      v20 = v14 + a3;
      ++v14;
      v28 = (3 << v19) + v21;
      --v18;
      ++v19;
      v17 = v26;
      v15 = v21;
    }

    while (v28 < v8);
    v29 = (v8 - v21);
    if (v29 >= 2)
    {
      goto LABEL_24;
    }
  }

  return result;
}