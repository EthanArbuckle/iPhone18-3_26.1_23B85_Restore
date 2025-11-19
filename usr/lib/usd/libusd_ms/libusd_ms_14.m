void sub_29A0A36B4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 52);
  v4 = *(*a1 + 56);
  if (v4 >= 1)
  {
    v5 = *(v2 + 80);
    v6 = v4 + v5;
    do
    {
      v7 = *(*(v2 + 312) + 4 * v5);
      if (*(*(a1[2] + 48) + v7))
      {
        v8 = *(*(a1[1] + 144) + 8 * v7);
      }

      else
      {
        v8 = 1;
      }

      v3 += v8;
      ++v5;
    }

    while (v5 < v6);
  }

  v9 = *(v2 + 60);
  if (v9 >= 1)
  {
    v10 = *(v2 + 84);
    v11 = v9 + v10;
    v12 = *(v2 + 312);
    do
    {
      v3 += *(*(a1[2] + 72) + 2 * *(v12 + 4 * v10++));
    }

    while (v10 < v11);
  }

  sub_29A0A1664(a1[4]);
  v13 = a1[4];
  v14 = *(v13 + 168);
  v15 = *(v13 + 176) - v14;
  if (v3 <= v15)
  {
    if (v3 < v15)
    {
      *(v13 + 176) = v14 + v3;
    }
  }

  else
  {
    sub_29A0A485C(v13 + 168, v3 - v15);
  }

  v16 = 0;
  sub_29A0A177C(a1 + 5, v3, &v16);
}

void *sub_29A0A37C0(void *a1)
{
  *(a1[4] + 16) = 0;
  if (*(*a1 + 37) == 1)
  {
    sub_29A0A3F48(a1);
    sub_29A0A3F98(a1);

    return sub_29A0A423C(a1);
  }

  else
  {
    sub_29A0A423C(a1);
    sub_29A0A3F48(a1);

    return sub_29A0A3F98(a1);
  }
}

void sub_29A0A3844(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  v4 = *(v2 + 16);
  v5 = *(v2 + 176) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 176) = v3 + v4;
    }
  }

  else
  {
    sub_29A0A485C(v2 + 168, v4 - v5);
    v2 = *(a1 + 32);
  }

  if ((*(v2 + 13) & 1) == 0)
  {
    sub_29A0A1828((v2 + 192), *(v2 + 16));
    v2 = *(a1 + 32);
  }

  sub_29A0A174C((a1 + 40), *(v2 + 16));
  sub_29A0A171C((*(a1 + 32) + 144), *(*(a1 + 32) + 16));
  v6 = *(a1 + 32);
  if (*(v6 + 16) >= 1)
  {
    v7 = 0;
    v8 = *(v6 + 144);
    do
    {
      *(v8 + 4 * v7) = v7;
      ++v7;
    }

    while (v7 < *(v6 + 16));
  }
}

void *sub_29A0A38FC(void *result)
{
  LODWORD(v1) = *(*result + 44);
  if (v1 >= 1)
  {
    v2 = 0;
    do
    {
      *(*(result[4] + 48) + v2++) = 0;
    }

    while (v2 < *(*result + 44));
    LODWORD(v1) = *(*result + 44);
  }

  if (v1 < *(result[3] + 4))
  {
    v1 = v1;
    do
    {
      *(*(result[4] + 48) + v1) = *(*(result[2] + 48) + *(*(*result + 288) + 4 * v1));
      ++v1;
    }

    while (v1 < *(result[3] + 4));
  }

  return result;
}

void sub_29A0A3984(int **a1)
{
  v2 = *a1;
  v3 = (*a1)[13];
  if (v3 >= 1)
  {
    v4 = v2[19];
    v5 = v3 + v4;
    v6 = *(*(a1[4] + 12) + 4 * v4);
    do
    {
      *(*(a1[4] + 21) + v6) = 0;
      ++v4;
      ++v6;
    }

    while (v4 < v5);
    v2 = *a1;
  }

  v7 = v2[14];
  if (v7 >= 1)
  {
    v8 = v2[20];
    v9 = v7 + v8;
    if (*(a1[2] + 13))
    {
      v10 = 1;
    }

    else
    {
      v10 = 9;
    }

    do
    {
      v11 = a1[4];
      v12 = *(*(v11 + 9) + 2 * v8);
      v13 = *(*(v11 + 12) + 4 * v8);
      v14 = *(v11 + 21);
      if ((*(*(a1[2] + 6) + *(*(*a1 + 39) + 4 * v8)) & 9) != 0)
      {
        if (v12)
        {
          memset((v14 + v13), v10, v12);
        }
      }

      else if (v12)
      {
        bzero((v14 + v13), v12);
      }

      ++v8;
    }

    while (v8 < v9);
    v2 = *a1;
  }

  v15 = v2[15];
  if (v15 >= 1)
  {
    v16 = v2[21];
    v17 = v15 + v16;
    do
    {
      v18 = *(*(*a1 + 39) + 4 * v16);
      memcpy((*(a1[4] + 21) + *(*(a1[4] + 12) + 4 * v16++)), (*(a1[2] + 21) + *(*(a1[2] + 12) + 4 * v18)), *(*(a1[2] + 9) + 2 * v18));
    }

    while (v16 < v17);
  }
}

void *sub_29A0A3AEC(void *result)
{
  v1 = *result;
  if (*(*result + 32) == 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  v3 = *(v1 + 56);
  if (v3 >= 1)
  {
    v4 = *(v1 + 80);
    v5 = v3 + v4;
    v6 = result[4];
    v7 = v6[9];
    v8 = v6[12];
    v9 = v6[21];
    do
    {
      v10 = *(v8 + 4 * v4);
      v11 = (v9 + v10);
      if ((*(v9 + v10) & 1) != 0 && (*(*(v1 + 384) + v4) & 1) == 0)
      {
        v12 = *(v7 + 2 * v4);
        if (*(v7 + 2 * v4))
        {
          v13 = 0;
          v14 = (v6[24] + 4 * v10 + 2);
          do
          {
            v15 = *v11++;
            if ((v15 & 0x18) != 0)
            {
              *(v14 - 1) = v13;
              *v14 = v2 - 1 + v13;
            }

            v13 += v2;
            v14 += 2;
            --v12;
          }

          while (v12);
        }
      }

      ++v4;
    }

    while (v4 < v5);
  }

  v16 = *(v1 + 60);
  if (v16 >= 1)
  {
    v17 = *(v1 + 84);
    v18 = v16 + v17;
    do
    {
      v19 = result[4];
      v20 = *(v19[12] + 4 * v17);
      v21 = (v19[21] + v20);
      if ((*v21 & 1) != 0 && (*(*(*result + 384) + v17) & 1) == 0)
      {
        v22 = *(v19[9] + 2 * v17);
        if (*(v19[9] + 2 * v17))
        {
          v23 = (*(result[2] + 192) + 4 * *(*(result[2] + 96) + 4 * *(*(*result + 312) + 4 * v17)));
          v24 = (v19[24] + 4 * v20);
          do
          {
            v25 = *v21++;
            if ((v25 & 0x18) != 0)
            {
              *v24 = *v23;
            }

            ++v24;
            ++v23;
            --v22;
          }

          while (v22);
        }
      }

      ++v17;
    }

    while (v17 < v18);
  }

  return result;
}

void sub_29A0A3C34(void *a1)
{
  v2 = 0;
  v47 = *MEMORY[0x29EDCA608];
  v3 = *(a1[3] + 20);
  v44 = &v45;
  v4 = *(a1[2] + 14);
  __p = 0;
  if (v3 >= 0x11)
  {
    v2 = operator new(4 * v3);
    __p = v2;
    v44 = v2;
  }

  v5 = *(*a1 + 60);
  if (v5 >= 1)
  {
    v6 = *(*a1 + 84);
    v7 = v5 + v6;
    while (1)
    {
      v8 = a1[4];
      v9 = *(v8[12] + 4 * v6);
      v10 = (v8[21] + v9);
      if ((*v10 & 1) == 0)
      {
        goto LABEL_9;
      }

      v11 = *a1;
      if (*(*(*a1 + 384) + v6))
      {
        goto LABEL_9;
      }

      v12 = *(*(v11 + 312) + 4 * v6);
      v13 = a1[1];
      if ((*(v13[54] + 2 * v12) & 0x60) == 0)
      {
        goto LABEL_9;
      }

      v14 = a1[3];
      v15 = *(v14[54] + 2 * v6);
      if ((v15 & 0x30) != 0)
      {
        goto LABEL_9;
      }

      v16 = *(v8[9] + 2 * v6);
      if ((v15 & 0x40) == 0)
      {
        if (*(v8[9] + 2 * v6))
        {
          do
          {
            if ((*v10 & 0x10) != 0)
            {
              *v10 = *v10 & 0xC7 | 8;
            }

            ++v10;
            --v16;
          }

          while (v16);
        }

        goto LABEL_9;
      }

      v17 = v8[24];
      v18 = v14[45];
      if (((v14[46] - v18) & 0x3FFFFFFFCLL) != 0)
      {
        v19 = *(v14[42] + 8 * v6);
        v20 = (v18 + 4 * *(v14[42] + 8 * v6 + 4));
      }

      else
      {
        v21 = v13[42];
        v19 = *(v21 + 8 * v12);
        v20 = v44;
        if (v19 >= 1)
        {
          v22 = 0;
          v23 = *(v21 + 8 * v12 + 4);
          v24 = v13[45] + 4 * v23;
          v25 = v13[48] + 2 * v23;
          v26 = *(v11 + 192);
          do
          {
            *(v44 + v22) = *(v26 + 8 * *(v24 + 4 * v22) + 4 * *(v25 + 2 * v22));
            ++v22;
          }

          while (v19 != v22);
        }
      }

      if (v16)
      {
        break;
      }

LABEL_9:
      if (++v6 >= v7)
      {
        v2 = __p;
        goto LABEL_53;
      }
    }

    v27 = 0;
    v28 = v17 + 4 * v9;
    while (1)
    {
      v29 = v10[v27];
      if ((v29 & 0x30) == 0x10)
      {
        v30 = (v28 + 4 * v27);
        v31 = *v30;
        v32 = v30[1];
        if (v32 <= v31)
        {
          if (v31 <= v32)
          {
            goto LABEL_43;
          }

          if (v31 + 1 < v19)
          {
            v37 = v20 + v31 + 1;
            v38 = v31 + 2;
            do
            {
              v39 = *v37++;
              v40 = *(*(a1[3] + 240) + v39);
              if ((v40 & 8) != 0)
              {
                break;
              }

              v36 = v38++ >= v19;
            }

            while (!v36);
            if ((v40 & 8) != 0)
            {
              goto LABEL_44;
            }
          }

          v41 = 0;
          do
          {
            v42 = *(*(a1[3] + 240) + *(v20 + v41));
            v35 = (v42 >> 3) & 1;
            if ((v42 & 8) != 0)
            {
              break;
            }

            v36 = v41++ >= v32;
          }

          while (!v36);
        }

        else
        {
          v33 = v31 + 1;
          do
          {
            v34 = *(*(a1[3] + 240) + *(v20 + v33));
            v35 = (v34 >> 3) & 1;
            if ((v34 & 8) != 0)
            {
              break;
            }

            v36 = v33++ >= v32;
          }

          while (!v36);
        }

        if ((v35 & 1) == 0)
        {
LABEL_43:
          v10[v27] = v29 & 0xC7 | 8;
        }
      }

LABEL_44:
      if (++v27 == v16)
      {
        if (v16 == 2 && (v4 & 1) != 0)
        {
          v43 = *v10;
          if ((*v10 & 0x20) != 0 && (v10[1] & 0x10) == 0)
          {
LABEL_52:
            *v10 = v43 & 0xDF;
          }

          else if ((*v10 & 0x10) == 0 && (v10[1] & 0x20) != 0)
          {
            v43 = *++v10;
            goto LABEL_52;
          }
        }

        goto LABEL_9;
      }
    }
  }

LABEL_53:
  operator delete(v2);
}

void *sub_29A0A3F48(void *result)
{
  v1 = *(*result + 52);
  if (v1 >= 1)
  {
    v2 = *(*result + 76);
    v3 = v1 + v2;
    v4 = result[4];
    v5 = *(v4 + 96);
    v6 = *(v4 + 72);
    v7 = *(v4 + 16);
    do
    {
      *(v5 + 4 * v2) = v7;
      *(v6 + 2 * v2) = 1;
      v7 = *(v4 + 16) + 1;
      *(v4 + 16) = v7;
      ++v2;
    }

    while (v2 < v3);
  }

  return result;
}

void *sub_29A0A3F98(void *result)
{
  v1 = *result;
  v2 = *(*result + 56);
  if (v2 >= 1)
  {
    v3 = *(v1 + 80);
    v4 = v2 + v3;
    v5 = *(v1 + 312);
    v6 = result[4];
    v7 = *(v6 + 96);
    v8 = *(result[2] + 48);
    v9 = *(v6 + 16);
    v10 = vdupq_n_s64(8uLL);
    v11 = *(v6 + 72);
    do
    {
      v12 = *(v5 + 4 * v3);
      *(v7 + 4 * v3) = v9;
      if (*(v8 + v12))
      {
        v14 = result[1];
        v15 = *(v14 + 144);
        v13 = *(v15 + 8 * v12);
        if (v13 != 1)
        {
          v16 = *(v14 + 168);
          v17 = *(v15 + 8 * v12 + 4);
          if (v13 >= 1)
          {
            v18 = 0;
            v19 = vdupq_n_s64(v13 - 1);
            v20 = (result[5] + 2 * v9 + 8);
            v21 = xmmword_29B430070;
            v22 = xmmword_29B433E10;
            v23 = xmmword_29B433E00;
            v24 = xmmword_29B433DF0;
            do
            {
              v25 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s8(vuzp1_s16(v25, 6), 6).u8[0])
              {
                *(v20 - 4) = v18;
              }

              if (vuzp1_s8(vuzp1_s16(v25, 6), 6).i8[1])
              {
                *(v20 - 3) = v18 | 1;
              }

              if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v19, *&v22))), 6).i8[2])
              {
                *(v20 - 2) = v18 | 2;
                *(v20 - 1) = v18 | 3;
              }

              v26 = vmovn_s64(vcgeq_u64(v19, v23));
              if (vuzp1_s8(6, vuzp1_s16(v26, 6)).i32[1])
              {
                *v20 = v18 | 4;
              }

              if (vuzp1_s8(6, vuzp1_s16(v26, 6)).i8[5])
              {
                v20[1] = v18 | 5;
              }

              if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v19, *&v24)))).i8[6])
              {
                v20[2] = v18 | 6;
                v20[3] = v18 | 7;
              }

              v18 += 8;
              v23 = vaddq_s64(v23, v10);
              v22 = vaddq_s64(v22, v10);
              v21 = vaddq_s64(v21, v10);
              v24 = vaddq_s64(v24, v10);
              v20 += 8;
            }

            while (((v13 + 7) & 0xFFFFFFF8) != v18);
          }

          v27 = *(*v6 + 264);
          v28 = *(v27 + 8 * v3);
          if (v28 >= 1)
          {
            v29 = 0;
            v30 = v16 + 4 * v17;
            v31 = (8 * v3) | 4;
            v32 = *(result[3] + 288) + 4 * *(*(result[3] + 264) + v31);
            v33 = *(v6 + 120) + 2 * *(v27 + v31);
            v34 = *(v1 + 264);
            do
            {
              v35 = *(v34 + 4 * *(v32 + 4 * v29));
              if (v13 == 2)
              {
                if (v35 == *(v30 + 4))
                {
                  *(v33 + 2 * v29) = 1;
                }
              }

              else if (v13 >= 1)
              {
                for (i = 0; i != v13; ++i)
                {
                  if (v35 == *(v30 + 4 * i))
                  {
                    *(v33 + 2 * v29) = i;
                  }
                }
              }

              ++v29;
            }

            while (v29 != v28);
          }
        }
      }

      else
      {
        LODWORD(v13) = 1;
      }

      *(v11 + 2 * v3) = v13;
      v9 = *(v6 + 16) + v13;
      *(v6 + 16) = v9;
      ++v3;
    }

    while (v3 < v4);
  }

  return result;
}

void *sub_29A0A423C(void *result)
{
  v1 = *result;
  v2 = *(*result + 60);
  if (v2 >= 1)
  {
    v3 = *(v1 + 84);
    v4 = v2 + v3;
    v5 = *(v1 + 312);
    v6 = result[4];
    v7 = *(v6 + 96);
    v8 = result[2];
    v9 = v8[12];
    v10 = v8[21];
    v11 = *(v6 + 16);
    v12 = *(v6 + 72);
    do
    {
      v13 = *(v5 + 4 * v3);
      *(v7 + 4 * v3) = v11;
      if (*(v10 + *(v9 + 4 * v13)))
      {
        v14 = *(v8[9] + 2 * v13);
        if (v14 >= 2)
        {
          v15 = 0;
          v16 = vdupq_n_s64(v14 - 2);
          v17 = (result[5] + 2 * v11 + 8);
          do
          {
            v18 = vdupq_n_s64(v15);
            v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_29B430070)));
            if (vuzp1_s8(vuzp1_s16(v19, 6), 6).u8[0])
            {
              *(v17 - 3) = v15 | 1;
            }

            if (vuzp1_s8(vuzp1_s16(v19, 6), 6).i8[1])
            {
              *(v17 - 2) = v15 | 2;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_29B433E10)))), 6).i8[2])
            {
              *(v17 - 1) = v15 | 3;
              *v17 = v15 | 4;
            }

            v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_29B433E00)));
            if (vuzp1_s8(6, vuzp1_s16(v20, 6)).i32[1])
            {
              v17[1] = v15 | 5;
            }

            if (vuzp1_s8(6, vuzp1_s16(v20, 6)).i8[5])
            {
              v17[2] = v15 | 6;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_29B433DF0))))).i8[6])
            {
              v17[3] = v15 | 7;
              v17[4] = v15 + 8;
            }

            v15 += 8;
            v17 += 8;
          }

          while (((v14 + 6) & 0x1FFF8) != v15);
          v21 = (*(*v6 + 264) + 8 * v3);
          v22 = *v21;
          if (v22 >= 1)
          {
            v23 = (v8[15] + 2 * *(*(*v8 + 264) + 4 * ((2 * v13) | 1)));
            v24 = (*(v6 + 120) + 2 * v21[1]);
            do
            {
              v25 = *v23++;
              *v24++ = v25;
              --v22;
            }

            while (v22);
          }
        }
      }

      else
      {
        LODWORD(v14) = 1;
      }

      *(v12 + 2 * v3) = v14;
      v11 = *(v6 + 16) + v14;
      *(v6 + 16) = v11;
      ++v3;
    }

    while (v3 < v4);
  }

  return result;
}

float sub_29A0A445C(void *a1, int a2, unsigned int a3, int a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v72 = *MEMORY[0x29EDCA608];
  v8 = v70;
  v68 = v70;
  v69 = 0x1000000000;
  v71 = 0;
  v9 = a1[1];
  v10 = *(v9 + 360);
  v11 = (2 * a2) | 1;
  v12 = *(v9 + 336);
  v13 = *(v12 + 4 * v11);
  v14 = *(v12 + 8 * a2);
  v15 = (v10 + 4 * v13);
  v16 = v7[3];
  v17 = v16[45];
  if (((v16[46] - v17) & 0x3FFFFFFFCLL) != 0)
  {
    v8 = (v17 + 4 * *(v16[42] + 8 * a4 + 4));
    goto LABEL_11;
  }

  if (!v14)
  {
    v20 = v10;
    operator delete(0);
    v10 = v20;
    v5 = a3;
    v4 = a4;
    v69 = 0x1000000000;
    v22 = v66;
    v64 = v66;
    v65 = 0x2000000000;
    v67 = 0;
    v68 = v70;
    goto LABEL_13;
  }

  if (v14 <= 0x10)
  {
    LODWORD(v69) = v14;
  }

  else
  {
    v18 = v10;
    operator delete(0);
    v8 = operator new(4 * v14);
    v71 = v8;
    v68 = v8;
    LODWORD(v69) = v14;
    HIDWORD(v69) = v14;
    v4 = a4;
    v10 = v18;
    if (v14 < 1)
    {
      goto LABEL_11;
    }
  }

  v23 = *(v7[1] + 384) + 2 * *(*(v7[1] + 336) + 4 * v11);
  v24 = 0;
  v25 = *(*v7 + 192);
  do
  {
    v8[v24] = *(v25 + 8 * v15[v24] + 4 * *(v23 + 2 * v24));
    ++v24;
  }

  while (v14 != v24);
LABEL_11:
  v22 = v66;
  v64 = v66;
  LODWORD(v65) = 2 * v14;
  HIDWORD(v65) = 32;
  v67 = 0;
  if ((2 * v14) >= 0x21)
  {
    v26 = v6;
    v27 = v7;
    v28 = v13;
    v29 = v5;
    v30 = v10;
    v31 = v4;
    v22 = operator new(4 * (2 * v14));
    v67 = v22;
    v64 = v22;
    HIDWORD(v65) = 2 * v14;
    v4 = v31;
    v10 = v30;
    v5 = v29;
    v13 = v28;
    v7 = v27;
    v6 = v26;
  }

LABEL_13:
  v32 = (*(v7[2] + 192) + 4 * *(*(v7[2] + 96) + 4 * v6) + 4 * v5);
  v33 = *v32;
  v34 = v32[1];
  v35 = (v34 - v33);
  if (v34 <= v33)
  {
    v36 = v7[1];
    if (v33 <= v34)
    {
      LODWORD(v35) = 0;
      v38 = v7[3];
    }

    else
    {
      v46 = *(v36 + 216);
      v38 = v7[3];
      v47 = *(v38 + 216);
      if (v33 + 1 >= v14)
      {
        v48 = 0;
      }

      else
      {
        v48 = (v14 + ~v33);
        v49 = (4 * v13 + 4 * v33 + v10 + 4);
        v50 = &v8[v33 + 1];
        v51 = v48;
        v52 = v22;
        do
        {
          v53 = *v49++;
          *v52 = *(v46 + 4 * v53);
          v54 = *v50++;
          v52[v14] = *(v47 + 4 * v54);
          ++v52;
          --v51;
        }

        while (v51);
      }

      v55 = v34 + 1;
      v56 = &v22[4 * v48];
      LODWORD(v35) = v34 + v48 + 1;
      do
      {
        v57 = *v15++;
        *v56 = *(v46 + 4 * v57);
        v58 = *v8++;
        v56[v14] = *(v47 + 4 * v58);
        ++v56;
        --v55;
      }

      while (v55);
    }
  }

  else
  {
    v36 = v7[1];
    v37 = *(v36 + 216);
    v38 = v7[3];
    v39 = *(v38 + 216);
    v40 = &v8[v33 + 1];
    v41 = (4 * v13 + 4 * v33 + v10 + 4);
    v42 = v35;
    v43 = v22;
    do
    {
      v44 = *v41++;
      *v43 = *(v37 + 4 * v44);
      v45 = *v40++;
      v43[v14] = *(v39 + 4 * v45);
      ++v43;
      --v42;
    }

    while (v42);
  }

  v63 = *(*v7 + 24);
  v59 = OpenSubdiv::__aapl__::Sdc::Crease::ComputeFractionalWeightAtVertex(&v63, *(*(v36 + 408) + 4 * v6), *(*(v38 + 408) + 4 * v4), v35, v22, &v22[4 * v14]);
  v60 = *&v59;
  operator delete(v67);
  operator delete(v71);
  return v60;
}

void sub_29A0A485C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v5 >= a2)
  {
    *(a1 + 8) = v5 + a2;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = v7 + a2;
    if ((v7 + a2) < 0)
    {
      sub_29A00C9A4();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = operator new(v10);
    }

    else
    {
      v11 = 0;
    }

    memcpy(v11, v6, v7);
    *a1 = v11;
    *(a1 + 8) = &v11[a2 + v7];
    *(a1 + 16) = &v11[v10];
    if (v6)
    {

      operator delete(v6);
    }
  }
}

double sub_29A0A4948(_OWORD *a1)
{
  result = 0.0;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_29A0A498C(void *a1)
{
  v4 = a1 + 57;
  v2 = a1[57];
  v3 = v4[1];
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        v6 = sub_29A0A1654(v2[v5]);
        operator delete(v6);
        v2 = a1[57];
        v3 = a1[58];
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    a1[58] = v2;
    operator delete(v2);
  }

  v7 = a1[54];
  if (v7)
  {
    a1[55] = v7;
    operator delete(v7);
  }

  v8 = a1[51];
  if (v8)
  {
    a1[52] = v8;
    operator delete(v8);
  }

  v9 = a1[48];
  if (v9)
  {
    a1[49] = v9;
    operator delete(v9);
  }

  v10 = a1[45];
  if (v10)
  {
    a1[46] = v10;
    operator delete(v10);
  }

  v11 = a1[42];
  if (v11)
  {
    a1[43] = v11;
    operator delete(v11);
  }

  v12 = a1[39];
  if (v12)
  {
    a1[40] = v12;
    operator delete(v12);
  }

  v13 = a1[36];
  if (v13)
  {
    a1[37] = v13;
    operator delete(v13);
  }

  v14 = a1[33];
  if (v14)
  {
    a1[34] = v14;
    operator delete(v14);
  }

  v15 = a1[30];
  if (v15)
  {
    a1[31] = v15;
    operator delete(v15);
  }

  v16 = a1[27];
  if (v16)
  {
    a1[28] = v16;
    operator delete(v16);
  }

  v17 = a1[24];
  if (v17)
  {
    a1[25] = v17;
    operator delete(v17);
  }

  v18 = a1[21];
  if (v18)
  {
    a1[22] = v18;
    operator delete(v18);
  }

  v19 = a1[18];
  if (v19)
  {
    a1[19] = v19;
    operator delete(v19);
  }

  v20 = a1[15];
  if (v20)
  {
    a1[16] = v20;
    operator delete(v20);
  }

  v21 = a1[12];
  if (v21)
  {
    a1[13] = v21;
    operator delete(v21);
  }

  v22 = a1[9];
  if (v22)
  {
    a1[10] = v22;
    operator delete(v22);
  }

  v23 = a1[6];
  if (v23)
  {
    a1[7] = v23;
    operator delete(v23);
  }

  v24 = a1[3];
  if (v24)
  {
    a1[4] = v24;
    operator delete(v24);
  }

  return a1;
}

uint64_t sub_29A0A4B2C(unsigned int *a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3)
{
  v78 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 6);
  if (((*(a1 + 7) - v6) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing face-verts", "MISSING_FACE_VERTS");
    a2(3, __str, a3);
    v60 = 1;
    goto LABEL_64;
  }

  v7 = *(a1 + 36);
  if (((*(a1 + 37) - v7) & 0x3FFFFFFFCLL) == 0)
  {
    v60 = a2 != 0;
LABEL_64:
    v61 = 0;
    if (!v60 || ((*(a1 + 37) - *(a1 + 36)) & 0x3FFFFFFFCLL) != 0)
    {
      return v61;
    }

    snprintf(__str, 0x400uLL, "%s - missing vert-faces", "MISSING_VERT_FACES");
    a2(4, __str, a3);
    return 0;
  }

  v8 = *a1;
  if (v8 >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = (*(a1 + 3) + 8 * v9);
      v11 = *v10;
      if (v11 >= 1)
      {
        break;
      }

LABEL_14:
      if (++v9 == v8)
      {
        goto LABEL_15;
      }
    }

    v12 = 0;
    v13 = v6 + 4 * v10[1];
    v14 = *(a1 + 33);
    while (1)
    {
      v15 = *(v13 + 4 * v12);
      v16 = *(v14 + 8 * v15);
      if (v16 < 1)
      {
        break;
      }

      v17 = *(v14 + 8 * v15 + 4);
      v18 = (v7 + 4 * v17);
      v19 = (*(a1 + 39) + 2 * v17);
      while (1)
      {
        v20 = *v18++;
        if (v9 == v20 && v12 == *v19)
        {
          break;
        }

        ++v19;
        if (!--v16)
        {
          goto LABEL_61;
        }
      }

      if (++v12 == v11)
      {
        goto LABEL_14;
      }
    }

LABEL_61:
    if (a2)
    {
      snprintf(__str, 0x400uLL, "%s - face %d correlation of vert %d failed", "FAILED_CORRELATION_FACE_VERT", v9, v12);
      a2(7, __str, a3);
    }

    return 0;
  }

LABEL_15:
  v21 = *(a1 + 21);
  if (((*(a1 + 22) - v21) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing edge-faces", "MISSING_EDGE_FACES");
    a2(0, __str, a3);
    v63 = 1;
    goto LABEL_74;
  }

  v22 = *(a1 + 9);
  if (((*(a1 + 10) - v22) & 0x3FFFFFFFCLL) == 0)
  {
    v63 = a2 != 0;
LABEL_74:
    v61 = 0;
    if (!v63 || ((*(a1 + 10) - *(a1 + 9)) & 0x3FFFFFFFCLL) != 0)
    {
      return v61;
    }

    snprintf(__str, 0x400uLL, "%s - missing face-edges", "MISSING_FACE_EDGES");
    a2(2, __str, a3);
    return 0;
  }

  if (v8 >= 1)
  {
    v23 = 0;
    while (1)
    {
      v24 = (*(a1 + 3) + 8 * v23);
      v25 = *v24;
      if (v25 >= 1)
      {
        break;
      }

LABEL_28:
      if (++v23 == v8)
      {
        goto LABEL_29;
      }
    }

    v26 = 0;
    v27 = v22 + 4 * v24[1];
    v28 = *(a1 + 18);
    while (1)
    {
      v29 = *(v27 + 4 * v26);
      v30 = *(v28 + 8 * v29);
      if (v30 < 1)
      {
        break;
      }

      v31 = *(v28 + 8 * v29 + 4);
      v32 = (v21 + 4 * v31);
      v33 = (*(a1 + 24) + 2 * v31);
      while (1)
      {
        v34 = *v32++;
        if (v23 == v34 && v26 == *v33)
        {
          break;
        }

        ++v33;
        if (!--v30)
        {
          goto LABEL_71;
        }
      }

      if (++v26 == v25)
      {
        goto LABEL_28;
      }
    }

LABEL_71:
    if (a2)
    {
      snprintf(__str, 0x400uLL, "%s - face %d correlation of edge %d failed", "FAILED_CORRELATION_FACE_EDGE", v23, v26);
      a2(8, __str, a3);
    }

    return 0;
  }

LABEL_29:
  v35 = *(a1 + 15);
  if (((*(a1 + 16) - v35) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing edge-verts", "MISSING_EDGE_VERTS");
    a2(1, __str, a3);
    v64 = 1;
    goto LABEL_82;
  }

  v36 = *(a1 + 45);
  if (((*(a1 + 46) - v36) & 0x3FFFFFFFCLL) == 0)
  {
    v64 = a2 != 0;
LABEL_82:
    v61 = 0;
    if (!v64 || ((*(a1 + 46) - *(a1 + 45)) & 0x3FFFFFFFCLL) != 0)
    {
      return v61;
    }

    snprintf(__str, 0x400uLL, "%s - missing vert-edges", "MISSING_VERT_EDGES");
    a2(5, __str, a3);
    return 0;
  }

  v37 = a1[1];
  if (v37 < 1)
  {
    goto LABEL_42;
  }

  v38 = 0;
  v39 = *(a1 + 42);
  do
  {
    v40 = 0;
    v41 = 1;
    do
    {
      v42 = v41;
      v43 = *(v35 + 8 * v38 + 4 * v40);
      v44 = *(v39 + 8 * v43);
      if (v44 < 1)
      {
LABEL_79:
        if (a2)
        {
          snprintf(__str, 0x400uLL, "%s - edge %d correlation of vert %d failed", "FAILED_CORRELATION_FACE_VERT", v38, v40);
          a2(7, __str, a3);
        }

        return 0;
      }

      v45 = *(v39 + 8 * v43 + 4);
      v46 = (v36 + 4 * v45);
      v47 = (*(a1 + 48) + 2 * v45);
      while (1)
      {
        v48 = *v46++;
        if (v38 == v48 && v40 == *v47)
        {
          break;
        }

        ++v47;
        if (!--v44)
        {
          goto LABEL_79;
        }
      }

      v41 = 0;
      v40 = 1;
    }

    while ((v42 & 1) != 0);
    ++v38;
  }

  while (v38 != v37);
LABEL_42:
  v49 = 2 * a1[5];
  v74 = &v75;
  __p = 0;
  if (v49 >= 0x21)
  {
    __p = operator new(4 * v49);
    v74 = __p;
  }

  if (a1[2] < 1)
  {
LABEL_85:
    v65 = a1[1];
    if (v65 >= 1)
    {
      v66 = 0;
      v67 = 0;
      v68 = *(a1 + 30);
      v69 = 8 * v65;
      do
      {
        v70 = *v68++;
        if ((v70 & 1) == 0)
        {
          if (*(*(a1 + 15) + v66) == *(*(a1 + 15) + v66 + 4))
          {
            if (a2)
            {
              snprintf(__str, 0x400uLL, "%s - Error in eIndex = %d:  degenerate edge not tagged marked non-manifold", "DEGENERATE_EDGE", v67);
              a2(12, __str, a3);
            }

            goto LABEL_102;
          }

          v71 = *(*(a1 + 18) + v66);
          if ((v71 - 3) <= 0xFFFFFFFD)
          {
            if (a2)
            {
              snprintf(__str, 0x400uLL, "%s - edge %d with %d incident faces not tagged non-manifold", "NON_MANIFOLD_EDGE", v67, v71);
              a2(13, __str, a3);
            }

            goto LABEL_102;
          }
        }

        ++v67;
        v66 += 8;
      }

      while (v69 != v66);
    }

    v61 = 1;
    goto LABEL_103;
  }

  v50 = 0;
  while (2)
  {
    if ((*(*(a1 + 54) + 2 * v50) & 0x801) != 0)
    {
LABEL_47:
      if (++v50 >= a1[2])
      {
        goto LABEL_85;
      }

      continue;
    }

    break;
  }

  v51 = *(a1 + 33);
  v52 = (8 * v50) | 4;
  v53 = *(v51 + v52);
  v54 = *(a1 + 36);
  v55 = *(v51 + 8 * v50);
  v56 = *(a1 + 42);
  v72 = *(v56 + v52);
  v73 = *(a1 + 45);
  v57 = *(v56 + 8 * v50);
  if (!sub_29A0A5318(a1, v50, v74, v74 + v55))
  {
    if (a2)
    {
      snprintf(__str, 0x400uLL, "%s - vertex %d cannot orient incident faces and edges", "FAILED_ORIENTATION_INCIDENT_FACES_EDGES", v50);
      a2(11, __str, a3);
    }

    goto LABEL_102;
  }

  if (v55 < 1)
  {
LABEL_54:
    if (v57 >= 1)
    {
      v59 = 0;
      while (*(v73 + 4 * v72 + 4 * v59) == *(v74 + v55 + v59))
      {
        if (v57 == ++v59)
        {
          goto LABEL_47;
        }
      }

      if (a2)
      {
        snprintf(__str, 0x400uLL, "%s - vertex %d orientation failure at incident edge %d", "FAILED_ORIENTATION_INCIDENT_EDGE", v50, v59);
        a2(9, __str, a3);
      }

      goto LABEL_102;
    }

    goto LABEL_47;
  }

  v58 = 0;
  while (*(v54 + 4 * v53 + 4 * v58) == *(v74 + v58))
  {
    if (v55 == ++v58)
    {
      goto LABEL_54;
    }
  }

  if (a2)
  {
    snprintf(__str, 0x400uLL, "%s - vertex %d orientation failure at incident face %d", "FAILED_ORIENTATION_INCIDENT_FACE", v50, v58);
    a2(10, __str, a3);
  }

LABEL_102:
  v61 = 0;
LABEL_103:
  operator delete(__p);
  return v61;
}

uint64_t sub_29A0A5318(void *a1, int a2, _DWORD *a3, int *a4)
{
  v4 = a1[42];
  v5 = 8 * a2;
  v6 = *(v4 + v5);
  v7 = a1[33];
  v8 = *(v7 + v5);
  if (v8)
  {
    v9 = v6 < 2;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v6 - v8 <= 1)
  {
    v12 = (8 * ((2 * a2) >> 1)) | 4;
    if (v6 == v8)
    {
      v13 = *(a1[36] + 4 * *(v7 + v12));
      v14 = a1[3];
      v15 = *(v14 + 4 * ((2 * v13) | 1));
      v16 = a1[6] + 4 * v15;
      v17 = *(v14 + 8 * v13);
      if (v17)
      {
        v18 = 4 * v17;
        v19 = (v16 + v18);
        v20 = (a1[6] + 4 * v15);
        while (*v20 != a2)
        {
          ++v20;
          v18 -= 4;
          if (!v18)
          {
            v20 = v19;
            break;
          }
        }
      }

      else
      {
        v20 = (a1[6] + 4 * v15);
      }

      v22 = (v20 - v16) >> 2;
      v25 = *(a1[9] + 4 * v15 + 4 * v22);
    }

    else
    {
      v21 = 0;
      LODWORD(v22) = 0;
      v23 = a1[45] + 4 * *(v4 + v12);
      v24 = a1[18];
      LODWORD(v13) = -1;
      v25 = -1;
      do
      {
        v26 = *(v23 + 4 * v21);
        if (*(v24 + 8 * v26) == 1)
        {
          v25 = *(v23 + 4 * v21);
          v13 = *(a1[21] + 4 * *(v24 + 4 * ((2 * v26) | 1)));
          v27 = a1[3];
          v28 = *(v27 + 4 * ((2 * v13) | 1));
          v29 = a1[6] + 4 * v28;
          v30 = *(v27 + 8 * v13);
          if (v30)
          {
            v31 = 4 * v30;
            v32 = (v29 + v31);
            v33 = (a1[6] + 4 * v28);
            while (*v33 != a2)
            {
              ++v33;
              v31 -= 4;
              if (!v31)
              {
                v33 = v32;
                break;
              }
            }
          }

          else
          {
            v33 = (a1[6] + 4 * v28);
          }

          v22 = (v33 - v29) >> 2;
          if (v25 == *(a1[9] + 4 * v28 + 4 * v22))
          {
            break;
          }
        }

        ++v21;
      }

      while (v21 != v6);
    }

    *a3 = v13;
    *a4 = v25;
    v34 = 1;
    LODWORD(v35) = v13;
    v36 = a1[3];
    v37 = v25;
    v38 = 1;
    v39 = a1[9];
    while (1)
    {
      v40 = v37;
      v41 = *(v36 + 8 * v35);
      if (v22)
      {
        v41 = v22;
      }

      v37 = *(v39 + 4 * *(v36 + 8 * v35 + 4) + 4 * v41 - 4);
      if (v37 == v40 || v37 == v25)
      {
        break;
      }

      a4[v34] = v37;
      if (v38 < v8)
      {
        v43 = a1[18];
        v44 = (a1[21] + 4 * *(v43 + 4 * ((2 * v37) | 1)));
        v45 = *(v43 + 8 * v37);
        if (v45 == 1)
        {
          v46 = *v44;
          if (*v44 == v35)
          {
            return 0;
          }
        }

        else
        {
          if (!v45)
          {
            return 0;
          }

          v46 = *v44;
        }

        v35 = v44[v46 == v35];
        v47 = v39 + 4 * *(v36 + 4 * ((2 * v35) | 1));
        v48 = *(v36 + 8 * v35);
        if (v48)
        {
          v49 = 4 * v48;
          v50 = (v47 + v49);
          v51 = (v39 + 4 * *(v36 + 4 * ((2 * v35) | 1)));
          while (*v51 != v37)
          {
            ++v51;
            v49 -= 4;
            if (!v49)
            {
              v51 = v50;
              break;
            }
          }
        }

        else
        {
          v51 = (v39 + 4 * *(v36 + 4 * ((2 * v35) | 1)));
        }

        v22 = (v51 - v47) >> 2;
        a3[v38++] = v35;
      }

      if (++v34 == v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *sub_29A0A55F8(void *result, int a2, _WORD *a3, unsigned int a4)
{
  v4 = (2 * a2) | 1;
  v5 = result[3];
  v6 = (result[6] + 4 * *(v5 + 4 * v4));
  v7 = *(v5 + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    if (v7 >= 1)
    {
      do
      {
        v24 = *v6++;
        *a3++ = *(result[54] + 2 * v24);
        --v7;
      }

      while (v7);
    }
  }

  else if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result[57] + 8 * a4);
    v10 = v9[3] + 4 * *(*(*v9 + 24) + 4 * v4);
    do
    {
      v11 = v6[v8];
      v12 = *(v10 + 4 * v8);
      if (*(*v9 + 12) <= 0)
      {
        v13 = *(v9[12] + 4 * v11);
        v12 = v13 - 1;
        v14 = (v9[18] + 4 * v13);
        do
        {
          v15 = *v14++;
          ++v12;
        }

        while (v15 != *(v10 + 4 * v8));
      }

      v16 = *(v9[21] + v12);
      v17 = *(result[54] + 2 * v11);
      if (v16)
      {
        v18 = v17 & 0xF87F;
        v19 = v18 | 0x400;
        if (v16 >= 0x40)
        {
          v20 = 16;
        }

        else
        {
          v20 = 24;
        }

        v21 = v20 | v18 & 0xB867 | 0x400;
        v22 = v18 | 0x200;
        if ((v16 & 8) == 0)
        {
          v22 = v19;
        }

        v23 = v22 & 0xBE67 | 0x4000;
        if ((v16 & 0x18) == 0)
        {
          v23 = v21;
        }

        v17 = v23 & 0x7FF8 | (v16 | (v16 << 8)) & 0x8002 | 0x2004 | v23 & 1 | ((v16 & 4) != 0);
      }

      a3[v8++] = v17;
    }

    while (v8 != v7);
  }

  return result;
}

void *sub_29A0A573C(void *result, int a2, _BYTE *a3, unsigned int a4)
{
  v4 = result[3];
  v5 = (result[9] + 4 * *(v4 + 8 * a2 + 4));
  v6 = *(v4 + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    if (v6 >= 1)
    {
      do
      {
        v10 = *v5++;
        *a3++ = *(result[30] + v10);
        --v6;
      }

      while (v6);
    }
  }

  else if (v6 >= 1)
  {
    v7 = *(result[57] + 8 * a4);
    do
    {
      v8 = *v5++;
      v9 = *(result[30] + v8);
      if (*(*(v7 + 48) + v8))
      {
        v9 |= 6u;
      }

      *a3++ = v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_29A0A57C0(unsigned __int16 *a1, int a2)
{
  result = *a1;
  if (a2 >= 2)
  {
    v4 = a1 + 1;
    v5 = a2 - 1;
    do
    {
      v6 = *v4++;
      result = v6 | result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_29A0A57F0(void *a1, int a2, unsigned int a3)
{
  v37 = *MEMORY[0x29EDCA608];
  v5 = a1[3];
  v6 = *(v5 + 8 * a2 + 4);
  v7 = a1[6];
  v8 = *(v5 + 8 * a2);
  if ((a3 & 0x80000000) != 0)
  {
    v29 = a1[54];
    v12 = *(v29 + 2 * *(v7 + 4 * v6));
    if (v8 >= 2)
    {
      v30 = v8 - 1;
      v31 = (v7 + 4 * v6 + 4);
      do
      {
        v32 = *v31++;
        v12 = *(v29 + 2 * v32) | v12;
        --v30;
      }

      while (v30);
    }
  }

  else
  {
    v9 = *(a1[57] + 8 * a3);
    v10 = v35;
    v34 = v35;
    __p = 0;
    if (v8 >= 0x41)
    {
      v10 = operator new(v8);
      __p = v10;
      v34 = v10;
    }

    sub_29A0A2AF0(v9, a2, v10);
    v11 = a1[54];
    v12 = *(v11 + 2 * *(v7 + 4 * v6));
    v13 = *v34;
    if (v13)
    {
      if (v13 >= 0x40)
      {
        v14 = 16;
      }

      else
      {
        v14 = 24;
      }

      v15 = v12 & 0xF87F | 0x200;
      if ((v13 & 8) == 0)
      {
        v15 = v12 & 0xF87F | 0x400;
      }

      v16 = v15 & 0xBE67 | 0x4000;
      if ((v13 & 0x18) == 0)
      {
        v16 = v14 | v12 & 0xB867 | 0x400;
      }

      v12 = v16 & 0x7FF8 | (v13 | (v13 << 8)) & 0x8002 | 0x2004 | v16 & 1 | ((v13 & 4) != 0);
    }

    if (v8 >= 2)
    {
      v17 = v34 + 1;
      v18 = (v7 + 4 * v6 + 4);
      v19 = v8 - 1;
      do
      {
        v20 = *v18++;
        v21 = *(v11 + 2 * v20);
        LODWORD(v20) = *v17++;
        v22 = v20;
        if (v20)
        {
          v23 = v21 & 0xF87F;
          v24 = v23 | 0x400;
          if (v22 >= 0x40)
          {
            v25 = 16;
          }

          else
          {
            v25 = 24;
          }

          v26 = v25 | v23 & 0xB867 | 0x400;
          v27 = v23 | 0x200;
          if ((v22 & 8) == 0)
          {
            v27 = v24;
          }

          v28 = v27 & 0xBE67 | 0x4000;
          if ((v22 & 0x18) == 0)
          {
            v28 = v26;
          }

          v21 = v28 & 0x7FF8 | (v22 | (v22 << 8)) & 0x8002 | 0x2004 | v28 & 1 | ((v22 & 4) != 0);
        }

        v12 = v21 | v12;
        --v19;
      }

      while (v19);
    }

    operator delete(__p);
  }

  return v12;
}

uint64_t sub_29A0A5A48(uint64_t a1, int a2, int a3)
{
  v3 = *(*(a1 + 456) + 8 * a3);
  v4 = *(v3[12] + 4 * a2);
  v5 = v3[21];
  v6 = *(*(a1 + 432) + 2 * a2);
  v7 = *(v5 + v4);
  if ((v7 & 1) == 0)
  {
    return *(*(a1 + 432) + 2 * a2);
  }

  v9 = *(v3[9] + 2 * a2);
  v10 = v6 & 0xB867 | 0x400;
  if (v7 >= 0x40)
  {
    v11 = 16;
  }

  else
  {
    v11 = 24;
  }

  if ((v7 & 8) != 0)
  {
    v12 = v6 & 0xF87F | 0x200;
  }

  else
  {
    v12 = v6 & 0xF87F | 0x400;
  }

  v13 = v12 & 0xBE67 | 0x4000;
  if ((v7 & 0x18) == 0)
  {
    v13 = v11 | v10;
  }

  result = v13 & 0x7FF8 | (v7 | (v7 << 8)) & 0x8002 | 0x2004 | v13 & 1 | ((v7 & 4) != 0);
  if (v9 >= 2)
  {
    v14 = (v4 + v5 + 1);
    v15 = v9 - 1;
    do
    {
      v17 = *v14++;
      v16 = v17;
      v18 = v6;
      if (v17)
      {
        v19 = v10 | (8 * (v16 < 0x40)) | 0x10;
        if ((v16 & 8) != 0)
        {
          v20 = v6 & 0xF87F | 0x200;
        }

        else
        {
          v20 = v6 & 0xF87F | 0x400;
        }

        v21 = v20 & 0xBE67 | 0x4000;
        if ((v16 & 0x18) != 0)
        {
          v19 = v21;
        }

        v18 = v19 & 0x7FF8 | (v16 | (v16 << 8)) & 0x8002 | 0x2004 | v19 & 1 | ((v16 & 4) != 0);
      }

      result = v18 | result;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_29A0A5B60(void *a1, int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1[33];
  v5 = *(v4 + 8 * a2);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(v4 + 8 * a2 + 4);
  v8 = (a1[36] + 4 * v7);
  v9 = (a1[39] + 2 * v7);
  v10 = *(a1[42] + 8 * a2);
  v11 = (v5 - 1);
  v12 = v5;
  do
  {
    v13 = *v8++;
    v14 = (2 * v13) | 1;
    if ((a4 & 0x80000000) != 0)
    {
      v18 = (a1[3] + 4 * v14);
      v16 = a1 + 6;
    }

    else
    {
      v15 = *(a1[57] + 8 * a4);
      v17 = *v15;
      v16 = v15 + 3;
      v18 = (*(v17 + 24) + 4 * v14);
    }

    v19 = *v16 + 4 * *v18;
    v20 = *v9;
    v21 = (a3 + 4 * v6);
    *v21 = *(v19 + 4 * ((*v9 + 1) & 3));
    v22 = v6 + 2;
    v21[1] = *(v19 + 4 * (v20 & 3 ^ 2));
    if (v10 > v5 && !v11)
    {
      *(a3 + 4 * v22) = *(v19 + 4 * ((v20 - 1) & 3));
      v22 = (v6 + 3);
    }

    --v11;
    ++v9;
    v6 = v22;
    --v12;
  }

  while (v12);
  return v22;
}

uint64_t sub_29A0A5C8C(void *a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a1[3];
  v5 = *(v4 + 8 * a2 + 4);
  v6 = *(v4 + 8 * a2);
  v7 = (a1[6] + 4 * v5);
  v8 = a1[54];
  if (v6 < 2)
  {
    v11 = *(v8 + 2 * *v7);
  }

  else
  {
    v9 = v6 - 1;
    v10 = v7 + 1;
    v11 = *(v8 + 2 * *v7);
    do
    {
      v12 = *v10++;
      v11 |= *(v8 + 2 * v12);
      --v9;
    }

    while (v9);
  }

  if ((v11 & 0x707) != 0x200)
  {
    return 0;
  }

  v13 = ((*(v8 + 2 * *v7) & 0x780) == 512) | (2 * ((*(v8 + 2 * v7[1]) & 0x780) == 512)) | (4 * ((*(v8 + 2 * v7[2]) & 0x780) == 512)) | (8 * ((*(v8 + 2 * v7[3]) & 0x780) == 512));
  if ((0xEDB7uLL >> v13))
  {
    return 0;
  }

  v14 = dword_29B433E30[v13];
  v15 = a1[45];
  v16 = a1[42];
  v17 = (v15 + 4 * *(v16 + 8 * v7[v14] + 4));
  v18 = a1[27];
  if (*(v18 + 4 * *v17) != *(v18 + 4 * v17[2]))
  {
    return 0;
  }

  if (*(v18 + 4 * v17[1]) != *(v18 + 4 * v17[3]))
  {
    return 0;
  }

  v19 = (v15 + 4 * *(v16 + 8 * v7[(v14 + 1) & 3] + 4));
  if (*(v18 + 4 * *v19) != *(v18 + 4 * v19[2]) || *(v18 + 4 * v19[1]) != *(v18 + 4 * v19[3]))
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *(v18 + 4 * *(a1[9] + 4 * v5 + 4 * v14));
  }

  if (a4)
  {
    *a4 = v14;
  }

  return 1;
}

uint64_t sub_29A0A5E24(void *a1, int a2, int a3)
{
  v3 = a1[42];
  v4 = (a1[45] + 4 * *(v3 + 8 * a2 + 4));
  v5 = *(v3 + 8 * a2);
  if (a2 == a3)
  {
    if (v5 >= 1)
    {
      v6 = a1[15];
      while (1)
      {
        v8 = *v4++;
        result = v8;
        if (*(v6 + 8 * v8) == *(v6 + 8 * v8 + 4))
        {
          break;
        }

        if (!--v5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a1[15];
  while (1)
  {
    v10 = *v4++;
    result = v10;
    v11 = (v9 + 8 * v10);
    if (*v11 == a3 || v11[1] == a3)
    {
      break;
    }

    if (!--v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

BOOL sub_29A0A5EB8(int *a1)
{
  v1 = a1;
  v2 = a1[2];
  v3 = *a1;
  v4 = a1 + 66;
  sub_29A0A171C(a1 + 33, 2 * v2);
  sub_29A0A171C(v1 + 42, 2 * v2);
  sub_29A0A171C(v1 + 51, v2);
  sub_29A0A72CC((v1 + 108), v2);
  bzero(*(v1 + 54), 2 * v1[2]);
  *v1 = v3;
  sub_29A0A171C(v1 + 3, 2 * v3);
  v5 = *(v1 + 12);
  v6 = *(v1 + 13) - v5;
  v87 = v3;
  if (v3 <= v6)
  {
    if (v3 < v6)
    {
      *(v1 + 13) = &v5[v3];
    }
  }

  else
  {
    sub_29A0A485C((v1 + 24), v3 - v6);
    v5 = *(v1 + 12);
  }

  bzero(v5, *v1);
  v1[1] = 0;
  sub_29A0A171C(v1 + 18, 0);
  sub_29A0A171C(v1 + 27, 0);
  v7 = *(v1 + 30);
  v86 = (v1 + 60);
  if (*(v1 + 31) != v7)
  {
    *(v1 + 31) = v7;
  }

  sub_29A0A171C(v1 + 9, ((*(v1 + 7) - *(v1 + 6)) >> 2));
  v8 = 4 * v2;
  sub_29A0A6994((v1 + 30), v8);
  sub_29A0A6994((v1 + 42), v8);
  sub_29A0A6994((v1 + 36), v8);
  v9 = 2;
  v111 = (v1 + 36);
  v112 = (v1 + 42);
  v114[0] = 0;
  v114[1] = 0;
  v113 = v114;
  v10 = *(v1 + 18);
  v11 = (*(v1 + 19) - v10) >> 2;
  v12 = v11 / 2;
  v109 = v11 / 2;
  v110 = 2;
  if (v11 >= 2)
  {
    v13 = 0;
    v14 = (v10 + 4);
    do
    {
      *(v14 - 1) = 0;
      *v14 = v110 * v13;
      v14 += 2;
      ++v13;
      v12 = v109;
    }

    while (v13 < v109);
    v9 = v110;
  }

  sub_29A0A171C(v1 + 21, v12 * v9);
  v15 = 6;
  v105 = v4;
  v106 = (v1 + 72);
  v108[0] = 0;
  v108[1] = 0;
  v107 = v108;
  v16 = *(v1 + 33);
  v17 = (*(v1 + 34) - v16) >> 2;
  v18 = v17 / 2;
  v103 = v17 / 2;
  v104 = 6;
  if (v17 >= 2)
  {
    v19 = 0;
    v20 = (v16 + 4);
    do
    {
      *(v20 - 1) = 0;
      *v20 = v104 * v19;
      v20 += 2;
      ++v19;
      v18 = v103;
    }

    while (v19 < v103);
    v15 = v104;
  }

  sub_29A0A171C(v1 + 36, v18 * v15);
  v21 = 6;
  v99 = (v1 + 84);
  v100 = (v1 + 90);
  v102[0] = 0;
  v102[1] = 0;
  v101 = v102;
  v22 = *(v1 + 42);
  v23 = (*(v1 + 43) - v22) >> 2;
  v24 = v23 / 2;
  v97 = v23 / 2;
  v98 = 6;
  if (v23 >= 2)
  {
    v25 = 0;
    v26 = (v22 + 4);
    do
    {
      *(v26 - 1) = 0;
      *v26 = v98 * v25;
      v26 += 2;
      ++v25;
      v24 = v97;
    }

    while (v25 < v97);
    v21 = v98;
  }

  v85 = v1 + 36;
  sub_29A0A171C(v1 + 45, v24 * v21);
  v89 = v1 + 1;
  __p = 0;
  v95 = 0;
  v96 = 0;
  if (v87 >= 1)
  {
    v27 = 0;
    v90 = v1;
    while (1)
    {
      v28 = (*(v1 + 3) + 8 * v27);
      v29 = *v28;
      if (v29 >= 1)
      {
        break;
      }

LABEL_72:
      ++v27;
      v1 = v90;
      if (v27 == v87)
      {
        goto LABEL_73;
      }
    }

    v30 = 0;
    v31 = v28[1];
    v32 = *(v90 + 6) + 4 * v31;
    v88 = *(v90 + 9) + 4 * v31;
    while (1)
    {
      v33 = *(v32 + 4 * v30);
      v93 = v33;
      v34 = v30 + 1;
      v35 = (v30 + 1);
      if (v30 + 1 == v29)
      {
        v35 = 0;
      }

      v36 = *(v32 + 4 * v35);
      v91 = 0;
      v92 = v36;
      if (v33 == v36)
      {
        v91 = -1;
        sub_29A00D250(&__p, v89);
        v37 = v91;
      }

      else
      {
        v38 = v33;
        v116 = v33;
        v39 = *(*v99 + 8 * v33);
        if (v39 <= v98)
        {
          v41 = *v100 + 4 * *(*v99 + 4 * ((2 * v38) | 1));
        }

        else
        {
          v117[0] = &v116;
          v40 = sub_29A0A7450(&v101, &v116, &unk_29B433E70, v117);
          v41 = v40[5];
          v39 = ((v40[6] - v41) >> 2);
        }

        if (v39 < 1)
        {
LABEL_34:
          v37 = -1;
        }

        else
        {
          while (1)
          {
            v42 = *v41;
            v41 += 4;
            v37 = v42;
            v43 = (*(v90 + 15) + 8 * v42);
            if (*v43 == v36 || v43[1] == v36)
            {
              break;
            }

            if (!--v39)
            {
              goto LABEL_34;
            }
          }
        }

        v91 = v37;
      }

      if (v37 != -1)
      {
        v116 = v37;
        LODWORD(v44) = *(*v111 + 2 * v37);
        if (v44 <= v110)
        {
          v46 = *v112 + 4 * *(*v111 + 2 * v37 + 1);
        }

        else
        {
          v117[0] = &v116;
          v45 = sub_29A0A7450(&v113, &v116, &unk_29B433E70, v117);
          v46 = v45[5];
          v44 = (v45[6] - v46) >> 2;
        }

        if (v27 == *(v46 + 4 * v44 - 4))
        {
          sub_29A00D250(&__p, &v91);
          sub_29A00D250(&__p, v89);
          goto LABEL_46;
        }

        if (v44 > 1 || v93 == *(*(v90 + 15) + 8 * v91))
        {
          sub_29A00D250(&__p, &v91);
        }
      }

      v47 = v91;
      if (v91 != -1)
      {
        goto LABEL_59;
      }

LABEL_46:
      v91 = *v89;
      *v89 = v91 + 1;
      sub_29A00D250(v90 + 15, &v93);
      sub_29A00D250(v90 + 15, &v92);
      LODWORD(v117[0]) = 0;
      sub_29A00D250(v111, v117);
      LODWORD(v117[0]) = v110 * v109;
      sub_29A00D250(v111, v117);
      v48 = ++v109;
      sub_29A0A171C(v112, v110 * v48);
      v49 = v91;
      v115 = v91;
      v116 = v93;
      v50 = *(*v99 + 8 * v93);
      v51 = *(*v99 + 4 * ((2 * v93) | 1));
      if (v50 >= v98)
      {
        v117[0] = &v116;
        v54 = sub_29A0A7450(&v101, &v116, &unk_29B433E70, v117);
        v52 = (v54 + 5);
        if (v50 > v98)
        {
          sub_29A00D250(v54 + 5, &v115);
          goto LABEL_52;
        }

        sub_29A0A171C(v54 + 5, v98 + 1);
        memcpy(*v52, *v100 + 4 * v51, 4 * v98);
        v53 = v98;
      }

      else
      {
        v52 = v100;
        v53 = v51 + v50;
      }

      *(*v52 + v53) = v49;
LABEL_52:
      v55 = *v99;
      *(v55 + 8 * v116) = *(*v99 + 8 * v116) + 1;
      v56 = v91;
      v115 = v91;
      v116 = v92;
      v57 = *(v55 + 8 * v92);
      v58 = *(v55 + 4 * ((2 * v92) | 1));
      if (v57 < v98)
      {
        v59 = v100;
        v60 = v58 + v57;
LABEL_57:
        *(*v59 + v60) = v56;
        goto LABEL_58;
      }

      v117[0] = &v116;
      v61 = sub_29A0A7450(&v101, &v116, &unk_29B433E70, v117);
      v59 = (v61 + 5);
      if (v57 <= v98)
      {
        sub_29A0A171C(v61 + 5, v98 + 1);
        memcpy(*v59, *v100 + 4 * v58, 4 * v98);
        v60 = v98;
        goto LABEL_57;
      }

      sub_29A00D250(v61 + 5, &v115);
LABEL_58:
      ++*(*v99 + 8 * v116);
      v47 = v91;
LABEL_59:
      v115 = v27;
      v116 = v47;
      v62 = *(*v111 + 2 * v47);
      v63 = *(*v111 + 2 * v47 + 1);
      if (v62 >= v110)
      {
        v117[0] = &v116;
        v66 = sub_29A0A7450(&v113, &v116, &unk_29B433E70, v117);
        v64 = (v66 + 5);
        if (v62 > v110)
        {
          sub_29A00D250(v66 + 5, &v115);
          goto LABEL_65;
        }

        sub_29A0A171C(v66 + 5, v110 + 1);
        memcpy(*v64, *v112 + 4 * v63, 4 * v110);
        v65 = v110;
      }

      else
      {
        v64 = v112;
        v65 = v63 + v62;
      }

      *(*v64 + v65) = v27;
LABEL_65:
      ++*(*v111 + 2 * v116);
      v115 = v27;
      v116 = v93;
      v67 = *(*v105 + 8 * v93);
      v68 = *(*v105 + 4 * ((2 * v93) | 1));
      if (v67 < v104)
      {
        v69 = v106;
        v70 = v68 + v67;
LABEL_70:
        *(*v69 + v70) = v27;
        goto LABEL_71;
      }

      v117[0] = &v116;
      v71 = sub_29A0A7450(&v107, &v116, &unk_29B433E70, v117);
      v69 = (v71 + 5);
      if (v67 <= v104)
      {
        sub_29A0A171C(v71 + 5, v104 + 1);
        memcpy(*v69, *v106 + 4 * v68, 4 * v104);
        v70 = v104;
        goto LABEL_70;
      }

      sub_29A00D250(v71 + 5, &v115);
LABEL_71:
      ++*(*v105 + 8 * v116);
      *(v88 + 4 * v30++) = v91;
      if (v34 == v29)
      {
        goto LABEL_72;
      }
    }
  }

LABEL_73:
  v72 = sub_29A0A6A34(&v109);
  v73 = sub_29A0A6A34(&v103);
  v74 = sub_29A0A6A34(&v97);
  v75 = v1[5];
  if (v73 > v75)
  {
    v75 = v73;
  }

  if (v74 <= v75)
  {
    v76 = v75;
  }

  else
  {
    v76 = v74;
  }

  v1[4] = v72;
  v1[5] = v76;
  if (v76 < 0x10000)
  {
    v77 = *v89;
    sub_29A0A171C(v85, 2 * v77);
    sub_29A0A171C(v1 + 27, v77);
    v78 = *(v1 + 30);
    v79 = *(v1 + 31) - v78;
    if (v77 <= v79)
    {
      if (v77 < v79)
      {
        *(v1 + 31) = v78 + v77;
      }
    }

    else
    {
      sub_29A0A485C(v86, v77 - v79);
    }

    if (v77 >= 1)
    {
      bzero(*v86, *v89);
    }

    v80 = __p;
    if (((v95 - __p) >> 2) >= 1)
    {
      v81 = 0;
      do
      {
        v82 = v80[v81];
        *(*v86 + v82) |= 1u;
        v83 = (*(v1 + 15) + 8 * v82);
        *(*(v1 + 54) + 2 * *v83) |= 1u;
        *(*(v1 + 54) + 2 * v83[1]) |= 1u;
        ++v81;
        v80 = __p;
      }

      while (v81 < ((v95 - __p) >> 2));
    }

    sub_29A0A6CC0(v1);
    sub_29A0A6D2C(v1);
  }

  if (__p)
  {
    v95 = __p;
    operator delete(__p);
  }

  sub_29A0A73EC(&v101, v102[0]);
  sub_29A0A73EC(&v107, v108[0]);
  sub_29A0A73EC(&v113, v114[0]);
  return v76 < 0x10000;
}

void sub_29A0A691C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A0A73EC(&a24, a25);
  sub_29A0A73EC(&a30, a31);
  sub_29A0A73EC(v32 - 136, *(v31 + 32));
  _Unwind_Resume(a1);
}

void sub_29A0A6994(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 2)
  {
    if (a2 >> 62)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A00E7A8(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[4 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

uint64_t sub_29A0A6A34(int *a1)
{
  v2 = **(a1 + 1);
  v3 = *v2;
  LODWORD(v4) = *a1;
  if (*(a1 + 5))
  {
    if (v4 < 2)
    {
      v5 = 0;
      v8 = a1[1];
    }

    else
    {
      v5 = 0;
      v6 = v2 + 3;
      v7 = 1;
      do
      {
        *v6 = v3;
        v8 = a1[1];
        v4 = *a1;
        v5 |= v3 > v8 * v7;
        v3 += *(v6 - 1);
        ++v7;
        v6 += 2;
      }

      while (v7 < v4);
    }

    v12 = v5 | (v3 > v8 * v4);
    __p = 0;
    v27 = 0;
    v28 = 0;
    if (v5 & 1 | (v3 > v8 * v4))
    {
      sub_29A0A171C(&__p, v3);
      LODWORD(v4) = *a1;
      v8 = a1[1];
      p_p = &__p;
    }

    else
    {
      p_p = *(a1 + 2);
    }

    v25 = 0;
    if (v4 >= 1)
    {
      v14 = 0;
      do
      {
        v15 = **(a1 + 1);
        v16 = *(v15 + 8 * v14);
        v17 = *p_p;
        v18 = *(v15 + 8 * v14 + 4);
        v19 = a1[1];
        if (v16 <= v19)
        {
          v20 = (**(a1 + 2) + 4 * v19 * v14);
        }

        else
        {
          v29 = &v25;
          v20 = sub_29A0A7450(a1 + 3, &v25, &unk_29B433E70, &v29)[5];
          if (v8 <= v16)
          {
            v8 = v16;
          }

          else
          {
            v8 = v8;
          }
        }

        memmove(&v17[4 * v18], v20, 4 * v16);
        v14 = v25 + 1;
        v25 = v14;
      }

      while (v14 < *a1);
    }

    v21 = *(a1 + 2);
    if (v12)
    {
      v22 = *v21;
      *v21 = __p;
      *(v21 + 8) = v27;
      v23 = *(v21 + 16);
      *(v21 + 16) = v28;
      __p = v22;
      v28 = v23;
      if (!v22)
      {
        return v8;
      }

      goto LABEL_29;
    }

    sub_29A0A171C(*(a1 + 2), v3);
    v22 = __p;
    if (__p)
    {
LABEL_29:
      v27 = v22;
      operator delete(v22);
    }
  }

  else
  {
    if (v4 < 2)
    {
      v8 = *v2;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      LODWORD(v8) = *v2;
      do
      {
        v11 = v2[v9 + 2];
        memmove((**(a1 + 2) + 4 * v3), (**(a1 + 2) + 4 * v2[v9 + 3]), 4 * v11);
        v2 = **(a1 + 1);
        v2[v9 + 3] = v3;
        v3 += v11;
        if (v8 <= v11)
        {
          v8 = v11;
        }

        else
        {
          v8 = v8;
        }

        ++v10;
        v9 += 2;
      }

      while (v10 < *a1);
    }

    sub_29A0A171C(*(a1 + 2), v3);
  }

  return v8;
}

void sub_29A0A6C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0A6CC0(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = result;
    for (i = 0; i != v1; ++i)
    {
      v4 = v2[54];
      if ((*(v4 + 2 * i) & 1) == 0)
      {
        result = sub_29A0A6FE8(v2, i);
        if ((result & 1) == 0)
        {
          *(v4 + 2 * i) |= 1u;
        }
      }
    }
  }

  return result;
}

void sub_29A0A6D2C(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  sub_29A0A174C((a1 + 312), (*(a1 + 296) - *(a1 + 288)) >> 2);
  sub_29A0A174C((a1 + 384), (*(a1 + 368) - *(a1 + 360)) >> 2);
  sub_29A0A174C((a1 + 192), (*(a1 + 176) - *(a1 + 168)) >> 2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 288);
    v6 = *(a1 + 264);
    v7 = *(a1 + 312);
    do
    {
      v8 = (v6 + 8 * v4);
      v9 = *v8;
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = v8[1];
        v12 = v5 + 4 * v11;
        v13 = v7 + 2 * v11;
        v14 = *(a1 + 24);
        v15 = *(a1 + 48);
        LODWORD(v16) = -1;
        do
        {
          v17 = v16;
          v16 = *(v12 + 4 * v10);
          if (v16 == v17)
          {
            v18 = *(v13 - 2 + 2 * v10) + 1;
          }

          else
          {
            v18 = 0;
          }

          v19 = v15 + 4 * *(v14 + 4 * ((2 * v16) | 1));
          v20 = *(v14 + 8 * v16);
          v21 = (v19 + 4 * v18);
          if (v18 != v20)
          {
            v22 = 4 * v20 - 4 * v18;
            do
            {
              if (v4 == *v21)
              {
                goto LABEL_13;
              }

              ++v21;
              v22 -= 4;
            }

            while (v22);
            LODWORD(v21) = v19 + 4 * v20;
          }

LABEL_13:
          *(v13 + 2 * v10++) = (v21 - v19) >> 2;
        }

        while (v10 != v9);
      }

      ++v4;
    }

    while (v4 != v3);
    v23 = 0;
    v24 = *(a1 + 360);
    v25 = *(a1 + 336);
    v26 = *(a1 + 384);
    v27 = *(a1 + 20);
    while (1)
    {
      v28 = (v25 + 8 * v23);
      v29 = *v28;
      if (v29 >= 1)
      {
        break;
      }

LABEL_28:
      if (v27 <= v29)
      {
        v27 = v29;
      }

      *(a1 + 20) = v27;
      if (++v23 == v3)
      {
        goto LABEL_31;
      }
    }

    v30 = 0;
    v31 = v28[1];
    v32 = (v24 + 4 * v31);
    v33 = v26 + 2 * v31;
    v34 = *(a1 + 120);
    v35 = v32;
    while (1)
    {
      v37 = *v35++;
      v36 = v37;
      v38 = (v34 + 8 * v37);
      v40 = *v38;
      v39 = v38[1];
      if (v40 != v39)
      {
        break;
      }

      if (v30)
      {
        v41 = v36 == *(v32 - 1);
        goto LABEL_22;
      }

      v42 = 0;
LABEL_25:
      *(v33 + v30) = v42;
      v30 += 2;
      v32 = v35;
      if (2 * v29 == v30)
      {
        goto LABEL_28;
      }
    }

    v41 = v23 == v39;
LABEL_22:
    v42 = v41;
    goto LABEL_25;
  }

LABEL_31:
  if (v2 >= 1)
  {
    v43 = 0;
    v44 = *(a1 + 168);
    v45 = *(a1 + 144);
    v46 = *(a1 + 192);
    do
    {
      v47 = (v45 + 8 * v43);
      v48 = *v47;
      if (v48 >= 1)
      {
        v49 = 0;
        v50 = v47[1];
        v51 = v44 + 4 * v50;
        v52 = v46 + 2 * v50;
        v53 = *(a1 + 24);
        v54 = *(a1 + 72);
        LODWORD(v55) = -1;
        do
        {
          v56 = v55;
          v55 = *(v51 + 4 * v49);
          if (v55 == v56)
          {
            v57 = *(v52 - 2 + 2 * v49) + 1;
          }

          else
          {
            v57 = 0;
          }

          v58 = v54 + 4 * *(v53 + 4 * ((2 * v55) | 1));
          v59 = *(v53 + 8 * v55);
          v60 = (v58 + 4 * v57);
          if (v57 != v59)
          {
            v61 = 4 * v59 - 4 * v57;
            while (v43 != *v60)
            {
              ++v60;
              v61 -= 4;
              if (!v61)
              {
                LODWORD(v60) = v58 + 4 * v59;
                break;
              }
            }
          }

          *(v52 + 2 * v49++) = (v60 - v58) >> 2;
        }

        while (v49 != v48);
      }

      ++v43;
    }

    while (v43 != v2);
  }
}

uint64_t sub_29A0A6FE8(void *a1, int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a1[36];
  v5 = a1[33];
  v6 = (8 * ((2 * a2) >> 1)) | 4;
  v7 = *(v5 + v6);
  v8 = 8 * a2;
  v9 = *(v5 + v8);
  v10 = a1[42];
  v11 = *(v10 + v6);
  v12 = a1[45];
  v13 = *(v10 + v8);
  v14 = &v17;
  __p = 0;
  if ((v13 + v9) >= 0x21)
  {
    v14 = operator new(4 * (v13 + v9));
    __p = v14;
  }

  v15 = sub_29A0A5318(a1, a2, v14, v14 + v9);
  if (v15)
  {
    memcpy((v4 + 4 * v7), v14, 4 * v9);
    memcpy((v12 + 4 * v11), v14 + 4 * v9, 4 * v13);
  }

  operator delete(__p);
  return v15;
}

uint64_t sub_29A0A7128(uint64_t a1, int a2, _DWORD *a3)
{
  v6 = operator new(0xD8uLL);
  sub_29A0A1560(v6, a1);
  v8 = v6;
  sub_29A0A1658(v6, a3);
  sub_29A0A1858(v6, a2);
  sub_29A0A1664(v6);
  sub_29A0A71C8(a1 + 456, &v8);
  return ((*(a1 + 464) - *(a1 + 456)) >> 3) - 1;
}

void sub_29A0A71C8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = sub_29A00C9BC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_29A0A72CC(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      *(a1 + 8) = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_29A0A72FC(a1, a2 - v2);
  }
}

void sub_29A0A72FC(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 1)
  {
    a1[1] = &v5[2 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_29A00C9A4();
    }

    v9 = v7 >> 1;
    v10 = v4 - v6;
    if (v10 > v8)
    {
      v8 = v10;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      v13 = sub_29A010BBC(a1, v12);
      v12 = v14;
      v6 = *a1;
      v7 = a1[1] - *a1;
    }

    else
    {
      v13 = 0;
    }

    v15 = &v13[2 * v9];
    v16 = &v13[2 * v12];
    v17 = &v15[2 * a2];
    v18 = &v15[-2 * (v7 >> 1)];
    memcpy(v18, v6, v7);
    v19 = *a1;
    *a1 = v18;
    a1[1] = v17;
    a1[2] = v16;
    if (v19)
    {

      operator delete(v19);
    }
  }
}

void sub_29A0A73EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A0A73EC(a1, *a2);
    sub_29A0A73EC(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t **sub_29A0A7450(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x40uLL);
    v11[8] = **a4;
    *(v11 + 6) = 0;
    *(v11 + 7) = 0;
    *(v11 + 5) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

double sub_29A0A7518(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  sub_29A0A8D14(a1, a2, a3, a4);
  *v4 = &unk_2A203EA80;
  *&result = 0x400000000;
  *(v4 + 28) = 0x400000000;
  return result;
}

void sub_29A0A755C(void *a1)
{
  v1 = sub_29A0A8DBC(a1);

  operator delete(v1);
}

void sub_29A0A7584(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 7) - *(v2 + 6);
  v4 = *(v2 + 10) - *(v2 + 9);
  v5 = *(v2 + 16) - *(v2 + 15);
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v13 = 0;
  v9 = *(v2 + 3);
  v10 = (*(v2 + 4) - v9) >> 2;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  v11 = *(v2 + 3);
  v12 = (*(v2 + 4) - v11) >> 2;
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  sub_29A0A766C((a1 + 120), (v3 >> 2), &v13);
  sub_29A0A766C((a1 + 144), (v4 >> 2), &v13);
  sub_29A0A766C((a1 + 192), (v5 >> 2), &v13);
  sub_29A0A766C((a1 + 168), v6, &v13);
  sub_29A0A766C((a1 + 216), v7, &v13);
  sub_29A0A766C((a1 + 240), v8, &v13);
}

void sub_29A0A766C(void *a1, unint64_t a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_29A0A8ACC(a1, a2 - v3, a3);
  }
}

void *sub_29A0A769C(void *a1)
{
  v2 = a1[2];
  if (v2[4] == v2[3])
  {
    sub_29A0A76F8(a1);
    v2 = a1[2];
  }

  sub_29A0A171C(v2 + 6, 4 * *v2);

  return sub_29A0A7768(a1);
}

void sub_29A0A76F8(uint64_t a1)
{
  sub_29A0A171C((*(a1 + 16) + 24), 2 * **(a1 + 16));
  v2 = *(a1 + 16);
  if (*v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (*(v2 + 3) + 4);
    do
    {
      *(v5 - 1) = 4;
      *v5 = v3;
      ++v4;
      v3 += 4;
      v5 += 2;
    }

    while (v4 < *v2);
  }
}

void *sub_29A0A7768(void *result)
{
  v1 = result[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 48);
    v6 = *(v1 + 72);
    v7 = result[11];
    v8 = result[15];
    do
    {
      v9 = *(v4 + 8 * v3);
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = (8 * v3) | 4;
        v12 = *(v4 + v11);
        v13 = v5 + 4 * v12;
        v14 = v6 + 4 * v12;
        v15 = v8 + 4 * *(v7 + v11);
        do
        {
          v16 = *(v15 + 4 * v10);
          if (v16 != -1)
          {
            if (v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v9;
            }

            v18 = *(result[21] + 4 * v3);
            v19 = v17 - 1;
            v20 = result[27];
            v21 = *(v20 + 4 * *(v14 + 4 * (v17 - 1)));
            v22 = *(result[30] + 4 * *(v13 + 4 * v10));
            v23 = *(v20 + 4 * *(v14 + 4 * v10));
            v24 = (*(result[2] + 48) + 4 * *(*(result[2] + 24) + 4 * ((2 * v16) | 1)));
            if (v9 == 4)
            {
              v25 = v17 - 2;
              if (!v19)
              {
                v25 = 3;
              }

              v24[v10] = v22;
              if (v25)
              {
                v26 = v25 - 1;
              }

              else
              {
                v26 = 3;
              }

              v24[v26] = v23;
              v24[v25] = v18;
              v27 = &v24[v19];
            }

            else
            {
              *v24 = v22;
              v24[1] = v23;
              v27 = v24 + 3;
              v24[2] = v18;
            }

            *v27 = v21;
          }

          ++v10;
        }

        while (v9 != v10);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0A78A0(void *a1)
{
  v2 = a1[2];
  if (v2[4] == v2[3])
  {
    sub_29A0A76F8(a1);
    v2 = a1[2];
  }

  sub_29A0A171C(v2 + 9, 4 * *v2);

  return sub_29A0A78FC(a1);
}

void *sub_29A0A78FC(void *result)
{
  v1 = result[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 48);
    v6 = *(v1 + 72);
    v7 = result[11];
    v8 = result[15];
    v9 = result[13];
    v10 = result[18];
    do
    {
      v11 = *(v4 + 8 * v3);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = (8 * v3) | 4;
        v14 = *(v4 + v13);
        v15 = v5 + 4 * v14;
        v16 = v6 + 4 * v14;
        v17 = v8 + 4 * *(v7 + v13);
        v18 = v10 + 4 * *(v9 + v13);
        do
        {
          v19 = *(v17 + 4 * v12);
          if (v19 != -1)
          {
            if (v12)
            {
              v20 = v12;
            }

            else
            {
              v20 = v11;
            }

            v21 = v20 - 1;
            v22 = *(v16 + 4 * (v20 - 1));
            v23 = *(v1 + 120);
            v24 = (v23 + 8 * v22);
            v25 = *(v16 + 4 * v12);
            v26 = *(v15 + 4 * v12);
            v27 = (v23 + 8 * v25);
            v29 = *v24 == v24[1] || *v24 != v26;
            v31 = *v27 != v27[1] && *v27 != v26;
            v32 = result[24];
            v33 = *(v32 + 8 * v22 + 4 * v29);
            v34 = *(v32 + 8 * v25 + 4 * v31);
            v35 = *(v18 + 4 * v21);
            v36 = *(v18 + 4 * v12);
            v37 = (*(result[2] + 72) + 4 * *(*(result[2] + 24) + 4 * ((2 * v19) | 1)));
            if (v11 == 4)
            {
              v38 = v20 - 2;
              if (!v21)
              {
                v38 = 3;
              }

              v37[v12] = v34;
              if (v38)
              {
                v39 = v38 - 1;
              }

              else
              {
                v39 = 3;
              }

              v37[v39] = v36;
              v37[v38] = v35;
              v40 = &v37[v21];
            }

            else
            {
              *v37 = v34;
              v37[1] = v36;
              v40 = v37 + 3;
              v37[2] = v35;
            }

            *v40 = v33;
          }

          ++v12;
        }

        while (v11 != v12);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0A7A80(void *a1)
{
  sub_29A0A171C((a1[2] + 120), 2 * *(a1[2] + 4));
  sub_29A0A7AD0(a1);

  return sub_29A0A7B70(a1);
}

void *sub_29A0A7AD0(void *result)
{
  v1 = result[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 72);
    v6 = result[13];
    v7 = result[18];
    do
    {
      v8 = *(v4 + 8 * v3);
      if (v8 >= 1)
      {
        v9 = (8 * v3) | 4;
        v10 = (v5 + 4 * *(v4 + v9));
        v11 = (v7 + 4 * *(v6 + v9));
        do
        {
          v13 = *v11++;
          v12 = v13;
          if (v13 != -1)
          {
            v14 = (*(result[2] + 120) + 8 * v12);
            *v14 = *(result[21] + 4 * v3);
            v14[1] = *(result[27] + 4 * *v10);
          }

          ++v10;
          --v8;
        }

        while (v8);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0A7B70(void *result)
{
  v1 = result[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 120);
    v4 = result[24];
    do
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = *(v4 + 8 * v2 + 4 * v5);
        if (v8 != -1)
        {
          v9 = (*(result[2] + 120) + 8 * v8);
          *v9 = *(result[27] + 4 * v2);
          v9[1] = *(result[30] + 4 * *(v3 + 8 * v2 + 4 * v5));
        }

        v6 = 0;
        v5 = 1;
      }

      while ((v7 & 1) != 0);
      ++v2;
    }

    while (v2 < *(v1 + 4));
  }

  return result;
}

void sub_29A0A7BF4(void *a1)
{
  v2 = 2 * (((*(a1[1] + 176) - *(a1[1] + 168)) >> 2) + ((*(a1[1] + 56) - *(a1[1] + 48)) >> 2));
  sub_29A0A171C((a1[2] + 144), 2 * *(a1[2] + 4));
  sub_29A0A171C((a1[2] + 168), v2);
  sub_29A0A174C((a1[2] + 192), v2);
  *(a1[2] + 16) = *(a1[1] + 16);
  sub_29A0A7CD4(a1);
  sub_29A0A7E10(a1);
  v3 = a1[2];
  v4 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v5 = *v4;
  v6 = v4[1];
  sub_29A0A171C((v3 + 168), v6 + v5);
  v7 = (a1[2] + 192);

  sub_29A0A174C(v7, v6 + v5);
}

void *sub_29A0A7CD4(void *result)
{
  v1 = result[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = result[11];
    v5 = result[15];
    v6 = result[13];
    v7 = result[18];
    do
    {
      v8 = *(v4 + 8 * v3);
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = (8 * v3) | 4;
        v11 = v5 + 4 * *(v4 + v10);
        v12 = v7 + 4 * *(v6 + v10);
        do
        {
          v13 = *(v12 + 4 * v9);
          if (v13 == -1)
          {
            ++v9;
          }

          else
          {
            v14 = result[2];
            v15 = *(v14 + 144);
            v16 = (v15 + 8 * v13);
            *v16 = 2;
            if (v13)
            {
              v17 = *(v16 - 1) + *(v16 - 2);
            }

            else
            {
              v17 = 0;
            }

            v18 = 2 * v13;
            v16[1] = v17;
            v19 = *(v14 + 16);
            if (v19 <= 2)
            {
              v19 = 2;
            }

            *(v14 + 16) = v19;
            v20 = *(v15 + 4 * (v18 | 1));
            v21 = (*(v14 + 168) + 4 * v20);
            v22 = (*(v14 + 192) + 2 * v20);
            v23 = v9 + 1;
            if (v9 + 1 >= v8)
            {
              v24 = 0;
            }

            else
            {
              v24 = v9 + 1;
            }

            v25 = *(v11 + 4 * v9);
            if (v25 == -1)
            {
              v27 = 0;
            }

            else
            {
              *v21 = v25;
              if (v8 == 4)
              {
                v26 = v24;
              }

              else
              {
                v26 = 1;
              }

              *v22 = v26;
              v27 = 1;
            }

            v28 = *(v11 + 4 * v24);
            if (v28 != -1)
            {
              v21[v27] = v28;
              v29 = v24 & 3 ^ 2;
              if (v8 != 4)
              {
                v29 = 2;
              }

              v22[v27] = v29;
              LODWORD(v27) = v27 + 1;
            }

            *v16 = v27;
            v9 = v23;
          }
        }

        while (v9 != v8);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0A7E10(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[24];
    do
    {
      v5 = (v4 + 8 * v3);
      if (*v5 != -1 || v5[1] != -1)
      {
        v6 = 0;
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 168) + 4 * v8;
        v10 = *(v1 + 192) + 2 * v8;
        v11 = (*(v1 + 120) + 8 * v3);
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = v5[v6];
          if (v14 != -1)
          {
            v15 = result[2];
            v16 = *(v15 + 144);
            v17 = (v16 + 8 * v14);
            *v17 = v7;
            if (v14)
            {
              v18 = *(v17 - 1) + *(v17 - 2);
            }

            else
            {
              v18 = 0;
            }

            v17[1] = v18;
            v19 = *(v15 + 16);
            if (v19 <= v7)
            {
              v19 = v7;
            }

            *(v15 + 16) = v19;
            if (v7 < 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = 0;
              v21 = *(v16 + 4 * ((2 * v14) | 1));
              v22 = *(v15 + 168) + 4 * v21;
              v23 = *(v15 + 192) + 2 * v21;
              v24 = *(v1 + 24);
              v25 = result[11];
              v26 = result[15];
              v27 = v7;
              v28 = v9;
              v29 = v10;
              do
              {
                v31 = *v28++;
                v30 = v31;
                LODWORD(v31) = *v29++;
                v32 = v31;
                v33 = (2 * v30) | 1;
                v34 = v6;
                if (*v11 != v11[1])
                {
                  v34 = *(*(v1 + 48) + 4 * *(v24 + 4 * v33) + 4 * v32) != v11[v6];
                }

                v35 = 2 * v30;
                v36 = v26 + 4 * *(v25 + 4 * v33);
                if (v34 + v32 == *(v25 + 4 * v35))
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v34 + v32;
                }

                v38 = *(v36 + 4 * v37);
                if (v38 != -1)
                {
                  v39 = *(v24 + 4 * v35);
                  *(v22 + 4 * v20) = v38;
                  if (v34)
                  {
                    v40 = 3;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (v39 != 4)
                  {
                    LOWORD(v32) = v40;
                  }

                  *(v23 + 2 * v20++) = v32;
                }

                --v27;
              }

              while (v27);
            }

            *v17 = v20;
          }

          v12 = 0;
          v6 = 1;
        }

        while ((v13 & 1) != 0);
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void sub_29A0A7FE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (((v2[22] - v2[21]) >> 1) & 0xFFFFFFFE) + ((v2[7] - v2[6]) >> 2) + ((v2[37] - v2[36]) >> 2);
  sub_29A0A171C((*(a1 + 16) + 264), 2 * *(*(a1 + 16) + 8));
  sub_29A0A171C((*(a1 + 16) + 288), v3);
  sub_29A0A174C((*(a1 + 16) + 312), v3);
  if (*(a1 + 84))
  {
    sub_29A0A81E8(a1);
    sub_29A0A82C4(a1);
    sub_29A0A80F4(a1);
  }

  else
  {
    sub_29A0A80F4(a1);
    sub_29A0A81E8(a1);
    sub_29A0A82C4(a1);
  }

  v4 = *(a1 + 16);
  v5 = (*(v4 + 264) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  sub_29A0A171C((v4 + 288), v7 + v6);
  v8 = (*(a1 + 16) + 312);

  sub_29A0A174C(v8, v7 + v6);
}

void *sub_29A0A80F4(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = result[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = result[11];
          v20 = result[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              v25 = *(v19 + 8 * v21);
              *(v17 + 4 * v14) = v24;
              if (v25 != 4)
              {
                v23 = 0;
              }

              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0A81E8(void *result)
{
  v1 = result[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = result[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = (result[11] + 8 * v3);
        v7 = result[15];
        v8 = *v6;
        v9 = v6[1];
        v10 = result[2];
        v11 = (v10[33] + 8 * v5);
        *v11 = v8;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
          v15 = v7 + 4 * v9;
          v16 = v10[36] + 4 * v12;
          v17 = v10[39] + 2 * v12;
          do
          {
            v18 = *(v15 + 4 * v13);
            if (v18 != -1)
            {
              *(v16 + 4 * v14) = v18;
              v19 = v13 & 3 ^ 2;
              if (v8 != 4)
              {
                v19 = 2;
              }

              *(v17 + 2 * v14++) = v19;
            }

            ++v13;
          }

          while (v8 != v13);
        }

        *v11 = v14;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0A82C4(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = result[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = result[11];
          v20 = result[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v25 = *(v19 + 8 * v21);
            if (v22 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              v26 = v23 + 1;
            }

            v27 = *(v24 + 4 * v26);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              if (v25 == 4)
              {
                v28 = v23;
              }

              else
              {
                v28 = 3;
              }

              *(v18 + 2 * v14++) = v28;
            }

            v29 = *(v24 + 4 * v23);
            if (v29 != -1)
            {
              *(v17 + 4 * v14) = v29;
              if (v25 == 4)
              {
                v30 = v26;
              }

              else
              {
                v30 = 1;
              }

              *(v18 + 2 * v14++) = v30;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void sub_29A0A83F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ((*(v2 + 56) - *(v2 + 48)) >> 2) + 2 * *(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2) + ((*(v2 + 368) - *(v2 + 360)) >> 2);
  sub_29A0A171C((*(a1 + 16) + 336), 2 * *(*(a1 + 16) + 8));
  sub_29A0A171C((*(a1 + 16) + 360), v3);
  sub_29A0A174C((*(a1 + 16) + 384), v3);
  if (*(a1 + 84))
  {
    sub_29A0A8600(a1);
    sub_29A0A86F8(a1);
    sub_29A0A8508(a1);
  }

  else
  {
    sub_29A0A8508(a1);
    sub_29A0A8600(a1);
    sub_29A0A86F8(a1);
  }

  v4 = *(a1 + 16);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  sub_29A0A171C((v4 + 360), v7 + v6);
  v8 = (*(a1 + 16) + 384);

  sub_29A0A174C(v8, v7 + v6);
}

void *sub_29A0A8508(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = result[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = result[24];
          do
          {
            v24 = *v17++;
            v23 = v24;
            LODWORD(v24) = *v18++;
            v25 = *(v22 + 8 * v23 + 4 * v24);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0A8600(void *result)
{
  v1 = result[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = result[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(*(v1 + 24) + 8 * v3);
        v7 = *(result[13] + 8 * v3 + 4);
        v8 = result[18];
        v9 = result[2];
        v10 = *(v9 + 336);
        v11 = (v10 + 8 * v5);
        *v11 = v6;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        v13 = *(v9 + 20);
        if (v13 <= v6)
        {
          v13 = v6;
        }

        *(v9 + 20) = v13;
        if (v6 < 1)
        {
          v15 = 0;
        }

        else
        {
          v14 = 0;
          v15 = 0;
          v16 = *(v10 + 4 * ((2 * v5) | 1));
          v17 = *(v9 + 360) + 4 * v16;
          v18 = *(v9 + 384) + 2 * v16;
          v19 = v8 + 4 * v7 - 4;
          do
          {
            if (v14)
            {
              v20 = v14;
            }

            else
            {
              v20 = v6;
            }

            v21 = *(v19 + 4 * v20);
            if (v21 != -1)
            {
              *(v17 + 4 * v15) = v21;
              *(v18 + 2 * v15++) = 0;
            }

            ++v14;
          }

          while (v6 != v14);
        }

        *v11 = v15;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0A86F8(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = result[24];
        v12 = result[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v17 = (v11 + 8 * v3);
        v18 = 2 * v5;
        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        v19 = *(v14 + 4 * (v18 | 1));
        v20 = (*(v12 + 360) + 4 * v19);
        v21 = (*(v12 + 384) + 2 * v19);
        if (*v17 == -1)
        {
          v22 = 0;
        }

        else
        {
          *v20 = *v17;
          *v21 = 0;
          v22 = 1;
        }

        v23 = v17[1];
        if (v23 != -1)
        {
          v20[v22] = v23;
          v21[v22++] = 0;
        }

        if (v7 >= 1)
        {
          v24 = 0;
          v25 = v6 + 4 * v8;
          v26 = v9 + 2 * v8;
          v27 = result[13];
          v28 = result[18];
          v29 = (v10 + 8 * v3);
          do
          {
            v30 = *(v26 + 2 * v24);
            v31 = (2 * *(v25 + 4 * v24)) | 1;
            v32 = *(v28 + 4 * *(v27 + 4 * v31) + 4 * v30);
            if (v32 != -1)
            {
              v20[v22] = v32;
              v21[v22++] = 1;
              if (!v24 && v22 == 3)
              {
                if (*v29 == v29[1])
                {
                  v33 = v20[1];
                  v34 = v21[1];
                }

                else
                {
                  v35 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * v30);
                  v33 = v20[1];
                  v34 = v21[1];
                  if (v35 == *v29)
                  {
                    v36 = *v20;
                    *v20 = v33;
                    v37 = *v21;
                    *v21 = v34;
                    v34 = v37;
                    v33 = v36;
                  }
                }

                v20[1] = v20[2];
                v20[2] = v33;
                v21[1] = v21[2];
                v21[2] = v34;
                v22 = 3;
              }
            }

            ++v24;
          }

          while (v7 != v24);
        }

        *v15 = v22;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0A88C4(void *result)
{
  v1 = result[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = (2 * (v2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v4 = (result[15] + 4 * *(result[11] + 4 * v3));
      v5 = (result[18] + 4 * *(result[13] + 4 * v3));
      v6 = *(v1 + 3);
      v7 = *(v6 + 8 * v2);
      v8 = result[51];
      if (*(v8 + v2))
      {
        break;
      }

      if (v7 >= 1)
      {
        v9 = 0;
        v10 = *(v1 + 6) + 4 * *(v6 + 4 * v3);
        v11 = result[57];
        v12 = 1;
        do
        {
          while ((*(v11 + *(v10 + 4 * v9)) & 1) != 0)
          {
            v12 = 0;
            v4[v9] = 1;
            v5[v9] = 1;
            if (v9)
            {
              v13 = v9;
            }

            else
            {
              v13 = v7;
            }

            v5[v13 - 1] = 1;
            if (v7 - 1 == v9++)
            {
              goto LABEL_22;
            }
          }

          ++v9;
        }

        while (v7 != v9);
        if (v12)
        {
          goto LABEL_19;
        }

LABEL_22:
        *(result[21] + 4 * v2) = 1;
        v16 = (*(v1 + 9) + 4 * *(v6 + 4 * v3));
        v17 = *(v6 + 8 * v2);
        if (v17 == 3)
        {
          v23 = *(result[54] + v16[1]) & 0xE | (*(result[54] + *v16) >> 1) & 0xF | (2 * *(result[54] + v16[2])) & 0xC;
          v22 = *(v8 + v2);
        }

        else
        {
          if (v17 != 4)
          {
            v24 = *(v8 + v2) & 0xE1;
            *(v8 + v2) &= 0xE1u;
            if (v17 >= 1)
            {
              do
              {
                v25 = *v16++;
                v24 |= *(result[54] + v25) & 0x1E;
                *(v8 + v2) = v24;
                --v17;
              }

              while (v17);
            }

            goto LABEL_19;
          }

          v18 = result[54];
          v19 = *(v18 + *v16);
          v20 = *(v18 + v16[1]) & 0xE;
          v21 = (2 * *(v18 + v16[2])) & 0xC;
          LOBYTE(v18) = 4 * *(v18 + v16[3]);
          v22 = *(v8 + v2);
          v23 = v20 | (v19 >> 1) & 0xF | v21 | v18 & 8;
        }

        v15 = v22 & 0xE1 | (2 * (v23 & 0xF));
        goto LABEL_18;
      }

LABEL_19:
      ++v2;
      v1 = result[1];
      if (v2 >= *v1)
      {
        return result;
      }
    }

    if (v7 >= 1)
    {
      do
      {
        *v4++ = 2;
        *v5++ = 2;
        --v7;
      }

      while (v7);
    }

    *(result[21] + 4 * v2) = 2;
    v15 = *(v8 + v2) & 0xE1;
LABEL_18:
    *(v8 + v2) = v15;
    goto LABEL_19;
  }

  return result;
}

void sub_29A0A8ACC(uint64_t a1, unint64_t a2, int *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v14 = 0;
      v15 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v15 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v17 = vdupq_n_s64(v15);
      v18 = v7 + 4 * a2;
      v19 = *a3;
      v20 = v16 + 4;
      v21 = (v7 + 8);
      do
      {
        v22 = vdupq_n_s64(v14);
        v23 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_29B430070)));
        if (vuzp1_s16(v23, *v17.i8).u8[0])
        {
          *(v21 - 2) = v19;
        }

        if (vuzp1_s16(v23, *&v17).i8[2])
        {
          *(v21 - 1) = v19;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_29B433E10)))).i32[1])
        {
          *v21 = v19;
          v21[1] = v19;
        }

        v14 += 4;
        v21 += 4;
      }

      while (v20 != v14);
    }

    else
    {
      v18 = *(a1 + 8);
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = sub_29A00E7A8(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v24 = 0;
    v25 = &v13[4 * v10];
    v26 = &v25[4 * a2];
    v27 = *a3;
    v28 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    v30 = v28 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v31 = v25 + 8;
    do
    {
      v32 = vdupq_n_s64(v24);
      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_29B430070)));
      if (vuzp1_s16(v33, *v29.i8).u8[0])
      {
        *(v31 - 2) = v27;
      }

      if (vuzp1_s16(v33, *&v29).i8[2])
      {
        *(v31 - 1) = v27;
      }

      if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_29B433E10)))).i32[1])
      {
        *v31 = v27;
        v31[1] = v27;
      }

      v24 += 4;
      v31 += 4;
    }

    while (v30 != v24);
    v34 = &v13[4 * v12];
    v35 = *(a1 + 8) - *a1;
    v36 = &v25[-v35];
    memcpy(&v25[-v35], *a1, v35);
    v37 = *a1;
    *a1 = v36;
    *(a1 + 8) = v26;
    *(a1 + 16) = v34;
    if (v37)
    {

      operator delete(v37);
    }
  }
}

double sub_29A0A8D14(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a1 = &unk_2A203EAF8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = *a4;
  *(a1 + 32) = -1;
  *(a1 + 36) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a3 + 12) = *(a2 + 12) + 1;
  return result;
}

void *sub_29A0A8DBC(void *a1)
{
  *a1 = &unk_2A203EAF8;
  v4 = a1 + 60;
  v2 = a1[60];
  v3 = v4[1];
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        v6 = sub_29A0A35B4(v2[v5]);
        operator delete(v6);
        v2 = a1[60];
        v3 = a1[61];
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    a1[61] = v2;
    operator delete(v2);
  }

  v7 = a1[57];
  if (v7)
  {
    a1[58] = v7;
    operator delete(v7);
  }

  v8 = a1[54];
  if (v8)
  {
    a1[55] = v8;
    operator delete(v8);
  }

  v9 = a1[51];
  if (v9)
  {
    a1[52] = v9;
    operator delete(v9);
  }

  v10 = a1[48];
  if (v10)
  {
    a1[49] = v10;
    operator delete(v10);
  }

  v11 = a1[45];
  if (v11)
  {
    a1[46] = v11;
    operator delete(v11);
  }

  v12 = a1[42];
  if (v12)
  {
    a1[43] = v12;
    operator delete(v12);
  }

  v13 = a1[39];
  if (v13)
  {
    a1[40] = v13;
    operator delete(v13);
  }

  v14 = a1[36];
  if (v14)
  {
    a1[37] = v14;
    operator delete(v14);
  }

  v15 = a1[33];
  if (v15)
  {
    a1[34] = v15;
    operator delete(v15);
  }

  v16 = a1[30];
  if (v16)
  {
    a1[31] = v16;
    operator delete(v16);
  }

  v17 = a1[27];
  if (v17)
  {
    a1[28] = v17;
    operator delete(v17);
  }

  v18 = a1[24];
  if (v18)
  {
    a1[25] = v18;
    operator delete(v18);
  }

  v19 = a1[21];
  if (v19)
  {
    a1[22] = v19;
    operator delete(v19);
  }

  v20 = a1[18];
  if (v20)
  {
    a1[19] = v20;
    operator delete(v20);
  }

  v21 = a1[15];
  if (v21)
  {
    a1[16] = v21;
    operator delete(v21);
  }

  return a1;
}

void sub_29A0A8F4C(void *a1)
{
  v2 = a1[1];
  v3 = *v2;
  v4 = a1[51];
  v5 = a1[52] - v4;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      a1[52] = v4 + v3;
    }
  }

  else
  {
    sub_29A0AB2A4((a1 + 51), v3 - v5);
    v2 = a1[1];
  }

  v6 = v2[1];
  v7 = a1[54];
  v8 = a1[55] - v7;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      a1[55] = v7 + v6;
    }
  }

  else
  {
    sub_29A0AB2A4((a1 + 54), v6 - v8);
    v2 = a1[1];
  }

  v9 = v2[2];
  v10 = a1[57];
  v11 = a1[58] - v10;
  if (v9 <= v11)
  {
    if (v9 < v11)
    {
      a1[58] = v10 + v9;
    }
  }

  else
  {

    sub_29A0AB2A4((a1 + 57), v9 - v11);
  }
}

void sub_29A0A9010(uint64_t a1, char a2)
{
  *(a1 + 36) = (a2 & 1) == 0;
  *(a1 + 37) = (a2 & 2) != 0;
  v4 = (*(*(a1 + 8) + 464) - *(*(a1 + 8) + 456)) >> 3;
  sub_29A0A914C(a1);
  v5 = *(a1 + 16);
  v6 = *(a1 + 52);
  v7 = *(a1 + 48) + *(a1 + 44);
  *v5 = *(a1 + 40);
  v5[1] = v7;
  v5[2] = *(a1 + 56) + v6 + *(a1 + 60);
  sub_29A0A91B4(a1, v8, v9);
  sub_29A0AA798(a1);
  sub_29A0AA800(a1);
  sub_29A0AA894(a1);
  if ((a2 & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  v15[0] = v10;
  if (v4 < 1)
  {
    sub_29A0A9264(a1, v15);
    sub_29A0AAB48(a1, v13);
    sub_29A0AAD88(a1, v14);

    sub_29A0AAE78(a1);
  }

  else
  {
    v15[0] = v10 | 0x10;
    sub_29A0A9264(a1, v15);
    sub_29A0AAB48(a1, v11);
    sub_29A0AAD88(a1, v12);
    sub_29A0AAE78(a1);

    sub_29A0A9404(a1);
  }
}

uint64_t sub_29A0A914C(uint64_t a1)
{
  (*(*a1 + 16))(a1);
  if ((*(a1 + 36) & 1) == 0)
  {
    sub_29A0A94F0(a1);
  }

  return sub_29A0A9588(a1);
}

uint64_t sub_29A0A91B4(void *a1, uint8x8_t a2, uint8x8_t a3)
{
  v7[1] = *MEMORY[0x29EDCA608];
  a3.i32[0] = HIDWORD(v7[0]);
  a2.i32[0] = v7[0];
  v4 = vorr_s8((vmovl_u8(a2).u64[0] & 0xFFE0FFE0FFE0FFE0), 0x18001000080000);
  v5 = vuzp1_s8(v4, v4);
  v5.i32[1] = vuzp1_s8(vorr_s8((vmovl_u8(a3).u64[0] & 0xFFE0FFE0FFE0FFE0), 0x19001100090001), v5).u32[0];
  v7[0] = v5;
  sub_29A0A9F38(a1, v7);
  sub_29A0A9FB8(a1, v7);
  return sub_29A0AA044(a1, v7);
}

uint64_t sub_29A0A9264(uint64_t result, char *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    result = (*(*result + 32))(result);
    v4 = *a2;
    if ((*a2 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = (*(*v3 + 40))(v3);
  v4 = *a2;
  if ((*a2 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = (*(*v3 + 48))(v3);
  v4 = *a2;
  if ((*a2 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = (*(*v3 + 56))(v3);
  v4 = *a2;
  if ((*a2 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_26:
  result = (*(*v3 + 64))(v3);
  if ((*a2 & 0x20) != 0)
  {
LABEL_7:
    result = (*(*v3 + 72))(v3);
  }

LABEL_8:
  v5 = *(v3 + 28);
  v6 = *(*(v3 + 8) + 20);
  if (v6 <= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = *(*(v3 + 8) + 20);
  }

  if (v6 <= 4)
  {
    v6 = 4;
  }

  v8 = v5 == 0;
  if (v5)
  {
    v9 = 2 * *(*(v3 + 8) + 16);
  }

  else
  {
    v9 = *(*(v3 + 8) + 16);
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = v9 + 2;
  if (v10 > v11)
  {
    v11 = v10;
  }

  *(*(v3 + 16) + 20) = v11;
  return result;
}

void sub_29A0A9404(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 464) - *(*(a1 + 8) + 456);
  if ((v1 >> 3) >= 1)
  {
    v3 = 0;
    v4 = (v1 >> 3) & 0x7FFFFFFF;
    do
    {
      v5 = *(*(*(a1 + 8) + 456) + 8 * v3);
      v6 = operator new(0xD8uLL);
      sub_29A0A1560(v6, *(a1 + 16));
      v9 = v6;
      v7 = operator new(0x40uLL);
      sub_29A0A3594(v7, a1, v5, v6);
      v8 = v7;
      sub_29A0A35E8(v7);
      sub_29A0A71C8(*(a1 + 16) + 456, &v9);
      sub_29A0A71C8(a1 + 480, &v8);
      ++v3;
    }

    while (v4 != v3);
  }
}

uint64_t sub_29A0A94F0(void *a1)
{
  v2 = a1[1];
  v3 = *(v2 + 8);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a1[57];
    do
    {
      if (*(v5 + v4))
      {
        *(a1[30] + 4 * v4) = 2;
        v3 = *(v2 + 8);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  sub_29A0AB174(a1);
  v6 = *(*a1 + 24);

  return v6(a1);
}

uint64_t sub_29A0A9588(uint64_t result)
{
  v1 = *(result + 36);
  *(result + 64) = 0;
  v2 = *(result + 120);
  v3 = *(result + 128) - v2;
  v4 = v3 >> 2;
  if (v1 == 1)
  {
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = vdupq_n_s64(((v3 >> 2) & 0x7FFFFFFF) - 1);
      v7 = xmmword_29B433E10;
      v8 = xmmword_29B430070;
      v9 = v2 + 2;
      v10 = vdupq_n_s64(4uLL);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v6, v8));
        if (vuzp1_s16(v11, *v6.i8).u8[0])
        {
          *(v9 - 2) = v5;
        }

        if (vuzp1_s16(v11, *&v6).i8[2])
        {
          *(v9 - 1) = v5 + 1;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
        {
          *v9 = v5 + 2;
          v9[1] = v5 + 3;
        }

        v5 += 4;
        v7 = vaddq_s64(v7, v10);
        v8 = vaddq_s64(v8, v10);
        v9 += 4;
      }

      while (((v4 + 3) & 0xFFFFFFFC) != v5);
    }

    *(result + 40) = v4;
    *(result + 68) = 0;
    v12 = *(result + 144);
    v13 = *(result + 152) - v12;
    v14 = v13 >> 2;
    if ((v13 >> 2) >= 1)
    {
      v15 = 0;
      v16 = vdupq_n_s64(((v13 >> 2) & 0x7FFFFFFF) - 1);
      v17 = xmmword_29B433E10;
      v18 = xmmword_29B430070;
      v19 = (v12 + 8);
      v20 = vdupq_n_s64(4uLL);
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v16, v18));
        if (vuzp1_s16(v21, *v16.i8).u8[0])
        {
          *(v19 - 2) = v15;
        }

        if (vuzp1_s16(v21, *&v16).i8[2])
        {
          *(v19 - 1) = v15 + 1;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
        {
          *v19 = v15 + 2;
          v19[1] = v15 + 3;
        }

        v15 += 4;
        v17 = vaddq_s64(v17, v20);
        v18 = vaddq_s64(v18, v20);
        v19 += 4;
      }

      while (((v14 + 3) & 0xFFFFFFFC) != v15);
    }

    *(result + 44) = v14;
    *(result + 72) = v14;
    v22 = *(result + 192);
    v23 = *(result + 200) - v22;
    v24 = v23 >> 2;
    if ((v23 >> 2) >= 1)
    {
      v25 = (v23 >> 2) & 0x7FFFFFFF;
      v26 = (v24 + 3) & 0xFFFFFFFC;
      v27 = vdupq_n_s64(v25 - 1);
      v28 = xmmword_29B433E10;
      v29 = xmmword_29B430070;
      v30 = (v22 + 8);
      v31 = vdupq_n_s64(4uLL);
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v27, v29));
        if (vuzp1_s16(v32, *v27.i8).u8[0])
        {
          *(v30 - 2) = v14;
        }

        if (vuzp1_s16(v32, *&v27).i8[2])
        {
          *(v30 - 1) = v14 + 1;
        }

        if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v28))).i32[1])
        {
          *v30 = v14 + 2;
          v30[1] = v14 + 3;
        }

        v28 = vaddq_s64(v28, v31);
        v29 = vaddq_s64(v29, v31);
        LODWORD(v14) = v14 + 4;
        v30 += 4;
        v26 -= 4;
      }

      while (v26);
    }

    *(result + 48) = v24;
    if (*(result + 37) == 1)
    {
      *(result + 76) = 0;
      v33 = *(result + 168);
      v34 = *(result + 176) - v33;
      v35 = v34 >> 2;
      if ((v34 >> 2) < 1)
      {
        v43 = 0;
      }

      else
      {
        v36 = 0;
        v37 = vdupq_n_s64(((v34 >> 2) & 0x7FFFFFFF) - 1);
        v38 = xmmword_29B433E10;
        v39 = xmmword_29B430070;
        v40 = (v33 + 8);
        v41 = vdupq_n_s64(4uLL);
        do
        {
          v42 = vmovn_s64(vcgeq_u64(v37, v39));
          if (vuzp1_s16(v42, *v37.i8).u8[0])
          {
            *(v40 - 2) = v36;
          }

          if (vuzp1_s16(v42, *&v37).i8[2])
          {
            *(v40 - 1) = v36 + 1;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38))).i32[1])
          {
            *v40 = v36 + 2;
            v40[1] = v36 + 3;
          }

          v36 += 4;
          v38 = vaddq_s64(v38, v41);
          v39 = vaddq_s64(v39, v41);
          v40 += 4;
        }

        while (((v35 + 3) & 0xFFFFFFFC) != v36);
        v43 = *(result + 76);
      }

      *(result + 52) = v35;
      v81 = v43 + v35;
      *(result + 80) = v81;
      v82 = *(result + 216);
      v83 = *(result + 224) - v82;
      v84 = v83 >> 2;
      if ((v83 >> 2) >= 1)
      {
        v85 = (v83 >> 2) & 0x7FFFFFFF;
        v86 = (v84 + 3) & 0xFFFFFFFC;
        v87 = vdupq_n_s64(v85 - 1);
        v88 = xmmword_29B433E10;
        v89 = xmmword_29B430070;
        v90 = (v82 + 8);
        v91 = vdupq_n_s64(4uLL);
        do
        {
          v92 = vmovn_s64(vcgeq_u64(v87, v89));
          if (vuzp1_s16(v92, *v87.i8).u8[0])
          {
            *(v90 - 2) = v81;
          }

          if (vuzp1_s16(v92, *&v87).i8[2])
          {
            *(v90 - 1) = v81 + 1;
          }

          if (vuzp1_s16(*&v87, vmovn_s64(vcgeq_u64(v87, *&v88))).i32[1])
          {
            *v90 = v81 + 2;
            v90[1] = v81 + 3;
          }

          v88 = vaddq_s64(v88, v91);
          v89 = vaddq_s64(v89, v91);
          v81 += 4;
          v90 += 4;
          v86 -= 4;
        }

        while (v86);
        v81 = *(result + 80);
      }

      *(result + 56) = v84;
      v93 = v81 + v84;
      *(result + 84) = v93;
      v94 = *(result + 240);
      v95 = *(result + 248) - v94;
      v96 = v95 >> 2;
      if ((v95 >> 2) >= 1)
      {
        v97 = (v95 >> 2) & 0x7FFFFFFF;
        v98 = (v96 + 3) & 0xFFFFFFFC;
        v99 = vdupq_n_s64(v97 - 1);
        v100 = xmmword_29B433E10;
        v101 = xmmword_29B430070;
        v102 = (v94 + 8);
        v103 = vdupq_n_s64(4uLL);
        do
        {
          v104 = vmovn_s64(vcgeq_u64(v99, v101));
          if (vuzp1_s16(v104, *v99.i8).u8[0])
          {
            *(v102 - 2) = v93;
          }

          if (vuzp1_s16(v104, *&v99).i8[2])
          {
            *(v102 - 1) = v93 + 1;
          }

          if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, *&v100))).i32[1])
          {
            *v102 = v93 + 2;
            v102[1] = v93 + 3;
          }

          v100 = vaddq_s64(v100, v103);
          v101 = vaddq_s64(v101, v103);
          v93 += 4;
          v102 += 4;
          v98 -= 4;
        }

        while (v98);
      }

      *(result + 60) = v96;
    }

    else
    {
      *(result + 84) = 0;
      v47 = *(result + 240);
      v48 = *(result + 248) - v47;
      v49 = v48 >> 2;
      if ((v48 >> 2) < 1)
      {
        v57 = 0;
      }

      else
      {
        v50 = 0;
        v51 = vdupq_n_s64(((v48 >> 2) & 0x7FFFFFFF) - 1);
        v52 = xmmword_29B433E10;
        v53 = xmmword_29B430070;
        v54 = (v47 + 8);
        v55 = vdupq_n_s64(4uLL);
        do
        {
          v56 = vmovn_s64(vcgeq_u64(v51, v53));
          if (vuzp1_s16(v56, *v51.i8).u8[0])
          {
            *(v54 - 2) = v50;
          }

          if (vuzp1_s16(v56, *&v51).i8[2])
          {
            *(v54 - 1) = v50 + 1;
          }

          if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, *&v52))).i32[1])
          {
            *v54 = v50 + 2;
            v54[1] = v50 + 3;
          }

          v50 += 4;
          v52 = vaddq_s64(v52, v55);
          v53 = vaddq_s64(v53, v55);
          v54 += 4;
        }

        while (((v49 + 3) & 0xFFFFFFFC) != v50);
        v57 = *(result + 84);
      }

      *(result + 60) = v49;
      v105 = v57 + v49;
      *(result + 76) = v105;
      v106 = *(result + 168);
      v107 = *(result + 176) - v106;
      v108 = v107 >> 2;
      if ((v107 >> 2) >= 1)
      {
        v109 = (v107 >> 2) & 0x7FFFFFFF;
        v110 = (v108 + 3) & 0xFFFFFFFC;
        v111 = vdupq_n_s64(v109 - 1);
        v112 = xmmword_29B433E10;
        v113 = xmmword_29B430070;
        v114 = (v106 + 8);
        v115 = vdupq_n_s64(4uLL);
        do
        {
          v116 = vmovn_s64(vcgeq_u64(v111, v113));
          if (vuzp1_s16(v116, *v111.i8).u8[0])
          {
            *(v114 - 2) = v105;
          }

          if (vuzp1_s16(v116, *&v111).i8[2])
          {
            *(v114 - 1) = v105 + 1;
          }

          if (vuzp1_s16(*&v111, vmovn_s64(vcgeq_u64(v111, *&v112))).i32[1])
          {
            *v114 = v105 + 2;
            v114[1] = v105 + 3;
          }

          v112 = vaddq_s64(v112, v115);
          v113 = vaddq_s64(v113, v115);
          v105 += 4;
          v114 += 4;
          v110 -= 4;
        }

        while (v110);
        v105 = *(result + 76);
      }

      *(result + 52) = v108;
      v117 = v105 + v108;
      *(result + 80) = v117;
      v118 = *(result + 216);
      v119 = *(result + 224) - v118;
      v120 = v119 >> 2;
      if ((v119 >> 2) >= 1)
      {
        v121 = (v119 >> 2) & 0x7FFFFFFF;
        v122 = (v120 + 3) & 0xFFFFFFFC;
        v123 = vdupq_n_s64(v121 - 1);
        v124 = xmmword_29B433E10;
        v125 = xmmword_29B430070;
        v126 = (v118 + 8);
        v127 = vdupq_n_s64(4uLL);
        do
        {
          v128 = vmovn_s64(vcgeq_u64(v123, v125));
          if (vuzp1_s16(v128, *v123.i8).u8[0])
          {
            *(v126 - 2) = v117;
          }

          if (vuzp1_s16(v128, *&v123).i8[2])
          {
            *(v126 - 1) = v117 + 1;
          }

          if (vuzp1_s16(*&v123, vmovn_s64(vcgeq_u64(v123, *&v124))).i32[1])
          {
            *v126 = v117 + 2;
            v126[1] = v117 + 3;
          }

          v124 = vaddq_s64(v124, v127);
          v125 = vaddq_s64(v125, v127);
          v117 += 4;
          v126 += 4;
          v122 -= 4;
        }

        while (v122);
      }

      *(result + 56) = v120;
    }
  }

  else
  {
    if (v4 < 1)
    {
      v46 = 0;
    }

    else
    {
      v44 = 0;
      v45 = (v3 >> 2) & 0x7FFFFFFF;
      do
      {
        if (*v2)
        {
          v46 = v44 + 1;
        }

        else
        {
          v46 = v44;
        }

        if (!*v2)
        {
          v44 = -1;
        }

        *v2++ = v44;
        v44 = v46;
        --v45;
      }

      while (v45);
    }

    *(result + 40) = v46;
    *(result + 68) = 0;
    v58 = *(result + 144);
    v59 = *(result + 152) - v58;
    if ((v59 >> 2) < 1)
    {
      v62 = 0;
    }

    else
    {
      v60 = 0;
      v61 = (v59 >> 2) & 0x7FFFFFFF;
      do
      {
        if (*v58)
        {
          v62 = v60 + 1;
        }

        else
        {
          v62 = v60;
        }

        if (!*v58)
        {
          v60 = -1;
        }

        *v58++ = v60;
        v60 = v62;
        --v61;
      }

      while (v61);
    }

    *(result + 44) = v62;
    *(result + 72) = v62;
    v63 = *(result + 192);
    v64 = *(result + 200) - v63;
    if ((v64 >> 2) < 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = 0;
      v66 = (v64 >> 2) & 0x7FFFFFFF;
      do
      {
        v67 = v65 + v62;
        if (*v63)
        {
          ++v65;
          v68 = v67;
        }

        else
        {
          v68 = -1;
        }

        *v63++ = v68;
        --v66;
      }

      while (v66);
    }

    *(result + 48) = v65;
    if (*(result + 37) == 1)
    {
      *(result + 76) = 0;
      v69 = *(result + 168);
      v70 = *(result + 176) - v69;
      if ((v70 >> 2) < 1)
      {
        v74 = 0;
        v71 = 0;
      }

      else
      {
        v71 = 0;
        v72 = (v70 >> 2) & 0x7FFFFFFF;
        do
        {
          if (*v69)
          {
            v73 = v71;
          }

          else
          {
            v73 = -1;
          }

          if (*v69)
          {
            ++v71;
          }

          *v69++ = v73;
          --v72;
        }

        while (v72);
        v74 = *(result + 76);
      }

      *(result + 52) = v71;
      v129 = v74 + v71;
      *(result + 80) = v129;
      v130 = *(result + 216);
      v131 = *(result + 224) - v130;
      if ((v131 >> 2) < 1)
      {
        v132 = 0;
      }

      else
      {
        v132 = 0;
        v133 = (v131 >> 2) & 0x7FFFFFFF;
        do
        {
          v134 = v132 + v129;
          if (*v130)
          {
            ++v132;
            v135 = v134;
          }

          else
          {
            v135 = -1;
          }

          *v130++ = v135;
          --v133;
        }

        while (v133);
        v129 = *(result + 80);
      }

      *(result + 56) = v132;
      v143 = v129 + v132;
      *(result + 84) = v143;
      v144 = *(result + 240);
      v145 = *(result + 248) - v144;
      if ((v145 >> 2) < 1)
      {
        v146 = 0;
      }

      else
      {
        v146 = 0;
        v147 = (v145 >> 2) & 0x7FFFFFFF;
        do
        {
          v148 = v146 + v143;
          if (*v144)
          {
            ++v146;
            v149 = v148;
          }

          else
          {
            v149 = -1;
          }

          *v144++ = v149;
          --v147;
        }

        while (v147);
      }

      *(result + 60) = v146;
    }

    else
    {
      *(result + 84) = 0;
      v75 = *(result + 240);
      v76 = *(result + 248) - v75;
      if ((v76 >> 2) < 1)
      {
        v80 = 0;
        v77 = 0;
      }

      else
      {
        v77 = 0;
        v78 = (v76 >> 2) & 0x7FFFFFFF;
        do
        {
          if (*v75)
          {
            v79 = v77;
          }

          else
          {
            v79 = -1;
          }

          if (*v75)
          {
            ++v77;
          }

          *v75++ = v79;
          --v78;
        }

        while (v78);
        v80 = *(result + 84);
      }

      *(result + 60) = v77;
      v136 = v80 + v77;
      *(result + 76) = v136;
      v137 = *(result + 168);
      v138 = *(result + 176) - v137;
      if ((v138 >> 2) < 1)
      {
        v139 = 0;
      }

      else
      {
        v139 = 0;
        v140 = (v138 >> 2) & 0x7FFFFFFF;
        do
        {
          v141 = v139 + v136;
          if (*v137)
          {
            ++v139;
            v142 = v141;
          }

          else
          {
            v142 = -1;
          }

          *v137++ = v142;
          --v140;
        }

        while (v140);
        v136 = *(result + 76);
      }

      *(result + 52) = v139;
      v150 = v136 + v139;
      *(result + 80) = v150;
      v151 = *(result + 216);
      v152 = *(result + 224) - v151;
      if ((v152 >> 2) < 1)
      {
        v153 = 0;
      }

      else
      {
        v153 = 0;
        v154 = (v152 >> 2) & 0x7FFFFFFF;
        do
        {
          v155 = v153 + v150;
          if (*v151)
          {
            ++v153;
            v156 = v155;
          }

          else
          {
            v156 = -1;
          }

          *v151++ = v156;
          --v154;
        }

        while (v154);
      }

      *(result + 56) = v153;
    }
  }

  return result;
}

uint64_t sub_29A0A9F38(uint64_t a1, _BYTE *a2)
{
  v4 = **(a1 + 16);
  v5 = *(a1 + 336);
  v6 = *(a1 + 344) - v5;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    sub_29A0A485C(a1 + 336, v8);
    v4 = **(a1 + 16);
  }

  else if (!v7)
  {
    *(a1 + 344) = v5 + v4;
  }

  sub_29A0A171C((a1 + 264), v4);

  return sub_29A0AA0FC(a1, a2);
}

uint64_t sub_29A0A9FB8(void *a1, _BYTE *a2)
{
  v4 = *(a1[2] + 4);
  v5 = a1[45];
  v6 = a1[46] - v5;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    sub_29A0A485C((a1 + 45), v8);
    v4 = *(a1[2] + 4);
  }

  else if (!v7)
  {
    a1[46] = v5 + v4;
  }

  sub_29A0A171C(a1 + 36, v4);
  sub_29A0AA2E4(a1, a2);

  return sub_29A0AA4CC(a1, a2);
}

uint64_t sub_29A0AA044(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(a1 + 16) + 8);
  v5 = *(a1 + 384);
  v6 = *(a1 + 392) - v5;
  if (*(a1 + 36) == 1)
  {
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v4 > v6)
    {
      v9 = a1 + 384;
      v10 = a2;
LABEL_6:
      sub_29A0A2E74(v9, v8, v10);
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v4 > v6)
    {
      v9 = a1 + 384;
      v10 = a2 + 4;
      goto LABEL_6;
    }
  }

  if (!v7)
  {
    *(a1 + 392) = v5 + v4;
  }

LABEL_9:
  sub_29A0A171C((a1 + 312), *(*(a1 + 16) + 8));
  sub_29A0AA5DC(a1, a2);
  sub_29A0AA678(a1, a2);

  return sub_29A0AA708(a1, a2);
}

uint64_t sub_29A0AA0FC(uint64_t result, _BYTE *a2)
{
  v2 = **(result + 8);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      LODWORD(v4) = *(result + 64);
      do
      {
        v5 = *(*(result + 88) + 8 * v3);
        if (v5 == 4)
        {
          *(*(result + 336) + v4) = *a2;
          v6 = v4 + 1;
          *(*(result + 336) + v6) = a2[1];
          v7 = v4 + 2;
          *(*(result + 336) + v7) = a2[2];
          v8 = v4 + 3;
          *(*(result + 336) + v8) = a2[3];
          v9 = *(result + 264);
          *(v9 + 4 * v4) = v3;
          *(v9 + 4 * v6) = v3;
          *(v9 + 4 * v7) = v3;
          *(v9 + 4 * v8) = v3;
          LODWORD(v4) = v4 + 4;
        }

        else if (v5 >= 1)
        {
          v10 = 0;
          v4 = v4;
          do
          {
            if (v5 <= 4)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            *(*(result + 336) + v4) = a2[v11];
            *(*(result + 264) + 4 * v4++) = v3;
            ++v10;
          }

          while (v5 != v10);
        }

        ++v3;
      }

      while (v3 < **(result + 8));
    }
  }

  else if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = (*(result + 88) + 8 * v12);
      v14 = *v13;
      v15 = (*(result + 120) + 4 * v13[1]);
      if ((*(*(result + 408) + v12) & 1) != 0 && v14 == 4)
      {
        *(*(result + 336) + *v15) = *a2;
        *(*(result + 336) + v15[1]) = a2[1];
        *(*(result + 336) + v15[2]) = a2[2];
        *(*(result + 336) + v15[3]) = a2[3];
        v21 = *(result + 264);
        *(v21 + 4 * *v15) = v12;
        *(v21 + 4 * v15[1]) = v12;
        *(v21 + 4 * v15[2]) = v12;
        *(v21 + 4 * v15[3]) = v12;
      }

      else if (v14 >= 1)
      {
        v17 = 0;
        v18 = &a2[4 * !(*(*(result + 408) + v12) & 1)];
        do
        {
          v19 = v15[v17];
          if (v19 != -1)
          {
            if (v14 <= 4)
            {
              v20 = v17;
            }

            else
            {
              v20 = 0;
            }

            *(*(result + 336) + v19) = v18[v20];
            *(*(result + 264) + 4 * v15[v17]) = v12;
          }

          ++v17;
        }

        while (v14 != v17);
      }

      ++v12;
    }

    while (v12 < **(result + 8));
  }

  return result;
}

uint64_t sub_29A0AA2E4(uint64_t result, _BYTE *a2)
{
  v2 = **(result + 8);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      LODWORD(v4) = *(result + 68);
      do
      {
        v5 = *(*(result + 104) + 8 * v3);
        if (v5 == 4)
        {
          *(*(result + 360) + v4) = *a2;
          v6 = v4 + 1;
          *(*(result + 360) + v6) = a2[1];
          v7 = v4 + 2;
          *(*(result + 360) + v7) = a2[2];
          v8 = v4 + 3;
          *(*(result + 360) + v8) = a2[3];
          v9 = *(result + 288);
          *(v9 + 4 * v4) = v3;
          *(v9 + 4 * v6) = v3;
          *(v9 + 4 * v7) = v3;
          *(v9 + 4 * v8) = v3;
          LODWORD(v4) = v4 + 4;
        }

        else if (v5 >= 1)
        {
          v10 = 0;
          v4 = v4;
          do
          {
            if (v5 <= 4)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            *(*(result + 360) + v4) = a2[v11];
            *(*(result + 288) + 4 * v4++) = v3;
            ++v10;
          }

          while (v5 != v10);
        }

        ++v3;
      }

      while (v3 < **(result + 8));
    }
  }

  else if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = (*(result + 104) + 8 * v12);
      v14 = *v13;
      v15 = (*(result + 144) + 4 * v13[1]);
      if ((*(*(result + 408) + v12) & 1) != 0 && v14 == 4)
      {
        *(*(result + 360) + *v15) = *a2;
        *(*(result + 360) + v15[1]) = a2[1];
        *(*(result + 360) + v15[2]) = a2[2];
        *(*(result + 360) + v15[3]) = a2[3];
        v21 = *(result + 288);
        *(v21 + 4 * *v15) = v12;
        *(v21 + 4 * v15[1]) = v12;
        *(v21 + 4 * v15[2]) = v12;
        *(v21 + 4 * v15[3]) = v12;
      }

      else if (v14 >= 1)
      {
        v17 = 0;
        v18 = &a2[4 * !(*(*(result + 408) + v12) & 1)];
        do
        {
          v19 = v15[v17];
          if (v19 != -1)
          {
            if (v14 <= 4)
            {
              v20 = v17;
            }

            else
            {
              v20 = 0;
            }

            *(*(result + 360) + v19) = v18[v20];
            *(*(result + 288) + 4 * v15[v17]) = v12;
          }

          ++v17;
        }

        while (v14 != v17);
      }

      ++v12;
    }

    while (v12 < **(result + 8));
  }

  return result;
}

uint64_t sub_29A0AA4CC(uint64_t result, _BYTE *a2)
{
  v2 = *(*(result + 8) + 4);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      v4 = *(result + 72);
      do
      {
        *(*(result + 360) + v4) = *a2;
        *(*(result + 360) + v4 + 1) = a2[1];
        v5 = (*(result + 288) + 4 * v4);
        *v5 = v3;
        v5[1] = v3++;
        v4 += 2;
      }

      while (v3 < *(*(result + 8) + 4));
    }
  }

  else if (v2 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = (*(result + 192) + 8 * v6);
      if (*(*(result + 432) + v6))
      {
        *(*(result + 360) + *v7) = *a2;
        *(*(result + 360) + v7[1]) = a2[1];
        v12 = *(result + 288);
        *(v12 + 4 * *v7) = v6;
        *(v12 + 4 * v7[1]) = v6;
      }

      else
      {
        v8 = 0;
        v9 = 1;
        do
        {
          v10 = v9;
          v11 = v7[v8];
          if (v11 != -1)
          {
            *(*(result + 360) + v11) = a2[v8 + 4];
            *(*(result + 288) + 4 * v7[v8]) = v6;
          }

          v9 = 0;
          v8 = 1;
        }

        while ((v10 & 1) != 0);
      }

      ++v6;
    }

    while (v6 < *(*(result + 8) + 4));
  }

  return result;
}

uint64_t sub_29A0AA5DC(uint64_t result, _BYTE *a2)
{
  if (*(result + 52))
  {
    v2 = *(result + 8);
    v3 = *v2;
    if (*(result + 36))
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = *(result + 312) + 4 * *(result + 76);
        do
        {
          *(v5 + 4 * v4) = v4;
          ++v4;
        }

        while (v4 < *v2);
      }
    }

    else if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v7 = *(*(result + 168) + 4 * i);
        if (v7 != -1)
        {
          if (*(*(result + 408) + i))
          {
            *(*(result + 384) + v7) = *a2;
            v2 = *(result + 8);
          }

          *(*(result + 312) + 4 * v7) = i;
          v3 = *v2;
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A0AA678(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 4);
  if (*(result + 36))
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(result + 312) + 4 * *(result + 80);
      do
      {
        *(v5 + 4 * v4) = v4;
        ++v4;
      }

      while (v4 < *(v2 + 4));
    }
  }

  else if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(result + 216) + 4 * v6);
      if (v7 != -1)
      {
        if (*(*(result + 432) + v6))
        {
          *(*(result + 384) + v7) = *a2;
          v2 = *(result + 8);
        }

        *(*(result + 312) + 4 * v7) = v6;
      }

      ++v6;
    }

    while (v6 < *(v2 + 4));
  }

  return result;
}

uint64_t sub_29A0AA708(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 8);
  if (*(result + 36))
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(result + 312) + 4 * *(result + 84);
      do
      {
        *(v5 + 4 * v4) = v4;
        ++v4;
      }

      while (v4 < *(v2 + 8));
    }
  }

  else if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(result + 240) + 4 * v6);
      if (v7 != -1)
      {
        if (*(*(result + 456) + v6))
        {
          *(*(result + 384) + v7) = *a2;
          v2 = *(result + 8);
        }

        *(*(result + 312) + 4 * v7) = v6;
      }

      ++v6;
    }

    while (v6 < *(v2 + 8));
  }

  return result;
}

uint64_t sub_29A0AA798(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 12);
  v4 = *v2;
  v5 = *(v2 + 13) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 13) = v3 + v4;
    }
  }

  else
  {
    sub_29A0A485C((v2 + 24), v4 - v5);
  }

  return sub_29A0AA928(a1);
}

uint64_t sub_29A0AA800(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 240);
  v4 = *(v2 + 4);
  v5 = *(v2 + 248) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 248) = v3 + v4;
    }
  }

  else
  {
    sub_29A0A485C(v2 + 240, v4 - v5);
  }

  v6 = *(a1 + 44);
  if (v6 >= 1)
  {
    v7 = *(a1 + 68);
    v8 = v7 + v6;
    do
    {
      *(*(*(a1 + 16) + 240) + v7++) = 0;
    }

    while (v7 < v8);
  }

  return sub_29A0AA968(a1);
}

uint64_t sub_29A0AA894(uint64_t a1)
{
  sub_29A0A72CC(*(a1 + 16) + 432, *(*(a1 + 16) + 8));
  sub_29A0AA9A8(a1);
  sub_29A0AAA54(a1);
  result = sub_29A0AAAF4(a1);
  if ((*(a1 + 36) & 1) == 0)
  {
    v3 = *(a1 + 16);
    if (*(v3 + 8) >= 1)
    {
      v4 = 0;
      do
      {
        if (*(*(a1 + 384) + v4))
        {
          *(*(v3 + 432) + 2 * v4) |= 0x800u;
          v3 = *(a1 + 16);
        }

        ++v4;
      }

      while (v4 < *(v3 + 8));
    }
  }

  return result;
}

uint64_t sub_29A0AA928(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 1)
  {
    v2 = *(result + 64);
    v3 = v1 + v2;
    do
    {
      *(*(*(result + 16) + 96) + v2) = *(*(*(result + 8) + 96) + *(*(result + 264) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return result;
}

uint64_t sub_29A0AA968(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 >= 1)
  {
    v2 = *(result + 72);
    v3 = v1 + v2;
    do
    {
      *(*(*(result + 16) + 240) + v2) = *(*(*(result + 8) + 240) + *(*(result + 288) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return result;
}

uint64_t sub_29A0AA9A8(uint64_t result)
{
  v1 = *(result + 52);
  if (v1)
  {
    v2 = *(result + 76);
    v3 = v2 + v1;
    if (*(*(result + 8) + 12) <= 0)
    {
      if (v1 >= 1)
      {
        do
        {
          *(*(*(result + 16) + 432) + 2 * v2) = 128;
          if (*(*(*(result + 8) + 24) + 8 * *(*(result + 312) + 4 * v2)) != *(result + 32))
          {
            *(*(*(result + 16) + 432) + 2 * v2) |= 2u;
          }

          ++v2;
        }

        while (v2 < v3);
      }
    }

    else if (v1 >= 1)
    {
      do
      {
        *(*(*(result + 16) + 432) + 2 * v2++) = 128;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void *sub_29A0AAA54(void *result)
{
  v1 = result[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(result[27] + 4 * v2);
      if (v4 != -1)
      {
        v5 = *(*(v1 + 240) + v2);
        v6 = v3 & 0x183A | v5 & 1 | (4 * ((v5 >> 1) & 1)) & 0xFFFFFFBF | (((v5 >> 3) & 1) << 6);
        v7 = v5 >> 2;
        v8 = (v5 >> 2) & 1;
        v9 = ((v5 << 29) >> 31) & (v5 << 15);
        if ((v5 & 0xC) != 0)
        {
          v10 = 512;
        }

        else
        {
          v10 = 128;
        }

        v3 = ((v6 | v9 | v10) & 0xDFFF | ((v7 & 1) << 13)) + (v8 << 14);
        *(*(result[2] + 432) + 2 * v4) = v3;
        v1 = result[1];
      }

      ++v2;
    }

    while (v2 < *(v1 + 4));
  }

  return result;
}

uint64_t sub_29A0AAAF4(uint64_t result)
{
  v1 = *(result + 60);
  if (v1 >= 1)
  {
    v2 = *(result + 84);
    v3 = v1 + v2;
    do
    {
      *(*(*(result + 16) + 432) + 2 * v2) = *(*(*(result + 8) + 432) + 2 * *(*(result + 312) + 4 * v2));
      *(*(*(result + 16) + 432) + 2 * v2++) &= ~0x1000u;
    }

    while (v2 < v3);
  }

  return result;
}

void sub_29A0AAB48(uint64_t a1, int16x4_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v27 = *(a1 + 24);
  v3 = v27;
  v4 = *(a1 + 16);
  v5 = v4[27];
  v4 += 27;
  v4[1] = v5;
  sub_29A0AB144(v4, *(v4 - 53), &OpenSubdiv::__aapl__::Sdc::Crease::SHARPNESS_SMOOTH, a2);
  v28 = &v30;
  v29 = 0x1000000000;
  __p = 0;
  if ((v3 & 0xFF0000) != 0 && (v6 = *(*(a1 + 8) + 20), v6 >= 0x11))
  {
    operator delete(0);
    v7 = operator new(4 * v6);
    __p = v7;
    v28 = v7;
    HIDWORD(v29) = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  if (v8 >= 1)
  {
    v9 = *(a1 + 72);
    v10 = v8 + v9;
    while (1)
    {
      v11 = *(a1 + 16);
      v12 = *(v11 + 216);
      v13 = *(v11 + 240);
      if ((*(v13 + v9) & 4) != 0)
      {
        *(v12 + 4 * v9) = 1092616192;
      }

      else if ((*(v13 + v9) & 8) != 0)
      {
        v14 = *(*(a1 + 288) + 4 * v9);
        v15 = *(a1 + 8);
        v16 = v15[27];
        v17 = *(v16 + 4 * v14);
        if (BYTE2(v27))
        {
          v18 = *(v15[15] + 8 * v14 + 4 * ((*(*(a1 + 360) + v9) >> 3) & 3));
          v19 = v15[42];
          v20 = *(v19 + 8 * v18);
          v21 = v28;
          if (v20 >= 1)
          {
            v22 = (v15[45] + 4 * *(v19 + 8 * v18 + 4));
            v23 = *(v19 + 8 * v18);
            v24 = v28;
            do
            {
              v25 = *v22++;
              *v24++ = *(v16 + 4 * v25);
              --v23;
            }

            while (v23);
          }

          v26 = sub_29A0A1200(&v27, v20, v21, v17);
          goto LABEL_14;
        }

        if (v17 <= 0.0)
        {
          goto LABEL_21;
        }

        v26 = 10.0;
        if (v17 >= 10.0)
        {
LABEL_14:
          *(v12 + 4 * v9) = v26;
          if (v26 > 0.0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v17 > 1.0)
          {
            v26 = v17 + -1.0;
            goto LABEL_14;
          }

LABEL_21:
          *(v12 + 4 * v9) = 0;
        }

        *(v13 + v9) &= ~8u;
      }

LABEL_23:
      if (++v9 >= v10)
      {
        v7 = __p;
        break;
      }
    }
  }

  operator delete(v7);
}

void sub_29A0AAD88(uint64_t a1, int16x4_t a2)
{
  v3 = *(a1 + 16);
  *(v3 + 416) = *(v3 + 408);
  sub_29A0AB144((v3 + 408), *(v3 + 8), &OpenSubdiv::__aapl__::Sdc::Crease::SHARPNESS_SMOOTH, a2);
  v4 = *(a1 + 60);
  if (v4 >= 1)
  {
    v5 = *(a1 + 84);
    v6 = v4 + v5;
    do
    {
      v7 = *(a1 + 16);
      v8 = *(v7 + 408);
      v9 = *(v7 + 432);
      v10 = *(v9 + 2 * v5);
      if ((v10 & 0x10) != 0)
      {
        *(v8 + 4 * v5) = 1092616192;
      }

      else if ((v10 & 0x20) != 0)
      {
        v11 = *(*(*(a1 + 8) + 408) + 4 * *(*(a1 + 312) + 4 * v5));
        if (v11 <= 0.0)
        {
          goto LABEL_12;
        }

        v12 = 10.0;
        if (v11 >= 10.0)
        {
LABEL_9:
          *(v8 + 4 * v5) = v12;
          if (v12 > 0.0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v11 > 1.0)
          {
            v12 = v11 + -1.0;
            goto LABEL_9;
          }

LABEL_12:
          *(v8 + 4 * v5) = 0;
        }

        *(v9 + 2 * v5) &= ~0x20u;
      }

LABEL_14:
      ++v5;
    }

    while (v5 < v6);
  }
}

uint64_t sub_29A0AAE78(uint64_t result)
{
  v1 = result;
  v44 = *(result + 24);
  v2 = *(result + 56);
  if (v2 >= 1)
  {
    v3 = *(result + 80);
    v4 = v2 + v3;
    while (1)
    {
      v5 = *(v1 + 16);
      v6 = *(v5 + 432);
      v7 = *(v6 + 2 * v3);
      if ((v7 & 0x40) != 0)
      {
        break;
      }

LABEL_16:
      if (++v3 >= v4)
      {
        goto LABEL_17;
      }
    }

    v8 = (*(v1 + 192) + 8 * *(*(v1 + 312) + 4 * v3));
    if ((*(*(v1 + 384) + v3) & 1) == 0)
    {
      v9 = ((*(*(v5 + 240) + v8[1]) >> 3) & 1) + ((*(*(v5 + 240) + *v8) >> 3) & 1);
      *(v6 + 2 * v3) = v7 & 0xFFBF | ((v9 != 0) << 6);
      result = sub_29A0A10C4(0.0, &v44, v9);
      v10 = *(v6 + 2 * v3) & 0xF87F | ((result & 0xF) << 7);
LABEL_15:
      *(v6 + 2 * v3) = v10;
      goto LABEL_16;
    }

    v11 = *v8;
    if (v11 == -1 || (*(*(v5 + 240) + v11) & 8) == 0)
    {
      v12 = v8[1];
      if (v12 == -1)
      {
        v14 = v7 & 0xF83F;
      }

      else
      {
        v13 = 8 * *(*(v5 + 240) + v12);
        v14 = v7 & 0xF83F;
        if ((v13 & 0x40) != 0)
        {
          v15 = v13 & 0x40;
          v16 = 512;
LABEL_14:
          v10 = v15 | v16 | v14;
          goto LABEL_15;
        }
      }

      v15 = 0;
      v16 = 128;
      goto LABEL_14;
    }

    v14 = v7 & 0xF83F;
    v16 = 512;
    v15 = 64;
    goto LABEL_14;
  }

LABEL_17:
  v17 = *(v1 + 60);
  if (v17 >= 1)
  {
    v18 = *(v1 + 84);
    v19 = v17 + v18;
    do
    {
      v20 = *(*(v1 + 312) + 4 * v18);
      v21 = *(v1 + 8);
      v22 = *(v21[54] + 2 * v20);
      if ((v22 & 0x60) == 0)
      {
        goto LABEL_34;
      }

      v23 = *(v1 + 16);
      v24 = v23[54];
      v25 = *(v24 + 2 * v18);
      if ((v22 & 0x40) == 0 && (((v25 & 0x20) == 0) & (v22 >> 5)) == 0)
      {
        goto LABEL_34;
      }

      v26 = v23[45];
      if (((v23[46] - v26) >> 2) < 1)
      {
        v33 = v21[42];
        v34 = *(v33 + 8 * v20);
        if (v34 >= 1)
        {
          v35 = *(v33 + 8 * v20 + 4);
          v36 = (v21[45] + 4 * v35);
          v37 = (v21[48] + 2 * v35);
          v30 = 0;
          v38 = v23[30];
          do
          {
            v39 = *v36++;
            v40 = *(v1 + 192) + 8 * v39;
            LODWORD(v39) = *v37++;
            v30 = vadd_s32(v30, (*&vshl_u32(vand_s8(vdup_n_s32(*(v38 + *(v40 + 4 * v39))), 0xFF000000FFLL), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
            --v34;
          }

          while (v34);
          goto LABEL_30;
        }
      }

      else
      {
        v27 = (v23[42] + 8 * v18);
        v28 = *v27;
        if (v28 >= 1)
        {
          v29 = (v26 + 4 * v27[1]);
          v30 = 0;
          v31 = v23[30];
          do
          {
            v32 = *v29++;
            v30 = vadd_s32(v30, (*&vshl_u32(vand_s8(vdup_n_s32(*(v31 + v32)), 0xFF000000FFLL), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
            --v28;
          }

          while (v28);
LABEL_30:
          v41 = v30.i32[0];
          v42 = (v30.i32[0] > 0) << 6;
          v43 = v30.i32[1];
          goto LABEL_32;
        }
      }

      v43 = 0;
      v41 = 0;
      v42 = 0;
LABEL_32:
      *(v24 + 2 * v18) = v42 | v25 & 0xFFBF;
      if ((v25 & 0x30) == 0)
      {
        result = sub_29A0A10C4(0.0, &v44, v43 + v41);
        *(v24 + 2 * v18) = ((result & 0xF) << 7) | *(v24 + 2 * v18) & 0xF87F;
      }

LABEL_34:
      ++v18;
    }

    while (v18 < v19);
  }

  return result;
}

void sub_29A0AB144(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_29A0AB3CC(a1, a2 - v4, a3, a4);
  }
}

void *sub_29A0AB174(void *result)
{
  v1 = result[1];
  if (*(v1 + 4) >= 1)
  {
    for (i = 0; i < *(v1 + 4); ++i)
    {
      v3 = (result[24] + 8 * i);
      v4 = result[54];
      if (*(v4 + i))
      {
        v7 = 2;
        *v3 = 2;
      }

      else
      {
        v5 = (*(v1 + 120) + 8 * i);
        v6 = result[57];
        if (*(v6 + *v5))
        {
          *v3 = 1;
          *(result[27] + 4 * i) = 1;
        }

        if ((*(v6 + v5[1]) & 1) == 0)
        {
          goto LABEL_10;
        }

        v7 = 1;
      }

      v3[1] = v7;
      *(result[27] + 4 * i) = v7;
LABEL_10:
      v8 = *(v1 + 168);
      v9 = (*(v1 + 144) + 8 * i);
      v10 = *v9;
      v11 = (v8 + 4 * v9[1]);
      if (v10 == 2)
      {
        v12 = *(v4 + i) & 0xE1 | (2 * ((*(result[51] + v11[1]) ^ *(result[51] + *v11)) & 1));
      }

      else if (v10 > 1)
      {
        v14 = *v11;
        v13 = v11 + 1;
        v15 = *(result[51] + v14);
        v16 = *(v4 + i) & 0xE1;
        *(v4 + i) = v16;
        v17 = v10 - 1;
        while (1)
        {
          v18 = *v13++;
          if ((*(result[51] + v18) ^ v15))
          {
            break;
          }

          if (!--v17)
          {
            goto LABEL_20;
          }
        }

        v12 = v16 | 2;
      }

      else
      {
        v12 = *(v4 + i) & 0xE1;
      }

      *(v4 + i) = v12;
LABEL_20:
      v1 = result[1];
    }
  }

  return result;
}

void sub_29A0AB2A4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      v11 = &v5[a2];
      do
      {
        *v5++ &= 0xE0u;
        --v2;
      }

      while (v2);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = &v5[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = operator new(v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v6[v10];
    v13 = &v6[v10 + v2];
    v14 = v12;
    do
    {
      *v14++ &= 0xE0u;
      --v2;
    }

    while (v2);
    v15 = v10 + v9;
    v16 = *a1;
    v17 = &v12[*a1 - v5];
    memcpy(v17, *a1, &v5[-*a1]);
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_29A0AB3CC(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2 <= (v7 - v8) >> 2)
  {
    if (a2)
    {
      v15 = 0;
      a4.i32[0] = *a3;
      v16 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v17 = vdupq_n_s64(v16);
      v18 = v8 + 4 * a2;
      v19 = v16 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v20 = (v8 + 8);
      do
      {
        v21 = vdupq_n_s64(v15);
        v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_29B430070)));
        if (vuzp1_s16(v22, a4).u8[0])
        {
          *(v20 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v22, a4).i8[2])
        {
          *(v20 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_29B433E10)))).i32[1])
        {
          *v20 = a4.i32[0];
          v20[1] = a4.i32[0];
        }

        v15 += 4;
        v20 += 4;
      }

      while (v19 != v15);
    }

    else
    {
      v18 = *(a1 + 8);
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v9 = v8 - *a1;
    v10 = a2 + (v9 >> 2);
    if (v10 >> 62)
    {
      sub_29A00C9A4();
    }

    v11 = v9 >> 2;
    v12 = v7 - *a1;
    if (v12 >> 1 > v10)
    {
      v10 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00E7A8(a1, v13);
    }

    else
    {
      v14 = 0;
    }

    v23 = 0;
    v24 = &v14[4 * v11];
    a4.i32[0] = *a3;
    v25 = &v24[4 * a2];
    v26 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = v24 + 8;
    do
    {
      v30 = vdupq_n_s64(v23);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_29B430070)));
      if (vuzp1_s16(v31, a4).u8[0])
      {
        *(v29 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v31, a4).i8[2])
      {
        *(v29 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_29B433E10)))).i32[1])
      {
        *v29 = a4.i32[0];
        v29[1] = a4.i32[0];
      }

      v23 += 4;
      v29 += 4;
    }

    while (v28 != v23);
    v32 = &v14[4 * v13];
    v33 = *(a1 + 8) - *a1;
    v34 = &v24[-v33];
    memcpy(&v24[-v33], *a1, v33);
    v35 = *a1;
    *a1 = v34;
    *(a1 + 8) = v25;
    *(a1 + 16) = v32;
    if (v35)
    {

      operator delete(v35);
    }
  }
}

void sub_29A0AB614(uint64_t a1, int a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A0A8F4C(*a1);
    *(a1 + 8) = 1;
  }

  v4 = *(*a1 + 408);
  if ((*(v4 + a2) & 1) == 0)
  {
    *(v4 + a2) |= 1u;
    v5 = *(*a1 + 8);
    v6 = v5[3];
    v7 = *(v6 + 8 * a2);
    if (v7 >= 1)
    {
      v8 = *(v6 + 8 * a2 + 4);
      v9 = (v5[9] + 4 * v8);
      v10 = (v5[6] + 4 * v8);
      do
      {
        v11 = *v9++;
        *(*(*a1 + 432) + v11) |= 1u;
        v12 = *v10++;
        *(*(*a1 + 456) + v12) |= 1u;
        --v7;
      }

      while (v7);
    }
  }
}

double sub_29A0AB6D8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  sub_29A0A8D14(a1, a2, a3, a4);
  *v4 = &unk_2A203EB68;
  *(v4 + 504) = 0;
  *(v4 + 512) = 0u;
  *&result = 0x300000001;
  *(v4 + 28) = 0x300000001;
  return result;
}

void *sub_29A0AB728(void *a1)
{
  *a1 = &unk_2A203EB68;
  v2 = a1[63];
  if (v2)
  {
    a1[64] = v2;
    operator delete(v2);
  }

  return sub_29A0A8DBC(a1);
}

void sub_29A0AB78C(void *a1)
{
  v1 = sub_29A0AB728(a1);

  operator delete(v1);
}

void sub_29A0AB7B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v4 = *(v2 + 9);
  v3 = *(v2 + 10);
  v6 = *(v2 + 15);
  v5 = *(v2 + 16);
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v19 = 4;
  sub_29A0A766C((a1 + 504), 2 * v8, &v19);
  v10 = *(a1 + 8);
  v11 = *(a1 + 504);
  if (*v10 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = (v11 + 4);
    do
    {
      *v14 = v12;
      v14 += 2;
      ++v13;
      v12 += 4;
    }

    while (v13 < *v10);
  }

  v15 = (*(a1 + 512) - v11) >> 2;
  *(a1 + 88) = v11;
  *(a1 + 96) = v15;
  v16 = *(v10 + 3);
  v17 = (*(v10 + 4) - v16) >> 2;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  v18 = 0;
  sub_29A0A766C((a1 + 120), 4 * v8, &v18);
  sub_29A0A766C((a1 + 144), ((v3 - v4) >> 2), &v18);
  sub_29A0A766C((a1 + 192), ((v5 - v6) >> 2), &v18);
  sub_29A0A766C((a1 + 168), 0, &v18);
  sub_29A0A766C((a1 + 216), v7, &v18);
  sub_29A0A766C((a1 + 240), v9, &v18);
}

void *sub_29A0AB8EC(void *a1)
{
  v2 = a1[2];
  if (v2[4] == v2[3])
  {
    sub_29A0AB948(a1);
    v2 = a1[2];
  }

  sub_29A0A171C(v2 + 6, 3 * *v2);

  return sub_29A0AB9C4(a1);
}

void sub_29A0AB948(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  v8 = 3;
  sub_29A0A766C(v2 + 3, 2 * v3, &v8);
  v4 = *(a1 + 16);
  if (*v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = (*(v4 + 3) + 4);
    do
    {
      *v7 = v5;
      v7 += 2;
      ++v6;
      v5 += 3;
    }

    while (v6 < *v4);
  }
}

void *sub_29A0AB9C4(void *result)
{
  v1 = result[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 6);
    v4 = *(v1 + 9);
    v5 = result[15];
    v6 = result[27];
    v7 = (result[11] + 4);
    v8 = (*(v1 + 3) + 4);
    do
    {
      v9 = *v8;
      v8 += 2;
      v10 = (v3 + 4 * v9);
      v11 = (v4 + 4 * v9);
      v12 = *v7;
      v7 += 2;
      v13 = *(v6 + 4 * *v11);
      v14 = *(v6 + 4 * v11[1]);
      v15 = (v5 + 4 * v12);
      v16 = *(v6 + 4 * v11[2]);
      if (*v15 != -1)
      {
        v17 = (*(result[2] + 48) + 4 * *(*(result[2] + 24) + 4 * ((2 * *v15) | 1)));
        *v17 = *(result[30] + 4 * *v10);
        v17[1] = v13;
        v17[2] = v16;
      }

      v18 = v15[1];
      if (v18 != -1)
      {
        v19 = (*(result[2] + 48) + 4 * *(*(result[2] + 24) + 4 * ((2 * v18) | 1)));
        *v19 = v13;
        v19[1] = *(result[30] + 4 * v10[1]);
        v19[2] = v14;
      }

      v20 = v15[2];
      if (v20 != -1)
      {
        v21 = (*(result[2] + 48) + 4 * *(*(result[2] + 24) + 4 * ((2 * v20) | 1)));
        *v21 = v16;
        v21[1] = v14;
        v21[2] = *(result[30] + 4 * v10[2]);
      }

      v22 = v15[3];
      if (v22 != -1)
      {
        v23 = (*(result[2] + 48) + 4 * *(*(result[2] + 24) + 4 * ((2 * v22) | 1)));
        *v23 = v14;
        v23[1] = v16;
        v23[2] = v13;
      }

      ++v2;
    }

    while (v2 < *v1);
  }

  return result;
}

void *sub_29A0ABB0C(void *a1)
{
  v2 = a1[2];
  if (v2[4] == v2[3])
  {
    sub_29A0AB948(a1);
    v2 = a1[2];
  }

  sub_29A0A171C(v2 + 9, 3 * *v2);

  return sub_29A0ABB68(a1);
}

void *sub_29A0ABB68(void *result)
{
  v40 = *MEMORY[0x29EDCA608];
  v1 = result[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 3);
    v4 = *(v1 + 6);
    v5 = *(v1 + 9);
    v6 = result[11];
    v7 = result[15];
    v8 = result[13];
    v9 = result[18];
    v10 = result[24];
    v11 = *(v1 + 15);
    do
    {
      v12 = 0;
      v13 = (8 * v2) | 4;
      v14 = *(v3 + v13);
      v15 = (v4 + 4 * v14);
      v16 = (v5 + 4 * v14);
      v17 = *(v6 + v13);
      v18 = *(v8 + v13);
      do
      {
        v20 = *v16++;
        v19 = v20;
        v21 = (v11 + 8 * v20);
        v22 = *v21 != v21[1] && *v15 != *v21;
        v23 = v10 + 8 * v19;
        v24 = *(v23 + 4 * v22);
        LODWORD(v23) = *(v23 + 4 * !v22);
        v25 = (&v36 + v12);
        *v25 = v24;
        v25[1] = v23;
        v12 += 8;
        ++v15;
      }

      while (v12 != 24);
      v26 = (v7 + 4 * v17);
      v27 = (v9 + 4 * v18);
      if (*v26 != -1)
      {
        v28 = (*(result[2] + 72) + 4 * *(*(result[2] + 24) + 4 * ((2 * *v26) | 1)));
        v29 = v39;
        *v28 = v36;
        v28[1] = *v27;
        v28[2] = v29;
      }

      v30 = v26[1];
      if (v30 != -1)
      {
        v31 = *(result[2] + 72) + 4 * *(*(result[2] + 24) + 4 * ((2 * v30) | 1));
        *v31 = v37;
        *(v31 + 8) = v27[1];
      }

      v32 = v26[2];
      if (v32 != -1)
      {
        v33 = *(result[2] + 72) + 4 * *(*(result[2] + 24) + 4 * ((2 * v32) | 1));
        *v33 = v27[2];
        *(v33 + 4) = v38;
      }

      v34 = v26[3];
      if (v34 != -1)
      {
        v35 = (*(result[2] + 72) + 4 * *(*(result[2] + 24) + 4 * ((2 * v34) | 1)));
        *v35 = v27[2];
        v35[1] = *v27;
        v35[2] = v27[1];
      }

      ++v2;
    }

    while (v2 < *v1);
  }

  return result;
}

void *sub_29A0ABD6C(void *a1)
{
  sub_29A0A171C((a1[2] + 120), 2 * *(a1[2] + 4));
  sub_29A0ABDBC(a1);

  return sub_29A0ABE78(a1);
}

void *sub_29A0ABDBC(void *result)
{
  v1 = result[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 9);
    v4 = result[18];
    v5 = result[27];
    v6 = (result[13] + 4);
    v7 = (*(v1 + 3) + 4);
    do
    {
      v8 = *v7;
      v7 += 2;
      v9 = (v3 + 4 * v8);
      v10 = *v6;
      v6 += 2;
      v11 = *(v5 + 4 * *v9);
      v12 = *(v5 + 4 * v9[1]);
      v13 = (v4 + 4 * v10);
      v14 = *(v5 + 4 * v9[2]);
      v15 = *v13;
      if (v15 != -1)
      {
        v16 = (*(result[2] + 120) + 8 * v15);
        *v16 = v11;
        v16[1] = v14;
      }

      v17 = v13[1];
      if (v17 != -1)
      {
        v18 = (*(result[2] + 120) + 8 * v17);
        *v18 = v12;
        v18[1] = v11;
      }

      v19 = v13[2];
      if (v19 != -1)
      {
        v20 = (*(result[2] + 120) + 8 * v19);
        *v20 = v14;
        v20[1] = v12;
      }

      ++v2;
    }

    while (v2 < *v1);
  }

  return result;
}

void *sub_29A0ABE78(void *result)
{
  v1 = result[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = (result[24] + 4);
    v4 = (*(v1 + 120) + 4);
    do
    {
      v5 = *(v3 - 1);
      if (v5 != -1)
      {
        v6 = (*(result[2] + 120) + 8 * v5);
        *v6 = *(result[27] + 4 * v2);
        v6[1] = *(result[30] + 4 * *(v4 - 1));
      }

      v7 = *v3;
      if (v7 != -1)
      {
        v8 = (*(result[2] + 120) + 8 * v7);
        *v8 = *(result[27] + 4 * v2);
        v8[1] = *(result[30] + 4 * *v4);
      }

      ++v2;
      v3 += 2;
      v4 += 2;
    }

    while (v2 < *(v1 + 4));
  }

  return result;
}

void sub_29A0ABF20(void *a1)
{
  v2 = 2 * (((*(a1[1] + 176) - *(a1[1] + 168)) >> 2) + ((a1[19] - a1[18]) >> 2));
  sub_29A0A171C((a1[2] + 144), 2 * *(a1[2] + 4));
  sub_29A0A171C((a1[2] + 168), v2);
  sub_29A0A174C((a1[2] + 192), v2);
  *(a1[2] + 16) = *(a1[1] + 16);
  sub_29A0AC000(a1);
  sub_29A0AC134(a1);
  v3 = a1[2];
  v4 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v5 = *v4;
  v6 = v4[1];
  sub_29A0A171C((v3 + 168), v6 + v5);
  v7 = (a1[2] + 192);

  sub_29A0A174C(v7, v6 + v5);
}

void *sub_29A0AC000(void *result)
{
  v1 = result[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = result[11];
    v5 = result[15];
    v6 = result[13];
    v7 = result[18];
    do
    {
      v8 = *(v6 + 8 * v3);
      if (v8 >= 1)
      {
        v9 = (8 * v3) | 4;
        v10 = (v5 + 4 * *(v4 + v9));
        v11 = (v7 + 4 * *(v6 + v9));
        v12 = v10[3];
        v13 = 1;
        do
        {
          v15 = *v11++;
          v14 = v15;
          if (v15 != -1)
          {
            v16 = result[2];
            v17 = *(v16 + 144);
            v18 = (v17 + 8 * v14);
            *v18 = 2;
            if (v14)
            {
              v19 = *(v18 - 1) + *(v18 - 2);
            }

            else
            {
              v19 = 0;
            }

            v20 = v13 % 3;
            v21 = 2 * v14;
            v18[1] = v19;
            v22 = *(v16 + 16);
            if (v22 <= 2)
            {
              v22 = 2;
            }

            *(v16 + 16) = v22;
            v23 = *(v17 + 4 * (v21 | 1));
            v24 = (*(v16 + 168) + 4 * v23);
            v25 = (*(v16 + 192) + 2 * v23);
            if (*v10 == -1)
            {
              v26 = 0;
            }

            else
            {
              *v24 = *v10;
              *v25 = v20;
              v26 = 1;
            }

            if (v12 != -1)
            {
              v24[v26] = v12;
              v25[v26] = v20;
              LODWORD(v26) = v26 + 1;
            }

            *v18 = v26;
          }

          ++v13;
          ++v10;
          --v8;
        }

        while (v8);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0AC134(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[24];
    do
    {
      v5 = (v4 + 8 * v3);
      if (*v5 != -1 || v5[1] != -1)
      {
        v6 = 0;
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 168) + 4 * v8;
        v10 = *(v1 + 192) + 2 * v8;
        v11 = (*(v1 + 120) + 8 * v3);
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = v5[v6];
          if (v14 != -1)
          {
            v15 = result[2];
            v16 = *(v15 + 144);
            v17 = (v16 + 8 * v14);
            *v17 = v7;
            if (v14)
            {
              v18 = *(v17 - 1) + *(v17 - 2);
            }

            else
            {
              v18 = 0;
            }

            v17[1] = v18;
            v19 = *(v15 + 16);
            if (v19 <= v7)
            {
              v19 = v7;
            }

            *(v15 + 16) = v19;
            if (v7 < 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = 0;
              v21 = *(v16 + 4 * ((2 * v14) | 1));
              v22 = *(v15 + 168) + 4 * v21;
              v23 = *(v15 + 192) + 2 * v21;
              v24 = *(v1 + 24);
              v25 = result[11];
              v26 = result[15];
              v27 = v7;
              v28 = v9;
              v29 = v10;
              do
              {
                v31 = *v28++;
                v30 = v31;
                LODWORD(v31) = *v29++;
                v32 = v31;
                v33 = (2 * v30) | 1;
                v34 = v6;
                if (*v11 != v11[1])
                {
                  v34 = *(*(v1 + 48) + 4 * *(v24 + 4 * v33) + 4 * v32) != v11[v6];
                }

                v35 = v26 + 4 * *(v25 + 4 * v33);
                v36 = v34 + v32;
                if (v36 == *(v24 + 8 * v30))
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v36;
                }

                v38 = *(v35 + 4 * v37);
                if (v38 != -1)
                {
                  *(v22 + 4 * v20) = v38;
                  *(v23 + 2 * v20++) = v32;
                }

                --v27;
              }

              while (v27);
            }

            *v17 = v20;
          }

          v12 = 0;
          v6 = 1;
        }

        while ((v13 & 1) != 0);
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void sub_29A0AC2F0(uint64_t a1)
{
  v2 = ((*(*(a1 + 8) + 296) - *(*(a1 + 8) + 288)) >> 2) + 3 * ((*(*(a1 + 8) + 176) - *(*(a1 + 8) + 168)) >> 2);
  sub_29A0A171C((*(a1 + 16) + 264), 2 * *(*(a1 + 16) + 8));
  sub_29A0A171C((*(a1 + 16) + 288), v2);
  sub_29A0A174C((*(a1 + 16) + 312), v2);
  if (*(a1 + 84))
  {
    sub_29A0AC4C4(a1);
    sub_29A0AC3E0(a1);
  }

  else
  {
    sub_29A0AC3E0(a1);
    sub_29A0AC4C4(a1);
  }

  v3 = *(a1 + 16);
  v4 = (*(v3 + 264) + 4 * (2 * *(v3 + 8) - 2));
  v5 = *v4;
  v6 = v4[1];
  sub_29A0A171C((v3 + 288), v6 + v5);
  v7 = (*(a1 + 16) + 312);

  sub_29A0A174C(v7, v6 + v5);
}

void *sub_29A0AC3E0(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = result[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = result[11];
          v20 = result[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              *(v17 + 4 * v14) = v24;
              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0AC4C4(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = result[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = result[11];
          v20 = result[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = v22 + 1 - 3 * ((1431655766 * (v22 + 1)) >> 32);
            v25 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v26 = *(v25 + 4 * v24);
            if (v26 != -1)
            {
              *(v17 + 4 * v14) = v26;
              *(v18 + 2 * v14++) = v23;
            }

            v27 = *(v25 + 12);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              *(v18 + 2 * v14++) = v23 + 2 - 3 * ((1431655766 * (v23 + 2)) >> 32);
            }

            v28 = *(v25 + 4 * v23);
            if (v28 != -1)
            {
              *(v17 + 4 * v14) = v28;
              *(v18 + 2 * v14++) = v24;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void sub_29A0AC614(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ((*(v2 + 368) - *(v2 + 360)) >> 2) + 2 * (*(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2));
  sub_29A0A171C((*(a1 + 16) + 336), 2 * *(*(a1 + 16) + 8));
  sub_29A0A171C((*(a1 + 16) + 360), v3);
  sub_29A0A174C((*(a1 + 16) + 384), v3);
  if (*(a1 + 84))
  {
    sub_29A0AC800(a1);
    sub_29A0AC708(a1);
  }

  else
  {
    sub_29A0AC708(a1);
    sub_29A0AC800(a1);
  }

  v4 = *(a1 + 16);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  sub_29A0A171C((v4 + 360), v7 + v6);
  v8 = (*(a1 + 16) + 384);

  sub_29A0A174C(v8, v7 + v6);
}

void *sub_29A0AC708(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = result[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = result[24];
          do
          {
            v23 = *v17++;
            v24 = v22 + 8 * v23;
            LODWORD(v23) = *v18++;
            v25 = *(v24 + 4 * v23);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0AC800(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = result[24];
        v12 = result[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        if (v7 < 1)
        {
          v18 = 0;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = v6 + 4 * v8;
          v21 = v9 + 2 * v8;
          v22 = (v10 + 8 * v3);
          v23 = v11 + 8 * v3;
          v24 = *(v14 + 4 * ((2 * v5) | 1));
          v25 = *(v12 + 360) + 4 * v24;
          v26 = *(v12 + 384) + 2 * v24;
          v27 = result[13];
          v28 = result[18];
          v29 = -1;
          do
          {
            v30 = *(v21 + 2 * v17);
            v31 = (2 * *(v20 + 4 * v17)) | 1;
            v32 = v28 + 4 * *(v27 + 4 * v31);
            if (v17)
            {
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * v30);
            }

            else
            {
              if (*v22 != v22[1])
              {
                v19 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * v30) != *v22;
              }

              v35 = *(v23 + 4 * !v19);
              v29 = *(v23 + 4 * v19);
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * v30);
              if (v35 != -1)
              {
                *(v25 + 4 * v18) = v35;
                *(v26 + 2 * v18++) = 0;
              }
            }

            if (v33 != -1)
            {
              *(v25 + 4 * v18) = v33;
              *(v26 + 2 * v18++) = 1;
            }

            if (v34 != -1)
            {
              *(v25 + 4 * v18) = v34;
              *(v26 + 2 * v18++) = 0;
            }

            if (!v17 && v29 != -1)
            {
              *(v25 + 4 * v18) = v29;
              *(v26 + 2 * v18++) = 0;
            }

            ++v17;
          }

          while (v7 != v17);
        }

        *v15 = v18;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_29A0ACA08(void *result)
{
  v1 = result[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = 4;
    *&v4 = 0x200000002;
    *(&v4 + 1) = 0x200000002;
    do
    {
      v5 = result[15] + 4 * *(result[11] + v3);
      v6 = result[18] + 4 * *(result[13] + v3);
      v7 = result[51];
      if (*(v7 + v2))
      {
        *v5 = v4;
        *v6 = 2;
        *(v6 + 4) = 0x200000002;
        *(v7 + v2) &= 0xE1u;
      }

      else
      {
        v8 = *(*(v1 + 3) + v3);
        v9 = (*(v1 + 6) + 4 * v8);
        if (*(result[57] + v9[2]) & 1 | ((*(result[57] + v9[1]) & 1) + (*(result[57] + *v9) & 1)))
        {
          v10 = *(result[54] + *(*(v1 + 9) + 4 * v8 + 4)) & 0xE | (*(result[54] + *(*(v1 + 9) + 4 * v8)) >> 1) & 0xF | (2 * *(result[54] + *(*(v1 + 9) + 4 * v8 + 8))) & 0xC;
          *(v7 + v2) = *(v7 + v2) & 0xE0 | (2 * v10);
          if (v10)
          {
            *(v5 + 12) = 1;
            *v6 = 1;
            *(v6 + 4) = 0x100000001;
          }

          v11 = result[57];
          if (*(v11 + *v9))
          {
            *v5 = 1;
            *v6 = 1;
          }

          if (*(v11 + v9[1]))
          {
            *(v5 + 4) = 1;
            *(v6 + 4) = 1;
          }

          if (*(v11 + v9[2]))
          {
            *(v5 + 8) = 1;
            *(v6 + 8) = 1;
          }
        }
      }

      ++v2;
      v1 = result[1];
      v3 += 8;
    }

    while (v2 < *v1);
  }

  return result;
}

double sub_29A0ACB6C(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = sub_29A0BAEC8(a1, a2, a3);
  *v3 = &unk_2A203EBE0;
  v4 = *(v3 + 20);
  v5 = dword_29B433F44[*(v3 + 16)];
  *(v3 + 40) = v5;
  if (v4)
  {
    v5 = dword_29B433F44[v4];
  }

  *(v3 + 44) = v5;
  *&result = 0x300000003;
  *(v3 + 48) = 0x300000003;
  return result;
}

void sub_29A0ACBD0()
{
  v0 = nullsub_1();

  operator delete(v0);
}

uint64_t sub_29A0ACC1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  switch(a3)
  {
    case 3:
      v10 = a2;
      sub_29A0AFC74(&v10, a4);
      break;
    case 6:
      sub_29A0AEF04(v11, a2, a4);
      v7 = &v12;
      v8 = -864;
      do
      {
        operator delete(v7[22]);
        *v7 = (v7 + 2);
        *(v7 + 3) = 40;
        v7 -= 27;
        v8 += 216;
      }

      while (v8);
      break;
    case 9:
      sub_29A0ACE88(v13, a2, a4);
      v5 = &v14;
      v6 = -864;
      do
      {
        operator delete(v5[22]);
        *v5 = (v5 + 2);
        *(v5 + 3) = 40;
        v5 -= 27;
        v6 += 216;
      }

      while (v6);
      break;
  }

  return *a4;
}

uint64_t sub_29A0ACD04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  switch(a3)
  {
    case 3:
      v10 = a2;
      sub_29A0B2E68(&v10, a4);
      break;
    case 6:
      sub_29A0B20F8(v11, a2, a4);
      v7 = &v12;
      v8 = -896;
      do
      {
        operator delete(v7[22]);
        *v7 = (v7 + 2);
        *(v7 + 3) = 40;
        v7 -= 28;
        v8 += 224;
      }

      while (v8);
      break;
    case 9:
      sub_29A0B00F4(v13, a2, a4);
      v5 = &v14;
      v6 = -896;
      do
      {
        operator delete(v5[22]);
        *v5 = (v5 + 2);
        *(v5 + 3) = 40;
        v5 -= 28;
        v6 += 224;
      }

      while (v6);
      break;
  }

  return *a4;
}

double sub_29A0ACDE8(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = sub_29A0BAEC8(a1, a2, a3);
  *v3 = &unk_2A203EC30;
  v4 = *(v3 + 20);
  v5 = dword_29B4340F0[*(v3 + 16)];
  *(v3 + 40) = v5;
  if (v4)
  {
    v5 = dword_29B4340F0[v4];
  }

  *(v3 + 44) = v5;
  *&result = 0x300000006;
  *(v3 + 48) = 0x300000006;
  return result;
}

void sub_29A0ACE50()
{
  v0 = nullsub_1();

  operator delete(v0);
}

uint64_t sub_29A0ACE88(uint64_t a1, uint64_t a2, int *a3)
{
  for (i = 0; i != 864; i += 216)
  {
    v6 = (a1 + i);
    v6[7] = a1 + i + 72;
    v6[8] = 0x2800000000;
    v6[29] = 0;
  }

  sub_29A0ACF04(a1, a2);
  sub_29A0AD268(a1, a3);
  return a1;
}

uint64_t sub_29A0ACF04(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v46 = 0;
  *a1 = *(a2 + 28);
  v6 = (a1 + 24);
  v7 = 0uLL;
  v44 = -1;
  v8 = -864;
  v9 = 10;
  v45 = -1;
  do
  {
    v47 = v7;
    v10 = *(a2 + v4);
    v11 = *(a2 + v4 + 2);
    v12 = *(a2 + v4 + 4);
    v13 = a1 + v8;
    v14 = v12 & 1;
    v15 = *(a1 + v8 + 888) & 0xFFE0 | v14;
    *(v13 + 896) = v10;
    *(v13 + 900) = v11;
    v16 = v15 | (v12 >> 1) & 0x10 | v12 & 6;
    *(v13 + 892) = v14 + v10;
    v17 = v10 << (v12 & 1);
    v18 = ~(4 * v12) & 8;
    if (v17 != 4)
    {
      v18 = 0;
    }

    *(v13 + 888) = v16 | v18;
    if (v18)
    {
      sinval = 1.0;
      cosval = 0.0;
      v21 = 1.5708;
    }

    else
    {
      v21 = flt_29B433FA0[v14 == 0] / v10;
      v22 = __sincosf_stret(v21);
      cosval = v22.__cosval;
      sinval = v22.__sinval;
    }

    *(v13 + 904) = v21;
    *(v13 + 908) = cosval;
    *(v13 + 912) = sinval;
    v23 = *(a2 + 4 * v9);
    if (v23)
    {
      v24 = a1 + v8;
      if (*(a1 + v8 + 932) >= v23)
      {
        v25 = *(v13 + 920);
      }

      else
      {
        operator delete(*(v24 + 1096));
        *(v13 + 920) = v24 + 936;
        *(v24 + 932) = 40;
        v25 = operator new(4 * v23);
        *(v24 + 1096) = v25;
        *(v13 + 920) = v25;
        *(v24 + 932) = v23;
      }
    }

    else
    {
      operator delete(*(a1 + v8 + 1096));
      v25 = (a1 + v8 + 936);
      *(v13 + 920) = v25;
      *(a1 + v8 + 932) = 40;
    }

    *(a1 + v8 + 928) = v23;
    sub_29A0BCF94(a2, v9 - 10, v25);
    v26 = *(v13 + 888);
    if ((v26 & 8) == 0)
    {
      v45 = *(v13 + 892);
      ++v46;
      v44 = v9 - 10;
    }

    v5 += v26 & 1;
    *(&v27 + 1) = *(&v47 + 1);
    *&v27 = vadd_s32(*&v47, vand_s8(vshl_u32(vdup_n_s32(v26), 0xFFFFFFFCFFFFFFFFLL), 0x100000001));
    v7 = v27;
    ++v9;
    v4 += 6;
    v8 += 216;
  }

  while (v8);
  v28 = 3;
  v29 = v6;
  do
  {
    v30 = *v29;
    *v29 = v30 & 0xFF9F;
    if ((v30 & 8) != 0)
    {
      v32 = (16 * v6[108 * ((v28 - 2) & 3)]) & 0x80 | v30 & 0xFFFFFF1F;
      *v29 = (16 * v6[108 * ((v28 - 2) & 3)]) & 0x80 | v30 & 0xFF1F;
      v31 = (32 * v6[108 * (v28 & 3)]) & 0x100;
    }

    else
    {
      v31 = 0;
      v32 = v30 & 0xFF17;
    }

    v33 = v32 & 0xFFFFF89F;
    result = v31 | v33;
    *v29 = v31 | v33;
    if ((v30 & 1) == 0)
    {
      goto LABEL_28;
    }

    v35 = *(v29 + 2);
    v36 = *(v29 + 3);
    v37 = ((v36 == v35 - 1) << 6) | (32 * (v36 == 0)) | result;
    *v29 = v37;
    if (v35 < 2)
    {
      LOWORD(v38) = v37 | 0x180;
      goto LABEL_27;
    }

    if (!v36)
    {
      v39 = v37 & 0xFFFFF97F | (v31 >> 1) | (2 * v31);
      v37 = v39 ^ 0x200;
      *v29 = v39 ^ 0x200;
      if (((v39 ^ 0x200) & 0x40) == 0)
      {
        goto LABEL_28;
      }

LABEL_26:
      v38 = (v37 & 0xFFFFFAFF | (((v37 >> 7) & 1) << 8) & 0xFFFFFBFF | (((v37 >> 7) & 1) << 10)) ^ 0x400;
LABEL_27:
      *v29 = v38;
      goto LABEL_28;
    }

    if ((v37 & 0x40) != 0)
    {
      goto LABEL_26;
    }

LABEL_28:
    ++v28;
    v29 += 108;
  }

  while (v28 != 7);
  v42 = v46 == 1 && v5 == 0 && v45 > 2 && v27 == 0;
  v43 = v42;
  *(a1 + 8) = v43;
  if (v42)
  {
    *(a1 + 12) = v44;
    *(a1 + 16) = v45;
  }

  *(a1 + 9) = DWORD1(v27) != 0;
  return result;
}

void sub_29A0AD268(uint64_t a1, int *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(a1 + 8) == 1)
  {
    sub_29A0AD498(a1, a2, *(a1 + 12), *(a1 + 16));
  }

  else
  {
    sub_29A0AD588(a1, a2);
  }

  if (6 * *(a1 + 4) + 3 <= 2 * *a1)
  {
    v4 = 2 * *a1;
  }

  else
  {
    v4 = 6 * *(a1 + 4) + 3;
  }

  v12 = &v15;
  v13 = v4;
  v14 = 128;
  v16 = 0;
  if (v4 <= 0x80)
  {
    v9 = &v10;
    __p = 0;
  }

  else
  {
    v16 = operator new(4 * v4);
    v12 = v16;
    v14 = v4;
    __p = operator new(4 * v4);
    v9 = __p;
  }

  v5 = 0;
  v6 = 24;
  do
  {
    if ((*(a1 + v6) & 8) != 0)
    {
      sub_29A0AD804(a1, v5, a2);
    }

    else
    {
      sub_29A0ADA20(a1, v5, a2, v12);
    }

    ++v5;
    v6 += 216;
  }

  while (v5 != 4);
  v7 = 0;
  v8 = 24;
  do
  {
    if ((*(a1 + v8) & 0x180) == 0 || (sub_29A0ADDF0(a1, v7, a2), (~*(a1 + v8) & 0x180) != 0))
    {
      sub_29A0ADE7C(a1, v7, a2, v12, v9);
    }

    ++v7;
    v8 += 216;
  }

  while (v7 != 4);
  if (*(a1 + 9))
  {
    sub_29A0AE0DC(a2);
  }

  operator delete(__p);
  operator delete(v16);
}

void sub_29A0AD45C(_Unwind_Exception *a1)
{
  operator delete(STACK[0x218]);
  operator delete(STACK[0x430]);
  _Unwind_Resume(a1);
}

void sub_29A0AD498(int *a1, int *a2, int a3, int a4)
{
  v4 = (2 * a4) | 1;
  v11 = *MEMORY[0x29EDCA608];
  v5 = &v10[5 * a3];
  *v5 = vdupq_n_s32(v4);
  v5[1].i32[0] = v4;
  v6 = &v10[(a3 + 1) & 3 | (4 * ((a3 + 1) & 3))];
  *v6 = xmmword_29B434010;
  v7 = 2 * a4 + 4;
  v6[4] = v7;
  v8 = &v10[a3 & 3 ^ 2 | (4 * (a3 & 3 ^ 2))];
  *v8 = xmmword_29B434010;
  v8[4] = 4;
  v9 = &v10[(a3 - 1) & 3 | (4 * ((a3 - 1) & 3))];
  *v9 = 9;
  *(v9 + 1) = 0x600000006;
  v9[3] = v7;
  v9[4] = 4;
  sub_29A0AE410(a2, *a1, 7 * v4 + 85, v10);
}

void sub_29A0AD588(int *a1, int *a2)
{
  v3 = 0;
  v4 = 0;
  v29 = *MEMORY[0x29EDCA608];
  v5 = a1 + 6;
  do
  {
    v6 = &v28[5 * v3];
    v7 = &v5[54 * v3];
    v8 = *v7;
    if ((v8 & 8) != 0)
    {
      if (v8)
      {
        v11 = 3;
        if ((v8 & 0x20) != 0)
        {
          v10 = 2;
        }

        else
        {
          v10 = 6;
        }

        *v6 = 3;
        v6[1] = v10;
        if ((v8 & 0x40) != 0)
        {
          v9 = 2;
        }

        else
        {
          v9 = 6;
        }
      }

      else
      {
        *v6 = 0x600000009;
        v11 = 9;
        v9 = 6;
        v10 = 6;
      }
    }

    else
    {
      if ((v8 & 2) != 0)
      {
        *v6 = 0x200000001;
        v11 = 1;
LABEL_9:
        v9 = 2;
        v10 = 2;
        goto LABEL_16;
      }

      if ((v8 & 1) == 0)
      {
        v9 = (2 * v7[1]) | 1;
        *v6 = v9;
        v6[1] = v9;
        v10 = v9;
        v11 = v9;
        goto LABEL_16;
      }

      v21 = v7[2];
      if (v21 < 2)
      {
        *v6 = 0x200000003;
        v11 = 3;
        goto LABEL_9;
      }

      v22 = v21 + v7[1];
      v11 = 3;
      if ((v8 & 0x20) != 0)
      {
        v10 = 2;
      }

      else
      {
        v10 = v22 + 1;
      }

      *v6 = 3;
      v6[1] = v10;
      if ((v8 & 0x40) != 0)
      {
        v9 = 2;
      }

      else
      {
        v9 = v22 + 1;
      }
    }

LABEL_16:
    v6[2] = v9;
    *(v6 + 3) = 0x400000004;
    if ((~v8 & 0x180) == 0)
    {
      v12 = v3 + 1;
      v13 = 4;
      v14 = 4;
      goto LABEL_54;
    }

    v12 = v3 + 1;
    v15 = (v3 + 1) & 3;
    v16 = (v3 - 1) & 3;
    if ((v8 & 0x80) != 0)
    {
      v14 = 4;
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_42;
    }

    if ((v8 & 0x200) != 0)
    {
      v17 = (v3 - 1) & 3;
    }

    else
    {
      v17 = (v3 + 1) & 3;
    }

    v18 = &v5[54 * v17];
    if ((v8 & 2) != 0)
    {
      v20 = *v18;
      if ((*v18 & 2) != 0)
      {
        v14 = 2;
        goto LABEL_41;
      }

      v19 = 6;
    }

    else
    {
      v19 = v7[10] + 1;
      v20 = *v18;
    }

    if ((v20 & 0xA) != 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = v18[10] - 5;
    }

    v14 = v23 + v19;
LABEL_41:
    v6[3] = v14;
    if ((v8 & 0x100) != 0)
    {
LABEL_25:
      v13 = 4;
      goto LABEL_54;
    }

LABEL_42:
    if ((v8 & 0x400) == 0)
    {
      v15 = v16;
    }

    v24 = &v5[54 * v15];
    if ((v8 & 2) == 0)
    {
      v25 = v7[10] + 1;
      v26 = *v24;
LABEL_48:
      if ((v26 & 0xA) != 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24[10] - 5;
      }

      v13 = v27 + v25;
      goto LABEL_53;
    }

    v26 = *v24;
    if ((*v24 & 2) == 0)
    {
      v25 = 6;
      goto LABEL_48;
    }

    v13 = 2;
LABEL_53:
    v6[4] = v13;
LABEL_54:
    v4 += v11 + v10 + v9 + v14 + v13;
    v3 = v12;
  }

  while (v12 != 4);
  sub_29A0AE410(a2, *a1, v4, v28);
}

uint64_t sub_29A0AD804(uint64_t result, int a2, void *a3)
{
  v3 = (a3[2] + 20 * a2);
  v4 = a3[5];
  v5 = *v3;
  v6 = v3[1];
  v7 = (v4 + 4 * v5);
  v8 = a3[8];
  v9 = v8 + 4 * v5;
  v10 = (v4 + 4 * v6);
  v11 = (v8 + 4 * v6);
  v12 = v3[2];
  v13 = (v4 + 4 * v12);
  v14 = (v8 + 4 * v12);
  v15 = result + 216 * a2;
  v18 = *(v15 + 24);
  v16 = v15 + 24;
  v17 = v18;
  v19 = *(v16 + 32);
  if (v18)
  {
    *v7 = a2;
    *v9 = 1059760811;
    v7[1] = *v19;
    v7[2] = v19[4];
    *(v9 + 4) = vdup_n_s32(0x3E2AAAABu);
    if ((v17 & 0x20) != 0)
    {
      v24 = v10;
    }

    else
    {
      v24 = v13;
    }

    *v24 = a2;
    if ((v17 & 0x20) != 0)
    {
      v25 = v11;
    }

    else
    {
      v25 = v14;
    }

    v24[1] = *(v19 + (((v17 & 0x20) >> 1) ^ 0x10));
    *v25 = 0x3EAAAAAB3F2AAAABLL;
    if ((v17 & 0x20) == 0)
    {
      v13 = v10;
    }

    *v13 = a2;
    if ((v17 & 0x20) == 0)
    {
      v14 = v11;
    }

    v13[1] = v19[2];
    v13[2] = *v19;
    v13[3] = v19[4];
    *v14->i8 = xmmword_29B434020;
    v13[4] = v19[1];
    v14[2].i32[0] = 1029934649;
    v23 = v19 + 3;
  }

  else
  {
    *v7 = a2;
    v7[1] = *v19;
    v7[2] = v19[2];
    v7[3] = v19[4];
    v7[4] = v19[6];
    v7[5] = v19[1];
    v7[6] = v19[3];
    v7[7] = v19[5];
    *v9 = xmmword_29B434030;
    *(v9 + 16) = xmmword_29B434040;
    v7[8] = v19[7];
    *(v9 + 32) = 1021546041;
    v20 = *(v16 + 12);
    v21 = (2 * v20 + 2) & 6;
    v22 = (2 * v20) & 6 ^ 4;
    *v10 = a2;
    v10[1] = v19[2 * v20];
    v10[2] = v19[(2 * v20 + 2) & 6];
    v10[3] = v19[(2 * v20 + 6) & 6];
    *v11->i8 = xmmword_29B434020;
    result = (2 * v20) | 1u;
    v10[4] = v19[result];
    v10[5] = v19[(2 * v20 + 6) & 6 | 1];
    *v13 = a2;
    v13[1] = v19[(2 * v20 + 2) & 6];
    LODWORD(v20) = v19[2 * v20];
    v11[2] = vdup_n_s32(0x3D638E39u);
    v13[2] = v20;
    v13[3] = v19[v22];
    *v14->i8 = xmmword_29B434020;
    v13[4] = v19[result];
    v14[2].i32[0] = 1029934649;
    v23 = &v19[v21 | 1];
  }

  v13[5] = *v23;
  v14[2].i32[1] = 1029934649;
  return result;
}

float sub_29A0ADA20(uint64_t a1, int a2, void *a3, float *a4)
{
  v5 = (a3[2] + 20 * a2);
  v6 = a3[5];
  v7 = *v5;
  v8 = v5[1];
  v9 = (v6 + 4 * v7);
  v10 = a3[8];
  v11 = v10 + 4 * v7;
  v12 = (v6 + 4 * v8);
  v13 = (v10 + 4 * v8);
  v14 = v5[2];
  v15 = (v6 + 4 * v14);
  v16 = (v10 + 4 * v14);
  v17 = a1 + 216 * a2;
  v20 = *(v17 + 24);
  v19 = v17 + 24;
  v18 = v20;
  if ((v20 & 2) != 0)
  {
    *v9 = a2;
    *v11 = 1065353216;
    *v12 = a2;
    *v13 = 0x3EAAAAAB3F2AAAABLL;
    v12[1] = (a2 + 1) & 3;
    *v15 = a2;
    *v16 = 0.66667;
    v42 = (a2 - 1) & 3;
LABEL_8:
    result = 0.33333;
LABEL_9:
    v15[1] = v42;
    v16[1] = result;
    return result;
  }

  v81 = (v10 + 4 * v14);
  v82 = (v6 + 4 * v14);
  if ((v18 & 1) == 0)
  {
    v77 = v14;
    v79 = a3[5];
    v75 = (v6 + 4 * v8);
    v22 = *(v19 + 4);
    v23 = (2 * v22) | 1;
    v24 = &a4[v23];
    v73 = &a4[2 * v23];
    sub_29A0AE518(*(v19 + 4), *(v19 + 12), a4, v24, v73);
    v25 = *a4;
    *v9 = a2;
    *v11 = v25;
    v26 = *v24;
    *v75 = a2;
    *(v10 + 4 * v8) = v26;
    result = *v73;
    *v82 = a2;
    *v81 = result;
    if (v22 >= 1)
    {
      v28 = 0;
      v29 = *(v19 + 32);
      v30 = 4 * v77 + 4;
      v31 = v10 + v30;
      v32 = v79 + v30;
      v33 = 4 * v8 + 4;
      v34 = v10 + v33;
      v35 = v79 + v33;
      v36 = 4 * v7 + 4;
      v37 = v10 + v36;
      v38 = v79 + v36;
      do
      {
        v39 = *(v29 + v28);
        v40 = a4[v28 / 4 + 1];
        *(v38 + v28) = v39;
        *(v37 + v28) = v40;
        v41 = a4[2 * v22 + 2 + v28 / 4];
        *(v35 + v28) = v39;
        *(v34 + v28) = v41;
        result = a4[4 * v22 + 3 + v28 / 4];
        *(v32 + v28) = v39;
        *(v31 + v28) = result;
        v28 += 4;
      }

      while (4 * (2 * v22) != v28);
    }

    return result;
  }

  v43 = *(v19 + 8);
  if (v43 < 2)
  {
    *v11 = 1059760811;
    v62 = (a2 + 1) & 3;
    *v9 = a2;
    v9[1] = v62;
    v42 = (a2 - 1) & 3;
    v9[2] = v42;
    *(v11 + 4) = vdup_n_s32(0x3E2AAAABu);
    *v12 = a2;
    *v13 = 0x3EAAAAAB3F2AAAABLL;
    v12[1] = v62;
    v16 = v81;
    v15 = v82;
    *v82 = a2;
    *v81 = 0.66667;
    goto LABEL_8;
  }

  v78 = v14;
  v80 = a3[5];
  v44 = *(v19 + 4);
  v72 = v44 + v43;
  v45 = &a4[v44 + 1 + v43];
  v74 = v44 + v43 + 1;
  v76 = &a4[2 * v74];
  sub_29A0AE860(v44, *(v19 + 12), a4, &a4[v72 + 1], &a4[2 * v72 + 2]);
  v46 = (v10 + 4 * v8);
  v47 = *(v19 + 32);
  v48 = *v47;
  v42 = v47[2 * v44 - 2];
  *v11 = *a4;
  v49 = *(a4 + 1);
  *v9 = a2;
  v9[1] = v48;
  *(v11 + 4) = v49;
  v50 = a4[v72];
  v9[2] = v42;
  *(v11 + 8) = v50;
  v51 = *v45;
  *v12 = a2;
  *v46 = v51;
  if ((*v19 & 0x20) != 0)
  {
    v63 = *(v45 + 1);
    v12[1] = v48;
    v46[1] = v63;
    v16 = v81;
    v15 = v82;
    v52 = v74;
  }

  else
  {
    v52 = v74;
    v16 = v81;
    v15 = v82;
    if (v74 >= 2)
    {
      v53 = v74 - 1;
      v54 = 4 * v8 + 4;
      v55 = (v10 + v54);
      v56 = (v80 + v54);
      v57 = &a4[v74 + 1];
      v58 = v47;
      do
      {
        v60 = *v58++;
        v59 = v60;
        v61 = *v57++;
        *v56++ = v59;
        *v55++ = v61;
        --v53;
      }

      while (v53);
    }
  }

  result = *v76;
  *v15 = a2;
  *v16 = result;
  if ((*v19 & 0x40) != 0)
  {
    result = v76[v72];
    goto LABEL_9;
  }

  if (v72 <= 0x7FFFFFFE)
  {
    v64 = (v72 + 2) - 1;
    v65 = 4 * v78 + 4;
    v66 = (v10 + v65);
    v67 = (v80 + v65);
    v68 = &a4[2 * v52 + 1];
    do
    {
      v70 = *v47++;
      v69 = v70;
      v71 = *v68++;
      result = v71;
      *v67++ = v69;
      *v66++ = v71;
      --v64;
    }

    while (v64);
  }

  return result;
}