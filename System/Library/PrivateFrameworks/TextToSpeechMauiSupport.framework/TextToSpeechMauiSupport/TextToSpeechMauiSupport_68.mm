int *ReconstructDftFromHarmonies(_DWORD *a1, uint64_t a2, void *a3, uint64_t a4, int a5, int a6)
{
  v79 = 0;
  if (a6)
  {
    v10 = *(a4 + 64);
    v11 = (v10 + 64);
    v12 = (v10 + 20);
    v13 = (v10 + 16);
    v14 = a3[2];
    v15 = a3[15];
  }

  else
  {
    v16 = a3[31];
    v14 = a3[1];
    v15 = a3[14];
    v17 = (v16 + 20);
    v18 = (v16 + 64);
    v19 = v16 == 0;
    if (v16)
    {
      v13 = (v16 + 16);
    }

    else
    {
      v13 = a1 + 72;
    }

    if (v19)
    {
      v12 = a1 + 74;
    }

    else
    {
      v12 = v17;
    }

    if (v19)
    {
      v11 = (a2 + 40);
    }

    else
    {
      v11 = v18;
    }
  }

  v20 = *v11;
  v21 = *v12;
  v22 = *v13;
  cstdlib_memset(v15, 0, 8 * (*v13 + 1));
  v23 = 0;
  v24 = a1[69];
  if (v24 >= 1 && (a5 & 0x80000000) == 0)
  {
    v23 = 0;
    v25 = (a5 + 1);
    v26 = (v14 + 4);
    do
    {
      v28 = *v26;
      v26 += 9;
      v27 = v28;
      if (v23 <= v28)
      {
        v23 = v27;
      }

      --v25;
    }

    while (v25);
  }

  if ((a5 & 0x80000000) == 0)
  {
    v29 = 0;
    v30 = 2 * v21;
    v31 = (v23 >> 15) * (a1[69] & 0x7FFF) + (((v23 & 0x7FFF) * (a1[69] & 0x7FFF) + 0x4000) >> 15) + v23 * (a1[69] >> 15);
    v32 = v21 + 1;
    do
    {
      if (v24 < 1 || *(v14 + 4) >= v31)
      {
        v33 = *(v14 + 20);
        v34 = v33 - v21;
        v35 = (v21 - v33) & ((v33 - v21) >> 31);
        v36 = v33 + v21;
        if (v33 + v21 >= v22)
        {
          v37 = v22 + ~(v33 + v21);
        }

        else
        {
          v37 = 0;
        }

        v38 = *(v14 + 12);
        v39 = v20 + 2 * *(v14 + 24) * ((2 * v21) | 1);
        if (v35 <= v37 + v30)
        {
          v40 = v35 + v34;
          v41 = &v15[v35 + v34];
          v42 = (v39 + 2 * v35);
          v43 = vabs_s32(v38);
          v44 = vand_s8(v43, 0x7F0000007FLL);
          v45 = vshr_n_u32(v43, 0xFuLL);
          v46 = vadd_s32(v44, v44);
          v47 = vadd_s32(v45, v45);
          v48 = vshl_n_s32(v45, 0x10uLL);
          v49 = v32 + v37 + v33 - v40;
          v50 = vcltz_s32(v38);
          do
          {
            v52 = *v42++;
            v51 = v52;
            v53 = v52 < 0;
            if (v52 >= 0)
            {
              v54 = v51;
            }

            else
            {
              v54 = -v51;
            }

            if (v53)
            {
              v55 = 1;
            }

            else
            {
              v55 = -1;
            }

            v56 = vdup_n_s32(v54 & 0x7FFF);
            v57 = vdup_n_s32(v54 >> 15);
            *v41 = vmla_s32(*v41, vsra_n_u32(vmla_s32(vmla_s32(vmul_s32(v57, v46), v56, v47), v48, v57), vmla_s32(0x200000002000, v56, v44), 0xEuLL), vbsl_s8(v50, vdup_n_s32(v55), vdup_n_s32((v51 >> 31) | 1u)));
            ++v41;
            --v49;
          }

          while (v49);
        }

        if (v35 < 0 && v36 <= v30)
        {
          v58 = (v39 + 2 * v36);
          v59 = vabs_s32(v38);
          v60 = vand_s8(v59, 0x7F0000007FLL);
          v61 = vshr_n_u32(v59, 0xFuLL);
          v62 = vadd_s32(v60, v60);
          v63 = vadd_s32(v61, v61);
          v64 = vshl_n_s32(v61, 0x10uLL);
          v65 = v32 - v33;
          v66 = vcltz_s32(v38);
          v67 = v15;
          do
          {
            v69 = *v58++;
            v68 = v69;
            v70 = v69 < 0;
            if (v69 >= 0)
            {
              v71 = v68;
            }

            else
            {
              v71 = -v68;
            }

            if (v70)
            {
              v72 = 1;
            }

            else
            {
              v72 = -1;
            }

            v73.i32[0] = v72;
            v73.i32[1] = (v68 >> 31) | 1;
            v74 = vdup_n_s32(v71 & 0x7FFF);
            v75 = vdup_n_s32(v71 >> 15);
            *v67 = vmla_s32(*v67, vsra_n_u32(vmla_s32(vmla_s32(vmul_s32(v75, v62), v74, v63), v64, v75), vmla_s32(0x200000002000, v74, v60), 0xEuLL), vbsl_s8(v66, v73, vrev64_s32(v73)));
            ++v67;
            --v65;
          }

          while (v65);
        }
      }

      v14 += 36;
      v19 = v29++ == a5;
    }

    while (!v19);
  }

  result = ScaleTo16BitSignedRange(v15, a1[3] + 2, &v79 + 1, &v79, 0, 0);
  v77 = 27;
  if (!a6)
  {
    v77 = 26;
  }

  v78 = 212;
  if (!a6)
  {
    v78 = 204;
  }

  LODWORD(a3[v77]) += HIDWORD(v79);
  *(a3 + v78) += v79;
  return result;
}

uint64_t findPhaseAlignment(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v5 = *(a4 + 40);
  v7 = *(a3 + 136);
  v8 = *(a3 + 144);
  v105 = *(a4 + 28);
  v9 = *(a3 + 8);
  v10 = *(a3 + 32);
  v11 = *(a3 + 248);
  v12 = *(a3 + 160);
  v106 = 0;
  v13 = *(a3 + 192);
  if (v13 <= *(a4 + 52))
  {
    v13 = *(a4 + 52);
  }

  if (v11)
  {
    v13 = *v11 * v13 / *(a1 + 3);
  }

  v14 = *(a1 + 71);
  v15 = *(a1 + 73);
  v16 = *(a2 + 72);
  v17 = *(a3 + 24);
  v18 = *(a3 + 80);
  v19 = *(a4 + 24);
  v20 = *(a4 + 16);
  *(a3 + 84) = 0;
  if (!*(a3 + 48))
  {
    return 0;
  }

  __dst = v6;
  v102 = v5;
  v99 = v20;
  if (v10 != *(a3 + 36))
  {
    if (v10)
    {
      v30 = 0;
      v22 = 0;
      LODWORD(v21) = 0;
      v31 = (v9 + 20);
      v32 = 36 * v10;
      do
      {
        if (*v31 > v13)
        {
          break;
        }

        if (*(v31 - 5))
        {
          *(v17 + 4 * v21) = v30;
          v7[v21] = *(v31 - 2);
          v33 = *(v31 - 1);
          v8[v21] = v33;
          v34 = v7[v21];
          if (v34 < 0)
          {
            v34 = -v34;
          }

          if (v22 > v34)
          {
            v34 = v22;
          }

          if (v33 < 0)
          {
            v33 = -v33;
          }

          if (v34 <= v33)
          {
            v22 = v33;
          }

          else
          {
            v22 = v34;
          }

          LODWORD(v21) = v21 + 1;
        }

        ++v30;
        v31 += 9;
        v32 -= 36;
      }

      while (v32);
      goto LABEL_39;
    }

LABEL_38:
    LODWORD(v21) = 0;
    v22 = 0;
    goto LABEL_39;
  }

  if (!v10)
  {
    goto LABEL_38;
  }

  v21 = 0;
  v22 = 0;
  v23 = (v9 + 20);
  v24 = 36 * v10;
  v25 = (v9 + 20);
  while (1)
  {
    v26 = *v25;
    v25 += 9;
    if (v26 > v13)
    {
      break;
    }

    v7[v21] = *(v23 - 2);
    v27 = *(v23 - 1);
    v8[v21] = v27;
    v28 = v7[v21];
    if (v28 < 0)
    {
      v28 = -v28;
    }

    if (v22 > v28)
    {
      v28 = v22;
    }

    if (v27 < 0)
    {
      v27 = -v27;
    }

    if (v28 <= v27)
    {
      v22 = v27;
    }

    else
    {
      v22 = v28;
    }

    ++v21;
    v23 = v25;
    v24 -= 36;
    if (!v24)
    {
      LODWORD(v21) = v10;
      break;
    }
  }

LABEL_39:
  v95 = v17;
  v96 = v10;
  v97 = v9;
  v100 = v18;
  ScaleTo16BitSignedRange(v7, v21, &v106, 0, 0, v22);
  ScaleTo16BitSignedRange(v8, v21, &v106, 0, 0, v22);
  if (!v99)
  {
    cstdlib_memcpy(__dst, v7, 4 * v21);
    cstdlib_memcpy(v102, v8, 4 * v21);
    result = 0;
    *(a4 + 28) = v21;
    *(a3 + 228) = 0;
    return result;
  }

  __src = v7;
  *v12 = 0;
  v35 = *(a1 + 73);
  v36 = v100 <= v21 && v19 <= v105;
  v38 = !v36 || v35 < 4;
  if (v16)
  {
    if ((v38 & 1) == 0)
    {
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 8);
      v42 = v35 >> 1;
      v43 = 4 * v19 - 4;
      v44 = &__dst[v43];
      v45 = &v102[v43];
      v46 = 4 * v100 - 4;
      v47 = v95 + v46;
      v48 = v7 + v46;
      v49 = v8 + v46;
      v50 = (v12 + 12);
      v51 = 2;
      do
      {
        v52 = *(v41 + 36 * *(v47 + 4 * v39) + 20) * (0x100u >> (v14 - 1));
        *(v50 - 1) = ((*&v44[4 * v40] * *&v48[4 * v39] + *&v45[4 * v40] * *&v49[4 * v39]) >> 15) * *(v16 + 4 * v52);
        v53 = v51;
        *v50 = ((*&v44[4 * v40] * *&v49[4 * v39] - *&v45[4 * v40] * *&v48[4 * v39]) >> 15) * *(v16 + 4 * v52);
        ++v51;
        if (v53 >= v42)
        {
          break;
        }

        if (2 * v100 + v39 > v21)
        {
          break;
        }

        v54 = 2 * v19 + v40;
        v40 += v19;
        v39 += v100;
        v50 += 2;
      }

      while (v54 <= v105);
      v55 = v51 - 1;
      goto LABEL_64;
    }

LABEL_58:
    v55 = 1;
    goto LABEL_64;
  }

  if (v38)
  {
    goto LABEL_58;
  }

  v56 = 0;
  v57 = 0;
  v58 = v35 >> 1;
  v59 = 4 * v19 - 4;
  v60 = &__dst[v59];
  v61 = &v102[v59];
  v62 = 4 * v100 - 4;
  v63 = v7 + v62;
  v64 = v8 + v62;
  v65 = (v12 + 12);
  v66 = 2;
  do
  {
    *(v65 - 1) = (*&v60[4 * v57] * *&v63[4 * v56] + *&v61[4 * v57] * *&v64[4 * v56]) >> 15;
    v67 = v66;
    *v65 = (*&v60[4 * v57] * *&v64[4 * v56] - *&v61[4 * v57] * *&v63[4 * v56]) >> 15;
    ++v66;
    if (v67 >= v58)
    {
      break;
    }

    if (2 * v100 + v56 > v21)
    {
      break;
    }

    v68 = 2 * v19 + v57;
    v57 += v19;
    v56 += v100;
    v65 += 2;
  }

  while (v68 <= v105);
  v55 = v66 - 1;
LABEL_64:
  while (v15 >= (2 * v55))
  {
    LOBYTE(v14) = v14 - 1;
    v15 /= 2;
  }

  if (v15 <= 16)
  {
    v69 = 16;
  }

  else
  {
    v69 = v15;
  }

  if (v15 >= 16)
  {
    v70 = v14;
  }

  else
  {
    v70 = 4;
  }

  if (v15 >= 16)
  {
    v71 = (2 * v15);
  }

  else
  {
    v71 = 32;
  }

  if (v69 >= v55)
  {
    bzero((v12 + 8 * v55), 8 * (v69 - v55) + 8);
  }

  *(v12 + 4) = *(v12 + 8 * v69);
  v72 = call_cfsv_construct(*a1, v12, v71, 15);
  v73 = v72;
  if (v72)
  {
    call_cfsv_changeInputSampleOrder(v72, *(a3 + 176));
    call_cfsv_rifft(v73, v71);
  }

  v74 = *v12;
  if (v71 < 2)
  {
    v76 = 0;
    v75 = 0;
    v78 = *v12;
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v77 = 1;
    v78 = *v12;
    do
    {
      v79 = *(v12 + 4 * v77);
      if (v79 >= v78)
      {
        v80 = v76;
      }

      else
      {
        v80 = v77;
      }

      if (v79 >= v78)
      {
        v81 = v78;
      }

      else
      {
        v81 = *(v12 + 4 * v77);
      }

      v82 = v79 <= v74;
      if (v79 > v74)
      {
        v75 = v77;
      }

      else
      {
        v76 = v80;
      }

      if (v79 > v74)
      {
        v74 = *(v12 + 4 * v77);
      }

      if (v82)
      {
        v78 = v81;
      }

      ++v77;
    }

    while (v71 != v77);
  }

  if (v74 <= -v78)
  {
    v83 = v76;
  }

  else
  {
    v83 = v75;
  }

  if (v74 <= -v78)
  {
    v84 = -v78;
  }

  else
  {
    v84 = v74;
  }

  v85 = *(a1 + 16);
  if (!*(a4 + 48))
  {
    if (v83 == v76 && v85 == 0)
    {
      v76 = v83;
    }

    else
    {
      v76 = v83;
      v83 = v75;
      if (v85 * v84 >= (v84 - v74) << 10)
      {
        goto LABEL_115;
      }
    }

LABEL_122:
    *(a3 + 228) = 1;
    v91 = __src;
    v92 = v8;
    if (v21 >= 1)
    {
      v93 = v21;
      do
      {
        *v91 = -*v91;
        ++v91;
        *v92 = -*v92;
        ++v92;
        --v93;
      }

      while (v93);
    }

    for (i = *(a3 + 8); i != (v97 + 36 * v96); i += 9)
    {
      if (*i)
      {
        i[8] += *(a1 + 72);
      }
    }

    goto LABEL_116;
  }

  v86 = v83 == v75 && v85 == 0;
  if (!v86 && v85 * v84 >= (v84 + v78) << 10)
  {
    goto LABEL_122;
  }

LABEL_115:
  *(a3 + 228) = 0;
  v76 = v83;
LABEL_116:
  v88 = 15 - v70;
  if (v100 == 1)
  {
    v89 = v76 << v88;
  }

  else
  {
    v90 = ((v76 << v88) + (v100 << 16) - 0x10000) / v100;
    v36 = v76 <= (v71 >> 1);
    v89 = (v76 << v88) / v100;
    if (!v36)
    {
      LOWORD(v89) = v90;
    }
  }

  *(a3 + 84) = v89;
  call_cfsv_destruct(*a1, v73);
  cstdlib_memcpy(__dst, __src, 4 * v21);
  cstdlib_memcpy(v102, v8, 4 * v21);
  *(a4 + 28) = v21;
  return 1;
}

uint64_t ComparePitches(uint64_t result, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v7 = *(a3 + 64);
  if (v7)
  {
    v8 = (v7 + 44);
  }

  else
  {
    v8 = (result + 308);
  }

  if (*(a2 + 48) && *(a3 + 16))
  {
    v9 = *v8;
    v13 = 0;
    result = FindBestRationalFactor(*(a3 + 18), *(a2 + 50), &v13 + 1, &v13);
    v11 = v13;
    v10 = HIDWORD(v13);
    *(a3 + 24) = HIDWORD(v13);
    *(a2 + 80) = v11;
    v12 = ((v10 * *(a3 + 18) + v11 * *(a2 + 50)) * v9 + (v11 << 9)) / (v11 << 10);
  }

  else
  {
    LOWORD(v12) = 0;
    *(a3 + 24) = 1;
    *(a2 + 80) = 1;
  }

  *a4 = v12;
  return result;
}

uint64_t RandNorm(unsigned int *a1)
{
  v1 = 1664525 * *a1 + 1013904223;
  *a1 = v1;
  return alfNormalNoise[(v1 + (v1 >> 11))];
}

uint64_t Init_SinTable(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 512;
  }

  *(a2 + 16) = v3 / 2;
  *(a2 + 20) = v3;
  *(a2 + 24) = v3 - 1;
  HIDWORD(v5) = v3 / 2 - 32;
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 5;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = &asCos128;
      v7 = &asSin128;
      goto LABEL_14;
    }

    if (v4 == 7)
    {
      v6 = &asCos256;
      v7 = &asSin256;
      goto LABEL_14;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = &asCos32;
      v7 = &asSin32;
      goto LABEL_14;
    }

    if (v4 == 1)
    {
      v6 = &asCos64;
      v7 = &asSin64;
LABEL_14:
      *a2 = v7;
      *(a2 + 8) = v6;
      return 0;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  return 0;
}

uint64_t PositiveShortLog2(int a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  v2 = a1;
  result = 14;
  if ((v2 & 0xC000) == 0)
  {
    do
    {
      result = (result - 1);
      if (!result)
      {
        break;
      }

      v3 = v2;
      v2 *= 2;
    }

    while ((v3 & 0x2000) == 0);
  }

  return result;
}

uint64_t ipow2(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return a1 > 0xFFFFEFFF;
  }

  if (a1 >> 12 > 0x1E)
  {
    return 0x7FFFFFFFLL;
  }

  v2 = a1 & 0xFFF;
  if ((a1 & 0xFFF) != 0)
  {
    v3 = 0;
    v4 = 0;
    LODWORD(v5) = 0x8000;
    do
    {
      v5 = ((ipow2Table[v3 + (v2 & 0xF)] * v5) + 0x4000) >> 15;
      if (v4 > 1)
      {
        break;
      }

      ++v4;
      v3 += 16;
      v6 = v2 > 0xF;
      v2 >>= 4;
    }

    while (v6);
  }

  else
  {
    LODWORD(v5) = 0x8000;
  }

  v7 = 15 - (a1 >> 12);
  if (a1 >= 0xF000)
  {
    LOBYTE(v7) = 0;
  }

  v8 = v5 >> v7;
  v9 = (a1 >> 12) - 15;
  if (!HIWORD(a1))
  {
    LOBYTE(v9) = 0;
  }

  return v8 << v9;
}

uint64_t string2fixed(uint64_t a1, char *__s, int a3, _DWORD *a4)
{
  v32 = 0;
  v8 = cstdlib_strlen(__s) + 1;
  v9 = heap_Alloc(*(a1 + 8), v8);
  if (!v9)
  {
    return 2;
  }

  v10 = v9;
  cstdlib_memset(v9, 0, v8);
  cstdlib_strcpy(v10, __s);
  v11 = extstdlib_strtok_r(v10, " \t\r\n", &v32);
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  v13 = cstdlib_strchr(v11, 46);
  if (v13)
  {
    v14 = v13;
    *v13 = 0;
    v15 = cstdlib_atol(v12);
    v18 = v14[1];
    v17 = (v14 + 1);
    v16 = v18;
    v19 = 0;
    if ((v18 - 48) <= 9)
    {
      v21 = __OFSUB__(a3, 1);
      v20 = a3 - 1 < 0;
    }

    else
    {
      v21 = 0;
      v20 = 1;
    }

    if (v20 != v21)
    {
      v26 = 1;
    }

    else
    {
      v25 = 10 * a3;
      v26 = 1;
      do
      {
        v19 = 10 * v19 + (v16 - 48);
        v26 *= 10;
        v27 = *++v17;
        v16 = v27;
        if ((v27 - 48) <= 9)
        {
          v29 = __OFSUB__(v26, v25);
          v28 = v26 - v25 < 0;
        }

        else
        {
          v29 = 0;
          v28 = 0;
        }
      }

      while (v28 != v29);
    }

    do
    {
      v31 = *v17++;
      v30 = v31;
    }

    while ((v31 - 48) < 0xA);
    if ((v30 | 0x20) == 0x65)
    {
      heap_Free(*(a1 + 8), v10);
      return 1;
    }

    LODWORD(v24) = (v19 * a3 + (v26 >> 1)) / v26 + v15 * a3;
  }

  else
  {
    *(&v23 + 1) = a3 * cstdlib_atol(v12);
    *&v23 = 2 * *(&v23 + 1);
    v24 = ((v23 >> 63) + 1) >> 1;
  }

  heap_Free(*(a1 + 8), v10);
  result = 0;
  *a4 = v24;
  return result;
}

int *ScaleTo16BitSignedRange(int *result, int a2, int *a3, int *a4, char a5, int a6)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a2)
  {
    if (a6 > 0)
    {
      goto LABEL_37;
    }

    if (a2 < 1)
    {
      a6 = -1;
LABEL_28:
      if (a3)
      {
        v13 = *a3;
        do
        {
          a6 >>= 1;
          ++v13;
        }

        while (a6 >> 15);
        *a3 = v13;
        if (v13 - 1 >= 0 && a2 >= 1)
        {
          v14 = a2;
          do
          {
            *result++ >>= *a3 + a5;
            --v14;
          }

          while (v14);
        }
      }

      return result;
    }

    v9 = a2;
    a6 = -1;
    v10 = result;
    do
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 < 0)
      {
        v11 = -v11;
      }

      if (v11 > a6)
      {
        a6 = v11;
      }

      --v9;
    }

    while (v9);
    if (a6)
    {
LABEL_37:
      if (!(a6 >> 15))
      {
        if (a4)
        {
          v6 = *a4;
          if (!(a6 >> 14))
          {
            do
            {
              ++v6;
              v7 = a6 >= 0x2000;
              a6 *= 2;
            }

            while (!v7);
            *a4 = v6;
          }

          if (v6 >= 1 && a2 >= 1)
          {
            v8 = a2;
            do
            {
              *result++ <<= *a4;
              --v8;
            }

            while (v8);
          }
        }

        return result;
      }

      goto LABEL_28;
    }
  }

  return result;
}

uint64_t ScaleTo16BitSignedRangeWithSkip(uint64_t result, int a2, int a3, int *a4, int *a5, unsigned int a6)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v6 = a3 * a2;
    if (a6)
    {
      goto LABEL_37;
    }

    if (!a3)
    {
      a6 = -1;
LABEL_28:
      if (a4)
      {
        v12 = *a4;
        do
        {
          a6 = a6 >> 1;
          ++v12;
        }

        while (a6 >> 15);
        *a4 = v12;
        if (v12 - 1 >= 0)
        {
          if (a3)
          {
            v13 = 0;
            do
            {
              *(result + v13) = ((1 << (*a4 - 1)) + *(result + v13)) >> *a4;
              v13 += a3;
            }

            while (v6 != v13);
          }
        }
      }

      return result;
    }

    v10 = 0;
    a6 = -1;
    do
    {
      v11 = *(result + v10);
      if (v11 < 0)
      {
        v11 = -v11;
      }

      if (v11 > a6)
      {
        a6 = v11;
      }

      v10 += a3;
    }

    while (v6 != v10);
    if (a6)
    {
LABEL_37:
      if (!(a6 >> 15))
      {
        if (a5)
        {
          v7 = *a5;
          if (!(a6 >> 14))
          {
            do
            {
              ++v7;
              v8 = a6 >= 0x2000;
              a6 *= 2;
            }

            while (!v8);
            *a5 = v7;
          }

          if (v7 >= 1 && a3)
          {
            v9 = 0;
            do
            {
              *(result + v9) <<= *a5;
              v9 += a3;
            }

            while (v6 != v9);
          }
        }

        return result;
      }

      goto LABEL_28;
    }
  }

  return result;
}

uint64_t CalcSquareNormWthSkip(uint64_t a1, int a2, int a3, int a4, _DWORD *a5, int a6)
{
  v6 = a3 * a2;
  if (a3 * a2)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = -1;
    do
    {
      v10 = *(a1 + v7);
      if (v10 > v9)
      {
        v9 = *(a1 + v7);
      }

      v8 = (v8 + v10 * v10);
      v7 += a3;
    }

    while (v6 != v7);
    if (v9 <= a4)
    {
      v11 = 0;
    }

    else
    {
      if (v9 < 46341)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        do
        {
          ++v11;
          v12 = v9 > 0x16A09;
          v9 = v9 >> 1;
        }

        while (v12);
      }

      v13 = 0;
      v14 = 0;
      do
      {
        v15 = (*(a1 + v13) >> v11) * (*(a1 + v13) >> v11);
        v16 = (v15 + v14) < 0;
        v17 = __CFADD__(v15, v14);
        v14 += v15;
        v18 = v17 || v16;
        v11 += v18;
        if (v18)
        {
          v14 = (v14 >> 2) | 0x40000000;
        }

        v13 += a3;
      }

      while (v6 != v13);
      v19 = 0;
      LODWORD(v8) = 0;
      do
      {
        v20 = *(a1 + v19);
        if (((1 << (v11 - 1)) & v20) != 0)
        {
          v21 = (v20 >> v11) + 1;
        }

        else
        {
          v21 = v20 >> v11;
        }

        if (!a6)
        {
          *(a1 + v19) = v21;
        }

        v8 = (v8 + v21 * v21);
        v19 += a3;
      }

      while (v6 != v19);
    }
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  *a5 = v11;
  return v8;
}

uint64_t sqroot5(int *a1, unsigned int a2)
{
  if (!a1)
  {
    if (a2 < 0x800000)
    {
      if (!a2)
      {
        v4 = &astSqrtTbl;
        goto LABEL_30;
      }

      LODWORD(v3) = 0;
LABEL_11:
      LODWORD(v2) = 1023;
      goto LABEL_14;
    }

    v4 = &unk_26ED7C3F8;
LABEL_30:
    v6 = (v4 + 4);
    return *v6;
  }

  v3 = *a1;
  v2 = a1[1];
  if (*(&astSqrtTbl + 2 * v3) > a2)
  {
    LODWORD(v3) = 0;
  }

  v4 = &astSqrtTbl + 8 * v2;
  if (*v4 < a2)
  {
    if (a2 < 0x800000)
    {
      v4 = &astSqrtTbl + 8 * v3;
      if (*v4 >= a2)
      {
        goto LABEL_28;
      }

      goto LABEL_11;
    }

    v4 = &unk_26ED7C3F8;
    LODWORD(v2) = 1023;
    goto LABEL_27;
  }

  if (*v4 <= a2)
  {
LABEL_27:
    a1[1] = v2;
    goto LABEL_30;
  }

  v4 = &astSqrtTbl + 8 * v3;
  if (*v4 >= a2)
  {
LABEL_28:
    *a1 = v3;
    goto LABEL_30;
  }

LABEL_14:
  if (v2 - v3 < 2)
  {
LABEL_20:
    if (a1)
    {
      *a1 = v3;
      a1[1] = v2;
    }

    v2 = v2;
    if (a2 - *(&astSqrtTbl + 2 * v3) < *(&astSqrtTbl + 2 * v2) - a2)
    {
      v2 = v3;
    }

    v6 = (&astSqrtTbl + 8 * v2 + 4);
  }

  else
  {
    while (1)
    {
      v5 = (&astSqrtTbl + 8 * ((v2 + v3) / 2));
      if (*v5 == a2)
      {
        break;
      }

      if (*v5 > a2)
      {
        LODWORD(v2) = (v2 + v3) / 2;
      }

      else
      {
        LODWORD(v3) = (v2 + v3) / 2;
      }

      if (v2 - v3 <= 1)
      {
        goto LABEL_20;
      }
    }

    v6 = v5 + 1;
  }

  return *v6;
}

double Init_SqrtSearch(void *a1)
{
  *&result = 0x3FF00000000;
  *a1 = 0x3FF00000000;
  return result;
}

uint64_t GetInterpolatedValue(uint64_t a1, unsigned int *a2, int a3, int a4, int *a5, int a6)
{
  if (a5)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= a3)
  {
    goto LABEL_16;
  }

  v7 = -v6;
  v8 = (a1 + 4 * v6);
  while (1)
  {
    v9 = *v8++;
    if (v9 > a4)
    {
      break;
    }

    --v7;
    if (a3 == ++v6)
    {
      v6 = a3;
      goto LABEL_16;
    }
  }

  v10 = -v7;
  if (-v7 < 1)
  {
LABEL_16:
    if (v6)
    {
      result = a2[a3 - 1];
      if (!a5)
      {
        return result;
      }
    }

    else
    {
      result = *a2;
      if (!a5)
      {
        return result;
      }
    }

    goto LABEL_20;
  }

  v11 = ~v7;
  v12 = *(a1 + 4 * v11);
  v13 = a2[v11];
  v14 = v10;
  v15 = *(a1 + v14 * 4);
  v16 = a2[v14];
  v17 = a4 - v12;
  if (!a6)
  {
    result = (((v17 << 12) / (v15 - v12) * v16 + (4096 - (v17 << 12) / (v15 - v12)) * v13) / 4096);
    if (!a5)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v17 <= v15 - a4)
  {
    result = v13;
  }

  else
  {
    result = v16;
  }

  if (a5)
  {
LABEL_20:
    *a5 = v6;
  }

  return result;
}

uint64_t FixedRFFT(uint64_t result, int a2)
{
  v2 = result;
  if (a2 <= 127)
  {
    if (a2 == 32)
    {
      v68 = &RFFT_table_32;
      v3 = 5;
    }

    else
    {
      if (a2 != 64)
      {
        return result;
      }

      v68 = &RFFT_table_64;
      v3 = 6;
    }
  }

  else
  {
    switch(a2)
    {
      case 128:
        v68 = &RFFT_table_128;
        v3 = 7;
        break;
      case 256:
        v68 = &RFFT_table_256;
        v3 = 8;
        break;
      case 512:
        v68 = &RFFT_table_512;
        v3 = 9;
        break;
      default:
        return result;
    }
  }

  v66 = v3;
  v4 = 0;
  v5 = 0;
  v6 = (a2 - 1);
  do
  {
    if (v4 < v5)
    {
      v7 = *(result + 4 * v5);
      *(result + 4 * v5) = *(result + 4 * v4);
      *(result + 4 * v4) = v7;
    }

    v8 = a2;
    do
    {
      v9 = v5;
      v10 = v8 >> 1;
      v11 = __OFSUB__(v5, v8 >> 1);
      v5 -= v8 >> 1;
      v8 >>= 1;
    }

    while (v5 < 0 == v11);
    v5 = v9 + v10;
    ++v4;
  }

  while (v4 != v6);
  v12 = 0;
  v13 = a2;
  v14 = 4;
  do
  {
    if (v12 < a2)
    {
      v15 = v12;
      v16 = (result + 4 + 4 * v12);
      do
      {
        v17 = *(v16 - 1) + *v16;
        v18 = v17 - 2 * *v16;
        *(v16 - 1) = v17;
        *v16 = v18;
        v15 += v14;
        v16 += v14;
      }

      while (v15 < a2);
    }

    v12 = 2 * v14 - 2;
    v14 *= 4;
  }

  while (v12 < v6);
  v19 = 2;
  v67 = 1;
  v104 = result;
  v91 = a2;
  do
  {
    v73 = v19;
    v78 = 2 * v19;
    v81 = (2 * v19) >> 2;
    v70 = ((2 * v19) >> 3);
    v69 = 4 * v19;
    v20 = 0;
    v88 = 4 * v70;
    v86 = 8 * v81;
    v21 = 4 * v19;
    do
    {
      v22 = v20;
      v23 = v21;
      v102 = v88 + 4 * v20;
      v24 = 4 * v21;
      v100 = v88 + 4 * (v81 + v20);
      v98 = v86 + 4 * v70 + 4 * v20;
      v25 = v86 + 4 * v20;
      v96 = 12 * v81 + 4 * v70 + 4 * v20;
      v26 = v20;
      v27 = 12 * v81 + 4 * v20;
      v92 = v24;
      v94 = v21;
      do
      {
        v28 = *(v2 + v27) - *(v2 + v25);
        *(v2 + v27) = v28;
        v29 = *(v2 + 4 * v22) - (v28 + 2 * *(v2 + v25));
        *(v2 + v25) = v29;
        *(v2 + 4 * v22) = 2 * *(v2 + 4 * v22) - v29;
        if (v78 != 4)
        {
          v30 = QMul31(*(v2 + v98) - *(v2 + v96), 1518500250);
          v31 = *(v2 + v100);
          result = QMul31(*(v2 + v96) + *(v2 + v98), 1518500250);
          v24 = v92;
          v23 = v94;
          v13 = v91;
          *(v2 + v96) = v31 - result;
          *(v2 + v98) = v31 - result - 2 * *(v2 + v100);
          *(v2 + v100) = *(v2 + v102) - v30;
          *(v2 + v102) += v30;
        }

        v26 += v23;
        v2 += v24;
      }

      while (v26 < v13);
      v20 = 2 * (v23 - v73);
      v21 = 4 * v23;
      v2 = v104;
    }

    while (v20 < a2);
    if (v70 > 1)
    {
      v76 = 12 * v81 + 4;
      v77 = v81 + 1;
      v75 = (2 * v81) | 1;
      v32 = 2 * v81 - 1;
      v33 = v32 + v81;
      v34 = 4 * v81 - 1;
      v35 = v81 - 1;
      v74 = 4;
      for (i = 1; i != v70; ++i)
      {
        v36 = 0;
        v37 = &v68[16 * (i << (v66 + ~v67)) - 16];
        v38 = *v37;
        v39 = v69;
        v83 = v32;
        v80 = v34;
        v82 = v33;
        v79 = v35;
        do
        {
          v40 = v36;
          v93 = v39;
          v89 = 4 * v39;
          v90 = v74 + 4 * v36;
          v85 = v76 + 4 * v36;
          v87 = v77 + v36;
          v41 = v2;
          v84 = v75 + v36;
          do
          {
            v103 = v35 + v40;
            v101 = v32 + v40;
            v42 = v33 + v40;
            v99 = v33 + v40;
            v43 = v34 + v40;
            v44 = QMul31(*(v41 + 4 * v84), v38);
            v45 = *(v2 + 4 * v42);
            v46 = v37[1];
            v97 = QMul31(v45, v46) + v44;
            v47 = QMul31(*(v104 + 4 * v42), v38);
            v95 = v47 - QMul31(*(v41 + 4 * v84), v46);
            v48 = v37[2];
            v49 = QMul31(*(v41 + v85), v48);
            v50 = v37;
            v51 = v37[3];
            v52 = QMul31(*(v104 + 4 * v43), v51) + v49;
            v53 = QMul31(*(v104 + 4 * v43), v48);
            v54 = v51;
            v37 = v50;
            v55 = QMul31(*(v41 + v85), v54);
            v35 = v79;
            v34 = v80;
            v13 = v91;
            v56 = v53 - v55;
            v57 = v53 - v55 + v95;
            result = v101;
            v58 = *(v104 + 4 * v101);
            v59 = v57 + v58;
            *(v41 + 4 * v84) = v57 - v58;
            v60 = v52 + v97;
            *(v104 + 4 * v43) = v59;
            v61 = v97 - v52;
            v2 = v104;
            v62 = *(v41 + 4 * v87);
            *(v104 + 4 * v99) = -v62 - v61;
            *(v41 + v85) = v62 - v61;
            v33 = v82;
            v63 = *(v41 + v90);
            *(v104 + 4 * v101) = v63 - v60;
            *(v41 + v90) = v63 + v60;
            v32 = v83;
            v64 = v95 - v56;
            v65 = *(v104 + 4 * v103);
            *(v104 + 4 * v103) = v65 - v64;
            *(v41 + 4 * v87) = v65 + v64;
            v40 += v93;
            v41 += v89;
          }

          while (v40 < v91);
          v36 = 2 * (v93 - v73);
          v39 = 4 * v93;
        }

        while (v36 < a2);
        ++v77;
        v76 += 4;
        v74 += 4;
        ++v75;
        v32 = v83 - 1;
        v33 = v82 - 1;
        v34 = v80 - 1;
        v35 = v79 - 1;
      }
    }

    v19 = v78;
    ++v67;
  }

  while (v67 != v66);
  return result;
}

int *FixedIRFFT(int *result, int a2)
{
  if (a2 <= 127)
  {
    if (a2 == 32)
    {
      v75 = &RFFT_table_32;
      v2 = 5;
    }

    else
    {
      if (a2 != 64)
      {
        return result;
      }

      v75 = &RFFT_table_64;
      v2 = 6;
    }
  }

  else
  {
    switch(a2)
    {
      case 128:
        v75 = &RFFT_table_128;
        v2 = 7;
        break;
      case 256:
        v75 = &RFFT_table_256;
        v2 = 8;
        break;
      case 512:
        v75 = &RFFT_table_512;
        v2 = 9;
        break;
      default:
        return result;
    }
  }

  v85 = 2 * a2;
  v3 = a2;
  v74 = 1;
  v100 = a2;
  v115 = result;
  v73 = v2;
  do
  {
    v4 = 0;
    v5 = v85;
    v85 >>= 1;
    v6 = v5 >> 3;
    v98 = 4 * (v5 >> 4);
    v96 = 8 * v6;
    v94 = 8 * v6 + v98;
    v77 = v5 >> 4;
    v92 = 12 * v6;
    v90 = 12 * v6 + v98;
    v88 = v5;
    v7 = v5;
    v101 = v6;
    do
    {
      v8 = v4;
      v9 = v7;
      v116 = v98 + 4 * v4;
      v10 = 4 * v7;
      v11 = v6 + v4;
      v113 = v98 + v11 * 4;
      v111 = v94 + 4 * v4;
      v12 = v96 + 4 * v4;
      v105 = v90 + 4 * v4;
      v13 = result;
      v14 = v4;
      v15 = v92 + 4 * v4;
      v107 = v10;
      v109 = v7;
      v103 = v4;
      do
      {
        v16 = v13[v8];
        v17 = *(v13 + v12);
        v13[v8] = v17 + v16;
        v13[v11] *= 2;
        v18 = v16 - v17;
        *(v13 + v12) = v18 - 2 * *(v13 + v15);
        *(v13 + v15) = v18 + 2 * *(v13 + v15);
        if (v6 != 1)
        {
          v19 = QMul31(*(v13 + v113) - *(v13 + v116), 1518500250);
          v20 = QMul31(*(v13 + v111) + *(v13 + v105), 1518500250);
          v8 = v103;
          v10 = v107;
          v9 = v109;
          v3 = v100;
          v6 = v101;
          *(v13 + v116) += *(v13 + v113);
          *(v13 + v113) = *(v13 + v105) - *(v13 + v111);
          *(v13 + v111) = -2 * (v20 + v19);
          *(v13 + v105) = 2 * (v19 - v20);
        }

        v14 += v9;
        v13 = (v13 + v10);
      }

      while (v14 < v3);
      v4 = 2 * v9 - v85;
      v7 = 4 * v9;
      v21 = a2;
      result = v115;
    }

    while (v4 < a2);
    if (v88 >= 0x20)
    {
      v84 = 0;
      v76 = v88 & 0x7FFFFFFE;
      v82 = 12 * v6 + 4;
      v83 = v6 + 1;
      v22 = (2 * v6) | 1;
      v23 = 2 * v6 - 1;
      v24 = v23 + v6;
      v25 = 4 * v6 - 1;
      v26 = v6 - 1;
      v80 = 4;
      v81 = v22;
      v27 = 1;
      v89 = v24;
      v91 = v23;
      v86 = v26;
      v87 = v25;
      do
      {
        v28 = 0;
        v78 = v27;
        v29 = &v75[16 * (v27 << (v74 - 1)) - 16];
        v30 = *v29;
        v31 = v76;
        v114 = *v29;
        do
        {
          v32 = v28;
          v102 = v31;
          v97 = 4 * v31;
          v99 = v80 + 4 * v28;
          v95 = v83 + v28;
          v117 = v82 + 4 * v28;
          v33 = v84 + v28;
          v34 = result;
          v93 = v81 + v28;
          do
          {
            v112 = v32;
            v35 = v23 + v33;
            v106 = v24 + v33;
            v110 = v25 + v33;
            v36 = *(v34 + v99);
            v37 = result[v23 + v33];
            v104 = v36 - v37;
            *(v34 + v99) = v37 + v36;
            v38 = result[v26 + v33];
            v39 = v34[v95];
            v108 = v38 - v39;
            result[v26 + v33] = v39 + v38;
            v40 = result[v25 + v33];
            v41 = v34[v93];
            v42 = v41 + v40;
            result[v35] = v40 - v41;
            v43 = *(v34 + v117);
            v44 = result[v24 + v33];
            v45 = v44 + v43;
            v34[v95] = v43 - v44;
            v46 = v104 - (v44 + v43);
            v47 = QMul31(v46, v30);
            v48 = v29;
            v49 = v29[1];
            v34[v93] = QMul31(v108 - v42, v49) + v47;
            v50 = QMul31(v108 - v42, v114);
            v51 = v49;
            v29 = v48;
            v115[v106] = QMul31(v46, v51) - v50;
            v52 = v48[2];
            v53 = QMul31(v45 + v104, v52);
            v54 = v48[3];
            *(v34 + v117) = v53 - QMul31(v42 + v108, v54);
            v55 = QMul31(v42 + v108, v52);
            v56 = QMul31(v45 + v104, v54);
            v30 = v114;
            v26 = v86;
            v25 = v87;
            v24 = v89;
            v23 = v91;
            v57 = v56 + v55;
            result = v115;
            v115[v110] = v57;
            v3 = v100;
            v32 = v112 + v102;
            v34 = (v34 + v97);
            v33 += v102;
          }

          while (v112 + v102 < v100);
          v28 = 2 * v102 - v85;
          v31 = 4 * v102;
          v21 = a2;
        }

        while (v28 < a2);
        v27 = v78 + 1;
        ++v83;
        v82 += 4;
        v80 += 4;
        ++v81;
        --v84;
      }

      while (v78 + 1 != v77);
    }

    ++v74;
  }

  while (v74 != v73);
  v58 = 0;
  v59 = (v21 - 1);
  v60 = 4;
  do
  {
    if (v58 < v21)
    {
      v61 = v58;
      v62 = &result[v58 + 1];
      do
      {
        v63 = *(v62 - 1) + *v62;
        v64 = v63 - 2 * *v62;
        *(v62 - 1) = v63;
        *v62 = v64;
        v61 += v60;
        v62 += v60;
      }

      while (v61 < v3);
    }

    v58 = 2 * v60 - 2;
    v60 *= 4;
  }

  while (v58 < v59);
  v65 = 0;
  v66 = 0;
  do
  {
    if (v65 < v66)
    {
      v67 = result[v66];
      result[v66] = result[v65];
      result[v65] = v67;
    }

    v68 = v21;
    do
    {
      v69 = v66;
      v70 = v68 >> 1;
      v71 = __OFSUB__(v66, v68 >> 1);
      v66 -= v68 >> 1;
      v68 >>= 1;
    }

    while (v66 < 0 == v71);
    v66 = v69 + v70;
    ++v65;
  }

  while (v65 != v59);
  v72 = v21;
  do
  {
    *result++ >>= v73;
    --v72;
  }

  while (v72);
  return result;
}

uint64_t QMul31(int a1, int a2)
{
  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  v3 = (a1 >> 31) | 1;
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  if (a2 < 0)
  {
    v3 = -v3;
  }

  return ((((v4 & 0x7FFF) * (v2 >> 15) + (v4 >> 15) * (v2 & 0x7FFF)) >> 16) + (((v4 >> 15) * (v2 >> 15)) >> 1)) * v3;
}

uint64_t c_abs(uint64_t result)
{
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

uint64_t call_cfsv_construct(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4)
{
  result = heap_Calloc(*(a1 + 8), 24, 1);
  if (result)
  {
    *result = a3;
    *(result + 8) = a2;
    *(result + 16) = 0;
    *(result + 20) = a4;
  }

  return result;
}

void *call_cfsv_destruct(void *result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      return heap_Free(result[1], a2);
    }
  }

  return result;
}

uint64_t call_cfsv_rfft(__int16 *a1, int a2)
{
  if (*a1 < a2)
  {
    return 0;
  }

  result = 0;
  if (a2 <= 127)
  {
    if (a2 != 32 && a2 != 64)
    {
      return result;
    }
  }

  else if (a2 != 128 && a2 != 512 && a2 != 256)
  {
    return result;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = a2;
  do
  {
    v9 = (c_abs(*(*(a1 + 1) + 4 * v5)) >> v7) + v6;
    if (v9 <= 0x3FFFFFFF)
    {
      v10 = v7;
    }

    else
    {
      v10 = v7 + 1;
    }

    v7 = v10;
    v6 = v9 >> (v9 > 0x3FFFFFFF);
    ++v5;
  }

  while (v8 != v5);
  if (v10 >= 1)
  {
    call_cfsv_setScale(a1, (a1[10] - v10));
  }

  FixedRFFT(*(a1 + 1), a2);
  return 1;
}

unsigned __int16 *call_cfsv_setScale(unsigned __int16 *result, int a2)
{
  v2 = result[10];
  if (v2 != a2)
  {
    v3 = v2;
    v4 = *result;
    v5 = v3 - a2;
    if (v3 >= a2)
    {
      if (v4 >= 1)
      {
        v8 = *(result + 1);
        do
        {
          *v8++ >>= v5;
          --v4;
        }

        while (v4);
      }
    }

    else if (v4 >= 1)
    {
      v6 = a2 - v3;
      v7 = *(result + 1);
      do
      {
        *v7++ <<= v6;
        --v4;
      }

      while (v4);
    }

    result[10] = a2;
  }

  return result;
}

uint64_t call_cfsv_rifft(__int16 *a1, int a2)
{
  if (*a1 < a2)
  {
    return 0;
  }

  result = 0;
  if (a2 <= 127)
  {
    if (a2 != 32 && a2 != 64)
    {
      return result;
    }
  }

  else if (a2 != 128 && a2 != 512 && a2 != 256)
  {
    return result;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = a2;
  do
  {
    v9 = (c_abs(*(*(a1 + 1) + 4 * v5)) >> v7) + v6;
    if (v9 <= 0x3FFFFFFF)
    {
      v10 = v7;
    }

    else
    {
      v10 = v7 + 1;
    }

    v7 = v10;
    v6 = v9 >> (v9 > 0x3FFFFFFF);
    ++v5;
  }

  while (v8 != v5);
  if (v10 >= 1)
  {
    call_cfsv_setScale(a1, (a1[10] - v10));
  }

  FixedIRFFT(*(a1 + 1), a2);
  return 1;
}

uint64_t call_cfsv_changeInputSampleOrder(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1;
  LODWORD(v3) = ((v2 + (v2 >> 15)) << 16) >> 17;
  if (v2 <= 1)
  {
    v3 = v3;
  }

  else
  {
    v4 = 0;
    v5 = ((*a1 >> 1) - 1);
    v3 = v3;
    v6 = (a2 + 16);
    v7 = (*(a1 + 1) + 36);
    v8 = (a2 + 4 * v2 - 16);
    do
    {
      *(v6 - 4) = *(v7 - 9);
      *(v6 - 3) = *(v7 - 7);
      *(v6 - 2) = *(v7 - 5);
      *(v6 - 1) = *(v7 - 3);
      *v6 = *(v7 - 1);
      v6[1] = v7[1];
      v6[2] = v7[3];
      v6[3] = v7[5];
      v8[3] = *(v7 - 6);
      v8[2] = *(v7 - 4);
      v8[1] = *(v7 - 2);
      *v8 = *v7;
      *(v8 - 1) = v7[2];
      *(v8 - 2) = v7[4];
      *(v8 - 3) = v7[6];
      if (v4 + 7 < v5)
      {
        *(v8 - 4) = v7[8];
      }

      v7 += 16;
      v4 += 8;
      v6 += 8;
      v8 -= 8;
    }

    while (v4 < v3);
  }

  v9 = *(a1 + 1);
  *(a2 + 4 * v3) = *(v9 + 4);
  if (v2 >= 1)
  {
    v10 = 0;
    v11 = (a2 + 16);
    v12 = (v9 + 16);
    do
    {
      *(v12 - 4) = *(v11 - 4);
      *(v12 - 3) = *(v11 - 3);
      *(v12 - 2) = *(v11 - 2);
      *(v12 - 1) = *(v11 - 1);
      *v12 = *v11;
      v12[1] = v11[1];
      v12[2] = v11[2];
      v12[3] = v11[3];
      v10 += 8;
      v11 += 8;
      v12 += 8;
    }

    while (v10 < v2);
  }

  return 1;
}

uint64_t call_cfsv_changeOutputSampleOrder(unsigned __int16 *a1, _DWORD *a2)
{
  v2 = *a1;
  LODWORD(v3) = ((v2 + (v2 >> 15)) << 16) >> 17;
  if (v2 <= 1)
  {
    v3 = v3;
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 1);
    v6 = ((*a1 >> 1) - 1);
    v3 = v3;
    v7 = (v5 + 16);
    v8 = a2 + 9;
    v9 = (v5 + 4 * v2 - 16);
    do
    {
      *(v8 - 9) = *(v7 - 4);
      *(v8 - 7) = *(v7 - 3);
      *(v8 - 5) = *(v7 - 2);
      *(v8 - 3) = *(v7 - 1);
      *(v8 - 1) = *v7;
      v8[1] = v7[1];
      v8[3] = v7[2];
      v8[5] = v7[3];
      *(v8 - 6) = v9[3];
      *(v8 - 4) = v9[2];
      *(v8 - 2) = v9[1];
      *v8 = *v9;
      v8[2] = *(v9 - 1);
      v8[4] = *(v9 - 2);
      v8[6] = *(v9 - 3);
      if (v4 + 7 < v6)
      {
        v8[8] = *(v9 - 4);
      }

      v7 += 8;
      v9 -= 8;
      v4 += 8;
      v8 += 16;
    }

    while (v4 < v3);
  }

  v10 = *(a1 + 1);
  a2[1] = *(v10 + 4 * v3);
  if (v2 >= 1)
  {
    v11 = 0;
    v12 = a2 + 4;
    v13 = (v10 + 16);
    do
    {
      *(v13 - 4) = *(v12 - 4);
      *(v13 - 3) = *(v12 - 3);
      *(v13 - 2) = *(v12 - 2);
      *(v13 - 1) = *(v12 - 1);
      *v13 = *v12;
      v13[1] = v12[1];
      v13[2] = v12[2];
      v13[3] = v12[3];
      v11 += 8;
      v12 += 8;
      v13 += 8;
    }

    while (v11 < v2);
  }

  return 1;
}

uint64_t featex_bet5_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2229280774;
  if ((safeh_HandleCheck(a1, a2, 415, 248) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v14 = 0;
  v15 = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = *(v4 + 152);
    v5 = (v4 + 152);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  Voice = select_bet5_loadVoice(*(a1 + 24), *(a1 + 16), v7, &v14, 0);
  if ((Voice & 0x80000000) != 0)
  {
    return Voice;
  }

  if (v14)
  {
    USVoice = select_bet5_GetUSVoice(v14, v15);
    *(a1 + 32) = USVoice;
    if (!USVoice)
    {
      return v3;
    }
  }

  else if (!*(a1 + 32))
  {
    return v3;
  }

  VParam = select_bet5_GetVParam(v14, v15);
  *(a1 + 40) = VParam;
  if (VParam)
  {
    NNFeatexData = select_bet5_GetNNFeatexData(v14, v15);
    *(a1 + 104) = NNFeatexData;
    if (NNFeatexData)
    {
      *(a1 + 112) = select_bet5_GetTransWeightRulesDiph(v14, v15, (a1 + 128));
      *(a1 + 120) = select_bet5_GetTransWeightRulesPhon(v14, v15, (a1 + 132));
      nnfeatex_DeInit((a1 + 88));
      v12 = nnfeatex_Init(a1 + 88, *(a1 + 48), *(a1 + 32), *(a1 + 104), *(a1 + 16));
      if (v12)
      {
        return v12 | 0x84E02000;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t featex_bet5_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 415, 248) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  (*(*(a1 + 56) + 64))(a3, a4, 78, "application/x-realspeak-cspp-sptchk;version=4.0", 0, 0, a1 + 136);
  v7 = (*(*(a1 + 56) + 64))(a3, a4, 78, "application/x-realspeak-cspp-sgt;version=4.0", 0, 0, a1 + 152);
  v8 = 0;
  v9 = a1 + 168;
  do
  {
    v10 = *(a1 + 56);
    v11 = *(v10 + 64);
    v12 = szOUTPUT_STREAMS_0[v8];
    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = (*(v10 + 152))(v7);
    }

    v7 = v11(a3, a4, 207, v12, v13, 1, v9);
    v14 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v9 += 16;
  }

  while (v8++ < 3);
  if ((v7 & 0x80000000) != 0)
  {
    v16 = *(a1 + 56);
    v17 = (a1 + 176);
    v18 = 4;
    do
    {
      v19 = *(v17 - 1);
      if (v19)
      {
        (*(v16 + 72))(v19, *v17);
      }

      v17 += 2;
      --v18;
    }

    while (v18);
  }

  return v14;
}

uint64_t featex_bet5_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v50 = 0;
  v48 = 0;
  v9 = safeh_HandleCheck(a1, a2, 415, 248);
  if ((v9 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *a5 = 1;
  v10 = (a1 + 168);
  if (!*(a1 + 168))
  {
    return v9;
  }

  v49 = 0;
  v11 = *(a1 + 240);
  cstdlib_memset(v11, 0, 0xE48uLL);
  v12 = *(a1 + 32);
  *v11 = v12;
  if (!v12)
  {
    v14 = -2065686522;
    goto LABEL_9;
  }

  (*(*(a1 + 48) + 272))(a3, a4, 128, 3, 0, 0);
  v13 = nnfeatex_ProcessStart((a1 + 88), a3, a4, v11, &v48);
  if (v13)
  {
    v14 = v13 | 0x84E02000;
LABEL_9:
    v16 = 1;
LABEL_10:
    v17 = 4;
    do
    {
      if (*v10)
      {
        v18 = (*(*(a1 + 56) + 72))(*v10, v10[1]);
        *v10 = 0;
        if (v14 > -1 && v18 < 0)
        {
          v14 = v18;
        }
      }

      v10 += 2;
      --v17;
    }

    while (v17);
    if (v16)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v14 = UNICORN__select_bet5_FeatureExtractProcessStart(*(a1 + 80), *(a1 + 32), a3, a4, v11, &v48);
  if (v14 < 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FEATEX_BET5", 55005, "%s%x", v26, v27, v28, v29, "lhError");
    goto LABEL_9;
  }

  if (v11[5] <= 1)
  {
    v30 = v48;
    if (v48)
    {
      if (*v10)
      {
        if (*(v11 + 880))
        {
          v14 = (*(*(a1 + 56) + 104))();
          if (v14 < 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "FEATEX_BET5", 55008, "%s%s%s%x", v31, v32, v33, v34, "contentType");
          }
        }
      }

      v30 = 1;
    }

    *a5 = v30;
    goto LABEL_43;
  }

  Process = UNICORN__select_bet5_FeatureExtractProcess(*(a1 + 80), *(a1 + 40), a3, a4, *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), (a1 + 232), v11, (a1 + 64), (a1 + 72));
  if (Process < 0)
  {
    goto LABEL_60;
  }

  v36 = nnfeatex_Process((a1 + 88), a3, a4, v11, &v48, 0, &v50, &v49, 1);
  if (v36)
  {
    v14 = v36 | 0x84E02000;
    log_OutPublic(*(*(a1 + 16) + 32), "FEATEX_BET5", 70001, "%x", v37, v38, v39, v40, v36 | 0x84E02000);
    v16 = 0;
    goto LABEL_10;
  }

  featex_bet5_loc_ApplyTransWeightRules(*(a1 + 112), *(a1 + 128), *(a1 + 120), *(a1 + 132), *(a1 + 32), v11);
  if (log_GetLogLevel(*(*(a1 + 16) + 32)) >= 6)
  {
    featex_bet5_loc_logFeatures(*(a1 + 16), v11);
  }

  featex_bet5_removeRAPColumns(*(*(a1 + 32) + 3580), v11, v50, v49);
  Process = (*(*(a1 + 56) + 104))(*(a1 + 168), *(a1 + 176), *(a1 + 64), (32 * *(a1 + 72)));
  if (Process < 0 || (Process = featex_bet5_serializeFeatures(*(a1 + 16), *(a1 + 56), *(a1 + 184), *(a1 + 192), v11), Process < 0))
  {
LABEL_60:
    v14 = Process;
    goto LABEL_61;
  }

  v41 = *(a1 + 32);
  v42 = v11[5];
  if (!*(v41 + 3580))
  {
    v42 *= *(v41 + 3578);
  }

  v14 = (*(*(a1 + 56) + 104))(*(a1 + 200), *(a1 + 208), v50, 4 * v42 * v49);
  if (v14 < 0 || (v47 = *(*(a1 + 240) + 3608)) != 0 && (v14 = (*(*(a1 + 56) + 104))(*(a1 + 216), *(a1 + 224), v47, 4 * v11[5] * *(*(a1 + 32) + 3578)), v14 < 0))
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FEATEX_BET5", 70002, "%s%s%s%x", v43, v44, v45, v46, "contentType");
LABEL_61:
    v16 = 0;
    goto LABEL_10;
  }

LABEL_43:
  v16 = 0;
  if (v14 < 0 || v48)
  {
    goto LABEL_10;
  }

LABEL_19:
  ProcessEnd = UNICORN__select_bet5_FeatureExtractProcessEnd(*(a1 + 80), v11);
  if (ProcessEnd >= 0)
  {
    v21 = v14;
  }

  else
  {
    v21 = ProcessEnd;
  }

  v22 = nnfeatex_ProcessEnd((a1 + 88), &v50, &v49);
  if (v22)
  {
    v14 = v22 | 0x84E02000;
  }

  else
  {
    v14 = v21;
  }

LABEL_25:
  v23 = (*(*(a1 + 48) + 64))(a3, a4);
  if (v14 > -1 && v23 < 0)
  {
    v15 = v23;
  }

  else
  {
    v15 = v14;
  }

  if (*(a1 + 72))
  {
    heap_Free(*(*(a1 + 16) + 8), *(a1 + 64));
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  return v15;
}

BOOL featex_bet5_loc_ApplyTransWeightRules(_BOOL8 result, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 10) >= 1)
  {
    v9 = result;
    v10 = 0;
    v17 = (a3 + 8);
    v18 = (result + 8);
    do
    {
      if (a2)
      {
        v11 = 0;
        v12 = v18;
        do
        {
          result = featex_bet5_loc_TransRulesMatch(a5, v9, a6, v10, v11);
          if (result)
          {
            v13 = *(v12 - 1) + v10 * *(*a6 + 3360);
            *(*(a6 + 3584) + 4 * v13) = ((*v12 * *(*(a6 + 3584) + 4 * v13)) + 0.5);
          }

          ++v11;
          v12 += 3;
        }

        while (a2 != v11);
      }

      if (a4)
      {
        v14 = 0;
        v15 = v17;
        do
        {
          result = featex_bet5_loc_TransRulesMatch(a5, a3, a6, v10, v14);
          if (result)
          {
            v16 = *(v15 - 1) + v10 * *(*a6 + 3360);
            *(*(a6 + 3592) + 4 * v16) = ((*v15 * *(*(a6 + 3592) + 4 * v16)) + 0.5);
          }

          ++v14;
          v15 += 3;
        }

        while (a4 != v14);
      }

      ++v10;
    }

    while (v10 < *(a6 + 10));
  }

  return result;
}

uint64_t featex_bet5_loc_logFeatures(uint64_t result, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a2 + 10) >= 1)
  {
    v3 = result;
    LH_itoa(0xCFu, v18, 0xAu);
    v4 = 0;
    v5 = a2 + 16;
    v6 = a2 + 1760;
    do
    {
      v7 = dword_26ED7CBB4[v4];
      v8 = "application/x-realspeak-u8-feat-";
      if (*(v5 + 8 * v7) || (v8 = "application/x-realspeak-u16-feat-", *(v6 + 8 * v7)))
      {
        cstdlib_strncpy(__dst, v8, 0x100uLL);
        v9 = cstdlib_strlen(__dst);
        LH_itoa(v7, &__dst[v9], 0xAu);
        v10 = *(v5 + 8 * v7);
        v11 = v10;
        if (!v10)
        {
          v11 = *(v6 + 8 * v7);
        }

        log_OutBinary(*(v3 + 32), "FEATEX_BET5", 100, 0, v18, __dst, v11, *(a2 + 10) << (v10 == 0), 0);
      }

      ++v4;
    }

    while (v4 != 5);
    LH_itoa(0x4Eu, v18, 0xAu);
    if (*(a2 + 504))
    {
      cstdlib_strncpy(__dst, "application/x-realspeak-u8-feat-", 0x100uLL);
      v12 = cstdlib_strlen(__dst);
      LH_itoa(0x3Du, &__dst[v12], 0xAu);
      log_OutBinary(*(v3 + 32), "SELECT_BET5", 100, 0, v18, __dst, *(a2 + 504), *(a2 + 10), 0);
    }

    if (*(a2 + 512))
    {
      cstdlib_strncpy(__dst, "application/x-realspeak-u8-feat-", 0x100uLL);
      v13 = cstdlib_strlen(__dst);
      LH_itoa(0x3Eu, &__dst[v13], 0xAu);
      log_OutBinary(*(v3 + 32), "SELECT_BET5", 100, 0, v18, __dst, *(a2 + 512), *(a2 + 10), 0);
    }

    for (i = 97; i != 123; ++i)
    {
      if (*(a2 + 8 * i))
      {
        cstdlib_strncpy(__dst, "application/x-realspeak-u8-feat-", 0x100uLL);
        v15 = cstdlib_strlen(__dst);
        LH_itoa(i - 2, &__dst[v15], 0xAu);
        log_OutBinary(*(v3 + 32), "SELECT_BET5", 100, 0, v18, __dst, *(a2 + 8 * i), *(a2 + 10), 0);
      }
    }

    cstdlib_strncpy(__dst, "application/x-realspeak-u32-feat-", 0x100uLL);
    v16 = cstdlib_strlen(__dst);
    LH_itoa(0x35u, &__dst[v16], 0xAu);
    log_OutBinary(*(v3 + 32), "FEATEX_BET5", 100, 0, v18, __dst, *(a2 + 3584), 4 * *(a2 + 10) * *(*a2 + 3360), 0);
    cstdlib_strncpy(__dst, "application/x-realspeak-u32-feat-", 0x100uLL);
    v17 = cstdlib_strlen(__dst);
    LH_itoa(0x36u, &__dst[v17], 0xAu);
    return log_OutBinary(*(v3 + 32), "FEATEX_BET5", 100, 0, v18, __dst, *(a2 + 3592), 4 * *(a2 + 10) * *(*a2 + 3360), 0);
  }

  return result;
}

void *featex_bet5_removeRAPColumns(void *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v32 = result;
  v4 = *(a2 + 10);
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v31 = 4 * a4;
    do
    {
      v10 = v4;
      v11 = v4 - 1;
      if (v11 <= v8)
      {
        v13 = v8;
        v12 = v8;
      }

      else
      {
        v12 = v8;
        v13 = v8;
        do
        {
          if (*(*(a2 + 3608) + 4 * v12 * *(*a2 + 3578)) != -2)
          {
            break;
          }

          v12 = ++v13;
        }

        while (v11 > v13);
      }

      if (v8 != v13)
      {
        v14 = (v4 - v12);
        if (v10 <= v12)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        if (v9 >= v12)
        {
          v17 = v13;
        }

        else
        {
          v16 = *(a2 + 1800);
          v17 = v13;
          v18 = *(v16 + 2 * v13);
          v19 = (v16 + v7);
          v20 = v6 + v12;
          do
          {
            v21 = *v19++;
            v18 += v21;
            *(v16 + 2 * v13) = v18;
            --v20;
          }

          while (v20);
        }

        if (v17 <= v8)
        {
          LOWORD(v4) = *(a2 + 10);
        }

        else
        {
          v36 = v6;
          v35 = v9;
          if (v32)
          {
            v22 = (a3 + 4 * v8 * a4);
            v23 = (a3 + 4 * v13 * a4);
            v24 = v31 * v15;
          }

          else
          {
            v25 = *(*a2 + 3578);
            v22 = (a3 + 4 * v25 * a4 * v8);
            v23 = (a3 + 4 * v25 * a4 * v13);
            v24 = v31 * v15 * v25;
          }

          cstdlib_memmove(v22, v23, v24);
          for (i = 0; i != 1728; i += 8)
          {
            v27 = *(a2 + i + 32);
            if (v27)
            {
              cstdlib_memmove((v27 + v8), (v27 + v17), v15);
            }

            v28 = *(a2 + i + 1776);
            if (v28)
            {
              cstdlib_memmove((v28 + 2 * v8), (v28 + 2 * v17), 2 * v15);
            }
          }

          v29 = *(a2 + 3552);
          if (v29)
          {
            cstdlib_memmove((v29 + 8 * v8), (v29 + 8 * v17), 8 * v15);
          }

          v30 = *(a2 + 3560);
          if (v30)
          {
            cstdlib_memmove((v30 + 9 * v8), (v30 + 9 * v17), 9 * v15);
          }

          cstdlib_memmove((*(a2 + 3568) + 4 * v35 * *(*a2 + 2966)), (*(a2 + 3568) + 4 * v12 * *(*a2 + 2966)), (4 * v15) * *(*a2 + 2966));
          cstdlib_memmove((*(a2 + 3576) + 4 * v35 * *(*a2 + 2966)), (*(a2 + 3576) + 4 * v12 * *(*a2 + 2966)), (4 * v15) * *(*a2 + 2966));
          cstdlib_memmove((*(a2 + 3584) + 4 * v35 * *(*a2 + 3360)), (*(a2 + 3584) + 4 * v12 * *(*a2 + 3360)), (4 * v15) * *(*a2 + 3360));
          cstdlib_memmove((*(a2 + 3592) + 4 * v35 * *(*a2 + 3360)), (*(a2 + 3592) + 4 * v12 * *(*a2 + 3360)), (4 * v15) * *(*a2 + 3360));
          cstdlib_memmove((*(a2 + 3600) + *(*a2 + 2966) * v35), (*(a2 + 3600) + *(*a2 + 2966) * v12), *(*a2 + 2966) * v15);
          result = cstdlib_memmove((*(a2 + 3608) + 4 * v35 * *(*a2 + 3578)), (*(a2 + 3608) + 4 * v12 * *(*a2 + 3578)), (4 * v15) * *(*a2 + 3578));
          LOWORD(v4) = v8 - v13 + *(a2 + 10);
          *(a2 + 10) = v4;
          v6 = v36;
        }
      }

      ++v8;
      v7 += 2;
      --v6;
      v9 = v8;
    }

    while (v8 < v4);
  }

  return result;
}

uint64_t featex_bet5_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 415, 248);
  if ((v3 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v4 = v3;
  v5 = *(a1 + 56);
  v6 = (a1 + 176);
  v7 = 4;
  do
  {
    v8 = *(v6 - 1);
    if (v8)
    {
      (*(v5 + 72))(v8, *v6);
    }

    v6 += 2;
    --v7;
  }

  while (v7);
  return v4;
}

uint64_t featex_bet5_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &IFeatextract_0;
  return result;
}

BOOL featex_bet5_loc_TransRulesMatch(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v8 = (a2 + 12 * a5);
  if (!cstdlib_strchr(*(*(a1 + 3424) + 8 * *v8), *(*(a3 + 32) + a4)))
  {
    return 0;
  }

  v9 = a4 + 1;
  if (!cstdlib_strchr(*(*(a1 + 3424) + 8 * v8[1]), *(*(a3 + 32) + v9)))
  {
    return 0;
  }

  v10 = a4 ? *(*(a3 + 32) + a4 - 1) : 35;
  if (!cstdlib_strchr(*(*(a1 + 3424) + 8 * v8[2]), v10))
  {
    return 0;
  }

  v11 = *(a3 + 10) - 2;
  if (v11 != a4)
  {
    if (cstdlib_strchr(*(*(a1 + 3424) + 8 * v8[3]), *(*(a3 + 32) + a4 + 2)))
    {
      goto LABEL_12;
    }

    v11 = *(a3 + 10) - 2;
  }

  if (v11 != a4 || !cstdlib_strchr(*(*(a1 + 3424) + 8 * v8[3]), 35))
  {
    return 0;
  }

LABEL_12:
  if ((*(a1 + 3092) & 0x80000000) != 0)
  {
    return 1;
  }

  v12 = *(a1 + 3432);
  v13 = *(v12 + 8 * v8[4]);
  if (v13)
  {
    if (!cstdlib_strchr(v13, *(*(a3 + 248) + a4) + 48))
    {
      return 0;
    }

    v12 = *(a1 + 3432);
  }

  v14 = *(v12 + 8 * v8[5]);
  return !v14 || cstdlib_strchr(v14, *(*(a3 + 248) + v9) + 48);
}

uint64_t featex_bet5_ClassOpen(_WORD *a1, int a2, uint64_t a3)
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
    *(a3 + 8) = 416;
  }

  return result;
}

uint64_t featex_bet5_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v32);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = heap_Calloc(*(v32 + 8), 1, 248);
  if (v10 && (v15 = v10, *v10 = a3, v10[1] = a4, v16 = v32, v10[2] = v32, v10[3] = a1, v10[6] = 0, v17 = v10 + 6, v10[4] = 0, v10[7] = 0, v18 = heap_Calloc(*(v16 + 8), 1, 3656), (v15[30] = v18) != 0))
  {
    v28 = 0;
    LODWORD(v29) = 0;
    Voice = select_bet5_loadVoice(v15[3], v15[2], 0, &v28, 0);
    if ((Voice & 0x80000000) != 0)
    {
LABEL_16:
      featex_bet5_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
      return Voice;
    }

    USVoice = select_bet5_GetUSVoice(v28, v29);
    v15[4] = USVoice;
    if (USVoice)
    {
      VParam = select_bet5_GetVParam(v28, v29);
      v15[5] = VParam;
      if (VParam)
      {
        NNFeatexData = select_bet5_GetNNFeatexData(v28, v29);
        v15[13] = NNFeatexData;
        if (NNFeatexData)
        {
          v15[14] = select_bet5_GetTransWeightRulesDiph(v28, v29, v15 + 32);
          v15[15] = select_bet5_GetTransWeightRulesPhon(v28, v29, v15 + 33);
          Object = objc_GetObject(*(v32 + 48), "LINGDB", &v30);
          if ((Object & 0x80000000) != 0 || (*v17 = *(v30 + 8), Object = objc_GetObject(*(v32 + 48), "SYNTHSTREAM", &v31), (Object & 0x80000000) != 0) || (v24 = *(v31 + 8), v15[7] = v24, Object = UNICORN__select_bet5_FeatureExtractObjOpen(a3, a4, v24, v15[6], v15 + 10), (Object & 0x80000000) != 0))
          {
            Voice = Object;
          }

          else
          {
            v25 = nnfeatex_Init((v15 + 11), v15[6], v15[4], v15[13], v15[2]);
            if (!v25)
            {
              Voice = 0;
              *a5 = v15;
              *(a5 + 8) = 415;
              return Voice;
            }

            Voice = v25 | 0x84E02000;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    Voice = 2229280778;
    log_OutPublic(*(v32 + 32), "FEATEX_BET5", 31000, 0, v11, v12, v13, v14, v27);
  }

  return Voice;
}

uint64_t featex_bet5_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 415, 248);
  if ((v3 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (!a1)
  {
    return v3;
  }

  nnfeatex_DeInit(a1 + 11);
  ObjClose = UNICORN__select_bet5_FeatureExtractObjClose(a1[10]);
  if (a1[6])
  {
    objc_ReleaseObject(*(a1[2] + 48), "LINGDB");
  }

  if (a1[7])
  {
    objc_ReleaseObject(*(a1[2] + 48), "SYNTHSTREAM");
  }

  v5 = a1[4];
  if (v5)
  {
    v6 = a1[3];
    if (!v6 || (v7 = *(v6 + 48)) == 0)
    {
      v7 = *(a1[2] + 48);
    }

    objc_ReleaseObject(v7, v5 + 152);
  }

  v8 = a1[30];
  if (v8)
  {
    heap_Free(*(a1[2] + 8), v8);
  }

  heap_Free(*(a1[2] + 8), a1);
  return ObjClose;
}

uint64_t featex_bet5_serializeFeatures(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = 0;
  v10 = 0;
  v11 = *a5;
  __dst = 0;
  v12 = v11 + 2748;
  do
  {
    v13 = *(v12 + v9);
    if (*(v12 + v9))
    {
      if (v13 == 2)
      {
        v10 += 2;
      }

      else if (v13 == 1)
      {
        ++v10;
      }

      else if (v9 - 53 <= 1)
      {
        v10 += 4 * *(v11 + 3360);
      }
    }

    ++v9;
  }

  while (v9 != 218);
  v14 = *(v11 + 3336);
  if (v14 && *v14)
  {
    v15 = 0;
    v16 = v14 + 1;
      ;
    }

    v10 += v15;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  result = (*(a2 + 112))(a3, a4, &__dst, v10 * *(a5 + 5));
  if ((result & 0x80000000) == 0)
  {
    v28 = a4;
    v19 = 0;
    v20 = __dst;
    while (1)
    {
      v21 = *(v12 + v19);
      if (*(v12 + v19))
      {
        if (v21 == 2)
        {
          v24 = *(a5 + 5);
          cstdlib_memcpy(v20, a5[v19 + 220], 2 * v24);
          v20 += 2 * v24;
        }

        else
        {
          if (v21 == 1)
          {
            v22 = *(a5 + 5);
            v23 = a5[v19 + 2];
LABEL_28:
            cstdlib_memcpy(v20, v23, v22);
            v20 += v22;
            goto LABEL_29;
          }

          if (v19 - 53 <= 1)
          {
            v22 = 4 * *(a5 + 5) * *(v11 + 3360);
            if (v19 == 53)
            {
              v25 = 448;
            }

            else
            {
              v25 = 449;
            }

            v23 = a5[v25];
            goto LABEL_28;
          }
        }
      }

LABEL_29:
      if (++v19 == 218)
      {
        if (v15)
        {
          v26 = 0;
          do
          {
            v27 = *(a5 + 5);
            cstdlib_memcpy(v20, *(a5[438] + 8 * v26), v27);
            v20 += v27;
            ++v26;
          }

          while (v15 > v26);
        }

        return (*(a2 + 120))(a3, v28, v10 * *(a5 + 5));
      }
    }
  }

  return result;
}

uint64_t UnicornAddon_Init(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = 2229280778;
  v13 = *(a1 + 8);
  v14 = cstdlib_strlen(__s);
  v15 = heap_Calloc(v13, 1, (v14 + 1));
  *a6 = v15;
  if (v15)
  {
    cstdlib_strcpy(v15, __s);
    *(a6 + 8) = a3;
    *(a6 + 16) = a4;
    *(a6 + 24) = a5;
    *(a6 + 32) = 0;
    *(a6 + 40) = 0;
    if (!*(*(a3 + 568) + 6692) || !*(*(a4 + 568) + 6692))
    {
      return 0;
    }

    v16 = *(a3 + 2452);
    v17 = *(a4 + 2452);
    if (v16 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    v19 = heap_Calloc(*(a1 + 8), *(a4 + 2448), 4);
    if (v19)
    {
      v20 = v19;
      v21 = heap_Alloc(*(a1 + 8), 4 * *(a4 + 2448));
      if (v21)
      {
        v22 = v21;
        v23 = *(a4 + 2448);
        if (v23)
        {
          memset_pattern16(v21, &unk_26ED7CBD0, 4 * v23);
        }

        v24 = heap_Calloc(*(a1 + 8), *(a3 + 2448), 4);
        if (v24)
        {
          v25 = v24;
          v26 = heap_Alloc(*(a1 + 8), 4 * *(a3 + 2448));
          if (v26)
          {
            v27 = v26;
            v28 = *(a3 + 2448);
            if (v28)
            {
              memset_pattern16(v26, &unk_26ED7CBD0, 4 * v28);
            }

            v29 = *(a4 + 2448);
            if (v29)
            {
              v30 = 0;
              LODWORD(v31) = v28;
              do
              {
                if (v31)
                {
                  v32 = 0;
                  v33 = *(a4 + 2440);
                  v34 = *(a3 + 2440);
                  do
                  {
                    if (v18)
                    {
                      v35 = (v34 + 4 * (*(a3 + 2452) * v32));
                      v36 = (v33 + 4 * (v30 * *(a4 + 2452)));
                      v37 = 0.0;
                      v38 = v18;
                      do
                      {
                        v39 = *v36++;
                        v40 = v39;
                        v41 = *v35++;
                        v37 = v37 + ((v40 - v41) * (v40 - v41));
                        --v38;
                      }

                      while (v38);
                    }

                    else
                    {
                      v37 = 0.0;
                    }

                    if (v37 < *(v22 + 4 * v30))
                    {
                      *(v20 + 4 * v30) = v32;
                      *(v22 + 4 * v30) = v37;
                    }

                    if (v37 < *(v27 + 4 * v32))
                    {
                      *(v25 + 4 * v32) = v30;
                      *(v27 + 4 * v32) = v37;
                    }

                    ++v32;
                    v31 = *(a3 + 2448);
                  }

                  while (v32 < v31);
                  v29 = *(a4 + 2448);
                }

                ++v30;
              }

              while (v30 < v29);
            }

            *(a6 + 32) = v25;
            *(a6 + 40) = v20;
            heap_Free(*(a1 + 8), v22);
            heap_Free(*(a1 + 8), v27);
            return 0;
          }
        }
      }
    }
  }

  return v12;
}

void *UnicornAddon_Deinit(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  if (v4)
  {
    result = heap_Free(result[1], v4);
    *a2 = 0;
  }

  v5 = a2[5];
  if (v5)
  {
    result = heap_Free(v3[1], v5);
  }

  v6 = a2[4];
  if (v6)
  {
    v7 = v3[1];

    return heap_Free(v7, v6);
  }

  return result;
}

uint64_t UnicornAddon_UID2AddonId(uint64_t a1, int a2, unsigned int a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a3 != -1 && a2 >= 1)
  {
    v5 = 0;
    v6 = (a1 + 24);
    do
    {
      v7 = *v6;
      v6 += 12;
      if (v7 > a3)
      {
        break;
      }

      ++v5;
    }

    while (v5 < a2);
    return (v5 - 1);
  }

  return result;
}

void *UnicornPipelineFactory_Create(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = heap_Calloc(*(a2 + 8), 1, 112);
  v9 = v8;
  if (v8)
  {
    *(v8 + 8) = a2;
    if (a1 == 1)
    {
      v26 = heap_Calloc(*(a2 + 8), 1, 240);
      if (v26)
      {
        v11 = v26;
        v27 = UnicornPipelineMT_Create(v26, a2, a3, a4);
        v13 = UnicornPipelineMT_isMultiThreaded;
        v14 = UnicornPipelineMT_isDone;
        v15 = UnicornPipelineMT_SetSIMDCallbacks;
        v16 = UnicornPipelineMT_SetForcedEEEnabled;
        v17 = UnicornPipelineMT_GetForcedEEEnabled;
        v18 = UnicornPipelineMT_GetStream;
        v19 = UnicornPipelineMT_GetPreparedCount;
        v20 = UnicornPipelineMT_SynthesizeDummy;
        v21 = UnicornPipelineMT_ProcessPhoneme;
        v22 = UnicornPipelineMT_Destroy;
        v23 = UnicornPipelineMT_Release;
        v24 = UnicornPipelineMT_Init;
        if ((v27 & 0x80000000) == 0)
        {
          v25 = "Unicorn Pipeline is MULTITHREAD";
          goto LABEL_11;
        }
      }
    }

    else if (!a1)
    {
      v10 = heap_Calloc(*(a2 + 8), 1, 200);
      if (v10)
      {
        v11 = v10;
        v12 = UnicornPipeline_Create(v10, a2, a3, a4);
        v13 = UnicornPipeline_isMultiThreaded;
        v14 = UnicornPipeline_isDone;
        v15 = UnicornPipeline_SetSIMDCallbacks;
        v16 = UnicornPipeline_SetForcedEEEnabled;
        v17 = UnicornPipeline_GetForcedEEEnabled;
        v18 = UnicornPipeline_GetStream;
        v19 = UnicornPipeline_GetPreparedCount;
        v20 = UnicornPipeline_SynthesizeDummy;
        v21 = UnicornPipeline_ProcessPhoneme;
        v22 = UnicornPipeline_Destroy;
        v23 = UnicornPipeline_Release;
        v24 = UnicornPipeline_Init;
        if ((v12 & 0x80000000) == 0)
        {
          v25 = "Unicorn Pipeline is STANDARD SINGLETHREAD";
LABEL_11:
          v9[2] = v24;
          v9[3] = v23;
          v9[4] = v22;
          v9[5] = v21;
          v9[6] = v20;
          v9[7] = v19;
          v9[8] = v18;
          v9[9] = v17;
          v9[10] = v16;
          v9[11] = v15;
          v9[12] = v14;
          v9[13] = v13;
          *v9 = v11;
          UNICORN__log_select_Diag(a2, 3, v25);
          return v9;
        }
      }
    }

    return 0;
  }

  return v9;
}

uint64_t UnicornPipelineClass_Init(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((safeh_HandleCheck(a1, a2, 135969, 112) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v13 = a1[2];
  v14 = *a1;

  return v13(v14, a3, a4, a5, a6, a7);
}

uint64_t UnicornPipelineClass_Release(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 135969, 112) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v3 = a1[3];
  v4 = *a1;

  return v3(v4);
}

uint64_t UnicornPipelineClass_Destroy(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 135969, 112) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v3 = (a1[4])(*a1);
  if (*a1)
  {
    heap_Free(*(a1[1] + 8), *a1);
  }

  *a1 = 0;
  heap_Free(*(a1[1] + 8), a1);
  return v3;
}

uint64_t UnicornPipelineClass_ProcessPhoneme(uint64_t *a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 135969, 112) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v5 = a1[5];
  v6 = *a1;

  return v5(v6, a3);
}

uint64_t UnicornPipelineClass_SynthesizeDummy(uint64_t *a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 135969, 112) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v5 = a1[6];
  v6 = *a1;

  return v5(v6, a3);
}

uint64_t UnicornPipelineClass_GetPreparedCount(uint64_t *a1, int a2)
{
  safeh_HandleCheck(a1, a2, 135969, 112);
  v3 = a1[7];
  v4 = *a1;

  return v3(v4);
}

uint64_t UnicornPipelineClass_GetStream(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 135969, 112) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = a1[8];
  v4 = *a1;

  return v3(v4);
}

uint64_t UnicornPipelineClass_GetForcedEEEnabled(uint64_t *a1, int a2)
{
  safeh_HandleCheck(a1, a2, 135969, 112);
  v3 = a1[9];
  v4 = *a1;

  return v3(v4);
}

uint64_t UnicornPipelineClass_SetForcedEEEnabled(uint64_t *a1, int a2, uint64_t a3)
{
  safeh_HandleCheck(a1, a2, 135969, 112);
  v5 = a1[10];
  v6 = *a1;

  return v5(v6, a3);
}

uint64_t UnicornPipelineClass_SetSIMDCallbacks(uint64_t *a1, int a2, uint64_t a3)
{
  safeh_HandleCheck(a1, a2, 135969, 112);
  v5 = a1[11];
  v6 = *a1;

  return v5(v6, a3);
}

uint64_t UnicornPipelineClass_isDone(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 135969, 112) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = a1[12];
  v4 = *a1;

  return v3(v4);
}

uint64_t UnicornPipelineClass_isMultiThreaded(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 135969, 112) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = a1[13];
  v4 = *a1;

  return v3(v4);
}

float UNICORN__mfsProbToPenalty(float a1, float a2)
{
  v2 = (a2 * 0.39894) * expf(((a1 * a2) * (a1 * a2)) * -0.5);
  v3 = 20.0;
  if (v2 > 1.0e-10)
  {
    v3 = 0.0;
    if (v2 < 0.9)
    {
      return fabsf(logf(v2)) / 2.3026;
    }
  }

  return v3;
}

float UNICORN__mfsLogLikelihood(float a1, float a2)
{
  v3 = -(a1 * a1);
  v4 = UNICORN__bet5_finv(a2);
  return -(logf(v4) - (v3 * a2));
}

char *UNICORN__mfs_InitParam(uint64_t a1)
{
  v2 = (a1 + 11492);
  v3 = (a1 + 5580);
  cstdlib_memset(a1, 0, 0x2D88uLL);
  *(a1 + 11524) = 0;
  *(a1 + 11544) = 100000;
  *(a1 + 11536) = 0;
  *(a1 + 11488) = 0;
  *(a1 + 5548) = -4294965296;
  *(a1 + 5048) = 0;
  *(a1 + 5556) = 0x3F8000003F800000;
  *(a1 + 5564) = 2000;
  *(a1 + 5504) = xmmword_26ED7CBF0;
  *(a1 + 6120) = 0x3C00000001;
  *(a1 + 6128) = 1112014848;
  *(a1 + 6132) = xmmword_26ED7CC00;
  *(a1 + 6148) = 0x7530000000C8;
  *(a1 + 6156) = 1056964608;
  *(a1 + 6160) = 0x4248000040600000;
  *(a1 + 6664) = 0x186A0FFFFFFFFLL;
  *(a1 + 6192) = 3212836864;
  *(a1 + 6200) = 0;
  *(a1 + 6616) = 0u;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(a1 + 6584) = v4;
  *(a1 + 6600) = v4;
  *(a1 + 6552) = v4;
  *(a1 + 6568) = v4;
  *(a1 + 6520) = v4;
  *(a1 + 6536) = v4;
  *(a1 + 6488) = v4;
  *(a1 + 6504) = v4;
  *(a1 + 6456) = v4;
  *(a1 + 6472) = v4;
  *(a1 + 6424) = v4;
  *(a1 + 6440) = v4;
  *(a1 + 6392) = v4;
  *(a1 + 6408) = v4;
  *(a1 + 6360) = v4;
  *(a1 + 6376) = v4;
  *(a1 + 6328) = v4;
  *(a1 + 6344) = v4;
  *(a1 + 6296) = v4;
  *(a1 + 6312) = v4;
  *(a1 + 6264) = v4;
  *(a1 + 6280) = v4;
  *(a1 + 6232) = v4;
  *(a1 + 6248) = v4;
  *(a1 + 6632) = 200;
  v3[66] = xmmword_26ED7CC10;
  *(a1 + 6652) = 1084647014;
  *(a1 + 6656) = 0x40A6666640BCCCCDLL;
  *(a1 + 5980) = 0;
  *(a1 + 5992) = 1;
  *(a1 + 6000) = 0x4000000000000000;
  *(a1 + 6676) = xmmword_26ED7CC20;
  *(a1 + 6692) = 0;
  *(a1 + 6696) = 0x300000000;
  *(a1 + 6704) = 0;
  *(a1 + 6712) = 0;
  *(a1 + 6672) = 1123942400;
  *(a1 + 6744) = 0;
  *(a1 + 6728) = 0u;
  *(a1 + 6764) = 0;
  *(a1 + 6772) = 3;
  *(a1 + 6776) = 1056964608;
  *(a1 + 6784) = 1065353216;
  *(a1 + 5568) = 1084227584;
  *(a1 + 5576) = 950;
  *v3 = xmmword_26ED7CC30;
  *v2 = xmmword_26ED7CC40;
  v2[1] = xmmword_26ED7CC50;
  *(a1 + 5924) = 9;
  *(a1 + 5928) = 0x1400000001;
  UNICORN__InitVParam(a1);
  result = cstdlib_strcpy((a1 + 5072), "mfs");
  v6 = 0;
  *(a1 + 5524) = 1056964608;
  *(a1 + 10464) = 1065353216;
  v7 = (a1 + 10480);
  v8.i64[0] = 255;
  v8.i64[1] = 255;
  do
  {
    v9 = vdupq_n_s64(v6);
    v10 = vmovn_s64(vcgtq_u64(v8, vorrq_s8(v9, xmmword_26ECC7980)));
    if (vuzp1_s16(v10, 2).u8[0])
    {
      *(v7 - 3) = 1.0 / (v6 + 1);
    }

    if (vuzp1_s16(v10, 2).i8[2])
    {
      *(v7 - 2) = 1.0 / (v6 + 2);
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(v8, vorrq_s8(v9, xmmword_26ECCE810)))).i32[1])
    {
      *(v7 - 1) = 1.0 / (v6 + 3);
      *v7 = 1.0 / (v6 + 4);
    }

    v6 += 4;
    v7 += 4;
  }

  while (v6 != 256);
  return result;
}

void *UNICORN__mfs_DeInitParam(uint64_t a1, void *a2)
{
  UNICORN__DeInitVParam(a1, a2);
  v4 = a2[677];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    a2[677] = 0;
  }

  v5 = a2[1301];
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
    a2[1301] = 0;
  }

  v6 = a2[1302];
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    a2[1302] = 0;
  }

  v7 = a2[1303];
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
    a2[1303] = 0;
  }

  v8 = a2[1304];
  if (v8)
  {
    heap_Free(*(a1 + 8), v8);
    a2[1304] = 0;
  }

  v9 = a2[1305];
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    a2[1305] = 0;
  }

  v10 = a2[1306];
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    a2[1306] = 0;
  }

  v11 = a2[1307];
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    a2[1307] = 0;
  }

  v12 = a2[776];
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    a2[776] = 0;
  }

  v13 = a2[777];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    a2[777] = 0;
  }

  v14 = a2[778];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    a2[778] = 0;
  }

  return cstdlib_memset(a2, 0, 0x2D88uLL);
}

uint64_t BET5_Param_GetInfo(char *__s2, _DWORD *a2, _DWORD *a3)
{
  result = cstdlib_strcmp("F_PRUNE_DUR_OUTLIER_DIST_PARAM1", __s2);
  if (result)
  {
    v7 = &off_279DB6AC8;
    v8 = 7;
    do
    {
      v9 = v7;
      if (!--v8)
      {
        break;
      }

      v7 += 2;
      result = cstdlib_strcmp(*v9, __s2);
    }

    while (result);
  }

  else
  {
    v9 = &auxTableParamInfo;
  }

  *a2 = *(v9 + 2);
  *a3 = *(v9 + 3);
  return result;
}

uint64_t BET5_Param_GetType(int a1)
{
  v1 = &auxTableParamInfo;
  v2 = 7;
  while (*(v1 + 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      v1 = &unk_279DB6B28;
      return *(v1 + 3);
    }
  }

  return *(v1 + 3);
}

uint64_t BET5_Param_GetGlobalValue(uint64_t a1, int a2, _DWORD *a3)
{
  if ((a2 - 1) > 6)
  {
    return 2229280768;
  }

  result = 0;
  *a3 = *(a1 + qword_26ED7CC98[a2 - 1]);
  return result;
}

uint64_t select_bet5_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &ISelect_Bet5;
  return result;
}

uint64_t select_bet5_ClassOpen(_WORD *a1, int a2, uint64_t a3)
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
    *(a3 + 8) = 135967;
  }

  return result;
}

uint64_t select_bet5_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t *a5)
{
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  *a5 = 0;
  *(a5 + 2) = 0;
  inited = InitRsrcFunction(a3, a4, &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = heap_Calloc(*(v25 + 8), 1, 1304);
  v13 = v25;
  if (!v8)
  {
    log_OutPublic(*(v25 + 32), "SELECT_BET5", 31000, 0, v9, v10, v11, v12, v20[0]);
    return 2229280778;
  }

  v14 = v8;
  *v8 = a1;
  *(v8 + 8) = v13;
  *(v8 + 1296) = 0;
  *(v8 + 64) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v21 = 0;
  LODWORD(v22) = 0;
  Voice = select_bet5_loadVoice(a1, v25, 0, &v21, 0);
  if ((Voice & 0x80000000) != 0 || (Voice = safeh_HandleCheck(v21, v22, 117, 43432), (Voice & 0x80000000) != 0) || (*(v14 + 16) = v21, Voice = select_bet5_loc_CreateAddonListParamName(v14), (Voice & 0x80000000) != 0) || (Voice = paramc_ParamSetStr(*(*(v14 + 8) + 40), *(v14 + 40), ""), (Voice & 0x80000000) != 0) || (v16 = *(*(v14 + 8) + 40), v17 = *(v14 + 40), v20[0] = v14, v20[1] = select_bet5_loc_CheckParamChange, v20[2] = select_bet5_HandleAddons, Voice = paramc_ListenerAdd(v16, v17, v20), (Voice & 0x80000000) != 0) || (Voice = objc_GetObject(*(v25 + 48), "LINGDB", &v23), (Voice & 0x80000000) != 0) || (*(v14 + 24) = *(v23 + 8), Voice = objc_GetObject(*(v25 + 48), "SYNTHSTREAM", &v24), (Voice & 0x80000000) != 0))
  {
    UnicornPipeline = Voice;
LABEL_15:
    select_bet5_ObjClose(*a5, a5[1]);
    *a5 = 0;
    *(a5 + 2) = 0;
    return UnicornPipeline;
  }

  *(v14 + 64) = *(v24 + 8);
  paramc_ParamSetInt(*(v25 + 40), "bet2voiceframesize", *(*(*(v14 + 16) + 12480) + 24));
  *a5 = v14;
  *(a5 + 2) = 135968;
  if ((select_bet5_RegisterObject(v14, a5[1], v25) & 0x80000000) == 0)
  {
    *(v14 + 1296) = 1;
  }

  UnicornPipeline = select_bet5_loc_CreateUnicornPipeline(v14);
  if ((UnicornPipeline & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  return UnicornPipeline;
}

uint64_t select_bet5_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 135968, 1304);
  if ((v3 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (!a1)
  {
    return v3;
  }

  v4 = *(a1 + 8);
  v5 = UnicornPipelineClass_Destroy(*(a1 + 1232), *(a1 + 1240));
  if (*(a1 + 24))
  {
    objc_ReleaseObject(*(v4 + 48), "LINGDB");
  }

  if (*(a1 + 64))
  {
    objc_ReleaseObject(*(v4 + 48), "SYNTHSTREAM");
  }

  if (*(a1 + 1296) == 1)
  {
    objc_UnregisterObject(*(v4 + 48), "SELECTBET5");
  }

  v6 = *(*(a1 + 8) + 40);
  v7 = *(a1 + 40);
  *&v12 = a1;
  *(&v12 + 1) = select_bet5_loc_CheckParamChange;
  v13 = select_bet5_HandleAddons;
  paramc_ListenerRemove(v6, v7, &v12);
  select_bet5_HandleAddons(a1, *(a1 + 40), "");
  heap_Free(*(*(a1 + 8) + 8), *(a1 + 40));
  *(a1 + 40) = 0;
  v8 = *(a1 + 16);
  if (v8)
  {
    if (!*a1 || (v9 = *(*a1 + 48)) == 0)
    {
      v9 = *(*(a1 + 8) + 48);
    }

    objc_ReleaseObject(v9, v8);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    heap_Free(*(v4 + 8), v10);
  }

  *(a1 + 32) = 0;
  heap_Free(*(v4 + 8), a1);
  return v5;
}

uint64_t select_bet5_ObjReopen(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__dst = 0u;
  v18 = 0u;
  if ((safeh_HandleCheck(a1, a2, 135968, 1304) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v15 = 0;
  v16 = 0;
  v3 = *(a1 + 16);
  if (v3 && *(v3 + 14536))
  {
    cstdlib_strncpy(__dst, (v3 + 14536), 0x100uLL);
  }

  Voice = select_bet5_loadVoice(*a1, *(a1 + 8), __dst, &v15, 0);
  if ((Voice & 0x80000000) != 0)
  {
    return Voice;
  }

  if ((safeh_HandleCheck(v15, v16, 117, 43432) & 0x80000000) == 0)
  {
    *(a1 + 16) = v15;
  }

  UnicornPipelineClass_Destroy(*(a1 + 1232), *(a1 + 1240));
  UnicornPipeline = select_bet5_loc_CreateUnicornPipeline(a1);
  if (cstdlib_strcmp(__dst, (*(a1 + 16) + 14536)))
  {
    v6 = *(*(a1 + 8) + 40);
    v7 = *(a1 + 40);
    *&v12 = a1;
    *(&v12 + 1) = select_bet5_loc_CheckParamChange;
    v13 = select_bet5_HandleAddons;
    v14 = 0;
    paramc_ListenerRemove(v6, v7, &v12);
    if (*(a1 + 56))
    {
      select_bet5_HandleAddons(a1, *(a1 + 40), "");
    }

    Voice = select_bet5_loc_CreateAddonListParamName(a1);
    if ((Voice & 0x80000000) != 0)
    {
      return Voice;
    }

    paramc_ParamGetStr(*(*(a1 + 8) + 40), *(a1 + 40), &v14);
    if (v14)
    {
      v8 = select_bet5_HandleAddons(a1, *(a1 + 40), v14);
    }

    else
    {
      v8 = paramc_ParamSetStr(*(*(a1 + 8) + 40), *(a1 + 40), "");
    }

    UnicornPipeline = v8;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *(*(a1 + 8) + 40);
      v10 = *(a1 + 40);
      *&v12 = a1;
      *(&v12 + 1) = select_bet5_loc_CheckParamChange;
      v13 = select_bet5_HandleAddons;
      return paramc_ListenerAdd(v9, v10, &v12);
    }
  }

  return UnicornPipeline;
}

uint64_t select_bet5_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 2229280776;
  if ((safeh_HandleCheck(a1, a2, 135968, 1304) & 0x80000000) == 0)
  {
    synstrmaux_InitStreamOpener(a1 + 376, *(*(a1 + 8) + 32), "SELECT_BET5");
    v8 = heap_Calloc(*(*(a1 + 8) + 8), 1, 3656);
    *(a1 + 32) = v8;
    if (v8)
    {
      v13 = 0;
      *(a1 + 1200) = 0;
      *(a1 + 1208) = 0;
      *(a1 + 1272) = 0;
      *(a1 + 1288) = 0;
      *(a1 + 1280) = 0;
      do
      {
        v15 = 19;
        v16 = &off_279DB6B40;
        while (*(v16 - 2) != v13)
        {
          v16 += 3;
          if (!--v15)
          {
            goto LABEL_11;
          }
        }

        v17 = *v16;
        v14 = a1 + 72;
        if (cstdlib_strcmp(*v16, "application/x-realspeak-markers-pp;version=4.0"))
        {
          synstrmaux_RegisterInStream((a1 + 376), v17, (v13 - 3) < 4, v14 + 16 * v13);
        }

        else
        {
          v18 = (*(*(a1 + 64) + 152))();
          synstrmaux_RegisterStream((a1 + 376), v17, 0, v18, (v13 - 3) < 4, v14 + 16 * v13);
        }

LABEL_11:
        ++v13;
      }

      while (v13 != 7);
      for (i = 0; i != 12; ++i)
      {
        v21 = 19;
        v22 = &off_279DB6B40;
        while (*(v22 - 1) != i)
        {
          v22 += 3;
          if (!--v21)
          {
            goto LABEL_20;
          }
        }

        v23 = *v22;
        v20 = a1 + 184;
        if (cstdlib_strcmp(*v22, "application/x-realspeak-markers-pp;version=4.0"))
        {
          synstrmaux_RegisterOutStream((a1 + 376), v23, v20 + 16 * i);
        }

        else
        {
          v24 = (*(*(a1 + 64) + 152))();
          synstrmaux_RegisterStream((a1 + 376), v23, 1, v24, 0, v20 + 16 * i);
        }

LABEL_20:
        ;
      }

      v25 = synstrmaux_OpenStreams((a1 + 376), *(a1 + 64), a3, a4);
      if ((v25 & 0x80000000) != 0)
      {
        v7 = v25;
LABEL_26:
        synstrmaux_CloseStreams((a1 + 376), *(a1 + 64));
        return v7;
      }

      v7 = UnicornPipelineClass_SetForcedEEEnabled(*(a1 + 1232), *(a1 + 1240), 1);
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 8) + 32), "SELECT_BET5", 31000, 0, v9, v10, v11, v12, v27);
      return 2229280778;
    }
  }

  return v7;
}

uint64_t select_bet5_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v144 = 0;
  v145 = 0;
  v7 = 2229280778;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  if ((safeh_HandleCheck(a1, a2, 135968, 1304) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *a5 = 1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 64);
  v10 = (*(v9 + 144))(*(a1 + 88), *(a1 + 96), &v145 + 4, &v144);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  *(a1 + 1200) |= v144;
  v10 = (*(v9 + 144))(*(a1 + 104), *(a1 + 112), &v145, &v143 + 4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  *(a1 + 1204) |= HIDWORD(v143);
  v11 = (*(v9 + 144))(*(a1 + 72), *(a1 + 80), &v144 + 4, &v143);
  if ((v11 & 0x80000000) == 0)
  {
    *(a1 + 1208) |= v143;
    if (!HIDWORD(v145) || !v145 || !HIDWORD(v144))
    {
LABEL_122:
      v101 = *(a1 + 32);
      if (v101 && *(v101 + 10) <= 1)
      {
        Stream = UnicornPipelineClass_GetStream(*(a1 + 1232), *(a1 + 1240));
        if (Stream)
        {
          select_bet5_FreeTuningData(*(a1 + 8), (Stream + 1768));
        }

        UnicornPipelineClass_Release(*(a1 + 1232), *(a1 + 1240));
        select_bet5_loc_deInitFeatures(a1);
        if (*(a1 + 1204) || *(a1 + 1200) || *(a1 + 1208))
        {
          v103 = *(*(a1 + 32) + 3520);
          if (v103)
          {
            v11 = (*(*(a1 + 64) + 104))(*(a1 + 184), *(a1 + 192), *(a1 + 1256) + 32 * *(a1 + 1268), (32 * v103));
            if ((v11 & 0x80000000) != 0)
            {
              log_OutPublic(*(*(a1 + 8) + 32), "SELECT_BET5", 58008, "%s%s%s%x", v104, v105, v106, v107, "contentType");
            }
          }

          goto LABEL_136;
        }

        goto LABEL_152;
      }

      if (UnicornPipelineClass_isDone(*(a1 + 1232), *(a1 + 1240)))
      {
        if (*(a1 + 1204) || *(a1 + 1200) || *(a1 + 1208))
        {
LABEL_136:
          synstrmaux_CloseOutStreamsOnly((a1 + 376), v9);
          v108 = 1;
LABEL_137:
          *a5 = v108;
          return v11;
        }

LABEL_152:
        *a5 = 0;
        return v11;
      }

      v109 = UnicornPipelineClass_GetStream(*(a1 + 1232), *(a1 + 1240));
      v11 = UnicornPipelineClass_ProcessPhoneme(*(a1 + 1232), *(a1 + 1240), &v142);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      PreparedCount = UnicornPipelineClass_GetPreparedCount(*(a1 + 1232), *(a1 + 1240));
      v111 = *(a1 + 1280);
      v112 = (PreparedCount - v111);
      if (PreparedCount == v111)
      {
        goto LABEL_172;
      }

      v113 = *(a1 + 16);
      v114 = *(v113 + 11912);
      v115 = *(a1 + 1276) + v112;
      v116 = *(*(v113 + 12480) + 5924);
      LODWORD(v152[0]) = 0;
      LODWORD(v151) = 0;
      v117 = v115 / v114;
      select_bet5_GetEEMode(a1, v152, &v151);
      if (!UnicornPipelineClass_GetForcedEEEnabled(*(a1 + 1232), *(a1 + 1240)) || v117 < v116 || (v11 = UnicornPipelineClass_SetForcedEEEnabled(*(a1 + 1232), *(a1 + 1240), 0), (v11 & 0x80000000) == 0))
      {
        if (v142)
        {
          goto LABEL_144;
        }

        v140 = v109;
        v125 = v152[0];
        v126 = UnicornPipelineClass_GetPreparedCount(*(a1 + 1232), *(a1 + 1240));
        if (v125)
        {
          if (v126 >= v114)
          {
            v127 = *(a1 + 1280);
            v112 = (v126 - v127);
            v109 = v140;
            while (v126 > v127)
            {
              v128 = (v126 - 1) / v114;
              v129 = *(*(*(a1 + 32) + 32) + v128) == 1 && v128 * v114 + 1 == v126;
              if (v129)
              {
                *(a1 + 1292) = v114 - 1;
                goto LABEL_164;
              }

              v112 = (v112 - 1);
              v130 = v126--;
              if (v130 <= v114)
              {
                break;
              }
            }
          }
        }

        else
        {
          v112 = v112 + v126 / v114 * v114 - v126;
          v109 = v140;
LABEL_164:
          v132 = v117 >= v116 && v112 != 0;
          if (!v151 || v132)
          {
            if (!v112)
            {
              v121 = 0;
              goto LABEL_145;
            }

LABEL_144:
            log_OutText(*(*(a1 + 8) + 32), "SELECT_BET5", 3, 0, "Sent to synth: %d", v118, v119, v120, v112);
            v121 = 1;
LABEL_145:
            v122 = *(a1 + 1280);
            v10 = select_bet5_ProcessAndWriteMarkers(a1, v122 + v112);
            if ((v10 & 0x80000000) == 0)
            {
              v10 = select_bet5_WriteAll(v8, a1 + 184, v9, v109, *(a1 + 1280), v122 + v112, *(a1 + 1288), *(a1 + 1292), *(a1 + 1284), v142, *(a1 + 1208));
              if ((v10 & 0x80000000) == 0)
              {
                *(a1 + 1276) = vadd_s32(*(a1 + 1276), vdup_n_s32(v112));
                v11 = UnicornPipelineClass_SynthesizeDummy(*(a1 + 1232), *(a1 + 1240), v112);
                if ((v11 & 0x80000000) != 0)
                {
                  return v11;
                }

                if (LODWORD(v152[0]))
                {
                  v123 = *(a1 + 1292);
                  *(a1 + 1284) += v123 + *(a1 + 1288);
                  *(a1 + 1288) = v114 - v123;
                }

                goto LABEL_173;
              }
            }

            return v10;
          }
        }

LABEL_172:
        v121 = 0;
LABEL_173:
        if (v142)
        {
          v133 = UnicornPipelineClass_GetStream(*(a1 + 1232), *(a1 + 1240));
          if (v133)
          {
            select_bet5_FreeTuningData(*(a1 + 8), (v133 + 1768));
          }

          if (*(*(*(a1 + 16) + 12480) + 6800) == 9 && UNICORN__log_select_GetLogLevel(*(*(a1 + 8) + 32)) >= 3)
          {
            if (v133)
            {
              v134 = *(*(a1 + 16) + 11912) * *(*(a1 + 32) + 10);
              if (v134)
              {
                *(v133 + 1948) /= v134;
                *(v133 + 1952) /= v134;
                *(v133 + 1956) /= v134;
                *(v133 + 1960) /= v134;
                *(v133 + 1964) /= v134;
                *(v133 + 1968) /= v134;
                *(v133 + 1972) /= v134;
                UNICORN__log_select_Diag(*(a1 + 8), 3, "average counts: initCluster:%d searchStage1:%d searchStage2Casc1:%d searchStage2Casc2:%d searchStage2Casc3:%d vitInnerLoop:%d(%d)");
              }
            }
          }

          UnicornPipelineClass_Release(*(a1 + 1232), *(a1 + 1240));
          select_bet5_loc_deInitFeatures(a1);
          v135 = v142 == 0;
        }

        else
        {
          v135 = 1;
        }

        if (v121 | v135)
        {
          v108 = 2;
        }

        else
        {
          v108 = 0;
        }

        goto LABEL_137;
      }

      return v11;
    }

    *(a1 + 1264) = HIDWORD(v144) >> 5;
    v152[0] = 0;
    LODWORD(v151) = 0;
    v12 = (*(*(a1 + 64) + 88))(*(a1 + 72), *(a1 + 80), v152, &v151);
    v17 = *(a1 + 8);
    if ((v12 & 0x80000000) != 0)
    {
      v49 = v12;
      log_OutPublic(*(v17 + 32), "SELECT_BET5", 21008, "%s%x", v13, v14, v15, v16, "lhError");
      return v49;
    }

    else
    {
      v18 = heap_Calloc(*(v17 + 8), 1, v151);
      if (v18)
      {
        v19 = v18;
        v20 = cstdlib_memcpy(v18, v152[0], v151);
        if (v151 >= 0x20)
        {
          v21 = 0;
          v22 = 0;
          while (1)
          {
            v23 = (*(*(a1 + 64) + 152))(v20);
            v20 = (*(v23 + 8))(v152[0] + v21, *(*(a1 + 8) + 8), v19 + v21);
            if (!v20)
            {
              break;
            }

            ++v22;
            v21 += 32;
            if (v22 >= v151 >> 5)
            {
              goto LABEL_14;
            }
          }

          heap_Free(*(*(a1 + 8) + 8), v19);
          return v7;
        }

LABEL_14:
        v24 = (*(*(a1 + 64) + 96))(*(a1 + 72), *(a1 + 80));
        if ((v24 & 0x80000000) != 0)
        {
          v51 = v24;
          heap_Free(*(*(a1 + 8) + 8), v19);
          log_OutPublic(*(*(a1 + 8) + 32), "SELECT_BET5", 2571, "%s%x", v52, v53, v54, v55, "lhError");
          return v51;
        }

        else
        {
          *(a1 + 1256) = v19;
          v25 = *(a1 + 32);
          LODWORD(v151) = 0;
          v152[0] = 0;
          v26 = *(a1 + 64);
          v27 = *(a1 + 8);
          v28 = *(a1 + 16);
          v29 = *(v28 + 42808);
          *v25 = v28 + 14384;
          if ((select_bet5_deserializeFeatures(v27, v26, *(a1 + 88), *(a1 + 96), v25) & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v34 = (v28 + 17962);
          v35 = *(v28 + 17964);
          v36 = *(v25 + 10);
          if (!v35)
          {
            v36 *= *v34;
          }

          DirectStart = select_bet5_ReadDirectStart(v27, a1 + 72, v26, 2u, "application/x-realspeak-nn-ufeats", v152, &v151);
          v31 = v151;
          if (v151 != 4 * v36 * v29)
          {
LABEL_27:
            v7 = 2229280789;
            v50 = 71001;
          }

          else
          {
            v11 = DirectStart;
            if ((DirectStart & 0x80000000) != 0)
            {
              select_bet5_ReadDirectEnd(v27, a1 + 72, v26, 2u, "application/x-realspeak-nn-ufeats", v151);
              return v11;
            }

            if (VectBlock_Create(v27, a1 + 1216, v151, v151 / v36))
            {
              StartPtr_LH_F32 = VectBlock_Get_StartPtr_LH_F32(a1 + 1216);
              cstdlib_memcpy(StartPtr_LH_F32, v152[0], v151);
              select_bet5_ReadDirectEnd(v27, a1 + 72, v26, 2u, "application/x-realspeak-nn-ufeats", v151);
              v151 = 0;
              v152[0] = 0;
              v149 = 0;
              v150 = 0;
              v39 = *(a1 + 8);
              v40 = *(a1 + 16);
              v41 = *(a1 + 64);
              v148 = 0;
              v147 = 0;
              v146 = 0;
              v141 = 0;
              v42 = select_bet5_ReadDirectStart(v39, a1 + 72, v41, 3u, "application/x-realspeak-tapids;version=4.0", &v146, &v149 + 4);
              v47 = HIDWORD(v149);
              if (v42 < 0 || !HIDWORD(v149))
              {
                v146 = 0;
              }

              else if (HIDWORD(v149) != 4 * *(*(a1 + 32) + 10) * *(v40 + 17962))
              {
                log_OutPublic(*(v39 + 32), "SELECT_BET5", 71001, 0, v43, v44, v45, v46, v137);
                v48 = 0;
                v11 = 2229280789;
                goto LABEL_117;
              }

              v56 = HIDWORD(v149) >> 2;
              if ((select_bet5_ReadDirectStart(v39, a1 + 72, v41, 4u, "application/x-realspeak-usfrozen;version=4.0", v152, &v149) & 0x80000000) != 0 || !v149)
              {
                v152[0] = 0;
              }

              else if (v47 < 4)
              {
                v56 = v149 >> 2;
              }

              else
              {
                v129 = v56 == v149 >> 2;
                v56 = v149 >> 2;
                if (!v129)
                {
                  goto LABEL_53;
                }
              }

              if ((select_bet5_ReadDirectStart(v39, a1 + 72, v41, 6u, "application/x-realspeak-usnoreusebias;version=4.0", &v151, &v148) & 0x80000000) != 0 || !v148)
              {
                v151 = 0;
              }

              else if (v56)
              {
                v129 = v56 == v148 / 0x1F8;
                v56 = v148 / 0x1F8;
                if (!v129)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                v56 = v148 / 0x1F8;
              }

              v57 = select_bet5_ReadDirectStart(v39, a1 + 72, v41, 5u, "application/x-realspeak-usprosodybias;version=4.0", &v150, &v147);
              if ((v57 & 0x80000000) != 0 || !v147)
              {
                v11 = 0;
                v150 = 0;
              }

              else
              {
                v11 = v57;
                v58 = v147 >> 3;
                if (!v56)
                {
                  v56 = v147 >> 3;
                  if (v58)
                  {
                    goto LABEL_56;
                  }

LABEL_69:
                  if (!v146)
                  {
                    v48 = 0;
                    goto LABEL_117;
                  }

                  v70 = *(v40 + 17962) * *(*(a1 + 32) + 10);
                  if (v70 >= 1 && *v146 == -1)
                  {
                    v136 = 0;
                    do
                    {
                      v71 = ++v136;
                    }

                    while (v70 > v136 && v146[v136] == -1);
                  }

                  else
                  {
                    v71 = 0;
                  }

                  v48 = 0;
                  v56 = v70;
                  if (v70 && v70 != v71)
                  {
LABEL_56:
                    v59 = heap_Calloc(*(v39 + 8), 1, 32);
                    v48 = v59;
                    v141 = v59;
                    if (!v59 || (*(v59 + 2) = v56, v139 = v56, v64 = heap_Calloc(*(v39 + 8), v56, 48), (*v48 = v64) == 0))
                    {
                      log_OutPublic(*(v39 + 32), "SELECT_BET5", 19000, 0, v60, v61, v62, v63, v137);
                      v11 = 2229280778;
                      goto LABEL_117;
                    }

                    v65 = 50;
                    *(v48 + 20) = 50;
                    v66 = (v48 + 20);
                    v138 = v41;
                    if ((paramc_ParamGetUInt(*(v39 + 40), "uselectweightdurationbias", (v48 + 20)) & 0x80000000) == 0)
                    {
                      if (*v66 < 0x65)
                      {
                        goto LABEL_62;
                      }

                      v65 = 100;
                    }

                    *v66 = v65;
LABEL_62:
                    v67 = 50;
                    *(v48 + 24) = 50;
                    v68 = (v48 + 24);
                    UInt = paramc_ParamGetUInt(*(v39 + 40), "uselectweightpitchbias", (v48 + 24));
                    if ((UInt & 0x80000000) != 0)
                    {
                      v11 = 0;
                    }

                    else
                    {
                      v11 = UInt;
                      if (*v68 < 0x65)
                      {
LABEL_79:
                        v72 = v139;
                        v73 = 0;
                        v74 = 4;
                        v75 = *v48;
                        while (1)
                        {
                          v76 = v73;
                          *(v75 + 48 * v73 + 28) = 0;
                          if (!v151)
                          {
                            break;
                          }

                          v77 = *(v151 + 504 * v73);
                          if (!v77)
                          {
                            break;
                          }

                          v48 = v141;
                          v78 = (*v141 + 48 * v73);
                          *v78 = 1;
                          v78[6] = v77;
                          v79 = heap_Calloc(*(v39 + 8), (v77 + 1), 4);
                          v75 = *v48;
                          *(*v48 + 48 * v76 + 8) = v79;
                          if (!v79)
                          {
                            goto LABEL_115;
                          }

                          v85 = v75 + 48 * v76;
                          v87 = *(v85 + 24);
                          v86 = (v85 + 24);
                          if (v87)
                          {
                            v88 = 0;
                            v89 = v151 + v74;
                            v72 = v139;
                            do
                            {
                              *(v79 + 4 * v88) = *(v89 + 4 * v88);
                              ++v88;
                            }

                            while (v88 < *v86);
                          }

                          else
                          {
                            v88 = 0;
                            v72 = v139;
                          }

                          v94 = (v79 + 4 * v88);
LABEL_99:
                          *v94 = -1;
                          if (!v150)
                          {
                            goto LABEL_113;
                          }

                          v95 = (v150 + 8 * v76);
                          v96 = v95[6];
                          if (v95[6])
                          {
                            v97 = v95[4];
                          }

                          else
                          {
                            v97 = v95[4];
                            if (!v95[4])
                            {
                              goto LABEL_113;
                            }
                          }

                          if (v97 == 1)
                          {
                            v98 = 100.0;
                            goto LABEL_107;
                          }

                          if (v97 == 2)
                          {
                            v98 = -100.0;
LABEL_107:
                            *(v48 + 16) = 1;
                            LOBYTE(v84) = v95[5];
                            v84 = LODWORD(v84);
                            *(v75 + 48 * v76 + 20) = v84 / v98;
                          }

                          if (v96 == 1)
                          {
                            v99 = 100.0;
                            goto LABEL_112;
                          }

                          if (v96 == 2)
                          {
                            v99 = -100.0;
LABEL_112:
                            *(v48 + 12) = 1;
                            LOBYTE(v84) = v95[7];
                            *(v75 + 48 * v76 + 16) = LODWORD(v84) / v99;
                          }

LABEL_113:
                          v73 = v76 + 1;
                          v74 += 504;
                          if (v76 + 1 == v72)
                          {
                            *(v75 + 48 * v76) = 4;
                            goto LABEL_116;
                          }
                        }

                        v90 = heap_Calloc(*(v39 + 8), 2, 4);
                        v48 = v141;
                        v75 = *v141;
                        v91 = *v141 + 48 * v76;
                        *(v91 + 8) = v90;
                        if (!v90)
                        {
LABEL_115:
                          log_OutPublic(*(v39 + 32), "SELECT_BET5", 19000, 0, v80, v81, v82, v83, v137);
                          v11 = 2229280778;
LABEL_116:
                          v41 = v138;
                          goto LABEL_117;
                        }

                        *(v91 + 24) = 1;
                        if (!v152[0] || *(v152[0] + v76) == -1)
                        {
                          if (!v146 || v146[v76] == -1)
                          {
                            *v91 = 2;
                            *v90 = 0;
                            goto LABEL_96;
                          }

                          log_OutText(*(v39 + 32), "SELECT_BET5", 5, 0, "%s: %u", v81, v82, v83, "Locked unit");
                          v75 = *v48;
                          v92 = *v48 + 48 * v76;
                          *v92 = 0;
                          v93 = v146;
                        }

                        else
                        {
                          log_OutText(*(v39 + 32), "SELECT_BET5", 5, 0, "%s: %u", v81, v82, v83, "Locked unit");
                          v75 = *v48;
                          v92 = *v48 + 48 * v76;
                          *v92 = 0;
                          v93 = v152[0];
                        }

                        v90 = *(v92 + 8);
                        *v90 = v93[v76];
LABEL_96:
                        v94 = v90 + 1;
                        goto LABEL_99;
                      }

                      v67 = 100;
                    }

                    *v68 = v67;
                    goto LABEL_79;
                  }

LABEL_117:
                  select_bet5_ReadDirectEnd(v39, a1 + 72, v41, 3u, "application/x-realspeak-tapids;version=4.0", HIDWORD(v149));
                  select_bet5_ReadDirectEnd(v39, a1 + 72, v41, 4u, "application/x-realspeak-usfrozen;version=4.0", v149);
                  select_bet5_ReadDirectEnd(v39, a1 + 72, v41, 6u, "application/x-realspeak-usnoreusebias;version=4.0", v148);
                  select_bet5_ReadDirectEnd(v39, a1 + 72, v41, 5u, "application/x-realspeak-usprosodybias;version=4.0", v147);
                  if ((v11 & 0x80000000) != 0)
                  {
                    select_bet5_FreeTuningData(v39, &v141);
                    return v11;
                  }

                  v11 = UnicornPipelineClass_Init(*(a1 + 1232), *(a1 + 1240), *(a1 + 32), a1 + 1216, v48, *(a1 + 1248), *(a1 + 56));
                  if ((v11 & 0x80000000) != 0)
                  {
                    return v11;
                  }

                  UnicornPipelineClass_SetSIMDCallbacks(*(a1 + 1232), *(a1 + 1240), 1);
                  v100 = UnicornPipelineClass_GetStream(*(a1 + 1232), *(a1 + 1240));
                  if (v100)
                  {
                    *(v100 + 1976) = 1;
                  }

                  *(a1 + 1268) = 0;
                  *(a1 + 1280) = 0u;
                  goto LABEL_122;
                }

                v129 = v56 == v58;
                v56 = v147 >> 3;
                if (!v129)
                {
LABEL_53:
                  v48 = 0;
                  v11 = 2229280768;
                  goto LABEL_117;
                }
              }

              if (v56)
              {
                goto LABEL_56;
              }

              goto LABEL_69;
            }

            v50 = 71000;
          }

          log_OutPublic(*(v27 + 32), "SELECT_BET5", v50, 0, v30, v31, v32, v33, v137);
        }
      }
    }

    return v7;
  }

  return v11;
}

uint64_t select_bet5_ProcessEnd(uint64_t a1, int a2)
{
  v7 = 0;
  if ((safeh_HandleCheck(a1, a2, 135968, 1304) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *(a1 + 1272) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  v3 = synstrmaux_CloseStreams((a1 + 376), *(a1 + 64));
  if (!UnicornPipelineClass_isDone(*(a1 + 1232), *(a1 + 1240)))
  {
    Stream = UnicornPipelineClass_GetStream(*(a1 + 1232), *(a1 + 1240));
    if (Stream)
    {
      v5 = *(Stream + 1768);
    }

    else
    {
      v5 = 0;
    }

    v7 = v5;
    UnicornPipelineClass_Release(*(a1 + 1232), *(a1 + 1240));
    select_bet5_FreeTuningData(*(a1 + 8), &v7);
  }

  if (*(a1 + 32))
  {
    select_bet5_loc_deInitFeatures(a1);
    heap_Free(*(*(a1 + 8) + 8), *(a1 + 32));
  }

  *(a1 + 32) = 0;
  return v3;
}

uint64_t select_bet5_GetAlphabetInformation(uint64_t a1, int a2, char *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 135968, 1304);
  if ((v5 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (!*(a1 + 16))
  {
    return 2229280785;
  }

  v6 = v5;
  cstdlib_memset(a3, 0, 0x985uLL);
  v7 = 0;
  v8 = 0;
  do
  {
    if (*(*(a1 + 16) + v7 + 16528) != 255)
    {
      a3[v8] = v7;
      a3[v8 + 514] = *(*(a1 + 16) + *(*(a1 + 16) + v7 + 16528) + 15500);
      a3[v8 + 257] = *(*(a1 + 16) + *(*(a1 + 16) + v7 + 16528) + 15243);
      a3[v8 + 771] = *(*(a1 + 16) + *(*(a1 + 16) + v7 + 16528) + 15757);
      a3[v8++ + 1028] = *(*(a1 + 16) + *(*(a1 + 16) + v7 + 16528) + 16014);
    }

    ++v7;
  }

  while (v7 != 256);
  cstdlib_strcpy(a3 + 1285, (*(a1 + 16) + 16784));
  if (*(*(a1 + 16) + 17504) == 1 && cstdlib_strlen("12345"))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = a12345[v9];
      if (!cstdlib_strchr(a3 + 1285, v11) && !cstdlib_strchr(a3, v11))
      {
        cstdlib_strncat(a3 + 1349, &a12345[v9], 1uLL);
      }

      v9 = ++v10;
    }

    while (cstdlib_strlen("12345") > v10);
  }

  v12 = *(*(a1 + 16) + 16848);
  if (v12)
  {
    v13 = *v12;
    if (*v12)
    {
      v14 = 0;
      do
      {
        cstdlib_strcat(a3 + 1413, v13);
        cstdlib_strcat(a3 + 1413, " ");
        v13 = *(*(*(a1 + 16) + 16848) + 8 * ++v14);
      }

      while (v13);
    }
  }

  return v6;
}

uint64_t select_bet5_QueryCapability(uint64_t a1, int a2, const char *a3, _DWORD *a4)
{
  v7 = 2229280768;
  v8 = safeh_HandleCheck(a1, a2, 135968, 1304);
  if ((v8 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (!*(a1 + 16))
  {
    return 2229280785;
  }

  v9 = v8;
  if (!cstdlib_strcmp(a3, "PRM") || !cstdlib_strcmp(a3, "BND"))
  {
    *a4 = 1;
    return v9;
  }

  if (!cstdlib_strcmp(a3, "max-PRM"))
  {
    LOBYTE(v10) = 3;
    goto LABEL_12;
  }

  if (!cstdlib_strcmp(a3, "units-per-phoneme"))
  {
    v10 = *(*(a1 + 16) + 11912);
LABEL_12:
    *a4 = v10;
    return v9;
  }

  return v7;
}

uint64_t select_bet5_loc_CreateAddonListParamName(uint64_t a1)
{
  __s = 0;
  v13 = 0;
  __s2 = 0;
  Str = paramc_ParamGetStr(*(*(a1 + 8) + 40), "voice", &v13);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(*(a1 + 8) + 40), "voiceoperatingpoint", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v3 = paramc_ParamGetStr(*(*(a1 + 8) + 40), "vopversion", &__s2);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = cstdlib_strlen(__s);
    if (__s2)
    {
      v5 = cstdlib_strlen(__s2);
    }

    else
    {
      v5 = 0;
    }

    v7 = cstdlib_strlen(v13);
    v8 = heap_Realloc(*(*(a1 + 8) + 8), *(a1 + 40), v5 + v4 + v7 + 16);
    *(a1 + 40) = v8;
    if (v8)
    {
      v9 = v7;
      cstdlib_strcpy(v8, "voiceaddons.");
      if (v7)
      {
        v10 = 0;
        do
        {
          *(*(a1 + 40) + v10 + 12) = cstdlib_tolower(v13[v10]);
          ++v10;
        }

        while (v9 != v10);
      }

      *(*(a1 + 40) + v9 + 12) = 0;
      cstdlib_strcat(*(a1 + 40), ".");
      cstdlib_strcat(*(a1 + 40), __s);
      if (__s2)
      {
        cstdlib_strcat(*(a1 + 40), ".");
        cstdlib_strcat(*(a1 + 40), __s2);
      }
    }

    else
    {
      return 2229280778;
    }
  }

  return v3;
}

uint64_t select_bet5_HandleAddons(uint64_t a1, char *__s1, const char *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *__s2 = 0u;
  v49 = 0;
  if (cstdlib_strcmp(__s1, *(a1 + 40)))
  {
    v5 = 0;
    goto LABEL_3;
  }

  if (!a3)
  {
    a3 = "";
  }

  if (!*(a1 + 56))
  {
    v5 = 0;
LABEL_34:
    v49 = 0;
    while (1)
    {
      while (1)
      {
        if (!betX_GetVAOName(a3, &v49, __s2, 0x100uLL))
        {
          goto LABEL_3;
        }

        if (*(a1 + 56))
        {
          break;
        }

        if (__s2[0])
        {
          goto LABEL_49;
        }
      }

      v23 = 0;
      v24 = 1;
      do
      {
        v25 = cstdlib_strcmp(__s2, *(*(a1 + 1248) + v23));
        v23 += 48;
        if (v25)
        {
          v26 = v24 >= *(a1 + 56);
        }

        else
        {
          v26 = 1;
        }

        ++v24;
      }

      while (!v26);
      if (v25)
      {
        v27 = __s2[0] == 0;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
LABEL_49:
        Voice = paramc_ParamSetStr(*(*(a1 + 8) + 40), "voiceaddon", __s2);
        if ((Voice & 0x80000000) != 0 || (v50[0] = 0, v50[1] = 0, Voice = select_bet5_loadVoice(*a1, *(a1 + 8), 0, v50, 1), (Voice & 0x80000000) != 0))
        {
          v5 = Voice;
          goto LABEL_3;
        }

        v5 = 2229280778;
        v29 = v50[0];
        v30 = heap_Realloc(*(*(a1 + 8) + 8), *(a1 + 48), 8 * (*(a1 + 56) + 1));
        if (!v30)
        {
          goto LABEL_3;
        }

        *(a1 + 48) = v30;
        v34 = *(a1 + 56);
        *(v30 + 8 * v34) = v29;
        v35 = *(a1 + 16);
        if (!v35)
        {
          v5 = 2229280774;
          goto LABEL_3;
        }

        v36 = *(v35 + 11912);
        v37 = *(v35 + 12480);
        v38 = *(v37 + 24);
        v39 = *(v29 + 12480);
        v40 = *(v39 + 24);
        v41 = *(v37 + 11520);
        v42 = *(v39 + 11520);
        if (v36 != *(v29 + 11912) || v38 != v40 || v41 != v42)
        {
          log_OutText(*(*(a1 + 8) + 32), "SELECT_BET5", 1, 0, "Unable to load VAO data %s: expected #states=%d frame_size=%d psola_mode=%d found #states=%d frame_size=%d psola_mode=%d", v31, v32, v33, v29);
          v5 = 2229280793;
          goto LABEL_3;
        }

        v43 = heap_Realloc(*(*(a1 + 8) + 8), *(a1 + 1248), 48 * (v34 + 1));
        if (!v43)
        {
          goto LABEL_3;
        }

        *(a1 + 1248) = v43;
        v44 = *(a1 + 56);
        v45 = v44 ? *(*(*(a1 + 48) + 8 * (v44 - 1)) + 11804) + *(v43 + 48 * (v44 - 1) + 24) : *(*(a1 + 16) + 11804);
        v46 = v45 + *(v29 + 11912) - 1;
        uselect_CommunicateAddonOffset_0(a1, __s2, v46);
        v5 = UnicornAddon_Init(*(a1 + 8), __s2, *(a1 + 16) + 11912, *(*(a1 + 48) + 8 * *(a1 + 56)) + 11912, v46, *(a1 + 1248) + 48 * *(a1 + 56));
        ++*(a1 + 56);
        if ((v5 & 0x80000000) != 0)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v9 = 0;
  v5 = 0;
  v10 = 24;
  v11 = 8;
  v12 = -1;
  while (1)
  {
    v49 = 0;
    while (betX_GetVAOName(a3, &v49, __s2, 0x100uLL))
    {
      if (!cstdlib_strcmp(*(*(a1 + 1248) + 48 * v9), __s2))
      {
        LODWORD(v13) = *(a1 + 56);
        goto LABEL_31;
      }
    }

    v13 = *(a1 + 56);
    if (v9 < v13)
    {
      break;
    }

    v5 = 0;
LABEL_31:
    ++v9;
    v10 += 48;
    v11 += 8;
    ++v12;
    if (v9 >= v13)
    {
      goto LABEL_34;
    }
  }

  if (!*a1 || (v14 = *(*a1 + 48)) == 0)
  {
    v14 = *(*(a1 + 8) + 48);
  }

  objc_ReleaseObject(v14, *(*(a1 + 48) + 8 * v9));
  UnicornAddon_Deinit(*(a1 + 8), (*(a1 + 1248) + 48 * v9));
  v15 = v9 + 1;
  v13 = *(a1 + 56);
  v16 = v12;
  v47 = v11;
  v48 = v10;
  if (v9 + 1 >= v13)
  {
    v5 = 0;
LABEL_30:
    LODWORD(v13) = v13 - 1;
    *(a1 + 56) = v13;
    v11 = v47;
    v10 = v48;
    goto LABEL_31;
  }

  while (1)
  {
    *(*(a1 + 48) + v11 - 8) = *(*(a1 + 48) + v11);
    v17 = *(a1 + 1248) + v10;
    *(v17 + 8) = *(v17 + 56);
    *(v17 - 8) = *(v17 + 40);
    *(v17 - 24) = *(v17 + 24);
    if (v10 == 24)
    {
      v18 = *(a1 + 16);
      v19 = *(a1 + 1248);
      *(v19 + 24) = *(v18 + 11804);
      v20 = *(v19 + 24);
    }

    else
    {
      v20 = *(*(*(a1 + 48) + 8 * v16) + 11804);
      v19 = *(a1 + 1248);
      *(v19 + v10) = v20;
      v18 = *(a1 + 16);
    }

    v21 = (v19 + v10);
    v22 = v20 + *(v18 + 11912) - 1;
    *v21 = v22;
    v5 = uselect_CommunicateAddonOffset_0(a1, *(v21 - 3), v22);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    ++v15;
    v13 = *(a1 + 56);
    v10 += 48;
    ++v16;
    v11 += 8;
    if (v15 >= v13)
    {
      goto LABEL_30;
    }
  }

LABEL_3:
  if (!*(a1 + 56))
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      heap_Free(*(*(a1 + 8) + 8), v6);
      *(a1 + 48) = 0;
    }

    v7 = *(a1 + 1248);
    if (v7)
    {
      heap_Free(*(*(a1 + 8) + 8), v7);
      *(a1 + 1248) = 0;
    }
  }

  return v5;
}

uint64_t select_bet5_RegisterObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  cstdlib_memset(&v7, 0, 0x28uLL);
  LOBYTE(v7) = 1;
  *(&v7 + 1) = &ISelect_Bet5;
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = 0;
  return objc_RegisterObject(*(a3 + 48), "SELECTBET5", &v7);
}

uint64_t select_bet5_loc_CreateUnicornPipeline(void *a1)
{
  v10 = 0;
  v2 = a1[1];
  paramc_ParamGetStr(*(v2 + 40), "bet5multithreadenabled", &v10);
  if (v10 && *v10 && cstdlib_strchr("nNfF0", *v10))
  {
    v3 = UnicornPipelineFactory_Create(0, v2, a1[2] + 11912, *(a1[2] + 12480));
    a1[154] = v3;
    a1[155] = v4;
  }

  else
  {
    v3 = UnicornPipelineFactory_Create(*(v2 + 408) != 0, v2, a1[2] + 11912, *(a1[2] + 12480));
    a1[154] = v3;
    a1[155] = v4;
    if (!*(v2 + 408))
    {
      log_OutText(*(a1[1] + 32), "SELECT_BET5", 1, 0, "Impossible to use MultiThread implementation because no external service was found to support this. Fallback to standard implementation.", v5, v6, v7, v9);
      v3 = a1[154];
      v4 = a1[155];
    }
  }

  return safeh_HandleCheck(v3, v4, 135969, 0);
}

uint64_t uselect_CommunicateAddonOffset_0(uint64_t a1, char *__s, unsigned int a3)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  v6 = *(*(a1 + 8) + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Calloc(v6, 1, (v7 + 18));
  if (v8)
  {
    v13 = v8;
    cstdlib_strcpy(v8, "voiceaddonoffset.");
    v14 = cstdlib_strlen(v13);
    if (cstdlib_strlen(__s))
    {
      v15 = 0;
      v16 = 0;
      v17 = v14;
      do
      {
        v13[v17++] = cstdlib_tolower(__s[v15]);
        v15 = ++v16;
      }

      while (cstdlib_strlen(__s) > v16);
    }

    else
    {
      LODWORD(v15) = 0;
    }

    v13[(v15 + v14)] = 0;
    v19 = paramc_ParamSetInt(*(*(a1 + 8) + 40), v13, a3);
    heap_Free(*(*(a1 + 8) + 8), v13);
    return v19;
  }

  else
  {
    log_OutPublic(*(*(a1 + 8) + 32), "SELECT_BET5", 19000, 0, v9, v10, v11, v12, v20);
    return 2229280778;
  }
}

void *select_bet5_FreeTuningData(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      v5 = *v3;
      if (*v3)
      {
        if (*(v3 + 8))
        {
          v6 = 0;
          v7 = 8;
          do
          {
            if (*(*v3 + v7))
            {
              heap_Free(v4[1], *(*v3 + v7));
              v3 = *a2;
            }

            ++v6;
            v7 += 48;
          }

          while (v6 < *(v3 + 8));
          v5 = *v3;
        }

        heap_Free(v4[1], v5);
        v3 = *a2;
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

void *select_bet5_loc_deInitFeatures(uint64_t a1)
{
  v2 = *(a1 + 8);
  VectBlock_Destroy(v2, (a1 + 1216));
  result = select_bet5_deserializeFeatures_Free(v2, *(a1 + 32));
  v4 = *(a1 + 1256);
  if (v4)
  {
    if (*(a1 + 1264))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(*(a1 + 64) + 152))(result);
        result = (*(v7 + 16))(*(a1 + 1256) + v5, *(v2 + 8));
        ++v6;
        v5 += 32;
      }

      while (v6 < *(a1 + 1264));
      v4 = *(a1 + 1256);
    }

    result = heap_Free(*(v2 + 8), v4);
    *(a1 + 1256) = 0;
  }

  return result;
}

uint64_t select_bet5_GetEEMode(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = 0;
  *a2 = 1;
  *a3 = 0;
  result = paramc_ParamGetStr(*(*(a1 + 8) + 40), "bet5earlyemissionallowed", &v6);
  if ((result & 0x80000000) == 0 && v6 && *v6)
  {
    result = cstdlib_strchr("yYtT1", *v6);
    if (result)
    {
      *a3 = 1;
      *a2 = 0;
    }
  }

  return result;
}

uint64_t select_bet5_ProcessAndWriteMarkers(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 1256) || *(a1 + 1268) >= *(a1 + 1264))
  {
    return 0;
  }

  Stream = UnicornPipelineClass_GetStream(*(a1 + 1232), *(a1 + 1240));
  v8 = *(*(a1 + 16) + 11912);
  v9 = a2 / v8;
  v10 = *(a1 + 1256);
  v11 = *(a1 + 1268);
  v12 = v10 + 32 * v11;
  v13 = *(Stream + 400);
  if (v13 < a2 / v8)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a1 + 1264);
    if (v8 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v8;
    }

    v18 = v16 >= v11;
    v19 = v16 - v11;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = *(Stream + 400);
    v21 = (v10 + 32 * v11);
    do
    {
      if (v15 == v19)
      {
        break;
      }

      v21[4] = 0;
      if (*v21 == 33)
      {
        v22 = 0;
        v23 = v20 * v8;
        v4 = v17;
        do
        {
          v5 = *(*(Stream + 1800) + 40 * v23 + 8);
          v22 += v5;
          ++v23;
          --v4;
        }

        while (v4);
        v21[4] = v22;
        ++v14;
      }

      v21 += 8;
      ++v15;
      v20 = v13 + v14;
    }

    while (v13 + v14 < v9);
  }

  if (*(a1 + 1288))
  {
    v24 = *(a1 + 1280);
    if (v24)
    {
      v25 = *(a1 + 1264);
      if (v11 >= v25)
      {
        v27 = v11;
      }

      else
      {
        v26 = (v10 + 32 * v11);
        v27 = v11;
        while (1)
        {
          v28 = *v26;
          v26 += 8;
          if (v28 == 33)
          {
            break;
          }

          if (v25 == ++v27)
          {
            v27 = *(a1 + 1264);
            break;
          }
        }
      }

      if (v27 == v25)
      {
        v30 = v11;
      }

      else
      {
        v30 = v27;
      }

      v31 = v10 + 32 * v30;
      v33 = *(v31 + 16);
      v32 = (v31 + 16);
      v34 = *(*(Stream + 1800) + 40 * (v24 - 1) + 8);
      v18 = v33 >= v34;
      v35 = v33 - v34;
      if (v18)
      {
        *v32 = v35;
      }
    }
  }

  if (v13 >= v9)
  {
    v36 = 0;
  }

  else
  {
    LODWORD(v36) = 0;
    v37 = *(a1 + 1264);
    v18 = v37 >= v11;
    LODWORD(v38) = v37 - v11;
    if (v18)
    {
      v38 = v38;
    }

    else
    {
      v38 = 0;
    }

    v39 = (v12 + 16);
    while (v38 != v36)
    {
      v40 = *(a1 + 1272);
      *(v39 - 1) = v40;
      if (*(v39 - 4) == 33)
      {
        *(a1 + 1272) = *v39 + v40;
        *(Stream + 400) = ++v13;
      }

      v36 = (v36 + 1);
      v39 += 8;
      if (v13 >= v9)
      {
        goto LABEL_43;
      }
    }

    v36 = v38;
  }

LABEL_43:
  log_OutText(*(*(a1 + 8) + 32), "SELECT_BET5", 3, 0, "About to write %d markers, starting with index %d", v4, v5, v6, v36);
  v41 = *(a1 + 1268);
  if (v41 < v41 + v36)
  {
    v42 = 32 * v41;
    do
    {
      marker_logOutText(*(*(a1 + 8) + 32), "SYNTH_BET5", 3, "Outputting marker ", *(a1 + 1256) + v42);
      ++v41;
      v42 += 32;
    }

    while (v41 < (*(a1 + 1268) + v36));
    LODWORD(v41) = *(a1 + 1268);
  }

  if (v36)
  {
    v29 = (*(*(a1 + 64) + 104))(*(a1 + 184), *(a1 + 192), *(a1 + 1256) + 32 * v41, (32 * v36));
    if ((v29 & 0x80000000) != 0)
    {
      log_OutPublic(*(*(a1 + 8) + 32), "SELECT_BET5", 58008, "%s%s%s%x", v43, v44, v45, v46, "contentType");
    }
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 1268) += v36;
  if (*(a1 + 1292))
  {
    __b = 0u;
    v53 = 0u;
    cstdlib_memset(&__b, 0, 0x20uLL);
    DWORD2(v53) = 35;
    v47 = *(a1 + 1272);
    LODWORD(__b) = 33;
    HIDWORD(__b) = v47;
    LODWORD(v53) = *(*(Stream + 1800) + 40 * (a2 - 1) + 8);
    *(a1 + 1272) = v53 + v47;
    log_OutText(*(*(a1 + 8) + 32), "SELECT_BET5", 3, 0, "Outputting             trailSilMrk:tag=%d u32Value=%d posCur=%d lenCur=%d", v48, v49, v50, 33);
    return (*(*(a1 + 64) + 104))(*(a1 + 184), *(a1 + 192), &__b, 32);
  }

  return v29;
}

uint64_t select_bet5_WriteAll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, int a11)
{
  v86 = *MEMORY[0x277D85DE8];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v11 = a6 - a5 + a7 + a8;
  if (!(a6 - a5 + a7 + a8))
  {
    return 0;
  }

  for (i = 1; i != 12; ++i)
  {
    v16 = 19;
    v17 = &off_279DB6B40;
    while (*(v17 - 1) != i)
    {
      v17 += 3;
      if (!--v16)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v16) = *(v17 + 2);
LABEL_8:
    v22 = (*(a3 + 112))(*(a2 + 16 * i), *(a2 + 16 * i + 8), &v80 + 8 * i, (v16 * v11));
    if ((v22 & 0x80000000) != 0)
    {
      log_OutPublic(*(a1 + 32), "SELECT_BET5", 71003, "%s%s%s%x", v18, v19, v20, v21, "contentType");
      return v22;
    }
  }

  if (a7)
  {
    v23 = 0;
    v24 = *(a4 + 1800);
    v25 = *(&v80 + 1);
    v26 = v81;
    v27 = *(&v82 + 1);
    v28 = v83;
    v30 = v84;
    v29 = v85;
    v31 = (v82 + 4);
    v32 = *(&v85 + 1);
    do
    {
      *(v31 - 1) = 0;
      *v31 = a9 + a5 + v23;
      if (v24)
      {
        *(v25 + 4 * v23) = -1;
        *(v26 + 4 * v23) = 0;
        *(*(&v26 + 1) + 4 * v23) = 0;
        *(v27 + 4 * v23) = 0;
        *(v28 + 4 * v23) = 0;
        *(*(&v28 + 1) + 4 * v23) = 0;
        *(v30 + 4 * v23) = 0;
        *(*(&v30 + 1) + 4 * v23) = 0;
        *(v29 + 4 * v23) = 0;
        *(v32 + 4 * v23) = 0;
      }

      ++v23;
      v31 += 2;
    }

    while (a7 != v23);
  }

  v33 = a8;
  v34 = v11 - a8;
  if (v34 > a7)
  {
    v35 = 0;
    v36 = *(&v85 + 1) + 4 * a7;
    v37 = v85 + 4 * a7;
    if (a11)
    {
      v38 = 3;
    }

    else
    {
      v38 = 1;
    }

    v39 = *(&v84 + 1) + 4 * a7;
    v40 = v84 + 4 * a7;
    v41 = *(&v83 + 1) + 4 * a7;
    v42 = v83 + 4 * a7;
    v43 = *(&v82 + 1) + 4 * a7;
    v44 = *(&v81 + 1) + 4 * a7;
    v45 = v81 + 4 * a7;
    v46 = *(a4 + 1800);
    v47 = ~a8 + v11 - a7;
    v48 = (v82 + 8 * a7 + 4);
    v49 = *(&v80 + 1) + 4 * a7;
    do
    {
      if (v47 != v35 || a10 == 0)
      {
        v51 = 0;
      }

      else
      {
        v51 = v38;
      }

      *(v48 - 1) = v51;
      *v48 = a9 + a7 + a5 + v35;
      if (v46)
      {
        v52 = (v46 + 40 * (a5 + v35));
        *(v49 + 4 * v35) = *v52;
        *(v45 + 4 * v35) = v52[1];
        *(v44 + 4 * v35) = v52[2];
        *(v43 + 4 * v35) = v52[3];
        *(v42 + 4 * v35) = v52[4];
        *(v41 + 4 * v35) = v52[5];
        *(v40 + 4 * v35) = v52[6];
        *(v39 + 4 * v35) = v52[7];
        *(v37 + 4 * v35) = v52[8];
        *(v36 + 4 * v35) = v52[9];
      }

      ++v35;
      v48 += 2;
    }

    while (a7 + v35 < v34);
  }

  if (v34 < v11)
  {
    v53 = 0;
    v54 = 4 * v11 - 4 * v33;
    v55 = *(&v85 + 1) + v54;
    v56 = v85 + v54;
    v57 = *(&v84 + 1) + v54;
    v58 = v84 + v54;
    v59 = *(&v83 + 1) + v54;
    v60 = v83 + v54;
    v61 = *(&v82 + 1) + v54;
    v62 = *(&v81 + 1) + v54;
    v63 = v81 + v54;
    v64 = *(&v80 + 1) + v54;
    v65 = *(a4 + 1800);
    v66 = (v82 - 8 * v33 + 8 * v11 + 4);
    do
    {
      *(v66 - 1) = 0;
      *v66 = a9 + a7 + a6 + v53;
      if (v65)
      {
        *(v64 + 4 * v53) = -1;
        *(v63 + 4 * v53) = 0;
        *(v62 + 4 * v53) = 0;
        *(v61 + 4 * v53) = 0;
        *(v60 + 4 * v53) = 0;
        *(v59 + 4 * v53) = 0;
        *(v58 + 4 * v53) = 0;
        *(v57 + 4 * v53) = 0;
        *(v56 + 4 * v53) = 0;
        *(v55 + 4 * v53) = 0;
      }

      ++v53;
      v66 += 2;
    }

    while (v33 != v53);
  }

  for (j = 1; j != 12; ++j)
  {
    if (*(&v80 + j))
    {
      v68 = 19;
      v69 = &off_279DB6B40;
      while (*(v69 - 1) != j)
      {
        v69 += 3;
        if (!--v68)
        {
          goto LABEL_41;
        }
      }

      LODWORD(v68) = *(v69 + 2);
LABEL_41:
      v22 = (*(a3 + 120))(*(a2 + 16 * j), *(a2 + 16 * j + 8), (v68 * v11));
      if ((v22 & 0x80000000) != 0)
      {
        log_OutPublic(*(a1 + 32), "SELECT_BET5", 71003, "%s%s%s%x", v70, v71, v72, v73, "contentType");
      }
    }
  }

  return v22;
}

uint64_t select_bet5_ReadDirectStart(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v13 = 19;
  for (i = &off_279DB6B40; *(i - 2) != a4; i += 3)
  {
    if (!--v13)
    {
      return 2229280788;
    }
  }

  v16 = *i;
  v17 = (a2 + 16 * a4);
  NullHandle = safeh_GetNullHandle();
  v20 = safeh_HandlesEqual(*v17, v17[1], NullHandle, v19);
  if (a4 - 3 <= 3 && v20)
  {
    return 0;
  }

  if (cstdlib_strcmp(v16, a5))
  {
    v15 = 2229280788;
  }

  else
  {
    v15 = (*(a3 + 88))(*v17, v17[1], a6, a7);
    if ((v15 & 0x80000000) == 0)
    {
      return v15;
    }
  }

  log_OutPublic(*(a1 + 32), "SELECT_BET5", 71001, "%s%s", v21, v22, v23, v24, "layer");
  return v15;
}

uint64_t select_bet5_ReadDirectEnd(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6)
{
  v10 = result;
  v11 = 19;
  for (i = &off_279DB6B40; *(i - 2) != a4; i += 3)
  {
    if (!--v11)
    {
      return result;
    }
  }

  v13 = *i;
  v14 = (a2 + 16 * a4);
  NullHandle = safeh_GetNullHandle();
  result = safeh_HandlesEqual(*v14, v14[1], NullHandle, v16);
  if (a4 - 3 > 3 || !result)
  {
    if (cstdlib_strcmp(v13, a5))
    {
      return log_OutPublic(*(v10 + 32), "SELECT_BET5", 71001, "%s%s", v17, v18, v19, v20, "layer");
    }

    result = (*(a3 + 96))(*v14, v14[1], a6);
    if ((result & 0x80000000) != 0)
    {
      return log_OutPublic(*(v10 + 32), "SELECT_BET5", 71001, "%s%s", v17, v18, v19, v20, "layer");
    }
  }

  return result;
}

uint64_t PredictPipeline_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1072);
  v4 = *(a1 + 392);
  v8[1] = a2;
  v8[2] = a3;
  v8[0] = a1;
  v5 = *(a1 + 1760);
  if (((*v5)(v5, v8) & 0x80000000) != 0)
  {
    v7 = "PredictPipeline, Error, self->Open\n";
  }

  else
  {
    if ((v5[1](v5, v4) & 0x80000000) == 0)
    {
      return 0;
    }

    v7 = "PredictPipeline, Error, self->Set\n";
  }

  UNICORN__log_select_Diag(v3, 0, v7);
  return 2229280778;
}

uint64_t PredictPipeline_Create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a2;
  v6[2] = a3;
  v6[0] = 0;
  v4 = UnicornPredict_Create(a1, v6);
  if (!v4)
  {
    UNICORN__log_select_Diag(a1, 0, "PredictPipeline, Error, UnicornPredict_Create\n");
  }

  return v4;
}

uint64_t PredictPipeline_Process(uint64_t a1)
{
  v1 = *(*(a1 + 224) + 1072);
  if (((*(a1 + 16))() & 0x80000000) == 0)
  {
    return 0;
  }

  UNICORN__log_select_Diag(v1, 0, "PredictPipeline, Error, self->Process\n");
  return 2229280778;
}

uint64_t PredictPipeline_GetNProcessedPhonemes(uint64_t result)
{
  if (result)
  {
    return (*(result + 40))();
  }

  return result;
}

uint64_t Search_NoPrune(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, void *a8, signed int a9, int a10)
{
  v10 = a1[15];
  v32 = a1[14];
  if (*(v32 + 5992) == 1)
  {
    v14 = *(*(a5 + 8 * a2 + 56) + 4 * a3);
    v15 = a1[13];
    v16 = v15 + 768;
    v17 = *(*(*(v15 + 768 + 8 * a2) + 8 * a3) + 40 * v14);
    v34 = v15 + 808;
    v35 = v15;
    v31 = *(*(v15 + 848) + 4 * (*(*(v15 + 808 + 8 * a2) + 4 * v17) / *(*(v15 + 568) + 5992)));
    IndexPtr_LH_F32 = VectBlock_Get_IndexPtr_LH_F32(v10 + 1848, a9);
    v18 = a8[2] + 32 * a9;
    v36 = v16;
    v37 = v14;
    v19 = *(*(*(v16 + 8 * a2) + 8 * a3) + 40 * v14 + 4);
    v20 = *(v18 + 16);
    if (*(v18 + 20) < v19)
    {
      result = UNICORN__mfs_CostList_Resize(a8, a9, v19);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v19 = *(*(*(v16 + 8 * a2) + 8 * a3) + 40 * v37 + 4);
    }

    if (v19)
    {
      v22 = v20 - a6 >= a7;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = 0;
      v24 = 1;
      v25 = v31;
      do
      {
        v26 = *(*(v34 + 8 * a2) + 4 * v17);
        v27 = mfs_bnfData_Distance(v35, IndexPtr_LH_F32, v26);
        v28 = v25;
        if (a10)
        {
          v29 = a8[9];
          *(a8[8] + 4 * ((v26 / *(v32 + 5992)) >> 5)) |= 1 << (v26 / *(v32 + 5992));
          v28 = v31 + v23;
          *(v29 + 4 * v25) = v27;
        }

        mfs_CostList_PadWithBnfOffset(a8, a9, v26, v28, v27);
        ++v23;
        ++v25;
        LODWORD(v17) = v17 + 1;
        v22 = v24++ >= *(*(*(v36 + 8 * a2) + 8 * a3) + 40 * v37 + 4);
      }

      while (!v22 && *(a8[2] + 32 * a9 + 16) - a6 < a7);
    }

    return 0;
  }

  else
  {
    UNICORN__log_select_Diag(*(v10 + 1072), 1, "CONFIG ERROR : Search is not implemented for Phoneme Substate Modeling\n");
    return 2229280768;
  }
}

uint64_t Search_PruneBNF(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, void *a8, signed int a9)
{
  v10 = a1[14];
  v9 = a1[15];
  if (*(v10 + 5992) == 1)
  {
    v14 = *(*(a5 + 8 * a2 + 56) + 4 * a3);
    v35 = *(a4 + 1);
    v15 = a1[13];
    v16 = *(*(*(v15 + 768 + 8 * a2) + 8 * a3) + 40 * v14);
    IndexPtr_LH_F32 = VectBlock_Get_IndexPtr_LH_F32(v9 + 1848, a9);
    v17 = a8[2] + 32 * a9;
    v36 = v15 + 768;
    v37 = v14;
    v18 = *(*(*(v15 + 768 + 8 * a2) + 8 * a3) + 40 * v14 + 4);
    v19 = *(v17 + 16);
    if (*(v17 + 20) < v18)
    {
      v20 = UNICORN__mfs_CostList_Resize(a8, a9, v18);
      if ((v20 & 0x80000000) != 0)
      {
        return v20;
      }

      v18 = *(*(*(v36 + 8 * a2) + 8 * a3) + 40 * v37 + 4);
    }

    if (v18)
    {
      v21 = v19 - a6 >= a7;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = *(a8[2] + 32 * a9 + 16);
    }

    else
    {
      v24 = 1;
      do
      {
        v25 = *(*(v15 + 808 + 8 * a2) + 4 * v16);
        if (v35 == 1 || (IsPhonemeDurationOutlier = UNICORN__IsPhonemeDurationOutlier(v15, *(*(v15 + 808 + 8 * a2) + 4 * v16), *(v10 + 6160), a3, *(a5 + 24), *(a5 + 28)), v27 = 9999.9, !IsPhonemeDurationOutlier))
        {
          v27 = mfs_bnfData_Distance(v15, IndexPtr_LH_F32, v25);
        }

        v28 = *(*(v15 + 592) + 16 * v25);
        v29 = *(v10 + 6192);
        if (v28 < v29)
        {
          v27 = v27 * (v28 / v29);
        }

        if (v27 <= 0.5 || (v22 = *(a8[2] + 32 * a9 + 16), v22 <= 0xC8))
        {
          UNICORN__mfs_CostList_Pad(a8, a9, v25, v27);
          v22 = *(a8[2] + 32 * a9 + 16);
        }

        ++v16;
        v21 = v24++ >= *(*(*(v36 + 8 * a2) + 8 * a3) + 40 * v37 + 4);
      }

      while (!v21 && v22 - a6 < a7);
    }

    v31 = *(v10 + 6144);
    if (v22 <= v31)
    {
      return 0;
    }

    else
    {
      v23 = mfs_CostList_Select(a8, a9, 1, v31);
      if ((v23 & 0x80000000) == 0)
      {
        UNICORN__mfs_CostList_Prune(a8, a9, *(v10 + 6144));
      }
    }
  }

  else
  {
    UNICORN__log_select_Diag(*(v9 + 1072), 1, "CONFIG ERROR : Search is not implemented for Phoneme Substate Modeling\n");
    return 2229280768;
  }

  return v23;
}

uint64_t Search_Diphone_PruneBNF(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, void *a8, signed int a9)
{
  v9 = a1[15];
  v46 = a1[14];
  if (*(v46 + 5992) != 1)
  {
    v39 = 2229280768;
    v40 = *(v9 + 1072);
    v41 = "CONFIG ERROR : Search is not implemented for Phoneme Substate Modeling\n";
LABEL_29:
    UNICORN__log_select_Diag(v40, 1, v41);
    return v39;
  }

  v45 = *(a4 + 1);
  v13 = a1[13];
  v48 = v13 + 768;
  v49 = *(*(a5 + 8 * a2 + 56) + 4 * a3);
  v14 = (*(*(v13 + 768 + 8 * a2) + 8 * a3) + 40 * v49);
  v15 = a8[2] + 32 * a9;
  v17 = *v14;
  v16 = v14[1];
  v19 = *(v15 + 16);
  if (*(v15 + 20) < v16)
  {
    v20 = UNICORN__mfs_CostList_Resize(a8, a9, v16);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }
  }

  v47 = a8;
  IndexPtr_LH_F32 = VectBlock_Get_IndexPtr_LH_F32(v9 + 1848, a9);
  v25 = v49;
  v26 = *(v48 + 8 * a2);
  v27 = a6;
  v28 = a7;
  if (*(*(v26 + 8 * a3) + 40 * v49 + 4))
  {
    v29 = v19 - a6 >= a7;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = 0xFFFFFFFFLL;
    v31 = 1;
    do
    {
      v32 = *(*(v13 + 808 + 8 * a2) + 4 * v17);
      v33 = *(v13 + 592) + 16 * v32;
      if (*(v33 + 13) == *(a4 + 1) && *(v33 + 14) == *(a4 + 2))
      {
        if ((v45 == 1 || (IsPhonemeDurationOutlier = UNICORN__IsPhonemeDurationOutlier(v13, *(*(v13 + 808 + 8 * a2) + 4 * v17), *(v46 + 6160), a3, *(a5 + 24), *(a5 + 28)), v35 = 9999.9, !IsPhonemeDurationOutlier)) && (v35 = mfs_bnfData_Distance(v13, IndexPtr_LH_F32, v32), v35 <= 0.5) || *(v47[2] + 32 * a9 + 16) <= 0xC8u)
        {
          if (v32 <= v30)
          {
            UNICORN__mfs_CostList_Add(v35, v13, v47, a9, v32);
          }

          else
          {
            UNICORN__mfs_CostList_Pad(v47, a9, v32, v35);
          }
        }

        v19 = *(v47[2] + 32 * a9 + 16);
        v25 = v49;
        v26 = *(v48 + 8 * a2);
        v28 = a7;
        v27 = a6;
      }

      else
      {
        v32 = v30;
      }

      ++v17;
      v29 = v31++ >= *(*(v26 + 8 * a3) + 40 * v25 + 4);
      v36 = v29 || v19 - v27 >= v28;
      v30 = v32;
    }

    while (!v36);
  }

  v37 = *(v47[2] + 32 * a9 + 16);
  v38 = *(v46 + 6144);
  if (v37 <= v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = mfs_CostList_Select(v47, a9, 1, v38);
    if ((v39 & 0x80000000) != 0)
    {
      return v39;
    }

    UNICORN__mfs_CostList_Prune(v47, a9, *(v46 + 6144));
    v37 = *(v47[2] + 32 * a9 + 16);
  }

  if (!v37)
  {
    UNICORN__log_select_Error(*(v9 + 1072), 0, "** ERROR no candidates found for Offline Unit Bulking: state #%d (diphone: A%02d+A%02d)\n", v38, v21, v22, v23, v24);
    return 2229280783;
  }

  if (v37 <= 0x31)
  {
    v40 = *(v9 + 1072);
    v41 = "** Warning too few candidates (%d) for Offline Unit Bulking: state #%d (diphone: A%02d+A%02d)\n";
    goto LABEL_29;
  }

  return v39;
}

uint64_t mfs_QuantizeLF0Frame(uint64_t a1, float a2)
{
  if (a2 <= 0.0)
  {
    if (*(a1 + 5596))
    {
      return *(a1 + 5600);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 6016);
    if (v2 > a2)
    {
      a2 = *(a1 + 6016);
    }

    if (a2 > *(a1 + 6036))
    {
      a2 = *(a1 + 6036);
    }

    return (((a2 - v2) * *(a1 + 6056)) + 0.5);
  }
}

uint64_t mfs_UpdateTargetQuantizedTrajectory_LF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 104);
  if (v3 < 1)
  {
    return 0;
  }

  v6 = *(a1 + 568);
  v7 = *(a2 + 1824);
  v8 = *(a3 + 32);
  v9 = 2229280778;
  v10 = *(a2 + 1072);
  *(a2 + 1824) = v3 + v7;
  v11 = heap_Realloc(*(v10 + 8), *(a2 + 1808), 2 * (v3 + v7));
  *(a2 + 1808) = v11;
  if (v11)
  {
    v12 = heap_Realloc(*(v10 + 8), *(a2 + 1816), 4 * *(a2 + 1824));
    *(a2 + 1816) = v12;
    if (v12)
    {
      v13 = *(a2 + 1808);
      do
      {
        v14 = *v8;
        if (*v8 <= 0.0)
        {
          v16 = *(v6 + 5596);
          if (v16)
          {
            v16 = *(v6 + 5600);
          }
        }

        else
        {
          v15 = *(v6 + 6016);
          if (v15 > v14)
          {
            v14 = *(v6 + 6016);
          }

          if (v14 > *(v6 + 6036))
          {
            v14 = *(v6 + 6036);
          }

          v16 = (((v14 - v15) * *(v6 + 6056)) + 0.5);
        }

        *(v13 + 2 * v7) = v16;
        *(v12 + 4 * v7++) = *(a3 + 120);
        ++v8;
        --v3;
      }

      while (v3);
      return 0;
    }
  }

  return v9;
}

uint64_t UnicornPredict_Create(uint64_t a1, uint64_t a2)
{
  v4 = heap_Calloc(*(a1 + 8), 1, 312);
  v5 = v4;
  if (v4)
  {
    v6 = *(a2 + 16);
    if (*(v6 + 8016))
    {
      if ((ANNFactory_CreateANNLibInstance((v4 + 56), a1) & 0x80000000) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!*(v6 + 9816))
      {
        UNICORN__log_select_Diag(a1, 0, "%s_Create failed because the model does not contain BET5 ANN data\n");
        goto LABEL_12;
      }

      if ((ANNFactory_CreateFastInferInstance((v4 + 56), a1) & 0x80000000) != 0)
      {
LABEL_12:
        heap_Free(*(a1 + 8), v5);
        return 0;
      }
    }

    *(v5 + 144) = 20;
    v7 = heap_Calloc(*(a1 + 8), 20, 16);
    *(v5 + 136) = v7;
    if (!v7)
    {
LABEL_10:
      (*(v5 + 128))(*(v5 + 56));
      goto LABEL_12;
    }

    *v5 = UnicornPredict_Open;
    *(v5 + 8) = UnicornPredict_Set;
    *(v5 + 16) = UnicornPredict_Process;
    *(v5 + 24) = UnicornPredict_Reset;
    *(v5 + 32) = UnicornPredict_Close;
    *(v5 + 40) = UnicornPredict_GetNProcessedPhonemes;
    *(v5 + 48) = a1;
    if (((*(v5 + 64))(*(v5 + 56), *(*(a2 + 8) + 1944)) & 0x80000000) != 0)
    {
      UNICORN__log_select_Diag(a1, 0, "%s_Create, Error, ANNObject Open failed\n");
      goto LABEL_10;
    }
  }

  return v5;
}

uint64_t UnicornPredict_Open(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 2229280778;
  }

  v3 = a2[1];
  v2 = a2[2];
  v4 = *a2;
  *(a1 + 216) = v2;
  *(a1 + 224) = v4;
  *(a1 + 184) = v2;
  *(a1 + 192) = v3;
  *(a1 + 168) = v3;
  *(a1 + 176) = v4;
  v5 = *v3;
  v6 = *(v4 + 392);
  *(a1 + 200) = v6;
  *(a1 + 204) = v5;
  v7 = 1;
  v8 = *(v3 + 1932);
  if (*(v2 + 6728))
  {
    v8 *= 8;
  }

  *(a1 + 160) = v8;
  if (*(v2 + 5984))
  {
    v9 = 1;
  }

  else
  {
    v9 = v5;
  }

  *(a1 + 208) = v6 * v9;
  *(a1 + 212) = 1;
  *(a1 + 148) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v10 = *(a1 + 144);
  if (v10)
  {
    v11 = *(a1 + 136);
    *v11 = *(v2 + 10408);
    *(a1 + 148) = 1;
    v11[1] = UnicornPredict_CopyOutputToBNFStream;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < v10)
  {
    v13 = (*(a1 + 136) + 16 * v7);
    *v13 = *(v2 + 10416);
    *(a1 + 148) = ++v7;
    v13[1] = UnicornPredict_CopyOutputToLF0Stream;
  }

  if (v7 < v10)
  {
    v14 = (*(a1 + 136) + 16 * v7);
    *v14 = *(v2 + 10424);
    *(a1 + 148) = ++v7;
    v14[1] = UnicornPredict_CopyOutputToDURStream;
  }

  if (v7 < v10)
  {
    v15 = (*(a1 + 136) + 16 * v7);
    *v15 = *(v2 + 10432);
    *(a1 + 148) = ++v7;
    v15[1] = UnicornPredict_CopyOutputToSDURStream;
  }

  if (v7 < v10)
  {
    v16 = (*(a1 + 136) + 16 * v7);
    *v16 = *(v2 + 10440);
    *(a1 + 148) = ++v7;
    v16[1] = UnicornPredict_CopyOutputToVUVStream;
  }

  if (v7 >= v10)
  {
    return 0;
  }

  v12 = 0;
  v17 = (*(a1 + 136) + 16 * v7);
  *v17 = *(v2 + 10448);
  *(a1 + 148) = v7 + 1;
  v17[1] = UnicornPredict_CopyOutputToELF0Stream;
  return v12;
}

uint64_t UnicornPredict_Set(uint64_t a1, int a2)
{
  *(a1 + 200) = a2;
  v3 = *(a1 + 216);
  v4 = *(a1 + 224);
  if (!*(v3 + 5984))
  {
    a2 *= *(a1 + 204);
  }

  *(a1 + 208) = a2;
  *(v4 + 1944) = *(v3 + 6728) != 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v5 = (*(a1 + 120))(*(a1 + 56));
  v6 = *(a1 + 208);
  if (*(v4 + 1840) == 4 * (v6 * v5))
  {
    v7 = *(a1 + 160);
    v8 = v7 * v6;
    v10 = (a1 + 48);
    v9 = *(a1 + 48);
    *(a1 + 152) = *(v4 + 1832);
    if (*(*(a1 + 216) + 6728))
    {
      v11 = v8 >> 3;
      v7 >>= 3;
      v12 = v4 + 1864;
    }

    else
    {
      v12 = v4 + 1864;
      v11 = v7 * v6;
    }

    if (VectBlock_Create(v9, v12, v11, v7))
    {
      *(a1 + 264) = *(v4 + 1864);
      if (VectBlock_Create(*(a1 + 48), v4 + 1848, 4 * v8, *(a1 + 160)))
      {
        *(a1 + 280) = *(v4 + 1848);
        if (VectBlock_Create(*(a1 + 48), v4 + 1880, 2 * v8 + 32, *(a1 + 160)))
        {
          *(a1 + 272) = *(v4 + 1880);
          if (VectBlock_Create(*(a1 + 48), v4 + 1928, 4 * *(a1 + 208) + 64, 1))
          {
            *(a1 + 296) = *(v4 + 1928);
            v14 = *(a1 + 216);
            if (!*(v14 + 10448))
            {
              goto LABEL_16;
            }

            if (VectBlock_Create(*(a1 + 48), v4 + 1896, 8 * *(v14 + 5992) * *(a1 + 208), 1))
            {
              *(a1 + 288) = *(v4 + 1896);
              if (VectBlock_Create(*(a1 + 48), v4 + 1912, 4 * *(*(a1 + 216) + 5992) * *(a1 + 208), 1))
              {
                *(a1 + 304) = *(v4 + 1912);
LABEL_16:
                v15 = *(a1 + 232);
                if (v15)
                {
                  heap_Free(*(*(a1 + 48) + 8), v15);
                  *(a1 + 232) = 0;
                }

                v16 = *(a1 + 224);
                if (!v16)
                {
                  return 0;
                }

                v17 = *(v16 + 1768);
                if (!v17)
                {
                  return 0;
                }

                if (*(v17 + 12) != 1)
                {
                  return 0;
                }

                v18 = *(v17 + 8);
                v19 = *(a1 + 200);
                if (v18 != *(a1 + 204) * v19)
                {
                  return 0;
                }

                v20 = heap_Calloc(*(*(a1 + 48) + 8), (v19 + 4), 4);
                *(a1 + 232) = v20;
                if (v20)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }

    v13 = "%s_Set, Error, Out of memory\n";
    goto LABEL_25;
  }

  v10 = (a1 + 48);
  v13 = "%s_Set, Error, Inputs misaligned\n";
LABEL_25:
  UNICORN__log_select_Diag(*v10, 0, v13);
  return 2229280778;
}

uint64_t UnicornPredict_Process(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v4 = *(a1 + 240);
  v5 = v4 + 1;
  v6 = v4 + 4;
  if (v6 >= *(a1 + 200))
  {
    v7 = *(a1 + 200);
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a1 + 256);
  *(a1 + 240) = v5;
  *(a1 + 244) = v8;
  *(a1 + 248) = v8;
  *(a1 + 252) = v8;
  if (v8 >= v7)
  {
    return 0;
  }

  v9 = 0;
  v10 = "%s_Process: Expected Output  '%s' not found in ANNObject\n";
  do
  {
    v11 = *(a1 + 216);
    v12 = v11[1685];
    v13 = *(a1 + 200);
    if (v12 < 1)
    {
      v12 = *(a1 + 200);
    }

    v14 = v11[1686];
    v15 = v8 >= v14;
    v16 = v8 - v14;
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 244) = v17;
    *(a1 + 248) = v8;
    v18 = v17 + v12;
    *(a1 + 252) = v18;
    if (v18 >= v13)
    {
      *(a1 + 252) = v13;
      v21 = v13;
    }

    else
    {
      v19 = v11[1687];
      v15 = v18 >= v19;
      v20 = v18 - v19;
      if (v15)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v13 = v18;
    }

    if (v21 > v8)
    {
      v8 = v21;
    }

    *(a1 + 256) = v8;
    v22 = *(a1 + 152);
    v23 = v13 - v17;
    if (v11[1496])
    {
      v24 = (*(a1 + 120))(*(a1 + 56)) * v17;
      if (!v23)
      {
        return v9;
      }
    }

    else
    {
      v25 = *(a1 + 204) * v17;
      v24 = v25 * (*(a1 + 120))(*(a1 + 56));
      v23 = (*(a1 + 204) * v23);
      if (!v23)
      {
        return v9;
      }
    }

    v26 = (*(a1 + 72))(*(a1 + 56), v22 + 4 * v24, v23);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    v27 = *(a1 + 224);
    if (v27)
    {
      v28 = *(v27 + 1768);
      if (v28)
      {
        if (*(v28 + 3) == 1)
        {
          v29 = *(a1 + 204);
          if (*(v28 + 2) == v29 * *(a1 + 200))
          {
            v30 = *(a1 + 232);
            if (v30)
            {
              v31 = *(a1 + 216);
              v32 = *(v31 + 10456) ? *(v31 + 10456) : "output_pdur";
              v33 = *(a1 + 244);
              v34 = *(a1 + 252);
              v15 = v34 >= v33;
              v35 = v34 - v33;
              if (v35 != 0 && v15)
              {
                v36 = *v28;
                v37 = v33 * v29;
                v38 = v35;
                v39 = *(a1 + 232);
                do
                {
                  *v39++ = *(v36 + 48 * v37 + 16);
                  v37 += v29;
                  --v38;
                }

                while (v38);
              }

              else
              {
                v35 = 0;
              }

              *(v30 + 4 * v35) = *(v31 + 11576);
              *(v30 + 4 * (v35 + 1)) = *(v31 + 11580);
              *(v30 + 4 * (v35 + 2)) = *(v31 + 11568);
              *(v30 + 4 * (v35 + 3)) = *(v31 + 11572);
              v26 = (*(a1 + 112))(*(a1 + 56), v32);
              if ((v26 & 0x80000000) != 0)
              {
LABEL_60:
                v9 = v26;
                v46 = *(a1 + 48);
                v47 = "%s_Set, Error, ANNObject Set failed\n";
LABEL_58:
                UNICORN__log_select_Diag(v46, 0, v47);
                return v9;
              }
            }
          }
        }
      }
    }

    v40 = (*(a1 + 80))(*(a1 + 56));
    if ((v40 & 0x80000000) != 0)
    {
      v9 = v40;
      v46 = *(a1 + 48);
      v47 = "%s_Process, Error, ANNObject Process\n";
      goto LABEL_58;
    }

    v49 = 0;
    v50 = 0;
    v41 = *(a1 + 148);
    if (v41)
    {
      v42 = 0;
      v43 = 0;
      v9 = 0;
      while (1)
      {
        v44 = *(*(a1 + 136) + v42);
        if (v44)
        {
          v45 = (*(a1 + 88))(*(a1 + 56), v44, &v49, &v50 + 4, &v50);
          if ((v45 & 0x80000000) != 0)
          {
            v9 = v45;
LABEL_57:
            v46 = *(a1 + 48);
            v47 = v10;
            goto LABEL_58;
          }

          v9 = (*(*(a1 + 136) + v42 + 8))(a1, v49, HIDWORD(v50), v50);
          if ((v9 & 0x80000000) != 0)
          {
            v10 = "%s_Process: Collector  '%s', Error\n";
            goto LABEL_57;
          }

          v41 = *(a1 + 148);
        }

        ++v43;
        v42 += 16;
        if (v43 >= v41)
        {
          if ((v9 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          return v9;
        }
      }
    }

    v9 = 0;
LABEL_50:
    (*(a1 + 96))(*(a1 + 56));
    if (a2)
    {
      *a2 += *(a1 + 256) - *(a1 + 248);
    }

    v8 = *(a1 + 256);
  }

  while (v8 < v7);
  return v9;
}

uint64_t UnicornPredict_Reset(uint64_t a1)
{
  *(a1 + 152) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  (*(a1 + 96))(*(a1 + 56));
  return 0;
}

void *UnicornPredict_Destroy(uint64_t a1)
{
  (*(a1 + 104))(*(a1 + 56));
  (*(a1 + 128))(*(a1 + 56));
  heap_Free(*(*(a1 + 48) + 8), *(a1 + 136));
  v2 = *(a1 + 232);
  if (v2)
  {
    heap_Free(*(*(a1 + 48) + 8), v2);
    *(a1 + 232) = 0;
  }

  v3 = *(*(a1 + 48) + 8);

  return heap_Free(v3, a1);
}

uint64_t UnicornPredict_CopyOutputToBNFStream(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v5 = *(a1 + 200);
  if ((v5 < a3 || *(a1 + 160) != a4) && (*(a1 + 204) * v5 < a3 || *(a1 + 160) != a4))
  {
    UNICORN__log_select_Diag(*(a1 + 48), 0, "UnicornPredict_CopyOutputToBNFStream: nPhonemes=%d, nStates=%d, _timesteps=%d, _dim=%d, nBNFOrder=%d\n");
    return 2229280775;
  }

  v8 = *(a1 + 248);
  v9 = (v8 - *(a1 + 244)) * a4;
  v10 = *(a1 + 216);
  v11 = *(v10 + 5984);
  if (!v11)
  {
    v18 = *(a1 + 204);
    v12 = a2 + 4 * v18 * v9;
    v13 = (*(a1 + 256) - v8) * v18;
    v14 = (a1 + 160);
    v15 = v8 * a4;
    v21 = v8 * a4 * v18;
    v16 = *(a1 + 280) + 4 * v21;
    v17 = *(a1 + 272) + 2 * v21;
    if (*(v10 + 6728))
    {
      goto LABEL_10;
    }

LABEL_12:
    v20 = v18 * v15;
    v19 = 1;
    goto LABEL_13;
  }

  v12 = a2 + 4 * v9;
  v13 = *(a1 + 256) - v8;
  v14 = (a1 + 160);
  v15 = v8 * a4;
  v16 = *(a1 + 280) + 4 * v8 * a4;
  v17 = *(a1 + 272) + 2 * v8 * a4;
  v18 = 1;
  if (!*(v10 + 6728))
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
  v20 = (a4 >> 3) * v8 * v18;
LABEL_13:
  if (v11)
  {
    v22 = 1;
  }

  else
  {
    v22 = *(a1 + 204);
  }

  v23 = *(a1 + 296) + 4 * (v22 * v8);
  if (v19)
  {
    if (v13)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v59 = v13;
      LODWORD(v27) = *(a1 + 160);
      v58 = *(a1 + 296) + 4 * (v22 * v8);
      do
      {
        if (v27)
        {
          v28 = 0;
          v29 = 0.0;
          v60 = v24;
          do
          {
            v30 = *(v12 + 4 * (v26 + v28));
            *(v16 + 4 * (v25 + v28)) = v30;
            v29 = v29 + (v30 * v30);
            UNICORN__log_select_Diag(*(a1 + 48), 11, "ANN-predicted BNF: %d,%d %f\n");
            ++v28;
            v27 = *(a1 + 160);
          }

          while (v28 < v27);
          if (v27)
          {
            v31 = *(a1 + 160);
            v32 = v25;
            v33 = sqrtf(v29);
            v23 = v58;
            v24 = v60;
            do
            {
              *(v16 + 4 * v32) = *(v16 + 4 * v32) / v33;
              ++v32;
              --v31;
            }

            while (v31);
            v34 = 0.0;
            v35 = v27;
            v36 = v25;
            do
            {
              v37 = fabsf(*(v16 + 4 * v36));
              if (v37 > v34)
              {
                v34 = v37;
              }

              ++v36;
              --v35;
            }

            while (v35);
            if (v34 <= 0.0)
            {
              v38 = 1.0;
            }

            else
            {
              v38 = 1.0 / v34;
            }

            v39 = v27;
            v40 = v25;
            do
            {
              v41 = *(v16 + 4 * v40);
              v42 = ((v38 * 32767.0) * v41);
              *(v17 + 2 * v40) = v42;
              if ((v42 + 8) <= 0x10)
              {
                v43 = v41 <= 0.0 || v41 > 8.0;
                if (!v43 || (v41 < 0.0 ? (v44 = v41 < -8.0) : (v44 = 1), !v44))
                {
                  *(v17 + 2 * v40) = ((v38 * (v41 * 4.0)) * 32767.0);
                }
              }

              ++v40;
              --v39;
            }

            while (v39);
            v45 = v38 * 32767.0;
            v26 += v28;
          }

          else
          {
            v26 += v28;
            v45 = 32767.0;
            v23 = v58;
            v24 = v60;
          }
        }

        else
        {
          v45 = 32767.0;
        }

        v46 = 1.0 / v45;
        *(v23 + 4 * v24) = v46;
        v25 += v27;
        ++v24;
      }

      while (v24 != v59);
    }
  }

  else if (v13)
  {
    v47 = 0;
    v48 = *(a1 + 264) + v20;
    v49 = *v14;
    do
    {
      if (v49)
      {
        v50 = 0;
        do
        {
          v51 = v50 + v47 * v49;
          v52 = *(v12 + 4 * v51);
          *(v16 + 4 * v51) = v52;
          *(v17 + 2 * v51) = v52 < 0.0;
          v53 = 1 << (~v50 & 7);
          v54 = (v49 >> 3) * v47 + (v50 >> 3);
          v55 = *(v48 + v54);
          v56 = v55 | v53;
          v57 = v55 & ~v53;
          if (v52 < 0.0)
          {
            v57 = v56;
          }

          *(v48 + v54) = v57;
          ++v50;
          v49 = *v14;
        }

        while (v50 < *v14);
      }

      *(v23 + 4 * v47++) = 1065353216;
    }

    while (v47 != v13);
  }

  return 0;
}

uint64_t UnicornPredict_CopyOutputToLF0Stream(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v38 = *(a1 + 176);
  UNICORN__log_select_Diag(*(a1 + 48), 10, "+%s_CopyOutputToLF0Stream\n");
  v9 = *(a1 + 200);
  v8 = *(a1 + 204);
  v10 = v9 >= a3 && 6 * v8 == a4;
  if (v10 || a4 == 6 && v8 * v9 >= a3)
  {
    v11 = *(a1 + 248);
    v12 = *(*(a1 + 216) + 5984);
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = *(a1 + 204);
    }

    v14 = (v11 - *(a1 + 244)) * a4 * v13;
    v15 = *(*(a1 + 176) + 32);
    if (v15 < 1)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      while (*(*(a1 + 184) + 184 + 4 * v16) != 2)
      {
        if (v15 == ++v16)
        {
          LODWORD(v16) = *(*(a1 + 176) + 32);
          break;
        }
      }

      v17 = v16;
    }

    v41 = a2 + 4 * v14;
    if (v12)
    {
      if (v11 >= v9)
      {
        goto LABEL_49;
      }

      v18 = 0;
      while (1)
      {
        v19 = 0;
        v20 = *(v38 + 384) + 312 * v11;
        v21 = v20 + 96;
        v40 = v20 + 136;
        do
        {
          if ((v8 - 1) > 0xFFFFFFFC)
          {
            goto LABEL_33;
          }

          v39 = v19;
          v22 = v19 + 1;
          v23 = 2;
          do
          {
            v24 = 0;
            if (v11 < *(a1 + 256))
            {
              v24 = *(v41 + 4 * v18++);
            }

            *(*(*(v21 + 8 * v17) + 8 * v23) + 4 * v22) = v24;
            UNICORN__log_select_Diag(*(a1 + 48), 11, "%d,%d,%d, mean %f -> %f \n");
            ++v23;
            v8 = *(a1 + 204);
          }

          while (v23 < (v8 + 2));
          if ((v8 - 1) > 0xFFFFFFFC)
          {
            v19 = v39;
LABEL_33:
            v22 = v19 + 1;
            goto LABEL_34;
          }

          v25 = 2;
          do
          {
            v26 = 1.0;
            if (v11 < *(a1 + 256))
            {
              v26 = *(v41 + 4 * v18++);
            }

            *(*(*(v40 + 8 * v17) + 8 * v25) + 4 * v22) = v26;
            UNICORN__log_select_Diag(*(a1 + 48), 11, "%d,%d,%d, var  %f -> %f \n");
            ++v25;
            v8 = *(a1 + 204);
          }

          while (v25 < (v8 + 2));
LABEL_34:
          v19 = v22;
        }

        while (v22 != 3);
        if (++v11 >= *(a1 + 200))
        {
          goto LABEL_49;
        }
      }
    }

    if (v11 < v9)
    {
      v27 = 0;
      do
      {
        if ((v8 - 1) <= 0xFFFFFFFC)
        {
          v28 = *(v38 + 384) + 312 * v11;
          v29 = v28 + 96;
          v30 = v28 + 136;
          v31 = 2;
          do
          {
            for (i = 1; i != 4; ++i)
            {
              if (v11 >= *(a1 + 256))
              {
                v35 = 1.0;
                v34 = 0;
              }

              else
              {
                v33 = v27 + 1;
                v34 = *(v41 + 4 * v27);
                v27 += 2;
                v35 = *(v41 + 4 * v33);
              }

              UNICORN__log_select_Diag(*(a1 + 48), 11, "%d,%d,%d, mean %f -> %f \n");
              UNICORN__log_select_Diag(*(a1 + 48), 11, "%d,%d,%d, var  %f -> %f \n");
              *(*(*(v29 + 8 * v17) + 8 * v31) + 4 * i) = v34;
              *(*(*(v30 + 8 * v17) + 8 * v31) + 4 * i) = v35;
            }

            ++v31;
            v8 = *(a1 + 204);
          }

          while (v31 < (v8 + 2));
          v9 = *(a1 + 200);
        }

        ++v11;
      }

      while (v11 < v9);
    }

LABEL_49:
    v36 = 0;
  }

  else
  {
    UNICORN__log_select_Diag(*(a1 + 48), 0, "UnicornPredict_CopyOutputToLF0Stream: nPhonemes=%d, nStates=%d, _timesteps=%d, _dim=%d\n");
    v36 = 2229280775;
  }

  UNICORN__log_select_Diag(*(a1 + 48), 10, "+%s_CopyOutputToLF0Stream\n");
  return v36;
}

uint64_t UnicornPredict_CopyOutputToDURStream(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 176);
  v39 = 0;
  UNICORN__log_select_Diag(*(a1 + 48), 10, "+%s_CopyOutputToDurStream_Phoneme\n");
  v9 = *(a1 + 200);
  if (a4 == 1 && v9 >= a3 || a4 == 1 && *(a1 + 204) * v9 >= a3)
  {
    v10 = *(a1 + 248);
    v11 = (v10 - *(a1 + 244));
    v12 = *(*(a1 + 216) + 5984);
    if (v12)
    {
      v13 = (a1 + 256);
    }

    else
    {
      v14 = *(a1 + 204);
      v11 = v14 * v11;
      v15 = a2 + 4 * v11;
      v13 = (a1 + 256);
      v16 = (*(a1 + 256) - v10) * v14;
      if (v14 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      do
      {
        if (v14 <= v16)
        {
          v18 = 0;
          v19 = v12;
          do
          {
            v20 = 0.0;
            v21 = v19;
            v22 = v17;
            do
            {
              v20 = v20 + *(v15 + 4 * v21++);
              --v22;
            }

            while (v22);
            *(v15 + 4 * (v12 + v18++)) = v20 / v14;
            v19 += v14;
          }

          while (v18 < v16 / v14);
        }

        ++v12;
      }

      while (v12 != 1);
    }

    *(v8 + 408) = 0;
    if (v10)
    {
      v23 = 0;
      v24 = (*(v8 + 384) + 24);
      v25 = v10;
      do
      {
        v23 += *v24;
        v24 += 78;
        --v25;
      }

      while (v25);
      *(v8 + 408) = v23;
    }

    if (v10 < v9)
    {
      v26 = 0;
      v27 = a2 + 4 * v11;
      v28 = 312 * v10;
      do
      {
        if (v10 >= *v13)
        {
          v29 = *(a1 + 204) * 0.08;
        }

        else
        {
          v29 = *(v27 + 4 * v26++);
        }

        v30 = *(v8 + 384);
        if (v29 < 0.0)
        {
          v29 = 0.0;
        }

        v31 = v29 * 1000.0;
        v32 = v31 / *(*(a1 + 184) + 24);
        *(v30 + v28 + 32) = v31;
        UNICORN__log_select_Diag(*(a1 + 48), 11, "%d duration scale (%f)\n");
        v33 = *(a1 + 212);
        v34 = *(a1 + 48);
        v35 = *(a1 + 168);
        v36 = v30 + v28;
        if (v33 == 2)
        {
          UNICORN__UniformStateDuration(v32, v34, v36, v35);
        }

        else if (v33 == 1)
        {
          UNICORN__MaxLLStateDuration(v34, v36, v35, &v39, v32);
        }

        else
        {
          UNICORN__StateDuration(v32, v34, v36, v35);
        }

        *(v8 + 408) += *(v30 + v28 + 24);
        ++v10;
        v28 += 312;
      }

      while (v10 < *(a1 + 200));
    }

    v37 = 0;
  }

  else
  {
    UNICORN__log_select_Diag(*(a1 + 48), 0, "UnicornPredict_CopyOutputToDURStream: nPhonemes=%d, nStates=%d, _timesteps=%d, _dim=%d\n");
    v37 = 2229280775;
  }

  UNICORN__log_select_Diag(*(a1 + 48), 10, "-%s_CopyOutputToDurStream_Phoneme\n");
  return v37;
}

uint64_t UnicornPredict_CopyOutputToSDURStream(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 176);
  UNICORN__log_select_Diag(*(a1 + 48), 10, "+%s_CopyOutputToDurStream\n");
  v42 = v8;
  *(v8 + 408) = 0;
  v9 = *(a1 + 200);
  v10 = *(a1 + 204);
  v11 = v9 >= a3 && v10 == a4;
  v12 = a4;
  if (v11 || a4 == 1 && (v12 = *(a1 + 204), v10 * v9 >= a3))
  {
    v13 = *(a1 + 244);
    v14 = *(a1 + 248);
    if (*(*(a1 + 216) + 5984))
    {
      v12 = 1;
    }

    v15 = v42;
    if (v14)
    {
      v16 = 0;
      v17 = (*(v42 + 384) + 24);
      v18 = *(a1 + 248);
      do
      {
        v16 += *v17;
        v17 += 78;
        --v18;
      }

      while (v18);
      *(v42 + 408) = v16;
    }

    if (v14 >= v9)
    {
      v40 = 0;
    }

    else
    {
      v19 = 0;
      v43 = a2 + 4 * ((v14 - v13) * a4 * v12);
      do
      {
        v20 = (*(v15 + 384) + 312 * v14);
        v20[6] = 0;
        if ((*(a1 + 204) - 1) > 0xFFFFFFFC)
        {
          v24 = 0;
        }

        else
        {
          v21 = 2;
          do
          {
            if (v14 >= *(a1 + 256))
            {
              v22 = 0.08;
            }

            else
            {
              v22 = *(v43 + 4 * v19++);
            }

            if (v22 < 0.0)
            {
              v22 = 0.0;
            }

            if ((((1000.0 / *(*(a1 + 184) + 24)) * v22) + 0.5) <= 1)
            {
              v23 = 1;
            }

            else
            {
              v23 = (((1000.0 / *(*(a1 + 184) + 24)) * v22) + 0.5);
            }

            UNICORN__log_select_Diag(*(a1 + 48), 11, "ANN sdur %d (HMM %d)\n");
            UNICORN__log_select_Diag(*(a1 + 48), 11, "%d %d %d\n");
            *(*(v20 + 2) + 4 * v21) = v23;
            v24 = v20[6] + v23;
            v20[6] = v24;
            ++v21;
          }

          while (v21 < (*(a1 + 204) + 2));
          v15 = v42;
        }

        if (v14 < *(a1 + 256))
        {
          v25 = *(a1 + 192);
          LODWORD(v26) = *v25;
          if ((*v25 - 4) >= 0xFFFFFFFE)
          {
            v27 = *(*(a1 + 176) + 8);
            v28 = *v20;
            if (*(*(v27 + 32) + v28) == 1)
            {
              v29 = *(*(v27 + 1784) + 2 * v28);
              if (v29)
              {
                v30 = *(a1 + 184);
                if ((v29 / *(v30 + 24)) <= 1)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = v29 / *(v30 + 24);
                }

                v20[6] = 0;
                v32 = *(v20 + 2);
                if (v31 <= v26)
                {
                  v38 = (v32 + 8);
                  v39 = 1;
                  do
                  {
                    *v38++ = 1;
                    v24 = v20[6] + 1;
                    v20[6] = v24;
                    ++v39;
                  }

                  while (v39 <= *v25);
                }

                else
                {
                  v24 = 0;
                  v33 = (v32 + 8);
                  v34 = (v32 + 8);
                  v35 = 1;
                  do
                  {
                    v36 = *v34;
                    if (*v34 <= 0)
                    {
                      v36 = 1;
                      *v34 = 1;
                      v24 = v20[6];
                      LODWORD(v26) = *v25;
                    }

                    v24 += v36;
                    v20[6] = v24;
                    ++v35;
                    ++v34;
                  }

                  while (v35 <= v26);
                  if (v31 < v24)
                  {
                    if (v26 >= 1)
                    {
                      v37 = 1;
                      do
                      {
                        *v33++ = 1;
                        v26 = *v25;
                        ++v37;
                      }

                      while (v37 <= v26);
                    }

                    v20[6] = v26;
                    v24 = v26;
                  }

                  if (v31 >= v24)
                  {
                    *(v32 + 12) += v31 - v24;
                    v20[6] = v31;
                    v24 = v31;
                  }
                }

                *(v20 + 8) = v24 * *(v30 + 24);
              }
            }
          }
        }

        *(v15 + 408) += v24;
        ++v14;
      }

      while (v14 < *(a1 + 200));
      v40 = 0;
    }
  }

  else
  {
    UNICORN__log_select_Diag(*(a1 + 48), 0, "UnicornPredict_CopyOutputToSDURStream: nPhonemes=%d, nStates=%d, _timesteps=%d, _dim=%d\n");
    v40 = 2229280775;
  }

  UNICORN__log_select_Diag(*(a1 + 48), 10, "-%s_CopyOutputToDurStream\n");
  return v40;
}

uint64_t UnicornPredict_CopyOutputToVUVStream(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 176);
  UNICORN__log_select_Diag(*(a1 + 48), 10, "+%s_CopyOutputToVUVStream\n");
  v9 = *(a1 + 200);
  v10 = *(a1 + 204);
  v11 = v9 >= a3 && v10 == a4;
  v12 = a4;
  if (v11 || a4 == 1 && (v12 = *(a1 + 204), v10 * v9 >= a3))
  {
    v13 = *(a1 + 248);
    if (*(*(a1 + 216) + 5984))
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }

    v15 = *(*(a1 + 176) + 32);
    if (v15 < 1)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      while (*(*(a1 + 184) + 184 + 4 * v16) != 2)
      {
        if (v15 == ++v16)
        {
          LODWORD(v16) = *(*(a1 + 176) + 32);
          break;
        }
      }

      v17 = v16;
    }

    if (v13 >= v9)
    {
      v30 = 0;
    }

    else
    {
      v18 = 0;
      v19 = a2 + 4 * ((v13 - *(a1 + 244)) * a4 * v14);
      do
      {
        if ((v12 - 1) <= 0xFFFFFFFC)
        {
          v20 = *(v8 + 384) + 312 * v13;
          v21 = 2;
          do
          {
            v22 = 0.0;
            if (v13 < *(a1 + 256))
            {
              v22 = *(v19 + 4 * v18++);
            }

            if (v22 < 0.0)
            {
              v22 = 0.0;
            }

            v23 = *(v20 + 176);
            v24 = *(v23 + v21);
            if (v22 > 1.0)
            {
              v22 = 1.0;
            }

            v25 = *(a1 + 184) + 4 * v17;
            v26 = *(v25 + 1128);
            v27 = 1 << *(v25 + 184);
            v28 = v24 & ~v27;
            v29 = v24 | v27;
            if (v22 <= v26)
            {
              v29 = v28;
            }

            *(v23 + v21) = v29;
            UNICORN__log_select_Diag(*(a1 + 48), 11, "%d: vuv %f %d (HMM %d)\n");
            ++v21;
            v12 = *(a1 + 204);
          }

          while (v21 < (v12 + 2));
          v9 = *(a1 + 200);
        }

        ++v13;
      }

      while (v13 < v9);
      v30 = 0;
    }
  }

  else
  {
    UNICORN__log_select_Diag(*(a1 + 48), 0, "UnicornPredict_CopyOutputToVUVStream: nPhonemes=%d, nStates=%d, _timesteps=%d, _dim=%d\n");
    v30 = 2229280775;
  }

  UNICORN__log_select_Diag(*(a1 + 48), 10, "-%s_CopyOutputToVUVStream\n");
  return v30;
}

uint64_t UnicornPredict_CopyOutputToELF0Stream(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  UNICORN__log_select_Diag(*(a1 + 48), 10, "+%s_CopyOutputToELF0Stream\n");
  v9 = *(a1 + 200);
  v8 = *(a1 + 204);
  v10 = 2 * v8;
  v11 = v9 >= a3 && v10 == a4;
  if (v11 || a4 == 2 && v8 * v9 >= a3)
  {
    v12 = *(a1 + 248);
    if (*(*(a1 + 216) + 5984))
    {
      v13 = 1;
    }

    else
    {
      v13 = *(a1 + 204);
    }

    if (v12)
    {
      v14 = vdupq_n_s32(v12 - 1);
      v15 = vdupq_n_s32(v10);
      v16 = 0uLL;
      v17 = 4;
      do
      {
        v18 = v16;
        v16 = vaddq_s32(v15, v16);
        v17 -= 4;
      }

      while (((v12 + 3) & 0xFFFFFFFC) + v17 != 4);
      v19 = vaddvq_s32(vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v17), xmmword_26ECCEBC0), v14), v18, v16));
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 256);
    if (v12 < v20)
    {
      v21 = 0;
      v22 = *(a1 + 288);
      v29 = *(a1 + 304);
      v23 = a2 + 4 * (v12 - *(a1 + 244)) * a4 * v13;
      v24 = *(a1 + 204);
      do
      {
        if (v24)
        {
          v25 = 0;
          do
          {
            *(v22 + 4 * v19) = *(v23 + 4 * v21);
            v26 = v19;
            *(v22 + 4 * (v19 + 1)) = *(v23 + 4 * (v21 + 1));
            if (v19)
            {
              v27 = mfs_QuantizeLF0Frame(*(a1 + 216), *(v22 + 4 * (v19 - 1)));
              *(v29 + 4 * (v25 + v12 * *(a1 + 204))) = mfs_QuantizeLF0Frame(*(a1 + 216), *(v22 + 4 * v26)) - v27;
              UNICORN__log_select_Diag(*(a1 + 48), 11, "@t_(%d) L(%f,%d) - R(%f,%d) = d(%d)\n");
              v8 = *(a1 + 204);
            }

            v19 = v26 + 2;
            ++v25;
            v21 += 2;
          }

          while (v25 < v8);
          v20 = *(a1 + 256);
          v24 = v8;
        }

        ++v12;
      }

      while (v12 < v20);
    }

    UNICORN__log_select_Diag(*(a1 + 48), 10, "-%s_CopyOutputToELF0Stream\n");
    return 0;
  }

  else
  {
    UNICORN__log_select_Diag(*(a1 + 48), 0, "UnicornPredict_CopyOutputToELF0Stream: nPhonemes=%d, nStates=%d, _timesteps=%d, _dim=%d\n");
    return 2229280775;
  }
}

void AdjustDurationForTuning(int *a1, unsigned int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v7 = a4 - 4;
  v8 = a2 / (a4 - 4);
  if (a2 % (a4 - 4))
  {
    v9 = a2;
    do
    {
      v10 = *a1++;
      *a5++ = v10;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = 0;
    v12 = *(a3 + 4 * v7);
    v13 = *(a3 + 4 * (a4 - 3));
    v14 = *(a3 + 4 * (a4 - 1));
    if (v7 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = a4 - 4;
    }

    v27 = a2;
    v25 = v15;
    do
    {
      if (v7 <= a2)
      {
        v17 = 0;
        v16 = v11 + 1;
        v28 = v11 * v8;
        do
        {
          v18 = exp((v12 + (*&a1[(v28 + v17)] * v13)));
          if (v16 < v7 && v8 - 1 == v17)
          {
            v20 = v11 + 1;
          }

          else
          {
            v20 = v11;
          }

          if (v17)
          {
            v21 = 1;
          }

          else
          {
            v21 = v11 == 0;
          }

          v22 = v18;
          if (!v21)
          {
            v20 = v11 - 1;
          }

          v23 = v22 + (v14 * *(a3 + 4 * v20));
          if (v23 < 0.008)
          {
            v23 = 0.008;
          }

          v24 = log(v23);
          *&a5[(v28 + v17++)] = (v24 - v12) / v13;
        }

        while (v17 < v8);
        a2 = v27;
        v15 = v25;
      }

      else
      {
        v16 = v11 + 1;
      }

      v11 = v16;
    }

    while (v16 != v15);
  }
}

uint64_t UnicornPipeline_Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 2229280778;
  *a1 = a2;
  *(a1 + 8) = a3;
  v7 = PredictPipeline_Create(a2, a3, a4);
  *(a1 + 40) = v7;
  if (v7)
  {
    v8 = heap_Calloc(*(a2 + 8), 1, 1984);
    *(a1 + 16) = v8;
    if (v8)
    {
      v9 = UnicornSearch_Create(a2);
      *(a1 + 48) = v9;
      if (v9)
      {
        v10 = *(a1 + 8);
        if (v10 && (v11 = *(v10 + 568)) != 0)
        {
          v12 = *(v11 + 5928) > 1u || *(v11 + 5932) != -1;
          v6 = 0;
          *(a1 + 180) = v12;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v6;
}

uint64_t UnicornPipeline_SetForcedEEEnabled(uint64_t a1, int a2)
{
  v2 = 2229281037;
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = *(v3 + 568);
      if (v4)
      {
        if (a2)
        {
          v5 = *(v4 + 5928) > 1u || *(v4 + 5932) != -1;
        }

        else
        {
          v5 = 0;
        }

        v2 = 0;
        *(a1 + 180) = v5;
      }
    }
  }

  return v2;
}

uint64_t UnicornPipeline_Destroy(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    UnicornSearch_Destroy(v2);
    a1[6] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
  }

  a1[2] = 0;
  v4 = a1[5];
  if (!v4)
  {
    return 2229280774;
  }

  return PredictPipeline_Destroy(v4);
}

uint64_t UnicornPipeline_Init(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *a1;
  v14 = *(v12 + 568);
  inited = UNICORN__mfs_InitStream(*a1, v11, v14);
  if ((inited & 0x80000000) != 0)
  {
    v26 = inited;
    v27 = "mfs_InitStream() failed";
LABEL_11:
    UNICORN__log_select_Error(v13, v26, v27, v16, v17, v18, v19, v20);
    return v26;
  }

  Stream = UNICORN__mfs_LoadStream(v11, v12, v14, a5, a6);
  if ((Stream & 0x80000000) != 0)
  {
    v26 = Stream;
    v27 = "mfs_LoadStream() failed";
    goto LABEL_11;
  }

  *(v11 + 1768) = a4;
  UNICORN__log_select_Diag(v13, 2, ">> loading vstream done\n");
  *(v11 + 1980) = *(a1 + 192);
  *(v11 + 8) = a2;
  *(v11 + 1832) = *a3;
  *(v11 + 1760) = *(a1 + 40);
  v22 = UNICORN__mfs_ParamGenStart(v11, v12, v14);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v23 = *(v11 + 392);
  v24 = v23 * *v12;
  *(a1 + 144) = *v12;
  *(a1 + 148) = v24;
  *(a1 + 152) = v23;
  *(v11 + 1080) = v24;
  v22 = Install_DynamicBeams_Unicorn(v14, v12, v11, v24);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v22 = TransWeights_InitCopy(v14, v12, v11, *(a1 + 148));
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  if (!*(*(v12 + 568) + 11520))
  {
    *(v11 + 1800) = 0;
    goto LABEL_13;
  }

  v25 = heap_Calloc(*(v13 + 8), *(a1 + 148), 40);
  *(v11 + 1800) = v25;
  if (v25)
  {
LABEL_13:
    v30 = v11;
    v31 = v12;
    v32 = v14;
    v22 = (**(a1 + 48))();
    if ((v22 & 0x80000000) == 0)
    {
      v22 = ViterbiEE_Init(a1 + 56, v11, v14, v12);
      if ((v22 & 0x80000000) == 0)
      {
        *(a1 + 184) = 0;
        *(a1 + 156) = 0;
        *(a1 + 172) = 0;
        *(a1 + 164) = 0;
        return BET5_GenericRules_ParamActions_AllocMemoryAndInit(v14, v12, v11);
      }
    }

    return v22;
  }

  return 2229280778;
}

uint64_t UnicornPipeline_Release(uint64_t *a1)
{
  ViterbiEE_Release((a1 + 7));
  v2 = a1[6];
  if (v2)
  {
    v3 = (*(v2 + 40))();
    if ((v3 & 0x80000000) != 0)
    {
      UNICORN__log_select_Diag(*a1, 0, "SearchPipeline, Error, self->Close\n");
      return 2229280778;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[23];
  if (v4)
  {
    UNICORN__Psola_Deinitialise(*a1, v4);
    a1[23] = 0;
    v5 = a1[2];
  }

  else
  {
    v5 = a1[2];
    if (v5)
    {
      v7 = v5[225];
      if (v7)
      {
        heap_Free(*(*a1 + 8), v7);
        v5 = a1[2];
        v5[225] = 0;
      }
    }
  }

  BET5_GenericRules_ParamActions_FreeMemory(v5);
  UNICORN__mfs_DeInitStream(a1[2]);
  return v3;
}

uint64_t UnicornPipeline_ProcessPhoneme(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = UNICORN__mfs_ParamGenContinue(*(a1 + 16), *(a1 + 8), *(*(a1 + 8) + 568));
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1 + 160);
    if (v5 >= *(a1 + 152))
    {
      v15 = 0;
      goto LABEL_26;
    }

    v4 = (*(*(a1 + 48) + 8))();
    if ((v4 & 0x80000000) == 0)
    {
      v4 = (*(*(a1 + 48) + 24))();
      if ((v4 & 0x80000000) == 0)
      {
        v4 = (*(*(a1 + 48) + 32))();
        if ((v4 & 0x80000000) == 0)
        {
          v6 = *(a1 + 16);
          v19 = 0;
          v18 = 0;
          UNICORN__mfs_Ling_GetPhonCtxt(v6[1], *(a1 + 160), &v18);
          if (*(a1 + 144) >= 1)
          {
            v7 = 0;
            v8 = *(a1 + 156);
            v9 = HIBYTE(v18);
            do
            {
              v10 = *(*(*(a1 + 8) + 568) + 11548);
              UNICORN__log_select_Diag(*a1, 12, "Decoder at state idx %d\n");
              v11 = v6[138];
              if (!*(v11 + 32 * v8 + 16))
              {
                v4 = UNICORN__mfs_CostList_Add(0.0, *(a1 + 8), v6 + 136, v8, v10);
                if ((v4 & 0x80000000) != 0)
                {
                  return v4;
                }

                v11 = v6[138];
              }

              v12 = *(a1 + 144) == 2 && v9 == 1;
              v13 = v12 && v7 == 0;
              v14 = v13;
              v4 = ViterbiEE_Decode(a1 + 56, v11 + 32 * v8, v14);
              if ((v4 & 0x80000000) != 0)
              {
                return v4;
              }

              mfs_CostList_FreeAt(v6 + 136, v8);
              v8 = *(a1 + 156) + 1;
              *(a1 + 156) = v8;
            }

            while (++v7 < *(a1 + 144));
          }

          v15 = UnicornPipeline_PrepareEmissionIfPossible(a1, 0);
          v5 = *(a1 + 160) + 1;
          *(a1 + 160) = v5;
          if ((v15 & 0x80000000) != 0)
          {
            return v15;
          }

LABEL_26:
          v16 = *(a1 + 164) - *(a1 + 168);
          if (v16)
          {
            v15 = UnicornPipeline_PrepareSynth(a1, v16);
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            UNICORN__log_select_Diag(*a1, 1, "Prepared: %d units\n");
            v5 = *(a1 + 160);
          }

          *a2 = v5 >= *(a1 + 152);
          return v15;
        }
      }
    }
  }

  return v4;
}

uint64_t UnicornPipeline_PrepareSynth(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 168);
  v5 = a2 + 1;
  do
  {
    if (*(*(*(a1 + 8) + 568) + 11520))
    {
      result = mfs_Psola_CalculateAdjustments_ByOne(*(a1 + 8), *(a1 + 16), *(*(a1 + 16) + 1800), v4, *(a1 + 148), (a1 + 172));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v4 = *(a1 + 168);
    }

    *(a1 + 168) = ++v4;
    --v5;
  }

  while (v5 > 1);
  return result;
}

uint64_t UnicornPipeline_GetAvailableDuration(uint64_t result)
{
  v2 = *(result + 172);
  v1 = *(result + 176);
  if (v1 >= v2)
  {
    return 0;
  }

  v3 = result;
  LODWORD(result) = 0;
  v4 = (*(*(v3 + 16) + 1800) + 40 * v1 + 8);
  v5 = v2 - v1;
  do
  {
    v6 = *v4;
    v4 += 10;
    result = (v6 + result);
    --v5;
  }

  while (v5);
  return result;
}

BOOL UnicornPipeline_GetForcedEEEnabled(_BOOL8 result)
{
  if (result)
  {
    return *(result + 180) != 0;
  }

  return result;
}

uint64_t UnicornPipeline_PrepareEmissionIfPossible(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 16);
  if (a2)
  {
    *a2 = 0;
  }

  if (*(a1 + 160) + 1 == *(a1 + 152))
  {
    UniquePathLength = *(a1 + 148) - *(a1 + 164);
    if (!UniquePathLength)
    {
      return 0;
    }
  }

  else
  {
    UniquePathLength = ViterbiEE_GetUniquePathLength(a1 + 56, *(a1 + 164));
    if (!UniquePathLength)
    {
      if (!*(a1 + 180))
      {
        return 0;
      }

      UniquePathLength = ViterbiForcedEE_GetPathLength(a1 + 56, *(a1 + 164));
      if (!UniquePathLength)
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + 164);
  v7 = v6 + UniquePathLength;
  result = ViterbiEE_Backtrack(a1 + 56, v6, v6 + UniquePathLength, *(v4 + 8), v4 + 1448, v4 + 1472, v4 + 1496);
  if ((result & 0x80000000) == 0)
  {
    UNICORN__log_select_Diag(*a1, 1, "Emitted: %d (+%d) units (%d decoded, debt %d)\n");
    if (*(a1 + 180))
    {
      ViterbiForcedEE_KillPaths(a1 + 56, v7 - 1, *(a1 + 156) - 1, v4 + 1448);
    }

    result = mfs_UnitSequence_SequencePartial(*(*(*(a1 + 16) + 8) + 32), v4 + 1400, v4 + 1552, v6, v6 + UniquePathLength);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 164) = v7;
      if (a2)
      {
        *a2 = 1;
      }
    }
  }

  return result;
}

uint64_t UnicornPipeline_SetSIMDCallbacks(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    ViterbiEE_EnableSIMD(result + 56, a2);
    v3 = *(*(v2 + 48) + 48);

    return v3();
  }

  return result;
}

uint64_t UNICORN__mfs_SegmentList_Init(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = 0;
  return 0;
}

uint64_t mfs_SegmentList_InitPrealloc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = heap_Alloc(*(a1 + 8), 28 * a3);
  *(a4 + 16) = v6;
  if (!v6)
  {
    return 2229280778;
  }

  result = 0;
  *(a4 + 24) = 0;
  *(a4 + 28) = a3;
  return result;
}

void *UNICORN__mfs_SegmentList_DeInit(void *result)
{
  v1 = result;
  if (result[1])
  {
    result = heap_Free(*(*result + 8), result[2]);
    v1[2] = 0;
  }

  v1[3] = 0;
  return result;
}

uint64_t UNICORN__mfs_SegmentList_Add(uint64_t a1, int a2, char a3, int a4, int a5)
{
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    v11 = heap_Realloc(*(*a1 + 8), *(a1 + 16), 28 * (v10 + 1));
    if (!v11)
    {
      return 2229280778;
    }

    *(a1 + 16) = v11;
    v10 = *(a1 + 24);
    v12 = v10 + 1;
    *(a1 + 28) = v10 + 1;
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = v10 + 1;
  }

  v13 = 0;
  v14 = v11 + 28 * v10;
  *v14 = a2;
  *(v14 + 4) = a3;
  *(v14 + 8) = a4;
  *(v14 + 12) = a5;
  *(v14 + 16) = 1;
  *(a1 + 24) = v12;
  return v13;
}

uint64_t UNICORN__mfs_SegmentList_Length(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t UNICORN__mfs_SegmentList_Get(uint64_t a1, unsigned int a2, _DWORD *a3, _BYTE *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  if (a1 && *(a1 + 24) > a2)
  {
    result = 0;
    v10 = *(a1 + 16) + 28 * a2;
    *a3 = *v10;
    *a4 = *(v10 + 4);
    v11 = (*(a1 + 16) + 28 * a2);
    *a5 = v11[2];
    *a6 = v11[3];
    *a7 = v11[5];
    *a8 = v11[6];
  }

  else
  {
    *a3 = 0;
    *a4 = 0;
    *a6 = 0;
    result = 2229280775;
    *a5 = 0;
  }

  return result;
}

uint64_t SearchPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1072);
  v10[1] = a2;
  v10[2] = a3;
  v10[0] = a1;
  v4 = UnicornSearch_Create(v3);
  if (!v4)
  {
    v7 = 2229280778;
    v8 = "SearchPipeline, Error, UnicornSearch_Create\n";
LABEL_10:
    UNICORN__log_select_Diag(v3, 0, v8);
    return v7;
  }

  v5 = v4;
  if (((*v4)(v4, v10) & 0x80000000) != 0)
  {
    v7 = 2229280778;
    v8 = "SearchPipeline, Error, self->Open\n";
    goto LABEL_10;
  }

  (v5[6])(v5, 1);
  if (((v5[2])(v5) & 0x80000000) != 0)
  {
    v7 = 2229280778;
    v8 = "SearchPipeline, Error, self->Process\n";
    goto LABEL_10;
  }

  v6 = (v5[5])(v5);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 2229280778;
    v8 = "SearchPipeline, Error, self->Close\n";
    goto LABEL_10;
  }

  v7 = v6;
  UnicornSearch_Destroy(v5);
  return v7;
}

uint64_t UnicornPipelineMT_Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  v7 = (a1 + 208);
  result = critsec_ObjOpen(*(a2 + 16), *(a2 + 8), (a1 + 208));
  if ((result & 0x80000000) == 0)
  {
    if (result)
    {
      critsec_ObjClose(*v7);

      return UnicornPipeline_Destroy((a1 + 8));
    }

    else
    {
      *(a1 + 216) = 0;
      result = UnicornPipeline_Create(a1 + 8, *a1, a3, a4);
      *(a1 + 200) = 1;
    }
  }

  return result;
}

uint64_t UnicornPipelineMT_Destroy(uint64_t a1)
{
  critsec_ObjClose(*(a1 + 208));

  return UnicornPipeline_Destroy((a1 + 8));
}

uint64_t UnicornPipelineMT_Release(uint64_t a1)
{
  if (!*(a1 + 216))
  {
    goto LABEL_6;
  }

  critsec_Enter(*(a1 + 208));
  if (*(a1 + 172) < *(a1 + 156))
  {
    *(a1 + 220) = 1;
  }

  critsec_Leave(*(a1 + 208));
  thread_Join(*(a1 + 232));
  thread_ObjClose(*(a1 + 232));
  *(a1 + 232) = 0;
  v2 = semaphore_ObjectClose(*(a1 + 224));
  *(a1 + 216) = 0;
  if (v2)
  {
    v3 = v2;
    UnicornPipeline_Release((a1 + 8));
    return v3 | 0x84E02000;
  }

  else
  {
LABEL_6:

    return UnicornPipeline_Release((a1 + 8));
  }
}

uint64_t UnicornPipelineMT_ProcessPhoneme(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 216) != 1)
  {
    v8 = semaphore_ObjectOpen(*(*a1 + 408), *(*a1 + 8), 0, 0x7FFFLL, (a1 + 224));
    if (v8 < 0)
    {
      return v8 | 0x84E02000;
    }

    v8 = thread_ObjOpen(*(*a1 + 408), *(*a1 + 8), (a1 + 232));
    if (v8 < 0)
    {
      return v8 | 0x84E02000;
    }

    v8 = thread_Start(*(a1 + 232));
    if (v8)
    {
      return v8 | 0x84E02000;
    }

    *(a1 + 216) = 1;
  }

  v19 = 0;
  v4 = *(a1 + 168);
  if (v4 >= *(a1 + 160) || *(a1 + 220))
  {
    v5 = 0;
LABEL_5:
    v6 = *(a1 + 172);
    v7 = *(a1 + 176);
    if (v6 == v7)
    {
      goto LABEL_8;
    }

    v5 = UnicornPipeline_PrepareSynth(a1 + 8, v6 - v7);
    if ((v5 & 0x80000000) == 0)
    {
      UNICORN__log_select_Diag(*a1, 1, "Prepared: %d units\n");
      v6 = *(a1 + 172);
LABEL_8:
      *a2 = v6 >= *(a1 + 156);
    }
  }

  else
  {
    while (1)
    {
      v21 = 0;
      v20 = 0;
      UNICORN__mfs_Ling_GetPhonCtxt(*(*(a1 + 24) + 8), v4, &v20);
      v10 = *(a1 + 152);
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = HIBYTE(v20);
        while (!*(a1 + 220))
        {
          v13 = *(a1 + 168);
          v8 = semaphore_Acquire(*(a1 + 224));
          if (v8)
          {
            return v8 | 0x84E02000;
          }

          v14 = v11 + v13 * v10;
          v17 = *(a1 + 152) == 2 && v12 == 1 && v11 == 0;
          v18 = ViterbiEE_Decode(a1 + 64, *(*(a1 + 24) + 1104) + 32 * v14, v17);
          if (v18)
          {
            v5 = v18;
            if ((v18 & 0x80000000) != 0)
            {
              return v5;
            }

            break;
          }

          mfs_CostList_FreeAt((*(a1 + 24) + 1088), v14);
          ++*(a1 + 164);
          ++v11;
          v10 = *(a1 + 152);
          if (v11 >= v10)
          {
            break;
          }
        }
      }

      v5 = UnicornPipeline_PrepareEmissionIfPossible(a1 + 8, &v19);
      if ((v5 & 0x80000000) != 0)
      {
        break;
      }

      v4 = *(a1 + 168) + 1;
      *(a1 + 168) = v4;
      if (v4 >= *(a1 + 160) || *(a1 + 220) | v19)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

uint64_t UnicornPipelineMT_locSearch(uint64_t a1)
{
  if (*(a1 + 160) >= 1)
  {
    v2 = 0;
    v3 = *(a1 + 24);
    while (!*(a1 + 220))
    {
      if ((UNICORN__mfs_ParamGenContinue(v3, *(a1 + 16), *(*(a1 + 16) + 568)) & 0x80000000) != 0 || ((*(*(a1 + 56) + 8))() & 0x80000000) != 0 || ((*(*(a1 + 56) + 24))() & 0x80000000) != 0 || ((*(*(a1 + 56) + 32))() & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      v4 = *(a1 + 152);
      if (v4 >= 1)
      {
        v5 = 0;
        while (1)
        {
          v6 = v2 * v4;
          if (!*(*(v3 + 1104) + 32 * (v5 + v6) + 16) && (UNICORN__mfs_CostList_Add(0.0, *(a1 + 16), (v3 + 1088), v5 + v6, *(*(*(a1 + 16) + 568) + 11548)) & 0x80000000) != 0)
          {
            break;
          }

          if ((semaphore_Release(*(a1 + 224)) & 0x80000000) != 0)
          {
            break;
          }

          v4 = *(a1 + 152);
          if (++v5 >= v4)
          {
            goto LABEL_14;
          }
        }

LABEL_16:
        *(a1 + 220) = 1;
        break;
      }

LABEL_14:
      if (++v2 >= *(a1 + 160))
      {
        break;
      }
    }
  }

  semaphore_Release(*(a1 + 224));
  return 0;
}

uint64_t UNICORN__mfs_FSM_Load(uint64_t a1, uint64_t a2)
{
  result = 2229280772;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *v4;
    *a1 = *v4;
    if (v5 >= 5)
    {
      v8 = v4[1];
      *(a1 + 4) = v8;
      if (v5 >= 9)
      {
        v9 = v4[2];
        *(a1 + 8) = v9;
        if (v5 >= 0xD)
        {
          v10 = v4 + v5;
          v11 = v4 + 3;
          *(a1 + 16) = v11;
          v12 = &v11[2 * (v7 + 1)];
          if (v12 < v10)
          {
            *(a1 + 24) = v12;
            v13 = &v12[8 * v8];
            if (v13 < v10)
            {
              *(a1 + 32) = v13;
              if ((v13 + 12 * v9) == v10)
              {
                return 0;
              }

              else
              {
                return 2229280772;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t UNICORN__mfs_Version_Retrieve(uint64_t a1, _BYTE *a2)
{
  *(a1 + 64) = a2;
  v2 = 86;
  v3 = &byte_26ED7CD29;
  v4 = "vljpollet";
  do
  {
    *a2++ = *v4 ^ v2;
    if (!*++v4)
    {
      v4 = "vljpollet";
    }

    v6 = *v3++;
    v2 = v6;
  }

  while (v6);
  *(a2 - 1) = 0;
  return __sprintf_chk(a1, 0, 0x40uLL, "%d.%02d %s", 1, 0, "Unicorn");
}

void *Allocate_EQ_SYM5DIAG(uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  v4 = malloc(20 * a2);
  *(a1 + 8) = v4;
  result = malloc(8 * a2);
  *(a1 + 16) = result;
  if (a2)
  {
    v6 = 0;
    do
    {
      *(*(a1 + 16) + v6) = v4;
      v4 += 12;
      v6 += 8;
    }

    while (8 * a2 != v6);
  }

  *(a1 + 24) = v4;
  *(a1 + 32) = &v4[4 * a2];
  return result;
}

double Deallocate_EQ_SYM5DIAG(uint64_t a1)
{
  free(*(a1 + 8));
  free(*(a1 + 16));
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

float EQ_SYM5DIAG_LU_decomposition(unsigned int *a1, double a2)
{
  v2 = *(a1 + 2);
  v4 = *v2;
  v3 = *(v2 + 8);
  LODWORD(a2) = **v2;
  v5 = vdiv_f32(*(*v2 + 4), vdup_lane_s32(*&a2, 0));
  *(v4 + 1) = v5;
  v6 = v3[1];
  *&a2 = *v3 + ((-v5.f32[0] * v5.f32[0]) * *&a2);
  *v3 = *&a2;
  v7 = (v6 + (-(*(v4 + 1) * *(v4 + 2)) * *v4)) / *&a2;
  v8 = v3[2] / *&a2;
  v3[1] = v7;
  v3[2] = v8;
  v9 = *a1;
  if (v9 >= 3)
  {
    v10 = (v2 + 16);
    v11 = v9 - 2;
    do
    {
      v12 = *v10;
      v13 = (*v10)[1];
      v14 = **v10 + (-(v7 * v7) * *&a2);
      *v12 = v14;
      *&a2 = v14 + (-((*(v10 - 2))[2] * (*(v10 - 2))[2]) * **(v10 - 2));
      *v12 = *&a2;
      v7 = (v13 + (-(v3[1] * v3[2]) * *v3)) / *&a2;
      v15 = v12[2] / *&a2;
      v12[1] = v7;
      v12[2] = v15;
      ++v10;
      v3 = v12;
      --v11;
    }

    while (v11);
  }

  return *&a2;
}

float *solve_LU_EQ_SYM5DIAG(void *a1, float *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = *v2;
  *v4 = *v2;
  v6 = *v3;
  v7 = v2[1] - (*(*v3 + 4) * v5);
  v4[1] = v7;
  v8 = *a1;
  if (v8 >= 3)
  {
    v9 = v4 + 2;
    v10 = v3 + 1;
    v11 = v2 + 2;
    v12 = v8 - 2;
    do
    {
      v13 = *v11++;
      v14 = v13;
      v15 = *(v6 + 8);
      v16 = *v10++;
      v6 = v16;
      v7 = v14 - ((v15 * *(v9 - 2)) + (*(v16 + 4) * v7));
      *v9++ = v7;
      --v12;
    }

    while (v12);
  }

  if (a2 || (a2 = malloc(4 * v8)) != 0)
  {
    v17 = v4[v8 - 1] / *v3[v8 - 1];
    a2[v8 - 1] = v17;
    v18 = v3[v8 - 2];
    a2[v8 - 2] = (v4[v8 - 2] / *v18) - (v18[1] * v17);
    if (v8 >= 3)
    {
      v19 = 4 * (v8 - 3) + 4;
      v20 = &v3[(v8 - 3)];
      v21 = &v4[(v8 - 3)];
      do
      {
        v22 = *v21--;
        v23 = v22;
        v24 = *v20--;
        *(a2 + v19 - 4) = ((v23 / *v24) - (v24[1] * *(a2 + v19))) - (v24[2] * *(a2 + v19 + 4));
        v19 -= 4;
      }

      while (v19);
    }
  }

  return a2;
}

float *solve_EQ_SYM5DIAG(unsigned int *a1, float *a2, double a3)
{
  EQ_SYM5DIAG_LU_decomposition(a1, a3);

  return solve_LU_EQ_SYM5DIAG(a1, a2);
}

uint64_t UNICORN__mfs_CostList_CompareNodesScore_faster(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  v4 = v2 > v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t UNICORN__mfs_CostList_Init(uint64_t a1, uint64_t a2, unsigned int *__b, unsigned int a4, int a5)
{
  v36[3] = *MEMORY[0x277D85DE8];
  v10 = 2229280778;
  cstdlib_memset(__b, 0, 0xE8uLL);
  result = 2229280774;
  if (a1 && a2)
  {
    *__b = a1;
    *(__b + 1) = a2;
    v12 = heap_Calloc(*(a1 + 8), a4, 32);
    *(__b + 2) = v12;
    if (!v12)
    {
      return 2229280778;
    }

    if (a4)
    {
      v13 = 0;
      do
      {
        v14 = heap_Calloc(*(*__b + 8), 1, 12);
        v15 = *(__b + 2);
        *(v15 + v13) = v14;
        if (!v14)
        {
          return 2229280778;
        }

        v16 = v15 + v13;
        *(v16 + 16) = 0x100000000;
        *(v16 + 24) = a5;
        *(v16 + 28) = 1;
        v13 += 32;
      }

      while (32 * a4 != v13);
    }

    __b[6] = a4;
    if (*(a2 + 1928) == 1)
    {
      v17 = *(__b + 1);
      if (v17[482] != 1)
      {
        return 0;
      }

      v18 = ((*(*(v17 + 71) + 11548) + 1) / *(*(v17 + 71) + 5992) + 31) >> 5;
      __b[14] = -1;
      __b[15] = v18;
      *(__b + 8) = heap_Calloc(*(*__b + 8), v18, 4);
      v19 = heap_Calloc(*(*__b + 8), 4, (*(*(v17 + 71) + 11548) + 101) / *(*(v17 + 71) + 5992));
      *(__b + 9) = v19;
      if (*(__b + 8))
      {
        if (v19)
        {
          __b[8] = -1;
          __b[20] = -1;
          if (*(*(v17 + 71) + 5992) == 1 || (v31 = __b[15], __b[9] = v31, *(__b + 5) = heap_Calloc(*(*__b + 8), v31, 4), v32 = heap_Calloc(*(*__b + 8), 4, (*(*(v17 + 71) + 11548) + 101) / *(*(v17 + 71) + 5992)), *(__b + 6) = v32, *(__b + 5)) && v32 && (v33 = __b[15], __b[21] = v33, *(__b + 11) = heap_Calloc(*(*__b + 8), v33, 4), v34 = heap_Calloc(*(*__b + 8), 4, (*(*(v17 + 71) + 11548) + 101) / *(*(v17 + 71) + 5992)), *(__b + 12) = v34, *(__b + 11)) && v34)
          {
            v20 = ((v17[249] + 31) >> 5) * *v17;
            __b[54] = v20;
            __b[55] = 1;
            v21 = heap_Calloc(*(*__b + 8), v20, 4);
            *(__b + 26) = v21;
            if (v21)
            {
              v22 = *v17;
              if (v22 >= 1)
              {
                v23 = 0;
                v24 = v17[249];
                v25 = (v22 + 3) & 0xFFFFFFFC;
                v26 = vdupq_n_s64(v22 - 1);
                v27 = v36;
                do
                {
                  v28 = vdupq_n_s64(v23);
                  v29 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_26ECC7980)));
                  if (vuzp1_s16(v29, *v26.i8).u8[0])
                  {
                    *(v27 - 2) = v24;
                  }

                  if (vuzp1_s16(v29, *&v26).i8[2])
                  {
                    *(v27 - 1) = v24;
                  }

                  if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_26ECCE810)))).i32[1])
                  {
                    *v27 = v24;
                    v27[1] = v24;
                  }

                  v23 += 4;
                  v27 += 4;
                }

                while (v25 != v23);
              }

              Unicorn_CostListBlock_ResetPointers(__b, v35);
              v30 = heap_Calloc(*(*__b + 8), v17[249], 4);
              *(__b + 13) = v30;
              if (v30)
              {
                return 0;
              }

              else
              {
                return 2229280778;
              }
            }
          }
        }
      }

      return v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Unicorn_CostListBlock_Set(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *v2;
  if ((*v2 - 1) <= 0xFFFFFFFC)
  {
    v4 = *(a2 + 64);
    v5 = *(v2 + 97);
    v6 = (v3 + 2);
    v7 = v10;
    v8 = 2;
    do
    {
      *v7++ = *(*(v5 + 8 * v8) + 40 * *(v4 + 4 * v8) + 4);
      ++v8;
    }

    while (v8 < v6);
  }

  Unicorn_CostListBlock_ResetPointers(a1, v10);
  return 0;
}

char *Unicorn_CostListBlock_ResetPointers(char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 1);
    if (*v2 < 1)
    {
      v8 = 0;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      v5 = result + 176;
      do
      {
        v6 = (*(a2 + 4 * v3) + 31) >> 5;
        *&v5[8 * v3 - 64] = *(result + 26) + 4 * v4;
        *&v5[4 * v3] = v6;
        v4 += v6;
        v7 = v3 + 2;
        ++v3;
      }

      while (v7 <= *v2);
      v8 = 4 * v4;
    }

    return cstdlib_memset(*(result + 26), 0, v8);
  }

  return result;
}