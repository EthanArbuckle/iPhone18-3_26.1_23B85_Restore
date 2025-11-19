uint64_t sub_2774A0FCC(uint64_t a1, int a2, int a3, int a4, unsigned __int8 *a5)
{
  (*(**(a1 + 944) + 88))(*(a1 + 944));
  sub_277490C94(a1, a2, a3, a5, 1, 0, *(a1 + 29745), 1, 0);
  sub_27749617C(a1, a2, a3, a4, 0, 0, 1, v10);
  v11 = (*(**(a1 + 944) + 80))(*(a1 + 944));
  (*(**(a1 + 944) + 96))(*(a1 + 944));
  return v11;
}

uint64_t sub_2774A10E0(__int16 *a1, __int16 *a2, unsigned int a3)
{
  v3 = *(a1 + 8) >> 4;
  if (v3 != *(a2 + 8) >> 4)
  {
    return 0;
  }

  v4 = *(a1 + 9) >> 4;
  if (v4 != *(a2 + 9) >> 4)
  {
    return 0;
  }

  if (v3 == 15)
  {
    goto LABEL_7;
  }

  v5 = *a1 - *a2;
  if (v5 < 0)
  {
    v5 = *a2 - *a1;
  }

  if (v5 > a3)
  {
LABEL_7:
    v6 = 0;
  }

  else
  {
    v7 = a1[1] - a2[1];
    if (v7 < 0)
    {
      v7 = a2[1] - a1[1];
    }

    v6 = v7 <= a3;
  }

  if (v3 != 15 && !v6)
  {
    return 0;
  }

  if (v4 == 15)
  {
    goto LABEL_19;
  }

  v9 = a1[2] - a2[2];
  if (v9 < 0)
  {
    v9 = a2[2] - a1[2];
  }

  if (v9 > a3)
  {
LABEL_19:
    v10 = 0;
  }

  else
  {
    v12 = a1[3] - a2[3];
    if (v12 < 0)
    {
      v12 = a2[3] - a1[3];
    }

    v10 = v12 <= a3;
  }

  return v4 == 15 || v10;
}

uint64_t sub_2774A11A8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = 0;
  v9 = 0;
  LODWORD(v10) = a8 - 1;
  if (a8)
  {
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  if (a8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = a3 >> v11;
  v13 = a4 >> v11;
  v14 = v12 * v13;
  v15 = v12 << (a8 != 0);
  v16 = 1;
  if (a8)
  {
    v16 = 2;
  }

  v17 = a1 + 2 * v10;
  v18 = 2 * v15;
  result = 2 * a5;
  v20 = a2 + 2 * v10;
  v44 = 2 * a6 * v13;
  v21 = 2 * a6;
  do
  {
    v45 = v9;
    v22 = v8;
    v8 += 4;
    v23 = v20;
    v24 = v17;
    do
    {
      v25 = (a7 + 48 * v22);
      if (v13)
      {
        v26 = 0;
        v27 = v23;
        v28 = v24;
        do
        {
          if (v15 > v10)
          {
            v29 = 0;
            v31 = *v25;
            v30 = *(v25 + 1);
            v32 = *(v25 + 2);
            v33 = *(v25 + 3);
            v34 = *(v25 + 4);
            do
            {
              v35 = *(v27 + 2 * v29);
              v30 += v35;
              v36 = *(v28 + 2 * v29);
              v31 += v36;
              v32 += (v36 * v36);
              v33 += (v35 * v35);
              v34 += v36 * v35;
              v29 += v16;
            }

            while (v10 + v29 < v15);
            *v25 = v31;
            *(v25 + 1) = v30;
            *(v25 + 2) = v32;
            *(v25 + 3) = v33;
            *(v25 + 4) = v34;
          }

          ++v26;
          v28 += result;
          v27 += v21;
        }

        while (v26 != v13);
      }

      v38 = *v25;
      v37 = *(v25 + 1);
      v39 = *(v25 + 3) * v14 - v37 * v37;
      v40 = *(v25 + 2) * v14 - v38 * v38;
      if (v39 < 1 || *(v25 + 2) * v14 - v38 * v38 <= 0)
      {
        if (v40 <= 0 && *(v25 + 3) * v14 - v37 * v37 <= 0)
        {
          v43 = 1.0;
        }

        else
        {
          v43 = 0.0;
        }
      }

      else
      {
        v43 = (*(v25 + 4) * v14 - v38 * v37) / sqrt(v39 * v40);
      }

      v25[10] = v43;
      ++v22;
      v24 += v18;
      v23 += v18;
    }

    while (v22 != v8);
    ++v9;
    v17 += 2 * a5 * v13;
    v20 += v44;
  }

  while (v45 != 3);
  return result;
}

uint64_t sub_2774A1380(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = 0;
  v9 = 0;
  LODWORD(v10) = a8 - 1;
  if (a8)
  {
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  if (a8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = a3 >> v11;
  v13 = a4 >> v11;
  v14 = v12 * v13;
  v15 = v12 << (a8 != 0);
  v16 = 1;
  if (a8)
  {
    v16 = 2;
  }

  v17 = a1 + v10;
  result = a2 + v10;
  do
  {
    v19 = v8;
    v8 += 4;
    v20 = result;
    v21 = v17;
    do
    {
      v22 = (a7 + 48 * v19);
      if (v13)
      {
        v23 = 0;
        v24 = v20;
        v25 = v21;
        do
        {
          if (v15 > v10)
          {
            v26 = 0;
            v28 = *v22;
            v27 = *(v22 + 1);
            v29 = *(v22 + 2);
            v30 = *(v22 + 3);
            v31 = v10;
            v32 = *(v22 + 4);
            do
            {
              v27 += *(v24 + v26);
              *(v22 + 1) = v27;
              v28 += *(v25 + v26);
              *v22 = v28;
              v29 += *(v25 + v26) * *(v25 + v26);
              *(v22 + 2) = v29;
              v30 += *(v24 + v26) * *(v24 + v26);
              *(v22 + 3) = v30;
              v32 += *(v24 + v26) * *(v25 + v26);
              *(v22 + 4) = v32;
              v31 += v16;
              v26 += v16;
            }

            while (v31 < v15);
          }

          ++v23;
          v25 += a5;
          v24 += a6;
        }

        while (v23 != v13);
      }

      v34 = *v22;
      v33 = *(v22 + 1);
      v35 = *(v22 + 3) * v14 - v33 * v33;
      v36 = *(v22 + 2) * v14 - v34 * v34;
      if (v35 < 1 || *(v22 + 2) * v14 - v34 * v34 <= 0)
      {
        if (v36 <= 0 && *(v22 + 3) * v14 - v33 * v33 <= 0)
        {
          v39 = 1.0;
        }

        else
        {
          v39 = 0.0;
        }
      }

      else
      {
        v39 = (*(v22 + 4) * v14 - v34 * v33) / sqrt(v35 * v36);
      }

      v22[10] = v39;
      ++v19;
      v21 += v15;
      v20 += v15;
    }

    while (v19 != v8);
    ++v9;
    v17 += v13 * a5;
    result += v13 * a6;
  }

  while (v9 != 4);
  return result;
}

uint64_t sub_2774A1550(uint64_t a1)
{
  for (i = 1296; i != 1040; i -= 16)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      sub_2773CC26C(v3);
    }
  }

  do
  {
    v4 = *(a1 + i);
    if (v4)
    {
      sub_2773CC26C(v4);
    }

    i -= 16;
  }

  while (i != 784);
  do
  {
    v5 = *(a1 + i);
    if (v5)
    {
      sub_2773CC26C(v5);
    }

    i -= 16;
  }

  while (i != 528);
  do
  {
    v6 = *(a1 + i);
    if (v6)
    {
      sub_2773CC26C(v6);
    }

    i -= 16;
  }

  while (i != 272);
  do
  {
    v7 = *(a1 + i);
    if (v7)
    {
      sub_2773CC26C(v7);
    }

    i -= 16;
  }

  while (i != 16);
  return a1;
}

void *sub_2774A15F0(void *a1)
{
  v2 = a1[249];
  if (v2)
  {
    sub_2773CC26C(v2);
  }

  v3 = a1[192];
  if (v3)
  {
    a1[193] = v3;
    operator delete(v3);
  }

  v4 = a1[189];
  if (v4)
  {
    a1[190] = v4;
    operator delete(v4);
  }

  v5 = a1[186];
  if (v5)
  {
    a1[187] = v5;
    operator delete(v5);
  }

  v6 = 48;
  do
  {
    v7 = a1[v6 + 24];
    if (v7)
    {
      a1[v6 + 25] = v7;
      operator delete(v7);
    }

    v6 -= 3;
  }

  while (v6 * 8);
  v8 = a1[2];
  if (v8)
  {
    a1[3] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_2774A1680(int *a1, uint64_t a2, int a3, int a4)
{
  if (a4 < 1)
  {
    v5 = 0;
    v12 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 4 * a2;
    v7 = a1;
    do
    {
      v8 = v7;
      v9 = a3;
      if (a3 >= 1)
      {
        do
        {
          v10 = *v8++;
          v5 += v10;
          --v9;
        }

        while (v9);
      }

      ++v4;
      v7 = (v7 + v6);
    }

    while (v4 != a4);
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = a1;
      v14 = a3;
      if (a3 >= 1)
      {
        do
        {
          v15 = *v13++;
          v12 += (v15 * v15);
          --v14;
        }

        while (v14);
      }

      ++v11;
      a1 = (a1 + v6);
    }

    while (v11 != a4);
  }

  return v12 - (v5 * v5 + ((a4 * a3) >> 1)) / (a4 * a3);
}

uint64_t sub_2774A173C(int *a1, uint64_t a2, int a3, int a4)
{
  if (a4 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = a1;
    v7 = a3;
    if (a3 >= 1)
    {
      do
      {
        v8 = *v6++;
        v5 = (v8 + v5);
        --v7;
      }

      while (v7);
    }

    ++v4;
    a1 += a2;
  }

  while (v4 != a4);
  return v5;
}

uint64_t sub_2774A1798(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 1)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    if (((a2 + 15) >> 4) >= (result + 15) >> 4)
    {
      v6 = (result + 15) >> 4;
    }

    else
    {
      v6 = (a2 + 15) >> 4;
    }

    v7 = 4 * result;
    v8 = -v6;
    do
    {
      if (result >= 1)
      {
        v9 = 0;
        LODWORD(v10) = v6 + v4;
        if ((v6 + v4) >= a2)
        {
          v10 = a2;
        }

        else
        {
          v10 = v10;
        }

        v5 = v5;
        v11 = -v6;
        v12 = v6;
        do
        {
          if (result >= v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = result;
          }

          if (((v4 - v6) & ~((v4 - v6) >> 31)) >= v10)
          {
            v15 = 0;
            v14 = 0;
          }

          else
          {
            v14 = 0;
            v15 = 0;
            v16 = v11 & ~(v11 >> 31);
            v17 = v13 - v16;
            v18 = a3 + v7 * (v8 & ~(v8 >> 31)) + 4 * v16;
            v19 = v6 + v9;
            if ((v6 + v9) >= result)
            {
              v19 = result;
            }

            v20 = (v9 - v6) & ~((v9 - v6) >> 31);
            v21 = (v4 - v6) & ~((v4 - v6) >> 31);
            do
            {
              if (v19 > v20)
              {
                v22 = v18;
                v23 = v17;
                do
                {
                  v24 = *v22++;
                  v15 += v24;
                  --v23;
                }

                while (v23);
                v14 += v19 - v20;
              }

              ++v21;
              v18 += v7;
            }

            while (v21 != v10);
          }

          v25 = ((*(a3 + 4 * v5) + 32) >> 6) - (((v15 + (v14 >> 1)) / v14 + 32) >> 6);
          if (v25 < 0)
          {
            v25 = (((v15 + (v14 >> 1)) / v14 + 32) >> 6) - ((*(a3 + 4 * v5) + 32) >> 6);
          }

          *(a4 + 4 * v4 * result + 4 * v9) = v25;
          ++v5;
          ++v9;
          ++v12;
          ++v11;
        }

        while (v9 != result);
      }

      ++v4;
      ++v8;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_2774A192C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 1)
  {
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = ~result;
  v7.i64[0] = 0x8000000080;
  v7.i64[1] = 0x8000000080;
  v8 = -result;
  v9 = -1;
  v10 = a2;
  do
  {
    if (result < 1)
    {
      goto LABEL_18;
    }

    v11 = 0;
    v12 = v5;
    v13 = a3 + 4 * v5;
    do
    {
      v14 = *(v13 + 4 * v11);
      v22 = v7;
      if (v11)
      {
        v22.i32[0] = (*(a3 + 4 * (v9 + v11)) + 32) >> 6;
        v15 = v22.i32[0] + 2;
        if (v4)
        {
          v16 = v8 + v11;
          v17 = (*(a3 + 4 * (v8 + v11)) + 32) >> 6;
          v22.i32[2] = v17;
          v18 = (*(a3 + 4 * (v6 + v11)) + 32) >> 6;
          v19 = (v22.i64 + 4);
          v20 = v18;
          goto LABEL_10;
        }

        v21 = 128;
LABEL_15:
        v17 = 128;
        v20 = 128;
        goto LABEL_16;
      }

      if (!v4)
      {
        v21 = 128;
        v15 = 130;
        goto LABEL_15;
      }

      v18 = (*(a3 + 4 * (v4 * result - result)) + 32) >> 6;
      v20 = 128;
      v15 = 130;
      v19 = &v22.i64[1];
      v17 = v18;
      v16 = v4 * result - result;
LABEL_10:
      *v19 = v18;
      if (v11 >= result - 1)
      {
        v21 = 128;
      }

      else
      {
        v21 = (*(a3 + 4 * (v16 + 1)) + 32) >> 6;
        v22.i32[3] = v21;
      }

LABEL_16:
      *(a4 + 4 * v11++) = vminvq_s32(vminq_s32(vabdq_s32(v22, vdupq_n_s32((v14 + 32) >> 6)), vdupq_n_s32(((v21 + v17 + v20 + v15) >> 2) - ((v14 + 32) >> 6))));
    }

    while (result != v11);
    v5 = v12 + v11;
LABEL_18:
    ++v4;
    a4 += 4 * result;
    v6 += result;
    v8 += result;
    v9 += result;
  }

  while (v4 != v10);
  return result;
}

uint64_t sub_2774A1AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 64; ++i)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += a4;
    a1 += a2;
  }

  while (v4 != 64);
  return v6 - ((v5 * v5 + 2048) >> 12);
}

uint64_t sub_2774A1B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 128; i += 2)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += 2 * a4;
    a1 += 2 * a2;
  }

  while (v4 != 64);
  return v6 - ((v5 * v5 + 2048) >> 12);
}

uint64_t sub_2774A1B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 32; ++i)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += a4;
    a1 += a2;
  }

  while (v4 != 32);
  return v6 - ((v5 * v5 + 512) >> 10);
}

uint64_t sub_2774A1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 64; i += 2)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += 2 * a4;
    a1 += 2 * a2;
  }

  while (v4 != 32);
  return v6 - ((v5 * v5 + 512) >> 10);
}

uint64_t sub_2774A1C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 16; ++i)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += a4;
    a1 += a2;
  }

  while (v4 != 16);
  return v6 - ((v5 * v5 + 128) >> 8);
}

uint64_t sub_2774A1C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 32; i += 2)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += 2 * a4;
    a1 += 2 * a2;
  }

  while (v4 != 16);
  return v6 - ((v5 * v5 + 128) >> 8);
}

uint64_t sub_2774A1CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 8; ++i)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += a4;
    a1 += a2;
  }

  while (v4 != 8);
  return v6 - ((v5 * v5 + 32) >> 6);
}

uint64_t sub_2774A1D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 16; i += 2)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += 2 * a4;
    a1 += 2 * a2;
  }

  while (v4 != 8);
  return v6 - ((v5 * v5 + 32) >> 6);
}

uint64_t sub_2774A1DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += a4;
    a1 += a2;
  }

  while (v4 != 4);
  return v6 - ((v5 * v5 + 8) >> 4);
}

uint64_t sub_2774A1E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = 0; i != 8; i += 2)
    {
      v8 = *(a1 + i) - *(a3 + i);
      v5 += v8;
      v6 += v8 * v8;
    }

    ++v4;
    a3 += 2 * a4;
    a1 += 2 * a2;
  }

  while (v4 != 4);
  return v6 - ((v5 * v5 + 8) >> 4);
}

uint64_t sub_2774A1E68(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1;
  do
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = v3;
    v8 = 0uLL;
    v9 = 0uLL;
    do
    {
      v10 = *(v4 + v5);
      v11 = vmovl_u8(*v10.i8);
      v12 = vmovl_high_u8(v10);
      v9 = vaddw_high_u16(v9, v12);
      v8 = vaddw_u16(v8, *v12.i8);
      v6 = vaddw_high_u16(v6, v11);
      v7 = vaddw_u16(v7, *v11.i8);
      v5 += 16;
    }

    while (v5 != 64);
    v3 = vaddvq_s32(vaddq_s32(vaddq_s32(v7, v8), vaddq_s32(v6, v9)));
    ++v2;
    v4 += a2;
  }

  while (v2 != 64);
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = v14;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = *(a1 + v15);
      v25 = vmull_high_u8(v24, v24);
      v26 = vmull_u8(*v24.i8, *v24.i8);
      v27 = vmovl_u16(*v26.i8);
      v28 = vmovl_high_u16(v25);
      v29 = vmovl_high_u16(v26);
      v30 = vmovl_u16(*v25.i8);
      v19 = vaddw_high_u32(v19, v29);
      v21 = vaddw_high_u32(v21, v30);
      v20 = vaddw_u32(v20, *v30.i8);
      v18 = vaddw_u32(v18, *v29.i8);
      v16 = vaddw_high_u32(v16, v27);
      v22 = vaddw_u32(v22, *v28.i8);
      v17 = vaddw_u32(v17, *v27.i8);
      v23 = vaddw_high_u32(v23, v28);
      v15 += 16;
    }

    while (v15 != 64);
    v31 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v17, v20), vaddq_s64(v18, v22)), vaddq_s64(vaddq_s64(v16, v21), vaddq_s64(v19, v23))));
    v14 = v31;
    ++v13;
    a1 += a2;
  }

  while (v13 != 64);
  return v31 - ((v3 * v3 + 2048) >> 12);
}

uint64_t sub_2774A1F98(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 2 * a2;
  v5 = a1;
  do
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = v3;
    do
    {
      v9 = *(v5 + v6);
      v7 = vaddw_high_u16(v7, v9);
      v8 = vaddw_u16(v8, *v9.i8);
      v6 += 16;
    }

    while (v6 != 128);
    v3 = vaddvq_s32(vaddq_s32(v8, v7));
    ++v2;
    v5 += v4;
  }

  while (v2 != 64);
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = 0;
    v13 = 0uLL;
    v14 = v11;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *(a1 + v12);
      v18 = vmull_high_u16(v17, v17);
      v19 = vmull_u16(*v17.i8, *v17.i8);
      v16 = vaddw_high_u32(v16, v18);
      v15 = vaddw_u32(v15, *v18.i8);
      v13 = vaddw_high_u32(v13, v19);
      v14 = vaddw_u32(v14, *v19.i8);
      v12 += 16;
    }

    while (v12 != 128);
    v20 = vaddvq_s64(vaddq_s64(vaddq_s64(v14, v15), vaddq_s64(v13, v16)));
    v11 = v20;
    ++v10;
    a1 += v4;
  }

  while (v10 != 64);
  return v20 - ((v3 * v3 + 2048) >> 12);
}

uint64_t sub_2774A206C(uint8x8_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1 + 2;
  v4 = 32;
  do
  {
    v5 = *v3[-2].i8;
    v6 = vmovl_high_u8(v5);
    v7 = vmovl_u8(*v5.i8);
    v8 = vmovl_u8(*v3);
    v9 = vmovl_high_u8(*v3->i8);
    v2 = vaddvq_s32(vaddq_s32(vaddw_u16(vaddw_u16(v2, *v7.i8), *v8.i8), vaddq_s32(vaddl_u16(*v6.i8, *v9.i8), vaddq_s32(vaddl_high_u16(v7, v8), vaddl_high_u16(v6, v9)))));
    v3 = (v3 + a2);
    --v4;
  }

  while (v4);
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = 0;
    v13 = 0uLL;
    v14 = v11;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = *a1[v12].i8;
      v22 = vmull_high_u8(v21, v21);
      v23 = vmull_u8(*v21.i8, *v21.i8);
      v24 = vmovl_u16(*v23.i8);
      v25 = vmovl_high_u16(v22);
      v26 = vmovl_high_u16(v23);
      v27 = vmovl_u16(*v22.i8);
      v16 = vaddw_high_u32(v16, v26);
      v18 = vaddw_high_u32(v18, v27);
      v17 = vaddw_u32(v17, *v27.i8);
      v15 = vaddw_u32(v15, *v26.i8);
      v13 = vaddw_high_u32(v13, v24);
      v19 = vaddw_u32(v19, *v25.i8);
      v14 = vaddw_u32(v14, *v24.i8);
      v20 = vaddw_high_u32(v20, v25);
      v12 += 2;
    }

    while (v12 != 4);
    v28 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v14, v17), vaddq_s64(v15, v19)), vaddq_s64(vaddq_s64(v13, v18), vaddq_s64(v16, v20))));
    v11 = v28;
    ++v10;
    a1 = (a1 + a2);
  }

  while (v10 != 32);
  return v28 - ((v2 * v2 + 512) >> 10);
}

uint64_t sub_2774A2188(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 2 * a2;
  v5 = a1;
  do
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = v3;
    do
    {
      v9 = *(v5 + v6);
      v7 = vaddw_high_u16(v7, v9);
      v8 = vaddw_u16(v8, *v9.i8);
      v6 += 16;
    }

    while (v6 != 64);
    v3 = vaddvq_s32(vaddq_s32(v8, v7));
    ++v2;
    v5 += v4;
  }

  while (v2 != 32);
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = 0;
    v13 = 0uLL;
    v14 = v11;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *(a1 + v12);
      v18 = vmull_high_u16(v17, v17);
      v19 = vmull_u16(*v17.i8, *v17.i8);
      v16 = vaddw_high_u32(v16, v18);
      v15 = vaddw_u32(v15, *v18.i8);
      v13 = vaddw_high_u32(v13, v19);
      v14 = vaddw_u32(v14, *v19.i8);
      v12 += 16;
    }

    while (v12 != 64);
    v20 = vaddvq_s64(vaddq_s64(vaddq_s64(v14, v15), vaddq_s64(v13, v16)));
    v11 = v20;
    ++v10;
    a1 += v4;
  }

  while (v10 != 32);
  return v20 - ((v3 * v3 + 512) >> 10);
}

uint64_t sub_2774A225C(uint8x16_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 16;
  v4 = a1;
  do
  {
    v5 = vmovl_high_u8(*v4);
    v6 = vmovl_u8(*v4->i8);
    v2 = vaddvq_s32(vaddq_s32(vaddw_u16(vaddw_u16(v2, *v6.i8), *v5.i8), vaddl_high_u16(v6, v5)));
    v4 = (v4 + a2);
    --v3;
  }

  while (v3);
  v7 = 0;
  v8 = 16;
  do
  {
    v9 = *a1;
    v10 = vmull_u8(*v9.i8, *v9.i8);
    v11 = vmull_high_u8(v9, v9);
    v12 = vmovl_u16(*v11.i8);
    v13 = vmovl_high_u16(v11);
    v14 = vmovl_high_u16(v10);
    v15 = vmovl_u16(*v10.i8);
    v16 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddw_u32(vaddw_u32(v7, *v15.i8), *v12.i8), vaddl_u32(*v14.i8, *v13.i8)), vaddq_s64(vaddl_high_u32(v15, v12), vaddl_high_u32(v14, v13))));
    v7 = v16;
    a1 = (a1 + a2);
    --v8;
  }

  while (v8);
  return v16 - ((v2 * v2 + 128) >> 8);
}

uint64_t sub_2774A2314(uint16x4_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1 + 2;
  v4 = 2 * a2;
  v5 = 16;
  do
  {
    v2 = vaddvq_s32(vaddq_s32(vaddw_u16(vaddw_u16(v2, v3[-2]), *v3), vaddl_high_u16(*v3[-2].i8, *v3->i8)));
    v3 = (v3 + v4);
    --v5;
  }

  while (v5);
  v6 = 0;
  v7 = &a1[2];
  v8 = 16;
  do
  {
    v9 = v7[-1];
    v10 = *v7;
    v11 = vmull_u16(*v9.i8, *v9.i8);
    v12 = vmull_high_u16(v9, v9);
    v13 = vmull_high_u16(v10, v10);
    v14 = vmull_u16(*v10.i8, *v10.i8);
    v15 = vaddvq_s64(vaddq_s64(vaddw_u32(vaddw_u32(v6, *v11.i8), *v14.i8), vaddq_s64(vaddl_u32(*v12.i8, *v13.i8), vaddq_s64(vaddl_high_u32(v11, v14), vaddl_high_u32(v12, v13)))));
    v6 = v15;
    v7 = (v7 + v4);
    --v8;
  }

  while (v8);
  return v15 - ((v2 * v2 + 128) >> 8);
}

uint64_t sub_2774A23C4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1;
  do
  {
    for (i = 0; i != 8; ++i)
    {
      v3 += *(v4 + i);
    }

    ++v2;
    v4 += a2;
  }

  while (v2 != 8);
  v6 = 0;
  v7 = 0;
  do
  {
    for (j = 0; j != 8; ++j)
    {
      v7 += *(a1 + j) * *(a1 + j);
    }

    ++v6;
    a1 += a2;
  }

  while (v6 != 8);
  return v7 - ((v3 * v3 + 32) >> 6);
}

uint64_t sub_2774A2440(uint16x4_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 2 * a2;
  v4 = 8;
  v5 = a1;
  do
  {
    v2 = vaddvq_s32(vaddw_high_u16(vaddw_u16(v2, *v5), *v5->i8));
    v5 = (v5 + v3);
    --v4;
  }

  while (v4);
  v6 = 0;
  v7 = 8;
  do
  {
    v8 = *a1->i8;
    v9 = vmull_u16(*v8.i8, *v8.i8);
    v10 = vmull_high_u16(v8, v8);
    v11 = vaddvq_s64(vaddq_s64(vaddw_u32(vaddw_u32(v6, *v9.i8), *v10.i8), vaddl_high_u32(v9, v10)));
    v6 = v11;
    a1 = (a1 + v3);
    --v7;
  }

  while (v7);
  return v11 - ((v2 * v2 + 32) >> 6);
}

uint64_t sub_2774A24CC(__int32 *a1, uint64_t a2, double a3, uint8x8_t a4)
{
  v4 = 0;
  v5 = 4;
  v6 = a1;
  do
  {
    a4.i32[0] = *v6;
    a4 = vmovl_u8(a4).u64[0];
    v4 = vaddvq_s32(vaddw_u16(v4, a4));
    v6 = (v6 + a2);
    --v5;
  }

  while (v5);
  for (i = 0; i != 4; ++i)
  {
    for (j = 0; j != 4; ++j)
    {
      LODWORD(v5) = v5 + *(a1 + j) * *(a1 + j);
    }

    a1 = (a1 + a2);
  }

  return v5 - ((v4 * v4 + 8) >> 4);
}

uint64_t sub_2774A2544(uint16x4_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 2 * a2;
  v4 = 4;
  v5 = a1;
  do
  {
    v2 = vaddvq_s32(vaddw_u16(v2, *v5));
    v5 = (v5 + v3);
    --v4;
  }

  while (v4);
  for (i = 0; i != 4; ++i)
  {
    for (j = 0; j != 4; ++j)
    {
      LODWORD(v4) = v4 + a1->u16[j] * a1->u16[j];
    }

    a1 = (a1 + v3);
  }

  return v4 - ((v2 * v2 + 8) >> 4);
}

unint64_t sub_2774A25BC(uint8x16_t *a1, uint64_t a2, int a3, int a4, int *a5, _DWORD *a6, uint64_t *a7)
{
  if (a4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a3 >> 3;
    v10 = 8 * v9;
    v11 = 4 * v9;
    do
    {
      if (a3 >= 1)
      {
        v12 = 0;
        v13 = (a4 - v7) >> 3;
        if (v13 >= 2)
        {
          v14 = 2;
        }

        else
        {
          v14 = v13;
        }

        v15 = a1;
        v16 = a5;
        do
        {
          if (v13 < 1)
          {
            v18 = 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v19 = (a3 - v12) >> 3;
            if (v19 >= 2)
            {
              v20 = 2;
            }

            else
            {
              v20 = v19;
            }

            v21 = v16;
            do
            {
              v22 = v21;
              v23 = v20;
              if (v19 >= 1)
              {
                do
                {
                  v24 = *v22++;
                  v18 += v24;
                  --v23;
                }

                while (v23);
              }

              ++v17;
              v21 = (v21 + v11);
            }

            while (v17 != v14);
          }

          v25 = 0;
          v26 = v15;
          v27 = 16;
          do
          {
            v28 = *v26;
            v29 = vmull_u8(*v28.i8, *v28.i8);
            v30 = vmull_high_u8(v28, v28);
            v31 = vmovl_u16(*v30.i8);
            v32 = vmovl_high_u16(v30);
            v33 = vmovl_high_u16(v29);
            v34 = vmovl_u16(*v29.i8);
            v35 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddw_u32(vaddw_u32(v25, *v34.i8), *v31.i8), vaddl_u32(*v33.i8, *v32.i8)), vaddq_s64(vaddl_high_u32(v34, v31), vaddl_high_u32(v33, v32))));
            v25 = v35;
            v26 = (v26 + a2);
            --v27;
          }

          while (v27);
          *a6++ = v18;
          *a7++ = v35;
          v8 += (v35 - ((v18 * v18) >> 8) + 128) >> 8;
          v12 += 16;
          v16 += 2;
          ++v15;
        }

        while (v12 < a3);
      }

      a1 += a2;
      v7 += 16;
      a5 = (a5 + v10);
    }

    while (v7 < a4);
  }

  return (v8 + ((a4 * a3) >> 9)) / ((a4 * a3) >> 8);
}

unint64_t sub_2774A275C(uint16x8_t *a1, uint64_t a2, int a3, int a4, int *a5, _DWORD *a6, uint64_t *a7)
{
  if (a4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a3 >> 3;
    v10 = 32 * a2;
    v11 = 8 * v9;
    v12 = 4 * v9;
    v13 = a1 + 1;
    v14 = 2 * a2;
    do
    {
      if (a3 >= 1)
      {
        v15 = 0;
        v16 = (a4 - v7) >> 3;
        if (v16 >= 2)
        {
          v17 = 2;
        }

        else
        {
          v17 = v16;
        }

        v18 = v13;
        v19 = a5;
        do
        {
          if (v16 < 1)
          {
            v21 = 0;
          }

          else
          {
            v20 = 0;
            v21 = 0;
            v22 = (a3 - v15) >> 3;
            if (v22 >= 2)
            {
              v23 = 2;
            }

            else
            {
              v23 = v22;
            }

            v24 = v19;
            do
            {
              v25 = v24;
              v26 = v23;
              if (v22 >= 1)
              {
                do
                {
                  v27 = *v25++;
                  v21 += v27;
                  --v26;
                }

                while (v26);
              }

              ++v20;
              v24 = (v24 + v12);
            }

            while (v20 != v17);
          }

          v28 = 0;
          v29 = v18;
          v30 = 16;
          do
          {
            v31 = v29[-1];
            v32 = *v29;
            v33 = vmull_u16(*v31.i8, *v31.i8);
            v34 = vmull_high_u16(v31, v31);
            v35 = vmull_high_u16(v32, v32);
            v36 = vmull_u16(*v32.i8, *v32.i8);
            v37 = vaddvq_s64(vaddq_s64(vaddw_u32(vaddw_u32(v28, *v33.i8), *v36.i8), vaddq_s64(vaddl_u32(*v34.i8, *v35.i8), vaddq_s64(vaddl_high_u32(v33, v36), vaddl_high_u32(v34, v35)))));
            v28 = v37;
            v29 = (v29 + v14);
            --v30;
          }

          while (v30);
          *a6++ = v21;
          *a7++ = v37;
          v8 += (v37 - ((v21 * v21) >> 8) + 128) >> 8;
          v15 += 16;
          v19 += 2;
          v18 += 2;
        }

        while (v15 < a3);
      }

      v7 += 16;
      a5 = (a5 + v11);
      v13 = (v13 + v10);
    }

    while (v7 < a4);
  }

  return (v8 + ((a4 * a3) >> 9)) / ((a4 * a3) >> 8);
}

unint64_t sub_2774A28FC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, _DWORD *a6, void *a7)
{
  if (a4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (a3 >= 1)
      {
        v9 = 0;
        v10 = a1;
        do
        {
          v11 = 0;
          if (v7 < a4 - 7 && a3 - v9 >= 8)
          {
            v11 = *(a5 + 4 * (v7 >> 3) * (a3 >> 3) + (v9 >> 1));
          }

          v12 = 0;
          v13 = 0;
          v14 = v10;
          do
          {
            for (i = 0; i != 8; ++i)
            {
              v13 += *(v14 + i) * *(v14 + i);
            }

            ++v12;
            v14 += a2;
          }

          while (v12 != 8);
          *a6++ = v11;
          *a7++ = v13;
          v8 += (v13 - ((v11 * v11) >> 6) + 32) >> 6;
          v9 += 8;
          v10 += 8;
        }

        while (v9 < a3);
      }

      a1 += 8 * a2;
      v7 += 8;
    }

    while (v7 < a4);
  }

  return (v8 + ((a4 * a3) >> 7)) / ((a4 * a3) >> 6);
}

unint64_t sub_2774A2A0C(uint16x8_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, _DWORD *a6, uint64_t *a7)
{
  if (a4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 16 * a2;
    v10 = 2 * a2;
    do
    {
      if (a3 >= 1)
      {
        v11 = 0;
        v12 = a1;
        do
        {
          v13 = 0;
          if (v7 < a4 - 7 && a3 - v11 >= 8)
          {
            v13 = *(a5 + 4 * (v7 >> 3) * (a3 >> 3) + (v11 >> 1));
          }

          v14 = 0;
          v15 = v12;
          v16 = 8;
          do
          {
            v17 = *v15;
            v18 = vmull_u16(*v17.i8, *v17.i8);
            v19 = vmull_high_u16(v17, v17);
            v20 = vaddvq_s64(vaddq_s64(vaddw_u32(vaddw_u32(v14, *v18.i8), *v19.i8), vaddl_high_u32(v18, v19)));
            v14 = v20;
            v15 = (v15 + v10);
            --v16;
          }

          while (v16);
          *a6++ = v13;
          *a7++ = v20;
          v8 += (v20 - ((v13 * v13) >> 6) + 32) >> 6;
          v11 += 8;
          ++v12;
        }

        while (v11 < a3);
      }

      a1 = (a1 + v9);
      v7 += 8;
    }

    while (v7 < a4);
  }

  return (v8 + ((a4 * a3) >> 7)) / ((a4 * a3) >> 6);
}

uint64_t sub_2774A2B24(uint16x4_t *a1, uint64_t a2, int a3, int a4, unsigned int *a5, unsigned int *a6)
{
  if (a4 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 16 * a2;
  v9 = 2 * a2;
  do
  {
    if (a3 >= 1)
    {
      v10 = 0;
      v11 = a1;
      do
      {
        v12 = 0;
        v13 = v11;
        v14 = 8;
        do
        {
          v12 = vaddvq_s32(vaddw_high_u16(vaddw_u16(v12, *v13), *v13->i8));
          v13 = (v13 + v9);
          --v14;
        }

        while (v14);
        v15 = 0;
        v16 = vdupq_n_s32((v12 + 32) >> 6);
        v17 = v11;
        v18 = 8;
        do
        {
          v15 = vaddvq_s32(vabaq_u32(vabaq_u32(v15, v16, vmovl_u16(*v17)), v16, vmovl_high_u16(*v17->i8)));
          v17 = (v17 + v9);
          --v18;
        }

        while (v18);
        *a5++ = v12;
        *a6++ = v15;
        v7 = v15 + v7;
        v10 += 8;
        v11 += 2;
      }

      while (v10 < a3);
    }

    a1 = (a1 + v8);
    v6 += 8;
  }

  while (v6 < a4);
  return v7;
}

uint64_t sub_2774A2C08(uint16x4_t *a1, uint64_t a2, int a3, int a4, unsigned int *a5, _DWORD *a6, unsigned int *a7, uint64_t a8)
{
  if (a4 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 16 * a2;
  v11 = 2 * a2;
  do
  {
    if (a3 >= 1)
    {
      v12 = 0;
      v13 = a1;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = 8;
        do
        {
          v14 = vaddvq_s32(vaddw_high_u16(vaddw_u16(v14, *v15), *v15->i8));
          v15 = (v15 + v11);
          --v16;
        }

        while (v16);
        v17 = (v14 + 32) >> 6;
        v18 = vdupq_n_s32(v17);
        v19 = v13;
        v20 = 8;
        do
        {
          LODWORD(v16) = vaddvq_s32(vabaq_u32(vabaq_u32(v16, v18, vmovl_u16(*v19)), v18, vmovl_high_u16(*v19->i8)));
          v19 = (v19 + v11);
          --v20;
        }

        while (v20);
        *a5++ = v14;
        *a6++ = v16;
        v9 = (v16 + v9);
        *a7++ = (v16 * *(a8 + 2 * v17)) >> 8;
        v12 += 8;
        v13 += 2;
      }

      while (v12 < a3);
    }

    a1 = (a1 + v10);
    v8 += 8;
  }

  while (v8 < a4);
  return v9;
}

uint64_t sub_2774A2D00(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5, int *a6)
{
  if (a4 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 16 * a2;
  v9 = 2 * a2;
  do
  {
    if (a3 >= 1)
    {
      v10 = 0;
      v11 = a1;
      do
      {
        v12 = 0;
        *a5 = 0;
        *a6 = 0;
        v13 = 1;
        do
        {
          v14 = 0;
          v15 = v13;
          v16 = v9 * v12;
          v17 = 1;
          do
          {
            v18 = 0;
            v19 = v17;
            v20 = 2 * v14;
            v21 = 4;
            v22 = (v11 + v16 + 2 * v14);
            do
            {
              v18 = vaddvq_s32(vaddw_u16(v18, *v22));
              v22 = (v22 + v9);
              --v21;
            }

            while (v21);
            v23 = 0;
            v24 = vdupq_n_s32((v18 + 8) >> 4);
            v25 = v16 + v20;
            v26 = 4;
            do
            {
              v23 = vaddvq_s32(vabaq_s32(v23, vmovl_u16(*(v11 + v25)), v24));
              v25 += v9;
              --v26;
            }

            while (v26);
            v17 = 0;
            *a6 += v23;
            *a5 += v18;
            v14 = 4;
          }

          while ((v19 & 1) != 0);
          v13 = 0;
          v12 = 4;
        }

        while ((v15 & 1) != 0);
        ++a5;
        v27 = *a6++;
        v7 = (v27 + v7);
        v10 += 8;
        v11 += 16;
      }

      while (v10 < a3);
    }

    a1 += v8;
    v6 += 8;
  }

  while (v6 < a4);
  return v7;
}

uint64_t sub_2774A2E3C(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5, int *a6, _DWORD *a7, uint64_t a8)
{
  if (a4 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 16 * a2;
  v11 = 2 * a2;
  do
  {
    if (a3 >= 1)
    {
      v12 = 0;
      v13 = a1;
      do
      {
        v14 = 0;
        *a5 = 0;
        *a6 = 0;
        v15 = 1;
        *a7 = 0;
        do
        {
          v16 = 0;
          v17 = v15;
          v18 = v11 * v14;
          v19 = 1;
          do
          {
            v20 = 0;
            v21 = v19;
            v22 = 2 * v16;
            v23 = 4;
            v24 = (v13 + v18 + 2 * v16);
            do
            {
              v20 = vaddvq_s32(vaddw_u16(v20, *v24));
              v24 = (v24 + v11);
              --v23;
            }

            while (v23);
            v25 = (v20 + 8) >> 4;
            v26 = vdupq_n_s32(v25);
            v27 = v18 + v22;
            v28 = 4;
            do
            {
              LODWORD(v23) = vaddvq_s32(vabaq_s32(v23, vmovl_u16(*(v13 + v27)), v26));
              v27 += v11;
              --v28;
            }

            while (v28);
            v19 = 0;
            *a6 += v23;
            v29 = *(a8 + 2 * v25);
            *a5 += v20;
            *a7 += (v23 * v29) >> 8;
            v16 = 4;
          }

          while ((v21 & 1) != 0);
          v15 = 0;
          v14 = 4;
        }

        while ((v17 & 1) != 0);
        ++a5;
        ++a7;
        v30 = *a6++;
        v9 = (v30 + v9);
        v12 += 8;
        v13 += 16;
      }

      while (v12 < a3);
    }

    a1 += v10;
    v8 += 8;
  }

  while (v8 < a4);
  return v9;
}

uint64_t sub_2774A2FA0(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  if (a4 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (a3 >= 1)
    {
      v8 = 0;
      v9 = a1;
      do
      {
        v10 = 0;
        v11 = 0;
        v12 = v9;
        do
        {
          for (i = 0; i != 8; ++i)
          {
            v11 += *(v12 + i);
          }

          ++v10;
          v12 += a2;
        }

        while (v10 != 8);
        v14 = 0;
        v15 = 0;
        v17 = v9;
        do
        {
          for (j = 0; j != 8; ++j)
          {
            v16 = (v11 + 32) >> 6;
            v19 = *(v17 + j) - v16;
            if (v19 < 0)
            {
              v19 = v16 - *(v17 + j);
            }

            v15 += v19;
          }

          ++v14;
          v17 += a2;
        }

        while (v14 != 8);
        *a5++ = v11;
        *a6++ = v15;
        v7 = (v15 + v7);
        v8 += 8;
        v9 += 8;
      }

      while (v8 < a3);
    }

    a1 += 8 * a2;
    v6 += 8;
  }

  while (v6 < a4);
  return v7;
}

uint64_t sub_2774A3084(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5, _DWORD *a6, unsigned int *a7, uint64_t a8)
{
  if (a4 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    if (a3 >= 1)
    {
      v10 = 0;
      v11 = a1;
      do
      {
        v12 = 0;
        v13 = 0;
        v14 = v11;
        do
        {
          for (i = 0; i != 8; ++i)
          {
            v13 += *(v14 + i);
          }

          ++v12;
          v14 += a2;
        }

        while (v12 != 8);
        v16 = 0;
        v17 = 0;
        v18 = (v13 + 32) >> 6;
        v19 = v11;
        do
        {
          for (j = 0; j != 8; ++j)
          {
            v21 = *(v19 + j) - v18;
            if (v21 < 0)
            {
              v21 = v18 - *(v19 + j);
            }

            v17 += v21;
          }

          ++v16;
          v19 += a2;
        }

        while (v16 != 8);
        *a5++ = v13;
        *a6++ = v17;
        v9 = (v17 + v9);
        *a7++ = (v17 * *(a8 + 2 * v18)) >> 8;
        v10 += 8;
        v11 += 8;
      }

      while (v10 < a3);
    }

    a1 += 8 * a2;
    v8 += 8;
  }

  while (v8 < a4);
  return v9;
}

uint64_t sub_2774A3180(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5, int *a6, double a7, int32x4_t a8, int32x4_t a9)
{
  if (a4 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    if (a3 >= 1)
    {
      v11 = 0;
      v12 = a1;
      do
      {
        v13 = 0;
        *a5 = 0;
        *a6 = 0;
        v14 = 1;
        do
        {
          v15 = 0;
          v16 = v14;
          v17 = v13 * a2;
          LOBYTE(v18) = 1;
          do
          {
            v19 = 0;
            v20 = v18;
            v21 = (v12 + v17 + v15);
            v22 = 4;
            do
            {
              a8.i32[0] = *v21;
              a8.i64[0] = vmovl_u8(*a8.i8).u64[0];
              v19 = vaddvq_s32(vaddw_u16(v19, *a8.i8));
              v21 = (v21 + a2);
              --v22;
            }

            while (v22);
            v23 = 0;
            v24 = vdupq_n_s32((v19 + 8) >> 4);
            v25 = v17 + v15;
            v18 = 4;
            do
            {
              a9.i32[0] = *(v12 + v25);
              a9 = vmovl_u16(*&vmovl_u8(*a9.i8));
              a8 = vabaq_s32(v23, a9, v24);
              v23 = vaddvq_s32(a8);
              v25 += a2;
              --v18;
            }

            while (v18);
            *a6 += v23;
            *a5 += v19;
            v15 = 4;
          }

          while ((v20 & 1) != 0);
          v14 = 0;
          v13 = 4;
        }

        while ((v16 & 1) != 0);
        ++a5;
        v26 = *a6++;
        v10 = (v26 + v10);
        v11 += 8;
        v12 += 8;
      }

      while (v11 < a3);
    }

    a1 += 8 * a2;
    v9 += 8;
  }

  while (v9 < a4);
  return v10;
}

uint64_t sub_2774A32B8(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5, int *a6, _DWORD *a7, uint64_t a8, double a9, int32x4_t a10, int32x4_t a11)
{
  if (a4 < 1)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    if (a3 >= 1)
    {
      v13 = 0;
      v14 = a1;
      do
      {
        v15 = 0;
        *a5 = 0;
        *a6 = 0;
        v16 = 1;
        *a7 = 0;
        do
        {
          v17 = 0;
          v18 = v16;
          v19 = v15 * a2;
          LOBYTE(v20) = 1;
          do
          {
            v21 = 0;
            v22 = v20;
            v23 = (v14 + v19 + v17);
            v24 = 4;
            do
            {
              a10.i32[0] = *v23;
              a10.i64[0] = vmovl_u8(*a10.i8).u64[0];
              v21 = vaddvq_s32(vaddw_u16(v21, *a10.i8));
              v23 = (v23 + a2);
              --v24;
            }

            while (v24);
            v25 = (v21 + 8) >> 4;
            v26 = vdupq_n_s32(v25);
            v27 = v19 + v17;
            v20 = 4;
            do
            {
              a11.i32[0] = *(v14 + v27);
              a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
              a10 = vabaq_s32(v24, a11, v26);
              LODWORD(v24) = vaddvq_s32(a10);
              v27 += a2;
              --v20;
            }

            while (v20);
            *a6 += v24;
            v28 = *(a8 + 2 * v25);
            *a5 += v21;
            *a7 += (v24 * v28) >> 8;
            v17 = 4;
          }

          while ((v22 & 1) != 0);
          v16 = 0;
          v15 = 4;
        }

        while ((v18 & 1) != 0);
        ++a5;
        ++a7;
        v29 = *a6++;
        v12 = (v29 + v12);
        v13 += 8;
        v14 += 8;
      }

      while (v13 < a3);
    }

    a1 += 8 * a2;
    v11 += 8;
  }

  while (v11 < a4);
  return v12;
}

int *sub_2774A3418(int *result, uint64_t a2)
{
  if ((*(*a2 + 748) & 1) == 0)
  {
    v2 = result;
    *(*a2 + 748) |= 1u;
    sub_2774A3630(result, a2);
    v10 = (*(v2 + 4744) >> 3);
    v11 = (*(v2 + 4748) >> 3);
    if (*(v2 + 17) == 1 && *(v2 + 5588) >= 1 && v11 >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        if (v10 >= 1)
        {
          v16 = 0;
          v17 = v10;
          do
          {
            if (!sub_2774A54C0(v2, v16, 8 * v13, 8, v3, v4, v5, v6, v7, v8, v9))
            {
              v15 += **(v2 + 4912);
              ++v14;
            }

            v16 += 8;
            --v17;
          }

          while (v17);
        }

        ++v13;
      }

      while (v13 != v11);
      if (v14 >= 1)
      {
        v18 = (v15 + (v14 >> 1)) / v14;
        if (v18 >= 2)
        {
          v19 = __clz(v18);
          v20 = ((byte_27753C3A4[(v18 << (v19 + 1)) >> 24] << 12) | 0x200000u) >> ((v19 + 1) >> 1);
          if ((v19 & 1) == 0)
          {
            v20 = (11585 * v20) >> 14;
          }

          v18 = (v20 + 16) >> 5;
        }

        *(v2 + 5584) = v18;
      }
    }

    result = (*(v2 + 200))(v10, v11, *(v2 + 4864), *(v2 + 4968), *(v2 + 4888));
    v21 = *(v2 + 2240);
    v22 = *(v21 + 576);
    v23 = *(v22 + 493);
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *(v2 + 4840);
        if (v24 >= 2)
        {
          v25 = __clz(v24);
          v26 = ((byte_27753C3A4[(v24 << (v25 + 1)) >> 24] << 12) | 0x200000u) >> ((v25 + 1) >> 1);
          if ((v25 & 1) == 0)
          {
            v26 = (11585 * v26) >> 14;
          }

          v24 = (v26 + 16) >> 5;
        }

        goto LABEL_26;
      }

      if (v23 != 4)
      {
        goto LABEL_27;
      }
    }

    else if (v23 < 2)
    {
      v24 = *(v2 + 4836);
LABEL_26:
      *(v2 + 4856) = v24;
LABEL_27:
      if (*(v22 + 870) == 1)
      {
        *(*(v21 + 632) + 1152) = *(v2 + 4828);
      }

      return result;
    }

    v24 = *(v2 + 4840);
    goto LABEL_26;
  }

  return result;
}

void sub_2774A3630(int *a1, uint64_t a2)
{
  if ((*(*a2 + 748) & 4) == 0)
  {
    *(*a2 + 748) |= 4u;
    v2 = *(*(a1 + 280) + 576);
    v23 = *(*a2 + 416);
    v24 = *(*a2 + 400);
    v3 = (*&a1[2 * (v2[493] != 0) + 16])();
    v4 = a1;
    v25 = v3;
    if ((v2[484] & 1) != 0 || v2[487] == 1)
    {
      v5 = a1[1186];
      v26 = a1[1187];
      if ((atomic_load_explicit(&qword_280A712B8, memory_order_acquire) & 1) == 0)
      {
        v22 = __cxa_guard_acquire(&qword_280A712B8);
        v4 = a1;
        if (v22)
        {
          dword_280A712B0 = *(*(*(a1 + 280) + 40) + 2113) - 3;
          __cxa_guard_release(&qword_280A712B8);
          v4 = a1;
        }
      }

      v6 = dword_280A712B0;
      if ((dword_280A712B0 & 0x80000000) == 0)
      {
        v7 = 0;
        v8 = v4 + 1344;
        do
        {
          if (v26 >= 1)
          {
            v27 = 0;
            v9 = 8 << v7;
            v10 = 1 << v7;
            do
            {
              if (v5 >= 1)
              {
                v11 = 0;
                if ((v26 - v27) >> 3 >= v10)
                {
                  v12 = 1 << v7;
                }

                else
                {
                  v12 = (v26 - v27) >> 3;
                }

                v30 = v12;
                v29 = v12 << 6;
                v13 = v5;
                do
                {
                  if (v13 >> 3 >= v10)
                  {
                    v14 = v10;
                  }

                  else
                  {
                    v14 = (v13 >> 3);
                  }

                  v15 = (*(v4 + 23))(*(v4 + 608) + 4 * (v5 >> 3) * (v27 >> 3) + 4 * (v11 >> 3), v5 >> 3, v14, v30);
                  v4 = a1;
                  *(*&v8[2 * v7] + 4 * ((v5 - 1 + (8 << v7)) >> (v7 + 3)) * (v27 >> (v7 + 3)) + 4 * (v11 >> (v7 + 3))) = (v15 + ((v29 * v14) >> 1)) / (v29 * v14);
                  v11 += v9;
                  v13 -= v9;
                }

                while (v11 < v5);
              }

              v27 += v9;
            }

            while (v27 < v26);
            v6 = dword_280A712B0;
          }
        }

        while (v7++ < v6);
      }
    }

    if (*(v4 + 16) == 1)
    {
      v17 = (*&v4[2 * *v4 + 14])(v24, v23, v4[1186], v4[1187], *(v4 + 608), *(v4 + 627), *(v4 + 630));
      v4 = a1;
      a1[1210] = v17;
    }

    v18 = (v4[1187] >> 3) * (v4[1186] >> 3);
    v19 = (v25 + (v18 >> 1)) / v18;
    v4[1207] = v19;
    if (v19 >= 2)
    {
      v20 = __clz(v19);
      v21 = ((byte_27753C3A4[(v19 << (v20 + 1)) >> 24] << 12) | 0x200000u) >> ((v20 + 1) >> 1);
      if ((v20 & 1) == 0)
      {
        v21 = (11585 * v21) >> 14;
      }

      v19 = (v21 + 16) >> 5;
    }

    v4[1209] = v19;
  }
}

void sub_2774A3938(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v2;
  v42 = *MEMORY[0x277D85DE8];
  if ((*(*(*(v1 + 2240) + 576) + 913) & 1) == 0)
  {
    v19 = *v2;
    *(v19 + 672) = -1;
    *(v19 + 664) = -1;
    *(v19 + 680) = 0;
    return;
  }

  v5 = v3;
  v6 = v1;
  sub_2774A3630(v1, v2);
  v7 = *(v6 + 5016);
  v8 = *(v6 + 5040);
  v9 = *(v6 + 5024);
  bzero(v41, 0x2000uLL);
  v10 = v9 - v7;
  if (v9 == v7)
  {
    v18 = 0;
  }

  else
  {
    v11 = v10 >> 2;
    do
    {
      v12 = *v7;
      v7 += 4;
      v13 = (v12 * v12 + 32) >> 6;
      v14 = *v8;
      v8 += 2;
      v15 = (16 * (v14 - v13) + 512) & 0xFFFFFC00;
      if (v15)
      {
        v16 = __clz(v15);
        v17 = ((byte_27753C3A4[(v15 << (v16 + 1)) >> 24] << 12) | 0x200000u) >> ((v16 + 1) >> 1);
        if ((v16 & 1) == 0)
        {
          v17 = (11585 * v17) >> 14;
        }

        v15 = (v17 + 16) >> 5;
      }

      if (v15 >= 0x7FF)
      {
        v15 = 2047;
      }

      ++v41[v15];
      --v11;
    }

    while (v11);
    v18 = v41[0];
  }

  v20 = 30 * (v10 >> 2);
  if (v18 >= v20 >> 7)
  {
    v23 = 0;
    if (v5)
    {
LABEL_19:
      *(*v4 + 676) = v23;
      return;
    }
  }

  else
  {
    v21 = 0;
    v22 = v20 >> 7;
    do
    {
      v23 = v21 + 1;
      if (v21 > 0x7FD)
      {
        break;
      }

      v18 += v41[++v21];
    }

    while (v18 < v22);
    if (v5)
    {
      goto LABEL_19;
    }
  }

  if (*(*(v6 + 2240) + 648) >= 3u)
  {
    v25 = *(v6 + 5464);
    v26 = *(v6 + 5468);
    v27 = *(v6 + 5456);
    bzero(v41, 0x2000uLL);
    if (v26)
    {
      v28 = 0;
      v29 = *(v6 + 5432);
      do
      {
        v30 = v29;
        v31 = v25;
        if (v25)
        {
          do
          {
            v33 = *v30++;
            v32 = v33;
            if (v33 >= 0x7FF)
            {
              v32 = 2047;
            }

            ++v41[v32];
            --v31;
          }

          while (v31);
        }

        ++v28;
        v29 += v27;
      }

      while (v28 != v26);
      v34 = v41[0];
    }

    else
    {
      v34 = 0;
    }

    v35 = 30 * v25 * v26;
    if (v34 >= v35 >> 7)
    {
      v38 = 0;
    }

    else
    {
      v36 = 0;
      v37 = v35 >> 7;
      do
      {
        v38 = v36 + 1;
        if (v36 > 0x7FD)
        {
          break;
        }

        v34 += v41[++v36];
      }

      while (v34 < v37);
    }

    v39 = *v4;
    if (v38 >= v23)
    {
      v40 = v23;
    }

    else
    {
      v40 = v38;
    }

    v39[166] = v23;
    v39[167] = v38;
    v39[168] = v40;
  }

  else
  {
    v24 = *v4;
    v24[166] = v23;
    v24[167] = -1;
    v24[168] = v23;
  }
}

uint64_t sub_2774A3C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = -1;
  v4 = a3;
  while (1)
  {
    v4 = *(a2 + 4 * v4);
    if (!v4)
    {
      break;
    }

    if (v4 >= a3)
    {
      a3 = a3;
    }

    else
    {
      a3 = v4;
    }

    if (++v3 >= *(a1 + 4824))
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("FindMinInd Fails!\n", 0x12uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "FindMinInd Fails!\n");
      }

      return 0;
    }
  }

  return a3;
}

void sub_2774A3CB4(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v5 = *(a2 + 4 * a5);
  if (a5 == a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4;
  }

  *(a2 + 4 * a5) = v6;
  if (a3 >= 2)
  {
    v7 = a3 - 1;
    v8 = (a2 + 4);
    do
    {
      v9 = *v8;
      if (*v8 && (v9 == a5 || v9 == *(a2 + 4 * a5)))
      {
        *v8 = a4;
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  v10 = 0;
  while (v5)
  {
    v11 = *(a2 + 4 * v5);
    if (v5 == a4)
    {
      v12 = 0;
    }

    else
    {
      v12 = a4;
    }

    *(a2 + 4 * v5) = v12;
    if (a3 >= 2)
    {
      v13 = (a2 + 4);
      v14 = a3 - 1;
      do
      {
        v15 = *v13;
        if (*v13 && (v15 == v5 || v15 == *(a2 + 4 * v5)))
        {
          *v13 = a4;
        }

        ++v13;
        --v14;
      }

      while (v14);
    }

    v5 = v11;
    if (v10++ >= *(a1 + 4824))
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("InsertNewInd Fails!\n", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "InsertNewInd Fails!\n");
      }

      return;
    }
  }
}

uint64_t sub_2774A3DD4(uint64_t a1)
{
  v2 = *(a1 + 2256);
  sub_277487028(*(a1 + 2224) + 48, *(v2[2] + 2117));
  v3 = *(a1 + 2224);
  (*(*v3 + 16))(v3, 0, *(v3 + 524), 0);
  sub_277487440(v3 + 48, 0, *(v3 + 524));
  std::mutex::lock((v3 + 1040));
  atomic_store(0x7FFFFFFFu, (v3 + 1032));
  std::mutex::unlock((v3 + 1040));
  std::condition_variable::notify_all((v3 + 1104));
  v4 = v2[209];
  v2[209] = *(a1 + 2224);
  *(a1 + 2224) = v4;
  v5 = v2[210];
  v2[210] = *(a1 + 2232);
  *(a1 + 2232) = v5;
  v6 = *(a1 + 2256);
  result = sub_2774BD078(a1 + 4008, *(*(v6 + 4768) + 216), *(*(v6 + 4768) + 220), *(*(v6 + 16) + 2096), *(*(v6 + 4768) + 96), *(*(v6 + 16) + 2099), *(*(a1 + 2240) + 648), 0, v6 + 657);
  if (!result)
  {
    *(a1 + 4168) = 0;
    *(a1 + 4176) = 0x100010001000100;
    *(a1 + 4032) = 0;
    *(a1 + 4040) = 0;
    v8 = *(*(a1 + 2256) + 4768);
    v9 = 164;
    if ((*(v8 + 184) & 4) == 0)
    {
      v9 = 160;
    }

    v10 = *(v8 + v9);
    if (*(a1 + 17))
    {
      v10 = 1;
    }

    if (*(a1 + 4756) < v10)
    {
      v10 = *(a1 + 4756);
    }

    *(a1 + 4616) = v10;
    v11 = v10;
    v12 = *(a1 + 4600);
    v13 = *(a1 + 4592);
    v14 = v12 - v13;
    v15 = 0x4EC4EC4EC4EC4EC5 * ((v12 - v13) >> 10);
    v16 = v10 >= v15;
    v17 = v10 - v15;
    if (v17 != 0 && v16)
    {
      v18 = *(a1 + 4608);
      if (0x4EC4EC4EC4EC4EC5 * ((v18 - v12) >> 10) >= v17)
      {
        v44 = v12 + 13312 * v17;
        v45 = v12 + 16;
        do
        {
          bzero((v45 - 16), 0x3400uLL);
          sub_27745E6C8(v45);
          v46 = (v45 + 12856);
          *(v45 + 12920) = 0;
          *(v45 + 12888) = 0u;
          *(v45 + 12904) = 0u;
          v47 = v45 + 13296;
          v45 += 13312;
          *v46 = 0u;
          v46[1] = 0u;
        }

        while (v47 != v44);
        *(a1 + 4600) = v44;
      }

      else
      {
        if (v10 < 0)
        {
          sub_2773C0914();
        }

        v19 = 0x9D89D89D89D89D8ALL * ((v18 - v13) >> 10);
        if (v19 <= v10)
        {
          v19 = v10;
        }

        if ((0x4EC4EC4EC4EC4EC5 * ((v18 - v13) >> 10)) >= 0x2762762762762)
        {
          v20 = 0x4EC4EC4EC4EC4;
        }

        else
        {
          v20 = v19;
        }

        if (v20 > 0x4EC4EC4EC4EC4)
        {
          sub_2773C5248();
        }

        v21 = 13312 * v20;
        v22 = operator new(13312 * v20, 0x40uLL);
        v23 = &v22[v14];
        v105 = &v22[v21];
        v24 = &v22[13312 * v11];
        v25 = &v22[v14 + 16];
        do
        {
          bzero((v25 - 16), 0x3400uLL);
          sub_27745E6C8(v25);
          v26 = (v25 + 12856);
          *(v25 + 12920) = 0;
          *(v25 + 12888) = 0u;
          *(v25 + 12904) = 0u;
          v27 = v25 + 13296;
          v25 += 13312;
          *v26 = 0u;
          v26[1] = 0u;
        }

        while (v27 != v24);
        v28 = *(a1 + 4600);
        v29 = *(a1 + 4592);
        v30 = &v23[-(v28 - v29)];
        *&v31 = v24;
        *(&v31 + 1) = v105;
        v106 = v31;
        if (v28 != v29)
        {
          v32 = v29 + 12896;
          v33 = &v22[v12 - ((v28 - v29) >> 10 << 10) - v13 + 12896];
          v34 = v30;
          v35 = *(a1 + 4592);
          do
          {
            memcpy(v34, v35, 0x3248uLL);
            v36 = 0;
            *(v34 + 1609) = 0;
            *(v34 + 805) = 0u;
            *(v34 + 1609) = *(v35 + 12872);
            *(v34 + 805) = *(v35 + 12880);
            *(v35 + 12872) = 0u;
            *(v35 + 12888) = 0;
            do
            {
              v37 = (v33 + v36 * 8);
              v38 = &v32[v36];
              *v37 = 0;
              v37[1] = 0;
              v37[2] = 0;
              *v37 = *&v32[v36];
              *&v34[v36 * 8 + 12912] = *(v35 + v36 * 8 + 12912);
              *v38 = 0;
              v38[1] = 0;
              v38[2] = 0;
              v36 += 3;
            }

            while (v36 != 6);
            memcpy(v34 + 12944, (v35 + 12944), 0x140uLL);
            v39 = *(v35 + 13264);
            v35 += 13312;
            *(v34 + 1658) = v39;
            v34 += 13312;
            v32 += 1664;
            v33 += 13312;
          }

          while (v35 != v28);
          do
          {
            sub_2774A5650(v29);
            v29 += 13312;
          }

          while (v29 != v28);
        }

        v40 = *(a1 + 4592);
        *(a1 + 4592) = v30;
        *&v41 = v40;
        *(&v41 + 1) = *(a1 + 4608);
        *(a1 + 4600) = v106;
        while (v41 != v40)
        {
          *&v41 = v41 - 13312;
          v107 = v41;
          sub_2774A5650(v41);
          v41 = v107;
        }

        if (v40)
        {
          MEMORY[0x277CAD360](v40, 64);
        }
      }
    }

    else if (!v16)
    {
      v42 = v13 + 13312 * v10;
      v43 = (v12 - 13312);
      while (v12 != v42)
      {
        v12 -= 13312;
        sub_2774A5650(v43);
        v43 -= 1664;
      }

      *(a1 + 4600) = v42;
    }

    if (*(a1 + 4616) <= 0)
    {
      *(a1 + 5576) = 0;
      v56 = *(*(*(a1 + 2240) + 40) + 2113);
      *(a1 + 5504) = 0;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = *(a1 + 4592);
      v51 = 13264;
      do
      {
        sub_27745EA44(v50 + v48, *(a1 + 2256), a1 + 4008, 0, 0, 1, 0, 0);
        v52 = *(a1 + 4592) + v51;
        v53 = *(*(v52 - 320) + 1672);
        *(v52 - 574) = 0;
        *(v52 - 572) = *(v53 + 520);
        LODWORD(v53) = *(v53 + 524);
        v54 = (v52 - 564);
        v50 = *(a1 + 4592);
        *(v50 + v51) = 0;
        *v54 = v53;
        ++v49;
        v55 = *(a1 + 4616);
        v51 += 13312;
        v48 += 13312;
      }

      while (v49 < v55);
      *(a1 + 5576) = 0;
      v56 = *(*(*(a1 + 2240) + 40) + 2113);
      *(a1 + 5504) = 0;
      if (v55 > 1)
      {
        sub_2773F16F4((*(a1 + 2256) + 4800), *(*(a1 + 2256) + 16));
      }
    }

    v57 = *(a1 + 4756);
    if (v57)
    {
      v58 = 0;
      v59 = *(a1 + 4752);
      do
      {
        if (v59)
        {
          for (i = 0; i < v59; ++i)
          {
            *(a1 + 5504) += sub_2774A4778(a1, i << v56, v58 << v56, 0, *(a1 + 4592));
            v59 = *(a1 + 4752);
          }

          v57 = *(a1 + 4756);
        }

        ++v58;
      }

      while (v58 < v57);
    }

    v61 = *(a1 + 2240);
    v62 = 1 << (*(*(v61 + 40) + 2113) - *(a1 + 5500));
    v63 = (v62 - 1 + *(a1 + 4748)) / v62 * ((v62 - 1 + *(a1 + 4744)) / v62);
    if (v63 < 1)
    {
      *(a1 + 5512) = 0;
      *(a1 + 5508) = 0;
    }

    else
    {
      v64 = *(a1 + 5504);
      *(a1 + 5508) = sqrt(((v64 + (v63 >> 1)) / v63));
      v65 = v63 << (2 * *(a1 + 5496) - 6);
      v66 = (v64 + (v65 >> 1)) / v65;
      v67 = *(a1 + 4828);
      *(a1 + 5512) = sqrt(v67);
      *(a1 + 5516) = sqrt(v66);
      if (v66 >= 3 * v67)
      {
        *(*(v61 + 616) + 1172) = 1;
      }
    }

    v68 = *(v61 + 576);
    if (*(v68 + 937) == 1)
    {
      v69 = *(a1 + 5472);
      v70 = *(a1 + 5468);
      if (v70)
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v74 = *(a1 + 5464);
        v75 = *(a1 + 5472);
        do
        {
          if (v74)
          {
            v76 = 0;
            do
            {
              v77 = *(v75 + v76);
              v73 += v77;
              v71 += (v77 * v77);
              v76 += 4;
            }

            while (4 * v74 != v76);
          }

          ++v72;
          v75 += 4 * *(a1 + 5456);
        }

        while (v72 != v70);
        v78 = v74 * v70;
        if (v78 > 0)
        {
          v73 = (v73 + (v78 >> 1)) / v78;
          v71 = (v71 + (v78 >> 1)) / v78 - (v73 * v73);
        }

        if (v73 <= 1)
        {
          v73 = 1;
        }

        if (v71 >= 2)
        {
          v79 = __clz(v71);
          v80 = ((byte_27753C3A4[(v71 << (v79 + 1)) >> 24] << 12) | 0x200000u) >> ((v79 + 1) >> 1);
          if ((v79 & 1) == 0)
          {
            v80 = (11585 * v80) >> 14;
          }

          LODWORD(v71) = (v80 + 16) >> 5;
        }
      }

      else
      {
        LODWORD(v71) = 0;
        v73 = 1;
      }

      v81 = v71 / v73;
      if (*(*(v61 + 616) + 1172))
      {
        v82 = 0;
        v83 = 0;
        v84 = 10.0;
      }

      else
      {
        v84 = *(v68 + 312);
        v83 = *(v68 + 320);
        v82 = *(v68 + 316);
      }

      v85 = *(a1 + 5408);
      v86 = v83 + 1;
      v87 = (v81 + (v84 * v83)) / (v83 + 1);
      *(v68 + 312) = v87;
      v88 = (v73 + (v86 >> 1) + v82 * v83) / v86;
      *(v68 + 316) = v88;
      *(v68 + 320) = v86;
      *(a1 + 52) = v88;
      if (v88 >= 90)
      {
        v89 = 90;
      }

      else
      {
        v89 = v88;
      }

      if (v89 <= 30)
      {
        v89 = 30;
      }

      v90 = 1.0;
      v91 = ((v89 - 30) * -0.005) + 1.0;
      *(a1 + 56) = v87 > v91;
      v92 = (v87 - v91) * 10.0;
      if (v92 < 1.0)
      {
        v90 = (v87 - v91) * 10.0;
      }

      v93 = v92 > 0.0;
      v94 = 0.0;
      if (v93)
      {
        v94 = v90;
      }

      *(a1 + 60) = v94;
      if (v70 && !*(v61 + 648) && v87 > v91)
      {
        v95 = 0;
        v96 = *(a1 + 5464);
        v97 = 4 * *(a1 + 5456);
        v98 = v96;
        do
        {
          if (v98)
          {
            v99 = 0;
            do
            {
              v100 = *(v69 + 4 * v99);
              v16 = v73 >= v100;
              v101 = v73 - v100;
              if (v101 != 0 && v16)
              {
                if (v101 >= 21)
                {
                  v101 = 21;
                }

                *(v85 + 4 * v99) -= (*(v85 + 4 * v99) * v101) >> 6;
                v96 = *(a1 + 5464);
              }

              ++v99;
            }

            while (v99 < v96);
            v70 = *(a1 + 5468);
            v98 = v96;
          }

          ++v95;
          v85 += v97;
          v69 += v97;
        }

        while (v95 < v70);
      }
    }

    v102 = *(a1 + 2224);
    if (v102)
    {
      result = 0;
      v103 = v2[209];
      v2[209] = v102;
      *(a1 + 2224) = v103;
      v104 = v2[210];
      v2[210] = *(a1 + 2232);
      *(a1 + 2232) = v104;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2774A4778(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v166 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4744) <= a2)
  {
    v9 = 0;
LABEL_8:
    v18 = 0;
    return v18 + v9;
  }

  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = -a4;
  while (1)
  {
    if (*(v8 + 4748) <= a3)
    {
      goto LABEL_8;
    }

    v11 = *(v8 + 2240);
    v12 = *(v11[5] + 2113);
    v13 = v10 + v12;
    v14 = 1 << (v10 + v12);
    v160 = v9;
    if (v10 + v12 <= *(v8 + 5496))
    {
      break;
    }

    v5 = (v5 + 1);
    v15 = sub_2774A4778(v8, v7, a3, v5, a5);
    v16 = v7 + (v14 >> 1);
    v17 = sub_2774A4778(v8, v16, a3, v5, a5);
    a3 = (a3 + (v14 >> 1));
    v9 = v15 + v160 + v17 + sub_2774A4778(v8, v7, a3, v5, a5);
    --v10;
    v7 = v16;
    if (*(v8 + 4744) <= v16)
    {
      goto LABEL_8;
    }
  }

  v20 = a3 | v7;
  if ((((1 << (v12 - *(v8 + 5500))) - 1) & (a3 | v7)) != 0)
  {
    goto LABEL_8;
  }

  v145 = 1 << (v12 - *(v8 + 5500));
  *(a5 + 3213) = 5;
  v21 = v11[77];
  v22 = *(v21 + 416);
  v23 = v11[79];
  v24 = *(v23 + 416);
  v25 = *(v21 + 400);
  v26 = (v22 * a3 + v7) << *(v21 + 531);
  v27 = *(v23 + 531);
  v157 = v14;
  if (v20 < 0 || (v28 = *(*(v8 + 2256) + 8), *(v28 + 520) <= v7) || *(v28 + 524) <= a3)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = *(v28 + 800) + 2 * *(v28 + 768) * (a3 >> 3) + 2 * (v7 >> 3);
    v30 = (*(v28 + 880) + 16 * *(v28 + 848) * (a3 >> 2) + 16 * (v7 >> 2));
  }

  v31 = *(v23 + 400);
  v32 = (v24 * a3 + v7) << v27;
  v33 = v25 + v26;
  v34 = v5 & 3 | (*(v29 + 1) << 8);
  *v29 = v34;
  v35 = *(v8 + 2256);
  v36 = *(v35 + 16);
  v37 = *(*(v35 + 8) + 768);
  v38 = vdupq_n_s16(v34);
  v39 = *(v36 + 2113) - v157;
  switch(v39)
  {
    case 6u:
      *v29 = v38;
      *(v29 + 2 * v37) = v38;
      *(v29 + 4 * v37) = v38;
      *(v29 + 6 * v37) = v38;
      *(v29 + 8 * v37) = v38;
      *(v29 + 10 * v37) = v38;
      *(v29 + 12 * v37) = v38;
      *(v29 + 14 * v37) = v38;
      break;
    case 5u:
      *v29 = v38.i64[0];
      *(v29 + 2 * v37) = v38.i64[0];
      *(v29 + 4 * v37) = v38.i64[0];
      *(v29 + 6 * v37) = v38.i64[0];
      break;
    case 4u:
      *v29 = v38.i32[0];
      *(v29 + 2 * v37) = v38.i32[0];
      break;
  }

  v40 = v31 + v32;
  v143 = v33;
  v144 = v22;
  a5[1607] = v33;
  a5[1608] = v22;
  v158 = v7;
  if (*(*(*(v8 + 2240) + 576) + 591) != 1)
  {
    sub_2774DAD24(*(v8 + 2256), v7, a3, 0, 0, v157, v157, v161);
    if (v20 < 0 || (v51 = *(a5[1618] + 8), *(v51 + 520) <= v7) || *(v51 + 524) <= a3)
    {
      v52 = 0;
    }

    else
    {
      v52 = *(v51 + 880) + 16 * *(v51 + 848) * (a3 >> 2) + 16 * (v7 >> 2);
    }

    LODWORD(v164[0]) = 0;
    v153 = a5[1608];
    v155 = a5[1607];
    v151 = *(a5[1619] + 8 * v13 + 208);
    v53 = *a5;
    *(v53 + 10) = 0;
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    *(v53 + 4) = -1;
    *(v53 + 22) = 1;
    v54 = a5[1];
    *(v54 + 40) = 0;
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    *(v54 + 32) = -1;
    *(v54 + 44) = 1;
    **a5 = 0;
    *(*a5 + 1) = 15;
    *a5[1] = 0;
    *(a5[1] + 1) = 15;
    sub_277464948(a5, v7, a3, v157, v157, 0, v161, v161, v24, v40, *a5, v164, 0);
    v55 = *a5;
    if (*(*a5 + 32) >= 0x4B1uLL)
    {
      v56 = *(a5 + 3213);
    }

    else
    {
      v56 = 3;
      *(a5 + 3213) = 3;
    }

    v57 = 4 * *(a5 + 3177);
    while (1)
    {
      v58 = *(v55 + 4);
      v59 = v58 >= 0 ? *(v55 + 4) : -v58;
      if ((1 << v56) + v59 <= v57)
      {
        break;
      }

      if (v56 < 3)
      {
        goto LABEL_48;
      }

LABEL_46:
      *(a5 + 3213) = --v56;
    }

    v60 = *(v55 + 6);
    if (v60 < 0)
    {
      v60 = -v60;
    }

    v61 = (1 << v56) + v60;
    v62 = 4 * *(a5 + 3178);
    if (v56 >= 3 && v61 > v62)
    {
      goto LABEL_46;
    }

    if (v61 > v62)
    {
      goto LABEL_48;
    }

    v142 = v52;
LABEL_108:
    v120 = 0;
    v121 = *(v55 + 4);
    if (v56 <= 2)
    {
      v122 = &unk_27750E99F;
    }

    else
    {
      v122 = &unk_27750E98F;
    }

    v123 = &unk_27750E9A7;
    if (v56 > 2)
    {
      v123 = &unk_27750E997;
    }

    v148 = v123;
    v150 = v122;
    do
    {
      *(a5[1] + 4) = (v150[v120] << v56) + v121;
      *(a5[1] + 6) = (v148[v120] << v56) + HIWORD(v121);
      v124 = a5[1];
      v125 = *v124;
      v126 = *(a5[1618] + 16 * v125 + 1672);
      *(a5 + 12690) = v125;
      *(a5 + 3173) = *(v126 + 520);
      *(a5 + 3175) = *(v126 + 524);
      v124[1] = 15;
      v127 = &a5[2 * (((*(a5[1] + 6) | *(a5[1] + 4)) & 1) == 0) + 1630];
      v128 = *v127;
      v129 = *(v127 + 8);
      v130 = (a5 + (v129 >> 1));
      if (v129)
      {
        v128 = *(*v130 + v128);
      }

      v128(v130);
      v131 = v151(v157, v157, v155, v153, v40, v24);
      v132 = a5[1];
      *(v132 + 2) = v131;
      v133 = ((*(v132 + 10) * *(a5[1619] + 2 * *(v132 + 22) + 24)) >> (8 * (*(v132 + 22) == 0))) + v131;
      *(v132 + 4) = v133;
      v134 = *a5;
      if (v133 < *(*a5 + 32))
      {
        v42 = *v132;
        v43 = v132[1];
        v44 = v132[2];
        *v134 = *v132;
        v134[1] = v43;
        v134[2] = v44;
      }

      ++v120;
      LODWORD(v7) = v158;
    }

    while (v120 != 8);
    v55 = *a5;
    v56 = *(a5 + 3213);
    v135 = v121 == *(*a5 + 4);
    v52 = v142;
    if (v135)
    {
      if (v56 == 2)
      {
        goto LABEL_48;
      }

      *(a5 + 3213) = --v56;
    }

    v136 = 4 * *(a5 + 3177);
    while (1)
    {
      v137 = *(v55 + 4);
      if (v137 >= 0)
      {
        v138 = *(v55 + 4);
      }

      else
      {
        v138 = -v137;
      }

      if ((1 << v56) + v138 <= v136)
      {
        v139 = *(v55 + 6);
        if (v139 < 0)
        {
          v139 = -v139;
        }

        v140 = (1 << v56) + v139;
        v141 = 4 * *(a5 + 3178);
        if (v56 < 3 || v140 <= v141)
        {
          if (v140 > v141)
          {
LABEL_48:
            *(v52 + 10) = 3;
            *(v52 + 11) = *(v52 + 11) & 0xAE | (16 * (v164[0] & 1));
            *(v52 + 8) = 16 * **a5;
            *v52 = *(*a5 + 4);
            *(v52 + 4) = 0;
            *(v52 + 9) = -16;
            v63 = *(*a5 + 32);
            goto LABEL_72;
          }

          goto LABEL_108;
        }
      }

      else if (v56 < 3)
      {
        goto LABEL_48;
      }

      *(a5 + 3213) = --v56;
    }
  }

  v156 = v31 + v32;
  v41 = *(v8 + 2256);
  v163[0] = 0;
  v163[1] = 0;
  memset(v164, 0, 24);
  sub_2774DAAF8(v41, v7, a3, v157, v157, v163, v164);
  sub_2773F9A08(v41, v7, a3, v157, v157, v161, 5u, v163, v164, 1);
  if (v20 < 0)
  {
    v50 = 0;
  }

  else
  {
    v49 = *(a5[1618] + 8);
    if (*(v49 + 520) <= v7)
    {
      v50 = 0;
    }

    else if (*(v49 + 524) <= a3)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(v49 + 880) + 16 * *(v49 + 848) * (a3 >> 2) + 16 * (v7 >> 2);
    }
  }

  v40 = v156;
  v165 = 0;
  v64 = v162;
  if (v162)
  {
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = &v161[3 * v66];
      if (!*v67)
      {
        *(v164 + v65) = v67[1] & 0xFFFEFFFE;
        v65 = v165;
        if (v165)
        {
          v68 = v164;
          v69 = v165;
          while (1)
          {
            v70 = *v68;
            v68 = (v68 + 4);
            if (v70 == *(v164 + v165))
            {
              break;
            }

            if (!--v69)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
LABEL_58:
          v65 = ++v165;
        }
      }

      ++v66;
    }

    while (v66 != v64);
  }

  else
  {
    v65 = 0;
  }

  v71 = a5[1607];
  v72 = a5[1608];
  v73 = *(a5[1619] + 8 * v13 + 208);
  v74 = a5[1];
  *(v74 + 40) = 0;
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = -1;
  *(v74 + 44) = 1;
  *a5[1] = 0;
  if (v65)
  {
    v146 = v50;
    v147 = v8;
    v154 = v71;
    v75 = 0;
    v76 = v65;
    v77 = a5[1];
    v78 = -1;
    v79 = v164;
    v149 = v73;
    v152 = v72;
    do
    {
      v81 = *v79;
      v79 = (v79 + 4);
      v80 = v81;
      *(v77 + 4) = v81;
      v82 = a5[1];
      v83 = *v82;
      v84 = *(a5[1618] + 16 * v83 + 1672);
      *(a5 + 12690) = v83;
      *(a5 + 3173) = *(v84 + 520);
      *(a5 + 3175) = *(v84 + 524);
      v82[1] = 15;
      sub_27746517C(a5, a5[1], v7, a3, v157, v157, v24, v156);
      v85 = v149(v157, v157, v154, v152, v156, v24);
      v77 = a5[1];
      *(v77 + 16) = v85;
      if (v78 > v85)
      {
        v75 = v80;
      }

      if (v78 >= v85)
      {
        v78 = v85;
      }

      --v76;
    }

    while (v76);
    v63 = (29 * v78) >> 5;
    v50 = v146;
    v8 = v147;
    v40 = v156;
  }

  else
  {
    v75 = 0;
    v63 = 0x7FFFFFFFFFFFFFFLL;
  }

  *(v50 + 11) &= 0xAEu;
  *(v50 + 8) = 0;
  *v50 = v75;
  *(v50 + 4) = 0;
  *(v50 + 9) = 1008;
LABEL_72:
  v86 = (v145 >> 2);
  if (v86 >= 1)
  {
    v87 = 0;
    v88 = 16 * *(*(*(v8 + 2256) + 8) + 848);
    v89 = v30;
    do
    {
      v90 = v89;
      v91 = (v145 >> 2);
      do
      {
        v92 = *v30;
        *(v90 + 6) = *(v30 + 3);
        *v90 = v92;
        v90 += 2;
        --v91;
      }

      while (v91);
      ++v87;
      v89 = (v89 + v88);
    }

    while (v87 != v86);
  }

  v93 = *(v8 + 5496);
  if (v93 == 34)
  {
    v94 = 0;
  }

  else
  {
    v95 = 0;
    v96 = 0;
    v97 = (*(v8 + 4744) >> 3);
    v98 = v97 * (a3 >> 3) + (v7 >> 3);
    v99 = *(v8 + 4968) + 4 * v98;
    v100 = (1 << (v93 - 3));
    v101 = 4 * v97;
    do
    {
      v102 = v99;
      v103 = (1 << (v93 - 3));
      do
      {
        v104 = *v102++;
        v96 += v104;
        --v103;
      }

      while (v103);
      ++v95;
      v99 += v101;
    }

    while (v95 != v100);
    v105 = 0;
    v106 = 0;
    v107 = *(v8 + 4912) + 4 * v98;
    do
    {
      v108 = v107;
      v109 = (1 << (v93 - 3));
      do
      {
        v110 = *v108++;
        v106 += v110;
        --v109;
      }

      while (v109);
      ++v105;
      v107 += v101;
    }

    while (v105 != v100);
    v94 = v106 + (v96 << 7);
  }

  v111 = (v7 >> v93) + (a3 >> v93) * *(v8 + 5456);
  *(*(v8 + 5408) + 4 * v111) = v63;
  v112 = *(*(v8 + 2240) + 576);
  v9 = v160;
  if ((v112[752] & 1) != 0 || v112[937] == 1)
  {
    v113 = *v30 * *v30 + v30[1] * v30[1];
    if (v113 >= 2)
    {
      v114 = __clz(v113);
      v115 = ((byte_27753C3A4[(v113 << (v114 + 1)) >> 24] << 12) | 0x200000u) >> ((v114 + 1) >> 1);
      if ((v114 & 1) == 0)
      {
        v115 = (11585 * v115) >> 14;
      }

      v113 = (v115 + 16) >> 5;
    }

    *(*(v8 + 5472) + 4 * v111) = v113;
  }

  if (v112[913] == 1)
  {
    v116 = &a5[2 * (((*(*a5 + 6) | *(*a5 + 4)) & 1) == 0)];
    v117 = v116[1630];
    v118 = v116[1631];
    v119 = (a5 + (v118 >> 1));
    if (v118)
    {
      v117 = *(*v119 + v117);
    }

    v117(v119);
    *(*(v8 + 5432) + 4 * v111) = sub_2774A5418(v8, v143, v144, v40, v24, *(v8 + 5496));
    v9 = v160;
  }

  if (v63 <= 3 * v94)
  {
    v18 = v63;
  }

  else
  {
    v18 = v94;
  }

  if (*(v8 + 17) == 1)
  {
    if (sub_2774A54C0(v8, v158, a3, v157, *&v42, *&v43, v44, v45, v46, v47, v48))
    {
      *(v8 + 5576) += v18;
    }

    else
    {
      *(v8 + 5580) += v18;
    }

    v9 = v160;
  }

  return v18 + v9;
}

uint64_t sub_2774A5418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = ((*(a1 + 8 * a6 + 120))(a2, a3, a4, a5) + (1 << (2 * a6 - 1))) >> (2 * a6) << 10;
  if (!v6)
  {
    return 0;
  }

  v7 = __clz(v6);
  v8 = ((byte_27753C3A4[(v6 << (v7 + 1)) >> 24] << 12) | 0x200000u) >> ((v7 + 1) >> 1);
  if ((v7 & 1) == 0)
  {
    v8 = (11585 * v8) >> 14;
  }

  return (v8 + 16) >> 5;
}

BOOL sub_2774A54C0(uint64_t a1, int a2, int a3, int a4, double a5, double a6, int8x16_t a7, double a8, double a9, double a10, int8x16_t a11)
{
  v11 = *(a1 + 5588);
  if (v11 < 1)
  {
    return 0;
  }

  else
  {
    v12 = (a1 + 5604);
    v13 = 1;
    a7.i64[0] = 0;
    v14.i64[0] = 0x8000000080000000;
    v14.i64[1] = 0x8000000080000000;
    v15 = *(a1 + 5588);
    v16 = 1;
    v17 = a2 + (a4 >> 1);
    v18 = a3 + (a4 >> 1);
    do
    {
      v19 = *(v12 - 1);
      v20 = (*(v12 - 3) - ((v19 * 0.4) * 0.5)) & ~((*(v12 - 3) - ((v19 * 0.4) * 0.5)) >> 31);
      if (v17 > v20)
      {
        *a11.i32 = *v12;
        v21 = *a11.i32;
        a11 = vbslq_s8(v14, a7, a11);
        v22 = (*(v12 - 2) - (*a11.i32 * 0.5)) & ~((*(v12 - 2) - (*a11.i32 * 0.5)) >> 31);
        v23 = v17 >= v20 + (v19 * 1.4) || v18 <= v22;
        if (!v23 && v18 < v22 + v21)
        {
          break;
        }
      }

      v12 += 4;
      v16 = v13++ < v11;
      --v15;
    }

    while (v15);
  }

  return v16;
}

BOOL sub_2774A5598(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v8 = *(*(*(a1 + 2240) + 40) + 2113);
  v9 = sub_2774A4778(a1, (*a3 << v8), (*a4 << v8), 0, (*(a1 + 4592) + 13312 * a2));
  v10 = *(a1 + 4592) + 13312 * a2;
  *(v10 + 13264) += v9;
  LODWORD(v10) = *a3 + 1;
  *a3 = v10;
  if (v10 >= *(a1 + 4752))
  {
    ++*a4;
    *a3 = 0;
  }

  return *a4 < *(a1 + 4756);
}

void sub_2774A5650(void *a1)
{
  v2 = a1 + 1616;
  v3 = -48;
  do
  {
    v4 = *(v2 - 1);
    if (v4)
    {
      *v2 = v4;
      operator delete(v4);
    }

    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  v5 = a1[1609];
  if (v5)
  {
    a1[1610] = v5;

    operator delete(v5);
  }
}

uint64_t sub_2774A56CC(uint64_t a1, int a2, int a3)
{
  v3 = a2 & 0xFFFFFFF0;
  v4 = a3 & 0xFFFFFFF0;
  v5 = *(a1 + 4744);
  v6 = (a3 & 0xFFFFFFF0) + 16;
  v7 = *(a1 + 4748);
  v8 = v7 < v6;
  if (v7 < v6)
  {
    v6 = *(a1 + 4748);
  }

  v9 = v3 + 16;
  if (v5 < v3 + 16)
  {
    v9 = *(a1 + 4744);
    v8 = 1;
  }

  if (v7 > v4 && v5 > v3)
  {
    v14 = ((v5 + 15) >> 4) * (a3 >> 4) + (a2 >> 4);
    v11 = *(*(a1 + 5088) + 8 * v14);
    v12 = *(*(a1 + 5064) + 4 * v14);
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_11:
    v13 = (v11 - ((v12 * v12) >> 8) + 128) >> 8;
    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_13:
  v13 = (v11 + (((v6 - v4) * (v9 - v3)) >> 1) - v12 * v12 / ((v6 - v4) * (v9 - v3))) / ((v6 - v4) * (v9 - v3));
LABEL_14:
  v15 = sqrt(v13);
  if (v13 > 0x3C1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_2774A5790(unsigned int (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, int a3, int a4, char a5, int a6, int a7)
{
  v7 = 1 << (a5 - 3);
  v8 = (a7 - a4) >> 3;
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = (a6 - a3) >> 3;
  if (v10 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  result = (a1(a2 + 4 * (a6 >> 3) * (a4 >> 3) + 4 * (a3 >> 3), a6 >> 3, v11, v9) + ((v9 * v11) >> 1)) / (v9 * v11);
  if (result >= 2)
  {
    v13 = __clz(result);
    if (v13)
    {
      v14 = ((byte_27753C3A4[(result << (v13 + 1)) >> 24] << 12) | 0x200000u) >> ((v13 + 1) >> 1);
    }

    else
    {
      v14 = (11585 * (((byte_27753C3A4[(result << (v13 + 1)) >> 24] << 12) | 0x200000u) >> ((v13 + 1) >> 1))) >> 14;
    }

    return (v14 + 16) >> 5;
  }

  return result;
}

unint64_t sub_2774A5864(int *a1, int a2, int a3, char a4, int a5, int a6, int a7)
{
  result = 0;
  if (a7 <= 1)
  {
    if (!a7)
    {
      return sub_2774A5790(*(a1 + 23), *(a1 + 620), a2, a3, a4, a5, a6);
    }

    if (a7 == 1)
    {
      v34 = 1 << (a4 - 3);
      v35 = (a6 - a3) >> 3;
      if (v35 >= v34)
      {
        v35 = 1 << (a4 - 3);
      }

      if (v35 >= 1)
      {
        v36 = 0;
        v37 = a5 >> 3;
        v38 = *(a1 + 614) + 4 * v37 * (a3 >> 3);
        v39 = (a5 - a2) >> 3;
        if (v39 >= v34)
        {
          v40 = 1 << (a4 - 3);
        }

        else
        {
          v40 = (a5 - a2) >> 3;
        }

        v41 = v38 + 4 * (a2 >> 3);
        v42 = 4 * v40;
        v43 = 4 * v37;
        result = 0xFFFFFFFFLL;
        do
        {
          if (v39 >= 1)
          {
            v44 = 0;
            do
            {
              v45 = *(v41 + v44);
              if (v45 >= result)
              {
                result = result;
              }

              else
              {
                result = v45;
              }

              v44 += 4;
            }

            while (v42 != v44);
          }

          ++v36;
          v41 += v43;
        }

        while (v36 != v35);
LABEL_63:
        if (result < 2)
        {
          return result;
        }

        goto LABEL_67;
      }

LABEL_66:
      LODWORD(result) = -1;
LABEL_67:
      v76 = __clz(result);
      if (v76)
      {
        v77 = ((byte_27753C3A4[(result << (v76 + 1)) >> 24] << 12) | 0x200000u) >> ((v76 + 1) >> 1);
      }

      else
      {
        v77 = (11585 * (((byte_27753C3A4[(result << (v76 + 1)) >> 24] << 12) | 0x200000u) >> ((v76 + 1) >> 1))) >> 14;
      }

      return (v77 + 16) >> 5;
    }
  }

  else
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        if (a7 == 4)
        {
          v14 = *a1;
          v15 = 1 << (a4 - *a1);
          v16 = (a6 - a3) >> *a1;
          if (v16 >= v15)
          {
            v16 = 1 << (a4 - *a1);
          }

          v17 = (a5 - a2) >> v14;
          if (v17 >= v15)
          {
            v18 = v15;
          }

          else
          {
            v18 = v17;
          }

          if (v16 < 1)
          {
            return 0;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 2 * v14;
          v23 = 1 << (2 * v14 - 1);
          v24 = a5 >> v14;
          v25 = a3 >> v14;
          v26 = a2 >> v14;
          v27 = v24;
          v28 = v26 + v24 * v25;
          v29 = *(a1 + 630) + 8 * v28;
          v30 = *(a1 + 627) + 4 * v28;
          v31 = 4 * v27;
          v32 = 8 * v27;
          do
          {
            if (v17 >= 1)
            {
              v33 = 0;
              do
              {
                v21 += (*(v29 + 8 * v33) + v23 - ((*(v30 + 4 * v33) * *(v30 + 4 * v33)) >> v22)) >> v22;
                ++v33;
              }

              while (v18 != v33);
              v20 += v18;
            }

            ++v19;
            v30 += v31;
            v29 += v32;
          }

          while (v19 != v16);
          if (v20)
          {
            return (v21 + (v20 >> 1)) / v20;
          }

          else
          {
            return 0;
          }
        }

        return result;
      }

      v61 = *a1;
      LODWORD(v62) = 1 << (a4 - *a1);
      v63 = (a6 - a3) >> *a1;
      if (v63 >= v62)
      {
        v63 = 1 << (a4 - *a1);
      }

      if (v63 >= 1)
      {
        v64 = 0;
        v65 = 2 * v61;
        v66 = 1 << (2 * v61 - 1);
        v67 = a5 >> v61;
        v68 = (a5 - a2) >> v61;
        if (v68 >= v62)
        {
          v62 = v62;
        }

        else
        {
          v62 = v68;
        }

        v69 = (a2 >> v61) + v67 * (a3 >> v61);
        v70 = *(a1 + 630) + 8 * v69;
        v71 = *(a1 + 627) + 4 * v69;
        v72 = 4 * v67;
        result = -1;
        v73 = 8 * v67;
        do
        {
          if (v68 >= 1)
          {
            v74 = 0;
            do
            {
              v75 = (*(v71 + 4 * v74) * *(v71 + 4 * v74)) >> v65;
              if ((*(v70 + 8 * v74) + v66 - v75) >> v65 < result)
              {
                result = (*(v70 + 8 * v74) + v66 - v75) >> v65;
              }

              ++v74;
            }

            while (v62 != v74);
          }

          ++v64;
          v71 += v72;
          v70 += v73;
        }

        while (v64 != v63);
        goto LABEL_63;
      }

      goto LABEL_66;
    }

    v46 = *a1;
    LODWORD(v47) = 1 << (a4 - *a1);
    v48 = (a6 - a3) >> *a1;
    if (v48 >= v47)
    {
      v48 = 1 << (a4 - *a1);
    }

    if (v48 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v49 = 0;
      v50 = 2 * v46;
      v51 = 1 << (2 * v46 - 1);
      v52 = a5 >> v46;
      v53 = (a5 - a2) >> v46;
      if (v53 >= v47)
      {
        v47 = v47;
      }

      else
      {
        v47 = v53;
      }

      v54 = (a2 >> v46) + v52 * (a3 >> v46);
      v55 = *(a1 + 630) + 8 * v54;
      v56 = *(a1 + 627) + 4 * v54;
      v57 = 4 * v52;
      result = -1;
      v58 = 8 * v52;
      do
      {
        if (v53 >= 1)
        {
          v59 = 0;
          do
          {
            v60 = (*(v56 + 4 * v59) * *(v56 + 4 * v59)) >> v50;
            if ((*(v55 + 8 * v59) + v51 - v60) >> v50 < result)
            {
              result = (*(v55 + 8 * v59) + v51 - v60) >> v50;
            }

            ++v59;
          }

          while (v47 != v59);
        }

        ++v49;
        v56 += v57;
        v55 += v58;
      }

      while (v49 != v48);
    }
  }

  return result;
}

uint64_t sub_2774A5C50(uint64_t a1, int a2, int a3, int a4, int a5, char a6, int a7, unsigned int a8)
{
  v11 = (*(*(a1 + 5384) + 4 * ((a5 + 15) >> 4) * (a3 >> 4) + 4 * (a2 >> 4)) + (1 << (a6 - 8) >> 1)) >> (a6 - 8);
  if (v11 <= 0xBE)
  {
    if (v11 <= 0x9D)
    {
      if (v11 <= 0x7C)
      {
        if (v11 <= 0x6B)
        {
          if (v11 <= 0x4A)
          {
            v13 = v11 > 0x31;
            if (v11 > 0x31)
            {
              v12 = 5;
            }

            else
            {
              v12 = 6;
            }
          }

          else
          {
            v12 = 4;
            v13 = 2;
          }
        }

        else
        {
          v12 = 3;
          v13 = 3;
        }
      }

      else
      {
        v12 = 2;
        v13 = 4;
      }
    }

    else
    {
      v12 = 1;
      v13 = 5;
    }
  }

  else
  {
    v12 = 0;
    v13 = 6;
  }

  v14 = (sub_2774A5DCC(a1, a2, a3, 4) + ((1 << (2 * (a6 - 8))) >> 1)) >> (2 * (a6 - 8));
  if (v14 >= 2)
  {
    if (v14 >= 6)
    {
      if (v14 >= 0x1E)
      {
        if (v14 > 0x31)
        {
          goto LABEL_27;
        }

        v15 = 3;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = dword_277533478[4 * v13 + v15] + a7;
  v17 = v16 - a4;
  if (v16 - a4 >= v12)
  {
    v17 = v12;
  }

  v18 = __OFSUB__(v16, a4);
  v19 = v16 - a4;
  if (v19 < 0 != v18)
  {
    v12 = v19;
  }

  else
  {
    v12 = v17;
  }

LABEL_27:
  if (v12 + a4 >= 51)
  {
    v20 = 51;
  }

  else
  {
    v20 = v12 + a4;
  }

  if (v12 + a4 <= a8)
  {
    return a8;
  }

  else
  {
    return v20;
  }
}

unint64_t sub_2774A5DCC(int *a1, int a2, int a3, char a4)
{
  v4 = *a1;
  v5 = 1 << *a1;
  v6 = 1 << a4;
  v7 = v5 + ~a3 + a1[1187];
  if (v7 >= 1 << a4)
  {
    v7 = 1 << a4;
  }

  v8 = v7 >> v4;
  if (v8 < 1)
  {
    v10 = 0;
    v26 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 606);
    v12 = v11 * (a3 >> v4) + (a2 >> v4);
    v13 = *(a1 + 627) + 4 * v12;
    v14 = *(a1 + 630) + 8 * v12;
    v15 = v5 + ~a2 + a1[1186];
    if (v15 < v6)
    {
      v6 = v15;
    }

    v16 = v6 >> v4;
    do
    {
      v17 = v13;
      v18 = v16;
      if (v16 >= 1)
      {
        do
        {
          v19 = *v17++;
          v10 += v19;
          --v18;
        }

        while (v18);
      }

      ++v9;
      v13 += 4 * v11;
    }

    while (v9 != v8);
    v20 = 0;
    v21 = 0;
    v22 = 8 * v11;
    do
    {
      v23 = v14;
      v24 = v16;
      if (v16 >= 1)
      {
        do
        {
          v25 = *v23;
          v23 += 2;
          v21 += v25;
          --v24;
        }

        while (v24);
      }

      ++v20;
      v14 += v22;
    }

    while (v20 != v8);
    v26 = v21;
  }

  return (v26 + (1 << (2 * a4 - 1)) - ((v10 * v10) >> (2 * a4))) >> (2 * a4);
}

uint64_t sub_2774A5EF0(uint64_t a1, signed int a2, signed int a3, int a4)
{
  v4 = a2 & 0xFFFFFFF8;
  v5 = a3 & 0xFFFFFFF8;
  if (a4 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = a4;
  }

  if (a4 >= 3)
  {
    v5 = a3;
    v4 = a2;
  }

  v7 = 1 << v6;
  v8 = *(a1 + 2248);
  if (*(v8 + 504))
  {
    v9 = 6;
  }

  else
  {
    v9 = 4;
  }

  v10 = *(a1 + 4748);
  if (v10 >= v5 + v7)
  {
    v10 = v5 + v7;
  }

  if (v5 >= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *(v8 + 8 * *(v8 + 44) + v9 + 48) >> 3;
    v13 = v4 + v7;
    if (*(a1 + 4744) < v13)
    {
      v13 = *(a1 + 4744);
    }

    do
    {
      if (v4 < v13)
      {
        v14 = v4;
        do
        {
          v11 += *(*(a1 + 5552) + 4 * ((v5 >> 3) * v12 + (v14 >> 3)));
          v14 += 8;
        }

        while (v14 < v13);
      }

      v5 += 8;
    }

    while (v5 < v10);
  }

  return (v11 >> (2 * v6 - 6));
}

uint64_t sub_2774A5FC0(int a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  if (a6 < 1)
  {
    return v8;
  }

  v12 = a5;
  v13 = 0;
  if (a4 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4;
  }

  v15 = v14 << 6;
  v16 = *(a7 + 134);
  if (v16 <= 1)
  {
    if (*(a7 + 134))
    {
      if (v16 == 1)
      {
        v17 = vcvtd_n_f64_u32(v15, 8uLL);
        v18 = exp2(v17 / 6.0);
        v19 = log2((v18 * (v12 + 1) + a6 + 1.0) / (v18 * (a6 + 1) + (v12 + 1))) * 6.0;
        v20 = ((v19 > 0) | (v19 >> 31)) * ((fabs(v19) + 1) >> 1);
        v21 = v17;
        if (v20 < v17)
        {
          v21 = v20;
        }

        if (v20 <= -(v15 * 0.00390625))
        {
          v13 = -(v15 * 0.00390625);
        }

        else
        {
          v13 = v21;
        }
      }
    }

    else
    {
      v28 = *(a7 + 96);
      v29 = *(a8 + 2240);
      if (*(v29 + 648) || *(v29 + 757) != 1)
      {
        v30 = *(a8 + 60) * 0.5;
      }

      else
      {
        v30 = *(a8 + 60);
      }

      if (v28 || (*(*(v29 + 616) + 1172) & 1) != 0)
      {
        v34 = 4;
      }

      else
      {
        v34 = 4;
        if (*(a8 + 56) == 1)
        {
          v80 = v8 - 18;
          if ((v8 - 18) >= 0x14)
          {
            v80 = 20;
          }

          if (v8 <= 22)
          {
            v80 = 4;
          }

          v34 = ((1.0 - v30) * 4.0 + (v30 * v80));
        }
      }

      if (*(a7 + 92) == 1)
      {
        v35 = a2 & 0xFFFFFFF0;
        v36 = 1 << (*(*(v29 + 576) + 538) - a3);
        v37 = *(a8 + 4748);
        v38 = (v36 - 1 + (a2 & 0xFFFFFFF0)) <= v37 ? 1 << (*(*(v29 + 576) + 538) - a3) : v37 - (a2 & 0xFFFFFFF0);
        if (v38 >= 1)
        {
          v39 = 0;
          v40 = v38 + v35;
          v41 = *(a8 + 4744);
          if ((v36 - 1 + (a1 & 0xFFFFFFF0)) > v41)
          {
            v36 = v41 - (a1 & 0xFFFFFFF0);
          }

          v42 = v36 >> 4;
          v43 = (v41 + 15) >> 4;
          v44 = *(a8 + 24) + 4 * (v43 * (a2 >> 4) + (a1 >> 4));
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v45 = 4 * v42;
          v46 = 4 * v43;
          v47 = 4;
          do
          {
            v48 = 0;
            do
            {
              v49 = *(v44 + v48);
              if (v49 >= v47)
              {
                v50 = v47;
              }

              else
              {
                v50 = *(v44 + v48);
              }

              if (v49 > 0)
              {
                v47 = v50;
                ++v39;
              }

              v48 += 4;
            }

            while (v45 != v48);
            v35 += 16;
            v44 += v46;
          }

          while (v35 < v40);
          v51 = v47 - 1;
          if (v39)
          {
            v52 = v51 >= 3;
          }

          else
          {
            v52 = 1;
          }

          if (!v52)
          {
            v53 = dword_2775334E8[v51] * a6;
            v55 = v53 + 4;
            v54 = v53 < -4;
            v56 = v53 + 11;
            if (!v54)
            {
              v56 = v55;
            }

            v12 = (a5 - (v56 >> 3)) & ~((a5 - (v56 >> 3)) >> 31);
          }
        }
      }

      if (!v28)
      {
        v69 = *(v29 + 648) < 3u && *(a8 + 48) == *(v29 + 652) - 1;
        v70 = v69;
        if ((*(*(v29 + 616) + 1172) & 1) == 0 && !v70)
        {
          v71 = *(*(v29 + 40) + 2113) - a3;
          v72 = *(a8 + 5496);
          if (v72 > v71)
          {
            LOBYTE(v71) = *(a8 + 5496);
          }

          if (v72 <= 3)
          {
            LOBYTE(v73) = 3;
          }

          else
          {
            v73 = *(a8 + 5496);
          }

          v98 = v34;
          v74 = 1 << (v71 - v72);
          if ((*(a8 + 4748) - a2) >> v72 >= v74)
          {
            v75 = v74;
          }

          else
          {
            v75 = (*(a8 + 4748) - a2) >> v72;
          }

          if ((*(a8 + 4744) - a1) >> v72 >= v74)
          {
            v76 = v74;
          }

          else
          {
            v76 = (*(a8 + 4744) - a1) >> v72;
          }

          v77 = ((*(a8 + 184))(*(a8 + 5408) + 4 * *(a8 + 5456) * (a2 >> v72) + 4 * (a1 >> v72)) + (((v75 << (v73 - 3)) * (v76 << (v73 - 3))) >> 1)) / ((v75 << (v73 - 3)) * (v76 << (v73 - 3)));
          if (v77 >= 2)
          {
            v78 = __clz(v77);
            v79 = ((byte_27753C3A4[(v77 << (v78 + 1)) >> 24] << 12) | 0x200000u) >> ((v78 + 1) >> 1);
            if ((v78 & 1) == 0)
            {
              v79 = (11585 * v79) >> 14;
            }

            v77 = (v79 + 16) >> 5;
          }

          if (v12 < v77)
          {
            v77 = v12;
          }

          v12 = ((1.0 - v30) * v12 + (v30 * v77));
          v29 = *(a8 + 2240);
          v34 = v98;
          if (!*(v29 + 648) && v12 < a6 && *(v29 + 757) == 1)
          {
            v34 = (v98 + 6.0);
          }
        }
      }

      if (*(v29 + 465) == 1)
      {
        v57 = *(*(v29 + 40) + 2113) - a3;
        if (v57 <= 3)
        {
          LOBYTE(v57) = 3;
        }

        LODWORD(v58) = 1 << (v57 - 3);
        LODWORD(v59) = (*(a8 + 4748) - a2) >> 3;
        if (v59 >= v58)
        {
          v59 = v58;
        }

        else
        {
          v59 = v59;
        }

        v60 = (*(a8 + 4744) - a1) >> 3;
        if (v60 >= v58)
        {
          v58 = v58;
        }

        else
        {
          v58 = v60;
        }

        if (v59 < 1)
        {
          v62 = 0;
        }

        else
        {
          v61 = 0;
          v62 = 0;
          v63 = *(a8 + 4760);
          v64 = *(v29 + 480) + 2 * v63 * (a2 >> 3) + 2 * (a1 >> 3);
          v65 = 2 * v63;
          do
          {
            v66 = v64;
            v67 = v58;
            if (v60 >= 1)
            {
              do
              {
                v68 = *v66++;
                v62 += v68;
                --v67;
              }

              while (v67);
            }

            ++v61;
            v64 += v65;
          }

          while (v61 != v59);
        }

        v81 = (v62 + ((v59 * v58) >> 1)) / (v59 * v58);
        if (v81 < v12)
        {
          v12 *= v81;
          if (v12 >= 2)
          {
            v82 = __clz(v12);
            if (v82)
            {
              v83 = ((byte_27753C3A4[(v12 << (v82 + 1)) >> 24] << 12) | 0x200000u) >> ((v82 + 1) >> 1);
            }

            else
            {
              v83 = (11585 * (((byte_27753C3A4[(v12 << (v82 + 1)) >> 24] << 12) | 0x200000u) >> ((v82 + 1) >> 1))) >> 14;
            }

            v12 = (v83 + 16) >> 5;
          }
        }
      }

      v84 = *(a7 + 135);
      v85 = v12 < a6;
      if (v34 <= 8)
      {
        v86 = 8;
      }

      else
      {
        v86 = v34;
      }

      v87 = (v84 & v85) == 0;
      if ((v84 & v85) != 0)
      {
        v88 = v86;
      }

      else
      {
        v88 = v34;
      }

      if (v87)
      {
        v89 = v14 << 6;
      }

      else
      {
        v89 = v14 << 7;
      }

      v90 = (((v12 - a6) * v88) << 8) / a6;
      if (v90 >= v89)
      {
        v91 = v89;
      }

      else
      {
        v91 = v90;
      }

      if (v90 <= -v89)
      {
        v92 = -v89;
      }

      else
      {
        v92 = v91;
      }

      v93 = (v92 > 0) | (v92 >> 31);
      if (v92 < 0)
      {
        v92 = -v92;
      }

      v13 = v93 * ((v92 + 128) >> 8);
    }

    goto LABEL_130;
  }

  if (v16 == 2)
  {
    v31 = vcvtd_n_f64_u32(v15, 8uLL);
    v32 = (a5 - a6) / a6;
    v13 = -(v15 * 0.00390625);
    v23 = v31;
    v24 = v31 * ((v32 > 0) | (v32 >> 31));
    v22 = v32 * v32;
    goto LABEL_20;
  }

  if (v16 == 3)
  {
    v22 = vcvtd_n_f64_u32(v15, 8uLL);
    v13 = -(v15 * 0.00390625);
    v23 = v22;
    v24 = (a5 - a6) / a6 * ((a5 - a6) / a6 * ((a5 - a6) / a6));
LABEL_20:
    v33 = (v22 * v24);
    if (v33 < v23)
    {
      v23 = (v22 * v24);
    }

    if (v33 > v13)
    {
      v13 = v23;
    }
  }

LABEL_130:
  v94 = *(*(*(a8 + 2240) + 40) + 2097);
  v95 = v13 + v8;
  if (v95 >= 51)
  {
    v96 = 51;
  }

  else
  {
    v96 = v95;
  }

  if ((v95 + v94 < 0) ^ __OFADD__(v95, v94) | (v95 + v94 == 0))
  {
    return -v94;
  }

  else
  {
    return v96;
  }
}

uint64_t sub_2774A6688(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  if (v1 != *(a1 + 8) && *(a1 + 32) != *(a1 + 16))
  {
    v80 = *(a1 + 8);
    v81 = &v80;
    v2 = *(a1 + 80);
    v3 = *(a1 + 84);
    v4 = *(a1 + 40);
    v6 = *(a1 + 88);
    v5 = *(a1 + 96);
    v7 = MEMORY[0x28223BE20](a1);
    v8 = MEMORY[0x28223BE20](v7);
    v9 = MEMORY[0x28223BE20](v8);
    v16 = ((&v80 - ((v11 + 15) & 0x1FFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0);
    v82 = v9;
    if (v2 < 1)
    {
      v21 = (&v80 - ((v11 + 15) & 0x1FFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0;
      v28 = v10;
      v20 = v12;
      if (v2 < -15)
      {
        goto LABEL_13;
      }

      v84 = v15;
      v88 = v14;
      v17 = v13;
      v26 = 0;
    }

    else
    {
      v84 = v15;
      v88 = v14;
      v17 = v13;
      v18 = 0;
      v19 = 0;
      v20 = v12;
      v21 = v16;
      v22 = v10;
      v23 = v2;
      v24 = (v12 << 16) / v2;
      do
      {
        v25 = HIWORD(v18);
        *v16++ = v18 >> 12;
        v18 += v24;
        *v22++ = v25 - v19;
        v19 = v25;
        --v23;
      }

      while (v23);
      v26 = v2;
    }

    v28 = v10;
    bzero(&v10[v26], (v2 - v26 + 15) + 1);
    v13 = v17;
    v14 = v88;
    v15 = v84;
LABEL_13:
    v85 = v21;
    v86 = v28;
    v87 = v5;
    v88 = v2;
    v29 = v80;
    if (v3 >= 1)
    {
      v30 = v20;
      v31 = 0;
      v32 = (v15 + 30) & 0xFFFFFFFFFFFFFFF0;
      v33 = v13 - 1;
      v84 = v32 + 2 * v20;
      LODWORD(v83) = (v13 << 16) / v3;
      do
      {
        v34 = HIWORD(v31);
        v35 = v31 >> 12;
        v31 += v83;
        v36 = v29 + v4 * v34;
        v37 = v14;
        if (v33 >= v34 + 1)
        {
          v38 = v34 + 1;
        }

        else
        {
          v38 = v33;
        }

        v6(v32, v36, v29 + v4 * v38, v30, v35);
        v39 = v85;
        *(v32 + 2 * v30) = *(v84 - 2);
        v9 = v87(v1, v32, v88, v86, v39);
        v14 = v37;
        v1 += v37;
        --v3;
      }

      while (v3);
    }

    v81 = &v80;
    v40 = *(v82 + 32);
    v41 = (*(v82 + 80) >> 1);
    v42 = *(v82 + 84) >> 1;
    v43 = *(v82 + 16);
    v44 = *(v82 + 104);
    v45 = MEMORY[0x28223BE20](v9);
    v47 = &v80 - v46;
    v48 = MEMORY[0x28223BE20](v45);
    MEMORY[0x28223BE20](v48);
    v57 = (&v80 - ((v53 + 15) & 0x1FFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v41 < 1)
    {
      v60 = (&v80 - ((v53 + 15) & 0x1FFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0;
      v69 = v52;
      v66 = v50;
      v67 = v49;
      if (v41 < -15)
      {
LABEL_26:
        v85 = v60;
        v86 = v69;
        v87 = v44;
        v88 = v41;
        if (v42 >= 1)
        {
          v70 = v55;
          v71 = v67;
          v72 = v66;
          v73 = 0;
          v74 = (v47 + 30) & 0xFFFFFFFFFFFFFFF0;
          LODWORD(v84) = (v56 >> 1) - 1;
          v75 = (v74 + 2 * v51);
          v83 = v54 | 1;
          LODWORD(v82) = (v56 >> 1 << 16) / v42;
          do
          {
            v76 = HIWORD(v73);
            v73 += v82;
            v77 = v43 + v71 * v76;
            if (v84 >= v76 + 1)
            {
              v78 = v76 + 1;
            }

            else
            {
              v78 = v84;
            }

            v79 = v51;
            v72(v74, v77, v43 + v71 * v78);
            *v75 = *(v75 - 2);
            *(v74 + 2 * v83) = *(v75 - 1);
            v87(v40, v74, v88, v86, v85);
            v51 = v79;
            v40 += v70;
            --v42;
          }

          while (v42);
        }

        return 0;
      }

      LODWORD(v82) = v56;
      v83 = v55;
      v84 = v54;
      LODWORD(v88) = v51;
      v68 = 0;
    }

    else
    {
      LODWORD(v82) = v56;
      v83 = v55;
      v84 = v54;
      LODWORD(v88) = v51;
      v58 = 0;
      v59 = 0;
      v60 = v57;
      v61 = v57;
      v62 = v52;
      v63 = v41;
      v64 = ((v54 << 15) & 0xFFFF0000) / v41;
      do
      {
        v65 = HIWORD(v58);
        *v61++ = v58 >> 12;
        v58 += v64;
        *v62++ = 2 * (v65 - v59);
        v59 = v65;
        --v63;
      }

      while (v63);
      v66 = v50;
      v67 = v49;
      v68 = v41;
    }

    v69 = v52;
    bzero(&v52[v68], (v41 - v68 + 15) + 1);
    v51 = v88;
    v55 = v83;
    v54 = v84;
    v56 = v82;
    goto LABEL_26;
  }

  if (dword_280B9A880 >= 3)
  {
    fwrite("src and dst being the same buffer not supported so far!", 0x37uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "src and dst being the same buffer not supported so far!");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2774A6BB4(uint64_t result, _WORD *a2, int a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (a3 >= 1)
  {
    v5 = a3;
    v6 = (result + 1);
    do
    {
      v8 = *a5++;
      v7 = v8;
      v9 = *a4++;
      a2 += v9;
      *(v6 - 1) = (a2[2] * v7 + (16 - v7) * *a2 + 128) >> 8;
      *v6 = (a2[3] * v7 + (16 - v7) * a2[1] + 128) >> 8;
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

_BYTE *sub_2774A6C1C(_BYTE *result, _WORD *a2, int a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      v7 = *a5++;
      v6 = v7;
      v8 = 16 - v7;
      v9 = *a4++;
      a2 += v9;
      *result++ = (a2[1] * v6 + v8 * *a2 + 128) >> 8;
      --v5;
    }

    while (v5);
  }

  return result;
}

_WORD *sub_2774A6C64(_WORD *result, unsigned __int8 *a2, unsigned __int8 *a3, int a4, __int16 a5)
{
  if (a4 >= 1)
  {
    v5 = a4;
    do
    {
      v6 = *a2++;
      v7 = (16 - a5) * v6;
      v8 = *a3++;
      *result++ = v7 + v8 * a5;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2774A6C98(void (**a1)(uint64_t), CVBufferRef buffer, unint64_t a3, __CVBuffer *a4, unint64_t a5)
{
  valuePtr[0] = 0;
  Attachment = CVBufferGetAttachment(buffer, @"VPImageBufferLSBAligned", 0);
  if (Attachment)
  {
    v8 = Attachment;
    v9 = CFGetTypeID(Attachment);
    if (v9 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v8, kCFNumberSInt32Type, valuePtr + 4);
    }
  }

  v10 = CVBufferGetAttachment(a4, @"VPImageBufferLSBAligned", 0);
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v11, kCFNumberSInt32Type, valuePtr);
    }
  }

  if (CVPixelBufferGetPixelFormatType(buffer) == 1496395842)
  {
    HIDWORD(valuePtr[0]) = 10;
  }

  v60 = HIDWORD(a5);
  v61 = HIDWORD(a3);
  if (CVPixelBufferGetPixelFormatType(a4) == 1496395842)
  {
    v13 = 10;
    LODWORD(valuePtr[0]) = 10;
  }

  else
  {
    v13 = valuePtr[0];
  }

  v14 = HIDWORD(valuePtr[0]);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  v67 = a3;
  v15 = a5;
  v59 = a5;
  if (v14 == v13)
  {
    v16 = 0;
    for (i = 1; ; i = 0)
    {
      v65 = i;
      v18 = CVPixelBufferGetWidth(buffer) - v67;
      v19 = CVPixelBufferGetWidth(a4) - v15;
      v20 = CVPixelBufferGetHeightOfPlane(buffer, v16) - (v61 >> v16);
      v21 = v60 >> v16;
      v22 = CVPixelBufferGetHeightOfPlane(a4, v16) - (v60 >> v16);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, v16);
      v24 = CVPixelBufferGetBaseAddressOfPlane(a4, v16);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, v16);
      v26 = CVPixelBufferGetBytesPerRowOfPlane(a4, v16);
      if (v19 >= v18)
      {
        v27 = v18;
      }

      else
      {
        v27 = v19;
      }

      if (v22 >= v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = v22;
      }

      if (v24 && BaseAddressOfPlane)
      {
        v15 = v59;
        if (v28)
        {
          v29 = &BaseAddressOfPlane[2 * (BytesPerRowOfPlane >> 1) * (v61 >> v16) + 2 * v67];
          v30 = &v24[2 * (v26 >> 1) * v21 + 2 * v59];
          v31 = 2 * v27;
          v32 = 2 * (v26 >> 1);
          v33 = 2 * (BytesPerRowOfPlane >> 1);
          do
          {
            memcpy(v30, v29, v31);
            v30 += v32;
            v29 += v33;
            --v28;
          }

          while (v28);
        }
      }

      else
      {
        v15 = v59;
        if (v24)
        {
          if (dword_280B9A880 >= 3)
          {
            fwrite("10bit mono to 420 copy not implemented", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "10bit mono to 420 copy not implemented");
          }

          return 4294954386;
        }
      }

      v16 = 1;
      if ((v65 & 1) == 0)
      {
        CVPixelBufferUnlockBaseAddress(a4, 0);
        CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
        return 0;
      }
    }
  }

  v35 = 0;
  v55 = 0;
  v36 = 1;
  v57 = vdupq_n_s64(8uLL);
  do
  {
    v66 = v36;
    CVPixelBufferGetWidth(buffer);
    Width = CVPixelBufferGetWidth(a4);
    v38 = Width - v15;
    CVPixelBufferGetHeightOfPlane(buffer, v35);
    v62 = SHIDWORD(a5) >> v35;
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a4, v35);
    v39 = CVPixelBufferGetBaseAddressOfPlane(buffer, v35);
    v40 = CVPixelBufferGetBaseAddressOfPlane(a4, v35);
    CVPixelBufferGetBytesPerRowOfPlane(buffer, v35);
    v41 = CVPixelBufferGetBytesPerRowOfPlane(a4, v35) >> 1;
    if (v40 && v39)
    {
      v15 = a5;
      v42 = v40 + 2 * v41 * v62 + 2 * a5;
      if (LODWORD(valuePtr[0]))
      {
        if (HIDWORD(valuePtr[0]))
        {
          if (dword_280B9A880 >= 3)
          {
            fwrite("Conversion between bitdepths not supported\n", 0x2BuLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "Conversion between bitdepths not supported\n");
          }

          v55 = -12910;
        }

        else if (LODWORD(valuePtr[0]) == 10)
        {
          a1[3](v42);
        }

        else if (LODWORD(valuePtr[0]) == 9)
        {
          a1[2](v42);
        }
      }

      else if (HIDWORD(valuePtr[0]) == 10)
      {
        a1[1](v42);
      }

      else if (HIDWORD(valuePtr[0]) == 9)
      {
        (*a1)(v42);
      }
    }

    else if (v40)
    {
      v15 = a5;
      if (HeightOfPlane != v62)
      {
        v43 = 0;
        if (LODWORD(valuePtr[0]))
        {
          v44 = 1 << (LOBYTE(valuePtr[0]) - 1);
        }

        else
        {
          v44 = 0x8000;
        }

        v45 = vdupq_n_s64(v38 - 1);
        v46 = v40 + 2 * a5 + 2 * v41 * v62 + 8;
        do
        {
          if (Width != a5)
          {
            v47 = v46;
            v48 = (v38 + 7) & 0xFFFFFFFFFFFFFFF8;
            v49 = xmmword_27750D320;
            v50 = xmmword_27750D310;
            v51 = xmmword_27750D300;
            v52 = xmmword_27750D2F0;
            do
            {
              v53 = vmovn_s64(vcgeq_u64(v45, v49));
              if (vuzp1_s8(vuzp1_s16(v53, *v45.i8), *v45.i8).u8[0])
              {
                *(v47 - 4) = v44;
              }

              if (vuzp1_s8(vuzp1_s16(v53, *&v45), *&v45).i8[1])
              {
                *(v47 - 3) = v44;
              }

              if (vuzp1_s8(vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, *&v50))), *&v45).i8[2])
              {
                *(v47 - 2) = v44;
                *(v47 - 1) = v44;
              }

              v54 = vmovn_s64(vcgeq_u64(v45, v51));
              if (vuzp1_s8(*&v45, vuzp1_s16(v54, *&v45)).i32[1])
              {
                *v47 = v44;
              }

              if (vuzp1_s8(*&v45, vuzp1_s16(v54, *&v45)).i8[5])
              {
                v47[1] = v44;
              }

              if (vuzp1_s8(*&v45, vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, *&v52)))).i8[6])
              {
                v47[2] = v44;
                v47[3] = v44;
              }

              v51 = vaddq_s64(v51, v57);
              v50 = vaddq_s64(v50, v57);
              v49 = vaddq_s64(v49, v57);
              v47 += 8;
              v52 = vaddq_s64(v52, v57);
              v48 -= 8;
            }

            while (v48);
          }

          ++v43;
          v46 += 2 * v41;
        }

        while (v43 != HeightOfPlane - v62);
      }
    }

    else
    {
      v15 = a5;
    }

    v36 = 0;
    v35 = 1;
  }

  while ((v66 & 1) != 0);
  CVPixelBufferUnlockBaseAddress(a4, 0);
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  return v55;
}

uint64_t sub_2774A7328(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v8 = CVPixelBufferGetBytesPerRow(pixelBuffer) >> 1;
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v14[0] = CVPixelBufferGetBytesPerRowOfPlane(a3, 0) >> 1;
  v14[1] = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL) >> 1;
  v13[0] = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  v13[1] = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
  (*(a1 + 40))(v13, v14, BaseAddress, v8, Width, Height);
  valuePtr = 10;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CVBufferSetAttachment(a3, @"VPImageBufferLSBAligned", v10, kCVAttachmentMode_ShouldNotPropagate);
  CFRelease(v10);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return CVPixelBufferUnlockBaseAddress(a3, 0);
}

uint64_t sub_2774A74A0(void (**a1)(uint64_t), CVPixelBufferRef pixelBuffer, __CVBuffer *a3, unint64_t a4)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);

  return sub_2774A7520(a1, pixelBuffer, 0, Width, Height, a3, a4, 0);
}

uint64_t sub_2774A7520(void (**a1)(uint64_t), CVPixelBufferRef pixelBuffer, unint64_t a3, unsigned int a4, int a5, __CVBuffer *a6, unint64_t a7, int a8)
{
  LODWORD(v10) = a5;
  v14 = HIDWORD(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v68 = CVPixelBufferGetPixelFormatType(a6);
  Width = CVPixelBufferGetWidth(a6);
  v81 = a6;
  Height = CVPixelBufferGetHeight(a6);
  v18 = CVPixelBufferGetWidth(pixelBuffer) - a3;
  if (v18 >= a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = v18;
  }

  v80 = pixelBuffer;
  v79 = v14;
  v20 = CVPixelBufferGetHeight(pixelBuffer) - v14;
  if (v20 >= v10)
  {
    v10 = v10;
  }

  else
  {
    v10 = v20;
  }

  if ((v19 & 0x80000000) != 0 || (v10 & 0x80000000) != 0 || (v21 = Width - a7, v21 < 0) || (v22 = Height - (a7 >> 32), v22 < 0))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Invalid offset\n", 0xFuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Invalid offset\n");
    }

    return 4294954394;
  }

  if ((sub_2774A7D34(PixelFormatType) & 1) == 0)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Source format 0x%x not supported\n", PixelFormatType);
      syslog(27, "Source format 0x%x not supported\n");
    }

    return 4294954386;
  }

  v23 = v68;
  if ((sub_2774A7D34(v68) & 1) == 0)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Destination format 0x%x not supported\n", v68);
      syslog(27, "Destination format 0x%x not supported\n");
    }

    return 4294954386;
  }

  v24 = sub_2773F50D8(PixelFormatType);
  v25 = sub_2773F50D8(v68);
  if (v24 != 8)
  {
    if (v25 == 8)
    {
      if (HIDWORD(a7) || a7)
      {
        if (dword_280B9A880 >= 3)
        {
          v56 = *MEMORY[0x277D85DF8];
          v57 = "Dither doesn't support dstoffset\n";
LABEL_95:
          v59 = v57;
          v60 = 33;
LABEL_104:
          fwrite(v59, v60, 1uLL, v56);
          syslog(27, v57);
        }
      }

      else
      {
        if (!v79 && !a3)
        {
          result = sub_2773CFB3C((a1 + 6), pixelBuffer, v81);
          goto LABEL_72;
        }

        if (dword_280B9A880 >= 3)
        {
          v56 = *MEMORY[0x277D85DF8];
          v57 = "Dither doesn't support srcoffset\n";
          goto LABEL_95;
        }
      }

      return 4294954386;
    }

    if (PixelFormatType == 1983000886 && v25 >= 9)
    {
      if (HIDWORD(a7) || a7)
      {
        if (dword_280B9A880 < 3)
        {
          return 4294954386;
        }

        v56 = *MEMORY[0x277D85DF8];
        v57 = "v216 doesn't support dstoffset\n";
      }

      else
      {
        if (!v79 && !a3)
        {
          sub_2774A7328(a1, pixelBuffer, v81);
          result = 0;
          goto LABEL_72;
        }

        if (dword_280B9A880 < 3)
        {
          return 4294954386;
        }

        v56 = *MEMORY[0x277D85DF8];
        v57 = "v216 doesn't support srcoffset\n";
      }

      v59 = v57;
      v60 = 31;
      goto LABEL_104;
    }

    if (v25 < 9)
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "Unsupported conversion from pixfmt 0x%x to 0x%x\n", PixelFormatType, v68);
        syslog(27, "Unsupported conversion from pixfmt 0x%x to 0x%x\n");
      }

      return 4294954394;
    }

    result = sub_2774A6C98(a1, pixelBuffer, a3, v81, a7);
LABEL_72:
    v55 = a8;
    if (result)
    {
      return result;
    }

    goto LABEL_73;
  }

  v74 = a7;
  if (v25 != 8)
  {
    if (v25 >= 9)
    {
      v61 = v22;
      v62 = v21;
      v63 = v10;
      v64 = v19;
      v66 = HIDWORD(a7);
      v43 = 1;
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      CVPixelBufferLockBaseAddress(v81, 0);
      v44 = 0;
      v73 = a3;
      do
      {
        v76 = v43;
        v45 = CVPixelBufferGetWidth(v80) - v73;
        v46 = CVPixelBufferGetWidth(v81) - v74;
        CVPixelBufferGetHeightOfPlane(v80, v44);
        v47 = v66 >> v44;
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v81, v44);
        v48 = HeightOfPlane - v47;
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v80, v44);
        v50 = CVPixelBufferGetBaseAddressOfPlane(v81, v44);
        CVPixelBufferGetBytesPerRowOfPlane(v80, v44);
        v51 = CVPixelBufferGetBytesPerRowOfPlane(v81, v44) >> 1;
        if (v46 >= v45)
        {
          v46 = v45;
        }

        v52 = &v50[2 * v51 * v47 + 2 * v74];
        if (v50 && BaseAddressOfPlane)
        {
          a1[4](v52);
          v53 = v76;
        }

        else
        {
          v53 = v76;
          if (v50 && HeightOfPlane != v47)
          {
            v54 = 2 * v51;
            do
            {
              if (v46)
              {
                memset_pattern16(v52, &unk_27750D840, 2 * v46);
              }

              v52 += v54;
              --v48;
            }

            while (v48);
          }
        }

        v43 = 0;
        v44 = 1;
      }

      while ((v53 & 1) != 0);
      goto LABEL_60;
    }

    return 4294954394;
  }

  v61 = v22;
  v62 = v21;
  v63 = v10;
  v64 = v19;
  v65 = HIDWORD(a7);
  v26 = 1;
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(v81, 0);
  v27 = 0;
  v71 = a3;
  do
  {
    v78 = v26;
    v75 = CVPixelBufferGetWidth(v80) - v71;
    v28 = CVPixelBufferGetWidth(v81) - v74;
    v69 = v79 >> v27;
    v29 = CVPixelBufferGetHeightOfPlane(v80, v27) - (v79 >> v27);
    v72 = CVPixelBufferGetHeightOfPlane(v81, v27);
    v30 = v72 - (v65 >> v27);
    v31 = CVPixelBufferGetBaseAddressOfPlane(v80, v27);
    v32 = CVPixelBufferGetBaseAddressOfPlane(v81, v27);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v80, v27);
    v34 = CVPixelBufferGetBytesPerRowOfPlane(v81, v27);
    v35 = v65 >> v27;
    v36 = v34;
    v37 = v31;
    if (v28 >= v75)
    {
      v38 = v75;
    }

    else
    {
      v38 = v28;
    }

    if (v30 >= v29)
    {
      v39 = v29;
    }

    else
    {
      v39 = v72 - (v65 >> v27);
    }

    v40 = &v32[v34 * v35 + v74];
    if (v32 && v37)
    {
      if (v39)
      {
        v41 = &v37[BytesPerRowOfPlane * v69 + v71];
        do
        {
          memcpy(v40, v41, v38);
          v41 += BytesPerRowOfPlane;
          v40 += v36;
          --v39;
        }

        while (v39);
      }
    }

    else if (v32 && v72 != v35)
    {
      do
      {
        memset(v40, 128, v28);
        v40 += v36;
        --v30;
      }

      while (v30);
    }

    v26 = 0;
    v27 = 1;
  }

  while ((v78 & 1) != 0);
LABEL_60:
  CVPixelBufferUnlockBaseAddress(v81, 0);
  CVPixelBufferUnlockBaseAddress(v80, 1uLL);
  result = 0;
  v23 = v68;
  v55 = a8;
  v10 = v63;
  v19 = v64;
  v22 = v61;
  v21 = v62;
LABEL_73:
  if (v55)
  {
    if (v21 >= v19)
    {
      v58 = v19;
    }

    else
    {
      v58 = v21;
    }

    if (v22 >= v10)
    {
      v22 = v10;
    }

    if (v23 == 1278226488)
    {

      return sub_2774A7DFC(v81, v58, v22);
    }

    else if ((v23 & 0xFFFFFFFD) == 0x4C303130)
    {

      return sub_2774A7F38(0, v81, v58, v22);
    }

    else if (sub_2773F50D8(v23) == 8)
    {

      return sub_2774A819C(v81, v58, v22);
    }

    else
    {

      return sub_2774A8204(v81, v58, v22);
    }
  }

  return result;
}

uint64_t sub_2774A7D34(int a1)
{
  result = 1;
  if (a1 <= 1278226737)
  {
    if (a1 > 1278226487)
    {
      if (a1 == 1278226488)
      {
        return result;
      }

      v3 = 1278226736;
    }

    else
    {
      if (a1 == 875704422)
      {
        return result;
      }

      v3 = 875704438;
    }

    goto LABEL_13;
  }

  if (a1 <= 1983000885)
  {
    if (a1 == 1278226738)
    {
      return result;
    }

    v3 = 1496395842;
    goto LABEL_13;
  }

  if (a1 != 1983000886 && a1 != 2016686640)
  {
    v3 = 2019963440;
LABEL_13:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2774A7DFC(__CVBuffer *a1, unint64_t a2, size_t a3)
{
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (BaseAddressOfPlane)
  {
    v7 = BaseAddressOfPlane;
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    v11 = HeightOfPlane;
    if (WidthOfPlane > a2 || HeightOfPlane > a3)
    {
      v12 = WidthOfPlane - a2;
      if (WidthOfPlane > a2 && a3)
      {
        v13 = &v7[a2];
        v14 = a3;
        do
        {
          memset(v13, *(v13 - 1), v12);
          v13 += BytesPerRowOfPlane;
          --v14;
        }

        while (v14);
      }

      v15 = v11 > a3;
      v16 = v11 - a3;
      if (v15)
      {
        v17 = &v7[BytesPerRowOfPlane * (a3 - 1)];
        v18 = &v7[BytesPerRowOfPlane * a3];
        do
        {
          memcpy(v18, v17, WidthOfPlane);
          v18 += BytesPerRowOfPlane;
          --v16;
        }

        while (v16);
      }
    }

    return 0;
  }

  else
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("NULL returned from CVPixelBufferGetBaseAddress (not locked?)\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "NULL returned from CVPixelBufferGetBaseAddress (not locked?)\n");
    }

    return 4294954385;
  }
}

uint64_t sub_2774A7F38(size_t planeIndex, CVPixelBufferRef pixelBuffer, unint64_t a3, unint64_t a4)
{
  v7 = planeIndex;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, planeIndex);
  if (BaseAddressOfPlane)
  {
    v9 = BaseAddressOfPlane;
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v7);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, v7);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, v7);
    if (WidthOfPlane > a3 || HeightOfPlane > a4)
    {
      v13 = WidthOfPlane - a3;
      if (WidthOfPlane > a3 && a4)
      {
        v14 = 0;
        v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
        v16 = vdupq_n_s64(v13 - 1);
        v17 = &v9[2 * a3 + 8];
        do
        {
          v18 = 0;
          v19 = *&v9[2 * a3 - 2 + v14 * BytesPerRowOfPlane];
          v20 = v17;
          do
          {
            v21 = vdupq_n_s64(v18);
            v22 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v21, xmmword_27750D320)));
            if (vuzp1_s8(vuzp1_s16(v22, *v16.i8), *v16.i8).u8[0])
            {
              *(v20 - 4) = v19;
            }

            if (vuzp1_s8(vuzp1_s16(v22, *&v16), *&v16).i8[1])
            {
              *(v20 - 3) = v19;
            }

            if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v21, xmmword_27750D310)))), *&v16).i8[2])
            {
              *(v20 - 2) = v19;
              *(v20 - 1) = v19;
            }

            v23 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v21, xmmword_27750D300)));
            if (vuzp1_s8(*&v16, vuzp1_s16(v23, *&v16)).i32[1])
            {
              *v20 = v19;
            }

            if (vuzp1_s8(*&v16, vuzp1_s16(v23, *&v16)).i8[5])
            {
              v20[1] = v19;
            }

            if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v21, xmmword_27750D2F0))))).i8[6])
            {
              v20[2] = v19;
              v20[3] = v19;
            }

            v18 += 8;
            v20 += 8;
          }

          while (v15 != v18);
          ++v14;
          v17 += BytesPerRowOfPlane;
        }

        while (v14 != a4);
      }

      v24 = HeightOfPlane - a4;
      if (HeightOfPlane > a4)
      {
        v25 = &v9[BytesPerRowOfPlane * (a4 - 1)];
        v26 = 2 * WidthOfPlane;
        v27 = &v9[BytesPerRowOfPlane * a4];
        do
        {
          memcpy(v27, v25, v26);
          v27 += BytesPerRowOfPlane;
          --v24;
        }

        while (v24);
      }
    }

    return 0;
  }

  else
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("NULL returned from CVPixelBufferGetBaseAddress (not locked?)\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "NULL returned from CVPixelBufferGetBaseAddress (not locked?)\n");
    }

    return 4294954385;
  }
}

uint64_t sub_2774A819C(__CVBuffer *a1, unint64_t a2, size_t a3)
{
  result = sub_2774A7DFC(a1, a2, a3);
  if (!result)
  {

    return sub_2774A7F38(1uLL, a1, a2 >> 1, a3 >> 1);
  }

  return result;
}

uint64_t sub_2774A8204(CVPixelBufferRef pixelBuffer, unint64_t a2, unint64_t a3)
{
  result = sub_2774A7F38(0, pixelBuffer, a2, a3);
  if (!result)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    if (BaseAddressOfPlane)
    {
      v8 = BaseAddressOfPlane;
      v9 = a2 >> 1;
      v10 = a3 >> 1;
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 1uLL);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 1uLL);
      if (WidthOfPlane > v9 || HeightOfPlane > v10)
      {
        if (a3 >= 2)
        {
          v14 = WidthOfPlane - v9;
          if (WidthOfPlane > v9)
          {
            v15 = 0;
            v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v17 = vdupq_n_s64(v14 - 1);
            v18 = &v8[4 * v9 + 8];
            do
            {
              v19 = 0;
              v20 = *&v8[4 * v9 - 4 + v15 * BytesPerRowOfPlane];
              v21 = v18;
              do
              {
                v22 = vdupq_n_s64(v19);
                v23 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_27750D320)));
                if (vuzp1_s16(v23, *v17.i8).u8[0])
                {
                  *(v21 - 2) = v20;
                }

                if (vuzp1_s16(v23, *&v17).i8[2])
                {
                  *(v21 - 1) = v20;
                }

                if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_27750D310)))).i32[1])
                {
                  *v21 = v20;
                  v21[1] = v20;
                }

                v19 += 4;
                v21 += 4;
              }

              while (v16 != v19);
              ++v15;
              v18 += BytesPerRowOfPlane;
            }

            while (v15 != v10);
          }
        }

        v24 = HeightOfPlane - v10;
        if (HeightOfPlane > v10)
        {
          v25 = &v8[BytesPerRowOfPlane * (v10 - 1)];
          v26 = 4 * WidthOfPlane;
          v27 = &v8[BytesPerRowOfPlane * v10];
          do
          {
            memcpy(v27, v25, v26);
            v27 += BytesPerRowOfPlane;
            --v24;
          }

          while (v24);
        }
      }

      return 0;
    }

    else
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("NULL returned from CVPixelBufferGetBaseAddress (not locked?)\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "NULL returned from CVPixelBufferGetBaseAddress (not locked?)\n");
      }

      return 4294954385;
    }
  }

  return result;
}

uint64_t *sub_2774A8400(uint64_t *result, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a6 >= 2)
  {
    v6 = 0;
    v7 = a6 >> 1;
    v8 = 4 * a4;
    v9 = 4 * *a2;
    v10 = *result;
    v11 = result[1];
    v12 = (a3 + 6);
    v13 = *result + 2 * *a2 + 2;
    v14 = a4;
    v15 = 2 * a2[1];
    do
    {
      if (a5 >= 2)
      {
        v16 = 0;
        v17 = v13;
        v18 = v12;
        v19 = a5 >> 1;
        do
        {
          v20 = *(v18 - 2) + 32;
          if (v20 >= 0xFFFF)
          {
            v20 = 0xFFFF;
          }

          *(v10 + v16) = v20 >> 6;
          v21 = *v18 + 32;
          if (v21 >= 0xFFFF)
          {
            v21 = 0xFFFF;
          }

          *(v10 + v16 + 2) = v21 >> 6;
          v22 = *(v18 - 3) + 32;
          if (v22 >= 0xFFFF)
          {
            v22 = 0xFFFF;
          }

          *(v11 + v16) = v22 >> 6;
          v23 = *(v18 - 1) + 32;
          if (v23 >= 0xFFFF)
          {
            v23 = 0xFFFF;
          }

          *(v11 + v16 + 2) = v23 >> 6;
          v24 = v18[v14 - 2] + 32;
          if (v24 >= 0xFFFF)
          {
            v24 = 0xFFFF;
          }

          *(v17 - 1) = v24 >> 6;
          v25 = v18[v14] + 32;
          if (v25 >= 0xFFFF)
          {
            v25 = 0xFFFF;
          }

          *v17 = v25 >> 6;
          v17 += 2;
          v18 += 4;
          v16 += 4;
          --v19;
        }

        while (v19);
      }

      ++v6;
      v10 += v9;
      v11 += v15;
      v12 = (v12 + v8);
      v13 += v9;
    }

    while (v6 != v7);
    *result = v10;
    result[1] = v11;
  }

  return result;
}

uint64_t sub_2774A852C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a5)
      {
        for (j = 0; j != a5; ++j)
        {
          *(result + 2 * j) = 4 * *(a3 + j);
        }
      }

      a3 += a4;
      result += 2 * a2;
    }
  }

  return result;
}

uint64_t sub_2774A8570(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a5)
      {
        for (j = 0; j != a5; ++j)
        {
          *(result + 2 * j) = *(a3 + 2 * j) >> 7;
        }
      }

      result += 2 * a2;
      a3 += 2 * a4;
    }
  }

  return result;
}

uint64_t sub_2774A85B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a5)
      {
        for (j = 0; j != a5; ++j)
        {
          *(result + 2 * j) = *(a3 + 2 * j) << 7;
        }
      }

      result += 2 * a2;
      a3 += 2 * a4;
    }
  }

  return result;
}

void sub_2774A8600(uint64_t a1)
{
  v2 = *(a1 + 16) << *(a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v3 = *(a1 + 28);
  v4 = ((v2 << v3) + 31) & 0xFFFFFFFFFFFFFFE0;
  if (*(a1 + 29) == 3)
  {
    ++v3;
  }

  v5 = ((v2 << v3) + 31) & 0xFFFFFFE0;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * (v5 + v4) + 64, 0xBBF09E97uLL))
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v11, &unk_288662E48, MEMORY[0x277D826E0]);
  }

  v6 = 2 * v4;
  v7 = memptr;
  v8 = *(a1 + 64);
  *(a1 + 64) = memptr;
  if (v8)
  {
    free(v8);
    v7 = *(a1 + 64);
  }

  v9 = v7 + 32;
  *(a1 + 32) = v9;
  *(a1 + 40) = &v9[v4];
  *(a1 + 48) = &v9[v6];
  *(a1 + 56) = &v9[v6 + v5];
  if ((v9 & 0x1F) != 0 && dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "UNALIGNED! %p %p\n", v9, &v9[v4]);
    syslog(27, "UNALIGNED! %p %p\n", *(a1 + 32), *(a1 + 40));
  }
}

uint64_t sub_2774A8744(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 + 2117);
  *(a1 + 8) = *(v3 + 2113);
  *(a1 + 12) = v4;
  *(a1 + 16) = *(v3 + 2120);
  *a1 = 0;
  v5 = sub_2774A8798(a1, a2);
  if (!v5)
  {
    sub_2774A8600(a1);
  }

  return v5;
}

uint64_t sub_2774A8798(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 + 2096);
  v6 = v5 > 8 || *(v4 + 2098) > 8u;
  *(a1 + 28) = v6;
  v7 = *(v4 + 201);
  *(a1 + 29) = v7;
  if (v5 >= 0xA)
  {
    LOBYTE(v5) = 10;
  }

  *(a1 + 30) = ~(-1 << (v5 - 5));
  v8 = *(*(a2 + 16) + 2098);
  if (v8 >= 0xA)
  {
    LOBYTE(v8) = 10;
  }

  *(a1 + 31) = ~(-1 << (v8 - 5));
  (*(&off_288662308[4 * v7] + 2 * v6))(a1, a2);
  v9 = *(a2 + 16);
  v10 = v9[2096];
  if (v10 == 8)
  {
    v11 = v9[2098];
    if (v11 == 8)
    {
      result = 0;
      *(a1 + 432) = nullsub_25;
      *(a1 + 72) = sub_2773D19E4;
      *(a1 + 80) = sub_2773D1930;
      *(a1 + 88) = sub_2773D17D8;
      *(a1 + 96) = sub_2773D1690;
      *(a1 + 104) = sub_2773D1658;
      *(a1 + 112) = sub_2773D15BC;
      *(a1 + 120) = sub_2773D1508;
      *(a1 + 128) = sub_2773D13B0;
      *(a1 + 136) = sub_2773D1268;
      *(a1 + 144) = sub_2773D1230;
      *(a1 + 152) = sub_2773D114C;
      *(a1 + 160) = sub_2773D1070;
      *(a1 + 168) = sub_2773D0ED4;
      *(a1 + 176) = sub_2773D0D44;
      *(a1 + 184) = sub_2773D0CFC;
      *(a1 + 192) = sub_2773D0BB0;
      *(a1 + 200) = sub_2773D0A64;
      *(a1 + 208) = sub_2773D083C;
      *(a1 + 216) = sub_2773D0630;
      *(a1 + 224) = sub_2773D05C8;
      *(a1 + 264) = sub_2774B1DAC;
      *(a1 + 440) = nullsub_25;
      *(a1 + 232) = sub_2773D3378;
      *(a1 + 240) = sub_2773D32B4;
      *(a1 + 248) = sub_2773D3154;
      *(a1 + 256) = sub_2773D3004;
      *(a1 + 272) = sub_2773D2F58;
      *(a1 + 280) = sub_2773D2E94;
      *(a1 + 288) = sub_2773D2D34;
      *(a1 + 296) = sub_2773D2BE4;
      *(a1 + 312) = sub_2773D2AF0;
      *(a1 + 320) = sub_2773D2A04;
      *(a1 + 328) = sub_2773D2860;
      *(a1 + 336) = sub_2773D26C8;
      *(a1 + 352) = sub_2773D244C;
      *(a1 + 360) = sub_2773D2240;
      *(a1 + 368) = sub_2773D1F50;
      *(a1 + 376) = sub_2773D1C7C;
      *(a1 + 304) = sub_2773D2638;
      *(a1 + 344) = sub_2773D25A8;
      *(a1 + 384) = sub_2773D1AE8;
      *(a1 + 392) = sub_2773D239C;
      *(a1 + 400) = sub_2773D2180;
      *(a1 + 408) = sub_2773D1E90;
      *(a1 + 416) = sub_2773D1BBC;
      *(a1 + 424) = sub_2773D1A80;
      return result;
    }
  }

  else
  {
    if (v10 > 0xC)
    {
      goto LABEL_15;
    }

    v11 = v9[2098];
  }

  if (v11 <= 0xC)
  {
    (off_288662268[4 * v9[222]])(a1);
    (off_288662268[4 * *(*(a2 + 16) + 223) + 2])(a1);
    return 0;
  }

LABEL_15:
  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Luma/Chroma bitdepth %d/%d not supported\n", v10, v9[2098]);
    syslog(27, "Luma/Chroma bitdepth %d/%d not supported\n", *(*(a2 + 16) + 2096), *(*(a2 + 16) + 2098));
  }

  return 4294954386;
}

void *sub_2774A8C18(void *result)
{
  result[33] = sub_2774A9AC4;
  result[29] = sub_2773E89F8;
  result[30] = sub_2773E8910;
  result[31] = sub_2773E8794;
  result[32] = sub_2773E8628;
  result[34] = sub_2773E8528;
  result[35] = sub_2773E841C;
  result[36] = sub_2773E8260;
  result[37] = sub_2773E80B4;
  result[39] = sub_2773E7F3C;
  result[40] = sub_2773E7DB0;
  result[41] = sub_2773E7B64;
  result[42] = sub_2773E7930;
  result[44] = sub_2773E74D8;
  result[45] = sub_2773E7168;
  result[46] = sub_2773E6D20;
  result[47] = sub_2773E68E4;
  result[38] = sub_2773E7874;
  result[43] = sub_2773E7764;
  result[48] = sub_2773E6634;
  result[49] = sub_2773E7428;
  result[50] = sub_2773E70A8;
  result[51] = sub_2773E6C60;
  result[52] = sub_2773E6824;
  result[53] = sub_2773E65CC;
  result[55] = sub_2773DB284;
  return result;
}

__int16 *sub_2774A8DBC(__int16 *result, uint64_t a2, uint64_t a3, __int16 *a4, unsigned int a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = &result[2 * a5 - 2];
    v7 = a6;
    v8 = 2 * a2;
    do
    {
      *a4 = *v6;
      a4 += 2;
      v6 = (v6 + v8);
      --v7;
    }

    while (v7);
    for (i = 0; i != a6; ++i)
    {
      v10 = result;
      v11 = a5;
      do
      {
        v12 = *(a3 + (*v10 >> 7)) + *v10;
        if (v12 >= 0xFFF)
        {
          v13 = 4095;
        }

        else
        {
          v13 = *(a3 + (*v10 >> 7)) + *v10;
        }

        if (v12 <= 0)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        *v10 = v14;
        v10 += 2;
        --v11;
      }

      while (v11);
      result = (result + v8);
    }
  }

  return result;
}

uint64_t sub_2774A8E40(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7, int a8)
{
  v130 = *MEMORY[0x277D85DE8];
  v14 = (a4 >> 1) & 1;
  v15 = 2 * a7;
  v125 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * v15 - 4];
    v17 = a8;
    v18 = v129;
    do
    {
      *v18++ = *v16;
      v16 += 2 * a2;
      --v17;
    }

    while (v17);
  }

  v123 = a4;
  v19 = ~a4 & 5;
  __n = 4 * (v14 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v19)
  {
    v21 = a5[2];
    v22 = *__src;
    v23 = *(a6 + 4);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v24 = __OFSUB__(v22, v21);
    v28 = v22 - v21;
    if ((v28 < 0) ^ v24 | (v28 == 0))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(a3 + (v29 | (v28 >> 31)) + v27 + 2) + v22;
    if (v30 >= 0xFFF)
    {
      v31 = 4095;
    }

    else
    {
      v31 = v30;
    }

    if (v30 <= 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    *__src = v32;
  }

  v33 = &__src[2 * a2];
  if ((v123 & 0x20) != 0)
  {
    v34 = *&v33[2 * v15 - 8];
    v35 = *&__src[2 * v15 - 4];
    v36 = *(a6 + 2 * v15);
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v24 = __OFSUB__(v35, v34);
    v40 = v35 - v34;
    if ((v40 < 0) ^ v24 | (v40 == 0))
    {
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = *(a3 + (v41 | (v40 >> 31)) + v39 + 2) + v35;
    if (v42 >= 0xFFF)
    {
      v43 = 4095;
    }

    else
    {
      v43 = v42;
    }

    if (v42 <= 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    *&__src[2 * v15 - 4] = v44;
  }

  if ((v123 & 4) != 0)
  {
    v46 = 0;
    v45 = (a7 - 1);
    v47 = v45 - 1;
    v48 = 4;
    do
    {
      v49 = *&v33[v46 >> 31];
      v50 = *&__src[2 * v48 - 4];
      v51 = *(a6 + 2 * v48);
      v24 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if ((v52 < 0) ^ v24 | (v52 == 0))
      {
        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v54 = v53 | (v52 >> 31);
      v24 = __OFSUB__(v50, v49);
      v55 = v50 - v49;
      if ((v55 < 0) ^ v24 | (v55 == 0))
      {
        result = 0;
      }

      else
      {
        result = 1;
      }

      v56 = *(a3 + ((result | (v55 >> 31)) + v54 + 2)) + v50;
      if (v56 >= 0xFFF)
      {
        v57 = 4095;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *&__src[2 * v48 - 4] = v58;
      v48 += 2;
      v46 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  else
  {
    LODWORD(v45) = a7 - 1;
  }

  v122 = v45;
  if (a8 < 3)
  {
    v67 = __dst;
  }

  else
  {
    v59 = &v128;
    v60 = v45 - (v14 ^ 1);
    v61 = !(v123 & 1);
    if (v60 <= v61)
    {
      v62 = !(v123 & 1);
    }

    else
    {
      v62 = v60;
    }

    v63 = v62 + 1;
    v64 = __dst;
    v65 = 1;
    v66 = &__src[2 * a2];
    do
    {
      v67 = v59;
      result = memcpy(v59, v66, __n);
      v33 = &v66[2 * a2];
      v68 = v61;
      v69 = !(v123 & 1);
      do
      {
        v70 = &v33[1 * v68 - 4];
        if (!v69)
        {
          v70 = &a5[2 * v65 + 2];
        }

        v71 = *&v66[1 * v68];
        v72 = *v70;
        v73 = LOWORD(v64[v68 + 1]);
        v24 = __OFSUB__(v71, v73);
        v74 = v71 - v73;
        if ((v74 < 0) ^ v24 | (v74 == 0))
        {
          v75 = 0;
        }

        else
        {
          v75 = 1;
        }

        v76 = v75 | (v74 >> 31);
        v24 = __OFSUB__(v71, v72);
        v77 = v71 - v72;
        if ((v77 < 0) ^ v24 | (v77 == 0))
        {
          v78 = 0;
        }

        else
        {
          v78 = 1;
        }

        v79 = *(a3 + (v78 | (v77 >> 31)) + v76 + 2) + v71;
        if (v79 >= 0xFFF)
        {
          v80 = 4095;
        }

        else
        {
          v80 = v79;
        }

        if (v79 <= 0)
        {
          v81 = 0;
        }

        else
        {
          v81 = v80;
        }

        *&v66[1 * v68] = v81;
        ++v69;
        ++v68;
      }

      while (v63 != v69);
      ++v65;
      v66 += 2 * a2;
      v59 = v64;
      v64 = v67;
    }

    while (v65 != v125);
  }

  v82 = &v33[2 * a2];
  if ((v123 & 0x40) != 0)
  {
    v83 = *(v82 - 2);
    v84 = *v33;
    v85 = *(v67 + 2);
    v24 = __OFSUB__(v84, v85);
    v86 = v84 - v85;
    if ((v86 < 0) ^ v24 | (v86 == 0))
    {
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v88 = v87 | (v86 >> 31);
    v24 = __OFSUB__(v84, v83);
    v89 = v84 - v83;
    if ((v89 < 0) ^ v24 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = *(a3 + (v90 | (v89 >> 31)) + v88 + 2) + v84;
    if (v91 >= 0xFFF)
    {
      v92 = 4095;
    }

    else
    {
      v92 = v91;
    }

    if (v91 <= 0)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    *v33 = v93;
  }

  if ((v123 & 0xA) == 0xA)
  {
    v94 = &v33[4 * v122];
    v95 = v94[a2 - 2];
    v96 = LOWORD(v67[v122 + 1]);
    v97 = *v94;
    v24 = __OFSUB__(v97, v96);
    v98 = v97 - v96;
    if ((v98 < 0) ^ v24 | (v98 == 0))
    {
      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    v100 = v99 | (v98 >> 31);
    v24 = __OFSUB__(v97, v95);
    v101 = v97 - v95;
    if ((v101 < 0) ^ v24 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = *(a3 + (v102 | (v101 >> 31)) + v100 + 2) + v97;
    if (v103 >= 0xFFF)
    {
      v104 = 4095;
    }

    else
    {
      v104 = v103;
    }

    if (v103 <= 0)
    {
      v105 = 0;
    }

    else
    {
      v105 = v104;
    }

    *v94 = v105;
  }

  if ((v123 & 8) != 0)
  {
    v106 = 0;
    v107 = v122 - 1;
    v108 = 2;
    do
    {
      v109 = *&v82[v106 >> 31];
      v110 = *&v33[1 * v108 - 4];
      v111 = LOWORD(v67[v108]);
      v24 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if ((v112 < 0) ^ v24 | (v112 == 0))
      {
        v113 = 0;
      }

      else
      {
        v113 = 1;
      }

      result = v113 | (v112 >> 31);
      v24 = __OFSUB__(v110, v109);
      v114 = v110 - v109;
      if ((v114 < 0) ^ v24 | (v114 == 0))
      {
        v115 = 0;
      }

      else
      {
        v115 = 1;
      }

      v116 = *(a3 + (v115 | (v114 >> 31)) + result + 2) + v110;
      if (v116 >= 0xFFF)
      {
        v117 = 4095;
      }

      else
      {
        v117 = v116;
      }

      if (v116 <= 0)
      {
        v118 = 0;
      }

      else
      {
        v118 = v117;
      }

      *&v33[1 * v108++ - 4] = v118;
      v106 += 0x200000000;
      --v107;
    }

    while (v107);
  }

  if (a8 >= 1)
  {
    v119 = a8;
    v120 = v129;
    do
    {
      v121 = *v120++;
      *a5 = v121;
      a5 += 2;
      --v119;
    }

    while (v119);
  }

  return result;
}

uint64_t sub_2774A92E0(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v128 = *MEMORY[0x277D85DE8];
  v15 = v125;
  v16 = 2 * a7;
  v122 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * v16 - 4];
    v18 = a8;
    v19 = v127;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v123 = a2;
  v20 = a4 & 6;
  __n = 4 * a7;
  memcpy(v125, __src, __n);
  v124 = *a5;
  v118 = a2;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 2);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[2];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0xFFF)
    {
      v32 = 4095;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v20 == 6)
  {
    v34 = &__src[2 * v16];
    v35 = *(v34 - 2);
    v36 = a6[v16 - 4];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * v118];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0xFFF)
    {
      v44 = 4095;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *(v34 - 2) = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (__src + 4);
    v49 = 0x400000000;
    do
    {
      v50 = *v48;
      v51 = *a6;
      a6 += 2;
      v52 = (v50 > v51) | ((v50 - v51) >> 31);
      v53 = *(v21 + (v49 >> 31));
      v24 = __OFSUB__(v50, v53);
      v54 = v50 - v53;
      if ((v54 < 0) ^ v24 | (v54 == 0))
      {
        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v56 = *(a3 + v52 + (v55 | (v54 >> 31)) + 2) + v50;
      if (v56 >= 0xFFF)
      {
        v57 = 4095;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *v48 = v58;
      v48 += 2;
      v49 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  v117 = a8;
  v116 = a7 - 1;
  if (a8 < 3)
  {
    v64 = v125;
    v65 = v21;
  }

  else
  {
    v59 = &v126;
    v60 = 1;
    LODWORD(v61) = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    v62 = !(a4 & 1);
    if (v61 <= v62)
    {
      v61 = !(a4 & 1);
    }

    else
    {
      v61 = v61;
    }

    v120 = v61 - v62 + 1;
    v63 = (v62 << 33) + 0x200000000;
    do
    {
      v64 = v59;
      memcpy(v59, v21, __n);
      *(v64 - 2) = a5[2 * v60];
      v65 = &v21[v123];
      v66 = 2 * !(a4 & 1);
      v67 = v63;
      v68 = v120;
      do
      {
        v69 = v21[v66];
        v70 = v15[v66 - 2];
        v24 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if ((v71 < 0) ^ v24 | (v71 == 0))
        {
          v72 = 0;
        }

        else
        {
          v72 = 1;
        }

        v73 = *(a3 + (v72 | (v71 >> 31)) + ((v69 > *(v65 + (v67 >> 31))) | ((v69 - *(v65 + (v67 >> 31))) >> 31)) + 2) + v69;
        if (v73 >= 0xFFF)
        {
          v74 = 4095;
        }

        else
        {
          v74 = v73;
        }

        if (v73 <= 0)
        {
          v75 = 0;
        }

        else
        {
          v75 = v74;
        }

        v21[v66] = v75;
        v67 += 0x200000000;
        v66 += 2;
        --v68;
      }

      while (v68);
      ++v60;
      v21 = (v21 + v123 * 2);
      v59 = v15;
      v15 = v64;
    }

    while (v60 != v122);
  }

  v76 = &v65[v118];
  if ((a4 & 9) == 9)
  {
    v77 = *v65;
    v78 = *(v64 - 2);
    v24 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if ((v79 < 0) ^ v24 | (v79 == 0))
    {
      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v81 = v80 | (v79 >> 31);
    v82 = v76[2];
    v24 = __OFSUB__(v77, v82);
    v83 = v77 - v82;
    if ((v83 < 0) ^ v24 | (v83 == 0))
    {
      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = *(a3 + v81 + (v84 | (v83 >> 31)) + 2) + v77;
    if (v85 >= 0xFFF)
    {
      v86 = 4095;
    }

    else
    {
      v86 = v85;
    }

    if (v85 <= 0)
    {
      v87 = 0;
    }

    else
    {
      v87 = v86;
    }

    *v65 = v87;
  }

  result = v117;
  if ((a4 & 0x80) != 0)
  {
    v89 = &v65[2 * v116];
    v90 = *v89;
    v91 = v64[2 * v116 - 2];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[v118 + 2];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0xFFF)
    {
      v99 = 4095;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((a4 & 8) != 0)
  {
    v101 = v116 - 1;
    v102 = (v65 + 2);
    v103 = 0x400000000;
    do
    {
      v104 = *v102;
      v105 = *v64;
      v64 += 2;
      v106 = (v104 > v105) | ((v104 - v105) >> 31);
      v107 = *(v76 + (v103 >> 31));
      v24 = __OFSUB__(v104, v107);
      v108 = v104 - v107;
      if ((v108 < 0) ^ v24 | (v108 == 0))
      {
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(a3 + v106 + (v109 | (v108 >> 31)) + 2) + v104;
      if (v110 >= 0xFFF)
      {
        v111 = 4095;
      }

      else
      {
        v111 = v110;
      }

      if (v110 <= 0)
      {
        v112 = 0;
      }

      else
      {
        v112 = v111;
      }

      *v102 = v112;
      v102 += 2;
      v103 += 0x200000000;
      --v101;
    }

    while (v101);
  }

  if (v117 >= 1)
  {
    v113 = v117;
    v114 = v127;
    do
    {
      v115 = *v114++;
      *a5 = v115;
      a5 += 2;
      --v113;
    }

    while (v113);
  }

  return result;
}

uint64_t sub_2774A977C(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774A8E40(a1, a2, a3, a4, a5, a6, 32, a7);

  return sub_2774A8E40(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 32, a7);
}

uint64_t sub_2774A9808(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774A92E0(a1, a2, a3, a4, a5, a6, 0x20u, a7);

  return sub_2774A92E0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x20u, a7);
}

uint64_t sub_2774A9894(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774A8E40(a1, a2, a3, a4, a5, a6, 16, a7);

  return sub_2774A8E40(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 16, a7);
}

uint64_t sub_2774A9920(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774A92E0(a1, a2, a3, a4, a5, a6, 0x10u, a7);

  return sub_2774A92E0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x10u, a7);
}

uint64_t sub_2774A99AC(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774A8E40(a1, a2, a3, a4, a5, a6, 8, a7);

  return sub_2774A8E40(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 8, a7);
}

uint64_t sub_2774A9A38(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774A92E0(a1, a2, a3, a4, a5, a6, 8u, a7);

  return sub_2774A92E0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 8u, a7);
}

__int16 *sub_2774A9AC4(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  sub_2774A8DBC(a1, a2, a3, a5, 4u, a7);

  return sub_2774A8DBC(a1 + 1, a2, a3 + 32, a5 + 1, 4u, a7);
}

uint64_t sub_2774A9B3C(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774A8E40(a1, a2, a3, a4, a5, a6, 4, a7);

  return sub_2774A8E40(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 4, a7);
}

uint64_t sub_2774A9BC8(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774A92E0(a1, a2, a3, a4, a5, a6, 4u, a7);

  return sub_2774A92E0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 4u, a7);
}

void *sub_2774A9C54(void *result)
{
  result[9] = sub_2773DD16C;
  result[10] = sub_2773DD09C;
  result[11] = sub_2773DCF30;
  result[12] = sub_2773DCDD4;
  result[13] = sub_2773DCD88;
  result[14] = sub_2773DCC94;
  result[15] = sub_2773DCB9C;
  result[16] = sub_2773DC9EC;
  result[17] = sub_2773DC84C;
  result[18] = sub_2773DC7EC;
  result[19] = sub_2773DC680;
  result[20] = sub_2773DC508;
  result[21] = sub_2773DC2C8;
  result[22] = sub_2773DC0A0;
  result[23] = sub_2773DC014;
  result[24] = sub_2773DBD94;
  result[25] = sub_2773DBAE8;
  result[26] = sub_2773DB768;
  result[27] = sub_2773DB3F4;
  result[28] = sub_2773DB30C;
  result[54] = sub_2773DB284;
  return result;
}

void *sub_2774A9DA8(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, int a7, int a8)
{
  v12 = a4;
  v133 = *MEMORY[0x277D85DE8];
  v16 = (a4 >> 1) & 1;
  v127 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * a7 - 2];
    v18 = a8;
    v19 = __srca;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v128 = 2 * a2;
  v20 = ~a4 & 5;
  __n = 2 * (v16 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v20)
  {
    v22 = a5[1];
    v23 = *__src;
    v24 = *(a6 + 2);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27 | (v26 >> 31);
    v25 = __OFSUB__(v23, v22);
    v29 = v23 - v22;
    if ((v29 < 0) ^ v25 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + (v30 | (v29 >> 31)) + v28 + 2) + v23;
    if (v31 >= 0xFFF)
    {
      v32 = 4095;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if ((v12 & 0x20) != 0)
  {
    v34 = &__src[2 * (a7 - 1)];
    v35 = *&v34[2 * a2 - 2];
    v36 = *v34;
    v37 = *(a6 + 2 * (a7 - 1) + 2);
    v25 = __OFSUB__(v36, v37);
    v38 = v36 - v37;
    if ((v38 < 0) ^ v25 | (v38 == 0))
    {
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v39 | (v38 >> 31);
    v25 = __OFSUB__(v36, v35);
    v41 = v36 - v35;
    if ((v41 < 0) ^ v25 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + (v42 | (v41 >> 31)) + v40 + 2) + v36;
    if (v43 >= 0xFFF)
    {
      v44 = 4095;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = (a7 - 1);
  if ((v12 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (a6 + 4);
    v49 = __src;
    do
    {
      v50 = v49[a2];
      v52 = v49[1];
      ++v49;
      v51 = v52;
      v53 = *v48++;
      v54 = (v51 > v53) | ((v51 - v53) >> 31);
      v25 = __OFSUB__(v51, v50);
      v55 = v51 - v50;
      if ((v55 < 0) ^ v25 | (v55 == 0))
      {
        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = *(a3 + (v56 | (v55 >> 31)) + v54 + 2) + v51;
      if (v57 >= 0xFFF)
      {
        v58 = 4095;
      }

      else
      {
        v58 = v57;
      }

      if (v57 <= 0)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58;
      }

      *v49 = v59;
      --v47;
    }

    while (v47);
  }

  v60 = &__src[2 * a2];
  v123 = a8;
  v121 = a5;
  v122 = a7 - 1;
  v129 = a2;
  if (a8 < 3)
  {
    v71 = __dst;
  }

  else
  {
    v61 = &v131;
    LODWORD(v62) = v46 - (v16 ^ 1);
    v63 = !(v12 & 1);
    if (v62 <= v63)
    {
      v62 = !(v12 & 1);
    }

    else
    {
      v62 = v62;
    }

    v64 = v62 - v63 + 1;
    v65 = 2 * !(v12 & 1);
    v124 = v65 + 2;
    v125 = a5 + 1;
    v66 = &__src[v128 + v65];
    v67 = &__src[(v65 | (4 * a2)) - 2];
    v68 = -v63;
    v69 = __dst;
    v70 = 1;
    do
    {
      v71 = v61;
      result = memcpy(v61, v60, __n);
      v72 = 0;
      v73 = v67;
      v60 += v129;
      do
      {
        if (v68 == v72)
        {
          v74 = &v125[v70];
        }

        else
        {
          v74 = v73;
        }

        v75 = *v74;
        v76 = *&v66[2 * v72];
        v77 = *(&v69[v72] + v124);
        v25 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if ((v78 < 0) ^ v25 | (v78 == 0))
        {
          v79 = 0;
        }

        else
        {
          v79 = 1;
        }

        v80 = v79 | (v78 >> 31);
        v25 = __OFSUB__(v76, v75);
        v81 = v76 - v75;
        if ((v81 < 0) ^ v25 | (v81 == 0))
        {
          v82 = 0;
        }

        else
        {
          v82 = 1;
        }

        v83 = *(a3 + (v82 | (v81 >> 31)) + v80 + 2) + v76;
        if (v83 >= 0xFFF)
        {
          v84 = 4095;
        }

        else
        {
          v84 = v83;
        }

        if (v83 <= 0)
        {
          v85 = 0;
        }

        else
        {
          v85 = v84;
        }

        *&v66[2 * v72++] = v85;
        v73 += 2;
      }

      while (v64 != v72);
      ++v70;
      v66 += v128;
      v67 += v128;
      v61 = v69;
      v69 = v71;
    }

    while (v70 != v127);
  }

  if ((v12 & 0x40) != 0)
  {
    v86 = v60[v129 - 1];
    v87 = *v60;
    v88 = v71[1];
    v25 = __OFSUB__(v87, v88);
    v89 = v87 - v88;
    if ((v89 < 0) ^ v25 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = v90 | (v89 >> 31);
    v25 = __OFSUB__(v87, v86);
    v92 = v87 - v86;
    if ((v92 < 0) ^ v25 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = *(a3 + (v93 | (v92 >> 31)) + v91 + 2) + v87;
    if (v94 >= 0xFFF)
    {
      v95 = 4095;
    }

    else
    {
      v95 = v94;
    }

    if (v94 <= 0)
    {
      v96 = 0;
    }

    else
    {
      v96 = v95;
    }

    *v60 = v96;
  }

  if ((v12 & 0xA) == 0xA)
  {
    v97 = &v60[v122];
    v98 = v97[v129 - 1];
    v99 = *v97;
    v100 = v71[v122 + 1];
    v25 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if ((v101 < 0) ^ v25 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = v102 | (v101 >> 31);
    v25 = __OFSUB__(v99, v98);
    v104 = v99 - v98;
    if ((v104 < 0) ^ v25 | (v104 == 0))
    {
      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    v106 = *(a3 + (v105 | (v104 >> 31)) + v103 + 2) + v99;
    if (v106 >= 0xFFF)
    {
      v107 = 4095;
    }

    else
    {
      v107 = v106;
    }

    if (v106 <= 0)
    {
      v108 = 0;
    }

    else
    {
      v108 = v107;
    }

    *v97 = v108;
  }

  if ((v12 & 8) != 0)
  {
    v109 = v122 - 1;
    v110 = (v71 + 2);
    do
    {
      v111 = v60[v129];
      v113 = v60[1];
      ++v60;
      v112 = v113;
      v114 = *v110++;
      v115 = (v112 > v114) | ((v112 - v114) >> 31);
      v25 = __OFSUB__(v112, v111);
      v116 = v112 - v111;
      if ((v116 < 0) ^ v25 | (v116 == 0))
      {
        v117 = 0;
      }

      else
      {
        v117 = 1;
      }

      v118 = *(a3 + (v117 | (v116 >> 31)) + v115 + 2) + v112;
      if (v118 >= 0xFFF)
      {
        v119 = 4095;
      }

      else
      {
        v119 = v118;
      }

      if (v118 <= 0)
      {
        v120 = 0;
      }

      else
      {
        v120 = v119;
      }

      *v60 = v120;
      --v109;
    }

    while (v109);
  }

  if (v123 >= 1)
  {
    return memcpy(v121, __srca, (2 * v123));
  }

  return result;
}

void *sub_2774AA224(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v125 = *MEMORY[0x277D85DE8];
  v14 = v122;
  v15 = 2 * a2;
  v119 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * a7 - 2];
    v17 = a8;
    v18 = __srca;
    do
    {
      *v18++ = *v16;
      v16 += v15;
      --v17;
    }

    while (v17);
  }

  v19 = a4 & 6;
  __n = 2 * a7;
  result = memcpy(v122, __src, __n);
  v121 = *a5;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 1);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[1];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0xFFF)
    {
      v32 = 4095;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v19 == 6)
  {
    v34 = &__src[2 * a7 - 2];
    v35 = *v34;
    v36 = a6[a7 - 2];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * a2 + 2];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0xFFF)
    {
      v44 = 4095;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = __src + 4;
    do
    {
      v49 = *(v48 - 1);
      v50 = *a6++;
      v51 = (v49 > v50) | ((v49 - v50) >> 31);
      v52 = *&v48[2 * a2];
      v24 = __OFSUB__(v49, v52);
      v53 = v49 - v52;
      if ((v53 < 0) ^ v24 | (v53 == 0))
      {
        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v55 = *(a3 + v51 + (v54 | (v53 >> 31)) + 2) + v49;
      if (v55 >= 0xFFF)
      {
        v56 = 4095;
      }

      else
      {
        v56 = v55;
      }

      if (v55 <= 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      *(v48 - 1) = v57;
      v48 += 2;
      --v47;
    }

    while (v47);
  }

  v112 = a4 & 9;
  v115 = a8;
  v114 = a4;
  v113 = a7 - 1;
  if (a8 < 3)
  {
    v67 = &__src[2 * a2];
  }

  else
  {
    v58 = __src;
    v59 = &v123;
    v60 = 1;
    v61 = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    if (v61 <= !(a4 & 1))
    {
      v62 = !(a4 & 1);
    }

    else
    {
      v62 = v61;
    }

    v63 = v62 + 1;
    v117 = !(a4 & 1);
    v64 = &v58[((2 * v117) | (4 * a2)) + 2];
    do
    {
      v65 = v14;
      v14 = v59;
      v66 = (v65 - 1);
      v59 = v65;
      result = memcpy(v14, v21, __n);
      *(v14 - 1) = a5[v60];
      v67 = &v21[v15 / 2];
      v68 = v64;
      v69 = v117;
      do
      {
        v70 = v21[v69];
        v71 = *&v66[2 * v69];
        v24 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if ((v72 < 0) ^ v24 | (v72 == 0))
        {
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = *v68++;
        v75 = *(a3 + (v73 | (v72 >> 31)) + ((v70 > v74) | ((v70 - v74) >> 31)) + 2) + v70;
        if (v75 >= 0xFFF)
        {
          v76 = 4095;
        }

        else
        {
          v76 = v75;
        }

        if (v75 <= 0)
        {
          v77 = 0;
        }

        else
        {
          v77 = v76;
        }

        v21[v69++] = v77;
      }

      while (v63 != v69);
      ++v60;
      v64 += v15;
      v21 = (v21 + v15);
    }

    while (v60 != v119);
  }

  if (v112 == 9)
  {
    v78 = *v67;
    v79 = *(v14 - 1);
    v24 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if ((v80 < 0) ^ v24 | (v80 == 0))
    {
      v81 = 0;
    }

    else
    {
      v81 = 1;
    }

    v82 = v81 | (v80 >> 31);
    v83 = v67[a2 + 1];
    v24 = __OFSUB__(v78, v83);
    v84 = v78 - v83;
    if ((v84 < 0) ^ v24 | (v84 == 0))
    {
      v85 = 0;
    }

    else
    {
      v85 = 1;
    }

    v86 = *(a3 + v82 + (v85 | (v84 >> 31)) + 2) + v78;
    if (v86 >= 0xFFF)
    {
      v87 = 4095;
    }

    else
    {
      v87 = v86;
    }

    if (v86 <= 0)
    {
      v88 = 0;
    }

    else
    {
      v88 = v87;
    }

    *v67 = v88;
  }

  if (v114 < 0)
  {
    v89 = &v67[v113];
    v90 = *v89;
    v91 = v14[v113 - 1];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[a2 + 1];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0xFFF)
    {
      v99 = 4095;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((v114 & 8) != 0)
  {
    v101 = v113 - 1;
    v102 = v67 + 2;
    do
    {
      v103 = *(v102 - 1);
      v104 = *v14++;
      v105 = (v103 > v104) | ((v103 - v104) >> 31);
      v106 = v102[a2];
      v24 = __OFSUB__(v103, v106);
      v107 = v103 - v106;
      if ((v107 < 0) ^ v24 | (v107 == 0))
      {
        v108 = 0;
      }

      else
      {
        v108 = 1;
      }

      v109 = *(a3 + v105 + (v108 | (v107 >> 31)) + 2) + v103;
      if (v109 >= 0xFFF)
      {
        v110 = 4095;
      }

      else
      {
        v110 = v109;
      }

      if (v109 <= 0)
      {
        v111 = 0;
      }

      else
      {
        v111 = v110;
      }

      *(v102++ - 1) = v111;
      --v101;
    }

    while (v101);
  }

  if (v115 >= 1)
  {
    return memcpy(a5, __srca, (2 * v115));
  }

  return result;
}

void *sub_2774AA698(void *result)
{
  result[33] = sub_2774AB544;
  result[29] = sub_2773E650C;
  result[30] = sub_2773E6424;
  result[31] = sub_2773E62A8;
  result[32] = sub_2773E613C;
  result[34] = sub_2773E603C;
  result[35] = sub_2773E5F30;
  result[36] = sub_2773E5D74;
  result[37] = sub_2773E5BC8;
  result[39] = sub_2773E5A50;
  result[40] = sub_2773E58C4;
  result[41] = sub_2773E5678;
  result[42] = sub_2773E5444;
  result[44] = sub_2773E4FEC;
  result[45] = sub_2773E4C7C;
  result[46] = sub_2773E4834;
  result[47] = sub_2773E43F8;
  result[38] = sub_2773E5388;
  result[43] = sub_2773E5278;
  result[48] = sub_2773E4148;
  result[49] = sub_2773E4F3C;
  result[50] = sub_2773E4BBC;
  result[51] = sub_2773E4774;
  result[52] = sub_2773E4338;
  result[53] = sub_2773E40E0;
  result[55] = sub_2773D92EC;
  return result;
}

__int16 *sub_2774AA83C(__int16 *result, uint64_t a2, uint64_t a3, __int16 *a4, unsigned int a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = &result[2 * a5 - 2];
    v7 = a6;
    v8 = 2 * a2;
    do
    {
      *a4 = *v6;
      a4 += 2;
      v6 = (v6 + v8);
      --v7;
    }

    while (v7);
    for (i = 0; i != a6; ++i)
    {
      v10 = result;
      v11 = a5;
      do
      {
        v12 = *(a3 + (*v10 >> 6)) + *v10;
        if (v12 >= 0x7FF)
        {
          v13 = 2047;
        }

        else
        {
          v13 = *(a3 + (*v10 >> 6)) + *v10;
        }

        if (v12 <= 0)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        *v10 = v14;
        v10 += 2;
        --v11;
      }

      while (v11);
      result = (result + v8);
    }
  }

  return result;
}

uint64_t sub_2774AA8C0(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7, int a8)
{
  v130 = *MEMORY[0x277D85DE8];
  v14 = (a4 >> 1) & 1;
  v15 = 2 * a7;
  v125 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * v15 - 4];
    v17 = a8;
    v18 = v129;
    do
    {
      *v18++ = *v16;
      v16 += 2 * a2;
      --v17;
    }

    while (v17);
  }

  v123 = a4;
  v19 = ~a4 & 5;
  __n = 4 * (v14 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v19)
  {
    v21 = a5[2];
    v22 = *__src;
    v23 = *(a6 + 4);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v24 = __OFSUB__(v22, v21);
    v28 = v22 - v21;
    if ((v28 < 0) ^ v24 | (v28 == 0))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(a3 + (v29 | (v28 >> 31)) + v27 + 2) + v22;
    if (v30 >= 0x7FF)
    {
      v31 = 2047;
    }

    else
    {
      v31 = v30;
    }

    if (v30 <= 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    *__src = v32;
  }

  v33 = &__src[2 * a2];
  if ((v123 & 0x20) != 0)
  {
    v34 = *&v33[2 * v15 - 8];
    v35 = *&__src[2 * v15 - 4];
    v36 = *(a6 + 2 * v15);
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v24 = __OFSUB__(v35, v34);
    v40 = v35 - v34;
    if ((v40 < 0) ^ v24 | (v40 == 0))
    {
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = *(a3 + (v41 | (v40 >> 31)) + v39 + 2) + v35;
    if (v42 >= 0x7FF)
    {
      v43 = 2047;
    }

    else
    {
      v43 = v42;
    }

    if (v42 <= 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    *&__src[2 * v15 - 4] = v44;
  }

  if ((v123 & 4) != 0)
  {
    v46 = 0;
    v45 = (a7 - 1);
    v47 = v45 - 1;
    v48 = 4;
    do
    {
      v49 = *&v33[v46 >> 31];
      v50 = *&__src[2 * v48 - 4];
      v51 = *(a6 + 2 * v48);
      v24 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if ((v52 < 0) ^ v24 | (v52 == 0))
      {
        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v54 = v53 | (v52 >> 31);
      v24 = __OFSUB__(v50, v49);
      v55 = v50 - v49;
      if ((v55 < 0) ^ v24 | (v55 == 0))
      {
        result = 0;
      }

      else
      {
        result = 1;
      }

      v56 = *(a3 + ((result | (v55 >> 31)) + v54 + 2)) + v50;
      if (v56 >= 0x7FF)
      {
        v57 = 2047;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *&__src[2 * v48 - 4] = v58;
      v48 += 2;
      v46 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  else
  {
    LODWORD(v45) = a7 - 1;
  }

  v122 = v45;
  if (a8 < 3)
  {
    v67 = __dst;
  }

  else
  {
    v59 = &v128;
    v60 = v45 - (v14 ^ 1);
    v61 = !(v123 & 1);
    if (v60 <= v61)
    {
      v62 = !(v123 & 1);
    }

    else
    {
      v62 = v60;
    }

    v63 = v62 + 1;
    v64 = __dst;
    v65 = 1;
    v66 = &__src[2 * a2];
    do
    {
      v67 = v59;
      result = memcpy(v59, v66, __n);
      v33 = &v66[2 * a2];
      v68 = v61;
      v69 = !(v123 & 1);
      do
      {
        v70 = &v33[1 * v68 - 4];
        if (!v69)
        {
          v70 = &a5[2 * v65 + 2];
        }

        v71 = *&v66[1 * v68];
        v72 = *v70;
        v73 = LOWORD(v64[v68 + 1]);
        v24 = __OFSUB__(v71, v73);
        v74 = v71 - v73;
        if ((v74 < 0) ^ v24 | (v74 == 0))
        {
          v75 = 0;
        }

        else
        {
          v75 = 1;
        }

        v76 = v75 | (v74 >> 31);
        v24 = __OFSUB__(v71, v72);
        v77 = v71 - v72;
        if ((v77 < 0) ^ v24 | (v77 == 0))
        {
          v78 = 0;
        }

        else
        {
          v78 = 1;
        }

        v79 = *(a3 + (v78 | (v77 >> 31)) + v76 + 2) + v71;
        if (v79 >= 0x7FF)
        {
          v80 = 2047;
        }

        else
        {
          v80 = v79;
        }

        if (v79 <= 0)
        {
          v81 = 0;
        }

        else
        {
          v81 = v80;
        }

        *&v66[1 * v68] = v81;
        ++v69;
        ++v68;
      }

      while (v63 != v69);
      ++v65;
      v66 += 2 * a2;
      v59 = v64;
      v64 = v67;
    }

    while (v65 != v125);
  }

  v82 = &v33[2 * a2];
  if ((v123 & 0x40) != 0)
  {
    v83 = *(v82 - 2);
    v84 = *v33;
    v85 = *(v67 + 2);
    v24 = __OFSUB__(v84, v85);
    v86 = v84 - v85;
    if ((v86 < 0) ^ v24 | (v86 == 0))
    {
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v88 = v87 | (v86 >> 31);
    v24 = __OFSUB__(v84, v83);
    v89 = v84 - v83;
    if ((v89 < 0) ^ v24 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = *(a3 + (v90 | (v89 >> 31)) + v88 + 2) + v84;
    if (v91 >= 0x7FF)
    {
      v92 = 2047;
    }

    else
    {
      v92 = v91;
    }

    if (v91 <= 0)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    *v33 = v93;
  }

  if ((v123 & 0xA) == 0xA)
  {
    v94 = &v33[4 * v122];
    v95 = v94[a2 - 2];
    v96 = LOWORD(v67[v122 + 1]);
    v97 = *v94;
    v24 = __OFSUB__(v97, v96);
    v98 = v97 - v96;
    if ((v98 < 0) ^ v24 | (v98 == 0))
    {
      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    v100 = v99 | (v98 >> 31);
    v24 = __OFSUB__(v97, v95);
    v101 = v97 - v95;
    if ((v101 < 0) ^ v24 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = *(a3 + (v102 | (v101 >> 31)) + v100 + 2) + v97;
    if (v103 >= 0x7FF)
    {
      v104 = 2047;
    }

    else
    {
      v104 = v103;
    }

    if (v103 <= 0)
    {
      v105 = 0;
    }

    else
    {
      v105 = v104;
    }

    *v94 = v105;
  }

  if ((v123 & 8) != 0)
  {
    v106 = 0;
    v107 = v122 - 1;
    v108 = 2;
    do
    {
      v109 = *&v82[v106 >> 31];
      v110 = *&v33[1 * v108 - 4];
      v111 = LOWORD(v67[v108]);
      v24 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if ((v112 < 0) ^ v24 | (v112 == 0))
      {
        v113 = 0;
      }

      else
      {
        v113 = 1;
      }

      result = v113 | (v112 >> 31);
      v24 = __OFSUB__(v110, v109);
      v114 = v110 - v109;
      if ((v114 < 0) ^ v24 | (v114 == 0))
      {
        v115 = 0;
      }

      else
      {
        v115 = 1;
      }

      v116 = *(a3 + (v115 | (v114 >> 31)) + result + 2) + v110;
      if (v116 >= 0x7FF)
      {
        v117 = 2047;
      }

      else
      {
        v117 = v116;
      }

      if (v116 <= 0)
      {
        v118 = 0;
      }

      else
      {
        v118 = v117;
      }

      *&v33[1 * v108++ - 4] = v118;
      v106 += 0x200000000;
      --v107;
    }

    while (v107);
  }

  if (a8 >= 1)
  {
    v119 = a8;
    v120 = v129;
    do
    {
      v121 = *v120++;
      *a5 = v121;
      a5 += 2;
      --v119;
    }

    while (v119);
  }

  return result;
}

uint64_t sub_2774AAD60(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v128 = *MEMORY[0x277D85DE8];
  v15 = v125;
  v16 = 2 * a7;
  v122 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * v16 - 4];
    v18 = a8;
    v19 = v127;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v123 = a2;
  v20 = a4 & 6;
  __n = 4 * a7;
  memcpy(v125, __src, __n);
  v124 = *a5;
  v118 = a2;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 2);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[2];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0x7FF)
    {
      v32 = 2047;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v20 == 6)
  {
    v34 = &__src[2 * v16];
    v35 = *(v34 - 2);
    v36 = a6[v16 - 4];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * v118];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0x7FF)
    {
      v44 = 2047;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *(v34 - 2) = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (__src + 4);
    v49 = 0x400000000;
    do
    {
      v50 = *v48;
      v51 = *a6;
      a6 += 2;
      v52 = (v50 > v51) | ((v50 - v51) >> 31);
      v53 = *(v21 + (v49 >> 31));
      v24 = __OFSUB__(v50, v53);
      v54 = v50 - v53;
      if ((v54 < 0) ^ v24 | (v54 == 0))
      {
        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v56 = *(a3 + v52 + (v55 | (v54 >> 31)) + 2) + v50;
      if (v56 >= 0x7FF)
      {
        v57 = 2047;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *v48 = v58;
      v48 += 2;
      v49 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  v117 = a8;
  v116 = a7 - 1;
  if (a8 < 3)
  {
    v64 = v125;
    v65 = v21;
  }

  else
  {
    v59 = &v126;
    v60 = 1;
    LODWORD(v61) = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    v62 = !(a4 & 1);
    if (v61 <= v62)
    {
      v61 = !(a4 & 1);
    }

    else
    {
      v61 = v61;
    }

    v120 = v61 - v62 + 1;
    v63 = (v62 << 33) + 0x200000000;
    do
    {
      v64 = v59;
      memcpy(v59, v21, __n);
      *(v64 - 2) = a5[2 * v60];
      v65 = &v21[v123];
      v66 = 2 * !(a4 & 1);
      v67 = v63;
      v68 = v120;
      do
      {
        v69 = v21[v66];
        v70 = v15[v66 - 2];
        v24 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if ((v71 < 0) ^ v24 | (v71 == 0))
        {
          v72 = 0;
        }

        else
        {
          v72 = 1;
        }

        v73 = *(a3 + (v72 | (v71 >> 31)) + ((v69 > *(v65 + (v67 >> 31))) | ((v69 - *(v65 + (v67 >> 31))) >> 31)) + 2) + v69;
        if (v73 >= 0x7FF)
        {
          v74 = 2047;
        }

        else
        {
          v74 = v73;
        }

        if (v73 <= 0)
        {
          v75 = 0;
        }

        else
        {
          v75 = v74;
        }

        v21[v66] = v75;
        v67 += 0x200000000;
        v66 += 2;
        --v68;
      }

      while (v68);
      ++v60;
      v21 = (v21 + v123 * 2);
      v59 = v15;
      v15 = v64;
    }

    while (v60 != v122);
  }

  v76 = &v65[v118];
  if ((a4 & 9) == 9)
  {
    v77 = *v65;
    v78 = *(v64 - 2);
    v24 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if ((v79 < 0) ^ v24 | (v79 == 0))
    {
      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v81 = v80 | (v79 >> 31);
    v82 = v76[2];
    v24 = __OFSUB__(v77, v82);
    v83 = v77 - v82;
    if ((v83 < 0) ^ v24 | (v83 == 0))
    {
      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = *(a3 + v81 + (v84 | (v83 >> 31)) + 2) + v77;
    if (v85 >= 0x7FF)
    {
      v86 = 2047;
    }

    else
    {
      v86 = v85;
    }

    if (v85 <= 0)
    {
      v87 = 0;
    }

    else
    {
      v87 = v86;
    }

    *v65 = v87;
  }

  result = v117;
  if ((a4 & 0x80) != 0)
  {
    v89 = &v65[2 * v116];
    v90 = *v89;
    v91 = v64[2 * v116 - 2];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[v118 + 2];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0x7FF)
    {
      v99 = 2047;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((a4 & 8) != 0)
  {
    v101 = v116 - 1;
    v102 = (v65 + 2);
    v103 = 0x400000000;
    do
    {
      v104 = *v102;
      v105 = *v64;
      v64 += 2;
      v106 = (v104 > v105) | ((v104 - v105) >> 31);
      v107 = *(v76 + (v103 >> 31));
      v24 = __OFSUB__(v104, v107);
      v108 = v104 - v107;
      if ((v108 < 0) ^ v24 | (v108 == 0))
      {
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(a3 + v106 + (v109 | (v108 >> 31)) + 2) + v104;
      if (v110 >= 0x7FF)
      {
        v111 = 2047;
      }

      else
      {
        v111 = v110;
      }

      if (v110 <= 0)
      {
        v112 = 0;
      }

      else
      {
        v112 = v111;
      }

      *v102 = v112;
      v102 += 2;
      v103 += 0x200000000;
      --v101;
    }

    while (v101);
  }

  if (v117 >= 1)
  {
    v113 = v117;
    v114 = v127;
    do
    {
      v115 = *v114++;
      *a5 = v115;
      a5 += 2;
      --v113;
    }

    while (v113);
  }

  return result;
}