uint64_t sub_2775CA44C(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, __int16 a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a5 >= 1)
  {
    v9 = 0;
    v10 = &unk_2775F0F80 + 64 * (a6 & 0x1FF);
    v11 = (a3 + 2);
    v32 = a5;
    do
    {
      if (a4 >= 1)
      {
        v12 = 0;
        v13 = (a3 - 2 * v9);
        v14 = v13 - 1;
        v15 = -1;
        v16 = result;
        do
        {
          v17 = *v13;
          v18 = *v11;
          v19 = v11[1];
          v20 = v11[2];
          v13 = v11 + 3;
          v21 = v11[3];
          v22 = 1;
          v23 = v16;
          v24 = v10;
          v25 = *v14;
          v26 = v14[v15];
          do
          {
            v27 = 0;
            v28 = v22;
            do
            {
              v29 = (v24[8] * v18 + *v24 * v17 + v24[16] * v19 + v24[24] * v20 + v24[32] * v21 + v24[40] * v25 + v24[48] * v26 + 8) >> 4;
              if (v29 >= a9)
              {
                v30 = a9;
              }

              else
              {
                v30 = (v24[8] * v18 + *v24 * v17 + v24[16] * v19 + v24[24] * v20 + v24[32] * v21 + v24[40] * v25 + v24[48] * v26 + 8) >> 4;
              }

              if (v29 >= 0)
              {
                v31 = v30;
              }

              else
              {
                v31 = 0;
              }

              *(v23 + v27) = v31;
              ++v24;
              v27 += 2;
            }

            while (v27 != 8);
            v22 = 0;
            v23 += a2;
          }

          while ((v28 & 1) != 0);
          v14 = (result + 2 * v12 + 6);
          v11 += 4;
          v16 += 8;
          v12 += 4;
          v15 = a2 >> 1;
        }

        while (v12 < a4);
      }

      v11 = (result + 2 * (a2 >> 1));
      result += 2 * a2;
      v9 += 2;
    }

    while (v9 < v32);
  }

  return result;
}

uint64_t sub_2775CA5D8(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = a5;
  v51 = result;
  v53 = *MEMORY[0x277D85DE8];
  v13 = a6 & 0x1FF;
  v14 = word_2775F0F00[(270 - v13) >> 1];
  if (a6 < 0x400)
  {
    goto LABEL_2;
  }

  v19 = a5 + a4;
  if ((v13 - 220) >= 0xFFFFFFD8 && (0x10u >> ((a6 & 0x200) != 0)) >= v19)
  {
    result = sub_2775CAA2C(v52, a5 + a4, a3 - 2 * v19, (a4 - a5) & ~((a4 - a5) >> 31), v19 + 1, a9);
    v17 = 2 * v19 - 2;
    v15 = &v52[v17];
    v14 *= 2;
    v18 = 2;
    goto LABEL_11;
  }

  result = sub_2775C78D8(a5 + a4, v13 - 180, (a6 >> 9) & 1);
  if (result)
  {
    result = sub_2775CAAF8(v52, v19, 0, v19, a3 - 2 * v19, (a4 - v9) & ~((a4 - v9) >> 31), v19 + 1, result);
    LODWORD(v17) = v19 - 1;
    v15 = &v52[v19 - 1];
    v9 = a5;
    v18 = 1;
  }

  else
  {
LABEL_2:
    v15 = (a3 - 2);
    if (a4 >= v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = a4;
    }

    LODWORD(v17) = v9 + v16 - 1;
    v18 = 1;
  }

LABEL_11:
  if (a4 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v45 = -v17;
    v22 = v17;
    v23 = v9;
    v24 = v9;
    v25 = v9 - 1;
    v26 = v14;
    v27 = v51;
    v47 = v14;
    do
    {
      v28 = v26 >> 6;
      if ((v26 >> 6) <= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 = v26 >> 6;
      }

      v50 = v29;
      v49 = (v26 >> 6) < v22;
      if ((v26 >> 6) >= v22)
      {
        result = v26 >> 6;
      }

      else
      {
        result = v28 + 1;
      }

      if (v9 >= 1)
      {
        v30 = 0;
        v31 = ~(v26 >> 6) << 32;
        v46 = v50 - result;
        v32 = v20;
        v33 = v27;
        v34 = &v15[-v28];
        result = (v26 >> 6) - v18;
        while (1)
        {
          result += v18;
          if (result >= v22)
          {
            break;
          }

          *v33 = ((v26 & 0x3E) * *(v15 + (v31 >> 31)) + (64 - (v26 & 0x3E)) * *v34 + 32) >> 6;
          v33 = (v33 + a2);
          v34 -= v18;
          v31 -= v18 << 32;
          ++v30;
          v32 += a2;
          if (v23 == v30)
          {
            goto LABEL_49;
          }
        }

        v35 = 0;
        v36 = v46 / v18 + v49;
        if (v36 >= v25)
        {
          v36 = v25;
        }

        if ((v36 + 1) > v24)
        {
          v37 = v36 + 1;
        }

        else
        {
          v37 = v24;
        }

        v38 = v15[v45];
        v39 = vdupq_n_s64(~v36 + v37);
        result = (v50 - (v28 + v49)) / v18 + v49;
        do
        {
          v40 = vdupq_n_s64(v35);
          v41 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v40, xmmword_2775ED490)));
          if (vuzp1_s8(vuzp1_s16(v41, 6), 6).u8[0])
          {
            *(v51 + v32) = v38;
          }

          if (vuzp1_s8(vuzp1_s16(v41, 6), 6).i8[1])
          {
            *(v51 + a2 + v32) = v38;
          }

          if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v40, xmmword_2775ED480)))), 6).i8[2])
          {
            *(v51 + 2 * a2 + v32) = v38;
            *(v51 + 6 * (a2 >> 1) + v32) = v38;
          }

          v42 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v40, xmmword_2775ED470)));
          if (vuzp1_s8(6, vuzp1_s16(v42, 6)).i32[1])
          {
            *(v51 + 4 * a2 + v32) = v38;
          }

          if (vuzp1_s8(6, vuzp1_s16(v42, 6)).i8[5])
          {
            *(v51 + 10 * (a2 >> 1) + v32) = v38;
          }

          if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v40, xmmword_2775ED460))))).i8[6])
          {
            *(v51 + 12 * (a2 >> 1) + v32) = v38;
            *(v51 + 14 * (a2 >> 1) + v32) = v38;
          }

          v35 += 8;
          if (result >= v25)
          {
            v43 = v25;
          }

          else
          {
            v43 = (v50 - (v28 + v49)) / v18 + v49;
          }

          if ((v43 + 1) > v24)
          {
            v44 = v43 + 1;
          }

          else
          {
            v44 = v24;
          }

          v32 += 8 * a2;
        }

        while (((v44 - v43 + 7) & 0xFFFFFFFFFFFFFFF8) != v35);
      }

LABEL_49:
      ++v21;
      v9 = a5;
      v26 += v47;
      ++v27;
      v20 += 2;
    }

    while (v21 != a4);
  }

  return result;
}

uint64_t sub_2775CAA2C(uint64_t result, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = a5 - 1;
  if (a2 < 2)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v7 = 0;
    v8 = (a2 - 1);
    do
    {
      v9 = 0;
      v10 = 0;
      if (v7 >= v6)
      {
        v11 = a5 - 1;
      }

      else
      {
        v11 = v7;
      }

      if (v7 < a4)
      {
        v11 = a4;
      }

      *(result + 4 * v7) = *(a3 + 2 * v11);
      do
      {
        v12 = v7 + v9 - 1;
        if (v12 >= v6)
        {
          v12 = a5 - 1;
        }

        if (v7 + v9 <= a4)
        {
          v13 = a4;
        }

        else
        {
          v13 = v12;
        }

        v10 += byte_2775F0F58[v9++] * *(a3 + 2 * v13);
      }

      while (v9 != 4);
      v14 = (v10 + 8) >> 4;
      if (v14 >= a6)
      {
        v15 = a6;
      }

      else
      {
        v15 = v14;
      }

      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      *(result + 4 * v7++ + 2) = v16;
    }

    while (v7 != v8);
  }

  if (v8 < v6)
  {
    v6 = v8;
  }

  if (v8 < a4)
  {
    v6 = a4;
  }

  *(result + 2 * (2 * v8)) = *(a3 + 2 * v6);
  return result;
}

uint64_t sub_2775CAAF8(uint64_t result, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  if (a2 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  if (v8 < 1)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if (i >= a7 - 1)
      {
        v10 = a7 - 1;
      }

      else
      {
        v10 = i;
      }

      if (i < a6)
      {
        v10 = a6;
      }

      *(result + 2 * i) = *(a5 + 2 * v10);
    }
  }

  if (a4 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a4;
  }

  if (v8 < v11)
  {
    v8 = v8;
    do
    {
      v12 = 0;
      for (j = -2; j != 3; ++j)
      {
        if (v8 + j >= a7 - 1)
        {
          v14 = a7 - 1;
        }

        else
        {
          v14 = v8 + j;
        }

        if (v8 + j >= a6)
        {
          v15 = v14;
        }

        else
        {
          v15 = a6;
        }

        v12 += byte_2775F0F5C[5 * (a8 - 1) + 2 + j] * *(a5 + 2 * v15);
      }

      *(result + 2 * v8++) = (v12 + 8) >> 4;
    }

    while (v8 != v11);
    LODWORD(v8) = v11;
  }

  if (v8 < a2)
  {
    v8 = v8;
    do
    {
      if (v8 >= a7 - 1)
      {
        v16 = a7 - 1;
      }

      else
      {
        v16 = v8;
      }

      if (v8 < a6)
      {
        v16 = a6;
      }

      *(result + 2 * v8++) = *(a5 + 2 * v16);
    }

    while (a2 != v8);
  }

  return result;
}

uint64_t sub_2775CAC04(uint64_t a1, uint64_t a2, _WORD *a3, int a4, int a5, unsigned int a6, int a7, int a8, int a9)
{
  v43[16] = *MEMORY[0x277D85DE8];
  v15 = (a6 >> 9) & 1;
  v16 = (a6 & 0x1FF) - 90;
  v17 = *(word_2775F0F00 + (v16 & 0xFFFFFFFE));
  v39 = 180 - (a6 & 0x1FF);
  v18 = *(word_2775F0F00 + (v39 & 0xFE));
  v40 = v15;
  if (a6 > 0x3FF)
  {
    v19 = a5 + a4;
    v20 = 0x10u >> v15;
    v22 = (a6 & 0x1FF) > 0x8C && v20 >= v19;
    v41 = v22;
    if (v16 <= 0x27 && v20 >= v19)
    {
      sub_2775CAA2C(v42, a4 + 1, a3, 0, a4 + 1, a9);
      v18 *= 2;
      v23 = 2;
      goto LABEL_16;
    }

    v24 = sub_2775C78D8(v19, v16, v15);
    if (v24)
    {
      sub_2775CAAF8(v43, a4, 0, a7, (a3 + 1), -1, a4, v24);
      goto LABEL_15;
    }
  }

  else
  {
    v41 = 0;
  }

  __memcpy_chk();
LABEL_15:
  v23 = 1;
LABEL_16:
  if (v41)
  {
    result = sub_2775CAA2C(&v42[-2 * a5], a5 + 1, &a3[-a5], 0, a5 + 1, a9);
    v17 *= 2;
  }

  else if (a6 >= 0x400 && (v26 = sub_2775C78D8(a5 + a4, v39, v40)) != 0)
  {
    result = sub_2775CAAF8(&v42[-a5], a5, a5 - a8, a5, &a3[-a5], 0, a5 + 1, v26);
  }

  else
  {
    result = memcpy(&v42[-a5], &a3[-a5], 2 * a5);
  }

  v42[0] = *a3;
  if (a5 >= 1)
  {
    v27 = 0;
    v28 = v23 << 6;
    v29 = &v42[~v41];
    do
    {
      v28 -= v18;
      if (a4 >= 1)
      {
        v30 = 0;
        LODWORD(result) = v28 >> 6;
        v31 = (v27 << (v41 | 6)) - v17;
        do
        {
          if ((result & 0x80000000) != 0)
          {
            v36 = v31 & 0x3E;
            v35 = (64 - v36) * v29[-(v31 >> 6)];
            v33 = &v29[~(v31 >> 6)];
          }

          else
          {
            v32 = &v42[result];
            v34 = *v32;
            v33 = v32 + 1;
            v35 = (64 - (v28 & 0x3E)) * v34;
            v36 = v28 & 0x3E;
          }

          *(a1 + v30) = (v35 + v36 * *v33 + 32) >> 6;
          result = (result + v23);
          v30 += 2;
          v31 -= v17;
        }

        while (2 * a4 != v30);
      }

      ++v27;
      a1 += a2;
    }

    while (v27 != a5);
  }

  return result;
}

uint64_t sub_2775CAED8(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, int a9)
{
  v13 = result;
  v46 = *MEMORY[0x277D85DE8];
  v14 = *(word_2775F0F00 + (a6 & 0x1FE));
  if (a6 < 0x400)
  {
    goto LABEL_2;
  }

  v17 = a5 + a4;
  if ((a6 & 0x1FF) < 0x33 || (0x10u >> ((a6 & 0x200) != 0)) < v17)
  {
    result = sub_2775C78D8(a5 + a4, 90 - (a6 & 0x1FF), (a6 >> 9) & 1);
    if (result)
    {
      if (a4 >= a5)
      {
        v21 = a5;
      }

      else
      {
        v21 = a4;
      }

      v15 = v45;
      result = sub_2775CAAF8(v45, a5 + a4, 0, a5 + a4, a3 + 2, -1, v21 + a4, result);
      goto LABEL_17;
    }

LABEL_2:
    v15 = (a3 + 2);
    if (a4 >= a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = a4;
    }

    v17 = v16 + a4;
LABEL_17:
    v19 = v17 - 1;
    v20 = 1;
    goto LABEL_18;
  }

  if (a4 >= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = a4;
  }

  v15 = v45;
  result = sub_2775CAA2C(v45, a5 + a4, a3 + 2, -1, v18 + a4, a9);
  v19 = 2 * v17 - 2;
  v14 *= 2;
  v20 = 2;
LABEL_18:
  if (a5 >= 1)
  {
    v22 = 0;
    v23 = a4 - 1;
    v24 = (v13 + 8);
    v25 = vdupq_n_s64(8uLL);
    v26 = v14;
    do
    {
      v27 = v26 >> 6;
      if ((v26 >> 6) <= v19)
      {
        v28 = v19;
      }

      else
      {
        v28 = v26 >> 6;
      }

      v29 = (v26 >> 6) < v19;
      if ((v26 >> 6) >= v19)
      {
        v30 = v26 >> 6;
      }

      else
      {
        v30 = v27 + 1;
      }

      if (a4 >= 1)
      {
        result = 0;
        v31 = v28 - v30;
        v32 = v24;
        v33 = v26 >> 6;
        while (v33 < v19)
        {
          *(v13 + 2 * result++) = ((v26 & 0x3E) * *&v15[2 * v33 + 2] + (64 - (v26 & 0x3E)) * *&v15[2 * v33] + 32) >> 6;
          v33 += v20;
          ++v32;
          if (a4 == result)
          {
            goto LABEL_50;
          }
        }

        if (result < a4)
        {
          result = *&v15[2 * v19];
          v34 = v31 / v20 + v29;
          if (v34 >= v23)
          {
            LODWORD(v34) = a4 - 1;
          }

          v35 = (a4 - v34) - 1;
          v36 = (v28 - (v27 + v29)) / v20 + v29;
          if (v36 >= v23)
          {
            LODWORD(v36) = a4 - 1;
          }

          v37 = ((a4 - v36) + 7) & 0x1FFFFFFF8;
          v38 = vdupq_n_s64(v35);
          v39 = xmmword_2775ED490;
          v40 = xmmword_2775ED480;
          v41 = xmmword_2775ED470;
          v42 = xmmword_2775ED460;
          do
          {
            v43 = vmovn_s64(vcgeq_u64(v38, v39));
            if (vuzp1_s8(vuzp1_s16(v43, 6), 6).u8[0])
            {
              *(v32 - 4) = result;
            }

            if (vuzp1_s8(vuzp1_s16(v43, 6), 6).i8[1])
            {
              *(v32 - 3) = result;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v38, *&v40))), 6).i8[2])
            {
              *(v32 - 2) = result;
              *(v32 - 1) = result;
            }

            v44 = vmovn_s64(vcgeq_u64(v38, v41));
            if (vuzp1_s8(6, vuzp1_s16(v44, 6)).i32[1])
            {
              *v32 = result;
            }

            if (vuzp1_s8(6, vuzp1_s16(v44, 6)).i8[5])
            {
              v32[1] = result;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v38, *&v42)))).i8[6])
            {
              v32[2] = result;
              v32[3] = result;
            }

            v41 = vaddq_s64(v41, v25);
            v40 = vaddq_s64(v40, v25);
            v39 = vaddq_s64(v39, v25);
            v32 += 8;
            v42 = vaddq_s64(v42, v25);
            v37 -= 8;
          }

          while (v37);
        }
      }

LABEL_50:
      ++v22;
      v26 += v14;
      v13 += a2;
      v24 = (v24 + a2);
    }

    while (v22 != a5);
  }

  return result;
}

uint64_t sub_2775CB248(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = *(a3 + 2 * a4);
    do
    {
      if (a4 >= 1)
      {
        for (i = 0; i != a4; ++i)
        {
          *(result + 2 * i) = (*(a3 + 2 * ~v5) * byte_2775F0E80[a4 + i] + (256 - byte_2775F0E80[a4 + i]) * v6 + 128) >> 8;
        }
      }

      ++v5;
      result += a2;
    }

    while (v5 != a5);
  }

  return result;
}

uint64_t sub_2775CB2C0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = *(a3 - 2 * a5);
    do
    {
      if (a4 >= 1)
      {
        v7 = 0;
        v8 = byte_2775F0E80[a5 + v5];
        do
        {
          *(result + v7) = ((256 - v8) * v6 + 128 + *(a3 + 2 + v7) * v8) >> 8;
          v7 += 2;
        }

        while (2 * a4 != v7);
      }

      ++v5;
      result += a2;
    }

    while (v5 != a5);
  }

  return result;
}

uint64_t sub_2775CB33C(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = &byte_2775F0E80[a5];
    v7 = *(a3 + 2 * a4);
    v8 = *(a3 - 2 * a5);
    v9 = a5;
    do
    {
      if (a4 >= 1)
      {
        v10 = 0;
        v11 = v6[v5];
        do
        {
          *(result + 2 * v10) = ((256 - v11) * v8 + 256 + *(a3 + 2 + 2 * v10) * v11 + *(a3 + 2 * ~v5) * byte_2775F0E80[a4 + v10] + (256 - byte_2775F0E80[a4 + v10]) * v7) >> 9;
          ++v10;
        }

        while (a4 != v10);
      }

      ++v5;
      result += a2;
    }

    while (v5 != v9);
  }

  return result;
}

uint64_t sub_2775CB3EC(uint64_t result, uint64_t a2, unsigned __int16 *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a5;
    do
    {
      if (a4 >= 1)
      {
        v8 = 0;
        v9 = a3[~v5];
        v10 = v9 - v6;
        if (v9 - v6 >= 0)
        {
          v11 = v9 - v6;
        }

        else
        {
          v11 = v6 - v9;
        }

        do
        {
          v12 = a3[v8 + 1];
          v13 = v6 - v12;
          if (v6 - v12 < 0)
          {
            v13 = v12 - v6;
          }

          v14 = v6 - (v10 + v12);
          if (v14 < 0)
          {
            v14 = v10 + v12 - v6;
          }

          if (v11 > v14)
          {
            LOWORD(v12) = v6;
          }

          if (v13 <= v14 && v13 <= v11)
          {
            LOWORD(v12) = v9;
          }

          *(result + v8 * 2) = v12;
          ++v8;
        }

        while (a4 != v8);
      }

      ++v5;
      result += a2;
    }

    while (v5 != v7);
  }

  return result;
}

char *sub_2775CB474(char *__dst, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    v8 = __dst;
    v9 = 2 * a4;
    do
    {
      __dst = memcpy(v8, (a3 + 2), v9);
      v8 += a2;
      --v5;
    }

    while (v5);
  }

  return __dst;
}

uint64_t sub_2775CB4E0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = vdupq_n_s64(a4 - 1);
    v7 = vdupq_n_s64(8uLL);
    v8 = (result + 8);
    do
    {
      if (a4 >= 1)
      {
        v9 = *(a3 + 2 * ~v5);
        v10 = v8;
        v11 = (a4 + 7) & 0xFFFFFFF8;
        v12 = xmmword_2775ED490;
        v13 = xmmword_2775ED480;
        v14 = xmmword_2775ED470;
        v15 = xmmword_2775ED460;
        do
        {
          v16 = vmovn_s64(vcgeq_u64(v6, v12));
          if (vuzp1_s8(vuzp1_s16(v16, *v6.i8), *v6.i8).u8[0])
          {
            *(v10 - 4) = v9;
          }

          if (vuzp1_s8(vuzp1_s16(v16, *&v6), *&v6).i8[1])
          {
            *(v10 - 3) = v9;
          }

          if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v13))), *&v6).i8[2])
          {
            *(v10 - 2) = v9;
            *(v10 - 1) = v9;
          }

          v17 = vmovn_s64(vcgeq_u64(v6, v14));
          if (vuzp1_s8(*&v6, vuzp1_s16(v17, *&v6)).i32[1])
          {
            *v10 = v9;
          }

          if (vuzp1_s8(*&v6, vuzp1_s16(v17, *&v6)).i8[5])
          {
            v10[1] = v9;
          }

          if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v15)))).i8[6])
          {
            v10[2] = v9;
            v10[3] = v9;
          }

          v14 = vaddq_s64(v14, v7);
          v13 = vaddq_s64(v13, v7);
          v12 = vaddq_s64(v12, v7);
          v10 += 8;
          v15 = vaddq_s64(v15, v7);
          v11 -= 8;
        }

        while (v11);
      }

      ++v5;
      v8 = (v8 + a2);
    }

    while (v5 != a5);
  }

  return result;
}

uint64_t sub_2775CB648(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = a5 >> 1;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = (a3 - 2);
    do
    {
      v8 = *v7--;
      v5 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_2775CB68C(a1, a2, a4, a5, v5 >> __clz(__rbit32(a5)));
}

uint64_t sub_2775CB68C(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  if (a4 >= 1)
  {
    v5 = 0;
    v6 = 0x1000100010001 * a5;
    v7 = (a3 - 1) >> 2;
    v8 = (v7 + 2) & 0x7FFFFFFFFFFFFFFELL;
    v9 = vdupq_n_s64(v7);
    do
    {
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v10), xmmword_2775ED490)));
          if (v11.i8[0])
          {
            *(result + 8 * v10) = v6;
          }

          if (v11.i8[4])
          {
            *(result + 8 * v10 + 8) = v6;
          }

          v10 += 2;
        }

        while (v8 != v10);
      }

      ++v5;
      result += a2;
    }

    while (v5 != a4);
  }

  return result;
}

uint64_t sub_2775CB71C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = a4 >> 1;
  if (a4 >= 1)
  {
    v6 = a4;
    v7 = (a3 + 2);
    do
    {
      v8 = *v7++;
      v5 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_2775CB68C(a1, a2, a4, a5, v5 >> __clz(__rbit32(a4)));
}

uint64_t sub_2775CB77C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = sub_2775CA018(a3, a4, a5);

  return sub_2775CB68C(a1, a2, a4, a5, v9);
}

uint64_t sub_2775CB7F4(uint64_t a1, int a2, int a3, int a4)
{
  sub_2775845E0();
  if (v7)
  {
    sub_2775845E0();
    if (v8)
    {
      sub_2775845E0();
      a4 += v9 + 1;
    }

    v10 = 1 << a4;
  }

  else
  {
    v10 = 0;
  }

  for (i = 0; a4; i = v12 | (2 * i))
  {
    --a4;
    sub_2775845E0();
  }

  v13 = i + v10;
  v14 = 2 * a2;
  v15 = a3 - 1 - a2;
  v16 = i + v10 + 1;
  v17 = v15 - (v16 >> 1);
  if (((i + v10) & 1) == 0)
  {
    v17 = v15 + ((i + v10) >> 1);
  }

  if (v13 <= 2 * v15)
  {
    v18 = v17;
  }

  else
  {
    v18 = i + v10;
  }

  v19 = a3 - 1 - v18;
  v20 = a2 - (v16 >> 1);
  if ((v13 & 1) == 0)
  {
    v20 = a2 + (v13 >> 1);
  }

  if (v14 >= v13)
  {
    v13 = v20;
  }

  if (v14 <= a3)
  {
    return v13;
  }

  else
  {
    return v19;
  }
}

uint64_t sub_2775CB918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(_DWORD *, uint64_t, uint64_t, uint64_t), int a10, int a11)
{
  result = MEMORY[0x28223BE20]();
  v69 = v18;
  v19 = result;
  v71 = *MEMORY[0x277D85DE8];
  v21 = v16 == 2 * v15 || v15 == 2 * v16;
  if (v14 >= a10)
  {
    v63 = (1 << v17) >> 1;
    v64 = v17;
    v66 = v12;
    v29 = 0;
    v67 = v16;
    if (v16 >= 32)
    {
      v30 = 32;
    }

    else
    {
      v30 = v16;
    }

    if (v15 >= 32)
    {
      v31 = 32;
    }

    else
    {
      v31 = v15;
    }

    v58 = ~a11;
    v59 = v31;
    v65 = v15;
    if (v31 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

    if (v30 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v30;
    }

    v68 = v33;
    v34 = 4 * v32;
    v61 = v13;
    v62 = v15;
    v35 = 4 * v15;
    v60 = v30;
    v36 = 4 * v30;
    v37 = v70;
    v38 = v13;
    v39 = v21;
    do
    {
      v40 = 0;
      v41 = v38;
      if (v21)
      {
        do
        {
          v37[v40 / 4] = (181 * *v41 + 128) >> 8;
          v40 += 4;
          v41 = (v41 + v36);
        }

        while (v34 != v40);
      }

      else
      {
        do
        {
          v37[v40 / 4] = *v41;
          v40 += 4;
          v41 = (v41 + v36);
        }

        while (v34 != v40);
      }

      v69(v37, 1, (~a11 << 7), ~(~a11 << 7));
      ++v29;
      v37 = (v37 + v35);
      ++v38;
      LOBYTE(v21) = v39;
    }

    while (v29 != v68);
    v42 = (32 * v58);
    v43 = ~(32 * v58);
    bzero(v61, 4 * v59 * v60);
    v44 = 0;
    do
    {
      v45 = (v70[v44] + v63) >> v64;
      if (v45 >= v43)
      {
        v46 = ~(32 * v58);
      }

      else
      {
        v46 = (v70[v44] + v63) >> v64;
      }

      if (v45 >= v42)
      {
        v47 = v46;
      }

      else
      {
        v47 = 32 * v58;
      }

      v70[v44++] = v47;
    }

    while (v60 * v62 != v44);
    v48 = v70;
    v49 = v65;
    do
    {
      result = a9(v48++, v65, v42, v43);
      --v49;
    }

    while (v49);
    v50 = 0;
    v51 = v70;
    do
    {
      v52 = v19;
      v53 = v65;
      do
      {
        v54 = *v51++;
        v55 = *v52 + ((v54 + 8) >> 4);
        if (v55 >= a11)
        {
          v56 = a11;
        }

        else
        {
          v56 = v55;
        }

        if (v55 >= 0)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        *v52++ = v57;
        --v53;
      }

      while (v53);
      ++v50;
      v19 = (v19 + v66);
    }

    while (v50 != v67);
  }

  else
  {
    v22 = 0;
    v23 = *v13;
    *v13 = 0;
    if (v21)
    {
      v23 = (181 * v23 + 128) >> 8;
    }

    v24 = (181 * ((((1 << v17) >> 1) + ((181 * v23 + 128) >> 8)) >> v17) + 2176) >> 12;
    do
    {
      v25 = 0;
      do
      {
        v26 = v24 + v19[v25];
        if (v26 >= a11)
        {
          v27 = a11;
        }

        else
        {
          v27 = v24 + v19[v25];
        }

        if (v26 >= 0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v19[v25++] = v28;
      }

      while (v15 != v25);
      ++v22;
      v19 = (v19 + v12);
    }

    while (v22 != v16);
  }

  return result;
}

uint16x4_t *sub_2775CEC08(uint16x4_t *result, uint64_t a2, _OWORD *a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v28 = *MEMORY[0x277D85DE8];
  v6 = &v24;
  v7 = a3;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v6->i32[i] = SLODWORD(v7[i]) >> 2;
    }

    v9 = v6->i32[1];
    v10 = v6->i32[3];
    v11 = v9 + v6->i32[0];
    v12 = v6->i32[2] - v10;
    v13 = (v11 - v12) >> 1;
    v14 = v13 - v10;
    v15 = v13 - v9;
    v6->i32[0] = v11 - v14;
    v6->i32[1] = v14;
    v6->i32[2] = v15;
    v6->i32[3] = v15 + v12;
    ++v5;
    ++v6;
    v7 = (v7 + 4);
  }

  while (v5 != 4);
  v16 = 0;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v17 = vaddq_s32(v25, v24);
  v18 = vsubq_s32(v26, v27);
  v19 = vshrq_n_s32(vsubq_s32(v17, v18), 1uLL);
  v20 = vsubq_s32(v19, v27);
  v21 = vsubq_s32(v19, v25);
  v24 = vsubq_s32(v17, v20);
  v25 = v20;
  v26 = v21;
  v27 = vaddq_s32(v21, v18);
  v22 = vdupq_n_s32(a5);
  do
  {
    v23 = vaddw_u16(*(&v24 + v16), *result);
    *result = vbic_s8(vmovn_s32(vminq_s32(v23, v22)), vmovn_s32(vcltzq_s32(v23)));
    v16 += 16;
    result = (result + a2);
  }

  while (v16 != 64);
  return result;
}

void *sub_2775CED38(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8, int a9, unsigned int a10, int a11, unsigned int a12, int a13)
{
  v17 = __dst;
  v18 = a13;
  v19 = a10;
  v20 = result[3];
  v36 = a10;
  v37 = result;
  if (*(v20 + 417))
  {
    v36 = ((*(v20 + 240) + a12) >> a12);
  }

  v21 = 64 << (a7 & 1);
  if (a13)
  {
    v21 = 64;
  }

  if (a8)
  {
    v22 = 0;
  }

  else
  {
    v22 = -8;
  }

  v23 = (v21 + v22) >> a6;
  v24 = (a4 + (v23 - 2) * a5);
  if (*(result[407] + 24) == 1)
  {
    if (a8)
    {
      v25 = 4 << a7;
      memcpy(__dst, &__dst[(4 << a7) * a3], v36);
      memcpy(&v17[a3], &v17[(v25 | 1) * a3], v36);
      memcpy(&v17[2 * a3], &v17[(v25 | 2) * a3], v36);
      v19 = a10;
      result = memcpy(&v17[3 * a3], &v17[(v25 | 3) * a3], v36);
      v18 = a13;
    }

    v17 += 4 * a3;
  }

  if (v18 && *(v37[3] + 236) != *(v37[3] + 240))
  {
    v32 = v23 + a8;
    if ((v23 + a8) <= a9)
    {
      v33 = 0x40u >> a6;
      v34 = a11 - 1;
      do
      {
        if (v34 == v32)
        {
          v35 = 3;
        }

        else
        {
          v35 = 4;
        }

        result = (*(v37[410] + 672))(v17, a3, v24, a5, v36, v35, v19, *(v37 + a12 + 810), *(v37 + a12 + 812));
        v17 += v35 * a3;
        if (v34 == v32)
        {
          result = memcpy(v17, &v17[-a3], v36);
          v17 += a3;
        }

        v24 += v33 * a5;
        v32 += v33;
      }

      while (v32 <= a9);
    }
  }

  else
  {
    v26 = v23 + a8;
    if (v26 <= a9)
    {
      v27 = v19;
      v38 = 0x40u >> a6;
      v28 = ((0x40u >> a6) - 4) * a5;
      do
      {
        if (v26 + 1 == a11)
        {
          v29 = 3;
        }

        else
        {
          v29 = 4;
        }

        v30 = 4;
        do
        {
          if (v29 + v30 == 4)
          {
            v31 = &v17[-a3];
          }

          else
          {
            v31 = v24;
          }

          result = memcpy(v17, v31, v27);
          v17 += a3;
          v24 += a5;
          --v30;
        }

        while (v30);
        v24 += v28;
        v26 += v38;
      }

      while (v26 <= a9);
    }
  }

  return result;
}

BOOL sub_2775CF000(uint64_t a1)
{
  v2 = *(a1 + 12);
  result = 1;
  if (v2 >= 1)
  {
    if (v2 >= 0x17FFF)
    {
      v4 = 98303;
    }

    else
    {
      v4 = v2;
    }

    if (v4 <= 0x8000)
    {
      v4 = 0x8000;
    }

    v5 = v4 - 0x10000;
    v23 = (v4 - 0x10000) < 0;
    v6 = 0x10000 - v4;
    if (!v23)
    {
      v6 = v5;
    }

    v7 = (v6 + 32) >> 6;
    if (v2 < 0x10000)
    {
      v7 = -v7;
    }

    v8 = v7 << 6;
    *(a1 + 28) = v8;
    v9 = *(a1 + 16);
    v10 = *(a1 + 20);
    if (v9 >= 0x7FFF)
    {
      v11 = 0x7FFF;
    }

    else
    {
      v11 = *(a1 + 16);
    }

    v12 = __clz(v2);
    v13 = (-1 << (v12 ^ 0x1F)) + v2;
    v14 = v13 << (v12 - 23);
    v15 = (v13 + (1 << (22 - v12))) >> (23 - v12);
    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v11 < 0)
    {
      v11 = -v11;
    }

    v16 = (v11 + 32) >> 6;
    if (v9 < 0)
    {
      v16 = -v16;
    }

    v17 = v16 << 6;
    *(a1 + 30) = v17;
    if (v2 >= 0x200)
    {
      v18 = v15;
    }

    else
    {
      v18 = v14;
    }

    v19 = word_2775F10C0[v18];
    v20 = 45 - v12;
    v21 = (v10 * word_2775F10C0[v18]) << 16;
    v22 = 1 << v20 >> 1;
    v23 = v21 < 0;
    if (v21 < 0)
    {
      v21 = -v21;
    }

    v24 = (v21 + v22) >> v20;
    if (v23)
    {
      LODWORD(v24) = -v24;
    }

    if (v24 >= 0x7FFF)
    {
      v25 = 0x7FFF;
    }

    else
    {
      v25 = v24;
    }

    if (v25 <= -32768)
    {
      v25 = -32768;
    }

    if (v25 < 0)
    {
      v25 = -v25;
    }

    v26 = (v25 + 32) >> 6;
    if (v24 >= 0)
    {
      LOWORD(v27) = v26;
    }

    else
    {
      v27 = -v26;
    }

    v28 = v27 << 6;
    *(a1 + 32) = v28;
    v29 = v19 * v9 * v10;
    v30 = v29 < 0;
    if (v29 < 0)
    {
      v29 = -v29;
    }

    v31 = (v29 + v22) >> v20;
    if (!v30)
    {
      LODWORD(v31) = -v31;
    }

    v32 = v31 + *(a1 + 24);
    if (v32 >= 98303)
    {
      v33 = 98303;
    }

    else
    {
      v33 = v32;
    }

    if (v33 <= 0x8000)
    {
      v33 = 0x8000;
    }

    v34 = v33 - 0x10000;
    v23 = v33 - 0x10000 < 0;
    v35 = 0x10000 - v33;
    if (!v23)
    {
      v35 = v34;
    }

    v36 = (v35 + 32) >> 6;
    if (v32 < 0x10000)
    {
      v36 = -v36;
    }

    *(a1 + 34) = v36 << 6;
    v37 = v8;
    if (v8 < 0)
    {
      v37 = -v8;
    }

    v38 = v17;
    if (v17 < 0)
    {
      v38 = -v17;
    }

    if (!((7 * v38 + 4 * v37) >> 16))
    {
      v39 = v28;
      if (v28 < 0)
      {
        v39 = -v28;
      }

      v40 = (v36 << 6);
      if (v40 < 0)
      {
        v40 = -v40;
      }

      return ((v40 + v39) & 0x1C000) != 0;
    }
  }

  return result;
}

uint64_t sub_2775CF1E8(uint64_t result, int a2, int a3, _DWORD *a4, int a5, int a6)
{
  v6 = 2 * a2 + 4 * a6 - 1;
  v7 = 2 * result + 4 * a5 - 1;
  v8 = (0x10000 - a4[3]) * v7 - a4[4] * v6 + (a3 >> 16 << 13);
  if (v8 >= 0x7FFFFF)
  {
    v8 = 0x7FFFFF;
  }

  if (v8 <= -8388608)
  {
    v8 = -8388608;
  }

  v9 = (0x10000 - a4[6]) * v6 - a4[5] * v7 + (a3 << 13);
  if (v9 >= 0x7FFFFF)
  {
    v9 = 0x7FFFFF;
  }

  if (v9 <= -8388608)
  {
    v9 = -8388608;
  }

  a4[1] = v8;
  a4[2] = v9;
  return result;
}

unint64_t sub_2775CF264(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    v2 = a1[2];
    if (v2 < a1[4])
    {
      a1[2] = (v2 + 1);
      v3 = *v2;
      *(a1 + 2) = 7;
      *a1 = v3 << 57;
      return (v3 >> 7) & 1;
    }

    *(a1 + 3) = 1;
  }

  v5 = *a1;
  *(a1 + 2) = v1 - 1;
  *a1 = 2 * v5;
  return v5 >> 63;
}

unint64_t sub_2775CF2C4(uint64_t *a1, unsigned int a2)
{
  v2 = *(a1 + 2);
  if (v2 < a2)
  {
    v3 = 0;
    v4 = a1[4];
    v5 = a1[2];
    while (v5 < v4)
    {
      a1[2] = (v5 + 1);
      v3 = *v5 | (v3 << 8);
      v2 += 8;
      *(a1 + 2) = v2;
      ++v5;
      if (v2 >= a2)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 3) = 1;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a1 |= v3 << -v2;
  }

LABEL_8:
  v6 = *a1;
  *(a1 + 2) = v2 - a2;
  *a1 = v6 << a2;
  return v6 >> -a2;
}

uint64_t sub_2775CF350(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 < a2)
  {
    v3 = 0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 16);
    while (v5 < v4)
    {
      *(a1 + 16) = v5 + 1;
      v3 = *v5 | (v3 << 8);
      v6 = v2 + 8;
      *(a1 + 8) = v2 + 8;
      v2 = 8;
      ++v5;
      if (v6 >= a2)
      {
        v2 = v6;
        goto LABEL_7;
      }
    }

    *(a1 + 12) = 1;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a1 |= v3 << -v2;
  }

LABEL_8:
  v7 = *a1;
  *(a1 + 8) = v2 - a2;
  *a1 = v7 << a2;
  return v7 >> -a2;
}

unint64_t sub_2775CF3E4(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = sub_2775CF2C4(a1, 8u);
    v3 |= (v4 & 0x7F) << v2;
    if ((v4 & 0x80) == 0)
    {
      break;
    }

    v5 = v2 >= 0x31;
    v2 += 7;
  }

  while (!v5);
  if (v4 < 0 || HIDWORD(v3))
  {
    v3 = 0;
    *(a1 + 12) = 1;
  }

  return v3;
}

unint64_t sub_2775CF45C(uint64_t *a1, unsigned int a2)
{
  v3 = __clz(a2) ^ 0x1F;
  v4 = (2 << v3) - a2;
  v5 = sub_2775CF2C4(a1, v3);
  if (v5 >= v4)
  {
    return sub_2775CF264(a1) - v4 + 2 * v5;
  }

  return v5;
}

uint64_t sub_2775CF4C0(uint64_t *a1, int a2, char a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << a3;
  v7 = (1 << a3) + a2;
  v8 = 2 << a3;
  v9 = 3;
  v10 = 8;
  while (sub_2775CF264(a1))
  {
    v4 += v10;
    v9 = v5 + 3;
    v10 = 8 << v5;
    v11 = 24 << v5++;
    if (v11 + v4 > v8)
    {
      v12 = sub_2775CF45C(a1, (v8 | 1) - v4);
      goto LABEL_6;
    }
  }

  v12 = sub_2775CF2C4(a1, v9);
LABEL_6:
  v13 = v12 + v4;
  v14 = 2 * v7;
  v15 = v12 + v4 + 1;
  v16 = v8 - v7 - (v15 >> 1);
  if (((v12 + v4) & 1) == 0)
  {
    v16 = v8 - v7 + ((v12 + v4) >> 1);
  }

  if (v13 <= 2 * (v8 - v7))
  {
    v17 = v16;
  }

  else
  {
    v17 = v12 + v4;
  }

  v18 = v8 - v17;
  v19 = v7 - (v15 >> 1);
  if ((v13 & 1) == 0)
  {
    v19 = v7 + (v13 >> 1);
  }

  if (v14 >= v13)
  {
    v13 = v19;
  }

  if (v14 > v8)
  {
    v13 = v18;
  }

  return v13 - v6;
}

_DWORD *sub_2775CF5C8(_DWORD *a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, double a9, double a10, uint8x8_t a11, uint8x8_t a12, unsigned int a13, int a14)
{
  v20[21] = *MEMORY[0x277D85DE8];
  sub_2775745C4(v20, a1, a2, a3, a4, a5, 4, a14, a9, a10, a11, a12);
  return sub_277575284(a1, a2, v20, a6, a7, a8, a13, 4, a14);
}

_DWORD *sub_2775CF6A0(_DWORD *a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, double a9, double a10, uint8x8_t a11, uint8x8_t a12, unsigned int a13, int a14)
{
  v20[21] = *MEMORY[0x277D85DE8];
  sub_2775745C4(v20, a1, a2, a3, a4, a5, 8, a14, a9, a10, a11, a12);
  return sub_277575284(a1, a2, v20, a6, a7, a8, a13, 8, a14);
}

void *sub_2775CF778(void *a1, uint64_t a2, __int16 *a3, uint8x8_t *a4, uint8x8_t *a5, uint64_t a6, uint64_t a7, unsigned int a8, __n128 a9, __n128 a10, __n128 a11, uint8x8_t a12, unsigned int a13, int a14)
{
  v20[41] = *MEMORY[0x277D85DE8];
  sub_2775742A0(v20, a1, a2, a3, a4, a5, 8, a14, a9, a10, a11, a12);
  return sub_277574DCC(a1, a2, v20, a6, a7, a8, a13, 8, a14);
}

__int16 *sub_2775CF884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, double a9, double a10, double a11, double a12, int32x2_t a13, double a14, int32x2_t a15, int a16, unsigned int a17, unsigned int a18, char a19)
{
  v23 = a18;
  v22 = a19;
  *(&v137[29] + 4) = *MEMORY[0x277D85DE8];
  result = (a18 + 2);
  v135 = a2;
  v134 = a7;
  if ((a19 & 4) != 0)
  {
    v133 = -2;
  }

  else
  {
    v25 = 0;
    v26 = __b;
    do
    {
      v27 = v25;
      memset_pattern16(v26, &unk_2775ED580, 2 * (a17 + 4));
      v26 += 24;
      v25 = 1;
    }

    while ((v27 & 1) == 0);
    v133 = 0;
    a2 = v135;
    result = (a18 + 2);
    v22 = a19;
    a7 = v134;
  }

  v28 = v137;
  if ((v22 & 8) == 0)
  {
    v29 = 0;
    v30 = &v137[3 * a18 - 1] + 4;
    do
    {
      v31 = v29;
      memset_pattern16(v30, &unk_2775ED580, 2 * (a17 + 4));
      v30 += 24;
      v29 = 1;
    }

    while ((v31 & 1) == 0);
    result = a18;
    a2 = v135;
    v22 = a19;
    a7 = v134;
  }

  v32 = a17 + 2;
  if (v22)
  {
    v36 = -2;
    if ((v22 & 2) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v33 = result;
  v34 = result - v133;
  v35 = &v137[3 * v133 - 1] + 4;
  do
  {
    memset_pattern16(v35, &unk_2775ED580, 4uLL);
    v35 += 24;
    --v34;
  }

  while (v34);
  v36 = 0;
  a2 = v135;
  result = v33;
  v22 = a19;
  a7 = v134;
  v32 = a17 + 2;
  if ((a19 & 2) == 0)
  {
LABEL_16:
    v129 = v36;
    v37 = result;
    v38 = result - v133;
    v39 = &v137[3 * v133] + 2 * a17;
    do
    {
      memset_pattern16(v39, &unk_2775ED580, 4uLL);
      v39 += 24;
      --v38;
    }

    while (v38);
    v32 = a17;
    a2 = v135;
    result = v37;
    v22 = a19;
    a7 = v134;
    v36 = v129;
  }

LABEL_19:
  v40 = v36;
  if ((v22 & 4) != 0)
  {
    v41 = v133;
    if (v133 < 0)
    {
      v42 = -1;
    }

    else
    {
      v42 = v133;
    }

    v43 = (v42 + 1);
    v44 = &__b[24 * v133 + 52 + 2 * v36];
    do
    {
      v45 = v44;
      v46 = v36;
      do
      {
        *v45++ = *(a4 + v46++);
      }

      while (v32 != v46);
      a4 += a2;
      ++v41;
      v44 += 24;
    }

    while (v41 != v43);
  }

  v47 = 0;
  if (v36 < 0)
  {
    v48 = -1;
  }

  else
  {
    v48 = v36;
  }

  v49 = (v48 + 1) - v36;
  v50 = &__b[2 * v36 + 52];
  v51 = v36 + a3 + 2;
  do
  {
    v52 = v51;
    v53 = v50;
    v54 = v49;
    if (v22)
    {
      do
      {
        v55 = *v52++;
        *v53++ = v55;
        --v54;
      }

      while (v54);
    }

    ++v47;
    v50 += 24;
    v51 += 2;
  }

  while (v47 != a18);
  v56 = 0;
  v57 = v137;
  v58 = a1;
  do
  {
    v59 = 0;
    do
    {
      *(v57 + v59) = *(v58 + v59);
      ++v59;
    }

    while (v32 != v59);
    v58 += a2;
    v57 += 3;
    ++v56;
  }

  while (v56 != a18);
  if (result > a18)
  {
    v60 = a18;
    do
    {
      v61 = v40;
      do
      {
        *(v57 + v61) = *(a5 + v61);
        ++v61;
      }

      while (v32 != v61);
      a5 += a2;
      v57 += 3;
      ++v60;
    }

    while (v60 != result);
  }

  if (a6)
  {
    v62 = __clz(a6);
    v63 = (a16 - (v62 ^ 0x1F)) & ~((a16 - (v62 ^ 0x1F)) >> 31);
    if (a7)
    {
      v64 = vdupq_n_s32(a7);
      v65 = vdup_n_s32(a6);
      v66 = vneg_s32(vdup_n_s32(v63));
      v67 = vnegq_s32(vdupq_n_s32(a16 - (__clz(a7) ^ 0x1F)));
      do
      {
        v68 = 0;
        do
        {
          v69 = 0;
          v70 = 0;
          v71 = *(a1 + v68);
          v72 = vdupq_n_s32(v71);
          v73 = 1;
          v74 = v71;
          v75 = v71;
          v76 = 4 - (a6 & 1);
          do
          {
            result = v73;
            v77 = byte_2775F12D0[2 * a8 + 4 + v69];
            a15.i16[0] = *(v28 + v68 - v77);
            a15.i16[2] = *(v28 + v68 + v77);
            v78 = vshr_n_s32(vshl_n_s32(a15, 0x10uLL), 0x10uLL);
            v79 = vabd_s32(v78, *v72.i8);
            v80 = vcltz_s32(vsub_s32(v78, *v72.i8));
            v81 = v78.i32[1];
            v82 = v78.i32[0];
            v83 = byte_2775F12D0[2 * a8 + 8 + v69];
            v84 = byte_2775F12D0[2 * a8 + v69];
            v85.i16[0] = *(v28 + v68 - v83);
            v86 = vmin_u32(v79, vmax_s32(vsub_s32(v65, vshl_u32(v79, v66)), 0));
            v85.i16[1] = *(v28 + v68 + v83);
            v85.i16[2] = *(v28 + v68 + v84);
            v85.i16[3] = *(v28 + v68 - v84);
            v87 = vmovl_s16(v85);
            v88 = vabdq_s32(v87, v72);
            v89 = vbsl_s8(v80, vneg_s32(v86), v86);
            v90 = vminq_u32(v88, vmaxq_s32(vsubq_s32(v64, vshlq_u32(v88, v67)), 0));
            v91 = 2 - v69;
            v92 = vaddvq_s32(vbslq_s8(vcltzq_s32(vsubq_s32(v87, v72)), vnegq_s32(v90), v90));
            a15 = vadd_s32(v89, vdup_lane_s32(v89, 1));
            v93 = vminvq_u32(v87);
            v94 = v70 + a15.i32[0] * v76;
            if (v93 >= v81)
            {
              v95 = v81;
            }

            else
            {
              v95 = v93;
            }

            if (v82 < v75)
            {
              v75 = v82;
            }

            if (v95 < v75)
            {
              v75 = v95;
            }

            v70 = v94 + v92 * v91;
            a15.i32[0] = vmaxvq_s32(v87);
            v96 = a15.i32[0];
            if (a15.i32[0] <= v81)
            {
              v96 = v81;
            }

            if (v82 > v74)
            {
              v74 = v82;
            }

            if (v96 > v74)
            {
              v74 = v96;
            }

            v69 = 1;
            v76 = v76 & 1 | 2;
            v73 = 0;
          }

          while ((result & 1) != 0);
          v97 = v71 + ((v70 + (v70 >> 31) + 8) >> 4);
          if (v97 >= v74)
          {
            v98 = v74;
          }

          else
          {
            v98 = v97;
          }

          if (v97 >= v75)
          {
            v99 = v98;
          }

          else
          {
            v99 = v75;
          }

          *(a1 + v68++) = v99;
        }

        while (v68 != a17);
        a1 += a2;
        v28 += 3;
        --v23;
      }

      while (v23);
    }

    else
    {
      v114 = vdup_n_s32(a6);
      v115 = vneg_s32(vdup_n_s32(v63));
      do
      {
        v116 = 0;
        do
        {
          v117 = 0;
          v118 = 0;
          v119 = *(a1 + v116);
          v120 = vdup_n_s32(v119);
          v121 = 1;
          v122 = 4 - (a6 & 1);
          do
          {
            v123 = byte_2775F12D0[2 * a8 + 4 + v117];
            a13.i16[0] = *(v28 + v116 - v123);
            a13.i16[2] = *(v28 + v116 + v123);
            v124 = vshr_n_s32(vshl_n_s32(a13, 0x10uLL), 0x10uLL);
            v125 = vabd_s32(v124, v120);
            v126 = vmin_u32(v125, vmax_s32(vsub_s32(v114, vshl_u32(v125, v115)), 0));
            v127 = vbsl_s8(vcltz_s32(vsub_s32(v124, v120)), vneg_s32(v126), v126);
            a13 = vadd_s32(v127, vdup_lane_s32(v127, 1));
            v128 = v121;
            v118 += a13.i32[0] * v122;
            v117 = 1;
            v122 = v122 & 1 | 2;
            v121 = 0;
          }

          while ((v128 & 1) != 0);
          *(a1 + v116++) = v119 + ((v118 + (v118 >> 31) + 8) >> 4);
        }

        while (v116 != a17);
        a1 += a2;
        v28 += 3;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v100 = vdupq_n_s32(a7);
    v101 = vnegq_s32(vdupq_n_s32(a16 - (__clz(a7) ^ 0x1F)));
    do
    {
      v102 = 0;
      do
      {
        v103 = 0;
        v104 = 0;
        v105 = *(a1 + v102);
        v106 = vdupq_n_s32(v105);
        v107 = 1;
        do
        {
          v108 = byte_2775F12D0[2 * a8 + 8 + v103];
          v109 = byte_2775F12D0[2 * a8 + v103];
          result = v28 + v102 + v108;
          v110.i16[0] = *(v28 + v102 - v108);
          v110.i16[1] = *result;
          v110.i16[2] = *(v28 + v102 + v109);
          v110.i16[3] = *(v28 + v102 - v109);
          v111 = vmovl_s16(v110);
          v112 = vabdq_s32(v111, v106);
          v113 = vminq_u32(v112, vmaxq_s32(vsubq_s32(v100, vshlq_u32(v112, v101)), 0));
          LOBYTE(v108) = v107;
          v104 += vaddvq_s32(vbslq_s8(vcltzq_s32(vsubq_s32(v111, v106)), vnegq_s32(v113), v113)) * (2 - v103);
          v103 = 1;
          v107 = 0;
        }

        while ((v108 & 1) != 0);
        *(a1 + v102++) = v105 + ((v104 + (v104 >> 31) + 8) >> 4);
      }

      while (v102 != a17);
      a1 += a2;
      v28 += 3;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t sub_2775D0028(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = 0;
  v50 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v4 = 88;
  v5 = &v39;
  memset(v38, 0, sizeof(v38));
  do
  {
    v6 = 0;
    v7 = (2 * v3) & 0xFFFFFFFFFFFFFFFCLL;
    v8 = &v38[8] + v7 + 4;
    v9 = &v38[6] - v7 + 4;
    v10 = v4;
    do
    {
      v11 = *(a1 + v6) - 128;
      *(v5 + v6) += v11;
      *(v38 + v3 + (v6 >> 1)) += v11;
      v46.i32[v3] += v11;
      *(&v38[2] + v3 + 3 - (v6 >> 1) + 3) += v11;
      *(&v39 + v10) += v11;
      *&v9[4 * v6] += v11;
      v48.i32[v6] += v11;
      *&v8[4 * v6++] += v11;
      v10 -= 4;
    }

    while (v6 != 8);
    a1 += a2;
    ++v3;
    v4 += 4;
    v5 = (v5 + 4);
  }

  while (v3 != 8);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v32[1] = 0;
  v35 = 0;
  v34 = 0;
  v33 = (105 * vaddvq_s32(vmlaq_s32(vmulq_s32(v47, v47), v46, v46)));
  v36 = 105 * vaddvq_s32(vmlaq_s32(vmulq_s32(v49, v49), v48, v48));
  v37 = 0;
  v15 = 116;
  v16 = word_2775F12C2;
  do
  {
    v17 = *v16++;
    v13 += (*(&v39 + v12) * *(&v39 + v12) + *(&v38[7] + v15 + 4) * *(&v38[7] + v15 + 4)) * v17;
    v14 += (*(v42 + v12 + 12) * *(v42 + v12 + 12) + *(&v39 + v15) * *(&v39 + v15)) * v17;
    v15 -= 4;
    v12 += 4;
  }

  while (v15 != 88);
  v18 = 0;
  v19 = v13 + 105 * HIDWORD(v40) * HIDWORD(v40);
  v32[0] = v19;
  v34 = v14 + 105 * DWORD2(v43) * DWORD2(v43);
  v20 = v38;
  v21 = &v38[2] + 8;
  do
  {
    v22 = (2 * v18) | 1;
    v23 = v32[v22];
    for (i = 12; i != 32; i += 4)
    {
      v23 += *(v20 + i) * *(v20 + i);
    }

    v25 = 0;
    v26 = 105 * v23;
    v27 = v21;
    do
    {
      v28 = *v27--;
      v26 += (*(v20 + v25 * 2) * *(v20 + v25 * 2) + v28 * v28) * word_2775F12C2[v25 + 1];
      v25 += 2;
    }

    while (v25 != 6);
    v32[v22] = v26;
    ++v18;
    v20 = (v20 + 44);
    v21 += 44;
  }

  while (v18 != 4);
  LODWORD(result) = 0;
  for (j = 1; j != 8; ++j)
  {
    v31 = v32[j];
    if (v31 <= v19)
    {
      result = result;
    }

    else
    {
      result = j;
    }

    if (v31 > v19)
    {
      v19 = v32[j];
    }
  }

  *a3 = (v19 - v32[result ^ 4]) >> 10;
  return result;
}

void *sub_2775D0324(uint64_t *a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v17[21] = *MEMORY[0x277D85DE8];
  sub_27757E724(v17, a1, a2, a3, a4, a5, 4, a10);
  return sub_27757F270(a1, a2, v17, a6, a7, a8, a9, 4, a10, a11);
}

void *sub_2775D0404(uint64_t *a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v17[21] = *MEMORY[0x277D85DE8];
  sub_27757E724(v17, a1, a2, a3, a4, a5, 8, a10);
  return sub_27757F270(a1, a2, v17, a6, a7, a8, a9, 8, a10, a11);
}

int16x8_t *sub_2775D04E4(__int128 *a1, uint64_t a2, int *a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_27757E498(v17, a1, a2, a3, a4, a5, 8, a10);
  return sub_27757EDC0(a1, a2, v17, a6, a7, a8, a9, 8, a10, a11);
}

__int16 *sub_2775D05FC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, int a9, unsigned int a10, unsigned int a11, char a12, unsigned int a13)
{
  v15 = a11;
  *(&v131[29] + 4) = *MEMORY[0x277D85DE8];
  v16 = a11 + 2;
  if ((a12 & 4) != 0)
  {
    v125 = -2;
  }

  else
  {
    v17 = 0;
    v18 = __b;
    do
    {
      v19 = v17;
      memset_pattern16(v18, &unk_2775ED580, 2 * (a10 + 4));
      v18 += 24;
      v17 = 1;
    }

    while ((v19 & 1) == 0);
    v125 = 0;
    v16 = a11 + 2;
  }

  v20 = v131;
  if ((a12 & 8) == 0)
  {
    v21 = 0;
    v22 = &v131[3 * a11 - 1] + 4;
    do
    {
      v23 = v21;
      memset_pattern16(v22, &unk_2775ED580, 2 * (a10 + 4));
      v22 += 24;
      v21 = 1;
    }

    while ((v23 & 1) == 0);
    v16 = a11;
  }

  v24 = a10 + 2;
  v126 = v16;
  if (a12)
  {
    v27 = -2;
  }

  else
  {
    v25 = v16 - v125;
    v26 = &v131[3 * v125 - 1] + 4;
    do
    {
      memset_pattern16(v26, &unk_2775ED580, 4uLL);
      v26 += 24;
      --v25;
    }

    while (v25);
    v27 = 0;
    v16 = v126;
  }

  if ((a12 & 2) == 0)
  {
    v28 = v16 - v125;
    v29 = &v131[3 * v125] + 2 * a10;
    do
    {
      memset_pattern16(v29, &unk_2775ED580, 4uLL);
      v29 += 24;
      --v28;
    }

    while (v28);
    v24 = a10;
  }

  v120 = v24;
  if ((a12 & 4) != 0)
  {
    if (v125 < 0)
    {
      v32 = -1;
    }

    else
    {
      v32 = v125;
    }

    v33 = 2 * (v24 - v27);
    v34 = (a4 + 2 * v27);
    v35 = &__b[24 * v125 + 52 + 2 * v27];
    v36 = (v32 + 1) - v125;
    do
    {
      memcpy(v35, v34, v33);
      v35 += 24;
      v34 += a2;
      --v36;
    }

    while (v36);
    v30 = v27;
    v15 = a11;
    v31 = 2 * v27;
  }

  else
  {
    v30 = v27;
    v31 = 2 * v27;
  }

  if (v27 < 0)
  {
    v37 = -1;
  }

  else
  {
    v37 = v27;
  }

  v128 = v30;
  v38 = 2 * ((v37 + 1) - v30);
  v39 = (a3 + v31 + 4);
  v40 = v31 + 52;
  v41 = v15;
  do
  {
    if (a12)
    {
      memcpy(&__b[v40], v39, v38);
    }

    v40 += 24;
    v39 += 4;
    --v41;
  }

  while (v41);
  v129 = a2 >> 1;
  v42 = a1;
  v43 = a11;
  v44 = v131;
  do
  {
    result = memcpy(v44, v42, 2 * v120);
    v44 += 3;
    v42 += a2;
    --v43;
  }

  while (v43);
  v48 = a11;
  if (v126 > a11)
  {
    v49 = a11;
    do
    {
      v50 = v128;
      do
      {
        *(v44 + v50) = *(a5 + 2 * v50);
        ++v50;
      }

      while (v120 != v50);
      v44 += 3;
      ++v49;
      a5 += 2 * v129;
    }

    while (v49 != v126);
  }

  if (a6)
  {
    v51 = 4 - ((a6 >> (24 - __clz(a13))) & 1);
    v52 = a9 - (__clz(a6) ^ 0x1F);
    v53 = v52 & ~(v52 >> 31);
    if (a7)
    {
      v54 = vdupq_n_s32(a7);
      v55 = vdup_n_s32(a6);
      v56 = vneg_s32(vdup_n_s32(v53));
      v57 = vnegq_s32(vdupq_n_s32(a9 - (__clz(a7) ^ 0x1F)));
      do
      {
        v58 = 0;
        do
        {
          v59 = 0;
          v60 = 0;
          v61 = *&a1[2 * v58];
          v62 = vdupq_n_s32(v61);
          v63 = 1;
          v64 = v61;
          v65 = v61;
          v66 = v51;
          do
          {
            result = v63;
            v67 = byte_2775F12D0[2 * a8 + 4 + v59];
            v47.i16[0] = *(v20 + v58 - v67);
            v47.i16[2] = *(v20 + v58 + v67);
            v68 = vshr_n_s32(vshl_n_s32(v47, 0x10uLL), 0x10uLL);
            v69 = vabd_s32(v68, *v62.i8);
            v70 = vcltz_s32(vsub_s32(v68, *v62.i8));
            v71 = v68.i32[1];
            v72 = v68.i32[0];
            v73 = byte_2775F12D0[2 * a8 + 8 + v59];
            v74 = byte_2775F12D0[2 * a8 + v59];
            v75.i16[0] = *(v20 + v58 - v73);
            v76 = vmin_u32(v69, vmax_s32(vsub_s32(v55, vshl_u32(v69, v56)), 0));
            v75.i16[1] = *(v20 + v58 + v73);
            v75.i16[2] = *(v20 + v58 + v74);
            v75.i16[3] = *(v20 + v58 - v74);
            v77 = vmovl_s16(v75);
            v78 = vabdq_s32(v77, v62);
            v79 = vbsl_s8(v70, vneg_s32(v76), v76);
            v80 = vminq_u32(v78, vmaxq_s32(vsubq_s32(v54, vshlq_u32(v78, v57)), 0));
            v81 = 2 - v59;
            v82 = vaddvq_s32(vbslq_s8(vcltzq_s32(vsubq_s32(v77, v62)), vnegq_s32(v80), v80));
            v47 = vadd_s32(v79, vdup_lane_s32(v79, 1));
            v83 = vminvq_u32(v77);
            v84 = v60 + v47.i32[0] * v66;
            if (v83 >= v71)
            {
              v85 = v71;
            }

            else
            {
              v85 = v83;
            }

            if (v72 < v65)
            {
              v65 = v72;
            }

            if (v85 < v65)
            {
              v65 = v85;
            }

            v60 = v84 + v82 * v81;
            v47.i32[0] = vmaxvq_s32(v77);
            v86 = v47.i32[0];
            if (v47.i32[0] <= v71)
            {
              v86 = v71;
            }

            if (v72 > v64)
            {
              v64 = v72;
            }

            if (v86 > v64)
            {
              v64 = v86;
            }

            v59 = 1;
            v66 = v66 & 1 | 2;
            v63 = 0;
          }

          while ((result & 1) != 0);
          v87 = v61 + ((v60 + (v60 >> 31) + 8) >> 4);
          if (v87 >= v64)
          {
            v88 = v64;
          }

          else
          {
            v88 = v87;
          }

          if (v87 >= v65)
          {
            v89 = v88;
          }

          else
          {
            v89 = v65;
          }

          *&a1[2 * v58++] = v89;
        }

        while (v58 != a10);
        a1 += 2 * v129;
        v20 += 3;
        --v48;
      }

      while (v48);
    }

    else
    {
      v104 = vdup_n_s32(a6);
      v105 = vneg_s32(vdup_n_s32(v53));
      do
      {
        v106 = 0;
        do
        {
          v107 = 0;
          v108 = 0;
          v109 = *&a1[2 * v106];
          v110 = vdup_n_s32(v109);
          v111 = 1;
          v112 = v51;
          do
          {
            v113 = byte_2775F12D0[2 * a8 + 4 + v107];
            v46.i16[0] = *(v20 + v106 - v113);
            v46.i16[2] = *(v20 + v106 + v113);
            v114 = vshr_n_s32(vshl_n_s32(v46, 0x10uLL), 0x10uLL);
            v115 = vabd_s32(v114, v110);
            v116 = vmin_u32(v115, vmax_s32(vsub_s32(v104, vshl_u32(v115, v105)), 0));
            v117 = vbsl_s8(vcltz_s32(vsub_s32(v114, v110)), vneg_s32(v116), v116);
            v46 = vadd_s32(v117, vdup_lane_s32(v117, 1));
            v118 = v111;
            v108 += v46.i32[0] * v112;
            v107 = 1;
            v112 = v112 & 1 | 2;
            v111 = 0;
          }

          while ((v118 & 1) != 0);
          *&a1[2 * v106++] = v109 + ((v108 + (v108 >> 31) + 8) >> 4);
        }

        while (v106 != a10);
        a1 += 2 * v129;
        v20 += 3;
        --v48;
      }

      while (v48);
    }
  }

  else
  {
    v90 = vdupq_n_s32(a7);
    v91 = vnegq_s32(vdupq_n_s32(a9 - (__clz(a7) ^ 0x1F)));
    do
    {
      v92 = 0;
      do
      {
        v93 = 0;
        v94 = 0;
        v95 = *&a1[2 * v92];
        v96 = vdupq_n_s32(v95);
        v97 = 1;
        do
        {
          v98 = byte_2775F12D0[2 * a8 + 8 + v93];
          v99 = byte_2775F12D0[2 * a8 + v93];
          result = v20 + v92 + v98;
          v100.i16[0] = *(v20 + v92 - v98);
          v100.i16[1] = *result;
          v100.i16[2] = *(v20 + v92 + v99);
          v100.i16[3] = *(v20 + v92 - v99);
          v101 = vmovl_s16(v100);
          v102 = vabdq_s32(v101, v96);
          v103 = vminq_u32(v102, vmaxq_s32(vsubq_s32(v90, vshlq_u32(v102, v91)), 0));
          LOBYTE(v98) = v97;
          v94 += vaddvq_s32(vbslq_s8(vcltzq_s32(vsubq_s32(v101, v96)), vnegq_s32(v103), v103)) * (2 - v93);
          v93 = 1;
          v97 = 0;
        }

        while ((v98 & 1) != 0);
        *&a1[2 * v92++] = v95 + ((v94 + (v94 >> 31) + 8) >> 4);
      }

      while (v92 != a10);
      a1 += 2 * v129;
      v20 += 3;
      --v48;
    }

    while (v48);
  }

  return result;
}

uint64_t sub_2775D0DE4(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v4 = 0;
  v52 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v5 = 24 - __clz(a4);
  v45 = 0u;
  v46 = 0u;
  memset(v44, 0, sizeof(v44));
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v6 = 88;
  v7 = &v41;
  memset(v40, 0, sizeof(v40));
  do
  {
    v8 = 0;
    v9 = (2 * v4) & 0xFFFFFFFFFFFFFFFCLL;
    v10 = &v40[8] + v9 + 4;
    v11 = &v40[6] - v9 + 4;
    v12 = v6;
    do
    {
      v13 = (*(a1 + 2 * v8) >> v5) - 128;
      *(v7 + v8) += v13;
      *(v40 + v4 + (v8 >> 1)) += v13;
      v48.i32[v4] += v13;
      *(&v40[2] + v4 + 3 - (v8 >> 1) + 3) += v13;
      *(&v41 + v12) += v13;
      *&v11[4 * v8] += v13;
      v50.i32[v8] += v13;
      *&v10[4 * v8++] += v13;
      v12 -= 4;
    }

    while (v8 != 8);
    ++v4;
    v6 += 4;
    v7 = (v7 + 4);
    a1 += a2;
  }

  while (v4 != 8);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v34[1] = 0;
  v37 = 0;
  v36 = 0;
  v35 = (105 * vaddvq_s32(vmlaq_s32(vmulq_s32(v49, v49), v48, v48)));
  v38 = 105 * vaddvq_s32(vmlaq_s32(vmulq_s32(v51, v51), v50, v50));
  v39 = 0;
  v17 = 116;
  v18 = word_2775F12C2;
  do
  {
    v19 = *v18++;
    v15 += (*(&v41 + v14) * *(&v41 + v14) + *(&v40[7] + v17 + 4) * *(&v40[7] + v17 + 4)) * v19;
    v16 += (*(v44 + v14 + 12) * *(v44 + v14 + 12) + *(&v41 + v17) * *(&v41 + v17)) * v19;
    v17 -= 4;
    v14 += 4;
  }

  while (v17 != 88);
  v20 = 0;
  v21 = v15 + 105 * HIDWORD(v42) * HIDWORD(v42);
  v34[0] = v21;
  v36 = v16 + 105 * DWORD2(v45) * DWORD2(v45);
  v22 = v40;
  v23 = &v40[2] + 8;
  do
  {
    v24 = (2 * v20) | 1;
    v25 = v34[v24];
    for (i = 12; i != 32; i += 4)
    {
      v25 += *(v22 + i) * *(v22 + i);
    }

    v27 = 0;
    v28 = 105 * v25;
    v29 = v23;
    do
    {
      v30 = *v29--;
      v28 += (*(v22 + v27 * 2) * *(v22 + v27 * 2) + v30 * v30) * word_2775F12C2[v27 + 1];
      v27 += 2;
    }

    while (v27 != 6);
    v34[v24] = v28;
    ++v20;
    v22 = (v22 + 44);
    v23 += 44;
  }

  while (v20 != 4);
  LODWORD(result) = 0;
  for (j = 1; j != 8; ++j)
  {
    v33 = v34[j];
    if (v33 <= v21)
    {
      result = result;
    }

    else
    {
      result = j;
    }

    if (v33 > v21)
    {
      v21 = v34[j];
    }
  }

  *a3 = (v21 - v34[result ^ 4]) >> 10;
  return result;
}

uint64_t sub_2775D10F8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  v116 = *(result + 8);
  v5 = v116[542];
  v6 = v5 != 3;
  v7 = &byte_277601B40[4 * a2];
  v8 = *v7;
  if (v5 == 3)
  {
    v9 = *v7;
  }

  else
  {
    v9 = v8 + 1;
  }

  v10 = *(result + 24);
  v11 = *(result + 28);
  v101 = v10 & 0x1F;
  v107 = v101 >> v6;
  v112 = v5 == 1;
  v98 = v11 & 0x1F;
  v96 = v98 >> v112;
  v12 = v7[1];
  if (v5 == 1)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v7[1];
  }

  v115 = v5 != 3;
  if (!v5 || (v8 <= v6 ? (v14 = (*(result + 24) & 1) == 0) : (v14 = 0), v14))
  {
    v89 = 0;
  }

  else
  {
    if (v12 <= v112)
    {
      v15 = *(result + 28) & 1;
    }

    else
    {
      v15 = 1;
    }

    v89 = v15;
  }

  if (!*(a3 + 6))
  {
    v16 = *(result + 16);
    if (v8 >= v116[862] - v10)
    {
      v17 = v116[862] - v10;
    }

    else
    {
      v17 = v8;
    }

    if (v12 >= v116[863] - v11)
    {
      v18 = v116[863] - v11;
    }

    else
    {
      v18 = v12;
    }

    v19 = 10;
    if (!*(a3 + 3))
    {
      v19 = 26;
    }

    v20 = *(a3 + v19);
    v21 = *(a3 + 7);
    v121[0] = *(a3 + 29);
    v121[1] = *(a3 + 30);
    if (v18 < 1)
    {
      return result;
    }

    v22 = 0;
    v87 = (v17 + v115) >> v115;
    v109 = &unk_277601B98 + 8 * v21;
    v84 = (v18 + v112) >> v112;
    v102 = &unk_277601B98 + 8 * v20;
    v103 = result + 64;
    v104 = result + 9344;
    v92 = result + 96;
    v88 = v17;
    v85 = v18;
LABEL_33:
    if (v18 >= (v22 + 16))
    {
      v23 = v22 + 16;
    }

    else
    {
      v23 = v18;
    }

    v95 = v23;
    v86 = v22 + 16;
    if (v17 < 1)
    {
      goto LABEL_130;
    }

    v24 = 0;
    v90 = v22 != 0;
    v25 = v84;
    if (v84 >= ((v22 + 16) >> v112))
    {
      v25 = (v22 + 16) >> v112;
    }

    v93 = v22 >> v112;
    v94 = v22;
    v97 = v25;
LABEL_40:
    v91 = v24 + 16;
    if (v17 >= (v24 + 16))
    {
      v26 = v24 + 16;
    }

    else
    {
      v26 = v17;
    }

    *(v4 + 28) = v11 + v22;
    v100 = v24;
    v105 = v24 != 0;
    v110 = v90;
    v27 = v22;
LABEL_44:
    *(v4 + 24) = v10 + v100;
    v28 = v27;
    v29 = v27 + v98;
    v30 = v100;
    v31 = v105;
    while (1)
    {
      v32 = v30;
      if (v3[3])
      {
        break;
      }

      result = sub_2775D1DD0(v4, a2, v3, v3[26], 0, v121, v31, v110, 0);
      v35 = *v102;
LABEL_82:
      v30 = v32 + v35;
      v42 = *(v4 + 24);
      *(v4 + 24) = v42 + v35;
      ++v31;
      if ((v32 + v35) >= v26)
      {
        v43 = *(v4 + 28);
        v10 = v42 - v32;
        v44 = v102[1];
        v27 = v28 + v44;
        *(v4 + 24) = v10;
        *(v4 + 28) = v43 + v44;
        ++v110;
        if ((v28 + v44) >= v95)
        {
          v11 = v43 - v28;
          *(v4 + 28) = v11;
          if (v89)
          {
            v108 = 0;
            LOBYTE(v45) = v115;
            v46 = v91 >> v115;
            if (v87 < (v91 >> v115))
            {
              v46 = v87;
            }

            v111 = v46;
            v47 = v100 >> v115;
            v48 = v97;
            while (1)
            {
              v49 = v108;
              v50 = v93;
              v51 = v11 + v94;
              *(v4 + 28) = v51;
              ++v108;
              if (v93 < v48)
              {
                break;
              }

LABEL_128:
              v11 = v51 - (v50 << v112);
              *(v4 + 28) = v11;
              if (v49)
              {
                goto LABEL_129;
              }
            }

            v52 = v92 + 32 * v49;
            while (1)
            {
              v53 = v10 + v100;
              *(v4 + 24) = v53;
              if (v47 < v111)
              {
                break;
              }

              v60 = v109[1];
              v55 = v47;
LABEL_127:
              v10 = v53 - (v55 << v45);
              v50 += v60;
              v51 += v60 << v112;
              *(v4 + 24) = v10;
              *(v4 + 28) = v51;
              if (v50 >= v48)
              {
                goto LABEL_128;
              }
            }

            v106 = v101 | (32 * ((v50 << v112) + v98));
            v99 = v50;
            v54 = (v50 + v96);
            v55 = v47;
            while (2)
            {
              v118 = 64;
              v117 = 0;
              v56 = *(a3 + 3);
              if (!*(a3 + 3))
              {
                v117 = *(v104 + v106 + (v55 << v45));
              }

              v57 = (v55 + v107);
              result = sub_2775D27CC(v4, (*(v4 + 656) + 32 * v49 + v57 + 64), (v52 + v54), *(a3 + 7), a2, a3, v56, v108, *(v16 + 13936), &v117, &v118);
              v58 = *(v16 + 13928);
              *v58 = v117 + 32 * result;
              *(v16 + 13928) = v58 + 1;
              v59 = *v109;
              v60 = v109[1];
              *(v16 + 13936) += (*v109 * v109[1]) << 6;
              v61 = (v116[863] + v112 - *(v4 + 28)) >> v112;
              if (v60 < v61)
              {
                v61 = v60;
              }

              v62 = v118;
              if (v61 <= 3)
              {
                if (v61 == 1)
                {
                  *(v52 + v54) = v118;
                  goto LABEL_108;
                }

                v45 = v115;
                if (v61 != 2)
                {
                  goto LABEL_107;
                }

                *(v52 + v54) = v118 | (v118 << 8);
              }

              else
              {
                if (v61 == 4)
                {
                  *(v52 + v54) = 16843009 * v118;
                  goto LABEL_108;
                }

                v45 = v115;
                if (v61 == 8)
                {
                  *(v52 + v54) = 0x101010101010101 * v118;
                }

                else
                {
                  if (v61 == 16)
                  {
                    *(v52 + v54) = 0x101010101010101 * v118;
                    *(v52 + (v54 + 8)) = 0x101010101010101 * v62;
                    goto LABEL_109;
                  }

LABEL_107:
                  result = memset((v52 + v54), v118, v61);
LABEL_108:
                  v45 = v115;
                }
              }

LABEL_109:
              v63 = (v116[862] + v45 - *(v4 + 24)) >> v45;
              if (v59 < v63)
              {
                v63 = v59;
              }

              if (v63 <= 3)
              {
                if (v63 == 1)
                {
                  *(*(v4 + 656) + 32 * v49 + v57 + 64) = v62;
                }

                else
                {
                  if (v63 != 2)
                  {
                    goto LABEL_123;
                  }

                  *(*(v4 + 656) + 32 * v49 + v57 + 64) = v62 | (v62 << 8);
                }
              }

              else
              {
                switch(v63)
                {
                  case 4:
                    *(*(v4 + 656) + 32 * v49 + v57 + 64) = 16843009 * v62;
                    break;
                  case 8:
                    v64 = 0x101010101010101 * v62;
                    v65 = *(v4 + 656) + 32 * v49 + v57;
LABEL_121:
                    *(v65 + 64) = v64;
                    break;
                  case 16:
                    v64 = 0x101010101010101 * v62;
                    *(*(v4 + 656) + 32 * v49 + v57 + 64) = 0x101010101010101 * v62;
                    v65 = *(v4 + 656) + 32 * v49 + (v57 + 8);
                    goto LABEL_121;
                  default:
LABEL_123:
                    result = memset((*(v4 + 656) + 32 * v49 + v57 + 64), v62, v63);
                    LOBYTE(v45) = v115;
                    break;
                }
              }

              v55 += v59;
              v53 = *(v4 + 24) + (v59 << v45);
              *(v4 + 24) = v53;
              if (v55 >= v111)
              {
                v51 = *(v4 + 28);
                v47 = v100 >> v115;
                v48 = v97;
                v50 = v99;
                goto LABEL_127;
              }

              continue;
            }
          }

LABEL_129:
          v17 = v88;
          v24 = v91;
          v3 = a3;
          v22 = v94;
          if (v91 >= v88)
          {
LABEL_130:
            v18 = v85;
            v22 = v86;
            if (v86 >= v85)
            {
              return result;
            }

            goto LABEL_33;
          }

          goto LABEL_40;
        }

        goto LABEL_44;
      }
    }

    v120 = 64;
    v119 = 0;
    v33 = v30 + v101;
    result = sub_2775D27CC(v4, (*(v4 + 656) + v33 + 32), (v103 + v29), v3[10], a2, v3, 1, 0, *(v16 + 13936), &v119, &v120);
    v34 = *(v16 + 13928);
    *v34 = v119 + 32 * result;
    *(v16 + 13928) = v34 + 1;
    v35 = *v102;
    if (v35 >= 8)
    {
      v36 = 8;
    }

    else
    {
      v36 = *v102;
    }

    v37 = v102[1];
    if (v37 >= 8)
    {
      v38 = 8;
    }

    else
    {
      v38 = v102[1];
    }

    *(v16 + 13936) += 4 * (16 * v36 * v38);
    v39 = v116[863] - *(v4 + 28);
    if (v37 < v39)
    {
      v39 = v37;
    }

    v40 = v120;
    if (v39 <= 3)
    {
      if (v39 == 1)
      {
        *(v103 + v29) = v120;
        goto LABEL_67;
      }

      if (v39 == 2)
      {
        *(v103 + v29) = v120 | (v120 << 8);
        goto LABEL_67;
      }
    }

    else
    {
      switch(v39)
      {
        case 4:
          *(v103 + v29) = 16843009 * v120;
          goto LABEL_67;
        case 8:
          *(v103 + v29) = 0x101010101010101 * v120;
          goto LABEL_67;
        case 16:
          *(v103 + v29) = 0x101010101010101 * v120;
          *(v103 + v29 + 8) = 0x101010101010101 * v40;
          goto LABEL_67;
      }
    }

    result = memset((v103 + v29), v120, v39);
LABEL_67:
    v41 = v116[862] - *(v4 + 24);
    if (v35 < v41)
    {
      v41 = v35;
    }

    if (v41 <= 3)
    {
      if (v41 == 1)
      {
        *(*(v4 + 656) + v33 + 32) = v40;
        goto LABEL_81;
      }

      if (v41 == 2)
      {
        *(*(v4 + 656) + v33 + 32) = v40 | (v40 << 8);
        goto LABEL_81;
      }
    }

    else
    {
      switch(v41)
      {
        case 4:
          *(*(v4 + 656) + v33 + 32) = 16843009 * v40;
          goto LABEL_81;
        case 8:
          *(*(v4 + 656) + v33 + 32) = 0x101010101010101 * v40;
          goto LABEL_81;
        case 16:
          *(*(v4 + 656) + v33 + 32) = 0x101010101010101 * v40;
          *(*(v4 + 656) + v33 + 40) = 0x101010101010101 * v40;
LABEL_81:
          v3 = a3;
          goto LABEL_82;
      }
    }

    result = memset((*(v4 + 656) + v33 + 32), v40, v41);
    goto LABEL_81;
  }

  if (v12 > 7)
  {
    switch(v12)
    {
      case 8:
        *(result + v98 + 64) = 0x4040404040404040;
        break;
      case 16:
        *&v67 = 0x4040404040404040;
        *(&v67 + 1) = 0x4040404040404040;
        *(result + v98 + 64) = v67;
        break;
      case 32:
        *&v66 = 0x4040404040404040;
        *(&v66 + 1) = 0x4040404040404040;
        *(result + 64 + v98) = v66;
        *(result + 64 + (v11 & 0x1F) + 16) = v66;
        break;
    }
  }

  else
  {
    switch(v12)
    {
      case 1:
        *(result + v98 + 64) = 64;
        break;
      case 2:
        *(result + v98 + 64) = 16448;
        break;
      case 4:
        *(result + v98 + 64) = 1077952576;
        break;
    }
  }

  if (v8 > 7)
  {
    switch(v8)
    {
      case 8:
        *(*(result + 656) + v101 + 32) = 0x4040404040404040;
        break;
      case 16:
        memset((*(result + 656) + (v10 & 0x1F) + 32), 64, 16);
        break;
      case 32:
        memset((*(result + 656) + (v10 & 0x1F) + 32), 64, 32);
        break;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        *(*(result + 656) + v101 + 32) = 64;
        break;
      case 2:
        *(*(result + 656) + v101 + 32) = 16448;
        break;
      case 4:
        *(*(result + 656) + v101 + 32) = 1077952576;
        break;
    }
  }

  if (v89)
  {
    v68 = v9 >> v6;
    v69 = v13 >> v112;
    if ((v13 >> v112) > 7)
    {
      switch(v69)
      {
        case 8u:
          v76 = result + v96;
          *(v76 + 96) = 0x4040404040404040;
          *(v76 + 128) = 0x4040404040404040;
          break;
        case 0x10u:
          *&v78 = 0x4040404040404040;
          *(&v78 + 1) = 0x4040404040404040;
          v79 = result + v96;
          *(v79 + 96) = v78;
          *(v79 + 128) = v78;
          break;
        case 0x20u:
          v71 = result + 96;
          *&v72 = 0x4040404040404040;
          *(&v72 + 1) = 0x4040404040404040;
          *(v71 + v96) = v72;
          v73 = v96 + 16;
          *(v71 + v73) = v72;
          v74 = result + 128;
          *(v74 + v96) = v72;
          *(v74 + v73) = v72;
          break;
      }
    }

    else
    {
      switch(v69)
      {
        case 1u:
          v75 = result + v96;
          *(v75 + 96) = 64;
          *(v75 + 128) = 64;
          break;
        case 2u:
          v77 = result + v96;
          *(v77 + 96) = 16448;
          *(v77 + 128) = 16448;
          break;
        case 4u:
          v70 = result + v96;
          *(v70 + 96) = 1077952576;
          *(v70 + 128) = 1077952576;
          break;
      }
    }

    if (v68 > 7)
    {
      if (v68 == 8)
      {
        v82 = v101 >> v6;
        *(*(result + 656) + v107 + 64) = 0x4040404040404040;
      }

      else
      {
        if (v68 == 16)
        {
          *(*(result + 656) + v107 + 64) = 0x4040404040404040;
          v82 = v107 + 8;
          *(*(result + 656) + v82 + 64) = 0x4040404040404040;
          v83 = *(result + 656) + v107;
        }

        else
        {
          if (v68 != 32)
          {
            return result;
          }

          *(*(result + 656) + v107 + 64) = 0x4040404040404040;
          v80 = v107 + 8;
          *(*(result + 656) + v80 + 64) = 0x4040404040404040;
          v81 = v107 + 16;
          *(*(result + 656) + v81 + 64) = 0x4040404040404040;
          v82 = v107 + 24;
          *(*(result + 656) + v82 + 64) = 0x4040404040404040;
          *(*(result + 656) + v107 + 96) = 0x4040404040404040;
          *(*(result + 656) + v80 + 96) = 0x4040404040404040;
          v83 = *(result + 656) + v81;
        }

        *(v83 + 96) = 0x4040404040404040;
      }

      *(*(result + 656) + v82 + 96) = 0x4040404040404040;
    }

    else
    {
      switch(v68)
      {
        case 1:
          *(*(result + 656) + v107 + 64) = 64;
          *(*(result + 656) + v107 + 96) = 64;
          break;
        case 2:
          *(*(result + 656) + v107 + 64) = 16448;
          *(*(result + 656) + v107 + 96) = 16448;
          break;
        case 4:
          *(*(result + 656) + v107 + 64) = 1077952576;
          *(*(result + 656) + v107 + 96) = 1077952576;
          break;
      }
    }
  }

  return result;
}

uint64_t sub_2775D1DD0(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, char a7, char a8, uint64_t a9)
{
  v12 = result;
  v13 = *(result + 8);
  v14 = *(result + 16);
  v15 = *(v13 + 3280);
  v16 = &unk_277601B98 + 8 * a4;
  v17 = *v16;
  v18 = v16[1];
  v84 = v13;
  if (a5 <= 1 && *(a6 + 2 * a5) && ((*(a6 + 2 * a5) >> (a7 + 4 * a8)) & 1) != 0)
  {
    v20 = v16[6];
    v21 = &unk_277601B98 + 8 * v20;
    v22 = *v21;
    v23 = v21[1];
    result = sub_2775D1DD0(result, a2, a3, v20, (a5 + 1), a6);
    v25 = *(v12 + 24) + v22;
    *(v12 + 24) = v25;
    if (v17 >= v18)
    {
      v26 = v84;
      if (v25 < *(v84 + 3448))
      {
        result = sub_2775D1DD0(v12, a2, a3, v20, (a5 + 1), a6);
        v26 = v84;
        v25 = *(v12 + 24);
      }
    }

    else
    {
      v26 = v84;
    }

    v44 = v25 - v22;
    v45 = *(v12 + 28) + v23;
    *(v12 + 24) = v44;
    *(v12 + 28) = v45;
    if (v18 >= v17 && v45 < *(v26 + 3452))
    {
      result = sub_2775D1DD0(v12, a2, a3, v20, (a5 + 1), a6);
      v83 = *(v12 + 24) + v22;
      *(v12 + 24) = v83;
      if (v17 >= v18 && v83 < *(v84 + 3448))
      {
        result = sub_2775D1DD0(v12, a2, a3, v20, (a5 + 1), a6);
        v83 = *(v12 + 24);
      }

      *(v12 + 24) = v83 - v22;
      v45 = *(v12 + 28);
    }

    *(v12 + 28) = v45 - v23;
    return result;
  }

  v28 = *(result + 24);
  v27 = *(result + 28);
  memset(__c, 0, sizeof(__c));
  v29 = *(result + 258564);
  if (v29)
  {
    v30 = v14 + 24 * (v29 & 1);
    v31 = *(v30 + 13912);
    if (v17 >= 8)
    {
      v32 = 8;
    }

    else
    {
      v32 = v17;
    }

    if (v18 >= 8)
    {
      v33 = 8;
    }

    else
    {
      v33 = v18;
    }

    *(v30 + 13912) = &v31[16 * v32 * v33];
    if (v29 == 2)
    {
      v34 = *(v14 + 13904);
      v35 = *v34;
      *(v14 + 13904) = v34 + 1;
      v36 = v35 >> 5;
      *&__c[1] = v35 & 0x1F;
LABEL_125:
      if ((v36 & 0x80000000) == 0)
      {
        return (*(v15 + 136 * a4 + 8 * *&__c[1] + 680))(a9, *(v13 + 2144));
      }

      return result;
    }

    v37 = v15;
  }

  else
  {
    v37 = v15;
    v31 = (result + 1024);
  }

  v38 = v28 & 0x1F;
  v39 = v27 & 0x1F;
  v40 = (result + (v27 & 0x1F));
  v41 = a4;
  result = sub_2775D27CC(result, (*(result + 656) + v38 + 32), v40 + 4, a4, a2, a3, 0, 0, v31, &__c[1], __c);
  v36 = result;
  v13 = v84;
  v42 = *(v84 + 3452) - *(v12 + 28);
  if (v18 < v42)
  {
    v42 = v18;
  }

  v43 = __c[0];
  if (v42 <= 3)
  {
    if (v42 != 1)
    {
      if (v42 == 2)
      {
        a4 = v41;
        v40[4].i16[0] = __c[0] | (__c[0] << 8);
        goto LABEL_37;
      }

LABEL_35:
      v46 = v40 + 4;
      v47 = v36;
      result = memset(v46, __c[0], v42);
      v36 = v47;
      v13 = v84;
      goto LABEL_36;
    }

    v40[4].i8[0] = __c[0];
  }

  else
  {
    if (v42 != 4)
    {
      a4 = v41;
      if (v42 == 8)
      {
        v40[4].i64[0] = 0x101010101010101 * __c[0];
        goto LABEL_37;
      }

      if (v42 == 16)
      {
        v40[4] = vdupq_n_s64(0x101010101010101 * __c[0]);
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v40[4].i32[0] = 16843009 * __c[0];
  }

LABEL_36:
  a4 = v41;
LABEL_37:
  v48 = *(v13 + 3448) - *(v12 + 24);
  if (v17 < v48)
  {
    v48 = v17;
  }

  v15 = v37;
  if (v48 <= 3)
  {
    v49 = v14;
    if (v48 == 1)
    {
      *(*(v12 + 656) + v38 + 32) = v43;
      goto LABEL_51;
    }

    if (v48 == 2)
    {
      *(*(v12 + 656) + v38 + 32) = v43 | (v43 << 8);
      goto LABEL_51;
    }
  }

  else
  {
    v49 = v14;
    switch(v48)
    {
      case 4:
        *(*(v12 + 656) + v38 + 32) = 16843009 * v43;
        goto LABEL_51;
      case 8:
        *(*(v12 + 656) + v38 + 32) = 0x101010101010101 * v43;
        goto LABEL_51;
      case 16:
        *(*(v12 + 656) + v38 + 32) = 0x101010101010101 * v43;
        *(*(v12 + 656) + v38 + 40) = 0x101010101010101 * v43;
        goto LABEL_51;
    }
  }

  v50 = v36;
  result = memset((*(v12 + 656) + v38 + 32), v43, v48);
  v36 = v50;
  v13 = v84;
  a4 = v41;
LABEL_51:
  v51 = 32 * v39;
  if (v17 <= 3)
  {
    if (v17 == 1)
    {
      if (v18)
      {
        v72 = 0;
        v73 = vdupq_n_s64(v18 - 1);
        v74 = __c[1];
        v75 = ((v51 + v38) + v12 + 9600);
        do
        {
          v76 = vdupq_n_s64(v72);
          v77 = vmovn_s64(vcgeq_u64(v73, vorrq_s8(v76, xmmword_2775ED490)));
          if (vuzp1_s8(vuzp1_s16(v77, *v73.i8), *v73.i8).u8[0])
          {
            *(v75 - 256) = v74;
          }

          if (vuzp1_s8(vuzp1_s16(v77, *&v73), *&v73).i8[1])
          {
            *(v75 - 224) = v74;
          }

          if (vuzp1_s8(vuzp1_s16(*&v73, vmovn_s64(vcgeq_u64(v73, vorrq_s8(v76, xmmword_2775ED480)))), *&v73).i8[2])
          {
            *(v75 - 192) = v74;
            *(v75 - 160) = v74;
          }

          v78 = vmovn_s64(vcgeq_u64(v73, vorrq_s8(v76, xmmword_2775ED470)));
          if (vuzp1_s8(*&v73, vuzp1_s16(v78, *&v73)).i32[1])
          {
            *(v75 - 128) = v74;
          }

          if (vuzp1_s8(*&v73, vuzp1_s16(v78, *&v73)).i8[5])
          {
            *(v75 - 96) = v74;
          }

          if (vuzp1_s8(*&v73, vuzp1_s16(*&v73, vmovn_s64(vcgeq_u64(v73, vorrq_s8(v76, xmmword_2775ED460))))).i8[6])
          {
            *(v75 - 64) = v74;
            *(v75 - 32) = v74;
          }

          v79 = vmovn_s64(vcgeq_u64(v73, vorrq_s8(v76, xmmword_2775ED450)));
          if (vuzp1_s8(vuzp1_s16(v79, *v73.i8), *v73.i8).u8[0])
          {
            *v75 = v74;
          }

          if (vuzp1_s8(vuzp1_s16(v79, *&v73), *&v73).i8[1])
          {
            v75[32] = v74;
          }

          if (vuzp1_s8(vuzp1_s16(*&v73, vmovn_s64(vcgeq_u64(v73, vorrq_s8(v76, xmmword_2775ED440)))), *&v73).i8[2])
          {
            v75[64] = v74;
            v75[96] = v74;
          }

          v80 = vmovn_s64(vcgeq_u64(v73, vorrq_s8(v76, xmmword_2775ED430)));
          if (vuzp1_s8(*&v73, vuzp1_s16(v80, *&v73)).i32[1])
          {
            v75[128] = v74;
          }

          if (vuzp1_s8(*&v73, vuzp1_s16(v80, *&v73)).i8[5])
          {
            v75[160] = v74;
          }

          if (vuzp1_s8(*&v73, vuzp1_s16(*&v73, vmovn_s64(vcgeq_u64(v73, vorrq_s8(v76, xmmword_2775ED420))))).i8[6])
          {
            v75[192] = v74;
            v75[224] = v74;
          }

          v72 += 16;
          v75 += 512;
        }

        while (((v18 + 15) & 0x1F0) != v72);
      }
    }

    else if (v17 == 2 && v18)
    {
      v54 = 0;
      v55 = vdupq_n_s64(v18 - 1);
      v56 = 257 * *&__c[1];
      v57 = ((v51 + v38) + v12 + 9472);
      do
      {
        v58 = vdupq_n_s64(v54);
        v59 = vmovn_s64(vcgeq_u64(v55, vorrq_s8(v58, xmmword_2775ED490)));
        if (vuzp1_s8(vuzp1_s16(v59, *v55.i8), *v55.i8).u8[0])
        {
          *(v57 - 64) = v56;
        }

        if (vuzp1_s8(vuzp1_s16(v59, *&v55), *&v55).i8[1])
        {
          *(v57 - 48) = v56;
        }

        if (vuzp1_s8(vuzp1_s16(*&v55, vmovn_s64(vcgeq_u64(v55, vorrq_s8(v58, xmmword_2775ED480)))), *&v55).i8[2])
        {
          *(v57 - 32) = v56;
          *(v57 - 16) = v56;
        }

        v60 = vmovn_s64(vcgeq_u64(v55, vorrq_s8(v58, xmmword_2775ED470)));
        if (vuzp1_s8(*&v55, vuzp1_s16(v60, *&v55)).i32[1])
        {
          *v57 = v56;
        }

        if (vuzp1_s8(*&v55, vuzp1_s16(v60, *&v55)).i8[5])
        {
          v57[16] = v56;
        }

        if (vuzp1_s8(*&v55, vuzp1_s16(*&v55, vmovn_s64(vcgeq_u64(v55, vorrq_s8(v58, xmmword_2775ED460))))).i8[6])
        {
          v57[32] = v56;
          v57[48] = v56;
        }

        v54 += 8;
        v57 += 128;
      }

      while (((v18 + 7) & 0x1F8) != v54);
    }
  }

  else if (v17 == 4)
  {
    if (v18)
    {
      v61 = 0;
      v62 = 16843009 * *&__c[1];
      v63 = vdupq_n_s64(v18 - 1);
      v64 = ((v51 + v38) + v12 + 9440);
      do
      {
        v65 = vdupq_n_s64(v61);
        v66 = vmovn_s64(vcgeq_u64(v63, vorrq_s8(v65, xmmword_2775ED490)));
        if (vuzp1_s16(v66, *v63.i8).u8[0])
        {
          *(v64 - 24) = v62;
        }

        if (vuzp1_s16(v66, *&v63).i8[2])
        {
          *(v64 - 16) = v62;
        }

        if (vuzp1_s16(*&v63, vmovn_s64(vcgeq_u64(v63, vorrq_s8(v65, xmmword_2775ED480)))).i32[1])
        {
          *(v64 - 8) = v62;
          *v64 = v62;
        }

        v61 += 4;
        v64 += 32;
      }

      while (((v18 + 3) & 0x1FC) != v61);
    }
  }

  else if (v17 == 8)
  {
    if (v18)
    {
      v67 = 0;
      v68 = 0x101010101010101 * *&__c[1];
      v69 = vdupq_n_s64(v18 - 1);
      v70 = ((v51 + v38) + v12 + 9376);
      do
      {
        v71 = vmovn_s64(vcgeq_u64(v69, vorrq_s8(vdupq_n_s64(v67), xmmword_2775ED490)));
        if (v71.i8[0])
        {
          *(v70 - 4) = v68;
        }

        if (v71.i8[4])
        {
          *v70 = v68;
        }

        v67 += 2;
        v70 += 8;
      }

      while (((v18 + 1) & 0x1FE) != v67);
    }
  }

  else if (v17 == 16 && v18)
  {
    v52 = (v12 + 9344 + (v38 & 0xFFFFFC1F | (32 * (v39 & 0x1Fu))));
    v53 = 0x101010101010101 * *&__c[1];
    do
    {
      *v52 = v53;
      v52[1] = v53;
      v52 += 4;
      LODWORD(v18) = v18 - 1;
    }

    while (v18);
  }

  v81 = *(v12 + 258564);
  if (v81 == 1)
  {
    v82 = *(v49 + 13928);
    *v82 = *&__c[1] + 32 * v36;
    *(v49 + 13928) = v82 + 1;
    return result;
  }

  if ((v81 & 1) == 0)
  {
    goto LABEL_125;
  }

  return result;
}

uint64_t sub_2775D27CC(uint64_t a1, uint64x2_t *a2, uint64x2_t *a3, unsigned int a4, int a5, uint64_t a6, int a7, unsigned int a8, unsigned int *a9, unsigned int *a10, _BYTE *a11)
{
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(*(v13 + 24) + *(a6 + 4) + 808);
  v16 = &unk_277601B98 + 8 * a4;
  v17 = &byte_277601B40[4 * a5];
  v297 = v13;
  if (a8)
  {
    v18 = *(v13 + 2168);
    v19 = v17[2];
    v20 = v18 == 3 || v19 == 0;
    v21 = !v20;
    v22 = v16[2];
    if (v19 - v21 <= v22)
    {
      v27 = v17[3];
      v29 = v18 == 1 && v27 != 0;
      v30 = v27 - v29 <= v16[3];
      v23 = 7;
      if (!v30)
      {
        v23 = 10;
      }
    }

    else
    {
      v23 = 10;
    }

    if (v16[2] > 1u)
    {
      if (v22 != 2)
      {
        v31 = a2->i64[0] == 0x4040404040404040;
LABEL_33:
        v35 = !v31;
        v25 = v16[3];
        if (v25 > 1)
        {
          if (v25 != 2)
          {
            v36 = a3->i64[0] == 0x4040404040404040;
            goto LABEL_44;
          }

          v37 = a3->i32[0];
          v38 = 1077952576;
        }

        else
        {
          if (!v16[3])
          {
            v36 = a3->i8[0] == 64;
LABEL_44:
            v39 = !v36;
            v26 = v23 + v35 + v39;
            goto LABEL_73;
          }

          v37 = a3->u16[0];
          v38 = 16448;
        }

        v36 = v37 == v38;
        goto LABEL_44;
      }

      v32 = a2->i32[0];
      v33 = 1077952576;
    }

    else
    {
      if (!v16[2])
      {
        v31 = a2->i8[0] == 64;
        goto LABEL_33;
      }

      v32 = a2->u16[0];
      v33 = 16448;
    }

    v31 = v32 == v33;
    goto LABEL_33;
  }

  v24 = v17[2];
  v22 = v16[2];
  if (v24 == v22)
  {
    v25 = v17[3];
    if (v25 == v16[3])
    {
      v26 = 0;
      v22 = v24;
      goto LABEL_73;
    }
  }

  if (v16[2] <= 1u)
  {
    if (!v16[2])
    {
      LOBYTE(v40) = a2->i8[0];
      goto LABEL_55;
    }

    v41 = a2->u16[0];
  }

  else
  {
    if (v22 == 2)
    {
      v34 = a2->i32[0];
    }

    else if (v22 == 3)
    {
      v34 = a2->i32[1] | a2->i32[0];
    }

    else
    {
      v34 = ((a2->i64[1] | a2->i64[0]) >> 32) | a2->i32[2] | a2->i32[0];
    }

    v41 = v34 | HIWORD(v34);
  }

  v40 = v41 | (v41 >> 8);
LABEL_55:
  v25 = v16[3];
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v42 = a3->i32[0];
    }

    else if (v25 == 3)
    {
      v42 = a3->i32[1] | a3->i32[0];
    }

    else
    {
      v42 = ((a3->i64[1] | a3->i64[0]) >> 32) | a3->i32[2] | a3->i32[0];
    }

    v44 = v42 | HIWORD(v42);
    goto LABEL_65;
  }

  if (v16[3])
  {
    v44 = a3->u16[0];
LABEL_65:
    v43 = v44 | (v44 >> 8);
    goto LABEL_66;
  }

  LOBYTE(v43) = a3->i8[0];
LABEL_66:
  if ((v40 & 0x3C) != 0)
  {
    v45 = 4;
  }

  else
  {
    v45 = v40 & 0x3F;
  }

  if ((v43 & 0x3C) != 0)
  {
    v46 = 4;
  }

  else
  {
    v46 = v43 & 0x3F;
  }

  v26 = byte_2775F138F[4 * v45 + v45 + v46];
LABEL_73:
  v47 = v16[7];
  sub_277584658(v14 + 13824, (v14 + 52 * v47 + 4 * v26 + 12936));
  if (v53)
  {
    *a11 = 64;
    *a10 = 16 * v15;
    return 0xFFFFFFFFLL;
  }

  v293 = v47;
  if (v15)
  {
    v55 = 0x10u;
LABEL_79:
    v57 = a8;
    v58 = a11;
    goto LABEL_80;
  }

  v56 = v16[5];
  if (v56 + a7 > 3)
  {
    v55 = 0;
    goto LABEL_79;
  }

  v57 = a8;
  if (!a8)
  {
    v213 = *(v297 + 24);
    v55 = *(v213 + *(a6 + 4) + 816);
    v58 = a11;
    if (!*(v213 + *(a6 + 4) + 816))
    {
      goto LABEL_80;
    }

    if (!a7)
    {
      if (v56 == 3 || *(v213 + 894))
      {
        sub_277584658(v14 + 13824, (v14 + 4 * v16[4] + 5448));
        v55 = (v282 - 1) & 9;
      }

      else
      {
        v279 = v16[4];
        if (v279 == 2)
        {
          sub_27758434C(v14 + 13824, v14 + 2144, 11);
          v281 = v280 + 12;
        }

        else
        {
          sub_27758434C(v14 + 13824, v14 + 32 * v279 + 2080, 15);
          v281 = v284 + 24;
        }

        v55 = byte_2775F130B[v281];
      }

      goto LABEL_80;
    }

    v214 = *(a6 + 8);
    if (v214 == 13)
    {
      v214 = byte_2775F1306[*(a6 + 13)];
    }

    v215 = *(v213 + 894);
    v216 = v16[4];
    if (!v215)
    {
      if (v216 != 2)
      {
        sub_27758428C(v14 + 13824, (v14 + 208 * v16[4] + 16 * v214 + 2176), 6);
        v217 = v283 + 5;
        goto LABEL_238;
      }

      v216 = 2;
    }

    v217 = sub_2775840FC(v14 + 13824, (v14 + 208 * v216 + 16 * v214 + 2592), 4, v48, v49, v50, v51, v52);
LABEL_238:
    v55 = byte_2775F130B[v217];
    goto LABEL_80;
  }

  v58 = a11;
  if (a7)
  {
    v55 = byte_2775F12F8[*(a6 + 9)];
  }

  else
  {
    v55 = *a10;
    if (v56 == 3)
    {
      if (v55 == 9)
      {
        v55 = 9;
      }

      else
      {
        v55 = 0;
      }
    }

    else if (v16[4] == 2 && ((1 << v55) & 0xF000) != 0)
    {
      v55 = 0;
    }
  }

LABEL_80:
  *a10 = v55;
  if (v22 >= 3)
  {
    v59 = 3;
  }

  else
  {
    v59 = v22;
  }

  if (v25 >= 3)
  {
    v60 = 3;
  }

  else
  {
    v60 = v25;
  }

  v61 = v60 + v59;
  v62 = byte_2775F1333[v55];
  v63 = v55 - 10;
  v298 = v62;
  if (v61 < 3)
  {
    if (!v61)
    {
      v70 = sub_2775840FC(v14 + 13824, (v14 + 7040 + 32 * (v57 != 0) + 16 * (v63 < 6)), 4, v48, v49, v50, v51, v52);
      goto LABEL_104;
    }

    v64 = v14 + 13824;
    if (v61 == 1)
    {
      v65 = (v14 + 32 * (v57 != 0) + 16 * (v63 < 6) + 7104);
      v66 = 5;
    }

    else
    {
      v65 = (v14 + 32 * (v57 != 0) + 16 * (v63 < 6) + 7168);
      v66 = 6;
    }

    goto LABEL_100;
  }

  if (v61 > 4)
  {
    v67 = v14 + 13824;
    if (v61 == 5)
    {
      v68 = v14 + 32 * (v57 != 0) + 7424;
      v69 = 9;
    }

    else
    {
      v68 = v14 + 32 * (v57 != 0) + 7488;
      v69 = 10;
    }
  }

  else
  {
    if (v61 == 3)
    {
      v64 = v14 + 13824;
      v65 = (v14 + 32 * (v57 != 0) + 16 * (v63 < 6) + 7232);
      v66 = 7;
LABEL_100:
      sub_27758428C(v64, v65, v66);
      goto LABEL_104;
    }

    v67 = v14 + 13824;
    v68 = v14 + ((v57 != 0) << 6) + 32 * (v63 < 6) + 7296;
    v69 = 8;
  }

  sub_27758434C(v67, v68, v69);
LABEL_104:
  LODWORD(v76) = v70;
  v287 = a4;
  v288 = v58;
  v77 = v293;
  if (v70 <= 1)
  {
    v78 = v57 != 0;
  }

  else
  {
    v78 = v57 != 0;
    sub_277584658(v14 + 13824, (v14 + 88 * v293 + 44 * v78 + 4 * v70 + 12496));
    v80 = v76 - 2;
    v20 = v76 == 2;
    v81 = (v79 | 2) << (v76 - 2);
    v82 = 0;
    if (!v20)
    {
      do
      {
        --v80;
        sub_2775845E0();
        v82 = v83 | (2 * v82);
      }

      while (v80);
    }

    LODWORD(v76) = v82 | v81;
    v57 = a8;
    v77 = v293;
  }

  v84 = (v14 + (v77 << 6) + 32 * v78 + 7552);
  if (v77 >= 3)
  {
    v85 = 3;
  }

  else
  {
    v85 = v77;
  }

  v306 = v14 + 336 * v85 + 168 * v78 + 11152;
  v289 = v76;
  if (!v76)
  {
    v105 = sub_2775840FC(v14 + 13824, v84, 2, v71, v72, v73, v74, v75);
    if (v105 != 2)
    {
      v185 = v105 + 1;
      v111 = v297;
LABEL_217:
      v186 = a3;
      goto LABEL_218;
    }

    v111 = v297;
    v112 = v306;
LABEL_216:
    v185 = sub_277584434(v14 + 13824, v112, v106, v107, v108, v109, v110);
    goto LABEL_217;
  }

  v86 = v76;
  v285 = (a1 + 0x2000);
  v308 = (v14 + 656 * v77 + 328 * v78 + 7872);
  v309 = (a1 + 8256);
  v87.i32[0] = *v16;
  v87.i32[1] = v16[1];
  v88 = COERCE_DOUBLE(vmin_u32(v87, 0x800000008));
  v89 = HIDWORD(v88);
  v90 = LODWORD(v88);
  v91 = 1;
  if (v86 > 2 * HIDWORD(v88) * LODWORD(v88))
  {
    v91 = 2;
  }

  v92 = sub_2775840FC(v14 + 13824, &v84[v91 + (v86 > 4 * HIDWORD(v88) * LODWORD(v88))], 2, v88, COERCE_DOUBLE(0x800000008), v73, v74, v75);
  v292 = v92;
  v93 = 65 * (v92 + 1);
  v286 = v78;
  if (v298 == 2)
  {
    v113 = 65 * (v92 + 1);
    v114 = v25 + 2;
    v115 = 4 * v90 - 1;
    v116 = (v90 << 6) | 0x20u;
    v117 = v92 + 1;
    bzero(v309, v116);
    v123 = v117;
    v301 = v115;
    v124 = v115 & v289;
    v125 = v22 + 2;
    v126 = v289 >> (v22 + 2);
    v127 = v114;
    LODWORD(v76) = (v124 << v114) | v126;
    if (v292 == 2)
    {
      v128 = 112;
      if (!v126)
      {
        v128 = 56;
      }

      v123 = sub_277584434(v14 + 13824, (v306 + v128), v118, v119, v120, v121, v122);
      v113 = v123 - 64;
    }

    a9[v76] = v123 << 11;
    v309[16 * v124 + v126] = v113;
    if (v289 != 1)
    {
      v129 = v289 + 1;
      do
      {
        v130 = (v129 - 2) & v301;
        v131 = (v129 - 2) >> v125;
        v132 = (v130 << v127) | v131;
        v133 = &v309[v131 + (16 * v130)];
        v134 = v133[16] + v133[1] + v133[2];
        v135 = v134 + v133[3] + v133[4];
        v136 = 5 * v131 + 26;
        if (v131 > 1)
        {
          v136 = 36;
        }

        if (v135 <= 0x200)
        {
          v137 = (v135 + 64) >> 7;
        }

        else
        {
          v137 = 4;
        }

        v138 = sub_2775840FC(v14 + 13824, &v308[v137 + v136], 3, v118, v119, v120, v121, v122);
        if (v138 == 3)
        {
          v139 = v134 & 0x3F;
          if (v131)
          {
            v140 = 14;
          }

          else
          {
            v140 = 7;
          }

          if (v139 <= 0xC)
          {
            v141 = (v139 + 1) >> 1;
          }

          else
          {
            v141 = 6;
          }

          v142 = sub_277584434(v14 + 13824, (v306 + 8 * (v141 + v140)), v118, v119, v120, v121, v122);
          v143 = v142 - 64;
          v144 = v76 | (v142 << 11);
          LODWORD(v76) = v132;
        }

        else
        {
          v143 = 65 * v138;
          v144 = (v76 - 2048) & ((1572673 * v138) >> 9);
          if (v144)
          {
            LODWORD(v76) = v132;
          }
        }

        *v133 = v143;
        a9[v132] = v144;
        --v129;
      }

      while (v129 > 2);
    }

    v145 = v285[80] + v285[65] + v285[66];
    v146 = v145 + v285[67] + v285[68];
    if (v146 <= 0x200)
    {
      v147 = ((v146 + 64) >> 7) + 26;
    }

    else
    {
      v147 = 30;
    }

    v148 = sub_2775840FC(v14 + 13824, &v308[v147], 3, v118, v119, v120, v121, v122);
    if (v148 == 3)
    {
      v149 = v145 & 0x3F;
LABEL_185:
      if (v149 <= 0xC)
      {
        v184 = (v149 + 1) >> 1;
      }

      else
      {
        v184 = 6;
      }

      v112 = (v306 + 8 * v184);
      v57 = a8;
      v111 = v297;
      LODWORD(v78) = v286;
      goto LABEL_216;
    }

LABEL_189:
    v185 = v148;
    v186 = a3;
    v111 = v297;
    v57 = a8;
    LODWORD(v78) = v286;
    goto LABEL_218;
  }

  if (v298 != 1)
  {
    v150 = v92 + 1;
    v151 = (a4 > 4) & a4;
    v152 = *(&off_27A717538 + a4);
    if (a4 > 4)
    {
      ++v151;
    }

    v291 = v151;
    v302 = 4 * v89;
    v153 = (4 * v89);
    if (v25 >= 4)
    {
      v154 = 5;
    }

    else
    {
      v154 = v25 + 2;
    }

    v155 = (v153 - 1);
    bzero(v309, v153 * ((4 * v90) | 2u));
    v76 = *(v152 + 2 * v289);
    v295 = v154;
    v161 = v76 >> v154;
    v294 = v155;
    v162 = v155 & v76;
    if (v292 == 2)
    {
      v163 = 56;
      if ((v161 | v162) > 1)
      {
        v163 = 112;
      }

      v150 = sub_277584434(v14 + 13824, (v306 + v163), v156, v157, v158, v159, v160);
      v93 = v150 - 64;
    }

    a9[v76] = v150 << 11;
    v309[v161 * (4 * v89) + v162] = v93;
    if (v289 != 1)
    {
      v164 = v289 + 1;
      v165 = (v152 + 2 * v289 - 2);
      do
      {
        v167 = *v165--;
        v166 = v167;
        v168 = v167 >> v295;
        v169 = v294 & v167;
        v170 = &v309[(v167 >> v295) * (v302 & 0xFC) + v169];
        v171 = v170[v302] + v170[1] + v170[v302 + 1];
        v172 = v171 + v170[2] + v170[2 * v302];
        if (v169 >= 4)
        {
          v173 = 4;
        }

        else
        {
          v173 = v169;
        }

        if (v168 >= 4)
        {
          v174 = 4;
        }

        else
        {
          v174 = v168;
        }

        v175 = byte_2775F1344[25 * v291 + 4 * v173 + v173 + v174];
        if (v172 <= 0x200)
        {
          v176 = (v172 + 64) >> 7;
        }

        else
        {
          v176 = 4;
        }

        v177 = sub_2775840FC(v14 + 13824, &v308[v176 + v175], 3, v156, v157, v158, v159, v160);
        if (v177 == 3)
        {
          v178 = v171 & 0x3F;
          if ((v168 | v169) <= 1)
          {
            v179 = 7;
          }

          else
          {
            v179 = 14;
          }

          if (v178 <= 0xC)
          {
            v180 = (v178 + 1) >> 1;
          }

          else
          {
            v180 = 6;
          }

          v181 = sub_277584434(v14 + 13824, (v306 + 8 * (v180 + v179)), v156, v157, v158, v159, v160);
          v182 = v181 - 64;
          v183 = v76 | (v181 << 11);
          LODWORD(v76) = v166;
        }

        else
        {
          v182 = 65 * v177;
          v183 = (v76 - 2048) & ((1572673 * v177) >> 9);
          if (v183)
          {
            LODWORD(v76) = v166;
          }
        }

        *v170 = v182;
        a9[v166] = v183;
        --v164;
      }

      while (v164 > 2);
    }

    v148 = sub_2775840FC(v14 + 13824, v308, 3, v156, v157, v158, v159, v160);
    if (v148 == 3)
    {
      v149 = (v309[v302] + v285[65] + v309[v302 + 1]) & 0x3F;
      goto LABEL_185;
    }

    goto LABEL_189;
  }

  v94 = v25 + 2;
  v95 = 4 * v89 - 1;
  v96 = v92 + 1;
  bzero(v309, (v89 << 6) | 0x20);
  v102 = v96;
  v103 = v289 >> v94;
  if (v292 == 2)
  {
    v104 = 112;
    if (!v103)
    {
      v104 = 56;
    }

    v102 = sub_277584434(v14 + 13824, (v306 + v104), v97, v98, v99, v100, v101);
    v93 = v102 - 64;
  }

  a9[v289] = v102 << 11;
  v309[16 * (v95 & v289) + v103] = v93;
  if (v289 == 1)
  {
    LODWORD(v76) = 1;
  }

  else
  {
    v187 = v289 - 1;
    LODWORD(v76) = v289;
    do
    {
      v188 = v187 >> v94;
      v189 = &v309[16 * (v95 & v187) + v188];
      v190 = v189[16] + v189[1] + v189[2];
      v191 = v190 + v189[3] + v189[4];
      v192 = 5 * v188 + 26;
      if (v188 > 1)
      {
        v192 = 36;
      }

      if (v191 <= 0x200)
      {
        v193 = (v191 + 64) >> 7;
      }

      else
      {
        v193 = 4;
      }

      v194 = sub_2775840FC(v14 + 13824, &v308[v193 + v192], 3, v97, v98, v99, v100, v101);
      if (v194 == 3)
      {
        v195 = v190 & 0x3F;
        if (v188)
        {
          v196 = 14;
        }

        else
        {
          v196 = 7;
        }

        if (v195 <= 0xC)
        {
          v197 = (v195 + 1) >> 1;
        }

        else
        {
          v197 = 6;
        }

        v198 = sub_277584434(v14 + 13824, (v306 + 8 * (v197 + v196)), v97, v98, v99, v100, v101);
        v199 = v198 - 64;
        v200 = v76 | (v198 << 11);
        LODWORD(v76) = v187;
      }

      else
      {
        v199 = 65 * v194;
        v200 = (v76 - 2048) & ((1572673 * v194) >> 9);
        if (v200)
        {
          LODWORD(v76) = v187;
        }
      }

      *v189 = v199;
      a9[v187] = v200;
      v201 = v187-- + 1;
    }

    while (v201 > 2);
  }

  v202 = v285[80] + v285[65] + v285[66];
  v203 = v202 + v285[67] + v285[68];
  if (v203 <= 0x200)
  {
    v204 = ((v203 + 64) >> 7) + 26;
  }

  else
  {
    v204 = 30;
  }

  v205 = sub_2775840FC(v14 + 13824, &v308[v204], 3, v97, v98, v99, v100, v101);
  LODWORD(v78) = v286;
  if (v205 == 3)
  {
    if ((v202 & 0x3Fu) <= 0xC)
    {
      v206 = ((v202 & 0x3Fu) + 1) >> 1;
    }

    else
    {
      v206 = 6;
    }

    v112 = (v306 + 8 * v206);
    v57 = a8;
    v111 = v297;
    goto LABEL_216;
  }

  v185 = v205;
  v186 = a3;
  v111 = v297;
  v57 = a8;
LABEL_218:
  if (*a10 > 8)
  {
    v207 = 0;
  }

  else
  {
    v207 = *(v111 + 24 * v287 + 8 * v57 + 3576);
  }

  v208 = (*(v14 + 14048) + 12 * *(a6 + 4) + 4 * v57);
  if (v293 <= 2)
  {
    v209 = 2;
  }

  else
  {
    v209 = v293;
  }

  v210 = v209 - 2;
  v310 = ~(-128 << *(v111 + 2172));
  v305 = v209 - 2;
  if (v185)
  {
    switch(v287)
    {
      case 1:
        v211 = ((67372036 * ((v186->i16[0] & 0xC0C0) + (a2->i16[0] & 0xC0C0u))) >> 24) - 4;
        break;
      case 2:
        v211 = ((16843009 * (((v186->i32[0] >> 6) & 0x3030303) + ((a2->i32[0] >> 6) & 0x3030303))) >> 24) - 8;
        break;
      case 3:
        v211 = (((0x101010101010101 * (((v186->i64[0] >> 6) & 0x303030303030303) + ((a2->i64[0] >> 6) & 0x303030303030303))) >> 32) >> 24) - 16;
        break;
      case 4:
        v223.i64[0] = 0x303030303030303;
        v223.i64[1] = 0x303030303030303;
        v211 = (((0x101010101010101 * vaddvq_s64(vaddq_s64(vandq_s8(vshrq_n_u64(*a2, 6uLL), v223), vandq_s8(vshrq_n_u64(*v186, 6uLL), v223)))) >> 32) >> 24) - 32;
        break;
      case 5:
        v229 = a2->i8[0] & 0xC0;
        v230 = v186->i16[0] & 0xC0C0;
        goto LABEL_261;
      case 6:
        v229 = a2->i16[0] & 0xC0C0;
        v230 = v186->i8[0] & 0xC0;
LABEL_261:
        v211 = ((67372036 * (v230 + v229)) >> 24) - 3;
        break;
      case 7:
        v226 = (v186->i32[0] & 0xC0C0C0C0) + (a2->i16[0] & 0xC0C0);
        goto LABEL_267;
      case 8:
        v226 = (a2->i32[0] & 0xC0C0C0C0) + (v186->i16[0] & 0xC0C0);
LABEL_267:
        v211 = ((16843009 * (v226 >> 6)) >> 24) - 6;
        break;
      case 9:
        v225 = (v186->i64[0] & 0xC0C0C0C0C0C0C0C0) + (a2->i32[0] & 0xC0C0C0C0);
        goto LABEL_265;
      case 10:
        v225 = (a2->i64[0] & 0xC0C0C0C0C0C0C0C0) + (v186->i32[0] & 0xC0C0C0C0);
LABEL_265:
        v211 = (((0x101010101010101 * (v225 >> 6)) >> 32) >> 24) - 12;
        break;
      case 11:
        v220.i64[0] = 0x303030303030303;
        v220.i64[1] = 0x303030303030303;
        v221 = vandq_s8(vshrq_n_u64(*v186, 6uLL), v220);
        v222 = v221.i64[0] + ((a2->i64[0] >> 6) & 0x303030303030303) + v221.i64[1];
        goto LABEL_248;
      case 12:
        v224.i64[0] = 0x303030303030303;
        v224.i64[1] = 0x303030303030303;
        v222 = vaddvq_s64(vandq_s8(vshrq_n_u64(*a2, 6uLL), v224)) + ((v186->i64[0] >> 6) & 0x303030303030303);
LABEL_248:
        v211 = (((0x101010101010101 * v222) >> 32) >> 24) - 24;
        break;
      case 13:
        v219 = (v186->i32[0] & 0xC0C0C0C0) + (a2->i8[0] & 0xC0);
        goto LABEL_259;
      case 14:
        v219 = (a2->i32[0] & 0xC0C0C0C0) + (v186->i8[0] & 0xC0);
LABEL_259:
        v211 = ((16843009 * (v219 >> 6)) >> 24) - 5;
        break;
      case 15:
        v218 = (v186->i64[0] & 0xC0C0C0C0C0C0C0C0) + (a2->i16[0] & 0xC0C0);
        goto LABEL_252;
      case 16:
        v218 = (a2->i64[0] & 0xC0C0C0C0C0C0C0C0) + (v186->i16[0] & 0xC0C0);
LABEL_252:
        v211 = (((0x101010101010101 * (v218 >> 6)) >> 32) >> 24) - 10;
        break;
      case 17:
        v227 = (v186->i64[0] & 0xC0C0C0C0C0C0C0C0) + (a2->i32[0] & 0xC0C0C0C0);
        v228 = v186->i64[1] >> 6;
        goto LABEL_263;
      case 18:
        v227 = (a2->i64[0] & 0xC0C0C0C0C0C0C0C0) + (v186->i32[0] & 0xC0C0C0C0);
        v228 = a2->i64[1] >> 6;
LABEL_263:
        v211 = (((0x101010101010101 * ((v228 & 0x303030303030303) + (v227 >> 6))) >> 32) >> 24) - 20;
        break;
      default:
        v211 = (v186->u8[0] >> 6) + (a2->u8[0] >> 6) - 2;
        break;
    }

    v30 = v211 <= 0;
    v231 = v211 != 0;
    if (!v30)
    {
      ++v231;
    }

    sub_277584658(v14 + 13824, (v14 + 12 * v78 + 4 * v231 + 13196));
    v233 = v232;
    v234 = v208;
    v235 = *v208;
    v304 = (v232 - 1) & 0x80;
    v212 = a9;
    if (v207)
    {
      v236 = (*v207 * v235 + 16) >> 5;
      if (v185 == 15)
      {
        v237 = -1;
        do
        {
          ++v237;
          sub_2775845E0();
        }

        while (!v238 && v237 < 0x20);
        if (v237)
        {
          v239 = -v237;
          v240 = 1;
          do
          {
            sub_2775845E0();
            v240 = v241 + 2 * v240;
            v242 = __CFADD__(v239++, 1);
          }

          while (!v242);
          v185 = (v240 + 14) & 0xFFFFF;
        }

        else
        {
          v185 = 15;
        }

        v248 = (v185 * v236) & 0xFFFFFF;
        v210 = v305;
      }

      else
      {
        v248 = v236 * v185;
      }

      v250 = v248 >> v210;
      if (v250 >= v233 + v310)
      {
        v250 = v233 + v310;
      }

      if (v233)
      {
        v250 = -v250;
      }

      *a9 = v250;
      v208 = v234;
      v251 = v288;
      if (!v76)
      {
        goto LABEL_342;
      }

      goto LABEL_298;
    }

    if (v185 == 15)
    {
      v243 = -1;
      do
      {
        ++v243;
        sub_2775845E0();
      }

      while (!v244 && v243 < 0x20);
      if (v243)
      {
        v245 = -v243;
        v246 = 1;
        do
        {
          sub_2775845E0();
          v246 = v247 + 2 * v246;
          v242 = __CFADD__(v245++, 1);
        }

        while (!v242);
        v185 = (v246 + 14) & 0xFFFFF;
      }

      else
      {
        v185 = 15;
      }

      v210 = v305;
      v249 = ((v185 * v235) & 0xFFFFFF) >> v305;
      if (v249 >= v233 + v310)
      {
        v249 = v233 + v310;
      }
    }

    else
    {
      v249 = (v185 * v235) >> v210;
    }

    if (v233)
    {
      v249 = -v249;
    }

    *a9 = v249;
    v208 = v234;
    v251 = v288;
    if (!v76)
    {
      goto LABEL_342;
    }

LABEL_323:
    v265 = v208[1];
    do
    {
      sub_2775845E0();
      v267 = v266;
      v268 = v212[v76];
      v269 = v268 >> 11;
      if (v268 >> 11 < 0xF)
      {
        v276 = (v269 * v265) >> v210;
      }

      else
      {
        v270 = 0;
        v271 = -1;
        do
        {
          v272 = v270;
          ++v271;
          sub_2775845E0();
          if (v273)
          {
            break;
          }

          v270 = v272 - 1;
        }

        while (v271 < 0x20);
        if (v271)
        {
          v274 = 1;
          do
          {
            sub_2775845E0();
            v274 = v275 + 2 * v274;
            v242 = __CFADD__(v272++, 1);
          }

          while (!v242);
          v269 = (v274 + 14) & 0xFFFFF;
        }

        else
        {
          v269 = 15;
        }

        v210 = v305;
        v276 = ((v269 * v265) & 0xFFFFFFu) >> v305;
        if (v276 >= v267 + v310)
        {
          v276 = v267 + v310;
        }
      }

      v185 += v269;
      if (v267)
      {
        v277 = -v276;
      }

      else
      {
        v277 = v276;
      }

      v212[v76] = v277;
      LODWORD(v76) = v268 & 0x3FF;
    }

    while ((v268 & 0x3FF) != 0);
    goto LABEL_341;
  }

  v304 = 64;
  v212 = a9;
  if (!v207)
  {
    goto LABEL_323;
  }

LABEL_298:
  v307 = v208[1];
  do
  {
    sub_2775845E0();
    v253 = v252;
    v254 = v212[v76];
    v255 = (v207[v76] * v307 + 16) >> 5;
    v256 = v254 >> 11;
    if (v254 >> 11 < 0xF)
    {
      v263 = v255 * v256;
    }

    else
    {
      v257 = 0;
      v258 = -1;
      do
      {
        v259 = v257;
        ++v258;
        sub_2775845E0();
        if (v260)
        {
          break;
        }

        v257 = v259 - 1;
      }

      while (v258 < 0x20);
      if (v258)
      {
        v261 = 1;
        do
        {
          sub_2775845E0();
          v261 = v262 + 2 * v261;
          v242 = __CFADD__(v259++, 1);
        }

        while (!v242);
        v256 = (v261 + 14) & 0xFFFFF;
      }

      else
      {
        v256 = 15;
      }

      v263 = (v256 * v255) & 0xFFFFFF;
      v212 = a9;
      v210 = v305;
    }

    v185 += v256;
    v264 = v263 >> v210;
    if (v263 >> v210 >= v253 + v310)
    {
      v264 = v253 + v310;
    }

    if (v253)
    {
      v264 = -v264;
    }

    v212[v76] = v264;
    LODWORD(v76) = v254 & 0x3FF;
  }

  while ((v254 & 0x3FF) != 0);
LABEL_341:
  v251 = v288;
LABEL_342:
  if (v185 >= 0x3F)
  {
    v278 = 63;
  }

  else
  {
    v278 = v185;
  }

  *v251 = v278 | v304;
  return v289;
}

uint64_t sub_2775D3DD4(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 8);
  v7 = *(a1 + 24);
  v6 = *(a1 + 28);
  v8 = *(v5 + 2168);
  v9 = &byte_277601B40[4 * a2];
  v10 = *v9;
  v11 = v9[1];
  if (v10 >= *(v5 + 3448) - v7)
  {
    v12 = *(v5 + 3448) - v7;
  }

  else
  {
    v12 = v10;
  }

  v13 = *(v5 + 3452) - v6;
  if (v11 >= v13)
  {
    result = v13;
  }

  else
  {
    result = v11;
  }

  v15 = v8 != 3;
  v173 = v12;
  if (v8 == 3)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = v8 == 1;
  if (v8 == 1)
  {
    v18 = result + 1;
  }

  else
  {
    v18 = result;
  }

  if (v11 <= v17)
  {
    v19 = v6 & 1;
  }

  else
  {
    v19 = 1;
  }

  if (v10 <= v15 && (v7 & 1) == 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  if (v8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v169 = v22;
  if (result >= 1)
  {
    v24 = 0;
    v25 = v7 & 0x1F;
    v203 = v25 >> v15;
    v26 = &unk_277601B98 + 8 * a4[10];
    v219 = &unk_277601B98 + 8 * a4[7];
    v176 = v6 & 0x1F;
    v178 = v176 >> v17;
    v27 = v16 >> v15;
    v207 = (a1 + 25984);
    v28 = (v10 + v15) >> v15;
    v29 = (v11 + v17) >> v17;
    v194 = *(*(v5 + 8) + 394) << 10;
    v30 = *(v5 + 3280);
    v161 = 8 * v10 * v11;
    v159 = 8 * v28 * v29;
    v206 = *(a1 + 16);
    v199 = v206 + 3474;
    v205 = v30 + 64;
    v198 = v30 + 680;
    v167 = v27;
    v165 = v18 >> v17;
    v160 = v30 + 176;
    v175 = v30 + 200;
    v182 = v5 + 2120;
    v185 = v5 + 3408;
    v186 = a1 + 64;
    v204 = (a1 + 1024);
    v162 = 4 * v29;
    v163 = 4 * v28;
    v191 = ~v15;
    v216 = ~v17;
    v213 = a4 + 15;
    v31 = v173;
    v168 = result;
    v208 = v15;
    v209 = v17;
    v187 = v26;
    v220 = v5;
    v183 = v25;
    while (1)
    {
      v32 = v24 + 16;
      if (result >= (v24 + 16))
      {
        v33 = v24 + 16;
      }

      else
      {
        v33 = result;
      }

      v181 = v33;
      v34 = v165;
      v164 = v32 >> v17;
      if (v165 >= (v32 >> v17))
      {
        v34 = v32 >> v17;
      }

      v190 = v34;
      if (v173 >= 1)
      {
        break;
      }

LABEL_264:
      v24 = v32;
      if (v32 >= result)
      {
        return result;
      }
    }

    v188 = 0;
    v35 = (a3 >> 3) & 1;
    if (v32 < result)
    {
      LOBYTE(v35) = 1;
    }

    v170 = v35;
    v171 = a3 & (v24 == 0);
    v177 = v24;
    v180 = v24 >> v17;
    v172 = v24 + 16;
LABEL_36:
    if (a4[11])
    {
      v36 = *(v5 + 2120);
      v37 = *(v5 + 2144);
      v38 = *(a1 + 24);
      v39 = *(a1 + 258564);
      if (v39)
      {
        *&v199[6 * (v39 & 1)] += v161;
      }

      (*(*(v5 + 3280) + 248))(v36 + 8 * (v38 + (v37 >> 1) * v6));
      v5 = v220;
    }

    v40 = *(a1 + 656);
    if (*(v40 + v25 + 224))
    {
      v41 = *(v40 + v25);
      if ((v41 & 0xFFFFFFFD) == 9 || v41 == 10)
      {
        v43 = 512;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    if (*(a1 + 256 + v176))
    {
      v44 = *(a1 + 32 + v176);
      if ((v44 & 0xFFFFFFFD) == 9 || v44 == 10)
      {
        v46 = 512;
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v46 = 0;
    }

    v196 = ((v188 + 16) < v31) | v171;
    LOBYTE(v195) = v188 == 0;
    v174 = v188 + 16;
    if (v173 >= v188 + 16)
    {
      v47 = v188 + 16;
    }

    else
    {
      v47 = v173;
    }

    v48 = *(a1 + 24);
    v49 = v177;
    v50 = *(a1 + 28) + v177;
    *(a1 + 28) = v50;
    v210 = v43 | v46 | v194;
LABEL_60:
    v51 = *(v5 + 2120);
    v52 = *(v5 + 2144);
    v53 = v48 + v188;
    *(a1 + 24) = v48 + v188;
    v54 = v51 + 8 * (v188 + (v52 >> 1) * v50 + v48);
    v214 = v196 & (v49 <= v177);
    v201 = v49;
    v217 = v49 + v176;
    v55 = v188;
    while (1)
    {
      v56 = v55;
      if (!a4[11])
      {
        v225[0] = a4[13];
        v57 = (v214 & 1) != 0 || (v55 + *v26) < v47;
        v58 = v188 >= v56;
        if (!((v188 < v56) | (v188 == 0) & v170))
        {
          v58 = (v201 + v26[1]) < v181;
        }

        v59 = 8 * v58;
        v60 = *(a1 + 28);
        if (((*(v5 + 3472) - 1) & v60) != 0)
        {
          v61 = 0;
        }

        else
        {
          v61 = *(v5 + 3408) + 2 * ((*(v5 + 3456) * ((v60 >> *(v5 + 3468)) - 1)) << 7);
        }

        v62 = *v26;
        v63 = v26[1];
        v64 = sub_2775C69A8(v53, v53 > v206[3466], v60, v60 > v206[3468], v206[3467], v206[3469], v59 | v57, v54, *(v5 + 2144), v61, a4[8], v225, v62, v63, *(*(v5 + 8) + 394), v207, *(v5 + 4324));
        (*(v205 + 8 * v64))(v54, *(v220 + 2144), v207, (4 * v62), (4 * v63), v210 | v225[0], (4 * (*(v220 + 3448) - *(a1 + 24))), (4 * (*(v220 + 3452) - *(a1 + 28))), *(v220 + 4324));
        v5 = v220;
        v15 = v208;
      }

      if (!a4[6])
      {
        break;
      }

      if (!*(a1 + 258564))
      {
        v74 = v26[1];
        if (v74 <= 3)
        {
          if (v74 == 1)
          {
            *(v186 + v217) = 64;
          }

          else if (v74 == 2)
          {
            *(v186 + v217) = 16448;
          }
        }

        else
        {
          switch(v74)
          {
            case 4u:
              *(v186 + v217) = 1077952576;
              break;
            case 8u:
              v75 = a1 + 64;
              v76 = v217;
LABEL_105:
              *(v75 + v76) = 0x4040404040404040;
              break;
            case 0x10u:
              v75 = a1 + 64;
              *(v186 + v217) = 0x4040404040404040;
              v76 = v217 + 8;
              goto LABEL_105;
          }
        }

        v65 = *v26;
        if (v65 <= 3)
        {
          if (v65 == 1)
          {
            *(*(a1 + 656) + v56 + v183 + 32) = 64;
          }

          else if (v65 == 2)
          {
            *(*(a1 + 656) + v56 + v183 + 32) = 16448;
          }
        }

        else
        {
          switch(v65)
          {
            case 4u:
              *(*(a1 + 656) + v56 + v183 + 32) = 1077952576;
              break;
            case 8u:
              *(*(a1 + 656) + v56 + v183 + 32) = 0x4040404040404040;
              break;
            case 0x10u:
              v86 = v56 + v183;
              *(*(a1 + 656) + v86 + 32) = 0x4040404040404040;
              *(*(a1 + 656) + v86 + 40) = 0x4040404040404040;
              break;
          }
        }

        goto LABEL_83;
      }

      v65 = *v26;
LABEL_83:
      v54 += 8 * v65;
      v55 = v56 + v65;
      v73 = *(a1 + 24);
      v53 = v73 + v65;
      *(a1 + 24) = v73 + v65;
      if ((v56 + v65) >= v47)
      {
        v88 = *(a1 + 28);
        v48 = v73 - v56;
        *(a1 + 24) = v48;
        v89 = v26[1];
        v49 = v201 + v89;
        v50 = v88 + v89;
        *(a1 + 28) = v88 + v89;
        if ((v201 + v89) >= v181)
        {
          v6 = v88 - v201;
          *(a1 + 28) = v6;
          v90 = v219;
          if (!v169)
          {
            goto LABEL_263;
          }

          v212 = *(v5 + 2152);
          if (a4[9] == 13)
          {
            v91 = *(v5 + 2120) + 8 * (v48 & v191) + 2 * (*(v5 + 2144) >> 1) * 4 * (v6 & v216);
            v92 = (*(v5 + 2152) >> 1) * (v6 >> v209) + (v48 >> v15);
            v93 = *(v5 + 2128) + 8 * v92;
            v223 = *(v5 + 2136) + 8 * v92;
            v224 = v93;
            (*(v160 + 8 * (*(v5 + 2168) - 1)))(a1 + 9344, v91);
            v94 = 0;
            v95 = &v224;
            v96 = 1;
            do
            {
              v97 = v96;
              if (v213[v94])
              {
                v222 = 0;
                v98 = *(a1 + 28);
                if (((*(v220 + 3472) - 1) & v216 & v98) != 0)
                {
                  v99 = 0;
                }

                else
                {
                  v99 = *(v185 + 8 * v94 + 8) + 2 * ((*(v220 + 3456) * ((v98 >> *(v220 + 3468)) - 1)) << 7);
                }

                v100 = *(a1 + 24) >> v15;
                v101 = v100 > v206[3466] >> v15;
                v102 = v206[3467] >> v15;
                v103 = *v95;
                v104 = *v219;
                v105 = v219[1];
                v106 = *(v175 + 8 * sub_2775C69A8(v100, v101, v98 >> v209, v98 >> v209 > v206[3468] >> v209, v102, v206[3469] >> v209, 0, *v95, v212, v99, 0, &v222, v104, v105, 0, v207, *(v220 + 4324)));
                v107 = (4 * v104);
                v90 = v219;
                v108 = v103;
                v15 = v208;
                v106(v108, v212, v207, v107, (4 * v105), a1 + 9344, v213[v94], *(v220 + 4324));
                v26 = v187;
              }

              v96 = 0;
              v95 = &v223;
              v94 = 1;
            }

            while ((v97 & 1) != 0);
            v5 = v220;
          }

          else if (a4[12])
          {
            v109 = *(a1 + 258564);
            v110 = a1 + 13440;
            v111 = a1 + 26256;
            if (v109)
            {
              v112 = 6 * (v109 & 1);
              v110 = *&v199[v112];
              v111 = *(v5 + 4376) + 48 * (*(v5 + 3432) >> 1) * ((v48 & 1) + (v6 >> 1)) + 48 * ((v6 & 1) + (v48 >> 1));
              *&v199[v112] = v110 + v159;
            }

            v113 = 4 * ((v212 >> 1) * (v6 >> v209) + (v48 >> v208));
            (*(*(v5 + 3280) + 248))(*(v5 + 2128) + 8 * ((v212 >> 1) * (v6 >> v209) + (v48 >> v208)));
            v114 = v110;
            v15 = v208;
            (*(*(v220 + 3280) + 248))(*(v220 + 2136) + 2 * v113, *(v220 + 2152), v111 + 32, v114, v163, v162);
            v90 = v219;
            v5 = v220;
          }

          v115 = *(*(a1 + 656) + v203 + 560);
          v117 = v115 == 10 || (v115 & 0xFFFFFFFD) == 9;
          v118 = *(a1 + 592 + v178);
          v120 = v118 == 10 || (v118 & 0xFFFFFFFD) == 9;
          if (v117 || v120)
          {
            v121 = 512;
          }

          else
          {
            v121 = 0;
          }

          v193 = v121;
          LOBYTE(v179) = (v174 >> v15) < v167;
          if ((v174 >> v15) >= v167 && !v177)
          {
            v179 = (a3 << (*(v5 + 2168) - 1) >> 2) & 1;
          }

          if (!v188 && v164 >= v165)
          {
            v195 = (a3 << (*(v5 + 2168) - 1) >> 5) & 1;
          }

          v200 = 0;
          if (v167 >= (v174 >> v15))
          {
            v122 = v174 >> v15;
          }

          else
          {
            v122 = v167;
          }

          v123 = v188 >> v15;
          v6 = *(a1 + 28);
          v192 = v122;
          v202 = v188 >> v15;
          while (2)
          {
            v124 = v200;
            v125 = v6 + v177;
            *(a1 + 28) = v6 + v177;
            ++v200;
            if (v180 >= v190)
            {
              v197 = v180;
              v127 = v209;
              goto LABEL_262;
            }

            v126 = *(a1 + 24);
            v211 = a1 + 96 + 32 * v124;
            v197 = v180;
            v127 = v209;
            v218 = v124;
            while (2)
            {
              v128 = *(v182 + 8 * v200);
              v129 = v126 + v188;
              *(a1 + 24) = v129;
              if (v123 >= v122)
              {
                goto LABEL_259;
              }

              v130 = v128 + 8 * ((v212 >> 1) * (v125 >> v127) + (v129 >> v15));
              v215 = v197 + v178;
              v184 = v215 + 8;
              while (2)
              {
                v131 = a4[9];
                if ((v131 != 13 || !v213[v124]) && !a4[12])
                {
                  v221 = a4[14];
                  v132 = ((v197 <= v180) & v179) != 0 || (v123 + *v90) < v122;
                  v133 = v123 <= v202;
                  if (!((v123 > v202) | v195 & 1))
                  {
                    v133 = (v197 + v90[1]) < v190;
                  }

                  v134 = 8 * v133;
                  v135 = *(a1 + 28);
                  if (((*(v5 + 3472) - 1) & v216 & v135) != 0)
                  {
                    v136 = 0;
                  }

                  else
                  {
                    v136 = *(v185 + 8 * v200) + 2 * ((*(v5 + 3456) * ((v135 >> *(v5 + 3468)) - 1)) << 7);
                  }

                  if (v131 == 13)
                  {
                    v131 = 0;
                  }

                  v137 = *v90;
                  v138 = v219[1];
                  v139 = sub_2775C69A8(v129 >> v15, v129 >> v15 > v206[3466] >> v15, v135 >> v209, v135 >> v209 > v206[3468] >> v209, v206[3467] >> v15, v206[3469] >> v209, v134 | v132, v130, v212, v136, v131, &v221, v137, v138, *(*(v5 + 8) + 394), v207, *(v5 + 4324));
                  v221 |= v194;
                  v140 = (4 * v138);
                  v90 = v219;
                  (*(v205 + 8 * v139))(v130, v212, v207, (4 * v137), v140, v221 | v193, (((v15 | (4 * *(v220 + 3448))) - 4 * (*(a1 + 24) & v191)) >> v15), (((v209 | (4 * *(v220 + 3452))) - 4 * (*(a1 + 28) & v216)) >> v209), *(v220 + 4324));
                  v5 = v220;
                  v122 = v192;
                  v124 = v218;
                }

                if (!a4[6])
                {
                  LODWORD(v224) = 0;
                  v142 = *(a1 + 258564);
                  if (v142)
                  {
                    v143 = &v199[6 * (v142 & 1)];
                    v145 = *(v143 + 1);
                    v144 = *(v143 + 2);
                    v146 = *v145;
                    *(v143 + 1) = v145 + 1;
                    v141 = *v90;
                    *(v143 + 2) = v144 + ((v90[1] * *v90) << 6);
                    v147 = (v146 >> 5);
                    LODWORD(v224) = v146 & 0x1F;
                    if ((v147 & 0x80000000) != 0)
                    {
                      goto LABEL_257;
                    }

LABEL_256:
                    (*(v198 + 136 * a4[7] + 8 * v224))(v130, v212, v144, v147, *(v5 + 4324));
                    v124 = v218;
                    v5 = v220;
                    goto LABEL_257;
                  }

                  LOBYTE(v223) = 0;
                  v149 = v90;
                  v150 = v123 + v203;
                  v151 = sub_2775D27CC(a1, (*(a1 + 656) + 32 * v124 + v150 + 64), (v211 + v215), a4[7], a2, a4, 1, v200, v204, &v224, &v223);
                  v5 = v220;
                  v147 = v151;
                  v152 = v149[1];
                  if (v152 >= (*(v220 + 3452) + v209 - *(a1 + 28)) >> v209)
                  {
                    v152 = (*(v220 + 3452) + v209 - *(a1 + 28)) >> v209;
                  }

                  v153 = v223;
                  if (v152 > 3)
                  {
                    if (v152 != 4)
                    {
                      v124 = v218;
                      if (v152 == 8)
                      {
                        *(v211 + v215) = 0x101010101010101 * v223;
                      }

                      else
                      {
                        if (v152 == 16)
                        {
                          *(v211 + v215) = 0x101010101010101 * v223;
                          *(v211 + v184) = 0x101010101010101 * v153;
                          goto LABEL_240;
                        }

LABEL_239:
                        memset((v211 + v215), v223, v152);
                        v124 = v218;
                        v5 = v220;
                      }

                      goto LABEL_240;
                    }

                    *(v211 + v215) = 16843009 * v223;
LABEL_238:
                    v124 = v218;
                    goto LABEL_240;
                  }

                  if (v152 == 1)
                  {
                    *(v211 + v215) = v223;
                    goto LABEL_238;
                  }

                  v124 = v218;
                  if (v152 != 2)
                  {
                    goto LABEL_239;
                  }

                  *(v211 + v215) = v223 | (v223 << 8);
LABEL_240:
                  v141 = *v219;
                  v155 = (*(v5 + 3448) + v208 - *(a1 + 24)) >> v208;
                  if (v141 < v155)
                  {
                    v155 = *v219;
                  }

                  if (v155 <= 3)
                  {
                    if (v155 == 1)
                    {
                      *(*(a1 + 656) + 32 * v124 + v150 + 64) = v153;
                    }

                    else
                    {
                      if (v155 != 2)
                      {
                        goto LABEL_254;
                      }

                      *(*(a1 + 656) + 32 * v124 + v150 + 64) = v153 | (v153 << 8);
                    }
                  }

                  else
                  {
                    switch(v155)
                    {
                      case 4:
                        *(*(a1 + 656) + 32 * v124 + v150 + 64) = 16843009 * v153;
                        break;
                      case 8:
                        v156 = 0x101010101010101 * v153;
                        v157 = *(a1 + 656) + 32 * v124 + v150;
LABEL_252:
                        *(v157 + 64) = v156;
                        break;
                      case 16:
                        v156 = 0x101010101010101 * v153;
                        *(*(a1 + 656) + 32 * v124 + v150 + 64) = 0x101010101010101 * v153;
                        v157 = *(a1 + 656) + 32 * v124 + (v150 + 8);
                        goto LABEL_252;
                      default:
LABEL_254:
                        memset((*(a1 + 656) + 32 * v124 + v150 + 64), v153, v155);
                        v124 = v218;
                        v5 = v220;
                        break;
                    }
                  }

                  v144 = a1 + 1024;
                  v15 = v208;
                  v90 = v219;
                  if ((v147 & 0x80000000) != 0)
                  {
                    goto LABEL_257;
                  }

                  goto LABEL_256;
                }

                if (*(a1 + 258564))
                {
                  v141 = *v90;
                }

                else
                {
                  v148 = v90[1];
                  if (v148 <= 3)
                  {
                    if (v148 == 1)
                    {
                      *(v211 + v215) = 64;
                    }

                    else if (v148 == 2)
                    {
                      *(v211 + v215) = 16448;
                    }
                  }

                  else
                  {
                    switch(v148)
                    {
                      case 4u:
                        *(v211 + v215) = 1077952576;
                        break;
                      case 8u:
                        *(v211 + v215) = 0x4040404040404040;
                        break;
                      case 0x10u:
                        *(v211 + v215) = 0x4040404040404040;
                        *(v211 + v184) = 0x4040404040404040;
                        break;
                    }
                  }

                  v141 = *v90;
                  if (v141 <= 3)
                  {
                    if (v141 == 1)
                    {
                      *(*(a1 + 656) + 32 * v124 + v123 + v203 + 64) = 64;
                    }

                    else if (v141 == 2)
                    {
                      *(*(a1 + 656) + 32 * v124 + v123 + v203 + 64) = 16448;
                    }
                  }

                  else
                  {
                    switch(v141)
                    {
                      case 4u:
                        *(*(a1 + 656) + 32 * v124 + v123 + v203 + 64) = 1077952576;
                        break;
                      case 8u:
                        *(*(a1 + 656) + 32 * v124 + v123 + v203 + 64) = 0x4040404040404040;
                        break;
                      case 0x10u:
                        v154 = v123 + v203;
                        *(*(a1 + 656) + 32 * v124 + v154 + 64) = 0x4040404040404040;
                        *(*(a1 + 656) + 32 * v124 + (v154 + 8) + 64) = 0x4040404040404040;
                        break;
                    }
                  }
                }

LABEL_257:
                v130 += 8 * v141;
                v123 += v141;
                v129 = (v141 << v15) + *(a1 + 24);
                *(a1 + 24) = v129;
                if (v123 < v122)
                {
                  continue;
                }

                break;
              }

              v125 = *(a1 + 28);
              v26 = v187;
LABEL_259:
              v126 = v129 - (v123 << v15);
              *(a1 + 24) = v126;
              v158 = v90[1];
              v127 = v209;
              v125 += v158 << v209;
              *(a1 + 28) = v125;
              v197 += v158;
              v123 = v202;
              if (v197 < v190)
              {
                continue;
              }

              break;
            }

LABEL_262:
            v6 = v125 - (v197 << v127);
            *(a1 + 28) = v6;
            if (!v124)
            {
              continue;
            }

            break;
          }

LABEL_263:
          v188 += 16;
          v31 = v173;
          result = v168;
          LOBYTE(v17) = v209;
          v25 = v183;
          v32 = v172;
          if (v174 >= v173)
          {
            goto LABEL_264;
          }

          goto LABEL_36;
        }

        goto LABEL_60;
      }
    }

    LODWORD(v224) = 0;
    v66 = *(a1 + 258564);
    if (v66)
    {
      v67 = &v199[6 * (v66 & 1)];
      v69 = *(v67 + 1);
      v68 = *(v67 + 2);
      v70 = *v69;
      *(v67 + 1) = v69 + 1;
      v65 = *v26;
      if (v65 >= 8)
      {
        v71 = 8;
      }

      else
      {
        v71 = *v26;
      }

      v72 = v26[1];
      if (v72 >= 8)
      {
        v72 = 8;
      }

      *(v67 + 2) = v68 + ((v72 * v71) << 6);
      LODWORD(v224) = v70 & 0x1F;
      if (v70 >> 5 < 0)
      {
        goto LABEL_82;
      }

LABEL_81:
      (*(v198 + 136 * a4[10] + 8 * v224))(v54, *(v5 + 2144));
      v5 = v220;
LABEL_82:
      v26 = v187;
      goto LABEL_83;
    }

    LOBYTE(v223) = 0;
    v77 = v56 + v183;
    v78 = sub_2775D27CC(a1, (*(a1 + 656) + v77 + 32), (v186 + v217), a4[10], a2, a4, 1, 0, v204, &v224, &v223);
    v5 = v220;
    v79 = v26;
    v80 = v78;
    v81 = v79[1];
    if (v81 >= *(v220 + 3452) - *(a1 + 28))
    {
      v81 = *(v220 + 3452) - *(a1 + 28);
    }

    v82 = v223;
    if (v81 <= 3)
    {
      if (v81 == 1)
      {
        *(v186 + v217) = v223;
        goto LABEL_123;
      }

      if (v81 == 2)
      {
        *(v186 + v217) = v223 | (v223 << 8);
        goto LABEL_123;
      }
    }

    else
    {
      switch(v81)
      {
        case 4:
          *(v186 + v217) = 16843009 * v223;
          goto LABEL_123;
        case 8:
          v83 = 0x101010101010101 * v223;
          v84 = a1 + 64;
          v85 = v217;
          goto LABEL_120;
        case 16:
          v83 = 0x101010101010101 * v223;
          v84 = a1 + 64;
          *(v186 + v217) = v83;
          v85 = v217 + 8;
LABEL_120:
          *(v84 + v85) = v83;
          goto LABEL_123;
      }
    }

    memset((v186 + v217), v223, v81);
    v5 = v220;
LABEL_123:
    v65 = *v187;
    v87 = *(v5 + 3448) - *(a1 + 24);
    if (v65 < v87)
    {
      v87 = *v187;
    }

    if (v87 <= 3)
    {
      if (v87 == 1)
      {
        *(*(a1 + 656) + v77 + 32) = v82;
        goto LABEL_137;
      }

      if (v87 == 2)
      {
        *(*(a1 + 656) + v77 + 32) = v82 | (v82 << 8);
        goto LABEL_137;
      }
    }

    else
    {
      switch(v87)
      {
        case 4:
          *(*(a1 + 656) + v77 + 32) = 16843009 * v82;
          goto LABEL_137;
        case 8:
          *(*(a1 + 656) + v77 + 32) = 0x101010101010101 * v82;
          goto LABEL_137;
        case 16:
          *(*(a1 + 656) + v77 + 32) = 0x101010101010101 * v82;
          *(*(a1 + 656) + v77 + 40) = 0x101010101010101 * v82;
          goto LABEL_137;
      }
    }

    memset((*(a1 + 656) + v77 + 32), v82, v87);
    v5 = v220;
LABEL_137:
    v15 = v208;
    if (v80 < 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  return result;
}

uint64_t sub_2775D54C4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = v5;
  v229 = v5 & 0x1F;
  v8 = v6;
  v228 = v6 & 0x1F;
  v9 = *(v4 + 2168);
  v246 = v9 == 1;
  v10 = v9 != 3;
  v11 = &byte_277601B40[4 * a2];
  v12 = *v11;
  v256 = v11;
  v13 = v11[1];
  v14 = *(v4 + 3448) - v5;
  if (v12 < v14)
  {
    v14 = *v11;
  }

  v221 = v14;
  v264 = *(a1 + 8);
  v15 = *(v4 + 3452) - v6;
  if (v13 < v15)
  {
    v15 = v11[1];
  }

  v205 = v15;
  if (!v9 || (v12 <= v10 ? (v16 = (v7 & 1) == 0) : (v16 = 0), v16))
  {
    v17 = 0;
  }

  else if (v13 <= v246)
  {
    v17 = v6 & 1;
  }

  else
  {
    v17 = 1;
  }

  v237 = *(a1 + 16);
  v247 = *(v4 + 3280);
  v239 = v229 >> v10;
  v227 = v228 >> v246;
  v263 = (a1 + 258048);
  v18 = 3 - v9;
  if (!v9)
  {
    v18 = 0;
  }

  v238 = (v13 + v246) >> v246;
  v242 = (v12 + v10) >> v10;
  v220 = v4 + 2120;
  v19 = *(v4 + 2144);
  v20 = *(v4 + 2120) + 8 * (v7 + (v19 >> 1) * v6);
  v265 = v9 != 3;
  v218 = 4 * ((*(v4 + 2152) >> 1) * (v6 >> v246) + (v7 >> v10));
  v21 = *(v4 + 24);
  v212 = v17;
  v214 = *v11;
  v209 = v11[1];
  v231 = *(v4 + 2168);
  if (*(v21 + 232))
  {
    v249 = v18;
    v26 = a3;
    if (*(a3 + 20))
    {
      v27 = 0;
      v28 = a3 + 8;
      v29 = *(a3 + 27);
      v30 = a1 + 8256;
      v31 = v4 + 32;
      v32 = a3 + 24;
      v258 = v4 + 3056;
      v252 = 4 * v12;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *(v32 + v27);
        v36 = v31 + 296 * v35;
        if (*(a3 + 21) == 6 && *(v258 + v35))
        {
          sub_2775D76E0(a1, 0, v30 + (v27 << 15), v252, v256, 0, v36, *(v264 + 24) + 36 * v35 + 896);
        }

        else
        {
          LODWORD(v203) = 0;
          sub_2775D71F0(a1, 0, v30 + (v27 << 15), 0, v214, v209, *(a1 + 24), *(a1 + 28), v203, *(v28 + 4 * v27), v36, v35, v29);
        }

        v33 = 0;
        v27 = 1;
      }

      while ((v34 & 1) != 0);
      v233 = 0;
      v235 = 0;
      v37 = *(a3 + 20);
      if (v37 > 2)
      {
        v22 = v264;
        if (v37 == 3)
        {
          v235 = (a1 + 73792);
          (*(v247 + 8 * v249 + 600))(v20, *(v264 + 2144), v30 + (*(a3 + 17) << 15), v30 + ((*(a3 + 17) == 0) << 15), v252, (4 * v209));
          v22 = v264;
          goto LABEL_57;
        }

        if (v37 == 4)
        {
          v44 = 4 * v209;
          (*(v247 + 592))(v20, *(v264 + 2144), v30 + (*(a3 + 17) << 15), v30 + ((*(a3 + 17) == 0) << 15), v252, (4 * v209), &unk_280B79480 + 8 * *(&unk_280B79480 + 36 * a2 + *(a3 + 16) - 252), *(v264 + 4324));
          v22 = v264;
          if (!v212)
          {
            goto LABEL_149;
          }

          v233 = 0;
          v235 = &unk_280B79480 + 8 * *(&unk_280B79480 + 396 * v249 + 36 * a2 + 16 * *(a3 + 17) + *(a3 + 16) - 252);
LABEL_60:
          if (v242 >= v238)
          {
            v48 = v238;
          }

          else
          {
            v48 = v242;
          }

          v254 = v252 >> v265;
          v244 = v44 >> v246;
          v49 = 1;
          v50 = 1;
          while (1)
          {
            v51 = 0;
            v250 = v49;
            v52 = 1;
            do
            {
              v53 = v52;
              v54 = *(v32 + v51);
              v55 = v31 + 296 * v54;
              v56 = *(a3 + 21) == 6 && v48 >= 2;
              if (v56 && *(v258 + v54))
              {
                sub_2775D76E0(a1, 0, v30 + (v51 << 15), v254, v256, v50, v55, *(v264 + 24) + 36 * v54 + 896);
              }

              else
              {
                LODWORD(v203) = v50;
                sub_2775D71F0(a1, 0, v30 + (v51 << 15), 0, v214, v209, *(a1 + 24), *(a1 + 28), v203, *(v28 + 4 * v51), v55, v54, v29);
              }

              v52 = 0;
              v51 = 1;
            }

            while ((v53 & 1) != 0);
            v57 = *(v220 + 8 * v50) + 2 * v218;
            v58 = *(a3 + 20);
            if ((v58 - 3) < 2)
            {
              (*(v247 + 592))(v57, *(v264 + 2152), v30 + (*(a3 + 17) << 15), v30 + ((*(a3 + 17) == 0) << 15), v254, v244, v235, *(v264 + 4324));
              v22 = v264;
            }

            else
            {
              v22 = v264;
              if (v58 != 1)
              {
                v59 = v250;
                if (v58 == 2)
                {
                  (*(v247 + 576))(v57, *(v264 + 2152), v30, a1 + 41024, v254, v244, *(v264 + 4324));
                  v22 = v264;
                }

                goto LABEL_81;
              }

              (*(v247 + 584))(v57, *(v264 + 2152), v30, a1 + 41024, v254, v244, v233, *(v264 + 4324));
              v22 = v264;
            }

            v59 = v250;
LABEL_81:
            v49 = 0;
            v50 = 2;
            if ((v59 & 1) == 0)
            {
              goto LABEL_149;
            }
          }
        }
      }

      else
      {
        v22 = v264;
        if (v37 == 1)
        {
          v233 = *(v264 - *(a3 + 24) + 8 * *(a3 + 24) + *(a3 + 25) + 4272);
          (*(v247 + 584))(v20, *(v264 + 2144), v30, a1 + 41024, v252, (4 * v209));
          v22 = v264;
          v235 = 0;
        }

        else if (v37 == 2)
        {
          (*(v247 + 576))(v20, *(v264 + 2144), v30, a1 + 41024, v252, (4 * v209), *(v264 + 4324));
          v22 = v264;
          v235 = 0;
LABEL_57:
          v233 = 0;
        }
      }

      if (!v212)
      {
        goto LABEL_149;
      }

      v44 = 4 * v209;
      goto LABEL_60;
    }

    v38 = v4 + 32;
    v39 = *(a3 + 24);
    v40 = v4 + 32 + 296 * v39;
    v41 = *(a3 + 27);
    if (v12 >= v13)
    {
      v42 = v11[1];
    }

    else
    {
      v42 = *v11;
    }

    if (v42 >= 2)
    {
      if (*(a3 + 21) == 2 && *(v4 + v39 + 3056))
      {
        if (*(a3 + 22) != 2)
        {
          v43 = v21 + 36 * v39 + 896;
LABEL_47:
          sub_2775D76E0(a1, v20, 0, v19, v256, 0, v40, v43);
          goto LABEL_50;
        }

LABEL_46:
        v43 = a1 + 258496;
        goto LABEL_47;
      }

      v26 = a3;
      if (*(a3 + 22) == 2 && *(a1 + 258496) > 1u)
      {
        goto LABEL_46;
      }
    }

    LODWORD(v203) = 0;
    sub_2775D71F0(a1, v20, 0, v19, v12, v13, v7, v8, v203, *(v26 + 8), v40, v39, v41);
    if (*(v26 + 22) == 1)
    {
      sub_2775D7A44(a1, v20, *(v264 + 2144), v256, 0, v229, v228, v221, v205);
    }

LABEL_50:
    v253 = v41;
    v22 = v264;
    v259 = v40;
    if (*(a3 + 28))
    {
      v45 = *(a3 + 18);
      if (v45 == 3)
      {
        v45 = 9;
      }

      v268[0] = 0;
      v46 = *(a1 + 28);
      if (((*(v264 + 3472) - 1) & v46) != 0)
      {
        v47 = 0;
      }

      else
      {
        v47 = *(v264 + 3408) + 2 * ((*(v264 + 3456) * ((v46 >> *(v264 + 3468)) - 1)) << 7);
      }

      v60 = sub_2775C69A8(*(a1 + 24), *(a1 + 24) > v237[3466], v46, v46 > v237[3468], v237[3467], v237[3469], 0, v20, *(v264 + 2144), v47, v45, v268, v12, v209, 0, (a1 + 25792), *(v264 + 4324));
      v61 = (4 * v12);
      v62 = 8 * v12;
      v63 = (4 * v209);
      (*(v247 + 8 * v60 + 64))(a1 + 17536, v62, a1 + 25792, v61, v63, 0, 0, 0, *(v264 + 4324));
      v64 = a2 - 7;
      if (*(a3 + 28) == 1)
      {
        v65 = &unk_280B79480 + 72 * v64 + 2 * *(a3 + 18) + 64;
      }

      else
      {
        v65 = &unk_280B79480 + 72 * v64 + 2 * *(a3 + 16);
      }

      (*(v247 + 624))(v20, *(v264 + 2144), a1 + 17536, v61, v63, &unk_280B79480 + 8 * *v65);
      v22 = v264;
    }

    if (!v17)
    {
      goto LABEL_148;
    }

    if (v214 != v265 && v209 != v246)
    {
      goto LABEL_91;
    }

    v75 = (a1 + 8 * (*(a1 + 28) & 0x1F) + 712);
    if (v214 == 1)
    {
      v76 = *(a1 + 24);
      v77 = *(*v75 + 12 * v76 - 4);
      if (v209 == v246)
      {
        v78 = *(a1 + 8 * (*(a1 + 28) & 0x1F) + 704);
        if (*(v78 + 12 * v76 - 4) >= 1 && *(v78 + 12 * v76 + 8) >= 1 && v77 >= 1)
        {
          v79 = 1;
          v80 = 1;
          v81 = a1;
          do
          {
            v82 = v79;
            v83 = *(v81 + 24);
            v84 = *(v81 + 28) - 1;
            if (v263[129] == 2)
            {
              v85 = *(*(v22 + 4360) + 32 * *(v22 + 3432) * v84 + 32 * v83 - 5);
            }

            else
            {
              v85 = v263[128];
            }

            v86 = v83 - 1;
            v87 = *(v75 - 1) + 12 * (v83 - 1);
            LODWORD(v203) = v80;
            v81 = a1;
            sub_2775D71F0(a1, *(v220 + 8 * v80) + 2 * v218, 0, *(v22 + 2152), 1, v246, v86, v84, v203, *v87, v38 + 296 * (*(v87 + 8) - 1), *(v87 + 8) - 1, v85);
            v22 = v264;
            v79 = 0;
            v80 = 2;
          }

          while ((v82 & 1) != 0);
          v88 = *(v264 + 2152);
          goto LABEL_135;
        }
      }

      else if (v77 >= 1)
      {
        v88 = 0;
LABEL_135:
        v102 = a1;
        v103 = byte_2775F12E8[4 * *(v102 + v228 + 416) + *(v102 + v228 + 384)];
        v104 = 1;
        v105 = 1;
        do
        {
          v106 = v104;
          v108 = *(v102 + 24);
          v107 = *(v102 + 28);
          v109 = v103;
          if (v263[129] == 2)
          {
            v109 = *(*(v22 + 4360) + 32 * *(v22 + 3432) * v107 + 32 * v108 - 5);
          }

          LODWORD(v203) = v105;
          v102 = a1;
          sub_2775D71F0(a1, *(v220 + 8 * v105) + 2 * v218 + 2 * v88, 0, *(v22 + 2152), 1, v209, v108 - 1, v107, v203, *(*v75 + 12 * (v108 - 1)), v38 + 296 * (*(*v75 + 12 * (v108 - 1) + 8) - 1), *(*v75 + 12 * (v108 - 1) + 8) - 1, v109);
          v22 = v264;
          v104 = 0;
          v105 = 2;
        }

        while ((v106 & 1) != 0);
        v89 = 2;
        if (v209 != v246)
        {
          goto LABEL_146;
        }

        goto LABEL_140;
      }
    }

    else
    {
      if (v209 != v246)
      {
        v89 = 0;
        v88 = 0;
LABEL_146:
        v119 = 1;
        v120 = 1;
        do
        {
          v121 = v119;
          LODWORD(v203) = v120;
          sub_2775D71F0(a1, *(v220 + 8 * v120) + 2 * v218 + 2 * v89 + 2 * v88, 0, *(v22 + 2152), v214, v209, *(a1 + 24), *(a1 + 28), v203, *(a3 + 8), v259, *(a3 + 24), v253);
          v22 = v264;
          v119 = 0;
          v120 = 2;
        }

        while ((v121 & 1) != 0);
LABEL_148:
        v263[128] = v253;
        goto LABEL_149;
      }

      if (*(*(a1 + 8 * (*(a1 + 28) & 0x1F) + 704) + 12 * *(a1 + 24) + 8) > 0)
      {
        v89 = 0;
LABEL_140:
        v110 = a1;
        v111 = byte_2775F12E8[4 * *(*(v110 + 656) + v229 + 384) + *(*(v110 + 656) + v229 + 352)];
        v112 = 1;
        v113 = 1;
        do
        {
          v114 = v112;
          v115 = *(v110 + 24);
          v116 = *(v110 + 28) - 1;
          v117 = v111;
          if (v263[129] == 2)
          {
            v117 = *(*(v264 + 4360) + 32 * *(v264 + 3432) * v116 + 32 * v115 + 27);
          }

          v118 = *(v75 - 1) + 12 * v115;
          LODWORD(v203) = v113;
          v110 = a1;
          sub_2775D71F0(a1, *(v220 + 8 * v113) + 2 * v218 + 2 * v89, 0, *(v264 + 2152), v214, v246, v115, v116, v203, *v118, v38 + 296 * (*(v118 + 8) - 1), *(v118 + 8) - 1, v117);
          v112 = 0;
          v113 = 2;
        }

        while ((v114 & 1) != 0);
        v22 = v264;
        v88 = *(v264 + 2152);
        goto LABEL_146;
      }
    }

LABEL_91:
    v66 = v242;
    if (v242 >= v238)
    {
      v66 = v238;
    }

    if (v66 >= 2 && (*(a3 + 21) == 2 && *(v22 + *(a3 + 24) + 3056) || *(a3 + 22) == 2 && v263[112] >= 2u))
    {
      v67 = 1;
      v68 = 1;
      do
      {
        v69 = v67;
        v70 = a1 + 258496;
        if (*(a3 + 22) != 2)
        {
          v70 = *(v22 + 24) + 36 * *(a3 + 24) + 896;
        }

        sub_2775D76E0(a1, *(v220 + 8 * v68) + 2 * v218, 0, *(v22 + 2152), v256, v68, v259, v70);
        v22 = v264;
        v67 = 0;
        v68 = 2;
      }

      while ((v69 & 1) != 0);
    }

    else
    {
      v71 = 1;
      v72 = 1;
      do
      {
        v73 = v71;
        LODWORD(v203) = v72;
        sub_2775D71F0(a1, *(v220 + 8 * v72) + 2 * v218, 0, *(v22 + 2152), v214 << (v214 == v265), v209 << (v209 == v246), *(a1 + 24) & ~v265, *(a1 + 28) & ~v246, v203, *(a3 + 8), v259, *(a3 + 24), v41);
        if (*(a3 + 22) == 1)
        {
          sub_2775D7A44(a1, *(v220 + 8 * v72) + 2 * v218, *(v264 + 2152), v256, v72, v229, v228, v221, v205);
        }

        v71 = 0;
        v72 = 2;
        v22 = v264;
      }

      while ((v73 & 1) != 0);
    }

    if (*(a3 + 28))
    {
      if (*(a3 + 28) == 1)
      {
        v74 = &unk_280B79480 + 792 * v249 + 72 * a2 + 2 * *(a3 + 18) - 440;
      }

      else
      {
        v74 = &unk_280B79480 + 792 * v249 + 72 * a2 + 2 * *(a3 + 16) - 504;
      }

      v90 = a1;
      v91 = (a1 + 25792);
      v251 = v22 + 3408;
      v92 = (4 * v242);
      v260 = &unk_280B79480 + 8 * *v74;
      v93 = (4 * v238);
      v94 = 1;
      v95 = 1;
      do
      {
        v96 = v94;
        v97 = *(a3 + 18);
        if (v97 == 3)
        {
          v97 = 9;
        }

        v268[0] = 0;
        v98 = *(v90 + 28);
        if (((*(v22 + 3472) - 1) & v98) != 0)
        {
          v99 = 0;
        }

        else
        {
          v99 = *(v251 + 8 * v95) + 2 * ((*(v22 + 3456) * ((v98 >> *(v22 + 3468)) - 1)) << 7);
        }

        v100 = *(v220 + 8 * v95) + 2 * v218;
        v90 = a1;
        v101 = sub_2775C69A8(*(a1 + 24) >> v265, *(a1 + 24) >> v265 > v237[3466] >> v265, v98 >> v246, v98 >> v246 > v237[3468] >> v246, v237[3467] >> v265, v237[3469] >> v246, 0, v100, *(v22 + 2152), v99, v97, v268, v242, v238, 0, v91, *(v22 + 4324));
        (*(v247 + 64 + 8 * v101))(a1 + 17536, (8 * v242), v91, v92, v93, 0, 0, 0, *(v264 + 4324));
        (*(v247 + 624))(v100, *(v264 + 2152), a1 + 17536, v92, v93, v260);
        v22 = v264;
        v94 = 0;
        v95 = 2;
      }

      while ((v96 & 1) != 0);
    }

    goto LABEL_148;
  }

  LODWORD(v203) = 0;
  sub_2775D71F0(a1, v20, 0, v19, v12, v13, v7, v8, v203, *(a3 + 8), v4 + 2376, 0, 9u);
  v22 = v264;
  if (v17)
  {
    v23 = 0;
    v24 = v12 << (v12 == v265);
    do
    {
      v25 = *(v264 + 2128 + 8 * v23++) + 2 * v218;
      LODWORD(v204) = v23;
      sub_2775D71F0(a1, v25, 0, *(v22 + 2152), v24, v209 << (v209 == v246), *(a1 + 24) & ~v265, *(a1 + 28) & ~v246, v204, *(a3 + 8), v264 + 2376, 0, 9u);
      v22 = v264;
    }

    while (v23 != 2);
  }

LABEL_149:
  if (!*(a3 + 6))
  {
    v124 = *(a3 + 7);
    v125 = *(a3 + 26);
    v267[0] = *(a3 + 29);
    v267[1] = *(a3 + 30);
    v126 = v214;
    LOBYTE(v127) = v265;
    if (!v209)
    {
      return 0;
    }

    v128 = 0;
    v129 = &unk_277601B98 + 8 * v124;
    v130 = &unk_277601B98 + 8 * v125;
    v131 = v209;
    v216 = v231 == 1;
    v248 = v247 + 680;
    v207 = v130;
    while (!v126)
    {
      v184 = v128 + 16;
LABEL_229:
      v128 = v184;
      if (v184 >= v131)
      {
        return 0;
      }
    }

    v132 = 0;
    v208 = v128 != 0;
    v213 = 2 * v128;
    v133 = v128 + 16;
    if (v205 >= v128 + 16)
    {
      v134 = v128 + 16;
    }

    else
    {
      v134 = v205;
    }

    v219 = v134;
    v217 = 4 * v128;
    v206 = v128 + 16;
    if ((v205 + v246) >> v246 >= (v133 >> v246))
    {
      v135 = v133 >> v246;
    }

    else
    {
      v135 = (v205 + v246) >> v246;
    }

    v136 = *(a1 + 28);
    v225 = v128;
    v224 = v128 >> v246;
    v232 = v135;
    while (1)
    {
      v137 = *(v22 + 2144);
      v138 = v20 + 2 * v213 * v137;
      v139 = v136 + v128;
      v140 = a1;
      *(a1 + 28) = v136 + v128;
      v234 = v132;
      if (v128 < v205)
      {
        v261 = v132 != 0;
        if (v221 >= (v132 + 16))
        {
          v141 = v132 + 16;
        }

        else
        {
          v141 = v221;
        }

        v142 = *(a1 + 24);
        v143 = v208;
        do
        {
          v144 = v142 + v132;
          *(a1 + 24) = v144;
          v145 = v132;
          if (v221 > v132)
          {
            v222 = v128;
            v146 = v261;
            v145 = v132;
            do
            {
              sub_2775D1DD0(a1, a2, a3, *(a3 + 26), 0, v267, v146, v143, v138 + 2 * (4 * v145));
              v147 = *v130;
              v144 = *(a1 + 24) + v147;
              *(a1 + 24) = v144;
              v145 += v147;
              ++v146;
            }

            while (v145 < v141);
            v22 = v264;
            LOBYTE(v127) = v265;
            v137 = *(v264 + 2144);
            v139 = *(a1 + 28);
            v132 = v234;
            LODWORD(v128) = v222;
          }

          v148 = v130[1];
          v138 += 4 * v137 * v148;
          v142 = v144 - v145;
          v139 += v148;
          *(a1 + 24) = v142;
          *(a1 + 28) = v139;
          LODWORD(v128) = v128 + v148;
          ++v143;
        }

        while (v128 < v219);
      }

      v215 = v138;
      v136 = v139 - v128;
      *(a1 + 28) = v139 - v128;
      v149 = v224;
      v150 = v232;
      if (v212)
      {
        break;
      }

      v183 = v132 + 16;
      v126 = v214;
LABEL_226:
      v20 = v215 - 8 * v128 * (v137 >> 1);
      v132 = v183;
      v128 = v225;
      if (v183 >= v126)
      {
        v131 = v209;
        v184 = v206;
        goto LABEL_229;
      }
    }

    v211 = v137;
    v223 = v128;
    v151 = 0;
    v152 = v132 >> v127;
    v210 = v132 + 16;
    if ((v221 + v265) >> v265 >= ((v132 + 16) >> v127))
    {
      v153 = (v132 + 16) >> v127;
    }

    else
    {
      v153 = (v221 + v265) >> v265;
    }

    v154 = *(v22 + 2152);
    v155 = 1;
    v156 = a3;
    v230 = v132 >> v127;
    while (1)
    {
      v226 = v155;
      v243 = v151 + 1;
      v157 = *(v220 + 8 * (v151 + 1));
      v158 = v136 + v225;
      *(v140 + 28) = v158;
      if (v149 < v150)
      {
        break;
      }

LABEL_223:
      v155 = 0;
      v136 = v158 - (v149 << v246);
      *(v140 + 28) = v136;
      v151 = 1;
      v149 = v224;
      if ((v226 & 1) == 0)
      {
        v126 = v214;
        v130 = v207;
        LODWORD(v128) = v223;
        v137 = v211;
        v183 = v210;
        goto LABEL_226;
      }
    }

    v159 = v157 + 2 * v218 + 2 * ((v217 * (v154 >> 1)) >> v216);
    v160 = *(v140 + 24);
    v257 = a1 + 96 + 32 * v151;
    v262 = v151;
    while (1)
    {
      v161 = v160 + v132;
      *(v140 + 24) = v161;
      if (v152 < v153)
      {
        break;
      }

      v170 = v129[1];
      v163 = v152;
LABEL_222:
      v159 += 4 * v154 * v170;
      v160 = v161 - (v163 << v127);
      v158 += v170 << v246;
      *(v140 + 24) = v160;
      *(v140 + 28) = v158;
      v149 += v170;
      if (v149 >= v150)
      {
        goto LABEL_223;
      }
    }

    v245 = v229 | (32 * ((v149 << v246) + v228));
    v236 = v149;
    v162 = (v149 + v227);
    v163 = v152;
    while (1)
    {
      v164 = v263[129];
      if (!v164)
      {
        break;
      }

      v165 = &v237[6 * (v164 & 1) + 3474];
      v167 = *(v165 + 8);
      v166 = *(v165 + 16);
      v168 = *v167;
      *(v165 + 8) = v167 + 1;
      v169 = *v129;
      v170 = v129[1];
      *(v165 + 16) = v166 + ((v170 * *v129) << 6);
      v268[0] = v168 & 0x1F;
      if (((v168 >> 5) & 0x80000000) == 0)
      {
        goto LABEL_186;
      }

LABEL_187:
      v161 = (v169 << v127) + *(v140 + 24);
      *(v140 + 24) = v161;
      v163 += v169;
      if (v163 >= v153)
      {
        v22 = v264;
        v154 = *(v264 + 2152);
        v158 = *(v140 + 28);
        v150 = v232;
        v132 = v234;
        v152 = v230;
        v149 = v236;
        goto LABEL_222;
      }
    }

    v266 = 0;
    v268[0] = *(a1 + 9344 + v245 + (v163 << v127));
    v171 = v156;
    v172 = (v163 + v239);
    v173 = sub_2775D27CC(v140, (*(v140 + 656) + 32 * v262 + v172 + 64), (v257 + v162), *(v171 + 7), a2, v171, 0, v243, (a1 + 1024), v268, &v266);
    v170 = v129[1];
    v174 = v264;
    v175 = (*(v264 + 3452) + v246 - *(v140 + 28)) >> v246;
    if (v170 < v175)
    {
      v175 = v129[1];
    }

    v176 = v266;
    if (v175 <= 3)
    {
      if (v175 != 1)
      {
        v127 = v265;
        if (v175 == 2)
        {
          *(v257 + v162) = v266 | (v266 << 8);
          goto LABEL_204;
        }

LABEL_203:
        memset((v257 + v162), v266, v175);
        v174 = v264;
        v127 = v265;
LABEL_204:
        v169 = *v129;
        v177 = (*(v174 + 3448) + v127 - *(a1 + 24)) >> v127;
        if (v169 < v177)
        {
          v177 = *v129;
        }

        if (v177 <= 3)
        {
          if (v177 == 1)
          {
            *(*(a1 + 656) + 32 * v262 + v172 + 64) = v176;
            v140 = a1;
            goto LABEL_219;
          }

          if (v177 == 2)
          {
            v180 = v176 | (v176 << 8);
            v140 = a1;
            *(*(a1 + 656) + 32 * v262 + v172 + 64) = v180;
            goto LABEL_219;
          }
        }

        else
        {
          switch(v177)
          {
            case 4:
              v181 = 16843009 * v176;
              v140 = a1;
              *(*(a1 + 656) + 32 * v262 + v172 + 64) = v181;
              goto LABEL_219;
            case 8:
              v178 = 0x101010101010101 * v176;
              v140 = a1;
              v179 = *(a1 + 656) + 32 * v262 + v172;
              goto LABEL_216;
            case 16:
              v178 = 0x101010101010101 * v176;
              v140 = a1;
              *(*(a1 + 656) + 32 * v262 + v172 + 64) = v178;
              v179 = *(a1 + 656) + 32 * v262 + (v172 + 8);
LABEL_216:
              *(v179 + 64) = v178;
              goto LABEL_219;
          }
        }

        v182 = v176;
        v140 = a1;
        memset((*(a1 + 656) + 32 * v262 + v172 + 64), v182, v177);
        LOBYTE(v127) = v265;
LABEL_219:
        v156 = a3;
        if (v173 < 0)
        {
          goto LABEL_187;
        }

LABEL_186:
        (*(v248 + 136 * *(v156 + 7) + 8 * v268[0]))(v159 + 2 * (4 * v163), *(v264 + 2152));
        LOBYTE(v127) = v265;
        goto LABEL_187;
      }

      *(v257 + v162) = v266;
    }

    else
    {
      if (v175 != 4)
      {
        v127 = v265;
        if (v175 == 8)
        {
          *(v257 + v162) = 0x101010101010101 * v266;
          goto LABEL_204;
        }

        if (v175 == 16)
        {
          *(v257 + v162) = 0x101010101010101 * v266;
          *(v257 + (v162 + 8)) = 0x101010101010101 * v176;
          goto LABEL_204;
        }

        goto LABEL_203;
      }

      *(v257 + v162) = 16843009 * v266;
    }

    v127 = v265;
    goto LABEL_204;
  }

  if (v209 > 7)
  {
    v122 = a1;
    v123 = v214;
    switch(v209)
    {
      case 8:
        *(a1 + v228 + 64) = 0x4040404040404040;
        break;
      case 0x10:
        *&v186 = 0x4040404040404040;
        *(&v186 + 1) = 0x4040404040404040;
        *(a1 + v228 + 64) = v186;
        break;
      case 0x20:
        *&v185 = 0x4040404040404040;
        *(&v185 + 1) = 0x4040404040404040;
        *(a1 + 64 + v228) = v185;
        *(a1 + 64 + v228 + 16) = v185;
        break;
    }
  }

  else
  {
    v122 = a1;
    v123 = v214;
    switch(v209)
    {
      case 1:
        *(a1 + v228 + 64) = 64;
        break;
      case 2:
        *(a1 + v228 + 64) = 16448;
        break;
      case 4:
        *(a1 + v228 + 64) = 1077952576;
        break;
    }
  }

  if (v123 > 7)
  {
    switch(v123)
    {
      case 8:
        *(*(v122 + 656) + v229 + 32) = 0x4040404040404040;
        if (!v212)
        {
          return 0;
        }

        goto LABEL_256;
      case 16:
        *(*(v122 + 656) + v229 + 32) = 0x4040404040404040;
        *(*(v122 + 656) + v229 + 40) = 0x4040404040404040;
        if (!v212)
        {
          return 0;
        }

        goto LABEL_256;
      case 32:
        *(*(v122 + 656) + v229 + 32) = 0x4040404040404040;
        memset((*(v122 + 656) + v229 + 40), 64, 24);
        if (!v212)
        {
          return 0;
        }

        goto LABEL_256;
    }
  }

  else
  {
    switch(v123)
    {
      case 1:
        *(*(v122 + 656) + v229 + 32) = 64;
        if (!v212)
        {
          return 0;
        }

        goto LABEL_256;
      case 2:
        *(*(v122 + 656) + v229 + 32) = 16448;
        break;
      case 4:
        *(*(v122 + 656) + v229 + 32) = 1077952576;
        if (!v212)
        {
          return 0;
        }

        goto LABEL_256;
    }
  }

  if (!v212)
  {
    return 0;
  }

LABEL_256:
  if (v238 > 7)
  {
    v187 = a1;
    switch(v238)
    {
      case 8:
        v194 = a1 + v227;
        *(v194 + 96) = 0x4040404040404040;
        *(v194 + 128) = 0x4040404040404040;
        break;
      case 16:
        *&v196 = 0x4040404040404040;
        *(&v196 + 1) = 0x4040404040404040;
        v197 = a1 + v227;
        *(v197 + 96) = v196;
        *(v197 + 128) = v196;
        break;
      case 32:
        v189 = a1 + 96;
        *&v190 = 0x4040404040404040;
        *(&v190 + 1) = 0x4040404040404040;
        *(v189 + v227) = v190;
        v191 = v227 + 16;
        *(v189 + v191) = v190;
        v192 = a1 + 128;
        *(v192 + v227) = v190;
        *(v192 + v191) = v190;
        break;
    }
  }

  else
  {
    v187 = a1;
    switch(v238)
    {
      case 1:
        v193 = a1 + v227;
        *(v193 + 96) = 64;
        *(v193 + 128) = 64;
        break;
      case 2:
        v195 = a1 + v227;
        *(v195 + 96) = 16448;
        *(v195 + 128) = 16448;
        break;
      case 4:
        v188 = a1 + v227;
        *(v188 + 96) = 1077952576;
        *(v188 + 128) = 1077952576;
        break;
    }
  }

  if (v242 > 7)
  {
    switch(v242)
    {
      case 8:
        v200 = v239;
        *(*(v187 + 656) + v239 + 64) = 0x4040404040404040;
        break;
      case 16:
        *(*(v187 + 656) + v239 + 64) = 0x4040404040404040;
        v200 = v239 + 8;
        *(*(v187 + 656) + v200 + 64) = 0x4040404040404040;
        *(*(v187 + 656) + v239 + 96) = 0x4040404040404040;
        break;
      case 32:
        *(*(a1 + 656) + v239 + 64) = 0x4040404040404040;
        v198 = v239 + 8;
        *(*(a1 + 656) + v198 + 64) = 0x4040404040404040;
        v199 = v239 + 16;
        *(*(a1 + 656) + v199 + 64) = 0x4040404040404040;
        v200 = v239 + 24;
        *(*(a1 + 656) + v200 + 64) = 0x4040404040404040;
        *(*(a1 + 656) + v239 + 96) = 0x4040404040404040;
        *(*(a1 + 656) + v198 + 96) = 0x4040404040404040;
        *(*(a1 + 656) + v199 + 96) = 0x4040404040404040;
        v201 = *(a1 + 656);
LABEL_285:
        *(v201 + v200 + 96) = 0x4040404040404040;
        return 0;
      default:
        return 0;
    }

    v201 = *(v187 + 656);
    goto LABEL_285;
  }

  switch(v242)
  {
    case 1:
      *(*(v187 + 656) + v239 + 64) = 64;
      *(*(v187 + 656) + v239 + 96) = 64;
      break;
    case 2:
      *(*(v187 + 656) + v239 + 64) = 16448;
      *(*(v187 + 656) + v239 + 96) = 16448;
      break;
    case 4:
      *(*(a1 + 656) + v239 + 64) = 1077952576;
      *(*(a1 + 656) + v239 + 96) = 1077952576;
      break;
  }

  return 0;
}

uint64_t sub_2775D71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unint64_t a9, int a10, uint64_t a11, int a12, unsigned int a13)
{
  v13 = a4;
  v16 = *(a1 + 8);
  if (a9)
  {
    v17 = *(v16 + 2168);
    v18 = v17 == 1;
    v19 = v17 != 3;
    v20 = v18;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v19 = 0;
  }

  v21 = a13;
  v22 = 4u >> v19;
  v23 = 4u >> v18;
  v24 = a10 >> 16;
  v25 = v19 ^ 1;
  v26 = v20 ^ 1;
  v27 = *(a11 + 8 * (a9 != 0) + 40);
  v29 = *(a11 + 56);
  v28 = *(a11 + 60);
  if (v29 == *(v16 + 2160) && v28 == *(v16 + 2164))
  {
    v30 = (0xFu >> v25) & (a10 >> 16);
    if (v19)
    {
      v31 = 4;
    }

    else
    {
      v31 = 3;
    }

    v32 = (v24 >> v31) + v22 * a7;
    if (v20)
    {
      v33 = 4;
    }

    else
    {
      v33 = 3;
    }

    v34 = a10 >> v33;
    v35 = a11 + 16;
    if (*(a11 + 16) == *(v16 + 2120))
    {
      v36 = 4 * *(v16 + 3448);
      v37 = 4 * *(v16 + 3452);
    }

    else
    {
      v36 = v29 + v19;
      v37 = v28 + v18;
    }

    v71 = (0xFu >> v26) & a10;
    v72 = v34 + v23 * a8;
    v73 = v36 >> v19;
    v74 = v37 >> v18;
    if (v30)
    {
      v75 = 3;
    }

    else
    {
      v75 = 0;
    }

    if (v32 >= v75 && (v71 ? (v76 = 3) : (v76 = 0), v72 >= v76 && (v32 + v22 * a5 + 4 * (v30 != 0)) <= v73 && (v72 + v23 * a6 + 4 * (v71 != 0)) <= v74))
    {
      v91 = v23 * a6;
      v92 = v22 * a5;
      v89 = *(a11 + 8 * (a9 != 0) + 40);
      v77 = *(v35 + 8 * a9) + 2 * (v27 >> 1) * v72;
    }

    else
    {
      v77 = a1 + 90176;
      if (v30)
      {
        v78 = 7;
      }

      else
      {
        v78 = 0;
      }

      v92 = v22 * a5;
      v79 = v78 + v22 * a5;
      v80 = v23 * a6;
      v81 = v71 == 0;
      if (v71)
      {
        v82 = 7;
      }

      else
      {
        v82 = 0;
      }

      v91 = v80;
      v83 = (v82 + v80);
      if (v81)
      {
        v84 = 0;
      }

      else
      {
        v84 = -3;
      }

      if (v81)
      {
        v86 = 0;
      }

      else
      {
        v86 = 576;
      }

      v89 = 384;
      (*(*(v16 + 3280) + 664))(v79, v83, v73, v74, (v32 - v75), v84 + v72, a1 + 90176, 384, *(v35 + 8 * a9), *(a11 + 8 * (a9 != 0) + 40));
      v71 = (0xFu >> v26) & a10;
      v32 = v75 | v86;
      v13 = a4;
      v21 = a13;
    }

    v87 = *(v16 + 3280);
    v65 = v30 << v25;
    v51 = v71 << v26;
    v62 = v77 + 2 * v32;
    if (a2)
    {
      v64 = *(v87 + 8 * v21 + 256);
      LODWORD(a9) = *(v16 + 4324);
      v66 = a2;
      v67 = v13;
      v68 = v89;
      v69 = v92;
      v70 = v91;
LABEL_63:

      return v64(v66, v67, v62, v68, v69, v70, v65, v51, a9);
    }

    v64 = *(v87 + 8 * v21 + 416);
    v66 = a3;
    v67 = v77 + 2 * v32;
    v62 = v89;
    v68 = v92;
    v69 = v91;
    v70 = v30 << v25;
    v65 = v51;
    v51 = *(v16 + 4324);
  }

  else
  {
    v38 = (v24 << v25) + 16 * a7 * v22;
    v39 = (v16 + 16 * a12);
    v40 = 8 * v39[782] - 0x20000 + v39[782] * v38;
    v41 = v40 < 0;
    if (v40 < 0)
    {
      v40 = -v40;
    }

    v42 = (v40 + 128) >> 8;
    if (v41)
    {
      LODWORD(v42) = -v42;
    }

    v43 = v42 + 32;
    v44 = 8 * v39[784] - 0x20000 + v39[784] * ((a10 << v26) + 16 * a8 * v23);
    v45 = v44 < 0;
    if (v44 < 0)
    {
      v44 = -v44;
    }

    v46 = (v44 + 128) >> 8;
    if (v45)
    {
      LODWORD(v46) = -v46;
    }

    v47 = v46 + 32;
    v48 = v43 >> 10;
    v49 = ((v46 + 32) >> 10);
    v50 = v22 * a5;
    v51 = v39[783];
    v52 = (v43 + v51 * (v50 - 1)) >> 10;
    v53 = v23 * a6;
    v54 = v39[785];
    v55 = (v47 + v54 * (v53 - 1)) >> 10;
    v56 = (v29 + v19) >> v19;
    v57 = (v28 + v18) >> v18;
    if (v43 >> 10 >= 3 && v49 >= 3 && v52 + 5 <= v56 && v55 + 5 <= v57)
    {
      v62 = *(a11 + 8 * a9 + 16) + 2 * (v27 >> 1) * v49 + 2 * v48;
    }

    else
    {
      v61 = v39 + 782;
      v27 = 640;
      (*(*(v16 + 3280) + 664))((v52 - v48 + 8), v55 - v49 + 8, v56, v57, (v43 >> 10) - 3, v49 - 3, a1 + 90176, 640, *(a11 + 8 * a9 + 16), *(a11 + 8 * (a9 != 0) + 40));
      v62 = a1 + 92102;
      v51 = v61[1];
      v54 = v61[3];
      v13 = a4;
    }

    v63 = *(v16 + 3280);
    if (a2)
    {
      v64 = *(v63 + 8 * a13 + 336);
      a9 = __PAIR64__(v54, v51);
      v65 = v43 & 0x3FF;
      v51 = v47 & 0x3FF;
      v66 = a2;
      v67 = v13;
      v68 = v27;
      v69 = v50;
      v70 = v53;
      goto LABEL_63;
    }

    v64 = *(v63 + 8 * a13 + 496);
    LODWORD(a9) = v54;
    HIDWORD(a9) = *(v16 + 4324);
    v70 = v43 & 0x3FF;
    v65 = v47 & 0x3FF;
    v66 = a3;
    v67 = v62;
    v62 = v27;
    v68 = v50;
    v69 = v53;
  }

  return v64(v66, v67, v62, v68, v69, v70, v65, v51, a9);
}

uint64_t sub_2775D76E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 8);
  if (a6)
  {
    v11 = *(v10 + 2168);
    v34 = v11 == 1;
    v46 = v11 != 3;
  }

  else
  {
    v34 = 0;
    v46 = 0;
  }

  if (a5[1])
  {
    v12 = 0;
    v43 = *(v10 + 3280);
    v13 = *a5;
    v40 = a7 + 16;
    v41 = a7 + 40;
    v44 = (*(a7 + 56) + v46) >> v46;
    v42 = (*(a7 + 60) + v34) >> v34;
    v39 = result + 90374;
    v35 = 16 * a4;
    v36 = 8 * a4;
    v45 = result;
    v53 = *(result + 8);
    do
    {
      if (v13)
      {
        v14 = 0;
        v37 = v12;
        v15 = 4 * *(result + 28) + ((v12 | 4) << v34);
        v50 = *(a8 + 4) + v15 * *(a8 + 16);
        v49 = *(a8 + 8) + *(a8 + 24) * v15;
        v16 = a3;
        v38 = a2;
        do
        {
          v17 = 4 * *(result + 24) + ((v14 + 4) << v46);
          v18 = (v50 + v17 * *(a8 + 12)) >> v46;
          v19 = (v49 + *(a8 + 20) * v17) >> v34;
          v20 = *(a8 + 28);
          v21 = *(a8 + 30);
          v22 = v19 >> 16;
          v23 = *(a8 + 32);
          v24 = *(a8 + 34);
          v25 = *(v41 + 8 * (a6 != 0));
          if ((v18 >> 16) >= 7 && ((v18 >> 16) + 8) <= v44 && v22 >= 7 && ((v19 >> 16) + 8) <= v42)
          {
            v29 = *(v40 + 8 * a6) + 2 * ((v19 >> 16) - 4) * (v25 >> 1) + 2 * ((v18 >> 16) - 4);
          }

          else
          {
            (*(*(v10 + 3280) + 664))(15, 15, v44, v42, ((v18 >> 16 << 32) - 0x700000000) >> 32, ((v22 << 32) - 0x700000000) >> 32, result + 90176, 64, *(v40 + 8 * a6), v25);
            v10 = v53;
            v29 = v39;
            v25 = 64;
          }

          v30 = -7 * v21 - 4 * v20 + v18;
          v31 = (v19 & 0xFFFC) - 4 * (v24 + v23);
          v32 = *(v10 + 4324);
          if (a3)
          {
            (*(v43 + 656))(v16, a4, v29, v25, a8 + 28, v30 & 0xFFFFFFC0, v31 & 0xFFFFFFC0, v32);
          }

          else
          {
            (*(v43 + 648))(a2, a4, v29, v25, a8 + 28, v30 & 0xFFFFFFC0, v31 & 0xFFFFFFC0, v32);
          }

          v14 += 8;
          v13 = *a5;
          a2 += 16;
          v16 += 16;
          result = v45;
          v10 = v53;
        }

        while (v14 < (4u >> v46) * v13);
        a2 = v38;
        v12 = v37;
      }

      v33 = a3;
      if (!a2)
      {
        v33 = a3 + v35;
      }

      a3 = v33;
      if (a2)
      {
        a2 += v36;
      }

      else
      {
        a2 = 0;
      }

      v12 += 8;
    }

    while (v12 < (4u >> v34) * a5[1]);
  }

  return result;
}

uint64_t sub_2775D7A44(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6, int a7, uint64_t a8, int a9)
{
  v9 = a4;
  v10 = result;
  v11 = *(result + 24);
  v12 = *(result + 28);
  v13 = *(result + 8);
  v14 = result + 8 * (v12 & 0x1E) + 712;
  v61 = v13;
  if (a5)
  {
    v15 = *(v13 + 2168);
    v63 = 4u >> (v15 != 3);
    v16 = 4u >> (v15 == 1);
    v18 = (result + 16);
    v17 = *(result + 16);
    if (v12 <= *(v17 + 13872) || v63 * *a4 + v16 * a4[1] < 0x10)
    {
      v58 = v16;
      goto LABEL_28;
    }
  }

  else
  {
    v18 = (result + 16);
    v17 = *(result + 16);
    v16 = 4;
    v63 = 4;
    if (v12 <= *(v17 + 13872))
    {
      v58 = 4;
      goto LABEL_28;
    }
  }

  v58 = v16;
  if (a8 >= 1)
  {
    v52 = v18;
    v53 = a7;
    v19 = 0;
    v20 = 0;
    v56 = v13 + 32;
    v54 = a6 + 1;
    while (1)
    {
      v21 = v9[2] >= 4u ? 4 : v9[2];
      v11 = *(v10 + 24);
      if (v19 >= v21)
      {
        break;
      }

      v22 = v11 + v20;
      v23 = *(v14 - 8) + 12 * (v11 + v20);
      v24 = byte_277601B40[4 * *(v23 + 22)];
      if (v24 >= 0x10)
      {
        v24 = 16;
      }

      if (v24 <= 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = v24;
      }

      v26 = *(v23 + 20);
      v27 = __OFSUB__(v26, 1);
      v28 = v26 - 1;
      if (v28 < 0 == v27)
      {
        v57 = v19;
        if (v25 >= *v9)
        {
          v29 = *v9;
        }

        else
        {
          v29 = v25;
        }

        v30 = v9[1];
        if (v30 >= 0x10)
        {
          v30 = 16;
        }

        v31 = v30 >> 1;
        v32 = v63 * v29;
        v33 = v9;
        v34 = a8;
        v35 = *(v10 + 656) + v54 + v20;
        LODWORD(v51) = a5;
        sub_2775D71F0(v10, v10 + 8256, 0, (2 * v32), v29, (3 * (v30 >> 1) + 3) >> 2, v22, *(v10 + 28), v51, *(v23 + 12), v56 + 296 * v28, v28, byte_2775F12E8[4 * *(v35 + 384) + *(v35 + 352)]);
        result = (*(*(v61 + 3280) + 640))(a2 + 2 * v20 * v63, a3, v10 + 8256, v32, v58 * v31);
        a8 = v34;
        v9 = v33;
        v19 = v57 + 1;
      }

      v20 += v25;
      if (v20 >= a8)
      {
        v11 = *(v10 + 24);
        break;
      }
    }

    v17 = *v52;
    a7 = v53;
  }

LABEL_28:
  if (v11 > *(v17 + 13864) && a9 >= 1)
  {
    v37 = 0;
    v38 = 0;
    v39 = v14 + 8;
    v55 = a7 + 1;
    do
    {
      v40 = v9[3];
      if (v40 >= 4)
      {
        v40 = 4;
      }

      if (v38 >= v40)
      {
        break;
      }

      v41 = *(v10 + 24);
      v42 = *(v39 + 8 * v37) + 12 * v41;
      v43 = byte_277601B40[4 * *(v42 - 2) + 1];
      if (v43 >= 0x10)
      {
        v43 = 16;
      }

      if (v43 <= 2)
      {
        v44 = 2;
      }

      else
      {
        v44 = v43;
      }

      v45 = *(v42 - 4);
      v27 = __OFSUB__(v45, 1);
      v46 = v45 - 1;
      if (v46 < 0 == v27)
      {
        v47 = *v9;
        if (v47 >= 0x10)
        {
          v47 = 16;
        }

        v48 = v47 >> 1;
        if (v44 >= v9[1])
        {
          v49 = v9[1];
        }

        else
        {
          v49 = v44;
        }

        v50 = v63 * v48;
        LODWORD(v51) = a5;
        sub_2775D71F0(v10, v10 + 8256, 0, 2 * v50, v48, v49, v41, *(v10 + 28) + v37, v51, *(v42 - 12), v61 + 32 + 296 * v46, v46, byte_2775F12E8[4 * *(v10 + 416 + v55 + v37) + *(v10 + 384 + v55 + v37)]);
        result = (*(*(v61 + 3280) + 632))(a2 + 2 * (a3 >> 1) * (v37 * v58), a3, v10 + 8256, v50, (v58 * v49));
        ++v38;
      }

      v37 += v44;
    }

    while (v37 < a9);
  }

  return result;
}

uint64_t sub_2775D7E5C(uint64_t result, uint64_t a2)
{
  v151 = *MEMORY[0x277D85DE8];
  if ((*(*(result + 3256) + 63080) & 1) == 0)
  {
    return result;
  }

  v2 = *(result + 24);
  if (!*(v2 + 830) && !*(v2 + 831))
  {
    return result;
  }

  v127 = 4 * a2 * *(result + 3472);
  v3 = *(result + 2168);
  v4 = *(*(result + 8) + 392) == 0;
  v5 = 0x20u >> v4;
  if (*(*(result + 8) + 392))
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v134 = v3 != 3;
  v119 = v5 * a2;
  if (*(result + 3444) - v5 * a2 >= v5)
  {
    v7 = 0x20u >> v4;
  }

  else
  {
    v7 = *(result + 3444) - v5 * a2;
  }

  v114 = *(result + 5304);
  v115 = 0x20u >> v4;
  v113 = *(result + 2144);
  v116 = *(result + 2152);
  v117 = *(result + 5320);
  v118 = *(result + 5312);
  v8 = *(result + 3456);
  v123 = (a2 >> v4) * v8;
  v124 = *(result + 4440);
  v121 = *(*(result + 5288) + a2);
  v9 = v124 + 1348 * v123;
  v120 = a2;
  v137 = 16 * (v4 & a2);
  v136 = 0x10u >> (v3 == 1);
  v143 = v7;
  v145 = v4 & a2;
  v141 = v7 + v137;
  if (v3 == 1)
  {
    v10 = v7 + 16 * (v4 & a2) + 1;
  }

  else
  {
    v10 = v7 + 16 * (v4 & a2);
  }

  v125 = v3 == 1;
  v135 = v10 >> (v3 == 1);
  v146 = result;
  v11 = *(result + 3448);
  v129 = *(result + 24);
  v12 = *(v2 + 452);
  if ((v12 << v6) < v11)
  {
    v13 = v2 + 450;
    result = a2;
    v14 = *(v146 + 5168) + (a2 << (v6 - v125));
    v15 = *(v146 + 5160) + (a2 << v6);
    v16 = (*(v146 + 3452) + 31) & 0xFFFFFFFFFFFFFFE0;
    v17 = 1;
    v18 = v137 >> v125;
    if (v3 == 1)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    do
    {
      v20 = 16 * (v12 & v4);
      v21 = v9 + 1348 * (v12 >> v4);
      if (v137 < v141)
      {
        v22 = 0;
        v23 = v21 + 12 * v20;
        v24 = v23 + 8;
        v25 = v23 + 4;
        v26 = 1 << v137;
        do
        {
          v27 = v26 >> (16 * ((v26 & 0xFFFF0000) != 0));
          v28 = *(v24 + 2 * ((v26 & 0xFFFF0000) != 0));
          v29 = *(v25 + 2 * ((v26 & 0xFFFF0000) != 0));
          *(v24 + 2 * ((v26 & 0xFFFF0000) != 0)) = v28 & ~v27;
          *(v25 + 2 * ((v26 & 0xFFFF0000) != 0)) = v29 & ~v27;
          v30 = (v23 + 2 * ((v26 & 0xFFFF0000) != 0));
          *v30 &= ~v27;
          v31 = ((v27 & v29) != 0) | (2 * ((v27 & v28) != 0));
          if (v31 >= *(v15 + v22))
          {
            v31 = *(v15 + v22);
          }

          result = 4 * v31;
          *(v30 + result) |= v27;
          v26 *= 2;
          ++v22;
        }

        while (v141 - v137 != v22);
      }

      if (v3 && v18 < v135)
      {
        v32 = 0;
        v33 = v21 + 8 * (v20 >> v134);
        v34 = v33 + 768;
        v35 = v33 + 772;
        v36 = 1 << v18;
        do
        {
          v37 = v36 >> ((v36 >> v136 != 0) << v19);
          v38 = *(v35 + 2 * (v36 >> v136 != 0));
          v39 = (v37 & v38) == 0;
          *(v35 + 2 * (v36 >> v136 != 0)) = v38 & ~v37;
          v40 = (v34 + 2 * (v36 >> v136 != 0));
          *v40 &= ~v37;
          v41 = *(v14 + v32);
          v42 = !v39;
          if (v42 < v41)
          {
            v41 = v42;
          }

          v43 = 2 * v41;
          result = v40[v43] | v37;
          v40[v43] = result;
          v36 *= 2;
          ++v32;
        }

        while (v135 - v18 != v32);
      }

      v15 += v16;
      v14 += v16 >> v125;
      ++v17;
      v12 = *(v13 + 2 * v17);
    }

    while ((v12 << v6) < v11);
  }

  v122 = v127;
  if (!v121)
  {
    goto LABEL_62;
  }

  if (v8 > 0)
  {
    v44 = 0;
    v45 = 0x10u >> v134;
    v46 = *(v146 + 4032) + 624 * (v8 * (v121 - 1));
    result = *(v146 + 3440);
    if (v3 == 3)
    {
      v47 = 4;
    }

    else
    {
      v47 = 3;
    }

    v48 = *(v146 + 3440);
    do
    {
      LODWORD(v49) = v48;
      v50 = __OFSUB__(v48, 32);
      v48 -= 32;
      if (v48 < 0 != v50)
      {
        v49 = v49;
      }

      else
      {
        v49 = 32;
      }

      if (v49 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v49;
      }

      if (result - 32 * v44 >= 32)
      {
        v52 = 32;
      }

      else
      {
        v52 = result - 32 * v44;
      }

      v53 = v9 + 1348 * v44;
      if (result != 32 * v44)
      {
        v54 = v53 + 12 * v137;
        v55 = v54 + 384;
        v56 = v54 + 392;
        v57 = v54 + 388;
        v58 = 1;
        v59 = 480;
        do
        {
          v60 = v58 >> (16 * ((v58 & 0xFFFF0000) != 0));
          v61 = *(v56 + 2 * ((v58 & 0xFFFF0000) != 0));
          v62 = (v60 & v61) != 0;
          v63 = *(v57 + 2 * ((v58 & 0xFFFF0000) != 0));
          *(v56 + 2 * ((v58 & 0xFFFF0000) != 0)) = v61 & ~v60;
          *(v57 + 2 * ((v58 & 0xFFFF0000) != 0)) = v63 & ~v60;
          v64 = (v55 + 2 * ((v58 & 0xFFFF0000) != 0));
          *v64 &= ~v60;
          v65 = *(v46 + v59);
          v66 = ((v60 & v63) != 0) | (2 * v62);
          if (v66 < v65)
          {
            v65 = v66;
          }

          v64[2 * v65] |= v60;
          v58 *= 2;
          ++v59;
          --v51;
        }

        while (v51);
      }

      if (v3)
      {
        v67 = (v52 + v134) >> v134;
        if (v67)
        {
          v68 = v53 + 8 * (v137 >> v125);
          v69 = v68 + 1024;
          v70 = v68 + 1028;
          v71 = 1;
          v72 = 512;
          do
          {
            v73 = v71 >> ((v71 >> v45 != 0) << v47);
            v74 = *(v70 + 2 * (v71 >> v45 != 0));
            v39 = (v73 & v74) == 0;
            *(v70 + 2 * (v71 >> v45 != 0)) = v74 & ~v73;
            v75 = (v69 + 2 * (v71 >> v45 != 0));
            *v75 &= ~v73;
            v76 = *(v46 + v72);
            v77 = !v39;
            if (v77 < v76)
            {
              v76 = v77;
            }

            v75[2 * v76] |= v73;
            v71 *= 2;
            ++v72;
            --v67;
          }

          while (v67);
        }
      }

      ++v44;
      v46 += 624;
    }

    while (v44 != v8);
LABEL_62:
    if (v8 >= 1)
    {
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = v114 + 2 * (v113 >> 1) * v127;
      v82 = v146;
      v83 = *(v82 + 4432) + 4 * v115 * v120 * *(v82 + 3432);
      v84 = (v124 + 1348 * v123 + 6);
      while (1)
      {
        v85 = *(v82 + 3440);
        if (v85 - 32 * v79 < 1)
        {
          goto LABEL_78;
        }

        v86 = 0;
        v87 = *(v82 + 3432);
        v88 = *(v82 + 2144);
        v139 = v78;
        v89 = *(v82 + 3280);
        if ((v85 + v78) >= 0x20uLL)
        {
          v90 = 32;
        }

        else
        {
          v90 = (v85 + v78);
        }

        v128 = v84;
        v130 = v83;
        v132 = v81;
        do
        {
          if (!(v80 | v86))
          {
            goto LABEL_76;
          }

          if (v145)
          {
            v147 = *(v84 - 2);
            v148 = *v84;
            v91 = v84[2];
LABEL_74:
            v149 = v91;
            goto LABEL_75;
          }

          v92 = *(v84 - 3);
          v147 = v92;
          v93 = *(v84 - 1);
          v148 = v93;
          v94 = v84[1];
          v149 = v94;
          if (v141 >= 17)
          {
            v147 = v92 | (*(v84 - 2) << 16);
            v148 = v93 | (*v84 << 16);
            v91 = v94 | (v84[2] << 16);
            goto LABEL_74;
          }

LABEL_75:
          v150 = 0;
          result = (*(v89 + 3264))(v81, v88, &v147, v83, v87, v146 + 4496, v143, *(v146 + 4324));
LABEL_76:
          ++v86;
          v83 += 4;
          v81 += 8;
          v84 += 6;
        }

        while (v90 != v86);
        v82 = v146;
        LODWORD(v8) = *(v146 + 3456);
        v78 = v139;
        v83 = v130;
        v81 = v132;
        v84 = v128;
LABEL_78:
        ++v79;
        v81 += 256;
        v83 += 128;
        v78 -= 32;
        v84 += 674;
        v80 = 1;
        if (v79 >= v8)
        {
          v95 = *(v82 + 24);
          goto LABEL_81;
        }
      }
    }
  }

  v82 = v146;
  v95 = v129;
LABEL_81:
  if (*(v95 + 832))
  {
    if (v8 < 1)
    {
      return result;
    }

    goto LABEL_88;
  }

  if (*(v95 + 833))
  {
    v96 = v8 <= 0;
  }

  else
  {
    v96 = 1;
  }

  if (!v96)
  {
LABEL_88:
    v97 = 0;
    v144 = 0;
    v98 = ((v116 >> 1) * v122) >> v125;
    v142 = v118 + 2 * v98;
    v140 = v117 + 2 * v98;
    v99 = v135 - (v137 >> v125);
    v100 = *(v82 + 4432) + 4 * *(v82 + 3432) * (v119 >> v125) + 3;
    v126 = 2 * (0x80u >> v134);
    for (i = v124 + 1348 * v123 + 768; ; i += 1348)
    {
      v101 = *(v82 + 3440) - 32 * v97;
      if (v101 >= 32)
      {
        v101 = 32;
      }

      v102 = (v101 + v134) >> v134;
      if (v102 >= 1)
      {
        break;
      }

LABEL_102:
      ++v97;
      v100 += 4 * (0x20u >> v134);
      v140 += v126;
      v142 += v126;
      v144 = 1;
      if (v97 >= v8)
      {
        return result;
      }
    }

    v131 = v100;
    v133 = v97;
    v103 = 0;
    v104 = 0;
    v105 = *(v82 + 3432);
    v106 = *(v82 + 2152);
    v107 = 8 * v102;
    v108 = *(v82 + 3280);
    while (!(v144 | v103))
    {
LABEL_100:
      v104 += 8;
      v100 += 4;
      ++v103;
      if (v107 == v104)
      {
        v82 = v146;
        LODWORD(v8) = *(v146 + 3456);
        v100 = v131;
        v97 = v133;
        goto LABEL_102;
      }
    }

    if (v145)
    {
      v147 = *(i + v104 + 2);
      v109 = *(i + v104 + 6);
    }

    else
    {
      v110 = i + v104;
      v111 = *(i + v104);
      v147 = v111;
      v112 = *(i + v104 + 4);
      v148 = v112;
      if (v136 >= v135)
      {
LABEL_99:
        v149 = 0;
        (*(v108 + 3280))(v142 + v104, v106, &v147, v100 - 1, v105, v146 + 4496, v99, *(v146 + 4324));
        result = (*(v108 + 3280))(v140 + v104, v106, &v147, v100, v105, v146 + 4496, v99, *(v146 + 4324));
        goto LABEL_100;
      }

      v147 = (*(v110 + 2) << v136) | v111;
      v109 = (*(v110 + 6) << v136) | v112;
    }

    v148 = v109;
    goto LABEL_99;
  }

  return result;
}

_DWORD *sub_2775D8774(_DWORD *result, int a2)
{
  v2 = result;
  v136 = *MEMORY[0x277D85DE8];
  v91 = 4 * a2;
  v3 = 4 * a2 * result[868];
  v4 = result[542];
  v94 = *(result + 663) + 2 * (*(result + 268) >> 1) * v3;
  v5 = ((*(result + 269) >> 1) * v3) >> (v4 == 1);
  v92 = *(result + 664) + 2 * v5;
  v93 = *(result + 665) + 2 * v5;
  v6 = *(result + 1);
  v7 = *(v6 + 392) == 0;
  v128 = result;
  if ((*(*(result + 407) + 63080) & 1) == 0)
  {
    goto LABEL_38;
  }

  v104 = *(result + 555);
  v8 = result[864];
  v9 = *(result + 3);
  if (!v9[830] && !v9[831])
  {
    goto LABEL_38;
  }

  v10 = (a2 >> v7) * v8;
  v130 = a2 > 0;
  v11 = 0x20u >> v7;
  v96 = v4 != 3;
  v106 = v11 * a2;
  v12 = result[861] - v11 * a2;
  v112 = v12;
  if (v12 >= v11)
  {
    v12 = 0x20u >> v7;
  }

  v39 = v4 == 1;
  v13 = v4 == 1;
  v14 = v7 & a2;
  v108 = v12;
  v110 = 16 * (v7 & a2);
  v15 = v12 + v110;
  if (v39)
  {
    ++v15;
  }

  if (v8 >= 1)
  {
    v98 = v15;
    v100 = v13;
    v16 = 0;
    v102 = v10;
    v17 = 1348 * v10 + 192 * v14 + v104 + 392;
    v18 = *(result + 554) + 4 * *(result + 429) * a2 * v11 + 1;
    v19 = v94;
    do
    {
      v20 = *(v2 + 3440) - 32 * v16;
      if (v20 >= 32)
      {
        v20 = 32;
      }

      v124 = v20;
      if (v112 >= 1)
      {
        v121 = v16;
        v21 = *(v2 + 3432);
        v22 = *(v2 + 2144);
        v116 = v18;
        v23 = *(v2 + 3280);
        v24 = v110;
        v118 = v17;
        v25 = v17;
        v26 = v108;
        v114 = v19;
        do
        {
          if (v24 | v130)
          {
            v133 = *(v25 - 1);
            v134 = *v25;
            v135 = 0;
            result = (*(v23 + 3272))(v19, v22, &v133, v18, v21, v128 + 4496, v124, *(v128 + 4324));
          }

          v19 += 4 * v22;
          v25 += 3;
          ++v24;
          v18 += 4 * v21;
          --v26;
        }

        while (v26);
        v2 = v128;
        v8 = *(v128 + 3456);
        v17 = v118;
        v16 = v121;
        v19 = v114;
        v18 = v116;
      }

      ++v16;
      v19 += 256;
      v17 += 1348;
      v18 += 128;
    }

    while (v16 < v8);
    v9 = *(v2 + 24);
    v10 = v102;
    v13 = v100;
    v15 = v98;
  }

  if (!v9[832])
  {
    if (v9[833])
    {
      v27 = v8 <= 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_37;
    }

LABEL_27:
    v28 = 0;
    v125 = v15 >> v13;
    v29 = v106 >> v13;
    v107 = v110 >> v13;
    v109 = 0x10u >> v96;
    v30 = *(v2 + 4432) + 4 * *(v2 + 3432) * v29 + 2;
    v31 = 4 * (0x20u >> v96);
    v32 = (1348 * v10 + 8 * (v110 >> v13) + v104 + 1030);
    v33 = 2 * (0x80u >> v96);
    v34 = v92;
    v35 = v93;
    do
    {
      v36 = *(v2 + 3440) - 32 * v28;
      if (v36 >= 32)
      {
        v36 = 32;
      }

      if (v107 < v125)
      {
        v105 = v28;
        v113 = (v36 + v96) >> v96;
        v117 = *(v2 + 3432);
        v115 = *(v2 + 2152);
        v119 = 4 * v115;
        v97 = v35;
        v99 = v34;
        v111 = *(v2 + 3280);
        v101 = v32;
        v103 = v30;
        v37 = v107;
        do
        {
          if (v37 | v130)
          {
            LODWORD(v133) = (*(v32 - 2) << v109) | *(v32 - 3);
            HIDWORD(v133) = (*v32 << v109) | *(v32 - 1);
            v134 = 0;
            (*(v111 + 3288))(v34, v115, &v133, v30, v117, v128 + 4496, v113, *(v128 + 4324));
            result = (*(v111 + 3288))(v35, v115, &v133, v30 + 1, v117, v128 + 4496, v113, *(v128 + 4324));
          }

          ++v37;
          v30 += 4 * v117;
          v32 += 4;
          v35 += v119;
          v34 += v119;
        }

        while (v125 != v37);
        v2 = v128;
        v8 = *(v128 + 3456);
        v30 = v103;
        v28 = v105;
        v33 = 2 * (0x80u >> v96);
        v31 = 4 * (0x20u >> v96);
        v34 = v99;
        v32 = v101;
        v35 = v97;
      }

      ++v28;
      v30 += v31;
      v32 += 674;
      v35 += v33;
      v34 += v33;
    }

    while (v28 < v8);
    goto LABEL_37;
  }

  if (v8 >= 1)
  {
    goto LABEL_27;
  }

LABEL_37:
  v6 = *(v2 + 8);
LABEL_38:
  v38 = *(v2 + 5352);
  if (*(v6 + 414))
  {
    v39 = 0;
  }

  else
  {
    v39 = v38 == 0;
  }

  v40 = a2;
  if (!v39)
  {
    v41 = *(*(v2 + 3256) + 24);
    v42 = *(v2 + 24);
    v43 = *(v42 + 236);
    v44 = *(v42 + 240);
    v45 = 8 * (a2 != 0);
    if (v41 <= 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = a2;
    }

    v47 = *(v6 + 392);
    v48 = (4 << v47) * v46;
    v49 = *(v2 + 5264);
    v50 = v48;
    v51 = *(v2 + 2416);
    v52 = *(v2 + 5272);
    v53 = *(v2 + 2424);
    v54 = *(v2 + 5280);
    if (*(v6 + 414) || (v38 & 1) != 0)
    {
      v126 = *(v2 + 2424);
      v131 = *(v2 + 5280);
      v55 = *(v2 + 2164);
      v56 = 4 * *(v2 + 3448);
      v57 = v47 + 6;
      if ((a2 + 1) << (v47 + 6) >= v55 - 1)
      {
        v58 = v55 - 1;
      }

      else
      {
        v58 = (a2 + 1) << (v47 + 6);
      }

      v59 = (a2 << v57) - v45;
      if ((v38 & 1) != 0 || v43 == v44)
      {
        v122 = v41;
        v60 = v52;
        result = sub_2775B6180(v128, (v49 + 2 * (v51 >> 1) * v50), v51, v94 - 2 * (*(v128 + 2144) >> 1) * v45, *(v128 + 2144), 0, v47, (a2 << v57) - v45, v58, v56, v55, 0, 1);
        v52 = v60;
        v40 = a2;
        v6 = *(v128 + 8);
        v41 = v122;
      }

      if (v41 < 2 || v43 == v44)
      {
        v2 = v128;
      }

      else
      {
        v85 = v56;
        v86 = v55;
        v2 = v128;
        v61 = v52;
        result = sub_2775B6180(v128, (*(v128 + 5240) + 2 * (*(v128 + 2144) >> 1) * v91), *(v128 + 2144), v94 - 2 * (*(v128 + 2144) >> 1) * v45, *(v128 + 2144), 0, *(v6 + 392), v59, v58, v85, v86, 0, 0);
        v52 = v61;
        v40 = a2;
        v6 = *(v128 + 8);
      }

      v54 = v131;
      v53 = v126;
    }

    if ((*(v6 + 414) || (v38 & 6) != 0) && *(v2 + 2168))
    {
      v62 = (v53 >> 1) * v50;
      v63 = *(v2 + 2440);
      v64 = v63 != 3;
      if (v63 == 3)
      {
        v65 = 2;
      }

      else
      {
        v65 = 1;
      }

      v66 = v63 == 1;
      v67 = v63 == 1;
      v68 = *(v2 + 2164);
      if (v66)
      {
        ++v68;
      }

      v69 = v68 >> v67;
      v132 = *(v2 + 3448) << v65;
      if (v66)
      {
        v70 = 5;
      }

      else
      {
        v70 = 6;
      }

      v71 = *(v6 + 392);
      v72 = v70 + v71;
      v73 = (v40 + 1) << v72;
      if (v73 >= v69 - 1)
      {
        v73 = v69 - 1;
      }

      v127 = v73;
      v74 = v45 >> v67;
      v129 = (v40 << v72) - v74;
      v75 = *(v2 + 2152);
      v123 = (v75 >> 1) * v91;
      if (*(v6 + 414) || (v38 & 2) != 0)
      {
        v120 = v74;
        if ((v38 & 2) != 0 || v43 == v44)
        {
          v76 = v92 - 2 * (v75 >> 1) * v74;
          v89 = v64;
          v87 = v69;
          v77 = v69;
          v78 = v64;
          v79 = v62;
          result = sub_2775B6180(v2, (v52 + 2 * v62), *(v2 + 2424), v76, v75, v67, v71, v129, v73, v132, v87, v89, 1);
          v62 = v79;
          v64 = v78;
          v69 = v77;
          v74 = v120;
          v6 = *(v2 + 8);
        }

        if (v41 >= 2 && v43 != v44)
        {
          v80 = *(v2 + 2152);
          v81 = v92 - 2 * (v80 >> 1) * v74;
          v90 = v64;
          v88 = v69;
          v82 = v69;
          v83 = v64;
          v84 = v62;
          result = sub_2775B6180(v2, (*(v2 + 5248) + 2 * v123), v80, v81, v80, v67, *(v6 + 392), v129, v127, v132, v88, v90, 0);
          v62 = v84;
          v64 = v83;
          v69 = v82;
          v74 = v120;
          v6 = *(v2 + 8);
        }
      }

      if (*(v6 + 414) || (v38 & 4) != 0)
      {
        if ((v38 & 4) != 0 || v43 == v44)
        {
          result = sub_2775B6180(v2, (v54 + 2 * v62), *(v2 + 2424), v93 - 2 * (*(v2 + 2152) >> 1) * v74, *(v2 + 2152), v67, *(v6 + 392), v129, v127, v132, v69, v64, 1);
        }

        if (v41 >= 2 && v43 != v44)
        {
          return sub_2775B6180(v2, (*(v2 + 5256) + 2 * v123), *(v2 + 2152), v93 - 2 * (*(v2 + 2152) >> 1) * v74, *(v2 + 2152), v67, *(*(v2 + 8) + 392), v129, v127, v132, v69, v64, 0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2775D9044(uint64_t result, int a2)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if ((*(*(v2 + 3256) + 63080) & 2) != 0)
  {
    v4 = result;
    v5 = *(v2 + 3472);
    v6 = v5 * a2;
    v7 = *(v2 + 2168) == 1;
    v8 = 4 * v5 * a2;
    v9 = *(v2 + 2144) >> 1;
    v10 = *(v2 + 5304) + 2 * v9 * v8;
    v11 = *(v2 + 2152);
    v12 = ((v11 >> 1) * v8) >> v7;
    v13 = *(v2 + 5312) + 2 * v12;
    v24[0] = v10;
    v24[1] = v13;
    v14 = *(v2 + 5320) + 2 * v12;
    v24[2] = v14;
    v15 = *(v2 + 4440);
    v16 = *(*(v2 + 8) + 392) == 0;
    v17 = *(v2 + 3456);
    v18 = v15 + 1348 * (a2 >> v16) * v17;
    if (a2)
    {
      v19 = (4 * v11) >> v7;
      v23[0] = v10 - 16 * v9;
      v23[1] = v13 - 2 * v19;
      v23[2] = v14 - 2 * v19;
      sub_2775DE0F4(result, v23, v15 + 1348 * ((a2 - 1) >> v16) * v17, v6 - 2, v6, 1, a2);
    }

    if (a2 + 1 >= *(v2 + 3464))
    {
      v20 = 0;
    }

    else
    {
      v20 = -2;
    }

    v21 = v6 + v5 + v20;
    if (v21 >= *(v2 + 3452))
    {
      v22 = *(v2 + 3452);
    }

    else
    {
      v22 = v21;
    }

    return sub_2775DE0F4(v4, v24, v18, v6, v22, 0, a2);
  }

  return result;
}

uint64_t sub_2775D91D0(uint64_t a1, int a2)
{
  v3 = 0;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 2168);
  v4 = 4 * a2 * *(a1 + 3472);
  v5 = ((*(a1 + 2152) >> 1) * v4) >> (v17 == 1);
  v6 = *(a1 + 5312) + 2 * v5;
  v7 = *(a1 + 5320) + 2 * v5;
  v8 = *(a1 + 5328) + 2 * (*(a1 + 2416) >> 1) * v4;
  v9 = ((*(a1 + 2424) >> 1) * v4) >> (v17 == 1);
  v10 = *(a1 + 5336) + 2 * v9;
  v11 = *(a1 + 5344) + 2 * v9;
  v12 = a1 + 2416;
  v13 = 8 * (a2 != 0);
  v18[3] = *(a1 + 5304) + 2 * (*(a1 + 2144) >> 1) * v4;
  v18[4] = v6;
  v18[5] = v7;
  v18[0] = v8;
  v18[1] = v10;
  v18[2] = v11;
  do
  {
    if (v3)
    {
      v14 = *(a1 + 2168) == 1;
    }

    else
    {
      v14 = 0;
    }

    result = (*(*(a1 + 3280) + 672))(v18[v3] - 2 * (*(v12 + 8 * (v3 != 0)) >> 1) * (v13 >> v14));
    if (!v17)
    {
      break;
    }
  }

  while (v3++ < 2);
  return result;
}

uint64_t sub_2775D93F8(uint64_t result, int a2)
{
  if ((*(*(result + 3256) + 63080) & 4) != 0)
  {
    v3 = result;
    v4 = *(result + 2168) == 1;
    v5 = 4 * a2 * *(result + 3472);
    v6 = *(result + 5336);
    v7 = *(result + 2424);
    v32 = *(result + 5344);
    v8 = 8 * (a2 != 0);
    v9 = *(result + 5352);
    v10 = a2 + 1;
    v11 = *(result + 3464);
    if (v9)
    {
      v12 = *(result + 2436);
      if (v10 >= v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = -8;
      }

      v14 = (v10 << (*(*(result + 8) + 392) + 6)) + v13;
      if (v14 >= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      result = sub_2775DEC80(result, *(result + 5328) + 2 * (*(result + 2416) >> 1) * v5 - 2 * (*(result + 2416) >> 1) * v8, (a2 << (*(*(result + 8) + 392) + 6)) - v8, *(result + 2432), v12, v15, 0);
    }

    if ((v9 & 6) != 0)
    {
      v16 = ((v7 >> 1) * v5) >> v4;
      v17 = *(v3 + 2440);
      v18 = v17 != 3;
      v19 = *(v3 + 2432);
      if (v17 != 3)
      {
        ++v19;
      }

      v20 = v17 == 1;
      v21 = *(v3 + 2436);
      if (v20)
      {
        ++v21;
      }

      v22 = v21 >> v20;
      v23 = v19 >> v18;
      if (v20)
      {
        v24 = 5;
      }

      else
      {
        v24 = 6;
      }

      v25 = v24 + *(*(v3 + 8) + 392);
      v26 = 8u >> v20;
      if (v10 >= v11)
      {
        v26 = 0;
      }

      v27 = (v10 << v25) - v26;
      if (v27 >= v22)
      {
        v28 = v22;
      }

      else
      {
        v28 = v27;
      }

      v29 = v8 >> v20;
      v30 = (a2 << v25) - v29;
      if ((v9 & 2) != 0)
      {
        result = sub_2775DEC80(v3, v6 + 2 * v16 - 2 * (*(v3 + 2424) >> 1) * v29, v30, v23, v22, v28, 1);
      }

      if ((v9 & 4) != 0)
      {
        v31 = v32 + 2 * v16 - 2 * (*(v3 + 2424) >> 1) * v29;

        return sub_2775DEC80(v3, v31, v30, v23, v22, v28, 2);
      }
    }
  }

  return result;
}

uint64_t sub_2775D9614(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_2775D7E5C(a1, a2);
  result = sub_2775D8774(a1, v2);
  if (*(*(a1 + 8) + 414))
  {
    result = sub_2775D9044(*(*(a1 + 3256) + 16), v2);
  }

  if (*(*(a1 + 24) + 236) != *(*(a1 + 24) + 240))
  {
    result = sub_2775D91D0(a1, v2);
  }

  if (*(a1 + 5352))
  {

    return sub_2775D93F8(a1, v2);
  }

  return result;
}

void *sub_2775D96AC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 28);
  v5 = (*(v3 + 3456) * (v4 >> *(v3 + 3468))) << 7;
  v6 = *(v2 + 13864);
  result = memcpy((*(v3 + 3408) + 2 * (v5 + 4 * v6)), (*(v3 + 2120) + 8 * v6 + 2 * (*(v3 + 2144) >> 1) * (4 * (*(v3 + 3472) + v4) - 1)), 8 * (*(v2 + 13868) - v6));
  v8 = *(v3 + 2168);
  if (v8)
  {
    v9 = v8 != 3;
    v10 = (4 * v6) >> (v8 != 3);
    v11 = (*(v3 + 2152) >> 1) * (((4 * (*(v3 + 3472) + *(a1 + 28))) >> (v8 == 1)) - 1);
    v12 = ((4 * v6) >> (v8 != 3)) + v5;
    v13 = (v3 + 2128);
    v14 = 2;
    do
    {
      v15 = (v13[161] + 2 * v12);
      v16 = *v13++;
      result = memcpy(v15, (v16 + 2 * v11 + 2 * v10), 2 * ((4 * (*(v2 + 13868) - v6)) >> v9));
      --v14;
    }

    while (v14);
  }

  return result;
}

__n128 sub_2775D97E4(__n128 *a1, int a2, int a3, int a4, int a5)
{
  if (a1[16160].n128_u32[1])
  {
    v5 = (*(a1->n128_u64[1] + 4376) + 48 * (*(a1->n128_u64[1] + 3432) >> 1) * ((a1[1].n128_u32[2] & 1) + (a1[1].n128_i32[3] >> 1)) + 48 * ((a1[1].n128_u32[3] & 1) + (a1[1].n128_i32[2] >> 1)));
  }

  else
  {
    v5 = a1 + 1641;
  }

  if (a4 >= 1)
  {
    v6 = a4;
    v7 = &a1[3 * a2 + 320];
    do
    {
      result = *v5;
      *v7 = *v5;
      v7 += 3;
      --v6;
    }

    while (v6);
  }

  if (a5 >= 1)
  {
    v9 = a5;
    v10 = &a1[3 * a3 + 416];
    do
    {
      result = *v5;
      *v10 = *v5;
      v10 += 3;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_2775D9894(uint64_t result, int a2, int a3, int a4, int a5)
{
  if (*(result + 258564))
  {
    v5 = *(*(result + 8) + 4376) + 48 * (*(*(result + 8) + 3432) >> 1) * ((*(result + 24) & 1) + (*(result + 28) >> 1)) + 48 * ((*(result + 28) & 1) + (*(result + 24) >> 1));
  }

  else
  {
    v5 = result + 26256;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v6;
    if (a4 >= 1)
    {
      v9 = (result + 48 * a2 + 5120 + 16 * v7);
      v10 = a4;
      do
      {
        *v9 = *(v5 + 16 * v7);
        v9 += 3;
        --v10;
      }

      while (v10);
    }

    if (a5 >= 1)
    {
      v11 = (result + 48 * a3 + 6656 + 16 * v7);
      v12 = a5;
      do
      {
        *v11 = *(v5 + 16 * v7);
        v11 += 3;
        --v12;
      }

      while (v12);
    }

    v6 = 1;
    v7 = 2;
  }

  while ((v8 & 1) == 0);
  return result;
}

void sub_2775D9968(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v82 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 8);
  v12 = a3;
  sub_27758428C(*(a1 + 16) + 13824, (*(a1 + 16) + 112 * a3 + 16 * a4 + 3552), 6);
  *(a2 + a3 + 11) = v13 + 2;
  v14 = a1 + 8224;
  if (!a3)
  {
    v14 = a1 + 624;
  }

  v15 = *(v14 + a6);
  if ((a6 & 0xF) != 0)
  {
    v16 = a5;
    if (a3)
    {
      v17 = *(a1 + a5 + 0x2000);
    }

    else
    {
      v17 = *(*(a1 + 656) + a5 + 592);
    }
  }

  else
  {
    v17 = 0;
    v16 = a5;
  }

  v18 = 0;
  v19 = a1 + 48 * v16;
  v20 = (a1 + 48 * a6 + 16 * v12 + 6656);
  v21 = (v19 + 16 * v12 + 5120);
  v22 = v15 != 0;
  v23 = v17 != 0;
  if (v15 && v17)
  {
    v18 = 0;
    do
    {
      v24 = *v20;
      v25 = *v21;
      if (v24 >= v25)
      {
        v26 = v25 == v24;
        if (!v18 || v81[v18 - 1] != v25)
        {
          v81[v18++] = v25;
        }

        v15 -= v26;
        ++v21;
        --v17;
        v20 += v26;
      }

      else
      {
        if (!v18 || v81[v18 - 1] != v24)
        {
          v81[v18++] = v24;
        }

        ++v20;
        --v15;
      }

      v22 = v15 != 0;
      v23 = v17 != 0;
    }

    while (v15 && v17);
  }

  v27 = (v13 + 2);
  if (v22)
  {
    v28 = v15 + 1;
    do
    {
      v29 = *v20;
      if (!v18 || v81[v18 - 1] != v29)
      {
        v81[v18++] = v29;
      }

      ++v20;
      --v28;
    }

    while (v28 > 1);
  }

  else if (v23)
  {
    v30 = v17 + 1;
    do
    {
      v31 = *v21;
      if (!v18 || v81[v18 - 1] != v31)
      {
        v81[v18++] = v31;
      }

      ++v21;
      --v30;
    }

    while (v30 > 1);
  }

  v76 = a3;
  v32 = v12;
  v33 = 0;
  v34 = v27 != 0;
  if (v18 >= 1 && v13 != -2)
  {
    v33 = 0;
    v35 = v81;
    v36 = 1;
    v37 = v18;
    do
    {
      sub_2775845E0();
      if (v38)
      {
        __src[v33++] = *v35;
      }

      v34 = v33 < v27;
      if (v36 >= v37)
      {
        break;
      }

      ++v36;
      ++v35;
    }

    while (v33 < v27);
  }

  if (*(a1 + 258564))
  {
    v39 = v11;
    v40 = (*(v11 + 4376) + 48 * (*(v11 + 3432) >> 1) * ((*(a1 + 24) & 1) + (*(a1 + 28) >> 1)) + 48 * ((*(a1 + 28) & 1) + (*(a1 + 24) >> 1)) + 16 * v32);
  }

  else
  {
    v40 = (a1 + 16 * v32 + 26256);
    v39 = v11;
  }

  if (v34)
  {
    v41 = *(v39 + 2172);
    if (v41)
    {
      v42 = 0;
      v43 = *(v39 + 2172);
      do
      {
        --v43;
        sub_2775845E0();
        v42 = v44 | (2 * v42);
      }

      while (v43);
    }

    else
    {
      v42 = 0;
    }

    v40[v33] = v42;
    v79 = v27;
    if (v33 + 1 < v27)
    {
      v78 = v40;
      v45 = 0;
      v46 = -2;
      do
      {
        sub_2775845E0();
        v45 = v47 | (2 * v45);
        v48 = __CFADD__(v46++, 1);
      }

      while (!v48);
      v77 = v76 == 0;
      v49 = v42;
      v50 = v41 + v45 - 3;
      v51 = ~(-1 << v41);
      v52 = v33 + 1;
      v53 = v33 + 2;
      while (1)
      {
        v54 = 0;
        if (v50)
        {
          v55 = v50;
          do
          {
            --v55;
            sub_2775845E0();
            v54 = v56 | (2 * v54);
          }

          while (v55);
        }

        v57 = v49 + v77 + v54 >= v51 ? v51 : v49 + v77 + v54;
        v58 = v52 + 1;
        v40 = v78;
        v78[v52] = v57;
        v59 = v77 + v57;
        v48 = v51 >= v59;
        v60 = v51 - v59;
        if (v60 == 0 || !v48)
        {
          break;
        }

        v49 = v57;
        v61 = 32 - __clz(v60);
        if (v50 >= v61)
        {
          v50 = v61;
        }

        ++v53;
        ++v52;
        if (v58 == v79)
        {
          goto LABEL_84;
        }
      }

      if (v58 < v79)
      {
        v62 = 0;
        v63 = v79 - v53;
        v64 = vdupq_n_s64(v63 - 1);
        v65 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
        v66 = &v78[v53 + 4];
        do
        {
          v67 = vdupq_n_s64(v62);
          v68 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(v67, xmmword_2775ED490)));
          if (vuzp1_s8(vuzp1_s16(v68, *v64.i8), *v64.i8).u8[0])
          {
            *(v66 - 4) = v51;
          }

          if (vuzp1_s8(vuzp1_s16(v68, *&v64), *&v64).i8[1])
          {
            *(v66 - 3) = v51;
          }

          if (vuzp1_s8(vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, vorrq_s8(v67, xmmword_2775ED480)))), *&v64).i8[2])
          {
            *(v66 - 2) = v51;
            *(v66 - 1) = v51;
          }

          v69 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(v67, xmmword_2775ED470)));
          if (vuzp1_s8(*&v64, vuzp1_s16(v69, *&v64)).i32[1])
          {
            *v66 = v51;
          }

          if (vuzp1_s8(*&v64, vuzp1_s16(v69, *&v64)).i8[5])
          {
            v66[1] = v51;
          }

          if (vuzp1_s8(*&v64, vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, vorrq_s8(v67, xmmword_2775ED460))))).i8[6])
          {
            v66[2] = v51;
            v66[3] = v51;
          }

          v62 += 8;
          v66 += 8;
        }

        while (v65 != v62);
      }
    }

LABEL_84:
    if (v79)
    {
      v70 = 0;
      v71 = v40;
      v72 = v79;
      v73 = v33;
      while (v70 < v33)
      {
        v74 = __src[v70];
        if (v73 < v79)
        {
          v75 = v40[v73];
          if (v74 > v75)
          {
            goto LABEL_91;
          }
        }

        ++v70;
LABEL_92:
        *v71++ = v74;
        if (!--v72)
        {
          return;
        }
      }

      LOWORD(v75) = v40[v73];
LABEL_91:
      ++v73;
      LOWORD(v74) = v75;
      goto LABEL_92;
    }
  }

  else
  {
    memcpy(v40, __src, 2 * v33);
  }
}