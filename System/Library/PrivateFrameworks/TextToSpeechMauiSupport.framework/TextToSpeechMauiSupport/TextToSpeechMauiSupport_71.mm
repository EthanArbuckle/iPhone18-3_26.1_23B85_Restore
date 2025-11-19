uint64_t precomp_DoInnerLoop_simd_nosylrate_nopitchdeviation(float32x4_t *a1, void *a2, uint64_t *a3, int a4, int a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = *a2 + 24 * a4;
  v50.i32[0] = *v7;
  v50.i32[1] = *(v7 + 24);
  v50.i32[2] = *(v7 + 48);
  v50.i32[3] = *(v7 + 72);
  v48 = v50;
  v49[0] = *(v7 + 4);
  v49[1] = *(v7 + 28);
  v49[2] = *(v7 + 52);
  v49[3] = *(v7 + 76);
  precomp_FetchRightNode(a1, a5, v50.i32, v49, 4);
  v11 = a1[68].i32[0];
  v12 = a1[8].i64[0];
  v13 = a1[8].i64[1];
  v14 = 0uLL;
  v15 = a1[9].i64[0];
  v16 = a1[9].i64[1];
  if (v11)
  {
    v8.i32[0] = *(a1[2].i64[1] + 6720);
    v9.i32[0] = 998277249;
    v17 = a1[9].i64[1];
    v18 = a1[9].i64[0];
    v19 = a1[8].i64[1];
    v20 = a1[8].i64[0];
    v21 = vdupq_lane_s32(*&vmulq_f32(v8, v9), 0);
    v16 = 0;
    v15 = 0;
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0uLL;
  }

  v22 = *(a3 + 3);
  v23 = *a3;
  if (v22 < 1)
  {
    v27 = vdupq_n_s32(0x4B189680u);
  }

  else
  {
    v24 = 0;
    v25.i64[0] = -1;
    v25.i64[1] = -1;
    v26 = vaddq_s32(v48, v25);
    v27 = vdupq_n_s32(0x4B189680u);
    v14 = 0uLL;
    v28 = *a3;
    do
    {
      v10.i32[0] = *(v28 + 12);
      v29 = vdupq_lane_s32(*v10.i8, 0);
      if (vminv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v27, v29)))))
      {
        break;
      }

      v30 = *(a1[64].i64[1] + 4 * v24);
      if (v11)
      {
        v31.i32[0] = *(v20 + v30);
        v31.i32[1] = *(v19 + v30);
        v31.i64[1] = __PAIR64__(*(v17 + v30), *(v18 + v30));
        v32 = vmulq_f32(v21, vcvtq_f32_u32(v31));
      }

      else
      {
        v32.i32[0] = *(v12 + 4 * v30);
        v32.i32[1] = *(v13 + 4 * v30);
        v32.i32[2] = *(v15 + 4 * v30);
        v32.i32[3] = *(v16 + 4 * v30);
      }

      v33 = (a1[64].i64[0] + 4 * v24);
      v34 = vld1q_dup_f32(v33);
      v35 = vmulq_f32(a1[44], vaddq_f32(v32, v34));
      if (a1[2].i64[0] == a1[3].i64[0] || a1[6].i64[1])
      {
        v36 = *(a1[62].i64[1] + 4 * v24);
        v37.i32[0] = *(a1[16].i64[0] + 4 * v36);
        v37.i32[1] = *(a1[16].i64[1] + 4 * v36);
        v37.i32[2] = *(a1[17].i64[0] + 4 * v36);
        v37.i32[3] = *(a1[17].i64[1] + 4 * v36);
        v38 = (a1[63].i64[1] + 4 * v24);
        v39 = vld1q_dup_f32(v38);
        v35 = vaddq_f32(v35, vmulq_f32(a1[48], vaddq_f32(a1[36], vaddq_f32(v37, v39))));
      }

      v40 = vld1q_dup_f32(v28);
      v41 = vaddq_f32(v29, vbicq_s8(vaddq_f32(v35, a1[40]), vceqq_s32(v40, v26)));
      v42 = vcgtq_f32(v27, v41);
      v27 = vbslq_s8(v42, v41, v27);
      v10 = vdupq_n_s32(v24);
      v14 = vbslq_s8(v42, v10, v14);
      ++v24;
      v28 += 24;
    }

    while (v22 != v24);
  }

  v43 = v23 + 24 * v14.i32[0];
  *(v7 + 12) = v27.f32[0] + *(v7 + 12);
  *(v7 + 16) = v43;
  if (v23)
  {
    ++*(v43 + 8);
  }

  v44 = v23 + 24 * v14.i32[1];
  *(v7 + 36) = v27.f32[1] + *(v7 + 36);
  *(v7 + 40) = v44;
  if (v23)
  {
    ++*(v44 + 8);
  }

  v45 = v23 + 24 * v14.i32[2];
  *(v7 + 60) = v27.f32[2] + *(v7 + 60);
  *(v7 + 64) = v45;
  if (v23)
  {
    ++*(v45 + 8);
  }

  v46 = v23 + 24 * v14.i32[3];
  *(v7 + 84) = v27.f32[3] + *(v7 + 84);
  *(v7 + 88) = v46;
  if (v23)
  {
    ++*(v46 + 8);
  }

  return 0;
}

void *UNICORN__DeInitTreeSet(void *result, char *__b)
{
  if (__b)
  {
    v3 = result;
    for (i = 56; i != 96; i += 8)
    {
      v5 = *&__b[i];
      if (v5)
      {
        heap_Free(*(v3 + 8), v5);
      }
    }

    return cstdlib_memset(__b, 0, 0x70uLL);
  }

  return result;
}

uint64_t UNICORN__LoadTreesFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v29 = 0;
  v9 = *a4;
  if (a4[4] - v9 >= 8 && *(*(a4 + 1) + v9) == 48)
  {
    *a4 = v9 + 2;
    v12 = a2 + 2 * a3;
    v13 = a3;
    if (UNICORN__xfread_BET5((v12 + 96), 2u, 1, a4) == 1 && UNICORN__xfread_BET5(&v29, 2u, 1, a4) == 1 && UNICORN__xfread_BET5((a2 + 2 * v13), 2u, 1, a4) == 1)
    {
      v14 = UNICORN__xfread2ptr_BET5((a2 + 8 * v13 + 16), 1u, v29, a4);
      if (v14 == v29)
      {
        if (*a4)
        {
          ++*a4;
        }

        v15 = heap_Calloc(*(v8 + 8), 16, *(v12 + 96));
        v21 = a2 + 56;
        *(a2 + 56 + 8 * v13) = v15;
        if (!v15)
        {
          UNICORN__log_select_Error(v8, 55000, "LoadTreesFile : out of memory for type %s\n", v16, v17, v18, v19, v20);
          return 2229280778;
        }

        if (!*(v12 + 96))
        {
          return 0;
        }

        v22 = 0;
        v23 = 0;
        while (UNICORN__xfread_BET5((v15 + v22), 2u, 1, a4) == 1)
        {
          if (UNICORN__xfread_BET5((*(v21 + 8 * v13) + v22 + 2), 2u, 1, a4) != 1)
          {
            break;
          }

          v24 = UNICORN__xfread2ptr_BET5((*(v21 + 8 * v13) + v22 + 8), 2u, 3 * *(*(v21 + 8 * v13) + v22 + 2), a4);
          v15 = *(v21 + 8 * v13);
          if (v24 != 3 * *(v15 + v22 + 2))
          {
            break;
          }

          v25 = 0;
          ++v23;
          v22 += 16;
          if (v23 >= *(v12 + 96))
          {
            return v25;
          }
        }

        v25 = 2229280772;
        v26 = "LoadTreesFile : corrupt tree nodes for type %s, state %u\n";
        a1 = v8;
        v27 = 55015;
      }

      else
      {
        v25 = 2229280772;
        v26 = "LoadTreesFile : corrupt tree questions for type %s\n";
        a1 = v8;
        v27 = 55013;
      }
    }

    else
    {
      v25 = 2229280772;
      v26 = "LoadTreesFile : corrupt tree header for type %s\n";
      a1 = v8;
      v27 = 55012;
    }
  }

  else
  {
    v25 = 2229280772;
    v26 = "LoadTreesFile : invalid tree data version for type %s\n";
    v27 = 55011;
  }

  UNICORN__log_select_Error(a1, v27, v26, a4, a5, a6, a7, a8);
  return v25;
}

uint64_t UNICORN__TreeSearch(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  LOWORD(v5) = 0;
  v6 = a3 + 8 * a4;
  v7 = *(v6 + 16);
  v8 = *(*(v6 + 56) + 16 * a5 + 8);
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

uint64_t UNICORN__mlpg_cpy(uint64_t result)
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
        v4 = 0;
        v5 = *(result + 112);
        do
        {
          if (v5)
          {
            if (*(v5 + v4) == 1)
            {
              *(*(*(result + 40) + 8 * v4) + 4 * v2) = *(*(*(result + 72) + 8 * v4) + 4 * v2);
            }
          }

          ++v4;
        }

        while (v3 != v4);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

float UNICORN__mlpg(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 20);
  if (v4 <= 0)
  {
    v8 = *(a1 + 96);
    LODWORD(v10) = *(a1 + 24);
  }

  else
  {
    v5 = 0;
    a2 = a2;
    v7 = *(a1 + 72);
    v6 = *(a1 + 80);
    v8 = *(a1 + 96);
    v9 = *(a1 + 104);
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    v12 = *v11;
    v69 = v12;
    v70 = v8;
    do
    {
      v13 = *(v6 + 8 * v5);
      *(v9 + 4 * v5) = *(v13 + 4 * a2) * *(*(v7 + 8 * v5) + 4 * a2);
      v14 = v8[v5];
      *v14 = *(v13 + 4 * a2);
      if (v10 >= 2)
      {
        bzero(v14 + 1, 4 * (v10 - 1));
        v12 = v69;
        a2 = v2;
        v8 = v70;
      }

      if (v12 >= 2)
      {
        v15 = *(v11 + 1);
        for (i = 1; i != v12; ++i)
        {
          v17 = *(v15 + 8 * i);
          v18 = *v17;
          v19 = v17[1];
          if (v18 <= v19)
          {
            v20 = -v18;
            do
            {
              v21 = v18 + v5;
              if (v4 > v18 + v5)
              {
                v22 = *(*(v11 + 2) + 8 * i);
                v23 = *(v22 - 4 * v18);
                if (v23 != 0.0)
                {
                  v24 = v2 + *(a1 + 16) * i;
                  v25 = v23 * *(*(v6 + 8 * v21) + 4 * v24);
                  *(v9 + 4 * v5) = *(v9 + 4 * v5) + (v25 * *(*(v7 + 8 * v21) + 4 * v24));
                  if (v10 >= 1)
                  {
                    v26 = v20;
                    v27 = v5;
                    v28 = v10;
                    v29 = v14;
                    do
                    {
                      if (v26 <= v19 && v27 < v4)
                      {
                        v30 = *(v22 + 4 * v26);
                        if (v30 != 0.0)
                        {
                          *v29 = *v29 + (v25 * v30);
                        }
                      }

                      ++v29;
                      ++v27;
                      ++v26;
                      --v28;
                    }

                    while (v28);
                  }
                }
              }

              ++v18;
              --v20;
            }

            while (v19 + 1 != v18);
          }
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  v31 = *v8;
  v32 = sqrtf(**v8);
  **v8 = v32;
  if (v10 >= 2)
  {
    v33 = v10 - 1;
    v34 = v31 + 1;
    do
    {
      *v34 = *v34 / v32;
      ++v34;
      --v33;
    }

    while (v33);
  }

  if (v4 <= 1)
  {
    v52 = *(a1 + 88);
    *v52 = **(a1 + 104) / v32;
  }

  else
  {
    v35 = 0;
    v36 = 1;
    v37 = v8;
    do
    {
      if (v10 < 2)
      {
        *v8[v36] = sqrtf(*v8[v36]);
      }

      else
      {
        v38 = v35;
        v39 = 1;
        do
        {
          if ((v38 & 0x8000000000000000) == 0)
          {
            v40 = v8[v38][v39];
            *v8[v36] = *v8[v36] - (v40 * v40);
          }

          ++v39;
          --v38;
        }

        while (v10 != v39);
        v41 = v8[v36];
        v42 = sqrtf(*v41);
        *v41 = v42;
        v43 = *(*(a1 + 32) + 32);
        v44 = 4;
        v45 = 1;
        do
        {
          if (v43 >= 1)
          {
            v46 = v37;
            v47 = v44;
            v48 = v43;
            do
            {
              if (v45 != v10 - 1)
              {
                v41[v45] = v41[v45] - (*(*v46 + v47) * (*v46)[v45 + 1]);
              }

              v47 -= 4;
              --v46;
              --v48;
            }

            while (v48);
          }

          v41[v45] = v41[v45] / v42;
          ++v45;
          v44 += 4;
        }

        while (v45 != v10);
      }

      ++v36;
      ++v35;
      ++v37;
    }

    while (v36 != v4);
    v49 = 0;
    v50 = *(a1 + 104);
    v51 = *v50 / *v31;
    v52 = *(a1 + 88);
    *v52 = v51;
    for (j = 1; j != v4; ++j)
    {
      v54 = 0.0;
      if (v10 >= 2)
      {
        v55 = v49;
        v56 = 1;
        do
        {
          if ((v55 & 0x8000000000000000) == 0)
          {
            v57 = v8[v55][v56];
            if (v57 != 0.0)
            {
              v54 = v54 + (v57 * v52[v55]);
            }
          }

          ++v56;
          --v55;
        }

        while (v10 != v56);
      }

      v52[j] = (v50[j] - v54) / *v8[j];
      ++v49;
    }
  }

  result = v52[v4 - 1] / *v8[v4 - 1];
  v59 = *(a1 + 40);
  *(*(v59 + 8 * (v4 - 1)) + 4 * v2) = result;
  if (v4 >= 2)
  {
    v60 = (v4 - 2);
    v61 = v59 + 8 * v60 + 8;
    v62 = v4 - 1;
    do
    {
      v63 = 0.0;
      if (v10 >= 2)
      {
        v64 = v62;
        v65 = v61;
        v66 = 1;
        do
        {
          if (v4 > v64)
          {
            v67 = v8[v60][v66];
            if (v67 != 0.0)
            {
              v63 = v63 + (v67 * *(*v65 + 4 * v2));
            }
          }

          ++v66;
          ++v65;
          ++v64;
        }

        while (v10 != v66);
      }

      result = (v52[v60] - v63) / *v8[v60];
      *(*(v59 + 8 * v60) + 4 * v2) = result;
      v61 -= 8;
      --v62;
    }

    while (v60-- > 0);
  }

  return result;
}

uint64_t UNICORN__dummy_solver(uint64_t result)
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
        v4 = *(result + 40);
        v5 = v3;
        do
        {
          v6 = *v4++;
          *(v6 + 4 * v2) = 0;
          --v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

void UNICORN__mlpg_c(uint64_t a1, int a2)
{
  if (*(a1 + 20) < 2)
  {

    UNICORN__meancpy(a1);
  }

  else
  {
    *&v4 = UNICORN__ConstW_Calc_R_and_r(a1, a2);
    UNICORN__ConstW_Cholesky(a1, v4);
    UNICORN__ConstW_Cholesky_forward(a1);

    UNICORN__ConstW_Cholesky_backward(a1, a2);
  }
}

uint64_t UNICORN__select_bet5_FeatureExtractObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
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
      log_OutPublic(*(v16 + 32), "SELECT_BET5", 55000, 0, v10, v11, v12, v13, v15);
      return 2229280778;
    }
  }

  return inited;
}

uint64_t UNICORN__select_bet5_FeatureExtractObjClose(uint64_t a1)
{
  if (a1)
  {
    heap_Free(*(*a1 + 8), a1);
  }

  return 0;
}

uint64_t UNICORN__select_bet5_FeatureExtractProcessStart(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__b, _DWORD *a6)
{
  cstdlib_memset(__b, 0, 0xE48uLL);
  *__b = a2;
  v12 = *a1;
  v13 = a1[2];

  return usextract_ProcessStart(v12, "SELECT_BET5", v13, a3, a4, __b, a6);
}

uint64_t UNICORN__select_bet5_FeatureExtractProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t a10, uint64_t *a11, unsigned int *a12)
{
  v15 = a1;
  v115 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  v113 = 0;
  if (a11)
  {
    v17 = a12 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v109 = v18;
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
    log_OutPublic(*(v16 + 32), "SELECT_BET5", 55000, 0, v23, v24, v25, v26, v104);
    goto LABEL_143;
  }

  v27 = v22;
  v108 = a2;
  v110 = v15;
  v28 = 0;
  v107 = a10 + 16;
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
        goto LABEL_141;
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
              goto LABEL_141;
            }

            break;
          case 0x2Eu:
            v43 = heap_Calloc(*(v16 + 8), v21, 9);
            *(a10 + 3560) = v43;
            if (!v43)
            {
              goto LABEL_141;
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
                goto LABEL_141;
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
              goto LABEL_141;
            }
          }
        }

        else
        {
          if (v28 != 56)
          {
LABEL_42:
            log_OutPublic(*(*v15 + 32), "SELECT_BET5", 55007, "%s%u", v23, v24, v25, v26, "feature");
            goto LABEL_20;
          }

          v36 = *(v29 + 2966);
          if (v36)
          {
            v37 = heap_Calloc(*(v16 + 8), (v36 * v21), 1);
            *(a10 + 3600) = v37;
            if (!v37)
            {
              goto LABEL_141;
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
            goto LABEL_141;
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
            goto LABEL_141;
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
    log_OutPublic(*(v16 + 32), "SELECT_BET5", 55000, "Invalid number of states per phoneme", v23, v24, v25, v26, "%s%u");
    v45 = -2065686513;
    goto LABEL_142;
  }

  v46 = heap_Calloc(*(v16 + 8), v44 * v21, 4);
  *(a10 + 3608) = v46;
  if (!v46)
  {
    goto LABEL_141;
  }

  if (*(*a10 + 3578) * v21)
  {
    memset(v46, 255, 4 * *(*a10 + 3578) * v21);
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(*v15, "SELECT_BET5", a10, v21);
  if (GenericFeatureLayers < 0)
  {
    v45 = GenericFeatureLayers;
    goto LABEL_143;
  }

  v45 = usextract_Process(*v15, "SELECT_BET5", v15[2], a3, a4, a10, v48, v49);
  if ((v45 & 0x80000000) == 0)
  {
    v105 = a3;
    v106 = a4;
    if (*(a10 + 3504))
    {
      v50 = **(*a10 + 3336);
      if (v50)
      {
        v51 = 0;
        v52 = 1;
        do
        {
          v53 = cstdlib_strncmp(v50, "INNO_", 5uLL);
          v54 = *a10;
          if (v53)
          {
            v55 = *(*(v54 + 3344) + 8 * v51);
            v56 = cstdlib_strlen("FEATIDX");
            Index = usextract_getIndex(v55, "FEATIDX", &aFeatidx[v56]);
            if (Index == -1)
            {
              if (cstdlib_strcmp(*(*(*a10 + 3336) + 8 * v51), "POS"))
              {
                if (!cstdlib_strcmp(*(*(*a10 + 3336) + 8 * v51), "PHR"))
                {
                  *(a10 + 512) = *(*(a10 + 3504) + 8 * v51);
                }
              }

              else
              {
                *(a10 + 504) = *(*(a10 + 3504) + 8 * v51);
              }
            }

            else
            {
              *(v107 + 8 * *(*(*(*a10 + 3352) + 8 * v51) + Index)) = *(*(a10 + 3504) + 8 * v51);
            }
          }

          else
          {
            v58 = cstdlib_atoi((*(*(v54 + 3336) + 8 * v51) + 5)) + 79;
            if (v58 <= 0x5E)
            {
              *(v107 + 8 * v58) = *(*(a10 + 3504) + 8 * v51);
            }
          }

          v51 = v52;
          v50 = *(*(*a10 + 3336) + 8 * v52++);
        }

        while (v50);
      }
    }

    v59 = *(a10 + 10);
    v60 = v59 & ~(v59 >> 31);
    if (UNICORN__log_select_GetLogLevel(*(v16 + 32)) >= 6)
    {
      LH_itoa(0x4Eu, v114, 0xAu);
      for (i = 0; i != 218; ++i)
      {
        if (i > 3u)
        {
          if (i == 4)
          {
            v62 = "application/x-realspeak-usplosives;version=4.0";
LABEL_83:
            v63 = *(*a10 + i + 2748);
            if (v63 == 2)
            {
              log_OutBinary(*(v16 + 32), "SELECT_BET5", 99, 0, v114, v62, *(a10 + 8 * i + 1760), 2 * v60, 0);
            }

            else if (v63 == 1)
            {
              log_OutBinary(*(v16 + 32), "SELECT_BET5", 99, 0, v114, v62, *(a10 + 8 * i + 16), v59 & ~(v59 >> 31), 0);
            }

            continue;
          }

          if (i == 5)
          {
            v62 = "application/x-realspeak-usmarkers-u16;version=4.0";
            goto LABEL_83;
          }
        }

        else if (i == 2)
        {
          v112 = 5;
          v111 = 0;
          log_OutBinary(*(v16 + 32), "SELECT_BET5", 99, 0, v114, "text/x-realspeak-usphonemes;charset=tts", &v112, 1u, 0);
          log_OutBinary(*(v16 + 32), "SELECT_BET5", 99, 0, v114, "text/x-realspeak-usphonemes;charset=tts", *(a10 + 8 * i + 16), v59 & ~(v59 >> 31), 0);
          log_OutBinary(*(v16 + 32), "SELECT_BET5", 99, 0, v114, "text/x-realspeak-usphonemes;charset=tts", &v111, 1u, 0);
        }

        else if (i == 3)
        {
          v62 = "application/x-realspeak-usdurs;version=4.0";
          goto LABEL_83;
        }
      }
    }

    paramc_ParamGetUInt(*(v16 + 40), "waitfactor", &v113);
    v64 = *(a10 + 3520);
    if (v64)
    {
      v65 = 0;
      for (j = 0; j < v64; ++j)
      {
        v67 = *(a10 + 3512);
        if (*(v67 + v65) == 25)
        {
          v113 = *(v67 + v65 + 24);
          v45 = paramc_ParamSetUInt(*(v16 + 40), "waitfactor", v113);
          if (v45 < 0)
          {
            log_OutPublic(*(v16 + 32), "SELECT_BET5", 55009, "%s%s%s%d%s%x", v68, v69, v70, v71, "parameter");
            goto LABEL_156;
          }

          v64 = *(a10 + 3520);
        }

        v65 += 32;
      }
    }

    featextract_adjustSilAudioOrder(a10);
    if (v59 < 1)
    {
      v72 = 0;
    }

    else
    {
      v72 = 0;
      v73 = *(a10 + 3608);
      v74 = v60;
      do
      {
        if (*v73 == -2)
        {
          ++v72;
        }

        v73 += *(*a10 + 3578);
        --v74;
      }

      while (v74);
    }

    if (!v109)
    {
      goto LABEL_120;
    }

    v75 = v60 - v72;
    v76 = *(a10 + 3520);
    v77 = (v76 + v75);
    *a12 = v77;
    if (!(v76 + v75))
    {
      goto LABEL_120;
    }

    v78 = v59;
    v79 = heap_Calloc(*(v16 + 8), v77, 32);
    *a11 = v79;
    a3 = v105;
    a4 = v106;
    if (v79)
    {
      v80 = heap_Calloc(*(v16 + 8), *(a10 + 10), 2);
      if (v80)
      {
        v81 = v80;
        cstdlib_memcpy(v80, *(a10 + 1800), 2 * *(a10 + 10));
        v59 = v78;
        if (*a12)
        {
          v82 = 0;
          v83 = 0;
          v84 = 0;
          while (v83 < *(a10 + 3520))
          {
            if (v82 >= v60)
            {
              v89 = (*(a10 + 3512) + 32 * v83);
              v90 = v89[1];
              v91 = (*a11 + 32 * v84);
              *v91 = *v89;
              v91[1] = v90;
              ++v84;
              ++v83;
            }

            else
            {
              if (!*(v81 + 2 * v82))
              {
                break;
              }

              v85 = (*a11 + 32 * v84);
              v86 = (*(a10 + 3512) + 32 * v83);
              v87 = v86[1];
              *v85 = *v86;
              v85[1] = v87;
              ++v84;
              ++v83;
              --*(v81 + 2 * v82);
            }

LABEL_118:
            if (v84 >= *a12)
            {
              goto LABEL_119;
            }
          }

          if (*(*(a10 + 3608) + 4 * v82 * *(*a10 + 3578)) != -2)
          {
            v88 = (*a11 + 32 * v84);
            *v88 = 33;
            v88[6] = *(*(a10 + 32) + v82);
            if (v84)
            {
              *(*a11 + 32 * v84 + 12) = *(*a11 + 32 * (v84 - 1) + 12);
            }

            ++v84;
          }

          ++v82;
          goto LABEL_118;
        }

LABEL_119:
        heap_Free(*(v16 + 8), v81);
LABEL_120:
        if (v59 >= 1)
        {
          v92 = 0;
          v93 = v108 + 4780;
          v94 = v60 - 1;
          while (1)
          {
            v95 = *(a10 + 248);
            if (!*(v95 + v92))
            {
              *(v95 + v92) = -1;
            }

            v96 = *(a10 + 192);
            if (*(*(a10 + 32) + v92) == 35)
            {
              v97 = 1;
            }

            else
            {
              v97 = 2 * *(v96 + v92);
            }

            *(v96 + v92) = v97;
            v98 = *(a10 + 32);
            v99 = *(v98 + v92);
            if (v94 == v92)
            {
              if (v99 == 35)
              {
                v100 = *(*(a10 + 1784) + 2 * v92);
                v114[0] = 0;
                paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v114);
                if (!v100)
                {
                  if (v114[0] == 1 || !v113)
                  {
                    v100 = *(v108 + 24);
                  }

                  else
                  {
                    v100 = 200 * v113;
                  }
                }

                if (v100 >= 0xFFFF)
                {
                  v101 = -1;
                }

                else
                {
                  v101 = v100;
                }

                *(*(a10 + 1784) + 2 * v92) = v101;
                v98 = *(a10 + 32);
              }

              *(v98 + v92) = *(v93 + *(v98 + v92));
              if (v94 == v92)
              {
                break;
              }
            }

            else
            {
              *(v98 + v92) = *(v93 + v99);
            }

            ++v92;
          }
        }

        *a9 = v113;
LABEL_156:
        a3 = v105;
        a4 = v106;
LABEL_142:
        v15 = v110;
        goto LABEL_143;
      }
    }

LABEL_141:
    v45 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET5", 55000, 0, v23, v24, v25, v26, v104);
    goto LABEL_142;
  }

LABEL_143:
  if (a12 && a11 && v45 < 0 && *a11)
  {
    heap_Free(*(v16 + 8), *a11);
    *a11 = 0;
    *a12 = 0;
  }

  LODWORD(result) = (*(v15[2] + 64))(a3, a4);
  if (result >= 0 || v45 <= -1)
  {
    return v45;
  }

  else
  {
    return result;
  }
}

uint64_t UNICORN__select_bet5_FeatureExtractProcessEnd(uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = usextract_ProcessEnd(*a1, "SELECT_BET5", a2);
  usextract_freeGenericFeatureLayers(*a1, "SELECT_BET5", a2);
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
          log_OutPublic(*(*a1 + 32), "SELECT_BET5", 55010, "%s%u", v6, v7, v8, v9, "feature");
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

  cstdlib_memset(a2, 0, 8uLL);
  return v5;
}

uint64_t UNICORN__LoadModelFile(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = a3;
  if (a2[a3 + 46])
  {
    v9 = a2 + 18;
    v10 = heap_Calloc(*(a1 + 8), a2[a3 + 18], 8);
    *(a2 + 12) = v10;
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
        if (UNICORN__xfread_BET5(a2, 4u, 1, v13) != 1 || (*a2 & 0x80000000) != 0)
        {
          v61 = "LoadModelFile: the number of HMM states is illegal for %s %d\n";
          v62 = v7;
          v63 = 55020;
          goto LABEL_68;
        }

        if (UNICORN__xfread_BET5(a2 + 6, 4u, 1, v13) != 1 || (v19 = a2[6], v19 < 0))
        {
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
          v19 = a2[6];
        }

        v21 = a5;
        *(*(a2 + 12) + 8 * v11) = v12 + 8 * v19 * v11;
        *(*(a2 + 12) + 8 * v11) -= 8;
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
        v25 = UNICORN__xfread2ptr_BET5((*(*(a2 + 12) + 8 * v11) + v24), 4u, (2 * v23), v13);
        v23 = *a2;
        if (v25 != 2 * *a2)
        {
          break;
        }

        v26 = *(*(a2 + 12) + 8 * v11) + 8 * v22;
        *(v26 + 8) -= 8;
        ++v22;
        v24 += 8;
        if (v22 >= a2[6])
        {
          goto LABEL_16;
        }
      }

      v61 = "LoadModelFile: PDF read failed for %s %d\n";
      v62 = v7;
      v63 = 55022;
      goto LABEL_68;
    }
  }

LABEL_17:
  v27 = &a2[v8];
  if (v27[51])
  {
    v28 = a2 + 18;
    v29 = heap_Calloc(*(v7 + 8), a2[v8 + 18], 8);
    v30 = a2 + 26;
    *&a2[2 * v8 + 26] = v29;
    v31 = 2229280778;
    if (!v29)
    {
      return v31;
    }

    v67 = heap_Calloc(*(v7 + 8), *a2 * v28[v8], 8);
    if (!v67)
    {
      return v31;
    }

    if (v28[v8] >= 1)
    {
      v32 = 0;
      v33 = &a2[2 * v8];
      v65 = v7;
      while (1)
      {
        v34 = (a4 + 24 * v32);
        if (UNICORN__xfread_BET5(v27 + 1, 4u, 1, v34) != 1 || (v27[1] & 0x80000000) != 0)
        {
          v61 = "LoadModelFile: the vector size is illegal for %s %d\n";
          v62 = v7;
          v63 = 55023;
          goto LABEL_68;
        }

        v35 = UNICORN__xfread2ptr_BET5(v33 + 4, 4u, *a2, v34);
        if (v35 != *a2)
        {
          v61 = "LoadModelFile: reading the number of PDFs failed for %s %d\n";
          v62 = v7;
          v63 = 55024;
          goto LABEL_68;
        }

        v36 = *(v33 + 4);
        *(v33 + 4) = v36 - 2;
        if (v35 > 0)
        {
          break;
        }

        *(*&v30[2 * v8] + 8 * v32) = v67 + 8 * v35 * v32;
        *(*&v30[2 * v8] + 8 * v32) -= 16;
LABEL_34:
        ++v32;
        v7 = v65;
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
          v61 = "LoadModelFile: the number of PDFs for %s at state %d is illegal\n";
          v62 = v7;
          v63 = 55025;
          goto LABEL_68;
        }

        ++v37;
      }

      while (v35 + 2 != v37);
      *(*&v30[2 * v8] + 8 * v32) = v67 + 8 * v35 * v32;
      *(*&v30[2 * v8] + 8 * v32) -= 16;
      v39 = *(v33 + 4);
      v40 = v27[1];
      v41 = 16;
      v42 = 2;
      while (1)
      {
        v43 = UNICORN__xfread2ptr_BET5((*(*&v30[2 * v8] + 8 * v32) + v41), 4u, 2 * *(v39 + 4 * v42) * v40, v34);
        v39 = *(v33 + 4);
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

      v62 = v65;
      v61 = "LoadModelFile: PDF read failed for %s %d\n";
      v63 = 55026;
      goto LABEL_68;
    }
  }

LABEL_35:
  if (!v27[56])
  {
    return 0;
  }

  v45 = a2 + 18;
  v46 = heap_Calloc(*(v7 + 8), a2[v8 + 18], 8);
  v47 = a2 + 36;
  *&a2[2 * v8 + 36] = v46;
  v31 = 2229280778;
  if (v46)
  {
    v48 = heap_Calloc(*(v7 + 8), *a2 * v45[v8], 8);
    if (v48)
    {
      if (v45[v8] >= 1)
      {
        v66 = v7;
        v68 = v48;
        v49 = 0;
        v50 = &a2[2 * v8];
        while (1)
        {
          v51 = (a4 + 24 * v49);
          if (UNICORN__xfread_BET5(v27 + 1, 4u, 1, v51) != 1 || (v27[1] & 0x80000000) != 0)
          {
            v61 = "LoadModelFile: the vector size is illegal for %s %d\n";
            v62 = v7;
            v63 = 55027;
            goto LABEL_68;
          }

          v52 = UNICORN__xfread2ptr_BET5(v50 + 4, 4u, *a2, v51);
          if (v52 != *a2)
          {
            v61 = "LoadModelFile: reading the number of PDFs failed for %s %d\n";
            v62 = v7;
            v63 = 55028;
            goto LABEL_68;
          }

          v53 = *(v50 + 4);
          *(v50 + 4) = v53 - 2;
          if (v52 > 0)
          {
            break;
          }

          *(*&v47[2 * v8] + 8 * v49) = v68 + 8 * v52 * v49;
          *(*&v47[2 * v8] + 8 * v49) -= 16;
LABEL_52:
          v31 = 0;
          ++v49;
          v7 = v66;
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
            v61 = "LoadModelFile: the number of PDFs for %s at state %d is illegal\n";
            v62 = v7;
            v63 = 55029;
            goto LABEL_68;
          }

          ++v54;
        }

        while (v52 + 2 != v54);
        *(*&v47[2 * v8] + 8 * v49) = v68 + 8 * v52 * v49;
        *(*&v47[2 * v8] + 8 * v49) -= 16;
        v56 = *(v50 + 4);
        v57 = v27[1];
        v58 = 16;
        v59 = 2;
        while (1)
        {
          v60 = UNICORN__xfread2ptr_BET5((*(*&v47[2 * v8] + 8 * v49) + v58), 4u, 4 * *(v56 + 4 * v59) * v57, v51);
          v56 = *(v50 + 4);
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

        v62 = v66;
        v61 = "LoadModelFile: PDF read failed for %s %d\n";
        v63 = 55030;
LABEL_68:
        UNICORN__log_select_Error(v62, v63, v61, v14, v15, v16, v17, v18);
        return 2229280772;
      }

      return 0;
    }
  }

  return v31;
}

uint64_t UNICORN__FindDurPDF(int32x2_t *a1, int *a2, int a3, int a4, float a5)
{
  v5 = a1[1].i32[0];
  a1[3] = 0;
  a1[4].i32[0] = 0;
  LODWORD(v6) = *a2;
  if (*a2 >= 1)
  {
    v7 = *(*(*(a2 + 12) + 8 * a4) + 8 * v5);
    v8 = a1[2];
    v9 = 2;
    __asm { FMOV            V3.2D, #0.5 }

    v15 = 0.0;
    do
    {
      v16 = *(v7 + 4 * (v9 + v6));
      v17 = *(v7 + 4 * v9) + (v16 * a5);
      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      if (a2[62])
      {
        if (v17 > 4000.0)
        {
          v17 = 4000.0;
        }
      }

      else if (v17 > 4000.0)
      {
        v17 = v15 * 0.5;
      }

      v18.f32[0] = v17 + a3;
      v18.i32[1] = sqrtf(v16);
      v19 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vcvtq_f64_f32(v18), _Q3)));
      *(*&v8 + 4 * v9) = v19.i32[0];
      a1[3] = vadd_s32(a1[3], v19);
      a3 += (v17 - *(*&v8 + 4 * v9));
      v6 = *a2;
      v15 = v17;
    }

    while (v9++ <= v6);
  }

  return 0;
}

uint64_t UNICORN__FindContPDF(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a3 + 8 * a1);
  v6 = *(a4 + 4 * a1 + 4);
  v7 = *(*(*(a4 + 8 * a1 + 104) + 8 * a5) + 8 * a2) + 4 * (2 * *(v5[7] + 4 * a2) - 2) * v6;
  *(v5[12] + 8 * a2) = v7;
  *(v5[17] + 8 * a2) = v7 + 4 * v6;
  return 0;
}

uint64_t UNICORN__FindMsdPDF(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a4 + 4;
  v7 = *(a4 + 4 + 4 * a1);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = a1;
    v10 = a2;
    v11 = *(*(*(a4 + 8 * a1 + 144) + 8 * a6) + 8 * a2) + 4 * (4 * *(*(a3 + 8 * a1 + 56) + 4 * a2) - 4) * v7;
    v12 = a5 + 184;
    v13 = 1;
    do
    {
      v14 = v11 + 4 * v8;
      v15 = *(*(a3 + 96 + 8 * v9) + 8 * v10);
      *(v15 + 4 * v13) = *v14;
      v16 = *(v14 + 4);
      *(*(*(a3 + 136 + 8 * v9) + 8 * v10) + 4 * v13) = v16;
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
          *(*(a3 + 184) + 4 * v10) = v19;
        }

        v20 = 1 << v18;
        v21 = *(a3 + 176);
        if (v19 <= *(a5 + 1128 + 4 * v9))
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

uint64_t UNICORN__FindDurPDF_PerStateRho(uint64_t a1, int *a2, float *a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 8);
  *(a1 + 24) = 0;
  LODWORD(v7) = *a2;
  if (*a2 >= 1)
  {
    v14 = 2;
    v15 = 0.0;
    do
    {
      v16 = *(*(*(a2 + 12) + 8 * a5) + 8 * v6);
      v17 = *(v16 + 4 * v14);
      v18 = *a3;
      if (*a3 != 0.0)
      {
        v19 = *(v16 + 4 * (v14 + v7));
        if (a6)
        {
          v19 = UNICORN__bet5_finv(v19);
        }

        v17 = v17 + (v18 * sqrtf(v19));
      }

      if (v17 >= 0.0)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0.0;
      }

      if (a2[62])
      {
        if (v20 > 4000.0)
        {
          v20 = 4000.0;
        }
      }

      else if (v20 > 4000.0)
      {
        v20 = v15 * 0.5;
      }

      v21 = (v20 + a4) + 0.5;
      v22 = *(a1 + 16);
      *(v22 + 4 * v14) = v21;
      *(a1 + 24) += v21;
      a4 += (v20 - *(v22 + 4 * v14));
      v7 = *a2;
      ++a3;
      v15 = v20;
    }

    while (v14++ <= v7);
  }

  return 0;
}

uint64_t UNICORN__FindLF0PDF_PerStateRho(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, float a8)
{
  v8 = a4 + 4;
  v9 = *(a4 + 4 + 4 * a1);
  if (v9 >= 1)
  {
    v12 = a1;
    v13 = a2;
    v14 = *(*(*(a4 + 8 * a1 + 144) + 8 * a6) + 8 * a2) + 4 * (4 * *(*(a3 + 8 * a1 + 56) + 4 * a2) - 4) * v9;
    v15 = a3 + 96;
    v16 = a3 + 136;
    v29 = a5 + 1128;
    v17 = a5 + 184;
    v18 = 1;
    do
    {
      v19 = v14 + 4 * (4 * v18 - 4);
      v20 = (*(*(v15 + 8 * v12) + 8 * v13) + 4 * v18);
      *v20 = *v19;
      v21 = *(v19 + 4);
      *(*(*(v16 + 8 * v12) + 8 * v13) + 4 * v18) = v21;
      if (a8 != 0.0)
      {
        if (a7)
        {
          v22 = sqrtf(UNICORN__bet5_finv(v21));
          v20 = (*(*(v15 + 8 * v12) + 8 * v13) + 4 * v18);
        }

        else
        {
          v22 = sqrtf(v21);
        }

        *v20 = *v20 + (v22 * a8);
      }

      if (v18 == 1)
      {
        v23 = *(v19 + 8);
        *(*(a3 + 184) + 4 * v13) = v23;
        v24 = 1 << *(v17 + 4 * v12);
        v25 = *(a3 + 176);
        if (v23 <= *(v29 + 4 * v12))
        {
          v26 = *(v25 + v13) & ~v24;
        }

        else
        {
          v26 = *(v25 + v13) | v24;
        }

        *(v25 + v13) = v26;
      }
    }

    while (v18++ < *(v8 + 4 * v12));
  }

  return 0;
}

void *UNICORN__DeInitModelSet(uint64_t a1, char *__b)
{
  if (*(__b + 61) >= 1)
  {
    v4 = 0;
    v5 = __b + 184;
    v6 = (__b + 104);
    v7 = __b + 184;
    do
    {
      v8 = *v7;
      v7 += 4;
      if (v8)
      {
        v9 = *(__b + 12);
        if (v9)
        {
          if (*v9)
          {
            *v9 += 8;
            heap_Free(*(a1 + 8), **(__b + 12));
            v9 = *(__b + 12);
          }

          heap_Free(*(a1 + 8), v9);
          *(__b + 12) = 0;
        }
      }

      if (*(v5 + 5))
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

      if (*(v5 + 10))
      {
        v11 = v6[5];
        if (v11)
        {
          if (*v11)
          {
            *v11 += 16;
            heap_Free(*(a1 + 8), *v6[5]);
            v11 = v6[5];
          }

          heap_Free(*(a1 + 8), v11);
        }
      }

      ++v4;
      ++v6;
      v5 = v7;
    }

    while (v4 < *(__b + 61));
  }

  return cstdlib_memset(__b, 0, 0x100uLL);
}

uint64_t UNICORN__InitUttModel(uint64_t a1, char *__b, int *a3, unsigned int a4)
{
  v8 = 2229280778;
  cstdlib_memset(__b, 0, 0x168uLL);
  *__b = a1;
  *(__b + 1) = a3;
  *(__b + 84) = a4;
  *(__b + 87) = *a3 * a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 312);
  *(__b + 41) = v9;
  if (v9)
  {
    v10 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 84)), 4);
    *(__b + 4) = v10;
    if (v10)
    {
      v11 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 84)), 4);
      *(__b + 26) = v11;
      if (v11)
      {
        v12 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 84)), 1);
        *(__b + 24) = v12;
        if (v12)
        {
          v13 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 84)), 4);
          *(__b + 25) = v13;
          if (v13)
          {
            v14 = a3[61];
            if (v14 >= 1)
            {
              v15 = 0;
              v16 = a3 + 46;
              v17 = __b + 112;
              v18 = a3 + 46;
              do
              {
                if (!*v18++)
                {
                  v20 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 84)), 4);
                  *(v17 - 5) = v20;
                  if (!v20)
                  {
                    return v8;
                  }

                  v21 = *(a1 + 8);
                  v22 = *(__b + 84);
                  v23 = v16[10] ? UNICORN__int32_ccalloc(v21, 2 * v22 * *a3, *(v16 - 45) + 1) : heap_Calloc(v21, (2 * v22 * *a3), 8);
                  *v17 = v23;
                  if (!v23)
                  {
                    return v8;
                  }

                  v17[5] = &v23[*a3 * *(__b + 84)];
                  v14 = a3[61];
                }

                ++v15;
                ++v17;
                v16 = v18;
              }

              while (v15 < v14);
            }

            v24 = *(__b + 84);
            if (v24 >= 1)
            {
              v25 = 0;
              v28 = *a3;
              v27 = a3 + 46;
              v26 = v28;
              v29 = 96;
              do
              {
                v30 = *(__b + 41);
                v31 = v30 + 312 * v25;
                *v31 = v25;
                v32 = v25 * v26;
                v33 = *(__b + 26) + 4 * v25 * v26;
                v34 = *(__b + 24) + v25 * v26;
                v35 = *(__b + 25) + 4 * v25 * v26;
                *(v31 + 16) = *(__b + 4) + 4 * v25 * v26 - 8;
                *(v31 + 176) = v34 - 2;
                *(v31 + 184) = v35 - 8;
                *(v31 + 192) = v33 - 8;
                if (v14 >= 1)
                {
                  v36 = (v30 + v29);
                  v37 = __b + 112;
                  v38 = v27;
                  v39 = v14;
                  do
                  {
                    if (!*v38++)
                    {
                      v41 = *(v37 - 5) + 4 * v32;
                      *(v36 - 5) = v41;
                      v42 = *v37 + 8 * v32;
                      *v36 = v42;
                      v43 = v37[5] + 8 * v32;
                      *(v36 - 5) = v41 - 8;
                      *v36 = v42 - 16;
                      v36[5] = v43 - 16;
                    }

                    ++v36;
                    ++v37;
                    --v39;
                  }

                  while (v39);
                }

                ++v25;
                v29 += 312;
              }

              while (v25 != v24);
            }

            return 0;
          }
        }
      }
    }
  }

  return v8;
}

void *UNICORN__DeInitUttModel(void *result)
{
  v1 = result;
  if (*result && result[41])
  {
    v2 = result[1];
    v3 = result[4];
    if (v3)
    {
      heap_Free(*(*result + 8), v3);
      v1[4] = 0;
    }

    v4 = v1[26];
    if (v4)
    {
      heap_Free(*(*v1 + 8), v4);
      v1[26] = 0;
    }

    v5 = v1[24];
    if (v5)
    {
      heap_Free(*(*v1 + 8), v5);
      v1[24] = 0;
    }

    v6 = v1[25];
    if (v6)
    {
      heap_Free(*(*v1 + 8), v6);
      v1[25] = 0;
    }

    if (*(v2 + 244) >= 1)
    {
      v7 = 0;
      do
      {
        if (!*(v2 + 184 + 4 * v7))
        {
          v8 = &v1[v7];
          v9 = v8[9];
          if (v9)
          {
            heap_Free(*(*v1 + 8), v9);
            v8[9] = 0;
          }

          v10 = v8[14];
          if (v10)
          {
            heap_Free(*(*v1 + 8), v10);
            v8[14] = 0;
          }
        }

        ++v7;
      }

      while (v7 < *(v2 + 244));
    }

    result = heap_Free(*(*v1 + 8), v1[41]);
  }

  v1[41] = 0;
  *(v1 + 84) = 0;
  *v1 = 0;
  return result;
}

void *UNICORN__DeInitMSDUttModel(void *result, int a2)
{
  v2 = result[1];
  if (!*(v2 + 4 * a2 + 184))
  {
    v3 = result;
    v4 = a2;
    v5 = result + 9;
    v6 = result[a2 + 9];
    if (v6)
    {
      result = heap_Free(*(*result + 8), v6);
      v5[v4] = 0;
    }

    v7 = *(v2 + 4 * v4 + 224);
    v8 = v3 + 14;
    v9 = v3[v4 + 14];
    if (v7)
    {
      *v9 += 4;
      result = UNICORN__int32_free(*(*v3 + 8), v8[v4]);
    }

    else
    {
      if (!v9)
      {
        return result;
      }

      result = heap_Free(*(*v3 + 8), v9);
    }

    v8[v4] = 0;
  }

  return result;
}

uint64_t UNICORN__InitModelSet(int a1, char *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0x100uLL);
  v5 = *(a3 + 132);
  *(__b + 61) = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = __b + 204;
    do
    {
      v8 = a3 + 4 * v6;
      *(v7 - 33) = *(v8 + 244);
      v9 = __b + 184;
      if (v6)
      {
        if (*(v8 + 1148))
        {
          v9 = &__b[4 * v6 + 224];
        }

        else
        {
          v9 = v7;
        }
      }

      *v9 = 1;
      ++v6;
      v7 += 4;
    }

    while (v6 < *(__b + 61));
  }

  return 0;
}

uint64_t UNICORN__meancpy(uint64_t result)
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

float UNICORN__ConstW_Calc_R_and_r(uint64_t a1, int a2)
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

float UNICORN__ConstW_Cholesky(uint64_t a1, double a2)
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

float UNICORN__ConstW_Cholesky_forward(uint64_t a1)
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

float UNICORN__ConstW_Cholesky_backward(uint64_t a1, int a2)
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

void UNICORN__mlpg2(uint64_t a1, int a2)
{
  if (*(a1 + 20) < 2)
  {

    UNICORN__meancpy(a1);
  }

  else
  {
    *&v4 = UNICORN__ConstW_Calc_R_and_r(a1, a2);
    UNICORN__ConstW_Cholesky(a1, v4);
    UNICORN__ConstW_Cholesky_forward(a1);

    UNICORN__ConstW_Cholesky_backward(a1, a2);
  }
}

char *UNICORN__heap_StrDup(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Calloc(a1, (v4 + 1), 1);
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

uint64_t UNICORN__xfread_BET5(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
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
    cstdlib_memcpy(a1, (*(a4 + 1) + v6), v8);
    *a4 += v8;
  }

  return v5;
}

uint64_t UNICORN__xfread2ptr_BET5(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
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

uint64_t UNICORN__log_select_Diag(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (v4 == 10);
  return log_VOutText(*(a1 + 32), "SELECT_BET5", (a2 + 2), 0, v3);
}

uint64_t UNICORN__log_select_GetLogLevel(uint64_t a1)
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

float UNICORN__bet5_finv(float a1)
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

void *UNICORN__ddcalloc(void *a1, unsigned int a2, int a3)
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

void *UNICORN__ddcalloc_64(void *a1, unsigned int a2, int a3)
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

void *UNICORN__dd_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *UNICORN__dd_free_64(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *UNICORN__ffcalloc(void *a1, unsigned int a2, int a3)
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

void *UNICORN__ff_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *UNICORN__int32_ccalloc(void *a1, unsigned int a2, int a3)
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

void *UNICORN__int32_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *UNICORN__iicalloc(void *a1, unsigned int a2, int a3)
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

void *UNICORN__ii_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t UNICORN__InitDWinSet(int a1, void *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0xC8uLL);
  v5 = *(a3 + 132);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = a3 + 224;
    do
    {
      v8 = *(v7 + 4 * v6);
      if (v8 >= 1)
      {
        for (i = 0; i < v8; ++i)
        {
          *(__b + 10 * v6) = v8 + 1;
          v8 = *(v7 + 4 * v6);
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return 0;
}

void **UNICORN__DeInitDWinSet(void **result, char *a2)
{
  if (a2)
  {
    v3 = result;
    for (i = 0; i != 200; i += 40)
    {
      v5 = &a2[i];
      UNICORN__ii_free(v3[1], *&a2[i + 8]);
      v6 = *&a2[i + 16];
      if (v6)
      {
        if (!*v6 || (heap_Free(v3[1], *v6), **(v5 + 2) = 0, (v6 = *(v5 + 2)) != 0))
        {
          heap_Free(v3[1], v6);
          *(v5 + 2) = 0;
        }
      }
    }

    return cstdlib_memset(a2, 0, 0xC8uLL);
  }

  return result;
}

uint64_t UNICORN__LoadDWinFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = (a2 + 40 * a3);
  if (!*v4)
  {
    return 0;
  }

  v7 = 2229280778;
  v8 = UNICORN__iicalloc(*(a1 + 8), *v4, 2);
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
          v14 = UNICORN__xfread2ptr_BET5((*(v4 + 2) + v13), 4u, 0xFFFFFFFFLL, a4);
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

        UNICORN__log_select_Error(a1, 55019, "InitDWin: illegal data\n", v15, v16, v17, v18, v19);
        return 2229280772;
      }
    }
  }

  return v7;
}

void *UNICORN__InitSMatrices(uint64_t a1, void *__b)
{
  result = cstdlib_memset(__b, 0, 0x40uLL);
  *__b = a1;
  return result;
}

double UNICORN__FreeSMatrices(uint64_t a1)
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
          UNICORN__dd_free(*(*a1 + 8), v2);
          UNICORN__dd_free_64(*(*a1 + 8), *(a1 + 48));
          v3 = *(a1 + 40);
          if (v3)
          {
            heap_Free(*(*a1 + 8), v3);
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

uint64_t UNICORN__InitPStreamSM(uint64_t *a1, uint64_t a2)
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
LABEL_18:
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
  v12 = a1[9];
  v13 = v11;
  if (v12)
  {
    UNICORN__dd_free(*(v4 + 8), v12);
    a1[9] = 0;
    v13 = *(a1 + 5);
    v10 = *(a1 + 3);
  }

  v14 = UNICORN__ddcalloc(*(v4 + 8), 2 * v13, v10);
  a1[9] = v14;
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = *(a1 + 5);
  a1[10] = &v14[v15];
  v16 = a1[12];
  if (v16)
  {
    UNICORN__dd_free_64(*(v4 + 8), v16);
    a1[12] = 0;
    LODWORD(v15) = *(a1 + 5);
  }

  v17 = UNICORN__ddcalloc_64(*(v4 + 8), v15, *(a1 + 6));
  a1[12] = v17;
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = a1[11];
  if (v18)
  {
    heap_Free(*(v4 + 8), v18);
    a1[11] = 0;
  }

  v19 = heap_Calloc(*(v4 + 8), (2 * *(a1 + 5)), 4);
  a1[11] = v19;
  if (v19)
  {
    a1[13] = v19 + 4 * *(a1 + 5);
    if (a2)
    {
      UNICORN__FreeSMatrices(a2);
      result = 0;
      v20 = *v9;
      v21 = *(a1 + 4);
      v22 = *(a1 + 6);
      *(a2 + 32) = *(a1 + 5);
      *(a2 + 48) = v22;
      *a2 = v20;
      *(a2 + 16) = v21;
      goto LABEL_18;
    }

    return 0;
  }

  else
  {
LABEL_19:
    UNICORN__FreeSMatrices((a1 + 6));
    return 2229280778;
  }
}

uint64_t UNICORN__InitPStreamParam(char *a1, uint64_t a2)
{
  v4 = *a1;
  *(a1 + 6) = (2 * *(*(a1 + 4) + 32)) | 1;
  if (a2)
  {
    v5 = *(a2 + 40);
    if (v5)
    {
      if (*(a1 + 5) == *(a2 + 20) && *(a1 + 4) == *(a2 + 16))
      {
        *(a1 + 5) = v5;
        v6 = a1 + 8;
LABEL_14:
        result = 0;
        *v6 = 1;
        return result;
      }
    }
  }

  *(a1 + 2) = 0;
  v6 = a1 + 8;
  v7 = *(a1 + 5);
  if (v7)
  {
    UNICORN__int32_free(*(v4 + 8), v7);
    *(a1 + 5) = 0;
  }

  v8 = UNICORN__int32_ccalloc(*(v4 + 8), *(a1 + 5), *(a1 + 4));
  *(a1 + 5) = v8;
  if (v8)
  {
    result = 0;
  }

  else
  {
    result = 2229280778;
  }

  if (a2 && v8)
  {
    UNICORN__FreePStreamParam(a2);
    memcpy(a2, a1, 0x2D8uLL);
    goto LABEL_14;
  }

  return result;
}

void *UNICORN__FreePStreamParam(void *result)
{
  if (*result)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      if (!*(result + 2))
      {
        result = UNICORN__int32_free(*(*result + 8), v2);
      }

      v1[5] = 0;
      *(v1 + 2) = 0;
    }
  }

  return result;
}

uint64_t UNICORN__ParamGenStart(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  v79 = *a1;
  result = UNICORN__InitUttModel(*a1, (a1 + 56), a2, *(*(a1 + 8) + 10));
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 16) = a3[8];
    v12 = a3[7];
    if (v12 >= 1 && v12 < *(a1 + 404))
    {
      UNICORN__log_select_Error(v79, 55018, "Specified length of generated speech is too short (this sentence is composed from %d states), specify more than %d milliseconds\n", v7, v8, v9, v10, v11);
      return 2229280775;
    }

    if (*(a1 + 392) >= 1)
    {
      v13 = 0;
      v73 = 0;
      v74 = 0;
      v14 = a3 + 61;
      v67 = a3 + 182;
      v15 = a3 + 682;
      v69 = *(*(a1 + 8) + 1784);
      v78 = v4 + 88;
      v76 = v4 + 78;
      v70 = v4 + 1;
      v16 = *(a1 + 32);
      v17 = -0.5;
      v18 = 0.0;
      v19 = 0.0;
      v72 = a3;
      v80 = v4;
      while (1)
      {
        v20 = (*(a1 + 384) + 312 * v13);
        v81 = v20;
        if (v16 >= 1)
        {
          v21 = 0;
          v22 = &v20[4] + 4;
          v23 = v67;
          do
          {
            v24 = v14[v21];
            if (v24 < 1)
            {
              LODWORD(v25) = 0;
            }

            else
            {
              v25 = 0;
              v26 = *(*(*(a1 + 8) + 248) + v20->i32[0]);
              do
              {
                v27 = *&v23[2 * v25];
                if (v27)
                {
                  v28 = *&v15[2 * v26];
                  if (v28)
                  {
                    if (!cstdlib_strcmp(v27, v28))
                    {
                      goto LABEL_18;
                    }

                    v24 = v14[v21];
                  }
                }

                ++v25;
              }

              while (v25 < v24);
              LODWORD(v25) = 0;
LABEL_18:
              v20 = v81;
            }

            *&v22[4 * v21++] = v25;
            v23 += 10;
          }

          while (v21 < *(a1 + 32));
        }

        UNICORN__log_select_Diag(v79, 21, "[phoneme %d]\n");
        v4 = v80;
        if (!v69)
        {
          break;
        }

        if (a3[29])
        {
          v20[1].i32[0] = UNICORN__TreeSearch(*(a1 + 8), v13, (v80 + 64), 0, 0);
          UNICORN__log_select_Diag(v79, 6, "DUR pdf id %d\n");
          result = UNICORN__FindDurPDF(v20, v80, 0, v20[4].i32[1], *(a1 + 16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LOWORD(v34) = *(*(*(a1 + 8) + 1784) + 2 * v20->i32[0]);
          v35 = UNICORN__div_int32_int32_to_Q8_24(v34, a3[6]);
          if (v35 != 0.0)
          {
            v36 = v35;
            v37 = 0.0;
            v38 = 0.0;
            if (*v80 >= 1)
            {
              v39 = 2;
              do
              {
                v38 = v38 + UNICORN__int32_to_Q12_20(*(*&v20[2] + 4 * v39));
                v40 = v39++ <= *v80;
              }

              while (v40);
            }

            v41 = v17 + v36;
            v42 = UNICORN__div_Q8_24_Q12_20_to_Q8_24(v41, v38);
            v20[3].i32[0] = 0;
            if (*v80 >= 1)
            {
              v43 = v42;
              v44 = v20[2];
              v45 = 2;
              do
              {
                v46 = UNICORN__mul_int32_Q8_24_to_Q8_24(*(*&v44 + 4 * v45), v43);
                v47 = UNICORN__Q8_24_to_int32(v46 + 0.5);
                if (v47 <= 1)
                {
                  v48 = 1;
                }

                else
                {
                  v48 = v47;
                }

                v44 = v20[2];
                *(*&v44 + 4 * v45) = v48;
                v49 = v20[3].i32[0] + v48;
                v20[3].i32[0] = v49;
                v40 = v45++ <= *v80;
              }

              while (v40);
              v37 = v49;
            }

            v17 = v41 - UNICORN__int32_to_Q8_24(v37);
          }

LABEL_45:
          *(a1 + 408) += v20[3].i32[0];
          goto LABEL_46;
        }

        if (!a3[28])
        {
          break;
        }

        result = UNICORN__log_select_Error(v79, 55017, "State level segmentation is not currently supported\n", v29, v30, v31, v32, v33);
LABEL_46:
        v16 = *(a1 + 32);
        if (v16 >= 1)
        {
          v53 = 0;
          v77 = v20 + 7;
          v71 = v20 + 12;
          v54 = v20 + 17;
          v75 = &v20[4] + 4;
          v68 = v13;
          do
          {
            v55 = *(a1 + 24) + 1520 * v53;
            if (!*(v55 + 1472))
            {
              if (*(v55 + 1480))
              {
                v56 = *v4 * v13;
                v73 = *(*(a1 + 208 + 8 * v53) + 8 * v56);
                v74 = *(*(a1 + 168 + 8 * v53) + 8 * v56);
              }

              if (*(v78 + v53))
              {
                v57 = 0;
                v58 = 0;
                do
                {
                  v59 = *(*&v76[2 * v53] + v57);
                  *(*&v77[v53] + 4 * v59) = UNICORN__TreeSearch(*(a1 + 8), *v81, (v80 + 64), v53, v58);
                  result = UNICORN__log_select_Diag(v79, 6, "%s pdf state %d id %d\n");
                  v60 = *(a1 + 24) + 1520 * v53;
                  if (*(v60 + 1480))
                  {
                    v61 = v59 - 2 + (v59 - 2) * v70[v53];
                    *(*&v71[v53] + 8 * v59) = v74 + 4 * v61;
                    *(*&v71[v53] + 8 * v59) -= 4;
                    *(*&v54[v53] + 8 * v59) = v73 + 4 * v61;
                    *(*&v54[v53] + 8 * v59) -= 4;
                    result = UNICORN__FindMsdPDF(v53, v59, v81, v80, v72, *&v75[4 * v53]);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }

                  else if (*(v60 + 1476))
                  {
                    result = UNICORN__FindContPDF(v53, v59, v81, v80, *&v75[4 * v53]);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }

                  ++v58;
                  v57 += 16;
                }

                while (v58 < *(v78 + v53));
                v16 = *(a1 + 32);
                v4 = v80;
                v13 = v68;
              }
            }

            ++v53;
          }

          while (v53 < v16);
        }

        ++v13;
        a3 = v72;
        if (v13 >= *(a1 + 392))
        {
          v12 = *(v72 + 28);
          goto LABEL_65;
        }
      }

      v20[1].i32[0] = UNICORN__TreeSearch(*(a1 + 8), v13, (v80 + 64), 0, 0);
      result = UNICORN__log_select_Diag(v79, 6, "DUR pdf id %d\n");
      if (a3[7])
      {
        v50 = *v80;
        if (v50 >= 1)
        {
          v51 = (*(*(*(v80 + 12) + 8 * v20[4].i32[1]) + 8 * v20[1].i32[0]) + 8);
          v52 = (v50 + 2) - 2;
          do
          {
            v19 = v19 + *v51;
            v18 = v18 + v51[v50];
            ++v51;
            --v52;
          }

          while (v52);
        }

        goto LABEL_46;
      }

      result = UNICORN__FindDurPDF(v20, v80, 0, v20[4].i32[1], *(a1 + 16));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      SetSilenceDuration_1(a1, v80, a3, v20);
      goto LABEL_45;
    }

    v19 = 0.0;
    v18 = 0.0;
LABEL_65:
    if (v12 < 1 || (v62 = UNICORN__int32_to_Q18_14(result, v12), v63 = UNICORN__div_Q18_14_Q18_14_to_Q18_14(v62 - v19, v18), *(a1 + 16) = UNICORN__Q18_14_to_Q1_15(v63), *(a1 + 392) < 1))
    {
LABEL_70:
      if (UNICORN__log_select_GetLogLevel(*(v79 + 32)) >= 0x15)
      {
        OutLabel_2(a1);
      }

      UNICORN__log_select_Diag(v79, 2, ">> tree search done\n");
      AddBreakMarks_1(a1, v4, a3);

      return ParamGenLT_1(a1, v4);
    }

    else
    {
      v64 = 0;
      v65 = 0;
      while (1)
      {
        v66 = (*(a1 + 384) + v64);
        result = UNICORN__FindDurPDF(v66, v4, 0, v66[4].i32[1], *(a1 + 16));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        SetSilenceDuration_1(a1, v4, a3, v66);
        *(a1 + 408) += v66[3].i32[0];
        ++v65;
        v64 += 312;
        if (v65 >= *(a1 + 392))
        {
          goto LABEL_70;
        }
      }
    }
  }

  return result;
}

void SetSilenceDuration_1(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  v4 = *(a1 + 8);
  v5 = *a4;
  if (*(*(v4 + 32) + v5) == 1)
  {
    v8 = *(*(v4 + 1784) + 2 * v5) / *(a3 + 24);
    LODWORD(v4) = *a2;
    if (v8 <= *a2)
    {
      if (v4 >= 1)
      {
        v13 = (*(a4 + 2) + 8);
        v14 = 1;
        do
        {
          *v13++ = 1;
          ++v14;
        }

        while (v14 <= *a2);
        LODWORD(v4) = *a2;
      }

      a4[6] = v4;
    }

    else
    {
      if (v8 >= a4[6])
      {
        if (v4 < 1)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v12 = 0;
          v11 = 0;
          v15 = *(a4 + 2);
          v16 = 2;
          do
          {
            v17 = *(v15 + 4 * v16);
            if (v17 <= 0)
            {
              v17 = 1;
              *(v15 + 4 * v16) = 1;
              LODWORD(v4) = *a2;
            }

            v18 = v16 == 2 || v16 == v4 + 1;
            if (v18)
            {
              v19 = 0;
            }

            else
            {
              v19 = v17;
            }

            v11 += v19;
            if (!v18)
            {
              v17 = 0;
            }

            v12 += v17;
            v20 = v16++ <= v4;
          }

          while (v20);
        }
      }

      else
      {
        if (v4 >= 1)
        {
          v9 = (*(a4 + 2) + 8);
          v10 = 1;
          do
          {
            *v9++ = 1;
            v4 = *a2;
            ++v10;
          }

          while (v10 <= v4);
        }

        v11 = v4 - 2;
        v12 = 2;
      }

      v21 = UNICORN__div_int32_int32_to_Q8_24((v8 - v12), v11);
      a4[6] = v12;
      LODWORD(v22) = *a2;
      if (*a2 >= 3)
      {
        v23 = v21;
        v24 = 3;
        do
        {
          if (v24 >= v22)
          {
            v25 = v8 - v12;
          }

          else
          {
            v25 = UNICORN__mul_int32_Q8_24_to_int32(*(*(a4 + 2) + 4 * v24), v23);
          }

          if (v25 <= 1)
          {
            v25 = 1;
          }

          *(*(a4 + 2) + 4 * v24) = v25;
          v12 = a4[6] + v25;
          a4[6] = v12;
          v22 = *a2;
          v20 = v24++ < v22;
        }

        while (v20);
      }
    }
  }
}

uint64_t OutLabel_2(uint64_t result)
{
  if (*(result + 392) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v1 + 384) + v2;
      result = UNICORN__log_select_Diag(*v1, 21, "%d %d %d [%d]\n");
      v4 += *(v5 + 24);
      ++v3;
      v2 += 312;
    }

    while (v3 < *(v1 + 392));
  }

  return result;
}

uint64_t AddBreakMarks_1(uint64_t a1, int *a2, uint64_t a3)
{
  result = cstdlib_strcmp(*(a3 + 80), "PHRASE_TIME");
  if (result)
  {
    result = cstdlib_strcmp(*(a3 + 80), "PHRASE");
    if (result)
    {
      result = cstdlib_strcmp(*(a3 + 80), "WORD");
      if (result)
      {
        result = cstdlib_strcmp(*(a3 + 80), "SYLLABLE");
        if (result)
        {
          result = cstdlib_strcmp(*(a3 + 80), "TIME");
          if (result)
          {
            result = cstdlib_strcmp(*(a3 + 80), "NONE");
            if (result)
            {
              v12 = *a1;

              return UNICORN__log_select_Error(v12, 55036, "valid breaker is required\n", v7, v8, v9, v10, v11);
            }
          }

          else
          {
            v37 = *(a1 + 392);
            if (v37 >= 1)
            {
              v38 = 0;
              v39 = 0;
              v40 = *(a3 + 88);
              v41 = *a2;
              v42 = *(a1 + 384);
              v43 = v40;
              v44 = 0;
              do
              {
                result = v42 + 312 * v38;
                if (v41 >= 1)
                {
                  v45 = (*(result + 16) + 8);
                  v46 = (v41 + 2) - 2;
                  v44 = v39;
                  do
                  {
                    v47 = *v45++;
                    v44 += v47;
                    --v46;
                  }

                  while (v46);
                }

                if (v44 > v43)
                {
                  v43 = v39 + v40;
                  *(result + 4) |= 2u;
                }

                ++v38;
                v39 = v44;
              }

              while (v38 != v37);
            }
          }
        }

        else
        {
          v33 = *(a1 + 392);
          if (v33 >= 3)
          {
            v34 = (v33 - 2);
            v35 = *(a1 + 384);
            v36 = *(*(a1 + 8) + 112);
            do
            {
              if (*(v36 + *v35))
              {
                v35[79] |= 2u;
              }

              v35 += 78;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v29 = *(a1 + 392);
        if (v29 >= 3)
        {
          v30 = (v29 - 2);
          v31 = *(a1 + 384);
          v32 = *(*(a1 + 8) + 112);
          do
          {
            if ((*(v32 + *v31) & 0xFE) == 2)
            {
              v31[79] |= 2u;
            }

            v31 += 78;
            --v30;
          }

          while (v30);
        }
      }
    }

    else
    {
      v25 = *(a1 + 392);
      if (v25 >= 3)
      {
        v26 = (v25 - 2);
        v27 = *(a1 + 384);
        v28 = *(*(a1 + 8) + 112);
        do
        {
          if (*(v28 + *v27) == 3)
          {
            v27[79] |= 2u;
          }

          v27 += 78;
          --v26;
        }

        while (v26);
      }
    }
  }

  else
  {
    v13 = *(a1 + 392);
    if (v13 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = *(a1 + 384);
      v17 = *a2;
      v18 = *(a3 + 88);
      v19 = *(*(a1 + 8) + 112);
      do
      {
        result = v16 + 312 * v14;
        if (v17 < 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v21 = (*(result + 16) + 8);
          v22 = (v17 + 2) - 2;
          do
          {
            v23 = *v21++;
            v20 += v23;
            --v22;
          }

          while (v22);
        }

        v15 += v20;
        if (v15 > v18)
        {
          *(result + 4) |= 2u;
          v15 = v20;
        }

        if (*(v19 + *result) == 3 && v14 < v13 - 2)
        {
          v15 = 0;
          *(result + 316) |= 2u;
        }

        ++v14;
      }

      while (v14 != v13);
    }
  }

  return result;
}

uint64_t ParamGenLT_1(uint64_t a1, int *a2)
{
  v3 = *a1;
  v4 = 2229280778;
  memset(__b, 0, 512);
  memset(v59, 0, sizeof(v59));
  memset(v58, 0, sizeof(v58));
  cstdlib_memset(__b, 0, 0x2D8uLL);
  UNICORN__InitSMatrices(v3, v59);
  UNICORN__InitSMatrices(v3, v58);
  v5 = heap_Calloc(*(v3 + 8), (*(a1 + 408) + 1), 1);
  *(a1 + 48) = v5;
  if (!v5)
  {
    return v4;
  }

  v6 = heap_Calloc(*(v3 + 8), (*(a1 + 408) + 1), 4);
  *(a1 + 40) = v6;
  if (!v6)
  {
    return v4;
  }

  v7 = *(a1 + 392);
  if (v7 >= 1)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    LODWORD(v10) = *a2;
    do
    {
      if (v10 >= 1)
      {
        v11 = (*(a1 + 384) + 312 * v8);
        v12 = v11[2];
        v13 = 2;
        do
        {
          if (*(v12 + 4 * v13) >= 1)
          {
            v14 = 0;
            v9 = v9;
            do
            {
              *(*(a1 + 48) + v9) = *(v11[22] + v13);
              *(*(a1 + 40) + 4 * v9++) = *(v11[23] + 4 * v13);
              v12 = v11[2];
              ++v14;
            }

            while (v14 < *(v12 + 4 * v13));
          }

          v15 = *(a1 + 32);
          if (v15 >= 1)
          {
            v16 = *(a1 + 24);
            do
            {
              if (v16[370] && ((*(v11[22] + v13) >> v16[1]) & 1) != 0)
              {
                v16[9] += *(v12 + 4 * v13);
              }

              v16 += 380;
              --v15;
            }

            while (v15);
          }

          v10 = *a2;
          v17 = v13++ <= v10;
        }

        while (v17);
        v7 = *(a1 + 392);
      }

      ++v8;
    }

    while (v8 < v7);
  }

  if (*(a1 + 32) < 1)
  {
    v4 = 0;
    goto LABEL_62;
  }

  v18 = 0;
  v19 = 0;
  v4 = 0;
  while (1)
  {
    v20 = *(a1 + 24) + 1520 * v18;
    if (*(v20 + 1480))
    {
      break;
    }

LABEL_58:
    if (++v18 >= *(a1 + 32))
    {
      goto LABEL_62;
    }
  }

  if (!*(v20 + 36))
  {
LABEL_57:
    UNICORN__DeInitMSDUttModel((a1 + 56), v18);
    goto LABEL_58;
  }

  inited = UNICORN__InitPStreamParam((v20 + 16), 0);
  if ((inited & 0x80000000) == 0)
  {
    v22 = UNICORN__InitPStreamSM((v20 + 16), v59);
    v4 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_62;
    }

    v23 = *(a1 + 392);
    if (v23 >= 1)
    {
      v52 = v22;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = *a2;
      v57 = v18;
      do
      {
        if (v27 >= 1)
        {
          v53 = v24;
          v28 = *(a1 + 384) + 312 * v24;
          v29 = v28 + 96;
          v30 = v28 + 136;
          v55 = v28;
          v31 = *(v28 + 16);
          v32 = 2;
          do
          {
            if (*(v31 + 4 * v32) >= 1)
            {
              v33 = v26;
              v34 = *(a1 + 24);
              v35 = 1;
              do
              {
                if (*(v34 + 1520 * v18 + 28) >= 1)
                {
                  v56 = v35;
                  v36 = 0;
                  do
                  {
                    v37 = 1 << *(v34 + 1520 * v18 + 4);
                    v19 |= v37;
                    v38 = *(*(*(v20 + 48) + 8) + 8 * v36);
                    v40 = *v38;
                    v39 = v38[1];
                    if (v40 <= v39)
                    {
                      v41 = v39 - v40 + 1;
                      v42 = v26 + v40;
                      do
                      {
                        v43 = v37 ^ 0xFFLL;
                        if ((v42 & 0x80000000) == 0)
                        {
                          v43 = v37 ^ 0xFFLL;
                          if (*(a1 + 408) >= v42)
                          {
                            v43 = *(*(a1 + 48) + v42);
                          }
                        }

                        v19 &= v43;
                        ++v42;
                        --v41;
                      }

                      while (v41);
                    }

                    if ((v37 & *(*(a1 + 48) + v33)) != 0)
                    {
                      if (!v36 || (v37 & v19) != 0)
                      {
                        v45 = 4 * v36 + 4;
                        *(*(*(v20 + 88) + 8 * v25) + 4 * v36) = *(*(*(v29 + 8 * v18) + 8 * v32) + v45);
                        v46 = *(*(*(v30 + 8 * v18) + 8 * v32) + v45);
                        if (*(v34 + 1520 * v18 + 1484))
                        {
                          *(*(*(v20 + 96) + 8 * v25) + 4 * v36) = v46;
                        }

                        else
                        {
                          v47 = v20;
                          v48 = v29;
                          v49 = v26;
                          v50 = UNICORN__bet5_finv(v46);
                          v26 = v49;
                          v29 = v48;
                          v20 = v47;
                          v18 = v57;
                          *(*(*(v20 + 96) + 8 * v25) + 4 * v36) = v50;
                          v34 = *(a1 + 24);
                        }
                      }

                      else
                      {
                        v44 = *(v20 + 96);
                        *(*(*(v20 + 88) + 8 * v25) + 4 * v36) = 0;
                        *(*(v44 + 8 * v25) + 4 * v36) = 0;
                      }
                    }

                    ++v36;
                  }

                  while (v36 < *(v34 + 1520 * v18 + 28));
                  v31 = *(v55 + 16);
                  v35 = v56;
                }

                v25 += (*(*(a1 + 48) + v33++) >> *(v34 + 1520 * v18 + 4)) & 1;
                v26 = (v26 + 1);
                v17 = v35++ < *(v31 + 4 * v32);
              }

              while (v17);
              v27 = *a2;
              v26 = v33;
            }

            v17 = v32++ <= v27;
          }

          while (v17);
          v23 = *(a1 + 392);
          v24 = v53;
        }

        ++v24;
      }

      while (v24 < v23);
      if (v25 >= 1)
      {
        (**(*(a1 + 24) + 1520 * v18 + 1496))(v20 + 16, 0);
      }

      v4 = v52;
    }

    UNICORN__FreePStreamSM(v20 + 16);
    goto LABEL_57;
  }

  v4 = inited;
LABEL_62:
  UNICORN__FreePStreamParam(__b);
  UNICORN__FreeSMatrices(v59);
  UNICORN__FreeSMatrices(v58);
  return v4;
}

uint64_t UNICORN__ParamGenFrames(uint64_t *a1, int *a2, _DWORD *a3)
{
  v4 = a1;
  v5 = *a1;
  memset(__b, 0, 512);
  memset(v102, 0, sizeof(v102));
  memset(v101, 0, sizeof(v101));
  *a3 = 0;
  cstdlib_memset(__b, 0, 0x2D8uLL);
  UNICORN__InitSMatrices(v5, v102);
  UNICORN__InitSMatrices(v5, v101);
  v6 = *(v4 + 99);
  v7 = v4[48] + 312 * v6;
  *(v7 + 4) &= ~2u;
  v8 = *(v4 + 98);
  v9 = __OFSUB__(v8, v6);
  v10 = v8 - v6;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    LODWORD(v12) = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    LODWORD(v12) = 0;
    while ((*(v7 + 4) & 2) == 0)
    {
      v13 = *a2;
      if (v13 >= 1)
      {
        v14 = (*(v7 + 16) + 8);
        do
        {
          v15 = *v14++;
          LODWORD(v12) = v15 + v12;
          --v13;
        }

        while (v13);
      }

      v7 += 312;
      if (++v11 == v10)
      {
        v11 = v10;
        break;
      }
    }
  }

  UNICORN__log_select_Diag(v5, 2, "| processing %d models %d frames <=> ");
  if (*(v4 + 8) >= 1)
  {
    v93 = a2;
    v94 = v11;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    inited = 0;
    v91 = -v11;
    v99 = v4;
    while (1)
    {
      v21 = v4[3];
      v22 = v21 + 1520 * v16;
      if (*(v22 + 1476))
      {
        if (*(v22 + 56))
        {
          v23 = v19;
          UNICORN__FreePStreamParam((v22 + 16));
          v19 = v23;
          v4 = v99;
          v21 = v99[3];
        }

        v24 = v21 + 1520 * v16;
        v25 = *(v24 + 1488);
        v96 = *(v24 + 1492);
        v26 = *(v4 + 99);
        v27 = *(v4 + 98);
        if ((v17 + v11 + v26) < v27 && v18 < v25)
        {
          v29 = *v93;
          v30 = v7;
          do
          {
            if (v29 >= 1)
            {
              v31 = (*(v30 + 16) + 8);
              v32 = (v29 + 2) - 2;
              do
              {
                v33 = *v31++;
                v18 += v33;
                --v32;
              }

              while (v32);
            }

            v30 += 312;
            v17 = (v17 + 1);
          }

          while ((v17 + v11 + v26) < v27 && v18 < v25);
        }

        if (v26 > v19 && v20 < v25)
        {
          v35 = v7 + 312 * v91;
          v36 = *v93;
          do
          {
            if (v36 >= 1)
            {
              v37 = (*(v35 - 296) + 8);
              v38 = (v36 + 2) - 2;
              do
              {
                v39 = *v37++;
                v20 += v39;
                --v38;
              }

              while (v38);
            }

            v19 = (v19 + 1);
            if (v26 <= v19)
            {
              break;
            }

            v35 -= 312;
          }

          while (v20 < v25);
        }

        v92 = v17;
        v98 = v19;
        UNICORN__log_select_Diag(v5, 3, "L: %d %d  R: %d %d\n");
        *(v22 + 764) = v96 + v12 + v18 + v20 + v96;
        *(v22 + 36) = v12;
        inited = UNICORN__InitPStreamParam((v22 + 16), 0);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        v40 = *(v22 + 32);
        if (v40 >= 1)
        {
          v41 = 0;
          v19 = v98;
          v100 = v17 + v11 + v98;
          v42 = 0;
          while (1)
          {
            if (*(*(v99[3] + 1520 * v16 + 1512) + 4 * v42) == 1)
            {
              v97 = v42;
              v43 = UNICORN__InitPStreamParam((v22 + 744), __b);
              if ((v43 & 0x80000000) != 0)
              {
                v45 = v43;
                goto LABEL_97;
              }

              v44 = UNICORN__InitPStreamSM((v22 + 744), v101);
              v45 = v44;
              if ((v44 & 0x80000000) != 0)
              {
                goto LABEL_97;
              }

              inited = v44;
              if (v96 < 1)
              {
                LODWORD(v46) = 0;
                v48 = v98;
              }

              else
              {
                v46 = 0;
                v47 = *(v22 + 764) & ~(*(v22 + 764) >> 31);
                v48 = v98;
                do
                {
                  if (v46 == v47)
                  {
                    break;
                  }

                  v49 = **(v22 + 776);
                  if (v49 >= 1)
                  {
                    v50 = *(*(v22 + 816) + 8 * v46);
                    v51 = *(*(v22 + 824) + 8 * v46);
                    do
                    {
                      *v50++ = 0;
                      *v51++ = 1065353216;
                      --v49;
                    }

                    while (v49);
                  }

                  ++v46;
                }

                while (v46 != v96);
              }

              LODWORD(v12) = v46;
              if (v100 >= 1)
              {
                v52 = 0;
                v53 = v99[48];
                v54 = *(v99 + 99);
                v55 = *v93;
                v56 = (*v93 + 2);
                LODWORD(v12) = v46;
                do
                {
                  v7 = v53 + 312 * (v52 - v48 + v54);
                  if (v55 >= 1)
                  {
                    v57 = *(v7 + 16);
                    v58 = 2;
                    do
                    {
                      v59 = *(v57 + 4 * v58);
                      if (v59 >= 1)
                      {
                        v60 = **(v22 + 776);
                        v12 = v12;
                        v61 = 1;
                        do
                        {
                          if (v60 >= 1)
                          {
                            v62 = *(*(v7 + 96 + 8 * v16) + 8 * v58);
                            v63 = *(*(v22 + 816) + 8 * v12);
                            v64 = *(*(v7 + 136 + 8 * v16) + 8 * v58);
                            v65 = *(*(v22 + 824) + 8 * v12);
                            v66 = 4 * *(v22 + 32);
                            v67 = v60;
                            v68 = v41;
                            do
                            {
                              *v63++ = *(v62 + v68);
                              *v65++ = *(v64 + v68);
                              v68 += v66;
                              --v67;
                            }

                            while (v67);
                          }

                          ++v12;
                        }

                        while (v61++ != v59);
                      }

                      ++v58;
                    }

                    while (v58 != v56);
                  }

                  ++v52;
                }

                while (v52 != v100);
              }

              if (*(v99[3] + 1520 * v16 + 1484))
              {
                v70 = 0;
              }

              else
              {
                v70 = v46 < v12;
              }

              if (v70)
              {
                v71 = v46;
                LODWORD(v46) = **(v22 + 776);
                do
                {
                  if (v46 >= 1)
                  {
                    v72 = v7;
                    v73 = 0;
                    v74 = *(*(v22 + 824) + 8 * v71);
                    do
                    {
                      v75 = UNICORN__bet5_finv(*(v74 + 4 * v73));
                      v74 = *(*(v22 + 824) + 8 * v71);
                      *(v74 + 4 * v73++) = v75;
                      v46 = **(v22 + 776);
                    }

                    while (v73 < v46);
                    v7 = v72;
                  }

                  ++v71;
                }

                while (v71 != v12);
              }

              v76 = *(v22 + 764);
              if (v12 >= v76)
              {
                v11 = v94;
                v42 = v97;
              }

              else
              {
                v77 = **(v22 + 776);
                v78 = v12;
                v11 = v94;
                v42 = v97;
                do
                {
                  if (v77 >= 1)
                  {
                    v79 = *(*(v22 + 816) + 8 * v78);
                    v80 = *(*(v22 + 824) + 8 * v78);
                    v81 = v77;
                    do
                    {
                      *v79++ = 0;
                      *v80++ = 1065353216;
                      --v81;
                    }

                    while (v81);
                  }

                  ++v78;
                }

                while (v78 != v76);
                LODWORD(v12) = v76;
              }

              (*(*(v99[3] + 1520 * v16 + 1496) + 8 * v42))(v22 + 744, 0);
              v82 = *(v22 + 36);
              if (v82 >= 1)
              {
                v83 = *(v22 + 56);
                v84 = (*(v22 + 784) + 8 * (v20 + v96));
                do
                {
                  v85 = *v84++;
                  v86 = *v85;
                  v87 = *v83++;
                  *(v87 + 4 * v42) = v86;
                  --v82;
                }

                while (v82);
              }

              UNICORN__FreePStreamSM(v22 + 744);
              UNICORN__FreePStreamParam((v22 + 744));
              v40 = *(v22 + 32);
              v19 = v98;
            }

            ++v42;
            v41 += 4;
            if (v42 >= v40)
            {
              v4 = v99;
              v17 = v92;
              goto LABEL_90;
            }
          }
        }

        v19 = v98;
      }

LABEL_90:
      if (++v16 >= *(v4 + 8))
      {
        goto LABEL_93;
      }
    }
  }

  inited = 0;
LABEL_93:
  v88 = *(v4 + 99) + v11;
  *(v4 + 99) = v88;
  if (v88 >= *(v4 + 98))
  {
    *a3 = 1;
  }

LABEL_95:
  v45 = inited;
LABEL_97:
  UNICORN__FreePStreamParam(__b);
  UNICORN__FreeSMatrices(v102);
  UNICORN__FreeSMatrices(v101);
  return v45;
}

uint64_t UNICORN__InitVData(int a1, char *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0x238uLL);
  result = UNICORN__InitModelSet(a1, __b, a3);
  if ((result & 0x80000000) == 0)
  {
    result = UNICORN__InitTreeSet(a1, __b + 256);
    if ((result & 0x80000000) == 0)
    {

      return UNICORN__InitDWinSet(a1, __b + 368, a3);
    }
  }

  return result;
}

void *UNICORN__DeInitVData(void *a1, char *a2)
{
  UNICORN__DeInitModelSet(a1, a2);
  UNICORN__DeInitTreeSet(a1, a2 + 256);
  UNICORN__DeInitDWinSet(a1, a2 + 368);

  return cstdlib_memset(a2, 0, 0x238uLL);
}

uint64_t UNICORN__LoadVData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 244) < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a3 + 1288);
  v8 = a2 + 368;
  v9 = (a3 + 2008);
  do
  {
    ModelFile = UNICORN__LoadModelFile(a1, a2, v6, (v9 - 150), a3);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = UNICORN__LoadTreesFile(a1, a2 + 256, v6, v7, a3, v11, v12, v13);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = UNICORN__LoadDWinFile(a1, v8, v6, v9);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ++v6;
    v19 = *(a2 + 244);
    v9 += 30;
    v7 += 6;
  }

  while (v6 < v19);
  if (v19 < 1)
  {
    return 0;
  }

  v20 = 0;
  v21 = a2 + 104;
  v22 = a2 + 224;
  v23 = a2 + 144;
  while (1)
  {
    if (!*(a2 + 312 + 8 * v20))
    {
      v27 = 2229280775;
      v29 = "%s tree is required\n";
      v30 = a1;
      v31 = 55032;
      goto LABEL_37;
    }

    if (*(a2 + 184 + 4 * v20) && !*(a2 + 96))
    {
LABEL_38:
      v27 = 2229280775;
      v29 = "%s PDF is required\n";
      v30 = a1;
      v31 = 55033;
      goto LABEL_37;
    }

    v24 = *(a2 + 204 + 4 * v20);
    if (v24)
    {
      if (!*(v21 + 8 * v20))
      {
        goto LABEL_38;
      }

      if (!*(v22 + 4 * v20))
      {
        v25 = 1;
        goto LABEL_19;
      }
    }

    else if (!*(v22 + 4 * v20))
    {
      goto LABEL_31;
    }

    if (!*(v23 + 8 * v20))
    {
      goto LABEL_38;
    }

    v25 = 0;
LABEL_19:
    v14 = *(a2 + 72 + 4 * v20);
    if (v14 >= 1)
    {
      break;
    }

LABEL_26:
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    if ((v26 & 1) == 0)
    {
      v14 = (*(a2 + 4 + 4 * v20) % *(v8 + 40 * v20));
      if (v14)
      {
        v27 = 2229280775;
        v29 = "The number of dynamic windows for %s is not correct %d %d\n";
        v30 = a1;
        v31 = 55035;
        goto LABEL_37;
      }
    }

LABEL_31:
    v27 = 0;
    if (++v20 == v19)
    {
      return v27;
    }
  }

  v15 = 0;
  while (1)
  {
    if (v24)
    {
      v16 = *(*(v21 + 8 * v20) + 8 * v15);
      if (!v16)
      {
        break;
      }
    }

    if ((v25 & 1) == 0)
    {
      v16 = *(*(v23 + 8 * v20) + 8 * v15);
      if (!v16)
      {
        break;
      }
    }

    if (v14 == ++v15)
    {
      goto LABEL_26;
    }
  }

  v27 = 2229280775;
  v29 = "%s PDF layer %d is required\n";
  v30 = a1;
  v31 = 55034;
LABEL_37:
  UNICORN__log_select_Error(v30, v31, v29, v14, v15, v16, v17, v18);
  return v27;
}

uint64_t UNICORN__InitVStream(uint64_t a1, char *__b, _DWORD *a3)
{
  cstdlib_memset(__b, 0, 0x430uLL);
  *__b = a1;
  v6 = a3[33];
  *(__b + 8) = v6;
  v7 = heap_Calloc(*(a1 + 8), v6, 1520);
  *(__b + 3) = v7;
  if (!v7)
  {
    return 2229280778;
  }

  if (*(__b + 8) >= 1)
  {
    v8 = 0;
    v9 = __b + 432;
    v10 = a3 + 36;
    do
    {
      cstdlib_strcpy(v9, "");
      if (cstdlib_strlen(*&v10[2 * v8]))
      {
        cstdlib_strcpy(v9, *&v10[2 * v8]);
      }

      ++v8;
      v11 = *(__b + 8);
      v9 += 128;
    }

    while (v8 < v11);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = *(__b + 3);
      v14 = a3[18];
      v15 = 1520 * v11;
      do
      {
        v16 = v13 + v12;
        *(v16 + 4) = a3[46];
        *(v16 + 16) = a1;
        *(v16 + 744) = a1;
        if (v12)
        {
          if (a3[287])
          {
            *(v13 + v12 + 1480) = 1;
          }

          else
          {
            *(v13 + v12 + 1476) = 1;
          }
        }

        else
        {
          *(v13 + 1472) = 1;
        }

        if (v14 == 1)
        {
          *(v13 + v12 + 1484) = 1;
        }

        v12 += 1520;
        ++a3;
      }

      while (v15 != v12);
    }
  }

  return 0;
}

uint64_t UNICORN__LoadVStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 368;
  v6 = a2 + 4;
  v7 = a3 + 1168;
  v8 = a3 + 1208;
  v9 = a3 + 1248;
  v10 = *(a1 + 24);
  v49 = a2 + 368;
  v50 = a3;
  v48 = a2 + 4;
  while (1)
  {
    v11 = (v5 + 40 * v4);
    v12 = v10 + 1520 * v4;
    *(v12 + 48) = v11;
    v13 = *(v12 + 1476);
    if (v13)
    {
      *(v12 + 776) = v11;
    }

    if (*(v12 + 1472))
    {
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v15 = *(v6 + 4 * v4);
    *(v12 + 28) = v15;
    v16 = v15 / *v11;
    v17 = v10 + 1520 * v4;
    *(v17 + 32) = v16;
    *(v17 + 1488) = *(a3 + 92);
    v18 = heap_Calloc(*(*a1 + 8), (2 * v16), 8);
    v19 = *(a1 + 24);
    *(v19 + 1520 * v4 + 1496) = v18;
    if (!v18)
    {
      return 2229280778;
    }

    v20 = v19 + 1520 * v4;
    v21 = *(v20 + 32);
    *(v20 + 1504) = v18 + 8 * v21;
    if (v21 >= 1)
    {
      break;
    }

LABEL_27:
    v40 = heap_Calloc(*(*a1 + 8), v21, 4);
    v41 = *(a1 + 24);
    *(v41 + 1520 * v4 + 1512) = v40;
    if (!v40)
    {
      return 2229280778;
    }

    if (*(v41 + 1520 * v4 + 32) >= 1)
    {
      for (i = 0; i < *(v44 + 32); ++i)
      {
        if (cstdlib_strcmp(*(*(v9 + 8 * v4) + 8 * i), "OFF"))
        {
          if (cstdlib_strcmp(*(*(v9 + 8 * v4) + 8 * i), "ON"))
          {
            v46 = *a1;
            v47 = "valid breaker setting is required for stream %d\n";
            goto LABEL_40;
          }

          v43 = 1;
        }

        else
        {
          v43 = 0;
        }

        v44 = *(a1 + 24) + 1520 * v4;
        *(*(v44 + 1512) + 4 * i) = v43;
      }
    }

    UNICORN__log_select_Diag(*a1, 1, "%s: vSize = %d, order = %d, nLayer = %d\n");
    v10 = *(a1 + 24);
    v5 = v49;
    a3 = v50;
    v6 = v48;
    if (*(v10 + 1520 * v4 + 1476))
    {
LABEL_7:
      v14 = v10 + 1520 * v4;
      *(v14 + 756) = *(v6 + 4 * v4);
      *(v14 + 760) = 1;
    }

LABEL_8:
    if (++v4 >= *(a1 + 32))
    {
      return 0;
    }
  }

  v22 = 0;
  while (1)
  {
    v23 = cstdlib_strcmp(*(*(v7 + 8 * v4) + 8 * v22), "MLPG");
    v24 = UNICORN__mlpg;
    if (v23)
    {
      v25 = cstdlib_strcmp(*(*(v7 + 8 * v4) + 8 * v22), "MLPG2");
      v24 = UNICORN__mlpg2;
      if (v25)
      {
        v26 = cstdlib_strcmp(*(*(v7 + 8 * v4) + 8 * v22), "MLPG_OPT");
        v24 = UNICORN__mlpg_opt;
        if (v26)
        {
          v27 = cstdlib_strcmp(*(*(v7 + 8 * v4) + 8 * v22), "DUMMY_SOLVER");
          v24 = UNICORN__dummy_solver;
          if (v27)
          {
            break;
          }
        }
      }
    }

    *(*(*(a1 + 24) + 1520 * v4 + 1496) + 8 * v22) = v24;
    v33 = *(v8 + 8 * v4);
    if (v33)
    {
      v34 = *(v33 + 8 * v22);
      if (v34)
      {
        v35 = cstdlib_strcmp(v34, "MLPG");
        v36 = UNICORN__mlpg;
        if (v35 && (v37 = cstdlib_strcmp(*(*(v8 + 8 * v4) + 8 * v22), "MLPG2"), v36 = UNICORN__mlpg2, v37) && (v38 = cstdlib_strcmp(*(*(v8 + 8 * v4) + 8 * v22), "MLPG_OPT"), v36 = UNICORN__mlpg_opt, v38) && (v39 = cstdlib_strcmp(*(*(v8 + 8 * v4) + 8 * v22), "DUMMY_SOLVER"), v36 = UNICORN__dummy_solver, v39))
        {
          if (**(*(v8 + 8 * v4) + 8 * v22))
          {
            v46 = *a1;
            v47 = "invalid solver 2 for stream %d: %s\n";
            goto LABEL_40;
          }
        }

        else
        {
          *(*(*(a1 + 24) + 1520 * v4 + 1504) + 8 * v22) = v36;
        }
      }
    }

    ++v22;
    v21 = *(*(a1 + 24) + 1520 * v4 + 32);
    if (v22 >= v21)
    {
      goto LABEL_27;
    }
  }

  v46 = *a1;
  v47 = "invalid solver for stream %d: %s\n";
LABEL_40:
  UNICORN__log_select_Error(v46, 55036, v47, v28, v29, v30, v31, v32);
  return 2229280775;
}

void *UNICORN__DeInitVStream(void *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      if (*(result + 8) >= 1)
      {
        v2 = 0;
        v3 = result[3];
        v4 = 1512;
        do
        {
          if (!v3)
          {
            break;
          }

          UNICORN__FreePStreamSM(v3 + v4 - 1496);
          UNICORN__FreePStreamParam((v1[3] + v4 - 1496));
          UNICORN__FreePStreamSM(v1[3] + v4 - 768);
          UNICORN__FreePStreamParam((v1[3] + v4 - 768));
          v3 = v1[3];
          v5 = *(v3 + v4 - 16);
          if (v5)
          {
            heap_Free(*(*v1 + 8), v5);
            v3 = v1[3];
            *(v3 + v4 - 16) = 0;
          }

          v6 = *(v3 + v4);
          if (v6)
          {
            heap_Free(*(*v1 + 8), v6);
            v3 = v1[3];
            *(v3 + v4) = 0;
          }

          ++v2;
          v4 += 1520;
        }

        while (v2 < *(v1 + 8));
      }

      v7 = v1[6];
      if (v7)
      {
        heap_Free(*(*v1 + 8), v7);
        v1[6] = 0;
      }

      v8 = v1[5];
      if (v8)
      {
        heap_Free(*(*v1 + 8), v8);
        v1[5] = 0;
      }

      v9 = v1[3];
      if (v9)
      {
        heap_Free(*(*v1 + 8), v9);
        v1[3] = 0;
      }

      UNICORN__DeInitUttModel(v1 + 7);

      return cstdlib_memset(v1, 0, 0x430uLL);
    }
  }

  return result;
}

void *UNICORN__InitVParam(_DWORD *a1)
{
  result = cstdlib_memset(a1, 0, 0x1528uLL);
  a1[32] = 1;
  return result;
}

void *UNICORN__DeInitVParam(uint64_t a1, void *__b)
{
  if (__b[676])
  {
    for (i = 0; i != 20; ++i)
    {
      if (*(__b[676] + 8 * i))
      {
        for (j = 0; j != 800; j += 8)
        {
          v6 = *(*(__b[676] + 8 * i) + j);
          if (v6)
          {
            heap_Free(*(a1 + 8), v6);
            *(*(__b[676] + 8 * i) + j) = 0;
          }
        }

        v7 = *(__b[676] + 8 * i);
        if (v7)
        {
          heap_Free(*(a1 + 8), v7);
          *(__b[676] + 8 * i) = 0;
        }
      }

      v8 = *(__b[675] + 8 * i);
      if (v8)
      {
        heap_Free(*(a1 + 8), v8);
        *(__b[675] + 8 * i) = 0;
      }

      v9 = *(__b[674] + 8 * i);
      if (v9)
      {
        heap_Free(*(a1 + 8), v9);
        *(__b[674] + 8 * i) = 0;
      }
    }

    v10 = __b[676];
    if (v10)
    {
      heap_Free(*(a1 + 8), v10);
      __b[676] = 0;
    }

    v11 = __b[675];
    if (v11)
    {
      heap_Free(*(a1 + 8), v11);
      __b[675] = 0;
    }

    v12 = __b[674];
    if (v12)
    {
      heap_Free(*(a1 + 8), v12);
      __b[674] = 0;
    }
  }

  v13 = __b[10];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    __b[10] = 0;
  }

  v14 = __b[15];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    __b[15] = 0;
  }

  v15 = __b[632];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    __b[632] = 0;
  }

  v16 = 0;
  v17 = (__b + 18);
  v18 = (__b + 36);
  v19 = __b + 204;
  v20 = (__b + 156);
  v21 = (__b + 146);
  v22 = (__b + 151);
  v23 = __b;
  do
  {
    v24 = *&v17[8 * v16];
    if (v24)
    {
      heap_Free(*(a1 + 8), v24);
      *&v17[8 * v16] = 0;
    }

    v25 = *&v18[8 * v16];
    if (v25)
    {
      heap_Free(*(a1 + 8), v25);
      *&v18[8 * v16] = 0;
    }

    v26 = 5;
    v27 = v23;
    do
    {
      v28 = v27[41];
      if (v28)
      {
        heap_Free(*(a1 + 8), v28);
        v27[41] = 0;
      }

      v29 = v27[91];
      if (v29)
      {
        heap_Free(*(a1 + 8), v29);
        v27[91] = 0;
      }

      ++v27;
      --v26;
    }

    while (v26);
    v30 = 116;
    v18 = (__b + 36);
    do
    {
      v31 = v23[v30];
      if (v31)
      {
        heap_Free(*(a1 + 8), v31);
        v23[v30] = 0;
      }

      ++v30;
    }

    while (v30 != 121);
    if (*&v19[4 * v16])
    {
      v32 = 0;
      do
      {
        v33 = *&v20[8 * v16];
        if (v33)
        {
          v34 = *(v33 + 8 * v32);
          if (v34)
          {
            heap_Free(*(a1 + 8), v34);
            *(*&v20[8 * v16] + 8 * v32) = 0;
          }
        }

        v35 = *&v21[8 * v16];
        if (v35)
        {
          v36 = *(v35 + 8 * v32);
          if (v36)
          {
            heap_Free(*(a1 + 8), v36);
            *(*&v21[8 * v16] + 8 * v32) = 0;
          }
        }

        v37 = *&v22[8 * v16];
        if (v37)
        {
          v38 = *(v37 + 8 * v32);
          if (v38)
          {
            heap_Free(*(a1 + 8), v38);
            *(*&v22[8 * v16] + 8 * v32) = 0;
          }
        }

        ++v32;
      }

      while (v32 < *&v19[4 * v16]);
    }

    v39 = *&v20[8 * v16];
    if (v39)
    {
      heap_Free(*(a1 + 8), v39);
      *&v20[8 * v16] = 0;
    }

    v40 = *&v21[8 * v16];
    v17 = (__b + 18);
    if (v40)
    {
      heap_Free(*(a1 + 8), v40);
      *&v21[8 * v16] = 0;
    }

    v41 = *&v22[8 * v16];
    if (v41)
    {
      heap_Free(*(a1 + 8), v41);
      *&v22[8 * v16] = 0;
    }

    ++v16;
    v23 += 5;
  }

  while (v16 != 5);
  for (k = 341; k != 597; ++k)
  {
    v43 = __b[k];
    if (v43)
    {
      heap_Free(*(a1 + 8), v43);
      __b[k] = 0;
    }
  }

  if (__b[630])
  {
    for (m = 0; m != 2048; m += 8)
    {
      v45 = *(__b[630] + m);
      if (v45)
      {
        heap_Free(*(a1 + 8), v45);
        *(__b[630] + m) = 0;
      }
    }

    heap_Free(*(a1 + 8), __b[630]);
  }

  return cstdlib_memset(__b, 0, 0x1528uLL);
}

uint64_t VectBlock_Create(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = a1;
  if (a2)
  {
    v7 = a2;
    v8 = heap_Calloc(*(a1 + 8), a3, 1);
    *v7 = v8;
    if (v8)
    {
      *(v7 + 8) = a3;
      *(v7 + 12) = a4;
      return 1;
    }

    v10 = "VectBlock_Create, Error, Out of memory\n";
    a1 = v4;
    LODWORD(a2) = 0;
  }

  else
  {
    v10 = "VectBlock_Create, Error, NULL Ptr\n";
  }

  UNICORN__log_select_Diag(a1, a2, v10);
  return 0;
}

void **VectBlock_Destroy(void **result, uint64_t *__b)
{
  if (__b)
  {
    v3 = *__b;
    if (v3)
    {
      heap_Free(result[1], v3);
      *__b = 0;
    }

    return cstdlib_memset(__b, 0, 0x10uLL);
  }

  return result;
}

uint64_t VectBlock_Get_IndexPtr_LH_F32(uint64_t a1, int a2)
{
  if (*a1)
  {
    return *a1 + 4 * (*(a1 + 12) * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t VectBlock_Get_IndexPtr_LH_S32(uint64_t a1, int a2)
{
  if (*a1)
  {
    return *a1 + 4 * (*(a1 + 12) * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t VectBlock_Get_IndexPtr_LH_S8(uint64_t a1, int a2)
{
  if (*a1)
  {
    return *a1 + (*(a1 + 12) * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t VectBlock_Get_IndexPtr_LH_S16(uint64_t a1, int a2)
{
  if (*a1)
  {
    return *a1 + 2 * (*(a1 + 12) * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ANNFactory_CreateANNLibInstance(void *a1, uint64_t a2)
{
  v3 = AnnObject_Create(a2);
  *a1 = v3;
  a1[1] = AnnObject_Open;
  a1[2] = AnnObject_Set;
  a1[3] = AnnObject_Process;
  a1[4] = AnnObject_Get;
  a1[5] = AnnObject_Reset;
  a1[6] = AnnObject_Close;
  a1[7] = AnnObject_SetLayerAdjuster;
  a1[8] = AnnObject_GetInputDimension;
  a1[9] = AnnObject_Destroy;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 2229280778;
  }
}

uint64_t ANNFactory_CreateFastInferInstance(void *a1, uint64_t a2)
{
  v3 = FastInferObject_Create(a2);
  *a1 = v3;
  a1[1] = FastInferObject_Open;
  a1[2] = FastInferObject_BorrowModelInputs;
  a1[3] = FastInferObject_Process;
  a1[4] = FastInferObject_BorrowModelOutputLayer;
  a1[5] = FastInferObject_Reset;
  a1[6] = FastInferObject_Close;
  a1[7] = FastInferObject_SetLayerAdjuster;
  a1[8] = FastInferObject_GetInputDimension;
  a1[9] = FastInferObject_Destroy;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 2229280778;
  }
}

void *NnetGetModel@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  cstdlib_memset(a2, 0, 0x90uLL);
  v4 = heap_Calloc(*(a1 + 8), 1, 16);
  *(a2 + 11) = v4;
  result = NnetInit(v4);
  *(a2 + 8) = NNEval;
  *(a2 + 9) = NNFree;
  *(a2 + 10) = NNReset;
  return result;
}

uint64_t NNEval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  result = NnetForward(a1, *(a2 + 88), *(a2 + 104), *(a2 + 112), *(a2 + 116), a6, a7, a8);
  if (!result)
  {
    OutputLayer = NnetGetOutputLayer(*(a2 + 88));
    if (OutputLayer)
    {
      v11 = OutputLayer;
      result = 0;
      *(a2 + 120) = *(v11 + 24);
      *(a2 + 128) = *(v11 + 32);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *NNFree(void **a1, uint64_t a2)
{
  result = NnetClear(a1, *(a2 + 88));
  v5 = *(a2 + 88);
  if (v5)
  {
    result = heap_Free(a1[1], v5);
    *(a2 + 88) = 0;
  }

  return result;
}

void *NNReset(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 88);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2 + 1;
      do
      {
        result = cstdlib_memset(*(v3 + 24), 0, 4 * (*(v3 + 32) * *(v3 + 36)));
        v6 = *v4++;
        v3 = v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t AdapterGetModel@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  a4[7] = 0u;
  a4[8] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  cstdlib_memset(a4, 0, 0x90uLL);
  v8 = heap_Calloc(*(a1 + 8), 1, 16);
  *(a4 + 11) = v8;
  result = ModelAdapterInit(a1, v8, a2, a3);
  *(a4 + 8) = AdapterEval;
  *(a4 + 9) = AdapterFree;
  *(a4 + 10) = AdapterReset;
  return result;
}

BOOL AdapterEval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 128) = 0;
  v8 = a2 + 128;
  *(a2 + 120) = 0;
  v9 = ModelAdapterEval(a1, *(a2 + 88), (a2 + 128), (a2 + 132), a5, a6, a7, a8);
  *(v8 - 8) = v9;
  return v9 == 0;
}

void *AdapterFree(uint64_t a1, uint64_t a2)
{
  result = ModelAdapterFree(a1, *(a2 + 88));
  v5 = *(a2 + 88);
  if (v5)
  {
    result = heap_Free(*(a1 + 8), v5);
  }

  *(a2 + 88) = 0;
  return result;
}

void *AdapterReset(void *result, uint64_t a2)
{
  v3 = *(a2 + 120);
  if (v3)
  {
    result = heap_Free(result[1], v3);
  }

  *(a2 + 120) = 0;
  return result;
}

uint64_t ModelAdapterInit(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = heap_Calloc(*(a1 + 8), a3, 40);
  *a2 = v7;
  if (!v7)
  {
    return 1;
  }

  result = 0;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
  return result;
}

void *ModelAdapterFree(void *result, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    result = heap_Free(result[1], v3);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t ModelAdapterSet(void *a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  v7 = *a1 + 40 * a2;
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 16) = a4;
  *(v7 + 20) = a5;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  return 0;
}

uint64_t ModelAdapterSetNnet(void *a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  v7 = *a1 + 40 * a2;
  *(v7 + 8) = a3;
  *v7 = 1;
  *(v7 + 16) = a4;
  *(v7 + 20) = a5;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  return 0;
}

uint64_t ModelAdapterEval(uint64_t a1, uint64_t *a2, int *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 2);
  if (*(a2 + 3))
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (!v9)
    {
      return 0;
    }

    v40 = 0;
    v41 = *a2;
    do
    {
      v42 = *(v41 + 8);
      if (!v42)
      {
        return 0;
      }

      if (*v41 == 1)
      {
        v43 = 36;
      }

      else
      {
        if (*v41)
        {
          return 0;
        }

        v43 = 132;
      }

      v40 += ((2 * *(v41 + 24)) | 1) * *(v42 + v43);
      *(a2 + 3) = v40;
      v41 += 40;
      --v9;
    }

    while (v9);
  }

  v10 = 0;
  v48 = 0;
  v11 = 0;
  v12 = *a2;
  while (1)
  {
    v13 = v12 + 40 * v10;
    if (*v13)
    {
      break;
    }

    v18 = *(v13 + 8);
    v15 = (v18 + 120);
    v16 = (v18 + 128);
    v17 = (v18 + 132);
LABEL_9:
    v19 = *v15;
    v54 = *v17;
    v20 = *v16;
    v21 = v12 + 40 * v10;
    v23 = *(v21 + 16);
    v22 = (v21 + 16);
    if (v23 == -1)
    {
      *v22 = 0;
    }

    v24 = v12 + 40 * v10;
    v26 = *(v24 + 20);
    v25 = (v24 + 20);
    if (v26 == -1)
    {
      *v25 = v54 - 1;
      if (v11)
      {
        goto LABEL_17;
      }
    }

    else if (v11)
    {
      goto LABEL_17;
    }

    *a3 = v20;
    v27 = *(a2 + 3);
    *a4 = v27;
    v11 = heap_Calloc(*(a1 + 8), (*a3 * v27), 4);
    if (!v11)
    {
      return v11;
    }

    v12 = *a2;
LABEL_17:
    v28 = (v12 + 40 * v10);
    v29 = v28[6];
    if (((2 * v29) | 1) + ((2 * v29) | 1u) * (v28[5] - v28[4]) + v48 > *a4)
    {
      ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/modeladapter.c", 143, "Error: ModelAdapterEval: Output dimension specified %d is smaller than expected %d.\n", a5, a6, a7, a8);
      return 0;
    }

    v47 = ((2 * v29) | 1) + ((2 * v29) | 1) * (v28[5] - v28[4]) + v48;
    v51 = v11;
    if ((v29 & 0x80000000) == 0)
    {
      v30 = -v29;
      v31 = -(v54 * v29);
      do
      {
        if (v20 >= 1)
        {
          v32 = 0;
          v53 = v28[5] - v28[4];
          v52 = v48 + (v53 + 1) * (v29 + v30);
          v49 = v31;
          do
          {
            if (v32 + v30 >= 0 && v32 + v30 < v20 && (v53 & 0x80000000) == 0)
            {
              v33 = *a2;
              v34 = (v51 + 4 * (v52 + *a4 * v32));
              v35 = *(*a2 + 40 * v10 + 16) + v31;
              v36 = (v53 + 1);
              v37 = v34;
              do
              {
                *v37++ = *(v19 + 4 * v35++);
                --v36;
              }

              while (v36);
              if (*(v33 + 40 * v10 + 32))
              {
                v38 = (v53 + 1);
                do
                {
                  *v34 = (*(*a2 + 40 * v10 + 32))(*v34);
                  ++v34;
                  --v38;
                }

                while (v38);
              }
            }

            ++v32;
            v31 += v54;
          }

          while (v32 != v20);
          v12 = *a2;
          v31 = v49;
        }

        v28 = (v12 + 40 * v10);
        v29 = v28[6];
        v31 += v54;
      }

      while (v30++ < v29);
    }

    ++v10;
    v48 = v47;
    v11 = v51;
    if (v10 >= *(a2 + 2))
    {
      return v11;
    }
  }

  if (*v13 != 1)
  {
    return 0;
  }

  v14 = *(v13 + 8);
  if (v14)
  {
    v15 = (v14 + 24);
    v16 = (v14 + 32);
    v17 = (v14 + 36);
    goto LABEL_9;
  }

  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    return 0;
  }

  return v11;
}

uint64_t ann_Load(void **a1, uint64_t *__b, char *a3)
{
  v116[100] = *MEMORY[0x277D85DE8];
  v5 = 2229280775;
  if (!__b || !a3)
  {
    goto LABEL_22;
  }

  cstdlib_memset(__b, 0, 0x10uLL);
  bzero(v116, 0x320uLL);
  NodeNumberOfChildren = GetNodeNumberOfChildren(a3);
  if (!NodeNumberOfChildren)
  {
    v13 = "Error loading ANN: empty ANN tree";
    v14 = a1;
    v15 = 592;
    goto LABEL_21;
  }

  v12 = (NodeNumberOfChildren - 1);
  if (v12 > 0x64)
  {
    v13 = "Error loading ANN: too many external data references";
    v14 = a1;
    v15 = 595;
    goto LABEL_21;
  }

  v106 = a1;
  v16 = 0;
LABEL_8:
  if (v16 != v12)
  {
    NodeChild = GetNodeChild(a3, v16 + 1);
    if (NodeChild)
    {
      v18 = NodeChild;
      v19 = v12;
      if (!GetNodeNumberOfChildren(NodeChild))
      {
        LODWORD(__dst) = 0;
        cstdlib_memcpy(&__dst, v18, 4uLL);
        v20 = (v18 + 4);
        v21 = 2147483646;
        v22 = v18 + 4;
        while (v22 < &v20[__dst])
        {
          v23 = &v22[cstdlib_strlen(v22) + 1];
          if (!cstdlib_strcmp(v22, "END"))
          {
            v22 = v23;
LABEL_18:
            if (v22 < &v20[__dst])
            {
              v12 = v19;
              v116[v16++] = v22;
              if (v22)
              {
                goto LABEL_8;
              }
            }

            break;
          }

          if (v23 >= &v20[__dst])
          {
            break;
          }

          v22 = &v23[cstdlib_strlen(v23) + 1];
          if (!--v21)
          {
            goto LABEL_18;
          }
        }
      }

      v13 = "Error loading external data";
      a1 = v106;
      v14 = v106;
      v15 = 606;
    }

    else
    {
      v13 = "Error loading external data";
      a1 = v106;
      v14 = v106;
      v15 = 602;
    }

    goto LABEL_21;
  }

  v25 = GetNodeChild(a3, 0);
  if (!v25)
  {
    v13 = "Error loading ANN";
    a1 = v106;
    v14 = v106;
    v15 = 612;
    goto LABEL_21;
  }

  v26 = v25;
  a1 = v106;
  if (!GetNodeAttributeValue_String(v25, "dimInput"))
  {
    v13 = "Error in config file. Required attribute [dimInput] missing from the root node of the ANN tree.";
    v14 = v106;
    v15 = 615;
    goto LABEL_21;
  }

  NodeAttributeValue_String = GetNodeAttributeValue_String(v26, "dimInput");
  if (!NodeAttributeValue_String || (v28 = cstdlib_atoi(NodeAttributeValue_String), v28 <= 0))
  {
    v13 = "Error in config file. Wrong value (%d) for attribute [dimInput] of the root node of the ANN tree.";
    v14 = v106;
    v15 = 618;
    goto LABEL_21;
  }

  *(__b + 3) = v28;
  v29 = GetNodeNumberOfChildren(v26);
  if (!v29)
  {
    v13 = "Error loading ANN: no models in stack";
    v14 = v106;
    v15 = 623;
    goto LABEL_21;
  }

  *(__b + 2) = v29;
  v103 = v29;
  v30 = heap_Calloc(v106[1], v29, 144);
  *__b = v30;
  if (!v30)
  {
    v13 = "Allocation error";
    v14 = v106;
    v15 = 629;
    goto LABEL_21;
  }

  v31 = v30;
  v32 = 0;
  __s1 = v30;
  while (1)
  {
    v33 = GetNodeChild(v26, v32);
    if (!v33)
    {
      v13 = "Error loading model";
      v14 = a1;
      v15 = 636;
      goto LABEL_21;
    }

    v34 = v33;
    v35 = GetNodeAttributeValue_String(v33, "name");
    v36 = GetNodeAttributeValue_String(v34, "type");
    __src = v35;
    if (!v35 || (v37 = v36) == 0)
    {
      v13 = "Error loading model %u";
      v14 = a1;
      v15 = 641;
      goto LABEL_21;
    }

    v38 = GetNodeAttributeValue_String(v34, "input");
    if (!cstdlib_strcmp(v37, "nnet"))
    {
      v40 = v31 + 144 * v32;
      NnetGetModel(a1, &__dst);
      *v40 = __dst;
      v41 = v108;
      v42 = v109;
      v43 = v111;
      *(v40 + 48) = v110;
      *(v40 + 64) = v43;
      *(v40 + 16) = v41;
      *(v40 + 32) = v42;
      v44 = v112;
      v45 = v113;
      v46 = v115;
      *(v40 + 112) = v114;
      *(v40 + 128) = v46;
      *(v40 + 80) = v44;
      *(v40 + 96) = v45;
      if (!LoadNnetModel(a1, v34, *(v40 + 88), v116, v12))
      {
        goto LABEL_89;
      }

      v13 = "Error loading nnet model %s";
      v14 = a1;
      v15 = 649;
      goto LABEL_21;
    }

    if (!cstdlib_strcmp(v37, "nnet_cascade"))
    {
      v47 = v31 + 144 * v32;
      NnetGetModel(a1, &__dst);
      *v47 = __dst;
      v48 = v108;
      v49 = v109;
      v50 = v111;
      *(v47 + 48) = v110;
      *(v47 + 64) = v50;
      *(v47 + 16) = v48;
      *(v47 + 32) = v49;
      v51 = v112;
      v52 = v113;
      v53 = v115;
      *(v47 + 112) = v114;
      *(v47 + 128) = v53;
      *(v47 + 80) = v51;
      *(v47 + 96) = v52;
      if (!LoadNnetModel(a1, v34, *(v47 + 88), v116, v12))
      {
        v54 = 1;
        goto LABEL_90;
      }

      v13 = "Error loading nnet model %s";
      v14 = a1;
      v15 = 656;
      goto LABEL_21;
    }

    if (cstdlib_strcmp(v37, "adapter"))
    {
      v13 = "Unknown model type %s";
      v14 = a1;
      v15 = 684;
      goto LABEL_21;
    }

    if (GetNodeAttributeValue_String(v34, "dim"))
    {
      NodeAttributeValue_Integer = GetNodeAttributeValue_Integer(v34, "dim");
    }

    else
    {
      NodeAttributeValue_Integer = 0;
    }

    v55 = v31 + 144 * v32;
    v56 = GetNodeNumberOfChildren(v34);
    AdapterGetModel(a1, v56, NodeAttributeValue_Integer, &__dst);
    *v55 = __dst;
    v57 = v108;
    v58 = v109;
    v59 = v111;
    *(v55 + 48) = v110;
    *(v55 + 64) = v59;
    *(v55 + 16) = v57;
    *(v55 + 32) = v58;
    v60 = v112;
    v61 = v113;
    v62 = v115;
    *(v55 + 112) = v114;
    *(v55 + 128) = v62;
    *(v55 + 80) = v60;
    *(v55 + 96) = v61;
    v63 = *(v55 + 88);
    v100 = GetNodeNumberOfChildren(v34);
    if (!v100)
    {
      goto LABEL_89;
    }

    v95 = v63;
    v64 = 0;
    v102 = v12;
    while (1)
    {
      v101 = v64;
      v65 = GetNodeChild(v34, v64);
      if (!v65)
      {
        a1 = v106;
        v92 = v106;
        v93 = 359;
LABEL_102:
        v94 = "Error loading adapter model";
        goto LABEL_88;
      }

      v70 = v65;
      v71 = GetNodeAttributeValue_String(v65, "type");
      v72 = GetNodeAttributeValue_String(v70, "model");
      if (!v72)
      {
        a1 = v106;
        v92 = v106;
        v93 = 365;
        goto LABEL_102;
      }

      v73 = v72;
      if (GetNodeAttributeValue_String(v70, "layerIdx"))
      {
        v74 = GetNodeAttributeValue_String(v70, "layerIdx");
        if (v74)
        {
          v96 = cstdlib_atoi(v74);
        }

        else
        {
          v96 = 0;
        }
      }

      else
      {
        v96 = -1;
      }

      if (GetNodeAttributeValue_String(v70, "dimFrom"))
      {
        v75 = GetNodeAttributeValue_String(v70, "dimFrom");
        if (v75)
        {
          v99 = cstdlib_atoi(v75);
        }

        else
        {
          v99 = 0;
        }
      }

      else
      {
        v99 = -1;
      }

      if (GetNodeAttributeValue_String(v70, "dimTo"))
      {
        v76 = GetNodeAttributeValue_String(v70, "dimTo");
        if (v76)
        {
          v98 = cstdlib_atoi(v76);
        }

        else
        {
          v98 = 0;
        }
      }

      else
      {
        v98 = -1;
      }

      if (GetNodeAttributeValue_String(v70, "ctx") && (v77 = GetNodeAttributeValue_String(v70, "ctx")) != 0)
      {
        v78 = v71;
        v97 = cstdlib_atoi(v77);
      }

      else
      {
        v78 = v71;
        v97 = 0;
      }

      v79 = GetNodeAttributeValue_String(v70, "transform");
      if (!v32)
      {
        goto LABEL_87;
      }

      v80 = v79;
      v81 = 0;
      v82 = __s1;
      while (cstdlib_strcmp(v82, v73))
      {
        ++v81;
        v82 += 144;
        if (v32 == v81)
        {
          goto LABEL_87;
        }
      }

      if ((v81 & 0x80000000) != 0)
      {
LABEL_87:
        a1 = v106;
        v92 = v106;
        v93 = 376;
        v94 = "LoadAdapterModel: Unknown model specified %s";
        goto LABEL_88;
      }

      if (v80)
      {
        if (cstdlib_strcmp(v80, "exp"))
        {
          a1 = v106;
          v92 = v106;
          v93 = 386;
          v94 = "LoadAdapterModel: unknown transform %s specified";
          goto LABEL_88;
        }

        v83 = my_expf;
      }

      else
      {
        v83 = 0;
      }

      v84 = &__s1[144 * (v81 & 0x7FFFFFFF)];
      if (!v78)
      {
        break;
      }

      if (cstdlib_strcmp(v78, "nnet"))
      {
        a1 = v106;
        v92 = v106;
        v93 = 405;
        v94 = "LoadAdapterModel: Unknown adapter type %s";
        goto LABEL_88;
      }

      v85 = *(v84 + 88);
      v86 = *(v85 + 8);
      v87 = v86 - 1;
      if (v96 >= 0)
      {
        v87 = v96;
      }

      if (v87 >= v86)
      {
        a1 = v106;
        v92 = v106;
        v93 = 400;
        v94 = "LoadAdapterModel: layerIdx out of range";
        goto LABEL_88;
      }

      v88 = v101;
      v12 = v102;
      if (ModelAdapterSetNnet(v95, v101, *(*v85 + 8 * v87), v99, v98, v97, v83))
      {
        a1 = v106;
        v92 = v106;
        v93 = 402;
        v94 = "LoadAdapterModel: error in ModelAdapterSetNnet";
        goto LABEL_88;
      }

LABEL_85:
      v54 = 0;
      v64 = v88 + 1;
      v31 = __s1;
      a1 = v106;
      if (v64 == v100)
      {
        goto LABEL_90;
      }
    }

    v88 = v101;
    v12 = v102;
    if (!ModelAdapterSet(v95, v101, v84, v99, v98, v97, v83))
    {
      goto LABEL_85;
    }

    a1 = v106;
    v92 = v106;
    v93 = 392;
    v94 = "LoadAdapterModel: error in ModelAdapterSet";
LABEL_88:
    v12 = v102;
    v31 = __s1;
    if (ANNError(v92, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/ann.c", v93, v94, v66, v67, v68, v69))
    {
      v13 = "Error loading adapter model %s";
      v14 = a1;
      v15 = 680;
      goto LABEL_21;
    }

LABEL_89:
    v54 = 0;
LABEL_90:
    v89 = v31 + 144 * v32;
    *(v89 + 136) = v54;
    cstdlib_strcpy(v89, __src);
    if (v38)
    {
      break;
    }

LABEL_98:
    if (++v32 == v103)
    {
      return 0;
    }
  }

  if (v32)
  {
    v90 = 0;
    v91 = __s1;
    while (cstdlib_strcmp(v91, v38))
    {
      ++v90;
      v91 += 144;
      if (v32 == v90)
      {
        goto LABEL_113;
      }
    }

    if ((v90 & 0x80000000) == 0)
    {
      v31 = __s1;
      a1 = v106;
      *(v89 + 96) = &__s1[144 * (v90 & 0x7FFFFFFF)];
      goto LABEL_98;
    }
  }

LABEL_113:
  v13 = "Unknown models specified as input %s";
  a1 = v106;
  v14 = v106;
  v15 = 692;
LABEL_21:
  v5 = 2229280772;
  if (!ANNError(v14, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/ann.c", v15, v13, v8, v9, v10, v11))
  {
    return 0;
  }

LABEL_22:
  ann_Unload(a1, __b);
  return v5;
}

void *ann_Unload(void *result, uint64_t *__b)
{
  if (__b)
  {
    v3 = *__b;
    if (v3)
    {
      v4 = result;
      v5 = *(__b + 2);
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = 0;
      v7 = 72;
      do
      {
        v8 = (*__b + v7);
        v11 = *v8;
        v9 = v8 - 9;
        v10 = v11;
        if (v11)
        {
          v10(v4, v9);
          v5 = *(__b + 2);
        }

        ++v6;
        v7 += 144;
      }

      while (v6 < v5);
      v3 = *__b;
      if (*__b)
      {
LABEL_9:
        heap_Free(*(v4 + 8), v3);
        *__b = 0;
      }
    }

    return cstdlib_memset(__b, 0, 0x10uLL);
  }

  return result;
}

uint64_t ann_Eval(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  bzero(v34, 0x320uLL);
  v13 = 2229280775;
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_26;
  }

  if (*(a2 + 8))
  {
    v14 = 0;
    v33 = *(a2 + 12);
    v15 = *a2;
    v16 = *a2;
    v31 = a3;
    do
    {
      v17 = *(v16 + 96);
      if (v17)
      {
        if (*(v16 + 136))
        {
          if (v14 >= 0x64)
          {
            ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/ann.c", 795, "Error evaluating ANN: too many layers with stacked input features (type=nnet_cascade)", v9, v10, v11, v12);
            v13 = 2229280783;
            goto LABEL_26;
          }

          v18 = *(v17 + 132);
          v19 = v18 + v33;
          v20 = a4;
          v21 = heap_Alloc(*(a1 + 8), 4 * ((v18 + v33) * a4));
          v30 = v14;
          v34[v14] = v21;
          if (!v21)
          {
            goto LABEL_31;
          }

          v22 = v21;
          if (a5 && (v23 = *(a5 + 8)) != 0 && !cstdlib_strcmp(*(v16 + 96), v23) && *(a5 + 16))
          {
            v25 = heap_Calloc(*(a1 + 8), (*(*(v16 + 96) + 132) * *(*(v16 + 96) + 128)), 4);
            if (!v25)
            {
LABEL_31:
              v13 = 2229280778;
              goto LABEL_26;
            }

            v26 = v25;
            (*a5)(*(*(v16 + 96) + 120), (*(*(v16 + 96) + 132) * *(*(v16 + 96) + 128)), *(a5 + 16), *(a5 + 24), v25);
            stackFeats(v31, v20, v33, v26, v18, v22);
            heap_Free(*(a1 + 8), v26);
          }

          else
          {
            stackFeats(v31, v20, v33, *(*(v16 + 96) + 120), v18, v22);
          }

          a3 = v31;
          v14 = v30 + 1;
          *(v16 + 104) = v22;
          *(v16 + 112) = *(*(v16 + 96) + 128);
          a4 = v20;
        }

        else
        {
          *(v16 + 104) = *(v17 + 120);
          v19 = *(v17 + 132);
          *(v16 + 112) = *(v17 + 128);
        }
      }

      else
      {
        *(v16 + 104) = a3;
        *(v16 + 112) = a4;
        v19 = v33;
      }

      *(v16 + 116) = v19;
      v24 = *(v16 + 64);
      if (!v24 || v24(a1, v16))
      {
        ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/ann.c", 857, "NNModel evaluation error, model %d", v9, v10, v11, v12);
        v13 = 2229280785;
        goto LABEL_26;
      }

      v16 += 144;
      v15 += 144;
    }

    while (v16 < *a2 + 144 * *(a2 + 8));
  }

  v13 = 0;
LABEL_26:
  for (i = 0; i != 100; ++i)
  {
    v28 = v34[i];
    if (v28)
    {
      heap_Free(*(a1 + 8), v28);
      v34[i] = 0;
    }
  }

  return v13;
}

int *stackFeats(int *result, int a2, int a3, int *a4, int a5, uint64_t a6)
{
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = a2;
    do
    {
      if (a3 >= 1)
      {
        v8 = a3 + v7;
        v10 = a3;
        v11 = result;
        v12 = (a6 + 4 * v7);
        do
        {
          v13 = *v11++;
          *v12++ = v13;
          --v10;
        }

        while (v10);
      }

      if (a5 >= 1)
      {
        v14 = (a6 + 4 * v8);
        v8 = a5 + (a3 & ~(a3 >> 31)) + v7;
        v15 = a5;
        v16 = a4;
        do
        {
          v17 = *v16++;
          *v14++ = v17;
          --v15;
        }

        while (v15);
      }

      ++v6;
      result += a3;
      a4 += a5;
      v7 = v8;
    }

    while (v6 != v9);
  }

  return result;
}

uint64_t ann_GetNNModel(uint64_t a1, char *__s2, void *a3)
{
  v3 = 2229280775;
  if (a1)
  {
    if (__s2)
    {
      if (a3)
      {
        *a3 = 0;
        v7 = *(a1 + 8);
        if (v7)
        {
          v8 = 0;
          for (i = *a1; cstdlib_strcmp(i, __s2); i += 144)
          {
            if (v7 == ++v8)
            {
              return v3;
            }
          }

          if ((v8 & 0x80000000) == 0 && *(a1 + 8) > v8)
          {
            v3 = 0;
            *a3 = *a1 + 144 * (v8 & 0x7FFFFFFF);
          }
        }
      }
    }
  }

  return v3;
}

uint64_t ann_Reset(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      v3 = *(a2 + 8);
      if (v3)
      {
        v4 = result;
        v5 = 0;
        v6 = 80;
        do
        {
          v7 = (*a2 + v6);
          v10 = *v7;
          v8 = v7 - 10;
          v9 = v10;
          if (v10)
          {
            result = v9(v4, v8);
            v3 = *(a2 + 8);
          }

          ++v5;
          v6 += 144;
        }

        while (v5 < v3);
      }
    }
  }

  return result;
}

uint64_t GetNodeNumberOfChildren(char *a1)
{
  NodeAttributeValue_String = GetNodeAttributeValue_String(a1, "children");
  if (NodeAttributeValue_String)
  {
    LODWORD(NodeAttributeValue_String) = cstdlib_atoi(NodeAttributeValue_String);
  }

  return NodeAttributeValue_String & ~(NodeAttributeValue_String >> 31);
}

const char *GetNodeChild(char *a1, unsigned int a2)
{
  v2 = a2;
  if (GetNodeNumberOfChildren(a1) > a2)
  {
    __dst = 0;
    cstdlib_memcpy(&__dst + 4, a1, 4uLL);
    v4 = a1 + 4;
    v5 = 1;
    v6 = a1 + 4;
    while (v6 < &v4[HIDWORD(__dst)])
    {
      v7 = &v6[cstdlib_strlen(v6) + 1];
      if (!cstdlib_strcmp(v6, "END"))
      {
        result = 0;
        if (v5 <= 0x7FFFFFFD)
        {
          v9 = &v4[HIDWORD(__dst)];
          while (v7 < v9)
          {
            if (!v2)
            {
              return v7;
            }

            cstdlib_memcpy(&__dst, v7, 4uLL);
            v9 = &v4[HIDWORD(__dst)];
            if ((v7 + 4) >= v9)
            {
              return 0;
            }

            result = 0;
            if (v5 >= 0x7FFFFFFD)
            {
              return result;
            }

            v7 += __dst + 4;
            --v2;
            ++v5;
          }
        }

        return result;
      }

      if (v7 < &v4[HIDWORD(__dst)])
      {
        v6 = &v7[cstdlib_strlen(v7) + 1];
        if (++v5 != 0x7FFFFFFF)
        {
          continue;
        }
      }

      return 0;
    }
  }

  return 0;
}

const char *GetNodeAttributeValue_String(char *__src, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  __dst = 0;
  cstdlib_memcpy(&__dst, __src, 4uLL);
  if (__dst)
  {
    v4 = __src + 4;
    v5 = 2147483645;
    v6 = __src + 4;
    while (cstdlib_strcmp(v6, "END"))
    {
      v7 = &v6[cstdlib_strlen(v6) + 1];
      if (v7 >= &v4[__dst])
      {
        break;
      }

      if (!cstdlib_strcmp(v6, a2))
      {
        return v7;
      }

      v8 = cstdlib_strlen(v7);
      result = 0;
      if (v5-- != 0)
      {
        v6 = &v7[v8 + 1];
        if (v6 < &v4[__dst])
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

unsigned __int8 *GetNodeAttributeValue_Integer(char *a1, const char *a2)
{
  result = GetNodeAttributeValue_String(a1, a2);
  if (result)
  {

    return cstdlib_atoi(result);
  }

  return result;
}

uint64_t LoadNnetModel(void **a1, char *a2, void *a3, uint64_t a4, unsigned int a5)
{
  NodeNumberOfChildren = GetNodeNumberOfChildren(a2);
  if (!NnetAlloc(a1, a3, NodeNumberOfChildren))
  {
    if (!NodeNumberOfChildren)
    {
      return NodeNumberOfChildren;
    }

    v19 = 0;
    v34 = NodeNumberOfChildren;
    v35 = a5;
    while (1)
    {
      NodeChild = GetNodeChild(a2, v19);
      if (!NodeChild)
      {
        v15 = "Error loading nnet model";
        v16 = a1;
        v17 = 269;
        goto LABEL_3;
      }

      v21 = NodeChild;
      NodeAttributeValue_String = GetNodeAttributeValue_String(NodeChild, "name");
      v23 = GetNodeAttributeValue_String(v21, "type");
      if (!NodeAttributeValue_String || (v24 = v23) == 0)
      {
        v15 = "Error loading nnet model";
        v16 = a1;
        v17 = 274;
        goto LABEL_3;
      }

      if (!GetNodeAttributeValue_String(v21, "file"))
      {
        v15 = "Error in config file. Required attribute [file] missing.";
        v16 = a1;
        v17 = 277;
        goto LABEL_3;
      }

      v25 = GetNodeAttributeValue_String(v21, "file");
      if (v25)
      {
        v26 = cstdlib_atoi(v25);
        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v26 = 0;
      }

      if (v26 >= a5)
      {
LABEL_45:
        v15 = "Invalid external data buffer index %d";
        v16 = a1;
        v17 = 280;
        return ANNError(v16, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/ann.c", v17, v15, v11, v12, v13, v14);
      }

      v27 = a4;
      v28 = GetNodeAttributeValue_String(v21, "dir");
      v29 = GetNodeAttributeValue_String(v21, "firstL");
      if (cstdlib_strcmp(v24, "conv"))
      {
        if (cstdlib_strcmp(v24, "sigm"))
        {
          if (cstdlib_strcmp(v24, "relu"))
          {
            if (cstdlib_strcmp(v24, "lstm"))
            {
              v15 = "Unknown nnet layer type %s";
              v16 = a1;
              v17 = 295;
              return ANNError(v16, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/ann.c", v17, v15, v11, v12, v13, v14);
            }

            v30 = 2;
            v31 = 1;
            if (!v28)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v31 = 0;
            v30 = 3;
            if (!v28)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v31 = 0;
          v30 = 1;
          if (!v28)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v31 = 0;
        v30 = 0;
        if (!v28)
        {
          goto LABEL_32;
        }
      }

      if (cstdlib_strcmp(v28, "back") && cstdlib_strcmp(v28, "bwd"))
      {
        if (cstdlib_strcmp(v28, "forward") && cstdlib_strcmp(v28, "fwd"))
        {
          v15 = "Unknown nnet dir %s (expected fwd/bwd)";
          v16 = a1;
          v17 = 301;
          return ANNError(v16, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/ann.c", v17, v15, v11, v12, v13, v14);
        }

LABEL_32:
        a4 = v27;
        NodeNumberOfChildren = NnetReadLayerAttila(a1, a3, v19, v30, *(v27 + 8 * v26));
        if (!v29)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      a4 = v27;
      LayerAttila = NnetReadLayerAttila(a1, a3, v19, v30, *(v27 + 8 * v26));
      if (!v31)
      {
        v15 = "Unexpected dir attribute on non-recurrent layer";
        v16 = a1;
        v17 = 307;
        goto LABEL_3;
      }

      NodeNumberOfChildren = LayerAttila;
      LstmSetLayerDir(*(*(*a3 + 8 * v19) + 8), 1);
      if (!v29)
      {
LABEL_40:
        v32 = 0;
        if (!v31)
        {
          goto LABEL_35;
        }

LABEL_34:
        LstmSetFirstLayer(*(*(*a3 + 8 * v19) + 8), v32);
        goto LABEL_35;
      }

LABEL_33:
      v32 = cstdlib_strcmp(v29, "1") == 0;
      if (v31)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (NodeNumberOfChildren)
      {
        return NodeNumberOfChildren;
      }

      ++v19;
      a5 = v35;
      if (v34 == v19)
      {
        return 0;
      }
    }
  }

  v15 = "Allocation error";
  v16 = a1;
  v17 = 263;
LABEL_3:

  return ANNError(v16, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/ann.c", v17, v15, v11, v12, v13, v14);
}

void *AnnObject_Create(uint64_t a1)
{
  result = heap_Calloc(*(a1 + 8), 1, 72);
  if (result)
  {
    *result = a1;
  }

  return result;
}

uint64_t AnnObject_Open(uint64_t a1, char *a2)
{
  if (!a1)
  {
    return 2229280778;
  }

  *(a1 + 36) = 0;
  v3 = ann_Load(*a1, (a1 + 8), a2);
  if ((v3 & 0x80000000) != 0)
  {
    UNICORN__log_select_Diag(*a1, 0, "AnnObject_Open, Error loading ANN\n");
  }

  else
  {
    *(a1 + 36) = *(a1 + 20);
  }

  return v3;
}

uint64_t AnnObject_Close(void *a1)
{
  if (!a1)
  {
    return 2229280778;
  }

  AnnObject_ClearLayerAdjuster(a1);
  ann_Unload(*a1, a1 + 1);
  return 0;
}

void *AnnObject_ClearLayerAdjuster(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
  }

  return cstdlib_memset(a1 + 5, 0, 0x20uLL);
}

uint64_t AnnObject_Reset(uint64_t a1)
{
  if (!a1)
  {
    return 2229280778;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  AnnObject_ClearLayerAdjuster(a1);
  ann_Reset(*a1, a1 + 8);
  return 0;
}

uint64_t AnnObject_Process(uint64_t a1)
{
  if (!a1)
  {
    return 2229280778;
  }

  v2 = ann_Eval(*a1, a1 + 8, *(a1 + 24), *(a1 + 32), a1 + 40);
  if ((v2 & 0x80000000) != 0)
  {
    UNICORN__log_select_Diag(*a1, 0, "AnnObject_Process, Error evaluating ANN\n");
  }

  return v2;
}

uint64_t AnnObject_Set(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 2229280778;
  }

  result = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return result;
}

uint64_t AnnObject_Get(uint64_t *a1, char *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  if (!a1)
  {
    return 2229280778;
  }

  v12 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  NNModel = ann_GetNNModel((a1 + 1), a2, &v12);
  if ((NNModel & 0x80000000) != 0)
  {
    UNICORN__log_select_Diag(*a1, 0, "AnnObject_Get, Error, Expected output '%s' not found in ANN\n");
  }

  else
  {
    v10 = v12;
    *a3 = *(v12 + 120);
    *a4 = *(v10 + 128);
    *a5 = *(v10 + 132);
  }

  return NNModel;
}

uint64_t AnnObject_SetLayerAdjuster(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, uint64_t a5)
{
  v5 = 2229280775;
  if (a1)
  {
    AnnObject_ClearLayerAdjuster(a1);
    v11 = a4;
    v12 = heap_Calloc(*(*a1 + 8), a4, 4);
    *(a1 + 56) = v12;
    if (v12)
    {
      if (a4)
      {
        do
        {
          v13 = *a3++;
          *v12++ = v13;
          --v11;
        }

        while (v11);
      }

      v5 = 0;
      *(a1 + 64) = a4;
      *(a1 + 40) = a5;
      *(a1 + 48) = a2;
    }

    else
    {
      UNICORN__log_select_Diag(*a1, 0, "AnnObject_SetLayerAdjuster, Error, Out of memory\n");
      return 2229280778;
    }
  }

  return v5;
}

void *NnetClear(void **a1, uint64_t **__b)
{
  v3 = *__b;
  if (*__b)
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_7;
    }

    do
    {
      NnetClearLayer(a1, v5);
      if (*v3)
      {
        heap_Free(a1[1], *v3);
      }

      *v3 = 0;
      v6 = v3[1];
      ++v3;
      v5 = v6;
    }

    while (v6);
    v3 = *__b;
    if (*__b)
    {
LABEL_7:
      heap_Free(a1[1], v3);
      *__b = 0;
    }
  }

  return cstdlib_memset(__b, 0, 0x10uLL);
}

void **NnetClearLayer(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    result = heap_Free(result[1], v4);
  }

  *(a2 + 24) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    if (*a2 == 2)
    {
      result = NnetClearLstmLayerParams(v3, *(a2 + 8));
    }

    else
    {
      if (*a2)
      {
        goto LABEL_13;
      }

      v6 = v5[1];
      if (v6)
      {
        result = heap_Free(*(v3 + 8), v6);
        v5[1] = 0;
      }

      v7 = v5[2];
      if (v7)
      {
        result = heap_Free(*(v3 + 8), v7);
      }

      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    v5 = *(a2 + 8);
    if (!v5)
    {
LABEL_14:
      *(a2 + 8) = 0;
      return result;
    }

LABEL_13:
    result = heap_Free(*(v3 + 8), v5);
    goto LABEL_14;
  }

  return result;
}

BOOL NnetAlloc(void **a1, uint64_t a2, int a3)
{
  NnetClear(a1, a2);
  *(a2 + 8) = a3;
  v6 = heap_Calloc(a1[1], (a3 + 1), 8);
  *a2 = v6;
  if (!v6)
  {
    return 1;
  }

  *(v6 + 8 * a3) = 0;
  return *a2 == 0;
}

uint64_t NnetReadConvolutionalLayerAttila(uint64_t a1, uint64_t a2, char *a3)
{
  v29 = 0;
  __dst = 0;
  v28 = 0;
  *a2 = 0;
  v6 = heap_Calloc(*(a1 + 8), 1, 24);
  *(a2 + 8) = v6;
  if (v6)
  {
    v11 = v6;
    cstdlib_memcpy(&__dst + 4, a3, 4uLL);
    cstdlib_memcpy(&__dst, a3 + 4, 4uLL);
    cstdlib_memcpy(&v29 + 4, a3 + 8, 4uLL);
    cstdlib_memcpy(&v29, a3 + 12, 4uLL);
    v16 = HIDWORD(v29);
    if (HIDWORD(v29) >= v29)
    {
      v17 = v29;
    }

    else
    {
      v17 = HIDWORD(v29);
    }

    if (v17 == 1 && HIDWORD(__dst) == 1)
    {
      if (HIDWORD(v29) <= v29)
      {
        v16 = v29;
      }

      *v11 = v16;
      v18 = __dst;
      *(v11 + 4) = __dst;
      v19 = heap_Calloc(*(a1 + 8), (v18 * v16), 4);
      *(v11 + 8) = v19;
      if (v19)
      {
        v20 = heap_Calloc(*(a1 + 8), *(v11 + 4), 4);
        *(v11 + 16) = v20;
        if (v20)
        {
          v21 = a3 + 16;
          cstdlib_memcpy(*(v11 + 8), v21, 4 * (*(v11 + 4) * *v11));
          v22 = &v21[4 * *(v11 + 4) * *v11];
          cstdlib_memcpy(&v28 + 4, v22, 4uLL);
          if (HIDWORD(v28) == 1 || HIDWORD(v28) == *v11)
          {
            if (HIDWORD(v28))
            {
              v27 = 0;
              do
              {
                v22 += 4;
                cstdlib_memcpy(&v28, v22, 4uLL);
                ++v27;
              }

              while (v27 < HIDWORD(v28));
            }

            cstdlib_memcpy(&v28 + 4, v22 + 4, 4uLL);
            if (HIDWORD(v28) == *(v11 + 4))
            {
              cstdlib_memcpy(*(v11 + 16), v22 + 8, 4 * HIDWORD(v28));
              return 0;
            }

            v23 = "corrupt weights file";
            v24 = a1;
            v25 = 168;
          }

          else
          {
            v23 = "corrupt weights file";
            v24 = a1;
            v25 = 154;
          }
        }

        else
        {
          v23 = "allocation error";
          v24 = a1;
          v25 = 144;
        }
      }

      else
      {
        v23 = "allocation error";
        v24 = a1;
        v25 = 139;
      }
    }

    else
    {
      v23 = "corrupt weights file";
      v24 = a1;
      v25 = 131;
    }

    return ANNError(v24, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/nnet.c", v25, v23, v12, v13, v14, v15);
  }

  else
  {

    return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/nnet.c", 117, "allocation error", v7, v8, v9, v10);
  }
}

uint64_t NnetReadLayerAttila(void **a1, uint64_t a2, unsigned int a3, int a4, char *a5)
{
  if (*(a2 + 8) <= a3)
  {
    return 1;
  }

  v10 = *(*a2 + 8 * a3);
  if (v10)
  {
    NnetClearLayer(a1, v10);
  }

  else
  {
    *(*a2 + 8 * a3) = heap_Calloc(a1[1], 1, 40);
  }

  v16 = *(*a2 + 8 * a3);
  if (a3)
  {
    v17 = *(*a2 + 8 * (a3 - 1));
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 8) = 0;
  *(v16 + 16) = v17;
  *(v16 + 32) = 0;
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/nnet.c", 215, "LoadNeuralNetFiles", v11, v12, v13, v14);
      }

LABEL_15:
      *v16 = a4;
      return 0;
    }

    result = NnetReadLstmLayer(a1, v16, a5);
    if (!result)
    {
      return 0;
    }
  }

  else
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/nnet.c", 215, "LoadNeuralNetFiles", v11, v12, v13, v14);
      }

      goto LABEL_15;
    }

    result = NnetReadConvolutionalLayerAttila(a1, v16, a5);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t NnetForward(uint64_t a1, uint64_t **a2, float32x4_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a5;
  v28 = a4;
  if (a2 && (v9 = *a2) != 0)
  {
    v10 = a3;
    if (a3 && a4 && a5)
    {
      v11 = *v9;
      if (!*v9)
      {
        return 0;
      }

      while (1)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v10 = *(v12 + 24);
          a5 = *(v12 + 36);
          v27 = *(v12 + 36);
        }

        v13 = *v11;
        if (*v11 > 1)
        {
          if (v13 == 2)
          {
            if (allocLayer(a1, v11, v28, *(*(v11 + 8) + 4)) || NnetEvalLstmLayer(a1, v11, v10, v28, v27))
            {
              return 1;
            }
          }

          else
          {
            if (v13 != 3)
            {
              return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/nnet.c", 309, "Unexpected layer type", a5, a6, a7, a8);
            }

            if (allocLayer(a1, v11, v28, a5))
            {
              return 1;
            }

            if (v27 * v28)
            {
              v17 = *(v11 + 24);
              v18 = &v17[v27 * v28];
              do
              {
                v19 = v10->f32[0];
                v10 = (v10 + 4);
                *v17++ = fmaxf(v19, 0.0);
              }

              while (v17 < v18);
            }
          }
        }

        else if (v13)
        {
          if (v13 != 1)
          {
            return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/nnet.c", 309, "Unexpected layer type", a5, a6, a7, a8);
          }

          if (allocLayer(a1, v11, v28, a5))
          {
            return 1;
          }

          if (v27 * v28)
          {
            v14 = *(v11 + 24);
            v15 = &v14[v27 * v28];
            do
            {
              v16 = v10->f32[0];
              v10 = (v10 + 4);
              *v14++ = 1.0 / (expf(-v16) + 1.0);
            }

            while (v14 < v15);
          }
        }

        else
        {
          v20 = *(v11 + 8);
          if (allocLayer(a1, v11, v28, *(v20 + 4)))
          {
            return 1;
          }

          ncblas_sgemm((v11 + 36), &v28, v20, *(v20 + 8), v20, v10->f32, &v27, *(v11 + 24), (v11 + 36));
          if (*(v11 + 32) * *(v11 + 36))
          {
            v21 = *(v11 + 24);
            do
            {
              ncblas_saxpy((v11 + 36), *(v20 + 16), v21);
              v22 = *(v11 + 36);
              v21 += 4 * v22;
            }

            while (v21 < *(v11 + 24) + 4 * (*(v11 + 32) * v22));
          }
        }

        v10 = *(v11 + 24);
        a5 = *(v11 + 36);
        v27 = *(v11 + 36);
        v23 = v9[1];
        ++v9;
        v11 = v23;
        if (!v23)
        {
          return 0;
        }
      }
    }

    v25 = "Wrong input";
    v26 = 246;
  }

  else
  {
    v25 = "Network not initialized";
    v26 = 244;
  }

  return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/nnet.c", v26, v25, a5, a6, a7, a8);
}

uint64_t allocLayer(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = a4 * a3;
    if (*(a2 + 36) * *(a2 + 32) == a4 * a3)
    {
      *(a2 + 32) = a3;
      *(a2 + 36) = a4;
      return 0;
    }

    heap_Free(*(a1 + 8), v8);
    *(a2 + 24) = 0;
  }

  else
  {
    v9 = a4 * a3;
  }

  v10 = heap_Calloc(*(a1 + 8), v9, 4);
  *(a2 + 24) = v10;
  *(a2 + 32) = a3;
  *(a2 + 36) = a4;
  if (v10)
  {
    return 0;
  }

  return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/nnet.c", 234, "allocation error", v11, v12, v13, v14);
}

uint64_t NnetGetOutputLayer(uint64_t **a1)
{
  v1 = 0;
  v2 = *a1;
  do
  {
    result = v1;
    v4 = *v2++;
    v1 = v4;
  }

  while (v4);
  return result;
}

uint64_t check_zero_generic(uint64_t result, float *a2, _DWORD *a3)
{
  if (result >= 1)
  {
    v3 = result;
    do
    {
      v4 = *a2++;
      *a3++ = v4 != 0.0;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sigm_inplace(float *a1, int a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = &a1[a2];
    do
    {
      *v2 = 1.0 / (expf(-*v2) + 1.0);
      ++v2;
    }

    while (v2 < v3);
  }
}

void tanh_inplace(float *a1, int a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = &a1[a2];
    do
    {
      *v2 = tanhf(*v2);
      ++v2;
    }

    while (v2 < v3);
  }
}

void tanh_mul_inplace(float *a1, float *a2, float *a3, unsigned int a4)
{
  if (a4)
  {
    v7 = a4;
    do
    {
      v8 = *a2++;
      v9 = v8;
      v10 = *a1++;
      *a3++ = v9 * tanhf(v10);
      --v7;
    }

    while (v7);
  }
}

float *multiply_add(float *result, float *a2, float *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v5 = *a2++;
      v6 = v5;
      v7 = *a3++;
      *result = *result + (v6 * v7);
      ++result;
      --v4;
    }

    while (v4);
  }

  return result;
}

float multiply_multiply_add(float *a1, float *a2, float *a3, float *a4, float *a5, unsigned int a6)
{
  if (a6)
  {
    v6 = a6;
    do
    {
      v7 = *a1++;
      v8 = v7;
      v9 = *a2++;
      v10 = v9;
      v11 = *a3++;
      v12 = v11;
      v13 = *a4++;
      result = (v12 * v13) + (v8 * v10);
      *a5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t NnetReadLstmLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = 0;
  v38 = a3;
  v35 = 0;
  v36 = 0;
  __dst = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  *a2 = 2;
  v6 = heap_Calloc(*(a1 + 8), 1, 144);
  *(a2 + 8) = v6;
  if (v6)
  {
    v11 = v6;
    cstdlib_memcpy((v6 + 4), a3, 4uLL);
    v38 = (a3 + 4);
    *(v11 + 16) = 1;
    readVecBuffers(a1, &v38, 4u, &v37, &__dst + 1, &v31 + 1);
    readVecBuffers(a1, &v38, 4u, &v36, &__dst, &v31);
    readVecBuffers(a1, &v38, 3u, &v35, &v32 + 1, &v30 + 1);
    readVecBuffers(a1, &v38, 4u, &v34, &v32, &v30);
    v16 = v36;
    v17 = v37;
    v18 = v34;
    v19 = v35;
    if (v37 && v36 && v35 && v34)
    {
      v20 = *(v11 + 4);
      v21 = HIDWORD(__dst) / (4 * v20);
      *v11 = v21;
      *(v11 + 24) = v17;
      v22 = HIDWORD(v31);
      *(v11 + 56) = &v17[HIDWORD(v31) & 0xFFFFFFFC];
      *(v11 + 120) = &v17[4 * ((v22 >> 1) & 0x3FFFFFFF)];
      *(v11 + 88) = &v17[(3 * v22) & 0xFFFFFFFC];
      if (*(v11 + 16))
      {
        NnetTransposeMatrix(a1, v17, v21, v20);
        NnetTransposeMatrix(a1, *(v11 + 56), *v11, *(v11 + 4));
        NnetTransposeMatrix(a1, *(v11 + 120), *v11, *(v11 + 4));
        NnetTransposeMatrix(a1, *(v11 + 88), *v11, *(v11 + 4));
        v23 = *(v11 + 16) == 0;
      }

      else
      {
        v23 = 1;
      }

      *(v11 + 32) = v16;
      v26 = v31;
      *(v11 + 64) = &v16[v31 & 0xFFFFFFFC];
      *(v11 + 128) = &v16[4 * ((v26 >> 1) & 0x3FFFFFFF)];
      *(v11 + 96) = &v16[(3 * v26) & 0xFFFFFFFC];
      if (!v23)
      {
        NnetTransposeMatrix(a1, v16, *(v11 + 4), *(v11 + 4));
        NnetTransposeMatrix(a1, *(v11 + 64), *(v11 + 4), *(v11 + 4));
        NnetTransposeMatrix(a1, *(v11 + 128), *(v11 + 4), *(v11 + 4));
        NnetTransposeMatrix(a1, *(v11 + 96), *(v11 + 4), *(v11 + 4));
      }

      result = 0;
      v27 = v30;
      v28 = &v18[v30 & 0xFFFFFFFC];
      *(v11 + 136) = &v18[4 * ((v30 >> 1) & 0x3FFFFFFF)];
      v29 = HIDWORD(v30);
      *(v11 + 72) = &v19[4 * (HIDWORD(v30) / 3uLL)];
      *(v11 + 80) = v28;
      *(v11 + 40) = v19;
      *(v11 + 48) = v18;
      *(v11 + 104) = &v19[4 * ((2 * v29) / 3uLL)];
      *(v11 + 112) = &v18[(3 * v27) & 0xFFFFFFFC];
    }

    else
    {
      v25 = *(a2 + 8);
      if (v25)
      {
        heap_Free(*(a1 + 8), v25);
      }

      *(a2 + 8) = 0;
      if (v17)
      {
        heap_Free(*(a1 + 8), v17);
      }

      if (v16)
      {
        heap_Free(*(a1 + 8), v16);
      }

      if (v19)
      {
        heap_Free(*(a1 + 8), v19);
      }

      if (v18)
      {
        heap_Free(*(a1 + 8), v18);
      }

      return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/lstm.c", 366, "error reading weights file", v12, v13, v14, v15);
    }
  }

  else
  {

    return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/lstm.c", 341, "allocation error", v7, v8, v9, v10);
  }

  return result;
}

void *readVecBuffers(uint64_t a1, const void **a2, unsigned int a3, char **a4, unsigned int *__dst, _DWORD *a6)
{
  *a4 = 0;
  cstdlib_memcpy(__dst, *a2, 4uLL);
  *a2 = *a2 + 4;
  v12 = ((*__dst / a3 + 3) & 0x7FFFFFFC) * a3;
  *a6 = v12;
  v13 = *__dst;
  v14 = heap_Calloc(*(a1 + 8), v12, 4);
  if (v14)
  {
    v19 = v14;
    *a4 = v14;
    v20 = *a2;
    v21 = v13 / a3;
    if (a3 == 4)
    {
      v22 = 4 * v21;
      cstdlib_memcpy(v14, v20, v22);
      v23 = *a2 + v22;
      *a2 = v23;
      cstdlib_memcpy(&v19[v12], v23, v22);
      v24 = *a2 + v22;
      *a2 = v24;
      cstdlib_memcpy(&v19[4 * ((v12 >> 1) & 0x3FFFFFF8)], v24, v22);
      v25 = *a2 + v22;
      *a2 = v25;
      v26 = &v19[(3 * v12)];
    }

    else
    {
      v22 = 4 * (v13 / a3);
      cstdlib_memcpy(v14, v20, 4 * v21);
      v28 = *a2 + 4 * v21;
      *a2 = v28;
      cstdlib_memcpy(&v19[4 * (v12 / 3uLL)], v28, 4 * v21);
      v25 = *a2 + 4 * v21;
      *a2 = v25;
      v26 = &v19[4 * ((2 * v12) / 3uLL)];
    }

    result = cstdlib_memcpy(v26, v25, v22);
    *a2 = *a2 + v22;
  }

  else
  {

    return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/lstm.c", 234, "allocation error", v15, v16, v17, v18);
  }

  return result;
}

void *NnetTransposeMatrix(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v8 = (a4 * a3);
  result = heap_Calloc(*(a1 + 8), (v8 + 3) & 0xFFFFFFFC, 4);
  if (result)
  {
    v10 = result;
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        *(result + i) = a2[i / a4 + i % a4 * a3];
      }
    }

    cstdlib_memcpy(a2, result, 4 * v8);
    v12 = *(a1 + 8);

    return heap_Free(v12, v10);
  }

  return result;
}

void *NnetClearLstmLayerParams(uint64_t a1, void *__b)
{
  v4 = __b[3];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    __b[3] = 0;
  }

  v5 = __b[4];
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
    __b[4] = 0;
  }

  v6 = __b[5];
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    __b[5] = 0;
  }

  v7 = __b[6];
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
    __b[6] = 0;
  }

  return cstdlib_memset(__b, 0, 0x90uLL);
}

uint64_t NnetEvalLstmLayer(uint64_t a1, uint64_t a2, float32x4_t *a3, int a4, int a5)
{
  v37 = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  v9 = *(a2 + 8);
  v10 = heap_Calloc(*(a1 + 8), (*(a2 + 36) + 3) & 0xFFFFFFFC, 4);
  v11 = heap_Calloc(*(a1 + 8), (*(a2 + 36) + 3) & 0xFFFFFFFC, 4);
  v12 = 0;
  v35 = v10;
  if (v11)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  do
  {
    v15 = (*(a2 + 36) + 3) & 0xFFFFFFFC;
    v16 = heap_Calloc(*(a1 + 8), v15, 4);
    *(v36 + v12) = v16;
    if (v16)
    {
      cstdlib_memset(v16, 0, 4 * v15);
    }

    else
    {
      v14 = 1;
    }

    v12 += 8;
  }

  while (v12 != 32);
  v17 = heap_Calloc(*(a1 + 8), (a5 + 3) & 0xFFFFFFFC, 4);
  v22 = v17;
  if (!v17 || v14)
  {
    if (v10)
    {
      heap_Free(*(a1 + 8), v10);
    }

    if (v11)
    {
      heap_Free(*(a1 + 8), v11);
    }

    for (i = 0; i != 32; i += 8)
    {
      v28 = *(v36 + i);
      if (v28)
      {
        heap_Free(*(a1 + 8), v28);
        *(v36 + i) = 0;
      }
    }

    if (v22)
    {
      heap_Free(*(a1 + 8), v22);
    }

    return ANNError(a1, "/Library/Caches/com.apple.xbs/Sources/AccessibilitySpeechEngines/TextToSpeechMauiSupport/Vendor/code/vocalizer/ttssrc.a/tts_main/be/bet5/ann/annlib/src/lstm.c", 499, "allocation error", v18, v19, v20, v21);
  }

  else
  {
    if (*(v9 + 8))
    {
      LstmEval(v9, (a3 + 4 * ((a4 - 1) * a5)), a5, v10, v11, *(a2 + 36), (*(a2 + 24) + 4 * (*(a2 + 36) * (a4 - 1))), v36, v17);
      v23 = (a4 - 2);
      if (a4 >= 2)
      {
        v24 = v23 + 1;
        v25 = (a3 + 4 * a5 * v23);
        do
        {
          v26 = v24 - 1;
          LstmEval(v9, v25, a5, *(a2 + 24) + 4 * v24 * *(a2 + 36), v11, *(a2 + 36), (*(a2 + 24) + 4 * (v24 - 1) * *(a2 + 36)), v36, v22);
          v25 = (v25 - 4 * a5);
          v24 = v26;
        }

        while (v26);
      }
    }

    else
    {
      LstmEval(v9, a3, a5, v10, v11, *(a2 + 36), *(a2 + 24), v36, v17);
      if (a4 >= 2)
      {
        v30 = 1;
        v31 = (a3 + 4 * a5);
        do
        {
          LstmEval(v9, v31, a5, *(a2 + 24) + 4 * (v30 - 1) * *(a2 + 36), v11, *(a2 + 36), (*(a2 + 24) + 4 * v30 * *(a2 + 36)), v36, v22);
          ++v30;
          v31 = (v31 + 4 * a5);
        }

        while (a4 != v30);
      }
    }

    if (v35)
    {
      heap_Free(*(a1 + 8), v35);
    }

    if (v11)
    {
      heap_Free(*(a1 + 8), v11);
    }

    heap_Free(*(a1 + 8), v22);
    for (j = 0; j != 32; j += 8)
    {
      v33 = *(v36 + j);
      if (v33)
      {
        heap_Free(*(a1 + 8), v33);
        *(v36 + j) = 0;
      }
    }

    return 0;
  }
}

void LstmEval(uint64_t a1, float32x4_t *a2, int a3, uint64_t a4, float32x4_t *a5, uint64_t a6, float *a7, float32x4_t **a8, unsigned int *a9)
{
  v16 = *a8;
  v15 = a8[1];
  v17 = a8[2];
  v31 = a8[3];
  if (*(a1 + 12))
  {
    ann_check_zero_SIMD(a3, a2, a9);
  }

  v34 = a3;
  v18 = a6;
  __n = 4 * a6;
  cstdlib_memcpy(v16, *(a1 + 48), __n);
  v19 = *(a1 + 24);
  v33 = a2;
  if (*(a1 + 12))
  {
    cblas_sgemv_CMP_4M_T_SIMD(a6, v34, v19, a2, v16, a9);
  }

  else
  {
    cblas_sgemv_4M_T_SIMD(a6, v34, v19, a2, v16);
  }

  cblas_sgemv_4M_T_SIMD(a6, a6, *(a1 + 32), a4, v16);
  multiply_add_SIMD(v16, *(a1 + 40), a5, a6);
  if (a6)
  {
    v20 = v16;
    do
    {
      *v20 = 1.0 / (expf(-*v20) + 1.0);
      ++v20;
    }

    while (v20 < &v16->f32[a6]);
  }

  cstdlib_memcpy(v15, *(a1 + 80), __n);
  v21 = *(a1 + 56);
  if (*(a1 + 12))
  {
    cblas_sgemv_CMP_4M_T_SIMD(a6, v34, v21, v33, v15, a9);
  }

  else
  {
    cblas_sgemv_4M_T_SIMD(a6, v34, v21, v33, v15);
  }

  cblas_sgemv_4M_T_SIMD(a6, a6, *(a1 + 64), a4, v15);
  multiply_add_SIMD(v15, *(a1 + 72), a5, a6);
  if (a6)
  {
    v22 = v15;
    do
    {
      *v22 = 1.0 / (expf(-*v22) + 1.0);
      ++v22;
    }

    while (v22 < &v15->f32[a6]);
  }

  cstdlib_memcpy(v31, *(a1 + 136), __n);
  v23 = *(a1 + 120);
  if (*(a1 + 12))
  {
    cblas_sgemv_CMP_4M_T_SIMD(a6, v34, v23, v33, v31, a9);
  }

  else
  {
    cblas_sgemv_4M_T_SIMD(a6, v34, v23, v33, v31);
  }

  cblas_sgemv_4M_T_SIMD(a6, a6, *(a1 + 128), a4, v31);
  if (a6)
  {
    v24 = v31;
    do
    {
      *v24 = tanhf(*v24);
      ++v24;
    }

    while (v24 < &v31->f32[a6]);
  }

  multiply_multiply_add_SIMD(a5, v15, v16, v31, a5, a6);
  cstdlib_memcpy(v17, *(a1 + 112), __n);
  v25 = *(a1 + 88);
  if (*(a1 + 12))
  {
    cblas_sgemv_CMP_4M_T_SIMD(a6, v34, v25, v33, v17, a9);
  }

  else
  {
    cblas_sgemv_4M_T_SIMD(a6, v34, v25, v33, v17);
  }

  cblas_sgemv_4M_T_SIMD(a6, a6, *(a1 + 96), a4, v17);
  multiply_add_SIMD(v17, *(a1 + 104), a5, a6);
  if (a6)
  {
    v26 = &v17->f32[a6];
    v27 = v17;
    do
    {
      *v27 = 1.0 / (expf(-*v27) + 1.0);
      ++v27;
    }

    while (v27 < v26);
    do
    {
      v28 = v17->f32[0];
      v17 = (v17 + 4);
      v29 = v28;
      v30 = a5->f32[0];
      a5 = (a5 + 4);
      *a7++ = v29 * tanhf(v30);
      --v18;
    }

    while (v18);
  }
}

uint64_t ncblas_saxpy(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 >= 1)
  {
    if ((v3 & 0x7FFFFFFC) != 0)
    {
      v4 = 0;
      v5 = (a2 + 8);
      v6 = (a3 + 8);
      do
      {
        v7 = *(v6 - 1);
        *(v6 - 2) = *(v5 - 2) + *(v6 - 2);
        *(v6 - 1) = *(v5 - 1) + v7;
        v8 = v6[1];
        *v6 = *v5 + *v6;
        v6[1] = v5[1] + v8;
        v4 += 4;
        v5 += 4;
        v6 += 4;
      }

      while (v4 < (v3 & 0x7FFFFFFC));
    }

    else
    {
      LODWORD(v4) = 0;
    }

    if (v4 < v3)
    {
      v9 = (a3 + 4 * v4);
      v10 = (a2 + 4 * v4);
      v11 = v3 - v4;
      do
      {
        v12 = *v10++;
        *v9 = v12 + *v9;
        ++v9;
        --v11;
      }

      while (v11);
    }
  }

  return 0;
}

uint64_t ncblas_sgemm(_DWORD *a1, unsigned int *a2, _DWORD *a3, float *a4, unsigned int *a5, float *a6, unsigned int *a7, uint64_t a8, int *a9)
{
  v9 = *a1;
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *a2;
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *a3;
      if ((v11 & 0x80000000) == 0)
      {
        v12 = *a5;
        v13 = v11 <= 1 ? 1 : *a3;
        if (v12 >= v13)
        {
          v14 = *a7;
          if (v14 >= v13)
          {
            v15 = v9 <= 1 ? 1 : *a1;
            if (v10 && v9)
            {
              v16 = *a9;
              if (*a9 >= v15 && v11 != 0)
              {
                v18 = v9 + 1;
                v19 = v10 + 1;
                v20 = 4 * v14;
                v21 = 4 * v12;
                v22 = 1;
                do
                {
                  v23 = a4;
                  v24 = 1;
                  do
                  {
                    v25 = 0.0;
                    v26 = v11;
                    v27 = v23;
                    v28 = a6;
                    do
                    {
                      v29 = *v27++;
                      v30 = v29;
                      v31 = *v28++;
                      v25 = v25 + (v30 * v31);
                      --v26;
                    }

                    while (v26);
                    *(a8 + 4 * (v16 * (v22 - 1) - 1 + v24)) = v25 + *(a8 + 4 * (v16 * (v22 - 1) - 1 + v24));
                    ++v24;
                    v23 = (v23 + v21);
                  }

                  while (v24 != v18);
                  ++v22;
                  a6 = (a6 + v20);
                }

                while (v22 != v19);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void ann_check_zero_SIMD(int a1, float32x4_t *a2, uint64_t a3)
{
  if ((a1 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v3) = 0;
    v13 = 0;
  }

  else
  {
    v3 = 0;
    __asm { FMOV            V1.4S, #1.0 }

    do
    {
      v9 = *a2++;
      v10 = vaddvq_s32(vandq_s8(vorrq_s8(vcltzq_f32(v9), vcgtzq_f32(v9)), xmmword_26ED120B0));
      v11 = vaddvq_s32(vandq_s8(vceqq_f32(v9, _Q1), xmmword_26ED120B0));
      v12 = v11 << 8;
      if ((~(v11 | ~v10) & 0xF) != 0)
      {
        v12 = 0;
      }

      *(a3 + v3) = v10 | v12;
      v3 += 4;
    }

    while ((((a1 & 0xFFFFFFFC) - 4 + 3) & 0x1FFFFFFFCLL) + 4 != v3);
    v13 = 4 * ((((a1 & 0xFFFFFFFC) - 1) >> 2) + 1);
  }

  if (v3 < a1)
  {
    memset_pattern16((a3 + v13), &unk_26ECDB6D0, 4 * (~v3 + a1) + 4);
  }
}

uint64_t cblas_sgemv_CMP_4M_T_SIMD(uint64_t result, int a2, int8x16_t *a3, uint64_t a4, float32x4_t *a5, unsigned int *a6)
{
  LODWORD(v6) = 0;
  if (result >= 4 && a2 >= 4)
  {
    v7 = a2 & 0xFFFFFFFC;
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = result & 0xFFFFFFFC;
      v10 = a3;
      do
      {
        v11 = result & 0x7FFFFFFC;
        if (v9 != result)
        {
          do
          {
            a5->f32[v11] = a5->f32[v11] + (*&v10->i32[v11] * *(a4 + 4 * v8));
            ++v11;
          }

          while (v11 < result);
        }

        ++v8;
        v10 = (v10 + 4 * result);
      }

      while (v8 != v7);
      v6 = 0;
      v12 = 16 * result;
      v13 = a3->i64 + 12 * result;
      v14 = &a3->i64[result];
      v15 = a3;
      v16 = a3->i64 + 4 * result;
      do
      {
        v18 = *a6++;
        v17 = v18;
        if (v18)
        {
          if ((v17 & 0xF00) != 0)
          {
            if (v9 >= 1)
            {
              v19 = 0;
              v20 = zero_one[(v17 >> 8) & 1];
              v21 = zero_one[(v17 >> 9) & 1];
              v22 = zero_one[(v17 >> 10) & 1];
              v23 = (v17 >> 11) & 1;
              v24 = a5;
              v25 = v15;
              v26 = zero_one[v23];
              do
              {
                *v24 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*v24, vandq_s8(*v25, v20)), vandq_s8(*(v25 + 4 * result), v21)), vandq_s8(*(v25 + 8 * result), v22)), vandq_s8(*(v25 + 12 * result), v26));
                ++v24;
                v19 += 4;
                ++v25;
              }

              while (v19 < v9);
            }
          }

          else
          {
            v27 = (a4 + 4 * v6);
            v28 = v27;
            v30 = vld1q_dup_f32(v28);
            v29 = v28 + 1;
            if (v9 >= 1)
            {
              v31 = 0;
              v32 = 0;
              v33 = vld1q_dup_f32(v29);
              v34 = v27 + 2;
              v35 = vld1q_dup_f32(v34);
              v36 = v27 + 3;
              v37 = vld1q_dup_f32(v36);
              do
              {
                a5[v31 / 2] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(a5[v31 / 2], vmulq_f32(v30, v15[v31 / 2])), vmulq_f32(v33, *(v16 + v31 * 8))), vmulq_f32(v35, *&v14[v31])), vmulq_f32(v37, *(v13 + v31 * 8)));
                v32 += 4;
                v31 += 2;
              }

              while (v32 < v9);
            }
          }
        }

        v6 += 4;
        v15 = (v15 + v12);
        v13 += v12;
        v14 = (v14 + v12);
        v16 += v12;
      }

      while (v6 < v7);
    }
  }

  if (v6 < a2)
  {
    v38 = v6;
    v39 = &a3->i32[result * v6];
    do
    {
      if (result >= 1)
      {
        v40 = result;
        v41 = a5;
        v42 = v39;
        do
        {
          v43 = *v42++;
          *v41 = *v41 + (v43 * *(a4 + 4 * v38));
          ++v41;
          --v40;
        }

        while (v40);
      }

      ++v38;
      v39 += result;
    }

    while (v38 != a2);
  }

  return result;
}

uint64_t cblas_sgemv_4M_T_SIMD(uint64_t result, int a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5)
{
  LODWORD(v5) = 0;
  if (result >= 4 && a2 >= 4)
  {
    v6 = a2 & 0xFFFFFFFC;
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = result & 0xFFFFFFFC;
      v9 = a3;
      do
      {
        v10 = result & 0x7FFFFFFC;
        if (v8 != result)
        {
          do
          {
            a5->f32[v10] = a5->f32[v10] + (v9->f32[v10] * *(a4 + 4 * v7));
            ++v10;
          }

          while (v10 < result);
        }

        ++v7;
        v9 = (v9 + 4 * result);
      }

      while (v7 != v6);
      v5 = 0;
      v11 = a3;
      do
      {
        v12 = (a4 + 4 * v5);
        v13 = v12;
        v15 = vld1q_dup_f32(v13);
        v14 = v13 + 1;
        if (v8 >= 1)
        {
          v16 = 0;
          v17 = vld1q_dup_f32(v14);
          v18 = v12 + 2;
          v19 = vld1q_dup_f32(v18);
          v20 = v12 + 3;
          v21 = vld1q_dup_f32(v20);
          v22 = a5;
          v23 = v11;
          do
          {
            *v22 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*v22, vmulq_f32(v15, *v23)), vmulq_f32(v17, *(v23 + 4 * result))), vmulq_f32(v19, *(v23 + 8 * result))), vmulq_f32(v21, *(v23 + 12 * result)));
            ++v22;
            v16 += 4;
            ++v23;
          }

          while (v16 < v8);
        }

        v5 += 4;
        v11 += result;
      }

      while (v5 < v6);
    }
  }

  if (v5 < a2)
  {
    v24 = v5;
    v25 = &a3->f32[result * v5];
    do
    {
      if (result >= 1)
      {
        v26 = result;
        v27 = a5;
        v28 = v25;
        do
        {
          v29 = *v28++;
          *v27 = *v27 + (v29 * *(a4 + 4 * v24));
          ++v27;
          --v26;
        }

        while (v26);
      }

      ++v24;
      v25 += result;
    }

    while (v24 != a2);
  }

  return result;
}

float32_t multiply_multiply_add_SIMD(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, unsigned int a6)
{
  if ((a6 & 0xFFFFFFFC) != 0)
  {
    v6 = 0;
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    do
    {
      v12 = *v11++;
      v13 = v12;
      v14 = *v10++;
      v15 = v14;
      v16 = *v9++;
      v17 = v16;
      v18 = *v8++;
      v19 = vaddq_f32(vmulq_f32(v13, v15), vmulq_f32(v17, v18));
      *v7++ = v19;
      v6 += 4;
    }

    while (v6 < (a6 & 0xFFFFFFFC));
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 < a6)
  {
    v20 = &a1->f32[v6];
    v21 = &a2->f32[v6];
    v22 = &a3->f32[v6];
    v23 = &a4->f32[v6];
    v24 = &a5->i32[v6];
    v25 = a6 - v6;
    do
    {
      v26 = *v20++;
      v27 = v26;
      v28 = *v21++;
      v29 = v28;
      v30 = *v22++;
      v31 = v30;
      v32 = *v23++;
      v19.f32[0] = (v31 * v32) + (v27 * v29);
      *v24++ = v19.i32[0];
      --v25;
    }

    while (v25);
  }

  return v19.f32[0];
}

float32_t multiply_add_SIMD(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, unsigned int a4)
{
  if ((a4 & 0xFFFFFFFC) != 0)
  {
    v4 = 0;
    v5 = a3;
    v6 = a2;
    v7 = a1;
    do
    {
      v8 = *v6++;
      v9 = v8;
      v10 = *v5++;
      v11 = vaddq_f32(*v7, vmulq_f32(v9, v10));
      *v7++ = v11;
      v4 += 4;
    }

    while (v4 < (a4 & 0xFFFFFFFC));
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < a4)
  {
    v12 = &a2->f32[v4];
    v13 = &a3->f32[v4];
    v14 = &a1->f32[v4];
    v15 = a4 - v4;
    do
    {
      v16 = *v12++;
      v17 = v16;
      v18 = *v13++;
      v11.f32[0] = *v14 + (v17 * v18);
      *v14++ = v11.f32[0];
      --v15;
    }

    while (v15);
  }

  return v11.f32[0];
}

float *tanh_mul_inplace_approx_ansi_c(float *result, float *a2, float *a3, int a4)
{
  if (a4)
  {
    v4 = &result[a4];
    do
    {
      v5 = *result++;
      v6 = v5;
      v7 = v5 >= 4.9;
      v8 = v5 > -4.9 || v7;
      if (v6 <= -4.9)
      {
        v7 = 1;
      }

      if (v8)
      {
        v9 = 4.9;
      }

      else
      {
        v9 = -4.9;
      }

      if (v7)
      {
        v6 = v9;
      }

      v10 = *a2++;
      *a3++ = (v10 * (v6 * (((v6 * v6) * (((v6 * v6) * ((v6 * v6) + 378.0)) + 17325.0)) + 135140.0))) / (((v6 * v6) * (((v6 * v6) * (((v6 * v6) * 28.0) + 3150.0)) + 62370.0)) + 135140.0);
    }

    while (result < v4);
  }

  return result;
}

void sigm_inplace_approx_ansi_c(float *a1, int a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = &a1[a2];
    do
    {
      v4 = *v2;
      v5 = 1.0;
      if (*v2 <= 30.0)
      {
        v5 = 0.0;
        if (v4 >= -30.0)
        {
          v5 = 1.0 / (expf(-v4) + 1.0);
        }
      }

      *v2++ = v5;
    }

    while (v2 < v3);
  }
}

float *tanh_inplace_approx_ansi_c(float *result, int a2)
{
  if (a2)
  {
    v2 = &result[a2];
    do
    {
      v3 = *result;
      v4 = *result >= 4.9;
      v5 = *result > -4.9 || *result >= 4.9;
      if (v3 <= -4.9)
      {
        v4 = 1;
      }

      if (v5)
      {
        v6 = 4.9;
      }

      else
      {
        v6 = -4.9;
      }

      if (v4)
      {
        v3 = v6;
      }

      *result++ = (v3 * (((v3 * v3) * (((v3 * v3) * ((v3 * v3) + 378.0)) + 17325.0)) + 135140.0)) / (((v3 * v3) * (((v3 * v3) * (((v3 * v3) * 28.0) + 3150.0)) + 62370.0)) + 135140.0);
    }

    while (result < v2);
  }

  return result;
}

uint64_t cblas_sgemv_generic(uint64_t result, int a2, float *a3, float *a4, uint64_t a5)
{
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      if (a2 >= 1)
      {
        v6 = *(a5 + 4 * v5);
        v7 = a2;
        v8 = a4;
        v9 = a3;
        do
        {
          v10 = *v9++;
          v11 = v10;
          v12 = *v8++;
          v6 = v6 + (v11 * v12);
          *(a5 + 4 * v5) = v6;
          --v7;
        }

        while (v7);
      }

      ++v5;
      a3 += a2;
    }

    while (v5 != result);
  }

  return result;
}

uint64_t cblas_sgemv_generic_T(uint64_t result, int a2, float *a3, uint64_t a4, float *a5)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      if (result >= 1)
      {
        v6 = result;
        v7 = a5;
        v8 = a3;
        do
        {
          v9 = *v8++;
          *v7 = *v7 + (v9 * *(a4 + 4 * i));
          ++v7;
          --v6;
        }

        while (v6);
      }

      a3 += result;
    }
  }

  return result;
}

void *FastInferObject_Create(uint64_t a1)
{
  result = heap_Calloc(*(a1 + 8), 1, 72);
  if (result)
  {
    *result = a1;
  }

  return result;
}

uint64_t FastInferObject_Open(uint64_t a1, uint64_t a2)
{
  v2 = 2229280768;
  if (!a1)
  {
    return 2229280778;
  }

  *(a1 + 36) = 0;
  v5 = fi_rsc_create(*a1, (a1 + 8));
  if (v5)
  {
    v11 = v5;
    v12 = *a1;
    v13 = "FastInfer Resource creation failed: %d";
  }

  else
  {
    v14 = parse_fi_binary_model(*(a1 + 8), a2, (a1 + 16));
    if (v14)
    {
      v11 = v14;
      v12 = *a1;
      v13 = "FastInfer NN binary model parsing failed: %d";
    }

    else
    {
      v16 = *(a1 + 16);
      if (*(v16 + 52) == 2)
      {
        v2 = 0;
        *(a1 + 36) = *(v16 + 60);
        return v2;
      }

      v12 = *a1;
      v13 = "FastInfer NN binary model has an invalid number of dimensions: %d";
      v11 = 0;
    }
  }

  UNICORN__log_select_Error(v12, v11, v13, v6, v7, v8, v9, v10);
  return v2;
}

uint64_t FastInferObject_Close(void *a1)
{
  if (!a1)
  {
    return 2229280778;
  }

  FastInferObject_ClearLayerAdjuster(a1);
  v2 = a1[2];
  if (v2)
  {
    fi_net_destroy(v2);
    a1[2] = 0;
  }

  result = a1[1];
  if (result)
  {
    fi_rsc_destroy(result);
    result = 0;
    a1[1] = 0;
  }

  return result;
}

void *FastInferObject_ClearLayerAdjuster(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
  }

  return cstdlib_memset(a1 + 5, 0, 0x20uLL);
}

uint64_t FastInferObject_Reset(uint64_t a1)
{
  if (!a1)
  {
    return 2229280778;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  FastInferObject_ClearLayerAdjuster(a1);
  return 0;
}

uint64_t FastInferObject_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2229280768;
  if (!a1)
  {
    return 2229280778;
  }

  v17 = 0;
  v10 = fi_net_predict_ex(*(a1 + 16), (a1 + 24), *(a1 + 32), &v17, FastInferObject_LayerAdjusterCB, a1, 0, a8);
  if (!v10)
  {
    return 0;
  }

  UNICORN__log_select_Error(*a1, v10, "FastInferObject_Process, Error evaluating ANN\n", v11, v12, v13, v14, v15);
  return v8;
}

uint64_t FastInferObject_LayerAdjusterCB(uint64_t a1, char *__s1, uint64_t a3, _DWORD *a4)
{
  if (!*(a1 + 64))
  {
    return 0;
  }

  if (!cstdlib_strcmp(__s1, *(a1 + 40)))
  {
    if (*a4 == 2)
    {
      (*(a1 + 64))(a3, (a4[2] * a4[1]), *(a1 + 48), *(a1 + 56), a3);
      return 1;
    }

    UNICORN__log_select_Error(*a1, 0, "FastInferObject_LayerAdjusterCB called with an invalid dimension (%d, expected 2)\n", v7, v8, v9, v10, v11);
  }

  return 0;
}

uint64_t FastInferObject_BorrowModelInputs(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 2229280778;
  }

  result = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return result;
}

uint64_t FastInferObject_BorrowModelOutputLayer(uint64_t *a1, char *a2, uint64_t *a3, _DWORD *a4, unsigned __int32 *a5)
{
  v5 = 2229280775;
  if (!a1)
  {
    return 2229280778;
  }

  v19 = 0uLL;
  v20 = 0;
  fi_net_borrow_output_data(a1[2], a2, a3, &v19);
  if (v10)
  {
    UNICORN__log_select_Error(*a1, v10, "fi_net_borrow_output_data failed - Expected output '%s' not found in ANN\n", v11, v12, v13, v14, v15);
    v16 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    v5 = 0;
    v17 = v19.n128_u32[0];
    *a4 = v19.n128_u32[1];
    v16 = v19.n128_u32[2];
    if (v17 <= 1)
    {
      v16 = 0;
    }
  }

  *a5 = v16;
  return v5;
}

uint64_t FastInferObject_SetLayerAdjuster(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, uint64_t a5)
{
  v5 = 2229280775;
  if (a1)
  {
    FastInferObject_ClearLayerAdjuster(a1);
    v11 = a4;
    v12 = heap_Calloc(*(*a1 + 8), a4, 4);
    *(a1 + 48) = v12;
    if (v12)
    {
      if (a4)
      {
        do
        {
          v18 = *a3++;
          *v12++ = v18;
          --v11;
        }

        while (v11);
      }

      v5 = 0;
      *(a1 + 64) = a5;
      *(a1 + 56) = a4;
      *(a1 + 40) = a2;
    }

    else
    {
      UNICORN__log_select_Error(*a1, 0, "FastInferObject_SetLayerAdjuster, Error, Out of memory\n", v13, v14, v15, v16, v17);
      return 2229280778;
    }
  }

  return v5;
}

uint64_t synth_bet5_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &ISynth_Bet5;
  return result;
}

uint64_t synth_bet5_ClassOpen(_WORD *a1, int a2, uint64_t a3)
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
    *(a3 + 8) = 9357;
  }

  return result;
}

uint64_t synth_bet5_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Object = 2229280775;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v30 = xmmword_287EF09C0;
  v31 = off_287EF09D0;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v34);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      if ((safeh_HandleCheck(a1, a2, 9357, 416) & 0x80000000) == 0)
      {
        *a5 = 0;
        *(a5 + 8) = 0;
        log_OutText(*(v34 + 32), "SYNTH_BET5", 4, 0, "Entering synth_bet5_ObjOpen", v12, v13, v14, v28);
        v15 = heap_Calloc(*(v34 + 8), 1, 22608);
        if (!v15)
        {
          log_OutPublic(*(v34 + 32), "SYNTH_BET5", 59000, 0, v16, v17, v18, v19, v29);
          Object = 2229280778;
          goto LABEL_20;
        }

        v20 = v15;
        *v15 = a3;
        v15[1] = a4;
        v21 = v34;
        v15[2] = v34;
        v15[3] = a1;
        v15[10] = 0;
        Listen = critsec_ObjOpen(*(v21 + 16), *(v21 + 8), v15 + 4);
        if ((Listen & 0x80000000) != 0 || (*&v30 = v20, Listen = synth_bet5_loc_ParamGetListen(v20, "volume", 0, 100, 0x50u, &v30, &v32), (Listen & 0x80000000) != 0) || (Listen = synth_bet5_loc_ParamGetListen(v20, "rate", 50, 400, 0x64u, &v30, &v32), (Listen & 0x80000000) != 0) || (Listen = synth_bet5_loc_ParamGetListen(v20, "rate_baseline", 50, 400, 0x64u, &v30, &v32), (Listen & 0x80000000) != 0) || (Listen = synth_bet5_loc_ParamGetListen(v20, "waitfactor", 0, 9, 2u, &v30, &v32), (Listen & 0x80000000) != 0) || (Listen = synth_bet5_loc_ParamGetListen(v20, "pitch", 50, 200, 0x64u, &v30, &v32), (Listen & 0x80000000) != 0) || (Listen = synth_bet5_loc_ParamGetListen(v20, "pitch_baseline", 50, 200, 0x64u, &v30, &v32), (Listen & 0x80000000) != 0) || (Listen = synth_bet5_loc_SynthInit(v20), (Listen & 0x80000000) != 0))
        {
          Object = Listen;
        }

        else
        {
          Object = objc_GetObject(*(v34 + 48), "SYNTHSTREAM", &v33);
          if ((Object & 0x80000000) == 0)
          {
            *(v20 + 21496) = *(v33 + 8);
            *a5 = v20;
            *(a5 + 8) = 9356;
LABEL_20:
            log_OutText(*(v34 + 32), "SYNTH_BET5", 4, 0, "synth_bet5_ObjOpen: %x", v24, v25, v26, Object);
            return Object;
          }

          log_OutPublic(*(*(v20 + 16) + 32), "SYNTH_BET5", 59001, 0, v23, v24, v25, v26, v29);
        }

        *a5 = v20;
        *(a5 + 8) = 9356;
        synth_bet5_ObjClose(v20, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        goto LABEL_20;
      }

      return 2229280776;
    }
  }

  return Object;
}

uint64_t synth_bet5_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 9356, 22608);
  if (v3 < 0)
  {
    return 2229280776;
  }

  LODWORD(v7) = v3;
  v8 = *(a1 + 16);
  log_OutText(*(v8 + 32), "SYNTH_BET5", 4, 0, "Entering synth_bet5_ObjClose", v4, v5, v6, v42);
  v9 = *(v8 + 40);
  v44 = a1;
  v43 = *(&xmmword_287EF09C0 + 8);
  v45 = *(&xmmword_287EF09C0 + 8);
  v10 = paramc_ListenerRemove(v9, "volume", &v44);
  v11 = *(v8 + 40);
  if (v10 < 0)
  {
    LODWORD(v7) = v10;
  }

  v44 = a1;
  v45 = v43;
  v12 = paramc_ListenerRemove(v11, "rate", &v44);
  v13 = *(v8 + 40);
  if (v12 < 0 && v7 > -1)
  {
    LODWORD(v7) = v12;
  }

  v44 = a1;
  v45 = v43;
  v15 = paramc_ListenerRemove(v13, "rate_baseline", &v44);
  v16 = *(v8 + 40);
  if (v15 < 0 && v7 > -1)
  {
    LODWORD(v7) = v15;
  }

  v44 = a1;
  v45 = v43;
  v18 = paramc_ListenerRemove(v16, "waitfactor", &v44);
  v19 = *(v8 + 40);
  if (v18 < 0 && v7 > -1)
  {
    LODWORD(v7) = v18;
  }

  v44 = a1;
  v45 = v43;
  v21 = paramc_ListenerRemove(v19, "pitch", &v44);
  v22 = *(v8 + 40);
  if (v21 < 0 && v7 > -1)
  {
    LODWORD(v7) = v21;
  }

  v44 = a1;
  v45 = v43;
  v24 = paramc_ListenerRemove(v22, "pitch_baseline", &v44);
  v25 = *(v8 + 40);
  if (v24 < 0 && v7 > -1)
  {
    LODWORD(v7) = v24;
  }

  v44 = a1;
  v45 = v43;
  v27 = paramc_ListenerRemove(v25, "audiooutputbufsamples", &v44);
  v28 = v27 >= 0 || v7 <= -1;
  v29 = *(v8 + 40);
  v30 = *(a1 + 21424);
  if (!v28)
  {
    LODWORD(v7) = v27;
  }

  v44 = a1;
  v45 = v43;
  v31 = paramc_ListenerRemove(v29, v30, &v44);
  if (v7 > -1 && v31 < 0)
  {
    v7 = v31;
  }

  else
  {
    v7 = v7;
  }

  synth_bet5_HandleAddons(a1, "");
  heap_Free(*(v8 + 8), *(a1 + 21424));
  if (*(a1 + 21496))
  {
    v33 = objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
    if (v7 > -1 && v33 < 0)
    {
      v7 = v33;
    }

    else
    {
      v7 = v7;
    }
  }

  if (*(a1 + 80))
  {
    v7 = Lookup_ObjClose((a1 + 80));
    *(a1 + 80) = 0;
  }

  v35 = *(a1 + 32);
  if (v35)
  {
    v36 = critsec_ObjClose(v35);
    if (v7 > -1 && v36 < 0)
    {
      v7 = v36;
    }

    else
    {
      v7 = v7;
    }
  }

  heap_Free(*(v8 + 8), a1);
  log_OutText(*(v8 + 32), "SYNTH_BET5", 4, 0, "synth_bet5_ObjClose: %x", v38, v39, v40, v7);
  return v7;
}

uint64_t synth_bet5_ObjReopen(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 9356, 22608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v6 = *(a1 + 16);
  log_OutText(*(v6 + 32), "SYNTH_BET5", 4, 0, "Entering synth_bet5_ObjReopen", v3, v4, v5, v12);
  v7 = synth_bet5_loc_SynthInit(a1);
  log_OutText(*(v6 + 32), "SYNTH_BET5", 4, 0, "synth_bet5_ObjReopen: %x", v8, v9, v10, v7);
  return v7;
}

uint64_t synth_bet5_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 9356, 22608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  synstrmaux_InitStreamOpener(a1 + 21504, *(*(a1 + 16) + 32), "SYNTH_BET5");
  *(a1 + 22588) = 0;
  *(a1 + 22592) = -2;
  *(a1 + 22596) = 0x100000001;
  *(a1 + 22552) = 0;
  *(a1 + 22576) = 0;
  if (synstrmaux_BuildAudioContentType("audio/L16;rate=", *(a1 + 48), (a1 + 21444), 0x30uLL) > 0x2F)
  {
    return 9;
  }

  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-unit-index-in-sentence;version=4.0", 0, a1 + 22392);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-psola-f0begin;version=4.0", 0, a1 + 22408);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-psola-f0end;version=4.0", 0, a1 + 22424);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-psola-duration;version=4.0", 0, a1 + 22440);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-psola-maxfade-l;version=4.0", 0, a1 + 22456);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-psola-maxfade-r;version=4.0", 0, a1 + 22472);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-psola-adjacent-l;version=4.0", 0, a1 + 22488);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-psola-adjacent-r;version=4.0", 0, a1 + 22504);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 22328);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-usids;version=4.0", 0, a1 + 22344);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-usoffsets;version=5.0", 0, a1 + 22360);
  synstrmaux_RegisterInStream((a1 + 21504), "application/x-realspeak-usdurs-32;version=5.0", 0, a1 + 22376);
  synstrmaux_RegisterOutStream((a1 + 21504), a1 + 21444, a1 + 22520);
  synstrmaux_RegisterOutStream((a1 + 21504), "application/x-realspeak-markers-pp;version=4.0", a1 + 22536);
  v8 = synstrmaux_OpenStreams((a1 + 21504), *(a1 + 21496), a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    synth_bet5_ProcessEnd(a1, a2);
  }

  return v8;
}

uint64_t synth_bet5_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  DirectEndStream = -2065686518;
  v145 = 0;
  if ((safeh_HandleCheck(a1, a2, 9356, 22608) & 0x80000000) == 0)
  {
    *a5 = 1;
    log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET5", 3, 0, "SYNTH-IN   ----------------- synth_bet5_Process [enter] -----------------", v8, v9, v10, v118);
    v152[0] = 0;
    v150 = 0;
    v151 = 0uLL;
    v148 = 0;
    v149 = 0;
    v146 = 0;
    v147 = 0;
    v143 = 0;
    v144 = 0;
    v142 = 0;
    v140 = 0;
    v141 = 0;
    v138 = 0;
    v139 = 0;
    v136 = 0;
    v137 = 0;
    v134 = 0;
    v135 = 0;
    v11 = (*(*(a1 + 21496) + 144))(*(a1 + 22344), *(a1 + 22352), &v151 + 12, v152);
    if ((v11 & 0x80000000) != 0)
    {
      v20 = v11;
      log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET5", 59004, "%s%x", v12, v13, v14, v15, "lhError");
      goto LABEL_129;
    }

    v20 = (*(*(a1 + 21496) + 144))(*(a1 + 22328), *(a1 + 22336), &v147, v152 + 4);
    if ((v20 & 0x80000000) == 0)
    {
      if (!v147 && !HIDWORD(v151) && LODWORD(v152[0]) && HIDWORD(v152[0]))
      {
        v20 = synstrmaux_CloseOutStreamsOnly((a1 + 21504), *(a1 + 21496));
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_129;
        }

        v21 = 0;
        v22 = 0;
LABEL_38:
        if (!(v21 | v22) || !*a5)
        {
          goto LABEL_129;
        }

        v122 = v21;
        if (v22)
        {
          v41 = (*(*(a1 + 21496) + 112))(*(a1 + 22536), *(a1 + 22544), &v145, 32 * v22);
          if ((v41 & 0x80000000) != 0)
          {
            v20 = v41;
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET5", 59007, "%s%s%s%x", v42, v43, v44, v45, "stream");
            goto LABEL_129;
          }
        }

        v46 = critsec_Enter(*(a1 + 32));
        if ((v46 & 0x80000000) != 0)
        {
          v20 = v46;
          goto LABEL_129;
        }

        if (v22 && v146 && v145)
        {
          cstdlib_memcpy(v145, v146, 32 * v22);
        }

        v47 = v122;
        if (v122)
        {
          v48 = v144;
          v49 = v141;
          if (!*(v141 + 4))
          {
            *(a1 + 22592) = -2;
            FreePsolaData(a1);
            v50 = UNICORN__Psola_Initialise((a1 + 22576), *(a1 + 16), *(a1 + 48));
            v47 = v122;
            if (v50 < 0)
            {
              v107 = v50;
              log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET5", 59000, 0, v51, v52, v53, v54, v119);
              v103 = 0;
              DirectEndStream = v107;
              goto LABEL_98;
            }
          }

          v55 = heap_Realloc(*(*(a1 + 16) + 8), *(*(a1 + 22576) + 128), 40 * (*(*(a1 + 22576) + 120) + v47));
          *(*(a1 + 22576) + 128) = v55;
          if (v55)
          {
            v60 = *(a1 + 22568);
            v61 = v60 - *(v49 + 4);
            v62 = v47 - v61;
            v63 = v47 - v61 + 1;
            v64 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 22560), 8 * (v63 + v60));
            *(a1 + 22560) = v64;
            if (v64)
            {
              cstdlib_memset((v64 + 8 * *(a1 + 22568)), 0, 8 * v63);
              if (v47 == v61)
              {
                v65 = *(a1 + 22568) + v62;
                *(*(a1 + 22560) + 8 * v65) = 0;
                *(a1 + 22568) = v65;
                goto LABEL_54;
              }

              v89 = 0;
              DirectEndStream = 0;
              v90 = v47 - v61;
              if (v62 <= 1)
              {
                v91 = 1;
              }

              else
              {
                v91 = v62;
              }

              v133 = v91;
              while (1)
              {
                v92 = concat_UID2AddonId(*(a1 + 21432), *(a1 + 21440), *(v48 + 4 * (v61 + v89)));
                concat_enableAddon(a1 + 56, v92);
                v93 = newPeriDesc(*(a1 + 16));
                v94 = *(a1 + 22568);
                v95 = (v89 + v94);
                *(*(a1 + 22560) + 8 * v95) = v93;
                v96 = *(a1 + 22560);
                v97 = *(v96 + 8 * v95);
                if (!v97)
                {
                  break;
                }

                v98 = *(v48 + 4 * (v61 + v89));
                if (v98 == -1)
                {
                  *v97 = 0;
                }

                else
                {
                  v99 = Lookup_UnitPeriInfo(*(a1 + 88), v98 - *(a1 + 108), v97);
                  if (v99 < 0)
                  {
                    DirectEndStream = v99;
                    goto LABEL_96;
                  }

                  DirectEndStream = Psola_AssignPeriRanges_0(*(*(a1 + 22560) + 8 * (v89 + *(a1 + 22568))));
                  v96 = *(a1 + 22560);
                  v94 = *(a1 + 22568);
                  v95 = (v89 + v94);
                }

                v100 = *(v96 + 8 * v95);
                if (!*(v100 + 4))
                {
                  v101 = *(v100 + 2);
                  if (v101)
                  {
                    *(v100 + 4) = 1;
                    *(v100 + 2) = v101 - 1;
                  }
                }

                if (v133 == ++v89)
                {
                  v102 = v94 + v90;
                  *(v96 + 8 * v102) = 0;
                  *(a1 + 22568) = v102;
                  if ((DirectEndStream & 0x80000000) == 0)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_96;
                }
              }
            }

            DirectEndStream = -2065686518;
          }

LABEL_96:
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET5", 59000, 0, v56, v57, v58, v59, v119);
          goto LABEL_97;
        }

LABEL_54:
        *(*(a1 + 22576) + 152) = *(a1 + 22560);
        v66 = UNICORN__concat_init(*(a1 + 16), 0, 0, "", synth_bet5_loc_WsolaOutputCB, a1, 0, 0, a1 + 56, *(a1 + 22556), 1);
        if (v66 < 0 || (v66 = UNICORN__concat_initW(a1 + 56), v66 < 0))
        {
          DirectEndStream = v66;
        }

        else
        {
          synth_bet5_loc_ProceedToNextPhonemeMarkerForSynthesizing(a1, v145, v22);
          synth_bet5_loc_ProceedToNextPhonemeMarkerForDelivering(a1, v145, v22);
          v67 = v122;
          if (v122)
          {
            v68 = 0;
            v123 = v22;
            v69 = -8;
            v124 = a5;
            v125 = (a1 + 56);
            do
            {
              v70 = v144;
              v71 = v142;
              v72 = v143;
              v73 = v140;
              v126 = v139;
              v127 = v138;
              v128 = v137;
              v129 = v136;
              v130 = v135;
              v131 = v134;
              v132 = v69;
              v74 = *(*(a1 + 16) + 32);
              v75 = *(v144 + 4 * v68);
              UNICORN__concat_Dur2Sample(*(a1 + 120), *(v142 + 4 * v68));
              log_OutText(v74, "SYNTH_BET5", 3, 0, "SYNTH-IN   unitId %d (phonstate %d): %d msec (= %d smp)\n", v76, v77, v78, v75);
              v79 = *(a1 + 22576);
              v80 = (*(v79 + 128) + 40 * *(v79 + 120));
              *v80 = *(v70 + 4 * v68);
              v80[1] = *(v72 + 4 * v68);
              v80[2] = *(v71 + 4 * v68);
              v80[3] = *(v73 + 4 * v68);
              v80[4] = *(v126 + 4 * v68);
              v80[5] = *(v127 + 4 * v68);
              v80[6] = *(v128 + 4 * v68);
              v80[7] = *(v129 + 4 * v68);
              v80[8] = *(v130 + 4 * v68);
              v80[9] = *(v131 + 4 * v68);
              DirectEndStream = UNICORN__Psola_Synthesis(v125, v79);
              if (DirectEndStream < 0)
              {
                log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET5", 59100, 0, v81, v82, v83, v84, v121);
                v86 = v123;
                v85 = v124;
              }

              else
              {
                ++*(a1 + 22592);
                v86 = v123;
                v85 = v124;
                log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET5", 3, 0, "SYNTH-OUT  generated %d samples covering %d units for phoneme [%c]", v82, v83, v84, *(a1 + 22588));
                if (*(a1 + 22592) == *(a1 + 22584))
                {
                  synth_bet5_loc_UpdatePhonemeMarkerDeliveringUnits(a1, v145, v123);
                  synth_bet5_loc_ProceedToNextPhonemeMarkerForDelivering(a1, v145, v123);
                  DirectEndStream = 0;
                }
              }

              if (!(++v68 % *(a1 + 22584)))
              {
                synth_bet5_loc_ProceedToNextPhonemeMarkerForSynthesizing(a1, v145, v86);
              }

              v69 = v132 + 8;
            }

            while ((DirectEndStream & 0x80000000) == 0 && v68 < v122);
            if (DirectEndStream < 0)
            {
              goto LABEL_97;
            }

            v87 = (*(v141 + v69) & 1) == 0;
            if (*(v141 + v69))
            {
              if ((UNICORN__Psola_OutputFinalSilence(v125, *(a1 + 22576)) & 0x80000000) != 0)
              {
                log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET5", 59100, 0, v108, v109, v110, v111, v119);
              }

              synth_bet5_loc_UpdatePhonemeMarkerDeliveringUnits(a1, v145, v86);
              synth_bet5_loc_ProceedToNextPhonemeMarkerForDelivering(a1, v145, v86);
            }

            else if (*(a1 + 22600) <= 0xFFFFFFFD)
            {
              v86 = *(a1 + 22600);
            }

            else
            {
              v86 = 0;
            }

            *v85 = 1;
            v67 = v122;
          }

          else
          {
            v86 = *(a1 + 22600);
            if (v86 > 0xFFFFFFFD)
            {
              DirectEndStream = synth_bet5_loc_ReadDirectEndStream(a1, 0, 0);
              v103 = 0;
LABEL_120:
              *(a1 + 22596) = -1;
              goto LABEL_98;
            }

            LODWORD(v68) = 0;
            v87 = 1;
          }

          if (!v86 || (v112 = (*(*(a1 + 21496) + 120))(*(a1 + 22536), *(a1 + 22544), 32 * v86), v67 = v122, (v112 & 0x80000000) == 0))
          {
            if (v67)
            {
              v103 = *(v141 + 8 * (v68 - 1)) & 1;
              DirectEndStream = synth_bet5_loc_ReadDirectEndStream(a1, v68, v86);
              if (v87)
              {
                goto LABEL_120;
              }
            }

            else
            {
              DirectEndStream = synth_bet5_loc_ReadDirectEndStream(a1, 0, v86);
              v103 = 0;
              if (v87)
              {
                goto LABEL_120;
              }
            }

            *(a1 + 22596) = 0x100000001;
LABEL_98:
            v104 = critsec_Leave(*(a1 + 32));
            if (DirectEndStream > -1 && v104 < 0)
            {
              v20 = v104;
            }

            else
            {
              v20 = DirectEndStream;
            }

            if (v103)
            {
              v106 = "SYNTH-OUT   ----------------- synth_bet5_Process [exit eos] -----------------";
LABEL_130:
              log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET5", 3, 0, v106, v17, v18, v19, v119);
              return v20;
            }

LABEL_129:
            v106 = "SYNTH-OUT   ----------------- synth_bet5_Process [exit] -----------------";
            goto LABEL_130;
          }

          DirectEndStream = v112;
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET5", 59007, "%s%s%s%x", v113, v114, v115, v116, "stream");
        }

LABEL_97:
        v103 = 0;
        goto LABEL_98;
      }

      if (!HIDWORD(v151))
      {
        v22 = 0;
        v21 = 0;
        *a5 = 0;
        goto LABEL_38;
      }

      v26 = (*(*(a1 + 21496) + 88))(*(a1 + 22344), *(a1 + 22352), &v144, &v151 + 12);
      if ((v26 & 0x80000000) != 0)
      {
        v20 = v26;
        v88 = *(*(a1 + 16) + 32);
      }

      else
      {
        HIDWORD(v151) >>= 2;
        v31 = (*(*(a1 + 21496) + 88))(*(a1 + 22360), *(a1 + 22368), &v143, &v151 + 8);
        if ((v31 & 0x80000000) != 0)
        {
          v20 = v31;
          v88 = *(*(a1 + 16) + 32);
        }

        else
        {
          DWORD2(v151) >>= 2;
          v32 = (*(*(a1 + 21496) + 88))(*(a1 + 22376), *(a1 + 22384), &v142, &v151 + 4);
          if ((v32 & 0x80000000) != 0)
          {
            v20 = v32;
            v88 = *(*(a1 + 16) + 32);
          }

          else
          {
            DWORD1(v151) >>= 2;
            v33 = (*(*(a1 + 21496) + 88))(*(a1 + 22392), *(a1 + 22400), &v141, &v151);
            if ((v33 & 0x80000000) != 0)
            {
              v20 = v33;
              v88 = *(*(a1 + 16) + 32);
            }

            else
            {
              LODWORD(v151) = v151 >> 3;
              v34 = (*(*(a1 + 21496) + 88))(*(a1 + 22408), *(a1 + 22416), &v140, &v150 + 4);
              if ((v34 & 0x80000000) != 0)
              {
                v20 = v34;
                v88 = *(*(a1 + 16) + 32);
              }

              else
              {
                HIDWORD(v150) >>= 2;
                v35 = (*(*(a1 + 21496) + 88))(*(a1 + 22424), *(a1 + 22432), &v139, &v150);
                if ((v35 & 0x80000000) != 0)
                {
                  v20 = v35;
                  v88 = *(*(a1 + 16) + 32);
                }

                else
                {
                  LODWORD(v150) = v150 >> 2;
                  v36 = (*(*(a1 + 21496) + 88))(*(a1 + 22440), *(a1 + 22448), &v138, &v149 + 4);
                  if ((v36 & 0x80000000) != 0)
                  {
                    v20 = v36;
                    v88 = *(*(a1 + 16) + 32);
                  }

                  else
                  {
                    HIDWORD(v149) >>= 2;
                    v37 = (*(*(a1 + 21496) + 88))(*(a1 + 22456), *(a1 + 22464), &v137, &v149);
                    if ((v37 & 0x80000000) != 0)
                    {
                      v20 = v37;
                      v88 = *(*(a1 + 16) + 32);
                    }

                    else
                    {
                      LODWORD(v149) = v149 >> 2;
                      v38 = (*(*(a1 + 21496) + 88))(*(a1 + 22472), *(a1 + 22480), &v136, &v148 + 4);
                      if ((v38 & 0x80000000) != 0)
                      {
                        v20 = v38;
                        v88 = *(*(a1 + 16) + 32);
                      }

                      else
                      {
                        HIDWORD(v148) >>= 2;
                        v39 = (*(*(a1 + 21496) + 88))(*(a1 + 22488), *(a1 + 22496), &v135, &v148);
                        if ((v39 & 0x80000000) != 0)
                        {
                          v20 = v39;
                          v88 = *(*(a1 + 16) + 32);
                        }

                        else
                        {
                          LODWORD(v148) = v148 >> 2;
                          v40 = (*(*(a1 + 21496) + 88))(*(a1 + 22504), *(a1 + 22512), &v134, &v147 + 4);
                          if ((v40 & 0x80000000) == 0)
                          {
                            HIDWORD(v147) >>= 2;
                            v20 = (*(*(a1 + 21496) + 88))(*(a1 + 22328), *(a1 + 22336), &v146, &v147);
                            if ((v20 & 0x80000000) != 0)
                            {
                              v23 = *(*(a1 + 16) + 32);
                              v120 = "contentType";
                              v24 = "%s%s%s%x";
                            }

                            else
                            {
                              v22 = v147 >> 5;
                              LODWORD(v147) = v147 >> 5;
                              v21 = HIDWORD(v151);
                              if (__PAIR64__(HIDWORD(v151), HIDWORD(v151)) == *(&v151 + 4) && HIDWORD(v151) == v151 && HIDWORD(v151) == HIDWORD(v150) && HIDWORD(v151) == v150 && HIDWORD(v151) == HIDWORD(v149) && HIDWORD(v151) == v149 && HIDWORD(v151) == HIDWORD(v148) && HIDWORD(v151) == v148 && HIDWORD(v151) == HIDWORD(v147))
                              {
                                goto LABEL_38;
                              }

                              v23 = *(*(a1 + 16) + 32);
                              v20 = 2229280768;
                              LODWORD(v120) = -2065686528;
                              v24 = "Consistency check failed when reading synthstreams";
                            }

                            v25 = 59005;
LABEL_13:
                            log_OutPublic(v23, "SYNTH_BET5", v25, v24, v16, v17, v18, v19, v120);
                            goto LABEL_129;
                          }

                          v20 = v40;
                          v88 = *(*(a1 + 16) + 32);
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

      log_OutPublic(v88, "SYNTH_BET5", 59005, "%s%s%s%x", v27, v28, v29, v30, "contentType");
      goto LABEL_129;
    }

    v23 = *(*(a1 + 16) + 32);
    v120 = "lhError";
    v24 = "%s%x";
    v25 = 59004;
    goto LABEL_13;
  }

  return 2229280776;
}

uint64_t synth_bet5_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 9356, 22608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *(a1 + 22552) = 0;
  Lookup_DeInit(*(a1 + 80));
  FreePsolaData(a1);
  UNICORN__concat_final_deinitW((a1 + 56));
  v3 = *(a1 + 21496);

  return synstrmaux_CloseStreams((a1 + 21504), v3);
}

uint64_t synth_bet5_loc_ParamCheckChange(int a1, char *__s1, const char *a3, _DWORD *a4)
{
  if (cstdlib_strcmp(__s1, "audiooutputbufsamples"))
  {
    if (cstdlib_strcmp(__s1, "volume"))
    {
      if (!cstdlib_strcmp(__s1, "rate") || !cstdlib_strcmp(__s1, "rate_baseline"))
      {
        v8 = __CFADD__(LH_atoi(a3) - 401, 351);
LABEL_14:
        if (v8)
        {
          result = 0;
        }

        else
        {
          result = 2229280783;
        }

        goto LABEL_21;
      }

      if (!cstdlib_strcmp(__s1, "ratewpm"))
      {
        result = 2229280769;
        goto LABEL_21;
      }

      if (cstdlib_strcmp(__s1, "waitfactor"))
      {
        if (cstdlib_strcmp(__s1, "pitch_baseline") && cstdlib_strcmp(__s1, "pitch"))
        {
          result = 0;
          goto LABEL_21;
        }

        v8 = __CFADD__(LH_atoi(a3) - 201, 151);
        goto LABEL_14;
      }

      v9 = LH_atoi(a3) > 9;
    }

    else
    {
      v9 = LH_atoi(a3) > 0x64;
    }

    if (v9)
    {
      result = 2229280783;
    }

    else
    {
      result = 0;
    }
  }

  else if (LH_atoi(a3) <= 0)
  {
    result = 2229280783;
  }

  else
  {
    result = 0;
  }

LABEL_21:
  *a4 = result >= 0;
  return result;
}

uint64_t synth_bet5_loc_ParamLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  if (cstdlib_strcmp(__s1, "audiooutputbufsamples") && cstdlib_strcmp(__s1, "volume") && cstdlib_strcmp(__s1, "rate") && cstdlib_strcmp(__s1, "rate_baseline") && cstdlib_strcmp(__s1, "pitch_baseline") && cstdlib_strcmp(__s1, "ratewpm") && cstdlib_strcmp(__s1, "waitfactor") && cstdlib_strcmp(__s1, "pitch"))
  {
    if (cstdlib_strcmp(__s1, *(a1 + 21424)))
    {
      return 0;
    }

    else
    {

      return synth_bet5_HandleAddons(a1, a3);
    }
  }

  else
  {
    v7 = LH_atoi(a3);

    return synth_bet5_loc_ParamSet(a1, __s1, v7);
  }
}

uint64_t synth_bet5_loc_ParamGetListen(uint64_t a1, _BYTE *a2, signed int a3, signed int a4, unsigned int a5, __int128 *a6, unsigned int *a7)
{
  if ((paramc_ParamGetInt(*(*(a1 + 16) + 40), a2, a7) & 0x80000000) != 0 || (a5 = a3, *a7 < a3) || (a5 = a4, *a7 > a4))
  {
    v14 = paramc_ParamSetInt(*(*(a1 + 16) + 40), a2, a5);
    *a7 = a5;
    if ((v14 & 0x80000000) != 0)
    {
      v20 = v14;
      v21 = *(*(a1 + 16) + 32);
      v25 = "parameter";
      v23 = "%s%s";
      v22 = 59009;
      goto LABEL_8;
    }
  }

  v19 = *(*(a1 + 16) + 40);
  v26 = *a6;
  v27 = *(a6 + 2);
  v20 = paramc_ListenerAdd(v19, a2, &v26);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = *(*(a1 + 16) + 32);
    v22 = 59010;
    v23 = 0;
LABEL_8:
    log_OutPublic(v21, "SYNTH_BET5", v22, v23, v15, v16, v17, v18, v25);
  }

  return v20;
}

uint64_t synth_bet5_loc_SynthInit(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v33 = 0;
  v31 = 0;
  __s2 = 0;
  v3 = a1 + 80;
  if (*(a1 + 80))
  {
    Lookup_ObjClose((a1 + 80));
    *v3 = 0;
  }

  UInt = paramc_ParamGetUInt(*(v2 + 40), "frequencyhz", (a1 + 48));
  if ((UInt & 0x80000000) != 0)
  {
    Str = UInt;
    goto LABEL_16;
  }

  v30 = 0;
  *(a1 + 120) = *(a1 + 48);
  RegularBrokerString = betX_CreateRegularBrokerString(v2, 2, v34, 0x100uLL);
  if ((RegularBrokerString & 0x80000000) != 0)
  {
    return RegularBrokerString;
  }

  v10 = Lookup_ObjOpen(*a1, *(a1 + 8), *(a1 + 24), v34, v3);
  if ((v10 & 0x80000000) != 0)
  {
    Str = v10;
    *v3 = 0;
    return Str;
  }

  Lookup_GetComponentID(*v3, &__s2);
  if (!__s2 || !*__s2)
  {
    goto LABEL_18;
  }

  *&__s1 = 0;
  Str = paramc_ParamGetStr(*(v2 + 40), "voicecomponentid", &__s1);
  if ((Str & 0x80000000) != 0)
  {
LABEL_16:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET5", 59008, "%s%s", v5, v6, v7, v8, "parameter");
    return Str;
  }

  if (__s1 && *__s1 && cstdlib_strcmp(__s1, __s2))
  {
    paramc_ParamGetStr(*(v2 + 40), "voice", &v31);
    if (v31 && *v31)
    {
      v16 = *(*(a1 + 16) + 32);
    }

    else
    {
      v16 = *(*(a1 + 16) + 32);
    }

    log_OutPublic(v16, "SYNTH_BET5", 59013, "%s%s", v12, v13, v14, v15, "voice");
    return Str;
  }

LABEL_18:
  *(v3 + 22476) = 1;
  *(a1 + 156) = 1;
  RegularBrokerString = paramc_ParamGetInt(*(*(a1 + 16) + 40), "bet5nstatesperphoneme", &v33);
  if ((RegularBrokerString & 0x80000000) != 0)
  {
    return RegularBrokerString;
  }

  *(v3 + 22504) = v33;
  v17 = *(a1 + 21424);
  RegularBrokerString = betX_CreateAddonListParamName(*(a1 + 16), (a1 + 21424));
  if ((RegularBrokerString & 0x80000000) != 0)
  {
    return RegularBrokerString;
  }

  if (!v17)
  {
    RegularBrokerString = paramc_ParamSetStr(*(*(a1 + 16) + 40), *(a1 + 21424), "");
    if ((RegularBrokerString & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    return RegularBrokerString;
  }

  if (!cstdlib_strcmp(v17, *(a1 + 21424)))
  {
    goto LABEL_30;
  }

  v27 = 0;
  if (*(v3 + 21360))
  {
    RegularBrokerString = synth_bet5_HandleAddons(a1, "");
    if ((RegularBrokerString & 0x80000000) != 0)
    {
      return RegularBrokerString;
    }
  }

  v18 = *(v2 + 40);
  *&__s1 = a1;
  *(&__s1 + 1) = synth_bet5_loc_ParamCheckChange;
  v29 = synth_bet5_loc_ParamLearnChange;
  paramc_ListenerRemove(v18, v17, &__s1);
  paramc_ParamGetStr(*(v2 + 40), *(a1 + 21424), &v27);
  if (v27)
  {
    RegularBrokerString = synth_bet5_HandleAddons(a1, v27);
    if ((RegularBrokerString & 0x80000000) != 0)
    {
      return RegularBrokerString;
    }
  }

LABEL_29:
  v19 = *(*(a1 + 16) + 40);
  v20 = *(a1 + 21424);
  *&__s1 = a1;
  *(&__s1 + 1) = synth_bet5_loc_ParamCheckChange;
  v29 = synth_bet5_loc_ParamLearnChange;
  RegularBrokerString = paramc_ListenerAdd(v19, v20, &__s1);
  if ((RegularBrokerString & 0x80000000) != 0)
  {
    return RegularBrokerString;
  }

LABEL_30:
  heap_Free(*(v2 + 8), v17);
  Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v33);
  if ((Int & 0x80000000) == 0)
  {
    Int = synth_bet5_loc_ParamSet(a1, "volume", v33);
    if ((Int & 0x80000000) == 0)
    {
      Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v33);
      if ((Int & 0x80000000) == 0)
      {
        Int = synth_bet5_loc_ParamSet(a1, "rate_baseline", v33);
        if ((Int & 0x80000000) == 0)
        {
          Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v33);
          if ((Int & 0x80000000) == 0)
          {
            Int = synth_bet5_loc_ParamSet(a1, "pitch_baseline", v33);
            if ((Int & 0x80000000) == 0)
            {
              Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v33);
              if ((Int & 0x80000000) == 0)
              {
                Int = synth_bet5_loc_ParamSet(a1, "rate", v33);
                if ((Int & 0x80000000) == 0)
                {
                  Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), "waitfactor", &v33);
                  if ((Int & 0x80000000) == 0)
                  {
                    Int = synth_bet5_loc_ParamSet(a1, "waitfactor", v33);
                    if ((Int & 0x80000000) == 0)
                    {
                      Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v33);
                      if ((Int & 0x80000000) == 0)
                      {
                        Int = synth_bet5_loc_ParamSet(a1, "pitch", v33);
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

  Str = Int;
  if (!Lookup_HasSupportForPsola(*v3, &v30 + 1, &v30))
  {
    log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET5", 3, 0, "PMK data not available, PSOLA not possible", v22, v23, v24, v26);
    return 2229280769;
  }

  return Str;
}

uint64_t synth_bet5_loc_ParamSet(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = critsec_Enter(*(a1 + 32));
  if ((v6 & 0x80000000) == 0)
  {
    v7 = 2229280783;
    if (!cstdlib_strcmp(a2, "volume"))
    {
      if (a3 <= 0x64)
      {
        if (a3 <= 0x50)
        {
          v16 = a3 / 80.0;
        }

        else
        {
          v16 = (a3 + -80.0) / 20.0 + 1.0;
        }

        log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET5", 3, 0, "Set volume %d (synth %f)", v8, v9, v10, a3);
        *(a1 + 21392) = v16;
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (cstdlib_strcmp(a2, "rate_baseline"))
    {
      if (!cstdlib_strcmp(a2, "rate"))
      {
        v19 = MapProsodyValue_Scaling(50, 100, 400, *(a1 + 44), a3);
        if ((v19 - 401) >= 0xFFFFFEA1)
        {
          v23 = v19;
          log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET5", 3, 0, "Set rate %d (synth %f)", v20, v21, v22, v19);
          *(a1 + 21400) = v23;
          goto LABEL_20;
        }

        goto LABEL_23;
      }

      if (!cstdlib_strcmp(a2, "ratewpm"))
      {
        v7 = 2229280769;
        goto LABEL_23;
      }

      if (cstdlib_strcmp(a2, "pitch_baseline"))
      {
        if (cstdlib_strcmp(a2, "pitch"))
        {
LABEL_20:
          v7 = v6;
          goto LABEL_23;
        }

        v11 = MapProsodyValue_Scaling(50, 100, 200, *(a1 + 40), a3);
        if ((v11 - 201) >= 0xFFFFFF69)
        {
          v15 = (v11 - 100) + (v11 - 100);
          log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET5", 3, 0, "Set pitch %d (synth %f)", v12, v13, v14, v11);
          *(a1 + 21408) = v15;
          goto LABEL_20;
        }

LABEL_23:
        critsec_Leave(*(a1 + 32));
        return v7;
      }

      if ((a3 - 201) < 0xFFFFFF69)
      {
        goto LABEL_23;
      }

      v26 = 0;
      *(a1 + 40) = a3;
      v17 = "pitch";
      paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v26);
      v18 = v26;
    }

    else
    {
      if ((a3 - 401) < 0xFFFFFEA1)
      {
        goto LABEL_23;
      }

      v25 = 0;
      *(a1 + 44) = a3;
      v17 = "rate";
      paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v25);
      v18 = v25;
    }

    synth_bet5_loc_ParamSet(a1, v17, v18);
    v7 = 0;
    goto LABEL_23;
  }

  return v6;
}

uint64_t synth_bet5_HandleAddons(_WORD **a1, const char *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *__s2 = 0u;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "";
  }

  v30 = 0;
  if (*(a1 + 5360))
  {
    v4 = 0;
    v5 = 0;
    AddonOffset = 0;
    while (1)
    {
      v30 = 0;
      while (betX_GetVAOName(v3, &v30, __s2, 0x100uLL))
      {
        if (!cstdlib_strcmp(*&a1[2679][16 * v5 + 8], __s2))
        {
          LODWORD(v7) = *(a1 + 5360);
          goto LABEL_20;
        }
      }

      v7 = *(a1 + 5360);
      if (v5 >= v7)
      {
        AddonOffset = 0;
      }

      else
      {
        v8 = a1[2679];
        v9 = *&v8[16 * v5 + 8];
        if (v9)
        {
          heap_Free(*(a1[2] + 1), v9);
          v8 = a1[2679];
          *&v8[16 * v5 + 8] = 0;
        }

        Lookup_DeInit(*&v8[16 * v5 + 4]);
        Lookup_ObjClose(&a1[2679][16 * v5 + 4]);
        v10 = v5 + 1;
        v7 = *(a1 + 5360);
        v11 = v4;
        if (v5 + 1 < v7)
        {
          while (1)
          {
            v12 = (a1[2679] + v11);
            v13 = v12[3];
            *v12 = v12[2];
            v12[1] = v13;
            v14 = a1[2679];
            a1[12] = v14;
            AddonOffset = usynth_GetAddonOffset(a1, *(v14 + v11 + 16), (v14 + v11 + 24));
            if ((AddonOffset & 0x80000000) != 0)
            {
              goto LABEL_55;
            }

            ++v10;
            v7 = *(a1 + 5360);
            v11 += 32;
            if (v10 >= v7)
            {
              goto LABEL_19;
            }
          }
        }

        AddonOffset = 0;
LABEL_19:
        LODWORD(v7) = v7 - 1;
        *(a1 + 5360) = v7;
        *(a1 + 26) = v7;
      }

LABEL_20:
      ++v5;
      v4 += 32;
      if (v5 >= v7)
      {
        goto LABEL_23;
      }
    }
  }

  AddonOffset = 0;
LABEL_23:
  if (cstdlib_strlen(v3))
  {
    v30 = 0;
    while (1)
    {
      while (1)
      {
        if (!betX_GetVAOName(v3, &v30, __s2, 0x100uLL))
        {
          goto LABEL_55;
        }

        if (*(a1 + 5360))
        {
          break;
        }

        if (__s2[0])
        {
          goto LABEL_39;
        }
      }

      v15 = 1;
      v16 = 8;
      do
      {
        v17 = cstdlib_strcmp(__s2, *&a1[2679][v16]);
        v16 += 16;
        if (v17)
        {
          v18 = v15 >= *(a1 + 5360);
        }

        else
        {
          v18 = 1;
        }

        ++v15;
      }

      while (!v18);
      if (v17)
      {
        v19 = __s2[0] == 0;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
LABEL_39:
        memset(__s, 0, sizeof(__s));
        memset(v49, 0, sizeof(v49));
        v32 = 0;
        VAOBrokerString = paramc_ParamSetStr(*(a1[2] + 5), "voiceaddon", __s2);
        if ((VAOBrokerString & 0x80000000) != 0 || (VAOBrokerString = betX_CreateVAOBrokerString(a1[2], 3, __s, 0x100uLL, 1), (VAOBrokerString & 0x80000000) != 0))
        {
LABEL_54:
          AddonOffset = VAOBrokerString;
          break;
        }

        v21 = cstdlib_strlen(__s);
        if (!IsThisUrlOrRealPath(__s, v21, 0))
        {
          v31 = 0;
          VAOBrokerString = brokeraux_ComposeBrokerString(a1[2], __s, 0, 0, 0, 0, 0, v49, 0x100uLL);
          if ((VAOBrokerString & 0x80000000) != 0)
          {
            goto LABEL_54;
          }

          VAOBrokerString = Lookup_CheckForDataFile(*a1, a1[1], v49, &v31);
          if ((VAOBrokerString & 0x80000000) != 0)
          {
            goto LABEL_54;
          }

          if (v31 && (Lookup_ObjOpen(*a1, a1[1], a1[3], v49, &v32) & 0x80000000) != 0)
          {
            v32 = 0;
          }

          else if (v32)
          {
            goto LABEL_43;
          }
        }

        VAOBrokerString = Lookup_ObjOpen(*a1, a1[1], a1[3], __s, &v32);
        if ((VAOBrokerString & 0x80000000) != 0)
        {
          goto LABEL_54;
        }

LABEL_43:
        AddonOffset = 2229280778;
        v22 = heap_Realloc(*(a1[2] + 1), a1[2679], 32 * (*(a1 + 5360) + 1));
        a1[2679] = v22;
        if (!v22)
        {
          break;
        }

        *(v22 + 32 * *(a1 + 5360) + 8) = v32;
        v23 = *(a1[2] + 1);
        v24 = cstdlib_strlen(__s2);
        v25 = heap_Calloc(v23, 1, (v24 + 1));
        *&a1[2679][16 * *(a1 + 5360) + 8] = v25;
        if (!v25)
        {
          break;
        }

        cstdlib_strcpy(v25, __s2);
        v26 = &a1[2679][16 * *(a1 + 5360)];
        AddonOffset = usynth_GetAddonOffset(a1, *(v26 + 16), (v26 + 24));
        if ((AddonOffset & 0x80000000) != 0)
        {
          break;
        }

        v27 = *(a1 + 5360) + 1;
        *(a1 + 5360) = v27;
        a1[12] = a1[2679];
        *(a1 + 26) = v27;
      }
    }
  }

LABEL_55:
  if (!*(a1 + 5360))
  {
    v28 = a1[2679];
    if (v28)
    {
      heap_Free(*(a1[2] + 1), v28);
      a1[2679] = 0;
      a1[12] = 0;
    }
  }

  return AddonOffset;
}

uint64_t usynth_GetAddonOffset(uint64_t a1, char *__s, _DWORD *a3)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  v6 = *(*(a1 + 16) + 8);
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
    Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), v13, a3);
    heap_Free(*(*(a1 + 16) + 8), v13);
    return Int;
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET5", 19000, 0, v9, v10, v11, v12, v20);
    return 2229280778;
  }
}

uint64_t synth_bet5_loc_ProceedToNextPhonemeMarkerForSynthesizing(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v5 = *(result + 22596);
  if (v5 == -2)
  {
    v6 = 0;
  }

  else if (v5 == -1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 + 1;
  }

  if (v6 >= a3)
  {
    v6 = -1;
    goto LABEL_34;
  }

  v7 = (a2 + 32 * v6 + 24);
  do
  {
    v8 = *(v7 - 6);
    if (v8 <= 18)
    {
      if (v8 == 16)
      {
        critsec_Leave(*(v4 + 32));
        v9 = *(*(v4 + 16) + 40);
        v10 = *v7;
        v11 = "pitch";
        goto LABEL_28;
      }

      if (v8 == 17)
      {
        critsec_Leave(*(v4 + 32));
        v9 = *(*(v4 + 16) + 40);
        v10 = *v7;
        v11 = "timbre";
        goto LABEL_28;
      }

      if (v8 != 18)
      {
        goto LABEL_29;
      }

      critsec_Leave(*(v4 + 32));
      v9 = *(*(v4 + 16) + 40);
      v10 = *v7;
      goto LABEL_25;
    }

    if (v8 <= 24)
    {
      if (v8 != 19)
      {
        if (v8 != 24)
        {
          goto LABEL_29;
        }

        critsec_Leave(*(v4 + 32));
        v9 = *(*(v4 + 16) + 40);
        v10 = *v7;
        v11 = "volume";
        goto LABEL_28;
      }

      critsec_Leave(*(v4 + 32));
      v12 = 100 * *v7;
      v13 = v12 / 0xC8;
      if (v12 / 0xC8 <= 0x32)
      {
        v13 = 50;
      }

      if (v12 <= 0x13947)
      {
        v10 = v13;
      }

      else
      {
        v10 = 400;
      }

      v9 = *(*(v4 + 16) + 40);
LABEL_25:
      v11 = "rate";
      goto LABEL_28;
    }

    if (v8 == 25)
    {
      critsec_Leave(*(v4 + 32));
      v9 = *(*(v4 + 16) + 40);
      v10 = *v7;
      v11 = "waitfactor";
LABEL_28:
      paramc_ParamSetUInt(v9, v11, v10);
      result = critsec_Enter(*(v4 + 32));
      goto LABEL_29;
    }

    if (v8 == 33)
    {
      goto LABEL_34;
    }

LABEL_29:
    ++v6;
    v7 += 8;
  }

  while (a3 != v6);
  v6 = -1;
LABEL_34:
  *(v4 + 22596) = v6;
  return result;
}

uint64_t synth_bet5_loc_ProceedToNextPhonemeMarkerForDelivering(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = result + 20480;
  v4 = *(result + 22600);
  if (v4 <= 0xFFFFFFFD)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 >= a3)
  {
LABEL_8:
    LODWORD(v5) = -1;
  }

  else
  {
    v7 = result;
    v8 = (a2 + 32 * v5);
    while (*v8 != 33)
    {
      marker_logOutText(*(*(v7 + 16) + 32), "SYNTH_BET5", 3, "SYNTH-IN  ", v8);
      v8[3] = *(v3 + 2072);
      v8[4] = 0;
      result = marker_logOutText(*(*(v7 + 16) + 32), "SYNTH_BET5", 3, "SYNTH-OUT ", v8);
      LODWORD(v5) = v5 + 1;
      v8 += 8;
      if (a3 == v5)
      {
        goto LABEL_8;
      }
    }
  }

  *(v3 + 2120) = v5;
  return result;
}

uint64_t synth_bet5_loc_UpdatePhonemeMarkerDeliveringUnits(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = result + 20480;
  v4 = *(result + 22600);
  if (v4 <= 0xFFFFFFFD && v4 < a3)
  {
    v7 = (a2 + 32 * v4);
    if (*v7 == 33)
    {
      v8 = result;
      marker_logOutText(*(*(result + 16) + 32), "SYNTH_BET5", 3, "SYNTH-IN  ", v7);
      v9 = *(v3 + 2072);
      v10 = a2 + 32 * *(v3 + 2120);
      v11 = *(v3 + 2108);
      *(v10 + 12) = v9;
      *(v10 + 16) = v11;
      *(v3 + 2108) = 0;
      *(v3 + 2112) = 0;
      *(v3 + 2072) = v11 + v9;
      v12 = *(*(v8 + 16) + 32);

      return marker_logOutText(v12, "SYNTH_BET5", 3, "SYNTH-OUT ", v10);
    }
  }

  return result;
}

uint64_t synth_bet5_loc_ReadDirectEndStream(void *a1, int a2, int a3)
{
  if (!a3)
  {
    v9 = 0;
LABEL_6:
    if (!a2)
    {
      return v9;
    }

    v11 = (*(a1[2687] + 96))(a1[2793], a1[2794], (4 * a2));
    if ((v11 & 0x80000000) != 0)
    {
      v29 = v11;
      v30 = *(a1[2] + 32);
    }

    else
    {
      v16 = (*(a1[2687] + 96))(a1[2795], a1[2796], (4 * a2));
      if ((v16 & 0x80000000) != 0)
      {
        v29 = v16;
        v30 = *(a1[2] + 32);
      }

      else
      {
        v17 = (*(a1[2687] + 96))(a1[2797], a1[2798], (4 * a2));
        if ((v17 & 0x80000000) == 0)
        {
          v18 = (*(a1[2687] + 96))(a1[2799], a1[2800], (8 * a2));
          if ((v18 & 0x80000000) != 0)
          {
            v31 = v18;
            v32 = *(a1[2] + 32);
          }

          else
          {
            v23 = (*(a1[2687] + 96))(a1[2801], a1[2802], (4 * a2));
            if ((v23 & 0x80000000) != 0)
            {
              v31 = v23;
              v32 = *(a1[2] + 32);
            }

            else
            {
              v24 = (*(a1[2687] + 96))(a1[2803], a1[2804], (4 * a2));
              if ((v24 & 0x80000000) != 0)
              {
                v31 = v24;
                v32 = *(a1[2] + 32);
              }

              else
              {
                v25 = (*(a1[2687] + 96))(a1[2805], a1[2806], (4 * a2));
                if ((v25 & 0x80000000) != 0)
                {
                  v31 = v25;
                  v32 = *(a1[2] + 32);
                }

                else
                {
                  v26 = (*(a1[2687] + 96))(a1[2807], a1[2808], (4 * a2));
                  if ((v26 & 0x80000000) != 0)
                  {
                    v31 = v26;
                    v32 = *(a1[2] + 32);
                  }

                  else
                  {
                    v27 = (*(a1[2687] + 96))(a1[2809], a1[2810], (4 * a2));
                    if ((v27 & 0x80000000) != 0)
                    {
                      v31 = v27;
                      v32 = *(a1[2] + 32);
                    }

                    else
                    {
                      v28 = (*(a1[2687] + 96))(a1[2811], a1[2812], (4 * a2));
                      if ((v28 & 0x80000000) == 0)
                      {
                        v9 = (*(a1[2687] + 96))(a1[2813], a1[2814], (4 * a2));
                        if ((v9 & 0x80000000) == 0)
                        {
                          return v9;
                        }

                        v10 = *(a1[2] + 32);
                        goto LABEL_4;
                      }

                      v31 = v28;
                      v32 = *(a1[2] + 32);
                    }
                  }
                }
              }
            }
          }

          log_OutPublic(v32, "SYNTH_BET5", 59006, "%s%s%s%x", v19, v20, v21, v22, "contentType");
          return v31;
        }

        v29 = v17;
        v30 = *(a1[2] + 32);
      }
    }

    log_OutPublic(v30, "SYNTH_BET5", 59006, "%s%s%s%x", v12, v13, v14, v15, "contentType");
    return v29;
  }

  v9 = (*(a1[2687] + 96))(a1[2791], a1[2792], (32 * a3));
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a1[2] + 32);
LABEL_4:
  log_OutPublic(v10, "SYNTH_BET5", 59006, "%s%s%s%x", v5, v6, v7, v8, "contentType");
  return v9;
}

uint64_t synth_bet5_loc_WsolaOutputCB(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  result = (*(*(a1 + 21496) + 104))(*(a1 + 22520), *(a1 + 22528), a2, (2 * a3));
  *(a1 + 22588) += a3;
  return result;
}

void *FreePsolaData(void *result)
{
  v1 = result;
  v2 = result[2820];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      v5 = 1;
      do
      {
        freePeriDesc(v1[2], v3);
        *(v1[2820] + 8 * v4) = 0;
        v2 = v1[2820];
        v4 = v5;
        v3 = v2[v5++];
      }

      while (v3);
    }

    result = heap_Free(*(v1[2] + 8), v2);
    v1[2820] = 0;
  }

  *(v1 + 5642) = 0;
  v6 = v1[2822];
  if (v6)
  {
    result = UNICORN__Psola_Deinitialise(v1[2], v6);
    v1[2822] = 0;
  }

  return result;
}

uint64_t UNICORN__writeToPeriVec(uint64_t a1, unsigned int a2, __int16 a3)
{
  v6 = *(a1 + 16);
  if (v6 <= a2)
  {
    v7 = heap_Realloc(*(*a1 + 8), *(a1 + 8), 2 * (v6 + 150));
    if (!v7)
    {
      return 2229280778;
    }

    *(a1 + 8) = v7;
    *(a1 + 16) += 150;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = 0;
  *(v7 + 2 * a2) = a3;
  return v8;
}

void *newPeriDesc(uint64_t a1)
{
  v2 = heap_Alloc(*(a1 + 8), 80);
  v3 = v2;
  if (v2)
  {
    cstdlib_memset(v2, 0, 0x50uLL);
    v4 = heap_Alloc(*(a1 + 8), 300);
    v3[2] = v4;
    if (v4)
    {
      *(v3 + 6) = 150;
      v3[1] = a1;
      v5 = heap_Alloc(*(a1 + 8), 300);
      v3[5] = v5;
      if (v5)
      {
        *(v3 + 12) = 150;
        v3[4] = a1;
        v6 = heap_Alloc(*(a1 + 8), 300);
        v3[8] = v6;
        if (v6)
        {
          *(v3 + 18) = 150;
          v3[7] = a1;
          return v3;
        }
      }

      v7 = v3[2];
      if (v7)
      {
        heap_Free(*(a1 + 8), v7);
      }
    }

    v8 = v3[5];
    if (v8)
    {
      heap_Free(*(a1 + 8), v8);
    }

    v9 = v3[8];
    if (v9)
    {
      heap_Free(*(a1 + 8), v9);
    }

    return 0;
  }

  return v3;
}

void *freePeriDesc(uint64_t a1, uint64_t *a2)
{
  heap_Free(*(a1 + 8), a2[2]);
  heap_Free(*(a1 + 8), a2[5]);
  heap_Free(*(a1 + 8), a2[8]);
  v4 = *(a1 + 8);

  return heap_Free(v4, a2);
}

uint64_t UNICORN__Psola_GetDecodedUnitData(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, int a7, unsigned int a8, _WORD *a9, int *a10, int *a11, _DWORD *a12)
{
  if (!a3)
  {
    return 0;
  }

  v39 = 0;
  v40 = 0;
  v38[0] = 0;
  v38[1] = 0;
  UnitData = Lookup_GetUnitData(*(a1 + 32), a4, v38);
  if ((UnitData & 0x80000000) != 0)
  {
    return UnitData;
  }

  if (a6 + a5 + a7 <= a8)
  {
    v20 = HIDWORD(v38[0]);
    if (HIDWORD(v38[0]) >= a5)
    {
      v21 = a5;
    }

    else
    {
      v21 = HIDWORD(v38[0]);
    }

    *a10 = v21;
    *a11 = a6;
    *a12 = a7;
    v22 = *a10;
    v23 = *a11;
    v24 = *a10 + a7;
    v41 = 0;
    v26 = a4 == -1 && *(a1 + 100) != 0;
    Segment = UNICORN__concat_getSegment(a1, a4, v20 - v22, v24 + v23, &v39, v26);
    if ((Segment & 0x80000000) == 0)
    {
      v27 = HIDWORD(v40);
      v28 = v41;
      if (HIDWORD(v40))
      {
        v30 = *(a1 + 21336);
        v31 = HIDWORD(v40);
        v32 = v41;
        do
        {
          v33 = v30 * *v32;
          *v32 = v33;
          v34 = -956301312;
          if (v33 < -32768.0 || (v34 = 1191181824, v33 > 32767.0))
          {
            *v32 = v34;
          }

          ++v32;
          --v31;
        }

        while (v31);
        v35 = v28;
        do
        {
          v36 = *v35++;
          *a9++ = v36;
          --v27;
        }

        while (v27);
      }

      heap_Free(*(*a1 + 8), v28);
    }
  }

  else
  {
    *a10 = 0;
    *a11 = 0;
    Segment = 2229280777;
    *a12 = 0;
  }

  return Segment;
}

uint64_t UNICORN__concat_getSegment(uint64_t a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5, int a6)
{
  v6 = a4;
  *(a5 + 12) = a4;
  v9 = (a5 + 12);
  *(a5 + 8) = a4;
  if (a4 <= 0)
  {
    *v9 = 0;
    UNICORN__log_wsola_Diag(*a1, 1, "WARNING: Segment in unit %d has a duration of %d\n");
    return 2229280775;
  }

  v11 = *(*a1 + 8);
  if (!a6)
  {
    v16 = heap_Calloc(v11, a4, 2);
    if (!v16)
    {
      v14 = 2229280778;
      goto LABEL_30;
    }

    v22 = v16;
    if (a2 <= 0xFFFFFFFD)
    {
      Lookup_Init(*(a1 + 32), a3, *v9);
      Lookup_Decode(*(a1 + 32), v9, v22);
      v6 = *v9;
    }

    if (a2 == -2)
    {
      v23 = *(a1 + 96);
      if (v23 > a3)
      {
        v24 = 88;
        goto LABEL_18;
      }

      v29 = *a1;
      v30 = 59012;
    }

    else
    {
      if (a2 != -1)
      {
LABEL_21:
        v25 = heap_Realloc(*(*a1 + 8), *(a5 + 16), 4 * *(a5 + 12));
        *(a5 + 16) = v25;
        if (v25)
        {
          v26 = *v9;
          if (v26)
          {
            for (i = 0; i != v26; ++i)
            {
              v28 = 0.0;
              if (i < v6)
              {
                v28 = v22[i];
              }

              *(v25 + 4 * i) = v28;
            }
          }

          heap_Free(*(*a1 + 8), v22);
          return 0;
        }

        v14 = 2229280778;
        heap_Free(*(*a1 + 8), v22);
LABEL_30:
        UNICORN__log_wsola_Error(*a1, 59000, 0, v17, v18, v19, v20, v21);
        return v14;
      }

      v23 = *(a1 + 80);
      if (v23 > a3)
      {
        v24 = 72;
LABEL_18:
        if (*v9 + a3 > v23)
        {
          v6 = v23 - a3;
        }

        cstdlib_memcpy(v22, (*(a1 + v24) + 2 * a3), 2 * v6);
        goto LABEL_21;
      }

      v29 = *a1;
      v30 = 59011;
    }

    UNICORN__log_wsola_Error(v29, v30, 0, v17, v18, v19, v20, v21);
    return 2229280783;
  }

  v12 = heap_Realloc(v11, *(a5 + 16), 4 * a4);
  *(a5 + 16) = v12;
  if (v12)
  {
    v13 = *v9;
    if (v13)
    {
      bzero(v12, 4 * v13);
    }

    return 0;
  }

  v14 = 2229280778;
  UNICORN__log_wsola_Diag(*a1, 1, "ERROR: Out of memory\n");
  heap_Free(*(*a1 + 8), 0);
  return v14;
}

uint64_t UNICORN__Psola_SynthSilence(uint64_t *a1, int *a2, int a3, int *a4)
{
  Psola_FlushOlaBufPart_0(a1, a2, *a4);
  v8 = *a4 + a3;
  *a4 = v8;
  if (*a2 <= v8)
  {
    Psola_AddToOlaBufAux_0(a1, a2, v10, 0, 0, v8);
  }

  return 0;
}

void Psola_FlushOlaBufPart_0(uint64_t *a1, _DWORD *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3 - *a2;
  if (v3 >= 1)
  {
    v6 = a2[1];
    v7 = a2[2];
    if (v3 >= v7)
    {
      v8 = a2[2];
    }

    else
    {
      v8 = v3;
    }

    if (v8 >= 12000 - v6)
    {
      v9 = 12000 - v6;
    }

    else
    {
      v9 = v8;
    }

    if (v3 >= v7)
    {
      v10 = v7 - v9;
    }

    else
    {
      v10 = v3 - v9;
    }

    if (v9 >= 1)
    {
      UNICORN__Wsola__write_audioX(a1, (a2 + 3), v6, v9);
      bzero(a2 + 2 * a2[1] + 12, (2 * v9));
    }

    if (v10 >= 1)
    {
      UNICORN__Wsola__write_audioX(a1, (a2 + 3), 0, v10);
      bzero(a2 + 3, (2 * v10));
    }

    v11 = v3 - v9 - v10;
    if (v11 >= 1)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      do
      {
        if (v11 >= 0x64)
        {
          v12 = 100;
        }

        else
        {
          v12 = v11;
        }

        UNICORN__Wsola__write_audioX(a1, v15, 0, v12);
        v13 = __OFSUB__(v11, v12);
        v11 -= v12;
      }

      while (!((v11 < 0) ^ v13 | (v11 == 0)));
    }

    v14 = a2[1] + v3;
    *a2 += v3;
    a2[1] = v14 % 12000;
    a2[2] -= v10 + v9;
  }
}

uint64_t UNICORN__Psola_Initialise(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = 2229280778;
  v7 = heap_Calloc(*(a2 + 8), 1, 160);
  *a1 = v7;
  if (v7)
  {
    v8 = v7;
    *(v7 + 136) = 1;
    v9 = heap_Alloc(*(a2 + 8), 24012);
    *(v8 + 16) = v9;
    if (v9)
    {
      v10 = heap_Alloc(*(a2 + 8), 48000);
      *(v8 + 24) = v10;
      if (v10)
      {
        v11 = heap_Calloc(*(a2 + 8), 1, 48);
        *(v8 + 32) = v11;
        if (v11)
        {
          *(v11 + 8) = 961;
          v12 = heap_Alloc(*(a2 + 8), 1922);
          v13 = *(v8 + 32);
          *v13 = v12;
          if (v12)
          {
            v13[3] = 961;
            v14 = heap_Alloc(*(a2 + 8), 1922);
            v15 = *(v8 + 32);
            *(v15 + 16) = v14;
            if (v14)
            {
              *(v15 + 40) = 961;
              v16 = heap_Alloc(*(a2 + 8), 1922);
              *(*(v8 + 32) + 32) = v16;
              if (v16)
              {
                v17 = newModPeriDesc(a2);
                *(v8 + 88) = v17;
                if (v17)
                {
                  v18 = newModPeriDesc(a2);
                  *(v8 + 96) = v18;
                  if (v18)
                  {
                    bzero(*(v8 + 16), 0x5DCCuLL);
                    *(v8 + 112) = 0;
                    v19 = *(v8 + 96);
                    *v19 = 0;
                    *(v19 + 2) = 0;
                    v20 = *(v8 + 88);
                    *v20 = 0;
                    *(v20 + 2) = 0;
                    v21 = Psola_SetUpCrossFading_0(a3, 100, 100, v19, v20, (v8 + 8), (v8 + 12));
                    if ((v21 & 0x80000000) != 0)
                    {
                      return v21;
                    }

                    else
                    {
                      v6 = 0;
                      *v8 = 0x100000000;
                      *(v8 + 120) = 0;
                      *(v8 + 124) = a3;
                      *(v8 + 64) = 0;
                      *(v8 + 140) = vdup_n_s32(0x42200000u);
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

  return v6;
}

void *newModPeriDesc(uint64_t a1)
{
  v2 = heap_Alloc(*(a1 + 8), 80);
  v3 = v2;
  if (v2)
  {
    cstdlib_memset(v2, 0, 0x50uLL);
    v4 = heap_Alloc(*(a1 + 8), 300);
    v3[2] = v4;
    if (v4)
    {
      *(v3 + 6) = 150;
      v3[1] = a1;
      v5 = heap_Alloc(*(a1 + 8), 300);
      v3[5] = v5;
      if (v5)
      {
        *(v3 + 12) = 150;
        v3[4] = a1;
        v6 = heap_Alloc(*(a1 + 8), 300);
        v3[8] = v6;
        if (v6)
        {
          *(v3 + 18) = 150;
          v3[7] = a1;
          return v3;
        }
      }

      v7 = v3[2];
      if (v7)
      {
        heap_Free(*(a1 + 8), v7);
      }
    }

    v8 = v3[5];
    if (v8)
    {
      heap_Free(*(a1 + 8), v8);
    }

    v9 = v3[8];
    if (v9)
    {
      heap_Free(*(a1 + 8), v9);
    }

    return 0;
  }

  return v3;
}

uint64_t Psola_SetUpCrossFading_0(int a1, int a2, int a3, unsigned __int16 *a4, unsigned __int16 *a5, _DWORD *a6, int *a7)
{
  v11 = a2 * a1;
  v12 = 274877907 * a2 * a1;
  v13 = v12 >> 63;
  v14 = v12 >> 38;
  v15 = a3 * a1 / 1000;
  v16 = a4[1] + *a4;
  *a7 = 0;
  if (a4[2])
  {
    v43 = v12 >> 63;
    v17 = 0;
    v18 = 0;
    do
    {
      if (v17 >= a5[1] >> 1 || v18 >= v15)
      {
        break;
      }

      v20 = *(a5 + 8);
      v21 = v17 + *a5;
      v22 = *(v20 + 2 * v21);
      UNICORN__writeToPeriVec((a4 + 28), v16 + v17, *(v20 + 2 * v21));
      v18 = *a7 + v22;
      *a7 = v18;
      ++v17;
    }

    while (v17 < a4[2]);
    LODWORD(v13) = v43;
  }

  else
  {
    LOWORD(v17) = 0;
  }

  v23 = v14 + v13;
  a4[2] = v17;
  *a6 = 0;
  LODWORD(v24) = *a5;
  if (*a5)
  {
    v25 = 0;
    if (a4[1] && v11 >= 1000)
    {
      v26 = 2 * v16 - 2;
      v27 = -1;
      v28 = 1;
      do
      {
        v29 = v27;
        v30 = *(a4 + 8);
        v31 = *(v30 + v26);
        UNICORN__writeToPeriVec((a5 + 28), v24 + v27, *(v30 + v26));
        v25 = *a6 + v31;
        *a6 = v25;
        v24 = *a5;
        if (v28 >= v24)
        {
          break;
        }

        v27 = v29 - 1;
        v32 = v28++ >= (a4[1] + 1) >> 1;
        v26 -= 2;
      }

      while (!v32 && v25 < v23);
      v34 = -v29;
    }

    else
    {
      v34 = 0;
    }

    v35 = v24;
  }

  else
  {
    v25 = 0;
    v34 = 0;
    v35 = 0;
  }

  v36 = v35 - v34;
  if (v35 - v34 >= 1)
  {
    v37 = v35 + a5[1] + a5[2];
    if (v36 < v37)
    {
      v38 = 0;
      v39 = 2 * (v35 - v34);
      do
      {
        UNICORN__writeToPeriVec((a5 + 4), v38, *(*(a5 + 2) + v39));
        UNICORN__writeToPeriVec((a5 + 16), v38, *(*(a5 + 5) + v39));
        UNICORN__writeToPeriVec((a5 + 28), v38++, *(*(a5 + 8) + v39));
        v39 += 2;
      }

      while (v37 > (v36 + v38));
      LOWORD(v24) = *a5;
      v25 = *a6;
    }

    *a5 = v24 - v36;
  }

  if (v25 >= v23)
  {
    v40 = v23;
  }

  else
  {
    v40 = v25;
  }

  *a6 = v40;
  v41 = *a7;
  if (*a7 >= v15)
  {
    v41 = v15;
  }

  *a7 = v41;
  if (!((*a6 + v41 < 0) ^ __OFADD__(*a6, v41) | (*a6 + v41 == 0)) || !a4[1])
  {
    return 0;
  }

  if (a5[1])
  {
    return 2229280783;
  }

  return 0;
}

uint64_t UNICORN__Psola_Synthesis(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 + 20480;
  v5 = *(a2 + 128);
  v6 = *(a2 + 120);
  v7 = *(a1 + 8);
  v8 = v5 + 40 * v6;
  v9 = *v8;
  if (v6)
  {
    v10 = *(v5 + 40 * (v6 - *(a2 + 136)));
  }

  else
  {
    v10 = -1;
  }

  v11 = *(v3 + 64) / 1000.0;
  *(v4 + 824) = v9;
  *(v3 + 21312) = vcvt_s32_f32(vmul_n_f32(vcvt_f32_s32(*(v8 + 4)), v11));
  *(v4 + 840) = 0;
  *(v4 + 844) = 34;
  *(v4 + 848) = v9 == -1;
  MsgName = UNICORN__mfs_GetMsgName(v7, v9);
  v13 = MsgName;
  v14 = *(v3 + 21344);
  if (v14 != 0.0)
  {
    v15 = ((v14 * 0.5 + 100000.0) / v14);
    if (v15)
    {
      if (v15 != 1000)
      {
        v16 = 274877907 * (*(v8 + 20) * v15 + 500);
        *(v8 + 20) = (v16 >> 38) + (v16 >> 63);
      }
    }
  }

  v17 = *(v8 + 4);
  v18 = *(v8 + 8);
  v19 = (*(v2 + 152) + 8 * v6);
  v20 = *v19;
  *(v2 + 80) = *v19;
  if (v6)
  {
    v21 = *(v19 - 1);
  }

  else
  {
    v21 = 0;
  }

  v162 = v6;
  *(v2 + 72) = v21;
  if (v9 == -1)
  {
    v159 = v5;
    v161 = v2;
    v155 = v18;
    v156 = v17;
    v33 = *(v2 + 96);
    *v33 = 0;
    *(v33 + 4) = 0;
    goto LABEL_16;
  }

  v22 = *(v20 + 4);
  if (!v22)
  {
    ++*(v2 + 136);
LABEL_45:
    ++*(v2 + 120);
    v44 = *(v3 + 32);

    return Lookup_DeInit(v44);
  }

  v146 = MsgName;
  v148 = v10;
  *(v2 + 136) = 1;
  v152 = v3;
  v23 = *(v3 + 21352) * 0.5 + 100.0;
  v24 = *(v8 + 12) * v23;
  v25 = (v24 + 50) / 100;
  v26 = *(v8 + 16) * v23;
  v27 = (v26 + 50) / 100;
  *(v8 + 12) = v25;
  *(v8 + 16) = v27;
  v144 = v5 + 40 * v6;
  v28 = *(v8 + 20);
  v29 = *(v20 + 2);
  v30 = v29 + v22;
  v31 = v29 + v22 - 1;
  if (v29 <= v31)
  {
    v32 = 0;
    v37 = *(v20 + 2);
    do
    {
      v32 += *(*(v20 + 40) + 2 * v37++);
    }

    while (v37 <= v31);
  }

  else
  {
    v32 = 0;
  }

  if (v28 < 0)
  {
    v28 = (-1000 * v28 + (1000 * v32 + *(v2 + 124) / 2) / *(v2 + 124) / 2) / ((1000 * v32 + *(v2 + 124) / 2) / *(v2 + 124));
  }

  v149 = *(v2 + 124);
  v175 = v32;
  if (v28)
  {
    v175 = (v28 * v32 + 500) / 1000;
  }

  v38 = *(v2 + 96);
  if (v24 >= 50 && v26 < 50 || v24 <= 49 && v26 > 49)
  {
    return 2229280786;
  }

  v155 = v18;
  v156 = v17;
  v161 = v2;
  *v38 = 0;
  v169 = (v24 + 50) / 100;
  v167 = v28;
  if (v29)
  {
    for (i = 0; i != v29; ++i)
    {
      UNICORN__writeToPeriVec((v38 + 4), i, i);
      UNICORN__writeToPeriVec((v38 + 16), i, 0);
      UNICORN__writeToPeriVec((v38 + 28), i, *(*(v20 + 40) + 2 * i));
      ++*v38;
    }

    v25 = v169;
    v28 = v167;
  }

  else
  {
    LODWORD(i) = 0;
  }

  v141 = v30;
  v159 = v5;
  v38[1] = 0;
  if (v29 <= v31)
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v157 = v27 - v25;
    v173 = v20;
    v164 = v31;
    while (1)
    {
      v68 = v29;
      v69 = *(*(v20 + 40) + 2 * v29);
      if (v28)
      {
        v67 += (v28 * v69 + 500) / 1000;
      }

      else
      {
        v67 = v66 + v69;
      }

      v70 = i <= 0x2710 ? 10000 : i;
      v171 = v70;
      v71 = v29 == v31 && v66 == 0;
      v72 = v71;
      v73 = v66 + (v69 >> 1) > v67 && !v72;
      v142 = v65;
      if (!v73)
      {
        break;
      }

LABEL_121:
      v65 = v142 + v69;
      LOWORD(v29) = v68 + 1;
      v20 = v173;
      if ((v68 + 1) > v31)
      {
        goto LABEL_64;
      }
    }

    v74 = 0;
    v143 = (v32 / 2 + v65 * v157) / v32;
    while (1)
    {
      v75 = v25;
      if (v28)
      {
        v76 = v173;
        if (!v175)
        {
          goto LABEL_94;
        }

        v77 = (v175 / 2 + v66 * v157) / v175;
      }

      else
      {
        v76 = v173;
        v77 = v143;
      }

      v75 = v77 + v25;
LABEL_94:
      v78 = v69;
      if (*(*(v76 + 64) + 2 * v68) == 1)
      {
        if (v75 < 1)
        {
          v78 = v69;
          if ((v75 & 0x80000000) == 0)
          {
            goto LABEL_99;
          }

          v75 = -v75;
          v79 = v149;
        }

        else
        {
          v79 = 1000 * *(*(v76 + 40) + 2 * v68);
        }

        v78 = (v79 + (v75 >> 1)) / v75;
      }

LABEL_99:
      if (v171 == i)
      {
        return 2229280777;
      }

      if (v78 <= 0x10)
      {
        v80 = 16;
      }

      else
      {
        v80 = v78;
      }

      if (v80 >= 0x3C1)
      {
        v81 = 961;
      }

      else
      {
        v81 = v80;
      }

      v82 = v76;
      v83 = v66;
      v84 = v68;
      UNICORN__writeToPeriVec((v38 + 4), i, v68);
      UNICORN__writeToPeriVec((v38 + 28), i, v81);
      if (*(*(v82 + 64) + 2 * v84))
      {
        v85 = 0;
      }

      else
      {
        v85 = v74;
      }

      UNICORN__writeToPeriVec((v38 + 16), i, v85);
      v68 = v84;
      v86 = v83;
      v28 = v167;
      v31 = v164;
      v25 = v169;
      v74 = 1 - v74;
      v66 = v81 + v86;
      if (!v167)
      {
        v67 = v66;
      }

      LODWORD(i) = i + 1;
      ++v38[1];
      v88 = v84 == v164 && v66 == 0;
      if (v66 + (v69 >> 1) > v67 && !v88)
      {
        goto LABEL_121;
      }
    }
  }

LABEL_64:
  v61 = *(v20 + 4) + *(v20 + 2) + *(v20 + 6);
  v38[2] = 0;
  v3 = v152;
  v13 = v146;
  v10 = v148;
  v8 = v144;
  if (v141 >= v61)
  {
LABEL_16:
    v2 = v161;
    v34 = *(v161 + 124);
    v35 = *(v8 + 24);
    if (v162 < 1)
    {
      v36 = 100;
    }

    else
    {
      v36 = *(v159 + 40 * v162 - 12);
    }

    v177 = 0;
    result = Psola_SetUpCrossFading_0(v34, v35, v36, *(v161 + 88), *(v161 + 96), &v177 + 1, &v177);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!v162)
    {
      goto LABEL_44;
    }

    if (v10 == -1)
    {
      v40 = *(v161 + 124) * *(v161 + 106) / 0x3E8;
      UNICORN__log_wsola_Diag(*v3, 3, "Parametric silence for s32i = %d\n");
    }

    else
    {
      UNICORN__log_wsola_Diag(*v3, 3, "Non silence unit %d for s32i = %d\n");
      if (**(v161 + 72))
      {
        v40 = -1;
      }

      else
      {
        v40 = ((*(v161 + 124) * *(v161 + 106)) / 1000.0);
      }
    }

    UNICORN__log_wsola_Diag(*v3, 3, "SynthSilence debugging, s32i=%d, s32SilLen %d\n");
    UNICORN__log_wsola_Diag(*v3, 3, "SynthSilence - next unit is going to be %d\n");
    if ((v40 & 0x80000000) == 0)
    {
      UNICORN__Psola_SynthSilence(v3, *(v161 + 16), (*(v8 - 20) * v40 + 500) / 1000, v161);
LABEL_44:
      UNICORN__log_wsola_Diag(*v3, 3, "BANANA: Synthesis of unit %d has just been completed\n\n");
      *(v2 + 104) = v156;
      *(v2 + 106) = v155;
      *(v2 + 108) = 0;
      *(v2 + 112) = v13;
      *(v2 + 88) = vextq_s8(*(v2 + 88), *(v2 + 88), 8uLL);
      v43 = v177;
      *(v2 + 8) = HIDWORD(v177);
      *(v2 + 12) = v43;
      *(v2 + 4) = 3 - *(v2 + 4);
      goto LABEL_45;
    }

    v45 = *(v161 + 72);
    v46 = *(v161 + 24);
    v179[0] = 0;
    v178 = 0;
    v47 = *(v45 + 2);
    v48 = *v47;
    if (v48 <= 0)
    {
      v49 = -v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = (v45[1] + v45[2] + v45[3] - 1);
    v51 = *(*(v45 + 5) + 2 * v50) + v47[v50];
    v52 = *v45;
    v53 = *(v3 + 48);
    if (v10 == -1 || !v53)
    {
      if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v54 = 0;
      v55 = *(v3 + 40);
      v56 = (v55 + 24);
      while (1)
      {
        v57 = *v56;
        v56 += 8;
        if (v57 > v10)
        {
          break;
        }

        if (v53 == ++v54)
        {
          LODWORD(v54) = *(v3 + 48);
          break;
        }
      }

      if (v53 >= v54 && v3 && (v54 & 0x80000000) == 0)
      {
        if (v54)
        {
          v58 = v55 + 32 * (v54 - 1);
          v59 = (v58 + 8);
          v60 = *(v58 + 24);
LABEL_126:
          *(v3 + 32) = *v59;
          *(v3 + 52) = v60;
          goto LABEL_128;
        }

LABEL_125:
        v60 = 0;
        v59 = (v3 + 24);
        goto LABEL_126;
      }
    }

    v60 = *(v3 + 52);
LABEL_128:
    result = UNICORN__Psola_GetDecodedUnitData(v3, v42, v161 + 104, v10 - v60, v49, v52, (v51 - v52) & ~((v51 - v52) >> 31), 0x5DC0u, v46, v179 + 1, &v178, v179);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = 2229280777;
    v89 = HIDWORD(v179[0]);
    if (HIDWORD(v179[0]) + **(v45 + 2) < 0 || HIDWORD(v179[0]) + v51 > v178 + HIDWORD(v179[0]) + LODWORD(v179[0]))
    {
      return result;
    }

    UNICORN__log_wsola_Diag(*v3, 3, "About to call synthesis for unitID %d\n");
    v90 = *(v161 + 88);
    v91 = *v90;
    v92 = v90[1];
    v93 = *(v90 + 8);
    v94 = 0;
    if (*v90)
    {
      v95 = *v90;
      v96 = *(v90 + 8);
      do
      {
        v97 = *v96++;
        v94 += v97;
        --v95;
      }

      while (v95);
    }

    v98 = v92 + v91;
    v100 = *(v161 + 8);
    v101 = *(v161 + 12);
    v102 = 0;
    if (v90[1])
    {
      v103 = (v93 + 2 * v91);
      do
      {
        v104 = *v103++;
        v102 += v104;
        --v92;
      }

      while (v92);
    }

    v99 = v90[2];
    v105 = v98 + v99;
    v106 = HIDWORD(v177);
    v107 = *v161;
    v166 = v101 + v100;
    if ((v166 < 0) ^ __OFADD__(v101, v100) | (v166 == 0))
    {
      v108 = *(v93 + 2 * *v90);
      v166 = ((v108 + (v108 >> 15)) << 16) >> 17;
      v163 = *v161;
    }

    else
    {
      v163 = v107 - v100;
    }

    v165 = v177 + HIDWORD(v177);
    if ((v177 + HIDWORD(v177) < 0) ^ __OFADD__(v177, HIDWORD(v177)) | (v177 + HIDWORD(v177) == 0))
    {
      v109 = *(v93 + 2 * v98 - 2);
      v106 = (v109 + (v109 >> 15)) >> 1;
      v165 = v106;
    }

    v110 = v107 + v102;
    if (v105)
    {
      v147 = v13;
      v111 = 0;
      v112 = 0;
      v151 = v110 - v106;
      v168 = *(v161 + 16);
      v113 = *(v161 + 32);
      v160 = *(v161 + 24);
      v176 = v107 - v94;
      v145 = (v105 - 1);
      v150 = (v105 + 1);
      v172 = *(v161 + 72);
      v158 = v89;
      v170 = *(v161 + 88);
      v153 = v3;
      v154 = v98 + v99;
      do
      {
        v174 = v112;
        if (v111)
        {
          if (v111 == v105)
          {
            v114 = *(*(v90 + 2) + 2 * v145);
            LODWORD(v115) = *(*(v172 + 40) + 2 * v114);
            result = Psola_CopyDataPart_0(*(*v3 + 8), v160, v89 + *(*(v172 + 16) + 2 * v114), v115, v113);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            LODWORD(v116) = 0;
            v117 = 0;
            v118 = (*(v90 + 8) + 2 * v145);
          }

          else
          {
            v120 = *(*(v90 + 5) + 2 * v111);
            v121 = *(*(v90 + 2) + 2 * v111);
            v122 = v121 - 1;
            v123 = *(v172 + 40);
            v124 = *(v172 + 16);
            if (v120)
            {
              v115 = *(v123 + 2 * v121);
              v116 = *(v123 + 2 * v122);
              v125 = *(v124 + 2 * v121);
              result = Psola_ReallocIfNeeded_0(*(*v3 + 8), v113, v115);
              if (v115 >= 1 && (result & 0x80000000) == 0)
              {
                v126 = (v160 + 2 * (v89 + v125));
                v127 = (*v113 + 2 * v115 - 2);
                v128 = v115;
                do
                {
                  v129 = *v126++;
                  *v127-- = v129;
                  --v128;
                }

                while (v128);
              }

              v130 = v170;
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v131 = *(*(v172 + 16) + 2 * v122);
              result = Psola_ReallocIfNeeded_0(*(*v3 + 8), (v113 + 16), v116);
              if (v116 >= 1 && (result & 0x80000000) == 0)
              {
                v132 = (v160 + 2 * (v89 + v131));
                v133 = (*(v113 + 16) + 2 * v116 - 2);
                v134 = v116;
                do
                {
                  v135 = *v132++;
                  *v133-- = v135;
                  --v134;
                }

                while (v134);
              }
            }

            else
            {
              LODWORD(v115) = *(v123 + 2 * v122);
              LODWORD(v116) = *(v123 + 2 * v121);
              result = Psola_CopyDataPart_0(*(*v3 + 8), v160, v89 + *(v124 + 2 * v122), v115, v113);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = Psola_CopyDataPart_0(*(*v3 + 8), v160, v89 + *(*(v172 + 16) + 2 * v121), v116, (v113 + 16));
              v130 = v170;
            }

            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v136 = (*(v130 + 8) + 2 * v111);
            v137 = *v136;
            v118 = v136 - 1;
            v117 = v137;
          }

          v138 = *v118;
          if (v115 > v138)
          {
            cstdlib_memmove(*v113, (*v113 + 2 * (v115 - *v118)), 2 * *v118);
            LODWORD(v115) = v138;
          }
        }

        else
        {
          v119 = **(v90 + 2);
          LODWORD(v116) = *(*(v172 + 40) + 2 * v119);
          result = Psola_CopyDataPart_0(*(*v3 + 8), v160, v89 + *(*(v172 + 16) + 2 * v119), v116, (v113 + 16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LODWORD(v115) = 0;
          v117 = **(v90 + 8);
        }

        if (v116 >= v117)
        {
          v139 = v117;
        }

        else
        {
          v139 = v116;
        }

        Psola_ApplyHanning_0(*(v113 + 32), (v161 + 64), *v113, v115, 1);
        Psola_ApplyHanning_0(*(v113 + 32), (v161 + 64), *(v113 + 16), v139, 0);
        Psola_ApplyFadingPart(*v113, v115, v176 - v115, v163, v166, 1);
        Psola_ApplyFadingPart(*(v113 + 16), v139, v176, v163, v166, 1);
        Psola_ApplyFadingPart(*v113, v115, v176 - v115, v151, v165, 0);
        Psola_ApplyFadingPart(*(v113 + 16), v139, v176, v151, v165, 0);
        Psola_AddToOlaBuf_0(v153, v168, *v113, v115, v176 - v115);
        Psola_AddToOlaBuf_0(v153, v168, *(v113 + 16), v139, v176);
        v112 = 1;
        v176 += v117;
        v89 = v158;
        v105 = v154;
        if (!v174)
        {
          if (v176 >= *v161 + 961 || v111 == v154)
          {
            Psola_FlushOlaBufPart_0(v153, v168, *v161);
          }

          else
          {
            v112 = 0;
          }
        }

        ++v111;
        v3 = v153;
        v90 = v170;
      }

      while (v111 != v150);
      v2 = v161;
      v110 = *v161 + v102;
      v13 = v147;
    }

    *v2 = v110;
    goto LABEL_44;
  }

  v62 = v141;
  v63 = v61;
  if (i <= 0x2710)
  {
    v64 = 10000;
  }

  else
  {
    v64 = i;
  }

  while (v64 != i)
  {
    UNICORN__writeToPeriVec((v38 + 4), i, v62);
    UNICORN__writeToPeriVec((v38 + 16), i, 0);
    UNICORN__writeToPeriVec((v38 + 28), i, *(*(v20 + 40) + 2 * v62));
    LODWORD(i) = i + 1;
    ++v38[2];
    if (v63 == ++v62)
    {
      goto LABEL_16;
    }
  }

  return 2229280777;
}

uint64_t UNICORN__concat_initUnit(uint64_t a1, int a2, int a3, int a4)
{
  *(a1 + 21304) = a2;
  *(a1 + 21312) = a3;
  *(a1 + 21316) = a4;
  *(a1 + 21320) = 0;
  *(a1 + 21324) = 34;
  *(a1 + 21328) = a2 == -1;
  return 0;
}

uint64_t UNICORN__Psola_OutputFinalSilence(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 128) + 40 * *(a2 + 120);
  v5 = *(v4 - 20) * ((*(a2 + 124) * *(v4 - 32)) / 1000.0);
  if (v5 >= 500)
  {
    UNICORN__Psola_SynthSilence(a1, *(a2 + 16), (v5 + 500) / 0x3E8u, a2);
  }

  Psola_FlushOlaBufPart_0(a1, *(a2 + 16), *(*(a2 + 16) + 8) + **(a2 + 16));
  return 0;
}

void *UNICORN__Psola_Deinitialise(uint64_t a1, void *a2)
{
  v4 = a2[2];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
  }

  v5 = a2[3];
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
  }

  v6 = a2[4];
  if (v6)
  {
    if (*v6)
    {
      heap_Free(*(a1 + 8), *v6);
      v6 = a2[4];
    }

    if (v6[2])
    {
      heap_Free(*(a1 + 8), v6[2]);
      v6 = a2[4];
    }

    if (v6[4])
    {
      heap_Free(*(a1 + 8), v6[4]);
      v6 = a2[4];
    }

    heap_Free(*(a1 + 8), v6);
  }

  v7 = a2[11];
  if (v7)
  {
    freeModPeriDesc(a1, v7);
  }

  v8 = a2[12];
  if (v8)
  {
    freeModPeriDesc(a1, v8);
  }

  v9 = a2[16];
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    a2[16] = 0;
  }

  v10 = *(a1 + 8);

  return heap_Free(v10, a2);
}

void *freeModPeriDesc(uint64_t a1, uint64_t *a2)
{
  heap_Free(*(a1 + 8), a2[2]);
  heap_Free(*(a1 + 8), a2[5]);
  heap_Free(*(a1 + 8), a2[8]);
  v4 = *(a1 + 8);

  return heap_Free(v4, a2);
}

uint64_t Psola_AssignPeriRanges_0(unsigned __int16 *a1)
{
  v1 = a1[3];
  v2 = (a1[2] + a1[1] + v1);
  if (a1[2] + a1[1] + v1)
  {
    v4 = 0;
    a1[1] = 0;
    v5 = *(a1 + 2);
    while (*v5 < 0)
    {
      a1[1] = ++v4;
      ++v5;
      if (v2 == v4)
      {
        a1[2] = 0;
LABEL_16:
        a1[3] = v2 - v4;
        return 0;
      }
    }

    a1[2] = 0;
    if (v4 >= v2)
    {
      goto LABEL_16;
    }

    v6 = 0;
    v7 = v2 - v4;
    v8 = *a1;
    do
    {
      v9 = *v5++;
      if (v9 >= v8)
      {
        break;
      }

      a1[2] = ++v6;
      --v7;
    }

    while (v7);
    a1[3] = v2 - (v4 + v6);
    if (!v4 && v6)
    {
      a1[1] = 1;
      if (v6 == 1)
      {
        v10 = (v2 - 1);
        if (v2 != 1)
        {
          do
          {
            UNICORN__writeToPeriVec((a1 + 4), v2, *(*(a1 + 2) + 2 * v10));
            UNICORN__writeToPeriVec((a1 + 16), v2, *(*(a1 + 5) + 2 * v10));
            UNICORN__writeToPeriVec((a1 + 28), v2, *(*(a1 + 8) + 2 * v10));
            LODWORD(v2) = v2 - 1;
            --v10;
          }

          while (v10);
        }

        UNICORN__writeToPeriVec((a1 + 16), 1u, **(a1 + 5) / 2);
        UNICORN__writeToPeriVec((a1 + 16), 0, **(a1 + 5) - *(*(a1 + 5) + 2));
        UNICORN__writeToPeriVec((a1 + 4), 1u, **(a1 + 5) + **(a1 + 2));
        UNICORN__writeToPeriVec((a1 + 28), 0, 0);
        UNICORN__writeToPeriVec((a1 + 28), 1u, 0);
      }

      else
      {
        a1[2] = v6 - 1;
      }
    }
  }

  return 0;
}

uint64_t UNICORN__Wsola__write_audioX(uint64_t *a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = a4;
  v9 = heap_Calloc(*(*a1 + 8), a4, 2);
  if (v9)
  {
    v15 = v9;
    if (a4)
    {
      v16 = 0;
      do
      {
        *(v9 + 2 * v16) = *(a2 + 2 * (a3 + v16));
        ++v16;
      }

      while (v8 != v16);
      v17 = a1[7];
      if (v17)
      {
        v17(a1[2], v9, v8);
      }
    }

    heap_Free(*(*a1 + 8), v15);
    return 0;
  }

  else
  {
    UNICORN__log_wsola_Error(*a1, 59000, 0, v10, v11, v12, v13, v14);
    return 2229280778;
  }
}

uint64_t UNICORN__Wsola__write_audio(uint64_t *a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = a4;
  v9 = heap_Calloc(*(*a1 + 8), a4, 2);
  if (v9)
  {
    v15 = v9;
    if (a4)
    {
      v16 = 0;
      v17 = *(a2 + 16);
      do
      {
        *(v9 + 2 * v16) = *(v17 + 4 * (a3 + v16));
        ++v16;
      }

      while (v8 != v16);
      v18 = a1[7];
      if (v18)
      {
        v18(a1[2], v9, v8);
      }
    }

    heap_Free(*(*a1 + 8), v15);
    return 0;
  }

  else
  {
    UNICORN__log_wsola_Error(*a1, 59000, 0, v10, v11, v12, v13, v14);
    return 2229280778;
  }
}

void UNICORN__Wsola__windowinit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = *(a1 + 21192);
  if ((v5 - 1) >= 2)
  {
    if (!v5 && v2)
    {
      v13 = 0;
      v14 = 0.0;
      v15 = 1.0;
      v16 = 1.0 / v3;
      do
      {
        v4[v2] = v15;
        *v4++ = v14;
        v15 = v15 - v16;
        v14 = v16 + v14;
        v13 += 4;
      }

      while (4 * v2 != v13);
    }
  }

  else if (v2)
  {
    v6 = 0;
    v7 = v3 + v3;
    v8 = *(a1 + 8);
    do
    {
      v9 = cos((v6 + v6) * 3.14159265 / v7);
      v10 = v9 * -0.5 + 0.5;
      *v4 = v10;
      v11 = cos((v8 + v8) * 3.14159265 / v7);
      v12 = v11 * -0.5 + 0.5;
      v4[v2] = v12;
      ++v4;
      ++v6;
      --v8;
    }

    while (v8);
  }
}

uint64_t UNICORN__concat_initW(uint64_t a1)
{
  *(a1 + 104) = 0;
  v2 = a1 + 104;
  v3 = *(a1 + 64);
  *(a1 + 108) = 0;
  *(a1 + 21296) = *(a1 + 21332) != 0;
  if (v3 > 15999)
  {
    if (v3 != 16000)
    {
      if (v3 == 22050)
      {
        v5 = 4;
        v6 = 440;
        goto LABEL_12;
      }

      if (v3 != 16036)
      {
LABEL_17:
        UNICORN__log_wsola_Diag(*a1, 1, "ERROR: Unsupported sampling rate = %d\n");
        return 2229280775;
      }
    }

LABEL_11:
    v6 = (v3 / 1000.0 * 20.0) & 0xFFFFFFFC;
    v5 = 1;
    goto LABEL_12;
  }

  if (v3 == 8000 || v3 == 8018)
  {
    goto LABEL_11;
  }

  if (v3 != 11025)
  {
    goto LABEL_17;
  }

  v5 = 2;
  v6 = 220;
LABEL_12:
  *(a1 + 128) = v5;
  *(a1 + 112) = v6;
  *(a1 + 116) = v6 >> 1;
  *(a1 + 120) = 2 * v6;
  *(a1 + 124) = 3 * v6;
  *(a1 + 168) = 0;
  *(a1 + 140) = 0;
  *(a1 + 132) = 0;
  *(a1 + 148) = 0;
  if (!*(a1 + 152))
  {
    v7 = UNICORN__Vector__Create(*(*a1 + 8), 3 * v6);
    *(a1 + 152) = v7;
    if (!v7)
    {
      v9 = 2229280778;
      v10 = *a1;
      v11 = "ERROR: Out of memory when allocating oladbuf\n";
LABEL_21:
      UNICORN__log_wsola_Diag(v10, 1, v11);
      return v9;
    }
  }

  v8 = *(a1 + 160);
  if (!v8)
  {
    v8 = UNICORN__Vector__Create(*(*a1 + 8), *(a1 + 120));
    *(a1 + 160) = v8;
    if (!v8)
    {
      v9 = 2229280778;
      v10 = *a1;
      v11 = "ERROR: Out of memory when allocating wsolaWindow\n";
      goto LABEL_21;
    }
  }

  UNICORN__Wsola__windowinit(v2, v8);
  return 0;
}

uint64_t UNICORN__concat_deinitW(uint64_t a1)
{
  UNICORN__Window__Remove((a1 + 168));
  UNICORN__Window__Remove((a1 + 160));
  return 0;
}

uint64_t UNICORN__concat_final_deinitW(uint64_t *a1)
{
  UNICORN__Window__Remove(a1 + 21);
  UNICORN__Window__Remove(a1 + 20);
  UNICORN__Window__Remove(a1 + 19);
  return 0;
}

uint64_t concat_enableAddon(uint64_t a1, int a2)
{
  v2 = 2229280770;
  if (a1 && a2 >= -1 && *(a1 + 48) > a2)
  {
    if (a2 == -1)
    {
      v5 = 0;
      v4 = (a1 + 24);
    }

    else
    {
      v3 = *(a1 + 40) + 32 * a2;
      v4 = (v3 + 8);
      v5 = *(v3 + 24);
    }

    v2 = 0;
    *(a1 + 32) = *v4;
    *(a1 + 52) = v5;
  }

  return v2;
}

uint64_t concat_UID2AddonId(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 != -1 && a2)
  {
    v5 = 0;
    v6 = (a1 + 24);
    do
    {
      v7 = *v6;
      v6 += 8;
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

uint64_t UNICORN__concat_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, int a10, int a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 21332) = a11 != 0;
  *(a9 + 100) = a10;
  *(a9 + 56) = a5;
  *(a9 + 16) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  return 0;
}

void Psola_AddToOlaBuf_0(uint64_t *a1, int *a2, uint64_t a3, int a4, int a5)
{
  if (*a2 <= a5)
  {
    v16 = v5;
    v17 = v6;
    v7 = a5;
    v8 = a4;
    if (a4 < 1)
    {
      Psola_AddToOlaBufAux_0(a1, a2, v15, 0, 0, a5);
    }

    else
    {
      v12 = 0;
      do
      {
        if (v8 >= 0x2EE0)
        {
          v13 = 12000;
        }

        else
        {
          v13 = v8;
        }

        Psola_AddToOlaBufAux_0(a1, a2, a3, v12, v13, v7);
        v12 += v13;
        v7 += v13;
        v14 = __OFSUB__(v8, v13);
        v8 -= v13;
      }

      while (!((v8 < 0) ^ v14 | (v8 == 0)));
    }
  }
}

void Psola_AddToOlaBufAux_0(uint64_t *a1, int *a2, uint64_t a3, int a4, int a5, int a6)
{
  v11 = a6 + a5;
  v12 = a6 + a5 - 12000;
  v13 = *a2;
  if (v12 > *a2)
  {
    Psola_FlushOlaBufPart_0(a1, a2, v12);
    v13 = *a2;
  }

  v14 = (a6 - v13 + a2[1]) % 12000;
  if (12000 - v14 >= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = 12000 - v14;
  }

  v16 = a5 - v15;
  if (v15 >= 1)
  {
    v17 = a2 + v14 + 6;
    v18 = (a3 + 2 * a4);
    v19 = v15;
    do
    {
      v20 = *v18++;
      *v17++ += v20;
      --v19;
    }

    while (v19);
  }

  if (v16 >= 1)
  {
    v21 = v15 + a4;
    v22 = a2 + 3;
    v23 = (a3 + 2 * v21);
    do
    {
      v24 = *v23++;
      *v22++ += v24;
      --v16;
    }

    while (v16);
  }

  v25 = v11 - v13;
  if (a2[2] > v25)
  {
    v25 = a2[2];
  }

  a2[2] = v25;
}

uint64_t Psola_CopyDataPart_0(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, uint64_t *a5)
{
  v8 = a4;
  v9 = Psola_ReallocIfNeeded_0(a1, a5, a4);
  if ((v9 & 0x80000000) == 0)
  {
    cstdlib_memcpy(*a5, (a2 + 2 * a3), 2 * v8);
  }

  return v9;
}

__int16 *Psola_ApplyHanning_0(__int16 *result, int *a2, __int16 *a3, int a4, int a5)
{
  if (a4)
  {
    if (*a2 != a4)
    {
      if (a4 >= 1)
      {
        v5 = 0;
        v6 = result;
        do
        {
          v7 = HanningTab_0[v5 / a4];
          *v6++ = v7 + ((HanningTab_0[v5 / a4 + 1] - v7) * (v5 % a4)) / a4;
          v5 += 200;
        }

        while (200 * a4 != v5);
      }

      *a2 = a4;
    }

    if (a5)
    {
      if (a4 >= 1)
      {
        v8 = a4;
        do
        {
          v9 = *result++;
          *a3 = v9 * *a3 / 0x8000;
          ++a3;
          --v8;
        }

        while (v8);
      }
    }

    else if (a4 >= 1)
    {
      v10 = a4;
      do
      {
        v11 = *result++;
        *a3 = (0x7FFF - v11) * *a3 / 0x8000;
        ++a3;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t Psola_ReallocIfNeeded_0(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (a2[1] >= a3)
  {
    return 0;
  }

  v4 = (a3 & 0xFFFFFFFFFFFFFE00) + 512;
  v5 = heap_Realloc(a1, *a2, 2 * v4);
  if (!v5)
  {
    return 2229280778;
  }

  v6 = v5;
  result = 0;
  *a2 = v6;
  a2[1] = v4;
  return result;
}

uint64_t UNICORN__Vector__Clear(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    bzero(v2, 4 * v3);
  }

  return 0;
}

uint64_t UNICORN__Vector__Create(void *a1, unsigned int a2)
{
  v4 = heap_Calloc(a1, 1, 24);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 12) = 0;
    v6 = heap_Calloc(a1, a2, 4);
    *(v5 + 16) = v6;
    if (v6)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        bzero(v6, 4 * v7);
      }
    }

    else
    {
      heap_Free(a1, v5);
      return 0;
    }
  }

  return v5;
}

uint64_t *UNICORN__Window__Remove(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      heap_Free(**result, *(*result + 16));
      *(*v1 + 16) = 0;
      result = heap_Free(**v1, *v1);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t UNICORN__log_wsola_Diag(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (v4 == 10);
  return log_VOutText(*(a1 + 32), "SYNTH_BET5", (a2 + 2), 0, v3);
}

uint64_t sonicSetRate(uint64_t result, float a2)
{
  *(result + 44) = a2;
  *(result + 48) = 0;
  return result;
}

void *sonicDestroyStream(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    freeStreamBuffers(result, a2);
    v4 = v3[1];

    return heap_Free(v4, a2);
  }

  return result;
}

void *freeStreamBuffers(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  if (v4)
  {
    result = heap_Free(result[1], v4);
  }

  v5 = a2[1];
  if (v5)
  {
    result = heap_Free(v3[1], v5);
  }

  v6 = a2[2];
  if (v6)
  {
    result = heap_Free(v3[1], v6);
  }

  v7 = a2[3];
  if (v7)
  {
    v8 = v3[1];

    return heap_Free(v8, v7);
  }

  return result;
}

uint64_t sonicCreateStream(uint64_t a1, int a2, unsigned int a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 128);
  if (v6)
  {
    if (allocateStreamBuffers(a1, v6, a2, a3))
    {
      __asm { FMOV            V0.4S, #1.0 }

      *(v6 + 32) = _Q0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 120) = 1112014848;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t allocateStreamBuffers(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = a3 / 65;
  v9 = (2 * (a3 / 65));
  *(a2 + 68) = v9;
  v10 = 2 * a4;
  v11 = heap_Calloc(*(a1 + 8), v9, v10);
  *a2 = v11;
  if (v11 && (*(a2 + 76) = v9, v12 = heap_Calloc(*(a1 + 8), v9, v10), (*(a2 + 8) = v12) != 0) && (*(a2 + 72) = v9, v13 = heap_Calloc(*(a1 + 8), v9, v10), (*(a2 + 16) = v13) != 0) && (v14 = heap_Calloc(*(a1 + 8), v9, 2), (*(a2 + 24) = v14) != 0))
  {
    *(a2 + 64) = a4;
    *(a2 + 48) = 0;
    *(a2 + 92) = a3 / 400;
    *(a2 + 96) = v8;
    *(a2 + 100) = v9;
    *(a2 + 108) = a3;
    *(a2 + 112) = 0;
    return 1;
  }

  else
  {
    freeStreamBuffers(a1, a2);
    heap_Free(*(a1 + 8), a2);
    return 0;
  }
}

uint64_t sonicSetSampleRate(void *a1, uint64_t a2, int a3)
{
  freeStreamBuffers(a1, a2);
  v6 = *(a2 + 64);

  return allocateStreamBuffers(a1, a2, a3, v6);
}

uint64_t sonicSetNumChannels(void *a1, uint64_t a2, unsigned int a3)
{
  freeStreamBuffers(a1, a2);
  v6 = *(a2 + 108);

  return allocateStreamBuffers(a1, a2, v6, a3);
}

uint64_t sonicReadFloatFromStream(uint64_t a1, float *a2, signed int a3)
{
  v3 = *(a1 + 84);
  if (!v3)
  {
    return 0;
  }

  if (v3 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v3;
  }

  if (v3 <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 - a3;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 64);
  if (v8 * v5)
  {
    v9 = v8 * v5;
    v10 = v7;
    do
    {
      v11 = *v10++;
      *a2++ = v11 / 32767.0;
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    cstdlib_memmove(v7, &v7[(v8 * v5)], (2 * v6 * v8));
  }

  *(a1 + 84) = v6;
  return v5;
}

uint64_t sonicReadShortFromStream(uint64_t a1, void *__dst, signed int a3)
{
  v3 = *(a1 + 84);
  if (!v3)
  {
    return 0;
  }

  if (v3 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v3;
  }

  if (v3 <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 - a3;
  }

  cstdlib_memcpy(__dst, *(a1 + 8), (2 * v5 * *(a1 + 64)));
  if (v6 >= 1)
  {
    cstdlib_memmove(*(a1 + 8), (*(a1 + 8) + 2 * (*(a1 + 64) * v5)), (2 * v6 * *(a1 + 64)));
  }

  *(a1 + 84) = v6;
  return v5;
}

uint64_t sonicReadUnsignedCharFromStream(uint64_t a1, _BYTE *a2, signed int a3)
{
  v3 = *(a1 + 84);
  if (!v3)
  {
    return 0;
  }

  if (v3 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v3;
  }

  if (v3 <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 - a3;
  }

  v7 = *(a1 + 64) * v5;
  if (v7)
  {
    v8 = *(a1 + 8);
    do
    {
      v9 = *(v8 + 1);
      v8 += 2;
      *a2++ = v9 ^ 0x80;
      --v7;
    }

    while (v7);
  }

  if (v6 >= 1)
  {
    cstdlib_memmove(*(a1 + 8), (*(a1 + 8) + 2 * (*(a1 + 64) * v5)), (2 * v6 * *(a1 + 64)));
  }

  *(a1 + 84) = v6;
  return v5;
}

uint64_t sonicFlushStream(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 44);
  v9 = *(a2 + 80);
  v8 = *(a2 + 84);
  v10 = *(a2 + 88);
  result = enlargeInputBufferIfNeeded(a1, a2, v9 + 2 * v4);
  if (result)
  {
    cstdlib_memset((*a2 + 2 * (*(a2 + 64) * v9)), 0, (4 * v4 * *(a2 + 64)));
    *(a2 + 80) += 2 * v4;
    result = processStreamInput(a1, a2);
    if (result)
    {
      v12 = v8 + ((((v9 / (v5 / v6)) + v10) / (v6 * v7)) + 0.5);
      if (*(a2 + 84) > v12)
      {
        *(a2 + 84) = v12;
      }

      *(a2 + 80) = 0;
      *(a2 + 104) = 0;
      result = 1;
      *(a2 + 88) = 0;
    }
  }

  return result;
}

uint64_t enlargeInputBufferIfNeeded(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 68);
  if (*(a2 + 80) + a3 <= v3)
  {
    return 1;
  }

  v5 = v3 + a3 + (v3 >> 1);
  *(a2 + 68) = v5;
  result = heap_Realloc(*(a1 + 8), *a2, 2 * *(a2 + 64) * v5);
  *a2 = result;
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sonicWriteShortToStream(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a4)
  {
    result = enlargeInputBufferIfNeeded(a1, a2, a4);
    if (!result)
    {
      return result;
    }

    cstdlib_memcpy((*a2 + 2 * (*(a2 + 64) * *(a2 + 80))), a3, 2 * *(a2 + 64) * a4);
    *(a2 + 80) += a4;
  }

  return processStreamInput(a1, a2);
}

uint64_t overlapAdd(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = 0;
    do
    {
      if (result >= 1)
      {
        v6 = 0;
        v7 = 0;
        v8 = result << 16;
        v9 = result;
        do
        {
          *(a3 + v6) = ((v8 >> 16) * *(a4 + v6) + (v7 >> 16) * *(a5 + v6)) / result;
          v8 -= 0x10000;
          v7 += 0x10000;
          v6 += 2 * a2;
          --v9;
        }

        while (v9);
      }

      ++v5;
      a4 += 2;
      a5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sonicWriteFloatToStream(uint64_t a1, uint64_t a2, float *a3, int a4)
{
  if (a4)
  {
    v8 = *(a2 + 64);
    result = enlargeInputBufferIfNeeded(a1, a2, a4);
    if (!result)
    {
      return result;
    }

    v10 = *(a2 + 80);
    if (v8)
    {
      v11 = v8 * a4;
      v12 = (*a2 + 2 * *(a2 + 64) * v10);
      do
      {
        v13 = *a3++;
        *v12++ = (v13 * 32767.0);
        --v11;
      }

      while (v11);
    }

    *(a2 + 80) = v10 + a4;
  }

  return processStreamInput(a1, a2);
}

uint64_t processStreamInput(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 84);
  v4 = *(a2 + 40);
  v5 = *(a2 + 32) / v4;
  if (*(a2 + 56))
  {
    v6 = *(a2 + 44);
  }

  else
  {
    v6 = v4 * *(a2 + 44);
  }

  if (v5 <= 1.00001 && v5 >= 0.99999)
  {
    result = copyToOutput(a1, a2, *a2, *(a2 + 80));
    if (result)
    {
      v75 = v3;
      *(a2 + 80) = 0;
      goto LABEL_36;
    }

    return result;
  }

  v75 = *(a2 + 84);
  v8 = *(a2 + 80);
  v9 = *(a2 + 100);
  if (v8 < v9)
  {
    goto LABEL_36;
  }

  v10 = 0;
  do
  {
    v11 = *(a2 + 104);
    if (v11 >= 1)
    {
      if (v11 >= *(a2 + 100))
      {
        LODWORD(v12) = *(a2 + 100);
      }

      else
      {
        LODWORD(v12) = *(a2 + 104);
      }

      if (!copyToOutput(a1, a2, (*a2 + 2 * *(a2 + 64) * v10), v12))
      {
        goto LABEL_36;
      }

      *(a2 + 104) -= v12;
LABEL_27:
      if (!v12)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    v13 = (*a2 + 2 * *(a2 + 64) * v10);
    PitchPeriod = findPitchPeriod(a2, v13, 1);
    v15 = PitchPeriod;
    v16 = *(a2 + 64);
    if (v5 <= 1.0)
    {
      v18 = PitchPeriod;
      if (v5 >= 0.5)
      {
        *(a2 + 104) = ((((v5 * 2.0) + -1.0) / (1.0 - v5)) * v18);
        v12 = PitchPeriod;
      }

      else
      {
        v12 = ((v5 / (1.0 - v5)) * v18);
      }

      v19 = v12 + PitchPeriod;
      if (!enlargeOutputBufferIfNeeded(a1, a2, v12 + PitchPeriod))
      {
        goto LABEL_36;
      }

      cstdlib_memcpy((*(a2 + 8) + 2 * *(a2 + 84) * v16), v13, (2 * v16 * v15));
      overlapAdd(v12, v16, *(a2 + 8) + 2 * (*(a2 + 84) + v15) * v16, &v13[v16 * v15], v13);
      *(a2 + 84) += v19;
      goto LABEL_27;
    }

    if (v5 >= 2.0)
    {
      v17 = (PitchPeriod / (v5 + -1.0));
    }

    else
    {
      *(a2 + 104) = PitchPeriod * ((2.0 - v5) / (v5 + -1.0));
      v17 = PitchPeriod;
    }

    if (enlargeOutputBufferIfNeeded(a1, a2, v17))
    {
      overlapAdd(v17, v16, *(a2 + 8) + 2 * *(a2 + 84) * v16, v13, &v13[v16 * v15]);
      *(a2 + 84) += v17;
    }

    else
    {
      LODWORD(v17) = 0;
    }

    LODWORD(v12) = v17 + v15;
    if (!v17)
    {
      goto LABEL_36;
    }

LABEL_28:
    v10 += v12;
  }

  while (v10 + v9 <= v8);
  v20 = *(a2 + 80) - v10;
  if (v20 >= 1)
  {
    cstdlib_memmove(*a2, (*a2 + 2 * (*(a2 + 64) * v10)), (2 * v20 * *(a2 + 64)));
  }

  *(a2 + 80) = v20;
LABEL_36:
  if (*(a2 + 56))
  {
    v21 = *(a2 + 40);
    v22 = v75;
    if (v21 != 1.0 && *(a2 + 84) != v75)
    {
      v23 = *(a2 + 64);
      result = moveNewSamplesToPitchBuffer(a1, a2, v75);
      if (!result)
      {
        return result;
      }

      if (*(a2 + 88) >= *(a2 + 100))
      {
        LODWORD(v24) = 0;
        while (1)
        {
          v25 = findPitchPeriod(a2, (*(a2 + 16) + 2 * v24 * v23), 0);
          v26 = v25 / v21;
          v27 = v26;
          result = enlargeOutputBufferIfNeeded(a1, a2, v26);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 84);
          v29 = *(a2 + 16);
          v30 = *(a2 + 8) + 2 * v28 * v23;
          v31 = v29 + 2 * v24 * v23;
          if (v21 >= 1.0)
          {
            overlapAdd(v27, v23, v30, v31, v29 + 2 * (v25 + v24 - v27) * v23);
            v28 = *(a2 + 84);
          }

          else if (v23 >= 1)
          {
            for (i = 0; i != v23; ++i)
            {
              if (v27 >= 1)
              {
                v33 = 0;
                v34 = (v31 + 2 * i);
                v35 = v30;
                v36 = v25 - v27;
                v37 = v25;
                v38 = v34;
                do
                {
                  if (v33 >= v27 - v25)
                  {
                    if (v33 >= v25)
                    {
                      if (v25)
                      {
                        v39 = v36 * *v38 / v25;
                      }

                      else
                      {
                        LOWORD(v39) = 0;
                      }

                      *v35 = v39;
                    }

                    else
                    {
                      *v35 = v36 * *v38 / v25 + v37 * *v34;
                      v34 += v23;
                    }

                    v38 += v23;
                  }

                  else
                  {
                    *v35 = v37 * *v34 / v25;
                    v34 += v23;
                  }

                  ++v33;
                  --v37;
                  ++v36;
                  v35 += v23;
                }

                while (v27 != v33);
              }

              v30 += 2;
            }
          }

          *(a2 + 84) = v28 + v27;
          LODWORD(v24) = v25 + v24;
          if (*(a2 + 88) - v24 < *(a2 + 100))
          {
            goto LABEL_98;
          }
        }
      }

LABEL_97:
      LODWORD(v24) = 0;
LABEL_98:
      removePitchSamples(a2, v24);
    }

LABEL_99:
    v68 = *(a2 + 36);
    if (fabsf(v68 + -0.8) > 0.00000001)
    {
      v69 = *(a2 + 64);
      v70 = (v68 * 100.0);
      v71 = ((*(a2 + 84) - v22) * v69);
      if (v68 > 1.0)
      {
        v70 = 100;
      }

      if (v71 >= 1)
      {
        v72 = (*(a2 + 8) + 2 * v69 * v22);
        v73 = aVolScaleFactor[v70];
        do
        {
          v74 = (*v72 * v73) >> 15;
          if (v74 <= -32767)
          {
            v74 = -32767;
          }

          if (v74 >= 0x7FFF)
          {
            LOWORD(v74) = 0x7FFF;
          }

          *v72++ = v74;
          --v71;
        }

        while (v71);
      }
    }

    return 1;
  }

  v22 = v75;
  if (v6 == 1.0)
  {
    goto LABEL_99;
  }

  v40 = *(a2 + 108);
  v41 = (v40 / v6);
  if (v40 > 0x4000 || v41 > 0x4000)
  {
    do
    {
      do
      {
        v41 >>= 1;
        v40 >>= 1;
      }

      while (v41 > 0x4000);
    }

    while (v40 > 0x4000);
  }

  if (*(a2 + 84) == v75)
  {
    goto LABEL_99;
  }

  v42 = *(a2 + 64);
  result = moveNewSamplesToPitchBuffer(a1, a2, v75);
  if (!result)
  {
    return result;
  }

  if (*(a2 + 88) < 13)
  {
    goto LABEL_97;
  }

  v24 = 0;
  v43 = *(a2 + 48);
  v44 = *(a2 + 52);
  while (++v43 * v41 <= v44 * v40)
  {
LABEL_92:
    *(a2 + 48) = v43;
    if (v43 == v40)
    {
      *(a2 + 48) = 0;
      if (v44 != v41)
      {
        return 0;
      }

      v44 = 0;
      v43 = 0;
      *(a2 + 52) = 0;
    }

    if (++v24 >= *(a2 + 88) - 12)
    {
      v22 = v75;
      goto LABEL_98;
    }
  }

  while (1)
  {
    result = enlargeOutputBufferIfNeeded(a1, a2, 1);
    if (!result)
    {
      return result;
    }

    v45 = *(a2 + 84);
    v46 = *(a2 + 48);
    v47 = *(a2 + 52);
    if (v42 <= 0)
    {
      v43 = v46 + 1;
      v51 = v43 * v41;
    }

    else
    {
      v48 = 0;
      v49 = *(a2 + 16) + 2 * (v42 * v24);
      v50 = (*(a2 + 8) + 2 * (v45 * v42));
      v43 = v46 + 1;
      v51 = v43 * v41;
      v52 = 50 * (v43 * v41 + ~(v47 * v40));
      v53 = v52 / v41;
      v54 = v52 % v41;
      v55 = 2 * *(a2 + 64);
      v56 = &sincTable + 2 * v53 + 2;
      do
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = v56;
        v61 = 12;
        do
        {
          v62 = 2 * ((v41 - v54) * *(v60 - 1) + v54 * *v60) / v41 * *(v49 + v57);
          v63 = v62 + v59;
          v64 = (v62 + v59) ^ v59;
          v57 += v55;
          v60 += 50;
          if ((v62 ^ v59) >= 0)
          {
            v65 = (v59 >> 31) | 1;
          }

          else
          {
            v65 = 0;
          }

          v66 = v65 + v58;
          if (v64 < 0)
          {
            v58 = v66;
          }

          v59 = v63;
          --v61;
        }

        while (v61);
        if (v58 <= 0)
        {
          if (v58 < 0)
          {
            LOWORD(v67) = 0x8000;
          }

          else
          {
            v67 = HIWORD(v63);
          }
        }

        else
        {
          LOWORD(v67) = 0x7FFF;
        }

        *v50++ = v67;
        v49 += 2;
        ++v48;
      }

      while (v48 != v42);
    }

    v44 = v47 + 1;
    *(a2 + 52) = v44;
    *(a2 + 84) = v45 + 1;
    if (v51 <= v44 * v40)
    {
      goto LABEL_92;
    }
  }
}

uint64_t sonicWriteUnsignedCharToStream(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4)
  {
    v8 = *(a2 + 64);
    result = enlargeInputBufferIfNeeded(a1, a2, a4);
    if (!result)
    {
      return result;
    }

    v10 = *(a2 + 80);
    if (v8)
    {
      v11 = v8 * a4;
      v12 = (*a2 + 2 * *(a2 + 64) * v10);
      do
      {
        v13 = *a3++;
        *v12++ = (v13 << 8) ^ 0x8000;
        --v11;
      }

      while (v11);
    }

    *(a2 + 80) = v10 + a4;
  }

  return processStreamInput(a1, a2);
}

uint64_t sonicChangeFloatSpeed(uint64_t a1, float *a2, int a3, int a4, int a5, unsigned int a6, float a7, float a8, float a9, float a10)
{
  Stream = sonicCreateStream(a1, a5, a6);
  if (!Stream)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = Stream;
  *(Stream + 40) = a8;
  *(Stream + 44) = a9;
  *(Stream + 48) = 0;
  *(Stream + 32) = a7;
  *(Stream + 36) = a10;
  *(Stream + 56) = a4;
  sonicWriteFloatToStream(a1, Stream, a2, a3);
  sonicFlushStream(a1, v19);
  v20 = *(v19 + 84);
  sonicReadFloatFromStream(v19, a2, *(v19 + 84));
  freeStreamBuffers(a1, v19);
  heap_Free(*(a1 + 8), v19);
  return v20;
}

uint64_t sonicChangeShortSpeed(uint64_t a1, void *a2, unsigned int a3, int a4, int a5, unsigned int a6, float a7, float a8, float a9, float a10)
{
  Stream = sonicCreateStream(a1, a5, a6);
  if (!Stream)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = Stream;
  *(Stream + 40) = a8;
  *(Stream + 44) = a9;
  *(Stream + 48) = 0;
  *(Stream + 32) = a7;
  *(Stream + 36) = a10;
  *(Stream + 56) = a4;
  sonicWriteShortToStream(a1, Stream, a2, a3);
  sonicFlushStream(a1, v19);
  v20 = *(v19 + 84);
  sonicReadShortFromStream(v19, a2, *(v19 + 84));
  freeStreamBuffers(a1, v19);
  heap_Free(*(a1 + 8), v19);
  return v20;
}

uint64_t copyToOutput(uint64_t a1, uint64_t a2, const void *a3, int a4)
{
  result = enlargeOutputBufferIfNeeded(a1, a2, a4);
  if (result)
  {
    cstdlib_memcpy((*(a2 + 8) + 2 * (*(a2 + 64) * *(a2 + 84))), a3, (2 * a4 * *(a2 + 64)));
    *(a2 + 84) += a4;
    return 1;
  }

  return result;
}

uint64_t findPitchPeriod(uint64_t a1, __int16 *a2, int a3)
{
  v6 = *(a1 + 108);
  if (v6 < 4001)
  {
    v8 = 1;
  }

  else
  {
    v7 = v6 / 0xFA0u;
    if (*(a1 + 60))
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }
  }

  v10 = *(a1 + 92);
  v9 = *(a1 + 96);
  v19 = 0;
  if (v8 == 1 && *(a1 + 64) == 1)
  {
    v11 = a2;
    v12 = v10;
LABEL_20:
    PitchPeriodInRange = findPitchPeriodInRange(v11, v12, v9, &v19 + 1, &v19);
    goto LABEL_21;
  }

  downSampleInput(a1, a2, v8);
  PitchPeriodInRange = findPitchPeriodInRange(*(a1 + 24), v10 / v8, v9 / v8, &v19 + 1, &v19);
  if (v8 != 1)
  {
    v14 = PitchPeriodInRange * v8 + 4 * v8;
    if (PitchPeriodInRange * v8 - 4 * v8 <= *(a1 + 92))
    {
      v15 = *(a1 + 92);
    }

    else
    {
      v15 = PitchPeriodInRange * v8 - 4 * v8;
    }

    if (v14 >= *(a1 + 96))
    {
      v9 = *(a1 + 96);
    }

    else
    {
      v9 = v14;
    }

    if (*(a1 + 64) == 1)
    {
      v11 = a2;
    }

    else
    {
      downSampleInput(a1, a2, 1);
      v11 = *(a1 + 24);
    }

    v12 = v15;
    goto LABEL_20;
  }

LABEL_21:
  v16 = HIDWORD(v19);
  v17 = PitchPeriodInRange;
  if (HIDWORD(v19))
  {
    v17 = PitchPeriodInRange;
    if (*(a1 + 112))
    {
      if (a3)
      {
        v17 = PitchPeriodInRange;
        if (3 * HIDWORD(v19) < v19)
        {
          goto LABEL_29;
        }

        v17 = PitchPeriodInRange;
        if (3 * *(a1 + 116) >= 2 * HIDWORD(v19))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v17 = PitchPeriodInRange;
        if (*(a1 + 116) >= SHIDWORD(v19))
        {
          goto LABEL_29;
        }
      }

      v17 = *(a1 + 112);
    }
  }

LABEL_29:
  *(a1 + 112) = PitchPeriodInRange;
  *(a1 + 116) = v16;
  return v17;
}

uint64_t findPitchPeriodInRange(unsigned __int16 *a1, int a2, int a3, int *a4, int *a5)
{
  if (a2 <= a3)
  {
    v9 = 0;
    v10 = a2;
    v11 = a3 + 1;
    v12 = a2;
    result = 0xFFFFFFFFLL;
    v13 = 255;
    v6 = 1;
    do
    {
      if (v10 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v15 = v10;
        v16 = a1;
        do
        {
          v17 = *v16;
          v18 = v16[v12];
          ++v16;
          v19 = v18 - v17;
          v20 = v17 >= v18;
          v21 = v17 - v18;
          if (!v20)
          {
            v21 = v19;
          }

          v14 += v21;
          --v15;
        }

        while (v15);
      }

      if (result == -1 || v14 * result < v6 * v10)
      {
        result = v10;
        v6 = v14;
      }

      v22 = v14 * v13;
      if (v14 * v13 > v9 * v10)
      {
        v13 = v10;
      }

      if (v22 > v9 * v10)
      {
        v9 = v14;
      }

      ++v10;
      ++v12;
    }

    while (v11 != v10);
    v5 = v9 / v13;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    result = 0xFFFFFFFFLL;
  }

  *a4 = v6 / result;
  *a5 = v5;
  return result;
}

uint64_t downSampleInput(uint64_t result, __int16 *a2, int a3)
{
  v3 = *(result + 100) / a3;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 64) * a3;
    v6 = *(result + 24);
    do
    {
      if (v5 < 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v8 = v5;
        v9 = a2;
        do
        {
          v10 = *v9++;
          v7 += v10;
          --v8;
        }

        while (v8);
        a2 += (v5 - 1) + 1;
      }

      *v6++ = v7 / v5;
      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t enlargeOutputBufferIfNeeded(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 76);
  if (*(a2 + 84) + a3 <= v3)
  {
    return 1;
  }

  v5 = v3 + a3 + (v3 >> 1);
  *(a2 + 76) = v5;
  result = heap_Realloc(*(a1 + 8), *(a2 + 8), 2 * *(a2 + 64) * v5);
  *(a2 + 8) = result;
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t moveNewSamplesToPitchBuffer(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 88);
  v6 = *(a2 + 84) - a3;
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  if (v5 + v6 <= v8)
  {
    result = *(a2 + 16);
  }

  else
  {
    v9 = v8 + v6 + (v8 >> 1);
    *(a2 + 72) = v9;
    result = heap_Realloc(*(a1 + 8), *(a2 + 16), (2 * v7 * v9));
    *(a2 + 16) = result;
    if (!result)
    {
      return result;
    }

    v5 = *(a2 + 88);
  }

  cstdlib_memcpy((result + 2 * v5 * v7), (*(a2 + 8) + 2 * v7 * a3), (2 * v6 * v7));
  v11 = *(a2 + 88) + v6;
  *(a2 + 84) = a3;
  *(a2 + 88) = v11;
  return 1;
}

void **removePitchSamples(void **result, int a2)
{
  if (a2)
  {
    v3 = result;
    v4 = a2;
    v5 = *(result + 22) - a2;
    if (v5)
    {
      result = cstdlib_memmove(result[2], result[2] + 2 * *(result + 16) * a2, (2 * *(result + 16) * v5));
      v4 = *(v3 + 22);
    }

    *(v3 + 22) = v4 - a2;
  }

  return result;
}

uint64_t siren_compute_stream_hash(char *a1, unsigned int a2, char *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v7 = 32;
  cstdlib_memset(__b, 0, 0x10uLL);
  MD5Init(v10);
  MD5Update(v10, a1, a2);
  MD5Final(__b, v10);
  if (base64_encode(__b, 0x10u, __src, &v7))
  {
    __src[0] = 0;
  }

  else
  {
    __src[v7] = 0;
  }

  cstdlib_strcpy(a3, __src);
  return 0;
}

uint64_t siren_pipeline_Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = heap_Calloc(*(a1 + 8), 1, 112);
  v9 = v8;
  if (v8)
  {
    *v8 = a1;
    v8[12] = a2;
    v10 = heap_Calloc(*(a1 + 8), 1, 144);
    *(v9 + 16) = v10;
    if (!v10)
    {
      v12 = 10;
      goto LABEL_11;
    }

    *v10 = a1;
    *(v10 + 96) = 0;
    *(v10 + 104) = 0;
    *(v9 + 8) = a3;
    *(v9 + 56) = 0;
    *(v10 + 116) = 0;
    *(v10 + 124) = *(a3 + 9136);
    *(v10 + 132) = *(a3 + 9144);
    *(v9 + 44) = 0;
    *(v9 + 52) = 0;
    *(v9 + 104) = 0;
    *(v9 + 108) = *(a3 + 7399);
    if (*(a3 + 9116) || *(a3 + 9120) || *(a3 + 9128))
    {
      LODWORD(result) = feat_phone_Init(a3, v10);
      if (result)
      {
LABEL_8:
        v12 = result;
LABEL_11:
        siren_pipeline_DeInit(v9);
        v9 = 0;
        result = v12 | 0x84E02000;
        goto LABEL_12;
      }
    }

    else
    {
      LODWORD(result) = feat_phone_Init(a3, v10);
      if (result)
      {
        goto LABEL_8;
      }

      LODWORD(result) = infer_dur_init(*(v9 + 16), *(a3 + 8024));
      if (result)
      {
        goto LABEL_8;
      }

      LODWORD(result) = feat_frame_Init(a3 + 7992, a3 + 8008, *(v9 + 16));
      if (result)
      {
        goto LABEL_8;
      }
    }

    result = infer_acoustic_init(*(v9 + 16), *(a3 + 8040));
    if (result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = 2229280778;
  }

LABEL_12:
  *a4 = v9;
  return result;
}

uint64_t siren_pipeline_DeInit(uint64_t __b)
{
  if (__b)
  {
    v2 = *__b;
    v3 = *(__b + 16);
    if (v3)
    {
      if (v3[4])
      {
        feat_phone_Close(*(__b + 16));
      }

      if (v3[5])
      {
        feat_frame_Close(v3);
      }

      if (v3[6])
      {
        infer_dur_end(v3);
      }

      if (v3[7])
      {
        infer_acoustic_end(v3);
      }

      v4 = v3[12];
      if (v4)
      {
        heap_Free(*(v2 + 8), v4);
      }

      cstdlib_memset(v3, 0, 0x90uLL);
      heap_Free(*(v2 + 8), v3);
    }

    cstdlib_memset(__b, 0, 0x70uLL);
    heap_Free(*(v2 + 8), __b);
  }

  return 0;
}

uint64_t siren_pipeline_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 16);
  v14 = *(a1 + 52);
  if (v14 == 6 || v14 == 1)
  {
    *(a1 + 52) = 0;
    log_OutPublic(*(*a1 + 32), "SELECT_BET6", 72001, "%s%s", a5, a6, a7, a8, "warning");
    v14 = *(a1 + 52);
  }

  if (v14)
  {
    return 2229280785;
  }

  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = xmmword_26ED7E450;
  *a5 = 1;
  if (!*(*(a1 + 16) + 116))
  {
    return 0;
  }

  v17 = chunking_Init(v13, *(a1 + 8));
  if (v17)
  {
    return v17 | 0x84E02000;
  }

  else
  {
    return 0;
  }
}

uint64_t siren_pipeline_Process(uint64_t a1, int *a2, int *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = *(a1 + 8);
  v13 = v12[1140].i32[0];
  if (v12[1146].i32[0] < 2u)
  {
    if (v13 || v12[1141].i32[0])
    {
      goto LABEL_12;
    }

    if (v12[1139].i32[1])
    {
LABEL_20:

      return siren_pipeline_Process_seq2seq_ST(a1, a2, a3, a4);
    }

    v26 = *(a1 + 16);
    v27 = v12[1144].i32[0];
    v28 = v12[1144].i32[1];
    v29 = *(a1 + 52);
    if (v29 != 4 && v29 != 1)
    {
      v36 = 17;
      goto LABEL_69;
    }

    if (!*(a1 + 56))
    {
      goto LABEL_58;
    }

    v30 = feat_phone_Process(*(a1 + 16));
    if (!v30)
    {
      v47 = *(a1 + 96);
      if (v47 && *v47)
      {
        compstats_Start(*v47, v47[1], 3, v31, v32, v33, v34, v35);
      }

      v36 = infer_dur_process(v12, v26);
      v53 = *(a1 + 96);
      if (v53 && *v53)
      {
        compstats_Stop(*v53, v53[1], 3, v48, v49, v50, v51, v52);
      }

      if (v36)
      {
        goto LABEL_69;
      }

      siren_pipeline_loc_ForceFESilDur(a1);
      v30 = feat_frame_Process(v26);
      if (!v30)
      {
        if (!*(v26 + 116))
        {
          v54 = *(*(v26 + 48) + 24);
          goto LABEL_56;
        }

        v30 = chunking_Process(v12, v26, 0, 0);
        if (!v30)
        {
          v54 = *(*(v26 + 48) + 24) + (2 * *(*(v26 + 72) + 24) - 2) * v28;
LABEL_56:
          v56 = heap_Calloc(*(*a1 + 8), v54, 4 * v12[1150].u32[1]);
          *(a1 + 80) = v56;
          if (!v56)
          {
            v36 = 10;
            goto LABEL_69;
          }

          *(a1 + 56) = 0;
LABEL_58:
          v57 = *(a1 + 96);
          if (v57 && *v57)
          {
            compstats_Start(*v57, v57[1], 4, a4, a5, a6, a7, a8);
          }

          if (*(v26 + 116))
          {
            v58 = *(a1 + 60);
            v59 = *(*(v26 + 72) + 16);
            if (v58)
            {
              v60 = *(v59 + 4 * (v58 - 1)) + 1;
            }

            else
            {
              v60 = 0;
            }

            v69 = *(v59 + 4 * v58);
            if (v69 < v60)
            {
              v36 = 7;
              goto LABEL_69;
            }

            v108 = __PAIR64__(v28, v27);
            v70 = (v60 - v27) & ~((v60 - v27) >> 31);
            if (v69 + v27 >= *(*(v26 + 48) + 24))
            {
              v71 = *(v59 + 4 * v58);
            }

            else
            {
              v71 = v69 + v27;
            }

            v72 = v71 - v70 + 1;
            v30 = infer_acoustic_process_range(v26, v70, v72);
            if (!v30)
            {
              v73 = *(*(v26 + 56) + 24);
              if (v108)
              {
                v74 = v108 - HIDWORD(v108);
                if (v70 != v60)
                {
                  v73 += 4 * (v12[1150].i32[1] * v74);
                  v72 -= v74;
                }

                if (v71 == v69)
                {
                  v74 = 0;
                }

                v72 -= v74;
              }

              cstdlib_memcpy((*(a1 + 80) + 4 * (v12[1150].i32[1] * *(a1 + 28))), v73, 4 * v12[1150].i32[1] * v72);
              if (*(*(v26 + 8) + 10))
              {
                v75 = 0;
                v76 = 0;
                do
                {
                  v77 = v75 + 1;
                  if (v75 + 1 >= *(*(v26 + 8) + 10))
                  {
                    break;
                  }

                  v76 += *(*(*(v26 + 48) + 56) + 4 * v75++);
                }

                while (v76 <= v69);
              }

              else
              {
                v77 = 0;
              }

              v78 = *(a1 + 28) + v72;
              *(a1 + 24) = v77;
              *(a1 + 28) = v78;
              v79 = *(a1 + 60) + 1;
              *(a1 + 60) = v79;
              if (v79 == *(*(v26 + 72) + 24))
              {
                v68 = 5;
              }

              else
              {
                v68 = 4;
              }

              goto LABEL_89;
            }
          }

          else
          {
            v30 = infer_acoustic_process_range(v26, 0, *(*(v26 + 48) + 24));
            if (!v30)
            {
              v61 = *(v26 + 56);
              v62 = *(*(v26 + 48) + 24);
              *(a1 + 24) = *(*(v26 + 8) + 10);
              *(a1 + 28) = v62;
              cstdlib_memcpy(*(a1 + 80), *(v61 + 24), 4 * (v12[1150].i32[1] * v62));
              v68 = 5;
LABEL_89:
              *(a1 + 52) = v68;
              v80 = *(a1 + 96);
              if (v80 && *v80)
              {
                compstats_Stop(*v80, v80[1], 4, v63, v64, v65, v66, v67);
                v68 = *(a1 + 52);
              }

              result = 0;
              goto LABEL_124;
            }
          }
        }
      }
    }

    v36 = v30;
LABEL_69:
    *(a1 + 52) = 6;
    *a4 = 6;
    return v36 | 0x84E02000;
  }

  if (!v13 && !v12[1141].i32[0])
  {
    if (!v12[1139].i32[1])
    {
      v14 = *(a1 + 16);
      v15 = v12[1144].i32[0];
      v16 = v12[1144].i32[1];
      v17 = *(a1 + 52);
      if (v17 != 4 && v17 != 1)
      {
        v24 = 17;
        goto LABEL_130;
      }

      if (*(a1 + 56))
      {
        v18 = feat_phone_Process(*(a1 + 16));
        if (v18)
        {
          goto LABEL_9;
        }

        v37 = *(a1 + 96);
        if (v37 && *v37)
        {
          compstats_Start(*v37, v37[1], 3, v19, v20, v21, v22, v23);
        }

        v24 = infer_dur_process(v12, v14);
        v43 = *(a1 + 96);
        if (v43 && *v43)
        {
          compstats_Stop(*v43, v43[1], 3, v38, v39, v40, v41, v42);
        }

        if (v24)
        {
          goto LABEL_130;
        }

        siren_pipeline_loc_ForceFESilDur(a1);
        v18 = feat_frame_Process(v14);
        if (v18)
        {
          goto LABEL_9;
        }

        v44 = *(a1 + 16);
        if (v10 && a3)
        {
          if (*(a1 + 52) == 6 || (v45 = *(v44 + 48)) == 0)
          {
            v46 = 0;
          }

          else
          {
            v46 = *(v45 + 56);
          }

          v55 = *a3;
          if (*a3)
          {
            v55 = 0;
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v84 = v10 + 4;
            do
            {
              v85 = *(v84 - 4);
              *(v84 - 1) = v82;
              if (v85 == 33)
              {
                *v84 = *(v46 + 4 * v81++);
                v82 += *(v46 + 4 * v81);
              }

              else
              {
                *v84 = 0;
                if (v85 == 18)
                {
                  ++v55;
                }
              }

              ++v83;
              v84 += 8;
            }

            while (v83 < *a3);
          }

          *(v44 + 104) = v55;
        }

        else
        {
          v55 = *(v44 + 104);
        }

        if (a3 && v10 && v55)
        {
          v86 = heap_Calloc(*(*a1 + 8), v55, 4);
          *(v44 + 96) = v86;
          if (!v86)
          {
            v24 = -2065686518;
            goto LABEL_130;
          }

          v87 = *a3;
          if (*a3)
          {
            v88 = 0;
            v89 = 0;
            do
            {
              if (*v10 == 18)
              {
                *(v86 + 4 * v88++) = v10[3];
                v87 = *a3;
              }

              v10 += 8;
              ++v89;
            }

            while (v89 < v87);
          }
        }

        v18 = chunking_Process(v12, v14, 0, 0);
        if (v18)
        {
LABEL_9:
          v24 = v18;
LABEL_130:
          *(a1 + 52) = 6;
          *a4 = 6;
          return v24 | 0x84E02000;
        }

        v90 = heap_Calloc(*(*a1 + 8), *(v14[6] + 24) + (2 * *(v14[9] + 24) - 2) * v16, 4 * v12[1150].u32[1]);
        *(a1 + 80) = v90;
        calc_Max_Frame_Len(*(a1 + 16));
        if (!v90)
        {
          v24 = 10;
          goto LABEL_130;
        }

        *(a1 + 56) = 0;
      }

      v91 = *(a1 + 96);
      if (v91 && *v91)
      {
        compstats_Start(*v91, v91[1], 4, a4, a5, a6, a7, a8);
      }

      v92 = *(a1 + 104);
      v93 = v14[10];
      if (v92 == *v93)
      {
        result = 0;
        v68 = 5;
        *(a1 + 52) = 5;
LABEL_124:
        *a4 = v68;
        return result;
      }

      if (*(a1 + 28) > *(*(v93 + 16) + 4 * v92))
      {
LABEL_120:
        v94 = *(a1 + 96);
        if (v94)
        {
          if (*v94)
          {
            compstats_Stop(*v94, v94[1], 4, a4, a5, a6, a7, a8);
          }
        }

        result = 0;
        v68 = *(a1 + 52);
        goto LABEL_124;
      }

      v95 = *(a1 + 60);
      v96 = *(v14[9] + 16);
      if (v95)
      {
        v97 = *(v96 + 4 * (v95 - 1)) + 1;
      }

      else
      {
        v97 = 0;
      }

      v98 = *(v96 + 4 * v95);
      if (v98 < v97)
      {
        v24 = 7;
        goto LABEL_130;
      }

      v99 = (v97 - v15) & ~((v97 - v15) >> 31);
      v100 = v98 + v15;
      v109 = *(v14[6] + 24);
      if (v98 + v15 < v109)
      {
        v98 += v15;
      }

      v101 = v98 - v99 + 1;
      v18 = infer_acoustic_process_range(v14, (v97 - v15) & ~((v97 - v15) >> 31), v101);
      if (!v18)
      {
        v102 = *(v14[7] + 24);
        if (v15)
        {
          if (v99 != v97)
          {
            v102 += 4 * (v12[1150].i32[1] * v15);
            v101 -= v15;
          }

          if (v100 >= v109)
          {
            v103 = 0;
          }

          else
          {
            v103 = v15;
          }

          v101 -= v103;
        }

        cstdlib_memcpy((*(a1 + 80) + 4 * (v12[1150].i32[1] * *(a1 + 28))), v102, 4 * v12[1150].i32[1] * v101);
        v104 = *(v14[1] + 10);
        if (*(v14[1] + 10))
        {
          v105 = 0;
          v106 = 0;
          while (v106 <= *(*(v14[10] + 16) + 4 * *(a1 + 104)))
          {
            v106 += *(*(v14[6] + 56) + 4 * v105++);
            if (v104 == v105)
            {
              goto LABEL_149;
            }
          }

          LODWORD(v104) = v105;
        }

LABEL_149:
        v107 = *(a1 + 28) + v101;
        *(a1 + 24) = v104;
        *(a1 + 28) = v107;
        ++*(a1 + 60);
        *(a1 + 52) = 4;
        goto LABEL_120;
      }

      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_12:
  if (v12[1141].i32[1])
  {

    return siren_pipeline_Process_seq2seq_stream_ST(a1, a2, a3, a4);
  }

  else
  {

    return siren_pipeline_Process_seq2seq_frame_ST(a1, a2, a3, a4);
  }
}

uint64_t siren_pipeline_Process_seq2seq_stream_ST(uint64_t a1, int *a2, unsigned int *a3, _DWORD *a4)
{
  v119 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 52);
  if (v6 == 6 || (v7 = *(a1 + 8), v8 = *(a1 + 16), v9 = *(*(v8 + 8) + 10), __src = 0, (v6 - 5) < 0xFFFFFFFC))
  {
    v10 = 17;
LABEL_4:
    *(a1 + 52) = 6;
    *a4 = 6;
    return v10 | 0x84E02000;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_31;
  }

  v14 = feat_phone_Process(v8);
  if (v14)
  {
LABEL_17:
    v10 = v14;
    goto LABEL_4;
  }

  *(a1 + 44) = 0;
  paramc_ParamGetStr(*(*a1 + 40), "styleset", &__src);
  if (__src)
  {
    cstdlib_strcpy(__dst, __src);
    v15 = *a3;
    if (v15)
    {
      v16 = 0;
      v17 = a2[3];
      v18 = a2;
      do
      {
        if (v18[3] > v17)
        {
          break;
        }

        if (*v18 == 60)
        {
          seq2seq_select_speaker(a1, v18, __src, __dst);
          v15 = *a3;
        }

        v18 += 8;
        ++v16;
      }

      while (v16 < v15);
    }
  }

  if (*(v8 + 116))
  {
LABEL_15:
    v14 = chunking_Process(v7, v8, a2, a3);
    if (!v14)
    {
      v14 = chunking_markers(*a1, v8, a2, a3);
      if (!v14)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_17;
  }

  v19 = *a3;
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = 0;
  v21 = a2;
  while (*v21 != 21)
  {
LABEL_23:
    ++v20;
    v21 += 8;
    if (v20 >= v19)
    {
      goto LABEL_26;
    }
  }

  if (cstdlib_strcmp(*(v21 + 3), "spell"))
  {
    v19 = *a3;
    goto LABEL_23;
  }

  *(v8 + 116) = 1;
  chunking_Init(v8, *(a1 + 8));
LABEL_26:
  if (*(v8 + 116))
  {
    goto LABEL_15;
  }

LABEL_27:
  if (*(v8 + 120))
  {
    *(a1 + 48) = (*(*(a1 + 8) + 9176) * *(*(a1 + 8) + 9180)) / 0xA;
  }

  v22 = heap_Alloc(*(*a1 + 8), 4 * *(v7 + 9136) * v9 * *(v7 + 9204));
  *(a1 + 80) = v22;
  if (!v22)
  {
    v10 = 10;
    goto LABEL_4;
  }

  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(v7 + 9136) * v9;
  *(a1 + 56) = 0;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
LABEL_31:
  v23 = *(v8 + 72);
  v24 = *(v8 + 88);
  if (*(v8 + 116))
  {
    v25 = *(v8 + 64);
    v26 = *(a1 + 60);
    v27 = *(v25 + 48) - 1;
    v28 = v26 != v27;
    if (v26)
    {
      v29 = *(v25 + 16);
      v30 = *(v29 + 4 * (v26 - 1));
      v31 = v30 + 1;
      v32 = *(v29 + 4 * v26) - (v26 == v27);
      if (v32 == v30)
      {
        v33 = v30 + 1;
      }

      else
      {
        v33 = v32;
      }

      if (v33 < v31)
      {
        v10 = 7;
        goto LABEL_85;
      }

      v36 = *(v24 + 8);
      v113 = *(v36 + 4 * (v26 - 1)) + 1;
    }

    else
    {
      v113 = 0;
      v31 = 0;
      v26 = 0;
      v35 = (__PAIR64__(**(v25 + 16), v27) - 1) >> 32;
      if (v35 == -1)
      {
        v33 = 0;
      }

      else
      {
        v33 = v35;
      }

      v36 = *(v24 + 8);
    }

    v111 = *(v36 + 4 * v26);
    v34 = v33 - v31 + 1;
  }

  else
  {
    v28 = 0;
    if (v9 <= 2)
    {
      v34 = 1;
    }

    else
    {
      v34 = v9 - 2;
    }

    v111 = *a3 - 1;
    v113 = 0;
    v31 = 1;
    v33 = v34;
  }

  v115 = *(v8 + 72);
  if ((*(a1 + 52) & 0xFFFFFFFE) != 2)
  {
    v41 = v33;
    v42 = heap_Alloc(*(*a1 + 8), 40);
    *(a1 + 72) = v42;
    if (!v42 || (*(v42 + 8) = 200002, v43 = heap_Alloc(*(*a1 + 8), 800008), (**(a1 + 72) = v43) == 0) || (v44 = heap_Alloc(*(*a1 + 8), 4), v45 = *(a1 + 72), (*(v45 + 32) = v44) == 0) || (*(v45 + 16) = *(a1 + 44), v33 = v41, v23 = v115, *(v8 + 120)) && ((*(a1 + 64) = 0, *(v115 + 24) = 0, v107 = ((*(v8 + 124) * v34) / *(a1 + 48) + 10), v46 = heap_Calloc(*(*a1 + 8), v107, 4), (*(v115 + 16) = v46) == 0) || (v47 = heap_Calloc(*(*a1 + 8), v107, 4), v23 = v115, *(v24 + 16) = v47, v33 = v41, !v47)))
    {
LABEL_84:
      v10 = 10;
      goto LABEL_85;
    }
  }

  v37 = *(v8 + 120);
  v110 = v28;
  v109 = v33;
  if (!v37)
  {
    v39 = 0;
    v48 = (a1 + 72);
    *(*(a1 + 72) + 20) = 0;
    goto LABEL_66;
  }

  v38 = *(a1 + 64);
  if (v38 == 1)
  {
    v39 = **(v23 + 16) + 1;
    v49 = v39 + (v39 * *(v7 + 9160));
LABEL_63:
    v40 = (v49 + -1.0);
    goto LABEL_64;
  }

  if (v38)
  {
    v50 = *(v23 + 16);
    v39 = *(v50 + 4 * (v38 - 1)) + 1;
    v49 = v39 + ((v39 - *(v50 + 4 * (v38 - 2))) * *(v7 + 9160));
    goto LABEL_63;
  }

  v39 = 0;
  v40 = *(a1 + 48);
LABEL_64:
  v48 = (a1 + 72);
  v51 = *(a1 + 72);
  *(v51 + 20) = v37 == 1;
  if (v37 == 1)
  {
    *(v51 + 24) = v38 == 0;
    **(v51 + 32) = 0;
    *(v51 + 28) = v40 - v39 + 1;
  }

LABEL_66:
  updated = fi_net_update_param(**(v8 + 56));
  if (updated || (updated = infer_acoustic_seq2seq_process_range_stream(v8, v31, v34)) != 0)
  {
    v10 = updated;
    goto LABEL_85;
  }

  v53 = *(*(v8 + 56) + 40) >> 2;
  v54 = *(v7 + 9204);
  v55 = v53 / v54;
  v56 = v53 / v54 + v39;
  v57 = v56 - 1;
  v58 = ***v48;
  if (*(v8 + 120))
  {
    v59 = (*v48)[4];
    if (v58 > 0x9C3)
    {
      v60 = 1;
    }

    else
    {
      v60 = *v59;
    }

    *v59 = v60;
    *(*(v115 + 16) + 4 * *(a1 + 64)) = v57;
    ++*(v115 + 24);
    if (*(a1 + 64))
    {
      v39 -= 2;
    }

    v61 = v56 - 3;
    if (*v59 != 1)
    {
      v57 = v61;
    }
  }

  v62 = *(a1 + 28);
  v63 = *(a1 + 40);
  v106 = v58;
  v108 = v54;
  if (v55 > v63 - v62)
  {
    do
    {
      v63 *= 2;
    }

    while (v55 > v63 - v62);
    *(a1 + 40) = v63;
  }

  v64 = heap_Realloc(*(*a1 + 8), *(a1 + 80), 4 * (*(v7 + 9204) * v63));
  *(a1 + 80) = v64;
  if (!v64)
  {
    goto LABEL_84;
  }

  if (v110)
  {
    v65 = *v48;
    LOBYTE(v66) = *(*v48)[4] == 1;
    v68 = v111;
    v67 = v113;
    goto LABEL_94;
  }

  v65 = *v48;
  v68 = v111;
  v67 = v113;
  if (*(v8 + 120))
  {
    v66 = *v65[4];
    if (v66 == 1)
    {
      v69 = 1;
    }

    else
    {
      LOBYTE(v66) = 0;
LABEL_94:
      v69 = 0;
    }
  }

  else
  {
    v69 = 1;
    LOBYTE(v66) = 1;
  }

  v70 = v67;
  v71 = &a2[8 * v67];
  v72 = v68 - v67 + 1;
  v73 = *(a1 + 8);
  v74 = *(a1 + 16);
  v75 = *(v74 + 88);
  v114 = v75;
  v116 = v74;
  v105 = v53;
  if (*(v74 + 120) && (v76 = *(a1 + 64)) != 0)
  {
    v77 = *(*(v75 + 16) + 4 * (v76 - 1));
    v78 = *(v73 + 9188);
    v79 = (v77 + 1);
    if (v77 == -1)
    {
      LODWORD(v79) = 0;
      v80 = 0;
    }

    else
    {
      v80 = 0;
      v81 = v71;
      v82 = v79;
      do
      {
        v83 = *v81;
        v81 += 8;
        if (v83 == 33)
        {
          ++v80;
        }

        --v82;
      }

      while (v82);
    }
  }

  else
  {
    LODWORD(v79) = 0;
    v80 = 0;
    v78 = *(v73 + 9188);
  }

  v112 = *(a1 + 32);
  v104 = *(v7 + 9188);
  v84 = v79;
  LODWORD(v85) = v79;
  if (v79 < v72)
  {
    v103 = v79;
    v86 = 0;
    v87 = (*v65 + 1);
    v85 = v79;
    do
    {
      v88 = v71 + 32 * v85;
      if (*v88 == 33)
      {
        ++v80;
        *(v88 + 12) = v39 * v78;
        if (v39 <= v57)
        {
          v89 = 0;
          do
          {
            if (*(v87 + 4 * v39) > v80)
            {
              break;
            }

            v89 += v78;
            *(v88 + 16) = v89;
            ++v39;
          }

          while (v39 <= v57);
        }

        else
        {
          v89 = 0;
        }

        if (v85 > v84 && *(v88 + 24) == 35)
        {
          v90 = &a2[8 * v70 + 3 + 8 * v84];
          v91 = v86;
          do
          {
            v92 = *(v90 - 3);
            v93 = v92 > 0x28;
            v94 = (1 << v92) & 0x10004000100;
            v95 = v93 || v94 == 0;
            if (!v95 && *v90 == *(v88 + 12))
            {
              *v90 += v89;
            }

            v90 += 8;
            --v91;
          }

          while (v91);
        }
      }

      else
      {
        *(v88 + 12) = v39 * v78;
      }

      ++v85;
      if (v80 <= v109)
      {
        v96 = v66;
      }

      else
      {
        v96 = 0;
      }

      if (v85 >= v72)
      {
        break;
      }

      ++v86;
    }

    while (v96 & 1 | v69 & 1 | (v39 <= v57));
    LODWORD(v79) = v103;
  }

  v97 = v79;
  bubble_sort_markers(v71, v79, v85);
  if (v85 - 1 - v97 != -1)
  {
    v98 = &a2[8 * v84 + 3 + 8 * v70];
    v99 = v85 - v97;
    do
    {
      *v98 += v112 + v104 * (v55 - v106);
      v98 += 8;
      --v99;
    }

    while (v99);
  }

  if (*(v116 + 120))
  {
    *(*(v114 + 16) + 4 * *(a1 + 64)) = v85 - 1;
  }

  if (v108 <= v105)
  {
    cstdlib_memcpy((*(a1 + 80) + 4 * (*(v7 + 9204) * *(a1 + 28))), *(*(v8 + 56) + 24), 4 * *(v7 + 9204) * v55);
    v100 = *(a1 + 32) + *(v7 + 9188) * v55;
    *(a1 + 28) += v55;
    *(a1 + 32) = v100;
  }

  if (*(v8 + 120) && (v101 = *(a1 + 64), *(a1 + 64) = v101 + 1, !**(*(a1 + 72) + 32)))
  {
    if (v101)
    {
      v102 = 3;
    }

    else
    {
      v102 = 2;
    }
  }

  else
  {
    ++*(a1 + 60);
    if (v110)
    {
      v102 = 4;
    }

    else
    {
      v102 = 5;
    }
  }

  v10 = 0;
  *(a1 + 52) = v102;
LABEL_85:
  if ((*(a1 + 52) & 0xFFFFFFFE) == 4)
  {
    seq2seq_stream_free_NNState(a1);
  }

  if (v10)
  {
    goto LABEL_4;
  }

  result = 0;
  *a4 = *(a1 + 52);
  return result;
}

uint64_t siren_pipeline_Process_seq2seq_frame_ST(uint64_t a1, int *a2, unsigned int *a3, int *a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v69 = 1;
  __src = 0;
  v6 = *(a1 + 52);
  if (v6 == 6 || (v6 - 1) > 3)
  {
    v18 = 0;
    v17 = 17;
LABEL_17:
    *a4 = v6;
    goto LABEL_18;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = *(*(v9 + 8) + 10);
  if (!*(a1 + 56))
  {
    goto LABEL_38;
  }

  v12 = feat_phone_Process(*(a1 + 16));
  if (v12)
  {
    goto LABEL_15;
  }

  *(a1 + 44) = 0;
  paramc_ParamGetStr(*(*a1 + 40), "styleset", &__src);
  if (__src)
  {
    cstdlib_strcpy(__dst, __src);
    v13 = *a3;
    if (v13)
    {
      v14 = 0;
      v15 = a2[3];
      v16 = a2;
      do
      {
        if (v16[3] > v15)
        {
          break;
        }

        if (*v16 == 60)
        {
          seq2seq_select_speaker(a1, v16, __src, __dst);
          v13 = *a3;
        }

        v16 += 8;
        ++v14;
      }

      while (v14 < v13);
    }
  }

  if (*(v9 + 116))
  {
LABEL_13:
    v12 = chunking_Process(v10, v9, a2, a3);
    if (!v12)
    {
      v12 = chunking_markers(*a1, v9, a2, a3);
      if (!v12)
      {
        goto LABEL_34;
      }
    }

LABEL_15:
    v17 = v12;
    goto LABEL_23;
  }

  v20 = *a3;
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = 0;
  v22 = a2;
  while (*v22 != 21)
  {
LABEL_30:
    ++v21;
    v22 += 8;
    if (v21 >= v20)
    {
      goto LABEL_33;
    }
  }

  if (cstdlib_strcmp(*(v22 + 3), "spell"))
  {
    v20 = *a3;
    goto LABEL_30;
  }

  *(v9 + 116) = 1;
  chunking_Init(v9, *(a1 + 8));
LABEL_33:
  if (*(v9 + 116))
  {
    goto LABEL_13;
  }

LABEL_34:
  if (*(*(a1 + 16) + 120))
  {
    *(a1 + 48) = (*(*(a1 + 8) + 9176) * *(*(a1 + 8) + 9180)) / 0xA;
  }

  v23 = heap_Alloc(*(*a1 + 8), 4 * (v10[1142].i32[0] * v11 * v10[1150].i32[1]));
  *(a1 + 80) = v23;
  if (!v23)
  {
    goto LABEL_47;
  }

  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10[1142].i32[0] * v11;
  *(a1 + 56) = 0;
LABEL_38:
  v24 = heap_Calloc(*(*a1 + 8), 1, 16);
  if (!v24)
  {
LABEL_47:
    v17 = 10;
    goto LABEL_23;
  }

  v18 = v24;
  v25 = heap_Alloc(*(*a1 + 8), 800008);
  if (!v25)
  {
LABEL_52:
    v17 = 10;
    goto LABEL_19;
  }

  *(v18 + 8) = 200002;
  *v18 = v25;
  fi_net_give_address(**(v9 + 56));
  if (!*(v9 + 116))
  {
    v33 = *a3;
    v69 = 1;
    v34 = infer_acoustic_seq2seq_process_range_FrameInfer(a1 + 44, v9, 1, v11 - 2);
    if (v34 || (v35 = *(*(v9 + 56) + 40), v36 = v10[1150].u32[1], (v34 = calc_Marker_Pos_seq2seq_notrim(a1, v10, a2, v33, **v18, *(*v18 + 4), *v18 + 8)) != 0))
    {
LABEL_64:
      v17 = v34;
      goto LABEL_19;
    }

    v37 = (v35 >> 2) / v36;
    *(a1 + 24) = *(*(v9 + 8) + 10);
    if (v37 <= *(a1 + 40))
    {
      v38 = *(a1 + 80);
    }

    else
    {
      *(a1 + 40) = v37;
      v38 = heap_Realloc(*(*a1 + 8), *(a1 + 80), 4 * v10[1150].i32[1] * v37);
      *(a1 + 80) = v38;
      if (!v38)
      {
        goto LABEL_52;
      }
    }

    cstdlib_memcpy(v38, *(*(v9 + 56) + 24), 4 * v10[1150].i32[1] * v37);
    *(a1 + 28) = v37;
    v6 = 5;
LABEL_84:
    v17 = 0;
    *(a1 + 52) = v6;
    goto LABEL_17;
  }

  if ((*(a1 + 52) & 0xFFFFFFFE) == 2)
  {
    v26 = 0;
    goto LABEL_43;
  }

  v39 = *(a1 + 60);
  v40 = *(v9 + 64);
  v41 = *(v40 + 48) - 1;
  v69 = v39 == v41;
  v42 = *(v40 + 16);
  if (v39)
  {
    v43 = *(v42 + 4 * (v39 - 1)) + 1;
  }

  else
  {
    v43 = 0;
  }

  v45 = *(v42 + 4 * v39) - (v39 == v41);
  v46 = *(*(v9 + 88) + 8);
  if (v39)
  {
    v47 = *(v46 + 4 * (v39 - 1)) + 1;
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v46 + 4 * v39);
  if (v45 == v43 - 1)
  {
LABEL_61:
    v45 = v43;
    goto LABEL_62;
  }

  if (v45 >= v43)
  {
    if (v45 == v43)
    {
      goto LABEL_61;
    }

    v53 = *(v9 + 32);
    v55 = *v53;
    v54 = v53[1];
    v56 = *(v55 + 12);
    if (*(v54 + 4 * (v56 * v43 + 1)) == 1.0)
    {
      ++v43;
      *(*(v40 + 40) + 2 * v39) = 200;
    }

    if (*(v54 + 4 * (v56 * v45 + 1)) == 1.0)
    {
      --v45;
      *(*(v40 + 32) + 2 * v39) = 200;
    }

LABEL_62:
    v34 = infer_acoustic_seq2seq_process_range_FrameInfer(a1 + 44, v9, v43, v45 - v43 + 1);
    if (v34)
    {
      goto LABEL_64;
    }

    v49 = *(*(v9 + 56) + 40);
    v67 = v10[1150].u32[1];
    v50 = &a2[8 * v47];
    v51 = v48 - v47;
    v52 = v48 - v47 + 1;
    v34 = calc_Marker_Pos_seq2seq_notrim(a1, v10, v50, v51 + 1, **v18, *(*v18 + 4), *v18 + 8);
    if (v34)
    {
      goto LABEL_64;
    }

    v60 = v50;
    v26 = (v49 >> 2) / v67;
    v61 = *(a1 + 28);
    v62 = *(a1 + 40);
    if (v26 > v62 - v61)
    {
      do
      {
        v62 *= 2;
      }

      while (v26 > v62 - v61);
      *(a1 + 40) = v62;
    }

    v63 = heap_Realloc(*(*a1 + 8), *(a1 + 80), 4 * (v10[1150].i32[1] * v62));
    *(a1 + 80) = v63;
    if (!v63)
    {
      v17 = 10;
LABEL_18:
      if (v18)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    if (*(v9 + 120))
    {
      *(a1 + 64) = 0;
      v64 = chunking_frames(a1, *a1, v10, v26, v9);
      if (v64 || (v64 = chunking_secondary_markers(*a1, v10, v9, v60, v52, &v69)) != 0)
      {
        v17 = v64;
        goto LABEL_18;
      }
    }

    if (v52)
    {
      v65 = *(a1 + 32);
      v66 = (v60 + 12);
      do
      {
        *v66 += v65;
        v66 += 8;
        --v52;
      }

      while (v52);
    }

LABEL_43:
    if (*(v9 + 120))
    {
      v27 = *(a1 + 64);
      v28 = *(v9 + 72);
      v29 = *(v28 + 24);
      if (v27 <= v29)
      {
        v30 = *(v28 + 16);
        if (v27)
        {
          v31 = *(v30 + 4 * v27 - 4) + 3;
          v32 = *(a1 + 64);
        }

        else
        {
          v32 = 0;
          v31 = 0;
        }

        v57 = *(v30 + 4 * v32) - v31;
        if (v27 == v29 - 1)
        {
          v58 = v57 + 1;
        }

        else
        {
          v58 = v57 + 3;
        }

        cstdlib_memcpy((*(a1 + 80) + 4 * (v10[1150].i32[1] * *(a1 + 28))), (*(*(v9 + 56) + 24) + 4 * (v10[1150].i32[1] * v31)), 4 * (v10[1150].i32[1] * v58));
        LODWORD(v27) = *(a1 + 32) + v10[1148].i32[1] * v58;
        *(a1 + 28) += v58;
        *(a1 + 32) = v27;
        LODWORD(v27) = *(a1 + 64);
        v29 = *(*(v9 + 72) + 24);
      }

      *(a1 + 64) = v27 + 1;
      if (v27 + 1 < v29)
      {
        if (v27)
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        goto LABEL_84;
      }
    }

    else
    {
      cstdlib_memcpy((*(a1 + 80) + 4 * (v10[1150].i32[1] * *(a1 + 28))), *(*(v9 + 56) + 24), 4 * v10[1150].i32[1] * v26);
      v44 = *(a1 + 32) + v10[1148].i32[1] * v26;
      *(a1 + 28) += v26;
      *(a1 + 32) = v44;
    }

    v59 = *(a1 + 60) + 1;
    *(a1 + 60) = v59;
    if (v59 == *(*(v9 + 64) + 48))
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    goto LABEL_84;
  }

  v17 = 7;
LABEL_19:
  if (*v18)
  {
    heap_Free(*(*a1 + 8), *v18);
  }

  heap_Free(*(*a1 + 8), v18);
LABEL_22:
  if (!v17)
  {
    return 0;
  }

LABEL_23:
  *(a1 + 52) = 6;
  *a4 = 6;
  return v17 | 0x84E02000;
}

uint64_t siren_pipeline_Process_seq2seq_ST(uint64_t a1, int *a2, int *a3, int *a4)
{
  v116 = 0;
  v6 = *(a1 + 52);
  if (v6 == 6 || (v6 != 4 ? (v7 = v6 == 1) : (v7 = 1), !v7))
  {
    v15 = 0;
    v14 = 17;
    goto LABEL_11;
  }

  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *(*(v10 + 8) + 10);
  if (*(a1 + 56))
  {
    v13 = feat_phone_Process(*(a1 + 16));
    if (v13)
    {
      goto LABEL_9;
    }

    *(a1 + 44) = 0;
    paramc_ParamGetStr(*(*a1 + 40), "styleset", &v116);
    if (v116)
    {
      cstdlib_strcpy(0, v116);
      v17 = *a3;
      if (v17)
      {
        v18 = 0;
        v19 = a2[3];
        v20 = a2;
        do
        {
          if (v20[3] > v19)
          {
            break;
          }

          if (*v20 == 60)
          {
            seq2seq_select_speaker(a1, v20, v116, 0);
            v17 = *a3;
          }

          v20 += 8;
          ++v18;
        }

        while (v18 < v17);
      }
    }

    if (*(v10 + 116))
    {
      v13 = chunking_Process(v11, v10, 0, 0);
      if (v13 || (v13 = chunking_markers(*a1, v10, a2, a3)) != 0)
      {
LABEL_9:
        v14 = v13;
        goto LABEL_17;
      }
    }

    v21 = heap_Alloc(*(*a1 + 8), 2 * (v11[1142].i32[0] * v12 * *(*(a1 + 8) + 9188)));
    *(a1 + 88) = v21;
    if (!v21)
    {
      goto LABEL_36;
    }

    *(a1 + 32) = 0;
    *(a1 + 36) = v11[1142].i32[0] * v12 * *(*(a1 + 8) + 9188);
    *(a1 + 56) = 0;
  }

  v22 = heap_Alloc(*(*a1 + 8), 16);
  if (!v22)
  {
LABEL_36:
    v14 = 10;
    goto LABEL_17;
  }

  v15 = v22;
  v23 = heap_Alloc(*(*a1 + 8), 800008);
  *v15 = v23;
  if (!v23)
  {
    v14 = 10;
    goto LABEL_15;
  }

  *(v15 + 8) = 200002;
  fi_net_give_address(**(v10 + 56));
  if (*(v10 + 116))
  {
    v117 = 0;
    v24 = *(a1 + 60);
    v25 = *(v10 + 64);
    v26 = *(v25 + 48) - 1;
    v27 = *(v25 + 16);
    if (v24)
    {
      v28 = *(v27 + 4 * (v24 - 1)) + 1;
    }

    else
    {
      v28 = 1;
    }

    v33 = *(v27 + 4 * v24) - (v24 == v26);
    v34 = *(*(v10 + 88) + 8);
    if (v24)
    {
      v35 = *(v34 + 4 * (v24 - 1)) + 1;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v34 + 4 * v24);
    v37 = v28;
    if (v33 != v28 - 1)
    {
      v37 = v33;
      if (v33 < v28)
      {
        v14 = 7;
        goto LABEL_12;
      }
    }

    v38 = *(v10 + 32);
    v40 = *v38;
    v39 = v38[1];
    v41 = *(v40 + 12);
    if (*(v39 + 4 * (v41 * v28 + 1)) == 1.0)
    {
      ++v28;
      *(*(v25 + 40) + 2 * v24) = 200;
    }

    v110 = v24;
    v108 = v26;
    v114 = v35;
    v112 = v36;
    if (*(v39 + 4 * (v41 * v37 + 1)) == 1.0)
    {
      --v37;
      *(*(v25 + 32) + 2 * v24) = 200;
    }

    v42 = infer_acoustic_seq2seq_process_range(a1 + 44, v10, v28, v37 - v28 + 1);
    if (v42 || (v104 = v28, v105 = *(*(v10 + 56) + 44), v106 = v37, v43 = v112 - v114 + 1, (v42 = calc_Marker_Pos_seq2seq(a1, v11, &a2[8 * v114], v43, **v15, *(*v15 + 4), *v15 + 8, &v117 + 1, &v117)) != 0))
    {
      v14 = v42;
      goto LABEL_12;
    }

    if (v112 - v114 != -1)
    {
      v44 = *(a1 + 32);
      v45 = &a2[8 * v114 + 3];
      do
      {
        *v45 += v44;
        v45 += 8;
        --v43;
      }

      while (v43);
    }

    v46 = v105 >> 1;
    if (*(a1 + 60))
    {
      v47 = *(v10 + 56);
      v48 = *(v47 + 44);
      if (v48 >= 2)
      {
        v56 = 0;
        v57 = *(v47 + 32);
        v49 = v48 >> 1;
        v58 = v11[1142].i32[1];
        while (1)
        {
          v59 = *(v57 + 2 * v56);
          v60 = v59 < -v58 || v58 < v59;
          if (v60)
          {
            break;
          }

          if (v49 == ++v56)
          {
            goto LABEL_75;
          }
        }

        LODWORD(v49) = v56;
      }

      else
      {
        LODWORD(v49) = 0;
      }

LABEL_75:
      v55 = v11[1142].i32[0] * v11[1148].i32[1] * (v49 / v11[1148].i32[1] / v11[1142].i32[0]);
      v46 -= v55;
    }

    else
    {
      v55 = 0;
    }

    v62 = *(a1 + 32);
    v61 = *(a1 + 36);
    if (v46 > v61 - v62)
    {
      do
      {
        v61 *= 2;
      }

      while (v46 > v61 - v62);
      *(a1 + 36) = v61;
    }

    v63 = heap_Realloc(*(*a1 + 8), *(a1 + 88), 2 * v61);
    *(a1 + 88) = v63;
    if (!v63)
    {
      v14 = 10;
      goto LABEL_12;
    }

    v54 = v110 == v108;
    cstdlib_memcpy((v63 + 2 * *(a1 + 32)), (*(*(v10 + 56) + 32) + 2 * v55), 2 * v46);
    v50 = *(a1 + 32) + v46;
    *(a1 + 32) = v50;
    v64 = *(a1 + 60) + 1;
    *(a1 + 60) = v64;
    if (v64 == *(*(v10 + 64) + 48))
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    *(a1 + 52) = v6;
    v53 = v104;
  }

  else
  {
    v117 = 0;
    v29 = v12 - 2;
    v30 = *a3;
    v31 = infer_acoustic_seq2seq_process_range(a1 + 44, v10, 1, v29);
    if (v31 || (v106 = v29, v32 = *(*(v10 + 56) + 44), (v31 = calc_Marker_Pos_seq2seq(a1, v11, a2, v30, **v15, *(*v15 + 4), *v15 + 8, &v117 + 1, &v117)) != 0))
    {
      v14 = v31;
      goto LABEL_13;
    }

    v50 = v32 >> 1;
    *(a1 + 24) = *(*(v10 + 8) + 10);
    if (v32 >> 1 <= *(a1 + 36))
    {
      v52 = *(a1 + 88);
      v51 = v32 & 0xFFFFFFFE;
    }

    else
    {
      *(a1 + 36) = v50;
      v51 = v32 & 0xFFFFFFFE;
      v52 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v51);
      *(a1 + 88) = v52;
      if (!v52)
      {
        v14 = 10;
        goto LABEL_13;
      }
    }

    cstdlib_memcpy(v52, *(*(v10 + 56) + 32), v51);
    *(a1 + 32) = v50;
    v6 = 5;
    *(a1 + 52) = 5;
    v53 = 1;
    v54 = 1;
  }

  v65 = v54 + v106;
  v66 = *(a1 + 8);
  if (v50)
  {
    v67 = 0;
    v68 = v66[2285];
    while (1)
    {
      v69 = *(*(a1 + 88) + 2 * v67);
      if (v69 < -v68 || v68 < v69)
      {
        break;
      }

      if (v50 == ++v67)
      {
        LODWORD(v67) = v50;
        break;
      }
    }
  }

  else
  {
    LODWORD(v67) = 0;
  }

  if (v53 > v65)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v101 = 0;
  v71 = *a3;
  v72 = *(*(a1 + 16) + 8);
  v73 = v66[2284] * v66[2297] * (v67 / v66[2297] / v66[2284]);
  v74 = v53;
  v75 = v65 + 1;
  v100 = v71 - 1;
  v99 = &a2[8 * v71 - 5];
  v102 = a2 + 4;
  v111 = *(a1 + 8);
  v113 = a2;
  v107 = v72;
  v109 = v71;
  v103 = v65 + 1;
  do
  {
    if (*(a1 + 108) != *(*(v72 + 32) + v74))
    {
      goto LABEL_125;
    }

    v76 = *(*(v72 + 1784) + 2 * v74);
    if (!*(*(v72 + 1784) + 2 * v74))
    {
      goto LABEL_125;
    }

    v77 = v66[4];
    v115 = v74;
    if (!v71)
    {
LABEL_104:
      v81 = 0;
      goto LABEL_105;
    }

    v78 = v71;
    v79 = a2;
    v80 = v74;
    while (*v79 != 33)
    {
LABEL_103:
      v79 += 8;
      if (!--v78)
      {
        goto LABEL_104;
      }
    }

    if (v80)
    {
      --v80;
      goto LABEL_103;
    }

    v92 = v79[3];
    if (v92 >= v50)
    {
      v81 = v50;
    }

    else
    {
      v81 = v92;
    }

    if (v71 >= 1 && v92 > v50)
    {
      v93 = v99;
      v94 = v100;
      v95 = *v99;
      v96 = v71;
      v97 = v101;
      if (*v99 <= v50)
      {
LABEL_136:
        v101 = v97;
        a2[8 * v94 + 4] += v50 - v97;
      }

      else
      {
        while (1)
        {
          v97 = v95;
          *v93 = v50;
          v93[1] = 0;
          v60 = v96-- <= 1;
          if (v60)
          {
            break;
          }

          v98 = *(v93 - 8);
          v93 -= 8;
          v95 = v98;
          if (v98 <= v50)
          {
            v94 = v96 - 1;
            goto LABEL_136;
          }
        }

        v101 = v95;
      }

      v81 = v50;
    }

LABEL_105:
    v82 = v77 * v76 / 0x3E8u;
    v83 = *(a1 + 36);
    if (v83 < v82 + v50)
    {
      do
      {
        v83 *= 2;
      }

      while (v83 < v82 + v50);
      *(a1 + 36) = v83;
    }

    v84 = heap_Realloc(*(*a1 + 8), *(a1 + 88), 2 * v83);
    *(a1 + 88) = v84;
    cstdlib_memmove(&v84[2 * v81 + 2 * v82], &v84[2 * v81], 2 * (*(a1 + 32) - v81));
    v85 = v82;
    v86 = v81;
    if (v73 - 1 < v82)
    {
      v86 = v81;
      v85 = v82;
      do
      {
        cstdlib_memcpy(&v84[2 * v86], v84, 2 * v73);
        v86 += v73;
        v85 -= v73;
      }

      while (v85 >= v73);
    }

    if (v85)
    {
      v87 = 2 * v85;
      v88 = &v84[2 * v86];
      if (v85 >= v73)
      {
        cstdlib_memset(v88, 0, v87);
      }

      else
      {
        cstdlib_memcpy(v88, v84, v87);
      }
    }

    v50 = *(a1 + 32) + v82;
    *(a1 + 32) = v50;
    v71 = v109;
    if (v109)
    {
      v89 = v102;
      v90 = v109;
      v66 = v111;
      do
      {
        v91 = *(v89 - 1);
        if (*v89 + v91 >= v81)
        {
          *v89 += v82;
        }

        if (v91 >= v81)
        {
          *(v89 - 1) = v91 + v82;
        }

        v89 += 8;
        --v90;
      }

      while (v90);
      a2 = v113;
    }

    else
    {
      v66 = v111;
      a2 = v113;
    }

    v72 = v107;
    v74 = v115;
    v75 = v103;
LABEL_125:
    ++v74;
  }

  while (v75 != v74);
  v14 = 0;
  v6 = *(a1 + 52);
LABEL_11:
  *a4 = v6;
LABEL_12:
  if (v15)
  {
LABEL_13:
    if (*v15)
    {
      heap_Free(*(*a1 + 8), *v15);
    }

LABEL_15:
    heap_Free(*(*a1 + 8), v15);
  }

  if (!v14)
  {
    return 0;
  }

LABEL_17:
  *(a1 + 52) = 6;
  *a4 = 6;
  return v14 | 0x84E02000;
}

uint64_t siren_pipeline_ProcessEnd(void *a1, _DWORD *a2)
{
  v2 = *(a1 + 13);
  if ((v2 - 2) <= 3)
  {
    *a2 = v2;
    *(a1 + 26) = 0;
    a1[3] = 0;
    *(a1 + 13) = 0;
    v4 = a1[10];
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
      a1[10] = 0;
    }

    v5 = a1[11];
    if (v5)
    {
      heap_Free(*(*a1 + 8), v5);
      a1[11] = 0;
    }

    v6 = a1[2];
    if (v6 && *(v6 + 116))
    {
      chunking_Close(v6, a1[1]);
    }

    if (a1[9])
    {
      seq2seq_stream_free_NNState(a1);
    }
  }

  return 0;
}

uint64_t siren_pipeline_freeSecondaryChunkingMemory(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      if (*(v2 + 120))
      {
        v3 = *(v2 + 88);
        if (v3)
        {
          v4 = *(v3 + 16);
          if (v4)
          {
            heap_Free(*(*a1 + 8), v4);
            v2 = a1[2];
            *(*(v2 + 88) + 16) = 0;
          }
        }

        v5 = *(v2 + 72);
        if (v5)
        {
          v6 = *(v5 + 16);
          if (v6)
          {
            heap_Free(*(*a1 + 8), v6);
            *(*(a1[2] + 72) + 16) = 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t siren_pipeline_GetMarkerCount(uint64_t a1, unsigned int a2)
{
  v2 = *(*(*(a1 + 16) + 88) + 8);
  if (a2)
  {
    v3 = -*(v2 + 4 * (a2 - 1));
  }

  else
  {
    v3 = 1;
  }

  return (v3 + *(v2 + 4 * a2));
}

uint64_t siren_pipeline_GetSecondaryMarkerCount(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(*(*(a1 + 16) + 88) + 16);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v1 = -*(v2 + 4 * (v1 - 2));
  }

  return (v1 + *(v2 + 4 * v3));
}

uint64_t siren_pipeline_GetAudioStream(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6 || !*(*(result + 16) + 56))
    {
      return 0;
    }

    else
    {
      return *(result + 88);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetAcousticStream(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6 || !*(*(result + 16) + 56))
    {
      return 0;
    }

    else
    {
      return *(result + 80);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetSampleChunk(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    else
    {
      return *(*(result + 16) + 80);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetFrameChunk(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    else
    {
      return *(*(result + 16) + 72);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetFeatPhone(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    else
    {
      return *(*(result + 16) + 32);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetFeatFrame(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    else
    {
      return *(*(result + 16) + 40);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetDurationStream(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    v1 = *(*(result + 16) + 48);
    if (!v1)
    {
      return 0;
    }

    else
    {
      return *(v1 + 56);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetPhoneCount(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    else
    {
      return *(result + 24);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetFrameCount(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    else
    {
      return *(result + 28);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetFrameSize(uint64_t result)
{
  if (result)
  {
    return *(*(result + 8) + 9204);
  }

  return result;
}

uint64_t siren_pipeline_GetMaxSample(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t siren_pipeline_GetiSample(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t siren_pipeline_GetTotalPhoneCount(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    else
    {
      return *(*(*(result + 16) + 8) + 10);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetTailingPauseLen(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    v1 = *(result + 16);
    if (!*(v1 + 116) || *(v1 + 120) && *(result + 64))
    {
      return 0;
    }

    else
    {
      return *(*(*(v1 + 64) + 32) + 2 * (*(result + 60) - 1));
    }
  }

  return result;
}

uint64_t siren_pipeline_GetTotalFrameCount(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    else
    {
      return *(*(*(result + 16) + 48) + 24);
    }
  }

  return result;
}

uint64_t siren_pipeline_GetAcousticStreamSize(uint64_t result)
{
  if (result)
  {
    if (*(result + 52) == 6)
    {
      return 0;
    }

    else
    {
      return (*(*(result + 8) + 9204) * *(result + 28));
    }
  }

  return result;
}

uint64_t siren_pipeline_GetSampleChunkCounter(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

char *seq2seq_select_speaker(uint64_t a1, uint64_t a2, char *a3, const char *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  strcpy(__charset, ",");
  v15 = 0;
  result = cstdlib_memset(__b, 0, 0x9C4uLL);
  if (a3)
  {
    v9 = extstdlib_strtok_r(a3, __charset, &v15);
    if (v9)
    {
      v10 = v9;
      LODWORD(v11) = 0;
      do
      {
        v12 = &__b[25 * v11];
        v11 = (v11 + 1);
        cstdlib_strcpy(v12, v10);
        v10 = extstdlib_strtok_r(0, __charset, &v15);
      }

      while (v10);
      if (v11)
      {
        v13 = 0;
        for (i = __b; cstdlib_strcmp(*(a2 + 24), i); i += 50)
        {
          if (v11 == ++v13)
          {
            return cstdlib_strcpy(a3, a4);
          }
        }

        *(a1 + 44) = v13;
      }
    }

    return cstdlib_strcpy(a3, a4);
  }

  return result;
}

uint64_t chunking_markers(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v6 = *(a2 + 64);
  v7 = *(a2 + 88);
  *v7 = *a4;
  v8 = *(v6 + 48);
  *(v7 + 24) = v8;
  v9 = heap_Calloc(*(a1 + 8), v8, 4);
  *(v7 + 8) = v9;
  if (!v9)
  {
    return 10;
  }

  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(v6 + 16);
    do
    {
      for (i = *(v13 + 4 * v10); i >= v12; ++v11)
      {
        if (*a4 <= v11)
        {
          break;
        }

        v15 = *a3;
        a3 += 8;
        if (v15 == 33)
        {
          ++v12;
        }
      }

      *(v9 + 4 * v10++) = v11 - 1;
    }

    while (v10 != v8);
  }

  return 0;
}

void *seq2seq_stream_free_NNState(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[9];
    if (v2)
    {
      if (*v2)
      {
        heap_Free(*(*result + 8), *v2);
        v2 = v1[9];
      }

      if (v2[4])
      {
        heap_Free(*(*v1 + 8), v2[4]);
        v2 = v1[9];
      }

      result = heap_Free(*(*v1 + 8), v2);
      v1[9] = 0;
    }
  }

  return result;
}

uint64_t bubble_sort_markers(uint64_t result, unsigned int a2, int a3)
{
  if (a3)
  {
    v3 = (a3 - 1);
    if (v3 > a2)
    {
      v4 = 0;
      v5 = a2;
      while (1)
      {
        v6 = (result + 32 * v5++);
        v7 = (result + 32 * v5);
        if (*(v6 + 3) > *(v7 + 3))
        {
          v8 = *v6;
          v10 = v6[1];
          v9 = v7[1];
          *v6 = *v7;
          v6[1] = v9;
          *v7 = v8;
          v7[1] = v10;
          v4 = 1;
        }

        if (v5 == v3)
        {
          if (!v4)
          {
            break;
          }

          v4 = 0;
          v5 = a2;
          if (v3 <= a2)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t calc_Marker_Pos_seq2seq_notrim(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, uint64_t a7)
{
  v14 = heap_Alloc(*(*a1 + 8), 4 * a6);
  if (v14)
  {
    v31 = 0;
    transferAlign(a7, v14, a6, a5, &v31 + 1, &v31);
    if (a4)
    {
      v15 = 0;
      LODWORD(v16) = 0;
      v17 = *(a2 + 9188);
      v18 = a3;
      v19 = 1;
      do
      {
        v20 = v16 * v17;
        if (*v18 == 33)
        {
          ++v19;
          v18[3] = v20;
          v18[4] = 0;
          if (v16 < a6)
          {
            v16 = v16;
            v21 = v17;
            while (v14[v16] <= v19)
            {
              v18[4] = v21;
              ++v16;
              v21 += v17;
              if (a6 == v16)
              {
                LODWORD(v16) = a6;
                break;
              }
            }
          }

          if (v18[6] == 35)
          {
            if (v15)
            {
              v22 = a3 + 32 * v15;
              v23 = (a3 + 12);
              v24 = v15;
              do
              {
                v25 = *(v23 - 3);
                v26 = v25 > 0x28;
                v27 = (1 << v25) & 0x10004000100;
                v28 = v26 || v27 == 0;
                if (!v28 && *v23 == *(v22 + 12))
                {
                  *v23 += *(v22 + 16);
                }

                v23 += 8;
                --v24;
              }

              while (v24);
              LODWORD(v16) = v15;
            }

            else
            {
              LODWORD(v16) = 0;
            }
          }
        }

        else
        {
          v18[3] = v20;
          v18[4] = 0;
        }

        v18 += 8;
        ++v15;
      }

      while (v15 != a4);
    }

    bubble_sort_markers(a3, 0, a4);
    v29 = 0;
  }

  else
  {
    v29 = 10;
  }

  heap_Free(*(*a1 + 8), v14);
  return v29;
}

uint64_t chunking_frames(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = 10;
  if (*(a1 + 48) <= 0xAu)
  {
    v9 = 10;
  }

  else
  {
    v9 = *(a1 + 48);
  }

  v10 = *(a5 + 72);
  *(v10 + 10) = a4;
  v11 = heap_Calloc(*(a2 + 8), (a4 / v9 + 1), 4);
  *(v10 + 16) = v11;
  if (!v11)
  {
    goto LABEL_23;
  }

  if (v9 >= a4)
  {
    v13 = 0;
    v15 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = *(a3 + 9160);
    do
    {
      v15 = v9;
      v11[v13] = v9 - 1;
      v9 = (v9 + ((v9 - v12) * v14));
      ++v13;
      v12 = v15;
    }

    while (v9 < a4);
  }

  if (v15 < a4)
  {
    v11[v13++] = a4 - 1;
  }

  if (v13 >= 2u)
  {
    v16 = &v11[v13];
    v17 = *(v16 - 2);
    if (*(v16 - 1) <= v17 + 2)
    {
      *(v16 - 2) = v17 - 2;
    }
  }

  *(v10 + 24) = v13;
  if (v13 == 2)
  {
    v19 = v11[1] + ((*v11 + 1) * *(a3 + 9160));
    v20 = *v11;
  }

  else
  {
    if (v13 == 1)
    {
      v18 = *(a3 + 9160) * (*v11 + 1);
      goto LABEL_21;
    }

    v21 = &v11[v13];
    v22 = *(v21 - 2);
    v19 = *(v21 - 1) + ((v22 - *(v21 - 3) + 1) * *(a3 + 9160));
    v20 = v22;
  }

  v18 = (v19 - v20) + 1.0;
LABEL_21:
  v8 = 0;
  if (*(a1 + 48) < v18)
  {
    *(a1 + 48) = v18;
  }

LABEL_23:
  if (v11)
  {
    return v8;
  }

  else
  {
    return v8 | 0x84E02000;
  }
}

uint64_t chunking_secondary_markers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6)
{
  v10 = *(a3 + 72);
  v11 = *(a3 + 88);
  v12 = *(v10 + 24);
  v13 = heap_Calloc(*(a1 + 8), v12, 4);
  *(v11 + 16) = v13;
  if (v13)
  {
    if (v12)
    {
      v14 = 0;
      LODWORD(v15) = 0;
      v16 = *(v10 + 16);
      do
      {
        v17 = v14;
        if (v15 < a5)
        {
          v18 = *(v16 + 4 * v14) + 1;
          v15 = v15;
          v19 = (a4 + 12 + 32 * v15);
          while (1)
          {
            v20 = *v19;
            v19 += 8;
            if (v20 / *(a2 + 9188) >= v18)
            {
              break;
            }

            if (a5 == ++v15)
            {
              LODWORD(v15) = a5;
              break;
            }
          }
        }

        *(v13 + 4 * v17) = v15 - 1;
        v14 = v17 + 1;
      }

      while (v17 + 1 != v12);
      v21 = v17;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

    v22 = *a6;
    if (*a6)
    {
      v22 = 0;
      *(v13 + 4 * v21) = a5 - 1;
    }
  }

  else
  {
    v22 = 10;
  }

  if (v13)
  {
    return v22;
  }

  else
  {
    return v22 | 0x84E02000;
  }
}

uint64_t transferAlign(uint64_t result, _DWORD *a2, unsigned int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = a3;
    do
    {
      a2[v7] = 0;
      if (a4)
      {
        v9 = 0;
        v10 = 0.0;
        do
        {
          v11 = *(result + 4 * (v6 + v9));
          if (v11 > v10)
          {
            a2[v7] = v9;
            v10 = v11;
          }

          ++v9;
        }

        while (a4 != v9);
      }

      ++v7;
      v6 += a4;
    }

    while (v7 != a3);
    if (a3 != 1)
    {
      v12 = a2 + 1;
      v13 = a3 - 1;
      do
      {
        v15 = *(v12 - 1);
        v14 = *v12;
        if (*v12 >= v15)
        {
          if (!v14)
          {
            ++*a5;
            v14 = *v12;
          }
        }

        else
        {
          *v12 = v15;
          v14 = v15;
        }

        if (v14 == a4 - 1)
        {
          ++*a6;
        }

        ++v12;
        --v13;
      }

      while (v13);
    }

    do
    {
      ++*a2++;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t calc_Marker_Pos_seq2seq(_DWORD *a1, uint64_t a2, _DWORD *a3, int a4, int a5, unsigned int a6, uint64_t a7, _DWORD *a8, _DWORD *a9)
{
  v17 = heap_Alloc(*(*a1 + 8), 4 * a6);
  if (v17)
  {
    transferAlign(a7, v17, a6, a5, a8, a9);
    if (a4)
    {
      v18 = 0;
      v19 = a1[15];
      v20 = v19 == 0;
      v21 = v19 != 0;
      if (v20)
      {
        LODWORD(v22) = 0;
      }

      else
      {
        LODWORD(v22) = *a8;
      }

      v23 = 5 * *(a2 + 9188);
      do
      {
        v24 = v22 * v23;
        if (*a3 == 33)
        {
          ++v21;
          a3[3] = v24;
          a3[4] = 0;
          if (v22 < a6)
          {
            v22 = v22;
            v25 = v23;
            while (v17[v22] <= v21)
            {
              a3[4] = v25;
              ++v22;
              v25 += v23;
              if (a6 == v22)
              {
                LODWORD(v22) = a6;
                break;
              }
            }
          }
        }

        else
        {
          a3[3] = v24;
          a3[4] = 0;
        }

        a3 += 8;
        ++v18;
      }

      while (v18 != a4);
    }

    v26 = 0;
  }

  else
  {
    v26 = 10;
  }

  heap_Free(*(*a1 + 8), v17);
  return v26;
}

uint64_t siren_pipeline_loc_ForceFESilDur(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 10);
  if (*(v2 + 10))
  {
    v4 = 0;
    v5 = *(result + 8);
    v6 = *(v2 + 32);
    do
    {
      if (*(result + 108) == *(v6 + v4))
      {
        v7 = *(*(v2 + 1784) + 2 * v4);
        if (*(*(v2 + 1784) + 2 * v4))
        {
          v8 = *(v5 + 32);
          if (v8 <= v7)
          {
            v9 = v7 / v8;
          }

          else
          {
            v9 = 2;
          }

          v10 = *(v1 + 48);
          v11 = *(v10 + 56);
          *(v10 + 24) += v9 - *(v11 + 4 * v4);
          *(v11 + 4 * v4) = v9;
        }
      }

      ++v4;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t calc_Max_Frame_Len(uint64_t result)
{
  v1 = *(*(result + 72) + 24);
  if (*(*(result + 72) + 24))
  {
    do
    {
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t select_bet6_FeatureExtractObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v24 = 0;
  *a8 = 0;
  inited = InitRsrcFunction(a1, a2, &v24);
  if ((inited & 0x80000000) == 0)
  {
    v15 = heap_Calloc(*(v24 + 8), 1, 72);
    v19 = v24;
    if (!v15)
    {
      log_OutPublic(*(v24 + 32), "SELECT_BET6", 72000, 0, v24, v16, v17, v18, v23);
      return 2229280778;
    }

    v20 = v15;
    *v15 = v24;
    *(v15 + 8) = a3;
    *(v15 + 16) = a4;
    *(v15 + 24) = a5;
    *(v15 + 32) = a6;
    *(v15 + 48) = a7 != 0;
    if (a7)
    {
      v21 = nnfeatex_Init(v15 + 56, a4, a5, a7, v19);
      if (v21)
      {
        inited = v21 | 0x84E02000;
        select_bet6_FeatureExtractObjClose(v20);
        return inited;
      }

      inited = 0;
      *(v20 + 40) = a7;
    }

    *a8 = v20;
  }

  return inited;
}

uint64_t select_bet6_FeatureExtractObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    v2 = nnfeatex_DeInit((a1 + 56));
    if (v2)
    {
      v3 = v2 | 0x84E02000;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  heap_Free(*(*a1 + 8), a1);
  return v3;
}

uint64_t select_bet6_FeatureExtractObjReopen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    v8 = nnfeatex_DeInit((a1 + 56));
    if (v8)
    {
      return v8 | 0x84E02000;
    }
  }

  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 48) = a4 != 0;
  if (!a4)
  {
    return 0;
  }

  *(a1 + 40) = a4;
  v10 = nnfeatex_Init(a1 + 56, *(a1 + 16), a2, a4, *a1);
  if (v10)
  {
    return v10 | 0x84E02000;
  }

  else
  {
    return 0;
  }
}

uint64_t select_bet6_FeatureExtractProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, void *__b, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  cstdlib_memset(__b, 0, 0xE48uLL);
  v12 = *(a1 + 16);
  *__b = *(a1 + 24);
  (*(v12 + 272))(a2, a3, 128, 3, 0, 0);
  if (*(a1 + 48))
  {
    v13 = nnfeatex_ProcessStart((a1 + 56), a2, a3, __b, a7);
    if (v13)
    {
      return v13 | 0x84E02000;
    }
  }

  v15 = *a1;
  v16 = *(a1 + 16);

  return usextract_ProcessStart(v15, "SELECT_BET6", v16, a2, a3, __b, a7);
}

uint64_t select_bet6_FeatureExtractProcess(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t *a6, _DWORD *a7, uint64_t *a8, _DWORD *a9)
{
  v116 = *MEMORY[0x277D85DE8];
  v13 = *a1;
  if (a8)
  {
    v14 = a9 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (!v14)
  {
    *a8 = 0;
    *a9 = 0;
  }

  v16 = 0;
  v17 = 0;
  v18 = *(a5 + 10);
  do
  {
    if (*(*a5 + 2748 + v16) == 1)
    {
      ++v17;
    }

    ++v16;
  }

  while (v16 != 218);
  v19 = heap_Calloc(*(v13 + 8), (v17 * v18), 1);
  if (!v19)
  {
    goto LABEL_133;
  }

  v24 = v19;
  v105 = v15;
  v106 = a4;
  v25 = 0;
  v107 = a5 + 16;
  do
  {
    v26 = *a5;
    v27 = *(*a5 + v25 + 2748);
    if (!*(*a5 + v25 + 2748))
    {
      goto LABEL_20;
    }

    if (v27 == 2)
    {
      v28 = heap_Calloc(*(v13 + 8), v18, 2);
      *(a5 + 8 * v25 + 1760) = v28;
      if (!v28)
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v27 == 1)
      {
        *(a5 + 8 * v25 + 16) = v24;
        v24 += v18;
        goto LABEL_20;
      }

      if (v25 <= 0x33u)
      {
        switch(v25)
        {
          case 0x18u:
            v35 = heap_Calloc(*(v13 + 8), v18, 8);
            *(a5 + 3552) = v35;
            if (!v35)
            {
              goto LABEL_133;
            }

            break;
          case 0x2Eu:
            v40 = heap_Calloc(*(v13 + 8), v18, 9);
            *(a5 + 3560) = v40;
            if (!v40)
            {
              goto LABEL_133;
            }

            break;
          case 0x33u:
            v31 = *(v26 + 2966);
            if (v31)
            {
              v32 = heap_Calloc(*(v13 + 8), (v31 * v18), 4);
              *(a5 + 3568) = v32;
              if (!v32)
              {
                goto LABEL_133;
              }
            }

            break;
          default:
            goto LABEL_42;
        }
      }

      else if (v25 > 0x35u)
      {
        if (v25 == 54)
        {
          v38 = *(v26 + 3360);
          if (v38)
          {
            v39 = heap_Calloc(*(v13 + 8), (v38 * v18), 4);
            *(a5 + 3592) = v39;
            if (!v39)
            {
              goto LABEL_133;
            }
          }
        }

        else
        {
          if (v25 != 56)
          {
LABEL_42:
            log_OutPublic(*(*a1 + 32), "SELECT_BET6", 72003, "%s%u", v20, v21, v22, v23, "feature");
            goto LABEL_20;
          }

          v33 = *(v26 + 2966);
          if (v33)
          {
            v34 = heap_Calloc(*(v13 + 8), (v33 * v18), 1);
            *(a5 + 3600) = v34;
            if (!v34)
            {
              goto LABEL_133;
            }
          }
        }
      }

      else if (v25 == 52)
      {
        v36 = *(v26 + 2966);
        if (v36)
        {
          v37 = heap_Calloc(*(v13 + 8), (v36 * v18), 4);
          *(a5 + 3576) = v37;
          if (!v37)
          {
            goto LABEL_133;
          }
        }
      }

      else
      {
        if (v25 != 53)
        {
          goto LABEL_42;
        }

        v29 = *(v26 + 3360);
        if (v29)
        {
          v30 = heap_Calloc(*(v13 + 8), (v29 * v18), 4);
          *(a5 + 3584) = v30;
          if (!v30)
          {
            goto LABEL_133;
          }
        }
      }
    }

LABEL_20:
    ++v25;
  }

  while (v25 != 218);
  v41 = *(*a5 + 3578);
  if (v41 >= 4)
  {
    log_OutPublic(*(v13 + 32), "SELECT_BET6", 72003, "Invalid number of states per phoneme", v20, v21, v22, v23, "%s%u");
    v42 = -2065686513;
    goto LABEL_134;
  }

  v43 = heap_Calloc(*(v13 + 8), v41 * v18, 4);
  *(a5 + 3608) = v43;
  if (!v43)
  {
    goto LABEL_133;
  }

  if (*(*a5 + 3578) * v18)
  {
    memset(v43, 255, 4 * *(*a5 + 3578) * v18);
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(*a1, "SELECT_BET6", a5, v18);
  if (GenericFeatureLayers < 0)
  {
    v42 = GenericFeatureLayers;
    goto LABEL_134;
  }

  v42 = usextract_Process(*a1, "SELECT_BET6", a1[2], a2, a3, a5, v45, v46);
  if ((v42 & 0x80000000) == 0)
  {
    if (*(a5 + 3504))
    {
      v47 = **(*a5 + 3336);
      if (v47)
      {
        v48 = 0;
        v49 = 1;
        do
        {
          v50 = cstdlib_strncmp(v47, "INNO_", 5uLL);
          v51 = *a5;
          if (v50)
          {
            v52 = *(*(v51 + 3344) + 8 * v48);
            v53 = cstdlib_strlen("FEATIDX");
            Index = usextract_getIndex(v52, "FEATIDX", &aFeatidx[v53]);
            if (Index == -1)
            {
              if (cstdlib_strcmp(*(*(*a5 + 3336) + 8 * v48), "POS"))
              {
                if (!cstdlib_strcmp(*(*(*a5 + 3336) + 8 * v48), "PHR"))
                {
                  *(a5 + 512) = *(*(a5 + 3504) + 8 * v48);
                }
              }

              else
              {
                *(a5 + 504) = *(*(a5 + 3504) + 8 * v48);
              }
            }

            else
            {
              *(v107 + 8 * *(*(*(*a5 + 3352) + 8 * v48) + Index)) = *(*(a5 + 3504) + 8 * v48);
            }
          }

          else
          {
            v55 = cstdlib_atoi((*(*(v51 + 3336) + 8 * v48) + 5)) + 79;
            if (v55 <= 0x5E)
            {
              *(v107 + 8 * v55) = *(*(a5 + 3504) + 8 * v48);
            }
          }

          v48 = v49;
          v47 = *(*(*a5 + 3336) + 8 * v49++);
        }

        while (v47);
      }
    }

    v56 = *(a5 + 10);
    if (*(a1 + 12))
    {
      v57 = nnfeatex_Process(a1 + 7, a2, a3, a5, 0, 0, a6, a7, 1);
      if (v57)
      {
        v42 = v57 | 0x84E02000;
        log_OutPublic(*(*a1 + 32), "SELECT_BET6", 72001, "%x", v58, v59, v60, v61, v57 | 0x84E02000);
        goto LABEL_134;
      }

      v42 = 0;
    }

    v109 = v56;
    v62 = v56 & ~(v56 >> 31);
    if (log_select_GetLogLevel(*(v13 + 32)) >= 6)
    {
      LH_itoa(0x4Eu, v115, 0xAu);
      for (i = 0; i != 218; ++i)
      {
        if (i > 3u)
        {
          if (i == 4)
          {
            v64 = "application/x-realspeak-usplosives;version=4.0";
LABEL_87:
            v65 = *(*a5 + i + 2748);
            if (v65 == 2)
            {
              log_OutBinary(*(v13 + 32), "SELECT_BET6", 99, 0, v115, v64, *(a5 + 8 * i + 1760), 2 * v62, 0);
            }

            else if (v65 == 1)
            {
              log_OutBinary(*(v13 + 32), "SELECT_BET6", 99, 0, v115, v64, *(a5 + 8 * i + 16), v62, 0);
            }

            continue;
          }

          if (i == 5)
          {
            v64 = "application/x-realspeak-usmarkers-u16;version=4.0";
            goto LABEL_87;
          }
        }

        else if (i == 2)
        {
          v114 = 5;
          v113 = 0;
          log_OutBinary(*(v13 + 32), "SELECT_BET6", 99, 0, v115, "text/x-realspeak-usphonemes;charset=tts", &v114, 1u, 0);
          log_OutBinary(*(v13 + 32), "SELECT_BET6", 99, 0, v115, "text/x-realspeak-usphonemes;charset=tts", *(a5 + 8 * i + 16), v62, 0);
          log_OutBinary(*(v13 + 32), "SELECT_BET6", 99, 0, v115, "text/x-realspeak-usphonemes;charset=tts", &v113, 1u, 0);
        }

        else if (i == 3)
        {
          v64 = "application/x-realspeak-usdurs;version=4.0";
          goto LABEL_87;
        }
      }
    }

    v66 = *(a5 + 3520);
    if (v66)
    {
      v67 = 0;
      for (j = 0; j < v66; ++j)
      {
        v69 = *(a5 + 3512);
        if (*(v69 + v67) == 25)
        {
          v70 = *(v69 + v67 + 24);
          *v106 = v70;
          v42 = paramc_ParamSetInt(*(v13 + 40), "waitfactor", v70);
          if (v42 < 0)
          {
            v103 = *(v13 + 32);
            goto LABEL_146;
          }

          v66 = *(a5 + 3520);
        }

        v67 += 32;
      }
    }

    featextract_adjustSilAudioOrder(a5);
    if (!v105)
    {
      goto LABEL_113;
    }

    v75 = *(a5 + 3520);
    v76 = v75 + v62;
    *a9 = v76;
    if (!(v75 + v62))
    {
      goto LABEL_113;
    }

    v77 = heap_Calloc(*(v13 + 8), v76, 32);
    *a8 = v77;
    if (v77)
    {
      v78 = heap_Calloc(*(v13 + 8), *(a5 + 10), 2);
      if (v78)
      {
        v79 = v78;
        cstdlib_memcpy(v78, *(a5 + 1800), 2 * *(a5 + 10));
        if (*a9)
        {
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          while (v83 < *(a5 + 3520))
          {
            if (v82 >= v62)
            {
              v89 = (*a8 + v80);
              v90 = (*(a5 + 3512) + 32 * v83);
              v91 = v90[1];
              *v89 = *v90;
              v89[1] = v91;
              ++v83;
              goto LABEL_111;
            }

            v84 = v82;
            if (!*(v79 + 2 * v82))
            {
              goto LABEL_109;
            }

            v85 = (*a8 + v80);
            v86 = (*(a5 + 3512) + 32 * v83);
            v87 = v86[1];
            *v85 = *v86;
            v85[1] = v87;
            ++v83;
            --*(v79 + 2 * v82);
LABEL_111:
            ++v81;
            v80 += 32;
            if (v81 >= *a9)
            {
              goto LABEL_112;
            }
          }

          v84 = v82;
LABEL_109:
          v88 = (*a8 + v80);
          *v88 = 33;
          v88[6] = *(*(a5 + 32) + v84);
          ++v82;
          goto LABEL_111;
        }

LABEL_112:
        heap_Free(*(v13 + 8), v79);
LABEL_113:
        if (v109 < 1)
        {
          goto LABEL_134;
        }

        v92 = 0;
        v93 = v62;
        v94 = v62 - 1;
        while (1)
        {
          v95 = *(a5 + 248);
          if (!*(v95 + v92))
          {
            *(v95 + v92) = -1;
          }

          v96 = *(a5 + 192);
          if (*(*(a5 + 32) + v92) == 35)
          {
            v97 = 1;
          }

          else
          {
            v97 = 2 * *(v96 + v92);
          }

          *(v96 + v92) = v97;
          v98 = *(a5 + 32);
          if (v94 == v92 && *(v98 + v92) == 35)
          {
            v115[0] = 0;
            paramc_ParamGetUInt(*(v13 + 40), "finalsentencefound", v115);
            if (v115[0] == 1)
            {
              v42 = paramc_ParamSetInt(*(v13 + 40), "waitfactor", 0);
              if (v42 < 0)
              {
                v103 = *(v13 + 32);
LABEL_146:
                log_OutPublic(v103, "SELECT_BET6", 72003, "%s%s%s%d%s%x", v71, v72, v73, v74, "parameter");
                goto LABEL_134;
              }

              v99 = 0;
              v100 = *(a5 + 1784);
            }

            else
            {
              v100 = *(a5 + 1784);
              v99 = *(v100 + 2 * v92) + 200 * *v106;
            }

            if (v99 <= 1)
            {
              v99 = 1;
            }

            if (v99 >= 0xFFFF)
            {
              LOWORD(v99) = -1;
            }

            *(v100 + 2 * v92) = v99;
            v98 = *(a5 + 32);
          }

          *(v98 + v92) = *(a1[4] + *(v98 + v92) + 7356);
          if (v93 == ++v92)
          {
            goto LABEL_134;
          }
        }
      }
    }

LABEL_133:
    v42 = -2065686518;
    log_OutPublic(*(v13 + 32), "SELECT_BET6", 72000, 0, v20, v21, v22, v23, v104);
  }

LABEL_134:
  if (a9 && a8 && v42 < 0 && *a8)
  {
    heap_Free(*(v13 + 8), *a8);
    *a8 = 0;
    *a9 = 0;
  }

  LODWORD(result) = (*(a1[2] + 64))(a2, a3);
  if (result >= 0 || v42 <= -1)
  {
    return v42;
  }

  else
  {
    return result;
  }
}

uint64_t select_bet6_FeatureExtractProcessEnd(uint64_t *a1, void *a2, uint64_t *a3, _DWORD *a4)
{
  if (!*a2)
  {
    return 0;
  }

  v6 = *a1;
  if (*(a1 + 12))
  {
    v7 = nnfeatex_ProcessEnd(a1 + 7, a3, a4);
    if (v7)
    {
      v8 = v7 | 0x84E02000;
    }

    else
    {
      v8 = 0;
    }

    v9 = *a1;
  }

  else
  {
    v8 = 0;
    v9 = *a1;
  }

  v11 = usextract_ProcessEnd(v9, "SELECT_BET6", a2);
  usextract_freeGenericFeatureLayers(*a1, "SELECT_BET6", a2);
  v16 = 0;
  v17 = 1;
  do
  {
    v18 = *(*a2 + v16 + 2748);
    if (!*(*a2 + v16 + 2748))
    {
      goto LABEL_19;
    }

    if (v18 == 2)
    {
      v20 = a2[v16 + 220];
      if (!v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      heap_Free(*(v6 + 8), v20);
      goto LABEL_19;
    }

    if (v18 == 1)
    {
      if (v17)
      {
        v19 = a2[v16 + 2];
        if (v19)
        {
          heap_Free(*(v6 + 8), v19);
        }

        v17 = 0;
      }
    }

    else if (v16 <= 0x33u)
    {
      switch(v16)
      {
        case 0x18u:
          v20 = a2[444];
          if (v20)
          {
            goto LABEL_18;
          }

          break;
        case 0x2Eu:
          v20 = a2[445];
          if (v20)
          {
            goto LABEL_18;
          }

          break;
        case 0x33u:
          v20 = a2[446];
          if (v20)
          {
            goto LABEL_18;
          }

          break;
        default:
          goto LABEL_38;
      }
    }

    else if (v16 > 0x35u)
    {
      if (v16 == 54)
      {
        v20 = a2[449];
        if (v20)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v16 != 56)
        {
LABEL_38:
          log_OutPublic(*(*a1 + 32), "SELECT_BET6", 72003, "%s%u", v12, v13, v14, v15, "feature");
          goto LABEL_19;
        }

        v20 = a2[450];
        if (v20)
        {
          goto LABEL_18;
        }
      }
    }

    else if (v16 == 52)
    {
      v20 = a2[447];
      if (v20)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v16 != 53)
      {
        goto LABEL_38;
      }

      v20 = a2[448];
      if (v20)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    ++v16;
  }

  while (v16 != 218);
  v21 = a2[451];
  if (v21)
  {
    heap_Free(*(v6 + 8), v21);
  }

  cstdlib_memset(a2, 0, 8uLL);
  if (v8)
  {
    return v8;
  }

  else
  {
    return v11;
  }
}

uint64_t select_bet6_VoiceOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  result = 2229280775;
  if (a1 && a2 && a4)
  {
    result = objc_GetAddRefCountedObject(*(a1 + 48), a3, select_bet6_loc_ObjcVoiceOpen, select_bet6_loc_ObjcVoiceClose, a2, &v7);
    if ((result & 0x80000000) == 0)
    {
      *a4 = *(v7 + 32);
      *(a4 + 8) = 135971;
    }
  }

  return result;
}

uint64_t select_bet6_loc_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v68 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  memset(__dst, 0, sizeof(__dst));
  inited = InitRsrcFunction(a1, a2, &v65);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  cstdlib_memcpy(__dst, v65, 0x1A0uLL);
  v41 = *(a5 + 32);
  v66 = 0;
  v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "SEL6", 1031, &v66);
  if ((v11 & 0x80000000) != 0)
  {
    v19 = v11;
    v21 = 0;
  }

  else
  {
    v19 = 2229280778;
    v20 = heap_Calloc(*(&__dst[0] + 1), 1, 38000);
    v21 = v20;
    if (v20)
    {
      cstdlib_memset(v20, 0, 0x9470uLL);
      cstdlib_strcpy(v21, a3);
      cstdlib_strcpy((v21 + 9496), a3);
      cstdlib_memset((v21 + 11488), 255, 0x100uLL);
      cstdlib_memset((v21 + 12392), 255, 0x11CuLL);
      cstdlib_memset((v21 + 12720), 255, 0x20uLL);
      *(v21 + 11868) = 1;
      cstdlib_memset(__b, 0, 0x50uLL);
      v22 = heap_Calloc(*(&__dst[0] + 1), 57, 4);
      if (v22)
      {
        *(v21 + 9320) = v22;
        *(v21 + 9328) = 57;
        if ((fi_rsc_create(__dst, (v21 + 128)) & 0x80000000) != 0)
        {
          log_OutPublic(v41, "SELECT_BET6", 72001, "%s%x", v23, v24, v25, v26, "lhError");
          v19 = 2229280776;
        }

        else
        {
          cstdlib_memset((v21 + 7816), -1, 0x12CuLL);
          v19 = select_bet6_ParseRiff(__dst, v21, v66, 0, __b);
          if ((v19 & 0x80000000) != 0)
          {
            select_bet6_loc_LogChunkStack(__dst, a3, __b);
          }

          else
          {
            v27 = *(v21 + 11808);
            if (v27)
            {
              v28 = *v27;
              if (v28)
              {
                v29 = 0;
                v30 = 1;
                do
                {
                  *(v21 + 5440 + 8 * v29) = v28;
                  v29 = v30;
                  v28 = *(*(v21 + 11808) + 8 * v30++);
                }

                while (v28);
              }
            }

            *(v21 + 12922) = 1;
            *&v31 = 0x100000001;
            *(&v31 + 1) = 0x100000001;
            *(v21 + 12512) = v31;
            *(v21 + 12528) = v31;
            *(v21 + 12544) = 0x100000001;
            *(v21 + 12556) = 1;
            *(v21 + 12572) = v31;
            *(v21 + 12588) = v31;
            *(v21 + 12604) = v31;
            *(v21 + 12620) = v31;
            *(v21 + 12636) = v31;
            *(v21 + 12652) = 1;
            *(v21 + 12656) = 0x100000001;
            *(v21 + 12094) = 33620481;
            *(v21 + 12121) = 1;
            *(v21 + 12099) = 0x101010101010101;
            *(v21 + 12107) = 0x101010101010101;
            *(v21 + 12143) = -1;
            *(v21 + 12147) = -255;
            *(v21 + 12162) = 0x101010101010101;
            *(v21 + 12157) = 0x101010101010101;
            *(v21 + 12265) = 0x101010101010101;
            *(v21 + 12273) = 0x101010101010101;
            *(v21 + 12281) = 0x101010101010101;
            if ((*(v21 + 12448) & 0x80000000) == 0)
            {
              *(v21 + 12123) = 257;
            }

            if ((*(v21 + 12464) & 0x80000000) == 0)
            {
              *(v21 + 12125) = 1;
            }

            if ((*(v21 + 12480) & 0x80000000) == 0)
            {
              *(v21 + 12126) = 1;
            }

            if ((*(v21 + 12484) & 0x80000000) == 0)
            {
              *(v21 + 12127) = 1;
            }

            if ((*(v21 + 12488) & 0x80000000) == 0)
            {
              *(v21 + 12128) = 1;
            }

            if ((*(v21 + 12492) & 0x80000000) == 0)
            {
              *(v21 + 12129) = 1;
            }

            if ((*(v21 + 12736) & 0x80000000) == 0 || (*(v21 + 12740) & 0x80000000) == 0)
            {
              *(v21 + 12116) = 8;
            }

            v32 = (v21 + 37744);
            if (*(v21 + 11904))
            {
              *(v21 + 12138) = 9;
            }

            *(v21 + 12168) = 257;
            *(v21 + 12157) = 0x101010101010101;
            *(v21 + 12165) = 257;
            *(v21 + 7944) = 4000;
            *(v21 + 7928) = xmmword_26ED6DBB0;
            cstdlib_memset((v21 + 8208), 0, 0x400uLL);
            v33 = (v21 + 9946);
            v34 = cstdlib_strlen((v21 + 9946));
            v35 = v34;
            if (v34)
            {
              v36 = v21 + 7492;
              do
              {
                if (*(v36 + *v33))
                {
                  *(v21 + 8208 + 4 * *(v36 + *v33)) = (v33[257] & 0xDF) == 86;
                }

                ++v33;
                --v35;
              }

              while (v35);
            }

            v37 = *(v21 + 37752);
            if (v37)
            {
              LODWORD(v37) = *v32;
              if (*v32)
              {
                v37 = *(v21 + 37760);
                if (v37)
                {
                  LODWORD(v37) = *(v21 + 37768) != 0;
                }
              }
            }

            *(v21 + 37776) = v37;
          }
        }
      }
    }
  }

  if (v66)
  {
    ssftriff_reader_ObjClose(v66, v12, v13, v14, v15, v16, v17, v18);
    v66 = 0;
  }

  if ((v19 & 0x80000000) != 0)
  {
    if ((v19 & 0x7FF00000) == 0xA200000)
    {
      if ((v19 & 0x1FFF) == 0x14)
      {
        v38 = 72002;
      }

      else
      {
        v38 = 72003;
      }

      log_OutPublic(v41, "SELECT_BET6", v38, "%s%x", v15, v16, v17, v18, "lhError");
      v19 = (v19 & 0x1FFF) - 2065686528;
    }

    else if ((v19 & 0x1FFD | 2) != 0xA)
    {
      log_OutPublic(v41, "SELECT_BET6", 72003, "%s%x", v15, v16, v17, v18, "lhError");
    }

    select_bet6_loc_VoiceClose(__dst, v21);
  }

  else
  {
    *(a4 + 32) = v21;
  }

  return v19;
}

uint64_t select_bet6_loc_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v6 = 0;
  inited = InitRsrcFunction(a1, a2, &v6);
  if ((inited & 0x80000000) == 0)
  {
    select_bet6_loc_VoiceClose(v6, *(a3 + 32));
  }

  return inited;
}

uint64_t select_bet6_VoiceClose(uint64_t a1, uint64_t *a2)
{
  v2 = 2229280775;
  if (!a1 || !a2)
  {
    return v2;
  }

  if ((safeh_HandleCheck(*a2, a2[1], 135971, 38000) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v5 = *a2;
  if (!*a2)
  {
    return 2229281036;
  }

  v6 = *(a1 + 48);

  return objc_ReleaseObject(v6, v5);
}

uint64_t select_bet6_GetSirenVoice(uint64_t *a1)
{
  if ((safeh_HandleCheck(*a1, a1[1], 135971, 38000) & 0x80000000) != 0)
  {
    return 0;
  }

  if (*a1)
  {
    return *a1 + 128;
  }

  return 0;
}

uint64_t select_bet6_GetVoiceBrkString(uint64_t *a1)
{
  if ((safeh_HandleCheck(*a1, a1[1], 135971, 38000) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t select_bet6_ParseRiff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a4;
  v8 = a2;
  v9 = a1;
  v155 = *MEMORY[0x277D85DE8];
  v10 = (a2 + 37744);
  v144 = a2 + 8204;
  v148 = 0;
  v147 = 0;
  *__src = 0;
  v11 = 5 * a4;
  v133 = a2 + 12720;
  v140 = a2 + 12392;
  v127 = a2 + 8184;
  v128 = a2 + 8168;
  v129 = a2 + 8152;
  v135 = a2 + 37784;
  v130 = (a2 + 9946);
  v141 = a2 + 11488;
  v143 = v11;
  v145 = (a2 + 37744);
  do
  {
    v12 = ssftriff_reader_OpenChunk(a3, __src, &v148, 0);
    if ((v12 & 0x80000000) != 0)
    {
      break;
    }

    cstdlib_strcpy(&a5[v11], __src);
    if (v6 == 1)
    {
      if (cstdlib_strcmp(a5, "FEEX"))
      {
        if (cstdlib_strcmp(a5, "NNFE"))
        {
          goto LABEL_25;
        }

        v152[0] = 0;
        ssftriff_reader_GetChunkData(a3, v148, v152, v18);
        v12 = v19;
        if ((v19 & 0x80000000) != 0)
        {
          return v12;
        }

        if (cstdlib_strcmp(__src, "NNLT"))
        {
          if (cstdlib_strcmp(__src, "NNUF"))
          {
            goto LABEL_25;
          }

          v59 = v152[0];
          v10[12] = *v152[0];
          v60 = v148;
          v61 = (v8 + 37760);
          v62 = v9;
          v63 = a3;
          goto LABEL_249;
        }

        v50 = v6;
        v51 = *v10;
        v12 = v10;
        if (v51 > 0x10)
        {
          v52 = v10;
          LODWORD(v12) = -2065686524;
LABEL_259:
          v9 = a1;
          v10 = v52;
          v6 = v50;
          goto LABEL_403;
        }

        v64 = v152[0];
        v65 = v148;
        if (!*(v12 + 8))
        {
          v66 = heap_Calloc(*(a1 + 8), 18, 16);
          v52 = v12;
          *(v12 + 8) = v66;
          LODWORD(v12) = -2065686518;
          if (!v66)
          {
            goto LABEL_259;
          }

          v12 = v52;
          LOWORD(v51) = *v52;
        }

        v52 = v12;
        *v12 = v51 + 1;
        LODWORD(__s2[0]) = 0;
        StringW = ssftriff_reader_ReadStringW(a3, v64, v65, 0, 0, __s2);
        if ((StringW & 0x80000000) == 0 || (LODWORD(v12) = StringW, (StringW & 0x1FFF) == 9))
        {
          v68 = heap_Alloc(*(a1 + 8), LODWORD(__s2[0]));
          *(*(v52 + 1) + 16 * *v52 - 16) = v68;
          LODWORD(v12) = -2065686518;
          if (v68)
          {
            RiffStringTable = ssftriff_reader_ReadStringW(a3, v64, v65, 0, v68, __s2);
            if ((RiffStringTable & 0x80000000) == 0)
            {
              RiffStringTable = uselect_LoadRiffStringTable(a1, a3, &v64[!(__s2[0] & 1) + 2 + LODWORD(__s2[0]) - 1], (__s2[0] & 1) + v65 + ~(LODWORD(__s2[0]) + 1), (*(v52 + 1) + 16 * *v52 - 8));
            }

            LODWORD(v12) = RiffStringTable;
          }
        }

        goto LABEL_259;
      }

      if (!cstdlib_strcmp(__src, "VCAT"))
      {
        v152[0] = 0;
        ssftriff_reader_GetChunkData(a3, v148, v152, v31);
        if ((v42 & 0x80000000) != 0)
        {
          return v42;
        }

        v38 = v9;
        v39 = v8;
        v40 = a3;
        v41 = 2;
LABEL_223:
        LODWORD(v12) = select_bet6_ParseRiff(v38, v39, v40, v41, a5);
        goto LABEL_403;
      }

      v32 = v10;
      v33 = v148;
      if (cstdlib_strcmp(__src, "VBOP"))
      {
        if (!cstdlib_strcmp(__src, "PRE3"))
        {
          LOWORD(__s2[0]) = 0;
          v152[0] = 0;
          ssftriff_reader_GetChunkData(a3, v33, v152, v35);
          LODWORD(v12) = v53;
          if ((v53 & 0x80000000) == 0 && v33 >= 2)
          {
            v54 = 0;
            v55 = v33 >> 1;
            do
            {
              cstdlib_memcpy(__s2, v152[0] + 2 * v54, 2uLL);
              if (LOWORD(__s2[0]) < 0x47u)
              {
                *(v140 + 4 * LOWORD(__s2[0])) = 1;
              }

              else
              {
                log_OutText(*(v9 + 32), "SELECT_BET6", 3, 0, "Unknown preselection feature: %u for %s", v56, v57, v58, LOWORD(__s2[0]));
              }

              ++v54;
            }

            while (v55 > v54);
          }

          goto LABEL_353;
        }

        if (!cstdlib_strcmp(__src, "TRA3"))
        {
          LOWORD(__s2[0]) = 0;
          v152[0] = 0;
          ssftriff_reader_GetChunkData(a3, v33, v152, v36);
          LODWORD(v12) = v106;
          if ((v106 & 0x80000000) == 0 && v33 >= 2)
          {
            v107 = 0;
            v108 = v33 >> 1;
            do
            {
              cstdlib_memcpy(__s2, v152[0] + 2 * v107, 2uLL);
              if (LOWORD(__s2[0]) < 8u)
              {
                *(v133 + 4 * LOWORD(__s2[0])) = 1;
              }

              else
              {
                log_OutText(*(v9 + 32), "SELECT_BET6", 3, 0, "Unknown transition feature: %u for %s", v109, v110, v111, LOWORD(__s2[0]));
              }

              ++v107;
            }

            while (v108 > v107);
          }

          goto LABEL_353;
        }

        if (cstdlib_strcmp(__src, "PHM3"))
        {
          LODWORD(v12) = 0;
          v10 = v32;
          v6 = a4;
          goto LABEL_25;
        }

        v152[0] = 0;
        ssftriff_reader_GetChunkData(a3, v33, v152, v37);
        LODWORD(v12) = v118;
        if ((v118 & 0x80000000) == 0)
        {
          v47 = v152[0];
          if (v33 >= 0x100)
          {
            v48 = 256;
          }

          else
          {
            v48 = v33;
          }

          v49 = 7492;
LABEL_237:
          cstdlib_memcpy((v8 + v49), v47, v48);
        }
      }

      else
      {
        v152[0] = 0;
        ssftriff_reader_GetChunkData(a3, v33, v152, v34);
        LODWORD(v12) = v46;
        if ((v46 & 0x80000000) == 0)
        {
          v47 = v152[0];
          if (v33 >= 0xF8)
          {
            v48 = 248;
          }

          else
          {
            v48 = v33;
          }

          v49 = 11844;
          goto LABEL_237;
        }
      }

LABEL_353:
      v10 = v32;
      v6 = a4;
      goto LABEL_403;
    }

    if (v6)
    {
      if (cstdlib_strcmp(a5, "FEEX") || cstdlib_strcmp(a5 + 5, "VCAT"))
      {
        goto LABEL_25;
      }

      v43 = v148;
      v152[0] = 0;
      ssftriff_reader_GetChunkData(a3, v148, v152, v20);
      LODWORD(v12) = v44;
      if ((v44 & 0x80000000) == 0)
      {
        if (!cstdlib_strcmp(__src, "ALPH"))
        {
          v112 = v10;
          LODWORD(__s2[0]) = 257;
          LODWORD(v12) = ssftriff_reader_ReadStringZ(a3, v152[0], v43, 0, v130, __s2);
          v9 = a1;
          if ((v12 & 0x80000000) == 0)
          {
            *(v144 + 3636) = 255;
            if (cstdlib_strlen(v130))
            {
              v113 = 0;
              v114 = 1;
              do
              {
                v115 = v130[v113];
                if (v115 < *(v144 + 3636))
                {
                  *(v144 + 3636) = v115;
                  v115 = v130[v113];
                }

                if (v115 > *(v144 + 3637))
                {
                  *(v144 + 3637) = v115;
                  v115 = v130[v113];
                }

                *(v141 + v115) = v114 - 1;
                v113 = v114;
                v125 = cstdlib_strlen(v130) > v114++;
              }

              while (v125);
            }
          }

          v10 = v112;
          v6 = a4;
          goto LABEL_403;
        }

        if (cstdlib_strcmp(__src, "VOIC"))
        {
          if (cstdlib_strcmp(__src, "COVO"))
          {
            if (cstdlib_strcmp(__src, "PLOS"))
            {
              if (cstdlib_strcmp(__src, "DIFF"))
              {
                if (cstdlib_strcmp(__src, "TAGA"))
                {
                  v45 = 0;
                  goto LABEL_399;
                }

                v59 = v152[0];
                v61 = (v8 + 11808);
                v62 = a1;
                v63 = a3;
                v60 = v43;
                v9 = a1;
LABEL_249:
                LODWORD(v12) = uselect_LoadRiffStringTable(v62, v63, v59, v60, v61);
                goto LABEL_403;
              }

              LODWORD(__s2[0]) = 64;
              v119 = v152[0];
              v120 = 11744;
            }

            else
            {
              LODWORD(__s2[0]) = 257;
              v119 = v152[0];
              v120 = 10717;
            }
          }

          else
          {
            LODWORD(__s2[0]) = 257;
            v119 = v152[0];
            v120 = 10460;
          }
        }

        else
        {
          LODWORD(__s2[0]) = 257;
          v119 = v152[0];
          v120 = 10203;
        }

        LODWORD(v12) = ssftriff_reader_ReadStringZ(a3, v119, v43, 0, (v8 + v120), __s2);
      }

      v45 = 1;
LABEL_399:
      v9 = a1;
      if (v45)
      {
        goto LABEL_403;
      }

LABEL_25:
      select_bet6_loc_LogChunkStack(v9, v8, a5);
      goto LABEL_403;
    }

    if (!cstdlib_strcmp(__src, "VCFG"))
    {
      v21 = v148;
      v151 = 0;
      *v149 = 0;
      __s = 0;
      ssftriff_reader_GetChunkData(a3, v148, v149, v13);
      v23 = v22;
      if ((v22 & 0x80000000) == 0)
      {
        v24 = heap_StrDup(*(v9 + 8), "PHRASE");
        *(v8 + 216) = v24;
        LODWORD(v12) = -2065686518;
        if (!v24)
        {
LABEL_371:
          v11 = v143;
          v10 = v145;
          goto LABEL_403;
        }

        *(v8 + 224) = 1000;
        if (v21)
        {
          v25 = 0;
          while (1)
          {
            LOBYTE(v152[0]) = 0;
            LOBYTE(__s2[0]) = 0;
            v151 = 64;
            v26 = ssftriff_reader_ReadStringZ(a3, *v149, v21, v25, __s2, &v151);
            if (v26 < 0)
            {
              break;
            }

            v27 = v151 + v25;
            v151 = 256;
            v23 = ssftriff_reader_ReadStringZ(a3, *v149, v21, v27, v152, &v151);
            if (v23 < 0)
            {
              goto LABEL_364;
            }

            v28 = v151;
            cstdlib_strcpy(__dst, "bet3voiceoverride.");
            cstdlib_strcat(__dst, __s2);
            if ((paramc_ParamGetStr(*(v9 + 40), __dst, &__s) & 0x80000000) != 0 || !__s || !*__s)
            {
              __s = v152;
            }

            if (!cstdlib_strcmp(__s2, "ALPHA"))
            {
              *(v8 + 136) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BETA"))
            {
              *(v8 + 140) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "VUV_REL_AMP"))
            {
              *(v8 + 148) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "VOL"))
            {
              *(v8 + 172) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MVF_BOOST"))
            {
              *(v8 + 176) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FS"))
            {
              *(v8 + 144) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "ORDER"))
            {
              *(v8 + 152) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE"))
            {
              *(v8 + 160) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SPEECH_F0_MEAN"))
            {
              *(v8 + 192) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PDF_VARIANCE_TYPE"))
            {
              *(v8 + 208) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BREAKER"))
            {
              v29 = *(v8 + 216);
              if (v29)
              {
                heap_Free(*(v9 + 8), v29);
              }

              v30 = heap_StrDup(*(v9 + 8), __s);
              *(v8 + 216) = v30;
              if (!v30)
              {
                LODWORD(v12) = -2065686518;
                goto LABEL_371;
              }
            }

            if (!cstdlib_strcmp(__s2, "BRK_LENGTH"))
            {
              *(v8 + 224) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BRK_TC"))
            {
              *(v8 + 228) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BRK_ZPAD"))
            {
              *(v8 + 232) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "ALGN_ST"))
            {
              *(v8 + 248) = LH_atoi(__s) != 0;
            }

            if (!cstdlib_strcmp(__s2, "ALGN_PH"))
            {
              *(v8 + 252) = LH_atoi(__s) != 0;
            }

            if (!cstdlib_strcmp(__s2, "VSYNTH"))
            {
              *(v8 + 7784) = heap_StrDup(*(v9 + 8), __s);
            }

            if (!cstdlib_strcmp(__s2, "FFTSZ"))
            {
              *(v8 + 7816) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "EN_MEAN"))
            {
              *(v8 + 7820) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FEED_EN_MEAN_LOOKAHEAD"))
            {
              *(v8 + 7828) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "COUNT_UV_DISTANCE"))
            {
              *(v8 + 7824) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SAMPLE_RATE"))
            {
              *(v8 + 7832) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENERGY"))
            {
              *(v8 + 7836) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_SIZE"))
            {
              *(v8 + 7840) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SPCPAR_FREQWARP"))
            {
              *(v8 + 7844) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENHANCE_ALPHA"))
            {
              *(v8 + 7848) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENHANCE_ALPHA_UNVOICED"))
            {
              *(v8 + 7852) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE_MRCC"))
            {
              *(v8 + 7856) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_PHS_EXTRAP_USE"))
            {
              *(v8 + 7860) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_NOISE_FREQ_TH"))
            {
              *(v8 + 7864) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_USE"))
            {
              *(v8 + 7868) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_MVF_USE"))
            {
              *(v8 + 7872) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_LO"))
            {
              *(v8 + 7876) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_HI"))
            {
              *(v8 + 7880) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_UNIFORM"))
            {
              *(v8 + 7884) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_USE"))
            {
              *(v8 + 7888) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_MVF_USE"))
            {
              *(v8 + 7892) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_MIXHARM_LO"))
            {
              *(v8 + 7896) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_MIXHARM_HI"))
            {
              *(v8 + 7900) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_RES_LO"))
            {
              *(v8 + 7904) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_RES_HI"))
            {
              *(v8 + 7908) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_ALIGN_CUTOFF_FREQ"))
            {
              *(v8 + 7912) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF"))
            {
              *(v8 + 7916) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ATTENUATE_UV"))
            {
              *(v8 + 7920) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_SKIP_WEAK_HARM_RATIO"))
            {
              *(v8 + 7924) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN"))
            {
              *(v8 + 7948) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_THR"))
            {
              *(v8 + 7952) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_RATIO_EN_THR"))
            {
              *(v8 + 7956) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_MVF_THR"))
            {
              *(v8 + 7960) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_BY_LOW_EN"))
            {
              *(v8 + 7964) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_BY_RATIO_EN"))
            {
              *(v8 + 7968) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_0"))
            {
              *(v8 + 7972) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_1"))
            {
              *(v8 + 7976) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_2"))
            {
              *(v8 + 7980) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_3"))
            {
              *(v8 + 7984) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_BITS"))
            {
              *(v8 + 7988) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PHSPAR_USE"))
            {
              *(v8 + 7992) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_USE"))
            {
              *(v8 + 7996) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "USE_LOG2"))
            {
              *(v8 + 8000) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENHANCE_POWSPC"))
            {
              *(v8 + 8004) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_ATTENUATE"))
            {
              *(v8 + 8008) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_ATTENUATE_LO"))
            {
              *(v8 + 8012) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_ATTENUATE_HI"))
            {
              *(v8 + 8016) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_APPLY_DEEMP"))
            {
              *(v8 + 8020) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_HI_RES_ALIGN"))
            {
              *(v8 + 8024) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FAST_AUX_HARM"))
            {
              *(v8 + 8028) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FIX_OLA"))
            {
              *(v8 + 8032) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DC_GUARD_VOICED"))
            {
              *(v8 + 8036) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DC_GUARD_UNVOICED"))
            {
              *(v8 + 8040) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_NYQUIST_GUARD"))
            {
              *(v8 + 8044) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PHSPAR_SIZE"))
            {
              *(v8 + 8048) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PHSPAR_FLIP"))
            {
              *(v8 + 8052) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENERGY_NORM_TH"))
            {
              *(v8 + 8056) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SPCPAR_FREQWARP_ALPHA"))
            {
              *(v8 + 8060) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_PHS_ALIGN_WITH_CONST"))
            {
              *(v8 + 8064) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_NORM_GLOBAL"))
            {
              *(v8 + 8068) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEEMP_COEF"))
            {
              *(v8 + 8072) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_USE_NOISE_MODULATION"))
            {
              *(v8 + 8076) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_NOISE_MODULATION_FACTOR"))
            {
              *(v8 + 8080) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MAX_FRAME_SIZE"))
            {
              *(v8 + 8084) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MIN_FRAME_SIZE"))
            {
              *(v8 + 8088) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MIN_FFT_SIZE"))
            {
              *(v8 + 8092) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE_INC_NUM"))
            {
              *(v8 + 8096) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE_DEC_NUM"))
            {
              *(v8 + 8100) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "ANAL_FFT_SIZE"))
            {
              *(v8 + 8104) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FFT_SIZE"))
            {
              *(v8 + 8108) = LH_atoi(__s);
            }

            v25 = v28 + v27;
            if (v25 >= v21)
            {
              goto LABEL_364;
            }
          }

          v23 = v26;
        }

LABEL_364:
        *(v8 + 168) = 0;
        *(v8 + 180) = 0;
        *(v8 + 184) = 0;
        cstdlib_strcpy(__dst, "bet3voiceoverride.");
        cstdlib_strcat(__dst, "BREAKER");
        if ((paramc_ParamGetStr(*(v9 + 40), __dst, &__s) & 0x80000000) == 0)
        {
          v116 = *(v8 + 216);
          if (v116)
          {
            heap_Free(*(v9 + 8), v116);
            *(v8 + 216) = 0;
          }

          v117 = heap_StrDup(*(v9 + 8), __s);
          *(v8 + 216) = v117;
          LODWORD(v12) = -2065686518;
          if (!v117)
          {
            goto LABEL_371;
          }
        }

        cstdlib_strcpy(__dst, "bet3voiceoverride.");
        cstdlib_strcat(__dst, "BRK_LENGTH");
        if ((paramc_ParamGetStr(*(v9 + 40), __dst, &__s) & 0x80000000) == 0)
        {
          *(v8 + 224) = LH_atoi(__s);
        }
      }

      LODWORD(v12) = v23;
      goto LABEL_371;
    }

    if (!cstdlib_strcmp(__src, "EQUA"))
    {
      LODWORD(v12) = ssftriff_reader_DetachChunkData(a3, (v135 + 8 * v10[124]), (v8 + 7792));
      if ((v12 & 0x80000000) == 0)
      {
        ++v10[124];
      }

      goto LABEL_403;
    }

    if (!cstdlib_strcmp(__src, "FEEX") || !cstdlib_strcmp(__src, "NNFE"))
    {
      v38 = v9;
      v39 = v8;
      v40 = a3;
      v41 = 1;
      goto LABEL_223;
    }

    v15 = v148;
    *__dst = 0;
    ssftriff_reader_GetChunkData(a3, v148, __dst, v14);
    LODWORD(v12) = v16;
    if (v16 < 0)
    {
      goto LABEL_384;
    }

    if (cstdlib_strcmp(__src, "B6PM"))
    {
      if (cstdlib_strcmp(__src, "B6DF") && cstdlib_strcmp(__src, "B6AF"))
      {
        if (cstdlib_strcmp(__src, "B6DM") && cstdlib_strcmp(__src, "B6AM") && cstdlib_strcmp(__src, "B6VM"))
        {
          v17 = 0;
          goto LABEL_394;
        }

        v121 = v129;
        if (cstdlib_strcmp(__src, "B6DM"))
        {
          v121 = v128;
          if (cstdlib_strcmp(__src, "B6AM"))
          {
            *(v8 + 9240) = 1;
            v121 = v127;
          }
        }

        v122 = *(v8 + 128);
        v9 = a1;
        if (!v122)
        {
          LODWORD(v12) = -2065686521;
          v17 = 1;
          goto LABEL_402;
        }

        v123 = (**(v122 + 8))(*(v122 + 16), v15);
        *v121 = v123;
        if (!v123)
        {
          v17 = 1;
          LODWORD(v12) = -2065686518;
          goto LABEL_402;
        }

        cstdlib_memcpy(v123, *__dst, v15);
        *(v121 + 8) = v15;
LABEL_384:
        v17 = 1;
        goto LABEL_402;
      }

      v70 = cstdlib_strcmp(__src, "B6DF");
      v71 = 8136;
      if (!v70)
      {
        v71 = 8120;
      }

      v138 = v71;
      v72 = *__dst;
      v73 = **__dst;
      v74 = *(*__dst + 4);
      v75 = a1;
      v76 = heap_Calloc(*(a1 + 8), v73, 16);
      LODWORD(v12) = -2065686518;
      if (v76)
      {
        v80 = 0;
        v81 = v72 + 8;
        LODWORD(v82) = 0;
        if (v15 >= 0x18 && v73)
        {
          v83 = 0;
          v82 = 0;
          v80 = 0;
          do
          {
            v84 = (v76 + v83);
            *v84 = *(v72 + v83 + 8);
            v85 = *(v72 + v83 + 12);
            v84[1] = v85;
            v86 = *(v72 + v83 + 16);
            v84[2] = v86;
            v84[3] = *(v72 + v83 + 20);
            if (v85)
            {
              v87 = v86;
            }

            else
            {
              v87 = 1;
            }

            v80 += v87;
            ++v82;
            v88 = v83 + 16;
            if (v82 >= v73)
            {
              break;
            }

            v89 = v83 + 40;
            v83 += 16;
          }

          while (v89 <= v15);
          v81 = v72 + v88 + 8;
        }

        if (v82 == v73 && v81 - v72 == v15 && v80 == v74)
        {
          LODWORD(v12) = 0;
          v90 = v8 + v138;
          *v90 = v76;
          *(v90 + 8) = v73;
          *(v90 + 12) = v74;
          v17 = 1;
          v9 = a1;
LABEL_388:
          v10 = v145;
          goto LABEL_402;
        }

        v75 = a1;
        heap_Free(*(a1 + 8), v76);
        LODWORD(v12) = -2065686262;
      }

      log_OutText(*(v75 + 32), "SELECT_BET6", 3, 0, "Error parsing Siren NN feature list (chunk %s)", v77, v78, v79, __src);
      v17 = 1;
      v9 = v75;
      goto LABEL_388;
    }

    memset(__s2, 0, sizeof(__s2));
    if (v15 < 1)
    {
      goto LABEL_393;
    }

    v91 = 0;
    v134 = -1;
    v131 = a5;
    v132 = v8;
    while (1)
    {
      LODWORD(__s) = 64;
      StringZ = ssftriff_reader_ReadStringZ(a3, *__dst, v15, v91, v152, &__s);
      if (StringZ < 0)
      {
        break;
      }

      v93 = __s + v91;
      LODWORD(__s) = 64;
      v139 = v93;
      LODWORD(v12) = ssftriff_reader_ReadStringZ(a3, *__dst, v15, v93, __s2, &__s);
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_392;
      }

      v136 = __s;
      if (!cstdlib_strcmp(v152, "SILENCE_DURATION"))
      {
        v134 = LH_atoi(__s2);
      }

      v8 = v132;
      if (!cstdlib_strcmp(v152, "SILENCE_DURATION") && v134 != -1)
      {
        *(v132 + 8200) = 1;
        *v144 = v134;
      }

      if (!cstdlib_strcmp(v152, "ACOUSTIC_INFERENCE_OVERLAP_NFRAMES"))
      {
        *(v132 + 9280) = LH_atoi(__s2);
      }

      if (!cstdlib_strcmp(v152, "VOCODER_OVERLAP_NFRAMES"))
      {
        *(v132 + 9284) = LH_atoi(__s2);
      }

      if (!cstdlib_strcmp(v152, "REAL_TIME_FACTOR"))
      {
        cstdlib_atof(__s2);
        *&v94 = v94;
        *(v132 + 9288) = LODWORD(v94);
      }

      if (!cstdlib_strcmp(v152, "LATENCY"))
      {
        *(v132 + 9292) = LH_atou(__s2);
      }

      if (!cstdlib_strcmp(v152, "NNVOCODER_OVERLAP_NFRAMES"))
      {
        *(v132 + 9300) = LH_atou(__s2);
      }

      if (!cstdlib_strcmp(v152, "NNVOCODER_REAL_TIME_FACTOR"))
      {
        cstdlib_atof(__s2);
        *&v95 = v95;
        *(v132 + 9304) = LODWORD(v95);
      }

      if (!cstdlib_strcmp(v152, "NNVOCODER_LATENCY"))
      {
        *(v132 + 9308) = LH_atou(__s2);
      }

      if (!cstdlib_strcmp(v152, "NNVOCODER_THREADSN"))
      {
        *(v132 + 9296) = LH_atou(__s2);
      }

      if (!cstdlib_strcmp(v152, "NNVOCODER_BCHUNKING"))
      {
        *(v132 + 9312) = LH_atoi(__s2) != 0;
      }

      if (!cstdlib_strcmp(v152, "NNVOCODER_HOPSIZE"))
      {
        *(v132 + 9316) = LH_atou(__s2);
      }

      if (!cstdlib_strcmp(v152, "ACOUSTIC_OUTPUT_DIM"))
      {
        *(v132 + 9332) = LH_atou(__s2);
      }

      if (!cstdlib_strcmp(v152, "N_FRAME_INFERENCE"))
      {
        *(v132 + 9336) = LH_atou(__s2);
      }

      if (!cstdlib_strcmp(v152, "B_NN_SYNTH"))
      {
        *(v132 + 9240) = LH_atoi(__s2) != 0;
      }

      if (!cstdlib_strcmp(v152, "B_SEQ2SEQ_ACOUSTIC"))
      {
        *(v132 + 9244) = LH_atoi(__s2) != 0;
      }

      if (!cstdlib_strcmp(v152, "B_SEQ2SEQ_NNVOCODER"))
      {
        *(v132 + 9248) = LH_atoi(__s2) != 0;
      }

      if (!cstdlib_strcmp(v152, "B_SEQ2SEQ_NNVOCODER_MULTIBAND"))
      {
        *(v132 + 9252) = LH_atoi(__s2) != 0;
      }

      if (!cstdlib_strcmp(v152, "B_PARALLEL_NNVOCODER"))
      {
        *(v132 + 9256) = LH_atoi(__s2) != 0;
      }

      if (!cstdlib_strcmp(v152, "B_TACOTRON_STREAM_DECODER"))
      {
        *(v132 + 9260) = LH_atoi(__s2) != 0;
      }

      if (!cstdlib_strcmp(v152, "B_CHUNK_SEARCH_BACKWARDS"))
      {
        *(v132 + 9276) = LH_atoi(__s2) != 0;
      }

      if (!cstdlib_strcmp(v152, "TACOTRON_PHONE2FRAME_SCALE"))
      {
        *(v132 + 9264) = LH_atou(__s2);
      }

      if (!cstdlib_strcmp(v152, "TACOTRON_PCM_SIL_THRESHOLD"))
      {
        *(v132 + 9268) = LH_atou(__s2);
      }

      v96 = v6;
      if (!cstdlib_strcmp(v152, "TACOTRON_CHUNK_SEARCH_PHONES"))
      {
        *(v132 + 9272) = LH_atou(__s2);
      }

      v91 = v136 + v139;
      if (!cstdlib_strcmp(v152, "FIR_TAP_NUM"))
      {
        v97 = *__dst;
        v98 = LH_atou(__s2);
        v99 = v98;
        if (v98 <= *(v132 + 9328))
        {
          *(v132 + 9328) = v98;
          if (v98)
          {
            v101 = v98;
LABEL_337:
            v102 = 0;
            do
            {
              LODWORD(__s) = 64;
              if ((ssftriff_reader_ReadStringZ(a3, v97, v15, v91, v152, &__s) & 0x80000000) != 0)
              {
                v103 = 0;
              }

              else
              {
                v91 += __s;
                LODWORD(__s) = 64;
                v103 = ssftriff_reader_ReadStringZ(a3, v97, v15, v91, __s2, &__s) >= 0;
              }

              cstdlib_atof(__s2);
              *&v104 = v104;
              *(*(v132 + 9320) + 4 * v102) = LODWORD(v104);
              if (!v103)
              {
                break;
              }

              ++v102;
              v105 = __s;
              if (v91 >= v15)
              {
                v105 = 0;
              }

              v91 += v105;
            }

            while (v101 != v102);
          }
        }

        else
        {
          v100 = heap_Realloc(*(a1 + 8), *(v132 + 9320), 4 * v98);
          *(v132 + 9320) = v100;
          if (v100)
          {
            v101 = v99;
            *(v132 + 9328) = v99;
            goto LABEL_337;
          }
        }
      }

      v6 = v96;
      a5 = v131;
      v10 = v145;
      if (v91 >= v15)
      {
        goto LABEL_393;
      }
    }

    LODWORD(v12) = StringZ;
LABEL_392:
    v8 = v132;
LABEL_393:
    v17 = 1;
LABEL_394:
    v9 = a1;
LABEL_402:
    v11 = v143;
    if (!v17)
    {
      goto LABEL_25;
    }

LABEL_403:
    v124 = ssftriff_reader_CloseChunk(a3);
    v125 = v12 > -1 && v124 < 0;
    if (v125)
    {
      v12 = v124;
    }

    else
    {
      v12 = v12;
    }
  }

  while ((v12 & 0x80000000) == 0);
  if ((v12 & 0x1FFF) == 0x14)
  {
    v12 = 0;
    a5[v11] = 0;
  }

  return v12;
}

uint64_t select_bet6_loc_LogChunkStack(uint64_t a1, uint64_t a2, const char *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, "");
  if (*a3)
  {
    v8 = 1;
    v9 = a3;
    do
    {
      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, v9);
      v9 = &a3[5 * v8++];
    }

    while (*v9);
  }

  return log_OutText(*(a1 + 32), "SELECT_BET6", 3, 0, "Unknown data: %s for %s", v5, v6, v7, __dst);
}

void *select_bet6_loc_VoiceClose(void *result, unsigned __int16 *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      if (*(a2 + 1019))
      {
        (*(v4[1] + 48))(v4[2]);
        *(a2 + 1019) = 0;
        *(a2 + 2040) = 0;
      }

      if (*(a2 + 1021))
      {
        (*(v4[1] + 48))(v4[2]);
        *(a2 + 1021) = 0;
        *(a2 + 2044) = 0;
      }

      if (*(a2 + 1023))
      {
        (*(v4[1] + 48))(v4[2]);
        *(a2 + 1023) = 0;
        *(a2 + 2048) = 0;
      }

      fi_rsc_destroy(v4);
    }

    v5 = *(a2 + 1476);
    if (v5 && *v5)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        *&a2[4 * v6 + 2720] = 0;
        v5 = *(a2 + 1476);
        v6 = v7;
      }

      while (v5[v7++]);
    }

    uselect_FreeRiffStringTable(v3, v5);
    uselect_FreeRiffStringTable(v3, *(a2 + 1477));
    select_bet6_loc_FreeSirenFeatList(v3, (a2 + 4060));
    select_bet6_loc_FreeSirenFeatList(v3, (a2 + 4068));
    v9 = *(a2 + 27);
    if (v9)
    {
      heap_Free(v3[1], v9);
    }

    v10 = *(a2 + 1165);
    if (v10)
    {
      heap_Free(v3[1], v10);
      *(a2 + 1165) = 0;
    }

    *(a2 + 27) = 0;
    if (a2[18996])
    {
      v11 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*&a2[4 * v11++ + 18892]);
      }

      while (v11 < a2[18996]);
    }

    a2[18996] = 0;
    *a2 = 0;
    if (*(a2 + 9444))
    {
      uselect_FreeRiffStringTable(v3, *(a2 + 4720));
      v12 = *(a2 + 4719);
      if (v12)
      {
        if (a2[18872])
        {
          v13 = 0;
          v14 = 0;
          do
          {
            v15 = *(a2 + 4719);
            v16 = *(v15 + v13);
            if (v16)
            {
              heap_Free(v3[1], v16);
              v15 = *(a2 + 4719);
            }

            uselect_FreeRiffStringTable(v3, *(v15 + v13 + 8));
            ++v14;
            v13 += 16;
          }

          while (v14 < a2[18872]);
          v12 = *(a2 + 4719);
        }

        heap_Free(v3[1], v12);
        *(a2 + 4719) = 0;
        a2[18872] = 0;
      }
    }

    cstdlib_memset(a2, 0, 0x9470uLL);
    v17 = v3[1];

    return heap_Free(v17, a2);
  }

  return result;
}

void **select_bet6_loc_FreeSirenFeatList(void **result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = *a2;
    if (*a2)
    {
      cstdlib_memset(result, 0, 16 * *(a2 + 8));
      heap_Free(v3[1], *a2);

      return cstdlib_memset(a2, 0, 8uLL);
    }
  }

  return result;
}

uint64_t select_bet6_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &ISelect_Bet6;
  return result;
}

uint64_t select_bet6_ClassOpen(_WORD *a1, int a2, uint64_t a3)
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
    *(a3 + 8) = 135969;
  }

  return result;
}

uint64_t select_bet6_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v5 = 2229280775;
  memset(v42, 0, sizeof(v42));
  if (a5)
  {
    v41[0] = 0;
    v41[1] = 0;
    inited = InitRsrcFunction(a3, a4, &v40);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v12 = 135970;
      if ((safeh_HandleCheck(a1, a2, 135969, 416) & 0x80000000) == 0)
      {
        *a5 = 0;
        *(a5 + 8) = 0;
        log_OutText(*(v40 + 32), "SELECT_BET6", 4, 0, "Entering select_bet6_ObjOpen", v13, v14, v15, v35);
        v16 = heap_Calloc(*(v40 + 8), 1, 4680);
        v21 = v40;
        if (!v16)
        {
          log_OutPublic(*(v40 + 32), "SELECT_BET6", 72000, 0, v17, v18, v19, v20, v36);
          return 2229280778;
        }

        v22 = v16;
        *v16 = a1;
        v16[1] = v21;
        if (log_GetLogLevel(*(v40 + 32)) >= 2)
        {
          compstats_ObjOpen(a3, a4, 5u, (v22 + 583));
        }

        Object = objc_GetObject(*(v40 + 48), "SYNTHSTREAM", &v39);
        if ((Object & 0x80000000) == 0)
        {
          v22[463] = *(v39 + 8);
          Object = objc_GetObject(*(v40 + 48), "LINGDB", &v39);
          if ((Object & 0x80000000) == 0)
          {
            v28 = v40;
            v22[3] = *(v39 + 8);
            betX_CreateRegularBrokerString(v28, 0, v42, 0x80uLL);
            v5 = select_bet6_VoiceOpen(*v22, v22[1], v42, v41);
            if ((v5 & 0x80000000) != 0)
            {
              goto LABEL_23;
            }

            v29 = v41[0];
            v22[2] = v41[0];
            if (!v29)
            {
              log_OutPublic(*(v22[1] + 32), "SELECT_BET6", 72001, 0, v24, v25, v26, v27, v36);
              goto LABEL_25;
            }

            if (*(v29 + 37776))
            {
              v30 = v29 + 37744;
            }

            else
            {
              v30 = 0;
            }

            Object = select_bet6_FeatureExtractObjOpen(a3, a4, v22[463], v22[3], v29 + 9344, v29 + 136, v30, v22 + 575);
            if ((Object & 0x80000000) == 0)
            {
              v31 = *(v40 + 40);
              v37 = v22;
              v38 = xmmword_287EF0A58;
              v32 = paramc_ListenerAdd(v31, "waitfactor", &v37);
              v33 = v22[1];
              if ((v32 & 0x80000000) != 0)
              {
                v5 = v32;
                goto LABEL_24;
              }

              if ((paramc_ParamGetInt(*(v33 + 40), "waitfactor", v22 + 1155) & 0x80000000) != 0)
              {
                *(v22 + 1155) = 2;
              }

              v5 = siren_pipeline_Init(v40, (v22 + 583), v22[2] + 128, v22 + 576);
              if ((v5 & 0x80000000) == 0)
              {
                goto LABEL_25;
              }

LABEL_23:
              v33 = v22[1];
LABEL_24:
              log_OutPublic(*(v33 + 32), "SELECT_BET6", 72001, "%s%x", v24, v25, v26, v27, "lhError");
              *a5 = v22;
              *(a5 + 8) = 135970;
              select_bet6_ObjClose(v22, *(a5 + 8));
              v22 = 0;
              v12 = 0;
LABEL_25:
              *a5 = v22;
              *(a5 + 8) = v12;
              log_OutText(*(v40 + 32), "SELECT_BET6", 4, 0, "select_bet6_ObjOpen: %x", v25, v26, v27, v5);
              return v5;
            }
          }
        }

        v5 = Object;
        goto LABEL_23;
      }

      return 2229280776;
    }
  }

  return v5;
}

uint64_t select_bet6_ObjClose(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 135970, 4680) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v30 = 0;
  v6 = a1[1];
  log_OutText(*(v6 + 32), "SELECT_BET6", 4, 0, "Entering select_bet6_ObjClose", v3, v4, v5, v26);
  v29 = a1[2];
  LODWORD(v30) = 135971;
  LODWORD(v7) = select_bet6_VoiceClose(*a1, &v29);
  v8 = a1[583];
  if (v8)
  {
    compstats_ObjClose(v8, a1[584]);
  }

  v9 = *(v6 + 40);
  v27 = a1;
  v28 = xmmword_287EF0A58;
  v10 = paramc_ListenerRemove(v9, "waitfactor", &v27);
  if (v7 > -1 && v10 < 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v7;
  }

  v12 = a1[576];
  if (v12)
  {
    v13 = siren_pipeline_DeInit(v12);
    if (v7 > -1 && v13 < 0)
    {
      v7 = v13;
    }

    else
    {
      v7 = v7;
    }
  }

  v15 = a1[575];
  if (v15)
  {
    ObjClose = select_bet6_FeatureExtractObjClose(v15);
    if (v7 > -1 && ObjClose < 0)
    {
      v7 = ObjClose;
    }

    else
    {
      v7 = v7;
    }
  }

  if (a1[3])
  {
    v18 = objc_ReleaseObject(*(v6 + 48), "LINGDB");
    if (v7 > -1 && v18 < 0)
    {
      v7 = v18;
    }

    else
    {
      v7 = v7;
    }
  }

  if (a1[463])
  {
    v20 = objc_ReleaseObject(*(v6 + 48), "SYNTHSTREAM");
    if (v7 > -1 && v20 < 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v7;
    }
  }

  heap_Free(*(v6 + 8), a1);
  log_OutText(*(v6 + 32), "SELECT_BET6", 4, 0, "Leaving select_bet6_ObjClose: %x", v22, v23, v24, v7);
  return v7;
}

uint64_t select_bet6_ObjReopen(uint64_t *a1, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__s1 = 0u;
  v23 = 0u;
  if ((safeh_HandleCheck(a1, a2, 135970, 4680) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v20 = 0;
  v21 = 0;
  log_OutText(*(a1[1] + 32), "SELECT_BET6", 4, 0, "Entering select_bet6_ObjReopen", v3, v4, v5, v19);
  LODWORD(v9) = betX_CreateRegularBrokerString(a1[1], 0, __s1, 0x80uLL);
  if ((v9 & 0x80000000) == 0 && (v10 = a1[2]) != 0 && cstdlib_strcmp(__s1, v10))
  {
    v11 = siren_pipeline_DeInit(a1[576]);
    if (v11 < 0)
    {
      LODWORD(v9) = v11;
    }

    v20 = a1[2];
    LODWORD(v21) = 135971;
    v12 = select_bet6_VoiceClose(*a1, &v20);
    if (v12 < 0 || (v12 = select_bet6_VoiceOpen(*a1, a1[1], __s1, &v20), v12 < 0))
    {
      ObjReopen = v12;
    }

    else
    {
      v13 = v20;
      a1[2] = v20;
      if ((siren_pipeline_Init(a1[1], (a1 + 583), v13 + 128, a1 + 576) & 0x80000000) != 0)
      {
        select_bet6_VoiceClose(*a1, &v20);
      }

      v14 = a1[2];
      if (*(v14 + 37776))
      {
        v15 = v14 + 37744;
      }

      else
      {
        v15 = 0;
      }

      ObjReopen = select_bet6_FeatureExtractObjReopen(a1[575], v14 + 9344, v14 + 136, v15);
      if (ObjReopen < 0)
      {
        select_bet6_VoiceClose(*a1, &v20);
      }
    }
  }

  else
  {
    ObjReopen = 0;
  }

  if (ObjReopen >= 0 || v9 <= -1)
  {
    v9 = v9;
  }

  else
  {
    v9 = ObjReopen;
  }

  log_OutText(*(a1[1] + 32), "SELECT_BET6", 4, 0, "select_bet6_ObjReopen: %x", v6, v7, v8, v9);
  return v9;
}

uint64_t select_bet6_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 0;
  if ((safeh_HandleCheck(a1, a2, 135970, 4680) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  synstrmaux_InitStreamOpener(a1 + 3776, *(*(a1 + 8) + 32), "SELECT_BET6");
  synstrmaux_RegisterOutStream((a1 + 3776), "application/x-realspeak-markers-pp;version=4.0", a1 + 3712);
  synstrmaux_RegisterOutStream((a1 + 3776), "application/x-realspeak-bet6-speech-frames", a1 + 3728);
  synstrmaux_RegisterOutStream((a1 + 3776), "application/x-realspeak-bet6-sample-chunk", a1 + 3744);
  synstrmaux_RegisterOutStream((a1 + 3776), "applcation/x-realspeak-bet6-select-audio", a1 + 3760);
  v7 = synstrmaux_OpenStreams((a1 + 3776), *(a1 + 3704), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 3776), *(a1 + 3704));
  }

  *(a1 + 4632) = 0;
  *(a1 + 4640) = 0;
  *(a1 + 4624) = 0;
  *(a1 + 4616) = 0;
  *(a1 + 4648) = 0u;
  cstdlib_memset((a1 + 32), 0, 0xE48uLL);
  siren_pipeline_SetNFrameInfer(*(a1 + 4608), *(*(a1 + 16) + 9336));
  if ((paramc_ParamGetStr(*(*(a1 + 8) + 40), "bet6earlyemissionallowed", &v17) & 0x80000000) == 0 && v17 && *v17)
  {
    if (cstdlib_strchr("nNfF0", *v17))
    {
      v8 = 0;
    }

    else
    {
      cstdlib_strchr("yYtT12", *v17);
      v8 = 1;
    }

    siren_pipeline_SetChunking(*(a1 + 4608), v8);
    siren_pipeline_SetSecondaryChunking(*(a1 + 4608), v8);
  }

  if ((paramc_ParamGetStr(*(*(a1 + 8) + 40), "style", &v16) & 0x80000000) == 0 && v16 && *v16)
  {
    if (cstdlib_strchr("nN0", *v16))
    {
      v12 = 0;
    }

    else
    {
      cstdlib_strchr("lL1", *v16);
      v12 = 1;
    }

    siren_pipeline_SetSpeakerID(*(a1 + 4608), v12);
  }

  if (*(*(a1 + 16) + 9296) >= 2u && siren_pipeline_GetChunking(*(a1 + 4608)))
  {
    log_OutText(*(*(a1 + 8) + 32), "SELECT_BET6", 1, 0, "Multi-thread on, but chunking is inactive!", v9, v10, v11, v16);
  }

  v13 = *(a1 + 16);
  if (*(v13 + 9296) >= 2u && !*(v13 + 9312))
  {
    log_OutText(*(*(a1 + 8) + 32), "SELECT_BET6", 0, 0, "Multi-thread on , but NnvocoderChuning is inactive! Have a look on Riffpack config.", v9, v10, v11, v16);
  }

  if ((v7 & 0x80000000) == 0)
  {
    v14 = *(a1 + 4664);
    if (v14)
    {
      compstats_Reset(v14);
    }
  }

  siren_pipeline_reset_acoustic_net_seed(*(a1 + 4608));
  return v7;
}

uint64_t select_bet6_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v9 = safeh_HandleCheck(a1, a2, 135970, 4680);
  if ((v9 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

  v15 = *(a1 + 16);
  v16 = v15[2311];
  if (v15[2324] >= 2u)
  {
    v24 = v9;
    if (v16)
    {
      return v24;
    }

    v93 = 0;
    *a5 = 1;
    v30 = *(a1 + 4664);
    if (v30)
    {
      compstats_Start(v30, *(a1 + 4672), 0, v10, v11, v12, v13, v14);
    }

    v31 = *(a1 + 4616);
    if (v31 == 5 || !v31)
    {
      *(a1 + 4616) = 0;
      v32 = *(a1 + 4664);
      if (v32)
      {
        compstats_Start(v32, *(a1 + 4672), 1, v10, v11, v12, v13, v14);
      }

      v24 = select_bet6_FeatureExtractProcessStart(*(a1 + 4600), a3, a4, (a1 + 32), a1 + 3688, a1 + 3696, &v93);
      if ((v24 & 0x80000000) == 0)
      {
        if (*(a1 + 42) <= 1)
        {
          v25 = v93;
          if (v93)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        }

        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v65 = *(a1 + 4664);
    if (v65)
    {
      compstats_Start(v65, *(a1 + 4672), 2, v10, v11, v12, v13, v14);
    }

    v49 = siren_pipeline_Process(*(a1 + 4608), *(a1 + 4632), (a1 + 4640), (a1 + 4616), v11, v12, v13, v14);
    v50 = *(a1 + 4616);
    if (v49 || (v50 & 0xFFFFFFFE) != 4)
    {
LABEL_106:
      if (v50 == 6)
      {
        v70 = 1;
      }

      else
      {
        v70 = 4;
      }

      *a5 = v70;
      if (*(a1 + 4616) == 6)
      {
        v24 = v49 | 0x84E02000;
      }

      else
      {
        v24 = v49;
      }

      goto LABEL_153;
    }

    v66 = select_bet6_loc_WriteStreams_MT(a1);
    v24 = v66 & (v66 >> 31);
    if (*(a1 + 4616) != 5)
    {
      goto LABEL_151;
    }

    v56 = v66;
    v58 = select_bet6_loc_WriteStreams_MT(a1);
LABEL_93:
    if (v58 < 0 && v56 > -1)
    {
      LODWORD(v24) = v58;
    }

    if (*(a1 + 4640))
    {
      heap_Free(*(*(a1 + 8) + 8), *(a1 + 4632));
      *(a1 + 4624) = 0;
      *(a1 + 4632) = 0;
      *(a1 + 4640) = 0;
      *(a1 + 4656) = 0;
      *(a1 + 4648) = 0;
    }

    ProcessEnd = select_bet6_FeatureExtractProcessEnd(*(a1 + 4600), (a1 + 32), (a1 + 3688), (a1 + 3696));
    if (ProcessEnd < 0 && v24 > -1)
    {
      LODWORD(v24) = ProcessEnd;
    }

    goto LABEL_144;
  }

  if (!v16 && !v15[2312] && !v15[2314] && !v15[2315])
  {
LABEL_19:
    v95 = 0;
    *a5 = 1;
    v26 = *(a1 + 4664);
    if (v26)
    {
      compstats_Start(v26, *(a1 + 4672), 0, v10, v11, v12, v13, v14);
    }

    v27 = *(a1 + 4616);
    if (v27 == 5 || !v27)
    {
      *(a1 + 4616) = 0;
      v28 = *(a1 + 4664);
      if (v28)
      {
        compstats_Start(v28, *(a1 + 4672), 1, v10, v11, v12, v13, v14);
      }

      v24 = select_bet6_FeatureExtractProcessStart(*(a1 + 4600), a3, a4, (a1 + 32), a1 + 3688, a1 + 3696, &v95);
      if ((v24 & 0x80000000) == 0)
      {
        if (*(a1 + 42) <= 1)
        {
          v25 = v95;
          if (v95)
          {
            updated = select_bet6_loc_UpdateMarkers(a1, 1);
            select_bet6_loc_WriteStreams(a1, updated, 3u);
            goto LABEL_39;
          }

LABEL_42:
          *a5 = v25;
          v33 = select_bet6_FeatureExtractProcessEnd(*(a1 + 4600), (a1 + 32), (a1 + 3688), (a1 + 3696));
          if (v24 > -1 && v33 < 0)
          {
            v35 = v33;
          }

          else
          {
            v35 = v24;
          }

          v36 = (*(*(a1 + 24) + 64))(a3, a4);
          if (v35 > -1 && v36 < 0)
          {
            v24 = v36;
          }

          else
          {
            v24 = v35;
          }

          goto LABEL_85;
        }

LABEL_55:
        Process = select_bet6_FeatureExtractProcess(*(a1 + 4600), a3, a4, (a1 + 4620), a1 + 32, (a1 + 3688), (a1 + 3696), (a1 + 4632), (a1 + 4640));
        if ((Process & 0x80000000) != 0)
        {
          v24 = Process;
        }

        else
        {
          v47 = *(a1 + 3696) * *(a1 + 42);
          *(a1 + 3696) = v47;
          v24 = siren_pipeline_ProcessStart(*(a1 + 4608), a1 + 32, *(a1 + 3688), v47, (a1 + 4616), v44, v45, v46);
          if ((v24 & 0x80000000) == 0)
          {
            *a5 = 4;
            goto LABEL_85;
          }
        }

        select_bet6_FeatureExtractProcessEnd(*(a1 + 4600), (a1 + 32), (a1 + 3688), (a1 + 3696));
        goto LABEL_85;
      }

LABEL_54:
      log_OutPublic(*(*(a1 + 8) + 32), "SELECT_BET6", 72001, "%s%x", v20, v21, v22, v23, "lhError");
LABEL_85:
      v62 = *(a1 + 4664);
      if (!v62)
      {
        return v24;
      }

      v63 = *(a1 + 4672);
      v64 = 1;
      goto LABEL_155;
    }

    v48 = *(a1 + 4664);
    if (v48)
    {
      compstats_Start(v48, *(a1 + 4672), 2, v10, v11, v12, v13, v14);
    }

    v49 = siren_pipeline_Process(*(a1 + 4608), *(a1 + 4632), (a1 + 4640), (a1 + 4616), v11, v12, v13, v14);
    v50 = *(a1 + 4616);
    if (v49 || (v50 & 0xFFFFFFFE) != 4)
    {
      goto LABEL_106;
    }

    v51 = v50 == 4;
    if (v50 == 4)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }

    if (v51)
    {
      v53 = 0;
    }

    else
    {
      v53 = 3;
    }

    if (*(a1 + 4624))
    {
      v54 = v52;
    }

    else
    {
      v54 = v53;
    }

    v55 = select_bet6_loc_UpdateMarkers(a1, 0);
    v56 = select_bet6_loc_WriteStreams(a1, v55, v54);
    v24 = v56 & (v56 >> 31);
    *(a1 + 4644) += v55;
    *(a1 + 4648) = siren_pipeline_GetPhoneCount(*(a1 + 4608));
    *(a1 + 4652) = siren_pipeline_GetFrameCount(*(a1 + 4608));
    ++*(a1 + 4624);
    if (*(a1 + 4616) != 5)
    {
      goto LABEL_151;
    }

    v57 = select_bet6_loc_UpdateMarkers(a1, 1);
    v58 = select_bet6_loc_WriteStreams(a1, v57, 3u);
    goto LABEL_93;
  }

  v94 = 0;
  *a5 = 1;
  v17 = *(a1 + 4664);
  if (v17)
  {
    compstats_Start(v17, *(a1 + 4672), 0, v10, v11, v12, v13, v14);
  }

  v18 = *(a1 + 4616);
  if (v18 == 5 || !v18)
  {
    *(a1 + 4616) = 0;
    v19 = *(a1 + 4664);
    if (v19)
    {
      compstats_Start(v19, *(a1 + 4672), 1, v10, v11, v12, v13, v14);
    }

    v24 = select_bet6_FeatureExtractProcessStart(*(a1 + 4600), a3, a4, (a1 + 32), a1 + 3688, a1 + 3696, &v94);
    if ((v24 & 0x80000000) == 0)
    {
      if (*(a1 + 42) <= 1)
      {
        v25 = v94;
        if (v94)
        {
          select_bet6_loc_UpdateMarkers(a1, 1);
LABEL_39:
          if (*(a1 + 4640))
          {
            heap_Free(*(*(a1 + 8) + 8), *(a1 + 4632));
            *(a1 + 4624) = 0;
            *(a1 + 4632) = 0;
            *(a1 + 4648) = 0;
            *(a1 + 4640) = 0;
            *(a1 + 4656) = 0;
          }

          LODWORD(v24) = synstrmaux_CloseOutStreamsOnly((a1 + 3776), *(a1 + 3704));
          v25 = 1;
          goto LABEL_42;
        }

        goto LABEL_42;
      }

      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v59 = *(a1 + 4664);
  if (v59)
  {
    compstats_Start(v59, *(a1 + 4672), 2, v10, v11, v12, v13, v14);
  }

  v49 = siren_pipeline_Process(*(a1 + 4608), *(a1 + 4632), (a1 + 4640), (a1 + 4616), v11, v12, v13, v14);
  v50 = *(a1 + 4616);
  if (v49 || (v50 - 2) > 3)
  {
    goto LABEL_106;
  }

  v60 = *(a1 + 4624);
  switch(v50)
  {
    case 2:
      v61 = 0;
      break;
    case 3:
      v61 = 1;
      break;
    case 5:
      if (siren_pipeline_GetSecondaryChunking(*(a1 + 4608)) && siren_pipeline_GetSecondaryChunkingCount(*(a1 + 4608)) > 1)
      {
        v61 = 5;
      }

      else if (siren_pipeline_GetChunking(*(a1 + 4608)) && siren_pipeline_GetPhoneChunkingCount(*(a1 + 4608)) > 1)
      {
        v61 = 6;
      }

      else
      {
        v61 = 3;
      }

      break;
    default:
      if (siren_pipeline_GetSecondaryChunking(*(a1 + 4608)) && siren_pipeline_GetSecondaryChunkingCount(*(a1 + 4608)) > 1)
      {
        v61 = 2;
      }

      else
      {
        v61 = 4;
      }

      break;
  }

  if (siren_pipeline_GetChunking(*(a1 + 4608)))
  {
    SecondaryChunking = siren_pipeline_GetSecondaryChunking(*(a1 + 4608));
    v72 = *(a1 + 4608);
    if (SecondaryChunking)
    {
      SecondaryMarkerCount = siren_pipeline_GetSecondaryMarkerCount(v72);
    }

    else
    {
      SecondaryMarkerCount = siren_pipeline_GetMarkerCount(v72, v60);
    }

    v74 = SecondaryMarkerCount;
  }

  else
  {
    v74 = *(a1 + 4640);
  }

  v75 = select_bet6_loc_WriteStreams(a1, v74, v61);
  if ((v75 & 0x80000000) != 0)
  {
    v24 = v75;
    log_OutPublic(*(*(a1 + 8) + 32), "SELECT_BET6", 72001, "%s%x", v76, v77, v78, v79, "lhError");
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 4644) += v74;
  v80 = *(a1 + 4608);
  if (*(*(a1 + 16) + 9244))
  {
    *(a1 + 4656) = siren_pipeline_GetiSample(v80);
  }

  else
  {
    *(a1 + 4652) = siren_pipeline_GetFrameCount(v80);
  }

  ++*(a1 + 4624);
  if ((*(a1 + 4616) & 0xFFFFFFFE) == 4)
  {
    v24 = siren_pipeline_freeSecondaryChunkingMemory(*(a1 + 4608));
    if (*(a1 + 4616) == 5)
    {
      if (*(a1 + 4640))
      {
        heap_Free(*(*(a1 + 8) + 8), *(a1 + 4632));
        *(a1 + 4624) = 0;
        *(a1 + 4632) = 0;
        *(a1 + 4640) = 0;
        *(a1 + 4656) = 0;
        *(a1 + 4648) = 0;
      }

      v81 = select_bet6_FeatureExtractProcessEnd(*(a1 + 4600), (a1 + 32), (a1 + 3688), (a1 + 3696));
      if (v24 > -1 && v81 < 0)
      {
        LODWORD(v24) = v81;
      }

LABEL_144:
      v83 = siren_pipeline_ProcessEnd(*(a1 + 4608), (a1 + 4616));
      if (v24 > -1 && v83 < 0)
      {
        v24 = v83;
      }

      else
      {
        v24 = v24;
      }

      v85 = 1;
      goto LABEL_152;
    }
  }

LABEL_151:
  v85 = 2;
LABEL_152:
  *a5 = v85;
LABEL_153:
  v62 = *(a1 + 4664);
  if (!v62)
  {
    return v24;
  }

  v63 = *(a1 + 4672);
  v64 = 2;
LABEL_155:
  compstats_Stop(v62, v63, v64, v37, v38, v39, v40, v41);
  v91 = *(a1 + 4664);
  if (v91)
  {
    compstats_Stop(v91, *(a1 + 4672), 0, v86, v87, v88, v89, v90);
  }

  return v24;
}

uint64_t select_bet6_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 135970, 4680);
  if (v3 < 0)
  {
    return 2229280776;
  }

  LODWORD(v4) = v3;
  if ((*(a1 + 4616) - 2) <= 2)
  {
    ProcessEnd = select_bet6_FeatureExtractProcessEnd(*(a1 + 4600), (a1 + 32), (a1 + 3688), (a1 + 3696));
    if (ProcessEnd < 0)
    {
      LODWORD(v4) = ProcessEnd;
    }

    siren_pipeline_ProcessEnd(*(a1 + 4608), (a1 + 4616));
    if (v4 > 0)
    {
      LODWORD(v4) = v4 | 0x84E02000;
    }

    if (*(a1 + 4640))
    {
      heap_Free(*(*(a1 + 8) + 8), *(a1 + 4632));
      *(a1 + 4624) = 0;
      *(a1 + 4632) = 0;
      *(a1 + 4648) = 0;
      *(a1 + 4640) = 0;
      *(a1 + 4656) = 0;
    }
  }

  v6 = synstrmaux_CloseStreams((a1 + 3776), *(a1 + 3704));
  if (v6 >= 0 || v4 <= -1)
  {
    v4 = v4;
  }

  else
  {
    v4 = v6;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v8 = *(a1 + 4664);
    if (v8)
    {
      compstats_Log(v8, *(a1 + 4672), *(*(a1 + 8) + 32), "Selection Detail", select_bet6_ProcessEnd_szLabels, 0, 0);
    }
  }

  return v4;
}

uint64_t select_bet6_loc_ParamLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  v12 = 0;
  if (!cstdlib_strcmp(__s1, "waitfactor"))
  {
    v11 = 0;
    if (!cstdlib_strcmp(__s1, "waitfactor"))
    {
      paramc_ParamGetUInt(*(*(a1 + 8) + 40), "finalsentencefound", &v11);
      if (v11 != 1)
      {
        v7 = LH_atoi(a3);
        select_bet6_loc_ParamSet(a1, __s1, v7);
      }
    }

    v8 = LH_atoi(a3);
    v9 = a1;
    v10 = __s1;
    return select_bet6_loc_ParamSet(v9, v10, v8);
  }

  if (cstdlib_strcmp(__s1, "finalsentencefound"))
  {
    return 0;
  }

  if (LH_atou(a3) != 1)
  {
    paramc_ParamGetUInt(*(*(a1 + 8) + 40), "waitfactorbackup", &v12);
    v8 = v12;
    v10 = "waitfactor";
    v9 = a1;
    return select_bet6_loc_ParamSet(v9, v10, v8);
  }

  paramc_ParamSetUInt(*(*(a1 + 8) + 40), "waitfactorbackup", *(a1 + 4620));

  return select_bet6_loc_ParamSet(a1, "waitfactor", 0);
}

uint64_t select_bet6_loc_ParamSet(uint64_t a1, char *__s1, uint64_t a3)
{
  if (cstdlib_strcmp(__s1, "waitfactor"))
  {
    return 0;
  }

  if ((a3 & 0x80000000) == 0)
  {
    *(a1 + 4620) = a3;
    log_OutText(*(*(a1 + 8) + 32), "SELECT_BET6", 3, 0, "Set wait factor %d", v5, v6, v7, a3);
    return 0;
  }

  return 2229280783;
}

uint64_t select_bet6_loc_WriteStreams_MT(uint64_t a1)
{
  FrameSize = siren_pipeline_GetFrameSize(*(a1 + 4608));
  AcousticStream = siren_pipeline_GetAcousticStream(*(a1 + 4608));
  SampleChunk = siren_pipeline_GetSampleChunk(*(a1 + 4608));
  if (AcousticStream)
  {
    v5 = SampleChunk == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 10;
  }

  v7 = SampleChunk;
  SampleChunkCounter = siren_pipeline_GetSampleChunkCounter(*(a1 + 4608));
  FrameCount = siren_pipeline_GetFrameCount(*(a1 + 4608));
  if (SampleChunkCounter < *v7 && FrameCount > *(*(v7 + 16) + 4 * SampleChunkCounter))
  {
    updated = select_bet6_loc_UpdateMarkers_MT(a1, *(a1 + 4616) == 5);
    v11 = updated;
    if (updated)
    {
      v12 = (*(*(a1 + 3704) + 104))(*(a1 + 3712), *(a1 + 3720), *(a1 + 4632) + 32 * *(a1 + 4644), (32 * updated));
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }
    }

    v36 = v11;
    v13 = *(a1 + 3704);
    v14 = *(a1 + 16);
    v15 = *(v14 + 9296);
    v16 = *(v7 + 16);
    v34 = *(*(v7 + 8) + 4 * SampleChunkCounter);
    v35 = *(v14 + 9332);
    v17 = *(a1 + 3728);
    v18 = *(a1 + 3736);
    v37 = *(a1 + 3752);
    v38 = *(a1 + 3744);
    v40 = 3;
    v33 = *(v16 + 4 * SampleChunkCounter);
    if (!SampleChunkCounter)
    {
      v40 = 0;
    }

    if (*v7 == 1 || SampleChunkCounter == *v7 - 1)
    {
      if (*v7 == 1)
      {
        v19 = 4;
      }

      else
      {
        v19 = 2;
      }

      v40 = v19;
    }

    v39 = 0;
    v20 = (*(v13 + 104))(v17, v18, &v40, 4);
    if ((v20 & 0x80000000) == 0)
    {
      v6 = (*(v13 + 104))(v17, v18, AcousticStream + 4 * (v34 * FrameSize), (4 * v35 * (v33 - v34 + 1)));
      if ((v6 & 0x80000000) != 0)
      {
LABEL_43:
        v21 = v36;
        goto LABEL_44;
      }

      v21 = v36;
      if (!v15)
      {
LABEL_40:
        ++SampleChunkCounter;
LABEL_44:
        siren_pipeline_SetSampleChunkCounter(*(a1 + 4608), SampleChunkCounter);
        *(a1 + 4648) = siren_pipeline_GetPhoneCount(*(a1 + 4608));
        *(a1 + 4652) = siren_pipeline_GetFrameCount(*(a1 + 4608));
        *(a1 + 4644) += v21;
        ++*(a1 + 4624);
        return v6;
      }

      v22 = v15 * SampleChunkCounter;
      v23 = *(*(v7 + 24) + 4 * v15 * SampleChunkCounter);
      v24 = v15;
      v25 = v15 * SampleChunkCounter;
      while (1)
      {
        v26 = *(*(v7 + 24) + 4 * v25);
        v27 = *(*(v7 + 32) + 4 * v25) == -1 && v26 == 0;
        v28 = v27 ? 0 : v23;
        v39 = v26 - v28;
        v20 = (*(v13 + 104))(v38, v37, &v39, 4);
        if ((v20 & 0x80000000) != 0)
        {
          break;
        }

        ++v25;
        if (!--v24)
        {
          v21 = v36;
          while (1)
          {
            v29 = *(*(v7 + 32) + 4 * v22);
            v30 = v29 == -1 && *(*(v7 + 24) + 4 * v22) == 0;
            v31 = v30 ? 0 : v23;
            v39 = v29 - v31;
            v6 = (*(v13 + 104))(v38, v37, &v39, 4);
            if ((v6 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            ++v22;
            if (!--v15)
            {
              goto LABEL_40;
            }
          }
        }
      }
    }

    v6 = v20;
    goto LABEL_43;
  }

  return 0;
}

uint64_t select_bet6_loc_UpdateMarkers_MT(uint64_t a1, int a2)
{
  if (*(a1 + 4644) == *(a1 + 4640))
  {
    return 0;
  }

  PhoneCount = siren_pipeline_GetPhoneCount(*(a1 + 4608));
  siren_pipeline_GetDurationStream(*(a1 + 4608));
  result = 0;
  v6 = *(a1 + 4644);
  v7 = *(a1 + 4648);
  v8 = *(a1 + 4660);
  for (i = (*(a1 + 4632) + 32 * v6 + 16); ; i += 8)
  {
    v10 = v6 + result;
    if ((v7 >= PhoneCount || v10 >= *(a1 + 4640)) && (!a2 || v10 >= *(a1 + 4640)))
    {
      break;
    }

    if (*(i - 4) == 33)
    {
      v8 = *i + *(i - 1);
      ++v7;
    }

    result = (result + 1);
  }

  *(a1 + 4660) = v8;
  return result;
}

uint64_t select_bet6_loc_UpdateMarkers(uint64_t a1, int a2)
{
  if (a1 && *(*(a1 + 16) + 9296) >= 2u)
  {

    return select_bet6_loc_UpdateMarkers_MT(a1, a2);
  }

  else if (*(a1 + 4644) == *(a1 + 4640))
  {
    return 0;
  }

  else
  {
    PhoneCount = siren_pipeline_GetPhoneCount(*(a1 + 4608));
    DurationStream = siren_pipeline_GetDurationStream(*(a1 + 4608));
    result = 0;
    v7 = *(a1 + 4644);
    v8 = *(a1 + 4648);
    v9 = (*(a1 + 4632) + 32 * v7);
    v10 = *(a1 + 4660);
    while (1)
    {
      v11 = v7 + result;
      if ((v8 >= PhoneCount || v11 >= *(a1 + 4640)) && (!a2 || v11 >= *(a1 + 4640)))
      {
        break;
      }

      v12 = *v9;
      v9[3] = v10;
      if (v12 == 33)
      {
        v13 = *(DurationStream + 4 * v8);
        v10 += v13;
        ++v8;
      }

      else
      {
        v13 = 0;
      }

      v9[4] = v13;
      v9 += 8;
      result = (result + 1);
    }

    *(a1 + 4660) = v10;
  }

  return result;
}

uint64_t select_bet6_loc_WriteStreams(uint64_t a1, int a2, unsigned int a3)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  if (v6[2324] < 2u)
  {
    if (v6[2311])
    {
      AudioStream = siren_pipeline_GetAudioStream(*(a1 + 4608));
      v8 = siren_pipeline_GetiSample(*(a1 + 4608));
      LODWORD(v31) = siren_pipeline_GetTailingPauseLen(*(a1 + 4608));
      if (AudioStream)
      {
        if (!a2 || (v9 = (*(*(a1 + 3704) + 104))(*(a1 + 3712), *(a1 + 3720), *(a1 + 4632) + 32 * *(a1 + 4644), (32 * a2)), (v9 & 0x80000000) == 0))
        {
          (*(*(a1 + 3704) + 104))(*(a1 + 3760), *(a1 + 3768), &v31, 4);
          return (*(*(a1 + 3704) + 104))(*(a1 + 3760), *(a1 + 3768), AudioStream + 2 * *(a1 + 4656), (2 * (v8 - *(a1 + 4656))));
        }

        return v9;
      }

      return 10;
    }

    if (v6[2312] || v6[2314] || v6[2315])
    {
      v31 = 0.0;
      if (a2)
      {
        v11 = (*(*(a1 + 3704) + 104))(*(a1 + 3712), *(a1 + 3720), *(a1 + 4632) + 32 * *(a1 + 4644), (32 * a2));
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }
      }

      else
      {
        v11 = 0;
      }

      FrameCount = siren_pipeline_GetFrameCount(*(a1 + 4608));
      TailingPauseLen = siren_pipeline_GetTailingPauseLen(*(a1 + 4608));
      if (FrameCount > *(a1 + 4652))
      {
        v29 = a3;
        FrameSize = siren_pipeline_GetFrameSize(*(a1 + 4608));
        (*(*(a1 + 3704) + 104))(*(a1 + 3728), *(a1 + 3736), &v29, 4);
        Chunking = siren_pipeline_GetChunking(*(a1 + 4608));
        if (a3 - 2 <= 4 && Chunking)
        {
          LODWORD(v31) = siren_pipline_GetPhoneChunkingSpellPause(*(a1 + 4608));
        }

        (*(*(a1 + 3704) + 104))(*(a1 + 3728), *(a1 + 3736), &v31, 4);
        (*(*(a1 + 3704) + 104))(*(a1 + 3728), *(a1 + 3736), &TailingPauseLen, 4);
        AcousticStream = siren_pipeline_GetAcousticStream(*(a1 + 4608));
        if (a3 <= 5 && ((1 << a3) & 0x26) != 0)
        {
          v24 = *(*(a1 + 3704) + 104);
          v25 = *(a1 + 4652);
          v26 = AcousticStream + 4 * ((v25 - 4) * FrameSize);
          v27 = FrameCount - v25 + 4;
        }

        else
        {
          v24 = *(*(a1 + 3704) + 104);
          v28 = *(a1 + 4652);
          v26 = AcousticStream + 4 * (v28 * FrameSize);
          v27 = FrameCount - v28;
        }

        return v24(*(a1 + 3728), *(a1 + 3736), v26, (4 * FrameSize * v27));
      }

      return v11;
    }

LABEL_17:
    if (a2)
    {
      v11 = (*(*(a1 + 3704) + 104))(*(a1 + 3712), *(a1 + 3720), *(a1 + 4632) + 32 * *(a1 + 4644), (32 * a2));
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = siren_pipeline_GetFrameCount(*(a1 + 4608));
    if (v12 > *(a1 + 4652))
    {
      v13 = v12;
      v31 = a3;
      (*(*(a1 + 3704) + 104))(*(a1 + 3728), *(a1 + 3736), &v31, 4);
      v14 = siren_pipeline_GetAcousticStream(*(a1 + 4608));
      v15 = *(*(a1 + 3704) + 104);
      v16 = *(a1 + 4652);
      v17 = v14 + 4 * siren_pipeline_GetFrameSize(*(a1 + 4608)) * v16;
      v18 = v13 - *(a1 + 4652);
      v19 = siren_pipeline_GetFrameSize(*(a1 + 4608));
      return v15(*(a1 + 3728), *(a1 + 3736), v17, 4 * v18 * v19);
    }

    return v11;
  }

  return select_bet6_loc_WriteStreams_MT(a1);
}

char *heap_StrDup(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Calloc(a1, (v4 + 1), 1);
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

uint64_t xfread_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
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
    cstdlib_memcpy(a1, (*(a4 + 1) + v6), v8);
    *a4 += v8;
  }

  return v5;
}

uint64_t xfread2ptr_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
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

uint64_t log_out_Event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = a3 - 1;
  do
  {
    v10 = *++v9;
  }

  while (v10 == 10);
  return log_VOutEvent(*(a1 + 32), a2, v9, &a9);
}

uint64_t log_select_Diag(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (v4 == 10);
  return log_VOutText(*(a1 + 32), "SELECT_BET3", (a2 + 2), 0, v3);
}

uint64_t log_select_GetLogLevel(uint64_t a1)
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

float bet3_finv(float a1)
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

void *ddcalloc(void *a1, unsigned int a2, int a3)
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

void *ddcalloc_64(void *a1, unsigned int a2, int a3)
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

void *dd_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *dd_free_64(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *ffcalloc(void *a1, unsigned int a2, int a3)
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

void *ff_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *int32_ccalloc(void *a1, unsigned int a2, int a3)
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

void *int32_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *iicalloc(void *a1, unsigned int a2, int a3)
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

void *ii_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t feat_frame_Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v7 = heap_Calloc(*(*a3 + 8), 1, 24);
  if (v7 && (v8 = v7, *(a3 + 40) = v7, (v9 = heap_Calloc(*(v6 + 8), 1000000, 4)) != 0))
  {
    *v8 = a2;
    v8[1] = a1;
    v8[2] = v9;
    *(a3 + 112) = 1000000;
    siren_log_Diag(v6, "feat frame init done...\n");
    return 0;
  }

  else
  {
    siren_log_Error(v6, "memory allocation error");
    return 10;
  }
}

uint64_t feat_frame_Process(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 40);
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a1 + 48);
  v6 = *(v5 + 56);
  v31 = *(*(a1 + 32) + 8);
  v32 = *(a1 + 8);
  v7 = v2[2];
  v8 = *(v5 + 24);
  v9 = (*(*v2 + 12) + *(v3 + 12)) * v8;
  if (v9 <= *(a1 + 112))
  {
    cstdlib_memset(v7, 0, 4 * ((*(*v2 + 12) + *(v3 + 12)) * v8));
  }

  else
  {
    v11 = heap_Realloc(*(v1 + 8), v7, 4 * ((*(*v2 + 12) + *(v3 + 12)) * v8));
    if (!v11)
    {
      v28 = "memory allocation error";
      goto LABEL_23;
    }

    v7 = v11;
    *(*(a1 + 40) + 16) = v11;
    *(a1 + 112) = v9;
  }

  v12 = heap_Calloc(*(v1 + 8), (*(v4 + 12) * v8), 4);
  if (!v12)
  {
    siren_log_Error(v1, "memory allocation error");
    v28 = "get nn feature at frame level failed";
LABEL_23:
    siren_log_Error(v1, v28);
    return 10;
  }

  v13 = v12;
  v29 = v9;
  v30 = v1;
  v14 = *(v32 + 10);
  if (*(v32 + 10))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(v6 + 4 * v15);
      if (v17)
      {
        v18 = v17;
        v19 = 1;
        do
        {
          *(v12 + 4 * v16) = v19;
          *(v12 + 4 + 4 * v16) = v18;
          v16 += 2;
          ++v19;
          --v17;
        }

        while (v17);
      }

      ++v15;
    }

    while (v15 != v14);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(v6 + 4 * v20);
      if (v23)
      {
        v24 = (v31 + 4 * (*(v3 + 12) * v20));
        do
        {
          cstdlib_memcpy(&v7[4 * v21], (v13 + 4 * v22), 4 * *(v4 + 12));
          v25 = *(v4 + 12);
          v26 = v25 + v21;
          v22 += v25;
          cstdlib_memcpy(&v7[4 * v26], v24, 4 * *(v3 + 12));
          v21 = *(v3 + 12) + v26;
          --v23;
        }

        while (v23);
        LODWORD(v14) = *(v32 + 10);
      }

      ++v20;
    }

    while (v20 < v14);
  }

  heap_Free(*(v30 + 8), v13);
  siren_log_Diag(v30, "feat frame process done...\n");
  if (log_GetLogLevel(*(v30 + 32)) >= 3)
  {
    siren_compute_stream_hash(v7, 4 * v29, v33);
    siren_log_Diag(v30, "FEAT_FRAME_MD5=%s\n");
  }

  return 0;
}

uint64_t feat_frame_Close(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
  *v3 = 0;
  v3[1] = 0;
  v4 = v3[2];
  if (v4)
  {
    heap_Free(*(v2 + 8), v4);
    v3[2] = 0;
  }

  heap_Free(*(v2 + 8), v3);
  a1[5] = 0;
  siren_log_Diag(v2, "feat frame close done....\n");
  return 0;
}

uint64_t feat_phone_Init(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = heap_Calloc(*(*a2 + 8), 1, 16);
  if (v5 && (v6 = v5, *(a2 + 32) = v5, (v7 = heap_Calloc(*(v4 + 8), 50000, 4)) != 0))
  {
    *v6 = a1 + 7992;
    v6[1] = v7;
    *(a2 + 108) = 50000;
    siren_log_Diag(v4, "feat phone init done....\n");
    return 0;
  }

  else
  {
    siren_log_Error(v4, "memory allocation error");
    return 10;
  }
}

uint64_t feat_phone_Process(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 32);
  v5 = *v3;
  v4 = v3[1];
  v6 = *(a1 + 16);
  v7 = *(*v3 + 12) * *(v1 + 10);
  if (v7 <= *(a1 + 108))
  {
    __src = *(a1 + 16);
    v28 = *(*v3 + 12) * *(v1 + 10);
    cstdlib_memset(v4, 0, 4 * v28);
  }

  else
  {
    heap_Free(*(v2 + 8), v4);
    v8 = heap_Calloc(*(v2 + 8), v7, 4);
    if (!v8)
    {
      siren_log_Error(v2, "memory allocation error");
      return 10;
    }

    v4 = v8;
    __src = v6;
    *(*(a1 + 32) + 8) = v8;
    v28 = v7;
    *(a1 + 108) = v7;
  }

  v9 = *(v1 + 10);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v29 = v1 + 16;
    LODWORD(v12) = *(v5 + 2);
    while (v12 <= 0)
    {
      v16 = v10 + 1;
LABEL_44:
      v10 = v16;
      if (v16 >= v9)
      {
        goto LABEL_45;
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = *(v5 + 3) * v10;
    v31 = v10 + 2;
    v16 = v10 + 1;
    v32 = v15;
    while (1)
    {
      v17 = *v5;
      v18 = *(*v5 + v13);
      if (*(*v5 + v13) <= 0xFBu)
      {
        if (v18 == 3 || v18 == 5)
        {
          goto LABEL_34;
        }

        if (v18 == 216)
        {
          v21 = v1;
          v22 = v2;
          v23 = (v17 + v13);
          if (v23[1] == 1)
          {
            v24 = v23[2];
          }

          else
          {
            v24 = 1;
          }

          cstdlib_memcpy(&v4[4 * v23[3] + 4 * *(v5 + 3) * v10], __src, 4 * v24);
          __src += 4 * v24;
          v2 = v22;
          v1 = v21;
          v16 = v10 + 1;
          v15 = v32;
          if (*(a1 + 24) < (&__src[-*(a1 + 16)] >> 2))
          {
            siren_log_Error(v2, "invalid external features stream");
            return 21;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (*(*v5 + v13) > 0xFDu)
        {
          if (v18 != 254)
          {
            if (v31 < *(v1 + 10))
            {
              v19 = (*(v1 + 32) + v31);
              goto LABEL_33;
            }

            goto LABEL_28;
          }

          if (v16 >= *(v1 + 10))
          {
            goto LABEL_31;
          }

          v19 = (*(v1 + 32) + v16);
LABEL_33:
          v11 = *v19;
          goto LABEL_34;
        }

        if (v18 == 252)
        {
          if (v10 < 2)
          {
LABEL_28:
            v11 = -1;
            goto LABEL_34;
          }

          v19 = (*(v1 + 32) + v10 - 2);
          goto LABEL_33;
        }

        if (v18 == 253)
        {
          if (v10)
          {
            v19 = (*(v1 + 32) + v10 - 1);
            goto LABEL_33;
          }

LABEL_31:
          v11 = 0;
LABEL_34:
          v26 = v17 + v13;
          if (*(v17 + v13 + 4) == 1)
          {
            if (*(v26 + 8) <= v11)
            {
              siren_log_Diag(v2, "phone-level categorical feature extraction out of range: feature_index=%d, feature_value=%d, feature_range=%d.");
            }

            else
            {
              *&v4[4 * v15 + 4 * v11 + 4 * *(v17 + v13 + 12)] = 1065353216;
            }
          }

          else
          {
            *&v4[4 * (*(v26 + 12) + v15)] = v11;
          }

          goto LABEL_41;
        }
      }

      v25 = *(v29 + 8 * v18);
      if (v25)
      {
        v19 = (v25 + v10);
        goto LABEL_33;
      }

LABEL_41:
      ++v14;
      v12 = *(v5 + 2);
      v13 += 16;
      if (v14 >= v12)
      {
        LOWORD(v9) = *(v1 + 10);
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  siren_log_Diag(v2, "feat phone process done....\n");
  if (log_GetLogLevel(*(v2 + 32)) >= 3)
  {
    siren_compute_stream_hash(v4, 4 * v28, v34);
    siren_log_Diag(v2, "FEAT_PHONE_MD5=%s\n");
  }

  return 0;
}

uint64_t feat_phone_Close(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[4];
  *v3 = 0;
  v4 = v3[1];
  if (v4)
  {
    heap_Free(*(v2 + 8), v4);
    v3[1] = 0;
  }

  heap_Free(*(v2 + 8), v3);
  a1[4] = 0;
  siren_log_Diag(v2, "feat phone close done....\n");
  return 0;
}

uint64_t infer_acoustic_init(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v10 = 0;
  v5 = heap_Calloc(*(v4 + 8), 1, 64);
  if (v5)
  {
    v6 = v5;
    a1[7] = v5;
    *(v5 + 48) = v4;
    v7 = fi_rsc_create(v4, (v5 + 56));
    if (v7)
    {
      v8 = v7;
      siren_log_Error(v4, "Acoustic Model FI Resource creation failed: %d");
    }

    else
    {
      v8 = parse_fi_binary_model(*(v6 + 56), a2, &v10);
      if (v8)
      {
        siren_log_Error(v4, "Acoustic Model FI binary model parsing failed: %d");
      }

      else
      {
        *v6 = v10;
        siren_log_Diag(v4, "infer(acoustic) init done.... \n");
      }
    }
  }

  else
  {
    siren_log_Error(v4, "memory allocation error");
    return 10;
  }

  return v8;
}

uint64_t infer_acoustic_process_range(uint64_t a1, int a2, uint64_t a3)
{
  v77[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 136);
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v8[2];
  v10 = *(v8[1] + 12);
  v11 = *(*v8 + 12);
  if (v6 < 2)
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    compstats_ClockInit(&v73);
    compstats_ClockStart(&v73, v39, v40, v41, v42, v43, v44, v45);
    *(v7 + 8) = v9;
    v46 = ((*(**(a1 + 40) + 12) + *(*(*(a1 + 40) + 8) + 12)) * a3);
    v47 = heap_Calloc(*(*(v7 + 48) + 8), v46, 4);
    v77[0] = v47;
    if (v47)
    {
      cstdlib_memcpy(v47, (*(v7 + 8) + 4 * ((v11 + v10) * a2)), 4 * v46);
      v52 = fi_net_predict(*v7, v77, a3, (v7 + 24), v48, v49, v50, v51);
      if (v52)
      {
        v53 = v52;
        siren_log_Error(v5, "Acoustic Model FI inferece failed: %d");
        v37 = v53;
        goto LABEL_31;
      }

      siren_log_Diag(v5, "infer(acoustic) process one sentence done....\n");
      compstats_ClockStop(&v73, v54, v55, v56, v57, v58, v59, v60);
      siren_log_Trace(v5, "CompStatsReport, infer_acoustic_process_range, start: %u, nFrames: %u, %7.2f msec CPU, %7.2f msec real\n");
      compstats_ClockReset(&v73);
      if (log_GetLogLevel(*(v5 + 32)) < 3)
      {
        goto LABEL_30;
      }

      siren_compute_stream_hash(*(v7 + 24), 4 * *(*v7 + 96) / a3 * a3, v77);
      v61 = "INFER_ACOUSTIC_MD5=%s\n";
      goto LABEL_29;
    }

LABEL_21:
    siren_log_Error(v5, "memory allocation error.");
    v37 = 10;
    goto LABEL_31;
  }

  v12 = v11 + v10;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  compstats_ClockInit(&v73);
  compstats_ClockStart(&v73, v13, v14, v15, v16, v17, v18, v19);
  *(v7 + 8) = v9;
  v20 = a3 / v6;
  v21 = a3 % v6;
  v22 = v6 - a3 % v6;
  if (a3 % v6)
  {
    v23 = v6 - a3 % v6;
  }

  else
  {
    v23 = 0;
  }

  if (v21)
  {
    v24 = v20 + 1;
  }

  else
  {
    v24 = a3 / v6;
  }

  v25 = heap_Calloc(*(*(v7 + 48) + 8), v24 * v12, 4);
  v77[0] = v25;
  if (!v25)
  {
    goto LABEL_21;
  }

  v30 = *(v7 + 8);
  if (!v30)
  {
    v37 = 6;
    siren_log_Error(v5, "Linguistic features fetch failed: %d");
    goto LABEL_31;
  }

  v31 = v25;
  v32 = (v30 + 4 * v12 * a2 + 4 * v12 * (v6 - 1));
  if (v6 <= a3)
  {
    v71 = v5;
    v33 = a3 / v6;
    do
    {
      v34 = v32;
      cstdlib_memcpy(v31, v32, 4 * v12);
      v31 += 4 * v12;
      v32 = &v34[4 * v12 * v6];
      --v33;
    }

    while (v33);
    v32 = &v34[4 * v12 * v6];
    v5 = v71;
    v22 = v6 - a3 % v6;
  }

  if (v23)
  {
    cstdlib_memcpy(v31, &v32[-4 * v23 * v12], 4 * v12);
  }

  v35 = fi_net_predict(*v7, v77, v23 + v20, (v7 + 24), v26, v27, v28, v29);
  if (v35)
  {
    v36 = v35;
    siren_log_Error(v5, "Acoustic Model FI inferece failed: %d");
    v37 = v36;
    goto LABEL_31;
  }

  if (v21)
  {
    v62 = *(*v7 + 96) / ((v23 + v20) * v6);
    cstdlib_memcpy((*(v7 + 24) + 4 * v62 * v20 * v6), (*(v7 + 24) + 4 * v62 * (v20 * v6 + v22)), 4 * v62 * v21);
  }

  siren_log_Diag(v5, "infer(acoustic) process one sentence done....\n");
  compstats_ClockStop(&v73, v63, v64, v65, v66, v67, v68, v69);
  siren_log_Trace(v5, "CompStatsReport, infer_acoustic_process_range, start: %u, nFrames: %u, %7.2f msec CPU, %7.2f msec real\n");
  compstats_ClockReset(&v73);
  if (log_GetLogLevel(*(v5 + 32)) >= 3)
  {
    siren_compute_stream_hash(*(v7 + 24), 4 * *(*v7 + 96), v77);
    v61 = "INFER_ACOUSTIC_MD5=%s";
LABEL_29:
    siren_log_Diag(v5, v61);
  }

LABEL_30:
  v37 = 0;
LABEL_31:
  if (v37)
  {
    siren_log_Error(v5, "Acoustic Model FI Predict failed: %d");
  }

  return v37;
}

uint64_t infer_acoustic_seq2seq_process_range_stream(uint64_t *a1, int a2, int a3)
{
  v6 = *a1;
  v7 = a1[7];
  v8 = *(a1[4] + 8);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  compstats_ClockInit(v36);
  compstats_ClockStart(v36, v9, v10, v11, v12, v13, v14, v15);
  v16 = a1[4];
  v17 = v16[1];
  v18 = *(*v16 + 12);
  v19 = *(a1[1] + 10);
  *(v7 + 16) = v8;
  v20 = heap_Calloc(*(*(v7 + 48) + 8), (v18 * (a3 + 2)), 4);
  v38 = v20;
  if (v20)
  {
    v21 = v20;
    cstdlib_memcpy(v20, v17, 4 * v18);
    cstdlib_memcpy(&v21[4 * v18], (*(v7 + 16) + 4 * (v18 * a2)), 4 * (v18 * a3));
    cstdlib_memcpy(&v21[4 * (v18 + v18 * a3)], &v17[4 * ((v19 - 1) * v18)], 4 * v18);
    v26 = fi_net_predict(*v7, &v38, (a3 + 2), (v7 + 24), v22, v23, v24, v25);
    if (v26)
    {
      bytes = v26;
      siren_log_Error(v6, "Acoustic Model FI inferece failed: %d");
    }

    else
    {
      bytes = fi_shape_get_bytes((*v7 + 92), (v7 + 40));
      if (bytes)
      {
        siren_log_Error(v6, "Get Acoustic Model output shape failed: %d");
      }

      else
      {
        siren_log_Diag(v6, "infer(acoustic) process one sentence done....\n");
        compstats_ClockStop(v36, v28, v29, v30, v31, v32, v33, v34);
        siren_log_Trace(v6, "CompStatsReport, infer_acoustic_process_range, start: %u, nFrames: %u, %7.2f msec CPU, %7.2f msec real\n");
        compstats_ClockReset(v36);
      }
    }
  }

  else
  {
    siren_log_Error(v6, "memory allocation error.");
    return 10;
  }

  return bytes;
}

uint64_t infer_acoustic_seq2seq_process_range_FrameInfer(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v7 = *a2;
  v8 = a2[7];
  v9 = *(a2[4] + 8);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  compstats_ClockInit(v39);
  compstats_ClockStart(v39, v10, v11, v12, v13, v14, v15, v16);
  v17 = a2[4];
  v18 = v17[1];
  v19 = *(*v17 + 12);
  v20 = *(a2[1] + 10);
  *(v8 + 16) = v9;
  v21 = heap_Calloc(*(*(v8 + 48) + 8), (v19 * (a4 + 2)), 4);
  v41 = v21;
  if (v21)
  {
    v22 = v21;
    cstdlib_memcpy(v21, v18, 4 * v19);
    cstdlib_memcpy(&v22[4 * v19], (*(v8 + 16) + 4 * (v19 * a3)), 4 * (v19 * a4));
    cstdlib_memcpy(&v22[4 * (v19 + v19 * a4)], &v18[4 * ((v20 - 1) * v19)], 4 * v19);
    updated = fi_net_update_param(*v8);
    if (updated)
    {
      bytes = updated;
      siren_log_Error(v7, "Acoustic model speaker_id set failed: %d");
    }

    else
    {
      v29 = fi_net_predict(*v8, &v41, (a4 + 2), (v8 + 24), v24, v25, v26, v27);
      if (v29)
      {
        bytes = v29;
        v30 = "Acoustic Model FI inferece failed: %d";
      }

      else
      {
        bytes = fi_shape_get_bytes((*v8 + 92), (v8 + 40));
        if (!bytes)
        {
          siren_log_Diag(v7, "infer(acoustic) process one sentence done....\n");
          compstats_ClockStop(v39, v32, v33, v34, v35, v36, v37, v38);
          siren_log_Trace(v7, "CompStatsReport, infer_acoustic_process_range, start: %u, nFrames: %u, %7.2f msec CPU, %7.2f msec real\n");
          compstats_ClockReset(v39);
          return bytes;
        }

        v30 = "Get Acoustic Model output shape failed: %d";
      }

      siren_log_Error(v7, v30);
    }
  }

  else
  {
    siren_log_Error(v7, "memory allocation error.");
    return 10;
  }

  return bytes;
}

uint64_t infer_acoustic_seq2seq_process_range(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = a2[7];
  v9 = *(a2[4] + 8);
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  compstats_ClockInit(v40);
  compstats_ClockStart(v40, v10, v11, v12, v13, v14, v15, v16);
  v17 = a2[4];
  v18 = v17[1];
  v19 = *(*v17 + 12);
  v20 = *(a2[1] + 10);
  *(v8 + 16) = v9;
  v21 = heap_Calloc(*(*(v8 + 48) + 8), v19 * (a4 + 2), 4);
  v42 = v21;
  if (!v21)
  {
    siren_log_Error(v7, "memory allocation error.");
    return 10;
  }

  v22 = v21;
  cstdlib_memcpy(v21, v18, 4 * v19);
  cstdlib_memcpy(&v22[4 * v19], (*(v8 + 16) + 4 * (v19 * a3)), 4 * v19 * a4);
  cstdlib_memcpy(&v22[4 * v19 + 4 * v19 * a4], &v18[4 * ((v20 - 1) * v19)], 4 * v19);
  updated = fi_net_update_param(*v8);
  if (updated)
  {
    v28 = updated;
    siren_log_Error(v7, "Acoustic model speakerid set faled: %d");
    return v28;
  }

  v29 = fi_net_predict(*v8, &v42, a4 + 2, (v8 + 32), v24, v25, v26, v27);
  if (v29)
  {
    v28 = v29;
    v30 = "Acoustic Model FI inferece failed: %d";
LABEL_9:
    siren_log_Error(v7, v30);
    return v28;
  }

  bytes = fi_shape_get_bytes((*v8 + 92), (v8 + 44));
  if (bytes)
  {
    v28 = bytes;
    v30 = "Get Acoustic Model output shape failed: %d";
    goto LABEL_9;
  }

  siren_log_Diag(v7, "infer(acoustic) process one sentence done....\n");
  compstats_ClockStop(v40, v33, v34, v35, v36, v37, v38, v39);
  siren_log_Trace(v7, "CompStatsReport, infer_acoustic_process_range, start: %u, nFrames: %u, %7.2f msec CPU, %7.2f msec real\n");
  compstats_ClockReset(v40);
  if (log_GetLogLevel(*(v7 + 32)) >= 3)
  {
    siren_compute_stream_hash(*(v8 + 32), 4 * *(*v8 + 96) / a4 * a4, v43);
    siren_log_Diag(v7, "INFER_ACOUSTIC_MD5=%s\n");
  }

  return 0;
}

uint64_t infer_acoustic_end(uint64_t *a1)
{
  v2 = a1[7];
  v3 = *a1;
  if (*v2)
  {
    fi_net_destroy(*v2);
    *v2 = 0;
  }

  v2[1] = 0;
  v2[2] = 0;
  v4 = v2[7];
  if (v4)
  {
    fi_rsc_destroy(v4);
    v2[7] = 0;
  }

  heap_Free(*(v3 + 8), v2);
  a1[7] = 0;
  siren_log_Diag(v3, "infer(acoustic) close done....\n");
  return 0;
}

uint64_t chunking_Init(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = heap_Calloc(*(*a1 + 8), 1, 32);
  if (v5)
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    a1[9] = v5;
    v6 = heap_Calloc(*(v4 + 8), 1, 56);
    if (v6)
    {
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 48) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      a1[8] = v6;
      v7 = heap_Calloc(*(v4 + 8), 1, 32);
      if (v7)
      {
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *v7 = 0;
        a1[11] = v7;
        if (!*(a2 + 9184))
        {
          return 0;
        }

        v8 = heap_Calloc(*(v4 + 8), 1, 40);
        if (v8)
        {
          v9 = v8;
          result = 0;
          v11 = *(a2 + 9172);
          *v9 = 0;
          *(v9 + 4) = v11;
          *(v9 + 32) = 0;
          *(v9 + 8) = 0;
          *(v9 + 16) = 0;
          a1[10] = v9;
          return result;
        }

        v12 = "sample level chunking memory allocation error";
      }

      else
      {
        v12 = "markers chunking memory allocation error";
      }
    }

    else
    {
      v12 = "phone level chunking memory allocation error";
    }
  }

  else
  {
    v12 = "frame level chunking memory allocation error";
  }

  siren_log_Error(v4, v12);
  return 10;
}

uint64_t chunking_Process(int32x2_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v5)
  {
    siren_log_Error(v4, "Front end message is empty!");
    return 7;
  }

  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 64);
  v13 = a1[924].u8[7];
  v14 = *(v5 + 10);
  *(v12 + 8) = v14;
  *(v10 + 8) = v14;
  v15 = heap_Calloc(*(v4 + 8), v14, 1);
  *v12 = v15;
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = heap_Calloc(*(v4 + 8), *(v10 + 8), 1);
  *v10 = v16;
  if (!v16)
  {
    goto LABEL_39;
  }

  v17 = *(v5 + 10);
  if (v17 >= 1)
  {
    for (i = 0; i < v17; ++i)
    {
      *(*v12 + i) = 1;
      *(*v10 + i) = 1;
      v17 = *(v5 + 10);
    }

    if (v17 >= 1)
    {
      v19 = 0;
      while (1)
      {
        if (*(*(v5 + 72) + v19) == 1)
        {
          if (*(*(v5 + 32) + v19) == v13)
          {
            LOBYTE(v17) = 8;
LABEL_14:
            *(*v12 + v19) = v17;
            *(*v10 + v19) = v17;
            LOWORD(v17) = *(v5 + 10);
            goto LABEL_15;
          }

          if ((*(*(v5 + 592) + v19) - 1) <= 3u)
          {
            LODWORD(v17) = 0x6040302u >> (8 * ((*(*(v5 + 592) + v19) - 1) & 0x1F));
            goto LABEL_14;
          }
        }

LABEL_15:
        if (++v19 >= v17)
        {
          v17 = v17;
          break;
        }
      }
    }
  }

  *(*v12 + v17 - 1) = 10;
  if (a1[1139].i32[1] || a1[1140].i32[0] || a1[1141].i32[0])
  {
    chunking_Do_PhoneChunking(a1, v12, a3, a4);
    v20 = heap_Calloc(*(v4 + 8), *(v12 + 48), 4);
    *(v12 + 16) = v20;
    if (!v20)
    {
      goto LABEL_39;
    }

    v21 = heap_Calloc(*(v4 + 8), *(v12 + 48), 2);
    *(v12 + 24) = v21;
    if (!v21)
    {
      goto LABEL_39;
    }

    v22 = heap_Calloc(*(v4 + 8), *(v12 + 48), 2);
    *(v12 + 32) = v22;
    if (!v22)
    {
      goto LABEL_39;
    }

    v23 = heap_Calloc(*(v4 + 8), *(v12 + 48), 2);
    *(v12 + 40) = v23;
    if (!v23)
    {
      goto LABEL_39;
    }

    chunking_Do_PhoneChunking(a1, v12, a3, a4);
    v24 = 0;
  }

  else
  {
    v34 = *(a2 + 48);
    v35 = *(v34 + 56);
    v24 = *(v34 + 24);
    result = chunking_Do_FrameChunking(v4, a1, v35, v24, v10);
    if (result)
    {
      return result;
    }

    v36 = heap_Calloc(*(v4 + 8), *(v10 + 24), 4);
    *(v10 + 16) = v36;
    if (!v36)
    {
      goto LABEL_39;
    }

    result = chunking_Do_FrameChunking(v4, a1, v35, v24, v10);
    if (result)
    {
      return result;
    }
  }

  if (!a1[1148].i32[0])
  {
    return 0;
  }

  v25 = *(a2 + 80);
  v26 = heap_Calloc(*(v4 + 8), 1, 72);
  if (!v26)
  {
    v37 = "sample level chunking memory allocation error";
    goto LABEL_40;
  }

  v27 = v26;
  *v26 = v25;
  *(v26 + 8) = a1[1147].i32[0];
  v28 = a1[1145].u32[1];
  *(v26 + 12) = v28;
  *(v26 + 24) = a1[1148].i32[1];
  *(v26 + 16) = vrev64_s32(a1[1146]);
  *(v26 + 28) = 22050;
  *(v26 + 32) = v24;
  *(v26 + 36) = 0;
  *(v26 + 40) = 0;
  *(v26 + 48) = v28;
  *(v26 + 44) = v24;
  *(v26 + 52) = *(a2 + 104);
  *(v26 + 56) = *(a2 + 96);
  result = chunking_Do_SampleChunking_Process(v4, v26);
  if (result)
  {
    return result;
  }

  v30 = heap_Calloc(*(v4 + 8), *v11, 4);
  *(v11 + 1) = v30;
  if (v30)
  {
    v31 = heap_Calloc(*(v4 + 8), *v11, 4);
    *(v11 + 2) = v31;
    if (v31)
    {
      v32 = heap_Calloc(*(v4 + 8), *(v27 + 20) * *v11, 4);
      *(v11 + 3) = v32;
      if (v32)
      {
        v33 = heap_Calloc(*(v4 + 8), *(v27 + 20) * *v11, 4);
        *(v11 + 4) = v33;
        if (v33)
        {
          chunking_Do_SampleChunking_ProcessReset(v4, v27);
          chunking_Do_SampleChunking_Process(v4, v27);
          heap_Free(*(v4 + 8), v27);
          return 0;
        }
      }
    }
  }

LABEL_39:
  v37 = "memory allocation error";
LABEL_40:
  siren_log_Error(v4, v37);
  return 10;
}

uint64_t chunking_Do_PhoneChunking(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = result;
  v6 = *(a2 + 8);
  if (a3 && a4)
  {
    v8 = *a4;
    if (*a4)
    {
      v9 = 0;
      v25 = 0;
      v10 = 0;
      v11 = (a3 + 24);
      LOWORD(v12) = 100;
      v13 = *(a2 + 8);
      do
      {
        v14 = *(v11 - 6);
        if (v14 == 31)
        {
          v12 = *v11;
        }

        else if (v14 == 21)
        {
          result = cstdlib_strcmp(*v11, "spell");
          if (result)
          {
            result = cstdlib_strcmp(*v11, "normal");
            if (!result && v10 <= v13 && v13 != v6)
            {
              v10 = *(v11 - 3);
            }
          }

          else
          {
            if (v13 == v6)
            {
              v13 = *(v11 - 3);
            }

            v25 = 1;
          }
        }

        ++v9;
        v11 += 4;
      }

      while (v9 < *a4);
      LOBYTE(v8) = v25 == 1;
    }

    else
    {
      v10 = 0;
      LOWORD(v12) = 100;
      v13 = *(a2 + 8);
    }

    if ((v8 & (v10 == 0)) != 0)
    {
      v20 = v6 - 1;
    }

    else
    {
      v20 = v10;
    }

    v16 = 0;
    if (v6)
    {
      v21 = 0;
      do
      {
        result = phone_chunking_search(v5, v21, a2);
        v17 = *(a2 + 16);
        if (v17)
        {
          *(v17 + 4 * v16) = result;
        }

        v22 = *(a2 + 24);
        if (v22)
        {
          if (result <= v20 && result > v13)
          {
            v24 = v12;
          }

          else
          {
            v24 = 0;
          }

          *(v22 + 2 * v16) = v24;
        }

        ++v16;
        v21 = result + 1;
      }

      while (result + 1 < v6);
      goto LABEL_46;
    }

    if (!*(a2 + 16))
    {
LABEL_47:
      *(a2 + 48) = v16;
    }
  }

  else
  {
    if (v6 >= 0x15 && ((*(result + 9160) * *(result + 9164)) / *(result + 32)) / *(result + 9136) < v6)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        result = phone_chunking_search(v5, v15, a2);
        v17 = *(a2 + 16);
        if (v17)
        {
          *(v17 + 4 * v16) = result;
        }

        v18 = *(a2 + 24);
        if (v18)
        {
          *(v18 + 2 * v16) = 0;
        }

        ++v16;
        v15 = result + 1;
      }

      while (result + 1 < v6);
LABEL_46:
      if (v17)
      {
        return result;
      }

      goto LABEL_47;
    }

    v19 = *(a2 + 16);
    if (v19)
    {
      *v19 = v6 - 1;
    }

    else
    {
      *(a2 + 48) = 1;
    }
  }

  return result;
}

uint64_t chunking_Do_FrameChunking(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v7 = ((*(a2 + 9160) * *(a2 + 9164)) / *(a2 + 32));
  if (v7 >= a4 || *(a5 + 8) <= 2u)
  {
    v8 = *(a5 + 16);
    result = 0;
    if (v8)
    {
      *v8 = a4 - 1;
    }

    else
    {
      *(a5 + 24) = 1;
    }

    return result;
  }

  v13 = heap_Calloc(*(a1 + 8), a4, 1);
  if (!v13)
  {
    siren_log_Error(a1, "memory allocation error");
    return 10;
  }

  v14 = *(a5 + 8);
  v15 = -1;
  if (*(a5 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v18 += *(a3 + 4 * v16);
      v19 = *(*a5 + v16);
      v20 = v18 - 1;
      if (v16)
      {
        if (v16 != v14 - 1 && v19 >= 5)
        {
          *(v13 + v20) = 2;
          v19 = *(*a5 + v16);
          if (v19 == 6)
          {
            v20 += *(a3 + 4 * v16 + 4) >> 1;
          }

          else
          {
            v20 = v18 + ~(*(a3 + 4 * v16) >> 1);
          }
        }
      }

      *(v13 + v20) = v19;
      v14 = *(a5 + 8);
      if (v16 == v14 - 1)
      {
        v17 = *(a3 + 4 * v16);
      }

      ++v16;
    }

    while (v16 < *(a5 + 8));
    v15 = ~v17;
  }

  v22 = a4 - 1;
  if (a4 == 1)
  {
    LOWORD(v24) = 0;
    if (!*(a5 + 16))
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v23 = 0;
  v24 = 0;
  v25 = v15 + a4;
  v26 = *(a5 + 16);
  v27 = *(a2 + 9160);
  do
  {
    v28 = v7;
    if (v7 >= v22)
    {
      goto LABEL_35;
    }

    v29 = vcvtd_n_f64_u32(v7 - v23, 1uLL);
    if (v7 >= v29)
    {
      LOBYTE(v30) = 0;
      v31 = 0;
      v32 = v7;
      do
      {
        v33 = *(v13 + v32);
        v30 = v30;
        v34 = v30 >= v33;
        if (v30 <= v33)
        {
          v30 = *(v13 + v32);
        }

        if (!v34)
        {
          v31 = v32;
        }

        --v32;
      }

      while (v32 >= v7 - v29);
      if (v30 >= *(v13 + v7))
      {
        v28 = v31;
      }

      else
      {
        v28 = v7;
      }

LABEL_35:
      if (v28 > v23)
      {
        goto LABEL_37;
      }
    }

    v28 = v7;
LABEL_37:
    if (v28 >= v25)
    {
      v28 = a4 - 1;
    }

    if (v26)
    {
      *(v26 + 4 * v24) = v28;
    }

    ++v24;
    v35 = v28 - v23 + 1;
    v23 = v28 + 1;
    v36 = ((v28 + 1) + (v35 * v27));
    if (v36 >= a4)
    {
      v7 = a4 - 1;
    }

    else
    {
      v7 = v36;
    }
  }

  while (v23 < v22);
  if (v26)
  {
    goto LABEL_46;
  }

LABEL_49:
  *(a5 + 24) = v24;
LABEL_46:
  heap_Free(*(a1 + 8), v13);
  return 0;
}

uint64_t chunking_Do_SampleChunking_Process(uint64_t a1, int **a2)
{
  v3 = *(a2 + 11);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a2 + 5);
      v6 = *(a2 + 4);
      v7 = v4 == 0;
      v8 = *a2;
      if (v6 + ((((*(a2 + 12) * *(a2 + 2)) / 1000.0) * *(a2 + 7)) / *(a2 + 6) - 2 * v6) * v5 > v3)
      {
        if (v5 >= 2)
        {
          v9 = 0;
          v10 = 0;
          v11 = v3 / v5;
          v3 = 0;
          while (1)
          {
            v12 = *(a2 + 4);
            v13 = *(a2 + 11);
            v14 = *(v8 + 1);
            if (v11 >= v12)
            {
              v15 = *(a2 + 11);
            }

            else
            {
              *(a2 + 11) = 0;
              v3 += v13;
              if (v14)
              {
                v39 = *a2;
                v44 = *(*a2 + 4);
                if (v44)
                {
                  v45 = *(a2 + 5) * *(a2 + 10);
                  if (v10)
                  {
                    v45 += v9;
                    v46 = *(v44 + 4 * (v45 - 1));
                    v47 = v46 - v12 + 1;
                  }

                  else
                  {
                    v47 = 0;
                    v46 = v12 - 1;
                  }

                  v49 = v46 + v13;
                  v48 = *(v39 + 3);
                  *(v48 + 4 * v45) = v47;
                  *(v44 + 4 * v45) = v49;
                }

                else
                {
                  v48 = *(v39 + 3);
                }

                v50 = 1;
                v51 = 1;
                do
                {
                  v52 = v50 + *(a2 + 5) * *(a2 + 10);
                  *(v44 + 4 * v52) = -1;
                  *(v48 + 4 * v52) = 0;
                  v50 = ++v51;
                }

                while (v5 > v51);
                v40 = *(v39 + 1);
                if (v40)
                {
                  result = 0;
LABEL_75:
                  v41 = *(a2 + 9);
                  v42 = v41 - *(a2 + 4);
LABEL_76:
                  *(v40 + 4 * *(a2 + 10)) = v42;
                  *(*(v39 + 2) + 4 * *(a2 + 10)) = v3 + v41 - 1;
                  *(a2 + 36) = vadd_s32(*(a2 + 36), (v3 | 0x100000000));
                }

                else
                {
                  result = 0;
                }

                goto LABEL_77;
              }

              v15 = 0;
              v11 = v13;
            }

            *(a2 + 11) = v15 - v11;
            if (v4 || v10)
            {
              if (v14)
              {
                create_Thread_Chunk_Index(v12, v12, v11, v9, a2);
              }
            }

            else if (v14)
            {
              v16 = *(*a2 + 4);
              if (v16)
              {
                v17 = *(a2 + 5) * *(a2 + 10);
                *(*(*a2 + 3) + 4 * v17) = 0;
                *(v16 + 4 * v17) = v12 + v11 - 1;
              }
            }

            v3 += v11;
            v9 = ++v10;
            if (v5 - 1 <= v10)
            {
              v18 = *(a2 + 11);
              *(a2 + 11) = 0;
              v3 += v18;
              goto LABEL_46;
            }
          }
        }

        v9 = 0;
        *(a2 + 11) = 0;
        if (v4 || v5 != 1)
        {
          v18 = v3;
LABEL_46:
          if (*(v8 + 1))
          {
            v38 = **a2;
            create_Thread_Chunk_Index(*(a2 + 4), *(a2 + 4), v18, v9, a2);
            *(*(*a2 + 4) + 4 * (v38 * v5 - 1)) -= *(a2 + 4);
          }
        }

        else
        {
          if (*(v8 + 1))
          {
            v30 = *(v8 + 4);
            if (v30)
            {
              v31 = *(a2 + 10);
              *(*(v8 + 3) + 4 * v31) = 0;
              *(v30 + 4 * v31) = v3 + v6 - 1;
            }
          }

          v7 = 1;
        }

        if (*(a2 + 11) || !v3)
        {
          siren_log_Error(a1, "bet6 nnvocoder sample level chunking last sample chunk calculation error.");
          result = 15;
        }

        else
        {
          result = 0;
        }

        if (*(v8 + 1))
        {
          if (*(a2 + 10) >= *v8)
          {
            siren_log_Error(a1, "bet6 nnvocoder sample level chunking last sample chunk calculation error.");
            result = 15;
          }

          v39 = *a2;
          v40 = *(*a2 + 1);
          if (v7)
          {
            if (v40)
            {
              v41 = *(a2 + 9);
              v42 = v41;
              goto LABEL_76;
            }
          }

          else if (v40)
          {
            goto LABEL_75;
          }
        }

LABEL_77:
        v3 = *(a2 + 11);
        goto LABEL_78;
      }

      if (v5)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        do
        {
          if (v4 || v20)
          {
            v27 = ((*(a2 + 12) * *(a2 + 2)) / 1000.0) * *(a2 + 7);
            v28 = *(a2 + 4);
            v23 = v27 / *(a2 + 6) - 2 * v28;
            if (*(v8 + 1))
            {
              create_Thread_Chunk_Index(v8[1], v8[1], v27 / *(a2 + 6) - 2 * v28, v19, a2);
            }
          }

          else
          {
            v22 = ((*(a2 + 12) * *(a2 + 2)) / 1000.0) * *(a2 + 7);
            *(a2 + 16) = 0;
            v23 = v22 / *(a2 + 6) - *(a2 + 4);
            if (*(v8 + 1))
            {
              v24 = *(*a2 + 4);
              if (v24)
              {
                v25 = *(a2 + 5) * *(a2 + 10);
                v26 = v23 + v8[1] - 1;
                *(*(*a2 + 3) + 4 * v25) = 0;
                *(v24 + 4 * v25) = v26;
              }
            }
          }

          *(a2 + 11) -= v23;
          v21 += v23;
          v19 = ++v20;
        }

        while (v5 > v20);
        v29 = v23 == 0;
      }

      else
      {
        v21 = 0;
        v29 = 1;
      }

      if (!*(v8 + 1))
      {
        result = 0;
        goto LABEL_63;
      }

      if (*(a2 + 10) >= *v8)
      {
        siren_log_Error(a1, "bet6 nnvocoder sample level chunking sample chunk calculation error.");
        result = 15;
      }

      else
      {
        result = 0;
      }

      v33 = *a2;
      v34 = *(*a2 + 1);
      if (v4)
      {
        if (!v34)
        {
          goto LABEL_63;
        }

        v35 = v8[1];
        v36 = *(a2 + 9);
        v37 = v36 - v35;
      }

      else
      {
        if (!v34)
        {
          goto LABEL_63;
        }

        v35 = v8[1];
        v36 = *(a2 + 9);
        v37 = v36;
      }

      *(v34 + 4 * *(a2 + 10)) = v37;
      *(*(v33 + 2) + 4 * *(a2 + 10)) = v21 + v36 + v35 - 1;
      *(a2 + 36) = vadd_s32(*(a2 + 36), (v21 | 0x100000000));
LABEL_63:
      v43 = (v21 * *(a2 + 6)) * 1000.0 / *(a2 + 7);
      *(a2 + 12) = v43;
      v3 = *(a2 + 11);
      if (v3 == 0 || v29)
      {
        siren_log_Error(a1, "bet6 nnvocoder sample level chunkign first or in-between sample chunk calculation error.");
        result = 15;
        goto LABEL_77;
      }

LABEL_78:
      ++v4;
      if (!v3)
      {
        goto LABEL_82;
      }
    }
  }

  result = 0;
  v4 = 0;
LABEL_82:
  if (!**a2)
  {
    **a2 = v4;
  }

  return result;
}

uint64_t chunking_Do_SampleChunking_ProcessReset(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return siren_log_Error(result, "bet6 nnvocoder sample level chunking ChunkingSampleProcess struct not initalized.");
  }

  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = *(a2 + 12);
  *(a2 + 44) = *(a2 + 32);
  return result;
}

uint64_t *chunking_Close(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v5 = result[8];
  v4 = result[9];
  v6 = result[10];
  v7 = result[11];
  if (v5)
  {
    v8 = v5[2];
    if (v8)
    {
      heap_Free(*(v3 + 8), v8);
      v5[2] = 0;
    }

    v9 = v5[3];
    if (v9)
    {
      heap_Free(*(v3 + 8), v9);
      v5[3] = 0;
    }

    v10 = v5[5];
    if (v10)
    {
      heap_Free(*(v3 + 8), v10);
      v5[5] = 0;
    }

    v11 = v5[4];
    if (v11)
    {
      heap_Free(*(v3 + 8), v11);
      v5[4] = 0;
    }

    if (*v5)
    {
      heap_Free(*(v3 + 8), *v5);
      *v5 = 0;
    }

    result = heap_Free(*(v3 + 8), v5);
  }

  if (v7)
  {
    v12 = *(v7 + 8);
    if (v12)
    {
      heap_Free(*(v3 + 8), v12);
      *(v7 + 8) = 0;
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      heap_Free(*(v3 + 8), v13);
      *(v7 + 16) = 0;
    }

    result = heap_Free(*(v3 + 8), v7);
  }

  if (v4)
  {
    v14 = v4[2];
    if (v14)
    {
      heap_Free(*(v3 + 8), v14);
      v4[2] = 0;
    }

    if (*v4)
    {
      heap_Free(*(v3 + 8), *v4);
      *v4 = 0;
    }

    result = heap_Free(*(v3 + 8), v4);
  }

  if (*(a2 + 9184) && v6)
  {
    v15 = v6[1];
    if (v15)
    {
      heap_Free(*(v3 + 8), v15);
      v6[1] = 0;
    }

    v16 = v6[2];
    if (v16)
    {
      heap_Free(*(v3 + 8), v16);
      v6[2] = 0;
    }

    v17 = v6[3];
    if (v17)
    {
      heap_Free(*(v3 + 8), v17);
      v6[3] = 0;
    }

    v18 = v6[4];
    if (v18)
    {
      heap_Free(*(v3 + 8), v18);
      v6[4] = 0;
    }

    v19 = *(v3 + 8);

    return heap_Free(v19, v6);
  }

  return result;
}

uint64_t phone_chunking_search(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 8) - 1;
  v4 = *(a1 + 9144) + a2;
  if (v4 >= v3)
  {
    result = v3;
  }

  else
  {
    result = v4;
  }

  if (result > a2)
  {
    v6 = -a2;
    v7 = (*a3 + a2);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 >= 6)
      {
        v12 = -v6 > a2 && v8 > 7;
        return ((v12 << 31 >> 31) - v6);
      }

      --v6;
    }

    while (-result != v6);
    v10 = result;
    while (*(*a3 + v10) <= 3u)
    {
      v10 = (v10 - 1);
      if (v10 <= a2)
      {
        v10 = result;
        while (*(*a3 + v10) <= 2u)
        {
          v10 = (v10 - 1);
          if (v10 <= a2)
          {
            v10 = result;
            while (*(*a3 + v10) != 2)
            {
              v10 = (v10 - 1);
              if (v10 <= a2)
              {
                return result;
              }
            }

            return v10;
          }
        }

        return v10;
      }
    }

    return v10;
  }

  return result;
}

uint64_t create_Thread_Chunk_Index(uint64_t result, int a2, int a3, int a4, _DWORD *a5)
{
  v5 = *(*a5 + 32);
  if (v5)
  {
    v6 = a5[5] * a5[10];
    if (a4)
    {
      v6 += a4;
      v7 = *(v5 + 4 * (v6 - 1));
      v8 = v7 - (result + a2) + 1;
    }

    else
    {
      v8 = 0;
      v7 = a2 + result - 1;
    }

    *(*(*a5 + 24) + 4 * v6) = v8;
    *(v5 + 4 * v6) = v7 + a3;
  }

  return result;
}

uint64_t infer_dur_init(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v16 = 0;
  v5 = heap_Calloc(*(v4 + 8), 1, 88);
  if (!v5)
  {
    v9 = "memory allocation error";
LABEL_5:
    siren_log_Error(v4, v9);
    return 10;
  }

  v6 = v5;
  a1[6] = v5;
  *(v5 + 16) = 100;
  *(v5 + 72) = v4;
  v7 = fi_rsc_create(v4, (v5 + 80));
  if (!v7)
  {
    v10 = parse_fi_binary_model(*(v6 + 80), a2, &v16);
    if (v10)
    {
      v8 = v10;
      siren_log_Error(v4, "Duration Model FI binary model parsing failed: %d");
      return v8;
    }

    v12 = v16;
    *v6 = v16;
    LODWORD(v12) = *(v12 + 60);
    *(v6 + 20) = v12;
    v13 = heap_Calloc(*(*(v6 + 72) + 8), (100 * v12), 4);
    *(v6 + 32) = v13;
    if (v13)
    {
      v14 = heap_Calloc(*(*(v6 + 72) + 8), 100, 4);
      *(v6 + 8) = v14;
      if (v14)
      {
        v15 = heap_Calloc(*(*(v6 + 72) + 8), 100, 4);
        *(v6 + 56) = v15;
        if (v15)
        {
          siren_log_Diag(v4, "infer(duration) init done....\n");
          return 0;
        }
      }
    }

    v9 = "memory allocation error.";
    goto LABEL_5;
  }

  v8 = v7;
  siren_log_Error(v4, "Duration Model FI Resource creation failed: %d");
  return v8;
}

uint64_t infer_dur_process(uint64_t a1, uint64_t *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = a2[6];
  v5 = *a2;
  v6 = a2[1];
  v7 = *(v6 + 10);
  *(v4 + 48) = *(a2[4] + 8);
  v8 = *(v4 + 16);
  if (v8 < v7)
  {
    *(v4 + 16) = v7;
    v9 = heap_Realloc(*(v5 + 8), *(v4 + 32), 4 * (*(v4 + 20) * v7));
    *(v4 + 32) = v9;
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = heap_Realloc(*(v5 + 8), *(v4 + 8), 4 * v7);
    *(v4 + 8) = v10;
    if (!v10)
    {
      goto LABEL_16;
    }

    *(v4 + 56) = heap_Realloc(*(v5 + 8), *(v4 + 56), 4 * v7);
    if (!*(v4 + 8))
    {
      goto LABEL_16;
    }

    v8 = *(v4 + 16);
  }

  cstdlib_memset(*(v4 + 32), 0, 4 * *(v4 + 20) * v8);
  cstdlib_memset(*(v4 + 8), 0, 4 * *(v4 + 16));
  cstdlib_memset(*(v4 + 56), 0, 4 * *(v4 + 16));
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(*(v6 + 32) + v11) == 1)
      {
        *(*(v4 + 56) + 4 * v11) = *(a1 + 8076);
      }

      else
      {
        cstdlib_memcpy((*(v4 + 32) + 4 * (*(v4 + 20) * v12)), (*(v4 + 48) + 4 * (*(v4 + 20) * v11)), 4 * *(v4 + 20));
        *(*(v4 + 8) + 4 * v12) = v11;
        v12 = (v12 + 1);
      }

      ++v11;
    }

    while (v7 != v11);
    if (v12)
    {
      v13 = *(v4 + 20) * *(v6 + 10);
      v14 = heap_Calloc(*(*(v4 + 72) + 8), v13, 4);
      v31[0] = v14;
      if (v14)
      {
        cstdlib_memcpy(v14, *(v4 + 32), 4 * v13);
        v19 = fi_net_predict(*v4, v31, v12, (v4 + 40), v15, v16, v17, v18);
        if (v19)
        {
          v20 = v19;
          siren_log_Error(v5, "Duration Model FI inferece failed: %d");
          return v20;
        }

        v22 = *(v4 + 56);
        v28 = 4 * v12;
        v29 = *(v4 + 40) - 4;
        v30 = *(v4 + 8) - 4;
        do
        {
          v22[*(v30 + v28)] = vcvtps_u32_f32(fmaxf(*(v29 + v28), 1.0));
          v28 -= 4;
        }

        while (v28);
        v23 = a2[1];
        *(v4 + 24) = 0;
        v21 = (v4 + 24);
        goto LABEL_19;
      }

LABEL_16:
      siren_log_Error(v5, "memory allocation error.");
      return 10;
    }
  }

  siren_log_Diag(v5, "No non-silence phones found in duration inference.");
  *(v4 + 24) = 0;
  v21 = (v4 + 24);
  v22 = *(v4 + 56);
  if (v22)
  {
    v23 = a2[1];
LABEL_19:
    v24 = *(v23 + 10);
    if (v24 >= 1)
    {
      v25 = 0;
      do
      {
        v26 = *v22++;
        v25 += v26;
        *v21 = v25;
        --v24;
      }

      while (v24);
    }

    goto LABEL_24;
  }

  siren_log_Error(v5, "input duration sequence error....");
LABEL_24:
  siren_log_Diag(v5, "infer(duration) process one sentence done....\n");
  if (log_GetLogLevel(*(v5 + 32)) >= 3)
  {
    siren_compute_stream_hash(*(v4 + 56), 4 * *(v6 + 10), v31);
    siren_log_Diag(v5, "INFER_DUR_MD5=%s\n");
  }

  return 0;
}

uint64_t infer_dur_end(uint64_t *a1)
{
  v2 = a1[6];
  v3 = *a1;
  v4 = v2[1];
  if (v4)
  {
    heap_Free(*(v3 + 8), v4);
    v2[1] = 0;
  }

  v5 = v2[4];
  if (v5)
  {
    heap_Free(*(v3 + 8), v5);
    v2[4] = 0;
  }

  v6 = v2[7];
  if (v6)
  {
    heap_Free(*(v3 + 8), v6);
    v2[7] = 0;
  }

  if (*v2)
  {
    fi_net_destroy(*v2);
    *v2 = 0;
  }

  v2[5] = 0;
  v2[6] = 0;
  v7 = v2[10];
  if (v7)
  {
    fi_rsc_destroy(v7);
    v2[10] = 0;
  }

  heap_Free(*(v3 + 8), v2);
  a1[6] = 0;
  siren_log_Diag(v3, "infer(duration) close done....\n");
  return 0;
}

uint64_t siren_common_synth_Init(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  result = 7;
  if (a1 && a2)
  {
    v7 = heap_Calloc(*(a1 + 8), 1, 144);
    v8 = v7;
    if (v7)
    {
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 72) = 100;
      v9 = a2[4];
      *(v7 + 44) = 80;
      v10 = 274877907 * a2[8] * v9;
      LODWORD(v10) = (v10 >> 63) + (SHIDWORD(v10) >> 6);
      *(v7 + 16) = a1;
      *(v7 + 24) = a2;
      *(v7 + 36) = v10;
      *(v7 + 40) = v9;
      v11 = heap_Calloc(*(a1 + 8), (4 * v10), 2);
      *(v8 + 96) = v11;
      if (v11 && (v12 = heap_Calloc(*(a1 + 8), *(*(v8 + 24) + 9204), 4), (*(v8 + 112) = v12) != 0))
      {
        *(v8 + 104) = 0;
        if (a2[2278])
        {
          *(v8 + 36) = a2[2297];
          if (*(*(v8 + 24) + 9168) < 2u)
          {
            v13 = new_siren_nn_synth_Init(v8);
          }

          else
          {
            v13 = new_siren_nn_mt_synth_Init(v8);
          }
        }

        else
        {
          v15 = 274877907 * *(*(v8 + 24) + 32) * *(*(v8 + 24) + 16);
          *(v8 + 36) = (v15 >> 63) + (SHIDWORD(v15) >> 6);
          v13 = new_siren_mrcc_synth_Init(v8);
        }

        v14 = v13;
        if (!v13)
        {
          result = 0;
          goto LABEL_15;
        }
      }

      else
      {
        v14 = 10;
      }

      siren_common_synth_DeInit(v8);
      v8 = 0;
      result = v14 | 0x84E02000;
    }

    else
    {
      result = 2229280778;
    }

LABEL_15:
    *a3 = v8;
  }

  return result;
}

uint64_t siren_common_synth_DeInit(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[2];
    v3 = a1[12];
    if (v3)
    {
      heap_Free(*(v2 + 8), v3);
    }

    v4 = a1[14];
    if (v4)
    {
      heap_Free(*(v2 + 8), v4);
    }

    v5 = a1[3];
    if (*(v5 + 9112))
    {
      if (*(v5 + 9168) < 2u)
      {
        v6 = new_siren_nn_synth_DeInit(a1);
      }

      else
      {
        v6 = new_siren_nn_mt_synth_DeInit(a1);
      }

      v7 = v6;
      v8 = *a1;
      if (!*a1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = new_siren_mrcc_synth_DeInit(a1);
      v8 = a1[1];
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    heap_Free(*(v2 + 8), v8);
LABEL_15:
    cstdlib_memset(a1, 0, 0x90uLL);
    heap_Free(*(v2 + 8), a1);
    return v7;
  }

  return 0;
}

uint64_t siren_common_synth_Reset(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 72) = 100;
    v1 = *(a1 + 24);
    *(a1 + 40) = v1[4];
    *(a1 + 44) = 80;
    *(a1 + 104) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 88) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 120) = 0;
    if (v1[2278])
    {
      if (v1[2292] < 2u)
      {
        return new_siren_nn_synth_Reset(a1);
      }

      else
      {
        return new_siren_nn_mt_synth_Reset(a1);
      }
    }

    else
    {
      return new_siren_mrcc_synth_Reset(a1);
    }
  }

  return a1;
}

uint64_t siren_common_synth_ProcessStart(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, double a7, float a8)
{
  v10 = *(a1 + 48);
  v11 = *(a1 + 24);
  v12 = v11[2293];
  v13 = v11[2292];
  if (a3)
  {
    *(a1 + 88) = 0;
    *(a1 + 52) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = a2;
    *(a1 + 48) = a3;
    *(a1 + 32) = a5;
  }

  else
  {
    a3 = *(a1 + 48);
  }

  *(a1 + 80) = a4;
  if (v11[2278])
  {
    if (v13 < 2)
    {

      return new_siren_nn_synth_ProcessStart();
    }

    else if (a3 <= v10 || (LOWORD(a8) = *(a1 + 72), v14 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 96), 2 * (a3 + 2 * v12 * v13) * ((LODWORD(a8) / 100.0) * *(a1 + 36))), (*(a1 + 96) = v14) != 0))
    {

      return new_siren_nn_mt_synth_ProcessStart(a1, a6);
    }

    else
    {
      return 10;
    }
  }

  else
  {

    return new_siren_mrcc_synth_ProcessStart(a1);
  }
}

uint64_t siren_common_synth_Process(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 24);
  if (!v3[2278])
  {
    return new_siren_mrcc_synth_Process(a1, a2, a3);
  }

  if (v3[2280])
  {
    return siren_nn_seq2seq_synth_Process(a1, *(a1 + 16), a2, a3);
  }

  if (v3[2282])
  {
    return siren_nn_parallel_synth_Process(a1, *(a1 + 16), a2, a3);
  }

  if (v3[2292] < 2u)
  {
    return new_siren_nn_synth_Process(a1, a2, a3);
  }

  return new_siren_nn_mt_synth_Process(a1);
}

uint64_t siren_common_synth_ProcessEnd(uint64_t a1)
{
  if (*(*(a1 + 24) + 9112))
  {
    return 0;
  }

  else
  {
    return new_siren_mrcc_synth_ProcessEnd(a1);
  }
}

uint64_t siren_common_synth_GetVolumeLevel(uint64_t result)
{
  if (result)
  {
    return *(result + 44);
  }

  return result;
}

uint64_t siren_common_synth_GetRatePct(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t siren_common_synth_GetFrameSamples(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t siren_common_synth_GetCurSampleCount(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t siren_common_synth_GetCurFrameCount(uint64_t result)
{
  if (result)
  {
    return *(result + 52);
  }

  return result;
}

uint64_t siren_common_synth_GetBufSamplesCount(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t siren_common_synth_GetLeftSamplesCount(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

uint64_t siren_common_synth_GetFramesCount(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t siren_common_synth_GetIsBufferFull(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t siren_common_synth_GetLeftFrames(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t siren_common_synth_GetLeftSamples(uint64_t result)
{
  if (result)
  {
    return *(result + 124);
  }

  return result;
}

uint64_t siren_common_synth_GetUsedLeftFrames(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t siren_common_synth_GetUsedLeftSamples(uint64_t result)
{
  if (result)
  {
    return *(result + 132);
  }

  return result;
}

uint64_t siren_common_synth_GetFeedFrames(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

uint64_t siren_common_synth_GetFeedSamples(uint64_t result)
{
  if (result)
  {
    return *(result + 140);
  }

  return result;
}

uint64_t siren_common_synth_SetCurSampleCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 56) = a2;
  return result;
}

uint64_t siren_common_synth_SetCurFrameCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 52) = a2;
  return result;
}

uint64_t siren_common_synth_SetBufSamplesCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 32) = a2;
  return result;
}

uint64_t siren_common_synth_SetLeftSamplesCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 104) = a2;
  return result;
}

uint64_t siren_common_synth_SetFramesCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t siren_common_synth_SetIsBufferFull(uint64_t a1, unsigned int a2)
{
  result = 2229280786;
  if (a1)
  {
    if (a2 <= 1)
    {
      result = 0;
      *(a1 + 88) = a2;
    }
  }

  return result;
}

uint64_t siren_common_synth_SetLeftFrames(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 120) = a2;
  return result;
}

uint64_t siren_common_synth_SetLeftSamples(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 124) = a2;
  return result;
}

uint64_t siren_common_synth_SetUsedLeftFrames(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 128) = a2;
  return result;
}

uint64_t siren_common_synth_SetUsedLeftSamples(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 132) = a2;
  return result;
}

uint64_t siren_common_synth_SetFeedFrames(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 136) = a2;
  return result;
}

uint64_t siren_common_synth_SetFeedSamples(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2229280786;
  }

  result = 0;
  *(a1 + 140) = a2;
  return result;
}

uint64_t siren_common_synth_GetRsrc(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t siren_common_synth_GetNnInfo(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t siren_common_synth_GetMrccInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t siren_common_synth_SetNnInfo(void *a1, uint64_t a2)
{
  result = 2229280786;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a1 = a2;
    }
  }

  return result;
}

uint64_t siren_common_synth_SetMrccInfo(uint64_t a1, uint64_t a2)
{
  result = 2229280786;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a1 + 8) = a2;
    }
  }

  return result;
}

uint64_t siren_common_synth_GetPcmBuffer(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t siren_common_synth_GetLeftPcmBuffer(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t siren_common_synth_GetVoice(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t siren_common_synth_GetFrames(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t siren_common_synth_GetLeftAcousticBuffer(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t siren_common_synth_SetRate(uint64_t a1, int a2)
{
  result = 2229280786;
  if (a1)
  {
    if ((a2 - 25) <= 0xAF)
    {
      result = 0;
      *(a1 + 72) = a2;
    }
  }

  return result;
}

uint64_t siren_common_synth_SetVolume(uint64_t a1, unsigned int a2)
{
  result = 2229280786;
  if (a1)
  {
    if (a2 <= 0x64)
    {
      result = 0;
      *(a1 + 44) = a2;
    }
  }

  return result;
}

uint64_t siren_common_synth_SetPitch(uint64_t a1, unsigned int a2)
{
  if (*(*(a1 + 24) + 9112))
  {
    return 2229280786;
  }

  else
  {
    return new_siren_mrcc_synth_SetPitch(a1, a2);
  }
}

uint64_t synth_bet6_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &ISynth_Bet6;
  return result;
}

uint64_t synth_bet6_ClassOpen(_WORD *a1, int a2, uint64_t a3)
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
    *(a3 + 8) = 135972;
  }

  return result;
}

uint64_t synth_bet6_ObjOpen(uint64_t a1, int a2, _WORD *a3, int a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v44 = 0;
  v5 = 2229280775;
  memset(v45, 0, sizeof(v45));
  v42 = 0;
  v40 = xmmword_287EF0AE0;
  v41 = off_287EF0AF0;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v44);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      if ((safeh_HandleCheck(a1, a2, 135972, 416) & 0x80000000) == 0)
      {
        *a5 = 0;
        *(a5 + 8) = 0;
        log_OutText(*(v44 + 32), "SYNTH_BET6", 4, 0, "Entering synth_bet6_ObjOpen", v10, v11, v12, v38);
        v13 = heap_Calloc(*(v44 + 8), 1, 1184);
        v18 = v44;
        if (!v13)
        {
          log_OutPublic(*(v44 + 32), "SYNTH_BET6", 73000, 0, v14, v15, v16, v17, v39);
          return 2229280778;
        }

        v19 = v13;
        *v13 = a1;
        v13[1] = v18;
        Object = critsec_ObjOpen(*(v44 + 16), *(v44 + 8), v13 + 2);
        if ((Object & 0x80000000) == 0)
        {
          Object = objc_GetObject(*(v44 + 48), "SYNTHSTREAM", &v43);
          if ((Object & 0x80000000) == 0)
          {
            v25 = v44;
            *(v19 + 56) = *(v43 + 8);
            betX_CreateRegularBrokerString(v25, 0, v45, 0x80uLL);
            v5 = select_bet6_VoiceOpen(*v19, *(v19 + 8), v45, v19 + 24);
            if ((v5 & 0x80000000) != 0)
            {
LABEL_25:
              log_OutPublic(*(*(v19 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v21, v22, v23, v24, "lhError");
LABEL_26:
              *a5 = v19;
              *(a5 + 8) = 135973;
LABEL_27:
              synth_bet6_ObjClose(v19, *(a5 + 8));
              *a5 = 0;
              *(a5 + 8) = 0;
LABEL_28:
              log_OutText(*(v44 + 32), "SYNTH_BET6", 4, 0, "synth_bet6_ObjOpen: %x", v34, v35, v36, v5);
              return v5;
            }

            SirenVoice = select_bet6_GetSirenVoice((v19 + 24));
            *(v19 + 40) = SirenVoice;
            if (!SirenVoice)
            {
              log_OutPublic(*(*(v19 + 8) + 32), "SYNTH_BET6", 73001, 0, v27, v28, v29, v30, v39);
              *a5 = v19;
              *(a5 + 8) = 135973;
              goto LABEL_33;
            }

            *&v40 = v19;
            Listen = synth_bet6_loc_ParamGetListen(v19, "volume", 0, 100, 0x50u, &v40, &v42);
            if ((Listen & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            Listen = synth_bet6_loc_ParamGetListen(v19, "rate_baseline", 50, 400, 0x64u, &v40, &v42);
            if ((Listen & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            Listen = synth_bet6_loc_ParamGetListen(v19, "pitch_baseline", 50, 200, 0x64u, &v40, &v42);
            if ((Listen & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            Listen = synth_bet6_loc_ParamGetListen(v19, "rate", 50, 400, 0x64u, &v40, &v42);
            if ((Listen & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            Listen = synth_bet6_loc_ParamGetListen(v19, "pitch", 50, 200, 0x64u, &v40, &v42);
            if ((Listen & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            Listen = synth_bet6_loc_ParamGetListen(v19, "audiooutputbufsamples", 1, 0x7FFFFFFF, 0x100u, &v40, &v42);
            if ((Listen & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            *(v19 + 1036) = v42;
            v32 = *(v19 + 40);
            v33 = 274877907 * v32[8] * v32[4];
            *(v19 + 1032) = (v33 >> 63) + (SHIDWORD(v33) >> 6);
            if (v32[2282] || v32[2280])
            {
              *(v19 + 1032) = v32[2297];
            }

            Listen = synth_bet6_loc_ParamGetListen(v19, "waitfactor", 0, 9, 2u, &v40, &v42);
            if ((Listen & 0x80000000) != 0)
            {
LABEL_31:
              v5 = Listen;
              goto LABEL_26;
            }

            Object = siren_common_synth_Init(*(v19 + 8), *(v19 + 40), (v19 + 48));
            if ((Object & 0x80000000) == 0)
            {
              v5 = synth_bet6_loc_InitFromParamc(v19);
              *a5 = v19;
              *(a5 + 8) = 135973;
              if ((v5 & 0x80000000) != 0)
              {
                goto LABEL_27;
              }

LABEL_33:
              if (*(v19 + 40) && *(v19 + 48))
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }
          }
        }

        v5 = Object;
        goto LABEL_25;
      }

      return 2229280776;
    }
  }

  return v5;
}

uint64_t synth_bet6_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 135973, 1184);
  if ((v3 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v7 = v3;
  if (a1)
  {
    v8 = a1[1];
    log_OutText(*(v8 + 32), "SYNTH_BET6", 4, 0, "Entering synth_bet6_ObjClose", v4, v5, v6, v43);
    v9 = *(v8 + 40);
    v45 = a1;
    v44 = *(&xmmword_287EF0AE0 + 8);
    v46 = *(&xmmword_287EF0AE0 + 8);
    v10 = paramc_ListenerRemove(v9, "volume", &v45);
    v11 = *(v8 + 40);
    if (v10 < 0)
    {
      LODWORD(v7) = v10;
    }

    v45 = a1;
    v46 = v44;
    v12 = paramc_ListenerRemove(v11, "rate", &v45);
    v13 = *(v8 + 40);
    if (v12 < 0 && v7 > -1)
    {
      LODWORD(v7) = v12;
    }

    v45 = a1;
    v46 = v44;
    v15 = paramc_ListenerRemove(v13, "pitch", &v45);
    v16 = *(v8 + 40);
    if (v15 < 0 && v7 > -1)
    {
      LODWORD(v7) = v15;
    }

    v45 = a1;
    v46 = v44;
    v18 = paramc_ListenerRemove(v16, "pitch_baseline", &v45);
    v19 = *(v8 + 40);
    if (v18 < 0 && v7 > -1)
    {
      LODWORD(v7) = v18;
    }

    v45 = a1;
    v46 = v44;
    v21 = paramc_ListenerRemove(v19, "rate_baseline", &v45);
    v22 = *(v8 + 40);
    if (v21 < 0 && v7 > -1)
    {
      LODWORD(v7) = v21;
    }

    v45 = a1;
    v46 = v44;
    v24 = paramc_ListenerRemove(v22, "audiooutputbufsamples", &v45);
    v25 = *(v8 + 40);
    if (v24 < 0 && v7 > -1)
    {
      LODWORD(v7) = v24;
    }

    v45 = a1;
    v46 = v44;
    v27 = paramc_ListenerRemove(v25, "waitfactor", &v45);
    if (v27 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v27;
    }

    v29 = a1[6];
    if (v29)
    {
      v30 = siren_common_synth_DeInit(v29);
      if (v7 > -1 && v30 < 0)
      {
        v7 = v30;
      }

      else
      {
        v7 = v7;
      }
    }

    if (a1[5])
    {
      v32 = select_bet6_VoiceClose(*a1, a1 + 3);
      if (v7 > -1 && v32 < 0)
      {
        v7 = v32;
      }

      else
      {
        v7 = v7;
      }
    }

    if (a1[7])
    {
      v34 = objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
      if (v7 > -1 && v34 < 0)
      {
        v7 = v34;
      }

      else
      {
        v7 = v7;
      }
    }

    v36 = a1[2];
    if (v36)
    {
      v37 = critsec_ObjClose(v36);
      if (v7 > -1 && v37 < 0)
      {
        v7 = v37;
      }

      else
      {
        v7 = v7;
      }
    }

    heap_Free(*(v8 + 8), a1);
    log_OutText(*(v8 + 32), "SYNTH_BET6", 4, 0, "Leaving synth_bet6_ObjClose: %x", v39, v40, v41, v7);
  }

  return v7;
}

uint64_t synth_bet6_ObjReopen(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *__s1 = 0u;
  v19 = 0u;
  if ((safeh_HandleCheck(a1, a2, 135973, 1184) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  log_OutText(*(*(a1 + 8) + 32), "SYNTH_BET6", 4, 0, "Entering synth_bet6_ObjReopen", v3, v4, v5, v17);
  LODWORD(v9) = betX_CreateRegularBrokerString(*(a1 + 8), 0, __s1, 0x80uLL);
  if ((v9 & 0x80000000) == 0 && *(a1 + 40) && (VoiceBrkString = select_bet6_GetVoiceBrkString((a1 + 24)), cstdlib_strcmp(__s1, VoiceBrkString)))
  {
    v11 = siren_common_synth_DeInit(*(a1 + 48));
    if (v11 < 0)
    {
      LODWORD(v9) = v11;
    }

    v12 = select_bet6_VoiceClose(*a1, (a1 + 24));
    if ((v12 & 0x80000000) != 0 || (v12 = select_bet6_VoiceOpen(*a1, *(a1 + 8), __s1, a1 + 24), (v12 & 0x80000000) != 0))
    {
      v14 = v12;
    }

    else
    {
      SirenVoice = select_bet6_GetSirenVoice((a1 + 24));
      *(a1 + 40) = SirenVoice;
      v14 = siren_common_synth_Init(*(a1 + 8), SirenVoice, (a1 + 48));
      if ((v14 & 0x80000000) != 0)
      {
        select_bet6_VoiceClose(*a1, (a1 + 24));
      }

      else
      {
        LODWORD(v9) = synth_bet6_loc_InitFromParamc(a1);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = v9 <= -1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v9 = v9;
  }

  else
  {
    v9 = v14;
  }

  log_OutText(*(*(a1 + 8) + 32), "SYNTH_BET6", 4, 0, "synth_bet6_ObjReopen: %x", v6, v7, v8, v9);
  return v9;
}

uint64_t synth_bet6_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v8 = 2229280778;
  if ((safeh_HandleCheck(a1, a2, 135973, 1184) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  synstrmaux_BuildAudioContentType("audio/L16;rate=", *(*(a1 + 40) + 16), (a1 + 984), 0x30uLL);
  synstrmaux_InitStreamOpener(a1 + 64, *(*(a1 + 8) + 32), "SYNTH_BET6");
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-bet6-speech-frames", 0, a1 + 904);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 888);
  synstrmaux_RegisterOutStream((a1 + 64), a1 + 984, a1 + 968);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 952);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-bet6-sample-chunk", 0, a1 + 920);
  synstrmaux_RegisterInStream((a1 + 64), "applcation/x-realspeak-bet6-select-audio", 0, a1 + 936);
  v9 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 56), a3, a4);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v10 = heap_Calloc(*(*(a1 + 8) + 8), *(a1 + 1036), 2);
  *(a1 + 1128) = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = heap_Calloc(*(*(a1 + 8) + 8), *(a1 + 1036), 2);
  *(a1 + 1136) = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  if (*(*(a1 + 40) + 9184) && (v9 = SampleChunk_alloc(*(a1 + 8), (a1 + 1176)), (v9 & 0x80000000) != 0) || (v9 = siren_common_synth_Reset(*(a1 + 48)), (v9 & 0x80000000) != 0))
  {
LABEL_11:
    v8 = v9;
    goto LABEL_12;
  }

  v8 = synth_bet6_loc_InitFromParamc(a1);
  if ((v8 & 0x80000000) != 0)
  {
LABEL_12:
    synth_bet6_ProcessEnd(a1, a2);
    return v8;
  }

  *(a1 + 1120) = 0;
  *(a1 + 1060) = 0u;
  *(a1 + 1076) = 0u;
  paramc_ParamGetInt(*(*(a1 + 8) + 40), "rate", &v13);
  *(a1 + 1092) = v13 / 100.0;
  paramc_ParamGetInt(*(*(a1 + 8) + 40), "pitch", &v13);
  *(a1 + 1096) = v13 / 100.0;
  paramc_ParamGetInt(*(*(a1 + 8) + 40), "volume", &v13);
  *(a1 + 1100) = v13 / 100.0;
  return v8;
}

uint64_t synth_bet6_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v7 = 2229280778;
  if ((safeh_HandleCheck(a1, a2, 135973, 1184) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v8 = *(a1 + 40);
  if (v8[2296])
  {
    v177 = 0;
    v178 = 0;
    __dst = 0;
    __src = 0;
    LODWORD(__n) = 0;
    v172 = 0;
    v173 = 0;
    *a5 = 1;
    v9 = *(a1 + 1036);
    v10 = *(a1 + 1032);
    v11 = v9 / v10 * v10;
    if (!v10)
    {
      v11 = *(a1 + 1036);
    }

    if (v9 >= v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a1 + 1032);
    }

    v7 = (*(*(a1 + 56) + 144))(*(a1 + 904), *(a1 + 912), &v172 + 4, &v172);
    if ((v7 & 0x80000000) == 0)
    {
      v17 = 4 * v8[2301];
      v18 = HIDWORD(v172);
      HIDWORD(v172) = HIDWORD(v172) / v17;
      if (v17 > v18)
      {
        if (v172)
        {
          end_cur_stream_MT(a1, &__src, &__dst, &__n, &v173 + 1);
        }

        else
        {
          *a5 = 0;
        }

        if (!siren_common_synth_GetLeftSamples(*(a1 + 48)))
        {
          return v7;
        }
      }

      LeftSamples = siren_common_synth_GetLeftSamples(*(a1 + 48));
      if (LeftSamples)
      {
        goto LABEL_73;
      }

      v75 = (*(*(a1 + 56) + 88))(*(a1 + 904), *(a1 + 912), &v178, &v173);
      if ((v75 & 0x80000000) != 0)
      {
        goto LABEL_94;
      }

      v93 = v178 + 4;
      v94 = *v178;
      *(a1 + 1116) = v94;
      v178 = v93;
      v66 = SampleChunk_init(*(a1 + 8), *(*(a1 + 40) + 9204), *(*(a1 + 40) + 9168), *(a1 + 56), *(a1 + 920), *(a1 + 928), v94, v173, *(a1 + 1176));
      if ((v66 & 0x80000000) == 0)
      {
LABEL_73:
        v75 = (*(*(a1 + 56) + 88))(*(a1 + 888), *(a1 + 896), &__src, &__n);
        if ((v75 & 0x80000000) == 0)
        {
          v75 = (*(*(a1 + 56) + 112))(*(a1 + 968), *(a1 + 976), &v177, (2 * v12));
          if ((v75 & 0x80000000) == 0)
          {
            if (!__n || (v75 = (*(*(a1 + 56) + 112))(*(a1 + 952), *(a1 + 960), &__dst), (v75 & 0x80000000) == 0))
            {
              v80 = v177;
              v81 = v178;
              v83 = HIDWORD(v172);
              v82 = v173;
              v66 = critsec_Enter(*(a1 + 16));
              if ((v66 & 0x80000000) == 0)
              {
                if (__dst)
                {
                  cstdlib_memcpy(__dst, __src, __n);
                }

                v169 = v82;
                v87 = HIDWORD(v173);
                v86 = __n;
                LODWORD(__n) = __n >> 5;
                if (HIDWORD(v173) < v86 >> 5)
                {
                  v88 = __dst;
                  do
                  {
                    v89 = &v88[8 * v87];
                    if (v89[3] > *(a1 + 1072))
                    {
                      break;
                    }

                    v90 = *v89 - 16;
                    if (v90 <= 9 && ((0x305u >> v90) & 1) != 0)
                    {
                      v91 = off_279DB6D28[v90];
                      critsec_Leave(*(a1 + 16));
                      paramc_ParamSetUInt(*(*(a1 + 8) + 40), v91, *(__dst + 8 * v87 + 6));
                      critsec_Enter(*(a1 + 16));
                      v88 = __dst;
                    }

                    v88[8 * v87 + 3] = *(a1 + 1080);
                    v88[8 * HIDWORD(v173) + 4] = *(a1 + 1032) * v88[8 * HIDWORD(v173) + 4] * *(a1 + 1042) / 0x64;
                    v87 = HIDWORD(v173) + 1;
                    HIDWORD(v173) = v87;
                  }

                  while (v87 < __n);
                }

                LODWORD(v7) = siren_common_synth_ProcessStart(*(a1 + 48), v81, v83, v80, v12, *(a1 + 1176), v84, v85);
                if (v7)
                {
LABEL_88:
                  v92 = critsec_Leave(*(a1 + 16));
                  if (v7 >= 0)
                  {
                    return v92;
                  }

                  else
                  {
                    return v7;
                  }
                }

                CurSampleCount = 0;
                do
                {
                  LODWORD(v7) = new_siren_nn_mt_synth_Process(*(a1 + 48));
                  if ((v7 & 0x80000000) != 0)
                  {
                    goto LABEL_88;
                  }

                  *(a1 + 1072) += siren_common_synth_GetFeedFrames(*(a1 + 48));
                  *(a1 + 1080) += siren_common_synth_GetCurSampleCount(*(a1 + 48)) - CurSampleCount;
                  CurSampleCount = siren_common_synth_GetCurSampleCount(*(a1 + 48));
                }

                while (siren_common_synth_GetLeftSamples(*(a1 + 48)) && !siren_common_synth_GetIsBufferFull(*(a1 + 48)));
                if (v7)
                {
                  goto LABEL_88;
                }

                v121 = *(*(a1 + 56) + 120);
                v122 = siren_common_synth_GetCurSampleCount(*(a1 + 48));
                v123 = v121(*(a1 + 968), *(a1 + 976), (2 * v122));
                if (v123 < 0)
                {
                  v128 = v123;
                  log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v124, v125, v126, v127, "lhError");
                }

                else
                {
                  v128 = 0;
                }

                v146 = 32 * v87;
                if (v87)
                {
                  v147 = (*(*(a1 + 56) + 120))(*(a1 + 952), *(a1 + 960), v146 & ~(v128 >> 31));
                  if (v147 < 0)
                  {
                    v152 = v147;
                    log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v148, v149, v150, v151, "lhError");
                    if (v128 >= 0)
                    {
                      v128 = v152;
                    }
                  }
                }

                if (!LeftSamples && ((*(*(a1 + 56) + 96))(*(a1 + 904), *(a1 + 912), v169) & 0x80000000) != 0)
                {
                  log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v153, v154, v155, v156, "lhError");
                  v157 = 0;
                }

                else if (v128 >= 0)
                {
                  v157 = v146;
                }

                else
                {
                  v157 = 0;
                }

                if (((*(*(a1 + 56) + 96))(*(a1 + 888), *(a1 + 896), v157) & 0x80000000) != 0)
                {
                  log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v158, v159, v160, v161, "lhError");
                }

                v162 = siren_common_synth_GetLeftSamples(*(a1 + 48));
                v163 = siren_common_synth_SetCurFrameCount(*(a1 + 48), 0);
                LODWORD(v7) = v163;
                if (v162)
                {
                  if (v163)
                  {
                    goto LABEL_193;
                  }

                  v164 = siren_common_synth_SetCurSampleCount(*(a1 + 48), 0);
                  if (!v164)
                  {
                    v165 = 2;
LABEL_207:
                    *a5 = v165;
LABEL_208:
                    LODWORD(v7) = siren_common_synth_ProcessEnd(*(a1 + 48));
                    goto LABEL_88;
                  }
                }

                else
                {
                  if (v163)
                  {
                    goto LABEL_193;
                  }

                  v164 = siren_common_synth_SetCurSampleCount(*(a1 + 48), 0);
                  if (!v164)
                  {
                    v165 = 1;
                    goto LABEL_207;
                  }
                }

                LODWORD(v7) = v164;
LABEL_193:
                if ((v7 & 0x80000000) != 0)
                {
                  goto LABEL_88;
                }

                goto LABEL_208;
              }

              return v66;
            }
          }
        }

LABEL_94:
        v7 = v75;
        log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v76, v77, v78, v79, "lhError");
        return v7;
      }

      return v66;
    }

    v30 = *(*(a1 + 8) + 32);
    goto LABEL_20;
  }

  if (v8[2279])
  {
    __src = 0;
    v177 = 0;
    LODWORD(__dst) = 0;
    LODWORD(__n) = 0;
    v173 = 0;
    v19 = *(a1 + 1092);
    HIDWORD(v172) = 0;
    v20 = *(a1 + 1036);
    *a5 = 1;
    v25 = (*(*(a1 + 56) + 144))(*(a1 + 936), *(a1 + 944), &v173 + 4, &v172 + 4);
    if ((v25 & 0x80000000) == 0)
    {
      if (!HIDWORD(v173) && *(a1 + 1064) == *(a1 + 1088))
      {
        if (HIDWORD(v172))
        {
          v26 = &v177;
          p_src = &__src;
          p_dst = &__dst;
          p_n = &__n;
LABEL_137:
          end_cur_stream_MT(a1, v26, p_src, p_dst, p_n);
          return v25;
        }

        goto LABEL_138;
      }

      v62 = (*(*(a1 + 56) + 88))(*(a1 + 888), *(a1 + 896), &v177, &__dst);
      v63 = __dst;
      v64 = __dst >> 5;
      LODWORD(__dst) = __dst >> 5;
      if ((v62 & 0x80000000) == 0)
      {
        v65 = v177;
        if (v63 >= 0x20 && *v177 == 0x4000)
        {
          synth_bet6_ProcessReset(a1);
          v64 = __dst;
          v65 = v177;
        }

        v66 = synth_bet6_loc_cache_markers(a1, v64, v65);
        if ((v66 & 0x80000000) != 0)
        {
          return v66;
        }

        v62 = (*(*(a1 + 56) + 88))(*(a1 + 936), *(a1 + 944), a1 + 1144, &v173);
        if ((v62 & 0x80000000) == 0)
        {
          LODWORD(v173) = v173 >> 1;
          v66 = synth_bet6_loc_Postprocess_sonic(a1, *(a1 + 1144), v173, v173, v177, __dst, 4.0);
          if ((v66 & 0x80000000) != 0)
          {
            return v66;
          }

          synth_bet6_loc_adjust_markers(a1, __dst, v177, v19);
          v67 = v173;
          v68 = *(a1 + 1152);
          if (v68)
          {
            v69 = 2 * v173;
            v70 = *(a1 + 1080);
            v71 = *(a1 + 1104);
            if (v69 > v71 - 2 * v70)
            {
              v72 = 2 * v70;
              do
              {
                v71 = (2 * v71);
              }

              while (v69 > v71 - v72);
              *(a1 + 1104) = v71;
            }

            v73 = heap_Realloc(*(*(a1 + 8) + 8), v68, v71);
            if (!v73)
            {
              return v7;
            }

            *(a1 + 1152) = v73;
          }

          else
          {
            v73 = heap_Calloc(*(*(a1 + 8) + 8), v173, 2);
            *(a1 + 1152) = v73;
            if (!v73)
            {
              return v7;
            }

            *(a1 + 1104) = 2 * v67;
            v69 = 2 * v67;
          }

          cstdlib_memcpy((v73 + 2 * *(a1 + 1080)), *(a1 + 1144), v69);
          *(a1 + 1080) += v67;
          v178 = 0;
          v129 = (*(*(a1 + 56) + 112))(*(a1 + 968), *(a1 + 976), &v178, 2 * v20);
          if ((v129 & 0x80000000) != 0)
          {
            v7 = v129;
          }

          else
          {
            v130 = *(a1 + 1088);
            v131 = *(a1 + 1064);
            if (v130 <= v131 + v20)
            {
              LODWORD(v20) = v130 - v131;
              cstdlib_memcpy(v178, (*(a1 + 1160) + 2 * v131), 2 * (v130 - v131));
              v132 = *(a1 + 1088);
            }

            else
            {
              cstdlib_memcpy(v178, (*(a1 + 1160) + 2 * v131), 2 * v20);
              v132 = *(a1 + 1064) + v20;
            }

            *(a1 + 1064) = v132;
            v133 = (*(*(a1 + 56) + 120))(*(a1 + 968), *(a1 + 976), (2 * v20));
            if ((v133 & 0x80000000) == 0)
            {
              v7 = synth_bet6_loc_write_markers(a1, __n, __src, 0);
              if ((v7 & 0x80000000) == 0)
              {
                v134 = (*(*(a1 + 56) + 96))(*(a1 + 936), *(a1 + 944), (2 * v173));
                if ((v134 & 0x80000000) != 0)
                {
                  v139 = v134;
                  log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v135, v136, v137, v138, "lhError");
                  v7 = v139;
                }

                v140 = (*(*(a1 + 56) + 96))(*(a1 + 888), *(a1 + 896), (32 * __dst));
                if ((v140 & 0x80000000) != 0)
                {
                  v166 = v140;
                  log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v141, v142, v143, v144, "lhError");
                  if (v7 >= 0)
                  {
                    v7 = v166;
                  }

                  else
                  {
                    v7 = v7;
                  }

                  if (*(a1 + 1064) == *(a1 + 1088))
                  {
                    v167 = 1;
                  }

                  else
                  {
                    v167 = 2;
                  }

                  *a5 = v167;
                  return v7;
                }

                v145 = *(a1 + 1064) == *(a1 + 1088) ? 1 : 2;
                *a5 = v145;
                if ((v7 & 0x80000000) == 0)
                {
                  return siren_common_synth_ProcessEnd(*(a1 + 48));
                }
              }

              return v7;
            }

            v7 = v133;
          }

          v30 = *(*(a1 + 8) + 32);
LABEL_20:
          log_OutPublic(v30, "SYNTH_BET6", 73001, "%s%x", v13, v14, v15, v16, "lhError");
          return v7;
        }
      }

      v25 = v62;
    }

    goto LABEL_96;
  }

  if (v8[2280])
  {
    v177 = 0;
    v178 = 0;
    __dst = 0;
    __src = 0;
    v173 = 0;
    __n = 0;
    LODWORD(v172) = 0;
    v170 = 0;
    v171 = 0;
    v31 = *(a1 + 1092);
    *a5 = 1;
    v25 = (*(*(a1 + 56) + 144))(*(a1 + 904), *(a1 + 912), &v171 + 4, &v170 + 4);
    if ((v25 & 0x80000000) == 0)
    {
      if (HIDWORD(v171))
      {
        HIDWORD(v171) = HIDWORD(v171) / (4 * v8[2301]);
        v32 = (*(*(a1 + 56) + 88))(*(a1 + 904), *(a1 + 912), &v178, &v172);
        if ((v32 & 0x80000000) == 0)
        {
          v32 = (*(*(a1 + 56) + 88))(*(a1 + 888), *(a1 + 896), &__dst, &v173 + 4);
          if ((v32 & 0x80000000) == 0)
          {
            v37 = HIDWORD(v173);
            HIDWORD(v173) >>= 5;
            if (v37 >= 0x20 && *__dst == 0x4000)
            {
              synth_bet6_ProcessReset(a1);
            }

            v38 = critsec_Enter(*(a1 + 16));
            if ((v38 & 0x80000000) == 0)
            {
              (*(*(a1 + 56) + 136))(*(a1 + 968), *(a1 + 976), &v170);
              LODWORD(v170) = (v170 >> 1) - *(a1 + 1064);
              v39 = *v178;
              v40 = HIDWORD(v171);
              v41 = HIDWORD(v171) - 2;
              if (HIDWORD(v171) < 2)
              {
                v41 = 0;
              }

              if (v39 == 2.0 || v39 == 1.0 || v39 == 5.0)
              {
                v40 = v41;
              }

              v44 = (*(a1 + 1032) * v40);
              HIDWORD(v172) = v44;
              *(a1 + 1036) = v44;
              v45 = HIDWORD(v173);
              if (HIDWORD(v173))
              {
                v46 = 0;
                v47 = 0;
                do
                {
                  if (*(__dst + v46) == 25)
                  {
                    critsec_Leave(*(a1 + 16));
                    paramc_ParamSetUInt(*(*(a1 + 8) + 40), "waitfactor", *(__dst + v46 + 24));
                    *(a1 + 1056) = *(__dst + v46 + 24);
                    critsec_Enter(*(a1 + 16));
                    v45 = HIDWORD(v173);
                  }

                  ++v47;
                  v46 += 32;
                }

                while (v47 < v45);
              }

              v48 = heap_Calloc(*(*(a1 + 8) + 8), v44, 2);
              v177 = v48;
              if (!v48)
              {
                goto LABEL_156;
              }

              v51 = siren_common_synth_ProcessStart(*(a1 + 48), v178, HIDWORD(v171), v48, v44, 0, v49, v50);
              if ((v51 & 0x80000000) != 0)
              {
                goto LABEL_155;
              }

              v51 = siren_common_synth_Process(*(a1 + 48), 0, HIDWORD(v171) - 1);
              if ((v51 & 0x80000000) != 0)
              {
                goto LABEL_155;
              }

              *(a1 + 1072) += siren_common_synth_GetCurFrameCount(*(a1 + 48));
              v52 = siren_common_synth_GetCurSampleCount(*(a1 + 48));
              LODWORD(v171) = v52;
              v53 = *(v178 + 1);
              v54 = *(v178 + 2);
              v55 = *(a1 + 1080);
              v56 = *(a1 + 1076);
              v57 = __dst;
              v58 = HIDWORD(v173);
              v59 = v55 >= v56;
              v60 = v55 - v56;
              if (v60 == 0 || !v59 || !HIDWORD(v173))
              {
                goto LABEL_124;
              }

              v61 = (__dst + 12);
              do
              {
                if (*v61 >= v56)
                {
                  *v61 += v60;
                }

                v61 += 8;
                --v58;
              }

              while (v58);
              goto LABEL_123;
            }

            return v38;
          }
        }

        goto LABEL_134;
      }

      goto LABEL_135;
    }

    goto LABEL_96;
  }

  if (v8[2282])
  {
    v177 = 0;
    v178 = 0;
    __dst = 0;
    __src = 0;
    v173 = 0;
    __n = 0;
    LODWORD(v172) = 0;
    v170 = 0;
    v171 = 0;
    v31 = *(a1 + 1092);
    *a5 = 1;
    v25 = (*(*(a1 + 56) + 144))(*(a1 + 904), *(a1 + 912), &v171 + 4, &v170 + 4);
    if ((v25 & 0x80000000) == 0)
    {
      if (HIDWORD(v171))
      {
        HIDWORD(v171) = HIDWORD(v171) / (4 * v8[2301]);
        v32 = (*(*(a1 + 56) + 88))(*(a1 + 904), *(a1 + 912), &v178, &v172);
        if ((v32 & 0x80000000) == 0)
        {
          v32 = (*(*(a1 + 56) + 88))(*(a1 + 888), *(a1 + 896), &__dst, &v173 + 4);
          if ((v32 & 0x80000000) == 0)
          {
            v96 = HIDWORD(v173);
            HIDWORD(v173) >>= 5;
            if (v96 >= 0x20 && *__dst == 0x4000)
            {
              synth_bet6_ProcessReset(a1);
            }

            v38 = critsec_Enter(*(a1 + 16));
            if ((v38 & 0x80000000) == 0)
            {
              (*(*(a1 + 56) + 136))(*(a1 + 968), *(a1 + 976), &v170);
              LODWORD(v170) = (v170 >> 1) - *(a1 + 1064);
              v39 = *v178;
              v97 = (*(a1 + 1032) * HIDWORD(v171));
              HIDWORD(v172) = v97;
              *(a1 + 1036) = v97;
              v98 = HIDWORD(v173);
              if (HIDWORD(v173))
              {
                v99 = 0;
                v100 = 0;
                do
                {
                  if (*(__dst + v99) == 25)
                  {
                    critsec_Leave(*(a1 + 16));
                    paramc_ParamSetUInt(*(*(a1 + 8) + 40), "waitfactor", *(__dst + v99 + 24));
                    *(a1 + 1056) = *(__dst + v99 + 24);
                    critsec_Enter(*(a1 + 16));
                    v98 = HIDWORD(v173);
                  }

                  ++v100;
                  v99 += 32;
                }

                while (v100 < v98);
              }

              v48 = heap_Calloc(*(*(a1 + 8) + 8), v97, 2);
              v177 = v48;
              if (!v48)
              {
                goto LABEL_156;
              }

              v51 = siren_common_synth_ProcessStart(*(a1 + 48), v178, HIDWORD(v171), v48, v97, 0, v101, v102);
              if ((v51 & 0x80000000) != 0)
              {
                goto LABEL_155;
              }

              v51 = siren_common_synth_Process(*(a1 + 48), 0, HIDWORD(v171) - 1);
              if ((v51 & 0x80000000) != 0)
              {
                goto LABEL_155;
              }

              *(a1 + 1072) += siren_common_synth_GetCurFrameCount(*(a1 + 48));
              v52 = siren_common_synth_GetCurSampleCount(*(a1 + 48));
              LODWORD(v171) = v52;
              v53 = *(v178 + 1);
              v54 = *(v178 + 2);
              v103 = *(a1 + 1080);
              v56 = *(a1 + 1076);
              v57 = __dst;
              v58 = HIDWORD(v173);
              v59 = v103 >= v56;
              v104 = v103 - v56;
              if (v104 == 0 || !v59 || !HIDWORD(v173))
              {
LABEL_124:
                *(a1 + 1076) = v56 + v52;
                inserted = synth_bet6_loc_InsertPause(a1, &v177, v57, v58, &v171, &v172 + 1, v53, v54, v39);
                if ((inserted & 0x80000000) != 0)
                {
                  v7 = inserted;
                  v48 = v177;
                  goto LABEL_156;
                }

                v51 = synth_bet6_loc_cache_markers(a1, HIDWORD(v173), __dst);
                v48 = v177;
                if ((v51 & 0x80000000) == 0)
                {
                  v107 = v171;
                  v51 = synth_bet6_loc_Postprocess_sonic(a1, v177, v171, SHIDWORD(v172), __dst, HIDWORD(v173), v39);
                  if ((v51 & 0x80000000) == 0)
                  {
                    synth_bet6_loc_adjust_markers(a1, HIDWORD(v173), __dst, v31);
                    *(a1 + 1080) += v107;
                    v108 = 2 * (*(a1 + 1088) - *(a1 + 1064));
                    v109 = (*(*(a1 + 56) + 112))(*(a1 + 968), *(a1 + 976), &__src, v108);
                    if ((v109 & 0x80000000) != 0)
                    {
                      v168 = v109;
                      log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v110, v111, v112, v113, "lhError");
                      v7 = v168;
                      goto LABEL_156;
                    }

                    cstdlib_memcpy(__src, (*(a1 + 1160) + 2 * *(a1 + 1064)), v108);
                    *(a1 + 1064) = *(a1 + 1088);
                    v114 = (*(*(a1 + 56) + 120))(*(a1 + 968), *(a1 + 976), v108);
                    if ((v114 & 0x80000000) != 0)
                    {
                      goto LABEL_204;
                    }

                    v51 = synth_bet6_loc_write_markers(a1, 0, 0, v170);
                    if ((v51 & 0x80000000) == 0)
                    {
                      v114 = (*(*(a1 + 56) + 96))(*(a1 + 904), *(a1 + 912), (4 * HIDWORD(v171) * v8[2301] + 12));
                      if ((v114 & 0x80000000) == 0)
                      {
                        v114 = (*(*(a1 + 56) + 96))(*(a1 + 888), *(a1 + 896), (32 * HIDWORD(v173)));
                        if ((v114 & 0x80000000) == 0)
                        {
                          v7 = siren_common_synth_ProcessEnd(*(a1 + 48));
                          v119 = critsec_Leave(*(a1 + 16));
                          if ((v7 & 0x80000000) == 0)
                          {
                            v25 = v119;
                            goto LABEL_158;
                          }

LABEL_157:
                          v25 = v7;
LABEL_158:
                          if (v48)
                          {
                            heap_Free(*(*(a1 + 8) + 8), v48);
                          }

                          return v25;
                        }
                      }

LABEL_204:
                      v7 = v114;
                      log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v115, v116, v117, v118, "lhError");
                      goto LABEL_156;
                    }
                  }
                }

LABEL_155:
                v7 = v51;
LABEL_156:
                critsec_Leave(*(a1 + 16));
                goto LABEL_157;
              }

              v105 = (__dst + 12);
              do
              {
                if (*v105 >= v56)
                {
                  *v105 += v104;
                }

                v105 += 8;
                --v58;
              }

              while (v58);
LABEL_123:
              LODWORD(v58) = HIDWORD(v173);
              goto LABEL_124;
            }

            return v38;
          }
        }

LABEL_134:
        v25 = v32;
        log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v33, v34, v35, v36, "lhError");
        return v25;
      }

LABEL_135:
      if (HIDWORD(v170))
      {
        v26 = &__dst;
        p_src = &__n;
        p_dst = &v173 + 1;
        p_n = &v173;
        goto LABEL_137;
      }

LABEL_138:
      *a5 = 0;
      return v25;
    }

LABEL_96:
    log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v21, v22, v23, v24, "lhError");
    return v25;
  }

  return synth_bet6_Process_ST(a1, a5);
}

uint64_t synth_bet6_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 135973, 1184) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *(a1 + 1060) = 0;
  v3 = *(a1 + 1128);
  if (v3)
  {
    heap_Free(*(*(a1 + 8) + 8), v3);
    *(a1 + 1128) = 0;
  }

  v4 = *(a1 + 1136);
  if (v4)
  {
    heap_Free(*(*(a1 + 8) + 8), v4);
    *(a1 + 1136) = 0;
  }

  v5 = *(a1 + 1152);
  if (v5)
  {
    heap_Free(*(*(a1 + 8) + 8), v5);
    *(a1 + 1152) = 0;
    *(a1 + 1104) = 0;
  }

  v6 = *(a1 + 1160);
  if (v6)
  {
    heap_Free(*(*(a1 + 8) + 8), v6);
    *(a1 + 1160) = 0;
    *(a1 + 1112) = 0;
  }

  v7 = *(a1 + 1168);
  if (v7)
  {
    v8 = *(a1 + 1084);
    if (v8)
    {
      v9 = 0;
      for (i = 0; i < v8; ++i)
      {
        v11 = *(a1 + 1168);
        v12 = *(v11 + v9);
        if (v12 == 29 || v12 == 26)
        {
          heap_Free(*(*(a1 + 8) + 8), *(v11 + v9 + 24));
          v8 = *(a1 + 1084);
        }

        v9 += 32;
      }

      v7 = *(a1 + 1168);
    }

    heap_Free(*(*(a1 + 8) + 8), v7);
    *(a1 + 1168) = 0;
    *(a1 + 1108) = 0;
  }

  if (*(*(a1 + 40) + 9184))
  {
    SampleChunk_free(*(a1 + 8), *(a1 + 1176));
    *(a1 + 1176) = 0;
  }

  siren_common_synth_Reset(*(a1 + 48));
  v14 = *(a1 + 56);

  return synstrmaux_CloseStreams((a1 + 64), v14);
}

uint64_t synth_bet6_loc_ParamCheckChange(int a1, char *__s1, const char *a3, _DWORD *a4)
{
  if (cstdlib_strcmp(__s1, "audiooutputbufsamples"))
  {
    if (cstdlib_strcmp(__s1, "volume"))
    {
      if (cstdlib_strcmp(__s1, "rate") && cstdlib_strcmp(__s1, "rate_baseline"))
      {
        if (!cstdlib_strcmp(__s1, "ratewpm"))
        {
          result = 2229280769;
          goto LABEL_19;
        }

        if (cstdlib_strcmp(__s1, "pitch") && cstdlib_strcmp(__s1, "pitch_baseline"))
        {
          result = 0;
          goto LABEL_19;
        }

        v8 = __CFADD__(LH_atoi(a3) - 201, 151);
      }

      else
      {
        v8 = __CFADD__(LH_atoi(a3) - 401, 351);
      }

      if (v8)
      {
        result = 0;
      }

      else
      {
        result = 2229280783;
      }
    }

    else if (LH_atoi(a3) <= 0x64)
    {
      result = 0;
    }

    else
    {
      result = 2229280783;
    }
  }

  else if (LH_atoi(a3) <= 0)
  {
    result = 2229280783;
  }

  else
  {
    result = 0;
  }

LABEL_19:
  *a4 = result >= 0;
  return result;
}

uint64_t synth_bet6_loc_ParamLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  if (cstdlib_strcmp(__s1, "audiooutputbufsamples") && cstdlib_strcmp(__s1, "volume") && cstdlib_strcmp(__s1, "rate") && cstdlib_strcmp(__s1, "rate_baseline") && cstdlib_strcmp(__s1, "pitch_baseline") && cstdlib_strcmp(__s1, "ratewpm") && cstdlib_strcmp(__s1, "pitch") && cstdlib_strcmp(__s1, "waitfactor"))
  {
    return 0;
  }

  v7 = LH_atoi(a3);

  return synth_bet6_loc_ParamSet(a1, __s1, v7);
}

uint64_t synth_bet6_loc_ParamGetListen(uint64_t a1, _BYTE *a2, signed int a3, signed int a4, unsigned int a5, __int128 *a6, unsigned int *a7)
{
  if (((paramc_ParamGetInt(*(*(a1 + 8) + 40), a2, a7) & 0x80000000) != 0 || (a5 = a3, *a7 < a3) || (a5 = a4, *a7 > a4)) && (v14 = paramc_ParamSetInt(*(*(a1 + 8) + 40), a2, a5), *a7 = a5, (v14 & 0x80000000) != 0))
  {
    v24 = v14;
    log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v15, v16, v17, v18, "lhError");
  }

  else
  {
    v19 = *(*(a1 + 8) + 40);
    v26 = *a6;
    v27 = *(a6 + 2);
    v24 = paramc_ListenerAdd(v19, a2, &v26);
    if ((v24 & 0x80000000) != 0)
    {
      log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v20, v21, v22, v23, "lhError");
    }
  }

  return v24;
}

uint64_t synth_bet6_loc_InitFromParamc(uint64_t a1)
{
  v3 = 0;
  result = paramc_ParamGetInt(*(*(a1 + 8) + 40), "volume", &v3);
  if ((result & 0x80000000) == 0)
  {
    result = synth_bet6_loc_ParamSet(a1, "volume", v3);
    if ((result & 0x80000000) == 0)
    {
      result = paramc_ParamGetInt(*(*(a1 + 8) + 40), "rate", &v3);
      if ((result & 0x80000000) == 0)
      {
        result = synth_bet6_loc_ParamSet(a1, "rate", v3);
        if ((result & 0x80000000) == 0)
        {
          result = paramc_ParamGetInt(*(*(a1 + 8) + 40), "rate_baseline", &v3);
          if ((result & 0x80000000) == 0)
          {
            result = synth_bet6_loc_ParamSet(a1, "rate_baseline", v3);
            if ((result & 0x80000000) == 0)
            {
              result = paramc_ParamGetInt(*(*(a1 + 8) + 40), "pitch_baseline", &v3);
              if ((result & 0x80000000) == 0)
              {
                result = synth_bet6_loc_ParamSet(a1, "pitch_baseline", v3);
                if ((result & 0x80000000) == 0)
                {
                  result = paramc_ParamGetInt(*(*(a1 + 8) + 40), "pitch", &v3);
                  if ((result & 0x80000000) == 0)
                  {
                    result = synth_bet6_loc_ParamSet(a1, "pitch", v3);
                    if ((result & 0x80000000) == 0)
                    {
                      result = paramc_ParamGetInt(*(*(a1 + 8) + 40), "waitfactor", &v3);
                      if ((result & 0x80000000) == 0)
                      {
                        return synth_bet6_loc_ParamSet(a1, "waitfactor", v3);
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

  return result;
}

uint64_t synth_bet6_loc_ParamSet(uint64_t a1, const char *a2, int a3)
{
  if (cstdlib_strcmp(a2, "audiooutputbufsamples"))
  {
    v6 = critsec_Enter(*(a1 + 16));
    if ((v6 & 0x80000000) == 0)
    {
      v7 = 2229280783;
      if (cstdlib_strcmp(a2, "volume"))
      {
        if (cstdlib_strcmp(a2, "rate_baseline"))
        {
          if (!cstdlib_strcmp(a2, "rate"))
          {
            v10 = MapProsodyValue_Scaling(50, 100, 400, *(a1 + 1052), a3);
            if (!v10)
            {
              goto LABEL_28;
            }

            v14 = (v10 + 9999) / v10;
            if ((v14 - 201) < 0xFFFFFF50)
            {
              goto LABEL_28;
            }

            log_OutText(*(*(a1 + 8) + 32), "SYNTH_BET6", 3, 0, "Set rate %d", v11, v12, v13, v10);
            *(a1 + 1042) = v14;
            siren_common_synth_SetRate(*(a1 + 48), v14);
            goto LABEL_17;
          }

          if (!cstdlib_strcmp(a2, "ratewpm"))
          {
            v7 = 2229280769;
            goto LABEL_28;
          }

          if (cstdlib_strcmp(a2, "pitch_baseline"))
          {
            if (!cstdlib_strcmp(a2, "pitch"))
            {
              v15 = MapProsodyValue_Scaling(50, 100, 200, *(a1 + 1048), a3);
              if ((v15 - 201) < 0xFFFFFF69)
              {
                goto LABEL_28;
              }

              v20 = v15;
              log_OutText(*(*(a1 + 8) + 32), "SYNTH_BET6", 3, 0, "Set pitch %d (synth %d)", v16, v17, v18, v15);
              *(a1 + 1044) = a3;
              siren_common_synth_SetPitch(*(a1 + 48), v20);
              goto LABEL_17;
            }

            if (cstdlib_strcmp(a2, "waitfactor"))
            {
LABEL_17:
              v7 = v6;
              goto LABEL_28;
            }

            if (a3 <= 9)
            {
              *(a1 + 1056) = a3;
              goto LABEL_17;
            }

LABEL_28:
            critsec_Leave(*(a1 + 16));
            return v7;
          }

          if ((a3 - 201) < 0xFFFFFF69)
          {
            goto LABEL_28;
          }

          v22 = 0;
          *(a1 + 1048) = a3;
          v8 = "pitch";
          paramc_ParamGetInt(*(*(a1 + 8) + 40), "pitch", &v22);
          v9 = v22;
        }

        else
        {
          if ((a3 - 401) < 0xFFFFFEA1)
          {
            goto LABEL_28;
          }

          v21 = 0;
          *(a1 + 1052) = a3;
          v8 = "rate";
          paramc_ParamGetInt(*(*(a1 + 8) + 40), "rate", &v21);
          v9 = v21;
        }

        synth_bet6_loc_ParamSet(a1, v8, v9);
        v7 = 0;
        goto LABEL_28;
      }

      if (a3 <= 0x64)
      {
        *(a1 + 1040) = a3;
        siren_common_synth_SetVolume(*(a1 + 48), a3);
        goto LABEL_17;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (a3 <= 0)
    {
      a3 = *(a1 + 1036);
    }

    v6 = 0;
    *(a1 + 1036) = a3;
  }

  return v6;
}

uint64_t synth_bet6_Process_ST(uint64_t a1, int *a2)
{
  v94 = 0;
  v95 = 0;
  __dst = 0;
  __src = 0;
  v90 = 0;
  __n = 0;
  v4 = *(a1 + 40);
  *a2 = 1;
  v5 = *(a1 + 1036);
  v6 = *(a1 + 1032);
  v7 = v5 / v6 * v6;
  if (!v6)
  {
    v7 = *(a1 + 1036);
  }

  if (v5 >= v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a1 + 1032);
  }

  v13 = (*(*(a1 + 56) + 144))(*(a1 + 904), *(a1 + 912), &v90 + 4, &v90);
  if ((v13 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v9, v10, v11, v12, "lhError");
    return v13;
  }

  v14 = 4 * *(v4 + 9204);
  v15 = HIDWORD(v90);
  HIDWORD(v90) = HIDWORD(v90) / v14;
  if (v14 <= v15)
  {
    v16 = (*(*(a1 + 56) + 88))(*(a1 + 904), *(a1 + 912), &v95, &__n);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

    v16 = (*(*(a1 + 56) + 88))(*(a1 + 888), *(a1 + 896), &__src, &__n + 4);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

    v16 = (*(*(a1 + 56) + 112))(*(a1 + 968), *(a1 + 976), &v94, (2 * v8));
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

    if (HIDWORD(__n))
    {
      v16 = (*(*(a1 + 56) + 112))(*(a1 + 952), *(a1 + 960), &__dst);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_32;
      }
    }

    v23 = critsec_Enter(*(a1 + 16));
    if ((v23 & 0x80000000) != 0)
    {
      return v23;
    }

    v25 = *(a1 + 1060);
    v88 = v25;
    v89 = v25;
    if (__dst)
    {
      cstdlib_memcpy(__dst, __src, HIDWORD(__n));
      v25 = *(a1 + 1060);
    }

    HIDWORD(__n) >>= 5;
    if (v25)
    {
      LODWORD(v24) = *(a1 + 1116);
    }

    else
    {
      v30 = v95 + 1;
      LODWORD(v24) = *v95;
      *(a1 + 1116) = *v95;
      v95 = v30;
    }

    v31 = 3.0;
    if (*&v24 >= 3.0)
    {
      v87 = 0;
      v32 = HIDWORD(v90);
    }

    else
    {
      v32 = HIDWORD(v90);
      if (*&v24 == 1.0 || *&v24 == 0.0)
      {
        v33 = *(*(a1 + 40) + 9156);
        v32 = HIDWORD(v90) - v33;
        if (HIDWORD(v90) < v33)
        {
          LODWORD(v87) = 0;
          HIDWORD(v87) = *(*(a1 + 40) + 9156);
          goto LABEL_48;
        }

        HIDWORD(v90) -= v33;
      }

      else
      {
        v33 = 0;
      }

      v34 = *&v24 == 1.0;
      v31 = 2.0;
      if (*&v24 == 2.0)
      {
        v34 = 1;
      }

      HIDWORD(v87) = v33;
      if (v25 || !v34)
      {
        LODWORD(v87) = 0;
      }

      else
      {
        v35 = *(*(a1 + 40) + 9156);
        v36 = v32 >= v35;
        v32 -= v35;
        LODWORD(v87) = v35;
        if (!v36)
        {
LABEL_48:
          LODWORD(v37) = 0;
          v38 = -2065686521;
LABEL_49:
          v39 = 0;
          v40 = (*(*(a1 + 56) + 120))(*(a1 + 968), *(a1 + 976), 0);
LABEL_80:
          if (v40 < 0)
          {
            v58 = v40;
            log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v41, v42, v43, v44, "lhError");
            if (v39)
            {
              v38 = v58;
            }
          }

          v59 = 32 * v37;
          if (v37 && (v60 = (*(*(a1 + 56) + 120))(*(a1 + 952), *(a1 + 960), v59 & ~(v38 >> 31)), v60 < 0))
          {
            v70 = v60;
            log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v61, v62, v63, v64, "lhError");
            v69 = 0;
            v68 = 0;
            if (v38 >= 0)
            {
              v38 = v70;
            }

            v65 = *(*(a1 + 56) + 96);
          }

          else
          {
            v65 = *(*(a1 + 56) + 96);
            if (v38 < 0)
            {
              v69 = 0;
              v68 = 0;
            }

            else
            {
              v66 = HIDWORD(v87);
              if (v89 != HIDWORD(v90) + v88)
              {
                v66 = 0;
              }

              v67 = (v87 - v88 + v89 + v66) * *(v4 + 9204);
              if (!*(a1 + 1060))
              {
                ++v67;
              }

              v68 = (4 * v67);
              v69 = 1;
            }
          }

          v71 = v65(*(a1 + 904), *(a1 + 912), v68);
          if (v71 < 0)
          {
            v76 = v71;
            log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v72, v73, v74, v75, "lhError");
            if (v69)
            {
              v38 = v76;
            }
          }

          v77 = (*(*(a1 + 56) + 96))(*(a1 + 888), *(a1 + 896), v59 & ~(v38 >> 31));
          if (v77 < 0)
          {
            v82 = v77;
            log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v78, v79, v80, v81, "lhError");
            if (v38 >= 0)
            {
              v38 = v82;
            }
          }

          if (v89 == HIDWORD(v90) + v88)
          {
            v83 = 0;
          }

          else
          {
            v83 = v89;
          }

          if (v89 == HIDWORD(v90) + v88)
          {
            v84 = 1;
          }

          else
          {
            v84 = 2;
          }

          *(a1 + 1060) = v83;
          *a2 = v84;
          if ((v38 & 0x80000000) == 0)
          {
            v38 = siren_common_synth_ProcessEnd(*(a1 + 48));
          }

          v85 = critsec_Leave(*(a1 + 16));
          if (v38 >= 0)
          {
            return v85;
          }

          else
          {
            return v38;
          }
        }

        HIDWORD(v90) = v32;
        v95 += *(v4 + 9204) * v35;
      }
    }

    v38 = siren_common_synth_ProcessStart(*(a1 + 48), v95, v32, v94, v8, 0, v24, v31);
    LODWORD(v37) = 0;
    CurSampleCount = 0;
LABEL_53:
    v45 = 0;
    while (1)
    {
      if (v38 < 0 || (v45 & 1) != 0)
      {
        v56 = *(*(a1 + 56) + 120);
        if (v38 < 0)
        {
          v39 = 0;
          v57 = 0;
          goto LABEL_79;
        }

LABEL_78:
        v57 = 2 * siren_common_synth_GetCurSampleCount(*(a1 + 48));
        v39 = 1;
LABEL_79:
        v40 = v56(*(a1 + 968), *(a1 + 976), v57);
        goto LABEL_80;
      }

      if (v89 >= HIDWORD(v90) + v88)
      {
        v56 = *(*(a1 + 56) + 120);
        goto LABEL_78;
      }

      v46 = __dst;
      if (__dst)
      {
        if (v37 < HIDWORD(__n))
        {
          break;
        }
      }

LABEL_72:
      v38 = siren_common_synth_Process(*(a1 + 48), v89 - v88, v89 - v88);
      if (v38 < 0)
      {
        goto LABEL_49;
      }

      IsBufferFull = siren_common_synth_GetIsBufferFull(*(a1 + 48));
      v45 = 1;
      if (!IsBufferFull)
      {
        ++v89;
        ++*(a1 + 1072);
        *(a1 + 1080) += siren_common_synth_GetCurSampleCount(*(a1 + 48)) - CurSampleCount;
        CurSampleCount = siren_common_synth_GetCurSampleCount(*(a1 + 48));
        goto LABEL_53;
      }
    }

    v37 = v37;
    v47 = (32 * v37) | 0xC;
    while (1)
    {
      v48 = &v46[v47];
      if (*v48 > *(a1 + 1072))
      {
        goto LABEL_72;
      }

      v49 = *(v48 - 3);
      if (v49 > 17)
      {
        if (v49 == 18)
        {
          critsec_Leave(*(a1 + 16));
          v50 = *(*(a1 + 8) + 40);
          v51 = *(__dst + v47 + 12);
          v52 = "rate";
          goto LABEL_70;
        }

        if (v49 == 24)
        {
          critsec_Leave(*(a1 + 16));
          v50 = *(*(a1 + 8) + 40);
          v51 = *(__dst + v47 + 12);
          v52 = "volume";
          goto LABEL_70;
        }
      }

      else
      {
        if (v49 == 16)
        {
          critsec_Leave(*(a1 + 16));
          v50 = *(*(a1 + 8) + 40);
          v51 = *(__dst + v47 + 12);
          v52 = "pitch";
          goto LABEL_70;
        }

        if (v49 == 17)
        {
          critsec_Leave(*(a1 + 16));
          v50 = *(*(a1 + 8) + 40);
          v51 = *(__dst + v47 + 12);
          v52 = "timbre";
LABEL_70:
          paramc_ParamSetUInt(v50, v52, v51);
          critsec_Enter(*(a1 + 16));
        }
      }

      v46 = __dst;
      v53 = __dst + v47;
      v54 = *(a1 + 1032) * *(__dst + v47 + 4) * *(a1 + 1042) / 0x64;
      *v53 = *(a1 + 1080);
      v53[1] = v54;
      ++v37;
      v47 += 32;
      if (v37 >= HIDWORD(__n))
      {
        goto LABEL_72;
      }
    }
  }

  if (v90)
  {
    v16 = (*(*(a1 + 56) + 88))(*(a1 + 888), *(a1 + 896), &__src, &__n + 4);
    if ((v16 & 0x80000000) == 0)
    {
      if (!HIDWORD(__n))
      {
        return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 56));
      }

      v16 = (*(*(a1 + 56) + 112))(*(a1 + 952), *(a1 + 960), &__dst);
      if ((v16 & 0x80000000) == 0)
      {
        cstdlib_memcpy(__dst, __src, HIDWORD(__n));
        v21 = HIDWORD(__n);
        HIDWORD(__n) >>= 5;
        if (v21 >= 0x20)
        {
          LODWORD(v22) = 0;
          v26 = 0;
          v27 = *(a1 + 1080);
          v28 = __dst + 16;
          do
          {
            *(v28 - 1) = v27;
            *v28 = 0;
            ++v26;
            v28 += 8;
            v22 = (v22 + 32);
          }

          while (v26 < HIDWORD(__n));
        }

        else
        {
          v22 = 0;
        }

        v16 = (*(*(a1 + 56) + 120))(*(a1 + 952), *(a1 + 960), v22);
        if ((v16 & 0x80000000) == 0)
        {
          v16 = (*(*(a1 + 56) + 96))(*(a1 + 888), *(a1 + 896), v22);
          if ((v16 & 0x80000000) == 0)
          {
            return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 56));
          }
        }
      }
    }

LABEL_32:
    v13 = v16;
    log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v17, v18, v19, v20, "lhError");
    return v13;
  }

  *a2 = 0;
  return v13;
}

uint64_t end_cur_stream_MT(uint64_t a1, const void **a2, void **a3, unsigned int *a4, unsigned int *a5)
{
  if (*a4)
  {
    if (((*(*(a1 + 56) + 88))(*(a1 + 888), *(a1 + 896), a2) & 0x80000000) != 0 || ((*(*(a1 + 56) + 112))(*(a1 + 952), *(a1 + 960), a3, *a4) & 0x80000000) != 0)
    {
      return log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v10, v11, v12, v13, "lhError");
    }

    cstdlib_memcpy(*a3, *a2, *a4);
    *a4 >>= 5;
    *a5 = 0;
    if (*a4)
    {
      v14 = 0;
      v15 = *a3;
      do
      {
        v15[8 * v14 + 3] = *(a1 + 1080);
        v15[8 * *a5 + 4] = 0;
        v14 = *a5 + 1;
        *a5 = v14;
      }

      while (v14 < *a4);
      v16 = 32 * v14;
    }

    else
    {
      v16 = 0;
    }

    if (((*(*(a1 + 56) + 120))(*(a1 + 952), *(a1 + 960), v16) & 0x80000000) != 0 || ((*(*(a1 + 56) + 96))(*(a1 + 888), *(a1 + 896), 32 * *a5) & 0x80000000) != 0)
    {
      return log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v10, v11, v12, v13, "lhError");
    }
  }

  v17 = *(a1 + 56);

  return synstrmaux_CloseOutStreamsOnly((a1 + 64), v17);
}

void *synth_bet6_ProcessReset(void *result)
{
  v1 = result;
  *(result + 272) = 0;
  *(result + 1068) = 0;
  *(result + 1076) = 0;
  *(result + 1060) = 0;
  v2 = result[144];
  if (v2)
  {
    result = heap_Free(*(result[1] + 8), v2);
    v1[144] = 0;
    *(v1 + 276) = 0;
  }

  v3 = v1[145];
  if (v3)
  {
    result = heap_Free(*(v1[1] + 8), v3);
    v1[145] = 0;
    *(v1 + 278) = 0;
  }

  v4 = v1[146];
  if (v4)
  {
    v5 = *(v1 + 271);
    if (v5)
    {
      v6 = 0;
      for (i = 0; i < v5; ++i)
      {
        v8 = v1[146];
        v9 = *(v8 + v6);
        if (v9 == 29 || v9 == 26)
        {
          heap_Free(*(v1[1] + 8), *(v8 + v6 + 24));
          v5 = *(v1 + 271);
        }

        v6 += 32;
      }

      v4 = v1[146];
    }

    result = heap_Free(*(v1[1] + 8), v4);
    v1[146] = 0;
    *(v1 + 277) = 0;
  }

  *(v1 + 271) = 0;
  return result;
}

uint64_t synth_bet6_loc_cache_markers(uint64_t a1, unsigned int a2, const void *a3)
{
  v6 = 2229280778;
  v7 = *(a1 + 1168);
  if (v7)
  {
    v8 = 32 * a2;
    v9 = *(a1 + 1084);
    v10 = *(a1 + 1108);
    if (v8 > v10 - 32 * v9)
    {
      v11 = 32 * v9;
      do
      {
        v10 = (2 * v10);
      }

      while (v8 > v10 - v11);
      *(a1 + 1108) = v10;
    }

    v12 = heap_Realloc(*(*(a1 + 8) + 8), v7, v10);
    if (!v12)
    {
      return v6;
    }

    v13 = a2;
    *(a1 + 1168) = v12;
  }

  else
  {
    v13 = a2;
    v12 = heap_Calloc(*(*(a1 + 8) + 8), a2, 32);
    *(a1 + 1168) = v12;
    if (!v12)
    {
      return v6;
    }

    *(a1 + 1108) = 32 * a2;
    v8 = 32 * a2;
  }

  cstdlib_memcpy((v12 + 32 * *(a1 + 1084)), a3, v8);
  v14 = *(a1 + 1084);
  if (a2)
  {
    v15 = (*(a1 + 1168) + 32 * v14 + 24);
    do
    {
      v16 = *(v15 - 6);
      if (v16 == 29 || v16 == 26)
      {
        v18 = *v15;
        v19 = *(*(a1 + 8) + 8);
        v20 = cstdlib_strlen(*v15);
        v21 = heap_Calloc(v19, (v20 + 1), 1);
        *v15 = v21;
        if (!v21)
        {
          return v6;
        }

        cstdlib_strcpy(v21, v18);
      }

      v15 += 4;
      --v13;
    }

    while (v13);
    LODWORD(v14) = *(a1 + 1084);
  }

  v6 = 0;
  *(a1 + 1084) = v14 + a2;
  return v6;
}

uint64_t synth_bet6_loc_Postprocess_sonic(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int *a5, unsigned int a6, float a7)
{
  if (!a4)
  {
    return 0;
  }

  v10 = a1;
  v11 = 2229280778;
  if (a6)
  {
    v13 = 0;
    v14 = a6;
    v15 = a6;
    v16 = a5;
    do
    {
      v17 = *v16;
      v16 += 8;
      v18 = (1 << v17) & 0x1050000;
      if (v17 <= 0x18 && v18 != 0)
      {
        ++v13;
      }

      --v15;
    }

    while (v15);
    if (v13)
    {
      v20 = heap_Alloc(*(*(a1 + 8) + 8), 12 * v13);
      if (!v20)
      {
        return v11;
      }

      v21 = v20;
      v22 = 0;
      v23 = *(v10 + 1080);
      v24 = a5 + 3;
      while (1)
      {
        v25 = *(v24 - 3);
        if (v25 == 16)
        {
          v26 = 1;
          goto LABEL_19;
        }

        if (v25 == 24)
        {
          break;
        }

        if (v25 == 18)
        {
          v26 = 0;
LABEL_19:
          v27 = v20 + 12 * v22;
          *v27 = v26;
          *(v27 + 8) = *v24 - v23;
          *(v27 + 4) = v24[3] / 100.0;
          ++v22;
        }

        v24 += 8;
        if (!--v14)
        {
          goto LABEL_25;
        }
      }

      v26 = 2;
      goto LABEL_19;
    }
  }

  else
  {
    v13 = 0;
  }

  v21 = 0;
LABEL_25:
  v28 = v13 + 1;
  v29 = heap_Alloc(*(*(v10 + 8) + 8), 20 * v28);
  v34 = v29;
  if (!v29)
  {
    log_OutPublic(*(*(v10 + 8) + 32), "SYNTH_BET6", 73000, 0, v30, v31, v32, v33, v95);
    v44 = 0;
    goto LABEL_75;
  }

  v98 = a4;
  v96 = a3;
  if (v28)
  {
    v35 = 0;
    v36 = *(v10 + 1100);
    v37 = *(v10 + 1096);
    v38 = *(v10 + 1092);
    v39 = 12 * v13;
    v40 = v29 + 2;
    v41 = v13;
    do
    {
      if (v35)
      {
        *(v40 - 2) = *(v21 + v35 - 4);
      }

      else
      {
        *v29 = 0;
      }

      v42 = a4;
      if (v39 != v35)
      {
        v42 = *(v21 + v35 + 8);
      }

      *(v40 - 1) = v42;
      v40[1] = v36;
      v40[2] = v38;
      *v40 = v37;
      if (v21 && v39 != v35)
      {
        v43 = *(v21 + v35);
        if (v43)
        {
          if (v43 == 2)
          {
            v36 = *(v21 + v35 + 4);
          }

          else if (v43 == 1)
          {
            v37 = *(v21 + v35 + 4);
          }
        }

        else
        {
          v38 = *(v21 + v35 + 4);
        }
      }

      v35 += 12;
      v40 += 5;
    }

    while (12 * v28 != v35);
  }

  else
  {
    v41 = -1;
  }

  v45 = &v29[5 * v41];
  *(v10 + 1092) = v45[4];
  *(v10 + 1096) = *(v45 + 1);
  v44 = heap_Alloc(*(*(v10 + 8) + 8), 4);
  v50 = *(v10 + 8);
  if (!v44)
  {
    log_OutPublic(*(v50 + 32), "SYNTH_BET6", 73000, 0, v46, v47, v48, v49, v95);
LABEL_75:
    v56 = 0;
    if (!v13)
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v51 = heap_Alloc(*(v50 + 8), 2 * (4 * a4));
  v56 = v51;
  if (!v51)
  {
    goto LABEL_92;
  }

  if (!v28)
  {
    v58 = 0;
    goto LABEL_78;
  }

  v57 = 0;
  v58 = 0;
  v99 = v21;
  v100 = v51;
  v97 = v34;
  do
  {
    v59 = (v34 + 20 * v57);
    v105 = *(v59 + 1) - *v59;
    if (!v105)
    {
      goto LABEL_72;
    }

    v102 = v57;
    *v44 = 0;
    v60 = *v59;
    v61 = v59[3];
    v62 = v59[4];
    v63 = v59[2];
    Stream = sonicCreateStream(*(v10 + 8), 22050, 1u);
    v69 = *(v10 + 8);
    if (!Stream)
    {
      goto LABEL_98;
    }

    v103 = v58;
    v70 = heap_Alloc(*(v69 + 8), 4096);
    v69 = *(v10 + 8);
    if (!v70)
    {
      v56 = v100;
LABEL_98:
      log_OutPublic(*(v69 + 32), "SYNTH_BET6", 73000, 0, v64, v65, v66, v67, v95);
      sonicDestroyStream(*(v10 + 8), Stream);
      if (!v13)
      {
        goto LABEL_103;
      }

      goto LABEL_101;
    }

    v71 = v70;
    v72 = heap_Alloc(*(v69 + 8), 4096);
    if (!v72)
    {
      log_OutPublic(*(*(v10 + 8) + 32), "SYNTH_BET6", 73000, 0, v73, v74, v75, v76, v95);
      v84 = 2229280778;
      v21 = v99;
      goto LABEL_70;
    }

    v77 = v72;
    v104 = a2 + 2 * v60;
    v78 = (v100 + 2 * v103);
    sonicSetSpeed(Stream, v62);
    sonicSetPitch(Stream, v63);
    sonicSetRate(Stream, 1.0);
    sonicSetVolume(Stream, v61);
    sonicSetChordPitch(Stream, 0);
    sonicSetQuality(Stream, 0);
    v79 = 0;
    while (v105 <= v79)
    {
      if (!sonicFlushStream(*(v10 + 8), Stream))
      {
        goto LABEL_68;
      }

      v80 = 0;
LABEL_62:
      v81 = v10;
      ShortFromStream = sonicReadShortFromStream(Stream, v71, 2048);
      if (ShortFromStream >= 1)
      {
        for (i = ShortFromStream; i > 0; i = sonicReadShortFromStream(Stream, v71, 2048))
        {
          *v44 += i;
          cstdlib_memcpy(v78, v71, (2 * i));
          v78 += 2 * i;
        }
      }

      v79 += v80;
      v10 = v81;
      if (v80 <= 0)
      {
        v84 = 0;
        v11 = 2229280778;
        goto LABEL_69;
      }
    }

    if (v105 - v79 >= 2048)
    {
      v80 = 2048;
    }

    else
    {
      v80 = v105 - v79;
    }

    cstdlib_memcpy(v77, (v104 + 2 * v79), 2 * v80);
    if (sonicWriteShortToStream(*(v10 + 8), Stream, v77, v80))
    {
      goto LABEL_62;
    }

LABEL_68:
    v11 = 2229280778;
    v84 = 2229280768;
LABEL_69:
    heap_Free(*(*(v10 + 8) + 8), v77);
    v21 = v99;
    v34 = v97;
LABEL_70:
    heap_Free(*(*(v10 + 8) + 8), v71);
    sonicDestroyStream(*(v10 + 8), Stream);
    if ((v84 & 0x80000000) != 0)
    {
      v11 = v84;
      v56 = v100;
      if (!v13)
      {
        goto LABEL_103;
      }

      goto LABEL_101;
    }

    v57 = v102;
    v58 = *v44 + v103;
    v56 = v100;
    v28 = v13 + 1;
LABEL_72:
    ++v57;
  }

  while (v57 != v28);
LABEL_78:
  v85 = *(v10 + 1160);
  if (v85)
  {
    v86 = 2 * v58;
    v87 = *(v10 + 1088);
    v88 = *(v10 + 1112);
    if (v86 > v88 - 2 * v87)
    {
      v89 = 2 * v87;
      do
      {
        v88 = (2 * v88);
      }

      while (v86 > v88 - v89);
      *(v10 + 1112) = v88;
    }

    v90 = heap_Realloc(*(*(v10 + 8) + 8), v85, v88);
    if (v90)
    {
      *(v10 + 1160) = v90;
      goto LABEL_87;
    }

LABEL_92:
    log_OutPublic(*(*(v10 + 8) + 32), "SYNTH_BET6", 73000, 0, v52, v53, v54, v55, v95);
    if (!v13)
    {
      goto LABEL_103;
    }

LABEL_101:
    if (v21)
    {
      heap_Free(*(*(v10 + 8) + 8), v21);
    }

    goto LABEL_103;
  }

  v90 = heap_Calloc(*(*(v10 + 8) + 8), v58, 2);
  *(v10 + 1160) = v90;
  if (!v90)
  {
    goto LABEL_92;
  }

  *(v10 + 1112) = 2 * v58;
LABEL_87:
  v91 = *(v10 + 1120);
  if (v58 < v91)
  {
    *(v10 + 1120) = v58;
    v91 = v58;
  }

  v92 = v90 + 2 * *(v10 + 1088);
  overlapAdd(v91, 1, v92, v92, v56);
  cstdlib_memcpy((*(v10 + 1160) + 2 * *(v10 + 1088) + 2 * *(v10 + 1120)), (v56 + 2 * *(v10 + 1120)), 2 * (v58 - *(v10 + 1120)));
  if (a7 == 0.0 || a7 == 1.0)
  {
    v93 = ((v98 - v96) / *(v10 + 1092));
  }

  else
  {
    v93 = 0;
  }

  v11 = 0;
  *(v10 + 1120) = v93;
  *(v10 + 1088) += v58 - v93;
  if (v13)
  {
    goto LABEL_101;
  }

LABEL_103:
  if (v34)
  {
    heap_Free(*(*(v10 + 8) + 8), v34);
  }

  if (v44)
  {
    heap_Free(*(*(v10 + 8) + 8), v44);
  }

  if (v56)
  {
    heap_Free(*(*(v10 + 8) + 8), v56);
  }

  return v11;
}

uint64_t synth_bet6_loc_adjust_markers(uint64_t result, unsigned int a2, uint64_t a3, float a4)
{
  if (a2 && a3)
  {
    v4 = *(result + 1080);
    if (a4 == 1.0)
    {
      v5 = -a2;
      v10 = *(result + 1080);
    }

    else
    {
      v5 = -a2;
      v6 = *(result + 1064);
      v7 = a2 - 1;
      v8 = (*(result + 1168) - 32 * a2 + 32 * *(result + 1084) + 16);
      do
      {
        v9 = v7;
        v10 = *(v8 - 1);
        v11 = (*v8 / a4);
        *(v8 - 1) = v6 + ((v10 - v4) / a4);
        *v8 = v11;
        if (*(v8 - 4) == 18)
        {
          break;
        }

        --v7;
        v8 += 8;
      }

      while (v9);
    }

    v12 = 0;
    v13 = a2 - 1;
    v14 = 32 * v5 + 48;
    do
    {
      v15 = (a3 + 32 * v12);
      if (*v15 == 18)
      {
        v16 = ~v12 + a2;
        if (v16)
        {
          v17 = v13 - 1;
          v18 = *(result + 1168);
          v19 = *(result + 1084);
          v20 = v18 + 32 * (v12 - a2 + v19);
          v21 = *(v20 + 24) / 100.0;
          v22 = *(v20 + 12);
          v23 = (v18 + v14 + 32 * v19);
          do
          {
            v24 = v17;
            v16 = *(v23 - 1);
            v25 = (*v23 / v21);
            *(v23 - 1) = v22 + ((v16 - v10) / v21);
            *v23 = v25;
            if (*(v23 - 4) == 18)
            {
              break;
            }

            --v17;
            v23 += 8;
          }

          while (v24);
        }
      }

      else
      {
        v16 = v15[4] + v15[3];
      }

      ++v12;
      --v13;
      v14 += 32;
      v10 = v16;
    }

    while (v12 != a2);
  }

  return result;
}

uint64_t synth_bet6_loc_write_markers(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  v4 = a2;
  __dst = a3;
  v6 = *(a1 + 1068);
  v7 = *(a1 + 1084);
  if (v6 < v7)
  {
    v8 = *(a1 + 1064);
    v9 = (*(a1 + 1168) + 32 * v6 + 12);
    v10 = *(a1 + 1068);
    while (1)
    {
      v11 = *v9;
      v9 += 8;
      if (v11 > v8)
      {
        break;
      }

      ++v4;
      if (v7 == ++v10)
      {
        v4 = v7 + a2 - v6;
        v10 = *(a1 + 1084);
        break;
      }
    }

    if (*(a1 + 1088) == v8)
    {
      v4 = v4 - v10 + v7;
      v12 = (*(a1 + 1168) + 32 * v6 + 12);
      v13 = v7 - v6;
      do
      {
        v14 = *v12;
        if (*v12 >= v8)
        {
          v14 = v8 - 1;
        }

        *v12 = v14 + a4;
        v12 += 8;
        --v13;
      }

      while (v13);
    }

    if (v4)
    {
      goto LABEL_12;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  v26 = a2 - v6 + v7;
  if (*(a1 + 1088) == *(a1 + 1064))
  {
    v4 = v26;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_12:
  v19 = (*(*(a1 + 56) + 112))(*(a1 + 952), *(a1 + 960), &__dst, 32 * v4);
  if ((v19 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v15, v16, v17, v18, "lhError");
    return v19;
  }

  cstdlib_memcpy(__dst, (*(a1 + 1168) + 32 * *(a1 + 1068)), 32 * v4);
  v20 = (*(*(a1 + 56) + 120))(*(a1 + 952), *(a1 + 960), 32 * v4);
  if ((v20 & 0x80000000) != 0)
  {
    v25 = v20;
    log_OutPublic(*(*(a1 + 8) + 32), "SYNTH_BET6", 73001, "%s%x", v21, v22, v23, v24, "lhError");
    v19 = v25;
  }

LABEL_20:
  *(a1 + 1068) += v4;
  return v19;
}

uint64_t synth_bet6_loc_InsertPause(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int *a5, _DWORD *a6, unsigned int a7, unsigned int a8, float a9)
{
  v15 = *(a1 + 40);
  if (a4)
  {
    v16 = 0;
    v17 = (a3 + 12);
    while (1)
    {
      if (*(v17 - 3) == 8)
      {
        v19 = *(v15 + 16) * v17[3];
        if (v19 >= 0x3E8)
        {
          result = insert_pause(a1, a2, a3, a4, a5, a6, v19 / 0x3E8, *v17 - *(a1 + 1080), *v17, v16, 0);
          if (result)
          {
            break;
          }
        }
      }

      ++v16;
      v17 += 8;
      if (a4 == v16)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v22 = a9 == 5.0 || a9 == 6.0 || a9 == 3.0;
    if (!v22 || (v23 = 200 * *(a1 + 1056) * *(v15 + 16), v23 < 0x3E8) || (result = insert_pause(a1, a2, a3, a4, a5, a6, v23 / 0x3E8, *a5, *a5 + *(a1 + 1080), a4, 0), !result))
    {
      result = 2229280783;
      if (a7)
      {
        if (a7 > 0x3E8)
        {
          return result;
        }

        result = insert_pause(a1, a2, a3, a4, a5, a6, *(v15 + 16) * a7 / 0x3E8, *a5, *(a1 + 1080) + *a5, a4, 1);
        v24 = a8;
        if (!a8 || result)
        {
          return result;
        }
      }

      else
      {
        v24 = a8;
        if (!a8)
        {
          return 0;
        }
      }

      result = 2229280783;
      if (v24 <= 0x12C)
      {
        return insert_pause(a1, a2, a3, a4, a5, a6, 0, *a5, *(a1 + 1080) + *a5, a4, 1);
      }
    }
  }

  return result;
}

uint64_t insert_pause(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, _DWORD *a5, _DWORD *a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, int a11)
{
  v18 = *(a1 + 1036);
  for (i = *a6 + a7; v18 < i; i = *a6 + a7)
  {
    v18 *= 2;
    *(a1 + 1036) = v18;
  }

  v20 = heap_Realloc(*(*(a1 + 8) + 8), *a2, 2 * v18);
  if (!v20)
  {
    return 2229280778;
  }

  *a2 = v20;
  if (*a6 <= a8)
  {
    v21 = (v20 + 2 * *a5);
  }

  else
  {
    cstdlib_memmove((v20 + 2 * a8 + 2 * a7), (v20 + 2 * a8), 2 * (*a6 - a8));
    v21 = (*a2 + 2 * a8);
  }

  cstdlib_memset(v21, 0, 2 * a7);
  result = 0;
  *a5 += a7;
  *a6 += a7;
  if (a4 && a11 == 1)
  {
    v23 = a10;
    v24 = a4;
    v25 = (a3 + 12);
    do
    {
      if (v23)
      {
        if (*v25 >= a9)
        {
          *v25 += a7;
        }
      }

      --v23;
      v25 += 8;
      --v24;
    }

    while (v24);
    return 0;
  }

  return result;
}

uint64_t new_siren_mrcc_synth_Init(uint64_t a1)
{
  Rsrc = siren_common_synth_GetRsrc(a1);
  Voice = siren_common_synth_GetVoice(a1);
  v4 = heap_Calloc(*(Rsrc + 8), 1, 312);
  if (!v4)
  {
    return 10;
  }

  v5 = v4;
  RccSyn__deinit_Synthesis(v4);
  *(v5 + 272) = 0;
  if (RccSyn__init_Synthesis(Rsrc, v5, (Voice + 7688)))
  {
    MrccInfo = siren_common_synth_GetMrccInfo(a1);
    if (MrccInfo)
    {
      RccSyn__deinit_Synthesis(MrccInfo);
    }
  }

  return siren_common_synth_SetMrccInfo(a1, v5);
}

uint64_t new_siren_mrcc_synth_DeInit(uint64_t a1)
{
  MrccInfo = siren_common_synth_GetMrccInfo(a1);
  if (MrccInfo)
  {
    RccSyn__deinit_Synthesis(MrccInfo);
  }

  return 0;
}

uint64_t new_siren_mrcc_synth_Reset(uint64_t a1)
{
  Rsrc = siren_common_synth_GetRsrc(a1);
  Voice = siren_common_synth_GetVoice(a1);
  MrccInfo = siren_common_synth_GetMrccInfo(a1);
  if (MrccInfo && (v5 = MrccInfo, RccSyn__deinit_Synthesis(MrccInfo), *(v5 + 8) = Voice + 7800, *(v5 + 272) = 0, (inited = RccSyn__init_Synthesis(Rsrc, v5, (Voice + 7688))) != 0))
  {
    return inited | 0x84E02000;
  }

  else
  {
    return 0;
  }
}

uint64_t new_siren_mrcc_synth_ProcessStart(uint64_t a1)
{
  v2 = 2229280778;
  MrccInfo = siren_common_synth_GetMrccInfo(a1);
  Voice = siren_common_synth_GetVoice(a1);
  Rsrc = siren_common_synth_GetRsrc(a1);
  FramesCount = siren_common_synth_GetFramesCount(a1);
  if (!a1)
  {
    return 2229280775;
  }

  v7 = FramesCount;
  if (!FramesCount)
  {
    return 0;
  }

  v8 = heap_Alloc(*(Rsrc + 8), 4 * FramesCount);
  MrccInfo[36] = v8;
  if (v8)
  {
    v9 = heap_Alloc(*(Rsrc + 8), 4 * v7);
    MrccInfo[37] = v9;
    if (v9)
    {
      v10 = heap_Alloc(*(Rsrc + 8), 4 * (v7 + v7 * *(Voice + 24)));
      MrccInfo[38] = v10;
      if (v10)
      {
        return 0;
      }
    }

    v11 = MrccInfo[36];
    if (v11)
    {
      heap_Free(*(Rsrc + 8), v11);
    }
  }

  v12 = MrccInfo[37];
  if (v12)
  {
    heap_Free(*(Rsrc + 8), v12);
  }

  v13 = MrccInfo[38];
  if (v13)
  {
    heap_Free(*(Rsrc + 8), v13);
  }

  return v2;
}

uint64_t new_siren_mrcc_synth_Process(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v96 = *MEMORY[0x277D85DE8];
  RatePct = siren_common_synth_GetRatePct(a1);
  FrameSamples = siren_common_synth_GetFrameSamples(a1);
  FramesCount = siren_common_synth_GetFramesCount(a1);
  BufSamplesCount = siren_common_synth_GetBufSamplesCount(a1);
  LeftSamplesCount = siren_common_synth_GetLeftSamplesCount(a1);
  Rsrc = siren_common_synth_GetRsrc(a1);
  __s1 = siren_common_synth_GetLeftAcousticBuffer(a1);
  Voice = siren_common_synth_GetVoice(a1);
  Frames = siren_common_synth_GetFrames(a1);
  PcmBuffer = siren_common_synth_GetPcmBuffer(a1);
  LeftPcmBuffer = siren_common_synth_GetLeftPcmBuffer(a1);
  result = 7;
  if (a3 < a2 || !a1 || FramesCount <= a2 || FramesCount <= a3)
  {
    return result;
  }

  v86 = 0;
  v13 = a3 + 1;
  __n = 2 * LeftSamplesCount;
  v83 = FrameSamples * RatePct / 0x64u;
  v14 = a2;
  v15 = 0.0;
  v84 = LeftSamplesCount;
  v16 = 0.0;
  v17 = 0.0;
  v80 = BufSamplesCount;
  v78 = Rsrc;
  v79 = LeftSamplesCount;
  v77 = v13;
  while (LeftSamplesCount)
  {
    if (BufSamplesCount < LeftSamplesCount)
    {
      Data = 18;
      return Data | 0x84E02000;
    }

    if (cstdlib_memcmp(__s1, (Frames + 4 * (*(Voice + 9204) * v14)), 4 * *(Voice + 9204)))
    {
      log_OutText(*(Rsrc + 32), "SYNTH_BET6", 1, 0, "Disregard leftover buffer for current frame (%d samples)", v18, v19, v20, v84);
    }

    else
    {
      cstdlib_memcpy(PcmBuffer, LeftPcmBuffer, __n);
      CurFrameCount = siren_common_synth_GetCurFrameCount(a1);
      Data = siren_common_synth_SetCurFrameCount(a1, CurFrameCount + 1);
      if (Data)
      {
        return Data | 0x84E02000;
      }

      CurSampleCount = siren_common_synth_GetCurSampleCount(a1);
      Data = siren_common_synth_SetCurSampleCount(a1, CurSampleCount + LeftSamplesCount);
      if (Data)
      {
        return Data | 0x84E02000;
      }

      log_OutText(*(Rsrc + 32), "SYNTH_BET6", 3, 0, "Leftover buffer match current frame (%d samples)", v40, v41, v42, LeftSamplesCount);
    }

    Data = siren_common_synth_SetLeftSamplesCount(a1, 0);
    if (Data)
    {
      return Data | 0x84E02000;
    }

LABEL_49:
    if (++v14 == v13)
    {
      return 0;
    }
  }

  if (siren_common_synth_GetCurSampleCount(a1) + v83 <= BufSamplesCount)
  {
    v21 = siren_common_synth_GetFramesCount(a1);
    v22 = siren_common_synth_GetVoice(a1);
    v23 = siren_common_synth_GetFrames(a1);
    if (v14 < v21)
    {
      v86 = (v23 + 4 * (*(v22 + 9204) * v14));
      v24 = &v86[*(v22 + 24)];
      v17 = v24[1];
      v16 = v24[2];
      v15 = v24[3];
    }

    MrccInfo = siren_common_synth_GetMrccInfo(a1);
    v26 = siren_common_synth_GetVoice(a1);
    v27 = *(MrccInfo + 276);
    v28 = *(v26 + 24);
    if (v15 <= 0.5)
    {
      v30 = 0;
    }

    else
    {
      *v95 = 0;
      v29 = exp_S7_25_0(2 * vcvts_n_s32_f32(v17, 0x18uLL), v95);
      v30 = ((v29 >> (24 - v95[0])) * *(MrccInfo + 280)) / 100;
      v31 = exp_S7_25_0(2 * vcvts_n_s32_f32(v16 * 1.25, 0x18uLL), v95);
      v32 = *(MrccInfo + 8);
      if (!v32)
      {
        goto LABEL_26;
      }

      v33 = v31 >> ~*v95;
      if (v33)
      {
        v34 = v32[1];
        v35 = __OFSUB__(v33, v34);
        v36 = v33 - v34;
        if (v36 < 0 != v35)
        {
          LODWORD(v32) = v32[3];
        }

        else if (v32[2] >= v33)
        {
          LODWORD(v32) = v32[3] + *v32 * v36;
        }

        else
        {
          LODWORD(v32) = v32[4];
        }

LABEL_26:
        v43 = (v28 + 1);
        v44 = *(MrccInfo + 304);
        if (v27)
        {
          if ((v28 & 0x80000000) == 0)
          {
            v45 = (v44 + 4 * (v14 * v43));
            v46 = v86;
            do
            {
              v47 = *v46++;
              *v45++ = vcvts_n_s32_f32(v47, 0x18uLL);
              --v43;
            }

            while (v43);
          }
        }

        else if ((v28 & 0x80000000) == 0)
        {
          v48 = (v44 + 4 * (v14 * v43));
          v49 = v86;
          do
          {
            v50 = *v49++;
            v51 = vcvts_n_s32_f32(v50, 0x18uLL);
            v52 = v51 < 0;
            if (v51 < 0)
            {
              v51 = -v51;
            }

            v53 = v51 + 14506 * (v51 >> 15) + ((14506 * (v51 & 0x7FFFu) + 0x4000) >> 15);
            if (v52)
            {
              v53 = -v53;
            }

            *v48++ = v53;
            --v43;
          }

          while (v43);
        }

        *(*(MrccInfo + 288) + 4 * v14) = v30;
        *(*(MrccInfo + 296) + 4 * v14) = v32;
        __src = 0;
        v93 = 0;
        v54 = siren_common_synth_GetCurSampleCount(a1);
        v55 = siren_common_synth_GetBufSamplesCount(a1);
        v89 = siren_common_synth_GetRatePct(a1);
        VolumeLevel = siren_common_synth_GetVolumeLevel(a1);
        v56 = siren_common_synth_GetVoice(a1);
        v57 = siren_common_synth_GetMrccInfo(a1);
        v58 = siren_common_synth_GetPcmBuffer(a1);
        __dst = siren_common_synth_GetLeftAcousticBuffer(a1);
        v59 = siren_common_synth_GetLeftPcmBuffer(a1);
        v60 = siren_common_synth_GetFrames(a1);
        v87 = siren_common_synth_GetRsrc(a1);
        v61 = *(v56 + 24) + 1;
        *(v57 + 88) = 0xFFFFFFFFLL;
        v62 = *(v57 + 288);
        v63 = *(*(v57 + 296) + 4 * v14);
        *(v57 + 72) = 0;
        *(v57 + 76) = v63;
        *(v57 + 80) = (42949673 * (v89 << 10)) >> 32;
        *(v57 + 68) = *(v62 + 4 * v14);
        Data = MrccInput_AllocateData(v57 + 48, v61);
        if (Data)
        {
          return Data | 0x84E02000;
        }

        cstdlib_memcpy(*(v57 + 56), (*(v57 + 304) + 4 * v61 * v14), 4 * v61);
        Data = RccSyn__SynthesisOneFrame(v57, &v93, &__src);
        if (Data)
        {
          return Data | 0x84E02000;
        }

        RrInput_Reset(v57 + 160);
        if (v93 + v54 <= v55)
        {
          v70 = (v58 + 2 * v54);
          cstdlib_memcpy(v70, __src, 2 * v93);
          vol_ScaleToLevel(v70, v93, VolumeLevel);
          v71 = siren_common_synth_GetCurFrameCount(a1);
          Data = siren_common_synth_SetCurFrameCount(a1, v71 + 1);
          v64 = v87;
          if (Data)
          {
            return Data | 0x84E02000;
          }

          v72 = siren_common_synth_GetCurSampleCount(a1);
          Data = siren_common_synth_SetCurSampleCount(a1, v93 + v72);
          if (Data)
          {
            return Data | 0x84E02000;
          }
        }

        else
        {
          cstdlib_memcpy(__dst, (v60 + 4 * (*(v56 + 9204) * v14)), 4 * *(v56 + 9204));
          cstdlib_memcpy(v59, __src, 2 * v93);
          vol_ScaleToLevel(v59, v93, VolumeLevel);
          Data = siren_common_synth_SetIsBufferFull(a1, 1u);
          if (Data)
          {
            return Data | 0x84E02000;
          }

          Data = siren_common_synth_SetLeftSamplesCount(a1, v93);
          if (Data)
          {
            return Data | 0x84E02000;
          }

          v64 = v87;
          v65 = *(v87 + 32);
          v66 = siren_common_synth_GetLeftSamplesCount(a1);
          log_OutText(v65, "SYNTH_BET6", 3, 0, "New leftover buffer for current frame (%d samples)", v67, v68, v69, v66);
        }

        if (log_GetLogLevel(*(v64 + 32)) >= 3)
        {
          siren_compute_stream_hash(__src, 2 * v93, v95);
          log_OutText(*(v64 + 32), "SYNTH_BET6", 3, 0, "SYNTH_PCM_BUFFER_MD5=%s", v73, v74, v75, v95);
        }

        BufSamplesCount = v80;
        Rsrc = v78;
        LeftSamplesCount = v79;
        v13 = v77;
        if (siren_common_synth_GetIsBufferFull(a1))
        {
          return 0;
        }

        goto LABEL_49;
      }
    }

    LODWORD(v32) = 0;
    goto LABEL_26;
  }

  Data = siren_common_synth_SetIsBufferFull(a1, 1u);
  if (Data)
  {
    return Data | 0x84E02000;
  }

  return 0;
}

uint64_t new_siren_mrcc_synth_ProcessEnd(uint64_t a1)
{
  Rsrc = siren_common_synth_GetRsrc(a1);
  MrccInfo = siren_common_synth_GetMrccInfo(a1);
  if (MrccInfo)
  {
    v4 = MrccInfo;
    v5 = *(MrccInfo + 288);
    if (v5)
    {
      heap_Free(*(Rsrc + 8), v5);
      v4[36] = 0;
    }

    v6 = v4[37];
    if (v6)
    {
      heap_Free(*(Rsrc + 8), v6);
      v4[37] = 0;
    }

    v7 = v4[38];
    if (v7)
    {
      heap_Free(*(Rsrc + 8), v7);
      v4[38] = 0;
    }
  }

  return 0;
}

uint64_t new_siren_mrcc_synth_SetPitch(uint64_t a1, unsigned int a2)
{
  MrccInfo = siren_common_synth_GetMrccInfo(a1);
  result = 2229280786;
  if (a2 <= 0xC8)
  {
    if (MrccInfo)
    {
      result = 0;
      *(MrccInfo + 280) = a2;
    }
  }

  return result;
}

uint64_t exp_S7_25_0(int a1, _WORD *a2)
{
  v2 = a1 >> 10;
  result = 0x40000000;
  v4 = 1;
  for (i = 10; i != 32; ++i)
  {
    if (v2)
    {
      result = (exp_mantissa_lut_0[i] * ((result + 0x4000) >> 15));
      v4 += exp_scale_lut_0[i];
      if (result <= 1073733631)
      {
        result = (2 * result);
        --v4;
      }
    }

    v2 >>= 1;
  }

  if (result <= 0x3FFFFFFF)
  {
    do
    {
      result = (2 * result);
      LOWORD(v4) = v4 - 1;
    }

    while (result < 0x40000000);
  }

  *a2 = v4;
  return result;
}

uint64_t new_siren_nn_mt_synth_Init(void *a1)
{
  Rsrc = siren_common_synth_GetRsrc(a1);
  Voice = siren_common_synth_GetVoice(a1);
  v4 = *(Voice + 9168);
  v5 = heap_Calloc(*(Rsrc + 8), 1, 64);
  if (!v5)
  {
    return 10;
  }

  v6 = v5;
  *(v5 + 24) = *(Voice + 9188);
  *(v5 + 40) = v4;
  v7 = heap_Calloc(*(Rsrc + 8), v4, 8);
  *(v6 + 16) = v7;
  if (!v7)
  {
    return 10;
  }

  v8 = heap_Calloc(*(Rsrc + 8), v4, 8);
  if (!v8)
  {
    return 10;
  }

  v9 = v8;
  v10 = siren_common_synth_SetLeftFrames(a1, 0);
  if (v10)
  {
    return v10;
  }

  v10 = siren_common_synth_SetUsedLeftFrames(a1, 0);
  if (v10)
  {
    return v10;
  }

  v10 = siren_common_synth_SetLeftSamples(a1, 0);
  if (v10)
  {
    return v10;
  }

  v10 = siren_common_synth_SetUsedLeftSamples(a1, 0);
  if (v10)
  {
    return v10;
  }

  v12 = fi_rsc_create(Rsrc, v6);
  if (v12)
  {
    v11 = v12;
    siren_log_Error(Rsrc, "NNVocoder Model FI Resource creation failed: %d");
    return v11;
  }

  if (!v4)
  {
LABEL_15:
    *(v6 + 48) = v9;
    v16 = heap_Calloc(*(Rsrc + 8), 1, 56);
    *(v6 + 56) = v16;
    if (v16)
    {
      v17 = heap_Calloc(*(Rsrc + 8), 1, 2 * *(v6 + 24));
      *(*(v6 + 56) + 8) = v17;
      if (v17)
      {
        v18 = heap_Calloc(*(Rsrc + 8), 1, 2 * *(v6 + 24));
        **(v6 + 56) = v18;
        if (v18)
        {
          v19 = heap_Calloc(*(Rsrc + 8), (*(Voice + 9200) + 2 * *(Voice + 9188) + 110), 4);
          v20 = *(v6 + 56);
          v20[2] = v19;
          if (v19)
          {
            v21 = *(Voice + 9188);
            v20[4].i32[0] = v21;
            v20[4].i32[1] = v21;
            v20[5] = *(Voice + 9192);
            v20[6].i32[0] = *(Voice + 9200);
            v20[3] = vrev64_s32(*(Voice + 9168));
            v11 = siren_common_synth_SetNnInfo(a1, v6);
            if (v11)
            {
              new_siren_nn_mt_synth_DeInit(a1);
            }

            return v11;
          }
        }
      }
    }

    return 10;
  }

  v13 = 0;
  v14 = 8 * v4;
  while (1)
  {
    v15 = parse_fi_binary_model(*v6, *(Voice + 8056), (*(v6 + 16) + v13));
    if (v15)
    {
      break;
    }

    v13 += 8;
    if (v14 == v13)
    {
      goto LABEL_15;
    }
  }

  v11 = v15;
  siren_log_Error(Rsrc, "NNVocoder Model FI binary model parsing failed: %d");
  return v11;
}

uint64_t new_siren_nn_mt_synth_DeInit(uint64_t a1)
{
  NnInfo = siren_common_synth_GetNnInfo(a1);
  Voice = siren_common_synth_GetVoice(a1);
  Rsrc = siren_common_synth_GetRsrc(a1);
  if (!NnInfo)
  {
    return 7;
  }

  v5 = Rsrc;
  v6 = *(Voice + 9168);
  if (v6)
  {
    v7 = 0;
    v8 = 8 * v6;
    do
    {
      v9 = *(*(NnInfo + 16) + v7);
      if (v9)
      {
        fi_net_destroy(v9);
      }

      v7 += 8;
    }

    while (v8 != v7);
  }

  heap_Free(*(v5 + 8), *(NnInfo + 16));
  heap_Free(*(v5 + 8), *(NnInfo + 48));
  if (*NnInfo)
  {
    fi_rsc_destroy(*NnInfo);
    *NnInfo = 0;
  }

  v10 = *(NnInfo + 56);
  if (!v10)
  {
    return 0;
  }

  if (*v10)
  {
    heap_Free(*(v5 + 8), *v10);
    v10 = *(NnInfo + 56);
  }

  if (v10[1])
  {
    heap_Free(*(v5 + 8), v10[1]);
    v10 = *(NnInfo + 56);
  }

  if (v10[2])
  {
    heap_Free(*(v5 + 8), v10[2]);
    v10 = *(NnInfo + 56);
  }

  heap_Free(*(v5 + 8), v10);
  result = 0;
  *(NnInfo + 56) = 0;
  return result;
}

uint64_t new_siren_nn_synth_Init(void *a1)
{
  Rsrc = siren_common_synth_GetRsrc(a1);
  Voice = siren_common_synth_GetVoice(a1);
  v10 = 0;
  v4 = heap_Calloc(*(Rsrc + 8), 1, 64);
  if (!v4)
  {
    v7 = 10;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = fi_rsc_create(Rsrc, v4);
  if (v6)
  {
    v7 = v6;
    siren_log_Error(Rsrc, "NNVocoder Model FI Resource creation failed: %d");
LABEL_8:
    new_siren_nn_synth_DeInit(a1);
    return v7;
  }

  v8 = parse_fi_binary_model(*v5, *(Voice + 8056), &v10);
  if (v8)
  {
    v7 = v8;
    siren_log_Error(Rsrc, "NNVocoder Model FI binary model parsing failed: %d");
    goto LABEL_8;
  }

  *(v5 + 8) = v10;
  *(v5 + 24) = *(Voice + 9188);
  v7 = siren_common_synth_SetNnInfo(a1, v5);
  if (v7)
  {
    goto LABEL_8;
  }

  return v7;
}

uint64_t new_siren_nn_synth_DeInit(uint64_t a1)
{
  NnInfo = siren_common_synth_GetNnInfo(a1);
  if (NnInfo)
  {
    v2 = NnInfo;
    v3 = *(NnInfo + 8);
    if (v3)
    {
      fi_net_destroy(v3);
      *(v2 + 8) = 0;
    }

    if (*v2)
    {
      fi_rsc_destroy(*v2);
      *v2 = 0;
    }
  }

  return 0;
}

uint64_t new_siren_nn_mt_synth_Reset(uint64_t a1)
{
  NnInfo = siren_common_synth_GetNnInfo(a1);
  v2 = *(NnInfo + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = NnInfo;
  v4 = 0;
  v5 = 8 * v2;
  while (1)
  {
    v6 = fi_net_reset(*(*(v3 + 16) + v4));
    if (v6)
    {
      break;
    }

    v4 += 8;
    if (v5 == v4)
    {
      return 0;
    }
  }

  return v6 | 0x84E02000;
}

uint64_t new_siren_nn_synth_Reset(uint64_t a1)
{
  NnInfo = siren_common_synth_GetNnInfo(a1);
  v2 = fi_net_reset(*(NnInfo + 8));
  if (v2)
  {
    return v2 | 0x84E02000;
  }

  else
  {
    return 0;
  }
}

uint64_t new_siren_nn_mt_synth_ProcessStart(uint64_t a1, uint64_t a2)
{
  Rsrc = siren_common_synth_GetRsrc(a1);
  Voice = siren_common_synth_GetVoice(a1);
  NnInfo = siren_common_synth_GetNnInfo(a1);
  RatePct = siren_common_synth_GetRatePct(a1);
  *(NnInfo + 32) = a2;
  v8 = (RatePct / 100.0) * siren_common_synth_GetFrameSamples(a1);
  *(NnInfo + 24) = v8;
  v9 = *(NnInfo + 56);
  *(v9 + 32) = v8;
  if (*(v9 + 36) >= v8)
  {
    return 0;
  }

  v10 = heap_Realloc(*(Rsrc + 8), *(v9 + 8), 2 * v8);
  if (!v10)
  {
    return 10;
  }

  v11 = *(NnInfo + 56);
  v11[1] = v10;
  v12 = heap_Realloc(*(Rsrc + 8), *v11, 2 * *(NnInfo + 24));
  if (!v12)
  {
    return 10;
  }

  v13 = *(NnInfo + 56);
  *v13 = v12;
  v14 = heap_Realloc(*(Rsrc + 8), v13[2], 4 * (*(Voice + 9200) + 2 * *(NnInfo + 24) + 110));
  if (!v14)
  {
    return 10;
  }

  v15 = v14;
  result = 0;
  *(*(NnInfo + 56) + 16) = v15;
  return result;
}

uint64_t new_siren_nn_mt_synth_Process(uint64_t a1)
{
  Voice = siren_common_synth_GetVoice(a1);
  PcmBuffer = siren_common_synth_GetPcmBuffer(a1);
  LeftPcmBuffer = siren_common_synth_GetLeftPcmBuffer(a1);
  Rsrc = siren_common_synth_GetRsrc(a1);
  v6 = -2065686521;
  if (!PcmBuffer || !LeftPcmBuffer)
  {
    return v6 | 0x84E02000;
  }

  v7 = *(Voice + 9168);
  LeftSamples = siren_common_synth_GetLeftSamples(a1);
  NnInfo = siren_common_synth_GetNnInfo(a1);
  if (!LeftSamples)
  {
    v148 = Rsrc;
    v22 = siren_common_synth_GetVoice(a1);
    v23 = siren_common_synth_GetRsrc(a1);
    v24 = *(NnInfo + 32);
    Frames = siren_common_synth_GetFrames(a1);
    v26 = *(v22 + 9168);
    v27 = heap_Calloc(*(v23 + 8), v26, 48);
    v28 = v27;
    if (!v27)
    {
      siren_log_Error(v23, "memory allocation error.");
      v90 = 10;
      goto LABEL_95;
    }

    v149 = v27;
    if (v26)
    {
      v29 = 0;
      v150[0] = 0;
      v30 = (v27 + 16);
      while (1)
      {
        ThreadChunkIndex = SampleChunk_getThreadChunkIndex(v24, v29, v150 + 1, v150);
        if (ThreadChunkIndex)
        {
          break;
        }

        ThreadChunkIndex = fi_net_update_param(*(*(NnInfo + 16) + 8 * v29));
        if (ThreadChunkIndex)
        {
          break;
        }

        v32 = Frames + 4 * (*(v22 + 9204) * HIDWORD(v150[0]));
        v33 = LODWORD(v150[0]) - HIDWORD(v150[0]) + 1;
        *(v30 - 2) = *(*(NnInfo + 16) + 8 * v29);
        *(v30 - 1) = v32;
        *v30 = v33;
        v30 += 12;
        if (v26 == ++v29)
        {
          goto LABEL_20;
        }
      }

      v90 = ThreadChunkIndex;
      v28 = v149;
LABEL_95:
      v38 = v148;
      if (!v28)
      {
        goto LABEL_102;
      }

LABEL_96:
      if (v7)
      {
        v91 = (v28 + 32);
        do
        {
          if (*v91)
          {
            heap_Free(*(v38 + 8), *v91);
          }

          v91 += 6;
          --v7;
        }

        while (v7);
      }

      heap_Free(*(v38 + 8), v28);
      goto LABEL_102;
    }

LABEL_20:
    v34 = siren_common_synth_GetNnInfo(a1);
    v35 = siren_common_synth_GetVoice(a1);
    v36 = siren_common_synth_GetRsrc(a1);
    v37 = *(v35 + 9168);
    v38 = v148;
    v28 = v149;
    if (v37)
    {
      v39 = v36;
      v40 = 0;
      v41 = 8 * v37;
      do
      {
        v42 = thread_ObjOpen(*(v39 + 408), *(v39 + 8), (*(v34 + 48) + v40));
        if (v42)
        {
LABEL_93:
          v90 = v42;
          goto LABEL_96;
        }

        v40 += 8;
      }

      while (v41 != v40);
      v43 = 0;
      v44 = "thread start failed.";
      v45 = v149;
      while (1)
      {
        v46 = thread_Start(*(*(v34 + 48) + v43));
        if (v46)
        {
          break;
        }

        v43 += 8;
        v45 += 48;
        if (v41 == v43)
        {
          v47 = 0;
          v44 = "thread join failed.";
          while (1)
          {
            v46 = thread_Join(*(*(v34 + 48) + v47));
            if (v46)
            {
              goto LABEL_94;
            }

            v47 += 8;
            if (v41 == v47)
            {
              v48 = 0;
              v38 = v148;
              while (1)
              {
                v49 = *(*(v34 + 48) + v48);
                if (v49)
                {
                  v42 = thread_ObjClose(v49);
                  if (v42)
                  {
                    goto LABEL_93;
                  }
                }

                v48 += 8;
                if (v41 == v48)
                {
                  goto LABEL_34;
                }
              }
            }
          }
        }
      }

LABEL_94:
      v90 = v46;
      siren_log_Error(v39, v44);
      goto LABEL_95;
    }

LABEL_34:
    v50 = siren_common_synth_GetVoice(a1);
    v51 = siren_common_synth_GetNnInfo(a1);
    v52 = *(v51 + 32);
    v53 = siren_common_synth_GetRsrc(a1);
    v54 = *(v50 + 9168);
    if (v54)
    {
      v131 = v53;
      v133 = v51;
      LODWORD(v55) = 0;
      v56 = *(v51 + 24);
      v57 = (v149 + 16);
      do
      {
        v58 = *v57;
        v57 += 12;
        if (v58 <= 0)
        {
          v55 = v55;
        }

        else
        {
          v55 = (v55 + 1);
        }

        --v54;
      }

      while (v54);
      HIDWORD(v150[0]) = 0;
      SampleChunk_getEmissionType(v52, v150 + 1);
      if (v55)
      {
        v59 = 0;
        v28 = v149;
        while (1)
        {
          v60 = v149 + 48 * v59;
          v61 = heap_Calloc(*(v131 + 8), (*(v60 + 16) + 1), 2 * v56);
          *(v60 + 24) = v61;
          if (!v61)
          {
            break;
          }

          *(v60 + 32) = v61;
          v62 = (*(v60 + 16) * v56);
          if (v62)
          {
            v63 = *(v60 + 40);
            if (!v63)
            {
              v90 = 7;
              goto LABEL_132;
            }

            do
            {
              v64 = *v63++;
              *v61++ = v64;
              --v62;
            }

            while (v62);
          }

          if (++v59 == v55)
          {
            v65 = 0;
            v129 = (v55 - 1);
            while (1)
            {
              v66 = *(v150 + 1);
              if (*(v150 + 1) == 0.0)
              {
                if (v65)
                {
                  v66 = 1.0;
                }

                else
                {
                  v66 = 0.0;
                }
              }

              else if (*(v150 + 1) == 2.0)
              {
                if (v65 == v129)
                {
                  v66 = 2.0;
                }

                else
                {
                  v66 = 1.0;
                }
              }

              else if (*(v150 + 1) == 4.0)
              {
                v66 = v65 == v129 ? 2.0 : 1.0;
                if (!v65)
                {
                  v66 = 0.0;
                }
              }

              v67 = v66;
              if (v66 == 4)
              {
                goto LABEL_84;
              }

              v68 = *(v133 + 56);
              v69 = v149 + 48 * v65;
              v70 = *(v68 + 24);
              v71 = *(v68 + 32);
              v72 = *(v68 + 8);
              __dst = *v68;
              if (v67 == 2)
              {
                v75 = 0;
                v76 = (*(v69 + 24) + 2 * (v71 * v70));
                v77 = (*(v69 + 16) - v70) * v71;
                goto LABEL_68;
              }

              if (v67)
              {
                break;
              }

              v73 = *(v69 + 24);
              v74 = (*(v69 + 16) + ~v70) * v71;
              cstdlib_memcpy(v72, (v73 + 2 * v74), 2 * v71);
              *(v69 + 24) = v73;
              *(v69 + 20) = v74;
              *(v68 + 36) = *(v68 + 32);
LABEL_84:
              if (++v65 == v55)
              {
                goto LABEL_106;
              }
            }

            v76 = (*(v69 + 24) + 2 * (v71 * v70));
            v75 = (*(v69 + 16) + ~(2 * v70)) * v71;
            v77 = v75;
LABEL_68:
            v143 = v77;
            v145 = *(v68 + 36);
            __src = *(v68 + 8);
            if (v71 < 0x37)
            {
              v78 = 0;
              goto LABEL_78;
            }

            v135 = v75;
            v79 = v72 + 2 * (*(v68 + 36) - 55);
            v80 = *(v68 + 16);
            bet6_synth_Apply_Half_hannWin_Scalar_55(v79, 1);
            bet6_synth_Apply_Half_hannWin_Scalar_55(v76, 0);
            bet6_synth_Convolve_ReverseKernel(v79, 55, v76, 55, v80);
            v81 = 0;
            v82 = 0;
            v83 = 0x80000000;
            do
            {
              if (*(v80 + 216 + 4 * v81) > v83)
              {
                v83 = *(v80 + 216 + 4 * v81);
                v82 = v81;
              }

              ++v81;
            }

            while (v81 != 55);
            v78 = 55 - v82;
            v84 = (55 - v82);
            if (v84 > 0x37)
            {
              v75 = v135;
              goto LABEL_78;
            }

            v85 = bet6_synth_OverlapAdd((v79 + 2 * (55 - v78)), v76, v84);
            v75 = v135;
            if ((v85 & 0x80000000) == 0)
            {
LABEL_78:
              v136 = v149 + 48 * v65;
              v86 = v75;
              if (v75)
              {
                cstdlib_memcpy(__dst, &v76[v75], 2 * v71);
              }

              cstdlib_memmove(&v76[v71 - v78], v76, 2 * v143);
              cstdlib_memcpy(v76, __src, 2 * v145);
              if (v86)
              {
                cstdlib_memcpy(__src, __dst, 2 * v71);
              }

              v87 = bet6_apply_fir_same_mode(v76, 2 * v71, *(v68 + 40), *(v68 + 48), *(v68 + 16));
              *(v136 + 24) = v76;
              *(v136 + 20) = v143 + v145 - v78;
              *(v68 + 36) = *(v68 + 32);
              if ((v87 & 0x80000000) == 0)
              {
                goto LABEL_84;
              }
            }

            siren_log_Error(v131, "overlap process failed.");
            goto LABEL_84;
          }
        }

        v90 = 10;
LABEL_132:
        v38 = v148;
        goto LABEL_96;
      }
    }

    else
    {
      HIDWORD(v150[0]) = 0;
      SampleChunk_getEmissionType(v52, v150 + 1);
    }

LABEL_106:
    v92 = siren_common_synth_GetVoice(a1);
    v93 = siren_common_synth_GetNnInfo(a1);
    __dsta = siren_common_synth_GetPcmBuffer(a1);
    v94 = siren_common_synth_GetLeftPcmBuffer(a1);
    v95 = siren_common_synth_GetRsrc(a1);
    v96 = *(v92 + 9168);
    if (v96)
    {
      v97 = 0;
      v98 = (v149 + 16);
      do
      {
        v99 = *v98;
        v98 += 12;
        if (v99 > 0)
        {
          ++v97;
        }

        --v96;
      }

      while (v96);
    }

    else
    {
      v97 = 0;
    }

    BufSamplesCount = siren_common_synth_GetBufSamplesCount(a1);
    VolumeLevel = siren_common_synth_GetVolumeLevel(a1);
    if (v97)
    {
      v102 = VolumeLevel;
      __srca = BufSamplesCount;
      v128 = v95;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v132 = *(v93 + 24);
      v130 = v94;
      v106 = 1;
      v137 = VolumeLevel;
      while (1)
      {
        CurFrameCount = siren_common_synth_GetCurFrameCount(a1);
        CurSampleCount = siren_common_synth_GetCurSampleCount(a1);
        v108 = CurSampleCount;
        v109 = v149 + v103;
        v110 = *(v149 + v103 + 20);
        v144 = v106;
        if (v110 + CurSampleCount >= __srca)
        {
          break;
        }

        v111 = v105;
        v112 = &__dsta[2 * CurSampleCount];
        cstdlib_memcpy(v112, *(v109 + 24), 2 * v110);
        IsBufferFull = vol_ScaleToLevel(v112, *(v109 + 20), v102);
        if (IsBufferFull)
        {
          goto LABEL_136;
        }

        IsBufferFull = siren_common_synth_SetIsBufferFull(a1, 0);
        if (IsBufferFull)
        {
          goto LABEL_136;
        }

        IsBufferFull = siren_common_synth_SetCurFrameCount(a1, *(v149 + v103 + 16) + CurFrameCount);
        if (IsBufferFull)
        {
          goto LABEL_136;
        }

        IsBufferFull = siren_common_synth_SetCurSampleCount(a1, *(v109 + 20) + v108);
        if (IsBufferFull)
        {
          goto LABEL_136;
        }

        v105 = *(v149 + v103 + 16) + v111;
        v104 += *(v109 + 20);
        v106 = v144 + 1;
        v103 += 48;
        v102 = v137;
        if (48 * v97 == v103)
        {
          goto LABEL_123;
        }
      }

      v115 = *(v109 + 24);
      if (!v115)
      {
        v90 = -2065686522;
        goto LABEL_137;
      }

      v134 = v105;
      v116 = __srca - CurSampleCount;
      v117 = &__dsta[2 * CurSampleCount];
      cstdlib_memcpy(v117, v115, 2 * v116);
      IsBufferFull = vol_ScaleToLevel(v117, v116, v102);
      if (IsBufferFull)
      {
        goto LABEL_136;
      }

      __dstb = v116 / v132;
      IsBufferFull = siren_common_synth_SetCurFrameCount(a1, v116 / v132 + CurFrameCount);
      if (IsBufferFull)
      {
        goto LABEL_136;
      }

      v118 = siren_common_synth_SetCurSampleCount(a1, __srca);
      v38 = v148;
      if (v118 || (cstdlib_memcpy(v130, (*(v109 + 24) + 2 * v116), 2 * (*(v109 + 20) - v116)), v147 = v116, (v118 = vol_ScaleToLevel(v130, *(v109 + 20) - v116, v102)) != 0))
      {
        v90 = v118;
        v28 = v149;
        goto LABEL_96;
      }

      v119 = *(v149 + v103 + 16) - __dstb;
      v120 = *(v109 + 20) - v116;
      if (v144 < v97)
      {
        v121 = (v109 + 72);
        v122 = v97 - v144;
        do
        {
          cstdlib_memcpy(&v130[2 * v120], *v121, 2 * *(v121 - 1));
          IsBufferFull = vol_ScaleToLevel(&v130[2 * v120], *(v121 - 1), v137);
          if (IsBufferFull)
          {
            goto LABEL_136;
          }

          v119 += *(v121 - 2);
          v120 += *(v121 - 1);
          v121 += 6;
        }

        while (--v122);
      }

      IsBufferFull = siren_common_synth_SetIsBufferFull(a1, 1u);
      if (IsBufferFull || (IsBufferFull = siren_common_synth_SetLeftSamples(a1, v120)) != 0 || (IsBufferFull = siren_common_synth_SetLeftFrames(a1, v119)) != 0 || (IsBufferFull = siren_common_synth_SetUsedLeftFrames(a1, 0)) != 0)
      {
LABEL_136:
        v90 = IsBufferFull;
LABEL_137:
        v38 = v148;
        v28 = v149;
        goto LABEL_96;
      }

      v105 = __dstb + v134;
      v104 += v147;
      siren_common_synth_SetUsedLeftSamples(a1, 0);
      v123 = *(v128 + 32);
      LeftFrames = siren_common_synth_GetLeftFrames(a1);
      log_OutText(v123, "SYNTH_BET6", 3, 0, "New leftover buffer for current frame (%d samples)", v125, v126, v127, LeftFrames);
    }

    else
    {
      v105 = 0;
      v104 = 0;
    }

LABEL_123:
    v114 = siren_common_synth_SetFeedFrames(a1, v105);
    if (!v114)
    {
      v114 = siren_common_synth_SetFeedFrames(a1, v104);
    }

    v90 = v114;
    v38 = v148;
    v28 = v149;
    goto LABEL_96;
  }

  v10 = siren_common_synth_GetCurSampleCount(a1);
  v11 = siren_common_synth_GetCurFrameCount(a1);
  UsedLeftFrames = siren_common_synth_GetUsedLeftFrames(a1);
  v13 = siren_common_synth_GetLeftFrames(a1);
  UsedLeftSamples = siren_common_synth_GetUsedLeftSamples(a1);
  v15 = *(NnInfo + 24);
  v16 = siren_common_synth_GetLeftSamples(a1);
  v17 = siren_common_synth_GetBufSamplesCount(a1);
  v18 = siren_common_synth_GetPcmBuffer(a1);
  v19 = siren_common_synth_GetLeftPcmBuffer(a1);
  v20 = v16 - UsedLeftSamples;
  if (v20 >= v17)
  {
    v88 = v17 - v10;
    cstdlib_memcpy((v18 + 2 * v10), (v19 + 2 * UsedLeftSamples), 2 * (v17 - v10));
    v6 = siren_common_synth_SetCurSampleCount(a1, v17);
    if (!v6)
    {
      v6 = siren_common_synth_SetCurFrameCount(a1, v88 / v15 + v11);
      if (!v6)
      {
        v6 = siren_common_synth_SetFeedFrames(a1, v88 / v15);
        if (!v6)
        {
          v6 = siren_common_synth_SetUsedLeftFrames(a1, v88 / v15 + UsedLeftFrames);
          if (!v6)
          {
            v6 = siren_common_synth_SetFeedSamples(a1, v88 / v15);
            if (!v6)
            {
              v6 = siren_common_synth_SetUsedLeftSamples(a1, v88 + UsedLeftSamples);
              if (!v6)
              {
                v21 = 1;
                goto LABEL_130;
              }
            }
          }
        }
      }
    }

    return v6 | 0x84E02000;
  }

  cstdlib_memcpy((v18 + 2 * v10), (v19 + 2 * UsedLeftSamples), 2 * v20);
  v6 = siren_common_synth_SetCurSampleCount(a1, v20 + v10);
  if (v6)
  {
    return v6 | 0x84E02000;
  }

  v6 = siren_common_synth_SetCurFrameCount(a1, v11 - UsedLeftFrames + v13);
  if (v6)
  {
    return v6 | 0x84E02000;
  }

  v6 = siren_common_synth_SetFeedFrames(a1, v13 - UsedLeftFrames);
  if (v6)
  {
    return v6 | 0x84E02000;
  }

  v6 = siren_common_synth_SetFeedSamples(a1, v20);
  if (v6)
  {
    return v6 | 0x84E02000;
  }

  v6 = siren_common_synth_SetLeftFrames(a1, 0);
  if (v6)
  {
    return v6 | 0x84E02000;
  }

  v6 = siren_common_synth_SetUsedLeftFrames(a1, 0);
  if (v6)
  {
    return v6 | 0x84E02000;
  }

  v6 = siren_common_synth_SetLeftSamples(a1, 0);
  if (v6)
  {
    return v6 | 0x84E02000;
  }

  v6 = siren_common_synth_SetUsedLeftSamples(a1, 0);
  if (v6)
  {
    return v6 | 0x84E02000;
  }

  v21 = 0;
LABEL_130:
  v90 = siren_common_synth_SetIsBufferFull(a1, v21);
LABEL_102:
  if (v90)
  {
    return v90 | 0x84E02000;
  }

  else
  {
    return 0;
  }
}

uint64_t new_siren_nn_synth_Process(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v75 = *MEMORY[0x277D85DE8];
  LeftSamplesCount = siren_common_synth_GetLeftSamplesCount(a1);
  BufSamplesCount = siren_common_synth_GetBufSamplesCount(a1);
  FramesCount = siren_common_synth_GetFramesCount(a1);
  RatePct = siren_common_synth_GetRatePct(a1);
  LeftAcousticBuffer = siren_common_synth_GetLeftAcousticBuffer(a1);
  Frames = siren_common_synth_GetFrames(a1);
  Voice = siren_common_synth_GetVoice(a1);
  PcmBuffer = siren_common_synth_GetPcmBuffer(a1);
  LeftPcmBuffer = siren_common_synth_GetLeftPcmBuffer(a1);
  Rsrc = siren_common_synth_GetRsrc(a1);
  FrameSamples = siren_common_synth_GetFrameSamples(a1);
  result = 7;
  if (a3 >= a2 && a1 && FramesCount > a2 && FramesCount > a3)
  {
    __n = 2 * LeftSamplesCount;
    v63 = ((RatePct / 100.0) * FrameSamples);
    v64 = LeftSamplesCount;
    v56 = a3;
    v55 = LeftSamplesCount;
    v58 = BufSamplesCount;
    v57 = LeftAcousticBuffer;
    v59 = Voice;
    v60 = Frames;
    if (!LeftSamplesCount)
    {
      goto LABEL_9;
    }

LABEL_6:
    if (BufSamplesCount < LeftSamplesCount)
    {
      IsBufferFull = 18;
      return IsBufferFull | 0x84E02000;
    }

    if (cstdlib_memcmp(LeftAcousticBuffer, (Frames + 4 * *(Voice + 9204) * a2), 4 * *(Voice + 9204)))
    {
      log_OutText(*(Rsrc + 32), "SYNTH_BET6", 1, 0, "Disregard leftover buffer for current frame (%d samples)", v15, v16, v17, v64);
    }

    else
    {
      cstdlib_memcpy(PcmBuffer, LeftPcmBuffer, __n);
      CurFrameCount = siren_common_synth_GetCurFrameCount(a1);
      IsBufferFull = siren_common_synth_SetCurFrameCount(a1, CurFrameCount + 1);
      if (IsBufferFull)
      {
        return IsBufferFull | 0x84E02000;
      }

      CurSampleCount = siren_common_synth_GetCurSampleCount(a1);
      IsBufferFull = siren_common_synth_SetCurSampleCount(a1, CurSampleCount + LeftSamplesCount);
      if (IsBufferFull)
      {
        return IsBufferFull | 0x84E02000;
      }

      log_OutText(*(Rsrc + 32), "SYNTH_BET6", 3, 0, "Leftover buffer match current frame (%d samples)", v43, v44, v45, LeftSamplesCount);
    }

    IsBufferFull = siren_common_synth_SetLeftSamplesCount(a1, 0);
    if (IsBufferFull)
    {
      return IsBufferFull | 0x84E02000;
    }

    while (a2 != a3)
    {
      ++a2;
      if (LeftSamplesCount)
      {
        goto LABEL_6;
      }

LABEL_9:
      if (siren_common_synth_GetCurSampleCount(a1) + v63 > BufSamplesCount)
      {
        IsBufferFull = siren_common_synth_SetIsBufferFull(a1, 1u);
        if (IsBufferFull)
        {
          return IsBufferFull | 0x84E02000;
        }

        return 0;
      }

      v73 = 0;
      siren_common_synth_GetFrameSamples(a1);
      v69 = siren_common_synth_GetRatePct(a1);
      v18 = siren_common_synth_GetCurSampleCount(a1);
      v66 = siren_common_synth_GetCurFrameCount(a1);
      v67 = siren_common_synth_GetBufSamplesCount(a1);
      v65 = siren_common_synth_GetLeftSamplesCount(a1);
      VolumeLevel = siren_common_synth_GetVolumeLevel(a1);
      NnInfo = siren_common_synth_GetNnInfo(a1);
      v20 = siren_common_synth_GetFrames(a1);
      v21 = siren_common_synth_GetVoice(a1);
      v22 = siren_common_synth_GetPcmBuffer(a1);
      v23 = siren_common_synth_GetLeftPcmBuffer(a1);
      v24 = siren_common_synth_GetRsrc(a1);
      v25 = siren_common_synth_GetLeftAcousticBuffer(a1);
      v72 = ((v69 / 100.0) * *(NnInfo + 24));
      IsBufferFull = fi_net_update_param(*(NnInfo + 8));
      if (IsBufferFull)
      {
        return IsBufferFull | 0x84E02000;
      }

      v71 = v20 + 4 * *(v21 + 9204) * a2;
      IsBufferFull = fi_net_predict_notfree_input(*(NnInfo + 8), &v71, 1, &v73, v27, v28, v29, v30);
      if (IsBufferFull)
      {
        return IsBufferFull | 0x84E02000;
      }

      v31 = v72;
      if (v72 + v18 <= v67)
      {
        v33 = v24;
        if (v72)
        {
          v46 = v73;
          v47 = v18;
          v48 = v72;
          do
          {
            v49 = *v46++;
            *(v22 + 2 * v47++) = v49;
            --v48;
          }

          while (v48);
        }

        v50 = v18;
        vol_ScaleToLevel((v22 + 2 * v18), v31, VolumeLevel);
        IsBufferFull = siren_common_synth_SetCurFrameCount(a1, v66 + 1);
        a3 = v56;
        LeftSamplesCount = v55;
        Voice = v59;
        Frames = v60;
        if (IsBufferFull)
        {
          return IsBufferFull | 0x84E02000;
        }

        IsBufferFull = siren_common_synth_SetCurSampleCount(a1, v72 + v50);
        BufSamplesCount = v58;
        LeftAcousticBuffer = v57;
        if (IsBufferFull)
        {
          return IsBufferFull | 0x84E02000;
        }
      }

      else
      {
        cstdlib_memcpy(v25, (v20 + 4 * *(v21 + 9204) * a2), 4 * *(v21 + 9204));
        v32 = v72;
        v33 = v24;
        if (v72)
        {
          v34 = v73;
          v35 = v23;
          v36 = v72;
          do
          {
            v37 = *v34++;
            *v35++ = v37;
            --v36;
          }

          while (v36);
        }

        vol_ScaleToLevel(v23, v32, VolumeLevel);
        IsBufferFull = siren_common_synth_SetIsBufferFull(a1, 1u);
        BufSamplesCount = v58;
        LeftAcousticBuffer = v57;
        Voice = v59;
        Frames = v60;
        if (IsBufferFull)
        {
          return IsBufferFull | 0x84E02000;
        }

        IsBufferFull = siren_common_synth_SetLeftSamplesCount(a1, v72);
        if (IsBufferFull)
        {
          return IsBufferFull | 0x84E02000;
        }

        log_OutText(*(v33 + 32), "SYNTH_BET6", 3, 0, "New leftover buffer for current frame (%d samples)", v38, v39, v40, v65);
        a3 = v56;
        LeftSamplesCount = v55;
      }

      if (log_GetLogLevel(*(v33 + 32)) >= 3)
      {
        siren_compute_stream_hash(v73, 2 * v72, v74);
        log_OutText(*(v33 + 32), "SYNTH_BET6", 3, 0, "SYNTH_PCM_BUFFER_MD5=%s", v51, v52, v53, v74);
      }

      if (siren_common_synth_GetIsBufferFull(a1))
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t siren_nn_seq2seq_synth_Process(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  FramesCount = siren_common_synth_GetFramesCount(a1);
  Voice = siren_common_synth_GetVoice(a1);
  result = 2229280775;
  v11 = a4 - a3;
  if (a4 >= a3 && a1 && FramesCount > a3 && FramesCount > a4)
  {
    v12 = v11 + 1;
    if (*(Voice + 9124))
    {
      v82 = 0;
      FrameSamples = siren_common_synth_GetFrameSamples(a1);
      CurSampleCount = siren_common_synth_GetCurSampleCount(a1);
      v71 = siren_common_synth_GetFrameSamples(a1);
      CurFrameCount = siren_common_synth_GetCurFrameCount(a1);
      BufSamplesCount = siren_common_synth_GetBufSamplesCount(a1);
      NnInfo = siren_common_synth_GetNnInfo(a1);
      Frames = siren_common_synth_GetFrames(a1);
      v15 = siren_common_synth_GetVoice(a1);
      PcmBuffer = siren_common_synth_GetPcmBuffer(a1);
      v17 = *Frames;
      v81 = &Frames[*(v15 + 9204) * a3 + 3];
      if (v17 == 0.0)
      {
        v18 = heap_Calloc(*(a2 + 8), 1, 88);
        if (v18)
        {
          v19 = v18;
          *v18 = 1;
          *(v18 + 4) = (v17 + 0.1);
          *&v20 = 0x8000000080;
          *(&v20 + 1) = 0x8000000080;
          *(v18 + 64) = v20;
          *(v18 + 80) = 0;
          v21 = heap_Alloc(*(a2 + 8), 512);
          v19[1] = v21;
          if (!v21 || (v19[2] = (v21 + 128), v19[3] = (v21 + 256), v19[4] = (v21 + 384), v22 = heap_Alloc(*(a2 + 8), 1536), (v19[5] = v22) == 0) || (v23 = heap_Alloc(*(a2 + 8), 1536), (v19[6] = v23) == 0) || (v24 = heap_Alloc(*(a2 + 8), 160), (v19[7] = v24) == 0))
          {
            v48 = 10;
LABEL_35:
            v49 = v19[1];
            if (v49)
            {
              heap_Free(*(a2 + 8), v49);
            }

            v50 = v19[5];
            if (v50)
            {
              heap_Free(*(a2 + 8), v50);
            }

            v51 = v19[6];
            if (v51)
            {
              heap_Free(*(a2 + 8), v51);
            }

            v52 = v19[7];
            if (!v52)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

          cstdlib_memset(v19[1], 0, 0x200uLL);
          cstdlib_memset(v19[5], 0, 0x600uLL);
          cstdlib_memset(v19[6], 0, 0x600uLL);
          cstdlib_memset(v19[7], 0, 0xA0uLL);
          fi_net_update_param(*(NnInfo + 8));
          if (v12 <= 2)
          {
            v29 = 0;
          }

          else
          {
            v29 = v11 - 1;
          }

          v30 = v11 + 1;
          goto LABEL_81;
        }

LABEL_74:
        v48 = 10;
        goto LABEL_96;
      }

      if (v17 == 1.0 || v17 == 2.0 || v17 == 5.0)
      {
        v56 = heap_Calloc(*(a2 + 8), 1, 88);
        if (!v56)
        {
          goto LABEL_74;
        }

        v19 = v56;
        *v56 = 1;
        *(v56 + 4) = (v17 + 0.1);
        *(v56 + 8) = 0u;
        *(v56 + 24) = 0u;
        *(v56 + 40) = 0u;
        *(v56 + 56) = 0;
        fi_net_update_param(*(NnInfo + 8));
        if (v17 == 1.0)
        {
          if (v12 <= 4)
          {
            v29 = 0;
          }

          else
          {
            v29 = v11 - 3;
          }

          v57 = v11 - 1;
        }

        else
        {
          v57 = v11 - 1;
          if (v12 <= 2)
          {
            v29 = 0;
          }

          else
          {
            v29 = v11 - 1;
          }
        }

        if (v12 <= 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = v57;
        }

        goto LABEL_81;
      }

      if (v17 == 6.0 || v17 == 4.0 || v17 == 3.0)
      {
        v47 = heap_Calloc(*(a2 + 8), 1, 88);
        if (!v47)
        {
          goto LABEL_74;
        }

        v19 = v47;
        *v47 = 0;
        *(v47 + 4) = (v17 + 0.1);
        *(v47 + 8) = 0u;
        *(v47 + 24) = 0u;
        *(v47 + 40) = 0u;
        *(v47 + 56) = 0;
        fi_net_update_param(*(NnInfo + 8));
        v30 = v11 + 1;
        v29 = v11 + 1;
LABEL_81:
        v48 = fi_net_predict_notfree_input(*(NnInfo + 8), &v81, v11 + 1, &v82, v25, v26, v27, v28);
        if (!v48)
        {
          v61 = v30 * FrameSamples;
          if (v61 + CurSampleCount <= BufSamplesCount)
          {
            if (v61)
            {
              v62 = v82;
              v63 = CurSampleCount;
              do
              {
                v64 = *v62++;
                *(PcmBuffer + 2 * v63++) = v64;
                --v61;
              }

              while (v61);
            }

            v65 = siren_common_synth_SetCurFrameCount(a1, v29 + CurFrameCount);
            if (v65)
            {
              v48 = v65;
            }

            else
            {
              v48 = siren_common_synth_SetCurSampleCount(a1, v29 * v71 + CurSampleCount);
              if (!v48)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            v48 = 9;
          }

          goto LABEL_35;
        }

LABEL_96:
        if (v48)
        {
          return v48 | 0x84E02000;
        }

        else
        {
          return 0;
        }
      }

LABEL_49:
      v48 = 7;
      goto LABEL_96;
    }

    v82 = 0;
    v78 = siren_common_synth_GetFrameSamples(a1);
    v72 = siren_common_synth_GetFrameSamples(a1);
    v80 = siren_common_synth_GetCurSampleCount(a1);
    v74 = siren_common_synth_GetCurFrameCount(a1);
    v76 = siren_common_synth_GetBufSamplesCount(a1);
    v31 = siren_common_synth_GetNnInfo(a1);
    v32 = siren_common_synth_GetFrames(a1);
    v33 = siren_common_synth_GetVoice(a1);
    v34 = siren_common_synth_GetPcmBuffer(a1);
    v35 = *v32;
    v81 = &v32[*(v33 + 9204) * a3 + 3];
    if (v35 == 0.0)
    {
      v36 = heap_Alloc(*(a2 + 8), 48);
      if (!v36)
      {
        goto LABEL_74;
      }

      v19 = v36;
      *v36 = 1;
      *(v36 + 4) = (v35 + 0.1);
      *(v36 + 40) = 128;
      v37 = heap_Alloc(*(a2 + 8), 128);
      v19[1] = v37;
      if (!v37 || (v38 = heap_Alloc(*(a2 + 8), 1536), (v19[2] = v38) == 0) || (v39 = heap_Alloc(*(a2 + 8), 1536), (v19[3] = v39) == 0) || (v40 = heap_Alloc(*(a2 + 8), 160), (v19[4] = v40) == 0))
      {
        v48 = 10;
        goto LABEL_51;
      }

      cstdlib_memset(v19[1], 0, 0x80uLL);
      cstdlib_memset(v19[2], 0, 0x600uLL);
      cstdlib_memset(v19[3], 0, 0x600uLL);
      cstdlib_memset(v19[4], 0, 0xA0uLL);
      fi_net_update_param(*(v31 + 8));
      if (v12 <= 2)
      {
        v45 = 0;
      }

      else
      {
        v45 = v11 - 1;
      }

      v46 = v11 + 1;
    }

    else if (v35 == 1.0 || v35 == 2.0 || v35 == 5.0)
    {
      v58 = heap_Alloc(*(a2 + 8), 48);
      if (!v58)
      {
        goto LABEL_74;
      }

      v19 = v58;
      *v58 = 1;
      *(v58 + 4) = (v35 + 0.1);
      *(v58 + 8) = 0u;
      *(v58 + 24) = 0u;
      fi_net_update_param(*(v31 + 8));
      if (v35 == 1.0)
      {
        if (v12 <= 4)
        {
          v45 = 0;
        }

        else
        {
          v45 = v11 - 3;
        }

        v59 = v11 - 1;
      }

      else
      {
        v59 = v11 - 1;
        if (v12 <= 2)
        {
          v45 = 0;
        }

        else
        {
          v45 = v11 - 1;
        }
      }

      if (v12 <= 2)
      {
        v46 = 0;
      }

      else
      {
        v46 = v59;
      }
    }

    else
    {
      if (v35 != 6.0 && v35 != 4.0 && v35 != 3.0)
      {
        goto LABEL_49;
      }

      v60 = heap_Alloc(*(a2 + 8), 48);
      if (!v60)
      {
        goto LABEL_74;
      }

      v19 = v60;
      *v60 = 0;
      *(v60 + 4) = (v35 + 0.1);
      *(v60 + 8) = 0u;
      *(v60 + 24) = 0u;
      fi_net_update_param(*(v31 + 8));
      v46 = v11 + 1;
      v45 = v11 + 1;
    }

    v48 = fi_net_predict_notfree_input(*(v31 + 8), &v81, v11 + 1, &v82, v41, v42, v43, v44);
    if (v48)
    {
      goto LABEL_96;
    }

    v66 = v46 * v78;
    if (v66 + v80 <= v76)
    {
      if (v66)
      {
        v67 = v82;
        v68 = v80;
        do
        {
          v69 = *v67++;
          *(v34 + 2 * v68++) = v69;
          --v66;
        }

        while (v66);
      }

      v70 = siren_common_synth_SetCurFrameCount(a1, v45 + v74);
      if (v70)
      {
        v48 = v70;
      }

      else
      {
        v48 = siren_common_synth_SetCurSampleCount(a1, v45 * v72 + v80);
        if (!v48)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      v48 = 9;
    }

LABEL_51:
    v53 = v19[1];
    if (v53)
    {
      heap_Free(*(a2 + 8), v53);
    }

    v54 = v19[2];
    if (v54)
    {
      heap_Free(*(a2 + 8), v54);
    }

    v55 = v19[3];
    if (v55)
    {
      heap_Free(*(a2 + 8), v55);
    }

    v52 = v19[4];
    if (!v52)
    {
      goto LABEL_59;
    }

LABEL_58:
    heap_Free(*(a2 + 8), v52);
LABEL_59:
    heap_Free(*(a2 + 8), v19);
    goto LABEL_96;
  }

  return result;
}

uint64_t siren_nn_parallel_synth_Process(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  FramesCount = siren_common_synth_GetFramesCount(a1);
  result = 2229280775;
  v10 = a4 - a3;
  if (a4 >= a3 && a1 && FramesCount > a3 && FramesCount > a4)
  {
    v41 = 0;
    FrameSamples = siren_common_synth_GetFrameSamples(a1);
    CurSampleCount = siren_common_synth_GetCurSampleCount(a1);
    CurFrameCount = siren_common_synth_GetCurFrameCount(a1);
    BufSamplesCount = siren_common_synth_GetBufSamplesCount(a1);
    NnInfo = siren_common_synth_GetNnInfo(a1);
    Frames = siren_common_synth_GetFrames(a1);
    Voice = siren_common_synth_GetVoice(a1);
    PcmBuffer = siren_common_synth_GetPcmBuffer(a1);
    v16 = v10 + 1;
    v17 = *Frames;
    v40 = &Frames[*(Voice + 9204) * a3 + 3];
    if (v17 == 0.0)
    {
      v18 = heap_Calloc(*(a2 + 8), 1, 16);
      if (v18)
      {
        v19 = v18;
        *v18 = 1;
        v18[1] = (v17 + 0.1);
        v20 = heap_Calloc(*(a2 + 8), 1, 160);
        *(v19 + 8) = v20;
        if (!v20)
        {
          v28 = 10;
          goto LABEL_40;
        }

        fi_net_update_param(*(NnInfo + 8));
        goto LABEL_18;
      }

LABEL_32:
      v25 = 10;
      return v25 | 0x84E02000;
    }

    if (v17 == 1.0 || v17 == 2.0 || v17 == 5.0)
    {
      v26 = heap_Calloc(*(a2 + 8), 1, 16);
      if (!v26)
      {
        goto LABEL_32;
      }

      v19 = v26;
      *v26 = 1;
      *(v26 + 4) = (v17 + 0.1);
      *(v26 + 8) = 0;
      fi_net_update_param(*(NnInfo + 8));
      if (v17 == 1.0)
      {
LABEL_18:
        if (v16 <= 4)
        {
          v27 = 0;
        }

        else
        {
          v27 = v10 - 3;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v17 != 6.0 && v17 != 4.0 && v17 != 3.0)
      {
        v25 = 7;
        return v25 | 0x84E02000;
      }

      v29 = heap_Calloc(*(a2 + 8), 1, 16);
      if (!v29)
      {
        goto LABEL_32;
      }

      v19 = v29;
      *v29 = 0;
      *(v29 + 4) = (v17 + 0.1);
      *(v29 + 8) = 0;
      fi_net_update_param(*(NnInfo + 8));
    }

    v27 = v10 + 1;
LABEL_25:
    v30 = FrameSamples * v16;
    if (v16 < 5)
    {
      v31 = CurSampleCount;
      if (CurSampleCount + v30 <= BufSamplesCount)
      {
        cstdlib_memset((PcmBuffer + 2 * CurSampleCount), 0, 2 * FrameSamples * v16);
        goto LABEL_37;
      }

LABEL_35:
      v28 = 9;
      goto LABEL_40;
    }

    v25 = fi_net_predict_notfree_input(*(NnInfo + 8), &v40, v10 + 1, &v41, v21, v22, v23, v24);
    if (!v25)
    {
      v31 = CurSampleCount;
      if (CurSampleCount + v30 <= BufSamplesCount)
      {
        if (v30)
        {
          v32 = v41;
          v33 = CurSampleCount;
          do
          {
            v34 = *v32++;
            *(PcmBuffer + 2 * v33++) = v34;
            --v30;
          }

          while (v30);
        }

LABEL_37:
        v35 = siren_common_synth_SetCurFrameCount(a1, v27 + CurFrameCount);
        if (v35)
        {
          v28 = v35;
        }

        else
        {
          v28 = siren_common_synth_SetCurSampleCount(a1, v27 * FrameSamples + v31);
          if (!v28)
          {
LABEL_42:
            heap_Free(*(a2 + 8), v19);
            if (v28)
            {
              return v28 | 0x84E02000;
            }

            else
            {
              return 0;
            }
          }
        }

LABEL_40:
        v36 = *(v19 + 8);
        if (v36)
        {
          heap_Free(*(a2 + 8), v36);
        }

        goto LABEL_42;
      }

      goto LABEL_35;
    }

    return v25 | 0x84E02000;
  }

  return result;
}

uint64_t thread_infer_func(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if (v8 < 1)
  {
    return 0;
  }

  else
  {
    return fi_net_predict_notfree_input(*a1, (a1 + 8), v8, (a1 + 40), a5, a6, a7, a8);
  }
}

uint64_t SampleChunk_alloc(uint64_t a1, uint64_t *a2)
{
  v3 = heap_Calloc(*(a1 + 8), 1, 32);
  if (!v3)
  {
    return 2229280778;
  }

  v4 = v3;
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t SampleChunk_free(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    heap_Free(*(a1 + 8), a2);
  }

  return 0;
}

uint64_t SampleChunk_init(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, uint64_t a8, uint64_t a9)
{
  v23 = 0;
  v22 = 0;
  result = (*(a4 + 88))(a5, a6, &v23, &v22);
  if ((result & 0x80000000) == 0)
  {
    v21 = v23 + 4 * a3;
    *(a9 + 16) = v23;
    *(a9 + 24) = v21;
    if (8 * a3 == v22)
    {
      result = (*(a4 + 96))(a5, a6);
      if ((result & 0x80000000) == 0)
      {
        *(a9 + 8) = a7;
        *a9 = a2;
        *(a9 + 4) = a3;
      }
    }

    else
    {
      log_OutText(*(a1 + 32), "SYNTH_BET6", 4, 0, "Read ThreadChunk start and end index from stream failed!, wanted bytes: %d, but available bytes in stream: %d", v18, v19, v20, 8 * a3);
      return 2229280775;
    }
  }

  return result;
}

float SampleChunk_getEmissionType(uint64_t a1, float *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 8);
      *a2 = result;
    }
  }

  return result;
}

uint64_t SampleChunk_getThreadChunkIndex(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  result = 2229280775;
  if (a1 && a3 && a4 && *(a1 + 4) > a2)
  {
    result = 0;
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    *a3 = *(v7 + 4 * a2);
    *a4 = *(v6 + 4 * a2);
  }

  return result;
}

uint64_t bet6_synth_Apply_Half_hannWin_Scalar_55(uint64_t a1, int a2)
{
  v2 = 0;
  for (i = 54; i != -1; --i)
  {
    if (a2)
    {
      v4 = i;
    }

    else
    {
      v4 = v2;
    }

    *(a1 + 2 * v2) = (bet6_synth_Apply_Half_hannWin_Scalar_55_half_hann_scalars[v4] * *(a1 + 2 * v2));
    ++v2;
  }

  return 0;
}

uint64_t bet6_synth_Convolve_Float(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 7;
  if (a3 && a1 && a2 && a4)
  {
    v6 = a2 - 1;
    if (a2 - 1 + a4)
    {
      v7 = 0;
      v8 = a4 - 1;
      do
      {
        v9 = 0;
        v10 = v7 - v8;
        if (v7 >= v8)
        {
          v11 = a4 - 1;
        }

        else
        {
          v11 = v7;
        }

        if (v7 < v8)
        {
          v10 = 0;
        }

        if (v7 >= v6)
        {
          v12 = a2 - 1;
        }

        else
        {
          v12 = v7;
        }

        if (v6 >= v10)
        {
          v9 = 0;
          do
          {
            v9 += (*(a3 + 4 * v11--) * *(a1 + 2 * v10++));
          }

          while (v10 <= v12);
        }

        if (v9 <= -32768)
        {
          v9 = -32768;
        }

        if (v9 >= 0x7FFF)
        {
          v9 = 0x7FFF;
        }

        *(a5 + 4 * v7++) = v9;
      }

      while (v7 != a2 - 1 + a4);
    }

    return 0;
  }

  return v5;
}

uint64_t bet6_synth_Convolve(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 7;
  if (a3 && a1 && a2 && a4)
  {
    v6 = a2 - 1;
    if (a2 - 1 + a4)
    {
      v7 = 0;
      v8 = a4 - 1;
      do
      {
        v9 = 0;
        v10 = v7 - v8;
        if (v7 >= v8)
        {
          v11 = a4 - 1;
        }

        else
        {
          v11 = v7;
        }

        if (v7 < v8)
        {
          v10 = 0;
        }

        if (v7 >= v6)
        {
          v12 = a2 - 1;
        }

        else
        {
          v12 = v7;
        }

        if (v6 >= v10)
        {
          v9 = 0;
          do
          {
            v9 += *(a3 + 2 * v11--) * *(a1 + 2 * v10++);
          }

          while (v10 <= v12);
        }

        if (v9 <= -32768)
        {
          v9 = -32768;
        }

        if (v9 >= 0x7FFF)
        {
          v9 = 0x7FFF;
        }

        *(a5 + 4 * v7++) = v9;
      }

      while (v7 != a2 - 1 + a4);
    }

    return 0;
  }

  return v5;
}

uint64_t bet6_synth_Convolve_ReverseKernel(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 7;
  if (a3 && a1 && a2 && a4)
  {
    v6 = a2 - 1;
    if (a2 - 1 + a4)
    {
      v7 = 0;
      v8 = a4 - 1;
      do
      {
        v9 = v7 - v8;
        if (v7 >= v8)
        {
          v10 = a4 - 1;
        }

        else
        {
          v10 = v7;
        }

        if (v7 < v8)
        {
          v9 = 0;
        }

        *(a5 + 4 * v7) = 0;
        if (v7 >= v6)
        {
          v11 = a2 - 1;
        }

        else
        {
          v11 = v7;
        }

        if (v6 >= v9)
        {
          v12 = 0;
          v13 = v8 - v10;
          do
          {
            v12 += *(a3 + 2 * v13++) * *(a1 + 2 * v9++);
          }

          while (v9 <= v11);
          *(a5 + 4 * v7) = v12;
        }

        ++v7;
      }

      while (v7 != a2 - 1 + a4);
    }

    return 0;
  }

  return v5;
}

uint64_t bet6_synth_OverlapAdd(__int16 *a1, __int16 *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v4 = *a2++;
      v5 = *a1 + v4;
      if (v5 >= 0x7FFF)
      {
        v5 = 0x7FFF;
      }

      if (v5 <= -32768)
      {
        LOWORD(v5) = 0x8000;
      }

      *a1++ = v5;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t bet6_apply_fir_same_mode(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  result = bet6_synth_Convolve_Float(a1, a2, a3, a4, a5);
  if (!result && a2)
  {
    v10 = 0;
    v11 = (a5 + 4 * (a4 >> 1));
    do
    {
      v12 = *v11++;
      *(a1 + 2 * v10++) = v12;
    }

    while (a2 > v10);
  }

  return result;
}

uint64_t compquery_GetProductList(uint64_t a1, int a2, char *a3, int *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 348, 64);
  if ((v7 & 0x80000000) != 0)
  {
    return 2303729672;
  }

  v11 = v7;
  v12 = *(a1 + 16);
  log_OutText(*(v12 + 32), "COMPQUERY", 4, 0, "Get Product List : Begin", v8, v9, v10, v19);
  if (!a4)
  {
    log_OutPublic(*(v12 + 32), "COMPQUERY", 23006, 0, v13, v14, v15, v16, v20);
    return 2303729671;
  }

  v17 = *a4;
  *a4 = 1;
  if (!a3 || !v17)
  {
    goto LABEL_7;
  }

  __sprintf_chk(a3, 0, 0x40uLL, "Vocalizer v%d.%d", 7, 4);
  v11 = strhelper_SafeCpy(a3 + 64, "eng/vocalizer", 0xFFFFFFFFFFFFFFFFLL, 0x20uLL);
  if ((v11 & 0x80000000) == 0)
  {
    sprintf(a3 + 96, "%d.%d.%d", 7, 4, 0);
LABEL_7:
    log_OutText(*(v12 + 32), "COMPQUERY", 4, 0, "Get Product List : End (%x, %u)", v14, v15, v16, v11);
  }

  return v11;
}

uint64_t compquery_GetCLMInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = 2303729671;
  v46 = 0;
  bzero(v50, 0x800uLL);
  strcpy(v45, "CLMP");
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  if ((safeh_HandleCheck(a1, a2, 348, 64) & 0x80000000) != 0)
  {
    return 2303729672;
  }

  v14 = *(a1 + 16);
  log_OutText(*(v14 + 32), "COMPQUERY", 4, 0, "GetCLMInfo : Begin (%s, %s)", v11, v12, v13, a3);
  if (a3 && a4)
  {
    v19 = brk_ObjOpen(a3, *(a1 + 24));
    if ((v19 & 0x80000000) != 0)
    {
      v10 = v19;
      log_OutPublic(*(v14 + 32), "COMPQUERY", 23008, "%s%s%s%x", v20, v21, v22, v23, "product");
    }

    else
    {
      v24 = strhelper_SafeCpy(v50, "clm", 0xFFFFFFFFFFFFFFFFLL, 0x800uLL);
      if ((v24 & 0x80000000) != 0)
      {
        return v24;
      }

      else
      {
        StringZ = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 2, v50, v45, 1031, &v42);
        if ((StringZ & 0x80000000) == 0)
        {
          do
          {
            if ((ssftriff_reader_OpenChunk(v42, &v43, &v40, &v41) & 0x80000000) != 0)
            {
              break;
            }

            strcpy(__s, "source_version");
            strcpy(v47, "file_version");
            v39 = 2048;
            StringZ = ssftriff_reader_ReadStringZ(v42, v41, v40, 0, __s1, &v39);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_27;
            }

            v33 = cstdlib_strstr(__s1, "clmcfg");
            v34 = v39;
            if (v33 && (v39 & 3) != 0)
            {
              v34 = v39 - (v39 | 0xFFFFFFFC);
              v39 = v34;
            }

            while (v34 < v40)
            {
              __s1[0] = 0;
              v39 = 2048;
              LODWORD(v10) = ssftriff_reader_ReadStringZ(v42, v41, v40, v34, __s1, &v39);
              v35 = cstdlib_strlen(__s);
              if (!cstdlib_strncmp(__s, __s1, v35))
              {
                v10 = strhelper_SafeCpy(a5 + 64, __s1, 0xFFFFFFFFFFFFFFFFLL, 0x800uLL);
                if ((v10 & 0x80000000) != 0)
                {
                  return v10;
                }

                a5[cstdlib_strlen(__s1) + 62] = 0;
              }

              v36 = cstdlib_strlen(v47);
              if (!cstdlib_strncmp(v47, __s1, v36))
              {
                v10 = strhelper_SafeCpy(a5, __s1, 0xFFFFFFFFFFFFFFFFLL, 0x40uLL);
                if ((v10 & 0x80000000) != 0)
                {
                  return v10;
                }

                a5[cstdlib_strlen(__s1) - 1] = 0;
              }

              if (!LH_strnicmp(a4 + 64, __s1, 3uLL))
              {
                v24 = strhelper_SafeCpy(a5 + 2112, __s1, 0xFFFFFFFFFFFFFFFFLL, 0x800uLL);
                if ((v24 & 0x80000000) != 0)
                {
                  return v24;
                }

                a5[cstdlib_strlen(__s1) + 2111] = 0;
                break;
              }

              if ((v10 & 0x80000000) != 0)
              {
                break;
              }

              v34 += v39;
            }

            StringZ = ssftriff_reader_CloseChunk(v42);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_27;
            }
          }

          while (!v33);
          StringZ = ssftriff_reader_ObjClose(v42, v29, v30, v31, v32, v26, v27, v28);
        }

LABEL_27:
        v10 = StringZ;
        if (v46)
        {
          brk_ObjClose(v46);
        }

        log_OutText(*(v14 + 32), "COMPQUERY", 4, 0, "GetCLMInfo : End (%x)", v26, v27, v28, v10);
      }
    }
  }

  else
  {
    log_OutPublic(*(v14 + 32), "COMPQUERY", 23013, 0, v15, v16, v17, v18, v38);
  }

  return v10;
}

uint64_t compquery_GetNTSInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v43 = 0;
  v9 = 2303729671;
  v38 = 0;
  memset(__n, 0, sizeof(__n));
  if ((safeh_HandleCheck(a1, a2, 348, 64) & 0x80000000) != 0)
  {
    return 2303729672;
  }

  *__src = 0u;
  v42 = 0u;
  __b = 0u;
  v40 = 0u;
  v13 = *(a1 + 16);
  log_OutText(*(v13 + 32), "COMPQUERY", 4, 0, "GetNTSInfoList : Begin (%s, %s)", v10, v11, v12, a3);
  if (!a3 || !a4)
  {
    log_OutPublic(*(v13 + 32), "COMPQUERY", 23013, 0, v14, v15, v16, v17, v34);
    return v9;
  }

  v36 = 0;
  v35 = 0;
  v18 = brk_ObjOpen(a3, *(a1 + 24));
  if ((v18 & 0x80000000) != 0)
  {
    v32 = v18;
    log_OutPublic(*(v13 + 32), "COMPQUERY", 23008, "%s%s%s%x", v19, v20, v21, v22, "product");
    return v32;
  }

  cstdlib_memset(&__b, 0, 0x40uLL);
  set_DctBrk(&__b, v44);
  DctRom = open_DctRom(&__b, "sysdct", &v43);
  if ((DctRom & 0x80000000) != 0 || (DctRom = brk_DataOpenEx(v44, "sysdct", 1, &v38), (DctRom & 0x80000000) != 0) || (DctRom = query_DctRom(&__b, "ntscfg", v43, v38, &__n[3]), (DctRom & 0x80000000) != 0))
  {
    v28 = 0;
    goto LABEL_20;
  }

  v27 = heap_Calloc(*(v13 + 8), 1, 144);
  v28 = v27;
  if (!v27)
  {
    goto LABEL_35;
  }

  *&v40 = v27;
  DctRom = init_DctRom(&__b, "ntscfg", v43, v38);
  if ((DctRom & 0x80000000) != 0 && (DctRom & 0x1FFF) != 0x14)
  {
LABEL_20:
    v9 = DctRom;
    goto LABEL_21;
  }

  MaxOutLen = GetMaxOutLen(&__b);
  GetFieldSeparator(&__b);
  if (MaxOutLen)
  {
    __src[1] = heap_Calloc(*(v13 + 8), 1, MaxOutLen + 1);
    if (__src[1])
    {
      __n[2] = 0;
      __n[0] = 0;
      v30 = cstdlib_strlen("nts_");
      DctRom = strhelper_SafeCpy(__s, "nts_", v30, 8uLL);
      if ((DctRom & 0x80000000) == 0)
      {
        v31 = cstdlib_strlen((a4 + 64));
        DctRom = strhelper_SafeCat(__s, (a4 + 64), v31, 8uLL);
        if ((DctRom & 0x80000000) == 0)
        {
          __n[1] = cstdlib_strlen(__s) - 1;
          v35 = 0;
          LOWORD(v36) = 0;
          v9 = DctLookup(&__b, __s, &__n[2], &__n[1], 1, __n, &v35);
          if (!v9)
          {
            cstdlib_memcpy(a5, __src[1], __n[0]);
            *(a5 + __n[0]) = 0;
          }

          goto LABEL_21;
        }
      }

      goto LABEL_20;
    }

LABEL_35:
    v9 = 2303729674;
  }

LABEL_21:
  if (v44)
  {
    if (__src[1])
    {
      heap_Free(*(v13 + 8), __src[1]);
    }

    if (v38 && __src[0])
    {
      exit_DctRom(&__b, v38);
    }

    if (v28)
    {
      heap_Free(*(v13 + 8), v28);
    }

    if (v38)
    {
      brk_DataClose(v44, v38);
    }

    close_DctRom(&__b);
    brk_ObjClose(v44);
  }

  log_OutText(*(v13 + 32), "COMPQUERY", 4, 0, "GetNTSInfoList : End (%x)", v24, v25, v26, v9);
  return v9;
}

uint64_t compquery_GetLanguageList(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v85 = *MEMORY[0x277D85DE8];
  v79 = 0;
  v80 = 0;
  v9 = 2303729674;
  v77 = 0;
  v78 = 0;
  __src = 0;
  if ((safeh_HandleCheck(a1, a2, 348, 64) & 0x80000000) != 0)
  {
    return 2303729672;
  }

  v83 = 0u;
  memset(v84, 0, 22);
  memset(__b, 0, sizeof(__b));
  v14 = *(a1 + 16);
  if (!a3 || !a5)
  {
    log_OutPublic(v14[4], "COMPQUERY", 23007, 0, v10, v11, v12, v13, v71);
    return 2303729671;
  }

  v81 = 0;
  log_OutText(v14[4], "COMPQUERY", 4, 0, "Get Language List : Begin (%s)", v11, v12, v13, a3);
  if (*a5)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0;
  }

  v16 = brk_ObjOpen(a3, *(a1 + 24));
  if ((v16 & 0x80000000) != 0)
  {
    v21 = v16;
    log_OutPublic(v14[4], "COMPQUERY", 23008, "%s%s%s%x", v17, v18, v19, v20, "product");
    return v21;
  }
}

uint64_t Vector__Clear(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    bzero(v2, 4 * v3);
  }

  return 0;
}

uint64_t Vector__Create(void *a1, unsigned int a2)
{
  v4 = heap_Calloc(a1, 1, 24);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 12) = 0;
    v6 = heap_Calloc(a1, a2, 4);
    *(v5 + 16) = v6;
    if (v6)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        bzero(v6, 4 * v7);
      }
    }

    else
    {
      heap_Free(a1, v5);
      return 0;
    }
  }

  return v5;
}

uint64_t *Window__Remove(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      heap_Free(**result, *(*result + 16));
      *(*v1 + 16) = 0;
      result = heap_Free(**v1, *v1);
      *v1 = 0;
    }
  }

  return result;
}

void mfs_Vect__Clear(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 12) = 0;
    bzero(*(a1 + 24), 8 * *(a1 + 8));
  }
}

void mfs_Vect__Reset(uint64_t a1)
{
  if (a1)
  {
    bzero(*(a1 + 24), 8 * *(a1 + 8));
  }
}

uint64_t mfs_Vect__Create(uint64_t a1, unsigned int a2)
{
  v4 = heap_Alloc(a1, 40);
  v5 = v4;
  if (v4)
  {
    *(v4 + 4) = 0;
    *(v4 + 8) = a2;
    *(v4 + 12) = 0;
    *(v4 + 16) = 0;
    *v4 = 22050;
    *(v4 + 32) = a1;
    v6 = heap_Alloc(a1, 8 * a2);
    *(v5 + 24) = v6;
    if (v6)
    {
      *(v5 + 12) = 0;
      bzero(v6, 8 * *(v5 + 8));
    }

    else
    {
      heap_Free(*(v5 + 32), v5);
      return 0;
    }
  }

  return v5;
}

uint64_t *mfs_Vect__Remove(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = *(v2 + 24);
      v4 = *(v2 + 32);
      if (v3)
      {
        heap_Free(*(v2 + 32), v3);
        v2 = *v1;
      }

      *(v2 + 24) = 0;
      result = heap_Free(v4, *v1);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t mfs_Vect__Resize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 8) >= a2)
    {
      return 1;
    }

    else
    {
      *(result + 8) = a2;
      v3 = *(result + 32);
      v4 = heap_Realloc(v3, *(result + 24), 8 * a2);
      if (v4)
      {
        v5 = v4;
        result = 1;
      }

      else
      {
        *(v2 + 8) = 0;
        v6 = *(v2 + 24);
        if (v6)
        {
          heap_Free(v3, v6);
        }

        v5 = 0;
        result = 0;
      }

      *(v2 + 24) = v5;
    }
  }

  return result;
}

uint64_t mfs_Vect__GetSlice(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = *(a1 + 12);
  if (v7 <= a2 || v7 <= a3)
  {
    return 0;
  }

  v12 = a3 - a2;
  if (a4 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = -a4;
  }

  v14 = v12 / v13;
  v15 = v12 / v13 + 1;
  v9 = mfs_Vect__Create(*(a1 + 32), v15);
  *(v9 + 12) = v15;
  v16 = *(v9 + 24);
  *v9 = *a1;
  if (a4 == 1)
  {
    cstdlib_memmove(v16, (*(a1 + 24) + 8 * a2), 8 * v15);
  }

  else
  {
    if (a4 >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = -a4;
    }

    if (v17 < 2)
    {
      if (a4 == -1 && v15)
      {
        v20 = (*(a1 + 24) + 8 * a3);
        v21 = v14 + 1;
        do
        {
          v22 = *v20--;
          *v16++ = v22;
          --v21;
        }

        while (v21);
      }
    }

    else if (v15)
    {
      v18 = (*(a1 + 24) + 8 * a2);
      v19 = v14 + 1;
      do
      {
        *v16++ = *v18;
        v18 += a4;
        --v19;
      }

      while (v19);
    }
  }

  return v9;
}

double mfs_Downsample__Create(uint64_t a1)
{
  v2 = heap_Alloc(a1, 56);
  if (v2)
  {
    result = 0.0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    *(v2 + 48) = a1;
  }

  return result;
}

uint64_t mfs_Downsample__Resize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 32) == a2)
    {
      return 1;
    }

    LODWORD(v3) = *(result + 36);
    if (v3 >= a2)
    {
      *(result + 32) = a2;
      if ((v3 & 0x80000000) == 0)
      {
        v13 = *(result + 16);
        v14 = -1;
        do
        {
          *v13++ = (v14 + 2) % (*(result + 32) + 1);
          v3 = *(result + 36);
          ++v14;
        }

        while (v14 < v3);
      }

      if ((v3 & 0x40000000) == 0)
      {
        v15 = 0;
        v16 = *(result + 24);
        do
        {
          *(v16 + 4 * v15) = v15 % (*(result + 32) + 1);
          v8 = v15++ <= 2 * *(result + 36);
        }

        while (v8);
      }

      v12 = *(result + 32) + 1;
      goto LABEL_25;
    }

    *(result + 36) = a2;
    result = heap_Realloc(*(result + 48), *result, 4 * a2 + 4);
    if (result)
    {
      *v2 = result;
      result = heap_Realloc(*(v2 + 48), *(v2 + 8), (4 * *(v2 + 36) + 4));
      if (result)
      {
        *(v2 + 8) = result;
        result = heap_Realloc(*(v2 + 48), *(v2 + 16), (4 * *(v2 + 36) + 4));
        if (result)
        {
          *(v2 + 16) = result;
          result = heap_Realloc(*(v2 + 48), *(v2 + 24), (8 * *(v2 + 36) + 8));
          if (result)
          {
            *(v2 + 24) = result;
            LODWORD(v4) = *(v2 + 36);
            if ((v4 & 0x80000000) == 0)
            {
              v5 = *(v2 + 16);
              v6 = -1;
              do
              {
                *v5++ = (v6 + 2) % (*(v2 + 32) + 1);
                v4 = *(v2 + 36);
                ++v6;
              }

              while (v6 < v4);
            }

            if ((v4 & 0x40000000) == 0)
            {
              v7 = 0;
              do
              {
                *(result + 4 * v7) = v7 % (*(v2 + 32) + 1);
                LODWORD(v4) = *(v2 + 36);
                v8 = v7++ <= 2 * v4;
              }

              while (v8);
            }

            v9 = *(v2 + 32) + 1;
            if (v9 <= v4)
            {
              v10 = *v2;
              v11 = *(v2 + 8);
              do
              {
                *(v10 + 4 * v9) = 0;
                *(v11 + 4 * v9++) = 0;
              }

              while (v9 <= v4);
            }

            *(v2 + 32) = v4;
            v12 = v4 + 1;
LABEL_25:
            *(v2 + 44) = v12 >> 1;
            return 1;
          }
        }
      }
    }

    *(v2 + 32) = 0;
  }

  return result;
}

uint64_t mfs_Downsample__Copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  result = heap_Realloc(*(a1 + 48), *a1, 4 * (v4 + 1));
  if (result)
  {
    *a1 = result;
    result = heap_Realloc(*(a1 + 48), *(a1 + 8), 4 * (*(a1 + 32) + 1));
    if (result)
    {
      *(a1 + 8) = result;
      v6 = *(a1 + 32);
      v7 = *a1;
      v8 = *a2;
      v9 = *(a2 + 8);
      if ((v6 + 1) > 1)
      {
        v10 = (v6 + 1);
      }

      else
      {
        v10 = 1;
      }

      do
      {
        v11 = *v8++;
        *v7++ = v11;
        v12 = *v9++;
        *result = v12;
        result += 4;
        --v10;
      }

      while (v10);
      return 1;
    }
  }

  return result;
}

uint64_t *mfs_Downsample__Remove(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      v2 = result[6];
      mfs_Downsample__Empty(result);
      result = heap_Free(v2, *v1);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t *mfs_Downsample__Empty(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      result = heap_Free(result[6], *result);
    }

    *v1 = 0;
    v2 = v1[1];
    if (v2)
    {
      result = heap_Free(v1[6], v2);
    }

    v1[1] = 0;
    v3 = v1[2];
    if (v3)
    {
      result = heap_Free(v1[6], v3);
    }

    v4 = v1[3];
    v1[2] = 0;
    if (v4)
    {
      result = heap_Free(v1[6], v4);
    }

    v1[3] = 0;
    v1[4] = 0;
    v1[5] = 0;
  }

  return result;
}

uint64_t *mfs_Downsample__Generate(uint64_t a1, int a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  v4 = heap_Alloc(a1, 56);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v4 + 48) = a1;
  v14 = v4;
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (mfs_Downsample__Resize(v4, 7u))
      {
        v6 = 0;
        v7 = *v5;
        do
        {
          *(v7 + v6 * 4) = mfs_CoeffCorrFast2[v6];
          ++v6;
        }

        while (v6 != 8);
        return v5;
      }

      goto LABEL_20;
    }

    if (mfs_Downsample__Resize(v4, 0x19u))
    {
      v10 = 0;
      v11 = *v5;
      do
      {
        *(v11 + v10 * 4) = mfs_CoeffStage1Fast[v10];
        ++v10;
      }

      while (v10 != 26);
      return v5;
    }

    goto LABEL_20;
  }

  if (a2 != 2)
  {
    if (mfs_Downsample__Resize(v4, 3u))
    {
      v12 = *v5;
      *v12 = 0x3F11D5D3BD8FDCAALL;
      *(v12 + 8) = 1058133459;
      return v5;
    }

    goto LABEL_20;
  }

  if (!mfs_Downsample__Resize(v4, 5u))
  {
LABEL_20:
    mfs_Downsample__Remove(&v14);
    return 0;
  }

  v8 = 0;
  v9 = *v5;
  do
  {
    *(v9 + v8 * 4) = mfs_CoeffStage2[v8];
    ++v8;
  }

  while (v8 != 5);
  return v5;
}

uint64_t mfs_Downsample__VectorNC(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a1 && a2 && a3 && a5 >= a4 && *(a2 + 12) - 1 >= a5)
  {
    v10 = a5 - a4 + 1;
    if (*(*a3 + 12) < v10 >> 1)
    {
      mfs_Vect__Resize(*a3, v10 >> 1);
    }

    v11 = *(a1 + 44);
    v12 = 2 * v11;
    if (v11 >= 1)
    {
      v13 = a4 - v12 + 1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 40);
      v17 = v12 + 1;
      do
      {
        if ((v13 & 0x80000000) != 0)
        {
          v18 = 0.0;
        }

        else
        {
          v18 = *(*(a2 + 24) + 8 * v13);
        }

        *(v14 + 4 * v16) = v18;
        v13 += 2;
        v16 = *(v15 + 4 * v16);
        *(a1 + 40) = v16;
        --v17;
      }

      while (v17 > 2);
    }

    v19 = *(a2 + 24);
    v20 = (v19 + 8 * a4);
    v21 = *(*a3 + 24);
    v22 = (v19 + 8 * (a4 + v12 - 1));
    v23 = *(*a3 + 12) - v11;
    if (v23 >= 1)
    {
      v24 = v23 + 1;
      while (1)
      {
        *v21 = *v20;
        v25 = *v21 + mfs_Downsample__InterpolateBetweenTwoSamples(a1, *v22);
        *v21 = v25;
        v26 = 65534;
        if (v25 > 65534)
        {
          goto LABEL_19;
        }

        if (v25 <= -65537)
        {
          break;
        }

LABEL_20:
        ++v21;
        v20 += 2;
        v22 += 4;
        if (--v24 <= 1)
        {
          v11 = *(a1 + 44);
          v12 = 2 * v11;
          goto LABEL_22;
        }
      }

      v26 = -65536;
LABEL_19:
      *v21 = v26;
      goto LABEL_20;
    }

LABEL_22:
    v27 = v12 + a5;
    v28 = *(a2 + 12);
    if (v27 <= v28)
    {
      if (v11 >= 1)
      {
        v34 = v11 + 1;
        do
        {
          v35 = *v20;
          v20 += 2;
          *v21 = v35;
          LODWORD(v35) = *v22;
          v22 += 4;
          *v21++ += mfs_Downsample__InterpolateBetweenTwoSamples(a1, v35);
          --v34;
        }

        while (v34 > 1);
      }
    }

    else
    {
      if ((v28 + ~a5) >= 1)
      {
        v29 = v28 - a5;
        do
        {
          v30 = *v20;
          v20 += 2;
          *v21 = v30;
          LODWORD(v30) = *v22;
          v22 += 4;
          *v21++ += mfs_Downsample__InterpolateBetweenTwoSamples(a1, v30);
          --v29;
        }

        while (v29 > 1);
        v11 = *(a1 + 44);
        v28 = *(a2 + 12);
      }

      v31 = v11 + a5 - v28;
      if (v31 >= 1)
      {
        v32 = v31 + 1;
        do
        {
          v33 = *v20;
          v20 += 2;
          *v21 = v33;
          *v21++ += mfs_Downsample__InterpolateBetweenTwoSamples(a1, 0);
          --v32;
        }

        while (v32 > 1);
      }
    }

    v36 = *(*a3 + 12);
    if (v36 >= 1)
    {
      v37 = *(*a3 + 24);
      v38 = v36 + 1;
      do
      {
        *v37 /= 2;
        v37 += 2;
        --v38;
      }

      while (v38 > 1);
    }
  }

  return 1;
}

uint64_t mfs_Downsample__InterpolateBetweenTwoSamples(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  *(v2 + 4 * v3) = a2;
  if (v4 < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v5 = v3 + 1;
    v6 = *(a1 + 24);
    v7 = *a1;
    v8 = (v6 + 4 * (v3 + 1 + *(a1 + 32)));
    v9 = 0.0;
    do
    {
      v10 = *v8--;
      v11 = *(v2 + 4 * v10) + *(v2 + 4 * *(v6 + 4 * v5));
      LODWORD(v10) = *v7++;
      v9 = v9 + (v11 * *&v10);
      ++v5;
      --v4;
    }

    while (v4);
  }

  *(a1 + 40) = *(*(a1 + 16) + 4 * v3);
  v12 = v9;
  v13 = v9 < 0.0;
  v14 = 0.5;
  if (v13)
  {
    v14 = -0.5;
  }

  return (v14 + v12);
}

uint64_t log_wsola_Diag(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (v4 == 10);
  return log_VOutText(*(a1 + 32), "SYNTH_BET4", (a2 + 2), 0, v3);
}

uint64_t mfs_WSOLA__SetWindowOverlap(unsigned __int16 *a1, int a2)
{
  a1[1] = a2;
  v3 = 274877907 * *a1 * a2;
  v4 = (v3 >> 63) + (SHIDWORD(v3) >> 6);
  a1[2] = v4;
  a1[8] = 2 * v4;
  a1[9] = v4;
  v5 = a1[6];
  v6 = 2 * v5 - v4;
  if (v5 < v4)
  {
    v6 = a1[6];
  }

  a1[16] = v6;
  v7 = 2 * (v5 + (2 * v4)) - v4 + v6;
  *(a1 + 7) = v7;
  v8 = *(a1 + 7);
  if (!v8 || v7 <= *(v8 + 12) || (v9 = 2164269066, mfs_Vect__Resize(v8, v7) == 1) && mfs_Vect__Resize(*(a1 + 8), *(a1 + 7)) == 1 && mfs_Vect__Resize(*(a1 + 9), *(a1 + 7) >> 1) == 1 && mfs_Vect__Resize(*(a1 + 10), *(a1 + 7) >> 1) == 1 && mfs_Vect__Resize(*(a1 + 11), *(a1 + 7) >> 2) == 1 && mfs_Vect__Resize(*(a1 + 12), *(a1 + 7) >> 2) == 1)
  {
    v10 = *(a1 + 5);
    if (v10)
    {
      v11 = a1[2];
      v12 = 2 * v11;
      v13 = (2 * v11);
      v14 = heap_Realloc(*(a1 + 41), v10, v13);
      if (!v14)
      {
        return 2164269066;
      }

      *(a1 + 5) = v14;
      if (v11 >= 1)
      {
        v15 = 0;
        v16 = vdupq_n_s64(v13 - 1);
        v33 = vdupq_lane_s64(COERCE__INT64(a1[2]), 0);
        v17 = xmmword_26ECCE810;
        v18 = xmmword_26ECC7980;
        v19 = (v14 + 8);
        v32 = vdupq_n_s64(0x400921FB54442D11uLL);
        v31 = vdupq_n_s64(4uLL);
        v34 = v16;
        do
        {
          v41 = v17;
          v20 = vorr_s8(vdup_n_s32(v15), 0x300000002);
          v40 = v18;
          v21 = vmovn_s64(vcgeq_u64(v16, v18));
          v36 = vuzp1_s16(v21, v20).u8[0];
          v22.i32[0] = v15;
          v22.i32[1] = v15 + 1;
          v22.u64[1] = v20;
          v23 = vcvtq_f32_u32(v22);
          v42 = vdivq_f64(vmulq_f64(vcvtq_f64_f32(*v23.f32), v32), v33);
          __xa = vdivq_f64(vmulq_f64(vcvt_hight_f64_f32(v23), v32), v33);
          v37 = cos(__xa.f64[1]);
          __x = cos(__xa.f64[0]);
          v35 = cos(v42.f64[1]);
          v24 = cos(v42.f64[0]);
          if (v36)
          {
            v25 = (1.0 - v24) * 0.5;
            *(v19 - 2) = v25;
          }

          if (vuzp1_s16(v21, *&v24).i8[2])
          {
            v26 = (1.0 - v35) * 0.5;
            *(v19 - 1) = v26;
          }

          v16 = v34;
          v27 = vmovn_s64(vcgeq_u64(v34, v41));
          if (vuzp1_s16(v27, v27).i32[1])
          {
            v28 = (1.0 - __x) * 0.5;
            *v19 = v28;
            v29 = (1.0 - v37) * 0.5;
            v19[1] = v29;
          }

          v15 += 4;
          v17 = vaddq_s64(v41, v31);
          v18 = vaddq_s64(v40, v31);
          v19 += 4;
        }

        while (((v12 + 3) & 0x1FFFC) != v15);
      }
    }

    return 0;
  }

  return v9;
}

_WORD *mfs_WSOLA__SetTimeScaleFactor(_WORD *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result[9];
    v3 = v2 * a2 / 100;
    result[10] = v3;
    result[7] = v3 / v2;
    result[17] = result[14] - v3;
  }

  return result;
}

uint64_t mfs_WSOLA__Create(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 8);
  v5 = heap_Calloc(v4, 336, 1);
  v6 = v5;
  v26 = v5;
  if (v5)
  {
    *(v5 + 320) = a1;
    *(v5 + 328) = v4;
    *v5 = a2;
    *(v5 + 312) = 0;
    if ((mfs_WSOLA__SetWindowOverlap(v5, 10) & 0x80000000) == 0)
    {
      *(v6 + 2) = 4;
      v7 = 33555 * (*v6 >> 1);
      v8 = v7 >> 22;
      v6[6] = *v6 / 0xFAu;
      v9 = v6[9];
      if ((v7 >> 22) >= v9)
      {
        LOWORD(v8) = 2 * (v7 >> 22) - v9;
      }

      v6[16] = v8;
      v10 = 2 * (v6[8] + (v7 >> 22)) - v6[2] + v8;
      *(v6 + 7) = v10;
      v11 = *(v6 + 7);
      if (v11 && v10 > *(v11 + 12))
      {
        if (mfs_Vect__Resize(v11, v10) != 1 || mfs_Vect__Resize(*(v6 + 8), *(v6 + 7)) != 1 || mfs_Vect__Resize(*(v6 + 9), *(v6 + 7) >> 1) != 1 || mfs_Vect__Resize(*(v6 + 10), *(v6 + 7) >> 1) != 1 || mfs_Vect__Resize(*(v6 + 11), *(v6 + 7) >> 2) != 1 || mfs_Vect__Resize(*(v6 + 12), *(v6 + 7) >> 2) != 1)
        {
          goto LABEL_24;
        }

        v10 = *(v6 + 7);
      }

      v12 = mfs_Vect__Create(v4, v10);
      *(v6 + 7) = v12;
      if (v12)
      {
        v13 = mfs_Vect__Create(v4, *(v6 + 7));
        *(v6 + 8) = v13;
        if (v13)
        {
          v14 = mfs_Vect__Create(v4, *(v6 + 7) >> 1);
          *(v6 + 9) = v14;
          if (v14)
          {
            v15 = mfs_Vect__Create(v4, *(v6 + 7) >> 1);
            *(v6 + 10) = v15;
            if (v15)
            {
              v16 = mfs_Vect__Create(v4, *(v6 + 7) >> 2);
              *(v6 + 11) = v16;
              if (v16)
              {
                v17 = mfs_Vect__Create(v4, *(v6 + 7) >> 2);
                *(v6 + 12) = v17;
                if (v17)
                {
                  mfs_Vect__Clear(*(v6 + 7));
                  mfs_Vect__Clear(*(v6 + 8));
                  mfs_Vect__Clear(*(v6 + 9));
                  mfs_Vect__Clear(*(v6 + 10));
                  mfs_Vect__Clear(*(v6 + 11));
                  mfs_Vect__Clear(*(v6 + 12));
                  v18 = *(v6 + 7);
                  v19 = *(v6 + 8);
                  *(*(v6 + 7) + 12) = v18;
                  *(v19 + 12) = v18;
                  v20 = *(v6 + 10);
                  *(*(v6 + 9) + 12) = v18 >> 1;
                  *(v20 + 12) = v18 >> 1;
                  v18 >>= 2;
                  v21 = *(v6 + 12);
                  *(*(v6 + 11) + 12) = v18;
                  *(v21 + 12) = v18;
                  v22 = mfs_Downsample__Generate(v4, 0);
                  *(v6 + 15) = v22;
                  if (v22)
                  {
                    v23 = heap_Calloc(v4, 128, 4);
                    *(v6 + 18) = v23;
                    if (v23)
                    {
                      if ((WSOLA__CreateOLAWindow_0(v6) & 0x80000000) == 0)
                      {
                        v24 = v6[9];
                        v6[10] = v24;
                        v6[7] = 1;
                        v6[17] = v6[14] - v24;
                        mfs_WSOLA__Initialise(v6);
                        return v6;
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

LABEL_24:
    mfs_WSOLA__Remove(&v26);
    return v26;
  }

  return v6;
}

void *mfs_WSOLA__Remove(uint64_t *a1)
{
  v2 = *(*a1 + 328);
  mfs_Vect__Remove((*a1 + 56));
  mfs_Vect__Remove((*a1 + 64));
  mfs_Vect__Remove((*a1 + 72));
  mfs_Vect__Remove((*a1 + 80));
  mfs_Vect__Remove((*a1 + 88));
  mfs_Vect__Remove((*a1 + 96));
  v3 = *a1;
  if (*(*a1 + 40))
  {
    heap_Free(v2, *(*a1 + 40));
    v3 = *a1;
  }

  if (*(v3 + 120))
  {
    mfs_Downsample__Remove((v3 + 120));
    v3 = *a1;
  }

  if (*(v3 + 144))
  {
    heap_Free(v2, *(v3 + 144));
    v3 = *a1;
  }

  result = heap_Free(v2, v3);
  *a1 = 0;
  return result;
}

uint64_t WSOLA__CreateOLAWindow_0(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = 2 * v2;
  v4 = (2 * v2);
  v5 = heap_Alloc(*(a1 + 328), 4 * v4);
  *(a1 + 40) = v5;
  if (!v5)
  {
    return 2164269066;
  }

  if (v2 >= 1)
  {
    v6 = 0;
    v7 = vdupq_n_s64(v4 - 1);
    v24 = vdupq_lane_s64(COERCE__INT64(*(a1 + 4)), 0);
    v8 = xmmword_26ECCE810;
    v9 = xmmword_26ECC7980;
    v10 = (v5 + 8);
    v23 = vdupq_n_s64(0x400921FB54442D11uLL);
    v22 = vdupq_n_s64(4uLL);
    v25 = v7;
    do
    {
      v32 = v8;
      v11 = vorr_s8(vdup_n_s32(v6), 0x300000002);
      v31 = v9;
      v12 = vmovn_s64(vcgeq_u64(v7, v9));
      v27 = vuzp1_s16(v12, v11).u8[0];
      v13.i32[0] = v6;
      v13.i32[1] = v6 + 1;
      v13.u64[1] = v11;
      v14 = vcvtq_f32_u32(v13);
      v33 = vdivq_f64(vmulq_f64(vcvtq_f64_f32(*v14.f32), v23), v24);
      __xa = vdivq_f64(vmulq_f64(vcvt_hight_f64_f32(v14), v23), v24);
      v28 = cos(__xa.f64[1]);
      __x = cos(__xa.f64[0]);
      v26 = cos(v33.f64[1]);
      v15 = cos(v33.f64[0]);
      if (v27)
      {
        v16 = (1.0 - v15) * 0.5;
        *(v10 - 2) = v16;
      }

      if (vuzp1_s16(v12, *&v15).i8[2])
      {
        v17 = (1.0 - v26) * 0.5;
        *(v10 - 1) = v17;
      }

      v7 = v25;
      v18 = vmovn_s64(vcgeq_u64(v25, v32));
      if (vuzp1_s16(v18, v18).i32[1])
      {
        v19 = (1.0 - __x) * 0.5;
        *v10 = v19;
        v20 = (1.0 - v28) * 0.5;
        v10[1] = v20;
      }

      v6 += 4;
      v8 = vaddq_s64(v32, v22);
      v9 = vaddq_s64(v31, v22);
      v10 += 4;
    }

    while (((v3 + 3) & 0x1FFFC) != v6);
  }

  return 0;
}

double mfs_WSOLA__Initialise(uint64_t a1)
{
  v1 = a1;
  mfs_Vect__Reset(*(a1 + 56));
  mfs_Vect__Reset(*(v1 + 64));
  mfs_Vect__Reset(*(v1 + 72));
  mfs_Vect__Reset(*(v1 + 80));
  mfs_Vect__Reset(*(v1 + 88));
  mfs_Vect__Reset(*(v1 + 96));
  *(v1 + 304) = -1;
  *(v1 + 312) = 1;
  *(v1 + 112) = 0;
  *(v1 + 104) = 0;
  *(v1 + 281) = 0;
  cstdlib_memset(*(v1 + 144), 0, 0x200uLL);
  result = 0.0;
  *(v1 + 152) = 0u;
  v1 += 152;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 - 130) = 0;
  *(v1 - 100) = 0;
  return result;
}

uint64_t mfs_WSOLA__GetBestPositionRelToWindowOffset(__int16 *a1)
{
  v1 = a1[6];
  if (v1 < 1)
  {
    v4 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *(*&a1[4 * a1[24] + 28] + 24);
    v6 = *(*&a1[4 * a1[25] + 28] + 24) + 8 * a1[a1[25] + 11] + 8 * a1[9];
    v7 = a1[16];
    v8 = a1[8];
    v9 = 0.0;
    do
    {
      v10 = 0.0;
      if (v8 >= 1)
      {
        v11 = (v5 + 8 * (v2 - v1 + v7));
        v12 = v8;
        v13 = v6;
        do
        {
          v15 = *v11;
          v11 += 2;
          v14 = v15;
          v16 = *v13;
          v13 += 2;
          v10 = v10 + (v16 * v14);
          v17 = v12--;
        }

        while (v17 > 1);
      }

      if (v10 > v9)
      {
        v9 = v10;
        v4 = v3;
      }

      v2 = ++v3;
    }

    while (2 * v1 > v3);
  }

  return (v4 - v1);
}

uint64_t mfs_WSOLA__GetOutputLength(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 152 + a2) == 2;
  *a3 = v3;
  if (v3)
  {
    *(a1 + 152 + a2) = 0;
  }

  return *(*(a1 + 144) + 4 * a2);
}

uint64_t mfs_WSOLA__TimeScaleInputBuffer(uint64_t a1, char a2, __int16 *a3, uint64_t a4, _WORD *a5, int *a6, int a7, char *a8, _BYTE *a9)
{
  v9 = a5;
  v11 = a3;
  v13 = *a8;
  v14 = *(a1 + 312);
  if (v14)
  {
    v11 = &a3[*(a1 + 108)];
    v9 = &a5[*(a1 + 112)];
  }

  v15 = a1 + 152;
  v16 = a1 + 56;
  v17 = (a1 + 308);
  v171 = (a1 + 72);
  v172 = (a1 + 88);
  v18 = a1 + 22;
  v168 = (a7 + 100);
  v175 = a1 + 56;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_4:
          while (v14 <= 2)
          {
            switch(v14)
            {
              case 0:
                mfs_WSOLA__Initialise(a1);
                *(a1 + 312) = 1;
LABEL_14:
                if (*(a1 + 128) == a7)
                {
                  v20 = *(a1 + 28);
LABEL_35:
                  v33 = *(a1 + 52);
                  *(a1 + 52) = 1 - v33;
                  *(a1 + 48) = 1 - v33;
                  *(a1 + 50) = v33;
                  v34 = *(*(v16 + 8 * (1 - v33)) + 24);
                  *(a1 + 136) = v34;
                  v35 = *(v16 + 8 * v33);
                  *(a1 + 304) = 0;
                  cstdlib_memmove(v34, (*(v35 + 24) + 8 * (v20 - *(a1 + 34))), 8 * *(a1 + 34));
                  *(a1 + 136) += 8 * *(a1 + 34);
                  *(a1 + 312) = 2;
LABEL_36:
                  v36 = *v17;
                  if (*v17 == -1)
                  {
                    v36 = *(a1 + 34);
                  }

                  v37 = *(a1 + 108);
                  v38 = *(a1 + 28);
                  v39 = v38 + v37 - v36;
                  if (v39 >= a4)
                  {
                    v40 = a4;
                  }

                  else
                  {
                    v40 = v38 + v37 - v36;
                  }

                  v41 = v40 - v37 + v36;
                  *(a1 + 308) = v41;
                  if (v40 - v37 >= 1)
                  {
                    v42 = *(a1 + 136);
                    v43 = v40 - v37 + 1;
                    do
                    {
                      *(v42 + 4) = v13;
                      v44 = *v11++;
                      *v42 = v44;
                      v42 += 8;
                      --v43;
                    }

                    while (v43 > 1);
                    *(a1 + 136) = v42;
                  }

                  *(a1 + 108) = v40;
                  if (v39 >= a4)
                  {
                    if ((a2 & 1) == 0)
                    {
                      *(a1 + 108) = 0;
                      *a9 = 0;
                      *(a1 + 280) = v13;
                      return 0;
                    }

                    if (v41 < v38)
                    {
                      v45 = *(a1 + 136);
                      v46 = v37 + v38 - v36 - v40;
                      do
                      {
                        *(v45 + 4) = v13 | 0x80;
                        *v45 = 0;
                        v45 += 8;
                        --v46;
                      }

                      while (v46);
                      *(a1 + 136) = v45;
                    }
                  }

                  *(a1 + 280) = v13;
                  *v17 = 0x3FFFFFFFFLL;
                  goto LABEL_52;
                }

                *(a1 + 128) = a7;
                if (a7)
                {
                  v20 = *(a1 + 28);
                  if (v168 < 1)
                  {
                    goto LABEL_35;
                  }

                  v21 = *(a1 + 18);
                  v22 = v21 * v168 / 100;
                  *(a1 + 20) = v22;
                  *(a1 + 14) = v22 / v21;
                  v23 = v20 - v22;
                }

                else
                {
                  v32 = *(a1 + 18);
                  *(a1 + 20) = v32;
                  *(a1 + 14) = 1;
                  v20 = *(a1 + 28);
                  v23 = v20 - v32;
                }

                *(a1 + 34) = v23;
                goto LABEL_35;
              case 1:
                goto LABEL_14;
              case 2:
                goto LABEL_36;
            }
          }

          if (v14 != 3)
          {
            break;
          }

LABEL_52:
          if (*(a1 + 128))
          {
            v174 = *(a1 + 32);
            mfs_Downsample__VectorNC(*(a1 + 120), *(a1 + 56), v171, 0, *(*(a1 + 56) + 12) - 1);
            mfs_Downsample__VectorNC(*(a1 + 120), *(a1 + 64), (a1 + 80), 0, *(*(a1 + 64) + 12) - 1);
            mfs_Downsample__VectorNC(*(a1 + 120), *(a1 + 72), v172, 0, *(*(a1 + 72) + 12) - 1);
            mfs_Downsample__VectorNC(*(a1 + 120), *(a1 + 80), (a1 + 96), 0, *(*(a1 + 80) + 12) - 1);
            v47 = *(a1 + 32);
            v48 = *(a1 + 12);
            v49 = v47 - v48 + 3;
            if (v47 >= v48)
            {
              v49 = v47 - v48;
            }

            v50 = v49 >> 2;
            LODWORD(v51) = (v49 >> 2) & ~(v49 >> 31);
            v52 = v51 + ((v48 + ((v48 & 0x8000) >> 15)) >> 1);
            v53 = *(*(a1 + 88) + 12);
            v54 = v53;
            v55 = v53 - 1;
            if (v54 <= v52)
            {
              LOWORD(v52) = v55;
            }

            if (v51 < v52)
            {
              v56 = v52;
              v57 = *(a1 + 18);
              v58 = *(a1 + 50);
              v59 = *(v18 + 2 * v58);
              v60 = __OFADD__(v59, v57);
              v61 = v59 + v57;
              if (v61 < 0 != v60)
              {
                v61 += 3;
              }

              v62 = *(v172[v58] + 24) + 8 * (v61 >> 2);
              v63 = *(a1 + 16);
              v51 = v51;
              v64 = 0.0;
              do
              {
                v65 = 0.0;
                if (v63 >= 4)
                {
                  v66 = (*(v172[*(a1 + 48)] + 24) + 8 * v51);
                  v67 = ((v63 + ((v63 >> 29) & 3)) << 16) >> 18;
                  v68 = v62;
                  do
                  {
                    v70 = *v66;
                    v66 += 2;
                    v69 = v70;
                    v71 = *v68;
                    v68 += 2;
                    v65 = v65 + (v71 * v69);
                    v72 = v67--;
                  }

                  while (v72 > 1);
                }

                if (v65 > v64)
                {
                  v64 = v65;
                  LOWORD(v50) = v51;
                }

                ++v51;
              }

              while (v51 != v56);
            }

            v73 = 2 * v50;
            v74 = (2 * v50 - 3) & ~((2 * v50 - 3) >> 31);
            v75 = v73 + 3;
            v76 = *(*v171 + 12);
            v77 = v76;
            v78 = v76 - 1;
            if (v77 <= v75)
            {
              v75 = v78;
            }

            if (v74 < v75)
            {
              v79 = *(a1 + 16);
              v80 = v74;
              v81 = 0.0;
              do
              {
                v82 = 0.0;
                if (v79 >= 2)
                {
                  v83 = (*(v171[*(a1 + 48)] + 24) + 8 * v80);
                  v84 = (v79 + ((v79 & 0x8000) >> 15)) << 16 >> 17;
                  v85 = (*(v171[*(a1 + 50)] + 24) + 8 * ((*(v18 + 2 * *(a1 + 50)) + *(a1 + 18)) / 2));
                  do
                  {
                    v87 = *v83;
                    v83 += 2;
                    v86 = v87;
                    v88 = *v85;
                    v85 += 2;
                    v82 = v82 + (v88 * v86);
                    v89 = v84--;
                  }

                  while (v89 > 1);
                }

                if (v82 > v81)
                {
                  v81 = v82;
                  LOWORD(v74) = v80;
                }

                ++v80;
              }

              while (v80 != v75);
            }

            v90 = v17;
            v91 = a4;
            v92 = 2 * v74;
            v93 = (v92 - 3) & ~((v92 - 3) >> 31);
            v94 = v92 + 3;
            v95 = *(*v175 + 12);
            v96 = v95;
            v97 = v95 - 1;
            if (v96 <= v94)
            {
              v94 = v97;
            }

            if (v93 < v94)
            {
              v98 = v93;
              v99 = 0.0;
              do
              {
                v100 = 0.0;
                if (*(a1 + 16) >= 1)
                {
                  v101 = (*(*(v175 + 8 * *(a1 + 48)) + 24) + 8 * v98);
                  v102 = *(a1 + 16);
                  v103 = (*(*(v175 + 8 * *(a1 + 50)) + 24) + 8 * *(v18 + 2 * *(a1 + 50)) + 8 * *(a1 + 18));
                  do
                  {
                    v105 = *v101;
                    v101 += 2;
                    v104 = v105;
                    v106 = *v103;
                    v103 += 2;
                    v100 = v100 + (v106 * v104);
                    v107 = v102--;
                  }

                  while (v107 > 1);
                }

                if (v100 > v99)
                {
                  v99 = v100;
                  LOWORD(v93) = v98;
                }

                ++v98;
              }

              while (v98 != v94);
            }

            log_wsola_Diag(*(a1 + 320), 4, "Best: %d\t%d");
            v108 = v93 + v174 - *(a1 + 32);
            a4 = v91;
            v17 = v90;
            v16 = v175;
          }

          else
          {
            v108 = *(v18 + 2 * *(a1 + 50));
          }

          *(v18 + 2 * *(a1 + 48)) = v108;
          v19 = *(*(v16 + 8 * *(a1 + 50)) + 24) + 8 * *(v18 + 2 * *(a1 + 50)) + 8 * *(a1 + 18);
          *(a1 + 288) = v19;
          *(a1 + 296) = *(*(v16 + 8 * *(a1 + 48)) + 24) + 8 * *(v18 + 2 * *(a1 + 48));
          if (*(a1 + 128))
          {
            v14 = 5;
            *(a1 + 312) = 5;
          }

          else
          {
            *(a1 + 312) = 4;
LABEL_92:
            v109 = *(v19 + 4);
            if (*(a1 + 304) == -1)
            {
              *(a1 + 304) = 0;
            }

            v110 = v109 & 0x7F;
            v111 = *(a1 + 281);
            if (v111 != v110)
            {
              if (v110 == 127)
              {
                v112 = 0;
              }

              else
              {
                v112 = v110;
              }

              v113 = v112 + 1;
              v114 = v112 + 2;
              if (v113 == v111 || v114 == v111)
              {
                goto LABEL_105;
              }

              v116 = v110 - 126;
              if (v110 < 0x7E)
              {
                v116 = v110 + 1;
              }

              if (v116 + 1 == v111)
              {
LABEL_105:
                log_wsola_Diag(*(a1 + 320), 1, "WARNING: switch back from PhonID %u to previous PhonID %u");
                v110 = *(a1 + 281);
                *(*(a1 + 288) + 4) = *(*(a1 + 288) + 4) & 0x80 | v110;
              }

              else
              {
                if (!*(v15 + v110))
                {
                  *(*(a1 + 144) + 4 * v110) = 0;
                }

                do
                {
                  *(v15 + v111) = 2;
                  v111 = v111 - 127 * ((((v111 - ((517 * v111) >> 16)) >> 1) + ((517 * v111) >> 16)) >> 6) + 1;
                }

                while (v110 != v111);
                *(a1 + 281) = v110;
              }

              *(v15 + v110) = 1;
              if (*(*(a1 + 144) + 4 * *(a1 + 281)))
              {
                v117 = 1;
                v118 = "ERROR: PhonID %u, restart at length %d";
              }

              else
              {
                v117 = 3;
                v118 = "start output phonID: %d";
              }

              log_wsola_Diag(*(a1 + 320), v117, v118);
            }

            *(a1 + 312) = 1;
            v119 = *(a1 + 288);
            if (v119[1] < 0)
            {
              *a9 = 2;
              *a6 = *(a1 + 112);
              v163 = *(a1 + 281);
              if (v163 != *(a1 + 280))
              {
                do
                {
                  *(v15 + v163) = 2;
                  v163 = v163 - 127 * ((((v163 - ((517 * v163) >> 16)) >> 1) + ((517 * v163) >> 16)) >> 6) + 1;
                  v164 = *(a1 + 280);
                }

                while (v164 != v163);
LABEL_181:
                v163 = v164;
                goto LABEL_182;
              }

              goto LABEL_182;
            }

            v120 = *(a1 + 281);
            if (*(a1 + 281))
            {
              v121 = *a6;
              v122 = *(a1 + 112);
              v123 = *(a1 + 304);
              if (*a6 >= v122 + *(a1 + 4) - v123)
              {
                v121 = v122 + *(a1 + 4) - v123;
              }

              v124 = v121 - v122;
              if (v121 - v122 > 1 && LOBYTE(v119[2 * v124 - 1]) != v120)
              {
                v134 = (v119 + 1);
                v126 = v122 - 1;
                v125 = -1;
                v135 = v124;
                while (1)
                {
                  v60 = __OFSUB__(v135--, 1);
                  if (v135 < 0 != v60)
                  {
                    break;
                  }

                  v136 = *v134;
                  v134 += 8;
                  ++v126;
                  ++v125;
                  if (v136 != v120)
                  {
                    *(a1 + 312) = 4;
                    goto LABEL_121;
                  }
                }
              }

              v125 = v124;
              v126 = v121;
LABEL_121:
              *(a1 + 304) = v125 + v123;
              *(*(a1 + 144) + 4 * v120) += v125;
              v127 = v126 - *(a1 + 112);
              if (v127 >= 1)
              {
                v128 = v127 + 1;
                do
                {
                  v129 = *v119;
                  v119 += 2;
                  *v9++ = v129;
                  --v128;
                }

                while (v128 > 1);
              }

              *(a1 + 288) = v119;
              if (v126 < *a6)
              {
                *(a1 + 112) = v126;
                goto LABEL_160;
              }

              *a9 = 1;
              *a6 = v126;
              *a8 = *(a1 + 281);
              *(a1 + 112) = 0;
              if (*(a1 + 304) == *(a1 + 4))
              {
                goto LABEL_184;
              }

              v165 = 4;
LABEL_186:
              *(a1 + 312) = v165;
              return 0;
            }

            v130 = *(a1 + 4);
            v14 = 1;
            if (*(a1 + 4))
            {
              v14 = 1;
              if (LOBYTE(v119[2 * *(a1 + 4) - 1]))
              {
                v131 = v119 - 2;
                v132 = -1;
                while (1)
                {
                  v60 = __OFSUB__(v130--, 1);
                  if (v130 < 0 != v60)
                  {
                    goto LABEL_168;
                  }

                  v133 = *(v131 + 12);
                  v131 += 2;
                  ++v132;
                  if (v133)
                  {
                    v14 = 4;
                    *(a1 + 312) = 4;
                    *(a1 + 288) = v131;
                    goto LABEL_167;
                  }
                }
              }
            }
          }
        }

        if (v14 == 5)
        {
          break;
        }

        if (v14 == 4)
        {
          v19 = *(a1 + 288);
          goto LABEL_92;
        }
      }

      v24 = *(*(a1 + 288) + 4);
      if (*(a1 + 304) == -1)
      {
        *(a1 + 304) = 0;
      }

      v25 = v24 & 0x7F;
      v26 = *(a1 + 281);
      if (v26 != v25)
      {
        if (v25 == 127)
        {
          v27 = 0;
        }

        else
        {
          v27 = v25;
        }

        v28 = v27 + 1;
        v29 = v27 + 2;
        if (v28 == v26 || v29 == v26)
        {
          goto LABEL_32;
        }

        v31 = v25 - 126;
        if (v25 < 0x7E)
        {
          v31 = v25 + 1;
        }

        if (v31 + 1 == v26)
        {
LABEL_32:
          log_wsola_Diag(*(a1 + 320), 1, "ERROR: switch back from PhonID %u to previous PhonID %u");
          v25 = *(a1 + 281);
          *(*(a1 + 288) + 4) = *(*(a1 + 288) + 4) & 0x80 | v25;
        }

        else
        {
          if (!*(v15 + v25))
          {
            *(*(a1 + 144) + 4 * v25) = 0;
          }

          do
          {
            *(v15 + v26) = 2;
            v26 = v26 - 127 * ((((v26 - ((517 * v26) >> 16)) >> 1) + ((517 * v26) >> 16)) >> 6) + 1;
          }

          while (v25 != v26);
          *(a1 + 281) = v25;
        }

        *(v15 + v25) = 1;
        if (*(*(a1 + 144) + 4 * *(a1 + 281)))
        {
          v137 = 1;
          v138 = "WARNING: PhonID %u, restart at length %d";
        }

        else
        {
          v137 = 3;
          v138 = "start output phonID: %d";
        }

        log_wsola_Diag(*(a1 + 320), v137, v138);
      }

      *(a1 + 312) = 1;
      v139 = *(a1 + 288);
      if (*(v139 + 4) < 0)
      {
        *a9 = 2;
        *a6 = *(a1 + 112);
        v163 = *(a1 + 281);
        if (v163 != *(a1 + 280))
        {
          do
          {
            *(v15 + v163) = 2;
            v163 = v163 - 127 * ((((v163 - ((517 * v163) >> 16)) >> 1) + ((517 * v163) >> 16)) >> 6) + 1;
            v164 = *(a1 + 280);
          }

          while (v164 != v163);
          goto LABEL_181;
        }

LABEL_182:
        *(v15 + v163) = 2;
        *a8 = *(a1 + 281);
        *(a1 + 112) = 0;
        *(a1 + 312) = 0;
        return 0;
      }

      v140 = *(a1 + 281);
      if (*(a1 + 281))
      {
        break;
      }

      v156 = *(a1 + 4);
      v14 = 1;
      if (*(v139 + 8 * v156 - 4))
      {
        v157 = v139 - 8;
        v132 = -1;
        v158 = 8;
        while (1)
        {
          v60 = __OFSUB__(v156, 1);
          LODWORD(v156) = v156 - 1;
          if (v156 < 0 != v60)
          {
            break;
          }

          v159 = *(v157 + 12);
          v157 += 8;
          v158 -= 8;
          ++v132;
          if (v159)
          {
            v14 = 5;
            *(a1 + 312) = 5;
            v160 = *(a1 + 296) - v158;
            *(a1 + 288) = v157;
            *(a1 + 296) = v160;
LABEL_167:
            *(a1 + 304) += v132;
            goto LABEL_4;
          }
        }

LABEL_168:
        v14 = 1;
      }
    }

    v141 = *(a1 + 304);
    if (*a6 - *(a1 + 112) >= *(a1 + 4) - v141)
    {
      v142 = *(a1 + 4) - v141;
    }

    else
    {
      v142 = *a6 - *(a1 + 112);
    }

    v143 = v142 + v141;
    if (v142 >= 2 && *(v139 + 8 * v142 - 4) != v140)
    {
      v161 = (v139 + 4);
      v144 = v141 - 1;
      while (1)
      {
        v60 = __OFSUB__(v142--, 1);
        if (v142 < 0 != v60)
        {
          break;
        }

        v162 = *v161;
        v161 += 8;
        ++v144;
        if (v162 != v140)
        {
          *(a1 + 312) = 5;
          goto LABEL_152;
        }
      }
    }

    v144 = v143;
LABEL_152:
    *(*(a1 + 144) + 4 * v140) += v144 - v141;
    v145 = *(a1 + 304);
    v146 = *(a1 + 112) + v144 - v145;
    *(a1 + 112) = v146;
    if (v144 > v145)
    {
      v147 = 0;
      v148 = *(a1 + 296);
      v149 = (*(a1 + 40) + 4 * v145);
      v150 = v144 - v145;
      do
      {
        v151 = v149[*(a1 + 4)];
        v152 = *v149++;
        v153 = (v152 * *(v148 + v147)) + (v151 * *(v139 + v147));
        v154 = v153;
        if (v153 >= 0.0)
        {
          v155 = 0.5;
        }

        else
        {
          v155 = -0.5;
        }

        *v9++ = (v155 + v154);
        v147 += 8;
        --v150;
      }

      while (v150);
      *(a1 + 296) = v148 + v147;
      v139 += v147;
    }

    *(a1 + 288) = v139;
    *(a1 + 304) = v144;
    if (v146 >= *a6)
    {
      break;
    }

LABEL_160:
    v14 = *(a1 + 312);
    if (v14 == 1)
    {
      *(a1 + 304) = 0;
    }
  }

  *a9 = 1;
  *a6 = *(a1 + 112);
  *a8 = *(a1 + 281);
  *(a1 + 112) = 0;
  if (*(a1 + 304) != *(a1 + 4))
  {
    v165 = 5;
    goto LABEL_186;
  }

LABEL_184:
  *(a1 + 304) = 0;
  return 0;
}

uint64_t ssft_MapTtsegErrToAPI(int a1)
{
  if ((a1 & 0x80000000) == 0)
  {
    return 0;
  }

  result = a1 & 0x80001FFF;
  if (result <= -2147483393)
  {
    if (result >= -2147483620)
    {
      return 0x80000000;
    }
  }

  else
  {
    if (result > -2147482625)
    {
      if ((result + 2147481600) < 0xD || (result + 2147482624) <= 0x16 && ((1 << result) & 0x404001) != 0)
      {
        return result;
      }

      v2 = 2176;
    }

    else
    {
      if ((result + 2147483392) < 0x14 || result == -2147483136)
      {
        return result;
      }

      v2 = 768;
    }

    if (result != (v2 | 0x80000000))
    {
      return 0x80000000;
    }
  }

  return result;
}

uint64_t lipsync_ObjOpen(uint64_t a1, uint64_t *a2)
{
  v2 = 2281070598;
  if (a2)
  {
    v5 = heap_Alloc(a1, 16);
    if (v5)
    {
      v2 = 0;
      *(v5 + 8) = a1;
      *v5 = 0;
      *a2 = v5;
    }

    else
    {
      return 2281070602;
    }
  }

  return v2;
}

uint64_t lipsync_GetSyncInfo(_WORD *a1, __int16 a2, char *a3, int8x8_t *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  result = 2281070598;
  if (!a1 || !a3)
  {
    return result;
  }

  a1[1] = 1;
  *a1 = a2;
  if (lipsyncinfo_GetNbrOfLhp() < 2)
  {
LABEL_7:
    if (lipsyncinfo_GetNbrOfLhp() < 2)
    {
      return 2281070607;
    }

    v11 = 1;
    v9 = 1;
    while (1)
    {
      PhonemeTableByIndex = lipsyncinfo_GetPhonemeTableByIndex(v11);
      if (lipsyncinfo_HeadsMatchLooselyDiphtongs(a3, PhonemeTableByIndex) == 1)
      {
        break;
      }

      v11 = ++v9;
      if (lipsyncinfo_GetNbrOfLhp() <= v9)
      {
        return 2281070607;
      }
    }
  }

  else
  {
    v8 = 1;
    v9 = 1;
    while (1)
    {
      v10 = lipsyncinfo_GetPhonemeTableByIndex(v8);
      if (lipsyncinfo_HeadsMatch(a3, v10) == 1)
      {
        break;
      }

      v8 = ++v9;
      if (lipsyncinfo_GetNbrOfLhp() <= v9)
      {
        goto LABEL_7;
      }
    }
  }

  if (!v9)
  {
    return 2281070607;
  }

  if (v9 == 0xFFFF)
  {
    MouthPosByIndex = &v17;
LABEL_15:
    result = 0;
    *a4 = vmovn_s16(*(MouthPosByIndex + 2));
    return result;
  }

  v14 = a1[1];
  NbrOfLhp = lipsyncinfo_GetNbrOfLhp();
  if (v14 > 3 || NbrOfLhp < v9 || lipsyncinfo_GetNbrOfLhp() <= v9)
  {
    return 2281070607;
  }

  v16 = *lipsyncinfo_GetMouthPosByIndex(v9);
  result = 2281070607;
  if (v9 == v16)
  {
    MouthPosByIndex = lipsyncinfo_GetMouthPosByIndex(v9);
    goto LABEL_15;
  }

  return result;
}

uint64_t TextMime2ve(char *__s1, int *a2, int *a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = 1;
  }

  if (!__s1)
  {
    goto LABEL_9;
  }

  v8 = *__s1;
  if (!*__s1)
  {
    goto LABEL_10;
  }

  if (!cstdlib_strcmp(__s1, "text/plain;charset=utf-8"))
  {
    v8 = 0;
    v10 = 2;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (cstdlib_strcmp(__s1, "text/plain;charset=utf-16"))
  {
    if (cstdlib_strcmp(__s1, "application/synthesis+ssml"))
    {
      return 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    v8 = 1;
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_10:
  v10 = 1;
  if (a3)
  {
LABEL_11:
    *a3 = v10;
  }

LABEL_12:
  if (a2)
  {
    *a2 = v8;
  }

  return 1;
}

uint64_t ve_ttsInitialize(uint64_t a1, uint64_t *__b)
{
  v48 = 0;
  v49 = 0;
  v3 = -2147483638;
  v47 = 0;
  v43 = 0;
  v44 = 0;
  result = 2147483654;
  if (a1 && __b)
  {
    if (*a1 == 8963 && *(a1 + 16) && *(a1 + 48))
    {
      v46 = 0u;
      memset(__ba, 0, sizeof(__ba));
      cstdlib_memset(__b, 0, 0x10uLL);
      cstdlib_memset(__ba, 0, 0x30uLL);
      v6 = (*(*(a1 + 16) + 8))(*(a1 + 24), 1, 552);
      v13 = v6;
      if (!v6)
      {
        goto LABEL_66;
      }

      *v6 = 1933790291;
      v14 = *(a1 + 16);
      *(v6 + 8) = *v14;
      *(v6 + 24) = v14[1];
      v15 = *(a1 + 24);
      *(v6 + 64) = v15;
      Interface = heap_cb_Open(v6 + 8, v15, &v49);
      if ((Interface & 0x80000000) == 0)
      {
        v17 = *(a1 + 32);
        if (v17)
        {
          *(v13 + 72) = *v17;
          *(v13 + 88) = v17[1];
        }

        Interface = memlog_Create(v49, &v43);
        if ((Interface & 0x80000000) == 0)
        {
          Interface = dataclasswrapper_Create(v49, a1, v43, (v13 + 544));
          if ((Interface & 0x80000000) == 0)
          {
            *(v13 + 104) = osspiwrapper_FileOpen;
            v18 = *(a1 + 48);
            *(v13 + 112) = *(v18 + 8);
            *(v13 + 128) = *(v18 + 24);
            *(v13 + 152) = *(v18 + 48);
            v19 = *(a1 + 56);
            if (v19)
            {
              *(v13 + 184) = osspiwrapper_DataOpen;
              *(v13 + 200) = *(v19 + 8);
              *(v13 + 216) = *(v19 + 24);
            }

            v20 = *(a1 + 64);
            if (v20)
            {
              *(v13 + 280) = osspiwrapper_DynModOpen;
              *(v13 + 288) = *(v20 + 8);
              *(v13 + 304) = 0;
            }

            v21 = *(a1 + 80);
            if (v21)
            {
              cstdlib_memcpy((v13 + 328), v21, 0x18uLL);
              *(v13 + 352) = *(a1 + 88);
            }

            v22 = *(a1 + 112);
            if (v22)
            {
              *(v13 + 360) = *v22;
              *(v13 + 376) = v22[1];
              *(v13 + 392) = v22[2];
            }

            v23 = *(a1 + 120);
            if (v23)
            {
              *(v13 + 408) = *v23;
              *(v13 + 424) = v23[1];
            }

            Interface = critsec_cb_ClassOpen(v49, *(v13 + 64), v13 + 72, *(a1 + 40), &v48);
            if ((Interface & 0x80000000) == 0)
            {
              Interface = osspi_cb_cache_ClassOpen(v49, *(v13 + 64), v48, v13 + 104, *(v13 + 544), &v47);
              if ((Interface & 0x80000000) == 0)
              {
                Interface = rsrc_Open(v49, v48, 0, 0, v13 + 440);
                if ((Interface & 0x80000000) == 0)
                {
                  InitRsrcFunction(*(v13 + 440), *(v13 + 448), (v13 + 456));
                  v24 = *(v13 + 456);
                  *(v24 + 64) = v47;
                  v25 = *(a1 + 8);
                  if (!v25)
                  {
                    v3 = -2147483630;
LABEL_62:
                    v39 = *(v13 + 456);
                    if (v39)
                    {
                      if (v43)
                      {
                        memlog_Delete(v43, *(v39 + 32), v7, v8, v9, v10, v11, v12);
                      }

                      ve_ttsUnInitialize(v13, 1749240915);
                      return ssft_MapTtsegErrToAPI(v3);
                    }

LABEL_66:
                    if (v43)
                    {
                      memlog_Delete(v43, 0, v7, v8, v9, v10, v11, v12);
                    }

                    if (v47)
                    {
                      osspi_cb_cache_ClassClose(v47);
                    }

                    if (v13)
                    {
                      dataclasswrapper_Delete(*(v13 + 544));
                    }

                    if (v48)
                    {
                      critsec_cb_ClassClose(&v48);
                    }

                    if (v49)
                    {
                      heap_cb_Close(v49);
                    }

                    if (v13)
                    {
                      (*(*(a1 + 16) + 24))(*(a1 + 24), v13);
                    }

                    return ssft_MapTtsegErrToAPI(v3);
                  }

                  LOWORD(__ba[0]) = 3;
                  *(&v46 + 1) = v25;
                  Interface = engbrk_GetInterface(0, &v44);
                  if ((Interface & 0x80000000) == 0)
                  {
                    Interface = brk_ClassOpen(*(v13 + 440), *(v13 + 448), v44, __ba, 0, v13 + 472);
                    if ((Interface & 0x80000000) == 0)
                    {
                      Interface = brk_ObjOpen(0, *(v13 + 472));
                      if ((Interface & 0x80000000) == 0)
                      {
                        Interface = objc_ObjOpen(0, *(v13 + 440), *(v13 + 448), (v24 + 48));
                        if ((Interface & 0x80000000) == 0)
                        {
                          cstdlib_memset((v24 + 392), 0, 0x10uLL);
                          v26 = *(a1 + 96);
                          if (v26 && *v26 && *(a1 + 104))
                          {
                            v27 = heap_Calloc(*(v24 + 8), 1, 8);
                            *(v24 + 392) = v27;
                            if (!v27)
                            {
                              goto LABEL_62;
                            }

                            v28 = *(a1 + 104);
                            *v27 = **(a1 + 96);
                            *(v24 + 400) = v28;
                          }

                          if (*(a1 + 112))
                          {
                            v29 = v13 + 360;
                          }

                          else
                          {
                            v29 = 0;
                          }

                          if (*(a1 + 120))
                          {
                            v30 = v13 + 408;
                          }

                          else
                          {
                            v30 = 0;
                          }

                          thread_cb_ClassOpen(v49, *(v13 + 64), v29, v30, *(a1 + 128), v24 + 408);
                          Interface = paramc_ObjOpen(0, *(v13 + 440), *(v13 + 448), (v24 + 40));
                          if ((Interface & 0x80000000) == 0)
                          {
                            Interface = log_ClassOpen(*(v13 + 440), *(v13 + 448), 0, (v13 + 464));
                            if ((Interface & 0x80000000) == 0)
                            {
                              Interface = log_ObjOpen(*(v13 + 464), (v24 + 32));
                              if ((Interface & 0x80000000) == 0)
                              {
                                v42 = 0;
                                if (*(v13 + 328) || *(v13 + 336) || *(v13 + 344))
                                {
                                  v40 = 0;
                                  v41 = 0;
                                  cstdlib_memset(&v40, 0, 0x10uLL);
                                  v40 = v13 + 328;
                                  v41 = &VAutoLogSub;
                                  log_SubscriberAdd(*(v24 + 32), v13 + 328, &VAutoLogSub);
                                }

                                dataclass_wrapper_AddLog(*(v13 + 544), *(v24 + 32));
                                memlog_Delete(v43, *(v24 + 32), v31, v32, v33, v34, v35, v36);
                                v43 = 0;
                                if ((log_GetInterface(1u, &v42) & 0x80000000) == 0)
                                {
                                  heap_SetLog(v49);
                                  osspi_cb_cache_SetLog(v47, v42, *(v24 + 32));
                                }

                                Interface = compquery_GetInterface(1u, (v13 + 504));
                                if ((Interface & 0x80000000) == 0)
                                {
                                  v37 = *(*(v13 + 504) + 32);
                                  NullHandle = safeh_GetNullHandle();
                                  Interface = v37(NullHandle);
                                  if ((Interface & 0x80000000) == 0)
                                  {
                                    Interface = ttseg_GetInterface(3, (v13 + 480));
                                    if ((Interface & 0x80000000) == 0)
                                    {
                                      Interface = (*(*(v13 + 480) + 16))(*(v13 + 440), *(v13 + 448), v13 + 488);
                                      if ((Interface & 0x80000000) == 0)
                                      {
                                        Interface = synthstream_GetInterface(1u, (v13 + 528));
                                        if ((Interface & 0x80000000) == 0)
                                        {
                                          Interface = lingdb_GetInterface(1u, (v13 + 536));
                                          if ((Interface & 0x80000000) == 0)
                                          {
                                            v3 = bet7_parse_multicore_hdr(*(v13 + 456));
                                            if ((v3 & 0x80000000) == 0)
                                            {
                                              *__b = v13;
                                              *(__b + 2) = 1749240915;
                                              return ssft_MapTtsegErrToAPI(v3);
                                            }

                                            goto LABEL_62;
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
                    }
                  }
                }
              }
            }
          }
        }
      }

      v3 = Interface;
      goto LABEL_62;
    }

    return ssft_MapTtsegErrToAPI(-1946148096);
  }

  return result;
}

uint64_t ve_ttsUnInitialize(uint64_t a1, int a2)
{
  v2 = 2147483656;
  v23 = 0;
  if (a2 == 1749240915 && *a1 == 1933790291 && (InitRsrcFunction(*(a1 + 440), *(a1 + 448), &v23) & 0x80000000) == 0)
  {
    v4 = *(a1 + 456);
    v5 = v4[1];
    v24 = v4[2];
    v6 = v4[8];
    v7 = *(a1 + 64);
    *a1 = -1933790292;
    v8 = *(a1 + 488);
    if (v8)
    {
      v9 = (*(*(a1 + 480) + 24))(v8, *(a1 + 496));
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      *(a1 + 488) = safeh_GetNullHandle();
      *(a1 + 496) = v10;
    }

    else
    {
      v9 = 0;
    }

    v11 = *(a1 + 512);
    if (v11)
    {
      v9 = (*(*(a1 + 504) + 40))(v11, *(a1 + 520));
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      *(a1 + 512) = safeh_GetNullHandle();
      *(a1 + 520) = v12;
    }

    v13 = v23;
    if (v23[4])
    {
      heap_SetLog(v5);
      if (v6)
      {
        osspi_cb_cache_SetLog(v6, 0, 0);
      }

      v9 = log_ObjClose(v23[4]);
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      v13 = v23;
      v23[4] = 0;
    }

    v14 = *(a1 + 464);
    if (v14)
    {
      v9 = log_ClassClose(v14);
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      *(a1 + 464) = 0;
      v13 = v23;
    }

    v15 = v13[6];
    if (v15)
    {
      v9 = objc_ObjClose(v15);
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      v13 = v23;
      v23[6] = 0;
    }

    v16 = v13[5];
    if (v16)
    {
      v9 = paramc_ObjClose(v16);
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      v13 = v23;
      v23[5] = 0;
    }

    v17 = v13[3];
    if (v17)
    {
      v9 = brk_ObjClose(v17);
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      v13 = v23;
      v23[3] = 0;
    }

    v18 = *(a1 + 472);
    if (v18)
    {
      v9 = brk_ClassClose(v18);
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      *(a1 + 472) = 0;
      v13 = v23;
    }

    if (v13[51])
    {
      v9 = thread_cb_ClassClose(v13 + 51);
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      v13 = v23;
      v23[51] = 0;
    }

    v19 = v13[49];
    if (v19)
    {
      heap_Free(v13[1], v19);
      v23[49] = 0;
    }

    v20 = *(a1 + 440);
    if (v20)
    {
      v9 = rsrc_Close(v20, *(a1 + 448));
      if (v9 < 0)
      {
        goto LABEL_46;
      }

      *(a1 + 440) = safeh_GetNullHandle();
      *(a1 + 448) = v21;
    }

    if (!v6 || (v9 = osspi_cb_cache_ClassClose(v6), (v9 & 0x80000000) == 0))
    {
      dataclasswrapper_Delete(*(a1 + 544));
      if (!v24 || (v9 = critsec_cb_ClassClose(&v24), (v9 & 0x80000000) == 0))
      {
        if (!v5 || (v9 = heap_cb_Close(v5), (v9 & 0x80000000) == 0))
        {
          (*(a1 + 32))(v7, a1);
          return ssft_MapTtsegErrToAPI(v9);
        }
      }
    }

LABEL_46:
    *a1 = 1933790291;
    return ssft_MapTtsegErrToAPI(v9);
  }

  return v2;
}

uint64_t ve_ttsOpen(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2147483656;
  v94 = 0;
  v95 = 0;
  if (a2 == 1749240915)
  {
    v93 = 0u;
    memset(__b, 0, sizeof(__b));
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
    if (*a1 == 1933790291)
    {
      log_OutText(*(*(a1 + 456) + 32), "VEAPI", 4, 0, "ve_ttsOpen : Begin", a6, a7, a8, v85);
      cstdlib_memset(__b, 0, 0x30uLL);
      v13 = (*(a1 + 16))(a3, 1, 624);
      if (!v13)
      {
        return 2147483658;
      }

      v14 = v13;
      *(v13 + 40) = a3;
      v15 = (v13 + 48);
      cstdlib_memcpy((v13 + 48), (a1 + 328), 0x18uLL);
      *(v14 + 72) = a4;
      v16 = heap_cb_Open(a1 + 8, a3, &v95);
      if (v16 < 0)
      {
        v79 = v16;
      }

      else
      {
        *(v14 + 8) = a1;
        *(v14 + 544) = 0;
        *(v14 + 552) = 0;
        *(v14 + 608) = 0;
        *v14 = 1934574154;
        *(v14 + 112) = 0x10000000CLL;
        SetSavedMimeTypeforPlainText(v14, 0);
        v23 = brk_ObjOpen("eng/vocalizerautomotive", *(a1 + 472));
        v28 = *(a1 + 456);
        if (v23 < 0)
        {
          v79 = v23;
          log_OutPublic(*(v28 + 32), "VEAPI", 18002, "%s%x", v24, v25, v26, v27, "lhError");
        }

        else
        {
          v29 = critsec_ObjOpen(*(v28 + 16), v95, (v14 + 80));
          if (v29 < 0)
          {
            v79 = v29;
            log_OutPublic(*(*(a1 + 456) + 32), "VEAPI", 18035, "%s%x", v30, v31, v32, v33, "lherror");
            brk_ObjClose(v94);
          }

          else
          {
            inited = rsrc_Open(v95, *(*(a1 + 456) + 16), v94, 0, v14 + 16);
            if (inited < 0 || (inited = InitRsrcFunction(*(v14 + 16), *(v14 + 24), (v14 + 32)), inited < 0))
            {
              v79 = inited;
              log_OutPublic(*(*(a1 + 456) + 32), "VEAPI", 18003, "%s%x", v35, v36, v37, v38, "lhError");
              brk_ObjClose(v94);
              critsec_ObjClose(*(v14 + 80));
            }

            else
            {
              v39 = *(v14 + 32);
              v40 = *(a1 + 456);
              *(v39 + 64) = *(v40 + 64);
              *(v39 + 392) = *(v40 + 392);
              v41 = *(a1 + 464);
              *(v39 + 408) = *(*(a1 + 456) + 408);
              *(v14 + 88) = 1;
              if (v41)
              {
                log_ObjOpen(v41, (v39 + 32));
                if (*v15 || *(v14 + 56) || *(a1 + 344))
                {
                  v87 = 0;
                  v88 = 0;
                  cstdlib_memset(&v87, 0, 0x10uLL);
                  v87 = v15;
                  v88 = &VAutoLogSub;
                  log_SubscriberAdd(*(v39 + 32), v15, &VAutoLogSub);
                }
              }

              v42 = paramc_ObjOpen(0, *(v14 + 16), *(v14 + 24), (v39 + 40));
              if (v42 < 0)
              {
                v79 = v42;
                log_OutPublic(*(*(v14 + 32) + 32), "VEAPI", 18004, "%s%x", v43, v44, v45, v46, "lhError");
              }

              else
              {
                v47 = objc_ObjOpen(0, *(v14 + 16), *(v14 + 24), (v39 + 48));
                if (v47 < 0)
                {
                  v79 = v47;
                  log_OutPublic(*(*(v14 + 32) + 32), "VEAPI", 18005, "%s%x", v48, v49, v50, v51, "lhError");
                }

                else
                {
                  v52 = paramc_ParamSetUInt(*(v39 + 40), "waitfactor", 1u);
                  if (v52 < 0 || (v52 = paramc_ParamSetUInt(*(v39 + 40), "maxinputlength", 0xFAu), v52 < 0) || (v52 = paramc_ParamSetStr(*(v39 + 40), "inputmimetype", "text/plain;charset=utf-16"), v52 < 0) || (v52 = paramc_ParamSetStr(*(v39 + 40), "lidvoiceswitch", "no"), v52 < 0) || (v52 = paramc_ParamSetInt(*(v39 + 40), "phonmapmrkenabled", 0), v52 < 0))
                  {
                    v79 = v52;
                    log_OutPublic(*(*(v14 + 32) + 32), "VEAPI", 51020, "%s%x", v53, v54, v55, v56, "lhError");
                  }

                  else
                  {
                    cstdlib_memset(&v89, 0, 0x28uLL);
                    LOBYTE(v89) = 1;
                    *(&v89 + 1) = *(*(v14 + 8) + 528);
                    *&v90 = safeh_GetNullHandle();
                    *(&v90 + 1) = v57;
                    v91 = 0;
                    v58 = objc_RegisterObject(*(v39 + 48), "SYNTHSTREAM", &v89);
                    if (v58 < 0)
                    {
                      v79 = v58;
                      log_OutPublic(*(*(v14 + 32) + 32), "VEAPI", 18006, "%s%x", v59, v60, v61, v62, "lhError");
                    }

                    else
                    {
                      cstdlib_memset(&v89, 0, 0x28uLL);
                      LOBYTE(v89) = 1;
                      *(&v89 + 1) = *(*(v14 + 8) + 536);
                      *&v90 = safeh_GetNullHandle();
                      *(&v90 + 1) = v63;
                      v91 = 0;
                      v64 = objc_RegisterObject(*(v39 + 48), "LINGDB", &v89);
                      if (v64 < 0)
                      {
                        v79 = v64;
                        log_OutPublic(*(*(v14 + 32) + 32), "VEAPI", 18007, "%s%x", v65, v66, v67, v68, "lhError");
                      }

                      else
                      {
                        *(&__b[0] + 1) = ssft_hlp_ProcessPcmStream;
                        *&v93 = ssft_hlp_ProcessTaInfoStream;
                        v69 = (*(*(a1 + 480) + 32))(*(a1 + 488), *(a1 + 496), *(v14 + 16), *(v14 + 24), __b, v14, 0, v14 + 96);
                        if (v69 < 0)
                        {
                          v79 = v69;
                          log_OutPublic(*(*(v14 + 32) + 32), "VEAPI", 18008, "%s%x", v70, v71, v72, v73, "lhError");
                        }

                        else
                        {
                          v74 = lipsync_ObjOpen(v95, (v14 + 608));
                          if ((v74 & 0x80000000) == 0)
                          {
                            *a5 = v14;
                            *(a5 + 8) = 1750024778;
                            log_OutText(*(*(v14 + 32) + 32), "VEAPI", 4, 0, "ve_ttsOpen : End", v76, v77, v78, v86);
                            return 0;
                          }

                          v79 = v74;
                          log_OutPublic(*(*(v14 + 32) + 32), "VEAPI", 18011, "%s%x", v75, v76, v77, v78, "lhError");
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

      if (*(v14 + 32))
      {
        ve_ttsClose(v14, 1750024778, v17, v18, v19, v20, v21, v22);
      }

      else
      {
        (*(a1 + 32))(a3, v14);
        if (v95)
        {
          heap_cb_Close(v95);
        }
      }

      log_OutPublic(*(*(a1 + 456) + 32), "VEAPI", 18012, 0, v80, v81, v82, v83, v86);
      return ssft_MapTtsegErrToAPI(v79);
    }
  }

  return v8;
}

uint64_t SetSavedMimeTypeforPlainText(uint64_t a1, char *__s1)
{
  v9 = 0;
  TextMime2ve(__s1, 0, 0, &v9);
  if (!v9)
  {
    return 1;
  }

  v4 = *(a1 + 616);
  if (v4)
  {
    heap_Free(*(*(a1 + 32) + 8), v4);
    v5 = v9 != 0;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 616) = 0;
  result = 1;
  if (__s1)
  {
    if (v5)
    {
      v7 = *(*(a1 + 32) + 8);
      v8 = cstdlib_strlen(__s1);
      result = heap_Alloc(v7, (v8 + 1));
      *(a1 + 616) = result;
      if (result)
      {
        cstdlib_strcpy(result, __s1);
        return 1;
      }
    }
  }

  return result;
}

uint64_t ssft_hlp_ProcessPcmStream(uint64_t a1, char a2, void *a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  v37 = 0;
  v38 = 0;
  v34 = 0;
  v33 = 0;
  v35 = 0u;
  v36 = 0u;
  v12 = *(a1 + 480);
  if (!v12)
  {
    if (*a3)
    {
      v16 = *(a1 + 552);
      *(&v35 + 1) = *a3;
      *(&v36 + 1) = v16;
      v17 = ssft_hlp_ReadStopFlag(a1, &v33);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      if (v33 == 1)
      {
        *&v35 = 0;
        *&v36 = 0;
      }

      else
      {
        v18 = *a6;
        *&v35 = (2 * *a4);
        *&v36 = v18;
        ssft_hlp_convertAndCopyInternalMrkRcrdsToApiMrk(a1, &v34, a5, v18);
      }

      LODWORD(v37) = 16;
      v38 = &v34;
      if ((a2 & 2) != 0)
      {
        v19 = 0xFFFF;
        *(a1 + 452) = 0xFFFF;
      }

      else
      {
        v19 = *(a1 + 452);
      }

      HIDWORD(v37) = v19;
      v20 = (*(a1 + 504))(a1, 1750024778, *(a1 + 496), &v37);
      *(a1 + 452) = 2;
      if (v20)
      {
        if ((v20 & 0x1FFF) != 0x807)
        {
          return v20 & 0x1FFF | 0x8C002000;
        }

        (*(*(*(a1 + 8) + 480) + 128))(*(a1 + 96), *(a1 + 104));
        ssft_hlp_SetStateInterrupted(a1);
        *a3 = 0;
        *a4 = 0;
        *(a1 + 552) = 0;
        v14 = 2348820487;
LABEL_49:
        *a6 = 0;
        return v14;
      }
    }

    if ((a2 & 2) != 0)
    {
      v14 = 0;
      *a3 = 0;
      *a4 = 0;
      return v14;
    }

    v14 = ssft_hlp_ReadStopFlag(a1, &v33);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    if (v33 == 1)
    {
      *a3 = 0;
      *a4 = 0;
      *(a1 + 552) = 0;
      *(a1 + 544) = 0;
      goto LABEL_49;
    }

    v38 = &v34;
    v37 = 8;
    v21 = (*(a1 + 504))(a1, 1750024778, *(a1 + 496), &v37);
    v22 = v21;
    v14 = v21 & 0x1FFF | 0x8C002000;
    v23 = v38[1];
    v24 = v38[2];
    *a3 = v24;
    v25 = v23 >> 1;
    *a4 = v25;
    if (v24 && v25)
    {
      if (!v21)
      {
        v14 = 0;
        goto LABEL_52;
      }

      if ((v21 & 0x1FFF) != 0x807)
      {
LABEL_48:
        *a3 = 0;
        *a4 = 0;
        *(a1 + 552) = 0;
        goto LABEL_49;
      }
    }

    v26 = ssft_hlp_ReadStopFlag(a1, &v33);
    if (v22)
    {
      v27 = v14;
    }

    else
    {
      v27 = v26;
    }

    if (v26 | v33)
    {
      v14 = v27;
    }

    else
    {
      v28 = (*(*(*(a1 + 8) + 480) + 128))(*(a1 + 96), *(a1 + 104));
      if (!v22)
      {
        LODWORD(v14) = v28;
      }

      v29 = ssft_hlp_SetStateInterrupted(a1);
      if (v14 <= -1 || v29 == 0)
      {
        v14 = v14;
      }

      else
      {
        v14 = v29;
      }
    }

    if ((v14 & 0x80000000) != 0 || !*a3)
    {
      goto LABEL_48;
    }

LABEL_52:
    v32 = v38[3];
    *(a1 + 552) = v38[4];
    v15 = v32 / 0x38;
    goto LABEL_7;
  }

  if (*a4 || *a6)
  {
    **(a1 + 472) = 16;
    *(v12 + 8) = (2 * *a4);
    v13 = *a6;
    *(v12 + 24) = v13;
    v14 = ssft_hlp_convertAndCopyInternalMrkRcrdsToApiMrk(a1, v12, a5, v13);
    if ((a2 & 2) != 0)
    {
      return v14;
    }

    goto LABEL_5;
  }

  v14 = 0;
  if ((a2 & 2) != 0)
  {
    **(a1 + 472) = 2;
    *a3 = 0;
    *a4 = 0;
    goto LABEL_49;
  }

LABEL_5:
  if ((v14 & 0x80000000) == 0)
  {
    *a3 = *(*(a1 + 480) + 16);
    *a4 = *(a1 + 488) >> 1;
    *(a1 + 552) = *(*(a1 + 480) + 32);
    LODWORD(v15) = *(a1 + 492) / 0x38u;
LABEL_7:
    *(a1 + 544) = v15;
    *a6 = v15;
  }

  return v14;
}

uint64_t ssft_hlp_ProcessTaInfoStream(uint64_t a1, int a2, int a3, const void **a4, unsigned int *a5, void *__src, unsigned int *a7)
{
  v22 = 0;
  v23 = 0;
  v20 = 0u;
  v21 = 0u;
  if (a2 == 8)
  {
    v14 = *a5;
    v15 = *a7;
    *&v20 = v14;
    *&v21 = v15;
    if (v14 && *a4)
    {
      cstdlib_memmove(*(a1 + 520), *a4, v14);
      v15 = *a7;
    }

    v16 = *(a1 + 536);
    *(&v20 + 1) = *(a1 + 520);
    *(&v21 + 1) = v16;
    cstdlib_memmove(v16, __src, 40 * v15);
    LODWORD(v22) = 2048;
    v23 = &v20;
    v17 = (*(a1 + 504))(a1, 1750024778, *(a1 + 496), &v22);
    if (v17)
    {
      return v17 & 0x1FFF | 0x8C002000;
    }

    else
    {
      return 0;
    }
  }

  else if (a2 == 4)
  {
    v10 = *a7;
    *&v20 = *a5;
    *&v21 = v10;
    LODWORD(v22) = 1024;
    v23 = &v20;
    v11 = (*(a1 + 504))(a1, 1750024778, *(a1 + 496), &v22, a5, __src);
    if (v11)
    {
      return v11 & 0x1FFF | 0x8C002000;
    }

    else
    {
      v18 = *(&v20 + 1);
      result = 2348818702;
      if (*(&v20 + 1))
      {
        v19 = *(&v21 + 1);
        if (*(&v21 + 1))
        {
          result = 0;
          *(a1 + 512) = *a5;
          *(a1 + 528) = *a7;
          *(a1 + 520) = v18;
          *(a1 + 536) = v19;
        }
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t ve_ttsClose(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2147483656;
  v49 = 0;
  v9 = a2 != 1750024778 || a1 == 0;
  if (v9 || *a1 != 1934574154)
  {
    return v8;
  }

  log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsClose : Begin", a6, a7, a8, v48);
  HIDWORD(v48) = 0;
  State = ssft_hlp_GetState(a1, &v48 + 1);
  if ((State & 0x80000000) == 0)
  {
    if (HIDWORD(v48) != 1)
    {
      return 2147483665;
    }

    *a1 = -1934574155;
    inited = InitRsrcFunction(*(a1 + 16), *(a1 + 24), &v49);
    if ((inited & 0x80000000) == 0)
    {
      v13 = v49[1];
      v14 = *(*(*(a1 + 8) + 456) + 32);
      SetSavedMimeTypeforPlainText(a1, 0);
      if (*(a1 + 592))
      {
        v18 = objc_ReleaseObject(v49[6], "PHONMAP");
        if (v18 < 0)
        {
          inited = v18;
        }
      }

      v19 = *(a1 + 608);
      if (v19)
      {
        v20 = lipsync_ObjClose(v19);
        if (v20 < 0 && inited > -1)
        {
          inited = v20;
        }
      }

      v22 = *(a1 + 96);
      if (v22)
      {
        inited = (*(*(*(a1 + 8) + 480) + 40))(v22, *(a1 + 104));
      }

      v23 = v49;
      v24 = v49[4];
      if (v24)
      {
        v25 = log_ObjClose(v24);
        if (v25 < 0 && inited > -1)
        {
          inited = v25;
        }

        v23 = v49;
        v49[4] = 0;
      }

      v27 = v23[6];
      if (v27)
      {
        v28 = *(a1 + 8);
        if (*(v28 + 536))
        {
          v29 = objc_UnregisterObject(v27, "LINGDB");
          if (v29 < 0 && inited > -1)
          {
            inited = v29;
          }

          v28 = *(a1 + 8);
          v23 = v49;
        }

        if (*(v28 + 528))
        {
          v31 = objc_UnregisterObject(v23[6], "SYNTHSTREAM");
          if (v31 < 0 && inited > -1)
          {
            inited = v31;
          }

          v23 = v49;
        }

        v33 = objc_ObjClose(v23[6]);
        if (v33 < 0 && inited > -1)
        {
          inited = v33;
        }

        v23 = v49;
        v49[6] = 0;
      }

      v35 = v23[5];
      if (v35)
      {
        v36 = paramc_ObjClose(v35);
        if (v36 < 0 && inited > -1)
        {
          inited = v36;
        }

        v23 = v49;
        v49[5] = 0;
      }

      v38 = v23[3];
      if (v38)
      {
        v39 = brk_ObjClose(v38);
        if (v39 < 0 && inited > -1)
        {
          inited = v39;
        }

        v49[3] = 0;
      }

      v41 = *(a1 + 80);
      if (v41)
      {
        v42 = critsec_ObjClose(v41);
        if (v42 < 0 && inited > -1)
        {
          inited = v42;
        }

        *(a1 + 80) = 0;
      }

      v44 = *(a1 + 16);
      if (v44)
      {
        v45 = rsrc_Close(v44, *(a1 + 24));
        if (v45 < 0 && inited > -1)
        {
          inited = v45;
        }

        v49 = 0;
      }

      log_OutText(v14, "VEAPI", 4, 0, "ve_ttsClose : End", v15, v16, v17, v48);
      heap_cb_Close(v13);
      (*(*(a1 + 8) + 32))(*(a1 + 40), a1);
    }

    return ssft_MapTtsegErrToAPI(inited);
  }

  return ssft_MapTtsegErrToAPI(State);
}

uint64_t ssft_hlp_GetState(uint64_t a1, _DWORD *a2)
{
  v4 = critsec_Enter(*(a1 + 80));
  if ((v4 & 0x80000000) != 0)
  {
    v11 = v4;
    log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18033, "%s%x", v5, v6, v7, v8, "lhError");
    return v11;
  }

  else
  {
    *a2 = *(a1 + 88);
    v9 = *(a1 + 80);

    return critsec_Leave(v9);
  }
}

uint64_t ve_ttsSetOutDevice(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2147483656;
  v19 = 0;
  v18 = 0;
  v9 = a2 != 1750024778 || a1 == 0;
  if (!v9 && *a1 == 1934574154)
  {
    log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsSetOutDevice : Begin", a6, a7, a8, v18);
    inited = InitRsrcFunction(*(a1 + 16), *(a1 + 24), &v18);
    if (inited < 0)
    {
      v13 = inited;
    }

    else
    {
      if (!a3)
      {
        return 2147483654;
      }

      if (!*(a3 + 8))
      {
        return 2147483666;
      }

      v13 = ssft_hlp_LockFromIdle(a1, "ve_ttsSetOutDevice", 2, &v19);
      if ((v13 & 0x80000000) == 0)
      {
        *(a1 + 496) = *a3;
        ssft_hlp_Unlock(a1, v19);
        log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsSetOutDevice : End", v14, v15, v16, v18);
      }
    }

    return ssft_MapTtsegErrToAPI(v13);
  }

  return v8;
}

uint64_t ssft_hlp_LockFromIdle(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v11 = critsec_Enter(*(a1 + 80));
  if ((v11 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18033, "%s%s%s%x", v7, v8, v9, v10, "function");
  }

  else
  {
    if (*(a1 + 88) == 1)
    {
      *a4 = 1;
      *(a1 + 88) = a3;
    }

    else
    {
      log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18032, "%s%s", v7, v8, v9, v10, "function");
      LODWORD(v11) = -1946148847;
    }

    v12 = critsec_Leave(*(a1 + 80));
    if (v12 >= 0 || v11 <= -1)
    {
      return v11;
    }

    else
    {
      return v12;
    }
  }

  return v11;
}

uint64_t ssft_hlp_Unlock(uint64_t result, int a2)
{
  if (a2)
  {
    v3 = result;
    if ((critsec_Enter(*(result + 80)) & 0x80000000) != 0)
    {
      return log_OutPublic(*(*(v3 + 32) + 32), "VEAPI", 18033, "%s%x", v4, v5, v6, v7, "lhError");
    }

    else
    {
      *(v3 + 88) = a2;
      v8 = *(v3 + 80);

      return critsec_Leave(v8);
    }
  }

  return result;
}

uint64_t ve_ttsProcessPhon2Speech(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2147483656;
  v30 = 0;
  v29 = 0;
  if (a2 == 1750024778 && a1 != 0)
  {
    v31 = 0;
    v32 = 0;
    if (*a1 == 1934574154)
    {
      log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsProcessPhon2Speech : Begin", a6, a7, a8, v29);
      inited = InitRsrcFunction(*(a1 + 16), *(a1 + 24), &v29);
      if (inited < 0)
      {
        return ssft_MapTtsegErrToAPI(inited);
      }

      inited = ssft_hlp_LockFromIdle(a1, "ve_ttsProcessPhon2Speech", 3, &v30);
      if (inited < 0)
      {
        return ssft_MapTtsegErrToAPI(inited);
      }

      v16 = -1946148857;
      if (a3)
      {
        v17 = *(a3 + 16);
        if (v17)
        {
          v18 = *(a3 + 8);
          if (v18)
          {
            if (*a3 > 1u)
            {
              v16 = -1946148096;
            }

            else
            {
              if (!*(a1 + 504))
              {
                ssft_hlp_Unlock(a1, v30);
                return 2147485824;
              }

              v35 = 0;
              v36 = 0;
              NullHandle = safeh_GetNullHandle();
              v34 = v19;
              v31 = safeh_GetNullHandle();
              v32 = v20;
              if (*v17 == 35 && v17[(v18 - 1)] == 35)
              {
                v21 = InitRsrcFunction(*(a1 + 16), *(a1 + 24), &v36);
                if ((v21 & 0x80000000) == 0)
                {
                  v22 = *(*(*(a1 + 8) + 528) + 32);
                  v23 = safeh_GetNullHandle();
                  v24 = v22(v23);
                  if ((v24 & 0x80000000) == 0)
                  {
                    v24 = (*(*(*(a1 + 8) + 528) + 64))(v31, v32, 192, "text/x-realspeak-phonemes;charset=tts", 0, 2, &NullHandle);
                    if ((v24 & 0x80000000) == 0)
                    {
                      v24 = (*(*(*(a1 + 8) + 528) + 112))(NullHandle, v34, &v35, v18);
                      if ((v24 & 0x80000000) == 0)
                      {
                        if (v18)
                        {
                          v25 = 0;
                          do
                          {
                            v26 = v17[v25];
                            if (v26 < 0)
                            {
                              LOBYTE(v26) = ssft_AnsiToOemTable[v17[v25] & 0x7F];
                            }

                            *(v35 + v25++) = v26;
                          }

                          while (v18 > v25);
                        }

                        v24 = (*(*(*(a1 + 8) + 528) + 120))(NullHandle, v34, v18);
                      }
                    }
                  }

                  v16 = v24;
                  if (NullHandle)
                  {
                    (*(*(*(a1 + 8) + 528) + 72))(NullHandle, v34);
                  }

                  if (v16 < 0)
                  {
                    if (v31)
                    {
                      (*(*(*(a1 + 8) + 528) + 40))(v31, v32);
                      v31 = safeh_GetNullHandle();
                      v32 = v28;
                    }

                    goto LABEL_32;
                  }

                  v21 = ssft_hlp_ProcessMessage2Speech(a1, 1, v31, v32);
                }

                v16 = v21;
              }

              else
              {
                v16 = -2147483641;
              }
            }
          }
        }
      }

LABEL_32:
      log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsProcessPhon2Speech : End", v13, v14, v15, v29);
      if (v30)
      {
        ssft_hlp_Unlock(a1, v30);
      }

      inited = v16;
      return ssft_MapTtsegErrToAPI(inited);
    }
  }

  return v8;
}

uint64_t ssft_hlp_ProcessMessage2Speech(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 440);
  if (a2 == 2 || v8 != a2)
  {
    *(a1 + 440) = a2;
    v9 = ssft_hlp_PipelineName(a1, 1, a1 + 120);
    if (v9 < 0)
    {
      v13 = v9;
      v17 = 0;
      *(a1 + 440) = v8;
      goto LABEL_16;
    }
  }

  else if ((~*(a1 + 112) & 0xC) == 0)
  {
    goto LABEL_7;
  }

  v10 = (*(*(*(a1 + 8) + 480) + 192))(*(a1 + 96), *(a1 + 104), a1 + 310, a2);
  if (v10 < 0)
  {
LABEL_14:
    v13 = v10;
    v17 = 0;
    goto LABEL_16;
  }

LABEL_7:
  *(a1 + 456) = safeh_GetNullHandle();
  *(a1 + 464) = v11;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0;
  if (a2 == 2)
  {
    v12 = 256;
  }

  else
  {
    v12 = 1;
  }

  *(a1 + 452) = 1;
  v10 = ssft_hlp_PcmNotify(a1, v12);
  if (v10 < 0)
  {
    goto LABEL_14;
  }

  v27 = 0;
  v13 = ssft_hlp_ReadStopFlag(a1, &v27);
  if (!(v13 | v27))
  {
    v14 = *(*(*(a1 + 8) + 480) + 104);
    NullHandle = safeh_GetNullHandle();
    v13 = v14(*(a1 + 96), *(a1 + 104), a3, a4, NullHandle, v16);
  }

  v17 = 1;
LABEL_16:
  v18 = (*(*(*(a1 + 8) + 528) + 40))(a3, a4);
  if (v13 >= 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v13;
  }

  if (v17)
  {
    if (a2 == 2)
    {
      v20 = 512;
    }

    else
    {
      v20 = 2;
    }

    v21 = ssft_hlp_PcmNotify(a1, v20);
    if (v19 >= 0)
    {
      v19 = v21;
    }

    else
    {
      v19 = v19;
    }
  }

  if ((~*(a1 + 112) & 0xC) != 0)
  {
    v22 = (*(*(*(a1 + 8) + 480) + 192))(*(a1 + 96), *(a1 + 104), 0, a2);
    if (v19 >= 0)
    {
      v19 = v22;
    }

    else
    {
      v19 = v19;
    }
  }

  if ((v19 & 0x80000000) == 0)
  {
    v26 = 0;
    v23 = ssft_hlp_ReadStopFlag(a1, &v26);
    if (v26 != 1 || v23 <= -1)
    {
      return v23;
    }

    else
    {
      return 2348820487;
    }
  }

  return v19;
}

uint64_t ve_ttsProcessText2Speech(uint64_t a1, int a2, uint64_t a3)
{
  v6 = 2147483656;
  NullHandle = safeh_GetNullHandle();
  v22 = v7;
  v20 = 0;
  if (a2 != 1750024778 || !a1 || *a1 != 1934574154)
  {
    return v6;
  }

  log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsProcessText2Speech : Begin", v8, v9, v10, v18);
  v11 = ssft_hlp_LockFromIdle(a1, "ve_ttsProcessText2Speech", 3, &v20);
  if ((v11 & 0x80000000) == 0)
  {
    v15 = -1946148857;
    if (!a3 || !*(a3 + 16) || !*(a3 + 8))
    {
LABEL_18:
      log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsProcessText2Speech : End", v12, v13, v14, v19);
      if (v20)
      {
        ssft_hlp_Unlock(a1, v20);
      }

      return ssft_MapTtsegErrToAPI(v15);
    }

    if (*a3 > 1u)
    {
      v15 = -1946148096;
      goto LABEL_18;
    }

    v16 = SetMimeTypeAccordingToTextFormat(a1, *a3);
    if (v16 < 0)
    {
LABEL_13:
      v15 = v16;
      goto LABEL_18;
    }

    if (*(a1 + 504))
    {
      v16 = ssft_hlp_CreateMessageWithText(a1, a3, 0, &NullHandle);
      if ((v16 & 0x80000000) == 0)
      {
        v16 = ssft_hlp_ProcessMessage2Speech(a1, 0, NullHandle, v22);
      }

      goto LABEL_13;
    }

    ssft_hlp_Unlock(a1, v20);
    return 2147485824;
  }

  return ssft_MapTtsegErrToAPI(v11);
}

uint64_t SetMimeTypeAccordingToTextFormat(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    __s1 = 0;
    Str = paramc_ParamGetStr(*(*(a1 + 32) + 40), "inputmimetype", &__s1);
    if ((Str & 0x80000000) != 0)
    {
      v18 = Str;
      log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 51023, "%s%x", v4, v5, v6, v7, "lhError");
    }

    else
    {
      v8 = SetSavedMimeTypeforPlainText(a1, __s1);
      v13 = *(a1 + 32);
      if (v8)
      {
        v18 = paramc_ParamSetStr(*(v13 + 40), "inputmimetype", "application/synthesis+ssml");
        if ((v18 & 0x80000000) != 0)
        {
          log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 51020, "%s%x", v14, v15, v16, v17, "lhError");
        }
      }

      else
      {
        v18 = 2348818442;
        log_OutPublic(*(v13 + 32), "VEAPI", 51024, "%s%x", v9, v10, v11, v12, "lhError");
      }
    }
  }

  else
  {
    v19 = *(a1 + 616);
    if (v19)
    {
      v18 = paramc_ParamSetStr(*(*(a1 + 32) + 40), "inputmimetype", v19);
      if ((v18 & 0x80000000) != 0)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 51021, "%s%x", v20, v21, v22, v23, "lhError");
      }

      else
      {
        SetSavedMimeTypeforPlainText(a1, 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return v18;
}

uint64_t ssft_hlp_CreateMessageWithText(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  __dst = 0;
  v29 = 0;
  NullHandle = safeh_GetNullHandle();
  v27 = v9;
  __s1 = 0;
  if (!a4)
  {
    return 2147483655;
  }

  *a4 = safeh_GetNullHandle();
  a4[1] = v10;
  inited = InitRsrcFunction(*(a1 + 16), *(a1 + 24), &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = *(*(*(a1 + 8) + 528) + 32);
  v13 = safeh_GetNullHandle();
  v14 = v12(v13);
  if ((v14 & 0x80000000) == 0)
  {
    if ((paramc_ParamGetStr(*(v29 + 40), "inputmimetype", &__s1) & 0x80000000) != 0)
    {
      v18 = "text/plain;charset=utf-16";
      __s1 = "text/plain;charset=utf-16";
      v17 = &aSMS_UTF16;
      v16 = 20;
    }

    else
    {
      v15 = cstdlib_strcmp(__s1, "text/plain;charset=utf-8");
      v16 = v15 ? 20 : 10;
      v17 = v15 ? &aSMS_UTF16 : "\x1B\\tn=sms\\ ";
      v18 = __s1;
    }

    v14 = (*(*(*(a1 + 8) + 528) + 64))(*a4, a4[1], 192, v18, 0, 2, &NullHandle);
    v20 = a3 != 2 && *(a1 + 116) == 2;
    v21 = !v20;
    v22 = v20 ? v16 : 0;
    if ((v14 & 0x80000000) == 0)
    {
      v14 = (*(*(*(a1 + 8) + 528) + 112))(NullHandle, v27, &__dst, v22 + v8);
      if ((v14 & 0x80000000) == 0)
      {
        if (!v21)
        {
          cstdlib_memcpy(__dst, v17, v16);
        }

        cstdlib_memcpy(__dst + v22, v7, v8);
        *(a1 + 448) = v22;
        v14 = (*(*(*(a1 + 8) + 528) + 120))(NullHandle, v27, v22 + v8);
      }
    }
  }

  v19 = v14;
  if (NullHandle)
  {
    (*(*(*(a1 + 8) + 528) + 72))(NullHandle, v27);
  }

  if ((v19 & 0x80000000) != 0 && *a4)
  {
    (*(*(*(a1 + 8) + 528) + 40))(*a4, a4[1]);
    *a4 = safeh_GetNullHandle();
    a4[1] = v23;
  }

  return v19;
}

uint64_t ve_ttsAnalyzeText(uint64_t a1, int a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  NullHandle = safeh_GetNullHandle();
  v32 = v6;
  v30 = 0;
  __b = 0;
  v28 = 0;
  v29 = 0;
  __src = 0;
  cstdlib_memset(&__b, 0, 0x18uLL);
  cstdlib_memset(__dst, 0, 0x40uLL);
  result = 2147483656;
  if (a2 == 1750024778 && a1 && *a1 == 1934574154)
  {
    log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsAnalyzeText : Begin", v7, v8, v9, v24);
    v11 = ssft_hlp_LockFromIdle(a1, "ve_ttsAnalyzeText", 3, &v30);
    if (v11 < 0)
    {
      v16 = v11;
      return ssft_MapTtsegErrToAPI(v16);
    }

    if ((paramc_ParamGetStr(*(*(a1 + 32) + 40), "extendedreferences", &__src) & 0x80000000) == 0)
    {
      cstdlib_strncpy(__dst, __src, 0x3FuLL);
    }

    Str = paramc_ParamSetStr(*(*(a1 + 32) + 40), "extendedreferences", "no");
    if ((Str & 0x80000000) == 0)
    {
      v16 = -1946148857;
      if (!a3 || !*(a3 + 16) || !*(a3 + 8))
      {
        goto LABEL_27;
      }

      if (*a3 > 1u)
      {
        v16 = -1946148096;
        goto LABEL_27;
      }

      Str = SetMimeTypeAccordingToTextFormat(a1, *a3);
      if ((Str & 0x80000000) == 0)
      {
        LODWORD(__b) = *a3;
        Str = paramc_ParamGetStr(*(*(a1 + 32) + 40), "inputmimetype", &__src);
        if ((Str & 0x80000000) == 0)
        {
          if (cstdlib_strcmp(__src, "text/plain;charset=utf-16"))
          {
            if (cstdlib_strcmp(__src, "text/plain;charset=utf-8") && cstdlib_strcmp(__src, "application/synthesis+ssml"))
            {
              log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18023, "%s%s", v17, v18, v19, v20, "typeOfChar");
              v16 = -2147483641;
LABEL_27:
              if (__dst[0])
              {
                paramc_ParamSetStr(*(*(a1 + 32) + 40), "extendedreferences", __dst);
              }

              if (v29)
              {
                heap_Free(*(*(a1 + 32) + 8), v29);
              }

              log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsAnalyzeText : End", v13, v14, v15, v25);
              if (v30)
              {
                ssft_hlp_Unlock(a1, v30);
              }

              return ssft_MapTtsegErrToAPI(v16);
            }

            v28 = *(a3 + 8);
            v21 = *(*(a1 + 32) + 8);
            v22 = v28 + 1;
          }

          else
          {
            v28 = *(a3 + 8);
            v21 = *(*(a1 + 32) + 8);
            v22 = v28 + 2;
          }

          v23 = heap_Calloc(v21, 1, v22);
          v29 = v23;
          v16 = -2147483638;
          if (!v23)
          {
            goto LABEL_27;
          }

          cstdlib_memcpy(v23, *(a3 + 16), *(a3 + 8));
          if (!*(a1 + 504))
          {
            v16 = -2147481472;
            goto LABEL_27;
          }

          Str = ssft_hlp_CreateMessageWithText(a1, &__b, 2, &NullHandle);
          if ((Str & 0x80000000) == 0)
          {
            Str = ssft_hlp_ProcessMessage2Speech(a1, 2, NullHandle, v32);
          }
        }
      }
    }

    v16 = Str;
    goto LABEL_27;
  }

  return result;
}

uint64_t ve_ttsProcessText2SpeechStartingAt(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = 2147483656;
  NullHandle = safeh_GetNullHandle();
  v46 = v11;
  v44 = 0;
  v42 = -1;
  v43 = 0;
  v40 = -1;
  v41 = -1;
  v38 = -1;
  v39 = -1;
  __src = 0;
  v36 = 0;
  if (a2 != 1750024778 || !a1 || *a1 != 1934574154)
  {
    return v10;
  }

  log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsProcessText2SpeechStartingAt : Begin", v12, v13, v14, v34);
  v15 = ssft_hlp_LockFromIdle(a1, "ve_ttsProcessText2SpeechStartingAt", 3, &v44 + 1);
  if ((v15 & 0x80000000) == 0)
  {
    v19 = -1946148857;
    if (!a3 || !*(a3 + 16) || !*(a3 + 8))
    {
      goto LABEL_32;
    }

    if (*a3 > 1u)
    {
      v19 = -1946148096;
      goto LABEL_32;
    }

    if (*(a1 + 504))
    {
      Int = paramc_ParamGetInt(*(*(a1 + 32) + 40), "enablerett", &v44);
      if ((Int & 0x80000000) == 0)
      {
        paramc_ParamGetInt(*(*(a1 + 32) + 40), "enableluattt", &v43);
        v21 = paramc_ParamSetInt(*(*(a1 + 32) + 40), "enablerett", 0);
        if (v21 < 0)
        {
          v19 = v21;
          goto LABEL_31;
        }

        v19 = paramc_ParamSetInt(*(*(a1 + 32) + 40), "enableluattt", 0);
        if ((v19 & 0x80000000) == 0)
        {
          if (a4)
          {
            v25 = *(a4 + 40 * a5 + 8);
            v26 = *(a3 + 8);
            v27 = v26 >= v25;
            v28 = v26 - v25;
            if (!v27)
            {
              log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsProcessText2SpeechStartingAt : TA Index is out of boundary", v22, v23, v24, v35);
              goto LABEL_31;
            }

            v31 = a1 + 560;
            *(a1 + 560) = *a3;
            *(a1 + 568) = v28;
            *(a1 + 576) = *(a3 + 16) + v25;
            v30 = *(a4 + 40 * a5 + 16);
          }

          else
          {
            v30 = 0;
            v31 = a1 + 560;
            *(a1 + 560) = *a3;
            v32 = *(a3 + 16);
            *(a1 + 568) = *(a3 + 8);
            *(a1 + 576) = v32;
          }

          paramc_ParamGetInt(*(*(a1 + 32) + 40), "volume", &v42);
          paramc_ParamGetInt(*(*(a1 + 32) + 40), "waitfactor", &v41);
          paramc_ParamGetInt(*(*(a1 + 32) + 40), "rate", &v40);
          paramc_ParamGetInt(*(*(a1 + 32) + 40), "pitch", &v39);
          paramc_ParamGetInt(*(*(a1 + 32) + 40), "readmode", &v38);
          paramc_ParamGetStr(*(*(a1 + 32) + 40), "inputmimetype", &__src);
          cstdlib_strcpy(__dst, __src);
          paramc_ParamSetStrPermanent(*(*(a1 + 32) + 40), "inputmimetype", "text/plain;charset=utf-8");
          paramc_ParamSetStr(*(*(a1 + 32) + 40), "lidon", &v36);
          if (v30 && (*(*(*(a1 + 8) + 480) + 184))(*(a1 + 96), *(a1 + 104), v30) == 1)
          {
            ssft_hlp_ApplyTaInfoParameters(v30, *(*(a1 + 32) + 40));
          }

          v33 = ssft_hlp_CreateMessageWithText(a1, v31, 0, &NullHandle);
          if ((v33 & 0x80000000) == 0)
          {
            v33 = ssft_hlp_ProcessMessage2Speech(a1, 0, NullHandle, v46);
          }

          v19 = v33;
          paramc_ParamSetStr(*(*(a1 + 32) + 40), "lidon", &v36);
          paramc_ParamSetInt(*(*(a1 + 32) + 40), "volume", v42);
          paramc_ParamSetInt(*(*(a1 + 32) + 40), "audioinsertervolume", v42);
          paramc_ParamSetInt(*(*(a1 + 32) + 40), "waitfactor", v41);
          paramc_ParamSetInt(*(*(a1 + 32) + 40), "rate", v40);
          paramc_ParamSetInt(*(*(a1 + 32) + 40), "audioinserterrate", v40);
          paramc_ParamSetInt(*(*(a1 + 32) + 40), "pitch", v39);
          paramc_ParamSetInt(*(*(a1 + 32) + 40), "readmode", v38);
          paramc_ParamSetStrPermanent(*(*(a1 + 32) + 40), "inputmimetype", __dst);
        }

LABEL_31:
        paramc_ParamSetInt(*(*(a1 + 32) + 40), "enablerett", v44);
        paramc_ParamSetInt(*(*(a1 + 32) + 40), "enableluattt", v43);
        goto LABEL_32;
      }

      v19 = Int;
LABEL_32:
      log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsProcessText2SpeechStartingAt : End", v16, v17, v18, v35);
      if (HIDWORD(v44))
      {
        ssft_hlp_Unlock(a1, SHIDWORD(v44));
      }

      return ssft_MapTtsegErrToAPI(v19);
    }

    ssft_hlp_Unlock(a1, SHIDWORD(v44));
    return 2147485824;
  }

  return ssft_MapTtsegErrToAPI(v15);
}

size_t ssft_hlp_ApplyTaInfoParameters(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = 0x6E776F6E6B6E75;
  v4 = (a1 + 64);
  if (!cstdlib_strcmp((a1 + 64), v12) || cstdlib_strlen(v4) == 7)
  {
    v4 = v12;
LABEL_4:
    paramc_ParamSetStr(a2, "lidon", v4);
    goto LABEL_5;
  }

  if (cstdlib_strlen(v4) == 3)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = *(a1 + 4);
  if (v5 != 9999)
  {
    paramc_ParamSetUInt(a2, "volume", v5);
    paramc_ParamSetUInt(a2, "audioinsertervolume", *(a1 + 4));
  }

  v6 = *(a1 + 20);
  if (v6 != 9999)
  {
    paramc_ParamSetUInt(a2, "waitfactor", v6);
  }

  v7 = *(a1 + 8);
  if (v7 != 9999)
  {
    paramc_ParamSetUInt(a2, "rate", v7);
    paramc_ParamSetUInt(a2, "audioinserterrate", *(a1 + 8));
  }

  v8 = *(a1 + 12);
  if (v8 != 9999)
  {
    paramc_ParamSetUInt(a2, "pitch", v8);
  }

  v9 = *(a1 + 24);
  if (v9 != 9999)
  {
    paramc_ParamSetUInt(a2, "readmode", v9);
  }

  v10 = *(a1 + 28);
  if (v10)
  {
    paramc_ParamSetUInt(a2, "initcommonbiasvalue", v10);
  }

  result = cstdlib_strlen((a1 + 32));
  if (result == 3)
  {
    return paramc_ParamSetStr(a2, "initcommonbiaslanguage", (a1 + 32));
  }

  return result;
}

uint64_t ve_ttsProcessText2SpeechCooperatively(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2147483656;
  v43 = 0;
  v42 = 0;
  v10 = a2 != 1750024778 || a1 == 0;
  if (!v10 && *a1 == 1934574154)
  {
    log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsProcessText2SpeechCooperatively : Begin", a6, a7, a8, v40);
    inited = InitRsrcFunction(*(a1 + 16), *(a1 + 24), &v43);
    if (inited < 0)
    {
      MessageWithText = inited;
    }

    else
    {
      MessageWithText = critsec_Enter(*(a1 + 80));
      if ((MessageWithText & 0x80000000) == 0)
      {
        v20 = *(a1 + 88);
        if ((v20 - 4) >= 2)
        {
          if (v20 == 1)
          {
            *(a1 + 88) = 4;
LABEL_17:
            v21 = critsec_Leave(*(a1 + 80));
            if (v21 < 0 && MessageWithText > -1)
            {
              MessageWithText = v21;
            }

            if (MessageWithText < 0)
            {
              return ssft_MapTtsegErrToAPI(MessageWithText);
            }

            if (v20 == 1)
            {
              *a4 = 1;
              *a5 = 0;
              *(a5 + 8) = 0;
              *(a5 + 24) = 0;
              if (!a3 || !*(a3 + 16))
              {
                MessageWithText = -1946148857;
                goto LABEL_50;
              }

              MessageWithText = -1946148857;
              if (!*(a3 + 8))
              {
                goto LABEL_50;
              }

              if (*a3 > 1u)
              {
                MessageWithText = -1946148096;
                goto LABEL_50;
              }

              v26 = SetMimeTypeAccordingToTextFormat(a1, *a3);
              if ((v26 & 0x80000000) == 0)
              {
                MessageWithText = ssft_hlp_CreateMessageWithText(a1, a3, 0, (a1 + 456));
                if ((MessageWithText & 0x80000000) == 0)
                {
                  v27 = *(a1 + 440);
                  if (v27)
                  {
                    *(a1 + 440) = 0;
                    v28 = ssft_hlp_PipelineName(a1, 1, a1 + 120);
                    if (v28 < 0)
                    {
                      MessageWithText = v28;
                      *(a1 + 440) = v27;
                      goto LABEL_50;
                    }
                  }

                  else if ((~*(a1 + 112) & 0xC) == 0)
                  {
                    goto LABEL_51;
                  }

                  v37 = (*(*(*(a1 + 8) + 480) + 192))(*(a1 + 96), *(a1 + 104), a1 + 310, 0);
                  goto LABEL_45;
                }

LABEL_50:
                v42 = 2;
                goto LABEL_51;
              }

LABEL_48:
              MessageWithText = v26;
              goto LABEL_50;
            }

            if (*(a5 + 16) && v20 != 6 && (v29 = *(a5 + 8)) != 0)
            {
              *(a1 + 472) = a4;
              *(a1 + 480) = a5;
              *(a1 + 488) = v29;
              *(a1 + 492) = *(a5 + 24);
              paramc_ParamSetUInt(*(*(a1 + 32) + 40), "audiooutputbufsamples", v29 >> 1);
              *a4 = 4;
              *a5 = 0;
              *(a5 + 8) = 0;
              *(a5 + 24) = 0;
              v30 = *(*(*(a1 + 8) + 480) + 176);
              NullHandle = safeh_GetNullHandle();
              v33 = v30(*(a1 + 96), *(a1 + 104), *(a1 + 456), *(a1 + 464), NullHandle, v32, &v42);
              MessageWithText = v33;
              if ((v33 & 0x80000000) == 0)
              {
                goto LABEL_51;
              }

              *(a5 + 8) = 0;
              *(a5 + 24) = 0;
              if ((v33 & 0x1FFF) != 0x807)
              {
                goto LABEL_50;
              }
            }

            else
            {
              *a4 = 32;
              *a5 = 0;
              *(a5 + 8) = 0;
              *(a5 + 24) = 0;
              if (v20 == 6)
              {
                *(a1 + 472) = a4;
                *(a1 + 480) = a5;
                *(a1 + 488) = 0;
                v34 = *(*(*(a1 + 8) + 480) + 176);
                v35 = safeh_GetNullHandle();
                MessageWithText = v34(*(a1 + 96), *(a1 + 104), *(a1 + 456), *(a1 + 464), v35, v36, &v42);
                if ((MessageWithText & 0x1FFF) != 0x807)
                {
LABEL_46:
                  if (MessageWithText < 0)
                  {
                    goto LABEL_50;
                  }

LABEL_51:
                  if ((v42 & 2) != 0)
                  {
                    *a4 = 2;
                    (*(*(*(a1 + 8) + 528) + 40))(*(a1 + 456), *(a1 + 464));
                    *(a1 + 456) = safeh_GetNullHandle();
                    *(a1 + 464) = v38;
                    if ((~*(a1 + 112) & 0xC) != 0)
                    {
                      (*(*(*(a1 + 8) + 480) + 192))(*(a1 + 96), *(a1 + 104), 0, 0);
                    }

                    if (MessageWithText > -1 && v20 == 6)
                    {
                      MessageWithText = -1946146809;
                    }

                    ssft_hlp_Unlock(a1, 1);
                  }

                  log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsProcessText2SpeechCooperatively : End", v22, v23, v24, v41);
                  return ssft_MapTtsegErrToAPI(MessageWithText);
                }
              }

              else
              {
                v26 = (*(*(*(a1 + 8) + 480) + 128))(*(a1 + 96), *(a1 + 104));
                if (v26 < 0)
                {
                  goto LABEL_48;
                }
              }
            }

            v37 = ssft_hlp_SetStateInterrupted(a1);
LABEL_45:
            MessageWithText = v37;
            goto LABEL_46;
          }

          if (!a3 && v20 == 6)
          {
            goto LABEL_17;
          }
        }

        else if (!a3)
        {
          goto LABEL_17;
        }

        log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18032, "%s%s", v15, v16, v17, v18, "function");
        MessageWithText = -1946148847;
        goto LABEL_17;
      }

      log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18033, "%s%s%s%x", v15, v16, v17, v18, "function");
    }

    return ssft_MapTtsegErrToAPI(MessageWithText);
  }

  return result;
}

uint64_t ssft_hlp_PipelineName(uint64_t a1, int a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  inited = InitRsrcFunction(*(a1 + 16), *(a1 + 24), &v17);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (!a2)
  {
    v20 = 0;
    v19 = 0u;
    memset(__b, 0, sizeof(__b));
    cstdlib_memset(__b, 0, 0x154uLL);
    cstdlib_strcpy(__b, a3);
    cstdlib_strcpy(&__b[8] + 8, (a3 + 64));
    v7 = *(a3 + 96);
    if (v7 == 11)
    {
      v8 = 11025;
    }

    else if (v7 == 22)
    {
      v8 = 22050;
    }

    else
    {
      v8 = 1000 * v7;
    }

    DWORD2(__b[11]) = v8;
    cstdlib_strcpy(&__b[11] + 12, (a3 + 98));
    cstdlib_strcpy(&__b[13] + 12, (a3 + 130));
    cstdlib_strcpy(&v19 + 8, (a3 + 162));
    cstdlib_strcpy(&__b[17] + 4, (a3 + 174));
    cstdlib_strcpy(&__b[18] + 4, "pcm");
    inited = (*(*(*(a1 + 8) + 504) + 96))(*(*(a1 + 8) + 512), *(*(a1 + 8) + 520), *(v17 + 24), *(v17 + 40), __b);
    if ((inited & 0x80000000) == 0)
    {
      cstdlib_strcpy(a3, __b);
      cstdlib_strcpy((a3 + 64), &__b[8] + 8);
      *(a3 + 96) = DWORD2(__b[11]) / 0x3E8;
      cstdlib_strcpy((a3 + 98), &__b[11] + 12);
      cstdlib_strcpy((a3 + 130), &__b[13] + 12);
      cstdlib_strcpy((a3 + 162), &v19 + 8);
      cstdlib_strcpy((a3 + 174), &__b[17] + 4);
      goto LABEL_10;
    }

    return inited;
  }

LABEL_10:
  LH_utoa(*(a3 + 96), __b, 0xAu);
  cstdlib_strcpy((a3 + 190), "pipeline/");
  cstdlib_strcat((a3 + 190), a3);
  cstdlib_strcat((a3 + 190), "/");
  cstdlib_strcat((a3 + 190), (a3 + 64));
  cstdlib_strcat((a3 + 190), "/");
  cstdlib_strcat((a3 + 190), __b);
  v10 = (a3 + 98);
  v9 = *(a3 + 98);
  if (*(a3 + 98) && (v9 != 102 && v9 != 70 || (*(a3 + 99) | 0x20) != 0x75 || (*(a3 + 100) | 0x20) != 0x6C || (*(a3 + 101) | 0x20) != 0x6C || *(a3 + 102)))
  {
    cstdlib_strcat((a3 + 190), "/");
    if (*(a3 + 130) && cstdlib_strlen((a3 + 130)))
    {
      v10 = (a3 + 130);
    }

    cstdlib_strcat((a3 + 190), v10);
    v11 = (a3 + 162);
    if (*(a3 + 162) && cstdlib_strlen((a3 + 162)) && cstdlib_strcmp((a3 + 162), "0.0.0"))
    {
      cstdlib_strcat((a3 + 190), "/");
    }

    else
    {
      v11 = "";
    }

    cstdlib_strcat((a3 + 190), v11);
  }

  v13 = *(a3 + 320);
  if (v13 == 2)
  {
LABEL_30:
    cstdlib_strcat((a3 + 190), "/");
    cstdlib_strcat((a3 + 190), (a3 + 174));
    v14 = "/pcm";
    goto LABEL_32;
  }

  if (v13 != 1)
  {
    if (v13)
    {
      return 2348818433;
    }

    goto LABEL_30;
  }

  v14 = "/phon2speech/pcm";
LABEL_32:
  cstdlib_strcat((a3 + 190), v14);
  v12 = brk_TagQueryEx(*(v17 + 24), a3 + 190, "BROKERSTRING", 1, &v16);
  if ((v12 & 0x80000000) == 0)
  {
    brk_TagRelease(*(v17 + 24), v16);
  }

  return v12;
}

uint64_t ssft_hlp_SetStateInterrupted(uint64_t a1)
{
  v6 = critsec_Enter(*(a1 + 80));
  if ((v6 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18033, "%s%x", v2, v3, v4, v5, "lhError");
  }

  else
  {
    v7 = *(a1 + 88);
    if (v7 > 6)
    {
      v6 = 2348818449;
    }

    else
    {
      v8 = 1 << v7;
      if ((v8 & 7) != 0)
      {
        v6 = 2348818449;
        log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18032, 0, v2, v3, v4, v5, v10);
      }

      else if ((v8 & 0x18) != 0)
      {
        *(a1 + 88) = 6;
      }
    }

    critsec_Leave(*(a1 + 80));
  }

  return v6;
}

uint64_t ve_ttsSetParamList(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = 2147483656;
  v65 = 0;
  v64 = 0;
  __src = 0;
  v62 = 0;
  if (a2 != 1750024778)
  {
    return v8;
  }

  if (!a1)
  {
    return v8;
  }

  v72 = 0;
  memset(v71, 0, sizeof(v71));
  v69 = 0u;
  v70 = 0u;
  memset(v68, 0, sizeof(v68));
  memset(__dst, 0, sizeof(__dst));
  if (*a1 != 1934574154)
  {
    return v8;
  }

  log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsSetParamList : Begin", a6, a7, a8, v58);
  if (!a3)
  {
    return 2147483654;
  }

  inited = InitRsrcFunction(*(a1 + 16), *(a1 + 24), &v65);
  if (inited < 0)
  {
    return ssft_MapTtsegErrToAPI(inited);
  }

  cstdlib_memcpy(__dst, (a1 + 120), 0x144uLL);
  v18 = *(a1 + 112);
  v17 = *(a1 + 116);
  if ((~v18 & 0xC) != 0 && (a4 > 1 || *a3 != 20))
  {
LABEL_126:
    inited = -1946148847;
    log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18019, "%s%x", v13, v14, v15, v16, "lhError");
    goto LABEL_177;
  }

  if (v71[62])
  {
    v19 = 0;
    if (!a4)
    {
      v26 = 0;
      v47 = 1;
      v45 = 1;
      v46 = 1;
LABEL_129:
      if (v19)
      {
        if (!v45)
        {
          BYTE2(v69) = 0;
        }

        if (v46)
        {
          v71[34] = 0;
        }

        inited = ssft_hlp_PipelineName(a1, 0, __dst);
        if (inited < 0)
        {
          if (!(__dst[0] | v68[0]))
          {
            goto LABEL_143;
          }

          if (v47)
          {
            LOWORD(v69) = 0;
          }

          BYTE2(v69) = 0;
          if (v45)
          {
            v71[2] = 0;
          }

          if (v46)
          {
            v71[34] = 0;
          }

          inited = ssft_hlp_PipelineName(a1, 0, __dst);
          if (inited < 0)
          {
LABEL_143:
            log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18020, "%s%x", v48, v14, v15, v16, "lhError");
            goto LABEL_174;
          }
        }
      }

      else if (inited < 0)
      {
        goto LABEL_174;
      }

      v49 = v18 & 0xC;
      v50 = v49 == 12;
      v51 = (*(a1 + 112) >> 2) & (*(a1 + 112) << 28 >> 31);
      if (v51 == v50 || v49 == 12)
      {
        if (v51 != v50)
        {
          v19 = 1;
        }

        if (v19 != 1 || v49 != 12)
        {
LABEL_160:
          *(a1 + 112) = v18;
          *(a1 + 116) = v17;
          if (!v19)
          {
            goto LABEL_174;
          }

LABEL_161:
          cstdlib_memcpy((a1 + 120), __dst, 0x144uLL);
          if (!v26)
          {
            goto LABEL_177;
          }

          goto LABEL_175;
        }

        *(a1 + 440) = 0;
        v72 = 0;
        inited = (*(*(*(a1 + 8) + 480) + 192))(*(a1 + 96), *(a1 + 104), &v71[62], 0);
        if ((inited & 0x80000000) == 0)
        {
          *(a1 + 112) = v18;
          *(a1 + 116) = v17;
          goto LABEL_161;
        }
      }

      else
      {
        v54 = (*(*(*(a1 + 8) + 480) + 192))(*(a1 + 96), *(a1 + 104), 0, 0);
        inited = v54;
        if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_160;
        }
      }

      log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18022, "%s%x", v55, v14, v15, v16, "lhError");
      goto LABEL_174;
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_126;
    }

    v42 = a4;
    v43 = a3;
    while (1)
    {
      v44 = *v43;
      v43 += 33;
      if ((v44 - 1) < 4)
      {
        break;
      }

      if (!--v42)
      {
        goto LABEL_126;
      }
    }

    v19 = 1;
  }

  v20 = a4;
  v21 = a4;
  v22 = a3;
  while (1)
  {
    v24 = *v22;
    v22 += 33;
    v23 = v24;
    if ((v24 - 8) >= 4 && v23 != 24)
    {
      break;
    }

    if (!--v21)
    {
      v26 = 0;
      goto LABEL_17;
    }
  }

  v56 = ssft_hlp_LockFromIdle(a1, "ve_ttsSetParamList", 2, &v62);
  inited = v56;
  if (v56 < 0)
  {
    v62 = 0;
LABEL_175:
    if (v62)
    {
      ssft_hlp_Unlock(a1, v62);
    }

    goto LABEL_177;
  }

  v26 = 1;
LABEL_17:
  v60 = 0;
  v61 = 0;
  v27 = 0;
  v28 = (a3 + 1);
  while (2)
  {
    switch(*(v28 - 1))
    {
      case 1:
        if (cstdlib_strlen(v28) < 0x40)
        {
          cstdlib_strcpy(__dst, v28);
        }

        else
        {
          __dst[0] = 0;
        }

        v64 = 0;
        if (cstdlib_strlen(__dst) == 3 && (ssft_loc_ConvertToLanguageTLW(*(a1 + 32), &__src, &v64, __dst) & 0x80000000) == 0)
        {
          cstdlib_strcpy(__dst, __src);
          heap_Free(*(*(a1 + 32) + 8), __src);
          __src = 0;
        }

        goto LABEL_87;
      case 2:
        if (cstdlib_strlen(v28) < 0x20)
        {
          cstdlib_strcpy(v68, v28);
        }

        else
        {
          v68[0] = 0;
        }

LABEL_87:
        v19 = 1;
        if (inited < 0)
        {
          goto LABEL_173;
        }

        goto LABEL_113;
      case 3:
        if (cstdlib_strlen(v28) < 0x20)
        {
          cstdlib_strcpy(&v71[2], v28);
        }

        else
        {
          v71[2] = 0;
        }

        v19 = 1;
        v27 = 1;
        if (inited < 0)
        {
          goto LABEL_173;
        }

        goto LABEL_113;
      case 4:
        v36 = *v28;
        if (v36 <= 0xF)
        {
          if (v36 != 8 && v36 != 11)
          {
            goto LABEL_181;
          }

          goto LABEL_91;
        }

        if (v36 == 16 || v36 == 22)
        {
LABEL_91:
          LOWORD(v69) = v36;
          v19 = 1;
          v60 = 1;
          if (inited < 0)
          {
            goto LABEL_173;
          }

LABEL_113:
          v28 += 132;
          if (!--v20)
          {
            v45 = v27 == 0;
            v46 = v61 == 0;
            v47 = v60 == 0;
            goto LABEL_129;
          }

          continue;
        }

LABEL_181:
        log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18013, "%s%u", v13, v14, v15, v16, "frequency");
LABEL_182:
        inited = -1946148857;
        if (v26)
        {
          goto LABEL_175;
        }

LABEL_177:
        log_OutText(*(*(a1 + 32) + 32), "VEAPI", 4, 0, "ve_ttsSetParamList : End", v14, v15, v16, v59);
        return ssft_MapTtsegErrToAPI(inited);
      case 5:
        if (cstdlib_strlen(v28) < 0x80)
        {
          cstdlib_strcpy(v66, v28);
        }

        else
        {
          v66[0] = 0;
        }

        v29 = *(v65 + 40);
        v30 = "extraesclang";
        goto LABEL_102;
      case 6:
        if (cstdlib_strlen(v28) < 0x80)
        {
          cstdlib_strcpy(v66, v28);
        }

        else
        {
          v66[0] = 0;
        }

        v29 = *(v65 + 40);
        v30 = "extraesctn";
        goto LABEL_102;
      case 7:
        v38 = *v28;
        v39 = "text/plain;charset=utf-16";
        if (v38 != 1)
        {
          v39 = 0;
        }

        if (v38 == 2)
        {
          v40 = "text/plain;charset=utf-8";
        }

        else
        {
          v40 = v39;
        }

        if (!v40)
        {
          inited = -1946148849;
          log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18017, "%s%u", v13, v14, v15, v16, "typeOfChar");
          goto LABEL_174;
        }

        inited = paramc_ParamSetStrPermanent(*(v65 + 40), "inputmimetype", v40);
        SetSavedMimeTypeforPlainText(a1, v40);
        if (inited < 0)
        {
          goto LABEL_173;
        }

        goto LABEL_113;
      case 8:
        v37 = paramc_ParamSetUIntPermanent(*(v65 + 40), "volume", *v28);
        if (v37 < 0)
        {
          goto LABEL_167;
        }

        v33 = *(v65 + 40);
        v35 = *v28;
        v34 = "audioinsertervolume";
        goto LABEL_111;
      case 9:
        v37 = paramc_ParamSetUIntPermanent(*(v65 + 40), "rate", *v28);
        if ((v37 & 0x80000000) == 0)
        {
          v33 = *(v65 + 40);
          v35 = *v28;
          v34 = "audioinserterrate";
          goto LABEL_111;
        }

LABEL_167:
        inited = v37;
        goto LABEL_173;
      case 0xA:
        v33 = *(v65 + 40);
        v35 = *v28;
        v34 = "pitch";
        goto LABEL_111;
      case 0xB:
        inited = paramc_ParamSetUIntPermanent(*(v65 + 40), "waitfactor", *v28);
        paramc_ParamSetUIntPermanent(*(v65 + 40), "waitfactorsetbyapi", 1u);
        if (inited < 0)
        {
          goto LABEL_173;
        }

        goto LABEL_113;
      case 0xC:
        v33 = *(v65 + 40);
        v35 = *v28;
        v34 = "readmode";
        goto LABEL_111;
      case 0xD:
        v17 = *v28;
        if ((v17 - 1) < 2)
        {
          goto LABEL_112;
        }

        inited = -1946148849;
        log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18016, "%s%u", v13, v14, v15, v16, "textMode");
        goto LABEL_174;
      case 0xE:
        v35 = *v28;
        if (v35 - 2501 >= 0xFFFFF654)
        {
          v33 = *(v65 + 40);
          v34 = "maxinputlength";
LABEL_111:
          inited = paramc_ParamSetUIntPermanent(v33, v34, v35);
LABEL_112:
          if (inited < 0)
          {
            goto LABEL_173;
          }

          goto LABEL_113;
        }

        inited = -1946148849;
LABEL_173:
        log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18019, "%s%d%s%x", v13, v14, v15, v16, "parameterID");
LABEL_174:
        if (!v26)
        {
          goto LABEL_177;
        }

        goto LABEL_175;
      case 0xF:
        if (*v28 == 1)
        {
          v29 = *(v65 + 40);
          v30 = "lidscope";
          v31 = "user-defined";
        }

        else
        {
          if (*v28)
          {
LABEL_168:
            inited = -1946148849;
            if (!v26)
            {
              goto LABEL_177;
            }

            goto LABEL_175;
          }

          v29 = *(v65 + 40);
          v30 = "lidscope";
          v31 = "none";
        }

LABEL_103:
        inited = paramc_ParamSetStrPermanent(v29, v30, v31);
        if (inited < 0)
        {
          goto LABEL_173;
        }

        goto LABEL_113;
      case 0x10:
        if (*v28 == 1)
        {
          v29 = *(v65 + 40);
          v30 = "lidvoiceswitch";
          v31 = "yes";
        }

        else
        {
          if (*v28)
          {
            goto LABEL_168;
          }

          v29 = *(v65 + 40);
          v30 = "lidvoiceswitch";
          v31 = "no";
        }

        goto LABEL_103;
      case 0x11:
        if (*v28 == 1)
        {
          v29 = *(v65 + 40);
          v30 = "lidmode";
          v31 = "forced-choice";
        }

        else
        {
          if (*v28)
          {
            goto LABEL_168;
          }

          v29 = *(v65 + 40);
          v30 = "lidmode";
          v31 = "memory-bias";
        }

        goto LABEL_103;
      case 0x12:
        if (cstdlib_strlen(v28) < 0x80)
        {
          cstdlib_strcpy(v66, v28);
        }

        else
        {
          v66[0] = 0;
        }

        v29 = *(v65 + 40);
        v30 = "lidlanguages";
        goto LABEL_102;
      case 0x13:
        v32 = *v28;
        if (v32 == 10007)
        {
          v33 = *(v65 + 40);
          v34 = "markermode";
          v35 = -1;
        }

        else if (v32 == 1)
        {
          v33 = *(v65 + 40);
          v34 = "markermode";
          v35 = 1199;
        }

        else
        {
          if (*v28)
          {
            log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18014, "%s%u", v13, v14, v15, v16, "markerMode");
            goto LABEL_182;
          }

          v33 = *(v65 + 40);
          v34 = "markermode";
          v35 = 0;
        }

        goto LABEL_111;
      case 0x14:
        v18 = *v28;
        if (v18 == 12 || v18 == 3)
        {
          goto LABEL_112;
        }

        inited = -1946148849;
        log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18015, "%s%x", v13, v14, v15, v16, "initMode");
        goto LABEL_174;
      case 0x15:
        if (*v28)
        {
          if (cstdlib_strlen(v28) < 0xC)
          {
            cstdlib_strcpy(&v71[34], v28);
          }

          else
          {
            v71[34] = 0;
          }
        }

        else
        {
          ssft_loc_strncpy("0.0.0", &v71[34], 12);
        }

        v19 = 1;
        v27 = 1;
        v61 = 1;
        if (inited < 0)
        {
          goto LABEL_173;
        }

        goto LABEL_113;
      case 0x16:
        v33 = *(v65 + 40);
        v35 = *v28;
        v34 = "disablefinalsentencesilence";
        goto LABEL_111;
      case 0x18:
        v33 = *(v65 + 40);
        v35 = *v28;
        v34 = "timbre";
        goto LABEL_111;
      case 0x19:
        if (cstdlib_strlen(v28) < 0x80)
        {
          cstdlib_strcpy(v66, v28);
        }

        else
        {
          v66[0] = 0;
        }

        v29 = *(v65 + 40);
        v30 = "categories";
LABEL_102:
        v31 = v66;
        goto LABEL_103;
      default:
        log_OutPublic(*(*(a1 + 32) + 32), "VEAPI", 18018, "%s%d", v13, v14, v15, v16, "parameterID");
        goto LABEL_182;
    }
  }
}

uint64_t ssft_loc_strncpy(const char *a1, char *a2, __int16 a3)
{
  if (a1)
  {
    if (cstdlib_strlen(a1) <= (a3 - 1))
    {
      cstdlib_strcpy(a2, a1);
      return 0;
    }

    else
    {
      *a2 = 0;
      return 2147483657;
    }
  }

  else
  {
    result = 2147483654;
    *a2 = 0;
  }

  return result;
}

uint64_t ssft_loc_ConvertToLanguageTLW(uint64_t a1, char **a2, _WORD *a3, char *a4)
{
  v24 = 0;
  v25 = 0;
  v5 = 2147483658;
  v23 = 0;
  result = 2147483654;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }