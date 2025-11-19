__int16 sub_2712A8628@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>)
{
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  if (*a2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *(a2 + 64);
    v9 = *(a3 + 64);
    v10 = 2 * *(a2 + 16);
    v11 = 2 * *(a3 + 16);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 20);
      v14 = *(a2 + 20);
      if (v7)
      {
        v15 = 0;
        v16 = v9 + 2;
        v17 = v8 + 2;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 2) = *(v18 - 2);
            *(v19 - 1) = *(v18 - 1);
            *v19 = *v18;
            v19[1] = v18[1];
            v19 = (v19 + v11);
            v18 = (v18 + v10);
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v8 += v14;
          v9 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_18;
      }

      v21 = 2 * v14;
      v22 = 2 * v13;
      do
      {
        *v9 = *v8;
        v9[1] = v8[1];
        v9[2] = v8[2];
        v9[3] = v8[3];
        v8 = (v8 + v21);
        v9 = (v9 + v22);
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      result = v8[3];
      v9[3] = result;
      return result;
    }

    do
    {
LABEL_18:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2712A8790(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 84))
  {
    v3 = *(a1 + 80) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 88);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 100) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 64);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 64) = 0;
  return a1;
}

float sub_2712A88F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a2;
    v9 = *a3;
    v10 = 4 * *(a2 + 24);
    v11 = 4 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = v8[1];
          v9[2] = v8[2];
          v9[3] = v8[3];
          v8 += v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_19;
      }

      v15 = 0;
      v16 = v9 + 2;
      v17 = v8 + 2;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v19[1] = v18[1];
        v8 += v14;
        v9 += v13;
        ++v15;
        v16 += v13;
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      result = v8[3];
      v9[3] = result;
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

__n128 sub_2712A8A64(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F0A0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A8AFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F0A0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112F98;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_2712579B8(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A8BDC(a2 + 8, (a3 + 8));
}

uint64_t sub_2712A8BDC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    sub_2712A8CB4(a2, a1);
    return a1;
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = *(a2 + 6);
    sub_2712579B8(v11, a2 + 56);
    *a1 = v7;
    *(a1 + 16) = v8;
    *(a1 + 32) = v9;
    *(a1 + 80) = v12;
    *(a1 + 96) = v13;
    v3 = v11[0];
    *(a1 + 48) = v10;
    *(a1 + 56) = v3;
    v4 = *(a1 + 64);
    if (v4)
    {
      free(v4);
    }

    v5 = v11[2];
    *(a1 + 64) = v11[1];
    *(a1 + 72) = v5;
    return a1;
  }
}

void sub_2712A8CB4(unsigned int *a1, uint64_t a2)
{
  if (a1[3] != 1 || *(a2 + 12) != 1)
  {
    v27 = 0;
    if (*a1)
    {
      v5 = a1[1] == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && a1[2] != 0)
    {
      sub_2712A8E3C(&v27, a1, a2);
    }

    return;
  }

  v7 = a1[4];
  v8 = *a1;
  if (v7 != *(a2 + 16) || v7 != v8)
  {
    v28 = *a1;
    if (v8)
    {
      v10 = a1[1] == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && a1[2] != 0)
    {
      sub_2712A2C38(&v28, a1, a2);
    }

    return;
  }

  v12 = a1[5];
  v13 = *(a2 + 20);
  v14 = a1[1];
  v15 = v14 * v7;
  if (v12 == v13 && v12 == v15)
  {
    v26 = a1[2] * v12;
    if (!v26)
    {
      return;
    }

    v23 = 4 * v26;
    v24 = *(a2 + 64);
    v25 = *(a1 + 8);
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = a1[2];
      if (v17)
      {
        v18 = *(a1 + 8);
        v19 = *(a2 + 64);
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          v21 = 4 * v12;
          v22 = 4 * v13;
          do
          {
            memmove(v19, v18, 4 * v15);
            v18 += v21;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v23 = 4 * v15;
          v24 = v19;
          v25 = v18;
LABEL_40:

          memmove(v24, v25, v23);
        }
      }
    }
  }
}

float sub_2712A8E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  if (*a2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *(a2 + 64);
    v9 = *(a3 + 64);
    v10 = 4 * *(a2 + 16);
    v11 = 4 * *(a3 + 16);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 20);
      v14 = *(a2 + 20);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = v8[1];
          v9[2] = v8[2];
          v9[3] = v8[3];
          v8 += v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_19;
      }

      v15 = 0;
      v16 = v9 + 2;
      v17 = v8 + 2;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v19[1] = v18[1];
        v8 += v14;
        v9 += v13;
        ++v15;
        v16 += v13;
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      result = v8[3];
      v9[3] = result;
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

__n128 sub_2712A8FA8(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F0C0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A9040(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F0C0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112F18;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271255604(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A32A4(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9120(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F0E0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A91B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F0E0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112E98;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256160(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A3A70(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9298(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F100[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A9330(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F100[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112E18;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256F80(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A4A00(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9410(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F120[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A94A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F120[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112D18;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_2712579B8(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A5C60(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9588(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F140[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A9620(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F140[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112C98;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271255604(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A32A4(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9700(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F160[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A9798(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F160[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112C18;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256160(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A3A70(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9878(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F180[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A9910(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F180[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112B98;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256F80(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A4A00(a2 + 8, (a3 + 8));
}

__n128 sub_2712A99F0(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F1A0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A9A88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F1A0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112B18;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_2712579B8(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A5C60(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9B68(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F1C0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A9C00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F1C0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112A98;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271255604(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A6454(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9CE0(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F1E0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A9D78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F1E0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112A18;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256160(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A6AE0(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9E58(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F200[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A9EF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F200[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112998;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256F80(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A7ABC(a2 + 8, (a3 + 8));
}

__n128 sub_2712A9FD0(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F220[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AA068(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F220[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112918;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_2712579B8(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A8BDC(a2 + 8, (a3 + 8));
}

__n128 sub_2712AA148(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F240[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AA1E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F240[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112898;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271255604(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A6454(a2 + 8, (a3 + 8));
}

__n128 sub_2712AA2C0(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F260[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AA358(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F260[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112798;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256160(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A6AE0(a2 + 8, (a3 + 8));
}

__n128 sub_2712AA438(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F280[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AA4D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F280[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112718;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256F80(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A7ABC(a2 + 8, (a3 + 8));
}

__n128 sub_2712AA5B0(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F2A0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AA648(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F2A0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112698;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_2712579B8(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A8BDC(a2 + 8, (a3 + 8));
}

__n128 sub_2712AA728(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F2C0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AA7C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F2C0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112618;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271255604(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A6454(a2 + 8, (a3 + 8));
}

__n128 sub_2712AA8A0(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F2E0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AA938(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F2E0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112598;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256160(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A6AE0(a2 + 8, (a3 + 8));
}

__n128 sub_2712AAA18(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F300[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AAAB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F300[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112518;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256F80(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A7ABC(a2 + 8, (a3 + 8));
}

__n128 sub_2712AAB90(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F320[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AAC28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F320[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112498;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_2712579B8(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A8BDC(a2 + 8, (a3 + 8));
}

__n128 sub_2712AAD08(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F340[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AADA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F340[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112418;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271255604(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A6454(a2 + 8, (a3 + 8));
}

__n128 sub_2712AAE80(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F360[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AAF18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F360[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112398;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256160(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A6AE0(a2 + 8, (a3 + 8));
}

__n128 sub_2712AAFF8(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F380[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AB090(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F380[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112318;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_271256F80(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A7ABC(a2 + 8, (a3 + 8));
}

__n128 sub_2712AB170(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[7].n128_u32[0];
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_28812F3A0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712AB208(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 112);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_28812F3A0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112218;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = *(a3 + 40);
    *(v3 + 56) = *(a3 + 56);
    *(v3 + 40) = v9;
    *(v3 + 24) = v8;
    *(v3 + 8) = v7;
    result = sub_2712579B8(v3 + 64, a3 + 64);
    *(v3 + 112) = 1;
    return result;
  }

  return sub_2712A8BDC(a2 + 8, (a3 + 8));
}

void sub_2712AB2E8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 3)
  {
    *(a1 + 56) = a2;
    *(a3 + 120) = 1;
    return;
  }

  sub_2711CC04C(v7, "invalid value for VZFileExportBehavior");
  v15 = 1;
  sub_27112D480(0xAu, v7, &v16);
  *a3 = v16;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v26 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_14;
  }

  *(a3 + 40) = 0;
  v4 = v19;
  if (v19 != 1)
  {
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v6 = v22;
    *(v5 + 16) = v21;
    *v5 = v20;
    v20 = 0uLL;
    *(a3 + 72) = v6;
    *(a3 + 80) = v23;
    *(a3 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v4)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_14;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v18;
  v18 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v5 = a3 + 48;
  *(a3 + 104) = 0;
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_7:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_2712AB4C8(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v75[0] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 24) & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
  }

  sub_271346E70(a2, &v55);
  v66[0] = a3;
  v67 = 0;
  v68 = 1;
  v8 = *(v5 + 1);
  v7 = *(v5 + 2);
  if (v8 < v7)
  {
    *v8 = off_2881327C0;
    sub_2712B1AE8(v8 + 16, &__p);
    *(v8 + 768) = 0;
    *(v8 + 808) = 0;
    if (v68 == 1)
    {
      *(v8 + 800) = -1;
      v9 = v67;
      if (v67 != -1)
      {
        v69 = (v8 + 768);
        (off_28812F970[v67])(&v69, v66);
        *(v8 + 800) = v9;
      }

      *(v8 + 808) = 1;
    }

    *(v5 + 1) = v8 + 816;
    *(v5 + 1) = v8 + 816;
    if (v68 != 1)
    {
      goto LABEL_50;
    }

LABEL_47:
    if (v67 != -1)
    {
      (off_28812F900[v67])(&v69, v66);
    }

    v67 = -1;
    goto LABEL_50;
  }

  v10 = 0xFAFAFAFAFAFAFAFBLL * ((v8 - *v5) >> 4);
  if (v10 + 1 > 0x50505050505050)
  {
    sub_271135560();
  }

  v11 = 0xFAFAFAFAFAFAFAFBLL * ((v7 - *v5) >> 4);
  v12 = 2 * v11;
  if (2 * v11 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  if (v11 >= 0x28282828282828)
  {
    v13 = 0x50505050505050;
  }

  else
  {
    v13 = v12;
  }

  v73 = v5;
  if (v13)
  {
    if (v13 <= 0x50505050505050)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v14 = 816 * v10;
  v69 = 0;
  v70 = v14;
  v71 = v14;
  v72 = 0;
  *v14 = off_2881327C0;
  sub_2712B1AE8(v14 + 16, &__p);
  *(v14 + 768) = 0;
  *(v14 + 808) = 0;
  if (v68 == 1)
  {
    *(v14 + 800) = -1;
    v15 = v67;
    if (v67 != -1)
    {
      v51.__r_.__value_.__r.__words[0] = v14 + 768;
      (off_28812F970[v67])(&v51, v66);
      *(v14 + 800) = v15;
    }

    *(v14 + 808) = 1;
  }

  v40 = v71 + 816;
  v71 += 816;
  v16 = *v5;
  v17 = *(v5 + 1);
  v51.__r_.__value_.__r.__words[0] = v5;
  v51.__r_.__value_.__l.__size_ = &v53;
  v51.__r_.__value_.__r.__words[2] = &v54;
  v52 = 0;
  v53 = v70 + v16 - v17;
  v54 = v53;
  v41 = v53;
  if (v16 != v17)
  {
    v38 = v5;
    v39 = a4;
    v18 = (v16 + 768);
    v19 = v70 + v16 - v17;
    do
    {
      *v19 = off_2881327C0;
      sub_27116E938(v19 + 16, (v18 - 188));
      *(v19 + 768) = 0;
      *(v19 + 808) = 0;
      if (*(v18 + 40) == 1)
      {
        *(v19 + 768) = 0;
        *(v19 + 800) = -1;
        v21 = v18[8];
        if (v21 != -1)
        {
          v42.__r_.__value_.__r.__words[0] = v19 + 768;
          (off_28812F910[v21])(&v42, v18);
          *(v19 + 800) = v21;
        }

        *(v19 + 808) = 1;
      }

      v19 = v54 + 816;
      v54 += 816;
      v20 = v18 + 12;
      v18 += 204;
    }

    while (v20 != v17);
    v52 = 1;
    v22 = v16;
    a4 = v39;
    v5 = v38;
    do
    {
      if (v16[808] == 1)
      {
        v23 = *(v16 + 200);
        if (v23 != -1)
        {
          (off_28812F900[v23])(&v42, v16 + 768);
        }

        *(v16 + 200) = -1;
      }

      *v16 = off_2881327C0;
      sub_271347580((v16 + 16));
      v16 += 816;
      v22 += 816;
    }

    while (v16 != v17);
    if ((v52 & 1) == 0)
    {
      v24 = *v51.__r_.__value_.__r.__words[2];
      v25 = *v51.__r_.__value_.__l.__size_;
      if (*v51.__r_.__value_.__r.__words[2] != *v51.__r_.__value_.__l.__size_)
      {
        v26 = 0;
        do
        {
          v27 = v24 + v26;
          if (*(v24 + v26 - 8) == 1)
          {
            v28 = *(v27 - 16);
            if (v28 != -1)
            {
              (off_28812F900[v28])(&v42, v27 - 48);
            }

            *(v27 - 16) = -1;
          }

          *(v27 - 816) = off_2881327C0;
          sub_271347580(v27 - 800);
          v26 -= 816;
        }

        while (v24 + v26 != v25);
      }
    }
  }

  v29 = *v5;
  *v5 = v41;
  *(v5 + 1) = v40;
  *(v5 + 2) = v72;
  if (v29)
  {
    operator delete(v29);
  }

  *(v5 + 1) = v40;
  if (v68 == 1)
  {
    goto LABEL_47;
  }

LABEL_50:
  *&v55 = off_2881327C0;
  sub_271347580(&__p);
  if (a3 < 0x200)
  {
    *(a4 + 120) = 1;
    v30 = *MEMORY[0x277D85DE8];
    return;
  }

  v54 = a3 & 0xFFFFFFFFFFFFFE00;
  sub_2718367D4(&v54, 8, "0x", 2, &v42);
  v69 = "VZStoragePreference contains invalid flags ";
  v70 = 43;
  size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v42;
  }

  else
  {
    v32 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  v71 = v32;
  v72 = size;
  v73 = " which will be ignored";
  v74 = 22;
  sub_271131230(&v69, v75, 0, 0, &v51);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v43, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v43 = v51;
  }

  v44 = 1;
  LOBYTE(v45) = 0;
  v49 = 0;
  v50 = 1;
  sub_27112D480(0xAu, &v43, &v55);
  *a4 = v55;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v65 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_70;
  }

  *(a4 + 40) = 0;
  v33 = v58;
  if (v58 == 1)
  {
    *(a4 + 16) = __p;
    *(a4 + 32) = v57;
    v57 = 0;
    __p = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v34 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v64 & 1) == 0)
    {
LABEL_63:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v33)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v34 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v64 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v35 = v61;
  *(v34 + 16) = v60;
  *v34 = v59;
  v59 = 0uLL;
  *(a4 + 72) = v35;
  *(a4 + 80) = v62;
  *(a4 + 96) = v63;
  v60 = 0;
  v62 = 0uLL;
  v63 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v33)
  {
    goto LABEL_70;
  }

LABEL_68:
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p);
  }

LABEL_70:
  if (v50 == 1)
  {
    if (v49 == 1)
    {
      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }
    }

    if (v44 == 1 && SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_81;
    }
  }

  else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_81:
    v36 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  v37 = *MEMORY[0x277D85DE8];
}

void sub_2712ABC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_2712ABD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v43 = sub_27116DCC4(v39);
  sub_27116DC5C(v43);
  *v40 = v37;
  sub_271347580(v38);
  sub_2712B175C(&a31);
  sub_2712B223C(v41 - 152);
  sub_2712B230C(&a37);
  _Unwind_Resume(a1);
}

void sub_2712ABD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v4 = a2;
    sub_271127178(v16, *a1, *(a1 + 8));
    a2 = v4;
  }

  else
  {
    *v16 = *a1;
    v17 = *(a1 + 16);
  }

  *&v10 = 1000;
  BYTE8(v10) = 1;
  LOBYTE(v11) = 1;
  *(&v11 + 1) = 0;
  v5 = *(a2 + 64);
  LOBYTE(__p[0]) = 0;
  v13 = 0;
  if (v5 == 1)
  {
    v6 = (a2 + 32);
    if (*(a2 + 24) == 1)
    {
      memset(__p, 0, sizeof(__p));
      sub_27116E754(__p, *a2, *(a2 + 8), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 8) - *a2) >> 4));
      v13 = 1;
    }

    v7 = v6[1];
    v14 = *v6;
    v15 = v7;
    if (*(a3 + 32))
    {
LABEL_8:
      v8 = *(a3 + 24);
      if (v8)
      {
        if (v8 != a3)
        {
          v9 = (*(*v8 + 16))(v8);
          v22 = v9;
          if (!v9)
          {
            goto LABEL_15;
          }

LABEL_17:
          if (v9 == v21)
          {
            v24 = &v23;
            (*(*v9 + 24))(v9, &v23);
          }

          else
          {
            v24 = v9;
            v22 = 0;
          }

LABEL_20:
          v19 = 0;
          operator new();
        }

        v22 = v21;
        (*(*v8 + 24))(v8, v21);
        v9 = v22;
        if (v22)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v22 = 0;
      }

LABEL_15:
      v24 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v14 = v10;
    v15 = v11;
    if (*(a3 + 32))
    {
      goto LABEL_8;
    }
  }

  v18 = 0;
  v20 = 0;
  operator new();
}

void sub_2712AC704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

uint64_t sub_2712AC7EC(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void **sub_2712AC884(void **result)
{
  if (*(result + 24) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result[1];
      v3 = *result;
      if (v2 != v1)
      {
        v4 = result;
        v5 = 0;
        do
        {
          v6 = &v2[v5];
          if (v2[v5 - 8] == 1)
          {
            v7 = *(v6 - 4);
            if (v7 != -1)
            {
              (off_28812F900[v7])(&v9, v6 - 48);
            }

            *(v6 - 4) = -1;
          }

          *(v6 - 102) = off_2881327C0;
          sub_271347580((v6 - 800));
          v5 -= 816;
        }

        while (&v2[v5] != v1);
        result = v4;
        v3 = *v4;
      }

      result[1] = v1;
      v8 = result;
      operator delete(v3);
      return v8;
    }
  }

  return result;
}

void sub_2712AC990()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 1;
  sub_2712AED84();
}

void sub_2712AD97C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

void sub_2712ADE4C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 0u;
  *__p = 0u;
  v2 = 0u;
  *v3 = 0u;
  if (*(a2 + 64) == 1)
  {
    sub_2711708F8(&v6, a2);
  }

  else
  {
    LOBYTE(v6) = 0;
    v7 = 0;
    LOBYTE(v8) = 0;
    v9 = 0;
  }

  sub_2712AED84();
}

void sub_2712AE9F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

void sub_2712AEBF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2712AEA0CLL);
  }

  JUMPOUT(0x2712AEAD0);
}

uint64_t sub_2712AEC08(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      if (v3 != v2)
      {
        v5 = v3 - 32;
        do
        {
          v6 = *(v3 - 8);
          if (v3 - 32 == v6)
          {
            (*(*v6 + 32))(v6);
          }

          else if (v6)
          {
            (*(*v6 + 40))(v6);
          }

          *(v3 - 800) = off_2881327C0;
          sub_271347580(v3 - 784);
          v5 -= 800;
          v3 -= 800;
        }

        while (v3 != v2);
        v4 = *(a1 + 32);
      }

      *(a1 + 40) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 24) == 1)
  {
    v7 = *a1;
    if (*a1)
    {
      v8 = *(a1 + 8);
      v9 = *a1;
      if (v8 != v7)
      {
        v10 = v8 - 96;
        v11 = v8 - 96;
        do
        {
          (**v11)(v11);
          v10 -= 96;
          v12 = v11 == v7;
          v11 -= 96;
        }

        while (!v12);
        v9 = *a1;
      }

      *(a1 + 8) = v7;
      operator delete(v9);
    }
  }

  return a1;
}

void sub_2712AEF54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void **);
  v8 = va_arg(va2, void);
  sub_2711B5360(va1);
  sub_27112F828(va2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2712AEF78(uint64_t a1)
{
  *a1 = &unk_288118CA8;
  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_2712B4104(a1 + 24);
  v2 = *(a1 + 16);
  *(a1 + 8) = &unk_28810BFE8;
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = sub_2714D78B4(v2);
    MEMORY[0x2743BF050](v3, 0x10F2C4013865076);
  }

  return a1;
}

uint64_t sub_2712AF01C(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_2712AF0B4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = 0;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(result + 40) = 0;
    if (*(a2 + 40) == 1)
    {
      v2 = *(a2 + 16);
      *(result + 32) = *(a2 + 32);
      *(result + 16) = v2;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(result + 40) = 1;
    }

    *(result + 48) = 0;
    *(result + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      v3 = *(a2 + 48);
      *(result + 64) = *(a2 + 64);
      *(result + 48) = v3;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      *(result + 72) = *(a2 + 72);
      v4 = *(a2 + 80);
      *(result + 96) = *(a2 + 96);
      *(result + 80) = v4;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *(result + 104) = 1;
    }

    *(result + 112) = 1;
  }

  *(result + 160) = 0;
  return result;
}

void sub_2712AF2E4(uint64_t a1)
{
  *a1 = &unk_288118CA8;
  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_2712B4104(a1 + 24);
  v2 = *(a1 + 16);
  *(a1 + 8) = &unk_28810BFE8;
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = sub_2714D78B4(v2);
    MEMORY[0x2743BF050](v3, 0x10F2C4013865076);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_2712AF3A8(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = v2[36];
  v4 = v2[35];
  if (v4 < 0x86BCA1AF286BCA1BLL * ((v2[37] - v3) >> 3) || v2[32])
  {
    v5 = v3 + 152 * v4;
    if (*(a1 + 152))
    {
      if (*(a1 + 112) != v5)
      {
        *(a1 + 112) = v5;
        *(a1 + 120) = 1;
        if (*(v5 + 119) < 0)
        {
          sub_271127178(__p, *(v5 + 96), *(v5 + 104));
        }

        else
        {
          v6 = *(v5 + 96);
          __p[2] = *(v5 + 112);
          *__p = v6;
        }

        if (*(a1 + 151) < 0)
        {
          operator delete(*(a1 + 128));
        }

        *(a1 + 128) = *__p;
        *(a1 + 144) = __p[2];
      }
    }

    else
    {
      if (*(v5 + 119) < 0)
      {
        sub_271127178(__p, *(v5 + 96), *(v5 + 104));
        v7 = *(a1 + 152);
      }

      else
      {
        v7 = 0;
        v8 = *(v5 + 96);
        __p[2] = *(v5 + 112);
        *__p = v8;
      }

      v10 = __p[0];
      v18[0] = __p[1];
      *(v18 + 7) = *(&__p[1] + 7);
      v11 = HIBYTE(__p[2]);
      memset(__p, 0, sizeof(__p));
      *(a1 + 112) = v5;
      *(a1 + 120) = 1;
      if (v7)
      {
        if (*(a1 + 151) < 0)
        {
          operator delete(*(a1 + 128));
          v15 = SHIBYTE(__p[2]);
          v16 = v18[0];
          *(a1 + 128) = v10;
          *(a1 + 136) = v16;
          *(a1 + 143) = *(v18 + 7);
          *(a1 + 151) = v11;
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v12 = v18[0];
          *(a1 + 128) = v10;
          *(a1 + 136) = v12;
          *(a1 + 143) = *(v18 + 7);
          *(a1 + 151) = v11;
        }
      }

      else
      {
        v13 = v18[0];
        *(a1 + 128) = v10;
        *(a1 + 136) = v13;
        *(a1 + 143) = *(v18 + 7);
        *(a1 + 151) = v11;
        *(a1 + 152) = 1;
      }
    }

    result = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      result = *result;
    }
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2712AF588(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2714CD3E0(*(a1 + 16), &v59);
  if (v70 == 1)
  {
    v4 = *(&v59 + 1);
    v3 = v59;
    v48 = v59;
    if (*(&v59 + 1))
    {
      atomic_fetch_add_explicit((*(&v59 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(&v60 + 1);
    v6 = v61;
    *&__p = off_28810C940;
    *(&__p + 1) = *(&v60 + 1);
    v50 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit(v61 + 1, 1uLL, memory_order_relaxed);
      v4 = *(&v48 + 1);
      v5 = *(&__p + 1);
      v6 = v50;
    }

    *&v17 = v3;
    *(&v17 + 1) = v4;
    v18[0] = off_28810C940;
    v18[1] = v5;
    v18[2] = v6;
    v27 = 1;
    goto LABEL_37;
  }

  v28 = v59;
  LOBYTE(v29) = 0;
  v37 = 0;
  if (v69 == 1)
  {
    sub_27112F6CC(&v29, &v60);
    v37 = 1;
  }

  sub_27123BC74(&v28, &v38);
  v48 = v38;
  LOBYTE(__p) = 0;
  v58 = 0;
  if (v47 == 1)
  {
    sub_27112F6CC(&__p, &v39);
    v58 = 1;
    v17 = v48;
    LOBYTE(v18[0]) = 0;
    v19 = 0;
    if (v51 == 1)
    {
      *v18 = __p;
      v18[2] = v50;
      v50 = 0;
      __p = 0uLL;
      v19 = 1;
      LOBYTE(v20[0]) = 0;
      v25 = 0;
      if ((v57 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(v20[0]) = 0;
      v25 = 0;
      if ((v57 & 1) == 0)
      {
LABEL_12:
        v26 = 1;
        v27 = 0;
        if (!v51)
        {
          goto LABEL_19;
        }

LABEL_17:
        if (SHIBYTE(v50) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_19;
      }
    }

    v21 = v53;
    *v20 = v52;
    v52 = 0uLL;
    v22 = v54;
    *v23 = v55;
    v24 = v56;
    v53 = 0;
    v55 = 0uLL;
    v56 = 0;
    v25 = 1;
    v26 = 1;
    v27 = 0;
    if (v51)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = v38;
    LOBYTE(v18[0]) = 0;
    v26 = 0;
    v27 = 0;
  }

LABEL_19:
  if (v47 == 1)
  {
    if (v46 == 1)
    {
      if (v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }
  }

  if (v37 == 1)
  {
    if (v36 == 1)
    {
      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }
    }

    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }
  }

LABEL_37:
  if (v70 == 1)
  {
    v7 = v61;
    if (v61 && !atomic_fetch_add(v61 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *(&v59 + 1);
    if (*(&v59 + 1) && !atomic_fetch_add((*(&v59 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else if (v69 == 1)
  {
    if (v68 == 1)
    {
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(v63);
      }
    }

    if (v62 == 1 && SHIBYTE(v61) < 0)
    {
      operator delete(v60);
    }
  }

  if (v27 == 1)
  {
    *(a2 + 120) = v27;
    *a2 = v17;
LABEL_55:
    v17 = 0uLL;
    *(a2 + 16) = off_28810C940;
    *(a2 + 24) = *&v18[1];
    *&v18[1] = 0uLL;
    goto LABEL_98;
  }

  if ((atomic_load_explicit(&qword_28087B690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B690))
  {
    v16 = std::generic_category();
    qword_28087B6C0 = 22;
    qword_28087B6C8 = v16;
    __cxa_guard_release(&qword_28087B690);
  }

  if (*(&v17 + 1) == qword_28087B6C8 && v17 == qword_28087B6C0)
  {
    LOBYTE(v48) = 0;
    LOBYTE(v56) = 0;
    if (v26 == 1)
    {
      sub_27112F6CC(&v48, v18);
      LOBYTE(v56) = 1;
    }

    sub_27112D480(0xAu, &v48, &v59);
    *a2 = v59;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (v69 == 1)
    {
      *(a2 + 40) = 0;
      v9 = v62;
      if (v62 == 1)
      {
        *(a2 + 16) = v60;
        *(a2 + 32) = v61;
        v61 = 0;
        v60 = 0uLL;
LABEL_82:
        *(a2 + 40) = 1;
        goto LABEL_83;
      }

      goto LABEL_83;
    }

    goto LABEL_88;
  }

  if ((atomic_load_explicit(&qword_28087B698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B698))
  {
    qword_28087B6D0 = 1;
    qword_28087B6D8 = &off_288132220;
    __cxa_guard_release(&qword_28087B698);
  }

  if (qword_28087B6D8 == *(&v17 + 1))
  {
    if (v17 <= 0xDu)
    {
      v11 = dword_27186CDD8[v17 & 0xF];
      LOBYTE(v48) = 0;
      LOBYTE(v56) = 0;
      if (v26 != 1)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v11 = 1;
      LOBYTE(v48) = 0;
      LOBYTE(v56) = 0;
      if (v26 != 1)
      {
LABEL_79:
        sub_27112D480(v11, &v48, &v59);
        *a2 = v59;
        *(a2 + 16) = 0;
        *(a2 + 112) = 0;
        if (v69 == 1)
        {
          *(a2 + 40) = 0;
          v9 = v62;
          if (v62 == 1)
          {
            *(a2 + 16) = v60;
            *(a2 + 32) = v61;
            v61 = 0;
            v60 = 0uLL;
            goto LABEL_82;
          }

LABEL_83:
          *(a2 + 48) = 0;
          *(a2 + 104) = 0;
          if (v68)
          {
            v13 = v65;
            *(a2 + 64) = v64;
            *(a2 + 48) = v63;
            v63 = 0uLL;
            *(a2 + 72) = v13;
            *(a2 + 80) = v66;
            *(a2 + 96) = v67;
            v64 = 0;
            v66 = 0uLL;
            v67 = 0;
            *(a2 + 104) = 1;
          }

          *(a2 + 112) = 1;
          *(a2 + 120) = 0;
          if (v9 && SHIBYTE(v61) < 0)
          {
            operator delete(v60);
          }

          goto LABEL_89;
        }

LABEL_88:
        *(a2 + 120) = 0;
LABEL_89:
        if (v56 == 1)
        {
          if (BYTE8(v55) == 1)
          {
            if (SBYTE7(v55) < 0)
            {
              operator delete(v53);
            }

            if (SBYTE7(v52) < 0)
            {
              operator delete(v50);
            }
          }

          if (BYTE8(__p) == 1 && SBYTE7(__p) < 0)
          {
            operator delete(v48);
          }
        }

        goto LABEL_98;
      }
    }

    sub_27112F6CC(&v48, v18);
    LOBYTE(v56) = 1;
    goto LABEL_79;
  }

  *a2 = 0;
  v10 = v27;
  *(a2 + 120) = v27;
  if (v10 == 1)
  {
    *a2 = v17;
    goto LABEL_55;
  }

  *a2 = v17;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v26 == 1)
  {
    *(a2 + 40) = 0;
    if (v19 == 1)
    {
      *(a2 + 16) = *v18;
      *(a2 + 32) = v18[2];
      memset(v18, 0, sizeof(v18));
      *(a2 + 40) = 1;
    }

    *(a2 + 48) = 0;
    *(a2 + 104) = 0;
    if (v25 == 1)
    {
      v12 = v22;
      *(a2 + 64) = v21;
      *(a2 + 48) = *v20;
      v20[0] = 0;
      v20[1] = 0;
      *(a2 + 72) = v12;
      *(a2 + 80) = *v23;
      *(a2 + 96) = v24;
      v21 = 0;
      v23[0] = 0;
      v23[1] = 0;
      v24 = 0;
      *(a2 + 104) = 1;
    }

    *(a2 + 112) = 1;
  }

LABEL_98:
  if (v27 == 1)
  {
    v14 = v18[2];
    if (v18[2] && !atomic_fetch_add(v18[2] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v15 = *(&v17 + 1);
      if (!*(&v17 + 1))
      {
        return;
      }
    }

    else
    {
      v15 = *(&v17 + 1);
      if (!*(&v17 + 1))
      {
        return;
      }
    }

    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  else if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }
    }

    if (v19 == 1 && SHIBYTE(v18[2]) < 0)
    {
      operator delete(v18[0]);
    }
  }
}

void sub_2712AFE98(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  sub_27112D66C(&a60);
  sub_271158CF0(&a11);
  switch(a2)
  {
    case 5:
      v63 = __cxa_begin_catch(a1);
      a10 = (*(*v63 + 16))(v63);
      sub_27113604C(&__p, &a10);
      sub_271369D54(&__p, &a11);
      break;
    case 4:
      v64 = __cxa_begin_catch(a1);
      a10 = (*(*v64 + 16))(v64);
      sub_27113604C(&__p, &a10);
      sub_27136A868(&__p, &a11);
      break;
    case 3:
      v65 = __cxa_begin_catch(a1);
      a10 = (*(*v65 + 16))(v65);
      sub_27113604C(&__p, &a10);
      sub_271369C38(&__p, &a11);
      break;
    default:
      v66 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        a10 = (*(*v66 + 16))(v66);
        sub_27113604C(&__p, &a10);
        sub_271369C38(&__p, &a11);
      }

      else
      {
        LOBYTE(__p) = 0;
        a48 = 0;
        sub_271369A00(&__p, &a11);
      }

      break;
  }

  sub_271238E60(v60, &a11);
  sub_27112D71C(&a11);
  if (a48 == 1 && a47 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2712AFE24);
}

void sub_2712B00B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (a48 == 1 && a47 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  sub_271120E50(a1);
}

void sub_2712B09F0(void *a1)
{
  sub_27112D66C(v2);
  if (*(v1 + 56) == 1)
  {
    sub_2713463A0(v1);
    sub_271120E50(a1);
  }

  sub_271120E50(a1);
}

void sub_2712B0DF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = v3[35];
  v5 = 0x86BCA1AF286BCA1BLL * ((v3[37] - v3[36]) >> 3);
  if (v4 < v5 || v3[32])
  {
    v6 = v4 + 1;
    v3[35] = v6;
    if (v6 >= v5)
    {
      sub_2714CBBD0(v3);
    }

    sub_2714CC924(v3);
  }

  *(a2 + 120) = 1;
}

void sub_2712B1180(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  while (1)
  {
    v6 = v5[36];
    v7 = v5[35];
    v8 = 0x86BCA1AF286BCA1BLL * ((v5[37] - v6) >> 3);
    if (v7 >= v8 && !v5[32])
    {
      break;
    }

    if (*(v6 + 152 * v7) >= a2)
    {
      break;
    }

    v9 = v7 + 1;
    v5[35] = v9;
    if (v9 >= v8)
    {
      sub_2714CBBD0(v5);
    }
  }

  *(a3 + 120) = 1;
}

uint64_t sub_2712B1534@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(*(result + 16) + 280) = 0;
  *(a2 + 120) = 1;
  return result;
}

void sub_2712B1734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2712B175C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = 0;
      do
      {
        v7 = v4 + v6;
        if (*(v4 + v6 - 8) == 1)
        {
          v8 = *(v7 - 16);
          if (v8 != -1)
          {
            (off_28812F900[v8])(&v10, v7 - 48);
          }

          *(v7 - 16) = -1;
        }

        *(v7 - 816) = off_2881327C0;
        sub_271347580(v7 - 800);
        v6 -= 816;
      }

      while (v4 + v6 != v5);
    }
  }

  return a1;
}

uint64_t sub_2712B1848(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    v1 = *(result + 80);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812F8E0[v1])(&v3, result + 16);
      result = v2;
    }

    *(result + 80) = -1;
  }

  return result;
}

uint64_t sub_2712B18B4(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = *(result + 56);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812F8D0[v1])(&v3);
      result = v2;
    }

    *(result + 56) = -1;
  }

  return result;
}

uint64_t sub_2712B191C(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 != -1)
    {
      v2 = result;
      (off_28812F8C0[v1])(&v3);
      result = v2;
    }

    *(result + 24) = -1;
  }

  return result;
}

uint64_t sub_2712B1984(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != -1)
  {
    (off_28812F8E0[v2])(&v4, a1);
  }

  *(a1 + 64) = -1;
  return a1;
}

uint64_t sub_2712B19E0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F8F0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

uint64_t sub_2712B1A3C(uint64_t result)
{
  if (*(result + 88) == 1)
  {
    if ((*(result + 87) & 0x80000000) == 0)
    {
      if ((*(result + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v2 = result;
      operator delete(*(result + 32));
      result = v2;
      if (*(v2 + 24) != 1)
      {
        return result;
      }

      goto LABEL_5;
    }

    v1 = result;
    operator delete(*(result + 64));
    result = v1;
    if (*(v1 + 55) < 0)
    {
      goto LABEL_8;
    }
  }

LABEL_4:
  if (*(result + 24) != 1)
  {
    return result;
  }

LABEL_5:
  if (*(result + 23) < 0)
  {
    v3 = result;
    operator delete(*result);
    return v3;
  }

  return result;
}

uint64_t sub_2712B1AE8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(a1 + 8) = 0;
    *(a1 + 40) = -1;
    v4 = *(a2 + 40);
    if (v4 != -1)
    {
      v18 = a1 + 8;
      (off_28812F920[v4])(&v18, a2 + 8);
      *(a1 + 40) = v4;
    }

    *(a1 + 48) = 1;
  }

  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v6;
  *(a1 + 56) = v5;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(a1 + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      v7 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v7;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 72) = 0;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = 1;
    }

    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    *(a1 + 144) = -1;
    v8 = *(a2 + 144);
    if (v8 != -1)
    {
      v18 = a1 + 120;
      (off_28812F930[v8])(&v18, a2 + 120);
      *(a1 + 144) = v8;
    }

    *(a1 + 152) = 1;
  }

  *(a1 + 160) = 0;
  *(a1 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    *(a1 + 216) = -1;
    v9 = *(a2 + 216);
    if (v9 != -1)
    {
      v18 = a1 + 160;
      (off_28812F940[v9])(&v18, a2 + 160);
      *(a1 + 216) = v9;
    }

    *(a1 + 224) = 1;
  }

  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    *(a1 + 232) = off_28810C940;
    *(a1 + 240) = *(a2 + 240);
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a1 + 256) = 1;
  }

  *(a1 + 264) = 0;
  *(a1 + 312) = 0;
  if (*(a2 + 312) == 1)
  {
    *(a1 + 272) = 0;
    *(a1 + 304) = -1;
    v10 = *(a2 + 304);
    if (v10 != -1)
    {
      v18 = a1 + 272;
      (off_28812F920[v10])(&v18, a2 + 272);
      *(a1 + 304) = v10;
    }

    *(a1 + 312) = 1;
  }

  *(a1 + 320) = 0;
  *(a1 + 416) = 0;
  if (*(a2 + 416) == 1)
  {
    *(a1 + 336) = 0;
    *(a1 + 400) = -1;
    v11 = *(a2 + 400);
    if (v11 != -1)
    {
      v18 = a1 + 336;
      (off_28812F950[v11])(&v18, a2 + 336);
      *(a1 + 400) = v11;
    }

    *(a1 + 416) = 1;
  }

  *(a1 + 432) = 0;
  *(a1 + 576) = 0;
  if (*(a2 + 576) == 1)
  {
    *(a1 + 448) = 0;
    *(a1 + 560) = -1;
    v12 = *(a2 + 560);
    if (v12 != -1)
    {
      v18 = a1 + 448;
      (off_28812F960[v12])(&v18, a2 + 448);
      *(a1 + 560) = v12;
    }

    *(a1 + 576) = 1;
  }

  *(a1 + 592) = 0;
  *(a1 + 624) = 0;
  if (*(a2 + 624) == 1)
  {
    *(a1 + 616) = 0;
    if (*(a2 + 616) == 1)
    {
      *(a1 + 592) = 0;
      *(a1 + 600) = 0;
      *(a1 + 608) = 0;
      *(a1 + 592) = *(a2 + 592);
      *(a1 + 608) = *(a2 + 608);
      *(a2 + 592) = 0;
      *(a2 + 600) = 0;
      *(a2 + 608) = 0;
      *(a1 + 616) = 1;
    }

    *(a1 + 624) = 1;
  }

  *(a1 + 632) = 0;
  *(a1 + 680) = 0;
  if (*(a2 + 680) == 1)
  {
    *(a1 + 640) = 0;
    *(a1 + 672) = -1;
    v13 = *(a2 + 672);
    if (v13 != -1)
    {
      v18 = a1 + 640;
      (off_28812F920[v13])(&v18, a2 + 640);
      *(a1 + 672) = v13;
    }

    *(a1 + 680) = 1;
  }

  v14 = *(a2 + 688);
  v15 = *(a2 + 704);
  v16 = *(a2 + 720);
  *(a1 + 729) = *(a2 + 729);
  *(a1 + 704) = v15;
  *(a1 + 720) = v16;
  *(a1 + 688) = v14;
  return a1;
}

void sub_2712B1EBC(_Unwind_Exception *a1)
{
  sub_2712B19E0(v5);
  sub_27116F860((v1 + 432));
  sub_2712B1848((v1 + 320));
  sub_27116EEC8((v1 + 264));
  if (v1[256] == 1)
  {
    sub_2714FBE4C(v4);
  }

  sub_2712B18B4(v3);
  sub_2712B191C(v2);
  if (v1[112] == 1 && v1[104] == 1 && v1[95] < 0)
  {
    operator delete(*v6);
  }

  sub_27116EEC8(v1);
  _Unwind_Resume(a1);
}

__n128 sub_2712B1F64(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 24) = 0;
  if (a2[1].n128_u8[8] == 1)
  {
    result = *a2;
    *(v2 + 16) = a2[1].n128_u64[0];
    *v2 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(v2 + 24) = 1;
  }

  return result;
}

__n128 sub_2712B1FA0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

__n128 sub_2712B1FC0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

__n128 sub_2712B1FE0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

__n128 sub_2712B2000(__n128 **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = *(a2 + 16);
  *v2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2[1].n128_u8[8] = 0;
  v2[3].n128_u8[0] = 0;
  if (*(a2 + 48) == 1)
  {
    result = *(a2 + 24);
    v2[2].n128_u64[1] = *(a2 + 40);
    *(v2 + 24) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v2[3].n128_u8[0] = 1;
  }

  return result;
}

__n128 sub_2712B2058(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

__n128 sub_2712B2078(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 48) = 0;
  if (a2[3].n128_u8[0] == 1)
  {
    _X2 = 0;
    _X3 = 0;
    result = *a2;
    *(v2 + 16) = a2[1].n128_u64[0];
    *v2 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X9] }

    *(v2 + 32) = _X2;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }

  return result;
}

__n128 sub_2712B20CC(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t *sub_2712B20EC(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  *v2 = 0;
  *(v2 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *v2 = 0;
    *(v2 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v3 = *a2;
      *(v2 + 16) = *(a2 + 2);
      *v2 = v3;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(v2 + 24) = 1;
    }

    *(v2 + 32) = 0;
    *(v2 + 80) = 0;
    if (*(a2 + 80) == 1)
    {
      _X2 = 0;
      _X3 = 0;
      v6 = a2[2];
      *(v2 + 48) = *(a2 + 6);
      *(v2 + 32) = v6;
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      *(a2 + 4) = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X9] }

      *(v2 + 64) = _X2;
      *(v2 + 72) = 0;
      *(v2 + 80) = 1;
    }

    *(v2 + 96) = 1;
  }

  return result;
}

__n128 sub_2712B2194(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t *sub_2712B21C4(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = a2 + 24;
  v5 = *(a2 + 24);
  if (!v5)
  {
    v4 = v3 + 24;
    goto LABEL_5;
  }

  if (v5 != a2)
  {
    *(v3 + 24) = v5;
LABEL_5:
    *v4 = 0;
    return result;
  }

  *(v3 + 24) = v3;
  return (*(**v4 + 24))();
}

uint64_t sub_2712B223C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 816;
    if (*(i - 8) == 1)
    {
      v4 = *(i - 16);
      if (v4 != -1)
      {
        (off_28812F900[v4])(&v6, i - 48);
      }

      *(i - 16) = -1;
    }

    *(i - 816) = off_2881327C0;
    sub_271347580(i - 800);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2712B230C(uint64_t a1)
{
  if (*(a1 + 808) == 1)
  {
    v2 = *(a1 + 800);
    if (v2 != -1)
    {
      (off_28812F900[v2])(&v4, a1 + 768);
    }

    *(a1 + 800) = -1;
  }

  *a1 = off_2881327C0;
  sub_271347580(a1 + 16);
  return a1;
}

void *sub_2712B2398(void *a1)
{
  *a1 = &unk_288107998;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_2712B2444(void *a1)
{
  *a1 = &unk_288107998;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712B25EC(uint64_t result, void *a2)
{
  *a2 = &unk_288107998;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_2712B26BC(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_2712B271C(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void sub_2712B27CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2714FBF50(a3);
  sub_2714FCC00(a3);
  v14 = 0;
  v7 = v13;
  v8 = "while exporting data ";
  v9 = v13;
  v10 = "while exporting data ";
  v11 = "while exporting data ";
  __dst[0] = &v7;
  sub_2712B31F0(__dst);
  sub_271136C48(&v12, v13, &v6);
  v7 = v13;
  v8 = " of type ";
  v9 = v13;
  v10 = " of type ";
  v11 = " of type ";
  if (v14 != -1)
  {
    __dst[0] = &v7;
    (*(&off_28812F9B0 + v14))(__dst, v13);
    __dst[0] = &v4;
    __dst[1] = &v5;
    v7 = v13;
    v8 = "{";
    v9 = v13;
    v10 = "{";
    v11 = "{";
    if (v14 != -1)
    {
      v17 = &v7;
      (*(&off_28812F9C8 + v14))(&v17, v13);
      LOBYTE(v7) = 1;
      v8 = v13;
      v9 = &v15;
      sub_2712B32E4(__dst, &v7);
      v7 = v13;
      v8 = "}";
      v9 = v13;
      v10 = "}";
      v11 = "}";
      if (v14 != -1)
      {
        v17 = &v7;
        (*(&off_28812F9C8 + v14))(&v17, v13);
        v7 = v13;
        v8 = " to directory ";
        v9 = v13;
        v10 = " to directory ";
        v11 = " to directory ";
        if (v14 != -1)
        {
          __dst[0] = &v7;
          (*(&off_28812F9F8 + v14))(__dst, v13);
          operator new();
        }

        sub_2711308D4();
      }
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2712B2D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_27112D71C(&a23);
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2712B2E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4cv3d2vl13visual_logger33CreateDestinationWithFileExporterERKNSt3__14__fs10filesystem4pathENS2_8optionalINS1_17FileExportOptionsEEENS8_INS2_8functionIFvRKNS_3esn5ErrorEEEEEENSC_11OptionalRefINS_3kit2fs11IFilesystemEEEENK3$_0clEvEUlS7_RKNSK_3viz10SharedDataERKNSC_6ErrorCINSP_11IOErrorCodeEEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4cv3d2vl13visual_logger33CreateDestinationWithFileExporterERKNSt3__14__fs10filesystem4pathENS2_8optionalINS1_17FileExportOptionsEEENS8_INS2_8functionIFvRKNS_3esn5ErrorEEEEEENSC_11OptionalRefINS_3kit2fs11IFilesystemEEEENK3$_0clEvEUlS7_RKNSK_3viz10SharedDataERKNSC_6ErrorCINSP_11IOErrorCodeEEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4cv3d2vl13visual_logger33CreateDestinationWithFileExporterERKNSt3__14__fs10filesystem4pathENS2_8optionalINS1_17FileExportOptionsEEENS8_INS2_8functionIFvRKNS_3esn5ErrorEEEEEENSC_11OptionalRefINS_3kit2fs11IFilesystemEEEENK3$_0clEvEUlS7_RKNSK_3viz10SharedDataERKNSC_6ErrorCINSP_11IOErrorCodeEEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4cv3d2vl13visual_logger33CreateDestinationWithFileExporterERKNSt3__14__fs10filesystem4pathENS2_8optionalINS1_17FileExportOptionsEEENS8_INS2_8functionIFvRKNS_3esn5ErrorEEEEEENSC_11OptionalRefINS_3kit2fs11IFilesystemEEEENK3$_0clEvEUlS7_RKNSK_3viz10SharedDataERKNSC_6ErrorCINSP_11IOErrorCodeEEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2712B2E88(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v17 = *a1;
  if (*(a1 + 112) == 1)
  {
    sub_27112F6CC(__p, a1 + 1);
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    v20 = 0;
    LOBYTE(v21) = 0;
    v25 = 0;
  }

  sub_27184899C(__p, a2, &v26);
  v10 = v28;
  if (v28 == 1)
  {
    v11 = v26;
    v37[0] = v27;
    *(v37 + 7) = *(&v27 + 7);
    v5 = HIBYTE(v27);
    v27 = 0uLL;
    v26 = 0;
    v12 = v34;
    if (v34 != 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    v13 = v29;
    v36[0] = v30;
    *(v36 + 7) = *(&v30 + 7);
    v7 = HIBYTE(v30);
    v29 = 0;
    v30 = 0uLL;
    v8 = v31;
    v6 = v32;
    v35[0] = v33;
    *(v35 + 7) = *(&v33 + 7);
    v9 = HIBYTE(v33);
    v32 = 0;
    v33 = 0uLL;
    *a3 = v17;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 40) = 0;
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = 0;
  v12 = v34;
  if (v34 == 1)
  {
    goto LABEL_9;
  }

LABEL_6:
  v13 = 0;
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  *(a3 + 40) = 0;
  if (v10)
  {
LABEL_10:
    v14 = v37[0];
    *(a3 + 16) = v11;
    *(a3 + 24) = v14;
    *(a3 + 31) = *(v37 + 7);
    *(a3 + 39) = v5;
    v37[0] = 0;
    *(v37 + 7) = 0;
    *(a3 + 40) = 1;
    v11 = 0;
    v5 = 0;
  }

LABEL_11:
  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  if (v12)
  {
    v15 = v36[0];
    *(a3 + 48) = v13;
    *(a3 + 56) = v15;
    *(a3 + 63) = *(v36 + 7);
    *(a3 + 71) = v7;
    v36[0] = 0;
    *(v36 + 7) = 0;
    *(a3 + 72) = v8;
    *(a3 + 80) = v6;
    *(a3 + 88) = v35[0];
    *(a3 + 95) = *(v35 + 7);
    *(a3 + 103) = v9;
    v35[0] = 0;
    *(v35 + 7) = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(a3 + 112) = 1;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v5 < 0)
  {
    operator delete(v11);
    if ((v34 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_19:
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_32:
    operator delete(v29);
    if (v28 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  operator delete(v32);
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if (v28 != 1)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

LABEL_24:
  if (v25 != 1)
  {
    goto LABEL_27;
  }

  if (v24 < 0)
  {
    operator delete(v23);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_27:
      if (v20 != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v21);
  if (v20 != 1)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_30:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_2712B31C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712B1A3C(va);
  _Unwind_Resume(a1);
}

void sub_2712B31D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_2712B1A3C(va1);
  sub_2712B1A3C(va);
  _Unwind_Resume(a1);
}

size_t sub_2712B31F0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812F980[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2712B32E4(std::string **a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    v12 = *(a2 + 8);
    v13 = ",";
    v14 = v12;
    v15 = ",";
    v16 = ",";
    v5 = *(v12 + 24);
    if (v5 == -1)
    {
      goto LABEL_11;
    }

    v11.__r_.__value_.__r.__words[0] = &v12;
    (*(&off_28812F9C8 + v5))(&v11);
  }

  *a2 = 0;
  v12 = *(a2 + 8);
  v13 = v4;
  v14 = v12;
  v15 = v4;
  v16 = v4;
  v6 = *(v12 + 24);
  if (v6 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (off_28812F9E0[v6])(&v11);
  v7 = a1[1];
  if (*a2)
  {
    goto LABEL_8;
  }

  v12 = *(a2 + 8);
  v13 = ",";
  v14 = v12;
  v15 = ",";
  v16 = ",";
  v8 = *(v12 + 24);
  if (v8 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28812F9C8 + v8))(&v11);
LABEL_8:
  *a2 = 0;
  v9 = *(a2 + 8);
  std::to_string(&v11, *v7);
  v12 = v9;
  v13 = &v11;
  v14 = v9;
  v15 = &v11;
  v16 = &v11;
  v10 = *(v9 + 24);
  if (v10 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_28812F998[v10])(&v17, v9);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_2712B346C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712B3488(void *a1, _BYTE *a2, _BYTE *a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v5 = a1;
  v25 = 0;
  v26 = 0x100000000000000;
  v6 = 1;
  __p = a4;
  if (a2 == a3)
  {
LABEL_27:
    v17 = v6;
    HIBYTE(v26) = (v6 + 1) & 0x7F;
    p_p = &__p;
  }

  else
  {
    v7 = a2;
    do
    {
      while (1)
      {
        v9 = *v7;
        v10 = HIBYTE(v26);
        if (v9 == a5 || v9 == a4)
        {
          if (v26 < 0)
          {
            v12 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v25 == v12)
            {
              if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
              {
LABEL_14:
                operator new();
              }

              goto LABEL_41;
            }

            v13 = __p;
            v10 = v25++;
          }

          else
          {
            if (HIBYTE(v26) == 22)
            {
              goto LABEL_14;
            }

            HIBYTE(v26) = (HIBYTE(v26) + 1) & 0x7F;
            v13 = &__p;
          }

          *&v13[v10] = a5;
          LOBYTE(v9) = *v7;
          LODWORD(v10) = HIBYTE(v26);
        }

        if ((v10 & 0x80) != 0)
        {
          break;
        }

        if (v10 == 22)
        {
          goto LABEL_23;
        }

        HIBYTE(v26) = (v10 + 1) & 0x7F;
        v8 = &__p + v10;
        *v8 = v9;
        v8[1] = 0;
        if (++v7 == a3)
        {
          goto LABEL_25;
        }
      }

      v14 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v25 == v14)
      {
        if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
        {
LABEL_23:
          operator new();
        }

        goto LABEL_41;
      }

      v15 = v25++;
      v16 = __p + v15;
      *v16 = v9;
      v16[1] = 0;
      ++v7;
    }

    while (v7 != a3);
LABEL_25:
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      v6 = HIBYTE(v26);
      v5 = a1;
      if (HIBYTE(v26) != 22)
      {
        goto LABEL_27;
      }

LABEL_30:
      operator new();
    }

    v19 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v25 == v19)
    {
      if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_30;
      }

LABEL_41:
      sub_271120DA8();
    }

    v5 = a1;
    p_p = __p;
    v17 = v25++;
  }

  *&p_p[v17] = a4;
  if (v26 >= 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if (v26 >= 0)
  {
    v21 = HIBYTE(v26);
  }

  else
  {
    v21 = v25;
  }

  result = sub_271120E64(v5, v20, v21);
  if (SHIBYTE(v26) < 0)
  {
    v23 = result;
    operator delete(__p);
    return v23;
  }

  return result;
}

void sub_2712B38D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2712B38F4(void **result)
{
  if (*(result + 24) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result[1];
      v3 = *result;
      if (v2 != v1)
      {
        v4 = result;
        v5 = 0;
        do
        {
          v6 = &v2[v5];
          if (v2[v5 - 8] == 1)
          {
            v7 = *(v6 - 4);
            if (v7 != -1)
            {
              (off_28812F900[v7])(&v9, v6 - 48);
            }

            *(v6 - 4) = -1;
          }

          *(v6 - 102) = off_2881327C0;
          sub_271347580((v6 - 800));
          v5 -= 816;
        }

        while (&v2[v5] != v1);
        result = v4;
        v3 = *v4;
      }

      result[1] = v1;
      v8 = result;
      operator delete(v3);
      return v8;
    }
  }

  return result;
}

void sub_2712B3A20(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_2712B3A7C(void *a1)
{
  *a1 = &unk_288108440;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_2712B3B28(void *a1)
{
  *a1 = &unk_288108440;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712B3CD0(uint64_t result, void *a2)
{
  *a2 = &unk_288108440;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_2712B3DA0(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_2712B3E00(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void sub_2712B3EB0(uint64_t a1, __int128 *a2)
{
  BYTE7(v4[1]) = 20;
  strcpy(v4, "while importing data");
  sub_2712B2E88(a2, v4, v5);
  sub_27123BC74(v5, v15);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_27112AFFC();
  }

  (*(*v3 + 48))(v3, v15);
  if (v24 == 1)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }

    if (v22 < 0)
    {
      operator delete(v21);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_6:
        if (v18 != 1)
        {
          goto LABEL_9;
        }

LABEL_7:
        if (v17 < 0)
        {
          operator delete(v16);
        }

        goto LABEL_9;
      }
    }

    else if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(v19);
    if (v18 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  if (v14 != 1)
  {
    goto LABEL_16;
  }

  if (v13 == 1)
  {
    if ((v12 & 0x80000000) == 0)
    {
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      operator delete(v9);
      if (v8 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    operator delete(v11);
    if (v10 < 0)
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  if (v8 != 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v7 < 0)
  {
    operator delete(__p);
  }

LABEL_16:
  if (SBYTE7(v4[1]) < 0)
  {
    operator delete(*&v4[0]);
  }
}

void sub_2712B4050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_27112D71C(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2712B408C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4cv3d2vl13visual_logger12FileImporter6CreateERKNSt3__14__fs10filesystem4pathENS3_8optionalINS1_17FileImportOptionsEEENS9_INS3_8functionIFvRKNS_3esn5ErrorEEEEEERKNS_3kit2fs11IFilesystemEENK3$_0clEvEUlRKNSD_6ErrorCINSK_3viz11IOErrorCodeEEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4cv3d2vl13visual_logger12FileImporter6CreateERKNSt3__14__fs10filesystem4pathENS3_8optionalINS1_17FileImportOptionsEEENS9_INS3_8functionIFvRKNS_3esn5ErrorEEEEEERKNS_3kit2fs11IFilesystemEENK3$_0clEvEUlRKNSD_6ErrorCINSK_3viz11IOErrorCodeEEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4cv3d2vl13visual_logger12FileImporter6CreateERKNSt3__14__fs10filesystem4pathENS3_8optionalINS1_17FileImportOptionsEEENS9_INS3_8functionIFvRKNS_3esn5ErrorEEEEEERKNS_3kit2fs11IFilesystemEENK3$_0clEvEUlRKNSD_6ErrorCINSK_3viz11IOErrorCodeEEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4cv3d2vl13visual_logger12FileImporter6CreateERKNSt3__14__fs10filesystem4pathENS3_8optionalINS1_17FileImportOptionsEEENS9_INS3_8functionIFvRKNS_3esn5ErrorEEEEEERKNS_3kit2fs11IFilesystemEENK3$_0clEvEUlRKNSD_6ErrorCINSK_3viz11IOErrorCodeEEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_2712B4104(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(a1 + 64);
      v4 = *(a1 + 56);
      if (v3 != v2)
      {
        v5 = v3 - 32;
        do
        {
          v6 = *(v3 - 8);
          if (v3 - 32 == v6)
          {
            (*(*v6 + 32))(v6);
          }

          else if (v6)
          {
            (*(*v6 + 40))(v6);
          }

          *(v3 - 800) = off_2881327C0;
          sub_271347580(v3 - 784);
          v5 -= 800;
          v3 -= 800;
        }

        while (v3 != v2);
        v4 = *(a1 + 56);
      }

      *(a1 + 64) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 24);
      if (v8 != v7)
      {
        v10 = v8 - 96;
        v11 = v8 - 96;
        do
        {
          (**v11)(v11);
          v10 -= 96;
          v12 = v11 == v7;
          v11 -= 96;
        }

        while (!v12);
        v9 = *(a1 + 24);
      }

      *(a1 + 32) = v7;
      operator delete(v9);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2712B42A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v5 = *(a2 + 8);
  if (*(v4 + 24) == 1)
  {
    sub_2712B43E8(&v11, v5, v4);
    v6 = a1[1];
    if (*a2)
    {
LABEL_8:
      *a2 = 0;
      v7 = *(a2 + 8);
      if (*(v6 + 16) == 1)
      {
        v12 = v6;
        sub_2712B4AC4(&v13, v7, &v12);
        v8 = a1[2];
        if (*a2)
        {
LABEL_13:
          *a2 = 0;
          v10 = *(a2 + 8);
          sub_2712B4B9C();
        }
      }

      else
      {
        sub_271120E64(*v7, "nullopt", 7);
        v9 = a1[2];
        if (*a2)
        {
          goto LABEL_13;
        }
      }

      sub_271120E64(**(a2 + 8), ",", 1);
      goto LABEL_13;
    }
  }

  else
  {
    sub_271120E64(*v5, "nullopt", 7);
    v6 = a1[1];
    if (*a2)
    {
      goto LABEL_8;
    }
  }

  sub_271120E64(**(a2 + 8), ",", 1);
  goto LABEL_8;
}

void *sub_2712B43E8(uint64_t a1, void **a2, uint64_t *a3)
{
  v3 = *a2;
  if (a3[1] - *a3 > 815)
  {
    sub_271120E64(v3, "{", 1);
    v7 = *a3;
    sub_271120E64(*a2, "{", 1);
    sub_2712B4630();
  }

  return sub_271120E64(v3, "{}", 2);
}

void sub_2712B4800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712B4A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712B4A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = "f(){*}";
  }

  else
  {
    v3 = "f(){nullptr}";
  }

  v4 = **(*a1 + 8);
  if (v2)
  {
    v5 = 6;
  }

  else
  {
    v5 = 12;
  }

  return sub_271120E64(v4, v3, v5);
}

void *sub_2712B4AC4(uint64_t a1, void **a2, unint64_t **a3)
{
  sub_271120E64(*a2, "{", 1);
  if (*(*a3 + 8) == 1)
  {
    std::to_string(&v8, **a3);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v8;
    }

    else
    {
      v5 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    sub_271120E64(*a2, v5, size);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_271120E64(*a2, "nullopt", 7);
  }

  return sub_271120E64(*a2, "}", 1);
}

void sub_2712B4B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712B4DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712B4DFC(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v5 = *(a2 + 8);
  if (*(v4 + 24) != 1)
  {
    sub_271120E64(*v5, "nullopt", 7);
    v7 = a1[1];
    if (*a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = *v5;
  if (v4[1] - *v4 > 767)
  {
    sub_271120E64(v6, "{", 1);
    v10 = *v4;
    sub_2712B4630();
  }

  sub_271120E64(v6, "{}", 2);
  v7 = a1[1];
  if ((*a2 & 1) == 0)
  {
LABEL_8:
    sub_271120E64(**(a2 + 8), ",", 1);
  }

LABEL_9:
  *a2 = 0;
  v8 = *(a2 + 8);
  if (*(v7 + 24) == 1)
  {
    return sub_2712B4FB4(&v11, v8, v7);
  }

  else
  {
    return sub_271120E64(*v8, "nullopt", 7);
  }
}

void *sub_2712B4FB4(uint64_t a1, void **a2, uint64_t *a3)
{
  v4 = *a2;
  if (a3[1] - *a3 > 799)
  {
    sub_271120E64(v4, "{", 1);
    v8 = *a3;
    sub_271120E64(*a2, "{", 1);
    sub_2712B4630();
  }

  return sub_271120E64(v4, "{}", 2);
}

void sub_2712B5198(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881066C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2712B51EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 112) == 1)
    {
      (*(**(*(v2 + 288) + 8) + 24))(*(*(v2 + 288) + 8));
    }

    if (*(v2 + 456) == 1)
    {
      sub_2714D8B28(v2 + 416, 0, 0);
    }
  }

  v3 = *(a1 + 40);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_2712B52D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120) == 1)
  {
    *(a1 + 120) = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
LABEL_3:
    *(a1 + 32) = &unk_288131488;
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *a1 = &unk_288130A18;
    *(a1 + 24) = &unk_288130A38;
    return;
  }

  if ((atomic_load_explicit(&qword_28087B680, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = __cxa_guard_acquire(&qword_28087B680);
    a2 = v17;
    if (v18)
    {
      v19 = std::generic_category();
      qword_28087B6A0 = 22;
      qword_28087B6A8 = v19;
      __cxa_guard_release(&qword_28087B680);
      a2 = v17;
    }
  }

  v3 = (a2 + 8);
  if (*(a2 + 8) == qword_28087B6A8 && *a2 == qword_28087B6A0)
  {
    LOBYTE(v32[0]) = 0;
    v40 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(v32, (a2 + 16));
      v40 = 1;
    }

    sub_27112D480(0xAu, v32, &v41);
    *a1 = v41;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v51 != 1)
    {
      *(a1 + 120) = 0;
      goto LABEL_26;
    }

    *(a1 + 40) = 0;
    v8 = v44;
    if (v44 == 1)
    {
      *(a1 + 16) = v42;
      *(a1 + 32) = v43;
      v43 = 0;
      v42 = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v9 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v50 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v9 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v50 & 1) == 0)
      {
LABEL_19:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v8)
        {
LABEL_26:
          if (v40 != 1)
          {
            return;
          }

          if (v39 == 1)
          {
            if (v38 < 0)
            {
              operator delete(__p);
            }

            if (v36 < 0)
            {
              operator delete(v35);
            }
          }

          if (v34 != 1 || (v33 & 0x80000000) == 0)
          {
            return;
          }

          v11 = v32[0];
LABEL_65:
          operator delete(v11);
          return;
        }

LABEL_24:
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
        }

        goto LABEL_26;
      }
    }

    v10 = v47;
    *(v9 + 16) = v46;
    *v9 = v45;
    v45 = 0uLL;
    *(a1 + 72) = v10;
    *(a1 + 80) = v48;
    *(a1 + 96) = v49;
    v46 = 0;
    v48 = 0uLL;
    v49 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if ((atomic_load_explicit(&qword_28087B688, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v21 = (a2 + 8);
    v22 = __cxa_guard_acquire(&qword_28087B688);
    v3 = v21;
    a2 = v20;
    if (v22)
    {
      qword_28087B6B0 = 1;
      qword_28087B6B8 = &off_288132220;
      __cxa_guard_release(&qword_28087B688);
      v3 = v21;
      a2 = v20;
    }
  }

  v5 = *v3;
  if (qword_28087B6B8 == *v3)
  {
    if (*a2 <= 0xDu)
    {
      v12 = dword_27186CDD8[*a2 & 0xFLL];
      LOBYTE(v23[0]) = 0;
      v31 = 0;
      if (*(a2 + 112) != 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v12 = 1;
      LOBYTE(v23[0]) = 0;
      v31 = 0;
      if (*(a2 + 112) != 1)
      {
LABEL_46:
        sub_27112D480(v12, v23, &v41);
        *a1 = v41;
        *(a1 + 16) = 0;
        *(a1 + 112) = 0;
        if (v51 != 1)
        {
          *(a1 + 120) = 0;
          goto LABEL_56;
        }

        *(a1 + 40) = 0;
        v14 = v44;
        if (v44 == 1)
        {
          *(a1 + 16) = v42;
          *(a1 + 32) = v43;
          v43 = 0;
          v42 = 0uLL;
          *(a1 + 40) = 1;
          *(a1 + 48) = 0;
          v15 = a1 + 48;
          *(a1 + 104) = 0;
          if ((v50 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          *(a1 + 48) = 0;
          v15 = a1 + 48;
          *(a1 + 104) = 0;
          if ((v50 & 1) == 0)
          {
LABEL_49:
            *(a1 + 112) = 1;
            *(a1 + 120) = 0;
            if (!v14)
            {
LABEL_56:
              if (v31 != 1)
              {
                return;
              }

              if (v30 == 1)
              {
                if (v29 < 0)
                {
                  operator delete(v28);
                }

                if (v27 < 0)
                {
                  operator delete(v26);
                }
              }

              if (v25 != 1 || (v24 & 0x80000000) == 0)
              {
                return;
              }

              v11 = v23[0];
              goto LABEL_65;
            }

LABEL_54:
            if (SHIBYTE(v43) < 0)
            {
              operator delete(v42);
            }

            goto LABEL_56;
          }
        }

        v16 = v47;
        *(v15 + 16) = v46;
        *v15 = v45;
        v45 = 0uLL;
        *(a1 + 72) = v16;
        *(a1 + 80) = v48;
        *(a1 + 96) = v49;
        v46 = 0;
        v48 = 0uLL;
        v49 = 0;
        *(a1 + 104) = 1;
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v14)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }
    }

    sub_27112F6CC(v23, (a2 + 16));
    v31 = 1;
    goto LABEL_46;
  }

  *a1 = 0;
  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    v7 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *v3 = 0;
    v3[1] = 0;
    goto LABEL_3;
  }

  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(a1 + 40) = 0;
    if (*(a2 + 40) == 1)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a1 + 40) = 1;
    }

    *(a1 + 48) = 0;
    *(a1 + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      v13 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      *(a1 + 72) = v13;
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a1 + 104) = 1;
    }

    *(a1 + 112) = 1;
  }
}

void sub_2712B58A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2712B58B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2712B58CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2712B58E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2712B58F4(uint64_t result)
{
  if ((*(result + 144) & 1) == 0 && *(result + 136) == 1)
  {
    if (*(result + 128) == 1)
    {
      if (*(result + 127) < 0)
      {
        v1 = result;
        operator delete(*(result + 104));
        result = v1;
      }

      if (*(result + 95) < 0)
      {
        v2 = result;
        operator delete(*(result + 72));
        result = v2;
      }
    }

    if (*(result + 64) == 1 && *(result + 63) < 0)
    {
      v3 = result;
      operator delete(*(result + 40));
      result = v3;
    }
  }

  *result = &unk_288131488;
  v4 = *(result + 16);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      return v5;
    }
  }

  return result;
}

void *sub_2712B5A08(void *a1)
{
  *a1 = &unk_288107940;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_2712B5AB4(void *a1)
{
  *a1 = &unk_288107940;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712B5C5C(uint64_t result, void *a2)
{
  *a2 = &unk_288107940;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_2712B5D2C(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_2712B5D8C(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void sub_2712B5E3C(uint64_t a1, __int128 *a2)
{
  BYTE7(v4[1]) = 20;
  strcpy(v4, "while importing data");
  sub_2712B2E88(a2, v4, v5);
  sub_27123BC74(v5, v15);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_27112AFFC();
  }

  (*(*v3 + 48))(v3, v15);
  if (v24 == 1)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }

    if (v22 < 0)
    {
      operator delete(v21);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_6:
        if (v18 != 1)
        {
          goto LABEL_9;
        }

LABEL_7:
        if (v17 < 0)
        {
          operator delete(v16);
        }

        goto LABEL_9;
      }
    }

    else if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(v19);
    if (v18 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  if (v14 != 1)
  {
    goto LABEL_16;
  }

  if (v13 == 1)
  {
    if ((v12 & 0x80000000) == 0)
    {
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      operator delete(v9);
      if (v8 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    operator delete(v11);
    if (v10 < 0)
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  if (v8 != 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v7 < 0)
  {
    operator delete(__p);
  }

LABEL_16:
  if (SBYTE7(v4[1]) < 0)
  {
    operator delete(*&v4[0]);
  }
}

void sub_2712B5FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_27112D71C(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2712B6018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4cv3d2vl13visual_logger6ImportERKNSt3__14__fs10filesystem4pathENS2_8optionalINS1_17FileImportOptionsEEENS8_INS2_8functionIFvRKNS_3esn5ErrorEEEEEERNS_3kit2fs11IFilesystemEENK3$_0clEvEUlRKNSC_6ErrorCINSJ_3viz11IOErrorCodeEEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4cv3d2vl13visual_logger6ImportERKNSt3__14__fs10filesystem4pathENS2_8optionalINS1_17FileImportOptionsEEENS8_INS2_8functionIFvRKNS_3esn5ErrorEEEEEERNS_3kit2fs11IFilesystemEENK3$_0clEvEUlRKNSC_6ErrorCINSJ_3viz11IOErrorCodeEEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4cv3d2vl13visual_logger6ImportERKNSt3__14__fs10filesystem4pathENS2_8optionalINS1_17FileImportOptionsEEENS8_INS2_8functionIFvRKNS_3esn5ErrorEEEEEERNS_3kit2fs11IFilesystemEENK3$_0clEvEUlRKNSC_6ErrorCINSJ_3viz11IOErrorCodeEEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4cv3d2vl13visual_logger6ImportERKNSt3__14__fs10filesystem4pathENS2_8optionalINS1_17FileImportOptionsEEENS8_INS2_8functionIFvRKNS_3esn5ErrorEEEEEERNS_3kit2fs11IFilesystemEENK3$_0clEvEUlRKNSC_6ErrorCINSJ_3viz11IOErrorCodeEEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2712B6090(int **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    sub_271120E64(a1[1], ", ", 2);
    v2 = *a1;
    v3 = **a1;
  }

  v5 = a1[1];
  v4 = a1[2];
  *v2 = v3 + 1;
  v6 = &v4[4 * v3];
  v7 = *(v6 + 1);
  if (v7 <= 0x7FFFFFFFFFFFFFF7)
  {
    v8 = *v6;
    if (v7 < 0x17)
    {
      v13 = *(v6 + 1);
      if (v7)
      {
        memmove(__p, v8, v7);
      }

      *(__p + v7) = 0;
      if ((v13 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v10 = v13;
      }

      else
      {
        v10 = __p[1];
      }

      sub_271120E64(v5, v9, v10);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      sub_271120E64(v5, " = ", 3);
      v11 = a1[1];
      operator new();
    }

    operator new();
  }

  sub_271120DA8();
}

void sub_2712B6370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712B63D0(int **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    sub_271120E64(a1[1], ", ", 2);
    v2 = *a1;
    v3 = **a1;
  }

  v5 = a1[1];
  v4 = a1[2];
  *v2 = v3 + 1;
  v6 = &v4[4 * v3];
  v7 = *(v6 + 1);
  if (v7 <= 0x7FFFFFFFFFFFFFF7)
  {
    v8 = *v6;
    if (v7 < 0x17)
    {
      v13 = *(v6 + 1);
      if (v7)
      {
        memmove(__dst, v8, v7);
      }

      *(__dst + v7) = 0;
      if ((v13 & 0x80u) == 0)
      {
        v9 = __dst;
      }

      else
      {
        v9 = __dst[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v10 = v13;
      }

      else
      {
        v10 = __dst[1];
      }

      sub_271120E64(v5, v9, v10);
      if (v13 < 0)
      {
        operator delete(__dst[0]);
      }

      sub_271120E64(v5, " = ", 3);
      v11 = a1[1];
      operator new();
    }

    operator new();
  }

  sub_271120DA8();
}

void sub_2712B66D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712B6744()
{
  qword_28087B6F0 = 0;
  qword_28087B6F8 = 0;
  qword_28087B700 = 0;
  if ((atomic_load_explicit(&qword_28087C300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087C300))
  {
    sub_2717F9994();
    sub_2717F9A58(&qword_28087C308, &qword_28087C2E8);
    __cxa_guard_release(&qword_28087C300);
  }

  v0 = qword_28087C2E8;
  v1 = *algn_28087C2F0;
  if (*algn_28087C2F0 != qword_28087C2E8)
  {
    do
    {
      v4 = *v0;
      v2 = sub_2711FE114(v4);
      if ((v2 & 0x100000000) != 0)
      {
        v3 = v2 - 1;
        if ((v2 - 1) <= 0x25 && ((0x31D13100DFuLL >> v3) & 1) != 0 && (dword_271870BE0[v3] | *&a8_13[4 * v3]) == v4 && v2 <= 0x26 && ((1 << v2) & 0x63A26201BELL) != 0)
        {
          sub_2711FE3E0(&qword_28087B6F0, &v4);
        }
      }

      ++v0;
    }

    while (v0 != v1);
  }
}

void sub_2712B6894(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087C300);
  if (qword_28087B6F0)
  {
    qword_28087B6F8 = qword_28087B6F0;
    operator delete(qword_28087B6F0);
  }

  _Unwind_Resume(a1);
}

void sub_2712B68CC()
{
  qword_28087B708 = 0;
  qword_28087B710 = 0;
  qword_28087B718 = 0;
  if ((atomic_load_explicit(&qword_28087C300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087C300))
  {
    sub_2717F9994();
    sub_2717F9A58(&qword_28087C308, &qword_28087C2E8);
    __cxa_guard_release(&qword_28087C300);
  }

  v0 = qword_28087C2E8;
  v1 = *algn_28087C2F0;
  if (*algn_28087C2F0 != qword_28087C2E8)
  {
    do
    {
      v4 = *v0;
      v2 = sub_2711FE114(v4);
      if ((v2 & 0x100000000) != 0 && v2 <= 0x26 && ((1 << v2) & 0x63A26201BELL) != 0)
      {
        sub_2711FE3E0(&qword_28087B708, &v4);
      }

      ++v0;
    }

    while (v0 != v1);
  }
}

void sub_2712B69CC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087C300);
  if (qword_28087B708)
  {
    qword_28087B710 = qword_28087B708;
    operator delete(qword_28087B708);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2712B6A04(int a1)
{
  result = 1;
  if (a1 <= 1278226487)
  {
    if (a1 > 875704421)
    {
      if (a1 > 875836533)
      {
        if (a1 == 875836534)
        {
          return result;
        }

        if (a1 != 1094862674)
        {
          v6 = 1111970369;
          goto LABEL_37;
        }

        return 4;
      }

      if (a1 == 875704422 || a1 == 875704438)
      {
        return result;
      }

      v4 = 875836518;
LABEL_41:
      if (a1 != v4)
      {
        goto LABEL_43;
      }

      return result;
    }

    if (a1 > 843264055)
    {
      v7 = a1 - 843264056;
      if (v7 <= 0x30 && ((1 << v7) & 0x1400000000001) != 0)
      {
        return 2;
      }

      goto LABEL_43;
    }

    if (a1 != 24)
    {
      if (a1 == 32)
      {
        return 4;
      }

      if (a1 != 842285639)
      {
        goto LABEL_43;
      }
    }

    return 3;
  }

  if (a1 > 1647392358)
  {
    if (a1 > 1717855599)
    {
      if (a1 > 1751410031)
      {
        if (a1 == 1751410032)
        {
          return result;
        }

        v4 = 1751411059;
      }

      else
      {
        if (a1 == 1717855600)
        {
          return result;
        }

        v4 = 1717856627;
      }

      goto LABEL_41;
    }

    if (a1 == 1647392359)
    {
      return result;
    }

    if (a1 != 1647589490)
    {
      v6 = 1647719521;
      goto LABEL_37;
    }

    return 3;
  }

  if (a1 <= 1278226741)
  {
    v5 = a1 - 1278226488;
    if (v5 > 0x30 || ((1 << v5) & 0x1400000000001) == 0)
    {
      goto LABEL_43;
    }

    return result;
  }

  if (a1 > 1380410944)
  {
    if (a1 != 1380410945)
    {
      v3 = 26689;
      goto LABEL_36;
    }

    return 4;
  }

  if (a1 != 1278226742)
  {
    v3 = 16961;
LABEL_36:
    v6 = v3 | 0x52470000;
LABEL_37:
    if (a1 == v6)
    {
      return 4;
    }

LABEL_43:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 420, "", 0, "not yet implemented", 0x13uLL, sub_271852CA8);
    abort();
  }

  return result;
}

void sub_2712B6C80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_5:
        if ((atomic_load_explicit(&qword_28087B6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B6E8))
        {
          sub_2712B68CC();
          __cxa_atexit(sub_2711F995C, &qword_28087B708, &dword_27111A000);
          __cxa_guard_release(&qword_28087B6E8);
        }

        v7 = qword_28087B708;
        v8 = qword_28087B710;
        v9 = sub_2717F4624(a1);
        if (v8 == v7)
        {
          goto LABEL_31;
        }

        while (*v7 != v9)
        {
          if (++v7 == v8)
          {
            goto LABEL_31;
          }
        }

        if (v7 == v8)
        {
LABEL_31:
          LODWORD(v28) = sub_2717F4624(a1);
          if ((atomic_load_explicit(&qword_28087B6E8, memory_order_acquire) & 1) == 0)
          {
            if (__cxa_guard_acquire(&qword_28087B6E8))
            {
              sub_2712B68CC();
              __cxa_atexit(sub_2711F995C, &qword_28087B708, &dword_27111A000);
              __cxa_guard_release(&qword_28087B6E8);
            }
          }

          v48.__r_.__value_.__r.__words[0] = qword_28087B708;
          v48.__r_.__value_.__l.__size_ = (qword_28087B710 - qword_28087B708) >> 2;
          LODWORD(v52) = 0;
          *&v54 = &v49;
          *(&v54 + 1) = "Invalid IOSurface format '";
          *&v55 = &v49;
          *(&v55 + 1) = "Invalid IOSurface format '";
          v56 = "Invalid IOSurface format '";
          v47 = &v54;
          sub_2711E76D0(&v47);
          sub_2711FE4F8();
        }

        v15 = *(a1 + 8);
        v14 = *(a1 + 16);
        v29[0] = &unk_288109288;
        v29[1] = v15;
        v30 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = sub_2717F4624(v29);
        LODWORD(v34) = v16;
        v17 = sub_2712B6A04(v16);
        v18 = sub_2712BA740(v16);
        if (v18 >= 4)
        {
          sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 322, "", 0, "not implemented", 0xFuLL, sub_271852CA8);
          abort();
        }

        v19 = dword_27186CE10[v18];
        v20 = sub_2717F3D9C(v29);
        if (v20 != v19 * v17)
        {
          v66 = 0;
          v49 = &v65;
          v50 = "Invalid IOSurface: ";
          v51 = &v65;
          v52 = "Invalid IOSurface: ";
          v53 = "Invalid IOSurface: ";
          v48.__r_.__value_.__r.__words[0] = &v49;
          sub_2712C3608(&v48);
          sub_2712C32AC();
        }

        if (sub_2717F41E0(v29) % v20)
        {
          v66 = 0;
          v49 = &v65;
          v50 = "Invalid IOSurface: ";
          v51 = &v65;
          v52 = "Invalid IOSurface: ";
          v53 = "Invalid IOSurface: ";
          v48.__r_.__value_.__r.__words[0] = &v49;
          sub_2712C3608(&v48);
          sub_2712C32AC();
        }

        LOBYTE(v46) = 1;
        v29[0] = &unk_288109288;
        v22 = v30;
        if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        if (v46)
        {
          v23 = sub_2717F4624(a1);
          v24 = sub_2711FE114(v23);
          sub_2712BA9BC(&v28, v24);
        }

        v54 = v35;
        LOBYTE(v55) = 0;
        v64 = 0;
        if (v45 != 1)
        {
          *a2 = v35;
          *(a2 + 16) = 0;
          *(a2 + 112) = 0;
          *(a2 + 544) = 0;
          goto LABEL_51;
        }

        sub_27112F6CC(&v55, &__p);
        v64 = 1;
        *a2 = v54;
        *(a2 + 16) = 0;
        *(a2 + 40) = 0;
        v25 = v57;
        if (v57 == 1)
        {
          *(a2 + 16) = v55;
          *(a2 + 32) = v56;
          v56 = 0;
          v55 = 0uLL;
          *(a2 + 40) = 1;
          *(a2 + 48) = 0;
          v26 = a2 + 48;
          *(a2 + 104) = 0;
          if ((v63 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          *(a2 + 48) = 0;
          v26 = a2 + 48;
          *(a2 + 104) = 0;
          if ((v63 & 1) == 0)
          {
LABEL_44:
            *(a2 + 112) = 1;
            *(a2 + 544) = 0;
            if (!v25)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }
        }

        v27 = v60;
        *(v26 + 16) = v59;
        *v26 = v58;
        v58 = 0uLL;
        *(a2 + 72) = v27;
        *(a2 + 80) = v61;
        *(a2 + 96) = v62;
        v59 = 0;
        v61 = 0uLL;
        v62 = 0;
        *(a2 + 104) = 1;
        *(a2 + 112) = 1;
        *(a2 + 544) = 0;
        if (!v25)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55);
        }

LABEL_51:
        if ((v46 & 1) == 0 && v45 == 1)
        {
          if (v44 == 1)
          {
            if (SHIBYTE(v43) < 0)
            {
              operator delete(v42);
            }

            if (SHIBYTE(v40) < 0)
            {
              operator delete(v39);
            }
          }

          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            v13 = __p;
            goto LABEL_33;
          }
        }

        goto LABEL_34;
      }
    }

    else if (v6)
    {
      goto LABEL_5;
    }
  }

  LOBYTE(v31) = 0;
  v33 = 0;
  sub_271369B1C(&v31, &v35);
  *a2 = v35;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v45 != 1)
  {
    *(a2 + 544) = 0;
    goto LABEL_21;
  }

  *(a2 + 40) = 0;
  v10 = v38;
  if (v38 == 1)
  {
    *(a2 + 16) = __p;
    *(a2 + 32) = v37;
    v37 = 0;
    __p = 0uLL;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v11 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v44 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    v12 = v41;
    *(v11 + 16) = v40;
    *v11 = v39;
    v39 = 0uLL;
    *(a2 + 72) = v12;
    *(a2 + 80) = v42;
    *(a2 + 96) = v43;
    v40 = 0;
    v42 = 0uLL;
    v43 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 544) = 0;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  *(a2 + 48) = 0;
  v11 = a2 + 48;
  *(a2 + 104) = 0;
  if (v44)
  {
    goto LABEL_18;
  }

LABEL_14:
  *(a2 + 112) = 1;
  *(a2 + 544) = 0;
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p);
  }

LABEL_21:
  if (v33 == 1 && v32 < 0)
  {
    v13 = v31;
LABEL_33:
    operator delete(v13);
  }

LABEL_34:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_2712B8718(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2712B8A00(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL VZImageIsIOSurfacePixelFormatSupported_0(int a1)
{
  if ((atomic_load_explicit(&qword_28087B6E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B6E0))
  {
    sub_2712B6744();
    __cxa_atexit(sub_2711F995C, &qword_28087B6F0, &dword_27111A000);
    __cxa_guard_release(&qword_28087B6E0);
  }

  v2 = qword_28087B6F0;
  if (qword_28087B6F8 == qword_28087B6F0)
  {
LABEL_6:
    v2 = qword_28087B6F8;
  }

  else
  {
    v3 = qword_28087B6F0;
    while (*v3 != a1)
    {
      ++v3;
      v2 += 4;
      if (v3 == qword_28087B6F8)
      {
        goto LABEL_6;
      }
    }
  }

  return v2 != qword_28087B6F8;
}

BOOL VZImageIsIOSurfacePixelFormatPartiallySupported_0(int a1)
{
  if ((atomic_load_explicit(&qword_28087B6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B6E8))
  {
    sub_2712B68CC();
    __cxa_atexit(sub_2711F995C, &qword_28087B708, &dword_27111A000);
    __cxa_guard_release(&qword_28087B6E8);
  }

  v2 = qword_28087B708;
  if (qword_28087B710 == qword_28087B708)
  {
LABEL_6:
    v2 = qword_28087B710;
  }

  else
  {
    v3 = qword_28087B708;
    while (*v3 != a1)
    {
      ++v3;
      v2 += 4;
      if (v3 == qword_28087B710)
      {
        goto LABEL_6;
      }
    }
  }

  return v2 != qword_28087B710;
}

void sub_2712B8C10(__int128 *a1@<X0>, void *a2@<X8>)
{
  sub_2712B8D64(a1, v6);
  if (v15 == 1)
  {
    v3 = sub_27115A9E4(v6);
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    *a2 = &unk_288109288;
    a2[1] = v5;
    a2[2] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    if (v15 == 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288109288;
    if (v15 == 1)
    {
LABEL_5:
      (*v6[0])(v6);
      return;
    }
  }

  if (v14 == 1)
  {
    if (v13 == 1)
    {
      if (v12 < 0)
      {
        operator delete(__p);
      }

      if (v10 < 0)
      {
        operator delete(v9);
      }
    }

    if (v8 == 1 && v7 < 0)
    {
      operator delete(v6[2]);
    }
  }
}

void sub_2712B8D64(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 55);
  v5 = *(a1 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = **v4;
    v7 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811D018, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_18:
      v54 = 0;
      v55 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_9:
  v8 = *(a1 + 55);
  v9 = *(a1 + 56);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v54 = v8;
  v55 = v9;
  if (!v8)
  {
LABEL_19:
    v60 = *"cv3d.viz";
    v61 = 0x800000000000000;
    LODWORD(v62) = 1;
    sub_2711BE814(&v42, &v60, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&v56, *a1, *(a1 + 1));
    }

    else
    {
      v56 = *a1;
      v57 = *(a1 + 2);
    }

    v58 = *(a1 + 6);
    operator new();
  }

  if (*(a1 + 528) != 1)
  {
    v13 = (*(*(v8 + 16) + 40))();
    if (v14)
    {
      v40 = 0;
      v41 = 0;
      v39 = &unk_288109288;
      (*(*v13 + 56))(v13, &v39);
      if (v40)
      {
        v16 = *v40;
        v15 = v40[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
          }
        }

        if (v16)
        {
          if (*(a1 + 528) == 1)
          {
            v18 = v40;
            v17 = v41;
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(a1 + 64) = v18;
            v19 = *(a1 + 65);
            *(a1 + 65) = v17;
            if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v19->__on_zero_shared)(v19);
              std::__shared_weak_count::__release_weak(v19);
            }
          }

          else
          {
            v25 = v40;
            v24 = v41;
            *(a1 + 63) = &unk_288109288;
            *(a1 + 64) = v25;
            *(a1 + 65) = v24;
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(a1 + 528) = 1;
          }

          v27 = v40;
          v26 = v41;
          *a2 = &unk_288109288;
          *(a2 + 8) = v27;
          *(a2 + 16) = v26;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *(a2 + 120) = 1;
          v39 = &unk_288109288;
          v23 = v41;
          if (!v41)
          {
            goto LABEL_75;
          }

          goto LABEL_67;
        }
      }
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v39 = &unk_288109288;
    }

    v58 = 0;
    *&v60 = &v56;
    *(&v60 + 1) = "contained image data does not contain an IOSurface";
    v61 = &v56;
    v62 = "contained image data does not contain an IOSurface";
    v63 = "contained image data does not contain an IOSurface";
    v59 = &v60;
    sub_2711F7FCC(&v59);
    if (v58 == -1)
    {
      sub_2711308D4();
    }

    *&v60 = &v59;
    (off_28812FAB0[v58])(v28, &v60, &v56);
    if (v58 != -1)
    {
      (off_28812FA50[v58])(&v60, &v56);
    }

    if (SHIBYTE(v29) < 0)
    {
      sub_271127178(v30, v28[0], v28[1]);
    }

    else
    {
      *v30 = *v28;
      v31 = v29;
    }

    v32 = 1;
    LOBYTE(v33) = 0;
    v37 = 0;
    v38 = 1;
    sub_27112D480(0xCu, v30, &v43);
    *a2 = v43;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (v53 != 1)
    {
      *(a2 + 120) = 0;
      goto LABEL_55;
    }

    *(a2 + 40) = 0;
    v20 = v46;
    if (v46 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v45;
      v45 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v21 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v52 & 1) == 0)
      {
LABEL_48:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v20)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v21 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v52 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v22 = v49;
    *(v21 + 16) = v48;
    *v21 = v47;
    v47 = 0uLL;
    *(a2 + 72) = v22;
    *(a2 + 80) = v50;
    *(a2 + 96) = v51;
    v48 = 0;
    v50 = 0uLL;
    v51 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v20)
    {
      goto LABEL_55;
    }

LABEL_53:
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }

LABEL_55:
    if (v38 == 1)
    {
      if (v37 == 1)
      {
        if (v36 < 0)
        {
          operator delete(v35);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }
      }

      if (v32 == 1 && SHIBYTE(v31) < 0)
      {
        operator delete(v30[0]);
      }
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    v39 = &unk_288109288;
    v23 = v41;
    if (!v41)
    {
LABEL_75:
      v9 = v55;
      if (!v55)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_67:
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    goto LABEL_75;
  }

  v10 = *(a1 + 64);
  *a2 = &unk_288109288;
  *(a2 + 8) = v10;
  v11 = *(a1 + 65);
  *(a2 + 16) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 120) = 1;
  if (v9)
  {
LABEL_23:
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2712B9640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, int a39, __int16 a40, char a41, char a42)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2717F319C(&a29);
  sub_27112F828(v42 - 160);
  _Unwind_Resume(a1);
}

void sub_2712B9714(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 55);
  v5 = *(a1 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = **v4;
    v7 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811D018, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_18:
      v25 = 0;
      v26 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_9:
  v9 = *(a1 + 55);
  v8 = *(a1 + 56);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = v9;
  v26 = v8;
  if (!v9)
  {
LABEL_19:
    v30 = *"cv3d.viz";
    v31 = 0x800000000000000;
    LODWORD(v32) = 1;
    sub_2711BE814(&v23, &v30, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&v27, *a1, *(a1 + 1));
    }

    else
    {
      v27 = *a1;
      v28 = *(a1 + 2);
    }

    v29 = *(a1 + 6);
    operator new();
  }

  if (*(a1 + 528) != 1)
  {
    v22 = *(v9 + 64);
    v13 = (*(*(v9 + 16) + 40))(v9 + 16);
    if (v15)
    {
      v20 = &unk_288109288;
      v21 = 0uLL;
      (*(*v13 + 56))(v13, &v20);
      if (v21)
      {
        v17 = *v21;
        v16 = *(v21 + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }
        }

        if (v17)
        {
          v18 = v21;
          *a2 = &unk_288109288;
          *(a2 + 8) = v18;
          if (*(&v18 + 1))
          {
            atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          *(a2 + 120) = 1;
          v20 = &unk_288109288;
          v19 = *(&v21 + 1);
          if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
            v8 = v26;
            if (!v26)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v8 = v26;
            if (!v26)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_23;
        }
      }
    }

    else
    {
      v20 = &unk_288109288;
      v21 = 0uLL;
    }

    if (v22 <= 0x26 && ((1 << v22) & 0x63A26201BELL) != 0)
    {
      sub_2712C5040(v14, &v24, v22, (v9 + 40));
    }

    sub_2712BA5D0();
  }

  v10 = *(a1 + 64);
  *a2 = &unk_288109288;
  *(a2 + 8) = v10;
  v11 = *(a1 + 65);
  *(a2 + 16) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 120) = 1;
  if (v8)
  {
LABEL_23:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2712BA42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (*(v15 - 121) < 0)
  {
    operator delete(*(v15 - 144));
    sub_2717F319C(va);
    sub_27112F828(v15 - 240);
    _Unwind_Resume(a1);
  }

  sub_2717F319C(va);
  sub_27112F828(v15 - 240);
  _Unwind_Resume(a1);
}

void sub_2712BA560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, int a34, void **a35)
{
  sub_2711BEA2C(&a35);
  if (*(v35 - 121) < 0)
  {
    operator delete(*(v35 - 144));
  }

  sub_27112F828(v35 - 240);
  _Unwind_Resume(a1);
}

void sub_2712BA5D0()
{
  v1 = 0;
  v2[0] = v0;
  v2[1] = "contained image data of format '";
  v2[2] = v0;
  v2[3] = "contained image data of format '";
  v2[4] = "contained image data of format '";
  v3 = v2;
  sub_27123B354(&v3);
  sub_27120AACC();
}

void sub_2712BA6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2712BA704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2712BA718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2712BA72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2712BA740(int a1)
{
  if (a1 <= 1278226533)
  {
    if (a1 > 875704421)
    {
      if (a1 <= 875836533)
      {
        if (a1 == 875704422 || a1 == 875704438)
        {
          return 0;
        }

        v1 = 875836518;
      }

      else
      {
        if (a1 <= 1111970368)
        {
          if (a1 != 875836534)
          {
            v1 = 1094862674;
            goto LABEL_38;
          }

          return 0;
        }

        if (a1 == 1111970369)
        {
          return 0;
        }

        v1 = 1278226488;
      }

LABEL_38:
      if (a1 == v1)
      {
        return 0;
      }

LABEL_44:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 303, "", 0, "not yet implemented", 0x13uLL, sub_271852CA8);
      abort();
    }

    if (a1 <= 843264055)
    {
      if (a1 == 24 || a1 == 32)
      {
        return 0;
      }

      v1 = 842285639;
      goto LABEL_38;
    }

    if (a1 == 843264056)
    {
      return 0;
    }

    if (a1 != 843264102)
    {
      v4 = 843264104;
      goto LABEL_42;
    }

    return 3;
  }

  if (a1 > 1647392358)
  {
    if (a1 > 1717855599)
    {
      if (a1 > 1751410031)
      {
        if (a1 == 1751410032)
        {
          return 2;
        }

        v4 = 1751411059;
        goto LABEL_42;
      }

      if (a1 != 1717855600 && a1 != 1717856627)
      {
        goto LABEL_44;
      }

      return 3;
    }

    if (a1 == 1647392359 || a1 == 1647589490)
    {
      return 1;
    }

    v2 = 1647719521;
LABEL_27:
    if (a1 != v2)
    {
      goto LABEL_44;
    }

    return 1;
  }

  if (a1 <= 1380401728)
  {
    if (a1 == 1278226534)
    {
      return 3;
    }

    if (a1 == 1278226536)
    {
      return 2;
    }

    v2 = 1278226742;
    goto LABEL_27;
  }

  if (a1 == 1380401729)
  {
    return 0;
  }

  if (a1 == 1380410945)
  {
    return 3;
  }

  v4 = 1380411457;
LABEL_42:
  if (a1 != v4)
  {
    goto LABEL_44;
  }

  return 2;
}

void sub_2712BA9BC(uint64_t a1, int a2)
{
  v2 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 17:
      operator new();
    case 21:
      operator new();
    case 22:
      operator new();
    case 25:
      operator new();
    case 29:
      operator new();
    case 31:
      operator new();
    case 32:
      operator new();
    case 33:
      operator new();
    case 37:
      operator new();
    case 38:
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_2712BEC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712BF3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  MEMORY[0x2743BF050](v5, v4);
  _Unwind_Resume(a1);
}

uint64_t sub_2712BF40C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712BF484(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109608;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40EE3858B8);
    return v2;
  }

  return result;
}

void sub_2712BF520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712BF5D8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712BF66C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712BF6A4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109608;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712BF750(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE1EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE1EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE1EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE1EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712BF7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712BF84C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 32);
  *(a2 + 8) = *(result + 40);
  return result;
}

uint64_t sub_2712BF86C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712BF8E4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881093C8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40EE3858B8);
    return v2;
  }

  return result;
}

void sub_2712BF980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712BFA38(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712BFACC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712BFB04(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881093C8;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712BFBB0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE2EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE2EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712BFC10(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712BFC88(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109968;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40EE3858B8);
    return v2;
  }

  return result;
}

void sub_2712BFD24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712BFDDC(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712BFE70(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712BFEA8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109968;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712BFF54(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE3EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE3EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712BFFB4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C002C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881097B8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40EE3858B8);
    return v2;
  }

  return result;
}

void sub_2712C00C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C0180(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C0214(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C024C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881097B8;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C02F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE4EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE4EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE4EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE4EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C0358(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C03D0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109578;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C046C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C0524(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C05B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C05F0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109578;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C069C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE5EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE5EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE5EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE5EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C06FC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C0774(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881098D8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C0810(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C08C8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C095C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C0994(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881098D8;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C0A40(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE7EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE7EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE7EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE7EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C0AA0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C0B18(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109728;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C0BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C0C6C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C0D00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C0D38(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109728;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C0DE4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C0E44(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C0EBC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881094E8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C0F58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C1010(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C10A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C10DC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881094E8;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C1188(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE17EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE17EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE17EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE17EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C11E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C1260(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881094E8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C12FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C13B4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C1448(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C1480(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881094E8;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C152C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE21EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE21EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE21EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE21EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C158C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C1604(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109338;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C16A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C1758(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C17EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C1824(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109338;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C18D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE22EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE22EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE22EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE22EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C1930(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C19A8(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109458;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C1A44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C1AFC(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C1B90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C1BC8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109458;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C1C74(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE25EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE25EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE25EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE25EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C1CD4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C1D4C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109458;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C1DE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C1EA0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C1F34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C1F6C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109458;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C2018(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE29EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE29EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE29EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE29EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C2078(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C20F0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109848;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C218C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C2244(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C22D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C2310(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109848;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C23BC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE31EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE31EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE31EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE31EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C241C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_2712C2494(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109698;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C2530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C25E8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712C267C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C26B4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109698;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C2760(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE32EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE32EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE32EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE32EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}