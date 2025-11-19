uint64_t Search_BNFCostCache_Fill(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  if (*(v6 + 5992) == 1)
  {
    v7 = *v5 * a2;
    v8 = *v5 + 2;
  }

  else
  {
    v8 = 3;
    v7 = a2;
  }

  v27 = *(a1 + 120);
  v9 = *(*(a1 + 72) + 384);
  cstdlib_memset(*(a3 + 8), 0, 4 * *(a3 + 4));
  result = 0;
  if (v8 < 3)
  {
LABEL_11:
    *a3 = a2;
  }

  else
  {
    v28 = 0.0;
    v11 = 2;
    while (1)
    {
      v12 = *(*(v9 + 312 * a2 + 64) + 4 * v11);
      BnfTargetVectorPacked = GetBnfTargetVectorPacked(v27, v7, &v28);
      result = (*(a1 + 384))(v5, *(a1 + 56), BnfTargetVectorPacked, v12, v11, *(*(a1 + 136) + 104), v28);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v14 = *(*(v5 + 776) + 8 * v11);
      v15 = v14 + 40 * v12;
      v17 = *(v15 + 4);
      v16 = (v15 + 4);
      if (v17)
      {
        v18 = 0;
        v19 = *(v14 + 40 * v12);
        v20 = *(v5 + 816);
        v21 = *(*(v5 + 848) + 4 * (*(v20 + 4 * v19) / *(*(v5 + 568) + 5992)));
        v22 = *(*(a1 + 136) + 104);
        v23 = *(a3 + 8);
        v24 = *(a3 + 16);
        do
        {
          v25 = *(v20 + 4 * (v19 + v18)) / *(v6 + 5992);
          *(v23 + 4 * (v25 >> 5)) |= 1 << v25;
          *(v24 + 4 * (v21 + v18)) = *(v22 + 4 * v18);
          ++v18;
        }

        while (v18 < *v16);
      }

      ++v11;
      ++v7;
      if (v11 == v8)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

double ComputeFuzzyDist(unsigned int a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = a1;
  v4 = (a2 + 8);
  result = 0.0;
  do
  {
    v6 = *(v4 - 1);
    v7 = *(v6 + 40);
    if (v7)
    {
      *&result = *&result + *(*(v6 + 24) + 4 * (*(v7 + *(v6 + 49) + *(v6 + 48) * a3) + *(v6 + 36) * *v4));
    }

    v4 += 16;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t UnicornSearch_Create(uint64_t a1)
{
  v2 = heap_Calloc(*(a1 + 8), 1, 400);
  v3 = v2;
  if (v2)
  {
    *(v2 + 360) = 1;
    v4 = heap_Calloc(*(a1 + 8), 1, 16);
    *(v3 + 352) = v4;
    if (v4 && (*(v3 + 376) = 1, v5 = heap_Calloc(*(a1 + 8), 1, 16), (*(v3 + 368) = v5) != 0))
    {
      *v3 = UnicornSearch_Open;
      *(v3 + 8) = UnicornSearch_Set;
      *(v3 + 16) = UnicornSearch_Process;
      *(v3 + 24) = UnicornSearch_ProcessOne;
      *(v3 + 32) = UnicornSearch_Reset;
      *(v3 + 40) = UnicornSearch_Close;
      *(v3 + 48) = UnicornSearch_SetSIMDCallback;
      *(v3 + 56) = a1;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t UnicornSearch_Open(uint64_t a1, uint64_t *a2)
{
  v2 = 2229280778;
  if (a1)
  {
    v5 = a2[1];
    v4 = a2[2];
    v6 = *a2;
    *(a1 + 104) = v5;
    *(a1 + 112) = v4;
    *(a1 + 72) = v6;
    *(a1 + 80) = v4;
    *(a1 + 64) = v5;
    v7 = *v5;
    v8 = *(v6 + 392);
    *(a1 + 88) = v8;
    if (v4[1496])
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    *(a1 + 96) = v7;
    *(a1 + 100) = v8 * v9;
    *(a1 + 120) = v6;
    *(a1 + 128) = 0;
    *(a1 + 136) = v6 + 1088;
    *(a1 + 156) = 1;
    *(a1 + 160) = v4[1548];
    *(a1 + 164) = 0;
    *(a1 + 168) = v4[1693];
    v10 = *(v6 + 1808);
    if (v10)
    {
      heap_Free(*(*(a1 + 56) + 8), v10);
      v6 = *(a1 + 120);
      *(v6 + 1808) = 0;
    }

    v11 = *(v6 + 1816);
    if (v11)
    {
      heap_Free(*(*(a1 + 56) + 8), v11);
      v6 = *(a1 + 120);
      *(v6 + 1816) = 0;
    }

    *(v6 + 1824) = 0;
    *(a1 + 336) = *(v6 + 1896);
    v12 = heap_Calloc(*(*(a1 + 56) + 8), (*(a1 + 96) * *(a1 + 88)), 4);
    *(a1 + 144) = v12;
    if (v12)
    {
      v13 = *(a1 + 88);
      v14 = *(a1 + 96);
      v15 = *(a1 + 120);
      if (v14 * v13)
      {
        v16 = 0;
        v17 = 0;
        v18 = *(v15 + 1768);
        do
        {
          if (v18)
          {
            if (*(*v18 + v16))
            {
              v19 = 0;
            }

            else
            {
              v19 = **(*v18 + v16 + 8) > *(*(a1 + 112) + 11548);
            }

            *(v12 + 4 * v17) = v19;
            v13 = *(a1 + 88);
            v14 = *(a1 + 96);
          }

          ++v17;
          v20 = (v14 * v13);
          v16 += 48;
        }

        while (v17 < v20);
      }

      else
      {
        LODWORD(v20) = 0;
      }

      v21 = UNICORN__mfs_CostList_Init(*(a1 + 56), *(a1 + 104), (v15 + 1088), v20, 0);
      v22 = *(a1 + 112);
      *(*(a1 + 136) + 224) = &tblBNFContextWeights[5 * *(v22 + 6752)];
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      v2 = UNICORN__mfs_TCost_Init(*(a1 + 56), v22, (a1 + 176));
      if ((v2 & 0x80000000) == 0)
      {
        v23 = *(*(a1 + 72) + 32);
        *(a1 + 152) = 0;
        if (v23 >= 1)
        {
          v24 = (*(a1 + 80) + 184);
          v25 = 1;
          do
          {
            v26 = *v24++;
            if (v26 == 2)
            {
              break;
            }

            *(a1 + 152) = v25++;
            --v23;
          }

          while (v23);
        }

        v27 = *(a1 + 112);
        if (v27[1535])
        {
          if (v27[1495])
          {
            v28 = *(a1 + 352);
            *v28 = 0;
            v28[1] = Search_Diphone_PruneBNF;
            if (*(*(a1 + 104) + 1928) != 1)
            {
              goto LABEL_42;
            }

            goto LABEL_36;
          }

          if (*(*(a1 + 104) + 1928) == 1)
          {
            *(a1 + 380) = 1;
            v29 = *(a1 + 352);
            v30 = Search_PruneBNF_TreeIndex;
            goto LABEL_35;
          }

          v32 = *(a1 + 352);
          v33 = Search_PruneBNF;
        }

        else
        {
          if (*(*(a1 + 104) + 1928) == 1)
          {
            *(a1 + 380) = 1;
            v29 = *(a1 + 352);
            v30 = Search_TreeIndex;
LABEL_35:
            *v29 = 0;
            v29[1] = v30;
LABEL_36:
            v31 = *(a1 + 368);
            *v31 = 0;
            v31[1] = UnicornSearch_StageTwo_TreeIndex_Sliced;
            if (v27[1688] == 1 && v27[1700] == 9)
            {
              v31[1] = UnicornSearch_StageTwo_TreeIndex_Cascaded;
            }

            return v2;
          }

          v32 = *(a1 + 352);
          v33 = Search_NoPrune;
        }

        *v32 = 0;
        v32[1] = v33;
LABEL_42:
        v34 = *(a1 + 368);
        *v34 = 0;
        v34[1] = UnicornSearch_StageTwo_Default;
      }
    }
  }

  return v2;
}

uint64_t UnicornSearch_Set(uint64_t a1, unsigned int a2)
{
  *(a1 + 92) = a2;
  *(a1 + 128) = *(*(a1 + 72) + 384) + 312 * a2;
  UNICORN__log_select_Diag(*(a1 + 56), 11, "[Phoneme %d]\n");
  UNICORN__mfs_Ling_GetPhonCtxt(*(*(a1 + 72) + 8), *(a1 + 92), (a1 + 344));
  UNICORN__mfs_Ling_LogPhonCtxt(*(a1 + 56), *(a1 + 80), *(*(a1 + 72) + 8), *(a1 + 92));
  if (*(a1 + 380) && *(*(a1 + 112) + 5992) != 1)
  {
    v3 = *(a1 + 136);
    v7 = *(v3 + 32);
    v8 = *(v3 + 48);
    *(v3 + 32) = *(v3 + 56);
    *(v3 + 48) = *(v3 + 72);
    v4 = *(a1 + 136);
    *(v4 + 72) = *(v4 + 96);
    *(v4 + 56) = *(v4 + 80);
    v5 = *(a1 + 136);
    *(v5 + 80) = v7;
    *(v5 + 96) = v8;
  }

  if (*(*(a1 + 104) + 1928) == 1)
  {
    Unicorn_CostListBlock_Set(*(a1 + 136), *(a1 + 128));
  }

  return 0;
}

uint64_t UnicornSearch_Process(uint64_t a1)
{
  if (*(a1 + 88) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    UnicornSearch_Set(a1, v2);
    result = UnicornSearch_ProcessOne(a1, v3);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (++v2 >= *(a1 + 88))
    {
      return 0;
    }
  }

  return result;
}

uint64_t UnicornSearch_ProcessOne(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 96);
  if ((v3 - 1) <= 0xFFFFFFFC)
  {
    v4 = 0;
    v5 = v3 * *(a1 + 92);
    v6 = 2;
    while (1)
    {
      if (*(a1 + 345) == 1)
      {
        if (!*(a1 + 156) || v6 == 3 && v3 == 3)
        {
          goto LABEL_18;
        }

        if (v6 == 2)
        {
          v7 = (a1 + 344);
          if (!*(a1 + 92))
          {
            goto LABEL_18;
          }

LABEL_12:
          if (*v7 == 1)
          {
            goto LABEL_18;
          }

          goto LABEL_13;
        }

        if (v6 == v3 + 1)
        {
          v7 = (a1 + 346);
          if (*(a1 + 92) == *(a1 + 88) - 1)
          {
            goto LABEL_18;
          }

          goto LABEL_12;
        }
      }

LABEL_13:
      v8 = v5 + v6 - 2;
      v9 = *(a1 + 120);
      v10 = *(v9 + 1768);
      if (!v10)
      {
        v12 = v8;
LABEL_17:
        v4 = (*(*(a1 + 352) + 8))(a1, 1, v6, a1 + 344, *(a1 + 128), *(*(*(a1 + 136) + 16) + 32 * v12 + 16), *(*(a1 + 112) + 5548));
        if ((v4 & 0x80000000) != 0)
        {
          return v4;
        }

        goto LABEL_18;
      }

      v11 = *v10;
      v12 = v8;
      v13 = v11 + 48 * v8;
      if (*v13)
      {
        goto LABEL_17;
      }

      UNICORN__mfs_CostList_Add(0.0, *(a1 + 104), (v9 + 1088), v8, *(*(v13 + 8) + 4 * (*(v13 + 24) - 1)));
LABEL_18:
      ++v6;
      v3 = *(a1 + 96);
      v14 = (v3 + 2);
      if (v6 >= v14)
      {
        if (v14 >= 3)
        {
          v15 = *(a1 + 120);
          v16 = *(v15 + 1768);
          v17 = 2;
          a2.n128_u32[0] = 1167867904;
          do
          {
            if (v16)
            {
              v18 = (v5 - 2 + v17);
              v19 = *v16 + 48 * v18;
              if (*v19 == 1)
              {
                v20 = *(v15 + 1104) + 32 * v18;
                v21 = *(v20 + 16);
                if (v21)
                {
                  v22 = 0;
                  v23 = *(v19 + 24);
                  do
                  {
                    if (v23)
                    {
                      v24 = *v20 + 12 * v22;
                      v25 = *v24;
                      v26 = *(v19 + 8);
                      v27 = v23;
                      do
                      {
                        v28 = *v26++;
                        if (v25 == v28)
                        {
                          *(v24 + 4) = *(v24 + 4) + 5000.0;
                        }

                        --v27;
                      }

                      while (v27);
                    }

                    ++v22;
                  }

                  while (v22 != v21);
                }
              }
            }

            ++v17;
          }

          while (v17 != v14);
        }

        goto LABEL_34;
      }
    }
  }

  v4 = 0;
LABEL_34:
  if ((v3 - 1) <= 0xFFFFFFFC)
  {
    v29 = 2;
    do
    {
      v4 = (*(*(a1 + 368) + 8))(a1, v29, a2);
      if ((v4 & 0x80000000) != 0)
      {
        break;
      }

      v29 = (v29 + 1);
    }

    while (v29 < *(a1 + 96) + 2);
  }

  return v4;
}

uint64_t UnicornSearch_Close(uint64_t a1)
{
  UNICORN__mfs_TCost_Clear(a1 + 176);
  v2 = *(a1 + 144);
  if (v2)
  {
    heap_Free(*(*(a1 + 56) + 8), v2);
    *(a1 + 144) = 0;
  }

  return 0;
}

uint64_t UnicornSearch_SetSIMDCallback(uint64_t *a1, int a2)
{
  if (!*(a1[14] + 6728))
  {
    if (a2)
    {
      a1[48] = mfs_bnfData_Clusterize_Block_Distance_fxd16_SIMD;
      v8 = mfs_bnfData_Distance_Unit_ID_fxd16_SIMD;
    }

    else
    {
      a1[48] = mfs_bnfData_Clusterize_Block_Distance_fxd16;
      v8 = mfs_bnfData_Distance_Unit_ID_fxd16;
    }

    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_13:
    a1[49] = mfs_bnfData_Distance_Unit_ID_RandomProjection;
    a1[48] = mfs_bnfData_Clusterize_Block_Distance_RandomProjection;
    goto LABEL_14;
  }

  v4 = (((*(a1[13] + 1520) - 8) >> 3) | (32 * (*(a1[13] + 1520) - 8)));
  v5 = v4 > 7;
  v6 = (1 << v4) & 0xAB;
  if (v5 || v6 == 0)
  {
    UNICORN__log_select_Diag(a1[7], 1, "WARNING : SIMD Random Projection Search only available for BNF size of16/32/48/64 Bytes, current size %d; fallback to ANSIC implementation. \n");
    goto LABEL_13;
  }

  a1[48] = mfs_bnfData_Clusterize_Block_Distance_RandomProjection_SIMD;
  v8 = mfs_bnfData_Distance_Unit_ID_RandomProjection_SIMD;
LABEL_11:
  a1[49] = v8;
LABEL_14:
  mfs_TCost_EnableSIMD((a1 + 22), a2);
  return 0;
}

void *UnicornSearch_Destroy(uint64_t *a1)
{
  UNICORN__log_select_Diag(a1[7], 10, "+Destroy\n");
  heap_Free(*(a1[7] + 8), a1[44]);
  a1[44] = 0;
  heap_Free(*(a1[7] + 8), a1[46]);
  a1[46] = 0;
  UNICORN__log_select_Diag(a1[7], 10, "--Destroy\n");
  v2 = *(a1[7] + 8);

  return heap_Free(v2, a1);
}

uint64_t UnicornSearch_StageTwo_Default(uint64_t a1, uint64_t a2)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = a2 + *(a1 + 96) * *(a1 + 92);
  v4 = v3 - 2;
  v6 = *(a1 + 112);
  v5 = *(a1 + 120);
  v7 = *(*(v5 + 1352) + 4 * v4);
  v53[0] = 0;
  if (*(v6 + 5992) != 1)
  {
    UNICORN__log_select_Diag(*(a1 + 56), 1, "CONFIG ERROR : Search is not implemented for Phoneme Substate Modeling\n");
    return 2229280768;
  }

  AcousticVector = UNICORN__mfs_TCost_SetTarget(a1 + 176, *(a1 + 104), v5, *(a1 + 128), a2);
  if ((AcousticVector & 0x80000000) == 0)
  {
    if (*(*(a1 + 112) + 6704) == 0.0 || (AcousticVector = mfs_UpdateTargetQuantizedTrajectory_LF0(*(a1 + 104), *(a1 + 120), a1 + 176), (AcousticVector & 0x80000000) == 0))
    {
      v10 = *(a1 + 336);
      if (v10)
      {
        LODWORD(v53[0]) = *(v10 + 4 * (2 * v4));
        HIDWORD(v53[0]) = *(v10 + 4 * ((2 * v4) | 1u));
      }

      if (!*(a1 + 156) && *(a1 + 345) == 1)
      {
        v11 = *(a1 + 136);
        LODWORD(v12) = *(*(v11 + 16) + 32 * v4 + 16);
LABEL_69:
        v42 = *(*(a1 + 112) + 5564);
        if (v12 > v42)
        {
          AcousticVector = mfs_CostList_Select(v11, v4, 1, v42);
          UNICORN__mfs_CostList_Prune(*(a1 + 136), v4, *(*(a1 + 112) + 5564));
        }

        goto LABEL_71;
      }

      IndexPtr_LH_F32 = VectBlock_Get_IndexPtr_LH_F32(*(a1 + 120) + 1848, v3 - 2);
      v13 = *(*(a1 + 112) + 6752);
      if (v13 < 1)
      {
        v47 = 0;
      }

      else
      {
        if (v3 - 1 >= *(a1 + 100))
        {
          v47 = 0;
        }

        else
        {
          v47 = VectBlock_Get_IndexPtr_LH_F32(*(a1 + 120) + 1848, v3 - 1);
          v13 = *(*(a1 + 112) + 6752);
        }

        if (v13 >= 2 && v3 < *(a1 + 100))
        {
          v46 = VectBlock_Get_IndexPtr_LH_F32(*(a1 + 120) + 1848, v3);
          if (v3 == 2)
          {
LABEL_19:
            v14 = 0;
            goto LABEL_27;
          }

LABEL_21:
          if (*(*(a1 + 112) + 6752) < 1)
          {
            v14 = 0;
          }

          else
          {
            v14 = VectBlock_Get_IndexPtr_LH_F32(*(a1 + 120) + 1848, v3 - 3);
          }

          if (v3 != 3 && *(*(a1 + 112) + 6752) >= 2)
          {
            v15 = VectBlock_Get_IndexPtr_LH_F32(*(a1 + 120) + 1848, v3 - 4);
LABEL_28:
            v16 = *(a1 + 136);
            v18 = *(v16 + 16);
            v17 = (v16 + 16);
            if (!*(v18 + 32 * v4 + 16))
            {
LABEL_71:
              UNICORN__log_select_Diag(*(a1 + 56), 11, "costlist(%d)\n");
              return AcousticVector;
            }

            v19 = 0;
            v20 = 0;
            v21 = 1.0 - v7;
            v23 = (1.0 - v7) > 0.0 && IndexPtr_LH_F32 != 0;
            v45 = v23;
            while (1)
            {
              v50 = 0;
              memset(v49, 0, sizeof(v49));
              v24 = *(a1 + 164) == 1 ? *(a1 + 280) : 0;
              v25 = *(*(*v17 + 32 * v4) + v19);
              v48 = v24;
              AcousticVector = UNICORN__mfs_Stub_ParamMap_GetAcousticVector(*(a1 + 56), *(a1 + 104), *(a1 + 120), v25, v49, &v48, 0.0);
              if ((AcousticVector & 0x80000000) != 0)
              {
                return AcousticVector;
              }

              v27 = *(a1 + 112);
              v28 = *(a1 + 164);
              v29 = a1 + 176;
              if (*(a1 + 336))
              {
                mfs_TCost_BNFCandidateCostStreamElf0(v29, v27, v49, v48, &v51, v28, v53, *(a1 + 168), v26);
              }

              else
              {
                mfs_TCost_BNFCandidateCostStream(v29, v27, v49, v48, &v51, v28, *(a1 + 168));
              }

              if (*(a1 + 164))
              {
                v30 = *(a1 + 180) * *(a1 + 292);
                v51 = v30 * UNICORN__CandidatePhonemeDurationDistanceBasic(*(a1 + 104), v25, a2, *(*(a1 + 128) + 24));
              }

              UNICORN__mfs_ParamMap_UnMapSection(*(a1 + 120));
              v31 = 0.0;
              if (v45)
              {
                v32 = *(a1 + 112);
                if (*(v32 + 6140))
                {
                  v33 = *(*(*(*(a1 + 136) + 16) + 32 * v4) + v19 + 4);
                }

                else
                {
                  v33 = mfs_bnfData_Distance(*(a1 + 104), IndexPtr_LH_F32, v25);
                  v32 = *(a1 + 112);
                }

                v31 = v33 * tblBNFContextWeights[5 * *(v32 + 6752)];
              }

              if (v14 && v25 && v21 > 0.0)
              {
                v34 = tblBNFContextWeights[5 * *(*(a1 + 112) + 6752) + 1];
                v31 = v31 + (v34 * mfs_bnfData_Distance(*(a1 + 104), v14, v25 - 1));
              }

              if (v15 && v25 >= 2 && v21 > 0.0)
              {
                v35 = tblBNFContextWeights[5 * *(*(a1 + 112) + 6752) + 3];
                v31 = v31 + (v35 * mfs_bnfData_Distance(*(a1 + 104), v15, v25 - 2));
              }

              if (v47)
              {
                v36 = *(a1 + 112);
                if (v25 < *(v36 + 11548) - 1 && v21 > 0.0)
                {
                  v37 = tblBNFContextWeights[5 * *(v36 + 6752) + 2];
                  v31 = v31 + (v37 * mfs_bnfData_Distance(*(a1 + 104), v47, v25 + 1));
                }
              }

              if (v46)
              {
                v38 = *(a1 + 112);
                if (v25 < *(v38 + 11548) - 2 && v21 > 0.0)
                {
                  v39 = tblBNFContextWeights[5 * *(v38 + 6752) + 4];
                  v31 = v31 + (v39 * mfs_bnfData_Distance(*(a1 + 104), v46, v25 + 2));
                }
              }

              v40 = v52;
              if (*(a1 + 345) == 1)
              {
                v40 = v52 * 0.01;
                v52 = v52 * 0.01;
              }

              v41 = (v7 * v40) + (v21 * v31);
              UNICORN__log_select_Diag(*(a1 + 56), 11, "%f = BNF(%f) LF0(%f) DUR(%f)\n");
              UNICORN__mfs_CostList_UpdateCost(*(a1 + 136), v4, v20++, v41);
              v11 = *(a1 + 136);
              v17 = (v11 + 16);
              v12 = *(*(v11 + 16) + 32 * v4 + 16);
              v19 += 12;
              if (v20 >= v12)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_27:
          v15 = 0;
          goto LABEL_28;
        }
      }

      v46 = 0;
      if (v3 == 2)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  return AcousticVector;
}

uint64_t select_bet5_deserializeFeatures(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *a5;
  __src = 0;
  v51 = 0;
  v14 = v13 + 2748;
  do
  {
    v15 = *(v14 + v10);
    if (*(v14 + v10))
    {
      if (v15 == 2)
      {
        v12 += 2;
      }

      else if (v15 == 1)
      {
        ++v12;
        ++v11;
      }

      else if (v10 - 53 <= 1)
      {
        v12 += 4 * *(v13 + 3360);
      }
    }

    ++v10;
  }

  while (v10 != 218);
  v16 = *(v13 + 3336);
  if (v16 && *v16)
  {
    v17 = 0;
    v18 = v16 + 1;
      ;
    }

    v12 += v17;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v20 = (*(a2 + 88))(a3, a4, &__src, &v51);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  if (!v12)
  {
    return 21;
  }

  v21 = v51 / v12;
  if (v51 % v12)
  {
    return 21;
  }

  v48 = v20;
  *(a5 + 5) = v21;
  v50 = a1;
  v23 = heap_Calloc(*(a1 + 8), v21 * v11, 1);
  if (!v23)
  {
    return 2229280778;
  }

  v24 = v23;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v25 = 0;
  v26 = __src;
  v49 = a5 + 2;
  do
  {
    v27 = *(v14 + v25);
    if (!*(v14 + v25))
    {
      goto LABEL_36;
    }

    if (v27 == 2)
    {
      v29 = *(a5 + 5);
      v30 = heap_Calloc(*(v50 + 8), v29, 2);
      a5[v25 + 220] = v30;
      if (!v30)
      {
        return 2229280778;
      }

      cstdlib_memcpy(v30, v26, 2 * v29);
      v26 += 2 * v29;
    }

    else
    {
      if (v27 == 1)
      {
        v28 = *(a5 + 5);
        a5[v25 + 2] = v24;
        cstdlib_memcpy(v24, v26, v28);
        v24 += v28;
      }

      else
      {
        if (v25 - 53 > 1)
        {
          goto LABEL_36;
        }

        if (v25 == 53)
        {
          v31 = 448;
        }

        else
        {
          v31 = 449;
        }

        v32 = *(v13 + 3360) * *(a5 + 5);
        v33 = heap_Calloc(*(v50 + 8), *(v13 + 3360) * *(a5 + 5), 4);
        a5[v31] = v33;
        if (!v33)
        {
          return 2229280778;
        }

        v28 = 4 * (v32 & 0x3FFFFFFF);
        cstdlib_memcpy(v33, v26, v28);
      }

      v26 += v28;
    }

LABEL_36:
    ++v25;
  }

  while (v25 != 218);
  if (!v17)
  {
    goto LABEL_51;
  }

  v34 = heap_Calloc(*(v50 + 8), v17 * *(a5 + 5), 1);
  if (!v34)
  {
    return 2229280778;
  }

  v35 = v34;
  v36 = heap_Calloc(*(v50 + 8), v17, 8);
  a5[438] = v36;
  v22 = 2229280778;
  if (v36)
  {
    v37 = 0;
    do
    {
      v38 = *(a5 + 5);
      v39 = v37;
      *(a5[438] + 8 * v37) = v35;
      cstdlib_memcpy(*(a5[438] + 8 * v37), v26, v38);
      if (cstdlib_strncmp(*(*(v13 + 3336) + 8 * v39), "INNO_", 5uLL))
      {
        v40 = *(*(v13 + 3344) + 8 * v39);
        v41 = cstdlib_strlen("FEATIDX");
        Index = usextract_getIndex(v40, "FEATIDX", &aFeatidx[v41]);
        if (Index == -1)
        {
          if (cstdlib_strcmp(*(*(*a5 + 3336) + 8 * v39), "POS"))
          {
            if (!cstdlib_strcmp(*(*(*a5 + 3336) + 8 * v39), "PHR"))
            {
              a5[64] = *(a5[438] + 8 * v39);
            }
          }

          else
          {
            a5[63] = *(a5[438] + 8 * v39);
          }
        }

        else
        {
          v49[*(*(*(*a5 + 3352) + 8 * v39) + Index)] = *(a5[438] + 8 * v39);
        }
      }

      else
      {
        v43 = cstdlib_atoi((*(*(*a5 + 3336) + 8 * v39) + 5)) + 79;
        if (v43 <= 0x5E)
        {
          v49[v43] = *(a5[438] + 8 * v39);
        }
      }

      v26 += v38;
      v35 += v38;
      v37 = v39 + 1;
    }

    while (v17 > (v39 + 1));
LABEL_51:
    (*(v45 + 96))(v46, v47, v12 * *(a5 + 5));
    return v48;
  }

  return v22;
}

void *select_bet5_deserializeFeatures_Free(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 2;
  v8 = a2 + 220;
  do
  {
    v9 = *(v2 + 2748 + v5);
    if (v9 == 2)
    {
      v10 = *v8;
      v11 = v8;
      if (*v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v9 != 1)
      {
        goto LABEL_12;
      }

      if (v6)
      {
        v6 = 1;
        goto LABEL_12;
      }

      v10 = *(v8 - 218);
      v6 = 1;
      if (v10)
      {
        v11 = &v7[v5];
LABEL_11:
        result = heap_Free(v4[1], v10);
        *v11 = 0;
      }
    }

LABEL_12:
    ++v5;
    ++v8;
  }

  while (v5 != 218);
  v12 = a2[448];
  if (v12)
  {
    result = heap_Free(v4[1], v12);
    a2[448] = 0;
  }

  v13 = a2[449];
  if (v13)
  {
    result = heap_Free(v4[1], v13);
    a2[449] = 0;
  }

  v14 = *(v2 + 3336);
  if (v14)
  {
    if (*v14)
    {
      v15 = a2[438];
      if (v15)
      {
        if (*v15)
        {
          heap_Free(v4[1], *v15);
          *a2[438] = 0;
          v15 = a2[438];
        }

        result = heap_Free(v4[1], v15);
        a2[438] = 0;
      }
    }
  }

  return result;
}

uint64_t precomp_Init(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = 2229280774;
  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  if (!a4)
  {
    return v4;
  }

  v4 = 2229280778;
  v9 = heap_Calloc(*(*(a2 + 1072) + 8), 1, 1120);
  *a1 = v9;
  if (!v9)
  {
    return v4;
  }

  v10 = v9;
  v11 = 100000;
  v12 = *(a2 + 1072);
  *v9 = v12;
  *(v9 + 8) = a4;
  *(v9 + 16) = a3;
  *(v9 + 24) = a2;
  *(v9 + 32) = a4;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 56) = a3;
  *(v9 + 1104) = -1;
  *(v9 + 64) = *(a2 + 1776);
  *(v9 + 72) = *(a2 + 1784);
  *(v9 + 1056) = 0;
  *(v9 + 1080) = 1;
  *(v9 + 1048) = 0;
  *(v9 + 1016) = 0u;
  *(v9 + 1032) = 0u;
  *(v9 + 1000) = 0u;
  *(v9 + 1076) = a3[2887];
  v13 = *(a2 + 1912);
  if (v13)
  {
    v14 = a3[1667];
    LODWORD(v13) = v14 < 100000;
    if (v14 >= 100000)
    {
      v11 = 100000;
    }

    else
    {
      v11 = a3[1667];
    }
  }

  *(v9 + 1068) = v13;
  *(v9 + 1060) = v11;
  *(v9 + 1064) = *(a4 + 1920) != 0;
  *(v9 + 1072) = *(a4 + 1912) != 0;
  *(v9 + 1084) = a3[1681];
  *(v9 + 1088) = a3[1679];
  *(v9 + 960) = 1;
  v15 = *(a4 + 1652) | (*(a4 + 1652) >> 1);
  v16 = v15 | (v15 >> 2) | ((v15 | (v15 >> 2)) >> 4);
  *(v9 + 964) = tab32[(130329821 * (v16 | (v16 >> 8) | ((v16 | (v16 >> 8)) >> 16))) >> 27] + 1;
  v17 = *(a4 + 2436) | (*(a4 + 2436) >> 1);
  v18 = v17 | (v17 >> 2) | ((v17 | (v17 >> 2)) >> 4);
  *(v9 + 968) = tab32[(130329821 * (v18 | (v18 >> 8) | ((v18 | (v18 >> 8)) >> 16))) >> 27] + 1;
  *(v9 + 976) = 0uLL;
  v19 = *(v12 + 8);
  *(v10 + 992) = v19;
  v20 = a3[1391];
  *(v10 + 988) = v20;
  *(v10 + 984) = v20;
  v21 = heap_Realloc(v19, 0, (8 * v20));
  *(v10 + 976) = v21;
  if (!v21)
  {
    return v4;
  }

  v22 = *(*(v10 + 16) + 5564);

  return precomp_AllocPreFetchLeftNodes(v10, v22);
}

uint64_t precomp_AllocPreFetchLeftNodes(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1056) >= a2)
  {
    return 0;
  }

  v4 = 2229280778;
  v5 = heap_Realloc(*(*a1 + 8), *(a1 + 1000), 4 * a2);
  *(a1 + 1000) = v5;
  if (v5)
  {
    v6 = heap_Realloc(*(*a1 + 8), *(a1 + 1008), 4 * a2);
    *(a1 + 1008) = v6;
    if (v6)
    {
      v7 = heap_Realloc(*(*a1 + 8), *(a1 + 1016), 4 * a2);
      *(a1 + 1016) = v7;
      if (v7)
      {
        v8 = heap_Realloc(*(*a1 + 8), *(a1 + 1024), 4 * a2);
        *(a1 + 1024) = v8;
        if (v8)
        {
          v9 = heap_Realloc(*(*a1 + 8), *(a1 + 1032), 4 * a2);
          *(a1 + 1032) = v9;
          if (v9)
          {
            v10 = heap_Realloc(*(*a1 + 8), *(a1 + 1040), 4 * a2);
            *(a1 + 1040) = v10;
            if (v10)
            {
              v11 = heap_Realloc(*(*a1 + 8), *(a1 + 1048), 4 * a2);
              *(a1 + 1048) = v11;
              if (v11)
              {
                v4 = 0;
                *(a1 + 1056) = a2;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t precomp_Release(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(v2 + 1000);
      if (v3)
      {
        heap_Free(*(*v2 + 8), v3);
        *(v2 + 1000) = 0;
      }

      v4 = *(v2 + 1008);
      if (v4)
      {
        heap_Free(*(*v2 + 8), v4);
        *(v2 + 1008) = 0;
      }

      v5 = *(v2 + 1016);
      if (v5)
      {
        heap_Free(*(*v2 + 8), v5);
        *(v2 + 1016) = 0;
      }

      v6 = *(v2 + 1024);
      if (v6)
      {
        heap_Free(*(*v2 + 8), v6);
        *(v2 + 1024) = 0;
      }

      v7 = *(v2 + 1032);
      if (v7)
      {
        heap_Free(*(*v2 + 8), v7);
        *(v2 + 1032) = 0;
      }

      v8 = *(v2 + 1040);
      if (v8)
      {
        heap_Free(*(*v2 + 8), v8);
        *(v2 + 1040) = 0;
      }

      v9 = *(v2 + 1048);
      if (v9)
      {
        heap_Free(*(*v2 + 8), v9);
        *(v2 + 1048) = 0;
      }

      *(v2 + 1056) = 0;
      if (*(v2 + 960))
      {
        v10 = *(v2 + 976);
        if (v10)
        {
          heap_Free(*(v2 + 992), v10);
          *(v2 + 976) = 0;
          *(v2 + 988) = 0;
        }
      }

      heap_Free(*(*v2 + 8), *a1);
      *a1 = 0;
    }
  }

  return 0;
}

uint64_t precomp_SetupLeftRightData(uint64_t a1, unsigned int **a2, int a3)
{
  if (a3)
  {
    *(a1 + 32) = *(a1 + 48);
    *(a1 + 88) = *(a1 + 96);
    *(a1 + 76) = *(a1 + 80);
    *(a1 + 1104) = *(a1 + 1108);
  }

  result = UnicornAddon_UID2AddonId(*(a1 + 64), *(a1 + 72), **a2);
  *(a1 + 1108) = result;
  if (result == -1)
  {
    v8 = 0;
    v7 = (a1 + 8);
  }

  else
  {
    v6 = *(a1 + 64) + 48 * result;
    v7 = (v6 + 16);
    v8 = *(v6 + 24);
  }

  v9 = *v7;
  v10 = *(v9 + 2416);
  v11 = *(v9 + 568);
  *(a1 + 48) = v9;
  *(a1 + 56) = v11;
  *(a1 + 96) = v10;
  *(a1 + 80) = v8;
  if (a3)
  {
    v12 = *(a1 + 1104);
    if (v12 == -1)
    {
      if (result != -1)
      {
        v13 = (*(a1 + 64) + 48 * result + 40);
        goto LABEL_12;
      }
    }

    else if (result == -1)
    {
      v13 = (*(a1 + 64) + 48 * v12 + 32);
LABEL_12:
      v14 = *v13;
LABEL_14:
      *(a1 + 104) = v14;
      return result;
    }

    v14 = 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t precomp_SetLayer(uint64_t result, int a2)
{
  v2 = *(result + 1068);
  if (v2)
  {
    v2 = *(*(*(result + 24) + 1912) + 4 * a2);
  }

  *(result + 112) = v2;
  v3 = *(result + 32);
  v4 = *(result + 8);
  if (v3 == v4 && *(result + 48) == v3)
  {
    *(result + 1064) = *(v4 + 1920) != 0;
    v13 = *(v4 + 1912);
    *(result + 1072) = v13 != 0;
    v14 = *(result + 40);
    *(result + 1084) = *(v14 + 6724);
    *(result + 1088) = *(v14 + 6716);
    if (v13)
    {
      return result;
    }
  }

  else
  {
    *(result + 1064) = 0;
    *(result + 1072) = 0;
    v5 = *(result + 40);
    *(result + 1084) = *(v5 + 6724);
    *(result + 1088) = *(v5 + 6716);
  }

  v6 = *(result + 24);
  v7 = *(v6 + 1328);
  v8 = *(v6 + 1336);
  v9 = *(v7 + 8 * a2);
  v10 = (result + 832);
  v11 = 16;
  do
  {
    *(v10 - 48) = *(v8 + 4 * a2) * *v9;
    v12 = *(v8 + 4 * a2) * v9[2];
    *(v10 - 32) = v12;
    *(v10 - 16) = *(v8 + 4 * a2) * v9[1];
    *v10++ = v12 * 1000.0;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t precomp_FetchRightNode(uint64_t result, int a2, int *a3, int *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 32);
    v6 = *(result + 40);
    v7 = *(v5 + 1640);
    v8 = *(v5 + 1652);
    v9 = v6[1504];
    v10 = v6[1509];
    v11 = v6[1514];
    v12 = *(result + 56);
    v13 = *(v12 + 6016);
    v14 = *(v12 + 6056);
    v15 = result + 448;
    v16 = (result + 256);
    v17 = a5;
    v18 = *(result + 96);
    do
    {
      v20 = *a3++;
      v19 = v20;
      if (v20 == *(result + 1076))
      {
        v19 = 0;
      }

      v21 = *a4++;
      v22 = (v18 + 24 * v21);
      *(v15 + 128) = *(v22 + 1);
      v23 = *v22;
      *(v15 - 64) = v23;
      v24 = v22[6];
      *v15 = v24;
      if (*(result + 1104) != *(result + 1108))
      {
        if (*(result + 1084))
        {
          v25 = 2436;
        }

        else
        {
          v25 = 2432;
        }

        v26 = *(v5 + v25) - 1;
        v27 = v13 + (v23 / v14);
        if (v27 < v9)
        {
          v27 = v9;
        }

        if (v27 > v10)
        {
          v27 = v10;
        }

        v23 = (v11 * (v27 - v9));
        if (v26 < v23)
        {
          v23 = v26;
        }

        *(v15 - 64) = v23;
        v28 = *(result + 104);
        if (v28)
        {
          v24 = *(v28 + 4 * v24);
          *v15 = v24;
        }
      }

      if (!*(result + 1084))
      {
        *v16 = v7 + 4 * v24 * v8;
        *(v16 - 16) = *(v5 + 2424) + ((*(v5 + 2436) * v23) << (2 * (*(result + 1088) == 0)));
      }

      if (*(result + 1064))
      {
        v29 = *(*(*(result + 48) + 1920) + 4 * v19);
      }

      else
      {
        v29 = 0;
      }

      *(v15 + 64) = v29;
      if (*(result + 1072))
      {
        v30 = *(*(result + 48) + 1912);
        if (v30)
        {
          v31 = *(v30 + 4 * v19);
        }

        else
        {
          v31 = 1.0;
        }

        v32 = ((v31 * 0.5) + 0.5) * *(*(result + 16) + 5516);
        v33 = *(*(*(result + 24) + 1328) + 8 * a2);
        *(v15 + 192) = v32 * *v33;
        v34 = v32 * v33[2];
        *(v15 + 256) = v34;
        *(v15 + 320) = v32 * v33[1];
        *(v15 + 384) = v34 * 1000.0;
      }

      v15 += 4;
      ++v16;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t precomp_FetchLeftNodes(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v4 = result;
  v5 = a3[3];
  if (v5 > *(result + 1056))
  {
    result = precomp_AllocPreFetchLeftNodes(result, a3[3]);
  }

  if (v5 >= 1)
  {
    v6 = *(v4 + 88);
    v7 = *(v4 + 1000);
    v8 = *(v4 + 1008);
    v9 = *(v4 + 1016);
    v10 = *(v4 + 1024);
    v11 = *(v4 + 1032);
    v12 = *(v4 + 1048);
    v13 = *(v4 + 1040);
    v14 = (*a3 + 4);
    do
    {
      v15 = *(v4 + 1076);
      result = *(v14 - 1);
      v16 = v6 + 24 * *v14;
      *v7 = *(v16 + 14);
      *v8 = *(v16 + 2);
      *v9 = *(v16 + 8);
      *v10 = *(v16 + 16);
      *v11 = *(v16 + 20);
      *v12 = 0.0;
      *v13 = 0.0;
      if (*(v4 + 1064))
      {
        if (result >= v15)
        {
          result = 0;
        }

        else
        {
          result = result;
        }

        v17 = *(v4 + 40);
        v18 = *(*(*(v4 + 32) + 1920) + 4 * result);
        *v13 = v18;
        if (v18 <= 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = 1.0 / v18;
        }

        *v12 = v19 * *(v17 + 6784);
      }

      v14 += 6;
      ++v13;
      ++v12;
      ++v11;
      ++v10;
      ++v9;
      ++v8;
      ++v7;
      --v5;
    }

    while (v5);
  }

  return result;
}

_DWORD *precomp_SetupJoinCallback(_DWORD *result, int a2)
{
  v2 = result;
  if (!a2 || result[277] != -1)
  {
    goto LABEL_3;
  }

  v4 = result[271];
  if (!v4)
  {
    v6 = result[266];
    v5 = result + 224;
    if (v6)
    {
      result = cstdlib_memset(v5, 255, 0x40uLL);
      v7 = precomp_DoInnerLoop_simd_full_support;
      goto LABEL_17;
    }

LABEL_12:
    result = cstdlib_memset(v5, 0, 0x40uLL);
    if (v2[267])
    {
      if (v2[271])
      {
        *(v2 + 137) = precomp_DoInnerLoop_T_16R_simd_nosylrate;
        v3 = 16;
        goto LABEL_4;
      }

      v7 = precomp_DoInnerLoop_simd_nosylrate;
    }

    else
    {
      v7 = precomp_DoInnerLoop_simd_nosylrate_nopitchdeviation;
    }

LABEL_17:
    *(v2 + 137) = v7;
    v3 = 4;
    goto LABEL_4;
  }

  if (v4 == 1 && result[267] == 1 && !result[266])
  {
    v5 = result + 224;
    goto LABEL_12;
  }

LABEL_3:
  *(result + 137) = precomp_DoInnerLoop;
  v3 = 1;
LABEL_4:
  v2[270] = v3;
  return result;
}

uint64_t precomp_DoInnerLoop(uint64_t a1, void *a2, uint64_t *a3, int a4, int a5)
{
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 6720);
  v9 = *(*(a1 + 16) + 6664);
  v10 = *(a1 + 1060);
  v11 = *(v7 + 1640);
  v12 = *(v7 + 1652);
  v13 = *a2 + 24 * a4;
  v14 = *v13;
  v37 = *(v13 + 4);
  v38 = v14;
  precomp_FetchRightNode(a1, a5, &v38, &v37, 1);
  v15 = *(a3 + 3);
  if (v15 <= 0)
  {
    *(v13 + 12) = *(v13 + 12) + 10000000.0;
    *(v13 + 16) = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = *a3;
    v19 = 4 * v15;
    v20 = 10000000.0;
    do
    {
      v21 = *(v18 + 12);
      if (v21 > v20)
      {
        if (!v17)
        {
          v20 = *(v18 + 12);
          v17 = v18;
        }

        *(v13 + 12) = v20 + *(v13 + 12);
        *(v13 + 16) = v17;
        goto LABEL_41;
      }

      if (*v18 != v14 - 1)
      {
        v22 = *(a1 + 384);
        v23 = v22 - *(*(a1 + 1008) + v16);
        if (v23 >= 0)
        {
          v24 = v22 - *(*(a1 + 1008) + v16);
        }

        else
        {
          v24 = *(*(a1 + 1008) + v16) - v22;
        }

        v25 = 0.0;
        if (v24 >= v9)
        {
          v26 = *(a1 + 112) - v23;
          if (v26 < 0)
          {
            v26 = -v26;
          }

          if (v26 <= v10)
          {
            v28 = *(a1 + 1084);
            v29 = *(*(a1 + 1032) + v16);
            if (*(*(a1 + 40) + 6716))
            {
              v30 = (a1 + 128);
              if (v28)
              {
                v29 = v22 + *(v7 + 2436) * v29;
                v30 = (v7 + 2424);
              }

              LOBYTE(v25) = *(*v30 + v29);
              v27 = *(*(a1 + 1024) + v16) + (LODWORD(v25) * (v8 / 255.0));
            }

            else
            {
              v31 = (a1 + 128);
              if (v28)
              {
                v29 = v22 + *(v7 + 2436) * v29;
                v31 = (v7 + 2424);
              }

              v27 = *(*v31 + 4 * v29) + *(*(a1 + 1024) + v16);
            }
          }

          else
          {
            v27 = 1000.0;
          }

          v25 = v27 * *(a1 + 704);
        }

        v32 = v21 + v25;
        if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
        {
          if (*(a1 + 1084))
          {
            v33 = *(a1 + 448) + *(*(a1 + 1000) + v16) * v12;
            v34 = v11;
          }

          else
          {
            v34 = *(a1 + 256);
            v33 = *(*(a1 + 1000) + v16);
          }

          v32 = v32 + (((*(v34 + 4 * v33) + *(*(a1 + 1016) + v16)) + *(a1 + 576)) * *(a1 + 768));
        }

        v21 = v32 + *(a1 + 640);
        if (*(a1 + 1064))
        {
          v21 = v21 + (*(*(a1 + 1048) + v16) * vabds_f32(*(a1 + 512), *(*(a1 + 1040) + v16)));
        }
      }

      if (v21 < v20 || v17 == 0)
      {
        v17 = v18;
        v20 = v21;
      }

      v16 += 4;
      v18 += 24;
    }

    while (v19 != v16);
    *(v13 + 12) = v20 + *(v13 + 12);
    *(v13 + 16) = v17;
    if (!v17)
    {
      return 0;
    }

LABEL_41:
    ++*(v17 + 8);
  }

  return 0;
}

uint64_t precomp_DoInnerLoop__AssignZeroPathCosts(uint64_t a1, void *a2, uint64_t *a3, int a4)
{
  v4 = *a2 + 24 * a4;
  v5 = *(a3 + 3);
  if (v5 <= 0)
  {
    *(v4 + 12) = *(v4 + 12) + 0.0;
    *(v4 + 16) = 0;
  }

  else
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = v7;
      if (v6)
      {
        if (*(v7 + 12) > 0.0)
        {
          *(v4 + 12) = *(v4 + 12) + 0.0;
          *(v4 + 16) = v6;
          v8 = v6;
          goto LABEL_11;
        }

        v8 = v6;
      }

      v7 += 24;
      v6 = v8;
      --v5;
    }

    while (v5);
    *(v4 + 12) = *(v4 + 12) + 0.0;
    *(v4 + 16) = v8;
    if (!v8)
    {
      return 0;
    }

LABEL_11:
    ++*(v8 + 8);
  }

  return 0;
}

uint64_t precomp_RightLayerOptimize(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  *(a2 + 984) = v5;
  if ((v5 & 0x80000000) != 0)
  {
    *(a2 + 988) = v5;
  }

  v8 = 2229280778;
  v9 = heap_Realloc(*(a2 + 992), *(a2 + 976), (8 * v5));
  *(a2 + 976) = v9;
  if (v9)
  {
    v10 = v9;
    if (v5 >= 40 && *(a2 + 960) != 0)
    {
      v16 = 0;
      for (i = 0; ; ++i)
      {
        v18 = *(*a1 + v16) - *(a2 + 80);
        if (v7[1691])
        {
          if (v7[1496])
          {
            v18 = *(*(v6 + 848) + 4 * (v18 / v7[1498])) + v7[2891] / *v6 * (v18 % *v6);
          }

          else
          {
            v18 = *(*(v6 + 848) + 4 * (v18 / v7[1498]));
          }
        }

        v19 = *(a2 + 988);
        if (v19 != 0x7FFFFFFF)
        {
          v20 = (*(a2 + 96) + 24 * v18);
          v21 = v20[6];
          v22 = *(a2 + 968);
          LOWORD(v2) = *v20;
          if (v19 >= *(a2 + 984))
          {
            *(a2 + 984) = v19 + 1;
            v10 = heap_Realloc(*(a2 + 992), v10, (8 * (v19 + 1)));
            *(a2 + 976) = v10;
            if (!v10)
            {
              return 2229280778;
            }
          }

          v23 = v10 + 8 * *(a2 + 988);
          *v23 = v2 + (v21 << (v22 + 1));
          *(v23 + 4) = i;
          ++*(a2 + 988);
        }

        v16 += 12;
        if (12 * v5 == v16)
        {
          ssft_qsort(v10, v5, 8, compareDiag);
          return 0;
        }
      }
    }

    if (v5 >= 1)
    {
      for (j = 0; v5 != j; ++j)
      {
        v13 = *(a2 + 988);
        if (v13 != 0x7FFFFFFF)
        {
          if (v13 >= *(a2 + 984))
          {
            v14 = v13 + 1;
            *(a2 + 984) = v14;
            v10 = heap_Realloc(*(a2 + 992), v10, (8 * v14));
            *(a2 + 976) = v10;
            if (!v10)
            {
              return v8;
            }
          }

          v15 = (v10 + 8 * *(a2 + 988));
          *v15 = 0;
          v15[1] = j;
          ++*(a2 + 988);
        }
      }
    }

    return 0;
  }

  return v8;
}

uint64_t compareDiag(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t TransWeights_InitCopy(uint64_t a1, int *a2, uint64_t a3, unsigned int a4)
{
  v7 = *a2;
  if ((*(a1 + 6800) - 7) >= 5)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 2.0;
  }

  v9 = UNICORN__ffcalloc(*(*(a3 + 1072) + 8), a4, 4);
  if (!v9)
  {
    return 2229280778;
  }

  v11 = v9;
  v10.i32[0] = 1.0;
  if ((*(a1 + 6800) - 7) >= 5)
  {
    *v10.i32 = (*(a1 + 5504) + *(a1 + 5488)) + *(a1 + 5492);
  }

  if (*(a3 + 392) >= 1)
  {
    v12 = 0;
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = v7 / 2;
    if (v7 / 2 <= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v7 / 2;
    }

    v29 = vdupq_lane_s32(v10, 0);
    v28 = v16 - 1;
    do
    {
      v17 = *(a3 + 384);
      if (v14)
      {
        if (v7 >= 2 && v15 < *a2)
        {
          v13 = v13;
          do
          {
            *v11[v13] = UNICORN__mfs_Ling_TransWeightsDiphADJ(*(a3 + 8), *v14) * *(*(a3 + 1360) + 4 * v13);
            *(v11[v13] + 4) = UNICORN__mfs_Ling_TransWeightsDiphMCP(*(a3 + 8), *v14) * *(a1 + 5488);
            v18 = UNICORN__mfs_Ling_TransWeightsDiphLF0(*(a3 + 8), *v14);
            v19 = v11[v13];
            v19->f32[2] = v18 * *(a1 + 5492);
            v19->i32[3] = 0;
            *v19 = vdivq_f32(*v19, v29);
            ++v13;
            ++v15;
          }

          while (v15 < *a2);
          v15 = v7 / 2;
        }

        *v11[v13] = v8 * (UNICORN__mfs_Ling_TransWeightsPhonADJ(*(a3 + 8), *v14) * *(*(a3 + 1360) + 4 * v13));
        *(v11[v13] + 4) = v8 * (UNICORN__mfs_Ling_TransWeightsPhonMCP(*(a3 + 8), *v14) * *(a1 + 5488));
        v20 = UNICORN__mfs_Ling_TransWeightsPhonLF0(*(a3 + 8), *v14);
        v21 = v11[v13];
        v21->f32[2] = v8 * (v20 * *(a1 + 5492));
        v21->i32[3] = 0;
        *v21 = vdivq_f32(*v21, v29);
        LODWORD(v13) = v13 + 1;
        if (v7 >= 4)
        {
          v13 = v13;
          v22 = v28;
          do
          {
            v23 = v8 * (UNICORN__mfs_Ling_TransWeightsDiphADJ(*(a3 + 8), *v14) * *(*(a3 + 1360) + 4 * v13));
            v24 = v11[v13];
            *v24 = v23;
            if ((*(a1 + 6800) - 7) <= 4 && v14[6] == *a2)
            {
              *v24 = v23 + 1.0;
            }

            *(v11[v13] + 4) = v8 * (UNICORN__mfs_Ling_TransWeightsDiphMCP(*(a3 + 8), *v14) * *(a1 + 5488));
            v25 = UNICORN__mfs_Ling_TransWeightsDiphLF0(*(a3 + 8), *v14);
            v26 = v11[v13];
            v26->f32[2] = v8 * (v25 * *(a1 + 5492));
            v26->i32[3] = 0;
            *v26 = vdivq_f32(*v26, v29);
            ++v13;
            --v22;
          }

          while (v22);
          v15 = v7 / 2;
        }
      }

      else
      {
        LODWORD(v13) = v13 + v15;
      }

      v14 = (v17 + 312 * v12++);
    }

    while (v12 < *(a3 + 392));
  }

  result = 0;
  *(a3 + 1328) = v11;
  return result;
}

uint64_t Install_DynamicBeams_Unicorn(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
{
  v8 = heap_Calloc(*(*(a3 + 1072) + 8), 4 * a4, 4);
  *(a3 + 1336) = v8;
  if (!v8)
  {
    return 2229280778;
  }

  *(a3 + 1344) = v8 + 4 * a4;
  *(a3 + 1352) = v8 + 8 * a4;
  *(a3 + 1360) = v8 + 12 * a4;
  if (*(a3 + 392) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a3 + 384);
      v12 = *(a1 + 5516);
      v13 = *(a1 + 5524);
      v14 = *(a1 + 5504);
      v15 = UNICORN__mfs_Ling_WrdPosInPhrs(*(a3 + 8), v9);
      if (v15 <= 2)
      {
        if (v15 == 1)
        {
          if (*(a1 + 5772) != 0.0)
          {
            v13 = *(a1 + 5772);
          }

          if (*(a1 + 5620) != 0.0)
          {
            v12 = *(a1 + 5620);
          }

          v16 = *(a1 + 5852);
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_37;
          }

          if (*(a1 + 5780) != 0.0)
          {
            v13 = *(a1 + 5780);
          }

          if (*(a1 + 5636) != 0.0)
          {
            v12 = *(a1 + 5636);
          }

          v16 = *(a1 + 5860);
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            if (*(a1 + 5776) != 0.0)
            {
              v13 = *(a1 + 5776);
            }

            if (*(a1 + 5628) != 0.0)
            {
              v12 = *(a1 + 5628);
            }

            v16 = *(a1 + 5856);
            break;
          case 4:
            if (*(a1 + 5768) != 0.0)
            {
              v13 = *(a1 + 5768);
            }

            if (*(a1 + 5612) != 0.0)
            {
              v12 = *(a1 + 5612);
            }

            v16 = *(a1 + 5848);
            break;
          case 5:
            if (*(a1 + 5764) != 0.0)
            {
              v13 = *(a1 + 5764);
            }

            if (*(a1 + 5604) != 0.0)
            {
              v12 = *(a1 + 5604);
            }

            v16 = *(a1 + 5844);
            break;
          default:
            goto LABEL_37;
        }
      }

      if (v16 != 0.0)
      {
        v14 = v16;
      }

LABEL_37:
      v17 = UNICORN__mfs_Ling_WrdPosShpInPhrs(*(a3 + 8), v9);
      if (v17 <= 2)
      {
        if (v17)
        {
          if (v17 == 1)
          {
            if (*(a1 + 5792) != 0.0)
            {
              v13 = *(a1 + 5792);
            }

            if (*(a1 + 5660) != 0.0)
            {
              v12 = *(a1 + 5660);
            }

            v18 = *(a1 + 5872);
          }

          else
          {
            if (v17 != 2)
            {
              goto LABEL_75;
            }

            if (*(a1 + 5788) != 0.0)
            {
              v13 = *(a1 + 5788);
            }

            if (*(a1 + 5652) != 0.0)
            {
              v12 = *(a1 + 5652);
            }

            v18 = *(a1 + 5868);
          }
        }

        else
        {
          if (*(a1 + 5784) != 0.0)
          {
            v13 = *(a1 + 5784);
          }

          if (*(a1 + 5652) != 0.0)
          {
            v12 = *(a1 + 5652);
          }

          v18 = *(a1 + 5864);
        }

        goto LABEL_73;
      }

      switch(v17)
      {
        case 3:
          if (*(a1 + 5796) != 0.0)
          {
            v13 = *(a1 + 5796);
          }

          v19 = *(a1 + 5668);
          break;
        case 4:
          if (*(a1 + 5804) != 0.0)
          {
            v13 = *(a1 + 5804);
          }

          if (*(a1 + 5684) != 0.0)
          {
            v12 = *(a1 + 5684);
          }

          v18 = *(a1 + 5884);
          goto LABEL_73;
        case 5:
          if (*(a1 + 5800) != 0.0)
          {
            v13 = *(a1 + 5800);
          }

          v19 = *(a1 + 5676);
          break;
        default:
          goto LABEL_75;
      }

      if (v19 != 0.0)
      {
        v12 = v19;
      }

      v18 = *(a1 + 5876);
LABEL_73:
      if (v18 != 0.0)
      {
        v14 = v18;
      }

LABEL_75:
      v20 = UNICORN__mfs_Ling_WrdProminence(*(a3 + 8), v9);
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          if (*(a1 + 5816) != 0.0)
          {
            v13 = *(a1 + 5816);
          }

          if (*(a1 + 5708) != 0.0)
          {
            v12 = *(a1 + 5708);
          }

          v21 = *(a1 + 5896);
        }

        else
        {
          if (v20 != 3)
          {
            goto LABEL_102;
          }

          if (*(a1 + 5820) != 0.0)
          {
            v13 = *(a1 + 5820);
          }

          if (*(a1 + 5716) != 0.0)
          {
            v12 = *(a1 + 5716);
          }

          v21 = *(a1 + 5900);
        }
      }

      else if (v20)
      {
        if (v20 != 1)
        {
          goto LABEL_102;
        }

        if (*(a1 + 5812) != 0.0)
        {
          v13 = *(a1 + 5812);
        }

        if (*(a1 + 5700) != 0.0)
        {
          v12 = *(a1 + 5700);
        }

        v21 = *(a1 + 5892);
      }

      else
      {
        if (*(a1 + 5808) != 0.0)
        {
          v13 = *(a1 + 5808);
        }

        if (*(a1 + 5692) != 0.0)
        {
          v12 = *(a1 + 5692);
        }

        v21 = *(a1 + 5888);
      }

      if (v21 != 0.0)
      {
        v14 = v21;
      }

LABEL_102:
      v22 = UNICORN__mfs_Ling_WrdShpProminence(*(a3 + 8), v9);
      if (v22 <= 1)
      {
        if (!v22)
        {
          if (*(a1 + 5824) != 0.0)
          {
            v13 = *(a1 + 5824);
          }

          if (*(a1 + 5724) != 0.0)
          {
            v12 = *(a1 + 5724);
          }

          v23 = *(a1 + 5904);
          goto LABEL_133;
        }

        if (v22 == 1)
        {
          if (*(a1 + 5828) != 0.0)
          {
            v13 = *(a1 + 5828);
          }

          if (*(a1 + 5732) != 0.0)
          {
            v12 = *(a1 + 5732);
          }

          v23 = *(a1 + 5908);
          goto LABEL_133;
        }
      }

      else
      {
        switch(v22)
        {
          case 2:
            if (*(a1 + 5832) != 0.0)
            {
              v13 = *(a1 + 5832);
            }

            if (*(a1 + 5740) != 0.0)
            {
              v12 = *(a1 + 5740);
            }

            v23 = *(a1 + 5912);
            goto LABEL_133;
          case 3:
            if (*(a1 + 5836) != 0.0)
            {
              v13 = *(a1 + 5836);
            }

            if (*(a1 + 5748) != 0.0)
            {
              v12 = *(a1 + 5748);
            }

            v23 = *(a1 + 5916);
            goto LABEL_133;
          case 4:
            if (*(a1 + 5840) != 0.0)
            {
              v13 = *(a1 + 5840);
            }

            if (*(a1 + 5756) != 0.0)
            {
              v12 = *(a1 + 5756);
            }

            v23 = *(a1 + 5920);
LABEL_133:
            if (v23 != 0.0)
            {
              v14 = v23;
            }

            break;
        }
      }

      v24 = *a2;
      if (v24 >= 1)
      {
        v25 = 0;
        v26 = *(v11 + 312 * v9 + 176) + 2;
        v27 = 4 * v10;
        v28 = *(a3 + 1344) + v27;
        v29 = *(a3 + 1360) - 4;
        v30 = -4;
        do
        {
          v31 = v12;
          v32 = v13;
          v33 = v14;
          if ((*(v26 + v25) & 4) == 0)
          {
            v34 = *(a1 + 5520);
            v31 = v12;
            v32 = v13;
            v33 = v14;
            if (v34 != 0.0)
            {
              v31 = v12 * v34;
              v32 = v13 * v34;
              v33 = v14 * v34;
            }
          }

          if (v32 < 0.0)
          {
            v32 = 0.0;
          }

          if (v32 > 1.0)
          {
            v32 = 1.0;
          }

          if (v31 < 0.0)
          {
            v31 = 0.0;
          }

          if (v31 > 1.0)
          {
            v31 = 1.0;
          }

          *(v28 + 4 * v25) = *(a1 + 5568);
          if (v10 + v25 < 1)
          {
            *(v29 + v27 + 4) = v33;
            *(*(a3 + 1352) + v27 + 4 * v25) = v32;
            v35 = *(a3 + 1336);
          }

          else
          {
            *(v29 + 4 * v10 + 4) = (*(v29 + 4 * v10) * 0.6) + (v33 * 0.4);
            *(*(a3 + 1352) + v27 + v30 + 4) = (*(*(a3 + 1352) + v27 + v30) * 0.6) + (v32 * 0.4);
            v35 = *(a3 + 1336);
            v31 = (*(v35 + v27 + 4 * v25 - 4) * 0.6) + (v31 * 0.4);
          }

          v36 = v25 + 1;
          *(v35 + v27 + 4 * v25) = v31;
          v29 += 4;
          v30 += 4;
          v25 = v36;
        }

        while (v24 != v36);
        v10 += v36;
      }

      ++v9;
    }

    while (v9 < *(a3 + 392));
  }

  return 0;
}

uint64_t UNICORN__mfs_S32Vect_Init(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
  return result;
}

void *UNICORN__mfs_S32Vect_Clear(void *result)
{
  v1 = result;
  v2 = result[1];
  if (v2)
  {
    result = heap_Free(*result, v2);
    v1[1] = 0;
  }

  v1[2] = 0;
  return result;
}

uint64_t UNICORN__mfs_S32Vect_Reserve(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 && *(a1 + 20) >= a2)
  {
    return 0;
  }

  v5 = heap_Realloc(*a1, v4, 4 * a2);
  if (!v5)
  {
    return 2229280778;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  if (a2 > v7)
  {
    cstdlib_memset((v5 + 4 * v7), 0, 4 * (a2 - v7));
  }

  result = 0;
  *(a1 + 8) = v6;
  *(a1 + 20) = a2;
  return result;
}

uint64_t UNICORN__mfs_S32Vect_Add(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    v5 = heap_Realloc(*a1, *(a1 + 8), 4 * (v4 + 1));
    if (!v5)
    {
      return 2229280778;
    }

    *(a1 + 8) = v5;
    v4 = *(a1 + 16);
    *(a1 + 20) = v4 + 1;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = 0;
  *(v5 + 4 * v4) = a2;
  ++*(a1 + 16);
  return v6;
}

uint64_t UNICORN__mfs_S32Vect_Pad(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2 >= *(a1 + 20))
  {
    return 2229280778;
  }

  result = 0;
  *(*(a1 + 8) + 4 * v2) = a2;
  ++*(a1 + 16);
  return result;
}

uint64_t UNICORN__mfs_U32Vect_Init(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
  return result;
}

void *UNICORN__mfs_U32Vect_Clear(void *result)
{
  v1 = result;
  v2 = result[1];
  if (v2)
  {
    result = heap_Free(*result, v2);
    v1[1] = 0;
  }

  v1[2] = 0;
  return result;
}

uint64_t UNICORN__mfs_U32Vect_Reserve(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20) == a2)
  {
    return 0;
  }

  result = 0;
  if (a2 && *(a1 + 16) <= a2)
  {
    v5 = heap_Realloc(*a1, *(a1 + 8), 4 * a2);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 16);
      if (a2 > v7)
      {
        cstdlib_memset((v5 + 4 * v7), 0, 4 * (a2 - v7));
      }

      result = 0;
      *(a1 + 8) = v6;
      *(a1 + 20) = a2;
    }

    else
    {
      return 2229280778;
    }
  }

  return result;
}

uint64_t UNICORN__mfs_U32Vect_Add(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    v5 = heap_Realloc(*a1, *(a1 + 8), 4 * (v4 + 1));
    if (!v5)
    {
      return 2229280778;
    }

    *(a1 + 8) = v5;
    v4 = *(a1 + 16);
    *(a1 + 20) = v4 + 1;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = 0;
  *(v5 + 4 * v4) = a2;
  ++*(a1 + 16);
  return v6;
}

uint64_t UNICORN__mfs_F32Vect_Init(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
  return result;
}

float UNICORN__mfs_F32Vect_Copy(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v4;
  UNICORN__mfs_F32Vect_Create(a1, *(a2 + 4));
  v6 = *(a1 + 16);
  v7 = *(a2 + 4);
  if (v6 < v7)
  {
    v8 = *(a1 + 20);
    do
    {
      if (v6 < v8)
      {
        result = *(a2[1] + 4 * v6);
        *(*(a1 + 8) + 4 * v6++) = result;
        *(a1 + 16) = v6;
        v7 = *(a2 + 4);
      }
    }

    while (v6 < v7);
  }

  return result;
}

uint64_t UNICORN__mfs_F32Vect_Create(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = 0;
  if (!a2)
  {
    return 0;
  }

  v4 = 4 * a2;
  v5 = heap_Alloc(*a1, v4);
  if (!v5)
  {
    return 2229280778;
  }

  v6 = v5;
  cstdlib_memset(v5, 0, v4);
  result = 0;
  *(a1 + 8) = v6;
  *(a1 + 20) = a2;
  return result;
}

uint64_t UNICORN__mfs_F32Vect_Pad(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (v2 >= *(a1 + 20))
  {
    return 2229280778;
  }

  result = 0;
  *(*(a1 + 8) + 4 * v2) = a2;
  *(a1 + 16) = v2 + 1;
  return result;
}

void *UNICORN__mfs_F32Vect_Clear(void *result)
{
  v1 = result;
  v2 = result[1];
  if (v2)
  {
    result = heap_Free(*result, v2);
    v1[1] = 0;
  }

  v1[2] = 0;
  return result;
}

uint64_t mfs_F32Vect_Reserve(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 && *(a1 + 20) >= a2)
  {
    return 0;
  }

  v5 = heap_Realloc(*a1, v4, 4 * a2);
  if (!v5)
  {
    return 2229280778;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  if (a2 > v7)
  {
    cstdlib_memset((v5 + 4 * v7), 0, 4 * (a2 - v7));
  }

  result = 0;
  *(a1 + 8) = v6;
  *(a1 + 20) = a2;
  return result;
}

uint64_t UNICORN__mfs_DPLinks_Init(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
  return result;
}

void *UNICORN__mfs_DPLinks_Clear(void *result)
{
  v1 = result;
  v2 = result[1];
  if (v2)
  {
    result = heap_Free(*result, v2);
    v1[1] = 0;
  }

  v1[2] = 0;
  return result;
}

uint64_t UNICORN__mfs_DPLinks_Reserve(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20) == a2)
  {
    return 0;
  }

  result = 0;
  if (a2 && *(a1 + 16) <= a2)
  {
    v5 = heap_Realloc(*a1, *(a1 + 8), 8 * a2);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 16);
      if (a2 > v7)
      {
        cstdlib_memset((v5 + 8 * v7), 0, 8 * (a2 - v7));
      }

      result = 0;
      *(a1 + 8) = v6;
      *(a1 + 20) = a2;
    }

    else
    {
      return 2229280778;
    }
  }

  return result;
}

uint64_t UNICORN__mfs_DPLinks_Add(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    v5 = heap_Realloc(*a1, *(a1 + 8), 8 * (v4 + 1));
    if (!v5)
    {
      return 2229280778;
    }

    *(a1 + 8) = v5;
    v4 = *(a1 + 16);
    *(a1 + 20) = v4 + 1;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = 0;
  *(v5 + 8 * v4) = *a2;
  ++*(a1 + 16);
  return v6;
}

uint64_t UNICORN__mfs_InitStream(uint64_t a1, void *__b, _DWORD *a3)
{
  cstdlib_memset(__b, 0, 0x7C0uLL);
  *(__b + 134) = a1;

  return UNICORN__InitVStream(a1, __b, a3);
}

void *UNICORN__mfs_DeInitStream(void *result)
{
  if (result)
  {
    v1 = result;
    if (result[134])
    {
      UNICORN__mfs_CostList_DeInit(result + 136);
      v2 = v1[165];
      if (v2)
      {
        heap_Free(*(v1[134] + 8), v2);
        v1[165] = 0;
      }

      UNICORN__ff_free(*(v1[134] + 8), v1[166]);
      v3 = v1[167];
      if (v3)
      {
        heap_Free(*(v1[134] + 8), v3);
        v1[167] = 0;
      }

      for (i = 208; i != 213; ++i)
      {
        v5 = v1[i];
        if (v5)
        {
          heap_Free(*(v1[134] + 8), v5);
          v1[i] = 0;
        }
      }

      v6 = v1[224];
      if (v6)
      {
        heap_Free(*(v1[134] + 8), v6);
        v1[224] = 0;
      }

      v7 = v1[225];
      if (v7)
      {
        heap_Free(*(v1[134] + 8), v7);
        v1[225] = 0;
      }

      v8 = v1[227];
      if (v8)
      {
        heap_Free(*(v1[134] + 8), v8);
        v1[227] = 0;
      }

      UNICORN__mfs_DPLinks_Clear(v1 + 172);
      UNICORN__mfs_UnitSequence_DeInit((v1 + 175));
      UNICORN__mfs_SegmentList_DeInit(v1 + 190);
      UNICORN__mfs_SegmentList_DeInit(v1 + 194);
      v9 = v1[8];
      if (v9 && *(v9 + 244))
      {
        v10 = 0;
        do
        {
          if (*(v9 + 4 * v10 + 224))
          {
            UNICORN__DeInitMSDUttModel(v1 + 7, v10);
            v9 = v1[8];
          }

          ++v10;
        }

        while (v10 < *(v9 + 244));
      }

      UNICORN__DeInitVStream(v1);
      for (j = 231; j != 243; j += 2)
      {
        VectBlock_Destroy(v1[134], &v1[j]);
      }

      return cstdlib_memset(v1, 0, 0x7C0uLL);
    }
  }

  return result;
}

uint64_t UNICORN__mfs_LoadStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  result = UNICORN__LoadVStream(a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {
    UNICORN__mfs_DPLinks_Init(*(a1 + 1072), (a1 + 1376));
    result = UNICORN__mfs_UnitSequence_Init(*(a1 + 1072), (a1 + 1400), a2, a4, a5);
    if ((result & 0x80000000) == 0)
    {
      result = UNICORN__mfs_SegmentList_Init(*(a1 + 1072), a2, (a1 + 1520));
      if ((result & 0x80000000) == 0)
      {
        result = UNICORN__mfs_SegmentList_Init(*(a1 + 1072), a2, (a1 + 1552));
      }
    }

    *(a1 + 1976) = *(a3 + 6768);
    *(a1 + 1776) = a4;
    *(a1 + 1784) = a5;
  }

  return result;
}

uint64_t BET5_GenericRules_Rule_Matches(uint64_t a1, unsigned int *a2, int a3, _DWORD *a4)
{
  v4 = *(a1 + 392);
  *a4 = 1;
  v5 = *a2;
  if (v5)
  {
    v6 = 0;
    for (i = *(a2 + 1) + 5; ; i += 40)
    {
      v8 = *(i - 1) + a3;
      if (v8 < 0 || v8 >= v4)
      {
        if ((*(i - 5) - 253) >= 2)
        {
          break;
        }

        v10 = 1;
      }

      else
      {
        v9 = *(*(a1 + 8) + 8 * *(i - 5) + 16);
        if (!v9)
        {
          break;
        }

        v10 = *(v9 + v8);
      }

      if (((*(i + (v10 >> 3)) >> (v10 & 7)) & 1) == 0)
      {
        break;
      }

      if (++v6 >= v5)
      {
        return 0;
      }
    }

    *a4 = 0;
  }

  return 0;
}

uint64_t BET5_GenericRules_ParamActions_AllocMemoryAndInit(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = a2[600];
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 299);
  if (!v4)
  {
    return 0;
  }

  for (i = (v4 + 40); !*(i - 2) || !*i; i += 6)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  v9 = 2229280778;
  v10 = *a2;
  v11 = *(a3 + 392);
  v54 = *(a3 + 1072);
  v13 = heap_Calloc(*(v54 + 8), 8, 8);
  *(a3 + 1368) = v13;
  if (!v13)
  {
    return v9;
  }

  v14 = v13;
  v15 = a2[600];
  v16 = a2;
  if (!v15)
  {
    v15 = 0;
    goto LABEL_35;
  }

  v17 = 0;
  v7 = 0;
  v18 = (v11 * v10);
  v56 = 0;
  v51 = vdupq_n_s64(v18 - 1);
  while (1)
  {
    v19 = *(v16 + 299);
    if (v19)
    {
      v20 = v19 + 48 * v17;
      if (*(v20 + 32))
      {
        if (*(v20 + 40))
        {
          break;
        }
      }
    }

LABEL_31:
    if (++v17 >= v15)
    {
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

LABEL_35:
      v52 = *v16;
      v38 = *(a3 + 392);
      v57 = 0;
      v53 = v38;
      if (v38)
      {
        v39 = 0;
        v50 = v16;
        do
        {
          if (v15)
          {
            v40 = 0;
            v41 = *(v16 + 299);
            do
            {
              if (v41)
              {
                v42 = v41 + 48 * v40;
                v43 = *(v42 + 32);
                if (v43)
                {
                  v44 = *(v42 + 40);
                  if (v44)
                  {
                    BET5_GenericRules_Rule_Matches(a3, v42, v39, &v57);
                    if (v57)
                    {
                      v45 = (v44 + 12);
                      do
                      {
                        v46 = *(v45 - 3);
                        v47 = *(v14 + 8 * *(v45 - 2));
                        if (v46 == 9 || v46 == 7)
                        {
                          *(v47 + 4 * (v52 * v39)) = *v45;
                        }

                        if ((v46 & 0xFFFFFFFE) == 8)
                        {
                          *(v47 + 4 * (v52 * (v39 + 1) - 1)) = *v45;
                        }

                        v45 += 4;
                        --v43;
                      }

                      while (v43);
                    }
                  }
                }
              }

              ++v40;
            }

            while (v40 != v15);
            v16 = v50;
            v49 = v39 + 1;
          }

          else
          {
            v49 = v39 + 1;
          }

          v39 = v49;
        }

        while (v49 != v53);
      }

      return 0;
    }
  }

  v21 = v16;
  v22 = 0;
  while (1)
  {
    v23 = *(v20 + 40) + 16 * v22;
    v25 = *(v23 + 4);
    v24 = (v23 + 4);
    GlobalValue = BET5_Param_GetGlobalValue(a1, v25, &v56);
    v7 = GlobalValue;
    if ((GlobalValue & 0x80000000) != 0)
    {
      return GlobalValue;
    }

    v14 = *(a3 + 1368);
    v27 = *v24;
    if (!*(v14 + 8 * v27))
    {
      break;
    }

LABEL_29:
    if (++v22 >= *(v20 + 32))
    {
      v16 = v21;
      v15 = v21[600];
      goto LABEL_31;
    }
  }

  if (BET5_Param_GetType(v27) != 1)
  {
    return 2229280768;
  }

  v28 = heap_Calloc(*(v54 + 8), v18, 4);
  v30 = *v24;
  *(*(a3 + 1368) + 8 * v30) = v28;
  v14 = *(a3 + 1368);
  v31 = *(v14 + 8 * v30);
  if (v31)
  {
    if (v18)
    {
      v29.i32[0] = v56;
      v32 = (v31 + 8);
      v33 = (v18 + 3) & 0x1FFFFFFFCLL;
      v34 = xmmword_26ECC7980;
      v35 = xmmword_26ECCE810;
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v51, v34));
        if (vuzp1_s16(v36, v29).u8[0])
        {
          *(v32 - 2) = v29.i32[0];
        }

        if (vuzp1_s16(v36, v29).i8[2])
        {
          *(v32 - 1) = v29.i32[0];
        }

        if (vuzp1_s16(v29, vmovn_s64(vcgeq_u64(v51, *&v35))).i32[1])
        {
          *v32 = v29.i32[0];
          v32[1] = v29.i32[0];
        }

        v37 = vdupq_n_s64(4uLL);
        v35 = vaddq_s64(v35, v37);
        v34 = vaddq_s64(v34, v37);
        v32 += 4;
        v33 -= 4;
      }

      while (v33);
    }

    goto LABEL_29;
  }

  return 2229280778;
}

void *BET5_GenericRules_ParamActions_FreeMemory(void *result)
{
  if (result[171])
  {
    v1 = result;
    v2 = 0;
    v3 = result[134];
    do
    {
      v4 = *(v1[171] + v2);
      if (v4)
      {
        heap_Free(*(v3 + 8), v4);
      }

      v2 += 8;
    }

    while (v2 != 64);
    v5 = *(v3 + 8);
    v6 = v1[171];

    return heap_Free(v5, v6);
  }

  return result;
}

float BET5_GenericRules_Param_GetLocalValue(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, float *a5)
{
  if ((BET5_Param_GetGlobalValue(a1, a3, a5) & 0x80000000) == 0)
  {
    v10 = *(a2 + 1368);
    if (v10)
    {
      v11 = *(v10 + 8 * a3);
      if (v11)
      {
        result = *(v11 + 4 * a4);
        *a5 = result;
      }
    }
  }

  return result;
}

uint64_t UNICORN__mfs_UnitSequence_Init(uint64_t a1, uint64_t *__b, uint64_t a3, uint64_t a4, int a5)
{
  cstdlib_memset(__b, 0, 0x78uLL);
  *__b = a1;
  __b[1] = a3;
  UNICORN__mfs_S32Vect_Init(a1, __b + 6);
  UNICORN__mfs_F32Vect_Init(a1, __b + 9);
  UNICORN__mfs_S32Vect_Init(a1, __b + 12);
  __b[2] = a4;
  *(__b + 6) = a5;
  return 0;
}

void *UNICORN__mfs_UnitSequence_DeInit(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
  UNICORN__mfs_S32Vect_Clear((a1 + 48));
  UNICORN__mfs_F32Vect_Clear((a1 + 72));
  result = UNICORN__mfs_S32Vect_Clear((a1 + 96));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t mfs_UnitSequence_SequencePartial(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(__b, 0, sizeof(__b));
  v10 = *(a2 + 8);
  v11 = *(*(v10 + 568) + 11548);
  cstdlib_memset(__b, 0, 0x108uLL);
  v12 = heap_Realloc(*(*a2 + 8), *(a2 + 32), 264 * *(a2 + 64));
  if (!v12)
  {
    return 2229280778;
  }

  *(a2 + 32) = v12;
  *(a2 + 40) = 0;
  v13 = *(a2 + 64);
  if (v13 > 0)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      if (v14 + 1 == v13)
      {
        v16 = *&__b[4];
      }

      else
      {
        v16 = *&__b[4];
        if (*(*(a2 + 56) + 4 * v14 + 4) != *(*(a2 + 56) + 4 * v14) + 1)
        {
          ++*&__b[4];
          memcpy((*(a2 + 32) + 264 * v15), __b, 0x108uLL);
          v15 = *(a2 + 40) + 1;
          *(a2 + 40) = v15;
          v17 = *&__b[4];
          *__b = *&__b[4];
          v13 = *(a2 + 64);
          goto LABEL_9;
        }
      }

      v17 = v16 + 1;
      *&__b[4] = v17;
LABEL_9:
      if (++v14 >= v13)
      {
        goto LABEL_13;
      }
    }
  }

  v15 = 0;
  v17 = *&__b[4];
LABEL_13:
  if (v17 != *__b)
  {
    memcpy((*(a2 + 32) + 264 * v15), __b, 0x108uLL);
    ++*(a2 + 40);
  }

  if (a4 >= a5)
  {
    return 0;
  }

  v19 = a5 - 1;
  v20 = 4 * a4;
  do
  {
    v26 = 0;
    v25 = 0;
    v21 = *(*(a2 + 56) + v20);
    v22 = *(*(a2 + 104) + v20);
    if (v22 == -1)
    {
      mfs_GetMessageOffsetAndDur_Msecs(v10, *(*(a2 + 56) + v20), &v25, &v26);
    }

    else
    {
      mfs_GetMessageOffsetAndDur_Msecs(*(*(a2 + 16) + 48 * v22 + 16), *(*(a2 + 56) + v20), &v25, &v26);
      v21 += *(*(a2 + 16) + 48 * *(*(a2 + 104) + v20) + 24);
    }

    if (v21 == v11)
    {
      v23 = -1;
    }

    else
    {
      v23 = v21;
    }

    result = UNICORN__mfs_SegmentList_Add(a3, v23, *(a1 + a4 / *v10), v25, v26);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v20 += 4;
  }

  while (v19 != a4++);
  return result;
}

void *Allocate_ML_TRAJ_GEN_SPACE(uint64_t a1, size_t __size)
{
  v2 = __size;
  *a1 = __size;
  *(a1 + 4) = 0;
  *(a1 + 128) = 0;
  v4 = __size;
  *(a1 + 16) = malloc(__size);
  if (v2)
  {
    v5 = 0;
    do
    {
      *(*(a1 + 16) + v5++) = 0;
    }

    while (v4 != v5);
  }

  v6 = malloc(32 * v2);
  *(a1 + 8) = v6;
  *(a1 + 24) = v6;
  v7 = (a1 + 32);
  v8 = &v6[4 * v4];
  v9 = 8 * v4;
  v10 = 3;
  v11 = &v6[8 * v4];
  do
  {
    *v7 = v8;
    v7[3] = v11;
    ++v7;
    v8 += v9;
    v11 += v9;
    --v10;
  }

  while (v10);
  *(a1 + 120) = v8;

  return Allocate_EQ_SYM5DIAG(a1 + 80, v2);
}

double Deallocate_ML_TRAJ_GEN_SPACE(uint64_t a1)
{
  if (*a1)
  {
    free(*(a1 + 16));
    free(*(a1 + 8));

    return Deallocate_EQ_SYM5DIAG(a1 + 80);
  }

  return result;
}

uint64_t ML_TRAJ_GEN_SPACE_set_sizes(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 0;
  v4 = a2 - a3;
  if (a2 > a3 && *a1 >= a2)
  {
    *(a1 + 4) = a2;
    *(a1 + 128) = v4;
    *(a1 + 80) = v4;
    if (a2 >= 1)
    {
        ;
      }
    }

    return 1;
  }

  return v3;
}

float *Gen_ML_Trajectory(float *result, double a2)
{
  v2 = result;
  v3 = *(result + 1);
  v4 = (v3 - 1);
  if (v3 == 1)
  {
    **(result + 15) = **(result + 4);
    return result;
  }

  v5 = *(result + 2);
  if (*v5)
  {
    v6 = *(result + 4);
    *&a2 = *v6 - **(result + 3);
    *v6 = *&a2;
  }

  if (v3 < 3)
  {
    v4 = 1;
  }

  else
  {
    v7 = 0;
    LODWORD(a2) = -0.5;
    do
    {
      if (v5[v7 + 1])
      {
        v8 = *(result + 3) + 4 * v7;
        *(*(result + 4) + 4 * v7 + 4) = *(*(result + 4) + 4 * v7 + 4) - *(v8 + 4);
        *(*(result + 6) + 4 * v7 + 4) = *(*(result + 6) + 4 * v7 + 4) + (*(v8 + 4) * 2.0);
      }

      if (v5[v7])
      {
        v9 = *(result + 3);
        v10 = *(result + 6);
        *(*(result + 5) + 4 * v7 + 4) = *(*(result + 5) + 4 * v7 + 4) + (*(v9 + 4 * v7) * 0.5);
        *(v10 + 4 * v7 + 4) = *(v10 + 4 * v7 + 4) - *(v9 + 4 * v7);
      }

      if (v5[v7 + 2])
      {
        v11 = *(result + 3) + 4 * v7;
        v12 = *(result + 6);
        *(*(result + 5) + 4 * v7 + 4) = *(*(result + 5) + 4 * v7 + 4) + (*(v11 + 8) * -0.5);
        *(v12 + 4 * v7 + 4) = *(v12 + 4 * v7 + 4) - *(v11 + 8);
      }

      ++v7;
    }

    while (v4 - 1 != v7);
  }

  if (v5[v4])
  {
    v13 = *(result + 4);
    *&a2 = *(v13 + 4 * v4) - *(*(result + 3) + 4 * v4);
    *(v13 + 4 * v4) = LODWORD(a2);
  }

  if (v3 == 3)
  {
    if (*v5)
    {
      v16 = 0;
LABEL_39:
      if (!v5[1])
      {
        v34 = *(v2 + 7);
        v35 = *(v2 + 9);
        v36 = *(*(v2 + 12) + 8 * v16);
        *v36 = *(v34 + 4) + (*(v35 + 4) * 4.0);
        if (v5[2])
        {
          v37 = 1;
        }

        else
        {
          v36[1] = *(v35 + 4) * -2.0;
          v37 = 2;
        }

        bzero(&v36[v37], (v37 * 4) ^ 0xC);
        *&a2 = ((*(v35 + 4) * -2.0) * *(*(v2 + 6) + 4)) + (*(v34 + 4) * *(*(v2 + 4) + 4));
        *(*(v2 + 13) + 4 * v16++) = LODWORD(a2);
      }

      if (v5[2])
      {
        goto LABEL_85;
      }

      v39 = *(v2 + 7);
      v38 = *(v2 + 8);
      v40 = *(v2 + 9);
      v41 = *(*(v2 + 12) + 8 * v16);
      v15 = v16;
      *v41 = (*(v40 + 4) + (*(v38 + 4) * 0.25)) + *(v39 + 8);
      *(v41 + 4) = 0;
      *(v41 + 8) = 0;
      v42 = (*(v40 + 4) * *(*(v2 + 6) + 4)) + ((*(v38 + 4) * 0.5) * *(*(v2 + 5) + 4));
      v43 = *(v39 + 8);
      v44 = *(*(v2 + 4) + 8);
      goto LABEL_83;
    }

    v23 = *(result + 7);
    v22 = *(result + 8);
    v24 = *(result + 9);
    v25 = **(result + 12);
    *v25 = *(v24 + 4) + (*v23 + (*(v22 + 4) * 0.25));
    v26 = v5[1];
    if (v5[1])
    {
      v27 = 0;
    }

    else
    {
      v25[1] = *(v24 + 4) * -2.0;
      v27 = 1;
    }

    if (!v5[2])
    {
      v25[v27 + 1] = *(v24 + 4) + (*(v22 + 4) * -0.25);
      if (!v26)
      {
LABEL_38:
        *&a2 = (((*(v22 + 4) * -0.5) * *(*(v2 + 5) + 4)) + (*v23 * **(v2 + 4))) + (*(v24 + 4) * *(*(v2 + 6) + 4));
        **(v2 + 13) = LODWORD(a2);
        v16 = 1;
        goto LABEL_39;
      }

      v27 = 1;
    }

    bzero(&v25[v27 + 1], 8 - 4 * v27);
    goto LABEL_38;
  }

  v14 = (v3 - 2);
  if (v3 != 2)
  {
    if (*v5)
    {
      v17 = 0;
      goto LABEL_52;
    }

    v29 = *(result + 7);
    v28 = *(result + 8);
    v30 = *(result + 9);
    v31 = **(result + 12);
    *v31 = *(v30 + 4) + (*v29 + (*(v28 + 4) * 0.25));
    v32 = v5[1];
    if (v5[1])
    {
      v33 = 0;
    }

    else
    {
      v31[1] = *(v30 + 4) * -2.0;
      v33 = 1;
    }

    if (!v5[2])
    {
      v31[v33 + 1] = *(v30 + 4) + (*(v28 + 4) * -0.25);
      if (!v32)
      {
LABEL_51:
        *&a2 = (((*(v28 + 4) * -0.5) * *(*(v2 + 5) + 4)) + (*v29 * **(v2 + 4))) + (*(v30 + 4) * *(*(v2 + 6) + 4));
        **(v2 + 13) = LODWORD(a2);
        v17 = 1;
LABEL_52:
        if (v5[1])
        {
LABEL_61:
          if (v3 >= 5)
          {
            v51 = 2;
            while (v5[v51])
            {
              v52 = v51 + 1;
LABEL_73:
              v51 = v52;
              if (v52 == v14)
              {
                goto LABEL_76;
              }
            }

            v54 = *(v2 + 7);
            v55 = *(v2 + 8);
            v56 = *(v2 + 9);
            v52 = v51 + 1;
            v57 = *(*(v2 + 12) + 8 * v17);
            *v57 = *(v56 + 4 * (v51 + 1)) + ((((*(v56 + 4 * (v51 - 1)) + (*(v55 + 4 * (v51 - 1)) * 0.25)) + *(v54 + 4 * v51)) + (*(v56 + 4 * v51) * 4.0)) + (*(v55 + 4 * (v51 + 1)) * 0.25));
            v58 = v5[v51 + 1];
            if (v5[v51 + 1])
            {
              v59 = 0;
            }

            else
            {
              v57[1] = (*(v56 + 4 * v52) * -2.0) + (*(v56 + 4 * v51) * -2.0);
              v59 = 1;
            }

            if (!v5[v51 + 2])
            {
              v57[v59 + 1] = *(v56 + 4 * v52) + (*(v55 + 4 * v52) * -0.25);
              if (!v58)
              {
LABEL_72:
                v60 = *(v2 + 6);
                v53 = v51 - 1;
                *&a2 = (((((*(v56 + 4 * v53) * *(v60 + 4 * v53)) + ((*(v55 + 4 * v53) * 0.5) * *(*(v2 + 5) + 4 * v53))) + (*(v54 + 4 * v51) * *(*(v2 + 4) + 4 * v51))) + ((*(v56 + 4 * v51) * -2.0) * *(v60 + 4 * v51))) + ((*(v55 + 4 * v52) * -0.5) * *(*(v2 + 5) + 4 * v52))) + (*(v56 + 4 * v52) * *(v60 + 4 * v52));
                *(*(v2 + 13) + 4 * v17++) = LODWORD(a2);
                goto LABEL_73;
              }

              v59 = 1;
            }

            bzero(&v57[v59 + 1], 8 - 4 * v59);
            goto LABEL_72;
          }

          LODWORD(v14) = 2;
LABEL_76:
          v61 = v14;
          v62 = &v5[v14];
          if (!*v62)
          {
            v63 = v14 - 1;
            v64 = *(v2 + 7);
            v65 = *(v2 + 8);
            v66 = *(v2 + 9);
            v67 = *(*(v2 + 12) + 8 * v17);
            *v67 = ((*(v66 + 4 * v63) + (*(v65 + 4 * v63) * 0.25)) + *(v64 + 4 * v61)) + (*(v66 + 4 * v61) * 4.0);
            if (v62[1])
            {
              v68 = 1;
            }

            else
            {
              v67[1] = *(v66 + 4 * v61) * -2.0;
              v68 = 2;
            }

            bzero(&v67[v68], (v68 * 4) ^ 0xC);
            *&a2 = (((*(v66 + 4 * v63) * *(*(v2 + 6) + 4 * v63)) + ((*(v65 + 4 * v63) * 0.5) * *(*(v2 + 5) + 4 * v63))) + (*(v64 + 4 * v61) * *(*(v2 + 4) + 4 * v61))) + ((*(v66 + 4 * v61) * -2.0) * *(*(v2 + 6) + 4 * v61));
            *(*(v2 + 13) + 4 * v17++) = LODWORD(a2);
          }

          v69 = v61 + 1;
          if (v5[v61 + 1])
          {
            goto LABEL_85;
          }

          v71 = *(v2 + 7);
          v70 = *(v2 + 8);
          v72 = *(v2 + 9);
          v73 = *(*(v2 + 12) + 8 * v17);
          v15 = v17;
          *v73 = (*(v72 + 4 * v61) + (*(v70 + 4 * v61) * 0.25)) + *(v71 + 4 * v69);
          *(v73 + 4) = 0;
          *(v73 + 8) = 0;
          v42 = (*(v72 + 4 * v61) * *(*(v2 + 6) + 4 * v61)) + ((*(v70 + 4 * v61) * 0.5) * *(*(v2 + 5) + 4 * v61));
          v43 = *(v71 + 4 * v69);
          v44 = *(*(v2 + 4) + 4 * v69);
LABEL_83:
          *&a2 = v42 + (v43 * v44);
          goto LABEL_84;
        }

        v46 = *(v2 + 7);
        v45 = *(v2 + 8);
        v47 = *(v2 + 9);
        v48 = *(*(v2 + 12) + 8 * v17);
        *v48 = *(v47 + 8) + ((*(v46 + 4) + (*(v47 + 4) * 4.0)) + (*(v45 + 8) * 0.25));
        v49 = v5[2];
        if (v5[2])
        {
          v50 = 0;
        }

        else
        {
          v48[1] = (*(v47 + 8) * -2.0) + (*(v47 + 4) * -2.0);
          v50 = 1;
        }

        if (!v5[3])
        {
          v48[v50 + 1] = *(v47 + 8) + (*(v45 + 8) * -0.25);
          if (!v49)
          {
LABEL_60:
            *&a2 = ((((*(v47 + 4) * -2.0) * *(*(v2 + 6) + 4)) + (*(v46 + 4) * *(*(v2 + 4) + 4))) + ((*(v45 + 8) * -0.5) * *(*(v2 + 5) + 8))) + (*(v47 + 8) * *(*(v2 + 6) + 8));
            *(*(v2 + 13) + 4 * v17++) = LODWORD(a2);
            goto LABEL_61;
          }

          v50 = 1;
        }

        bzero(&v48[v50 + 1], 8 - 4 * v50);
        goto LABEL_60;
      }

      v33 = 1;
    }

    bzero(&v31[v33 + 1], 8 - 4 * v33);
    goto LABEL_51;
  }

  if (*v5)
  {
    v15 = 0;
  }

  else
  {
    v18 = *(result + 7);
    v19 = **(result + 12);
    *v19 = *v18;
    v19[1] = 0;
    v19[2] = 0;
    *&a2 = *v18 * **(result + 4);
    **(result + 13) = LODWORD(a2);
    v15 = 1;
  }

  if (v5[1])
  {
    goto LABEL_85;
  }

  v20 = *(result + 7);
  v21 = *(*(result + 12) + 8 * v15);
  *v21 = *(v20 + 4);
  v21[1] = 0;
  v21[2] = 0;
  *&a2 = *(v20 + 4) * *(*(result + 4) + 4);
LABEL_84:
  *(*(v2 + 13) + 4 * v15) = LODWORD(a2);
LABEL_85:
  v74 = *(v2 + 15);

  return solve_EQ_SYM5DIAG(v2 + 20, v74, a2);
}

uint64_t mfs_TCost_Elf0_Manhattan_TreeIndex(float *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8, float a9, float a10)
{
  v11 = *a3;
  v10 = a3[1];
  v12 = a4;
  v13 = *(a3[2] + 32 * a4 + 16);
  v83 = 0;
  *v84 = 0;
  v82 = 0;
  if (!v13)
  {
    return 0;
  }

  BET5_GenericRules_Param_GetLocalValue(a1, a2, 3u, a4, &v84[1]);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  BET5_GenericRules_Param_GetLocalValue(a1, a2, 4u, a4, &v83);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  BET5_GenericRules_Param_GetLocalValue(a1, a2, 5u, a4, &v82);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  BET5_GenericRules_Param_GetLocalValue(a1, a2, 6u, a4, v84);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  BET5_GenericRules_Param_GetLocalValue(a1, a2, 7u, a4, &v83 + 1);
  v24 = v23;
  if ((v23 & 0x80000000) == 0)
  {
    v25 = *(*(*(v10 + 776) + 8 * a7) + 40 * a6 + 4);
    v26 = *(a2 + 1768);
    if (v26 && *(v26 + 4))
    {
      v27 = *(v26 + 2);
      v28 = -1;
      if (v27 > a4 && v25)
      {
        v29 = v10 + 8 * a7;
        v30 = *(*(v29 + 1184) + 8 * a6);
        v31 = *(*(v29 + 1248) + 8 * a6);
        v32 = a1[1504];
        v33 = *v26;
        v34 = *(*v26 + 48 * v12 + 20);
        if (v34 == 0.0 && (!a4 || *(v33 + 48 * (a4 - 1) + 20) == 0.0) && (a4 + 1 >= v27 || *(v33 + 48 * (a4 + 1) + 20) == 0.0))
        {
          goto LABEL_37;
        }

        v28 = *(v26 + 6);
        v35 = 0.0;
        v36 = *(*(*(v10 + 776) + 8 * a7) + 40 * a6 + 4);
        v37 = v31;
        v38 = v30;
        v39 = 0.0;
        v40 = 1.0 / a1[1514];
        do
        {
          v41 = *v38++;
          v42 = v32 + (v41 * v40);
          v43 = *v37++;
          v35 = v35 + v42;
          v39 = v39 + (v32 + (v43 * v40));
          --v36;
        }

        while (v36);
        v44 = v35 / v25;
        v45 = 0.0;
        v46 = *(*(*(v10 + 776) + 8 * a7) + 40 * a6 + 4);
        v47 = 0.0;
        v48 = v39 / v25;
        do
        {
          v49 = *v30++;
          v47 = v47 + (((v32 + (v49 * v40)) - v44) * ((v32 + (v49 * v40)) - v44));
          v50 = *v31++;
          v45 = v45 + (((v32 + (v50 * v40)) - v48) * ((v32 + (v50 * v40)) - v48));
          --v46;
        }

        while (v46);
        v51 = sqrt(v47 / v25);
        v52 = sqrt(v45 / v25);
        v53 = v34;
        if (a4)
        {
          v53 = v34;
          if (v34 == 0.0)
          {
            v53 = *(v33 + 48 * (a4 - 1) + 20);
          }
        }

        v54 = v52;
        v55 = a9 + ((v51 + v51) * v53);
        if (v53 == 0.0)
        {
          v55 = a9;
        }

        if (v34 == 0.0 && a4 + 1 < v27)
        {
          v34 = *(v33 + 48 * (a4 + 1) + 20);
        }

        v56 = a10 + ((v54 + v54) * v34);
        if (v34 == 0.0)
        {
          v57 = a10;
        }

        else
        {
          v57 = v56;
        }

        a10 = 1.0;
        if (v55 <= 0.0)
        {
          a9 = 1.0;
        }

        else
        {
          a9 = v55;
        }

        if (v57 > 0.0)
        {
          a10 = v57;
        }
      }

LABEL_38:
      v58 = *(*(*(v10 + 776) + 8 * a7) + 40 * a6 + 4);
      v59 = *(a5 + 108) * *(*(a2 + 1352) + 4 * v12);
      if (v28 != -1)
      {
        v59 = v59 + (v59 * v28);
      }

      if (a8)
      {
        v60 = v59 * 0.01;
      }

      else
      {
        v60 = v59;
      }

      v61 = *(a5 + 104);
      v62 = 0.0;
      if ((v61 - 256) >= 0xFFFFFF01)
      {
        v62 = (a9 - a10) * a1[v61 + 2616];
      }

      if (UNICORN__log_select_GetLogLevel(*(v11 + 32)) >= 3)
      {
        v78 = v84[1];
        v79 = v60;
        v76 = v60;
        v77 = (v60 * v84[1]);
        v74 = (v60 * (1.0 - v84[1]));
        v75 = (1.0 - v84[1]);
        v72 = a10;
        v73 = v62;
        v70 = a1[2901];
        v71 = a9;
        v68 = a1[2897];
        v69 = a1[2899];
        v66 = a1[2898];
        v67 = a1[2900];
        v65 = a1[2896];
        HIDWORD(v64) = HIDWORD(a4);
        UNICORN__log_select_Diag(v11, 3, "stateidx %u: dist pitch: SPEECHBASE MEAN left %.3f, right %.3f, slope %.3f; SPEECHBASE STDEV left %.3f, right %.3f, slope %.3f; TARGET left %.3f, right %.3f, slope %.3f; WEIGHTS edge %.3f(=%.3f*%.3f), slope %.3f(=%.3f*%.3f)\n");
      }

      if (v58)
      {
        LODWORD(v64) = v82;
        return (*(a5 + 152))(a1, a3, a4, a6, a7, a9, a10, v62, v60, v84[1], v84[0], *(&v83 + 1), *&v83, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
      }

      return v24;
    }

LABEL_37:
    v28 = -1;
    goto LABEL_38;
  }

  return v24;
}

float helperForPitchOutlierPruning(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = vabds_f32(a1, a2);
  v7 = a3 * a4;
  v8 = v6 * (a5 * a6);
  v9 = v6 <= v7;
  result = 0.0;
  if (!v9)
  {
    return v8;
  }

  return result;
}

uint64_t mfs_TCost_Elf0_Manhattan_Clusterize(float *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13, float a14)
{
  v17 = *(a2 + 8);
  v18 = *(*(*(v17 + 776) + 8 * a5) + 40 * a4 + 4);
  if (v18)
  {
    v19 = 0;
    v20 = 8 * a5 - 16;
    v21 = v17 + v20;
    v22 = *(*(v17 + v20 + 1328) + 8 * a4);
    v23 = *(*(v21 + 1264) + 8 * a4);
    v24 = *(*(v21 + 1200) + 8 * a4);
    v25 = *(*(a2 + 16) + 32 * a3);
    v26 = *(a2 + v20 + 112);
    v27 = a1 + 2616;
    v28 = a12 != 0.0 || a11 != 0.0;
    v30 = a12 > 0.0 && a11 > 0.0;
    if (a13 != 0.0)
    {
      v28 = 1;
    }

    if (a14 != 0.0)
    {
      v28 = 1;
    }

    v31 = ((1.0 - a10) * a9) * a12;
    v33 = a14 > 0.0 && a13 > 0.0;
    do
    {
      if ((*(v26 + 4 * (v19 >> 5)) >> v19))
      {
        v34 = *(v22 + v19);
        v35 = a1[1514];
        v36 = a1[1504];
        v37 = (*(v24 + 2 * v19) / v35) + v36;
        v38 = v36 + (*(v23 + 2 * v19) / v35);
        v39 = vabds_f32(a6, v37);
        if (v37 >= a6)
        {
          v40 = v37;
        }

        else
        {
          v40 = a6;
        }

        v41 = v39 / v40;
        v42 = vabds_f32(a7, v38);
        if (v38 >= a7)
        {
          v43 = v38;
        }

        else
        {
          v43 = a7;
        }

        v44 = v37 - v38;
        v45 = *(v25 + 4) + (a9 * ((fabsf(a8 - (v44 * v27[v34])) * a10) + ((1.0 - a10) * (v41 + (v42 / v43)))));
        *(v25 + 4) = v45;
        if (v28)
        {
          if (v30)
          {
            if (v39 <= (a1[2897] * a11))
            {
              v46 = 0.0;
            }

            else
            {
              v46 = v31 * v39;
            }

            v47 = v45 + v46;
            if (v42 <= (a1[2899] * a11))
            {
              v48 = 0.0;
            }

            else
            {
              v48 = v31 * v42;
            }

            v45 = v47 + v48;
            *(v25 + 4) = v45;
          }

          if (v33)
          {
            v49 = vabds_f32(a8, v44 * v27[v34]);
            if (v49 <= (a1[2901] * a13))
            {
              v50 = 0.0;
            }

            else
            {
              v50 = ((a9 * a10) * a14) * v49;
            }

            *(v25 + 4) = v45 + v50;
          }
        }

        v25 += 12;
      }

      ++v19;
    }

    while (v18 != v19);
  }

  return 0;
}

uint64_t mfs_TCost_Elf0_Manhattan_List(uint64_t a1, uint64_t a2, unsigned int a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, uint64_t a12, int a13, float a14)
{
  v17 = *(a2 + 8);
  v18 = *(a2 + 16) + 32 * a3;
  v19 = *(a1 + 5984);
  if (v19)
  {
    v19 = *(*(v17 + 568) + 11564) / *v17 * (a13 - 2);
  }

  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = *(v17 + 1032);
    v22 = *v18;
    v23 = *(v17 + 848);
    v24 = *(*(v17 + 568) + 5992);
    v25 = *(v17 + 1016);
    v26 = *(v17 + 1024);
    v27 = a1 + 10464;
    v28 = a10 != 0.0 || a9 != 0.0;
    v30 = a10 > 0.0 && a9 > 0.0;
    if (a11 != 0.0)
    {
      v28 = 1;
    }

    if (a14 != 0.0)
    {
      v28 = 1;
    }

    v31 = ((1.0 - a8) * a7) * a10;
    v33 = a14 > 0.0 && a11 > 0.0;
    v34 = (v22 + 4);
    do
    {
      v35 = *(v23 + 4 * (*(v34 - 1) / v24)) + v19;
      v36 = *(a1 + 6056);
      v37 = *(a1 + 6016);
      v38 = (*(v25 + 2 * v35) / v36) + v37;
      v39 = v37 + (*(v26 + 2 * v35) / v36);
      v40 = vabds_f32(a4, v38);
      if (v38 >= a4)
      {
        v41 = v38;
      }

      else
      {
        v41 = a4;
      }

      v42 = v40 / v41;
      v43 = vabds_f32(a5, v39);
      if (v39 >= a5)
      {
        v44 = v39;
      }

      else
      {
        v44 = a5;
      }

      v45 = v38 - v39;
      v46 = *v34 + (a7 * ((fabsf(a6 - (v45 * *(v27 + 4 * *(v21 + v35)))) * a8) + ((1.0 - a8) * (v42 + (v43 / v44)))));
      *v34 = v46;
      if (v28)
      {
        if (v30)
        {
          if (v40 <= (*(a1 + 11588) * a9))
          {
            v47 = 0.0;
          }

          else
          {
            v47 = v31 * v40;
          }

          v48 = v46 + v47;
          if (v43 <= (*(a1 + 11596) * a9))
          {
            v49 = 0.0;
          }

          else
          {
            v49 = v31 * v43;
          }

          v46 = v48 + v49;
          *v34 = v46;
        }

        if (v33)
        {
          v50 = vabds_f32(a6, v45 * *(v27 + 4 * *(v21 + v35)));
          if (v50 <= (*(a1 + 11604) * a11))
          {
            v51 = 0.0;
          }

          else
          {
            v51 = ((a7 * a8) * a14) * v50;
          }

          *v34 = v46 + v51;
        }
      }

      v34 += 3;
      --v20;
    }

    while (v20);
  }

  return 0;
}

float UNICORN__CandidatePhonemeDurationDistanceBasic(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 2456) + a2);
  v5 = v4 - a4;
  if ((v4 - a4) < 0)
  {
    v5 = a4 - v4;
  }

  return v5 / v4;
}

uint64_t UNICORN__CandidatePhonemeDurationDistance(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5)
{
  v5 = *(*(a1 + 2456) + a2);
  v6 = v5 - a4;
  if (v5 - a4 < 0)
  {
    v6 = a4 - v5;
  }

  v8 = v5 < a4 && v6 > a5;
  v9 = v6 << v8;
  if (v6 > 2 * a5)
  {
    return (5 * v6);
  }

  else
  {
    return v9;
  }
}

BOOL UNICORN__IsPhonemeDurationOutlier(uint64_t a1, unsigned int a2, float a3, uint64_t a4, int a5, int a6)
{
  v6 = *(*(a1 + 2456) + a2) - a5;
  if (v6 < 0)
  {
    v6 = a5 - *(*(a1 + 2456) + a2);
  }

  return (a6 * a3) < v6;
}

float PhonemeDurationOutlierDistance(int a1, int a2, unsigned int a3, float a4, float a5)
{
  v5 = a1 - a2;
  if (a1 - a2 < 0)
  {
    v5 = a2 - a1;
  }

  v6 = v5 * a5;
  v7 = (a3 * a4) < v5;
  result = 0.0;
  if (v7)
  {
    return v6;
  }

  return result;
}

float PhonemeDurationOutlierDistance_LegacyOrTuning(int a1, int a2, float a3)
{
  v3 = a1 - a2;
  if (a1 - a2 < 0)
  {
    v3 = a2 - a1;
  }

  v4 = v3 <= a3;
  result = 9999.9;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

void UNICORN__UniformStateDuration(float a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = (a1 * 0.5);
  *(a3 + 24) = v4;
  if (*a4 >= 1)
  {
    v5 = (*(a3 + 16) + 8);
    v6 = 1;
    do
    {
      *v5++ = 0;
      ++v6;
    }

    while (v6 <= *a4);
    v4 = *(a3 + 24);
  }

  if (v4)
  {
    v7 = *(a3 + 16);
    v8 = 2;
    do
    {
      ++*(v7 + 4 * v8);
      if (v8 == *a4 + 1)
      {
        v8 = 2;
      }

      else
      {
        ++v8;
      }

      --v4;
    }

    while (v4);
  }
}

void UNICORN__StateDuration(float a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a3 + 24) = 0;
  v4 = *a4;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = (*(a3 + 16) + 8);
    do
    {
      v7 = *v6++;
      v5 += v7;
      --v4;
    }

    while (v4);
    if (v5)
    {
      v8 = a1 / v5;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = (*(a3 + 16) + 8);
    v10 = 1;
    do
    {
      v11 = ((v8 * *v9) + 0.5);
      if (v11 <= 1)
      {
        v11 = 1;
      }

      *v9++ = v11;
      *(a3 + 24) += v11;
      ++v10;
    }

    while (v10 <= *a4);
  }
}

void UNICORN__MaxLLStateDuration(uint64_t a1, uint64_t a2, unsigned int *a3, float *a4, float a5)
{
  v9 = *a3;
  if (v9 <= 0)
  {
    v19 = *a4 + a5;
    if (v19 >= v9)
    {
      v15 = v19;
    }

    else
    {
      v15 = v9;
    }

    v18 = 0.0;
  }

  else
  {
    v10 = (*(*(*(a3 + 12) + 8 * *(a2 + 36)) + 8 * *(a2 + 8)) + 8);
    v11 = 0.0;
    v12 = *a3;
    v13 = 0.0;
    do
    {
      v13 = v13 + *v10;
      v11 = v11 + v10[v9];
      ++v10;
      --v12;
    }

    while (v12);
    v14 = *a4 + a5;
    if (v14 >= v9)
    {
      v15 = v14;
    }

    else
    {
      v15 = v9;
    }

    v16 = v11 == 0.0;
    v17 = (v15 - v13) / v11;
    if (v16)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v17;
    }
  }

  UNICORN__log_select_Diag(a1, 10, "SetMaxLLPhonemeDuration %f\n");
  *(a2 + 24) = 0;
  if (*a3 < 1)
  {
    v25 = 0.0;
  }

  else
  {
    v20 = 2;
    do
    {
      UNICORN__log_select_Diag(a1, 10, "state %d before %d");
      v21 = *(*(*(a3 + 12) + 8 * *(a2 + 36)) + 8 * *(a2 + 8));
      v22 = ((*(v21 + 4 * v20) + (v18 * *(v21 + 4 * (v20 + *a3)))) + 0.5);
      if (v22 <= 1)
      {
        v22 = 1;
      }

      *(*(a2 + 16) + 4 * v20) = v22;
      UNICORN__log_select_Diag(a1, 10, " after %d\n");
      v23 = *(a2 + 24) + *(*(a2 + 16) + 4 * v20);
      *(a2 + 24) = v23;
      v24 = v20++ <= *a3;
    }

    while (v24);
    v25 = v23;
  }

  v26 = v15 - v25;
  v27 = fabs((v15 - v25));
  if (v27 >= 0.99999)
  {
    do
    {
      if (v26 <= 0.0)
      {
        v28 = 1;
      }

      else
      {
        v28 = -1;
      }

      if (v26 > 0.0)
      {
        v29 = 1;
      }

      else
      {
        v29 = -1;
      }

      LODWORD(v30) = *a3;
      if (*a3 < 1)
      {
        break;
      }

      v31 = 2;
      v32 = -1.0e10;
      v33 = 0xFFFFFFFFLL;
      do
      {
        v34 = *(*(*(a3 + 12) + 8 * *(a2 + 36)) + 8 * *(a2 + 8));
        v35 = (*(*(a2 + 16) + 4 * v31) + v29) - *(v34 + 4 * v31);
        v36 = UNICORN__bet5_finv(*(v34 + 4 * (v31 + v30)));
        v37 = UNICORN__mfsLogLikelihood(v35, v36);
        if (v37 > v32 && *(*(a2 + 16) + 4 * v31) > v28)
        {
          v38 = v37;
          UNICORN__log_select_Diag(a1, 10, "state %d LL %f dur %d incr %d t2 %f\n");
          v33 = v31;
          v32 = v38;
        }

        v30 = *a3;
        v24 = v31++ <= v30;
      }

      while (v24);
      if (v33 < 1)
      {
        break;
      }

      *(*(a2 + 16) + 4 * v33) += v29;
      *(a2 + 24) += v29;
      v26 = v26 - v29;
      v39 = fabs(v26);
    }

    while (v39 >= 0.99999);
  }

  *a4 = v26;
}

void *mfs_DeInitDataAndParam(void *a1, uint64_t a2, void *a3)
{
  UNICORN__mfs_DeInitData(a1, a2);
  StatValues_FreeMemory(a1, (a3 + 1446));

  return UNICORN__mfs_DeInitParam(a1, a3);
}

void *UNICORN__mfs_DeInitData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 2464);
  if (v4)
  {
    brk_DataClose(*(a1 + 24), v4);
  }

  v5 = (a2 + 1624);
  for (i = 768; i != 808; i += 8)
  {
    v7 = *(a2 + i);
    if (v7)
    {
      *(a2 + i) = v7 + 16;
      heap_Free(*(a1 + 8), v7 + 16);
    }

    UNICORN__mfs_SparseMtx_DeInit(v5);
    v5 += 16;
  }

  mfs_bnfData_DeInit(a2, a1);
  UNICORN__DeInitVData(a1, a2);
  v8 = *(a2 + 1944);
  if (v8 && *(*(a2 + 568) + 9816))
  {
    free_aligned_mem(*(a1 + 8), v8);
  }

  v9 = *(a2 + 2392);
  if (v9)
  {
    if (*(a2 + 2400))
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = (*(a2 + 2392) + v10);
        heap_Free(*(a1 + 8), v12[1]);
        heap_Free(*(a1 + 8), v12[3]);
        heap_Free(*(a1 + 8), v12[5]);
        ++v11;
        v10 += 48;
      }

      while (v11 < *(a2 + 2400));
      v9 = *(a2 + 2392);
    }

    heap_Free(*(a1 + 8), v9);
    *(a2 + 2392) = 0;
  }

  v13 = *(a2 + 2376);
  if (v13)
  {
    v14 = *(a2 + 2384);
    if (v14)
    {
      v15 = 0;
      v16 = 56;
      do
      {
        v17 = *(*(a2 + 2376) + v16);
        if (v17)
        {
          heap_Free(*(a1 + 8), v17);
          v14 = *(a2 + 2384);
        }

        ++v15;
        v16 += 64;
      }

      while (v15 < v14);
      v13 = *(a2 + 2376);
    }

    heap_Free(*(a1 + 8), v13);
    *(a2 + 2376) = 0;
  }

  heap_Free(*(a1 + 8), *(a2 + 2408));

  return cstdlib_memset(a2, 0, 0x9A8uLL);
}

void *StatValues_FreeMemory(void *a1, uint64_t a2)
{
  StatValues_auxFree(a1, (a2 + 56), *(a2 + 40));
  StatValues_auxFree(a1, (a2 + 64), *(a2 + 40));
  StatValues_auxFree(a1, (a2 + 72), *(a2 + 40));
  StatValues_auxFree(a1, (a2 + 80), *(a2 + 40));
  v4 = a1[1];
  v5 = *(a2 + 48);

  return heap_Free(v4, v5);
}

uint64_t UNICORN__mfs_InitData(uint64_t a1, void *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0x9A8uLL);
  v6 = heap_Calloc(*(a1 + 8), 1, 6416);
  *(__b + 301) = v6;
  if (!v6)
  {
    return 2229280778;
  }

  cstdlib_memset(v6, 0, 0x1910uLL);

  return UNICORN__InitVData(a1, __b, a3);
}

uint64_t UNICORN__mfs_LoadData(uint64_t a1, uint64_t a2, int a3, int32x2_t *a4, int32x2_t *a5)
{
  VData = UNICORN__LoadVData(a1, a4, a5);
  if ((VData & 0x80000000) != 0)
  {
    return VData;
  }

  a4[31].i32[0] = 1;
  a4[71] = a5;
  if (a2)
  {
    if (a3 == 1)
    {
      VData = brk_DataOpen(*(a1 + 24));
      if ((VData & 0x80000000) != 0)
      {
        return VData;
      }
    }
  }

  a4[72] = a5[852];
  a4[73] = a5[855];
  a4[74] = a5[882];
  if (!a5[1443].i32[1])
  {
    v11 = a5[883].u32[0];
    if (v11)
    {
      a5[1443].i32[1] = (v11 >> 4) - 1;
    }
  }

  a4[307] = a5[1197];
  if (a5[900])
  {
    v12 = a5[16].u32[1];
    if (v12 >= 1)
    {
      v13 = a5 + 23;
      v14 = a4 + 76;
      v15 = &a5[898] + 1;
      do
      {
        v16 = v13->i32[0];
        v13 = (v13 + 4);
        if (v16)
        {
          v14[-1] = *(v15 - 3);
          v14->i32[0] = *v15;
        }

        v14 += 4;
        v15 += 6;
        --v12;
      }

      while (v12);
    }

    a4[95].i32[0] = a5[901].u32[0] / (4 * a5[26].u32[0]);
  }

  v17 = 2229280778;
  v18 = a5[915];
  v19 = a5[918];
  v20 = a5[912];
  v21 = heap_Calloc(*(a1 + 8), a4->u32[0], 8);
  a4[97] = v21;
  if (v21)
  {
    a4[97] = (v21 - 16);
    v22 = heap_Calloc(*(a1 + 8), a4->u32[0], 8);
    a4[98] = v22;
    if (v22)
    {
      a4[98] = (v22 - 16);
      v23 = heap_Calloc(*(a1 + 8), a4->u32[0], 8);
      a4[96] = v23;
      if (v23)
      {
        a4[96] = (v23 - 16);
        v24 = a4->u32[0];
        if (v24 >= 1)
        {
          v25 = v24 + 2;
          v26 = 40 * a4[3].i32[0];
          v27 = 2;
          do
          {
            *(*&a4[97] + 8 * v27) = v18;
            *(*&a4[97] + 8 * v27) -= 40;
            *&v18 += 40 * *(*&a4[5] + 4 * v27);
            *(*&a4[98] + 8 * v27) = v19;
            *(*&a4[98] + 8 * v27) -= 40;
            *&v19 += 40 * *(*&a4[6] + 4 * v27);
            *(*&a4[96] + 8 * v27) = v20;
            *(*&a4[96] + 8 * v27++) -= 40;
            *&v20 += v26;
          }

          while (v25 != v27);
        }

        a4[102] = a5[930];
        a4[103] = a5[933];
        a4[101] = a5[927];
        a4[200] = a5[945];
        a4[201] = a5[1065];
        a4[202] = a5[948];
        if (a5[840].i32[1])
        {
          VData = mfs_FullMtx_Load(&a4[205], *&a5[960], 0, 0, 0);
          if ((VData & 0x80000000) != 0)
          {
            return VData;
          }

          VData = mfs_FullMtx_Load(&a4[207], *&a5[963], 0, 0, 0);
          if ((VData & 0x80000000) != 0)
          {
            return VData;
          }
        }

        else
        {
          VData = UNICORN__mfs_SparseMtx_Load(&a4[205], &a5[959]);
          if ((VData & 0x80000000) != 0)
          {
            return VData;
          }

          VData = UNICORN__mfs_SparseMtx_Load(&a4[207], &a5[962]);
          if ((VData & 0x80000000) != 0)
          {
            return VData;
          }
        }

        if (a5[990])
        {
          VData = UNICORN__mfs_FSM_Load(&a4[218], &a5[989]);
          if ((VData & 0x80000000) != 0)
          {
            return VData;
          }
        }

        if (a5[993])
        {
          VData = UNICORN__mfs_FSM_Load(&a4[223], &a5[992]);
          if ((VData & 0x80000000) != 0)
          {
            return VData;
          }
        }

        a4[238] = a5[1017];
        a4[239] = a5[1032];
        a4[240] = a5[1047];
        VData = mfs_bnfData_Init(a5, a4, a1);
        if ((VData & 0x80000000) != 0)
        {
          return VData;
        }

        a4[302] = a5[1077];
        VData = mfs_FullMtx_Load(&a4[303], *&a5[1098], a5[839].i32[1], &a5[840], 0);
        if ((VData & 0x80000000) != 0)
        {
          return VData;
        }

        v33 = a5[1215];
        if (v33)
        {
          if (a5[836].i32[1])
          {
            VData = mfs_FullMtx_Load(&a4[305], v33, 0, 0, 0);
            if ((VData & 0x80000000) != 0)
            {
              return VData;
            }
          }
        }

        VData = InitializeSymbolicDataLayout(a1, a4, a5, v28, v29, v30, v31, v32);
        if ((VData & 0x80000000) != 0)
        {
          return VData;
        }

        VData = InitializeFuzzyTables(a1, a4, a5, v34, v35, v36, v37, v38);
        if ((VData & 0x80000000) != 0)
        {
          return VData;
        }

        VData = InitializeGenericContextRules(a1, a4, a5, v39, v40, v41, v42, v43);
        if ((VData & 0x80000000) != 0)
        {
          return VData;
        }

        StatValues_ComputeDurStatFromData(a4, a5);
        if (!*&a5[1227])
        {
          v46 = a5[1002];
          if (v46)
          {
            a4[243] = v46;
          }

          goto LABEL_46;
        }

        v44 = alloc_aligned_32_mem(*(a1 + 8), a5[1228].u32[0]);
        a4[243] = v44;
        if (v44)
        {
          cstdlib_memcpy(v44, *&a5[1227], a5[1228].u32[0]);
LABEL_46:
          UNICORN__log_select_Diag(a1, 1, "Loaded %d states from %d threshold at %d\n");
          return 0;
        }
      }
    }
  }

  return v17;
}

uint64_t InitializeSymbolicDataLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 9936);
  if (!v8)
  {
    v8 = *(a3 + 10056);
    if (!v8)
    {
      cstdlib_memset((a2 + 1952), 0, 0x1A8uLL);
      return 0;
    }
  }

  if (*(v8 + 16) >= 0x65u)
  {
    v9 = 2229280769;
    v10 = "Current engine does not support version %d of the layout of symbolic data (max support %d).";
LABEL_7:
    UNICORN__log_select_Error(a1, 0, v10, a4, a5, a6, a7, a8);
    return v9;
  }

  v11 = *(v8 + 20);
  *(a2 + 1952) = v11;
  if (v11 >= 0x65)
  {
    v9 = 2229280769;
    v10 = "Too many symbolic features (%d) !";
    goto LABEL_7;
  }

  if (v11)
  {
    v12 = (a2 + 1956);
    v13 = 24;
    do
    {
      *v12++ = *(v8 + v13);
      v13 += 4;
      --v11;
    }

    while (v11);
  }

  else
  {
    LODWORD(v13) = 24;
  }

  v9 = 0;
  *(a2 + 2368) = v13;
  *(a2 + 2360) = v8 + v13;
  return v9;
}

uint64_t InitializeFuzzyTables(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a3 + 10176);
  v52 = 0;
  v12 = *(a3 + 6620) != 0.0 || *(a3 + 6624) != 0.0 || *(a3 + 6628) != 0.0;
  __dst = 0;
  *(a2 + 2376) = 0;
  *(a2 + 2384) = 0;
  if (!v11)
  {
    v14 = 0;
    v15 = 0;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (*v11 < 0x65u)
  {
    v14 = *(v11 + 4);
    *(a2 + 2384) = v14;
    v15 = (v11 + 8);
    if (!v12)
    {
LABEL_10:
      v16 = v14;
      if (!v14)
      {
        return 0;
      }

      goto LABEL_11;
    }

LABEL_8:
    v16 = v14 + 1;
    *(a2 + 2384) = v14 + 1;
LABEL_11:
    v13 = 2229280768;
    v17 = heap_Calloc(*(a1 + 8), v16, 64);
    *(a2 + 2376) = v17;
    if (!v17)
    {
      return 2229280778;
    }

    if (v15 && v14)
    {
      v23 = 0;
      do
      {
        *(*(a2 + 2376) + v23) = v15;
        v24 = &v15[cstdlib_strlen(v15) + 1];
        *(*(a2 + 2376) + v23 + 8) = v24;
        v25 = &v24[cstdlib_strlen(v24)];
        cstdlib_memcpy(&__dst, v25 + 1, 4uLL);
        *(*(a2 + 2376) + v23 + 16) = __dst;
        cstdlib_memcpy(&__dst, v25 + 5, 4uLL);
        v26 = *(a2 + 2376) + v23;
        *(v26 + 20) = __dst != 0;
        v27 = (v25 + 9);
        v28 = mfs_FullMtx_Load((v26 + 24), v27, 0, 0, &v52);
        if ((v28 & 0x80000000) != 0)
        {
          return v28;
        }

        v15 = &v27[v52];
        v23 += 64;
      }

      while (v14 << 6 != v23);
    }

    if (v12)
    {
      v28 = AddFuzzyTableFromInternalTagSoftScoring(a1, a2, a3, v14);
      if ((v28 & 0x80000000) != 0)
      {
        return v28;
      }
    }

    v29 = *(a2 + 2384);
    if (v29)
    {
      v30 = 0;
      v31 = *(a2 + 1952);
      v32 = a2 + 1956;
      do
      {
        if (v31)
        {
          v33 = 0;
          v34 = *(a2 + 2376) + (v30 << 6);
          while (*(v34 + 16) != *(v32 + 4 * v33))
          {
            if (v31 == ++v33)
            {
              goto LABEL_29;
            }
          }

          *(v34 + 40) = *(a2 + 2360);
          *(v34 + 48) = v31;
          *(v34 + 49) = v33;
        }

        else
        {
          LODWORD(v33) = 0;
        }

        if (v33 == v31)
        {
LABEL_29:
          v35 = *(a2 + 2376) + (v30 << 6);
          if (*(v35 + 16) == 29)
          {
            *(v35 + 40) = *(a2 + 1048);
            *(v35 + 48) = 1;
          }
        }

        ++v30;
      }

      while (v30 != v29);
      v36 = *(a2 + 2376);
      v37 = v36;
      v38 = v29;
      do
      {
        if (!*(v37 + 40))
        {
          v49 = "\n\nFuzzy table %s:\nCorresponding symbolic feature %s is not available in the data.\nPlease check S_FILENAME_CLUST_SYM_FEAT.\nYou might also need to regenerate the symbolic data.";
LABEL_61:
          UNICORN__log_select_Error(a1, 0, v49, v18, v19, v20, v21, v22);
          return v13;
        }

        v37 += 64;
        --v38;
      }

      while (v38);
      v39 = 0;
      while (2)
      {
        v40 = 0;
        v41 = (v36 + 20);
        v42 = v29;
        do
        {
          if (*(v36 + (v39 << 6) + 16) == *(v41 - 1) && *v41)
          {
            if (v40)
            {
              v49 = "\n\nFollowing fuzzy tables are set as default fuzzy tables for feature %s:\n%s\n%s\nThere should be maximum one default fuzzy table per feature.";
              goto LABEL_61;
            }

            v40 = 1;
          }

          v41 += 16;
          --v42;
        }

        while (v42);
        if (++v39 != v29)
        {
          continue;
        }

        break;
      }

      v43 = *(a2 + 1952);
      if (v43)
      {
        for (i = 0; i < v43; ++i)
        {
          v45 = *(a2 + 2384);
          if (v45)
          {
            v46 = 0;
            v47 = (*(a2 + 2376) + 16);
            while (1)
            {
              v48 = *v47;
              v47 += 16;
              if (*(v32 + 4 * i) == v48)
              {
                break;
              }

              if (v45 == ++v46)
              {
                goto LABEL_52;
              }
            }
          }

          else
          {
            LODWORD(v46) = 0;
          }

          if (v46 == v45)
          {
LABEL_52:
            UNICORN__log_select_Diag(a1, 0, "\n\nSystem contains data which is not used:\nsymbolic feature %d.  Please consider removing.\n\n");
            v43 = *(a2 + 1952);
          }

          v13 = 0;
        }

        return v13;
      }
    }

    return 0;
  }

  UNICORN__log_select_Error(a1, 0, "Current engine does not support version %d of fuzzy tables (max support %d).", a4, a5, a6, a7, a8);
  return 2229280769;
}

uint64_t InitializeGenericContextRules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 10296);
  *(a2 + 2392) = 0;
  *(a2 + 2400) = 0;
  if (!v8)
  {
    return 0;
  }

  v9 = a1;
  v10 = *v8;
  if (*v8 >= 0x6F)
  {
    v11 = "Current engine does not support version %d of context rules (max support %d).";
    v12 = 0;
LABEL_4:
    UNICORN__log_select_Error(a1, v12, v11, a4, a5, a6, a7, a8);
    return 2229280769;
  }

  v15 = *(v8 + 4);
  *(a2 + 2400) = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = heap_Calloc(*(a1 + 8), v15, 48);
  *(a2 + 2392) = v16;
  if (!v16)
  {
    return 2229280778;
  }

  if (!*(a2 + 2400))
  {
    return 0;
  }

  v17 = 0;
  v18 = v8 + 2;
  while (1)
  {
    v19 = (*(a2 + 2392) + 48 * v17);
    v22 = *v18;
    v21 = v18 + 1;
    v20 = v22;
    *v19 = v22;
    if (v22)
    {
      v23 = heap_Calloc(*(v9 + 8), v20, 40);
      *(v19 + 1) = v23;
      if (!v23)
      {
        return 2229280778;
      }

      if (*v19)
      {
        break;
      }
    }

LABEL_16:
    v30 = *v21;
    v18 = v21 + 1;
    v29 = v30;
    v19[4] = v30;
    if (v30)
    {
      v31 = heap_Calloc(*(v9 + 8), v29, 12);
      *(v19 + 3) = v31;
      if (!v31)
      {
        return 2229280778;
      }

      v32 = v19[4];
      if (v32)
      {
        v33 = (v31 + 8);
        do
        {
          *(v33 - 2) = *v18;
          *(v33 - 1) = v18[1];
          v34 = v18[2];
          v18 += 3;
          *v33 = v34;
          v33 += 3;
          --v32;
        }

        while (v32);
      }
    }

    if (v10 == 110)
    {
      v36 = *v18++;
      v35 = v36;
      v19[8] = v36;
      if (v36)
      {
        v37 = heap_Calloc(*(v9 + 8), v35, 16);
        *(v19 + 5) = v37;
        if (!v37)
        {
          return 2229280778;
        }

        if (v19[8])
        {
          v38 = 0;
          v39 = 0;
          while (1)
          {
            v40 = *(v19 + 5);
            v41 = (v40 + v38 * 4);
            *v41 = v18[v38];
            v42 = v18[v38 + 1];
            v41[1] = v42;
            v41[2] = v18[v38 + 2];
            if (v42 > 7 || BET5_Param_GetType(v42) != 1)
            {
              break;
            }

            *(v40 + v38 * 4 + 12) = v18[v38 + 3];
            ++v39;
            v38 += 4;
            if (v39 >= v19[8])
            {
              v18 = (v18 + v38 * 4);
              goto LABEL_30;
            }
          }

          v11 = "Generic context rule param action %d not supported\n";
          a1 = v9;
          v12 = 55010;
          goto LABEL_4;
        }
      }
    }

LABEL_30:
    result = 0;
    if (++v17 >= *(a2 + 2400))
    {
      return result;
    }
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *(v19 + 1);
    *(v26 + v24 * 4) = v21[v24];
    v27 = v21[v24 + 1];
    if (v27 != v27)
    {
      return 2229280768;
    }

    v28 = v26 + v24 * 4;
    *(v28 + 4) = v27;
    cstdlib_memcpy((v28 + 5), &v21[v24 + 2], 0x20uLL);
    ++v25;
    v24 += 10;
    if (v25 >= *v19)
    {
      v21 = (v21 + v24 * 4);
      goto LABEL_16;
    }
  }
}

void StatValues_ComputeDurStatFromData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 11576) == 0.0 && *(a2 + 11580) == 0.0 && *(a2 + 11568) == 0.0 && *(a2 + 11572) == 0.0)
  {
    v4 = *(a2 + 11564);
    if (*(a2 + 5984))
    {
      v4 >>= *(a2 + 5988) != 0;
    }

    if (v4)
    {
      v5 = 0;
      v6 = *(a1 + 2456);
      v7 = *(a2 + 24);
      v8 = v4;
      v9 = 0.0;
      v10 = v4;
      v11 = 0.0;
      do
      {
        v12 = *v6++;
        v13 = (v7 * v12) / 1000.0;
        if (v13 != 0.0)
        {
          v11 = v11 + v13;
          v14 = log(v13);
          v9 = v9 + v14;
          ++v5;
        }

        --v10;
      }

      while (v10);
      v15 = 0.0;
      if (v5)
      {
        v16 = v5;
        v11 = v11 / v5;
        v9 = v9 / v5;
      }

      else
      {
        v16 = 0.0;
      }

      v18 = *(a1 + 2456);
      v19 = *(a2 + 24);
      v17 = 0.0;
      do
      {
        v20 = *v18++;
        v21 = (v19 * v20) / 1000.0;
        if (v21 != 0.0)
        {
          v17 = v17 + (v21 - v11) * (v21 - v11);
          v22 = log(v21);
          v15 = v15 + (v22 - v9) * (v22 - v9);
        }

        --v8;
      }

      while (v8);
      if (v5)
      {
        v23 = sqrt(v17 / v16);
        v17 = v23;
        v24 = sqrt(v15 / v16);
        v15 = v24;
      }
    }

    else
    {
      v11 = 0.0;
      v9 = 0.0;
      v17 = 0.0;
      v15 = 0.0;
    }

    v25 = v11;
    *(a2 + 11568) = v25;
    v26 = v17;
    *(a2 + 11572) = v26;
    v27 = v9;
    *(a2 + 11576) = v27;
    v28 = v15;
    *(a2 + 11580) = v28;
  }
}

void *UNICORN__mfs_GetMsgName(void *a1, unsigned int a2)
{
  if (a1 && (v2 = a1[72]) != 0 && (v3 = a1[73]) != 0 && *(a1[71] + 11548) > a2)
  {
    return (v3 + *(v2 + 12 * a2));
  }

  else
  {
    return &UNICORN__mfs_GetMsgName_szEmpty;
  }
}

uint64_t mfs_GetMessageOffsetAndDur_Frames(uint64_t result, int a2, _DWORD *a3, _WORD *a4)
{
  v4 = *(result + 592);
  if (v4)
  {
    v5 = v4 + 16 * a2;
    if (a4)
    {
      *a4 = *(v5 + 8);
    }

    if (a3)
    {
      if (a2 < 1)
      {
        v7 = a2;
      }

      else
      {
        while (*(v4 - 6 + 16 * a2) == *(v5 + 10))
        {
          v6 = __OFSUB__(a2--, 1);
          if ((a2 < 0) ^ v6 | (a2 == 0))
          {
            a2 = 0;
            break;
          }
        }

        v7 = a2;
      }

      *a3 = *(v5 + 4) - *(v4 + 16 * v7 + 4);
    }
  }

  else
  {
    v8 = *(result + 568);
    if (v8[2887] == a2)
    {
      if (a3)
      {
        *a3 = 0;
      }

      if (a4)
      {
        *a4 = 0;
      }
    }

    else
    {
      if (a3)
      {
        *a3 = 0;
      }

      if (a4)
      {
        v9 = v8[1496];
        if (v9)
        {
          v10 = v8[2891];
          v11 = v8[1498];
          v9 = a2 % v11 * (v10 / *result);
        }

        else
        {
          v11 = v8[1498];
        }

        *a4 = *(*(result + 1032) + (*(*(result + 848) + 4 * (a2 / v11)) + v9));
      }
    }
  }

  return result;
}

uint64_t mfs_GetMessageOffsetAndDur_Msecs(uint64_t a1, int a2, _DWORD *a3, _WORD *a4)
{
  v9 = 0;
  v8 = 0;
  result = mfs_GetMessageOffsetAndDur_Frames(a1, a2, &v9, &v8);
  if (a3)
  {
    *a3 = *(*(a1 + 568) + 24) * v9;
  }

  if (a4)
  {
    *a4 = v8 * *(*(a1 + 568) + 24);
  }

  return result;
}

uint64_t AddFuzzyTableFromInternalTagSoftScoring(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a3 + 4096;
  v7 = a4;
  v8 = (*(a2 + 2376) + (a4 << 6));
  *v8 = "FUZZY TABLE DERIVED FROM INTERNAL TAG SOFT SCORING";
  v8[1] = "INTERNAL_TAG";
  v8[2] = 0x10000001DLL;
  LODWORD(v9) = -1;
  do
  {
    v9 = (v9 + 1);
  }

  while (*(a3 + 2728 + 8 * v9));
  v8[4] = vdup_n_s32(v9);
  v10 = heap_Calloc(*(a1 + 8), 4, (v9 * v9));
  if (!v10)
  {
    return 2229280778;
  }

  v11 = *(a2 + 2376) + (v7 << 6);
  *(v11 + 24) = v10;
  *(v11 + 56) = v10;
  if (v9)
  {
    v12 = 0;
    v13 = 0;
    v14 = v6 + 2136;
    do
    {
      v15 = v9;
      v16 = (v6 + 2392);
      v17 = v13;
      v18 = (v10 + 4 * v12);
      do
      {
        if (v17)
        {
          if (*(v14 + v13) != *(v16 - 256))
          {
            *v18 = *(a3 + 6620) + *v18;
          }

          if (*(a3 + 6360 + v13) != *(v16 - 128))
          {
            *v18 = *(a3 + 6624) + *v18;
          }

          if (*(v6 + 2392 + v13) != *v16)
          {
            *v18 = *(a3 + 6628) + *v18;
          }
        }

        --v17;
        ++v16;
        ++v18;
        --v15;
      }

      while (v15);
      ++v13;
      v12 += v9;
    }

    while (v13 != v9);
    v19 = 0;
    v20 = 0;
    v21 = *(a3 + 6616);
    do
    {
      if (*(v14 + v20) == v21)
      {
        v22 = (v10 + 4 * v19);
        v23 = v9;
        v24 = (v6 + 2136);
        do
        {
          v25 = *v24++;
          if (v25 != v21)
          {
            *v22 = 1176256410;
          }

          ++v22;
          --v23;
        }

        while (v23);
      }

      ++v20;
      v19 += v9;
    }

    while (v20 != v9);
  }

  return 0;
}

uint64_t StatValues_AllocMemoryForClusterStatValues(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v8 = 2229280778;
  v9 = a3;
  v10 = heap_Calloc(*(a1 + 8), a3, 8);
  *a2 = v10;
  if (v10)
  {
    if (a3)
    {
      v11 = 0;
      while (1)
      {
        *(*a2 + 8 * v11) = heap_Calloc(*(a1 + 8), (*(a4 + 4 * v11) + 1), 4);
        if (!*(*a2 + 8 * v11))
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t StatValues_AllocMemoryForClusterCount(uint64_t a1, uint64_t a2)
{
  v3 = heap_Calloc(*(a1 + 8), *(a2 + 40), 4);
  *(a2 + 48) = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 2229280778;
  }
}

void *StatValues_auxFree(void *result, uint64_t *a2, unsigned int a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = result;
    if (a3)
    {
      v6 = 0;
      v7 = 8 * a3;
      do
      {
        v8 = *(*a2 + v6);
        if (v8)
        {
          heap_Free(v5[1], v8);
        }

        v6 += 8;
      }

      while (v7 != v6);
      v4 = *a2;
    }

    result = heap_Free(v5[1], v4);
    *a2 = 0;
  }

  return result;
}

uint64_t ViterbiEE_Init(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v6 = *(a2 + 1072);
  *a1 = v6;
  *(a1 + 8) = a4;
  *(a1 + 16) = a3;
  *(a1 + 24) = a2;
  *(a1 + 32) = *(a2 + 1776);
  *(a1 + 40) = *(a2 + 1784);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = *(v6 + 8);
  result = precomp_Init((a1 + 48), a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 56) = *(a2 + 1976);
  }

  return result;
}

uint64_t ViterbiEE_EnableSIMD(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

uint64_t ViterbiEE_Release(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 76);
    if (v3 >= 1)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        if (*(v2 + v4))
        {
          heap_Free(*(v2 + v4 + 16), *(v2 + v4));
          v2 = *(a1 + 64);
          v6 = v2 + v4;
          *v6 = 0;
          *(v6 + 12) = 0;
          v3 = *(a1 + 76);
        }

        v4 += 32;
      }
    }

    heap_Free(*(a1 + 80), v2);
    *(a1 + 64) = 0;
    *(a1 + 76) = 0;
  }

  precomp_Release((a1 + 48));
  return 0;
}

uint64_t ViterbiEE_Decode(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 2229280778;
  v7 = *(*(a1 + 16) + 5516);
  v8 = *(*(*(a1 + 8) + 568) + 11548);
  v9 = *(a1 + 76);
  UNICORN__log_select_Diag(*a1, 2, "ViterbiEE::Decode(|%d|)\n");
  v10 = *(*a1 + 8);
  v11 = *(a2 + 16);
  v12 = heap_Realloc(v10, 0, (24 * v11));
  if (!v12)
  {
    return v6;
  }

  v13 = v12;
  v106 = v10;
  precomp_SetupLeftRightData(*(a1 + 48), a2, v9);
  v14 = *(a1 + 48);
  v16 = *(v14 + 48);
  v15 = *(v14 + 56);
  v107 = v15[2891];
  v105 = *v16;
  if (*(v14 + 1108) == -1)
  {
    v17 = "Layer %d setup: candidates will come from main voice";
  }

  else
  {
    v17 = "Layer %d setup: candidates will come from addon %d";
  }

  UNICORN__log_select_Diag(*a1, 2, v17);
  v109 = a1;
  v18 = precomp_RightLayerOptimize(a2, *(a1 + 48));
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v103 = a3;
  if (v11 < 1)
  {
    v25 = a1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 1.0 - v7;
    v104 = v11;
    v22 = 24 * v11;
    v23 = 0.0;
    v24 = 4;
    v108 = v107 / v105;
    v25 = v109;
    do
    {
      v26 = v25[6];
      v27 = *a2 + 12 * *(*(v26 + 976) + v24);
      v28 = *(v27 + 4);
      v29 = *v27 - *(v26 + 80);
      *(v13 + v19) = v29;
      if (v29 == v8)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29;
      }

      if (v15[1691])
      {
        if (v15[1496])
        {
          v30 = *(*(v16 + 106) + 4 * (v30 / v15[1498])) + v30 % *v16 * v108;
        }

        else
        {
          v30 = *(*(v16 + 106) + 4 * (v30 / v15[1498]));
        }
      }

      v31 = v21 * v28;
      v32 = v13 + v19;
      *(v32 + 16) = 0;
      *(v32 + 12) = v31;
      *(v32 + 4) = v30;
      *(v32 + 8) = 0;
      if (v31 < v23 || v19 == 0)
      {
        v23 = v31;
      }

      UNICORN__log_select_Diag(*v25, 12, "Candidate %d : id %d target cost %.4f\n");
      v25 = v109;
      ++v20;
      v19 += 24;
      v24 += 8;
    }

    while (v22 != v19);
    v6 = 2229280778;
    LODWORD(v11) = v104;
  }

  UNICORN__log_select_Diag(*v25, 2, "Min Viterbi target cost: %.3f\n");
  v34 = v109;
  v35 = *(v109 + 76);
  if (v35 != 0x7FFFFFFF)
  {
    if (v35 < *(v109 + 72))
    {
      v36 = *(v109 + 64);
      if (!v36)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v37 = v35 + 1;
    *(v109 + 72) = v37;
    v36 = heap_Realloc(*(v109 + 80), *(v109 + 64), (32 * v37));
    v34 = v109;
    *(v109 + 64) = v36;
    if (v36)
    {
LABEL_29:
      v38 = v36 + 32 * *(v34 + 76);
      *v38 = v13;
      *(v38 + 8) = v11;
      *(v38 + 12) = v11;
      *(v38 + 16) = v106;
      *(v38 + 24) = v11;
      *(v38 + 28) = 0;
      ++*(v34 + 76);
    }
  }

LABEL_30:
  v39 = *(v34 + 64);
  if (v39)
  {
    v6 = 0;
    if (v11 >= 1)
    {
      v40 = *(v34 + 76);
      if (v40 >= 2)
      {
        v41 = *(*(v34 + 16) + 11548);
        v42 = (v40 - 1);
        v43 = (v39 + 32 * v42);
        v44 = v39 + 32 * v40;
        v45 = v34;
        UNICORN__log_select_Diag(*v34, 2, "ViterbiEE::UpdateBestPath()\n");
        v46 = (v44 - 64);
        ssft_qsort(*(v44 - 64), *(v44 - 52), 24, comparePathScores);
        precomp_SetLayer(*(v45 + 48), v42);
        precomp_SetupJoinCallback(*(v45 + 48), *(v45 + 56));
        if (*(v43 + 3) == 1 && **v43 == v41)
        {
          v47 = 1;
        }

        else
        {
          v47 = *(v44 - 52) == 1 && **v46 == v41;
        }

        LogLevel = UNICORN__log_select_GetLogLevel(*(*(*(v109 + 24) + 1072) + 32));
        v49 = v109;
        if (LogLevel >= 3)
        {
          v50 = *(v44 - 52);
          v51 = *(v109 + 24);
          *(v51 + 1972) += v50;
          if (v50 >= 1)
          {
            v52 = (*v46 + 12);
            do
            {
              if (*v52 < 10000000.0)
              {
                ++*(v51 + 1968);
              }

              v52 += 6;
              --v50;
            }

            while (v50);
          }
        }

        if (*(*(v109 + 16) + 5996) != 0 && !v47 && !(v42 % **(v109 + 8)) && (v53 = *(v109 + 48), *(v53 + 1104) == -1) && *(v53 + 1108) == -1)
        {
          LODWORD(v58) = *(v43 + 3);
          if (v58 >= 1)
          {
            v89 = 0;
            v90 = 0;
            v91 = *v109;
            do
            {
              v92 = *v43 + 24 * v89;
              v93 = *v92 - 1;
              if (*v92 < 1)
              {
                UNICORN__log_select_Diag(v91, 2, "ViterbiEE_DoNestedLoop_UnitBulking: Unexpected unitIDCurrent==0");
                v49 = v109;
                v93 = 0;
              }

              v94 = *(v44 - 52);
              v95 = v94 + 7;
              if (v94 >= 0)
              {
                v95 = *(v44 - 52);
              }

              v96 = v95 & 0xFFFFFFF8;
              if (v94 < 8)
              {
                LODWORD(v97) = 0;
              }

              else
              {
                v97 = 0;
                v98 = (*v46 + 96);
                while (*(v98 - 24) != v93)
                {
                  if (*(v98 - 18) == v93)
                  {
                    LODWORD(v97) = v97 + 1;
                    goto LABEL_152;
                  }

                  if (*(v98 - 12) == v93)
                  {
                    LODWORD(v97) = v97 + 2;
                    goto LABEL_152;
                  }

                  if (*(v98 - 6) == v93)
                  {
                    LODWORD(v97) = v97 + 3;
                    goto LABEL_152;
                  }

                  if (*v98 == v93)
                  {
                    LODWORD(v97) = v97 + 4;
                    goto LABEL_152;
                  }

                  if (v98[6] == v93)
                  {
                    LODWORD(v97) = v97 + 5;
                    goto LABEL_152;
                  }

                  if (v98[12] == v93)
                  {
                    LODWORD(v97) = v97 + 6;
                    goto LABEL_152;
                  }

                  if (v98[18] == v93)
                  {
                    LODWORD(v97) = v97 + 7;
                    goto LABEL_152;
                  }

                  v97 += 8;
                  v98 += 48;
                  if (v97 >= v96)
                  {
                    break;
                  }
                }
              }

              if (v97 == v96)
              {
                if (v94 - v96 >= 1)
                {
                  LODWORD(v97) = *(v44 - 52);
                  v99 = (*v46 + 24 * v96);
                  while (1)
                  {
                    v100 = *v99;
                    v99 += 6;
                    if (v100 == v93)
                    {
                      break;
                    }

                    if (v94 == ++v96)
                    {
                      goto LABEL_152;
                    }
                  }
                }

                LODWORD(v97) = v96;
              }

LABEL_152:
              if (v97 == v94)
              {
                if (!v90)
                {
                  v101 = *v46;
                  do
                  {
                    if (!v90 || v101[3] < v90[3])
                    {
                      v90 = v101;
                    }

                    v101 += 6;
                    --v94;
                  }

                  while (v94);
                }

                *(v92 + 12) = *(v92 + 12) + (v90[3] + 4.0);
                v102 = v90;
              }

              else
              {
                v102 = *v46 + 24 * v97;
                *(v92 + 12) = *(v102 + 12) + *(v92 + 12);
              }

              *(v92 + 16) = v102;
              ++*(v102 + 8);
              ++v89;
              v58 = *(v43 + 3);
            }

            while (v89 < v58);
          }
        }

        else
        {
          v54 = *(v43 + 3);
          if (v47)
          {
            if (v54 >= 1)
            {
              v55 = 0;
              do
              {
                precomp_DoInnerLoop__AssignZeroPathCosts(v49[6], v43, (v44 - 64), v55);
                v49 = v109;
                ++v55;
              }

              while (v55 < *(v43 + 3));
            }

            goto LABEL_76;
          }

          GranularStep = precomp_getGranularStep(*(v109 + 48));
          precomp_FetchLeftNodes(*(v109 + 48), v42, (v44 - 64));
          if (GranularStep < 1)
          {
            GranularStep = 1;
          }

          else
          {
            v54 = v54 / GranularStep * GranularStep;
          }

          v49 = v109;
          v57 = 0;
          if (v54 >= 1)
          {
            do
            {
              (*(v49[6] + 1096))(v49[6], v43, v46);
              v49 = v109;
              v57 += GranularStep;
            }

            while (v57 < v54);
          }

          while (1)
          {
            LODWORD(v58) = *(v43 + 3);
            if (v57 >= v58)
            {
              break;
            }

            precomp_DoInnerLoop(v49[6], v43, v46, v57, v42);
            v49 = v109;
            ++v57;
          }
        }

        if (v103 && v58 >= 1)
        {
          v59 = 0;
          v60 = *v43;
          v58 = v58;
          v61 = *v43;
          v62 = v58;
          do
          {
            if (!v59 || *(v61 + 12) < *(v59 + 12))
            {
              v59 = v61;
            }

            v61 += 24;
            --v62;
          }

          while (v62);
          if (v59)
          {
            v63 = *(v59 + 16);
            if (v63)
            {
              v64 = 16;
              do
              {
                v65 = *(v60 + v64);
                if (v65)
                {
                  *(v65 + 8) = v65 == v63;
                }

                v64 += 24;
                --v58;
              }

              while (v58);
              *v60 = v41;
              *(v60 + 16) = v63;
              *(v60 + 12) = *(v59 + 12);
              *(v43 + 3) = 1;
              *(v43 + 6) = 1;
            }
          }
        }

LABEL_76:
        if (UNICORN__log_select_GetLogLevel(*(*v49 + 32)) >= 3)
        {
          v66 = *(v43 + 3);
          if (v66 >= 1)
          {
            v67 = 0;
            v68 = *v43;
            do
            {
              if (!v67 || *(v68 + 12) < *(v67 + 12))
              {
                v67 = v68;
              }

              v68 += 24;
              --v66;
            }

            while (v66);
            if (v67)
            {
              UNICORN__log_select_Diag(*v109, 3, "Viterbi updateBestPath(): best candidate %d (cost %.3f)\n");
            }
          }
        }

        v69 = *(v109 + 76);
        if (v69 <= 1)
        {
          return 0;
        }

        v70 = *(v109 + 64);
        if (*(*(v109 + 48) + 1108) == -1)
        {
          v71 = *(*(v109 + 16) + 5568) * 10.0;
          v72 = v70 + 32 * v69;
          v73 = *(v72 - 20);
          if (v73 < 1)
          {
            v74 = 0;
          }

          else
          {
            v74 = 0;
            v75 = *(v72 - 32);
            v76 = *(v72 - 20);
            do
            {
              if (!v74 || *(v75 + 12) < *(v74 + 12))
              {
                v74 = v75;
              }

              v75 += 24;
              --v76;
            }

            while (v76);
          }

          if (v71 < 40.0)
          {
            v77 = *(*(v109 + 24) + 1768);
            if (v77)
            {
              if (*(v77 + 16) || v73 < 1 || *(v77 + 12))
              {
                goto LABEL_106;
              }
            }

            else if (v73 < 1)
            {
              goto LABEL_106;
            }

            v78 = (*(v72 - 32) + 12);
            do
            {
              if (*v78 > (v71 + *(v74 + 12)))
              {
                *v78 = 10000000.0;
              }

              v78 += 6;
              --v73;
            }

            while (v73);
          }
        }

LABEL_106:
        v79 = (v70 + 32 * (v69 - 2));
        v80 = *(v79 + 3);
        if (v80 >= 1)
        {
          v81 = 0;
          v82 = *v79;
          do
          {
            v83 = v82 + 24 * v81;
            if (!*(v83 + 8))
            {
              --*(v79 + 6);
              v84 = *(v83 + 16);
              if (v84)
              {
                v85 = v79 - 1;
                do
                {
                  v86 = *(v84 + 8);
                  v87 = __OFSUB__(v86--, 1);
                  *(v84 + 8) = v86;
                  if (!((v86 < 0) ^ v87 | (v86 == 0)))
                  {
                    break;
                  }

                  --*v85;
                  v85 -= 4;
                  v84 = *(v84 + 16);
                }

                while (v84);
              }
            }

            ++v81;
          }

          while (v81 != v80);
        }

        return 0;
      }
    }
  }

  return v6;
}

uint64_t ViterbiEE_Backtrack(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 2229280783;
  if ((a2 & 0x80000000) == 0)
  {
    v10 = *(a1 + 76);
    v11 = v10 <= a2 || a3 < 1;
    if (!v11 && v10 >= a3)
    {
      v13 = a3 - a2;
      if (a3 - a2 < 1)
      {
        return 2229280775;
      }

      else
      {
        v18 = *(a5 + 16);
        v19 = *(*(*(a1 + 8) + 568) + 11548);
        result = UNICORN__mfs_S32Vect_Reserve(a5, v18 + v13);
        if ((result & 0x80000000) == 0)
        {
          if (!a6 || (result = mfs_F32Vect_Reserve(a6, v18 + v13), (result & 0x80000000) == 0))
          {
            if (!a7 || (result = UNICORN__mfs_S32Vect_Reserve(a7, v18 + v13), (result & 0x80000000) == 0))
            {
              BestNode = ViterbiEE_GetBestNode((*(a1 + 64) + 32 * a3 - 32), *(a1 + 76) != a3);
              if (BestNode)
              {
                v21 = BestNode;
                do
                {
                  UNICORN__log_select_Diag(*a1, 3, "Unit %d, cost %.3f\n");
                  UNICORN__mfs_S32Vect_Pad(a5, *v21);
                  if (a6)
                  {
                    UNICORN__mfs_F32Vect_Pad(a6, *(v21 + 12));
                  }

                  v21 = *(v21 + 16);
                  if (v21)
                  {
                    v22 = v13 <= 1;
                  }

                  else
                  {
                    v22 = 1;
                  }

                  --v13;
                }

                while (!v22);
              }

              v23 = *(a5 + 16);
              if (v18 < v23 - 1)
              {
                v24 = *(a5 + 8);
                v25 = v23 - 1;
                v26 = v18;
                do
                {
                  v27 = *(v24 + 4 * v26);
                  *(v24 + 4 * v26) = *(v24 + 4 * v25);
                  *(v24 + 4 * v25) = v27;
                  if (a6)
                  {
                    v28 = *(a6 + 8);
                    v29 = *(v28 + 4 * v26);
                    *(v28 + 4 * v26) = *(v28 + 4 * v25);
                    *(v28 + 4 * v25) = v29;
                  }

                  ++v26;
                  --v25;
                }

                while (v26 < v25);
              }

              if (**(a1 + 8) == 2)
              {
                v36 = 0;
                v35 = 0;
                if (v18 < *(a5 + 16))
                {
                  v30 = v18;
                  do
                  {
                    UNICORN__mfs_Ling_GetPhonCtxt(a4, v30 / **(a1 + 8), &v35);
                    if (HIBYTE(v35) == 1)
                    {
                      *(*(a5 + 8) + 4 * v30) = v19;
                    }

                    ++v30;
                  }

                  while (v30 < *(a5 + 16));
                }
              }

              if (a7 && v18 < *(a5 + 16))
              {
                v31 = 48 * v18;
                do
                {
                  if (*(*(a5 + 8) + 4 * v18) == v19 || (v32 = *(*(a1 + 24) + 1768)) == 0 || (v33 = *v32, *(v33 + v31)))
                  {
                    v34 = -1;
                  }

                  else
                  {
                    v34 = UnicornAddon_UID2AddonId(*(a1 + 32), *(a1 + 40), **(v33 + v31 + 8));
                  }

                  result = 0;
                  *(*(a7 + 8) + 4 * v18++) = v34;
                  v31 += 48;
                }

                while (v18 < *(a5 + 16));
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ViterbiEE_GetBestNode(uint64_t *a1, int a2)
{
  v2 = *(a1 + 3);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *a1;
  do
  {
    if ((!a2 || *(v5 + 8) >= 1) && (!result || *(v5 + 12) < *(result + 12)))
    {
      result = v5;
    }

    v5 += 24;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t ViterbiEE_GetUniquePathLength(uint64_t a1, int a2)
{
  v2 = *(a1 + 76);
  if (v2 <= a2)
  {
    v2 = a2;
  }

  v3 = a2 - 1;
  v4 = v2 - a2;
  v5 = (32 * a2) | 0x18;
  while (v4)
  {
    v6 = *(*(a1 + 64) + v5);
    ++v3;
    --v4;
    v5 += 32;
    if (v6 >= 2)
    {
      return (v3 - a2);
    }
  }

  v3 = v2;
  return (v3 - a2);
}

uint64_t ViterbiForcedEE_GetPathLength(uint64_t a1, int a2)
{
  v3 = *(a1 + 76);
  v4 = *(a1 + 16);
  v5 = *(v4 + 5928);
  v6 = **(a1 + 8) * *(v4 + 5932);
  v7 = a2;
  if (v3 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = *(a1 + 76);
  }

  v9 = ~a2 + v3;
  v10 = (32 * a2) | 0x18;
  v11 = a2;
  v12 = a2;
  do
  {
    if (v8 == v7)
    {
      break;
    }

    if (*(*(a1 + 64) + v10) <= v5)
    {
      ++v12;
    }

    if (v9 > v6)
    {
      ++v11;
    }

    v13 = v7 < v12 || v7 < v11;
    ++v7;
    --v9;
    v10 += 32;
  }

  while (v13);
  if (v12 <= a2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  result = (v14 - a2);
  if (result >= 1)
  {
    v16 = *(a1 + 64);
    v17 = (v16 + 32 * (v3 - 1));
    v18 = v16 + 32 * v14;
    v19 = *(v18 - 20);
    if (v19 < 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      v21 = *(v18 - 32);
      do
      {
        if (*(v21 + 8) >= 1 && (!v20 || *(v21 + 12) < *(v20 + 12)))
        {
          v20 = v21;
        }

        v21 += 24;
        --v19;
      }

      while (v19);
    }

    v22 = *(v17 + 3);
    if (v22 < 1)
    {
      return 0;
    }

    else
    {
      v23 = 0;
      v24 = v22 & ~(v22 >> 31);
      v25 = *v17;
      while (1)
      {
        v26 = v25 + 24 * v23;
        if (*(v26 + 12) < 10000000.0)
        {
          if (v3 > v14)
          {
            v27 = v3;
            do
            {
              v26 = *(v26 + 16);
              --v27;
            }

            while (v27 > v14);
          }

          if (*v26 == *v20)
          {
            break;
          }
        }

        if (++v23 == v24)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t ViterbiForcedEE_KillPaths(uint64_t result, int a2, int a3, uint64_t a4)
{
  v4 = *(result + 64);
  v5 = *(*(a4 + 8) + 4 * a2);
  v6 = *(result + 8);
  if ((*v6 != 2 || v5 != *(*(v6 + 568) + 11548)) && *(v4 + 32 * a2 + 24) != 1)
  {
    v7 = (v4 + 32 * a3);
    v8 = *(v7 + 3);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *v7;
      do
      {
        v11 = v10 + 24 * v9;
        if (a3 > a2)
        {
          v12 = a3;
          do
          {
            v11 = *(v11 + 16);
            --v12;
          }

          while (v12 > a2);
        }

        if (*v11 != v5)
        {
          *(v10 + 24 * v9 + 12) = 1259902592;
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }

  return result;
}

uint64_t comparePathScores(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a2 + 12);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 < v2;
  }
}

uint64_t UNICORN__mfs_Ling_GetPhonCtxt(uint64_t result, int a2, _BYTE *a3)
{
  if (a2 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(result + 32) + a2 - 1);
  }

  *a3 = v3;
  v4 = a2 + 1;
  v5 = *(result + 32);
  if (v4 >= *(result + 10))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + v4);
  }

  a3[2] = v6;
  a3[1] = *(v5 + a2);
  return result;
}

uint64_t UNICORN__mfs_Ling_LogPhonCtxt(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = UNICORN__log_select_GetLogLevel(*(a1 + 32));
  if (result >= 3)
  {
    v9 = *(a3 + 32);
    if (a4 >= 1)
    {
      for (i = 0; i != 256; ++i)
      {
        if (*(a2 + 4780 + i) == *(v9 + a4 - 1))
        {
          break;
        }
      }
    }

    v11 = 0;
    v12 = a2 + 4780;
    do
    {
      if (*(v12 + v11) == *(v9 + a4))
      {
        break;
      }

      ++v11;
    }

    while (v11 != 256);
    v13 = a4 + 1;
    if (v13 < *(a3 + 10))
    {
      v14 = 0;
      v15 = *(v9 + v13);
      do
      {
        if (*(v12 + v14) == v15)
        {
          break;
        }

        ++v14;
      }

      while (v14 != 256);
    }

    return UNICORN__log_select_Diag(a1, 3, "[%c-%c+%c]\n");
  }

  return result;
}

uint64_t UNICORN__mfs_Ling_HmmPhonemeToLhTts(uint64_t a1, int a2)
{
  v2 = 0;
  while (*(a1 + 4780 + v2) != a2)
  {
    if (++v2 == 256)
    {
      LOBYTE(v2) = 0;
      return v2;
    }
  }

  return v2;
}

uint64_t UNICORN__mfs_Ling_WrdPosShpInPhrs(uint64_t a1, int a2)
{
  v2 = *(a1 + 1496);
  if (v2)
  {
    return *(v2 + a2);
  }

  else
  {
    return 100;
  }
}

uint64_t UNICORN__mfs_Ling_WrdPosInPhrs(uint64_t a1, int a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    return *(v2 + a2);
  }

  else
  {
    return 0;
  }
}

uint64_t UNICORN__mfs_Ling_WrdProminence(uint64_t a1, int a2)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    return *(v2 + a2);
  }

  else
  {
    return 5;
  }
}

uint64_t UNICORN__mfs_Ling_WrdShpProminence(uint64_t a1, int a2)
{
  v2 = *(a1 + 1424);
  if (v2)
  {
    return *(v2 + a2);
  }

  else
  {
    return 5;
  }
}

BOOL UNICORN__mfs_Ling_IsVowelVowelTrans(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(a2 + 32) + a3 - 1);
  }

  v4 = *(a1 + 5040);
  v5 = *(v4 + 8 * v3);
  return v5 && *v5 == 86 && v5[1] == 86 && !v5[2] && (v7 = *(v4 + 8 * *(*(a2 + 32) + a3))) != 0 && *v7 == 86 && v7[1] == 86 && v7[2] == 0;
}

uint64_t UNICORN__mfs_Ling_IsInvariantPhoneme(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*(a2 + 32) + a3);
  v4 = *(*(a1 + 5040) + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  if (!strcmp(*(*(a1 + 5040) + 8 * v3), "SIL"))
  {
    return 1;
  }

  v7 = *v4;
  if (v7 != 77)
  {
    return v7 == 85 && v4[1] == 67 && !v4[2];
  }

  if (v4[1] != 67 || v4[2])
  {
    return 0;
  }

  return *(*(a2 + 184) + a3) != 2;
}

float UNICORN__mfs_Ling_TransWeightsDiphADJ(void *a1, int a2)
{
  v2 = *(*a1 + 3360);
  result = 0.0;
  if (*(*a1 + 3360))
  {
    v4 = *(*a1 + 3368);
    for (i = a2 * v2; ; ++i)
    {
      v6 = *v4;
      v4 += 3;
      if (v6 == 1)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }

    return *(a1[448] + 4 * i) / 100000.0;
  }

  return result;
}

float UNICORN__mfs_Ling_TransWeightsDiphMCP(void *a1, int a2)
{
  v2 = *(*a1 + 3360);
  result = 0.0;
  if (*(*a1 + 3360))
  {
    v4 = *(*a1 + 3368);
    for (i = a2 * v2; ; ++i)
    {
      v6 = *v4;
      v4 += 3;
      if (v6 == 3)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }

    return *(a1[448] + 4 * i) / 1000.0;
  }

  return result;
}

float UNICORN__mfs_Ling_TransWeightsDiphLF0(void *a1, int a2)
{
  v2 = *(*a1 + 3360);
  result = 0.0;
  if (*(*a1 + 3360))
  {
    v4 = *(*a1 + 3368);
    for (i = a2 * v2; ; ++i)
    {
      v6 = *v4;
      v4 += 3;
      if (v6 == 2)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }

    return *(a1[448] + 4 * i) / 1000.0;
  }

  return result;
}

float UNICORN__mfs_Ling_TransWeightsPhonADJ(void *a1, int a2)
{
  v2 = *(*a1 + 3360);
  result = 0.0;
  if (*(*a1 + 3360))
  {
    v4 = *(*a1 + 3368);
    for (i = a2 * v2; ; ++i)
    {
      v6 = *v4;
      v4 += 3;
      if (v6 == 1)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }

    return *(a1[449] + 4 * i) / 100000.0;
  }

  return result;
}

float UNICORN__mfs_Ling_TransWeightsPhonMCP(void *a1, int a2)
{
  v2 = *(*a1 + 3360);
  result = 0.0;
  if (*(*a1 + 3360))
  {
    v4 = *(*a1 + 3368);
    for (i = a2 * v2; ; ++i)
    {
      v6 = *v4;
      v4 += 3;
      if (v6 == 3)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }

    return *(a1[449] + 4 * i) / 1000.0;
  }

  return result;
}

float UNICORN__mfs_Ling_TransWeightsPhonLF0(void *a1, int a2)
{
  v2 = *(*a1 + 3360);
  result = 0.0;
  if (*(*a1 + 3360))
  {
    v4 = *(*a1 + 3368);
    for (i = a2 * v2; ; ++i)
    {
      v6 = *v4;
      v4 += 3;
      if (v6 == 2)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }

    return *(a1[449] + 4 * i) / 1000.0;
  }

  return result;
}

uint64_t UNICORN__mfs_ParamGenStart(uint64_t a1, int *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *a1;
  inited = UNICORN__InitUttModel(*a1, (a1 + 56), a2, *(*(a1 + 8) + 10));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a1 + 16) = a3[8];
  *(a1 + 1072) = v6;
  if (*(a1 + 392) >= 1)
  {
    v8 = 0;
    v47 = 0;
    v48 = 0;
    v9 = a3 + 61;
    v10 = a3 + 682;
    v43 = *(*(a1 + 8) + 1784);
    v42 = a3 + 182;
    v52 = v4 + 88;
    v51 = v4 + 78;
    v44 = a3 + 46;
    v45 = v4 + 1;
    v46 = a3;
    v53 = v6;
    v54 = v4;
    while (1)
    {
      UNICORN__log_select_Diag(v6, 21, "[phoneme %d]\n");
      v50 = (*(a1 + 384) + 312 * v8);
      if (*(a1 + 32) >= 1)
      {
        v16 = 0;
        v17 = v42;
        do
        {
          v18 = v9[v16];
          if (v18 >= 1)
          {
            v19 = 0;
            v20 = *(*(*(a1 + 8) + 248) + v8);
            do
            {
              v21 = *&v17[2 * v19];
              if (v21)
              {
                v22 = *&v10[2 * v20];
                if (v22)
                {
                  if (!cstdlib_strcmp(v21, v22))
                  {
                    goto LABEL_14;
                  }

                  v18 = v9[v16];
                }
              }

              ++v19;
            }

            while (v19 < v18);
          }

          LODWORD(v19) = 0;
LABEL_14:
          v50[4].i32[++v16] = v19;
          v17 += 10;
        }

        while (v16 < *(a1 + 32));
      }

      v4 = v54;
      if (v43)
      {
        if (a3[29])
        {
          v37 = 2229280769;
          v39 = "Phoneme level segmentation is not currently supported\n";
          v40 = v53;
          v41 = 58016;
          goto LABEL_53;
        }

        if (a3[28])
        {
          break;
        }
      }

      v50[1].i32[0] = UNICORN__TreeSearch(*(a1 + 8), v8, (v54 + 64), 0, 0);
      UNICORN__log_select_Diag(v53, 6, "DUR pdf id %d\n");
      v49 = &v50[4] + 4;
      inited = UNICORN__FindDurPDF(v50, v54, 0, v50[4].i32[1], 0.0);
      if ((inited & 0x80000000) != 0)
      {
        return inited;
      }

      *(a1 + 408) += v50[3].i32[0];
      v23 = *(a1 + 32);
      if (v23 >= 1)
      {
        v24 = 0;
        v25 = v50 + 12;
        v26 = v50 + 17;
        do
        {
          v27 = *(a1 + 24) + 1520 * v24;
          if (!*(v27 + 1472))
          {
            if (*(v27 + 1480))
            {
              v28 = *v4 * v8;
              v47 = *(*(a1 + 208 + 8 * v24) + 8 * v28);
              v48 = *(*(a1 + 168 + 8 * v24) + 8 * v28);
            }

            if (*(v52 + v24))
            {
              v29 = 0;
              v30 = 0;
              do
              {
                v31 = *(*&v51[2 * v24] + v29);
                *(*&v50[v24 + 7] + 4 * v31) = UNICORN__TreeSearch(*(a1 + 8), v8, (v54 + 64), v24, v30);
                UNICORN__log_select_Diag(v53, 6, "%s pdf state %d id %d\n");
                v32 = *(a1 + 24) + 1520 * v24;
                if (*(v32 + 1480))
                {
                  v33 = v31 - 2;
                  v34 = v33 + v33 * v45[v24];
                  *(*&v25[v24] + 8 * v31) = v48 + 4 * v34;
                  *(*&v25[v24] + 8 * v31) -= 4;
                  *(*&v26[v24] + 8 * v31) = v47 + 4 * v34;
                  *(*&v26[v24] + 8 * v31) -= 4;
                  v35 = *(a1 + 1768);
                  if (v35 && v44[v24] == 2)
                  {
                    LF0PDF_PerStateRho = UNICORN__FindLF0PDF_PerStateRho(v24, v31, v50, v54, v46, *&v49[4 * v24], *(*(a1 + 24) + 1520 * v24 + 1484), *(*v35 + 48 * (v33 + *v54 * v8) + 20));
                  }

                  else
                  {
                    LF0PDF_PerStateRho = UNICORN__FindMsdPDF(v24, v31, v50, v54, v46, *&v49[4 * v24]);
                  }

                  v37 = LF0PDF_PerStateRho;
                  if ((LF0PDF_PerStateRho & 0x80000000) != 0)
                  {
                    return v37;
                  }
                }

                else if (*(v32 + 1476))
                {
                  inited = UNICORN__FindContPDF(v24, v31, v50, v54, *&v49[4 * v24]);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }
                }

                ++v30;
                v29 += 16;
              }

              while (v30 < *(v52 + v24));
              v23 = *(a1 + 32);
              v4 = v54;
            }
          }

          ++v24;
        }

        while (v24 < v23);
      }

      ++v8;
      a3 = v46;
      v6 = v53;
      if (v8 >= *(a1 + 392))
      {
        goto LABEL_40;
      }
    }

    v37 = 2229280769;
    v39 = "State level segmentation is not currently supported\n";
    v40 = v53;
    v41 = 58017;
LABEL_53:
    UNICORN__log_select_Error(v40, v41, v39, v11, v12, v13, v14, v15);
    return v37;
  }

LABEL_40:
  if (UNICORN__log_select_GetLogLevel(*(v6 + 32)) >= 0x15)
  {
    OutLabel_1(a1);
  }

  inited = mfs_SegmentList_InitPrealloc(v6, v4, *v4 * *(*(a1 + 8) + 10), a1 + 1520);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = mfs_SegmentList_InitPrealloc(v6, v4, *v4 * *(*(a1 + 8) + 10), a1 + 1552);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (!a3[1684])
  {
    return 2229280769;
  }

  return PredictPipeline_ProcessStart(a1, v4, a3);
}

uint64_t OutLabel_1(uint64_t result)
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

uint64_t UNICORN__mfs_ParamGenContinue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PredictPipeline_GetNProcessedPhonemes(*(a1 + 1760));
  if (*(a3 + 6736))
  {
    return PredictPipeline_Process(*(a1 + 1760));
  }

  else
  {
    return 2229280769;
  }
}

uint64_t mfs_FillModelSegmentsPartial(int *a1, uint64_t *a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  LODWORD(v8) = a4;
  UNICORN__log_select_Diag(*a2, 1, "  -> GetParametricSegments\n");
  if (v8 < 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = *a1;
    do
    {
      if (v14 >= 1)
      {
        v15 = (*(a2[48] + 312 * v12 + 16) + 8);
        v16 = (v14 + 2) - 2;
        do
        {
          v17 = *v15++;
          v13 += *(a3 + 24) * v17;
          --v16;
        }

        while (v16);
      }

      ++v12;
    }

    while (v12 != v8);
  }

  if (v8 > a5)
  {
    return 0;
  }

  result = 0;
  v8 = v8;
  v19 = a5 + 1;
  LODWORD(v20) = *a1;
  while (v20 < 1)
  {
LABEL_17:
    if (v19 == ++v8)
    {
      return result;
    }
  }

  v21 = a2[48] + 312 * v8;
  v24 = *(v21 + 16);
  v23 = (v21 + 16);
  v22 = v24;
  v25 = *(a3 + 24);
  v26 = 2;
  while (1)
  {
    result = UNICORN__mfs_SegmentList_Add(a6, -1, *(*(a2[1] + 32) + v8), v13, v25 * *(v22 + 4 * v26));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v22 = *v23;
    v25 = *(a3 + 24);
    v13 += v25 * *(*v23 + 4 * v26);
    v20 = *a1;
    if (v26++ > v20)
    {
      goto LABEL_17;
    }
  }
}

void UNICORN__FreeRemainingStreams(uint64_t a1)
{
  if (*(a1 + 32) >= 1)
  {
    v2 = 0;
    v3 = 16;
    do
    {
      UNICORN__FreePStreamSM(*(a1 + 24) + v3);
      ++v2;
      v3 += 1520;
    }

    while (v2 < *(a1 + 32));
  }
}

uint64_t mfs_TCost_Elf0_Manhattan_Clusterize_SIMD(float *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, double a6, double a7, double a8, float a9, float a10, float a11, float a12, float a13, float a14)
{
  v20 = 1.0 - a10;
  v21 = *(a2 + 8);
  v22 = *(*(a2 + 16) + 32 * a3);
  v23 = 8 * a5 - 16;
  v24 = v21 + v23;
  v25 = *(*(v21 + v23 + 1200) + 8 * a4);
  v26 = *(*(v21 + v23 + 1264) + 8 * a4);
  v27 = *(*(*(v21 + 776) + 8 * a5) + 40 * a4 + 4);
  v28 = *(*(v24 + 1328) + 8 * a4);
  v29 = *(a2 + v23 + 112);
  v30 = a9 * a10;
  v31 = (1.0 - a10) * a9;
  *v17.i32 = a1[2897] * a11;
  *v18.i32 = a1[2899] * a11;
  v32 = a1[2901];
  v33 = 0;
  v34 = v27 & 0xFFFFFFF8;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v35 = 0;
    v36 = vdupq_lane_s32(*&a6, 0);
    v37 = vdupq_lane_s32(*&a7, 0);
    v38 = vdupq_lane_s32(*&a8, 0);
    v39 = a1 + 1514;
    v40 = vld1q_dup_f32(v39);
    v41 = vrecpeq_f32(v40);
    v42 = vmulq_f32(v41, vrecpsq_f32(v40, v41));
    v43 = vmulq_f32(vrecpsq_f32(v40, v42), v42);
    v44 = a1 + 1504;
    v45 = vld1q_dup_f32(v44);
    v46 = vdupq_lane_s32(v17, 0);
    v47 = vdupq_lane_s32(v18, 0);
    v48 = a11 != 0.0;
    if (a12 != 0.0)
    {
      v48 = 1;
    }

    if (a13 != 0.0)
    {
      v48 = 1;
    }

    if (a14 != 0.0)
    {
      v48 = 1;
    }

    v49 = v29;
    while (1)
    {
      v51 = *v49++;
      v50 = v51;
      if ((v51 & 0xF) == 0)
      {
        goto LABEL_16;
      }

      v19.i32[0] = *v28;
      v52 = vaddq_f32(v45, vmulq_f32(v43, vcvtq_f32_s32(vmovl_s16(*v25))));
      v53 = vaddq_f32(v45, vmulq_f32(v43, vcvtq_f32_s32(vmovl_s16(*v26))));
      v54 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v19.f32)));
      v55 = vrecpeq_f32(v54);
      v56 = vmulq_f32(v55, vrecpsq_f32(v54, v55));
      v57 = vmulq_f32(vrecpsq_f32(v54, v56), v56);
      v58 = vabdq_f32(v36, v52);
      v59 = vmaxq_f32(v36, v52);
      v60 = vrecpeq_f32(v59);
      v61 = vmulq_f32(v60, vrecpsq_f32(v59, v60));
      v62 = vmulq_f32(v58, vmulq_f32(vrecpsq_f32(v59, v61), v61));
      v63 = vabdq_f32(v37, v53);
      v64 = vmaxq_f32(v37, v53);
      v65 = vrecpeq_f32(v64);
      v66 = vmulq_f32(v65, vrecpsq_f32(v64, v65));
      v67 = vabdq_f32(v38, vmulq_f32(v57, vsubq_f32(v52, v53)));
      v19 = vmulq_n_f32(vaddq_f32(vmulq_n_f32(v67, a10), vmulq_n_f32(vaddq_f32(v62, vmulq_f32(v63, vmulq_f32(vrecpsq_f32(v64, v66), v66))), v20)), a9);
      if (v48)
      {
        v85 = vaddq_f32(vandq_s8(vmulq_n_f32(vmulq_n_f32(v58, a12), v31), vcgtq_f32(v58, v46)), v19);
        v86 = vcgtq_f32(v63, v47);
        v19 = vaddq_f32(vandq_s8(vmulq_n_f32(vmulq_n_f32(v67, a14), v30), v86), vaddq_f32(vandq_s8(vmulq_n_f32(vmulq_n_f32(v63, a12), v31), v86), v85));
        if ((v50 & 1) == 0)
        {
LABEL_12:
          if ((v50 & 2) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_26;
        }
      }

      else if ((v50 & 1) == 0)
      {
        goto LABEL_12;
      }

      v87 = v22 + 12 * v33++;
      *(v87 + 4) = v19.f32[0] + *(v87 + 4);
      if ((v50 & 2) == 0)
      {
LABEL_13:
        if ((v50 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

LABEL_26:
      v88 = v22 + 12 * v33++;
      *(v88 + 4) = v19.f32[1] + *(v88 + 4);
      if ((v50 & 4) == 0)
      {
LABEL_14:
        if ((v50 & 8) == 0)
        {
          goto LABEL_16;
        }

LABEL_15:
        v68 = v22 + 12 * v33++;
        *(v68 + 4) = v19.f32[3] + *(v68 + 4);
        goto LABEL_16;
      }

LABEL_27:
      v89 = v22 + 12 * v33++;
      *(v89 + 4) = v19.f32[2] + *(v89 + 4);
      if ((v50 & 8) != 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (v50 < 0x10)
      {
        goto LABEL_22;
      }

      v19.i32[0] = v28[1];
      v69 = vaddq_f32(v45, vmulq_f32(v43, vcvtq_f32_s32(vmovl_s16(v25[1]))));
      v70 = vaddq_f32(v45, vmulq_f32(v43, vcvtq_f32_s32(vmovl_s16(v26[1]))));
      v71 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v19.f32)));
      v72 = vrecpeq_f32(v71);
      v73 = vmulq_f32(v72, vrecpsq_f32(v71, v72));
      v74 = vmulq_f32(vrecpsq_f32(v71, v73), v73);
      v75 = vabdq_f32(v36, v69);
      v76 = vmaxq_f32(v36, v69);
      v77 = vrecpeq_f32(v76);
      v78 = vmulq_f32(v77, vrecpsq_f32(v76, v77));
      v79 = vmulq_f32(v75, vmulq_f32(vrecpsq_f32(v76, v78), v78));
      v80 = vabdq_f32(v37, v70);
      v81 = vmaxq_f32(v37, v70);
      v82 = vrecpeq_f32(v81);
      v83 = vmulq_f32(v82, vrecpsq_f32(v81, v82));
      v84 = vabdq_f32(v38, vmulq_f32(v74, vsubq_f32(v69, v70)));
      v19 = vmulq_n_f32(vaddq_f32(vmulq_n_f32(v84, a10), vmulq_n_f32(vaddq_f32(v79, vmulq_f32(v80, vmulq_f32(vrecpsq_f32(v81, v83), v83))), v20)), a9);
      if (v48)
      {
        v90 = vaddq_f32(vandq_s8(vmulq_n_f32(vmulq_n_f32(v75, a12), v31), vcgtq_f32(v75, v46)), v19);
        v91 = vcgtq_f32(v80, v47);
        v19 = vaddq_f32(vandq_s8(vmulq_n_f32(vmulq_n_f32(v84, a14), v30), v91), vaddq_f32(vandq_s8(vmulq_n_f32(vmulq_n_f32(v80, a12), v31), v91), v90));
        if ((v50 & 0x10) == 0)
        {
LABEL_19:
          if ((v50 & 0x20) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_31;
        }
      }

      else if ((v50 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      v92 = v22 + 12 * v33++;
      *(v92 + 4) = v19.f32[0] + *(v92 + 4);
      if ((v50 & 0x20) == 0)
      {
LABEL_20:
        if ((v50 & 0x40) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

LABEL_31:
      v93 = v22 + 12 * v33++;
      *(v93 + 4) = v19.f32[1] + *(v93 + 4);
      if ((v50 & 0x40) == 0)
      {
LABEL_21:
        if ((v50 & 0x80) != 0)
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

LABEL_32:
      v94 = v22 + 12 * v33++;
      *(v94 + 4) = v19.f32[2] + *(v94 + 4);
      if ((v50 & 0x80) != 0)
      {
LABEL_33:
        v95 = v22 + 12 * v33++;
        *(v95 + 4) = v19.f32[3] + *(v95 + 4);
      }

LABEL_22:
      v28 += 2;
      v26 += 2;
      v25 += 2;
      v35 += 8;
      if (v35 >= v34)
      {
        v34 = ((v34 - 1) & 0xFFFFFFF8) + 8;
        break;
      }
    }
  }

  if (v34 < v27)
  {
    v96 = v32 * a13;
    v97 = a1 + 2616;
    v98 = a11 != 0.0;
    if (a12 != 0.0)
    {
      v98 = 1;
    }

    if (a13 != 0.0)
    {
      v98 = 1;
    }

    if (a14 != 0.0)
    {
      v98 = 1;
    }

    v99 = v31 * a12;
    v100 = v30 * a14;
    do
    {
      if ((*&v29[4 * (v34 >> 5)] >> v34))
      {
        v101 = v25->i16[0];
        v102 = 1.0 / a1[1514];
        v103 = a1[1504];
        v104 = v26->i16[0];
        v105 = v103 + (v101 * v102);
        v106 = v103 + (v104 * v102);
        v107 = vabds_f32(*&a6, v105);
        if (v105 >= *&a6)
        {
          v108 = v105;
        }

        else
        {
          v108 = *&a6;
        }

        v109 = v107 / v108;
        v110 = vabds_f32(*&a7, v106);
        if (v106 >= *&a7)
        {
          v111 = v106;
        }

        else
        {
          v111 = *&a7;
        }

        v112 = v22 + 12 * v33;
        v114 = *(v112 + 4);
        v113 = (v112 + 4);
        v115 = v114 + (a9 * ((fabsf(*&a8 - ((v105 - v106) * v97[*v28])) * a10) + (v20 * (v109 + (v110 / v111)))));
        *v113 = v115;
        if (v98)
        {
          v116 = a1[1514];
          v117 = a1[1504];
          v118 = (v101 / v116) + v117;
          v119 = vabds_f32(*&a6, v118);
          if (v119 > *v17.i32)
          {
            v115 = v115 + (v99 * v119);
            *v113 = v115;
            v116 = a1[1514];
            v117 = a1[1504];
          }

          v120 = (v104 / v116) + v117;
          v121 = vabds_f32(*&a7, v120);
          if (v121 > *v18.i32)
          {
            v115 = v115 + (v99 * v121);
            *v113 = v115;
          }

          v122 = vabds_f32(*&a8, (v118 - v120) * v97[*v28]);
          if (v122 > v96)
          {
            *v113 = v115 + (v100 * v122);
          }
        }

        ++v33;
      }

      v25 = (v25 + 2);
      v26 = (v26 + 2);
      v28 = (v28 + 1);
      ++v34;
    }

    while (v27 != v34);
  }

  return 0;
}

uint64_t mfs_bnfData_Clusterize_Block_Distance_fxd16_SIMD(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, float *a6, float a7)
{
  v116 = 0;
  v12 = a5 - 2;
  v13 = (a1 + 8 * v12);
  v14 = *(v13[108] + 4 * a4);
  v15 = *(a1 + 1520);
  if (*(a1 + 1524) == 1)
  {
    v115 = a2;
    result = brk_DataMap(*(a2 + 24), *(a1 + 2464), (*(*(a1 + 1536 + 8 * v12) + 4 * a4) + *(a1 + 1528)), v14 * v15, &v116);
    if ((result & 0x80000000) != 0)
    {
      v114 = result;
      UNICORN__log_select_Error(v115, 74001, "ODLBNF DataMap (%u,%u) Error %x", v17, v18, v19, v20, v21);
      return v114;
    }

    a2 = v115;
  }

  else
  {
    result = 0;
    v116 = *(v13[134] + 8 * a4);
  }

  v22 = *(v13[142] + 8 * a4);
  if (v15 == 160)
  {
    if (v14)
    {
      v23 = v116;
      do
      {
        v24 = *(v23 + 16);
        v25 = vmovl_s8(*v23);
        v26 = vmovl_high_s8(*v23);
        v27 = *(a3 + 16);
        v28 = vmull_s16(*v26.i8, *v27.i8);
        v29 = vmull_high_s16(v26, v27);
        v30 = vmovl_s8(*v24.i8);
        v31 = vmovl_high_s8(v24);
        v32 = vpaddq_s32(v28, v29);
        v33 = *(a3 + 32);
        v34 = *(a3 + 48);
        v35 = vmull_s16(*v30.i8, *v33.i8);
        v36 = vmull_high_s16(v30, v33);
        v37 = vmull_s16(*v31.i8, *v34.i8);
        v38 = vpaddq_s32(v35, v36);
        v39 = vmull_high_s16(v31, v34);
        v40 = *(v23 + 32);
        v41 = *(v23 + 48);
        v42 = vmovl_s8(*v40.i8);
        v43 = vmovl_high_s8(v40);
        v44 = vpaddq_s32(v37, v39);
        v45 = *(a3 + 64);
        v46 = *(a3 + 80);
        v47 = vmull_s16(*v42.i8, *v45.i8);
        v48 = vmull_high_s16(v42, v45);
        v49 = vmull_s16(*v43.i8, *v46.i8);
        v50 = vpaddq_s32(v47, v48);
        v51 = vmull_high_s16(v43, v46);
        v52 = vmovl_s8(*v41.i8);
        v53 = vmovl_high_s8(v41);
        v54 = *(a3 + 96);
        v55 = *(a3 + 112);
        v56 = vpaddq_s32(v49, v51);
        v57 = vmull_s16(*v52.i8, *v54.i8);
        v58 = vmull_high_s16(v52, v54);
        v59 = vmull_s16(*v53.i8, *v55.i8);
        v60 = vmull_high_s16(v53, v55);
        v61 = vpaddq_s32(v57, v58);
        v63 = *(v23 + 64);
        v62 = *(v23 + 80);
        v64 = vmovl_s8(*v63.i8);
        v65 = vmovl_high_s8(v63);
        v66 = vpaddq_s32(v59, v60);
        v67 = vpaddq_s32(vmull_s16(*v64.i8, *(a3 + 128)), vmull_high_s16(v64, *(a3 + 128)));
        v68 = vaddq_s32(v38, vpaddq_s32(vmull_s16(*v25.i8, *a3), vmull_high_s16(v25, *a3)));
        v69 = vpaddq_s32(vmull_s16(*v65.i8, *(a3 + 144)), vmull_high_s16(v65, *(a3 + 144)));
        v70 = vmovl_s8(*v62.i8);
        v71 = vmovl_high_s8(v62);
        v72 = vaddq_s32(v44, v32);
        v73 = vpaddq_s32(vmull_s16(*v70.i8, *(a3 + 160)), vmull_high_s16(v70, *(a3 + 160)));
        v74 = vaddq_s32(v50, v61);
        v75 = vpaddq_s32(vmull_s16(*v71.i8, *(a3 + 176)), vmull_high_s16(v71, *(a3 + 176)));
        v76 = *(v23 + 96);
        v77 = *(v23 + 112);
        v78 = vmovl_s8(*v76.i8);
        v79 = vmovl_high_s8(v76);
        v80 = vaddq_s32(v67, v73);
        v81 = vmovl_s8(*v77.i8);
        v82 = vmovl_high_s8(v77);
        v83 = vaddq_s32(v69, v75);
        v84 = vpaddq_s32(vmull_s16(*v81.i8, *(a3 + 224)), vmull_high_s16(v81, *(a3 + 224)));
        v85 = vaddq_s32(v68, v74);
        v86 = vpaddq_s32(vmull_s16(*v82.i8, *(a3 + 240)), vmull_high_s16(v82, *(a3 + 240)));
        v87 = *(v23 + 128);
        v88 = *(v23 + 144);
        v89 = vaddq_s32(v72, vaddq_s32(v56, v66));
        v90 = vmovl_s8(*v87.i8);
        v91 = vmovl_high_s8(v87);
        v92 = vaddq_s32(v86, vpaddq_s32(vmull_s16(*v91.i8, *(a3 + 272)), vmull_high_s16(v91, *(a3 + 272))));
        v93 = vmovl_s8(*v88.i8);
        v94 = vaddq_s32(v85, vaddq_s32(v80, vpaddq_s32(vmull_s16(*v78.i8, *(a3 + 192)), vmull_high_s16(v78, *(a3 + 192)))));
        v95 = vpaddq_s32(vmull_s16(*v93.i8, *(a3 + 288)), vmull_high_s16(v93, *(a3 + 288)));
        v96 = vmovl_high_s8(v88);
        v97 = vpaddq_s32(vaddq_s32(v94, vaddq_s32(vaddq_s32(v84, vpaddq_s32(vmull_s16(*v90.i8, *(a3 + 256)), vmull_high_s16(v90, *(a3 + 256)))), v95)), vaddq_s32(vaddq_s32(v89, vaddq_s32(v83, vpaddq_s32(vmull_s16(*v79.i8, *(a3 + 208)), vmull_high_s16(v79, *(a3 + 208))))), vaddq_s32(v92, vpaddq_s32(vmull_s16(*v96.i8, *(a3 + 304)), vmull_high_s16(v96, *(a3 + 304))))));
        v98 = vpaddq_s32(v97, v97);
        v99 = *v22++;
        *a6++ = (-(v99 * a7) * vpaddq_s32(v98, v98).i32[0]) + 1.0;
        v23 += 160;
        --v14;
      }

      while (v14);
    }
  }

  else if (v14)
  {
    v100 = 0;
    v101 = 0;
    v102 = v116;
    do
    {
      if (v15)
      {
        v103 = 0;
        v104 = 0uLL;
        v105 = 0uLL;
        v106 = a3;
        do
        {
          v107 = *(v102 + v100 + v103);
          v108 = vmovl_s8(*v107.i8);
          v109 = *v106;
          v110 = v106[1];
          v106 += 2;
          v111 = vmovl_high_s8(v107);
          v104 = vaddq_s32(vpaddq_s32(vmull_s16(*v108.i8, *v109.i8), vmull_high_s16(v108, v109)), v104);
          v105 = vaddq_s32(vpaddq_s32(vmull_s16(*v111.i8, *v110.i8), vmull_high_s16(v111, v110)), v105);
          v103 += 16;
        }

        while (v103 < v15);
      }

      else
      {
        v105 = 0uLL;
        v104 = 0uLL;
      }

      v112 = vpaddq_s32(v104, v105);
      v113 = vpaddq_s32(v112, v112);
      a6[v101] = (-(v22[v101] * a7) * vpaddq_s32(v113, v113).i32[0]) + 1.0;
      ++v101;
      v100 += v15;
    }

    while (v101 != v14);
  }

  if (*(a1 + 1524) == 1)
  {
    return brk_DataUnmap(*(a2 + 24), *(a1 + 2464), v116);
  }

  return result;
}

uint64_t mfs_bnfData_Distance_Unit_ID_fxd16_SIMD(uint64_t result, uint64_t a2, int16x8_t *a3, unsigned int a4)
{
  v6 = result;
  v22 = 0;
  v7 = *(result + 1520);
  if (*(result + 1524) == 1)
  {
    result = brk_DataMap(*(a2 + 24), *(result + 2464), (*(result + 1528) + *(*(result + 848) + 4 * (a4 / *(*(result + 568) + 5992))) * v7), v7, &v22);
    if ((result & 0x80000000) != 0)
    {
      return UNICORN__log_select_Error(a2, 74001, "ODLBNF DataMap (%u,%u) Error %x", v8, v9, v10, v11, v12);
    }

    v13 = v22;
  }

  else
  {
    v13 = *(result + 1000) + (*(*(result + 848) + 4 * (a4 / *(*(result + 568) + 5992))) * v7);
    v22 = v13;
  }

  if (v7 && v7 != 160)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *(v13 + v14);
      v18 = vmovl_s8(*v17.i8);
      v19 = *a3;
      v20 = a3[1];
      a3 += 2;
      v21 = vmovl_high_s8(v17);
      v15 = vaddq_s32(vpaddq_s32(vmull_s16(*v18.i8, *v19.i8), vmull_high_s16(v18, v19)), v15);
      v16 = vaddq_s32(vpaddq_s32(vmull_s16(*v21.i8, *v20.i8), vmull_high_s16(v21, v20)), v16);
      v14 += 16;
    }

    while (v14 < v7);
  }

  if (*(v6 + 1524) == 1)
  {
    return brk_DataUnmap(*(a2 + 24), *(v6 + 2464), v13);
  }

  return result;
}

uint64_t mfs_bnfData_Clusterize_Block_Distance_RandomProjection_SIMD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v156 = 0;
  v12 = a5 - 2;
  v13 = *(a1 + 1520);
  if (*(a1 + 1520))
  {
    v14 = 3.1416 / (v13 * 8.0);
  }

  else
  {
    v14 = 0.3927;
  }

  v15 = a1 + 8 * v12;
  v16 = *(*(v15 + 864) + 4 * a4);
  v155 = v14;
  if (*(a1 + 1524) == 1)
  {
    v17 = brk_DataMap(*(a2 + 24), *(a1 + 2464), (*(*(a1 + 1536 + 8 * v12) + 4 * a4) + *(a1 + 1528)), (v16 * v13), &v156);
    if ((v17 & 0x80000000) != 0)
    {
      v69 = v17;
      UNICORN__log_select_Error(v10, 74001, "ODLBNF DataMap (%u,%u) Error %x", a4, a5, a6, a7, a8);
      return v69;
    }

    v14 = v155;
  }

  else
  {
    v17 = 0;
    v156 = *(*(v15 + 1072) + 8 * a4);
  }

  v18 = v16 >> 2;
  HIDWORD(v20) = v13 - 8;
  LODWORD(v20) = v13 - 8;
  v19 = v20 >> 3;
  if (v19 <= 2)
  {
    if (!v19)
    {
      v128 = v17;
      if (v16 >= 4)
      {
        v116 = v156;
        v117 = vld1q_dup_f64(a3);
        __asm { FMOV            V0.4S, #1.0 }

        v129 = _Q0;
        v134 = v117;
        v119 = a6;
        do
        {
          v154 = vmulq_n_f32(vcvtq_f32_u32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*v116, v134))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*(v116 + 2 * v13), v134))))))), v14);
          v147 = cosf(v154.f32[1]);
          v120.f32[0] = cosf(v154.f32[0]);
          v120.f32[1] = v147;
          v148 = v120;
          v121 = cosf(v154.f32[2]);
          v122 = v148;
          v122.f32[2] = v121;
          v149 = v122;
          v123 = cosf(v154.f32[3]);
          v14 = v155;
          v124 = v149;
          v124.f32[3] = v123;
          *v119++ = vsubq_f32(v129, v124);
          v116 = (v116 + 4 * v13);
          --v18;
        }

        while (v18);
        v156 = v116;
      }

      if ((v16 & 3) != 0)
      {
        v125 = v156;
        v126 = v16 & 0xFFFFFFFC;
        do
        {
          v127 = cosf(v14 * vpaddl_u32(vpaddl_u16(vpaddl_u8(vcnt_s8(veor_s8(*a3, *v125))))));
          v14 = v155;
          *(a6 + 4 * v126++) = 1.0 - v127;
          v125 = (v125 + v13);
          v156 = v125;
        }

        while (v126 < v16);
      }

      goto LABEL_47;
    }

    if (v19 == 1)
    {
      v128 = v17;
      if (v16 >= 4)
      {
        v49 = v10;
        v50 = v156;
        __asm { FMOV            V0.4S, #1.0 }

        v131 = _Q0;
        v52 = a6;
        do
        {
          v53 = v50;
          v54 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, *v50)))));
          v55 = (v50 + v13);
          v56 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*v55, *a3)))));
          v57 = (v55 + v13);
          v58 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*v57, *a3)))));
          v59 = &v57->i8[v13];
          v60 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*(v57 + v13), *a3)))));
          v151 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(vuzp1q_s32(vzip1q_s64(v54, v56), vzip1q_s64(v58, v60)), vuzp1q_s32(vzip2q_s64(v54, v56), vzip2q_s64(v58, v60)))), v14);
          v138 = cosf(v151.f32[1]);
          v61.f32[0] = cosf(v151.f32[0]);
          v61.f32[1] = v138;
          v139 = v61;
          v62 = cosf(v151.f32[2]);
          v63 = v139;
          v63.f32[2] = v62;
          v140 = v63;
          v64 = cosf(v151.f32[3]);
          v14 = v155;
          v65 = v140;
          v65.f32[3] = v64;
          *v52++ = vsubq_f32(v131, v65);
          v50 = &v59[v13];
          --v18;
        }

        while (v18);
        v156 = (v53 + 4 * v13);
        v10 = v49;
      }

      if ((v16 & 3) == 0)
      {
        goto LABEL_47;
      }

      v45 = v156;
      v66 = v16 & 0xFFFFFFFC;
      do
      {
        v67 = vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, *v45))));
        v68 = cosf(v14 * vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v67), 1), v67).u32[0]);
        v14 = v155;
        *(a6 + 4 * v66++) = 1.0 - v68;
        v45 = (v45 + v13);
      }

      while (v66 < v16);
      goto LABEL_46;
    }

LABEL_57:
    UNICORN__log_select_Error(v10, 74001, "Unsupported BNF size %d", a4, a5, a6, a7, a8);
    return 2229280769;
  }

  if (v19 == 3)
  {
    v128 = v17;
    if (v16 >= 4)
    {
      v71 = v10;
      v72 = v156;
      __asm { FMOV            V0.4S, #1.0 }

      v132 = _Q0;
      v74 = a6;
      do
      {
        v75 = v72;
        v76 = *(a3 + 16);
        v77 = vaddq_s8(vcntq_s8(veorq_s8(v76, v72[1])), vcntq_s8(veorq_s8(*a3, *v72)));
        v78 = (v72 + v13);
        v79 = vaddq_s8(vcntq_s8(veorq_s8(v78[1], v76)), vcntq_s8(veorq_s8(*v78, *a3)));
        v80 = (v78 + v13);
        v81 = &v80->i8[v13];
        v82 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v77)));
        v83 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v79)));
        v84 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vcntq_s8(veorq_s8(v80[1], v76)), vcntq_s8(veorq_s8(*v80, *a3))))));
        v85 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vcntq_s8(veorq_s8(*(&v80[1] + v13), v76)), vcntq_s8(veorq_s8(*(v80 + v13), *a3))))));
        v152 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(vuzp1q_s32(vzip1q_s64(v82, v83), vzip1q_s64(v84, v85)), vuzp1q_s32(vzip2q_s64(v82, v83), vzip2q_s64(v84, v85)))), v14);
        v141 = cosf(v152.f32[1]);
        v86.f32[0] = cosf(v152.f32[0]);
        v86.f32[1] = v141;
        v142 = v86;
        v87 = cosf(v152.f32[2]);
        v88 = v142;
        v88.f32[2] = v87;
        v143 = v88;
        v89 = cosf(v152.f32[3]);
        v14 = v155;
        v90 = v143;
        v90.f32[3] = v89;
        *v74++ = vsubq_f32(v132, v90);
        v72 = &v81[v13];
        --v18;
      }

      while (v18);
      v156 = (v75 + 4 * v13);
      v10 = v71;
    }

    if ((v16 & 3) == 0)
    {
      goto LABEL_47;
    }

    v45 = v156;
    v91 = v16 & 0xFFFFFFFC;
    do
    {
      v92 = vpaddlq_u16(vpaddlq_u8(vaddq_s8(vcntq_s8(veorq_s8(*(a3 + 16), v45[1])), vcntq_s8(veorq_s8(*a3, *v45)))));
      v93 = cosf(v14 * vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v92), 1), v92).u32[0]);
      v14 = v155;
      *(a6 + 4 * v91++) = 1.0 - v93;
      v45 = (v45 + v13);
    }

    while (v91 < v16);
    goto LABEL_46;
  }

  if (v19 == 5)
  {
    v128 = v17;
    if (v16 >= 4)
    {
      v94 = v10;
      v95 = v156;
      __asm { FMOV            V0.4S, #1.0 }

      v133 = _Q0;
      v97 = a6;
      do
      {
        v98 = v95;
        v99 = *(a3 + 16);
        v100 = *(a3 + 32);
        v101 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(v99, v95[1])), vcntq_s8(veorq_s8(*a3, *v95))), vcntq_s8(veorq_s8(v100, v95[2]))))));
        v102 = (v95 + v13);
        v103 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(v102[1], v99)), vcntq_s8(veorq_s8(*v102, *a3))), vcntq_s8(veorq_s8(v102[2], v100))))));
        v104 = (v102 + v13);
        v105 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(v104[1], v99)), vcntq_s8(veorq_s8(*v104, *a3))), vcntq_s8(veorq_s8(v104[2], v100))))));
        v106 = &v104->i8[v13];
        v107 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(*(&v104[1] + v13), v99)), vcntq_s8(veorq_s8(*(v104 + v13), *a3))), vcntq_s8(veorq_s8(*(&v104[2] + v13), v100))))));
        v153 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(vuzp1q_s32(vzip1q_s64(v101, v103), vzip1q_s64(v105, v107)), vuzp1q_s32(vzip2q_s64(v101, v103), vzip2q_s64(v105, v107)))), v14);
        v144 = cosf(v153.f32[1]);
        v108.f32[0] = cosf(v153.f32[0]);
        v108.f32[1] = v144;
        v145 = v108;
        v109 = cosf(v153.f32[2]);
        v110 = v145;
        v110.f32[2] = v109;
        v146 = v110;
        v111 = cosf(v153.f32[3]);
        v14 = v155;
        v112 = v146;
        v112.f32[3] = v111;
        *v97++ = vsubq_f32(v133, v112);
        v95 = &v106[v13];
        --v18;
      }

      while (v18);
      v156 = (v98 + 4 * v13);
      v10 = v94;
    }

    if ((v16 & 3) == 0)
    {
      goto LABEL_47;
    }

    v45 = v156;
    v113 = v16 & 0xFFFFFFFC;
    do
    {
      v114 = vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(*(a3 + 16), v45[1])), vcntq_s8(veorq_s8(*a3, *v45))), vcntq_s8(veorq_s8(*(a3 + 32), v45[2])))));
      v115 = cosf(v14 * vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v114), 1), v114).u32[0]);
      v14 = v155;
      *(a6 + 4 * v113++) = 1.0 - v115;
      v45 = (v45 + v13);
    }

    while (v113 < v16);
    goto LABEL_46;
  }

  if (v19 != 7)
  {
    goto LABEL_57;
  }

  v128 = v17;
  if (v16 >= 4)
  {
    v21 = v10;
    v22 = v156;
    __asm { FMOV            V0.4S, #1.0 }

    v130 = _Q0;
    v28 = a6;
    do
    {
      v29 = v22;
      v30 = *(a3 + 16);
      v32 = *(a3 + 32);
      v31 = *(a3 + 48);
      v33 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(v30, v22[1])), vcntq_s8(veorq_s8(*a3, *v22))), vaddq_s8(vcntq_s8(veorq_s8(v32, v22[2])), vcntq_s8(veorq_s8(v31, v22[3])))))));
      v34 = (v22 + v13);
      v35 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(v34[1], v30)), vcntq_s8(veorq_s8(*v34, *a3))), vaddq_s8(vcntq_s8(veorq_s8(v34[2], v32)), vcntq_s8(veorq_s8(v34[3], v31)))))));
      v36 = (v34 + v13);
      v37 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(v36[1], v30)), vcntq_s8(veorq_s8(*v36, *a3))), vaddq_s8(vcntq_s8(veorq_s8(v36[2], v32)), vcntq_s8(veorq_s8(v36[3], v31)))))));
      v38 = &v36->i8[v13];
      v39 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(*(&v36[1] + v13), v30)), vcntq_s8(veorq_s8(*(v36 + v13), *a3))), vaddq_s8(vcntq_s8(veorq_s8(*(&v36[2] + v13), v32)), vcntq_s8(veorq_s8(*(&v36[3] + v13), v31)))))));
      v150 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(vuzp1q_s32(vzip1q_s64(v33, v35), vzip1q_s64(v37, v39)), vuzp1q_s32(vzip2q_s64(v33, v35), vzip2q_s64(v37, v39)))), v14);
      v135 = cosf(v150.f32[1]);
      v40.f32[0] = cosf(v150.f32[0]);
      v40.f32[1] = v135;
      v136 = v40;
      v41 = cosf(v150.f32[2]);
      v42 = v136;
      v42.f32[2] = v41;
      v137 = v42;
      v43 = cosf(v150.f32[3]);
      v14 = v155;
      v44 = v137;
      v44.f32[3] = v43;
      *v28++ = vsubq_f32(v130, v44);
      v22 = &v38[v13];
      --v18;
    }

    while (v18);
    v156 = (v29 + 4 * v13);
    v10 = v21;
  }

  if ((v16 & 3) == 0)
  {
    goto LABEL_47;
  }

  v45 = v156;
  v46 = v16 & 0xFFFFFFFC;
  do
  {
    v47 = vpaddlq_u16(vpaddlq_u8(vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(*(a3 + 16), v45[1])), vcntq_s8(veorq_s8(*a3, *v45))), vaddq_s8(vcntq_s8(veorq_s8(*(a3 + 32), v45[2])), vcntq_s8(veorq_s8(*(a3 + 48), v45[3]))))));
    v48 = cosf(v14 * vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v47), 1), v47).u32[0]);
    v14 = v155;
    *(a6 + 4 * v46++) = 1.0 - v48;
    v45 = (v45 + v13);
  }

  while (v46 < v16);
LABEL_46:
  v156 = v45;
LABEL_47:
  result = v128;
  if (*(a1 + 1524) == 1)
  {
    return brk_DataUnmap(*(v10 + 24), *(a1 + 2464), v156);
  }

  return result;
}

void mfs_bnfData_Distance_Unit_ID_RandomProjection_SIMD(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 1520);
  v19 = 0;
  if (v11)
  {
    v12 = 3.1416 / (v11 * 8.0);
  }

  else
  {
    v12 = 0.3927;
  }

  if (*(a1 + 1524) == 1)
  {
    if ((brk_DataMap(*(a2 + 24), *(a1 + 2464), (*(a1 + 1528) + *(*(a1 + 848) + 4 * (a4 / *(*(a1 + 568) + 5992))) * v11), v11, &v19) & 0x80000000) != 0)
    {
      UNICORN__log_select_Error(a2, 74001, "ODLBNF DataMap (%u,%u) Error %x", a4, a5, a6, a7, a8);
      return;
    }
  }

  else
  {
    v19 = (*(a1 + 1000) + (*(*(a1 + 848) + 4 * (a4 / *(*(a1 + 568) + 5992))) * v11));
  }

  HIDWORD(v14) = v11 - 8;
  LODWORD(v14) = v11 - 8;
  v13 = v14 >> 3;
  if (v13 > 2)
  {
    switch(v13)
    {
      case 3:
        v15 = v19;
        v16 = vaddq_s8(vcntq_s8(veorq_s8(a3[1], v19[1])), vcntq_s8(veorq_s8(*a3, *v19)));
        goto LABEL_18;
      case 5:
        v15 = v19;
        v16 = vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(a3[1], v19[1])), vcntq_s8(veorq_s8(*a3, *v19))), vcntq_s8(veorq_s8(a3[2], v19[2])));
        goto LABEL_18;
      case 7:
        v15 = v19;
        v16 = vaddq_s8(vaddq_s8(vcntq_s8(veorq_s8(a3[1], v19[1])), vcntq_s8(veorq_s8(*a3, *v19))), vaddq_s8(vcntq_s8(veorq_s8(a3[2], v19[2])), vcntq_s8(veorq_s8(a3[3], v19[3]))));
LABEL_18:
        v17 = vpaddlq_u16(vpaddlq_u8(v16));
        v18 = vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v17), 1), v17).u32[0];
        goto LABEL_19;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v15 = v19;
      v16 = vcntq_s8(veorq_s8(*a3, *v19));
      goto LABEL_18;
    }

LABEL_23:
    UNICORN__log_select_Error(a2, 74001, "Unsupported BNF size %d", a4, a5, a6, a7, a8);
    return;
  }

  v15 = v19;
  v18 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vcnt_s8(veor_s8(*a3->i8, *v19->i8)))));
LABEL_19:
  cosf(v12 * v18);
  if (*(a1 + 1524) == 1)
  {
    brk_DataUnmap(*(a2 + 24), *(a1 + 2464), v15);
  }
}

uint64_t precomp_DoInnerLoop_simd_full_support(uint64_t a1, void *a2, uint64_t *a3, int a4, int a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = *a2 + 24 * a4;
  v64.i32[0] = *v7;
  v64.i32[1] = *(v7 + 24);
  v64.i32[2] = *(v7 + 48);
  v64.i32[3] = *(v7 + 72);
  v62 = v64;
  v63[0] = *(v7 + 4);
  v63[1] = *(v7 + 28);
  v63[2] = *(v7 + 52);
  v63[3] = *(v7 + 76);
  precomp_FetchRightNode(a1, a5, v64.i32, v63, 4);
  v11 = *(a1 + 1088);
  v12 = *(a1 + 128);
  v13 = *(a1 + 136);
  v14 = 0uLL;
  v15 = *(a1 + 144);
  v16 = *(a1 + 152);
  if (v11)
  {
    v8.i32[0] = *(*(a1 + 40) + 6720);
    v9.i32[0] = 998277249;
    v17 = *(a1 + 152);
    v18 = *(a1 + 144);
    v19 = *(a1 + 136);
    v20 = *(a1 + 128);
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
    v26 = vaddq_s32(v62, v25);
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

      v30 = *(*(a1 + 1032) + 4 * v24);
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

      v33 = (*(a1 + 1008) + 4 * v24);
      v34 = vld1q_dup_f32(v33);
      v35 = vsubq_s32(*(a1 + 384), v34);
      v36 = (*(a1 + 16) + 6664);
      v37 = vld1q_dup_f32(v36);
      v38 = vabsq_s32(v35);
      v39 = (a1 + 112);
      v40 = vld1q_dup_f32(v39);
      v41 = vabsq_s32(vsubq_s32(v40, v35));
      v42 = (a1 + 1060);
      v43 = vld1q_dup_f32(v42);
      v44 = vcgtq_s32(v41, v43);
      v45 = (*(a1 + 1024) + 4 * v24);
      v46 = vld1q_dup_f32(v45);
      v47 = vbicq_s8(vbslq_s8(v44, *(a1 + 832), vmulq_f32(*(a1 + 704), vaddq_f32(v32, v46))), vcgtq_s32(v37, v38));
      if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
      {
        v48 = *(*(a1 + 1000) + 4 * v24);
        v49.i32[0] = *(*(a1 + 256) + 4 * v48);
        v49.i32[1] = *(*(a1 + 264) + 4 * v48);
        v49.i32[2] = *(*(a1 + 272) + 4 * v48);
        v49.i32[3] = *(*(a1 + 280) + 4 * v48);
        v50 = (*(a1 + 1016) + 4 * v24);
        v51 = vld1q_dup_f32(v50);
        v47 = vaddq_f32(vmulq_f32(*(a1 + 768), vaddq_f32(*(a1 + 576), vaddq_f32(v49, v51))), v47);
      }

      v52 = vld1q_dup_f32(v28);
      v53 = (*(a1 + 1040) + 4 * v24);
      v54 = vld1q_dup_f32(v53);
      v55 = vaddq_f32(v29, vbicq_s8(vaddq_f32(vaddq_f32(v47, *(a1 + 640)), vandq_s8(*(a1 + 896), vmulq_n_f32(vabdq_f32(*(a1 + 512), v54), *(*(a1 + 1048) + 4 * v24)))), vceqq_s32(v52, v26)));
      v56 = vcgtq_f32(v27, v55);
      v27 = vbslq_s8(v56, v55, v27);
      v10 = vdupq_n_s32(v24);
      v14 = vbslq_s8(v56, v10, v14);
      ++v24;
      v28 += 24;
    }

    while (v22 != v24);
  }

  v57 = v23 + 24 * v14.i32[0];
  *(v7 + 12) = v27.f32[0] + *(v7 + 12);
  *(v7 + 16) = v57;
  if (v23)
  {
    ++*(v57 + 8);
  }

  v58 = v23 + 24 * v14.i32[1];
  *(v7 + 36) = v27.f32[1] + *(v7 + 36);
  *(v7 + 40) = v58;
  if (v23)
  {
    ++*(v58 + 8);
  }

  v59 = v23 + 24 * v14.i32[2];
  *(v7 + 60) = v27.f32[2] + *(v7 + 60);
  *(v7 + 64) = v59;
  if (v23)
  {
    ++*(v59 + 8);
  }

  v60 = v23 + 24 * v14.i32[3];
  *(v7 + 84) = v27.f32[3] + *(v7 + 84);
  *(v7 + 88) = v60;
  if (v23)
  {
    ++*(v60 + 8);
  }

  return 0;
}

uint64_t precomp_DoInnerLoop_simd_nosylrate(uint64_t a1, void *a2, uint64_t *a3, int a4, int a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = *a2 + 24 * a4;
  v62.i32[0] = *v7;
  v62.i32[1] = *(v7 + 24);
  v62.i32[2] = *(v7 + 48);
  v62.i32[3] = *(v7 + 72);
  v60 = v62;
  v61[0] = *(v7 + 4);
  v61[1] = *(v7 + 28);
  v61[2] = *(v7 + 52);
  v61[3] = *(v7 + 76);
  precomp_FetchRightNode(a1, a5, v62.i32, v61, 4);
  v11 = *(a1 + 1088);
  v12 = *(a1 + 128);
  v13 = *(a1 + 136);
  v14 = 0uLL;
  v15 = *(a1 + 144);
  v16 = *(a1 + 152);
  if (v11)
  {
    v8.i32[0] = *(*(a1 + 40) + 6720);
    v9.i32[0] = 998277249;
    v17 = *(a1 + 152);
    v18 = *(a1 + 144);
    v19 = *(a1 + 136);
    v20 = *(a1 + 128);
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
    v26 = vaddq_s32(v60, v25);
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

      v30 = *(*(a1 + 1032) + 4 * v24);
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

      v33 = (*(a1 + 1008) + 4 * v24);
      v34 = vld1q_dup_f32(v33);
      v35 = vsubq_s32(*(a1 + 384), v34);
      v36 = (*(a1 + 16) + 6664);
      v37 = vld1q_dup_f32(v36);
      v38 = vabsq_s32(v35);
      v39 = (a1 + 112);
      v40 = vld1q_dup_f32(v39);
      v41 = vabsq_s32(vsubq_s32(v40, v35));
      v42 = (a1 + 1060);
      v43 = vld1q_dup_f32(v42);
      v44 = vcgtq_s32(v41, v43);
      v45 = (*(a1 + 1024) + 4 * v24);
      v46 = vld1q_dup_f32(v45);
      v47 = vbicq_s8(vbslq_s8(v44, *(a1 + 832), vmulq_f32(*(a1 + 704), vaddq_f32(v32, v46))), vcgtq_s32(v37, v38));
      if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
      {
        v48 = *(*(a1 + 1000) + 4 * v24);
        v49.i32[0] = *(*(a1 + 256) + 4 * v48);
        v49.i32[1] = *(*(a1 + 264) + 4 * v48);
        v49.i32[2] = *(*(a1 + 272) + 4 * v48);
        v49.i32[3] = *(*(a1 + 280) + 4 * v48);
        v50 = (*(a1 + 1016) + 4 * v24);
        v51 = vld1q_dup_f32(v50);
        v47 = vaddq_f32(vmulq_f32(*(a1 + 768), vaddq_f32(*(a1 + 576), vaddq_f32(v49, v51))), v47);
      }

      v52 = vld1q_dup_f32(v28);
      v53 = vaddq_f32(v29, vbicq_s8(vaddq_f32(v47, *(a1 + 640)), vceqq_s32(v52, v26)));
      v54 = vcgtq_f32(v27, v53);
      v27 = vbslq_s8(v54, v53, v27);
      v10 = vdupq_n_s32(v24);
      v14 = vbslq_s8(v54, v10, v14);
      ++v24;
      v28 += 24;
    }

    while (v22 != v24);
  }

  v55 = v23 + 24 * v14.i32[0];
  *(v7 + 12) = v27.f32[0] + *(v7 + 12);
  *(v7 + 16) = v55;
  if (v23)
  {
    ++*(v55 + 8);
  }

  v56 = v23 + 24 * v14.i32[1];
  *(v7 + 36) = v27.f32[1] + *(v7 + 36);
  *(v7 + 40) = v56;
  if (v23)
  {
    ++*(v56 + 8);
  }

  v57 = v23 + 24 * v14.i32[2];
  *(v7 + 60) = v27.f32[2] + *(v7 + 60);
  *(v7 + 64) = v57;
  if (v23)
  {
    ++*(v57 + 8);
  }

  v58 = v23 + 24 * v14.i32[3];
  *(v7 + 84) = v27.f32[3] + *(v7 + 84);
  *(v7 + 88) = v58;
  if (v23)
  {
    ++*(v58 + 8);
  }

  return 0;
}

uint64_t precomp_DoInnerLoop_T_simd_nosylrate(uint64_t a1, void *a2, uint64_t *a3, int a4, int a5)
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = *(v7 + 1640);
  v9 = *(v7 + 1652);
  v10 = *a2 + 24 * a4;
  v74.i32[0] = *v10;
  v74.i32[1] = *(v10 + 24);
  v74.i32[2] = *(v10 + 48);
  v74.i32[3] = *(v10 + 72);
  v72 = v74;
  v73[0] = *(v10 + 4);
  v73[1] = *(v10 + 28);
  v73[2] = *(v10 + 52);
  v73[3] = *(v10 + 76);
  precomp_FetchRightNode(a1, a5, v74.i32, v73, 4);
  v14 = *(a1 + 1088);
  v15 = *(v7 + 2424);
  v16 = *(a1 + 1032);
  v17 = *(v7 + 2436);
  v18 = (v17 * *v16);
  if (v14)
  {
    v19 = 0;
    v20 = v15 + v18;
    v11.i32[0] = *(*(a1 + 40) + 6720);
    v12.i32[0] = 998277249;
    v21 = vdupq_lane_s32(*&vmulq_f32(v11, v12), 0);
  }

  else
  {
    v20 = 0;
    v19 = v15 + 4 * v18;
    v21 = 0uLL;
  }

  v22 = *(a3 + 3);
  v23 = *a3;
  if (v22 < 1)
  {
    v30 = vdupq_n_s32(0x4B189680u);
    v32 = 0uLL;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27.i64[0] = -1;
    v27.i64[1] = -1;
    v28 = vaddq_s32(v72, v27);
    v29 = *(a1 + 1000);
    v30 = vdupq_n_s32(0x4B189680u);
    v31 = *v29;
    v32 = 0uLL;
    v33 = *a3;
    do
    {
      v34 = v24 + 1;
      if (v24 + 1 >= v22)
      {
        v35 = v24;
      }

      else
      {
        v35 = v24 + 1;
      }

      v36 = (v17 * v16[v35]);
      if (v14)
      {
        v37 = v15 + v36;
        v26 = v20;
        v38 = v19;
      }

      else
      {
        v38 = v15 + 4 * v36;
        v37 = v20;
        v25 = v19;
      }

      v13.i32[0] = *(v33 + 12);
      v39 = vdupq_lane_s32(*v13.i8, 0);
      if (vminv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v30, v39)))))
      {
        break;
      }

      v40 = *(a1 + 384);
      v41 = HIDWORD(*(a1 + 384));
      v42 = *(a1 + 392);
      if (v14)
      {
        v43.i32[0] = *(v26 + v40.u32[0]);
        v43.i32[1] = *(v26 + v41);
        v43.i64[1] = __PAIR64__(*(v26 + v40.u32[3]), *(v26 + v42));
        v44 = vmulq_f32(v21, vcvtq_f32_u32(v43));
      }

      else
      {
        v44.i32[0] = *(v25 + 4 * v40.u32[0]);
        v44.i32[1] = *(v25 + 4 * v41);
        v44.i32[2] = *(v25 + 4 * v42);
        v44.i32[3] = *(v25 + 4 * v40.u32[3]);
      }

      v45 = (*(a1 + 1008) + 4 * v24);
      v46 = vld1q_dup_f32(v45);
      v47 = vsubq_s32(v40, v46);
      v48 = (*(a1 + 16) + 6664);
      v49 = vld1q_dup_f32(v48);
      v50 = vabsq_s32(v47);
      v51 = (a1 + 112);
      v52 = vld1q_dup_f32(v51);
      v53 = vabsq_s32(vsubq_s32(v52, v47));
      v54 = (a1 + 1060);
      v55 = vld1q_dup_f32(v54);
      v56 = vcgtq_s32(v53, v55);
      v57 = (*(a1 + 1024) + 4 * v24);
      v58 = vld1q_dup_f32(v57);
      v59 = vbicq_s8(vbslq_s8(v56, *(a1 + 832), vmulq_f32(*(a1 + 704), vaddq_f32(v44, v58))), vcgtq_s32(v49, v50));
      if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
      {
        v60 = v8 + 4 * (v31 * v9);
        v61.i32[0] = *(v60 + 4 * *(a1 + 448));
        v61.i32[1] = *(v60 + 4 * *(a1 + 452));
        v61.i32[2] = *(v60 + 4 * *(a1 + 456));
        v61.i32[3] = *(v60 + 4 * *(a1 + 460));
        v62 = (*(a1 + 1016) + 4 * v24);
        v63 = vld1q_dup_f32(v62);
        v59 = vaddq_f32(vmulq_f32(*(a1 + 768), vaddq_f32(*(a1 + 576), vaddq_f32(v61, v63))), v59);
      }

      v31 = v29[v35];
      v64 = vld1q_dup_f32(v33);
      v65 = vaddq_f32(v39, vbicq_s8(vaddq_f32(v59, *(a1 + 640)), vceqq_s32(v64, v28)));
      v66 = vcgtq_f32(v30, v65);
      v30 = vbslq_s8(v66, v65, v30);
      v13 = vdupq_n_s32(v24);
      v33 += 24;
      v32 = vbslq_s8(v66, v13, v32);
      ++v24;
      v19 = v38;
      v20 = v37;
    }

    while (v22 != v34);
  }

  v67 = v23 + 24 * v32.i32[0];
  *(v10 + 12) = v30.f32[0] + *(v10 + 12);
  *(v10 + 16) = v67;
  if (v23)
  {
    ++*(v67 + 8);
  }

  v68 = v23 + 24 * v32.i32[1];
  *(v10 + 36) = v30.f32[1] + *(v10 + 36);
  *(v10 + 40) = v68;
  if (v23)
  {
    ++*(v68 + 8);
  }

  v69 = v23 + 24 * v32.i32[2];
  *(v10 + 60) = v30.f32[2] + *(v10 + 60);
  *(v10 + 64) = v69;
  if (v23)
  {
    ++*(v69 + 8);
  }

  v70 = v23 + 24 * v32.i32[3];
  *(v10 + 84) = v30.f32[3] + *(v10 + 84);
  *(v10 + 88) = v70;
  if (v23)
  {
    ++*(v70 + 8);
  }

  return 0;
}

uint64_t precomp_DoInnerLoop_T_8R_simd_nosylrate(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v136 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1640);
  v11 = *(v9 + 1652);
  memset(v126, 0, sizeof(v126));
  memset(v125, 0, sizeof(v125));
  v12 = *a2;
  v131 = 0u;
  v132 = 0u;
  memset_pattern16(&__b, &unk_26ED7DC80, 0x20uLL);
  v13 = 0;
  v14 = 1;
  v15.i64[0] = -1;
  v15.i64[1] = -1;
  v16 = v125;
  v17 = v127;
  v18 = v129;
  do
  {
    v19 = v12 + 24 * a4 + 24 * v13;
    *v16 = v19;
    v18->i32[0] = *v19;
    v20 = *(v19 + 24);
    *(v125 + (v13 | 1)) = v19 + 24;
    v129[v13 | 1] = v20;
    v21 = *(v19 + 48);
    *(v125 + (v13 | 2)) = v19 + 48;
    v129[v13 | 2] = v21;
    v22 = *(v19 + 72);
    *(v125 + (v13 | 3)) = v19 + 72;
    v129[v13 | 3] = v22;
    v133[v13 / 4] = vaddq_s32(*v18, v15);
    *v17 = *(v19 + 4);
    v127[v13 | 1] = *(v19 + 28);
    v127[v13 | 2] = *(v19 + 52);
    v127[v13 | 3] = *(v19 + 76);
    LOBYTE(v19) = v14;
    v16 = v126;
    v17 = &v128;
    v18 = &v130;
    v13 = 4;
    v14 = 0;
  }

  while ((v19 & 1) != 0);
  precomp_FetchRightNode(a1, a5, v129, v127, 8);
  v26 = *(a1 + 1088);
  v27 = *(v9 + 2424);
  v28 = *(a1 + 1032);
  v29 = *(v9 + 2436);
  v30 = (v29 * *v28);
  if (v26)
  {
    v31 = 0;
    v32 = v27 + v30;
    v23.i32[0] = *(*(a1 + 16) + 6720);
    v24.i32[0] = 998277249;
    v33 = vdupq_lane_s32(*&vmulq_f32(v23, v24), 0);
  }

  else
  {
    v32 = 0;
    v31 = v27 + 4 * v30;
    v33 = 0uLL;
  }

  v34 = *(a3 + 3);
  v35 = *a3;
  if (v34 >= 1)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = *(a1 + 1000);
    v40 = *v39;
    v41 = 0uLL;
    v42 = __b;
    v43 = v135;
    v44 = v35;
    v45 = 0uLL;
    do
    {
      v46 = v36 + 1;
      if (v36 + 1 >= v34)
      {
        v47 = v36;
      }

      else
      {
        v47 = v36 + 1;
      }

      v48 = (v29 * v28[v47]);
      if (v26)
      {
        v49 = v27 + v48;
        v38 = v32;
        v50 = v31;
      }

      else
      {
        v50 = v27 + 4 * v48;
        v49 = v32;
        v37 = v31;
      }

      v51 = v10 + 4 * (v40 * v11);
      v25.i32[0] = *(v44 + 12);
      v52 = vdupq_lane_s32(*v25.i8, 0);
      v53 = vcgeq_f32(v42, v52);
      if (vmaxv_u16(vmovn_s32(v53)))
      {
        v54 = *(a1 + 384);
        v55 = HIDWORD(*(a1 + 384));
        v56 = *(a1 + 392);
        if (v26)
        {
          v57.i32[0] = *(v38 + v54.u32[0]);
          v57.i32[1] = *(v38 + v55);
          v57.i64[1] = __PAIR64__(*(v38 + v54.u32[3]), *(v38 + v56));
          v58 = vmulq_f32(v33, vcvtq_f32_u32(v57));
        }

        else
        {
          v58.i32[0] = *(v37 + 4 * v54.u32[0]);
          v58.i32[1] = *(v37 + 4 * v55);
          v58.i32[2] = *(v37 + 4 * v56);
          v58.i32[3] = *(v37 + 4 * v54.u32[3]);
        }

        v59 = (*(a1 + 1008) + 4 * v36);
        v60 = vld1q_dup_f32(v59);
        v61 = vsubq_s32(v54, v60);
        v62 = (*(a1 + 16) + 6664);
        v63 = vld1q_dup_f32(v62);
        v64 = vabsq_s32(v61);
        v65 = (a1 + 112);
        v66 = vld1q_dup_f32(v65);
        v67 = vabsq_s32(vsubq_s32(v66, v61));
        v68 = (a1 + 1060);
        v69 = vld1q_dup_f32(v68);
        v70 = vcgtq_s32(v67, v69);
        v71 = (*(a1 + 1024) + 4 * v36);
        v72 = vld1q_dup_f32(v71);
        v73 = vbicq_s8(vbslq_s8(v70, *(a1 + 832), vmulq_f32(*(a1 + 704), vaddq_f32(v58, v72))), vcgtq_s32(v63, v64));
        if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
        {
          v74.i32[0] = *(v51 + 4 * *(a1 + 448));
          v74.i32[1] = *(v51 + 4 * *(a1 + 452));
          v74.i32[2] = *(v51 + 4 * *(a1 + 456));
          v74.i32[3] = *(v51 + 4 * *(a1 + 460));
          v75 = (*(a1 + 1016) + 4 * v36);
          v76 = vld1q_dup_f32(v75);
          v73 = vaddq_f32(vmulq_f32(*(a1 + 768), vaddq_f32(*(a1 + 576), vaddq_f32(v74, v76))), v73);
        }

        v77 = vld1q_dup_f32(v44);
        v78 = vaddq_f32(v52, vbicq_s8(vaddq_f32(v73, *(a1 + 640)), vceqq_s32(v77, v133[0])));
        v79 = vcgtq_f32(v42, v78);
        v42 = vbslq_s8(v79, v78, v42);
        __b = v42;
        v45 = vbslq_s8(v79, vdupq_n_s32(v36), v45);
        v131 = v45;
      }

      v80 = vcgeq_f32(v43, v52);
      if (vmaxv_u16(vmovn_s32(v80)))
      {
        v81 = *(a1 + 400);
        v82 = HIDWORD(*(a1 + 400));
        v83 = *(a1 + 408);
        if (v26)
        {
          v84.i32[0] = *(v38 + v81.u32[0]);
          v84.i32[1] = *(v38 + v82);
          v84.i64[1] = __PAIR64__(*(v38 + v81.u32[3]), *(v38 + v83));
          v85 = vmulq_f32(v33, vcvtq_f32_u32(v84));
        }

        else
        {
          v85.i32[0] = *(v37 + 4 * v81.u32[0]);
          v85.i32[1] = *(v37 + 4 * v82);
          v85.i32[2] = *(v37 + 4 * v83);
          v85.i32[3] = *(v37 + 4 * v81.u32[3]);
        }

        v86 = (*(a1 + 1008) + 4 * v36);
        v87 = vld1q_dup_f32(v86);
        v88 = vsubq_s32(v81, v87);
        v89 = (*(a1 + 16) + 6664);
        v90 = vld1q_dup_f32(v89);
        v91 = vabsq_s32(v88);
        v92 = (a1 + 112);
        v93 = vld1q_dup_f32(v92);
        v94 = vabsq_s32(vsubq_s32(v93, v88));
        v95 = (a1 + 1060);
        v96 = vld1q_dup_f32(v95);
        v97 = vcgtq_s32(v94, v96);
        v98 = (*(a1 + 1024) + 4 * v36);
        v99 = vld1q_dup_f32(v98);
        v100 = vbicq_s8(vbslq_s8(v97, *(a1 + 848), vmulq_f32(*(a1 + 720), vaddq_f32(v85, v99))), vcgtq_s32(v90, v91));
        if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
        {
          v101.i32[0] = *(v51 + 4 * *(a1 + 464));
          v101.i32[1] = *(v51 + 4 * *(a1 + 468));
          v101.i32[2] = *(v51 + 4 * *(a1 + 472));
          v101.i32[3] = *(v51 + 4 * *(a1 + 476));
          v102 = (*(a1 + 1016) + 4 * v36);
          v103 = vld1q_dup_f32(v102);
          v100 = vaddq_f32(vmulq_f32(*(a1 + 784), vaddq_f32(*(a1 + 592), vaddq_f32(v101, v103))), v100);
        }

        v104 = vld1q_dup_f32(v44);
        v105 = vaddq_f32(v52, vbicq_s8(vaddq_f32(v100, *(a1 + 656)), vceqq_s32(v104, v133[1])));
        v106 = vcgtq_f32(v43, v105);
        v43 = vbslq_s8(v106, v105, v43);
        v135 = v43;
        v41 = vbslq_s8(v106, vdupq_n_s32(v36), v41);
        v132 = v41;
      }

      v40 = v39[v47];
      v107 = vaddvq_s32(vandq_s8(v53, xmmword_26ED120B0));
      v25 = vandq_s8(v80, xmmword_26ED120B0);
      v44 += 24;
      ++v36;
      v108 = ((v107 | vaddvq_s32(v25)) & 0xF) == 0 || v46 >= v34;
      v31 = v50;
      v32 = v49;
    }

    while (!v108);
  }

  v109 = 0;
  v110 = 1;
  v111 = v125;
  do
  {
    v112 = v110;
    v113 = *(&v131 + 2 * v109);
    v114 = *(&__b + 2 * v109);
    v115 = v35 + 24 * v113;
    v116 = *v111;
    *(v116 + 12) = *&v114 + *(v116 + 12);
    *(v116 + 16) = v115;
    if (v35)
    {
      ++*(v115 + 8);
    }

    v117 = v35 + 24 * SDWORD1(v113);
    v118 = &v125[v109];
    v119 = v118[1];
    *(v119 + 12) = *(&v114 + 1) + *(v119 + 12);
    *(v119 + 16) = v117;
    if (v35)
    {
      ++*(v117 + 8);
    }

    v120 = v35 + 24 * SDWORD2(v113);
    v121 = v118[2];
    *(v121 + 12) = *(&v114 + 2) + *(v121 + 12);
    *(v121 + 16) = v120;
    if (v35)
    {
      ++*(v120 + 8);
    }

    v122 = v35 + 24 * SHIDWORD(v113);
    v123 = v118[3];
    *(v123 + 12) = *(&v114 + 3) + *(v123 + 12);
    *(v123 + 16) = v122;
    if (v35)
    {
      ++*(v122 + 8);
    }

    v110 = 0;
    v111 = v126;
    v109 = 2;
  }

  while ((v112 & 1) != 0);
  return 0;
}

uint64_t precomp_DoInnerLoop_T_16R_simd_nosylrate(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v200 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1640);
  v11 = *(v9 + 1652);
  v12 = v188;
  v187 = 0u;
  memset(v188, 0, sizeof(v188));
  v13 = *a2;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  memset_pattern16(&__b, &unk_26ED7DC80, 0x40uLL);
  v14 = 0;
  v15 = (v13 + 24 * a4 + 76);
  v16 = -4;
  v17.i64[0] = -1;
  v17.i64[1] = -1;
  do
  {
    v18 = &v190[v14 / 4];
    *v18 = *(v15 - 19);
    v19 = *(v15 - 13);
    *(v12 - 2) = v15 - 19;
    *(v12 - 1) = v15 - 13;
    v18[1] = v19;
    v18[2] = *(v15 - 7);
    v20 = *(v15 - 1);
    *v12 = v15 - 7;
    v12[1] = v15 - 1;
    v12 += 4;
    v18[3] = v20;
    v195[v14 / 0x10] = vaddq_s32(*&v190[v14 / 4], v17);
    v21 = &v189[v14 / 4];
    *v21 = *(v15 - 18);
    v21[1] = *(v15 - 12);
    v21[2] = *(v15 - 6);
    v22 = *v15;
    v15 += 24;
    v21[3] = v22;
    v14 += 16;
    v16 += 4;
  }

  while (v16 < 0xC);
  precomp_FetchRightNode(a1, a5, v190, v189, 16);
  v26 = *(a1 + 1088);
  v27 = *(v9 + 2424);
  v28 = *(a1 + 1032);
  v29 = *(v9 + 2436);
  v30 = (v29 * *v28);
  if (v26)
  {
    v31 = 0;
    v32 = v27 + v30;
    v23.i32[0] = *(*(a1 + 40) + 6720);
    v24.i32[0] = 998277249;
    v33 = vdupq_lane_s32(*&vmulq_f32(v23, v24), 0);
  }

  else
  {
    v32 = 0;
    v31 = v27 + 4 * v30;
    v33 = 0uLL;
  }

  v34 = *(a3 + 3);
  if (v34 >= 1)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = *(a1 + 1000);
    v40 = *v39;
    v41 = __b;
    v42 = v197;
    v43 = 1;
    v44 = 0uLL;
    v45 = v198;
    v46 = v199;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 1;
    v50 = 1;
    v51 = 1;
    v52 = 0uLL;
    do
    {
      if ((v51 & 1) == 0 && (v50 & 1) == 0 && (v49 & 1) == 0 && (v43 & 1) == 0)
      {
        break;
      }

      v53 = v36 + 1;
      if (v36 + 1 >= v34)
      {
        v54 = v36;
      }

      else
      {
        v54 = v36 + 1;
      }

      v55 = (v29 * v28[v54]);
      if (v26)
      {
        v56 = v27 + v55;
        v38 = v32;
        v57 = v31;
      }

      else
      {
        v57 = v27 + 4 * v55;
        v56 = v32;
        v37 = v31;
      }

      v58 = v10 + 4 * (v40 * v11);
      v59 = *a3;
      v60 = *a3 + v35;
      v25.i32[0] = *(v60 + 12);
      v25 = vdupq_lane_s32(*v25.f32, 0);
      v61 = vmaxv_u16(vmovn_s32(vcgeq_f32(v41, v25)));
      if (v61)
      {
        v62 = *(a1 + 384);
        v63 = HIDWORD(*(a1 + 384));
        v64 = *(a1 + 392);
        if (v26)
        {
          v65.i32[0] = *(v38 + v62.u32[0]);
          v65.i32[1] = *(v38 + v63);
          v65.i64[1] = __PAIR64__(*(v38 + v62.u32[3]), *(v38 + v64));
          v66 = vmulq_f32(v33, vcvtq_f32_u32(v65));
        }

        else
        {
          v66.i32[0] = *(v37 + 4 * v62.u32[0]);
          v66.i32[1] = *(v37 + 4 * v63);
          v66.i32[2] = *(v37 + 4 * v64);
          v66.i32[3] = *(v37 + 4 * v62.u32[3]);
        }

        v67 = (*(a1 + 1008) + 4 * v36);
        v68 = vld1q_dup_f32(v67);
        v69 = vsubq_s32(v62, v68);
        v70 = (*(a1 + 16) + 6664);
        v71 = vld1q_dup_f32(v70);
        v72 = vabsq_s32(v69);
        v73 = (a1 + 112);
        v74 = vld1q_dup_f32(v73);
        v75 = vabsq_s32(vsubq_s32(v74, v69));
        v76 = (a1 + 1060);
        v77 = vld1q_dup_f32(v76);
        v78 = vcgtq_s32(v75, v77);
        v79 = (*(a1 + 1024) + 4 * v36);
        v80 = vld1q_dup_f32(v79);
        v81 = vbicq_s8(vbslq_s8(v78, *(a1 + 832), vmulq_f32(*(a1 + 704), vaddq_f32(v66, v80))), vcgtq_s32(v71, v72));
        if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
        {
          v82.i32[0] = *(v58 + 4 * *(a1 + 448));
          v82.i32[1] = *(v58 + 4 * *(a1 + 452));
          v82.i32[2] = *(v58 + 4 * *(a1 + 456));
          v82.i32[3] = *(v58 + 4 * *(a1 + 460));
          v83 = (*(a1 + 1016) + 4 * v36);
          v84 = vld1q_dup_f32(v83);
          v81 = vaddq_f32(vmulq_f32(*(a1 + 768), vaddq_f32(*(a1 + 576), vaddq_f32(v82, v84))), v81);
        }

        v85 = vld1q_dup_f32(v60);
        v86 = vaddq_f32(v25, vbicq_s8(vaddq_f32(v81, *(a1 + 640)), vceqq_s32(v85, v195[0])));
        v87 = vcgtq_f32(v41, v86);
        v41 = vbslq_s8(v87, v86, v41);
        __b = v41;
        v52 = vbslq_s8(v87, vdupq_n_s32(v36), v52);
        v191 = v52;
      }

      v88 = vmaxv_u16(vmovn_s32(vcgeq_f32(v42, v25)));
      if (v88)
      {
        v89 = *(a1 + 400);
        v90 = HIDWORD(*(a1 + 400));
        v91 = *(a1 + 408);
        if (v26)
        {
          v92.i32[0] = *(v38 + v89.u32[0]);
          v92.i32[1] = *(v38 + v90);
          v92.i64[1] = __PAIR64__(*(v38 + v89.u32[3]), *(v38 + v91));
          v93 = vmulq_f32(v33, vcvtq_f32_u32(v92));
        }

        else
        {
          v93.i32[0] = *(v37 + 4 * v89.u32[0]);
          v93.i32[1] = *(v37 + 4 * v90);
          v93.i32[2] = *(v37 + 4 * v91);
          v93.i32[3] = *(v37 + 4 * v89.u32[3]);
        }

        v94 = (*(a1 + 1008) + 4 * v36);
        v95 = vld1q_dup_f32(v94);
        v96 = vsubq_s32(v89, v95);
        v97 = (*(a1 + 16) + 6664);
        v98 = vld1q_dup_f32(v97);
        v99 = vabsq_s32(v96);
        v100 = (a1 + 112);
        v101 = vld1q_dup_f32(v100);
        v102 = vabsq_s32(vsubq_s32(v101, v96));
        v103 = (a1 + 1060);
        v104 = vld1q_dup_f32(v103);
        v105 = vcgtq_s32(v102, v104);
        v106 = (*(a1 + 1024) + 4 * v36);
        v107 = vld1q_dup_f32(v106);
        v108 = vbicq_s8(vbslq_s8(v105, *(a1 + 848), vmulq_f32(*(a1 + 720), vaddq_f32(v93, v107))), vcgtq_s32(v98, v99));
        if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
        {
          v109.i32[0] = *(v58 + 4 * *(a1 + 464));
          v109.i32[1] = *(v58 + 4 * *(a1 + 468));
          v109.i32[2] = *(v58 + 4 * *(a1 + 472));
          v109.i32[3] = *(v58 + 4 * *(a1 + 476));
          v110 = (*(a1 + 1016) + 4 * v36);
          v111 = vld1q_dup_f32(v110);
          v108 = vaddq_f32(vmulq_f32(*(a1 + 784), vaddq_f32(*(a1 + 592), vaddq_f32(v109, v111))), v108);
        }

        v112 = (v59 + v35);
        v113 = vld1q_dup_f32(v112);
        v114 = vaddq_f32(v25, vbicq_s8(vaddq_f32(v108, *(a1 + 656)), vceqq_s32(v113, v195[1])));
        v115 = vcgtq_f32(v42, v114);
        v42 = vbslq_s8(v115, v114, v42);
        v197 = v42;
        v48 = vbslq_s8(v115, vdupq_n_s32(v36), v48);
        v192 = v48;
      }

      v40 = v39[v54];
      v116 = vmaxv_u16(vmovn_s32(vcgeq_f32(v45, v25)));
      if (v116)
      {
        v117 = *(a1 + 416);
        v118 = HIDWORD(*(a1 + 416));
        v119 = *(a1 + 424);
        if (v26)
        {
          v120.i32[0] = *(v38 + v117.u32[0]);
          v120.i32[1] = *(v38 + v118);
          v120.i64[1] = __PAIR64__(*(v38 + v117.u32[3]), *(v38 + v119));
          v121 = vmulq_f32(v33, vcvtq_f32_u32(v120));
        }

        else
        {
          v121.i32[0] = *(v37 + 4 * v117.u32[0]);
          v121.i32[1] = *(v37 + 4 * v118);
          v121.i32[2] = *(v37 + 4 * v119);
          v121.i32[3] = *(v37 + 4 * v117.u32[3]);
        }

        v122 = (*(a1 + 1008) + 4 * v36);
        v123 = vld1q_dup_f32(v122);
        v124 = vsubq_s32(v117, v123);
        v125 = (*(a1 + 16) + 6664);
        v126 = vld1q_dup_f32(v125);
        v127 = vabsq_s32(v124);
        v128 = (a1 + 112);
        v129 = vld1q_dup_f32(v128);
        v130 = vabsq_s32(vsubq_s32(v129, v124));
        v131 = (a1 + 1060);
        v132 = vld1q_dup_f32(v131);
        v133 = vcgtq_s32(v130, v132);
        v134 = (*(a1 + 1024) + 4 * v36);
        v135 = vld1q_dup_f32(v134);
        v136 = vbicq_s8(vbslq_s8(v133, *(a1 + 864), vmulq_f32(*(a1 + 736), vaddq_f32(v121, v135))), vcgtq_s32(v126, v127));
        if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
        {
          v137.i32[0] = *(v58 + 4 * *(a1 + 480));
          v137.i32[1] = *(v58 + 4 * *(a1 + 484));
          v137.i32[2] = *(v58 + 4 * *(a1 + 488));
          v137.i32[3] = *(v58 + 4 * *(a1 + 492));
          v138 = (*(a1 + 1016) + 4 * v36);
          v139 = vld1q_dup_f32(v138);
          v136 = vaddq_f32(vmulq_f32(*(a1 + 800), vaddq_f32(*(a1 + 608), vaddq_f32(v137, v139))), v136);
        }

        v140 = (v59 + v35);
        v141 = vld1q_dup_f32(v140);
        v142 = vaddq_f32(v25, vbicq_s8(vaddq_f32(v136, *(a1 + 672)), vceqq_s32(v141, v195[2])));
        v143 = vcgtq_f32(v45, v142);
        v45 = vbslq_s8(v143, v142, v45);
        v198 = v45;
        v47 = vbslq_s8(v143, vdupq_n_s32(v36), v47);
        v193 = v47;
      }

      v144 = vmaxv_u16(vmovn_s32(vcgeq_f32(v46, v25)));
      if (v144)
      {
        v145 = *(a1 + 432);
        v146 = HIDWORD(*(a1 + 432));
        v147 = *(a1 + 440);
        if (v26)
        {
          v148.i32[0] = *(v38 + v145.u32[0]);
          v148.i32[1] = *(v38 + v146);
          v148.i64[1] = __PAIR64__(*(v38 + v145.u32[3]), *(v38 + v147));
          v149 = vmulq_f32(v33, vcvtq_f32_u32(v148));
        }

        else
        {
          v149.i32[0] = *(v37 + 4 * v145.u32[0]);
          v149.i32[1] = *(v37 + 4 * v146);
          v149.i32[2] = *(v37 + 4 * v147);
          v149.i32[3] = *(v37 + 4 * v145.u32[3]);
        }

        v150 = (*(a1 + 1008) + 4 * v36);
        v151 = vld1q_dup_f32(v150);
        v152 = vsubq_s32(v145, v151);
        v153 = (*(a1 + 16) + 6664);
        v154 = vld1q_dup_f32(v153);
        v155 = vabsq_s32(v152);
        v156 = (a1 + 112);
        v157 = vld1q_dup_f32(v156);
        v158 = vabsq_s32(vsubq_s32(v157, v152));
        v159 = (a1 + 1060);
        v160 = vld1q_dup_f32(v159);
        v161 = vcgtq_s32(v158, v160);
        v162 = (*(a1 + 1024) + 4 * v36);
        v163 = vld1q_dup_f32(v162);
        v164 = vbicq_s8(vbslq_s8(v161, *(a1 + 880), vmulq_f32(*(a1 + 752), vaddq_f32(v149, v163))), vcgtq_s32(v154, v155));
        if (*(a1 + 32) == *(a1 + 48) || *(a1 + 104))
        {
          v165.i32[0] = *(v58 + 4 * *(a1 + 496));
          v165.i32[1] = *(v58 + 4 * *(a1 + 500));
          v165.i32[2] = *(v58 + 4 * *(a1 + 504));
          v165.i32[3] = *(v58 + 4 * *(a1 + 508));
          v166 = (*(a1 + 1016) + 4 * v36);
          v167 = vld1q_dup_f32(v166);
          v164 = vaddq_f32(vmulq_f32(*(a1 + 816), vaddq_f32(*(a1 + 624), vaddq_f32(v165, v167))), v164);
        }

        v168 = (v59 + v35);
        v169 = vld1q_dup_f32(v168);
        v170 = vaddq_f32(v25, vbicq_s8(vaddq_f32(v164, *(a1 + 688)), vceqq_s32(v169, v195[3])));
        v171 = vcgtq_f32(v46, v170);
        v46 = vbslq_s8(v171, v170, v46);
        v199 = v46;
        v25 = vdupq_n_s32(v36);
        v44 = vbslq_s8(v171, v25, v44);
        v194 = v44;
      }

      v51 = v61 & 1;
      v50 = v88 & 1;
      v49 = v116 & 1;
      v43 = v144 & 1;
      v35 += 24;
      ++v36;
      v31 = v57;
      v32 = v56;
    }

    while (v34 != v53);
  }

  v172 = 0;
  v173 = *a3;
  v174 = v188;
  v175 = -4;
  do
  {
    v176 = *(&v191 + v172);
    v177 = *(&__b + v172);
    v178 = v173 + 24 * v176;
    v179 = *(v174 - 2);
    *(v179 + 12) = *&v177 + *(v179 + 12);
    *(v179 + 16) = v178;
    if (v173)
    {
      ++*(v178 + 8);
    }

    v180 = v173 + 24 * SDWORD1(v176);
    v181 = *(v174 - 1);
    *(v181 + 12) = *(&v177 + 1) + *(v181 + 12);
    *(v181 + 16) = v180;
    if (v173)
    {
      ++*(v180 + 8);
    }

    v182 = v173 + 24 * SDWORD2(v176);
    v183 = *v174;
    *(v183 + 12) = *(&v177 + 2) + *(*v174 + 12);
    *(v183 + 16) = v182;
    if (v173)
    {
      ++*(v182 + 8);
    }

    v184 = v173 + 24 * SHIDWORD(v176);
    v185 = v174[1];
    *(v185 + 12) = *(&v177 + 3) + *(v185 + 12);
    *(v185 + 16) = v184;
    if (v173)
    {
      ++*(v184 + 8);
    }

    v175 += 4;
    v172 += 16;
    v174 += 4;
  }

  while (v175 < 0xC);
  return 0;
}