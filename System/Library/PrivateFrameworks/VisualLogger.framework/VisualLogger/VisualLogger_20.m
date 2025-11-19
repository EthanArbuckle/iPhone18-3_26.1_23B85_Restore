size_t *sub_27129FDF0(size_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (*(*result + 12) != 1 || *(v2 + 12) != 1)
  {
    v4 = v1[1];
    v5 = v1[2];
    if (*v1)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6 && v5 != 0)
    {
      v8 = v4 - 1;
      v9 = v1[4];
      v10 = *(v2 + 16);
      v11 = *(v1 + 8);
      v12 = *(v2 + 64);
      v13 = v5 - 1;
      if (v13)
      {
        v14 = *(v2 + 20);
        v15 = v1[5];
        if (v8)
        {
          v16 = 0;
          v17 = v11 + 1;
          result = (v12 + 1);
          do
          {
            v18 = result;
            v19 = v17;
            v20 = v8;
            do
            {
              *(v18 - 1) = *(v19 - 1);
              *v18 = *v19;
              v19 += v9;
              v18 = (v18 + v10);
              --v20;
            }

            while (v20);
            *(v18 - 1) = *(v19 - 1);
            *v18 = *v19;
            v11 += v15;
            v12 += v14;
            ++v16;
            v17 += v15;
            result = (result + v14);
          }

          while (v16 != v13);
          goto LABEL_21;
        }

        do
        {
          *v12 = *v11;
          v12[1] = v11[1];
          v11 += v15;
          v12 += v14;
          --v13;
        }

        while (v13);
      }

      if (!v8)
      {
LABEL_22:
        *v12 = *v11;
        v12[1] = v11[1];
        return result;
      }

      do
      {
LABEL_21:
        *v12 = *v11;
        v12[1] = v11[1];
        v11 += v9;
        v12 += v10;
        --v8;
      }

      while (v8);
      goto LABEL_22;
    }

    return result;
  }

  v21 = v1[4];
  v22 = *v1;
  if (v21 != *(v2 + 16) || v21 != v22)
  {
    v41 = *v1;
    if (v22)
    {
      v24 = v1[1] == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24 && v1[2] != 0)
    {
      return sub_2712A0040(&v41, v1, v2);
    }

    return result;
  }

  v26 = v1[5];
  v27 = *(v2 + 20);
  v28 = v1[1];
  v29 = v28 * v21;
  if (v26 == v27 && v26 == v29)
  {
    v40 = v1[2] * v26;
    if (!v40)
    {
      return result;
    }

    v37 = *(v2 + 64);
    v38 = *(v1 + 8);
    v39 = v40;
    goto LABEL_54;
  }

  v31 = v1[2];
  if (v21)
  {
    v32 = v28 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (!v32 && v31 != 0)
  {
    v34 = *(v1 + 8);
    v35 = *(v2 + 64);
    v36 = v31 - 1;
    if (v31 != 1)
    {
      if (!v29)
      {
        return result;
      }

      do
      {
        result = memmove(v35, v34, v29);
        v34 += v26;
        v35 += v27;
        --v36;
      }

      while (v36);
    }

    if (v29)
    {
      v37 = v35;
      v38 = v34;
      v39 = v29;
LABEL_54:

      return memmove(v37, v38, v39);
    }
  }

  return result;
}

size_t *sub_2712A0040(size_t *result, uint64_t a2, uint64_t a3)
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
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 16);
    v10 = *(a3 + 16);
    v11 = *(a2 + 64);
    v12 = *(a3 + 64);
    v30 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 20);
      v14 = *(a2 + 20);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v23 = *(a2 + 20);
        v24 = v4 - 2;
LABEL_39:
        result = memmove(v12, v11, v15);
        while (1)
        {
          v11 += v23;
          v12 += v13;
          if (!v24)
          {
            break;
          }

          v15 = *v7;
          --v24;
          if (*v7)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v28 = *(a2 + 20);
        v29 = v13;
        v25 = v3 - 1;
        v26 = *(a2 + 4);
        v16 = 0;
        v27 = v3 - 2;
        v31 = &v11[v9];
        v17 = &v12[v10];
LABEL_14:
        v18 = 0;
        v19 = 0;
        v20 = v27;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v18], &v11[v19], v15);
        }

        while (v20)
        {
          v15 = *v7;
          --v20;
          v19 += v9;
          v18 += v10;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        if (*v7)
        {
          result = memmove(&v17[v18], &v31[v19], *v7);
        }

        while (1)
        {
          v11 += v28;
          v12 += v29;
          if (++v16 == v30)
          {
            break;
          }

          v15 = *v7;
          v31 += v28;
          v17 += v29;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v8 = v25;
        v3 = v26;
      }
    }

    v21 = *v7;
    if (v8)
    {
      if (!v21)
      {
        return result;
      }

      v22 = v3 - 2;
LABEL_28:
      result = memmove(v12, v11, v21);
      while (1)
      {
        v11 += v9;
        v12 += v10;
        if (!v22)
        {
          break;
        }

        v21 = *v7;
        --v22;
        if (*v7)
        {
          goto LABEL_28;
        }
      }

      v21 = *v7;
    }

    if (v21)
    {

      return memmove(v12, v11, v21);
    }
  }

  return result;
}

uint64_t *sub_2712A023C(uint64_t *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 5) == 1 && *(a2 + 20) == 1)
  {
    v23 = *(result + 6);
    v24 = *(result + 2);
    if (v23 != *(a2 + 24) || v23 != v24)
    {
      v44 = *(result + 2);
      if (v24)
      {
        v26 = *(result + 3) == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26 && *(result + 4) != 0)
      {
        return sub_2712566FC(&v44, result, a2);
      }

      return result;
    }

    v28 = *(result + 7);
    v29 = *(a2 + 28);
    v30 = *(result + 3);
    v31 = (v30 * v23);
    if (v28 == v29 && v28 == v31)
    {
      v42 = *(result + 4) * v28;
      if (!v42)
      {
        return result;
      }

      v39 = 2 * v42;
      v40 = *a2;
      v41 = *v3;
    }

    else
    {
      if (!v23)
      {
        return result;
      }

      if (!v30)
      {
        return result;
      }

      v33 = *(result + 4);
      if (!v33)
      {
        return result;
      }

      v34 = *result;
      v35 = *a2;
      v36 = v33 - 1;
      if (v33 != 1)
      {
        if (!v31)
        {
          return result;
        }

        v37 = 2 * v28;
        v38 = 2 * v29;
        do
        {
          result = memmove(v35, v34, 2 * v31);
          v34 += v37;
          v35 += v38;
          --v36;
        }

        while (v36);
      }

      if (!v31)
      {
        return result;
      }

      v39 = 2 * v31;
      v40 = v35;
      v41 = v34;
    }

    return memmove(v40, v41, v39);
  }

  v5 = *(result + 3);
  v6 = *(result + 4);
  if (*(result + 2))
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v6 != 0)
  {
    v9 = v5 - 1;
    v10 = *result;
    v11 = *a2;
    v12 = 2 * *(result + 6);
    v13 = 2 * *(a2 + 24);
    v14 = v6 - 1;
    if (v14)
    {
      v15 = *(a2 + 28);
      v16 = *(result + 7);
      if (!v9)
      {
        v43 = 2 * v15;
        do
        {
          *v11 = *v10;
          *(v11 + 1) = *(v10 + 1);
          v10 += 2 * v16;
          v11 += v43;
          --v14;
        }

        while (v14);
        goto LABEL_54;
      }

      v17 = 0;
      v18 = v10 + 2;
      result = (2 * v16);
      v19 = v11 + 2;
      do
      {
        v20 = v19;
        v21 = v18;
        v22 = v9;
        do
        {
          *(v20 - 1) = *(v21 - 1);
          *v20 = *v21;
          v21 = (v21 + v12);
          v20 = (v20 + v13);
          --v22;
        }

        while (v22);
        *(v20 - 1) = *(v21 - 1);
        *v20 = *v21;
        v10 += 2 * v16;
        v11 += 2 * v15;
        ++v17;
        v18 = result + v18;
        v19 += 2 * v15;
      }

      while (v17 != v14);
    }

    else if (!v9)
    {
LABEL_54:
      *v11 = *v10;
      *(v11 + 1) = *(v10 + 1);
      return result;
    }

    do
    {
      *v11 = *v10;
      *(v11 + 1) = *(v10 + 1);
      v10 += v12;
      v11 += v13;
      --v9;
    }

    while (v9);
    goto LABEL_54;
  }

  return result;
}

__n128 sub_2712A04B0(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812EF60[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A0548(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812EF60[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112098;
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

  return sub_2712A0628(a2 + 8, (a3 + 8));
}

uint64_t sub_2712A0628(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    *&v9 = a2;
    *(&v9 + 1) = a1;
    sub_2712A0700(&v9);
    return a1;
  }

  else
  {
    v3 = a2[1];
    v9 = *a2;
    v10 = v3;
    v11 = a2[2];
    v12 = *(a2 + 6);
    sub_271256160(v13, a2 + 56);
    v4 = v10;
    *a1 = v9;
    *(a1 + 16) = v4;
    *(a1 + 32) = v11;
    *(a1 + 80) = v14;
    *(a1 + 96) = v15;
    v5 = v13[0];
    *(a1 + 48) = v12;
    *(a1 + 56) = v5;
    v6 = *(a1 + 64);
    if (v6)
    {
      free(v6);
    }

    v7 = v13[2];
    *(a1 + 64) = v13[1];
    *(a1 + 72) = v7;
    return a1;
  }
}

uint64_t *sub_2712A0700(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (*(*result + 12) == 1 && *(v2 + 12) == 1)
  {
    v22 = v1[4];
    v23 = *v1;
    if (v22 != *(v2 + 16) || v22 != v23)
    {
      v44 = *v1;
      if (v23)
      {
        v25 = v1[1] == 0;
      }

      else
      {
        v25 = 1;
      }

      if (!v25 && v1[2] != 0)
      {
        return sub_2712A0974(&v44, v1, v2);
      }

      return result;
    }

    v27 = v1[5];
    v28 = *(v2 + 20);
    v29 = v1[1];
    v30 = v29 * v22;
    if (v27 == v28 && v27 == v30)
    {
      v43 = v1[2] * v27;
      if (!v43)
      {
        return result;
      }

      v41 = *(v2 + 64);
      v42 = *(v1 + 8);
      v40 = 2 * v43;
    }

    else
    {
      v32 = v1[2];
      if (v22)
      {
        v33 = v29 == 0;
      }

      else
      {
        v33 = 1;
      }

      if (v33 || v32 == 0)
      {
        return result;
      }

      v35 = *(v1 + 8);
      v36 = *(v2 + 64);
      v37 = v32 - 1;
      if (v32 != 1)
      {
        if (!v30)
        {
          return result;
        }

        v38 = 2 * v27;
        v39 = 2 * v28;
        do
        {
          result = memmove(v36, v35, 2 * v30);
          v35 += v38;
          v36 += v39;
          --v37;
        }

        while (v37);
      }

      if (!v30)
      {
        return result;
      }

      v40 = 2 * v30;
      v41 = v36;
      v42 = v35;
    }

    return memmove(v41, v42, v40);
  }

  v4 = v1[1];
  v5 = v1[2];
  if (*v1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = v4 - 1;
    v9 = *(v1 + 8);
    v10 = *(v2 + 64);
    v11 = 2 * v1[4];
    v12 = 2 * *(v2 + 16);
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 20);
      v15 = v1[5];
      if (!v8)
      {
        do
        {
          *v10 = *v9;
          v10[1] = v9[1];
          v9 += v15;
          v10 += v14;
          --v13;
        }

        while (v13);
        goto LABEL_57;
      }

      v16 = 0;
      v17 = v9 + 1;
      result = (2 * v15);
      v18 = v10 + 1;
      do
      {
        v19 = v18;
        v20 = v17;
        v21 = v8;
        do
        {
          *(v19 - 1) = *(v20 - 1);
          *v19 = *v20;
          v20 = (v20 + v11);
          v19 = (v19 + v12);
          --v21;
        }

        while (v21);
        *(v19 - 1) = *(v20 - 1);
        *v19 = *v20;
        v9 += v15;
        v10 += v14;
        ++v16;
        v17 = (result + v17);
        v18 += v14;
      }

      while (v16 != v13);
    }

    else if (!v8)
    {
LABEL_57:
      *v10 = *v9;
      v10[1] = v9[1];
      return result;
    }

    do
    {
      *v10 = *v9;
      v10[1] = v9[1];
      v9 = (v9 + v11);
      v10 = (v10 + v12);
      --v8;
    }

    while (v8);
    goto LABEL_57;
  }

  return result;
}

uint64_t *sub_2712A0974(uint64_t *result, uint64_t a2, uint64_t a3)
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
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 16);
    v10 = *(a3 + 16);
    v11 = *(a2 + 64);
    v12 = *(a3 + 64);
    v35 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 20);
      v14 = *(a2 + 20);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v30 = 0;
        v31 = *(a2 + 4);
        v25 = v4 - 2;
LABEL_27:
        result = memmove(v12, v11, 2 * v15);
        while (v25)
        {
          v15 = *v7;
          --v25;
          v11 += 2 * v14;
          v12 += 2 * v13;
          if (*v7)
          {
            goto LABEL_27;
          }
        }

        v11 += 2 * v14;
        v12 += 2 * v13;
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v30 = v3 - 1;
        v31 = *(a2 + 4);
        v16 = 0;
        v32 = v3 - 2;
        v28 = *(a3 + 16);
        v29 = *(a2 + 16);
        v17 = 2 * v9;
        v18 = &v11[2 * v9];
        v19 = 2 * v14;
        v20 = 2 * v10;
        v21 = &v12[2 * v10];
        v33 = 2 * v13;
        v34 = v19;
LABEL_14:
        v36 = v18;
        v22 = 0;
        v23 = 0;
        v24 = v32;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v22], &v11[v23], 2 * v15);
        }

        while (v24)
        {
          v15 = *v7;
          --v24;
          v23 += v17;
          v22 += v20;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        v18 = v36;
        if (*v7)
        {
          result = memmove(&v21[v22], &v36[v23], 2 * *v7);
        }

        while (1)
        {
          v11 += v34;
          v12 += v33;
          if (++v16 == v35)
          {
            break;
          }

          v15 = *v7;
          v18 += v34;
          v21 += v33;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v10 = v28;
        v9 = v29;
      }

      v8 = v30;
      v3 = v31;
    }

    v26 = *v7;
    if (v8)
    {
      if (!v26)
      {
        return result;
      }

      v27 = v3 - 2;
LABEL_36:
      result = memmove(v12, v11, 2 * v26);
      while (v27)
      {
        v26 = *v7;
        --v27;
        v11 += 2 * v9;
        v12 += 2 * v10;
        if (*v7)
        {
          goto LABEL_36;
        }
      }

      v26 = *v7;
      v11 += 2 * v9;
      v12 += 2 * v10;
    }

    if (v26)
    {

      return memmove(v12, v11, 2 * v26);
    }
  }

  return result;
}

__int16 sub_2712A0BBC@<H0>(void *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 20) == 1 && *(v2 + 20) == 1;
  if (v3)
  {
    v22 = *(v1 + 24);
    v23 = *(v2 + 24);
    v24 = *(v1 + 8);
    if (v22 != v23 || v22 != v24)
    {
      v26 = *(v1 + 12);
      v27 = *(v1 + 16);
      if (v24)
      {
        v28 = v26 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28 || v27 == 0)
      {
        return v99;
      }

      v30 = v26 - 1;
      v31 = *v1;
      v32 = *v2;
      v33 = 2 * v23;
      v34 = v27 - 1;
      v202 = *(v2 + 24);
      v203 = *(v1 + 24);
      v201 = *(v1 + 12);
      if (v27 != 1)
      {
        v35 = *(v2 + 28);
        v36 = *(v1 + 28);
        if (v26 != 1)
        {
          v37 = 0;
          v38 = 2 * v22;
          v206 = &v32[v33 / 2] - v31 - 2 * v22;
          v205 = 2 * (v35 - v36);
          v204 = v33 - 2 * v22;
          v39 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v40 = v39 + 1;
          v41 = 2 * v35;
          v42 = 2 * v36;
          v43 = &v32[v24 + v23 * (v26 - 2)];
          v44 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
          v45 = v44;
          v46 = (v39 + 1) & 0xC;
          v47 = (v39 + 1) & 0xFFFFFFFFFFFFFFFCLL;
          v48 = v47;
          v49 = &v31[v24 + v22 * (v26 - 2)];
          while (1)
          {
            v50 = 0;
            v52 = v32 < (v49 + v42 * v37) && v31 < (v43 + v41 * v37);
            v53 = v32;
            v54 = v31;
            do
            {
              v55 = v50;
              v56 = v53;
              v57 = v54;
              if (v39 < 3 || v52)
              {
                goto LABEL_54;
              }

              if (v39 >= 0xF)
              {
                v59 = 0;
                v60 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v61 = &v53[v59];
                  v62 = *&v54[v59 + 8];
                  *v61 = *&v54[v59];
                  *(v61 + 1) = v62;
                  v59 += 16;
                  v60 -= 16;
                }

                while (v60);
                if (v40 == v44)
                {
                  goto LABEL_41;
                }

                v58 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v46)
                {
                  v57 = &v54[v45];
                  v56 = &v53[v45];
                  do
                  {
LABEL_54:
                    v65 = *v57++;
                    *v56++ = v65;
                  }

                  while (v57 != &v54[v24]);
                  goto LABEL_41;
                }
              }

              else
              {
                v58 = 0;
              }

              v56 = &v53[v48];
              v57 = &v54[v48];
              v63 = v58;
              v64 = v58 - v47;
              do
              {
                *&v53[v63] = *&v54[v63];
                v63 += 4;
                v64 += 4;
              }

              while (v64);
              if (v40 != v47)
              {
                goto LABEL_54;
              }

LABEL_41:
              v54 = (v54 + v38);
              v53 = (v53 + v33);
              v50 = v55 + 1;
            }

            while (v55 + 1 != v30);
            if (v39 < 3 || (v206 + v205 * v37 + v204 * v55) < 0x20)
            {
              v66 = v53;
              v67 = v54;
              goto LABEL_59;
            }

            if (v39 >= 0xF)
            {
              v71 = 0;
              v72 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v73 = &v53[v71];
                v74 = *&v54[v71 + 8];
                *v73 = *&v54[v71];
                *(v73 + 1) = v74;
                v71 += 16;
                v72 -= 16;
              }

              while (v72);
              if (v40 != v44)
              {
                v70 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v46)
                {
                  v67 = &v54[v45];
                  v66 = &v53[v45];
                  goto LABEL_59;
                }

                goto LABEL_68;
              }
            }

            else
            {
              v70 = 0;
LABEL_68:
              v66 = &v53[v48];
              v67 = &v54[v48];
              v75 = v70;
              v76 = v70 - v47;
              do
              {
                *&v53[v75] = *&v54[v75];
                v75 += 4;
                v76 += 4;
              }

              while (v76);
              if (v40 != v47)
              {
LABEL_59:
                v68 = &v54[v24];
                do
                {
                  v69 = *v67++;
                  *v66++ = v69;
                }

                while (v67 != v68);
              }
            }

            v31 = (v31 + v42);
            v32 = (v32 + v41);
            if (++v37 == v34)
            {
              goto LABEL_145;
            }
          }
        }

        v121 = 0;
        v122 = v27 - 2;
        v123 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v124 = v123 + 1;
        v125 = v32 >= &v31[v24 + v36 * v122] || v31 >= &v32[v24 + v35 * v122];
        v126 = v124 & 0xFFFFFFFFFFFFFFF0;
        v127 = v124 & 0xFFFFFFFFFFFFFFFCLL;
        v128 = v124 & 0xFFFFFFFFFFFFFFFCLL;
        v129 = !v125;
        v130 = 2 * v36;
        do
        {
          v131 = v32;
          v132 = v31;
          if (!((v123 < 3) | v129 & 1))
          {
            if (v123 < 0xF)
            {
              v133 = 0;
LABEL_138:
              v131 = &v32[v128];
              v132 = &v31[v128];
              v138 = v133;
              v139 = v133 - v127;
              do
              {
                *&v32[v138] = *&v31[v138];
                v138 += 4;
                v139 += 4;
              }

              while (v139);
              if (v124 == v127)
              {
                goto LABEL_130;
              }

              goto LABEL_143;
            }

            v134 = 0;
            v135 = v124 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v136 = &v32[v134];
              v137 = *&v31[v134 + 8];
              *v136 = *&v31[v134];
              *(v136 + 1) = v137;
              v134 += 16;
              v135 -= 16;
            }

            while (v135);
            if (v124 == (v124 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_130;
            }

            v133 = v124 & 0xFFFFFFFFFFFFFFF0;
            if ((v124 & 0xC) != 0)
            {
              goto LABEL_138;
            }

            v132 = &v31[v126];
            v131 = &v32[v126];
          }

          do
          {
LABEL_143:
            v140 = *v132++;
            *v131++ = v140;
          }

          while (v132 != &v31[v24]);
LABEL_130:
          v31 = (v31 + v130);
          v32 += v35;
          ++v121;
        }

        while (v121 != v34);
      }

LABEL_145:
      if (v30)
      {
        v141 = 0;
        v142 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v143 = v142 + 1;
        v145 = v32 < &v31[v24 + v203 * (v201 - 2)] && v31 < &v32[v24 + v202 * (v201 - 2)];
        v146 = v143 & 0xFFFFFFFFFFFFFFF0;
        v147 = v143 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v148 = v32;
          v149 = v31;
          if (v142 >= 3 && !v145)
          {
            if (v142 < 0xF)
            {
              v150 = 0;
LABEL_161:
              v148 = &v32[v147];
              v149 = &v31[v147];
              v155 = v150;
              v156 = v150 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v32[v155] = *&v31[v155];
                v155 += 4;
                v156 += 4;
              }

              while (v156);
              if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_153;
              }

              goto LABEL_166;
            }

            v151 = 0;
            v152 = v143 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v153 = &v32[v151];
              v154 = *&v31[v151 + 8];
              *v153 = *&v31[v151];
              *(v153 + 1) = v154;
              v151 += 16;
              v152 -= 16;
            }

            while (v152);
            if (v143 == (v143 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_153;
            }

            v150 = v143 & 0xFFFFFFFFFFFFFFF0;
            if ((v143 & 0xC) != 0)
            {
              goto LABEL_161;
            }

            v149 = &v31[v146];
            v148 = &v32[v146];
          }

          do
          {
LABEL_166:
            v157 = *v149++;
            *v148++ = v157;
          }

          while (v149 != &v31[v24]);
LABEL_153:
          v31 += v203;
          v32 = (v32 + v33);
          ++v141;
        }

        while (v141 != v30);
      }

      v158 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v158 < 3 || (v32 - v31) < 0x20)
      {
        v161 = v32;
        v162 = v31;
        goto LABEL_200;
      }

      v159 = v158 + 1;
      if (v158 >= 0xF)
      {
        v160 = v159 & 0xFFFFFFFFFFFFFFF0;
        v163 = (v31 + 8);
        v164 = v32 + 8;
        v165 = v159 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v99 = *(v163 - 1);
          v166 = *v163;
          *(v164 - 1) = v99;
          *v164 = v166;
          v163 += 2;
          v164 += 2;
          v165 -= 16;
        }

        while (v165);
        if (v159 == v160)
        {
          return v99;
        }

        if ((v159 & 0xC) == 0)
        {
          v193 = v160;
          v162 = &v31[v193];
          v161 = &v32[v193];
          goto LABEL_200;
        }
      }

      else
      {
        v160 = 0;
      }

      v167 = v159 & 0xFFFFFFFFFFFFFFFCLL;
      v161 = &v32[v167];
      v162 = &v31[v167];
      v168 = &v31[v160];
      v169 = &v32[v160];
      v170 = v160 - (v159 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v171 = *v168++;
        LOWORD(v99) = v171;
        *v169 = v171;
        v169 += 4;
        v170 += 4;
      }

      while (v170);
      if (v159 == (v159 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v99;
      }

LABEL_200:
      v194 = &v31[v24];
      do
      {
        v195 = *v162++;
        LOWORD(v99) = v195;
        *v161++ = v195;
      }

      while (v162 != v194);
      return v99;
    }

    v77 = *(v1 + 28);
    v78 = *(v2 + 28);
    v79 = *(v1 + 12);
    v80 = (v79 * v22);
    if (v77 != v78 || v77 != v80)
    {
      v82 = *(v1 + 16);
      if (v22)
      {
        v83 = v79 == 0;
      }

      else
      {
        v83 = 1;
      }

      if (v83 || v82 == 0)
      {
        return v99;
      }

      v85 = *v1;
      v86 = *v2;
      if (v82 == 1)
      {
LABEL_85:
        if (!v80)
        {
          return v99;
        }

        v87 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v87 < 3 || (v86 - v85) < 0x20)
        {
          v182 = v86;
          v183 = v85;
          goto LABEL_208;
        }

        v88 = v87 + 1;
        if (v87 >= 0xF)
        {
          v89 = v88 & 0xFFFFFFFFFFFFFFF0;
          v184 = (v85 + 8);
          v185 = v86 + 8;
          v186 = v88 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = *(v184 - 1);
            v187 = *v184;
            *(v185 - 1) = v99;
            *v185 = v187;
            v184 += 2;
            v185 += 2;
            v186 -= 16;
          }

          while (v186);
          if (v88 == v89)
          {
            return v99;
          }

          if ((v88 & 0xC) == 0)
          {
            v183 = &v85[v89];
            v182 = &v86[v89];
            goto LABEL_208;
          }
        }

        else
        {
          v89 = 0;
        }

        v188 = v88 & 0xFFFFFFFFFFFFFFFCLL;
        v182 = &v86[v188];
        v183 = &v85[v188];
        v189 = &v85[v89];
        v190 = &v86[v89];
        v191 = v89 - (v88 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v192 = *v189++;
          LOWORD(v99) = v192;
          *v190 = v192;
          v190 += 4;
          v191 += 4;
        }

        while (v191);
        if (v88 == (v88 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v99;
        }

LABEL_208:
        v198 = &v85[v80];
        do
        {
          v199 = *v183++;
          LOWORD(v99) = v199;
          *v182++ = v199;
        }

        while (v183 != v198);
        return v99;
      }

      if (!v80)
      {
        return v99;
      }

      v100 = 0;
      v101 = v82 - 2;
      v102 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v103 = v102 + 1;
      v104 = v86 >= &v85[v80 + v77 * v101] || v85 >= &v86[v80 + v78 * v101];
      v105 = v103 & 0xFFFFFFFFFFFFFFF0;
      v106 = v103 & 0xFFFFFFFFFFFFFFFCLL;
      v107 = v103 & 0xFFFFFFFFFFFFFFFCLL;
      v108 = !v104;
      v109 = 2 * v77;
      v110 = 2 * v78;
      while (1)
      {
        v111 = v86;
        v112 = v85;
        if (!((v102 < 3) | v108 & 1))
        {
          if (v102 < 0xF)
          {
            v113 = 0;
LABEL_116:
            v111 = &v86[v107];
            v112 = &v85[v107];
            v118 = v113;
            v119 = v113 - v106;
            do
            {
              *&v99 = *&v85[v118];
              *&v86[v118] = v99;
              v118 += 4;
              v119 += 4;
            }

            while (v119);
            if (v103 == v106)
            {
              goto LABEL_108;
            }

            goto LABEL_121;
          }

          v114 = 0;
          v115 = v103 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v116 = &v86[v114];
            v99 = *&v85[v114];
            v117 = *&v85[v114 + 8];
            *v116 = v99;
            *(v116 + 1) = v117;
            v114 += 16;
            v115 -= 16;
          }

          while (v115);
          if (v103 == (v103 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_108;
          }

          v113 = v103 & 0xFFFFFFFFFFFFFFF0;
          if ((v103 & 0xC) != 0)
          {
            goto LABEL_116;
          }

          v112 = &v85[v105];
          v111 = &v86[v105];
        }

        do
        {
LABEL_121:
          v120 = *v112++;
          LOWORD(v99) = v120;
          *v111++ = v120;
        }

        while (v112 != &v85[v80]);
LABEL_108:
        v85 = (v85 + v109);
        v86 = (v86 + v110);
        v3 = v100++ == v101;
        if (v3)
        {
          goto LABEL_85;
        }
      }
    }

    v90 = (*(v1 + 16) * v77);
    if (!v90)
    {
      return v99;
    }

    v91 = *v1;
    v92 = *v2;
    v93 = (v90 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v93 < 3)
    {
      v94 = *v1;
      goto LABEL_204;
    }

    v94 = *v1;
    if ((v92 - v91) < 0x20)
    {
      goto LABEL_204;
    }

    v95 = v93 + 1;
    if (v93 >= 0xF)
    {
      v96 = v95 & 0xFFFFFFFFFFFFFFF0;
      v172 = (v91 + 8);
      v173 = v92 + 8;
      v174 = v95 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v99 = *(v172 - 1);
        v175 = *v172;
        *(v173 - 1) = v99;
        *v173 = v175;
        v172 += 2;
        v173 += 2;
        v174 -= 16;
      }

      while (v174);
      if (v95 == v96)
      {
        return v99;
      }

      if ((v95 & 0xC) == 0)
      {
        v94 = &v91[v96];
        v92 += v96;
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
    }

    v176 = v95 & 0xFFFFFFFFFFFFFFFCLL;
    v177 = &v92[v176];
    v94 = &v91[v176];
    v178 = &v91[v96];
    v179 = &v92[v96];
    v180 = v96 - (v95 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v181 = *v178++;
      LOWORD(v99) = v181;
      *v179 = v181;
      v179 += 4;
      v180 += 4;
    }

    while (v180);
    v92 = v177;
    if (v95 == (v95 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v99;
    }

LABEL_204:
    v196 = &v91[v90];
    do
    {
      v197 = *v94++;
      LOWORD(v99) = v197;
      *v92++ = v197;
    }

    while (v94 != v196);
    return v99;
  }

  v4 = *(v1 + 12);
  v5 = *(v1 + 16);
  if (*(v1 + 8))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = v4 - 1;
    v9 = *v1;
    v10 = *v2;
    v11 = 2 * *(v1 + 24);
    v12 = 2 * *(v2 + 24);
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 28);
      v15 = *(v1 + 28);
      if (v8)
      {
        v16 = 0;
        v17 = v9 + 1;
        v18 = v10 + 1;
        do
        {
          v19 = v18;
          v20 = v17;
          v21 = v8;
          do
          {
            *(v19 - 1) = *(v20 - 1);
            *v19 = *v20;
            v20 = (v20 + v11);
            v19 = (v19 + v12);
            --v21;
          }

          while (v21);
          *(v19 - 1) = *(v20 - 1);
          *v19 = *v20;
          v9 += v15;
          v10 += v14;
          ++v16;
          v17 += v15;
          v18 += v14;
        }

        while (v16 != v13);
        goto LABEL_98;
      }

      v97 = 2 * v15;
      v98 = 2 * v14;
      do
      {
        *v10 = *v9;
        v10[1] = v9[1];
        v9 = (v9 + v97);
        v10 = (v10 + v98);
        --v13;
      }

      while (v13);
    }

    if (!v8)
    {
LABEL_99:
      *v10 = *v9;
      LOWORD(v99) = v9[1];
      v10[1] = v99;
      return v99;
    }

    do
    {
LABEL_98:
      *v10 = *v9;
      v10[1] = v9[1];
      v9 = (v9 + v11);
      v10 = (v10 + v12);
      --v8;
    }

    while (v8);
    goto LABEL_99;
  }

  return v99;
}

__n128 sub_2712A15D0(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812EF80[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A1668(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812EF80[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288112018;
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

  return sub_2712A1748(a2 + 8, (a3 + 8));
}

uint64_t sub_2712A1748(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    *&v12 = a2;
    *(&v12 + 1) = a1;
    sub_2712A1984(&v12);
    return a1;
  }

  v3 = a2[1];
  v12 = *a2;
  v13 = v3;
  v14 = a2[2];
  v15 = *(a2 + 6);
  sub_271256F80(v16, a2 + 56);
  v4 = v13;
  *a1 = v12;
  *(a1 + 16) = v4;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 80) = v17;
  *(a1 + 96) = v18;
  v5 = *(a1 + 64);
  if (!v5)
  {
    *(a1 + 56) = v16[0];
    goto LABEL_22;
  }

  if (*(a1 + 84))
  {
    v6 = *(a1 + 80) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 88);
  if (v6)
  {
    v7 = 0;
  }

  if (v7 * (*(a1 + 100) >> 1) != -1)
  {
    *(a1 + 56) = v16[0];
LABEL_21:
    free(v5);
    goto LABEL_22;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_20;
    }

    v8 = qword_28087C408;
    v9 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = qword_28087C408;
    v9 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    (*v8)(*(v8 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v8 += 16;
  }

  while (v8 != v9);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_25:
    abort();
  }

LABEL_20:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v12);
  v5 = *(a1 + 64);
  *(a1 + 56) = v16[0];
  if (v5)
  {
    goto LABEL_21;
  }

LABEL_22:
  v10 = v16[2];
  *(a1 + 64) = v16[1];
  *(a1 + 72) = v10;
  return a1;
}

__int16 sub_2712A1984@<H0>(void *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 12) == 1 && *(v2 + 12) == 1;
  if (v3)
  {
    v22 = v1[4];
    v23 = *(v2 + 16);
    v24 = *v1;
    if (v22 != v23 || v22 != v24)
    {
      v26 = v1[1];
      v27 = v1[2];
      if (v24)
      {
        v28 = v26 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28 || v27 == 0)
      {
        return v99;
      }

      v30 = v26 - 1;
      v31 = *(v1 + 8);
      v32 = *(v2 + 64);
      v33 = 2 * v23;
      v34 = v27 - 1;
      v202 = *(v2 + 16);
      v203 = v1[4];
      v201 = v1[1];
      if (v27 != 1)
      {
        v35 = *(v2 + 20);
        v36 = v1[5];
        if (v26 != 1)
        {
          v37 = 0;
          v38 = 2 * v22;
          v206 = v33 + v32 - v31 - 2 * v22;
          v205 = 2 * (v35 - v36);
          v204 = v33 - 2 * v22;
          v39 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v40 = v39 + 1;
          v41 = 2 * v35;
          v42 = 2 * v36;
          v43 = v32 + 2 * (v24 + v23 * (v26 - 2));
          v44 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
          v45 = v44;
          v46 = (v39 + 1) & 0xC;
          v47 = (v39 + 1) & 0xFFFFFFFFFFFFFFFCLL;
          v48 = v47;
          v49 = v31 + 2 * (v24 + v22 * (v26 - 2));
          while (1)
          {
            v50 = 0;
            v52 = v32 < v49 + v42 * v37 && v31 < v43 + v41 * v37;
            v53 = v32;
            v54 = v31;
            do
            {
              v55 = v50;
              v56 = v53;
              v57 = v54;
              if (v39 < 3 || v52)
              {
                goto LABEL_54;
              }

              if (v39 >= 0xF)
              {
                v59 = 0;
                v60 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v61 = &v53[v59];
                  v62 = *&v54[v59 + 8];
                  *v61 = *&v54[v59];
                  v61[1] = v62;
                  v59 += 16;
                  v60 -= 16;
                }

                while (v60);
                if (v40 == v44)
                {
                  goto LABEL_41;
                }

                v58 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v46)
                {
                  v57 = &v54[v45];
                  v56 = &v53[v45];
                  do
                  {
LABEL_54:
                    v65 = *v57++;
                    *v56++ = v65;
                  }

                  while (v57 != &v54[v24]);
                  goto LABEL_41;
                }
              }

              else
              {
                v58 = 0;
              }

              v56 = &v53[v48];
              v57 = &v54[v48];
              v63 = v58;
              v64 = v58 - v47;
              do
              {
                *&v53[v63] = *&v54[v63];
                v63 += 4;
                v64 += 4;
              }

              while (v64);
              if (v40 != v47)
              {
                goto LABEL_54;
              }

LABEL_41:
              v54 = (v54 + v38);
              v53 = (v53 + v33);
              v50 = v55 + 1;
            }

            while (v55 + 1 != v30);
            if (v39 < 3 || (v206 + v205 * v37 + v204 * v55) < 0x20)
            {
              v66 = v53;
              v67 = v54;
              goto LABEL_59;
            }

            if (v39 >= 0xF)
            {
              v71 = 0;
              v72 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v73 = &v53[v71];
                v74 = *&v54[v71 + 8];
                *v73 = *&v54[v71];
                v73[1] = v74;
                v71 += 16;
                v72 -= 16;
              }

              while (v72);
              if (v40 != v44)
              {
                v70 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v46)
                {
                  v67 = &v54[v45];
                  v66 = &v53[v45];
                  goto LABEL_59;
                }

                goto LABEL_68;
              }
            }

            else
            {
              v70 = 0;
LABEL_68:
              v66 = &v53[v48];
              v67 = &v54[v48];
              v75 = v70;
              v76 = v70 - v47;
              do
              {
                *&v53[v75] = *&v54[v75];
                v75 += 4;
                v76 += 4;
              }

              while (v76);
              if (v40 != v47)
              {
LABEL_59:
                v68 = &v54[v24];
                do
                {
                  v69 = *v67++;
                  *v66++ = v69;
                }

                while (v67 != v68);
              }
            }

            v31 += v42;
            v32 += v41;
            if (++v37 == v34)
            {
              goto LABEL_145;
            }
          }
        }

        v121 = 0;
        v122 = v27 - 2;
        v123 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v124 = v123 + 1;
        v125 = v32 >= v31 + 2 * (v24 + v36 * v122) || v31 >= v32 + 2 * (v24 + v35 * v122);
        v126 = 2 * (v124 & 0xFFFFFFFFFFFFFFF0);
        v127 = v124 & 0xFFFFFFFFFFFFFFFCLL;
        v128 = 2 * (v124 & 0xFFFFFFFFFFFFFFFCLL);
        v129 = !v125;
        v130 = 2 * v36;
        do
        {
          v131 = v32;
          v132 = v31;
          if (!((v123 < 3) | v129 & 1))
          {
            if (v123 < 0xF)
            {
              v133 = 0;
LABEL_138:
              v131 = (v32 + v128);
              v132 = (v31 + v128);
              v138 = 2 * v133;
              v139 = v133 - v127;
              do
              {
                *(v32 + v138) = *(v31 + v138);
                v138 += 8;
                v139 += 4;
              }

              while (v139);
              if (v124 == v127)
              {
                goto LABEL_130;
              }

              goto LABEL_143;
            }

            v134 = 0;
            v135 = v124 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v136 = (v32 + v134);
              v137 = *(v31 + v134 + 16);
              *v136 = *(v31 + v134);
              v136[1] = v137;
              v134 += 32;
              v135 -= 16;
            }

            while (v135);
            if (v124 == (v124 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_130;
            }

            v133 = v124 & 0xFFFFFFFFFFFFFFF0;
            if ((v124 & 0xC) != 0)
            {
              goto LABEL_138;
            }

            v132 = (v31 + v126);
            v131 = (v32 + v126);
          }

          do
          {
LABEL_143:
            v140 = *v132++;
            *v131++ = v140;
          }

          while (v132 != (v31 + 2 * v24));
LABEL_130:
          v31 += v130;
          v32 += 2 * v35;
          ++v121;
        }

        while (v121 != v34);
      }

LABEL_145:
      if (v30)
      {
        v141 = 0;
        v142 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v143 = v142 + 1;
        v145 = v32 < v31 + 2 * (v24 + v203 * (v201 - 2)) && v31 < v32 + 2 * (v24 + v202 * (v201 - 2));
        v146 = 2 * (v143 & 0xFFFFFFFFFFFFFFF0);
        v147 = 2 * (v143 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v148 = v32;
          v149 = v31;
          if (v142 >= 3 && !v145)
          {
            if (v142 < 0xF)
            {
              v150 = 0;
LABEL_161:
              v148 = (v32 + v147);
              v149 = (v31 + v147);
              v155 = 2 * v150;
              v156 = v150 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *(v32 + v155) = *(v31 + v155);
                v155 += 8;
                v156 += 4;
              }

              while (v156);
              if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_153;
              }

              goto LABEL_166;
            }

            v151 = 0;
            v152 = v143 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v153 = (v32 + v151);
              v154 = *(v31 + v151 + 16);
              *v153 = *(v31 + v151);
              v153[1] = v154;
              v151 += 32;
              v152 -= 16;
            }

            while (v152);
            if (v143 == (v143 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_153;
            }

            v150 = v143 & 0xFFFFFFFFFFFFFFF0;
            if ((v143 & 0xC) != 0)
            {
              goto LABEL_161;
            }

            v149 = (v31 + v146);
            v148 = (v32 + v146);
          }

          do
          {
LABEL_166:
            v157 = *v149++;
            *v148++ = v157;
          }

          while (v149 != (v31 + 2 * v24));
LABEL_153:
          v31 += 2 * v203;
          v32 += v33;
          ++v141;
        }

        while (v141 != v30);
      }

      v158 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v158 < 3 || v32 - v31 < 0x20)
      {
        v161 = v32;
        v162 = v31;
        goto LABEL_200;
      }

      v159 = v158 + 1;
      if (v158 >= 0xF)
      {
        v160 = v159 & 0xFFFFFFFFFFFFFFF0;
        v163 = (v31 + 16);
        v164 = (v32 + 16);
        v165 = v159 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v99 = *(v163 - 1);
          v166 = *v163;
          *(v164 - 1) = v99;
          *v164 = v166;
          v163 += 2;
          v164 += 2;
          v165 -= 16;
        }

        while (v165);
        if (v159 == v160)
        {
          return v99;
        }

        if ((v159 & 0xC) == 0)
        {
          v193 = 2 * v160;
          v162 = (v31 + v193);
          v161 = (v32 + v193);
          goto LABEL_200;
        }
      }

      else
      {
        v160 = 0;
      }

      v167 = 2 * (v159 & 0xFFFFFFFFFFFFFFFCLL);
      v161 = (v32 + v167);
      v162 = (v31 + v167);
      v168 = (v31 + 2 * v160);
      v169 = (v32 + 2 * v160);
      v170 = v160 - (v159 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v171 = *v168++;
        LOWORD(v99) = v171;
        *v169++ = v171;
        v170 += 4;
      }

      while (v170);
      if (v159 == (v159 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v99;
      }

LABEL_200:
      v194 = (v31 + 2 * v24);
      do
      {
        v195 = *v162++;
        LOWORD(v99) = v195;
        *v161++ = v195;
      }

      while (v162 != v194);
      return v99;
    }

    v77 = v1[5];
    v78 = *(v2 + 20);
    v79 = v1[1];
    v80 = v79 * v22;
    if (v77 != v78 || v77 != v80)
    {
      v82 = v1[2];
      if (v22)
      {
        v83 = v79 == 0;
      }

      else
      {
        v83 = 1;
      }

      if (v83 || v82 == 0)
      {
        return v99;
      }

      v85 = *(v1 + 8);
      v86 = *(v2 + 64);
      if (v82 == 1)
      {
LABEL_85:
        if (!v80)
        {
          return v99;
        }

        v87 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v87 < 3 || v86 - v85 < 0x20)
        {
          v182 = v86;
          v183 = v85;
          goto LABEL_208;
        }

        v88 = v87 + 1;
        if (v87 >= 0xF)
        {
          v89 = v88 & 0xFFFFFFFFFFFFFFF0;
          v184 = (v85 + 16);
          v185 = (v86 + 16);
          v186 = v88 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = *(v184 - 1);
            v187 = *v184;
            *(v185 - 1) = v99;
            *v185 = v187;
            v184 += 2;
            v185 += 2;
            v186 -= 16;
          }

          while (v186);
          if (v88 == v89)
          {
            return v99;
          }

          if ((v88 & 0xC) == 0)
          {
            v183 = (v85 + 2 * v89);
            v182 = (v86 + 2 * v89);
            goto LABEL_208;
          }
        }

        else
        {
          v89 = 0;
        }

        v188 = 2 * (v88 & 0xFFFFFFFFFFFFFFFCLL);
        v182 = (v86 + v188);
        v183 = (v85 + v188);
        v189 = (v85 + 2 * v89);
        v190 = (v86 + 2 * v89);
        v191 = v89 - (v88 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v192 = *v189++;
          LOWORD(v99) = v192;
          *v190++ = v192;
          v191 += 4;
        }

        while (v191);
        if (v88 == (v88 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v99;
        }

LABEL_208:
        v198 = (v85 + 2 * v80);
        do
        {
          v199 = *v183++;
          LOWORD(v99) = v199;
          *v182++ = v199;
        }

        while (v183 != v198);
        return v99;
      }

      if (!v80)
      {
        return v99;
      }

      v100 = 0;
      v101 = v82 - 2;
      v102 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v103 = v102 + 1;
      v104 = v86 >= v85 + 2 * (v80 + v77 * v101) || v85 >= v86 + 2 * (v80 + v78 * v101);
      v105 = 2 * (v103 & 0xFFFFFFFFFFFFFFF0);
      v106 = v103 & 0xFFFFFFFFFFFFFFFCLL;
      v107 = 2 * (v103 & 0xFFFFFFFFFFFFFFFCLL);
      v108 = !v104;
      v109 = 2 * v77;
      v110 = 2 * v78;
      while (1)
      {
        v111 = v86;
        v112 = v85;
        if (!((v102 < 3) | v108 & 1))
        {
          if (v102 < 0xF)
          {
            v113 = 0;
LABEL_116:
            v111 = (v86 + v107);
            v112 = (v85 + v107);
            v118 = 2 * v113;
            v119 = v113 - v106;
            do
            {
              *&v99 = *(v85 + v118);
              *(v86 + v118) = v99;
              v118 += 8;
              v119 += 4;
            }

            while (v119);
            if (v103 == v106)
            {
              goto LABEL_108;
            }

            goto LABEL_121;
          }

          v114 = 0;
          v115 = v103 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v116 = (v86 + v114);
            v99 = *(v85 + v114);
            v117 = *(v85 + v114 + 16);
            *v116 = v99;
            v116[1] = v117;
            v114 += 32;
            v115 -= 16;
          }

          while (v115);
          if (v103 == (v103 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_108;
          }

          v113 = v103 & 0xFFFFFFFFFFFFFFF0;
          if ((v103 & 0xC) != 0)
          {
            goto LABEL_116;
          }

          v112 = (v85 + v105);
          v111 = (v86 + v105);
        }

        do
        {
LABEL_121:
          v120 = *v112++;
          LOWORD(v99) = v120;
          *v111++ = v120;
        }

        while (v112 != (v85 + 2 * v80));
LABEL_108:
        v85 += v109;
        v86 += v110;
        v3 = v100++ == v101;
        if (v3)
        {
          goto LABEL_85;
        }
      }
    }

    v90 = v1[2] * v77;
    if (!v90)
    {
      return v99;
    }

    v91 = *(v1 + 8);
    v92 = *(v2 + 64);
    v93 = (v90 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v93 < 3)
    {
      v94 = *(v1 + 8);
      goto LABEL_204;
    }

    v94 = *(v1 + 8);
    if (v92 - v91 < 0x20)
    {
      goto LABEL_204;
    }

    v95 = v93 + 1;
    if (v93 >= 0xF)
    {
      v96 = v95 & 0xFFFFFFFFFFFFFFF0;
      v172 = (v91 + 16);
      v173 = v92 + 8;
      v174 = v95 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v99 = *(v172 - 1);
        v175 = *v172;
        *(v173 - 1) = v99;
        *v173 = v175;
        v172 += 2;
        v173 += 2;
        v174 -= 16;
      }

      while (v174);
      if (v95 == v96)
      {
        return v99;
      }

      if ((v95 & 0xC) == 0)
      {
        v94 = (v91 + 2 * v96);
        v92 += v96;
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
    }

    v176 = v95 & 0xFFFFFFFFFFFFFFFCLL;
    v177 = &v92[v176];
    v94 = (v91 + v176 * 2);
    v178 = (v91 + 2 * v96);
    v179 = &v92[v96];
    v180 = v96 - (v95 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v181 = *v178++;
      LOWORD(v99) = v181;
      *v179++ = v181;
      v180 += 4;
    }

    while (v180);
    v92 = v177;
    if (v95 == (v95 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v99;
    }

LABEL_204:
    v196 = (v91 + 2 * v90);
    do
    {
      v197 = *v94++;
      LOWORD(v99) = v197;
      *v92++ = v197;
    }

    while (v94 != v196);
    return v99;
  }

  v4 = v1[1];
  v5 = v1[2];
  if (*v1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = v4 - 1;
    v9 = *(v1 + 8);
    v10 = *(v2 + 64);
    v11 = 2 * v1[4];
    v12 = 2 * *(v2 + 16);
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 20);
      v15 = v1[5];
      if (v8)
      {
        v16 = 0;
        v17 = v9 + 1;
        v18 = v10 + 1;
        do
        {
          v19 = v18;
          v20 = v17;
          v21 = v8;
          do
          {
            *(v19 - 1) = *(v20 - 1);
            *v19 = *v20;
            v20 = (v20 + v11);
            v19 = (v19 + v12);
            --v21;
          }

          while (v21);
          *(v19 - 1) = *(v20 - 1);
          *v19 = *v20;
          v9 += v15;
          v10 += v14;
          ++v16;
          v17 += v15;
          v18 += v14;
        }

        while (v16 != v13);
        goto LABEL_98;
      }

      v97 = 2 * v15;
      v98 = 2 * v14;
      do
      {
        *v10 = *v9;
        v10[1] = v9[1];
        v9 = (v9 + v97);
        v10 = (v10 + v98);
        --v13;
      }

      while (v13);
    }

    if (!v8)
    {
LABEL_99:
      *v10 = *v9;
      LOWORD(v99) = v9[1];
      v10[1] = v99;
      return v99;
    }

    do
    {
LABEL_98:
      *v10 = *v9;
      v10[1] = v9[1];
      v9 = (v9 + v11);
      v10 = (v10 + v12);
      --v8;
    }

    while (v8);
    goto LABEL_99;
  }

  return v99;
}

uint64_t sub_2712A2398(uint64_t a1)
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

float sub_2712A2500(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == 1 && *(a2 + 20) == 1)
  {
    v23 = *(a1 + 24);
    v24 = *(a1 + 8);
    if (v23 != *(a2 + 24) || v23 != v24)
    {
      v45 = *(a1 + 8);
      if (v24)
      {
        v26 = *(a1 + 12) == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26 && *(a1 + 16) != 0)
      {
        sub_271257F54(&v45, a1, a2);
      }

      return result;
    }

    v29 = *(a1 + 28);
    v30 = *(a2 + 28);
    v31 = *(a1 + 12);
    v32 = (v31 * v23);
    if (v29 == v30 && v29 == v32)
    {
      v43 = *(a1 + 16) * v29;
      if (!v43)
      {
        return result;
      }

      v40 = 4 * v43;
      v41 = *a2;
      v42 = *a1;
    }

    else
    {
      if (!v23)
      {
        return result;
      }

      if (!v31)
      {
        return result;
      }

      v34 = *(a1 + 16);
      if (!v34)
      {
        return result;
      }

      v35 = *a1;
      v36 = *a2;
      v37 = v34 - 1;
      if (v34 != 1)
      {
        if (!v32)
        {
          return result;
        }

        v38 = 4 * v29;
        v39 = 4 * v30;
        do
        {
          memmove(v36, v35, 4 * v32);
          v35 += v38;
          v36 += v39;
          --v37;
        }

        while (v37);
      }

      if (!v32)
      {
        return result;
      }

      v40 = 4 * v32;
      v41 = v36;
      v42 = v35;
    }

    memmove(v41, v42, v40);
    return result;
  }

  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v6 != 0)
  {
    v9 = v5 - 1;
    v10 = *a1;
    v11 = *a2;
    v12 = 4 * *(a1 + 24);
    v13 = 4 * *(a2 + 24);
    v14 = v6 - 1;
    if (v14)
    {
      v15 = *(a2 + 28);
      v16 = *(a1 + 28);
      if (!v9)
      {
        v44 = 4 * v15;
        do
        {
          *v11 = *v10;
          *(v11 + 1) = *(v10 + 1);
          v10 += 4 * v16;
          v11 += v44;
          --v14;
        }

        while (v14);
        goto LABEL_54;
      }

      v17 = 0;
      v18 = v10 + 4;
      v19 = v11 + 4;
      do
      {
        v20 = v19;
        v21 = v18;
        v22 = v9;
        do
        {
          *(v20 - 1) = *(v21 - 1);
          *v20 = *v21;
          v21 = (v21 + v12);
          v20 = (v20 + v13);
          --v22;
        }

        while (v22);
        *(v20 - 1) = *(v21 - 1);
        *v20 = *v21;
        v10 += 4 * v16;
        v11 += 4 * v15;
        ++v17;
        v18 += 4 * v16;
        v19 += 4 * v15;
      }

      while (v17 != v14);
    }

    else if (!v9)
    {
LABEL_54:
      *v11 = *v10;
      result = *(v10 + 1);
      *(v11 + 1) = result;
      return result;
    }

    do
    {
      *v11 = *v10;
      *(v11 + 1) = *(v10 + 1);
      v10 += v12;
      v11 += v13;
      --v9;
    }

    while (v9);
    goto LABEL_54;
  }

  return result;
}

__n128 sub_2712A2774(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812EFA0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A280C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812EFA0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288111F98;
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

  return sub_2712A28EC(a2 + 8, (a3 + 8));
}

uint64_t sub_2712A28EC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    *&v9 = a2;
    *(&v9 + 1) = a1;
    sub_2712A29C4(&v9);
    return a1;
  }

  else
  {
    v3 = a2[1];
    v9 = *a2;
    v10 = v3;
    v11 = a2[2];
    v12 = *(a2 + 6);
    sub_2712579B8(v13, a2 + 56);
    v4 = v10;
    *a1 = v9;
    *(a1 + 16) = v4;
    *(a1 + 32) = v11;
    *(a1 + 80) = v14;
    *(a1 + 96) = v15;
    v5 = v13[0];
    *(a1 + 48) = v12;
    *(a1 + 56) = v5;
    v6 = *(a1 + 64);
    if (v6)
    {
      free(v6);
    }

    v7 = v13[2];
    *(a1 + 64) = v13[1];
    *(a1 + 72) = v7;
    return a1;
  }
}

float sub_2712A29C4(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 12) == 1 && *(v2 + 12) == 1)
  {
    v22 = v1[4];
    v23 = *v1;
    if (v22 != *(v2 + 16) || v22 != v23)
    {
      v45 = *v1;
      if (v23)
      {
        v25 = v1[1] == 0;
      }

      else
      {
        v25 = 1;
      }

      if (!v25 && v1[2] != 0)
      {
        sub_2712A2C38(&v45, v1, v2);
      }

      return result;
    }

    v28 = v1[5];
    v29 = *(v2 + 20);
    v30 = v1[1];
    v31 = v30 * v22;
    if (v28 == v29 && v28 == v31)
    {
      v44 = v1[2] * v28;
      if (!v44)
      {
        return result;
      }

      v42 = *(v2 + 64);
      v43 = *(v1 + 8);
      v41 = 4 * v44;
    }

    else
    {
      v33 = v1[2];
      if (v22)
      {
        v34 = v30 == 0;
      }

      else
      {
        v34 = 1;
      }

      if (v34 || v33 == 0)
      {
        return result;
      }

      v36 = *(v1 + 8);
      v37 = *(v2 + 64);
      v38 = v33 - 1;
      if (v33 != 1)
      {
        if (!v31)
        {
          return result;
        }

        v39 = 4 * v28;
        v40 = 4 * v29;
        do
        {
          memmove(v37, v36, 4 * v31);
          v36 += v39;
          v37 += v40;
          --v38;
        }

        while (v38);
      }

      if (!v31)
      {
        return result;
      }

      v41 = 4 * v31;
      v42 = v37;
      v43 = v36;
    }

    memmove(v42, v43, v41);
    return result;
  }

  v4 = v1[1];
  v5 = v1[2];
  if (*v1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = v4 - 1;
    v9 = *(v1 + 8);
    v10 = *(v2 + 64);
    v11 = 4 * v1[4];
    v12 = 4 * *(v2 + 16);
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 20);
      v15 = v1[5];
      if (!v8)
      {
        do
        {
          *v10 = *v9;
          v10[1] = v9[1];
          v9 += v15;
          v10 += v14;
          --v13;
        }

        while (v13);
        goto LABEL_57;
      }

      v16 = 0;
      v17 = v9 + 1;
      v18 = v10 + 1;
      do
      {
        v19 = v18;
        v20 = v17;
        v21 = v8;
        do
        {
          *(v19 - 1) = *(v20 - 1);
          *v19 = *v20;
          v20 = (v20 + v11);
          v19 = (v19 + v12);
          --v21;
        }

        while (v21);
        *(v19 - 1) = *(v20 - 1);
        *v19 = *v20;
        v9 += v15;
        v10 += v14;
        ++v16;
        v17 += v15;
        v18 += v14;
      }

      while (v16 != v13);
    }

    else if (!v8)
    {
LABEL_57:
      *v10 = *v9;
      result = v9[1];
      v10[1] = result;
      return result;
    }

    do
    {
      *v10 = *v9;
      v10[1] = v9[1];
      v9 = (v9 + v11);
      v10 = (v10 + v12);
      --v8;
    }

    while (v8);
    goto LABEL_57;
  }

  return result;
}

uint64_t *sub_2712A2C38(uint64_t *result, uint64_t a2, uint64_t a3)
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
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 16);
    v10 = *(a3 + 16);
    v11 = *(a2 + 64);
    v12 = *(a3 + 64);
    v35 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 20);
      v14 = *(a2 + 20);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v30 = 0;
        v31 = *(a2 + 4);
        v25 = v4 - 2;
LABEL_27:
        result = memmove(v12, v11, 4 * v15);
        while (v25)
        {
          v15 = *v7;
          --v25;
          v11 += 4 * v14;
          v12 += 4 * v13;
          if (*v7)
          {
            goto LABEL_27;
          }
        }

        v11 += 4 * v14;
        v12 += 4 * v13;
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v30 = v3 - 1;
        v31 = *(a2 + 4);
        v16 = 0;
        v32 = v3 - 2;
        v28 = *(a3 + 16);
        v29 = *(a2 + 16);
        v17 = 4 * v9;
        v18 = &v11[4 * v9];
        v19 = 4 * v14;
        v20 = 4 * v10;
        v21 = &v12[4 * v10];
        v33 = 4 * v13;
        v34 = v19;
LABEL_14:
        v36 = v18;
        v22 = 0;
        v23 = 0;
        v24 = v32;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v22], &v11[v23], 4 * v15);
        }

        while (v24)
        {
          v15 = *v7;
          --v24;
          v23 += v17;
          v22 += v20;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        v18 = v36;
        if (*v7)
        {
          result = memmove(&v21[v22], &v36[v23], 4 * *v7);
        }

        while (1)
        {
          v11 += v34;
          v12 += v33;
          if (++v16 == v35)
          {
            break;
          }

          v15 = *v7;
          v18 += v34;
          v21 += v33;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v10 = v28;
        v9 = v29;
      }

      v8 = v30;
      v3 = v31;
    }

    v26 = *v7;
    if (v8)
    {
      if (!v26)
      {
        return result;
      }

      v27 = v3 - 2;
LABEL_36:
      result = memmove(v12, v11, 4 * v26);
      while (v27)
      {
        v26 = *v7;
        --v27;
        v11 += 4 * v9;
        v12 += 4 * v10;
        if (*v7)
        {
          goto LABEL_36;
        }
      }

      v26 = *v7;
      v11 += 4 * v9;
      v12 += 4 * v10;
    }

    if (v26)
    {

      return memmove(v12, v11, 4 * v26);
    }
  }

  return result;
}

void sub_2712A2E80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v24 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      v25 = &v24;
      sub_2712A3004(&v25, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v25 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_27129F9A4(&v25, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v23 = (*(a1 + 16) * v12);
    if (!v23)
    {
      return;
    }

    v21 = *a2;
    v22 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          do
          {
            memmove(v19, v18, v15);
            v18 += v12;
            v19 += v13;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v21 = v19;
          v22 = v18;
          v23 = v15;
LABEL_40:

          memmove(v21, v22, v23);
        }
      }
    }
  }
}

void sub_2712A3004(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a2 + 24);
    v9 = *(a3 + 24);
    v10 = *a2;
    v11 = *a3;
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v11 + 2;
        v17 = v10 + 2;
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
            v19 += v9;
            v18 += v8;
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v10 += v14;
          v11 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_17;
      }

      do
      {
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v10 += v14;
        v11 += v13;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_18:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      return;
    }

    do
    {
LABEL_17:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v10 += v8;
      v11 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_18;
  }
}

__n128 sub_2712A312C(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812EFC0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A31C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812EFC0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288111F18;
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

uint64_t sub_2712A32A4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    *&v9 = a2;
    *(&v9 + 1) = a1;
    sub_2712A337C(&v9);
    return a1;
  }

  else
  {
    v3 = a2[1];
    v9 = *a2;
    v10 = v3;
    v11 = a2[2];
    v12 = *(a2 + 6);
    sub_271255604(v13, a2 + 56);
    v4 = v10;
    *a1 = v9;
    *(a1 + 16) = v4;
    *(a1 + 32) = v11;
    *(a1 + 80) = v14;
    *(a1 + 96) = v15;
    v5 = v13[0];
    *(a1 + 48) = v12;
    *(a1 + 56) = v5;
    v6 = *(a1 + 64);
    if (v6)
    {
      free(v6);
    }

    v7 = v13[2];
    *(a1 + 64) = v13[1];
    *(a1 + 72) = v7;
    return a1;
  }
}

void sub_2712A337C(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 12) != 1 || *(v2 + 12) != 1)
  {
    v26 = 0;
    if (*v1)
    {
      v4 = v1[1] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && v1[2] != 0)
    {
      v27 = &v26;
      sub_2712A34FC(&v27, v1, v2);
    }

    return;
  }

  v6 = v1[4];
  v7 = *v1;
  if (v6 != *(v2 + 16) || v6 != v7)
  {
    v27 = *v1;
    if (v7)
    {
      v9 = v1[1] == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v1[2] != 0)
    {
      sub_2712A0040(&v27, v1, v2);
    }

    return;
  }

  v11 = v1[5];
  v12 = *(v2 + 20);
  v13 = v1[1];
  v14 = v13 * v6;
  if (v11 == v12 && v11 == v14)
  {
    v25 = v1[2] * v11;
    if (!v25)
    {
      return;
    }

    v22 = *(v2 + 64);
    v23 = *(v1 + 8);
    v24 = v25;
    goto LABEL_44;
  }

  v16 = v1[2];
  if (v6)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v16 != 0)
  {
    v19 = *(v1 + 8);
    v20 = *(v2 + 64);
    v21 = v16 - 1;
    if (v16 != 1)
    {
      if (!v14)
      {
        return;
      }

      do
      {
        memmove(v20, v19, v14);
        v19 += v11;
        v20 += v12;
        --v21;
      }

      while (v21);
    }

    if (v14)
    {
      v22 = v20;
      v23 = v19;
      v24 = v14;
LABEL_44:

      memmove(v22, v23, v24);
    }
  }
}

void sub_2712A34FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a2 + 16);
    v9 = *(a3 + 16);
    v10 = *(a2 + 64);
    v11 = *(a3 + 64);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 20);
      v14 = *(a2 + 20);
      if (v7)
      {
        v15 = 0;
        v16 = v11 + 2;
        v17 = v10 + 2;
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
            v19 += v9;
            v18 += v8;
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v10 += v14;
          v11 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_17;
      }

      do
      {
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v10 += v14;
        v11 += v13;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_18:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      return;
    }

    do
    {
LABEL_17:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v10 += v8;
      v11 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_18;
  }
}

void sub_2712A3624(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v27 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      v28 = &v27;
      sub_2712A37B4(&v28, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v28 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_2712566FC(&v28, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v26 = *(a1 + 16) * v12;
    if (!v26)
    {
      return;
    }

    v23 = 2 * v26;
    v24 = *a2;
    v25 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          v21 = 2 * v12;
          v22 = 2 * v13;
          do
          {
            memmove(v19, v18, 2 * v15);
            v18 += v21;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v23 = 2 * v15;
          v24 = v19;
          v25 = v18;
LABEL_40:

          memmove(v24, v25, v23);
        }
      }
    }
  }
}

void sub_2712A37B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
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
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
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
      return;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }
}

__n128 sub_2712A38F8(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812EFE0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A3990(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812EFE0[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288113298;
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

uint64_t sub_2712A3A70(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    *&v9 = a2;
    *(&v9 + 1) = a1;
    sub_2712A3B48(&v9);
    return a1;
  }

  else
  {
    v3 = a2[1];
    v9 = *a2;
    v10 = v3;
    v11 = a2[2];
    v12 = *(a2 + 6);
    sub_271256160(v13, a2 + 56);
    v4 = v10;
    *a1 = v9;
    *(a1 + 16) = v4;
    *(a1 + 32) = v11;
    *(a1 + 80) = v14;
    *(a1 + 96) = v15;
    v5 = v13[0];
    *(a1 + 48) = v12;
    *(a1 + 56) = v5;
    v6 = *(a1 + 64);
    if (v6)
    {
      free(v6);
    }

    v7 = v13[2];
    *(a1 + 64) = v13[1];
    *(a1 + 72) = v7;
    return a1;
  }
}

void sub_2712A3B48(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 12) != 1 || *(v2 + 12) != 1)
  {
    v28 = 0;
    if (*v1)
    {
      v4 = v1[1] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && v1[2] != 0)
    {
      v29 = &v28;
      sub_2712A3CD4(&v29, v1, v2);
    }

    return;
  }

  v6 = v1[4];
  v7 = *v1;
  if (v6 != *(v2 + 16) || v6 != v7)
  {
    v29 = *v1;
    if (v7)
    {
      v9 = v1[1] == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v1[2] != 0)
    {
      sub_2712A0974(&v29, v1, v2);
    }

    return;
  }

  v11 = v1[5];
  v12 = *(v2 + 20);
  v13 = v1[1];
  v14 = v13 * v6;
  if (v11 == v12 && v11 == v14)
  {
    v27 = v1[2] * v11;
    if (!v27)
    {
      return;
    }

    v25 = *(v2 + 64);
    v26 = *(v1 + 8);
    v24 = 2 * v27;
    goto LABEL_44;
  }

  v16 = v1[2];
  if (v6)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v16 != 0)
  {
    v19 = *(v1 + 8);
    v20 = *(v2 + 64);
    v21 = v16 - 1;
    if (v16 != 1)
    {
      if (!v14)
      {
        return;
      }

      v22 = 2 * v11;
      v23 = 2 * v12;
      do
      {
        memmove(v20, v19, 2 * v14);
        v19 += v22;
        v20 += v23;
        --v21;
      }

      while (v21);
    }

    if (v14)
    {
      v24 = 2 * v14;
      v25 = v20;
      v26 = v19;
LABEL_44:

      memmove(v25, v26, v24);
    }
  }
}

void sub_2712A3CD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = v8[1];
          v9[2] = v8[2];
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
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
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
      return;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }
}

__int16 sub_2712A3E18@<H0>(uint64_t *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 20) == 1 && *(v2 + 20) == 1;
  if (!v3)
  {
    v191 = 0;
    if (*(v1 + 8))
    {
      v4 = *(v1 + 12) == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && *(v1 + 16) != 0)
    {
      v192 = &v191;
      LOWORD(v6) = sub_2712A4748(&v192, v1, v2);
    }

    return v6;
  }

  v7 = *(v1 + 24);
  v8 = *(v2 + 24);
  v9 = *(v1 + 8);
  if (v7 == v8 && v7 == v9)
  {
    v63 = *(v1 + 28);
    v64 = *(v2 + 28);
    v65 = *(v1 + 12);
    v66 = (v65 * v7);
    if (v63 != v64 || v63 != v66)
    {
      v68 = *(v1 + 16);
      if (v7)
      {
        v69 = v65 == 0;
      }

      else
      {
        v69 = 1;
      }

      if (v69 || v68 == 0)
      {
        return v6;
      }

      v71 = *v1;
      v72 = *v2;
      if (v68 == 1)
      {
LABEL_79:
        if (!v66)
        {
          return v6;
        }

        v73 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v73 < 3 || (v72 - v71) < 0x20)
        {
          v166 = v72;
          v167 = v71;
          goto LABEL_197;
        }

        v74 = v73 + 1;
        if (v73 >= 0xF)
        {
          v75 = v74 & 0xFFFFFFFFFFFFFFF0;
          v168 = (v71 + 8);
          v169 = v72 + 8;
          v170 = v74 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v6 = *(v168 - 1);
            v171 = *v168;
            *(v169 - 1) = v6;
            *v169 = v171;
            v168 += 2;
            v169 += 2;
            v170 -= 16;
          }

          while (v170);
          if (v74 == v75)
          {
            return v6;
          }

          if ((v74 & 0xC) == 0)
          {
            v167 = &v71[v75];
            v166 = &v72[v75];
            goto LABEL_197;
          }
        }

        else
        {
          v75 = 0;
        }

        v172 = v74 & 0xFFFFFFFFFFFFFFFCLL;
        v166 = &v72[v172];
        v167 = &v71[v172];
        v173 = &v71[v75];
        v174 = &v72[v75];
        v175 = v75 - (v74 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v176 = *v173++;
          LOWORD(v6) = v176;
          *v174 = v176;
          v174 += 4;
          v175 += 4;
        }

        while (v175);
        if (v74 == (v74 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v6;
        }

LABEL_197:
        v182 = &v71[v66];
        do
        {
          v183 = *v167++;
          LOWORD(v6) = v183;
          *v166++ = v183;
        }

        while (v167 != v182);
        return v6;
      }

      if (!v66)
      {
        return v6;
      }

      v83 = 0;
      v84 = v68 - 2;
      v85 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v86 = v85 + 1;
      v87 = v72 >= &v71[v66 + v63 * v84] || v71 >= &v72[v66 + v64 * v84];
      v88 = v86 & 0xFFFFFFFFFFFFFFF0;
      v89 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v90 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v91 = !v87;
      v92 = 2 * v63;
      v93 = 2 * v64;
      while (1)
      {
        v94 = v72;
        v95 = v71;
        if (!((v85 < 3) | v91 & 1))
        {
          if (v85 < 0xF)
          {
            v96 = 0;
LABEL_105:
            v94 = &v72[v90];
            v95 = &v71[v90];
            v101 = v96;
            v102 = v96 - v89;
            do
            {
              *&v6 = *&v71[v101];
              *&v72[v101] = v6;
              v101 += 4;
              v102 += 4;
            }

            while (v102);
            if (v86 == v89)
            {
              goto LABEL_97;
            }

            goto LABEL_110;
          }

          v97 = 0;
          v98 = v86 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = &v72[v97];
            v6 = *&v71[v97];
            v100 = *&v71[v97 + 8];
            *v99 = v6;
            *(v99 + 1) = v100;
            v97 += 16;
            v98 -= 16;
          }

          while (v98);
          if (v86 == (v86 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_97;
          }

          v96 = v86 & 0xFFFFFFFFFFFFFFF0;
          if ((v86 & 0xC) != 0)
          {
            goto LABEL_105;
          }

          v95 = &v71[v88];
          v94 = &v72[v88];
        }

        do
        {
LABEL_110:
          v103 = *v95++;
          LOWORD(v6) = v103;
          *v94++ = v103;
        }

        while (v95 != &v71[v66]);
LABEL_97:
        v71 = (v71 + v92);
        v72 = (v72 + v93);
        v3 = v83++ == v84;
        if (v3)
        {
          goto LABEL_79;
        }
      }
    }

    v76 = (*(v1 + 16) * v63);
    if (!v76)
    {
      return v6;
    }

    v77 = *v1;
    v78 = *v2;
    v79 = (v76 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v79 < 3)
    {
      v80 = *v1;
      goto LABEL_193;
    }

    v80 = *v1;
    if ((v78 - v77) < 0x20)
    {
      goto LABEL_193;
    }

    v81 = v79 + 1;
    if (v79 >= 0xF)
    {
      v82 = v81 & 0xFFFFFFFFFFFFFFF0;
      v156 = (v77 + 8);
      v157 = v78 + 8;
      v158 = v81 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v156 - 1);
        v159 = *v156;
        *(v157 - 1) = v6;
        *v157 = v159;
        v156 += 2;
        v157 += 2;
        v158 -= 16;
      }

      while (v158);
      if (v81 == v82)
      {
        return v6;
      }

      if ((v81 & 0xC) == 0)
      {
        v80 = &v77[v82];
        v78 += v82;
        goto LABEL_193;
      }
    }

    else
    {
      v82 = 0;
    }

    v160 = v81 & 0xFFFFFFFFFFFFFFFCLL;
    v161 = &v78[v160];
    v80 = &v77[v160];
    v162 = &v77[v82];
    v163 = &v78[v82];
    v164 = v82 - (v81 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      LOWORD(v6) = v165;
      *v163 = v165;
      v163 += 4;
      v164 += 4;
    }

    while (v164);
    v78 = v161;
    if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_193:
    v180 = &v77[v76];
    do
    {
      v181 = *v80++;
      LOWORD(v6) = v181;
      *v78++ = v181;
    }

    while (v80 != v180);
    return v6;
  }

  v12 = *(v1 + 12);
  v11 = *(v1 + 16);
  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v11 != 0)
  {
    v15 = v12 - 1;
    v16 = *v1;
    v17 = *v2;
    v18 = 2 * v8;
    v19 = v11 - 1;
    v186 = *(v2 + 24);
    v187 = *(v1 + 24);
    v185 = *(v1 + 12);
    if (v11 != 1)
    {
      v20 = *(v2 + 28);
      v21 = *(v1 + 28);
      if (v12 != 1)
      {
        v22 = 0;
        v23 = 2 * v7;
        v190 = v18 + v17 - v16 - 2 * v7;
        v189 = 2 * (v20 - v21);
        v188 = v18 - 2 * v7;
        v24 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v25 = v24 + 1;
        v26 = v12 - 2;
        v27 = 2 * v20;
        v28 = 2 * v21;
        v29 = v17 + 2 * (v9 + v8 * v26);
        v30 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
        v31 = v30;
        v32 = (v24 + 1) & 0xC;
        v33 = (v24 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v34 = v33;
        v35 = v16 + 2 * (v9 + v7 * v26);
        while (1)
        {
          v36 = 0;
          v38 = v17 < v35 + v28 * v22 && v16 < v29 + v27 * v22;
          v39 = v17;
          v40 = v16;
          do
          {
            v41 = v36;
            v42 = v39;
            v43 = v40;
            if (v24 < 3 || v38)
            {
              goto LABEL_48;
            }

            if (v24 >= 0xF)
            {
              v45 = 0;
              v46 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v47 = &v39[v45];
                v48 = *&v40[v45 + 8];
                *v47 = *&v40[v45];
                v47[1] = v48;
                v45 += 16;
                v46 -= 16;
              }

              while (v46);
              if (v25 == v30)
              {
                goto LABEL_35;
              }

              v44 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v43 = &v40[v31];
                v42 = &v39[v31];
                do
                {
LABEL_48:
                  v51 = *v43++;
                  *v42++ = v51;
                }

                while (v43 != &v40[v9]);
                goto LABEL_35;
              }
            }

            else
            {
              v44 = 0;
            }

            v42 = &v39[v34];
            v43 = &v40[v34];
            v49 = v44;
            v50 = v44 - v33;
            do
            {
              *&v39[v49] = *&v40[v49];
              v49 += 4;
              v50 += 4;
            }

            while (v50);
            if (v25 != v33)
            {
              goto LABEL_48;
            }

LABEL_35:
            v40 = (v40 + v23);
            v39 = (v39 + v18);
            v36 = v41 + 1;
          }

          while (v41 + 1 != v15);
          if (v24 < 3 || (v190 + v189 * v22 + v188 * v41) < 0x20)
          {
            v52 = v39;
            v53 = v40;
            goto LABEL_53;
          }

          if (v24 >= 0xF)
          {
            v57 = 0;
            v58 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v59 = &v39[v57];
              v60 = *&v40[v57 + 8];
              *v59 = *&v40[v57];
              v59[1] = v60;
              v57 += 16;
              v58 -= 16;
            }

            while (v58);
            if (v25 != v30)
            {
              v56 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v53 = &v40[v31];
                v52 = &v39[v31];
                goto LABEL_53;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v56 = 0;
LABEL_62:
            v52 = &v39[v34];
            v53 = &v40[v34];
            v61 = v56;
            v62 = v56 - v33;
            do
            {
              *&v39[v61] = *&v40[v61];
              v61 += 4;
              v62 += 4;
            }

            while (v62);
            if (v25 != v33)
            {
LABEL_53:
              v54 = &v40[v9];
              do
              {
                v55 = *v53++;
                *v52++ = v55;
              }

              while (v53 != v54);
            }
          }

          v16 += v28;
          v17 += v27;
          if (++v22 == v19)
          {
            goto LABEL_134;
          }
        }
      }

      v104 = 0;
      v105 = v11 - 2;
      v106 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v107 = v106 + 1;
      v108 = v17 >= v16 + 2 * (v9 + v21 * v105) || v16 >= v17 + 2 * (v9 + v20 * v105);
      v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFF0);
      v110 = v107 & 0xFFFFFFFFFFFFFFFCLL;
      v111 = 2 * (v107 & 0xFFFFFFFFFFFFFFFCLL);
      v112 = !v108;
      v113 = 2 * v21;
      v114 = 2 * v20;
      do
      {
        v115 = v17;
        v116 = v16;
        if (!((v106 < 3) | v112 & 1))
        {
          if (v106 < 0xF)
          {
            v117 = 0;
LABEL_127:
            v115 = (v17 + v111);
            v116 = (v16 + v111);
            v122 = 2 * v117;
            v123 = v117 - v110;
            do
            {
              *(v17 + v122) = *(v16 + v122);
              v122 += 8;
              v123 += 4;
            }

            while (v123);
            if (v107 == v110)
            {
              goto LABEL_119;
            }

            goto LABEL_132;
          }

          v118 = 0;
          v119 = v107 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v120 = (v17 + v118);
            v121 = *(v16 + v118 + 16);
            *v120 = *(v16 + v118);
            v120[1] = v121;
            v118 += 32;
            v119 -= 16;
          }

          while (v119);
          if (v107 == (v107 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_119;
          }

          v117 = v107 & 0xFFFFFFFFFFFFFFF0;
          if ((v107 & 0xC) != 0)
          {
            goto LABEL_127;
          }

          v116 = (v16 + v109);
          v115 = (v17 + v109);
        }

        do
        {
LABEL_132:
          v124 = *v116++;
          *v115++ = v124;
        }

        while (v116 != (v16 + 2 * v9));
LABEL_119:
        v16 += v113;
        v17 += v114;
        ++v104;
      }

      while (v104 != v19);
    }

LABEL_134:
    if (v15)
    {
      v125 = 0;
      v126 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v127 = v126 + 1;
      v129 = v17 < v16 + 2 * (v9 + v187 * (v185 - 2)) && v16 < v17 + 2 * (v9 + v186 * (v185 - 2));
      v130 = 2 * (v127 & 0xFFFFFFFFFFFFFFF0);
      v131 = 2 * (v127 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v132 = v17;
        v133 = v16;
        if (v126 >= 3 && !v129)
        {
          if (v126 < 0xF)
          {
            v134 = 0;
LABEL_150:
            v132 = (v17 + v131);
            v133 = (v16 + v131);
            v139 = 2 * v134;
            v140 = v134 - (v127 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *(v17 + v139) = *(v16 + v139);
              v139 += 8;
              v140 += 4;
            }

            while (v140);
            if (v127 == (v127 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_142;
            }

            goto LABEL_155;
          }

          v135 = 0;
          v136 = v127 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v137 = (v17 + v135);
            v138 = *(v16 + v135 + 16);
            *v137 = *(v16 + v135);
            v137[1] = v138;
            v135 += 32;
            v136 -= 16;
          }

          while (v136);
          if (v127 == (v127 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_142;
          }

          v134 = v127 & 0xFFFFFFFFFFFFFFF0;
          if ((v127 & 0xC) != 0)
          {
            goto LABEL_150;
          }

          v133 = (v16 + v130);
          v132 = (v17 + v130);
        }

        do
        {
LABEL_155:
          v141 = *v133++;
          *v132++ = v141;
        }

        while (v133 != (v16 + 2 * v9));
LABEL_142:
        v16 += 2 * v187;
        v17 += v18;
        ++v125;
      }

      while (v125 != v15);
    }

    v142 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v142 < 3 || v17 - v16 < 0x20)
    {
      v145 = v17;
      v146 = v16;
      goto LABEL_189;
    }

    v143 = v142 + 1;
    if (v142 >= 0xF)
    {
      v144 = v143 & 0xFFFFFFFFFFFFFFF0;
      v147 = (v16 + 16);
      v148 = (v17 + 16);
      v149 = v143 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v147 - 1);
        v150 = *v147;
        *(v148 - 1) = v6;
        *v148 = v150;
        v147 += 2;
        v148 += 2;
        v149 -= 16;
      }

      while (v149);
      if (v143 == v144)
      {
        return v6;
      }

      if ((v143 & 0xC) == 0)
      {
        v177 = 2 * v144;
        v146 = (v16 + v177);
        v145 = (v17 + v177);
        goto LABEL_189;
      }
    }

    else
    {
      v144 = 0;
    }

    v151 = 2 * (v143 & 0xFFFFFFFFFFFFFFFCLL);
    v145 = (v17 + v151);
    v146 = (v16 + v151);
    v152 = (v16 + 2 * v144);
    v153 = (v17 + 2 * v144);
    v154 = v144 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v155 = *v152++;
      LOWORD(v6) = v155;
      *v153++ = v155;
      v154 += 4;
    }

    while (v154);
    if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_189:
    v178 = (v16 + 2 * v9);
    do
    {
      v179 = *v146++;
      LOWORD(v6) = v179;
      *v145++ = v179;
    }

    while (v146 != v178);
  }

  return v6;
}

__int16 sub_2712A4748@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>)
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
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
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
            v19 = (v19 + v11);
            v18 = (v18 + v10);
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
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
      result = v8[2];
      v9[2] = result;
      return result;
    }

    do
    {
LABEL_18:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

__n128 sub_2712A4888(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812F000[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A4920(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812F000[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288113218;
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

uint64_t sub_2712A4A00(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    *&v12 = a2;
    *(&v12 + 1) = a1;
    sub_2712A4C3C(&v12);
    return a1;
  }

  v3 = a2[1];
  v12 = *a2;
  v13 = v3;
  v14 = a2[2];
  v15 = *(a2 + 6);
  sub_271256F80(v16, a2 + 56);
  v4 = v13;
  *a1 = v12;
  *(a1 + 16) = v4;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 80) = v17;
  *(a1 + 96) = v18;
  v5 = *(a1 + 64);
  if (!v5)
  {
    *(a1 + 56) = v16[0];
    goto LABEL_22;
  }

  if (*(a1 + 84))
  {
    v6 = *(a1 + 80) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 88);
  if (v6)
  {
    v7 = 0;
  }

  if (v7 * (*(a1 + 100) >> 1) != -1)
  {
    *(a1 + 56) = v16[0];
LABEL_21:
    free(v5);
    goto LABEL_22;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_20;
    }

    v8 = qword_28087C408;
    v9 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = qword_28087C408;
    v9 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    (*v8)(*(v8 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v8 += 16;
  }

  while (v8 != v9);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_25:
    abort();
  }

LABEL_20:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v12);
  v5 = *(a1 + 64);
  *(a1 + 56) = v16[0];
  if (v5)
  {
    goto LABEL_21;
  }

LABEL_22:
  v10 = v16[2];
  *(a1 + 64) = v16[1];
  *(a1 + 72) = v10;
  return a1;
}

__int16 sub_2712A4C3C@<H0>(void *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 12) == 1 && *(v2 + 12) == 1;
  if (!v3)
  {
    v191 = 0;
    if (*v1)
    {
      v4 = v1[1] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && v1[2] != 0)
    {
      v192 = &v191;
      LOWORD(v6) = sub_2712A556C(&v192, v1, v2);
    }

    return v6;
  }

  v7 = v1[4];
  v8 = *(v2 + 16);
  v9 = *v1;
  if (v7 == v8 && v7 == v9)
  {
    v63 = v1[5];
    v64 = *(v2 + 20);
    v65 = v1[1];
    v66 = v65 * v7;
    if (v63 != v64 || v63 != v66)
    {
      v68 = v1[2];
      if (v7)
      {
        v69 = v65 == 0;
      }

      else
      {
        v69 = 1;
      }

      if (v69 || v68 == 0)
      {
        return v6;
      }

      v71 = *(v1 + 8);
      v72 = *(v2 + 64);
      if (v68 == 1)
      {
LABEL_79:
        if (!v66)
        {
          return v6;
        }

        v73 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v73 < 3 || v72 - v71 < 0x20)
        {
          v166 = v72;
          v167 = v71;
          goto LABEL_197;
        }

        v74 = v73 + 1;
        if (v73 >= 0xF)
        {
          v75 = v74 & 0xFFFFFFFFFFFFFFF0;
          v168 = (v71 + 16);
          v169 = (v72 + 16);
          v170 = v74 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v6 = *(v168 - 1);
            v171 = *v168;
            *(v169 - 1) = v6;
            *v169 = v171;
            v168 += 2;
            v169 += 2;
            v170 -= 16;
          }

          while (v170);
          if (v74 == v75)
          {
            return v6;
          }

          if ((v74 & 0xC) == 0)
          {
            v167 = (v71 + 2 * v75);
            v166 = (v72 + 2 * v75);
            goto LABEL_197;
          }
        }

        else
        {
          v75 = 0;
        }

        v172 = 2 * (v74 & 0xFFFFFFFFFFFFFFFCLL);
        v166 = (v72 + v172);
        v167 = (v71 + v172);
        v173 = (v71 + 2 * v75);
        v174 = (v72 + 2 * v75);
        v175 = v75 - (v74 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v176 = *v173++;
          LOWORD(v6) = v176;
          *v174++ = v176;
          v175 += 4;
        }

        while (v175);
        if (v74 == (v74 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v6;
        }

LABEL_197:
        v182 = (v71 + 2 * v66);
        do
        {
          v183 = *v167++;
          LOWORD(v6) = v183;
          *v166++ = v183;
        }

        while (v167 != v182);
        return v6;
      }

      if (!v66)
      {
        return v6;
      }

      v83 = 0;
      v84 = v68 - 2;
      v85 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v86 = v85 + 1;
      v87 = v72 >= v71 + 2 * (v66 + v63 * v84) || v71 >= v72 + 2 * (v66 + v64 * v84);
      v88 = 2 * (v86 & 0xFFFFFFFFFFFFFFF0);
      v89 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v90 = 2 * (v86 & 0xFFFFFFFFFFFFFFFCLL);
      v91 = !v87;
      v92 = 2 * v63;
      v93 = 2 * v64;
      while (1)
      {
        v94 = v72;
        v95 = v71;
        if (!((v85 < 3) | v91 & 1))
        {
          if (v85 < 0xF)
          {
            v96 = 0;
LABEL_105:
            v94 = (v72 + v90);
            v95 = (v71 + v90);
            v101 = 2 * v96;
            v102 = v96 - v89;
            do
            {
              *&v6 = *(v71 + v101);
              *(v72 + v101) = v6;
              v101 += 8;
              v102 += 4;
            }

            while (v102);
            if (v86 == v89)
            {
              goto LABEL_97;
            }

            goto LABEL_110;
          }

          v97 = 0;
          v98 = v86 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = (v72 + v97);
            v6 = *(v71 + v97);
            v100 = *(v71 + v97 + 16);
            *v99 = v6;
            v99[1] = v100;
            v97 += 32;
            v98 -= 16;
          }

          while (v98);
          if (v86 == (v86 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_97;
          }

          v96 = v86 & 0xFFFFFFFFFFFFFFF0;
          if ((v86 & 0xC) != 0)
          {
            goto LABEL_105;
          }

          v95 = (v71 + v88);
          v94 = (v72 + v88);
        }

        do
        {
LABEL_110:
          v103 = *v95++;
          LOWORD(v6) = v103;
          *v94++ = v103;
        }

        while (v95 != (v71 + 2 * v66));
LABEL_97:
        v71 += v92;
        v72 += v93;
        v3 = v83++ == v84;
        if (v3)
        {
          goto LABEL_79;
        }
      }
    }

    v76 = v1[2] * v63;
    if (!v76)
    {
      return v6;
    }

    v77 = *(v1 + 8);
    v78 = *(v2 + 64);
    v79 = (v76 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v79 < 3)
    {
      v80 = *(v1 + 8);
      goto LABEL_193;
    }

    v80 = *(v1 + 8);
    if (v78 - v77 < 0x20)
    {
      goto LABEL_193;
    }

    v81 = v79 + 1;
    if (v79 >= 0xF)
    {
      v82 = v81 & 0xFFFFFFFFFFFFFFF0;
      v156 = (v77 + 16);
      v157 = v78 + 8;
      v158 = v81 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v156 - 1);
        v159 = *v156;
        *(v157 - 1) = v6;
        *v157 = v159;
        v156 += 2;
        v157 += 2;
        v158 -= 16;
      }

      while (v158);
      if (v81 == v82)
      {
        return v6;
      }

      if ((v81 & 0xC) == 0)
      {
        v80 = (v77 + 2 * v82);
        v78 += v82;
        goto LABEL_193;
      }
    }

    else
    {
      v82 = 0;
    }

    v160 = v81 & 0xFFFFFFFFFFFFFFFCLL;
    v161 = &v78[v160];
    v80 = (v77 + v160 * 2);
    v162 = (v77 + 2 * v82);
    v163 = &v78[v82];
    v164 = v82 - (v81 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      LOWORD(v6) = v165;
      *v163++ = v165;
      v164 += 4;
    }

    while (v164);
    v78 = v161;
    if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_193:
    v180 = (v77 + 2 * v76);
    do
    {
      v181 = *v80++;
      LOWORD(v6) = v181;
      *v78++ = v181;
    }

    while (v80 != v180);
    return v6;
  }

  v12 = v1[1];
  v11 = v1[2];
  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v11 != 0)
  {
    v15 = v12 - 1;
    v16 = *(v1 + 8);
    v17 = *(v2 + 64);
    v18 = 2 * v8;
    v19 = v11 - 1;
    v186 = *(v2 + 16);
    v187 = v1[4];
    v185 = v1[1];
    if (v11 != 1)
    {
      v20 = *(v2 + 20);
      v21 = v1[5];
      if (v12 != 1)
      {
        v22 = 0;
        v23 = 2 * v7;
        v190 = v18 + v17 - v16 - 2 * v7;
        v189 = 2 * (v20 - v21);
        v188 = v18 - 2 * v7;
        v24 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v25 = v24 + 1;
        v26 = v12 - 2;
        v27 = 2 * v20;
        v28 = 2 * v21;
        v29 = v17 + 2 * (v9 + v8 * v26);
        v30 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
        v31 = v30;
        v32 = (v24 + 1) & 0xC;
        v33 = (v24 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v34 = v33;
        v35 = v16 + 2 * (v9 + v7 * v26);
        while (1)
        {
          v36 = 0;
          v38 = v17 < v35 + v28 * v22 && v16 < v29 + v27 * v22;
          v39 = v17;
          v40 = v16;
          do
          {
            v41 = v36;
            v42 = v39;
            v43 = v40;
            if (v24 < 3 || v38)
            {
              goto LABEL_48;
            }

            if (v24 >= 0xF)
            {
              v45 = 0;
              v46 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v47 = &v39[v45];
                v48 = *&v40[v45 + 8];
                *v47 = *&v40[v45];
                v47[1] = v48;
                v45 += 16;
                v46 -= 16;
              }

              while (v46);
              if (v25 == v30)
              {
                goto LABEL_35;
              }

              v44 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v43 = &v40[v31];
                v42 = &v39[v31];
                do
                {
LABEL_48:
                  v51 = *v43++;
                  *v42++ = v51;
                }

                while (v43 != &v40[v9]);
                goto LABEL_35;
              }
            }

            else
            {
              v44 = 0;
            }

            v42 = &v39[v34];
            v43 = &v40[v34];
            v49 = v44;
            v50 = v44 - v33;
            do
            {
              *&v39[v49] = *&v40[v49];
              v49 += 4;
              v50 += 4;
            }

            while (v50);
            if (v25 != v33)
            {
              goto LABEL_48;
            }

LABEL_35:
            v40 = (v40 + v23);
            v39 = (v39 + v18);
            v36 = v41 + 1;
          }

          while (v41 + 1 != v15);
          if (v24 < 3 || (v190 + v189 * v22 + v188 * v41) < 0x20)
          {
            v52 = v39;
            v53 = v40;
            goto LABEL_53;
          }

          if (v24 >= 0xF)
          {
            v57 = 0;
            v58 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v59 = &v39[v57];
              v60 = *&v40[v57 + 8];
              *v59 = *&v40[v57];
              v59[1] = v60;
              v57 += 16;
              v58 -= 16;
            }

            while (v58);
            if (v25 != v30)
            {
              v56 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v53 = &v40[v31];
                v52 = &v39[v31];
                goto LABEL_53;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v56 = 0;
LABEL_62:
            v52 = &v39[v34];
            v53 = &v40[v34];
            v61 = v56;
            v62 = v56 - v33;
            do
            {
              *&v39[v61] = *&v40[v61];
              v61 += 4;
              v62 += 4;
            }

            while (v62);
            if (v25 != v33)
            {
LABEL_53:
              v54 = &v40[v9];
              do
              {
                v55 = *v53++;
                *v52++ = v55;
              }

              while (v53 != v54);
            }
          }

          v16 += v28;
          v17 += v27;
          if (++v22 == v19)
          {
            goto LABEL_134;
          }
        }
      }

      v104 = 0;
      v105 = v11 - 2;
      v106 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v107 = v106 + 1;
      v108 = v17 >= v16 + 2 * (v9 + v21 * v105) || v16 >= v17 + 2 * (v9 + v20 * v105);
      v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFF0);
      v110 = v107 & 0xFFFFFFFFFFFFFFFCLL;
      v111 = 2 * (v107 & 0xFFFFFFFFFFFFFFFCLL);
      v112 = !v108;
      v113 = 2 * v21;
      v114 = 2 * v20;
      do
      {
        v115 = v17;
        v116 = v16;
        if (!((v106 < 3) | v112 & 1))
        {
          if (v106 < 0xF)
          {
            v117 = 0;
LABEL_127:
            v115 = (v17 + v111);
            v116 = (v16 + v111);
            v122 = 2 * v117;
            v123 = v117 - v110;
            do
            {
              *(v17 + v122) = *(v16 + v122);
              v122 += 8;
              v123 += 4;
            }

            while (v123);
            if (v107 == v110)
            {
              goto LABEL_119;
            }

            goto LABEL_132;
          }

          v118 = 0;
          v119 = v107 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v120 = (v17 + v118);
            v121 = *(v16 + v118 + 16);
            *v120 = *(v16 + v118);
            v120[1] = v121;
            v118 += 32;
            v119 -= 16;
          }

          while (v119);
          if (v107 == (v107 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_119;
          }

          v117 = v107 & 0xFFFFFFFFFFFFFFF0;
          if ((v107 & 0xC) != 0)
          {
            goto LABEL_127;
          }

          v116 = (v16 + v109);
          v115 = (v17 + v109);
        }

        do
        {
LABEL_132:
          v124 = *v116++;
          *v115++ = v124;
        }

        while (v116 != (v16 + 2 * v9));
LABEL_119:
        v16 += v113;
        v17 += v114;
        ++v104;
      }

      while (v104 != v19);
    }

LABEL_134:
    if (v15)
    {
      v125 = 0;
      v126 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v127 = v126 + 1;
      v129 = v17 < v16 + 2 * (v9 + v187 * (v185 - 2)) && v16 < v17 + 2 * (v9 + v186 * (v185 - 2));
      v130 = 2 * (v127 & 0xFFFFFFFFFFFFFFF0);
      v131 = 2 * (v127 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v132 = v17;
        v133 = v16;
        if (v126 >= 3 && !v129)
        {
          if (v126 < 0xF)
          {
            v134 = 0;
LABEL_150:
            v132 = (v17 + v131);
            v133 = (v16 + v131);
            v139 = 2 * v134;
            v140 = v134 - (v127 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *(v17 + v139) = *(v16 + v139);
              v139 += 8;
              v140 += 4;
            }

            while (v140);
            if (v127 == (v127 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_142;
            }

            goto LABEL_155;
          }

          v135 = 0;
          v136 = v127 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v137 = (v17 + v135);
            v138 = *(v16 + v135 + 16);
            *v137 = *(v16 + v135);
            v137[1] = v138;
            v135 += 32;
            v136 -= 16;
          }

          while (v136);
          if (v127 == (v127 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_142;
          }

          v134 = v127 & 0xFFFFFFFFFFFFFFF0;
          if ((v127 & 0xC) != 0)
          {
            goto LABEL_150;
          }

          v133 = (v16 + v130);
          v132 = (v17 + v130);
        }

        do
        {
LABEL_155:
          v141 = *v133++;
          *v132++ = v141;
        }

        while (v133 != (v16 + 2 * v9));
LABEL_142:
        v16 += 2 * v187;
        v17 += v18;
        ++v125;
      }

      while (v125 != v15);
    }

    v142 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v142 < 3 || v17 - v16 < 0x20)
    {
      v145 = v17;
      v146 = v16;
      goto LABEL_189;
    }

    v143 = v142 + 1;
    if (v142 >= 0xF)
    {
      v144 = v143 & 0xFFFFFFFFFFFFFFF0;
      v147 = (v16 + 16);
      v148 = (v17 + 16);
      v149 = v143 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v147 - 1);
        v150 = *v147;
        *(v148 - 1) = v6;
        *v148 = v150;
        v147 += 2;
        v148 += 2;
        v149 -= 16;
      }

      while (v149);
      if (v143 == v144)
      {
        return v6;
      }

      if ((v143 & 0xC) == 0)
      {
        v177 = 2 * v144;
        v146 = (v16 + v177);
        v145 = (v17 + v177);
        goto LABEL_189;
      }
    }

    else
    {
      v144 = 0;
    }

    v151 = 2 * (v143 & 0xFFFFFFFFFFFFFFFCLL);
    v145 = (v17 + v151);
    v146 = (v16 + v151);
    v152 = (v16 + 2 * v144);
    v153 = (v17 + 2 * v144);
    v154 = v144 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v155 = *v152++;
      LOWORD(v6) = v155;
      *v153++ = v155;
      v154 += 4;
    }

    while (v154);
    if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_189:
    v178 = (v16 + 2 * v9);
    do
    {
      v179 = *v146++;
      LOWORD(v6) = v179;
      *v145++ = v179;
    }

    while (v146 != v178);
  }

  return v6;
}

__int16 sub_2712A556C@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>)
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
            v19 = (v19 + v11);
            v18 = (v18 + v10);
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
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
      result = v8[2];
      v9[2] = result;
      return result;
    }

    do
    {
LABEL_18:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2712A56AC(uint64_t a1)
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

void sub_2712A5814(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v27 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      v28 = &v27;
      sub_2712A59A4(&v28, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v28 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_271257F54(&v28, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v26 = *(a1 + 16) * v12;
    if (!v26)
    {
      return;
    }

    v23 = 4 * v26;
    v24 = *a2;
    v25 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
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

float sub_2712A59A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
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
      result = v8[2];
      v9[2] = result;
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

__n128 sub_2712A5AE8(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812F020[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A5B80(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812F020[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288113198;
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

uint64_t sub_2712A5C60(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    *&v9 = a2;
    *(&v9 + 1) = a1;
    sub_2712A5D38(&v9);
    return a1;
  }

  else
  {
    v3 = a2[1];
    v9 = *a2;
    v10 = v3;
    v11 = a2[2];
    v12 = *(a2 + 6);
    sub_2712579B8(v13, a2 + 56);
    v4 = v10;
    *a1 = v9;
    *(a1 + 16) = v4;
    *(a1 + 32) = v11;
    *(a1 + 80) = v14;
    *(a1 + 96) = v15;
    v5 = v13[0];
    *(a1 + 48) = v12;
    *(a1 + 56) = v5;
    v6 = *(a1 + 64);
    if (v6)
    {
      free(v6);
    }

    v7 = v13[2];
    *(a1 + 64) = v13[1];
    *(a1 + 72) = v7;
    return a1;
  }
}

void sub_2712A5D38(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 12) != 1 || *(v2 + 12) != 1)
  {
    v28 = 0;
    if (*v1)
    {
      v4 = v1[1] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && v1[2] != 0)
    {
      v29 = &v28;
      sub_2712A5EC4(&v29, v1, v2);
    }

    return;
  }

  v6 = v1[4];
  v7 = *v1;
  if (v6 != *(v2 + 16) || v6 != v7)
  {
    v29 = *v1;
    if (v7)
    {
      v9 = v1[1] == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v1[2] != 0)
    {
      sub_2712A2C38(&v29, v1, v2);
    }

    return;
  }

  v11 = v1[5];
  v12 = *(v2 + 20);
  v13 = v1[1];
  v14 = v13 * v6;
  if (v11 == v12 && v11 == v14)
  {
    v27 = v1[2] * v11;
    if (!v27)
    {
      return;
    }

    v25 = *(v2 + 64);
    v26 = *(v1 + 8);
    v24 = 4 * v27;
    goto LABEL_44;
  }

  v16 = v1[2];
  if (v6)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v16 != 0)
  {
    v19 = *(v1 + 8);
    v20 = *(v2 + 64);
    v21 = v16 - 1;
    if (v16 != 1)
    {
      if (!v14)
      {
        return;
      }

      v22 = 4 * v11;
      v23 = 4 * v12;
      do
      {
        memmove(v20, v19, 4 * v14);
        v19 += v22;
        v20 += v23;
        --v21;
      }

      while (v21);
    }

    if (v14)
    {
      v24 = 4 * v14;
      v25 = v20;
      v26 = v19;
LABEL_44:

      memmove(v25, v26, v24);
    }
  }
}

float sub_2712A5EC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
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
      result = v8[2];
      v9[2] = result;
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

void sub_2712A6008(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v24 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      v25 = &v24;
      sub_2712A618C(&v25, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v25 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_27129F9A4(&v25, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v23 = (*(a1 + 16) * v12);
    if (!v23)
    {
      return;
    }

    v21 = *a2;
    v22 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          do
          {
            memmove(v19, v18, v15);
            v18 += v12;
            v19 += v13;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v21 = v19;
          v22 = v18;
          v23 = v15;
LABEL_40:

          memmove(v21, v22, v23);
        }
      }
    }
  }
}

void sub_2712A618C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a2 + 24);
    v9 = *(a3 + 24);
    v10 = *a2;
    v11 = *a3;
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v11 + 3;
        v17 = v10 + 1;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 3) = *(v18 - 1);
            *(v19 - 2) = *v18;
            *(v19 - 1) = v18[1];
            *v19 = v18[2];
            v19 += v9;
            v18 += v8;
            --v20;
          }

          while (v20);
          *(v19 - 3) = *(v18 - 1);
          *(v19 - 2) = *v18;
          *(v19 - 1) = v18[1];
          *v19 = v18[2];
          v10 += v14;
          v11 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_17;
      }

      do
      {
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v11[3] = v10[3];
        v10 += v14;
        v11 += v13;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_18:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      return;
    }

    do
    {
LABEL_17:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      v10 += v8;
      v11 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_18;
  }
}

__n128 sub_2712A62DC(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812F040[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A6374(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812F040[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288113118;
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

uint64_t sub_2712A6454(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    *&v9 = a2;
    *(&v9 + 1) = a1;
    sub_2712A652C(&v9);
    return a1;
  }

  else
  {
    v3 = a2[1];
    v9 = *a2;
    v10 = v3;
    v11 = a2[2];
    v12 = *(a2 + 6);
    sub_271255604(v13, a2 + 56);
    v4 = v10;
    *a1 = v9;
    *(a1 + 16) = v4;
    *(a1 + 32) = v11;
    *(a1 + 80) = v14;
    *(a1 + 96) = v15;
    v5 = v13[0];
    *(a1 + 48) = v12;
    *(a1 + 56) = v5;
    v6 = *(a1 + 64);
    if (v6)
    {
      free(v6);
    }

    v7 = v13[2];
    *(a1 + 64) = v13[1];
    *(a1 + 72) = v7;
    return a1;
  }
}

void sub_2712A652C(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 12) != 1 || *(v2 + 12) != 1)
  {
    v26 = 0;
    if (*v1)
    {
      v4 = v1[1] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && v1[2] != 0)
    {
      v27 = &v26;
      sub_2712A66AC(&v27, v1, v2);
    }

    return;
  }

  v6 = v1[4];
  v7 = *v1;
  if (v6 != *(v2 + 16) || v6 != v7)
  {
    v27 = *v1;
    if (v7)
    {
      v9 = v1[1] == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v1[2] != 0)
    {
      sub_2712A0040(&v27, v1, v2);
    }

    return;
  }

  v11 = v1[5];
  v12 = *(v2 + 20);
  v13 = v1[1];
  v14 = v13 * v6;
  if (v11 == v12 && v11 == v14)
  {
    v25 = v1[2] * v11;
    if (!v25)
    {
      return;
    }

    v22 = *(v2 + 64);
    v23 = *(v1 + 8);
    v24 = v25;
    goto LABEL_44;
  }

  v16 = v1[2];
  if (v6)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v16 != 0)
  {
    v19 = *(v1 + 8);
    v20 = *(v2 + 64);
    v21 = v16 - 1;
    if (v16 != 1)
    {
      if (!v14)
      {
        return;
      }

      do
      {
        memmove(v20, v19, v14);
        v19 += v11;
        v20 += v12;
        --v21;
      }

      while (v21);
    }

    if (v14)
    {
      v22 = v20;
      v23 = v19;
      v24 = v14;
LABEL_44:

      memmove(v22, v23, v24);
    }
  }
}

void sub_2712A66AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a2 + 16);
    v9 = *(a3 + 16);
    v10 = *(a2 + 64);
    v11 = *(a3 + 64);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 20);
      v14 = *(a2 + 20);
      if (v7)
      {
        v15 = 0;
        v16 = v11 + 3;
        v17 = v10 + 1;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 3) = *(v18 - 1);
            *(v19 - 2) = *v18;
            *(v19 - 1) = v18[1];
            *v19 = v18[2];
            v19 += v9;
            v18 += v8;
            --v20;
          }

          while (v20);
          *(v19 - 3) = *(v18 - 1);
          *(v19 - 2) = *v18;
          *(v19 - 1) = v18[1];
          *v19 = v18[2];
          v10 += v14;
          v11 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_17;
      }

      do
      {
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v11[3] = v10[3];
        v10 += v14;
        v11 += v13;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_18:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      return;
    }

    do
    {
LABEL_17:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      v10 += v8;
      v11 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_18;
  }
}

void sub_2712A67FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
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
      v9[3] = v8[3];
      return;
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
}

__n128 sub_2712A6968(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812F060[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A6A00(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812F060[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288113098;
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

uint64_t sub_2712A6AE0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    sub_2712A6BB8(a2, a1);
    return a1;
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = *(a2 + 6);
    sub_271256160(v11, a2 + 56);
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

void sub_2712A6BB8(unsigned int *a1, uint64_t a2)
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
      sub_2712A6D40(&v27, a1, a2);
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
      sub_2712A0974(&v28, a1, a2);
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

    v23 = 2 * v26;
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

          v21 = 2 * v12;
          v22 = 2 * v13;
          do
          {
            memmove(v19, v18, 2 * v15);
            v18 += v21;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v23 = 2 * v15;
          v24 = v19;
          v25 = v18;
LABEL_40:

          memmove(v24, v25, v23);
        }
      }
    }
  }
}

void sub_2712A6D40(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v9[3] = v8[3];
      return;
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
}

__int16 sub_2712A6EAC@<H0>(uint64_t *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 20) == 1 && *(v2 + 20) == 1;
  if (!v3)
  {
    v191 = 0;
    if (*(v1 + 8))
    {
      v4 = *(v1 + 12) == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && *(v1 + 16) != 0)
    {
      v192 = &v191;
      LOWORD(v6) = sub_2712A77DC(&v192, v1, v2);
    }

    return v6;
  }

  v7 = *(v1 + 24);
  v8 = *(v2 + 24);
  v9 = *(v1 + 8);
  if (v7 == v8 && v7 == v9)
  {
    v63 = *(v1 + 28);
    v64 = *(v2 + 28);
    v65 = *(v1 + 12);
    v66 = (v65 * v7);
    if (v63 != v64 || v63 != v66)
    {
      v68 = *(v1 + 16);
      if (v7)
      {
        v69 = v65 == 0;
      }

      else
      {
        v69 = 1;
      }

      if (v69 || v68 == 0)
      {
        return v6;
      }

      v71 = *v1;
      v72 = *v2;
      if (v68 == 1)
      {
LABEL_79:
        if (!v66)
        {
          return v6;
        }

        v73 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v73 < 3 || (v72 - v71) < 0x20)
        {
          v166 = v72;
          v167 = v71;
          goto LABEL_197;
        }

        v74 = v73 + 1;
        if (v73 >= 0xF)
        {
          v75 = v74 & 0xFFFFFFFFFFFFFFF0;
          v168 = (v71 + 8);
          v169 = v72 + 8;
          v170 = v74 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v6 = *(v168 - 1);
            v171 = *v168;
            *(v169 - 1) = v6;
            *v169 = v171;
            v168 += 2;
            v169 += 2;
            v170 -= 16;
          }

          while (v170);
          if (v74 == v75)
          {
            return v6;
          }

          if ((v74 & 0xC) == 0)
          {
            v167 = &v71[v75];
            v166 = &v72[v75];
            goto LABEL_197;
          }
        }

        else
        {
          v75 = 0;
        }

        v172 = v74 & 0xFFFFFFFFFFFFFFFCLL;
        v166 = &v72[v172];
        v167 = &v71[v172];
        v173 = &v71[v75];
        v174 = &v72[v75];
        v175 = v75 - (v74 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v176 = *v173++;
          LOWORD(v6) = v176;
          *v174 = v176;
          v174 += 4;
          v175 += 4;
        }

        while (v175);
        if (v74 == (v74 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v6;
        }

LABEL_197:
        v182 = &v71[v66];
        do
        {
          v183 = *v167++;
          LOWORD(v6) = v183;
          *v166++ = v183;
        }

        while (v167 != v182);
        return v6;
      }

      if (!v66)
      {
        return v6;
      }

      v83 = 0;
      v84 = v68 - 2;
      v85 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v86 = v85 + 1;
      v87 = v72 >= &v71[v66 + v63 * v84] || v71 >= &v72[v66 + v64 * v84];
      v88 = v86 & 0xFFFFFFFFFFFFFFF0;
      v89 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v90 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v91 = !v87;
      v92 = 2 * v63;
      v93 = 2 * v64;
      while (1)
      {
        v94 = v72;
        v95 = v71;
        if (!((v85 < 3) | v91 & 1))
        {
          if (v85 < 0xF)
          {
            v96 = 0;
LABEL_105:
            v94 = &v72[v90];
            v95 = &v71[v90];
            v101 = v96;
            v102 = v96 - v89;
            do
            {
              *&v6 = *&v71[v101];
              *&v72[v101] = v6;
              v101 += 4;
              v102 += 4;
            }

            while (v102);
            if (v86 == v89)
            {
              goto LABEL_97;
            }

            goto LABEL_110;
          }

          v97 = 0;
          v98 = v86 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = &v72[v97];
            v6 = *&v71[v97];
            v100 = *&v71[v97 + 8];
            *v99 = v6;
            *(v99 + 1) = v100;
            v97 += 16;
            v98 -= 16;
          }

          while (v98);
          if (v86 == (v86 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_97;
          }

          v96 = v86 & 0xFFFFFFFFFFFFFFF0;
          if ((v86 & 0xC) != 0)
          {
            goto LABEL_105;
          }

          v95 = &v71[v88];
          v94 = &v72[v88];
        }

        do
        {
LABEL_110:
          v103 = *v95++;
          LOWORD(v6) = v103;
          *v94++ = v103;
        }

        while (v95 != &v71[v66]);
LABEL_97:
        v71 = (v71 + v92);
        v72 = (v72 + v93);
        v3 = v83++ == v84;
        if (v3)
        {
          goto LABEL_79;
        }
      }
    }

    v76 = (*(v1 + 16) * v63);
    if (!v76)
    {
      return v6;
    }

    v77 = *v1;
    v78 = *v2;
    v79 = (v76 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v79 < 3)
    {
      v80 = *v1;
      goto LABEL_193;
    }

    v80 = *v1;
    if ((v78 - v77) < 0x20)
    {
      goto LABEL_193;
    }

    v81 = v79 + 1;
    if (v79 >= 0xF)
    {
      v82 = v81 & 0xFFFFFFFFFFFFFFF0;
      v156 = (v77 + 8);
      v157 = v78 + 8;
      v158 = v81 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v156 - 1);
        v159 = *v156;
        *(v157 - 1) = v6;
        *v157 = v159;
        v156 += 2;
        v157 += 2;
        v158 -= 16;
      }

      while (v158);
      if (v81 == v82)
      {
        return v6;
      }

      if ((v81 & 0xC) == 0)
      {
        v80 = &v77[v82];
        v78 += v82;
        goto LABEL_193;
      }
    }

    else
    {
      v82 = 0;
    }

    v160 = v81 & 0xFFFFFFFFFFFFFFFCLL;
    v161 = &v78[v160];
    v80 = &v77[v160];
    v162 = &v77[v82];
    v163 = &v78[v82];
    v164 = v82 - (v81 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      LOWORD(v6) = v165;
      *v163 = v165;
      v163 += 4;
      v164 += 4;
    }

    while (v164);
    v78 = v161;
    if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_193:
    v180 = &v77[v76];
    do
    {
      v181 = *v80++;
      LOWORD(v6) = v181;
      *v78++ = v181;
    }

    while (v80 != v180);
    return v6;
  }

  v12 = *(v1 + 12);
  v11 = *(v1 + 16);
  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v11 != 0)
  {
    v15 = v12 - 1;
    v16 = *v1;
    v17 = *v2;
    v18 = 2 * v8;
    v19 = v11 - 1;
    v186 = *(v2 + 24);
    v187 = *(v1 + 24);
    v185 = *(v1 + 12);
    if (v11 != 1)
    {
      v20 = *(v2 + 28);
      v21 = *(v1 + 28);
      if (v12 != 1)
      {
        v22 = 0;
        v23 = 2 * v7;
        v190 = v18 + v17 - v16 - 2 * v7;
        v189 = 2 * (v20 - v21);
        v188 = v18 - 2 * v7;
        v24 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v25 = v24 + 1;
        v26 = v12 - 2;
        v27 = 2 * v20;
        v28 = 2 * v21;
        v29 = v17 + 2 * (v9 + v8 * v26);
        v30 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
        v31 = v30;
        v32 = (v24 + 1) & 0xC;
        v33 = (v24 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v34 = v33;
        v35 = v16 + 2 * (v9 + v7 * v26);
        while (1)
        {
          v36 = 0;
          v38 = v17 < v35 + v28 * v22 && v16 < v29 + v27 * v22;
          v39 = v17;
          v40 = v16;
          do
          {
            v41 = v36;
            v42 = v39;
            v43 = v40;
            if (v24 < 3 || v38)
            {
              goto LABEL_48;
            }

            if (v24 >= 0xF)
            {
              v45 = 0;
              v46 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v47 = &v39[v45];
                v48 = *&v40[v45 + 8];
                *v47 = *&v40[v45];
                v47[1] = v48;
                v45 += 16;
                v46 -= 16;
              }

              while (v46);
              if (v25 == v30)
              {
                goto LABEL_35;
              }

              v44 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v43 = &v40[v31];
                v42 = &v39[v31];
                do
                {
LABEL_48:
                  v51 = *v43++;
                  *v42++ = v51;
                }

                while (v43 != &v40[v9]);
                goto LABEL_35;
              }
            }

            else
            {
              v44 = 0;
            }

            v42 = &v39[v34];
            v43 = &v40[v34];
            v49 = v44;
            v50 = v44 - v33;
            do
            {
              *&v39[v49] = *&v40[v49];
              v49 += 4;
              v50 += 4;
            }

            while (v50);
            if (v25 != v33)
            {
              goto LABEL_48;
            }

LABEL_35:
            v40 = (v40 + v23);
            v39 = (v39 + v18);
            v36 = v41 + 1;
          }

          while (v41 + 1 != v15);
          if (v24 < 3 || (v190 + v189 * v22 + v188 * v41) < 0x20)
          {
            v52 = v39;
            v53 = v40;
            goto LABEL_53;
          }

          if (v24 >= 0xF)
          {
            v57 = 0;
            v58 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v59 = &v39[v57];
              v60 = *&v40[v57 + 8];
              *v59 = *&v40[v57];
              v59[1] = v60;
              v57 += 16;
              v58 -= 16;
            }

            while (v58);
            if (v25 != v30)
            {
              v56 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v53 = &v40[v31];
                v52 = &v39[v31];
                goto LABEL_53;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v56 = 0;
LABEL_62:
            v52 = &v39[v34];
            v53 = &v40[v34];
            v61 = v56;
            v62 = v56 - v33;
            do
            {
              *&v39[v61] = *&v40[v61];
              v61 += 4;
              v62 += 4;
            }

            while (v62);
            if (v25 != v33)
            {
LABEL_53:
              v54 = &v40[v9];
              do
              {
                v55 = *v53++;
                *v52++ = v55;
              }

              while (v53 != v54);
            }
          }

          v16 += v28;
          v17 += v27;
          if (++v22 == v19)
          {
            goto LABEL_134;
          }
        }
      }

      v104 = 0;
      v105 = v11 - 2;
      v106 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v107 = v106 + 1;
      v108 = v17 >= v16 + 2 * (v9 + v21 * v105) || v16 >= v17 + 2 * (v9 + v20 * v105);
      v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFF0);
      v110 = v107 & 0xFFFFFFFFFFFFFFFCLL;
      v111 = 2 * (v107 & 0xFFFFFFFFFFFFFFFCLL);
      v112 = !v108;
      v113 = 2 * v21;
      v114 = 2 * v20;
      do
      {
        v115 = v17;
        v116 = v16;
        if (!((v106 < 3) | v112 & 1))
        {
          if (v106 < 0xF)
          {
            v117 = 0;
LABEL_127:
            v115 = (v17 + v111);
            v116 = (v16 + v111);
            v122 = 2 * v117;
            v123 = v117 - v110;
            do
            {
              *(v17 + v122) = *(v16 + v122);
              v122 += 8;
              v123 += 4;
            }

            while (v123);
            if (v107 == v110)
            {
              goto LABEL_119;
            }

            goto LABEL_132;
          }

          v118 = 0;
          v119 = v107 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v120 = (v17 + v118);
            v121 = *(v16 + v118 + 16);
            *v120 = *(v16 + v118);
            v120[1] = v121;
            v118 += 32;
            v119 -= 16;
          }

          while (v119);
          if (v107 == (v107 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_119;
          }

          v117 = v107 & 0xFFFFFFFFFFFFFFF0;
          if ((v107 & 0xC) != 0)
          {
            goto LABEL_127;
          }

          v116 = (v16 + v109);
          v115 = (v17 + v109);
        }

        do
        {
LABEL_132:
          v124 = *v116++;
          *v115++ = v124;
        }

        while (v116 != (v16 + 2 * v9));
LABEL_119:
        v16 += v113;
        v17 += v114;
        ++v104;
      }

      while (v104 != v19);
    }

LABEL_134:
    if (v15)
    {
      v125 = 0;
      v126 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v127 = v126 + 1;
      v129 = v17 < v16 + 2 * (v9 + v187 * (v185 - 2)) && v16 < v17 + 2 * (v9 + v186 * (v185 - 2));
      v130 = 2 * (v127 & 0xFFFFFFFFFFFFFFF0);
      v131 = 2 * (v127 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v132 = v17;
        v133 = v16;
        if (v126 >= 3 && !v129)
        {
          if (v126 < 0xF)
          {
            v134 = 0;
LABEL_150:
            v132 = (v17 + v131);
            v133 = (v16 + v131);
            v139 = 2 * v134;
            v140 = v134 - (v127 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *(v17 + v139) = *(v16 + v139);
              v139 += 8;
              v140 += 4;
            }

            while (v140);
            if (v127 == (v127 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_142;
            }

            goto LABEL_155;
          }

          v135 = 0;
          v136 = v127 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v137 = (v17 + v135);
            v138 = *(v16 + v135 + 16);
            *v137 = *(v16 + v135);
            v137[1] = v138;
            v135 += 32;
            v136 -= 16;
          }

          while (v136);
          if (v127 == (v127 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_142;
          }

          v134 = v127 & 0xFFFFFFFFFFFFFFF0;
          if ((v127 & 0xC) != 0)
          {
            goto LABEL_150;
          }

          v133 = (v16 + v130);
          v132 = (v17 + v130);
        }

        do
        {
LABEL_155:
          v141 = *v133++;
          *v132++ = v141;
        }

        while (v133 != (v16 + 2 * v9));
LABEL_142:
        v16 += 2 * v187;
        v17 += v18;
        ++v125;
      }

      while (v125 != v15);
    }

    v142 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v142 < 3 || v17 - v16 < 0x20)
    {
      v145 = v17;
      v146 = v16;
      goto LABEL_189;
    }

    v143 = v142 + 1;
    if (v142 >= 0xF)
    {
      v144 = v143 & 0xFFFFFFFFFFFFFFF0;
      v147 = (v16 + 16);
      v148 = (v17 + 16);
      v149 = v143 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v147 - 1);
        v150 = *v147;
        *(v148 - 1) = v6;
        *v148 = v150;
        v147 += 2;
        v148 += 2;
        v149 -= 16;
      }

      while (v149);
      if (v143 == v144)
      {
        return v6;
      }

      if ((v143 & 0xC) == 0)
      {
        v177 = 2 * v144;
        v146 = (v16 + v177);
        v145 = (v17 + v177);
        goto LABEL_189;
      }
    }

    else
    {
      v144 = 0;
    }

    v151 = 2 * (v143 & 0xFFFFFFFFFFFFFFFCLL);
    v145 = (v17 + v151);
    v146 = (v16 + v151);
    v152 = (v16 + 2 * v144);
    v153 = (v17 + 2 * v144);
    v154 = v144 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v155 = *v152++;
      LOWORD(v6) = v155;
      *v153++ = v155;
      v154 += 4;
    }

    while (v154);
    if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_189:
    v178 = (v16 + 2 * v9);
    do
    {
      v179 = *v146++;
      LOWORD(v6) = v179;
      *v145++ = v179;
    }

    while (v146 != v178);
  }

  return v6;
}

__int16 sub_2712A77DC@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>)
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
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
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

__n128 sub_2712A7944(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_28812F080[v4])(&v7, v3);
    a3 = v6;
  }

  v3[7].n128_u32[0] = -1;
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  v3[7].n128_u32[0] = 0;
  return result;
}

uint64_t sub_2712A79DC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_28812F080[v4])(&v10, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 112) = -1;
    *v3 = &unk_288113018;
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

uint64_t sub_2712A7ABC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) && *(a2 + 4) == *(a1 + 4) && *(a2 + 2) == *(a1 + 16))
  {
    *&v12 = a2;
    *(&v12 + 1) = a1;
    sub_2712A7CF8(&v12);
    return a1;
  }

  v3 = a2[1];
  v12 = *a2;
  v13 = v3;
  v14 = a2[2];
  v15 = *(a2 + 6);
  sub_271256F80(v16, a2 + 56);
  v4 = v13;
  *a1 = v12;
  *(a1 + 16) = v4;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 80) = v17;
  *(a1 + 96) = v18;
  v5 = *(a1 + 64);
  if (!v5)
  {
    *(a1 + 56) = v16[0];
    goto LABEL_22;
  }

  if (*(a1 + 84))
  {
    v6 = *(a1 + 80) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 88);
  if (v6)
  {
    v7 = 0;
  }

  if (v7 * (*(a1 + 100) >> 1) != -1)
  {
    *(a1 + 56) = v16[0];
LABEL_21:
    free(v5);
    goto LABEL_22;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_20;
    }

    v8 = qword_28087C408;
    v9 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = qword_28087C408;
    v9 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    (*v8)(*(v8 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v8 += 16;
  }

  while (v8 != v9);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_25:
    abort();
  }

LABEL_20:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v12);
  v5 = *(a1 + 64);
  *(a1 + 56) = v16[0];
  if (v5)
  {
    goto LABEL_21;
  }

LABEL_22:
  v10 = v16[2];
  *(a1 + 64) = v16[1];
  *(a1 + 72) = v10;
  return a1;
}

__int16 sub_2712A7CF8@<H0>(void *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 12) == 1 && *(v2 + 12) == 1;
  if (!v3)
  {
    v191 = 0;
    if (*v1)
    {
      v4 = v1[1] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && v1[2] != 0)
    {
      v192 = &v191;
      LOWORD(v6) = sub_2712A8628(&v192, v1, v2);
    }

    return v6;
  }

  v7 = v1[4];
  v8 = *(v2 + 16);
  v9 = *v1;
  if (v7 == v8 && v7 == v9)
  {
    v63 = v1[5];
    v64 = *(v2 + 20);
    v65 = v1[1];
    v66 = v65 * v7;
    if (v63 != v64 || v63 != v66)
    {
      v68 = v1[2];
      if (v7)
      {
        v69 = v65 == 0;
      }

      else
      {
        v69 = 1;
      }

      if (v69 || v68 == 0)
      {
        return v6;
      }

      v71 = *(v1 + 8);
      v72 = *(v2 + 64);
      if (v68 == 1)
      {
LABEL_79:
        if (!v66)
        {
          return v6;
        }

        v73 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v73 < 3 || v72 - v71 < 0x20)
        {
          v166 = v72;
          v167 = v71;
          goto LABEL_197;
        }

        v74 = v73 + 1;
        if (v73 >= 0xF)
        {
          v75 = v74 & 0xFFFFFFFFFFFFFFF0;
          v168 = (v71 + 16);
          v169 = (v72 + 16);
          v170 = v74 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v6 = *(v168 - 1);
            v171 = *v168;
            *(v169 - 1) = v6;
            *v169 = v171;
            v168 += 2;
            v169 += 2;
            v170 -= 16;
          }

          while (v170);
          if (v74 == v75)
          {
            return v6;
          }

          if ((v74 & 0xC) == 0)
          {
            v167 = (v71 + 2 * v75);
            v166 = (v72 + 2 * v75);
            goto LABEL_197;
          }
        }

        else
        {
          v75 = 0;
        }

        v172 = 2 * (v74 & 0xFFFFFFFFFFFFFFFCLL);
        v166 = (v72 + v172);
        v167 = (v71 + v172);
        v173 = (v71 + 2 * v75);
        v174 = (v72 + 2 * v75);
        v175 = v75 - (v74 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v176 = *v173++;
          LOWORD(v6) = v176;
          *v174++ = v176;
          v175 += 4;
        }

        while (v175);
        if (v74 == (v74 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v6;
        }

LABEL_197:
        v182 = (v71 + 2 * v66);
        do
        {
          v183 = *v167++;
          LOWORD(v6) = v183;
          *v166++ = v183;
        }

        while (v167 != v182);
        return v6;
      }

      if (!v66)
      {
        return v6;
      }

      v83 = 0;
      v84 = v68 - 2;
      v85 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v86 = v85 + 1;
      v87 = v72 >= v71 + 2 * (v66 + v63 * v84) || v71 >= v72 + 2 * (v66 + v64 * v84);
      v88 = 2 * (v86 & 0xFFFFFFFFFFFFFFF0);
      v89 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v90 = 2 * (v86 & 0xFFFFFFFFFFFFFFFCLL);
      v91 = !v87;
      v92 = 2 * v63;
      v93 = 2 * v64;
      while (1)
      {
        v94 = v72;
        v95 = v71;
        if (!((v85 < 3) | v91 & 1))
        {
          if (v85 < 0xF)
          {
            v96 = 0;
LABEL_105:
            v94 = (v72 + v90);
            v95 = (v71 + v90);
            v101 = 2 * v96;
            v102 = v96 - v89;
            do
            {
              *&v6 = *(v71 + v101);
              *(v72 + v101) = v6;
              v101 += 8;
              v102 += 4;
            }

            while (v102);
            if (v86 == v89)
            {
              goto LABEL_97;
            }

            goto LABEL_110;
          }

          v97 = 0;
          v98 = v86 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = (v72 + v97);
            v6 = *(v71 + v97);
            v100 = *(v71 + v97 + 16);
            *v99 = v6;
            v99[1] = v100;
            v97 += 32;
            v98 -= 16;
          }

          while (v98);
          if (v86 == (v86 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_97;
          }

          v96 = v86 & 0xFFFFFFFFFFFFFFF0;
          if ((v86 & 0xC) != 0)
          {
            goto LABEL_105;
          }

          v95 = (v71 + v88);
          v94 = (v72 + v88);
        }

        do
        {
LABEL_110:
          v103 = *v95++;
          LOWORD(v6) = v103;
          *v94++ = v103;
        }

        while (v95 != (v71 + 2 * v66));
LABEL_97:
        v71 += v92;
        v72 += v93;
        v3 = v83++ == v84;
        if (v3)
        {
          goto LABEL_79;
        }
      }
    }

    v76 = v1[2] * v63;
    if (!v76)
    {
      return v6;
    }

    v77 = *(v1 + 8);
    v78 = *(v2 + 64);
    v79 = (v76 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v79 < 3)
    {
      v80 = *(v1 + 8);
      goto LABEL_193;
    }

    v80 = *(v1 + 8);
    if (v78 - v77 < 0x20)
    {
      goto LABEL_193;
    }

    v81 = v79 + 1;
    if (v79 >= 0xF)
    {
      v82 = v81 & 0xFFFFFFFFFFFFFFF0;
      v156 = (v77 + 16);
      v157 = v78 + 8;
      v158 = v81 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v156 - 1);
        v159 = *v156;
        *(v157 - 1) = v6;
        *v157 = v159;
        v156 += 2;
        v157 += 2;
        v158 -= 16;
      }

      while (v158);
      if (v81 == v82)
      {
        return v6;
      }

      if ((v81 & 0xC) == 0)
      {
        v80 = (v77 + 2 * v82);
        v78 += v82;
        goto LABEL_193;
      }
    }

    else
    {
      v82 = 0;
    }

    v160 = v81 & 0xFFFFFFFFFFFFFFFCLL;
    v161 = &v78[v160];
    v80 = (v77 + v160 * 2);
    v162 = (v77 + 2 * v82);
    v163 = &v78[v82];
    v164 = v82 - (v81 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      LOWORD(v6) = v165;
      *v163++ = v165;
      v164 += 4;
    }

    while (v164);
    v78 = v161;
    if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_193:
    v180 = (v77 + 2 * v76);
    do
    {
      v181 = *v80++;
      LOWORD(v6) = v181;
      *v78++ = v181;
    }

    while (v80 != v180);
    return v6;
  }

  v12 = v1[1];
  v11 = v1[2];
  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v11 != 0)
  {
    v15 = v12 - 1;
    v16 = *(v1 + 8);
    v17 = *(v2 + 64);
    v18 = 2 * v8;
    v19 = v11 - 1;
    v186 = *(v2 + 16);
    v187 = v1[4];
    v185 = v1[1];
    if (v11 != 1)
    {
      v20 = *(v2 + 20);
      v21 = v1[5];
      if (v12 != 1)
      {
        v22 = 0;
        v23 = 2 * v7;
        v190 = v18 + v17 - v16 - 2 * v7;
        v189 = 2 * (v20 - v21);
        v188 = v18 - 2 * v7;
        v24 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v25 = v24 + 1;
        v26 = v12 - 2;
        v27 = 2 * v20;
        v28 = 2 * v21;
        v29 = v17 + 2 * (v9 + v8 * v26);
        v30 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
        v31 = v30;
        v32 = (v24 + 1) & 0xC;
        v33 = (v24 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v34 = v33;
        v35 = v16 + 2 * (v9 + v7 * v26);
        while (1)
        {
          v36 = 0;
          v38 = v17 < v35 + v28 * v22 && v16 < v29 + v27 * v22;
          v39 = v17;
          v40 = v16;
          do
          {
            v41 = v36;
            v42 = v39;
            v43 = v40;
            if (v24 < 3 || v38)
            {
              goto LABEL_48;
            }

            if (v24 >= 0xF)
            {
              v45 = 0;
              v46 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v47 = &v39[v45];
                v48 = *&v40[v45 + 8];
                *v47 = *&v40[v45];
                v47[1] = v48;
                v45 += 16;
                v46 -= 16;
              }

              while (v46);
              if (v25 == v30)
              {
                goto LABEL_35;
              }

              v44 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v43 = &v40[v31];
                v42 = &v39[v31];
                do
                {
LABEL_48:
                  v51 = *v43++;
                  *v42++ = v51;
                }

                while (v43 != &v40[v9]);
                goto LABEL_35;
              }
            }

            else
            {
              v44 = 0;
            }

            v42 = &v39[v34];
            v43 = &v40[v34];
            v49 = v44;
            v50 = v44 - v33;
            do
            {
              *&v39[v49] = *&v40[v49];
              v49 += 4;
              v50 += 4;
            }

            while (v50);
            if (v25 != v33)
            {
              goto LABEL_48;
            }

LABEL_35:
            v40 = (v40 + v23);
            v39 = (v39 + v18);
            v36 = v41 + 1;
          }

          while (v41 + 1 != v15);
          if (v24 < 3 || (v190 + v189 * v22 + v188 * v41) < 0x20)
          {
            v52 = v39;
            v53 = v40;
            goto LABEL_53;
          }

          if (v24 >= 0xF)
          {
            v57 = 0;
            v58 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v59 = &v39[v57];
              v60 = *&v40[v57 + 8];
              *v59 = *&v40[v57];
              v59[1] = v60;
              v57 += 16;
              v58 -= 16;
            }

            while (v58);
            if (v25 != v30)
            {
              v56 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v53 = &v40[v31];
                v52 = &v39[v31];
                goto LABEL_53;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v56 = 0;
LABEL_62:
            v52 = &v39[v34];
            v53 = &v40[v34];
            v61 = v56;
            v62 = v56 - v33;
            do
            {
              *&v39[v61] = *&v40[v61];
              v61 += 4;
              v62 += 4;
            }

            while (v62);
            if (v25 != v33)
            {
LABEL_53:
              v54 = &v40[v9];
              do
              {
                v55 = *v53++;
                *v52++ = v55;
              }

              while (v53 != v54);
            }
          }

          v16 += v28;
          v17 += v27;
          if (++v22 == v19)
          {
            goto LABEL_134;
          }
        }
      }

      v104 = 0;
      v105 = v11 - 2;
      v106 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v107 = v106 + 1;
      v108 = v17 >= v16 + 2 * (v9 + v21 * v105) || v16 >= v17 + 2 * (v9 + v20 * v105);
      v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFF0);
      v110 = v107 & 0xFFFFFFFFFFFFFFFCLL;
      v111 = 2 * (v107 & 0xFFFFFFFFFFFFFFFCLL);
      v112 = !v108;
      v113 = 2 * v21;
      v114 = 2 * v20;
      do
      {
        v115 = v17;
        v116 = v16;
        if (!((v106 < 3) | v112 & 1))
        {
          if (v106 < 0xF)
          {
            v117 = 0;
LABEL_127:
            v115 = (v17 + v111);
            v116 = (v16 + v111);
            v122 = 2 * v117;
            v123 = v117 - v110;
            do
            {
              *(v17 + v122) = *(v16 + v122);
              v122 += 8;
              v123 += 4;
            }

            while (v123);
            if (v107 == v110)
            {
              goto LABEL_119;
            }

            goto LABEL_132;
          }

          v118 = 0;
          v119 = v107 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v120 = (v17 + v118);
            v121 = *(v16 + v118 + 16);
            *v120 = *(v16 + v118);
            v120[1] = v121;
            v118 += 32;
            v119 -= 16;
          }

          while (v119);
          if (v107 == (v107 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_119;
          }

          v117 = v107 & 0xFFFFFFFFFFFFFFF0;
          if ((v107 & 0xC) != 0)
          {
            goto LABEL_127;
          }

          v116 = (v16 + v109);
          v115 = (v17 + v109);
        }

        do
        {
LABEL_132:
          v124 = *v116++;
          *v115++ = v124;
        }

        while (v116 != (v16 + 2 * v9));
LABEL_119:
        v16 += v113;
        v17 += v114;
        ++v104;
      }

      while (v104 != v19);
    }

LABEL_134:
    if (v15)
    {
      v125 = 0;
      v126 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v127 = v126 + 1;
      v129 = v17 < v16 + 2 * (v9 + v187 * (v185 - 2)) && v16 < v17 + 2 * (v9 + v186 * (v185 - 2));
      v130 = 2 * (v127 & 0xFFFFFFFFFFFFFFF0);
      v131 = 2 * (v127 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v132 = v17;
        v133 = v16;
        if (v126 >= 3 && !v129)
        {
          if (v126 < 0xF)
          {
            v134 = 0;
LABEL_150:
            v132 = (v17 + v131);
            v133 = (v16 + v131);
            v139 = 2 * v134;
            v140 = v134 - (v127 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *(v17 + v139) = *(v16 + v139);
              v139 += 8;
              v140 += 4;
            }

            while (v140);
            if (v127 == (v127 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_142;
            }

            goto LABEL_155;
          }

          v135 = 0;
          v136 = v127 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v137 = (v17 + v135);
            v138 = *(v16 + v135 + 16);
            *v137 = *(v16 + v135);
            v137[1] = v138;
            v135 += 32;
            v136 -= 16;
          }

          while (v136);
          if (v127 == (v127 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_142;
          }

          v134 = v127 & 0xFFFFFFFFFFFFFFF0;
          if ((v127 & 0xC) != 0)
          {
            goto LABEL_150;
          }

          v133 = (v16 + v130);
          v132 = (v17 + v130);
        }

        do
        {
LABEL_155:
          v141 = *v133++;
          *v132++ = v141;
        }

        while (v133 != (v16 + 2 * v9));
LABEL_142:
        v16 += 2 * v187;
        v17 += v18;
        ++v125;
      }

      while (v125 != v15);
    }

    v142 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v142 < 3 || v17 - v16 < 0x20)
    {
      v145 = v17;
      v146 = v16;
      goto LABEL_189;
    }

    v143 = v142 + 1;
    if (v142 >= 0xF)
    {
      v144 = v143 & 0xFFFFFFFFFFFFFFF0;
      v147 = (v16 + 16);
      v148 = (v17 + 16);
      v149 = v143 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v147 - 1);
        v150 = *v147;
        *(v148 - 1) = v6;
        *v148 = v150;
        v147 += 2;
        v148 += 2;
        v149 -= 16;
      }

      while (v149);
      if (v143 == v144)
      {
        return v6;
      }

      if ((v143 & 0xC) == 0)
      {
        v177 = 2 * v144;
        v146 = (v16 + v177);
        v145 = (v17 + v177);
        goto LABEL_189;
      }
    }

    else
    {
      v144 = 0;
    }

    v151 = 2 * (v143 & 0xFFFFFFFFFFFFFFFCLL);
    v145 = (v17 + v151);
    v146 = (v16 + v151);
    v152 = (v16 + 2 * v144);
    v153 = (v17 + 2 * v144);
    v154 = v144 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v155 = *v152++;
      LOWORD(v6) = v155;
      *v153++ = v155;
      v154 += 4;
    }

    while (v154);
    if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_189:
    v178 = (v16 + 2 * v9);
    do
    {
      v179 = *v146++;
      LOWORD(v6) = v179;
      *v145++ = v179;
    }

    while (v146 != v178);
  }

  return v6;
}