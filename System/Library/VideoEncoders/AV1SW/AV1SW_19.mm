uint64_t sub_277A3D9E4(uint64_t result, int a2, int a3, char *a4, char *a5, int *a6)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        v8 = 1;
        do
        {
          v9 = v8;
          LODWORD(v7) = v7 + byte_277BFC9D8[a4[v6] >> 3];
          v6 = 1;
          v8 = 0;
        }

        while ((v9 & 1) != 0);
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = v11;
          v7 = byte_277BFC9D8[a5[v10] >> 3] + v7;
          v10 = 1;
          v11 = 0;
        }

        while ((v12 & 1) != 0);
        a6[1] = byte_277BFC9DB[v7 + 32];
        if (a3)
        {
          if ((0x3CFFF0uLL >> result))
          {
            v13 = 10;
          }

          else
          {
            v13 = 7;
          }

          v14 = *a4 == 0;
          v15 = *a5;
          goto LABEL_51;
        }

        if (result != 3)
        {
          v34 = a4[1] | *a4;
          LODWORD(v35) = v34 & 7;
          v36 = a5[1] | *a5;
          goto LABEL_84;
        }

        goto LABEL_82;
      }

      goto LABEL_26;
    }

    a6[1] = byte_277BFC9DB[byte_277BFC9D8[*a4 >> 3] + 32 + byte_277BFC9D8[*a5 >> 3]];
    if (!a3)
    {
      if (result)
      {
        if ((*a4 & 4) != 0)
        {
          v35 = 4;
        }

        else
        {
          v35 = *a4 & 7;
        }

        v36 = *a5;
        goto LABEL_87;
      }

      goto LABEL_82;
    }

    if (result)
    {
      v13 = 10;
    }

    else
    {
      v13 = 7;
    }

    v14 = *a4 == 0;
    v15 = *a5;
LABEL_51:
    if (!v14)
    {
      ++v13;
    }

    v19 = v15 == 0;
LABEL_54:
    if (v19)
    {
      v30 = v13;
    }

    else
    {
      v30 = v13 + 1;
    }

    goto LABEL_142;
  }

  if (a2 == 2)
  {
    v27 = 0;
    LODWORD(v28) = 0;
    do
    {
      LODWORD(v28) = v28 + byte_277BFC9D8[a4[v27++] >> 3];
    }

    while (v27 != 4);
    for (i = 0; i != 4; ++i)
    {
      v28 = byte_277BFC9D8[a5[i] >> 3] + v28;
    }

    a6[1] = byte_277BFC9DB[v28 + 32];
    if (!a3)
    {
      if (result != 6)
      {
        v34 = a4[1] | *a4 | a4[2] | a4[3];
        LODWORD(v35) = v34 & 7;
        v36 = a5[1] | *a5 | a5[2] | a5[3];
LABEL_84:
        if ((v34 & 4) != 0)
        {
          v35 = 4;
        }

        else
        {
          v35 = v35;
        }

LABEL_87:
        if ((v36 & 4) != 0)
        {
          v40 = 4;
        }

        else
        {
          v40 = v36 & 7;
        }

        v41 = v35 + 4 * v35;
LABEL_91:
        v30 = byte_277BFCA1C[v41 + v40];
        goto LABEL_142;
      }

LABEL_82:
      v30 = 0;
      goto LABEL_142;
    }

    if ((0x30FF80uLL >> result))
    {
      v13 = 10;
    }

    else
    {
      v13 = 7;
    }

    v14 = *a4 == 0;
    v15 = *a5;
    goto LABEL_51;
  }

  if (a2 == 3)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    do
    {
      LODWORD(v17) = v17 + byte_277BFC9D8[a4[v16++] >> 3];
    }

    while (v16 != 8);
    for (j = 0; j != 8; ++j)
    {
      v17 = byte_277BFC9D8[a5[j] >> 3] + v17;
    }

    a6[1] = byte_277BFC9DB[v17 + 32];
    if (a3)
    {
      if (result - 10 >= 6)
      {
        v13 = 7;
      }

      else
      {
        v13 = 10;
      }

      if (*a4)
      {
        ++v13;
      }

      v19 = *a5 == 0;
      goto LABEL_54;
    }

    if (result == 9)
    {
      goto LABEL_82;
    }

    v37 = 0;
    v31 = 0;
    do
    {
      v31 |= a4[v37++];
    }

    while (v37 != 8);
    v38 = 0;
    LOBYTE(v22) = 0;
    do
    {
      LOBYTE(v22) = v22 | a5[v38++];
    }

    while (v38 != 8);
LABEL_69:
    if ((v31 & 4) != 0)
    {
      v39 = 4;
    }

    else
    {
      v39 = v31 & 7;
    }

    if ((v22 & 4) != 0)
    {
      v40 = 4;
    }

    else
    {
      v40 = v22 & 7;
    }

    v41 = v39 + 4 * v39;
    goto LABEL_91;
  }

LABEL_26:
  v20 = 0;
  LODWORD(v21) = 0;
  LODWORD(v22) = *&byte_277BFDBA0[4 * a2];
  v23 = *&byte_277BFDB54[4 * a2];
  if (v22 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v22;
  }

  do
  {
    LODWORD(v21) = v21 + byte_277BFC9D8[a4[v20++] >> 3];
  }

  while (v22 != v20);
  v24 = 0;
  if (v23 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23;
  }

  do
  {
    v21 = byte_277BFC9D8[a5[v24++] >> 3] + v21;
  }

  while (v25 != v24);
  a6[1] = byte_277BFC9DB[v21 + 32];
  if (!a3)
  {
    if (byte_277C393B1[a2] == result)
    {
      goto LABEL_82;
    }

    v31 = 0;
    do
    {
      v32 = *a4++;
      v31 |= v32;
      --v22;
    }

    while (v22);
    do
    {
      v33 = *a5++;
      LOBYTE(v22) = v22 | v33;
      --v25;
    }

    while (v25);
    goto LABEL_69;
  }

  switch(a2)
  {
    case 0:
      v26 = *a4;
      goto LABEL_120;
    case 1:
      v51 = *a4;
      goto LABEL_129;
    case 2:
      v47 = *a4;
      goto LABEL_118;
    case 3:
      v45 = *a4;
      goto LABEL_103;
    case 4:
      v43 = *(a4 + 1) | *a4;
      goto LABEL_96;
    case 5:
      v51 = *a4;
      goto LABEL_129;
    case 6:
      v26 = *a4;
      goto LABEL_120;
    case 7:
      v47 = *a4;
      goto LABEL_118;
    case 8:
      v51 = *a4;
LABEL_129:
      v42 = v51 == 0;
      goto LABEL_130;
    case 9:
      v46 = *a4;
      goto LABEL_101;
    case 10:
      v55 = *a4;
      goto LABEL_123;
    case 11:
      v43 = *a4;
LABEL_96:
      v44 = v43 == 0;
      goto LABEL_111;
    case 12:
      v45 = *(a4 + 1) | *a4;
LABEL_103:
      v48 = v45 == 0;
      goto LABEL_104;
    case 13:
      v47 = *a4;
LABEL_118:
      v53 = v47 == 0;
      goto LABEL_124;
    case 14:
      v26 = *a4;
LABEL_120:
      v49 = v26 != 0;
      v54 = *a5;
      goto LABEL_134;
    case 15:
      v46 = *a4;
LABEL_101:
      v48 = v46 == 0;
LABEL_104:
      v49 = !v48;
      v50 = *a5;
      goto LABEL_115;
    case 16:
      v42 = *a4 == 0;
LABEL_130:
      v49 = !v42;
      v54 = *a5;
      goto LABEL_134;
    case 17:
      v44 = *a4 == 0;
LABEL_111:
      v49 = !v44;
      v50 = *(a5 + 1) | *a5;
LABEL_115:
      v52 = v50 == 0;
      goto LABEL_135;
    case 18:
      v55 = *(a4 + 1) | *a4;
LABEL_123:
      v53 = v55 == 0;
LABEL_124:
      v49 = !v53;
      v54 = *a5;
LABEL_134:
      v52 = v54 == 0;
LABEL_135:
      v56 = !v52;
      break;
    default:
      v49 = 0;
      v56 = 0;
      break;
  }

  v57 = v56 + v49;
  if (byte_277C3BCB6[result] <= byte_277C3BCB6[byte_277C393B1[a2]])
  {
    v58 = 7;
  }

  else
  {
    v58 = 10;
  }

  v30 = v57 + v58;
LABEL_142:
  *a6 = v30;
  return result;
}

int32x4_t *sub_277A3DF98(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, __int16 *a6, uint64_t *a7, uint64_t *a8)
{
  v10 = a4;
  v13 = a1 + 136 * a2;
  if (a4 <= 0xC && ((1 << a4) & 0x1810) != 0)
  {
    v14 = 1024;
  }

  else if (a4 - 17 >= 2)
  {
    v14 = dword_277BFE7FC[a4];
  }

  else
  {
    v14 = 512;
  }

  v29 = 0;
  v15 = 16 * a3;
  result = (*(v13 + 24) + 4 * v15);
  v17 = (*(v13 + 8) + 4 * v15);
  if ((*(*(a1 + 8376) + 192) & 8) != 0)
  {
    result = sub_277AA3D70(result, v17, v14, &v29, *(a1 + 11072));
LABEL_13:
    v18 = result;
    goto LABEL_14;
  }

  if (!a5 || !*(a1 + 151032))
  {
    result = sub_277A86260(result, v17, v14, &v29);
    goto LABEL_13;
  }

  if (v14 < 1)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *a6++;
      v21 = *(a5 + v20);
      v23 = result->i32[0];
      result = (result + 4);
      v22 = v23;
      v24 = v17->i32[0];
      v17 = (v17 + 4);
      v18 += ((v22 - v24) * v21 * (v22 - v24) * v21 + 512) >> 10;
      v19 += (v22 * v21 * v22 * v21 + 512) >> 10;
      --v14;
    }

    while (v14);
  }

  v29 = v19;
LABEL_14:
  v25 = ((0x61E18uLL >> v10) & 1) + ((0x1810uLL >> v10) & 1);
  v26 = v18 >> (2 - 2 * (((0x61E18uLL >> v10) & 1) + ((0x1810uLL >> v10) & 1)));
  v27 = v18 << (2 * (((0x61E18uLL >> v10) & 1) + ((0x1810uLL >> v10) & 1)) - 2);
  if (v25 <= 1)
  {
    v27 = v26;
  }

  *a7 = v27;
  v28 = v29 >> (2 - 2 * v25);
  if (v25 > 1)
  {
    v28 = v29 << (2 * v25 - 2);
  }

  *a8 = v28;
  return result;
}

float64_t sub_277A3E12C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 272080) & 1) == 0 && ((0x61810uLL >> a8) & 1) != 0 || a5 > a4)
  {
    goto LABEL_9;
  }

  v26 = 1;
  v12 = a1 + 2608 * a6;
  v29 = 0;
  v24 = 0uLL;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v21[0] = a2;
  v21[1] = a1;
  v27 = a5;
  v28 = a4;
  v25 = 0uLL;
  v13 = byte_277C36D60[a7];
  v14 = *(v12 + 552);
  memcpy(v22, *(v12 + 544), byte_277C3F990[a7]);
  memcpy(v23, v14, v13);
  sub_277A91330(a1 + 416, a7, a6, sub_277A3E2D4, v21);
  v15 = **(a1 + 8280);
  if ((*(v15 + 167) & 0x80) != 0)
  {
    if (HIDWORD(v28))
    {
LABEL_9:
      *a3 = 0x7FFFFFFFLL;
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      v18 = vnegq_f64(v17);
      *(a3 + 8) = v18;
      *(a3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(a3 + 32) = 0;
      return v18.f64[0];
    }
  }

  else
  {
    if (*(v15 + 16) >= 1)
    {
      v16 = &v28 + 12;
    }

    else
    {
      v16 = &v28 + 8;
    }

    if (*v16)
    {
      goto LABEL_9;
    }
  }

  *&v18.f64[0] = v24;
  v19 = v25;
  *a3 = v24;
  *(a3 + 16) = v19;
  *(a3 + 32) = v26;
  return v18.f64[0];
}

float64x2_t sub_277A3E2D4(int a1, int a2, int a3, int a4, unsigned int a5, unsigned int a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, uint16x8_t a13, int32x4_t a14, uint16x4_t a15)
{
  v63 = *MEMORY[0x277D85DE8];
  if (*(a7 + 136))
  {
    *(a7 + 140) = 1;
    return result;
  }

  v19 = *(a7 + 8);
  v52 = (v19 + 16904);
  v20 = **(v19 + 8280);
  v21 = a7 + a4;
  v22 = a7 + a3;
  if ((*(v20 + 167) & 0x80) != 0)
  {
    v27 = 0;
    v24 = *a7;
    v25 = (v21 + 16);
    v26 = (v22 + 48);
    v57 = 0u;
    v58 = 0u;
    v59 = 1;
    goto LABEL_7;
  }

  v23 = *(v20 + 16);
  v24 = *a7;
  v25 = (v21 + 16);
  v26 = (v22 + 48);
  v57 = 0u;
  v58 = 0u;
  v59 = 1;
  if (v23 > 0)
  {
    v27 = 0;
    goto LABEL_7;
  }

  __ba = (v22 + 48);
  v42 = (v19 + 151040);
  sub_277A7BB6C(v24 + 245616, v19 + 416, a1, a4, a3, a6, 0.0, a9, a10, a11, a12, a13, a14, a15);
  sub_277A8E330(v19, a1, a5, a4, a3, a6);
  if (*(v19 + 151041) != 1)
  {
    v27 = 1;
    v26 = __ba;
    goto LABEL_7;
  }

  v26 = __ba;
  if (!*(v19 + 4 * (*(**(v19 + 8280) + 167) & 7) + 11108) && byte_277C393B1[a6] == a5 && a6 == 1 && *(v19 + 11072) == 8)
  {
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    v43 = &v61[0].f32[sub_277A3E874((*v19 + 8 * a3 * byte_277C3CAFE[a5] + 8 * a4), byte_277C3CAFE[a5], 8, 8, v61[0].f32)];
    *v43 = log1pf(*(v19 + 153152));
    if (*v52 >= 0xFF)
    {
      v44 = 255;
    }

    else
    {
      v44 = *v52;
    }

    if ((*v52 & 0x80000000) != 0)
    {
      v44 = 0;
    }

    v45 = word_277BFDBFA[v44];
    v46 = log1pf(vcvts_n_f32_u32(v45 * v45, 8uLL));
    v47 = 0;
    v43[1] = v46;
    do
    {
      v61[0].f32[v47] = (v61[0].f32[v47] - *&dword_277BF4820[v47]) / *&dword_277BF4858[v47];
      ++v47;
    }

    while (v47 != 14);
    v60 = 0.0;
    sub_2779D28B0(v61, dword_27A71F648, &v60);
    if (v60 <= -0.40547)
    {
      v48 = 2;
      v26 = __ba;
    }

    else
    {
      v26 = __ba;
      if (v60 <= 0.40547)
      {
        goto LABEL_51;
      }

      v48 = 1;
    }

    *v42 = v48;
  }

LABEL_51:
  v27 = 1;
  if (*v42 == 1)
  {
    *(a7 + 80) = 0x7FFFFFFFLL;
    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    result = vnegq_f64(v49);
    *(a7 + 88) = result;
    *(a7 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a7 + 112) = 0;
    *(a7 + 136) = 1;
    return result;
  }

LABEL_7:
  v50 = v27;
  v61[0].i64[0] = 0;
  __b = v26;
  sub_277A3D9E4(a5, a6, a1, v25, v26, v61);
  sub_277A3EA88(v24, v19, a1, a2, a3, a4, a5, a6, v61, *(a7 + 144), *(a7 + 148), *(a7 + 128) - *(a7 + 120), &v57);
  if (!a1 && *(v19 + 15440))
  {
    sub_2779F15BC(v19 + 416, a3, a4, a6, a5);
  }

  v28 = *(*(v19 + 136 * a1 + 40) + a2);
  memset(v25, v28, *&byte_277BFDBA0[4 * a6]);
  memset(__b, v28, *&byte_277BFDB54[4 * a6]);
  v30 = (byte_277C3CAFE[a5] >> 2) * a3 + a4;
  v31 = v19 + 151049;
  if (a1)
  {
    v32 = *(v31 + v30) & ~(1 << a1);
  }

  else
  {
    LOBYTE(v32) = *(v31 + v30) & 0xFE;
    if (!*(*(v19 + 32) + 2 * a2))
    {
      LOBYTE(v32) = v32 + 1;
    }
  }

  *(v31 + v30) = v32;
  v33 = *(&v57 + 1);
  v34 = ((*(v19 + 16920) * v57 + 256) >> 9) + (*(&v57 + 1) << 7);
  if (v50)
  {
    v35 = 0;
  }

  else
  {
    if (v34 >= *(&v58 + 1) << 7)
    {
      v34 = *(&v58 + 1) << 7;
    }

    v35 = (*(*(v19 + 136 * a1 + 32) + 2 * a2) == 0) & v59;
  }

  v36 = *(a7 + 80);
  if (v36 == 0x7FFFFFFF || v57 == 0x7FFFFFFF)
  {
    *(a7 + 80) = 0x7FFFFFFFLL;
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    result = vnegq_f64(v39);
    *(a7 + 88) = result;
    *(a7 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a7 + 112) = 0;
  }

  else
  {
    v37 = v57 + v36;
    if (v37 >= 0x7FFFFFFF)
    {
      LODWORD(v37) = 0x7FFFFFFF;
    }

    *(a7 + 80) = v37;
    if (!*(a7 + 84))
    {
      *(a7 + 84) = DWORD1(v57);
    }

    *(a7 + 88) += v33;
    v38 = *(a7 + 104);
    if (v38 != 0x7FFFFFFFFFFFFFFFLL && *(&v58 + 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(a7 + 104) = *(&v58 + 1) + v38;
    }

    *(a7 + 112) &= v35;
  }

  v40 = *(a7 + 128);
  v41 = *(a7 + 120) + v34;
  *(a7 + 120) = v41;
  if (v41 > v40)
  {
    *(a7 + 136) = 1;
  }

  return result;
}

uint64_t sub_277A3E874(int16x8_t *a1, unsigned int a2, int a3, int a4, float *a5)
{
  if (a4 < 1)
  {
    v11 = 0;
    v18 = 2;
    v17 = 0.0;
    v19 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (a4 >> (a4 >= a3));
    v13 = a3 >> (a3 >= a4);
    v14 = (v13 * v12);
    v15 = (v13 * v12);
    v41 = a4;
    v42 = 2 * v12 * a2;
    v43 = a4;
    v16 = 2 * v13;
    v17 = 0.0;
    v18 = 2;
    v19 = 0.0;
    v46 = a5;
    v47 = v13;
    do
    {
      if (a3 >= 1)
      {
        v44 = v8;
        v45 = a1;
        v20 = 0;
        v21 = v18;
        do
        {
          v49 = 0;
          v48 = 0;
          sub_2779F4F00(a1, a2, v13, v12, &v49, &v48);
          v9 += v49;
          v10 += v48;
          a5 = v46;
          v13 = v47;
          v22 = v49 / v14;
          v23 = v48 / v15;
          v24 = v23 - (v22 * v22);
          v25 = sqrtf(v24);
          if (v24 <= 0.0)
          {
            v26 = 0.0;
          }

          else
          {
            v26 = v25;
          }

          v27 = &v46[v21];
          v21 += 2;
          *v27 = v22;
          v27[1] = v26;
          v17 = v17 + (v22 * v22);
          v19 = v19 + v26;
          ++v11;
          v20 += v47;
          a1 = (a1 + v16);
        }

        while (v20 < a3);
        v18 = v21;
        v8 = v44;
        a1 = v45;
      }

      v8 += v12;
      a1 = (a1 + v42);
    }

    while (v8 < v43);
    v28 = v9;
    v29 = v10;
    a4 = v41;
  }

  v30 = v28 / (a4 * a3);
  v31 = v29 / (a4 * a3);
  v32 = v31 - (v30 * v30);
  v33 = sqrtf(v32);
  if (v32 <= 0.0)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v33;
  }

  *a5 = v30;
  a5[1] = v34;
  v35 = v17 / v11;
  v36 = v35 - (v30 * v30);
  v37 = sqrtf(v36);
  if (v36 <= 0.0)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v37;
  }

  v39 = &a5[v18];
  *v39 = v38;
  v39[1] = v19 / v11;
  return (v18 + 2);
}

uint64_t sub_277A3EA88(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, int *a9, char a10, int a11, uint64_t a12, uint64_t a13)
{
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v718 = *MEMORY[0x277D85DE8];
  v659 = **(a2 + 8280);
  v693 = 0;
  v682 = (a2 + 136 * a3);
  if (a3)
  {
    v641 = 0;
  }

  else
  {
    v641 = a6 + *(a2 + 8336) * a5;
  }

  v681 = (a1 + 396188);
  v660 = a1 + 271324;
  v658 = *(a2 + 153144);
  v18 = v682[1];
  *a13 = 0x7FFFFFFFLL;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  *(a13 + 8) = vnegq_f64(v19);
  *(a13 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a13 + 32) = 0;
  v20 = *(v659 + 167);
  v21 = (*(a1 + (v20 & 7) + 272256) & 0xFD) == 0;
  v696 = xmmword_277BEE488;
  v697 = unk_277BEE498;
  v698 = xmmword_277BEE4A8;
  v699 = unk_277BEE4B8;
  v22 = *(*(a2 + 8376) + 192);
  if ((v22 & 8) != 0)
  {
    v23 = *(a2 + 11072) - 5;
  }

  else
  {
    LOBYTE(v23) = 3;
  }

  v24 = v682[16];
  v25 = v24[1];
  v26 = a8;
  v692 = 0;
  v664 = (a2 + 150988);
  v665 = a8;
  v27 = *(a2 + 151028);
  v637 = v18;
  v687 = v25;
  if (!v27 || ((0x3EFEFuLL >> a8) & 1) == 0 || ((0x5F7EFuLL >> a8) & 1) == 0)
  {
    v28 = a3;
    v29 = sub_277A3D03C(a2, a3, a5, a6, a7, byte_277C393B1[a8], &v692);
    v657 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v38 = v21;
  if ((v22 & 8) != 0)
  {
    v39 = *(a2 + 11072) - 5;
  }

  else
  {
    LOBYTE(v39) = 3;
  }

  v52 = v24[1];
  v53 = *v24;
  v54 = byte_277C393B1[a8];
  v55 = byte_277C3CAE8[v54];
  v56 = byte_277C3CAFE[v54];
  v57 = a2 + 2608 * a3 + 432;
  v58 = *(a2 + 8352);
  if (v58 < 0)
  {
    v59 = (v58 >> (*(a2 + 2608 * a3 + 440) + 3)) - 4 * a5 + byte_277C3CAE8[a7];
    if (v59 >= v55)
    {
      v60 = v55;
    }

    else
    {
      v60 = (v58 >> (*(a2 + 2608 * a3 + 440) + 3)) - 4 * a5 + byte_277C3CAE8[a7];
    }

    if (v59 >= 0)
    {
      v55 = v60;
    }

    else
    {
      v55 = 0;
    }
  }

  v61 = *(a2 + 8344);
  v62 = byte_277C3CAFE[a7];
  if (v61 < 0)
  {
    v63 = (v61 >> (*(v57 + 4) + 3)) + v62 - 4 * a6;
    if (v63 >= v56)
    {
      v64 = v56;
    }

    else
    {
      v64 = v63;
    }

    if (v63 >= 0)
    {
      v56 = v64;
    }

    else
    {
      v56 = 0;
    }
  }

  v65 = v52 >> v39;
  v66 = (*v682 + 8 * (a6 + v62 * a5));
  LODWORD(__dst) = 0;
  if (v56 == 4 && v55 == 4)
  {
    v67 = *(v66 + 2 * v62);
    v68 = *(v66 + 4 * v62);
    v69 = *(v66 + 6 * v62);
    v70 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v67, v67), *v66, *v66), v68, v68), v69, v69);
    LODWORD(__dst) = vaddvq_s32(vaddw_s16(vaddw_s16(vaddl_s16(v67, *v66), v68), v69));
    v29 = vaddlvq_u32(v70);
  }

  else
  {
    v680 = v53;
    if (v56 != 4 || (v55 & 3) != 0)
    {
      if (v55 & 3 | v56 & 7)
      {
        if (v55 < 1)
        {
          v29 = 0;
          v71 = -1;
          v72 = -1;
          v657 = 0x7FFFFFFFFFFFFFFFLL;
          v13 = a8;
          goto LABEL_75;
        }

        v629 = 0;
        v630 = 0;
        v29 = 0;
        do
        {
          if (v56 >= 1)
          {
            for (i = 0; i != v56; ++i)
            {
              v632 = v66->i16[i];
              v29 += (v632 * v632);
              v629 += v632;
            }
          }

          ++v630;
          v66 = (v66 + 2 * v62);
        }

        while (v630 != v55);
        LODWORD(__dst) = v629;
      }

      else
      {
        v29 = sub_277A07AAC(v66, v62, v56, v55, &__dst);
      }

      v13 = a8;
    }

    else
    {
      v29 = sub_277A07A1C(v66, v62, v55, &__dst);
    }

    v53 = v680;
  }

  v71 = -1;
  v72 = -1;
  v657 = 0x7FFFFFFFFFFFFFFFLL;
  if (v56 >= 1 && v55 >= 1)
  {
    v73 = 1.0 / (v56 * v55);
    if (__dst >= 0)
    {
      v74 = __dst;
    }

    else
    {
      v74 = -__dst;
    }

    v75 = (v73 * v74) << 7;
    v71 = (v73 * (v29 << 8));
    if (__dst >= 1)
    {
      v76 = v75;
    }

    else
    {
      v76 = -v75;
    }

    v657 = v76;
    v72 = v29 - (v73 * __dst * __dst);
  }

LABEL_75:
  v692 = v71;
  v77 = (v65 * 1.8 * v65);
  v16 = a4;
  v21 = v38;
  if ((v22 & 8) != 0)
  {
    v72 = (v72 + ((1 << (2 * *(a2 + 11072) - 16)) >> 1)) >> (2 * *(a2 + 11072) - 16);
  }

  v15 = a5;
  if (v72 >= v77)
  {
    v14 = a6;
    goto LABEL_87;
  }

  v78 = v657;
  if (v657 < 0)
  {
    v78 = -v657;
  }

  if (v78 * word_277BFC7E0[v665] < v53 >> 3 << 12)
  {
    *(a13 + 32) = 1;
    *(v682[4] + 2 * a4) = 0;
    v684 = v38;
    if ((v22 & 8) != 0)
    {
      v29 = (v29 + ((1 << (2 * *(a2 + 11072) - 16)) >> 1)) >> (2 * *(a2 + 11072) - 16);
    }

    v14 = a6;
    v673 = v29;
    *(a13 + 8) = 16 * v29;
    *(a13 + 24) = 16 * v29;
    v79 = byte_277C36D60[a7];
    v80 = *(v57 + 120);
    memcpy(&__dst, *(v57 + 112), byte_277C3F990[a7]);
    memcpy(v714, v80, v79);
    v26 = v665;
    v81 = (byte_277C3BE70[v665] + byte_277C3BE83[v665] + 1) >> 1;
    v712.i64[0] = 0;
    v13 = a8;
    result = sub_277A3D9E4(a7, a8, a3, &__dst, v714, &v712);
    v29 = v673;
    v16 = a4;
    v28 = a3;
    v83 = *(a2 + 7552 * v81 + 3776 * (a3 != 0) + 8 * v712.i32[0] + 47580);
    *a13 = v83;
    *(a13 + 16) = ((*(a2 + 16920) * v83 + 256) >> 9) + (v673 << 11);
    *(v682[5] + a4) = 0;
    v21 = v684;
    if (*(a13 + 32) == 1)
    {
      if (!a3)
      {
        *(*(a2 + 8328) + v641) = 0;
      }

      return result;
    }

    goto LABEL_11;
  }

  v14 = a6;
  if (v27 < 2)
  {
LABEL_87:
    v28 = a3;
    v26 = v665;
    goto LABEL_11;
  }

  v28 = a3;
  if (!a3)
  {
    v31 = 0;
    v30 = 1;
    v32 = 1;
    v33 = v664;
    LOBYTE(v26) = v665;
    goto LABEL_148;
  }

  v26 = v665;
  if (a3 >= 1 && ((v20 & 0x80) != 0 || *(v659 + 16) >= 1))
  {
    v31 = 0;
    v30 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v30 = v681[109];
  if (v30 != 1)
  {
    v34 = *(a2 + 8280);
    v35 = *v34;
    v36 = *(*v34 + 167);
    v37 = (v36 & 0x80) != 0 || v35[16] > 0;
    v40 = *(*a1 + *(a1 + 463456) + 400);
    v41 = (*a1 + 1216 * v40 + (v26 << 6) + 75804);
    v683 = v21;
    if (v37)
    {
      v42 = v664[1];
      if (v42 == 0x7FFFFFFF)
      {
        goto LABEL_35;
      }

      if (v42)
      {
        if (*v41 <= v42)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = (v26 << 6) + 1216 * v40 + *a1 + 75808;
          do
          {
            v47 = *(v46 + 4 * v43);
            v48 = v47 <= v45;
            if (v47 > v45)
            {
              v45 = *(v46 + 4 * v43);
            }

            ++v43;
            if (!v48)
            {
              v44 = v43;
            }
          }

          while (v43 != 15);
          if (v45 > v42 + 100)
          {
            goto LABEL_41;
          }

LABEL_35:
          if (*(a2 + 116284) == 1 && v28 == 0)
          {
            v44 = 0;
          }

          else
          {
            v44 = 16;
          }

          goto LABEL_41;
        }

LABEL_34:
        v44 = 0;
        goto LABEL_41;
      }
    }

    else if (!*v664)
    {
      goto LABEL_35;
    }

    if ((v36 & 0x80) == 0 && v35[16] <= 0)
    {
      v44 = 0;
      if (v13 <= 2 && !(*(a2 + 4 * (v36 & 7) + 11108) | *(a1 + 643736)))
      {
        v44 = byte_277BFC848[v35[2]];
      }

LABEL_41:
      v50 = 0x61810uLL >> v26;
      if ((0x61810uLL >> v26))
      {
        v51 = 0;
      }

      else if ((0x18608uLL >> v26))
      {
        v51 = v37;
      }

      else if (*(a1 + 246117))
      {
        if (v37)
        {
          v51 = 1;
        }

        else
        {
          v51 = 2;
        }
      }

      else
      {
        v51 = byte_277C3C219[2 * v37 + ((0x60604uLL >> v26) & 1)];
      }

      v84 = 0;
      if (v28)
      {
        if ((v50 & 1) == 0)
        {
          v44 = 0;
          v33 = v664;
          if (!*(a2 + 4 * (v36 & 7) + 11108))
          {
            if ((v36 & 0x80) != 0 || v35[16] > 0)
            {
              v85 = *(*(a2 + 8328) + (v14 << *(a2 + 3044)) + *(a2 + 8336) * (v15 << *(a2 + 3048)));
              v86 = (v36 & 0x80) != 0 || v35[16] > 0;
            }

            else
            {
              v86 = 0;
              v85 = byte_277BFC848[byte_277C32971[v35[3]]];
            }

            if (((0x18608uLL >> v26) & 1) == 0)
            {
              if (*(a1 + 246117))
              {
                if (v86)
                {
                  LOBYTE(v86) = 1;
                }

                else
                {
                  LOBYTE(v86) = 2;
                }
              }

              else
              {
                LOBYTE(v86) = byte_277C3C219[2 * v86 + ((0x60604uLL >> v26) & 1)];
              }
            }

            if (dword_277BFC858[16 * v86 + v85])
            {
              v84 = v85;
            }

            else
            {
              v84 = 0;
            }

            v44 = v84;
          }

LABEL_120:
          if (v35[91])
          {
            v87 = &unk_277C3C214 + v35[90];
          }

          else
          {
            v87 = v35 + 2;
          }

          v88 = *v87;
          v89 = *v681;
          v90 = v51 != 3 || v89 == 0;
          v91 = &unk_277BEE4C8 + 2 * v88;
          if (v90)
          {
            v91 = &unk_277BEE4E2 + 2 * v51;
          }

          v92 = *v91;
          if (v89 == 2)
          {
            v92 &= word_277BEE4EE[v88];
          }

          if ((v50 & 1) != 0 || *(a2 + 4 * (v36 & 7) + 11108) || v92 == 1)
          {
            goto LABEL_136;
          }

          if (v37)
          {
            if (*(v660 + 761))
            {
              goto LABEL_136;
            }
          }

          else if (*(v660 + 760) == 1)
          {
LABEL_136:
            v44 = 0;
            if (*(v660 + 757))
            {
              LOWORD(v93) = v92;
            }

            else
            {
              LOWORD(v93) = v92 & 0xF;
            }

LABEL_139:
            v94 = 1 << v44;
LABEL_140:
            LOWORD(v93) = v94 & v93;
LABEL_141:
            v31 = 1;
            if (v93)
            {
              v32 = v93;
            }

            else
            {
              v32 = 1 << v84;
            }

            if (v93)
            {
              v95 = v44;
            }

            else
            {
              v95 = v84;
            }

            v30 = v95 > 0xFu;
            v21 = v683;
            goto LABEL_148;
          }

          if (*(v660 + 757))
          {
            v93 = v92;
          }

          else
          {
            v93 = v92 & 0xF;
          }

          if (v44 <= 0xFu)
          {
            goto LABEL_139;
          }

          if (a10)
          {
            LOWORD(v93) = v93 & 0xC01;
            goto LABEL_141;
          }

          v154 = v681[4];
          if (v154)
          {
            v155 = 0;
            v156 = 0;
            v157 = 0;
            v158 = dword_277BEE508[7 * v154 - 7 + v40];
            v159 = -1;
            do
            {
              v160 = v41[v155];
              if (((1 << v155) & v93) != 0)
              {
                v161 = v41[v155];
              }

              else
              {
                v161 = v159;
              }

              if (((1 << v155) & v93) != 0)
              {
                v162 = v155;
              }

              else
              {
                v162 = v156;
              }

              if (v160 > v159)
              {
                v159 = v161;
                v156 = v162;
              }

              if (v160 >= v158)
              {
                v163 = 0;
              }

              else
              {
                v163 = 1 << v155;
              }

              v157 |= v163;
              ++v155;
            }

            while (v155 != 16);
            if ((v157 & (1 << v156)) != 0)
            {
              v164 = ~(1 << v156);
            }

            else
            {
              v164 = -1;
            }

            v93 &= ~(v164 & v157);
          }

          v165 = xmmword_277BB7060;
          v166 = vdupq_n_s32(v93);
          v167 = 0uLL;
          v168 = 16;
          v169.i64[0] = 0x100000001;
          v169.i64[1] = 0x100000001;
          v170.i64[0] = 0x400000004;
          v170.i64[1] = 0x400000004;
          do
          {
            v167 = vaddq_s32(vandq_s8(vshlq_u32(v166, vnegq_s32(v165)), v169), v167);
            v165 = vaddq_s32(v165, v170);
            v168 -= 4;
          }

          while (v168);
          v171 = vaddvq_s32(v167);
          v675 = v29;
          v668 = v84;
          v670 = v93;
          if (v171 >= 3 && v681[5])
          {
            v678 = *(a1 + 246117);
            v672 = v23;
            v172 = v33[2];
            v662 = dword_277BEE540[v172];
            if (v171 > 7)
            {
              v655 = v171;
              v652 = dword_277BEE554[v172];
              v710 = xmmword_277BB7060;
              v711 = xmmword_277BB7060;
              v701[0] = 0;
              v701[1] = 0;
              v700[0] = 0;
              v700[1] = 0;
              memset(v714, 0, 40);
              v702 = 0uLL;
              *&v703 = 0;
              sub_277A91270(a1 + 245616, a2, v13, 0, &v702);
              v226 = 0;
              v227 = *v660;
              v714[0].i32[0] = ((0x61E18uLL >> v26) & 1) + ((0x1810uLL >> v26) & 1);
              v714[0].i8[4] = v13;
              v714[1].i32[2] = v227;
              *(&v714[1].i64[1] + 4) = 0x100000001;
              v714[1].i64[0] = 0;
              v714[0].i64[1] = 0;
              LOBYTE(v703) = 5;
              v695 = 0;
              v228 = &off_27A722620 + 32 * BYTE1(v702);
              do
              {
                LOBYTE(v702) = xmmword_277BEE5E8[v226];
                v229 = v702;
                v714[0].i64[1] = sub_277AA3E6C(a1 + 246232, a2 + 416, a3, a8, v702);
                v714[1].i64[0] = sub_277AA3DE0(a1 + 246232, a2 + 416, a3, a8, v229);
                sub_277A91078(a2, a3, a4, a5, a6, a7, &v702, v714);
                sub_277A3DF98(a2, a3, a4, a8, v714[0].i64[1], v228[2 * v229], &v695, &v694);
                v230 = sub_277B31E00(a2, a3, a4, a8, v229, a9, v678);
                v231 = ((*(a2 + 16920) * v230 + 256) >> 9) + (v695 << 7);
                *(&v706 + v226) = v231;
                if (v231 - (v231 >> 2) > a12)
                {
                  *(v700 + v226) = 1;
                }

                ++v226;
              }

              while (v226 != 4);
              v232 = &v710.i8[4];
              v233 = &v706 + 8;
              v234 = 1;
              v16 = a4;
              v13 = a8;
              v29 = v675;
              v84 = v668;
              v235 = v670;
              do
              {
                v236 = 0;
                v237 = *(&v706 + v234);
                while (*(&v706 + v236) <= v237)
                {
                  if (v234 == ++v236)
                  {
                    goto LABEL_361;
                  }
                }

                v238 = v710.i32[v234];
                v239 = v233;
                v240 = v232;
                v241 = v234;
                v242 = v233;
                v243 = v232;
                do
                {
                  --v241;
                  v244 = *--v242;
                  *v239 = v244;
                  LODWORD(v244) = *(v243 - 1);
                  v243 -= 4;
                  *v240 = v244;
                  v239 = v242;
                  v240 = v243;
                }

                while (v241 > v236);
                *(&v706 + v236) = v237;
                v710.i32[v236] = v238;
LABEL_361:
                ++v234;
                v232 += 4;
                v233 += 8;
              }

              while (v234 != 4);
              v245 = v706;
              v246 = v706 * 1.2;
              for (j = 1; j != 4; ++j)
              {
                if (v246 < *(&v706 + j))
                {
                  *(v700 + v710.i32[j]) = 1;
                }
              }

              if (*(v700 + v710.i32[0]))
              {
                LOWORD(v248) = 0;
                v33 = v664;
                LOBYTE(v26) = v665;
              }

              else
              {
                v656 = (v652 * v655 + 50) / 100;
                v712.i64[0] = v245;
                v251 = &xmmword_277BEE5E8[v710.i32[0]];
                for (k = 1; k != 4; ++k)
                {
                  v253 = *&v251[16 * *(&v711 + k)];
                  LOBYTE(v702) = v253;
                  v254 = v253;
                  v714[0].i64[1] = sub_277AA3E6C(a1 + 246232, a2 + 416, a3, a8, v253);
                  v714[1].i64[0] = sub_277AA3DE0(a1 + 246232, a2 + 416, a3, a8, v254);
                  sub_277A91078(a2, a3, a4, a5, a6, a7, &v702, v714);
                  sub_277A3DF98(a2, a3, a4, a8, v714[0].i64[1], v228[2 * v254], &v695, &v694);
                  v255 = sub_277B31E00(a2, a3, a4, a8, v254, a9, v678);
                  v256 = ((*(a2 + 16920) * v255 + 256) >> 9) + (v695 << 7);
                  v712.i64[k] = v256;
                  if (v256 - (v256 >> 2) > a12)
                  {
                    *(v701 + k) = 1;
                  }
                }

                v257 = &v711 + 4;
                v258 = &v712.i64[1];
                v259 = 1;
                v16 = a4;
                v33 = v664;
                LOBYTE(v26) = v665;
                v13 = a8;
                do
                {
                  v260 = 0;
                  v261 = v712.i64[v259];
                  while (v712.i64[v260] <= v261)
                  {
                    if (v259 == ++v260)
                    {
                      goto LABEL_391;
                    }
                  }

                  v262 = *(&v711 + v259);
                  v263 = v258;
                  v264 = v257;
                  v265 = v259;
                  v266 = v258;
                  v267 = v257;
                  do
                  {
                    --v265;
                    v268 = *--v266;
                    *v263 = v268;
                    LODWORD(v268) = *--v267;
                    *v264 = v268;
                    v263 = v266;
                    v264 = v267;
                  }

                  while (v265 > v260);
                  v712.i64[v260] = v261;
                  *(&v711 + v260) = v262;
LABEL_391:
                  ++v259;
                  v257 += 4;
                  ++v258;
                }

                while (v259 != 4);
                v269 = v712.i64[0] * 1.2;
                for (m = 1; m != 4; ++m)
                {
                  if (v269 < v712.i64[m])
                  {
                    *(v701 + *(&v711 + m)) = 1;
                  }
                }

                v271 = 0;
                v272 = 0;
                v273 = 15;
                do
                {
                  v274 = dword_277BEE568[v271];
                  v275 = dword_277BEE5A8[v271];
                  v276 = *(&v711 + v274);
                  v277 = v710.i32[v275];
                  v278 = xmmword_277BEE5E8[4 * v276 + v277];
                  if (((v670 >> v278) & 1) == 0 || *(v700 + v277) || *(v701 + v276))
                  {
                    *(&v696 + v273--) = v278;
                  }

                  else
                  {
                    *(&v696 + v272) = v278;
                    v279 = *(&v706 + v275) + v712.i64[v274];
                    if (v279 <= 1)
                    {
                      v279 = 1;
                    }

                    *(&__dst + v272++) = v279;
                  }

                  ++v271;
                }

                while (v271 != 16);
                v29 = v675;
                v84 = v668;
                v235 = v670;
                if (v272 >= 2)
                {
                  v280 = &v696 + 4;
                  v281 = &__dst + 8;
                  for (n = 1; n != v272; ++n)
                  {
                    v283 = 0;
                    v284 = *(&__dst + n);
                    while (*(&__dst + v283) <= v284)
                    {
                      if (n == ++v283)
                      {
                        goto LABEL_415;
                      }
                    }

                    v285 = *(&v696 + n);
                    v286 = v281;
                    v287 = v280;
                    v288 = n;
                    v289 = v281;
                    v290 = v280;
                    do
                    {
                      --v288;
                      v291 = *--v289;
                      *v286 = v291;
                      LODWORD(v291) = *--v290;
                      *v287 = v291;
                      v286 = v289;
                      v287 = v290;
                    }

                    while (v288 > v283);
                    *(&__dst + v283) = v284;
                    *(&v696 + v283) = v285;
                    v84 = v668;
                    v235 = v670;
LABEL_415:
                    v280 += 4;
                    v281 += 8;
                  }
                }

                v248 = 1 << v696;
                if (v272 >= v656)
                {
                  v292 = v656;
                }

                else
                {
                  v292 = v272;
                }

                if (v292 >= 2)
                {
                  v293 = ~v248;
                  v294 = v292 - 1;
                  v295 = &v696 + 1;
                  v296 = &__dst + 1;
                  do
                  {
                    v297 = *v296++;
                    if (1800 * (v297 - __dst) / __dst >= v662)
                    {
                      break;
                    }

                    v298 = *v295++;
                    v293 &= ~(1 << v298);
                    --v294;
                  }

                  while (v294);
                  LOWORD(v248) = ~v293;
                }
              }

              LOWORD(v93) = v248 & v235;
              goto LABEL_141;
            }

            v712 = 0uLL;
            v713 = 0;
            memset(v714, 0, 40);
            sub_277A91270(a1 + 245616, a2, v13, 0, &v712);
            v173 = 0;
            v174 = 0;
            v175 = *v660;
            v714[0].i32[0] = ((0x61E18uLL >> v26) & 1) + ((0x1810uLL >> v26) & 1);
            v714[0].i8[4] = v13;
            v714[1].i32[2] = v175;
            *(&v714[1].i64[1] + 4) = 0x100000001;
            v714[1].i64[0] = 0;
            v714[0].i64[1] = 0;
            v176 = (&off_27A722620 + 32 * v712.u8[1]);
            v177 = 15;
            v29 = v675;
            v84 = v668;
            v93 = v670;
            do
            {
              *&v706 = 0;
              if ((v93 >> v173))
              {
                v712.i8[0] = v173;
                v714[0].i64[1] = sub_277AA3E6C(a1 + 246232, a2 + 416, a3, a8, v173);
                v714[1].i64[0] = sub_277AA3DE0(a1 + 246232, a2 + 416, a3, a8, v173);
                sub_277A91078(a2, a3, v16, a5, a6, a7, &v712, v714);
                v178 = sub_277B31E00(a2, a3, v16, a8, v173, a9, v678);
                v13 = a8;
                sub_277A3DF98(a2, a3, a4, a8, v714[0].i64[1], *v176, &v706, &v702);
                v93 = v670;
                v84 = v668;
                v29 = v675;
                LOBYTE(v23) = v672;
                *(&v696 + v174) = v173;
                v179 = *(a2 + 16920) * v178;
                v16 = a4;
                v180 = ((v179 + 256) >> 9) + (v706 << 7);
                if (v180 <= 1)
                {
                  v180 = 1;
                }

                *(&__dst + v174++) = v180;
              }

              else
              {
                *(&v696 + v177--) = v173;
              }

              ++v173;
              v176 += 2;
            }

            while (v173 != 16);
            if (v174)
            {
              v33 = v664;
              LOBYTE(v26) = v665;
              if (v174 <= 1)
              {
                v94 = 1 << v696;
              }

              else
              {
                v181 = &v696 + 4;
                v182 = &__dst + 8;
                for (ii = 1; ii != v174; ++ii)
                {
                  v184 = 0;
                  v185 = *(&__dst + ii);
                  while (*(&__dst + v184) <= v185)
                  {
                    if (ii == ++v184)
                    {
                      goto LABEL_301;
                    }
                  }

                  v186 = *(&v696 + ii);
                  v187 = v182;
                  v188 = v181;
                  v189 = ii;
                  v190 = v182;
                  v191 = v181;
                  do
                  {
                    --v189;
                    v192 = *--v190;
                    *v187 = v192;
                    LODWORD(v192) = *--v191;
                    *v188 = v192;
                    v187 = v190;
                    v188 = v191;
                  }

                  while (v189 > v184);
                  *(&__dst + v184) = v185;
                  *(&v696 + v184) = v186;
                  LOWORD(v93) = v670;
LABEL_301:
                  v181 += 4;
                  v182 += 8;
                }

                v193 = ~(1 << v696);
                v194 = v174 - 1;
                v195 = &v696 + 1;
                v196 = &__dst + 1;
                do
                {
                  v197 = *v196++;
                  if (1000 * (v197 - __dst) / __dst >= v662)
                  {
                    break;
                  }

                  v198 = *v195++;
                  v193 &= ~(1 << v198);
                  --v194;
                }

                while (v194);
                LOWORD(v94) = ~v193;
              }
            }

            else
            {
              LOWORD(v94) = 0;
              v33 = v664;
              LOBYTE(v26) = v665;
            }

            goto LABEL_140;
          }

          if (!v37)
          {
            goto LABEL_141;
          }

          v206 = v33[2];
          if (v206 < 1)
          {
            goto LABEL_141;
          }

          v207 = v206 > 3 ? 1 : 5;
          if (v171 <= v207 || (v51 - 6) < 0xFEu || ((0x61E7uLL >> v26) & 1) == 0)
          {
            goto LABEL_141;
          }

          v648 = *(&off_27A71DA88 + v26);
          v649 = *(&off_27A71DB20 + v26);
          v651 = v33[2];
          v208 = dword_277C3BEE4[v26];
          v209 = dword_277C3BF30[v26];
          v646 = ((0xA0E3uLL >> v26) & 1) == 0;
          v643 = ((0x14163uLL >> v26) & 1) == 0;
          v210 = byte_277C3CAFE[a7];
          v654 = *a2 + 8 * v15 * v210 + 8 * a6;
          v211 = 0x75F1CuLL >> v26;
          v212 = (0x75F1CuLL >> v26) & 1;
          v213 = (0x6BE9CuLL >> v26) & 1;
          v214 = v208 >> v212;
          v679 = v209;
          v663 = v209 >> v213;
          v215 = ((v209 >> v213) * (v208 >> v212));
          __memset_chk();
          v217 = 0;
          if (v211)
          {
            v218 = v654;
            v299 = v654;
            v220 = v679;
            v221 = v210;
            do
            {
              v300 = 0;
              v301 = &__dst + (v217 >> v213) * v214;
              do
              {
                *v301++ += *(v299 + 2 * v300) * *(v299 + 2 * v300) + *(v299 + 2 * v300 + 2) * *(v299 + 2 * v300 + 2);
                v300 += 2;
              }

              while (v300 < v208);
              ++v217;
              v299 += 2 * v210;
            }

            while (v217 != v679);
          }

          else
          {
            v218 = v654;
            v219 = v654;
            v220 = v679;
            v221 = v210;
            do
            {
              v222 = &__dst + ((v217 >> v213) * v214);
              v223 = v219;
              v224 = v208;
              do
              {
                v225 = *v223++;
                *v222++ += v225 * v225;
                --v224;
              }

              while (v224);
              ++v217;
              v219 += v210;
            }

            while (v217 != v679);
          }

          v302 = v208 >> v646;
          v303 = v220 >> v643;
          v13 = a8;
          if (v215 < 1)
          {
            goto LABEL_452;
          }

          v304 = 0;
          p_dst = &__dst;
          do
          {
            v306 = *p_dst++;
            v304 += v306;
            --v215;
          }

          while (v215);
          if (v304)
          {
            v644 = v208 >> v646;
            v647 = v303;
            v307 = v304;
            v308 = (v214 - 1);
            __memset_chk();
            v309 = (v663 - 1);
            __memset_chk();
            v310 = 0;
            if (v663 >= 2)
            {
              v311 = 0;
              v312 = &__dst;
              do
              {
                v313 = v712.f32[v311];
                if (v214 < 2)
                {
                  v318 = 0;
                }

                else
                {
                  v314 = v714;
                  v315 = v312;
                  v316 = (v214 - 1);
                  do
                  {
                    v317 = *v315++;
                    v314->f32[0] = v314->f32[0] + v317;
                    v314 = (v314 + 4);
                    v313 = v313 + v317;
                    --v316;
                  }

                  while (v316);
                  v318 = (v214 - 1);
                }

                v712.f32[v311] = v313 + *(&__dst + v311 * v214 + v318);
                ++v311;
                v312 += v214;
              }

              while (v311 != v309);
              v310 = v663 - 1;
            }

            v319 = 1.0 / v307;
            v220 = v679;
            v218 = v654;
            v302 = v644;
            v303 = v647;
            if (v214 >= 2)
            {
              v320 = &__dst + v310 * v214;
              v321 = v714;
              v322 = (v214 - 1);
              do
              {
                v323 = *v320++;
                v321->f32[0] = v321->f32[0] + v323;
                v321 = (v321 + 4);
                --v322;
              }

              while (v322);
              v324 = v714;
              do
              {
                v324->f32[0] = v319 * v324->f32[0];
                v324 = (v324 + 4);
                --v308;
              }

              while (v308);
            }

            v13 = a8;
            v325 = v651;
            if (v663 >= 2)
            {
              v326 = &v712;
              do
              {
                v326->f32[0] = v319 * v326->f32[0];
                v326 = (v326 + 4);
                --v309;
              }

              while (v309);
            }
          }

          else
          {
LABEL_452:
            v216.i32[0] = 1.0;
            if (v214 > 1)
            {
              v327 = 1.0 / v214;
              v328 = (v214 + 2) & 0xFFFFFFFC;
              v329 = vdupq_n_s64((v214 - 1) - 1);
              v330 = xmmword_277BB7090;
              v331 = xmmword_277BB70A0;
              v332 = &v714[0].f32[2];
              v333 = vdupq_n_s64(4uLL);
              do
              {
                v334 = vmovn_s64(vcgeq_u64(v329, v331));
                if (vuzp1_s16(v334, v216).u8[0])
                {
                  *(v332 - 2) = v327;
                }

                if (vuzp1_s16(v334, v216).i8[2])
                {
                  *(v332 - 1) = v327;
                }

                if (vuzp1_s16(v216, vmovn_s64(vcgeq_u64(v329, *&v330))).i32[1])
                {
                  *v332 = v327;
                  v332[1] = v327;
                }

                v330 = vaddq_s64(v330, v333);
                v331 = vaddq_s64(v331, v333);
                v332 += 4;
                v328 -= 4;
              }

              while (v328);
            }

            v325 = v651;
            if (v663 >= 2)
            {
              *v216.i32 = 1.0 / v663;
              v335 = (v663 + 2) & 0xFFFFFFFC;
              v336 = vdupq_n_s64((v663 - 1) - 1);
              v337 = xmmword_277BB7090;
              v338 = xmmword_277BB70A0;
              v339 = &v712.i64[1];
              v340 = vdupq_n_s64(4uLL);
              do
              {
                v341 = vmovn_s64(vcgeq_u64(v336, v338));
                if (vuzp1_s16(v341, v216).u8[0])
                {
                  *(v339 - 2) = v216.i32[0];
                }

                if (vuzp1_s16(v341, v216).i8[2])
                {
                  *(v339 - 1) = v216.i32[0];
                }

                if (vuzp1_s16(v216, vmovn_s64(vcgeq_u64(v336, *&v337))).i32[1])
                {
                  *v339 = v216.i32[0];
                  *(v339 + 1) = v216.i32[0];
                }

                v337 = vaddq_s64(v337, v340);
                v338 = vaddq_s64(v338, v340);
                v339 += 2;
                v335 -= 4;
              }

              while (v335);
            }
          }

          sub_277998798(v218, v221, v208, v220, &v714[0].f32[v302 - 1], &v712.f32[v303 - 1]);
          sub_2779D28B0(v714, v648, &v711);
          sub_2779D28B0(&v712, v649, v710.f32);
          v719.val[0] = vmulq_n_f32(v710, *&v711);
          v719.val[1] = vmulq_n_f32(v710, *(&v711 + 1));
          v719.val[2] = vmulq_n_f32(v710, *(&v711 + 2));
          v719.val[3] = vmulq_n_f32(v710, *(&v711 + 3));
          v342 = &__dst;
          vst4q_f32(v342, v719);
          sub_2779C9400(&__dst, &__dst);
          if (v51 == 4)
          {
            v344 = &unk_277BF1238 + 8 * v325 - 4;
            v16 = a4;
            v33 = v664;
            v26 = v665;
            v29 = v675;
            v84 = v668;
            v343 = v670;
          }

          else
          {
            v16 = a4;
            v33 = v664;
            v26 = v665;
            v29 = v675;
            v84 = v668;
            v343 = v670;
            if (v51 != 5)
            {
              v345 = 0;
LABEL_476:
              v346 = 0;
              v347 = 0;
              v348 = 0;
              v349 = 0;
              v350 = *(*(&off_27A71EB20 + v26) + v345);
              v707 = unk_277BEE638;
              v708 = xmmword_277BEE648;
              v709 = unk_277BEE658;
              v702 = xmmword_277BEE668;
              v703 = unk_277BEE678;
              v704 = xmmword_277BEE688;
              v351 = 0.0;
              v705 = unk_277BEE698;
              v706 = xmmword_277BEE628;
              v352 = 0.0;
              do
              {
                v353 = xmmword_277BEE5E8[v346];
                if (((1 << v353) & v343) != 0)
                {
                  v354 = *(&__dst + v346);
                  if (v354 > v352)
                  {
                    v348 = v346;
                    v352 = *(&__dst + v346);
                  }

                  if (v354 >= v350)
                  {
                    v349 |= 1 << v353;
                    v351 = v351 + v354;
                    *(&v702 + v347) = v354;
                    *(&v706 + v347++) = v353;
                  }
                }

                ++v346;
              }

              while (v346 != 16);
              v355 = 1 << xmmword_277BEE5E8[v348];
              if ((v349 & v355) != 0)
              {
                v356 = *(&v702 + 1);
                if (*&v702 >= *(&v702 + 1))
                {
                  v357 = *&v702;
                }

                else
                {
                  v357 = *(&v702 + 1);
                }

                if (*&v702 < *(&v702 + 1))
                {
                  v356 = *&v702;
                }

                v358 = v706;
                if (*&v702 >= *(&v702 + 1))
                {
                  v359 = v706;
                }

                else
                {
                  v359 = DWORD1(v706);
                }

                if (*&v702 >= *(&v702 + 1))
                {
                  v358 = DWORD1(v706);
                }

                if (*(&v702 + 2) >= *(&v702 + 3))
                {
                  v360 = *(&v702 + 2);
                }

                else
                {
                  v360 = *(&v702 + 3);
                }

                if (*(&v702 + 2) >= *(&v702 + 3))
                {
                  v361 = *(&v702 + 3);
                }

                else
                {
                  v361 = *(&v702 + 2);
                }

                if (*(&v702 + 2) >= *(&v702 + 3))
                {
                  v362 = DWORD2(v706);
                }

                else
                {
                  v362 = HIDWORD(v706);
                }

                if (*(&v702 + 2) >= *(&v702 + 3))
                {
                  v363 = HIDWORD(v706);
                }

                else
                {
                  v363 = DWORD2(v706);
                }

                LODWORD(v364) = v703;
                if (*&v703 >= *(&v703 + 1))
                {
                  v365 = *&v703;
                }

                else
                {
                  v365 = *(&v703 + 1);
                }

                if (*&v703 >= *(&v703 + 1))
                {
                  v364 = *(&v703 + 1);
                }

                v366 = DWORD1(v707);
                if (*&v703 >= *(&v703 + 1))
                {
                  v367 = v707;
                }

                else
                {
                  v367 = DWORD1(v707);
                }

                if (*&v703 < *(&v703 + 1))
                {
                  v366 = v707;
                }

                v368 = *(&v703 + 2);
                if (*(&v703 + 2) >= *(&v703 + 3))
                {
                  v369 = *(&v703 + 2);
                }

                else
                {
                  v369 = *(&v703 + 3);
                }

                if (*(&v703 + 2) >= *(&v703 + 3))
                {
                  v368 = *(&v703 + 3);
                }

                v370 = HIDWORD(v707);
                if (*(&v703 + 2) >= *(&v703 + 3))
                {
                  v371 = DWORD2(v707);
                }

                else
                {
                  v371 = HIDWORD(v707);
                }

                if (*(&v703 + 2) < *(&v703 + 3))
                {
                  v370 = DWORD2(v707);
                }

                if (v347 > 8)
                {
                  v419 = *&v704;
                  if (*&v704 >= *(&v704 + 1))
                  {
                    v420 = *&v704;
                  }

                  else
                  {
                    v420 = *(&v704 + 1);
                  }

                  if (*&v704 >= *(&v704 + 1))
                  {
                    v419 = *(&v704 + 1);
                  }

                  v421 = DWORD1(v708);
                  if (*&v704 >= *(&v704 + 1))
                  {
                    v422 = v708;
                  }

                  else
                  {
                    v422 = DWORD1(v708);
                  }

                  if (*&v704 < *(&v704 + 1))
                  {
                    v421 = v708;
                  }

                  v423 = *(&v704 + 2);
                  if (*(&v704 + 2) >= *(&v704 + 3))
                  {
                    v424 = *(&v704 + 2);
                  }

                  else
                  {
                    v424 = *(&v704 + 3);
                  }

                  if (*(&v704 + 2) >= *(&v704 + 3))
                  {
                    v423 = *(&v704 + 3);
                  }

                  v425 = HIDWORD(v708);
                  if (*(&v704 + 2) >= *(&v704 + 3))
                  {
                    v426 = DWORD2(v708);
                  }

                  else
                  {
                    v426 = HIDWORD(v708);
                  }

                  if (*(&v704 + 2) < *(&v704 + 3))
                  {
                    v425 = DWORD2(v708);
                  }

                  v427 = *&v705;
                  if (*&v705 >= *(&v705 + 1))
                  {
                    v428 = *&v705;
                  }

                  else
                  {
                    v428 = *(&v705 + 1);
                  }

                  if (*&v705 >= *(&v705 + 1))
                  {
                    v427 = *(&v705 + 1);
                  }

                  v429 = DWORD1(v709);
                  if (*&v705 >= *(&v705 + 1))
                  {
                    v430 = v709;
                  }

                  else
                  {
                    v430 = DWORD1(v709);
                  }

                  if (*&v705 < *(&v705 + 1))
                  {
                    v429 = v709;
                  }

                  v431 = *(&v705 + 2);
                  if (*(&v705 + 2) >= *(&v705 + 3))
                  {
                    v432 = *(&v705 + 2);
                  }

                  else
                  {
                    v432 = *(&v705 + 3);
                  }

                  if (*(&v705 + 2) >= *(&v705 + 3))
                  {
                    v431 = *(&v705 + 3);
                  }

                  v433 = HIDWORD(v709);
                  if (*(&v705 + 2) >= *(&v705 + 3))
                  {
                    v434 = DWORD2(v709);
                  }

                  else
                  {
                    v434 = HIDWORD(v709);
                  }

                  if (*(&v705 + 2) < *(&v705 + 3))
                  {
                    v433 = DWORD2(v709);
                  }

                  v435 = v357 < v360;
                  if (v357 >= v360)
                  {
                    v436 = v357;
                  }

                  else
                  {
                    v436 = v360;
                  }

                  if (v357 < v360)
                  {
                    v437 = v362;
                  }

                  else
                  {
                    v357 = v360;
                    v437 = v359;
                  }

                  if (!v435)
                  {
                    v359 = v362;
                  }

                  v438 = v356 < v361;
                  if (v356 >= v361)
                  {
                    v439 = v356;
                  }

                  else
                  {
                    v439 = v361;
                  }

                  if (v356 < v361)
                  {
                    v440 = v363;
                  }

                  else
                  {
                    v356 = v361;
                    v440 = v358;
                  }

                  if (!v438)
                  {
                    v358 = v363;
                  }

                  v441 = v365 < v369;
                  if (v365 >= v369)
                  {
                    v442 = v365;
                  }

                  else
                  {
                    v442 = v369;
                  }

                  if (v365 < v369)
                  {
                    v443 = v371;
                  }

                  else
                  {
                    v365 = v369;
                    v443 = v367;
                  }

                  if (!v441)
                  {
                    v367 = v371;
                  }

                  v444 = v364 < v368;
                  if (v364 >= v368)
                  {
                    v445 = v364;
                  }

                  else
                  {
                    v445 = v368;
                  }

                  if (v364 < v368)
                  {
                    v446 = v370;
                  }

                  else
                  {
                    v364 = v368;
                    v446 = v366;
                  }

                  if (!v444)
                  {
                    v366 = v370;
                  }

                  v447 = v420 < v424;
                  if (v420 >= v424)
                  {
                    v448 = v420;
                  }

                  else
                  {
                    v448 = v424;
                  }

                  if (v420 < v424)
                  {
                    v449 = v426;
                  }

                  else
                  {
                    v420 = v424;
                    v449 = v422;
                  }

                  if (!v447)
                  {
                    v422 = v426;
                  }

                  v450 = v419 < v423;
                  if (v419 >= v423)
                  {
                    v451 = v419;
                  }

                  else
                  {
                    v451 = v423;
                  }

                  if (v419 < v423)
                  {
                    v452 = v425;
                  }

                  else
                  {
                    v419 = v423;
                    v452 = v421;
                  }

                  if (!v450)
                  {
                    v421 = v425;
                  }

                  v453 = v428 < v432;
                  if (v428 >= v432)
                  {
                    v454 = v428;
                  }

                  else
                  {
                    v454 = v432;
                  }

                  if (v428 < v432)
                  {
                    v455 = v434;
                  }

                  else
                  {
                    v428 = v432;
                    v455 = v430;
                  }

                  if (!v453)
                  {
                    v430 = v434;
                  }

                  v456 = v427 < v431;
                  if (v427 >= v431)
                  {
                    v457 = v427;
                  }

                  else
                  {
                    v457 = v431;
                  }

                  if (v427 < v431)
                  {
                    v458 = v433;
                  }

                  else
                  {
                    v427 = v431;
                    v458 = v429;
                  }

                  if (!v456)
                  {
                    v429 = v433;
                  }

                  v459 = v439 < v357;
                  if (v439 >= v357)
                  {
                    v460 = v439;
                  }

                  else
                  {
                    v460 = v357;
                  }

                  if (v439 >= v357)
                  {
                    v461 = v440;
                  }

                  else
                  {
                    v357 = v439;
                    v461 = v359;
                  }

                  if (v459)
                  {
                    v359 = v440;
                  }

                  v462 = v445 < v365;
                  if (v445 >= v365)
                  {
                    v463 = v445;
                  }

                  else
                  {
                    v463 = v365;
                  }

                  if (v445 < v365)
                  {
                    v464 = v367;
                  }

                  else
                  {
                    v445 = v365;
                    v464 = v446;
                  }

                  if (v462)
                  {
                    v465 = v446;
                  }

                  else
                  {
                    v465 = v367;
                  }

                  v466 = v436 < v442;
                  if (v436 >= v442)
                  {
                    v467 = v436;
                  }

                  else
                  {
                    v467 = v442;
                  }

                  if (v436 < v442)
                  {
                    v468 = v443;
                  }

                  else
                  {
                    v436 = v442;
                    v468 = v437;
                  }

                  if (v466)
                  {
                    v469 = v437;
                  }

                  else
                  {
                    v469 = v443;
                  }

                  v470 = v356 < v364;
                  if (v356 >= v364)
                  {
                    v471 = v356;
                  }

                  else
                  {
                    v471 = v364;
                  }

                  if (v356 >= v364)
                  {
                    v472 = v358;
                  }

                  else
                  {
                    v364 = v356;
                    v472 = v366;
                  }

                  if (v470)
                  {
                    v366 = v358;
                  }

                  if (v451 >= v420)
                  {
                    v473 = v451;
                  }

                  else
                  {
                    v473 = v420;
                  }

                  if (v451 >= v420)
                  {
                    v474 = v420;
                  }

                  else
                  {
                    v474 = v451;
                  }

                  if (v451 >= v420)
                  {
                    v475 = v452;
                  }

                  else
                  {
                    v475 = v422;
                  }

                  if (v451 >= v420)
                  {
                    v476 = v422;
                  }

                  else
                  {
                    v476 = v452;
                  }

                  if (v457 >= v428)
                  {
                    v477 = v457;
                  }

                  else
                  {
                    v477 = v428;
                  }

                  if (v457 >= v428)
                  {
                    v478 = v428;
                  }

                  else
                  {
                    v478 = v457;
                  }

                  if (v457 >= v428)
                  {
                    v479 = v458;
                  }

                  else
                  {
                    v479 = v430;
                  }

                  if (v457 >= v428)
                  {
                    v480 = v430;
                  }

                  else
                  {
                    v480 = v458;
                  }

                  v481 = v448 < v454;
                  if (v448 >= v454)
                  {
                    v482 = v448;
                  }

                  else
                  {
                    v482 = v454;
                  }

                  if (v448 < v454)
                  {
                    v483 = v455;
                  }

                  else
                  {
                    v448 = v454;
                    v483 = v449;
                  }

                  if (v481)
                  {
                    v455 = v449;
                  }

                  v484 = v419 < v427;
                  if (v419 >= v427)
                  {
                    v485 = v419;
                  }

                  else
                  {
                    v485 = v427;
                  }

                  if (v419 < v427)
                  {
                    v486 = v429;
                  }

                  else
                  {
                    v419 = v427;
                    v486 = v421;
                  }

                  if (!v484)
                  {
                    v421 = v429;
                  }

                  v487 = v460 < v463;
                  if (v460 >= v463)
                  {
                    v488 = v460;
                  }

                  else
                  {
                    v488 = v463;
                  }

                  if (v460 >= v463)
                  {
                    v489 = v461;
                  }

                  else
                  {
                    v463 = v460;
                    v489 = v464;
                  }

                  if (v487)
                  {
                    v490 = v461;
                  }

                  else
                  {
                    v490 = v464;
                  }

                  v491 = v357 < v445;
                  if (v357 >= v445)
                  {
                    v492 = v357;
                  }

                  else
                  {
                    v492 = v445;
                  }

                  if (v357 >= v445)
                  {
                    v493 = v359;
                  }

                  else
                  {
                    v445 = v357;
                    v493 = v465;
                  }

                  if (v491)
                  {
                    v494 = v359;
                  }

                  else
                  {
                    v494 = v465;
                  }

                  v495 = v473 < v477;
                  if (v473 >= v477)
                  {
                    v496 = v473;
                  }

                  else
                  {
                    v496 = v477;
                  }

                  if (v473 >= v477)
                  {
                    v497 = v475;
                  }

                  else
                  {
                    v477 = v473;
                    v497 = v479;
                  }

                  if (v495)
                  {
                    v498 = v475;
                  }

                  else
                  {
                    v498 = v479;
                  }

                  v499 = v474 < v478;
                  if (v474 >= v478)
                  {
                    v500 = v474;
                  }

                  else
                  {
                    v500 = v478;
                  }

                  if (v474 >= v478)
                  {
                    v501 = v476;
                  }

                  else
                  {
                    v478 = v474;
                    v501 = v480;
                  }

                  if (v499)
                  {
                    v480 = v476;
                  }

                  if (v467 >= v482)
                  {
                    v502 = v467;
                  }

                  else
                  {
                    v502 = v482;
                  }

                  if (v467 >= v482)
                  {
                    v503 = v482;
                  }

                  else
                  {
                    v503 = v467;
                  }

                  if (v467 >= v482)
                  {
                    v504 = v468;
                  }

                  else
                  {
                    v504 = v483;
                  }

                  if (v467 >= v482)
                  {
                    v505 = v483;
                  }

                  else
                  {
                    v505 = v468;
                  }

                  v33 = v664;
                  LOBYTE(v26) = v665;
                  v506 = v364 < v419;
                  if (v364 >= v419)
                  {
                    v507 = v364;
                  }

                  else
                  {
                    v507 = v419;
                  }

                  if (v364 < v419)
                  {
                    v508 = v421;
                  }

                  else
                  {
                    v364 = v419;
                    v508 = v366;
                  }

                  if (!v506)
                  {
                    v366 = v421;
                  }

                  v509 = v488 < v436;
                  if (v488 >= v436)
                  {
                    v510 = v488;
                  }

                  else
                  {
                    v510 = v436;
                  }

                  if (v488 < v436)
                  {
                    v511 = v469;
                  }

                  else
                  {
                    v488 = v436;
                    v511 = v489;
                  }

                  if (v509)
                  {
                    v469 = v489;
                  }

                  v512 = v471 < v445;
                  if (v471 >= v445)
                  {
                    v513 = v471;
                  }

                  else
                  {
                    v513 = v445;
                  }

                  if (v471 >= v445)
                  {
                    v514 = v472;
                  }

                  else
                  {
                    v445 = v471;
                    v514 = v494;
                  }

                  if (v512)
                  {
                    v515 = v472;
                  }

                  else
                  {
                    v515 = v494;
                  }

                  v516 = v496 < v448;
                  if (v496 >= v448)
                  {
                    v517 = v496;
                  }

                  else
                  {
                    v517 = v448;
                  }

                  if (v496 >= v448)
                  {
                    v518 = v497;
                  }

                  else
                  {
                    v448 = v496;
                    v518 = v455;
                  }

                  if (v516)
                  {
                    v455 = v497;
                  }

                  v519 = v485 < v478;
                  if (v485 >= v478)
                  {
                    v520 = v485;
                  }

                  else
                  {
                    v520 = v478;
                  }

                  if (v485 < v478)
                  {
                    v521 = v480;
                  }

                  else
                  {
                    v485 = v478;
                    v521 = v486;
                  }

                  if (v519)
                  {
                    v480 = v486;
                  }

                  v522 = v492 < v488;
                  if (v492 >= v488)
                  {
                    v523 = v492;
                  }

                  else
                  {
                    v523 = v488;
                  }

                  if (v492 >= v488)
                  {
                    v524 = v493;
                  }

                  else
                  {
                    v488 = v492;
                    v524 = v469;
                  }

                  if (!v522)
                  {
                    v493 = v469;
                  }

                  v525 = v513 < v463;
                  if (v513 >= v463)
                  {
                    v526 = v513;
                  }

                  else
                  {
                    v526 = v463;
                  }

                  if (v513 >= v463)
                  {
                    v527 = v514;
                  }

                  else
                  {
                    v463 = v513;
                    v527 = v490;
                  }

                  if (v525)
                  {
                    v490 = v514;
                  }

                  if (v500 >= v448)
                  {
                    v528 = v500;
                  }

                  else
                  {
                    v528 = v448;
                  }

                  if (v500 >= v448)
                  {
                    v529 = v448;
                  }

                  else
                  {
                    v529 = v500;
                  }

                  if (v500 >= v448)
                  {
                    v530 = v501;
                  }

                  else
                  {
                    v530 = v455;
                  }

                  if (v500 < v448)
                  {
                    v455 = v501;
                  }

                  v531 = v520 < v477;
                  if (v520 >= v477)
                  {
                    v532 = v520;
                  }

                  else
                  {
                    v532 = v477;
                  }

                  if (v520 >= v477)
                  {
                    v533 = v521;
                  }

                  else
                  {
                    v477 = v520;
                    v533 = v498;
                  }

                  if (v531)
                  {
                    v498 = v521;
                  }

                  if (v510 >= v517)
                  {
                    v534 = v510;
                  }

                  else
                  {
                    v534 = v517;
                  }

                  if (v510 >= v517)
                  {
                    v535 = v517;
                  }

                  else
                  {
                    v535 = v510;
                  }

                  if (v510 >= v517)
                  {
                    v536 = v511;
                  }

                  else
                  {
                    v536 = v518;
                  }

                  if (v510 >= v517)
                  {
                    v537 = v518;
                  }

                  else
                  {
                    v537 = v511;
                  }

                  v538 = v445 < v485;
                  if (v445 >= v485)
                  {
                    v539 = v445;
                  }

                  else
                  {
                    v539 = v485;
                  }

                  if (v445 < v485)
                  {
                    v540 = v480;
                  }

                  else
                  {
                    v445 = v485;
                    v540 = v515;
                  }

                  if (v538)
                  {
                    v541 = v515;
                  }

                  else
                  {
                    v541 = v480;
                  }

                  if (v526 >= v488)
                  {
                    v542 = v526;
                  }

                  else
                  {
                    v542 = v488;
                  }

                  if (v526 >= v488)
                  {
                    v543 = v488;
                  }

                  else
                  {
                    v543 = v526;
                  }

                  if (v526 >= v488)
                  {
                    v544 = v527;
                  }

                  else
                  {
                    v544 = v493;
                  }

                  if (v526 < v488)
                  {
                    v493 = v527;
                  }

                  if (v532 >= v529)
                  {
                    v545 = v532;
                  }

                  else
                  {
                    v545 = v529;
                  }

                  if (v532 >= v529)
                  {
                    v546 = v529;
                  }

                  else
                  {
                    v546 = v532;
                  }

                  if (v532 >= v529)
                  {
                    v547 = v533;
                  }

                  else
                  {
                    v547 = v455;
                  }

                  if (v532 < v529)
                  {
                    v455 = v533;
                  }

                  v548 = v534 < v503;
                  if (v534 >= v503)
                  {
                    v549 = v534;
                  }

                  else
                  {
                    v549 = v503;
                  }

                  if (v534 >= v503)
                  {
                    v550 = v536;
                  }

                  else
                  {
                    v503 = v534;
                    v550 = v505;
                  }

                  if (v548)
                  {
                    v505 = v536;
                  }

                  *&v702 = __PAIR64__(LODWORD(v549), LODWORD(v502));
                  *&v706 = __PAIR64__(v550, v504);
                  v551 = v523 < v528;
                  if (v523 >= v528)
                  {
                    v552 = v523;
                  }

                  else
                  {
                    v552 = v528;
                  }

                  if (v523 < v528)
                  {
                    v553 = v530;
                  }

                  else
                  {
                    v523 = v528;
                    v553 = v524;
                  }

                  if (v551)
                  {
                    v554 = v524;
                  }

                  else
                  {
                    v554 = v530;
                  }

                  v29 = v675;
                  v555 = v463 < v477;
                  if (v463 >= v477)
                  {
                    v556 = v463;
                  }

                  else
                  {
                    v556 = v477;
                  }

                  if (v463 < v477)
                  {
                    v557 = v498;
                  }

                  else
                  {
                    v463 = v477;
                    v557 = v490;
                  }

                  if (!v555)
                  {
                    v490 = v498;
                  }

                  v558 = v507 < v445;
                  if (v507 >= v445)
                  {
                    v559 = v507;
                  }

                  else
                  {
                    v559 = v445;
                  }

                  if (v507 < v445)
                  {
                    v560 = v541;
                  }

                  else
                  {
                    v507 = v445;
                    v560 = v508;
                  }

                  if (!v558)
                  {
                    v508 = v541;
                  }

                  *(&v705 + 1) = __PAIR64__(LODWORD(v364), LODWORD(v507));
                  *(&v709 + 1) = __PAIR64__(v366, v508);
                  if (v542 >= v545)
                  {
                    v561 = v542;
                  }

                  else
                  {
                    v561 = v545;
                  }

                  if (v542 >= v545)
                  {
                    v562 = v545;
                  }

                  else
                  {
                    v562 = v542;
                  }

                  if (v542 >= v545)
                  {
                    v563 = v544;
                  }

                  else
                  {
                    v563 = v547;
                  }

                  if (v542 >= v545)
                  {
                    v564 = v547;
                  }

                  else
                  {
                    v564 = v544;
                  }

                  v84 = v668;
                  v565 = v552 < v503;
                  if (v552 >= v503)
                  {
                    v566 = v552;
                  }

                  else
                  {
                    v566 = v503;
                  }

                  if (v552 < v503)
                  {
                    v567 = v505;
                  }

                  else
                  {
                    v552 = v503;
                    v567 = v553;
                  }

                  if (!v565)
                  {
                    v553 = v505;
                  }

                  if (v543 >= v546)
                  {
                    v568 = v543;
                  }

                  else
                  {
                    v568 = v546;
                  }

                  if (v543 >= v546)
                  {
                    v569 = v546;
                  }

                  else
                  {
                    v569 = v543;
                  }

                  if (v543 >= v546)
                  {
                    v570 = v493;
                  }

                  else
                  {
                    v570 = v455;
                  }

                  if (v543 >= v546)
                  {
                    v571 = v455;
                  }

                  else
                  {
                    v571 = v493;
                  }

                  v572 = v559 < v463;
                  if (v559 >= v463)
                  {
                    v573 = v559;
                  }

                  else
                  {
                    v573 = v463;
                  }

                  if (v559 >= v463)
                  {
                    v574 = v560;
                  }

                  else
                  {
                    v463 = v559;
                    v574 = v490;
                  }

                  if (v572)
                  {
                    v490 = v560;
                  }

                  v575 = v561 < v523;
                  if (v561 >= v523)
                  {
                    v576 = v561;
                  }

                  else
                  {
                    v576 = v523;
                  }

                  if (v561 < v523)
                  {
                    v577 = v554;
                  }

                  else
                  {
                    v561 = v523;
                    v577 = v563;
                  }

                  if (!v575)
                  {
                    v563 = v554;
                  }

                  v578 = v556 < v569;
                  if (v556 >= v569)
                  {
                    v579 = v556;
                  }

                  else
                  {
                    v579 = v569;
                  }

                  if (v556 >= v569)
                  {
                    v580 = v557;
                  }

                  else
                  {
                    v569 = v556;
                    v580 = v571;
                  }

                  if (v578)
                  {
                    v571 = v557;
                  }

                  v581 = v576 < v535;
                  if (v576 >= v535)
                  {
                    v582 = v576;
                  }

                  else
                  {
                    v582 = v535;
                  }

                  if (v576 >= v535)
                  {
                    v583 = v577;
                  }

                  else
                  {
                    v535 = v576;
                    v583 = v537;
                  }

                  if (v581)
                  {
                    v537 = v577;
                  }

                  v584 = v539 < v569;
                  if (v539 >= v569)
                  {
                    v585 = v539;
                  }

                  else
                  {
                    v585 = v569;
                  }

                  if (v539 < v569)
                  {
                    v586 = v571;
                  }

                  else
                  {
                    v539 = v569;
                    v586 = v540;
                  }

                  if (!v584)
                  {
                    v540 = v571;
                  }

                  v587 = v582 < v552;
                  if (v582 >= v552)
                  {
                    v588 = v582;
                  }

                  else
                  {
                    v588 = v552;
                  }

                  if (v582 >= v552)
                  {
                    v589 = v583;
                  }

                  else
                  {
                    v552 = v582;
                    v589 = v553;
                  }

                  if (v587)
                  {
                    v553 = v583;
                  }

                  *(&v702 + 1) = __PAIR64__(LODWORD(v588), LODWORD(v566));
                  *(&v706 + 1) = __PAIR64__(v589, v567);
                  v590 = v573 < v539;
                  if (v573 >= v539)
                  {
                    v591 = v573;
                  }

                  else
                  {
                    v591 = v539;
                  }

                  if (v573 >= v539)
                  {
                    v592 = v574;
                  }

                  else
                  {
                    v539 = v573;
                    v592 = v540;
                  }

                  if (v590)
                  {
                    v540 = v574;
                  }

                  *&v705 = __PAIR64__(LODWORD(v463), LODWORD(v539));
                  *&v709 = __PAIR64__(v490, v540);
                  v593 = v579 < v535;
                  if (v579 >= v535)
                  {
                    v594 = v579;
                  }

                  else
                  {
                    v594 = v535;
                  }

                  if (v579 >= v535)
                  {
                    v595 = v580;
                  }

                  else
                  {
                    v535 = v579;
                    v595 = v537;
                  }

                  if (v593)
                  {
                    v537 = v580;
                  }

                  v596 = v585 < v561;
                  if (v585 >= v561)
                  {
                    v597 = v585;
                  }

                  else
                  {
                    v597 = v561;
                  }

                  if (v585 >= v561)
                  {
                    v598 = v586;
                  }

                  else
                  {
                    v561 = v585;
                    v598 = v563;
                  }

                  if (!v596)
                  {
                    v586 = v563;
                  }

                  v599 = v568 < v552;
                  if (v568 >= v552)
                  {
                    v600 = v568;
                  }

                  else
                  {
                    v600 = v552;
                  }

                  if (v568 >= v552)
                  {
                    v601 = v570;
                  }

                  else
                  {
                    v552 = v568;
                    v601 = v553;
                  }

                  if (!v599)
                  {
                    v570 = v553;
                  }

                  v602 = v591 < v562;
                  if (v591 >= v562)
                  {
                    v603 = v591;
                  }

                  else
                  {
                    v603 = v562;
                  }

                  if (v591 >= v562)
                  {
                    v604 = v592;
                  }

                  else
                  {
                    v562 = v591;
                    v604 = v564;
                  }

                  if (v602)
                  {
                    v564 = v592;
                  }

                  v605 = v594 < v552;
                  if (v594 >= v552)
                  {
                    v606 = v594;
                  }

                  else
                  {
                    v606 = v552;
                  }

                  if (v594 < v552)
                  {
                    v607 = v570;
                  }

                  else
                  {
                    v594 = v552;
                    v607 = v595;
                  }

                  if (v605)
                  {
                    v570 = v595;
                  }

                  *&v703 = __PAIR64__(LODWORD(v606), LODWORD(v600));
                  *&v707 = __PAIR64__(v607, v601);
                  v608 = v603 < v561;
                  if (v603 >= v561)
                  {
                    v609 = v603;
                  }

                  else
                  {
                    v609 = v561;
                  }

                  if (v603 >= v561)
                  {
                    v610 = v604;
                  }

                  else
                  {
                    v561 = v603;
                    v610 = v586;
                  }

                  if (!v608)
                  {
                    v604 = v586;
                  }

                  *(&v704 + 1) = __PAIR64__(LODWORD(v562), LODWORD(v561));
                  *(&v708 + 1) = __PAIR64__(v564, v604);
                  if (v597 >= v594)
                  {
                    v611 = v597;
                  }

                  else
                  {
                    v611 = v594;
                  }

                  if (v597 >= v594)
                  {
                    v612 = v594;
                  }

                  else
                  {
                    v612 = v597;
                  }

                  if (v597 >= v594)
                  {
                    v613 = v598;
                  }

                  else
                  {
                    v613 = v570;
                  }

                  if (v597 < v594)
                  {
                    v570 = v598;
                  }

                  v614 = v609 < v535;
                  if (v609 >= v535)
                  {
                    v615 = v609;
                  }

                  else
                  {
                    v615 = v535;
                  }

                  if (v609 >= v535)
                  {
                    v616 = v610;
                  }

                  else
                  {
                    v535 = v609;
                    v616 = v537;
                  }

                  if (!v614)
                  {
                    v610 = v537;
                  }

                  if (v615 >= v612)
                  {
                    v617 = v615;
                  }

                  else
                  {
                    v617 = v612;
                  }

                  *(&v703 + 1) = __PAIR64__(LODWORD(v617), LODWORD(v611));
                  if (v615 >= v612)
                  {
                    v618 = v612;
                  }

                  else
                  {
                    v618 = v615;
                  }

                  *&v704 = __PAIR64__(LODWORD(v535), LODWORD(v618));
                  if (v615 >= v612)
                  {
                    v619 = v616;
                  }

                  else
                  {
                    v619 = v570;
                  }

                  *(&v707 + 1) = __PAIR64__(v619, v613);
                  if (v615 >= v612)
                  {
                    v620 = v570;
                  }

                  else
                  {
                    v620 = v616;
                  }

                  *&v708 = __PAIR64__(v610, v620);
                }

                else
                {
                  v372 = v357 < v360;
                  if (v357 >= v360)
                  {
                    v373 = v357;
                  }

                  else
                  {
                    v373 = v360;
                  }

                  if (v357 < v360)
                  {
                    v374 = v362;
                  }

                  else
                  {
                    v357 = v360;
                    v374 = v359;
                  }

                  if (!v372)
                  {
                    v359 = v362;
                  }

                  v375 = v356 < v361;
                  if (v356 >= v361)
                  {
                    v376 = v356;
                  }

                  else
                  {
                    v376 = v361;
                  }

                  if (v356 < v361)
                  {
                    v377 = v363;
                  }

                  else
                  {
                    v356 = v361;
                    v377 = v358;
                  }

                  if (!v375)
                  {
                    v358 = v363;
                  }

                  v378 = v365 < v369;
                  if (v365 >= v369)
                  {
                    v379 = v365;
                  }

                  else
                  {
                    v379 = v369;
                  }

                  if (v365 < v369)
                  {
                    v380 = v371;
                  }

                  else
                  {
                    v365 = v369;
                    v380 = v367;
                  }

                  if (!v378)
                  {
                    v367 = v371;
                  }

                  v381 = v364 < v368;
                  if (v364 >= v368)
                  {
                    v382 = v364;
                  }

                  else
                  {
                    v382 = v368;
                  }

                  if (v364 < v368)
                  {
                    v383 = v370;
                  }

                  else
                  {
                    v364 = v368;
                    v383 = v366;
                  }

                  if (!v381)
                  {
                    v366 = v370;
                  }

                  v384 = v376 < v357;
                  if (v376 >= v357)
                  {
                    v385 = v376;
                  }

                  else
                  {
                    v385 = v357;
                  }

                  if (v376 >= v357)
                  {
                    v386 = v377;
                  }

                  else
                  {
                    v357 = v376;
                    v386 = v359;
                  }

                  if (v384)
                  {
                    v359 = v377;
                  }

                  v387 = v382 < v365;
                  if (v382 >= v365)
                  {
                    v388 = v382;
                  }

                  else
                  {
                    v388 = v365;
                  }

                  if (v382 >= v365)
                  {
                    v389 = v383;
                  }

                  else
                  {
                    v365 = v382;
                    v389 = v367;
                  }

                  if (v387)
                  {
                    v367 = v383;
                  }

                  v390 = v373 < v379;
                  if (v373 >= v379)
                  {
                    v391 = v373;
                  }

                  else
                  {
                    v391 = v379;
                  }

                  if (v373 >= v379)
                  {
                    v392 = v374;
                  }

                  else
                  {
                    v379 = v373;
                    v392 = v380;
                  }

                  if (v390)
                  {
                    v380 = v374;
                  }

                  v393 = v356 < v364;
                  if (v356 >= v364)
                  {
                    v394 = v356;
                  }

                  else
                  {
                    v394 = v364;
                  }

                  if (v356 >= v364)
                  {
                    v395 = v358;
                  }

                  else
                  {
                    v364 = v356;
                    v395 = v366;
                  }

                  if (v393)
                  {
                    v366 = v358;
                  }

                  v396 = v385 < v388;
                  if (v385 >= v388)
                  {
                    v397 = v385;
                  }

                  else
                  {
                    v397 = v388;
                  }

                  if (v385 < v388)
                  {
                    v398 = v389;
                  }

                  else
                  {
                    v385 = v388;
                    v398 = v386;
                  }

                  if (!v396)
                  {
                    v386 = v389;
                  }

                  v399 = v357 < v365;
                  if (v357 >= v365)
                  {
                    v400 = v357;
                  }

                  else
                  {
                    v400 = v365;
                  }

                  if (v357 >= v365)
                  {
                    v401 = v359;
                  }

                  else
                  {
                    v365 = v357;
                    v401 = v367;
                  }

                  if (v399)
                  {
                    v367 = v359;
                  }

                  v402 = v397 < v379;
                  if (v397 >= v379)
                  {
                    v403 = v397;
                  }

                  else
                  {
                    v403 = v379;
                  }

                  if (v397 < v379)
                  {
                    v404 = v380;
                  }

                  else
                  {
                    v397 = v379;
                    v404 = v398;
                  }

                  if (!v402)
                  {
                    v398 = v380;
                  }

                  *&v702 = __PAIR64__(LODWORD(v403), LODWORD(v391));
                  *&v706 = __PAIR64__(v404, v392);
                  v405 = v394 < v365;
                  if (v394 >= v365)
                  {
                    v406 = v394;
                  }

                  else
                  {
                    v406 = v365;
                  }

                  if (v394 >= v365)
                  {
                    v407 = v395;
                  }

                  else
                  {
                    v365 = v394;
                    v407 = v367;
                  }

                  if (v405)
                  {
                    v367 = v395;
                  }

                  *(&v703 + 1) = __PAIR64__(LODWORD(v364), LODWORD(v365));
                  *(&v707 + 1) = __PAIR64__(v366, v367);
                  v408 = v400 < v397;
                  if (v400 >= v397)
                  {
                    v409 = v400;
                  }

                  else
                  {
                    v409 = v397;
                  }

                  if (v400 >= v397)
                  {
                    v410 = v401;
                  }

                  else
                  {
                    v397 = v400;
                    v410 = v398;
                  }

                  if (v408)
                  {
                    v398 = v401;
                  }

                  v411 = v406 < v385;
                  if (v406 >= v385)
                  {
                    v412 = v406;
                  }

                  else
                  {
                    v412 = v385;
                  }

                  if (v406 >= v385)
                  {
                    v413 = v407;
                  }

                  else
                  {
                    v385 = v406;
                    v413 = v386;
                  }

                  if (v411)
                  {
                    v386 = v407;
                  }

                  if (v412 >= v397)
                  {
                    v414 = v412;
                  }

                  else
                  {
                    v414 = v397;
                  }

                  *(&v702 + 1) = __PAIR64__(LODWORD(v414), LODWORD(v409));
                  if (v412 >= v397)
                  {
                    v415 = v397;
                  }

                  else
                  {
                    v415 = v412;
                  }

                  *&v703 = __PAIR64__(LODWORD(v385), LODWORD(v415));
                  if (v412 >= v397)
                  {
                    v416 = v413;
                  }

                  else
                  {
                    v416 = v398;
                  }

                  *(&v706 + 1) = __PAIR64__(v416, v410);
                  if (v412 >= v397)
                  {
                    v417 = v398;
                  }

                  else
                  {
                    v417 = v413;
                  }

                  *&v707 = __PAIR64__(v386, v417);
                }

                if ((v325 & 0xFC) == 0)
                {
                  goto LABEL_1212;
                }

                if (v347 < 1)
                {
                  LODWORD(v621) = 0;
                }

                else
                {
                  v621 = 0;
                  v622 = 0.0;
                  v623 = 0.0;
                  v624 = 100.0 / v351;
                  while (v622 <= 30.0 || v621 <= 1)
                  {
                    v623 = v623 + *(&v702 + v621);
                    v622 = v624 * v623;
                    if (v347 == ++v621)
                    {
                      goto LABEL_1212;
                    }
                  }
                }

                if (v621 < v347)
                {
                  v621 = v621;
                  v626 = v347;
                  do
                  {
                    v418 = &v706;
                    v349 &= ~(1 << *(&v706 + v621++));
                  }

                  while (v626 != v621);
                }

                else
                {
LABEL_1212:
                  v418 = &v706;
                }
              }

              else
              {
                LOWORD(v349) = v349 | v355;
                v418 = xmmword_277BEE5E8;
              }

              v627 = v418[1];
              v696 = *v418;
              v697 = v627;
              v628 = v418[3];
              v698 = v418[2];
              v699 = v628;
              LOWORD(v93) = v349;
              goto LABEL_141;
            }

            v344 = &unk_277BF1238 + 8 * v325 - 8;
          }

          v345 = *v344;
          goto LABEL_476;
        }

        v44 = 0;
      }

      v33 = v664;
      goto LABEL_120;
    }

    goto LABEL_34;
  }

  v31 = 1;
LABEL_13:
  v32 = 1;
  v33 = v664;
LABEL_148:
  v96 = v687 >> v23;
  v97 = v692;
  if ((*(*(a2 + 8376) + 192) & 8) != 0)
  {
    v98 = 1 << (2 * *(a2 + 11072) - 16);
    v29 = (v29 + (v98 >> 1)) >> (2 * *(a2 + 11072) - 16);
    v97 = (v692 + (v98 >> 1)) >> (2 * *(a2 + 11072) - 16);
    v692 = v97;
  }

  v99 = 16 * v29;
  v677 = v21 | a11 | (v96 * v96 * v33[3] < v97);
  v100 = v33[7];
  if (!v100 || v97 < v33[5] || ((0x61810uLL >> v26) & 1) != 0)
  {
    v634 = 0;
    v638 = 0;
  }

  else
  {
    v101 = v31 ^ 1;
    if (v100 != 1)
    {
      v101 = 1;
    }

    if (v101)
    {
      v634 = 0;
      v638 = v31;
    }

    else
    {
      if (*(a2 + 116284) == 1)
      {
        v634 = 0;
        v30 = 1;
      }

      else
      {
        if (v32 == 1)
        {
          v30 = 0;
        }

        v634 = v30;
      }

      v638 = v30;
    }
  }

  v650 = v96;
  v653 = v682[4];
  v712 = 0uLL;
  v713 = 0;
  v717 = 0;
  __dst = 0u;
  v716 = 0u;
  result = sub_277A91270(a1 + 245616, a2, v13, 0, &v712);
  v102 = 0;
  v661 = 0;
  v103 = 0;
  v640 = 0;
  v104 = *v660;
  LODWORD(__dst) = ((0x61E18uLL >> v665) & 1) + ((0x1810uLL >> v665) & 1);
  BYTE4(__dst) = v13;
  DWORD2(v716) = v104;
  HIDWORD(v716) = v677 == 0;
  LODWORD(v717) = v677 != 0;
  *&v716 = 0;
  *(&__dst + 1) = 0;
  v685 = v32;
  v674 = a2 + 136 * a3;
  v105 = 16 * v16;
  v106 = a2 + 11108;
  v636 = v712.u8[1] - 17;
  v642 = 1 - __dst;
  v645 = __dst - 1;
  v688 = 0x7FFFFFFFFFFFFFFFLL;
  v107.f64[0] = NAN;
  v107.f64[1] = NAN;
  v669 = vnegq_f64(v107);
  v671 = v712.u8[1];
  v633 = &off_27A722620 + 32 * v712.u8[1];
  v635 = (v13 - 17);
  while (1)
  {
    v108 = *(&v696 + 4 * v102);
    if (v108 == 255 || ((v685 >> v108) & 1) == 0)
    {
      goto LABEL_229;
    }

    v712.i8[0] = *(&v696 + 4 * v102);
    if (*(a1 + 264592) == 1 && !*(v106 + 4 * (*(v659 + 167) & 7)))
    {
      *(&__dst + 1) = sub_277AA3E6C(a1 + 246232, a2 + 416, a3, a8, v108);
      v106 = a2 + 11108;
      v13 = a8;
      *&v716 = sub_277AA3DE0(a1 + 246232, a2 + 416, a3, a8, v108);
    }

    if (!a3)
    {
      *(*(a2 + 8328) + v641) = v108;
    }

    *(v714 + 8) = v669;
    *(&v714[1] + 8) = xmmword_277BB7270;
    v714[0].i64[0] = 0x7FFFFFFFLL;
    if (v31)
    {
      sub_277ADCA70(*v682 + 8 * (a6 + byte_277C3CAFE[a7] * a5), v682[3] + 4 * v105, byte_277C3CAFE[a7], &v712);
    }

    else
    {
      if (v671 <= 0xC && ((1 << v671) & 0x1810) != 0)
      {
        v109 = 4096;
      }

      else if (v636 >= 2)
      {
        v109 = 4 * dword_277BFE7FC[v671];
      }

      else
      {
        v109 = 2048;
      }

      v110 = (*(v674 + 24) + 4 * v105);
      bzero(v110, v109);
      *v110 = (v657 * word_277BFC7E0[v671]) >> 12;
      v16 = a4;
    }

    if (!v677)
    {
      v111 = v664[4];
      if (v111 != -1)
      {
        if (v13 <= 0xC && ((1 << v13) & 0x1810) != 0)
        {
          v112 = 1008;
        }

        else if (v635 >= 2)
        {
          v112 = dword_277BFE7FC[v665] - 16;
        }

        else
        {
          v112 = 496;
        }

        v113 = *(v674 + 24);
        v114 = (v113 + 4 * v105);
        if (v31)
        {
          v115 = vaddq_s32(vabsq_s32(v114[1]), vabsq_s32(*v114));
          v116 = vaddq_s32(vabsq_s32(v114[3]), vabsq_s32(v114[2]));
          if (v112)
          {
            v117 = (v113 + 4 * v105 + 112);
            do
            {
              v115 = vaddq_s32(vaddq_s32(vabsq_s32(v117[-3]), v115), vabsq_s32(v117[-1]));
              v116 = vaddq_s32(vaddq_s32(vabsq_s32(v117[-2]), v116), vabsq_s32(*v117));
              v117 += 4;
              v112 -= 16;
            }

            while (v112);
          }

          v118 = vaddvq_s32(vaddq_s32(v115, v116));
        }

        else
        {
          v118 = v114->i32[0];
          if (v114->i32[0] < 0)
          {
            v118 = -v118;
          }
        }

        v119 = *v660;
        v120 = v118 << v645;
        v121 = v118 >> v642;
        if (((0x61E18uLL >> v665) & 1) + ((0x1810uLL >> v665) & 1) > 1)
        {
          v121 = v120;
        }

        v122 = v121 >> (*(a2 + 11072) - 8);
        v123 = dword_277BF1260[v665];
        LODWORD(__dst) = ((0x61E18uLL >> v665) & 1) + ((0x1810uLL >> v665) & 1);
        v124 = v111 * v650 * v123;
        BYTE4(__dst) = v13;
        v125 = v124 >= v122;
        v126 = v124 < v122;
        v127 = v125;
        *(&v716 + 1) = __PAIR64__(v127, v119);
        LODWORD(v717) = v126;
        *(&__dst + 1) = 0;
        *&v716 = 0;
      }
    }

    sub_277A91114(a2, a3, v16, &v712, &__dst);
    v13 = a8;
    if (HIDWORD(v716))
    {
      result = sub_277A8E454(a1, a2, a3, v16, a8, v108, a9, &v693);
      v128 = v693;
    }

    else
    {
      result = sub_277B316E4();
      v128 = result;
      v693 = result;
    }

    if (v688 < (*(a2 + 16920) * v128 + 256) >> 9)
    {
      v16 = a4;
      goto LABEL_229;
    }

    if (!*(v653 + 2 * a4))
    {
      v714[1].i64[1] = v99;
      v714[0].i64[1] = v99;
      result = v99;
      goto LABEL_222;
    }

    if ((v31 & 1) == 0)
    {
      v714[1].i64[1] = v99;
      result = sub_277A41C98();
      v714[0].i64[1] = result;
      goto LABEL_222;
    }

    if (v638)
    {
      sub_277A3DF98(a2, a3, a4, a8, *(&__dst + 1), v633[2 * v108], &v714[0].i64[1], &v714[1].i64[1]);
      result = v714[0].i64[1];
      goto LABEL_222;
    }

    v129 = dword_277BFE7FC[v665] << 14;
    if (a8 != 4 && v99 < v129)
    {
      v130 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_216;
    }

    sub_277A3DF98(a2, a3, a4, a8, *(&__dst + 1), v633[2 * v108], &v714[0].i64[1], &v714[1].i64[1]);
    if (a8 != 4 || v99 < v129)
    {
      v130 = v714[0].i64[1];
LABEL_216:
      result = sub_277A41C98();
      if (result <= v130)
      {
        v131 = v130;
      }

      else
      {
        v131 = result;
      }

      if (v99 >= v129)
      {
        result = v131;
      }

      goto LABEL_221;
    }

    v130 = v714[0].i64[1];
    if (v714[1].i64[1] > 2 * (v99 - v714[1].i64[1]))
    {
      goto LABEL_216;
    }

    result = v714[0].i64[1] + v99 - v714[1].i64[1];
LABEL_221:
    v106 = a2 + 11108;
    v714[0].i64[1] = result;
    v714[1].i64[1] = v99;
    v13 = a8;
LABEL_222:
    v132 = *(a2 + 16920);
    v714[0].i32[0] = v128;
    v133 = ((v132 * v128 + 256) >> 9) + (result << 7);
    if (v133 >= v688)
    {
      v16 = a4;
    }

    else
    {
      v134 = v714[1];
      *a13 = v714[0];
      *(a13 + 16) = v134;
      *(a13 + 32) = v714[2].i64[0];
      v16 = a4;
      v640 = *(v682[5] + a4);
      v661 = *(v682[4] + 2 * a4);
      v135 = v682[1];
      v682[1] = v658;
      v658 = v135;
      v103 = v108;
      v688 = v133;
    }

    v136 = v681[8];
    if (v136 && v688 - (v688 >> v136) > a12)
    {
      goto LABEL_230;
    }

    if (v681[3] && !v661)
    {
      break;
    }

LABEL_229:
    if (++v102 == 16)
    {
      goto LABEL_230;
    }
  }

  v661 = 0;
LABEL_230:
  *(a13 + 32) = v661 == 0;
  if (!a3)
  {
    v137 = *(a2 + 8336);
    *(*(a2 + 8328) + a6 + v137 * a5) = v103;
    v138 = *&byte_277BFDBA0[4 * v665];
    v139 = *&byte_277BFDB54[4 * v665];
    if ((0x41010uLL >> v665) & 1) != 0 || ((0x20810uLL >> v665))
    {
      v140 = 0;
      v141 = a6 + v137 * a5;
      v142 = 4 * v137;
      do
      {
        v143 = 0;
        do
        {
          *(*(a2 + 8328) + v141 + v143) = v103;
          v143 += 4;
        }

        while (v143 < v138);
        v140 += 4;
        v141 += v142;
      }

      while (v140 < v139);
    }
  }

  *(v682[5] + v16) = v640;
  *(v682[4] + 2 * v16) = v661;
  v682[1] = v658;
  v144 = v634;
  if (!v661)
  {
    v144 = 0;
  }

  if (v144 == 1)
  {
    result = sub_277A41C98();
    *(a13 + 8) = result;
    *(a13 + 24) = v99;
  }

  v145 = **(a2 + 8280);
  v146 = *(v145 + 167);
  if ((v146 & 0x80) != 0)
  {
    goto LABEL_252;
  }

  if (!v661)
  {
    goto LABEL_252;
  }

  if (v145[16] > 0)
  {
    goto LABEL_252;
  }

  v147 = *&byte_277BFDB54[4 * v665];
  if (v147 + a5 >= byte_277C36D60[a7] && *&byte_277BFDBA0[4 * v665] + a6 >= byte_277C3F990[a7])
  {
    goto LABEL_252;
  }

  v148 = v105;
  v149 = a2 + 136 * a3;
  v151 = *(v149 + 32);
  v150 = (v149 + 32);
  if (!*(v151 + 2 * v16))
  {
    goto LABEL_251;
  }

  if (*(a2 + 11108 + 4 * (v146 & 7)))
  {
    v152 = 0;
    goto LABEL_249;
  }

  if (!a3)
  {
    v152 = v145[145];
    if (((0x61810uLL >> v152) & 1) == 0)
    {
      v153 = *(*(a2 + 8328) + a6 + *(a2 + 8336) * a5);
      goto LABEL_250;
    }

LABEL_249:
    v153 = 0;
    goto LABEL_250;
  }

  v152 = byte_277C3BD80[byte_277C3BCDE[4 * *v145 + 2 * *(a2 + 2608 * a3 + 436) + *(a2 + 2608 * a3 + 440)]];
  if (v152 > 0x10)
  {
    if (v152 == 17)
    {
      v152 = 9;
    }

    else if (v152 == 18)
    {
      v152 = 10;
    }
  }

  else if ((v152 - 11) < 2 || v152 == 4)
  {
    v152 = 3;
  }

  if ((0x61810uLL >> v152))
  {
    goto LABEL_249;
  }

  v249 = byte_277BFC848[byte_277C32971[v145[3]]];
  if ((0x18608uLL >> v152))
  {
    v250 = 0;
  }

  else if (*(a1 + 246117))
  {
    v250 = 2;
  }

  else
  {
    v250 = byte_277C3C219[(0x60604uLL >> v152) & 1];
  }

  if (dword_277BFC858[16 * v250 + v249])
  {
    v153 = v249;
  }

  else
  {
    v153 = 0;
  }

LABEL_250:
  result = sub_277A4C8A0(a2 + 416, *(a2 + 136 * a3 + 8) + 4 * v148, v153, v152, *(a2 + 2608 * a3 + 448) + 4 * (a6 + *(a2 + 2608 * a3 + 472) * a5), *(a2 + 2608 * a3 + 472));
LABEL_251:
  if (!a3)
  {
    if (v103)
    {
      if (!*(*v150 + 2 * v16))
      {
        v199 = *(a2 + 8336);
        *(*(a2 + 8328) + a6 + v199 * a5) = 0;
        v200 = *&byte_277BFDBA0[4 * v665];
        if ((0x41010uLL >> v665) & 1) != 0 || ((0x20810uLL >> v665))
        {
          v201 = 0;
          v202 = a6 + v199 * a5;
          v203 = 4 * v199;
          do
          {
            v204 = 0;
            do
            {
              *(*(a2 + 8328) + v202 + v204) = 0;
              v204 += 4;
            }

            while (v204 < v200);
            v201 += 4;
            v202 += v203;
          }

          while (v201 < v147);
        }
      }
    }
  }

LABEL_252:
  v682[1] = v637;
  return result;
}

uint64_t sub_277A41C98()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v47 = v3;
  v5 = v4;
  v53 = v0;
  v56 = *MEMORY[0x277D85DE8];
  v7 = v4 + 136 * v6;
  v9 = byte_277C393B1[v8];
  v52 = byte_277C3CAFE[v9];
  v10 = v52;
  v46 = v9;
  v11 = byte_277C3CAE8[v9];
  v50 = v8;
  v51 = v11;
  v12 = *(v7 + 72);
  v13 = v6;
  v48 = v4 + 432;
  v14 = v4 + 432 + 2608 * v6;
  v15 = *(v14 + 40);
  v17 = v16;
  v19 = v18;
  v49 = *(v7 + 48);
  v20 = (*(v14 + 16) + 4 * (v16 + v15 * v18));
  v21 = *(v7 + 8);
  if ((*(*(v5 + 8376) + 192) & 8) != 0)
  {
    v22 = v55 >> 1;
    sub_277BB3B5C(2 * v20, v15, v55, 64, v52, v11);
  }

  else
  {
    v22 = v55;
    sub_277BB3A8C(v20, v15, v55, 64, v52, v11);
  }

  v23 = **(v5 + 8280);
  v24 = *(v23 + 167);
  if (*(v5 + 4 * (v24 & 7) + 11108) || ((0x61810uLL >> v50) & 1) != 0)
  {
    v27 = 0;
  }

  else if (v13)
  {
    if ((v24 & 0x80) != 0 || *(v23 + 16) > 0)
    {
      v25 = *(*(v5 + 8328) + (v17 << *(v5 + 3044)) + *(v5 + 8336) * (v19 << *(v5 + 3048)));
      v26 = (v24 & 0x80) != 0 || *(v23 + 16) > 0;
    }

    else
    {
      v26 = 0;
      v25 = byte_277BFC848[byte_277C32971[*(v23 + 3)]];
    }

    if (((0x18608uLL >> v50) & 1) == 0)
    {
      if (*(v53 + 246117))
      {
        if (v26)
        {
          LOBYTE(v26) = 1;
        }

        else
        {
          LOBYTE(v26) = 2;
        }
      }

      else
      {
        LOBYTE(v26) = byte_277C3C219[2 * v26 + ((0x60604uLL >> v50) & 1)];
      }
    }

    if (dword_277BFC858[16 * v26 + v25])
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = *(*(v5 + 8328) + v17 + *(v5 + 8336) * v19);
  }

  sub_277A4C8A0(v5 + 416, v21 + 64 * v2, v27, v50, v22, 64);
  v28 = v48 + 2608 * v13;
  v29 = *(v5 + 8352);
  if (v29 < 0)
  {
    v30 = (v29 >> (*(v28 + 8) + 3)) - 4 * v19 + byte_277C3CAE8[v47];
    if (v30 >= v11)
    {
      v31 = v11;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= 0)
    {
      v11 = v31;
    }

    else
    {
      v11 = 0;
    }
  }

  v32 = v49 + 4 * (v17 + v12 * v19);
  v33 = *(v5 + 8344);
  if (v33 < 0)
  {
    v34 = (v33 >> (*(v28 + 4) + 3)) - 4 * v17 + byte_277C3CAFE[v47];
    if (v34 >= v52)
    {
      v35 = v52;
    }

    else
    {
      v35 = v34;
    }

    if (v34 >= 0)
    {
      v10 = v35;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v11 == v51 && v10 == v52)
  {
    v54 = 0;
    (*(*v53 + (v46 << 7) + 51464))(v32, v12, v22, 64, &v54);
    LODWORD(v36) = v54;
  }

  else if ((*(*(v5 + 8376) + 192) & 8) != 0)
  {
    if (v11 < 1)
    {
      v41 = 0;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = 2 * v22;
      v43 = 2 * v32;
      do
      {
        if (v10 >= 1)
        {
          v44 = 0;
          do
          {
            v41 += (*(v43 + v44) - *(v42 + v44)) * (*(v43 + v44) - *(v42 + v44));
            v44 += 2;
          }

          while (2 * v10 != v44);
        }

        v42 += 128;
        ++v40;
        v43 += 2 * v12;
      }

      while (v40 != v11);
    }

    v36 = (v41 + ((1 << (2 * *(v5 + 11072) - 16)) >> 1)) >> (2 * *(v5 + 11072) - 16);
  }

  else if (v11 < 1)
  {
    LODWORD(v36) = 0;
  }

  else
  {
    LODWORD(v36) = 0;
    for (i = 0; i != v11; ++i)
    {
      if (v10 >= 1)
      {
        for (j = 0; j != v10; ++j)
        {
          v39 = *(v32 + j) - *(v22 + j);
          LODWORD(v36) = v36 + v39 * v39;
        }
      }

      v32 += v12;
      v22 += 64;
    }
  }

  return (16 * v36);
}

void sub_277A42130(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, uint64_t a5, double a6, double a7, double a8, double a9, int32x4_t a10)
{
  v184[4] = *MEMORY[0x277D85DE8];
  v13 = (a1 + 396172);
  *a3 = 0x7FFFFFFFLL;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  *(a3 + 2) = v15;
  v159 = a3 + 2;
  *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 32) = 0;
  if (a5 == 0x7FFFFFFFFFFFFFFFLL || (v16 = *(a1 + 396224)) == 0)
  {
    v29 = a4;
    goto LABEL_33;
  }

  v160 = (a1 + 396172);
  v17 = *(a2 + 436);
  v18 = *(a2 + 440);
  v19 = byte_277C3BCDE[4 * a4 + 2 * v17 + v18];
  v169 = *(**(a2 + 8280) + 16);
  v20 = *(a2 + 8352);
  v21 = ((v20 >> (v18 + 3)) + byte_277C3CAE8[v19]) & ~(((v20 >> (v18 + 3)) + byte_277C3CAE8[v19]) >> 31);
  if (v20 < 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = byte_277C3CAE8[v19];
  }

  v23 = *(a2 + 8344);
  v24 = ((v23 >> (v17 + 3)) + byte_277C3CAFE[v19]) & ~(((v23 >> (v17 + 3)) + byte_277C3CAFE[v19]) >> 31);
  if (v23 < 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = byte_277C3CAFE[v19];
  }

  v26 = *(a2 + 11072);
  if ((*(*(a2 + 8376) + 192) & 8) != 0)
  {
    sub_277B2F1E0(*(a2 + 48), *(a2 + 72), *(a2 + 448), *(a2 + 472), v25, v22, v15.f64[0], a7, a8, a9, a10);
    v28 = 0;
  }

  else
  {
    v27 = off_280ABCBE0(*(a2 + 48), *(a2 + 72), *(a2 + 448), *(a2 + 472), v25, v22);
    v28 = (*(*(a2 + 8376) + 192) & 8) == 0;
  }

  v30 = a2 + 153176;
  v31 = (v27 + ((1 << (2 * v26 - 16)) >> 1)) >> (2 * v26 - 16);
  if (v28)
  {
    LOBYTE(v32) = 3;
    if (v31)
    {
      goto LABEL_15;
    }

LABEL_29:
    v42 = 0;
LABEL_32:
    v29 = a4;
    *(v30 + 4 * v169) = v42;
    v13 = v160;
    goto LABEL_33;
  }

  v32 = *(a2 + 11072) - 5;
  if (!v31)
  {
    goto LABEL_29;
  }

LABEL_15:
  v33 = *(*(a2 + 128) + 2) >> v32;
  if (v33 <= 1)
  {
    v33 = 1;
  }

  v34 = (v25 * v22);
  v35 = v31 / v34;
  v36 = log2(v35 / (v33 * v33));
  *&v174 = 0;
  v184[0] = 0.0;
  sub_277A8B128(v19, &v174, v184, v35, v36);
  v37 = 0.0;
  if (*&v174 * v34 >= 0.0)
  {
    v38 = *&v174 * v34;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = (v38 + 0.5);
  if (!v39)
  {
    goto LABEL_30;
  }

  if (v35 * v184[0] * v34 >= 0.0)
  {
    v37 = v35 * v184[0] * v34;
  }

  v40 = ((v37 + 0.5) << 7) + ((*(a2 + 16920) * v39 + 256) >> 9);
  if (v40 >= v31 << 11)
  {
LABEL_30:
    v42 = -1;
    if (v31 < 0xFFFFFFFFLL)
    {
      v42 = v31;
    }

    goto LABEL_32;
  }

  v41 = -1;
  if (v31 < 0xFFFFFFFFLL)
  {
    v41 = v31;
  }

  *(v30 + 4 * v169) = v41;
  v13 = v160;
  v29 = a4;
  if (a5 >= (v40 * *(&unk_277BEE360 + v16 - 1)) >> 3)
  {
LABEL_33:
    v43 = *(a2 + 416);
    if (v43 < *(a2 + 8256) || v43 + byte_277C36D60[v29] >= *(a2 + 8260) || (v44 = *(a2 + 420), v44 < *(a2 + 8264)) || v44 + byte_277C3F990[v29] >= *(a2 + 8268))
    {
      v50 = 0;
      v47 = 0;
      v158 = 0;
      v45 = 1 << (byte_277C3BCB6[v29] - 4);
    }

    else
    {
      v45 = 1 << (byte_277C3BCB6[v29] - 4);
      if (v13[21])
      {
        v46 = a4 + 32 * off_280AB5FE0(*(a2 + 153104) + 16968, *a2, 2 * byte_277C3CAE8[v29] * byte_277C3CAFE[v29]);
        v47 = *(a2 + 153104);
        v158 = v46;
        if (a5 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v48 = *(v47 + 16964);
          if (v48 >= 1)
          {
            v49 = *(v47 + 16960);
            v50 = 1;
            while (1)
            {
              v51 = v49 <= 0 ? -(-v49 & 7) : v49 & 7;
              if (*(v47 + 2120 * v51 + 2112) == v46)
              {
                break;
              }

              ++v49;
              if (!--v48)
              {
                goto LABEL_48;
              }
            }

            if (v51 != -1)
            {
              v112 = v47 + 2120 * v51;
              v113 = **(a2 + 8280);
              *(v113 + 145) = *v112;
              memcpy((a2 + 151049), (v112 + 17), v45);
              *(v113 + 146) = *(v112 + 1);
              memcpy(*(a2 + 8328), (v112 + 1041), v45);
              v114 = *(v112 + 2104);
              v115 = *(v112 + 2088);
              *a3 = *(v112 + 2072);
              *(a3 + 1) = v115;
              *(a3 + 4) = v114;
              return;
            }
          }
        }

        v50 = 1;
      }

      else
      {
        v50 = 0;
        v47 = 0;
        v158 = 0;
      }
    }

LABEL_48:
    if (*(a2 + 151020) && sub_277A42FC8())
    {
      sub_277A4332C(a2, a3, a4, 0);
      if (!v50)
      {
        return;
      }

      v52 = *(v47 + 16964);
      v53 = *(v47 + 16960);
      if (v52 > 7)
      {
        v65 = (v53 + 1) & 7;
        if (v53 + 1 <= 0)
        {
          v65 = -(-(v53 + 1) & 7);
        }

        *(v47 + 16960) = v65;
      }

      else
      {
        v54 = v53 + v52;
        v55 = v54 & 7;
        v57 = -v54;
        v56 = v57 < 0;
        v58 = v57 & 7;
        if (v56)
        {
          v53 = v55;
        }

        else
        {
          v53 = -v58;
        }

        *(v47 + 16964) = v52 + 1;
      }

      v66 = v47 + 2120 * v53;
      v67 = **(a2 + 8280);
      *(v66 + 2112) = v158;
      *v66 = *(v67 + 145);
      v68 = v45;
      goto LABEL_71;
    }

    if (a5)
    {
      v150 = v45;
      v148 = v50;
      v59 = a5;
      if (a5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v59 = a5;
        if (*(a2 + 151012))
        {
          if ((a5 ^ 0x7FFFFFFFFFFFFFFFLL) <= a5 >> 3)
          {
            v60 = 0;
          }

          else
          {
            v60 = a5 >> 3;
          }

          v59 = v60 + a5;
        }
      }

      v165 = *(a2 + 151012) != 0;
      v61 = byte_277C3F990[v29];
      v157 = v29;
      v62 = byte_277C36D60[v29];
      v63 = *(a2 + 552);
      v156 = *(a2 + 151012);
      memcpy(__dst, *(a2 + 544), v61);
      memcpy(v179, v63, v62);
      __n = v61;
      __memcpy_chk();
      v152 = v62;
      __memcpy_chk();
      v64 = v156;
      if (v156 != 2)
      {
        if (a4 - 13 <= 2 && *v13)
        {
          v64 = 2;
        }

        else
        {
          v72 = 768;
          if (v62 == v61)
          {
            v72 = 764;
          }

          v64 = *(a1 + 395392 + v72);
        }
      }

      v164 = v64;
      v73 = v157;
      v170 = byte_277C3BD80[v157];
      v74 = *(a2 + 8304);
      v75 = *(a2 + 8296);
      if (v74)
      {
        v76 = *(v74 + 144);
      }

      else
      {
        v76 = 0;
      }

      v77 = *&byte_277BFDB54[4 * v170];
      v167 = *&byte_277BFDBA0[4 * v170];
      v151 = a5;
      v149 = v47;
      v147 = v47 + 0x4000;
      if (v75)
      {
        v78 = *(v75 + 144);
      }

      else
      {
        v78 = 0;
      }

      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = v167 * v77;
      v85 = (a2 + 35968 + 8 * (v78 + v76));
      v86 = *(a2 + 16920);
      v162 = *v85;
      v163 = v85[1];
      v87 = (v86 * v163 + 256) >> 9;
      v88 = (v86 * v162 + 256) >> 9;
      *a3 = 0;
      *v159 = 0;
      v159[1] = 0;
      *(a3 + 32) = 1;
      v89 = byte_277C3CAE8[v157];
      v159[2] = 0;
      v90.f64[0] = NAN;
      v90.f64[1] = NAN;
      v161 = vnegq_f64(v90);
      v154 = v89;
      v155 = v77;
LABEL_82:
      v91 = *(a2 + 8352);
      v92 = v89;
      if (v91 < 0)
      {
        v92 = (v91 >> (*(a2 + 440) + 3)) + v89;
      }

      if (v83 < v92 >> 2)
      {
        v93 = 0;
        v94 = byte_277C3CAFE[v73];
        while (1)
        {
          v95 = *(a2 + 8344);
          v96 = v94;
          if (v95 < 0)
          {
            v96 = (v95 >> (*(a2 + 436) + 3)) + v94;
          }

          if (v93 >= v96 >> 2)
          {
            v89 = v154;
            v83 += v155;
            v73 = v157;
            goto LABEL_82;
          }

          if (v87 >= v88)
          {
            v97 = v88;
          }

          else
          {
            v97 = v87;
          }

          v98 = v59 - v97;
          LODWORD(v184[0]) = 1;
          v176 = 0;
          if (v59 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v98 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v174 = 0u;
          v175 = 0u;
          sub_277A43538(a1, a2, v83, v93, v82, v170, v164, a4, __dst, v179, v178, v177, &v174, 0x7FFFFFFFFFFFFFFFLL, v98, v184, v165);
          if (!LODWORD(v184[0]) || v174 == 0x7FFFFFFF)
          {
            break;
          }

          v99 = *a3;
          if (v99 == 0x7FFFFFFF)
          {
            *(a3 + 2) = v161;
            v79 = 0x7FFFFFFFFFFFFFFFLL;
            *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
            *(a3 + 32) = 0;
            a3[1] = 0;
            v81 = 0x7FFFFFFF;
            v80 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            if (v99 + v174 >= 0x7FFFFFFF)
            {
              v81 = 0x7FFFFFFF;
            }

            else
            {
              v81 = v99 + v174;
            }

            *a3 = v81;
            if (!a3[1])
            {
              a3[1] = DWORD1(v174);
            }

            v79 = *(a3 + 1) + *(&v174 + 1);
            *(a3 + 1) = v79;
            v100 = *(a3 + 3);
            v80 = 0x7FFFFFFFFFFFFFFFLL;
            if (v100 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v80 = *(a3 + 3);
              if (*(&v175 + 1) != 0x7FFFFFFFFFFFFFFFLL)
              {
                v80 = *(&v175 + 1) + v100;
                *(a3 + 3) = *(&v175 + 1) + v100;
              }
            }

            *(a3 + 32) &= v176;
          }

          v101 = *(a2 + 16920);
          v87 = ((v101 * v163 + 256) >> 9) + (v80 << 7);
          v88 = ((v101 * (v81 + v162) + 256) >> 9) + (v79 << 7);
          v82 += v84;
          v93 += v167;
        }

        *a3 = 0x7FFFFFFF;
LABEL_110:
        v102.f64[0] = NAN;
        v102.f64[1] = NAN;
        *(a3 + 2) = vnegq_f64(v102);
        *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
        *(a3 + 32) = 0;
        goto LABEL_111;
      }

      if (v81 == 0x7FFFFFFF)
      {
        goto LABEL_111;
      }

      v104 = v87 <= v88;
      *(a3 + 32) = v104;
      if (v156)
      {
        v106 = v149;
        v105 = v150;
        v107 = v158;
        v108 = v148;
        v109 = v147;
        if (v13[14])
        {
          if ((v151 & 0x8000000000000000) == 0)
          {
            *a3 = 0;
            v159[1] = 0;
            v159[2] = 0;
            *v159 = 0;
            *(a3 + 32) = 1;
            if (*(a2 + 4 * (*(**(a2 + 8280) + 167) & 7) + 11108))
            {
              v110 = 0;
            }

            else
            {
              v110 = v170;
            }

            v171 = *&byte_277BFDBA0[4 * v110];
            if (*(a2 + 151012) == 2 || a4 - 13 <= 2 && *v13)
            {
              v111 = 2;
            }

            else
            {
              v116 = 768;
              if (v62 == __n)
              {
                v116 = 764;
              }

              v111 = *(a1 + 395392 + v116);
            }

            v166 = *&byte_277BFDB54[4 * v110];
            v117 = *(a2 + 552);
            memcpy(v184, *(a2 + 544), __n);
            memcpy(v183, v117, v152);
            __memcpy_chk();
            __memcpy_chk();
            v118 = 0;
            v119 = 0;
            v120 = 0;
            v121.f64[0] = NAN;
            v121.f64[1] = NAN;
            v168 = vnegq_f64(v121);
LABEL_132:
            v122 = 0;
            while (1)
            {
              v174 = 0u;
              v175 = 0u;
              v176 = 1;
              sub_277A4483C(a1, a2, v119, v122, v120, v110, a4, v111, v184, v183, v182, v181, v151 - v118, &v174);
              v123 = v174;
              if (v174 == 0x7FFFFFFF)
              {
                break;
              }

              v124 = *a3;
              if (v124 == 0x7FFFFFFF)
              {
                v104 = 0;
                *(a3 + 2) = v168;
                v79 = 0x7FFFFFFFFFFFFFFFLL;
                *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
                *(a3 + 32) = 0;
                a3[1] = 0;
                v81 = 0x7FFFFFFF;
                v80 = 0x7FFFFFFFFFFFFFFFLL;
                v125 = *(&v174 + 1);
              }

              else
              {
                v126 = v124 + v174;
                if (v126 >= 0x7FFFFFFF)
                {
                  v81 = 0x7FFFFFFF;
                }

                else
                {
                  v81 = v126;
                }

                *a3 = v81;
                if (!a3[1])
                {
                  a3[1] = DWORD1(v174);
                }

                v125 = *(&v174 + 1);
                v79 = *(a3 + 1) + *(&v174 + 1);
                *(a3 + 1) = v79;
                v127 = *(a3 + 3);
                v80 = 0x7FFFFFFFFFFFFFFFLL;
                if (v127 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v80 = *(a3 + 3);
                  if (*(&v175 + 1) != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v80 = *(&v175 + 1) + v127;
                    *(a3 + 3) = *(&v175 + 1) + v127;
                  }
                }

                v104 = a3[8] & v176;
                *(a3 + 32) = v104;
              }

              v128 = *(a2 + 16920);
              v129 = ((v123 * v128 + 256) >> 9) + (v125 << 7);
              if (v129 >= ((SDWORD1(v174) * v128 + 256) >> 9) + (*(&v175 + 1) << 7))
              {
                v129 = ((SDWORD1(v174) * v128 + 256) >> 9) + (*(&v175 + 1) << 7);
              }

              v118 += v129;
              v120 = (v120 + v171 * v166);
              v122 = (v122 + v171);
              if (v122 >= __n)
              {
                v119 += v166;
                if (v119 < v152)
                {
                  goto LABEL_132;
                }

                v130 = *(a2 + 8304);
                v131 = *(a2 + 8296);
                if (v130)
                {
                  v130 = *(v130 + 144);
                }

                if (v131)
                {
                  v131 = *(v131 + 144);
                }

                v132 = (a2 + 35968 + 8 * (v131 + v130));
                v133 = *v132;
                v134 = ((v132[1] * v128 + 256) >> 9) + (v80 << 7);
                v135 = (((v133 + v81) * v128 + 256) >> 9) + (v79 << 7);
                if (v134 < v135)
                {
                  v81 = 0;
                  *a3 = 0;
                  *(a3 + 1) = v80;
                  v104 = 1;
                  *(a3 + 32) = 1;
                  v79 = v80;
                  v135 = v134;
                }

                if (v135 <= v151)
                {
                  break;
                }

                goto LABEL_156;
              }
            }
          }

          *a3 = 0x7FFFFFFFLL;
          goto LABEL_110;
        }
      }

      else
      {
LABEL_156:
        v106 = v149;
        v105 = v150;
        v107 = v158;
        v108 = v148;
        v109 = v147;
      }

      if (v104)
      {
        v136 = ((*(a2 + 16920) * v163 + 256) >> 9) + (v80 << 7);
      }

      else
      {
        v137 = v81 + v162;
        v138 = *(a2 + 16920);
        v136 = ((v138 * v137 + 256) >> 9) + (v79 << 7);
        if (!*(a2 + 4 * (*(**(a2 + 8280) + 167) & 7) + 11108))
        {
          v139 = ((v138 * v163 + 256) >> 9) + (v80 << 7);
          if (v136 >= v139)
          {
            v136 = v139;
          }
        }
      }

      if (v136 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (!v108)
        {
          return;
        }

        v140 = *(v109 + 580);
        v141 = *(v109 + 576);
        if (v140 > 7)
        {
          v146 = (v141 + 1) & 7;
          if (v141 + 1 <= 0)
          {
            v146 = -(-(v141 + 1) & 7);
          }

          *(v109 + 576) = v146;
        }

        else
        {
          v142 = v141 + v140;
          v143 = v142 & 7;
          v144 = -v142;
          v56 = v144 < 0;
          v145 = v144 & 7;
          if (v56)
          {
            v141 = v143;
          }

          else
          {
            v141 = -v145;
          }

          *(v109 + 580) = v140 + 1;
        }

        v66 = v106 + 2120 * v141;
        v67 = **(a2 + 8280);
        *(v66 + 2112) = v107;
        *v66 = *(v67 + 145);
        v68 = v105;
LABEL_71:
        v69 = v68;
        memcpy((v66 + 17), (a2 + 151049), v68);
        *(v66 + 1) = *(v67 + 146);
        memcpy((v66 + 1041), *(a2 + 8328), v69);
        v70 = *(a3 + 4);
        v71 = *(a3 + 1);
        *(v66 + 2072) = *a3;
        *(v66 + 2088) = v71;
        *(v66 + 2104) = v70;
        return;
      }
    }

LABEL_111:
    *a3 = 0x7FFFFFFFLL;
    v103.f64[0] = NAN;
    v103.f64[1] = NAN;
    *(a3 + 2) = vnegq_f64(v103);
    *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
    *(a3 + 32) = 0;
  }
}

BOOL sub_277A42FC8()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = v0;
  STACK[0x1058] = *MEMORY[0x277D85DE8];
  v8 = *(v0 + 16904);
  v9 = *(v0 + 11072);
  if (v8 >= 0xFF)
  {
    v10 = 255;
  }

  else
  {
    v10 = *(v0 + 16904);
  }

  if (v8 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  switch(v9)
  {
    case 8u:
      v12 = word_277BFDBFA;
      goto LABEL_13;
    case 0xCu:
      v12 = &unk_277BFDFFA;
      goto LABEL_13;
    case 0xAu:
      v12 = &unk_277BFDDFA;
LABEL_13:
      v13 = v12[v11];
      goto LABEL_15;
  }

  v13 = -1;
LABEL_15:
  v14 = byte_277C3CAFE[v1];
  v15 = byte_277C3CAE8[v1];
  v16 = sub_277A3D03C(v0, 0, 0, 0, v1, v1, 0);
  *v5 = v16;
  v17 = ((v13 >> 3) * (v13 >> 3)) >> 3;
  if (*(v7 + 151020) >= 2u)
  {
    return v16 <= v17;
  }

  if (v16 / v14 / v15 <= v17)
  {
    v19 = byte_277BEE368[v6];
    v20 = dword_277C3BF30[v19];
    v21 = dword_277C3BEE4[v19];
    v42 = 0;
    v43 = 0;
    v44 = 0;
    BYTE1(v42) = v19;
    v43 = __PAIR64__((*(*(v7 + 8376) + 192) >> 3) & 1, v9);
    v22 = **(v7 + 8280);
    v23 = (*(v22 + 167) & 0x80) != 0 || *(v22 + 16) > 0;
    if ((0x61810uLL >> v19))
    {
      LOBYTE(v23) = 0;
    }

    else if (((0x18608uLL >> v19) & 1) == 0)
    {
      if (v3)
      {
        if (v23)
        {
          LOBYTE(v23) = 1;
        }

        else
        {
          LOBYTE(v23) = 2;
        }
      }

      else
      {
        LOBYTE(v23) = byte_277C3C219[2 * v23 + ((0x60604uLL >> v19) & 1)];
      }
    }

    LOBYTE(v44) = v23;
    v24 = 1;
    if (v9 != 10)
    {
      v24 = 2;
    }

    v25 = *v7;
    v26 = (v21 * v20);
    if (v9 == 8)
    {
      v24 = 0;
    }

    v27 = dword_277BEE380[22 * v24 + v6];
    switch(v9)
    {
      case 8u:
        v28 = word_277BFE1FA;
        break;
      case 0xCu:
        v28 = &unk_277BFE5FA;
        break;
      case 0xAu:
        v28 = &unk_277BFE3FA;
        break;
      default:
        v29 = -1;
        goto LABEL_41;
    }

    v29 = v28[v11];
LABEL_41:
    v30 = 0;
    v31 = v27 * v13;
    v32 = v27 * v29;
    v40 = v20;
    v39 = v20 * v14;
LABEL_42:
    v41 = v30;
    v33 = 0;
    while (1)
    {
      sub_277ADCA70(v25 + 2 * v33, &v45, v14, &v42);
      v34 = v45;
      if (v45 < 0)
      {
        v34 = -v45;
      }

      if (v31 <= v34 << 7)
      {
        break;
      }

      v35 = v26 - 1;
      v36 = &v46;
      if (v26 >= 2)
      {
        do
        {
          v38 = *v36++;
          v37 = v38;
          if (v38 < 0)
          {
            v37 = -v37;
          }

          if (v32 <= v37 << 7)
          {
            return 0;
          }
        }

        while (--v35);
      }

      v33 += v21;
      if (v33 >= v14)
      {
        v25 += 2 * v39;
        v30 = v41 + v40;
        if (v41 + v40 < v15)
        {
          goto LABEL_42;
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_277A4332C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = **(a1 + 8280);
  v9 = byte_277C3BCB6[a3] - 4;
  v10 = 1 << (byte_277C3BCB6[a3] - 4);
  v11 = byte_277C3BD80[a3];
  bzero(*(a1 + 8328), v10);
  *(v8 + 161) = v11;
  *(v8 + 153) = 0x101010101010101 * v11;
  *(v8 + 145) = 0x101010101010101 * v11;
  if (v9 != 31)
  {
    v12 = (a1 + 151049);
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    do
    {
      *v12++ |= 1u;
      --v13;
    }

    while (v13);
  }

  *(a2 + 32) = 1;
  if ((*(*(a1 + 8376) + 192) & 8) != 0)
  {
    a4 = (((1 << (2 * *(a1 + 11072) - 16)) >> 1) + a4) >> (2 * *(a1 + 11072) - 16);
  }

  *(a2 + 24) = 16 * a4;
  *(a2 + 8) = 16 * a4;
  v14 = byte_277C36D60[a3];
  v15 = *(a1 + 552);
  memcpy(__dst, *(a1 + 544), byte_277C3F990[a3]);
  memcpy(v18, v15, v14);
  LODWORD(v14) = (byte_277C3BE70[v11] + byte_277C3BE83[v11] + 1) >> 1;
  v17 = 0;
  result = sub_277A3D9E4(a3, v11, 0, __dst, v18, &v17);
  *a2 = (byte_277C3CAFE[a3] >> dword_277C31584[v11]) * *(a1 + 7552 * v14 + 8 * v17 + 47580) * (byte_277C3CAE8[a3] >> dword_277C3BE98[v11]);
  return result;
}

uint64_t sub_277A43538(uint64_t result, uint64_t a2, int a3, int a4, int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int *a13, uint64_t a14, uint64_t a15, _DWORD *a16, char a17)
{
  v18 = a15;
  v19 = a13;
  v240 = *MEMORY[0x277D85DE8];
  *a13 = 0;
  *(a13 + 1) = 0;
  *(a13 + 2) = 0;
  *(a13 + 3) = 0;
  *(a13 + 32) = 1;
  if (a15 < 0)
  {
    *a16 = 0;
    return result;
  }

  v20 = a6;
  v22 = a3;
  v23 = a2;
  v24 = (result + 396196);
  v25 = (a11 + a4);
  v26 = (a12 + a3);
  v27 = a6;
  v28 = dword_277C3BEE4[a6];
  *__c = dword_277C3BF30[a6];
  if (a6)
  {
    v29 = ***(a2 + 8280);
    v30 = byte_277C3CAFE[v29];
    v31 = byte_277C3CAE8[v29];
    if (v30 <= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    v33 = 63;
    if (v32 <= 31)
    {
      if (v32 == 8)
      {
        v35 = 0;
        v34 = 1;
        goto LABEL_17;
      }

      if (v32 == 16)
      {
        v34 = 2;
        v35 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v34 = 4;
      v35 = 1;
      if (v32 == 128 || v32 == 64)
      {
LABEL_17:
        if (byte_277C3BE83[a6] == v34)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        v33 = (3 * (v37 - 2 * v34) + 24);
        goto LABEL_21;
      }

      if (v32 == 32)
      {
        v34 = 3;
        goto LABEL_17;
      }
    }

LABEL_21:
    v36 = (*v26 < dword_277C3BF30[a6]) + (*v25 < v28) + v33;
    goto LABEL_22;
  }

  v36 = 0;
LABEL_22:
  v189 = v22;
  v38 = a4;
  v193 = a6;
  v202 = dword_277C3BEE4[a6];
  v203 = a8;
  v192 = **(a2 + 8280);
  __b = v26;
  v186 = v25;
  v204 = result;
  if (*(result + 272080) & 1) == 0 && ((0x61810uLL >> a6))
  {
    v39 = 0;
    if (a6)
    {
      v72 = a7 < 2;
    }

    else
    {
      v72 = 0;
    }

    v71 = v72;
    v41 = v71;
  }

  else
  {
    v39 = *(result + 272082) & 1 | (v28 == __c[0]);
    if (a6)
    {
      v40 = a7 < 2;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    if (v40 && *(result + 272082) & 1 | (v28 == __c[0]))
    {
      if (*(result + 396232) < 1)
      {
        goto LABEL_58;
      }

      v206 = *(result + 396232);
      v207 = v36;
      v198 = v41;
      v200 = (result + 396196);
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = byte_277C3CAFE[a8];
      v190 = v22;
      v47 = (*a2 + 2 * (4 * v22 * v46) + 8 * a4);
      v48 = (__c[0] >> (__c[0] >= v28));
      v49 = v28 >> (v28 >= __c[0]);
      v211 = 2 * byte_277C3CAFE[a8] * v48;
      v50 = 0.0;
      v51 = 0.0;
      v52 = 0.0;
      v53 = 0.0;
      do
      {
        v216 = v47;
        v219 = v42;
        v54 = 0;
        do
        {
          v55 = v45;
          LODWORD(v222) = 0;
          v224.i64[0] = 0;
          sub_2779F4F00(v47, v46, v49, v48, &v222, &v224);
          v43 += v222;
          v56 = v222 / (v49 * v48);
          v57 = v224.i64[0] / (v49 * v48);
          v58 = v57 - (v56 * v56);
          v44 += v224.i64[0];
          v52 = v52 + v56;
          v53 = v53 + (v56 * v56);
          v51 = v51 + v58;
          v50 = v50 + (v58 * v58);
          v45 = v55 + 1;
          v54 += v49;
          v47 = (v47 + 2 * v49);
        }

        while (v202 > v54);
        v42 = v219 + v48;
        v47 = (v216 + v211);
      }

      while ((v219 + v48) < *__c);
      if (v55 <= 0)
      {
        v68 = 0.0;
        v70 = 0.0;
      }

      else
      {
        v59 = v43 / (__c[0] * v202);
        v60 = v44 / (__c[0] * v202);
        v61 = v60 - (v59 * v59);
        v62 = v50 + (v61 * v61);
        v63 = v51 + v61;
        v64 = v55 + 2;
        v65 = (v53 + (v59 * v59)) / (v55 + 2);
        v66 = v65 - (((v52 + v59) / 5.0) * ((v52 + v59) / 5.0));
        v67 = sqrtf(v66);
        v40 = v66 <= 0.0;
        v68 = 0.0;
        if (!v40)
        {
          v68 = v67;
        }

        v69 = v62 / v64;
        v70 = v69 - ((v63 / v64) * (v63 / v64));
      }

      v19 = a13;
      v23 = a2;
      v22 = v190;
      v27 = v193;
      v38 = a4;
      v18 = a15;
      v36 = v207;
      v20 = a6;
      v73 = *(a2 + 128);
      v74 = *v73 >> 3;
      v75 = v73[1] >> 3;
      v76 = dword_277BB7CC0[v206];
      a8 = v203;
      if (v68 <= v74)
      {
        v24 = v200;
        v41 = v198;
        if ((v70 * dword_277BB7CD0[v206]) <= (v75 * v75))
        {
          v41 = 0;
        }
      }

      else
      {
        v24 = v200;
        v41 = v198;
      }

      if (v68 <= (v76 * v74) || v70 <= (v75 * v75 * v76))
      {
LABEL_58:
        v71 = 1;
        v39 = 1;
      }

      else
      {
        v39 = 0;
        v71 = 1;
      }
    }

    else
    {
      v71 = v41;
    }
  }

  if (v24[92] && v41 && *(v23 + 153208))
  {
    v77 = 0;
    v78 = 0x7FFFFFFFFFFFFFFFLL;
    v79 = 16;
    v80 = 1;
    if (*(*(v23 + 32) + 2 * a5) || !v39)
    {
      goto LABEL_101;
    }
  }

  else if (!v39)
  {
    v77 = 0;
    v78 = 0x7FFFFFFFFFFFFFFFLL;
    v79 = 16;
    v80 = v41;
    goto LABEL_101;
  }

  v220 = v71;
  v199 = v41;
  v201 = v24;
  v208 = v36;
  v217 = byte_277C3F990[a8];
  v81 = byte_277C3BE70[v27] + byte_277C3BE83[v27] + 1;
  v82 = a8;
  v83 = v81 >> 1;
  v222 = 0;
  v84 = v18;
  v85 = v23;
  sub_277A3D9E4(a8, v20, 0, (a9 + v38), (a10 + v189), &v222);
  v86 = v82;
  v87 = *(v85 + 7552 * v83 + 8 * v222 + 47580);
  v19[1] = v87;
  *(v192 + (a4 >> byte_277BFC806[v86]) + (v22 >> byte_277BFC81C[v86] << byte_277BFC832[v86]) + 146) = v20;
  *&v226 = 0;
  v224 = 0u;
  v225 = 0u;
  v180 = v84;
  v88 = v84;
  v89 = v86;
  sub_277A3EA88(v204, v85, 0, a5, v22, a4, v86, v20, &v222, a17, 0, v180, &v224);
  v90 = *v19;
  if (v90 == 0x7FFFFFFF || v224.i32[0] == 0x7FFFFFFF)
  {
    v91 = 0x7FFFFFFF;
    *v19 = 0x7FFFFFFFLL;
    v92.f64[0] = NAN;
    v92.f64[1] = NAN;
    *(v19 + 2) = vnegq_f64(v92);
    v93 = 0x7FFFFFFFFFFFFFFFLL;
    *(v19 + 3) = 0x7FFFFFFFFFFFFFFFLL;
    *(v19 + 32) = 0;
    v23 = a2;
    if (*(a2 + 4 * (*(v192 + 167) & 7) + 11108))
    {
      v94 = 0;
      v27 = v193;
      v38 = a4;
      v18 = v88;
      v36 = v208;
      v24 = v201;
      v95 = v220;
      LODWORD(a8) = v89;
      result = v217;
      goto LABEL_91;
    }

    v96 = -128;
    v38 = a4;
    v18 = v88;
    v36 = v208;
    v24 = v201;
    v95 = v220;
    LODWORD(a8) = v89;
    result = v217;
  }

  else
  {
    v97 = v224.i32[0] + v90;
    v91 = 0x7FFFFFFF;
    if (v97 < 0x7FFFFFFF)
    {
      v91 = v97;
    }

    *v19 = v91;
    if (!v19[1])
    {
      v19[1] = v224.i32[1];
    }

    v98 = *(v19 + 1) + v224.i64[1];
    *(v19 + 1) = v98;
    v99 = *(v19 + 3);
    v93 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = a2;
    v38 = a4;
    v18 = v88;
    v36 = v208;
    v95 = v220;
    LODWORD(a8) = v89;
    result = v217;
    if (v99 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v93 = *(v19 + 3);
      if (*(&v225 + 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v93 = *(&v225 + 1) + v99;
        *(v19 + 3) = *(&v225 + 1) + v99;
      }
    }

    v100 = (v19[8] & v226);
    *(v19 + 32) &= v226;
    v24 = v201;
    if (*(a2 + 4 * (*(v192 + 167) & 7) + 11108))
    {
      goto LABEL_82;
    }

    if (v100 == 1)
    {
      goto LABEL_84;
    }

    v96 = v98 << 7;
  }

  if (v96 + ((v91 * *(v23 + 16920) + 256) >> 9) < ((*(v23 + 16920) * v87 + 256) >> 9) + (v93 << 7))
  {
LABEL_82:
    v94 = 0;
    v27 = v193;
    goto LABEL_91;
  }

LABEL_84:
  *v19 = v87;
  *(v19 + 1) = v93;
  *(*(v23 + 32) + 2 * a5) = 0;
  v101 = *(v23 + 8336);
  *(*(v23 + 8328) + v38 + v101 * v22) = 0;
  v27 = v193;
  v102 = *&byte_277BFDBA0[4 * v193];
  v103 = *&byte_277BFDB54[4 * v193];
  if ((0x41010uLL >> v193) & 1) != 0 || ((0x20810uLL >> v193))
  {
    v104 = 0;
    v105 = v38 + v101 * v189;
    v106 = 4 * v101;
    do
    {
      v107 = 0;
      do
      {
        *(*(v23 + 8328) + v105 + v107) = 0;
        v107 += 4;
      }

      while (v107 < v102);
      v104 += 4;
      v105 += v106;
    }

    while (v104 < v103);
  }

  v94 = 1;
LABEL_91:
  *(v19 + 32) = v94;
  v108 = v23 + v38 + result * v22;
  *(v108 + 151049) = *(v108 + 151049) & 0xFE | v94;
  v109 = *v19;
  if (v95)
  {
    v109 += *(v23 + 8 * v36 + 36232);
    *v19 = v109;
  }

  v78 = ((*(v23 + 16920) * v109 + 256) >> 9) + (*(a13 + 1) << 7);
  v77 = *(*(v23 + 40) + a5);
  v79 = *(*(v23 + 8328) + v38 + *(v23 + 8336) * v22);
  v110 = v24[6];
  if (v110)
  {
    if (v78 - (v78 >> (v110 + 1)) > v18)
    {
LABEL_202:
      *a16 = 0;
      return result;
    }

    if (v78 - (v78 >> (v110 + 2)) <= a14)
    {
      v80 = v199;
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    v80 = v199;
  }

  if (v24[5] && !*(*(v23 + 32) + 2 * a5))
  {
    goto LABEL_115;
  }

LABEL_101:
  if (*(v23 + 11072) == 8 && v80)
  {
    if (v18 != 0x7FFFFFFFFFFFFFFFLL || v78 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v111 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        if (v20)
        {
          v112 = qword_27A71EBB8[v27];
          v113 = byte_277C3CAFE[a8];
          v114 = *v23;
          v238 = 0u;
          v239 = 0u;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v224 = 0u;
          v225 = 0u;
          v196 = v18;
          v183 = v77;
          v209 = v36;
          sub_277A3E874((v114 + 2 * (4 * v22 * v113) + 8 * v38), v113, v202, __c[0], v224.f32);
          LODWORD(v222) = 0;
          sub_2779D28B0(&v224, v112, &v222);
          LODWORD(a8) = v203;
          v36 = v209;
          v77 = v183;
          v18 = v196;
          v38 = a4;
          v23 = a2;
          v115 = (*&v222 * 10000.0);
          if (v115 >= 80000)
          {
            v115 = 80000;
          }

          if (v115 <= -80000)
          {
            v115 = -80000;
          }
        }

        else
        {
          v115 = -1;
        }

        if (v115 < -v111)
        {
LABEL_115:
          result = 0;
          v116 = 0;
          v221 = 0;
          v117 = 0;
          v118 = 0;
          *(&v222 + 3) = 0;
          LODWORD(v222) = 0;
          goto LABEL_116;
        }
      }
    }

    *(&v222 + 3) = 0;
    LODWORD(v222) = 0;
  }

  else
  {
    *(&v222 + 3) = 0;
    LODWORD(v222) = 0;
    if (!v80)
    {
      result = 0;
      v116 = 0;
      v221 = 0;
      v117 = 0;
      v118 = 0;
LABEL_116:
      v119 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_155;
    }
  }

  if (v78 >= v18)
  {
    v120 = v18;
  }

  else
  {
    v120 = v78;
  }

  v121 = byte_277C3CAE8[a8];
  v122 = *(v23 + 8352);
  if (v122 < 0)
  {
    v121 += v122 >> (*(v23 + 440) + 3);
  }

  v187 = v78;
  v184 = v77;
  v188 = a5;
  v191 = v22;
  v123 = byte_277C3CAFE[a8];
  v124 = *(v23 + 8344);
  if (v124 < 0)
  {
    v123 += v124 >> (*(v23 + 436) + 3);
  }

  v125 = 0;
  v218 = 0;
  v119 = 0;
  v126 = 0;
  v210 = 0;
  v127 = (v121 >> 2);
  v128 = v123 >> 2;
  v129 = *&byte_277BFDBA0[4 * v27];
  v130 = byte_277C3295E[v27];
  v131 = *&byte_277BFDBA0[4 * v130];
  LODWORD(v130) = *&byte_277BFDB54[4 * v130];
  v194 = v130 * v131;
  v195 = v131;
  result = *(v23 + 8 * v36 + 36236);
  v181 = v130;
  v182 = *&byte_277BFDB54[4 * v27];
  v132 = a5;
  v212 = 1;
  v197 = v129;
  while (2)
  {
    if (v125 + v191 < v127)
    {
      v133 = 0;
      do
      {
        if (a4 + v133 < v128)
        {
          v134 = result;
          v135 = v127;
          v221 = v126;
          *&v226 = 0;
          v224 = 0u;
          v225 = 0u;
          v136 = v120;
          v223 = 1;
          v137 = v132;
          sub_277A43538(v204, v23, (v125 + v191));
          if (!v223)
          {
            v23 = a2;
            v38 = a4;
            LODWORD(a8) = v203;
            result = v134;
LABEL_153:
            v119 = 0x7FFFFFFFFFFFFFFFLL;
            v22 = v191;
            v27 = v193;
            goto LABEL_154;
          }

          LODWORD(a8) = v203;
          if (v134 == 0x7FFFFFFF)
          {
            v210 = 0;
            v212 = 0;
            v126 = 0x7FFFFFFFFFFFFFFFLL;
            result = 0x7FFFFFFFLL;
            v218 = 0x7FFFFFFFFFFFFFFFLL;
            v23 = a2;
            v120 = v136;
            v127 = v135;
            v131 = v195;
            v129 = v197;
            v138 = v137;
          }

          else
          {
            v23 = a2;
            v120 = v136;
            v138 = v137;
            if (v224.i32[0] == 0x7FFFFFFF)
            {
              v210 = 0;
              v212 = 0;
              v126 = 0x7FFFFFFFFFFFFFFFLL;
              result = 0x7FFFFFFFLL;
              v218 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              if (v224.i32[0] + v134 >= 0x7FFFFFFF)
              {
                result = 0x7FFFFFFFLL;
              }

              else
              {
                result = v224.i32[0] + v134;
              }

              v139 = v210;
              if (!v210)
              {
                v139 = v224.i32[1];
              }

              v210 = v139;
              v126 = v224.i64[1] + v221;
              if (*(&v225 + 1) == 0x7FFFFFFFFFFFFFFFLL)
              {
                v140 = 0;
              }

              else
              {
                v140 = *(&v225 + 1);
              }

              v141 = v218;
              v142 = v140 + v218;
              if (v218 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v141 = v142;
              }

              v218 = v141;
              v212 &= v226;
            }

            v127 = v135;
            v131 = v195;
            v129 = v197;
          }

          v119 = ((*(v23 + 16920) * result + 256) >> 9) + (v126 << 7);
          if (v119 > v120)
          {
            v221 = v126;
            v38 = a4;
            goto LABEL_153;
          }

          v132 = v138 + v194;
        }

        v133 += v131;
      }

      while (v133 < v129);
      v125 += v181;
      v27 = v193;
      v38 = a4;
      if (v125 < v182)
      {
        continue;
      }
    }

    break;
  }

  v221 = v126;
  v22 = v191;
LABEL_154:
  a5 = v188;
  v77 = v184;
  v78 = v187;
  v116 = v210;
  v117 = v218;
  v118 = v212;
LABEL_155:
  if (v78 >= v119)
  {
    *a13 = result;
    a13[1] = v116;
    *(a13 + 1) = v221;
    *(a13 + 2) = v119;
    *(a13 + 3) = v117;
    *(a13 + 32) = v118;
    *(a13 + 33) = v222;
    a13[9] = *(&v222 + 3);
    if (v119 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    goto LABEL_202;
  }

  *(*(v23 + 40) + a5) = v77;
  v143 = *&byte_277BFDBA0[4 * v27];
  v144 = *(*(v23 + 40) + a5);
  v145 = a8;
  memset((a9 + v38), v144, v143);
  v146 = *&byte_277BFDB54[4 * v27];
  memset((a10 + v189), v144, v146);
  v147 = byte_277C393B1[v27];
  v148 = v145;
  v149 = byte_277C3F990[v147];
  v150 = byte_277C36D60[v147];
  if (v150 <= 1)
  {
    v151 = 1;
  }

  else
  {
    v151 = v150;
  }

  memset(__b, __c[0], v151);
  if (v149 <= 1)
  {
    v152 = 1;
  }

  else
  {
    v152 = v149;
  }

  memset(v186, v202, v152);
  v153 = 0;
  v154 = v192 + 146;
  if (v143 <= 1)
  {
    v155 = 1;
  }

  else
  {
    v155 = v143;
  }

  v156 = byte_277BFC81C[v148];
  v157 = byte_277BFC832[v148];
  v158 = vdupq_n_s32(v155 - 1);
  if (v146 <= 1)
  {
    v159 = 1;
  }

  else
  {
    v159 = v146;
  }

  v160 = byte_277BFC806[v148];
  v161.i64[0] = 0x1000000010;
  v161.i64[1] = 0x1000000010;
  v162 = (v155 + 15) & 0xFFFFFFF0;
  result = a13;
  do
  {
    v163 = 0;
    v164 = (v153 + v22) >> v156 << v157;
    v165 = xmmword_277BB7060;
    v166 = xmmword_277BB74D0;
    v167 = xmmword_277BB7520;
    v168 = xmmword_277BB7510;
    do
    {
      v169 = vmovn_s32(vcgeq_u32(v158, v165));
      if (vuzp1_s8(v169, *v158.i8).u8[0])
      {
        *(v154 + ((a4 + v163) >> v160) + v164) = v20;
      }

      if (vuzp1_s8(v169, *&v158).i8[1])
      {
        *(v154 + ((a4 + v163 + 1) >> v160) + v164) = v20;
        *(v154 + ((a4 + v163 + 2) >> v160) + v164) = v20;
        *(v154 + ((a4 + v163 + 3) >> v160) + v164) = v20;
      }

      v170 = vmovn_s32(vcgeq_u32(v158, v166));
      if (vuzp1_s8(*&v158, v170).i32[1])
      {
        *(v154 + ((a4 + v163 + 4) >> v160) + v164) = v20;
      }

      if (vuzp1_s8(*&v158, v170).i8[5])
      {
        *(v154 + ((a4 + v163 + 5) >> v160) + v164) = v20;
      }

      if (vuzp1_s8(*&v158, v170).i8[6])
      {
        *(v154 + ((a4 + v163 + 6) >> v160) + v164) = v20;
        *(v154 + ((a4 + v163 + 7) >> v160) + v164) = v20;
      }

      v171 = vmovn_s32(vcgeq_u32(v158, v167));
      if (vuzp1_s8(v171, *v158.i8).u8[0])
      {
        *(v154 + ((a4 + v163 + 8) >> v160) + v164) = v20;
      }

      if (vuzp1_s8(v171, *&v158).i8[1])
      {
        *(v154 + ((a4 + v163 + 9) >> v160) + v164) = v20;
        *(v154 + ((a4 + v163 + 10) >> v160) + v164) = v20;
        *(v154 + ((a4 + v163 + 11) >> v160) + v164) = v20;
      }

      v172 = vmovn_s32(vcgeq_u32(v158, v168));
      if (vuzp1_s8(*&v158, v172).i32[1])
      {
        *(v154 + ((a4 + v163 + 12) >> v160) + v164) = v20;
      }

      if (vuzp1_s8(*&v158, v172).i8[5])
      {
        *(v154 + ((a4 + v163 + 13) >> v160) + v164) = v20;
      }

      if (vuzp1_s8(*&v158, v172).i8[6])
      {
        *(v154 + ((a4 + v163 + 14) >> v160) + v164) = v20;
        *(v154 + ((a4 + v163 + 15) >> v160) + v164) = v20;
      }

      v163 += 16;
      v165 = vaddq_s32(v165, v161);
      v166 = vaddq_s32(v166, v161);
      v167 = vaddq_s32(v167, v161);
      v168 = vaddq_s32(v168, v161);
    }

    while (v162 != v163);
    ++v153;
  }

  while (v153 != v159);
  *(v192 + 145) = v20;
  v173 = *(a2 + 8336);
  *(*(a2 + 8328) + a4 + v173 * v22) = v79;
  if ((0x41010uLL >> v193) & 1) != 0 || ((0x20810uLL >> v193))
  {
    v174 = 0;
    v175 = a4 + v173 * v189;
    v176 = 4 * v173;
    do
    {
      v177 = 0;
      do
      {
        *(*(a2 + 8328) + v175 + v177) = v79;
        v177 += 4;
      }

      while (v177 < v143);
      v174 += 4;
      v175 += v176;
    }

    while (v174 < v146);
  }

  v178 = a2 + a4 + byte_277C3F990[v148] * v22;
  v179 = *(v178 + 151049) & 0xFE;
  if (*(a13 + 32))
  {
    ++v179;
  }

  *(v178 + 151049) = v179;
  return result;
}

unsigned __int8 *sub_277A4483C(unsigned __int8 *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14)
{
  v106 = result;
  v17 = *(a2 + 8352);
  v18 = byte_277C3CAE8[a7];
  if (v17 < 0)
  {
    v18 += v17 >> (*(a2 + 440) + 3);
  }

  v19 = v18 >> 2;
  v20 = byte_277C3CAFE[a7];
  v21 = *(a2 + 8344);
  if (v21 < 0)
  {
    v20 += v21 >> (*(a2 + 436) + 3);
  }

  v22 = v20 >> 2;
  v23 = __OFSUB__(v19, a3);
  v24 = v19 - a3;
  if ((v24 < 0) ^ v23 | (v24 == 0))
  {
    v25 = 1;
  }

  else
  {
    v25 = v22 <= a4;
  }

  if (!v25)
  {
    v26 = **(a2 + 8280);
    v27 = v26[(a4 >> byte_277BFC806[a7]) + 146 + (a3 >> byte_277BFC81C[a7] << byte_277BFC832[a7])];
    result = (a11 + a4);
    v28 = a6;
    v29 = LOBYTE(dword_277C3BEE4[v28]);
    v30 = LOBYTE(dword_277C3BF30[v28]);
    if (!a6)
    {
      v36 = 0;
      goto LABEL_28;
    }

    v31 = *v26;
    if (byte_277C3CAFE[v31] <= byte_277C3CAE8[v31])
    {
      v32 = byte_277C3CAE8[v31];
    }

    else
    {
      v32 = byte_277C3CAFE[v31];
    }

    v33 = 63;
    if (v32 <= 31)
    {
      if (v32 == 8)
      {
        v35 = 0;
        v34 = 1;
        goto LABEL_23;
      }

      if (v32 == 16)
      {
        v34 = 2;
        v35 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v34 = 4;
      v35 = 1;
      if (v32 == 128 || v32 == 64)
      {
LABEL_23:
        if (byte_277C3BE83[a6] == v34)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        v33 = (3 * (v37 - 2 * v34) + 24);
        goto LABEL_27;
      }

      if (v32 == 32)
      {
        v34 = 3;
        goto LABEL_23;
      }
    }

LABEL_27:
    v36 = (v30 > *(a12 + a3)) + (v29 > *result) + v33;
LABEL_28:
    v38 = a13;
    *a14 = 0;
    *(a14 + 1) = 0;
    *(a14 + 2) = 0;
    *(a14 + 3) = 0;
    *(a14 + 32) = 1;
    v103 = a3;
    v102 = a7;
    v92 = v36;
    if (v27 == a6)
    {
      __c = v30;
      __b = (a12 + a3);
      v100 = v29;
      v104 = (a11 + a4);
      v39 = (byte_277C3BE70[a6] + byte_277C3BE83[a6] + 1) >> 1;
      v108 = 0;
      v40 = a4;
      v93 = a4;
      v95 = a3;
      v41 = a3;
      v42 = a7;
      sub_277A3D9E4(a7, a6, 0, (a9 + a4), (a10 + a3), &v108);
      v43 = *(a2 + 7552 * v39 + 8 * v108 + 47580);
      a14[1] = v43;
      v111 = 0;
      v109 = 0u;
      v110 = 0u;
      sub_277A3EA88(v106, a2, 0, a5, v41, v40, v42, a6, &v108, 0, 0, a13, &v109);
      v44 = *a14;
      if (v44 == 0x7FFFFFFF || v109 == 0x7FFFFFFF)
      {
        v45 = 0;
        v46.f64[0] = NAN;
        v46.f64[1] = NAN;
        *(a14 + 2) = vnegq_f64(v46);
        v47 = 0x7FFFFFFFFFFFFFFFLL;
        *(a14 + 3) = 0x7FFFFFFFFFFFFFFFLL;
        *a14 = 0x7FFFFFFFLL;
        v48 = -128;
        v49 = 0x7FFFFFFF;
        v50 = v103;
        v51 = v102;
        v52 = a9;
        v53 = a6;
        v54 = v95;
        v55 = v93;
      }

      else
      {
        v69 = v109 + v44;
        v70 = 0x7FFFFFFF;
        if (v69 < 0x7FFFFFFF)
        {
          v70 = v69;
        }

        *a14 = v70;
        if (!a14[1])
        {
          a14[1] = DWORD1(v109);
        }

        v71 = *(a14 + 1) + *(&v109 + 1);
        *(a14 + 1) = v71;
        v72 = *(a14 + 3);
        v47 = 0x7FFFFFFFFFFFFFFFLL;
        v50 = v103;
        v51 = v102;
        v52 = a9;
        v53 = a6;
        v54 = v95;
        v55 = v93;
        if (v72 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v47 = *(a14 + 3);
          if (*(&v110 + 1) != 0x7FFFFFFFFFFFFFFFLL)
          {
            v47 = *(&v110 + 1) + v72;
            *(a14 + 3) = *(&v110 + 1) + v72;
          }
        }

        v49 = v70;
        v48 = v71 << 7;
        v45 = (a14[8] & v111) == 1;
      }

      v73 = byte_277C3F990[v51];
      if (v48 + ((v49 * *(a2 + 16920) + 256) >> 9) < ((*(a2 + 16920) * v43 + 256) >> 9) + (v47 << 7) && !v45)
      {
        *(a14 + 32) = 0;
        v83 = a2 + v55 + v73 * v50;
        *(v83 + 151049) &= ~1u;
      }

      else
      {
        *a14 = v43;
        *(a14 + 1) = v47;
        *(a14 + 32) = 1;
        v75 = a2 + v55 + v73 * v50;
        *(v75 + 151049) |= 1u;
        *(*(a2 + 32) + 2 * a5) = 0;
        *(*(a2 + 40) + a5) = 0;
        v76 = *(a2 + 8336);
        *(*(a2 + 8328) + v55 + v76 * v50) = 0;
        v77 = *&byte_277BFDBA0[4 * v53];
        v78 = *&byte_277BFDB54[4 * v53];
        if ((0x41010uLL >> v53) & 1) != 0 || ((0x20810uLL >> v53))
        {
          v79 = 0;
          v80 = v55 + v76 * v54;
          v81 = 4 * v76;
          do
          {
            v82 = 0;
            do
            {
              *(*(a2 + 8328) + v80 + v82) = 0;
              v82 += 4;
            }

            while (v82 < v77);
            v79 += 4;
            v80 += v81;
          }

          while (v79 < v78);
        }
      }

      if (a6 && a8 <= 1)
      {
        *a14 += *(a2 + 8 * v92 + 36232);
      }

      v84 = *(*(a2 + 40) + a5);
      memset((v52 + v55), v84, *&byte_277BFDBA0[4 * v53]);
      memset((a10 + v54), v84, *&byte_277BFDB54[4 * v53]);
      v85 = byte_277C393B1[v53];
      v86 = byte_277C3F990[v85];
      v87 = byte_277C36D60[v85];
      if (v87 <= 1)
      {
        v88 = 1;
      }

      else
      {
        v88 = v87;
      }

      memset(__b, __c, v88);
      if (v86 <= 1)
      {
        v89 = 1;
      }

      else
      {
        v89 = v86;
      }

      return memset(v104, v100, v89);
    }

    else
    {
      v56 = byte_277C3295E[a6];
      v57 = *&byte_277BFDBA0[4 * v56];
      *__ca = v56;
      v58 = *&byte_277BFDB54[4 * v56];
      if (*&byte_277BFDB54[4 * a6] < v24)
      {
        v24 = *&byte_277BFDB54[4 * a6];
      }

      v59 = v22 - a4;
      if (*&byte_277BFDBA0[4 * a6] < v59)
      {
        v59 = *&byte_277BFDBA0[4 * a6];
      }

      v101 = v59;
      v111 = 0;
      v91 = v24;
      if (v24 < 1)
      {
        LODWORD(v60) = 0;
      }

      else
      {
        LODWORD(v60) = 0;
        v105 = 0;
        v61 = 0;
        v96 = v58 * v57;
        v62.f64[0] = NAN;
        v62.f64[1] = NAN;
        v94 = vnegq_f64(v62);
        v90 = v58;
        do
        {
          if (v101 >= 1)
          {
            for (i = 0; i < v101; i += v57)
            {
              v109 = 0uLL;
              v110 = 0uLL;
              v64 = v38;
              LOBYTE(v111) = 1;
              v65 = a4;
              result = sub_277A4483C(v106, a2, (v105 + a3), (a4 + i), a5, *__ca);
              v66 = *a14;
              if (v66 == 0x7FFFFFFF)
              {
                *(a14 + 2) = v94;
                *(a14 + 3) = 0x7FFFFFFFFFFFFFFFLL;
                *(a14 + 32) = 0;
                a14[1] = 0;
                LODWORD(v60) = 0x7FFFFFFF;
                v67 = *(&v109 + 1);
                a3 = v103;
                a4 = v65;
                v38 = v64;
              }

              else
              {
                v60 = v66 + v109;
                if (v60 >= 0x7FFFFFFF)
                {
                  LODWORD(v60) = 0x7FFFFFFF;
                }

                *a14 = v60;
                if (!a14[1])
                {
                  a14[1] = DWORD1(v109);
                }

                v67 = *(&v109 + 1);
                *(a14 + 1) += *(&v109 + 1);
                v68 = *(a14 + 3);
                a3 = v103;
                a4 = v65;
                v38 = v64;
                if (v68 != 0x7FFFFFFFFFFFFFFFLL && *(&v110 + 1) != 0x7FFFFFFFFFFFFFFFLL)
                {
                  *(a14 + 3) = *(&v110 + 1) + v68;
                }

                *(a14 + 32) &= v111;
              }

              v61 += v67 << 7;
              a5 = (a5 + v96);
            }
          }

          v105 += v90;
        }

        while (v105 < v91);
      }

      if (a6 && a8 <= 1)
      {
        *a14 = v60 + *(a2 + 8 * v92 + 36236);
      }
    }
  }

  return result;
}

float64x2_t sub_277A45044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v6 = a4;
  v9 = a1;
  v131 = *MEMORY[0x277D85DE8];
  v10 = (a2 + 151012);
  v11 = a1 + 396172;
  v12 = **(a2 + 8280);
  v13 = 1;
  if ((*(v12 + 167) & 0x80) == 0)
  {
    v13 = *(v12 + 16) > 0;
  }

  v14 = *(a2 + 416);
  v15 = *(a2 + 420);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  v16 = 1 << (byte_277C3BCB6[a4] - 4);
  v121 = a4;
  v122 = a1 + 396172;
  if (v13)
  {
    if (*(a1 + 396256) && v14 >= *(a2 + 8256) && v14 + byte_277C36D60[a4] < *(a2 + 8260) && v15 >= *(a2 + 8264) && v15 + byte_277C3F990[a4] < *(a2 + 8268))
    {
      v18 = off_280AB5FE0(*(a2 + 153104) + 16968, *a2, 2 * byte_277C3CAE8[a4] * byte_277C3CAFE[a4]);
      v6 = v121;
      v19 = v121 + 32 * v18;
      v20 = *(a2 + 153104);
      if (a5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = a1;
      }

      else
      {
        v104 = *(v20 + 16964);
        v9 = a1;
        if (v104 >= 1)
        {
          v105 = *(v20 + 16960);
          while (1)
          {
            v106 = v105 <= 0 ? -(-v105 & 7) : v105 & 7;
            if (*(v20 + 2120 * v106 + 2112) == v19)
            {
              break;
            }

            ++v105;
            if (!--v104)
            {
              goto LABEL_13;
            }
          }

          if (v106 != -1)
          {
            v107 = v20 + 2120 * v106;
            v108 = **(a2 + 8280);
            *(v108 + 145) = *v107;
            memcpy((a2 + 151049), (v107 + 17), v16);
            *(v108 + 146) = *(v107 + 1);
            memcpy(*(a2 + 8328), (v107 + 1041), v16);
            v109 = *(v107 + 2104);
            result = *(v107 + 2088);
            *a3 = *(v107 + 2072);
            *(a3 + 16) = result;
            *(a3 + 32) = v109;
            return result;
          }
        }
      }
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

LABEL_13:
    if (*(a2 + 151020) && !*(a2 + 4 * (*(v12 + 167) & 7) + 11108))
    {
      v33 = v9;
      v34 = v6;
      if (sub_277A42FC8())
      {
        sub_277A4332C(a2, a3, v34, 0);
        if (!v20)
        {
          return result;
        }

        goto LABEL_51;
      }

      v6 = v34;
      v9 = v33;
      v11 = v122;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 11108 + 4 * (*(v12 + 167) & 7)))
  {
    *(**(a2 + 8280) + 145) = 0;
    v21 = a2;
    v22 = a3;
    v23 = a5;
    v24 = 0;
    LOBYTE(v25) = 0;
    goto LABEL_50;
  }

  v26 = (v9 + 272080);
  if (*v10 == 2)
  {
    v27 = **(a2 + 8280);
    if (v6)
    {
      if (byte_277C3BE70[byte_277C3BD80[v6]] <= byte_277C393AE[*(a2 + 151024)])
      {
        v25 = byte_277C3BD80[v6];
      }

      else
      {
        v25 = byte_277C393AE[*(a2 + 151024)];
      }
    }

    else
    {
      v25 = 0;
    }

    *(v27 + 145) = v25;
    if (*v26)
    {
      if (*(v9 + 272082))
      {
LABEL_39:
        v37 = *(a2 + 8304);
        v38 = *(a2 + 8296);
        if (v37)
        {
          v37 = *(v37 + 144);
        }

        if (v38)
        {
          v38 = *(v38 + 144);
        }

        v39 = (a2 + 8 * (v38 + v37) + 35968);
        v40 = *v39;
        v41 = v39[1];
        if ((*(v27 + 167) & 0x80) != 0 || *(v27 + 16) > 0)
        {
          v42 = *(a2 + 16920);
          v43 = (v42 * v41 + 256) >> 9;
        }

        else
        {
          v42 = *(a2 + 16920);
          v43 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v44 = (v42 * v40 + 256) >> 9;
        if (v44 >= v43)
        {
          v24 = v43;
        }

        else
        {
          v24 = v44;
        }

        v21 = a2;
        v22 = a3;
        v23 = a5;
LABEL_50:
        result.f64[0] = sub_277A3E12C(v21, v9, v22, v23, v24, 0, v6, v25);
        if (!v20)
        {
          return result;
        }

        goto LABEL_51;
      }

      v36 = &byte_277C3BE70[v25];
    }

    else if (*(v9 + 272082))
    {
      v36 = &unk_277BF47F8 + v25;
    }

    else
    {
      v36 = &unk_277BF480B + v25;
    }

    LOBYTE(v25) = *v36;
    *(v27 + 145) = *v36;
    goto LABEL_39;
  }

  *a3 = 0x7FFFFFFFLL;
  result.f64[0] = NAN;
  result.f64[1] = NAN;
  *(a3 + 8) = vnegq_f64(result);
  *(a3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 32) = 0;
  v29 = **(a2 + 8280);
  v30 = byte_277C3BD80[v6];
  v31 = *(a2 + 151024);
  v113 = v20;
  v114 = v16;
  v112 = v19;
  v111 = v29;
  if (v31 != 2)
  {
    v35 = byte_277C393AE[v31];
    if (v6)
    {
      if (byte_277C3BE70[v30] <= v35)
      {
        v35 = byte_277C3BD80[v6];
      }
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_77;
  }

  v32 = (*(v29 + 167) & 0x80) == 0 && *(v29 + 16) < 1;
  if ((v6 - 13) <= 2 && *v11)
  {
    goto LABEL_73;
  }

  v56 = 776;
  if (byte_277C36D60[v6] == byte_277C3F990[v6])
  {
    v56 = 772;
  }

  v57 = 768;
  if (byte_277C36D60[v6] == byte_277C3F990[v6])
  {
    v57 = 764;
  }

  v58 = v32 ? v56 : v57;
  v59 = *(v9 + v58 + 395392);
  if (v59 == 2)
  {
LABEL_73:
    v120 = byte_277C3BD80[v6];
    if (*v26)
    {
      goto LABEL_78;
    }

    v120 = byte_277C3BD80[v6];
    if (((0x61810uLL >> v30) & 1) == 0)
    {
      goto LABEL_78;
    }

    v35 = byte_277C3295E[v30];
LABEL_77:
    v120 = v35;
LABEL_78:
    *(a2 + 116284) = 0;
    result.f64[0] = NAN;
    v127 = xmmword_277C31FA8;
    v128 = 0x7FFFFFFFFFFFFFFFLL;
    v59 = 2;
LABEL_79:
    v115 = (a2 + 8288);
    v60 = v59;
    v110 = v30;
    v118 = v59;
    v123 = 0x7FFFFFFFFFFFFFFFLL;
    v61 = v120;
    v116 = v30;
    v117 = a5;
    v119 = (v9 + 272080);
    while (1)
    {
      if ((*v26 & 1) == 0 && ((0x61810uLL >> v61) & 1) != 0 || (v26[2] & 1) == 0 && dword_277C3BEE4[v61] != dword_277C3BF30[v61])
      {
        v67 = v61;
        goto LABEL_168;
      }

      if (v10[28] == 2)
      {
        goto LABEL_169;
      }

      v62 = *(v11 + 64);
      if (v61 != v120)
      {
        v62 = 0;
      }

      v10[29] = v62;
      v126 = 0;
      v124 = 0u;
      v125 = 0u;
      v63 = v123;
      if (v123 >= a5)
      {
        v63 = a5;
      }

      if (*(v11 + 65))
      {
        v64 = v63;
      }

      else
      {
        v64 = a5;
      }

      v65 = **(a2 + 8280);
      v66 = (v65[167] & 0x80) != 0 || v65[16] > 0;
      if (v10[12] != 2)
      {
        goto LABEL_111;
      }

      v68 = *v65;
      if (!*v65)
      {
        goto LABEL_111;
      }

      v69 = v61;
      v70 = LOBYTE(dword_277C3BF30[v69]);
      v71 = **(a2 + 8544);
      v72 = LOBYTE(dword_277C3BEE4[v69]) > v71;
      v73 = **(a2 + 8552);
      v74 = v70 > v73;
      if (v61)
      {
        break;
      }

      v79 = 0;
      if (v66)
      {
        goto LABEL_137;
      }

LABEL_108:
      if (v6)
      {
        LOBYTE(v80) = v110;
        if (v110 == v61)
        {
          v81 = 0;
        }

        else
        {
          v81 = 0;
          do
          {
            ++v81;
            v80 = byte_277C3295E[v80];
          }

          while (v80 != v61);
        }

        if (*v115 == 1)
        {
          v83 = *(a2 + 8304);
          if ((*(v83 + 167) & 0x80) != 0 || v83[16] >= 1)
          {
            v71 = byte_277C3CAFE[*v83];
          }
        }

        if (*(a2 + 8289))
        {
          v84 = *(a2 + 8296);
          if ((*(v84 + 167) & 0x80) != 0 || v84[16] >= 1)
          {
            v73 = byte_277C3CAE8[*v84];
          }
        }

        v85 = byte_277C3BD80[v68];
        v86 = dword_277C3BEE4[v85];
        if (dword_277C3BF30[v85] <= v73)
        {
          v87 = *(a2 + 8289);
        }

        else
        {
          v87 = 0;
        }

        if (v86 <= v71)
        {
          v88 = *v115;
        }

        else
        {
          v88 = 0;
        }

        v89 = (a2 + 35992 + 60 * (byte_277C32948[v6] - 1) + 20 * (v87 + v88) + 4 * v81);
        goto LABEL_138;
      }

LABEL_111:
      v82 = 0;
LABEL_139:
      v90 = *(a2 + 8304);
      v91 = *(a2 + 8296);
      if (v90)
      {
        v90 = *(v90 + 144);
      }

      if (v91)
      {
        v91 = *(v91 + 144);
      }

      v92 = (a2 + 35968 + 8 * (v91 + v90));
      v93 = *v92;
      v94 = v92[1];
      v95 = *(a2 + 16920);
      if (v66)
      {
        v96 = (v95 * v94 + 256) >> 9;
      }

      else
      {
        v96 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v97 = v93 + v82;
      v65[145] = v61;
      if ((v95 * (v93 + v82) + 256) >> 9 >= v96)
      {
        v98 = v96;
      }

      else
      {
        v98 = (v95 * v97 + 256) >> 9;
      }

      v99 = v9;
      result.f64[0] = sub_277A3E12C(a2, v9, &v124, v64, v98, 0, v6, v61);
      if (v124 == 0x7FFFFFFF)
      {
        v100 = 0x7FFFFFFFFFFFFFFFLL;
        *(&v127 + v60) = 0x7FFFFFFFFFFFFFFFLL;
        v6 = v121;
        v9 = v99;
        v11 = v122;
      }

      else
      {
        if (v66 && v126)
        {
          v100 = ((*(a2 + 16920) * v94 + 256) >> 9) + (*(&v125 + 1) << 7);
        }

        else
        {
          v101 = *(a2 + 16920);
          v100 = ((v101 * (v97 + v124) + 256) >> 9) + (*(&v124 + 1) << 7);
          LODWORD(v124) = v124 + v82;
          if (v66 && !v126 && !*(a2 + 11108 + 4 * (*(v65 + 167) & 7)))
          {
            v102 = ((v101 * v94 + 256) >> 9) + (*(&v125 + 1) << 7);
            if (v102 <= v100)
            {
              LODWORD(v124) = 0;
              *(&v124 + 1) = *(&v125 + 1);
              v100 = v102;
              LOBYTE(v126) = 1;
            }
          }
        }

        *(&v127 + v60) = v100;
        v11 = v122;
        if (v100 < v123)
        {
          __memcpy_chk();
          __memcpy_chk();
          *&result.f64[0] = v124;
          v103 = v125;
          *a3 = v124;
          *(a3 + 16) = v103;
          *(a3 + 32) = v126;
          v123 = v100;
          v116 = v61;
        }

        v6 = v121;
        v9 = v99;
      }

      v10 = (a2 + 151012);
      v26 = v119;
      if (!v61 || v60 > v118 && v60 != 2 && *(a2 + 153152) <= 0xFFu && v100 > *(&v127 + v60 - 1))
      {
        goto LABEL_169;
      }

      v67 = v61;
      a5 = v117;
LABEL_168:
      ++v60;
      v61 = byte_277C3295E[v67];
      if (v60 == 3)
      {
        goto LABEL_169;
      }
    }

    if (byte_277C3CAFE[v68] <= byte_277C3CAE8[v68])
    {
      v75 = byte_277C3CAE8[v68];
    }

    else
    {
      v75 = byte_277C3CAFE[v68];
    }

    if (v75 <= 31)
    {
      if (v75 == 8)
      {
        v77 = 0;
        v76 = 1;
      }

      else
      {
        v78 = 63;
        if (v75 != 16)
        {
          goto LABEL_136;
        }

        v76 = 2;
        v77 = 1;
      }
    }

    else
    {
      v76 = 4;
      v77 = 1;
      if (v75 != 128 && v75 != 64)
      {
        v78 = 63;
        if (v75 != 32)
        {
          goto LABEL_136;
        }

        v76 = 3;
      }
    }

    if (byte_277C3BE83[v61] == v76)
    {
      v77 = 0;
    }

    v78 = (3 * (v77 - 2 * v76) + 24);
LABEL_136:
    v79 = v74 + v72 + v78;
    if (v66)
    {
LABEL_137:
      v89 = (a2 + 36232 + 8 * v79);
LABEL_138:
      v82 = *v89;
      goto LABEL_139;
    }

    goto LABEL_108;
  }

  *(a2 + 116284) = 0;
  result.f64[0] = NAN;
  v127 = xmmword_277C31FA8;
  v128 = 0x7FFFFFFFFFFFFFFFLL;
  v120 = v30;
  if (v59 <= 2)
  {
    goto LABEL_79;
  }

  v116 = v30;
LABEL_169:
  v16 = v114;
  if (*a3 != 0x7FFFFFFF)
  {
    *(v111 + 145) = v116;
    memcpy(*(a2 + 8328), __src, v114);
    memcpy((a2 + 151049), v129, v114);
  }

  *(v10 + 14) = 0;
  v20 = v113;
  v19 = v112;
  if (v113)
  {
LABEL_51:
    v45 = *(v20 + 16964);
    v46 = *(v20 + 16960);
    if (v45 > 7)
    {
      v52 = (v46 + 1) & 7;
      if (v46 + 1 <= 0)
      {
        v52 = -(-(v46 + 1) & 7);
      }

      *(v20 + 16960) = v52;
    }

    else
    {
      v47 = v46 + v45;
      v48 = v47 & 7;
      v50 = -v47;
      v49 = v50 < 0;
      v51 = v50 & 7;
      if (v49)
      {
        v46 = v48;
      }

      else
      {
        v46 = -v51;
      }

      *(v20 + 16964) = v45 + 1;
    }

    v53 = v20 + 2120 * v46;
    v54 = **(a2 + 8280);
    *(v53 + 2112) = v19;
    *v53 = *(v54 + 145);
    memcpy((v53 + 17), (a2 + 151049), v16);
    *(v53 + 1) = *(v54 + 146);
    memcpy((v53 + 1041), *(a2 + 8328), v16);
    v55 = *(a3 + 32);
    result = *(a3 + 16);
    *(v53 + 2072) = *a3;
    *(v53 + 2088) = result;
    *(v53 + 2104) = v55;
  }

  return result;
}

uint64_t sub_277A45C8C(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t a5)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 32) = 1;
  if (a5 < 0)
  {
    return 0;
  }

  if (*(a2 + 428) != 1)
  {
    return 1;
  }

  v9 = **(a2 + 8280);
  v10 = *(v9 + 167);
  if ((v10 & 0x80) != 0)
  {
    v11 = (a2 + 3044);
    v12 = (a2 + 3048);
    v13 = byte_277C3BCDE[4 * a4 + 2 * *(a2 + 3044) + *(a2 + 3048)];
  }

  else
  {
    v11 = (a2 + 3044);
    v12 = (a2 + 3048);
    v13 = byte_277C3BCDE[4 * a4 + 2 * *(a2 + 3044) + *(a2 + 3048)];
    if (v9[16] < 1)
    {
      v14 = 0;
      goto LABEL_11;
    }
  }

  for (i = 1; i != 3; ++i)
  {
    sub_277A8E3DC(a2, v13, i);
  }

  v9 = **(a2 + 8280);
  v10 = *(v9 + 167);
  v14 = 1;
LABEL_11:
  if (*(a2 + 4 * (v10 & 7) + 11108))
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = byte_277C3BD80[byte_277C3BCDE[4 * *v9 + 2 * *v11 + *v12]];
    if (v17 > 0x10)
    {
      if (v17 == 17)
      {
        LOBYTE(v17) = 9;
      }

      else if (v17 == 18)
      {
        LOBYTE(v17) = 10;
      }
    }

    else if (v17 - 11 < 2 || v17 == 4)
    {
      LOBYTE(v17) = 3;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v36 = vnegq_f64(v23);
  while (1)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v25 = a5 != 0x7FFFFFFFFFFFFFFFLL && *(a1 + 395876) != 0;
    if (v20 < v21)
    {
      v21 = v20;
    }

    if ((v14 & v25) == 0)
    {
      v21 = 0;
    }

    sub_277A3E12C(a2, a1, &v37, a5 - v21, 0, v22, v13, v17);
    if (v37 == 0x7FFFFFFF)
    {
      break;
    }

    v26 = *a3;
    if (v26 == 0x7FFFFFFF)
    {
      *(a3 + 2) = v36;
      *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
      *(a3 + 32) = 0;
      v21 = -128;
      v27 = -128;
      v28 = 0x7FFFFFFF;
      a3[1] = 0;
    }

    else
    {
      v29 = v26 + v37;
      if (v29 >= 0x7FFFFFFF)
      {
        LODWORD(v29) = 0x7FFFFFFF;
      }

      *a3 = v29;
      if (!a3[1])
      {
        a3[1] = DWORD1(v37);
      }

      v30 = *(a3 + 1) + *(&v37 + 1);
      *(a3 + 1) = v30;
      v31 = *(a3 + 3);
      v32 = 0x7FFFFFFFFFFFFFFFLL;
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = *(a3 + 3);
        if (*(&v38 + 1) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = *(&v38 + 1) + v31;
          *(a3 + 3) = *(&v38 + 1) + v31;
        }
      }

      v28 = v29;
      *(a3 + 32) &= v39;
      v27 = v30 << 7;
      v21 = v32 << 7;
    }

    v20 = v27 + ((v28 * *(a2 + 16920) + 256) >> 9);
    if (v20 >= v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = v20;
    }

    v34 = v19 ^ 1;
    v22 = 2;
    v19 = 1;
    if (((v33 <= a5) & v34) == 0)
    {
      if (v33 <= a5)
      {
        return 1;
      }

      break;
    }
  }

  result = 0;
  *a3 = 0x7FFFFFFFLL;
  v35.f64[0] = NAN;
  v35.f64[1] = NAN;
  *(a3 + 2) = vnegq_f64(v35);
  *(a3 + 3) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_277A45FBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, int *a6, int a7, uint64_t a8)
{
  v13 = *(a2 + 8304);
  v14 = *(a2 + 8296);
  if (v13)
  {
    v13 = *(v13 + 144);
  }

  if (v14)
  {
    v14 = *(v14 + 144);
  }

  v15 = (a2 + 8 * (v14 + v13) + 35968);
  v16 = *v15;
  v17 = v15[1];
  if (*v15 >= v17)
  {
    v18 = v15[1];
  }

  else
  {
    v18 = *v15;
  }

  v19 = v18 + a7;
  v20 = *(a2 + 16920);
  if (a8 < (v20 * v19 + 256) >> 9)
  {
    result = 0;
    *a5 = 0x7FFFFFFFLL;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    *(a5 + 2) = vnegq_f64(v22);
    *(a5 + 3) = 0x7FFFFFFFFFFFFFFFLL;
    *(a5 + 32) = 0;
    return result;
  }

  v69 = v16;
  v23 = (a2 + 151024);
  v24 = **(a2 + 8280);
  *(a4 + 1) = 0;
  v65 = a4 + 2;
  v25 = a8 - ((v20 * a7 + 256) >> 9);
  if (a8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = v25;
  }

  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *(a4 + 32) = 1;
  a4[1] = 0;
  *a5 = 0;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  *(a5 + 32) = 1;
  *a4 = a7;
  sub_277A8E3DC(a2, a3, 0);
  v66 = a3;
  if (*v23 == 2 && !*(a2 + 4 * (*(v24 + 167) & 7) + 11108))
  {
    sub_277A42130(a1, a2, a5, a3, v26, v27, v28, v29, v30, v31);
  }

  else
  {
    sub_277A45044(a1, a2, a5, a3, v26);
    v32 = 0x101010101010101 * *(v24 + 145);
    *(v24 + 146) = v32;
    *(v24 + 154) = v32;
    v33 = *(a2 + 8724) * *(a2 + 8725);
    if (v33)
    {
      v34 = (a2 + 151049);
      do
      {
        v35 = *v34 & 0xFE;
        if (*(a5 + 32))
        {
          ++v35;
        }

        *v34++ = v35;
        --v33;
      }

      while (v33);
    }
  }

  v36 = *a5;
  if (v36 == 0x7FFFFFFF)
  {
    return 0;
  }

  v37 = *a4;
  if (v37 == 0x7FFFFFFF)
  {
    v38.f64[0] = NAN;
    v38.f64[1] = NAN;
    *(a4 + 2) = vnegq_f64(v38);
    *(a4 + 3) = 0x7FFFFFFFFFFFFFFFLL;
    *(a4 + 32) = 0;
    a4[1] = 0;
    LODWORD(v39) = 0x7FFFFFFF;
    v40 = -128;
    v41 = -128;
    v42 = a8;
    v43 = v69;
  }

  else
  {
    v39 = v37 + v36;
    if (v39 >= 0x7FFFFFFF)
    {
      LODWORD(v39) = 0x7FFFFFFF;
    }

    *a4 = v39;
    v42 = a8;
    v43 = v69;
    if (!a4[1])
    {
      a4[1] = a5[1];
    }

    v44 = *(a4 + 1) + *(a5 + 1);
    *(a4 + 1) = v44;
    v45 = *(a4 + 3);
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    if (v45 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v47 = *(a5 + 3);
      v46 = *(a4 + 3);
      if (v47 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v46 = v47 + v45;
        *(a4 + 3) = v47 + v45;
      }
    }

    *(a4 + 32) &= *(a5 + 32);
    v41 = v44 << 7;
    v40 = v46 << 7;
  }

  v48 = *(a2 + 16920);
  v49 = v41 + ((v48 * (v39 + v43) + 256) >> 9);
  v50 = v17 + a7;
  v51 = v40 + ((v48 * v50 + 256) >> 9);
  if (v49 >= v51)
  {
    v49 = v51;
  }

  if (v49 > v42)
  {
    return 0;
  }

  v52 = a6;
  *a6 = 0;
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  *(a6 + 3) = 0;
  *(a6 + 32) = 1;
  if (*(*(a1 + 270312) + 77))
  {
    v53 = *(a4 + 32);
    goto LABEL_40;
  }

  if (*(a1 + 395876))
  {
    v57 = v42 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v57 = 1;
  }

  if (v57)
  {
    v49 = 0;
  }

  result = sub_277A45C8C(a1, a2, a6, v66, v42 - v49);
  if (result)
  {
    v58 = *a4;
    v52 = a6;
    if (v58 == 0x7FFFFFFF || (v59 = *a6, v59 == 0x7FFFFFFF))
    {
      *a4 = 0x7FFFFFFFLL;
      v60.f64[0] = NAN;
      v60.f64[1] = NAN;
      *(a4 + 2) = vnegq_f64(v60);
      *(a4 + 3) = 0x7FFFFFFFFFFFFFFFLL;
      *(a4 + 32) = 0;
      v54 = v69;
      goto LABEL_55;
    }

    v61 = v59 + v58;
    if (v61 >= 0x7FFFFFFF)
    {
      LODWORD(v61) = 0x7FFFFFFF;
    }

    *a4 = v61;
    if (!a4[1])
    {
      a4[1] = a6[1];
    }

    *(a4 + 1) += *(a6 + 1);
    v62 = *(a4 + 3);
    if (v62 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v63 = *(a6 + 3);
      if (v63 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(a4 + 3) = v63 + v62;
      }
    }

    v64 = *(a4 + 32);
    v53 = (v64 & a6[8]);
    *(a4 + 32) = v64 & a6[8];
LABEL_40:
    v54 = v69;
    if (v53)
    {
      v55 = 0;
      v56 = *(a4 + 3);
      goto LABEL_42;
    }

LABEL_55:
    if (*(a2 + 4 * (*(v24 + 167) & 7) + 11108) || (v56 = *(a4 + 3), ((*(a2 + 16920) * (*a5 + v54 + *v52) + 256) >> 9) + (*(a4 + 1) << 7) < ((*(a2 + 16920) * v17 + 256) >> 9) + (v56 << 7)))
    {
      *a4 += v54;
      *(v24 + 144) = 0;
      return 1;
    }

    v55 = 1;
LABEL_42:
    *a5 = 0;
    *v52 = 0;
    *a4 = v50;
    *(a4 + 1) = v56;
    *(a5 + 1) = *(a5 + 3);
    *(v52 + 1) = *(v52 + 3);
    *(v24 + 144) = 1;
    return (v55 & 1) != 0 || ((*(a2 + 16920) * v50 + 256) >> 9) + (*v65 << 7) <= v42;
  }

  return result;
}

double sub_277A464B0(uint64_t a1)
{
  *(a1 + 9784) = xmmword_277BF4CD4;
  *(a1 + 9800) = unk_277BF4CE4;
  *(a1 + 9816) = xmmword_277BF4CF4;
  *(a1 + 9720) = xmmword_277BF4C94;
  *(a1 + 9736) = unk_277BF4CA4;
  *(a1 + 9752) = xmmword_277BF4CB4;
  *(a1 + 9768) = unk_277BF4CC4;
  *(a1 + 9832) = xmmword_277BF4D04;
  *(a1 + 9848) = unk_277BF4D14;
  *(a1 + 9912) = xmmword_277BF4D54;
  *(a1 + 9928) = unk_277BF4D64;
  *(a1 + 9880) = unk_277BF4D34;
  *(a1 + 9896) = xmmword_277BF4D44;
  *(a1 + 9864) = xmmword_277BF4D24;
  memcpy((a1 + 9944), &unk_277BF6028, 0x276uLL);
  memcpy((a1 + 10574), &unk_277BF629E, 0x276uLL);
  memcpy((a1 + 14186), &unk_277BF4D74, 0x2BCuLL);
  *(a1 + 14950) = xmmword_277BF5070;
  *(a1 + 14966) = unk_277BF5080;
  *(a1 + 14982) = xmmword_277BF5090;
  *(a1 + 14998) = unk_277BF50A0;
  *(a1 + 14886) = xmmword_277BF5030;
  *(a1 + 14902) = unk_277BF5040;
  *(a1 + 14918) = xmmword_277BF5050;
  *(a1 + 14934) = unk_277BF5060;
  *(a1 + 11356) = *(&xmmword_277BF50B0 + 14);
  *(a1 + 11342) = xmmword_277BF50B0;
  *(a1 + 11480) = xmmword_277BF50CE;
  *(a1 + 11494) = *(&xmmword_277BF50CE + 14);
  *(a1 + 11556) = 397017088;
  *(a1 + 11510) = xmmword_277BF50EC;
  *(a1 + 11526) = unk_277BF50FC;
  *(a1 + 11542) = xmmword_277BF510C;
  *(a1 + 11314) = unk_277BF5190;
  *(a1 + 11284) = xmmword_277BF5172;
  *(a1 + 11300) = unk_277BF5182;
  *(a1 + 11252) = xmmword_277BF5152;
  *(a1 + 11268) = unk_277BF5162;
  *(a1 + 11220) = xmmword_277BF5132;
  *(a1 + 11236) = unk_277BF5142;
  *(a1 + 11204) = xmmword_277BF5122;
  *(a1 + 11338) = 0;
  *(a1 + 11330) = 0x2C10000000000133;
  *(a1 + 11610) = 342360064;
  *(a1 + 11580) = unk_277BF51BC;
  *(a1 + 11596) = xmmword_277BF51CC;
  *(a1 + 11564) = xmmword_277BF51AC;
  *(a1 + 11650) = 0;
  *(a1 + 11618) = xmmword_277BF51E2;
  *(a1 + 11634) = *algn_277BF51F2;
  *(a1 + 11372) = xmmword_277BF5206;
  *(a1 + 11388) = *algn_277BF5216;
  *(a1 + 11464) = unk_277BF5262;
  *(a1 + 11436) = xmmword_277BF5246;
  *(a1 + 11452) = unk_277BF5256;
  *(a1 + 11404) = xmmword_277BF5226;
  *(a1 + 11420) = unk_277BF5236;
  *(a1 + 11686) = xmmword_277BF5292;
  *(a1 + 11702) = unk_277BF52A2;
  *(a1 + 11654) = xmmword_277BF5272;
  *(a1 + 11670) = *algn_277BF5282;
  *(a1 + 11764) = *(&xmmword_277BF52D2 + 14);
  *(a1 + 11734) = unk_277BF52C2;
  *(a1 + 11750) = xmmword_277BF52D2;
  *(a1 + 11718) = xmmword_277BF52B2;
  *(a1 + 11812) = 0;
  *(a1 + 11780) = xmmword_277BF52F0;
  *(a1 + 11796) = unk_277BF5300;
  *(a1 + 11848) = 0;
  *(a1 + 11816) = xmmword_277BF5314;
  *(a1 + 11832) = unk_277BF5324;
  *(a1 + 8122) = 0;
  *(a1 + 8090) = xmmword_277BF5338;
  *(a1 + 8106) = unk_277BF5348;
  *(a1 + 8134) = 0;
  *(a1 + 8126) = 0x7BE2000000007781;
  *(a1 + 8170) = 0;
  *(a1 + 8138) = xmmword_277BF5368;
  *(a1 + 8154) = unk_277BF5378;
  *(a1 + 8174) = xmmword_277BF538C;
  *(a1 + 8190) = 0;
  *(a1 + 9412) = xmmword_277BF539E;
  *(a1 + 9428) = unk_277BF53AE;
  *(a1 + 9476) = xmmword_277BF53DE;
  *(a1 + 9492) = unk_277BF53EE;
  *(a1 + 9444) = xmmword_277BF53BE;
  *(a1 + 9460) = unk_277BF53CE;
  *(a1 + 9556) = xmmword_277BF542E;
  *(a1 + 9572) = unk_277BF543E;
  *(a1 + 9524) = unk_277BF540E;
  *(a1 + 9540) = xmmword_277BF541E;
  *(a1 + 9508) = xmmword_277BF53FE;
  *(a1 + 9716) = 0;
  *(a1 + 9652) = xmmword_277BF548E;
  *(a1 + 9668) = unk_277BF549E;
  *(a1 + 9684) = xmmword_277BF54AE;
  *(a1 + 9700) = unk_277BF54BE;
  *(a1 + 9588) = xmmword_277BF544E;
  *(a1 + 9604) = *algn_277BF545E;
  *(a1 + 9620) = xmmword_277BF546E;
  *(a1 + 9636) = unk_277BF547E;
  *(a1 + 0x2000) = xmmword_277BF54D2;
  *(a1 + 8256) = xmmword_277BF5512;
  *(a1 + 8240) = unk_277BF5502;
  *(a1 + 8224) = xmmword_277BF54F2;
  *(a1 + 8208) = *algn_277BF54E2;
  *(a1 + 8320) = unk_277BF5552;
  *(a1 + 8304) = xmmword_277BF5542;
  *(a1 + 8288) = xmmword_277BF5532;
  *(a1 + 8272) = unk_277BF5522;
  *(a1 + 8464) = 0;
  *(a1 + 8400) = xmmword_277BF55A2;
  *(a1 + 8416) = unk_277BF55B2;
  *(a1 + 8432) = xmmword_277BF55C2;
  *(a1 + 8448) = unk_277BF55D2;
  *(a1 + 8336) = xmmword_277BF5562;
  *(a1 + 8352) = *algn_277BF5572;
  *(a1 + 8368) = xmmword_277BF5582;
  *(a1 + 8384) = unk_277BF5592;
  memcpy((a1 + 8468), &unk_277BF55E6, 0x2ECuLL);
  *(a1 + 9232) = 165871616;
  *(a1 + 9216) = xmmword_277BF58D2;
  *(a1 + 9368) = 0;
  *(a1 + 9304) = xmmword_277BF592A;
  *(a1 + 9320) = unk_277BF593A;
  *(a1 + 9336) = xmmword_277BF594A;
  *(a1 + 9352) = unk_277BF595A;
  *(a1 + 9240) = xmmword_277BF58EA;
  *(a1 + 9256) = *algn_277BF58FA;
  *(a1 + 9272) = xmmword_277BF590A;
  *(a1 + 9288) = unk_277BF591A;
  *(a1 + 9404) = 448418543;
  *(a1 + 9372) = xmmword_277BF596E;
  *(a1 + 9388) = unk_277BF597E;
  *(a1 + 12506) = 0;
  *(a1 + 12490) = xmmword_277BF5996;
  *(a1 + 12690) = 0;
  *(a1 + 12626) = xmmword_277BF59E8;
  *(a1 + 12642) = unk_277BF59F8;
  *(a1 + 12658) = xmmword_277BF5A08;
  *(a1 + 12674) = unk_277BF5A18;
  *(a1 + 12562) = xmmword_277BF59A8;
  *(a1 + 12578) = unk_277BF59B8;
  *(a1 + 12594) = xmmword_277BF59C8;
  *(a1 + 12610) = unk_277BF59D8;
  *(a1 + 12706) = 667638587;
  *(a1 + 12702) = 0;
  *(a1 + 12694) = 0xC8A3CC54E185D0BLL;
  *(a1 + 12714) = 21198;
  *(a1 + 12718) = 0;
  *(a1 + 12720) = 15913;
  *(a1 + 12724) = 0;
  *(a1 + 12790) = xmmword_277BF5A84;
  *(a1 + 12806) = unk_277BF5A94;
  *(a1 + 12822) = xmmword_277BF5AA4;
  *(a1 + 12726) = xmmword_277BF5A44;
  *(a1 + 12742) = unk_277BF5A54;
  *(a1 + 12758) = xmmword_277BF5A64;
  *(a1 + 12774) = unk_277BF5A74;
  memcpy((a1 + 12838), &unk_277BF5AB4, 0x30CuLL);
  *(a1 + 14122) = xmmword_277BF5E00;
  *(a1 + 14138) = unk_277BF5E10;
  *(a1 + 14154) = xmmword_277BF5E20;
  *(a1 + 14170) = unk_277BF5E30;
  *(a1 + 14058) = xmmword_277BF5DC0;
  *(a1 + 14074) = unk_277BF5DD0;
  *(a1 + 14090) = xmmword_277BF5DE0;
  *(a1 + 14106) = unk_277BF5DF0;
  memcpy((a1 + 13618), &unk_277BF6514, 0x1B8uLL);
  memcpy((a1 + 15170), &unk_277BF66CC, 0x14B8uLL);
  memcpy((a1 + 20474), &unk_277BF7B84, 0x220uLL);
  v2 = 0;
  *(a1 + 11868) = 0;
  *(a1 + 11852) = xmmword_277BF5E40;
  *(a1 + 11886) = 0;
  *(a1 + 11870) = xmmword_277BF5E52;
  *(a1 + 11904) = 408289280;
  *(a1 + 11888) = xmmword_277BF5E64;
  do
  {
    v3 = a1 + 12508 + v2;
    *v3 = *(&unk_277BF5E7C + v2);
    *(v3 + 16) = *(&unk_277BF5E7C + v2 + 16);
    v2 += 18;
  }

  while (v2 != 54);
  *(a1 + 15046) = xmmword_277BF5ED2;
  *(a1 + 15062) = unk_277BF5EE2;
  *(a1 + 15078) = xmmword_277BF5EF2;
  *(a1 + 15094) = *"ji-S";
  *(a1 + 15014) = xmmword_277BF5EB2;
  *(a1 + 15030) = unk_277BF5EC2;
  *(a1 + 15110) = 0x5B02881200;
  *(a1 + 15118) = 0;
  *(a1 + 15160) = 0x5B02881200;
  *(a1 + 15168) = 0;
  *(a1 + 15152) = 5964424;
  *(a1 + 15136) = *algn_277BF5F2C;
  *(a1 + 15120) = xmmword_277BF5F1C;
  *(a1 + 21034) = 0;
  *(a1 + 21018) = xmmword_277BF5F44;
  *(a1 + 21196) = xmmword_277BF5FF6;
  *(a1 + 21212) = unk_277BF6006;
  *(a1 + 21224) = unk_277BF6012;
  *(a1 + 21132) = xmmword_277BF5FB6;
  *(a1 + 21148) = unk_277BF5FC6;
  *(a1 + 21164) = xmmword_277BF5FD6;
  *(a1 + 21180) = unk_277BF5FE6;
  *(a1 + 21068) = xmmword_277BF5F76;
  *(a1 + 21084) = unk_277BF5F86;
  *(a1 + 21100) = xmmword_277BF5F96;
  *(a1 + 21116) = unk_277BF5FA6;
  result = dbl_277BF5F66[0];
  *(a1 + 21036) = xmmword_277BF5F56;
  *(a1 + 21052) = *dbl_277BF5F66;
  *(a1 + 12488) = 0;
  *(a1 + 12484) = 2237;
  return result;
}

void *sub_277A46C04(uint64_t a1)
{
  result = memcpy(*(a1 + 24712), *(a1 + 24704), 0x52FCuLL);
  if (*(a1 + 25300))
  {
    for (i = 0; i != 28; i += 4)
    {
      v4 = *(a1 + 240 + i);
      if (v4 != -1)
      {
        v5 = *(a1 + 416 + 8 * v4);
        if (v5)
        {
          result = memcpy((v5 + 1496), *(a1 + 24704), 0x52FCuLL);
        }
      }
    }

    v6 = *(a1 + 25312);
    if (*(v6 + 96))
    {
      v7 = 0;
      v8 = 1496;
      do
      {
        result = memcpy((*(v6 + 88) + v8), *(a1 + 24704), 0x52FCuLL);
        ++v7;
        v6 = *(a1 + 25312);
        v8 += 22744;
      }

      while (v7 < *(v6 + 96));
    }
  }

  return result;
}

void *sub_277A46CC8(uint64_t a1)
{
  v2 = a1 + 20480;
  *(a1 + 19124) = 0u;
  *(a1 + 19140) = 0u;
  *(a1 + 19092) = 0u;
  *(a1 + 19108) = 0u;
  *(a1 + 19060) = 0u;
  *(a1 + 19076) = 0u;
  *(a1 + 19028) = 0u;
  *(a1 + 19044) = 0u;
  *(a1 + 18996) = 0u;
  *(a1 + 19012) = 0u;
  v3 = *(a1 + 232);
  v4 = *(v3 + 80);
  if (v4)
  {
    bzero(v4, *(v3 + 264) * *(v3 + 260));
    v3 = *(a1 + 232);
  }

  *(v3 + 1484) = 0xFFFF00FF00000001;
  *(*(a1 + 232) + 1492) = 0;
  *(v2 + 2564) = 0xFF000000010101;
  *(v2 + 2572) = 0xFFFF;
  sub_27798F98C(a1);
  sub_277A464B0(*(a1 + 24704));
  memcpy((*(a1 + 24704) + 11912), &unk_277BC0A3E, 0x11EuLL);
  memcpy((*(a1 + 24704) + 12198), &unk_277BC0A3E, 0x11EuLL);
  *(*(a1 + 24704) + 21240) = 1;

  return sub_277A46C04(a1);
}

uint64_t sub_277A46DC8(uint64_t result, int a2)
{
  v2 = 0;
  v3 = a2 > 4;
  if (a2 > 0)
  {
    ++v3;
  }

  v4 = (result + 16);
  v5 = 4;
  do
  {
    v6 = v2 >> v3;
    if ((v2 >> v3) >= 9 - a2)
    {
      v7 = 9 - a2;
    }

    else
    {
      v7 = v2 >> v3;
    }

    if (a2 > 0)
    {
      v6 = v7;
    }

    if (v6 <= 1)
    {
      LOBYTE(v6) = 1;
    }

    v8 = 0x101010101010101 * v6;
    *v4 = v8;
    v4[1] = v8;
    v9 = 0x101010101010101 * (v6 + v5);
    *(v4 - 2) = v9;
    *(v4 - 1) = v9;
    ++v2;
    v4 += 6;
    v5 += 2;
  }

  while (v2 != 64);
  return result;
}

int *sub_277A46E40(uint64_t a1, unsigned int a2, int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a1 + 18992;
  result = sub_277A46DC8(a1 + 19184, *(a1 + 23040));
  v8 = *(v6 + 4032);
  v39 = v8;
  v9 = *(a1 + 23032);
  v40 = v9;
  v10 = *(v6 + 4036);
  v37 = v10;
  v38 = v9;
  if (a2 < a3)
  {
    v11 = (v6 + 4054);
    v12 = a2;
    result = &v37;
    do
    {
      if (!v12 && !v8 && !v10)
      {
        break;
      }

      v14 = v12 != 2 || HIDWORD(v9) != 0;
      if (v9)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == 1;
      }

      if (!v15 && v14)
      {
        for (i = 0; i != 8; ++i)
        {
          v17 = 0;
          v18 = 1;
          v19 = a1 + 22256 + (v12 << 8) + 32 * i;
          do
          {
            v20 = v18;
            if (v18)
            {
              v21 = &v39;
            }

            else
            {
              v21 = &v37;
            }

            v22 = v21[v12];
            if (*v6 && ((*(a1 + 19124 + 4 * i) >> byte_277BF7DA4[2 * v12 + v17]) & 1) != 0)
            {
              v23 = v22 + *(a1 + 18996 + 16 * i + 2 * byte_277BF7DA4[2 * v12 + v17]);
              if (v23 >= 0x3F)
              {
                v24 = 63;
              }

              else
              {
                v24 = v23;
              }

              if (v23 >= 0)
              {
                v22 = v24;
              }

              else
              {
                v22 = 0;
              }
            }

            if (*(v6 + 4052))
            {
              v25 = (*v11 << (v22 >> 5)) + v22;
              if (v25 >= 0x3F)
              {
                v26 = 63;
              }

              else
              {
                v26 = (*v11 << (v22 >> 5)) + v22;
              }

              if (v25 >= 0)
              {
                v27 = v26;
              }

              else
              {
                v27 = 0;
              }

              *(v19 + 16 * v17) = v27;
              for (j = 1; j != 8; ++j)
              {
                v29 = 0;
                v30 = 1;
                do
                {
                  v31 = v30;
                  v32 = ((v11[j] + *(a1 + 23054 + v29)) << (v22 >> 5)) + v22;
                  if (v32 >= 0x3F)
                  {
                    v33 = 63;
                  }

                  else
                  {
                    v33 = ((v11[j] + *(a1 + 23054 + v29)) << (v22 >> 5)) + v22;
                  }

                  if (v32 >= 0)
                  {
                    v34 = v33;
                  }

                  else
                  {
                    v34 = 0;
                  }

                  *(v19 + 16 * v17 + 2 * j + v29) = v34;
                  v29 = 1;
                  v30 = 0;
                }

                while ((v31 & 1) != 0);
              }
            }

            else
            {
              v35 = (v19 + 16 * v17);
              v36 = 0x101010101010101 * v22;
              *v35 = v36;
              v35[1] = v36;
            }

            v18 = 0;
            v17 = 1;
          }

          while ((v20 & 1) != 0);
        }
      }

      ++v12;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t sub_277A4708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, _DWORD *a9)
{
  *a1 = 0;
  if (a9[8] <= a6 || a9[9] <= a7)
  {
    return 0;
  }

  v10 = a9[1];
  v11 = a9[2];
  v12 = v11 | (a7 << v11 >> 2);
  v13 = v10 | (a6 << v10 >> 2);
  v14 = (*(a3 + 568) + 8 * v12 * *(a3 + 580) + 8 * v13);
  v15 = *v14;
  if (!*v14)
  {
    return 255;
  }

  v21 = v10;
  if (a4 && *(a4 + 4 * (*(v15 + 167) & 7) + 10692))
  {
    v22 = 0;
  }

  else if (a8)
  {
    v22 = byte_277C3BD80[byte_277C3BCDE[4 * *v15 + 2 * v10 + v11]];
    if (v22 > 0x10)
    {
      if (v22 == 17)
      {
        v22 = 9;
      }

      else if (v22 == 18)
      {
        v22 = 10;
      }
    }

    else if ((v22 - 11) < 2 || v22 == 4)
    {
      v22 = 3;
    }
  }

  else
  {
    v22 = v15[145];
    if (((*(v15 + 167) & 0x80) != 0 || v15[16] >= 1) && !v15[144])
    {
      v25 = *v15;
      v22 = v15[(((byte_277C3F990[v25] - 1) & v13) >> byte_277BFC806[v25]) + 146 + (((byte_277C36D60[v25] - 1) & v12) >> byte_277BFC81C[v25] << byte_277BFC832[v25])];
    }
  }

  v26 = dword_277C3BF30;
  if (a5)
  {
    v27 = a7;
  }

  else
  {
    v27 = a6;
  }

  if (!a5)
  {
    v26 = dword_277C3BEE4;
  }

  if (((v26[v22] - 1) & v27) == 0)
  {
    v52 = v27;
    v49 = v11 | (a7 << v11 >> 2);
    v53 = v21;
    v50 = a3 + 19184;
    v51 = v11;
    v28 = sub_277A47B90(a3, a3 + 19184, a5, a8, v15);
    if (v15[144])
    {
      v29 = (*(v15 + 167) & 0x80) != 0 || v15[16] > 0;
    }

    else
    {
      v29 = 0;
    }

    if (v52)
    {
      v30 = v14[-a2];
      if (v30)
      {
        v48 = v29;
        v31 = -1 << v51;
        if (!a5)
        {
          v31 = 0;
        }

        v32 = -1 << v53;
        if (a5)
        {
          v32 = 0;
        }

        if (a4 && *(a4 + 4 * (*(v30 + 167) & 7) + 10692))
        {
          v33 = v28;
          v34 = 0;
          v35 = v50;
        }

        else
        {
          v35 = v50;
          v33 = v28;
          if (a8)
          {
            v34 = sub_277A47D0C(*v30, v53, v51);
          }

          else
          {
            v34 = v30[145];
            if (((*(v30 + 167) & 0x80) != 0 || v30[16] >= 1) && !v30[144])
            {
              v36 = *v30;
              v34 = v30[(((byte_277C3F990[v36] - 1) & (v13 + v32)) >> byte_277BFC806[v36]) + 146 + (((byte_277C36D60[v36] - 1) & (v49 + v31)) >> byte_277BFC81C[v36] << byte_277BFC832[v36])];
            }
          }
        }

        v37 = v34;
        v38 = sub_277A47B90(a3, v35, a5, a8, v30);
        v39 = v30[144];
        if (v30[144])
        {
          v40 = v51;
          v39 = (*(v30 + 167) & 0x80) != 0 || v30[16] > 0;
          v41 = v53;
        }

        else
        {
          v41 = v53;
          v40 = v51;
        }

        if (v33 | v38)
        {
          v42 = byte_277C3CAE8;
          if (!a5)
          {
            v42 = byte_277C3CAFE;
          }

          if ((v39 & v48) != 1 || ((v42[byte_277C3BCDE[4 * *v15 + 2 * v41 + v40]] - 1) & v52) == 0)
          {
            v43 = &unk_277BF7DF8;
            if (!a5)
            {
              v43 = &unk_277BF7DAC;
            }

            v44 = v43[v22];
            v45 = v43[v37];
            if (v44 < v45)
            {
              v45 = v44;
            }

            if (a8)
            {
              if (v45)
              {
                LOBYTE(v46) = 6;
              }

              else
              {
                LOBYTE(v46) = 4;
              }
            }

            else
            {
              v46 = dword_277BF7E44[v45];
            }

            *a1 = v46;
            if (v46)
            {
              if (v33)
              {
                v47 = v33;
              }

              else
              {
                v47 = v38;
              }

              *(a1 + 8) = v35 + 48 * v47;
            }
          }
        }

        return v22;
      }

      return 255;
    }
  }

  return v22;
}