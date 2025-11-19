uint64_t quant_partition(uint64_t a1, __int16 *a2, int a3, int a4, int a5, __int16 *a6, int a7, int a8, int a9)
{
  v13 = a9;
  v80 = a4;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v20 = *(v15 + 128);
  v19 = *(v15 + 136);
  if (a7 != -1)
  {
    v21 = a7;
    v22 = *(v15 + 8) + *(v15 + 8) * a7 + v16;
    v16 = v22;
    if (a3 >= 3)
    {
      v23 = (v19 + *(v20 + 2 * v22));
      if (v23[*v23] + 12 < a4)
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v24 = a3 >> 1;
        if (a5 == 1)
        {
          a9 = a9 & 1 | (2 * a9);
        }

        v76 = a7 - 1;
        v73 = &a2[v24];
        v25 = ((a5 + 1) >> 1);
        compute_theta(a1, &v77, a2, v73, v24, &v80, (a5 + 1) >> 1, a5, a7 - 1, 0, &a9);
        v26 = WORD2(v77);
        v27 = v78;
        v28 = HIDWORD(v78);
        v29 = v79;
        v30 = (HIDWORD(v78) + ((8 * v24) >> (6 - v21))) & ((HIDWORD(v78) + ((8 * v24) >> (6 - v21))) >> 31);
        if (v79 > 0x2000)
        {
          v30 = HIDWORD(v78) - (SHIDWORD(v78) >> (5 - v21));
        }

        if ((v79 & 0x3FFF) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = HIDWORD(v78);
        }

        if (a5 >= 2)
        {
          v28 = v31;
        }

        v32 = v80;
        if (v80 >= (v80 - v28) / 2)
        {
          v33 = (v80 - v28) / 2;
        }

        else
        {
          v33 = v80;
        }

        v34 = v33 & ~(v33 >> 31);
        v70 = a5;
        v35 = v80 - v34;
        v36 = *(a1 + 40) - HIDWORD(v79);
        *(a1 + 40) = v36;
        if (a6)
        {
          v37 = &a6[v24];
        }

        else
        {
          v37 = 0;
        }

        v38 = a9;
        if (v34 >= v35)
        {
          v67 = v27;
          v69 = v37;
          v72 = quant_partition(a1, a2, v24, v34, v25, a6, v76, ((v26 * a8 + 0x4000) >> 15), a9);
          v55 = *(a1 + 40) - v36 + v34;
          if (v29)
          {
            v56 = v55 <= 24;
          }

          else
          {
            v56 = 1;
          }

          if (v56)
          {
            v57 = 0;
          }

          else
          {
            v57 = v55 - 24;
          }

          return (quant_partition(a1, v73, v24, (v57 + v35), v25, v69, v76, ((v67 * a8 + 0x4000) >> 15), v38 >> v25) << (v70 >> 1)) | v72;
        }

        else
        {
          v68 = v26;
          v74 = quant_partition(a1, v73, v24, (v32 - v34), v25, v37, v76, ((v27 * a8 + 0x4000) >> 15), a9 >> v25) << (v70 >> 1);
          v39 = *(a1 + 40) - v36 + v35;
          if (v29 == 0x4000 || v39 <= 24)
          {
            v41 = 0;
          }

          else
          {
            v41 = v39 - 24;
          }

          return quant_partition(a1, a2, v24, (v41 + v34), v25, a6, v76, ((v68 * a8 + 0x4000) >> 15), v38) | v74;
        }
      }
    }
  }

  v43 = 0;
  v44 = (v19 + *(v20 + 2 * v16));
  v45 = *v44;
  v46 = a4 - 1;
  v47 = 6;
  do
  {
    if (v46 <= v44[(v45 + v43 + 1) >> 1])
    {
      v45 = (v45 + v43 + 1) >> 1;
    }

    else
    {
      v43 = (v45 + v43 + 1) >> 1;
    }

    --v47;
  }

  while (v47);
  if (v43)
  {
    v48 = v44[v43];
  }

  else
  {
    v48 = -1;
  }

  if (v46 - v48 <= v44[v45] - v46)
  {
    v49 = v43;
  }

  else
  {
    v49 = v45;
  }

  if (!v49)
  {
LABEL_50:
    if (!v14)
    {
      v42 = (1 << a5) - 1;
      if ((v42 & v13) != 0)
      {
        if (a6)
        {
          if (a3 >= 1)
          {
            v58 = *(a1 + 56);
            v59 = a2;
            v60 = a3;
            do
            {
              v58 = 1664525 * v58 + 1013904223;
              v62 = *a6++;
              v61 = v62;
              if ((v58 & 0x8000) != 0)
              {
                v63 = 4;
              }

              else
              {
                v63 = -4;
              }

              *v59++ = v63 + v61;
              --v60;
            }

            while (v60);
            *(a1 + 56) = v58;
          }

          v42 = v42 & v13;
        }

        else if (a3 >= 1)
        {
          v64 = *(a1 + 56);
          v65 = a2;
          v66 = a3;
          do
          {
            v64 = 1664525 * v64 + 1013904223;
            *v65++ = v64 >> 20;
            --v66;
          }

          while (v66);
          *(a1 + 56) = v64;
        }

        renormalise_vector(a2, a3, a8);
        return v42;
      }

      if (a3 >= 1)
      {
        bzero(a2, (2 * a3));
      }
    }

    return 0;
  }

  v50 = v44[v49] + 1;
  v51 = *(a1 + 40) - v50;
  *(a1 + 40) = v51;
  if (v51 < 0 && v49 >= 1)
  {
    v52 = v49 - 1;
    do
    {
      v53 = v50 + v51;
      *(a1 + 40) = v53;
      if (!v52)
      {
        goto LABEL_50;
      }

      v50 = v44[v52] + 1;
      v51 = v53 - v50;
      *(a1 + 40) = v51;
      LODWORD(v49) = v49 - 1;
      --v52;
    }

    while (v51 < 0);
  }

  if (v49 >= 8)
  {
    LODWORD(v49) = (v49 & 7 | 8) << ((v49 >> 3) - 1);
  }

  if (v14)
  {

    return alg_quant(a2, a3, v49, v17, a5, v18);
  }

  else
  {

    return alg_unquant(a2, a3, v49, v17, a5, v18, a8);
  }
}

void interleave_hadamard(char *a1, int a2, int a3, int a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3 * a2;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v26 - v9;
  bzero(v26 - v9, v11);
  if (a4)
  {
    if (a3 >= 1)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (a2 >= 1)
        {
          v14 = &a1[2 * ordery_table[a3 - 2 + v12] * a2];
          v15 = a2;
          v16 = v13;
          do
          {
            v17 = *v14;
            v14 += 2;
            *v16 = v17;
            v16 += a3;
            --v15;
          }

          while (v15);
        }

        ++v12;
        ++v13;
      }

      while (v12 != a3);
    }
  }

  else if (a3 >= 1)
  {
    v18 = 0;
    v19 = v10;
    v20 = a1;
    do
    {
      if (a2 >= 1)
      {
        v21 = a2;
        v22 = v19;
        v23 = v20;
        do
        {
          v24 = *v23++;
          *v22 = v24;
          v22 += a3;
          --v21;
        }

        while (v21);
      }

      ++v18;
      v20 += a2;
      ++v19;
    }

    while (v18 != a3);
  }

  if (v8 >= 1)
  {
    memcpy(a1, v10, (2 * v8));
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t compute_theta(int *a1, uint64_t a2, __int16 *a3, __int16 *a4, int a5, int *a6, char a7, int a8, int a9, int a10, _DWORD *a11)
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v17 = a1[4];
  v84 = *(a1 + 4);
  v78 = *(a1 + 1);
  v18 = *(*(v78 + 56) + 2 * v17) + 8 * a9;
  v19 = a10 != 0;
  v20 = a5 == 2;
  v21 = !v20 || !v19;
  if (v20 && v19)
  {
    v22 = -16;
  }

  else
  {
    v22 = -4;
  }

  v23 = v22 + (v18 >> 1);
  v24 = *a6;
  if (v21)
  {
    v25 = -1;
  }

  else
  {
    v25 = -2;
  }

  v26 = v24 - v18 - 32;
  v27 = (v24 + v23 * (v25 + 2 * a5)) / (v25 + 2 * a5);
  if (v26 >= v27)
  {
    v26 = v27;
  }

  if (v26 >= 4)
  {
    if (v26 >= 0x40)
    {
      v26 = 64;
    }

    v28 = ((compute_qn_exp2_table8[v26 & 7] >> (14 - (v26 >> 3))) + 1) & 0xFFFFFFFE;
  }

  else
  {
    v28 = 1;
  }

  v77 = *(a1 + 6);
  if (v17 < a1[5] || a10 == 0)
  {
    v30 = v28;
  }

  else
  {
    v30 = 1;
  }

  v83 = *a1;
  if (*a1)
  {
    v31 = stereo_itheta(a3, a4, a10, a5);
  }

  else
  {
    v31 = 0;
  }

  v81 = ec_tell_frac(v84);
  if (v30 != 1)
  {
    v35 = v31 * v30 + 0x2000;
    v36 = v35 >> 14;
    if (v12 > 2 && a10)
    {
      v75 = v12;
      v76 = a7;
      v80 = a2;
      v37 = v30 / 2;
      v38 = v30 / 2 + 1;
      v39 = 3 * v38;
      if (v83)
      {
        if (v36 <= v37)
        {
          v40 = 3 * v36;
        }

        else
        {
          v40 = v39 + ~v37 + v36;
        }

        if (v36 <= v37)
        {
          v41 = 3 * v36 + 3;
        }

        else
        {
          v41 = v39 - v37 + v36;
        }

        ec_encode(v84, v40, v41, 3 * v38 + v30 / 2);
        a2 = v80;
        v12 = v75;
        a7 = v76;
LABEL_50:
        v31 = (v35 & 0xFFFFC000) / v30;
        if (a10)
        {
          if (!v31)
          {
            intensity_stereo(v78, v14, v13, v77, v17, v12);
            v54 = a6;
            v55 = a11;
            v56 = v81;
LABEL_62:
            result = ec_tell_frac(v84);
            v58 = result - v56;
            *v54 -= result - v56;
            goto LABEL_84;
          }

          if (v12 >= 1)
          {
            v49 = v12;
            do
            {
              v50 = 46340 * *v14;
              v51 = (46340 * *v13) >> 16;
              *v14++ = ((46340 * *v13) >> 16) + HIWORD(v50);
              *v13++ = v51 - HIWORD(v50);
              --v49;
            }

            while (v49);
          }
        }

        goto LABEL_55;
      }

      v59 = ec_decode(v84, v39 + v30 / 2);
      if (v59 < v39)
      {
        v36 = v59 / 3;
      }

      else
      {
        v36 = v59 - 2 * v38;
      }

      if (v36 <= v37)
      {
        v60 = 3 * v36;
      }

      else
      {
        v60 = v39 + ~v37 + v36;
      }

      if (v36 <= v37)
      {
        v61 = 3 * v36 + 3;
      }

      else
      {
        v61 = v39 - v37 + v36;
      }

      ec_dec_update(v84, v60, v61, v39 + v30 / 2);
      a2 = v80;
      LOWORD(v12) = v75;
      a7 = v76;
    }

    else if (a8 >= 2 || a10)
    {
      if (v83)
      {
        ec_enc_uint(v84, v35 >> 14, v30 + 1);
        goto LABEL_50;
      }

      v36 = ec_dec_uint(v84, v30 + 1);
    }

    else
    {
      v42 = v12;
      v43 = a7;
      v44 = a2;
      v45 = v30 >> 1;
      v12 = (v30 >> 1) + 1;
      v46 = v12 * v12;
      if (v83)
      {
        v47 = v30 - v36 + 1;
        if (v36 > v45)
        {
          v48 = v46 - ((v47 * (v30 - v36 + 2)) >> 1);
        }

        else
        {
          v47 = v36 + 1;
          v48 = ((v36 + 1) * v36) >> 1;
        }

        ec_encode(v84, v48, v48 + v47, v12 * v12);
        a2 = v44;
        a7 = v43;
        LOWORD(v12) = v42;
      }

      else
      {
        v62 = ec_decode(v84, v12 * v12);
        if (v62 >= (v12 * v45) >> 1)
        {
          v36 = (2 * (v30 + 1) - isqrt32((8 * (v46 + ~v62)) | 1u)) >> 1;
          v63 = v30 + 1 - v36;
          v64 = v46 - ((v63 * (v30 - v36 + 2)) >> 1);
        }

        else
        {
          v36 = (isqrt32((8 * v62) | 1u) - 1) >> 1;
          v63 = v36 + 1;
          v64 = ((v36 + 1) * v36) >> 1;
        }

        a7 = v43;
        LOWORD(v12) = v42;
        ec_dec_update(v84, v64, v64 + v63, v46);
        a2 = v44;
      }
    }

    v52 = a6;
    v53 = v81;
    v31 = (v36 << 14) / v30;
    goto LABEL_81;
  }

  if (a10)
  {
    if (v83)
    {
      v32 = v31 <= 0x2000;
      v31 = v31 > 0x2000;
      if (!v32 && v12 >= 1)
      {
        v33 = v12;
        v34 = v13;
        do
        {
          *v34 = -*v34;
          ++v34;
          --v33;
        }

        while (v33);
      }

      intensity_stereo(v78, v14, v13, v77, v17, v12);
    }

    else
    {
      v31 = 0;
    }

    v54 = a6;
    v55 = a11;
    v56 = v81;
    if (*a6 < 17 || a1[10] < 17)
    {
      v31 = 0;
    }

    else if (v83)
    {
      ec_enc_bit_logp(v84, v31, 2);
    }

    else
    {
      v31 = ec_dec_bit_logp(v84, 2);
    }

    goto LABEL_62;
  }

LABEL_55:
  v52 = a6;
  v53 = v81;
LABEL_81:
  result = ec_tell_frac(v84);
  v58 = result - v53;
  *v52 -= result - v53;
  if (v31 == 0x4000)
  {
    v65 = 0;
    *a11 &= ~(-1 << a7) << a7;
    v66 = 0x7FFF00000000;
    v67 = 0x4000;
    goto LABEL_87;
  }

  if (v31)
  {
    v65 = 0;
    v68.i32[0] = v31 << 16;
    v68.i32[1] = 0x40000000 - (v31 << 16);
    v69 = vshr_n_s32(vmla_s32(0x800000008000, vshl_s32(v68, 0xFFFFFFF0FFFFFFF3), vshl_s32(v68, 0xFFFFFFF3FFFFFFF0)), 0x10uLL);
    v70 = vmul_s32(v69, (*&vsra_n_u32(vdup_n_s32(0x2055u), vmla_s32(0x400000004000, v69, vdup_n_s32(0x7FFFFD8Eu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL));
    v66 = veor_s8(vshr_n_s32(vshl_n_s32(vsub_s32(vshr_n_u32(vmla_s32(0x400000004000, vshr_n_s32(vadd_s32(vadd_s32(v70, v70), vdup_n_s32(0xE21D8000)), 0x10uLL), v69), 0xFuLL), v69), 0x10uLL), 0x10uLL), 0x7F0000007FLL);
    v71 = vclz_s32(v66);
    v72 = vsub_s32(v71, vdup_lane_s32(v71, 1)).u16[0];
    v73 = vshr_n_s32(vshl_n_s32(vshl_u32(v66, vadd_s32(v71, 0x1000000010)), 0x10uLL), 0x10uLL);
    v74 = vshr_n_u32(vmla_s32(0x400000004000, (*&vsra_n_u32(vdup_n_s32(0x1EFCu), vmla_s32(0x400000004000, v73, vdup_n_s32(0x7FFFF5DBu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL), v73), 0xFuLL);
    v67 = ((v74.i16[2] - v74.i16[0] + (v72 << 11)) * ((v12 << 7) - 128) + 0x4000) >> 15;
    goto LABEL_87;
  }

  v55 = a11;
LABEL_84:
  v65 = v31;
  *v55 &= ~(-1 << a7);
  v66 = 0x7FFFLL;
  v67 = -16384;
  v31 = 0;
LABEL_87:
  *a2 = v65;
  *(a2 + 4) = v66;
  *(a2 + 12) = v67;
  *(a2 + 16) = v31;
  *(a2 + 20) = v58;
  return result;
}

uint64_t intensity_stereo(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, int a5, int a6)
{
  v9 = *(a4 + 4 * a5);
  v10 = *(a4 + 4 * (*(a1 + 8) + a5));
  if (v9 <= v10)
  {
    v11 = *(a4 + 4 * (*(a1 + 8) + a5));
  }

  else
  {
    v11 = *(a4 + 4 * a5);
  }

  v12 = 31 - __clz(v11);
  if (v11 >= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v9 << (13 - v13);
  v15 = v10 << (13 - v13);
  v16 = v9 >> (v13 - 13);
  v17 = v10 >> (v13 - 13);
  if (v13 >= 0xE)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  if (v13 >= 0xE)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  result = celt_sqrt((v19 * v19 + v18 * v18 + 1));
  if (a6 >= 1)
  {
    v21 = (result + 1);
    v22 = ((v18 << 16 >> 2) / v21);
    v23 = ((v19 << 16 >> 2) / v21);
    v24 = a6;
    do
    {
      v25 = *a3++;
      *a2 = ((v23 * v25) >> 14) + ((v22 * *a2) >> 14);
      ++a2;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t resampling_factor(int a1)
{
  if (a1 <= 15999)
  {
    if (a1 == 8000)
    {
      return 6;
    }

    if (a1 == 12000)
    {
      return 4;
    }
  }

  else
  {
    switch(a1)
    {
      case 16000:
        return 3;
      case 48000:
        return 1;
      case 24000:
        return 2;
    }
  }

  return 0;
}

char *comb_filter(char *result, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 *a10, int a11)
{
  if (a7 | a6)
  {
    v11 = (&comb_filter_gains + 6 * a9);
    v12 = (*v11 * a7) >> 15;
    v13 = (v11[1] * a7) >> 15;
    v14 = (v11[2] * a7) >> 15;
    v15 = -a4;
    v16 = a11;
    v17 = 1 - a4;
    v18 = ~a4;
    v19 = 2 * v12;
    v20 = -2 - a4;
    v21 = 2 * v13;
    v22 = 2 * v14;
    if (a11 < 1)
    {
      v49 = 0;
      if (a7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v59 = v14;
      v60 = a5;
      v24 = a2 + 8;
      v25 = (&comb_filter_gains + 6 * a8);
      v26 = a6 * v25[2];
      v27 = *&a2[4 * v20];
      v28 = *&a2[4 * v18];
      v29 = *&a2[4 * v15];
      v30 = *&a2[4 * v17];
      v31 = a6 * v25[1];
      v32 = ((2 * a6 * *v25) >> 15) & 0xFFFFFFFE;
      v33 = ((2 * v31) >> 15) & 0xFFFFFFFE;
      v34 = ((2 * v26) >> 15) & 0xFFFFFFFE;
      v35 = &a2[-4 * a3];
      v36 = result;
      v37 = v35;
      do
      {
        v38 = *&v24[-4 * a4];
        v39 = *a10++;
        v40 = ((v39 * v39) >> 15);
        v41 = ((2 * v39 * v39) & 0xFFFF0000 ^ 0x7FFF0000) >> 16;
        v42 = (2 * v12 * v40) >> 16;
        v43 = (v32 * v41) >> 16;
        v44 = (v21 * v40) >> 16;
        v45 = (v22 * v40) >> 16;
        v46 = v38 + v27;
        v47 = *(v37 + 1);
        v37 += 4;
        v48 = (v33 * v41) >> 16;
        *v36 = *(v24 - 2) + ((v45 * v46) >> 15) + ((v44 * (v28 + v30)) >> 15) + ((v42 * v29) >> 15) + ((((v34 * v41) >> 16) * (*(v35 - 4) + *(v35 + 4))) >> 15) + ((v48 * (*(v35 - 2) + v47)) >> 15) + ((v43 * *v35) >> 15) + 2 * (v42 * (v29 >> 16) + v44 * ((v28 + v30) >> 16) + v45 * (v46 >> 16) + v43 * (*v35 >> 16) + v48 * ((*(v35 - 1) + v47) >> 16) + ((v34 * v41) >> 16) * ((*(v35 - 2) + *(v35 + 2)) >> 16));
        v36 += 4;
        v24 += 4;
        v35 = v37;
        v27 = v28;
        v28 = v29;
        v29 = v30;
        v30 = v38;
        --v16;
      }

      while (v16);
      LODWORD(v16) = a11;
      v49 = a11;
      v19 = 2 * v12;
      a5 = v60;
      LOWORD(v14) = v59;
      v18 = ~a4;
      v15 = -a4;
      v20 = -2 - a4;
      v17 = 1 - a4;
      if (a7)
      {
LABEL_6:
        v50 = a5 - v49;
        if (v50 >= 1)
        {
          v51 = &a2[4 * v49];
          v52 = *&v51[4 * v17];
          v53 = *&v51[4 * v15];
          v54 = *&v51[4 * v18];
          v55 = *&v51[4 * v20];
          result += 4 * v49;
          do
          {
            v56 = *&v51[8 - 4 * a4];
            v57 = *v51;
            v51 += 4;
            *result = (v53 >> 16) * v19 + ((v53 * v12) >> 15) + v57 + ((v52 + v54) >> 16) * v21 + ((v56 + v55) >> 16) * v22 + (((v52 + v54) * v13) >> 15) + (((v56 + v55) * v14) >> 15);
            result += 4;
            v55 = v54;
            v54 = v53;
            v53 = v52;
            v52 = v56;
            --v50;
          }

          while (v50);
        }

        return result;
      }
    }

    if (a2 == result)
    {
      return result;
    }

    result += 4 * v16;
    a2 += 4 * v16;
    v58 = 4 * (a5 - v16);
  }

  else
  {
    if (a2 == result)
    {
      return result;
    }

    v58 = 4 * a5;
  }

  return memmove(result, a2, v58);
}

uint64_t init_caps(uint64_t result, uint64_t a2, int a3, int a4)
{
  LODWORD(v4) = *(result + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 24);
    v7 = *(result + 144);
    v10 = *v6;
    v8 = v6 + 1;
    v9 = v10;
    do
    {
      v11 = v8[v5];
      *(a2 + 4 * v5) = (((v11 - v9) << a3) * a4 * (*(v7 + v4 * (a4 + 2 * a3 - 1)) + 64)) >> 2;
      v9 = v11;
      v4 = *(result + 8);
      ++v7;
      ++v5;
    }

    while (v5 < v4);
  }

  return result;
}

const char *opus_strerror(int a1)
{
  if ((a1 - 1) >= 0xFFFFFFF8)
  {
    return opus_strerror_error_strings[-a1];
  }

  else
  {
    return "unknown error";
  }
}

void silk_decode_parameters(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  silk_gains_dequant(a2 + 16, (a1 + 2760), (a1 + 2312), a3 == 2, *(a1 + 2324));
  silk_NLSF_decode(__src, (a1 + 2768), *(a1 + 2752));
  silk_NLSF2A((a2 + 64), __src, *(a1 + 2340));
  if (*(a1 + 2376) == 1)
  {
    *(a1 + 2791) = 4;
LABEL_8:
    memcpy((a2 + 32), (a2 + 64), 2 * *(a1 + 2340));
    goto LABEL_9;
  }

  v5 = *(a1 + 2791);
  if (v5 > 3)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 2340);
  if (v6 >= 1)
  {
    v7 = (a1 + 2344);
    v8 = v23;
    v9 = __src;
    v10 = *(a1 + 2340);
    do
    {
      v12 = *v7++;
      v11 = v12;
      v13 = *v9++;
      *v8++ = v11 + (((v13 - v11) * v5) >> 2);
      --v10;
    }

    while (v10);
  }

  silk_NLSF2A((a2 + 32), v23, v6);
LABEL_9:
  v14 = *(a1 + 2340);
  memcpy((a1 + 2344), __src, 2 * v14);
  if (*(a1 + 4184))
  {
    silk_bwexpander((a2 + 32), v14, 63570);
    silk_bwexpander((a2 + 64), *(a1 + 2340), 63570);
  }

  if (*(a1 + 2789) == 2)
  {
    silk_decode_pitch(*(a1 + 2786), *(a1 + 2788), a2, *(a1 + 2316), *(a1 + 2324));
    v15 = *(a1 + 2324);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = *(&silk_LTP_vq_ptrs_Q7 + *(a1 + 2792));
      v18 = a2 + 96;
      do
      {
        v19 = 0;
        v20 = v17 + 5 * *(a1 + 2764 + v16);
        do
        {
          *(v18 + 2 * v19) = *(v20 + v19) << 7;
          ++v19;
        }

        while (v19 != 5);
        ++v16;
        v18 += 10;
      }

      while (v16 != v15);
    }

    v21 = silk_LTPScales_table_Q14[*(a1 + 2793)];
  }

  else
  {
    bzero(a2, 4 * *(a1 + 2324));
    bzero((a2 + 96), 10 * *(a1 + 2324));
    v21 = 0;
    *(a1 + 2792) = 0;
  }

  *(a2 + 136) = v21;
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t silk_gains_dequant(uint64_t result, char *a2, _BYTE *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = a5;
    do
    {
      if (v9 | a4)
      {
        v11 = a2[v9] - 4;
        if (v11 > *a3 + 8)
        {
          LOBYTE(v11) = 2 * v11 - 8;
        }

        else
        {
          LOBYTE(v11) = *a3 + v11;
        }
      }

      else
      {
        v11 = *a2;
        if (v11 <= *a3 - 16)
        {
          LOBYTE(v11) = *a3 - 16;
        }
      }

      v12 = v11 & ~(v11 >> 31);
      if (v12 >= 63)
      {
        v12 = 63;
      }

      *a3 = v12;
      result = silk_log2lin(29 * v12 + ((7281 * v12) >> 16) + 2090);
      *(v8 + 4 * v9++) = result;
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t silk_NLSF_decode(__int16 *a1, char *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a3 + 2) < 1)
  {
    v8 = *a2;
  }

  else
  {
    v6 = 0;
    v7 = *(a3 + 8) + *(a3 + 2) * *a2;
    do
    {
      a1[v6] = *(v7 + v6) << 7;
      ++v6;
    }

    while (v6 < *(a3 + 2));
    v8 = *a2;
  }

  silk_NLSF_unpack(v29, v30, a3, v8);
  v9 = *(a3 + 2);
  if (v9 >= 1)
  {
    LOWORD(v10) = 0;
    v11 = *(a3 + 4);
    v12 = *(a3 + 2);
    do
    {
      v13 = a2[v12];
      if (v13 <= 0)
      {
        v14 = ((v13 << 10) | 0x66) & (v13 >> 31);
      }

      else
      {
        v14 = (v13 << 10) - 102;
      }

      v10 = (v14 >> 16) * v11 + ((v10 * v29[v12 + 31]) >> 8) + (((v14 & 0xFFFE) * v11) >> 16);
      v28[v12 + 15] = v10;
    }

    while (v12-- > 1);
  }

  silk_NLSF_VQ_weights_laroia(v28, a1, v9);
  v16 = *(a3 + 2);
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = v28[v17];
      if (v18 < 1)
      {
        v23 = 0;
      }

      else
      {
        v19 = v18 << 16;
        v20 = __clz(v19);
        v21 = (v19 >> (24 - v20)) & 0x7F;
        if (v20)
        {
          v22 = 0x8000;
        }

        else
        {
          v22 = 46214;
        }

        v23 = (v22 >> (v20 >> 1)) + ((213 * (v22 >> (v20 >> 1)) * v21) >> 16);
      }

      v24 = v28[v17 + 16] << 14;
      v25 = (v24 / v23 + a1[v17]) & ~((v24 / v23 + a1[v17]) >> 31);
      if (v25 >= 0x7FFF)
      {
        LOWORD(v25) = 0x7FFF;
      }

      a1[v17++] = v25;
    }

    while (v17 < *(a3 + 2));
    LOWORD(v16) = *(a3 + 2);
  }

  result = silk_NLSF_stabilize(a1, *(a3 + 56), v16);
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t silk_resampler_init(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (!a4)
  {
    if (a2 != 8000 && a2 != 16000 && a2 != 12000)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = 0xFFFFFFFFLL;
    if (a3 <= 15999)
    {
      if (a3 != 8000)
      {
        v6 = 12000;
LABEL_22:
        if (a3 != v6)
        {
          return v4;
        }
      }
    }

    else if (a3 != 16000 && a3 != 48000)
    {
      v6 = 24000;
      goto LABEL_22;
    }

    v7 = &delay_matrix_dec + 5 * (a2 >> 12) + (((a3 >> 12) - (a3 > 0x3E80)) >> (a3 > 0x5DC0)) - 6;
    goto LABEL_24;
  }

  v4 = 0xFFFFFFFFLL;
  if (a2 <= 15999)
  {
    if (a2 != 8000)
    {
      v5 = 12000;
LABEL_15:
      if (a2 != v5)
      {
        return v4;
      }
    }
  }

  else if (a2 != 16000 && a2 != 48000)
  {
    v5 = 24000;
    goto LABEL_15;
  }

  if (a3 != 8000 && a3 != 16000 && a3 != 12000)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = &delay_matrix_enc + 3 * (((a2 >> 12) - (a2 > 0x3E80)) >> (a2 > 0x5DC0)) + (a3 >> 12) - 4;
LABEL_24:
  *(a1 + 292) = *v7;
  *(a1 + 284) = a2 / 0x3E8u;
  *(a1 + 288) = a3 / 0x3E8u;
  *(a1 + 268) = 10 * (a2 / 0x3E8u);
  if (a3 > a2)
  {
    if (a3 == 2 * a2)
    {
      v8 = 0;
      *(a1 + 264) = 1;
    }

    else
    {
      *(a1 + 264) = 2;
      v8 = 1;
    }

    goto LABEL_43;
  }

  if (a3 >= a2)
  {
    v8 = 0;
    *(a1 + 264) = 0;
    goto LABEL_43;
  }

  *(a1 + 264) = 3;
  if (4 * a3 != 3 * a2)
  {
    if (3 * a3 == 2 * a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x200000012;
      v9 = &silk_Resampler_2_3_COEFS;
      goto LABEL_42;
    }

    if (a2 == 2 * a3)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000018;
      v9 = &silk_Resampler_1_2_COEFS;
      goto LABEL_42;
    }

    if (3 * a3 == a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000024;
      v9 = &silk_Resampler_1_3_COEFS;
      goto LABEL_42;
    }

    if (4 * a3 == a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000024;
      v9 = &silk_Resampler_1_4_COEFS;
      goto LABEL_42;
    }

    if (6 * a3 == a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000024;
      v9 = &silk_Resampler_1_6_COEFS;
      goto LABEL_42;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  *(a1 + 276) = 0x300000012;
  v9 = &silk_Resampler_3_4_COEFS;
LABEL_42:
  *(a1 + 296) = v9;
LABEL_43:
  v10 = 4 * ((a2 << (v8 | 0xE)) / a3);
  v11 = a2 << v8;
  do
  {
    v12 = v10;
    v13 = v10 * (((a3 >> 15) + 1) >> 1) + HIWORD(v10) * a3 + ((v10 * a3) >> 16);
    ++v10;
  }

  while (v13 < v11);
  v4 = 0;
  *(a1 + 272) = v12;
  return v4;
}

uint64_t silk_resampler(_DWORD *a1, _WORD *a2, char *__src, int a4)
{
  v8 = a1[73];
  v9 = (a1 + 42);
  v10 = a1[71] - v8;
  memcpy(a1 + 2 * v8 + 168, __src, 2 * v10);
  v11 = a1[66];
  v12 = a1[71];
  switch(v11)
  {
    case 3:
      silk_resampler_private_down_FIR(a1, a2, v9, v12);
      silk_resampler_private_down_FIR(a1, &a2[a1[72]], &__src[2 * v10], a4 - a1[71]);
      break;
    case 2:
      silk_resampler_private_IIR_FIR(a1, a2, v9, v12);
      silk_resampler_private_IIR_FIR(a1, &a2[a1[72]], &__src[2 * v10], a4 - a1[71]);
      break;
    case 1:
      silk_resampler_private_up2_HQ_wrapper(a1, a2, v9, v12);
      silk_resampler_private_up2_HQ_wrapper(a1, &a2[a1[72]], &__src[2 * v10], (a4 - a1[71]));
      break;
    default:
      memcpy(a2, v9, 2 * v12);
      memcpy(&a2[a1[72]], &__src[2 * v10], 2 * (a4 - a1[71]));
      break;
  }

  memcpy(v9, &__src[2 * (a4 - a1[73])], 2 * a1[73]);
  return 0;
}

void silk_LPC_analysis_filter(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a5 < 1)
  {
    celt_fir((a2 + 2 * a5), v11, a1 + 2 * a5, a4 - a5, a5, v12);
  }

  else
  {
    v7 = 0;
    do
    {
      *&v11[v7] = -*(a3 + v7);
      v7 += 2;
    }

    while (2 * a5 != v7);
    v8 = 2 * a5;
    v9 = v12;
    do
    {
      *v9++ = *(a2 - 2 + v8);
      v8 -= 2;
    }

    while (v8);
    celt_fir((a2 + 2 * a5), v11, a1 + 2 * a5, a4 - a5, a5, v12);
    bzero(a1, (2 * a5));
  }

  v10 = *MEMORY[0x1E69E9840];
}

double silk_PLC_Reset(uint64_t a1)
{
  *(a1 + 4192) = *(a1 + 2328) << 7;
  *&result = 0x1000000010000;
  *(a1 + 4264) = 0x1000000010000;
  *(a1 + 4276) = 0x1400000002;
  return result;
}

void silk_PLC(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 2316);
  if (v6 != *(a1 + 4272))
  {
    *(a1 + 4192) = *(a1 + 2328) << 7;
    *(a1 + 4264) = 0x1000000010000;
    *(a1 + 4276) = 0x1400000002;
    *(a1 + 4272) = v6;
  }

  if (a4)
  {
    silk_PLC_conceal(a1, a2, a3);
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
          v12 = 0;
          v8 = 0;
          v13 = *(a1 + 2332);
          v14 = a2 + 6;
          v15 = 5 * v9 - 5;
          do
          {
            v16 = 0;
            v17 = 0;
            v18 = v9 + ~v12;
            do
            {
              v17 += v14->i16[v15 + v16++];
            }

            while (v16 != 5);
            if (v17 > v8)
            {
              v19 = &v14->i8[10 * v18];
              v20 = *v19;
              *(a1 + 4204) = *(v19 + 4);
              *(a1 + 4196) = v20;
              *(a1 + 4192) = a2->i32[v18] << 8;
              v11 = a2->i32[v10];
              v8 = v17;
            }

            if (++v12 == v9)
            {
              break;
            }

            v15 -= 5;
          }

          while (v12 * v13 < v11);
        }
      }

      v21 = a1 + 4196;
      *(a1 + 4196) = 0;
      *(a1 + 4204) = 0;
      *(a1 + 4200) = v8;
      if (v8 > 11468)
      {
        if (v8 >= 0x3CCE)
        {
          v25 = 0;
          v26 = 0xF334000u / v8;
          do
          {
            *(v21 + v25) = (v26 * *(v21 + v25)) >> 14;
            v25 += 2;
          }

          while (v25 != 10);
        }
      }

      else
      {
        v22 = 0;
        if (v8 <= 1)
        {
          v8 = 1;
        }

        v23 = (0xB33400u / v8);
        do
        {
          *(v21 + v22) = (v23 * *(v21 + v22)) >> 10;
          v22 += 2;
        }

        while (v22 != 10);
      }
    }

    else
    {
      *(a1 + 4192) = 4608 * v6;
      *(a1 + 4196) = 0;
      *(a1 + 4204) = 0;
    }

    memcpy((a1 + 4206), &a2[4], 2 * *(a1 + 2340));
    *(a1 + 4260) = a2[8].i32[2];
    v24 = *(a1 + 2324);
    *(a1 + 4264) = *(&a2->i64[1] + 4 * v24);
    *(a1 + 4280) = *(a1 + 2332);
    *(a1 + 4276) = v24;
  }
}

int32x4_t silk_PLC_conceal(uint64_t a1, int32x4_t *a2, uint64_t a3)
{
  v132 = a3;
  v4 = a1;
  *&v148[12] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 4280);
  v6 = *(a1 + 4280);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 2 * *(v7 + 2336);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v140 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 4 * (*(v11 + 2328) + v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v134 = &v127 - v16;
  v17 = v14[1066] >> 6;
  v18 = v14[1067];
  v128 = v18 >> 6;
  v141 = v18 >> 6;
  v142 = v17;
  if (v14[594])
  {
    *(v4 + 4206) = 0u;
    *(v4 + 4222) = 0u;
  }

  bzero(v9, v15);
  v19 = v4 + 4;
  v20 = -2;
  v21 = &v142;
  v22 = 1;
  v23 = v9;
  do
  {
    v24 = v22;
    if (v5 >= 1)
    {
      v25 = 0;
      v26 = (v20 + *(v4 + 4276)) * v6;
      v27 = *v21;
      v28 = v27;
      v29 = ((v27 >> 15) + 1) >> 1;
      v30 = v19 + 4 * v26;
      do
      {
        v31 = (v28 * (*(v30 + 4 * v25) >> 16) + ((v28 * *(v30 + 4 * v25)) >> 16) + v29 * *(v30 + 4 * v25)) >> 8;
        if (v31 <= -32768)
        {
          v31 = -32768;
        }

        if (v31 >= 0x7FFF)
        {
          LOWORD(v31) = 0x7FFF;
        }

        *&v23[2 * v25++] = v31;
      }

      while (v5 != v25);
    }

    v22 = 0;
    v23 += 2 * v5;
    v20 = -1;
    v21 = &v141;
  }

  while ((v24 & 1) != 0);
  v143 = 0;
  v144 = 0;
  bzero(v140, v10);
  bzero(v134, v13);
  silk_sum_sqr_shift(&v143 + 1, &v144 + 1, v9, v5);
  silk_sum_sqr_shift(&v143, &v144, &v9[2 * *(v4 + 4280)], *(v4 + 4280));
  v32 = *(v4 + 4276);
  v133 = a2;
  v129 = v18;
  if (SHIDWORD(v143) >> v144 >= v143 >> SBYTE4(v144))
  {
    v33 = *(v4 + 4280) * v32;
  }

  else
  {
    v33 = (v32 - 1) * *(v4 + 4280);
  }

  if (v33 <= 128)
  {
    v34 = 128;
  }

  else
  {
    v34 = v33;
  }

  v35 = v4 + 4196;
  LOWORD(v36) = *(v4 + 4248);
  v37 = *(v4 + 4184);
  if (v37 >= 1)
  {
    v37 = 1;
  }

  v38 = HARM_ATT_Q15[v37];
  if (*(v4 + 4188) == 2)
  {
    v39 = &PLC_RAND_ATTENUATE_V_Q15;
  }

  else
  {
    v39 = &PLC_RAND_ATTENUATE_UV_Q15;
  }

  v40 = v39[v37];
  v41 = v39[v37];
  silk_bwexpander((v4 + 4206), *(v4 + 2340), 64881);
  v42 = *(v4 + 2340);
  __memcpy_chk();
  v43 = *(v4 + 4184);
  v44 = v140;
  v137 = v34;
  if (v43)
  {
    v136 = v41;
    v45 = v42;
  }

  else if (*(v4 + 4188) == 2)
  {
    v46 = 0;
    LOWORD(v47) = 0x4000;
    v45 = v42;
    do
    {
      LOWORD(v47) = v47 - *(v35 + v46);
      v46 += 2;
    }

    while (v46 != 10);
    v136 = v41;
    v47 = v47;
    if (v47 <= 3277)
    {
      v47 = 3277;
    }

    v36 = (*(v4 + 4260) * v47) >> 14;
  }

  else
  {
    v48 = silk_LPC_inverse_pred_gain((v4 + 4206), v42);
    if (v48 >= 0x8000000)
    {
      v49 = 0x8000000;
    }

    else
    {
      v49 = v48;
    }

    if (v49 <= 0x400000)
    {
      v49 = 0x400000;
    }

    v136 = ((v49 >> 13) * v40 + ((8 * (v49 & 0x1FFF) * v40) >> 16)) >> 14;
    v45 = *(v4 + 2340);
    LOWORD(v36) = 0x4000;
  }

  v50 = *(v4 + 4244);
  v51 = ((*(v4 + 4192) >> 7) + 1) >> 1;
  v52 = *(v4 + 2336);
  v53 = v52 - (v45 + v51) - 2;
  silk_LPC_analysis_filter(&v44[2 * v53], v4 + 2 * v53 + 1348, &v145, v45 + v51 + 2, v45);
  v54 = *(v4 + 4268);
  if (v54 >= 0)
  {
    v55 = *(v4 + 4268);
  }

  else
  {
    v55 = -v54;
  }

  v56 = __clz(v55);
  v57 = v54 << (v56 - 1);
  v58 = 0x1FFFFFFF / (v57 >> 16);
  v59 = (v57 >> 16) * v58 + ((v57 * v58) >> 16);
  v60 = (v58 << 16) - 8 * v59 * (((v58 >> 15) + 1) >> 1) + ((-8 * v59) >> 16) * v58 + ((((-8 * v59) & 0xFFF8) * v58) >> 16);
  v61 = HIWORD(v55);
  v62 = v60 >> (16 - v56);
  v63 = v56 - 16;
  v64 = 0x80000000 >> v63;
  if (v60 > 0x80000000 >> v63)
  {
    v64 = v60;
  }

  if (v60 <= (0x7FFFFFFFu >> v63))
  {
    v65 = v64;
  }

  else
  {
    v65 = 0x7FFFFFFFu >> v63;
  }

  v66 = v65 << v63;
  if (v61)
  {
    v67 = v62;
  }

  else
  {
    v67 = v66;
  }

  v131 = *(v4 + 2340);
  LODWORD(v68) = v131 + v53;
  v69 = *(v4 + 2336);
  v70 = v134;
  if (v131 + v53 < v69)
  {
    if (v67 >= 0x3FFFFFFF)
    {
      v71 = 0x3FFFFFFF;
    }

    else
    {
      v71 = v67;
    }

    v68 = v68;
    do
    {
      *&v70[4 * v68] = (v71 >> 16) * *&v44[2 * v68] + ((v71 * *&v44[2 * v68]) >> 16);
      ++v68;
    }

    while (v68 < v69);
  }

  v130 = v69;
  v138 = *(v4 + 2324);
  v139 = v4;
  if (v138 >= 1)
  {
    v72 = 0;
    v73 = v19 + 4 * (v137 - 128);
    v74 = *(v4 + 2332);
    v135 = 4608 * *(v4 + 2316);
    v136 = v136;
    v75 = *(v4 + 4192);
    v137 = v74;
    do
    {
      LODWORD(v140) = v72;
      if (v74 >= 1)
      {
        v76 = *(v4 + 4196);
        v77 = *(v4 + 4198);
        v78 = *(v4 + 4200);
        v79 = *(v4 + 4202);
        v80 = &v134[4 * v52];
        v81 = -4 * v51;
        v82 = v74;
        v83 = *(v4 + 4204);
        do
        {
          v50 = 196314165 * v50 + 907633515;
          *v80 = 4 * ((*&v80[v81 + 8] >> 16) * v76 + ((*&v80[v81 + 8] * v76) >> 16) + (*&v80[v81 + 4] >> 16) * v77 + ((*&v80[v81 + 4] * v77) >> 16) + (*&v80[v81] >> 16) * v78 + ((*&v80[v81] * v78) >> 16) + (*&v80[v81 - 4] >> 16) * v79 + ((*&v80[v81 - 4] * v79) >> 16) + (*&v80[v81 - 8] >> 16) * v83 + ((*&v80[v81 - 8] * v83) >> 16) + (*(v73 + 4 * (v50 >> 25)) >> 16) * v36 + ((*(v73 + 4 * (v50 >> 25)) * v36) >> 16)) + 8;
          v80 += 4;
          ++v52;
          --v82;
        }

        while (v82);
      }

      for (i = 0; i != 10; i += 2)
      {
        *(v35 + i) = (*(v35 + i) * v38) >> 15;
      }

      v36 = (v36 * v136) >> 15;
      if ((v75 + 655 * (v75 >> 16) + ((655 * v75) >> 16)) >= v135)
      {
        v75 = v135;
      }

      else
      {
        v75 += 655 * (v75 >> 16) + ((655 * v75) >> 16);
      }

      v4 = v139;
      *(v139 + 4192) = v75;
      v51 = ((v75 >> 7) + 1) >> 1;
      v72 = v140 + 1;
      v74 = v137;
    }

    while (v140 + 1 != v138);
  }

  v86 = v133;
  v85 = v134;
  v87 = v130;
  v88 = v131;
  v89 = &v134[4 * v130];
  v90 = v89 - 64;
  v91 = (v4 + 1284);
  v92 = *(v4 + 1300);
  *(v89 - 4) = *(v4 + 1284);
  *(v89 - 3) = v92;
  v93 = *(v4 + 1332);
  *(v89 - 2) = *(v4 + 1316);
  *(v89 - 1) = v93;
  v94 = *(v4 + 2328);
  v95 = v132;
  if (v94 >= 1)
  {
    v96 = 0;
    v97 = vmovl_high_s16(v145);
    v98 = vmovl_s16(*v145.i8);
    v99 = v146;
    v100 = v147;
    v101 = v128;
    v102 = ((v129 >> 21) + 1) >> 1;
    v103 = &v85[4 * v87 - 44];
    v104.i64[0] = 0xFFFF0000FFFFLL;
    v104.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v105 = &v90[4 * v96];
      v107 = v105[2];
      v106 = v105[3];
      v108 = vrev64q_s32(vshrq_n_s32(v106, 0x10uLL));
      v109 = vrev64q_s32(vshrq_n_s32(v107, 0x10uLL));
      v110 = vrev64q_s32(vandq_s8(v106, v104));
      v111 = vrev64q_s32(vandq_s8(v107, v104));
      v112 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v110, v110, 8uLL), v98), 0x10uLL), vmulq_s32(vextq_s8(v111, v111, 8uLL), v97), 0x10uLL), vmlaq_s32(vmulq_s32(vextq_s8(v109, v109, 8uLL), v97), vextq_s8(v108, v108, 8uLL), v98))) + ((v105[1].i32[3] * v99) >> 16) + (v105[1].i32[3] >> 16) * v99 + ((v105[1].i32[2] * v100) >> 16) + (v88 >> 1) + (v105[1].i32[2] >> 16) * v100;
      if (v88 >= 11)
      {
        v113 = v88 - 10;
        v114 = v148;
        v115 = v103;
        do
        {
          v117 = *v115--;
          v116 = v117;
          v118 = *v114++;
          v112 += (v116 >> 16) * v118 + ((v116 * v118) >> 16);
          --v113;
        }

        while (v113);
      }

      v119 = *&v89[4 * v96] + 16 * v112;
      *&v89[4 * v96] = v119;
      v120 = (((v119 * v102 + (v119 >> 16) * v101 + ((v119 * v101) >> 16)) >> 7) + 1) >> 1;
      if (v120 <= -32768)
      {
        v120 = -32768;
      }

      if (v120 >= 0x7FFF)
      {
        LOWORD(v120) = 0x7FFF;
      }

      *(v95 + 2 * v96++) = v120;
      v103 += 4;
    }

    while (v96 != v94);
  }

  v121 = &v90[4 * v94];
  v122 = *(v121 + 1);
  *v91 = *v121;
  v91[1] = v122;
  v123 = *(v121 + 3);
  v91[2] = *(v121 + 2);
  v91[3] = v123;
  v124 = v139;
  *(v139 + 4244) = v50;
  *(v124 + 4248) = v36;
  result = vdupq_n_s32(v51);
  *v86 = result;
  v126 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *silk_PLC_glue_frames(unsigned int *result, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = result;
  if (result[1046])
  {
    result = silk_sum_sqr_shift(result + 1063, result + 1064, a2, a3);
    v5[1060] = 1;
  }

  else
  {
    if (result[1060])
    {
      v20 = 0;
      result = silk_sum_sqr_shift(&v20, &v20 + 1, a2, a3);
      v6 = v5[1064];
      if (SHIDWORD(v20) <= v6)
      {
        v7 = SHIDWORD(v20) < v6 ? v20 >> (v6 - BYTE4(v20)) : v20;
      }

      else
      {
        v5[1063] = v5[1063] >> (BYTE4(v20) - v6);
        v7 = v20;
      }

      v8 = v5[1063];
      if (v7 > v8)
      {
        v9 = __clz(v8);
        v10 = v8 << (v9 - 1);
        v5[1063] = v10;
        v11 = v7 >> ((25 - v9) & ~((25 - v9) >> 31));
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = v10 / v11;
        if (v12 < 1)
        {
          v16 = 0;
        }

        else
        {
          v13 = __clz(v12);
          if (v13 != 24)
          {
            if (v12 <= 0x7F)
            {
              LOBYTE(v12) = (v12 >> (56 - v13)) | (v12 << (v13 - 24));
            }

            else
            {
              LOBYTE(v12) = (v12 << (v13 + 8)) | (v12 >> (24 - v13));
            }
          }

          v14 = v12 & 0x7F;
          if (v13)
          {
            v15 = 0x8000;
          }

          else
          {
            v15 = 46214;
          }

          v16 = 16 * ((v15 >> (v13 >> 1)) + ((213 * (v15 >> (v13 >> 1)) * v14) >> 16));
        }

        if (a3 >= 1)
        {
          v17 = 4 * ((0x10000 - v16) / a3);
          v18 = a3 - 1;
          do
          {
            v19 = v18;
            *v4 = HIWORD(v16) * *v4 + (((v16 & 0xFFFCu) * *v4) >> 16);
            ++v4;
            v16 += v17;
            if (v16 > 0x10000)
            {
              break;
            }

            --v18;
          }

          while (v19);
        }
      }
    }

    v5[1060] = 0;
  }

  return result;
}

uint64_t silk_decode_indices(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a4 || *(a1 + 4 * a3 + 2416))
  {
    v8 = ec_dec_icdf(a2, silk_type_offset_VAD_iCDF, 8) + 2;
  }

  else
  {
    v8 = ec_dec_icdf(a2, silk_type_offset_no_VAD_iCDF, 8);
  }

  *(a1 + 2789) = v8 >> 1;
  *(a1 + 2790) = v8 & 1;
  if (a5 == 2)
  {
    v9 = ec_dec_icdf(a2, silk_delta_gain_iCDF, 8);
  }

  else
  {
    *(a1 + 2760) = 8 * ec_dec_icdf(a2, &silk_gain_iCDF[8 * (v8 >> 1)], 8);
    v9 = *(a1 + 2760) + ec_dec_icdf(a2, silk_uniform8_iCDF, 8);
  }

  *(a1 + 2760) = v9;
  if (*(a1 + 2324) > 1)
  {
    v10 = (a1 + 2761);
    v11 = 1;
    do
    {
      *v10++ = ec_dec_icdf(a2, silk_delta_gain_iCDF, 8);
      ++v11;
    }

    while (v11 < *(a1 + 2324));
  }

  v12 = ec_dec_icdf(a2, (*(*(a1 + 2752) + 16) + **(a1 + 2752) * (*(a1 + 2789) >> 1)), 8);
  *(a1 + 2768) = v12;
  silk_NLSF_unpack(v24, v23, *(a1 + 2752), v12);
  v13 = *(a1 + 2752);
  if (*(v13 + 2) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = ec_dec_icdf(a2, (*(v13 + 40) + v24[v14]), 8);
      if (v15 == 8)
      {
        LOBYTE(v15) = ec_dec_icdf(a2, silk_NLSF_EXT_iCDF, 8) + 8;
      }

      else if (!v15)
      {
        v15 = -ec_dec_icdf(a2, silk_NLSF_EXT_iCDF, 8);
      }

      *(a1 + 2769 + v14) = v15 - 4;
      v13 = *(a1 + 2752);
      ++v14;
    }

    while (v14 < *(v13 + 2));
  }

  if (*(a1 + 2324) == 4)
  {
    v16 = ec_dec_icdf(a2, silk_NLSF_interpolation_factor_iCDF, 8);
  }

  else
  {
    v16 = 4;
  }

  *(a1 + 2791) = v16;
  if (*(a1 + 2789) == 2)
  {
    if (a5 == 2 && *(a1 + 2408) == 2 && (v17 = ec_dec_icdf(a2, silk_pitch_delta_iCDF, 8), v17 >= 1))
    {
      v18 = v17 + *(a1 + 2412) - 9;
    }

    else
    {
      *(a1 + 2786) = (*(a1 + 2316) >> 1) * ec_dec_icdf(a2, silk_pitch_lag_iCDF, 8);
      v18 = *(a1 + 2786) + ec_dec_icdf(a2, *(a1 + 2384), 8);
    }

    *(a1 + 2786) = v18;
    *(a1 + 2412) = v18;
    *(a1 + 2788) = ec_dec_icdf(a2, *(a1 + 2392), 8);
    *(a1 + 2792) = ec_dec_icdf(a2, silk_LTP_per_index_iCDF, 8);
    if (*(a1 + 2324) >= 1)
    {
      v19 = 0;
      do
      {
        *(a1 + 2764 + v19++) = ec_dec_icdf(a2, *(&silk_LTP_gain_iCDF_ptrs + *(a1 + 2792)), 8);
      }

      while (v19 < *(a1 + 2324));
    }

    if (a5)
    {
      v20 = 0;
    }

    else
    {
      v20 = ec_dec_icdf(a2, silk_LTPscale_iCDF, 8);
    }

    *(a1 + 2793) = v20;
  }

  *(a1 + 2408) = *(a1 + 2789);
  result = ec_dec_icdf(a2, silk_uniform4_iCDF, 8);
  *(a1 + 2794) = result;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t silk_NLSF_unpack(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = (*(a3 + 32) + v4 * a4 / 2);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = (result + 2 * v5);
      *v9 = (v8 >> 1) & 7 | (8 * ((v8 >> 1) & 7));
      v10 = *(a3 + 2) - 1;
      if ((v8 & 1) == 0)
      {
        v10 = 0;
      }

      v11 = *(*(a3 + 24) + v10 + v5);
      v12 = (a2 + v5);
      *v12 = v11;
      v9[1] = (v7 >> 5) | (8 * (v7 >> 5));
      v12[1] = *(*(a3 + 24) + ((*(a3 + 2) - 1) & ((v7 << 27) >> 31)) + v5 + 1);
      v5 += 2;
    }

    while (v5 < *(a3 + 2));
  }

  return result;
}

uint64_t silk_shell_decoder(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    v10 = 0;
    v7 = 0u;
  }

  else
  {
    v6 = ec_dec_icdf(a2, &silk_shell_code_table3[silk_shell_code_table_offsets[a3]], 8);
    v7 = a3 - v6;
    if (v6 < 1)
    {
      v10 = 0u;
    }

    else
    {
      v8 = v6;
      v9 = ec_dec_icdf(a2, &silk_shell_code_table2[silk_shell_code_table_offsets[v6]], 8);
      v10 = v8 - v9;
      if (v9 > 0)
      {
        v11 = v9;
        v12 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v9]], 8);
        v13 = v11 - v12;
        if (v12 < 1)
        {
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v14 = v12;
          v15 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v12]], 8);
          v16 = v14 - v15;
        }

        *a1 = v15;
        *(a1 + 4) = v16;
        if (v13 < 1)
        {
          v17 = 0;
          v18 = 0;
        }

        else
        {
          v17 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v13]], 8);
          v18 = v13 - v17;
        }

        goto LABEL_9;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  *a1 = 0;
LABEL_9:
  *(a1 + 8) = v17;
  *(a1 + 12) = v18;
  if (v10 <= 0)
  {
    v24 = 0;
    v25 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v19 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v10]], 8);
    v20 = v10 - v19;
    if (v19 < 1)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v21 = v19;
      v22 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v19]], 8);
      v23 = v21 - v22;
    }

    *(a1 + 16) = v22;
    *(a1 + 20) = v23;
    if (v20 < 1)
    {
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v24 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v20]], 8);
      v25 = v20 - v24;
    }
  }

  *(a1 + 24) = v24;
  *(a1 + 28) = v25;
  if (v7 < 1)
  {
    v27 = 0u;
  }

  else
  {
    v26 = ec_dec_icdf(a2, &silk_shell_code_table2[silk_shell_code_table_offsets[v7]], 8);
    v27 = v7 - v26;
    if (v26 > 0)
    {
      v28 = v26;
      v29 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v26]], 8);
      v30 = v28 - v29;
      if (v29 < 1)
      {
        v32 = 0;
        v33 = 0;
      }

      else
      {
        v31 = v29;
        v32 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v29]], 8);
        v33 = v31 - v32;
      }

      *(a1 + 32) = v32;
      *(a1 + 36) = v33;
      if (v30 < 1)
      {
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v34 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v30]], 8);
        v35 = v30 - v34;
      }

      goto LABEL_27;
    }
  }

  v34 = 0;
  v35 = 0;
  *(a1 + 32) = 0;
LABEL_27:
  *(a1 + 40) = v34;
  *(a1 + 44) = v35;
  if (v27 <= 0)
  {
    result = 0;
    v42 = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    v36 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v27]], 8);
    v37 = v27 - v36;
    if (v36 < 1)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v38 = v36;
      v39 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v36]], 8);
      v40 = v38 - v39;
    }

    *(a1 + 48) = v39;
    *(a1 + 52) = v40;
    if (v37 < 1)
    {
      result = 0;
      v42 = 0;
    }

    else
    {
      result = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v37]], 8);
      v42 = v37 - result;
    }
  }

  *(a1 + 56) = result;
  *(a1 + 60) = v42;
  return result;
}

__n128 silk_decode_core(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v140 = a3;
  v147 = a2;
  v160 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 2336);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  v9 = *(a1 + 2328);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v138 - v11;
  bzero(&v138 - v11, v13);
  v14 = 4 * *(a1 + 2332);
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, v14);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v138 - ((v14 + 79) & 0xFFFFFFFFFFFFFFF0);
  v145 = *(a1 + 2791);
  if (v9 >= 1)
  {
    v19 = 0;
    v20 = *(a1 + 2794);
    v21 = 16 * silk_Quantization_Offsets_Q10[2 * (*(a1 + 2789) >> 1) + *(a1 + 2790)];
    do
    {
      v22 = 196314165 * v20 + 907633515;
      v23 = *(a4 + 4 * v19) << 14;
      v24 = (v23 | 0x500) & (v23 >> 31);
      if (v23 > 0)
      {
        v24 = v23 - 1280;
      }

      v25 = v24 + v21;
      if (v22 < 0)
      {
        v25 = -v25;
      }

      *(a1 + 4 + 4 * v19) = v25;
      v20 = *(a4 + 4 * v19++) + v22;
    }

    while (v19 < *(a1 + 2328));
  }

  bzero(&v138 - ((v14 + 79) & 0xFFFFFFFFFFFFFFF0), v14 + 64);
  v26 = *(a1 + 1300);
  *v18 = *(a1 + 1284);
  *(v18 + 1) = v26;
  v27 = *(a1 + 1316);
  v28 = *(a1 + 1332);
  v139 = (a1 + 1284);
  *(v18 + 2) = v27;
  *(v18 + 3) = v28;
  if (*(a1 + 2324) >= 1)
  {
    v29 = 0;
    v30 = (a1 + 4);
    v151 = *(a1 + 2336);
    v149 = v147 + 96;
    v150 = v147 + 32;
    v148 = v147 + 16;
    v152 = a1 + 1348;
    v154 = v140;
    v142 = v8;
    do
    {
      v31 = *(a1 + 2340);
      v153 = v150 + 32 * (v29 >> 1);
      __memcpy_chk();
      v32 = *(v148 + 4 * v29);
      if (v32 >= 0)
      {
        v33 = *(v148 + 4 * v29);
      }

      else
      {
        v33 = -v32;
      }

      v34 = __clz(v33);
      v35 = v32 << (v34 - 1);
      v36 = 0x1FFFFFFF / (v35 >> 16);
      v37 = v36;
      v38 = (v35 >> 16) * v37 + ((v35 * v37) >> 16);
      v39 = (v36 << 16) - 8 * v38 * (((v36 >> 15) + 1) >> 1) + ((-8 * v38) >> 16) * v37 + ((((-8 * v38) & 0xFFF8) * v37) >> 16);
      v40 = v33 >> 17;
      v41 = v39 >> (15 - v34);
      v42 = 0x80000000 >> (v34 - 15);
      if (v39 > v42)
      {
        v42 = v39;
      }

      if (v39 <= (0x7FFFFFFFu >> (v34 - 15)))
      {
        v43 = v42;
      }

      else
      {
        v43 = 0x7FFFFFFFu >> (v34 - 15);
      }

      v44 = v43 << (v34 - 15);
      if (v40)
      {
        v45 = v41;
      }

      else
      {
        v45 = v44;
      }

      v46 = *a1;
      if (v32 == *a1)
      {
        v47 = 0x10000;
      }

      else
      {
        v48 = 0;
        if (v46 >= 0)
        {
          v49 = *a1;
        }

        else
        {
          v49 = -v46;
        }

        v50 = __clz(v49);
        v51 = v46 << (v50 - 1);
        v52 = (v51 >> 16) * v37 + ((v51 * v37) >> 16);
        v53 = v51 - (((v52 * v35) >> 29) & 0xFFFFFFF8);
        v54 = v52 + (v53 >> 16) * v37 + ((v53 * v37) >> 16);
        v55 = v50 - v34;
        if ((v55 + 29) >= 0x30)
        {
          v56 = 0;
        }

        else
        {
          v56 = v54 >> (v55 + 13);
        }

        v57 = 0x80000000 >> (-13 - v55);
        if (v54 > v57)
        {
          v57 = v54;
        }

        if (v54 <= (0x7FFFFFFFu >> (-13 - v55)))
        {
          v58 = v57;
        }

        else
        {
          v58 = 0x7FFFFFFFu >> (-13 - v55);
        }

        v59 = v58 << (-13 - v55);
        if (v55 <= -14)
        {
          v47 = v59;
        }

        else
        {
          v47 = v56;
        }

        v60 = vdupq_n_s32(v47 >> 16);
        v61 = vdupq_n_s32(v47);
        v62 = vdupq_n_s32(v47);
        v63.i64[0] = 0x100000001;
        v63.i64[1] = 0x100000001;
        do
        {
          v64 = *&v18[v48];
          v65 = vshrq_n_s32(vshlq_n_s32(v64, 0x10uLL), 0x10uLL);
          *&v18[v48] = vmlaq_s32(vsraq_n_s32(vmulq_s32(v65, v60), vmulq_s32(v65, v61), 0x10uLL), vhaddq_s32(vshrq_n_s32(v64, 0xFuLL), v63), v62);
          v48 += 16;
        }

        while (v48 != 64);
      }

      v66 = v152;
      v67.i64[0] = 0xFFFF0000FFFFLL;
      v67.i64[1] = 0xFFFF0000FFFFLL;
      v68 = (v149 + 10 * v29);
      v69 = *(a1 + 2789);
      *a1 = v32;
      if (!*(a1 + 4184) || (*(a1 + 4188) == 2 ? (v70 = v29 > 1) : (v70 = 1), !v70 ? (v71 = v69 == 2) : (v71 = 1), v71))
      {
        if (v69 != 2)
        {
          LODWORD(v72) = *(a1 + 2332);
          v73 = v30;
          goto LABEL_77;
        }

        v74 = *(v147 + 4 * v29);
      }

      else
      {
        *v68 = 0;
        v68[4] = 0;
        v68[2] = 4096;
        v74 = *(a1 + 2308);
        *(v147 + 4 * v29) = v74;
      }

      v76 = v145 < 4 && v29 == 2;
      if (!v29 || v76)
      {
        v143 = v45;
        v79 = *(a1 + 2336);
        v80 = *(a1 + 2340);
        v81 = *(a1 + 2332);
        v144 = v68;
        v146 = v74;
        if (v29 == 2)
        {
          v141 = v80;
          memcpy((v66 + 2 * v79), v140, 4 * v81);
          v80 = v141;
          v74 = v146;
          v66 = v152;
          v81 = *(a1 + 2332);
          v82 = *(a1 + 2336);
          v83 = *(a1 + 2340);
        }

        else
        {
          v83 = v80;
          v82 = v79;
        }

        v84 = v79 - v80 - v74 - 2;
        v85 = v142;
        silk_LPC_analysis_filter(&v142[2 * v84], v66 + 2 * (v84 + v81 * v29), v153, v82 - v84, v83);
        if (v29)
        {
          v67.i64[0] = 0xFFFF0000FFFFLL;
          v67.i64[1] = 0xFFFF0000FFFFLL;
          v68 = v144;
          v86 = v143;
        }

        else
        {
          v86 = 4 * (*(v147 + 136) * (v143 >> 16) + ((*(v147 + 136) * v143) >> 16));
          v67.i64[0] = 0xFFFF0000FFFFLL;
          v67.i64[1] = 0xFFFF0000FFFFLL;
          v68 = v144;
        }

        v74 = v146;
        if (v146 >= -1)
        {
          v87 = (v146 + 2);
          v88 = v151 - 1;
          v89 = *(a1 + 2336) - 1;
          do
          {
            v90 = *&v85[2 * v89];
            *&v12[4 * v88--] = (v86 >> 16) * v90 + ((v86 * v90) >> 16);
            --v89;
            --v87;
          }

          while (v87);
        }
      }

      else if (v47 != 0x10000 && v74 >= -1)
      {
        v77 = (v74 + 2);
        v78 = v151 - 1;
        do
        {
          *&v12[4 * v78] = *&v12[4 * v78] * (v47 >> 16) + ((*&v12[4 * v78] * v47) >> 16) + (((*&v12[4 * v78] >> 15) + 1) >> 1) * v47;
          --v78;
          --v77;
        }

        while (v77);
      }

      v72 = *(a1 + 2332);
      if (v72 < 1)
      {
        goto LABEL_86;
      }

      v91 = 0;
      v92 = *v68;
      v93 = vmovl_s16(*(v68 + 1));
      v94 = vrev64q_s32(v93);
      v95 = vextq_s8(v94, v94, 8uLL);
      v95.i32[0] = v92;
      v96 = &v12[4 * v151];
      v97 = &v12[4 * v151 - 4 * v74];
      v151 = (v151 + v72);
      do
      {
        v98 = *&v97[v91 - 8];
        v99 = vandq_s8(v98, v67);
        v98.i32[0] = *&v97[v91 + 8];
        v100 = vrev64q_s32(v99);
        v101 = v30[v91 / 4] + 2 * (vaddvq_s32(vsraq_n_s32(vmulq_s32(vshrq_n_s32(v98, 0x10uLL), v95), vmulq_s32(vextq_s8(v100, v100, 8uLL), v93), 0x10uLL)) + ((v98.u16[0] * v92) >> 16) + (*&v97[v91 - 8] >> 16) * v93.i32[3]) + 4;
        *&v16[v91] = v101;
        *&v96[v91] = 2 * v101;
        v91 += 4;
      }

      while (4 * v72 != v91);
      v73 = v16;
LABEL_77:
      if (v72 >= 1)
      {
        v102 = *(a1 + 2340);
        v103 = *v155;
        v104 = vmovl_s16(*&v155[2]);
        v105 = vmovl_high_s16(*&v155[2]);
        v106 = v156;
        v107 = vmovl_s16(v157);
        v108 = v158;
        v109 = v159;
        v110 = v72;
        v111 = *(v18 + 15);
        v112 = vmovl_high_s16(*v155);
        v113 = vmovl_s16(*v155);
        v114 = v154;
        v115 = v18;
        do
        {
          v116 = *(v115 + 44);
          v117 = *(v115 + 28);
          v118 = vrev64q_s32(vextq_s8(v117, v116, 4uLL));
          v119 = vandq_s8(v117, v67);
          v120 = vrev64q_s32(vextq_s8(v116, v116, 0xCuLL));
          v120.i32[0] = v111;
          v121 = vrev64q_s32(vandq_s8(v116, v67));
          v122 = vrev64q_s32(v119);
          v123 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v121, v121, 8uLL), v104), 0x10uLL), vmulq_s32(vextq_s8(v122, v122, 8uLL), v105), 0x10uLL), vmlaq_s32(vmulq_s32(vshrq_n_s32(vextq_s8(v118, v118, 8uLL), 0x10uLL), v112), vshrq_n_s32(v120, 0x10uLL), v113))) + ((v111 * v103) >> 16) + (*(v115 + 28) >> 16) * v105.i32[3] + ((*(v115 + 6) * v106) >> 16) + (v102 >> 1) + (*(v115 + 6) >> 16) * v106;
          if (v102 == 16)
          {
            v124 = *(v115 + 8);
            v125 = vrev64q_s32(vshrq_n_s32(v124, 0x10uLL));
            v126 = vrev64q_s32(vandq_s8(v124, v67));
            v123 += vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v125, v125, 8uLL), v107), vmulq_s32(vextq_s8(v126, v126, 8uLL), v107), 0x10uLL)) + ((*(v115 + 1) * v108) >> 16) + (*(v115 + 1) >> 16) * v108 + ((*v115 * v109) >> 16) + (*v115 >> 16) * v109;
          }

          v127 = *v73++;
          v111 = v127 + 16 * v123;
          *(v115 + 16) = v111;
          v128 = (((v111 * (((v32 >> 21) + 1) >> 1) + (v111 >> 16) * (v32 >> 6) + ((v111 * (v32 >> 6)) >> 16)) >> 7) + 1) >> 1;
          if (v128 <= -32768)
          {
            v128 = -32768;
          }

          if (v128 >= 0x7FFF)
          {
            LOWORD(v128) = 0x7FFF;
          }

          *v114++ = v128;
          v115 += 4;
          --v110;
        }

        while (v110);
      }

LABEL_86:
      v129 = &v18[4 * v72];
      v130 = *v129;
      v131 = *(v129 + 1);
      v132 = *(v129 + 3);
      *(v18 + 2) = *(v129 + 2);
      *(v18 + 3) = v132;
      *v18 = v130;
      *(v18 + 1) = v131;
      v30 += v72;
      v154 += 2 * v72;
      ++v29;
    }

    while (v29 < *(a1 + 2324));
  }

  v133 = *(v18 + 1);
  v134 = v139;
  *v139 = *v18;
  v134[1] = v133;
  result = *(v18 + 2);
  v136 = *(v18 + 3);
  v134[2] = result;
  v134[3] = v136;
  v137 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t silk_insertion_sort_increasing_all_values_int16(uint64_t result, int a2)
{
  if (a2 >= 2)
  {
    for (i = 1; i != a2; ++i)
    {
      v3 = *(result + 2 * i);
      v4 = i;
      while (1)
      {
        v5 = v4 - 1;
        v6 = *(result + 2 * (v4 - 1));
        if (v3 >= v6)
        {
          break;
        }

        *(result + 2 * v4--) = v6;
        if (v5 + 1 <= 1)
        {
          LODWORD(v4) = 0;
          break;
        }
      }

      *(result + 2 * v4) = v3;
    }
  }

  return result;
}

uint64_t silk_decode_pulses(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = ec_dec_icdf(a1, &silk_rate_levels_iCDF[9 * (a3 >> 1)], 8);
  v9 = a5 >> 4;
  v32 = a5;
  if ((a5 & 0xF) != 0)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 1)
  {
    v34 = a2;
    v11 = 0;
    v12 = &silk_pulses_per_block_iCDF + 18 * v8;
    do
    {
      v35[v11] = 0;
      v13 = ec_dec_icdf(a1, v12, 8);
      if (v13 == 17)
      {
        v14 = 0;
        do
        {
          if (v14++ == 9)
          {
            v16 = &unk_1C382E233;
          }

          else
          {
            v16 = &silk_pulses_per_block_iCDF;
          }

          v13 = ec_dec_icdf(a1, v16 + 162, 8);
        }

        while (v13 == 17);
        v35[v11] = v14;
      }

      v36[v11++] = v13;
    }

    while (v11 != v10);
    v17 = 0;
    v18 = v36;
    v19 = v10;
    a2 = v34;
    do
    {
      v21 = *v18++;
      v20 = v21;
      v22 = (v34 + 4 * (v17 >> 12));
      if (v21 < 1)
      {
        v22[2] = 0u;
        v22[3] = 0u;
        *v22 = 0u;
        v22[1] = 0u;
      }

      else
      {
        silk_shell_decoder(v22, a1, v20);
      }

      v17 += 0x10000;
      --v19;
    }

    while (v19);
    for (i = 0; i != v10; ++i)
    {
      v24 = v35[i];
      if (v24 >= 1)
      {
        v25 = 0;
        v26 = a2 + 64 * i;
        do
        {
          v27 = *(v26 + 4 * v25);
          v28 = v24;
          do
          {
            v27 = ec_dec_icdf(a1, silk_lsb_iCDF, 8) + 2 * v27;
            --v28;
          }

          while (v28);
          *(v26 + 4 * v25++) = v27;
        }

        while (v25 != 16);
        v36[i] |= 32 * v24;
        a2 = v34;
      }
    }
  }

  result = silk_decode_signs(a1, a2, v32, a3, a4, v36);
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t silk_NLSF_stabilize(uint64_t result, __int16 *a2, int a3)
{
  v5 = result;
  v6 = 0;
  v7 = a3;
  v8 = (result + 2);
  v9 = result + 2 * a3;
  v10 = a3;
  while (1)
  {
    v11 = *a2;
    v12 = *v5 - v11;
    LODWORD(v13) = 0;
    v14 = a3 - 2;
    if (a3 >= 2)
    {
      v15 = v8;
      for (i = 1; i != a3; ++i)
      {
        result = *(v15 - 1);
        if (*v15 - result - a2[i] < v12)
        {
          LODWORD(v13) = i;
          v12 = *v15 - result - a2[i];
        }

        ++v15;
      }
    }

    v17 = a2[a3];
    v18 = 0x8000 - *(v9 - 2) - v17;
    if (v18 >= v12)
    {
      v13 = v13;
    }

    else
    {
      v13 = a3;
    }

    if (v18 < v12)
    {
      v12 = 0x8000 - *(v9 - 2) - v17;
    }

    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    if (v13)
    {
      if (v13 == a3)
      {
        *(v9 - 2) = 0x8000 - v17;
      }

      else
      {
        if (v13 < 1)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0;
          v20 = v13;
          v21 = a2;
          do
          {
            v22 = *v21++;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        v23 = v13;
        v24 = 0x8000;
        if (v13 < a3)
        {
          v25 = a3;
          do
          {
            v24 -= a2[v25--];
          }

          while (v25 > v13);
        }

        v26 = a2[v13] >> 1;
        v27 = v19 + v26;
        v28 = v24 - v26;
        v29 = &v5[v23];
        v30 = *v29 + *(v29 - 1);
        v31 = (v30 & 1) + (v30 >> 1);
        if (v27 <= v28)
        {
          result = v28;
        }

        else
        {
          result = v27;
        }

        if (v27 >= v28)
        {
          v27 = v28;
        }

        if (v31 > v27)
        {
          LOWORD(v27) = v31;
        }

        if (v31 > result)
        {
          LOWORD(v27) = result;
        }

        v32 = v27 - v26;
        *(v29 - 1) = v32;
        *v29 = v32 + a2[v23];
      }
    }

    else
    {
      *v5 = v11;
    }

    if (++v6 == 20)
    {
      result = silk_insertion_sort_increasing_all_values_int16(v5, a3);
      v33 = *v5;
      if (v33 <= *a2)
      {
        LOWORD(v33) = *a2;
      }

      *v5 = v33;
      if (a3 <= 1)
      {
        v42 = 0x8000 - a2[v7];
        if (*(v9 - 2) < v42)
        {
          LOWORD(v42) = *(v9 - 2);
        }

        *(v9 - 2) = v42;
      }

      else
      {
        v34 = v5 + 1;
        LOWORD(v35) = *v5;
        v36 = a2 + 1;
        v37 = v10 - 1;
        do
        {
          v38 = *v36++;
          v35 = v38 + v35;
          if (*v34 > v35)
          {
            LOWORD(v35) = *v34;
          }

          *v34++ = v35;
          --v37;
        }

        while (v37);
        v39 = *(v9 - 2);
        if (v39 >= 0x8000 - a2[v7])
        {
          LOWORD(v39) = 0x8000 - a2[v7];
        }

        *(v9 - 2) = v39;
        v40 = v14;
        LOWORD(v41) = v5[v40 + 1];
        do
        {
          v41 = v41 - a2[v40 + 1];
          if (v5[v40] < v41)
          {
            LOWORD(v41) = v5[v40];
          }

          v5[v40--] = v41;
        }

        while (v40 != -1);
      }

      return result;
    }
  }

  return result;
}

int *silk_resampler_private_AR2(int *result, int *a2, __int16 *a3, __int16 *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *a4;
    v6 = a4[1];
    v7 = a5;
    v8 = *result;
    do
    {
      v9 = *a3++;
      v10 = v8 + (v9 << 8);
      *a2++ = v10;
      v11 = (v10 >> 14);
      v12 = 4 * (v10 & 0x3FFF);
      v8 = result[1] + v11 * v5 + ((v12 * v5) >> 16);
      *result = v8;
      result[1] = v11 * v6 + ((v12 * v6) >> 16);
      --v7;
    }

    while (v7);
  }

  return result;
}

__n128 silk_resampler_private_IIR_FIR(uint64_t a1, _WORD *a2, __int16 *a3, int a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  LODWORD(v8) = *(a1 + 268);
  MEMORY[0x1EEE9AC00](a1);
  v10 = (v19 - v9);
  bzero(v19 - v9, v11 + 16);
  v12 = a1;
  *v10 = *(a1 + 24);
  v13 = *(a1 + 272);
  for (v19[0] = a1; ; LODWORD(v8) = *(v19[0] + 268))
  {
    if (a4 >= v8)
    {
      v8 = v8;
    }

    else
    {
      v8 = a4;
    }

    silk_resampler_private_up2_HQ(v12, (v10 + 1), a3, v8);
    if ((v8 << 17) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = *(v10 + 2 * (v14 >> 16));
        v16 = ((vaddvq_s32(vmlal_s16(vmull_s16(*v15.i8, silk_resampler_frac_FIR_12[((3 * v14) >> 14)]), vrev64_s16(*&vextq_s8(v15, v15, 8uLL)), silk_resampler_frac_FIR_12[11 - ((12 * v14) >> 16)])) >> 14) + 1) >> 1;
        if (v16 <= -32768)
        {
          v16 = -32768;
        }

        if (v16 >= 0x7FFF)
        {
          LOWORD(v16) = 0x7FFF;
        }

        *a2++ = v16;
        v14 += v13;
      }

      while (v14 < v8 << 17);
    }

    a4 -= v8;
    if (a4 < 1)
    {
      break;
    }

    a3 += v8;
    *v10 = *(v10 + 4 * v8);
    v12 = v19[0];
  }

  result = *(v10 + 4 * v8);
  *(v19[0] + 24) = result;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t silk_InitDecoder(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    result = silk_init_decoder((a1 + 4288 * v2));
    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  *(a1 + 8584) = 0;
  *(a1 + 8576) = 0;
  *(a1 + 8596) = 0;
  return result;
}

uint64_t silk_Decode(uint64_t inited, int *a2, int a3, int a4, uint64_t a5, __int16 *a6, int *a7)
{
  v117 = a7;
  v11 = inited;
  v123[1] = *MEMORY[0x1E69E9840];
  v120 = 0;
  v123[0] = 0;
  v12 = a2[1];
  if (a4 && v12 >= 1)
  {
    v13 = (v12 + 3) & 0xFFFFFFFC;
    v14 = xmmword_1C378AEF0;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = xmmword_1C378AF00;
    v17 = vdupq_n_s64(4uLL);
    v18 = inited;
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v15, v16));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        v18[600] = 0;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        v18[1672] = 0;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v15, *&v14))).i32[1])
      {
        v18[2744] = 0;
        v18[3816] = 0;
      }

      v14 = vaddq_s64(v14, v17);
      v16 = vaddq_s64(v16, v17);
      v18 += 4288;
      v13 -= 4;
    }

    while (v13);
  }

  if (v12 <= *(inited + 8592))
  {
    v20 = 0;
  }

  else
  {
    inited = silk_init_decoder((inited + 4288));
    v20 = inited;
    LODWORD(v12) = a2[1];
  }

  v115 = v12 == 1 && *(v11 + 8592) == 2 && a2[3] == 1000 * *(v11 + 2316);
  v21 = *(v11 + 2400);
  v119 = a3;
  v116 = a6;
  if (!v21 && v12 >= 1)
  {
    v22 = 0;
    v23 = v11;
    while (1)
    {
      v24 = a2[4];
      result = 4294967093;
      if (v24 <= 19)
      {
        if (v24)
        {
          v27 = v24 == 10;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          goto LABEL_196;
        }

        v26 = 2;
      }

      else
      {
        if (v24 == 60)
        {
          v26 = 4;
          v28 = 3;
          goto LABEL_35;
        }

        if (v24 == 40)
        {
          v26 = 4;
          v28 = 2;
          goto LABEL_35;
        }

        if (v24 != 20)
        {
          goto LABEL_196;
        }

        v26 = 4;
      }

      v28 = 1;
LABEL_35:
      *(v23 + 2404) = v28;
      *(v23 + 2324) = v26;
      v29 = a2[3] >> 10;
      if (v29 > 0xF || ((1 << v29) & 0x8880) == 0)
      {
        goto LABEL_49;
      }

      inited = silk_decoder_set_fs(v23, v29 + 1, a2[2]);
      v20 = (inited + v20);
      ++v22;
      v12 = a2[1];
      v23 += 4288;
      if (v22 >= v12)
      {
        a3 = v119;
        break;
      }
    }
  }

  v31 = *a2;
  if (*a2 != 2)
  {
    goto LABEL_48;
  }

  if (v12 != 2)
  {
    goto LABEL_47;
  }

  if (*(v11 + 8588) != 1 && *(v11 + 8592) != 1)
  {
    LODWORD(v12) = 2;
LABEL_47:
    v31 = 2;
    goto LABEL_48;
  }

  *(v11 + 8576) = 0;
  *(v11 + 8584) = 0;
  inited = memcpy((v11 + 6736), (v11 + 2448), 0x130uLL);
  v31 = *a2;
  LODWORD(v12) = a2[1];
LABEL_48:
  *(v11 + 8588) = v31;
  *(v11 + 8592) = v12;
  if ((a2[2] - 48001) < 0xFFFF63BF)
  {
LABEL_49:
    result = 4294967096;
    goto LABEL_196;
  }

  v114 = (v11 + 6600);
  v118 = v11;
  if (a3 == 1 || *(v11 + 2400))
  {
    goto LABEL_92;
  }

  if (v12 >= 1)
  {
    v32 = 0;
    v33 = v11 + 2416;
    do
    {
      v34 = v11 + 4288 * v32;
      if (*(v34 + 2404) >= 1)
      {
        v35 = 0;
        do
        {
          *(v33 + 4 * v35++) = ec_dec_bit_logp(a5, 1);
        }

        while (v35 < *(v34 + 2404));
      }

      inited = ec_dec_bit_logp(a5, 1);
      *(v34 + 2428) = inited;
      ++v32;
      v12 = a2[1];
      v33 += 4288;
    }

    while (v32 < v12);
    if (v12 >= 1)
    {
      v36 = 0;
      v37 = (v11 + 2444);
      v112 = xmmword_1C378AEF0;
      v111 = xmmword_1C378AF00;
      v113 = vdupq_n_s64(4uLL);
      do
      {
        v38 = v118 + 4288 * v36;
        *(v38 + 2440) = 0;
        *(v38 + 2432) = 0;
        if (*(v38 + 2428))
        {
          v39 = *(v38 + 2404);
          if (v39 == 1)
          {
            *(v38 + 2432) = 1;
          }

          else
          {
            inited = ec_dec_icdf(a5, *(&silk_LBRR_flags_iCDF_ptr + v39 - 2), 8);
            v40 = v113;
            v41 = *(v38 + 2404);
            if (v41 >= 1)
            {
              v42 = 0;
              v43 = inited + 1;
              v44 = (v41 + 3) & 0xFFFFFFFC;
              v45 = vdupq_n_s64(v41 - 1);
              v46 = v37;
              v47 = v111;
              v48 = v112;
              do
              {
                v49 = vmovn_s64(vcgeq_u64(v45, v47));
                if (vuzp1_s16(v49, *v45.i8).u8[0])
                {
                  *(v46 - 3) = (v43 >> v42) & 1;
                }

                if (vuzp1_s16(v49, *&v45).i8[2])
                {
                  *(v46 - 2) = (v43 >> (v42 + 1)) & 1;
                }

                if (vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, *&v48))).i32[1])
                {
                  *(v46 - 1) = (v43 >> (v42 + 2)) & 1;
                  *v46 = (v43 >> (v42 + 3)) & 1;
                }

                v42 += 4;
                v48 = vaddq_s64(v48, v40);
                v47 = vaddq_s64(v47, v40);
                v46 += 4;
              }

              while (v44 != v42);
            }
          }
        }

        ++v36;
        v12 = a2[1];
        v37 += 1072;
      }

      while (v36 < v12);
      v11 = v118;
    }
  }

  if (v119)
  {
    goto LABEL_92;
  }

  v50 = *(v11 + 2404);
  if (v50 < 1)
  {
    goto LABEL_92;
  }

  v51 = 0;
  v52 = v11 + 6720;
  v53 = 2428;
  do
  {
    if (v12 < 1)
    {
      goto LABEL_91;
    }

    v54 = 0;
    do
    {
      if (!*(v11 + v53 + 4))
      {
        goto LABEL_89;
      }

      if (v54 || v12 != 2 || (silk_stereo_decode_pred(a5, v123), *(v52 + 4 * v51)))
      {
        if (!v51)
        {
          goto LABEL_87;
        }
      }

      else
      {
        silk_stereo_decode_mid_only(a5, &v120 + 1);
        if (!v51)
        {
LABEL_87:
          v55 = 0;
          goto LABEL_88;
        }
      }

      if (!*(v11 + v53))
      {
        goto LABEL_87;
      }

      v55 = 2;
LABEL_88:
      silk_decode_indices(v11, a5, v51, 1, v55);
      inited = silk_decode_pulses(a5, &v121, *(v11 + 2789), *(v11 + 2790), *(v11 + 2328));
      LODWORD(v12) = a2[1];
LABEL_89:
      ++v54;
      v11 += 4288;
    }

    while (v54 < v12);
    v11 = v118;
    v50 = *(v118 + 2404);
LABEL_91:
    ++v51;
    v53 += 4;
  }

  while (v51 < v50);
LABEL_92:
  v56 = v119;
  if (v12 == 2)
  {
    if (v119)
    {
      if (v119 == 2 && *(v11 + 4 * *(v11 + 2400) + 2432) == 1)
      {
        inited = silk_stereo_decode_pred(a5, v123);
        if (!*(v11 + 4 * *(v11 + 2400) + 6720))
        {
          goto LABEL_97;
        }

LABEL_100:
        HIDWORD(v120) = 0;
      }

      else
      {
        v57 = *(v114 + 989);
        LODWORD(v123[0]) = *(v114 + 988);
        HIDWORD(v123[0]) = v57;
      }
    }

    else
    {
      inited = silk_stereo_decode_pred(a5, v123);
      if (*(v11 + 4 * *(v11 + 2400) + 6704))
      {
        goto LABEL_100;
      }

LABEL_97:
      inited = silk_stereo_decode_mid_only(a5, &v120 + 1);
    }
  }

  v58 = a2[1];
  v59 = HIDWORD(v120) == 0;
  if (v58 == 2 && HIDWORD(v120) == 0)
  {
    if (*(v11 + 8596) == 1)
    {
      bzero((v11 + 5636), 0x3C0uLL);
      *(v11 + 5604) = 0u;
      *(v11 + 5620) = 0u;
      *(v11 + 5572) = 0u;
      *(v11 + 5588) = 0u;
      *(v11 + 6596) = 100;
      *v114 = 10;
      *(v11 + 8476) = 0;
      *(v11 + 6664) = 1;
      v58 = a2[1];
    }

    else
    {
      v58 = 2;
    }
  }

  v121 = 0;
  v122 = 0;
  v61 = *(v11 + 2328);
  MEMORY[0x1EEE9AC00](inited);
  v63 = &v111 - v62;
  bzero(&v111 - v62, v64);
  v114 = v63;
  v121 = v63;
  v122 = &v63[2 * v61 + 4];
  if (!v56)
  {
    goto LABEL_115;
  }

  if (!*(v11 + 8596))
  {
    v59 = 1;
LABEL_115:
    if (v58 >= 1)
    {
      goto LABEL_116;
    }

    v72 = v116;
    goto LABEL_134;
  }

  v59 = 0;
  if (v56 != 2 || v58 != 2)
  {
    goto LABEL_115;
  }

  v59 = *(v11 + 4 * *(v11 + 6688) + 6720) == 1;
LABEL_116:
  v113.i64[0] = &v63[2 * v61 + 4];
  v66 = 0;
  v67 = v11 + 2432;
  v68 = -1;
  do
  {
    if (v66 == 0 || v59)
    {
      v69 = *(v118 + 2400);
      if (v68 + v69 + 1 < 1)
      {
        v70 = 0;
      }

      else if (v119 == 2)
      {
        v70 = 2 * (*(v67 + 4 * (v69 + v68)) != 0);
      }

      else if (v66 && *(v118 + 8596))
      {
        v70 = 1;
      }

      else
      {
        v70 = 2;
      }

      v65 = silk_decode_frame(v67 - 2432, a5, (&v121)[v66] + 4, &v120, v119, v70);
      v20 = (v65 + v20);
    }

    else
    {
      bzero((&v121)[v66] + 4, 2 * v120);
    }

    ++*(v67 - 32);
    ++v66;
    v71 = a2[1];
    --v68;
    v67 += 4288;
  }

  while (v66 < v71);
  v72 = v116;
  if (v71 == 2)
  {
    v11 = v118;
    v56 = v119;
    if (*a2 == 2)
    {
      v65 = silk_stereo_MS_to_LR((v118 + 8576), v114, v113.i64[0], v123, *(v118 + 2316), v120);
      v73 = v120;
      goto LABEL_135;
    }
  }

  else
  {
    v11 = v118;
    v56 = v119;
  }

LABEL_134:
  v74 = v114;
  *v114 = *(v11 + 8580);
  v73 = v120;
  *(v11 + 8580) = *&v74[2 * v120];
LABEL_135:
  *v117 = a2[2] * v73 / (1000 * *(v11 + 2316));
  v75 = *a2;
  MEMORY[0x1EEE9AC00](v65);
  if (v75 == 2)
  {
    v78 = (&v111 - v77);
  }

  else
  {
    v78 = v72;
  }

  bzero(&v111 - v77, v76);
  v79 = a2[1];
  if (v75 >= v79)
  {
    v80 = a2[1];
  }

  else
  {
    v80 = v75;
  }

  if (v80 >= 1)
  {
    v81 = 0;
    do
    {
      v82 = silk_resampler((v11 + 4288 * v81 + 2448), v78, (&v121)[v81] + 2, v120);
      v75 = *a2;
      if (*a2 == 2)
      {
        v83 = *v117;
        if (v83 >= 1)
        {
          v84 = v78;
          v85 = v72;
          do
          {
            v86 = *v84++;
            *v85 = v86;
            v85 += 2;
            --v83;
          }

          while (v83);
        }
      }

      v20 = (v82 + v20);
      ++v81;
      v79 = a2[1];
      if (v75 >= v79)
      {
        v87 = a2[1];
      }

      else
      {
        v87 = v75;
      }

      ++v72;
    }

    while (v81 < v87);
    v56 = v119;
    v72 = v116;
  }

  if (v75 != 2 || v79 != 1)
  {
    goto LABEL_162;
  }

  if (!v115)
  {
    v91 = *v117;
    if (v91 >= 1)
    {
      v92 = v72 + 1;
      do
      {
        *v92 = *(v92 - 1);
        v92 += 2;
        --v91;
      }

      while (v91);
    }

LABEL_162:
    result = v20;
    goto LABEL_163;
  }

  result = silk_resampler((v11 + 6736), v78, v114 + 2, v120) + v20;
  v88 = *v117;
  if (v88 >= 1)
  {
    v89 = v72 + 1;
    do
    {
      v90 = *v78++;
      *v89 = v90;
      v89 += 2;
      --v88;
    }

    while (v88);
  }

LABEL_163:
  if (*(v11 + 4188) == 2)
  {
    v93 = dword_1C382EC54[(*(v11 + 2316) - 8) >> 2] * *(v11 + 2308);
  }

  else
  {
    v93 = 0;
  }

  a2[5] = v93;
  if (v56 == 1)
  {
    v94 = *(v11 + 8592);
    if (v94 >= 1)
    {
      v95 = 0;
      v96 = vdupq_n_s64(v94 - 1);
      v97 = xmmword_1C37CA010;
      v98 = xmmword_1C37CA020;
      v99 = xmmword_1C37CA030;
      v100 = xmmword_1C37CA040;
      v101 = xmmword_1C37BDD80;
      v102 = xmmword_1C37BDD90;
      v103 = xmmword_1C378AEF0;
      v104 = xmmword_1C378AF00;
      v105 = vdupq_n_s64(0x10uLL);
      do
      {
        v106 = vmovn_s64(vcgeq_u64(v96, v104));
        if (vuzp1_s8(vuzp1_s16(v106, *v96.i8), *v96.i8).u8[0])
        {
          *(v11 + v95 + 2312) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(v106, *&v96), *&v96).i8[1])
        {
          *(v11 + 6600 + v95) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, *&v103))), *&v96).i8[2])
        {
          *(v11 + 10888 + v95) = 10;
          *(v11 + 15176 + v95) = 10;
        }

        v107 = vmovn_s64(vcgeq_u64(v96, v102));
        if (vuzp1_s8(*&v96, vuzp1_s16(v107, *&v96)).i32[1])
        {
          *(v11 + 19464 + v95) = 10;
        }

        if (vuzp1_s8(*&v96, vuzp1_s16(v107, *&v96)).i8[5])
        {
          *(v11 + 23752 + v95) = 10;
        }

        if (vuzp1_s8(*&v96, vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, *&v101)))).i8[6])
        {
          *(v11 + 28040 + v95) = 10;
          *(v11 + 32328 + v95) = 10;
        }

        v108 = vmovn_s64(vcgeq_u64(v96, v100));
        if (vuzp1_s8(vuzp1_s16(v108, *v96.i8), *v96.i8).u8[0])
        {
          *(v11 + 36616 + v95) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(v108, *&v96), *&v96).i8[1])
        {
          *(v11 + 40904 + v95) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, *&v99))), *&v96).i8[2])
        {
          *(v11 + 45192 + v95) = 10;
          *(v11 + 49480 + v95) = 10;
        }

        v109 = vmovn_s64(vcgeq_u64(v96, v98));
        if (vuzp1_s8(*&v96, vuzp1_s16(v109, *&v96)).i32[1])
        {
          *(v11 + 53768 + v95) = 10;
        }

        if (vuzp1_s8(*&v96, vuzp1_s16(v109, *&v96)).i8[5])
        {
          *(v11 + 58056 + v95) = 10;
        }

        if (vuzp1_s8(*&v96, vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, *&v97)))).i8[6])
        {
          *(v11 + 62344 + v95) = 10;
          *(v11 + 66632 + v95) = 10;
        }

        v102 = vaddq_s64(v102, v105);
        v103 = vaddq_s64(v103, v105);
        v104 = vaddq_s64(v104, v105);
        v101 = vaddq_s64(v101, v105);
        v100 = vaddq_s64(v100, v105);
        v99 = vaddq_s64(v99, v105);
        v98 = vaddq_s64(v98, v105);
        v95 += 68608;
        v97 = vaddq_s64(v97, v105);
      }

      while (68608 * ((v94 + 15) >> 4) != v95);
    }
  }

  else
  {
    *(v11 + 8596) = HIDWORD(v120);
  }

LABEL_196:
  v110 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t silk_LPC_inverse_pred_gain(__int16 *a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 < 1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = &v8[64 * (a2 & 1)];
  v4 = a2;
  do
  {
    v5 = *a1++;
    v2 += v5;
    *v3++ = v5 << 12;
    --v4;
  }

  while (v4);
  if (v2 <= 4095)
  {
LABEL_6:
    result = LPC_inverse_pred_gain_QA(v8, a2);
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t LPC_inverse_pred_gain_QA(uint64_t a1, int a2)
{
  v2 = (a1 + ((a2 & 1) << 6));
  v3 = 0x40000000;
  if (a2 >= 2)
  {
    v4 = a2;
    v5 = (a2 << 32) - 0x200000000;
    v6 = a2 - 1;
    v7 = 0x40000000;
    while (1)
    {
      v8 = v4 - 1;
      v9 = v2[v4 - 1];
      if ((v9 - 16773023) < 0xFE0020C3)
      {
        return 0;
      }

      v10 = (a1 + ((v6 & 1) << 6));
      v11 = -128 * v9;
      v12 = -((v9 << 7) * -128 * v9) >> 32;
      v13 = (0x40000000 - v12);
      v14 = (v13 * v7) >> 30;
      if (0x40000000 - v12 >= 0)
      {
        v15 = 0x40000000 - v12;
      }

      else
      {
        v15 = v12 - 0x40000000;
      }

      v16 = __clz(v15);
      v17 = v13 << (v16 - 1);
      v18 = 0x1FFFFFFF / (v17 >> 16);
      v19 = v18 * (v17 >> 16) + ((v18 * v17) >> 16);
      v7 = v14 & 0xFFFFFFFC;
      v20 = (v18 << 16) - 8 * v19 * (((v18 >> 15) + 1) >> 1) + ((-8 * v19) >> 16) * v18 + ((((-8 * v19) & 0xFFF8) * v18) >> 16);
      v21 = v6;
      v22 = v2;
      v23 = v5;
      do
      {
        v24 = *v22++;
        v25 = (v24 - ((((*(v2 + (v23 >> 30)) * v11) >> 30) + 1) >> 1)) * v20;
        v26 = ((v25 >> (31 - v16)) + 1) >> 1;
        v27 = (v25 & 1) + (v25 >> 1);
        if (v16 != 31)
        {
          LODWORD(v27) = v26;
        }

        *v10++ = v27;
        v23 -= 0x100000000;
        --v21;
      }

      while (v21);
      v5 -= 0x100000000;
      --v6;
      v2 = (a1 + ((v8 & 1) << 6));
      if (v4-- < 3)
      {
        v3 = v7;
        v2 = (a1 + ((v8 & 1) << 6));
        break;
      }
    }
  }

  v29 = *v2;
  if ((v29 - 16773023) < 0xFE0020C3)
  {
    return 0;
  }

  return (((0x40000000 - (-((v29 << 7) * -128 * v29) >> 32)) * v3) >> 30) & 0xFFFFFFFC;
}

__int16 *silk_bwexpander(__int16 *result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - 0x10000;
    v4 = (a2 - 1);
    v5 = result;
    do
    {
      *v5 = (((a3 * *v5) >> 15) + 1) >> 1;
      ++v5;
      a3 += (((a3 * v3) >> 15) + 1) >> 1;
      --v4;
    }

    while (v4);
  }

  result[a2 - 1] = (((a3 * result[a2 - 1]) >> 15) + 1) >> 1;
  return result;
}

uint64_t silk_decode_frame(uint64_t a1, uint64_t a2, char *a3, int *a4, int a5, int a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 2328);
  memset(&v21, 0, 128);
  v22 = 0;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21.i8[-4 * v13];
  bzero(v14, v15);
  v23 = 0;
  if (a5 == 2)
  {
    v16 = *(a1 + 2400);
    if (*(a1 + 4 * v16 + 2432) == 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    silk_PLC(a1, &v21, a3, 1);
    goto LABEL_7;
  }

  if (a5)
  {
    goto LABEL_6;
  }

  LODWORD(v16) = *(a1 + 2400);
LABEL_5:
  silk_decode_indices(a1, a2, v16, a5, a6);
  silk_decode_pulses(a2, v14, *(a1 + 2789), *(a1 + 2790), *(a1 + 2328));
  silk_decode_parameters(a1, &v21, a6);
  silk_decode_core(a1, &v21, a3, v14);
  silk_PLC(a1, &v21, a3, 0);
  *(a1 + 4184) = 0;
  *(a1 + 4188) = *(a1 + 2789);
  *(a1 + 2376) = 0;
LABEL_7:
  v17 = *(a1 + 2328);
  v18 = *(a1 + 2336) - v17;
  memmove((a1 + 1348), (a1 + 1348 + 2 * v17), 2 * v18);
  memcpy((a1 + 1348 + 2 * v18), a3, 2 * *(a1 + 2328));
  silk_PLC_glue_frames(a1, a3, v12);
  silk_CNG(a1, &v21, a3, v12);
  *(a1 + 2308) = v21.i32[*(a1 + 2324) - 1];
  *a4 = v12;
  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t silk_stereo_decode_pred(uint64_t a1, _DWORD *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = ec_dec_icdf(a1, silk_stereo_pred_joint_iCDF, 8);
  v13[2] = v4 / 5;
  v14[2] = v4 % 5;
  v13[0] = ec_dec_icdf(a1, silk_uniform3_iCDF, 8);
  v13[1] = ec_dec_icdf(a1, silk_uniform5_iCDF, 8);
  v5 = v13;
  v14[0] = ec_dec_icdf(a1, silk_uniform3_iCDF, 8);
  result = ec_dec_icdf(a1, silk_uniform5_iCDF, 8);
  v7 = 0;
  v14[1] = result;
  v8 = 1;
  do
  {
    v9 = *v5 + 3 * v5[2];
    v10 = (&silk_stereo_pred_quant_Q13 + 2 * v9);
    LODWORD(v10) = *v10 + ((429522944 * ((v10[1] - *v10) >> 16) + 6554 * (v10[1] - *v10)) >> 16) * ((2 * *(v5 + 2)) | 1);
    v11 = v8;
    *v5 = v9;
    a2[v7] = v10;
    v5 = v14;
    v7 = 1;
    v8 = 0;
  }

  while ((v11 & 1) != 0);
  *a2 -= a2[1];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t silk_stereo_decode_mid_only(uint64_t a1, _DWORD *a2)
{
  result = ec_dec_icdf(a1, silk_stereo_only_code_mid_iCDF, 8);
  *a2 = result;
  return result;
}

uint64_t silk_decode_signs(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v14[1] = 0;
  v6 = ((a3 + 8) >> 4);
  if (v6 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = &silk_sign_iCDF + 8 * (((a5 << 16) + (a4 << 17)) >> 16) - (((a5 << 16) + (a4 << 17)) >> 16);
    do
    {
      if (*(a6 + 4 * v10) >= 1)
      {
        v12 = 0;
        v13 = *(a6 + 4 * v10) & 0x1F;
        if (v13 >= 6)
        {
          v13 = 6;
        }

        v14[0] = v11[v13];
        do
        {
          if (*(a2 + v12) >= 1)
          {
            result = ec_dec_icdf(v9, v14, 8);
            *(a2 + v12) *= 2 * result - 1;
          }

          v12 += 4;
        }

        while (v12 != 64);
      }

      a2 += 64;
      ++v10;
    }

    while (v10 != v6);
  }

  return result;
}

uint64_t silk_log2lin(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 > 0xF7E)
  {
    return 0x7FFFFFFFLL;
  }

  v2 = 1 << (a1 >> 7);
  v3 = (a1 & 0x7F) + ((-174 * (a1 & 0x7F) * (128 - (a1 & 0x7F))) >> 16);
  v4 = v3 << (a1 >> 7) >> 7;
  if (a1 > 0x7FF)
  {
    v4 = v3 * (v2 >> 7);
  }

  return v4 + v2;
}

unsigned int *silk_resampler_private_up2_HQ(unsigned int *result, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = *result;
    v5 = result[1];
    v6 = (a2 + 2);
    v7 = result[2];
    v8 = result[3];
    a4 = a4;
    v10 = result[4];
    v9 = result[5];
    do
    {
      v11 = *a3++;
      v12 = 1746 * (((v11 << 10) - v4) >> 16) + ((1746 * ((v11 << 10) - v4)) >> 16);
      v13 = v12 + v4;
      v4 = v12 + (v11 << 10);
      v14 = 14986 * ((v13 - v5) >> 16) + ((14986 * (v13 - v5)) >> 16);
      v15 = v14 + v5;
      v5 = v14 + v13;
      v16 = v15 - v7;
      v17 = -26453 * (v16 >> 16) + ((-26453 * v16) >> 16) + v15;
      v7 = v17 + v16;
      v18 = ((v17 >> 9) + 1) >> 1;
      v19 = 6854 * (((v11 << 10) - v8) >> 16) + ((6854 * ((v11 << 10) - v8)) >> 16);
      v20 = v19 + v8;
      v8 = v19 + (v11 << 10);
      if (v18 <= -32768)
      {
        v18 = -32768;
      }

      v21 = 25769 * ((v20 - v10) >> 16) + ((25769 * (v20 - v10)) >> 16);
      v22 = v21 + v10;
      v10 = v21 + v20;
      v23 = v22 - v9;
      v24 = -9994 * (v23 >> 16) + ((-9994 * v23) >> 16) + v22;
      if (v18 >= 0x7FFF)
      {
        v25 = 0x7FFF;
      }

      else
      {
        v25 = v18;
      }

      v9 = v24 + v23;
      v26 = ((v24 >> 9) + 1) >> 1;
      *(v6 - 1) = v25;
      if (v26 <= -32768)
      {
        v26 = -32768;
      }

      if (v26 >= 0x7FFF)
      {
        LOWORD(v26) = 0x7FFF;
      }

      *v6 = v26;
      v6 += 2;
      --a4;
    }

    while (a4);
    *result = v4;
    result[1] = v5;
    result[2] = v7;
    result[3] = v8;
    result[4] = v10;
    result[5] = v9;
  }

  return result;
}

int *silk_bwexpander_32(int *result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v4 = a3 - 0x10000;
    v5 = (a2 - 1);
    v6 = result;
    do
    {
      *v6 = *v6 * (a3 >> 16) + ((*v6 * a3) >> 16) + (((*v6 >> 15) + 1) >> 1) * a3;
      ++v6;
      a3 += (((a3 * v4) >> 15) + 1) >> 1;
      --v5;
    }

    while (v5);
  }

  v3 = a2 - 1;
  result[v3] = result[v3] * (a3 >> 16) + ((result[v3] * a3) >> 16) + (((result[v3] >> 15) + 1) >> 1) * a3;
  return result;
}

void *silk_resampler_private_down_FIR(uint64_t a1, _WORD *a2, __int16 *a3, int a4)
{
  v82 = a4;
  v83 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 268);
  v8 = *(a1 + 276);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v81[-v9];
  bzero(&v81[-v9], v11);
  memcpy(v10, (a1 + 24), 4 * v8);
  v12 = *(a1 + 296);
  v13 = v12 + 4;
  v14 = *(a1 + 272);
  for (i = v12; ; i = *(a1 + 296))
  {
    if (v82 < v7)
    {
      v7 = v82;
    }

    silk_resampler_private_AR2(a1, &v10[4 * v8], a3, i, v7);
    v18 = v7 << 16;
    v19 = *(a1 + 276);
    if (v19 == 18)
    {
      if (v18 >= 1)
      {
        v62 = 0;
        v63 = *(a1 + 280);
        v64.i64[0] = 0xFFFF0000FFFFLL;
        v64.i64[1] = 0xFFFF0000FFFFLL;
        do
        {
          v65 = &v10[4 * (v62 >> 16)];
          v66 = v62 * v63;
          v67 = (v13 + 18 * (v66 >> 16));
          v68 = v13 + 18 * (v63 + ~(v66 >> 16));
          v69 = *(v65 + 56);
          v16.i64[0] = *(v65 + 6);
          v70.i16[0] = v67[1].i16[0];
          v70.i16[1] = *v68;
          v71 = vmovl_high_s16(*v67);
          v72 = vmovl_s16(*v67->i8);
          v70.i16[2] = *(v68 + 2);
          v17.i32[0] = *(v65 + 8);
          v70.i16[3] = *(v68 + 4);
          v73 = vrev64q_s32(vextq_s8(v69, v17, 4uLL));
          v74 = vextq_s8(v73, v73, 8uLL);
          v75 = vuzp1q_s32(v69, v16);
          v75.i32[1] = v16.i32[1];
          v16 = vmovl_s16(*(v68 + 6));
          v75.i32[3] = *(v65 + 11);
          v76 = vshrq_n_s32(v74, 0x10uLL);
          v77 = vmovl_s16(v70);
          v17 = vandq_s8(v74, v64);
          v78 = (((vaddvq_s32(vaddq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(*v65, v64), v72), 0x10uLL), vmulq_s32(v17, v77), 0x10uLL), vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(*(v65 + 1), v64), v71), 0x10uLL), vmulq_s32(vandq_s8(v75, v64), v16), 0x10uLL)), vaddq_s32(vmlaq_s32(vmulq_s32(v76, v77), vshrq_n_s32(*v65, 0x10uLL), v72), vmlaq_s32(vmulq_s32(vshrq_n_s32(v75, 0x10uLL), v16), vshrq_n_s32(*(v65 + 1), 0x10uLL), v71)))) + ((*(v65 + 10) * *(v68 + 14)) >> 16) + (*(v65 + 10) >> 16) * *(v68 + 14) + ((*(v65 + 9) * *(v68 + 16)) >> 16) + (*(v65 + 9) >> 16) * *(v68 + 16)) >> 5) + 1) >> 1;
          if (v78 <= -32768)
          {
            v78 = -32768;
          }

          if (v78 >= 0x7FFF)
          {
            LOWORD(v78) = 0x7FFF;
          }

          *a2++ = v78;
          v62 += v14;
        }

        while (v62 < v18);
      }
    }

    else if (v19 == 24)
    {
      v42.i64[0] = 0xFFFF0000FFFFLL;
      v42.i64[1] = 0xFFFF0000FFFFLL;
      if (v18 >= 1)
      {
        for (j = 0; j < v18; j += v14)
        {
          v44 = &v10[4 * (j >> 16)];
          v45 = vrev64q_s32(v44[5]);
          v46 = vrev64q_s32(v44[4]);
          v47 = vaddq_s32(vextq_s8(v46, v46, 8uLL), v44[1]);
          v48 = vaddq_s32(vextq_s8(v45, v45, 8uLL), *v44);
          v49 = *(v12 + 4);
          v50 = vmovl_s16(*v49.i8);
          v51 = vmovl_high_s16(v49);
          v52 = *(v12 + 20);
          v53 = ((v44[3].i32[3] + v44[2].i32[0]) >> 16) * v52;
          v54 = (v44[3].i16[6] + v44[2].i16[0]) * v52;
          v55 = (v44[3].i32[2] + v44[2].i32[1]) >> 16;
          v56 = *(v12 + 22);
          v57 = (v44[3].i16[4] + v44[2].i16[2]) * v56;
          v58 = *(v12 + 24);
          v59 = ((v44[3].i32[1] + v44[2].i32[2]) >> 16) * v58;
          v60 = (v44[3].i16[2] + v44[2].i16[4]) * v58;
          LODWORD(v44) = v44[3].i32[0] + v44[2].i32[3];
          v61 = (((vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(v48, v42), v50), 0x10uLL), vmulq_s32(vandq_s8(v47, v42), v51), 0x10uLL), vmlaq_s32(vmulq_s32(vshrq_n_s32(v47, 0x10uLL), v51), vshrq_n_s32(v48, 0x10uLL), v50))) + (v54 >> 16) + (v57 >> 16) + (v60 >> 16) + v53 + ((v44 * *(v12 + 26)) >> 16) + v59 + v55 * v56 + (v44 >> 16) * *(v12 + 26)) >> 5) + 1) >> 1;
          if (v61 <= -32768)
          {
            v61 = -32768;
          }

          if (v61 >= 0x7FFF)
          {
            LOWORD(v61) = 0x7FFF;
          }

          *a2++ = v61;
        }
      }
    }

    else
    {
      v20 = v19 != 36 || v18 < 1;
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      if (!v20)
      {
        v22 = 0;
        do
        {
          v23 = &v10[4 * (v22 >> 16)];
          v24 = vrev64q_s32(v23[8]);
          v25 = vrev64q_s32(v23[7]);
          v26 = vaddq_s32(vextq_s8(v25, v25, 8uLL), v23[1]);
          v27 = vaddq_s32(vextq_s8(v24, v24, 8uLL), *v23);
          v28 = *(v12 + 4);
          v29 = vmovl_s16(*v28.i8);
          v30 = vmovl_high_s16(v28);
          v31 = vrev64q_s32(v23[5]);
          v32 = vrev64q_s32(v23[6]);
          v33 = vaddq_s32(vextq_s8(v32, v32, 8uLL), v23[2]);
          v34 = vaddq_s32(vextq_s8(v31, v31, 8uLL), v23[3]);
          v35 = *(v12 + 20);
          v36 = vmovl_high_s16(v35);
          v37 = vmovl_s16(*v35.i8);
          v38 = *(v12 + 36);
          v39 = ((v23[4].i32[3] + v23[4].i32[0]) >> 16) * v38;
          v40 = (v23[4].i16[6] + v23[4].i16[0]) * v38;
          LODWORD(v23) = v23[4].i32[2] + v23[4].i32[1];
          v41 = (((vaddvq_s32(vaddq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(v27, v21), v29), 0x10uLL), vmulq_s32(vandq_s8(v26, v21), v30), 0x10uLL), vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(v33, v21), v37), 0x10uLL), vmulq_s32(vandq_s8(v34, v21), v36), 0x10uLL)), vaddq_s32(vmlaq_s32(vmulq_s32(vshrq_n_s32(v33, 0x10uLL), v37), vshrq_n_s32(v27, 0x10uLL), v29), vmlaq_s32(vmulq_s32(vshrq_n_s32(v34, 0x10uLL), v36), vshrq_n_s32(v26, 0x10uLL), v30)))) + (v40 >> 16) + v39 + ((v23 * *(v12 + 38)) >> 16) + (v23 >> 16) * *(v12 + 38)) >> 5) + 1) >> 1;
          if (v41 <= -32768)
          {
            v41 = -32768;
          }

          if (v41 >= 0x7FFF)
          {
            LOWORD(v41) = 0x7FFF;
          }

          *a2++ = v41;
          v22 += v14;
        }

        while (v22 < v18);
      }
    }

    v82 -= v7;
    if (v82 <= 1)
    {
      break;
    }

    a3 += v7;
    memcpy(v10, &v10[4 * v7], 4 * v19);
    v7 = *(a1 + 268);
    LODWORD(v8) = *(a1 + 276);
  }

  result = memcpy((a1 + 24), &v10[4 * v7], 4 * v19);
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

_WORD *silk_NLSF_VQ_weights_laroia(_WORD *result, __int16 *a2, int a3)
{
  v3 = *a2;
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *a2;
  }

  v5 = 0x20000 / v4;
  v6 = a2[1] - v3;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = 0x20000u / v6;
  v8 = 0x20000u / v6 + v5;
  if (v8 >= 0x7FFF)
  {
    LOWORD(v8) = 0x7FFF;
  }

  *result = v8;
  v9 = (a3 - 1);
  if (a3 <= 2)
  {
    v9 = v9;
  }

  else
  {
    v10 = a2 + 2;
    v11 = result + 2;
    v12 = 1;
    do
    {
      v13 = *v10 - *(v10 - 1);
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = 0x20000u / v13;
      v15 = v14 + v7;
      if (v15 >= 0x7FFF)
      {
        LOWORD(v15) = 0x7FFF;
      }

      *(v11 - 1) = v15;
      v12 += 2;
      v16 = v10[1] - *v10;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v7 = 0x20000u / v16;
      v17 = v7 + v14;
      if (v17 >= 0x7FFF)
      {
        LOWORD(v17) = 0x7FFF;
      }

      *v11 = v17;
      v11 += 2;
      v10 += 2;
    }

    while (v12 < v9);
  }

  v18 = 0x20000u / (0x8000 - a2[v9]) + v7;
  if (v18 >= 0x7FFF)
  {
    LOWORD(v18) = 0x7FFF;
  }

  result[v9] = v18;
  return result;
}

uint64_t silk_CNG_Reset(uint64_t result)
{
  v1 = *(result + 2340);
  if (v1 >= 1)
  {
    v2 = 0x7FFFu / (v1 + 1);
    v3 = (v1 + 7) & 0xFFFFFFF8;
    v4 = vdupq_n_s32(v2);
    v5 = vmovn_s32(v4);
    v6 = vmull_u16(v5, 0x7000600050004);
    v7 = vmull_u16(v5, 0x3000200010000);
    v8 = vdupq_n_s32(8 * v2);
    v9 = vdupq_n_s64(v1 - 1);
    v10 = xmmword_1C37BDD80;
    v11 = xmmword_1C37BDD90;
    v12 = xmmword_1C378AEF0;
    v13 = xmmword_1C378AF00;
    v14 = (result + 4090);
    v15 = vdupq_n_s64(8uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v9, v13));
      v17 = vaddq_s32(v7, v4);
      if (vuzp1_s8(vuzp1_s16(v16, *v4.i8), *v4.i8).u8[0])
      {
        *(v14 - 7) = v17.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v4), *&v4).i8[1])
      {
        *(v14 - 6) = v17.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v9, *&v12))), *&v4).i8[2])
      {
        *(v14 - 5) = v17.i16[4];
        *(v14 - 4) = v17.i16[6];
      }

      v18 = vaddq_s32(v6, v4);
      v19 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s8(*&v4, vuzp1_s16(v19, *&v4)).i32[1])
      {
        *(v14 - 3) = v18.i16[0];
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v19, *&v4)).i8[5])
      {
        *(v14 - 2) = v18.i16[2];
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v9, *&v10)))).i8[6])
      {
        *(v14 - 1) = v18.i16[4];
        *v14 = v18.i16[6];
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v10 = vaddq_s64(v10, v15);
      v7 = vaddq_s32(v7, v8);
      v14 += 8;
      v6 = vaddq_s32(v6, v8);
      v3 -= 8;
    }

    while (v3);
  }

  *(result + 4172) = 0x30788000000000;
  return result;
}

void silk_CNG(char *a1, uint64_t a2, __int16 *a3, int a4)
{
  v7 = a1;
  v93 = *MEMORY[0x1E69E9840];
  v8 = a1 + 2796;
  v9 = *(a1 + 579);
  if (v9 != *(a1 + 1045))
  {
    v10 = *(a1 + 585);
    if (v10 >= 1)
    {
      v11 = 0x7FFFu / (v10 + 1);
      v12 = (v10 + 7) & 0xFFFFFFF8;
      v13 = vdupq_n_s32(v11);
      v14 = vmovn_s32(v13);
      v15 = vmull_u16(v14, 0x7000600050004);
      v16 = vmull_u16(v14, 0x3000200010000);
      v17 = vdupq_n_s32(8 * v11);
      v18 = vdupq_n_s64(v10 - 1);
      v19 = xmmword_1C37BDD80;
      v20 = xmmword_1C37BDD90;
      v21 = xmmword_1C378AEF0;
      v22 = xmmword_1C378AF00;
      v23 = a1 + 4090;
      v24 = vdupq_n_s64(8uLL);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v18, v22));
        v26 = vaddq_s32(v16, v13);
        if (vuzp1_s8(vuzp1_s16(v25, *v13.i8), *v13.i8).u8[0])
        {
          *(v23 - 7) = v26.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v25, *&v13), *&v13).i8[1])
        {
          *(v23 - 6) = v26.i16[2];
        }

        if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v18, *&v21))), *&v13).i8[2])
        {
          *(v23 - 5) = v26.i16[4];
          *(v23 - 4) = v26.i16[6];
        }

        v27 = vaddq_s32(v15, v13);
        v28 = vmovn_s64(vcgeq_u64(v18, v20));
        if (vuzp1_s8(*&v13, vuzp1_s16(v28, *&v13)).i32[1])
        {
          *(v23 - 3) = v27.i16[0];
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(v28, *&v13)).i8[5])
        {
          *(v23 - 2) = v27.i16[2];
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v18, *&v19)))).i8[6])
        {
          *(v23 - 1) = v27.i16[4];
          *v23 = v27.i16[6];
        }

        v20 = vaddq_s64(v20, v24);
        v21 = vaddq_s64(v21, v24);
        v22 = vaddq_s64(v22, v24);
        v19 = vaddq_s64(v19, v24);
        v16 = vaddq_s32(v16, v17);
        v23 += 8;
        v15 = vaddq_s32(v15, v17);
        v12 -= 8;
      }

      while (v12);
    }

    *(a1 + 4172) = 0x30788000000000;
    *(a1 + 1045) = v9;
  }

  if (*(a1 + 1046))
  {
    goto LABEL_34;
  }

  if (!*(a1 + 1047))
  {
    v29 = *(a1 + 585);
    if (v29 >= 1)
    {
      v30 = (a1 + 2344);
      do
      {
        v30[866] += 16348 * ((*v30 - v30[866]) >> 16) + ((16348 * (*v30 - v30[866])) >> 16);
        ++v30;
        --v29;
      }

      while (v29);
    }

    v31 = *(a1 + 581);
    if (v31 < 1)
    {
      v34 = 0;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      do
      {
        if (*(a2 + 16 + 4 * v32) > v33)
        {
          v34 = v32;
          v33 = *(a2 + 16 + 4 * v32);
        }

        ++v32;
      }

      while (v31 != v32);
    }

    memmove(&v8[4 * *(a1 + 583)], v8, 4 * *(a1 + 583) * (v31 - 1));
    a1 = memcpy(v8, &v7[4 * *(v7 + 583) * v34 + 4], 4 * *(v7 + 583));
    v35 = *(v7 + 581);
    if (v35 >= 1)
    {
      v36 = (a2 + 16);
      v37 = *(v7 + 1043);
      do
      {
        v38 = *v36++;
        v37 += 4634 * ((v38 - v37) >> 16) + ((4634 * (v38 - v37)) >> 16);
        *(v7 + 1043) = v37;
        --v35;
      }

      while (v35);
    }
  }

  if (*(v7 + 1046))
  {
LABEL_34:
    MEMORY[0x1EEE9AC00](a1);
    v40 = &v88[-v39 - 8];
    bzero(&v88[-v39 - 8], v41 + 64);
    v42 = *(v7 + 1043);
    v43 = 255;
    do
    {
      v44 = v43;
      v43 >>= 1;
    }

    while (v44 > a4);
    v45 = *(v7 + 1044);
    if (a4)
    {
      v46 = (v40 + 64);
      v47 = (v42 >> 4);
      v48 = v42 >> 19;
      v49 = a4;
      v50 = (v48 + 1) >> 1;
      do
      {
        v45 = 196314165 * v45 + 907633515;
        v51 = *&v8[4 * (v44 & HIBYTE(v45))];
        v52 = v51 * v50 + (v51 >> 16) * v47 + ((v51 * v47) >> 16);
        if (v52 <= -32768)
        {
          v52 = -32768;
        }

        if (v52 >= 0x7FFF)
        {
          v52 = 0x7FFF;
        }

        *v46++ = v52;
        --v49;
      }

      while (v49);
    }

    *(v7 + 1044) = v45;
    silk_NLSF2A(v88, v7 + 2038, *(v7 + 585));
    v53 = *(v7 + 4124);
    *v40 = *(v7 + 4108);
    *(v40 + 1) = v53;
    v54 = *(v7 + 4156);
    *(v40 + 2) = *(v7 + 4140);
    *(v40 + 3) = v54;
    if (a4 >= 1)
    {
      v55 = *(v7 + 585);
      v56 = *v88;
      v57 = vmovl_s16(*&v88[2]);
      v58 = vmovl_high_s16(*&v88[2]);
      v59 = v89;
      v60 = vmovl_s16(v90);
      v61 = v91;
      v62 = v92;
      v63 = a4;
      v64 = *(v40 + 15);
      v65 = vmovl_high_s16(*v88);
      v66 = vmovl_s16(*v88);
      v67 = (v40 + 64);
      v68.i64[0] = 0xFFFF0000FFFFLL;
      v68.i64[1] = 0xFFFF0000FFFFLL;
      do
      {
        v69 = *(v67 - 5);
        v70 = *(v67 - 9);
        v71 = vrev64q_s32(vextq_s8(v70, v69, 4uLL));
        v72 = vandq_s8(v70, v68);
        v73 = vrev64q_s32(vextq_s8(v69, v69, 0xCuLL));
        v73.i32[0] = v64;
        v74 = vrev64q_s32(vandq_s8(v69, v68));
        v75 = vrev64q_s32(v72);
        v76 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v74, v74, 8uLL), v57), 0x10uLL), vmulq_s32(vextq_s8(v75, v75, 8uLL), v58), 0x10uLL), vmlaq_s32(vmulq_s32(vshrq_n_s32(vextq_s8(v71, v71, 8uLL), 0x10uLL), v65), vshrq_n_s32(v73, 0x10uLL), v66))) + ((v64 * v56) >> 16) + (*(v67 - 9) >> 16) * v58.i32[3] + ((*(v67 - 10) * v59) >> 16) + (v55 >> 1) + (*(v67 - 10) >> 16) * v59;
        if (v55 == 16)
        {
          v77 = *(v67 - 14);
          v78 = vrev64q_s32(vshrq_n_s32(v77, 0x10uLL));
          v79 = vrev64q_s32(vandq_s8(v77, v68));
          v76 += vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v78, v78, 8uLL), v60), vmulq_s32(vextq_s8(v79, v79, 8uLL), v60), 0x10uLL)) + ((*(v67 - 15) * v61) >> 16) + (*(v67 - 15) >> 16) * v61 + ((*(v67 - 16) * v62) >> 16) + (*(v67 - 16) >> 16) * v62;
        }

        v64 = *v67 + 16 * v76;
        *v67++ = v64;
        v80 = *a3 + (((v76 >> 5) + 1) >> 1);
        if (v80 <= -32768)
        {
          v80 = -32768;
        }

        if (v80 >= 0x7FFF)
        {
          LOWORD(v80) = 0x7FFF;
        }

        *a3++ = v80;
        --v63;
      }

      while (v63);
    }

    v81 = &v40[4 * a4];
    v82 = v81[1];
    *(v7 + 4108) = *v81;
    *(v7 + 4124) = v82;
    v83 = v81[3];
    *(v7 + 4140) = v81[2];
    *(v7 + 4156) = v83;
    v84 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v85 = *MEMORY[0x1E69E9840];
    v86 = 4 * *(v7 + 585);

    bzero(v7 + 4108, v86);
  }
}

unint64_t silk_NLSF2A(__int16 *a1, __int16 *a2, int a3)
{
  *(&v69[7] + 4) = *MEMORY[0x1E69E9840];
  v6 = &silk_NLSF2A_ordering16;
  if (a3 != 16)
  {
    v6 = &silk_NLSF2A_ordering10;
  }

  v7 = a3;
  v8 = a3 - 1;
  if (a3 >= 1)
  {
    v9 = a3;
    do
    {
      v10 = *a2++;
      v11 = ((((silk_LSFCosTab_FIX_Q12[(v10 >> 8) + 1] - silk_LSFCosTab_FIX_Q12[v10 >> 8]) * v10 + (silk_LSFCosTab_FIX_Q12[v10 >> 8] << 8)) >> 3) + 1) >> 1;
      v12 = *v6++;
      *(&v68 + v12) = v11;
      --v9;
    }

    while (v9);
    v3 = v68;
  }

  v13 = (a3 >> 1);
  v66 = 0x10000;
  v67[0] = -v3;
  if (v13 <= 1)
  {
    v64 = 0x10000;
    v65[0] = -LODWORD(v69[0]);
  }

  else
  {
    v14 = v67;
    v15 = 1;
    v16 = 2;
    do
    {
      v17 = *(&v68 + 2 * v15);
      v18 = v15 + 1;
      v67[v15] = 2 * v67[v15 - 2] - ((((v67[v15 - 1] * v17) >> 15) + 1) >> 1);
      if (v15 >= 2)
      {
        v19 = v14;
        v20 = v16;
        v21 = v14;
        do
        {
          v22 = *--v21;
          *v19 = *v19 + *(v19 - 2) - ((((v22 * v17) >> 15) + 1) >> 1);
          --v20;
          v19 = v21;
        }

        while (v20 > 2);
      }

      v67[0] -= v17;
      ++v16;
      ++v14;
      v15 = v18;
    }

    while (v18 != v13);
    v23 = v65;
    v64 = 0x10000;
    v65[0] = -LODWORD(v69[0]);
    v24 = 1;
    v25 = 2;
    do
    {
      v26 = v69[v24];
      v27 = v24 + 1;
      v65[v24] = 2 * v65[v24 - 2] - ((((v65[v24 - 1] * v26) >> 15) + 1) >> 1);
      if (v24 >= 2)
      {
        v28 = v23;
        v29 = v25;
        v30 = v23;
        do
        {
          v31 = *--v30;
          *v28 = *v28 + *(v28 - 2) - ((((v31 * v26) >> 15) + 1) >> 1);
          --v29;
          v28 = v30;
        }

        while (v29 > 2);
      }

      v65[0] -= v26;
      ++v25;
      ++v23;
      v24 = v27;
    }

    while (v27 != v13);
  }

  if (v13 >= 1)
  {
    v32 = v66;
    v33 = v64;
    v34 = v65;
    v35 = v67;
    v36 = v63;
    do
    {
      v38 = *v35++;
      v37 = v38;
      v39 = v32 + v38;
      v40 = *v34++;
      v41 = v40 - v33;
      *v36++ = -(v39 + v41);
      v63[v8--] = v41 - v39;
      v33 = v40;
      v32 = v37;
      --v13;
    }

    while (v13);
  }

  v42 = 0;
  v43 = 0;
  while (a3 >= 1)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = v63[v44];
      if (v46 < 0)
      {
        v46 = -v46;
      }

      if (v46 > v45)
      {
        v45 = v46;
        v42 = v44;
      }

      ++v44;
    }

    while (v7 != v44);
    if (v45 < 0xFFFF0)
    {
      v52 = v63;
      v53 = v7;
      v54 = a1;
      do
      {
        v55 = *v52++;
        *v54++ = ((v55 >> 4) + 1) >> 1;
        --v53;
      }

      while (v53);
      break;
    }

    v47 = ((v45 >> 4) + 1) >> 1;
    if (v47 >= 0x27FFE)
    {
      v47 = 163838;
    }

    silk_bwexpander_32(v63, v7, 65470 - ((v47 << 14) - 536854528) / ((v47 + v47 * v42) >> 2));
    if (++v43 == 10)
    {
      v48 = v63;
      v49 = v7;
      v50 = a1;
      do
      {
        v51 = ((*v48 >> 4) + 1) >> 1;
        if (v51 <= -32768)
        {
          v51 = -32768;
        }

        if (v51 >= 0x7FFF)
        {
          v51 = 0x7FFF;
        }

        *v50++ = v51;
        *v48++ = 32 * v51;
        --v49;
      }

      while (v49);
      break;
    }
  }

  for (i = 0; i != 16; ++i)
  {
    result = silk_LPC_inverse_pred_gain(a1, a3);
    if (result > 107373)
    {
      break;
    }

    result = silk_bwexpander_32(v63, a3, (-2 << i) + 0x10000);
    if (a3 >= 1)
    {
      v58 = v63;
      v59 = v7;
      v60 = a1;
      do
      {
        v61 = *v58++;
        *v60++ = ((v61 >> 4) + 1) >> 1;
        --v59;
      }

      while (v59);
    }
  }

  v62 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int16 *silk_stereo_MS_to_LR(unsigned __int16 *result, _DWORD *a2, _DWORD *a3, int *a4, int a5, int a6)
{
  *a2 = *(result + 1);
  *a3 = *(result + 2);
  v6 = 2 * a6;
  *(result + 1) = *(a2 + v6);
  *(result + 2) = *(a3 + v6);
  v7 = 8 * a5;
  v8 = *a4;
  v9 = a4[1];
  if (a5 >= 1)
  {
    v10 = *result;
    v11 = result[1];
    v12 = (0x10000 / v7);
    v13 = (((v12 * (v8 - v10)) >> 15) + 1) >> 1;
    v14 = (((v12 * (v9 - v11)) >> 15) + 1) >> 1;
    v15 = (a2 + 1);
    v16 = a3 + 1;
    v17 = (v14 + v11) << 16;
    v18 = v14 << 16;
    v19 = (v13 + v10) << 16;
    v20 = v13 << 16;
    v21 = (8 * a5);
    do
    {
      v22 = *(v15 - 1);
      v23 = (v22 << 10) + ((*v15 + *(v15 - 2)) << 9);
      v24 = ((((v22 >> 5) * (v17 >> 16) + (*v16 << 8) + ((((v22 & 0x1F) << 11) * (v17 >> 16)) >> 16) + (v23 >> 16) * (v19 >> 16) + (((v23 & 0xFE00) * (v19 >> 16)) >> 16)) >> 7) + 1) >> 1;
      if (v24 <= -32768)
      {
        v24 = -32768;
      }

      if (v24 >= 0x7FFF)
      {
        LOWORD(v24) = 0x7FFF;
      }

      *v16++ = v24;
      ++v15;
      v17 += v18;
      v19 += v20;
      --v21;
    }

    while (v21);
  }

  if (v7 < a6)
  {
    v25 = 2 * v7 + 2;
    v26 = (a3 + v25);
    v27 = (a2 + v25);
    v28 = a6 - v7;
    v29 = (a2 + v25);
    do
    {
      v30 = v29[1];
      ++v29;
      v31 = v30 + *(v27 - 1);
      v32 = *v27;
      v33 = ((((v32 >> 5) * v9 + (*v26 << 8) + ((((v32 & 0x1F) << 11) * v9) >> 16) + (((v32 << 10) + (v31 << 9)) >> 16) * v8 + (((((v32 << 10) + (v31 << 9)) & 0xFE00) * v8) >> 16)) >> 7) + 1) >> 1;
      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      if (v33 >= 0x7FFF)
      {
        LOWORD(v33) = 0x7FFF;
      }

      *v26++ = v33;
      v27 = v29;
      --v28;
    }

    while (v28);
  }

  *result = v8;
  result[1] = v9;
  if (a6 >= 1)
  {
    v34 = a3 + 1;
    v35 = a2 + 1;
    v36 = a6;
    do
    {
      v37 = *v35;
      v38 = *v34;
      v39 = v37 + v38;
      if (v37 + v38 >= 0x7FFF)
      {
        v39 = 0x7FFF;
      }

      if (v39 <= -32768)
      {
        LOWORD(v39) = 0x8000;
      }

      *v35++ = v39;
      v40 = v37 - v38;
      if (v40 >= 0x7FFF)
      {
        v40 = 0x7FFF;
      }

      if (v40 <= -32768)
      {
        LOWORD(v40) = 0x8000;
      }

      *v34++ = v40;
      --v36;
    }

    while (v36);
  }

  return result;
}

uint64_t silk_decode_pitch(uint64_t result, int a2, int *a3, int a4, int a5)
{
  v5 = 3;
  if (a5 == 4)
  {
    v5 = 11;
  }

  v6 = &silk_CB_lags_stage2_10_ms;
  if (a5 == 4)
  {
    v6 = &silk_CB_lags_stage2;
  }

  v7 = 12;
  if (a5 == 4)
  {
    v7 = 34;
    v8 = &silk_CB_lags_stage3;
  }

  else
  {
    v8 = &silk_CB_lags_stage3_10_ms;
  }

  if (a4 == 8)
  {
    v8 = v6;
  }

  else
  {
    v5 = v7;
  }

  if (a5 >= 1)
  {
    v9 = 2 * a4;
    v10 = 18 * a4;
    v12 = a5;
    v13 = &v8[a2];
    if (v9 <= v10)
    {
      v14 = 18 * a4;
    }

    else
    {
      v14 = 2 * a4;
    }

    if (v9 >= v10)
    {
      v9 = 18 * a4;
    }

    do
    {
      v11 = result + 2 * a4;
      v15 = v11 + *v13;
      if (v15 <= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = v11 + *v13;
      }

      if (v15 <= v14)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      *a3++ = v17;
      v13 += v5;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t silk_decoder_set_fs(uint64_t a1, int a2, unsigned int a3)
{
  v6 = a2;
  *(a1 + 2332) = 5 * a2;
  v7 = *(a1 + 2324) * (5 * a2);
  if (*(a1 + 2316) == a2 && *(a1 + 2320) == a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = silk_resampler_init(a1 + 2448, 1000 * a2, a3, 0);
    v9 = 0;
    *(a1 + 2320) = a3;
    if (*(a1 + 2316) != a2)
    {
      goto LABEL_7;
    }
  }

  if (v7 != *(a1 + 2328))
  {
    v9 = 1;
LABEL_7:
    v10 = *(a1 + 2324);
    v11 = v10 == 4;
    if (v10 == 4)
    {
      v12 = &silk_pitch_contour_NB_iCDF;
    }

    else
    {
      v12 = &silk_pitch_contour_10_ms_NB_iCDF;
    }

    v13 = &silk_pitch_contour_10_ms_iCDF;
    if (v11)
    {
      v13 = &silk_pitch_contour_iCDF;
    }

    if (a2 != 8)
    {
      v12 = v13;
    }

    *(a1 + 2392) = v12;
    if (v9)
    {
      goto LABEL_26;
    }

    *(a1 + 2336) = 20 * v6;
    if ((a2 | 4) == 0xC)
    {
      v14 = &silk_NLSF_CB_NB_MB;
      v15 = 10;
    }

    else
    {
      v14 = &silk_NLSF_CB_WB;
      v15 = 16;
    }

    *(a1 + 2340) = v15;
    *(a1 + 2752) = v14;
    switch(a2)
    {
      case 16:
        v16 = silk_uniform8_iCDF;
        break;
      case 12:
        v16 = &silk_uniform6_iCDF;
        break;
      case 8:
        v16 = silk_uniform4_iCDF;
        break;
      default:
LABEL_25:
        *(a1 + 2376) = 1;
        *(a1 + 2308) = 100;
        *(a1 + 2312) = 10;
        *(a1 + 4188) = 0;
        bzero((a1 + 1348), 0x3C0uLL);
        *(a1 + 1316) = 0u;
        *(a1 + 1332) = 0u;
        *(a1 + 1284) = 0u;
        *(a1 + 1300) = 0u;
LABEL_26:
        *(a1 + 2316) = a2;
        *(a1 + 2328) = v7;
        return v8;
    }

    *(a1 + 2384) = v16;
    goto LABEL_25;
  }

  return v8;
}

uint64_t silk_init_decoder(_DWORD *a1)
{
  bzero(a1, 0x10C0uLL);
  a1[594] = 1;
  *a1 = 0x10000;
  silk_CNG_Reset(a1);
  silk_PLC_Reset(a1);
  return 0;
}

unsigned int *silk_sum_sqr_shift(unsigned int *result, int *a2, uint64_t a3, int a4)
{
  v4 = a4 - 1;
  if (a4 < 2)
  {
    v5 = 0;
    v8 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = (a3 + 2);
    while (1)
    {
      v6 += *(v7 - 1) * *(v7 - 1) + *v7 * *v7;
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      v7 += 2;
      v5 += 2;
      if (v4 <= v5)
      {
        v8 = 0;
        goto LABEL_8;
      }
    }

    v6 >>= 2;
    v8 = 2;
  }

LABEL_8:
  if (v5 < v4)
  {
    v9 = (a3 + 2 * v5 + 2);
    do
    {
      v6 += (*(v9 - 1) * *(v9 - 1) + *v9 * *v9) >> v8;
      if ((v6 & 0x80000000) != 0)
      {
        v8 += 2;
        v6 >>= 2;
      }

      v9 += 2;
      v5 += 2;
    }

    while (v4 > v5);
  }

  if (v5 == v4)
  {
    v10 = *(a3 + 2 * v4);
    v6 += (v10 * v10) >> v8;
  }

  v11 = v6 >> 2;
  v12 = v8 + 2;
  if (!(v6 >> 30))
  {
    v12 = v8;
    v11 = v6;
  }

  *a2 = v12;
  *result = v11;
  return result;
}

uint64_t BET3FLT__InitTreeSet(uint64_t a1, _OWORD *a2)
{
  a2[11] = 0u;
  a2[12] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return 0;
}

double BET3FLT__DeInitTreeSet(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    for (i = 104; i != 184; i += 8)
    {
      v5 = *(a2 + i);
      if (v5)
      {
        heap_Free(*(a1 + 8), v5);
      }
    }

    result = 0.0;
    a2[11] = 0u;
    a2[12] = 0u;
    a2[9] = 0u;
    a2[10] = 0u;
    a2[7] = 0u;
    a2[8] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t BET3FLT__LoadTreesFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v35 = 0;
  v10 = *a4;
  if (a4[4] - v10 >= 8 && *(*(a4 + 1) + v10) == 48)
  {
    *a4 = v10 + 2;
    v13 = a2 + 2 * a3;
    v14 = a3;
    if (BET3FLT__xfread_BET3((v13 + 184), 2u, 1, a4) == 1 && BET3FLT__xfread_BET3(&v35, 2u, 1, a4) == 1 && BET3FLT__xfread_BET3((a2 + 2 * v14), 2u, 1, a4) == 1)
    {
      v15 = BET3FLT__xfread2ptr_BET3((a2 + 8 * v14 + 24), 1u, v35, a4);
      if (v15 == v35)
      {
        if (*a4)
        {
          ++*a4;
        }

        v16 = heap_Calloc(*(v9 + 8), 16, *(v13 + 184));
        v22 = a2 + 104;
        *(a2 + 104 + 8 * v14) = v16;
        if (!v16)
        {
          v33 = *(a5 + 8 * v14 + 144);
          BET3FLT__log_select_Error(v9, 55000, "LoadTreesFile : out of memory for type %s\n", v17, v18, v19, v20, v21);
          return 2229280778;
        }

        if (!*(v13 + 184))
        {
          return 0;
        }

        v23 = 0;
        v24 = 0;
        while (BET3FLT__xfread_BET3((v16 + v23), 2u, 1, a4) == 1)
        {
          if (BET3FLT__xfread_BET3((*(v22 + 8 * v14) + v23 + 2), 2u, 1, a4) != 1)
          {
            break;
          }

          v25 = BET3FLT__xfread2ptr_BET3((*(v22 + 8 * v14) + v23 + 8), 2u, 3 * *(*(v22 + 8 * v14) + v23 + 2), a4);
          v16 = *(v22 + 8 * v14);
          if (v25 != 3 * *(v16 + v23 + 2))
          {
            break;
          }

          v26 = 0;
          ++v24;
          v23 += 16;
          if (v24 >= *(v13 + 184))
          {
            return v26;
          }
        }

        v26 = 2229280772;
        v34 = *(a5 + 8 * v14 + 144);
        v27 = "LoadTreesFile : corrupt tree nodes for type %s, state %u\n";
        a1 = v9;
        v28 = 55015;
      }

      else
      {
        v26 = 2229280772;
        v32 = *(a5 + 8 * v14 + 144);
        v27 = "LoadTreesFile : corrupt tree questions for type %s\n";
        a1 = v9;
        v28 = 55013;
      }
    }

    else
    {
      v26 = 2229280772;
      v31 = *(a5 + 8 * v14 + 144);
      v27 = "LoadTreesFile : corrupt tree header for type %s\n";
      a1 = v9;
      v28 = 55012;
    }
  }

  else
  {
    v26 = 2229280772;
    v30 = *(a5 + 8 * a3 + 144);
    v27 = "LoadTreesFile : invalid tree data version for type %s\n";
    v28 = 55011;
  }

  BET3FLT__log_select_Error(a1, v28, v27, a4, a5, a6, a7, a8);
  return v26;
}

uint64_t BET3FLT__TreeSearch(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  LOWORD(v5) = 0;
  v6 = a3 + 8 * a4;
  v7 = *(v6 + 24);
  v8 = *(*(v6 + 104) + 16 * a5 + 8);
  v9 = a2 + 2;
  v10 = a2 + 1;
  do
  {
    v11 = (v8 + 6 * -v5);
    v12 = (v7 + *v11);
    v13 = *v12;
    v14 = v12[1];
    v5 = v11[1];
    if (v13 <= 0xFC)
    {
      if (v13 == 3)
      {
        v16 = *(*(a1 + 1784) + 2 * a2);
        v17 = v16 > 0x19;
        v15 = 10 * v16;
        if (v17)
        {
          v15 = -1;
        }

        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      if (v13 != 252)
      {
        v18 = *(a1 + 16 + 8 * *v12);
        if (!v18)
        {
          continue;
        }

        v15 = *(v18 + a2);
        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      if (a2 < 2)
      {
LABEL_19:
        v15 = -1;
        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      v15 = *(*(a1 + 32) + a2 - 2);
      if (!v12[1])
      {
        continue;
      }
    }

    else if (v13 == 253)
    {
      if (a2 < 1)
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + a2 - 1);
      if (!v12[1])
      {
        continue;
      }
    }

    else if (v13 == 254)
    {
      if (v10 >= *(a1 + 10))
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + v10);
      if (!v12[1])
      {
        continue;
      }
    }

    else
    {
      if (v9 >= *(a1 + 10))
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + v9);
      if (!v12[1])
      {
        continue;
      }
    }

LABEL_27:
    v19 = v12 + 2;
    if (v14 == 255)
    {
      if (*v19 <= v15 && v12[3] >= v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = v14 - 1;
      if (v14 != 1)
      {
        v21 = 0;
        while (1)
        {
          v22 = (v20 + v21) / 2;
          v23 = v19[v22];
          if (v23 == v15)
          {
            break;
          }

          if (v15 < v23)
          {
            v20 = v22 - 1;
          }

          else
          {
            v21 = v22 + 1;
          }

          if (v21 > v20)
          {
            goto LABEL_40;
          }
        }

LABEL_33:
        v5 = v11[2];
        continue;
      }

      if (*v19 == v15)
      {
        goto LABEL_33;
      }
    }

LABEL_40:
    ;
  }

  while ((v5 & 0x8000) != 0);
  return v5;
}

uint64_t BET3FLT__select_bet3_FeatureExtractObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = 0;
  *a5 = 0;
  inited = InitRsrcFunction(a1, a2, &v16);
  if ((inited & 0x80000000) == 0)
  {
    v9 = heap_Calloc(*(v16 + 8), 1, 24);
    if (v9)
    {
      *v9 = v16;
      v9[1] = a3;
      v9[2] = a4;
      *a5 = v9;
    }

    else
    {
      log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0, v10, v11, v12, v13, v15);
      return 2229280778;
    }
  }

  return inited;
}

uint64_t BET3FLT__select_bet3_FeatureExtractObjClose(uint64_t a1)
{
  if (a1)
  {
    heap_Free(*(*a1 + 8), a1);
  }

  return 0;
}

uint64_t BET3FLT__select_bet3_FeatureExtractProcessStart(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  __s1 = 0;
  bzero(a5, 0xE48uLL);
  *a5 = a2;
  if ((paramc_ParamGetStr(*(*a1 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && !strcmp(__s1, "bet3"))
  {
    (*(a1[2] + 272))(a3, a4, 128, 3, 0, 0);
  }

  return usextract_ProcessStart(*a1, "SELECT_BET3", a1[2], a3, a4, a5, a6);
}

uint64_t BET3FLT__select_bet3_FeatureExtractProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, uint64_t a10, uint64_t *a11, _DWORD *a12)
{
  v15 = a1;
  v111 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  if (a11)
  {
    v17 = a12 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v106 = v18;
  if (!v17)
  {
    *a11 = 0;
    *a12 = 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = *(a10 + 10);
  do
  {
    if (*(*a10 + 2748 + v19) == 1)
    {
      ++v20;
    }

    ++v19;
  }

  while (v19 != 218);
  v22 = heap_Calloc(*(v16 + 8), (v20 * v21), 1);
  if (!v22)
  {
    v45 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0, v23, v24, v25, v26, v99);
    if (a12)
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  v27 = v22;
  v103 = a2;
  v107 = v15;
  v28 = 0;
  v104 = a10 + 16;
  do
  {
    v29 = *a10;
    v30 = *(*a10 + v28 + 2748);
    if (!*(*a10 + v28 + 2748))
    {
      goto LABEL_20;
    }

    if (v30 == 2)
    {
      v31 = heap_Calloc(*(v16 + 8), v21, 2);
      *(a10 + 8 * v28 + 1760) = v31;
      if (!v31)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (v30 == 1)
      {
        *(a10 + 8 * v28 + 16) = v27;
        v27 += v21;
        goto LABEL_20;
      }

      if (v28 <= 0x33u)
      {
        switch(v28)
        {
          case 0x18u:
            v38 = heap_Calloc(*(v16 + 8), v21, 8);
            *(a10 + 3552) = v38;
            if (!v38)
            {
              goto LABEL_130;
            }

            break;
          case 0x2Eu:
            v43 = heap_Calloc(*(v16 + 8), v21, 9);
            *(a10 + 3560) = v43;
            if (!v43)
            {
              goto LABEL_130;
            }

            break;
          case 0x33u:
            v34 = *(v29 + 2966);
            if (v34)
            {
              v35 = heap_Calloc(*(v16 + 8), (v34 * v21), 4);
              *(a10 + 3568) = v35;
              if (!v35)
              {
                goto LABEL_130;
              }
            }

            break;
          default:
            goto LABEL_42;
        }
      }

      else if (v28 > 0x35u)
      {
        if (v28 == 54)
        {
          v41 = *(v29 + 3360);
          if (v41)
          {
            v42 = heap_Calloc(*(v16 + 8), (v41 * v21), 4);
            *(a10 + 3592) = v42;
            if (!v42)
            {
              goto LABEL_130;
            }
          }
        }

        else
        {
          if (v28 != 56)
          {
LABEL_42:
            log_OutPublic(*(*v15 + 32), "SELECT_BET3", 55007, "%s%u", v23, v24, v25, v26, "feature");
            goto LABEL_20;
          }

          v36 = *(v29 + 2966);
          if (v36)
          {
            v37 = heap_Calloc(*(v16 + 8), (v36 * v21), 1);
            *(a10 + 3600) = v37;
            if (!v37)
            {
              goto LABEL_130;
            }
          }
        }
      }

      else if (v28 == 52)
      {
        v39 = *(v29 + 2966);
        if (v39)
        {
          v40 = heap_Calloc(*(v16 + 8), (v39 * v21), 4);
          *(a10 + 3576) = v40;
          if (!v40)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        if (v28 != 53)
        {
          goto LABEL_42;
        }

        v32 = *(v29 + 3360);
        if (v32)
        {
          v33 = heap_Calloc(*(v16 + 8), (v32 * v21), 4);
          *(a10 + 3584) = v33;
          if (!v33)
          {
            goto LABEL_130;
          }
        }
      }
    }

LABEL_20:
    ++v28;
  }

  while (v28 != 218);
  v44 = *(*a10 + 3578);
  if (v44 >= 4)
  {
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, "Invalid number of states per phoneme", v23, v24, v25, v26, "%s%u");
    v45 = -2065686513;
    goto LABEL_131;
  }

  v46 = heap_Calloc(*(v16 + 8), v44 * v21, 4);
  *(a10 + 3608) = v46;
  if (!v46)
  {
    goto LABEL_130;
  }

  if (*(*a10 + 3578) * v21)
  {
    memset(v46, 255, 4 * *(*a10 + 3578) * v21);
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(*v15, "SELECT_BET3", a10, v21);
  if (GenericFeatureLayers < 0)
  {
    v45 = GenericFeatureLayers;
    if (a12)
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  v45 = usextract_Process(*v15, "SELECT_BET3", v15[2], a3, a4, a10, v48, v49);
  if (v45 < 0)
  {
    goto LABEL_132;
  }

  v101 = a3;
  v102 = a4;
  if (*(a10 + 3504))
  {
    v50 = *a10;
    v51 = **(*a10 + 3336);
    if (v51)
    {
      v52 = 0;
      v53 = 1;
      do
      {
        if (!strncmp(v51, "INNO_", 5uLL))
        {
          v55 = atoi(v51 + 5) + 79;
          if (v55 <= 0x5E)
          {
            *(v104 + 8 * v55) = *(*(a10 + 3504) + 8 * v52);
          }
        }

        else
        {
          Index = usextract_getIndex(*(*(v50 + 3344) + 8 * v52), "FEATIDX", "");
          if (Index == -1)
          {
            v50 = *a10;
            v56 = *(*(*a10 + 3336) + 8 * v52);
            if (!strcmp(v56, "POS"))
            {
              *(a10 + 504) = *(*(a10 + 3504) + 8 * v52);
            }

            else if (!strcmp(v56, "PHR"))
            {
              *(a10 + 512) = *(*(a10 + 3504) + 8 * v52);
            }
          }

          else
          {
            v50 = *a10;
            *(v104 + 8 * *(*(*(*a10 + 3352) + 8 * v52) + Index)) = *(*(a10 + 3504) + 8 * v52);
          }
        }

        v52 = v53;
        v51 = *(*(v50 + 3336) + 8 * v53++);
      }

      while (v51);
    }
  }

  v105 = *(a10 + 10);
  v57 = v105 & ~(v105 >> 31);
  if (BET3FLT__log_select_GetLogLevel(*(v16 + 32)) >= 6)
  {
    LH_itoa(0x4Eu, v110, 0xAu);
    for (i = 0; i != 218; ++i)
    {
      if (i > 3u)
      {
        if (i == 4)
        {
          v59 = "application/x-realspeak-usplosives;version=4.0";
LABEL_84:
          v60 = *(*a10 + i + 2748);
          if (v60 == 2)
          {
            log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, v59, *(a10 + 8 * i + 1760), 2 * v57, 0);
          }

          else if (v60 == 1)
          {
            log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, v59, *(a10 + 8 * i + 16), v57, 0);
          }

          continue;
        }

        if (i == 5)
        {
          v59 = "application/x-realspeak-usmarkers-u16;version=4.0";
          goto LABEL_84;
        }
      }

      else if (i == 2)
      {
        v109 = 5;
        v108 = 0;
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, "text/x-realspeak-usphonemes;charset=tts", &v109, 1u, 0);
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, "text/x-realspeak-usphonemes;charset=tts", *(a10 + 8 * i + 16), v57, 0);
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, "text/x-realspeak-usphonemes;charset=tts", &v108, 1u, 0);
      }

      else if (i == 3)
      {
        v59 = "application/x-realspeak-usdurs;version=4.0";
        goto LABEL_84;
      }
    }
  }

  v61 = *(a10 + 3520);
  if (v61)
  {
    v62 = 0;
    for (j = 0; j < v61; ++j)
    {
      if (*(*(a10 + 3512) + v62) == 25)
      {
        v110[0] = 0;
        paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v110);
        v64 = *(*(a10 + 3512) + v62 + 24);
        *a9 = v64;
        v45 = paramc_ParamSetInt(*(v16 + 40), "waitfactor", v64);
        if (v45 < 0)
        {
          v100 = *a9;
          log_OutPublic(*(v16 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", v65, v66, v67, v68, "parameter");
          goto LABEL_147;
        }

        v61 = *(a10 + 3520);
      }

      v62 += 32;
    }
  }

  featextract_adjustSilAudioOrder(a10);
  if (!v106)
  {
    goto LABEL_110;
  }

  v69 = *(a10 + 3520);
  v70 = v69 + v57;
  *a12 = v70;
  if (!(v69 + v57))
  {
    goto LABEL_110;
  }

  v71 = heap_Calloc(*(v16 + 8), v70, 32);
  *a11 = v71;
  a3 = v101;
  a4 = v102;
  if (!v71 || (v72 = heap_Calloc(*(v16 + 8), *(a10 + 10), 2)) == 0)
  {
LABEL_130:
    v45 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0, v23, v24, v25, v26, v99);
    goto LABEL_131;
  }

  v73 = v72;
  memcpy(v72, *(a10 + 1800), 2 * *(a10 + 10));
  if (*a12)
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    while (v77 < *(a10 + 3520))
    {
      if (v76 >= v57)
      {
        v83 = (*a11 + v74);
        v84 = (*(a10 + 3512) + 32 * v77);
        v85 = v84[1];
        *v83 = *v84;
        v83[1] = v85;
        ++v77;
        goto LABEL_108;
      }

      v78 = v76;
      if (!*(v73 + 2 * v76))
      {
        goto LABEL_106;
      }

      v79 = (*a11 + v74);
      v80 = (*(a10 + 3512) + 32 * v77);
      v81 = v80[1];
      *v79 = *v80;
      v79[1] = v81;
      ++v77;
      --*(v73 + 2 * v76);
LABEL_108:
      ++v75;
      v74 += 32;
      if (v75 >= *a12)
      {
        goto LABEL_109;
      }
    }

    v78 = v76;
LABEL_106:
    v82 = (*a11 + v74);
    *v82 = 33;
    v82[6] = *(*(a10 + 32) + v78);
    ++v76;
    goto LABEL_108;
  }

LABEL_109:
  heap_Free(*(v16 + 8), v73);
LABEL_110:
  if (v105 >= 1)
  {
    v86 = 0;
    v87 = v103 + 7356;
    v88 = (v105 & ~(v105 >> 31)) - 1;
    while (1)
    {
      v89 = *(a10 + 248);
      if (!*(v89 + v86))
      {
        *(v89 + v86) = -1;
      }

      v90 = *(a10 + 192);
      if (*(*(a10 + 32) + v86) == 35)
      {
        v91 = 1;
      }

      else
      {
        v91 = 2 * *(v90 + v86);
      }

      *(v90 + v86) = v91;
      v92 = *(a10 + 32);
      v93 = *(v92 + v86);
      if (v88 == v86)
      {
        if (v93 == 35)
        {
          v110[0] = 0;
          paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v110);
          v94 = 0;
          v95 = *(a10 + 1784);
          if (v110[0] != 1)
          {
            v94 = *(v95 + 2 * v86) + 200 * *a9;
          }

          if (v94 <= 1)
          {
            v94 = 1;
          }

          if (v94 >= 0xFFFF)
          {
            LOWORD(v94) = -1;
          }

          *(v95 + 2 * v86) = v94;
          v92 = *(a10 + 32);
        }

        *(v92 + v86) = *(v87 + *(v92 + v86));
        if (v88 == v86)
        {
          break;
        }
      }

      else
      {
        *(v92 + v86) = *(v87 + v93);
      }

      ++v86;
    }
  }

LABEL_147:
  a3 = v101;
  a4 = v102;
LABEL_131:
  v15 = v107;
LABEL_132:
  if (a12)
  {
LABEL_133:
    if (a11 && v45 < 0 && *a11)
    {
      heap_Free(*(v16 + 8), *a11);
      *a11 = 0;
      *a12 = 0;
    }
  }

LABEL_137:
  LODWORD(result) = (*(v15[2] + 64))(a3, a4);
  if (result >= 0 || v45 <= -1)
  {
    result = v45;
  }

  else
  {
    result = result;
  }

  v98 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BET3FLT__select_bet3_FeatureExtractProcessEnd(uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = usextract_ProcessEnd(*a1, "SELECT_BET3", a2);
  usextract_freeGenericFeatureLayers(*a1, "SELECT_BET3", a2);
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = *(*a2 + v10 + 2748);
    if (!*(*a2 + v10 + 2748))
    {
      goto LABEL_12;
    }

    if (v12 == 2)
    {
      v14 = a2[v10 + 220];
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_11:
      heap_Free(*(v4 + 8), v14);
      goto LABEL_12;
    }

    if (v12 == 1)
    {
      if (v11)
      {
        v13 = a2[v10 + 2];
        if (v13)
        {
          heap_Free(*(v4 + 8), v13);
        }

        v11 = 0;
      }
    }

    else if (v10 <= 0x33u)
    {
      switch(v10)
      {
        case 0x18u:
          v14 = a2[444];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        case 0x2Eu:
          v14 = a2[445];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        case 0x33u:
          v14 = a2[446];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        default:
          goto LABEL_31;
      }
    }

    else if (v10 > 0x35u)
    {
      if (v10 == 54)
      {
        v14 = a2[449];
        if (v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v10 != 56)
        {
LABEL_31:
          log_OutPublic(*(*a1 + 32), "SELECT_BET3", 55010, "%s%u", v6, v7, v8, v9, "feature");
          goto LABEL_12;
        }

        v14 = a2[450];
        if (v14)
        {
          goto LABEL_11;
        }
      }
    }

    else if (v10 == 52)
    {
      v14 = a2[447];
      if (v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v10 != 53)
      {
        goto LABEL_31;
      }

      v14 = a2[448];
      if (v14)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    ++v10;
  }

  while (v10 != 218);
  v15 = a2[451];
  if (v15)
  {
    heap_Free(*(v4 + 8), v15);
  }

  *a2 = 0;
  return v5;
}

uint64_t BET3FLT__LoadModelFile(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = a3;
  if (a2[a3 + 84])
  {
    v9 = a2 + 32;
    v10 = heap_Calloc(*(a1 + 8), a2[a3 + 32], 8);
    *(a2 + 21) = v10;
    if (!v10)
    {
      return 2229280778;
    }

    if (v9[v8] >= 1)
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = (a4 + 24 * v11);
        if (BET3FLT__xfread_BET3(a2, 4u, 1, v13) != 1 || (*a2 & 0x80000000) != 0)
        {
          v67 = *(a5 + 8 * v8 + 144);
          v61 = "LoadModelFile: the number of HMM states is illegal for %s %d\n";
          v62 = v7;
          v63 = 55020;
          goto LABEL_68;
        }

        if (BET3FLT__xfread_BET3(a2 + 11, 4u, 1, v13) != 1 || (v19 = a2[11], v19 < 0))
        {
          v68 = *(a5 + 8 * v8 + 144);
          v61 = "LoadModelFile: the number of PDFs is illegal for %s %d\n";
          v62 = v7;
          v63 = 55021;
          goto LABEL_68;
        }

        if (!v12)
        {
          v20 = heap_Calloc(*(v7 + 8), v9[v8] * v19, 8);
          if (!v20)
          {
            return 2229280778;
          }

          v12 = v20;
          v19 = a2[11];
        }

        v21 = a5;
        *(*(a2 + 21) + 8 * v11) = v12 + 8 * v19 * v11;
        *(*(a2 + 21) + 8 * v11) -= 8;
        if (v19 >= 1)
        {
          break;
        }

LABEL_16:
        ++v11;
        a5 = v21;
        if (v11 >= v9[v8])
        {
          goto LABEL_17;
        }
      }

      v22 = 0;
      v23 = *a2;
      v24 = 8;
      while (1)
      {
        v25 = BET3FLT__xfread2ptr_BET3((*(*(a2 + 21) + 8 * v11) + v24), 4u, (2 * v23), v13);
        v23 = *a2;
        if (v25 != 2 * *a2)
        {
          break;
        }

        v26 = *(*(a2 + 21) + 8 * v11) + 8 * v22;
        *(v26 + 8) -= 8;
        ++v22;
        v24 += 8;
        if (v22 >= a2[11])
        {
          goto LABEL_16;
        }
      }

      v65 = *(v21 + 8 * v8 + 144);
      v61 = "LoadModelFile: PDF read failed for %s %d\n";
      v62 = v7;
      v63 = 55022;
      goto LABEL_68;
    }
  }

LABEL_17:
  v27 = &a2[v8];
  if (v27[94])
  {
    v28 = a2 + 32;
    v29 = heap_Calloc(*(v7 + 8), a2[v8 + 32], 8);
    v30 = a2 + 44;
    *&a2[2 * v8 + 44] = v29;
    v31 = 2229280778;
    if (!v29)
    {
      return v31;
    }

    v80 = heap_Calloc(*(v7 + 8), *a2 * v28[v8], 8);
    if (!v80)
    {
      return v31;
    }

    if (v28[v8] >= 1)
    {
      v32 = 0;
      v33 = &a2[2 * v8];
      v76 = a5;
      v78 = v7;
      while (1)
      {
        v34 = (a4 + 24 * v32);
        if (BET3FLT__xfread_BET3(v27 + 1, 4u, 1, v34) != 1 || (v27[1] & 0x80000000) != 0)
        {
          v72 = *(a5 + 8 * v8 + 144);
          v61 = "LoadModelFile: the vector size is illegal for %s %d\n";
          v62 = v7;
          v63 = 55023;
          goto LABEL_68;
        }

        v35 = BET3FLT__xfread2ptr_BET3(v33 + 6, 4u, *a2, v34);
        if (v35 != *a2)
        {
          v73 = *(a5 + 8 * v8 + 144);
          v61 = "LoadModelFile: reading the number of PDFs failed for %s %d\n";
          v62 = v7;
          v63 = 55024;
          goto LABEL_68;
        }

        v36 = *(v33 + 6);
        *(v33 + 6) = v36 - 2;
        if (v35 > 0)
        {
          break;
        }

        *(*&v30[2 * v8] + 8 * v32) = v80 + 8 * v35 * v32;
        *(*&v30[2 * v8] + 8 * v32) -= 16;
LABEL_34:
        ++v32;
        a5 = v76;
        v7 = v78;
        if (v32 >= v28[v8])
        {
          goto LABEL_35;
        }
      }

      v37 = 2;
      do
      {
        v38 = *v36++;
        if (v38 < 0)
        {
          v66 = *(a5 + 8 * v8 + 144);
          v61 = "LoadModelFile: the number of PDFs for %s at state %d is illegal\n";
          v62 = v7;
          v63 = 55025;
          goto LABEL_68;
        }

        ++v37;
      }

      while (v35 + 2 != v37);
      *(*&v30[2 * v8] + 8 * v32) = v80 + 8 * v35 * v32;
      *(*&v30[2 * v8] + 8 * v32) -= 16;
      v39 = *(v33 + 6);
      v40 = v27[1];
      v41 = 16;
      v42 = 2;
      while (1)
      {
        v43 = BET3FLT__xfread2ptr_BET3((*(*&v30[2 * v8] + 8 * v32) + v41), 4u, 2 * *(v39 + 4 * v42) * v40, v34);
        v39 = *(v33 + 6);
        v40 = v27[1];
        if (v43 != 2 * *(v39 + 4 * v42) * v40)
        {
          break;
        }

        v41 += 8;
        v44 = v42++ <= *a2;
        if (!v44)
        {
          goto LABEL_34;
        }
      }

      v62 = v78;
      v69 = *(v76 + 8 * v8 + 144);
      v61 = "LoadModelFile: PDF read failed for %s %d\n";
      v63 = 55026;
      goto LABEL_68;
    }
  }

LABEL_35:
  if (!v27[104])
  {
    return 0;
  }

  v45 = a2 + 32;
  v46 = heap_Calloc(*(v7 + 8), a2[v8 + 32], 8);
  v47 = a2 + 64;
  *&a2[2 * v8 + 64] = v46;
  v31 = 2229280778;
  if (v46)
  {
    v48 = heap_Calloc(*(v7 + 8), *a2 * v45[v8], 8);
    if (v48)
    {
      if (v45[v8] >= 1)
      {
        v79 = v7;
        v81 = v48;
        v49 = 0;
        v50 = &a2[2 * v8];
        v77 = a5;
        while (1)
        {
          v51 = (a4 + 24 * v49);
          if (BET3FLT__xfread_BET3(v27 + 1, 4u, 1, v51) != 1 || (v27[1] & 0x80000000) != 0)
          {
            v74 = *(a5 + 8 * v8 + 144);
            v61 = "LoadModelFile: the vector size is illegal for %s %d\n";
            v62 = v7;
            v63 = 55027;
            goto LABEL_68;
          }

          v52 = BET3FLT__xfread2ptr_BET3(v50 + 6, 4u, *a2, v51);
          if (v52 != *a2)
          {
            v75 = *(a5 + 8 * v8 + 144);
            v61 = "LoadModelFile: reading the number of PDFs failed for %s %d\n";
            v62 = v7;
            v63 = 55028;
            goto LABEL_68;
          }

          v53 = *(v50 + 6);
          *(v50 + 6) = v53 - 2;
          if (v52 > 0)
          {
            break;
          }

          *(*&v47[2 * v8] + 8 * v49) = v81 + 8 * v52 * v49;
          *(*&v47[2 * v8] + 8 * v49) -= 16;
LABEL_52:
          v31 = 0;
          ++v49;
          a5 = v77;
          v7 = v79;
          if (v49 >= v45[v8])
          {
            return v31;
          }
        }

        v54 = 2;
        do
        {
          v55 = *v53++;
          if (v55 < 0)
          {
            v70 = *(a5 + 8 * v8 + 144);
            v61 = "LoadModelFile: the number of PDFs for %s at state %d is illegal\n";
            v62 = v7;
            v63 = 55029;
            goto LABEL_68;
          }

          ++v54;
        }

        while (v52 + 2 != v54);
        *(*&v47[2 * v8] + 8 * v49) = v81 + 8 * v52 * v49;
        *(*&v47[2 * v8] + 8 * v49) -= 16;
        v56 = *(v50 + 6);
        v57 = v27[1];
        v58 = 16;
        v59 = 2;
        while (1)
        {
          v60 = BET3FLT__xfread2ptr_BET3((*(*&v47[2 * v8] + 8 * v49) + v58), 4u, 4 * *(v56 + 4 * v59) * v57, v51);
          v56 = *(v50 + 6);
          v57 = v27[1];
          if (v60 != 4 * *(v56 + 4 * v59) * v57)
          {
            break;
          }

          v58 += 8;
          v44 = v59++ <= *a2;
          if (!v44)
          {
            goto LABEL_52;
          }
        }

        v62 = v79;
        v71 = *(v77 + 8 * v8 + 144);
        v61 = "LoadModelFile: PDF read failed for %s %d\n";
        v63 = 55030;
LABEL_68:
        BET3FLT__log_select_Error(v62, v63, v61, v14, v15, v16, v17, v18);
        return 2229280772;
      }

      return 0;
    }
  }

  return v31;
}

uint64_t BET3FLT__FindDurPDF(int32x2_t *a1, int *a2, int a3, int a4, int a5, float a6)
{
  v6 = a1[1].i32[0];
  a1[3] = 0;
  LODWORD(v7) = *a2;
  if (*a2 >= 1)
  {
    v14 = 2;
    __asm { FMOV            V0.2D, #0.5 }

    v30 = _Q0;
    v20 = 0.0;
    do
    {
      v21 = *(*(*(a2 + 21) + 8 * a4) + 8 * v6);
      v22 = *(v21 + 4 * v14);
      v23 = *(v21 + 4 * (v14 + v7));
      if (a5)
      {
        v23 = BET3FLT__bet3_finv(v23);
      }

      v24 = v22 + (v23 * a6);
      if (v24 < 0.0)
      {
        v24 = 0.0;
      }

      if (a2[115])
      {
        if (v24 > 4000.0)
        {
          v24 = 4000.0;
        }
      }

      else if (v24 > 4000.0)
      {
        v24 = v20 * 0.5;
      }

      v25.f64[0] = (v24 + a3);
      v26 = a1[2];
      v25.f64[1] = sqrt(v23);
      v27 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(v25, v30)));
      *(*&v26 + 4 * v14) = v27.i32[0];
      a1[3] = vadd_s32(a1[3], v27);
      a3 += (v24 - *(*&v26 + 4 * v14));
      v7 = *a2;
      v20 = v24;
    }

    while (v14++ <= v7);
  }

  return 0;
}

uint64_t BET3FLT__FindContPDF(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a3 + 8 * a1);
  v6 = *(a4 + 4 * a1 + 4);
  v7 = *(*(*(a4 + 8 * a1 + 176) + 8 * a5) + 8 * a2) + 4 * (2 * *(v5[9] + 4 * a2) - 2) * v6;
  *(v5[19] + 8 * a2) = v7;
  *(v5[29] + 8 * a2) = v7 + 4 * v6;
  return 0;
}

uint64_t BET3FLT__FindMsdPDF(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a4 + 4;
  v7 = *(a4 + 4 + 4 * a1);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = a1;
    v10 = a2;
    v11 = *(*(*(a4 + 8 * a1 + 256) + 8 * a6) + 8 * a2) + 4 * (4 * *(*(a3 + 8 * a1 + 72) + 4 * a2) - 4) * v7;
    v12 = a5 + 224;
    v13 = 1;
    do
    {
      v14 = v11 + 4 * v8;
      v15 = *(*(a3 + 152 + 8 * v9) + 8 * v10);
      *(v15 + 4 * v13) = *v14;
      v16 = *(v14 + 4);
      *(*(*(a3 + 232 + 8 * v9) + 8 * v10) + 4 * v13) = v16;
      v17 = *(a5 + 44);
      if (v17 != 0.0 && *(v12 + 4 * v9) == 2)
      {
        *(v15 + 4 * v13) = *(v15 + 4 * v13) + (v16 * v17);
      }

      if (v13 == 1)
      {
        v18 = *(v12 + 4 * v9);
        v19 = *(v14 + 8);
        if (v18 == 2)
        {
          *(*(a3 + 320) + 4 * v10) = v19;
        }

        v20 = 1 << v18;
        v21 = *(a3 + 312);
        if (v19 <= *(a5 + 2104 + 4 * v9))
        {
          v22 = *(v21 + v10) & ~v20;
        }

        else
        {
          v22 = *(v21 + v10) | v20;
        }

        *(v21 + v10) = v22;
      }

      v8 += 4;
    }

    while (v13++ < *(v6 + 4 * v9));
  }

  return 0;
}

double BET3FLT__DeInitModelSet(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 456) >= 1)
  {
    v4 = 0;
    v5 = (a2 + 336);
    v6 = (a2 + 176);
    v7 = (a2 + 336);
    do
    {
      if (*v7++)
      {
        v9 = *(a2 + 168);
        if (v9)
        {
          if (*v9)
          {
            *v9 += 8;
            heap_Free(*(a1 + 8), **(a2 + 168));
            v9 = *(a2 + 168);
          }

          heap_Free(*(a1 + 8), v9);
          *(a2 + 168) = 0;
        }
      }

      if (v5[10])
      {
        v10 = *v6;
        if (*v6)
        {
          if (*v10)
          {
            *v10 += 16;
            heap_Free(*(a1 + 8), **v6);
            v10 = *v6;
          }

          heap_Free(*(a1 + 8), v10);
        }
      }

      if (v5[20])
      {
        v11 = v6[10];
        if (v11)
        {
          if (*v11)
          {
            *v11 += 16;
            heap_Free(*(a1 + 8), *v6[10]);
            v11 = v6[10];
          }

          heap_Free(*(a1 + 8), v11);
        }
      }

      ++v4;
      ++v6;
      v5 = v7;
    }

    while (v4 < *(a2 + 456));
  }

  result = 0.0;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t BET3FLT__InitUttModel(uint64_t a1, char *a2, int *a3, unsigned int a4)
{
  v8 = 2229280778;
  bzero(a2, 0x240uLL);
  *a2 = a1;
  *(a2 + 1) = a3;
  *(a2 + 138) = a4;
  *(a2 + 141) = *a3 * a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 528);
  *(a2 + 68) = v9;
  if (v9)
  {
    v10 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
    *(a2 + 4) = v10;
    if (v10)
    {
      v11 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 1);
      *(a2 + 41) = v11;
      if (v11)
      {
        v12 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
        *(a2 + 42) = v12;
        if (v12)
        {
          v13 = a3[114];
          if (v13 >= 1)
          {
            v14 = 0;
            v15 = a2 + 168;
            v16 = a3;
            do
            {
              if (!v16[84])
              {
                v17 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
                *(v15 - 10) = v17;
                if (!v17)
                {
                  return v8;
                }

                v18 = *(a1 + 8);
                v19 = *(a2 + 138);
                v20 = v16[104] ? BET3FLT__ddcalloc(v18, 2 * v19 * *a3, v16[1] + 1) : heap_Calloc(v18, (2 * v19 * *a3), 8);
                *v15 = v20;
                if (!v20)
                {
                  return v8;
                }

                v15[10] = &v20[*a3 * *(a2 + 138)];
                v13 = a3[114];
              }

              ++v14;
              ++v15;
              ++v16;
            }

            while (v14 < v13);
          }

          v21 = *(a2 + 138);
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = *a3;
            v24 = 152;
            do
            {
              v25 = *(a2 + 68);
              v26 = v25 + 528 * v22;
              *v26 = v22;
              v27 = v22 * v23;
              v28 = *(a2 + 41) + v22 * v23;
              v29 = *(a2 + 42) + 4 * v22 * v23;
              *(v26 + 16) = *(a2 + 4) + 4 * v22 * v23 - 8;
              *(v26 + 312) = v28 - 2;
              *(v26 + 320) = v29 - 8;
              if (v13 >= 1)
              {
                v30 = (v25 + v24);
                v31 = a2 + 168;
                v32 = a3 + 84;
                v33 = v13;
                do
                {
                  if (!*v32++)
                  {
                    v35 = *(v31 - 10) + 4 * v27;
                    *(v30 - 10) = v35;
                    v36 = *v31 + 8 * v27;
                    *v30 = v36;
                    v37 = v31[10] + 8 * v27;
                    *(v30 - 10) = v35 - 8;
                    *v30 = v36 - 16;
                    v30[10] = v37 - 16;
                  }

                  ++v30;
                  ++v31;
                  --v33;
                }

                while (v33);
              }

              ++v22;
              v24 += 528;
            }

            while (v22 != v21);
          }

          return 0;
        }
      }
    }
  }

  return v8;
}

void *BET3FLT__DeInitUttModel(void *result)
{
  v1 = result;
  if (*result && result[68])
  {
    v2 = result[1];
    v3 = result[4];
    if (v3)
    {
      heap_Free(*(*result + 8), v3);
      v1[4] = 0;
    }

    v4 = v1[41];
    if (v4)
    {
      heap_Free(*(*v1 + 8), v4);
      v1[41] = 0;
    }

    v5 = v1[42];
    if (v5)
    {
      heap_Free(*(*v1 + 8), v5);
      v1[42] = 0;
    }

    if (*(v2 + 456) >= 1)
    {
      v6 = 0;
      do
      {
        if (!*(v2 + 336 + 4 * v6))
        {
          v7 = &v1[v6];
          v8 = v7[11];
          if (v8)
          {
            heap_Free(*(*v1 + 8), v8);
            v7[11] = 0;
          }

          v9 = v7[21];
          if (v9)
          {
            heap_Free(*(*v1 + 8), v9);
            v7[21] = 0;
          }
        }

        ++v6;
      }

      while (v6 < *(v2 + 456));
    }

    result = heap_Free(*(*v1 + 8), v1[68]);
  }

  v1[68] = 0;
  *(v1 + 138) = 0;
  *v1 = 0;
  return result;
}

void *BET3FLT__DeInitMSDUttModel(void *result, int a2)
{
  v2 = result[1];
  if (!*(v2 + 4 * a2 + 336))
  {
    v3 = result;
    v4 = a2;
    v5 = result + 11;
    v6 = result[a2 + 11];
    if (v6)
    {
      result = heap_Free(*(*result + 8), v6);
      v5[v4] = 0;
    }

    v7 = v3 + 21;
    v8 = v3[v4 + 21];
    if (v8)
    {
      if (*(v2 + 4 * v4 + 416))
      {
        *v8 += 4;
        v9 = *(v3 + 138);
        v10 = *v3[1];
        result = BET3FLT__dd_free(*(*v3 + 8), v7[v4]);
      }

      else
      {
        result = heap_Free(*(*v3 + 8), v8);
      }

      v7[v4] = 0;
    }
  }

  return result;
}

uint64_t BET3FLT__InitModelSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = *(a3 + 132);
  *(a2 + 456) = v3;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = (a2 + 376);
    do
    {
      v6 = a3 + 4 * v4;
      *(v5 - 62) = *(v6 + 344);
      v7 = (a2 + 336);
      if (v4)
      {
        if (*(v6 + 2144))
        {
          v7 = (a2 + 416 + 4 * v4);
        }

        else
        {
          v7 = v5;
        }
      }

      *v7 = 1;
      ++v4;
      ++v5;
    }

    while (v4 < *(a2 + 456));
  }

  return 0;
}

uint64_t BET3FLT__meancpy(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(result + 20);
    do
    {
      if (v3 >= 1)
      {
        v4 = *(result + 72);
        v5 = *(result + 40);
        v6 = v3;
        do
        {
          v7 = *v4++;
          v8 = *(v7 + 4 * v2);
          v9 = *v5++;
          *(v9 + 4 * v2) = v8;
          --v6;
        }

        while (v6);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

float BET3FLT__ConstW_Calc_R_and_r(uint64_t a1, int a2)
{
  v3 = *(a1 + 96);
  v2 = *(a1 + 104);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = a2;
  v9 = *v5;
  v10 = v5[1];
  v11 = *(*v5 + 4 * a2);
  v12 = *v4;
  v13 = v4[1];
  v14 = v11 * *(*v4 + 4 * a2);
  *v2 = v14;
  v15 = *(v10 + 4 * (v6 + a2));
  v16 = v6 + a2;
  v17 = v14 + ((v15 * -0.5) * *(v13 + 4 * v16));
  *v2 = v17;
  v18 = a2 + 2 * v6;
  v19 = *(v9 + 4 * v18);
  v20 = v17 + ((v19 * -2.0) * *(v12 + 4 * v18));
  *v2 = v20;
  v21 = *(v10 + 4 * v18);
  *v2 = v20 + (v21 * *(v13 + 4 * v18));
  v22 = *v3;
  *v22 = v11 + (((v19 * 4.0) + (v15 * 0.25)) + v21);
  v22[1] = (v19 * -2.0) + (v21 * -2.0);
  v22[2] = v21 + (v15 * -0.25);
  if (v7 < 3)
  {
    LODWORD(v23) = 1;
  }

  else
  {
    v23 = (v7 - 1);
    v24 = v3 + 1;
    v25 = v2 + 1;
    v26 = v5 + 2;
    v27 = v4 + 2;
    v28 = v23 - 1;
    do
    {
      v29 = *(v10 + 4 * v8);
      v30 = v29 * *(v13 + 4 * v8);
      *v25 = v30;
      v31 = *(v26 - 2);
      v32 = *(v31 + 4 * v16);
      v33 = *(v27 - 2);
      v34 = v30 + ((v32 * 0.5) * *(v33 + 4 * v16));
      *v25 = v34;
      v36 = *v26++;
      v35 = v36;
      v37 = *(v36 + 4 * v16);
      v39 = *v27++;
      v38 = v39;
      v40 = v34 + ((v37 * -0.5) * *(v39 + 4 * v16));
      *v25 = v40;
      v41 = *(v31 + 4 * v18);
      v42 = v40 + (v41 * *(v33 + 4 * v18));
      *v25 = v42;
      v43 = *(v10 + 4 * v18);
      v44 = v42 + ((v43 * -2.0) * *(v13 + 4 * v18));
      *v25 = v44;
      v45 = *(v35 + 4 * v18);
      *v25++ = v44 + (v45 * *(v39 + 4 * v18));
      v46 = *v24++;
      *v46 = ((((v29 + (v32 * 0.25)) + (v37 * 0.25)) + v41) + v45) + (v43 * 4.0);
      v46[1] = (v45 * -2.0) + (v43 * -2.0);
      v46[2] = v45 + (v37 * -0.25);
      v13 = v38;
      v10 = v35;
      --v28;
    }

    while (v28);
  }

  v47 = v5[v23];
  v48 = *(v47 + 4 * v8);
  v49 = v4[v23];
  v50 = v48 * *(v49 + 4 * v8);
  v2[v23] = v50;
  v51 = 8 * v23 - 8;
  v52 = *(v5 + v51);
  v53 = *(v52 + 4 * v16);
  v54 = *(v4 + v51);
  v55 = v50 + ((v53 * 0.5) * *(v54 + 4 * v16));
  v2[v23] = v55;
  v56 = *(v52 + 4 * v18);
  v57 = v55 + (v56 * *(v54 + 4 * v18));
  v2[v23] = v57;
  v58 = *(v47 + 4 * v18);
  v2[v23] = v57 + ((v58 * -2.0) * *(v49 + 4 * v18));
  v59 = v3[v23];
  result = v48 + ((v56 + (v53 * 0.25)) + (v58 * 4.0));
  *v59 = result;
  v59[1] = 0.0;
  v59[2] = 0.0;
  return result;
}

float BET3FLT__ConstW_Cholesky(uint64_t a1, double a2)
{
  v2 = *(a1 + 96);
  v3 = *v2;
  v4 = *(v2 + 8);
  LODWORD(a2) = **v2;
  v5 = vdiv_f32(*(*v2 + 4), vdup_lane_s32(*&a2, 0));
  *(v3 + 1) = v5;
  v6 = v4[1];
  v7 = *v4 + ((-v5.f32[0] * v5.f32[0]) * *&a2);
  *v4 = v7;
  v5.f32[0] = (v6 + (-(*(v3 + 1) * *(v3 + 2)) * *v3)) / v7;
  *&a2 = v4[2] / v7;
  v4[1] = v5.f32[0];
  v4[2] = *&a2;
  v8 = *(a1 + 20);
  if (v8 >= 3)
  {
    v9 = (v2 + 16);
    v10 = v8 - 2;
    do
    {
      v12 = *(v9 - 2);
      v11 = *(v9 - 1);
      v13 = *v9++;
      v14 = v13[1];
      v15 = *v13 + (-(v11[1] * v11[1]) * *v11);
      *v13 = v15;
      v16 = v15 + (-(v12[2] * v12[2]) * *v12);
      *v13 = v16;
      v17 = (v14 + (-(v11[1] * v11[2]) * *v11)) / v16;
      *&a2 = v13[2] / v16;
      v13[1] = v17;
      v13[2] = *&a2;
      --v10;
    }

    while (v10);
  }

  return *&a2;
}

float BET3FLT__ConstW_Cholesky_forward(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 104);
  v3 = *(a1 + 88);
  v4 = *v2;
  *v3 = *v2;
  v5 = *v1;
  result = v2[1] - (*(*v1 + 4) * v4);
  v3[1] = result;
  v7 = *(a1 + 20);
  if (v7 >= 3)
  {
    v8 = v3 + 2;
    v9 = v1 + 1;
    v10 = v2 + 2;
    v11 = v7 - 2;
    do
    {
      v12 = *v10++;
      v13 = v12;
      v14 = *(v5 + 8);
      v15 = *v9++;
      v5 = v15;
      result = v13 - ((v14 * *(v8 - 2)) + (*(v15 + 4) * result));
      *v8++ = result;
      --v11;
    }

    while (v11);
  }

  return result;
}

float BET3FLT__ConstW_Cholesky_backward(uint64_t a1, int a2)
{
  v2 = *(a1 + 20);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 40);
  v6 = *(v3 + 4 * (v2 - 1)) / **(v4 + 8 * (v2 - 1));
  *(*(v5 + 8 * (v2 - 1)) + 4 * a2) = v6;
  v7 = *(v4 + 8 * (v2 - 2));
  result = (*(v3 + 4 * (v2 - 2)) / *v7) - (v7[1] * v6);
  *(*(v5 + 8 * (v2 - 2)) + 4 * a2) = result;
  v9 = __OFSUB__(v2, 3);
  v10 = (v2 - 3);
  if (v10 < 0 == v9)
  {
    v11 = (v5 + 8 * v10 + 16);
    v12 = v11;
    do
    {
      v13 = *--v12;
      result = ((*(v3 + 4 * v10) / **(v4 + 8 * v10)) - (*(*(v4 + 8 * v10) + 4) * *(v13 + 4 * a2))) - (*(*(v4 + 8 * v10) + 8) * *(*v11 + 4 * a2));
      *(*(v11 - 2) + 4 * a2) = result;
      --v10;
      v11 = v12;
    }

    while (v10 != -1);
  }

  return result;
}

void BET3FLT__mlpg2(uint64_t a1, int a2)
{
  if (*(a1 + 20) < 2)
  {

    BET3FLT__meancpy(a1);
  }

  else
  {
    *&v4 = BET3FLT__ConstW_Calc_R_and_r(a1, a2);
    BET3FLT__ConstW_Cholesky(a1, v4);
    BET3FLT__ConstW_Cholesky_forward(a1);

    BET3FLT__ConstW_Cholesky_backward(a1, a2);
  }
}

char *BET3FLT__heap_StrDup(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = heap_Calloc(a1, (v4 + 1), 1);
  if (!v5)
  {
    return 0;
  }

  return strcpy(v5, __s);
}

uint64_t BET3FLT__xfread_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v5 = a3;
  v6 = *a4;
  v7 = a4[4];
  if (v6 + a3 * a2 > v7)
  {
    v5 = (v7 - v6) / a2;
  }

  if (v5)
  {
    v8 = v5 * a2;
    memcpy(a1, (*(a4 + 1) + v6), v8);
    *a4 += v8;
  }

  return v5;
}

uint64_t BET3FLT__xfread2ptr_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  if (a2 >= 2 && v4 % a2)
  {
    return 0;
  }

  v5 = a4[4];
  if (v4 + a3 * a2 > v5)
  {
    a3 = (v5 - v4) / a2;
  }

  if (a3)
  {
    *a1 = *(a4 + 1) + v4;
    *a4 = v4 + a3 * a2;
  }

  return a3;
}

uint64_t BET3FLT__log_select_Diag(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (v4 == 10);
  return log_VOutText(*(a1 + 32), "SELECT_BET3", (a2 + 2), 0, v3);
}

uint64_t BET3FLT__log_select_GetLogLevel(uint64_t a1)
{
  LogLevel = log_GetLogLevel(a1);
  if (LogLevel >= 3)
  {
    return LogLevel - 2;
  }

  else
  {
    return 0;
  }
}

float BET3FLT__bet3_finv(float a1)
{
  v1 = 0.0;
  if (fabsf(a1) < 1.0e19)
  {
    if (a1 > 1.0e-19 || a1 < 0.0)
    {
      if (a1 < -1.0e-19 || a1 >= 0.0)
      {
        return 1.0 / a1;
      }

      else
      {
        return -1.0e38;
      }
    }

    else
    {
      return 1.0e38;
    }
  }

  return v1;
}

void *BET3FLT__ddcalloc(void *a1, unsigned int a2, int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
            ++v9;
          }

          while (v7 != v9);
        }
      }

      else
      {
        heap_Free(a1, v3);
        return 0;
      }
    }
  }

  return v3;
}

void *BET3FLT__dd_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t BET3FLT__InitDWinSet(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  a2[23] = 0u;
  a2[24] = 0u;
  a2[21] = 0u;
  a2[22] = 0u;
  a2[19] = 0u;
  a2[20] = 0u;
  a2[17] = 0u;
  a2[18] = 0u;
  a2[15] = 0u;
  a2[16] = 0u;
  a2[13] = 0u;
  a2[14] = 0u;
  a2[11] = 0u;
  a2[12] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v3 = *(a3 + 132);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a3 + 304;
    do
    {
      v6 = *(v5 + 4 * v4);
      if (v6 >= 1)
      {
        for (i = 0; i < v6; ++i)
        {
          *(a2 + 10 * v4) = v6 + 1;
          v6 = *(v5 + 4 * v4);
        }
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

double BET3FLT__DeInitDWinSet(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    for (i = 0; i != 400; i += 40)
    {
      v5 = a2 + i;
      v6 = *(a2 + i);
      BET3FLT__dd_free(*(a1 + 8), *(a2 + i + 8));
      v7 = *(a2 + i + 16);
      if (v7)
      {
        if (!*v7 || (heap_Free(*(a1 + 8), *v7), **(v5 + 2) = 0, (v7 = *(v5 + 2)) != 0))
        {
          heap_Free(*(a1 + 8), v7);
          *(v5 + 2) = 0;
        }
      }
    }

    result = 0.0;
    a2[23] = 0u;
    a2[24] = 0u;
    a2[21] = 0u;
    a2[22] = 0u;
    a2[19] = 0u;
    a2[20] = 0u;
    a2[17] = 0u;
    a2[18] = 0u;
    a2[15] = 0u;
    a2[16] = 0u;
    a2[13] = 0u;
    a2[14] = 0u;
    a2[11] = 0u;
    a2[12] = 0u;
    a2[9] = 0u;
    a2[10] = 0u;
    a2[7] = 0u;
    a2[8] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t BET3FLT__LoadDWinFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = (a2 + 40 * a3);
  if (!*v4)
  {
    return 0;
  }

  v7 = 2229280778;
  v8 = BET3FLT__ddcalloc(*(a1 + 8), *v4, 2);
  *(v4 + 1) = v8;
  if (v8)
  {
    v9 = heap_Calloc(*(a1 + 8), *v4, 8);
    *(v4 + 2) = v9;
    if (v9)
    {
      ***(v4 + 1) = 0;
      **(v4 + 2) = heap_Calloc(*(a1 + 8), 1, 4);
      v10 = **(v4 + 2);
      if (v10)
      {
        *v10 = 1065353216;
        LODWORD(v11) = *v4;
        if (*v4 <= 1)
        {
LABEL_9:
          *(v4 + 3) = 0;
          if (v11 < 1)
          {
            v22 = 0;
          }

          else
          {
            v21 = 0;
            v22 = 0;
            v23 = *(v4 + 1);
            v11 = v11;
            do
            {
              v24 = *v23;
              v25 = **v23;
              if (v22 > v25)
              {
                v4[6] = v25;
                v22 = v25;
              }

              v26 = v24[1];
              if (v21 < v26)
              {
                v4[7] = v26;
                v21 = v26;
              }

              ++v23;
              --v11;
            }

            while (v11);
            if (v22 < v21)
            {
              v7 = 0;
              v4[8] = v21;
              return v7;
            }
          }

          v7 = 0;
          v4[8] = v22;
          return v7;
        }

        v12 = 1;
        v13 = 8;
        while (1)
        {
          v14 = BET3FLT__xfread2ptr_BET3((*(v4 + 2) + v13), 4u, 0xFFFFFFFFLL, a4);
          if (!v14)
          {
            break;
          }

          *(*(v4 + 2) + v13) += 4 * (v14 >> 1);
          v20 = *(*(v4 + 1) + v13);
          *v20 = -(v14 >> 1);
          v20[1] = (v14 & 1) + (v14 >> 1) - 1;
          ++v12;
          v11 = *v4;
          v13 += 8;
          a4 += 6;
          if (v12 >= v11)
          {
            goto LABEL_9;
          }
        }

        BET3FLT__log_select_Error(a1, 55019, "InitDWin: illegal data\n", v15, v16, v17, v18, v19);
        return 2229280772;
      }
    }
  }

  return v7;
}

double BET3FLT__InitSMatrices(uint64_t a1, _OWORD *a2)
{
  result = 0.0;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  *a2 = a1;
  return result;
}

double BET3FLT__FreeSMatrices(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        if (!*(a1 + 8))
        {
          v3 = *(a1 + 16);
          BET3FLT__dd_free(*(*a1 + 8), v2);
          v4 = *(a1 + 16);
          BET3FLT__dd_free(*(*a1 + 8), *(a1 + 48));
          v5 = *(a1 + 40);
          if (v5)
          {
            heap_Free(*(*a1 + 8), v5);
          }
        }

        *(a1 + 60) = 0;
        result = 0.0;
        *(a1 + 44) = 0u;
        *(a1 + 28) = 0u;
        *(a1 + 12) = 0u;
      }
    }
  }

  return result;
}

uint64_t BET3FLT__InitPStreamSM(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (a2 && *(a2 + 24) && *(a1 + 3) == *(a2 + 12) && *(a1 + 5) == *(a2 + 16) && *(a1 + 6) == *(a2 + 20))
  {
    result = 0;
    v6 = *(a2 + 48);
    v8 = *a2;
    v7 = *(a2 + 16);
    *(a1 + 5) = *(a2 + 32);
    *(a1 + 6) = v6;
    *(a1 + 3) = v8;
    *(a1 + 4) = v7;
LABEL_12:
    *(a1 + 14) = 1;
    return result;
  }

  a1[6] = v4;
  v9 = (a1 + 6);
  v10 = *(a1 + 3);
  *(a1 + 14) = 0;
  *(a1 + 15) = v10;
  v11 = *(a1 + 20);
  a1[8] = v11;
  v12 = BET3FLT__ddcalloc(*(v4 + 8), 2 * v11, v10);
  a1[9] = v12;
  if (v12 && (v13 = *(a1 + 6), v14 = *(a1 + 5), a1[10] = &v12[v14], v15 = BET3FLT__ddcalloc(*(v4 + 8), v14, v13), (a1[12] = v15) != 0) && (v16 = heap_Calloc(*(v4 + 8), (2 * *(a1 + 5)), 4), (a1[11] = v16) != 0))
  {
    a1[13] = v16 + 4 * *(a1 + 5);
    if (a2)
    {
      BET3FLT__FreeSMatrices(a2);
      result = 0;
      v17 = *v9;
      v18 = *(a1 + 4);
      v19 = *(a1 + 6);
      *(a2 + 32) = *(a1 + 5);
      *(a2 + 48) = v19;
      *a2 = v17;
      *(a2 + 16) = v18;
      goto LABEL_12;
    }

    return 0;
  }

  else
  {
    BET3FLT__FreeSMatrices((a1 + 6));
    return 2229280778;
  }
}

uint64_t BET3FLT__InitPStreamParam(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  a1[6] = (2 * *(*(a1 + 4) + 32)) | 1;
  if (a2)
  {
    v5 = *(a2 + 40);
    if (v5)
    {
      if (a1[5] == *(a2 + 20) && a1[4] == *(a2 + 16))
      {
        *(a1 + 5) = v5;
        v6 = a1 + 2;
LABEL_12:
        result = 0;
        *v6 = 1;
        return result;
      }
    }
  }

  a1[2] = 0;
  v6 = a1 + 2;
  v7 = BET3FLT__ddcalloc(*(v4 + 8), a1[5], a1[4]);
  *(a1 + 5) = v7;
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = 2229280778;
  }

  if (a2 && v7)
  {
    BET3FLT__FreePStreamParam(a2);
    memcpy(a2, a1, 0x2D8uLL);
    goto LABEL_12;
  }

  return result;
}

void *BET3FLT__FreePStreamParam(void *result)
{
  if (*result)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      if (!*(result + 2))
      {
        v3 = *(result + 5);
        result = BET3FLT__dd_free(*(*result + 8), v2);
      }

      v1[5] = 0;
      *(v1 + 2) = 0;
    }
  }

  return result;
}

uint64_t select_float_bet3_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &ISelect_Bet3;
  return result;
}

uint64_t select_bet3_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2229280775;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 25957;
  }

  return result;
}

uint64_t select_bet3_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v5 = 2229280775;
  memset(v52, 0, sizeof(v52));
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v50);
    if ((inited & 0x80000000) != 0)
    {
      v5 = inited;
    }

    else if ((safeh_HandleCheck(a1, a2, 25957, 408) & 0x80000000) != 0)
    {
      v5 = 2229280776;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      log_OutText(*(v50 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjOpen", v12, v13, v14, v44);
      v15 = heap_Calloc(*(v50 + 8), 1, 6584);
      if (v15)
      {
        v20 = v15;
        *v15 = a3;
        v15[1] = a4;
        v21 = v50;
        v15[2] = v50;
        v15[3] = a1;
        Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v49);
        if ((Object & 0x80000000) != 0 || (v20[4] = *(v49 + 8), Object = objc_GetObject(*(v50 + 48), "LINGDB", &v49), (Object & 0x80000000) != 0))
        {
          v5 = Object;
          log_OutPublic(*(v20[2] + 32), "SELECT_BET3", 55001, 0, v23, v24, v25, v26, v45);
        }

        else
        {
          v27 = *(v49 + 8);
          v20[5] = v27;
          ObjOpen = BET3FLT__select_bet3_FeatureExtractObjOpen(a3, a4, v20[4], v27, v20 + 7);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          ObjOpen = select_bet3_loc_CreateDataBrkString(v50, v52);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v29 = v20[3];
          if (!v29 || (v30 = *(v29 + 48)) == 0)
          {
            v30 = *(v20[2] + 48);
          }

          ObjOpen = objc_GetAddRefCountedObject(v30, v52, select_bet3_loc_ObjcVoiceOpen, select_bet3_loc_ObjcVoiceClose, v50, &v49);
          if ((ObjOpen & 0x80000000) != 0 || (v31 = v50, v32 = *(v49 + 32), v20[6] = v32, ObjOpen = select_bet3_loc_SetSynthParams(v31, v32), (ObjOpen & 0x80000000) != 0))
          {
LABEL_27:
            v5 = ObjOpen;
          }

          else
          {
            v33 = *(v50 + 40);
            v47 = v20;
            v46 = xmmword_1F42D71E0;
            v48 = xmmword_1F42D71E0;
            v34 = paramc_ListenerAdd(v33, "frequencyhz", &v47);
            if ((v34 & 0x80000000) == 0)
            {
              v39 = 0;
              while (1)
              {
                v40 = off_1E81AD800[v39];
                if ((paramc_ParamGetInt(*(v50 + 40), v40, &v51) & 0x80000000) != 0)
                {
                  v51 = dword_1C382F2F8[v39];
                  v34 = paramc_ParamSetInt(*(v50 + 40), v40, v51);
                  if ((v34 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v34 = select_bet3_loc_ParamSet(v20, v40, v51);
                if ((v34 & 0x80000000) != 0)
                {
                  break;
                }

                v41 = *(v50 + 40);
                v47 = v20;
                v48 = v46;
                v5 = paramc_ListenerAdd(v41, v40, &v47);
                if ((v5 & 0x80000000) != 0)
                {
                  goto LABEL_32;
                }

                if (++v39 == 3)
                {
                  *a5 = v20;
                  *(a5 + 8) = 25958;
                  goto LABEL_29;
                }
              }
            }

            v5 = v34;
LABEL_32:
            log_OutPublic(*(v20[2] + 32), "SELECT_BET3", 55002, "%s%s", v35, v36, v37, v38, "param");
          }
        }

        *a5 = v20;
        *(a5 + 8) = 25958;
        select_bet3_ObjClose(v20, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
      }

      else
      {
        log_OutPublic(*(v50 + 32), "SELECT_BET3", 55000, 0, v16, v17, v18, v19, v45);
        v5 = 2229280778;
      }

LABEL_29:
      log_OutText(*(v50 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjOpen: %x", v36, v37, v38, v5);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t select_bet3_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 25958, 6584);
  if (v3 < 0)
  {
    return 2229280776;
  }

  LODWORD(v7) = v3;
  v8 = a1[2];
  log_OutText(*(v8 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjClose", v4, v5, v6, v30);
  v9 = 0;
  v31 = xmmword_1F42D71E0;
  do
  {
    v10 = off_1E81AD820[v9];
    v11 = *(v8 + 40);
    v32 = a1;
    v33 = v31;
    v12 = paramc_ListenerRemove(v11, v10, &v32);
    if (v7 > -1 && v12 < 0)
    {
      v7 = v12;
    }

    else
    {
      v7 = v7;
    }

    ++v9;
  }

  while (v9 != 4);
  v14 = a1[6];
  if (v14)
  {
    v15 = a1[3];
    if (!v15 || (v16 = *(v15 + 48)) == 0)
    {
      v16 = *(a1[2] + 48);
    }

    v17 = objc_ReleaseObject(v16, v14);
    a1[6] = 0;
    if (v7 > -1 && v17 < 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = v7;
    }
  }

  v19 = a1[7];
  if (v19)
  {
    ObjClose = BET3FLT__select_bet3_FeatureExtractObjClose(v19);
    if (v7 > -1 && ObjClose < 0)
    {
      v7 = ObjClose;
    }

    else
    {
      v7 = v7;
    }
  }

  if (a1[5])
  {
    v22 = objc_ReleaseObject(*(v8 + 48), "LINGDB");
    if (v7 > -1 && v22 < 0)
    {
      v7 = v22;
    }

    else
    {
      v7 = v7;
    }
  }

  if (a1[4])
  {
    v24 = objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
    if (v7 > -1 && v24 < 0)
    {
      v7 = v24;
    }

    else
    {
      v7 = v7;
    }
  }

  heap_Free(*(v8 + 8), a1);
  log_OutText(*(v8 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjClose: %x", v26, v27, v28, v7);
  return v7;
}

uint64_t select_bet3_ObjReopen(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    v17 = 2229280776;
  }

  else
  {
    v6 = a1[2];
    log_OutText(*(v6 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjReopen", v3, v4, v5, v20);
    DataBrkString = select_bet3_loc_CreateDataBrkString(v6, v22);
    if ((DataBrkString & 0x80000000) == 0)
    {
      v11 = a1[3];
      if (!v11 || (v12 = *(v11 + 48)) == 0)
      {
        v12 = *(a1[2] + 48);
      }

      DataBrkString = objc_GetAddRefCountedObject(v12, v22, select_bet3_loc_ObjcVoiceOpen, select_bet3_loc_ObjcVoiceClose, v6, &v21);
      if ((DataBrkString & 0x80000000) == 0)
      {
        v13 = a1[6];
        if (v13)
        {
          v14 = a1[3];
          if (!v14 || (v15 = *(v14 + 48)) == 0)
          {
            v15 = *(a1[2] + 48);
          }

          objc_ReleaseObject(v15, v13);
        }

        v16 = *(v21 + 32);
        a1[6] = v16;
        DataBrkString = select_bet3_loc_SetSynthParams(v6, v16);
      }
    }

    v17 = DataBrkString;
    log_OutText(*(v6 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjReopen: %x", v8, v9, v10, DataBrkString);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t select_bet3_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  synstrmaux_InitStreamOpener(a1 + 72, *(*(a1 + 16) + 32), "SELECT_BET3");
  synstrmaux_RegisterInStream((a1 + 72), "application/x-realspeak-cspp-sptchk;version=4.0", 1, a1 + 928);
  synstrmaux_RegisterInStream((a1 + 72), "application/x-realspeak-cspp-sgt;version=4.0", 1, a1 + 944);
  synstrmaux_RegisterOutStream((a1 + 72), "application/x-realspeak-bet3-speech-frames;version=5.0", a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 72), "application/x-realspeak-markers-pp;version=4.0", a1 + 912);
  v8 = synstrmaux_OpenStreams((a1 + 72), *(a1 + 32), a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    select_bet3_ProcessEnd(a1, a2);
  }

  *(a1 + 6576) = 0;
  return v8;
}

uint64_t select_bet3_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v61 = 0;
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *a5 = 1;
  v9 = *(a1 + 6544);
  if (*(a1 + 4616))
  {
    if (!v9)
    {
      v10 = BET3FLT__ParamGenFrames((a1 + 4616), (*(a1 + 48) + 8112), (a1 + 6544));
      if ((v10 & 0x80000000) != 0)
      {
        v24 = v10;
      }

      else
      {
        v11 = *(a1 + 6552);
        if (!v11)
        {
          goto LABEL_66;
        }

        v12 = *(a1 + 6564);
        v13 = *(a1 + 6560);
        if (v13 <= v12)
        {
          goto LABEL_66;
        }

        v14 = v11 + 32 * v12;
        v15 = *(a1 + 5228);
        v16 = *(a1 + 5232);
        if (v16 >= v15)
        {
          v17 = 0;
          v20 = (v11 + 32 * v12);
        }

        else
        {
          v17 = 0;
          v18 = *(a1 + 6576);
          v19 = v12 + 1;
          v20 = (v11 + 32 * v12);
          do
          {
            if (*v20 == 33)
            {
              v21 = *(a1 + 6572);
              v22 = *(*(a1 + 5216) + 528 * v16 + 24);
              v20[4] = v22;
              *(a1 + 6572) = v22 + v21;
              *(a1 + 5232) = ++v16;
            }

            else
            {
              if (*v20 == 8)
              {
                v18 = v20[6] / *(*(a1 + 48) + 152);
                *(a1 + 6576) = v18;
              }

              v21 = *(a1 + 6572);
              v20[4] = 0;
            }

            if (v18 > v21)
            {
              *(a1 + 6576) = v21;
              v18 = v21;
            }

            v20[3] = v21 - v18;
            v20 += 8;
            ++v17;
            if (v16 >= v15)
            {
              break;
            }
          }

          while (v19++ < v13);
        }

        if (*(a1 + 6544))
        {
          v45 = v17 + v12;
          if (v17 + v12 < v13)
          {
            v46 = *(a1 + 6572);
            v47 = v20 + 4;
            do
            {
              *(v47 - 1) = v46;
              *v47 = 0;
              v47 += 8;
              ++v45;
            }

            while (v45 < v13);
            v17 = v13 - v12;
          }
        }

        if (!v17)
        {
LABEL_66:
          v60 = a1 + 4616;
          v24 = (*(*(a1 + 32) + 104))(*(a1 + 896), *(a1 + 904), &v60, 8);
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", v53, v54, v55, v56, "contentType");
          }

          else if (*(a1 + 6544))
          {
            ProcessEnd = BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
            if (ProcessEnd >= 0)
            {
              v24 = v24;
            }

            else
            {
              v24 = ProcessEnd;
            }

            v58 = *(a1 + 6552);
            if (v58)
            {
              heap_Free(*(*(a1 + 16) + 8), v58);
              *(a1 + 6552) = 0;
              *(a1 + 6560) = 0;
              *(a1 + 6568) = 0;
            }

            v44 = 1;
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v48 = (*(*(a1 + 32) + 104))(*(a1 + 912), *(a1 + 920), v14, (32 * v17));
        if ((v48 & 0x80000000) == 0)
        {
          *(a1 + 6564) += v17;
          goto LABEL_66;
        }

        v24 = v48;
        log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", v49, v50, v51, v52, "contentType");
        *(a1 + 6564) += v17;
      }

LABEL_75:
      v44 = 2;
      goto LABEL_76;
    }
  }

  else if (!v9)
  {
    goto LABEL_23;
  }

  BET3FLT__DeInitVStream((a1 + 4616));
  *(a1 + 6544) = 0;
LABEL_23:
  v24 = BET3FLT__select_bet3_FeatureExtractProcessStart(*(a1 + 56), *(a1 + 48) + 9184, a3, a4, (a1 + 960), &v61);
  if ((v24 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55005, "%s%x", v25, v26, v27, v28, "lhError");
  }

  else if (*(a1 + 970) > 1)
  {
    *(a1 + 6564) = 0;
    inited = BET3FLT__InitVStream(*(a1 + 16), (a1 + 4616), (*(a1 + 48) + 128));
    if ((inited & 0x80000000) != 0 || (*(a1 + 4624) = a1 + 960, inited = BET3FLT__LoadVStream(a1 + 4616, *(a1 + 48) + 8112, *(a1 + 48) + 128), (inited & 0x80000000) != 0) || (inited = BET3FLT__select_bet3_FeatureExtractProcess(*(a1 + 56), *(a1 + 48) + 128, a3, a4, *(a1 + 928), *(a1 + 936), *(a1 + 944), *(a1 + 952), (a1 + 64), a1 + 960, (a1 + 6552), (a1 + 6560)), (inited & 0x80000000) != 0))
    {
      v24 = inited;
    }

    else
    {
      v24 = BET3FLT__ParamGenStart(a1 + 4616, (*(a1 + 48) + 8112), (*(a1 + 48) + 128));
      if ((v24 & 0x80000000) == 0)
      {
        v44 = 4;
LABEL_76:
        *a5 = v44;
        return v24;
      }
    }

    BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    BET3FLT__DeInitVStream((a1 + 4616));
  }

  else
  {
    v29 = v61;
    if (v61)
    {
      if (*(a1 + 912))
      {
        if (*(a1 + 4480))
        {
          v30 = *(a1 + 4472);
          v31 = *(a1 + 920);
          LODWORD(v24) = (*(*(a1 + 32) + 104))();
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", v32, v33, v34, v35, "contentType");
          }
        }
      }

      v36 = synstrmaux_CloseOutStreamsOnly((a1 + 72), *(a1 + 32));
      if (v36 < 0 && v24 > -1)
      {
        LODWORD(v24) = v36;
      }

      v29 = 1;
    }

    *a5 = v29;
    v38 = BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    if (v38 >= 0 || v24 <= -1)
    {
      v40 = v24;
    }

    else
    {
      v40 = v38;
    }

    v41 = (*(*(a1 + 40) + 64))(a3, a4);
    if (v40 > -1 && v41 < 0)
    {
      return v41;
    }

    else
    {
      return v40;
    }
  }

  return v24;
}

uint64_t select_bet3_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  BET3FLT__DeInitVStream((a1 + 4616));
  *(a1 + 6544) = 0;
  BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
  v3 = *(a1 + 6552);
  if (v3)
  {
    heap_Free(*(*(a1 + 16) + 8), v3);
    *(a1 + 6552) = 0;
    *(a1 + 6560) = 0;
    *(a1 + 6568) = 0;
  }

  *(a1 + 6572) = 0;
  v4 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 72), v4);
}

uint64_t select_bet3_loc_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  __src = 0;
  memset(__dst, 0, 408);
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    VData = inited;
  }

  else
  {
    memcpy(__dst, __src, 0x198uLL);
    __dst[2] = *(a5 + 32);
    v45 = 0;
    *(a4 + 32) = 0;
    v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "FLT3", 1031, &v45);
    if (v11 < 0)
    {
      VData = (v11 & 0x1FFFu) - 2065686528;
    }

    else
    {
      v16 = heap_Calloc(*(&__dst[0] + 1), 1, 37800);
      if (v16)
      {
        __strcpy_chk();
        __strcpy_chk();
        *&v17 = -1;
        *(&v17 + 1) = -1;
        *(v16 + 11328) = v17;
        *(v16 + 11344) = v17;
        *(v16 + 11360) = v17;
        *(v16 + 11376) = v17;
        *(v16 + 11392) = v17;
        *(v16 + 11408) = v17;
        *(v16 + 11424) = v17;
        *(v16 + 11440) = v17;
        *(v16 + 11456) = v17;
        *(v16 + 11472) = v17;
        *(v16 + 11488) = v17;
        *(v16 + 11504) = v17;
        *(v16 + 11520) = v17;
        *(v16 + 11536) = v17;
        *(v16 + 11552) = v17;
        *(v16 + 11568) = v17;
        *(v16 + 12500) = v17;
        *(v16 + 12232) = v17;
        *(v16 + 12248) = v17;
        *(v16 + 12264) = v17;
        *(v16 + 12280) = v17;
        *(v16 + 12296) = v17;
        *(v16 + 12312) = v17;
        *(v16 + 12328) = v17;
        *(v16 + 12344) = v17;
        *(v16 + 12360) = v17;
        *(v16 + 12376) = v17;
        *(v16 + 12392) = v17;
        *(v16 + 12408) = v17;
        *(v16 + 12424) = v17;
        *(v16 + 12440) = v17;
        *(v16 + 12456) = v17;
        *(v16 + 12472) = v17;
        *(v16 + 12488) = v17;
        *(v16 + 12576) = v17;
        *(v16 + 12560) = v17;
        *(v16 + 11708) = 1;
        BET3FLT__InitVParam((v16 + 128));
        *&v18 = -1;
        *(&v18 + 1) = -1;
        *(v16 + 8092) = v18;
        *(v16 + 8080) = v18;
        *(v16 + 8064) = v18;
        *(v16 + 8048) = v18;
        *(v16 + 8032) = v18;
        *(v16 + 8016) = v18;
        *(v16 + 8000) = v18;
        *(v16 + 7984) = v18;
        *(v16 + 7968) = v18;
        *(v16 + 7952) = v18;
        *(v16 + 7936) = v18;
        *(v16 + 7920) = v18;
        *(v16 + 7904) = v18;
        *(v16 + 7888) = v18;
        *(v16 + 7872) = v18;
        *(v16 + 7856) = v18;
        *(v16 + 7840) = v18;
        *(v16 + 7824) = v18;
        *(v16 + 7808) = v18;
        strcpy((v16 + 7792), "mlsa");
        memset(v47, 0, sizeof(v47));
        v20 = select_bet3_ParseRiff(__dst, v16, v45, 0, v47, 0, 0, v19);
        if ((v20 & 0x80000000) != 0)
        {
          VData = v20;
          v46 = 0;
          if (LOBYTE(v47[0]))
          {
            v39 = 0;
            do
            {
              __strcat_chk();
              __strcat_chk();
              ++v39;
            }

            while (*(v47 + 5 * v39));
          }

          log_OutPublic(*&__dst[2], "SELECT_BET3", 55003, "%s%s%s%s%s%x", v21, v22, v23, v24, "file");
        }

        else if (*(v16 + 7519) && *(v16 + 260) > 0)
        {
          v25 = *(v16 + 11648);
          if (v25)
          {
            v26 = *v25;
            if (*v25)
            {
              v27 = 0;
              v28 = 0;
              do
              {
                *(v16 + 5432 + 8 * v27) = v26;
                v27 = ++v28;
                v26 = *(*(v16 + 11648) + 8 * v28);
              }

              while (v26);
            }
          }

          v29 = BET3FLT__InitVData(__dst, (v16 + 8112), v16 + 128);
          if ((v29 & 0x80000000) != 0)
          {
            VData = v29;
          }

          else
          {
            VData = BET3FLT__LoadVData(__dst, v16 + 8112, v16 + 128);
            if ((VData & 0x80000000) == 0)
            {
              *(v16 + 12762) = 1;
              *&v38 = 0x100000001;
              *(&v38 + 1) = 0x100000001;
              *(v16 + 12352) = v38;
              *(v16 + 12368) = v38;
              *(v16 + 12384) = 0x100000001;
              *(v16 + 12396) = 1;
              *(v16 + 12412) = v38;
              *(v16 + 12428) = v38;
              *(v16 + 12444) = v38;
              *(v16 + 12460) = v38;
              *(v16 + 12476) = v38;
              *(v16 + 12492) = 1;
              *(v16 + 12496) = 0x100000001;
              *(v16 + 11934) = 33620481;
              *(v16 + 11961) = 1;
              *(v16 + 11939) = 0x101010101010101;
              *(v16 + 11947) = 0x101010101010101;
              *(v16 + 11983) = -1;
              *(v16 + 11987) = -255;
              *(v16 + 11997) = 0x101010101010101;
              *(v16 + 12002) = 0x101010101010101;
              *(v16 + 12105) = 0x101010101010101;
              *(v16 + 12113) = 0x101010101010101;
              *(v16 + 12121) = 0x101010101010101;
              if ((*(v16 + 12288) & 0x80000000) == 0)
              {
                *(v16 + 11963) = 257;
              }

              if ((*(v16 + 12304) & 0x80000000) == 0)
              {
                *(v16 + 11965) = 1;
              }

              if ((*(v16 + 12320) & 0x80000000) == 0)
              {
                *(v16 + 11966) = 1;
              }

              if ((*(v16 + 12324) & 0x80000000) == 0)
              {
                *(v16 + 11967) = 1;
              }

              if ((*(v16 + 12328) & 0x80000000) == 0)
              {
                *(v16 + 11968) = 1;
              }

              if ((*(v16 + 12332) & 0x80000000) == 0)
              {
                *(v16 + 11969) = 1;
              }

              if ((*(v16 + 12252) & 0x80000000) == 0)
              {
                *(v16 + 11957) = 257;
              }

              if ((*(v16 + 12576) & 0x80000000) == 0 || (*(v16 + 12580) & 0x80000000) == 0)
              {
                *(v16 + 11956) = 8;
              }

              if ((*(v16 + 12256) & 0x80000000) == 0)
              {
                *(v16 + 11959) = 257;
              }

              if (*(v16 + 11744))
              {
                *(v16 + 11978) = 9;
              }

              if ((*(v16 + 12352) & 0x80000000) == 0)
              {
                *(v16 + 11997) = 1;
              }

              if ((*(v16 + 12356) & 0x80000000) == 0)
              {
                *(v16 + 11998) = 1;
              }

              if ((*(v16 + 12360) & 0x80000000) == 0)
              {
                *(v16 + 11999) = 1;
              }

              *(v16 + 12008) = 257;
              *(v16 + 12000) = 16843009;
              *(v16 + 12003) = 16843009;
            }
          }
        }

        else
        {
          VData = 2229280772;
          log_OutPublic(*&__dst[2], "SELECT_BET3", 55006, "%s%s", v21, v22, v23, v24, "file");
        }
      }

      else
      {
        log_OutPublic(*&__dst[2], "SELECT_BET3", 55000, 0, v12, v13, v14, v15, v42);
        VData = 2229280778;
      }

      if (v45)
      {
        ssftriff_reader_ObjClose(v45, v30, v31, v32, v33, v34, v35, v36);
        v45 = 0;
      }

      if ((VData & 0x80000000) != 0)
      {
        if ((VData & 0x7FF01FFF) == 0xA200014)
        {
          VData = 2229280772;
        }

        else
        {
          VData = VData;
        }

        select_bet3_loc_VoiceClose(__dst, v16);
      }

      else
      {
        *(a4 + 32) = v16;
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  return VData;
}

uint64_t select_bet3_loc_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v6 = 0;
  inited = InitRsrcFunction(a1, a2, &v6);
  if ((inited & 0x80000000) == 0)
  {
    select_bet3_loc_VoiceClose(v6, *(a3 + 32));
  }

  return inited;
}

uint64_t select_bet3_loc_ParamCheckChange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "frequencyhz"))
  {
    if (*(a1 + 896))
    {
      result = 2229280785;
      goto LABEL_7;
    }
  }

  else if (!strcmp(__s1, "waitfactor") && (LH_atoi(a3) & 0x80000000) != 0)
  {
    result = 2229280783;
LABEL_7:
    *a4 = 0;
    return result;
  }

  return 0;
}

uint64_t select_bet3_loc_ParamLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  if (!strcmp(__s1, "frequencyhz"))
  {
    if (*(a1 + 896))
    {
      return 2229280785;
    }

    else
    {
      return 0;
    }
  }

  if (!strcmp(__s1, "rate") || !strcmp(__s1, "waitfactor"))
  {
    v11 = 0;
    if (strcmp(__s1, "waitfactor") || (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v11), v11 != 1))
    {
      v7 = LH_atoi(a3);
      v8 = a1;
      v9 = __s1;
      return select_bet3_loc_ParamSet(v8, v9, v7);
    }

    return 0;
  }

  if (strcmp(__s1, "finalsentencefound"))
  {
    return 0;
  }

  if (LH_atou(a3) != 1)
  {
    v10 = 0;
    paramc_ParamGetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", &v10);
    v7 = v10;
    v9 = "waitfactor";
    v8 = a1;
    return select_bet3_loc_ParamSet(v8, v9, v7);
  }

  paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", *(a1 + 64));

  return select_bet3_loc_ParamSet(a1, "waitfactor", 0);
}

uint64_t select_bet3_loc_CreateDataBrkString(uint64_t a1, char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  __s2 = 0;
  strcpy(a2, "select");
  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &__s2);
  if (Str < 0 || (*&a2[strlen(a2)] = 47, strcat(a2, __s2), Str = paramc_ParamGetStr(*(a1 + 40), "voicemodel", &__s2), Str < 0) || (*&a2[strlen(a2)] = 47, strcat(a2, __s2), Str = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v10), Str < 0))
  {
    v6 = Str & 0x1FFF | 0x84E02000;
  }

  else
  {
    *&a2[strlen(a2)] = 102;
    v5 = strlen(a2);
    LH_itoa(v10 / 1000, &a2[v5], 0xAu);
    v6 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__s2);
    if ((v6 & 0x80000000) == 0)
    {
      if (__s2)
      {
        if (*__s2)
        {
          v6 = brokeraux_ComposeBrokerString(a1, a2, 0, 0, 0, 0, 0, __src, 0x80uLL);
          if ((v6 & 0x80000000) == 0)
          {
            strcpy(a2, __src);
          }
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t select_bet3_loc_SetSynthParams(uint64_t a1, uint64_t a2)
{
  v12 = a2 + 7808;
  v4 = paramc_ParamSetStr(*(a1 + 40), "synth_type", (a2 + 7792));
  if ((v4 & 0x80000000) != 0)
  {
    v10 = v4;
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%s%s%x", v5, v6, v7, v8, "parameter");
  }

  else
  {
    v9 = paramc_ParamSetPermanent(*(a1 + 40), "mrcc_synthparam_ref_ptr", &v12, 8uLL);
    if ((v9 & 0x80000000) == 0)
    {
      v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicealpha", *(a2 + 128));
      if ((v9 & 0x80000000) == 0)
      {
        v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicebeta", *(a2 + 132));
        if ((v9 & 0x80000000) == 0)
        {
          v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicevol", *(a2 + 164));
          if ((v9 & 0x80000000) == 0)
          {
            v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicevuvrelamp", *(a2 + 140));
            if ((v9 & 0x80000000) == 0)
            {
              v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicemvfboost", *(a2 + 168));
              if ((v9 & 0x80000000) == 0)
              {
                v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicef0std", *(a2 + 176));
                if ((v9 & 0x80000000) == 0)
                {
                  v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicef0mean", *(a2 + 180));
                  if ((v9 & 0x80000000) == 0)
                  {
                    v9 = select_bet3_loc_SetSynthParamInt(a1, "bet2voiceframesize", *(a2 + 152));
                    if ((v9 & 0x80000000) == 0)
                    {
                      v9 = select_bet3_loc_SetSynthParamInt(a1, "bet2voiceorder", *(a2 + 144));
                      if ((v9 & 0x80000000) == 0)
                      {
                        v9 = select_bet3_loc_SetSynthParamArrayOfBet3_int32(a1, *(a2 + 7784), *(a2 + 144) + 1);
                        if ((v9 & 0x80000000) == 0)
                        {
                          return select_bet3_loc_SetSynthParamInt(a1, "voicepitchavghz", *(a2 + 184));
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
    }

    return v9;
  }

  return v10;
}

uint64_t select_bet3_loc_ParamSet(uint64_t a1, char *__s1, uint64_t a3)
{
  if (strcmp(__s1, "waitfactor"))
  {
    return 0;
  }

  if ((a3 & 0x80000000) == 0)
  {
    *(a1 + 64) = a3;
    log_OutText(*(*(a1 + 16) + 32), "SELECT_BET3", 3, 0, "Set wait factor %d", v5, v6, v7, a3);
    return 0;
  }

  return 2229280783;
}

uint64_t select_bet3_ParseRiff(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v246 = a7;
  v12 = a1;
  StringZ = 0;
  v261 = *MEMORY[0x1E69E9840];
  __s = (a2 + 9786);
  v257 = 0;
  v256 = 0;
  *__src = 0;
  v250 = 5 * a4;
  v227 = a2 + 5192;
  v230 = a2 + 432;
  v231 = a2 + 3992;
  v228 = a2 + 2792;
  v229 = a2 + 1432;
  v233 = a2 + 472;
  v234 = a2 + 2552;
  v236 = a2 + 2272;
  v237 = a2 + 352;
  v235 = a2 + 2232;
  v239 = a2 + 2472;
  v240 = a2 + 392;
  v238 = a2 + 2312;
  v241 = a2 + 12560;
  v243 = a2 + 12232;
  v242 = a2 + 37584;
  v244 = a2 + 11328;
  v232 = a2 + 272;
  v14 = 0x49535F454D415246;
  while ((StringZ & 0x80000000) == 0)
  {
    StringZ = ssftriff_reader_OpenChunk(a3, __src, &v257, 0, a5, a6, a7, a8);
    if ((StringZ & 0x80000000) != 0)
    {
      break;
    }

    strcpy(&a5[v250], __src);
    if (a4 == 1)
    {
      if (strcmp(a5, "FEEX"))
      {
        if (strcmp(a5, "STM3"))
        {
          if (*__src ^ 0x434E5953 | v256)
          {
            goto LABEL_19;
          }

          v259[0] = 0;
          *__s1 = 0;
          if (a6)
          {
            v34 = a6 + ssftriff_reader_GetPosition(a3) - v246;
            *__s1 = v34;
          }

          else
          {
            ChunkData = ssftriff_reader_GetChunkData(a3, v257, __s1, v29, v30, v31, v32, v33);
            if ((ChunkData & 0x80000000) != 0)
            {
              StringZ = ChunkData;
LABEL_672:
              v173 = 1;
              v226 = StringZ;
              goto LABEL_739;
            }

            v34 = *__s1;
          }

          __dst[0] = 0;
          v259[0] = 256;
          StringZ = ssftriff_reader_ReadStringZ(a3, v34, v257, 0, __dst, v259);
          if ((StringZ & 0x80000000) != 0)
          {
            goto LABEL_608;
          }

          if (*__dst == 0x59545F48544E5953 && *&__dst[3] == 0x455059545F4854)
          {
            v172 = v259[0];
            v259[0] = 256;
            StringZ = ssftriff_reader_ReadStringZ(a3, *__s1, v257, v172, __dst, v259);
            if ((StringZ & 0x80000000) != 0)
            {
LABEL_608:
              v173 = 3;
              goto LABEL_739;
            }

            __strcpy_chk();
          }

          goto LABEL_23;
        }

        v48 = v14;
        v259[0] = 0;
        v49 = *(a2 + 260);
        if (*__src ^ 0x33435453 | v256)
        {
          if (!(*__src ^ 0x33455254 | v256))
          {
            v177 = v234;
            goto LABEL_612;
          }

          if (!(*__src ^ 0x33464450 | v256))
          {
            *__s1 = 0;
            if (a6)
            {
              v193 = a6 + ssftriff_reader_GetPosition(a3) - v246;
              *__s1 = v193;
            }

            else
            {
              v214 = ssftriff_reader_GetChunkData(a3, v257, __s1, v29, v30, v31, v32, v33);
              if ((v214 & 0x80000000) != 0)
              {
                StringZ = v214;
LABEL_729:
                v173 = 1;
                v226 = StringZ;
LABEL_739:
                if (v173 != 3)
                {
                  StringZ = v226;
                  goto LABEL_746;
                }

                break;
              }

              v193 = *__s1;
            }

            v259[0] = 256;
            LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, v193, v257, 0, __dst, v259);
            if ((StringZ & 0x80000000) != 0)
            {
              v178 = 0;
            }

            else
            {
              v215 = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
              v216 = *(v233 + 4 * v49);
              *(v229 + 40 * v49 + 8 * v216) = v215;
              if ((v259[0] & 3) != 0)
              {
                v259[0] -= v259[0] | 0xFFFFFFFC;
              }

              v178 = v228 + 120 * v49 + 24 * v216;
              *(v233 + 4 * v49) = v216 + 1;
            }

            goto LABEL_709;
          }

          if (!(*__src ^ 0x334E4957 | v256))
          {
            v207 = *(v230 + 4 * v49);
            v178 = v231 + 120 * v49 + 24 * v207;
            *(v230 + 4 * v49) = v207 + 1;
            goto LABEL_709;
          }

          if (!(*__src ^ 0x334B4243 | v256))
          {
            v177 = v227;
LABEL_612:
            v178 = v177 + 24 * v49;
LABEL_709:
            v14 = v48;
            if ((StringZ & 0x80000000) != 0 || !v178)
            {
              v12 = a1;
            }

            else
            {
              *__dst = 0;
              if (a6)
              {
                v217 = a6 + ssftriff_reader_GetPosition(a3) - v246;
              }

              else
              {
                StringZ = ssftriff_reader_GetChunkData(a3, v257, __dst, v29, v30, v31, v32, v33);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_729;
                }

                v217 = *__dst;
              }

              v14 = v48;
              v218 = v259[0];
              *(v178 + 8) = v217 + v259[0];
              *(v178 + 16) = v257 - v218;
              v12 = a1;
            }

            goto LABEL_23;
          }

          v50 = 0;
          goto LABEL_734;
        }

        LODWORD(v253) = 0;
        *__s1 = 0;
        if (a6)
        {
          v169 = a6 + ssftriff_reader_GetPosition(a3) - v246;
          *__s1 = v169;
        }

        else
        {
          StringZ = ssftriff_reader_GetChunkData(a3, v257, __s1, v29, v30, v31, v32, v33);
          if ((StringZ & 0x80000000) != 0)
          {
            goto LABEL_729;
          }

          v169 = *__s1;
        }

        v196 = v259[0];
        *(v237 + 4 * v49) = *(v169 + v259[0]);
        v259[0] = v196 + 4;
        v197 = *(v169 + v196 + 4);
        *(v240 + 4 * v49) = v197;
        v259[0] = v196 + 8;
        *(v236 + 4 * v49) = *(v169 + v196 + 8) != 0;
        v259[0] = v196 + 9;
        *(v235 + 4 * v49) = *(v169 + v196 + 9);
        v198 = v196 + 13;
        v259[0] = v196 + 13;
        if (v197 < 1)
        {
LABEL_659:
          __dst[0] = 0;
          LODWORD(v253) = 256;
          LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, v169, v257, v198, __dst, &v253);
          if ((StringZ & 0x80000000) == 0)
          {
            v201 = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
            *(v232 + 8 * v49) = v201;
            if (!v201)
            {
              v173 = 3;
              StringZ = 2229280778;
              goto LABEL_739;
            }

            v259[0] += v253;
            if (*(v240 + 4 * v49) >= 1)
            {
              v202 = 0;
              while (1)
              {
                __dst[0] = 0;
                LODWORD(v253) = 256;
                v203 = ssftriff_reader_ReadStringZ(a3, *__s1, v257, v259[0], __dst, &v253);
                if (v203 < 0)
                {
                  break;
                }

                *(*(v239 + 8 * v49) + 8 * v202) = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                if (!*(*(v239 + 8 * v49) + 8 * v202))
                {
                  goto LABEL_730;
                }

                v259[0] += v253;
                __dst[0] = 0;
                LODWORD(v253) = 256;
                LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, *__s1, v257, v259[0], __dst, &v253);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_733;
                }

                *(*(v238 + 8 * v49) + 8 * v202) = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                if (!*(*(v238 + 8 * v49) + 8 * v202))
                {
LABEL_730:
                  LODWORD(StringZ) = -2065686518;
                  goto LABEL_733;
                }

                v259[0] += v253;
                if (++v202 >= *(v240 + 4 * v49))
                {
                  goto LABEL_733;
                }
              }

              LODWORD(StringZ) = v203;
            }
          }
        }

        else
        {
          v199 = heap_Calloc(*(a1 + 8), v197, 8);
          *(v239 + 8 * v49) = v199;
          if (!v199)
          {
            LODWORD(StringZ) = -2065686518;
          }

          if ((StringZ & 0x80000000) == 0)
          {
            v200 = heap_Calloc(*(a1 + 8), *(v240 + 4 * v49), 8);
            *(v238 + 8 * v49) = v200;
            LODWORD(StringZ) = -2065686518;
            if (v200)
            {
              v169 = *__s1;
              v198 = v259[0];
              goto LABEL_659;
            }
          }
        }

LABEL_733:
        v50 = 1;
LABEL_734:
        v12 = a1;
        v14 = v48;
        if (!v50)
        {
          goto LABEL_19;
        }

        goto LABEL_23;
      }

      if (!(*__src ^ 0x54414356 | v256))
      {
        *__dst = 0;
        if (a6)
        {
          *__dst = a6 + ssftriff_reader_GetPosition(a3) - v246;
        }

        else
        {
          v179 = ssftriff_reader_GetChunkData(a3, v257, __dst, v24, v25, v26, v27, v28);
          if ((v179 & 0x80000000) != 0)
          {
            StringZ = v179;
            goto LABEL_746;
          }
        }

        v20 = v12;
        v21 = a2;
        v22 = a3;
        v23 = 2;
        goto LABEL_615;
      }

      if (*__src ^ 0x504F4256 | v256)
      {
        if (!(*__src ^ 0x33455250 | v256))
        {
          *__dst = 0;
          if (a6)
          {
            v40 = v14;
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - v246;
          }

          else
          {
            StringZ = ssftriff_reader_GetChunkData(a3, v257, __dst, v24, v25, v26, v27, v28);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_746;
            }

            v40 = v14;
          }

          v208 = v257;
          if (v257 >= 2)
          {
            v209 = 0;
            do
            {
              if (*(*__dst + 2 * v209) < 0x47u)
              {
                *(v243 + 4 * *(*__dst + 2 * v209)) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown preselection feature: %u for %s", v174, v175, v176, *(*__dst + 2 * v209));
                v208 = v257;
              }

              ++v209;
            }

            while (v208 >> 1 > v209);
          }

LABEL_700:
          v12 = a1;
LABEL_22:
          v14 = v40;
          goto LABEL_23;
        }

        if (!(*__src ^ 0x33415254 | v256))
        {
          *__dst = 0;
          if (a6)
          {
            v40 = v14;
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - v246;
          }

          else
          {
            StringZ = ssftriff_reader_GetChunkData(a3, v257, __dst, v24, v25, v26, v27, v28);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_746;
            }

            v40 = v14;
          }

          v212 = v257;
          if (v257 >= 2)
          {
            v213 = 0;
            do
            {
              if (*(*__dst + 2 * v213) < 8u)
              {
                *(v241 + 4 * *(*__dst + 2 * v213)) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown transition feature: %u for %s", v190, v191, v192, *(*__dst + 2 * v213));
                v212 = v257;
              }

              ++v213;
            }

            while (v212 >> 1 > v213);
          }

          goto LABEL_700;
        }

        if (*__src ^ 0x334D4850 | v256)
        {
          goto LABEL_19;
        }

        *__dst = 0;
        if (a6)
        {
          v47 = (a6 + ssftriff_reader_GetPosition(a3) - v246);
          *__dst = v47;
        }

        else
        {
          StringZ = ssftriff_reader_GetChunkData(a3, v257, __dst, v24, v25, v26, v27, v28);
          if ((StringZ & 0x80000000) != 0)
          {
            goto LABEL_746;
          }

          v47 = *__dst;
        }

        if (v257 >= 0x100)
        {
          v194 = 256;
        }

        else
        {
          v194 = v257;
        }

        v195 = 7484;
      }

      else
      {
        *__dst = 0;
        if (a6)
        {
          v47 = (a6 + ssftriff_reader_GetPosition(a3) - v246);
          *__dst = v47;
        }

        else
        {
          StringZ = ssftriff_reader_GetChunkData(a3, v257, __dst, v24, v25, v26, v27, v28);
          if ((StringZ & 0x80000000) != 0)
          {
            goto LABEL_746;
          }

          v47 = *__dst;
        }

        if (v257 >= 0xF8)
        {
          v194 = 248;
        }

        else
        {
          v194 = v257;
        }

        v195 = 11684;
      }

      memcpy((a2 + v195), v47, v194);
    }

    else if (a4)
    {
      if (strcmp(a5, "FEEX") || strcmp(a5 + 5, "VCAT"))
      {
LABEL_19:
        v40 = v14;
        v41 = 0;
        __dst[0] = 0;
        do
        {
          __strcat_chk();
          __strcat_chk();
          ++v41;
        }

        while (a4 >= v41);
        v12 = a1;
        log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown data: %s for %s", v42, v43, v44, __dst);
        goto LABEL_22;
      }

      *__dst = 0;
      if (a6)
      {
        *__dst = a6 + ssftriff_reader_GetPosition(a3) - v246;
      }

      else
      {
        StringZ = ssftriff_reader_GetChunkData(a3, v257, __dst, v35, v36, v37, v38, v39);
        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_746;
        }
      }

      if (*__src ^ 0x48504C41 | v256)
      {
        if (*__src ^ 0x43494F56 | v256)
        {
          if (*__src ^ 0x4F564F43 | v256)
          {
            if (*__src ^ 0x45464153 | v256)
            {
              if (*__src ^ 0x534F4C50 | v256)
              {
                if (*__src ^ 0x46464944 | v256)
                {
                  if (*__src ^ 0x464E4547 | v256)
                  {
                    if (*__src ^ 0x41474154 | v256)
                    {
                      if (*__src ^ 0x414F5442 | v256)
                      {
                        goto LABEL_19;
                      }

                      v220 = *__dst;
                      v221 = v257;
                      v222 = 11656;
                    }

                    else
                    {
                      v220 = *__dst;
                      v221 = v257;
                      v222 = 11648;
                    }

                    RiffStringTable = uselect_LoadRiffStringTable(v12, a3, v220, v221, (a2 + v222));
                  }

                  else
                  {
                    RiffStringTable = select_bet3_LoadRiffGenericFeatureMap(v12, a3, *__dst, v257, (a2 + 12520), (a2 + 12528), (a2 + 12536));
                  }

                  goto LABEL_727;
                }

                *__s1 = 64;
                v204 = *__dst;
                v205 = v257;
                v206 = 11584;
              }

              else
              {
                *__s1 = 257;
                v204 = *__dst;
                v205 = v257;
                v206 = 10557;
              }
            }

            else
            {
              *__s1 = 257;
              v204 = *__dst;
              v205 = v257;
              v206 = 10814;
            }
          }

          else
          {
            *__s1 = 257;
            v204 = *__dst;
            v205 = v257;
            v206 = 10300;
          }
        }

        else
        {
          *__s1 = 257;
          v204 = *__dst;
          v205 = v257;
          v206 = 10043;
        }

        RiffStringTable = ssftriff_reader_ReadStringZ(a3, v204, v205, 0, (a2 + v206), __s1);
LABEL_727:
        LODWORD(StringZ) = RiffStringTable;
        goto LABEL_23;
      }

      *__s1 = 257;
      v249 = a3;
      v180 = a3;
      v181 = __s;
      LODWORD(StringZ) = ssftriff_reader_ReadStringZ(v180, *__dst, v257, 0, __s, __s1);
      if ((StringZ & 0x80000000) == 0)
      {
        *(__s + 947) = 255;
        if (*__s)
        {
          v182 = 0;
          v183 = 0;
          v184 = 0;
          v185 = 255;
          do
          {
            v186 = v181[v183];
            if (v186 >= v185)
            {
              v187 = v181[v183];
            }

            else
            {
              v181[1894] = v186;
              v187 = v181[v183];
              v185 = v186;
            }

            if (v187 <= v182)
            {
              v188 = v187;
              v181 = __s;
            }

            else
            {
              v181 = __s;
              __s[1895] = v187;
              v188 = __s[v183];
              v182 = v187;
            }

            *(v244 + v188) = v184;
            v183 = (v184 + 1);
            v189 = strlen(v181);
            v184 = v183;
          }

          while (v189 > v183);
        }
      }

      v12 = a1;
      a3 = v249;
      v14 = 0x49535F454D415246;
    }

    else if (*__src ^ 0x47464356 | v256)
    {
      if (*__src ^ 0x41555145 | v256)
      {
        if (!(*__src ^ 0x58454546 | v256))
        {
          goto LABEL_11;
        }

        if (*__src ^ 0x334D5453 | v256)
        {
          if (*__src ^ 0x544E5953 | v256)
          {
            goto LABEL_19;
          }

LABEL_11:
          v20 = v12;
          v21 = a2;
          v22 = a3;
          v23 = 1;
LABEL_615:
          LODWORD(StringZ) = select_bet3_ParseRiff(v20, v21, v22, v23, a5, 0, 0);
          goto LABEL_23;
        }

        Position = ssftriff_reader_GetPosition(a3);
        *__dst = 0;
        v168 = ssftriff_reader_DetachChunkData(a3, (v242 + 8 * *(a2 + 37792)), __dst, v163, v164, v165, v166, v167);
        if (v168 < 0)
        {
          LODWORD(StringZ) = v168;
        }

        else
        {
          ++*(a2 + 37792);
          LODWORD(StringZ) = select_bet3_ParseRiff(a1, a2, a3, 1, a5, *__dst, Position);
          ++*(a2 + 260);
        }

        v14 = 0x49535F454D415246;
        v12 = a1;
      }

      else
      {
        LODWORD(StringZ) = ssftriff_reader_DetachChunkData(a3, (v242 + 8 * *(a2 + 37792)), (a2 + 7784), v15, v16, v17, v18, v19);
        if ((StringZ & 0x80000000) == 0)
        {
          ++*(a2 + 37792);
        }

        v14 = 0x49535F454D415246;
      }
    }

    else
    {
      v254 = 0;
      *v252 = 0;
      v253 = 0;
      if (a6)
      {
        *v252 = a6 + ssftriff_reader_GetPosition(a3) - v246;
      }

      else
      {
        StringZ = ssftriff_reader_GetChunkData(a3, v257, v252, v15, v16, v17, v18, v19);
        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_672;
        }
      }

      v51 = BET3FLT__heap_StrDup(*(v12 + 8), "PHRASE");
      *(a2 + 208) = v51;
      if (!v51)
      {
        goto LABEL_690;
      }

      *(a2 + 216) = 1000;
      v52 = v257;
      if (v257)
      {
        v53 = 0;
        do
        {
          __dst[0] = 0;
          __s1[0] = 0;
          v254 = 64;
          LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, *v252, v52, v53, __s1, &v254);
          if ((StringZ & 0x80000000) == 0 && v53 < v257)
          {
            v53 += v254;
            v254 = 256;
            LODWORD(StringZ) = ssftriff_reader_ReadStringZ(a3, *v252, v257, v53, __dst, &v254);
          }

          if ((StringZ & 0x80000000) != 0)
          {
            break;
          }

          v54 = v14;
          v248 = v254;
          strcpy(v259, "bet3voiceoverride.");
          __strcat_chk();
          if ((paramc_ParamGetStr(*(a1 + 40), v259, &v253) & 0x80000000) != 0 || (v55 = v253) == 0 || !*v253)
          {
            v55 = __dst;
            v253 = __dst;
          }

          if (*__s1 == 1213221953 && *&__s1[4] == 65)
          {
            v57 = atof(v55);
            *(a2 + 128) = v57;
          }

          if (!(*__s1 ^ 0x41544542 | __s1[4]))
          {
            v58 = atof(v55);
            *(a2 + 132) = v58;
          }

          if (*__s1 == 0x5F4C45525F565556 && *&__s1[8] == 5262657)
          {
            v60 = atof(v55);
            *(a2 + 140) = v60;
          }

          if (*__s1 == 5195858)
          {
            v61 = atof(v55);
            *(a2 + 160) = v61;
          }

          if (*__s1 == 5001046)
          {
            v62 = atof(v55);
            *(a2 + 164) = v62;
          }

          if (*__s1 == 0x534F4F425F46564DLL && *&__s1[8] == 84)
          {
            v64 = atof(v55);
            *(a2 + 168) = v64;
          }

          if (*__s1 == 1381969990 && *&__s1[3] == 5195858)
          {
            v66 = atof(v55);
            *(a2 + 172) = v66;
          }

          if (*__s1 == 1398747206 && *&__s1[3] == 4478035)
          {
            v68 = atof(v55);
            *(a2 + 176) = v68;
          }

          if (*__s1 == 0x4E41454D5F3046)
          {
            v69 = atof(v55);
            *(a2 + 180) = v69;
          }

          if (!(*__s1 ^ 0x5346 | __s1[2]))
          {
            *(a2 + 136) = LH_atoi(v55);
          }

          if (*__s1 == 1162105423 && *&__s1[4] == 82)
          {
            *(a2 + 144) = LH_atoi(v253);
          }

          if (*__s1 == v54 && *&__s1[3] == 0x455A49535F454DLL)
          {
            *(a2 + 152) = LH_atoi(v253);
          }

          if (*__s1 == 0x465F484345455053 && *&__s1[7] == 0x4E41454D5F3046)
          {
            *(a2 + 184) = LH_atoi(v253);
          }

          if (*__s1 == 0x495241565F464450 && *&__s1[8] == 0x5059545F45434E41 && *&__s1[16] == 69)
          {
            *(a2 + 200) = LH_atoi(v253);
          }

          if (*__s1 == 0x52454B41455242)
          {
            v75 = *(a2 + 208);
            if (v75)
            {
              heap_Free(*(a1 + 8), v75);
            }

            v76 = BET3FLT__heap_StrDup(*(a1 + 8), v253);
            *(a2 + 208) = v76;
            if (!v76)
            {
              LODWORD(StringZ) = -2065686518;
              v14 = v54;
              break;
            }
          }

          if (*__s1 == 0x474E454C5F4B5242 && *&__s1[3] == 0x4854474E454C5FLL)
          {
            *(a2 + 216) = LH_atoi(v253);
          }

          if (*__s1 == 1598771778 && *&__s1[3] == 4412511)
          {
            *(a2 + 220) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x4441505A5F4B5242 | __s1[8]))
          {
            *(a2 + 224) = LH_atoi(v253);
          }

          if (*__s1 == 0x54535F4E474C41)
          {
            *(a2 + 240) = LH_atoi(v253) != 0;
          }

          if (*__s1 == 0x48505F4E474C41)
          {
            *(a2 + 244) = LH_atoi(v253) != 0;
          }

          if (*__s1 == 1314476886 && *&__s1[3] == 4740174)
          {
            *(a2 + 7776) = BET3FLT__heap_StrDup(*(a1 + 8), v253);
          }

          if (*__s1 == 1398031942 && *&__s1[4] == 90)
          {
            *(a2 + 7808) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E41454D5F4E45)
          {
            *(a2 + 7812) = LH_atoi(v253);
          }

          if (*__s1 == 0x5F4E455F44454546 && *&__s1[8] == 0x4F4F4C5F4E41454DLL && *&__s1[15] == 0x44414548414B4FLL)
          {
            *(a2 + 7820) = LH_atoi(v253);
          }

          if (*__s1 == 0x56555F544E554F43 && *&__s1[8] == 0x434E41545349445FLL && *&__s1[16] == 69)
          {
            *(a2 + 7816) = LH_atoi(v253);
          }

          if (*__s1 == 0x525F454C504D4153 && *&__s1[8] == 4543553)
          {
            *(a2 + 7824) = LH_atoi(v253);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[6] == 0x594752454E455FLL)
          {
            *(a2 + 7828) = LH_atoi(v253);
          }

          if (*__s1 == 0x535F524150504D41 && *&__s1[8] == 4545097)
          {
            *(a2 + 7832) = LH_atoi(v253);
          }

          if (*__s1 == 0x465F524150435053 && *&__s1[8] == 0x50524157514552)
          {
            *(a2 + 7836) = LH_atoi(v253);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x415F45434E41484ELL && *&__s1[13] == 0x4148504C415F45)
          {
            *(a2 + 7840) = LH_atoi(v253);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x415F45434E41484ELL && *&__s1[16] == 0x564E555F4148504CLL && *&__s1[22] == 0x444543494F564ELL)
          {
            *(a2 + 7844) = LH_atoi(v253);
          }

          if (*__s1 == v54 && *&__s1[8] == 0x4343524D5F455ALL)
          {
            *(a2 + 7848) = LH_atoi(v253);
          }

          if (*__s1 == 0x5F5348505F4E5953 && *&__s1[8] == 0x555F504152545845 && *&__s1[11] == 0x4553555F504152)
          {
            *(a2 + 7852) = LH_atoi(v253);
          }

          if (*__s1 == 0x53494F4E5F4E5953 && *&__s1[8] == 0x545F514552465F45 && *&__s1[16] == 72)
          {
            *(a2 + 7856) = LH_atoi(v253);
          }

          if (*__s1 == 0x514552465F4E5953 && *&__s1[8] == 0x53555F4553494F4ELL && *&__s1[16] == 69)
          {
            *(a2 + 7860) = LH_atoi(v253);
          }

          if (*__s1 == 0x514552465F4E5953 && *&__s1[8] == 0x564D5F4553494F4ELL && *&__s1[14] == 0x4553555F46564DLL)
          {
            *(a2 + 7864) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x514552465F4E5953 | *&__s1[8] ^ 0x4F4C5F4553494F4ELL | __s1[16]))
          {
            *(a2 + 7868) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x514552465F4E5953 | *&__s1[8] ^ 0x49485F4553494F4ELL | __s1[16]))
          {
            *(a2 + 7872) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x494E555F4553494FLL && *&__s1[13] == 0x4D524F46494E55)
          {
            *(a2 + 7876) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x4E5855415F4E5953 | *&__s1[8] ^ 0x4553555F4553494FLL | __s1[16]))
          {
            *(a2 + 7880) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x46564D5F4553494FLL && *&__s1[13] == 0x4553555F46564DLL)
          {
            *(a2 + 7884) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x58494D5F4553494FLL && *&__s1[16] == 0x4F4C5F4D524148)
          {
            *(a2 + 7888) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x58494D5F4553494FLL && *&__s1[16] == 0x49485F4D524148)
          {
            *(a2 + 7892) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5345525F4553494FLL && *&__s1[16] == 5196895)
          {
            *(a2 + 7896) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5345525F4553494FLL && *&__s1[16] == 4802655)
          {
            *(a2 + 7900) = LH_atoi(v253);
          }

          if (*__s1 == 0x47494C415F4E5953 && *&__s1[8] == 0x46464F5455435F4ELL && *&__s1[14] == 0x514552465F4646)
          {
            *(a2 + 7904) = LH_atoi(v253);
          }

          if (*__s1 == 0x554245445F4E5953 && *&__s1[8] == 0x45434F52505F5A5ALL && *&__s1[15] == 0x46564D5F535345)
          {
            *(a2 + 7908) = LH_atoi(v253);
          }

          if (*__s1 == 0x415F524150504D41 && *&__s1[8] == 0x455441554E455454 && *&__s1[16] == 5657951)
          {
            *(a2 + 7912) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x50494B535F4E5953 | *&__s1[8] ^ 0x41485F4B4145575FLL | *&__s1[16] ^ 0x4F495441525F4D52 | __s1[24]))
          {
            *(a2 + 7916) = LH_atoi(v253);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN"))
          {
            *(a2 + 7940) = LH_atoi(v253);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_THR"))
          {
            *(a2 + 7944) = LH_atoi(v253);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_RATIO_EN_THR"))
          {
            *(a2 + 7948) = LH_atoi(v253);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_MVF_THR"))
          {
            *(a2 + 7952) = LH_atoi(v253);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_LOW_EN"))
          {
            *(a2 + 7956) = LH_atoi(v253);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_RATIO_EN"))
          {
            *(a2 + 7960) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x305F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7964) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x315F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7968) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x325F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7972) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x335F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7976) = LH_atoi(v253);
          }

          if (*__s1 == 0x425F524150504D41 && *&__s1[8] == 5461065)
          {
            *(a2 + 7980) = LH_atoi(v253);
          }

          if (*__s1 == 0x555F524150534850 && *&__s1[3] == 0x4553555F524150)
          {
            *(a2 + 7984) = LH_atoi(v253);
          }

          if (*__s1 == 0x555F524150504D41 && *&__s1[3] == 0x4553555F524150)
          {
            *(a2 + 7988) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x32474F4C5F455355 | __s1[8]))
          {
            *(a2 + 7992) = LH_atoi(v253);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x505F45434E41484ELL && *&__s1[14] == 0x435053574F505FLL)
          {
            *(a2 + 7996) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[15] == 0x455441554E4554)
          {
            *(a2 + 8000) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[16] == 0x4C5F455441554E45 && *&__s1[24] == 79)
          {
            *(a2 + 8004) = LH_atoi(v253);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[16] == 0x485F455441554E45 && *&__s1[24] == 73)
          {
            *(a2 + 8008) = LH_atoi(v253);
          }

          if (*__s1 == 0x4C5050415F4E5953 && *&__s1[8] == 0x504D4545445F59)
          {
            *(a2 + 8012) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x525F49485F4E5953 | *&__s1[8] ^ 0x4E47494C415F5345 | __s1[16]))
          {
            *(a2 + 8016) = LH_atoi(v253);
          }

          if (*__s1 == 0x545341465F4E5953 && *&__s1[8] == 0x5241485F5855415FLL && *&__s1[16] == 77)
          {
            *(a2 + 8020) = LH_atoi(v253);
          }

          if (*__s1 == 0x5F5849465F4E5953 && *&__s1[8] == 4279375)
          {
            *(a2 + 8024) = LH_atoi(v253);
          }

          if (*__s1 == 0x475F43445F4E5953 && *&__s1[8] == 0x494F565F44524155 && *&__s1[16] == 4474179)
          {
            *(a2 + 8028) = LH_atoi(v253);
          }

          if (*__s1 == 0x475F43445F4E5953 && *&__s1[8] == 0x564E555F44524155 && *&__s1[14] == 0x444543494F564ELL)
          {
            *(a2 + 8032) = LH_atoi(v253);
          }

          if (*__s1 == 0x5551594E5F4E5953 && *&__s1[8] == 0x524155475F545349 && *&__s1[16] == 68)
          {
            *(a2 + 8036) = LH_atoi(v253);
          }

          if (*__s1 == 0x535F524150534850 && *&__s1[8] == 4545097)
          {
            *(a2 + 8040) = LH_atoi(v253);
          }

          if (*__s1 == 0x465F524150534850 && *&__s1[8] == 5261644)
          {
            *(a2 + 8044) = LH_atoi(v253);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x4F4E5F594752454ELL && *&__s1[14] == 0x48545F4D524F4ELL)
          {
            *(a2 + 8048) = LH_atoi(v253);
          }

          if (*__s1 == 0x465F524150435053 && *&__s1[8] == 0x5F50524157514552 && *&__s1[14] == 0x4148504C415F50)
          {
            *(a2 + 8052) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x5F5348505F4E5953 | *&__s1[8] ^ 0x49575F4E47494C41 | *&__s1[16] ^ 0x54534E4F435F4854 | __s1[24]))
          {
            *(a2 + 8056) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x4E5855415F4E5953 | *&__s1[8] ^ 0x524F4E5F4553494FLL | *&__s1[16] ^ 0x4C41424F4C475F4DLL | __s1[24]))
          {
            *(a2 + 8060) = LH_atoi(v253);
          }

          if (*__s1 == 0x4D4545445F4E5953 && *&__s1[7] == 0x46454F435F504DLL)
          {
            *(a2 + 8064) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x5F4553555F4E5953 | *&__s1[8] ^ 0x4F4D5F4553494F4ELL | *&__s1[16] ^ 0x4E4F4954414C5544 | __s1[24]))
          {
            *(a2 + 8068) = LH_atoi(v253);
          }

          if (*__s1 == 0x53494F4E5F4E5953 && *&__s1[8] == 0x414C55444F4D5F45 && *&__s1[16] == 0x4341465F4E4F4954 && *&__s1[24] == 5394260)
          {
            *(a2 + 8072) = LH_atoi(v253);
          }

          if (*__s1 == 0x4D4152465F58414DLL && *&__s1[7] == 0x455A49535F454DLL)
          {
            *(a2 + 8076) = LH_atoi(v253);
          }

          if (*__s1 == 0x4D4152465F4E494DLL && *&__s1[7] == 0x455A49535F454DLL)
          {
            *(a2 + 8080) = LH_atoi(v253);
          }

          if (*__s1 == 0x5F5446465F4E494DLL && *&__s1[5] == 0x455A49535F5446)
          {
            *(a2 + 8084) = LH_atoi(v253);
          }

          v14 = 0x49535F454D415246;
          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4E5F434E495F455ALL && *&__s1[11] == 0x4D554E5F434E49)
          {
            *(a2 + 8088) = LH_atoi(v253);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4E5F4345445F455ALL && *&__s1[11] == 0x4D554E5F434544)
          {
            *(a2 + 8092) = LH_atoi(v253);
          }

          if (*__s1 == 0x5446465F4C414E41 && *&__s1[6] == 0x455A49535F5446)
          {
            *(a2 + 8096) = LH_atoi(v253);
          }

          if (!(*__s1 ^ 0x455A49535F544646 | __s1[8]))
          {
            *(a2 + 8100) = LH_atoi(v253);
          }

          v53 += v248;
          v52 = v257;
        }

        while (v53 < v257);
      }

      strcpy(v259, "bet3voiceoverride.");
      __strcat_chk();
      v12 = a1;
      if ((paramc_ParamGetStr(*(a1 + 40), v259, &v253) & 0x80000000) == 0)
      {
        v210 = *(a2 + 208);
        if (v210)
        {
          heap_Free(*(a1 + 8), v210);
          *(a2 + 208) = 0;
        }

        v211 = BET3FLT__heap_StrDup(*(a1 + 8), v253);
        *(a2 + 208) = v211;
        if (!v211)
        {
LABEL_690:
          v173 = 3;
          StringZ = 2229280778;
          goto LABEL_739;
        }
      }

      strcpy(v259, "bet3voiceoverride.");
      __strcat_chk();
      if ((paramc_ParamGetStr(*(a1 + 40), v259, &v253) & 0x80000000) == 0)
      {
        *(a2 + 216) = LH_atoi(v253);
      }
    }

LABEL_23:
    v45 = ssftriff_reader_CloseChunk(a3);
    if (StringZ > -1 && v45 < 0)
    {
      StringZ = v45;
    }

    else
    {
      StringZ = StringZ;
    }
  }

  if ((StringZ & 0x1FFF) == 0x14)
  {
    v223 = 0;
  }

  else
  {
    v223 = StringZ;
  }

  if ((v223 & 0x80000000) == 0)
  {
    a5[v250] = 0;
    StringZ = v223;
  }

LABEL_746:
  v224 = *MEMORY[0x1E69E9840];
  return StringZ;
}