uint64_t tag_memmsc(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 44);
  v5 = *a2;
  tag_expsc(a1, a2, a3);
  result = xvm_expma(a3, a3, 0, v4 * v4 * v5);
  v16 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v4)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = 0;
          v12 = v4;
          v13 = v10;
          do
          {
            v11 = fix16_add(v11, a3[v13++]);
            --v12;
          }

          while (v12);
          v14 = v4;
          v15 = v10;
          do
          {
            result = fix16_div(a3[v15], v11);
            a3[v15++] = result;
            --v14;
          }

          while (v14);
          ++v9;
          v10 += v4;
        }

        while (v9 != v4);
      }

      ++v8;
      v7 += v4 * v4;
    }

    while (v8 != v16);
  }

  return result;
}

uint64_t tag_expsc(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = *(result + 80);
  v42 = result;
  v5 = *(result + 44);
  v6 = *a2;
  v7 = *(a2 + 2);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v39 = *a2;
  if (v8)
  {
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v5)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = v5;
          v14 = v12;
          do
          {
            *(a3 + 4 * v14) = 0x80000000;
            v14 += v5;
            --v13;
          }

          while (v13);
          ++v11;
          ++v12;
        }

        while (v11 != v5);
      }

      ++v10;
      v9 += v5 * v5;
    }

    while (v10 != v39);
  }

  v43 = 0;
  *&v40[8] = 0;
  v37 = a2 + 6;
  *v40 = (v5 * v5);
  do
  {
    if (v5)
    {
      v15 = 0;
      v16 = v43;
      v17 = &v37[8 * *&v40[4]];
      do
      {
        if (!v7 || *(v7 + 4 * (v5 * *&v40[4] + v15)) || ((v18 = *v17, v18 != -1) ? (v19 = v15 == v18) : (v19 = 0), v19))
        {
          v20 = v17[1];
          if (v20)
          {
            LODWORD(result) = 0;
            v21 = *(v17 + 2);
            v22 = *(v42 + 64);
            do
            {
              v23 = *v21++;
              result = fix16_add(result, *(v4 + 4 * (*(v22 + 4 * v23) + v15)));
              --v20;
            }

            while (v20);
          }

          else
          {
            result = 0;
          }

          v24 = v5;
          v25 = v16;
          do
          {
            *(a3 + 4 * v25) = result;
            v25 += v5;
            --v24;
          }

          while (v24);
        }

        ++v15;
        ++v16;
      }

      while (v15 != v5);
    }

    v43 += *v40;
    ++*&v40[4];
  }

  while (*&v40[4] != v39);
  if (v39 >= 2)
  {
    for (i = 1; i != v39; ++i)
    {
      if (v5)
      {
        *&v41[8] = 0;
        v26 = 0;
        v27 = &v37[8 * i];
        *v41 = (v5 * (i - 1));
        v44 = v5 * i;
        do
        {
          if (!v7 || *(v7 + 4 * (*v41 + *&v41[4])) || v37[8 * i - 8] != -1 && *&v41[4] == *v27)
          {
            v28 = 0;
            v45 = (v44 + *&v41[4]) * v5;
            do
            {
              if (!v7 || *(v7 + 4 * (v44 + v28)) || ((v29 = *v27, v29 != -1) ? (v30 = v28 == v29) : (v30 = 0), v30))
              {
                v31 = v7;
                v32 = v27[2];
                if (v32)
                {
                  v33 = 0;
                  v34 = *(v27 + 3);
                  v35 = *(v42 + 72);
                  do
                  {
                    v36 = *v34++;
                    v33 = fix16_add(v33, *(v4 + 4 * (*(v35 + 4 * v36) + v26)));
                    --v32;
                  }

                  while (v32);
                }

                else
                {
                  v33 = 0;
                }

                result = fix16_add(*(a3 + 4 * (v45 + v28)), v33);
                *(a3 + 4 * (v45 + v28)) = result;
                v7 = v31;
              }

              ++v28;
              ++v26;
            }

            while (v28 != v5);
          }

          ++*&v41[4];
        }

        while (*&v41[4] != v5);
      }
    }
  }

  return result;
}

uint64_t tag_forced(uint64_t result, unsigned int *a2, uint64_t a3, int a4)
{
  v4 = *(result + 44);
  v5 = *a2;
  v6 = (a4 == 0) << 31;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = v4 * v4;
    v10 = v4 * v4;
    do
    {
      v11 = a2[8 * v8 + 6];
      if (v11 != -1)
      {
        if (v8 && v4)
        {
          LODWORD(result) = 0;
          v12 = v7;
          do
          {
            if (result != v11)
            {
              v13 = v4;
              v14 = v12;
              do
              {
                *(a3 + 4 * v14) = v6;
                v14 += v4;
                --v13;
              }

              while (v13);
            }

            result = (result + 1);
            ++v12;
          }

          while (result != v4);
        }

        if (v8 != v5 - 1 && v4)
        {
          LODWORD(result) = 0;
          v15 = v10;
          do
          {
            if (result != v11)
            {
              v16 = v4;
              v17 = v15;
              do
              {
                *(a3 + 4 * v17++) = v6;
                --v16;
              }

              while (v16);
            }

            result = (result + 1);
            v15 += v4;
          }

          while (result != v4);
        }
      }

      ++v8;
      v7 += v9;
      v10 += v9;
    }

    while (v8 != v5);
  }

  v18 = a2[6];
  if (v18 != -1 && v4 != 0)
  {
    v20 = 0;
    do
    {
      if (v18 != v20)
      {
        v21 = v4;
        v22 = v20;
        do
        {
          *(a3 + 4 * v22) = v6;
          v22 += v4;
          --v21;
        }

        while (v21);
      }

      ++v20;
    }

    while (v20 != v4);
  }

  return result;
}

uint64_t tag_memmsc_sparse(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 44);
  v5 = *a2;
  tag_expsc_sparse(a1, a2, a3);
  result = xvm_expma(a3, a3, 0, v4 * v4 * v5);
  v16 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v4)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = 0;
          v12 = v4;
          v13 = v10;
          do
          {
            v11 = fix16_add(v11, a3[v13++]);
            --v12;
          }

          while (v12);
          v14 = v4;
          v15 = v10;
          do
          {
            result = fix16_div(a3[v15], v11);
            a3[v15++] = result;
            --v14;
          }

          while (v14);
          ++v9;
          v10 += v4;
        }

        while (v9 != v4);
      }

      ++v8;
      v7 += v4 * v4;
    }

    while (v8 != v16);
  }

  return result;
}

uint64_t tag_expsc_sparse(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 88);
  v7 = *(result + 44);
  v8 = *a2;
  if (*(a2 + 2))
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (v7)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = v7;
          v15 = v13;
          do
          {
            *(a3 + 4 * v15) = 0x80000000;
            v15 += v7;
            --v14;
          }

          while (v14);
          ++v12;
          ++v13;
        }

        while (v12 != v7);
      }

      ++v11;
      v10 += v7 * v7;
    }

    while (v11 != v8);
  }

  v47 = 0;
  v16 = 0;
  v44 = a2 + 6;
  v17 = -v7;
  v46 = v8;
  do
  {
    if (v7)
    {
      v18 = 0;
      v19 = &v44[8 * v16];
      v20 = v47;
      v49 = v17;
      do
      {
        v21 = *(v4 + 2);
        if (!v21 || *(v21 + 4 * (v7 * v16 + v18)) || ((v22 = *v19, v22 != -1) ? (v23 = v18 == v22) : (v23 = 0), v23))
        {
          v51 = v20;
          if (v19[1])
          {
            v24 = 0;
            v25 = 0;
            do
            {
              v26 = sparray_get(v6, *(*(v5 + 64) + 4 * *(*(v19 + 2) + 4 * v24)) + v18);
              result = fix16_add(v25, v26);
              v25 = result;
              ++v24;
            }

            while (v24 < v19[1]);
          }

          else
          {
            v25 = 0;
          }

          v27 = 0;
          v20 = v51;
          v28 = v51;
          v17 = v49;
          do
          {
            if (!v16 || (v29 = *(v4 + 2)) == 0 || *(v29 + 4 * (v49 + v27)) || v44[8 * (v16 - 1)] != -1 && v27 == *v19)
            {
              *(a3 + 4 * v28) = v25;
            }

            ++v27;
            v28 += v7;
          }

          while (v7 != v27);
        }

        ++v18;
        ++v20;
      }

      while (v18 != v7);
    }

    ++v16;
    v47 += v7 * v7;
    v17 += v7;
  }

  while (v16 != v46);
  if (v46 >= 2)
  {
    for (i = 1; i != v46; ++i)
    {
      if (v7)
      {
        v30 = 0;
        v31 = 0;
        v32 = &v44[8 * i];
        v50 = v7 * i;
        do
        {
          v33 = *(v4 + 2);
          v48 = v30;
          if (!v33 || *(v33 + 4 * (v7 * (i - 1) + v30)) || ((v34 = v44[8 * i - 8], v34 != -1) ? (v35 = v30 == v34) : (v35 = 0), v35))
          {
            v36 = 0;
            v52 = (v50 + v30) * v7;
            do
            {
              v37 = *(v4 + 2);
              if (!v37 || *(v37 + 4 * (v50 + v36)) || ((v38 = *v32, v38 != -1) ? (v39 = v36 == v38) : (v39 = 0), v39))
              {
                v40 = v4;
                if (v32[2])
                {
                  v41 = 0;
                  v42 = 0;
                  do
                  {
                    v43 = sparray_get(v6, *(*(v5 + 72) + 4 * *(*(v32 + 3) + 4 * v41)) + v31);
                    v42 = fix16_add(v42, v43);
                    ++v41;
                  }

                  while (v41 < v32[2]);
                }

                else
                {
                  v42 = 0;
                }

                result = fix16_add(*(a3 + 4 * (v52 + v36)), v42);
                *(a3 + 4 * (v52 + v36)) = result;
                v4 = v40;
              }

              ++v36;
              ++v31;
            }

            while (v36 != v7);
          }

          else
          {
            v31 += v7;
          }

          v30 = v48 + 1;
        }

        while (v48 + 1 != v7);
      }
    }
  }

  return result;
}

void *kh_init_32(uint64_t a1)
{
  result = heap_Calloc(*(a1 + 8), 1, 48);
  if (result)
  {
    *result = a1;
  }

  return result;
}

void *kh_destroy_32(uint64_t *a1)
{
  v2 = *a1;
  heap_Free(*(*a1 + 8), a1[4]);
  heap_Free(*(v2 + 8), a1[3]);
  heap_Free(*(v2 + 8), a1[5]);
  v3 = *(v2 + 8);

  return heap_Free(v3, a1);
}

void *kh_clear_32(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[3];
    if (result)
    {
      v2 = v1[2];
      if (v2 >= 0x10)
      {
        v3 = (v2 >> 2) & 0x3FFFFFFC;
      }

      else
      {
        v3 = 4;
      }

      result = cstdlib_memset(result, 170, v3);
      v1[3] = 0;
      v1[4] = 0;
    }
  }

  return result;
}

uint64_t kh_get_32(uint64_t a1, int a2)
{
  result = *(a1 + 8);
  if (result)
  {
    v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v5 = (v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11);
    v6 = (result - 1) & (v5 ^ HIWORD(v5));
    v7 = 1;
    v8 = v6;
    while (1)
    {
      v9 = *(*(a1 + 24) + 4 * (v8 >> 4)) >> (2 * (v8 & 0xF));
      if ((v9 & 2) != 0 || (v9 & 1) == 0 && *(*(a1 + 32) + 4 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + v7++) & (result - 1);
      if (v8 == v6)
      {
        return result;
      }
    }

    if ((v9 & 3) != 0)
    {
      return result;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t kh_resize_32(uint64_t *a1, int a2)
{
  v2 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  v4 = v3 | HIWORD(v3);
  if ((v4 + 1) > 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4;
  }

  v6 = 3 * v5 + 2;
  if (*(a1 + 3) >= v6)
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(*a1 + 8);
  if ((v4 + 1) >= 0x10)
  {
    v10 = (v5 >> 2) & 0x3FFFFFFC;
  }

  else
  {
    v10 = 4;
  }

  v11 = heap_Alloc(v9, v10);
  if (v11)
  {
    v12 = v11;
    cstdlib_memset(v11, 170, v10);
    v13 = *(a1 + 2);
    if (v13 >= v5)
    {
      goto LABEL_13;
    }

    v14 = heap_Realloc(*(v8 + 8), a1[4], 4 * v5);
    if (v14)
    {
      a1[4] = v14;
      v15 = heap_Realloc(*(v8 + 8), a1[5], 4 * v5);
      if (v15)
      {
        a1[5] = v15;
        v13 = *(a1 + 2);
        if (!v13)
        {
LABEL_26:
          heap_Free(*(v8 + 8), a1[3]);
          result = 0;
          a1[3] = v12;
          *(a1 + 2) = v5;
          *(a1 + 4) = *(a1 + 3);
          *(a1 + 5) = v6;
          return result;
        }

LABEL_13:
        v16 = 0;
        v17 = a1[3];
        v18 = v5 - 1;
        do
        {
          v19 = *(v17 + 4 * (v16 >> 4));
          if (((v19 >> (2 * (v16 & 0xF))) & 3) == 0)
          {
            v20 = a1[4];
            v21 = a1[5];
            v22 = *(v20 + 4 * v16);
            v23 = *(v21 + 4 * v16);
            *(v17 + 4 * (v16 >> 4)) = v19 | (1 << (2 * (v16 & 0xF)));
            while (1)
            {
              v24 = 9 * ((v22 + ~(v22 << 15)) ^ ((v22 + ~(v22 << 15)) >> 10));
              v25 = (v24 ^ (v24 >> 6)) + ~((v24 ^ (v24 >> 6)) << 11);
              v26 = (v25 ^ HIWORD(v25)) & v18;
              v27 = v26 >> 4;
              v28 = *(v12 + 4 * v27);
              v29 = 2 * (v26 & 0xF);
              v30 = 2 << v29;
              if (((2 << v29) & v28) == 0)
              {
                v31 = 1;
                do
                {
                  v26 = (v26 + v31) & v18;
                  v27 = v26 >> 4;
                  v28 = *(v12 + 4 * v27);
                  v29 = 2 * (v26 & 0xF);
                  v30 = 2 << v29;
                  ++v31;
                }

                while (((2 << v29) & v28) == 0);
              }

              *(v12 + 4 * v27) = v28 & ~v30;
              if (v26 >= *(a1 + 2) || ((*(v17 + 4 * v27) >> v29) & 3) != 0)
              {
                break;
              }

              v32 = *(v20 + 4 * v26);
              *(v20 + 4 * v26) = v22;
              v33 = *(v21 + 4 * v26);
              *(v21 + 4 * v26) = v23;
              *(v17 + 4 * v27) |= 1 << v29;
              v22 = v32;
              v23 = v33;
            }

            *(v20 + 4 * v26) = v22;
            *(v21 + 4 * v26) = v23;
            v13 = *(a1 + 2);
          }

          ++v16;
        }

        while (v16 != v13);
        if (v13 > v5)
        {
          a1[4] = heap_Realloc(*(v8 + 8), a1[4], 4 * v5);
          a1[5] = heap_Realloc(*(v8 + 8), a1[5], 4 * v5);
        }

        goto LABEL_26;
      }
    }

    heap_Free(*(v8 + 8), v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t kh_put_32(uint64_t a1, int a2, int *a3)
{
  if (*(a1 + 16) >= *(a1 + 20))
  {
    v6 = *(a1 + 8);
    v7 = v6 <= *(a1 + 12) >> 1 ? v6 + 1 : v6 - 1;
    if ((kh_resize_32(a1, v7) & 0x80000000) != 0)
    {
      *a3 = -1;
      return *(a1 + 8);
    }
  }

  v8 = *(a1 + 8);
  v9 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v10 = (v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11);
  v11 = (v8 - 1) & (v10 ^ HIWORD(v10));
  v12 = *(a1 + 24);
  if (((*(v12 + 4 * (v11 >> 4)) >> (2 * (v11 & 0xF))) & 2) != 0)
  {
    result = v11;
  }

  else
  {
    v14 = 1;
    v15 = v11;
    LODWORD(result) = *(a1 + 8);
    do
    {
      v16 = *(v12 + 4 * (v15 >> 4)) >> (2 * (v15 & 0xF));
      if ((v16 & 2) != 0 || (v16 & 1) == 0 && *(*(a1 + 32) + 4 * v15) == a2)
      {
        v17 = ((*(v12 + 4 * (v15 >> 4)) >> (2 * (v15 & 0xF))) & 2) == 0;
        goto LABEL_20;
      }

      if (v16)
      {
        result = v15;
      }

      else
      {
        result = result;
      }

      v15 = (v15 + v14++) & (v8 - 1);
    }

    while (v15 != v11);
    if (result != v8)
    {
      goto LABEL_26;
    }

    v17 = 1;
    LODWORD(result) = *(a1 + 8);
    v15 = v11;
LABEL_20:
    if (result == v8 || v17)
    {
      result = v15;
    }

    else
    {
      result = result;
    }
  }

LABEL_26:
  v19 = result >> 4;
  v20 = 2 * (result & 0xF);
  v21 = *(v12 + 4 * (result >> 4)) >> v20;
  if ((v21 & 2) != 0)
  {
    *(*(a1 + 32) + 4 * result) = a2;
    *(v12 + 4 * v19) &= ~(3 << v20);
    *(a1 + 12) = vadd_s32(*(a1 + 12), 0x400000004);
    v22 = 1;
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      *a3 = 0;
      return result;
    }

    *(*(a1 + 32) + 4 * result) = a2;
    *(v12 + 4 * v19) &= ~(3 << v20);
    *(a1 + 12) += 4;
    v22 = 2;
  }

  *a3 = v22;
  return result;
}

uint64_t kh_del_32(uint64_t result, unsigned int a2)
{
  if (*(result + 8) != a2)
  {
    v2 = *(result + 24);
    v3 = *(v2 + 4 * (a2 >> 4));
    if (((v3 >> (2 * (a2 & 0xF))) & 3) == 0)
    {
      *(v2 + 4 * (a2 >> 4)) = v3 | (1 << (2 * (a2 & 0xF)));
      *(result + 12) -= 4;
    }
  }

  return result;
}

uint64_t xvm_scale(uint64_t result, int *a2, int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = result;
    v7 = a4;
    do
    {
      v8 = *a2++;
      result = fix16_mul(v8, a3);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t xvm_unit(_DWORD *a1, int *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = a2;
    v6 = 0;
    v7 = a3;
    v8 = a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v6 = fix16_add(v6, v10);
      --v8;
    }

    while (v8);
    v11 = fix16_div(0x10000, v6);
    do
    {
      v12 = *v4++;
      *a1++ = fix16_mul(v12, v11);
      --v7;
    }

    while (v7);
    return v11;
  }

  else
  {

    return fix16_div(0x10000, 0);
  }
}

uint64_t xvm_expma(uint64_t result, unsigned int *a2, int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = result;
    v7 = a4;
    do
    {
      v8 = *a2++;
      v9 = fix16_exp(v8);
      result = fix16_sub(v9, a3);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t xvm_expma_cache(uint64_t result, unsigned int *a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v10 = result;
    v11 = a4;
    do
    {
      v12 = *a2++;
      v13 = fix16_exp_cache(v12, a5, a6);
      result = fix16_sub(v13, a3);
      *v10++ = result;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t _parse_one_rule(uint64_t a1, char *__s1, uint64_t a3)
{
  v6 = *(a3 + 16) + 16 * *(a3 + 8);
  while (1)
  {
    v7 = *__s1;
    if (v7 != 32)
    {
      break;
    }

    ++__s1;
  }

  if (!*__s1 || v7 == 35)
  {
    return 0;
  }

  v8 = 2585796618;
  v9 = cstdlib_strstr(__s1, ")-->");
  if (v9 && (v10 = v9, cstdlib_strlen(v9) >= 5))
  {
    v11 = *(a1 + 8);
    v12 = cstdlib_strlen(v10 + 4);
    v13 = heap_Calloc(v11, 1, (v12 + 1));
    *(v6 + 8) = v13;
    if (!v13)
    {
      return v8;
    }

    cstdlib_strcpy(v13, v10 + 4);
  }

  else
  {
    wapiti_info(*(a1 + 32), "invalid rule label: %s");
  }

  v14 = *(a1 + 8);
  v15 = cstdlib_strlen(__s1);
  v16 = heap_Calloc(v14, 1, (v15 + 2));
  if (v16)
  {
    v17 = v16;
    v34 = 0;
    *v6 = 0;
    v18 = __s1;
    do
    {
      if (!cstdlib_strstr(v18, ")^") && !cstdlib_strstr(v18, ")-->"))
      {
        break;
      }

      ++*v6;
      v19 = cstdlib_strstr(v18, ")^");
      v18 = v19 + 2;
    }

    while (v19);
    v20 = *(a3 + 32);
    v21 = *(a3 + 36);
    if (v20 + 4 * *v6 <= v21)
    {
LABEL_19:
      *(v6 + 4) = v20;
      while (1)
      {
        v23 = cstdlib_strstr(__s1, ")^");
        if (!v23)
        {
          v23 = cstdlib_strstr(__s1, ")-->");
          if (!v23)
          {
            break;
          }
        }

        *v23 = 0;
        v24 = cstdlib_strstr(__s1, "(");
        if (!v24)
        {
          wapiti_info(*(a1 + 32), "invalid feature id: %s");
          break;
        }

        *v24 = 0;
        v25 = *__s1;
        v26 = v25 == 33;
        if (v25 == 33)
        {
          v27 = __s1 + 1;
        }

        else
        {
          v27 = __s1;
        }

        v28 = cstdlib_strstr(v27, "_");
        if (v28)
        {
          *v28 = 0;
          v29 = cstdlib_atoi(v27);
          v27 += cstdlib_strlen(v27) + 1;
        }

        else
        {
          wapiti_info(*(a1 + 32), "invalid offset: %s");
          v29 = 0;
        }

        v30 = cstdlib_atoi(v27);
        v31 = &v27[cstdlib_strlen(v27) + 1];
        cstdlib_strcpy(v17, "|");
        cstdlib_strcat(v17, v31);
        cstdlib_strcat(v17, "|");
        if ((qrk_str2id(a1, *a3, v17, &v34, 0) & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        v32 = *(a3 + 24);
        *(v32 + 4 * *(a3 + 32)) = v26;
        *(v32 + 4 * (*(a3 + 32) + 1)) = v29;
        *(v32 + 4 * (*(a3 + 32) + 2)) = v30;
        *(v32 + 4 * (*(a3 + 32) + 3)) = v34;
        *(a3 + 32) += 4;
        __s1 = &v31[cstdlib_strlen(v31) + 2];
      }

      ++*(a3 + 8);
LABEL_33:
      heap_Free(*(a1 + 8), v17);
      return 0;
    }

    v22 = heap_Realloc(*(a1 + 8), *(a3 + 24), 4 * (*v6 + v21 + 50));
    if (v22)
    {
      v20 = *(a3 + 32);
      *(a3 + 36) += *v6 + 50;
      *(a3 + 24) = v22;
      goto LABEL_19;
    }
  }

  return v8;
}

uint64_t wapiti_rules_load(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  wapiti_info(*(a1 + 32), "Load wapiti forcing rules...");
  result = heap_Calloc(*(a1 + 8), 1, 40);
  if (result)
  {
    v9 = result;
    if (!a3 || cstdlib_strstr(a2, "Rule_Number: ") != a2)
    {
      cstdlib_strlen(a2);
LABEL_5:
      result = 0;
      *a4 = v9;
      return result;
    }

    v10 = cstdlib_atoi((a2 + 13));
    v11 = cstdlib_strlen(a2);
    if (!v10)
    {
      goto LABEL_5;
    }

    v12 = v11;
    if ((qrk_new(a1, v9) & 0x80000000) != 0)
    {
      return 0;
    }

    v13 = heap_Calloc(*(a1 + 8), 1, 16 * v10);
    *(v9 + 16) = v13;
    if (!v13)
    {
      return 2585796618;
    }

    result = heap_Calloc(*(a1 + 8), 300, 4);
    *(v9 + 24) = result;
    if (result)
    {
      v14 = (a2 + v12 + 1);
      *(v9 + 36) = 300;
      *(v9 + 8) = 0;
      v15 = a2 + a3;
      while (v14 < v15)
      {
        v16 = cstdlib_strlen(v14);
        _parse_one_rule(a1, v14, v9);
        v14 += v16 + 1;
      }

      goto LABEL_5;
    }
  }

  return result;
}

uint64_t _apply_one_rule(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  if (!*a3)
  {
    return *(a3 + 8);
  }

  v10 = 0;
  v21 = a4 + 24;
  for (i = 3; ; i += 4)
  {
    v12 = a2[3];
    v13 = i + *(a3 + 4);
    v14 = *(v12 + 4 * (v13 - 3));
    v15 = *(v12 + 4 * (v13 - 2)) + a5;
    if (v15 < 0 || v15 >= *a4 || (v16 = *(v12 + 4 * (v13 - 1)), v16 >= *(*(a4 + 16) + 4 * v15)))
    {
      v17 = 0;
    }

    else
    {
      __s1 = qrk_id2str(a1, *a2, *(v12 + 4 * v13));
      cstdlib_strcpy(a6, "|");
      cstdlib_strcat(a6, *(*(v21 + 8 * v15) + 8 * v16));
      cstdlib_strcat(a6, "|");
      v17 = cstdlib_strstr(__s1, a6);
    }

    if (!v14 && v17 == 0)
    {
      break;
    }

    if (v14 == 1 && v17 != 0)
    {
      break;
    }

    if (++v10 >= *a3)
    {
      return *(a3 + 8);
    }
  }

  return 0;
}

uint64_t wapiti_rules_apply(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  wapiti_info(*(a1 + 32), "Apply wapiti forcing rules...");
  v6 = *a3;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a3 + 2);
    do
    {
      if (*(v9 + 4 * v7))
      {
        v10 = 0;
        do
        {
          v11 = cstdlib_strlen(*(*&a3[2 * v7 + 6] + 8 * v10));
          if (v8 <= v11)
          {
            v8 = v11;
          }

          ++v10;
          v9 = *(a3 + 2);
        }

        while (v10 < *(v9 + 4 * v7));
        v6 = *a3;
      }

      ++v7;
    }

    while (v7 < v6);
    v12 = v8 + 10;
  }

  else
  {
    v12 = 10;
  }

  v13 = 2585796618;
  v14 = heap_Calloc(*(a1 + 8), 1, v12);
  if (v14)
  {
    v15 = v14;
    if (*(a3 + 1) || (v16 = heap_Calloc(*(a1 + 8), 1, 8 * *a3), (*(a3 + 1) = v16) != 0))
    {
      if (*a3)
      {
        v17 = 0;
        LODWORD(v18) = *(a2 + 8);
        while (!v18)
        {
          v21 = *(a3 + 1);
          if (!*(v21 + 8 * v17))
          {
            goto LABEL_27;
          }

LABEL_24:
          if (++v17 >= *a3)
          {
            goto LABEL_28;
          }
        }

        v19 = 0;
        v20 = 1;
        do
        {
          *(*(a3 + 1) + 8 * v17) = _apply_one_rule(a1, a2, *(a2 + 16) + v19, a3, v17, v15);
          v21 = *(a3 + 1);
          v22 = *(v21 + 8 * v17);
          v18 = *(a2 + 8);
          v19 += 16;
        }

        while (v20++ < v18 && v22 == 0);
        if (v22)
        {
          goto LABEL_24;
        }

LABEL_27:
        *(v21 + 8 * v17) = "";
        goto LABEL_24;
      }

LABEL_28:
      heap_Free(*(a1 + 8), v15);
      return 0;
    }
  }

  return v13;
}

uint64_t wapiti_rules_unload(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    wapiti_info(*(a1 + 32), "Unload wapiti forcing rules...");
    if (*(a2 + 8) && *(a2 + 16))
    {
      v4 = 0;
      v5 = 8;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 16) + v5));
        ++v4;
        v5 += 16;
      }

      while (v4 < *(a2 + 8));
      heap_Free(*(a1 + 8), *(a2 + 16));
      heap_Free(*(a1 + 8), *(a2 + 24));
    }

    if (*a2)
    {
      qrk_free(a1, *a2, 0);
    }

    heap_Free(*(a1 + 8), a2);
  }

  return 0;
}

uint64_t crf_Init_ReadOnly_ReferenceCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, int a6, uint64_t a7, const char *a8, __int16 a9, char a10, uint64_t a11)
{
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  cstdlib_memset(&v22, 0, 0x38uLL);
  result = InitRsrcFunction(a1, a2, &v28);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v27);
    if ((result & 0x80000000) == 0)
    {
      *&v22 = a1;
      *(&v22 + 1) = a2;
      *&v23 = a3;
      *(&v23 + 1) = a4;
      cstdlib_strcpy(&v24, a8);
      DWORD2(v24) = a6;
      BYTE14(v24) = a10;
      WORD6(v24) = a9;
      v25 = a11;
      ObjcForThisApi = getObjcForThisApi(v28, v27);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a7, crf_ObjcLoad, crf_ObjcClose, &v22, &v26);
      if ((result & 0x80000000) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v26 + 32);
      }

      *a5 = v21;
    }
  }

  return result;
}

uint64_t crf_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v47 = 0;
  v48 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  result = InitRsrcFunction(a1, a2, &v47);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v48);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_memcpy(v22, v47, 0x1A0uLL);
      v23 = *(v48 + 32);
      v11 = *(a5 + 40);
      v12 = *(a5 + 48);
      v13 = *(a5 + 44) | (*(a5 + 46) << 16);
      v50 = 0;
      result = ssftriff_reader_ObjOpen(a1, a2, v11, a3, (a5 + 32), v13, &v50);
      if ((result & 0x80000000) == 0)
      {
        v14 = heap_Calloc(*(&v22[0] + 1), 1, 344);
        *(a4 + 32) = v14;
        if (v14)
        {
          result = crf_Init(a1, a2, v50, v14);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          cstdlib_strcpy((*(a4 + 32) + 84), a3);
          if (v12)
          {
            v49 = 1;
            result = v12(v22, *(a4 + 32), &v49);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            *(*(*(a4 + 32) + 24) + 24) = v49;
          }

          return ssftriff_reader_ObjClose(v50, v15, v16, v17, v18, v19, v20, v21);
        }

        else
        {
          return 2585796618;
        }
      }
    }
  }

  return result;
}

uint64_t crf_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = v7;
      crf_Deinit(v5);
      heap_Free(*(v6 + 8), v5);
    }

    return 0;
  }

  return result;
}

uint64_t crf_Deinit_ReadOnly_DereferenceCnt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjcForThisApi = getObjcForThisApi(a1, a2);

  return objc_ReleaseObject(ObjcForThisApi, a3 + 84);
}

uint64_t crf_Init(_WORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  __dst[13] = *MEMORY[0x277D85DE8];
  v200 = 0;
  v199 = 0;
  *(a4 + 68) = 0;
  Chunk = ssftriff_reader_FindChunk(a3, "FAST", 2 * (*(a4 + 72) != 0), &v200, &v199);
  if (Chunk < 0)
  {
    LODWORD(v10) = Chunk;
    if ((Chunk & 0x1FFF) == 0xA)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(a4 + 68) = 1;
    v9 = ssftriff_reader_CloseChunk(a3);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }
  }

  *(a4 + 80) = 0;
  v11 = ssftriff_reader_FindChunk(a3, "QPTR", 2 * (*(a4 + 72) != 0), &v200, &v199);
  if (v11 < 0)
  {
    LODWORD(v10) = v11;
    if ((v11 & 0x1FFF) != 0xA)
    {
      goto LABEL_12;
    }

LABEL_9:
    v12 = ssftriff_reader_CloseChunk(a3);
    if (v12 >= 0)
    {
      return v10;
    }

    else
    {
      return v12;
    }
  }

  *(a4 + 80) = 1;
  v9 = ssftriff_reader_CloseChunk(a3);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

LABEL_12:
  if (!*(a4 + 68))
  {
    *__s1 = 0;
    __dst[0] = 0;
    v210 = 0;
    v201[4] = 0;
    *v201 = 0;
    *v208 = 0;
    __s = 0;
    v207 = 0;
    HIDWORD(__n) = 0;
    inited = InitRsrcFunction(a1, a2, &__s);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    wapiti_info(*(__s + 4), "CRF COMP Init...");
    inited = rdr_new(__s, 0, v208);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    inited = mdl_new(*v208, &v207);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    v93 = v207;
    *(v207 + 8) = opt_defaults;
    *(v93 + 24) = unk_26ECDBD08;
    v94 = ssftriff_reader_OpenChunk(a3, v201, __s1, __dst);
    v95 = 0;
    if ((v94 & 0x80000000) != 0)
    {
LABEL_186:
      if ((v94 & 0x1FFF) == 0x14)
      {
        v10 = 0;
      }

      else
      {
        v10 = v94;
      }

      wapiti_info(*(__s + 4), "OBS Count from model:%I32u, OBSW count:%d");
      goto LABEL_337;
    }

    v10 = 2585796618;
    while (1)
    {
      v96 = heap_Alloc(*(__s + 1), 100);
      if (!v96)
      {
        goto LABEL_337;
      }

      v97 = v96;
      if (!cstdlib_strcmp(v201, "LIST"))
      {
        break;
      }

      if (!cstdlib_strcmp(v201, "PARA"))
      {
        v98 = _crf_parse_params(__s, __dst[0], *__s1, a4);
        if ((v98 & 0x80000000) != 0)
        {
          goto LABEL_335;
        }

        goto LABEL_185;
      }

      if (!cstdlib_strcmp(v201, "RULE"))
      {
        v98 = wapiti_rules_load(__s, __dst[0], *__s1, (*(v207 + 112) + 56));
        if ((v98 & 0x80000000) != 0)
        {
          goto LABEL_335;
        }

        goto LABEL_185;
      }

      if (!cstdlib_strcmp(v201, "SPRS"))
      {
        *(v207 + 32) = 1;
        v99 = *(__s + 4);
        v100 = "sparse theta ENABLED";
        goto LABEL_132;
      }

      LODWORD(__n) = 0;
      wapiti_info(*(__s + 4), "ChunkID:%s, cChunk:%d");
      if (!cstdlib_strcmp(v201, "OBSW"))
      {
        if (*(v207 + 32))
        {
          v98 = mdl_sync_sparse(v207);
          if ((v98 & 0x80000000) != 0)
          {
            goto LABEL_335;
          }
        }

        else
        {
          v98 = mdl_sync(v207);
          if ((v98 & 0x80000000) != 0)
          {
LABEL_335:
            v10 = v98;
LABEL_337:
            v194 = v207;
            goto LABEL_350;
          }
        }
      }

      cstdlib_memset(v97, 0, 0x64uLL);
      v101 = *__s1;
      if (*__s1)
      {
        v102 = 0;
        v103 = 0;
        do
        {
          v205 = 0;
          v210 = 100;
          ssftriff_reader_ReadStringZ(a3, __dst[0], v101, v102, v97, &v210);
          if (cstdlib_strcmp(v201, "MODE"))
          {
            if (cstdlib_strcmp(v201, "RDER"))
            {
              if (cstdlib_strcmp(v201, "QRKL"))
              {
                if (cstdlib_strcmp(v201, "QRKO"))
                {
                  if (!cstdlib_strcmp(v201, "OBSW"))
                  {
                    v204 = 0;
                    if (wapiti_scanf_fmt_pair(v97, "=", &v204 + 1, &v204) != 2)
                    {
                      wapiti_fatal(*(__s + 4), "Bad format of OBSW chunk");
                    }

                    if (*(v207 + 32))
                    {
                      sparray_set(*(v207 + 88), SHIDWORD(v204), v204);
                    }

                    else
                    {
                      *(*(v207 + 80) + 4 * HIDWORD(v204)) = v204;
                    }

                    v95 = (v95 + 1);
                  }

                  goto LABEL_184;
                }

                v115 = *(v207 + 112);
                if (wapiti_scanf_fmt_1(v97, "#qrk#", &v205 + 1) != 1)
                {
                  HIDWORD(v204) = 0;
                  v116 = wapiti_ns_readline(__s, v97, &v204 + 1);
                  v117 = __s;
                  v118 = *(v115 + 48);
LABEL_172:
                  v98 = qrk_str2id(v117, v118, &v97[v116], &__n, HIDWORD(v204));
                  if ((v98 & 0x80000000) != 0)
                  {
                    goto LABEL_335;
                  }

                  goto LABEL_184;
                }

                v108 = *(__s + 4);
                v109 = "Quark O Size:%d";
              }

              else
              {
                v107 = *(v207 + 112);
                if (wapiti_scanf_fmt_1(v97, "#qrk#", &v205 + 1) != 1)
                {
                  HIDWORD(v204) = 0;
                  v116 = wapiti_ns_readline(__s, v97, &v204 + 1);
                  v117 = __s;
                  v118 = *(v107 + 40);
                  goto LABEL_172;
                }

                v108 = *(__s + 4);
                v109 = "Quark L Size:%d";
              }

              wapiti_info(v108, v109);
            }

            else
            {
              v104 = *(v207 + 112);
              if (wapiti_scanf_fmt_3(v97, "#rdr#", (v104 + 24), (v104 + 20), (v104 + 8)) == 3)
              {
                *(v104 + 12) = 0;
                *(v104 + 16) = 0;
                v105 = *(v104 + 24);
                if (v105)
                {
                  v106 = heap_Calloc(*(__s + 1), 8, v105);
                  *(v104 + 32) = v106;
                  if (!v106)
                  {
                    goto LABEL_337;
                  }
                }

                v103 = 0;
              }

              else if (*(v104 + 24))
              {
                v110 = v95;
                HIDWORD(v204) = 0;
                v111 = wapiti_ns_readline(__s, v97, &v204 + 1);
                v112 = heap_Alloc(*(__s + 1), (HIDWORD(v204) + 1));
                if (!v112)
                {
                  goto LABEL_337;
                }

                v113 = v112;
                cstdlib_strncpy(v112, &v97[v111], HIDWORD(v204));
                v113[HIDWORD(v204)] = 0;
                v98 = pat_comp(__s, v113, (*(v104 + 32) + 8 * v103));
                if ((v98 & 0x80000000) != 0)
                {
                  goto LABEL_335;
                }

                v114 = cstdlib_tolower(*v113);
                if (v114 == 42)
                {
                  *(v104 + 12) = vadd_s32(*(v104 + 12), 0x100000001);
                  v95 = v110;
                }

                else
                {
                  v95 = v110;
                  if (v114 == 98)
                  {
                    ++*(v104 + 16);
                  }

                  else if (v114 == 117)
                  {
                    ++*(v104 + 12);
                  }
                }

                ++v103;
              }

              v119 = *(v104 + 24);
              if (v103 == v119)
              {
                v120 = 0;
              }

              else
              {
                v120 = v103;
              }

              if (v119)
              {
                v103 = v120;
              }
            }
          }

          else if (wapiti_scanf_fmt_2(v97, "#mdl#", &v205, &__n + 1) == 2)
          {
            *(v207 + 40) = v205;
          }

          else
          {
            if (wapiti_scanf_fmt_1(v97, "#mdl#", &__n + 1) != 1)
            {
              wapiti_fatal(*(__s + 4), "crf riff data error, mode chunk format error");
              v10 = 2585796626;
              goto LABEL_337;
            }

            *(v207 + 40) = 0;
          }

LABEL_184:
          v102 += v210;
          cstdlib_memset(v97, 0, 0x64uLL);
          v101 = *__s1;
        }

        while (v102 < *__s1);
      }

LABEL_185:
      heap_Free(*(__s + 1), v97);
      ssftriff_reader_CloseChunk(a3);
      v94 = ssftriff_reader_OpenChunk(a3, v201, __s1, __dst);
      if ((v94 & 0x80000000) != 0)
      {
        goto LABEL_186;
      }
    }

    v99 = *(__s + 4);
    v100 = "ChunkID:%s, cChunk:%d, pChunk:%s";
LABEL_132:
    wapiti_info(v99, v100);
    goto LABEL_185;
  }

  if (!*(a4 + 80))
  {
    v210 = 0;
    *v208 = 0;
    __s = 0;
    __n = 0;
    v207 = 0;
    v203 = 0;
    *__s1 = 0;
    *v201 = 0;
    inited = InitRsrcFunction(a1, a2, v208);
    if ((inited & 0x80000000) == 0)
    {
      inited = rdr_new(*v208, 0, &v207);
      if ((inited & 0x80000000) == 0)
      {
        inited = mdl_new(v207, v201);
        if ((inited & 0x80000000) == 0)
        {
          v121 = *v201;
          *(*v201 + 8) = opt_defaults;
          *(v121 + 24) = unk_26ECDBD08;
          while (1)
          {
            v15 = ssftriff_reader_OpenChunk(a3, __s1, &v210, &__s);
            if ((v15 & 0x80000000) != 0)
            {
LABEL_332:
              if ((v15 & 0x1FFF) == 0x14)
              {
                v10 = 0;
              }

              else
              {
                v10 = v15;
              }

              goto LABEL_349;
            }

            if (!cstdlib_strcmp(__s1, "PARA"))
            {
              StringZ = _crf_parse_params(*v208, __s, v210, a4);
              if ((StringZ & 0x80000000) != 0)
              {
                goto LABEL_348;
              }

              goto LABEL_221;
            }

            if (!cstdlib_strcmp(__s1, "RULE"))
            {
              StringZ = wapiti_rules_load(*v208, __s, v210, (*(*v201 + 112) + 56));
              if ((StringZ & 0x80000000) != 0)
              {
                goto LABEL_348;
              }

              goto LABEL_221;
            }

            if (!cstdlib_strcmp(__s1, "SPRS"))
            {
              break;
            }

            if (!cstdlib_strcmp(__s1, "QPTR"))
            {
              *(*v201 + 36) = 1;
              v126 = *(*v208 + 32);
              v127 = "QP-Tree ENABLED";
              goto LABEL_220;
            }

            if (!cstdlib_strcmp(__s1, "MODE"))
            {
              if (v210)
              {
                *(*v201 + 40) = *__s;
              }

              goto LABEL_221;
            }

            if (cstdlib_strcmp(__s1, "RDER"))
            {
              if (cstdlib_strcmp(__s1, "QRKL"))
              {
                if (!cstdlib_strcmp(__s1, "KEYL") || !cstdlib_strcmp(__s1, "LEFL"))
                {
                  LODWORD(__n) = 0;
                  if (__s1[0] == 76)
                  {
                    v140 = *__s;
                    LODWORD(__n) = *__s;
                  }

                  else if (__s1[0] == 75 && (v139 = v210, v210))
                  {
                    v140 = 0;
                    v141 = __s;
                    do
                    {
                      if (!*v141++)
                      {
                        LODWORD(__n) = ++v140;
                      }

                      --v139;
                    }

                    while (v139);
                  }

                  else
                  {
                    v140 = 0;
                  }

                  v10 = 2585796618;
                  v154 = heap_Realloc(*(*v208 + 8), *(*(v207 + 40) + 8), 8 * v140);
                  if (!v154)
                  {
                    goto LABEL_349;
                  }

                  v155 = v154;
                  v156 = __n;
                  *(*(v207 + 40) + 24) = __n;
                  v157 = heap_Calloc(*(*v208 + 8), v156, 16);
                  if (!v157)
                  {
                    goto LABEL_342;
                  }

                  v158 = v157;
                  v159 = ssftriff_reader_DetachChunkData(a3, a4, &__s);
                  if ((v159 & 0x80001FFF) == 0x8000000A)
                  {
                    v10 = v159;
LABEL_342:
                    v197 = *(v207 + 40);
LABEL_343:
                    *(v197 + 8) = v155;
                    goto LABEL_349;
                  }

                  if (__s1[0] == 75)
                  {
                    v163 = __n;
                    if (__n)
                    {
                      v164 = 0;
                      v165 = __s;
                      do
                      {
                        *v158 = v164;
                        *(v158 + 8) = v165;
                        *(v155 + 8 * v164) = v158;
                        v165 += cstdlib_strlen(v165) + 1;
                        ++v164;
                        v163 = __n;
                        v158 += 16;
                      }

                      while (v164 < __n);
                    }
                  }

                  else if (__s1[0] == 76)
                  {
                    if (__n)
                    {
                      v160 = 0;
                      v161 = __s + 4;
                      v162 = &__s[__n + 4];
                      do
                      {
                        *v158 = v160;
                        *(v158 + 8) = v162;
                        *(v155 + 8 * v160) = v158;
                        v162 += v161[v160++] + 1;
                        v158 += 16;
                      }

                      while (v160 < __n);
                      v163 = __n;
                    }

                    else
                    {
                      v163 = 0;
                    }
                  }

                  else
                  {
                    v163 = __n;
                  }

                  v181 = *(v207 + 40);
                  goto LABEL_300;
                }

                if (cstdlib_strcmp(__s1, "QRKO"))
                {
                  if (!cstdlib_strcmp(__s1, "KEYO") || !cstdlib_strcmp(__s1, "LEFO"))
                  {
                    LODWORD(__n) = 0;
                    if (__s1[0] == 76)
                    {
                      v167 = *__s;
                      LODWORD(__n) = *__s;
                    }

                    else if (__s1[0] == 75 && (v166 = v210, v210))
                    {
                      v167 = 0;
                      v168 = __s;
                      do
                      {
                        if (!*v168++)
                        {
                          LODWORD(__n) = ++v167;
                        }

                        --v166;
                      }

                      while (v166);
                    }

                    else
                    {
                      v167 = 0;
                    }

                    v10 = 2585796618;
                    v182 = heap_Realloc(*(*v208 + 8), *(*(v207 + 48) + 8), 8 * v167);
                    if (!v182)
                    {
                      goto LABEL_349;
                    }

                    v155 = v182;
                    v183 = __n;
                    *(*(v207 + 48) + 24) = __n;
                    v184 = heap_Calloc(*(*v208 + 8), v183, 16);
                    if (!v184)
                    {
                      goto LABEL_355;
                    }

                    v185 = v184;
                    v186 = ssftriff_reader_DetachChunkData(a3, (a4 + 8), &__s);
                    if ((v186 & 0x80001FFF) == 0x8000000A)
                    {
                      v10 = v186;
LABEL_355:
                      v197 = *(v207 + 48);
                      goto LABEL_343;
                    }

                    if (__s1[0] == 75)
                    {
                      v163 = __n;
                      if (__n)
                      {
                        v190 = 0;
                        v191 = __s;
                        do
                        {
                          *v185 = v190;
                          *(v185 + 8) = v191;
                          *(v155 + 8 * v190) = v185;
                          v191 += cstdlib_strlen(v191) + 1;
                          ++v190;
                          v163 = __n;
                          v185 += 16;
                        }

                        while (v190 < __n);
                      }
                    }

                    else if (__s1[0] == 76)
                    {
                      if (__n)
                      {
                        v187 = 0;
                        v188 = __s + 4;
                        v189 = &__s[__n + 4];
                        do
                        {
                          *v185 = v187;
                          *(v185 + 8) = v189;
                          *(v155 + 8 * v187) = v185;
                          v189 += v188[v187++] + 1;
                          v185 += 16;
                        }

                        while (v187 < __n);
                        v163 = __n;
                      }

                      else
                      {
                        v163 = 0;
                      }
                    }

                    else
                    {
                      v163 = __n;
                    }

                    v181 = *(v207 + 48);
LABEL_300:
                    *(v181 + 8) = v155;
                    *(v181 + 20) = v163;
                    goto LABEL_221;
                  }

                  if (cstdlib_strcmp(__s1, "OBSW"))
                  {
                    if (!cstdlib_strcmp(__s1, "OBWF"))
                    {
                      *(a4 + 76) = 1;
                      StringZ = mdl_sync_sparse(*v201);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }

                      StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 16), &__s);
                      if ((StringZ & 0x80001FFF) == 0x8000000A)
                      {
                        goto LABEL_348;
                      }

                      v122 = __s;
                      v123 = *__s;
                      v124 = *(*v201 + 88);
                      *(v124 + 8) = *__s;
                      *(v124 + 12) = *(v122 + 1);
                      *(v124 + 16) = *(v122 + 2);
                      *(v124 + 20) = *(v122 + 3);
                      v125 = (v123 >> 4) + 4;
                      if (v123 < 0x10)
                      {
                        v125 = 5;
                      }

                      *(v124 + 24) = v122 + 16;
                      *(v124 + 32) = &v122[4 * v125];
                      *(v124 + 40) = &v122[4 * v125 + 4 * v123];
                    }
                  }

                  else
                  {
                    if (*(*v201 + 32))
                    {
                      StringZ = mdl_sync_sparse(*v201);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }
                    }

                    else
                    {
                      StringZ = mdl_sync(*v201);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }
                    }

                    LODWORD(__n) = v210 >> 2;
                    if (v210 >= 4)
                    {
                      v192 = 0;
                      v193 = __s;
                      do
                      {
                        if (*(*v201 + 32))
                        {
                          sparray_set(*(*v201 + 88), *&v193[4 * v192], *&v193[4 * v192 + 4]);
                        }

                        else
                        {
                          *(*(*v201 + 80) + 4 * *&v193[4 * v192]) = *&v193[4 * v192 + 4];
                        }

                        v192 += 2;
                      }

                      while (v192 < __n);
                    }
                  }
                }

                else
                {
                  LODWORD(__n) = v210 >> 4;
                  v170 = heap_Alloc(*(*v208 + 8), 24 * (v210 >> 4));
                  if (!v170)
                  {
LABEL_340:
                    v10 = 2585796618;
                    goto LABEL_349;
                  }

                  **(v207 + 48) = v170;
                  v171 = **(v207 + 48);
                  v172 = __n;
                  LODWORD(__n) = v210 >> 2;
                  if (v210 >= 4)
                  {
                    v173 = 0;
                    v174 = v171 + 24 * v172;
                    v175 = __s;
                    v176 = v174 - 8;
                    do
                    {
                      v177 = *&v175[4 * v173];
                      if ((v177 & 0x80000000) != 0)
                      {
                        v178 = v174 + 24 * v177;
                      }

                      else
                      {
                        v178 = *(*(*(v207 + 48) + 8) + 8 * v177) | 1;
                      }

                      *(v176 - 16) = v178;
                      v179 = *&v175[4 * v173 + 4];
                      if ((v179 & 0x80000000) != 0)
                      {
                        v180 = v174 + 24 * v179;
                      }

                      else
                      {
                        v180 = *(*(*(v207 + 48) + 8) + 8 * v179) | 1;
                      }

                      *(v176 - 8) = v180;
                      *v176 = *&v175[4 * v173 + 8];
                      *(v176 + 4) = *&v175[4 * v173 + 12];
                      v173 += 4;
                      v176 -= 24;
                    }

                    while (v173 < __n);
                  }
                }
              }

              else
              {
                LODWORD(__n) = v210 >> 4;
                v143 = heap_Alloc(*(*v208 + 8), 24 * (v210 >> 4));
                if (!v143)
                {
                  goto LABEL_340;
                }

                **(v207 + 40) = v143;
                v144 = **(v207 + 40);
                v145 = __n;
                LODWORD(__n) = v210 >> 2;
                if (v210 >= 4)
                {
                  v146 = 0;
                  v147 = v144 + 24 * v145;
                  v148 = __s;
                  v149 = v147 - 8;
                  do
                  {
                    v150 = *&v148[4 * v146];
                    if ((v150 & 0x80000000) != 0)
                    {
                      v151 = v147 + 24 * v150;
                    }

                    else
                    {
                      v151 = *(*(*(v207 + 40) + 8) + 8 * v150) | 1;
                    }

                    *(v149 - 16) = v151;
                    v152 = *&v148[4 * v146 + 4];
                    if ((v152 & 0x80000000) != 0)
                    {
                      v153 = v147 + 24 * v152;
                    }

                    else
                    {
                      v153 = *(*(*(v207 + 40) + 8) + 8 * v152) | 1;
                    }

                    *(v149 - 8) = v153;
                    *v149 = *&v148[4 * v146 + 8];
                    *(v149 + 4) = *&v148[4 * v146 + 12];
                    v146 += 4;
                    v149 -= 24;
                  }

                  while (v146 < __n);
                }
              }
            }

            else
            {
              v128 = v210;
              if (v210)
              {
                v10 = 2585796618;
                v129 = __s;
                v130 = *(*v201 + 112);
                v207 = v130;
                v131 = *__s;
                *(v130 + 24) = v131;
                *(v130 + 20) = *(v129 + 1);
                *(v130 + 8) = *(v129 + 2);
                *(v130 + 16) = 0;
                if (v131)
                {
                  v132 = heap_Calloc(*(*v208 + 8), v131, 8);
                  *(v207 + 32) = v132;
                  if (!v132)
                  {
                    goto LABEL_349;
                  }

                  v128 = v210;
                }

                if (v128 >= 0xD)
                {
                  v133 = 0;
                  v134 = 12;
                  do
                  {
                    HIDWORD(__n) = 100;
                    StringZ = ssftriff_reader_ReadStringZ(a3, __s, v128, v134, __dst, &__n + 1);
                    if ((StringZ & 0x80000000) != 0)
                    {
                      goto LABEL_348;
                    }

                    if (*(v207 + 24))
                    {
                      v135 = wapiti_ns_readline(*v208, __dst, &__n);
                      v136 = heap_Alloc(*(*v208 + 8), (__n + 1));
                      if (!v136)
                      {
                        goto LABEL_349;
                      }

                      v137 = v136;
                      cstdlib_strcpy(v136, "");
                      cstdlib_strncat(v137, __dst + v135, __n);
                      StringZ = pat_comp(*v208, v137, (*(v207 + 32) + 8 * v133));
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }

                      v138 = cstdlib_tolower(*v137);
                      switch(v138)
                      {
                        case '*':
                          *(v207 + 12) = vadd_s32(*(v207 + 12), 0x100000001);
                          break;
                        case 'b':
                          ++*(v207 + 16);
                          break;
                        case 'u':
                          ++*(v207 + 12);
                          break;
                      }

                      ++v133;
                    }

                    v134 += HIDWORD(__n);
                    v128 = v210;
                  }

                  while (v134 < v210);
                }
              }
            }

LABEL_221:
            StringZ = ssftriff_reader_CloseChunk(a3);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          *(*v201 + 32) = 1;
          v126 = *(*v208 + 32);
          v127 = "sparse theta ENABLED";
LABEL_220:
          wapiti_info(v126, v127);
          goto LABEL_221;
        }
      }
    }

LABEL_330:
    v10 = inited;
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_351;
    }

    return v10;
  }

  v210 = 0;
  *v208 = 0;
  __s = 0;
  __n = 0;
  v207 = 0;
  v203 = 0;
  *__s1 = 0;
  *v201 = 0;
  inited = InitRsrcFunction(a1, a2, v208);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  inited = rdr_new_qp(*v208, 0, &v207);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  inited = mdl_new_qp(v207, v201);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  v14 = *v201;
  *(*v201 + 24) = unk_26ECDBD08;
  v10 = 2585796618;
  *(v14 + 8) = opt_defaults;
  *(v14 + 36) = 1;
  while (1)
  {
    v15 = ssftriff_reader_OpenChunk(a3, __s1, &v210, &__s);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_332;
    }

    if (!cstdlib_strcmp(__s1, "PARA"))
    {
      StringZ = _crf_parse_params(*v208, __s, v210, a4);
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_348;
      }

      goto LABEL_107;
    }

    if (!cstdlib_strcmp(__s1, "RULE"))
    {
      StringZ = wapiti_rules_load(*v208, __s, v210, (*(*v201 + 112) + 56));
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_348;
      }

      goto LABEL_107;
    }

    if (!cstdlib_strcmp(__s1, "SPRS"))
    {
      *(*v201 + 32) = 1;
      wapiti_info(*(*v208 + 32), "sparse theta ENABLED");
      goto LABEL_107;
    }

    if (!cstdlib_strcmp(__s1, "MODE"))
    {
      if (v210)
      {
        *(*v201 + 40) = *__s;
      }

      goto LABEL_107;
    }

    if (!cstdlib_strcmp(__s1, "RDER"))
    {
      break;
    }

    if (cstdlib_strcmp(__s1, "QRKL"))
    {
      if (!cstdlib_strcmp(__s1, "LEFL"))
      {
        v50 = *(__s + 1);
        LODWORD(__n) = *__s;
        v51 = __n;
        v52 = *(v207 + 40);
        *(v52 + 28) = v50;
        v53 = heap_Realloc(*(*v208 + 8), *(v52 + 8), 8 * v51);
        if (!v53)
        {
          goto LABEL_349;
        }

        v54 = v53;
        v55 = __n;
        *(*(v207 + 40) + 24) = __n;
        v56 = heap_Calloc(*(*v208 + 8), v55, 16);
        if (!v56)
        {
          v195 = *(v207 + 40);
LABEL_345:
          *(v195 + 8) = v54;
          goto LABEL_349;
        }

        v57 = v56;
        StringZ = ssftriff_reader_DetachChunkData(a3, a4, &__s);
        if ((StringZ & 0x80001FFF) == 0x8000000A)
        {
          v196 = *(v207 + 40);
LABEL_347:
          *(v196 + 8) = v54;
          goto LABEL_348;
        }

        if (__n)
        {
          v58 = 0;
          v59 = __s + 8;
          v60 = &__s[__n + 8];
          do
          {
            *v57 = v58;
            *(v57 + 8) = v60;
            *(v54 + 8 * v58) = v57;
            v60 += v59[v58++] + 1;
            v61 = __n;
            v57 += 16;
          }

          while (v58 < __n);
        }

        else
        {
          v61 = 0;
        }

        v90 = *(v207 + 40);
        goto LABEL_106;
      }

      if (cstdlib_strcmp(__s1, "QRKO"))
      {
        if (!cstdlib_strcmp(__s1, "LEFO"))
        {
          v80 = *(__s + 1);
          LODWORD(__n) = *__s;
          v81 = __n;
          v82 = *(v207 + 48);
          *(v82 + 28) = v80;
          v83 = heap_Realloc(*(*v208 + 8), *(v82 + 8), 8 * v81);
          if (!v83)
          {
            goto LABEL_349;
          }

          v54 = v83;
          v84 = __n;
          *(*(v207 + 48) + 24) = __n;
          v85 = heap_Calloc(*(*v208 + 8), v84, 16);
          if (!v85)
          {
            v195 = *(v207 + 48);
            goto LABEL_345;
          }

          v86 = v85;
          StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 8), &__s);
          if ((StringZ & 0x80001FFF) == 0x8000000A)
          {
            v196 = *(v207 + 48);
            goto LABEL_347;
          }

          if (__n)
          {
            v87 = 0;
            v88 = __s + 8;
            v89 = &__s[__n + 8];
            do
            {
              *v86 = v87;
              *(v86 + 8) = v89;
              *(v54 + 8 * v87) = v86;
              v89 += v88[v87++] + 1;
              v61 = __n;
              v86 += 16;
            }

            while (v87 < __n);
          }

          else
          {
            v61 = 0;
          }

          v90 = *(v207 + 48);
LABEL_106:
          *(v90 + 8) = v54;
          *(v90 + 20) = v61;
          goto LABEL_107;
        }

        if (cstdlib_strcmp(__s1, "OBSW"))
        {
          if (!cstdlib_strcmp(__s1, "OBWF"))
          {
            *(a4 + 76) = 1;
            StringZ = mdl_sync_sparse(*v201);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }

            StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 16), &__s);
            if ((StringZ & 0x80001FFF) == 0x8000000A)
            {
              goto LABEL_348;
            }

            v17 = __s;
            v18 = *__s;
            v19 = *(*v201 + 88);
            *(v19 + 8) = *__s;
            *(v19 + 12) = *(v17 + 1);
            *(v19 + 16) = *(v17 + 2);
            *(v19 + 20) = *(v17 + 3);
            v20 = (v18 >> 4) + 4;
            if (v18 < 0x10)
            {
              v20 = 5;
            }

            *(v19 + 24) = v17 + 16;
            *(v19 + 32) = &v17[4 * v20];
            *(v19 + 40) = &v17[4 * v20 + 4 * v18];
          }
        }

        else
        {
          if (*(*v201 + 32))
          {
            StringZ = mdl_sync_sparse(*v201);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          else
          {
            StringZ = mdl_sync(*v201);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          LODWORD(__n) = v210 >> 2;
          if (v210 >= 4)
          {
            v91 = 0;
            v92 = __s;
            do
            {
              if (*(*v201 + 32))
              {
                sparray_set(*(*v201 + 88), *&v92[4 * v91], *&v92[4 * v91 + 4]);
              }

              else
              {
                *(*(*v201 + 80) + 4 * *&v92[4 * v91]) = *&v92[4 * v91 + 4];
              }

              v91 += 2;
            }

            while (v91 < __n);
          }
        }
      }

      else
      {
        v62 = *(*(v207 + 48) + 28);
        v63 = heap_Calloc(*(*v208 + 8), v62, 16);
        if (!v63)
        {
          goto LABEL_349;
        }

        **(v207 + 48) = v63;
        v64 = **(v207 + 48);
        v65 = (v210 >> 2) - 2 * v62;
        v66 = heap_Calloc(*(*v208 + 8), v65, 8);
        if (!v66)
        {
          goto LABEL_349;
        }

        ***(v207 + 48) = v66;
        v67 = ***(v207 + 48);
        LODWORD(__n) = v210 >> 2;
        if (v210 >= 4)
        {
          v68 = 0;
          v69 = (v64 + 16 * v62);
          v70 = __s;
          v71 = v67 + 8 * v65;
          v72 = v69;
          do
          {
            v73 = *&v70[4 * v68];
            *(v72 - 2) = v73;
            *(v72 - 1) = *&v70[4 * (v68 + 1)];
            v74 = popcount(v73);
            v71 -= 8 * v74;
            *(v72 - 2) = v71;
            v72 -= 2;
            v75 = v68 + 2;
            if (v74)
            {
              v76 = 0;
              v77 = v68 + 2;
              do
              {
                v78 = *&v70[4 * v77];
                if ((v78 & 0x80000000) != 0)
                {
                  v79 = &v69[2 * v78];
                }

                else
                {
                  v79 = *(*(*(v207 + 48) + 8) + 8 * v78) | 1;
                }

                *(*v72 + v76) = v79;
                v76 += 8;
                ++v77;
              }

              while (8 * v74 != v76);
            }

            v68 = v74 + v75;
          }

          while (v74 + v75 < __n);
        }
      }
    }

    else
    {
      v32 = *(*(v207 + 40) + 28);
      v33 = heap_Calloc(*(*v208 + 8), v32, 16);
      if (!v33)
      {
        goto LABEL_349;
      }

      **(v207 + 40) = v33;
      v34 = **(v207 + 40);
      v35 = (v210 >> 2) - 2 * v32;
      v36 = heap_Calloc(*(*v208 + 8), v35, 8);
      if (!v36)
      {
        goto LABEL_349;
      }

      ***(v207 + 40) = v36;
      v37 = ***(v207 + 40);
      LODWORD(__n) = v210 >> 2;
      if (v210 >= 4)
      {
        v38 = 0;
        v39 = (v34 + 16 * v32);
        v40 = __s;
        v41 = v37 + 8 * v35;
        v42 = v39;
        do
        {
          v43 = *&v40[4 * v38];
          *(v42 - 2) = v43;
          *(v42 - 1) = *&v40[4 * (v38 + 1)];
          v44 = popcount(v43);
          v41 -= 8 * v44;
          *(v42 - 2) = v41;
          v42 -= 2;
          v45 = v38 + 2;
          if (v44)
          {
            v46 = 0;
            v47 = v38 + 2;
            do
            {
              v48 = *&v40[4 * v47];
              if ((v48 & 0x80000000) != 0)
              {
                v49 = &v39[2 * v48];
              }

              else
              {
                v49 = *(*(*(v207 + 40) + 8) + 8 * v48) | 1;
              }

              *(*v42 + v46) = v49;
              v46 += 8;
              ++v47;
            }

            while (8 * v44 != v46);
          }

          v38 = v44 + v45;
        }

        while (v44 + v45 < __n);
      }
    }

LABEL_107:
    StringZ = ssftriff_reader_CloseChunk(a3);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_348;
    }
  }

  v21 = v210;
  if (!v210)
  {
    goto LABEL_107;
  }

  v22 = __s;
  v23 = *(*v201 + 112);
  v207 = v23;
  v24 = *__s;
  *(v23 + 24) = v24;
  *(v23 + 20) = *(v22 + 1);
  *(v23 + 8) = *(v22 + 2);
  *(v23 + 16) = 0;
  if (v24)
  {
    v25 = heap_Calloc(*(*v208 + 8), v24, 8);
    *(v207 + 32) = v25;
    if (!v25)
    {
      goto LABEL_349;
    }

    v21 = v210;
  }

  if (v21 < 0xD)
  {
    goto LABEL_107;
  }

  v26 = 0;
  v27 = 12;
  while (1)
  {
    HIDWORD(__n) = 100;
    StringZ = ssftriff_reader_ReadStringZ(a3, __s, v21, v27, __dst, &__n + 1);
    if ((StringZ & 0x80000000) != 0)
    {
      break;
    }

    if (*(v207 + 24))
    {
      v28 = wapiti_ns_readline(*v208, __dst, &__n);
      v29 = heap_Alloc(*(*v208 + 8), (__n + 1));
      if (!v29)
      {
        goto LABEL_349;
      }

      v30 = v29;
      cstdlib_strcpy(v29, "");
      cstdlib_strncat(v30, __dst + v28, __n);
      StringZ = pat_comp(*v208, v30, (*(v207 + 32) + 8 * v26));
      if ((StringZ & 0x80000000) != 0)
      {
        break;
      }

      v31 = cstdlib_tolower(*v30);
      switch(v31)
      {
        case '*':
          *(v207 + 12) = vadd_s32(*(v207 + 12), 0x100000001);
          break;
        case 'b':
          ++*(v207 + 16);
          break;
        case 'u':
          ++*(v207 + 12);
          break;
      }

      ++v26;
    }

    v27 += HIDWORD(__n);
    v21 = v210;
    if (v27 >= v210)
    {
      goto LABEL_107;
    }
  }

LABEL_348:
  v10 = StringZ;
LABEL_349:
  v194 = *v201;
LABEL_350:
  *(a4 + 24) = v194;
  if ((v10 & 0x80000000) != 0)
  {
LABEL_351:
    crf_Deinit(a4);
    v9 = ssftriff_reader_CloseChunk(a3);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }
  }

  return v10;
}

uint64_t crf_Deinit(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *v2;
      if (*(a1 + 68))
      {
        ssftriff_reader_ReleaseChunkData(*a1);
        ssftriff_reader_ReleaseChunkData(*(a1 + 8));
      }

      if (*(a1 + 76))
      {
        ssftriff_reader_ReleaseChunkData(*(a1 + 16));
      }

      if (*(a1 + 80))
      {
        mdl_free_qp(v2, *(a1 + 76));
      }

      else
      {
        mdl_free(v2, *(a1 + 68), *(a1 + 76));
      }

      *(a1 + 24) = 0;
      v4 = *(a1 + 32);
      if (v4)
      {
        heap_Free(*(v3 + 8), v4);
        *(a1 + 32) = 0;
      }

      v5 = *(a1 + 48);
      if (v5)
      {
        heap_Free(*(v3 + 8), v5);
        *(a1 + 48) = 0;
      }

      v6 = *(a1 + 56);
      if (v6)
      {
        heap_Free(*(v3 + 8), v6);
        *(a1 + 56) = 0;
      }
    }
  }

  return 0;
}

uint64_t crf_Process_Constrained(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 24);
  if (*(v7 + 32))
  {
    return tag_label_sparse(v7, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return tag_label(v7, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t _crf_parse_params(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4)
{
  v8 = 2585796618;
  v9 = (a4 + 48);
  v10 = a3;
  v11 = heap_Realloc(*(a1 + 8), *(a4 + 48), a3);
  if (v11)
  {
    v12 = v11;
    cstdlib_memcpy(v11, a2, v10);
    v12[a3 - 1] = 0;
    *(a4 + 48) = v12;
    v13 = &v12[v10];
    *(a4 + 40) = 0;
    if (a3)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (!*v15)
        {
          *(a4 + 40) = ++v14;
        }

        ++v15;
      }

      while (v15 < v13);
      v16 = (v14 + 1) >> 1;
    }

    else
    {
      v16 = 0;
    }

    *(a4 + 40) = v16;
    v17 = heap_Realloc(*(a1 + 8), *(a4 + 32), 16 * v16);
    if (!v17)
    {
      *(a4 + 40) = 0;
      heap_Free(*(a1 + 8), *(a4 + 48));
LABEL_22:
      *v9 = 0;
      return v8;
    }

    v8 = 0;
    *(a4 + 32) = v17;
    if (*(a4 + 40) && a3)
    {
      v18 = 0;
      v19 = 1;
      while (1)
      {
        *(*(a4 + 32) + v18) = v12;
        v20 = cstdlib_strlen(v12);
        v21 = &v12[v20 + 1];
        v22 = *(a4 + 32);
        if (v21 >= v13)
        {
          break;
        }

        *(v22 + v18 + 8) = v21;
        v12 = (v21 + cstdlib_strlen(&v12[v20 + 1]) + 1);
        v18 += 16;
        v23 = v19++ >= *(a4 + 40);
        v23 = v23 || v12 >= v13;
        if (v23)
        {
          return 0;
        }
      }

      v8 = 0;
      v9 = (v22 + v18 + 8);
      goto LABEL_22;
    }
  }

  return v8;
}

char *hlp_NLUStrAddI(char *a1, char *a2)
{
  if (cstdlib_strcmp(a1, ""))
  {
    cstdlib_strcat(a1, ";");
  }

  v4 = cstdlib_strlen(a1);
  v5 = hlp_NLUStrLength(a2);
  result = cstdlib_strncat(&a1[v4], a2, v5);
  a1[v4] = 73;
  return result;
}

char *hlp_NLUStrLength(char *a1)
{
  result = cstdlib_strstr(a1, ";");
  if (result)
  {
    LOWORD(result) = result - a1;
  }

  else
  {
    LOWORD(result) = cstdlib_strlen(a1);
  }

  return result;
}

char *hlp_NLUStrSearchI(char *a1, uint64_t a2)
{
  v4 = hlp_NLUStrLength(a2);
  if (!a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = v4 - 1;
  while (v5 != hlp_NLUStrLength(a1) || cstdlib_strncmp((a2 + 1), a1 + 1, v6))
  {
    result = cstdlib_strstr(a1, ";");
    a1 = result + 1;
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

char *hlp_NLUStrNext(char *a1)
{
  v1 = cstdlib_strstr(a1, ";");
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

char *hlp_NLUStrRemoveI(const char *a1, uint64_t a2)
{
  result = hlp_NLUStrLength(a2);
  if (a1)
  {
    v5 = result;
    v6 = result - 1;
    v7 = a1;
    while (v5 != hlp_NLUStrLength(v7) || cstdlib_strncmp((a2 + 1), v7 + 1, v6))
    {
      result = cstdlib_strstr(v7, ";");
      v7 = result + 1;
      if (!result)
      {
        return result;
      }
    }

    hlp_NLUStrStrip(v7);

    return hlp_NLUStrJoin(a1, "");
  }

  return result;
}

char *hlp_NLUStrStrip(char *a1)
{
  v1 = a1;
  v2 = cstdlib_strstr(a1, ";");
  if (v2)
  {
    v3 = v2;
    v4 = cstdlib_strlen(v2 + 1);
    cstdlib_memmove(v1, v3 + 1, v4 + 1);
  }

  else
  {
    cstdlib_strcpy(v1, "");
    return 0;
  }

  return v1;
}

char *hlp_NLUStrJoin(const char *a1, const char *a2)
{
  v4 = &a1[cstdlib_strlen(a1)];
  if (cstdlib_strcmp(a1, ""))
  {
    v5 = cstdlib_strcmp(a2, "");
    v6 = cstdlib_strcmp(v4 - 1, ";");
    if (v5)
    {
      if (v6)
      {
        cstdlib_strcpy(v4++, ";");
      }
    }

    else if (!v6)
    {
      --v4;
    }
  }

  cstdlib_strcpy(v4, a2);
  return v4;
}

char *hlp_NLUStrKeyLen(char *a1)
{
  v2 = cstdlib_strstr(a1, ";");
  result = cstdlib_strstr(a1, ":");
  if (!result)
  {
    if (!v2)
    {
      LOWORD(result) = cstdlib_strlen(a1);
      return result;
    }

    goto LABEL_6;
  }

  if (v2 && v2 < result)
  {
LABEL_6:
    LOWORD(result) = v2 - a1;
    return result;
  }

  LOWORD(result) = result - a1;
  return result;
}

unsigned __int8 *hlp_NLUStrKeyValue(char *a1)
{
  v1 = &a1[hlp_NLUStrKeyLen(a1)];
  v3 = *v1;
  v2 = (v1 + 1);
  if (v3 == 58)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

char *hlp_NLUStrValueLen(char *a1)
{
  if (a1)
  {
    return hlp_NLUStrKeyLen(a1);
  }

  return a1;
}

char *hlp_NLUStrFind(char *a1, char *__s, char **a3, unsigned __int16 *a4)
{
  v8 = cstdlib_strlen(__s);
  if (a1)
  {
    v9 = v8;
    while (hlp_NLUStrKeyLen(a1) != v9 || cstdlib_strncmp(__s, a1, v9))
    {
      v10 = cstdlib_strstr(a1, ";");
      a1 = v10 + 1;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v11 = &a1[hlp_NLUStrKeyLen(a1)];
    v13 = *v11;
    v12 = v11 + 1;
    v14 = v13 == 58;
    if (v13 == 58)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
    if (v14)
    {
      v16 = hlp_NLUStrKeyLen(v12);
    }

    else
    {
      v16 = 0;
    }

    *a4 = v16;
  }

  else
  {
LABEL_6:
    a1 = 0;
    *a4 = 0;
    *a3 = 0;
  }

  return a1;
}

uint64_t hlp_NLUStrExist(char *a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  if (!a1)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    if (hlp_NLUStrKeyLen(a1) == v5)
    {
      result = cstdlib_strncmp(__s, a1, v5);
      if (!result)
      {
        break;
      }
    }

    v7 = cstdlib_strstr(a1, ";");
    a1 = v7 + 1;
    if (!v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t hlp_NLUStrRemoveKeyVal(char *a1, const char *a2)
{
  if (a1)
  {
    v3 = a1;
    while (1)
    {
      v4 = hlp_NLUStrKeyLen(v3);
      if (cstdlib_strlen(a2) != v4 || cstdlib_strncmp(a2, v3, v4))
      {
        goto LABEL_8;
      }

      v5 = cstdlib_strstr(v3, ";");
      if (v5)
      {
        v6 = v5;
        v7 = cstdlib_strlen(v5 + 1);
        cstdlib_memmove(v3, v6 + 1, v7);
        v3[v7] = 0;
      }

      else
      {
        *v3 = 0;
LABEL_8:
        v8 = cstdlib_strstr(v3, ";");
        v3 = v8 + 1;
        if (!v8)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t hlp_NLUStrRemoveRangeKey(unsigned __int8 *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    v5 = a1;
    while (1)
    {
        ;
      }

      v6 = *v5 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      if (v7 || v8 == 0)
      {
        goto LABEL_20;
      }

      if (v5[1] != 95)
      {
        goto LABEL_20;
      }

      v10 = cstdlib_strlen(a2);
      if (cstdlib_strncmp(v5 + 2, a2, v10))
      {
        goto LABEL_20;
      }

      v11 = &v5[hlp_NLUStrKeyLen(v5)];
      v13 = *v11;
      v12 = (v11 + 1);
      if (v13 == 58)
      {
        v14 = hlp_NLUStrLength(v12);
        if (!a3)
        {
          goto LABEL_20;
        }

        v15 = v14;
        if (cstdlib_strlen(a3) != v14 || cstdlib_strncmp(a3, v12, v15))
        {
          goto LABEL_20;
        }
      }

      else if (a3 && cstdlib_strcmp(a3, ""))
      {
        goto LABEL_20;
      }

      v16 = cstdlib_strstr(v5, ";");
      if (v16)
      {
        v17 = v16;
        v18 = cstdlib_strlen(v16 + 1);
        cstdlib_memmove(v5, v17 + 1, v18);
        v5[v18] = 0;
      }

      else
      {
        *v5 = 0;
LABEL_20:
        v19 = cstdlib_strstr(v5, ";");
        v5 = (v19 + 1);
        if (!v19)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t hlp_NLUStrAppendKeyVal(char *a1, const char *a2, const char *a3)
{
  v6 = cstdlib_strlen(a1);
  if (v6 && a1[v6 - 1] != 59)
  {
    cstdlib_strcat(a1, ";");
  }

  cstdlib_strcat(a1, a2);
  if (a3 && cstdlib_strlen(a3))
  {
    cstdlib_strcat(a1, ":");
    cstdlib_strcat(a1, a3);
  }

  return 0;
}

char *hlp_NLUStrSet(char *a1, char *a2, char *__s)
{
  v20 = 0;
  v19 = 0;
  v6 = cstdlib_strlen(__s);
  v7 = hlp_NLUStrFind(a1, a2, &v20, &v19);
  if (v7)
  {
    v8 = v7;
    v9 = v19;
    if (v19 != v6)
    {
      v14 = v20;
      if (v19 || v20)
      {
        v17 = cstdlib_strlen(&v20[v19]);
        cstdlib_memmove(&v14[v6], &v14[v9], v17 + 1);
      }

      else
      {
        v15 = &v7[hlp_NLUStrKeyLen(v7)];
        v14 = v15 + 1;
        v16 = cstdlib_strlen(v15);
        cstdlib_memmove(&v15[v6 + 1], v15, v16 + 1);
        *v15 = 58;
      }

      v12 = v6;
      v10 = v14;
      v11 = __s;
      goto LABEL_13;
    }

    if (v19)
    {
      v10 = v20;
      v11 = __s;
      v12 = v19;
LABEL_13:
      cstdlib_strncpy(v10, v11, v12);
    }
  }

  else
  {
    v13 = hlp_NLUStrJoin(a1, a2);
    v8 = v13;
    if (__s && v6)
    {
      cstdlib_strcat(v13, ":");
      cstdlib_strcat(v8, __s);
    }
  }

  return v8;
}

char *hlp_NLUStrAppend(char *a1, char *a2, char *a3, const char *a4)
{
  v16 = 0;
  v15 = 0;
  v8 = hlp_NLUStrFind(a1, a2, &v16, &v15);
  if (v8 && v15)
  {
    v9 = v8;
    v10 = &v16[v15];
    v11 = cstdlib_strlen(a4);
    v12 = cstdlib_strlen(a3);
    v13 = cstdlib_strlen(v10);
    cstdlib_memmove(&v10[v11 + v12], v10, v13 + 1);
    cstdlib_strncpy(v10, a4, v11);
    cstdlib_strncpy(&v10[v11], a3, v12);
    return v9;
  }

  else
  {

    return hlp_NLUStrSet(a1, a2, a3);
  }
}

char *hlp_NLUStrOverride(char *a1, char *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = &v5[hlp_NLUStrKeyLen(v5)];
      v7 = *v6;
      v8 = hlp_NLUStrKeyLen(v5);
      v9 = v8;
      if (v7 == 58)
      {
        v10 = hlp_NLUStrKeyLen(v6 + 1);
        cstdlib_strncpy(__dst, v5, v9);
        __dst[v9] = 0;
        cstdlib_strncpy(v13, v6 + 1, v10);
      }

      else
      {
        cstdlib_strncpy(__dst, v5, v8);
        v10 = 0;
        __dst[v9] = 0;
      }

      v13[v10] = 0;
      if (__dst[1] == 95)
      {
        hlp_NLUStrJoin(a1, __dst);
        if (v7 == 58)
        {
          cstdlib_strcat(a1, ":");
          cstdlib_strcat(a1, v13);
        }
      }

      else if (!a3 || !cstdlib_strcmp(__dst, "BND"))
      {
        hlp_NLUStrSet(a1, __dst, v13);
      }

      v11 = cstdlib_strstr(v5, ";");
      v5 = v11 + 1;
    }

    while (v11);
  }

  return a1;
}

uint64_t hlp_dynstr_add(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v8 = 2601525248;
  v9 = cstdlib_strlen(*a2);
  v10 = cstdlib_strlen(a3);
  v11 = *(a2 + 8);
  if (v9 + v10 + 2 >= v11)
  {
    v12 = heap_Realloc(*(a1 + 8), *a2, v10 + v11 + *(a2 + 10));
    if (!v12)
    {
      log_OutPublic(*(a1 + 32), "GLOBALBEADAPT", 66000, 0, v13, v14, v15, v16, v18);
      return 2601525258;
    }

    *a2 = v12;
    *(a2 + 8) += v10 + *(a2 + 10);
  }

  if (a4 == 1)
  {
    cstdlib_strcat(*a2, a3);
    return 0;
  }

  if (a4 == 2)
  {
    cstdlib_strcpy(*a2, a3);
    return 0;
  }

  return v8;
}

void *hlp_dynstr_free(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    result = heap_Free(result[1], v3);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t hlp_dynstr_init(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = a3;
  v8 = heap_Calloc(*(a1 + 8), 1, a3);
  *a2 = v8;
  if (v8)
  {
    *(a2 + 8) = v5;
    *(a2 + 10) = a4;
    cstdlib_strcpy(v8, "");
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "GLOBALBEADAPT", 66000, 0, v9, v10, v11, v12, v14);
    return 2601525258;
  }
}

uint64_t globalbeadapt_OutputMorphemesToLingDBAsWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, unsigned __int8 *a6, const char *a7, _DWORD *a8)
{
  v85 = 0;
  v86[0] = 0;
  v84 = 0;
  v83 = 0;
  v81 = 0;
  v82 = 0;
  __sa = 0;
  v16 = cstdlib_strlen(__s);
  v79 = 0;
  __b = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v74[0] = 0;
  v74[1] = 0;
  *a8 = 0;
  cstdlib_memset(&__b, 0, 0x10uLL);
  cstdlib_memset(&v75, 0, 0x10uLL);
  cstdlib_memset(v74, 0, 0x10uLL);
  v20 = a6 - 1;
  do
  {
    v22 = *++v20;
    v21 = v22;
  }

  while (v22 == 32);
  v23 = 0;
  while (v21 == 32)
  {
    --v20;
    do
    {
      v24 = *++v20;
      v21 = v24;
    }

    while (v24 == 32);
    ++v23;
    a6 = v20;
LABEL_10:
    if (v21)
    {
      ++v20;
    }

    v21 = *v20;
  }

  if (v21)
  {
    goto LABEL_10;
  }

  v25 = v20 != a6;
  v26 = a7;
  v27 = a7;
  while (1)
  {
    v28 = *v26;
    if (v28 <= 0x22)
    {
      break;
    }

    if (v28 != 35)
    {
      if (v28 != 47)
      {
        goto LABEL_27;
      }

      if (v26[1] == 84)
      {
        v28 = 47;
        goto LABEL_27;
      }
    }

LABEL_19:
    LOWORD(v21) = v21 + 1;
    while (1)
    {
      if (v28 != 32 && v28 != 35)
      {
        if (v28 != 47)
        {
          goto LABEL_26;
        }

        if (v26[1] == 84)
        {
          break;
        }
      }

      v29 = *++v26;
      v28 = v29;
    }

    v28 = 47;
LABEL_26:
    v27 = v26;
LABEL_27:
    if (v28)
    {
      ++v26;
    }
  }

  if (v28 == 32)
  {
    goto LABEL_19;
  }

  if (*v26)
  {
    goto LABEL_27;
  }

  v30 = v23 + v25;
  if (v26 != v27)
  {
    LOWORD(v21) = v21 + 1;
  }

  if (v30 == v21)
  {
    v31 = (*(a1[1] + 104))(a2, a3, 2, a4, v86 + 2);
    if ((v31 & 0x80000000) != 0 || (v31 = hlp_dynstr_init(*a1, &__b, 0x20u, 16), (v31 & 0x80000000) != 0) || (v31 = hlp_dynstr_init(*a1, &v75, 0x20u, 16), (v31 & 0x80000000) != 0) || (v31 = hlp_dynstr_init(*a1, v74, 0x20u, 16), (v31 & 0x80000000) != 0))
    {
LABEL_143:
      v68 = v31;
    }

    else
    {
      v79 = 0;
      v32 = HIWORD(v86[0]);
      if (HIWORD(v86[0]))
      {
        v72 = v16;
        v73 = a3;
        while (1)
        {
          v31 = (*(a1[1] + 168))(a2, a3, v32, 0, 1, &v83, v86);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          if ((v83 - 9) >= 6 && v83 != 4)
          {
            v50 = 1;
            goto LABEL_135;
          }

          v31 = (*(a1[1] + 168))(a2, a3, HIWORD(v86[0]), 1, 1, &v85, v86);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          v31 = (*(a1[1] + 168))(a2, a3, HIWORD(v86[0]), 2, 1, &v84, v86);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          if (!v85 || __s[v85 - 1] == 32)
          {
            goto LABEL_60;
          }

          if (v85 == 1 || __s[v85 - 1] != 95)
          {
            v35 = v83;
            if (v83 == 11)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v34 = cstdlib_strchr(":;,", __s[v85 - 2]);
            v35 = v83;
            if (v34)
            {
              v36 = 1;
            }

            else
            {
              v36 = v83 == 11;
            }

            if (v36)
            {
              goto LABEL_60;
            }
          }

          if ((v35 - 12) > 2)
          {
            v71 = 0;
            goto LABEL_61;
          }

LABEL_60:
          HIWORD(v79) = v85;
          v71 = 1;
LABEL_61:
          if (v72 <= v84)
          {
            goto LABEL_72;
          }

          v37 = &__s[v84];
          v38 = *v37;
          if (v38 == 32)
          {
            goto LABEL_72;
          }

          if (v38 == 95)
          {
            v39 = cstdlib_strchr(":;,", *(v37 - 1));
            v40 = v83;
            if (v39)
            {
              v41 = 1;
            }

            else
            {
              v41 = v83 == 11;
            }

            if (v41)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v40 = v83;
            if (v83 == 11)
            {
              goto LABEL_72;
            }
          }

          if ((v40 - 12) > 2)
          {
            v42 = 0;
            goto LABEL_73;
          }

LABEL_72:
          LOWORD(v79) = v84;
          v42 = 1;
LABEL_73:
          v31 = (*(a1[1] + 176))(a2, v73, HIWORD(v86[0]), 3, &v82, v86);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          v31 = (*(a1[1] + 176))(a2, v73, HIWORD(v86[0]), 5, &v81, v86);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          v31 = hlp_dynstr_add(*a1, &__b, v81, 1);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          v31 = (*(a1[1] + 176))(a2, v73, HIWORD(v86[0]), 14, &__sa, v86);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          if (LOWORD(v86[0]))
          {
            hlp_NLUStrRemoveKeyVal(__sa, "POS");
            if (!hlp_NLUStrExist(__sa, "PHR"))
            {
              hlp_NLUStrRemoveKeyVal(__sa, "PHR");
            }

            v31 = hlp_dynstr_add(*a1, &v75, __sa, 1);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_143;
            }

            v43 = __sa;
            if (*__sa)
            {
              if (v43[cstdlib_strlen(__sa) - 1] != 59)
              {
                v31 = hlp_dynstr_add(*a1, &v75, ";", 1);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }
              }
            }
          }

          if (cstdlib_strcmp(v82, ""))
          {
            if (cstdlib_strstr(v82, "-*"))
            {
              v44 = cstdlib_strchr(&__s[v85], 45);
              if (v44)
              {
                if (v44 < &__s[v84])
                {
                  do
                  {
                    *v44 = 95;
                    v44 = cstdlib_strchr(v44 + 1, 45);
                    if (v44)
                    {
                      v45 = v44 >= &__s[v84];
                    }

                    else
                    {
                      v45 = 1;
                    }
                  }

                  while (!v45);
                }
              }
            }

            if (v42)
            {
              i = a7;
              if ((v83 - 15) >= 0xFFFFFFFC)
              {
                while (1)
                {
                  v47 = *i;
                  v49 = v47 > 0x23 || ((1 << v47) & 0x900800001) == 0;
                  if (!v49 || v47 == 95)
                  {
                    break;
                  }

                  ++i;
                }
              }

              else
              {
                for (i = a7; ; ++i)
                {
                  v47 = *i;
                  if (v47 <= 0x23 && ((1 << v47) & 0x900000001) != 0)
                  {
                    break;
                  }
                }
              }

              if (v47)
              {
                *i++ = 0;
              }

              if (*a7 == 45)
              {
                ++a7;
              }

              cstdlib_strlen(a7);
              v70 = a7;
              log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "write joined word %d,%d POS=%s PHON=%s", v51, v52, v53, HIWORD(v79));
              if ((v71 & 1) == 0)
              {
                v31 = (*(a1[1] + 160))(a2, v73, HIWORD(v86[0]), 0, 1, &v83, &v85 + 2);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }

                v31 = (*(a1[1] + 160))(a2, v73, HIWORD(v86[0]), 1, 1, &v79 + 2, &v85 + 2);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }

                v31 = (*(a1[1] + 160))(a2, v73, HIWORD(v86[0]), 2, 1, &v79, &v85 + 2);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }

                v54 = *(a1[1] + 160);
                v55 = HIWORD(v86[0]);
                v56 = cstdlib_strlen(__b);
                v31 = v54(a2, v73, v55, 5, (v56 + 1), __b, &v85 + 2);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_143;
                }
              }

              v31 = hlp_dynstr_add(*a1, v74, v75, 1);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v31 = hlp_dynstr_add(*a1, v74, "POS:", 1);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v31 = hlp_dynstr_add(*a1, v74, __b, 1);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v57 = *(a1[1] + 160);
              v58 = HIWORD(v86[0]);
              v59 = cstdlib_strlen(v74[0]);
              v31 = v57(a2, v73, v58, 14, (v59 + 1), v74[0], &v85 + 2);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v60 = *(a1[1] + 160);
              v61 = HIWORD(v86[0]);
              v62 = cstdlib_strlen(v70);
              v31 = v60(a2, v73, v61, 3, (v62 + 1), v70, &v85 + 2);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              while (1)
              {
                v63 = *i;
                v64 = v63 > 0x2F;
                v65 = (1 << v63) & 0x800900000000;
                if (v64 || v65 == 0)
                {
                  break;
                }

                ++i;
              }

              v31 = hlp_dynstr_add(*a1, &__b, "", 2);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v31 = hlp_dynstr_add(*a1, &v75, "", 2);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v31 = hlp_dynstr_add(*a1, v74, "", 2);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }

              v50 = 1;
              a7 = i;
            }

            else
            {
              v50 = 0;
            }
          }

          else
          {
            v50 = 1;
          }

          a3 = v73;
LABEL_135:
          v67 = HIWORD(v86[0]);
          v68 = (*(a1[1] + 120))(a2, a3, HIWORD(v86[0]), v86 + 2);
          if ((v68 & 0x80000000) == 0)
          {
            if ((v50 & 1) != 0 || (v68 = (*(a1[1] + 192))(a2, a3, v67), (v68 & 0x80000000) == 0))
            {
              v32 = HIWORD(v86[0]);
              if (HIWORD(v86[0]))
              {
                continue;
              }
            }
          }

          goto LABEL_144;
        }
      }

      v68 = 0;
    }

LABEL_144:
    if (__b)
    {
      heap_Free(*(*a1 + 8), __b);
      __b = 0;
    }

    LODWORD(v78) = 0;
    if (v75)
    {
      heap_Free(*(*a1 + 8), v75);
      v75 = 0;
    }

    LODWORD(v76) = 0;
    if (v74[0])
    {
      heap_Free(*(*a1 + 8), v74[0]);
    }
  }

  else
  {
    *a8 = 1;
    log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "Could not align morphemes into words, word count in L2=%d, not equal to word count in O1=%d", v17, v18, v19, v30);
    return 0;
  }

  return v68;
}

uint64_t globalbeadapt_SetFEBOOLKeyword(void *a1, uint64_t a2, _DWORD *a3, int a4)
{
  memset(__c, 0, sizeof(__c));
  *a3 = a4;
  if (((*(a1[7] + 96))(a1[5], a1[6], "fecfg", a2, &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v6 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "1"))
    {
      *a3 = 1;
    }

    if (!cstdlib_strcmp(**&__c[3], "0"))
    {
      *a3 = 0;
    }
  }

  return 0;
}

uint64_t globalbeadapt_OutputToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  __s1 = 0;
  result = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v30 + 2);
  if ((result & 0x80000000) == 0)
  {
    v12 = HIWORD(v30);
    if (HIWORD(v30))
    {
      while (1)
      {
        result = (*(*(a1 + 8) + 168))(a2, a3, v12, 0, 1, &v27, &v30);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if ((v27 - 9) >= 6 && v27 != 4)
        {
          goto LABEL_26;
        }

        result = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v30), 3, &__s1, &v30);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (cstdlib_strcmp(__s1, ""))
        {
          if (cstdlib_strstr(__s1, "-*"))
          {
            result = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v30), 1, 1, &v29, &v30);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v30), 2, 1, &v28, &v30);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v14 = cstdlib_strchr((a5 + v29), 45);
            if (v14 && v14 < a5 + v28)
            {
              do
              {
                *v14 = 95;
                v14 = cstdlib_strchr(v14 + 1, 45);
                if (v14)
                {
                  v15 = v14 >= a5 + v28;
                }

                else
                {
                  v15 = 1;
                }
              }

              while (!v15);
            }
          }

          for (i = a6; ; ++i)
          {
            v17 = *i;
            if (!*i)
            {
              break;
            }

            if (v17 == 32 || v17 == 35)
            {
              *i++ = 0;
              break;
            }
          }

          if (*(a1 + 88))
          {
            v18 = cstdlib_strcmp(a6, "_") != 0;
          }

          else
          {
            v18 = 1;
          }

          if (*a6 == 45)
          {
            ++a6;
          }

          v19 = cstdlib_strlen(a6);
          if (a6[(v19 + 1) - 1] == 45)
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 + 1;
          }

          result = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v30), 3, v20, a6, &v29 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          while (1)
          {
            v21 = *i;
            v22 = v21 > 0x2F;
            v23 = (1 << v21) & 0x800900000000;
            if (v22 || v23 == 0)
            {
              break;
            }

            ++i;
          }

          a6 = i;
        }

        else
        {
LABEL_26:
          v18 = 1;
        }

        v25 = HIWORD(v30);
        result = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v30), &v30 + 2);
        if ((result & 0x80000000) == 0)
        {
          if (v18 || (result = (*(*(a1 + 8) + 192))(a2, a3, v25), (result & 0x80000000) == 0))
          {
            v12 = HIWORD(v30);
            if (HIWORD(v30))
            {
              continue;
            }
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t globalbeadapt_SetupDepesInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v240 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  v216 = 0;
  v212 = 0;
  v210 = 0;
  v208 = 0;
  v209 = 0;
  v206 = 0;
  v12 = *(a1 + 106);
  if (*(a1 + 106))
  {
    bzero(v238, v12);
    memset(__b, 32, v12);
    memset(v236, 126, v12);
    memset_pattern16(v235, &unk_26ECDB6D0, 4 * v12);
  }

  v238[*(a1 + 224)] = 126;
  v238[*(a1 + 226)] = 126;
  if (*(a1 + 256) == 1)
  {
    v238[*(a1 + 228)] = 126;
  }

  v238[*(a1 + 238)] = 126;
  if (*(a1 + 248))
  {
    v13 = *(a1 + 240);
    v238[v13] = 126;
    v235[v13] = 0;
  }

  v227 = 0;
  v225 = 0;
  v226 = 0;
  v224 = 0;
  v222 = 0;
  v223 = 0;
  v221 = 0;
  v217 = 0;
  __dst = 0;
  v215 = 0;
  v211 = 0;
  v207 = 0;
  v205 = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v212);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  com_depes_StartWritingToLayers(a1 + 96, v15, v16, v17, v18, v19, v20, v21);
  Str = (*(*(a1 + 8) + 176))(a2, a3, a4, 0, &v227, &v226);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v226 + 2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v197 = 0;
  v198 = 0;
  v22 = 0;
  v23 = 0;
  v195 = 0;
  v196 = a1 + 208;
  v199 = 0xFFFF;
  v200 = 1;
  v203 = 126;
  while (1)
  {
    v201 = v22;
    if (!HIWORD(v226))
    {
      v163 = *(v196 + 2 * *(a1 + 224));
      if (*(a1 + 248))
      {
        v164 = v200 == 0;
      }

      else
      {
        v164 = 0;
      }

      if (v164)
      {
        if (v216)
        {
          hlp_AddTnTag(a1, WORD2(v195), v216, v236);
        }

        else if (v22)
        {
          v187 = 0;
          do
          {
            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }
          }

          while (++v187 < v22);
        }
      }

      if (!v197 || (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "◄"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v165, v166, v167, v168, v169), (BacktransPOS & 0x80000000) == 0))
      {
        if (!v198 || (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v170, v171, v172, v173, v174), (BacktransPOS & 0x80000000) == 0))
        {
          if (!*(a1 + 248) || v216 || (v175 = *(v196 + 2 * *(a1 + 224)) - v163) == 0)
          {
LABEL_268:
            v32 = hlp_ConvertOrthographyLayer(a1);
            if ((v32 & 0x80000000) == 0 && *(a1 + 106))
            {
              v180 = 14;
              do
              {
                if (*(a1 + 8 * v180))
                {
                  v181 = a5;
                  log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "%s L%d: %s", v177, v178, v179, a5);
                  v182 = *(a1 + 32);
                  v183 = *(a1 + 8 * v180);
                  v184 = v180 - 14 >= *(a1 + 104) ? *(v182 + 136) : *(v182 + 120);
                  v185 = cstdlib_strlen(*(a1 + 8 * v180));
                  v32 = v184(*(a1 + 16), *(a1 + 24), (v180 - 14), v183, v185);
                  a5 = v181;
                  if ((v32 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v186 = v180 - 13;
                ++v180;
              }

              while (v186 < *(a1 + 106));
            }

            goto LABEL_286;
          }

          v176 = 0;
          while (1)
          {
            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              break;
            }

            if (++v176 >= v175)
            {
              goto LABEL_268;
            }
          }
        }
      }

LABEL_285:
      v32 = BacktransPOS;
      goto LABEL_286;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_285;
    }

    v25 = v224;
    if (v224 == 15)
    {
      BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v226), 7, 1, &v207, &v226);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      v199 = v207;
      v25 = v224;
    }

    v26 = (v25 - 9) < 6 || v25 == 4;
    if (v26)
    {
      BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v226), 1, 1, &v225 + 2, &v226);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v226), 2, 1, &v225, &v226);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      HIDWORD(v198) = v225;
      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v226), 5, &v223, &v226);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      if (*(a1 + 88))
      {
        BacktransPOS = com_mosynt_GetBacktransPOS(*(a1 + 40), *(a1 + 48), *(a1 + 56), v223, __s);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        v223 = __s;
        v27 = *(*(a1 + 8) + 160);
        v28 = HIWORD(v226);
        v29 = cstdlib_strlen(__s);
        BacktransPOS = v27(a2, a3, v28, 5, v29, v223, &v205);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }
      }

      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v226), 6, &v222, &v226);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v226), 10, &v208) & 0x80000000) != 0 || v208 != 1)
      {
        v217 = "";
      }

      else
      {
        BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v226), 10, &v217, &v226);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }
      }

      strcpy(v220, "~");
      if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v226), 9, &v208) & 0x80000000) == 0 && v208 == 1)
      {
        BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v226), 9, &v221, &v226);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        if ((!*v221 || (v220[0] = *v221) == 0 || !LH_stricmp(v221, v212) || !LH_stricmp(v221, "normal")) && ((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v226), 12, &v208) & 0x80000000) == 0 && v208 == 1)
        {
          BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v226), 12, &v211, &v226);
          if ((BacktransPOS & 0x80000000) != 0)
          {
            goto LABEL_285;
          }

          v30 = *(a1 + 296);
          if (v30)
          {
            ReadOnly = ssftmap_FindReadOnly(v30, v211, &v210);
            if ((ReadOnly & 0x80000000) != 0)
            {
              v32 = ReadOnly;
              if ((ReadOnly & 0x1FFF) != 0x14)
              {
                goto LABEL_286;
              }
            }

            else
            {
              v220[0] = *v210;
            }
          }
        }
      }

      v214 = 0;
      if (*(a1 + 88) || *(a1 + 264))
      {
        BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v226), 13, &v215, &v226);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        v33 = *v215;
        if (!*v215)
        {
          v33 = 48;
        }

        LOBYTE(v214) = v33;
      }

      v34 = HIWORD(v226);
      v234 = 0;
      v232 = 0;
      v233 = 0;
      v231 = 0;
      strcpy(__src, "docclass_");
      v230 = 0;
      v228 = 0;
      strcpy(v213, "~");
      if (((*(*(a1 + 8) + 184))(a2, a3, v34, 14, &v234 + 2) & 0x80000000) == 0 && HIWORD(v234) == 1)
      {
        BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, v34, 14, &v233, &v234);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        if (hlp_NLUStrFind(v233, "S_CLASS", &v232, &v231) || hlp_NLUStrFind(v233, "I_CLASS", &v232, &v231) || hlp_NLUStrFind(v233, "E_CLASS", &v232, &v231))
        {
          if (*(a1 + 252))
          {
            v35 = *(*a1 + 8);
            v36 = cstdlib_strlen(v232);
            v37 = heap_Alloc(v35, (v36 + 10));
            if (!v37)
            {
              v32 = 2601525258;
              log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v38, v39, v40, v41, v188);
              goto LABEL_286;
            }

            v42 = v37;
            cstdlib_strcpy(v37, __src);
            cstdlib_strncat(v42, v232, v231);
            v229 = 0;
            v43 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", v42, &v230, &v229, &v228);
            if ((v43 & 0x80000000) != 0)
            {
              v32 = v43;
              heap_Free(*(*a1 + 8), v42);
              goto LABEL_286;
            }

            if (v229 == 1 && v230)
            {
              v213[0] = **v230;
            }

            heap_Free(*(*a1 + 8), v42);
          }

          else
          {
            v213[0] = *v232;
          }
        }
      }

      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v226), 3, &__s1, &v226);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_285;
      }

      v44 = __s1;
      if (!a6)
      {
        goto LABEL_123;
      }

      if (4 * cstdlib_strlen(__s1) - 125 > 0xFFFFFFFFFFFFFF7ELL)
      {
        v45 = 128;
      }

      else
      {
        v45 = 4 * cstdlib_strlen(__s1) + 4;
      }

      v46 = heap_Realloc(*(*a1 + 8), v23, v45);
      if (!v46)
      {
        v32 = 2601525258;
        log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v47, v48, v49, v50, v188);
        return v32;
      }

      v44 = v46;
      if (cstdlib_strstr(__s1, "\\TQ\"))
      {
        *(a1 + 268) = 1;
      }

      if (v224 == 11)
      {
        v192 = v45;
      }

      else
      {
        if (v224 != 13)
        {
LABEL_110:
          v68 = __s1;
          v69 = cstdlib_strlen(__s1);
          if (v69)
          {
            v70 = 0;
            v71 = 0;
            v72 = (v68 + 1);
            do
            {
              v73 = *(v72 - 1);
              if (v71)
              {
                v71 = v73 != 92;
              }

              else if (v73 != 92 || (v74 = *v72, v71 = 1, v74 != 47) && v74 != 84)
              {
                v71 = 0;
                v75 = v70++;
                v44[v75] = v73;
              }

              ++v72;
              --v69;
            }

            while (v69);
            v69 = v70;
          }

          v44[v69] = 0;
          cstdlib_strcpy(__s1, v44);
          v76 = __s1;
          v77 = cstdlib_strlen(__s1);
          v78 = utf8_DepesToUtf8(v76, v77 + 1, 0, v44, v45, &v206, 0);
          if ((v78 & 0x80000000) != 0 || (v79 = *(*(a1 + 8) + 160), v80 = HIWORD(v226), v81 = cstdlib_strlen(v44), v78 = v79(a2, a3, v80, 3, (v81 + 1), v44, &v226), (v78 & 0x80000000) != 0))
          {
            v32 = v78;
            goto LABEL_287;
          }

          __s1 = v44;
          v23 = v44;
LABEL_123:
          if (cstdlib_strcmp(v44, ""))
          {
            if (*(a1 + 248) && !v200)
            {
              if (v216 && HIWORD(v225) != v209)
              {
                if (HIWORD(v225) > HIWORD(v209))
                {
                  hlp_AddTnTag(a1, WORD2(v195), v216, v236);
                  v216 = 0;
                }
              }

              else if (v201)
              {
                v82 = 0;
                do
                {
                  BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 240), " ");
                  if ((BacktransPOS & 0x80000000) != 0)
                  {
                    goto LABEL_285;
                  }
                }

                while (++v82 < v201);
              }
            }

            v83 = *(a1 + 224);
            v84 = *(v196 + 2 * v83);
            v85 = v224;
            if (v224 != 10 && v197 != 0)
            {
              BacktransPOS = com_depes_AddToLayer((a1 + 96), v83, "◄");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v87, v88, v89, v90, v91);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              v197 = 0;
              v85 = v224;
            }

            if (v85 != 11 && v198)
            {
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v92, v93, v94, v95, v96);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              LODWORD(v198) = 0;
            }

            if (!v200 && (v199 & 0x80000000) == 0)
            {
              v97 = v199 > 1 ? " /" : " #";
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), v97);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v98, v99, v100, v101, v102);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            LOWORD(v208) = 0;
            if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v226), 8, &v208) & 0x80000000) == 0 && v208 == 1)
            {
              BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v226), 8, 1, &v208 + 2, &v226);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            if (!v200)
            {
              v106 = HIWORD(v225);
              if (*(v227 + HIWORD(v225) - 1))
              {
                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v227, HIWORD(v225));
                BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 226), (v227 + HIWORD(v225) - (v106 - PreviousUtf8Offset)), (v106 - PreviousUtf8Offset));
                if ((BacktransPOS & 0x80000000) != 0)
                {
                  goto LABEL_285;
                }
              }

              else
              {
                log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "unexpected empty orthography when filling depes layer (frompos: %d, topos: %d", v103, v104, v105, HIWORD(v225));
                BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 224), " ", 1, 0);
                if ((BacktransPOS & 0x80000000) != 0)
                {
                  goto LABEL_285;
                }
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v108, v109, v110, v111, v112);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            v113 = v224;
            if (v224 == 10 && !v197)
            {
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "◄");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v114, v115, v116, v117, v118);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              v197 = 1;
              v113 = v224;
            }

            if (v113 == 13)
            {
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕");
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v119, v120, v121, v122, v123);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              LODWORD(v198) = 1;
            }

            LODWORD(v195) = *(v196 + 2 * *(a1 + 224));
            v124 = cstdlib_strstr(__s1, "▲");
            __dst = v124;
            if (v124)
            {
              *v124 = 0;
            }

            BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), __s1);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 226), (v227 + HIWORD(v225)), v225 - HIWORD(v225));
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            v125 = *(a1 + 228);
            v126 = (a1 + 96);
            if (*(a1 + 256) == 1)
            {
              BacktransPOS = com_depes_AddToLayer(v126, v125, v223);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            else
            {
              BacktransPOS = com_depes_AddToLayerN(v126, v125, v223, 1);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 230), v222, 1);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 232), v220, 1, v220[0] != 126);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 234), &v214, 1);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 236), v213, 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 238), v217);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, v238, v127, v128, v129, v130, v131);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_285;
            }

            if (__dst)
            {
              cstdlib_strncpy(__dst, "▲", 3uLL);
              BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), __dst);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }

              BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v235, v238, v132, v133, v134, v135, v136);
              if ((BacktransPOS & 0x80000000) != 0)
              {
                goto LABEL_285;
              }
            }

            v22 = *(v196 + 2 * *(a1 + 224)) - v195;
            if (*(a1 + 248))
            {
              v137 = v195 - v84;
              v138 = v216;
              if (v216 && HIWORD(v225) != v209)
              {
                v200 = 0;
                v141 = v137 + HIDWORD(v195) + v22;
              }

              else
              {
                if (v195 != v84)
                {
                  v139 = *(v196 + 2 * *(a1 + 224)) - v195;
                  v140 = 0;
                  while (1)
                  {
                    BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
                    if ((BacktransPOS & 0x80000000) != 0)
                    {
                      goto LABEL_285;
                    }

                    if (++v140 >= v137)
                    {
                      v138 = v216;
                      v22 = v139;
                      break;
                    }
                  }
                }

                v200 = 0;
                v26 = v138 == 0;
                v141 = HIDWORD(v195);
                if (!v26)
                {
                  v141 = v22;
                }
              }

              HIDWORD(v195) = v141;
              v199 = 0xFFFF;
              goto LABEL_207;
            }

            v199 = 0xFFFF;
            v200 = 0;
          }

          else
          {
            v22 = v201;
          }

          goto LABEL_207;
        }

        v192 = v45;
        v203 = 126;
      }

      v193 = a3;
      v194 = a6;
      v51 = __s1;
      v52 = cstdlib_strlen(__s1);
      if (v52)
      {
        v53 = 0;
        v54 = 0;
        v55 = v51 + 1;
        v56 = 1;
        v57 = v203;
        while (1)
        {
          v58 = v51[v53];
          if (v54)
          {
            v54 = v58 != 92;
          }

          else
          {
            if (v58 == 92)
            {
              v59 = &v55[v53];
              v60 = v55[v53];
              if (v60 == 47)
              {
                v57 = 126;
                v64 = v203;
                if (v56 == 1)
                {
                  v64 = 126;
                }

                v203 = v64;
LABEL_105:
                v54 = 1;
                goto LABEL_106;
              }

              if (v60 == 84)
              {
                for (i = 1; ; i = v62 + 1)
                {
                  v62 = i;
                  v63 = v59[i];
                  if (!v63)
                  {
                    break;
                  }

                  if (v63 == 92)
                  {
                    v59[v62] = 0;
                    if (*(a1 + 284))
                    {
                      v189 = v57;
                      v190 = v55;
                      v191 = a5;
                      v65 = 0;
                      while (1)
                      {
                        v66 = *(*(a1 + 288) + 8 * v65);
                        if (v66)
                        {
                          if (cstdlib_strlen(v66) >= 4 && cstdlib_strstr((*(*(a1 + 288) + 8 * v65) + 3), v59))
                          {
                            break;
                          }
                        }

                        if (++v65 >= *(a1 + 284))
                        {
                          v55 = v190;
                          a5 = v191;
                          v57 = v189;
                          goto LABEL_104;
                        }
                      }

                      v57 = **(*(a1 + 288) + 8 * v65);
                      v67 = v203;
                      if (v56 == 1)
                      {
                        v67 = **(*(a1 + 288) + 8 * v65);
                      }

                      v203 = v67;
                      v55 = v190;
                      a5 = v191;
                    }

LABEL_104:
                    v59[v62] = 92;
                    goto LABEL_105;
                  }
                }

                goto LABEL_105;
              }
            }

            v54 = 0;
            v56 = 0;
          }

LABEL_106:
          if (++v53 == v52)
          {
            goto LABEL_109;
          }
        }
      }

      v57 = v203;
LABEL_109:
      v220[0] = v203;
      v203 = v57;
      a6 = v194;
      a3 = v193;
      v45 = v192;
      goto LABEL_110;
    }

LABEL_207:
    v142 = v224;
    if (v224 == 7 && !v198)
    {
      break;
    }

LABEL_222:
    if (v142 != 6)
    {
      goto LABEL_292;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v226), 1, 1, &v209, &v226);
    if ((BacktransPOS & 0x80000000) == 0)
    {
      if (*(a1 + 248) && v216 && v209 > HIWORD(v209))
      {
        hlp_AddTnTag(a1, WORD2(v195), v216, v236);
        v22 = 0;
        v216 = 0;
      }

      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v226), 4, &v216, &v226);
      if ((BacktransPOS & 0x80000000) == 0)
      {
        BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v226), 2, 1, &v209 + 2, &v226);
        HIDWORD(v195) = v22;
        if ((BacktransPOS & 0x80000000) == 0)
        {
LABEL_292:
          BacktransPOS = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v226), &v226 + 2);
          if ((BacktransPOS & 0x80000000) == 0)
          {
            continue;
          }
        }
      }
    }

    goto LABEL_285;
  }

  BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v226), 1, 1, &v225 + 2, &v226);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    goto LABEL_285;
  }

  BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v226), 4, &__dst, &v226);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    goto LABEL_285;
  }

  v202 = v23;
  v143 = v22;
  if (!__s1 || (v144 = cstdlib_strchr(__s1, 42), HIDWORD(v198) - 1 <= HIWORD(v225)) || (v145 = v144) == 0 || cstdlib_strchr(v144 + 1, 42))
  {
    v146 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "▲");
    if ((v146 & 0x80000000) != 0)
    {
      goto LABEL_244;
    }

    v146 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), __dst);
    if ((v146 & 0x80000000) != 0)
    {
      goto LABEL_244;
    }

    v146 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "▼");
    if ((v146 & 0x80000000) != 0)
    {
      goto LABEL_244;
    }

    v146 = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v147, v148, v149, v150, v151);
    if ((v146 & 0x80000000) != 0)
    {
      goto LABEL_244;
    }

LABEL_219:
    if (v216)
    {
      HIDWORD(v195) += cstdlib_strlen(__dst);
    }

    v22 = v143 + cstdlib_strlen(__dst);
    v142 = v224;
    v23 = v202;
    goto LABEL_222;
  }

  if (__s1)
  {
    v152 = (__s1 - v145 - v195 + *(v196 + 2 * *(a1 + 224)));
  }

  else
  {
    v152 = 0;
  }

  v153 = Utf8_LengthInUtf8chars(v145, v152);
  v146 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), "▲", v152);
  if ((v146 & 0x80000000) == 0)
  {
    v146 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), __dst, v152);
    if ((v146 & 0x80000000) == 0)
    {
      v146 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), "▼", v152);
      if ((v146 & 0x80000000) == 0)
      {
        v154 = a3;
        cstdlib_strlen(__dst);
        v155 = 0;
        do
        {
          v156 = *(a1 + 228);
          if (v156 < *(a1 + 238))
          {
            do
            {
              v146 = com_depes_InsertBeforeEnd((a1 + 96), v156, " ", v153);
              if ((v146 & 0x80000000) != 0)
              {
                goto LABEL_244;
              }

              LOWORD(v156) = v156 + 1;
            }

            while (*(a1 + 238) > v156);
          }

          ++v155;
        }

        while (cstdlib_strlen(__dst) + 2 > v155);
        v146 = com_depes_FillToMaxLayerSet(a1 + 96, v235, __b, v157, v158, v159, v160, v161);
        a3 = v154;
        if ((v146 & 0x80000000) == 0)
        {
          goto LABEL_219;
        }
      }
    }
  }

LABEL_244:
  v32 = v146;
  v23 = v202;
LABEL_286:
  v44 = v23;
  if (v23)
  {
LABEL_287:
    heap_Free(*(*a1 + 8), v44);
  }

  return v32;
}

uint64_t hlp_AddTnTag(uint64_t a1, unsigned int a2, char *__s, uint64_t a4)
{
  v8 = 2 * cstdlib_strlen(__s) - 2;
  result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "X");
  if (v8 >= a2)
  {
    if ((result & 0x80000000) == 0)
    {
      v15 = *(a1 + 240);
      v16 = cstdlib_strlen(__s);
      result = com_depes_AddToLayerN((a1 + 96), v15, __s + 1, v16 - 2);
      if ((result & 0x80000000) == 0)
      {
        result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "Y");
        if ((result & 0x80000000) == 0)
        {
          v17 = *(a1 + 240);
          v18 = cstdlib_strlen(__s);
          result = com_depes_AddToLayerN((a1 + 96), v17, __s + 1, v18 - 2);
          if ((result & 0x80000000) == 0)
          {

            return com_depes_FillToMaxAllLayers(a1 + 96, a4, v19, v20, v21, v22, v23, v24);
          }
        }
      }
    }
  }

  else if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 240);
    v11 = cstdlib_strlen(__s);
    result = com_depes_AddToLayerN((a1 + 96), v10, __s + 1, v11 - 2);
    if ((result & 0x80000000) == 0)
    {
      v12 = 2 * cstdlib_strlen(__s) - 2;
      if ((v12 & 0xFFFEu) >= a2)
      {
LABEL_7:
        result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "Y");
        if ((result & 0x80000000) == 0)
        {
          v13 = *(a1 + 240);
          v14 = cstdlib_strlen(__s) - 2;

          return com_depes_AddToLayerN((a1 + 96), v13, __s + 1, v14);
        }
      }

      else
      {
        while (1)
        {
          result = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), "~", 1, 0);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (a2 <= ++v12)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_ConvertOrthographyLayer(uint64_t a1)
{
  v2 = a1 + 176;
  v3 = *(a1 + 176 + 2 * *(a1 + 226));
  if (v3 >= 0x3FFF)
  {
    v4 = -1;
  }

  else
  {
    v4 = 4 * v3;
  }

  v5 = heap_Alloc(*(*a1 + 8), v4);
  if (v5)
  {
    v10 = v5;
    v11 = a1 + 112;
    cstdlib_strcpy(v5, *(a1 + 112 + 8 * *(a1 + 226)));
    v12 = (*(*(a1 + 56) + 104))(*(a1 + 40), *(a1 + 48), "normal", v10, v3);
    v13 = *(*a1 + 8);
    if ((v12 & 0x80000000) != 0)
    {
      heap_Free(v13, v10);
    }

    else
    {
      heap_Free(v13, *(v11 + 8 * *(a1 + 226)));
      v14 = *(a1 + 226);
      *(v11 + 8 * v14) = v10;
      *(v2 + 2 * v14) = v4;
      *(a1 + 2 * *(a1 + 226) + 192) = cstdlib_strlen(v10);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v6, v7, v8, v9, v16);
    return 2601525258;
  }

  return v12;
}

uint64_t globalbeadapt_DoPostprocessing(void *a1, const char *a2, char **a3, int a4)
{
  __s2 = 0;
  v113 = 0;
  v112 = 0;
  __s = 0;
  v8 = (*(a1[4] + 128))(a1[2], a1[3], 0, &__s2, &v113);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_100;
  }

  __s2[v113] = 0;
  v9 = v113;
  if (*a2 == 63 && !v113)
  {
    goto LABEL_100;
  }

  if (a4)
  {
    v8 = utf8_Utf8ToDepes(__s2, v113, 0, __s2, v113, &v112, 0);
    v9 = v112;
    v113 = v112;
  }

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = v10;
      v12 = __s2[v10];
      if (v12 == 126)
      {
        if (v10 < v9)
        {
          do
          {
            __s2[v11] = __s2[v11 + 1];
            ++v11;
            v9 = v113;
          }

          while (v11 < v113);
        }

        v113 = --v9;
        --v10;
      }

      else if (v12 == 30)
      {
        if (v10 >= v9)
        {
          v14 = 1;
        }

        else
        {
          v13 = v9 - v10 + 1;
          v14 = 1;
          while (__s2[v11] != 31)
          {
            ++v11;
            ++v14;
            if (v9 == v11)
            {
              v10 = v9;
              v14 = v13;
              goto LABEL_20;
            }
          }

          v10 = v11;
        }

LABEL_20:
        if ((v10 - v14 + 1) < v9)
        {
          v15 = (v10 - v14 + 1);
          do
          {
            __s2[v15] = __s2[v15 + v14];
            ++v15;
            v9 = v113;
          }

          while (v15 < v113);
        }

        v9 -= v14;
        v113 = v9;
        v10 -= v14;
      }

      ++v10;
    }

    while (v10 < v9);
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  __s2[v16] = 0;
  if (*(a1 + 65))
  {
    v17 = v113;
    if (v113)
    {
      v18 = 0;
      do
      {
        if (__s2[v18] == 173)
        {
          __s2[v18] = 126;
          v17 = v113;
        }

        ++v18;
      }

      while (v18 < v17);
    }
  }

  v19 = 0;
  if (!a4 || *(a1 + 70) != 1)
  {
    goto LABEL_101;
  }

  if ((v20 = __s2, a2[cstdlib_strlen(a2) - 1] != 63) && !cstdlib_strstr(a1[*(a1 + 112) + 14], "*?") && !*(a1 + 67) || cstdlib_strstr(v20, "\\TQ\"))
  {
LABEL_100:
    v19 = 0;
    goto LABEL_101;
  }

  if (*(a1 + 68) == 1)
  {
    if (*(a1 + 69) == 1)
    {
      v21 = 23;
    }

    else
    {
      v21 = 0;
    }

    v103 = v21;
  }

  else
  {
    v103 = 0;
  }

  v22 = __s2;
  v23 = v113;
  v24 = heap_Calloc(*(*a1 + 8), 10, 16);
  if (!v24)
  {
LABEL_99:
    v8 = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v25, v26, v27, v28, v101);
    goto LABEL_100;
  }

  v29 = v24;
  cstdlib_memset(&__b, 0, 5uLL);
  if (v23)
  {
    v30 = v23 - 1;
  }

  else
  {
    v30 = 0;
  }

  if (v23 >= 2)
  {
    while (v22[v30] == 32)
    {
      if (!--v30)
      {
        goto LABEL_88;
      }
    }
  }

  if (!v30)
  {
LABEL_88:
    v8 = 0;
    v19 = 0;
    goto LABEL_190;
  }

  v108 = 0;
  v31 = 0;
  v110 = 0;
  v104 = v22 - 1;
  v105 = v22;
  v101 = a3;
  v102 = v22 + 3;
  v32 = v30;
  v33 = &v22[v30 - 5];
  v106 = 10;
  do
  {
    if (v32 < 5 || cstdlib_strncmp(&v104[v32], "A\", 2uLL))
    {
LABEL_54:
      if (v32 < (v110 + 3) || cstdlib_strncmp(&v22[(v32 - (v110 + 3))], "\\T", 2uLL) || cstdlib_strncmp(&v22[(v32 - (v110 + 1))], &__b, v110) || cstdlib_strncmp(&v104[v32], "A\", 2uLL))
      {
        v34 = v22[v32];
        if (v34 == 32)
        {
          goto LABEL_62;
        }

        if (v34 == 45)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          ++v108;
          goto LABEL_63;
        }

        if (v103 == v34)
        {
LABEL_62:
          v35 = 0;
          v37 = 0;
          ++v108;
          v36 = 1;
        }

        else
        {
          if (v34 != 35 && (v34 != 47 || v22[(v32 - 1)] == 92))
          {
            v37 = 0;
            goto LABEL_70;
          }

          v35 = 0;
          v37 = 1;
          v36 = 2;
        }
      }

      else
      {
        v37 = 0;
        v36 = 3;
        v35 = 1;
      }
    }

    else
    {
      v44 = 0;
      while (1)
      {
        if (v32 + v44 == 5)
        {
          goto LABEL_54;
        }

        if (!cstdlib_strncmp((v33 + v44), "\\/T", 3uLL))
        {
          break;
        }

        if (--v44 == -4)
        {
          goto LABEL_54;
        }
      }

      cstdlib_memset(&__b, 0, 5uLL);
      v45 = 1 - v44;
      cstdlib_strncat(&__b, &v102[(v32 + v44 - 5)], (1 - v44));
      v35 = 0;
      v37 = 0;
      v36 = 4;
      v110 = v45;
    }

LABEL_63:
    if (v31 >= v106)
    {
      v39 = heap_Realloc(*(*a1 + 8), v29, 32 * (v106 & 0x7FFF));
      if (v39)
      {
        v38 = v31;
        v106 *= 2;
        v29 = v39;
        goto LABEL_67;
      }

      heap_Free(*(*a1 + 8), v29);
      a3 = v101;
      goto LABEL_99;
    }

    v38 = v31;
LABEL_67:
    v40 = v29;
    v41 = v38;
    v42 = v29 + 16 * v38;
    *v42 = v36;
    cstdlib_memset((v42 + 4), 0, 5uLL);
    cstdlib_strncat((v42 + 4), &__b, v110);
    *(v42 + 10) = v110;
    *(v42 + 12) = v32;
    v43 = v41 + 1;
    if (v35)
    {
      cstdlib_memset(&__b, 0, 5uLL);
      v110 = 0;
    }

    v29 = v40;
    v31 = v43;
    v22 = v105;
LABEL_70:
    if (!--v32)
    {
      break;
    }

    if (v108 > 2)
    {
      break;
    }

    --v33;
  }

  while (!v37);
  if (v30 <= v32 || v31)
  {
    a3 = v101;
    if (v31)
    {
      goto LABEL_93;
    }

    goto LABEL_88;
  }

  LOWORD(v31) = 1;
  *v29 = 1;
  cstdlib_memset((v29 + 4), 0, 5uLL);
  *(v29 + 10) = 0;
  *(v29 + 12) = v32;
LABEL_93:
  v46 = v31;
  v47 = v31 - 1;
  if (!v32 && v108 <= 2 && !v37)
  {
    v50 = v29 + 16 * v47;
    v51 = 0;
    if (*v50 != 3)
    {
      *(v50 + 12) = 0;
    }

    goto LABEL_134;
  }

  if (v47)
  {
    while (1)
    {
      v48 = *(v29 + 16 * v47) == 2;
      if (*(v29 + 16 * v47) != 2)
      {
        break;
      }

      if (!--v47)
      {
        v47 = 0;
        break;
      }
    }
  }

  else
  {
    v47 = 0;
    v48 = 1;
  }

  v52 = v29 + 16 * v47;
  if (!*v52)
  {
    goto LABEL_115;
  }

  if (*v52 != 1)
  {
    v51 = *(v52 + 12);
    goto LABEL_134;
  }

  if (v48)
  {
    v47 = 0;
    goto LABEL_115;
  }

  v54 = v29 + 16 * (v47 - 1);
  v55 = *v54;
  if (*v54 == 4)
  {
    v56 = *(v54 + 12) - *(v52 + 12);
    if (v56 == cstdlib_strlen((v54 + 4)) + 5)
    {
      v51 = *(v29 + 16 * (v47 - 1) + 12) - *(v29 + 16 * (v47 - 1) + 10) - 4;
LABEL_125:
      --v47;
      goto LABEL_134;
    }

    v55 = *v54;
    goto LABEL_127;
  }

  if (v55 != 3)
  {
LABEL_127:
    if (v55 == 1)
    {
      if (v47)
      {
        while (1)
        {
          v57 = v29 + 16 * (v47 - 1);
          if (*v57 != 1 || *(v57 + 12) - *(v29 + 16 * v47 + 12) != 1)
          {
            break;
          }

          if (!--v47)
          {
            goto LABEL_132;
          }
        }
      }

      else
      {
LABEL_132:
        v47 = 0;
      }

      v58 = v29 + 16 * v47;
      v51 = *(v58 + 12) + 1;
      *(v58 + 12) = v51;
      goto LABEL_134;
    }

LABEL_115:
    LOWORD(v53) = *(v52 + 12);
    goto LABEL_116;
  }

  v53 = *(v52 + 12);
  if (*(v54 + 12) - v53 == *(v54 + 10) + 4)
  {
    v51 = *(v29 + 16 * (v47 - 1) + 12) - *(v29 + 16 * (v47 - 1) + 10) - 3;
    goto LABEL_125;
  }

LABEL_116:
  v51 = v53 + 1;
  *(v52 + 12) = v53 + 1;
LABEL_134:
  v59 = __s2;
  v60 = v113;
  v115 = v113;
  if (v113)
  {
    __s = heap_Calloc(*(*a1 + 8), v113, 1);
    if (!__s)
    {
      v109 = v29;
      v8 = 2601525258;
LABEL_187:
      v19 = 0;
      a3 = v101;
      v29 = v109;
      goto LABEL_190;
    }

    v61 = ~v47 | 0xFFFF0000;
    v62 = v61 + v46;
    if ((v61 + v46) >= 0 && v46 > (v61 + v46))
    {
      v63 = 0;
      v109 = v29;
      v107 = 16 * (v61 + v46);
      v64 = v29 - 16 * v62 + 16 * v46;
      while (1)
      {
        v116 = 0uLL;
        v65 = (v64 + v63);
        __b = *(v64 + v63 - 16);
        if (!v63)
        {
          break;
        }

        if (__b == 4)
        {
          inserted = hlp_insert_question_Tag(a1, &__s, &v115, 3, &__b + 4);
          if ((inserted & 0x80000000) != 0)
          {
            goto LABEL_192;
          }

          if (v62 + 1 >= v46)
          {
            if ((v60 - 1) > WORD6(__b))
            {
              cstdlib_memset(v118, 0, 5uLL);
              v67 = v118;
              goto LABEL_160;
            }
          }

          else
          {
            v116 = *(v64 + v63 - 32);
            if (v116 <= 1 && !BYTE4(v116))
            {
              p_b = &v116;
              goto LABEL_157;
            }
          }
        }

        else if (__b == 3)
        {
          if (v107 != v63)
          {
            v116 = *v65;
            if (v116 <= 1 && !BYTE4(v116))
            {
              inserted = hlp_insert_question_Tag(a1, &__s, &v115, 1, &v116 + 4);
              if ((inserted & 0x80000000) != 0)
              {
LABEL_192:
                v8 = inserted;
                goto LABEL_187;
              }
            }
          }

LABEL_150:
          v67 = &__b + 4;
          v68 = a1;
          v69 = 2;
          goto LABEL_163;
        }

LABEL_164:
        v71 = *(v65 - 4);
        v72 = v64 + v63;
        v73 = *(v64 + v63 - 4);
        if (v62 >= v46 - 1)
        {
          if (v71 == 4)
          {
            ++v73;
          }

          v81 = v73;
          v83 = a1;
          v84 = v59;
          v82 = v60;
        }

        else
        {
          v74 = *(v72 - 32);
          v75 = *(v72 - 22);
          v76 = *(v72 - 20);
          if ((v71 - 3) < 2)
          {
            ++v73;
          }

          v77 = v76 - v75;
          v78 = v76 - v75 - 5;
          v79 = v77 - 4;
          if (v74 != 3)
          {
            v79 = v76;
          }

          if (v74 == 4)
          {
            v79 = v78;
          }

          v80 = v76 - 1;
          if (v74 <= 1)
          {
            v79 = v80;
          }

          v81 = v73;
          v82 = v79;
          v83 = a1;
          v84 = v59;
        }

        v85 = hlp_insert_phonemes(v83, &__s, &v115, v84, v81, v82);
        v8 = v85;
        if ((v85 & 0x80000000) == 0)
        {
          ++v62;
          v63 -= 16;
          if (v46 != v62)
          {
            continue;
          }
        }

        v29 = v109;
        if ((v85 & 0x80000000) == 0)
        {
          goto LABEL_180;
        }

        v19 = 0;
LABEL_189:
        a3 = v101;
        goto LABEL_190;
      }

      if (BYTE4(__b))
      {
        if (__b == 4)
        {
          v67 = &__b + 4;
          v68 = a1;
          v69 = 5;
        }

        else
        {
          if (__b == 3)
          {
            goto LABEL_150;
          }

          v67 = &__b + 4;
          v68 = a1;
          v69 = 4;
        }
      }

      else
      {
        p_b = &__b;
LABEL_157:
        v67 = p_b + 4;
LABEL_160:
        v68 = a1;
        v69 = 0;
      }

LABEL_163:
      v8 = hlp_insert_question_Tag(v68, &__s, &v115, v69, v67);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_187;
      }

      goto LABEL_164;
    }
  }

LABEL_180:
  v86 = __s;
  v87 = cstdlib_strlen(__s);
  v88 = heap_Calloc(*(*a1 + 8), v87 + v51 + 1, 1);
  v19 = v88;
  if (!v88)
  {
    v8 = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v89, v90, v91, v92, v101);
    goto LABEL_189;
  }

  cstdlib_strncat(v88, __s2, v51);
  cstdlib_strncat(v19, v86, v87);
  v99 = com_depes_PrepareLayersForLen(a1 + 12, (v51 + v87), v93, v94, v95, v96, v97, v98);
  if ((v99 & 0x80000000) != 0)
  {
    v8 = v99;
    goto LABEL_189;
  }

  v100 = (*(a1[4] + 120))(a1[2], a1[3], 0, v19, (v51 + v87 + 1));
  a3 = v101;
  if ((v100 & 0x80000000) == 0)
  {
    v100 = (*(a1[4] + 128))(a1[2], a1[3], 0, &__s2, &v113);
  }

  v8 = v100;
LABEL_190:
  heap_Free(*(*a1 + 8), v29);
LABEL_101:
  if (__s)
  {
    heap_Free(*(*a1 + 8), __s);
  }

  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  *a3 = __s2;
  return v8;
}

uint64_t globalbeadapt_SplitWordRecordsWithSpecialChar(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, char *__src)
{
  v126 = 0;
  v124 = 0;
  v125 = 0;
  v123 = 0;
  v121 = 0;
  __s = 0;
  *v119 = 0;
  v120 = 0;
  __s1 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  __b = 0;
  v110 = 0;
  cstdlib_strcpy(__dst, __src);
  cstdlib_strcat(__dst, "_");
  cstdlib_memset(&__b, 0, 0x10uLL);
  cstdlib_memset(&v111, 0, 0x10uLL);
  v12 = hlp_dynstr_init(*a1, &__b, 0x20u, 16);
  if ((v12 & 0x80000000) != 0 || (v12 = hlp_dynstr_init(*a1, &v111, 0x20u, 16), (v12 & 0x80000000) != 0) || (v12 = (*(a1[1] + 104))(a2, a3, 2, a4, &v126), (v12 & 0x80000000) != 0))
  {
    v101 = v12;
    v18 = 0;
    goto LABEL_126;
  }

  v106 = a4;
  v107 = cstdlib_strlen(a5) + 1;
  v13 = heap_Alloc(*(*a1 + 8), v107);
  if (!v13)
  {
    v101 = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v14, v15, v16, v17, v105);
    return v101;
  }

  v18 = v13;
  while (1)
  {
    v19 = a1[1];
    if (!v126)
    {
      v103 = *(v19 + 160);
      v104 = cstdlib_strlen(a5);
      v20 = v103(a2, a3, v106, 0, (v104 + 1), a5, &v124);
LABEL_135:
      v101 = v20;
      goto LABEL_126;
    }

    v20 = (*(v19 + 168))(a2, a3);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    if (v125 <= 0xA && ((1 << v125) & 0x610) != 0)
    {
      break;
    }

LABEL_123:
    v101 = (*(a1[1] + 120))(a2, a3, v126, &v126);
    if ((v101 & 0x80000000) != 0)
    {
      goto LABEL_126;
    }
  }

  v20 = (*(a1[1] + 168))(a2, a3, v126, 1, 1, &v116 + 2, &v124 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  v20 = (*(a1[1] + 168))(a2, a3, v126, 2, 1, &v116, &v124 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  v20 = (*(a1[1] + 176))(a2, a3, v126, 3, &v123, &v124 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  v22 = v123;
  if (v123)
  {
    v23 = 0;
    do
    {
      ++v23;
      v24 = cstdlib_strstr(v22, "\x17");
      v22 = v24 + 1;
    }

    while (v24);
  }

  else
  {
    v23 = 0;
  }

  v121 = &a5[HIWORD(v116)];
  __s = 0;
  v25 = (v116 - HIWORD(v116));
  cstdlib_strncpy(v18, v121, v25);
  v26 = 0;
  v18[v25] = 0;
  v27 = v18;
  do
  {
    __s = v27;
    ++v26;
    hlp_SearchMorph(__src, __dst, &__s);
    v27 = __s + 1;
  }

  while (__s);
  v20 = (*(a1[1] + 176))(a2, a3, v126, 5, &v120, &v124 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  v20 = (*(a1[1] + 168))(a2, a3, v126, 7, 1, &v115 + 2, &v124 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  HIWORD(v114) = 0;
  *v119 = 0;
  if (((*(a1[1] + 184))(a2, a3, v126, 14, &v114 + 2) & 0x80000000) == 0 && HIWORD(v114) == 1)
  {
    v20 = (*(a1[1] + 176))(a2, a3, v126, 14, v119, &v124 + 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }
  }

  HIWORD(v114) = 0;
  v118 = 0;
  if (((*(a1[1] + 184))(a2, a3, v126, 9, &v114 + 2) & 0x80000000) == 0 && HIWORD(v114) == 1)
  {
    v20 = (*(a1[1] + 176))(a2, a3, v126, 9, &v118, &v124 + 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }
  }

  LOWORD(v114) = 0;
  LOWORD(v115) = 0;
  if (((*(a1[1] + 184))(a2, a3, v126, 8, &v114) & 0x80000000) == 0 && v114 == 1)
  {
    v20 = (*(a1[1] + 168))(a2, a3, v126, 8, 1, &v115, &v124 + 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }
  }

  HIWORD(v113) = 0;
  if (((*(a1[1] + 184))(a2, a3, v126, 13, &v113 + 2) & 0x80000000) == 0 && HIWORD(v113) == 1)
  {
    v20 = (*(a1[1] + 176))(a2, a3, v126, 13, &__s1, &v124 + 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }
  }

  if (v23 < 2u || v26 < v23)
  {
    v50 = v116;
LABEL_114:
    if (HIWORD(v116) <= 1u)
    {
      v99 = 1;
    }

    else
    {
      v99 = HIWORD(v116);
    }

    if (v99 < v50)
    {
      v100 = &a5[v99];
      do
      {
        if (*v100 == 95 && !cstdlib_strchr(";:,", *(v100 - 1)))
        {
          *v100 = 45;
        }

        ++v99;
        ++v100;
      }

      while (v99 < v116);
    }

    goto LABEL_123;
  }

  if (*v119)
  {
    v20 = hlp_dynstr_add(*a1, &__b, *v119, 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v20 = hlp_dynstr_add(*a1, &v111, *v119, 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    if (!hlp_NLUStrExist(*v119, "S_PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(v111, "S_PUNC");
      hlp_NLUStrRemoveKeyVal(__b, "S_PUNC");
    }

    if (!hlp_NLUStrExist(*v119, "PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(*v119, "PUNC");
      hlp_NLUStrRemoveKeyVal(v111, "PUNC");
    }

    if (!hlp_NLUStrExist(*v119, "BNDSHAPE"))
    {
      hlp_NLUStrRemoveKeyVal(*v119, "BNDSHAPE");
      hlp_NLUStrRemoveKeyVal(v111, "BNDSHAPE");
    }

    if (!hlp_NLUStrExist(*v119, "E_PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(*v119, "E_PUNC");
      hlp_NLUStrRemoveKeyVal(v111, "E_PUNC");
    }
  }

  v28 = cstdlib_strlen(v123) + 1;
  if (v107 >= v28)
  {
LABEL_52:
    cstdlib_strcpy(v18, v123);
    v34 = cstdlib_strstr(v18, "\x17");
    __s = v34;
    if (v34)
    {
      *v34 = 0;
      __s = v34 + 1;
    }

    v121 = &a5[HIWORD(v116)];
    v35 = a5[v116];
    a5[v116] = 0;
    v36 = hlp_SearchMorph(__src, __dst, &v121);
    v37 = v121 - a5;
    LOWORD(v116) = v121 - a5;
    if (v36)
    {
      for (i = HIWORD(v116); i < v37; ++i)
      {
        if (a5[i] == 95)
        {
          a5[i] = 45;
        }
      }
    }

    HIWORD(v116) = v37 + 1;
    v20 = (*(a1[1] + 160))(a2, a3, v126, 2, 1, &v116, &v124);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v105 = v35;
    v39 = *(a1[1] + 160);
    v40 = v126;
    v41 = cstdlib_strlen(v18);
    v20 = v39(a2, a3, v40, 3, (v41 + 1), v18, &v124);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    if (v114 == 1)
    {
      v20 = (*(a1[1] + 160))(a2, a3, v126, 8, 1, &v113, &v124);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    if (HIWORD(v113) == 1)
    {
      v42 = cstdlib_strcmp(__s1, "0");
      v43 = *(a1[1] + 160);
      v44 = v126;
      if (v42)
      {
        v45 = (cstdlib_strlen("1") + 1);
        v46 = a2;
        v47 = a3;
        v48 = v44;
        v49 = "1";
      }

      else
      {
        v51 = cstdlib_strlen(__s1);
        v49 = __s1;
        v45 = (v51 + 1);
        v46 = a2;
        v47 = a3;
        v48 = v44;
      }

      v20 = v43(v46, v47, v48, 13, v45, v49, &v124);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    v52 = cstdlib_strstr(__s, "\x17");
    if (v52)
    {
      v53 = v52;
      do
      {
        *v53 = 0;
        v20 = (*(a1[1] + 80))(a2, a3, v126, &v126);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v20 = (*(a1[1] + 160))(a2, a3, v126, 0, 1, &v125, &v124);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v20 = (*(a1[1] + 160))(a2, a3, v126, 1, 1, &v116 + 2, &v124);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v121 = &a5[HIWORD(v116)];
        v54 = hlp_SearchMorph(__src, __dst, &v121);
        v55 = v121 - a5;
        LOWORD(v116) = v121 - a5;
        if (v54)
        {
          for (j = HIWORD(v116); j < v55; ++j)
          {
            if (a5[j] == 95)
            {
              a5[j] = 45;
            }
          }
        }

        HIWORD(v116) = v55 + 1;
        v20 = (*(a1[1] + 160))(a2, a3, v126, 2, 1, &v116, &v124);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v57 = *(a1[1] + 160);
        v58 = v126;
        v59 = __s;
        v60 = cstdlib_strlen(__s);
        v20 = v57(a2, a3, v58, 3, (v60 + 1), v59, &v124);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v61 = *(a1[1] + 160);
        v62 = v126;
        v63 = cstdlib_strlen(v120);
        v20 = v61(a2, a3, v62, 5, (v63 + 1), v120, &v124);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        v20 = (*(a1[1] + 160))(a2, a3, v126, 7, 1, &v115 + 2, &v124);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_135;
        }

        if (v114 == 1)
        {
          v20 = (*(a1[1] + 160))(a2, a3, v126, 8, 1, &v113, &v124);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }
        }

        if (HIWORD(v113) == 1)
        {
          v64 = cstdlib_strcmp(__s1, "0");
          v65 = *(a1[1] + 160);
          v66 = v126;
          if (v64)
          {
            v67 = (cstdlib_strlen("1") + 1);
            v68 = a2;
            v69 = a3;
            v70 = v66;
            v71 = "1";
          }

          else
          {
            v72 = cstdlib_strlen(__s1);
            v71 = __s1;
            v67 = (v72 + 1);
            v68 = a2;
            v69 = a3;
            v70 = v66;
          }

          v20 = v65(v68, v69, v70, 13, v67, v71, &v124);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }
        }

        if (v111)
        {
          v73 = *(a1[1] + 160);
          v74 = v126;
          v75 = cstdlib_strlen(v111);
          v20 = v73(a2, a3, v74, 14, (v75 + 1), v111, &v124);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }
        }

        if (v118)
        {
          v76 = *(a1[1] + 160);
          v77 = v126;
          v78 = cstdlib_strlen(v118);
          v20 = v76(a2, a3, v77, 9, (v78 + 1), v118, &v124);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }
        }

        __s = v53 + 1;
        v53 = cstdlib_strstr(v53 + 1, "\x17");
      }

      while (v53);
    }

    v20 = (*(a1[1] + 80))(a2, a3, v126, &v126);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v20 = (*(a1[1] + 160))(a2, a3, v126, 0, 1, &v125, &v124);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v20 = (*(a1[1] + 160))(a2, a3, v126, 1, 1, &v116 + 2, &v124);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v79 = &a5[HIWORD(v116)];
    v121 = v79;
    v80 = cstdlib_strstr(v79, " ");
    if (v80)
    {
      v81 = v80 - a5;
    }

    else
    {
      v82 = HIWORD(v116);
      v81 = v82 + cstdlib_strlen(v79);
    }

    LOWORD(v116) = v81;
    v20 = (*(a1[1] + 160))(a2, a3, v126, 2, 1, &v116, &v124);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v83 = *(a1[1] + 160);
    v84 = v126;
    v85 = __s;
    v86 = cstdlib_strlen(__s);
    v20 = v83(a2, a3, v84, 3, (v86 + 1), v85, &v124);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v87 = *(a1[1] + 160);
    v88 = v126;
    v89 = cstdlib_strlen(v120);
    v20 = v87(a2, a3, v88, 5, (v89 + 1), v120, &v124);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    v20 = (*(a1[1] + 160))(a2, a3, v126, 7, 1, &v115 + 2, &v124);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    if (v114 == 1)
    {
      v20 = (*(a1[1] + 160))(a2, a3, v126, 8, 1, &v115, &v124);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    if (HIWORD(v113) == 1)
    {
      v90 = *(a1[1] + 160);
      v91 = v126;
      v92 = cstdlib_strlen(__s1);
      v20 = v90(a2, a3, v91, 13, (v92 + 1), __s1, &v124);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    if (__b)
    {
      v93 = *(a1[1] + 160);
      v94 = v126;
      v95 = cstdlib_strlen(__b);
      v20 = v93(a2, a3, v94, 14, (v95 + 1), __b, &v124);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    if (v118)
    {
      v96 = *(a1[1] + 160);
      v97 = v126;
      v98 = cstdlib_strlen(v118);
      v20 = v96(a2, a3, v97, 9, (v98 + 1), v118, &v124);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }
    }

    v50 = v116;
    a5[v116] = v105;
    goto LABEL_114;
  }

  v29 = heap_Realloc(*(*a1 + 8), v18, v28);
  __s = v29;
  if (v29)
  {
    v18 = v29;
    v107 = v28;
    goto LABEL_52;
  }

  v101 = 2601525258;
  log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v30, v31, v32, v33, v105);
LABEL_126:
  if (__b)
  {
    heap_Free(*(*a1 + 8), __b);
    __b = 0;
  }

  LODWORD(v110) = 0;
  if (v111)
  {
    heap_Free(*(*a1 + 8), v111);
    v111 = 0;
  }

  LODWORD(v112) = 0;
  if (v18)
  {
    heap_Free(*(*a1 + 8), v18);
  }

  return v101;
}

uint64_t hlp_SearchMorph(const char *a1, const char *a2, char **a3)
{
  v5 = *a1;
  v6 = *a3;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = cstdlib_strstr(v6, a2);
  if (!v7)
  {
    v6 = *a3;
LABEL_5:
    v8 = cstdlib_strstr(v6, "_");
    v9 = 0;
    goto LABEL_6;
  }

  v8 = &v7[cstdlib_strlen(a1)];
  v9 = 1;
LABEL_6:
  *a3 = v8;
  return v9;
}

uint64_t globalbeadapt_RemoveSpecialChar(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v28 = 0;
  v29 = 0;
  __s = 0;
  v7 = (*(a1[1] + 104))(a2, a3, 2, a4, &v30);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v30;
    if (v30)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = (*(a1[1] + 168))(a2, a3, v8, 0, 1, &v29, &v28 + 2);
        if ((v11 & 0x80000000) != 0)
        {
          break;
        }

        if (v29 <= 0xA && ((1 << v29) & 0x610) != 0)
        {
          v11 = (*(a1[1] + 176))(a2, a3, v30, 3, &__s, &v28 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            break;
          }

          v13 = cstdlib_strlen(__s) + 1;
          if (v9 < v13)
          {
            v14 = heap_Realloc(*(*a1 + 8), v10, v13);
            if (!v14)
            {
              log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v15, v16, v17, v18, v26);
              v7 = 2601525258;
              if (!v10)
              {
                return v7;
              }

LABEL_22:
              heap_Free(*(*a1 + 8), v10);
              return v7;
            }

            v10 = v14;
            v9 = v13;
          }

          cstdlib_strcpy(v10, __s);
          v19 = cstdlib_strstr(v10, "\x17");
          if (v19)
          {
            v20 = v19;
            do
            {
              v21 = cstdlib_strlen(v20);
              cstdlib_memmove(v20, v20 + 1, v21);
              v20 = cstdlib_strstr(v20, "\x17");
            }

            while (v20);
          }

          v22 = *(a1[1] + 160);
          v23 = v30;
          v24 = cstdlib_strlen(v10);
          v11 = v22(a2, a3, v23, 3, (v24 + 1), v10, &v28);
          if ((v11 & 0x80000000) != 0)
          {
            break;
          }
        }

        v7 = (*(a1[1] + 120))(a2, a3, v30, &v30);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = v30;
          if (v30)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v7 = v11;
LABEL_21:
      if (!v10)
      {
        return v7;
      }

      goto LABEL_22;
    }
  }

  return v7;
}

void *globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(void *result)
{
  v1 = result;
  v2 = *(result + 142);
  if (*(result + 142) && result[36])
  {
    v3 = 0;
    do
    {
      v4 = *(v1[36] + 8 * v3);
      if (v4)
      {
        heap_Free(*(*v1 + 8), v4);
        v2 = *(v1 + 142);
      }

      ++v3;
    }

    while (v3 < v2);
    result = heap_Free(*(*v1 + 8), v1[36]);
  }

  *(v1 + 142) = 0;
  v1[36] = 0;
  return result;
}

uint64_t globalbeadapt_Init_SpecialSymbolsFromPhonmap(uint64_t a1)
{
  v26 = 0;
  v25 = 0;
  globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v25);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  if (!*(a1 + 80))
  {
    return Str;
  }

  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(*(a1 + 64), *(a1 + 72), NullHandle, v4))
  {
    return Str;
  }

  v26 = 0;
  v5 = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a1 + 284, &v26, 0);
  if ((v5 & 0x80000000) != 0)
  {
    Str = v5;
LABEL_30:
    globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
    return Str;
  }

  v6 = heap_Alloc(*(*a1 + 8), v26 + 1);
  if (!v6)
  {
    Str = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 64000, 0, v7, v8, v9, v10, v25);
    goto LABEL_30;
  }

  v11 = v6;
  Str = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a1 + 284, &v26, v6);
  if ((Str & 0x80000000) == 0)
  {
    v12 = heap_Calloc(*(*a1 + 8), *(a1 + 284), 8);
    *(a1 + 288) = v12;
    if (v12)
    {
      if (cstdlib_strlen(v11))
      {
        v17 = 0;
        v18 = v11;
        while (v17 < *(a1 + 284))
        {
          v19 = cstdlib_strchr(v18, 44);
          v20 = v19;
          if (v19)
          {
            *v19 = 0;
          }

          if (cstdlib_strlen(v18) != 3)
          {
            Str = 2601525248;
            break;
          }

          v26 = 0;
          v21 = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), 2, "alphabet", &v26, 0, v18);
          if ((v21 & 0x80000000) != 0)
          {
            Str = 0;
            v26 = 0;
            v22 = 4;
          }

          else
          {
            Str = v21;
            v22 = v26 + 4;
          }

          *(*(a1 + 288) + 8 * v17) = heap_Calloc(*(*a1 + 8), 1, v22);
          if (!*(*(a1 + 288) + 8 * v17))
          {
            goto LABEL_28;
          }

          if (LH_stricmp(v25, v18))
          {
            v23 = cstdlib_tolower(*v18);
          }

          else
          {
            v23 = 126;
          }

          **(*(a1 + 288) + 8 * v17) = v23;
          cstdlib_strcpy((*(*(a1 + 288) + 8 * v17) + 1), ": ");
          if (!v26 || (Str = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), 2, "alphabet", &v26, *(*(a1 + 288) + 8 * v17) + 3, v18), (Str & 0x80000000) == 0))
          {
            if (v20)
            {
              v18 = v20 + 1;
              ++v17;
              if (cstdlib_strlen(v11))
              {
                continue;
              }
            }
          }

          break;
        }
      }
    }

    else
    {
LABEL_28:
      Str = 2601525258;
      log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 64000, 0, v13, v14, v15, v16, v25);
    }
  }

  heap_Free(*(*a1 + 8), v11);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  return Str;
}

uint64_t globalbeadapt_Init_LOO(uint64_t *a1)
{
  v18 = 0;
  v17 = -1;
  v16 = 0;
  v15 = 0;
  __b = 0u;
  v14 = 0u;
  a1[37] = 0;
  v2 = (*(a1[7] + 96))(a1[5], a1[6], "fecfg", "loo_global_loomapping", &v18, &v17, &v16);
  if ((v2 & 0x80000000) == 0 && v17 == 1)
  {
    cstdlib_memset(&__b, 0, 0x28uLL);
    *&__b = ssftmap_ElemCopyString;
    *(&v14 + 1) = ssftmap_ElemCopyString;
    *(&__b + 1) = ssftmap_ElemFreeString;
    v15 = ssftmap_ElemFreeString;
    *&v14 = ssftmap_ElemCompareKeysString;
    v3 = *(*a1 + 8);
    v11[0] = __b;
    v11[1] = v14;
    v12 = ssftmap_ElemFreeString;
    v2 = ssftmap_ObjOpen(v3, 0, v11, a1 + 37);
    if ((v2 & 0x80000000) == 0)
    {
      v4 = *v18;
      v5 = cstdlib_strchr(*v18, v16);
      if (v5)
      {
        *v5 = 0;
      }

      if (v4)
      {
        while (1)
        {
          v6 = cstdlib_strchr(v4, 59);
          v7 = v6;
          if (v6)
          {
            *v6 = 0;
          }

          v8 = cstdlib_strchr(v4, 44);
          if (!v8)
          {
            break;
          }

          *v8 = 0;
          v9 = ssftmap_Insert(a1[37], v4, (v8 + 1));
          v2 = v9;
          if (v7)
          {
            v4 = v7 + 1;
          }

          else
          {
            v4 = 0;
          }

          if ((v9 & 0x80000000) != 0 || !v7)
          {
            return v2;
          }
        }

        return 2601525255;
      }
    }
  }

  return v2;
}

uint64_t globalbeadapt_DeInit_LOO(uint64_t a1)
{
  result = *(a1 + 296);
  if (result)
  {
    result = ssftmap_ObjClose(result);
    *(a1 + 296) = 0;
  }

  return result;
}

uint64_t hlp_insert_question_Tag(uint64_t a1, const char **a2, unsigned int *a3, int a4, char *__s)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  __s1[0] = 0;
  if (a4 > 1)
  {
    switch(a4)
    {
      case 2:
        v11 = "\\T";
        v12 = 2;
        goto LABEL_11;
      case 3:
        v11 = "\\/T";
        v12 = 3;
        goto LABEL_11;
      case 4:
        cstdlib_strncat(__s1, "\\/T", 3uLL);
        cstdlib_strncat(__s1, __s, v10);
        v11 = "A\\\\T";
        v12 = 4;
LABEL_11:
        cstdlib_strncat(__s1, v11, v12);
        cstdlib_strncat(__s1, __s, v10);
        v13 = "Q\";
        v14 = 2;
        goto LABEL_14;
    }

LABEL_13:
    cstdlib_strncat(__s1, "\\/T", 3uLL);
    cstdlib_strncat(__s1, __s, v10);
    v13 = "A\\\\TQ\";
    v14 = 6;
    goto LABEL_14;
  }

  if (!a4)
  {
    v13 = "\\TQ\";
    v14 = 4;
    goto LABEL_14;
  }

  if (a4 != 1)
  {
    goto LABEL_13;
  }

  v13 = "\\/TQ\";
  v14 = 5;
LABEL_14:
  cstdlib_strncat(__s1, v13, v14);
  v15 = cstdlib_strlen(*a2);
  v16 = cstdlib_strlen(__s1);
  v17 = v16 + v15;
  v18 = *a2;
  if (v17 < *a3 || (v19 = 2 * v17 * *a3, *a3 = v19, v18 = heap_Realloc(*(*a1 + 8), v18, v19), (*a2 = v18) != 0))
  {
    cstdlib_strncat(v18, __s1, v16);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v20, v21, v22, v23, v25);
    return 2601525258;
  }
}

uint64_t hlp_insert_phonemes(uint64_t a1, const char **a2, unsigned int *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a6 - a5;
  if (a6 < a5)
  {
    return 0;
  }

  v22 = v6;
  v14 = v7 + 1;
  v15 = cstdlib_strlen(*a2) + (v7 + 1);
  v16 = *a2;
  if (v15 < *a3 || (v17 = 2 * v15 * *a3, *a3 = v17, v16 = heap_Realloc(*(*a1 + 8), v16, v17), (*a2 = v16) != 0))
  {
    cstdlib_strncat(v16, (a4 + a5), v14);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v18, v19, v20, v21, v22);
    return 2601525258;
  }
}

BOOL marker_IsReadoutControlDefaultArg(int a1, unsigned int a2, uint64_t a3, int a4)
{
  result = 0;
  if (a1 > 30)
  {
    if (a1 != 31)
    {
      if (a1 != 36)
      {
        return result;
      }

      goto LABEL_7;
    }

    return a2 == a4;
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 != 21)
      {
        return result;
      }

LABEL_7:
      if (!a3)
      {
        return 0;
      }

      v6 = (a3 + a2);
      MarkerArgStr = marker_getMarkerArgStr(1u);
      return cstdlib_strcmp(v6, MarkerArgStr) == 0;
    }

    return a2 == 15;
  }
}

unint64_t marker_GetArgOfLastOfType(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v5 = a1 + (a2 << 6);
  v6 = *(v5 + 20);
  result = *(v5 + 40);
  if (v6 == 7)
  {
    v8 = result == 43;
    if (a3 > (a2 + 1))
    {
      v9 = result == 43;
      v10 = (a1 + ((a2 + 1) << 6) + 20);
      v11 = (a2 + 1) + 1;
      do
      {
        if (*v10 == 7)
        {
          v12 = v10[5];
          v13 = !v9;
          if (v9)
          {
            v14 = result & 0xFFFFFFFF00000000 | 0xF;
          }

          else
          {
            v14 = result;
          }

          v15 = v13;
          if (v12 == 43)
          {
            result = v14;
          }

          else
          {
            result = result & 0xFFFFFFFF00000000 | v12;
          }

          if (v12 == 43)
          {
            v9 = v15;
          }

          else
          {
            v9 = 0;
          }

          if (a4 == 1)
          {
            *v10 = 999;
          }
        }

        v10 += 16;
        v13 = a3 == v11++;
      }

      while (!v13);
      v8 = v9;
    }

    if (v8)
    {
      return result & 0xFFFFFFFF00000000 | 0xF;
    }
  }

  else if (a3 > (a2 + 1))
  {
    v16 = (a2 + 1);
    v17 = a1 + (v16 << 6) + 20;
    v18 = v16 + 1;
    do
    {
      if (*v17 == v6)
      {
        result = *(v17 + 20);
        if (a4 == 1)
        {
          *v17 = 999;
        }
      }

      v17 += 64;
      v13 = a3 == v18++;
    }

    while (!v13);
  }

  return result;
}

uint64_t marker_CheckForEmptyMarkers(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  if (a4 >= 2)
  {
    v12 = a7;
    v13 = a6;
    v22 = (a5 + 28);
    v14 = 1;
    while (1)
    {
      v15 = a3 + (v14 << 6);
      v16 = *(v15 + 20);
      if (v16 != 999 && v16 != 0x4000)
      {
        if (*v15 == 1)
        {
          if (!a6)
          {
            v17 = v16 > 0x24 || ((1 << v16) & 0x1080200080) == 0;
            if (!v17 && !marker_IsReadoutControlDefaultArg(v16, *(v15 + 40), a1, a2) && *v15 != 1)
            {
              return 0;
            }
          }
        }

        else
        {
          if (!a6)
          {
            goto LABEL_21;
          }

          v18 = 0;
          v19 = v22;
          while (v18 <= v12 || v16 != *(v19 - 2) || *(v15 + 24) != *(v19 - 1) || *(v15 + 28) != *v19)
          {
            ++v18;
            v19 += 16;
            if (v18 >= v13)
            {
              goto LABEL_21;
            }
          }

          if (!*(v19 - 7))
          {
LABEL_21:
            v20 = 0;
            if (v16 > 0x24 || ((1 << v16) & 0x1080200080) == 0)
            {
              return v20;
            }

            if (!marker_IsReadoutControlDefaultArg(v16, *(v15 + 40), a1, a2))
            {
              return 0;
            }
          }
        }
      }

      if (a4 <= ++v14)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t marker_TraceTxt(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v24 = 0;
  if (!a3)
  {
    return 0;
  }

  v14 = datac_RequestBlock(a5, a6, 1u, &v24);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = *(v24 + 16);
    if (!*(v24 + 16))
    {
      v16 = *(a4 + 32);
      v17 = "(Txt) (%s) (tag=%d) len=%d (EMPTY TXT)";
      goto LABEL_8;
    }

    if (v15 >= 0x400)
    {
      v16 = *(a4 + 32);
      v17 = "(Txt) (%s) (tag=%d) len=%d (TXT TOO LONG)";
LABEL_8:
      log_OutText(v16, a2, 5, 0, v17, v11, v12, v13, a7);
      return v14;
    }

    v18 = heap_Calloc(*(a4 + 8), 1, v15 + 2);
    if (v18)
    {
      v19 = v18;
      cstdlib_strncpy(v18, *(v24 + 8), *(v24 + 16));
      *(v19 + *(v24 + 16)) = 0;
      log_OutText(*(a4 + 32), a2, 5, 0, "(Txt) (%s) (tag=%d) len=%d (UTF8) %s", v20, v21, v22, a7);
      heap_Free(*(a4 + 8), v19);
    }

    else
    {
      return (a1 << 20) | 0x8000200A;
    }
  }

  return v14;
}

uint64_t marker_TraceMrk(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{
  v56 = *MEMORY[0x277D85DE8];
  v53 = 0;
  if (!a3)
  {
    return 0;
  }

  v10 = a8;
  v11 = a6;
  v16 = a9;
  log_OutText(*(a4 + 32), a2, 5, 0, "(Mrk) (%s) (tag=%d)", a6, a7, a8, a7);
  if (a9)
  {
    result = 0;
    v51 = 0;
    v18 = a10;
    if (!a10)
    {
      return result;
    }
  }

  else
  {
    result = datac_RequestBlock(a5, v11, 1u, &v53);
    v51 = *(v53 + 8);
    v18 = *(v53 + 16);
    if (!*(v53 + 16))
    {
      return result;
    }
  }

  v47 = a1;
  v48 = result;
  v19 = 0;
  __s = 0;
  v52 = v18;
  v49 = v10;
  do
  {
    if (v16)
    {
      __dst = 0;
      v20 = v16 + (v19 << 6);
      v21 = *(v20 + 40);
      v22 = *(v20 + 20);
      if (v22 == 32)
      {
        if (v21 == 1)
        {
          v23 = 49;
        }

        else
        {
          v23 = 48;
        }

        __dst = v23;
        v55 = 0;
        v22 = 32;
LABEL_28:
        marker_getString(v22);
        goto LABEL_29;
      }
    }

    else
    {
      v24 = v51 + (v19 << 6);
      v22 = *(v24 + 20);
      v21 = *(v24 + 40);
      v25 = *(v24 + 48);
      if (v25)
      {
        v26 = cstdlib_strlen(v25);
        if ((v26 & 0xFFE0) != 0)
        {
          cstdlib_strcpy(&__dst, "EXTSTR TOO LONG");
        }

        else
        {
          v27 = v26 & 0x1F;
          cstdlib_strncpy(&__dst, *(v24 + 48), v27);
          *(&__dst + v27) = 0;
          v10 = v49;
        }
      }

      else
      {
        __dst = 0;
      }

      if (*(v24 + 20) == 32)
      {
        if (*(v24 + 40) == 1)
        {
          v28 = 49;
        }

        else
        {
          v28 = 48;
        }

        __dst = v28;
        v55 = 0;
      }
    }

    if (v22 != 7)
    {
      goto LABEL_28;
    }

    if (v21 == 43)
    {
      v22 = 7;
    }

    else
    {
      v36 = &off_279DAD4A0;
      v37 = 19;
      while (*(v36 - 2) != v21)
      {
        v36 += 2;
        if (!--v37)
        {
          v22 = 7;
          goto LABEL_29;
        }
      }

      v22 = 7;
    }

LABEL_29:
    if (marker_hasNonConstCharPtrArg(v22) && v22 <= 0x27 && ((1 << v22) & 0xB400200000) != 0 && v10 == 1 && v21)
    {
      v32 = cstdlib_strlen(v21);
      v33 = v32;
      if (v32 >= 0x401uLL)
      {
        v34 = 1024;
      }

      else
      {
        v34 = v32;
      }

      if (__s)
      {
        if (cstdlib_strlen(__s) >= v34)
        {
          v35 = __s;
        }

        else
        {
          v35 = heap_Realloc(*(a4 + 8), __s, v34 + 1);
          if (!v35)
          {
            return (v47 << 20) | 0x8000200A;
          }
        }
      }

      else
      {
        v35 = heap_Calloc(*(a4 + 8), 1, v34 + 1);
        if (!v35)
        {
          return (v47 << 20) | 0x8000200A;
        }
      }

      v10 = v49;
      __s = v35;
      if (v33 > 0x400)
      {
        cstdlib_strcpy(v35, "ARGSTR TOO LONG");
      }

      else
      {
        v38 = v21;
        v39 = v35;
        cstdlib_strncpy(v35, v38, v33);
        v39[v33] = 0;
      }

      v16 = a9;
    }

    v40 = *(a4 + 32);
    if (v16)
    {
      v16 = a9;
      log_OutText(v40, a2, 5, 0, "[%d] Markers %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s Ext=%d %s", v29, v30, v31, v19);
    }

    else
    {
      v41 = v51 + (v19 << 6);
      log_OutText(v40, a2, 5, 0, "[%d] Markers %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s Ext=%d %s", v29, v30, v31, v19);
      if (*(v41 + 16))
      {
        v45 = 0;
        v46 = 0;
        do
        {
          log_OutText(*(a4 + 32), a2, 5, 0, "[UTOI] Offsets[%d] %u,%u", v42, v43, v44, v46++);
          v45 += 8;
        }

        while (v46 < *(v41 + 16));
      }
    }

    ++v19;
  }

  while (v19 != v52);
  if (__s)
  {
    heap_Free(*(a4 + 8), __s);
  }

  return v48;
}

uint64_t marker_loc_FilterSyncMarkers(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    v5 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = (v2 + 84);
    v4 = 1;
    v5 = 1;
    v6 = (v2 + 84);
    do
    {
      v7 = *v6;
      v6 += 16;
      if (v7 != 0x4000)
      {
        v8 = (v3 - 5);
        v9 = (v2 + (v5 << 6));
        v10 = *v8;
        v11 = v8[1];
        v12 = v8[3];
        v9[2] = v8[2];
        v9[3] = v12;
        *v9 = v10;
        v9[1] = v11;
        ++v5;
        v1 = *(a1 + 16);
      }

      ++v4;
      v3 = v6;
    }

    while (v4 < v1);
  }

  *(a1 + 16) = v5;
  return 0;
}

uint64_t ppParam_ClearReadOutParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), *(&aTAG2PARAM + v2 + 8));
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    v2 += 16;
    if (v2 == 64)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ppParam_ClearSequencerParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), off_279DAD608[v2]);
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    if (++v2 == 3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ppParam_ClearAllPPParameters(uint64_t a1)
{
  result = ppParam_ClearReadOutParameters(a1);
  if ((result & 0x80000000) == 0)
  {

    return ppParam_ClearSequencerParameters(a1);
  }

  return result;
}

uint64_t datac_ObjOpen(_WORD *a1, uint64_t a2, void *a3, int a4)
{
  v12 = 0;
  if (!a3 || (InitRsrcFunction(a1, a2, &v12) & 0x80000000) != 0)
  {
    v11 = -2147475449;
  }

  else
  {
    *a3 = 0;
    v8 = heap_Alloc(*(v12 + 8), 40);
    if (v8)
    {
      v9 = v8;
      cstdlib_memset(v8, 0, 0x28uLL);
      result = 0;
      *v9 = a1;
      v9[1] = a2;
      *(v9 + 8) = a4;
      *a3 = v9;
      return result;
    }

    v11 = -2147475446;
  }

  return v11 | (a4 << 20);
}

uint64_t datac_ObjClose(uint64_t a1)
{
  v8 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if ((InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) != 0)
  {
    return (*(a1 + 32) << 20) | 0x80002007;
  }

  v2 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v3 = 0;
    v4 = 16;
    do
    {
      v5 = *(*(a1 + 24) + v4);
      if (v5)
      {
        heap_Free(*(v8 + 8), v5);
        v2 = *(a1 + 16);
      }

      ++v3;
      v4 += 32;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    heap_Free(*(v8 + 8), v6);
  }

  heap_Free(*(v8 + 8), a1);
  return 0;
}

uint64_t datac_RegisterBlock(uint64_t a1, int a2, int a3, int a4)
{
  v18 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  v4 = a3;
  if (!a3 || (v6 = a4, !a4) || (InitRsrcFunction(*a1, *(a1 + 8), &v18) & 0x80000000) != 0)
  {
    v12 = *(a1 + 32);
    v13 = -2147475449;
    return v13 | (v12 << 20);
  }

  v8 = *(a1 + 24);
  if (*(a1 + 16))
  {
    v9 = (v8 + 8);
    v10 = *(a1 + 16);
    while (1)
    {
      v11 = *v9;
      v9 += 16;
      if (v11 == a2)
      {
        break;
      }

      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    v12 = *(a1 + 32);
    v13 = -2147475432;
    return v13 | (v12 << 20);
  }

  if (!v8)
  {
    v15 = heap_Alloc(*(v18 + 8), 32);
    if (v15)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_14:
  v15 = heap_Realloc(*(v18 + 8), v8, 32 * *(a1 + 16) + 32);
  if (!v15)
  {
LABEL_18:
    v12 = *(a1 + 32);
    v13 = -2147475446;
    return v13 | (v12 << 20);
  }

LABEL_15:
  *(a1 + 24) = v15;
  v16 = *(a1 + 16) + 1;
  *(a1 + 16) = v16;
  cstdlib_memset((v15 + 32 * v16 - 32), 0, 0x20uLL);
  result = 0;
  v17 = *(a1 + 24) + 32 * *(a1 + 16);
  *(v17 - 24) = a2;
  *(v17 - 22) = v4;
  *(v17 - 32) = v6;
  return result;
}

uint64_t datac_RequestBlock(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  v18 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if (!a3 || !a4 || (InitRsrcFunction(*a1, *(a1 + 8), &v18) & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  *a4 = 0;
  v8 = *(a1 + 16);
  if (!*(a1 + 16))
  {
LABEL_9:
    v10 = *(a1 + 32);
    v11 = -2147475436;
    return v11 | (v10 << 20);
  }

  v9 = *(a1 + 24) + 16;
  while (*(v9 - 8) != a2)
  {
    v9 += 32;
    if (!--v8)
    {
      goto LABEL_9;
    }
  }

  if (*(v9 + 10) < a3)
  {
    v13 = *(v9 - 16);
    if (((v13 + a3) & 0x10000) != 0)
    {
LABEL_13:
      v10 = *(a1 + 32);
      v11 = -2147475449;
      return v11 | (v10 << 20);
    }

    v14 = v13 + v13 * (a3 / v13);
    v15 = *(v18 + 8);
    v16 = *(v9 - 6) * v14;
    if (*v9)
    {
      v17 = heap_Realloc(v15, *v9, v16 + 1);
    }

    else
    {
      v17 = heap_Alloc(v15, v16 + 1);
    }

    if (!v17)
    {
      v10 = *(a1 + 32);
      v11 = -2147475446;
      return v11 | (v10 << 20);
    }

    if (*v9 != v17)
    {
      *v9 = v17;
    }

    cstdlib_memset((v17 + *(v9 - 6) * *(v9 + 8)), 0, (v14 - *(v9 + 8)) * *(v9 - 6));
    *(v9 + 10) = v14;
  }

  result = 0;
  *a4 = v9 - 8;
  return result;
}

uint64_t datac_ReleaseBlock(uint64_t a1, int a2)
{
  v13 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if ((InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) != 0)
  {
    v8 = *(a1 + 32);
    v9 = -2147475449;
    return v9 | (v8 << 20);
  }

  v4 = *(a1 + 16);
  if (!*(a1 + 16))
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = -2147475436;
    return v9 | (v8 << 20);
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 24);
  while (*(v7 + v5 + 8) != a2)
  {
    ++v6;
    v5 += 32;
    if (32 * v4 == v5)
    {
      goto LABEL_7;
    }
  }

  v11 = *(v7 + v5 + 16);
  if (v11)
  {
    heap_Free(*(v13 + 8), v11);
    LODWORD(v4) = *(a1 + 16);
  }

  v12 = v4;
  if (v4 - 1 > v6)
  {
    cstdlib_memmove((v7 + v5), (v7 + v5 + 32), 32 * (v4 - v6));
    v12 = *(a1 + 16);
  }

  result = 0;
  *(a1 + 16) = v12 - 1;
  return result;
}

uint64_t bed_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, int a6)
{
  v18 = 0;
  if (!a3 || !a5 || (InitRsrcFunction(a1, a2, &v18) & 0x80000000) != 0)
  {
    v16 = -2147475449;
    return v16 | (a6 << 20);
  }

  *a5 = 0;
  v12 = heap_Alloc(*(v18 + 8), 40);
  if (!v12)
  {
    v16 = -2147475446;
    return v16 | (a6 << 20);
  }

  v13 = v12;
  cstdlib_memset(v12, 0, 0x28uLL);
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  *(v13 + 36) = a6;
  v14 = datac_RequestBlock(a3, a4, 1u, (v13 + 24));
  if ((v14 & 0x80000000) != 0)
  {
    v15 = v14;
    bed_ObjClose(v13);
  }

  else
  {
    v15 = 0;
    *a5 = v13;
  }

  return v15;
}

uint64_t bed_ObjClose(uint64_t a1)
{
  v1 = 2368741383;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t bed_Goto(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  v3 = *(*(a1 + 24) + 16);
  if ((a2 & 0x80000000) != 0)
  {
    v5 = v3 + a2;
    if (v5 >= 0)
    {
      result = 0;
      *(a1 + 32) = v5;
      return result;
    }
  }

  else if (v3 >= a2)
  {
    result = 0;
    *(a1 + 32) = a2;
    return result;
  }

  return (*(a1 + 36) << 20) | 0x8000200F;
}

uint64_t bed_GoForward(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  result = 2368741383;
  if (a1 && a2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(v6 + 16);
    if (v7 < v8)
    {
      v10 = *(v6 + 8) + *(v6 + 2) * *(a1 + 32);
      do
      {
        v11 = a2(a3, v10);
        LOWORD(v7) = *(a1 + 32);
        v8 = *(v6 + 16);
        if (v11)
        {
          break;
        }

        LOWORD(v7) = v7 + 1;
        *(a1 + 32) = v7;
        v10 += *(v6 + 2);
      }

      while (v8 > v7);
    }

    if (v8 <= v7)
    {
      return (*(a1 + 36) << 20) | 0x80002014;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t bed_GoBackward(uint64_t a1, unsigned int (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  v5 = -2147475449;
  if (a2)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(v7 + 16);
    if (v8 >= v9)
    {
      LOWORD(v8) = v9 - 1;
      *(a1 + 32) = v9 - 1;
    }

    v10 = *(v7 + 8) + *(v7 + 2) * v8;
    if (v8)
    {
      while (!a2(a3, v10))
      {
        v11 = *(a1 + 32) - 1;
        *(a1 + 32) = v11;
        v10 -= *(v7 + 2);
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      if (*(a1 + 32))
      {
        return 0;
      }
    }

LABEL_11:
    if (a2(a3, v10))
    {
      return 0;
    }

    v5 = -2147475436;
  }

  return v5 | (*(a1 + 36) << 20);
}

uint64_t bed_FindForward(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t a3, _WORD *a4)
{
  if (!a1)
  {
    return 2368741383;
  }

  v6 = -2147475449;
  if (a2 && a4)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a4 = v9;
    v10 = *(v8 + 16);
    if (v9 < v10)
    {
      v12 = *(v8 + 8) + *(v8 + 2) * v9;
      while (1)
      {
        v13 = a2(a3, v12);
        LOWORD(v9) = *a4;
        if (v13)
        {
          break;
        }

        LOWORD(v9) = v9 + 1;
        *a4 = v9;
        v12 += *(v8 + 2);
        v10 = *(v8 + 16);
        if (v10 <= v9)
        {
          goto LABEL_11;
        }
      }

      v10 = *(v8 + 16);
    }

LABEL_11:
    if (v10 > v9)
    {
      return 0;
    }

    v6 = -2147475436;
  }

  return v6 | (*(a1 + 36) << 20);
}

uint64_t bed_FindBackward(uint64_t a1, unsigned int (*a2)(uint64_t, unint64_t), uint64_t a3, _WORD *a4)
{
  if (!a1)
  {
    return 2368741383;
  }

  v6 = -2147475449;
  if (a2 && a4)
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    *a4 = v10;
    v11 = *(v9 + 8) + *(v9 + 2) * v10;
    if (v10)
    {
      while (!a2(a3, v11))
      {
        v12 = *a4 - 1;
        *a4 = v12;
        v11 -= *(v9 + 2);
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      if (*a4)
      {
        return 0;
      }
    }

LABEL_10:
    if (a2(a3, v11))
    {
      return 0;
    }

    v6 = -2147475436;
  }

  return v6 | (*(a1 + 36) << 20);
}

uint64_t bed_GetcElem(uint64_t a1, _WORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(*(a1 + 24) + 16);
  return result;
}

uint64_t bed_GetiElem(uint64_t a1, _WORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  v2 = *(a1 + 32);
  if (v2 >= *(*(a1 + 24) + 16))
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t bed_GetpElem(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a3)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  if (a2 == 0xFFFF)
  {
    a2 = *(a1 + 32);
  }

  v3 = *(a1 + 24);
  if (a2 >= *(v3 + 16))
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  result = 0;
  *a3 = *(v3 + 8) + *(v3 + 2) * a2;
  return result;
}

uint64_t bed_GetpBlock(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(a1 + 24);
  return result;
}

uint64_t bed_IsCursorAtEnd(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(a1 + 32) >= *(*(a1 + 24) + 16);
  return result;
}

uint64_t bed_Insert(uint64_t a1, void *__src, int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!__src)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = (a1 + 24);
  v7 = *(a1 + 24);
  v8 = v7[8];
  if (v8 + a3 > v7[9])
  {
    result = datac_RequestBlock(*(a1 + 16), *v7, (v8 + a3), (a1 + 24));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *v6;
    v8 = (*v6)[8];
  }

  v10 = *(a1 + 32);
  if (v10 < v8)
  {
    cstdlib_memmove((*(v7 + 1) + (v10 + a3) * v7[1]), (*(v7 + 1) + v7[1] * v10), v7[1] * (v8 - v10));
    v10 = *(a1 + 32);
  }

  cstdlib_memmove((*(v7 + 1) + v7[1] * v10), __src, v7[1] * a3);
  result = 0;
  v7[8] += a3;
  *(a1 + 32) += a3;
  return result;
}

uint64_t bed_Remove(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  if (v6 <= a2)
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  if (!a3)
  {
    return 0;
  }

  v7 = a3 + a2 <= v6 ? a3 : v6 - a2;
  v8 = a3 + a2 <= v6 ? (v6 - (a3 + a2)) : 0;
  v9 = a2 + v7;
  cstdlib_memmove((*(v5 + 8) + *(v5 + 2) * a2), (*(v5 + 8) + v9 * *(v5 + 2)), v8 * *(v5 + 2));
  *(v5 + 16) -= v7;
  v10 = *(a1 + 32);
  if (v10 <= a2)
  {
    return 0;
  }

  result = 0;
  if (v9 <= v10)
  {
    *(a1 + 32) = v10 - v7;
  }

  else
  {
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t isEsc(uint64_t a1, char *a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if (a3 <= a4)
  {
    return 0;
  }

  v6 = a2[a4];
  if (v6 != 92 && v6 != 27)
  {
    return 0;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v9 = exePattern("esc", a1, a2, a3, a4, 0x2000, &v13, v12, &v11, 0x3E7u);
  result = 0;
  if ((v9 & 0x80000000) == 0 && v13 && LODWORD(v12[0]) == a4)
  {
    *a5 = WORD2(v12[0]) - a4;
    return 1;
  }

  return result;
}

uint64_t exePattern(const char *a1, uint64_t a2, char *a3, unsigned int a4, int a5, uint64_t a6, _DWORD *a7, uint64_t a8, _DWORD *a9, unsigned __int16 a10)
{
  v12 = a6;
  v45 = *MEMORY[0x277D85DE8];
  log_OutText(*(*a2 + 32), "PP", 4, 0, "exePattern for pattern: %s", a6, a7, a8, a1);
  *a7 = 0;
  v18 = *(*(a2 + 8) + 8);
  if (a10 == 999)
  {
    if (!*(v18 + 48))
    {
      return 0;
    }

    v19 = 0;
    v20 = 0;
    while (cstdlib_strcmp(*(*(v18 + 56) + v19 + 16), a1))
    {
      ++v20;
      v18 = *(*(a2 + 8) + 8);
      v19 += 24;
      if (v20 >= *(v18 + 48))
      {
        return 0;
      }
    }

    v21 = (*(*(*(a2 + 8) + 8) + 56) + v19);
  }

  else
  {
    v21 = (*(v18 + 40) + 24 * a10 + 8);
  }

  v22 = *v21;
  if (!*v21)
  {
    return 0;
  }

  if (*(a2 + 48) < a4)
  {
    a4 = *(a2 + 48);
  }

  cstdlib_memset(&__b, -1, 0x190uLL);
  v23 = nuance_pcre_exec(*(a2 + 24), *(a2 + 32), v22, 0, a3, a4, a5, v12, &__b, 100);
  if ((v23 & 0x80000000) != 0)
  {
    v29 = nuance_pcre_ErrorToLhError(v23);
    v28 = v29;
    if (v29 >> 20 != 2213)
    {
      return v28;
    }

    v34 = v29 & 0x1FFF;
    switch(v34)
    {
      case 10:
        v36 = *(*a2 + 32);
        v37 = 11002;
        v38 = 0;
        break;
      case 7778:
        return v28;
      case 20:
        return 0;
      default:
        v36 = *(*a2 + 32);
        v39 = "lhError";
        v38 = "%s%x";
        v37 = 11027;
        break;
    }

    log_OutPublic(v36, "PP", v37, v38, v30, v31, v32, v33, v39);
    return v28;
  }

  if (!v23)
  {
    return 0;
  }

  *a8 = __b;
  v25 = v41;
  v24 = v42;
  *(a8 + 16) = v41;
  *(a8 + 20) = v24;
  if (v25 == -1 && v24 == -1)
  {
    v26 = v43;
    if (v43 != -1)
    {
      v27 = v44;
      if (v44 != -1)
      {
        *a9 = 1;
        *(a8 + 16) = v26;
        *(a8 + 20) = v27;
      }
    }
  }

  v28 = 0;
  *a7 = 1;
  return v28;
}

uint64_t isEscOrPartialEsc(uint64_t a1, char *a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if (a3 <= a4)
  {
    return 0;
  }

  v6 = a2[a4];
  if (v6 != 92 && v6 != 27)
  {
    return 0;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v9 = exePattern("esc", a1, a2, a3, a4, 40960, &v14, v13, &v12, 0x3E7u);
  if ((v9 & 0x1FFF) == 0x1E62)
  {
    return 2;
  }

  v11 = v9;
  result = 0;
  if ((v11 & 0x80000000) == 0 && v14 && LODWORD(v13[0]) == a4)
  {
    *a5 = WORD2(v13[0]) - a4;
    return 1;
  }

  return result;
}

uint64_t escseqm_str2enumMapping(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(v2 + 8);
  if (*(v3 + 64))
  {
    v6 = 0;
    v7 = *(a2 + 8);
    do
    {
      v8 = *(v3 + 72);
      if (*(v7 + 20) == *(v8 + 16 * v6))
      {
        if (*(v8 + 16 * v6 + 4))
        {
          v9 = 0;
          v10 = 0;
          while (1)
          {
            v11 = *(*(a2 + 8) + 40);
            if (v11)
            {
              if (!cstdlib_strcmp(*(*(v8 + 16 * v6 + 8) + v9), v11))
              {
                heap_Free(*(*a1 + 8), *(*(a2 + 8) + 40));
                *(*(a2 + 8) + 40) = 0;
                *(*(a2 + 8) + 40) = *(*(*(*(a1[1] + 8) + 72) + 16 * v6 + 8) + v9 + 8);
                return 0;
              }

              v2 = a1[1];
            }

            ++v10;
            v8 = *(*(v2 + 8) + 72);
            v9 += 16;
            if (v10 >= *(v8 + 16 * v6 + 4))
            {
              v7 = *(a2 + 8);
              break;
            }
          }
        }

        heap_Free(*(*a1 + 8), *(v7 + 40));
        *(*(a2 + 8) + 40) = 0;
        v7 = *(a2 + 8);
        *(v7 + 20) = 0;
        v2 = a1[1];
      }

      ++v6;
      v3 = *(v2 + 8);
    }

    while (v6 < *(v3 + 64));
  }

  return 0;
}

uint64_t escseqm_get_token(void *a1, char *a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v86 = 0;
  v87 = 0;
  v84 = 0uLL;
  v85 = 0;
  *a5 = 0;
  v10 = exePattern("esc", a1, a2, a3, 0, 0, &v87, &v84, &v86, 0x3E7u);
  if ((v10 & 0x80000000) != 0 || !v87)
  {
    return v10;
  }

  v12 = v84;
  v11 = DWORD1(v84);
  v13 = exePattern("enhancedescseq", a1, a2, a3, SDWORD1(v84), 16, &v87, &v84, &v86, 0x3E7u);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v87 != 1)
  {
    v10 = exePattern("esctoi", a1, a2, a3, v11, 16, &v87, &v84, &v86, 0x3E7u);
    if ((v10 & 0x80000000) != 0 || v87 != 1)
    {
      return v10;
    }

    v30 = *(a4 + 8);
    v31 = DWORD1(v84);
    *(v30 + 20) = 7;
    *(v30 + 24) = v12;
    *(v30 + 28) = v31 - v12;
    *(v30 + 32) = v12;
    *(v30 + 36) = v12;
    if (*(*(a1[1] + 8) + 64))
    {
      *(v30 + 40) = 0;
      if (*(&v84 + 1) != -1)
      {
        v32 = *(*a1 + 8);
        v33 = a2[SDWORD2(v84)];
        if (v33 <= 0x5D)
        {
          if (v33 == 43)
          {
            v34 = &unk_26ECDBE44;
            goto LABEL_79;
          }

          if (v33 == 62)
          {
            v34 = &unk_26ECDBE48;
            goto LABEL_79;
          }
        }

        else
        {
          switch(v33)
          {
            case '^':
              v34 = "diacritized";
              goto LABEL_79;
            case 'h':
              v34 = "hil";
              goto LABEL_79;
            case 'j':
              v34 = "jeita";
LABEL_79:
              v55 = cstdlib_strlen(v34);
              *(*(a4 + 8) + 40) = heap_Calloc(v32, 1, (v55 + 1));
              v56 = *(*(a4 + 8) + 40);
              if (!v56)
              {
                return 2147491850;
              }

              cstdlib_strcpy(v56, v34);
              goto LABEL_81;
          }
        }

        v30 = *(a4 + 8);
LABEL_84:
        *(v30 + 20) = 0;
        return v10;
      }
    }

    else
    {
      v44 = a2[SDWORD2(v84)];
      if (v44 <= 0x5D)
      {
        if (v44 != 43)
        {
          if (v44 != 62)
          {
            goto LABEL_84;
          }

          v44 = 16;
        }
      }

      else
      {
        switch(v44)
        {
          case '^':
            v44 = 60;
            break;
          case 'h':
            v44 = 108;
            break;
          case 'j':
            break;
          default:
            goto LABEL_84;
        }
      }

      *(v30 + 40) = v44;
    }

LABEL_81:
    *a5 = 2;
    return v10;
  }

  v82 = DWORD1(v84);
  *v83 = v85;
  v89 = 0;
  v88 = 0;
  v15 = DWORD2(v84);
  v14 = HIDWORD(v84);
  *(*(a4 + 8) + 20) = 0;
  v16 = *(a1[1] + 8);
  if (*(v16 + 4))
  {
    v17 = 0;
    v18 = 0;
    v19 = (v14 - v15);
    while (1)
    {
      v20 = cstdlib_strlen(*(*(v16 + 8) + v17));
      v21 = a1[1];
      if (v20 == v19)
      {
        v22 = *(*(v21 + 8) + 8);
        if (*(v22 + v17 + 8) == 1)
        {
          v23 = LH_strnicmp(*(v22 + v17), &a2[v15], v19);
          v21 = a1[1];
          if (!v23)
          {
            break;
          }
        }
      }

      ++v18;
      v16 = *(v21 + 8);
      v17 += 24;
      if (v18 >= *(v16 + 4))
      {
        goto LABEL_11;
      }
    }

    v45 = *(*(v21 + 8) + 8) + v17;
    v46 = *(a4 + 8);
    v48 = *(v45 + 12);
    v47 = *(v45 + 16);
    *(v46 + 20) = v48;
    *a4 = 0;
    if (v47 != 9999)
    {
      *(v46 + 40) = v47;
      *a4 = 1;
    }
  }

LABEL_11:
  v24 = *(a4 + 8);
  v24[6] = v12;
  v24[7] = v82 - v12;
  v24[8] = v12;
  v24[9] = v12;
  v25 = v24[5];
  if (v25 == 32)
  {
    if (getTrueEnd(a1, a2, a3, v83[0], &v83[1], 32, &v88))
    {
      v26 = *(a4 + 8);
      v27 = v83[1];
      v28 = v83[1] - v12 + 1;
      v26[6] = v12;
      v26[7] = v28;
      v26[8] = v12;
      v26[9] = v12;
      *a5 = 2;
      v10 = 0;
      if (v83[0] == v27)
      {
        v29 = *(a1 + 14) == 0;
        *(a1 + 14) = v29;
        v26[10] = v29;
      }

      else
      {
        v26[5] = 0;
      }

      goto LABEL_60;
    }

LABEL_55:
    v10 = 0;
    goto LABEL_60;
  }

  if (v83[0] == v83[1])
  {
    if (v25 == 2)
    {
LABEL_26:
      v24[10] = 0;
      setDefaultArgIfAny(a1, a4);
LABEL_27:
      v10 = 0;
      goto LABEL_59;
    }

    v49 = *(a1[1] + 8);
    v50 = *(v49 + 16);
    if (*(v49 + 16))
    {
      v51 = *(v49 + 24);
      do
      {
        v52 = *v51;
        v51 += 3;
        if (v52 == v25)
        {
          goto LABEL_26;
        }
      }

      while (--v50);
    }

    if (!marker_hasNonConstCharPtrArg(v24[5]))
    {
      goto LABEL_27;
    }

    v13 = checkForDefaultArgs(a1, a4, &v89 + 1);
    *a5 = 2;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    return v13;
  }

  v90 = 0;
  if (!getTrueEnd(a1, a2, a3, v83[0], &v83[1], v25, &v90))
  {
    v36 = 0;
    v89 = 1;
    goto LABEL_57;
  }

  v35 = v83[1];
  v36 = v83[1] + 1;
  if (!v83[1])
  {
    goto LABEL_36;
  }

  v37 = 0;
  v38 = a2 - 1;
  while (1)
  {
    v39 = v38[v83[1]];
    v40 = v39 > 0x20;
    v41 = (1 << v39) & 0x100002600;
    if (v40 || v41 == 0)
    {
      break;
    }

    --v38;
    if (v83[1] == ++v37)
    {
      goto LABEL_36;
    }
  }

  v57 = v83[1] - v37;
  if (v83[1] - v37 <= v83[0])
  {
LABEL_36:
    if (marker_hasNonConstCharPtrArg(*(*(a4 + 8) + 20)) || !*(*(a4 + 8) + 20))
    {
      v43 = checkForDefaultArgs(a1, a4, &v89 + 1);
LABEL_38:
      v10 = v43;
      goto LABEL_39;
    }

    HIDWORD(v89) = setDefaultArgIfAny(a1, a4);
    if (!HIDWORD(v89))
    {
      HIDWORD(v89) = *(*(a4 + 8) + 20) == 13;
    }

    goto LABEL_57;
  }

  v58 = *(*(a4 + 8) + 20);
  v59 = v90;
  if (v58 == 26 && v90 != 0)
  {
    v13 = parseStringArg(a1, a4, a2, v83[0], v90, &v89 + 1, 0);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v43 = parseStringArg(a1, a4, a2, v59 + 1, v57, &v89 + 1, 1);
    goto LABEL_38;
  }

  v61 = *(a1[1] + 8);
  v62 = *(v61 + 32);
  if (!*(v61 + 32))
  {
LABEL_95:
    if (marker_hasNonConstCharPtrArg(v58))
    {
LABEL_96:
      v13 = parseStringArg(a1, a4, a2, v83[0], v57, &v89 + 1, 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      v66 = *(a4 + 8);
      if (!*(v66 + 20))
      {
        heap_Free(*(*a1 + 8), *(v66 + 40));
        *(*(a4 + 8) + 40) = 0;
      }

      goto LABEL_57;
    }

    v67 = *(*(a4 + 8) + 20);
    if (v67 == 2)
    {
      goto LABEL_112;
    }

    if (!v67)
    {
      goto LABEL_96;
    }

    v68 = *(a1[1] + 8);
    v69 = *(v68 + 16);
    if (*(v68 + 16))
    {
      v70 = *(v68 + 24);
      while (1)
      {
        v71 = *v70;
        v70 += 3;
        if (v71 == v67)
        {
          break;
        }

        if (!--v69)
        {
          goto LABEL_111;
        }
      }

LABEL_112:
      parseNumericArg(a1, a4, a2, v83[0], v57, &v89 + 1, &v89);
      goto LABEL_57;
    }

LABEL_111:
    HIDWORD(v89) = v67 == 13;
    LODWORD(v89) = 0;
LABEL_57:
    v10 = 0;
    goto LABEL_58;
  }

  v63 = 0;
  v64 = *(v61 + 40);
  v65 = 16;
  while (*(v64 + v65 - 16) != v58)
  {
    ++v63;
    v65 += 24;
    if (v62 == v63)
    {
      goto LABEL_95;
    }
  }

  v79 = v83[1] - v37;
  v93[0] = 0;
  memset(v92, 0, sizeof(v92));
  v10 = exePattern("dummy", a1, &a2[v83[0]], (LOWORD(v83[1]) - LOWORD(v83[0]) - v37), 0, 16, v93, v92, &v91, v63);
  if ((v10 & 0x80000000) == 0)
  {
    if (v93[0] != 1)
    {
      goto LABEL_120;
    }

    if (v35 + LODWORD(v92[0]) - v83[0] - HIDWORD(v92[0]) == v37)
    {
      HIDWORD(v89) = 1;
      v78 = v79;
      v80 = v83[0];
      goto LABEL_123;
    }

    if (*(*(a4 + 8) + 20) == 7 && (v78 = HIDWORD(v92[0]) - LODWORD(v92[0]) + v83[0], v78 + 1 < v79) && utf8_BelongsToSet(8u, &a2[v83[0]], HIDWORD(v92[0]), HIDWORD(v92[0]) + 1))
    {
      v72 = v78 + 1;
      while (1)
      {
        v81 = v72;
        if (!utf8_BelongsToSet(0, a2, v72, v72 + 1))
        {
          break;
        }

        v72 = utf8_determineUTF8CharLength(a2[v81]) + v81;
        if (v72 >= v79)
        {
          goto LABEL_140;
        }
      }

      v72 = v81;
LABEL_140:
      v80 = v72;
      if (v35 - v72 != v37)
      {
        v74 = (&v89 + 4);
LABEL_122:
        *v74 = 1;
        if (!HIDWORD(v89))
        {
          if (*a4 == 1)
          {
            v89 = 0x100000000;
          }

LABEL_39:
          if ((v10 & 0x80000000) != 0)
          {
            return v10;
          }

LABEL_58:
          v53 = *(a4 + 8);
          v53[6] = v12;
          v53[7] = v36 - v12;
          v53[8] = v12;
          v53[9] = v12;
          if (!HIDWORD(v89))
          {
            v53[5] = 0;
            if (v89)
            {
LABEL_60:
              v54 = *(a4 + 8);
              if (*(v54 + 20) == 2)
              {
                *(v54 + 20) = 3;
              }

              return v10;
            }
          }

LABEL_59:
          *a5 = 2;
          goto LABEL_60;
        }

LABEL_123:
        v75 = *(*(*(a1[1] + 8) + 40) + v65);
        if (v75 == 1)
        {
          v13 = parseStringArg(a1, a4, a2, v83[0], v78, &v89 + 1, 0);
          v10 = 0;
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        else if (!v75)
        {
          *(*(a4 + 8) + 40) = a2[v83[0]];
        }

        if (v83[0] != v80 && v35 - v78 != v37)
        {
          v13 = parseStringArg(a1, a4, a2, v80, v79, &v89 + 1, 1);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }

          v10 = 0;
        }

        if (!HIDWORD(v89) && *(*(*(a1[1] + 8) + 40) + v65) == 1)
        {
          v76 = *(*(a4 + 8) + 40);
          if (v76)
          {
            heap_Free(*(*a1 + 8), v76);
            *(*(a4 + 8) + 40) = 0;
          }
        }

        goto LABEL_39;
      }

      v73 = v79;
    }

    else
    {
LABEL_120:
      v78 = v79;
      v73 = v83[0];
    }

    v80 = v73;
    HIDWORD(v89) = 0;
    v74 = &v89;
    goto LABEL_122;
  }

  return v10;
}