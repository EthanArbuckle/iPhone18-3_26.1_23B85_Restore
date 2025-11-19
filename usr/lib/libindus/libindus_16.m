uint64_t NK_Final_Check_ClkBias(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v54[1] = *MEMORY[0x29EDCA608];
  v52 = 0;
  v51 = 0;
  switch(result)
  {
    case 1:
      v6 = 0;
      v51 = 1;
      v7 = 61432;
      v8 = 1632;
      break;
    case 2:
      v51 = 2;
      v6 = 1;
      v7 = 61440;
      v8 = 1640;
      break;
    case 4:
      v51 = 4;
      v6 = 2;
      v7 = 61448;
      v8 = 1648;
      break;
    default:
      goto LABEL_77;
  }

  v9 = a3 + 61440;
  LOBYTE(v52) = v6;
  v10 = *(a3 + v8);
  v11 = *(a3 + v7);
  v53 = v11;
  v54[0] = v10;
  v12 = *(a3 + 63300);
  if (v12 == -1 || (v50 = 0.0, result = R8_EQ((a3 + 63312), &v50), (result & 1) != 0) || (v49 = 0.0, result = R8_EQ(v54, &v49), (result & 1) != 0))
  {
LABEL_77:
    v48 = *MEMORY[0x29EDCA608];
    return result;
  }

  v14 = *(a3 + 63301);
  if (v14 != 1)
  {
    v15 = (*(a3 + 63312) - v10) * 299792458.0;
    if (v14 == 2)
    {
      result = NK_Final_Check_ClkBias_Reset(v5, a2, a3);
      switch(v5)
      {
        case 1:
          v16 = 61624;
          v17 = 61528;
          v18 = 61432;
          break;
        case 4:
          v16 = 61640;
          v17 = 61544;
          v18 = 61448;
          break;
        case 2:
          v16 = 61632;
          v17 = 61536;
          v18 = 61440;
          break;
        default:
          goto LABEL_77;
      }

      v41 = v15 * 0.333333333 * (v15 * 0.333333333);
      *(a3 + v18) = v41 + *(a3 + v18);
      v42 = v41 + *(a3 + v17);
      *(a3 + v17) = v42;
      *(a3 + v16) = sqrt(v42);
      goto LABEL_77;
    }

    v20 = *(a3 + 61872);
    if (v20 >= 25000000.0)
    {
      goto LABEL_76;
    }

    v21 = *(a3 + 61880);
    if (v21 >= 25000000.0)
    {
      goto LABEL_76;
    }

    v22 = *(a3 + 61888);
    if (v22 >= 25000000.0)
    {
      goto LABEL_76;
    }

    v23 = *(a3 + 61824 + 8 * v12);
    v24 = *(a3 + 61824 + 8 * v6);
    if (v23 >= 25000000.0 && v24 >= 25000000.0 && *(a3 + 8 * v12 + 61432) >= 25000000.0)
    {
      goto LABEL_76;
    }

    v25 = 0;
    v26 = (a3 + 63296);
    v27 = v23 + v20 + 22500.0 + v21 + v22 + *(a3 + 61864);
    v28 = 1;
    while (1)
    {
      v29 = v25;
      v30 = v28;
      if (v28)
      {
        v31 = (v9 + 1856);
      }

      else
      {
        v31 = &v51;
      }

      v32 = *v31;
      v25 = 0;
      if (v32 > 7)
      {
        goto LABEL_39;
      }

      if (((1 << v32) & 0xEA) != 0)
      {
        v25 = *(a3 + 62127);
      }

      else
      {
        if (v32 == 2)
        {
          v33 = *(a3 + 62132);
          v34 = *(a3 + 62160);
LABEL_36:
          if (v34)
          {
            v25 = v33 + 1;
          }

          else
          {
            v25 = v33;
          }

          goto LABEL_39;
        }

        if (v32 == 4)
        {
          v33 = *(a3 + 62137);
          v34 = *(a3 + 62164);
          goto LABEL_36;
        }
      }

LABEL_39:
      v28 = 0;
      if ((v30 & 1) == 0)
      {
        v35 = (v24 + v27) * 9.0;
        if (v15 * v15 <= v35 && v11 < 2496542160.0 && (v29 < 2 || v25 || fabs(v15) < 150.0))
        {
          goto LABEL_75;
        }

        EvLog_nd("NKFC:  Constellation Clock Bias deviation event ! ", 8, v13, *(a3 + 63296), v5, v15, sqrt(v35), v29, v25, sqrt(v11), 49965);
        if (*(a3 + 63304) > 2496542160.0)
        {
          *(a3 + 63312) = 0;
          if (!*(a3 + 63301))
          {
            NK_Final_Check_ClkBias_Reset(*(a3 + 63296), a2, a3);
            *(a3 + 63301) = 1;
          }
        }

        if (v11 > 2496542160.0 || !v25)
        {
          v54[0] = 0.0;
          NK_Final_Check_ClkBias_Reset(v5, a2, a3);
        }

        v50 = 0.0;
        result = R8_EQ((a3 + 63312), &v50);
        if (result)
        {
          goto LABEL_74;
        }

        v49 = 0.0;
        result = R8_EQ(v54, &v49);
        if (result)
        {
          goto LABEL_74;
        }

        v36 = v15 * 0.333333333 * (v15 * 0.333333333);
        if (*(a3 + 63301))
        {
          goto LABEL_67;
        }

        *(a2 + 136) = 1;
        *(a2 + 140) = 70;
        if (*(a3 + 20) >= 10)
        {
          *(a3 + 20) = 9;
        }

        NK_Final_Check_ClkBias_Reset(*v26, a2, a3);
        v37 = *v26;
        if (*v26 == 1)
        {
          v38 = 61624;
          v39 = 61528;
          v40 = 61432;
        }

        else
        {
          if (v37 != 4)
          {
            if (v37 == 2)
            {
              v38 = 61632;
              v39 = 61536;
              v40 = 61440;
              goto LABEL_65;
            }

LABEL_66:
            *(a3 + 63301) = 2;
LABEL_67:
            result = NK_Final_Check_ClkBias_Reset(v5, a2, a3);
            switch(v5)
            {
              case 1:
                v44 = 61624;
                v45 = 61528;
                v46 = 61432;
                break;
              case 4:
                v44 = 61640;
                v45 = 61544;
                v46 = 61448;
                break;
              case 2:
                v44 = 61632;
                v45 = 61536;
                v46 = 61440;
                break;
              default:
LABEL_74:
                v14 = *(a3 + 63301);
LABEL_75:
                if (!v14)
                {
LABEL_76:
                  *(a3 + 63301) = 3;
                }

                goto LABEL_77;
            }

            *(a3 + v46) = v36 + *(a3 + v46);
            v47 = v36 + *(a3 + v45);
            *(a3 + v45) = v47;
            *(a3 + v44) = sqrt(v47);
            goto LABEL_74;
          }

          v38 = 61640;
          v39 = 61544;
          v40 = 61448;
        }

LABEL_65:
        *(a3 + v40) = v36 + *(a3 + v40);
        v43 = v36 + *(a3 + v39);
        *(a3 + v39) = v43;
        *(a3 + v38) = sqrt(v43);
        goto LABEL_66;
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];

  return NK_Final_Check_ClkBias_Reset(v5, a2, a3);
}

uint64_t NK_Final_Check_ClkBias_Reset(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x29EDCA608];
  switch(result)
  {
    case 4:
      *(a3 + 1648) = 0;
      *(a3 + 1682) = 0;
      *(a2 + 20128) = 0;
      *(a2 + 20120) = 0;
      break;
    case 2:
      *(a3 + 1640) = 0;
      *(a3 + 1681) = 0;
      *(a2 + 20112) = 0;
      *(a2 + 20106) = 0;
      break;
    case 1:
      *(a3 + 1632) = 0;
      *(a3 + 1680) = 0;
      *(a2 + 25920) = 0;
      *(a2 + 20104) = 0;
      break;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GLON_AlmBin2Int(uint64_t result, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 16);
  *(a2 + 10) = (*(result + 12) >> 19) & 0x1F;
  *(a2 + 11) = (*(result + 32) >> 20) & 0x1F;
  v3 = (v2 >> 2) & 0x3FFFF;
  if ((v2 & 0x80000) != 0)
  {
    v3 = -((v2 >> 2) & 0x1FFFF);
  }

  *(a2 + 20) = v3;
  v4 = *(result + 28);
  if ((v4 & 0x200000) != 0)
  {
    v5 = -(v4 & 0x1FFFFF);
  }

  else
  {
    v5 = v4 & 0x3FFFFF;
  }

  *(a2 + 24) = v5;
  v6 = *(result + 32);
  v7 = v6 >> 25;
  if (v6 < 0)
  {
    v7 = -((v6 >> 25) & 0x3F);
  }

  *(a2 + 28) = v7;
  v9 = *(result + 24);
  v8 = 32 * v9;
  LOWORD(v9) = v9 >> 11;
  if (((v8 >> 16) & 0x8000) != 0)
  {
    v9 = -(v9 & 0x7FFF);
  }

  *(a2 + 32) = v9;
  v10 = *(result + 12);
  v11 = *(result + 16);
  v12 = (v10 >> 9) & 0x3FF;
  if ((v10 & 0x40000) != 0)
  {
    v12 = -((v10 >> 9) & 0x1FF);
  }

  *(a2 + 34) = v12;
  *(a2 + 36) = (v10 & 0x4000000) != 0;
  *(a2 + 37) = HIBYTE(v10) & 3;
  *(a2 + 38) = (v6 & 0x80000) != 0;
  v13 = __PAIR64__(v10, v11) >> 20;
  v14 = (__PAIR64__(v10, v11) >> 20) & 0x1FFFFF;
  v15 = v13 & 0xFFFFF;
  if ((v10 & 0x100) != 0)
  {
    v16 = -v15;
  }

  else
  {
    v16 = v14;
  }

  *(a2 + 12) = v16;
  v17 = *(result + 24);
  HIDWORD(v18) = *(result + 16);
  LODWORD(v18) = *(result + 20);
  v19 = (v18 >> 19) & 0x7FFF;
  *(a2 + 16) = (v17 & 0x7FF) << 10;
  HIDWORD(v18) = v17;
  LODWORD(v18) = *(result + 28);
  *(a2 + 30) = v19;
  *(a2 + 16) = (v18 >> 22) & 0x1FFFFF;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GLON_AlmInt2Bin(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(result + 10);
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  v3 = (((v2 - 1 - 5 * (((26215 * (v2 - 1)) >> 17) + ((26215 * (v2 - 1)) >> 31))) << 28) + 805306368) & 0x70000000;
  v4 = ((v2 & 0x1F) << 19) & 0xFCFFFFFF | ((*(result + 37) & 3) << 24) | v3 | (*(result + 36) << 26);
  v5 = *(result + 34);
  if ((v5 & 0x200) != 0)
  {
    v5 = -v5 | 0x200;
  }

  v6 = v4 & 0xFFF801FF | ((v5 & 0x3FF) << 9);
  *(a2 + 12) = v6;
  v7 = *(result + 12);
  if ((v7 & 0x100000) != 0)
  {
    v7 = -v7 | 0x100000;
  }

  *(a2 + 12) = v6 & 0xFFFFFE00 | (v7 >> 12) & 0x1FF;
  *(a2 + 16) = v7 << 20;
  v8 = *(result + 20);
  if ((v8 & 0x20000) != 0)
  {
    v8 = -v8 | 0x20000;
  }

  v9 = *(result + 30);
  *(a2 + 16) = (v9 >> 13) & 3 | (4 * (v8 & 0x3FFFF)) & 0xFFFFF | (v7 << 20);
  *(a2 + 20) = v9 << 19;
  v10 = *(result + 32);
  if ((v10 & 0x8000) != 0)
  {
    v10 = -v10 | 0x8000;
  }

  v11 = v3 & 0xF80007FF | (v10 << 11) | 0x8000000;
  *(a2 + 24) = v11;
  *(a2 + 24) = v11 & 0xFFFFF800 | (*(result + 16) >> 10) & 0x7FF;
  v12 = *(result + 16) << 22;
  *(a2 + 28) = v12;
  v13 = *(result + 24);
  if ((v13 & 0x200000) != 0)
  {
    v13 = -v13 | 0x200000;
  }

  v14 = v12 & 0xFFC00000 | v13 & 0x3FFFFF;
  v15 = *(result + 28);
  if ((v15 & 0x40) != 0)
  {
    v15 = -v15 | 0x40;
  }

  v16 = ((*(result + 11) & 0x1F) << 20) | (v15 << 25) | (*(result + 38) << 19);
  *(a2 + 28) = v14;
  *(a2 + 32) = v16;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void Comp_ErrorEllipse(double a1, double a2, double a3, double *a4, double *a5, double *a6)
{
  v26 = *MEMORY[0x29EDCA608];
  v12 = a1 - a2;
  if (a1 - a2 >= 0.0 && a1 - a2 <= 0.0 && fabs(a3) <= a1 * 0.0001)
  {
    *a6 = 0.0;
    v24 = sqrt(a1);
    *a4 = v24;
    *a5 = v24;
  }

  else
  {
    v13 = atan2(a3 + a3, v12) * 0.5;
    v15 = __sincos_stret(v13);
    cosval = v15.__cosval;
    v16 = v13 * 57.2957795;
    v17 = cosval * cosval;
    v18 = v15.__sinval * (cosval + cosval) * a3;
    v19 = a2 + cosval * cosval * v12 + v18;
    v20 = a1 - v17 * v12 - v18;
    if (v19 < 0.000001)
    {
      v19 = 0.000001;
    }

    if (v20 < 0.000001)
    {
      v20 = 0.000001;
    }

    if (v19 > v20)
    {
      v21 = v19;
    }

    else
    {
      v16 = v16 + 90.0;
      v21 = v20;
    }

    if (v19 <= v20)
    {
      v20 = v19;
    }

    *a6 = v16;
    *a4 = sqrt(v21);
    *a5 = sqrt(v20);
    v22 = *a6;
    v23 = 180.0;
    if (*a6 >= 180.0)
    {
      v23 = -180.0;
    }

    else if (v22 >= 0.0)
    {
      goto LABEL_19;
    }

    *a6 = v22 + v23;
  }

LABEL_19:
  v25 = *MEMORY[0x29EDCA608];
}

uint64_t Decode_BDS_B1C_SISA(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  *(a2 + 131) = (bswap32(*(result + 1)) >> 20) & 0x1F;
  *(a2 + 28) = ((*(result + 3) | (*(result + 2) << 8)) >> 1) & 0x7FF;
  *(a2 + 128) = (bswap32(*(result + 3)) >> 20) & 0x1F;
  *(a2 + 129) = (*(result + 4) >> 1) & 7;
  *(a2 + 130) = (bswap32(*(result + 4)) >> 22) & 7;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

double NK_Comp_DR_Res(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v19[1] = *MEMORY[0x29EDCA608];
  v5 = a1 + 96;
  v6 = a3 + 36632;
  v18 = a3 + 52632;
  v7 = a2 + 24256;
  v8 = (a3 + 51608);
  v16 = a3 + 11048;
  v9 = a2 + 24768;
  v10 = a2 + 68336;
  v15 = a3 + 64136;
  v11 = a3 + 6952;
  v12 = (a2 + 21184);
  do
  {
    if (Is_Legal(*(v5 + 4 * v4)) && *(v6 + v4) == 1 && *(a3 + 20) == 11 && (*(v18 + v4) & 1) == 0 && *(v7 + v4) == 1)
    {
      v19[0] = 0.0;
      NK_Comp_ith_DR_Res(v4, a3 + 2160, a3 + 36576, v19, *(a3 + 8 * v4 + 208), *v8, *(v16 + 8 * v4), *(a3 + 1552), *(v9 + 8 * v4));
      v8[3118] = v8[2862] - *(v10 + 8 * v4);
      if (*(v6 + v4 + 256) == 1)
      {
        *(v15 + v4) = 1;
      }
    }

    if (*(v11 + v4) == 1)
    {
      *(v9 + 8 * v4) = *v8;
      *(v7 + v4) = 1;
      *(v10 + 8 * v4) = v8[2862];
    }

    else
    {
      *(v9 + 8 * v4) = 0;
      *(v7 + v4) = 0;
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
    }

    ++v4;
    v12 += 3;
    ++v8;
  }

  while (v4 != 128);
  *(a2 + 20152) = *(a3 + 1552);
  *(a2 + 15592) = *(a2 + 15544);
  result = *(a2 + 15576);
  *(a2 + 15600) = result;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *NVIC_L5_EphBin2Int(_DWORD *result, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = result[1];
  HIDWORD(v3) = *result;
  LODWORD(v3) = v2;
  v4 = v2 >> 2;
  *(a2 + 14) = (v3 >> 24) & 0x3FF;
  v5 = 4 * v2;
  v6 = (4 * v2) & 0x3FFFFF0;
  if ((v5 >> 25))
  {
    v7 = (16 * (v4 & 0x3FFFFF)) | 0xFC000000;
  }

  else
  {
    v7 = v6;
  }

  *(a2 + 20) = v7;
  v8 = result[2];
  HIDWORD(v9) = result[1];
  LODWORD(v9) = v8;
  *(a2 + 24) = v9 >> 18;
  *(a2 + 26) = v8 >> 10;
  *(a2 + 13) = (v8 >> 6) & 0xF;
  v11 = result[3];
  v10 = result[4];
  *(a2 + 16) = __PAIR64__(v8, v11) >> 22;
  v12 = (v11 >> 10) & 0xFF0;
  if (((v11 >> 10) & 0x800) != 0)
  {
    LOWORD(v12) = v12 | 0xF000;
  }

  *(a2 + 28) = v12;
  if ((v11 >> 13))
  {
    v13 = (4 * ((__PAIR64__(v11, v10) >> 24) & 0x3FFFFF)) | 0xFF000000;
  }

  else
  {
    v13 = 4 * ((__PAIR64__(v11, v10) >> 24) & 0x3FFFFF);
  }

  *(a2 + 56) = v13;
  v14 = result[4];
  v15 = result[5];
  *(a2 + 12) = BYTE2(v14);
  *(a2 + 10) = (v14 & 0x20) != 0;
  *(a2 + 11) = (v14 & 0x10) != 0;
  *(a2 + 66) = 2 * (__PAIR64__(v14, v15) >> 21);
  *(a2 + 64) = (v15 >> 5) & 0xFFFE;
  v16 = result[6];
  v17 = result[7];
  *(a2 + 70) = 2 * (__PAIR64__(v15, v16) >> 23);
  *(a2 + 68) = (v16 >> 7) & 0xFFFE;
  *(a2 + 74) = 2 * (__PAIR64__(v16, v17) >> 25);
  *(a2 + 72) = (v17 >> 9) & 0xFFFE;
  HIDWORD(v18) = v17;
  LODWORD(v18) = result[8];
  v19 = (v18 >> 28) & 0x3FFF;
  v20 = (v18 >> 28) & 0x3FFF | 0xC000;
  if ((v17 >> 9))
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  *(a2 + 30) = v21;
  HIDWORD(v22) = result[10];
  LODWORD(v22) = result[11];
  *(a2 + 52) = v22 >> 2;
  v23 = result[12];
  HIDWORD(v22) = result[11];
  LODWORD(v22) = v23;
  *(a2 + 18) = v22 >> 18;
  HIDWORD(v22) = v23;
  LODWORD(v22) = result[13];
  *(a2 + 36) = v22 >> 18;
  HIDWORD(v22) = result[13];
  LODWORD(v22) = result[14];
  *(a2 + 32) = v22 >> 18;
  HIDWORD(v22) = result[14];
  LODWORD(v22) = result[15];
  *(a2 + 44) = v22 >> 18;
  HIDWORD(v22) = result[15];
  LODWORD(v22) = result[16];
  *(a2 + 48) = v22 >> 18;
  HIDWORD(v22) = result[16];
  LODWORD(v22) = result[17];
  v24 = 4 * ((v22 >> 28) & 0x3FFFFF);
  v25 = v24 | 0xFF000000;
  if (((HIDWORD(v22) >> 17) & 1) == 0)
  {
    v25 = v24;
  }

  *(a2 + 60) = v25;
  HIDWORD(v26) = result[17];
  LODWORD(v26) = result[18];
  *(a2 + 40) = v26 >> 28;
  *(a2 + 27) = 4;
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm08_zxDataHandler(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_RX_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm08_zxDataHandler");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *(a1 + 24);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Recvd zx%c%c%c,Len,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm08_zxDataHandler", *(v3 + 2), *(v3 + 3), *(v3 + 4), v4);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v6 = *(v3 + v4 - 3);
      if (v4 == 11)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v8 = (v4 - 11);
        v9 = 8;
        do
        {
          v7 += *(v3 + v9++);
          --v8;
        }

        while (v8);
        if (v6 == v7)
        {
          v10 = *(v3 + 2);
          switch(v10)
          {
            case 'B':
              if (*(v3 + 3) == 89 && *(v3 + 4) == 77)
              {
                Gnm10_zxGnssInitRsp(v3);
              }

              goto LABEL_24;
            case 'D':
              Gnm35_zxFirmwareDebugConf(v3);
              goto LABEL_24;
            case 'X':
              Gnm55_HandleXMessages(v3, v4);
LABEL_24:
              free(v3);
              goto LABEL_25;
          }

          if (g_LbsOsaTrace_Config < 2)
          {
            goto LABEL_24;
          }

          bzero(__str, 0x3C6uLL);
          v18 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Message not handled\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 87, "Gnm08_zxDataHandler");
          v15 = 2;
LABEL_23:
          gnssOsa_PrintLog(__str, v15, 1, 0);
          goto LABEL_24;
        }
      }

      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_24;
      }

      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx zx chksum %u, computed %u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 69, "Gnm08_zxDataHandler", 771, v6, v7);
      v15 = 1;
      goto LABEL_23;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm08_zxDataHandler", 770);
      v12 = 2;
      goto LABEL_19;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v11 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm08_zxDataHandler", 517);
    v12 = 1;
LABEL_19:
    gnssOsa_PrintLog(__str, v12, 1, 0);
  }

LABEL_25:
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t KFSt_DMeas_Update(unsigned int a1, unsigned int a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v20[33] = *MEMORY[0x29EDCA608];
  if (*(a4 + 1) >= 1 && (*(a4 + 16) = 0, *a4 == 1))
  {
    v10 = a4[4];
    v11 = a7 - a4[3];
    memset(v17, 0, sizeof(v17));
    v16 = 0.0;
    a4[6] = v11;
    v18 = 0;
    *(v17 + a1) = 0x3FF0000000000000;
    *(v17 + a2) = 0xBFF0000000000000;
    *(v17 + a3) = v11;
    umeas(a5, a3, v10, v17, v20, v19, &v16, a4[7]);
    v12 = v16;
    if (v16 <= 0.0)
    {
      v13 = 0;
      *a4 = 0;
      *(a4 + 16) = 1;
      ++*a6;
    }

    else
    {
      v12 = a4[4] * (v16 * (v20[a3] * v20[a3]));
      v13 = *a4;
    }

    a4[8] = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13 & 1;
}

double GLON_EphBin2Int(uint64_t a1, uint64_t a2, int32x4_t a3)
{
  v47 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 56);
  *(a2 + 24) = *(a1 + 52) >> 27;
  v4 = *(a1 + 16);
  *(a2 + 25) = (*(a1 + 12) >> 23) & 3;
  v5 = *(a1 + 20);
  *(a2 + 26) = (*(a1 + 24) & 0x800000) != 0;
  *(a2 + 27) = (v3 >> 19) & 3;
  v6 = (__PAIR64__(v4, v5) >> 19) & 0x7FFFFFF;
  if ((v4 & 0x2000) != 0)
  {
    LODWORD(v6) = -((__PAIR64__(v4, v5) >> 19) & 0x3FFFFFF);
  }

  *(a2 + 28) = v6;
  v8 = *(a1 + 12);
  v7 = *(a1 + 16);
  v9 = (v7 >> 14) & 0x1F;
  if ((v7 & 0x40000) != 0)
  {
    v9 = -((v7 >> 14) & 0xF);
  }

  *(a2 + 52) = v9;
  v10 = __PAIR64__(v8, v7) >> 19;
  v11 = v10 & 0xFFFFFF;
  v12 = v10 & 0x7FFFFF;
  if ((v8 & 0x400) != 0)
  {
    v13 = -v12;
  }

  else
  {
    v13 = v11;
  }

  *(a2 + 40) = v13;
  HIDWORD(v14) = *(a1 + 28);
  LODWORD(v14) = *(a1 + 32);
  v15 = (v14 >> 19) & 0x7FFFFFF;
  v16 = (v14 >> 19) & 0x3FFFFFF;
  if ((v14 & 0x200000000000) != 0)
  {
    v17 = -v16;
  }

  else
  {
    v17 = v15;
  }

  *(a2 + 32) = v17;
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  v20 = (v18 >> 14) & 0x1F;
  if ((v18 & 0x40000) != 0)
  {
    v20 = -((v18 >> 14) & 0xF);
  }

  *(a2 + 53) = v20;
  v21 = __PAIR64__(v19, v18) >> 19;
  v22 = v21 & 0xFFFFFF;
  v23 = v21 & 0x7FFFFF;
  if ((v19 & 0x400) != 0)
  {
    v24 = -v23;
  }

  else
  {
    v24 = v22;
  }

  *(a2 + 44) = v24;
  HIDWORD(v25) = *(a1 + 40);
  LODWORD(v25) = *(a1 + 44);
  v26 = (v25 >> 19) & 0x7FFFFFF;
  v27 = (v25 >> 19) & 0x3FFFFFF;
  if ((v25 & 0x200000000000) != 0)
  {
    v28 = -v27;
  }

  else
  {
    v28 = v26;
  }

  *(a2 + 36) = v28;
  v30 = *(a1 + 36);
  v29 = *(a1 + 40);
  v31 = (v29 >> 14) & 0x1F;
  if ((v29 & 0x40000) != 0)
  {
    v31 = -((v29 >> 14) & 0xF);
  }

  v32 = __PAIR64__(v30, v29) >> 19;
  *(a2 + 54) = v31;
  v33 = v32 & 0xFFFFFF;
  v34 = v32 & 0x7FFFFF;
  if ((v30 & 0x400) != 0)
  {
    v35 = -v34;
  }

  else
  {
    v35 = v33;
  }

  *(a2 + 48) = v35;
  v36 = *(a1 + 48);
  if ((v36 & 0x4000000) != 0)
  {
    v37 = -((v36 >> 5) & 0x1FFFFF);
  }

  else
  {
    v37 = (v36 >> 5) & 0x3FFFFF;
  }

  *(a2 + 56) = v37;
  v38 = *(a1 + 36);
  v39 = (v38 >> 15) & 0x7FF;
  if ((v38 & 0x2000000) != 0)
  {
    v39 = -((v38 >> 15) & 0x3FF);
  }

  *(a2 + 60) = v39;
  v40 = *(a1 + 48);
  if ((v40 & 0x10) != 0)
  {
    v40 = -(*(a1 + 48) & 0xF);
  }

  else
  {
    LOBYTE(v40) = v40 & 0x1F;
  }

  *(a2 + 55) = v40;
  *(a2 + 14) = (*(a1 + 12) >> 11) & 0xFFF;
  v41 = *(a1 + 24);
  *(a2 + 13) = BYTE2(v41) & 0x7F;
  a3.i64[0] = __PAIR64__(v38, v41);
  v42 = vand_s8(vmovn_s32(vshlq_u32(vzip1q_s32(a3, vdupq_lane_s32(__PAIR64__(v38, v41), 1)), xmmword_299053890)), 0x1000300010007);
  *a3.i8 = vuzp1_s8(v42, v42);
  *(a2 + 18) = a3.i32[0];
  v43 = *(a1 + 52);
  v44 = *(a1 + 56);
  *(a2 + 22) = (v43 & 0x1000) != 0;
  *(a2 + 23) = BYTE1(v43) & 0xF;
  *(a2 + 16) = (__PAIR64__(v43, v44) >> 26) & 0x7FF;
  *(a2 + 12) = (v44 >> 21) & 0x1F;
  v45 = *MEMORY[0x29EDCA608];
  return *a3.i64;
}

uint64_t GLON_EphInt2Bin(uint64_t result, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  v2 = ((*(result + 14) & 0xFFF) << 11) & 0xFE7FFFFF | ((*(result + 25) & 3) << 23) | 0x8000000;
  *(a2 + 8) = *(result + 8);
  *(a2 + 12) = v2;
  v3 = *(result + 40);
  if ((v3 & 0x800000) != 0)
  {
    v3 = -v3 | 0x800000;
  }

  v4 = v2 & 0xFFFFF800 | (v3 >> 13) & 0x7FF;
  v5 = v3 << 19;
  v6 = *(result + 52);
  if ((v6 & 0x10) != 0)
  {
    v6 = -v6 | 0x10;
  }

  v7 = v5 & 0xFFF83FFF | ((v6 & 0x1F) << 14);
  *(a2 + 12) = v4;
  *(a2 + 16) = v7;
  v8 = *(result + 28);
  if ((v8 & 0x4000000) != 0)
  {
    v8 = -v8 | 0x4000000;
  }

  *(a2 + 16) = v7 & 0xFFFFC000 | (v8 >> 13) & 0x3FFF;
  *(a2 + 20) = v8 << 19;
  v9 = (*(result + 26) << 23) & 0xF880FFFF | ((*(result + 18) & 7) << 24) | ((*(result + 13) & 0x7F) << 16) | 0x10000000;
  *(a2 + 24) = v9;
  v10 = *(result + 44);
  if ((v10 & 0x800000) != 0)
  {
    v10 = -v10 | 0x800000;
  }

  v11 = v9 & 0xFFFFF800 | (v10 >> 13) & 0x7FF;
  v12 = v10 << 19;
  v13 = *(result + 53);
  if ((v13 & 0x10) != 0)
  {
    v13 = -v13 | 0x10;
  }

  v14 = v12 & 0xFFF83FFF | ((v13 & 0x1F) << 14);
  *(a2 + 24) = v11;
  *(a2 + 28) = v14;
  v15 = *(result + 32);
  if ((v15 & 0x4000000) != 0)
  {
    v15 = -v15 | 0x4000000;
  }

  *(a2 + 28) = v14 & 0xFFFFC000 | (v15 >> 13) & 0x3FFF;
  *(a2 + 32) = v15 << 19;
  v16 = *(result + 60);
  if ((v16 & 0x400) != 0)
  {
    v16 = -v16 | 0x400;
  }

  v17 = ((v16 & 0x7FF) << 15) | (*(result + 19) << 26) | ((*(result + 20) & 3) << 12) | (*(result + 21) << 11) | 0x18000000;
  *(a2 + 36) = v17;
  v18 = *(result + 48);
  if ((v18 & 0x800000) != 0)
  {
    v18 = -v18 | 0x800000;
  }

  v19 = *(result + 54);
  if ((v19 & 0x10) != 0)
  {
    v19 = -v19 | 0x10;
  }

  v20 = v17 & 0xFFFFF800 | (v18 >> 13) & 0x7FF;
  v21 = (v18 << 19) | ((v19 & 0x1F) << 14);
  *(a2 + 36) = v20;
  *(a2 + 40) = v21;
  v22 = *(result + 36);
  if ((v22 & 0x4000000) != 0)
  {
    v22 = -v22 | 0x4000000;
  }

  *(a2 + 40) = v21 & 0xFFFFC000 | (v22 >> 13) & 0x3FFF;
  *(a2 + 44) = v22 << 19;
  *(a2 + 48) = 0x20000000;
  v23 = *(result + 56);
  if ((v23 & 0x200000) != 0)
  {
    v23 = -v23 | 0x200000;
  }

  v24 = *(result + 55);
  if ((v24 & 0x10) != 0)
  {
    v24 = -v24 | 0x10;
  }

  v25 = v24 & 0x1F | (32 * (v23 & 0x3FFFFF)) | 0x20000000;
  v26 = *(result + 16);
  v27 = (*(result + 24) << 27) | (*(result + 22) << 12) | ((*(result + 23) & 0xF) << 8) | (v26 >> 6) & 0x1F;
  *(a2 + 48) = v25;
  *(a2 + 52) = v27;
  *(a2 + 56) = (v26 << 26) | ((*(result + 12) & 0x1F) << 21) | ((*(result + 27) & 3) << 19);
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Bad_GAL_Data(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v16 = *MEMORY[0x29EDCA608];
  v5 = a1 + 6628;
  v6 = a1 + 11416;
  v7 = (a1 + 7240);
  v8 = a2 + 17708;
  v9 = a1 + 6520;
  v10 = (a1 + 6556);
  result = a1 + 10552;
  v12 = a2 + 24044;
  do
  {
    if (*(a2[2200] + v4) == 1)
    {
      *(v5 + 8 * v4) = 0x400040004000400;
      v10[180] = 1024;
      v10[216] = 1024;
      *(v6 + v4) = 0;
      *(v7 + 76) = 0uLL;
      v7[3] = 0uLL;
      v7[4] = 0uLL;
      v7[1] = 0uLL;
      v7[2] = 0uLL;
      *v7 = 0uLL;
      *(a2[2200] + v4) = 0;
      *(a2[2198] + v4) = 0;
      *(a2[2202] + v4) = 0;
      *(v8 + 10) = 0;
      *(v8 + 3) = 0uLL;
      *(v8 + 4) = 0uLL;
      *(v8 + 1) = 0uLL;
      *(v8 + 2) = 0uLL;
      *v8 = 0uLL;
      *(a2[2208] + v4) = 0;
      *(a2[2205] + v4) = 1;
      v13 = p_NV + 8 * v2;
      *(v13 + 9744) = 0xFFFFFFFFLL;
      *(v13 + 9752) = 0uLL;
      *(v13 + 9768) = 0uLL;
      *(v13 + 9784) = 0uLL;
      *(v13 + 9800) = 0uLL;
      *(v13 + 9816) = 0uLL;
      *(v13 + 9832) = 0;
    }

    if (*(a2[2201] + v4) == 1)
    {
      *(v9 + v4) = -1;
      *v10 = 2048;
      *(result + 36 * gal_E1B_AlmSvId2SubframeId[v4] - 4) = 0;
      *(a2[2201] + v4) = 0;
      *(a2[2199] + v4) = 0;
      *(a2[2204] + v4) = 0;
      *(v12 + 31) = 0;
      *v12 = 0uLL;
      *(v12 + 1) = 0uLL;
      *(a2[2208] + v4) = 0;
      v14 = p_NV + 8 * v3;
      *(v14 + 8016) = 0xFFFFFFFFLL;
      *(v14 + 8024) = 0uLL;
      *(v14 + 8040) = 0uLL;
      *(v14 + 8055) = 0;
    }

    ++v4;
    v3 += 6;
    v2 += 12;
    v12 += 36;
    ++v10;
    v8 += 88;
    v7 = (v7 + 92);
  }

  while (v4 != 36);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_GAL_Data(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v17 = *MEMORY[0x29EDCA608];
  v6 = a2 + 6628;
  v7 = a2 + 11416;
  v8 = (a2 + 7240);
  v9 = a3 + 17708;
  v10 = a2 + 6520;
  v11 = (a2 + 6556);
  v12 = a2 + 10552;
  v13 = a3 + 24044;
  do
  {
    if (*(result + v5) == 1)
    {
      *(v6 + 8 * v5) = 0x400040004000400;
      v11[180] = 1024;
      v11[216] = 1024;
      *(v7 + v5) = 0;
      *(v8 + 76) = 0uLL;
      v8[3] = 0uLL;
      v8[4] = 0uLL;
      v8[1] = 0uLL;
      v8[2] = 0uLL;
      *v8 = 0uLL;
      *(a3[2200] + v5) = 0;
      *(a3[2198] + v5) = 0;
      *(a3[2202] + v5) = 0;
      *(v9 + 10) = 0;
      *(v9 + 3) = 0uLL;
      *(v9 + 4) = 0uLL;
      *(v9 + 1) = 0uLL;
      *(v9 + 2) = 0uLL;
      *v9 = 0uLL;
      *(a3[2203] + v5) = 0;
      *(v9 + 406) = 0;
      *(v9 + 202) = 0uLL;
      *(v9 + 201) = 0uLL;
      *(v9 + 200) = 0uLL;
      *(v9 + 199) = 0uLL;
      *(v9 + 198) = 0uLL;
      *(a3[2208] + v5) = 0;
      *(a3[2205] + v5) = 1;
      v14 = p_NV + 8 * v3;
      *(v14 + 9744) = 0xFFFFFFFFLL;
      *(v14 + 9752) = 0uLL;
      *(v14 + 9768) = 0uLL;
      *(v14 + 9784) = 0uLL;
      *(v14 + 9800) = 0uLL;
      *(v14 + 9816) = 0uLL;
      *(v14 + 9832) = 0;
      *(v10 + v5) = -1;
      *v11 = 2048;
      *(v12 + 36 * gal_E1B_AlmSvId2SubframeId[v5] - 4) = 0;
      *(a3[2201] + v5) = 0;
      *(a3[2199] + v5) = 0;
      *(a3[2204] + v5) = 0;
      *(v13 + 31) = 0;
      *v13 = 0uLL;
      *(v13 + 1) = 0uLL;
      v15 = p_NV + 8 * v4;
      *(v15 + 8016) = 0xFFFFFFFFLL;
      *(v15 + 8024) = 0uLL;
      *(v15 + 8040) = 0uLL;
      *(v15 + 8055) = 0;
    }

    ++v5;
    v4 += 6;
    v3 += 12;
    v13 += 36;
    ++v11;
    v9 += 88;
    v8 = (v8 + 92);
  }

  while (v5 != 36);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Check_Age_GAL_Data(int a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a1 < 1)
  {
    v6 = 0;
    goto LABEL_57;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = (a2 + 24044);
  v8 = (a2 + 17708);
  v9 = a1 + 900;
  if (a1 <= 0x384)
  {
    v10 = 900;
  }

  else
  {
    v10 = a1;
  }

  v11 = v10 - 900;
  if (a1 <= 0x15180)
  {
    v12 = 86400;
  }

  else
  {
    v12 = a1;
  }

  v13 = v12 - 86400;
  v14 = *(a2 + 17616);
  do
  {
    if (*(v14 + v4) != 1)
    {
      goto LABEL_19;
    }

    v15 = *v8;
    if (*v8 >= 1 && v15 < v13)
    {
LABEL_17:
      v6 = 1;
      *(*(a2 + 17600) + v4) = 1;
      goto LABEL_19;
    }

    if (v15)
    {
      if (v15 > v9)
      {
        ++v5;
        if ((*(a2 + 62170) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      *v8 = v11;
    }

LABEL_19:
    ++v4;
    v8 += 22;
  }

  while (v4 != 36);
  if (v5 >= 1)
  {
    if (*(a2 + 62170))
    {
      v17 = "(Skipped)";
    }

    else
    {
      v17 = &unk_299066A3A;
    }

    EvLog_v("DD_Check_Age_GAL_Data:  Deleting Future EPH, %d SVs  %s", v5, v17);
  }

  v18 = 0;
  v32 = v7;
  v33 = 0;
  if (a1 <= 15724800)
  {
    v19 = 15724800;
  }

  else
  {
    v19 = a1;
  }

  v20 = v19 - 15724800;
  do
  {
    if (*(*(a2 + 17632) + v18) == 1)
    {
      v21 = *v7;
      if (*v7 >= 1 && v21 < v20)
      {
        v6 = 1;
        *(*(a2 + 17608) + v18) = 1;
        EvLog_v("DD_Check_Age_GAL_Data:  Old ALM deleted SV %d age %d thresh %d", v18 + 1, (a1 - v21) / 604800, (a1 - v20) / 604800);
      }

      else if (v21)
      {
        if (v21 > v9)
        {
          ++v33;
          v23 = (a1 - v21) / 604800;
          v24 = &unk_299066A3A;
          if (*(a2 + 62170))
          {
            v24 = "(Skipped)";
          }

          EvLog_v("DD_Check_Age_GAL_Data:  Future ALM deleted SV %d age %d thresh %d  %s", v18 + 1, v23, 0, v24);
          if ((*(a2 + 62170) & 1) == 0)
          {
            v6 = 1;
            *(*(a2 + 17608) + v18) = 1;
          }
        }
      }

      else
      {
        *v7 = v11;
      }
    }

    ++v18;
    v7 += 9;
  }

  while (v18 != 36);
  if (v33 >= 1)
  {
    if (*(a2 + 62170))
    {
      v25 = "(Skipped)";
    }

    else
    {
      v25 = &unk_299066A3A;
    }

    EvLog_v("DD_Check_Age_GAL_Data:  Deleting Future ALM, %d SVs  %s", v33, v25);
  }

  if (v32[325])
  {
    v26 = v32 + 324;
    if (a1 <= 604800)
    {
      v27 = 604800;
    }

    else
    {
      v27 = a1;
    }

    v28 = *v26;
    if (*v26 < 1 || v28 >= v27 - 604800)
    {
      if (v28)
      {
        if (v28 > v9)
        {
          v31 = *(a2 + 62170) ? "(Skipped)" : &unk_299066A3A;
          EvLog_v("DD_Check_Age_GAL_Data:  Deleting Future GGTO, %d  %d  %s", v28, v9, v31);
          if ((*(a2 + 62170) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        *v26 = v11;
      }
    }

    else
    {
LABEL_55:
      *(v32 + 1302) = 0;
      *v26 = 0;
      *(a2 + 25360) = 0;
      *(a2 + 25376) = 0;
      *(a2 + 25368) = 0;
      *(a2 + 25382) = 0;
    }
  }

LABEL_57:
  v29 = *MEMORY[0x29EDCA608];
  return v6 & 1;
}

void DD_Save_New_GAL_INAV_Eph(int a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v6 = 0;
  v40 = *MEMORY[0x29EDCA608];
  v7 = a2 + 11452;
  v8 = a2 + 7240;
  v38 = a2 + 6520;
  v37 = a2 + 6556;
  v36 = a2 + 10552;
  v9 = 17708;
  v10 = 24078;
  v11 = 24044;
  do
  {
    if (*(v7 + v6) != 1)
    {
      goto LABEL_39;
    }

    v12 = *(v8 + 80);
    v13 = v7 + v6;
    v14 = *(v7 + v6 - 36);
    v15 = v14 != 1 || (v12 & 0x200) == 0;
    if (!v15 || (v14 == 2 ? (v16 = (v12 & 0x800) == 0) : (v16 = 1), !v16))
    {
      v22 = 0;
      v23 = 0;
      v19 = a3[2194];
      goto LABEL_31;
    }

    v17 = (*(v8 + 80) & 0xA00) != 0 && v14 == 3;
    v18 = !v17;
    v19 = a3[2194];
    if (v17 || (*(v19 + v6) & 1) != 0 || (v20 = a3[2204], *(v20 + v6) != 1))
    {
      *(v19 + v6) = v18;
      if (!v18)
      {
        v22 = 0;
        v23 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v21 = *(a3 + v11);
      if (v21 + 3600 > a1 && (v14 == 1 && (*(a3 + v10) & 1) != 0 || v14 == 2 && (*(a3 + v10 - 1) & 1) != 0 || v14 == 3 && ((*(a3 + v10 - 1) | *(a3 + v10)) & 1) != 0))
      {
        v22 = 0;
        v23 = 0;
LABEL_31:
        *(v19 + v6) = 0;
LABEL_32:
        v24 = 2;
        goto LABEL_33;
      }

      if (v21 + 100 < a1)
      {
        *(a3[2199] + v6) = 0;
        *(v20 + v6) = 0;
        *(v38 + v6) = -1;
        *(v37 + 2 * v6) = 2048;
        *(v36 + 36 * gal_E1B_AlmSvId2SubframeId[v6] - 4) = 0;
        v19 = a3[2194];
      }

      *(v19 + v6) = 1;
    }

    v22 = 1;
    v23 = 1;
    v24 = 1;
LABEL_33:
    *(a3[2196] + v5) = v24;
    v25 = a3[2197];
    if (*(v25 + v5 + 8))
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *(a3[2195] + v6) = v22;
      *(v25 + v5) = v24;
      if ((v23 & 1) == 0)
      {
LABEL_38:
        *(v8 + 88) = 0;
        *(v7 + v6) = 0;
        *(v13 - 36) &= 0xFCu;
        goto LABEL_39;
      }
    }

    *(a2 + 7244) = 4;
    GAL_I_EphBin2Int(v8, a3 + v9);
    *(a3[2198] + v6) = 1;
    *(a3[2202] + v6) = 1;
    *(a3 + v9) = a1;
    *(a3[2207] + v6) = 0;
    *(v8 + 88) = 0;
    *(v7 + v6) = 0;
    *(v13 - 36) &= 0xFCu;
    if (a1 >= 1)
    {
      *(a3[2205] + v6) = 1;
      Core_Save_GAL_Eph((v6 + 1), 0, (a3 + v9));
    }

LABEL_39:
    ++v6;
    v9 += 88;
    v5 += 20;
    v8 += 92;
    v10 += 36;
    v11 += 36;
  }

  while (v6 != 36);
  v26 = 0;
  LODWORD(v27) = 0;
  v28 = a3[2194];
  v29 = p_NV;
  v30 = p_NV + 7956;
  v31 = *(v28 + 32);
  v32 = *(v28 + 16);
  *(p_NV + 7956) = *v28;
  *(v30 + 16) = v32;
  *(v29 + 7988) = v31;
  v33 = 55665;
  do
  {
    v34 = *(v29 + 7952 + v26) ^ BYTE1(v33);
    v33 = 52845 * (v33 + v34) + 22719;
    v27 = (v27 + v34);
    ++v26;
  }

  while (v26 != 40);
  *(v29 + 7944) = v27;
  v35 = *MEMORY[0x29EDCA608];
}

void DD_Proc_GAL_INAV_Data(unsigned __int16 *a1, unsigned int a2, int a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v54 = *MEMORY[0x29EDCA608];
  if (a3 == 8)
  {
    v16 = 1;
  }

  else
  {
    if (a3 != 10)
    {
      goto LABEL_6;
    }

    v16 = 2;
  }

  *(a6 + a2 + 11416) |= v16;
LABEL_6:
  v17 = *a1;
  v18 = v17 >> 10;
  v19 = (v18 - 11) < 5 || v18 == 21;
  if (v19 || (v18 - 23) <= 0x27)
  {
    *(a9[2208] + a2) = 1;
    EvCrt_v("DD_Proc_GAL_INAV_Data: GAL SV %d sigID %d - Invalid INAV Word Type %d", a2 + 1, a3, v18);
    goto LABEL_12;
  }

  if (v18 == 5)
  {
    v21 = a1[4];
    v22 = (v21 >> 9) & 1;
    v23 = (v21 >> 11) & 1;
    v25 = *(a6 + 11416 + a2);
    if (v25 == 1 && (v22 & 1) != 0 || v25 == 2 && (v23 & 1) != 0 || v25 == 3 && v23 | v22)
    {
      *(a9[2194] + a2) = 0;
      *(a9[2196] + 20 * a2) = 2;
      *(a9[2195] + a2) = 0;
      *(a9[2197] + 20 * a2) = 2;
      *(a6 + 11416 + a2) &= 0xFCu;
      EvLog_v("DD_Proc_GAL_INAV_Data:  GAL Health H->U: SV %d E1B_HS %d E5b_HS %d ", a2 + 1, v22, v23);
      v26 = a9[2208];
      v27 = *MEMORY[0x29EDCA608];
      v28 = (a6 + 11488);
      v29 = a2;
      v30 = a1;
      v31 = 0;
LABEL_22:

      DD_Proc_GAL_INAV_GST(v29, v30, v31, a5, v28, v26, a8);
      return;
    }

    v37 = a9[2194];
    if ((*(v37 + a2) & 1) == 0 && *(a9[2204] + a2) == 1)
    {
      if (v25 != 1 || (*(a9 + 36 * a2 + 24078) & 1) != 0)
      {
        v42 = *(a9 + 36 * a2 + 24077) & 1;
        if (v25 != 2 || (*(a9 + 36 * a2 + 24077) & 1) != 0)
        {
          if (v25 != 3 || (*(a9 + 36 * a2 + 24078) & 1) != 0 || (*(a9 + 36 * a2 + 24077) & 1) != 0)
          {
            if (g_Logging_Cfg >= 6)
            {
              EvLog_v("DD_Proc_GAL_INAV_Data:  GAL Health U->U: SV %d Alm still unhealthy");
            }
          }

          else
          {
            *(v37 + a2) = 1;
            *(a9[2196] + 20 * a2) = 1;
            *(a9[2195] + a2) = 1;
            *(a9[2197] + 20 * a2) = 1;
            EvLog_v("DD_Proc_GAL_INAV_Data:  GAL E1B-E5b Health U->H: SV %d Alm.E1B_HS %d Alm.E5b_HS %d");
          }
        }

        else
        {
          *(a9[2195] + a2) = 1;
          *(a9[2197] + 20 * a2) = 1;
          EvLog_v("DD_Proc_GAL_INAV_Data:  GAL E5b Health U->H : SV %d Alm.E5b_HS %d");
        }
      }

      else
      {
        *(v37 + a2) = 1;
        *(a9[2196] + 20 * a2) = 1;
        EvLog_v("DD_Proc_GAL_INAV_Data:  GAL E1-B Health U->H : SV %d Alm.E1B_HS %d");
      }
    }

    v53 = 0;
    v39 = (a6 + 92 * a2 + 7312);
    v41 = 1024;
LABEL_67:
    if (DD_Proc_GAL_INAV_Eph(a2, v18, v41, a1, *a5, a4, a8, v39, a9[2208], a7, a6))
    {
      v43 = &a9[11 * a2];
      v44 = *(v43 + 4427) == 0;
      v45 = *a5;
      *(v43 + 4427) = *a5;
      v46 = *(a6 + 92 * a2 + 7328) == 15;
      if ((v44 || v46) && v45 >= 1)
      {
        *(a9[2205] + a2) = 1;
        Core_Save_GAL_Eph((a2 + 1), 0, (v43 + 17708));
      }

      *(a6 + a2 + 11416) &= 0xFCu;
    }

    else
    {
      if (*(a6 + a2 + 11452) == 1)
      {
        DD_Save_New_GAL_INAV_Eph(*a5, a6, a9);
      }

      v46 = v53;
    }

    if (v18 == 5)
    {
      v26 = a9[2208];
      v47 = *MEMORY[0x29EDCA608];
      v28 = (a6 + 11488);
      v29 = a2;
      v30 = a1;
      v31 = v46;
      goto LABEL_22;
    }

LABEL_12:
    v20 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v17 >> 10 <= 5)
  {
    if (v17 >> 10 > 2)
    {
      v32 = a6 + 92 * a2;
      v33 = a2;
      if (v18 == 3)
      {
        v34 = 7280;
      }

      else
      {
        v34 = 7296;
      }

      goto LABEL_48;
    }

    switch(v18)
    {
      case 0:
        v31 = *(a6 + 92 * a2 + 7328) == 15;
        v26 = a9[2208];
        v38 = *MEMORY[0x29EDCA608];
        v28 = (a6 + 11488);
        v29 = a2;
        v30 = a1;
        goto LABEL_22;
      case 1:
        v32 = a6 + 92 * a2;
        v33 = a2;
        v34 = 7248;
        goto LABEL_48;
      case 2:
        v32 = a6 + 92 * a2;
        v33 = a2;
        v34 = 7264;
LABEL_48:
        v39 = (v32 + v34);
        if ((v17 - 5120) < 0xF000u)
        {
          goto LABEL_12;
        }

        v40 = a6 + 92 * v33;
        v41 = v17 & 0x3FF;
        if (((*(v40 + 7328) >> (v18 - 1)) & 1) == 0 && *(a9[2194] + v33) == 1 && *(a9[2202] + v33) == 1 && *(a6 + 8 * v33 + 2 * (v18 - 1) + 6628) == v41)
        {
          v51 = v39;
          v52 = a6 + 92 * v33;
          DD_Proc_GAL_INAV_Eph_Bit_Validation(v18, a1, v39, (v40 + 7328), a5);
          v39 = v51;
          v53 = *(v52 + 7328) == 15;
        }

        else
        {
          v53 = 0;
        }

        goto LABEL_67;
    }

LABEL_56:
    EvLog_v("DD_Proc_GAL_INAV_Data:  WRONG I/NAV WordType - SV %d WordType %d  ");
    goto LABEL_12;
  }

  if ((v18 - 7) >= 4)
  {
    if (v18 == 6)
    {
      *(a6 + 11488) = (a1[7] >> 3) & 0xFFF01FFF | ((a1[6] & 0x7F) << 13);
      goto LABEL_12;
    }

    if (v18 == 63)
    {
      v49 = a1[2];
      v50 = a1[3];
      v48 = a1[1];
      EvLog_v("DD_Proc_GAL_INAV_Data:  SV %d WordType %d Dummy Message: 0x%x 0x%x 0x%x 0x%x ...");
      goto LABEL_12;
    }

    goto LABEL_56;
  }

  v35 = *a5;
  v36 = *MEMORY[0x29EDCA608];

  DD_Proc_GAL_INAV_Alm(a1, v18, a2, a3, v35, a6, a8, a9);
}

char *DD_Proc_GAL_INAV_GST(unsigned int a1, unsigned __int16 *a2, int a3, _DWORD *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x29EDCA608];
  v35 = 0;
  v34 = 0;
  result = Decode_GAL_INAV_GST(a2, &v34, &v35);
  if (result)
  {
    v14 = v34;
    if (v34 > 0x93A7F)
    {
      result = EvCrt_v("DD_Proc_GAL_INAV_GST:  Rejected:  TOW = %d  >=604800, Out of range!");
LABEL_6:
      *(a6 + a1) = 1;
      goto LABEL_7;
    }

    v15 = v35;
    if (v35 >= 4096)
    {
      result = EvCrt_v("DD_Proc_GAL_INAV_GST:  Rejected:  Week = %d  >=4096, Out of range!");
      goto LABEL_6;
    }

    *a5 = v34;
    v17 = v15 + 1024;
    if (*(a7 + 16) != 1)
    {
      v19 = v17;
      v22 = a1 + 1;
      EvLog_v("WeekNum initialized to %d from GAL SV%d", v17, v22);
      v23 = v22;
LABEL_18:
      result = EvLog_v("WeekNum Submit %d %d GAL SV %d", 1, v19, v23);
      *(a7 + 32) = v17;
      *(a7 + 16) = 1;
      *(a7 + 20) = *(a7 + 24);
      *(a7 + 64) = -1;
      *(a7 + 68) = -1;
      *(a7 + 70) = 0;
      *(a7 + 74) = 0;
      if (*a7 < 3)
      {
        *a4 = 0;
      }

      else
      {
        *a4 = v14 + 604800 * v17;
      }

      goto LABEL_7;
    }

    if (*a7 < 3 || v14 - 32 >= 0x93A41)
    {
      *(a7 + 68) = -1;
      *(a7 + 64) = -1;
      *(a7 + 70) = 0;
      *(a7 + 74) = 0;
      goto LABEL_7;
    }

    v18 = *(a7 + 32);
    v19 = v17;
    if (v18 != v17 && a3)
    {
      v20 = 0;
      v21 = (a7 + 70);
      while (*(v21 - 3) != v17)
      {
        ++v20;
        ++v21;
        if (v20 == 3)
        {
          goto LABEL_30;
        }
      }

      if (v20 >= 3)
      {
LABEL_30:
        v29 = 0;
        v30 = (a7 + 64);
        while (*v30 != -1)
        {
          --v29;
          ++v30;
          if (v29 == -3)
          {
            v31 = 3;
            goto LABEL_39;
          }
        }

        v32 = -v29;
        if (v32 < 3)
        {
          *v30 = v17;
          v30[3] = 1;
          goto LABEL_40;
        }

        v31 = v32;
LABEL_39:
        *(a7 + 68) = -1;
        *(a7 + 64) = -1;
        *(a7 + 70) = 0;
        *(a7 + 74) = 0;
        EvLog_v("DD_GAL_Proc_Submit_GPS_WeekNo: WeekNum Candidate overflow, %d >= %d", v31, 3);
        goto LABEL_40;
      }

      v33 = ++*v21;
      if (v33 < 3)
      {
        goto LABEL_40;
      }

      EvLog_v("DD_GAL_Proc_Submit_GPS_WeekNo: WeekNum Candidate %d accepted based on %d obs", v17, v33);
      v23 = a1 + 1;
      goto LABEL_18;
    }

    if (v18 == v17)
    {
      v24 = (a7 + 70);
      v25 = 3;
      do
      {
        v26 = *v24;
        v27 = __OFSUB__(v26, 1);
        v28 = v26 - 1;
        if (v28 < 0 == v27)
        {
          *v24 = v28;
          if (!v28)
          {
            *(v24 - 3) = -1;
          }
        }

        ++v24;
        --v25;
      }

      while (v25);
    }

LABEL_40:
    result = EvLog_v("WeekNum Submit %d %d GAL SV %d", 0, v17, a1 + 1);
  }

LABEL_7:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_GAL_INAV_Eph_Bit_Validation(uint64_t result, uint64_t a2, const unsigned __int16 *a3, const unsigned __int16 *a4, unsigned int *a5)
{
  v5 = 0;
  v8 = *MEMORY[0x29EDCA608];
  LOBYTE(v6) = 1;
  while (result == 3 || v5 != 7)
  {
    v6 = (*(a2 + v5 * 2) == a3[v5]) & v6;
    if (++v5 == 8)
    {
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  if ((((a3[7] ^ *(a2 + 14)) < 4) & v6) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  *a4 |= 1 << (result - 1);
LABEL_9:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_GAL_INAV_Eph(unsigned int a1, unsigned int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x29EDCA608];
  v15 = a1;
  v16 = (a2 - 1);
  v17 = 5 * a1;
  if (a2 <= 4)
  {
    v18 = a11 + 8 * a1 + 2 * v16;
    v19 = *(v18 + 6628);
    v20 = v19 == a3;
    if (v19 > 0x3FF || v19 != a3)
    {
      if (v19 != a3 && *(a11 + 6916 + 2 * a1) != a3)
      {
        *(a11 + v17 + 7060) = 0;
        *(a11 + v17 + 7064) = 0;
        *(a11 + 6916 + 2 * a1) = a3;
      }

      *(a11 + v17 + v16 + 7060) = 1;
LABEL_24:
      *(v18 + 6628) = a3;
      *a8 = *a4;
      goto LABEL_26;
    }

    v24 = 0;
    v25 = 2;
    while (a2 == 3 || v25 != 14)
    {
      if (*(a4 + v25) != *(a8 + v25))
      {
        ++v24;
      }

      v25 += 2;
      if (v25 == 16)
      {
        goto LABEL_23;
      }
    }

    if ((*(a8 + 14) ^ *(a4 + 14)) > 3)
    {
      ++v24;
    }

LABEL_23:
    *(a11 + v17 + v16 + 7060) = 1;
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_25:
    v20 = 1;
    goto LABEL_26;
  }

  *(a11 + 7060 + v17 + v16) = 1;
  *a8 = *a4;
  v22 = a11 + 2 * a1;
  v23 = *(v22 + 6916);
  if (v23 == 1024)
  {
    v20 = 0;
    *(a11 + 7060 + 5 * a1) = 0;
    *(v22 + 6988) = a3;
  }

  else
  {
    if (*(a11 + 6988 + 2 * a1) == v23)
    {
      goto LABEL_25;
    }

    v20 = 0;
    *(a11 + 6988 + 2 * a1) = v23;
  }

LABEL_26:
  v26 = (a11 + v17 + 7060);
  if (*v26 != 1 || *(a11 + v17 + 7061) != 1)
  {
    goto LABEL_61;
  }

  if (*(a11 + v17 + 7062) != 1)
  {
    goto LABEL_48;
  }

  if (*(a11 + v17 + 7063) != 1)
  {
    goto LABEL_48;
  }

  if (*(a11 + v17 + 7064) != 1)
  {
    goto LABEL_48;
  }

  v27 = a11 + 8 * a1;
  v28 = *(v27 + 6628);
  if (v28 != *(v27 + 6630))
  {
    goto LABEL_48;
  }

  v29 = v27 + 6628;
  if (v28 != *(v29 + 4) || v28 != *(v29 + 6) || v28 != *(a11 + 2 * a1 + 6988))
  {
    goto LABEL_48;
  }

  v58 = 0;
  memset(v57, 0, sizeof(v57));
  GAL_I_EphBin2Int(a11 + 92 * a1 + 7240, v57);
  v30 = a1 + 1;
  if (v30 != BYTE14(v57[0]))
  {
    v26[4] = 0;
    *v26 = 0;
    *(a11 + v15 + 11452) = 0;
    *(a10 + *(a6 + 9) + 448) = 65;
    v33 = *(a6 + 9);
    *(a10 + 4 * v33 + 576) = *(a7 + 24);
    GNSS_SV_Str = Get_GNSS_SV_Str(*(a6 + 4));
    EvCrt_v("ChanReset %d : DD_Proc_GAL_INAV_Eph  %s  OTA decoded PRN mismatch!  OTA %d  Meas SVID %d", v33, GNSS_SV_Str, BYTE14(v57[0]), v30);
LABEL_61:
    result = 0;
    goto LABEL_62;
  }

  v59[0] = 0;
  v59[1] = 0;
  v60 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  v68 = 0u;
  memset(v69, 0, sizeof(v69));
  v70 = 0;
  v71 = 0;
  GAL_EphInt2Real(v57, v59);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  GAL_EphReal2Kep(v59, v42);
  v31 = Kep_Check_Ephemeris(a5 / 604800, a5 % 604800, 1, v42);
  v32 = v31;
  if (!ST_Check_Eph_Kep_Err("DD_Proc_GAL_INAV_Eph:", v31, v42))
  {
    if ((v32 & 0x3F0) != 0)
    {
      *v26 = 0;
    }

    if ((v32 & 0xC00) != 0)
    {
      v26[2] = 0;
    }

    if ((v32 & 0xC) != 0)
    {
      v26[3] = 0;
LABEL_45:
      *(a9 + v15) = 1;
      goto LABEL_46;
    }

    if ((v32 & 0xFF0) != 0)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  if ((*v26 & 1) == 0 || (v26[1] & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if (v26[2] != 1)
  {
    goto LABEL_61;
  }

  if (v26[3] != 1)
  {
    goto LABEL_61;
  }

  if (v26[4] != 1)
  {
    goto LABEL_61;
  }

  v35 = a11 + 8 * v15;
  v36 = *(v35 + 6628);
  if (v36 != *(v35 + 6630))
  {
    goto LABEL_61;
  }

  v37 = v35 + 6628;
  if (v36 != *(v37 + 4) || v36 != *(v37 + 6) || v36 != *(a11 + 2 * v15 + 6988))
  {
    goto LABEL_61;
  }

  if (!v20)
  {
    v38 = (a11 + v15 + 11452);
    goto LABEL_60;
  }

  v38 = (a11 + v15 + 11452);
  if (*(a11 + 92 * v15 + 7328) != 15)
  {
LABEL_60:
    *v38 = 1;
    *v26 = 0;
    v26[4] = 0;
    goto LABEL_61;
  }

  v39 = *v38;
  *v26 = 0;
  v26[4] = 0;
  if (v39)
  {
    goto LABEL_61;
  }

  result = 1;
LABEL_62:
  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_GAL_INAV_Alm(uint64_t result, int a2, unsigned int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = result;
  v16 = 0;
  v140[2] = *MEMORY[0x29EDCA608];
  v140[0] = 0;
  v140[1] = 0;
  v139[0] = 0;
  v139[1] = 0;
  v137 = 0u;
  v138 = 0u;
  if (a2 <= 8)
  {
    if (a2 == 7)
    {
      v16 = (*(result + 2) >> 4) & 0x3F;
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_34;
      }

      v16 = (*(result + 6) >> 15) & 0xFFFFFFC1 | (2 * (*(result + 4) & 0x1F));
    }

    goto LABEL_12;
  }

  if (a2 == 9)
  {
    v16 = (*(result + 8) >> 3) & 0x3F;
LABEL_12:
    if (v16 - 1 <= 0x23)
    {
      LOBYTE(v24) = gal_E1B_AlmSvId2SubframeId[v16 - 1];
      goto LABEL_53;
    }

    goto LABEL_34;
  }

  if (a2 != 10)
  {
    goto LABEL_34;
  }

  v17 = *(result + 12);
  HIDWORD(v19) = *(result + 10);
  LODWORD(v19) = v17 << 16;
  v18 = v19 >> 26;
  v20 = *(result + 14);
  v21 = (v20 << 6) & 0x300000 | (v17 << 22);
  v22 = (v20 >> 6);
  v23 = v20 & 0x3F;
  if (v18 == 0xFFFF && v21 >> 20 == 4095 && v22 == 255)
  {
    if (v23 == 63)
    {
      result = EvCrt_v("DD_Proc_GAL_INAV_GGTO_Word: SVID %d gives Invalid GGTO (all ones), Skipped!", a3 + 1);
LABEL_33:
      v16 = 0;
      goto LABEL_34;
    }

LABEL_9:
    result = EvCrt_v("DD_Proc_GAL_INAV_GGTO_Word: FAILED: ToG = %d  > 167 , GGTO Skipped!", (v20 >> 6));
    v16 = 0;
    *(*(a8 + 17664) + a3) = 1;
    goto LABEL_34;
  }

  if (v22 >= 0xA8)
  {
    goto LABEL_9;
  }

  if (*(a8 + 25344) == 4)
  {
    v25 = v23 - *(a8 + 25353);
    if (v25)
    {
      if (v25 < -32)
      {
        v25 += 64;
      }

      if (v25 > 32)
      {
        v25 -= 64;
      }

      if (v25 < 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(a8 + 25352) >= v22 && *(a8 + 25348) == v18 && *(a8 + 25350) == (v21 >> 20))
    {
      goto LABEL_33;
    }
  }

  v26 = v21 >> 20;
  *(a8 + 25340) = a5;
  *(a8 + 25348) = v18;
  *(a8 + 25350) = v26;
  *(a8 + 25352) = v22;
  *(a8 + 25353) = v23;
  *(a8 + 25344) = 4;
  *(a8 + 25360) = a5;
  *(a8 + 25364) = 4;
  *(a8 + 25368) = v18 * 2.91038305e-11;
  *(a8 + 25376) = v26 * 4.4408921e-16;
  *(a8 + 25384) = 3600 * v22;
  *(a8 + 25388) = v20 & 0x3F;
  if (a5 < 1)
  {
    v16 = 0;
    goto LABEL_39;
  }

  v27 = 0;
  LODWORD(v28) = 0;
  v29 = p_NV;
  v30 = p_NV + 8000;
  *(p_NV + 8000) = *(a8 + 25340);
  v31 = 55665;
  do
  {
    v32 = *(v30 + v27) ^ BYTE1(v31);
    v31 = 52845 * (v31 + v32) + 22719;
    v28 = (v28 + v32);
    ++v27;
  }

  while (v27 != 16);
  v16 = 0;
  *(v29 + 7992) = v28;
LABEL_34:
  if (a5 >= 1 && *(a7 + 16) == 1)
  {
    v33 = a5;
    if (*a7 > 4)
    {
      goto LABEL_40;
    }
  }

LABEL_39:
  v33 = *(a6 + 11488);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_40:
    v34 = 2185 * (v33 % 0x2D0);
    v24 = HIWORD(v34) + 1;
    if ((v34 & 0x10000) != 0)
    {
      v35 = -11;
    }

    else
    {
      v35 = -9;
    }

    goto LABEL_44;
  }

  LOBYTE(v24) = 0;
  v35 = -11;
LABEL_44:
  if ((v35 + a2) < 0xFEu)
  {
    LOBYTE(v24) = 0;
  }

  if (v24 > 0xCu)
  {
    v36 = -12;
  }

  else
  {
    v36 = 12;
  }

  v37 = v36 + v24;
  if (!v24)
  {
    v37 = v24;
  }

  if (a4 == 10)
  {
    LOBYTE(v24) = v37;
  }

LABEL_53:
  if ((v24 - 25) <= 0xE7u)
  {
    result = EvLog_v("DD_Proc_GAL_INAV_Alm: For SV %d WordType %d Alm SVID %d sfID %d not found. Word Type is discarded.", a3 + 1, a2, v16, v24);
    goto LABEL_55;
  }

  v116 = a5;
  if (v24 == 24)
  {
    v39 = *(a8 + 17664);
    *(v39 + 32) = 0;
    *v39 = 0u;
    *(v39 + 16) = 0u;
  }

  v40 = v24 - 1;
  v41 = a6 + 10552;
  v42 = (a6 + 10552 + 36 * (v24 - 1));
  v43 = *v15;
  if (a2 >= 9)
  {
    v44 = -9;
  }

  else
  {
    v44 = -7;
  }

  v45 = (v44 + a2);
  *&v42[16 * v45] = *v15;
  v46 = v42 + 32;
  v42[v45 + 32] = 1;
  v47 = v42 + 34;
  v42[v45 + 34] = (v43 >> 6) & 0xF;
  if (*(a7 + 16) == 1)
  {
    v48 = *(a7 + 32);
    if (v48 >= 1025)
    {
      if ((a2 - 9) < 2)
      {
        if (*v46 != 1)
        {
          goto LABEL_55;
        }

        if (v42[33] == 1 && v42[34] == v42[35])
        {
          v140[0] = a6 + 10552 + 36 * (v24 - 1);
          v139[0] = v42 + 16;
          v42[33] = 0;
          v49 = 1;
        }

        else
        {
          v49 = 0;
        }

        if (a2 == 9)
        {
          v52 = v24 - 2;
          if (!v40)
          {
            v52 = 23;
          }

          v53 = (v41 + 36 * v52);
          if (v53[33] == 1)
          {
            v54 = *v47;
            if (v54 == v53[35])
            {
              v140[v49] = v53 + 16;
              v139[v49] = v42;
              v51 = v49 + 1;
              v94 = v53[34] == v54;
              v55 = a5;
              if (v94)
              {
                v53[33] = 0;
              }

              goto LABEL_93;
            }
          }
        }
      }

      else
      {
        if ((a2 - 7) > 1)
        {
          goto LABEL_55;
        }

        if (*v46 == 1 && v42[33] == 1 && v42[34] == v42[35])
        {
          v140[0] = a6 + 10552 + 36 * (v24 - 1);
          v139[0] = v42 + 16;
          v42[32] = 0;
          v49 = 1;
        }

        else
        {
          v49 = 0;
        }

        if (a2 == 8 && v42[33] == 1)
        {
          if (v24 > 0x17u)
          {
            LOBYTE(v24) = v24 - 24;
          }

          v50 = v41 + 36 * v24;
          if (*(v50 + 32) == 1 && *v47 == *(v50 + 34))
          {
            v140[v49] = v42 + 16;
            v139[v49] = v50;
            v51 = v49 + 1;
LABEL_92:
            v55 = a5;
LABEL_93:
            v56 = a6 + 11416;
            v115 = a6 + 6556;
            v114 = a6 + 6520;
            v111 = a8 + 24044;
            v57 = v51;
            v108 = v48 - 1024;
            v112 = v48 & 3;
            v113 = 16 * (v48 - 1024);
            v106 = a6 + 6628;
            v105 = a6 + 6916;
            v104 = a6 + 6988;
            v103 = a6 + 7240;
            v58 = 1861606989 * v55;
            v109 = v58 >> 50;
            v110 = v58 >> 63;
            while (1)
            {
              v59 = v139[v57 - 1];
              if (v59)
              {
                v60 = *(a8 + 17552);
                v61 = *(v56 + a3);
                result = Extract_GAL_INAV_ALM(v140[v57 - 1], v59, &v137);
                if (result)
                {
                  DWORD1(v137) = 4;
                  v62 = (WORD5(v137) >> 4) & 0x3F;
                  if (v62)
                  {
                    if (v62 <= 0x24)
                    {
                      v63 = WORD4(v137);
                      v64 = (WORD4(v137) >> 6) & 0xF;
                      v65 = (WORD5(v137) >> 10) & 0xFFFFFC3F | ((BYTE8(v137) & 0xF) << 6);
                      v66 = v62 - 1;
                      v67 = (v62 - 1);
                      v68 = *(v115 + 2 * v67);
                      if (v64 == *(v114 + v67))
                      {
                        if ((*(v60 + v67) & 1) == 0 && v65 == v68)
                        {
                          v69 = BYTE10(v138);
                          v70 = BYTE10(v138) & 0x20;
                          if (v61 == 1 && (BYTE10(v138) & 0x20) == 0 || v61 == 2 && (BYTE10(v138) & 0x80) == 0 || v61 == 3 && (BYTE10(v138) & 0xA0) == 0)
                          {
                            goto LABEL_111;
                          }

LABEL_134:
                          v90 = v111 + 36 * v62;
                          v93 = *(v90 - 36);
                          v91 = (v90 - 36);
                          v92 = v93;
                          *v91 = v116;
                          if (v116 >= 1 && !v92)
                          {
                            result = Core_Save_GAL_Alm(v62, 0, v91);
                          }

                          goto LABEL_137;
                        }

                        if (v65 == v68)
                        {
                          goto LABEL_134;
                        }
                      }

                      else if (v65 > v68 || (v68 - v65) > 500)
                      {
                        *(v114 + v67) = v64;
                        *(v115 + 2 * v67) = v65;
                        v69 = BYTE10(v138);
                        v70 = BYTE10(v138) & 0x20;
LABEL_111:
                        v71 = (v63 >> 4) & 3;
                        HIDWORD(v138) = v113;
                        if (v112 == v71)
                        {
                          v72 = 0;
                        }

                        else
                        {
                          v72 = v71;
                        }

                        v73 = *(v56 + v66);
                        if (v73 == 1 && v70 || v73 == 2 && v69 < 0)
                        {
                          v74 = (*(a8 + 17552) + v66);
                          goto LABEL_119;
                        }

                        v94 = (v69 & 0xA0) != 0 && v73 == 3;
                        v95 = !v94;
                        v74 = (*(a8 + 17552) + v66);
                        if (v94 || (*v74 & 1) != 0)
                        {
                          *v74 = v95;
                          if (v95)
                          {
                            goto LABEL_158;
                          }

                          v75 = 0;
                          v76 = 0;
                        }

                        else
                        {
                          v96 = *(a8 + 17616);
                          if (*(v96 + v66) != 1)
                          {
                            goto LABEL_156;
                          }

                          v97 = a8 + 17708 + 88 * v66;
                          v98 = *v97;
                          v99 = v116;
                          if (*v97 + 3600 <= v116 || ((v100 = *(v97 + 86), v73 != 1) || (v100 & 1) == 0) && ((v101 = *(v97 + 85), v73 != 2) || (v101 & 1) == 0) && (v99 = v116, ((v73 == 3) & (v101 | v100)) == 0))
                          {
                            if (v98 + 100 < v99)
                            {
                              *(*(a8 + 17584) + v66) = 0;
                              *(v96 + v66) = 0;
                              *(v106 + 8 * v66) = 0x400040004000400;
                              *(v105 + 2 * v66) = 1024;
                              *(v104 + 2 * v66) = 1024;
                              *(v56 + v66) &= 0xFCu;
                              v102 = (v103 + 92 * v66);
                              *(v102 + 76) = 0u;
                              v102[3] = 0u;
                              v102[4] = 0u;
                              v102[1] = 0u;
                              v102[2] = 0u;
                              *v102 = 0u;
                              v74 = (*(a8 + 17552) + v66);
                            }

LABEL_156:
                            *v74 = 1;
LABEL_158:
                            v75 = 1;
                            v76 = 1;
                            v77 = 1;
LABEL_121:
                            *(*(a8 + 17568) + 20 * v66 + 4) = v77;
                            v78 = *(a8 + 17576);
                            if (!*(v78 + 20 * v66 + 8))
                            {
                              *(*(a8 + 17560) + v66) = v75;
                              *(v78 + 20 * v66 + 4) = v77;
                            }

                            if (v76)
                            {
                              v107 = v72;
                              memset(v131, 0, 35);
                              GAL_AlmBin2Int(&v137, v131);
                              v135 = 0u;
                              memset(v136, 0, 27);
                              v133 = 0u;
                              v134 = 0u;
                              v79 = v111 + 36 * v66;
                              v132 = 0u;
                              GAL_AlmInt2Real(v79, &v132);
                              v123 = *(v136 + 8);
                              v124 = *(&v133 + 1);
                              v125 = *&v134 + 0.977384381;
                              v126 = v135;
                              v127 = *&v136[0];
                              v128 = *&v133 + 5440.5882;
                              v129 = *(&v134 + 1);
                              v117[0] = 0;
                              v117[1] = DWORD1(v132);
                              v117[2] = 3;
                              v118 = BYTE8(v132);
                              v119 = BYTE10(v136[1]) | (8 * BYTE9(v136[1]));
                              v120 = BYTE9(v132);
                              v121 = WORD5(v132) + 1024;
                              v122 = HIDWORD(v132);
                              v130 = *(&v135 + 1);
                              v80 = Kep_Check_Almanac(v109 + v110, v117);
                              if (v80)
                              {
                                *(*(a8 + 17664) + v66) = 1;
                              }

                              result = ST_Check_Alm_Kep_Err("DD_Proc_GAL_INAV_Alm_Data:", v80, v117);
                              if (result)
                              {
                                result = GAL_AlmBin2Int(&v137, v79);
                                *(v79 + 10) = v107 + v108;
                                *v79 = v116;
                                *(v79 + 4) = 4;
                                *(*(a8 + 17592) + v66) = 1;
                                *(*(a8 + 17632) + v66) = 1;
                              }

                              if (v116 >= 1)
                              {
                                result = Core_Save_GAL_Alm(v62, 0, v79);
                              }
                            }

                            v81 = 0;
                            LODWORD(v82) = 0;
                            v83 = *(a8 + 17552);
                            v84 = p_NV;
                            v85 = p_NV + 7956;
                            v86 = *(v83 + 32);
                            v87 = *(v83 + 16);
                            *(p_NV + 7956) = *v83;
                            *(v85 + 16) = v87;
                            *(v84 + 7988) = v86;
                            v88 = 55665;
                            do
                            {
                              v89 = *(v84 + 7952 + v81) ^ BYTE1(v88);
                              v88 = 52845 * (v88 + v89) + 22719;
                              v82 = (v82 + v89);
                              ++v81;
                            }

                            while (v81 != 40);
                            *(v84 + 7944) = v82;
                            goto LABEL_137;
                          }

LABEL_119:
                          v75 = 0;
                          v76 = 0;
                          *v74 = 0;
                        }

                        v77 = 2;
                        goto LABEL_121;
                      }
                    }
                  }
                }
              }

LABEL_137:
              if (!--v57)
              {
                goto LABEL_55;
              }
            }
          }
        }
      }

      if (!v49)
      {
        goto LABEL_55;
      }

      v51 = 1;
      goto LABEL_92;
    }
  }

LABEL_55:
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_SV_Carrier_Freq_I4(int a1)
{
  if (BYTE1(a1) == 15)
  {
    v1 = 0;
  }

  else
  {
    v1 = 1575420000;
  }

  if (BYTE1(a1) == 14)
  {
    v2 = 1207140000;
  }

  else
  {
    v2 = v1;
  }

  if (BYTE1(a1) == 13)
  {
    v3 = 1176450000;
  }

  else
  {
    v3 = v2;
  }

  if (BYTE1(a1) == 12)
  {
    v4 = 1561098000;
  }

  else
  {
    v4 = 1575420000;
  }

  if (BYTE1(a1) == 10)
  {
    v5 = 1207140000;
  }

  else
  {
    v5 = v4;
  }

  if (BYTE1(a1) == 9)
  {
    v6 = 1176450000;
  }

  else
  {
    v6 = v5;
  }

  if (BYTE1(a1) <= 0xCu)
  {
    v3 = v6;
  }

  v7 = 562500 * (a1 >> 24) + 1602000000;
  if (BYTE1(a1) == 7)
  {
    v8 = 1176450000;
  }

  else
  {
    v8 = 1575420000;
  }

  if (BYTE1(a1) == 6)
  {
    v9 = 1207140000;
  }

  else
  {
    v9 = v8;
  }

  if (BYTE1(a1) != 4)
  {
    v7 = v9;
  }

  if (BYTE1(a1) == 3)
  {
    v10 = 1176450000;
  }

  else
  {
    v10 = 1575420000;
  }

  if (BYTE1(a1) == 2)
  {
    v10 = 1227600000;
  }

  if (BYTE1(a1) > 3u)
  {
    v10 = v7;
  }

  if (BYTE1(a1) <= 8u)
  {
    result = v10;
  }

  else
  {
    result = v3;
  }

  v12 = *MEMORY[0x29EDCA608];
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void *NK_Update_Intermediate_Residual(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if ((result - 1) >= 3)
  {
    v18 = *MEMORY[0x29EDCA608];

    return gn_report_assertion_failure("NK_Update_Intermediate_Residual");
  }

  else
  {
    v5 = result;
    v6 = 0;
    v7 = a4 + (14904 * (result - 1));
    v8 = v7 + 7080;
    v9 = v7 + 7336;
    v19 = v7 + 7208;
    v10 = a4 + 52776;
    v11 = v7 + 12072;
    v12 = a3 + 1600;
    v13 = v7 + 13096;
    do
    {
      if (*(v8 + v6) == 1 && (*(v9 + 4 * v6) - 1) >= 0x1E)
      {
        result = NK_Obs_Equ_SV(v5, *(v19 + v6), *(a2 + 4 * v6), (v10 + 56 * v6), v21, *(a4 + 1552));
        v14 = 0;
        v15 = 0.0;
        do
        {
          v16 = vmulq_f64(*&v21[v14], *(v12 + v14));
          v15 = v15 + v16.f64[0] + v16.f64[1];
          v14 += 16;
        }

        while (v14 != 96);
        *(v13 + 8 * v6) = *(v11 + 8 * v6) - v15;
      }

      ++v6;
    }

    while (v6 != 128);
    v17 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void Kep_Calc_SV_Ref_State_BDS_GEO(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v163 = *MEMORY[0x29EDCA608];
  if (*(a4 + 8) == 4)
  {
    v6 = *(a4 + 12);
    if (v6 <= 0x3F && v6 - 6 >= 0x35)
    {
      v9 = a2;
      if (*(a4 + 22))
      {
        v11 = *(a4 + 28);
        v12 = a3 + 604800 * (a2 - *(a4 + 22)) - v11;
      }

      else
      {
        v11 = *(a4 + 28);
        v13 = a3 - v11;
        v14 = a3 - v11 - 604800;
        if (a3 - v11 <= 302399)
        {
          v14 = a3 - v11;
        }

        if (v13 < -302400)
        {
          v12 = v13 + 604800;
        }

        else
        {
          v12 = v14;
        }
      }

      v15 = *(a4 + 184);
      v16 = v15 * v15;
      v17 = *(a4 + 192);
      v151 = *(a4 + 104) + 19964980.4 / (v15 * (v15 * v15)) + *(a4 + 112) * v12 * 0.5;
      v152 = v12;
      v18 = *(a4 + 176) + v151 * v12;
      v19 = sin(v18);
      v20 = 0;
      v21 = *(a4 + 224);
      v22 = v18 + v21 * v19;
      do
      {
        v23 = v22;
        v22 = v18 + v21 * sin(v22);
      }

      while (vabdd_f64(v22, v23) > 1.0e-11 && v20++ < 0x13);
      v25 = 1.0 - v21 * v21;
      v26 = tan(v22 * 0.5);
      v27 = atan(sqrt((v21 + 1.0) / (1.0 - v21)) * v26);
      v28 = v27 + v27;
      if (v28 < 0.0)
      {
        v28 = v28 + 6.28318531;
      }

      v29 = __sincos_stret(v28);
      v30 = __sincos_stret(*(a4 + 216));
      v31 = v29.__cosval * v30.__sinval + v29.__sinval * v30.__cosval;
      v32 = v29.__cosval * v30.__cosval - v29.__sinval * v30.__sinval;
      v33 = v32 * (v31 + v31);
      if (a1 == 1)
      {
        v34 = v32 * v32 - v31 * v31;
        v35 = v34 * *(a4 + 136) + *(a4 + 144) * v33;
        v36 = v35 * v35 * -0.5 + 1.0;
        v37 = v32 * v35;
        v138 = v35;
        v38 = -(v31 * v35);
        v31 = v37 + v31 * v36;
        v32 = v38 + v32 * v36;
        v39 = v34 * *(a4 + 120) + *(a4 + 128) * v33;
      }

      else
      {
        v39 = 0.0;
        v34 = 0.0;
        v138 = 0.0;
      }

      v146 = v21 * v29.__cosval + 1.0;
      v135 = v34;
      v137 = v39;
      v40 = (v16 + v17 * v152) * v25 / v146 + v39;
      v148 = v40 * v32;
      v41 = v40 * v31;
      v42 = *(a4 + 208);
      v145 = v32;
      v141 = v33;
      if (a1 == 1)
      {
        v139 = v34 * *(a4 + 152) + *(a4 + 160) * v33;
        v42 = v42 + v139 + *(a4 + 168) * v152;
      }

      else
      {
        v139 = 0.0;
      }

      v143 = 1.0 - v21 * v21;
      v147 = sqrt(v25);
      v43 = __sincos_stret(v42);
      v44 = *(a4 + 232);
      v45 = __sincos_stret(*(a4 + 200) + v44 * v152 + v11 * -0.00007292115);
      v149 = v41 * v43.__cosval * v45.__cosval + v148 * v45.__sinval;
      v150 = v148 * v45.__cosval - v41 * v43.__cosval * v45.__sinval;
      v140 = v41 * v43.__sinval;
      v46 = __sincos_stret(v152 * 0.00007292115);
      v47 = 0;
      cosval = v46.__cosval;
      v158 = vmulq_n_f64(xmmword_299053900, v46.__sinval);
      v159 = -v46.__sinval;
      v160 = vmulq_n_f64(xmmword_299053900, v46.__cosval);
      v161 = xmmword_299053910;
      v162 = 0x3FEFE0D3B41815ABLL;
      v48 = &v158.f64[1];
      do
      {
        v49 = v149 * *(v48 - 1) + *(v48 - 2) * v150;
        v50 = *v48;
        v48 += 3;
        *(a5 + v47) = v49 + v50 * v140;
        v47 += 8;
      }

      while (v47 != 24);
      v142 = v143 * v147;
      v51 = v151 * (v146 * v146) / (v143 * v147) + *(a4 + 112) * v152 * 0.5;
      v52 = v51 + v51;
      v53 = v151 * ((v16 + v17 * v152) * *(a4 + 224) / v147);
      v54 = *(a4 + 192) + v53 * v29.__sinval;
      if (a1 == 1)
      {
        v133 = *(a4 + 128) * v135 - *(a4 + 120) * v141;
        v134 = *(a4 + 144) * v135 - *(a4 + 136) * v141;
        v55 = v51 + v52 * v134;
        v54 = v54 + v52 * v133;
        v136 = *(a4 + 160) * v135 - *(a4 + 152) * v141;
        v56 = *(a4 + 168) + v52 * v136;
      }

      else
      {
        v134 = 0.0;
        v136 = 0.0;
        v133 = 0.0;
        v56 = 0.0;
        v55 = v151 * (v146 * v146) / (v143 * v147) + *(a4 + 112) * v152 * 0.5;
      }

      v57 = 0;
      v58 = v54 * v145 - v41 * v55;
      v59 = v148 * v55 + v54 * v31;
      v60 = v58 + -(v41 * v44) * v43.__cosval;
      v61 = v59 * v43.__cosval - v140 * v56 + v148 * v44;
      v62 = v60 * v45.__cosval - v61 * v45.__sinval;
      v63 = v45.__cosval * v61 + v60 * v45.__sinval;
      v64 = v43.__cosval * (v41 * v56) + v59 * v43.__sinval;
      v65 = v46.__cosval * 0.00007292115;
      v66 = vmulq_n_f64(xmmword_299053900, v46.__cosval * 0.00007292115);
      *&v68.f64[0] = vdupq_laneq_s64(v66, 1).u64[0];
      v67 = vdupq_lane_s64(v66.i64[0], 0);
      v67.f64[0] = -(v46.__sinval * 0.00007292115);
      v68.f64[1] = -(v46.__cosval * 0.00007292115);
      v69 = vextq_s8(v68, v68, 8uLL).u64[0];
      *&v70.f64[0] = vextq_s8(v67, v67, 8uLL).u64[0];
      v71 = vmulq_n_f64(xmmword_299053920, v46.__sinval * 0.00007292115);
      v72 = vextq_s8(v71, v71, 8uLL).u64[0];
      v155 = 0uLL;
      v156 = 0;
      v73 = &v158.f64[1];
      do
      {
        v74 = v63 * *(v73 - 1) + *(v73 - 2) * v62;
        v75 = *v73;
        v73 += 3;
        v155.f64[v57++] = v74 + v75 * v64;
      }

      while (v57 != 3);
      *(a5 + 24) = v155;
      v76.f64[0] = -(v46.__sinval * 0.00007292115);
      v144 = v69;
      *&v76.f64[1] = v69;
      v77.f64[0] = v70.f64[0];
      *&v77.f64[1] = v71.i64[0];
      v78.f64[0] = v68.f64[0];
      *&v78.f64[1] = v72;
      *(a5 + 40) = v156;
      v155 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v77, v149), v76, v150), v78, v140);
      *(a5 + 24) = vaddq_f64(*(a5 + 24), v155);
      v79 = v29.__cosval;
      v80 = v146 * (v29.__sinval * (-(v52 * v151) * *(a4 + 224)) / v142);
      v81 = v29.__cosval * (v53 * v51);
      v82 = 0.0;
      if (a1 == 1)
      {
        v83 = v80 + v80;
        v84 = v52 * -v52;
        v81 = v81 + (v80 + v80) * v133 + v84 * v137;
        v80 = v80 + (v80 + v80) * v134 + v84 * v138;
        v82 = v139 * v84 + v83 * v136;
      }

      v85 = 0;
      v86 = v145 * (v54 * v55) + v81 * v31 + v58 * v55 + v80 * v148;
      v87 = v81 * v145 - v54 * v55 * v31 - v59 * v55 - v80 * v41 + -(v59 * v44) * v43.__cosval + v44 * (v41 * v56) * v43.__sinval;
      v88 = v43.__sinval * -(v59 * v56) + v86 * v43.__cosval - v64 * v56 + -v140 * v82 + v58 * v44;
      v89 = v45.__cosval * v87 - v44 * v63 - v88 * v45.__sinval;
      v90 = v45.__sinval * v87 + v44 * v62 + v88 * v45.__cosval;
      v91 = v43.__cosval * (v56 * (v59 + v59)) + v86 * v43.__sinval + v41 * v82 * v43.__cosval + -(v56 * v56) * v140;
      v92.f64[1] = v65 * 0.00007292115;
      v92.f64[0] = v46.__sinval * 0.00007292115;
      v93 = vmulq_f64(v92, xmmword_299053930);
      v94 = vmulq_n_f64(xmmword_299053920, *v93.i64);
      v99 = vdupq_laneq_s64(v94, 1);
      v95 = vdupq_lane_s64(v94.i64[0], 0);
      v95.f64[0] = -(v65 * 0.00007292115);
      v96 = vdupq_laneq_s64(v93, 1).u64[0];
      v97 = vzip1q_s64(v99, v93);
      v98 = vextq_s8(v97, v97, 8uLL).u64[0];
      *&v99.f64[0] = vextq_s8(v95, v95, 8uLL).u64[0];
      v100.i64[0] = v96;
      *&v100.i64[1] = v65 * 0.00007292115 * 0.0871557427;
      v101 = vextq_s8(v100, v100, 8uLL).u64[0];
      v153 = 0uLL;
      v154 = 0;
      v102 = &v158.f64[1];
      do
      {
        v103 = v90 * *(v102 - 1) + *(v102 - 2) * v89;
        v104 = *v102;
        v102 += 3;
        v153.f64[v85++] = v103 + v104 * v91;
      }

      while (v85 != 3);
      *(a5 + 48) = v153;
      *&v67.f64[1] = v144;
      *&v70.f64[1] = v71.i64[0];
      *&v68.f64[1] = v72;
      v105 = v154;
      v106 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v70, v63), v67, v62), v68, v64);
      *&v95.f64[1] = v98;
      *&v99.f64[1] = v96;
      *&v97.f64[1] = v101;
      __asm { FMOV            V3.2D, #2.0 }

      v111 = vmlaq_f64(*(a5 + 48), _Q3, v106);
      v153 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v99, v149), v95, v150), v97, v140);
      *(a5 + 48) = vaddq_f64(v111, v153);
      *(a5 + 64) = v105;
      *(a5 + 72) = 0;
      *(a5 + 80) = 0;
      *(a5 + 88) = 0;
      if (a1 != 1)
      {
        if (v12 >= 0)
        {
          v114 = 302400;
        }

        else
        {
          v114 = -302400;
        }

        v115 = v114 + v12;
        if (v115 < 0)
        {
          v115 = -v115;
        }

        if (v115 > 0x1E1337F)
        {
          v116 = 65500;
        }

        else
        {
          v116 = v115 / 0x3E8u + 1200;
        }

        v118 = (v116 * v116);
        goto LABEL_67;
      }

      v112 = *(a4 + 19);
      if (v112 > 0xF)
      {
        if ((v112 + 16) > 0x10u)
        {
          v117 = 99980001.0;
LABEL_52:
          *(a5 + 112) = v117;
          if (v12 >= 0)
          {
            v119 = v12;
          }

          else
          {
            v119 = -v12;
          }

          v120 = v119 / 0x3C;
          if (*(a4 + 4) == 6)
          {
            v121 = -30;
          }

          else
          {
            v121 = -60;
          }

          v122 = v120 + v121 * *(a4 + 18);
          if (v122 < 1)
          {
            if (v12 >= 10800 && (v122 == 0 || v122 >= 0xFFFFFFC5))
            {
              v124 = ((v122 + 60) * (v122 + 60)) * 0.00138888889;
              v118 = v117 + v124 * v124;
              goto LABEL_67;
            }
          }

          else
          {
            v123 = Is_Eph_Kep_Real(a4);
            v79 = v29.__cosval;
            if (v123)
            {
              *(a5 + 112) = *(a5 + 112) + (v122 * v122) * 0.025 * ((v122 * v122) * 0.025);
            }
          }

          if (v12 < 14400 || v122 < 0)
          {
            goto LABEL_68;
          }

          v118 = *(a5 + 112) + 25.0;
LABEL_67:
          *(a5 + 112) = v118;
LABEL_68:
          v125 = v152 + (*(a4 + 28) - *(a4 + 24));
          v126 = *(a4 + 224);
          v127 = v126 * -4.44280763e-10 * *(a4 + 184) / (v126 * v79 + 1.0);
          v128 = *(a4 + 48);
          v129 = v125 * *(a4 + 56);
          *(a5 + 96) = *(a4 + 40) + v125 * (v129 + v128) + v147 * v127 * v29.__sinval;
          *(a5 + 104) = v128 + v129 * 2.0 + v151 * v127 * (v79 + v126);
          *(a5 + 120) = *(a4 + 64);
          *(a5 + 136) = *(a4 + 80);
          *(a5 + 152) = *(a4 + 96);
          *(a5 + 160) = a3;
          *(a5 + 164) = v9;
          *(a5 + 166) = *(a4 + 20);
          v130 = *(a4 + 4);
          v131 = *(a4 + 8);
          *(a5 + 176) = a1;
          *(a5 + 180) = v130;
          *(a5 + 188) = *(a4 + 12);
          *(a5 + 184) = v131;
          *(a5 + 189) = *(a4 + 16);
          *(a5 + 190) = *(a4 + 17);
          goto LABEL_69;
        }

        v113 = (&GPS_Modern_URA_Table + 8 * -v112);
      }

      else
      {
        v113 = (&BDS_Legacy_URA_Table + 8 * v112);
      }

      v117 = *v113;
      goto LABEL_52;
    }
  }

LABEL_69:
  v132 = *MEMORY[0x29EDCA608];
}

double GAL_I_EphBin2Int(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  *(a2 + 16) = *(a1 + 8) & 0x3FF;
  *(a2 + 18) = *(a1 + 10) >> 2;
  v2 = *(a1 + 14);
  v3 = (*(a1 + 10) << 30) | (*(a1 + 12) << 14) | (v2 >> 2);
  v4 = *(a1 + 18);
  v5 = (v2 << 30) | (*(a1 + 16) << 14) | (v4 >> 2);
  *(a2 + 20) = v3;
  *(a2 + 24) = v5;
  v6 = *(a1 + 28) | (*(a1 + 26) << 16);
  *(a2 + 28) = (v4 << 30) | (*(a1 + 20) << 14) | (*(a1 + 22) >> 2);
  *(a2 + 32) = v6;
  v7 = *(a1 + 36) | (*(a1 + 34) << 16);
  *(a2 + 36) = *(a1 + 32) | (*(a1 + 30) << 16);
  *(a2 + 40) = v7;
  *(a2 + 48) = *(a1 + 38) >> 2;
  v8 = *(a1 + 44);
  *(a2 + 44) = (v8 | (*(a1 + 42) << 16)) >> 8;
  HIDWORD(v9) = v8;
  LODWORD(v9) = *(a1 + 46) << 16;
  *(a2 + 50) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 46);
  LODWORD(v9) = *(a1 + 48) << 16;
  *(a2 + 52) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 48);
  LODWORD(v9) = *(a1 + 50) << 16;
  *(a2 + 54) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 50);
  LODWORD(v9) = *(a1 + 52) << 16;
  *(a2 + 56) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 52);
  LODWORD(v9) = *(a1 + 54) << 16;
  *(a2 + 58) = v9 >> 24;
  *(a2 + 15) = *(a1 + 54);
  v10 = *(a1 + 58);
  *(a2 + 14) = v10 >> 10;
  HIDWORD(v9) = v10;
  LODWORD(v9) = *(a1 + 60) << 16;
  *(a2 + 60) = v9 >> 26;
  HIDWORD(v9) = *(a1 + 60);
  LODWORD(v9) = *(a1 + 62) << 16;
  *(a2 + 62) = v9 >> 26;
  *(a2 + 74) = (*(a1 + 64) >> 12) & 0xC00F | (16 * (*(a1 + 62) & 0x3FF));
  v11 = *(a1 + 68);
  v12 = *(a1 + 70);
  *(a2 + 64) = (2 * ((8 * *(a1 + 66)) | (*(a1 + 64) << 19) | (v11 >> 13))) >> 1;
  *(a2 + 68) = ((8 * v12) | (v11 << 19)) >> 11;
  *(a2 + 72) = v12 >> 2;
  *(a2 + 78) = ((*(a1 + 78) << 15) | (*(a1 + 76) << 31)) >> 22;
  *(a2 + 76) = ((*(a1 + 80) << 9) | (*(a1 + 78) << 25)) >> 22;
  v13 = *(a1 + 80);
  *(a2 + 85) = (v13 >> 11) & 3;
  *(a2 + 86) = (v13 >> 9) & 3;
  *(a2 + 82) = BYTE1(v13) & 1;
  *(a2 + 83) = (v13 & 0x80) != 0;
  *(a2 + 12) = (*(a1 + 82) >> 11) & 0xF01F | (32 * (v13 & 0x7F));
  *(a2 + 8) = (*(a1 + 84) >> 7) & 0xFFF001FF | ((*(a1 + 82) & 0x7FF) << 9);
  result = *a1;
  *a2 = *a1;
  *(a2 + 87) = 4;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_GAL_INAV_GST(const unsigned __int16 *a1, unsigned int *a2, __int16 *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  *a2 = 0;
  v3 = *a1;
  if ((v3 & 0xFC00) == 0x1400)
  {
    *a3 = (a1[5] >> 11) & 0xF01F | (32 * (a1[4] & 0x7F));
    v4 = (a1[5] & 0x7FF) << 9;
    v5 = a1[6] >> 7;
LABEL_6:
    *a2 = v4 | v5;
    v6 = 1;
    goto LABEL_7;
  }

  v6 = 0;
  if (v3 <= 0x3FF && (v3 & 0x300) == 0x200)
  {
    *a3 = a1[6] >> 4;
    v4 = (a1[6] & 0xF) << 16;
    v5 = a1[7];
    goto LABEL_6;
  }

LABEL_7:
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t GAL_AlmBin2Int(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(result + 8);
  if (v2 - 7168 <= 0xFFF)
  {
    *(a2 + 9) = (v2 >> 6) & 0xF;
    v3 = (v2 >> 4) & 3;
    v4 = *(result + 28);
    if (v4 >= 0x10)
    {
      if (((v4 >> 4) & 3) == v3)
      {
        v3 = 0;
      }

      v3 += v4 >> 4;
    }

    *(a2 + 10) = v3;
    *(a2 + 12) = (*(result + 10) >> 10) & 0xFC3F | ((*(result + 8) & 0xF) << 6);
    v5 = *(result + 10);
    *(a2 + 14) = ((*(result + 12) << 12) | (v5 << 28)) >> 19;
    *(a2 + 16) = (*(result + 14) >> 12) & 0xF80F | (16 * (*(result + 12) & 0x7F));
    HIDWORD(v6) = *(result + 14);
    LODWORD(v6) = *(result + 16) << 16;
    *(a2 + 8) = (v5 >> 4) & 0x3F;
    *(a2 + 24) = v6 >> 28;
    *(a2 + 18) = (16 * *(result + 16)) >> 5;
    HIDWORD(v6) = *(result + 16);
    LODWORD(v6) = *(result + 18) << 16;
    *(a2 + 20) = v6 >> 17;
    *(a2 + 22) = ((*(result + 20) << 15) | (*(result + 18) << 31)) >> 21;
    HIDWORD(v6) = *(result + 20);
    LODWORD(v6) = *(result + 22) << 16;
    *(a2 + 26) = v6 >> 22;
    HIDWORD(v6) = *(result + 22);
    LODWORD(v6) = *(result + 24) << 16;
    *(a2 + 28) = v6 >> 22;
    *(a2 + 30) = ((*(result + 26) << 10) | (*(result + 24) << 26)) >> 19;
    v7 = *(result + 26);
    *(a2 + 33) = (v7 >> 7) & 3;
    *(a2 + 34) = (v7 >> 5) & 3;
    *a2 = *result;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::setAssistanceAccel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 0, v7, "setAssistanceAccel");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setAssistanceAccel", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setAssistanceAccel", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_29900AED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setAssistanceGyro(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 0, v7, "setAssistanceGyro");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setAssistanceGyro", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setAssistanceGyro", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_29900B074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double Get_GPS_Kep_Almanac(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 10);
  v2 = *(a1 + 12);
  *(a2 + 12) = BYTE2(v2) & 0x3F;
  v3 = vcvtd_n_f64_u32(v2, 0x15uLL);
  *(a2 + 20) = *(a1 + 18) << 12;
  v4 = *(a1 + 16) * 0.00000599211245 + 0.942477796;
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 13) = v5 & 0x1F;
  *(a2 + 72) = vcvtd_n_f64_u32(v6 & 0xFFFFFF, 0xBuLL);
  v7 = vshl_n_s32(*(a1 + 28), 8uLL);
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  *(a2 + 80) = vmulq_f64(vcvtq_f64_s64(v8), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v9 = *(a1 + 40);
  v10 = (*(a1 + 36) << 8) * 0.00000000146291808;
  *(a2 + 56) = (v5 >> 8) * 1.14290475e-11;
  *(a2 + 64) = v10;
  result = vcvtd_n_f64_s32(((v9 >> 8) & 0xFF00 | (32 * ((v9 >> 2) & 7))), 0x19uLL);
  *(a2 + 24) = result;
  *(a2 + 32) = (v9 & 0xFFFFFFE0) * 1.13686838e-13;
  *(a2 + 8) = 1;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

double Init_DB_SV_Nav_Mess(unint64_t a1)
{
  v15[1] = *MEMORY[0x29EDCA608];
  *(a1 + 62144) = 0u;
  v2 = a1 + 8986;
  *(a1 + 62128) = 0u;
  v3 = a1 + 61952;
  *(a1 + 62112) = 0u;
  *(a1 + 62096) = 0u;
  *(a1 + 62080) = 0u;
  *(a1 + 62064) = 0u;
  *(a1 + 62048) = 0u;
  *(a1 + 62032) = 0u;
  *(a1 + 62016) = 0u;
  *(a1 + 62000) = 0u;
  *(a1 + 61984) = 0u;
  *(a1 + 61968) = 0u;
  *(a1 + 61952) = 0u;
  *(a1 + 62154) = 0u;
  v4 = a1 + 50616;
  *a1 = a1 + 50616;
  *(a1 + 8) = a1 + 50834;
  v5 = (a1 + 51052);
  *(a1 + 16) = v5;
  *(a1 + 24) = a1 + 55412;
  *(a1 + 64) = a1 + 59772;
  *(a1 + 72) = a1 + 59990;
  v6 = vdupq_n_s64(a1);
  *(a1 + 32) = a1 + 60426;
  *(a1 + 40) = a1 + 60644;
  *(a1 + 48) = a1 + 60862;
  *(a1 + 56) = a1 + 61080;
  *(a1 + 80) = vaddq_s64(v6, xmmword_299053A50);
  *(a1 + 96) = a1 + 61516;
  *(a1 + 104) = a1 + 61734;
  *(a1 + 112) = v3;
  *(v2 + 6) = 0;
  *&v7 = 0x101010101010101;
  *(&v7 + 1) = 0x101010101010101;
  *(a1 + 8994) = v7;
  *(a1 + 9010) = v7;
  *(a1 + 9032) = a1 + 50771;
  *(a1 + 9040) = a1 + 50989;
  *(a1 + 9048) = a1 + 54152;
  *(a1 + 9096) = a1 + 59927;
  *(a1 + 9104) = a1 + 60145;
  *(a1 + 9112) = a1 + 60363;
  *(a1 + 9056) = vaddq_s64(v6, xmmword_299053A60);
  *(a1 + 9072) = a1 + 60799;
  *(a1 + 9080) = a1 + 61017;
  *(a1 + 9088) = a1 + 61235;
  *(a1 + 9120) = a1 + 61453;
  *(a1 + 9128) = a1 + 61671;
  *(a1 + 9136) = a1 + 61889;
  *(a1 + 9144) = a1 + 62107;
  *(a1 + 11912) = a1 + 50648;
  *(a1 + 11920) = a1 + 51692;
  *(a1 + 17168) = a1 + 59804;
  *(a1 + 17176) = a1 + 60022;
  *(a1 + 17184) = a1 + 60240;
  *(a1 + 17144) = a1 + 60458;
  *(a1 + 17160) = a1 + 60894;
  *(a1 + 17152) = a1 + 60676;
  *(a1 + 17200) = a1 + 61330;
  *(a1 + 17208) = a1 + 61548;
  *(a1 + 17216) = a1 + 61766;
  *(a1 + 17224) = a1 + 61984;
  *(a1 + 17472) = 0x7F7F7F7F7F7F7F7FLL;
  *&v8 = 0x7F7F7F7F7F7F7F7FLL;
  *(&v8 + 1) = 0x7F7F7F7F7F7F7F7FLL;
  *(a1 + 17456) = v8;
  *(a1 + 17440) = v8;
  *(a1 + 17424) = v8;
  *(a1 + 17408) = v8;
  *(a1 + 17392) = v8;
  *(a1 + 17376) = v8;
  *(a1 + 17360) = v8;
  *(a1 + 17344) = v8;
  *(a1 + 17328) = v8;
  *(a1 + 17528) = 0;
  *(a1 + 17496) = 0u;
  *(a1 + 17512) = 0u;
  *(a1 + 17480) = 0u;
  *(a1 + 17552) = vaddq_s64(v6, xmmword_299053A70);
  *(a1 + 17568) = a1 + 52172;
  *(a1 + 17576) = a1 + 56532;
  *(a1 + 17616) = a1 + 59828;
  *(a1 + 17624) = a1 + 60046;
  *(a1 + 17632) = a1 + 60264;
  *(a1 + 17584) = a1 + 60482;
  *(a1 + 17592) = a1 + 60700;
  *(a1 + 17600) = a1 + 60918;
  *(a1 + 17608) = a1 + 61136;
  *(a1 + 17640) = a1 + 61354;
  *(a1 + 17648) = a1 + 61572;
  *(a1 + 17656) = a1 + 61790;
  *(a1 + 17664) = a1 + 62008;
  *(a1 + 17704) = 0;
  *(a1 + 17672) = 0u;
  *(a1 + 17688) = 0u;
  *(a1 + 25392) = a1 + 50708;
  *(a1 + 25400) = a1 + 50926;
  *(a1 + 25408) = a1 + 52892;
  *(a1 + 25416) = a1 + 57252;
  *(a1 + 25456) = a1 + 59864;
  *(a1 + 25464) = a1 + 60082;
  *(a1 + 25472) = a1 + 60300;
  *(a1 + 25424) = a1 + 60518;
  *(a1 + 25432) = a1 + 60736;
  *(a1 + 25440) = a1 + 60954;
  *(a1 + 25448) = a1 + 61172;
  *(a1 + 25480) = a1 + 61390;
  *(a1 + 25488) = a1 + 61608;
  *(a1 + 25496) = a1 + 61826;
  *(a1 + 47576) = a1 + 50781;
  *(a1 + 25504) = a1 + 62044;
  *(a1 + 47584) = vaddq_s64(v6, xmmword_299053A80);
  *(a1 + 47648) = vaddq_s64(v6, xmmword_299053AB0);
  *(a1 + 47600) = vaddq_s64(v6, xmmword_299053A90);
  *(a1 + 47616) = vaddq_s64(v6, xmmword_299053AC0);
  *(a1 + 47632) = vaddq_s64(v6, xmmword_299053AA0);
  *(a1 + 47664) = vaddq_s64(v6, xmmword_299053AD0);
  *(a1 + 47680) = vaddq_s64(v6, xmmword_299053AE0);
  *(a1 + 17536) = a1 + 50795;
  *(a1 + 17544) = a1 + 54632;
  *(v4 + 432) = 16843009;
  *(v4 + 400) = v7;
  *(v4 + 416) = v7;
  *(v4 + 368) = v7;
  *(v4 + 384) = v7;
  *(v4 + 336) = v7;
  *(v4 + 352) = v7;
  *(v4 + 304) = v7;
  *(v4 + 320) = v7;
  *(v4 + 272) = v7;
  *(v4 + 288) = v7;
  *(v4 + 240) = v7;
  *(v4 + 256) = v7;
  *(v4 + 208) = v7;
  *(v4 + 224) = v7;
  *(v4 + 176) = v7;
  *(v4 + 192) = v7;
  *(v4 + 144) = v7;
  *(v4 + 160) = v7;
  *(v4 + 112) = v7;
  *(v4 + 128) = v7;
  *(v4 + 80) = v7;
  *(v4 + 96) = v7;
  *(v4 + 48) = v7;
  *(v4 + 64) = v7;
  *(v4 + 16) = v7;
  *(v4 + 32) = v7;
  *v4 = v7;
  *(a1 + 50787) = 0;
  *(a1 + 50781) = 0;
  bzero(v5, 0x2210uLL);
  v15[0] = 0.0;
  *(a1 + 8968) = 0u;
  *(a1 + 8982) = 0;
  API_Get_UTC_Cor(1, v15);
  v9 = -0.5;
  if (v15[0] > 0.0)
  {
    v9 = 0.5;
  }

  v10 = v15[0] + v9;
  if (v15[0] + v9 <= 2147483650.0)
  {
    if (v10 >= -2147483650.0)
    {
      v11 = v10;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = -1;
  }

  *v2 = v11;
  *(v2 + 3) = v11;
  *(a1 + 8972) = 1;
  EvLog_v("Init_DBnm: Default GPS-UTC %d s applied", v11);
  *(a1 + 62346) = 16843009;
  *&v12 = 0x101010101010101;
  *(&v12 + 1) = 0x101010101010101;
  *(a1 + 62315) = v12;
  *(a1 + 62331) = v12;
  *(a1 + 62283) = v12;
  *(a1 + 62299) = v12;
  *(a1 + 62251) = v12;
  *(a1 + 62267) = v12;
  *(a1 + 62219) = v12;
  *(a1 + 62235) = v12;
  *(a1 + 62187) = v12;
  *(a1 + 62203) = v12;
  *(a1 + 62171) = v12;
  result = 0.0;
  *(a1 + 62350) = 0u;
  *(a1 + 62366) = 0;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Init_DB_SV_Nav_Mess_NV(uint64_t a1)
{
  v2 = 0;
  v172 = *MEMORY[0x29EDCA608];
  v3 = a1 + 47440;
  v4 = a1 + 25340;
  v169 = a1 + 17120;
  memset(v171, 0, 115);
  v5 = 120;
  do
  {
    v6 = v2 + 1;
    if (Core_Load_GPS_Eph((v2 + 1), v171))
    {
      v7 = *v171 < 1;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = a1 + v5;
      v9 = *&v171[80];
      *(v8 + 64) = *&v171[64];
      *(v8 + 80) = v9;
      *(v8 + 96) = *&v171[96];
      *(v8 + 112) = *&v171[112];
      v10 = *&v171[16];
      *v8 = *v171;
      *(v8 + 16) = v10;
      v11 = *&v171[48];
      *(v8 + 32) = *&v171[32];
      *(v8 + 48) = v11;
      *(*(a1 + 32) + v2) = 1;
      *(*(a1 + 64) + v2) = 1;
    }

    v5 += 116;
    ++v2;
  }

  while (v6 != 32);
  v12 = 0;
  v13 = 9152;
  memset(v171, 0, 115);
  do
  {
    if (Core_Load_QZSS_Eph((v12 - 63), v171))
    {
      v14 = *v171 < 1;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = a1 + v13;
      v16 = *&v171[80];
      *(v15 + 64) = *&v171[64];
      *(v15 + 80) = v16;
      *(v15 + 96) = *&v171[96];
      *(v15 + 112) = *&v171[112];
      v17 = *&v171[16];
      *v15 = *v171;
      *(v15 + 16) = v17;
      v18 = *&v171[48];
      *(v15 + 32) = *&v171[32];
      *(v15 + 48) = v18;
      *(*(a1 + 9064) + v12) = 1;
      *(*(a1 + 9096) + v12) = 1;
    }

    ++v12;
    v13 += 116;
  }

  while (v12 != 10);
  v19 = 0;
  memset(v171, 0, 62);
  v20 = 11928;
  do
  {
    v21 = v19 + 1;
    if (Core_Load_GLON_Eph((v19 + 1), v171))
    {
      v22 = *v171 < 1;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (a1 + v20);
      v24 = *&v171[16];
      *v23 = *v171;
      v23[1] = v24;
      v25 = *&v171[48];
      v23[2] = *&v171[32];
      v23[3] = v25;
      *(*(a1 + 17144) + v19) = 1;
      *(*(a1 + 17168) + v19) = 1;
      *(a1 + 17328 + 4 * v19) = *&v171[8];
    }

    v20 += 64;
    ++v19;
  }

  while (v21 != 24);
  v26 = 0;
  memset(v171, 0, 88);
  v27 = 17708;
  do
  {
    v28 = v26 + 1;
    if (Core_Load_GAL_Eph((v26 + 1), v171))
    {
      v29 = *v171 < 1;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      v30 = a1 + v27;
      v31 = *&v171[48];
      *(v30 + 32) = *&v171[32];
      *(v30 + 48) = v31;
      *(v30 + 64) = *&v171[64];
      *(v30 + 80) = *&v171[80];
      v32 = *&v171[16];
      *v30 = *v171;
      *(v30 + 16) = v32;
      *(*(a1 + 17584) + v26) = 1;
      *(*(a1 + 17616) + v26) = 1;
    }

    v27 += 88;
    ++v26;
  }

  while (v28 != 36);
  v33 = 0;
  memset(v171, 0, 18);
  memset(&v171[20], 0, 78);
  memset(&v171[100], 0, 48);
  v34 = 25512;
  do
  {
    v35 = v33 + 1;
    if (Core_Load_BDS_Eph((v33 + 1), v171))
    {
      v36 = *v171 < 1;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v37 = a1 + v34;
      v38 = *&v171[112];
      *(v37 + 96) = *&v171[96];
      *(v37 + 112) = v38;
      *(v37 + 128) = *&v171[128];
      *(v37 + 144) = *&v171[144];
      v39 = *&v171[48];
      *(v37 + 32) = *&v171[32];
      *(v37 + 48) = v39;
      v40 = *&v171[80];
      *(v37 + 64) = *&v171[64];
      *(v37 + 80) = v40;
      v41 = *&v171[16];
      *v37 = *v171;
      *(v37 + 16) = v41;
      *(*(a1 + 25424) + v33) = 1;
      *(*(a1 + 25456) + v33) = 1;
    }

    v34 += 152;
    ++v33;
  }

  while (v35 != 63);
  v42 = 0;
  memset(v171, 0, 76);
  v43 = 47696;
  do
  {
    v44 = v42 + 1;
    if (Core_Load_NVIC_Eph((v42 + 1), v171))
    {
      v45 = *v171 < 1;
    }

    else
    {
      v45 = 1;
    }

    if (!v45)
    {
      v46 = (a1 + v43);
      v47 = *&v171[48];
      v46[2] = *&v171[32];
      v46[3] = v47;
      *(v46 + 60) = *&v171[60];
      v48 = *&v171[16];
      *v46 = *v171;
      v46[1] = v48;
      *(*(v3 + 168) + v42) = 1;
      *(*(v3 + 200) + v42) = 1;
    }

    v43 += 76;
    ++v42;
  }

  while (v44 != 14);
  v49 = 0;
  memset(v171, 0, 44);
  v50 = 7544;
  do
  {
    v51 = v49 + 1;
    if (Core_Load_GPS_Alm((v49 + 1), v171))
    {
      v52 = *v171 < 1;
    }

    else
    {
      v52 = 1;
    }

    if (!v52)
    {
      v53 = (a1 + v50);
      v54 = *&v171[16];
      *v53 = *v171;
      v53[1] = v54;
      *(v53 + 28) = *&v171[28];
      *(*(a1 + 40) + v49) = 1;
      *(*(a1 + 80) + v49) = 1;
    }

    v50 += 44;
    ++v49;
  }

  while (v51 != 32);
  v55 = 0;
  memset(v171, 0, 44);
  v56 = 11472;
  do
  {
    if (Core_Load_QZSS_Alm((v55 - 63), v171))
    {
      v57 = *v171 < 1;
    }

    else
    {
      v57 = 1;
    }

    if (!v57)
    {
      v58 = (a1 + v56);
      v59 = *&v171[16];
      *v58 = *v171;
      v58[1] = v59;
      *(v58 + 28) = *&v171[28];
      *(*(a1 + 9072) + v55) = 1;
      *(*(a1 + 9112) + v55) = 1;
    }

    ++v55;
    v56 += 44;
  }

  while (v55 != 10);
  v60 = 0;
  *v170 = 0;
  *&v170[8] = 0;
  memset(&v170[12], 0, 24);
  v61 = 17328;
  v62 = 16248;
  do
  {
    v63 = v60 + 1;
    if (Core_Load_GLON_Alm((v60 + 1), v170))
    {
      v64 = *v170 < 1;
    }

    else
    {
      v64 = 1;
    }

    if (!v64)
    {
      *v171 = 0uLL;
      *&v171[21] = 0;
      *&v171[16] = 0;
      *&v171[30] = 0;
      v171[38] = 0;
      GLON_AlmBin2Int(v170, v171);
      if (v171[36] == 1)
      {
        v65 = a1 + v62;
        v66 = *&v170[16];
        *v65 = *v170;
        *(v65 + 16) = v66;
        *(v65 + 32) = *&v170[32];
        *(*(a1 + 17152) + v60) = 1;
      }

      *(*(a1 + 17184) + v60) = 1;
      v67 = v171[11];
      v68 = v171[11] - 32;
      if (v171[11] <= 0x18u)
      {
        v68 = 2139062143;
      }

      if (v171[11] >= 7u)
      {
        v67 = v68;
      }

      if (v67 != 2139062143)
      {
        *(a1 + v61) = v67;
      }
    }

    v61 += 4;
    v62 += 36;
    ++v60;
  }

  while (v63 != 24);
  v69 = 0;
  memset(v171, 0, 35);
  v70 = 24044;
  do
  {
    v71 = v69 + 1;
    if (Core_Load_GAL_Alm((v69 + 1), v171))
    {
      v72 = *v171 < 1;
    }

    else
    {
      v72 = 1;
    }

    if (!v72)
    {
      v73 = a1 + v70;
      v74 = *&v171[16];
      *v73 = *v171;
      *(v73 + 16) = v74;
      *(v73 + 32) = *&v171[32];
      *(*(a1 + 17592) + v69) = 1;
      *(*(a1 + 17632) + v69) = 1;
    }

    v70 += 36;
    ++v69;
  }

  while (v71 != 36);
  v75 = 0;
  memset(v171, 0, 43);
  v76 = 44664;
  do
  {
    v77 = v75 + 1;
    if (Core_Load_BDS_Alm((v75 + 1), v171))
    {
      v78 = *v171 < 1;
    }

    else
    {
      v78 = 1;
    }

    if (!v78)
    {
      v79 = (a1 + v76);
      v80 = *&v171[16];
      *v79 = *v171;
      v79[1] = v80;
      *(v79 + 28) = *&v171[28];
      *(*(a1 + 25432) + v75) = 1;
      *(*(a1 + 25472) + v75) = 1;
    }

    v76 += 44;
    ++v75;
  }

  while (v77 != 63);
  v81 = 0;
  *&v171[12] = 0;
  *&v171[16] = 0;
  *&v171[20] = 0;
  *&v171[24] = 0;
  *v171 = 0;
  *&v171[7] = 0;
  memset(&v171[28], 0, 21);
  v82 = 49824;
  do
  {
    v83 = v81 + 1;
    if (Core_Load_NVIC_Alm((v81 + 1), v171))
    {
      v84 = *v171 < 1;
    }

    else
    {
      v84 = 1;
    }

    if (!v84)
    {
      v85 = a1 + v82;
      v86 = *&v171[16];
      *v85 = *v171;
      *(v85 + 16) = v86;
      *(v85 + 32) = *&v171[32];
      *(v85 + 48) = *&v171[48];
      *(*(v3 + 176) + v81) = 1;
      *(*(v3 + 216) + v81) = 1;
    }

    v82 += 52;
    ++v81;
  }

  while (v83 != 14);
  v87 = 0;
  v88 = 0;
  v89 = *a1;
  v90 = p_NV;
  v91 = 55665;
  do
  {
    v92 = *(p_NV + 96 + v87) ^ BYTE1(v91);
    v91 = 52845 * (v91 + v92) + 22719;
    v88 += v92;
    ++v87;
  }

  while (v87 != 40);
  if (*(p_NV + 88) == v88)
  {
    v93 = *(p_NV + 100);
    v89[1] = *(p_NV + 116);
  }

  else
  {
    *&v93 = 0x101010101010101;
    *(&v93 + 1) = 0x101010101010101;
    v89[1] = v93;
  }

  *v89 = v93;
  v94 = 0;
  v95 = 0;
  v96 = *(a1 + 9032);
  v97 = 55665;
  do
  {
    v98 = *(v90 + 6088 + v94) ^ BYTE1(v97);
    v97 = 52845 * (v97 + v98) + 22719;
    v95 += v98;
    ++v94;
  }

  while (v94 != 16);
  if (*(v90 + 6080) == v95)
  {
    v99 = *(v90 + 6092);
    *(v96 + 8) = *(v90 + 6100);
    *v96 = v99;
  }

  else
  {
    *v96 = 0x101010101010101;
    *(v96 + 8) = 257;
  }

  v100 = 0;
  v101 = 0;
  v102 = *(a1 + 11912);
  v103 = 55665;
  do
  {
    v104 = *(v90 + 29168 + v100) ^ BYTE1(v103);
    v103 = 52845 * (v103 + v104) + 22719;
    v101 += v104;
    ++v100;
  }

  while (v100 != 32);
  if (*(v90 + 29160) == v101)
  {
    v105 = *(v90 + 29172);
    *(v102 + 16) = *(v90 + 29188);
    *v102 = v105;
  }

  else
  {
    *(v102 + 8) = 0x101010101010101;
    *(v102 + 16) = 0x101010101010101;
    *v102 = 0x101010101010101;
  }

  v106 = 0;
  v107 = 0;
  v108 = *(a1 + 17552);
  v109 = 55665;
  do
  {
    v110 = *(v90 + 7952 + v106) ^ BYTE1(v109);
    v109 = 52845 * (v109 + v110) + 22719;
    v107 += v110;
    ++v106;
  }

  while (v106 != 40);
  if (*(v90 + 7944) == v107)
  {
    v111 = *(v90 + 7956);
    v112 = *(v90 + 7972);
    *(v108 + 32) = *(v90 + 7988);
    *(v108 + 16) = v112;
  }

  else
  {
    *(v108 + 32) = 16843009;
    *&v111 = 0x101010101010101;
    *(&v111 + 1) = 0x101010101010101;
    *(v108 + 16) = v111;
  }

  *v108 = v111;
  v113 = 0;
  v114 = 0;
  v115 = *(a1 + 25392);
  v116 = 55665;
  do
  {
    v117 = *(v90 + 13208 + v113) ^ BYTE1(v116);
    v116 = 52845 * (v116 + v117) + 22719;
    v114 += v117;
    ++v113;
  }

  while (v113 != 72);
  if (*(v90 + 13200) == v114)
  {
    v118 = *(v90 + 13212);
    v119 = *(v90 + 13228);
    v120 = *(v90 + 13244);
    *(v115 + 47) = *(v90 + 13259);
    v115[1] = v119;
    v115[2] = v120;
  }

  else
  {
    *&v118 = 0x101010101010101;
    *(&v118 + 1) = 0x101010101010101;
    *(v115 + 47) = v118;
    v115[1] = v118;
    v115[2] = v118;
  }

  *v115 = v118;
  v121 = 0;
  v122 = 0;
  v123 = *(v3 + 144);
  v124 = 55665;
  do
  {
    v125 = *(v90 + 26976 + v121) ^ BYTE1(v124);
    v124 = 52845 * (v124 + v125) + 22719;
    v122 += v125;
    ++v121;
  }

  while (v121 != 24);
  if (*(v90 + 26968) == v122)
  {
    v126 = *(v90 + 26980);
    *(v123 + 6) = *(v90 + 26986);
    *v123 = v126;
  }

  else
  {
    *(v123 + 6) = 0x101010101010101;
    *v123 = 0x101010101010101;
  }

  v127 = 0;
  v128 = 0;
  v129 = *(a1 + 17536);
  *(v129 + 31) = 0x101010101010101;
  *&v130 = 0x101010101010101;
  *(&v130 + 1) = 0x101010101010101;
  *v129 = v130;
  *(v129 + 16) = v130;
  v131 = 55665;
  do
  {
    v132 = *(v90 + 168 + v127) ^ BYTE1(v131);
    v131 = 52845 * (v131 + v132) + 22719;
    v128 += v132;
    ++v127;
  }

  while (v127 != 24);
  if (*(v90 + 160) == v128 && (v133 = *(v90 + 168), *v171 = *(v90 + 172), *&v171[16] = *(v90 + 188), v133 >= 1))
  {
    *(a1 + 8968) = v133;
    *(a1 + 8972) = *v171;
    *(a1 + 8988) = *&v171[16];
  }

  else
  {
    *(a1 + 8972) = 0;
  }

  v134 = 0;
  v135 = 0;
  v136 = 55665;
  do
  {
    v137 = *(v90 + 144 + v134) ^ BYTE1(v136);
    v136 = 52845 * (v136 + v137) + 22719;
    v135 += v137;
    ++v134;
  }

  while (v134 != 16);
  if (*(v90 + 136) == v135)
  {
    v138 = *(v90 + 144);
    *v171 = *(v90 + 148);
    *&v171[8] = *(v90 + 156);
    if (v138 >= 1)
    {
      *(a1 + 8952) = v138;
      *(a1 + 8956) = *v171;
      *(a1 + 8964) = *&v171[8];
      *(a1 + 8956) = 4;
    }
  }

  v139 = 0;
  v140 = 0;
  v141 = 55665;
  do
  {
    v142 = *(v90 + 8000 + v139) ^ BYTE1(v141);
    v141 = 52845 * (v141 + v142) + 22719;
    v140 += v142;
    ++v139;
  }

  while (v139 != 16);
  if (*(v90 + 7992) == v140)
  {
    v143 = *(v90 + 8000);
    *&v171[8] = *(v90 + 8012);
    *v171 = *(v90 + 8004);
    if (v143 >= 1)
    {
      *(v4 + 4) = *v171;
      v144 = v171[8];
      *(v4 + 12) = *&v171[8];
      v145 = *(v4 + 8);
      *v4 = v143;
      *(v4 + 4) = 4;
      *(v4 + 20) = v143;
      *(v4 + 24) = 4;
      *(a1 + 25368) = v145 * 2.91038305e-11;
      *(a1 + 25376) = *(v4 + 10) * 4.4408921e-16;
      *(v4 + 44) = 3600 * v144;
      *(v4 + 48) = *(v4 + 13);
    }
  }

  *v171 = 0;
  *&v171[8] = 0;
  *&v171[24] = 0;
  *&v171[12] = 0;
  *&v171[19] = 0;
  *v170 = 0;
  *&v170[8] = 0;
  *&v170[24] = 0;
  *&v170[12] = 0;
  *&v170[19] = 0;
  result = Core_Load_BDS_BGTO(v171, v170);
  if (result)
  {
    if (*v171 >= 1)
    {
      *(a1 + 47436) = *v171;
      *(a1 + 47448) = *&v171[12];
      *v3 = 4;
    }

    if (*v170 >= 1)
    {
      *(a1 + 47464) = *v170;
      *(a1 + 47476) = *&v170[12];
      *(v3 + 28) = 4;
    }
  }

  v147 = 0;
  v148 = 0;
  v149 = p_NV;
  v150 = (p_NV + 27008);
  v151 = 55665;
  do
  {
    v152 = *(v150 + v147) ^ BYTE1(v151);
    v151 = 52845 * (v151 + v152) + 22719;
    v148 += v152;
    ++v147;
  }

  while (v147 != 24);
  if (*(p_NV + 27000) == v148)
  {
    v153 = *v150;
    *v171 = *(p_NV + 27012);
    *&v171[8] = *(p_NV + 27020);
    if (v153 >= 1)
    {
      v154 = *(p_NV + 27026);
      v155 = *(p_NV + 27022);
      *(v3 + 3112) = v153;
      *(v3 + 3116) = *v171;
      *(v3 + 3124) = *&v171[8];
      *(v3 + 3126) = v155;
      *(v3 + 3130) = v154;
      *(v3 + 3116) = 4;
    }
  }

  v156 = 0;
  v157 = 0;
  v158 = 55665;
  do
  {
    v159 = *(v149 + 29208 + v156) ^ BYTE1(v158);
    v158 = 52845 * (v158 + v159) + 22719;
    v157 += v159;
    ++v156;
  }

  while (v156 != 32);
  if (*(v149 + 29200) == v157)
  {
    v160 = *(v149 + 29208);
    v161 = *(v149 + 29216);
    v162 = *(v149 + 29218);
    v163 = *(v149 + 29220);
    v164 = *(v149 + 29224);
    *v171 = *(v149 + 29225);
    v171[2] = *(v149 + 29227);
    v165 = *(v149 + 29228);
    v166 = *(v149 + 29232);
    v167 = v149 + 29233;
    *v170 = *v167;
    v170[2] = *(v167 + 2);
    if (v160 >= 1)
    {
      *(a1 + 17112) = v160;
      *v169 = v161;
      *(v169 + 2) = v162;
      *(v169 + 4) = v163;
      *(v169 + 8) = v164;
      *(a1 + 17129) = *v171;
      *(a1 + 17131) = v171[2];
      *(v169 + 12) = v165;
      *(v169 + 16) = v166;
      *(a1 + 17137) = *v170;
      *(a1 + 17139) = v170[2];
      *(v169 + 72) = 1;
    }
  }

  v168 = *MEMORY[0x29EDCA608];
  return result;
}

double NVIC_EphReal2Kep(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = 6;
  *(a2 + 12) = *(a1 + 8);
  v2 = *(a1 + 72);
  if (v2 > *"")
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *(a2 + 13) = v3;
  v4 = *(a1 + 10);
  *(a2 + 14) = v4;
  *(a2 + 15) = v4 == 0;
  *(a2 + 16) = 0;
  *(a2 + 18) = *(a1 + 14);
  *(a2 + 19) = *(a1 + 13);
  *(a2 + 20) = *(a1 + 12);
  *(a2 + 22) = *(a1 + 16) + 1024;
  v5 = *(a1 + 24);
  *(a2 + 24) = *(a1 + 20);
  *(a2 + 28) = v5;
  *(a2 + 32) = v5;
  *(a2 + 40) = *(a1 + 32);
  v6 = *(a1 + 56);
  *(a2 + 56) = *(a1 + 48);
  *(a2 + 64) = v6;
  *(a2 + 72) = v6;
  *(a2 + 80) = v6 * 4.48702911;
  *(a2 + 88) = v6 * 4.48702911;
  *(a2 + 96) = v6 * 4.48702911;
  *(a2 + 104) = *(a1 + 120);
  *(a2 + 112) = 0;
  *(a2 + 120) = vextq_s8(*(a1 + 168), *(a1 + 168), 8uLL);
  *(a2 + 136) = vextq_s8(*(a1 + 136), *(a1 + 136), 8uLL);
  *(a2 + 152) = vextq_s8(*(a1 + 152), *(a1 + 152), 8uLL);
  v7 = *(a1 + 112);
  *(a2 + 168) = *(a1 + 64);
  *(a2 + 176) = v7;
  *(a2 + 184) = v2;
  *(a2 + 192) = 0;
  *(a2 + 200) = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  v8 = *(a1 + 80);
  *(a2 + 216) = *(a1 + 104);
  *(a2 + 224) = v8;
  result = *(a1 + 128);
  *(a2 + 232) = result;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Map_Vector(int *a1, uint64_t a2, uint64_t a3)
{
  v186 = *MEMORY[0x29EDCA608];
  v6 = a1 + 15250;
  if (Core_Get_ExtA_MapV(6000, (a1 + 15250)))
  {
    *(a1 + 62340) = 1;
    a1[15586] = 0;
    v7 = a1[1];
    v8 = a1[15250];
    v9 = v7 - v8;
    a1[15588] = v7 - v8;
    v10 = a1[14990];
    v11 = v10 == 1 && a1[14989] == 8 && a1[14991] == 3;
    v13 = (a2 + 27250);
    if (a1[14987] == 1)
    {
      v14 = *(a1 + 59980);
      if (v11)
      {
LABEL_14:
        v15 = 25.0;
        v16 = 45.0;
        v17 = 35.0;
        v171 = v14;
        if (*(p_NA + 381) != 1)
        {
          goto LABEL_22;
        }

        v18 = *(p_NA + 26780);
        if (!v18)
        {
          goto LABEL_22;
        }

        if ((a1[15607] & 1) == 0)
        {
          *(a1 + 62420) = 1;
          *(a1 + 62428) = 1;
        }

        if ((v18 - 1) < 4)
        {
          v169 = 1;
          goto LABEL_23;
        }

        if ((v18 - 6) < 2)
        {
          v169 = 0;
          v16 = 60.0;
          v15 = 100.0;
          v17 = 70.0;
        }

        else
        {
LABEL_22:
          v169 = 0;
        }

LABEL_23:
        v19 = (a2 + 68016);
        if (*(a3 + 984) >= 3.0)
        {
          v21 = *(a3 + 912);
          if (v21 < 15.0)
          {
            v168 = 0;
            v172 = 0;
            v173 = 1;
LABEL_29:
            v22 = *(a1 + 7626) * 0.0174532925;
            v23 = *(a1 + 7627);
            __x = cos(v22);
            v170 = (a1 + 15260);
            v24 = *(a1 + 7630);
            v25 = __sincos_stret(v24 * 0.0174532925);
            if ((a1[15258] & 1) == 0)
            {
              *(a1 + 7628) = *(a1 + 215);
            }

            v26 = v23 * 0.0174532925;
            v27 = v8 - *v19;
            if (v8 == *v19)
            {
              v28 = 1.0;
              if (v9 >= 1000)
              {
                v28 = v9 * 0.001 + 1.0;
              }
            }

            else
            {
              if ((v27 - 1) >> 4 > 0x176)
              {
                goto LABEL_42;
              }

              if (*(a2 + 68088) != 1)
              {
                goto LABEL_42;
              }

              v29 = *(a2 + 68032);
              v165 = *(a2 + 68024);
              v30 = cos(__x);
              v31 = vabdd_f64(v24, *(a2 + 68056));
              if (v31 >= 5.0)
              {
                goto LABEL_42;
              }

              v32 = vabdd_f64(*(a1 + 7632), *(a2 + 68072));
              if (v32 < 2.0 && (v33 = v165 * 0.0174532925, v34 = v29 * 0.0174532925, v35 = sqrt(v30 * ((v26 - v29 * 0.0174532925) * 6378137.0) * (v30 * ((v26 - v29 * 0.0174532925) * 6378137.0)) + (v22 - v165 * 0.0174532925) * 6378137.0 * ((v22 - v165 * 0.0174532925) * 6378137.0)), v35 < *(a2 + 68064) * 0.3))
              {
                *v6 = *v19;
                v36 = *(a2 + 68032);
                v37 = *(a2 + 68048);
                v38 = *(a2 + 68064);
                *(v6 + 8) = *(a2 + 68080);
                *(v6 + 2) = v37;
                *(v6 + 3) = v38;
                *(v6 + 1) = v36;
                v166 = v165 * 0.0174532925;
                v26 = v34;
                v39 = v32;
                __x = cos(v33);
                v40 = a1[15250];
                a1[15588] = v7 - v40;
                v41 = (v7 - v40) * 0.001 + 1.0;
                if (v7 - v40 <= 999)
                {
                  v41 = 1.0;
                }

                v164 = v35;
                v28 = v41;
                EvLog_v("NK_Map_Vector: DUPLICATE OS_TT P %d C %d [dt] T %d D %g W %g H %g ", *v19, v40, v27, v164, v39, v31);
                v22 = v166;
              }

              else
              {
LABEL_42:
                v184.f64[0] = v22;
                v184.f64[1] = v26;
                v185 = *(a1 + 7628);
                Geo2ECEF(&v184, &WGS84_Datum, (a2 + 68120));
                v42 = *(a1 + 7631);
                v43 = v25.__cosval * v42;
                v44 = v25.__sinval * v42;
                v45 = v26 + v25.__sinval * v42 / *(a2 + 68296);
                v184.f64[0] = v22 + v25.__cosval * v42 / *(a2 + 68288);
                v184.f64[1] = v45;
                Geo2ECEF(&v184, &WGS84_Datum, (a2 + 68096));
                *(a2 + 68144) = v43;
                *(a2 + 68152) = v44;
                *v19 = *v6;
                v46 = *(v6 + 1);
                v47 = *(v6 + 2);
                v48 = *(v6 + 3);
                *(a2 + 68080) = *(v6 + 8);
                *(a2 + 68048) = v47;
                *(a2 + 68064) = v48;
                *(a2 + 68032) = v46;
                *(a2 + 68088) = 0;
                v28 = 1.0;
              }
            }

            v49 = 0;
            v50 = (a2 + 1672);
            v178 = 0.0;
            v179 = 0.0;
            v180 = 0.0;
            v175 = 0.0;
            v176 = 0.0;
            v177 = 0;
            do
            {
              *(&v180 + v49) = *&a1[2 * v49 + 394] - *(a2 + 68112 + 8 * v49);
              v51 = v49 + 3;
              --v49;
            }

            while (v51 > 1);
            v52 = 0;
            v53 = v178;
            v54 = v179;
            v55 = (a1 + 438);
            v56 = v180;
            do
            {
              v57 = *(v55 - 1) * v54 + *(v55 - 2) * v53;
              v58 = *v55;
              v55 += 3;
              *(&v175 + v52) = v57 + v58 * v56;
              v52 += 8;
            }

            while (v52 != 24);
            v59 = *(a2 + 68144);
            v60 = *(a2 + 68152);
            v61 = sqrt(v60 * v60 + 0.0 + v59 * v59);
            if (v61 > 1.0e-14)
            {
              v62 = sqrt(v176 * v176 + 0.0 + v175 * v175);
              if (v62 > 1.0e-14)
              {
                v63 = 0;
                v64 = (0.0 - v59 * v175 - v60 * v176) / (v61 * v62);
                v65 = fabs(v64);
                if (v65 > 1.0)
                {
                  v64 = v65 / v64;
                }

                do
                {
                  *(&v180 + v63) = *&a1[2 * v63 + 394] - *(a2 + 68136 + 8 * v63);
                  v66 = v63 + 3;
                  --v63;
                }

                while (v66 > 1);
                v67 = 0;
                v68 = v178;
                v69 = v179;
                v70 = (a1 + 438);
                v71 = v180;
                do
                {
                  v72 = *(v70 - 1) * v69 + *(v70 - 2) * v68;
                  v73 = *v70;
                  v70 += 3;
                  *(&v175 + v67) = v72 + v73 * v71;
                  v67 += 8;
                }

                while (v67 != 24);
                v74 = sqrt(v176 * v176 + 0.0 + v175 * v175);
                if (v74 > 1.0e-14)
                {
                  v75 = (v59 * v175 + 0.0 + v60 * v176) / (v61 * v74);
                  v76 = fabs(v75);
                  if (v76 > 1.0)
                  {
                    v75 = v76 / v75;
                  }

                  if (v64 >= 0.0)
                  {
                    if (v75 < 0.0)
                    {
                      if (a1[468] != 1)
                      {
                        goto LABEL_63;
                      }

                      v77 = !v11;
                      if (v74 > v17 + v17)
                      {
                        v77 = 1;
                      }

                      if ((v77 | v169))
                      {
LABEL_63:
                        v12 = 0;
                        *(a1 + 62348) = 0;
                        v78 = 18;
LABEL_66:
                        a1[15586] = v78;
                        goto LABEL_73;
                      }

                      if (*(a1 + 231) <= 1.0)
                      {
                        v12 = 0;
                        v78 = 16;
                        goto LABEL_66;
                      }

                      if (v25.__sinval * *(a1 + 228) + *(a1 + 227) * v25.__cosval < 0.0)
                      {
                        v12 = 0;
                        v78 = 19;
                        goto LABEL_66;
                      }

                      v91 = 0;
                      v92 = (a1 + 454);
                      v93 = vsubq_f64(*(a1 + 99), *v50);
                      v184 = v93;
                      v94 = *(a1 + 200) - *(a2 + 1688);
                      v185 = v94;
                      v181 = 0.0;
                      v182 = 0.0;
                      v183 = 0.0;
                      v95 = (a1 + 438);
                      do
                      {
                        v96 = v93.f64[1] * *(v95 - 1) + *(v95 - 2) * v93.f64[0];
                        v97 = *v95;
                        v95 += 3;
                        *(&v181 + v91) = v96 + v97 * v94;
                        v91 += 8;
                      }

                      while (v91 != 24);
                      v98 = sqrt(v182 * v182 + v181 * v181);
                      v99 = v25.__cosval * v98;
                      v100 = v25.__sinval * v98;
                      v181 = v99;
                      v182 = v100;
                      v101 = (a1 + 446);
                      v102 = v183;
                      for (i = 217; i != 220; ++i)
                      {
                        v104 = v100 * *(v101 - 3) + *(v101 - 6) * v99;
                        v105 = *v101++;
                        v184.f64[i - 217] = v104 + v105 * v102;
                      }

                      for (j = 0; j != 3; ++j)
                      {
                        *v92 = *(&v181 + j);
                        *(v92 - 29) = v184.f64[j];
                        v50->f64[j] = 0.0;
                        ++v92;
                      }

                      v107 = 0;
                      v184 = vmulq_f64(*(a1 + 3813), vdupq_n_s64(0x3F91DF46A2529D44uLL));
                      v185 = *(a1 + 215);
                      v108 = (a1 + 426);
                      do
                      {
                        *(v108 + v107 * 8) = v184.f64[v107];
                        *(a2 + 1648 + v107 * 8) = 0;
                        ++v107;
                      }

                      while (v107 != 3);
                      Geo2ECEF(v108, &WGS84_Datum, a1 + 195);
                      v12 = 1;
                      *(a1 + 62222) = 1;
                      NK_Transform_State((a1 + 378));
LABEL_179:
                      *(a1 + 62348) = 1;
                      goto LABEL_73;
                    }

                    v167 = v28;
                    v82 = 0;
                    v83 = 0.0;
                    do
                    {
                      v84 = *(a2 + 68136 + 8 * v82) - *&a1[2 * v82 + 394];
                      v83 = v83 + v84 * v84;
                      v85 = v82 + 3;
                      --v82;
                    }

                    while (v85 > 1);
                    v86 = acos(v75);
                    v87 = sqrt(v83);
                    v88 = __sincos_stret(v86);
                    v89 = v88.__sinval * v87;
                    *(a1 + 7670) = v88.__sinval * v87;
                    v90 = (a1 + 15338);
                    *(a1 + 7669) = v88.__cosval * v87;
                    if (v88.__cosval * v87 < 0.0)
                    {
                      if (v88.__cosval * v87 < *(a1 + 7631) * -0.05)
                      {
                        v12 = 0;
                        v79 = 14;
                        goto LABEL_72;
                      }

                      *v90 = 0.0;
                    }

                    v109 = v172;
                    if (v89 > v17)
                    {
                      v109 = 1;
                    }

                    if (v109 == 1 && *(a1 + 60216) == 1 && a1[15055] == 1 && (a1[15058] & 1) == 0 && !a1[15594] && *(a1 + 7533) < 90000.0 && (a1[15056] - 3) <= 1)
                    {
                      v110 = (*(a1 + 7530) - v22) * 6378137.0;
                      v111 = __x * ((*(a1 + 7531) - v26) * 6378137.0);
                      v112 = *(a2 + 68144);
                      v113 = *(a2 + 68152);
                      v114 = v113 * v113 + v112 * v112;
                      v115 = v112 * v113;
                      if (v114 <= 1.0)
                      {
                        v114 = 1.0;
                      }

                      v116 = v112 * v112;
                      v117 = (v115 * v111 + v116 * v110) / v114;
                      v118 = (v110 * v115 + v116 * v111) / v114;
                      *(a1 + 7672) = sqrt(v118 * v118 + v117 * v117);
                      v185 = 0.0;
                      v184.f64[0] = v22 + v117 * 0.000000156785594;
                      v184.f64[1] = v26 + v118 * (1.0 / (__x * 6378137.0));
                      v119 = Horiz_Diff_Sqd(v184.f64, a1 + 7530);
                      *(a1 + 7673) = sqrt(v119);
                      v120 = v119 < *(a1 + 7533) * 9.0;
                      v89 = *(a1 + 7670);
                    }

                    else
                    {
                      v120 = 0;
                    }

                    if (v89 > v17 && (!v120 || *(a1 + 7673) > v17 * 0.5 || *(a1 + 7672) > *(a1 + 7631) * 1.5))
                    {
                      v12 = 0;
                      v79 = 15;
                      goto LABEL_72;
                    }

                    v121 = *(a2 + 27240);
                    if (v121 <= 0.5)
                    {
                      v122 = 7000;
                    }

                    else
                    {
                      v122 = 3000;
                    }

                    if (v121 <= 5.0)
                    {
                      v123 = v122;
                    }

                    else
                    {
                      v123 = 5000;
                    }

                    if (v121 > 17.0)
                    {
                      v123 = 7000;
                    }

                    v124 = *a1;
                    if (*a1 - *(a2 + 27336) >= v123)
                    {
                      v125 = (a1 + 464);
                      if (*(a2 + 27276) >= 2)
                      {
                        v125 = (a2 + 27280);
                      }
                    }

                    else
                    {
                      v125 = (a2 + 27328);
                    }

                    v126 = *v170;
                    v127 = *v125 - *v170;
                    v128 = (a1 + 15342);
                    *(a1 + 7671) = v127;
                    if (v127 >= 180.0)
                    {
                      v129 = -360.0;
                    }

                    else
                    {
                      if (v127 >= -180.0)
                      {
                        goto LABEL_126;
                      }

                      v129 = 360.0;
                    }

                    v127 = v127 + v129;
                    *v128 = v127;
LABEL_126:
                    v130 = fabs(v127);
                    if ((v173 | v168) == 1)
                    {
                      if (v130 > v16)
                      {
                        v12 = 0;
                        v79 = 19;
                        goto LABEL_72;
                      }
                    }

                    else if (v130 > v16 && v120 && *(a1 + 7673) > v17 * 0.5 && *(a1 + 7672) > *(a1 + 7631) * 1.5)
                    {
                      v12 = 0;
                      v79 = 20;
                      goto LABEL_72;
                    }

                    v131.f64[0] = v25.__cosval;
                    v131.f64[1] = v25.__sinval;
                    v132 = vdivq_f64(vmulq_n_f64(v131, *v90), *(a2 + 68288));
                    v133 = vdupq_n_s64(0x3F91DF46A2529D44uLL);
                    v134 = *(a1 + 7631);
                    if (v134 - *v90 <= 0.0)
                    {
                      v135 = 1.0;
                    }

                    else
                    {
                      v135 = v134 - *v90;
                    }

                    v136 = *(a1 + 7632);
                    if (v171)
                    {
                      v137 = v134 * 0.05;
                      v138 = 0.25;
                    }

                    else
                    {
                      v137 = v134 * 3.0;
                      if ((a1[15267] & 1) == 0 && ((v169 | *(a1 + 61065)) & 1) == 0)
                      {
                        v139 = v136 * 0.333333333;
                        goto LABEL_142;
                      }

                      v138 = 0.166666667;
                    }

                    v139 = v136 * v138;
LABEL_142:
                    v140 = vmlaq_f64(v132, v133, *(a1 + 3813));
                    v141 = v173;
                    if (v135 >= v134 * 0.333333333)
                    {
                      v141 = 1;
                    }

                    if ((v141 & 1) == 0)
                    {
                      v139 = v139 + *v90 * 0.5 * (1.0 / sqrt(v135));
                    }

                    *(a1 + 61072) = 1;
                    a1[15269] = 1;
                    a1[15271] = 0;
                    *(a1 + 61088) = 0;
                    a1[15273] = v124;
                    *(a1 + 15274) = v140;
                    *(a1 + 7643) = v137 * v137;
                    *(a1 + 7644) = v139 * v139;
                    *(a1 + 7640) = v137 * v137;
                    *(a1 + 7641) = v139 * v139;
                    if (*(a2 + 68088) == 1)
                    {
                      a1[15271] = 2;
                    }

                    if ((v171 & 1) == 0)
                    {
                      *(a1 + 7640) = v167 * (v137 * v137);
                      *(a1 + 7641) = v167 * (v139 * v139);
                    }

                    if (v126 >= 180.0)
                    {
                      v142 = v126 + -180.0;
                    }

                    else
                    {
                      v142 = v126;
                    }

                    *(a1 + 7642) = v142 * 0.0174532925;
                    *(a1 + 7647) = v15;
                    if (*(a1 + 7751) < 8.0 && v11)
                    {
                      v143 = 0;
                    }

                    else
                    {
                      v143 = Horz_Meas_Update(6u, a1 + 213, a1 + 217, 0xCu, a1 + 7634, a2 + 976, (a2 + 27090));
                      v124 = *a1;
                      v126 = *v170;
                    }

                    *(a1 + 62220) = v143;
                    *(a2 + 68088) = v143;
                    *(a1 + 61200) = 1;
                    a1[15301] = 1;
                    a1[15304] = v124;
                    *(a1 + 61212) = 0;
                    Comp_Track8(a1 + 227);
                    *(a1 + 7655) = v144;
                    *(a1 + 7653) = v126;
                    v145 = (a1 + 15308);
                    *(a1 + 7654) = 0x3FD0000000000000;
                    v146 = 0.25;
                    if (((v171 | v173) & 1) == 0)
                    {
                      v147 = 1.0;
                      if (v135 < *(a1 + 7631) * 0.333333333)
                      {
                        v147 = fabs(*v128) * 0.5 + 1.0;
                      }

                      v146 = v147 * v147;
                      *v145 = v146;
                    }

                    if ((v171 & 1) == 0)
                    {
                      v146 = v167 * v167 * v146;
                      *v145 = v146;
                    }

                    v148 = *(a1 + 7760);
                    if (v148 < 10.0 && v11)
                    {
                      *v145 = v146 * (10.0 / v148 * (10.0 / v148));
                    }

                    *(a1 + 7657) = 0x4039000000000000;
                    v149 = *(a1 + 231);
                    *(a1 + 7668) = v149;
                    if (v171 & 1 | (v149 < 1.0))
                    {
                      *(a1 + 61200) = 0;
                    }

                    v150 = Track_Meas_Update(9, a1 + 217, 0xCu, a1 + 61200, a2 + 976, (a2 + 27108), v126, v149, 1.0);
                    *(a1 + 62221) = v150;
                    if ((v171 & 1) == 0 && ((*(a1 + 231) >= 1.0) & ~v172) != 0)
                    {
                      if (v150)
                      {
                        *(a1 + 232) = *v170;
                      }
                    }

                    else
                    {
                      v151 = *v170;
                      *(a1 + 232) = *v170;
                      *(a2 + 27328) = v151;
                      *(a2 + 27336) = *a1;
                    }

                    v152 = 0;
                    v184 = 0uLL;
                    v185 = 0.0;
                    v153 = *(a1 + 198) - *(a2 + 1672);
                    v154 = *(a1 + 199) - *(a2 + 1680);
                    v155 = *(a1 + 200) - *(a2 + 1688);
                    v156 = (a1 + 438);
                    do
                    {
                      v157 = v154 * *(v156 - 1) + *(v156 - 2) * v153;
                      v158 = *v156;
                      v156 += 3;
                      v184.f64[v152++] = v157 + v158 * v155;
                    }

                    while (v152 != 3);
                    if (v171)
                    {
                      goto LABEL_177;
                    }

                    v159 = sqrt(v184.f64[1] * v184.f64[1] + v184.f64[0] * v184.f64[0]);
                    v160 = v159 * 0.57735027;
                    v161 = v159 <= 1.0;
                    v162 = 0.2;
                    if (!v161)
                    {
                      v162 = v160;
                    }

                    v163 = v169;
                    if (fabs(v185) <= v162)
                    {
                      v163 = 1;
                    }

                    if ((v163 & 1) == 0)
                    {
LABEL_177:
                      *(a1 + 61272) = 1;
                      a1[15323] = *a1;
                      *(a1 + 3831) = xmmword_299053B20;
                      *(a1 + 15319) = 0x400000001;
                      *(a1 + 7666) = 0x4039000000000000;
                      *(a1 + 62223) = Vert_Meas_Update(9u, a1 + 217, 0xCu, a1 + 7659, (a2 + 976), (a2 + 27094), -*(a1 + 229));
                    }

                    v12 = 1;
                    goto LABEL_179;
                  }

LABEL_65:
                  v12 = 0;
                  *(a1 + 62348) = 0;
                  v78 = 17;
                  goto LABEL_66;
                }

                if (v64 < 0.0)
                {
                  goto LABEL_65;
                }
              }
            }

            v12 = 0;
            v79 = 16;
LABEL_72:
            a1[15586] = v79;
            *(a1 + 62348) = 0;
            goto LABEL_73;
          }

          v173 = 0;
          v168 = v21 < 45.0;
          v20 = v21 >= 45.0;
        }

        else
        {
          v173 = 0;
          v168 = 0;
          v20 = 1;
        }

        v172 = v20;
        goto LABEL_29;
      }
    }

    else
    {
      v14 = 0;
      if (v11)
      {
        goto LABEL_14;
      }
    }

    if (v10 || a1[14989] == 8)
    {
      if (*v13)
      {
        goto LABEL_14;
      }
    }

    else if ((*v13 & 1) != 0 && v14 & 1 | (v9 < 3101))
    {
      a1[15586] = 12;
      goto LABEL_14;
    }

    v12 = 0;
    v79 = 13;
    goto LABEL_72;
  }

  v12 = 0;
LABEL_73:
  v80 = *MEMORY[0x29EDCA608];
  return v12;
}

BOOL Is_GAL_IntEph_Real(uint64_t a1)
{
  result = *(a1 + 44) || *(a1 + 48) || *(a1 + 50) || *(a1 + 52) || *(a1 + 54) || *(a1 + 56) || *(a1 + 58) || *(a1 + 60) || *(a1 + 62) || *(a1 + 72) != 0;
  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LbsOsaTrace_Init(uint64_t result)
{
  v5 = *MEMORY[0x29EDCA608];
  g_LbsOsaTrace_Config = 1;
  if (result <= 3)
  {
    if ((result - 1) >= 2)
    {
      if (result)
      {
        if (result == 3)
        {
          v1 = &unk_2A13ED000;
          v2 = 2;
LABEL_17:
          v1[986] = v2;
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      v2 = 0;
      g_LbsOsaTrace_Config = 0;
LABEL_18:
      g_LbsOsaTrace_Config = v2;
      goto LABEL_19;
    }

    g_LbsOsaTrace_Config = 1;
    g_LbsOsaTrace_Config = 0;
LABEL_9:
    v3 = result - 1;
    if ((result - 1) > 7 || ((0xE3u >> v3) & 1) == 0)
    {
      goto LABEL_19;
    }

    v2 = dword_299053B30[v3];
    goto LABEL_18;
  }

  if ((result - 6) < 3)
  {
    g_LbsOsaTrace_Config = 5;
    goto LABEL_9;
  }

  if (result == 4)
  {
    v1 = &unk_2A13ED000;
    v2 = 3;
    goto LABEL_17;
  }

  if (result == 5)
  {
    v1 = &unk_2A13ED000;
    v2 = 4;
    goto LABEL_17;
  }

LABEL_19:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

char *LbsOsaTrace_ModuleString(unsigned int a1)
{
  v1 = a1;
  v6 = *MEMORY[0x29EDCA608];
  if (a1 >= 0xE)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx src,%u\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 87, "LbsOsaTrace_ModuleString", 515, v1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    result = 0;
  }

  else
  {
    result = off_29EF065E0[a1];
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LbsOsaTrace_GetSeverityString(unsigned int a1)
{
  v1 = 0x44494D574558uLL >> (8 * a1);
  if (a1 >= 6)
  {
    LOBYTE(v1) = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t LbsOsaTrace_FormatBuffer(unsigned int a1, unsigned int a2, const void *a3, size_t a4, char *a5, unsigned int a6)
{
  v6 = 0;
  v19 = *MEMORY[0x29EDCA608];
  if (a3 && a5)
  {
    SeverityString = LbsOsaTrace_GetSeverityString(a2);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = LbsOsaTrace_ModuleString(a1);
    v15 = snprintf(a5, (a6 - 1), "%10u %s%c ", v13, v14, SeverityString);
    if (v15 < 1)
    {
      v6 = 0;
    }

    else
    {
      v16 = v15;
      memcpy_s("LbsOsaTrace_FormatBuffer", 303, &a5[v15], a6 - v15, a3, a4);
      v6 = v16 + a4;
      if (v16 + a4 >= a6)
      {
        v6 = a6;
      }
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t LbsOsaTrace_PrintAsciiBuf(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (a4 + v9);
      v12 = *v11;
      if (v12 == 10 || v12 == 13)
      {
        *v11 = 0;
        bzero(__str, 0x3E8uLL);
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v15 = LbsOsaTrace_ModuleString(a1);
        SeverityString = LbsOsaTrace_GetSeverityString(a2);
        if (v9 == v10)
        {
          snprintf(__str, 0x3E7uLL, "%10u %s%c %s\n", v14, v15, SeverityString, &str_23_7);
        }

        else
        {
          snprintf(__str, 0x3E7uLL, "%10u %s%c %s\n", v14, v15, SeverityString, (a4 + v10));
        }

        gnssOsa_PrintLog(__str, a2, 1, 0);
        *v11 = v12;
        if (v12 == 13 && v11[1] == 10)
        {
          ++v9;
        }

        v10 = ++v9;
      }

      else
      {
        ++v9;
      }
    }

    while (a5 > v9);
  }

  v16 = *MEMORY[0x29EDCA608];
  return a5;
}

double GPS_Klob_Iono_Delay(double *a1, uint64_t a2, uint64_t a3, char *a4, double a5)
{
  v23 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 24) * 0.318309886;
  v8 = 0.0137 / (v7 + 0.11) + -0.022;
  v9 = *(a2 + 16) * v8 + *a1 * 0.318309886;
  v10 = -0.416;
  if (v9 >= -0.416)
  {
    v10 = *(a2 + 16) * v8 + *a1 * 0.318309886;
    if (v9 > 0.416)
    {
      v10 = 0.416;
    }
  }

  v11 = a1[1];
  v12 = v8 * *(a2 + 8);
  v13 = v12 / cos(v10 * 3.14159265) + v11 * 0.318309886;
  v14 = v10 + cos((v13 + -1.617) * 3.14159265) * 0.064;
  v15 = a5 + v13 * 43200.0 - (86400 * ((a5 + v13 * 43200.0) * 0.0000115740741));
  v16 = v15 + 86400.0;
  if (v15 >= 0.0)
  {
    v16 = a5 + v13 * 43200.0 - (86400 * ((a5 + v13 * 43200.0) * 0.0000115740741));
  }

  v17 = a4[13] * 16384.0 * v14 + a4[12] * 2048.0 + a4[14] * 65536.0 * (v14 * v14) + a4[15] * 65536.0 * (v14 * v14) * v14;
  if (v17 < 72000.0)
  {
    v17 = 72000.0;
  }

  v18 = (v16 + -50400.0) * 6.28318531 / v17;
  if (fabs(v18) >= 1.57)
  {
    v20 = 0.000000005;
  }

  else
  {
    v19 = v14 * vcvtd_n_f64_s32(a4[9], 0x1BuLL) + a4[8] * 9.31322575e-10 + vcvtd_n_f64_s32(a4[10], 0x18uLL) * (v14 * v14) + v14 * vcvtd_n_f64_s32(a4[11], 0x18uLL) * (v14 * v14);
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    v20 = v19 * (v18 * v18 * -0.5 + 1.0 + v18 * v18 * (v18 * v18) * 0.0416666667) + 0.000000005;
  }

  v21 = *MEMORY[0x29EDCA608];
  return ((0.53 - v7) * ((0.53 - v7) * 16.0) * (0.53 - v7) + 1.0) * v20 * 299792458.0;
}

uint64_t GM_Aid_NSSS_Meas(uint64_t a1, unsigned int a2, int *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 4) == 1 && *(a1 + 15) == 1 && *(a1 + 14) >= a2)
  {
    v5 = *(a1 + 32);
    *a3 = *(a1 + 28);
    v6 = a3[1] % 1023;
    v7 = 1023 * (v5 / 1023);
    v8 = v5 % 1023;
    if (v6 < 769 || v8 > 255)
    {
      if (v8 > 768 && v6 < 256)
      {
        v9 = v7 + 1023;
      }

      else
      {
        v9 = v7;
      }
    }

    else
    {
      v9 = v7 - 1023;
    }

    a3[1] = v6;
    Inc_CA_Chips(v9, a3 + 1, a3);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

double ECEF2FSD_RotM(const double (*a1)[3], double a2, double (*a3)[3])
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = __sincos_stret(a2);
  (*a3)[0] = v5.__sinval * (*a1)[3] + v5.__cosval * (*a1)[0];
  (*a3)[1] = v5.__sinval * (*a1)[4] + v5.__cosval * (*a1)[1];
  (*a3)[2] = v5.__sinval * (*a1)[5] + v5.__cosval * (*a1)[2];
  (*a3)[3] = v5.__cosval * (*a1)[3] - v5.__sinval * (*a1)[0];
  (*a3)[4] = v5.__cosval * (*a1)[4] - v5.__sinval * (*a1)[1];
  (*a3)[5] = v5.__cosval * (*a1)[5] - v5.__sinval * (*a1)[2];
  (*a3)[6] = (*a1)[6];
  (*a3)[7] = (*a1)[7];
  result = (*a1)[8];
  (*a3)[8] = result;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Speed_Meas_Update(unsigned int a1, double *a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v28[33] = *MEMORY[0x29EDCA608];
  if ((*(a4 + 1) - 1) <= 1 && (*(a4 + 12) = 0, *a4 == 1))
  {
    v23 = 0.0;
    v10 = *a2;
    v11 = a2[1];
    *v26 = *a2;
    *&v26[1] = v11;
    v12 = a2[2];
    *&v26[2] = v12;
    v13 = 0.0;
    v14 = 2;
    do
    {
      v13 = v13 + *&v26[v14] * *&v26[v14];
      v15 = v14-- + 1;
    }

    while (v15 > 1);
    v16 = sqrt(v13);
    v17 = v16 - a4[3] * a7;
    a4[5] = v16;
    a4[6] = v17;
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    if (v16 >= 0.0001)
    {
      *(&v24[1] + a1) = v12 / v16;
      *(v24 + a1 + 1) = v11 / v16;
      v18 = v10 / v16;
    }

    else
    {
      *(&v24[1] + a1) = 0x3FF0000000000000;
      *(v24 + a1 + 1) = 0x3FF0000000000000;
      v18 = 1.0;
    }

    *(v24 + a1) = v18;
    *(v24 + a3) = v17;
    umeas(a5, a3, a4[4], v24, v28, v27, &v23, a4[7]);
    v22 = v23;
    if (v23 <= 0.0)
    {
      v19 = 0;
      *a4 = 0;
      *(a4 + 12) = 1;
      ++*a6;
      a4[8] = v22 + a4[8];
    }

    else
    {
      a4[8] = a4[4] * (v23 * (v28[a3] * v28[a3]));
      v19 = *a4;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x29EDCA608];
  return v19 & 1;
}

uint64_t NK_AltP_Aiding_Required(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = *MEMORY[0x29EDCA608];
  v6 = a2 + 60104;
  if (*(a2 + 60344) == 1 && *(a2 + 60348) == 1 && (!*(a1 + 27136) || *(a2 + 20) < 8 || (*(a1 + 241) & 1) != 0 || !*(a1 + 296) || *(a2 + 60376) < *(a1 + 288) * *(a1 + 288)))
  {
    result = 0;
    *a3 = 0;
    goto LABEL_35;
  }

  Comp_NEDvar_UDU(a1 + 976, 0xCu, 6, (a2 + 1736), v13);
  v8 = *(a2 + 20);
  if (v8 > 8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  if (*(v6 + 2076) == 1 && *(v6 + 272) < 900.0)
  {
    v9 = 0;
  }

  else if (*(v6 + 2052) == 1 && *v6 < 1.0e-14)
  {
    --v9;
  }

  if ((*(a1 + 241) & 1) != 0 || !*(a1 + 27136))
  {
    if (v8 >= 9 && *(v6 + 2018) < 3u)
    {
      v10 = 40000.0;
      goto LABEL_27;
    }
  }

  else if (v8 >= 8)
  {
    if ((*(a1 + 20) - 2) >= 3)
    {
      v10 = 40000.0;
      if (*(v6 + 1829))
      {
        v10 = 2500.0;
      }
    }

    else
    {
      v10 = 10000.0;
    }

    goto LABEL_27;
  }

  v10 = 250000.0;
LABEL_27:
  if (*(a1 + 296) && (*(v6 + 2018) < v9 || v13[2] + *(a1 + 15512) > v10) && (*(v6 + 2017) || *(v6 + 2072) && *(v6 + 272) < 10000.0))
  {
    *a3 = 1;
    v11 = *(a1 + 288) * *(a1 + 288);
    *(a3 + 24) = *(a1 + 280);
    *(a3 + 32) = v11;
  }

  if (*a3)
  {
    *(a3 + 4) = 2;
    *(a3 + 20) = *a2;
    *(a3 + 56) = 0x4059000000000000;
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_35:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GPS_EphInt2Bin(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  v2 = *(result + 9);
  if (v2 >= 0)
  {
    v3 = (v2 & 0xF) << 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 22);
  *(a2 + 8) = ((*(result + 16) & 0x3FF) << 14) | ((*(result + 8) & 3) << 12) | v3 & 0xFFFFFF00 | (4 * (*(result + 10) & 0x3F)) | (v4 >> 8) & 3;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  v5 = *(result + 18) | (v4 << 16);
  *(a2 + 24) = *(result + 14);
  *(a2 + 28) = v5;
  *(a2 + 32) = *(result + 24) | (*(result + 15) << 16);
  v6 = *(result + 30) | (v4 << 16);
  *(a2 + 36) = 4 * (*(result + 44) & 0x3FFFFF);
  *(a2 + 40) = v6;
  HIDWORD(v7) = *(result + 26);
  LODWORD(v7) = *(result + 48);
  *(a2 + 44) = v7 >> 24;
  *(a2 + 48) = *(result + 48) & 0xFFFFFF;
  HIDWORD(v7) = *(result + 36);
  LODWORD(v7) = *(result + 52);
  *(a2 + 52) = v7 >> 24;
  *(a2 + 56) = *(result + 52) & 0xFFFFFF;
  HIDWORD(v7) = *(result + 34);
  LODWORD(v7) = *(result + 56);
  *(a2 + 60) = v7 >> 24;
  v8 = ((*(result + 11) & 1) << 7) | (*(result + 20) << 8) | (4 * (*(result + 12) & 0x1F));
  *(a2 + 64) = *(result + 56) & 0xFFFFFF;
  *(a2 + 68) = v8;
  HIDWORD(v7) = *(result + 40);
  LODWORD(v7) = *(result + 60);
  *(a2 + 72) = v7 >> 24;
  *(a2 + 76) = *(result + 60) & 0xFFFFFF;
  HIDWORD(v7) = *(result + 38);
  LODWORD(v7) = *(result + 64);
  *(a2 + 80) = v7 >> 24;
  *(a2 + 84) = *(result + 64) & 0xFFFFFF;
  HIDWORD(v7) = *(result + 32);
  LODWORD(v7) = *(result + 68);
  *(a2 + 88) = v7 >> 24;
  *(a2 + 92) = *(result + 68) & 0xFFFFFF;
  v9 = (v4 << 16) | (4 * (*(result + 28) & 0x3FFF));
  *(a2 + 96) = *(result + 72) & 0xFFFFFF;
  *(a2 + 100) = v9;
  *(a2 + 104) = 0xFFFFFF;
  *(a2 + 108) = *(result + 76);
  *(a2 + 109) = *(result + 77);
  *(a2 + 110) = *(result + 78);
  *(a2 + 112) = *(result + 80);
  *(a2 + 114) = v2;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Is_GAL_IntEph_Same(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 12) == *(a2 + 12) && *(a1 + 14) == *(a2 + 14) && *(a1 + 16) == *(a2 + 16) && *(a1 + 18) == *(a2 + 18) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 50) == *(a2 + 50) && *(a1 + 52) == *(a2 + 52) && *(a1 + 54) == *(a2 + 54) && *(a1 + 56) == *(a2 + 56) && *(a1 + 58) == *(a2 + 58) && *(a1 + 60) == *(a2 + 60) && *(a1 + 62) == *(a2 + 62) && *(a1 + 15) == *(a2 + 15) && *(a1 + 74) == *(a2 + 74) && *(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76) && *(a1 + 78) == *(a2 + 78) && *(a1 + 82) == *(a2 + 82) && *(a1 + 83) == *(a2 + 83) && *(a1 + 85) == *(a2 + 85) && *(a1 + 86) == *(a2 + 86) && *(a1 + 8) == *(a2 + 8) && *(a1 + 87) == *(a2 + 87);
  v3 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void AgpsFsmHandler(const void **a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 73, "AgpsFsmHandler");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PId,%x,Cntxt,%p\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 73, "AgpsFsmHandler", *(a1 + 4), a1[12]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  do
  {
    while (1)
    {
      while (1)
      {
        v4 = AgpsDeQueueFsmMsg(a1);
        if (v4)
        {
          break;
        }

        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "AgpsFsmHandler", 517);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }
      }

      v5 = v4;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Event,%x\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 73, "AgpsFsmHandler", *(v5 + 1));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      if ((v5[8] & 1) == 0)
      {
        if (g_LbsOsaTrace_Config < 4)
        {
          goto LABEL_23;
        }

        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid Event,%x\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 73, "AgpsFsmHandler", *(v5 + 1));
        v11 = 4;
        goto LABEL_22;
      }

      v7 = a1[12];
      if (v7)
      {
        break;
      }

      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_23;
      }

      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 69, "AgpsFsmHandler", 520);
      v11 = 1;
LABEL_22:
      gnssOsa_PrintLog(__str, v11, 1, 0);
LABEL_23:
      free(v5);
    }

    while (1)
    {
      v8 = *v7;
      if (*v7 == -2)
      {
        v7 = v7[2];
        if (!v7)
        {
          goto LABEL_35;
        }

        v8 = *v7;
      }

      else if (v8 == -1)
      {
        goto LABEL_27;
      }

      if (*(v5 + 1) == v8)
      {
        break;
      }

      v7 += 3;
    }

    if (v8 != -3)
    {
LABEL_27:
      v14 = v7[2];
      v15 = (v7[1])(v5);
      if (v14 == &g_UnknStatePtr)
      {
        if (v15 == &g_UnknStatePtr)
        {
          LOBYTE(v7) = 1;
          goto LABEL_35;
        }

        if (v15)
        {
          LOBYTE(v7) = 0;
          a1[12] = v15;
          goto LABEL_35;
        }
      }

      else
      {
        v16 = v7[2];
        if (v16)
        {
          LOBYTE(v7) = 0;
          a1[12] = v16;
          goto LABEL_35;
        }
      }

      LOBYTE(v7) = 0;
      goto LABEL_35;
    }

    if (g_LbsOsaTrace_Config <= 3)
    {
      free(v5);
      break;
    }

    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Shutdown ThreadId,%x\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 73, "AgpsFsmHandler", *(a1 + 4));
    LOBYTE(v7) = 1;
    gnssOsa_PrintLog(__str, 4, 1, 0);
LABEL_35:
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v17 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Completed Event,%x\n", (*&g_MacClockTicksToMsRelation * v17), "OSA", 68, "AgpsFsmHandler", *(v5 + 1));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    free(v5);
  }

  while ((v7 & 1) == 0);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v18 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 73, "AgpsFsmHandler");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v19 = *MEMORY[0x29EDCA608];
}

void AgpsFsmTimerRoutine(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!gnssOsa_MacEnterCriticalSection("AgpsFsmSendTimeout", 720, &g_TimerCriticSection))
  {
    if (a1)
    {
      v3 = *a1;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Id,%llx,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 73, "AgpsFsmSendTimeout", *a1, *(a1 + 2));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      if (*(a1 + 2) != -1)
      {
        v5 = gnssOsa_Calloc("AgpsFsmSendTimeout", 735, 1, 0xCuLL);
        if (!v5)
        {
          if (!gnssOsa_MacExitCriticalSection("AgpsFsmSendTimeout", 739, &g_TimerCriticSection) || !g_LbsOsaTrace_Config)
          {
            goto LABEL_17;
          }

LABEL_15:
          bzero(__str, 0x3C6uLL);
          v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v7, "OSA", 69, "AgpsFsmSendTimeout", 1551);
          goto LABEL_16;
        }

        AgpsSendFsmMsg(BYTE2(v3), BYTE2(v3), v3, v5);
        if ((gnssOsa_StopTimer("AgpsFsmSendTimeout", 0x2EDu, *(a1 + 2)) & 1) == 0 && g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Id,%llx,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 87, "AgpsFsmSendTimeout", 1545, *a1, *(a1 + 2));
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        *(a1 + 12) = 0;
        *a1 = 0;
        *(a1 + 2) = -1;
      }
    }

    if (!gnssOsa_MacExitCriticalSection("AgpsFsmSendTimeout", 756, &g_TimerCriticSection) || !g_LbsOsaTrace_Config)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v2, "OSA", 69, "AgpsFsmSendTimeout", 1550);
LABEL_16:
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

LABEL_17:
  v8 = *MEMORY[0x29EDCA608];
}

BOOL AgpsFsmExecDeInitCallbacks(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 144);
  if (v1)
  {
    v1();
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CB missing PId,%x\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 87, "AgpsFsmExecDeInitCallbacks", 515, *(a1 + 4));
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  result = v1 != 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsDeinitFsm(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  result = gnssOsa_Calloc("AgpsDeinitFsm", 287, 1, 0xCuLL);
  if (result)
  {
    *(result + 4) = -3;
    *(result + 8) = 1;
    AgpsEnQueueFsmMsg(result, a1);
    if (pthread_join(*(a1 + 104), 0))
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PId,%x\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsDeinitFsm", 1555, *(a1 + 4));
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      result = 0;
    }

    else
    {
      *(a1 + 104) = 0;
      AgpsDeinitMsgQueue(a1);
      result = 1;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsSpawnFsm(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x29EDCA608];
  pg_AgpsFsmTable = a1;
  g_NumProcess = a2;
  if (!gnssOsa_Init())
  {
    goto LABEL_18;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Starts\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 73, "AgpsSpawnFsm");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (gnssOsa_InitCriticalSection("AgpsSpawnFsm", 333, &g_TimerCriticSection))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsSpawnFsm", 1552);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  if (gnssOsa_MacEnterCriticalSection("AgpsFsmInitTimer", 67, &g_TimerCriticSection))
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_18;
    }

    bzero(__str, 0x3C6uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1550;
LABEL_16:
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v4, "OSA", 69, "AgpsFsmInitTimer", v5);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v6 = &byte_2A13C403C;
  v7 = 10;
  do
  {
    *(v6 - 12) = 0;
    *(v6 - 1) = -1;
    *v6 = 0;
    v6 += 16;
    --v7;
  }

  while (v7);
  if (gnssOsa_MacExitCriticalSection("AgpsFsmInitTimer", 78, &g_TimerCriticSection))
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_18;
    }

    bzero(__str, 0x3C6uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1551;
    goto LABEL_16;
  }

  v12 = pg_AgpsFsmTable;
  if (!*(pg_AgpsFsmTable + 4))
  {
LABEL_36:
    if (g_LbsOsaTrace_Config < 4)
    {
      v9 = 1;
    }

    else
    {
      bzero(__str, 0x3C6uLL);
      v23 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 73, "AgpsSpawnFsm");
      v9 = 1;
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    goto LABEL_19;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    v15 = v12 + 168 * v13;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v16 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PID,%x\n", (*&g_MacClockTicksToMsRelation * v16), "OSA", 73, "AgpsInitFsm", *(v15 + 4));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsInitMsgQueue(v15);
    if (*(v15 + 120))
    {
      if (!gnssOsa_CreateThread("AgpsInitFsm", 239, (v15 + 104), *(v15 + 128), AgpsFsmHandler, v15, 0, 0, *(v15 + 112)))
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v24 = mach_continuous_time();
          v29 = *(v15 + 4);
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx With Stack PID,%x\n", (*&g_MacClockTicksToMsRelation * v24));
LABEL_48:
          gnssOsa_PrintLog(__str, 1, 1, 0);
          goto LABEL_49;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v17 = *(v15 + 128);
      v18 = *(v15 + 112);
      if (v17)
      {
        if (!gnssOsa_CreateThread("AgpsInitFsm", 250, (v15 + 104), v17, AgpsFsmHandler, v15, 0, 0, *(v15 + 112)))
        {
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v26 = mach_continuous_time();
            v30 = *(v15 + 4);
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx With Prio PID,%x\n", (*&g_MacClockTicksToMsRelation * v26));
            goto LABEL_48;
          }

LABEL_49:
          AgpsDeinitMsgQueue(v15);
          if (!g_LbsOsaTrace_Config)
          {
            goto LABEL_18;
          }

          bzero(__str, 0x3C6uLL);
          v28 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Failed PId,%x\n", (*&g_MacClockTicksToMsRelation * v28), "OSA", 69, "AgpsSpawnFsm", *(pg_AgpsFsmTable + 168 * v13 + 4));
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config < 4)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else if (!gnssOsa_CreateThread("AgpsInitFsm", 228, (v15 + 104), 0, AgpsFsmHandler, v15, 0, 0, *(v15 + 112)))
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v27 = mach_continuous_time();
          v31 = *(v15 + 4);
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Without Stack PID,%x\n", (*&g_MacClockTicksToMsRelation * v27));
          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }

    ++v14;
    v12 = pg_AgpsFsmTable;
    v13 = v14;
  }

  while (*(pg_AgpsFsmTable + 168 * v14 + 4));
  if (!*(pg_AgpsFsmTable + 4))
  {
    goto LABEL_36;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    v21 = v12 + 168 * v19;
    v22 = *(v21 + 136);
    if (!v22)
    {
      break;
    }

    v22();
    ++v20;
    v12 = pg_AgpsFsmTable;
    v19 = v20;
    if (!*(pg_AgpsFsmTable + 168 * v20 + 4))
    {
      goto LABEL_36;
    }
  }

  if (!g_LbsOsaTrace_Config)
  {
    goto LABEL_18;
  }

  bzero(__str, 0x3C6uLL);
  v25 = mach_continuous_time();
  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Init CB not regd PId,%x\n", (*&g_MacClockTicksToMsRelation * v25), "OSA", 69, "AgpsFsmExecInitCallbacks", 515, *(v21 + 4));
  gnssOsa_PrintLog(__str, 1, 1, 0);
  if (g_LbsOsaTrace_Config < 4)
  {
    goto LABEL_18;
  }

LABEL_17:
  bzero(__str, 0x3C6uLL);
  v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v8, "OSA", 73, "AgpsSpawnFsm");
  gnssOsa_PrintLog(__str, 4, 1, 0);
LABEL_18:
  v9 = 0;
LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

void AgpsStopAllActiveTimers(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("AgpsStopAllActiveTimers", 373, &g_TimerCriticSection))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v0 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v0, "OSA", 69, "AgpsStopAllActiveTimers", 1550);
LABEL_17:
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else
  {
    v1 = &dword_2A13C4038;
    v2 = 10;
    do
    {
      if (*(v1 + 4) == 1)
      {
        v3 = *v1;
        if (*v1 != -1)
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v4 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Id,%llx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 73, "AgpsStopAllActiveTimers", *(v1 - 1));
            gnssOsa_PrintLog(__str, 4, 1, 0);
            v3 = *v1;
          }

          if ((gnssOsa_StopTimer("AgpsStopAllActiveTimers", 0x180u, v3) & 1) == 0 && g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v5 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Handle,%x\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 87, "AgpsStopAllActiveTimers", 1545, *v1);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          *(v1 + 4) = 0;
          *(v1 - 1) = 0;
          *v1 = -1;
        }
      }

      v1 += 4;
      --v2;
    }

    while (v2);
    if (gnssOsa_MacExitCriticalSection("AgpsStopAllActiveTimers", 392, &g_TimerCriticSection) && g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v6, "OSA", 69, "AgpsStopAllActiveTimers", 1551);
      goto LABEL_17;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t AgpsShutdownAllFsm(void)
{
  v11 = *MEMORY[0x29EDCA608];
  v0 = g_NumProcess;
  g_NumProcess = 0;
  if (!v0)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Completed\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 73, "AgpsShutdownAllFsm");
      v5 = 1;
      gnssOsa_PrintLog(__str, 4, 1, 0);
      goto LABEL_20;
    }

LABEL_19:
    v5 = 1;
    goto LABEL_20;
  }

  if (v0 >= 1)
  {
    v1 = v0 + 1;
    v2 = 168 * v0;
    do
    {
      if (*(pg_AgpsFsmTable + v2 - 164))
      {
        if (AgpsFsmExecDeInitCallbacks(pg_AgpsFsmTable + v2 - 168))
        {
          AgpsDeinitFsm(pg_AgpsFsmTable + v2 - 168);
        }

        else if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v3 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Failed PId,%x\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsShutdownAllFsm", *(pg_AgpsFsmTable + v2 - 164));
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }
      }

      --v1;
      v2 -= 168;
    }

    while (v1 > 1);
  }

  AgpsStopAllActiveTimers();
  if (!gnssOsa_MacDeinitCriticalSection("AgpsShutdownAllFsm", 429, &g_TimerCriticSection))
  {
    gnssOsa_flushNv();
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Completed\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 73, "AgpsShutdownAllFsm");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    gnssOsa_Deinit();
    goto LABEL_19;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "AgpsShutdownAllFsm", 1553);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v5 = 0;
LABEL_20:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

void AgpsSendFsmMsg(int a1, int a2, int a3, _BYTE *a4)
{
  v8 = 0;
  v29 = *MEMORY[0x29EDCA608];
  a4[1] = a2;
  *a4 = a1;
  *(a4 + 1) = a3;
  a4[8] = 1;
  v9 = pg_AgpsFsmTable;
  do
  {
    v10 = v8;
    v11 = *(pg_AgpsFsmTable + 168 * v8++ + 4);
    if (v11)
    {
      v12 = v11 == a2;
    }

    else
    {
      v12 = 1;
    }
  }

  while (!v12);
  if (!v11)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v25 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Src,%x,Dest,%x,Op,%x\n", (*&g_MacClockTicksToMsRelation * v25), "OSA", 69, "AgpsSendFsmMsg", 515, a1, a2, a3);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    snprintf(v27, 0x3B6uLL, "ASSERT: %s %d FSM : Invalid ProcessId,Src,%x,Dest,%x,Op,%x", "AgpsSendFsmMsg", 509, a1, a2, a3);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v26 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v26), "OSA", 69, "AgpsSendFsmMsg", v27);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("AgpsSendFsmMsg", "agpsfsm.cpp", 510, "false && AgpsSendFsmMsg Invalid Process Id 0");
  }

  v13 = pg_AgpsFsmTable + 168 * v10;
  if (*(v13 + 104))
  {
    if (*v13 != 174 || *(v13 + 160) != 22)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v23 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Guard bytes\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 69, "AgpsSendFsmMsg", 770);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      snprintf(v27, 0x3B6uLL, "ASSERT: %s %d FSM : Guard Bytes Overwritten,Src,%x,Dest,%x,Op,%x", "AgpsSendFsmMsg", 474, a1, a2, a3);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v24 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v24), "OSA", 69, "AgpsSendFsmMsg", v27);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      gnssOsa_FlushLog();
      __assert_rtn("AgpsSendFsmMsg", "agpsfsm.cpp", 475, "false && AgpsSendFsmMsg Guard Bytes Overwritten");
    }

    v14 = *MEMORY[0x29EDCA608];

    AgpsEnQueueFsmMsg(a4, v13);
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Src,%x,Dest,%x,Op,%x\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 69, "AgpsSendFsmMsg", 521, a1, a2, a3);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      v9 = pg_AgpsFsmTable;
    }

    v16 = 0;
    do
    {
      v17 = v16;
      v18 = *(v9 + 168 * v16++ + 4);
      if (v18)
      {
        v19 = v18 == a1;
      }

      else
      {
        v19 = 1;
      }
    }

    while (!v19);
    v20 = *(v9 + 168 * v17 + 152);
    if (v18)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v20(a4);
    }

    free(a4);
    v22 = *MEMORY[0x29EDCA608];
  }
}

void AgpsFsmMarkTimerExpMsgInvalid(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = pthread_self();
  v3 = pg_AgpsFsmTable;
  v4 = *(pg_AgpsFsmTable + 4);
  if (!*(pg_AgpsFsmTable + 4))
  {
    goto LABEL_15;
  }

  v5 = *(pg_AgpsFsmTable + 4);
  if (*(pg_AgpsFsmTable + 104) != v2)
  {
    v6 = 0;
    do
    {
      v7 = pg_AgpsFsmTable + 168 * ++v6;
      v5 = *(v7 + 4);
    }

    while (*(v7 + 4) && *(v7 + 104) != v2);
  }

  if (g_NumProcess >= 1)
  {
    v8 = 1;
    while (v4 != v5 || !*(v3 + 104))
    {
      v4 = *(v3 + 172);
      if (*(v3 + 172))
      {
        v9 = v8 >= g_NumProcess;
      }

      else
      {
        v9 = 1;
      }

      ++v8;
      v3 += 168;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    v11 = *MEMORY[0x29EDCA608];

    gnssOsa_MarkFsmMsgInvalid(a1, v3);
  }

  else
  {
LABEL_15:
    v10 = *MEMORY[0x29EDCA608];
  }
}

uint64_t AgpsFsmStartTimer(unsigned int a1, unsigned int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("AgpsFsmStartTimer", 574, &g_TimerCriticSection))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v5 = 1550;
LABEL_28:
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v4, "OSA", 69, "AgpsFsmStartTimer", v5);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

LABEL_29:
    v11 = 2;
  }

  else
  {
    v6 = 10;
    v7 = &vg_OsaTimers;
    while (*v7 != a1 || *(v7 + 12) != 1)
    {
      v7 += 2;
      if (!--v6)
      {
        AgpsFsmMarkTimerExpMsgInvalid(a1);
        v8 = &dword_2A13C4038;
        v9 = 10;
        while ((v8[1] & 1) != 0)
        {
          v8 += 4;
          if (!--v9)
          {
            if (!gnssOsa_MacExitCriticalSection("AgpsFsmStartTimer", 623, &g_TimerCriticSection))
            {
              snprintf(v17, 0x3B6uLL, "ASSERT: %s %d TMC : Max timer count reached", "AgpsFsmStartTimer", 632);
              if (g_LbsOsaTrace_Config)
              {
                bzero(__str, 0x3C6uLL);
                v16 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v16), "OSA", 69, "AgpsFsmStartTimer", v17);
                gnssOsa_PrintLog(__str, 1, 1, 0);
              }

              gnssOsa_FlushLog();
              __assert_rtn("AgpsFsmStartTimer", "agpsfsm.cpp", 633, "false && Max timer count reached");
            }

            goto LABEL_26;
          }
        }

        *(v8 - 1) = a1;
        if (gnssOsa_StartTimer("AgpsFsmStartTimer", 608, v8, AgpsFsmTimerRoutine, v8 - 2, a2))
        {
          *(v8 + 4) = 1;
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v10 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Id,%x,Handle,%x,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 73, "AgpsFsmStartTimer", a1, *v8, a2);
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          v11 = 0;
        }

        else
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v13 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Id,%x,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 87, "AgpsFsmStartTimer", 1544, a1, a2);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          v11 = 3;
        }

        if (!gnssOsa_MacExitCriticalSection("AgpsFsmStartTimer", 623, &g_TimerCriticSection))
        {
          goto LABEL_30;
        }

LABEL_26:
        if (!g_LbsOsaTrace_Config)
        {
          goto LABEL_29;
        }

LABEL_27:
        bzero(__str, 0x3C6uLL);
        v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v5 = 1551;
        goto LABEL_28;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Already started Id,%x\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 87, "AgpsFsmStartTimer", 1544, a1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    if (gnssOsa_MacExitCriticalSection("AgpsFsmStartTimer", 587, &g_TimerCriticSection))
    {
      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v11 = 5;
  }

LABEL_30:
  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t AgpsFsmStopTimer(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Id,%x\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 68, "AgpsFsmStopTimer", a1);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!gnssOsa_MacEnterCriticalSection("AgpsFsmStopTimer", 648, &g_TimerCriticSection))
  {
    v5 = 10;
    v6 = &dword_2A13C4038;
    while (*(v6 - 1) != a1 || *(v6 + 4) != 1 || *v6 == -1)
    {
      v6 += 4;
      if (!--v5)
      {
        if (!gnssOsa_MacExitCriticalSection("AgpsFsmStopTimer", 675, &g_TimerCriticSection))
        {
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v7 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Not Started or already Expired Id,%x\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 68, "AgpsFsmStopTimer", 1545, a1);
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          AgpsFsmMarkTimerExpMsgInvalid(a1);
          v8 = 4;
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    if (gnssOsa_StopTimer("AgpsFsmStopTimer", 0x294u, *v6))
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Id,%x,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 73, "AgpsFsmStopTimer", a1, *v6);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v8 = 0;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Id,%x,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 87, "AgpsFsmStopTimer", 1545, a1, *v6);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v8 = 7;
    }

    *(v6 + 4) = 0;
    *(v6 - 1) = 0;
    *v6 = -1;
    if (!gnssOsa_MacExitCriticalSection("AgpsFsmStopTimer", 675, &g_TimerCriticSection))
    {
      goto LABEL_27;
    }

LABEL_23:
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_26;
    }

    bzero(__str, 0x3C6uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = 1551;
    goto LABEL_25;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = 1550;
LABEL_25:
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v3, "OSA", 69, "AgpsFsmStopTimer", v4);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

LABEL_26:
  v8 = 2;
LABEL_27:
  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

BOOL NVIC_Is_Idle_Pattern_SF1(const unsigned int *a1)
{
  result = (*a1 & 0x40) != 0 && (~a1[1] & 0x555555) == 0 && a1[2] == 1431655765 && a1[3] == 1431655765 && a1[4] == 1431655765 && a1[5] == 1431655765 && a1[6] == 1431655765 && a1[7] == 1431655765;
  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NVIC_Is_Idle_Pattern_SF2(const unsigned int *a1)
{
  result = (*a1 & 0x43) == 0x41 && a1[1] == 1431655765 && a1[2] == 1431655765 && a1[3] == 1431655765 && a1[4] == 1431655765 && a1[5] == 1431655765 && a1[6] == 1431655765 && a1[7] == 1431655765;
  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ud2var(uint64_t result, unsigned int a2, int a3, unsigned int a4, double *a5)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = result - 8;
  v6 = a3 + 1;
  v7 = ((a3 + 1) * a3) >> 1;
  *a5 = *(result - 8 + 8 * v7);
  if (a3 + 1 <= a2)
  {
    v8 = a3 + v7;
    v9 = 1;
    do
    {
      v7 += v6;
      v10 = *(v5 + 8 * v7);
      v11 = v9 + 1;
      v12 = a4;
      if (v9 + 1 <= a4)
      {
        a5[v11 - 1] = v10;
        v12 = v9;
      }

      if (v12)
      {
        if (v12 + 1 > 2)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = 2;
        }

        v14 = v13 - 1;
        v15 = v8;
        v16 = a5;
        do
        {
          *v16 = *v16 + v10 * *(v5 + 8 * v15) * *(v5 + 8 * v15);
          ++v16;
          ++v15;
          --v14;
        }

        while (v14);
      }

      v8 += v6++;
      v9 = v11;
    }

    while (v6 <= a2);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

char *GLON_State_Update_Init(char *result, uint64_t a2, int *a3, uint64_t a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a2 + 76) && *(a2 + 80) == 1)
  {
    *(result + 200) = 0;
    GLON_Immediate_Updates(result, a2, a3, a4);
    v7 = *MEMORY[0x29EDCA608];

    return GLON_Leap_Second_Updates(a2, a3, a4);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    v9 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t GLON_Immediate_Updates(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = result;
  v59 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 40) + 7.0;
  v6 = -0.5;
  if (v5 <= 0.0)
  {
    v7 = -0.5;
  }

  else
  {
    v7 = 0.5;
  }

  v8 = v5 + v7;
  if (v8 <= 2147483650.0)
  {
    if (v8 >= -2147483650.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x80000000;
    }
  }

  else
  {
    v9 = 0x7FFFFFFF;
  }

  v10 = *(a2 + 88) + 7.0;
  if (v10 > 0.0)
  {
    v6 = 0.5;
  }

  v11 = v10 + v6;
  if (v11 <= 2147483650.0)
  {
    if (v11 >= -2147483650.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x80000000;
    }
  }

  else
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = 0;
  v14 = *(a2 + 84);
  if (v12 > 86399)
  {
    ++v14;
  }

  v50 = v14;
  v51 = *(a2 + 82);
  if (v12 > 86399)
  {
    v12 -= 86400;
  }

  v49 = v12;
  if (v9 <= 604799)
  {
    v15 = v9;
  }

  else
  {
    v15 = v9 - 604800;
  }

  if (v9 <= 604799)
  {
    v16 = *(a2 + 32);
  }

  else
  {
    v16 = *(a2 + 32) + 1;
  }

  v47 = v16;
  v17 = v16;
  v46 = a4 + 37824;
  v44 = (a3 + 17160);
  v45 = (a3 + 17144);
  v18 = a4 + 6144;
  v19 = 16256;
  v20 = 16248;
  v21 = 13464;
  v22 = 11928;
  v23 = &unk_2A13EC000;
  v52 = v16;
  do
  {
    v24 = *(a3 + 62368);
    if (v24 < 1)
    {
      v27 = 0;
    }

    else
    {
      v25 = *(v23[103] + 48);
      if (*(v25 + 16) == 1 && *v25 >= 3)
      {
        v26 = *(v25 + 40) + 604800 * *(v25 + 32);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26 == v24 + 1;
    }

    v28 = *(*(a3 + 11912) + v13);
    v29 = v15 - *(v18 + 160) + 604800 * (v17 - *(v18 + 164));
    if (v29 >= 0)
    {
      v30 = v15 - *(v18 + 160) + 604800 * (v17 - *(v18 + 164));
    }

    else
    {
      v30 = -v29;
    }

    v31 = *(v18 + 176);
    v32 = *(*(a3 + 17168) + v13);
    if (v31 == 2)
    {
      v34 = v30 > 0xC8 || v27;
      v33 = *(*(a3 + 17184) + v13) == 1 && v34;
      if (!*(*(a3 + 11912) + v13))
      {
        goto LABEL_63;
      }
    }

    else if (v31 == 1)
    {
      if (!*(*(a3 + 17168) + v13))
      {
        goto LABEL_63;
      }

      v33 = 0;
      v32 = v30 > 7 || v27;
      if (!*(*(a3 + 11912) + v13))
      {
        goto LABEL_63;
      }
    }

    else if (v31)
    {
      v33 = 0;
      if (!*(*(a3 + 11912) + v13))
      {
        goto LABEL_63;
      }
    }

    else
    {
      v33 = *(*(a3 + 17184) + v13);
      if (!*(*(a3 + 11912) + v13))
      {
        goto LABEL_63;
      }
    }

    if (v32)
    {
      v35 = *(v48 + 400);
      if (v35 > 299)
      {
        result = EvLog_v("GLON_StUd:  Delay ImmUd:  %d  RK_Loops %d", v13 + 33, v35);
      }

      else
      {
        v54 = 0;
        *v55 = 0;
        *&v55[5] = 0;
        memset(&v55[16], 0, 64);
        v56 = 0u;
        v57 = 0u;
        v58 = 0;
        memset(v53, 0, 62);
        GLON_EphBin2Int(a3 + v22, v53, 0);
        GLON_EphInt2Real(v53, &v54);
        GLON_Calc_State_Table_Eph(v51, v50, v49, &v54, v18, (v48 + 400));
        result = EvVrb_v("GLON_Calc_State_Table_Eph:  ImmUd:  %d  Age %d", v13 + 1, v30);
        if (*(*(a3 + 17176) + v13) == 1 && (result = GLON_Cross_Check_SVRS_vs_EE(v51, v50, v49, v18, a3 + v21), (result & 1) == 0))
        {
          v36 = 1;
          *(*(a3 + 17224) + v13) = 1;
          *(v18 + 176) = 0;
          v37 = (*(a3 + 17168) + v13);
          v38 = v44;
        }

        else
        {
          v36 = 0;
          *(v18 + 160) = v15;
          *(v18 + 164) = v47;
          v37 = (v46 + v13);
          v38 = v45;
        }

        *v37 = 0;
        *(*v38 + v13) = v36;
      }
    }

    else
    {
      if ((v33 & 1) == 0)
      {
        goto LABEL_63;
      }

      *v55 = 0;
      v54 = 0;
      memset(&v55[8], 0, 67);
      v53[0] = 0uLL;
      *(&v53[1] + 5) = 0;
      *&v53[1] = 0;
      *(&v53[1] + 14) = 0;
      BYTE6(v53[2]) = 0;
      result = GLON_AlmBin2Int(a3 + v20, v53);
      v54 = *&v53[0];
      *&v55[2] = WORD5(v53[0]);
      v39.i64[0] = SHIDWORD(v53[0]);
      v39.i64[1] = SLODWORD(v53[1]);
      *&v40.f64[0] = *&vcvtq_f64_s64(v39);
      v39.i64[0] = HIDWORD(v53[0]);
      v39.i64[1] = LODWORD(v53[1]);
      v40.f64[1] = vcvtq_f64_u64(*&v39).f64[1];
      v41 = vmulq_f64(v40, xmmword_299053BE0);
      v39.i64[0] = SDWORD1(v53[1]);
      v39.i64[1] = SDWORD2(v53[1]);
      v42 = vmulq_f64(vcvtq_f64_s64(v39), xmmword_299053BF0);
      *&v55[8] = v41;
      *&v55[24] = v42;
      v41.f64[0] = SBYTE12(v53[1]);
      LOWORD(v42.f64[0]) = HIWORD(v53[1]);
      v41.f64[1] = *&v42.f64[0];
      *&v55[40] = vmulq_f64(v41, xmmword_299053C00);
      *&v55[56] = SLOWORD(v53[2]) * 0.0000958737992;
      *&v55[64] = vcvtd_n_f64_s32(SWORD1(v53[2]), 0x12uLL);
      *&v55[72] = WORD2(v53[2]);
      v55[74] = BYTE6(v53[2]);
      *v55 = *(a3 + v19);
      if (*v55)
      {
        GLON_RealAlm2RefState(v51, v50, v49, &v54, v18);
        result = EvVrb_v("GLON_RealAlm2RefState:  ImmUd:  %d  Age %d", v13 + 1, v30);
        *(v18 + 160) = v15;
        *(v18 + 164) = v47;
        *(v46 + v13) = 0;
        *(*(a3 + 17152) + v13) = 0;
      }
    }

    v17 = v52;
    v23 = &unk_2A13EC000;
LABEL_63:
    ++v13;
    v19 += 36;
    v20 += 36;
    v21 += 116;
    v22 += 64;
    v18 += 192;
  }

  while (v13 != 24);
  v43 = *MEMORY[0x29EDCA608];
  return result;
}

char *GLON_Leap_Second_Updates(char *result, int *a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a2 + 15360;
  v4 = a2[15592];
  if (v4 >= 1 && result[16] == 1 && *result >= 1)
  {
    v5 = *(p_api + 48);
    if (*(v5 + 16) == 1 && *v5 >= 3)
    {
      v6 = *(v5 + 40) + 604800 * *(v5 + 32);
    }

    else
    {
      v6 = 0;
    }

    if ((v4 - v6) >= 0xFF100F01)
    {
      v7 = 0;
      v8 = a2 + 2982;
      v9 = a2 + 4062;
      v10 = a3 + 37824;
      v11 = a3 + 6304;
      while (1)
      {
        v13 = *v8;
        v8 += 16;
        v12 = v13;
        if (v13 >= 1 && v12 <= v3[232] && *(v11 + 16) == 1)
        {
          v14 = 1;
        }

        else
        {
          if (*v9 < 1 || *v9 > v3[232] || *(v11 + 16) != 2)
          {
            goto LABEL_25;
          }

          v14 = 2;
        }

        if ((*(v10 + v7) & 1) == 0)
        {
          break;
        }

LABEL_25:
        ++v7;
        v9 += 9;
        v11 += 192;
        if (v7 == 24)
        {
          goto LABEL_26;
        }
      }

      v15 = *(v3 + 932);
      v16 = *v11 - v15;
      *v11 = v16;
      if (v16 < 0)
      {
        v17 = -1;
        v18 = 604800;
      }

      else
      {
        if (v16 <= 0x93A80)
        {
LABEL_24:
          *(v10 + v7) = 1;
          result = EvLog_v("GLON_Leap_Second_Updates:  Adj Ref Time, Slot %d  E/A %d  SP %d ", v7 + 1, v14, v15);
          goto LABEL_25;
        }

        v17 = 1;
        v18 = -604800;
      }

      *v11 = v18 + v16;
      *(v11 + 4) += v17;
      goto LABEL_24;
    }
  }

LABEL_26:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

char *GLON_State_Update(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 76) || *(a3 + 80) != 1)
  {
    goto LABEL_63;
  }

  v9 = result;
  v10 = 0;
  v11 = a6 + 6144;
  do
  {
    v12 = *(v11 + 176);
    if (v12 == 2)
    {
      v13 = *(a4 + 17184);
    }

    else
    {
      if (v12 != 1 || (*(*(a4 + 17168) + v10) & 1) != 0)
      {
        goto LABEL_11;
      }

      v13 = *(a4 + 17176);
    }

    if ((*(v13 + v10) & 1) == 0)
    {
      *(v11 + 175) = 0uLL;
      *(v11 + 144) = 0uLL;
      *(v11 + 160) = 0uLL;
      *(v11 + 112) = 0uLL;
      *(v11 + 128) = 0uLL;
      *(v11 + 80) = 0uLL;
      *(v11 + 96) = 0uLL;
      *(v11 + 48) = 0uLL;
      *(v11 + 64) = 0uLL;
      *(v11 + 16) = 0uLL;
      *(v11 + 32) = 0uLL;
      *v11 = 0uLL;
    }

LABEL_11:
    ++v10;
    v11 += 192;
  }

  while (v10 != 24);
  *(result + 200) = 0;
  GLON_Immediate_Updates(result, a3, a4, a6);
  v14 = *(a3 + 40) + 7.0;
  if (v14 <= 0.0)
  {
    v15 = -0.5;
  }

  else
  {
    v15 = 0.5;
  }

  v16 = v14 + v15;
  if (v16 >= -2147483650.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x80000000;
  }

  if (v16 <= 2147483650.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = *(a3 + 88) + 7.0;
  if (v19 <= 0.0)
  {
    v20 = -0.5;
  }

  else
  {
    v20 = 0.5;
  }

  v21 = v19 + v20;
  if (v21 <= 2147483650.0)
  {
    if (v21 >= -2147483650.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0x80000000;
    }
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

  v23 = 0;
  v24 = 0;
  v25 = *(a3 + 82);
  v26 = 0x7FFFFFFF;
  v27 = -1;
  v28 = -1;
  v29 = 0x7FFFFFFF;
  while (2)
  {
    if ((*(*(a4 + 17176) + v24) != 1 || *(*(a4 + 17208) + v24) != 1 || *(*(a4 + 17184) + v24) != 1 || *(*(a4 + 17168) + v24) == 1) && *(a6 + v23 + 6320))
    {
      v30 = *(a6 + v23 + 6316);
      if (v26 > v30)
      {
        v31 = *(a6 + v23 + 6312);
        goto LABEL_37;
      }

      if (v26 == v30)
      {
        v31 = *(a6 + v23 + 6312);
        if (v31 < v29)
        {
LABEL_37:
          v27 = v24 + 32;
          v28 = v24;
          v29 = v31;
          v26 = *(a6 + v23 + 6316);
        }
      }
    }

    ++v24;
    v23 += 192;
    if (v24 != 24)
    {
      continue;
    }

    break;
  }

  if (v22 <= 86399)
  {
    v32 = v22;
  }

  else
  {
    v32 = v22 - 86400;
  }

  if (v18 <= 604799)
  {
    v33 = v18;
  }

  else
  {
    v33 = v18 - 604800;
  }

  if (v28 == -1)
  {
    goto LABEL_62;
  }

  if (v27 > 0xC4 || v28 >= 0x18)
  {
    EvCrt_v("GLON_StUd:  Bad Glo Idx:  DBst %d  DBnm %d", v27, v28);
    goto LABEL_62;
  }

  if (*(*(a4 + 11912) + v28) != 1)
  {
    goto LABEL_60;
  }

  v34 = (*(a3 + 84) + (v22 > 86399));
  v35 = *(a3 + 32) + (v18 > 604799);
  if (*(*(a4 + 17168) + v28) != 1)
  {
    if (*(*(a4 + 17184) + v28) == 1)
    {
      v48 = *(a3 + 32) + (v18 > 604799);
      v50 = (*(a3 + 84) + (v22 > 86399));
      v51[0] = 0uLL;
      *(&v51[1] + 5) = 0;
      *&v51[1] = 0;
      *(&v51[1] + 14) = 0;
      BYTE6(v51[2]) = 0;
      GLON_AlmBin2Int(a4 + 36 * v28 + 16248, v51);
      v52 = *&v51[0];
      v39.i64[0] = SHIDWORD(v51[0]);
      v39.i64[1] = SLODWORD(v51[1]);
      *&v40.f64[0] = *&vcvtq_f64_s64(v39);
      v39.i64[0] = HIDWORD(v51[0]);
      v39.i64[1] = LODWORD(v51[1]);
      v40.f64[1] = vcvtq_f64_u64(*&v39).f64[1];
      v39.i64[0] = SDWORD1(v51[1]);
      v39.i64[1] = SDWORD2(v51[1]);
      v41.f64[0] = SBYTE12(v51[1]);
      LOWORD(v42) = HIWORD(v51[1]);
      v41.f64[1] = v42;
      *&v53[2] = WORD5(v51[0]);
      *&v53[8] = vmulq_f64(v40, xmmword_299053BE0);
      *&v53[24] = vmulq_f64(vcvtq_f64_s64(v39), xmmword_299053BF0);
      *&v53[40] = vmulq_f64(v41, xmmword_299053C00);
      *&v53[56] = SLOWORD(v51[2]) * 0.0000958737992;
      *&v54 = vcvtd_n_f64_s32(SWORD1(v51[2]), 0x12uLL);
      WORD4(v54) = WORD2(v51[2]);
      BYTE10(v54) = BYTE6(v51[2]);
      *v53 = *(a4 + 36 * v28 + 16256);
      if (!*v53)
      {
        goto LABEL_62;
      }

      v43 = a6 + 192 * v27;
      GLON_RealAlm2RefState(v25, v50, v32, &v52, v43);
      EvVrb_v("GLON_RealAlm2RefState:  SchUd:  %d", v28 + 1);
      *(v43 + 160) = v33;
      *(v43 + 164) = v48;
      goto LABEL_61;
    }

LABEL_60:
    v44 = (a6 + 192 * v27);
    *(v44 + 175) = 0u;
    v44[9] = 0u;
    v44[10] = 0u;
    v44[7] = 0u;
    v44[8] = 0u;
    v44[5] = 0u;
    v44[6] = 0u;
    v44[3] = 0u;
    v44[4] = 0u;
    v44[1] = 0u;
    v44[2] = 0u;
    *v44 = 0u;
LABEL_61:
    *(a6 + v28 + 37824) = 0;
    goto LABEL_62;
  }

  v36 = *(v9 + 200);
  if (v36 > 299)
  {
    EvLog_v("GLON_StUd:  Delay SchUd:  %d  RK_Loops %d", v27 + 1, v36);
  }

  else
  {
    v47 = v35;
    v49 = (*(a3 + 84) + (v22 > 86399));
    v52 = 0;
    *v53 = 0;
    *&v53[5] = 0;
    memset(&v53[16], 0, 48);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    memset(v51, 0, 62);
    GLON_EphBin2Int(a4 + (v28 << 6) + 11928, v51, 0);
    GLON_EphInt2Real(v51, &v52);
    v46 = v27;
    v37 = a6 + 192 * v27;
    GLON_Calc_State_Table_Eph(v25, v49, v32, &v52, v37, v9 + 200);
    EvVrb_v("GLON_Calc_State_Table_Eph:  SchUd:  %d", v28 + 1);
    if (*(*(a4 + 17176) + v28) != 1 || GLON_Cross_Check_SVRS_vs_EE(v25, v49, v32, v37, a4 + 116 * v28 + 13464))
    {
      v38 = a6 + 192 * v46;
      *(v38 + 160) = v33;
      *(v38 + 164) = v47;
      goto LABEL_61;
    }

    *(*(a4 + 17224) + v28) = 1;
    *(a6 + 192 * v46 + 176) = 0;
    *(*(a4 + 17168) + v28) = 0;
    *(*(a4 + 17160) + v28) = 1;
  }

LABEL_62:
  result = GLON_Leap_Second_Updates(a3, a4, a6);
LABEL_63:
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GLON_Cross_Check_SVRS_vs_EE(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x29EDCA608];
  v37 = 0.0;
  API_Get_UTC_Cor(1, &v37);
  v36 = 0;
  v35 = 0.0;
  v34 = 0;
  Glon_To_GPS_Time(a1, a2, a3, v37, &v34, &v36, &v35);
  v10 = v36 + (v34 << 10);
  v11 = -0.5;
  if (v35 > 0.0)
  {
    v11 = 0.5;
  }

  v12 = v35 + v11;
  if (v35 + v11 <= 2147483650.0)
  {
    if (v12 >= -2147483650.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x80000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  Get_GPS_Kep_Ephemeris(*(a4 + 184), *(a4 + 188), a5, v19);
  v14 = v10;
  v15 = 1;
  v16 = Kep_Check_Ephemeris(v14, v13, 1, v19);
  if (ST_Check_Eph_Kep_Err("GLON_Cross_Check_SVRS_vs_EE", v16, v19))
  {
    memset(v38, 0, 191);
    Kep_Calc_SV_Ref_State(1, v14, v13, v19, v38);
    v15 = ST_Cross_Check_SVRS_vs_SVRS(a4, v38);
  }

  v17 = *MEMORY[0x29EDCA608];
  return v15;
}

void Hal_HandleGenericMEEvent(unsigned __int8 *a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_15;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
LABEL_11:
    v5 = 1;
LABEL_14:
    gnssOsa_PrintLog(__str, v5, 1, 0);
    goto LABEL_15;
  }

  if (!a2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_15;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
    goto LABEL_11;
  }

  if (*(a1 + 4) != 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Incorrect ME event data %d\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 87, "Hal_HandleGenericMEEvent", *(a1 + 4));
      v5 = 2;
      goto LABEL_14;
    }

LABEL_15:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  v3 = *MEMORY[0x29EDCA608];
  v4 = a1 + 12;

  Hal_ProcessFTAAnalyticsData(v4);
}

uint64_t Hal11_HandleEvent(int a1, unsigned __int8 *a2, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a1 == 76)
  {
    if (a2[8] != 1 || g_LbsOsaTrace_Config < 3)
    {
      goto LABEL_52;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: L5_Tuner_Stats_event : METTick %u, BestDuration %2.1f, Normal %2.1f, Worst %2.1f, Not-Known %2.1f\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 77, "Hal_HandleMEStatusMsg", *(a2 + 3), vcvtd_n_f64_u32(*(a2 + 8), 8uLL), vcvtd_n_f64_u32(*(a2 + 9), 8uLL), vcvtd_n_f64_u32(*(a2 + 10), 8uLL), vcvtd_n_f64_u32(*(a2 + 11), 8uLL));
    v10 = 1;
    v11 = 3;
    goto LABEL_24;
  }

  if (a1 == 84)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = a2[8];
        if (v5 > 0x4C)
        {
          if (a2[8] > 0x56u)
          {
            if (v5 == 87)
            {
              if (g_LbsOsaTrace_Config)
              {
                bzero(__str, 0x3C6uLL);
                v17 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MECpu\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 69, "Hal11_HandleCPStatusMsg", 1300);
                v7 = 1;
                gnssOsa_PrintLog(__str, 1, 1, 0);
              }

              else
              {
                v7 = 1;
              }

LABEL_50:
              if (g_HalCallbacks)
              {
                g_HalCallbacks(v7);
              }

              goto LABEL_52;
            }

            if (v5 == 119)
            {
              if (g_LbsOsaTrace_Config)
              {
                bzero(__str, 0x3C6uLL);
                v13 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CpCpu\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "Hal11_HandleCPStatusMsg", 1300);
                gnssOsa_PrintLog(__str, 1, 1, 0);
              }

              v7 = 2;
              goto LABEL_50;
            }
          }

          else
          {
            if (v5 == 77)
            {
              if (g_LbsOsaTrace_Config >= 3)
              {
                bzero(__str, 0x3C6uLL);
                v16 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MESlp Event\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 77, "Hal11_HandleCPStatusMsg");
                gnssOsa_PrintLog(__str, 3, 1, 0);
              }

              usleep(0x2710u);
              Hal_ReportFTAAnalyticsData();
              v7 = 6;
              goto LABEL_50;
            }

            if (v5 == 84)
            {
              if (g_LbsOsaTrace_Config)
              {
                bzero(__str, 0x3C6uLL);
                v6 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 69, "Hal11_HandleCPStatusMsg", 1320);
                gnssOsa_PrintLog(__str, 1, 1, 0);
              }

              v7 = 7;
              goto LABEL_50;
            }
          }

LABEL_38:
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v15 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx msgId,%c,len,%u\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal11_HandleCPStatusMsg", 515, a2[8], a3);
            gnssOsa_PrintLog(__str, 1, 1, 0);
          }

          v7 = 0;
          goto LABEL_50;
        }

        if (v5 != 32)
        {
          if (v5 == 71)
          {
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v18 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 69, "Hal11_HandleCPStatusMsg", 1302);
              gnssOsa_PrintLog(__str, 1, 1, 0);
            }

            v7 = 3;
            goto LABEL_50;
          }

          if (v5 == 72)
          {
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v12 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HWErr\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal11_HandleCPStatusMsg", 1302);
              gnssOsa_PrintLog(__str, 1, 1, 0);
            }

            v7 = 4;
            goto LABEL_50;
          }

          goto LABEL_38;
        }

        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v14 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HWStatusOK\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 73, "Hal11_HandleCPStatusMsg");
          v10 = 1;
          v11 = 4;
          goto LABEL_24;
        }

LABEL_52:
        v10 = 1;
        goto LABEL_53;
      }

      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_52;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
    }

    else
    {
      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_52;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
    }

    v10 = 1;
    v11 = 1;
LABEL_24:
    gnssOsa_PrintLog(__str, v11, 1, 0);
    goto LABEL_53;
  }

  v10 = 0;
LABEL_53:
  v19 = *MEMORY[0x29EDCA608];
  return v10;
}

double GAL_EphInt2Real(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = 60 * *(a1 + 18);
  v2 = *(a1 + 20);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  *&v4.f64[0] = *&vcvtq_f64_s64(v3);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4.f64[1] = vcvtq_f64_u64(v3).f64[1];
  *(a2 + 24) = vmulq_f64(v4, xmmword_299053C10);
  v5 = *(a1 + 28);
  v3.i64[0] = v5;
  v3.i64[1] = HIDWORD(v5);
  *&v4.f64[0] = *&vcvtq_f64_u64(v3);
  v3.i64[0] = v5;
  v3.i64[1] = SHIDWORD(v5);
  v4.f64[1] = vcvtq_f64_s64(*&v3).f64[1];
  *(a2 + 40) = vmulq_f64(v4, xmmword_299053C20);
  v6 = *(a1 + 36);
  v3.i64[0] = v6;
  v3.i64[1] = SHIDWORD(v6);
  v7.f64[0] = *(a1 + 44);
  v7.f64[1] = *(a1 + 48);
  *(a2 + 56) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3E1921FB54442D28uLL));
  *(a2 + 72) = vmulq_f64(v7, vdupq_n_s64(0x3D5921FB54442D28uLL));
  v8 = vmovl_s16(*(a1 + 50));
  v3.i64[0] = v8.i32[2];
  v3.i64[1] = v8.i32[3];
  v9 = vcvtq_f64_s64(v3);
  v3.i64[0] = v8.i32[0];
  v3.i64[1] = v8.i32[1];
  *(a2 + 104) = vmulq_f64(v9, xmmword_299052900);
  *(a2 + 88) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_2990528F0);
  v9.f64[0] = vcvtd_n_f64_s32(*(a1 + 60), 0x1DuLL);
  *(a2 + 120) = vcvtd_n_f64_s32(*(a1 + 58), 5uLL);
  *(a2 + 128) = v9.f64[0];
  *(a2 + 136) = vcvtd_n_f64_s32(*(a1 + 62), 0x1DuLL);
  *(a2 + 144) = 60 * *(a1 + 74);
  v8.i64[0] = *(a1 + 64);
  v3.i64[0] = v8.i32[0];
  v3.i64[1] = v8.i32[1];
  v9.f64[0] = *(a1 + 72);
  *(a2 + 152) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299053C30);
  v7.f64[0] = vcvtd_n_f64_s32(*(a1 + 76), 0x20uLL);
  *(a2 + 168) = v9.f64[0] * 1.73472348e-18;
  *(a2 + 176) = v7.f64[0];
  result = vcvtd_n_f64_s32(*(a1 + 78), 0x20uLL);
  *(a2 + 184) = result;
  *(a2 + 194) = *(a1 + 16);
  *(a2 + 196) = *(a1 + 81);
  *(a2 + 200) = *(a1 + 85);
  *(a2 + 201) = *(a1 + 86);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

const void **Nav_Kalman_Update_Wrapper(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  GNSS_Validate_p_list(a1, "Nav_Kalman_Update_Wrapper: Entry");
  Nav_Kalman_Update(*(a1 + 136), *(a1 + 176), *(a1 + 208), *(a1 + 96), *(a1 + 32), *(a1 + 88), *(a1 + 56), *(a1 + 40), *(a1 + 112), *(a1 + 80), *(a1 + 72), *(a1 + 64), *(a1 + 48));
  v2 = *MEMORY[0x29EDCA608];

  return GNSS_Validate_p_list(a1, "Nav_Kalman_Update_Wrapper:  Exit");
}

void Hal_Init(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config <= 3)
  {
    g_HalCallbacks = 0;
    *algn_2A13EC4B8 = 0;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_Init");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    g_HalCallbacks = 0;
    *algn_2A13EC4B8 = 0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 73, "Hal_Init");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v2 = *MEMORY[0x29EDCA608];
}

void Hal_DeInit(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_DeInit");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v1 = gnssOsa_Calloc("Hal_DeInit", 70, 1, 0x18uLL);
  if (v1)
  {
    v1[2] = 0;
    AgpsSendFsmMsg(129, 129, 8454656, v1);
    g_HalCallbacks = 0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_DeInit");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

void Hal_DestMissingHandler(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_DestMissingHandler", *(a1 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (*(a1 + 4) == 8455424)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      free(v3);
    }

    *(a1 + 16) = 0;
  }

  else if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal_DestMissingHandler", *(a1 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t Hal00_03DefaultMsgHandler()
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 69, "Hal00_03DefaultMsgHandler", 519);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v1 = *MEMORY[0x29EDCA608];
  return 0;
}

void Hal_StartConn(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal_StartConn");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a2)
  {
    v5 = gnssOsa_Calloc("Hal_StartConn", 124, 1, 0x20uLL);
    if (v5)
    {
      v5[2] = a2;
      *(v5 + 6) = a1;
      AgpsSendFsmMsg(129, 129, 8454144, v5);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal_StartConn");
        v7 = 4;
LABEL_9:
        gnssOsa_PrintLog(__str, v7, 1, 0);
      }
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 69, "Hal_StartConn", 516);
    v7 = 1;
    goto LABEL_9;
  }

  v9 = *MEMORY[0x29EDCA608];
}

void Hal_StopConn(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_StopConn");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = gnssOsa_Calloc("Hal_StopConn", 149, 1, 0x18uLL);
  if (v3)
  {
    v3[2] = a1;
    AgpsSendFsmMsg(129, 129, 8454656, v3);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal_StopConn");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

void Hal00_06ReadBufNtf(size_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_13;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
LABEL_12:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    goto LABEL_13;
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_13;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_12;
  }

  v4 = gnssOsa_Calloc("Hal00_06ReadBufNtf", 182, 1, 0x20uLL);
  if (!v4)
  {
LABEL_13:
    v8 = *MEMORY[0x29EDCA608];
    return;
  }

  v5 = v4;
  v6 = gnssOsa_Calloc("Hal00_06ReadBufNtf", 188, 1, a1);
  v5[2] = v6;
  if (v6)
  {
    memcpy_s("Hal00_06ReadBufNtf", 195, v6, a1, a2, a1);
    *(v5 + 12) = a1;
    v7 = *MEMORY[0x29EDCA608];

    AgpsSendFsmMsg(129, 129, 8455424, v5);
  }

  else
  {
    v9 = *MEMORY[0x29EDCA608];

    free(v5);
  }
}

void Hal_GnssBaseBandReset(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Hal_GnssBaseBandReset", 242, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 3) = a1;
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((a1 - 1) > 9)
      {
        v5 = "Unknown reason for triggering trap";
      }

      else
      {
        v5 = off_29EF06650[a1 - 1];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS SW triggered #Trap: %s\n", v4, "HAL", 69, "Hal_GnssBaseBandReset", v5);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    AgpsSendFsmMsg(129, 129, 8454912, v3);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void Hal_SetPowerReportStatus(char a1, void (*a2)(BOOL), void (*a3)(double, double, double, double))
{
  v9 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("Hal_SetPowerReportStatus", 267, 1, 0x20uLL);
  if (v6)
  {
    v6[2] = a2;
    v6[3] = a3;
    *(v6 + 12) = a1;
    v7 = *MEMORY[0x29EDCA608];

    AgpsSendFsmMsg(129, 129, 8457216, v6);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

uint64_t Hal_TriggerTimeMarkPulse(void (*a1)(unsigned int, BOOL))
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_TriggerTimeMarkPulse");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    result = gnssOsa_Calloc("Hal_TriggerTimeMarkPulse", 294, 1, 0x18uLL);
    if (result)
    {
      *(result + 16) = a1;
      AgpsSendFsmMsg(129, 129, 8457472, result);
      result = 1;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal_TriggerTimeMarkPulse", 516);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal_WakeUp_GNSS(void (*a1)(BOOL))
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_WakeUp_GNSS");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    result = gnssOsa_Calloc("Hal_WakeUp_GNSS", 320, 1, 0x18uLL);
    if (result)
    {
      *(result + 16) = a1;
      AgpsSendFsmMsg(129, 129, 8457984, result);
      result = 1;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal_WakeUp_GNSS", 516);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal_GNSS_SessionStart(void)
{
  v0 = 0;
  v17 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  *v9 = 0x7F00774D7942787ALL;
  v9[8] = 0;
  v1 = byte_2A13C3B6A;
  *(&v10 + 7) = byte_2A13C3B6A;
  for (i = 8; i != 125; ++i)
  {
    v0 += v9[i];
  }

  *(&v10 + 1) = v0;
  v16[22] = 10;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v4 = 89;
    if (byte_2A13C3B6B)
    {
      v5 = 89;
    }

    else
    {
      v5 = 78;
    }

    if (!v1)
    {
      v4 = 78;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS session start, CD_NO_PE_DATA,%c, FTA_Log,%c, ProxyCD,%c\n", v3, "HAL", 73, "Hal_GNSS_SessionStart", 78, v4, v5);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  Hal00_06ReadBufNtf(0x80uLL, v9);
  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t Hal_SendData(unsigned __int8 *a1, size_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
LABEL_8:
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  Hal00_06ReadBufNtf(a2, a1);
  result = 1;
LABEL_10:
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal_GNSS_SessionStop(__int16 a1)
{
  v12 = *MEMORY[0x29EDCA608];
  Hal_GetMEAnalyticsData();
  v2 = 0;
  v11 = 0;
  v10 = 0;
  v6 = 0xE0009507342787ALL;
  v7 = 0;
  v8 = a1;
  v9 = 0;
  for (i = 8; i != 15; ++i)
  {
    v2 += *(&v6 + i);
  }

  v10 = v2;
  v11 = 10;
  Hal00_06ReadBufNtf(0x12uLL, &v6);
  v4 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t Hal_SendAidingData(unsigned __int8 *a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v12 = *MEMORY[0x29EDCA608];
  if (v2 < 0x7F8)
  {
    v6 = v1;
    bzero(v11, 0xFF8uLL);
    qmemcpy(__str, "zxMmM", sizeof(__str));
    v9 = v3;
    v10 = v3 + BYTE1(v3) + 7;
    memcpy_s("Hal_SendAidingData", 494, v11, 0x1000u, v6, v3);
    v11[v3] = 10;
    result = Hal_SendData(__str, (v3 + 9));
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: size of payload (%d) > MaxPayload (%d)\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal_SendAidingData", v3, 2039);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    result = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal_SendNoFirmwareNVData(unsigned __int8 a1)
{
  v7 = *MEMORY[0x29EDCA608];
  *v5 = 0x1600034D6E58787ALL;
  v5[8] = a1;
  v5[9] = a1;
  v6 = 2560;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: zxXnM No GNSS FW NV data\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 73, "Hal_SendNoFirmwareNVData");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  Hal00_06ReadBufNtf(0xCuLL, v5);
  v2 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t Hal_SendFirmwareNVData(unsigned __int8 *a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v2;
  *&v27[4085] = *MEMORY[0x29EDCA608];
  v5 = (v2 + 5);
  if (v5 >= 0xFF8)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: size of payload (%d) > MaxPayload (%d)\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 87, "Hal_SendFirmwareNVData", v4, 4087);
      v7 = __str;
      v8 = 2;
LABEL_13:
      gnssOsa_PrintLog(v7, v8, 1, 0);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v9 = v3;
  v10 = v1;
  v11 = v2 + 14;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s:  Nv Size %d, payload len ,%d, pkt size %d\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 73, "Hal_SendFirmwareNVData", v4, v5, v11);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  bzero(v26, 0xFF8uLL);
  qmemcpy(__str, "zxXvM", sizeof(__str));
  v24 = v5;
  v25 = v5 + BYTE1(v5) + 27;
  v26[1] = v9;
  memcpy_s("Hal_SendFirmwareNVData", 589, v27, 0xFF5u, v10, v4);
  if (!v5)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: Error payload checksum\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 69, "Hal_SendFirmwareNVData");
      v7 = __s;
      v8 = 1;
      goto LABEL_13;
    }

LABEL_14:
    result = 0;
    goto LABEL_19;
  }

  v13 = 0;
  v14 = 8;
  v15 = v5;
  do
  {
    v13 += __str[v14++];
    --v15;
  }

  while (v15);
  v16 = &__str[v11];
  *(v16 - 3) = v13;
  *(v16 - 1) = 10;
  if (v9 == 255)
  {
    v17 = *&__s[v11 + 961];
  }

  else
  {
    v17 = 0;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__s, 0x3C6uLL);
    v20 = mach_continuous_time();
    snprintf(__s, 0x3C5uLL, "%10u %s%c %s: zxXvM payload size,%u, blockNum,%u, packet size,%u,NVChecksum,%u\n", (*&g_MacClockTicksToMsRelation * v20), "HAL", 73, "Hal_SendFirmwareNVData", v5, v9, v11, v17);
    gnssOsa_PrintLog(__s, 4, 1, 0);
  }

  result = Hal_SendData(__str, v11);
LABEL_19:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AscToU1(uint64_t result, unsigned __int8 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  if (result)
  {
    v2 = *result;
    if ((v2 - 48) > 9)
    {
      if ((v2 - 65) > 5 && (v2 - 97) > 5)
      {
        goto LABEL_13;
      }

      v3 = 16 * v2 - 112;
    }

    else
    {
      v3 = 16 * v2;
    }

    *a2 = v3;
    v4 = *(result + 1);
    v5 = v4 - 48;
    if ((v4 - 48) < 0xA)
    {
LABEL_12:
      *a2 = v5 + v3;
      result = 1;
      goto LABEL_14;
    }

    if ((v4 - 65) <= 5)
    {
      v5 = v4 - 55;
      goto LABEL_12;
    }

    if ((v4 - 97) <= 5)
    {
      v5 = v4 - 87;
      goto LABEL_12;
    }

LABEL_13:
    result = 0;
  }

LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GM_Adjust_AAD(unsigned int a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v34 = *MEMORY[0x29EDCA608];
  if (((a2 & a1 & 0x80000000) != 0) == v5 && ((a1 & 0x80000000) != 0 || *(a5 + 48 * a1 + 4)) && ((a2 & 0x80000000) != 0 || *(a5 + 48 * a2 + 4)))
  {
    if ((a1 & 0x80000000) != 0)
    {
      v22 = a3 + 56 * a2;
      v23 = *(v22 + 16);
      v32[0] = *v22;
      v32[1] = v23;
      v32[2] = *(v22 + 32);
      v33 = *(v22 + 48);
      v24 = a5 + 48 * a2;
      GM_Aid_NSSS_Meas(v24, 0, v32);
      v10 = WORD4(v32[0]) - *(v24 + 36);
      v13 = DWORD1(v32[0]) - *(v24 + 32);
      v14 = LODWORD(v32[0]) - *(v24 + 28);
    }

    else
    {
      v8 = (a3 + 56 * a1);
      v9 = a5 + 48 * a1;
      v10 = *(v8 + 4) - *(v9 + 36);
      v11 = *v8;
      v12 = *(v9 + 28);
      v13 = v8[1] - *(v9 + 32);
      v14 = v11 - v12;
      if (v11 - v12 >= 201601)
      {
        if (v14 >= 0x93A80)
        {
          v14 = 604800;
        }

        v15 = v12 + 403200 * ((v11 + 403200 + ~(v12 + v14)) / 0x62700);
        v14 = v11 - 403200 - v15;
        v12 = v15 + 403200;
        *(v9 + 28) = v12;
      }

      if (v14 <= -201601)
      {
        v16 = -604800 - v14;
        if (v14 > 0xFFF6C580)
        {
          v16 = 0;
        }

        v17 = ((__PAIR64__(v16, v14) - 4294362496u) >> 32) / 0x62700;
        if (v14 < 0xFFF6C580)
        {
          ++v17;
        }

        v18 = 403200 * v17;
        v14 += 403200 + v18;
        *(v9 + 28) = v12 - 403200 - v18;
      }
    }

    v25 = v13 + 1534500 * v14;
    if (v10 >= -32768)
    {
      v26 = 0;
    }

    else
    {
      v26 = -1;
    }

    if (v10 >= 0x8000)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    v19 = v25 + v27;
    if (v25 + v27)
    {
      v28 = (a4 - 1);
      if (a4 - 1 >= 0)
      {
        v29 = v28 + 1;
        v30 = (a5 + 48 * v28 + 28);
        do
        {
          if (*(v30 - 24) == 1)
          {
            Inc_CA_Chips(v19, v30 + 1, v30);
          }

          v30 -= 12;
        }

        while (v29-- > 1);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t Kep_Check_Ephemeris(int a1, int a2, int a3, uint64_t a4)
{
  v45 = *MEMORY[0x29EDCA608];
  v4 = *(a4 + 8);
  v5 = *(a4 + 22);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (v5 != 1356)
      {
        goto LABEL_21;
      }
    }

    else if (v4 != 5 || v5 != 0)
    {
      goto LABEL_21;
    }
  }

  else if (v4 == 1)
  {
    if (*(a4 + 22))
    {
      goto LABEL_21;
    }
  }

  else if (v4 != 3 || v5 != 1024)
  {
    goto LABEL_21;
  }

  *(a4 + 22) = a1;
  v7 = a2 - *(a4 + 24);
  if (v7 <= 302399)
  {
    LOWORD(v5) = a1;
    if (v7 >= -302400)
    {
      goto LABEL_21;
    }

    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  LOWORD(v5) = v8 + a1;
  *(a4 + 22) = v5;
LABEL_21:
  if (a1 - 512 <= v5)
  {
    v9 = v5;
  }

  else
  {
    do
    {
      LOWORD(v5) = v5 + 1024;
    }

    while (a1 - 512 > v5);
    v9 = v5;
    *(a4 + 22) = v5;
  }

  v10 = -604800;
  v11 = *(a4 + 24);
  v12 = v11 + 604800 * v9;
  v13 = a2 + 604800 * a1 - v12;
  if (v13 <= 302399)
  {
    if (v13 >= -302400)
    {
      goto LABEL_30;
    }

    v14 = -1;
    v15 = -604800;
    v10 = 604800;
  }

  else
  {
    v14 = 1;
    v15 = 604800;
  }

  *(a4 + 22) = v14 + v5;
  v12 += v15;
  v13 += v10;
LABEL_30:
  v16 = v12 - *a4;
  if (v16 < 0)
  {
    v16 = -v16;
  }

  v17 = v16 > 0xA8C0;
  if (*a4)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a4 + 18);
  v20 = 1800 * v19;
  v21 = 3600 * v19;
  if (((1 << v4) & 0x58) == 0)
  {
    v21 = v20;
  }

  if (v4 > 6)
  {
    v21 = v20;
  }

  if ((*(a4 + 4) & 0xFFFFFFFE) == 4)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (a3)
  {
    v22 += 3600;
  }

  if (v13 < 0)
  {
    v13 = -v13;
  }

  if (v13 > v22)
  {
    v18 |= 2u;
  }

  v23 = v18 | (4 * (v11 >> 31));
  if (v11 > 604799)
  {
    v23 |= 8u;
  }

  v24 = *(a4 + 28);
  v25 = v23 | (16 * (v24 >> 31));
  v26 = v25 | 0x20;
  if (v24 <= 604799)
  {
    v26 = v25;
  }

  v27 = *(a4 + 12);
  v28 = v4 & 0xFFFFFFFE;
  if ((v4 & 0xFFFFFFFE) == 6 || (v29 = 4800.0, v4 == 4) && (v27 - 59) <= 0xCAu)
  {
    v29 = *"";
  }

  if (v4 == 5)
  {
    goto LABEL_59;
  }

  if (v4 == 4)
  {
    if ((v27 - 6) < 0x35)
    {
LABEL_59:
      v30 = *(a4 + 184);
      if (v30 < v29)
      {
        v26 |= 0x40u;
      }

      if (v30 > 7000.0)
      {
        v26 |= 0x80u;
      }

LABEL_63:
      v31 = 0.1;
      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if (v28 == 6)
  {
LABEL_73:
    v34 = 6700.0;
    goto LABEL_77;
  }

  v34 = 5800.0;
LABEL_77:
  v35 = *(a4 + 184);
  if (v35 < v29)
  {
    v26 |= 0x40u;
  }

  if (v35 > v34)
  {
    v26 |= 0x80u;
  }

  if (v4 == 3)
  {
    v38 = 0.03;
    if (((v27 - 14) & 0xFB) == 0)
    {
      v38 = 0.25;
    }

    v39 = *(a4 + 224);
    v40 = v26 | 0x100;
    if (v39 >= 0.0)
    {
      v40 = v26;
    }

    if (v39 <= v38)
    {
      v26 = v40;
    }

    else
    {
      v26 = v40 | 0x200;
    }

    v33 = 0.0;
    goto LABEL_98;
  }

  if (v4 == 4)
  {
    if ((v27 - 6) >= 0x35)
    {
      v36 = *(a4 + 224);
      v37 = v26 | 0x100;
      if (v36 >= 0.0)
      {
        v37 = v26;
      }

      if (v36 <= 0.03)
      {
        v26 = v37;
      }

      else
      {
        v26 = v37 | 0x200;
      }

      goto LABEL_89;
    }

    goto LABEL_63;
  }

  v31 = 0.03;
LABEL_64:
  v32 = *(a4 + 224);
  if (v32 < 0.0)
  {
    v26 |= 0x100u;
  }

  if (v32 > v31)
  {
    v26 |= 0x200u;
  }

  v33 = 0.000000314159265;
  if (v4 != 5)
  {
    if (v4 == 4)
    {
      if ((v27 - 6) < 0x35)
      {
        goto LABEL_98;
      }

LABEL_89:
      v33 = 0.000000314159265;
      goto LABEL_98;
    }

    v33 = 0.0;
    if (v28 == 6)
    {
      goto LABEL_89;
    }
  }

LABEL_98:
  v41 = *(a4 + 232);
  v42 = v26 | 0x400;
  if (v41 >= -0.00000198862815)
  {
    v42 = v26;
  }

  if (v41 <= v33)
  {
    result = v42;
  }

  else
  {
    result = v42 | 0x800;
  }

  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SBAS_Set_StateTable(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  v20 = *MEMORY[0x29EDCA608];
  v6 = &unk_2A14117B0;
  v7 = 179;
  v8 = "SBAS_Set_StateTable:  Replacing Eph,  SV %d  IOD %d  idx %d";
  while (v6[44] != 1 || *(v6 + 188) != a1)
  {
    ++v7;
    v6 += 48;
    if (v7 == 197)
    {
      v6 = &unk_2A14117B0;
      v7 = 179;
      v8 = "SBAS_Set_StateTable:  New Eph,  SV %d  IOD %d  idx %d";
      while (v6[44])
      {
        ++v7;
        v6 += 48;
        if (v7 == 197)
        {
          EvCrt_v("SBAS_Set_StateTable:  Failed to find space to store Eph,  SV %d  IOD &d", a1);
          v9 = 0;
          goto LABEL_11;
        }
      }

      break;
    }
  }

  EvLog_v(v8, a1, a2, (v7 - 179));
  *(v14[0].n128_u64 + 5) = 0;
  v14[0].n128_u64[0] = 0;
  v14[1] = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  SBAS_EphInt2Real(a3, v14);
  SBAS_Eph2RefState(v14, a1, word_2A13F9918, *&qword_2A13F9920, v6);
  *v12 = vmovn_s64(vcvtq_s64_f64(v15));
  v13 = *&v16;
  v9 = Core_Save_SBAS_Apx(a1, 0, *a3, v12);
  if ((v9 & 1) == 0)
  {
    EvCrt_v("SBAS_Set_StateTable:  Core_Save_SBAS_Apx() Failed,  SV %d  IOD %d", a1, v4);
  }

LABEL_11:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

char *NK_Range_Chip_Check(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 241) & 1) != 0 || *(a3 + 1872) != 1 || *(a3 + 62096) >= 48.8420427 || *(a3 + 20) != 11)
  {
    goto LABEL_32;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (a3 + 12072);
  v10 = a3 + 7080;
  v26 = result + 9184;
  v25 = result + 8928;
  memset(v27, 0, sizeof(v27));
  do
  {
    if (fabs(*v9) <= 586.104512)
    {
      v8 += *(v10 + v6);
      goto LABEL_23;
    }

    if (*(v10 + v6))
    {
      v11 = v9[672];
      if (v11 < 21469.9062)
      {
        v12 = *&v25[2 * v6] * v26[v6];
        v13 = 10 * *&v5[2 * v6 + 2400];
        if (v13 / v12 >= 6)
        {
          *(v27 + v6) = 1;
          ++v7;
          GNSS_SV_Str = Get_GNSS_SV_Str(*&v5[4 * v6 + 96]);
          if (*v9 <= 0.0)
          {
            v15 = -0.5;
          }

          else
          {
            v15 = 0.5;
          }

          v16 = *v9 + v15;
          v17 = v16;
          if (v16 < -2147483650.0)
          {
            v17 = 0x80000000;
          }

          if (v16 > 2147483650.0)
          {
            v17 = 0x7FFFFFFF;
          }

          result = EvCrt_v("Potential ChanReset %d : NKRCC  %s  Bad Chip:  PR_Res %d  IntegrationTime %d  CodeLock %d  LoopClosures %d  SNR %d", v6, GNSS_SV_Str, v17, v12, v13, v13 / v12, v5[v6 + 1760]);
          goto LABEL_23;
        }
      }
    }

    else
    {
      v11 = v9[672];
    }

    v18 = *v9 * 0.5 * (*v9 * 0.5);
    if (v11 > v18)
    {
      v18 = v11;
    }

    v9[672] = v18;
LABEL_23:
    ++v6;
    ++v9;
  }

  while (v6 != 128);
  if (v7 >= 1)
  {
    if (v7 > 4)
    {
      result = EvCrt_v("Skipping above ChanResets:  %d large & %d small (probably clock bias adjustment)", v7, v8);
    }

    else
    {
      result = EvCrt_v("Applying above ChanResets to %d channels, with %d not reset", v7, v8);
      v19 = 0;
      v20 = a3 + 7336;
      do
      {
        if (*(v27 + v19) == 1)
        {
          *(v20 + 4 * v19) = 14;
          v21 = *(a3 + 6772);
          *(v20 + v19 - 256) = 0;
          *(a3 + 6772) = v21 + 1;
          *(a2 + 14208 + v19) = 0;
          *(a4 + v19 + 448) = 9;
          *(a4 + 576 + 4 * v19) = *a3;
        }

        ++v19;
      }

      while (v19 != 128);
    }
  }

LABEL_32:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Comp_PR_DO_Res(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a2;
  v168 = *MEMORY[0x29EDCA608];
  v14 = a8 + 59956;
  if (*(a4 + 1852) == 1 && fabs(*(a4 + 112)) < 2.5 && *(a8 + 62300) == 1 && *v14 <= 7u)
  {
    v116 = 0xF4u >> *v14;
  }

  else
  {
    LOBYTE(v116) = 0;
  }

  v122 = 0;
  v137 = 0.0;
  v15 = (a7 + 1712);
  v16 = (a7 + 1720);
  *(a7 + 1712) = 0;
  *(a7 + 1728) = 0;
  *(a7 + 1720) = 0;
  v17 = *(a8 + 1720) - *(a8 + 1728);
  v18 = *(a8 + 1704) * 57.2957795;
  v136 = 0;
  v19 = *(a7 + 1704);
  v123 = a8 + 59956;
  if (v19 == 2)
  {
    goto LABEL_15;
  }

  if (v19 == 1)
  {
    v21 = (a7 + 1728);
    if (*(a8 + 1540) == 1)
    {
      GPS_To_UTC_DOY(&v136, *(a8 + 1542), *(a8 + 1528), *(a3 + 62376));
      v22 = v136;
    }

    else
    {
      v22 = 0;
    }

    v122 = v22;
    if (UNB_TropModel::Get_Zenith_Delays_Meter((a7 + 1736), v17, v18, v22, v16, v21))
    {
      *v15 = *v16 + *v21;
      v12 = a2;
      v14 = v123;
      goto LABEL_16;
    }

    v12 = a2;
    v14 = v123;
LABEL_15:
    v23 = Zen_Trop_Delay_STANAG_4294(v17);
    *v15 = v23;
    *v16 = v23;
  }

LABEL_16:
  v110 = a3;
  v158 = 0;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  memset(v151, 0, sizeof(v151));
  v159[0] = 0;
  *(v159 + 3) = 0;
  VecSortDscU1(a1 + 1760, 0x80u, v160);
  v24 = v165;
  *(a8 + 79737) = v164;
  *(a8 + 79753) = v24;
  v25 = v167;
  *(a8 + 79769) = v166;
  *(a8 + 79785) = v25;
  v26 = v161;
  *(a8 + 79673) = *v160;
  *(a8 + 79689) = v26;
  v27 = v163;
  *(a8 + 79705) = v162;
  *(a8 + 79721) = v27;
  *(v14 + 3908) = Is_SH_Iono_Model_Valid(*(a8 + 26), a5, (v14 + 3912), *(a8 + 32));
  v28 = *(v14 + 3912);
  if (v28 >= 7201)
  {
    EvLog_v("NK_Comp_PR_DO_Meas:  Clearing old SH_Iono_Model data,  Age %d mins, RefTime %d %d", v28 / 0x3Cu, *(a5 + 4), *a5);
    bzero(*(p_api + 112), 0x2540uLL);
    *(v14 + 3908) = 0;
    *(v14 + 3912) = -604800;
  }

  v105 = a5;
  v29 = 0;
  v132 = a7 + 15624;
  v130 = a7 + 16648;
  v129 = a7 + 16136;
  v128 = a7 + 16904;
  v126 = a8 + 52632;
  v127 = a7 + 12160;
  v115 = a6 + 9376;
  v131 = a8 + 6952;
  v108 = a7 + 12672;
  v111 = a7 + 14208;
  v109 = a7 + 13184;
  v120 = a1 + 4448;
  v106 = a1 + 5472;
  v30 = a8 + 51480;
  v31 = 1575420000.0;
  v32 = -0.9;
  *&v33 = 900.0;
  v34 = 0.001;
  v121 = a7 + 21184;
  v35 = a7 + 17032;
  v36 = a7 + 18056;
  v37 = a1 + 96;
  v117 = a1;
  v118 = a6;
  v124 = a1 + 3424;
  v114 = a7 + 1920;
  v112 = a6 + 656;
  v113 = a6 + 218;
  do
  {
    v38 = v160[v29];
    v39 = (v37 + 4 * v38);
    if (*v39 == 7)
    {
      goto LABEL_44;
    }

    if (!Is_Legal(*v39) || *(a8 + 6824 + v38) != 1 || (*(a8 + 63020 + 2 * v38) & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    v40 = v12 + 192 * *(a8 + 63020 + 2 * v38);
    v41 = *(v40 + 144);
    v146 = *(v40 + 128);
    v147 = v41;
    v42 = *(v40 + 176);
    v148 = *(v40 + 160);
    v149 = v42;
    v43 = *(v40 + 80);
    v142 = *(v40 + 64);
    v143 = v43;
    v44 = *(v40 + 112);
    v144 = *(v40 + 96);
    v145 = v44;
    v45 = *(v40 + 16);
    v138 = *v40;
    v139 = v45;
    v46 = *(v40 + 48);
    v140 = *(v40 + 32);
    v141 = v46;
    if (v149 == 2)
    {
      if (*(a7 + 5) != 1)
      {
        goto LABEL_41;
      }

      v47 = *(a8 + 26);
      if (v47 - SWORD2(v148) > 2 || !*(a7 + 27136) && *(a8 + 1868) < 2)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v149 != 1)
      {
        goto LABEL_41;
      }

      LOWORD(v47) = *(a8 + 26);
    }

    v48 = Comp_CurrState(0x258u, v47, &v138, v151, *(a8 + 32), *(v124 + 8 * v38));
    v49 = v39[1];
    if (v49 > 0xF || ((1 << v49) & 0xDD77) == 0)
    {
      *(&v153 + 1) = *(&v153 + 1) - (*&v156 - *&v157);
    }

    if (v149 != 1)
    {
      if (!v48)
      {
        goto LABEL_41;
      }

LABEL_37:
      v135 = 0.0;
      if (*v39 == *(v132 + 4 * v38) && v158 == *(v130 + 2 * v38) && DWORD2(v157) == *(v129 + 4 * v38))
      {
        v50 = *(v128 + v38) ^ 1;
      }

      else
      {
        v50 = 1;
      }

      v100 = v36;
      v102 = v34;
      v107 = v12;
      *(v126 + v38) = v50 & 1;
      v119 = Comp_SVrange_Sag_Corr(&v138, &v135, (a8 + 1560), &v151[1]);
      v51 = 0;
      v52 = v138;
      v53 = (a8 + 1752);
      v54 = *&v139;
      do
      {
        v55 = *(v53 - 1) * v52.f64[1] + *(v53 - 2) * v52.f64[0];
        v56 = *v53;
        v53 += 3;
        v150[v51++] = v55 + v56 * v54;
      }

      while (v51 != 3);
      v57 = a7 + 7040 + 40 * v38;
      v58 = v114 + 40 * v38;
      AzEl_SinCos(v150, v57, v58);
      AzEl_RadDeg(v57, v58);
      *(v127 + 4 * v38) = *a8;
      v59 = GNSS_Id_To_Num_Prn_Idx(*v39);
      *(v113 + 2 * v59) = *v57;
      *(v118 + v59) = *v58;
      v60 = v115 + 40 * v59;
      v61 = *(v57 + 32);
      v62 = *(v57 + 16);
      *v60 = *v57;
      *(v60 + 16) = v62;
      *(v60 + 32) = v61;
      v63 = v112 + 40 * v59;
      v65 = *v58;
      v64 = *(v58 + 16);
      *(v63 + 32) = *(v58 + 32);
      *v63 = v65;
      *(v63 + 16) = v64;
      v134 = 0.0;
      v66 = 0.0;
      v103 = v58;
      if (*(a8 + 1864) == 1 && *(v58 + 32) > 0.0)
      {
        v36 = v100;
        if (*(v123 + 3908) == 1 && (Get_SH_Ionospheric_Delay((a8 + 1560), v151, v105, &v134, *(a8 + 32), v31) & 1) != 0)
        {
          v67 = 1;
        }

        else if (*(v110 + 8956))
        {
          v68 = GPS_Klob_Iono_Delay((a8 + 1704), v57, v103, (v110 + 8952), *(a8 + 32));
          v67 = 0;
          v134 = v68;
        }

        else
        {
          v67 = 0;
        }

        GPS_L1_Iono_Scale_factor(v39[1]);
        v66 = v69 * v134;
        v134 = v69 * v134;
      }

      else
      {
        v67 = 0;
        v36 = v100;
      }

      *(a8 + 78600 + 8 * v38) = v66;
      v133 = 0.0;
      if (R8_EQ(&v134, &v133))
      {
        v70 = v114 + 40 * v38;
        v71 = 25.0 / (*(v103 + 16) * v32 * *(v103 + 16) + 1.0);
        v72 = v122;
      }

      else
      {
        v73 = 0.1;
        if (!v67)
        {
          v73 = 0.25;
        }

        v71 = v73 * v66 * (v73 * v66);
        v72 = v122;
        v70 = v114 + 40 * v38;
      }

      *(v123 + 3909) |= v67;
      v74 = *v39;
      if (v74 == 6)
      {
        v78 = *(v110 + 50556);
        v76 = 0.0;
        v77 = *&v33;
        v12 = v107;
        if ((v78 - 2) <= 4)
        {
          v76 = *(a8 + 1504);
          v77 = 400.0;
          if (v78 != 2)
          {
            v77 = 25.0;
          }

          *(a7 + 15584) = v77;
        }
      }

      else
      {
        v12 = v107;
        if (v74 != 3)
        {
          goto LABEL_76;
        }

        v75 = *(v110 + 25344);
        v76 = 0.0;
        v77 = *&v33;
        if ((v75 - 2) <= 4)
        {
          v76 = *(a8 + 1496);
          v77 = 100.0;
          if (v75 != 2)
          {
            v77 = 2.25;
          }

          *(a7 + 15552) = v77;
        }
      }

      *(&v153 + 1) = v76 + *(&v153 + 1);
      *(&v154 + 1) = v77 + *(&v154 + 1);
LABEL_76:
      NK_Comp_ith_PR_Res(v38, v72, v151, v70, v117, a7, a8, v119, v17, v18, v66, v71, v135);
      if (*(a8 + 64008 + v38) == 1)
      {
        v79 = a8 + 65288 + 24 * v38;
        *v79 = *&v151[1];
        v80 = a8 + 68360 + 24 * v38;
        *v80 = v152;
        v81 = v154;
        *(a8 + 71432 + 8 * v38) = *(&v153 + 1);
        *(v79 + 16) = v151[3];
        *(v80 + 16) = v153;
        *(a8 + 72456 + 8 * v38) = v81;
        *(a8 + 73480 + 8 * v38) = *(&v154 + 1);
      }

      if (*(v131 + v38) == 1)
      {
        v82 = *a8;
        v83 = *(a8 + 11048 + 8 * v38) + (*(a8 + 7976 + 24 * v38) + *(a8 + 7976 + 24 * v38 + 8)) * 0.16 * *(a7 + 26976);
        if (*(v111 + v38) == 1 && *v39 == *(v132 + 4 * v38) && ((v84 = v82 - *(v108 + 4 * v38), v85 = *(v109 + 8 * v38), v85 < v83) ? (v86 = v84 <= 59999) : (v86 = 0), v86))
        {
          v83 = v85 + (v84 / 1000);
        }

        else
        {
          *(v111 + v38) = 1;
          *(v108 + 4 * v38) = v82;
        }

        *(v109 + 8 * v38) = v83;
      }

      if ((v116 & 1) == 0)
      {
        NK_Comp_ith_DO_Res(v38, v138.f64, v151, a8, &v137, *(v120 + 8 * v38));
        v34 = v102;
LABEL_100:
        v95 = a8 + 52776 + 56 * v38;
        *v95 = v138;
        *(v95 + 16) = v139;
        if ((*(v126 + v38) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            *(v95 + 24 + i * 8) = *(v121 + 24 * v38 + i * 8) - v138.f64[i];
          }
        }

        *(v95 + 48) = (v137 + *(a8 + 1664) * -299792458.0) * v34;
        *(v132 + 4 * v38) = *v39;
        *(v130 + 2 * v38) = v158;
        *(v129 + 4 * v38) = DWORD2(v157);
        *(v128 + v38) = 1;
        *(v35 + 8 * v38) = v119;
        *(a7 + 25952 + 8 * v38) = *(v124 + 8 * v38);
        v97 = v121 + 24 * v38;
        *v97 = v138;
        *(v97 + 16) = v139;
        goto LABEL_42;
      }

      v101 = v32;
      v104 = v33;
      v87 = v17;
      v88 = v31;
      v89 = v18;
      v90 = (v106 + 8 * v38);
      v91 = *v90;
      *(v30 + v38) = 1;
      v92 = *(v120 + 8 * v38);
      if (*v123 == 7)
      {
        v93 = 10.0;
      }

      else
      {
        v93 = 6.0;
      }

      v133 = 0.0;
      if (R8_EQ(v90, &v133))
      {
        *(v30 + v38) = 0;
        Get_GNSS_SV_Str(*v39);
        EvLog_v("NK_Comp_PR_DO_Meas:  %d  %s  Ignoring 0.0 AD");
      }

      else
      {
        if (fabs(v92 - v91) <= v93)
        {
LABEL_97:
          NK_Comp_ith_DO_Res(v38, v138.f64, v151, a8, &v137, v91);
          v12 = v107;
          v18 = v89;
          v31 = v88;
          v17 = v87;
          v34 = v102;
          v33 = v104;
          v32 = v101;
          if (*(v30 + v38) == 1 && *(a8 + 21984 + v38) == 1)
          {
            *(a8 + 22112 + v38) = 1;
          }

          goto LABEL_100;
        }

        *(v30 + v38) = 0;
        Get_GNSS_SV_Str(*v39);
        v94 = *v90;
        v99 = *(v120 + 8 * v38);
        EvLog_v("NK_Comp_PR_DO_Meas:  %d  %s  DO-AD = %d m/s !  (%d - %d)  Tol %d");
      }

      v91 = v92;
      goto LABEL_97;
    }

    *(a8 + 57 + v38) = 1;
    if (v48)
    {
      goto LABEL_37;
    }

LABEL_41:
    *(v132 + 4 * v38) = 0;
    *(v130 + 2 * v38) = 0;
    *(v129 + 4 * v38) = 0;
    *(v128 + v38) = 0;
    *(v35 + 8 * v38) = 0;
    *(v36 + 8 * v38) = 0;
    *(a7 + 19080 + 8 * v38) = 0;
    *(v127 + 4 * v38) = 0;
LABEL_42:
    if ((*(v131 + v38) & 1) == 0)
    {
      *(v126 + v38) = 1;
    }

LABEL_44:
    ++v29;
  }

  while (v29 != 128);
  v98 = *MEMORY[0x29EDCA608];
}