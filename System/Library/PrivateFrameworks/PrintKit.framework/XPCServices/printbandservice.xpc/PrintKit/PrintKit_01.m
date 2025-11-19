void Madusa::PhaseDeviation::OrientPhases(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v10 = 0;
      v11 = -4;
      do
      {
        v12 = &a3[v10];
        *v12 = -a2[v10];
        v12[1] = -a2[v10 + 1];
        v12[2] = -a2[v10 + 2];
        v12[3] = -a2[v10 + 3];
        v11 += 4;
        v10 += 4;
      }

      while (v11 < 0x34);
    }

    else if (a4 == 4)
    {
      v7 = 0;
      v8 = -4;
      do
      {
        v9 = &a3[v7];
        *v9 = -a2[v7 + 3];
        v9[1] = a2[v7 + 2];
        v9[2] = -a2[v7 + 1];
        v9[3] = a2[v7];
        v8 += 4;
        v7 += 4;
      }

      while (v8 < 0x34);
    }
  }

  else if (a4 == 1)
  {
    *a3 = *a2;
    a3[1] = a2[1];
    a3[2] = a2[2];
    a3[3] = a2[3];
    a3[4] = a2[4];
    a3[5] = a2[5];
    a3[6] = a2[6];
    a3[7] = a2[7];
    a3[8] = a2[8];
    a3[9] = a2[9];
    a3[10] = a2[10];
    a3[11] = a2[11];
    a3[12] = a2[12];
    a3[13] = a2[13];
    a3[14] = a2[14];
    a3[15] = a2[15];
    a3[16] = a2[16];
    a3[17] = a2[17];
    a3[18] = a2[18];
    a3[19] = a2[19];
    a3[20] = a2[20];
    a3[21] = a2[21];
    a3[22] = a2[22];
    a3[23] = a2[23];
    a3[24] = a2[24];
    a3[25] = a2[25];
    a3[26] = a2[26];
    a3[27] = a2[27];
    a3[28] = a2[28];
    a3[29] = a2[29];
    a3[30] = a2[30];
    a3[31] = a2[31];
    a3[32] = a2[32];
    a3[33] = a2[33];
    a3[34] = a2[34];
    a3[35] = a2[35];
    a3[36] = a2[36];
    a3[37] = a2[37];
    a3[38] = a2[38];
    a3[39] = a2[39];
    a3[40] = a2[40];
    a3[41] = a2[41];
    a3[42] = a2[42];
    a3[43] = a2[43];
    a3[44] = a2[44];
    a3[45] = a2[45];
    a3[46] = a2[46];
    a3[47] = a2[47];
    a3[48] = a2[48];
    a3[49] = a2[49];
    a3[50] = a2[50];
    a3[51] = a2[51];
    a3[52] = a2[52];
    a3[53] = a2[53];
    a3[54] = a2[54];
    a3[55] = a2[55];
  }

  else if (a4 == 2)
  {
    v4 = 0;
    v5 = -4;
    do
    {
      v6 = &a3[v4];
      *v6 = a2[v4 + 3];
      v6[1] = -a2[v4 + 2];
      v6[2] = a2[v4 + 1];
      v6[3] = -a2[v4];
      v5 += 4;
      v4 += 4;
    }

    while (v5 < 0x34);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v13 = *a3;
    *a3 = a3[1];
    a3[1] = v13;
    v14 = a3[2];
    a3[2] = a3[3];
    a3[3] = v14;
    v15 = a3[4];
    a3[4] = a3[5];
    a3[5] = v15;
    v16 = a3[6];
    a3[6] = a3[7];
    a3[7] = v16;
    v17 = a3[8];
    a3[8] = a3[9];
    a3[9] = v17;
    v18 = a3[10];
    a3[10] = a3[11];
    a3[11] = v18;
    v19 = a3[12];
    a3[12] = a3[13];
    a3[13] = v19;
    v20 = a3[14];
    a3[14] = a3[15];
    a3[15] = v20;
    v21 = a3[16];
    a3[16] = a3[17];
    a3[17] = v21;
    v22 = a3[18];
    a3[18] = a3[19];
    a3[19] = v22;
    v23 = a3[20];
    a3[20] = a3[21];
    a3[21] = v23;
    v24 = a3[22];
    a3[22] = a3[23];
    a3[23] = v24;
    v25 = a3[24];
    a3[24] = a3[25];
    a3[25] = v25;
    v26 = a3[26];
    a3[26] = a3[27];
    a3[27] = v26;
    v27 = a3[28];
    a3[28] = a3[29];
    a3[29] = v27;
    v28 = a3[30];
    a3[30] = a3[31];
    a3[31] = v28;
    v29 = a3[32];
    a3[32] = a3[33];
    a3[33] = v29;
    v30 = a3[34];
    a3[34] = a3[35];
    a3[35] = v30;
    v31 = a3[36];
    a3[36] = a3[37];
    a3[37] = v31;
    v32 = a3[38];
    a3[38] = a3[39];
    a3[39] = v32;
    v33 = a3[40];
    a3[40] = a3[41];
    a3[41] = v33;
    v34 = a3[42];
    a3[42] = a3[43];
    a3[43] = v34;
    v35 = a3[44];
    a3[44] = a3[45];
    a3[45] = v35;
    v36 = a3[46];
    a3[46] = a3[47];
    a3[47] = v36;
    v37 = a3[48];
    a3[48] = a3[49];
    a3[49] = v37;
    v38 = a3[50];
    a3[50] = a3[51];
    a3[51] = v38;
    v39 = a3[52];
    a3[52] = a3[53];
    a3[53] = v39;
    v40 = a3[54];
    a3[54] = a3[55];
    a3[55] = v40;
  }

  if ((a4 & 0x10000000000) != 0)
  {
    v41 = 56;
    do
    {
      *a3++ += 0x8000;
      --v41;
    }

    while (v41);
  }
}

uint64_t Madusa::PhaseDeviation::_Execute(int *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v8 = 9091897;
  }

  else
  {
    v8 = 589822;
  }

  v9 = 1;
  v10 = 3516032;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v13 = v9;
        if (v10 <= 3516102)
        {
          break;
        }

        if (v10 == 3516103)
        {
          if ((*v6 & 0x1F) != 0 || v6[2] > 0x3Fu || (v9 = 1, v10 = 589822, v6[3] != ((QuickCodec::mask ^ v7) / 0x41D093)))
          {
            v10 = 589876;
            v9 = v13;
          }
        }

        else if (v10 == 4105837)
        {
          v6 = v5;
          v10 = 3516049;
        }

        else
        {
          v14 = v10 == 9091897;
          v10 = 3516103;
          if (v14)
          {
            v7 = -851061265;
          }
        }
      }

      if (v10 <= 3516031)
      {
        break;
      }

      v11 = (QuickCodec::mask != -70947757) | v9;
      if (v10 == 3516049)
      {
        v12 = v8;
      }

      else
      {
        v12 = v10;
      }

      if (v10 == 3516049)
      {
        LODWORD(v13) = v11;
      }

      v14 = v10 == 3516032;
      if (v10 == 3516032)
      {
        v10 = 589822;
      }

      else
      {
        v10 = v12;
      }

      if (v14)
      {
        v9 = 0;
      }

      else
      {
        v9 = v13;
      }
    }

    if (v10 != 589822)
    {
      break;
    }

    v10 = 589876;
    if ((v9 & 1) == 0)
    {
      v10 = 4105837;
    }
  }

  if (v9)
  {
    ++QuickCodec::mask;
  }

  return Madusa::PhaseDeviation::Execute(a1, a2, a3, a4, a5);
}

void Madusa::PhaseDeviation::_Execute_Alt()
{
  v1.i16[3] = v0[3];
  v1.i16[2] = *v0 | 0xFFE0;
  v1.i16[1] = v1.u8[6];
  v1.i16[0] = v1.i16[2];
  v2.i64[0] = 0xFF000000FFLL;
  v2.i64[1] = 0xFF000000FFLL;
  v3 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v1), v2), xmmword_100040430));
  v4.i32[0] = vmovn_s32(vcgtq_f32(xmmword_100040440, v3)).u32[0];
  v4.i32[1] = vmovn_s32(vcgtq_f32(v3, xmmword_100040440)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v4, 0xFuLL))) & ((v0[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }
}

uint64_t Madusa::PhaseDeviation::FindTranslationCandidates1D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  func = __find_func(0xCFBF9FBFC0A02080, 553934954);
  v7 = func(a1, a2, a1 + 3760, a1 + 4272);
  Madusa::PhaseDeviation::FindHighest1DTranslations(v7, a1 + 3760, (a1 + 1344));
  Madusa::PhaseDeviation::FindHighest1DTranslations(v8, a1 + 4272, (a1 + 1368));
  v9 = __find_func(0xCFBF7F5F60A0C040, 553943178);

  return v9(a1, a1 + 1344, a1 + 1368, a3);
}

void Madusa::PhaseDeviation::FindHighest1DTranslations(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  do
  {
    v8 = *(4 * v3 + a2);
    if (v8 > v4)
    {
      LODWORD(v6) = v5;
      if (v5 >= 1)
      {
        v6 = 0;
        v9 = v23;
        while (v8 <= *(v9 + 1))
        {
          ++v6;
          v9 = (v9 + 8);
          if (v5 == v6)
          {
            LODWORD(v6) = v5;
            break;
          }
        }
      }

      if (v5 >= 13)
      {
        v10 = 13;
      }

      else
      {
        v10 = v5;
      }

      if (v10 < v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v6;
        v11 = v10 + 1;
        v12 = v23 + v10;
        do
        {
          v12[1] = *v12;
          --v11;
          --v12;
        }

        while (v11 > v6);
        v8 = *(a2 + 4 * v3);
      }

      if (v5 < 15)
      {
        ++v5;
      }

      v7 = v23 + 2 * v6;
      *v7 = v3;
      v7[1] = v8;
      v4 = HIDWORD(v24);
    }

    ++v3;
  }

  while (v3 != 128);
  *a3 = *&v23[0];
  v13 = 1;
  v14 = 1;
  do
  {
    if (v14 <= 0)
    {
      *&a3[2 * v14] = *(v23 + v13);
      goto LABEL_22;
    }

    v15 = *(v23 + 2 * v13);
    v16 = 1;
    v17 = a3;
    LOBYTE(v18) = 1;
    do
    {
      v19 = *v17;
      v17 += 2;
      v20 = v15 - v19;
      if (v15 - v19 < 0)
      {
        v20 = -v20;
      }

      v21 = v20 - 4;
      v18 = (v21 < 0x79) & v18;
    }

    while (v21 <= 0x78 && v16++ < v14);
    if (!v18)
    {
      goto LABEL_23;
    }

    *&a3[2 * v14] = *(v23 + v13);
    if (v14 != 1)
    {
      break;
    }

LABEL_22:
    ++v14;
LABEL_23:
    ++v13;
  }

  while (v13 != 15);
}

uint64_t Madusa::PhaseDeviation::_FindTranslationCandidates1D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::PhaseDeviation::FindTranslationCandidates1D(a1, a2, a3);
    }

LABEL_7:
    QuickCodec::mask = v4 + 1;
    return Madusa::PhaseDeviation::FindTranslationCandidates1D(a1, a2, a3);
  }

  v6 = 3941217 * v3[3];
  v4 = QuickCodec::mask;
  if ((~(~(v6 & 0x31CC4C44) & (v6 | 0x31CC4C44) & 0x10010) & (~(v6 & 0x31CC4C44) & (v6 | 0x31CC4C44) | 0x10010)) == (v6 ^ 0x31CD4C54 | v6 & 0x31CD4C54) - (v6 + 835538004) + ~(v6 ^ 0x31CD4C54 | ~(v6 | 0x31CD4C54)) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::PhaseDeviation::FindTranslationCandidates1D(a1, a2, a3);
}

_DWORD *Madusa::PhaseDeviation::Search1DAngles(_DWORD *result, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = 28;
  v5 = result + 168;
  do
  {
    v5[28] = *a2 - a2[1];
    v6 = *a2;
    v7 = a2[1];
    a2 += 2;
    *v5++ = v7 + v6;
    --v4;
  }

  while (v4);
  do
  {
    v8 = 1835008;
    v9 = 28;
    v10 = result + 168;
    v11 = result + 224;
    do
    {
      v8 = ((*v10 << 16) >> 31) + v8 - (*v10 ^ ((*v10 << 16) >> 31));
      v12 = *v11;
      v11 += 2;
      *v10++ += v12;
      --v9;
    }

    while (v9);
    *(a3 + 4 * v4++) = v8;
  }

  while (v4 != 128);
  for (i = 0; i != 128; ++i)
  {
    v14 = 1835008;
    v15 = 28;
    v16 = result + 196;
    v17 = result + 280;
    do
    {
      v14 = ((*v16 << 16) >> 31) + v14 - (*v16 ^ ((*v16 << 16) >> 31));
      v18 = *v17;
      v17 += 2;
      *v16++ += v18;
      --v15;
    }

    while (v15);
    *(a4 + 4 * i) = v14;
  }

  return result;
}

_DWORD *Madusa::PhaseDeviation::_Search1DAngles(_DWORD *result, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 8597108;
  }

  else
  {
    v7 = 95910;
  }

  v8 = 1;
  v9 = 6723923;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v12 = v8;
        if (v9 <= 6723993)
        {
          break;
        }

        if (v9 == 6723994)
        {
          if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 95910, v5[3] != ((QuickCodec::mask ^ v6) / 0x163C4A)))
          {
            v9 = 95964;
            v8 = v12;
          }
        }

        else if (v9 == 6819816)
        {
          v5 = v4;
          v9 = 6723940;
        }

        else
        {
          v13 = v9 == 8597108;
          v9 = 6723994;
          if (v13)
          {
            v6 = -374570725;
          }
        }
      }

      if (v9 <= 6723922)
      {
        break;
      }

      v10 = (QuickCodec::mask != -70947757) | v8;
      if (v9 == 6723940)
      {
        v11 = v7;
      }

      else
      {
        v11 = v9;
      }

      if (v9 == 6723940)
      {
        LODWORD(v12) = v10;
      }

      v13 = v9 == 6723923;
      if (v9 == 6723923)
      {
        v9 = 95910;
      }

      else
      {
        v9 = v11;
      }

      if (v13)
      {
        v8 = 0;
      }

      else
      {
        v8 = v12;
      }
    }

    if (v9 != 95910)
    {
      break;
    }

    v9 = 95964;
    if ((v8 & 1) == 0)
    {
      v9 = 6819816;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  return Madusa::PhaseDeviation::Search1DAngles(result, a2, a3, a4);
}

void Madusa::PhaseDeviation::Make1DPhaseDeviationCombinations(uint64_t a1, int *a2, int *a3, _DWORD *a4)
{
  v4 = *a3;
  v5 = *a2;
  v6 = *a3 + 128;
  a4[2] = *a2;
  a4[3] = v4;
  a4[4] = v5;
  a4[5] = v6;
  a4[6] = v5 + 128;
  a4[7] = v4;
  a4[8] = v5 + 128;
  a4[9] = v6;
  v7 = a2[2];
  a4[10] = v7;
  a4[11] = v4;
  a4[12] = v7;
  a4[13] = v6;
  a4[14] = v7 + 128;
  a4[15] = v4;
  a4[16] = v7 + 128;
  a4[17] = v6;
  v8 = a2[4];
  a4[18] = v8;
  a4[19] = v4;
  a4[20] = v8;
  a4[21] = v6;
  a4[22] = v8 + 128;
  a4[23] = v4;
  a4[24] = v8 + 128;
  a4[25] = v6;
  v9 = a3[2];
  a4[26] = v5;
  a4[27] = v9;
  a4[28] = v5;
  a4[29] = v9 + 128;
  a4[30] = v5 + 128;
  a4[31] = v9;
  a4[32] = v5 + 128;
  a4[33] = v9 + 128;
  a4[34] = v7;
  a4[35] = v9;
  a4[36] = v7;
  a4[37] = v9 + 128;
  a4[38] = v7 + 128;
  a4[39] = v9;
  a4[40] = v7 + 128;
  a4[41] = v9 + 128;
  a4[42] = v8;
  a4[43] = v9;
  a4[44] = v8;
  a4[45] = v9 + 128;
  a4[46] = v8 + 128;
  a4[47] = v9;
  a4[48] = v8 + 128;
  a4[49] = v9 + 128;
  v10 = a3[4];
  v11 = *a2;
  a4[50] = *a2;
  a4[51] = v10;
  a4[52] = v11;
  a4[53] = v10 + 128;
  v11 += 128;
  a4[54] = v11;
  a4[55] = v10;
  a4[56] = v11;
  a4[57] = v10 + 128;
  v12 = a2[2];
  a4[58] = v12;
  a4[59] = v10;
  a4[60] = v12;
  a4[61] = v10 + 128;
  v12 += 128;
  a4[62] = v12;
  a4[63] = v10;
  a4[64] = v12;
  a4[65] = v10 + 128;
  v13 = a2[4];
  a4[66] = v13;
  a4[67] = v10;
  a4[68] = v13;
  a4[69] = v10 + 128;
  v13 += 128;
  a4[70] = v13;
  a4[71] = v10;
  a4[72] = v13;
  a4[73] = v10 + 128;
}

void Madusa::PhaseDeviation::_Make1DPhaseDeviationCombinations(uint64_t a1, int *a2, int *a3, _DWORD *a4)
{
  if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu)
  {
    v5 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v5 + 1;
    }
  }

  else
  {
    v5 = QuickCodec::mask;
    if (v4[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  Madusa::PhaseDeviation::Make1DPhaseDeviationCombinations(a1, a2, a3, a4);
}

float32x2_t Madusa::PhaseDeviation::TranslationCorrection(uint64_t a1, float32x2_t *a2)
{
  v2 = a2[6];
  v3 = a2[7];
  v4 = vmul_f32(vrev64_s32(v3), v2);
  v5 = vsub_f32(v4, vdup_lane_s32(v4, 1)).f32[0];
  if (v5 == 0.0)
  {
    v6 = vzip1_s32(v3, v2);
    v7 = vzip2_s32(v3, v2);
  }

  else
  {
    v8 = 1.0 / v5;
    v9.f32[0] = -v8;
    v9.f32[1] = v8;
    v6 = vmul_f32(v9, v3);
    v7 = vmul_f32(v2, vrev64_s32(v9));
  }

  result = vadd_f32(a2[1], vrev64_s32(vmul_f32(vadd_f32(v7, v6), vdup_n_s32(0x42800000u))));
  a2[1] = result;
  return result;
}

float32x2_t Madusa::PhaseDeviation::_TranslationCorrection(uint64_t a1, float32x2_t *a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 10299084;
  }

  else
  {
    v5 = 1582599;
  }

  v6 = 1;
  v7 = 1272272;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        if (v7 > 1582598)
        {
          break;
        }

        if (v7 == 1272272)
        {
          v6 = 0;
          v7 = 1582599;
        }

        else if (v7 == 1272289)
        {
          v6 = (QuickCodec::mask != -70947757) | v6;
          v7 = v5;
        }

        else if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 1582599, v3[3] != ((QuickCodec::mask ^ v4) / 0x47EEB5)))
        {
          v7 = 1582653;
          v6 = v8;
        }
      }

      if (v7 <= 2854853)
      {
        break;
      }

      if (v7 == 2854854)
      {
        v3 = v2;
        v7 = 1272289;
      }

      else
      {
        v9 = v7 == 10299084;
        v7 = 1272343;
        if (v9)
        {
          v4 = -1068187209;
        }
      }
    }

    if (v7 != 1582599)
    {
      break;
    }

    v7 = 1582653;
    if ((v6 & 1) == 0)
    {
      v7 = 2854854;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::PhaseDeviation::TranslationCorrection(1272289, a2);
}

uint64_t Madusa::PhaseDeviation::GetPhaseInformation(uint64_t this, int a2, int *a3, int *a4, int *a5)
{
  v5 = (this + 4 * a2);
  *a3 = v5[224];
  *a4 = v5[280];
  *a5 = *v5 - v5[56];
  return this;
}

uint64_t Madusa::PhaseDeviation::_GetPhaseInformation(uint64_t this, int a2, int *a3, int *a4, int *a5, int *a6)
{
  v7.i16[3] = v6[3];
  v7.i16[2] = *v6 | 0xFFE0;
  v7.i16[1] = v7.u8[6];
  v7.i16[0] = v7.i16[2];
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v7), v8), xmmword_100040450));
  v10.i32[0] = vmovn_s32(vcgtq_f32(xmmword_100040460, v9)).u32[0];
  v10.i32[1] = vmovn_s32(vcgtq_f32(v9, xmmword_100040460)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v10, 0xFuLL))) & ((v6[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::PhaseDeviation::GetPhaseInformation(this, a2, a3, a4, a5);
}

void Madusa::PhaseDeviation::AddFlipTranslationCases(uint64_t a1, int *a2)
{
  v2 = a2 + 298;
  v3 = a2 + 150;
  v4 = *a2;
  v5 = 36;
  do
  {
    v6 = v3[1];
    *v2 = *(v3 - 148);
    v2[1] = v6;
    v2 += 2;
    v7 = *(a2 + 5);
    *(a2 + 1188) = 1;
    *(a2 + 1189) = v7;
    v3 += 2;
    --v5;
  }

  while (v5);
  a2[296] = v4;
  v8 = a2 + 76;
  v9 = a2 + 372;
  v10 = a2 + 224;
  v11 = a2[74];
  v12 = 36;
  do
  {
    v13 = *v8;
    v8 += 2;
    v14 = v10[1];
    *v9 = v13;
    v9[1] = v14;
    v9 += 2;
    v15 = *(a2 + 301);
    *(a2 + 1484) = 1;
    *(a2 + 1485) = v15;
    v10 += 2;
    --v12;
  }

  while (v12);
  a2[370] = v11;
  v16 = a2 + 150;
  v17 = a2 + 446;
  v18 = a2[148];
  v19 = a2 + 2;
  v20 = 36;
  do
  {
    v21 = *v16;
    v16 += 2;
    v22 = v19[1];
    *v17 = v21;
    v17[1] = v22;
    v17 += 2;
    v23 = *(a2 + 597);
    *(a2 + 1780) = 1;
    *(a2 + 1781) = v23;
    v19 += 2;
    --v20;
  }

  while (v20);
  a2[444] = v18;
  v24 = a2 + 224;
  v25 = a2 + 520;
  v26 = a2 + 76;
  v27 = a2[222];
  v28 = 36;
  do
  {
    v29 = *v24;
    v24 += 2;
    v30 = v26[1];
    *v25 = v29;
    v25[1] = v30;
    v25 += 2;
    v31 = *(a2 + 893);
    *(a2 + 2076) = 1;
    *(a2 + 2077) = v31;
    v26 += 2;
    --v28;
  }

  while (v28);
  a2[518] = v27;
}

void Madusa::PhaseDeviation::_AddFlipTranslationCases(uint64_t a1, int *a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_100040470));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_100040480, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_100040480)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::PhaseDeviation::AddFlipTranslationCases(a1, a2);
}

uint64_t Madusa::Token::GetNextToken(unsigned int *a1, uint64_t a2)
{
  v5 = *a1 + 1;
  *a1 = v5;
  if (v5 >= 0x400)
  {
    v6 = a1[1] + 1;
    *a1 = 1;
    a1[1] = v6;
  }

  a1[2] = 0;
  func = __find_func(0xBF1FBFFFC0C0C020, 1369718826);
  func(a1, a2);
  v8 = __find_func(0xFF7F9F1FC0000080, 298082506);
  v8(a1, *a1);
  v9 = __find_func(0xCFBF9FDF60400020, 553934858);
  v9(a1);
  v10 = __find_func(0x1F3F7FDF60C000C0, -242974710);
  v10(a1);
  v11 = 0;
  v12 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v13 = 1093901;
  }

  else
  {
    v13 = 24650;
  }

  v14 = 1;
  v15 = 376218;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v18 = v14;
        if (v15 <= 376288)
        {
          break;
        }

        if (v15 == 376289)
        {
          if ((*v11 & 0x1F) != 0 || v11[2] > 0x3Fu || (v14 = 1, v15 = 24650, v11[3] != ((QuickCodec::mask ^ v12) / 0x7665)))
          {
            v15 = 24704;
            v14 = v18;
          }
        }

        else if (v15 == 400851)
        {
          v11 = v2;
          v15 = 376235;
        }

        else
        {
          v19 = v15 == 1093901;
          v15 = 376289;
          if (v19)
          {
            v12 = -72914953;
          }
        }
      }

      if (v15 <= 376217)
      {
        break;
      }

      v16 = (QuickCodec::mask != -70947757) | v14;
      if (v15 == 376235)
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      if (v15 == 376235)
      {
        LODWORD(v18) = v16;
      }

      v19 = v15 == 376218;
      if (v15 == 376218)
      {
        v15 = 24650;
      }

      else
      {
        v15 = v17;
      }

      if (v19)
      {
        v14 = 0;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v15 != 24650)
    {
      break;
    }

    if (v14)
    {
      v15 = 24704;
    }

    else
    {
      v15 = 400851;
    }
  }

  if (v14)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v20 = __find_func(0xDF9FDF1FC0E04070, 824451274);
    v21 = 600;
    while (*v20 != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || v20[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || v20[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || v20[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
    {
      v20 += 4;
      if (!--v21)
      {
        goto LABEL_42;
      }
    }

    vars0 = v20;
    vars8 = 0u;
LABEL_42:
    QuickCodec::mask += 16;
  }

  return a1[2];
}

uint64_t Madusa::Token::_GetNextToken(unsigned int *a1, uint64_t a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::Token::GetNextToken(a1, a2);
}

uint64_t Madusa::Token::GetCurrentToken(Madusa::Token *this)
{
  if ((*v1 & 0x1F) != 0 || v1[2] > 0x3Fu)
  {
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
      func = __find_func(0xBFBF1F1FC0C00040, 1359274186);
      func(0, 104);
    }
  }

  else if (v1[3] == 212 || QuickCodec::mask != -70947757)
  {
    goto LABEL_10;
  }

  return *(this + 2);
}

uint64_t Madusa::Token::_GetCurrentToken(Madusa::Token *this, const Madusa::Token *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::Token::GetCurrentToken(this);
}

uint64_t Madusa::Token::ExtractFunctionID(Madusa::Token *this, int a2)
{
  v4 = *(this + 2);
  *(this + 2) = a2;
  func = __find_func(0x7F7F3F7F6080E020, -1849376598);
  func(this);
  v6 = __find_func(0xEFFFDF7F4080E040, 21242026);
  result = v6(this);
  v8 = 0;
  v9 = 0;
  v10 = QuickCodec::mask;
  v11 = QuickCodec::mask == -70947757;
  *(this + 2) = v4;
  if (v11)
  {
    v12 = 14088433;
  }

  else
  {
    v12 = 8873502;
  }

  v13 = 1;
  v14 = 3649289;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v15 = v13;
        if (v14 > 8873501)
        {
          break;
        }

        if (v14 == 3649289)
        {
          v13 = 0;
          v14 = 8873502;
        }

        else if (v14 == 3649306)
        {
          v13 = (v10 != -70947757) | v13;
          v14 = v12;
        }

        else if ((*v8 & 0x1F) != 0 || v8[2] > 0x3Fu || (v13 = 1, v14 = 8873502, v8[3] != ((v10 ^ v9) / 0x9B6358)))
        {
          v14 = 8873556;
          v13 = v15;
        }
      }

      if (v14 <= 12522773)
      {
        break;
      }

      if (v14 == 12522774)
      {
        v8 = v2;
        v14 = 3649306;
      }

      else
      {
        v11 = v14 == 14088433;
        v14 = 3649360;
        if (v11)
        {
          v9 = 2070620339;
        }
      }
    }

    if (v14 != 8873502)
    {
      break;
    }

    v14 = 8873556;
    if ((v13 & 1) == 0)
    {
      v14 = 12522774;
    }
  }

  if (v13)
  {
    v16 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v17 = &unk_10003FCF4;
    v18 = -2;
    v19 = -1;
    do
    {
      qword_100074968[v19 + 1 + ((*(v17 - 1) ^ v16) / 0x9D28AF)] = qword_100074968[v19 + ((*v17 ^ v16) / 0x9D28AF)];
      v17 += 2;
      v18 += 2;
      v19 -= 2;
    }

    while (v18 < 0x20);
  }

  return result;
}

uint64_t Madusa::Token::_ExtractFunctionID(Madusa::Token *this, int a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 7172575;
  }

  else
  {
    v5 = 2948713;
  }

  v6 = 1;
  v7 = 2709614;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        if (v7 > 2948712)
        {
          break;
        }

        if (v7 == 2709614)
        {
          v6 = 0;
          v7 = 2948713;
        }

        else if (v7 == 2709631)
        {
          v6 = (QuickCodec::mask != -70947757) | v6;
          v7 = v5;
        }

        else if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 2948713, v3[3] != ((QuickCodec::mask ^ v4) / 0x4E72EE)))
        {
          v7 = 2948767;
          v6 = v8;
        }
      }

      if (v7 <= 5658309)
      {
        break;
      }

      if (v7 == 5658310)
      {
        v3 = v2;
        v7 = 2709631;
      }

      else
      {
        v9 = v7 == 7172575;
        v7 = 2709685;
        if (v9)
        {
          v4 = -1154334389;
        }
      }
    }

    if (v7 != 2948713)
    {
      break;
    }

    v7 = 2948767;
    if ((v6 & 1) == 0)
    {
      v7 = 5658310;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Token::ExtractFunctionID(this, a2);
}

uint64_t Madusa::Token::GetCurrentTokenFunctionID(Madusa::Token *this)
{
  v3.i16[0] = *v1 | 0xFFE0;
  v3.i16[1] = v1[3];
  v3.i32[1] = v3.i32[0];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_100040490));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_1000404A0, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_1000404A0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) == 0 && QuickCodec::mask == -70947757)
  {
    return *(this + 2) >> 17;
  }

  QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
  fegetenv(&v8);
  v8.__fpcr &= QuickCodec::mask + 70947740;
  fesetenv(&v8);
  return *(this + 2) >> 17;
}

uint64_t Madusa::Token::_GetCurrentTokenFunctionID(Madusa::Token *this, const Madusa::Token *a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 11558839;
  }

  else
  {
    v5 = 7222385;
  }

  v6 = 1;
  v7 = 4112024;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        if (v7 > 7222384)
        {
          break;
        }

        if (v7 == 4112024)
        {
          v6 = 0;
          v7 = 7222385;
        }

        else if (v7 == 4112041)
        {
          v6 = (QuickCodec::mask != -70947757) | v6;
          v7 = v5;
        }

        else if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 7222385, v3[3] != ((QuickCodec::mask ^ v4) / 0x86FBC3)))
        {
          v7 = 7222439;
          v6 = v8;
        }
      }

      if (v7 <= 11334391)
      {
        break;
      }

      if (v7 == 11334392)
      {
        v3 = v2;
        v7 = 4112041;
      }

      else
      {
        v9 = v7 == 11558839;
        v7 = 4112095;
        if (v9)
        {
          v4 = -1811082961;
        }
      }
    }

    if (v7 != 7222385)
    {
      break;
    }

    v7 = 7222439;
    if ((v6 & 1) == 0)
    {
      v7 = 11334392;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Token::GetCurrentTokenFunctionID(this);
}

uint64_t Madusa::Token::GetCurrentTokenCounter(Madusa::Token *this)
{
  v2 = *(this + 2);
  if ((*v1 & 0x1F) != 0 || v1[2] > 0x3Fu)
  {
    if (QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }

    return (32 * (*(this + 2) & 0x1F)) | (*(this + 2) >> 12) & 0x1Fu;
  }

  if (v1[3] != 212 && QuickCodec::mask == -70947757)
  {
    return (32 * (*(this + 2) & 0x1F)) | (*(this + 2) >> 12) & 0x1Fu;
  }

LABEL_10:
  QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
  func = __find_func(0xDF9FDF1FC0E04070, 824451274);
  v6 = 600;
  while (*func != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || func[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || func[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || func[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
  {
    func += 4;
    if (!--v6)
    {
      goto LABEL_17;
    }
  }

  vars0 = func;
  vars8 = 0u;
LABEL_17:
  QuickCodec::mask += 16;
  return (32 * (v2 & 0x1F)) | (v2 >> 12) & 0x1F;
}

uint64_t Madusa::Token::_GetCurrentTokenCounter(Madusa::Token *this, const Madusa::Token *a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_1000404B0));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_1000404C0, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_1000404C0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Token::GetCurrentTokenCounter(this);
}

uint64_t Madusa::Token::GetScrambleFunction(Madusa::Token *this)
{
  v3.i16[0] = *v1 | 0xFFE0;
  v3.i16[1] = v1[3];
  v3.i32[1] = v3.i32[0];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_1000404D0));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_1000404E0, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_1000404E0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) == 0 && QuickCodec::mask == -70947757)
  {
    return (*(this + 2) >> 5) & 0x7F;
  }

  QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
  func = __find_func(0xBFBF1F1FC0C00040, 1359274186);
  func(0, 104);
  return (*(this + 2) >> 5) & 0x7F;
}

uint64_t Madusa::Token::_GetScrambleFunction(Madusa::Token *this, const Madusa::Token *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::Token::GetScrambleFunction(this);
    }

LABEL_7:
    QuickCodec::mask = v3 + 1;
    return Madusa::Token::GetScrambleFunction(this);
  }

  v5 = 3173313 * v2[3];
  v3 = QuickCodec::mask;
  if (v5 - (v5 ^ 0x28193BD4 | v5 & 0x28193BD4) + (v5 ^ 0x28193BD4 | ~(v5 | 0x28193BD4)) + 672742356 == (~(~(~(v5 | 0x28001844) | v5 & 0x28001844) | 0x192390) | ~(~(v5 | 0x28001844) | v5 & 0x28001844) & 0x192390) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::Token::GetScrambleFunction(this);
}

uint64_t Madusa::Token::ApplyKeyToCurrentToken(Madusa::Token *this)
{
  func = __find_func(0xBF9F9FBF00E0E060, 1361338474);
  v3 = func(this);
  v4 = __find_func(0x2F1F5F5F004080A0, -1046175606);
  v5 = v4(this);
  v6 = __find_func(0xBF7FFF7F40804090, 1371799722);
  v6(this, ((v3 << 8) | (2 * v3)) ^ v5);
  v7 = __find_func(0x8FFF5F5F8020C080, 1631887498);
  v8 = v7(this);
  v9 = __find_func(0xF9FBFFF80C0A030, -517717974);

  return v9(this, v8 ^ (v3 & 7 | (8 * v3)));
}

uint64_t Madusa::Token::_ApplyKeyToCurrentToken(Madusa::Token *this, Madusa::Token *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::Token::ApplyKeyToCurrentToken(this);
}

uint64_t Madusa::Token::_AssignFunctionIDToCurrentToken(uint64_t this, unsigned __int16 a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::Token::AssignFunctionIDToCurrentToken(this, a2);
}

uint64_t Madusa::Token::_AssignCounterToCurrentToken(uint64_t this, unsigned int a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_1000404F0));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_100040500, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_100040500)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Token::AssignCounterToCurrentToken(this, a2);
}

uint64_t Madusa::Token::AssignScrambleFunctionToCurrentToken(Madusa::Token *this)
{
  result = Madusa::RandomNumGenerator::GetNextNumber((this + 16));
  if ((result & 0x7F) != 0)
  {
    v3 = 32 * (result & 0x7F);
  }

  else
  {
    v4 = (result & 0x3F80) == 0;
    v5 = result >> 7;
    v6 = result >> 14;
    if ((result & 0xFE00000) != 0)
    {
      v7 = 0;
    }

    else
    {
      v6 = result >> 21;
      v7 = result == 0;
    }

    if ((result & 0x1FC000) != 0)
    {
      v8 = 0;
    }

    else
    {
      v5 = v6;
      v8 = v7;
    }

    if ((result & 0x3F80) != 0)
    {
      v9 = result;
    }

    else
    {
      v9 = v5;
    }

    if ((result & 0x3F80) == 0)
    {
      v4 = v8;
    }

    v3 = (v9 >> 2) & 0xFE0;
    if (v4)
    {
      v3 = 3360;
    }
  }

  *(this + 2) = *(this + 2) & 0xFFFFF01F | v3;
  return result;
}

uint64_t Madusa::Token::_AssignScrambleFunctionToCurrentToken(Madusa::Token *this, Madusa::Token *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::Token::AssignScrambleFunctionToCurrentToken(this);
}

void *Madusa::BandModeImageParamsValidator::BandModeImageParamsValidator(Madusa::BandModeImageParamsValidator *this, const _t_zn_IMAGEPARAMS *a2, const Madusa::Session *a3)
{
  result = Madusa::ImageParamsValidator::ImageParamsValidator(this, a2, a3);
  *result = off_100070750;
  return result;
}

uint64_t Madusa::BandModeImageParamsValidator::ModeSpecificParametersAreValid(Madusa::BandModeImageParamsValidator *this)
{
  result = Madusa::ImageParamsValidator::DataAccessFormatIsWhole(this);
  if (result)
  {
    result = Madusa::ImageParamsValidator::ImageDataPointersArePresentAndFrontLoaded(this);
    if (result)
    {
      result = (*(*this + 32))(this);
      if (result)
      {
        v3 = *(*(this + 2) + 4640);
        if (v3 - 2 < 2)
        {
          v4 = *(*(this + 1) + 180);
        }

        else
        {
          if (v3 > 1)
          {
            return 0;
          }

          v4 = *(*(this + 1) + 176);
        }

        return v4 == 0;
      }
    }
  }

  return result;
}

uint64_t Madusa::BandModeImageParamsValidator::ModeSpecificParametersShouldCauseSilentNoDetection(Madusa::BandModeImageParamsValidator *this)
{
  v2 = *(this + 1);
  if (*(*(this + 2) + 4640) > 1u)
  {
    v3 = v2[2];
    v4 = v2[4];
  }

  else
  {
    v3 = v2[1];
    v4 = v2[3];
  }

  DimensionInInches = Madusa::ImageParamsValidator::GetDimensionInInches(this, v3, v4);
  v6 = *(this + 2);
  v7 = 4652;
  if (*(v6 + 4640) < 2u)
  {
    v7 = 4656;
  }

  v8 = 4648;
  if (*(v6 + 4640) < 2u)
  {
    v8 = 4644;
  }

  v9 = Madusa::ImageParamsValidator::GetDimensionInInches(this, *(v6 + v8), *(v6 + v7));
  return (Madusa::ImageParamsValidator::ApproximateBufferSizeOverflows(this) || DimensionInInches > 22.0 || DimensionInInches < 0.5) | (v9 < 0.5);
}

void Madusa::PhaseEstimation::EstimatePhaseAtPoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 < -64 || v3 > 62 || (v4 = *(a2 + 4), v4 > 0x3F))
  {
    *(a3 + 5) = 0;
    *a3 = 0;
  }

  else
  {
    v5 = v3 + 64;
    v91 = v3 + 64;
    *(a3 + 12) = 1;
    v6 = vcvts_n_s32_f32(*(a2 + 12), 6uLL);
    v7 = vcvts_n_s32_f32(*(a2 + 8), 6uLL);
    if (v7 >= 63)
    {
      v7 = 63;
    }

    v8 = v7 & ~(v7 >> 31);
    if (v6 >= 63)
    {
      v6 = 63;
    }

    v9 = 4 * v8;
    v10 = 4 * (v6 & ~(v6 >> 31));
    v11 = a1 + 8;
    v12 = a1 + 33296;
    v13 = a1 + 66584;
    v14 = *(&unk_100040520 + v10);
    v15 = *(a2 + 24);
    v16 = *(&unk_100040720 + v10);
    v17 = v4 << 7;
    v18 = *(&unk_100040520 + v9);
    v19 = v5 + (v4 << 7);
    v20 = *(&unk_100040720 + v9);
    v21 = 4 * v19;
    v22 = *(v21 + a1 + 8);
    v23 = *(v21 + a1 + 33296);
    v24 = fabsf(v23);
    v25 = -v24;
    if (v22 < 0.0)
    {
      v25 = v24;
    }

    v26 = v25 + v22;
    v27 = -v22;
    if (v22 >= 0.0)
    {
      v27 = *(v21 + a1 + 8);
    }

    v28 = v24 + v27;
    v29 = 2.3562;
    if (v22 >= 0.0)
    {
      v29 = 0.7854;
    }

    v30 = v29 - ((v26 * 0.7854) / v28);
    if (v23 < 0.0)
    {
      v30 = -v30;
    }

    v47 = v22 < 0.0;
    v31 = 3.1416;
    if (!v47)
    {
      v31 = 0.0;
    }

    if (v23 != 0.0)
    {
      v31 = v30;
    }

    v32 = (v14 + v18) + (v31 * 0.15915);
    if (*(a2 + 24))
    {
      v32 = -v32;
    }

    v33 = (v16 * v20) * *(v21 + v13);
    v35 = __sincosf_stret(v32 * 6.2832);
    v36 = v35.__cosval * v33;
    v37 = v35.__sinval * v33;
    v38 = *(&unk_100040520 + v9 + 256);
    v39 = v14 + v38;
    v40 = *(&unk_100040720 + v9 + 256);
    v41 = 4 * (v19 + 1);
    v42 = *(v41 + v11);
    v43 = *(v41 + v12);
    v44 = 3.1416;
    if (v42 >= 0.0)
    {
      v44 = 0.0;
    }

    v45 = fabsf(v43);
    v46 = -v45;
    v47 = v42 < 0.0;
    if (v42 < 0.0)
    {
      v46 = v45;
    }

    v48 = v46 + v42;
    if (v42 < 0.0)
    {
      v42 = -v42;
    }

    v49 = v45 + v42;
    v50 = 2.3562;
    if (!v47)
    {
      v50 = 0.7854;
    }

    v51 = v50 - ((v48 * 0.7854) / v49);
    if (v43 < 0.0)
    {
      v51 = -v51;
    }

    if (v43 == 0.0)
    {
      v51 = v44;
    }

    v52 = v39 + (v51 * 0.15915);
    if (v15)
    {
      v52 = -v52;
    }

    v53 = (v16 * v40) * *(v41 + v13);
    v54 = __sincosf_stret(v52 * 6.2832);
    v55 = v36 + (v54.__cosval * v53);
    v56 = v37 + (v54.__sinval * v53);
    v57 = *(&unk_100040520 + v10 + 256);
    v58 = *(&unk_100040720 + v10 + 256);
    v59 = 4 * (v17 + v91 + 128);
    v60 = *(v59 + v11);
    v61 = *(v59 + v12);
    v62 = 3.1416;
    if (v60 >= 0.0)
    {
      v62 = 0.0;
    }

    v63 = fabsf(v61);
    v64 = -v63;
    v65 = v60 < 0.0;
    if (v60 < 0.0)
    {
      v64 = v63;
    }

    v66 = v64 + v60;
    if (v60 < 0.0)
    {
      v60 = -v60;
    }

    v67 = v63 + v60;
    v68 = 2.3562;
    if (!v65)
    {
      v68 = 0.7854;
    }

    v69 = v68 - ((v66 * 0.7854) / v67);
    if (v61 < 0.0)
    {
      v69 = -v69;
    }

    if (v61 == 0.0)
    {
      v69 = v62;
    }

    v70 = (v57 + v18) + (v69 * 0.15915);
    if (v15)
    {
      v70 = -v70;
    }

    v71 = (v58 * v20) * *(v59 + v13);
    v72 = __sincosf_stret(v70 * 6.2832);
    v73 = v55 + (v72.__cosval * v71);
    v74 = v56 + (v72.__sinval * v71);
    v75 = 4 * (v17 + v91 + 129);
    v76 = *(v75 + v11);
    v77 = *(v75 + v12);
    v78 = 3.1416;
    if (v76 >= 0.0)
    {
      v78 = 0.0;
    }

    v79 = fabsf(v77);
    v80 = -v79;
    v81 = v76 < 0.0;
    if (v76 < 0.0)
    {
      v80 = v79;
    }

    v82 = v80 + v76;
    if (v76 < 0.0)
    {
      v76 = -v76;
    }

    v83 = v79 + v76;
    v84 = 2.3562;
    if (!v81)
    {
      v84 = 0.7854;
    }

    v85 = v84 - ((v82 * 0.7854) / v83);
    if (v77 < 0.0)
    {
      v85 = -v85;
    }

    if (v77 == 0.0)
    {
      v85 = v78;
    }

    v86 = (v57 + v38) + (v85 * 0.15915);
    if (v15)
    {
      v86 = -v86;
    }

    v87 = (v58 * v40) * *(v75 + v13);
    v88 = __sincosf_stret(v86 * 6.2832);
    v89 = v73 + (v88.__cosval * v87);
    v90 = v74 + (v88.__sinval * v87);
    *a3 = v89;
    *(a3 + 4) = v90;
    *(a3 + 8) = atan2f(v90, v89) * 0.15915;
  }
}

void Madusa::PhaseEstimation::Execute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 + 32;
  func = __find_func(0x9F3F9FFF20C0A0E0, 1904500778);
  func(a3, a1);
  v8 = 56;
  do
  {
    Madusa::PhaseEstimation::EstimatePhaseAtPoint(a2, a1, v6);
    a1 += 28;
    v6 += 16;
    --v8;
  }

  while (v8);
}

void Madusa::PhaseEstimation::_Execute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v6 = 6798182;
  }

  else
  {
    v6 = 2778956;
  }

  v7 = 1;
  v8 = 804650;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v9 = v7;
        if (v8 > 2778955)
        {
          break;
        }

        if (v8 == 804650)
        {
          v7 = 0;
          v8 = 2778956;
        }

        else if (v8 == 804667)
        {
          v7 = (QuickCodec::mask != -70947757) | v7;
          v8 = v6;
        }

        else if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || (v7 = 1, v8 = 2778956, v4[3] != ((QuickCodec::mask ^ v5) / 0x74A1D3)))
        {
          v8 = 2779010;
          v7 = v9;
        }
      }

      if (v8 <= 3583588)
      {
        break;
      }

      if (v8 == 3583589)
      {
        v4 = v3;
        v8 = 804667;
      }

      else
      {
        v10 = v8 == 6798182;
        v8 = 804721;
        if (v10)
        {
          v5 = -1689030929;
        }
      }
    }

    if (v8 != 2778956)
    {
      break;
    }

    v8 = 2779010;
    if ((v7 & 1) == 0)
    {
      v8 = 3583589;
    }
  }

  if (v7)
  {
    ++QuickCodec::mask;
  }

  Madusa::PhaseEstimation::Execute(a1, a2, a3);
}

void Madusa::PhaseEstimation::_Execute_Alt(uint64_t a1, uint64_t a2, float *a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      goto LABEL_5;
    }

LABEL_7:
    QuickCodec::mask = v4 + 1;
    goto LABEL_5;
  }

  v5 = 938547 * v3[3];
  v4 = QuickCodec::mask;
  if (v5 - (v5 ^ 0xBDC123C | v5 & 0xBDC123C) + (v5 ^ 0xBDC123C | ~(v5 | 0xBDC123C)) + 198971964 == (~(~(~(v5 | 0xB801204) | v5 & 0xB801204) | 0x5C0038) | ~(~(v5 | 0xB801204) | v5 & 0xB801204) & 0x5C0038) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

LABEL_5:
  Madusa::PhaseEstimation::Execute_Alt(a1, a2, a3);
}

void Madusa::PhaseEstimation::Execute_Alt(uint64_t a1, uint64_t a2, float *a3)
{
  v4 = a1;
  v5 = 0;
  v6 = v11;
  do
  {
    v6[12] = 1;
    v6[28] = 1;
    v7 = vmulq_n_f32(xmmword_100040510, v5);
    *(v6 + 2) = v7.i32[2];
    *v6 = v7.i64[0];
    v8 = vmulq_n_f32(xmmword_100040510, (v5 + 1));
    *(v6 + 6) = v8.i32[2];
    *(v6 + 2) = v8.i64[0];
    v5 += 2;
    v6 += 32;
  }

  while (v5 != 56);
  v9 = v11;
  Madusa::RefineCandidates::TransformRefSignalCoords(a3, a1);
  v10 = 56;
  do
  {
    Madusa::PhaseEstimation::EstimatePhaseAtPoint(a2, v4, v9);
    v4 += 28;
    v9 += 16;
    --v10;
  }

  while (v10);
}

Madusa::SigComboBoost *Madusa::SigComboBoost::SigComboBoost(Madusa::SigComboBoost *this)
{
  v2 = this + 42600;
  v3 = this + 33092;
  *this = off_100070788;
  Madusa::Decode::Decode(this + 1, this + 48);
  *(this + 6) = off_1000707C0;
  *(this + 7) = off_100070818;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 2252) = 0u;
  *(this + 3352) = 0u;
  *(this + 4452) = 0u;
  *(this + 347) = 0u;
  *(this + 6652) = 0u;
  *(this + 7752) = 0u;
  *(this + 8852) = 0u;
  *(this + 11052) = 0u;
  *(this + 12152) = 0u;
  *(this + 13252) = 0u;
  *(this + 622) = 0u;
  *(this + 897) = 0u;
  *(this + 15452) = 0u;
  *(this + 16552) = 0u;
  *(this + 17652) = 0u;
  *(this + 1172) = 0u;
  *(this + 19852) = 0u;
  *(this + 20952) = 0u;
  *(this + 22052) = 0u;
  *(this + 24252) = 0u;
  *(this + 25352) = 0u;
  *(this + 26452) = 0u;
  *(this + 1447) = 0u;
  *(this + 1722) = 0u;
  *(this + 28652) = 0u;
  *(this + 29752) = 0u;
  *(this + 30852) = 0u;
  *(this + 1997) = 0u;
  *(this + 33052) = 0u;
  *(this + 2067) = 0u;
  *(this + 4136) = 0xFFFFFFFF00000000;
  *(this + 33096) = 0u;
  *(this + 8278) = 0;
  *(v3 + 6) = -1;
  *(this + 8284) = 0;
  *(this + 2070) = 0u;
  *(v3 + 12) = -1;
  *(this + 8290) = 0;
  *(this + 33144) = 0u;
  *(v3 + 18) = -1;
  *(this + 8296) = 0;
  *(this + 2073) = 0u;
  *(v3 + 24) = -1;
  *(this + 8302) = 0;
  *(this + 33192) = 0u;
  *(v3 + 30) = -1;
  *(this + 8308) = 0;
  *(this + 2076) = 0u;
  *(v3 + 36) = -1;
  *(this + 8314) = 0;
  *(this + 33240) = 0u;
  *(v3 + 42) = -1;
  *(this + 8320) = 0;
  *(this + 2079) = 0u;
  *(v3 + 48) = -1;
  *(this + 8326) = 0;
  *(this + 33288) = 0u;
  *(v3 + 54) = -1;
  *(this + 8332) = 0;
  *(this + 2082) = 0u;
  *(v3 + 60) = -1;
  *(this + 8338) = 0;
  *(this + 33336) = 0u;
  *(v3 + 66) = -1;
  *(this + 8344) = 0;
  *(this + 2085) = 0u;
  *(v3 + 72) = -1;
  *(this + 8350) = 0;
  *(this + 33384) = 0u;
  *(v3 + 78) = -1;
  *(this + 8356) = 0;
  *(this + 2088) = 0u;
  *(v3 + 84) = -1;
  *(this + 8362) = 0;
  *(this + 33432) = 0u;
  *(v3 + 90) = -1;
  *(this + 8368) = 0;
  *(this + 2091) = 0u;
  *(v3 + 96) = -1;
  *(this + 8374) = 0;
  *(this + 33480) = 0u;
  *(v3 + 102) = -1;
  *(this + 8380) = 0;
  *(this + 2094) = 0u;
  *(v3 + 108) = -1;
  *(this + 8386) = 0;
  *(this + 33528) = 0u;
  *(v3 + 114) = -1;
  *(this + 8392) = 0;
  *(this + 2097) = 0u;
  *(v3 + 120) = -1;
  *(this + 8398) = 0;
  *(this + 33576) = 0u;
  *(v3 + 126) = -1;
  *(this + 8404) = 0;
  *(this + 2100) = 0u;
  *(v3 + 132) = -1;
  *(this + 8410) = 0;
  *(this + 33624) = 0u;
  *(v3 + 138) = -1;
  *(this + 8416) = 0;
  *(this + 2103) = 0u;
  *(v3 + 144) = -1;
  *(this + 8422) = 0;
  *(this + 33672) = 0u;
  *(v3 + 150) = -1;
  *(this + 8428) = 0;
  *(this + 2106) = 0u;
  *(v3 + 156) = -1;
  *(this + 8434) = 0;
  *(this + 33720) = 0u;
  *(v3 + 162) = -1;
  *(this + 8440) = 0;
  *(this + 2109) = 0u;
  *(v3 + 168) = -1;
  *(this + 8446) = 0;
  *(this + 33768) = 0u;
  *(v3 + 174) = -1;
  *(v3 + 700) = 0;
  *(this + 2180) = 0u;
  *(this + 35980) = 0u;
  *(this + 37080) = 0u;
  *(this + 38180) = 0u;
  *(this + 2455) = 0u;
  *(this + 40380) = 0u;
  *(this + 41480) = 0u;
  *(this + 42580) = 0u;
  *v2 = 0u;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 16) = 7;
  *(v2 + 2) = xmmword_100040930;
  *(v2 + 3) = xmmword_100040920;
  atomic_store(0, v3 + 176);
  *(v3 + 175) = 0;
  return this;
}

double Madusa::SigComboBoost::Clear(Madusa::SigComboBoost *this)
{
  *(this + 42600) = 0u;
  *(this + 42616) = 0u;
  *&result = 0x400000003;
  *(this + 10666) = 7;
  *(this + 42632) = xmmword_100040930;
  *(this + 42648) = xmmword_100040920;
  atomic_store(0, this + 8449);
  *(this + 8448) = 0;
  return result;
}

_DWORD *Madusa::SigComboBoost::SetSignature(_DWORD *result, const void *a2, float *a3)
{
  v3 = fmaxf(a3[2], fmaxf(*a3, a3[1]));
  if (v3 > 2.0)
  {
    v4 = result + 10240;
    v5 = result[10666];
    v6 = (result + 10650);
    if (v3 > *&result[v5 + 10650])
    {
      v7 = result + 10659;
      result = memcpy(&result[275 * v5 + 8450], a2, 0x44CuLL);
      *&v6[4 * v5] = v3;
      v8 = *&v6[4 * *v7];
      if (v3 <= v8)
      {
        if (v3 <= *&v6[4 * v4[420]])
        {
          if (v3 <= *&v6[4 * v4[421]])
          {
            if (v3 <= *&v6[4 * v4[422]])
            {
              if (v3 <= *&v6[4 * v4[423]])
              {
                if (v3 <= *&v6[4 * v4[424]])
                {
                  if (v3 <= *&v6[4 * v4[425]])
                  {
                    v15 = v4 + 426;
                    if (v3 <= *&v6[4 * v4[426]])
                    {
                      goto LABEL_26;
                    }

                    goto LABEL_25;
                  }

                  v10 = 0;
                  v11 = 0;
                  v12 = 0;
                  v13 = 0;
                  v14 = 0;
                  v9 = 6;
                }

                else
                {
                  v11 = 0;
                  v12 = 0;
                  v13 = 0;
                  v14 = 0;
                  v10 = 1;
                  v9 = 5;
                }
              }

              else
              {
                v12 = 0;
                v13 = 0;
                v14 = 0;
                v10 = 1;
                v9 = 4;
                v11 = 1;
              }
            }

            else
            {
              v13 = 0;
              v14 = 0;
              v10 = 1;
              v9 = 3;
              v11 = 1;
              v12 = 1;
            }
          }

          else
          {
            v14 = 0;
            v10 = 1;
            v9 = 2;
            v11 = 1;
            v12 = 1;
            v13 = 1;
          }
        }

        else
        {
          v10 = 1;
          v11 = 1;
          v12 = 1;
          v13 = 1;
          v14 = 1;
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
        v10 = 1;
        v11 = 1;
        v12 = 1;
        v13 = 1;
        v14 = 1;
      }

      v15 = &v7[v9];
      v4[426] = v4[425];
      if (v10)
      {
        v4[425] = v4[424];
        if (v11)
        {
          v4[424] = v4[423];
          if (v12)
          {
            v4[423] = v4[422];
            if (v13)
            {
              v4[422] = v4[421];
              if (v14)
              {
                v4[421] = v4[420];
                if (v3 > v8)
                {
                  v4[420] = v4[419];
                }
              }
            }
          }
        }
      }

LABEL_25:
      *v15 = v5;
LABEL_26:
      v16 = v4[418];
      if (v16 <= 7)
      {
        v4[418] = v16 + 1;
      }
    }
  }

  return result;
}

_DWORD *Madusa::SigComboBoost::_SetSignature(_DWORD *result, const void *a2, float *a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::SigComboBoost::SetSignature(result, a2, a3);
    }

LABEL_7:
    QuickCodec::mask = v4 + 1;
    return Madusa::SigComboBoost::SetSignature(result, a2, a3);
  }

  v6 = 148375 * v3[3];
  v4 = QuickCodec::mask;
  if (v6 - (v6 ^ 0x1DFF90C | v6 & 0x1DFF90C) + (v6 ^ 0x1DFF90C | ~(v6 | 0x1DFF90C)) + 31455500 == (~(~(~(v6 | 0x1C72000) | v6 & 0x1C72000) | 0x18D90C) | ~(~(v6 | 0x1C72000) | v6 & 0x1C72000) & 0x18D90C) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::SigComboBoost::SetSignature(result, a2, a3);
}

uint64_t Madusa::SigComboBoost::GetBoostedSignature(uint64_t a1, void *__dst, float *__src)
{
  memcpy(__dst, __src, 0x44CuLL);
  LODWORD(v7) = *(a1 + 42632);
  if (v7 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (v7 >= 8)
    {
      v7 = 8;
    }

    else
    {
      v7 = v7;
    }

    v10 = a1 + 33800;
    v11 = 1;
    do
    {
      v12 = *(a1 + 42636 + 4 * v8);
      v13 = (v10 + 1100 * v12);
      if (vabds_f32(v13[270], __src[270]) < 0.13)
      {
        v14 = vabds_f32(v13[272], __src[272]);
        v15 = vabds_f32(v13[271], __src[271]) < 0.13 && v14 < 0.13;
        v16 = vabds_f32(v13[273], __src[273]);
        if (v15 && v16 < 0.13)
        {
          v18 = 1100 * v12;
          v19 = (v13 + 135);
          v20 = (v10 + v18);
          v21 = 270;
          v22 = __dst;
          do
          {
            v23 = *v20++;
            *v22 += v23;
            v24 = *v19++;
            v22[270] += v24;
            ++v22;
            --v21;
          }

          while (v21);
          ++v11;
          v9 = 1;
          if (v11 == 3)
          {
            break;
          }
        }
      }

      ++v8;
    }

    while (v8 != v7);
  }

  v25 = 0;
  v26 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v27 = 9986301;
  }

  else
  {
    v27 = 2208459;
  }

  v28 = 1;
  v29 = 4755335;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v32 = v28;
        if (v29 <= 4755405)
        {
          break;
        }

        if (v29 == 4755406)
        {
          if ((*v25 & 0x1F) != 0 || v25[2] > 0x3Fu || (v28 = 1, v29 = 2208459, v25[3] != ((QuickCodec::mask ^ v26) / 0x23FAC3)))
          {
            v29 = 2208513;
            v28 = v32;
          }
        }

        else if (v29 == 6963777)
        {
          v25 = v3;
          v29 = 4755352;
        }

        else
        {
          v33 = v29 == 9986301;
          v29 = 4755406;
          if (v33)
          {
            v26 = -435239633;
          }
        }
      }

      if (v29 <= 4755334)
      {
        break;
      }

      v30 = (QuickCodec::mask != -70947757) | v28;
      if (v29 == 4755352)
      {
        v31 = v27;
      }

      else
      {
        v31 = v29;
      }

      if (v29 == 4755352)
      {
        LODWORD(v32) = v30;
      }

      v33 = v29 == 4755335;
      if (v29 == 4755335)
      {
        v29 = 2208459;
      }

      else
      {
        v29 = v31;
      }

      if (v33)
      {
        v28 = 0;
      }

      else
      {
        v28 = v32;
      }
    }

    if (v29 != 2208459)
    {
      break;
    }

    if (v28)
    {
      v29 = 2208513;
    }

    else
    {
      v29 = 6963777;
    }
  }

  if (v28)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    fegetenv(&v35);
    v35.__fpcr &= QuickCodec::mask + 70947740;
    fesetenv(&v35);
  }

  return v9 & 1;
}

uint64_t Madusa::SigComboBoost::_GetBoostedSignature(uint64_t a1, void *__dst, float *__src)
{
  v4 = 0;
  v5 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v6 = 9100262;
  }

  else
  {
    v6 = 659953;
  }

  v7 = 1;
  v8 = 2141803;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = v7;
        if (v8 <= 2141873)
        {
          break;
        }

        if (v8 == 2141874)
        {
          if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || (v7 = 1, v8 = 659953, v4[3] != ((QuickCodec::mask ^ v5) / 0x8F9D3A)))
          {
            v8 = 660007;
            v7 = v11;
          }
        }

        else if (v8 == 2801739)
        {
          v4 = v3;
          v8 = 2141820;
        }

        else
        {
          v12 = v8 == 9100262;
          v8 = 2141874;
          if (v12)
          {
            v5 = -1926539173;
          }
        }
      }

      if (v8 <= 2141802)
      {
        break;
      }

      v9 = (QuickCodec::mask != -70947757) | v7;
      if (v8 == 2141820)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      if (v8 == 2141820)
      {
        LODWORD(v11) = v9;
      }

      v12 = v8 == 2141803;
      if (v8 == 2141803)
      {
        v8 = 659953;
      }

      else
      {
        v8 = v10;
      }

      if (v12)
      {
        v7 = 0;
      }

      else
      {
        v7 = v11;
      }
    }

    if (v8 != 659953)
    {
      break;
    }

    v8 = 660007;
    if ((v7 & 1) == 0)
    {
      v8 = 2801739;
    }
  }

  if (v7)
  {
    ++QuickCodec::mask;
  }

  return Madusa::SigComboBoost::GetBoostedSignature(a1, __dst, __src);
}

atomic_uint *Madusa::SigComboBoost::AddSignature@<X0>(atomic_uint *result@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 4) = 0;
  *(a4 + 8) = *a3;
  *(a4 + 24) = *(a3 + 16);
  if (*a3 >= 6.4376 || *(a3 + 4) >= 6.6757 || *(a3 + 8) >= 6.797 || *(a3 + 16) >= 6.2191)
  {
    *(a4 + 1) = 1;
  }

  else
  {
    add = atomic_fetch_add(result + 8449, 1u);
    if (add <= 29)
    {
      v5 = result;
      result = memcpy(&result[275 * add + 18], a2, 0x44CuLL);
      v7 = &v5[6 * add];
      v8 = *(a3 + 16);
      *(v7 + 2067) = *a3;
      *(v7 + 4136) = v8;
    }
  }

  return result;
}

uint64_t Madusa::SigComboBoost::SortSignatures(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 < 1)
  {
    return result;
  }

  if (a3 == 1)
  {
    v4 = 0;
LABEL_7:
    v7 = &a4[v4];
    do
    {
      *v7++ = v4++;
    }

    while (a3 != v4);
    goto LABEL_9;
  }

  v5 = 0;
  v4 = a3 & 0x7FFFFFFE;
  v6 = a4;
  do
  {
    *v6 = v5;
    v6[1] = v5 + 1;
    v6 += 2;
    v5 += 2;
  }

  while (v4 != v5);
  if (v4 != a3)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (a3 != 1)
  {
    v8 = 0;
    v9 = a4 + 1;
    for (i = 1; i != a3; ++i)
    {
      v11 = a4[i];
      v12 = *(24 * v11 + a2);
      v13 = v8;
      v14 = v9;
      v15 = i;
      while (1)
      {
        v16 = *(a4 + (v13 & 0x3FFFFFFFCLL));
        result = 24 * v16;
        if (v12 <= *(result + a2))
        {
          break;
        }

        --v15;
        *v14-- = v16;
        v13 -= 4;
        if (v15 + 1 <= 1)
        {
          LODWORD(v15) = 0;
          break;
        }
      }

      a4[v15] = v11;
      ++v9;
      v8 += 4;
    }
  }

  return result;
}

uint64_t Madusa::SigComboBoost::_SortSignatures(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu)
  {
    v5 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v5 + 1;
    }
  }

  else
  {
    v5 = QuickCodec::mask;
    if (v4[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::SigComboBoost::SortSignatures(a1, a2, a3, a4);
}

uint64_t Madusa::SigComboBoost::Evaluate@<X0>(Madusa::SigComboBoost *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 33792);
  *(a2 + 4) = 0;
  v18 = (a2 + 4);
  *a2 = 0;
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  *(a2 + 28) = -1;
  v5 = atomic_load(this + 8449);
  if (v5 >= 30)
  {
    v6 = 30;
  }

  else
  {
    v6 = v5;
  }

  v7 = this + 33072;
  func = __find_func(0x5F9FFFDF80A00060, -1323040758);
  result = func(this, v7, v6, v23);
  v19 = *a2;
  if (v5 < 1)
  {
LABEL_18:
    *a2 = v19;
    goto LABEL_19;
  }

  v11 = v23;
  while (1)
  {
    v13 = *v11;
    v10 = this + 72;
    v21 = 0;
    v22 = 0;
    ++*v4;
    if (*(this + 10658) < 1)
    {
      goto LABEL_6;
    }

    v14 = __find_func(0x3F3FBF5F000000D0, -779861878);
    if (!v14(this, v20, &v10[1100 * v13]))
    {
      goto LABEL_6;
    }

    v15 = __find_func(0x5FFF9F3F00A0E0F0, -1320918806);
    result = v15(this + 8, v20, 50.0);
    *(a2 + 8) = *result;
    *(a2 + 24) = *(result + 16);
    v16 = *result < 6.4376 && *(result + 4) < 6.6757;
    if (!v16 || *(result + 8) >= 6.797)
    {
      break;
    }

    v19 = 1;
LABEL_6:
    v12 = __find_func(0x5F7F7FBFA0E080E0, -1312522134);
    result = v12(this, &v10[1100 * v13], &v7[24 * v13]);
    ++v11;
    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  *a2 = 257;
LABEL_19:
  atomic_store(0, v4 + 1);
  *v18 = *v4;
  return result;
}

void *Madusa::ProfileTimer::ProfileTimer(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100070838;
  a1[1] = a2;
  a1[2] = a3;
  (*(*a3 + 56))(a3, a1);
  return a1;
}

void Madusa::ProfileTimer::~ProfileTimer(Madusa::ProfileTimer *this)
{
  *this = off_100070838;
  (*(**(this + 2) + 64))(*(this + 2), this);
}

{
  *this = off_100070838;
  (*(**(this + 2) + 64))(*(this + 2), this);

  operator delete();
}

void Madusa::FrequencyTransform::Window(uint64_t a1, void *a2)
{
  v2 = (*a2 + 8);
  v3 = 0;
  if (*a2 + 65544 <= &Madusa::FrequencyTransform::mWindowCoeffs || v2 >= &Madusa::gReadstatsHandle)
  {
    v55 = unk_1000746A0;
    v56 = Madusa::FrequencyTransform::mWindowCoeffs;
    v53 = unk_1000746C0;
    v54 = xmmword_1000746B0;
    v7 = xmmword_1000746D0;
    v8 = unk_1000746E0;
    v9 = xmmword_1000746F0;
    v10 = unk_100074700;
    v11 = xmmword_100074710;
    v12 = unk_100074720;
    v13 = xmmword_100074730;
    v14 = unk_100074740;
    v15 = xmmword_100074750;
    v16 = unk_100074760;
    v17 = xmmword_100074770;
    v18 = unk_100074780;
    v19 = xmmword_100074790;
    v20 = unk_1000747A0;
    v21 = xmmword_1000747B0;
    v22 = unk_1000747C0;
    v23 = xmmword_1000747D0;
    v24 = unk_1000747E0;
    v25 = xmmword_1000747F0;
    v26 = unk_100074800;
    v27 = xmmword_100074810;
    v28 = unk_100074820;
    v29 = xmmword_100074830;
    v30 = unk_100074840;
    v31 = xmmword_100074850;
    v32 = unk_100074860;
    v33 = xmmword_100074870;
    v34 = unk_100074880;
    do
    {
      v35 = *(&Madusa::FrequencyTransform::mWindowCoeffs + v3);
      v36 = vmulq_f32(vmulq_n_f32(v55, v35), v2[1]);
      *v2 = vmulq_f32(vmulq_n_f32(v56, v35), *v2);
      v2[1] = v36;
      v37 = vmulq_f32(vmulq_n_f32(v53, v35), v2[3]);
      v2[2] = vmulq_f32(vmulq_n_f32(v54, v35), v2[2]);
      v2[3] = v37;
      v38 = vmulq_f32(vmulq_n_f32(v8, v35), v2[5]);
      v2[4] = vmulq_f32(vmulq_n_f32(v7, v35), v2[4]);
      v2[5] = v38;
      v39 = vmulq_f32(vmulq_n_f32(v10, v35), v2[7]);
      v2[6] = vmulq_f32(vmulq_n_f32(v9, v35), v2[6]);
      v2[7] = v39;
      v40 = vmulq_f32(vmulq_n_f32(v12, v35), v2[9]);
      v2[8] = vmulq_f32(vmulq_n_f32(v11, v35), v2[8]);
      v2[9] = v40;
      v41 = vmulq_f32(vmulq_n_f32(v14, v35), v2[11]);
      v2[10] = vmulq_f32(vmulq_n_f32(v13, v35), v2[10]);
      v2[11] = v41;
      v42 = vmulq_f32(vmulq_n_f32(v16, v35), v2[13]);
      v2[12] = vmulq_f32(vmulq_n_f32(v15, v35), v2[12]);
      v2[13] = v42;
      v43 = vmulq_f32(vmulq_n_f32(v18, v35), v2[15]);
      v2[14] = vmulq_f32(vmulq_n_f32(v17, v35), v2[14]);
      v2[15] = v43;
      v44 = vmulq_f32(vmulq_n_f32(v20, v35), v2[17]);
      v2[16] = vmulq_f32(vmulq_n_f32(v19, v35), v2[16]);
      v2[17] = v44;
      v45 = vmulq_f32(vmulq_n_f32(v22, v35), v2[19]);
      v2[18] = vmulq_f32(vmulq_n_f32(v21, v35), v2[18]);
      v2[19] = v45;
      v46 = vmulq_f32(vmulq_n_f32(v24, v35), v2[21]);
      v2[20] = vmulq_f32(vmulq_n_f32(v23, v35), v2[20]);
      v2[21] = v46;
      v47 = vmulq_f32(vmulq_n_f32(v26, v35), v2[23]);
      v2[22] = vmulq_f32(vmulq_n_f32(v25, v35), v2[22]);
      v2[23] = v47;
      v48 = vmulq_f32(vmulq_n_f32(v28, v35), v2[25]);
      v2[24] = vmulq_f32(vmulq_n_f32(v27, v35), v2[24]);
      v2[25] = v48;
      v49 = vmulq_f32(vmulq_n_f32(v30, v35), v2[27]);
      v2[26] = vmulq_f32(vmulq_n_f32(v29, v35), v2[26]);
      v2[27] = v49;
      v50 = vmulq_f32(vmulq_n_f32(v32, v35), v2[29]);
      v2[28] = vmulq_f32(vmulq_n_f32(v31, v35), v2[28]);
      v2[29] = v50;
      v51 = vmulq_f32(vmulq_n_f32(v33, v35), v2[30]);
      v52 = vmulq_f32(vmulq_n_f32(v34, v35), v2[31]);
      v2[30] = v51;
      v2[31] = v52;
      v2 += 32;
      v3 += 4;
    }

    while (v3 != 512);
  }

  else
  {
    do
    {
      v5 = 0;
      v6 = *(&Madusa::FrequencyTransform::mWindowCoeffs + v3);
      do
      {
        v2->f32[v5] = *(&Madusa::FrequencyTransform::mWindowCoeffs + v5 * 4) * (v6 * v2->f32[v5]);
        ++v5;
      }

      while (v5 != 128);
      v2 += 32;
      ++v3;
    }

    while (v3 != 128);
  }
}

void Madusa::FrequencyTransform::_Window(uint64_t a1, void *a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_100040940));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_100040950, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_100040950)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::FrequencyTransform::Window(a1, a2);
}

uint64_t Madusa::VirtualRotator::Rotate180(uint64_t a1, uint64_t a2, Madusa::ImageProperties *this)
{
  Madusa::ImageProperties::GetSafeBounds(this, &v47);
  v6 = *Madusa::ImageProperties::GetYStride(this);
  v7 = *Madusa::ImageProperties::GetXStride(this);
  if (v49 == 1)
  {
    v8 = v48 - 2147483649;
    v9 = v48 - 1;
    v10 = v6 * v9;
    if (v10 < 0)
    {
      v10 = -v10;
    }

    if ((v9 ^ v6) < 0)
    {
      v10 = -v10;
    }

    if (v8 >= 0xFFFFFFFF00000000)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v8 >= 0xFFFFFFFF00000000;
    if (v51 != 1)
    {
LABEL_10:
      v13 = 0;
      v14 = 0;
      v15 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
      if (v15 < 8)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (v51 != 1)
    {
      goto LABEL_10;
    }
  }

  v18 = v50 - 2147483649;
  v19 = v50 - 1;
  v20 = v7 * v19;
  if (v20 < 0)
  {
    v20 = -v20;
  }

  if ((v19 ^ v7) < 0)
  {
    v20 = -v20;
  }

  if (v18 >= 0xFFFFFFFF00000000)
  {
    v13 = v20;
  }

  else
  {
    v13 = 0;
  }

  v14 = v18 >= 0xFFFFFFFF00000000;
  v15 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
  if (v15 < 8)
  {
LABEL_11:
    v16 = Madusa::ImageProperties::ConvertBitsPerPixel(v15);
    Madusa::SubBytePixelDirectionAndOffset::Reset(a1, v16, 1, 8 - v15);
    BitsPerPixelPerColor = Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
    if (v7)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_22:
  Madusa::SubBytePixelDirectionAndOffset::Reset(a1, 8, 1, 0);
  BitsPerPixelPerColor = Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
  if (v7)
  {
    goto LABEL_36;
  }

LABEL_23:
  v21 = *BitsPerPixelPerColor;
  if (v21 <= 7)
  {
    v22 = Madusa::ImageProperties::ConvertBitsPerPixel(v21);
    if (v51)
    {
      v23 = (v50 - 1) | &_mh_execute_header;
      if ((v50 + 0x7FFFFFFFLL) >> 32)
      {
        v23 = 0;
      }

      v45 = 0;
      v24 = HIDWORD(v23);
      if (HIDWORD(v23) == 1)
      {
        v45 = v23;
      }
    }

    else
    {
      LOBYTE(v24) = 0;
      v45 = 0;
    }

    v46 = v24;
    Madusa::SafeSubBytePixelIndexer::SafeSubBytePixelIndexer(&v40, v22, 1);
    Madusa::SafeSubBytePixelIndexer::operator+=(&v40, &v45);
    v13 = *(&v41 + 1);
    v14 = v42;
    if (v44)
    {
      v25 = v43;
    }

    else
    {
      v25 = 0;
    }

    if (!Madusa::SafeSubBytePixelIndexer::IsValid(&v40))
    {
      goto LABEL_44;
    }

    if (v14)
    {
      Madusa::SubBytePixelDirectionAndOffset::Reset(a1, v22, -1, v25);
      v14 = 1;
    }
  }

LABEL_36:
  if ((v12 & v14) != 1)
  {
    goto LABEL_44;
  }

  v26 = v13 + v11;
  if (v11 < 0)
  {
    if ((v13 & 0x8000000000000000) == 0 || v26 <= v11)
    {
      goto LABEL_45;
    }

LABEL_44:
    v26 = 0;
    v27 = 0;
    goto LABEL_46;
  }

  if ((v13 & 0x8000000000000000) == 0 && v26 < v11)
  {
    goto LABEL_44;
  }

LABEL_45:
  v27 = 1;
LABEL_46:
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  Madusa::ImageProperties::GetPixelData(this, &v40);
  if (!v27)
  {
    return 0;
  }

  if (v26 < 0)
  {
    v29 = -v26;
    if (v40)
    {
      if (v40 < v29)
      {
        return 0;
      }

      *&v40 = v40 + v26;
    }

    if (*(&v40 + 1))
    {
      if (*(&v40 + 1) < v29)
      {
        return 0;
      }

      *(&v40 + 1) += v26;
    }

    if (v41)
    {
      if (v41 < v29)
      {
        return 0;
      }

      *&v41 = v41 + v26;
    }

    if (*(&v41 + 1))
    {
      if (*(&v41 + 1) < v29)
      {
        return 0;
      }

      *(&v41 + 1) += v26;
    }

    if (v42)
    {
      if (v42 >= v29)
      {
        v28 = v42 + v26;
LABEL_79:
        v42 = v28;
        goto LABEL_80;
      }

      return 0;
    }
  }

  else
  {
    if (v40)
    {
      if (__CFADD__(v40, v26))
      {
        return 0;
      }

      *&v40 = v40 + v26;
    }

    if (*(&v40 + 1))
    {
      if (__CFADD__(*(&v40 + 1), v26))
      {
        return 0;
      }

      *(&v40 + 1) += v26;
    }

    if (v41)
    {
      if (__CFADD__(v41, v26))
      {
        return 0;
      }

      *&v41 = v41 + v26;
    }

    if (*(&v41 + 1))
    {
      if (__CFADD__(*(&v41 + 1), v26))
      {
        return 0;
      }

      *(&v41 + 1) += v26;
    }

    if (v42)
    {
      v28 = v42 + v26;
      if (!__CFADD__(v42, v26))
      {
        goto LABEL_79;
      }

      return 0;
    }
  }

LABEL_80:
  v31 = *(a2 + 12);
  v32 = v50;
  v33 = *(a2 + 8);
  v34 = v48;
  Madusa::ImageProperties::GetOffsetBounds(this);
  v36 = v35;
  OffsetBounds = Madusa::ImageProperties::GetOffsetBounds(this);
  Madusa::ImageProperties::SetOffset(this, v31 - (v36 + v32), v33 - (OffsetBounds + v34));
  v38 = *Madusa::ImageProperties::GetXStride(this);
  YStride = Madusa::ImageProperties::GetYStride(this);
  Madusa::ImageProperties::UpdatePixelData(this, &v40, -v38, -*YStride);
  Madusa::ImageProperties::CheckForOptimizedImagePipe(this);
  return (v36 <= 2147483650.0 && v36 >= -2147483650.0) & (OffsetBounds <= 2147483650.0 && OffsetBounds >= -2147483650.0);
}

uint64_t Madusa::VirtualRotator::Rotate90CW(uint64_t a1, uint64_t a2, Madusa::ImageProperties *this)
{
  Madusa::ImageProperties::GetSafeBounds(this, &v28);
  v6 = *Madusa::ImageProperties::GetYStride(this);
  v7 = *Madusa::ImageProperties::GetXStride(this);
  OffsetBounds = Madusa::ImageProperties::GetOffsetBounds(this);
  Madusa::ImageProperties::GetOffsetBounds(this);
  v10 = v9;
  v11 = v30;
  if (v30 == 1)
  {
    v12 = v29 - 1;
    v13 = v12 * v6;
    if (v12 * v6 < 0)
    {
      v13 = -v13;
    }

    if ((v12 ^ v6) >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    v15 = v29;
    v16 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
    if (v16 < 8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0.0;
    v16 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
    if (v16 < 8)
    {
LABEL_8:
      v17 = Madusa::ImageProperties::ConvertBitsPerPixel(v16);
      v18 = 8 - v16;
      v19 = a1;
      goto LABEL_11;
    }
  }

  v19 = a1;
  v17 = 8;
  v18 = 0;
LABEL_11:
  Madusa::SubBytePixelDirectionAndOffset::Reset(v19, v17, 1, v18);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  Madusa::ImageProperties::GetPixelData(this, &v25);
  if (!v11)
  {
    return 0;
  }

  if (v14 < 0)
  {
    v21 = -v14;
    if (v25)
    {
      if (v25 < v21)
      {
        return 0;
      }

      *&v25 = v25 + v14;
    }

    if (*(&v25 + 1))
    {
      if (*(&v25 + 1) < v21)
      {
        return 0;
      }

      *(&v25 + 1) += v14;
    }

    if (v26)
    {
      if (v26 < v21)
      {
        return 0;
      }

      *&v26 = v26 + v14;
    }

    if (*(&v26 + 1))
    {
      if (*(&v26 + 1) < v21)
      {
        return 0;
      }

      *(&v26 + 1) += v14;
    }

    if (v27)
    {
      if (v27 >= v21)
      {
        v20 = v27 + v14;
LABEL_44:
        v27 = v20;
        goto LABEL_45;
      }

      return 0;
    }
  }

  else
  {
    if (v25)
    {
      if (__CFADD__(v25, v14))
      {
        return 0;
      }

      *&v25 = v25 + v14;
    }

    if (*(&v25 + 1))
    {
      if (__CFADD__(*(&v25 + 1), v14))
      {
        return 0;
      }

      *(&v25 + 1) += v14;
    }

    if (v26)
    {
      if (__CFADD__(v26, v14))
      {
        return 0;
      }

      *&v26 = v26 + v14;
    }

    if (*(&v26 + 1))
    {
      if (__CFADD__(*(&v26 + 1), v14))
      {
        return 0;
      }

      *(&v26 + 1) += v14;
    }

    if (v27)
    {
      v20 = v27 + v14;
      if (!__CFADD__(v27, v14))
      {
        goto LABEL_44;
      }

      return 0;
    }
  }

LABEL_45:
  v23 = *(a2 + 12) - (OffsetBounds + v15);
  v24 = (v23 <= 2147483650.0) & (v23 >= -2147483650.0);
  Madusa::ImageProperties::SetOffset(this, v23, v10);
  Madusa::ImageProperties::SwapWidthAndHeight(this);
  Madusa::ImageProperties::UpdatePixelData(this, &v25, -v6, v7);
  Madusa::ImageProperties::CheckForOptimizedImagePipe(this);
  return v24;
}

uint64_t Madusa::VirtualRotator::Rotate90CCW(uint64_t a1, uint64_t a2, Madusa::ImageProperties *this)
{
  Madusa::ImageProperties::GetSafeBounds(this, &v34);
  v6 = *Madusa::ImageProperties::GetYStride(this);
  v7 = *Madusa::ImageProperties::GetXStride(this);
  OffsetBounds = Madusa::ImageProperties::GetOffsetBounds(this);
  Madusa::ImageProperties::GetOffsetBounds(this);
  v10 = v9;
  v11 = v36;
  if (v36 == 1)
  {
    v12 = v35 - 1;
    v13 = v12 * v7;
    if (v12 * v7 < 0)
    {
      v13 = -v13;
    }

    if ((v12 ^ v7) >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    LOBYTE(v15) = 1;
    v16 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
    if (v16 < 8)
    {
LABEL_8:
      v17 = Madusa::ImageProperties::ConvertBitsPerPixel(v16);
      Madusa::SubBytePixelDirectionAndOffset::Reset(a1, v17, 1, 8 - v16);
      BitsPerPixelPerColor = Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
      if (v7)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    LOBYTE(v15) = 0;
    v16 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
    if (v16 < 8)
    {
      goto LABEL_8;
    }
  }

  Madusa::SubBytePixelDirectionAndOffset::Reset(a1, 8, 1, 0);
  BitsPerPixelPerColor = Madusa::ImageProperties::GetBitsPerPixelPerColor(this);
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_12:
  v19 = *BitsPerPixelPerColor;
  if (v19 <= 7)
  {
    v20 = Madusa::ImageProperties::ConvertBitsPerPixel(v19);
    v32 = v12;
    v33 = v11;
    Madusa::SafeSubBytePixelIndexer::SafeSubBytePixelIndexer(&v27, v20, 1);
    Madusa::SafeSubBytePixelIndexer::operator+=(&v27, &v32);
    v14 = *(&v28 + 1);
    v15 = v29;
    if (v31)
    {
      v21 = v30;
    }

    else
    {
      v21 = 0;
    }

    if (Madusa::SafeSubBytePixelIndexer::IsValid(&v27))
    {
      if (v15)
      {
        Madusa::SubBytePixelDirectionAndOffset::Reset(a1, v20, -1, v21);
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

LABEL_20:
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  Madusa::ImageProperties::GetPixelData(this, &v27);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if (v14 < 0)
  {
    v23 = -v14;
    if (v27)
    {
      if (v27 < v23)
      {
        return 0;
      }

      *&v27 = v27 + v14;
    }

    if (*(&v27 + 1))
    {
      if (*(&v27 + 1) < v23)
      {
        return 0;
      }

      *(&v27 + 1) += v14;
    }

    if (v28)
    {
      if (v28 < v23)
      {
        return 0;
      }

      *&v28 = v28 + v14;
    }

    if (*(&v28 + 1))
    {
      if (*(&v28 + 1) < v23)
      {
        return 0;
      }

      *(&v28 + 1) += v14;
    }

    if (v29)
    {
      if (v29 >= v23)
      {
        v22 = v29 + v14;
LABEL_53:
        v29 = v22;
        goto LABEL_54;
      }

      return 0;
    }
  }

  else
  {
    if (v27)
    {
      if (__CFADD__(v27, v14))
      {
        return 0;
      }

      *&v27 = v27 + v14;
    }

    if (*(&v27 + 1))
    {
      if (__CFADD__(*(&v27 + 1), v14))
      {
        return 0;
      }

      *(&v27 + 1) += v14;
    }

    if (v28)
    {
      if (__CFADD__(v28, v14))
      {
        return 0;
      }

      *&v28 = v28 + v14;
    }

    if (*(&v28 + 1))
    {
      if (__CFADD__(*(&v28 + 1), v14))
      {
        return 0;
      }

      *(&v28 + 1) += v14;
    }

    if (v29)
    {
      v22 = v29 + v14;
      if (!__CFADD__(v29, v14))
      {
        goto LABEL_53;
      }

      return 0;
    }
  }

LABEL_54:
  v25 = *(a2 + 8) - (v10 + v35);
  v26 = (v25 <= 2147483650.0) & (v25 >= -2147483650.0);
  Madusa::ImageProperties::SetOffset(this, OffsetBounds, v25);
  Madusa::ImageProperties::SwapWidthAndHeight(this);
  Madusa::ImageProperties::UpdatePixelData(this, &v27, v6, -v7);
  Madusa::ImageProperties::CheckForOptimizedImagePipe(this);
  return v26;
}

double Madusa::Ratio::GetRatio(Madusa::Ratio *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0.0;
  }

  *&result = *this / v1;
  return result;
}

unint64_t Madusa::Ratio::ReduceFraction(Madusa::Ratio *this)
{
  v1 = *this;
  v2 = *(this + 1);
  for (i = *this / 100; !((v1 - 100 * i) | (v2 % 100)); i = v1 / 100)
  {
    v1 /= 100;
    v2 = (v2 / 100);
  }

  for (; !((v1 % 50) | (v2 % 50)); v2 = (v2 / 50))
  {
    v1 /= 50;
  }

  for (j = v1 / 25; !((v1 - 25 * j) | (v2 % 25)); j = v1 / 25)
  {
    v1 /= 25;
    v2 = (v2 / 25);
  }

  for (k = v1 / 10; !((v1 - 10 * k) | (v2 % 10)); k = v1 / 10)
  {
    v1 /= 10;
    v2 = (v2 / 10);
  }

  for (; !((v1 % 5) | (v2 % 5)); v2 = (v2 / 5))
  {
    v1 /= 5;
  }

  while (!((v1 % 3) | (v2 % 3)))
  {
    v1 /= 3;
    v2 = (v2 / 3);
  }

  if ((v1 | v2))
  {
    return v1 | (v2 << 32);
  }

  do
  {
    v6 = v1 >> 1;
    v7 = (v2 >> 1);
    v8 = v1 | v2;
    LODWORD(v2) = v2 >> 1;
    v1 >>= 1;
  }

  while ((v8 & 2) == 0);
  return v6 | (v7 << 32);
}

uint64_t Madusa::RandomNumGenerator::GetNextNumber(Madusa::RandomNumGenerator *this)
{
  v1 = *(this + 312);
  if (!v1)
  {
    for (i = 0; i != 624; ++i)
    {
      if (i == 623)
      {
        v3 = 0;
      }

      else
      {
        v3 = i + 1;
      }

      v4 = *(this + v3);
      if (i >= 0xE3)
      {
        v5 = -227;
      }

      else
      {
        v5 = 397;
      }

      v6 = *(this + v5 + i) ^ ((v4 & 0x7FFFFFFE | *(this + i) & 0x80000000) >> 1);
      if (v4)
      {
        v6 ^= 0x9908B0DF;
      }

      *(this + i) = v6;
    }
  }

  v7 = *(this + v1) ^ (*(this + v1) >> 11);
  v8 = (((v7 << 7) & 0x9D2C5680 ^ v7) << 15) & 0xEFC60000 ^ (v7 << 7) & 0x9D2C5680 ^ v7;
  *(this + 312) = (v1 + 1) % 0x270uLL;
  return v8 ^ (v8 >> 18);
}

Madusa::RandomNumGenerator *Madusa::RandomNumGenerator::RandomNumGenerator(Madusa::RandomNumGenerator *this)
{
  *(this + 312) = 0;
  __ptr = 0;
  v2 = fopen("/dev/urandom", "rb");
  if (v2 && (v3 = v2, v4 = fread(&__ptr, 1uLL, 4uLL, v2), fclose(v3), v4 == 4))
  {
    v5 = __ptr;
  }

  else
  {
    v6 = clock();
    v5 = v6 ^ (time(0) << 16);
  }

  *(this + 626) = v5;
  *this = v5;
  for (i = 1; i != 624; ++i)
  {
    v5 = i + 1812433253 * ((v5 >> 30) ^ v5);
    *(this + i) = v5;
  }

  return this;
}

void *Madusa::LogPolarRemap::Execute(uint64_t a1, void *a2, void *a3, float *a4)
{
  v6 = 0;
  v7 = *a3 + 8;
  v8 = *a2 + 8;
  v9 = 0.0;
  v10 = &dword_100040980;
  do
  {
    v11 = 0;
    v12 = v10;
    do
    {
      v13 = *v12;
      v14 = v12[1];
      if (v13 >= 62)
      {
        v16 = 62;
      }

      else
      {
        v16 = *v12;
      }

      v17 = v8 + (v13 << 8);
      if (v14 >= 62)
      {
        v19 = 62;
      }

      else
      {
        v19 = v12[1];
      }

      v20 = 4 * v19 + 4;
      v15 = *(v12 + 3);
      v18 = *(v17 + 4 * v14);
      v21 = (v18 + ((*(v17 + v20) - v18) * v15)) + (((*(v8 + (v16 << 8) + 256 + 4 * v14) - (v18 + ((*(v17 + v20) - v18) * v15))) + ((*(v8 + (v16 << 8) + 256 + v20) - *(v8 + (v16 << 8) + 256 + 4 * v14)) * v15)) * *(v12 + 2));
      v9 = v21 + v9;
      *(v7 + v11) = v21;
      v12 += 4;
      v11 += 4;
    }

    while (v11 != 376);
    v7 += 376;
    ++v6;
    v10 += 376;
  }

  while (v6 != 91);
  *a4 = v9 * 0.0001169;
  if (((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || v4[3] != 212) && QuickCodec::mask == -70947757)
  {
    return a3;
  }

  QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
  func = __find_func(0xBFBF1F1FC0C00040, 1359274186);
  func(0, 104);
  return a3;
}

void *Madusa::LogPolarRemap::_Execute(uint64_t a1, void *a2, void *a3, float *a4)
{
  v5.i16[3] = v4[3];
  v5.i16[2] = *v4 | 0xFFE0;
  v5.i16[1] = v5.u8[6];
  v5.i16[0] = v5.i16[2];
  v6.i64[0] = 0xFF000000FFLL;
  v6.i64[1] = 0xFF000000FFLL;
  v7 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v5), v6), xmmword_100040960));
  v8.i32[0] = vmovn_s32(vcgtq_f32(xmmword_100040970, v7)).u32[0];
  v8.i32[1] = vmovn_s32(vcgtq_f32(v7, xmmword_100040970)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v8, 0xFuLL))) & ((v4[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::LogPolarRemap::Execute(a1, a2, a3, a4);
}

unint64_t Madusa::TransformPipe::OctAxis(uint64_t a1, void *a2, void *a3)
{
  v3 = 0;
  v4 = *a2 + 8;
  v5 = *a3 + 8;
  v6 = 1;
  v7 = 130;
  do
  {
    v8 = v7 + v4;
    v9 = v7 + v4 + 130;
    v10 = v5 + 4 * v3;
    v11 = v10 + 512;
    v13 = v7 + v4 > v10 && v11 > v7 + v4 - 130;
    v15 = v7 + v4 + 260 > v10 && v11 > v9;
    v16 = v11 > v8 && v9 > v10;
    if (v16 || v13 || v15)
    {
      v27 = 0;
      v28 = (v7 + v4 + 131);
      v29 = (v7 + v4 - 128);
      v30 = (v8 + 1);
      do
      {
        v31 = v30 - 1;
        v32 = vld1_dup_s8(v30++);
        v33.i16[0] = *(v29 - 1);
        v33.i8[2] = *v29++;
        v33.i8[3] = *v31;
        v33.i8[4] = *v30;
        v33.i8[5] = *(v28 - 1);
        v33.i16[3] = *v28;
        v34 = vand_s8(vcgt_u8(v32, v33), 0x8040201008040201);
        v34.i8[0] = vaddv_s8(v34);
        v35 = vand_s8(vcgt_u8(v33, v32), 0x8040201008040201);
        v35.i8[0] = vaddv_s8(v35);
        v36 = vcnt_s8(v35);
        v36.i16[0] = vaddlv_u8(v36);
        v33.i32[0] = v34.i32[0];
        LODWORD(v31) = v36.i32[0];
        v37 = vcnt_s8(v33);
        v37.i16[0] = vaddlv_u8(v37);
        result = (v37.i32[0] - v31);
        *(v10 + v27) = result;
        v27 += 4;
        v28 = (v28 + 1);
      }

      while (v27 != 512);
    }

    else
    {
      v17 = 0;
      v18 = (v7 + v4 - 128);
      v19 = v8 + 1;
      v20 = v7 + v4 + 131;
      do
      {
        v21 = *(v18 - 2);
        v22 = *(v18 - 1);
        v23 = *v18++;
        v24 = *(v20 + 1);
        v25 = vaddq_s8(vsubq_s8(vaddq_s8(vsubq_s8(vaddq_s8(vsubq_s8(vaddq_s8(vsubq_s8(vaddq_s8(vsubq_s8(vaddq_s8(vsubq_s8(vaddq_s8(vsubq_s8(vsubq_s8(vcgtq_u8(v21, *v19), vcgtq_u8(*v19, v21)), vcgtq_u8(*v19, *(v19 - 1))), vcgtq_u8(*(v19 - 1), *v19)), vcgtq_u8(*v19, *(v20 - 1))), vcgtq_u8(*(v20 - 1), *v19)), vcgtq_u8(*v19, v22)), vcgtq_u8(v22, *v19)), vcgtq_u8(*v19, *v20)), vcgtq_u8(*v20, *v19)), vcgtq_u8(*v19, v23)), vcgtq_u8(v23, *v19)), vcgtq_u8(*v19, *(v19 + 1))), vcgtq_u8(*(v19 + 1), *v19)), vcgtq_u8(*v19, v24)), vcgtq_u8(v24, *v19));
        result = v10 + v17;
        v17 += 64;
        *(result + 32) = vcvtq_n_f32_s32(vqtbl1q_s8(v25, xmmword_100062030), 0x18uLL);
        *(result + 48) = vcvtq_n_f32_s32(vqtbl1q_s8(v25, xmmword_100062020), 0x18uLL);
        *result = vcvtq_n_f32_s32(vqtbl1q_s8(v25, xmmword_100062050), 0x18uLL);
        *(result + 16) = vcvtq_n_f32_s32(vqtbl1q_s8(v25, xmmword_100062040), 0x18uLL);
        v19 += 16;
        v20 += 16;
      }

      while (v17 != 512);
    }

    v7 += 130;
    v3 += 128;
    ++v6;
  }

  while (v6 != 129);
  return result;
}

unint64_t Madusa::TransformPipe::_OctAxis(uint64_t a1, void *a2, void *a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v4 + 1;
    }
  }

  else
  {
    v4 = QuickCodec::mask;
    if (v3[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::TransformPipe::OctAxis(a1, a2, a3);
}

uint64_t Madusa::MemoryMaster::Reset(void **this, size_t a2)
{
  Madusa::MemoryMaster::Deallocate(this);
  if (!a2)
  {
    return 0;
  }

  if (Madusa::MemoryMaster::pMemoryAllocator)
  {
    this[1] = a2;
LABEL_8:
    ReadstatsHandle = Madusa::System::GetReadstatsHandle(result);
    ((*ReadstatsHandle)[6])(ReadstatsHandle, this, a2);
    return 1;
  }

  result = malloc_type_calloc(a2, 1uLL, 0x1867F116uLL);
  this[3] = result;
  if (result)
  {
    this[1] = a2;
    *(this + 33) = 1;
    goto LABEL_8;
  }

  return result;
}

Madusa::MemoryMaster *Madusa::MemoryMaster::MemoryMaster(Madusa::MemoryMaster *this, size_t a2)
{
  *this = off_100070860;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
  Madusa::MemoryMaster::Deallocate(this);
  if (a2)
  {
    if (Madusa::MemoryMaster::pMemoryAllocator)
    {
      *v4 = a2;
LABEL_6:
      ReadstatsHandle = Madusa::System::GetReadstatsHandle(v5);
      ((*ReadstatsHandle)[6])(ReadstatsHandle, this, a2);
      return this;
    }

    v5 = malloc_type_calloc(a2, 1uLL, 0x1867F116uLL);
    *(this + 3) = v5;
    if (v5)
    {
      *(this + 1) = a2;
      *(this + 33) = 1;
      goto LABEL_6;
    }
  }

  return this;
}

void Madusa::MemoryMaster::Deallocate(void **this)
{
  if (this[3] && (*(this + 33) & 1) != 0)
  {
    v2 = *Madusa::System::GetReadstatsHandle(this);
    v2[7]();
    Madusa::MemoryMaster::MemoryRelease(this[3]);
  }

  this[3] = 0;
  this[1] = 0;
  this[2] = 0;
  *(this + 33) = 0;
  *(this + 32) = 0;
}

void Madusa::MemoryMaster::~MemoryMaster(void **this)
{
  *this = off_100070860;
  Madusa::MemoryMaster::Deallocate(this);
}

{
  *this = off_100070860;
  Madusa::MemoryMaster::Deallocate(this);

  operator delete();
}

uint64_t Madusa::MemoryMaster::MemoryMaster(uint64_t this, uint64_t a2, void *a3)
{
  *this = off_100070860;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = a3;
  *(this + 32) = 0;
  if (!a3)
  {
    *(this + 8) = 0;
  }

  if (Madusa::MemoryMaster::pMemoryAllocator)
  {
    *(this + 24) = 0;
  }

  return this;
}

uint64_t Madusa::MemoryMaster::AllocateBuffer(Madusa::MemoryMaster *this, unint64_t a2)
{
  if (*(this + 32))
  {
    return 0;
  }

  *(this + 32) = 1;
  if (!a2)
  {
    return 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = v3 > v4;
  v6 = v3 - v4;
  if (!v5 || v6 < a2)
  {
    return 0;
  }

  if (Madusa::MemoryMaster::pMemoryAllocator)
  {
    v8 = this;
    v9 = a2;
    v10 = Madusa::MemoryMaster::pMemoryAllocator(a2, Madusa::MemoryMaster::pMemoryAllocatorParam);
    a2 = v9;
    v11 = v10;
    this = v8;
    v4 = *(v8 + 2);
  }

  else
  {
    v11 = v4 + *(this + 3);
  }

  *(this + 2) = v4 + a2;
  *(this + 32) = v11 == 0;
  return v11;
}

uint64_t Madusa::MemoryMaster::DeAllocateBuffer(uint64_t this, void *a2)
{
  if (this)
  {
    if (Madusa::MemoryMaster::pMemoryDeallocator)
    {
      return Madusa::MemoryMaster::pMemoryDeallocator();
    }
  }

  return this;
}

void *Madusa::MemoryMaster::Create(Madusa::MemoryMaster *this)
{
  if (Madusa::MemoryMaster::pMemoryAllocator)
  {
    v2 = Madusa::MemoryMaster::pMemoryAllocator(40, Madusa::MemoryMaster::pMemoryAllocatorParam);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = malloc_type_calloc(0x28uLL, 1uLL, 0x1867F116uLL);
    if (!v2)
    {
      return v2;
    }
  }

  *v2 = off_100070860;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 16) = 0;
  Madusa::MemoryMaster::Deallocate(v2);
  if (!this)
  {
    return v2;
  }

  if (Madusa::MemoryMaster::pMemoryAllocator)
  {
    v2[1] = this;
  }

  else
  {
    v4 = malloc_type_calloc(this, 1uLL, 0x1867F116uLL);
    v2[3] = v4;
    if (!v4)
    {
      return v2;
    }

    v2[1] = this;
    *(v2 + 33) = 1;
  }

  ReadstatsHandle = Madusa::System::GetReadstatsHandle(v4);
  ((*ReadstatsHandle)[6])(ReadstatsHandle, v2, this);
  return v2;
}

void Madusa::MemoryMaster::Destroy(Madusa::MemoryMaster *this, Madusa::MemoryMaster *a2)
{
  (**this)(this, a2);
  v3 = Madusa::MemoryMaster::pMemoryDeallocator;
  if (Madusa::MemoryMaster::pMemoryDeallocator)
  {
    v4 = Madusa::MemoryMaster::pMemoryDeallocatorParam;

    (v3)(this, v4);
  }

  else
  {

    free(this);
  }
}

uint64_t (*Madusa::MemoryMaster::SetMemoryAllocatorAndDeallocator(uint64_t (*this)(void, void), void *(*a2)(unint64_t, void *), uint64_t (*a3)(void), void (*a4)(void *, void *), void *a5))(void, void)
{
  Madusa::MemoryMaster::pMemoryAllocator = this;
  Madusa::MemoryMaster::pMemoryAllocatorParam = a2;
  Madusa::MemoryMaster::pMemoryDeallocator = a3;
  Madusa::MemoryMaster::pMemoryDeallocatorParam = a4;
  return this;
}

uint64_t Madusa::MemoryMaster::Valid(Madusa::MemoryMaster *this)
{
  if (*(this + 3) | Madusa::MemoryMaster::pMemoryAllocator)
  {
    return (*(this + 1) != 0) & ~*(this + 32);
  }

  else
  {
    return 0;
  }
}

double Madusa::FindPeaks::FindPeaks(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 0x350000000ELL;
  a1[1] = 0x350000000ELL;
  return result;
}

uint64_t Madusa::FindPeaks::SubPixelResolutionCandidateList(void **a1, _DWORD *a2, int a3, uint64_t a4)
{
  if (a3 < 1)
  {
    v5 = 0;
LABEL_18:
    v28 = (v5 + 1);
    v29 = 2 - v28;
    if (v28 == 1 || v28 == 2 || (v35 = 1 - v28, -2 - v5 < v35) || HIDWORD(v35))
    {
      v30 = v5;
    }

    else
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFELL) + v5;
      v36 = a4 + 12 * v5;
      v37 = v29 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v36 + 8) = 1110704128;
        *v36 = 0x423C000000000000;
        *(v36 + 20) = 1110704128;
        *(v36 + 12) = 0x423C000000000000;
        v36 += 24;
        v37 -= 2;
      }

      while (v37);
      if (v29 == (v29 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_23;
      }
    }

    v31 = a4 + 12 * v30;
    v32 = v30 + 1;
    do
    {
      *(v31 + 8) = 1110704128;
      *v31 = 0x423C000000000000;
      v31 += 12;
      _ZF = v32++ == 1;
    }

    while (!_ZF);
    goto LABEL_23;
  }

  v5 = 0;
  if (a3 >= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = a3;
  }

  v7 = vdup_n_s32(0x38D1B717u);
  __asm { FMOV            V1.2S, #-3.0 }

  do
  {
    if (*a2 > 0.0)
    {
      v24 = a2[2];
      v25 = v24 - 1;
      if (v24 - 1 <= 0x58)
      {
        v26 = a2[1];
        v27 = **a1 + 8;
        if (v26 <= 0)
        {
          v12 = 376 * v24;
          v13.i32[0] = *(v27 + 376 * v24 + 372);
          v14 = 376 * v24;
        }

        else
        {
          v14 = 376 * v24;
          v13.i32[0] = *(v14 + 4 * (v26 - 1) + v27);
          v12 = 376 * v24;
          v16 = 376 * v24;
          v15 = v14;
          if (v26 > 0x5C)
          {
            goto LABEL_8;
          }
        }

        v15 = v14 + 4 * v26 + 4;
        v16 = v12;
LABEL_8:
        v17 = v27 + 4 * v26;
        v18 = v24;
        v19.f32[0] = v26;
        v20 = (v17 + v14);
        v13.i32[1] = *(v17 + 376 * v25);
        v21 = a4 + 12 * v5;
        v22.i32[0] = *(v15 + v27);
        v22.i32[1] = *(v17 + v16 + 376);
        v23 = vld1_dup_f32(v20);
        *v21 = *a2;
        v19.f32[1] = v18;
        *(v21 + 4) = vadd_f32(vdiv_f32(vsub_f32(v22, v13), vmla_f32(vadd_f32(vadd_f32(v13, v23), vadd_f32(v7, v22)), vminnm_f32(v23, vminnm_f32(v13, v22)), _D1)), v19);
        v5 = (v5 + 1);
      }
    }

    a2 += 3;
    --v6;
  }

  while (v6);
  if (v5 <= 0)
  {
    goto LABEL_18;
  }

LABEL_23:
  if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu)
  {
    if (QuickCodec::mask != -70947757)
    {
      goto LABEL_32;
    }
  }

  else
  {
    _ZF = v4[3] != 212 && QuickCodec::mask == -70947757;
    if (!_ZF)
    {
LABEL_32:
      QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
      fegetenv(&v38);
      v38.__fpcr &= QuickCodec::mask + 70947740;
      fesetenv(&v38);
    }
  }

  return v5;
}

uint64_t Madusa::FindPeaks::_SubPixelResolutionCandidateList(void **a1, _DWORD *a2, int a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 4722003;
  }

  else
  {
    v7 = 1125686;
  }

  v8 = 1;
  v9 = 2275031;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v12 = v8;
        if (v9 <= 2275101)
        {
          break;
        }

        if (v9 == 2275102)
        {
          if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 1125686, v5[3] != ((QuickCodec::mask ^ v6) / 0x132AFB)))
          {
            v9 = 1125740;
            v8 = v12;
          }
        }

        else if (v9 == 3400700)
        {
          v5 = v4;
          v9 = 2275048;
        }

        else
        {
          v13 = v9 == 4722003;
          v9 = 2275102;
          if (v13)
          {
            v6 = -199558257;
          }
        }
      }

      if (v9 <= 2275030)
      {
        break;
      }

      v10 = (QuickCodec::mask != -70947757) | v8;
      if (v9 == 2275048)
      {
        v11 = v7;
      }

      else
      {
        v11 = v9;
      }

      if (v9 == 2275048)
      {
        LODWORD(v12) = v10;
      }

      v13 = v9 == 2275031;
      if (v9 == 2275031)
      {
        v9 = 1125686;
      }

      else
      {
        v9 = v11;
      }

      if (v13)
      {
        v8 = 0;
      }

      else
      {
        v8 = v12;
      }
    }

    if (v9 != 1125686)
    {
      break;
    }

    v9 = 1125740;
    if ((v8 & 1) == 0)
    {
      v9 = 3400700;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  return Madusa::FindPeaks::SubPixelResolutionCandidateList(a1, a2, a3, a4);
}

uint64_t Madusa::FindPeaks::_FindHighestCandidatesSplit()
{
  if ((*v0 & 0x1F) != 0 || v0[2] > 0x3Fu)
  {
    v1 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::FindPeaks::FindHighestCandidatesSplit();
    }

LABEL_7:
    QuickCodec::mask = v1 + 1;
    return Madusa::FindPeaks::FindHighestCandidatesSplit();
  }

  v3 = 727176 * v0[3];
  v1 = QuickCodec::mask;
  if (v3 - (v3 ^ 0x93050A0 | v3 & 0x93050A0) + (v3 ^ 0x93050A0 | ~(v3 | 0x93050A0)) + 154161312 == (~(~(~(v3 | 0x9005000) | v3 & 0x9005000) | 0x3000A0) | ~(~(v3 | 0x9005000) | v3 & 0x9005000) & 0x3000A0) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::FindPeaks::FindHighestCandidatesSplit();
}

void Madusa::AffineTransform::CreateTransform(float *a1, int a2, float *a3)
{
  if (a2 < 1)
  {
    goto LABEL_14;
  }

  v7 = a2 >= 8 ? 8 : a2;
  v8 = a3;
  do
  {
    v9 = a1[2];
    v10 = v9;
    v11 = v9 - truncf(v9);
    if (v10 >= 89)
    {
      v10 = 89;
    }

    v12 = Madusa::AffineTransform::mLpSpaceScale[v10 & ~(v10 >> 31)] + (v11 * (Madusa::AffineTransform::mLpSpaceScale[(v10 & ~(v10 >> 31)) + 1] - Madusa::AffineTransform::mLpSpaceScale[v10 & ~(v10 >> 31)]));
    v14 = *a1;
    v13 = a1[1];
    a1 += 3;
    if (v13 >= 94.0)
    {
      v13 = v13 + -94.0;
    }

    if (v13 < 0.0)
    {
      v13 = v13 + 94.0;
    }

    v8[4] = v14;
    v15 = __sincosf_stret(v13 * 0.016711);
    *v8 = v15.__cosval * v12;
    v8[1] = v15.__sinval * v12;
    v8[2] = -(v15.__sinval * v12);
    v8[3] = v15.__cosval * v12;
    v8 += 232;
    --v7;
  }

  while (v7);
  if (a2 <= 7)
  {
LABEL_14:
    v16 = (a2 + 1);
    v17 = 9 - v16;
    if (v16 == 8 || v16 == 9 || (v28 = 8 - v16, -2 - a2 < v28) || HIDWORD(v28))
    {
      v18 = a2;
    }

    else
    {
      v18 = (v17 & 0xFFFFFFFFFFFFFFFELL) + a2;
      v29 = &a3[232 * a2];
      v30 = v17 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v29[4] = 0.0;
        v29[236] = 0.0;
        *v29 = xmmword_10006A0A0;
        *(v29 + 58) = xmmword_10006A0A0;
        v29 += 464;
        v30 -= 2;
      }

      while (v30);
      if (v17 == (v17 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_19;
      }
    }

    v19 = &a3[232 * v18];
    v20 = v18 + 1;
    do
    {
      v19[4] = 0.0;
      *v19 = xmmword_10006A0A0;
      v19 += 232;
    }

    while (v20++ != 8);
  }

LABEL_19:
  v22.i16[0] = *v3 | 0xFFE0;
  v22.i16[1] = v3[3];
  v22.i32[1] = v22.i32[0];
  v23.i64[0] = 0xFF000000FFLL;
  v23.i64[1] = 0xFF000000FFLL;
  v24 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v22), v23), xmmword_10006A0B0));
  v25.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A0C0, v24)).u32[0];
  v25.i32[1] = vmovn_s32(vcgtq_f32(v24, xmmword_10006A0C0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v25, 0xFuLL))) & ((v3[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    func = __find_func(0xDF9FDF1FC0E04070, 824451274);
    v27 = 600;
    while (*func != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || func[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || func[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || func[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
    {
      func += 4;
      if (!--v27)
      {
        goto LABEL_28;
      }
    }

    vars0 = func;
    vars8 = 0u;
LABEL_28:
    QuickCodec::mask += 16;
  }
}

double Madusa::ImageProperties::ImageProperties(Madusa::ImageProperties *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 1;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 40) = xmmword_10006A240;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0x64FFFFFFFFLL;
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  *(this + 184) = v2;
  *(this + 25) = 0;
  *(this + 26) = -1;
  *(this + 27) = -1;
  *(this + 56) = -1;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  return result;
}

uint64_t Madusa::ImageProperties::RecordImageDetails(Madusa::ImageProperties *this, int a2, int a3)
{
  v15 = *(this + 16);
  v3 = *(this + 24);
  v10 = *(this + 25);
  v4 = *(this + 11);
  v14 = v4 == 16;
  v16 = (*(this + 13) - 1) < 2;
  v17 = *(this + 37);
  v18 = 0;
  v19 = 0;
  v9 = *this;
  v12 = v3;
  v13 = v4;
  v11 = vextq_s8(*(this + 184), *(this + 184), 8uLL);
  v8[0] = a2;
  v8[1] = a3;
  v5 = *(this + 52);
  v20 = 0;
  LODWORD(v18) = v5;
  HIDWORD(v18) = *(this + 53);
  v19 = *(this + 27);
  v20 = *(this + 56);
  ReadstatsHandle = Madusa::System::GetReadstatsHandle(this);
  return ((*ReadstatsHandle)[3])(ReadstatsHandle, v8);
}

_DWORD *Madusa::ImageProperties::GetDownsampleRatios(_DWORD *this, Madusa::Ratio *a2, Madusa::Ratio *a3)
{
  *a2 = this[46];
  *(a2 + 1) = this[47];
  *a3 = this[48];
  *(a3 + 1) = this[49];
  return this;
}

uint64_t Madusa::ImageProperties::SetBasicProperties(uint64_t a1, char a2, char a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, int a11, uint64_t a12, int a13, signed int a14)
{
  *a1 = a9;
  *(a1 + 8) = a10;
  Madusa::ImageProperties::SetResolutionBucket(a1);
  v20 = *(a1 + 28);
  if (a14 >= 0)
  {
    v21 = a14;
  }

  else
  {
    v21 = -a14;
  }

  if (v20 < 0)
  {
    v20 = -v20;
  }

  *(a1 + 88) = v20 * v21;
  *(a1 + 37) = a3;
  *(a1 + 36) = a2;
  *(a1 + 96) = a4;
  *(a1 + 52) = a6;
  *(a1 + 56) = a7;
  *(a1 + 44) = a5;
  *(a1 + 48) = a11;
  *(a1 + 40) = a8;
  v22 = *(a12 + 8);
  *&v26[0] = *a12;
  *(&v26[0] + 1) = v22;
  v26[1] = *(a12 + 16);
  v27 = *(a12 + 32);
  return Madusa::ImageProperties::SetPixelData(a1, v26, a13, a14);
}

uint64_t Madusa::ImageProperties::SetPixelData(uint64_t result, __int128 *a2, int a3, unsigned int a4)
{
  v4 = *a2;
  v5 = a2[1];
  *(result + 136) = *(a2 + 4);
  *(result + 120) = v5;
  *(result + 104) = v4;
  if (a3 >= 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if ((a4 & 0x80000000) != 0)
  {
    v9 = -v6;
    v10 = *(result + 104);
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10 + v9;
    v12 = *(result + 88);
    v13 = v10 + v9 - v12;
    if (v10 + v9 < v12)
    {
      v13 = 0;
    }

    v14 = v11 >= v10;
    v10 = v11 < v10 ? 0 : v13;
    if (v14 && v11 >= v12)
    {
LABEL_18:
      *(result + 144) = v10;
    }

    v16 = *(result + 112);
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = v16 + v9;
    v18 = *(result + 88);
    v19 = v16 + v9 - v18;
    if (v16 + v9 < v18)
    {
      v19 = 0;
    }

    v20 = v17 >= v16;
    v16 = v17 < v16 ? 0 : v19;
    if (v20 && v17 >= v18)
    {
LABEL_28:
      *(result + 152) = v16;
    }

    v21 = *(result + 120);
    if (!v21)
    {
      goto LABEL_38;
    }

    v22 = v21 + v9;
    v23 = *(result + 88);
    v24 = v21 + v9 - v23;
    if (v21 + v9 < v23)
    {
      v24 = 0;
    }

    v25 = v22 >= v21;
    v21 = v22 < v21 ? 0 : v24;
    if (v25 && v22 >= v23)
    {
LABEL_38:
      *(result + 160) = v21;
    }

    v26 = *(result + 128);
    if (!v26)
    {
      goto LABEL_48;
    }

    v27 = v26 + v9;
    v28 = *(result + 88);
    v29 = v26 + v9 - v28;
    if (v26 + v9 < v28)
    {
      v29 = 0;
    }

    v30 = v27 >= v26;
    v26 = v27 < v26 ? 0 : v29;
    if (v30 && v27 >= v28)
    {
LABEL_48:
      *(result + 168) = v26;
    }

    v31 = *(result + 136);
    if (v31)
    {
      v32 = v31 + v9;
      v33 = *(result + 88);
      v14 = v31 + v9 >= v33;
      v34 = v31 + v9 - v33;
      if (!v14)
      {
        v34 = 0;
      }

      if (v32 >= v31 && v32 >= v33)
      {
        *(result + 176) = v34;
        *(result + 20) = a3;
        *(result + 24) = a4;
        return result;
      }

      goto LABEL_93;
    }

    goto LABEL_94;
  }

  v7 = *(result + 104);
  if ((a3 & 0x80000000) == 0)
  {
    *(result + 144) = v7;
    *(result + 152) = *(result + 112);
    v8 = *(result + 136);
    *(result + 168) = *(result + 128);
    *(result + 176) = v8;
    *(result + 20) = a3;
    *(result + 24) = a4;
    return result;
  }

  v35 = -a3;
  if (!v7)
  {
    goto LABEL_62;
  }

  v14 = __CFADD__(v7, v35);
  v36 = v7 + v35;
  if (!v14)
  {
    v37 = v36 >= a4 ? a4 : 0;
    if (v36 >= a4)
    {
      v7 = v36 - v37;
LABEL_62:
      *(result + 144) = v7;
    }
  }

  v38 = *(result + 112);
  if (!v38)
  {
LABEL_70:
    *(result + 152) = v38;
    goto LABEL_71;
  }

  v14 = __CFADD__(v38, v35);
  v39 = v38 + v35;
  if (!v14)
  {
    v40 = v39 >= a4 ? a4 : 0;
    if (v39 >= a4)
    {
      v38 = v39 - v40;
      goto LABEL_70;
    }
  }

LABEL_71:
  v41 = *(result + 120);
  if (!v41)
  {
LABEL_78:
    *(result + 160) = v41;
    goto LABEL_79;
  }

  v14 = __CFADD__(v41, v35);
  v42 = v41 + v35;
  if (!v14)
  {
    v43 = v42 >= a4 ? a4 : 0;
    if (v42 >= a4)
    {
      v41 = v42 - v43;
      goto LABEL_78;
    }
  }

LABEL_79:
  v44 = *(result + 128);
  if (!v44)
  {
LABEL_86:
    *(result + 168) = v44;
    goto LABEL_87;
  }

  v14 = __CFADD__(v44, v35);
  v45 = v44 + v35;
  if (!v14)
  {
    v46 = v45 >= a4 ? a4 : 0;
    if (v45 >= a4)
    {
      v44 = v45 - v46;
      goto LABEL_86;
    }
  }

LABEL_87:
  v47 = *(result + 136);
  if (!v47)
  {
LABEL_94:
    *(result + 176) = 0;
    *(result + 20) = a3;
    *(result + 24) = a4;
    return result;
  }

  v14 = __CFADD__(v47, v35);
  v48 = v47 + v35;
  if (v14 || (v48 >= a4 ? (v49 = a4) : (v49 = 0), v48 < a4))
  {
LABEL_93:
    *(result + 20) = a3;
    *(result + 24) = a4;
    return result;
  }

  *(result + 176) = v48 - v49;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

uint64_t Madusa::ImageProperties::SetColorComponent(uint64_t result, unsigned int a2, int a3)
{
  if (a2 <= 4)
  {
    *(result + 4 * a2 + 208) = a3;
  }

  return result;
}

__n128 Madusa::ImageProperties::UpdatePixelData(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = *a2;
  v5 = *(a2 + 16);
  *(a1 + 136) = *(a2 + 32);
  *(a1 + 120) = v5;
  *(a1 + 104) = result;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  return result;
}

__n128 Madusa::ImageProperties::GetPixelData@<Q0>(Madusa::ImageProperties *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 104);
  v3 = *(this + 120);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(this + 17);
  return result;
}

__n128 Madusa::ImageProperties::GetPixelDataBaseAddrs@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[9];
  v3 = this[10];
  *a2 = result;
  a2[1] = v3;
  a2[2].n128_u64[0] = this[11].n128_u64[0];
  return result;
}

double Madusa::ImageProperties::SetResolutionBucket(Madusa::ImageProperties *this)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = (fmin(v4, *this) + 0.5);
  if (v5 >= 120)
  {
    if (v5 >= 0x91)
    {
      if (v5 >= 0xB4)
      {
        if (v5 >= 0xF0)
        {
          if (v5 >= 0x10E)
          {
            if (v5 >= 0x154)
            {
              if (v5 >= 0x177)
              {
                if (v5 >= 0x1E0)
                {
                  if (v5 >= 0x24E)
                  {
                    v6 = 100 * ((v5 + 10) / 0x64);
                  }

                  else
                  {
                    v6 = 500;
                  }
                }

                else
                {
                  v6 = 400;
                }
              }

              else
              {
                v6 = 350;
              }
            }

            else
            {
              v6 = 300;
            }
          }

          else
          {
            v6 = 250;
          }
        }

        else
        {
          v6 = 200;
        }
      }

      else
      {
        v6 = 150;
      }
    }

    else
    {
      v6 = 125;
    }
  }

  else
  {
    v6 = 100;
  }

  *(this + 25) = v6;
  if (v4 == v3.f64[0])
  {
    if (v6 > 350)
    {
      v18 = v1;
      v19 = v2;
      v17[0] = v6;
      v17[1] = 300;
      v15 = Madusa::Ratio::ReduceFraction(v17);
      *(this + 23) = v15;
      *(this + 24) = v15;
    }

    else
    {
      *&v13 = 0x100000001;
      *(&v13 + 1) = 0x100000001;
      *(this + 184) = v13;
    }
  }

  else
  {
    __asm { FMOV            V2.2D, #0.5 }

    v12 = vaddq_f64(v3, _Q2);
    if (v6 < 351)
    {
      if (v3.f64[0] >= v4)
      {
        *&v13 = vmax_s32(vmovn_s64(vcvtq_s64_f64(v12)), 0x100000001);
        *(this + 23) = v13;
        *(this + 24) = 0x100000001;
      }

      else
      {
        *&v13 = 0x100000001;
        *(this + 23) = 0x100000001;
        *(this + 24) = vrev64_s32(vmax_s32(vmovn_s64(vcvtq_s64_f64(v12)), 0x100000001));
      }
    }

    else
    {
      *(this + 46) = v12.f64[0];
      *(this + 47) = 300;
      *&v13 = v12.f64[1];
      *(this + 48) = v12.f64[1];
      *(this + 49) = 300;
    }
  }

  return *&v13;
}

uint64_t Madusa::ImageProperties::SetDimensions(uint64_t this, int a2, int a3)
{
  *(this + 28) = a2;
  *(this + 32) = a3;
  return this;
}

uint64_t Madusa::ImageProperties::SetOffset(uint64_t this, double a2, double a3)
{
  *(this + 64) = a2;
  *(this + 72) = a3;
  return this;
}

int64x2_t Madusa::ImageProperties::GetSafeBounds@<Q0>(Madusa::ImageProperties *this@<X0>, int64x2_t *a2@<X8>)
{
  v2 = *(this + 7) | &_mh_execute_header;
  result = vdupq_n_s64(&_mh_execute_header);
  v4 = *(this + 8) | &_mh_execute_header;
  *a2 = result;
  a2[1].i64[0] = v2;
  a2[1].i64[1] = v4;
  return result;
}

double Madusa::ImageProperties::GetOffsetBounds(Madusa::ImageProperties *this)
{
  v2 = *(this + 8);
  result = *(this + 9);
  v3 = *(this + 7);
  v4 = *(this + 8);
  return result;
}

double Madusa::ImageProperties::SwapWidthAndHeight(Madusa::ImageProperties *this)
{
  *(this + 28) = vrev64_s32(*(this + 28));
  *this = vextq_s8(*this, *this, 8uLL);
  return Madusa::ImageProperties::SetResolutionBucket(this);
}

uint64_t Madusa::ImageProperties::ConvertBitsPerPixel(Madusa::ImageProperties *this)
{
  if (this == 32)
  {
    v1 = 32;
  }

  else
  {
    v1 = -1;
  }

  if (this == 16)
  {
    v1 = 16;
  }

  if (this == 8)
  {
    v1 = 8;
  }

  if (this == 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = -1;
  }

  if (this == 2)
  {
    v2 = 2;
  }

  if (this == 1)
  {
    v2 = 1;
  }

  if (this <= 7)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t Madusa::ImageProperties::CheckForOptimizedImagePipe(uint64_t this)
{
  *(this + 16) = 0;
  v1 = *(this + 52);
  if ((v1 - 1) < 2)
  {
    v2 = *(this + 44);
    if (v2 == 16 || v2 == 32)
    {
      goto LABEL_4;
    }

LABEL_11:
    *(this + 16) = 1;
    v3 = *(this + 96);
    v4 = v3 - 2;
    if ((v3 - 2) >= 8)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v1)
  {
    goto LABEL_11;
  }

  v5 = *(this + 44);
  if (v5 != 8 && v5 != 16)
  {
    goto LABEL_11;
  }

LABEL_4:
  v3 = *(this + 96);
  v4 = v3 - 2;
  if ((v3 - 2) >= 8)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((0x87u >> v4))
  {
    v7 = dword_10006A258[v4];
    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  *(this + 16) = 1;
LABEL_15:
  v8 = *(this + 36);
  v9 = v7 + v8;
  v10 = *(this + 44) / 8;
  if (*(this + 20) != v10 * v9)
  {
    *(this + 16) = 1;
  }

  if (v8)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v11 = 0;
    v12 = (this + 208);
    v13 = -1;
    do
    {
      if (!*v12++)
      {
        v13 = v11;
      }

      ++v11;
    }

    while (v11 < v9 && (v13 & 0x80000000) != 0);
    if ((v13 & 0x80000000) != 0)
    {
LABEL_25:
      v13 = 0;
      *(this + 16) = 1;
    }

    if (v9)
    {
      v15 = v13;
      v16 = 8 * v13;
      v17 = v7 + v8;
      v18 = (this + 104);
      do
      {
        if (v15 && *v18 >= *(v16 + this + 104))
        {
          *(this + 16) = 1;
        }

        --v15;
        ++v18;
        --v17;
      }

      while (v17);
    }
  }

  if (v3 != 4)
  {
    if (v3 != 9)
    {
      goto LABEL_70;
    }

    if (v9)
    {
      v19 = 0;
      v20 = (this + 208);
      v21 = -1;
      LODWORD(v22) = v7 + v8;
      do
      {
        v24 = *v20++;
        v23 = v24;
        if (v24 == 18)
        {
          v21 = v19;
        }

        if (v23)
        {
          v22 = v22;
        }

        else
        {
          v22 = v19;
        }

        ++v19;
      }

      while (v9 != v19);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_56:
        v31 = v21;
        v32 = 8 * v21;
        v33 = v7 + v8;
        v34 = (this + 104);
        do
        {
          if (v31 && v22 && *v34 >= *(v32 + this + 104))
          {
            *(this + 16) = 1;
          }

          --v31;
          --v22;
          ++v34;
          --v33;
        }

        while (v33);
        goto LABEL_70;
      }
    }

    else
    {
      v22 = 0;
    }

    v21 = 0;
    *(this + 16) = 1;
    if (!v9)
    {
      goto LABEL_70;
    }

    goto LABEL_56;
  }

  if (!v9)
  {
    v28 = 0;
    goto LABEL_63;
  }

  v25 = 0;
  v26 = (this + 208);
  v27 = -1;
  LODWORD(v28) = v7 + v8;
  do
  {
    v30 = *v26++;
    v29 = v30;
    if (v30 == 9)
    {
      v27 = v25;
    }

    if (v29)
    {
      v28 = v28;
    }

    else
    {
      v28 = v25;
    }

    ++v25;
  }

  while (v9 != v25);
  if ((v27 & 0x80000000) != 0)
  {
LABEL_63:
    v27 = 0;
    *(this + 16) = 1;
    if (!v9)
    {
      goto LABEL_70;
    }
  }

  v35 = v27;
  v36 = 8 * v27;
  v37 = v7 + v8;
  v38 = (this + 104);
  do
  {
    if (v35 && v28 && *v38 >= *(v36 + this + 104))
    {
      *(this + 16) = 1;
    }

    --v35;
    --v28;
    ++v38;
    --v37;
  }

  while (v37);
LABEL_70:
  v48[0] = *(this + 104);
  v48[1] = *(this + 112);
  v48[2] = *(this + 120);
  v48[3] = *(this + 128);
  v48[4] = *(this + 136);
  if (v9 >= 2)
  {
    v39 = v8 + v7;
    v40 = v39;
    do
    {
      if (v40 < 2)
      {
        break;
      }

      v42 = 0;
      v43 = v48;
      do
      {
        v44 = *v43;
        v45 = v43[1];
        if (*v43 > v45)
        {
          *v43 = v45;
          v43[1] = v44;
        }

        ++v42;
        ++v43;
      }

      while (v42 < v40 - 1);
    }

    while (v40-- >= 3);
    v46 = v48;
    v47 = v39 - 1;
    do
    {
      if (v46[1] - *v46 != v10)
      {
        *(this + 16) = 1;
      }

      ++v46;
      --v47;
    }

    while (v47);
  }

  return this;
}

BOOL Madusa::ImageProperties::ShouldDownsample(Madusa::ImageProperties *this)
{
  Ratio = Madusa::Ratio::GetRatio((this + 184));
  if (*&Ratio > 1.0)
  {
    return 1;
  }

  v4 = Madusa::Ratio::GetRatio((this + 192));
  return *&v4 > 1.0;
}

uint64_t Madusa::ImageProperties::HasValidColorComponents(Madusa::ImageProperties *this)
{
  v1 = *(this + 24);
  if (v1 <= 9 && ((0x2FFu >> v1) & 1) != 0)
  {
    v2 = qword_10006A278[v1];
    v3 = (this + 144);
    v4 = 1;
    do
    {
      if (!*(v3 - 5) || !*v3)
      {
        v4 = 0;
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t Madusa::ImageProperties::CanonicalizeColorComponents(uint64_t this)
{
  v1 = *(this + 96);
  if (v1 <= 3)
  {
    if (v1 <= 1)
    {
      if (v1)
      {
        if (v1 != 1)
        {
          return this;
        }

        if (*(this + 208) == 2)
        {
          goto LABEL_44;
        }

        if (*(this + 212) == 2)
        {
          goto LABEL_76;
        }

        if (*(this + 216) == 2)
        {
          v3 = 16;
        }

        else if (*(this + 220) == 2)
        {
          v3 = 24;
        }

        else
        {
          if (*(this + 224) != 2)
          {
            v24 = 0;
            if (*(this + 216) == 2)
            {
              goto LABEL_399;
            }

            goto LABEL_270;
          }

          v3 = 32;
        }

        v24 = *(this + v3 + 104);
        if (*(this + 216) == 2)
        {
          goto LABEL_399;
        }

LABEL_270:
        if (*(this + 220) != 2)
        {
          if (*(this + 224) == 2)
          {
            goto LABEL_245;
          }

          goto LABEL_272;
        }

LABEL_313:
        v8 = 24;
        goto LABEL_400;
      }

      if (*(this + 208) == 1)
      {
        goto LABEL_44;
      }

      if (*(this + 212) == 1)
      {
        goto LABEL_76;
      }

      if (*(this + 216) == 1)
      {
        v6 = 16;
      }

      else if (*(this + 220) == 1)
      {
        v6 = 24;
      }

      else
      {
        if (*(this + 224) != 1)
        {
          v24 = 0;
          if (*(this + 216) == 1)
          {
            goto LABEL_399;
          }

          goto LABEL_291;
        }

        v6 = 32;
      }

      v24 = *(this + v6 + 104);
      if (*(this + 216) == 1)
      {
        goto LABEL_399;
      }

LABEL_291:
      if (*(this + 220) != 1)
      {
        if (*(this + 224) == 1)
        {
          goto LABEL_245;
        }

        goto LABEL_272;
      }

      goto LABEL_313;
    }

    if (v1 != 2)
    {
      v4 = *(this + 208);
      if (v4 == 6)
      {
        v23 = *(this + 104);
        goto LABEL_55;
      }

      if (*(this + 212) == 6)
      {
        v23 = *(this + 112);
        if (v4 != 7)
        {
          goto LABEL_55;
        }

LABEL_24:
        v25 = *(this + 104);
        goto LABEL_57;
      }

      if (*(this + 216) == 6)
      {
        v23 = *(this + 120);
        if (v4 == 7)
        {
          goto LABEL_24;
        }
      }

      else if (*(this + 220) == 6)
      {
        v23 = *(this + 128);
        if (v4 == 7)
        {
          goto LABEL_24;
        }
      }

      else if (*(this + 224) == 6)
      {
        v23 = *(this + 136);
        if (v4 == 7)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v23 = 0;
        if (v4 == 7)
        {
          goto LABEL_24;
        }
      }

LABEL_55:
      if (*(this + 212) == 7)
      {
        v25 = *(this + 112);
        if (v4 != 8)
        {
          goto LABEL_57;
        }

LABEL_25:
        v26 = *(this + 104);
        goto LABEL_59;
      }

      if (*(this + 216) == 7)
      {
        v25 = *(this + 120);
        if (v4 == 8)
        {
          goto LABEL_25;
        }
      }

      else if (*(this + 220) == 7)
      {
        v25 = *(this + 128);
        if (v4 == 8)
        {
          goto LABEL_25;
        }
      }

      else if (*(this + 224) == 7)
      {
        v25 = *(this + 136);
        if (v4 == 8)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v25 = 0;
        if (v4 == 8)
        {
          goto LABEL_25;
        }
      }

LABEL_57:
      if (*(this + 212) == 8)
      {
        v26 = *(this + 112);
        if (v4 != 6)
        {
          goto LABEL_59;
        }

LABEL_26:
        v18 = *(this + 144);
LABEL_61:
        if (*(this + 212) == 7)
        {
          v19 = *(this + 152);
          if (v4 == 8)
          {
            goto LABEL_387;
          }

LABEL_371:
          if (*(this + 212) != 8)
          {
            if (*(this + 216) != 8)
            {
              if (*(this + 220) != 8)
              {
                if (*(this + 224) == 8)
                {
LABEL_375:
                  v12 = 32;
LABEL_394:
                  v13 = *(this + v12 + 144);
LABEL_395:
                  v20 = v13;
                  v14 = 1;
                  *(this + 104) = v23;
                  *(this + 144) = v18;
                  goto LABEL_442;
                }

LABEL_397:
                v13 = 0;
                goto LABEL_395;
              }

              goto LABEL_393;
            }

            goto LABEL_391;
          }

          goto LABEL_389;
        }

        if (*(this + 216) == 7)
        {
          v19 = *(this + 160);
          if (v4 == 8)
          {
            goto LABEL_387;
          }

          goto LABEL_371;
        }

        if (*(this + 220) == 7)
        {
          v19 = *(this + 168);
          if (v4 == 8)
          {
            goto LABEL_387;
          }

          goto LABEL_371;
        }

        if (*(this + 224) == 7)
        {
          v19 = *(this + 176);
          if (v4 != 8)
          {
            goto LABEL_371;
          }
        }

        else
        {
          v19 = 0;
          if (v4 != 8)
          {
            goto LABEL_371;
          }
        }

LABEL_387:
        v12 = 0;
        goto LABEL_394;
      }

      if (*(this + 216) == 8)
      {
        v26 = *(this + 120);
        if (v4 == 6)
        {
          goto LABEL_26;
        }
      }

      else if (*(this + 220) == 8)
      {
        v26 = *(this + 128);
        if (v4 == 6)
        {
          goto LABEL_26;
        }
      }

      else if (*(this + 224) == 8)
      {
        v26 = *(this + 136);
        if (v4 == 6)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v26 = 0;
        if (v4 == 6)
        {
          goto LABEL_26;
        }
      }

LABEL_59:
      if (*(this + 212) == 6)
      {
        v18 = *(this + 152);
        if (v4 != 7)
        {
          goto LABEL_61;
        }
      }

      else if (*(this + 216) == 6)
      {
        v18 = *(this + 160);
        if (v4 != 7)
        {
          goto LABEL_61;
        }
      }

      else if (*(this + 220) == 6)
      {
        v18 = *(this + 168);
        if (v4 != 7)
        {
          goto LABEL_61;
        }
      }

      else if (*(this + 224) == 6)
      {
        v18 = *(this + 176);
        if (v4 != 7)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v18 = 0;
        if (v4 != 7)
        {
          goto LABEL_61;
        }
      }

      v19 = *(this + 144);
      goto LABEL_371;
    }

    v7 = *(this + 208);
    if (v7 == 3)
    {
      v23 = *(this + 104);
      goto LABEL_66;
    }

    if (*(this + 212) == 3)
    {
      v23 = *(this + 112);
      if (v7 != 4)
      {
        goto LABEL_66;
      }

LABEL_39:
      v25 = *(this + 104);
      goto LABEL_68;
    }

    if (*(this + 216) == 3)
    {
      v23 = *(this + 120);
      if (v7 == 4)
      {
        goto LABEL_39;
      }
    }

    else if (*(this + 220) == 3)
    {
      v23 = *(this + 128);
      if (v7 == 4)
      {
        goto LABEL_39;
      }
    }

    else if (*(this + 224) == 3)
    {
      v23 = *(this + 136);
      if (v7 == 4)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v23 = 0;
      if (v7 == 4)
      {
        goto LABEL_39;
      }
    }

LABEL_66:
    if (*(this + 212) == 4)
    {
      v25 = *(this + 112);
      if (v7 != 5)
      {
        goto LABEL_68;
      }

LABEL_40:
      v26 = *(this + 104);
      goto LABEL_70;
    }

    if (*(this + 216) == 4)
    {
      v25 = *(this + 120);
      if (v7 == 5)
      {
        goto LABEL_40;
      }
    }

    else if (*(this + 220) == 4)
    {
      v25 = *(this + 128);
      if (v7 == 5)
      {
        goto LABEL_40;
      }
    }

    else if (*(this + 224) == 4)
    {
      v25 = *(this + 136);
      if (v7 == 5)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v25 = 0;
      if (v7 == 5)
      {
        goto LABEL_40;
      }
    }

LABEL_68:
    if (*(this + 212) == 5)
    {
      v26 = *(this + 112);
      if (v7 != 3)
      {
        goto LABEL_70;
      }

LABEL_41:
      v18 = *(this + 144);
      goto LABEL_72;
    }

    if (*(this + 216) == 5)
    {
      v26 = *(this + 120);
      if (v7 == 3)
      {
        goto LABEL_41;
      }
    }

    else if (*(this + 220) == 5)
    {
      v26 = *(this + 128);
      if (v7 == 3)
      {
        goto LABEL_41;
      }
    }

    else if (*(this + 224) == 5)
    {
      v26 = *(this + 136);
      if (v7 == 3)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v26 = 0;
      if (v7 == 3)
      {
        goto LABEL_41;
      }
    }

LABEL_70:
    if (*(this + 212) == 3)
    {
      v18 = *(this + 152);
      if (v7 != 4)
      {
        goto LABEL_72;
      }

LABEL_42:
      v19 = *(this + 144);
      goto LABEL_388;
    }

    if (*(this + 216) == 3)
    {
      v18 = *(this + 160);
      if (v7 == 4)
      {
        goto LABEL_42;
      }
    }

    else if (*(this + 220) == 3)
    {
      v18 = *(this + 168);
      if (v7 == 4)
      {
        goto LABEL_42;
      }
    }

    else if (*(this + 224) == 3)
    {
      v18 = *(this + 176);
      if (v7 == 4)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v18 = 0;
      if (v7 == 4)
      {
        goto LABEL_42;
      }
    }

LABEL_72:
    if (*(this + 212) == 4)
    {
      v19 = *(this + 152);
      if (v7 == 5)
      {
        goto LABEL_387;
      }
    }

    else if (*(this + 216) == 4)
    {
      v19 = *(this + 160);
      if (v7 == 5)
      {
        goto LABEL_387;
      }
    }

    else if (*(this + 220) == 4)
    {
      v19 = *(this + 168);
      if (v7 == 5)
      {
        goto LABEL_387;
      }
    }

    else if (*(this + 224) == 4)
    {
      v19 = *(this + 176);
      if (v7 == 5)
      {
        goto LABEL_387;
      }
    }

    else
    {
      v19 = 0;
      if (v7 == 5)
      {
        goto LABEL_387;
      }
    }

LABEL_388:
    if (*(this + 212) != 5)
    {
      if (*(this + 216) != 5)
      {
        if (*(this + 220) != 5)
        {
          if (*(this + 224) == 5)
          {
            goto LABEL_375;
          }

          goto LABEL_397;
        }

LABEL_393:
        v12 = 24;
        goto LABEL_394;
      }

LABEL_391:
      v12 = 16;
      goto LABEL_394;
    }

LABEL_389:
    v12 = 8;
    goto LABEL_394;
  }

  if (v1 > 5)
  {
    if (v1 != 6)
    {
      if (v1 != 7)
      {
        if (v1 != 9)
        {
          return this;
        }

        v2 = *(this + 208);
        if (v2 == 3)
        {
          v22 = *(this + 104);
          goto LABEL_94;
        }

        if (*(this + 212) == 3)
        {
          v22 = *(this + 112);
          if (v2 != 4)
          {
            goto LABEL_94;
          }

LABEL_8:
          v25 = *(this + 104);
          goto LABEL_96;
        }

        if (*(this + 216) == 3)
        {
          v22 = *(this + 120);
          if (v2 == 4)
          {
            goto LABEL_8;
          }
        }

        else if (*(this + 220) == 3)
        {
          v22 = *(this + 128);
          if (v2 == 4)
          {
            goto LABEL_8;
          }
        }

        else if (*(this + 224) == 3)
        {
          v22 = *(this + 136);
          if (v2 == 4)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v22 = 0;
          if (v2 == 4)
          {
            goto LABEL_8;
          }
        }

LABEL_94:
        if (*(this + 212) == 4)
        {
          v25 = *(this + 112);
          if (v2 != 5)
          {
            goto LABEL_96;
          }

LABEL_9:
          v26 = *(this + 104);
          goto LABEL_98;
        }

        if (*(this + 216) == 4)
        {
          v25 = *(this + 120);
          if (v2 == 5)
          {
            goto LABEL_9;
          }
        }

        else if (*(this + 220) == 4)
        {
          v25 = *(this + 128);
          if (v2 == 5)
          {
            goto LABEL_9;
          }
        }

        else if (*(this + 224) == 4)
        {
          v25 = *(this + 136);
          if (v2 == 5)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v25 = 0;
          if (v2 == 5)
          {
            goto LABEL_9;
          }
        }

LABEL_96:
        if (*(this + 212) == 5)
        {
          v26 = *(this + 112);
          if (v2 != 18)
          {
            goto LABEL_98;
          }

LABEL_10:
          v27 = *(this + 104);
          goto LABEL_100;
        }

        if (*(this + 216) == 5)
        {
          v26 = *(this + 120);
          if (v2 == 18)
          {
            goto LABEL_10;
          }
        }

        else if (*(this + 220) == 5)
        {
          v26 = *(this + 128);
          if (v2 == 18)
          {
            goto LABEL_10;
          }
        }

        else if (*(this + 224) == 5)
        {
          v26 = *(this + 136);
          if (v2 == 18)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v26 = 0;
          if (v2 == 18)
          {
            goto LABEL_10;
          }
        }

LABEL_98:
        if (*(this + 212) == 18)
        {
          v27 = *(this + 112);
          if (v2 != 3)
          {
            goto LABEL_100;
          }

LABEL_11:
          v17 = *(this + 144);
          goto LABEL_102;
        }

        if (*(this + 216) == 18)
        {
          v27 = *(this + 120);
          if (v2 == 3)
          {
            goto LABEL_11;
          }
        }

        else if (*(this + 220) == 18)
        {
          v27 = *(this + 128);
          if (v2 == 3)
          {
            goto LABEL_11;
          }
        }

        else if (*(this + 224) == 18)
        {
          v27 = *(this + 136);
          if (v2 == 3)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v27 = 0;
          if (v2 == 3)
          {
            goto LABEL_11;
          }
        }

LABEL_100:
        if (*(this + 212) == 3)
        {
          v17 = *(this + 152);
          if (v2 != 4)
          {
            goto LABEL_102;
          }

LABEL_12:
          v19 = *(this + 144);
LABEL_104:
          if (*(this + 212) == 5)
          {
            v20 = *(this + 152);
            if (v2 == 18)
            {
              goto LABEL_433;
            }

LABEL_434:
            if (*(this + 212) == 18)
            {
              goto LABEL_435;
            }

            if (*(this + 216) == 18)
            {
              goto LABEL_437;
            }

            if (*(this + 220) == 18)
            {
              goto LABEL_439;
            }

            if (*(this + 224) != 18)
            {
              goto LABEL_446;
            }

            goto LABEL_419;
          }

          if (*(this + 216) == 5)
          {
            v20 = *(this + 160);
            if (v2 == 18)
            {
              goto LABEL_433;
            }

            goto LABEL_434;
          }

          if (*(this + 220) == 5)
          {
            v20 = *(this + 168);
            if (v2 == 18)
            {
              goto LABEL_433;
            }

            goto LABEL_434;
          }

          if (*(this + 224) == 5)
          {
            v20 = *(this + 176);
            if (v2 != 18)
            {
              goto LABEL_434;
            }
          }

          else
          {
            v20 = 0;
            if (v2 != 18)
            {
              goto LABEL_434;
            }
          }

LABEL_433:
          v15 = 0;
          goto LABEL_440;
        }

        if (*(this + 216) == 3)
        {
          v17 = *(this + 160);
          if (v2 == 4)
          {
            goto LABEL_12;
          }
        }

        else if (*(this + 220) == 3)
        {
          v17 = *(this + 168);
          if (v2 == 4)
          {
            goto LABEL_12;
          }
        }

        else if (*(this + 224) == 3)
        {
          v17 = *(this + 176);
          if (v2 == 4)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v17 = 0;
          if (v2 == 4)
          {
            goto LABEL_12;
          }
        }

LABEL_102:
        if (*(this + 212) == 4)
        {
          v19 = *(this + 152);
          if (v2 != 5)
          {
            goto LABEL_104;
          }
        }

        else if (*(this + 216) == 4)
        {
          v19 = *(this + 160);
          if (v2 != 5)
          {
            goto LABEL_104;
          }
        }

        else if (*(this + 220) == 4)
        {
          v19 = *(this + 168);
          if (v2 != 5)
          {
            goto LABEL_104;
          }
        }

        else if (*(this + 224) == 4)
        {
          v19 = *(this + 176);
          if (v2 != 5)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v19 = 0;
          if (v2 != 5)
          {
            goto LABEL_104;
          }
        }

        v20 = *(this + 144);
        goto LABEL_434;
      }

LABEL_29:
      if (*(this + 208) != 10)
      {
        if (*(this + 212) != 10)
        {
          if (*(this + 216) == 10)
          {
            v5 = 16;
          }

          else if (*(this + 220) == 10)
          {
            v5 = 24;
          }

          else
          {
            if (*(this + 224) != 10)
            {
              v24 = 0;
              if (*(this + 216) != 10)
              {
LABEL_243:
                if (*(this + 220) != 10)
                {
                  if (*(this + 224) == 10)
                  {
LABEL_245:
                    v8 = 32;
                    goto LABEL_400;
                  }

LABEL_272:
                  v11 = 0;
LABEL_401:
                  *(this + 104) = v24;
                  *(this + 144) = v11;
                  return this;
                }

                goto LABEL_313;
              }

LABEL_399:
              v8 = 16;
              goto LABEL_400;
            }

            v5 = 32;
          }

          v24 = *(this + v5 + 104);
          if (*(this + 216) != 10)
          {
            goto LABEL_243;
          }

          goto LABEL_399;
        }

        goto LABEL_76;
      }

LABEL_44:
      v8 = 0;
      v24 = *(this + 104);
LABEL_400:
      v11 = *(this + v8 + 144);
      goto LABEL_401;
    }

    if (*(this + 208) == 13)
    {
      goto LABEL_44;
    }

    if (*(this + 212) == 13)
    {
LABEL_76:
      v24 = *(this + 112);
      v8 = 8;
      goto LABEL_400;
    }

    if (*(this + 216) == 13)
    {
      v10 = 16;
    }

    else if (*(this + 220) == 13)
    {
      v10 = 24;
    }

    else
    {
      if (*(this + 224) != 13)
      {
        v24 = 0;
        if (*(this + 216) == 13)
        {
          goto LABEL_399;
        }

        goto LABEL_312;
      }

      v10 = 32;
    }

    v24 = *(this + v10 + 104);
    if (*(this + 216) == 13)
    {
      goto LABEL_399;
    }

LABEL_312:
    if (*(this + 220) != 13)
    {
      if (*(this + 224) == 13)
      {
        goto LABEL_245;
      }

      goto LABEL_272;
    }

    goto LABEL_313;
  }

  if (v1 != 4)
  {
    goto LABEL_29;
  }

  v9 = *(this + 208);
  if (v9 == 6)
  {
    v22 = *(this + 104);
    goto LABEL_79;
  }

  if (*(this + 212) == 6)
  {
    v22 = *(this + 112);
    if (v9 != 7)
    {
      goto LABEL_79;
    }

LABEL_47:
    v25 = *(this + 104);
    goto LABEL_81;
  }

  if (*(this + 216) == 6)
  {
    v22 = *(this + 120);
    if (v9 == 7)
    {
      goto LABEL_47;
    }
  }

  else if (*(this + 220) == 6)
  {
    v22 = *(this + 128);
    if (v9 == 7)
    {
      goto LABEL_47;
    }
  }

  else if (*(this + 224) == 6)
  {
    v22 = *(this + 136);
    if (v9 == 7)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v22 = 0;
    if (v9 == 7)
    {
      goto LABEL_47;
    }
  }

LABEL_79:
  if (*(this + 212) == 7)
  {
    v25 = *(this + 112);
    if (v9 != 8)
    {
      goto LABEL_81;
    }

LABEL_48:
    v26 = *(this + 104);
    goto LABEL_83;
  }

  if (*(this + 216) == 7)
  {
    v25 = *(this + 120);
    if (v9 == 8)
    {
      goto LABEL_48;
    }
  }

  else if (*(this + 220) == 7)
  {
    v25 = *(this + 128);
    if (v9 == 8)
    {
      goto LABEL_48;
    }
  }

  else if (*(this + 224) == 7)
  {
    v25 = *(this + 136);
    if (v9 == 8)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v25 = 0;
    if (v9 == 8)
    {
      goto LABEL_48;
    }
  }

LABEL_81:
  if (*(this + 212) == 8)
  {
    v26 = *(this + 112);
    if (v9 != 9)
    {
      goto LABEL_83;
    }

LABEL_49:
    v27 = *(this + 104);
    goto LABEL_85;
  }

  if (*(this + 216) == 8)
  {
    v26 = *(this + 120);
    if (v9 == 9)
    {
      goto LABEL_49;
    }
  }

  else if (*(this + 220) == 8)
  {
    v26 = *(this + 128);
    if (v9 == 9)
    {
      goto LABEL_49;
    }
  }

  else if (*(this + 224) == 8)
  {
    v26 = *(this + 136);
    if (v9 == 9)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v26 = 0;
    if (v9 == 9)
    {
      goto LABEL_49;
    }
  }

LABEL_83:
  if (*(this + 212) == 9)
  {
    v27 = *(this + 112);
    if (v9 != 6)
    {
      goto LABEL_85;
    }

LABEL_50:
    v17 = *(this + 144);
    goto LABEL_87;
  }

  if (*(this + 216) == 9)
  {
    v27 = *(this + 120);
    if (v9 == 6)
    {
      goto LABEL_50;
    }
  }

  else if (*(this + 220) == 9)
  {
    v27 = *(this + 128);
    if (v9 == 6)
    {
      goto LABEL_50;
    }
  }

  else if (*(this + 224) == 9)
  {
    v27 = *(this + 136);
    if (v9 == 6)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v27 = 0;
    if (v9 == 6)
    {
      goto LABEL_50;
    }
  }

LABEL_85:
  if (*(this + 212) == 6)
  {
    v17 = *(this + 152);
    if (v9 != 7)
    {
      goto LABEL_87;
    }

LABEL_51:
    v19 = *(this + 144);
    goto LABEL_89;
  }

  if (*(this + 216) == 6)
  {
    v17 = *(this + 160);
    if (v9 == 7)
    {
      goto LABEL_51;
    }
  }

  else if (*(this + 220) == 6)
  {
    v17 = *(this + 168);
    if (v9 == 7)
    {
      goto LABEL_51;
    }
  }

  else if (*(this + 224) == 6)
  {
    v17 = *(this + 176);
    if (v9 == 7)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v17 = 0;
    if (v9 == 7)
    {
      goto LABEL_51;
    }
  }

LABEL_87:
  if (*(this + 212) == 7)
  {
    v19 = *(this + 152);
    if (v9 != 8)
    {
      goto LABEL_89;
    }

LABEL_52:
    v20 = *(this + 144);
    goto LABEL_415;
  }

  if (*(this + 216) == 7)
  {
    v19 = *(this + 160);
    if (v9 == 8)
    {
      goto LABEL_52;
    }
  }

  else if (*(this + 220) == 7)
  {
    v19 = *(this + 168);
    if (v9 == 8)
    {
      goto LABEL_52;
    }
  }

  else if (*(this + 224) == 7)
  {
    v19 = *(this + 176);
    if (v9 == 8)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v19 = 0;
    if (v9 == 8)
    {
      goto LABEL_52;
    }
  }

LABEL_89:
  if (*(this + 212) == 8)
  {
    v20 = *(this + 152);
    if (v9 == 9)
    {
      goto LABEL_433;
    }
  }

  else if (*(this + 216) == 8)
  {
    v20 = *(this + 160);
    if (v9 == 9)
    {
      goto LABEL_433;
    }
  }

  else if (*(this + 220) == 8)
  {
    v20 = *(this + 168);
    if (v9 == 9)
    {
      goto LABEL_433;
    }
  }

  else if (*(this + 224) == 8)
  {
    v20 = *(this + 176);
    if (v9 == 9)
    {
      goto LABEL_433;
    }
  }

  else
  {
    v20 = 0;
    if (v9 == 9)
    {
      goto LABEL_433;
    }
  }

LABEL_415:
  if (*(this + 212) == 9)
  {
LABEL_435:
    v15 = 8;
    goto LABEL_440;
  }

  if (*(this + 216) == 9)
  {
LABEL_437:
    v15 = 16;
    goto LABEL_440;
  }

  if (*(this + 220) == 9)
  {
LABEL_439:
    v15 = 24;
    goto LABEL_440;
  }

  if (*(this + 224) != 9)
  {
LABEL_446:
    v16 = 0;
    goto LABEL_441;
  }

LABEL_419:
  v15 = 32;
LABEL_440:
  v16 = *(this + v15 + 144);
LABEL_441:
  v14 = 0;
  v21 = v16;
  *(this + 104) = v22;
  *(this + 144) = v17;
LABEL_442:
  *(this + 112) = v25;
  *(this + 152) = v19;
  *(this + 120) = v26;
  *(this + 160) = v20;
  if ((v14 & 1) == 0)
  {
    *(this + 128) = v27;
    *(this + 168) = v21;
  }

  return this;
}

uint64_t Madusa::Demod::Demod(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 68728);
  *a1 = off_100070888;
  *(a1 + 8) = a2;
  *(a1 + 1096) = 0u;
  v4 = a1 + 1120;
  *(a1 + 1120) = off_1000708A8;
  bzero((a1 + 1128), 0x10810uLL);
  *v3 = v4;
  v3[1] = off_1000708C8;
  bzero((a1 + 68744), 0x4000uLL);
  *(a1 + 85128) = v3 + 1;
  func = __find_func(0xEFDFBFFFA000E040, 23347242);
  func(a1);
  return a1;
}

void Madusa::Demod::Initialize(Madusa::Demod *this)
{
  bzero(this + 16, 0x44CuLL);

  bzero(this + 85136, 0x870uLL);
}

void Madusa::Demod::_Initialize(Madusa::Demod *this, Madusa::Demod *a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006A2D0));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A2E0, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006A2E0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::Demod::Initialize(this);
}

uint64_t Madusa::Demod::Execute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Madusa::ProfileTimer::ProfileTimer(v14, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0x3F1FDF3F6000E090, -777772822);
  func(a1, a2, a3);
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    if (QuickCodec::mask == -70947757)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v3[3] == 212 || QuickCodec::mask != -70947757)
  {
LABEL_10:
    v9 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v10 = &unk_10003FCF4;
    v11 = -2;
    v12 = -1;
    do
    {
      qword_100074968[v12 + 1 + ((*(v10 - 1) ^ v9) / 0x9D28AF)] = qword_100074968[v12 + ((*v10 ^ v9) / 0x9D28AF)];
      v10 += 2;
      v11 += 2;
      v12 -= 2;
    }

    while (v11 < 0x20);
  }

LABEL_12:
  Madusa::ProfileTimer::~ProfileTimer(v14);
  return a1 + 16;
}

uint64_t Madusa::Demod::_Execute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.i16[3] = v3[3];
  v4.i16[2] = *v3 | 0xFFE0;
  v4.i16[1] = v4.u8[6];
  v4.i16[0] = v4.i16[2];
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v4), v5), xmmword_10006A2F0));
  v7.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A300, v6)).u32[0];
  v7.i32[1] = vmovn_s32(vcgtq_f32(v6, xmmword_10006A300)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v7, 0xFuLL))) & ((v3[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Demod::Execute(a1, a2, a3);
}

uint64_t Madusa::Demod::_Execute_Alt(uint64_t a1)
{
  v2.i16[3] = v1[3];
  v2.i16[2] = *v1 | 0xFFE0;
  v2.i16[1] = v2.u8[6];
  v2.i16[0] = v2.i16[2];
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  v4 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v2), v3), xmmword_10006A310));
  v5.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A320, v4)).u32[0];
  v5.i32[1] = vmovn_s32(vcgtq_f32(v4, xmmword_10006A320)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v5, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Demod::Execute_Alt(a1);
}

uint64_t Madusa::Demod::ExecuteDemod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  func = __find_func(0xCF9FBF1F202020A0, 556024010);
  func(a1);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = vmul_f32(vrev64_s32(v8), v7);
  v10 = vsub_f32(v9, vdup_lane_s32(v9, 1)).f32[0];
  if (v10 == 0.0)
  {
    v11 = vzip1_s32(v8, v7);
    v12 = vzip2_s32(v8, v7);
  }

  else
  {
    v13 = 1.0 / v10;
    v14.f32[0] = -v13;
    v14.f32[1] = v13;
    v11 = vmul_f32(v14, v8);
    v12 = vmul_f32(v7, vrev64_s32(v14));
  }

  *v15.i8 = v11;
  v15.u64[1] = v12;
  v36 = vuzp2q_s32(v15, vrev64q_s32(v15));
  v16 = vadd_f32(vmla_f32(vdup_n_s32(0xC2810000), vadd_f32(v12, v11), 0x3F0000003F000000), vrev64_s32(*(a2 + 8)));
  v17 = vmla_f32(v16, vrndm_f32(vmul_f32(v16, 0x3C0000003C000000)), 0xC3000000C3000000);
  *v15.i8 = vadd_f32(v17, 0x3F0000003F000000);
  v34 = vrev64_s32(vsub_f32(vrnd_f32(*v15.i8), v17));
  v35 = vrev64_s32(vcvt_s32_f32(*v15.i8));
  v18 = __find_func(0x1F5FFF9FC0E00020, -236715958);
  if (v18(a1, &v36))
  {
    v19 = __find_func(0xCF3F5F7F208000E0, 562340010);
    if (v19(a1, &v36))
    {
      v20 = 9;
    }

    else
    {
      v20 = 5;
    }
  }

  else
  {
    v20 = 1;
  }

  v21 = &Madusa::Demod::mDemodBlockOffsets;
  do
  {
    v22 = __find_func(0x5F9FDF3FE02000E0, -1323032342);
    v22(a1, a3, a2, &v34, v21, a1 + 68728);
    v23 = __find_func(0xBF7FDFFFA04040E0, 1371807786);
    v23(a1, a1 + 68728, a1 + 85128);
    v24 = __find_func(0x8F1F9F5FC0604040, 1638162570);
    v24(a1, a1 + 85128, &v35, a1 + 85136, a1 + 86216);
    v21 += 8;
    --v20;
  }

  while (v20);
  v25 = *(a2 + 29);
  v26 = __find_func(0xCFFFDF7FC0C040C0, 558112938);
  v27 = v26(a1, a1 + 85136, a1 + 86216, v25);
  memcpy((a1 + 16), v27, 0x44CuLL);
  *(a1 + 1096) = *(a2 + 32);
  v28.i16[0] = *v33 | 0xFFE0;
  v28.i16[1] = v33[3];
  v28.i32[1] = v28.i32[0];
  v29.i64[0] = 0xFF000000FFLL;
  v29.i64[1] = 0xFF000000FFLL;
  v30 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v28), v29), xmmword_10006A330));
  v31.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A340, v30)).u32[0];
  v31.i32[1] = vmovn_s32(vcgtq_f32(v30, xmmword_10006A340)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v31, 0xFuLL))) & ((v33[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    fegetenv(&v37);
    v37.__fpcr &= QuickCodec::mask + 70947740;
    fesetenv(&v37);
  }

  return a1 + 16;
}

uint64_t Madusa::Demod::_ExecuteDemod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v6 = 4714206;
  }

  else
  {
    v6 = 330764;
  }

  v7 = 1;
  v8 = 2004762;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = v7;
        if (v8 <= 2004832)
        {
          break;
        }

        if (v8 == 2004833)
        {
          if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || (v7 = 1, v8 = 330764, v4[3] != ((QuickCodec::mask ^ v5) / 0x4F6C12)))
          {
            v8 = 330818;
            v7 = v11;
          }
        }

        else if (v8 == 2335509)
        {
          v4 = v3;
          v8 = 2004779;
        }

        else
        {
          v12 = v8 == 4714206;
          v8 = 2004833;
          if (v12)
          {
            v5 = -1174400325;
          }
        }
      }

      if (v8 <= 2004761)
      {
        break;
      }

      v9 = (QuickCodec::mask != -70947757) | v7;
      if (v8 == 2004779)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      if (v8 == 2004779)
      {
        LODWORD(v11) = v9;
      }

      v12 = v8 == 2004762;
      if (v8 == 2004762)
      {
        v8 = 330764;
      }

      else
      {
        v8 = v10;
      }

      if (v12)
      {
        v7 = 0;
      }

      else
      {
        v7 = v11;
      }
    }

    if (v8 != 330764)
    {
      break;
    }

    v8 = 330818;
    if ((v7 & 1) == 0)
    {
      v8 = 2335509;
    }
  }

  if (v7)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Demod::ExecuteDemod(a1, a2, a3);
}

uint64_t Madusa::Demod::_ExecuteDemod_Alt(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v4 = 6659055;
  }

  else
  {
    v4 = 1653543;
  }

  v5 = 1;
  v6 = 2864541;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v9 = v5;
        if (v6 <= 2864611)
        {
          break;
        }

        if (v6 == 2864612)
        {
          if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu || (v5 = 1, v6 = 1653543, v2[3] != ((QuickCodec::mask ^ v3) / 0x27540B)))
          {
            v6 = 1653597;
            v5 = v9;
          }
        }

        else if (v6 == 4518067)
        {
          v2 = v1;
          v6 = 2864558;
        }

        else
        {
          v10 = v6 == 6659055;
          v6 = 2864612;
          if (v10)
          {
            v3 = -615189169;
          }
        }
      }

      if (v6 <= 2864540)
      {
        break;
      }

      v7 = (QuickCodec::mask != -70947757) | v5;
      if (v6 == 2864558)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      if (v6 == 2864558)
      {
        LODWORD(v9) = v7;
      }

      v10 = v6 == 2864541;
      if (v6 == 2864541)
      {
        v6 = 1653543;
      }

      else
      {
        v6 = v8;
      }

      if (v10)
      {
        v5 = 0;
      }

      else
      {
        v5 = v9;
      }
    }

    if (v6 != 1653543)
    {
      break;
    }

    v6 = 1653597;
    if ((v5 & 1) == 0)
    {
      v6 = 4518067;
    }
  }

  if (v5)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Demod::ExecuteDemod_Alt(a1);
}

float32x4_t *Madusa::Demod::CrissCrossFilter(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = *a2 + 528;
  v5 = *a2 + 1048;
  v6 = *a3 + 8;
  v7 = *a3 + 16392;
  v8 = *a2 + 12;
  v10 = v6 < *a2 + 67088 && v7 > v4;
  if (v6 < *a2 + 66564 && v8 < v7)
  {
    v10 = 1;
  }

  v13 = v6 < *a2 + 67604 && *a2 + 1052 < v7 || v10;
  if (v13)
  {
    v14 = *a2 + 536;
    for (i = 1; i != 129; ++i)
    {
      v16 = 0;
      v17 = v14;
      do
      {
        v18 = *(v17 - 2);
        v19 = *(v17 - 1) + *(v17 - 1);
        v20 = *v17++;
        *&v21 = v19 - (v18 + v20);
        v22 = v19 - (*(v8 + 4 * v16) + *(v5 + 4 * v16 + 4));
        v23 = (__PAIR64__(*&v21 > 0.0, v21) - COERCE_UNSIGNED_INT(0.0)) >> 32;
        if (v22 > 0.0)
        {
          LOBYTE(v23) = v23 + 1;
        }

        *(v6 + v16++) = v23 - (v22 < 0.0);
      }

      while (v16 != 128);
      v6 += 128;
      v5 += 520;
      v14 += 520;
      v8 += 520;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = vaddq_f32(*(v4 + v24 + 52), *(v4 + v24 + 52));
      v27 = vaddq_f32(*(v4 + v24 + 36), *(v4 + v24 + 36));
      v28 = vaddq_f32(*(v4 + v24 + 20), *(v4 + v24 + 20));
      v29 = vaddq_f32(*(v4 + v24 + 4), *(v4 + v24 + 4));
      v30 = vsubq_f32(v29, vaddq_f32(*(v4 + v24), *(v4 + v24 + 8)));
      v31 = vsubq_f32(v28, vaddq_f32(*(v4 + v24 + 16), *(v4 + v24 + 24)));
      v32 = vsubq_f32(v27, vaddq_f32(*(v4 + v24 + 32), *(v4 + v24 + 40)));
      v33 = vsubq_f32(v26, vaddq_f32(*(v4 + v24 + 48), *(v4 + v24 + 56)));
      v34 = (v6 + v25);
      v35 = vsubq_f32(v29, vaddq_f32(*(v3 + v24 + 12), *(v5 + v24 + 4)));
      v36 = vsubq_f32(v28, vaddq_f32(*(v3 + v24 + 28), *(v5 + v24 + 20)));
      v37 = vsubq_f32(v27, vaddq_f32(*(v3 + v24 + 44), *(v5 + v24 + 36)));
      v38 = vsubq_f32(v26, vaddq_f32(*(v3 + v24 + 60), *(v5 + v24 + 52)));
      v39 = vaddq_s8(vsubq_s8(vsubq_s8(vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v30), vcltzq_f32(v31)), vuzp1q_s16(vcltzq_f32(v32), vcltzq_f32(v33))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v30), vcgtzq_f32(v31)), vuzp1q_s16(vcgtzq_f32(v32), vcgtzq_f32(v33)))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v35), vcgtzq_f32(v36)), vuzp1q_s16(vcgtzq_f32(v37), vcgtzq_f32(v38)))), vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v35), vcltzq_f32(v36)), vuzp1q_s16(vcltzq_f32(v37), vcltzq_f32(v38))));
      v40 = vaddq_f32(*(v4 + v24 + 116), *(v4 + v24 + 116));
      v41 = vaddq_f32(*(v4 + v24 + 100), *(v4 + v24 + 100));
      v42 = vaddq_f32(*(v4 + v24 + 84), *(v4 + v24 + 84));
      v43 = vaddq_f32(*(v4 + v24 + 68), *(v4 + v24 + 68));
      v44 = vsubq_f32(v43, vaddq_f32(*(v4 + v24 + 64), *(v4 + v24 + 72)));
      v45 = vsubq_f32(v42, vaddq_f32(*(v4 + v24 + 80), *(v4 + v24 + 88)));
      v46 = vsubq_f32(v41, vaddq_f32(*(v4 + v24 + 96), *(v4 + v24 + 104)));
      v47 = vsubq_f32(v40, vaddq_f32(*(v4 + v24 + 112), *(v4 + v24 + 120)));
      v48 = vsubq_f32(v43, vaddq_f32(*(v3 + v24 + 76), *(v5 + v24 + 68)));
      v49 = vsubq_f32(v42, vaddq_f32(*(v3 + v24 + 92), *(v5 + v24 + 84)));
      v50 = vsubq_f32(v41, vaddq_f32(*(v3 + v24 + 108), *(v5 + v24 + 100)));
      v51 = vsubq_f32(v40, vaddq_f32(*(v3 + v24 + 124), *(v5 + v24 + 116)));
      *v34 = v39;
      v34[1] = vaddq_s8(vsubq_s8(vsubq_s8(vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v44), vcltzq_f32(v45)), vuzp1q_s16(vcltzq_f32(v46), vcltzq_f32(v47))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v44), vcgtzq_f32(v45)), vuzp1q_s16(vcgtzq_f32(v46), vcgtzq_f32(v47)))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v48), vcgtzq_f32(v49)), vuzp1q_s16(vcgtzq_f32(v50), vcgtzq_f32(v51)))), vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v48), vcltzq_f32(v49)), vuzp1q_s16(vcltzq_f32(v50), vcltzq_f32(v51))));
      v52 = vaddq_f32(*(v4 + v24 + 180), *(v4 + v24 + 180));
      v53 = vaddq_f32(*(v4 + v24 + 164), *(v4 + v24 + 164));
      v54 = vaddq_f32(*(v4 + v24 + 148), *(v4 + v24 + 148));
      v55 = vaddq_f32(*(v4 + v24 + 132), *(v4 + v24 + 132));
      v56 = vsubq_f32(v55, vaddq_f32(*(v4 + v24 + 128), *(v4 + v24 + 136)));
      v57 = vsubq_f32(v54, vaddq_f32(*(v4 + v24 + 144), *(v4 + v24 + 152)));
      v58 = vsubq_f32(v53, vaddq_f32(*(v4 + v24 + 160), *(v4 + v24 + 168)));
      v59 = vsubq_f32(v52, vaddq_f32(*(v4 + v24 + 176), *(v4 + v24 + 184)));
      v60 = vsubq_f32(v55, vaddq_f32(*(v3 + v24 + 140), *(v5 + v24 + 132)));
      v61 = vsubq_f32(v54, vaddq_f32(*(v3 + v24 + 156), *(v5 + v24 + 148)));
      v62 = vsubq_f32(v53, vaddq_f32(*(v3 + v24 + 172), *(v5 + v24 + 164)));
      v63 = vsubq_f32(v52, vaddq_f32(*(v3 + v24 + 188), *(v5 + v24 + 180)));
      v64 = vaddq_s8(vsubq_s8(vsubq_s8(vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v56), vcltzq_f32(v57)), vuzp1q_s16(vcltzq_f32(v58), vcltzq_f32(v59))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v56), vcgtzq_f32(v57)), vuzp1q_s16(vcgtzq_f32(v58), vcgtzq_f32(v59)))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v60), vcgtzq_f32(v61)), vuzp1q_s16(vcgtzq_f32(v62), vcgtzq_f32(v63)))), vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v60), vcltzq_f32(v61)), vuzp1q_s16(vcltzq_f32(v62), vcltzq_f32(v63))));
      v65 = vaddq_f32(*(v4 + v24 + 244), *(v4 + v24 + 244));
      v66 = vaddq_f32(*(v4 + v24 + 228), *(v4 + v24 + 228));
      v67 = vaddq_f32(*(v4 + v24 + 212), *(v4 + v24 + 212));
      v68 = vaddq_f32(*(v4 + v24 + 196), *(v4 + v24 + 196));
      v69 = vsubq_f32(v68, vaddq_f32(*(v4 + v24 + 192), *(v4 + v24 + 200)));
      v70 = vsubq_f32(v67, vaddq_f32(*(v4 + v24 + 208), *(v4 + v24 + 216)));
      v71 = vsubq_f32(v66, vaddq_f32(*(v4 + v24 + 224), *(v4 + v24 + 232)));
      v72 = vsubq_f32(v65, vaddq_f32(*(v4 + v24 + 240), *(v4 + v24 + 248)));
      v73 = vsubq_f32(v68, vaddq_f32(*(v3 + v24 + 204), *(v5 + v24 + 196)));
      v74 = vsubq_f32(v67, vaddq_f32(*(v3 + v24 + 220), *(v5 + v24 + 212)));
      v75 = vsubq_f32(v66, vaddq_f32(*(v3 + v24 + 236), *(v5 + v24 + 228)));
      v76 = vsubq_f32(v65, vaddq_f32(*(v3 + v24 + 252), *(v5 + v24 + 244)));
      v34[2] = v64;
      v34[3] = vaddq_s8(vsubq_s8(vsubq_s8(vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v69), vcltzq_f32(v70)), vuzp1q_s16(vcltzq_f32(v71), vcltzq_f32(v72))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v69), vcgtzq_f32(v70)), vuzp1q_s16(vcgtzq_f32(v71), vcgtzq_f32(v72)))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v73), vcgtzq_f32(v74)), vuzp1q_s16(vcgtzq_f32(v75), vcgtzq_f32(v76)))), vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v73), vcltzq_f32(v74)), vuzp1q_s16(vcltzq_f32(v75), vcltzq_f32(v76))));
      v77 = vaddq_f32(*(v4 + v24 + 308), *(v4 + v24 + 308));
      v78 = vaddq_f32(*(v4 + v24 + 292), *(v4 + v24 + 292));
      v79 = vaddq_f32(*(v4 + v24 + 276), *(v4 + v24 + 276));
      v80 = vaddq_f32(*(v4 + v24 + 260), *(v4 + v24 + 260));
      v81 = vsubq_f32(v80, vaddq_f32(*(v4 + v24 + 256), *(v4 + v24 + 264)));
      v82 = vsubq_f32(v79, vaddq_f32(*(v4 + v24 + 272), *(v4 + v24 + 280)));
      v83 = vsubq_f32(v78, vaddq_f32(*(v4 + v24 + 288), *(v4 + v24 + 296)));
      v84 = vsubq_f32(v77, vaddq_f32(*(v4 + v24 + 304), *(v4 + v24 + 312)));
      v85 = vsubq_f32(v80, vaddq_f32(*(v3 + v24 + 268), *(v5 + v24 + 260)));
      v86 = vsubq_f32(v79, vaddq_f32(*(v3 + v24 + 284), *(v5 + v24 + 276)));
      v87 = vsubq_f32(v78, vaddq_f32(*(v3 + v24 + 300), *(v5 + v24 + 292)));
      v88 = vsubq_f32(v77, vaddq_f32(*(v3 + v24 + 316), *(v5 + v24 + 308)));
      v89 = vaddq_s8(vsubq_s8(vsubq_s8(vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v81), vcltzq_f32(v82)), vuzp1q_s16(vcltzq_f32(v83), vcltzq_f32(v84))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v81), vcgtzq_f32(v82)), vuzp1q_s16(vcgtzq_f32(v83), vcgtzq_f32(v84)))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v85), vcgtzq_f32(v86)), vuzp1q_s16(vcgtzq_f32(v87), vcgtzq_f32(v88)))), vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v85), vcltzq_f32(v86)), vuzp1q_s16(vcltzq_f32(v87), vcltzq_f32(v88))));
      v90 = vaddq_f32(*(v4 + v24 + 372), *(v4 + v24 + 372));
      v91 = vaddq_f32(*(v4 + v24 + 356), *(v4 + v24 + 356));
      v92 = vaddq_f32(*(v4 + v24 + 340), *(v4 + v24 + 340));
      v93 = vaddq_f32(*(v4 + v24 + 324), *(v4 + v24 + 324));
      v94 = vsubq_f32(v93, vaddq_f32(*(v4 + v24 + 320), *(v4 + v24 + 328)));
      v95 = vsubq_f32(v92, vaddq_f32(*(v4 + v24 + 336), *(v4 + v24 + 344)));
      v96 = vsubq_f32(v91, vaddq_f32(*(v4 + v24 + 352), *(v4 + v24 + 360)));
      v97 = vsubq_f32(v90, vaddq_f32(*(v4 + v24 + 368), *(v4 + v24 + 376)));
      v98 = vsubq_f32(v93, vaddq_f32(*(v3 + v24 + 332), *(v5 + v24 + 324)));
      v99 = vsubq_f32(v92, vaddq_f32(*(v3 + v24 + 348), *(v5 + v24 + 340)));
      v100 = vsubq_f32(v91, vaddq_f32(*(v3 + v24 + 364), *(v5 + v24 + 356)));
      v101 = vsubq_f32(v90, vaddq_f32(*(v3 + v24 + 380), *(v5 + v24 + 372)));
      v34[4] = v89;
      v34[5] = vaddq_s8(vsubq_s8(vsubq_s8(vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v94), vcltzq_f32(v95)), vuzp1q_s16(vcltzq_f32(v96), vcltzq_f32(v97))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v94), vcgtzq_f32(v95)), vuzp1q_s16(vcgtzq_f32(v96), vcgtzq_f32(v97)))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v98), vcgtzq_f32(v99)), vuzp1q_s16(vcgtzq_f32(v100), vcgtzq_f32(v101)))), vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v98), vcltzq_f32(v99)), vuzp1q_s16(vcltzq_f32(v100), vcltzq_f32(v101))));
      v102 = vaddq_f32(*(v4 + v24 + 436), *(v4 + v24 + 436));
      v103 = vaddq_f32(*(v4 + v24 + 420), *(v4 + v24 + 420));
      v104 = vaddq_f32(*(v4 + v24 + 404), *(v4 + v24 + 404));
      v105 = vaddq_f32(*(v4 + v24 + 388), *(v4 + v24 + 388));
      v106 = vsubq_f32(v105, vaddq_f32(*(v4 + v24 + 384), *(v4 + v24 + 392)));
      v107 = vsubq_f32(v104, vaddq_f32(*(v4 + v24 + 400), *(v4 + v24 + 408)));
      v108 = vsubq_f32(v103, vaddq_f32(*(v4 + v24 + 416), *(v4 + v24 + 424)));
      v109 = vsubq_f32(v102, vaddq_f32(*(v4 + v24 + 432), *(v4 + v24 + 440)));
      v110 = vsubq_f32(v105, vaddq_f32(*(v3 + v24 + 396), *(v5 + v24 + 388)));
      v111 = vsubq_f32(v104, vaddq_f32(*(v3 + v24 + 412), *(v5 + v24 + 404)));
      v112 = vsubq_f32(v103, vaddq_f32(*(v3 + v24 + 428), *(v5 + v24 + 420)));
      v113 = vsubq_f32(v102, vaddq_f32(*(v3 + v24 + 444), *(v5 + v24 + 436)));
      v114 = vaddq_s8(vsubq_s8(vsubq_s8(vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v106), vcltzq_f32(v107)), vuzp1q_s16(vcltzq_f32(v108), vcltzq_f32(v109))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v106), vcgtzq_f32(v107)), vuzp1q_s16(vcgtzq_f32(v108), vcgtzq_f32(v109)))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v110), vcgtzq_f32(v111)), vuzp1q_s16(vcgtzq_f32(v112), vcgtzq_f32(v113)))), vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v110), vcltzq_f32(v111)), vuzp1q_s16(vcltzq_f32(v112), vcltzq_f32(v113))));
      result = (v4 + v24 + 452);
      v116 = vaddq_f32(*(v4 + v24 + 500), *(v4 + v24 + 500));
      v117 = vaddq_f32(*(v4 + v24 + 484), *(v4 + v24 + 484));
      v118 = vaddq_f32(*(v4 + v24 + 468), *(v4 + v24 + 468));
      v119 = vaddq_f32(*result, *result);
      v120 = vsubq_f32(v119, vaddq_f32(*(v4 + v24 + 448), *(v4 + v24 + 456)));
      v121 = vsubq_f32(v118, vaddq_f32(*(v4 + v24 + 464), *(v4 + v24 + 472)));
      v122 = vsubq_f32(v117, vaddq_f32(*(v4 + v24 + 480), *(v4 + v24 + 488)));
      v123 = vsubq_f32(v116, vaddq_f32(*(v4 + v24 + 496), *(v4 + v24 + 504)));
      v124 = vsubq_f32(v119, vaddq_f32(*(v3 + v24 + 460), *(v5 + v24 + 452)));
      v125 = vsubq_f32(v118, vaddq_f32(*(v3 + v24 + 476), *(v5 + v24 + 468)));
      v126 = vsubq_f32(v117, vaddq_f32(*(v3 + v24 + 492), *(v5 + v24 + 484)));
      v127 = vsubq_f32(v116, vaddq_f32(*(v3 + v24 + 508), *(v5 + v24 + 500)));
      v34[6] = v114;
      v34[7] = vaddq_s8(vsubq_s8(vsubq_s8(vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v120), vcltzq_f32(v121)), vuzp1q_s16(vcltzq_f32(v122), vcltzq_f32(v123))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v120), vcgtzq_f32(v121)), vuzp1q_s16(vcgtzq_f32(v122), vcgtzq_f32(v123)))), vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v124), vcgtzq_f32(v125)), vuzp1q_s16(vcgtzq_f32(v126), vcgtzq_f32(v127)))), vuzp1q_s8(vuzp1q_s16(vcltzq_f32(v124), vcltzq_f32(v125)), vuzp1q_s16(vcltzq_f32(v126), vcltzq_f32(v127))));
      v25 += 128;
      v24 += 520;
    }

    while (v25 != 0x4000);
  }

  return result;
}

float32x4_t *Madusa::Demod::_CrissCrossFilter(uint64_t a1, uint64_t *a2, void *a3)
{
  v4.i16[3] = v3[3];
  v4.i16[2] = *v3 | 0xFFE0;
  v4.i16[1] = v4.u8[6];
  v4.i16[0] = v4.i16[2];
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v4), v5), xmmword_10006A350));
  v7.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A360, v6)).u32[0];
  v7.i32[1] = vmovn_s32(vcgtq_f32(v6, xmmword_10006A360)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v7, 0xFuLL))) & ((v3[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Demod::CrissCrossFilter(a1, a2, a3);
}

uint64_t Madusa::Demod::DescrambleAndAccumulateChips(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = *a3 & 0x7F;
  v7 = a3[1] & 0x7F;
  v8 = *a2 + 8;
  v9 = &Madusa::Demod::mDescrambleLUT;
  do
  {
    v10 = 128;
    v11 = v9;
    v12 = v7;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = (v6 << 7) + v12;
      *(a4 + 2 * v14) += *(v15 + v8);
      v16 = *(v15 + v8);
      if (v16 < 0)
      {
        v16 = -v16;
      }

      result = *(a5 + 2 * v13) + v16;
      *(a5 + 2 * v13) = result;
      if (v12 <= 126)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }

      --v10;
    }

    while (v10);
    if (v6 <= 126)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    ++v5;
    v9 += 128;
  }

  while (v5 != 128);
  return result;
}

uint64_t Madusa::Demod::_DescrambleAndAccumulateChips(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v6.i16[3] = v5[3];
  v6.i16[2] = *v5 | 0xFFE0;
  v6.i16[1] = v6.u8[6];
  v6.i16[0] = v6.i16[2];
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v6), v7), xmmword_10006A370));
  v9.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A380, v8)).u32[0];
  v9.i32[1] = vmovn_s32(vcgtq_f32(v8, xmmword_10006A380)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v9, 0xFuLL))) & ((v5[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Demod::DescrambleAndAccumulateChips(a1, a2, a3, a4, a5);
}

uint64_t Madusa::Demod::XNor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = 0;
  if (a4)
  {
    do
    {
      v7 = a1 + v6;
      *(v7 + 16) = *(a2 + v6) - *(a2 + v6 + 540);
      *(v7 + 556) = *(a3 + v6) + *(a3 + v6 + 540);
      v6 += 2;
    }

    while (v6 != 540);
  }

  else
  {
    do
    {
      v8 = a1 + v6;
      *(v8 + 16) = *(a2 + v6 + 540) - *(a2 + v6);
      *(v8 + 556) = *(a3 + v6) + *(a3 + v6 + 540);
      v6 += 2;
    }

    while (v6 != 540);
  }

  if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu)
  {
    if (QuickCodec::mask != -70947757)
    {
      goto LABEL_14;
    }

    return a1 + 16;
  }

  if (v4[3] != 212 && QuickCodec::mask == -70947757)
  {
    return a1 + 16;
  }

LABEL_14:
  QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
  func = __find_func(0xDF9FDF1FC0E04070, 824451274);
  v12 = 600;
  while (*func != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || func[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || func[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || func[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
  {
    func += 4;
    if (!--v12)
    {
      goto LABEL_21;
    }
  }

  vars0 = func;
  vars8 = 0u;
LABEL_21:
  QuickCodec::mask += 16;
  return a1 + 16;
}

uint64_t Madusa::Demod::_XNor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 10172244;
  }

  else
  {
    v7 = 349014;
  }

  v8 = 1;
  v9 = 8484510;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v12 = v8;
        if (v9 <= 8484580)
        {
          break;
        }

        if (v9 == 8484581)
        {
          if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 349014, v5[3] != ((QuickCodec::mask ^ v6) / 0xC9D94)))
          {
            v9 = 349068;
            v8 = v12;
          }
        }

        else if (v9 == 8833507)
        {
          v5 = v4;
          v9 = 8484527;
        }

        else
        {
          v13 = v9 == 10172244;
          v9 = 8484581;
          if (v13)
          {
            v6 = -239660349;
          }
        }
      }

      if (v9 <= 8484509)
      {
        break;
      }

      v10 = (QuickCodec::mask != -70947757) | v8;
      if (v9 == 8484527)
      {
        v11 = v7;
      }

      else
      {
        v11 = v9;
      }

      if (v9 == 8484527)
      {
        LODWORD(v12) = v10;
      }

      v13 = v9 == 8484510;
      if (v9 == 8484510)
      {
        v9 = 349014;
      }

      else
      {
        v9 = v11;
      }

      if (v13)
      {
        v8 = 0;
      }

      else
      {
        v8 = v12;
      }
    }

    if (v9 != 349014)
    {
      break;
    }

    v9 = 349068;
    if ((v8 & 1) == 0)
    {
      v9 = 8833507;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  return Madusa::Demod::XNor(a1, a2, a3, a4);
}

BOOL Madusa::Demod::CornerBlocksNeeded(uint64_t a1, float32x2_t *a2)
{
  v19 = *a2;
  v18 = a2[1];
  v3.i16[0] = *v2 | 0xFFE0;
  v3.i16[1] = v2[3];
  v3.i32[1] = v3.i32[0];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006A390));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A3A0, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006A3A0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    func = __find_func(0xBFBF1F1FC0C00040, 1359274186);
    func(0, 104);
  }

  v8 = atan2f(v19.f32[0], v18.f32[0]);
  v9 = sinf(v8 + v8);
  v10 = v18;
  v11 = v19;
  v12 = vmul_lane_f32(v10, v10, 1);
  v13 = vadd_f32(vmul_f32(v10, v10), vmul_f32(v11, v11));
  v14 = vadd_f32(v12, vmul_lane_f32(v11, v11, 1));
  v15 = vadd_f32(vdup_lane_s32(v14, 1), v13);
  v16 = vmul_f32(v14, vzip1_s32(v14, v13));
  v16.f32[0] = sqrtf((sqrtf(fmaxf(vmul_f32(v15, v15).f32[0] + (-4.0 * vsub_f32(vdup_lane_s32(v16, 1), v16).f32[0]), 0.0)) + v15.f32[0]) * 0.5);
  return (v16.f32[0] + (v16.f32[0] * (-0.29289 * fabsf(v9)))) > 1.0;
}

BOOL Madusa::Demod::_CornerBlocksNeeded(uint64_t a1, float32x2_t *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::Demod::CornerBlocksNeeded(a1, a2);
}

BOOL Madusa::Demod::SideBlocksNeeded(uint64_t a1, float32x2_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    if (QuickCodec::mask == -70947757)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v2[3] == 212 || QuickCodec::mask != -70947757)
  {
LABEL_10:
    v6 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v7 = &unk_10003FCF4;
    v8 = -2;
    v9 = -1;
    do
    {
      qword_100074968[v9 + 1 + ((*(v7 - 1) ^ v6) / 0x9D28AF)] = qword_100074968[v9 + ((*v7 ^ v6) / 0x9D28AF)];
      v7 += 2;
      v8 += 2;
      v9 -= 2;
    }

    while (v8 < 0x20);
  }

LABEL_12:
  v20 = v4;
  v21 = v3;
  v10 = atan2f(v3.f32[0], v4.f32[0]);
  v11 = sinf(v10 + v10);
  v12 = v20;
  v13 = v21;
  v14 = vmul_lane_f32(v12, v12, 1);
  v15 = vadd_f32(vmul_f32(v12, v12), vmul_f32(v13, v13));
  v16 = vadd_f32(v14, vmul_lane_f32(v13, v13, 1));
  v17 = vadd_f32(vdup_lane_s32(v16, 1), v15);
  v18 = vmul_f32(v16, vzip1_s32(v16, v15));
  v18.f32[0] = sqrtf((sqrtf(fmaxf(vmul_f32(v17, v17).f32[0] + (-4.0 * vsub_f32(vdup_lane_s32(v18, 1), v18).f32[0]), 0.0)) + v17.f32[0]) * 0.5);
  return (v18.f32[0] + (v18.f32[0] * (0.4142 * fabsf(v11)))) > 0.97692;
}

BOOL Madusa::Demod::_SideBlocksNeeded(uint64_t a1, float32x2_t *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::Demod::SideBlocksNeeded(a1, a2);
}

uint64_t Madusa::SubBytePixelDirectionAndOffset::Reset(uint64_t result, int a2, int a3, unsigned int a4)
{
  *result = a3;
  *(result + 4) = 1;
  *(result + 8) = a4;
  *(result + 12) = 1;
  if ((a2 - 1) <= 6)
  {
    if (a4 <= 7 && !(a4 % a2))
    {
      return result;
    }

LABEL_7:
    *(result + 12) = 0;
    *(result + 4) = 0;
    return result;
  }

  if (a2 == -1 || a4)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t Madusa::SubBytePixelDirectionAndOffset::SubBytePixelDirectionAndOffset(uint64_t this)
{
  *this = 1;
  *(this + 4) = 1;
  *(this + 8) = 0;
  *(this + 12) = 1;
  return this;
}

uint64_t Madusa::SubBytePixelDirectionAndOffset::IsValid(Madusa::SubBytePixelDirectionAndOffset *this)
{
  if (*(this + 12) == 1)
  {
    return *(this + 4) & 1;
  }

  else
  {
    return 0;
  }
}

void *Madusa::FilterFMag::FilterFMag(void *a1, uint64_t a2)
{
  *a1 = a2;
  bzero(a1 + 1, 0x220uLL);
  return a1;
}

float32_t Madusa::FilterFMag::GetOverlapRowMinMax(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 + (a3 << 9);
  v4 = (v3 + 66584);
  v5 = *(a1 + 528);
  v6 = *(a1 + 544);
  v7 = v5 + 128;
  v8 = v6 + 128;
  v9 = v3 + 68632;
  v11 = v5 < v3 + 68632 && v7 > v4;
  v13 = v6 < v9 && v8 > v4;
  v14 = v6 >= v7 || v5 >= v8;
  if (!v14 || v11 || v13)
  {
    for (i = 0; i != 128; i += 4)
    {
      v22 = v4[1];
      v23 = v4[2];
      v24 = v4[3];
      v25 = v4[128];
      v26 = v4[129];
      v27 = v4[130];
      v28 = v4[131];
      v29 = v4[256];
      v30 = v4[257];
      v31 = v4[258];
      v32 = v4[259];
      v33 = fmaxf(fmaxf(fmaxf(*v4, fmaxf(v22, fmaxf(v23, v24))), fmaxf(v25, fmaxf(v26, fmaxf(v27, v28)))), fmaxf(v29, fmaxf(v30, fmaxf(v31, v32))));
      v34 = v4[384];
      v35 = v4[385];
      v36 = v4[386];
      v37 = v4[387];
      *(v5 + i) = fminf(fminf(fminf(fminf(*v4, fminf(v22, fminf(v23, v24))), fminf(v25, fminf(v26, fminf(v27, v28)))), fminf(v29, fminf(v30, fminf(v31, v32)))), fminf(v34, fminf(v35, fminf(v36, v37))));
      v20.f32[0] = fmaxf(v33, fmaxf(v34, fmaxf(v35, fmaxf(v36, v37))));
      *(v6 + i) = v20.i32[0];
      v4 += 4;
    }
  }

  else
  {
    v15 = 0;
    v16 = v4;
    do
    {
      v39 = vld4q_f32(v16);
      v16 += 16;
      v17 = v4 + 128;
      v40 = vld4q_f32(v17);
      v18 = v4 + 256;
      v41 = vld4q_f32(v18);
      v19 = v4 + 384;
      v42 = vld4q_f32(v19);
      *(v5 + v15) = vminnmq_f32(vminnmq_f32(vminnmq_f32(vminnmq_f32(v39.val[0], vminnmq_f32(v39.val[1], vminnmq_f32(v39.val[2], v39.val[3]))), vminnmq_f32(v40.val[0], vminnmq_f32(v40.val[1], vminnmq_f32(v40.val[2], v40.val[3])))), vminnmq_f32(v41.val[0], vminnmq_f32(v41.val[1], vminnmq_f32(v41.val[2], v41.val[3])))), vminnmq_f32(v42.val[0], vminnmq_f32(v42.val[1], vminnmq_f32(v42.val[2], v42.val[3]))));
      v20 = vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v39.val[0], vmaxnmq_f32(v39.val[1], vmaxnmq_f32(v39.val[2], v39.val[3]))), vmaxnmq_f32(v40.val[0], vmaxnmq_f32(v40.val[1], vmaxnmq_f32(v40.val[2], v40.val[3])))), vmaxnmq_f32(v41.val[0], vmaxnmq_f32(v41.val[1], vmaxnmq_f32(v41.val[2], v41.val[3])))), vmaxnmq_f32(v42.val[0], vmaxnmq_f32(v42.val[1], vmaxnmq_f32(v42.val[2], v42.val[3]))));
      *(v6 + v15) = v20;
      v15 += 16;
      v4 = v16;
    }

    while (v15 != 128);
  }

  return v20.f32[0];
}

void Madusa::FilterFMag::Execute(float *a1, uint64_t a2)
{
  v4 = (a1 + 98);
  bzero((**a1 + 8), 0x8200uLL);
  *(a1 + 65) = a1 + 2;
  *(a1 + 66) = a1 + 34;
  *(a1 + 67) = a1 + 66;
  *(a1 + 68) = v4;
  v5 = a2 + 66584;
  v6 = (a2 + 66584);
  if ((a1 + 34) >= a2 + 68632 || v5 >= (a1 + 130))
  {
    v25 = 32;
    v26 = v4;
    v27 = (a2 + 66584);
    do
    {
      v57 = vld4q_f32(v27);
      v27 += 16;
      v28 = v6 + 128;
      v58 = vld4q_f32(v28);
      v29 = v6 + 256;
      v59 = vld4q_f32(v29);
      v30 = v6 + 384;
      v60 = vld4q_f32(v30);
      v26[-16] = vminnmq_f32(vminnmq_f32(vminnmq_f32(vminnmq_f32(v57.val[0], vminnmq_f32(v57.val[1], vminnmq_f32(v57.val[2], v57.val[3]))), vminnmq_f32(v58.val[0], vminnmq_f32(v58.val[1], vminnmq_f32(v58.val[2], v58.val[3])))), vminnmq_f32(v59.val[0], vminnmq_f32(v59.val[1], vminnmq_f32(v59.val[2], v59.val[3])))), vminnmq_f32(v60.val[0], vminnmq_f32(v60.val[1], vminnmq_f32(v60.val[2], v60.val[3]))));
      *v26++ = vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v57.val[0], vmaxnmq_f32(v57.val[1], vmaxnmq_f32(v57.val[2], v57.val[3]))), vmaxnmq_f32(v58.val[0], vmaxnmq_f32(v58.val[1], vmaxnmq_f32(v58.val[2], v58.val[3])))), vmaxnmq_f32(v59.val[0], vmaxnmq_f32(v59.val[1], vmaxnmq_f32(v59.val[2], v59.val[3])))), vmaxnmq_f32(v60.val[0], vmaxnmq_f32(v60.val[1], vmaxnmq_f32(v60.val[2], v60.val[3]))));
      v6 = v27;
      v25 -= 4;
    }

    while (v25);
  }

  else
  {
    v7 = 32;
    v8 = v4;
    do
    {
      v9 = v6[1];
      v10 = v6[2];
      v11 = v6[3];
      v12 = v6[128];
      v13 = v6[129];
      v14 = v6[130];
      v15 = v6[131];
      v16 = v6[256];
      v17 = v6[257];
      v18 = v6[258];
      v19 = v6[259];
      v20 = v6[384];
      v21 = v6[385];
      v22 = v6[386];
      v23 = v6[387];
      v24 = fmaxf(fmaxf(fmaxf(fmaxf(*v6, fmaxf(v9, fmaxf(v10, v11))), fmaxf(v12, fmaxf(v13, fmaxf(v14, v15)))), fmaxf(v16, fmaxf(v17, fmaxf(v18, v19)))), fmaxf(v20, fmaxf(v21, fmaxf(v22, v23))));
      *(v8 - 64) = fminf(fminf(fminf(fminf(*v6, fminf(v9, fminf(v10, v11))), fminf(v12, fminf(v13, fminf(v14, v15)))), fminf(v16, fminf(v17, fminf(v18, v19)))), fminf(v20, fminf(v21, fminf(v22, v23))));
      *v8++ = v24;
      v6 += 4;
      --v7;
    }

    while (v7);
  }

  v31 = 0;
  do
  {
    v32 = v31;
    v33 = vextq_s8(v4[9], v4[9], 8uLL);
    v4[8] = vextq_s8(v4[8], v4[8], 8uLL);
    v4[9] = v33;
    v31 += 4;
    Madusa::FilterFMag::GetOverlapRowMinMax(a1, a2, v31);
    v34 = fminf(a1[2], a1[34]);
    v35 = fmaxf(a1[66], a1[98]);
    v36 = **a1;
    v37 = v36 + (v32 << 9) + 24;
    v38 = (v32 << 9) + v5 + 16;
    for (i = 1; i != 32; ++i)
    {
      v40 = v35;
      v41 = v34;
      v34 = fminf(a1[i + 2], a1[i + 34]);
      v35 = fmaxf(a1[i + 66], *&v4->i32[i]);
      v42 = fminf(v41, v34);
      v43 = fmaxf(v40, v35);
      v44 = 0.0;
      if (v43 > v42)
      {
        v44 = 1.0 / (v43 - v42);
      }

      v45 = 8;
      v46 = v38;
      v47 = v37;
      do
      {
        v48 = *(v47 - 3);
        *(v47 - 4) = *(v47 - 4) + ((*(v46 - 4) - v42) * v44);
        *(v47 - 3) = v48 + ((*(v46 - 3) - v42) * v44);
        v49 = *(v47 - 1);
        *(v47 - 2) = *(v47 - 2) + ((*(v46 - 2) - v42) * v44);
        *(v47 - 1) = v49 + ((*(v46 - 1) - v42) * v44);
        v50 = v47[1];
        *v47 = *v47 + ((*v46 - v42) * v44);
        v47[1] = v50 + ((v46[1] - v42) * v44);
        v51 = v47[3];
        v47[2] = v47[2] + ((v46[2] - v42) * v44);
        v47[3] = v51 + ((v46[3] - v42) * v44);
        v47 += 128;
        v46 += 128;
        --v45;
      }

      while (v45);
      v37 += 16;
      v38 += 16;
    }
  }

  while (v32 < 0x36);
  v52 = (v36 + 504);
  v53 = 65;
  do
  {
    *(v52 - 124) = *(v52 - 124) * 1.4142;
    v52[3] = v52[3] * 1.4142;
    *(v52 - 123) = *(v52 - 123) * 1.4142;
    v52[2] = v52[2] * 1.4142;
    *(v52 - 122) = *(v52 - 122) * 1.4142;
    v52[1] = v52[1] * 1.4142;
    *(v52 - 121) = *(v52 - 121) * 1.4142;
    *v52 = *v52 * 1.4142;
    v52 += 128;
    --v53;
  }

  while (v53);
  v54 = 0;
  v55 = v36 + 31752;
  do
  {
    v56 = (v36 + v54);
    v56[2] = *(v36 + v54 + 8) * 1.4142;
    *(v55 + v54 + 512) = *(v55 + v54 + 512) * 1.4142;
    v56[130] = *(v36 + v54 + 520) * 1.4142;
    *(v55 + v54) = *(v55 + v54) * 1.4142;
    v56[258] = *(v36 + v54 + 1032) * 1.4142;
    *(v55 + v54 - 512) = *(v55 + v54 - 512) * 1.4142;
    v56[386] = *(v36 + v54 + 1544) * 1.4142;
    *(v55 + v54 - 1024) = *(v55 + v54 - 1024) * 1.4142;
    v54 += 4;
  }

  while (v54 != 512);
}

void Madusa::FilterFMag::_Execute(float *a1, uint64_t a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006A400));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A410, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006A410)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::FilterFMag::Execute(a1, a2);
}

void Madusa::FilterFMag::_Execute_Alt(uint64_t a1)
{
  v2.i16[3] = v1[3];
  v2.i16[2] = *v1 | 0xFFE0;
  v2.i16[1] = v2.u8[6];
  v2.i16[0] = v2.i16[2];
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  v4 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v2), v3), xmmword_10006A420));
  v5.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A430, v4)).u32[0];
  v5.i32[1] = vmovn_s32(vcgtq_f32(v4, xmmword_10006A430)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v5, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::FilterFMag::Execute_Alt(a1);
}

float Madusa::RefineCandidates::TransformSinglePoint(float *a1, uint64_t a2, float a3, float a4)
{
  v4 = (*a1 * a3) + (a1[1] * a4);
  v5 = (a1[2] * a3) + (a1[3] * a4);
  *(a2 + 16) = v5;
  *(a2 + 20) = v4;
  if (v4 < 0.0)
  {
    v5 = -v5;
  }

  v6 = fabsf(v4);
  *(a2 + 24) = v4 < 0.0;
  v7 = fminf(fmaxf(v5, -999.0), 999.0);
  v8 = (v7 + 1000.0) - 1000;
  *a2 = v8;
  *(a2 + 4) = v6;
  result = v7 - v8;
  *(a2 + 8) = result;
  *(a2 + 12) = v6 - truncf(v6);
  return result;
}

void Madusa::RefineCandidates::Execute(uint64_t a1, __int128 *a2, void *a3, float *a4, int *a5)
{
  *a5 = 0;
  v15 = *a2;
  sub_10001CBEC(a1, &v15, a3, a4, a5);
  if (&v15 != a4)
  {
    v15 = *a4;
  }

  sub_10001CFFC(a1, &v15, a3, a4, a5);
  if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu)
  {
    if (QuickCodec::mask == -70947757)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v5[3] == 212 || QuickCodec::mask != -70947757)
  {
LABEL_12:
    v11 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v12 = &unk_10003FCF4;
    v13 = -2;
    v14 = -1;
    do
    {
      qword_100074968[v14 + 1 + ((*(v12 - 1) ^ v11) / 0x9D28AF)] = qword_100074968[v14 + ((*v12 ^ v11) / 0x9D28AF)];
      v12 += 2;
      v13 += 2;
      v14 -= 2;
    }

    while (v13 < 0x20);
  }
}

float sub_10001CBEC(uint64_t a1, float *a2, void *a3, float *a4, int *a5)
{
  v9 = 5 * *a5;
  if (a4 != a2)
  {
    *a4 = *a2;
  }

  v10 = 2 * v9;
  v11 = sub_10001D85C(a1, a3, a4);
  v32 = *a4;
  v12 = sub_10001D9B8(a1, a3, &v32);
  if (&v32 != a4)
  {
    if (v12 <= v11)
    {
      v13 = sub_10001D9B8(a1, a3, &v32);
      if (v13 <= v11)
      {
LABEL_6:
        v14 = sub_10001D9B8(a1, a3, &v32);
        if (v14 <= v11)
        {
          return v11;
        }

LABEL_10:
        v15 = v14;
        *a4 = v32;
        *a5 = v10 + 3;
        v16 = sub_10001D9B8(a1, a3, &v32);
        if (v16 <= v15)
        {
          return v15;
        }

        v11 = v16;
        *a4 = v32;
        *a5 = v10 + 4;
        v17 = sub_10001D9B8(a1, a3, &v32);
        if (v17 > v11)
        {
          v15 = v17;
          *a4 = v32;
          *a5 = v10 + 5;
          v18 = sub_10001D9B8(a1, a3, &v32);
          if (v18 <= v15)
          {
            return v15;
          }

          v11 = v18;
          *a4 = v32;
          *a5 = v10 + 6;
          v19 = sub_10001D9B8(a1, a3, &v32);
          if (v19 > v11)
          {
            v15 = v19;
            *a4 = v32;
            *a5 = v10 + 7;
            v20 = sub_10001D9B8(a1, a3, &v32);
            if (v20 <= v15)
            {
              return v15;
            }

            v11 = v20;
            *a4 = v32;
            *a5 = v10 + 8;
            v21 = sub_10001D9B8(a1, a3, &v32);
            if (v21 > v11)
            {
              v15 = v21;
              *a4 = v32;
              *a5 = v10 + 9;
              v22 = sub_10001D9B8(a1, a3, &v32);
              if (v22 > v15)
              {
                v11 = v22;
                *a4 = v32;
LABEL_31:
                *a5 = v10 + 10;
                return v11;
              }

              return v15;
            }
          }
        }

        return v11;
      }
    }

    else
    {
      *a4 = v32;
      *a5 = v10 | 1;
      v11 = v12;
      v13 = sub_10001D9B8(a1, a3, &v32);
      if (v13 <= v11)
      {
        goto LABEL_6;
      }
    }

    *a4 = v32;
    *a5 = v10 + 2;
    v11 = v13;
    v14 = sub_10001D9B8(a1, a3, &v32);
    if (v14 <= v11)
    {
      return v11;
    }

    goto LABEL_10;
  }

  if (v12 > v11)
  {
    *a5 = v10 | 1;
    v11 = v12;
    v23 = sub_10001D9B8(a1, a3, &v32);
    if (v23 <= v11)
    {
      goto LABEL_20;
    }

LABEL_23:
    *a5 = v10 + 2;
    v11 = v23;
    v24 = sub_10001D9B8(a1, a3, &v32);
    if (v24 <= v11)
    {
      return v11;
    }

    goto LABEL_24;
  }

  v23 = sub_10001D9B8(a1, a3, &v32);
  if (v23 > v11)
  {
    goto LABEL_23;
  }

LABEL_20:
  v24 = sub_10001D9B8(a1, a3, &v32);
  if (v24 <= v11)
  {
    return v11;
  }

LABEL_24:
  v15 = v24;
  *a5 = v10 + 3;
  v25 = sub_10001D9B8(a1, a3, &v32);
  if (v25 <= v15)
  {
    return v15;
  }

  v11 = v25;
  *a5 = v10 + 4;
  v26 = sub_10001D9B8(a1, a3, &v32);
  if (v26 > v11)
  {
    v15 = v26;
    *a5 = v10 + 5;
    v27 = sub_10001D9B8(a1, a3, &v32);
    if (v27 <= v15)
    {
      return v15;
    }

    v11 = v27;
    *a5 = v10 + 6;
    v28 = sub_10001D9B8(a1, a3, &v32);
    if (v28 > v11)
    {
      v15 = v28;
      *a5 = v10 + 7;
      v29 = sub_10001D9B8(a1, a3, &v32);
      if (v29 <= v15)
      {
        return v15;
      }

      v11 = v29;
      *a5 = v10 + 8;
      v30 = sub_10001D9B8(a1, a3, &v32);
      if (v30 > v11)
      {
        v15 = v30;
        *a5 = v10 + 9;
        v11 = sub_10001D9B8(a1, a3, &v32);
        if (v11 > v15)
        {
          goto LABEL_31;
        }

        return v15;
      }
    }
  }

  return v11;
}

float sub_10001CFFC(uint64_t a1, float *a2, void *a3, float *a4, int *a5)
{
  v9 = 5 * *a5;
  if (a4 != a2)
  {
    *a4 = *a2;
  }

  v10 = 2 * v9;
  v11 = sub_10001DAD0(a1, a3, a4);
  v32 = *a4;
  v12 = sub_10001DC2C(a1, a3, &v32);
  if (&v32 != a4)
  {
    if (v12 <= v11)
    {
      v13 = sub_10001DC2C(a1, a3, &v32);
      if (v13 <= v11)
      {
LABEL_6:
        v14 = sub_10001DC2C(a1, a3, &v32);
        if (v14 <= v11)
        {
          return v11;
        }

LABEL_10:
        v15 = v14;
        *a4 = v32;
        *a5 = v10 + 3;
        v16 = sub_10001DC2C(a1, a3, &v32);
        if (v16 <= v15)
        {
          return v15;
        }

        v11 = v16;
        *a4 = v32;
        *a5 = v10 + 4;
        v17 = sub_10001DC2C(a1, a3, &v32);
        if (v17 > v11)
        {
          v15 = v17;
          *a4 = v32;
          *a5 = v10 + 5;
          v18 = sub_10001DC2C(a1, a3, &v32);
          if (v18 <= v15)
          {
            return v15;
          }

          v11 = v18;
          *a4 = v32;
          *a5 = v10 + 6;
          v19 = sub_10001DC2C(a1, a3, &v32);
          if (v19 > v11)
          {
            v15 = v19;
            *a4 = v32;
            *a5 = v10 + 7;
            v20 = sub_10001DC2C(a1, a3, &v32);
            if (v20 <= v15)
            {
              return v15;
            }

            v11 = v20;
            *a4 = v32;
            *a5 = v10 + 8;
            v21 = sub_10001DC2C(a1, a3, &v32);
            if (v21 > v11)
            {
              v15 = v21;
              *a4 = v32;
              *a5 = v10 + 9;
              v22 = sub_10001DC2C(a1, a3, &v32);
              if (v22 > v15)
              {
                v11 = v22;
                *a4 = v32;
LABEL_31:
                *a5 = v10 + 10;
                return v11;
              }

              return v15;
            }
          }
        }

        return v11;
      }
    }

    else
    {
      *a4 = v32;
      *a5 = v10 | 1;
      v11 = v12;
      v13 = sub_10001DC2C(a1, a3, &v32);
      if (v13 <= v11)
      {
        goto LABEL_6;
      }
    }

    *a4 = v32;
    *a5 = v10 + 2;
    v11 = v13;
    v14 = sub_10001DC2C(a1, a3, &v32);
    if (v14 <= v11)
    {
      return v11;
    }

    goto LABEL_10;
  }

  if (v12 > v11)
  {
    *a5 = v10 | 1;
    v11 = v12;
    v23 = sub_10001DC2C(a1, a3, &v32);
    if (v23 <= v11)
    {
      goto LABEL_20;
    }

LABEL_23:
    *a5 = v10 + 2;
    v11 = v23;
    v24 = sub_10001DC2C(a1, a3, &v32);
    if (v24 <= v11)
    {
      return v11;
    }

    goto LABEL_24;
  }

  v23 = sub_10001DC2C(a1, a3, &v32);
  if (v23 > v11)
  {
    goto LABEL_23;
  }

LABEL_20:
  v24 = sub_10001DC2C(a1, a3, &v32);
  if (v24 <= v11)
  {
    return v11;
  }

LABEL_24:
  v15 = v24;
  *a5 = v10 + 3;
  v25 = sub_10001DC2C(a1, a3, &v32);
  if (v25 <= v15)
  {
    return v15;
  }

  v11 = v25;
  *a5 = v10 + 4;
  v26 = sub_10001DC2C(a1, a3, &v32);
  if (v26 > v11)
  {
    v15 = v26;
    *a5 = v10 + 5;
    v27 = sub_10001DC2C(a1, a3, &v32);
    if (v27 <= v15)
    {
      return v15;
    }

    v11 = v27;
    *a5 = v10 + 6;
    v28 = sub_10001DC2C(a1, a3, &v32);
    if (v28 > v11)
    {
      v15 = v28;
      *a5 = v10 + 7;
      v29 = sub_10001DC2C(a1, a3, &v32);
      if (v29 <= v15)
      {
        return v15;
      }

      v11 = v29;
      *a5 = v10 + 8;
      v30 = sub_10001DC2C(a1, a3, &v32);
      if (v30 > v11)
      {
        v15 = v30;
        *a5 = v10 + 9;
        v11 = sub_10001DC2C(a1, a3, &v32);
        if (v11 > v15)
        {
          goto LABEL_31;
        }

        return v15;
      }
    }
  }

  return v11;
}

void Madusa::RefineCandidates::_Execute(uint64_t a1, __int128 *a2, void *a3, float *a4, int *a5)
{
  v6 = 0;
  v7 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v8 = 8968641;
  }

  else
  {
    v8 = 167620;
  }

  v9 = 1;
  v10 = 1235656;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v13 = v9;
        if (v10 <= 1235726)
        {
          break;
        }

        if (v10 == 1235727)
        {
          if ((*v6 & 0x1F) != 0 || v6[2] > 0x3Fu || (v9 = 1, v10 = 167620, v6[3] != ((QuickCodec::mask ^ v7) / 0x27228F)))
          {
            v10 = 167674;
            v9 = v13;
          }
        }

        else if (v10 == 1403259)
        {
          v6 = v5;
          v10 = 1235673;
        }

        else
        {
          v14 = v10 == 8968641;
          v10 = 1235727;
          if (v14)
          {
            v7 = -609357249;
          }
        }
      }

      if (v10 <= 1235655)
      {
        break;
      }

      v11 = (QuickCodec::mask != -70947757) | v9;
      if (v10 == 1235673)
      {
        v12 = v8;
      }

      else
      {
        v12 = v10;
      }

      if (v10 == 1235673)
      {
        LODWORD(v13) = v11;
      }

      v14 = v10 == 1235656;
      if (v10 == 1235656)
      {
        v10 = 167620;
      }

      else
      {
        v10 = v12;
      }

      if (v14)
      {
        v9 = 0;
      }

      else
      {
        v9 = v13;
      }
    }

    if (v10 != 167620)
    {
      break;
    }

    v10 = 167674;
    if ((v9 & 1) == 0)
    {
      v10 = 1403259;
    }
  }

  if (v9)
  {
    ++QuickCodec::mask;
  }

  Madusa::RefineCandidates::Execute(a1, a2, a3, a4, a5);
}

float Madusa::RefineCandidates::_Execute_Alt(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 8588659;
  }

  else
  {
    v7 = 7301804;
  }

  v8 = 1;
  v9 = 1015293;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 7301803)
        {
          break;
        }

        if (v9 == 1015293)
        {
          v8 = 0;
          v9 = 7301804;
        }

        else if (v9 == 1015310)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 7301804, v5[3] != ((QuickCodec::mask ^ v6) / 0x9CFF3F)))
        {
          v9 = 7301858;
          v8 = v10;
        }
      }

      if (v9 <= 8317079)
      {
        break;
      }

      if (v9 == 8317080)
      {
        v5 = v4;
        v9 = 1015310;
      }

      else
      {
        v11 = v9 == 8588659;
        v9 = 1015364;
        if (v11)
        {
          v6 = 2043022463;
        }
      }
    }

    if (v9 != 7301804)
    {
      break;
    }

    v9 = 7301858;
    if ((v8 & 1) == 0)
    {
      v9 = 8317080;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  Madusa::RefineCandidates::Execute_Alt(1015310, a2, 1015364, a4);
  return 6.2832;
}