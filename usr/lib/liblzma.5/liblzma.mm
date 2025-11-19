uint64_t tuklib_physmem()
{
  v0 = sysconf(29);
  v1 = sysconf(200);
  if (v1 == -1 || v0 == -1)
  {
    return 0;
  }

  else
  {
    return v1 * v0;
  }
}

uint64_t tuklib_cpucores()
{
  v7 = *MEMORY[0x29EDCA608];
  *v6 = 0x300000006;
  v5 = 0;
  v4 = 4;
  v0 = sysctl(v6, 2u, &v5, &v4, 0, 0);
  if (v4 != 4 || v0 == -1)
  {
    result = 0;
  }

  else
  {
    result = v5 & ~(v5 >> 31);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *lzma_alloc(unint64_t a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  if (a2 && *a2)
  {
    return (*a2)(*(a2 + 16), 1, v2);
  }

  else
  {
    return malloc_type_malloc(v2, 0x1A16E1C7uLL);
  }
}

void *lzma_alloc_zero(unint64_t a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  if (a2 && *a2)
  {
    result = (*a2)(*(a2 + 16), 1, v2);
    if (result)
    {
      v4 = result;
      bzero(result, v2);
      return v4;
    }
  }

  else
  {

    return malloc_type_calloc(1uLL, v2, 0xEFA1B60AuLL);
  }

  return result;
}

void lzma_free(void *a1, uint64_t a2)
{
  if (a2 && (v2 = *(a2 + 8)) != 0)
  {
    v2(*(a2 + 16), a1);
  }

  else
  {
    free(a1);
  }
}

size_t lzma_bufcpy(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v8 = *a2;
  v9 = *a5;
  if (a3 - *a2 >= (a6 - *a5))
  {
    v10 = a6 - *a5;
  }

  else
  {
    v10 = a3 - *a2;
  }

  if (v10)
  {
    memcpy((a4 + v9), (a1 + v8), v10);
  }

  *a2 = v10 + v8;
  *a5 = v10 + v9;
  return v10;
}

uint64_t lzma_next_filter_init(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v7 = a3[1];
  if (*(a1 + 16) != v7)
  {
    a4.n128_f64[0] = lzma_next_end(a1, a2);
    v7 = a3[1];
  }

  *(a1 + 8) = *a3;
  *(a1 + 16) = v7;
  if (!v7)
  {
    return 0;
  }

  return v7(a1, a2, a3, a4);
}

double lzma_next_end(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  if (*(a1 + 16))
  {
    v4 = *(a1 + 32);
    v5 = *a1;
    if (v4)
    {
      v6 = *a1;
    }

    else
    {
      if (!a2 || (v4 = *(a2 + 8)) == 0)
      {
        free(*a1);
        goto LABEL_9;
      }

      v6 = *(a2 + 16);
    }

    v4(v6);
LABEL_9:
    *a1 = 0;
    *(a1 + 8) = -1;
    result = 0.0;
    *v2 = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
  }

  return result;
}

uint64_t lzma_next_filter_update(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != *(a1 + 8))
  {
    return 11;
  }

  if (*a3 == -1)
  {
    return 0;
  }

  return (*(a1 + 64))(*a1, a2, 0, a3);
}

uint64_t lzma_strm_init(void *a1)
{
  if (!a1)
  {
    return 11;
  }

  v2 = a1[7];
  if (!v2)
  {
    v2 = lzma_alloc(0x68uLL, a1[6]);
    a1[7] = v2;
    if (!v2)
    {
      return 5;
    }

    *v2 = 0;
    v2[1] = -1;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
  }

  v3 = 0;
  *(v2 + 100) = 0;
  *(v2 + 24) = 0;
  v4 = a1[7];
  *(v4 + 80) = 0;
  *(v4 + 101) = 0;
  a1[2] = 0;
  a1[5] = 0;
  return v3;
}

uint64_t lzma_code(uint64_t a1, unsigned int a2)
{
  if (!*a1 && *(a1 + 8))
  {
    return 11;
  }

  if (!*(a1 + 24) && *(a1 + 32))
  {
    return 11;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return 11;
  }

  result = 11;
  if (a2 > 4)
  {
    return result;
  }

  v5 = *(v3 + 24);
  if (!v5)
  {
    return result;
  }

  if (*(v3 + a2 + 96) != 1)
  {
    return 11;
  }

  if (*(a1 + 64))
  {
    return 8;
  }

  if (*(a1 + 72))
  {
    return 8;
  }

  if (*(a1 + 80))
  {
    return 8;
  }

  if (*(a1 + 88))
  {
    return 8;
  }

  if (*(a1 + 104))
  {
    return 8;
  }

  if (*(a1 + 112))
  {
    return 8;
  }

  if (*(a1 + 120))
  {
    return 8;
  }

  if (*(a1 + 128))
  {
    return 8;
  }

  v12 = a1;
  if (*(a1 + 132))
  {
    return 8;
  }

  v6 = *(v3 + 80);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (a2 != 3)
        {
          return 11;
        }

        break;
      case 4:
        if (a2 != 4)
        {
          return 11;
        }

        break;
      case 5:
        return 1;
      default:
        return 11;
    }

    goto LABEL_39;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      if (a2 != 1)
      {
        return 11;
      }
    }

    else if (v6 != 2 || a2 != 2)
    {
      return 11;
    }

LABEL_39:
    if (*(v3 + 88) == v12[1])
    {
      goto LABEL_40;
    }

    return 11;
  }

  if (a2 - 1 < 4)
  {
    *(v3 + 80) = a2;
  }

LABEL_40:
  v7 = v12[1];
  v8 = v12[4];
  result = v5(*v3, v12[6]);
  v9 = v12[7];
  *(v9 + 88) = v12[1];
  if (result > 5)
  {
    if (result != 6)
    {
      if (result == 12)
      {
        *(v9 + 101) = 0;
        if (*(v9 + 80) == 3)
        {
          *(v9 + 80) = 0;
        }

        return 12;
      }

      if (result != 101)
      {
        goto LABEL_51;
      }

      result = 0;
    }

LABEL_59:
    *(v9 + 101) = 0;
    return result;
  }

  if ((result - 2) < 3)
  {
    goto LABEL_59;
  }

  if (result)
  {
    if (result == 1)
    {
      v10 = *(v9 + 80) - 1;
      if (v10 > 3)
      {
        v11 = 5;
      }

      else
      {
        v11 = dword_2990BAD00[v10];
      }

      *(v9 + 80) = v11;
      goto LABEL_59;
    }

LABEL_51:
    *(v9 + 80) = 6;
    return result;
  }

  if (*(v9 + 101))
  {
    return 10;
  }

  result = 0;
  *(v9 + 101) = 1;
  return result;
}

void lzma_end(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      end = lzma_next_end(v2, *(a1 + 48));
      v4 = *(a1 + 48);
      if (v4 && (v5 = *(v4 + 8)) != 0)
      {
        v5(*(v4 + 16), *(a1 + 56), end);
      }

      else
      {
        free(*(a1 + 56));
      }

      *(a1 + 56) = 0;
    }
  }
}

void *lzma_get_progress(void *result, void *a2, void *a3)
{
  v3 = result[7];
  v4 = v3[5];
  if (v4)
  {
    return v4(*v3);
  }

  *a2 = result[2];
  *a3 = result[5];
  return result;
}

uint64_t lzma_get_check(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1[6];
  if (v2)
  {
    return v2(*v1);
  }

  else
  {
    return 0;
  }
}

uint64_t lzma_memusage(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1 && (v2 = v1[7]) != 0)
    {
      v3 = 0;
      v4 = 0;
      if (v2(*v1, &v4, &v3, 0))
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t lzma_memlimit_get(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1 && (v2 = v1[7]) != 0)
    {
      v3 = 0;
      v4 = 0;
      if (v2(*v1, &v3, &v4, 0))
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t lzma_memlimit_set(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    return 11;
  }

  v3 = v2[7];
  if (!v3)
  {
    return 11;
  }

  v6 = 0;
  v7 = 0;
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  return v3(*v2, &v6, &v7, v4);
}

uint64_t lzma_block_compressed_size(uint64_t a1, unint64_t a2)
{
  if (!lzma_block_unpadded_size(a1))
  {
    return 11;
  }

  v4 = *(a1 + 4);
  v5 = lzma_check_size(*(a1 + 8)) + v4;
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 == 0 || !v6)
  {
    return 9;
  }

  v8 = *(a1 + 16);
  if (v8 != -1 && v8 != v7)
  {
    return 9;
  }

  result = 0;
  *(a1 + 16) = v7;
  return result;
}

uint64_t lzma_block_unpadded_size(uint64_t result)
{
  if (result)
  {
    if (*result > 1u)
    {
      return 0;
    }

    v1 = *(result + 4);
    if ((v1 - 8) > 0x3F8 || (*(result + 4) & 3) != 0)
    {
      return 0;
    }

    v3 = *(result + 16);
    if (v3 < -1 || v3 == 0)
    {
      return 0;
    }

    else
    {
      v5 = *(result + 8);
      if (v5 >= 0x10)
      {
        result = 0;
      }

      else
      {
        result = -1;
      }

      if (v3 != -1 && v5 <= 0xF)
      {
        v6 = v3 + v1;
        v7 = lzma_check_size(v5);
        if (v6 + v7 <= 0x7FFFFFFFFFFFFFFCLL)
        {
          return v6 + v7;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t lzma_block_total_size(uint64_t a1)
{
  v1 = lzma_block_unpadded_size(a1);
  if (v1 == -1)
  {
    return -1;
  }

  else
  {
    return (v1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }
}

BOOL lzma_easy_preset(void *a1, int a2)
{
  v3 = a1 + 10;
  v4 = lzma_lzma_preset((a1 + 10), a2);
  if (!v4)
  {
    *a1 = 33;
    a1[1] = v3;
    a1[2] = -1;
  }

  return v4 != 0;
}

uint64_t lzma_filters_copy(uint64_t *a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = 11;
  if (!a1 || !a2)
  {
    goto LABEL_24;
  }

  v6 = *a1;
  if (*a1 != -1)
  {
    v8 = 0;
    while (v8 != 4)
    {
      v9 = &__src[v8];
      *v9 = v6;
      v10 = &a1[2 * v8];
      v12 = v10[1];
      v11 = (v10 + 1);
      if (v12)
      {
        v13 = &features;
        if (v6 != 0x4000000000000001)
        {
          v14 = &features;
          v15 = 12;
          while (--v15)
          {
            v13 = v14 + 3;
            v16 = v14[3];
            v14 += 3;
            if (v6 == v16)
            {
              goto LABEL_11;
            }
          }

          v3 = 8;
          if (!v8)
          {
            goto LABEL_24;
          }

LABEL_22:
          v20 = &__src[v8 - 1] + 1;
          do
          {
            --v8;
            v21 = *v20;
            v20 -= 2;
            lzma_free(v21, a3);
          }

          while (v8);
          goto LABEL_24;
        }

LABEL_11:
        v17 = v13[1];
        v18 = lzma_alloc(v17, a3);
        v9[1] = v18;
        if (!v18)
        {
          v3 = 5;
          if (!v8)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        memcpy(v18, *v11, v17);
      }

      else
      {
        v9[1] = 0;
      }

      ++v8;
      v6 = a1[2 * v8];
      if (v6 == -1)
      {
        goto LABEL_19;
      }
    }

    v3 = 8;
    goto LABEL_22;
  }

  v8 = 0;
LABEL_19:
  v19 = &__src[v8];
  *v19 = -1;
  v19[1] = 0;
  memcpy(a2, __src, 16 * v8 + 16);
  v3 = 0;
LABEL_24:
  v22 = *MEMORY[0x29EDCA608];
  return v3;
}

void lzma_filters_free(void *a1, uint64_t a2)
{
  if (a1 && *a1 != -1)
  {
    v3 = (a1 + 1);
    v4 = 3;
    do
    {
      lzma_free(*v3, a2);
      *(v3 - 1) = -1;
      *v3 = 0;
      if (!v4)
      {
        break;
      }

      v5 = v3[1];
      v3 += 2;
      --v4;
    }

    while (v5 != -1);
  }
}

uint64_t lzma_validate_chain(uint64_t *a1, unint64_t *a2)
{
  if (!a1)
  {
    return 11;
  }

  v2 = *a1;
  if (*a1 == -1)
  {
    return 11;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = &features;
    if (v2 != 0x4000000000000001)
    {
      v7 = &features;
      v8 = 12;
      while (--v8)
      {
        v6 = v7 + 24;
        v9 = *(v7 + 3);
        v7 += 24;
        if (v2 == v9)
        {
          goto LABEL_8;
        }
      }

      return 8;
    }

LABEL_8:
    if ((v5 & 1) == 0)
    {
      return 8;
    }

    v5 = v6[16];
    v3 += v6[18];
    ++v4;
    v2 = a1[2 * v4];
  }

  while (v2 != -1);
  result = 8;
  if (v4 <= 4 && (v6[17] & 1) != 0 && v3 <= 3)
  {
    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t lzma_raw_coder_init(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t), char a5)
{
  v7 = a3;
  v30[13] = *MEMORY[0x29EDCA608];
  v28 = 0;
  filter_init = lzma_validate_chain(a3, &v28);
  if (!filter_init)
  {
    v12 = v28;
    if (a5)
    {
      if (v28)
      {
        v13 = &v29[3 * v28 - 1];
        v14 = v28;
        while (1)
        {
          v15 = a4(*v7);
          if (!v15)
          {
            break;
          }

          v16 = *(v15 + 8);
          if (!v16)
          {
            break;
          }

          v17 = *v7;
          v18 = v7[1];
          v7 += 2;
          *(v13 - 2) = v17;
          *(v13 - 1) = v16;
          *v13 = v18;
          v13 -= 3;
          if (!--v14)
          {
            goto LABEL_14;
          }
        }

LABEL_16:
        filter_init = 8;
        goto LABEL_17;
      }
    }

    else if (v28)
    {
      v19 = v30;
      v20 = v28;
      do
      {
        v21 = a4(*v7);
        if (!v21)
        {
          goto LABEL_16;
        }

        v22 = *(v21 + 8);
        if (!v22)
        {
          goto LABEL_16;
        }

        v23 = *v7;
        v24 = v7[1];
        v7 += 2;
        *(v19 - 2) = v23;
        *(v19 - 1) = v22;
        *v19 = v24;
        v19 += 3;
      }

      while (--v20);
    }

LABEL_14:
    v25 = &v29[3 * v12];
    *v25 = -1;
    v25[1] = 0;
    filter_init = lzma_next_filter_init(a1, a2, v29, v11);
    if (filter_init)
    {
      lzma_next_end(a1, a2);
    }
  }

LABEL_17:
  v26 = *MEMORY[0x29EDCA608];
  return filter_init;
}

uint64_t lzma_raw_coder_memusage(uint64_t (*a1)(uint64_t), uint64_t *a2)
{
  if (!lzma_validate_chain(a2, &v12))
  {
    v5 = 0;
    v8 = *a2;
    v7 = a2 + 2;
    v6 = v8;
    while (1)
    {
      v9 = a1(v6);
      if (!v9)
      {
        break;
      }

      v10 = *(v9 + 16);
      if (v10)
      {
        result = v10(*(v7 - 1));
        if (result == -1)
        {
          return result;
        }

        v5 += result;
      }

      else
      {
        v5 += 1024;
      }

      v11 = *v7;
      v7 += 2;
      v6 = v11;
      if (v11 == -1)
      {
        return v5 + 0x8000;
      }
    }
  }

  return -1;
}

void *lzma_index_init(uint64_t a1)
{
  v2 = lzma_alloc(0x50uLL, a1);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    *(v2 + 6) = 0;
    v2[2] = 0;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    v2[8] = 512;
    *(v2 + 18) = 0;
    v4 = lzma_alloc(0xA8uLL, a1);
    if (v4)
    {
      v4[4] = 0;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 10) = 1;
      v4[11] = 0;
      v4[12] = 0;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 20) = 0;
      *(v4 + 26) = -1;
      v4[20] = 0;
      index_tree_append(v3, v4);
    }

    else
    {
      lzma_free(v3, a1);
      return 0;
    }
  }

  return v3;
}

uint64_t index_tree_append(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = v2;
  v3 = *(result + 24) + 1;
  *(result + 24) = v3;
  if (*result)
  {
    *(v2 + 32) = a2;
    *(result + 16) = a2;
    if (v3 != 1 << (__clz(v3) ^ 0x1F))
    {
      v4 = __clz(__rbit32(v3)) + 2;
      do
      {
        a2 = a2[2];
        --v4;
      }

      while (v4);
      v5 = a2[4];
      v6 = a2[2];
      v7 = (v6 + 32);
      if (!v6)
      {
        v7 = result;
      }

      *v7 = v5;
      *(v5 + 16) = v6;
      v8 = *(v5 + 24);
      a2[4] = v8;
      if (v8)
      {
        *(v8 + 16) = a2;
      }

      *(v5 + 24) = a2;
      a2[2] = v5;
    }
  }

  else
  {
    *result = a2;
    *(result + 8) = a2;
    *(result + 16) = a2;
  }

  return result;
}

void lzma_index_end(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a1;
    if (v4)
    {
      index_tree_node_end(v4, a2, index_stream_end);
    }

    lzma_free(a1, a2);
  }
}

void index_stream_end(void *a1, uint64_t a2)
{
  v4 = a1[7];
  if (v4)
  {
    index_tree_node_end(v4, a2, lzma_free);
  }

  lzma_free(a1, a2);
}

uint64_t lzma_index_prealloc(uint64_t result, unint64_t a2)
{
  v2 = 0xFFFFFFFFFFFFFFBLL;
  if (a2 < 0xFFFFFFFFFFFFFFBLL)
  {
    v2 = a2;
  }

  *(result + 64) = v2;
  return result;
}

uint64_t lzma_index_memusage(uint64_t a1, unint64_t a2)
{
  v2 = 8288 * ((a2 + 511) >> 9);
  v4 = a2 <= 0xFD08E5500FD0800 && -113 - 296 * a1 >= v2 && (a1 - 0x100000000) >= 0xFFFFFFFF00000001;
  v5 = 296 * a1 + v2 + 112;
  if (v4)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

uint64_t lzma_index_memused(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 48);
  v3 = 8288 * ((v2 + 511) >> 9);
  v5 = -113 - 296 * v1 < v3 || v2 > 0xFD08E5500FD0800 || v1 == 0;
  v6 = v3 + 296 * v1 + 112;
  if (v5)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

unint64_t lzma_index_stream_size(void *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  return v1 + ((v2 + lzma_vli_size(a1[6]) + 1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 24;
}

uint64_t lzma_index_file_size(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1[9];
  if (v2)
  {
    v2 = (*(v2 + 16 * *(v2 + 56) + 72) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  v3 = v1[1] + v2 + v1[20] + 24;
  if (v3 < 0)
  {
    return -1;
  }

  v4 = v1[12];
  v5 = lzma_vli_size(v1[11]);
  if ((((v4 + (v5 + 1) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3) < 0)
  {
    return -1;
  }

  else
  {
    return ((v4 + (v5 + 1) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3;
  }
}

uint64_t lzma_index_checks(uint64_t a1)
{
  result = *(a1 + 72);
  v3 = *(a1 + 16);
  if (*(v3 + 104) != -1)
  {
    return (1 << *(v3 + 120)) | result;
  }

  return result;
}

__n128 lzma_index_stream_flags(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && !lzma_stream_flags_compare(a2, a2))
  {
    v5 = *(a1 + 16);
    result = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    *(v5 + 152) = *(a2 + 48);
    *(v5 + 136) = v7;
    *(v5 + 120) = v6;
    *(v5 + 104) = result;
  }

  return result;
}

uint64_t lzma_index_stream_padding(uint64_t a1, uint64_t a2)
{
  result = 11;
  if (a1 && (a2 & 0x8000000000000003) == 0)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 160);
    *(v5 + 160) = 0;
    v7 = lzma_index_file_size(a1);
    if (v7 + a2 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = v6;
    }

    result = ((v7 + a2) >> 63) & 9;
    *(v5 + 160) = v8;
  }

  return result;
}

uint64_t lzma_index_append(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = 11;
  if ((a4 & 0x8000000000000000) == 0 && a1 && a3 - 0x7FFFFFFFFFFFFFFDLL >= 0x8000000000000008)
  {
    v9 = a1[2];
    v10 = v9[9];
    if (v10)
    {
      v11 = &v10[2 * v10[7]];
      v12 = v11[8];
      v13 = (v11[9] + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    if ((v12 + a4) >= 0)
    {
      v31 = v12 + a4;
      v14 = lzma_vli_size(a3);
      v15 = lzma_vli_size(a4);
      v16 = ((v13 + a3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + v9[1] + v9[20] + 24;
      if (v16 >= 0)
      {
        v28 = v13;
        v29 = v13 + a3;
        v26 = v9[11] + 1;
        v30 = (v15 + v14);
        v27 = v9[12];
        if ((((v30 + 7 + v27 + lzma_vli_size(v26) + 1) & 0xFFFFFFFFFFFFFFFCLL) + v16) >= 0)
        {
          v17 = a1[7];
          v18 = a1[6] + 1;
          if (((v30 + 7 + v17 + lzma_vli_size(v18) + 1) & 0xFFFFFFFFFFFFFFFCLL) <= 0x400000000)
          {
            if (v10 && (v19 = v10[7] + 1, v19 < v10[6]))
            {
              v10[7] = v19;
              v21 = v26;
              v20 = v27;
            }

            else
            {
              v22 = lzma_alloc(16 * a1[8] + 64, a2);
              if (!v22)
              {
                return 5;
              }

              v10 = v22;
              v22[7] = 0;
              v23 = a1[8];
              a1[8] = 512;
              *v22 = v12;
              v22[1] = v28;
              v22[5] = v9[11] + 1;
              v22[6] = v23;
              index_tree_append((v9 + 7), v22);
              v19 = v10[7];
              v20 = v9[12];
              v17 = a1[7];
              v21 = v9[11] + 1;
              v18 = a1[6] + 1;
            }

            result = 0;
            v24 = &v10[2 * v19];
            v24[8] = v31;
            v24[9] = v29;
            v9[11] = v21;
            v9[12] = v20 + v30;
            v25 = a1[5] + ((a3 + 3) & 0x7FFFFFFFFFFFFFFCLL);
            a1[4] += a4;
            a1[5] = v25;
            a1[6] = v18;
            a1[7] = v17 + v30;
            return result;
          }
        }
      }
    }

    return 9;
  }

  return result;
}

uint64_t lzma_index_cat(int64x2_t *a1, uint64_t a2, uint64_t a3)
{
  result = 11;
  if (a1 && a2)
  {
    v7 = lzma_index_file_size(a1);
    if (lzma_index_file_size(a2) + v7 < 0)
    {
      return 9;
    }

    if (*(a2 + 32) + a1[2].i64[0] < 0)
    {
      return 9;
    }

    v8 = a1[3].i64[1];
    v9 = lzma_vli_size(a1[3].u64[0]) + 1;
    v10 = *(a2 + 56);
    if (((v8 + v10 + v9 + lzma_vli_size(*(a2 + 48)) + 1 + 11) & 0xFFFFFFFFFFFFFFFCLL) > 0x400000000)
    {
      return 9;
    }

    else
    {
      v11 = a1[1].i64[0];
      v12 = *(v11 + 72);
      if (v12)
      {
        v13 = v12[7] + 1;
        if (v13 < v12[6])
        {
          v14 = lzma_alloc(16 * v13 + 64, a3);
          if (!v14)
          {
            return 5;
          }

          v15 = v14;
          v16 = *v12;
          v17 = *(v12 + 1);
          v14[4] = v12[4];
          *v14 = v16;
          *(v14 + 1) = v17;
          v18 = v12[7];
          v14[7] = v18;
          v14[5] = v12[5];
          v14[6] = v18 + 1;
          memcpy(v14 + 8, v12 + 8, 16 * (v18 + 1));
          v19 = v12[2];
          if (v19)
          {
            *(v19 + 32) = v15;
          }

          if (*(v11 + 64) == v12)
          {
            *(v11 + 56) = v15;
            *(v11 + 64) = v15;
          }

          *(v11 + 72) = v15;
          lzma_free(v12, a3);
          v11 = a1[1].i64[0];
        }
      }

      v20 = a1[4].i32[2];
      if (*(v11 + 104) != -1)
      {
        v20 |= 1 << *(v11 + 120);
      }

      a1[4].i32[2] = v20;
      v22.i64[0] = a1[2].i64[0];
      v22.i64[1] = v7;
      v23 = a1[3].i64[0];
      v24 = 0;
      LODWORD(v24) = a1[1].i32[2];
      v25 = a1;
      index_cat_helper(&v22, *a2);
      v21 = vaddq_s64(a1[3], *(a2 + 48));
      a1[2] = vaddq_s64(a1[2], *(a2 + 32));
      a1[3] = v21;
      a1[4].i32[2] |= *(a2 + 72);
      lzma_free(a2, a3);
      return 0;
    }
  }

  return result;
}

uint64_t index_cat_helper(int64x2_t *a1, int64x2_t *a2)
{
  do
  {
    v4 = a2[2].i64[0];
    if (a2[1].i64[1])
    {
      index_cat_helper(a1);
    }

    *a2 = vaddq_s64(*a2, *a1);
    a2[2].i32[2] += a1[1].i32[2];
    a2[3].i64[0] += a1[1].i64[0];
    result = index_tree_append(a1[2].i64[0], a2);
    a2 = v4;
  }

  while (v4);
  return result;
}

uint64_t *lzma_index_dup(uint64_t a1, uint64_t a2)
{
  v4 = lzma_alloc(0x50uLL, a2);
  v5 = v4;
  if (v4)
  {
    *v4 = 0;
    v4[1] = 0;
    *(v4 + 6) = 0;
    v4[2] = 0;
    v4[8] = 512;
    *(v4 + 18) = 0;
    v6 = *(a1 + 48);
    *(v4 + 2) = *(a1 + 32);
    *(v4 + 3) = v6;
    v7 = *(a1 + 8);
    v8 = v7 + 11;
    if (v7[11] <= 0xFFFFFFFFFFFFFFBLL)
    {
      do
      {
        v11 = *v7;
        v10 = v7[1];
        v12 = *(v7 + 10);
        v13 = v7[6];
        v14 = lzma_alloc(0xA8uLL, a2);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        *v14 = v11;
        *(v14 + 1) = v10;
        *(v14 + 3) = 0;
        *(v14 + 4) = 0;
        *(v14 + 2) = 0;
        *(v14 + 10) = v12;
        *(v14 + 6) = v13;
        *(v14 + 7) = 0;
        v16 = (v14 + 56);
        *(v14 + 8) = 0;
        *(v14 + 9) = 0;
        *(v14 + 20) = 0;
        v17 = *v8;
        v18 = v7[12];
        *(v14 + 11) = *v8;
        *(v14 + 12) = v18;
        v19 = *(v7 + 13);
        v20 = *(v7 + 15);
        v21 = *(v7 + 17);
        *(v14 + 19) = v7[19];
        *(v14 + 136) = v21;
        *(v14 + 120) = v20;
        *(v14 + 104) = v19;
        *(v14 + 20) = v7[20];
        if (v7[8])
        {
          v22 = lzma_alloc(16 * v17 + 64, a2);
          if (!v22)
          {
            index_stream_end(v15, a2);
            break;
          }

          v23 = v22;
          v24 = 0;
          *v22 = 0;
          v22[1] = 0;
          v22[5] = 1;
          v25 = *v8 - 1;
          v22[6] = *v8;
          v22[7] = v25;
          v26 = v7[8];
          v27 = v22 + 8;
LABEL_9:
          while (1)
          {
            memcpy(&v27[2 * v24], v26 + 8, 16 * v26[7] + 16);
            v24 += v26[7] + 1;
            v28 = v26[4];
            v29 = v26;
            if (!v28)
            {
              break;
            }

            do
            {
              v26 = v28;
              v28 = v28[3];
            }

            while (v28);
          }

          while (1)
          {
            v26 = v29[2];
            if (!v26)
            {
              break;
            }

            v30 = v26[4] == v29;
            v29 = v29[2];
            if (!v30)
            {
              goto LABEL_9;
            }
          }

          index_tree_append(v16, v23);
        }

        index_tree_append(v5, v15);
        v31 = v7[4];
        if (!v31)
        {
          while (1)
          {
            v32 = v7[2];
            if (!v32)
            {
              return v5;
            }

            v30 = v32[4] == v7;
            v7 = v7[2];
            if (!v30)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v32 = v31;
          v31 = v31[3];
        }

        while (v31);
LABEL_21:
        v8 = v32 + 11;
        v7 = v32;
      }

      while (v32[11] <= 0xFFFFFFFFFFFFFFBLL);
    }

    lzma_index_end(v5, a2);
    return 0;
  }

  return v5;
}

double lzma_index_iter_init(uint64_t a1, uint64_t a2)
{
  *(a1 + 256) = a2;
  result = 0.0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return result;
}

double lzma_index_iter_rewind(uint64_t a1)
{
  result = 0.0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return result;
}

uint64_t lzma_index_iter_next(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return 1;
  }

  v3 = *(a1 + 264);
  v4 = *(a1 + 280);
  if (a2 == 1)
  {
LABEL_4:
    v5 = 0;
    goto LABEL_17;
  }

  v6 = *(a1 + 288);
  if (v6 == 2)
  {
    v7 = (v3 + 64);
    goto LABEL_16;
  }

  if (v6 != 1)
  {
    if (v6)
    {
      goto LABEL_4;
    }

    v7 = (a1 + 272);
LABEL_16:
    v5 = *v7;
    goto LABEL_17;
  }

  v8 = *(a1 + 272);
  v9 = *(v8 + 32);
  if (v9)
  {
    do
    {
      v5 = v9;
      v9 = v9[3];
    }

    while (v9);
  }

  else
  {
    do
    {
      v5 = *(v8 + 16);
      if (!v5)
      {
        break;
      }

      v10 = v5[4] == v8;
      v8 = *(v8 + 16);
    }

    while (v10);
  }

LABEL_17:
  while (v3)
  {
    if (!v5)
    {
      goto LABEL_35;
    }

    if (v4 >= v5[7])
    {
      v4 = v5[4];
      if (!v4)
      {
        while (1)
        {
          v13 = v5[2];
          if (!v13)
          {
            break;
          }

          v10 = v13[4] == v5;
          v5 = v5[2];
          if (!v10)
          {
            v4 = 0;
            v5 = v13;
            goto LABEL_43;
          }
        }

LABEL_35:
        while (1)
        {
          v14 = *(v3 + 32);
          v15 = v3;
          if (!v14)
          {
            break;
          }

          do
          {
            v3 = v14;
            v14 = *(v14 + 24);
          }

          while (v14);
LABEL_40:
          if (a2 < 2)
          {
            goto LABEL_50;
          }

          v5 = *(v3 + 64);
          if (v5)
          {
            goto LABEL_42;
          }
        }

        while (1)
        {
          v3 = *(v15 + 16);
          if (!v3)
          {
            return 1;
          }

          v10 = *(v3 + 32) == v15;
          v15 = *(v15 + 16);
          if (!v10)
          {
            goto LABEL_40;
          }
        }
      }

      do
      {
        v5 = v4;
        v4 = *(v4 + 24);
      }

      while (v4);
    }

    else
    {
      ++v4;
    }

LABEL_43:
    if (a2 != 3)
    {
      goto LABEL_51;
    }

    if (v4)
    {
      if (v5[2 * v4 + 6] != v5[2 * v4 + 8])
      {
        goto LABEL_51;
      }
    }

    else if (*v5 != v5[8])
    {
      v4 = 0;
      goto LABEL_51;
    }
  }

  v3 = *(*(a1 + 256) + 8);
  if (a2 >= 2)
  {
    while (1)
    {
LABEL_22:
      v5 = *(v3 + 64);
      if (v5)
      {
LABEL_42:
        v4 = 0;
        goto LABEL_43;
      }

      v11 = *(v3 + 32);
      v12 = v3;
      if (!v11)
      {
        break;
      }

      do
      {
        v3 = v11;
        v11 = *(v11 + 24);
      }

      while (v11);
    }

    while (1)
    {
      v3 = *(v12 + 16);
      if (!v3)
      {
        return 1;
      }

      v10 = *(v3 + 32) == v12;
      v12 = *(v12 + 16);
      if (!v10)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_50:
  v4 = 0;
  v5 = *(v3 + 64);
LABEL_51:
  *(a1 + 264) = v3;
  *(a1 + 272) = v5;
  *(a1 + 280) = v4;
  iter_set_info(a1);
  return 0;
}

uint64_t iter_set_info(uint64_t **a1)
{
  v3 = a1[33];
  v2 = a1[34];
  if (v2)
  {
    if (a1[32][2] == v3 && v3[9] == v2)
    {
      if (v3[8] == v2)
      {
        a1[36] = 2;
        a1[34] = 0;
      }

      else
      {
        a1[36] = 1;
        a1[34] = v2[2];
      }
    }

    else
    {
      a1[36] = 0;
    }
  }

  else
  {
    a1[36] = 2;
  }

  v4 = a1[35];
  v5 = v3[11];
  a1[4] = *(v3 + 10);
  a1[5] = v5;
  v7 = *v3;
  v6 = v3[1];
  a1[6] = v6;
  a1[7] = v7;
  v8 = v3 + 13;
  if (*(v3 + 26) == -1)
  {
    v8 = 0;
  }

  *a1 = v8;
  a1[10] = v3[20];
  v9 = v3[9];
  if (v9)
  {
    v10 = v3[12];
    result = lzma_vli_size(v5);
    v12 = *(v9 + 16 * *(v9 + 56) + 64);
    v13 = ((v10 + (result + 1) + 7) & 0xFFFFFFFFFFFFFFFCLL) + ((*(v9 + 16 * *(v9 + 56) + 72) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    result = lzma_vli_size(0);
    v12 = 0;
    v13 = ((result + 1) + 7) & 0x1FFFFFFFCLL;
  }

  a1[8] = (v13 + 24);
  a1[9] = v12;
  if (v2)
  {
    v14 = (v4 + v2[5]);
    a1[18] = v14;
    a1[15] = (v14 + v3[6]);
    if (v4)
    {
      v15 = v4 - 1;
      v16 = (v2[2 * (v4 - 1) + 9] + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v16 = v2[1];
      v15 = -1;
    }

    a1[19] = v16;
    v17 = &v2[2 * v15 + 8];
    if (!v4)
    {
      v17 = v2;
    }

    v18 = *v17;
    v19 = &v2[2 * v4 + 8];
    v20 = (*v19 - v18);
    v21 = v19[1] - v16;
    a1[21] = v20;
    a1[22] = v21;
    a1[23] = ((v21 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v22 = v16 + 12;
    a1[19] = v22;
    a1[20] = v18;
    a1[16] = (v6 + v22);
    a1[17] = (v7 + v18);
  }

  return result;
}

uint64_t lzma_index_iter_locate(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 256);
  if (*(v2 + 32) <= a2)
  {
    return 1;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    do
    {
      if (*v3 > a2)
      {
        v5 = 3;
      }

      else
      {
        v4 = v3;
        v5 = 4;
      }

      v3 = v3[v5];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = a2 - *v4;
  v8 = v4[7];
  if (v8)
  {
    v9 = 0;
    do
    {
      if (*v8 > v7)
      {
        v10 = 3;
      }

      else
      {
        v9 = v8;
        v10 = 4;
      }

      v8 = v8[v10];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v11 = v9[7];
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = v12 + ((v11 - v12) >> 1);
      if (v9[2 * v13 + 8] > v7)
      {
        v11 = v12 + ((v11 - v12) >> 1);
      }

      else
      {
        v12 = v13 + 1;
      }
    }

    while (v12 < v11);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 264) = v4;
  *(a1 + 272) = v9;
  *(a1 + 280) = v12;
  iter_set_info(a1);
  return 0;
}

uint64_t index_tree_node_end(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v5 = *(a1 + 24);
  v8 = a3;
  if (v5)
  {
    index_tree_node_end(v5, a2, a3);
    a3 = v8;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    index_tree_node_end(v6, a2, v8);
    a3 = v8;
  }

  return a3(a1, a2);
}

uint64_t lzma_stream_flags_compare(uint64_t a1, uint64_t a2)
{
  if (*a1 || *a2)
  {
    return 8;
  }

  v3 = *(a1 + 16);
  if (v3 > 0xF)
  {
    return 11;
  }

  v4 = *(a2 + 16);
  if (v4 > 0xF)
  {
    return 11;
  }

  if (v3 != v4)
  {
    return 9;
  }

  v5 = *(a1 + 8);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (v6 == -1)
  {
    return 0;
  }

  result = 11;
  if ((v5 - 4) < 0x3FFFFFFFDLL && (v5 & 3) == 0 && (v6 - 4) < 0x3FFFFFFFDLL && (v6 & 3) == 0)
  {
    if (v5 == v6)
    {
      return 0;
    }

    return 9;
  }

  return result;
}

uint64_t lzma_vli_size(unint64_t a1)
{
  v1 = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
    do
    {
      v1 = (v1 + 1);
      v2 = a1 > 0x7F;
      a1 >>= 7;
    }

    while (v2);
  }

  return v1;
}

uint64_t lzma_alone_encoder(void *a1, _DWORD *a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = alone_encoder_init(a1[7], a1[6], a2);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      v5 = a1[7];
      *(v5 + 96) = 1;
      *(v5 + 99) = 1;
    }
  }

  return v4;
}

uint64_t alone_encoder_init(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v16[6] = *MEMORY[0x29EDCA608];
  if (*(a1 + 16) != alone_encoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = alone_encoder_init;
  v6 = *a1;
  if (!*a1)
  {
    v7 = lzma_alloc(0x70uLL, a2);
    if (!v7)
    {
      result = 5;
      goto LABEL_14;
    }

    v6 = v7;
    *a1 = v7;
    *(a1 + 24) = alone_encode;
    *(a1 + 32) = alone_encoder_end;
    *v7 = 0;
    v7[1] = -1;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
  }

  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  if ((lzma_lzma_lclppb_encode(a3, (v6 + 96)) & 1) != 0 || *a3 < 0x1000u)
  {
    result = 8;
  }

  else
  {
    v10 = (*a3 - 1) | ((*a3 - 1) >> 2) | (((*a3 - 1) | ((*a3 - 1) >> 2)) >> 3);
    v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
    v12 = v11 | HIWORD(v11);
    v13 = __CFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      v14 = -1;
    }

    *(v6 + 97) = v14;
    *(v6 + 101) = -1;
    v16[0] = 0x4000000000000001;
    v16[1] = lzma_lzma_encoder_init;
    v16[2] = a3;
    memset(&v16[3], 0, 24);
    result = lzma_next_filter_init(v6, a2, v16, v8);
  }

LABEL_14:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t alone_encode(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unint64_t a8)
{
  if (*a7 >= a8)
  {
    return 0;
  }

  v16 = *(a1 + 20);
  while (!v16)
  {
    lzma_bufcpy((a1 + 12), a1 + 11, 13, a6, a7, a8);
    if (a1[11] >= 0xD)
    {
      v16 = 1;
      *(a1 + 20) = 1;
      if (*a7 < a8)
      {
        continue;
      }
    }

    return 0;
  }

  if (v16 != 1)
  {
    return 11;
  }

  v18 = a1[3];
  v19 = *a1;

  return v18(v19, a2, a3, a4, a5, a6, a7, a8);
}

void alone_encoder_end(void *a1, uint64_t a2)
{
  lzma_next_end(a1, a2);

  lzma_free(a1, a2);
}

unint64_t lzma_block_buffer_bound64(unint64_t a1)
{
  if (a1 <= 0x7FFFFFFFFFFFFBBCLL && (v1 = 3 * ((a1 + 0xFFFF) >> 16), 0x7FFFFFFFFFFFFBBBLL - v1 >= a1))
  {
    return ((a1 + v1 + 4) & 0xFFFFFFFFFFFFFFFCLL) + 92;
  }

  else
  {
    return 0;
  }
}

unint64_t lzma_block_buffer_bound(unint64_t a1)
{
  if (a1 <= 0x7FFFFFFFFFFFFBBCLL && (v1 = 3 * ((a1 + 0xFFFF) >> 16), 0x7FFFFFFFFFFFFBBBLL - v1 >= a1))
  {
    return ((a1 + v1 + 4) & 0xFFFFFFFFFFFFFFFCLL) + 92;
  }

  else
  {
    return 0;
  }
}

uint64_t block_buffer_encode(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, uint64_t a5, uint64_t *a6, unint64_t a7, int a8)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = 11;
    goto LABEL_12;
  }

  if (a4)
  {
    v11 = a3 == 0;
  }

  else
  {
    v11 = 0;
  }

  result = 11;
  if (!v11)
  {
    if (a5)
    {
      if (a6)
      {
        v16 = *a6;
        if (a7 >= *a6)
        {
          if (*a1 > 1u)
          {
            result = 8;
            goto LABEL_12;
          }

          v18 = *(a1 + 8);
          if (v18 <= 0xF && (!a8 || *(a1 + 32)))
          {
            if (!lzma_check_is_supported(*(a1 + 8)))
            {
              result = 3;
              goto LABEL_12;
            }

            v21 = a7 - ((a7 - v16) & 3);
            v22 = lzma_check_size(v18);
            if (v21 - v16 <= v22)
            {
              result = 10;
              goto LABEL_12;
            }

            *(a1 + 24) = a4;
            if (a4 > 0x7FFFFFFFFFFFFBBCLL || (v23 = 3 * ((a4 + 0xFFFF) >> 16), 0x7FFFFFFFFFFFFBBBLL - v23 < a4))
            {
              *(a1 + 16) = 0;
              result = 9;
              goto LABEL_12;
            }

            v24 = v22;
            v25 = v21 - v22;
            *(a1 + 16) = a4 + v23 + 1;
            if (a8)
            {
              result = block_encode_normal(a1, a2, a3, a4, a5, a6, v25);
              if (!result)
              {
LABEL_27:
                v26 = *(a1 + 16);
                if ((v26 & 3) != 0)
                {
                  v27 = v26 + 1;
                  do
                  {
                    v28 = (*a6)++;
                    *(a5 + v28) = 0;
                    v11 = (v27++ & 3) == 0;
                  }

                  while (!v11);
                }

                if (v24)
                {
                  v30 = 0;
                  memset(v29, 0, sizeof(v29));
                  lzma_check_init(v29, *(a1 + 8));
                  lzma_check_update(v29, *(a1 + 8), a3, a4);
                  lzma_check_finish(v29, *(a1 + 8));
                  memcpy((a1 + 40), v29, v24);
                  memcpy((a5 + *a6), v29, v24);
                  result = 0;
                  *a6 += v24;
                }

                else
                {
                  result = 0;
                }

                goto LABEL_12;
              }

              if (result != 10)
              {
                goto LABEL_12;
              }
            }

            result = block_encode_uncompressed(a1, a3, a4, a5, a6, v25);
            if (result)
            {
              goto LABEL_12;
            }

            goto LABEL_27;
          }
        }
      }
    }
  }

LABEL_12:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t block_encode_normal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = lzma_block_header_size(a1);
  if (!v14)
  {
    v15 = *a6;
    v16 = *(a1 + 4);
    if (a7 - *a6 <= v16)
    {
      return 10;
    }

    else
    {
      v17 = v15 + v16;
      *a6 = v15 + v16;
      v20 = *(a1 + 16);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22[0] = 0;
      v22[1] = -1;
      v14 = lzma_raw_encoder_init(v22, a2, *(a1 + 32));
      if (!v14)
      {
        if (a7 - v17 <= v20)
        {
          v18 = a7;
        }

        else
        {
          v18 = v20 + v17;
        }

        v21 = 0;
        v14 = (*(&v23 + 1))(v22[0], a2, a3, &v21, a4, a5, a6, v18, 3);
      }

      lzma_next_end(v22, a2);
      if (v14)
      {
        if (v14 == 1)
        {
          *(a1 + 16) = *a6 - (v15 + *(a1 + 4));
          if (!lzma_block_header_encode(a1, (a5 + v15)))
          {
            return 0;
          }

          v14 = 11;
        }
      }

      else
      {
        v14 = 10;
      }

      *a6 = v15;
    }
  }

  return v14;
}

uint64_t block_encode_uncompressed(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v23[4] = *MEMORY[0x29EDCA608];
  memset(v22, 0, sizeof(v22));
  LODWORD(v22[0]) = 4096;
  v23[0] = 33;
  v23[1] = v22;
  v23[2] = -1;
  v12 = *(a1 + 32);
  *(a1 + 32) = v23;
  if (lzma_block_header_size(a1))
  {
    *(a1 + 32) = v12;
LABEL_3:
    result = 11;
    goto LABEL_14;
  }

  if (a6 - *a5 < *(a1 + 16) + *(a1 + 4))
  {
    *(a1 + 32) = v12;
    result = 10;
    goto LABEL_14;
  }

  v14 = lzma_block_header_encode(a1, (a4 + *a5));
  *(a1 + 32) = v12;
  if (v14)
  {
    goto LABEL_3;
  }

  v15 = *a5 + *(a1 + 4);
  if (a3)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      *a5 = v15 + 1;
      *(a4 + v15) = v17;
      if (a3 - v16 >= 0x10000)
      {
        v18 = 0x10000;
      }

      else
      {
        v18 = a3 - v16;
      }

      v19 = (*a5)++;
      *(a4 + v19) = (v18 - 1) >> 8;
      v20 = (*a5)++;
      *(a4 + v20) = v18 - 1;
      memcpy((a4 + *a5), (a2 + v16), v18);
      v16 += v18;
      v15 = *a5 + v18;
      *a5 = v15;
      v17 = 2;
    }

    while (v16 < a3);
  }

  result = 0;
  *a5 = v15 + 1;
  *(a4 + v15) = 0;
LABEL_14:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lzma_block_encoder_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) != lzma_block_encoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = lzma_block_encoder_init;
  if (!a3)
  {
    return 11;
  }

  if (*a3 > 1u)
  {
    return 8;
  }

  v7 = *(a3 + 8);
  if (v7 > 0xF)
  {
    return 11;
  }

  if (!lzma_check_is_supported(*(a3 + 8)))
  {
    return 3;
  }

  v8 = *a1;
  if (!*a1)
  {
    v9 = lzma_alloc(0x120uLL, a2);
    if (!v9)
    {
      return 5;
    }

    v8 = v9;
    *a1 = v9;
    *(a1 + 24) = block_encode;
    *(a1 + 32) = block_encoder_end;
    *(a1 + 64) = block_encoder_update;
    *v9 = 0;
    v9[1] = -1;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    *(v9 + 3) = 0u;
    *(v9 + 4) = 0u;
    v7 = *(a3 + 8);
  }

  *(v8 + 88) = 0;
  *(v8 + 80) = a3;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  lzma_check_init(v8 + 120, v7);
  v10 = *(a3 + 32);

  return lzma_raw_encoder_init(v8, a2, v10);
}

uint64_t block_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, unint64_t a8, int a9)
{
  v9 = *a4;
  if ((*(a1 + 104) ^ 0x7FFFFFFFFFFFFFFFuLL) < a5 - *a4)
  {
    return 9;
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    if (v15 == 2)
    {
      goto LABEL_15;
    }

    if (v15 != 1)
    {
      return 11;
    }

    v16 = *(a1 + 96);
LABEL_7:
    if ((v16 & 3) != 0)
    {
      v17 = *a7;
      v18 = a8 - *a7;
      if (a8 < *a7)
      {
        v18 = 0;
      }

      v19 = (a6 + v17);
      v20 = v17 + 1;
      v21 = v16 + 1;
      while (v18)
      {
        *v19++ = 0;
        *a7 = v20;
        --v18;
        ++v20;
        *(a1 + 96) = v21;
        if (!(v21++ & 3))
        {
          goto LABEL_13;
        }
      }

      return 0;
    }

LABEL_13:
    v23 = *(*(a1 + 80) + 8);
    if (!v23)
    {
      return 1;
    }

    lzma_check_finish(a1 + 120, v23);
    *(a1 + 88) = 2;
LABEL_15:
    v24 = lzma_check_size(*(*(a1 + 80) + 8));
    lzma_bufcpy(a1 + 120, (a1 + 112), v24, a6, a7, a8);
    if (*(a1 + 112) < v24)
    {
      return 0;
    }

    memcpy((*(a1 + 80) + 40), (a1 + 120), v24);
    return 1;
  }

  v27 = *a7;
  v28 = (*(a1 + 24))(*a1);
  v29 = *a7 - v27;
  v30 = *(a1 + 96);
  if (0x7FFFFFFFFFFFFBBCLL - v30 < v29)
  {
    return 9;
  }

  v10 = v28;
  v31 = *a4;
  v32 = *a4 - v9;
  v33 = v30 + v29;
  v34 = *(a1 + 104) + v32;
  *(a1 + 96) = v33;
  *(a1 + 104) = v34;
  if (v31 != v9)
  {
    lzma_check_update(a1 + 120, *(*(a1 + 80) + 8), (a3 + v9), v32);
  }

  if (a9 != 1 && v10 == 1)
  {
    v35 = *(a1 + 96);
    *(*(a1 + 80) + 16) = v35;
    *(a1 + 88) = 1;
    v16 = v35;
    goto LABEL_7;
  }

  return v10;
}

void block_encoder_end(void *a1, uint64_t a2)
{
  lzma_next_end(a1, a2);

  lzma_free(a1, a2);
}

uint64_t block_encoder_update(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 88))
  {
    return 11;
  }

  else
  {
    return lzma_next_filter_update(a1, a2, a4);
  }
}

uint64_t lzma_block_encoder(void *a1, uint64_t a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = lzma_block_encoder_init(a1[7], a1[6], a2);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      v5 = a1[7];
      *(v5 + 96) = 257;
      *(v5 + 99) = 1;
    }
  }

  return v4;
}

uint64_t lzma_block_header_size(uint64_t a1)
{
  if (*a1 > 1u)
  {
    return 8;
  }

  v16 = v1;
  v17 = v2;
  v5 = *(a1 + 16);
  v6 = 6;
  if (v5 == -1 || ((v7 = lzma_vli_size(*(a1 + 16)), !v5) ? (v6 = 6) : (v6 = v7 + 6), (result = 11, v5) && v7))
  {
    v8 = *(a1 + 24);
    if (v8 != -1)
    {
      v9 = lzma_vli_size(v8);
      if (!v9)
      {
        return 11;
      }

      v6 += v9;
    }

    v10 = *(a1 + 32);
    if (v10 && *v10 != -1)
    {
      v11 = 0;
      for (i = 16; i != 80; i += 16)
      {
        v15 = 0;
        result = lzma_filter_flags_size(&v15, v10);
        if (result)
        {
          return result;
        }

        ++v11;
        v6 += v15;
        v13 = *(a1 + 32);
        v10 = (v13 + 16 * v11);
        v14 = *(v13 + i);
        if (v14 == -1)
        {
          result = 0;
          *(a1 + 4) = (v6 + 3) & 0xFFFFFFFC;
          return result;
        }
      }
    }

    return 11;
  }

  return result;
}

uint64_t lzma_block_header_encode(uint64_t a1, char *a2)
{
  if (lzma_block_unpadded_size(a1) && *(a1 + 24) >= -1)
  {
    v4 = (*(a1 + 4) - 4);
    *a2 = v4 >> 2;
    a2[1] = 0;
    v13 = 2;
    v5 = *(a1 + 16);
    if (v5 != -1)
    {
      result = lzma_vli_encode(v5, 0, a2, &v13, v4);
      if (result)
      {
        return result;
      }

      a2[1] |= 0x40u;
    }

    v7 = *(a1 + 24);
    if (v7 != -1)
    {
      result = lzma_vli_encode(v7, 0, a2, &v13, v4);
      if (result)
      {
        return result;
      }

      a2[1] |= 0x80u;
    }

    v8 = *(a1 + 32);
    if (v8 && *v8 != -1)
    {
      v9 = 0;
      v10 = -1;
      while (v10 != 3)
      {
        result = lzma_filter_flags_encode(&v8[v9], a2, &v13, v4);
        if (result)
        {
          return result;
        }

        v8 = *(a1 + 32);
        v11 = v8[v9 + 2];
        ++v10;
        v9 += 2;
        if (v11 == -1)
        {
          a2[1] |= v10;
          bzero(&a2[v13], v4 - v13);
          v12 = lzma_crc32(a2, v4, 0);
          result = 0;
          *&a2[v4] = v12;
          return result;
        }
      }
    }
  }

  return 11;
}

uint64_t lzma_easy_buffer_encode(int a1, unsigned int a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t *a7, unint64_t a8)
{
  memset(v16, 0, sizeof(v16));
  if (lzma_easy_preset(v16, a1))
  {
    return 8;
  }

  else
  {
    return lzma_stream_buffer_encode(v16, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t lzma_easy_encoder(void *a1, int a2, int a3)
{
  memset(v6, 0, sizeof(v6));
  if (lzma_easy_preset(v6, a2))
  {
    return 8;
  }

  else
  {
    return lzma_stream_encoder(a1, v6, a3);
  }
}

uint64_t lzma_easy_encoder_memusage(int a1)
{
  memset(v2, 0, sizeof(v2));
  if (lzma_easy_preset(v2, a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return lzma_raw_encoder_memusage(v2);
  }
}

uint64_t lzma_microlzma_encoder(void *a1, _DWORD *a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = microlzma_encoder_init(a1[7], a1[6], a2);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      *(a1[7] + 99) = 1;
    }
  }

  return v4;
}

uint64_t microlzma_encoder_init(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11[6] = *MEMORY[0x29EDCA608];
  if (*(a1 + 16) != microlzma_encoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = microlzma_encoder_init;
  v6 = *a1;
  if (!*a1)
  {
    v7 = lzma_alloc(0x58uLL, a2);
    if (!v7)
    {
      result = 5;
      goto LABEL_10;
    }

    v6 = v7;
    *a1 = v7;
    *(a1 + 24) = microlzma_encode;
    *(a1 + 32) = microlzma_encoder_end;
    *v7 = 0;
    v7[1] = -1;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
  }

  if (lzma_lzma_lclppb_encode(a3, (v6 + 80)))
  {
    result = 8;
  }

  else
  {
    v11[0] = 0x4000000000000001;
    v11[1] = lzma_lzma_encoder_init;
    v11[2] = a3;
    memset(&v11[3], 0, 24);
    result = lzma_next_filter_init(v6, a2, v11, v8);
  }

LABEL_10:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t microlzma_encode(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, int a9)
{
  v17 = *a7;
  v18 = *a4;
  v20 = 0;
  if ((a1[9])(*a1, &v20, a8 - v17))
  {
    return 11;
  }

  result = (a1[3])(*a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (!result)
  {
    return 11;
  }

  if (result == 1)
  {
    *(a6 + v17) = ~*(a1 + 80);
    *a4 = v20 + v18;
  }

  return result;
}

void microlzma_encoder_end(void *a1, uint64_t a2)
{
  lzma_next_end(a1, a2);

  lzma_free(a1, a2);
}

uint64_t lzma_raw_buffer_encode(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, unint64_t a7)
{
  if (a4)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8 || a5 == 0 || a6 == 0;
  if (v10 || *a6 > a7)
  {
    return 11;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20[0] = 0;
  v20[1] = -1;
  result = lzma_raw_encoder_init(v20, a2, a1);
  if (!result)
  {
    v17 = *a6;
    v19 = 0;
    v18 = (*(&v21 + 1))(v20[0], a2, a3, &v19, a4, a5, a6, a7, 3);
    lzma_next_end(v20, a2);
    if (v18 == 1)
    {
      return 0;
    }

    else
    {
      if (v18)
      {
        result = v18;
      }

      else
      {
        result = 10;
      }

      *a6 = v17;
    }
  }

  return result;
}

BOOL lzma_filter_encoder_is_supported(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = encoders[v1];
    if (v2 == a1)
    {
      break;
    }

    v3 = v1 == 70;
    v1 += 7;
  }

  while (!v3);
  return v2 == a1;
}

uint64_t *encoder_find(uint64_t a1)
{
  result = encoders;
  v3 = 11;
  while (*result != a1)
  {
    result += 7;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t lzma_filters_update(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 56) + 64))
  {
    if (lzma_raw_coder_memusage(encoder_find, a2) == -1)
    {
      result = 8;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = a2[v5 + 2];
        v5 += 2;
        ++v4;
      }

      while (v6 != -1);
      if (v4)
      {
        v7 = &v12[v5 * 8 - 16];
        v8 = a2;
        do
        {
          v9 = *v8;
          v8 += 2;
          *v7-- = v9;
          --v4;
        }

        while (v4);
      }

      *&v12[v5 * 8] = -1;
      result = (*(*(a1 + 56) + 64))(**(a1 + 56), *(a1 + 48), a2, v12);
    }
  }

  else
  {
    result = 11;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lzma_raw_encoder(void *a1, uint64_t *a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = lzma_raw_coder_init(a1[7], a1[6], a2, encoder_find, 1);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      v5 = a1[7];
      *(v5 + 96) = 257;
      *(v5 + 99) = 1;
    }
  }

  return v4;
}

unint64_t lzma_mt_block_size(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != -1)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = encoders;
      if (v1 != 0x4000000000000001)
      {
        v5 = encoders;
        do
        {
          v6 = v5[7];
          v5 += 7;
        }

        while (v6 != v1);
      }

      v7 = v5[3];
      if (v7)
      {
        v8 = v7(a1[2 * v4 + 1]);
        if (v8 > v3)
        {
          v3 = v8;
        }

        if (!v8)
        {
          break;
        }
      }

      ++v4;
      v1 = a1[2 * v4];
      if (v1 == -1)
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t lzma_properties_size(int *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = &dword_2A1F2DCB0;
  v4 = 11;
  while (*(v3 - 5) != v2)
  {
    v3 += 14;
    if (!--v4)
    {
      if (v2 < 0)
      {
        return 11;
      }

      else
      {
        return 8;
      }
    }
  }

  v6 = *(v3 - 1);
  if (v6)
  {
    return v6(a1, a2[1]);
  }

  v5 = 0;
  *a1 = *v3;
  return v5;
}

uint64_t lzma_properties_encode(void *a1)
{
  v1 = encoders;
  v2 = 11;
  while (*v1 != *a1)
  {
    v1 += 7;
    if (!--v2)
    {
      return 11;
    }
  }

  v4 = v1[6];
  if (v4)
  {
    return v4(a1[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t lzma_filter_flags_size(int *a1, uint64_t *a2)
{
  if (*a2 >> 62)
  {
    return 11;
  }

  result = lzma_properties_size(a1, a2);
  if (!result)
  {
    v5 = lzma_vli_size(*a2);
    v6 = *a1;
    v7 = lzma_vli_size(*a1);
    result = 0;
    *a1 = v6 + v5 + v7;
  }

  return result;
}

uint64_t lzma_filter_flags_encode(uint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = *a1;
  if (v5 >> 62)
  {
    return 11;
  }

  result = lzma_vli_encode(v5, 0, a2, a3, a4);
  if (!result)
  {
    v10 = 0;
    result = lzma_properties_size(&v10, a1);
    if (!result)
    {
      result = lzma_vli_encode(v10, 0, a2, a3, a4);
      if (!result)
      {
        if (a4 - *a3 < v10)
        {
          return 11;
        }

        result = lzma_properties_encode(a1);
        if (!result)
        {
          *a3 += v10;
        }
      }
    }
  }

  return result;
}

uint64_t lzma_index_encoder_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) != lzma_index_encoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = lzma_index_encoder_init;
  if (!a3)
  {
    return 11;
  }

  v6 = *a1;
  if (*a1)
  {
LABEL_7:
    lzma_index_iter_init((v6 + 2), a3);
    result = 0;
    *v6 = 0;
    v6[1] = a3;
    v6[40] = 0;
    *(v6 + 82) = 0;
    return result;
  }

  v7 = lzma_alloc(0x150uLL, a2);
  *a1 = v7;
  if (v7)
  {
    v6 = v7;
    *(a1 + 24) = index_encode;
    *(a1 + 32) = index_encoder_end;
    goto LABEL_7;
  }

  return 5;
}

uint64_t index_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, unint64_t a8)
{
  v8 = *a7;
  if (*a7 >= a8)
  {
    return 0;
  }

  v14 = a1 + 16;
  v13 = *a1;
  v15 = *a1;
  v16 = *a7;
  while (v15 <= 3)
  {
    if ((v15 - 2) < 2)
    {
      if (v13 == 2)
      {
        goto LABEL_20;
      }

      v20 = 184;
      goto LABEL_21;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        return 11;
      }

      v17 = lzma_index_block_count(*(a1 + 8));
      v18 = lzma_vli_encode(v17, (a1 + 320), a6, a7, a8);
      if (v18 != 1)
      {
LABEL_25:
        v21 = v18;
LABEL_26:
        if (*a7 != v8)
        {
          *(a1 + 328) = lzma_crc32((a6 + v8), *a7 - v8, *(a1 + 328));
        }

        return v21;
      }

      *(a1 + 320) = 0;
      v13 = 4;
      *a1 = 4;
      v15 = 4;
    }

    else
    {
      *(a6 + v16) = 0;
      *a7 = v16 + 1;
      v13 = 1;
      *a1 = 1;
      v15 = 1;
    }

LABEL_23:
    v16 = *a7;
    if (*a7 >= a8)
    {
      v21 = 0;
      goto LABEL_26;
    }
  }

  if (v15 == 4)
  {
    if (!lzma_index_iter_next(v14, 2u))
    {
      *a1 = 2;
LABEL_20:
      v20 = 192;
LABEL_21:
      v18 = lzma_vli_encode(*(a1 + v20), (a1 + 320), a6, a7, a8);
      if (v18 != 1)
      {
        goto LABEL_25;
      }

      *(a1 + 320) = 0;
      v13 = *a1 + 1;
      *a1 = v13;
      v15 = v13;
      goto LABEL_23;
    }

    *(a1 + 320) = lzma_index_padding_size(*(a1 + 8));
    v13 = 5;
    *a1 = 5;
    goto LABEL_18;
  }

  if (v15 == 5)
  {
    v19 = *(a1 + 320);
    if (!v19)
    {
      *(a1 + 328) = lzma_crc32((a6 + v8), v16 - v8, *(a1 + 328));
      *a1 = 6;
      goto LABEL_31;
    }

    *(a1 + 320) = v19 - 1;
    *a7 = v16 + 1;
    *(a6 + v16) = 0;
LABEL_18:
    v15 = 5;
    goto LABEL_23;
  }

  if (v15 != 6)
  {
    return 11;
  }

LABEL_31:
  v22 = a8 - v16;
  v23 = (a6 + v16);
  v24 = v16 + 1;
  while (v22)
  {
    v25 = *(a1 + 320);
    *v23++ = *(a1 + 328) >> (8 * v25);
    *a7 = v24;
    *(a1 + 320) = v25 + 1;
    --v22;
    ++v24;
    if ((v25 + 1) >= 4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t lzma_index_encoder(void *a1, uint64_t a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = lzma_index_encoder_init(a1[7], a1[6], a2);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      v5 = a1[7];
      *(v5 + 96) = 1;
      *(v5 + 99) = 1;
    }
  }

  return v4;
}

uint64_t lzma_index_buffer_encode(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  result = 11;
  if (a1 && a2 && a3 && a4 >= *a3)
  {
    v9 = a4 - *a3;
    if (v9 >= lzma_index_size(a1))
    {
      v18 = 0u;
      memset(v17, 0, sizeof(v17));
      v16[0] = 0;
      lzma_index_iter_init(v17, a1);
      v16[1] = a1;
      *&v18 = 0;
      DWORD2(v18) = 0;
      v10 = *a3;
      v15 = index_encode(v16, v11, v12, v13, v14, a2, a3, a4);
      result = 0;
      if (v15 != 1)
      {
        *a3 = v10;
        return 11;
      }
    }

    else
    {
      return 10;
    }
  }

  return result;
}

int64_t lzma_stream_buffer_bound(unint64_t a1)
{
  v1 = lzma_block_buffer_bound(a1);
  if (v1 > 0x7FFFFFFFFFFFFFCFLL || v1 == 0)
  {
    return 0;
  }

  else
  {
    return v1 + 48;
  }
}

uint64_t lzma_stream_buffer_encode(unint64_t a1, unsigned int a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t *a7, unint64_t a8)
{
  v46 = *MEMORY[0x29EDCA608];
  v8 = 11;
  if (a1 && a2 <= 0xF)
  {
    v12 = a5 && a4 == 0;
    if (!v12 && a6 && a7)
    {
      v16 = *a7;
      v17 = a8 - *a7;
      if (a8 < *a7)
      {
        goto LABEL_10;
      }

      if (!lzma_check_is_supported(a2))
      {
        v8 = 3;
        goto LABEL_15;
      }

      if (v17 < 0x19)
      {
        v8 = 10;
        goto LABEL_15;
      }

      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      LODWORD(v29) = a2;
      if (lzma_stream_header_encode(&v28, a6 + v16))
      {
        goto LABEL_10;
      }

      v32 = v16 + 12;
      v22 = a8 - 12;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v33 = 0u;
      DWORD2(v33) = a2;
      v35 = a1;
      if (a5)
      {
        v23 = lzma_block_buffer_encode(&v33, a3, a4, a5, a6, &v32, v22);
        if (v23)
        {
          v8 = v23;
          goto LABEL_15;
        }

        v25 = lzma_index_init(a3);
        if (v25)
        {
          v24 = v25;
          v26 = lzma_block_unpadded_size(&v33);
          v27 = lzma_index_append(v24, a3, v26, *(&v34 + 1));
          if (v27)
          {
            v8 = v27;
            lzma_index_end(v24, a3);
            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v24 = lzma_index_init(a3);
        if (v24)
        {
LABEL_21:
          v8 = lzma_index_buffer_encode(v24, a6, &v32, v22);
          *(&v28 + 1) = lzma_index_size(v24);
          lzma_index_end(v24, a3);
          if (v8)
          {
            goto LABEL_15;
          }

          if (!lzma_stream_footer_encode(&v28, a6 + v32))
          {
            v8 = 0;
            *a7 = v32 + 12;
            goto LABEL_15;
          }

LABEL_10:
          v8 = 11;
          goto LABEL_15;
        }
      }

      v8 = 5;
    }
  }

LABEL_15:
  v20 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t lzma_stream_encoder(void *a1, uint64_t *a2, int a3)
{
  v6 = lzma_strm_init(a1);
  if (!v6)
  {
    v6 = stream_encoder_init(a1[7], a1[6], a2, a3);
    if (v6)
    {
      lzma_end(a1);
    }

    else
    {
      v7 = a1[7];
      *(v7 + 100) = 1;
      *(v7 + 96) = 16843009;
    }
  }

  return v6;
}

uint64_t stream_encoder_init(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*(a1 + 16) != stream_encoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = stream_encoder_init;
  if (!a3)
  {
    return 11;
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = *(v8 + 456);
  }

  else
  {
    v11 = lzma_alloc(0x5E0uLL, a2);
    if (!v11)
    {
      return 5;
    }

    v8 = v11;
    v9 = 0;
    *a1 = v8;
    *(a1 + 24) = stream_encode;
    *(a1 + 32) = stream_encoder_end;
    *(a1 + 64) = stream_encoder_update;
    *(v8 + 296) = -1;
    *(v8 + 8) = 0;
    *(v8 + 16) = -1;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 376) = 0;
    *(v8 + 384) = -1;
    *(v8 + 456) = 0;
    *(v8 + 392) = 0u;
    *(v8 + 408) = 0u;
    *(v8 + 424) = 0u;
    *(v8 + 440) = 0u;
  }

  *v8 = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = a4;
  lzma_index_end(v9, a2);
  v12 = lzma_index_init(a2);
  *(v8 + 456) = v12;
  if (!v12)
  {
    return 5;
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  LODWORD(v14) = a4;
  result = lzma_stream_header_encode(&v13, v8 + 480);
  if (!result)
  {
    *(v8 + 464) = xmmword_2990BAE40;
    return stream_encoder_update(v8, a2, a3, 0);
  }

  return result;
}

uint64_t stream_encode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, unint64_t a8, int a9)
{
  if (*a7 >= a8)
  {
    return 0;
  }

  v28 = v9;
  v29 = v10;
  v20 = a1 + 88;
  v19 = *a1;
  while (1)
  {
    result = 11;
    if (v19 <= 2)
    {
      break;
    }

    if (v19 == 3)
    {
      result = (*(a1 + 32))(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8, stream_encode_convert[a9]);
      if (a9 == 1)
      {
        return result;
      }

      if (result != 1)
      {
        return result;
      }

      v23 = lzma_block_unpadded_size(v20);
      result = lzma_index_append(*(a1 + 456), a2, v23, *(a1 + 112));
      if (result)
      {
        return result;
      }

      v19 = 1;
      goto LABEL_29;
    }

    if (v19 != 4)
    {
      if (v19 != 5)
      {
        return result;
      }

      goto LABEL_11;
    }

    result = (*(a1 + 400))(*(a1 + 376), a2, 0, 0, 0, a6, a7, a8, 0);
    if (result != 1)
    {
      return result;
    }

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    *(&v24 + 1) = lzma_index_size(*(a1 + 456));
    LODWORD(v25) = *(a1 + 96);
    if (lzma_stream_footer_encode(&v24, a1 + 480))
    {
      return 11;
    }

    *(a1 + 472) = 12;
    v19 = 5;
LABEL_29:
    *a1 = v19;
    if (*a7 >= a8)
    {
      return 0;
    }
  }

  if (!v19)
  {
    goto LABEL_11;
  }

  if (v19 != 1)
  {
    if (v19 != 2)
    {
      return result;
    }

LABEL_11:
    lzma_bufcpy(a1 + 480, (a1 + 464), *(a1 + 472), a6, a7, a8);
    if (*(a1 + 464) < *(a1 + 472))
    {
      return 0;
    }

    v22 = *a1;
    if (*a1 == 5)
    {
      return 1;
    }

    *(a1 + 464) = 0;
    v19 = v22 + 1;
    goto LABEL_29;
  }

  if (*a4 != a5)
  {
    if ((*(a1 + 4) & 1) == 0)
    {
      result = block_encoder_init(a1, a2);
      if (result)
      {
        return result;
      }
    }

    *(a1 + 4) = 0;
    if (lzma_block_header_encode(v20, (a1 + 480)))
    {
      return 11;
    }

    *(a1 + 472) = *(a1 + 92);
    v19 = 2;
    goto LABEL_29;
  }

  if (a9 == 3)
  {
    result = lzma_index_encoder_init(a1 + 376, a2, *(a1 + 456));
    if (result)
    {
      return result;
    }

    v19 = 4;
    goto LABEL_29;
  }

  return a9 != 0;
}

void stream_encoder_end(uint64_t a1, uint64_t a2)
{
  lzma_next_end(a1 + 8, a2);
  lzma_next_end(a1 + 376, a2);
  lzma_index_end(*(a1 + 456), a2);
  lzma_filters_free((a1 + 296), a2);

  lzma_free(a1, a2);
}

uint64_t stream_encoder_update(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v8 = lzma_filters_copy(a3, v15, a2);
  if (!v8)
  {
    if (*a1 > 1u)
    {
      if (*a1 > 3u)
      {
        v8 = 11;
        goto LABEL_10;
      }

      v9 = (*(a1 + 72))(*(a1 + 8), a2, a3, a4);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(a1 + 4) = 0;
      *(a1 + 120) = v15;
      v9 = block_encoder_init(a1, a2);
      *(a1 + 120) = a1 + 296;
      if (!v9)
      {
        *(a1 + 4) = 1;
LABEL_8:
        v10 = a1 + 296;
        lzma_filters_free(v10, a2);
        v8 = 0;
        v11 = v15[3];
        *(v10 + 32) = v15[2];
        *(v10 + 48) = v11;
        *(v10 + 64) = v15[4];
        v12 = v15[1];
        *v10 = v15[0];
        *(v10 + 16) = v12;
        goto LABEL_11;
      }
    }

    v8 = v9;
LABEL_10:
    lzma_filters_free(v15, a2);
  }

LABEL_11:
  v13 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t block_encoder_init(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = -1;
  *(a1 + 112) = -1;
  result = lzma_block_header_size(a1 + 88);
  if (!result)
  {

    return lzma_block_encoder_init(a1 + 8, a2, a1 + 88);
  }

  return result;
}

uint64_t lzma_stream_header_encode(_DWORD *a1, uint64_t a2)
{
  if (*a1)
  {
    return 8;
  }

  *a2 = 1484404733;
  *(a2 + 4) = 90;
  if (a1[4] > 0xFu)
  {
    return 11;
  }

  *(a2 + 6) = 0;
  v3 = a2 + 6;
  *(a2 + 7) = a1[4];
  v4 = lzma_crc32((a2 + 6), 2uLL, 0);
  result = 0;
  *(v3 + 2) = v4;
  return result;
}

uint64_t lzma_stream_footer_encode(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    return 8;
  }

  v3 = *(a1 + 8);
  if (v3 - 4 > 0x3FFFFFFFCLL || (*(a1 + 8) & 3) != 0)
  {
    return 11;
  }

  *(a2 + 4) = (v3 >> 2) - 1;
  if (*(a1 + 16) > 0xFu)
  {
    return 11;
  }

  *(a2 + 8) = 0;
  *(a2 + 9) = *(a1 + 16);
  v6 = lzma_crc32((a2 + 4), 6uLL, 0);
  result = 0;
  *a2 = v6;
  *(a2 + 10) = lzma_footer_magic;
  return result;
}

uint64_t lzma_vli_encode(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  v12 = 0;
  v6 = *a4;
  v7 = &v12;
  if (a2)
  {
    v7 = a2;
    result = 10;
  }

  else
  {
    result = 11;
  }

  if (v6 < a5)
  {
    result = 11;
    if ((a1 & 0x8000000000000000) == 0)
    {
      v9 = *v7;
      if (*v7 <= 8)
      {
        v10 = a1 >> (7 * v9);
        v11 = v9 + 1;
        do
        {
          if (v10 < 0x80)
          {
            *(a3 + v6) = v10;
            *a4 = v6 + 1;
            *v7 = v11;
            return v7 != &v12;
          }

          *(a3 + v6) = v10 | 0x80;
          *v7 = v11;
          v10 >>= 7;
          *a4 = ++v6;
          ++v11;
        }

        while (a5 != v6);
        if (v7 == &v12)
        {
          return 11;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t lzma_alone_decoder_init(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (*(a1 + 16) != lzma_alone_decoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = lzma_alone_decoder_init;
  v8 = *a1;
  if (!*a1)
  {
    v8 = lzma_alloc(0xE8uLL, a2);
    if (!v8)
    {
      return 5;
    }

    *a1 = v8;
    *(a1 + 24) = alone_decode;
    *(a1 + 32) = alone_decoder_end;
    *(a1 + 56) = alone_decoder_memconfig;
    *v8 = 0;
    v8[1] = -1;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
  }

  v9 = 0;
  *(v8 + 20) = 0;
  *(v8 + 84) = a4;
  *(v8 + 30) = 0;
  v8[16] = 0;
  *(v8 + 34) = 0;
  if (a3 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3;
  }

  v8[11] = 0;
  v8[12] = 0;
  v8[13] = v10;
  v8[14] = 0x8000;
  return v9;
}

uint64_t alone_decode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, uint64_t a6, unint64_t *a7, unint64_t a8, __n128 a9, int a10)
{
  v29[6] = *MEMORY[0x29EDCA608];
  if (*a7 >= a8)
  {
LABEL_30:
    result = 0;
  }

  else
  {
    v17 = *(a1 + 80);
    while (v17 != 4)
    {
      v18 = *a4;
      if (*a4 >= a5)
      {
        goto LABEL_30;
      }

      result = 11;
      if (v17 <= 1)
      {
        if (v17)
        {
          if (v17 != 1)
          {
            goto LABEL_31;
          }

          v20 = *(a1 + 88);
          v21 = *(a1 + 120) | (*(a3 + v18) << (8 * v20));
          *(a1 + 120) = v21;
          *(a1 + 88) = ++v20;
          if (v20 == 4)
          {
            if (*(a1 + 84) == 1 && v21 != -1)
            {
              v22 = (v21 - 1) | ((v21 - 1) >> 2) | (((v21 - 1) | ((v21 - 1) >> 2)) >> 3);
              v23 = v22 | (v22 >> 4) | ((v22 | (v22 >> 4)) >> 8);
              if ((v23 | HIWORD(v23)) + 1 != v21)
              {
                goto LABEL_32;
              }
            }

            *(a1 + 88) = 0;
            v17 = 2;
LABEL_17:
            *(a1 + 80) = v17;
          }

          else
          {
            v17 = 1;
          }

          *a4 = v18 + 1;
          continue;
        }

        if (lzma_lzma_lclppb_decode((a1 + 120), *(a3 + v18)))
        {
          goto LABEL_32;
        }

        v17 = 1;
        goto LABEL_17;
      }

      if (v17 == 2)
      {
        v25 = *(a1 + 88);
        v26 = (*(a3 + v18) << (8 * v25)) | *(a1 + 96);
        *a4 = v18 + 1;
        *(a1 + 88) = ++v25;
        *(a1 + 96) = v26;
        if (v25 < 8)
        {
          v17 = 2;
          continue;
        }

        if (*(a1 + 84) == 1 && v26 - 0x4000000000 < 0xFFFFFFBFFFFFFFFFLL)
        {
LABEL_32:
          result = 7;
          goto LABEL_31;
        }

        *(a1 + 168) = 1;
        *(a1 + 172) = v26;
        v24 = lzma_lzma_decoder_memusage((a1 + 120)) + 0x8000;
        *(a1 + 112) = v24;
        *(a1 + 88) = 0;
        *(a1 + 80) = 3;
      }

      else
      {
        if (v17 != 3)
        {
          goto LABEL_31;
        }

        v24 = *(a1 + 112);
      }

      if (v24 > *(a1 + 104))
      {
        result = 6;
        goto LABEL_31;
      }

      v29[0] = 0x4000000000000002;
      v29[1] = lzma_lzma_decoder_init;
      v29[2] = a1 + 120;
      memset(&v29[3], 0, 24);
      result = lzma_next_filter_init(a1, a2, v29, a9);
      if (result)
      {
        goto LABEL_31;
      }

      v17 = 4;
      *(a1 + 80) = 4;
    }

    result = (*(a1 + 24))(*a1, a2, a3, a4, a5, a6, a7, a8, a10);
  }

LABEL_31:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void alone_decoder_end(void *a1, uint64_t a2)
{
  lzma_next_end(a1, a2);

  lzma_free(a1, a2);
}

uint64_t alone_decoder_memconfig(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  *a2 = *(a1 + 112);
  *a3 = *(a1 + 104);
  if (!a4)
  {
    return 0;
  }

  if (*(a1 + 112) > a4)
  {
    return 6;
  }

  result = 0;
  *(a1 + 104) = a4;
  return result;
}

uint64_t lzma_alone_decoder(void *a1, unint64_t a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = lzma_alone_decoder_init(a1[7], a1[6], a2, 0);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      v5 = a1[7];
      *(v5 + 96) = 1;
      *(v5 + 99) = 1;
    }
  }

  return v4;
}

uint64_t lzma_auto_decoder(void *a1, unint64_t a2, unsigned int a3)
{
  v6 = lzma_strm_init(a1);
  if (!v6)
  {
    v6 = auto_decoder_init(a1[7], a1[6], a2, a3);
    if (v6)
    {
      lzma_end(a1);
    }

    else
    {
      v7 = a1[7];
      *(v7 + 96) = 1;
      *(v7 + 99) = 1;
    }
  }

  return v6;
}

uint64_t auto_decoder_init(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  if (*(a1 + 16) != auto_decoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = auto_decoder_init;
  if (a4 > 0x3F)
  {
    return 8;
  }

  v8 = *a1;
  if (!*a1)
  {
    v8 = lzma_alloc(0x60uLL, a2);
    if (!v8)
    {
      return 5;
    }

    *a1 = v8;
    *(a1 + 24) = auto_decode;
    *(a1 + 32) = auto_decoder_end;
    *(a1 + 48) = auto_decoder_get_check;
    *(a1 + 56) = auto_decoder_memconfig;
    *v8 = 0;
    v8[1] = -1;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
  }

  v9 = 0;
  if (a3 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3;
  }

  v8[10] = v10;
  *(v8 + 22) = a4;
  *(v8 + 23) = 0;
  return v9;
}

uint64_t auto_decode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a1 + 92);
  if (v11 != 2)
  {
    if (v11 != 1)
    {
      if (v11)
      {
        return 11;
      }

      v18 = *a4;
      if (*a4 >= a5)
      {
        return 0;
      }

      *(a1 + 92) = 1;
      v19 = *(a3 + v18);
      v20 = *(a1 + 80);
      if (v19 == 76)
      {
        result = lzma_lzip_decoder_init(a1, a2, v20, *(a1 + 88));
        if (result)
        {
          return result;
        }
      }

      else if (v19 == 253)
      {
        result = lzma_stream_decoder_init(a1, a2, v20, *(a1 + 88));
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = lzma_alone_decoder_init(a1, a2, v20, 1);
        if (result)
        {
          return result;
        }

        v22 = *(a1 + 88);
        if (v22)
        {
          return 2;
        }

        if ((v22 & 4) != 0)
        {
          return 4;
        }
      }
    }

    result = (*(a1 + 24))(*a1, a2, a3, a4, a5, a6, a7, a8, a9);
    if (result != 1)
    {
      return result;
    }

    if ((*(a1 + 88) & 8) == 0)
    {
      return 1;
    }

    *(a1 + 92) = 2;
  }

  if (*a4 >= a5)
  {
    return a9 == 3;
  }

  else
  {
    return 9;
  }
}

void auto_decoder_end(void *a1, uint64_t a2)
{
  lzma_next_end(a1, a2);

  lzma_free(a1, a2);
}

uint64_t auto_decoder_get_check(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t auto_decoder_memconfig(void *a1, unint64_t *a2, void *a3, unint64_t a4)
{
  v6 = a1[7];
  if (v6)
  {
    result = v6(*a1, a2, a3, a4);
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    *a2 = 0x8000;
    *a3 = a1[10];
    if (!a4)
    {
      return 0;
    }

    if (*a2 <= a4)
    {
      result = 0;
    }

    else
    {
      result = 6;
    }
  }

  if (!result)
  {
    a1[10] = a4;
  }

  return result;
}

uint64_t lzma_block_buffer_decode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, uint64_t a6, unint64_t *a7, unint64_t a8)
{
  if (!a4)
  {
    return 11;
  }

  v15 = *a4;
  if (!a3 && v15 != a5)
  {
    return 11;
  }

  v16 = 11;
  if (a7 && v15 <= a5)
  {
    v18 = *a7 != a8 && a6 == 0;
    if (!v18 && *a7 <= a8)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23[0] = 0;
      v23[1] = -1;
      v16 = lzma_block_decoder_init(v23, a2, a1);
      if (!v16)
      {
        v20 = *a4;
        v21 = *a7;
        v22 = (*(&v24 + 1))(v23[0], a2, a3, a4, a5, a6, a7, a8, 3);
        if (v22 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = v22;
          if (!v22)
          {
            if (*a4 == a5)
            {
              v16 = 9;
            }

            else
            {
              v16 = 10;
            }
          }

          *a4 = v20;
          *a7 = v21;
        }
      }

      lzma_next_end(v23, a2);
    }
  }

  return v16;
}

uint64_t lzma_block_decoder_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) != lzma_block_decoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = lzma_block_decoder_init;
  if (!lzma_block_unpadded_size(a3) || *(a3 + 24) < -1)
  {
    return 11;
  }

  v6 = *a1;
  if (!*a1)
  {
    v7 = lzma_alloc(0x138uLL, a2);
    if (!v7)
    {
      return 5;
    }

    v6 = v7;
    *a1 = v7;
    *(a1 + 24) = block_decode;
    *(a1 + 32) = block_decoder_end;
    *(v7 + 1) = 0;
    *(v7 + 2) = -1;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
  }

  *v6 = 0;
  *(v6 + 12) = 0;
  *(v6 + 13) = 0;
  *(v6 + 11) = a3;
  v8 = *(a3 + 16);
  if (v8 == -1)
  {
    v11 = *(a3 + 4);
    v9 = *(a3 + 8);
    v8 = 0x7FFFFFFFFFFFFFFCLL - (v11 + lzma_check_size(v9));
  }

  else
  {
    v9 = *(a3 + 8);
  }

  v12 = *(a3 + 24);
  if (v12 == -1)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v6 + 14) = v8;
  *(v6 + 15) = v12;
  *(v6 + 16) = 0;
  lzma_check_init((v6 + 136), v9);
  v13 = *a3;
  if (*a3)
  {
    LOBYTE(v13) = *(a3 + 200) != 0;
  }

  v6[304] = v13;
  v14 = *(a3 + 32);

  return lzma_raw_decoder_init((v6 + 8), a2, v14);
}

uint64_t block_decode(int *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, unint64_t *a7, unint64_t a8)
{
  v12 = *a1;
  if (!*a1)
  {
    v18 = *a4;
    v19 = *a7;
    v20 = *(a1 + 14) - *(a1 + 12);
    if (a5 - *a4 < v20)
    {
      v20 = a5 - *a4;
    }

    *(a1 + 15);
    *(a1 + 13);
    v21 = (*(a1 + 4))(*(a1 + 1), a2, a3, a4, v20 + v18);
    v22 = *a4;
    v23 = *a7;
    v24 = *a7 - v19;
    v25 = *(a1 + 12) + *a4 - v18;
    v26 = *(a1 + 13) + v24;
    *(a1 + 12) = v25;
    *(a1 + 13) = v26;
    if (!v21)
    {
      v27 = *(a1 + 11);
      v28 = *(v27 + 16);
      v29 = v26 == *(v27 + 24);
      v30 = v23 < a8 || v29;
      v31 = v25 == v28 ? v30 : 0;
      v32 = v22 < a5 && v29;
      result = 9;
      if ((v31 & 1) != 0 || v32)
      {
        return result;
      }
    }

    if ((a1[76] & 1) == 0 && v23 != v19)
    {
      lzma_check_update((a1 + 34), *(*(a1 + 11) + 8), (a6 + v19), v24);
    }

    result = v21;
    if (v21 != 1)
    {
      return result;
    }

    v34 = *(a1 + 11);
    v13 = *(a1 + 12);
    v35 = *(v34 + 16);
    if (v35 != -1 && v35 != v13)
    {
      return 9;
    }

    v36 = *(a1 + 13);
    v37 = *(v34 + 24);
    if (v37 != -1 && v37 != v36)
    {
      return 9;
    }

    *(v34 + 16) = v13;
    *(v34 + 24) = v36;
    *a1 = 1;
LABEL_5:
    while ((v13 & 3) != 0)
    {
      v14 = *a4;
      if (*a4 >= a5)
      {
        return 0;
      }

      *(a1 + 12) = ++v13;
      *a4 = v14 + 1;
      if (*(a3 + v14))
      {
        return 9;
      }
    }

    v38 = *(*(a1 + 11) + 8);
    if (!v38)
    {
      return 1;
    }

    if ((a1[76] & 1) == 0)
    {
      lzma_check_finish((a1 + 34), v38);
    }

    *a1 = 2;
LABEL_37:
    v39 = *(a1 + 11);
    v40 = lzma_check_size(*(v39 + 8));
    lzma_bufcpy(a3, a4, a5, v39 + 40, a1 + 16, v40);
    if (*(a1 + 16) < v40)
    {
      return 0;
    }

    if ((a1[76] & 1) == 0)
    {
      v41 = *(a1 + 11);
      if (lzma_check_is_supported(*(v41 + 8)))
      {
        if (memcmp((v41 + 40), a1 + 34, v40))
        {
          return 9;
        }
      }
    }

    return 1;
  }

  if (v12 == 2)
  {
    goto LABEL_37;
  }

  if (v12 == 1)
  {
    v13 = *(a1 + 12);
    goto LABEL_5;
  }

  return 11;
}

void block_decoder_end(void *a1, uint64_t a2)
{
  lzma_next_end(a1 + 8, a2);

  lzma_free(a1, a2);
}

uint64_t lzma_block_decoder(void *a1, uint64_t a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = lzma_block_decoder_init(a1[7], a1[6], a2);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      v5 = a1[7];
      *(v5 + 96) = 1;
      *(v5 + 99) = 1;
    }
  }

  return v4;
}

uint64_t lzma_block_header_decode(uint64_t a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    return 11;
  }

  v4 = 11;
  if (a3)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v8 = (v6 + 8);
      v9 = 5;
      do
      {
        *(v8 - 1) = -1;
        *v8 = 0;
        v8 += 2;
        --v9;
      }

      while (v9);
      if (*a1 > 1u)
      {
        *a1 = 1;
      }

      *(a1 + 200) = 0;
      v10 = 4 * *a3;
      if (v10 + 4 != *(a1 + 4) || *(a1 + 8) > 0xFu)
      {
        return 11;
      }

      if (lzma_crc32(a3, 4 * *a3, 0) == *&a3[v10])
      {
        v12 = a3[1];
        if ((v12 & 0x3C) != 0)
        {
          return 8;
        }

        v21 = 2;
        if ((v12 & 0x40) == 0)
        {
          *(a1 + 16) = -1;
          goto LABEL_17;
        }

        v20 = lzma_vli_decode((a1 + 16), 0, a3, &v21, v10);
        if (v20)
        {
          return v20;
        }

        if (lzma_block_unpadded_size(a1))
        {
LABEL_17:
          if ((a3[1] & 0x80000000) == 0)
          {
            *(a1 + 24) = -1;
            goto LABEL_19;
          }

          v20 = lzma_vli_decode((a1 + 24), 0, a3, &v21, v10);
          if (!v20)
          {
LABEL_19:
            v13 = 0;
            v14 = 16 * (a3[1] & 3) + 16;
            while (1)
            {
              v15 = lzma_filter_flags_decode((*(a1 + 32) + v13), a2, a3, &v21, v10);
              if (v15)
              {
                break;
              }

              v13 += 16;
              if (v14 == v13)
              {
                v16 = v10 - v21;
                if (v10 < v21)
                {
                  v16 = 0;
                }

                v17 = &a3[v21];
                v18 = v21 + 1;
                while (v16)
                {
                  v21 = v18;
                  v19 = *v17++;
                  --v16;
                  ++v18;
                  if (v19)
                  {
                    v4 = 8;
                    goto LABEL_32;
                  }
                }

                return 0;
              }
            }

            v4 = v15;
LABEL_32:
            lzma_filters_free(*(a1 + 32), a2);
            return v4;
          }

          return v20;
        }
      }

      return 9;
    }
  }

  return v4;
}

uint64_t lzma_easy_decoder_memusage(int a1)
{
  memset(v2, 0, sizeof(v2));
  if (lzma_easy_preset(v2, a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return lzma_raw_decoder_memusage(v2);
  }
}

uint64_t lzma_raw_buffer_decode(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, uint64_t a6, unint64_t *a7, unint64_t a8)
{
  v9 = 11;
  if (a3)
  {
    if (a4)
    {
      if (a7)
      {
        if (a6)
        {
          if (*a4 <= a5 && *a7 <= a8)
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v22[0] = 0;
            v22[1] = -1;
            v9 = lzma_raw_decoder_init(v22, a2, a1);
            if (!v9)
            {
              v16 = *a4;
              v17 = *a7;
              v18 = (*(&v23 + 1))(v22[0], a2, a3, a4, a5, a6, a7, a8, 3);
              if (v18 == 1)
              {
                v9 = 0;
              }

              else
              {
                v9 = v18;
                if (!v18)
                {
                  if (*a4 == a5)
                  {
                    v9 = 9;
                    if (*a7 == a8)
                    {
                      v20 = 0;
                      (*(&v23 + 1))(v22[0], a2, a3, a4, a5, &v21, &v20, 1, 3);
                      if (v20 == 1)
                      {
                        v9 = 10;
                      }

                      else
                      {
                        v9 = 9;
                      }
                    }
                  }

                  else
                  {
                    v9 = 10;
                  }
                }

                *a4 = v16;
                *a7 = v17;
              }

              lzma_next_end(v22, a2);
            }
          }
        }
      }
    }
  }

  return v9;
}

BOOL lzma_filter_decoder_is_supported(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = decoders[v1];
    if (v2 == a1)
    {
      break;
    }

    v3 = v1 == 40;
    v1 += 4;
  }

  while (!v3);
  return v2 == a1;
}

uint64_t *decoder_find(uint64_t a1)
{
  result = decoders;
  v3 = 11;
  while (*result != a1)
  {
    result += 4;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t lzma_raw_decoder(void *a1, uint64_t *a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = lzma_raw_coder_init(a1[7], a1[6], a2, decoder_find, 0);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      v5 = a1[7];
      *(v5 + 96) = 1;
      *(v5 + 99) = 1;
    }
  }

  return v4;
}

uint64_t lzma_properties_decode(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  a1[1] = 0;
  v5 = a1 + 1;
  v6 = decoders;
  v7 = 11;
  while (*v6 != v4)
  {
    v6 += 4;
    if (!--v7)
    {
      return 8;
    }
  }

  v9 = v6[3];
  if (v9)
  {
    return v9(v5);
  }

  else
  {
    return 8 * (a4 != 0);
  }
}

uint64_t lzma_filter_flags_decode(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  a1[1] = 0;
  result = lzma_vli_decode(a1, 0, a3, a4, a5);
  if (!result)
  {
    if (*a1 >> 62)
    {
      return 9;
    }

    v11 = 0;
    result = lzma_vli_decode(&v11, 0, a3, a4, a5);
    if (!result)
    {
      if (a5 - *a4 < v11)
      {
        return 9;
      }

      result = lzma_properties_decode(a1, a2, a3 + *a4, v11);
      *a4 += v11;
    }
  }

  return result;
}

uint64_t lzma_index_decoder_init(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  if (*(a1 + 16) != lzma_index_decoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = lzma_index_decoder_init;
  if (!a3)
  {
    return 11;
  }

  v8 = *a1;
  if (*a1)
  {
    lzma_index_end(v8[2], a2);
  }

  else
  {
    v10 = lzma_alloc(0x48uLL, a2);
    if (!v10)
    {
      return 5;
    }

    v8 = v10;
    *a1 = v10;
    *(a1 + 24) = index_decode;
    *(a1 + 32) = index_decoder_end;
    *(a1 + 56) = index_decoder_memconfig;
    v10[2] = 0;
  }

  v8[3] = a3;
  *a3 = 0;
  v11 = lzma_index_init(a2);
  v8[2] = v11;
  if (!v11)
  {
    return 5;
  }

  result = 0;
  *v8 = 0;
  if (a4 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  v8[1] = v12;
  v8[4] = 0;
  v8[7] = 0;
  *(v8 + 16) = 0;
  return result;
}

uint64_t index_decode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = *a4;
  if (*a4 >= a5)
  {
    return 0;
  }

  v10 = (a1 + 40);
  v11 = (a1 + 48);
  v13 = (a1 + 32);
  v12 = *a1;
  v14 = *a4;
  while (1)
  {
    v15 = 11;
    if (v12 <= 2)
    {
      switch(v12)
      {
        case 0:
          *a4 = v14 + 1;
          if (*(a3 + v14))
          {
            return 9;
          }

          v12 = 1;
          goto LABEL_34;
        case 1:
          v18 = lzma_vli_decode(v13, (a1 + 56), a3, a4, a5);
          if (v18 != 1)
          {
            goto LABEL_37;
          }

          *(a1 + 56) = 0;
          *a1 = 2;
          break;
        case 2:
          break;
        default:
          return v15;
      }

      if (lzma_index_memusage(1, *(a1 + 32)) > *(a1 + 8))
      {
        v15 = 6;
LABEL_40:
        if (*a4 != v5)
        {
          *(a1 + 64) = lzma_crc32((a3 + v5), *a4 - v5, *(a1 + 64));
        }

        return v15;
      }

      lzma_index_prealloc(*(a1 + 16), *(a1 + 32));
      v19 = *(a1 + 32) == 0;
      goto LABEL_31;
    }

    if (v12 >= 5)
    {
      break;
    }

    if (v12 == 3)
    {
      v17 = v10;
    }

    else
    {
      v17 = v11;
    }

    v18 = lzma_vli_decode(v17, (a1 + 56), a3, a4, a5);
    if (v18 != 1)
    {
LABEL_37:
      v15 = v18;
      goto LABEL_40;
    }

    *(a1 + 56) = 0;
    if (*a1 == 3)
    {
      if (*v10 - 0x7FFFFFFFFFFFFFFDLL < 0x8000000000000008)
      {
        return 9;
      }

      v12 = 4;
      goto LABEL_34;
    }

    v22 = lzma_index_append(*(a1 + 16), a2, *(a1 + 40), *(a1 + 48));
    if (v22)
    {
      return v22;
    }

    v19 = (*v13)-- == 1;
LABEL_31:
    if (v19)
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }

LABEL_34:
    *a1 = v12;
LABEL_35:
    v14 = *a4;
    if (*a4 >= a5)
    {
      v15 = 0;
      goto LABEL_40;
    }
  }

  if (v12 == 5)
  {
    v20 = lzma_index_padding_size(*(a1 + 16));
    v16 = v20;
    *(a1 + 56) = v20;
    *a1 = 6;
    if (!v20)
    {
LABEL_38:
      v14 = *a4;
      *(a1 + 64) = lzma_crc32((a3 + v5), *a4 - v5, *(a1 + 64));
      *a1 = 7;
      goto LABEL_43;
    }

    goto LABEL_27;
  }

  if (v12 == 6)
  {
    v16 = *(a1 + 56);
    if (!v16)
    {
      goto LABEL_38;
    }

LABEL_27:
    *(a1 + 56) = v16 - 1;
    v21 = (*a4)++;
    if (*(a3 + v21))
    {
      return 9;
    }

    v12 = 6;
    goto LABEL_35;
  }

  if (v12 != 7)
  {
    return v15;
  }

LABEL_43:
  v23 = a5 - v14;
  v24 = (a3 + v14);
  v25 = v14 + 1;
  while (v23)
  {
    v26 = *(a1 + 56);
    v27 = *(a1 + 64) >> (8 * v26);
    *a4 = v25;
    if (*v24 != v27)
    {
      return 9;
    }

    v28 = v26 + 1;
    *(a1 + 56) = v28;
    --v23;
    ++v24;
    ++v25;
    if (v28 >= 4)
    {
      **(a1 + 24) = *(a1 + 16);
      *(a1 + 16) = 0;
      return 1;
    }
  }

  return 0;
}

void index_decoder_end(uint64_t **a1, uint64_t a2)
{
  lzma_index_end(a1[2], a2);

  lzma_free(a1, a2);
}

uint64_t index_decoder_memconfig(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4)
{
  *a2 = lzma_index_memusage(1, *(a1 + 32));
  *a3 = *(a1 + 8);
  if (!a4)
  {
    return 0;
  }

  if (*a2 > a4)
  {
    return 6;
  }

  result = 0;
  *(a1 + 8) = a4;
  return result;
}

uint64_t lzma_index_decoder(void *a1, void *a2, unint64_t a3)
{
  v6 = lzma_strm_init(a1);
  if (!v6)
  {
    v6 = lzma_index_decoder_init(a1[7], a1[6], a2, a3);
    if (v6)
    {
      lzma_end(a1);
    }

    else
    {
      v7 = a1[7];
      *(v7 + 96) = 1;
      *(v7 + 99) = 1;
    }
  }

  return v6;
}

uint64_t lzma_index_buffer_decode(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t a6)
{
  result = 11;
  if (a1 && a2 && a4 && a5)
  {
    if (*a5 <= a6)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      *v18 = 0u;
      v13 = *a2;
      v18[1] = a1;
      *a1 = 0;
      v18[0] = lzma_index_init(a3);
      if (v18[0])
      {
        LODWORD(v17) = 0;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        *(&v17 + 1) = v14;
        *&v19 = 0;
        *(&v20 + 1) = 0;
        LODWORD(v21) = 0;
        v15 = *a5;
        v16 = index_decode(&v17, a3, a4, a5, a6);
        result = 0;
        if (v16 != 1)
        {
          lzma_index_end(v18[0], a3);
          *a5 = v15;
          if (v16)
          {
            if (v16 == 6)
            {
              *a2 = lzma_index_memusage(1, v19);
              return 6;
            }

            else
            {
              return v16;
            }
          }

          else
          {
            return 9;
          }
        }
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 11;
    }
  }

  return result;
}

_OWORD *lzma_index_hash_init(_OWORD *a1, uint64_t a2)
{
  v2 = a1;
  if (a1 || (v2 = lzma_alloc(0x1C0uLL, a2)) != 0)
  {
    *v2 = 0;
    *(v2 + 8) = 0u;
    *(v2 + 24) = 0u;
    v2[13] = 0u;
    v2[14] = 0u;
    *(v2 + 53) = 0;
    *(v2 + 54) = 0;
    *(v2 + 52) = 0;
    *(v2 + 110) = 0;
    lzma_check_init(v2 + 40, 10);
    lzma_check_init((v2 + 15), 10);
  }

  return v2;
}

uint64_t lzma_index_hash_append(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 11;
  }

  result = 11;
  if ((a3 & 0x8000000000000000) == 0 && a2 - 0x7FFFFFFFFFFFFFFDLL >= 0x8000000000000008 && !*a1)
  {
    hash_append((a1 + 8), a2, a3);
    v5 = *(a1 + 8);
    if (v5 < 0 || (*(a1 + 16) & 0x8000000000000000) != 0)
    {
      return 9;
    }

    else
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 32);
      v8 = (v7 + lzma_vli_size(v6) + 1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      result = 9;
      if (v8 <= 0x400000000)
      {
        return ((v5 + v8 + 24) >> 63) & 9;
      }
    }
  }

  return result;
}

uint64_t hash_append(int64x2_t *a1, unint64_t a2, unint64_t a3)
{
  data[2] = *MEMORY[0x29EDCA608];
  v6 = a1->i64[1] + a3;
  a1->i64[0] += (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  a1->i64[1] = v6;
  v7 = lzma_vli_size(a2);
  v8 = lzma_vli_size(a3);
  v9.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v9.i64[1] = (v8 + v7);
  a1[1] = vaddq_s64(a1[1], v9);
  data[0] = a2;
  data[1] = a3;
  result = lzma_check_update(a1[2].i64, 10, data, 0x10uLL);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lzma_index_hash_decode(int64x2_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v4 = *a3;
  if (*a3 >= a4)
  {
    return 10;
  }

  v9 = &a1[26];
  v10 = &a1[26].u64[1];
  v12 = a1 + 13;
  v11 = a1->i32[0];
  v13 = *a3;
  while (1)
  {
    v14 = 11;
    if (v11 > 3)
    {
      break;
    }

    if ((v11 - 2) < 2)
    {
      if (v11 == 2)
      {
        v19 = v9;
      }

      else
      {
        v19 = v10;
      }

      v15 = lzma_vli_decode(v19, a1[27].i8, a2, a3, a4);
      if (v15 != 1)
      {
        goto LABEL_37;
      }

      a1[27].i64[0] = 0;
      v20 = a1[26].u64[0];
      if (a1->i32[0] == 2)
      {
        if (v20 - 0x7FFFFFFFFFFFFFFDLL < 0x8000000000000008)
        {
          return 9;
        }

        v11 = 3;
        goto LABEL_33;
      }

      hash_append(v12, v20, a1[26].u64[1]);
      if (a1->i64[1] < a1[13].i64[0] || a1[1].i64[0] < a1[13].i64[1] || a1[2].i64[0] < a1[14].i64[1])
      {
        return 9;
      }

      v17 = a1[25].i64[1]-- == 1;
    }

    else
    {
      if (!v11)
      {
        *a3 = v13 + 1;
        if (*(a2 + v13))
        {
          return 9;
        }

        v11 = 1;
        goto LABEL_33;
      }

      if (v11 != 1)
      {
        return v14;
      }

      v15 = lzma_vli_decode(&a1[25].u64[1], a1[27].i8, a2, a3, a4);
      if (v15 != 1)
      {
LABEL_37:
        v14 = v15;
LABEL_38:
        if (*a3 != v4)
        {
          a1[27].i32[2] = lzma_crc32((a2 + v4), *a3 - v4, a1[27].i32[2]);
        }

        return v14;
      }

      v16 = a1[25].i64[1];
      if (v16 != a1[1].i64[1])
      {
        return 9;
      }

      a1[27].i64[0] = 0;
      v17 = v16 == 0;
    }

    if (v17)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

LABEL_33:
    a1->i32[0] = v11;
LABEL_34:
    v13 = *a3;
    if (*a3 >= a4)
    {
      v14 = 0;
      goto LABEL_38;
    }
  }

  if (v11 == 4)
  {
    v21 = a1[14].i32[2];
    v22 = lzma_vli_size(a1[14].u64[0]);
    v18 = ~(v22 + v21) & 3;
    a1[27].i64[0] = v18;
    a1->i32[0] = 5;
    if ((~(v22 + v21) & 3) == 0)
    {
LABEL_40:
      if (a1->i64[1] != a1[13].i64[0])
      {
        return 9;
      }

      if (a1[1].i64[0] != a1[13].i64[1])
      {
        return 9;
      }

      if (a1[2].i64[0] != a1[14].i64[1])
      {
        return 9;
      }

      lzma_check_finish(&a1[2].i64[1], 10);
      lzma_check_finish(a1[15].i64, 10);
      v24 = lzma_check_size(0xAu);
      if (memcmp(&a1[2].u64[1], &a1[15], v24))
      {
        return 9;
      }

      a1[27].i32[2] = lzma_crc32((a2 + v4), *a3 - v4, a1[27].i32[2]);
      a1->i32[0] = 6;
      goto LABEL_47;
    }

    goto LABEL_24;
  }

  if (v11 == 5)
  {
    v18 = a1[27].i64[0];
    if (!v18)
    {
      goto LABEL_40;
    }

LABEL_24:
    a1[27].i64[0] = v18 - 1;
    v23 = (*a3)++;
    if (*(a2 + v23))
    {
      return 9;
    }

    v11 = 5;
    goto LABEL_34;
  }

  if (v11 != 6)
  {
    return v14;
  }

LABEL_47:
  v14 = 1;
  while (1)
  {
    v26 = *a3;
    if (*a3 == a4)
    {
      break;
    }

    v27 = a1[27].i32[2] >> (8 * a1[27].i8[0]);
    *a3 = v26 + 1;
    if (*(a2 + v26) != v27)
    {
      return 9;
    }

    v28 = a1[27].i64[0] + 1;
    a1[27].i64[0] = v28;
    if (v28 >= 4)
    {
      return v14;
    }
  }

  return 0;
}

uint64_t lzma_stream_buffer_decode(unint64_t *a1, char a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t a6, uint64_t a7, unint64_t *a8, unint64_t a9)
{
  if (!a5)
  {
    return 11;
  }

  v16 = *a5;
  if (!a4 && v16 != a6)
  {
    return 11;
  }

  v17 = 11;
  if (a8)
  {
    if (v16 <= a6)
    {
      v19 = *a8;
      if ((a7 || v19 == a9) && (a2 & 4) == 0 && v19 <= a9)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24[0] = 0;
        v24[1] = -1;
        v17 = lzma_stream_decoder_init(v24, a3, *a1, a2);
        if (!v17)
        {
          v20 = *a5;
          v22 = *a8;
          v21 = (*(&v25 + 1))(v24[0], a3, a4, a5, a6, a7, a8, a9, 3);
          if (v21 == 1)
          {
            v17 = 0;
          }

          else
          {
            v17 = v21;
            *a5 = v20;
            *a8 = v22;
            if (v21 == 6)
            {
              v23 = 0;
              (*(&v27 + 1))(v24[0], a1, &v23, 0);
            }

            else if (!v21)
            {
              if (*a5 == a6)
              {
                v17 = 9;
              }

              else
              {
                v17 = 10;
              }
            }
          }
        }

        lzma_next_end(v24, a3);
      }
    }
  }

  return v17;
}

uint64_t lzma_microlzma_decoder(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = lzma_strm_init(a1);
  if (!v10)
  {
    v10 = microlzma_decoder_init(a1[7], a1[6], a2, a3, a4 != 0, a5);
    if (v10)
    {
      lzma_end(a1);
    }

    else
    {
      v11 = a1[7];
      *(v11 + 96) = 1;
      *(v11 + 99) = 1;
    }
  }

  return v10;
}

uint64_t microlzma_decoder_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  if (*(a1 + 16) != microlzma_decoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = microlzma_decoder_init;
  v12 = *a1;
  if (!*a1)
  {
    v12 = lzma_alloc(0x68uLL, a2);
    if (!v12)
    {
      return 5;
    }

    *a1 = v12;
    *(a1 + 24) = microlzma_decode;
    *(a1 + 32) = microlzma_decoder_end;
    *v12 = 0;
    v12[1] = -1;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    return 8;
  }

  if (a4 < 0)
  {
    return 8;
  }

LABEL_5:
  v13 = 0;
  v12[10] = a3;
  v12[11] = a4;
  *(v12 + 100) = a5;
  *(v12 + 24) = a6;
  *(v12 + 101) = 0;
  return v13;
}

uint64_t microlzma_decode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, int a9)
{
  v9 = a8;
  v36[6] = *MEMORY[0x29EDCA608];
  v16 = *a4;
  v17 = *a7;
  v18 = *(a1 + 80);
  if (a5 - *a4 <= v18)
  {
    v19 = a5;
  }

  else
  {
    v19 = v18 + *a4;
  }

  v20 = *(a1 + 100);
  if ((v20 & 1) == 0)
  {
    v21 = *(a1 + 88);
    if (a8 - v17 > v21)
    {
      v9 = v21 + v17;
    }
  }

  if ((*(a1 + 101) & 1) == 0)
  {
    if (v16 >= v19)
    {
      result = 0;
      goto LABEL_30;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    memset(v31, 0, sizeof(v31));
    LODWORD(v31[0]) = *(a1 + 96);
    *(&v32 + 4) = -1;
    if (v20)
    {
      *(&v32 + 4) = *(a1 + 88);
    }

    if (lzma_lzma_lclppb_decode(v31, *(a3 + v16) ^ 0xFF))
    {
      result = 8;
      goto LABEL_30;
    }

    *a4 = v16 + 1;
    v36[0] = 0x4000000000000002;
    v36[1] = lzma_lzma_decoder_init;
    v36[2] = v31;
    memset(&v36[3], 0, 24);
    result = lzma_next_filter_init(a1, a2, v36, v25);
    if (result)
    {
      goto LABEL_30;
    }

    v30 = 0;
    v29 = 0;
    if ((*(a1 + 24))(*a1, a2, &v30, &v29, 1, a6, a7, v9, 0))
    {
      result = 11;
      goto LABEL_30;
    }

    *(a1 + 101) = 1;
  }

  LODWORD(result) = (*(a1 + 24))(*a1, a2, a3, a4, v19, a6, a7, v9, a9);
  v23 = v16 - *a4 + *(a1 + 80);
  *(a1 + 80) = v23;
  if (*(a1 + 100) == 1)
  {
    if (v23)
    {
      v24 = 9;
    }

    else
    {
      v24 = 1;
    }

    if (result == 1)
    {
      result = v24;
    }

    else
    {
      result = result;
    }
  }

  else
  {
    v26 = v17 - *a7 + *(a1 + 88) == 0;
    *(a1 + 88) += v17 - *a7;
    if (v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = result;
    }

    if (result == 1)
    {
      result = 9;
    }

    else
    {
      result = v27;
    }
  }

LABEL_30:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void microlzma_decoder_end(void *a1, uint64_t a2)
{
  lzma_next_end(a1, a2);

  lzma_free(a1, a2);
}

uint64_t lzma_stream_decoder_init(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  if (*(a1 + 16) != lzma_stream_decoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = lzma_stream_decoder_init;
  if (a4 > 0x3F)
  {
    return 8;
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = *(v8 + 44);
  }

  else
  {
    v11 = lzma_alloc(0x588uLL, a2);
    if (!v11)
    {
      return 5;
    }

    v8 = v11;
    v9 = 0;
    *a1 = v8;
    *(a1 + 24) = stream_decode;
    *(a1 + 32) = stream_decoder_end;
    *(a1 + 48) = stream_decoder_get_check;
    *(a1 + 56) = stream_decoder_memconfig;
    *(v8 + 1) = 0;
    *(v8 + 2) = -1;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 44) = 0;
  }

  if (a3 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a3;
  }

  *(v8 + 45) = v12;
  *(v8 + 46) = 0x8000;
  v8[376] = a4 & 1;
  v13 = *&vshl_u16((*&vdup_n_s16(a4) & 0xFF00FF00FF00FFLL), 0xFFFDFFFCFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(v8 + 377) = vuzp1_s8(v13, v13).u32[0];
  v8[381] = 1;
  v14 = lzma_index_hash_init(v9, a2);
  *(v8 + 44) = v14;
  if (v14)
  {
    result = 0;
    *v8 = 0;
    *(v8 + 48) = 0;
    return result;
  }

  return 5;
}

uint64_t stream_decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v36 = *MEMORY[0x29EDCA608];
  v15 = (a1 + 384);
  v17 = a1 + 8;
  for (i = *a1; ; i = 0)
  {
    while (1)
    {
      while (1)
      {
        v18 = 11;
        if (i > 2)
        {
          break;
        }

        if (i)
        {
          if (i != 1)
          {
            if (i != 2)
            {
              goto LABEL_74;
            }

LABEL_42:
            *(a1 + 88) = 1;
            *(a1 + 120) = v34;
            v19 = lzma_block_header_decode(a1 + 88, a2, (a1 + 392));
            if (v19)
            {
              goto LABEL_56;
            }

            *(a1 + 288) = *(a1 + 379);
            v27 = lzma_raw_decoder_memusage(v34);
            if (v27 == -1)
            {
              v18 = 8;
LABEL_59:
              lzma_filters_free(v34, a2);
              *(a1 + 120) = 0;
              goto LABEL_74;
            }

            *(a1 + 368) = v27;
            if (v27 > *(a1 + 360))
            {
              v18 = 6;
              goto LABEL_59;
            }

            v18 = lzma_block_decoder_init(v17, a2, a1 + 88);
            lzma_filters_free(v34, a2);
            *(a1 + 120) = 0;
            if (v18)
            {
              goto LABEL_74;
            }

            *a1 = 3;
            goto LABEL_47;
          }
        }

        else
        {
          lzma_bufcpy(a3, a4, a5, a1 + 392, v15, 12);
          if (*v15 < 0xC)
          {
            goto LABEL_55;
          }

          *v15 = 0;
          v24 = lzma_stream_header_decode(a1 + 296, a1 + 392);
          if (v24)
          {
            v18 = v24;
            if (v24 == 7)
            {
              if (*(a1 + 381) == 1)
              {
                v18 = 7;
              }

              else
              {
                v18 = 9;
              }
            }

            goto LABEL_74;
          }

          *(a1 + 381) = 0;
          v25 = *(a1 + 312);
          *(a1 + 96) = v25;
          *a1 = 1;
          if (*(a1 + 376) == 1 && !v25)
          {
            v18 = 2;
            goto LABEL_74;
          }

          if (*(a1 + 377) == 1 && !lzma_check_is_supported(v25))
          {
            v18 = 3;
            goto LABEL_74;
          }

          if (*(a1 + 378))
          {
            v18 = 4;
            goto LABEL_74;
          }
        }

        if (*a4 >= a5)
        {
          goto LABEL_55;
        }

        if (*v15)
        {
          v26 = *(a1 + 92);
LABEL_40:
          lzma_bufcpy(a3, a4, a5, a1 + 392, v15, v26);
          if (*(a1 + 384) < *(a1 + 92))
          {
            goto LABEL_55;
          }

          *(a1 + 384) = 0;
          *a1 = 2;
          goto LABEL_42;
        }

        if (*(a3 + *a4))
        {
          v26 = 4 * *(a3 + *a4) + 4;
          *(a1 + 92) = v26;
          goto LABEL_40;
        }

        i = 4;
        *a1 = 4;
      }

      if (i > 4)
      {
        break;
      }

      if (i != 3)
      {
        if (*a4 >= a5)
        {
          goto LABEL_55;
        }

        v19 = lzma_index_hash_decode(*(a1 + 352), a3, a4, a5);
        if (v19 != 1)
        {
          goto LABEL_56;
        }

        *a1 = 5;
        goto LABEL_15;
      }

LABEL_47:
      v19 = (*(a1 + 32))(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8, a9);
      if (v19 != 1)
      {
        goto LABEL_56;
      }

      v28 = *(a1 + 352);
      v29 = lzma_block_unpadded_size(a1 + 88);
      v19 = lzma_index_hash_append(v28, v29, *(a1 + 112));
      if (v19)
      {
        goto LABEL_56;
      }

      i = 1;
      *a1 = 1;
    }

    if (i != 5)
    {
      if (i != 6)
      {
        goto LABEL_74;
      }

      goto LABEL_21;
    }

LABEL_15:
    lzma_bufcpy(a3, a4, a5, a1 + 392, v15, 12);
    if (*v15 < 0xC)
    {
      goto LABEL_55;
    }

    *v15 = 0;
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v20 = lzma_stream_footer_decode(v34, a1 + 392);
    if (v20)
    {
      if (v20 == 7)
      {
        v18 = 9;
      }

      else
      {
        v18 = v20;
      }

      goto LABEL_74;
    }

    v21 = lzma_index_hash_size(*(a1 + 352));
    if (v21 != *(&v34[0] + 1))
    {
      goto LABEL_69;
    }

    v19 = lzma_stream_flags_compare(a1 + 296, v34);
    if (v19)
    {
LABEL_56:
      v18 = v19;
      goto LABEL_74;
    }

    if ((*(a1 + 380) & 1) == 0)
    {
      v18 = 1;
      goto LABEL_74;
    }

    *a1 = 6;
LABEL_21:
    v22 = *a4;
    if (*a4 >= a5)
    {
      break;
    }

    while (!*(a3 + v22))
    {
      *a4 = ++v22;
      *v15 = (*v15 + 1) & 3;
      if (a5 == v22)
      {
        goto LABEL_51;
      }
    }

    if (*v15)
    {
      *a4 = v22 + 1;
LABEL_69:
      v18 = 9;
      goto LABEL_74;
    }

    v23 = lzma_index_hash_init(*(a1 + 352), a2);
    *(a1 + 352) = v23;
    if (!v23)
    {
      v18 = 5;
      goto LABEL_74;
    }

    *a1 = 0;
    *(a1 + 384) = 0;
  }

LABEL_51:
  if (a9 != 3)
  {
LABEL_55:
    v18 = 0;
    goto LABEL_74;
  }

  if (*v15)
  {
    v18 = 9;
  }

  else
  {
    v18 = 1;
  }

LABEL_74:
  v30 = *MEMORY[0x29EDCA608];
  return v18;
}

void stream_decoder_end(void *a1, uint64_t a2)
{
  end = lzma_next_end((a1 + 1), a2);
  lzma_index_hash_end(a1[44], a2, end);

  lzma_free(a1, a2);
}

uint64_t stream_decoder_memconfig(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  *a2 = *(a1 + 368);
  *a3 = *(a1 + 360);
  if (!a4)
  {
    return 0;
  }

  if (*(a1 + 368) > a4)
  {
    return 6;
  }

  result = 0;
  *(a1 + 360) = a4;
  return result;
}

uint64_t lzma_stream_decoder(void *a1, unint64_t a2, unsigned int a3)
{
  v6 = lzma_strm_init(a1);
  if (!v6)
  {
    v6 = lzma_stream_decoder_init(a1[7], a1[6], a2, a3);
    if (v6)
    {
      lzma_end(a1);
    }

    else
    {
      v7 = a1[7];
      *(v7 + 96) = 1;
      *(v7 + 99) = 1;
    }
  }

  return v6;
}

uint64_t lzma_stream_header_decode(uint64_t a1, uint64_t a2)
{
  if (*a2 != 1484404733 || *(a2 + 4) != 90)
  {
    return 7;
  }

  if (lzma_crc32((a2 + 6), 2uLL, 0) != *(a2 + 8))
  {
    return 9;
  }

  if (*(a2 + 6) || *(a2 + 7) > 0xFu)
  {
    return 8;
  }

  result = 0;
  *a1 = 0;
  *(a1 + 16) = *(a2 + 7) & 0xF;
  *(a1 + 8) = -1;
  return result;
}

uint64_t lzma_stream_footer_decode(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 10) != lzma_footer_magic)
  {
    return 7;
  }

  if (lzma_crc32((a2 + 4), 6uLL, 0) != *a2)
  {
    return 9;
  }

  if (*(a2 + 8) || *(a2 + 9) > 0xFu)
  {
    return 8;
  }

  result = 0;
  *a1 = 0;
  *(a1 + 16) = *(a2 + 9) & 0xF;
  *(a1 + 8) = 4 * *(a2 + 4) + 4;
  return result;
}

uint64_t lzma_vli_decode(unint64_t *a1, char *a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (v5 > 8)
      {
        return 11;
      }

      v6 = *a1;
    }

    else
    {
      v6 = 0;
      *a1 = 0;
    }

    if (v6 >> (7 * v5))
    {
      return 11;
    }

    v7 = *a4;
    if (*a4 >= a5)
    {
      return 10;
    }
  }

  else
  {
    *a1 = 0;
    v7 = *a4;
    if (*a4 >= a5)
    {
      return 9;
    }

    v6 = 0;
    v5 = 0;
    a2 = &v16;
  }

  v9 = 0;
  if (a5 <= v7 + 1)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = a5;
  }

  for (i = 7 * v5; ; i += 7)
  {
    v12 = *(a3 + v7 + v9);
    v6 += (v12 & 0x7F) << i;
    v13 = v5 + v9;
    if ((v12 & 0x80) == 0)
    {
      break;
    }

    if (v13 == 8)
    {
      *a4 = v7 - v5 + 9;
      v8 = 9;
      *a2 = 9;
      *a1 = v6;
      return v8;
    }

    ++v9;
    if (v7 + v9 >= a5)
    {
      *a4 = v10;
      *a2 = v5 + v9;
      *a1 = v6;
      if (a2 == &v16)
      {
        return 9;
      }

      else
      {
        return 0;
      }
    }
  }

  *a4 = v7 + v9 + 1;
  *a2 = v13 + 1;
  *a1 = v6;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v13 + 1) > 1;
  }

  if (v14)
  {
    return 9;
  }

  else
  {
    return a2 != &v16;
  }
}

uint64_t lzma_check_is_supported(unsigned int a1)
{
  if (a1 <= 0xF)
  {
    return lzma_check_is_supported_available_checks[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t lzma_check_size(unsigned int a1)
{
  if (a1 <= 0xF)
  {
    return lzma_check_size_check_sizes[a1];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t lzma_check_init(uint64_t result, int a2)
{
  switch(a2)
  {
    case 10:
      return CC_SHA256_Init((result + 64));
    case 4:
      *(result + 64) = 0;
      break;
    case 1:
      *(result + 64) = 0;
      break;
  }

  return result;
}

uint64_t lzma_check_update(uint64_t result, int a2, char *data, unint64_t len)
{
  v4 = len;
  v5 = data;
  v6 = result;
  switch(a2)
  {
    case 10:
      if (HIDWORD(len))
      {
        do
        {
          CC_SHA256_Update((v6 + 64), v5, 0xFFFFFFFF);
          v5 += 0xFFFFFFFFLL;
          v4 -= 0xFFFFFFFFLL;
        }

        while (HIDWORD(v4));
      }

      return CC_SHA256_Update((v6 + 64), v5, v4);
    case 4:
      result = lzma_crc64(data, len, *(result + 64));
      *(v6 + 64) = result;
      break;
    case 1:
      result = lzma_crc32(data, len, *(result + 64));
      *(v6 + 64) = result;
      break;
  }

  return result;
}

uint64_t lzma_check_finish(uint64_t result, int a2)
{
  switch(a2)
  {
    case 10:
      return CC_SHA256_Final(result, (result + 64));
    case 4:
      *result = *(result + 64);
      break;
    case 1:
      *result = *(result + 64);
      break;
  }

  return result;
}

uint64_t lzma_crc32(char *a1, unint64_t a2, int a3)
{
  v3 = ~a3;
  if (a2 >= 9)
  {
    if ((a1 & 7) != 0)
    {
      v4 = a1 + 1;
      v5 = a1;
      do
      {
        v6 = *v5++;
        v3 = lzma_crc32_table[v3 ^ v6] ^ (v3 >> 8);
        --a2;
      }

      while ((v4++ & 7) != 0);
      a1 += 8 - (a1 & 7);
    }

    v8 = a2 & 0xFFFFFFFFFFFFFFF8;
    a2 &= 7u;
    if (v8 >= 1)
    {
      v9 = &a1[v8];
      do
      {
        v10 = *a1;
        v11 = *(a1 + 1);
        a1 += 8;
        v12 = v10 ^ v3;
        v3 = lzma_crc32_table[BYTE1(v12) + 1536] ^ lzma_crc32_table[v12 + 1792] ^ lzma_crc32_table[BYTE2(v12) + 1280] ^ lzma_crc32_table[HIBYTE(v12) + 1024] ^ lzma_crc32_table[v11 + 768] ^ lzma_crc32_table[BYTE1(v11) + 512] ^ lzma_crc32_table[BYTE2(v11) + 256] ^ *(lzma_crc32_table + ((v11 >> 22) & 0x3FC));
      }

      while (a1 < v9);
    }
  }

  for (; a2; --a2)
  {
    v13 = *a1++;
    v3 = lzma_crc32_table[v3 ^ v13] ^ (v3 >> 8);
  }

  return ~v3;
}

uint64_t lzma_crc64(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = ~a3;
  if (a2 >= 5)
  {
    if ((a1 & 3) != 0)
    {
      v4 = a1 + 1;
      v5 = a1;
      do
      {
        v6 = *v5++;
        v3 = lzma_crc64_table[v3 ^ v6] ^ (v3 >> 8);
        --a2;
      }

      while ((v4++ & 3) != 0);
      a1 = a1 - (a1 & 3) + 4;
    }

    v8 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    a2 &= 3u;
    if (v8 >= 1)
    {
      v9 = a1 + v8;
      do
      {
        v10 = *a1;
        a1 += 4;
        v3 = lzma_crc64_table[(v10 ^ v3) + 768] ^ HIDWORD(v3) ^ lzma_crc64_table[((v10 ^ v3) >> 8) + 512] ^ lzma_crc64_table[((v10 ^ v3) >> 16) + 256] ^ lzma_crc64_table[(v10 ^ v3) >> 24];
      }

      while (a1 < v9);
    }
  }

  for (; a2; --a2)
  {
    v11 = *a1++;
    v3 = lzma_crc64_table[v3 ^ v11] ^ (v3 >> 8);
  }

  return ~v3;
}

uint64_t lzma_lzip_decoder_init(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  if (*(a1 + 16) != lzma_lzip_decoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = lzma_lzip_decoder_init;
  if (a4 > 0x3F)
  {
    return 8;
  }

  v8 = *a1;
  if (!*a1)
  {
    v8 = lzma_alloc(0x118uLL, a2);
    if (!v8)
    {
      return 5;
    }

    *a1 = v8;
    *(a1 + 24) = lzip_decode;
    *(a1 + 32) = lzip_decoder_end;
    *(a1 + 48) = lzip_decoder_get_check;
    *(a1 + 56) = lzip_decoder_memconfig;
    *(v8 + 25) = 0;
    *(v8 + 26) = -1;
    *(v8 + 232) = 0u;
    *(v8 + 248) = 0u;
    *(v8 + 216) = 0u;
    *(v8 + 264) = 0u;
  }

  v9 = 0;
  if (a3 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3;
  }

  *(v8 + 4) = v10;
  *(v8 + 5) = 0x8000;
  v8[48] = (a4 & 4) != 0;
  v8[49] = (a4 & 0x10) != 0;
  *v8 = 0;
  v8[50] = (a4 & 8) != 0;
  v8[51] = 1;
  *(v8 + 7) = 0;
  return v9;
}

uint64_t lzip_decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, int a9)
{
  v43[6] = *MEMORY[0x29EDCA608];
  v16 = a1 + 64;
  v15 = *a1;
  v41 = (a1 + 88);
  v17 = xmmword_2990BEE90;
  while (1)
  {
    v18 = 11;
    if (v15 <= 2)
    {
      break;
    }

    if (v15 == 5)
    {
      goto LABEL_36;
    }

    if (v15 != 4)
    {
      if (v15 != 3)
      {
        goto LABEL_58;
      }

      v20 = *(a1 + 40);
LABEL_28:
      if (v20 > *(a1 + 32))
      {
        v18 = 6;
        goto LABEL_58;
      }

      v43[0] = 0x4000000000000001;
      v43[1] = lzma_lzma_decoder_init;
      v43[2] = v41;
      memset(&v43[3], 0, 24);
      filter_init = lzma_next_filter_init(a1 + 200, a2, v43, v17);
      if (filter_init)
      {
        v18 = filter_init;
        goto LABEL_58;
      }

      *(a1 + 8) = 0;
      *a1 = 4;
    }

    v31 = *a4;
    v32 = *a7;
    v18 = (*(a1 + 224))(*(a1 + 200), a2, a3, a4, a5, a6, a7, a8, a9);
    v33 = *a7;
    v34 = *a7 - v32;
    v35 = *a4 - v31 + *(a1 + 24);
    *(a1 + 16) += v34;
    *(a1 + 24) = v35;
    if ((*(a1 + 49) & 1) == 0 && v33 != v32)
    {
      *(a1 + 8) = lzma_crc32((a6 + v32), v34, *(a1 + 8));
    }

    if (v18 != 1)
    {
      goto LABEL_58;
    }

    *a1 = 5;
LABEL_36:
    if (*(a1 + 4))
    {
      v36 = 20;
    }

    else
    {
      v36 = 12;
    }

    lzma_bufcpy(a3, a4, a5, v16, (a1 + 56), v36);
    if (*(a1 + 56) < v36)
    {
LABEL_48:
      v18 = 0;
      goto LABEL_58;
    }

    *(a1 + 56) = 0;
    v37 = *(a1 + 24) + v36;
    *(a1 + 24) = v37;
    if ((*(a1 + 49) & 1) == 0 && *(a1 + 8) != *(a1 + 64) || *(a1 + 16) != *(a1 + 68) || *(a1 + 4) && v37 != *(a1 + 76))
    {
      goto LABEL_47;
    }

    if (*(a1 + 50) != 1)
    {
      v18 = 1;
      goto LABEL_58;
    }

    v15 = 0;
    *(a1 + 51) = 0;
    *a1 = 0;
  }

  if (v15)
  {
    if (v15 != 1)
    {
      if (v15 != 2)
      {
        goto LABEL_58;
      }

      v19 = *a4;
LABEL_21:
      if (v19 >= a5)
      {
        goto LABEL_48;
      }

      *a4 = v19 + 1;
      v27 = *(a3 + v19);
      ++*(a1 + 24);
      v28 = v27 & 0x1F;
      if ((v28 - 30) < 0xFFFFFFEE || (v27 >= 0x20 ? (v29 = v28 == 12) : (v29 = 0), v29))
      {
LABEL_47:
        v18 = 9;
        goto LABEL_58;
      }

      *(a1 + 88) = (1 << v28) - (v27 >> 5 << (v28 - 4));
      *(a1 + 96) = 0;
      *(a1 + 108) = 3;
      *(a1 + 116) = 2;
      v20 = lzma_lzma_decoder_memusage(v41) + 0x8000;
      *(a1 + 40) = v20;
      *a1 = 3;
      goto LABEL_28;
    }

LABEL_18:
    v25 = *a4;
    if (*a4 >= a5)
    {
      goto LABEL_48;
    }

    v19 = v25 + 1;
    *a4 = v25 + 1;
    v26 = *(a3 + v25);
    *(a1 + 4) = v26;
    if (v26 > 1)
    {
      v18 = 8;
      goto LABEL_58;
    }

    ++*(a1 + 24);
    *a1 = 2;
    if (*(a1 + 48))
    {
      v18 = 4;
      goto LABEL_58;
    }

    goto LABEL_21;
  }

  v21 = *(a1 + 56);
  if (v21 > 3)
  {
LABEL_17:
    *(a1 + 56) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = xmmword_2990BEE90;
    *a1 = 1;
    goto LABEL_18;
  }

  v22 = 0;
  v23 = *a4;
  v24 = a5 - *a4;
  if (a5 < *a4)
  {
    v24 = 0;
  }

  while (1)
  {
    if (v24 == v22)
    {
      v18 = (a9 == 3) & (*(a1 + 51) ^ 1u);
      goto LABEL_58;
    }

    if (*(a3 + v23 + v22) != aLzip[v21 + v22])
    {
      break;
    }

    *a4 = v23 + v22 + 1;
    *(a1 + 56) = v21 + v22++ + 1;
    if (v21 + v22 == 4)
    {
      goto LABEL_17;
    }
  }

  if (*(a1 + 51))
  {
    v18 = 7;
  }

  else
  {
    v18 = 1;
  }

LABEL_58:
  v38 = *MEMORY[0x29EDCA608];
  return v18;
}

void lzip_decoder_end(void *a1, uint64_t a2)
{
  lzma_next_end(a1 + 200, a2);

  lzma_free(a1, a2);
}

uint64_t lzip_decoder_memconfig(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  *a2 = *(a1 + 40);
  *a3 = *(a1 + 32);
  if (!a4)
  {
    return 0;
  }

  if (*(a1 + 40) > a4)
  {
    return 6;
  }

  result = 0;
  *(a1 + 32) = a4;
  return result;
}

uint64_t lzma_lzip_decoder(void *a1, unint64_t a2, unsigned int a3)
{
  v6 = lzma_strm_init(a1);
  if (!v6)
  {
    v6 = lzma_lzip_decoder_init(a1[7], a1[6], a2, a3);
    if (v6)
    {
      lzma_end(a1);
    }

    else
    {
      v7 = a1[7];
      *(v7 + 96) = 1;
      *(v7 + 99) = 1;
    }
  }

  return v6;
}

unint64_t lzma_lz_encoder_memusage(uint64_t *a1)
{
  v4 = 0;
  v3 = 0u;
  memset(v2, 0, sizeof(v2));
  if (lz_encoder_prepare(v2, 0, a1))
  {
    return -1;
  }

  else
  {
    return DWORD2(v2[0]) + 4 * (v4 + HIDWORD(v3)) + 240;
  }
}

uint64_t lz_encoder_prepare(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3 - 1610612737 < 0xFFFFFFFFA0000FFFLL)
  {
    return 1;
  }

  v7 = a3[3];
  v6 = a3[4];
  if (v6 > v7)
  {
    return 1;
  }

  v10 = *a3;
  v11 = *a3 + v3;
  v12 = a3[2] + v7;
  *(a1 + 12) = v11;
  *(a1 + 16) = v12;
  v13 = (v12 + v10) >> 1;
  v14 = *(a1 + 8);
  v15 = (v3 >> 1) + v11 + v12 + v13 + 0x80000;
  *(a1 + 8) = v15;
  v16 = *a1;
  if (v16 && v14 != v15)
  {
    lzma_free(v16, a2);
    *a1 = 0;
    v7 = a3[3];
    v6 = a3[4];
    v3 = a3[1];
  }

  *(a1 + 96) = v6;
  *(a1 + 100) = v7;
  v17 = v3 + 1;
  *(a1 + 84) = v3 + 1;
  v18 = *(a3 + 10);
  v19 = lzma_mf_hc3_skip;
  v20 = lzma_mf_hc3_find;
  result = 1;
  if (v18 <= 17)
  {
    if (v18 != 3)
    {
      if (v18 != 4)
      {
        return result;
      }

      v19 = lzma_mf_hc4_skip;
      v20 = lzma_mf_hc4_find;
    }
  }

  else
  {
    switch(v18)
    {
      case 18:
        v21 = 0;
        *(a1 + 48) = lzma_mf_bt2_find;
        *(a1 + 56) = lzma_mf_bt2_skip;
        v22 = 0xFFFF;
        *(a1 + 88) = 0xFFFF;
        goto LABEL_27;
      case 19:
        v19 = lzma_mf_bt3_skip;
        v20 = lzma_mf_bt3_find;
        break;
      case 20:
        v19 = lzma_mf_bt4_skip;
        v20 = lzma_mf_bt4_find;
        break;
      default:
        return result;
    }
  }

  *(a1 + 48) = v20;
  *(a1 + 56) = v19;
  v23 = v18 & 0xF;
  v21 = (v18 & 0x10) == 0;
  v24 = (v3 - 1) | ((v3 - 1) >> 1) | (((v3 - 1) | ((v3 - 1) >> 1)) >> 2);
  v22 = ((v24 | (v24 >> 4)) >> 1) | ((v24 | (v24 >> 4)) >> 9) | 0xFFFF;
  v25 = v22 >> 1;
  if (v23 == 3)
  {
    v25 = 0xFFFFFF;
  }

  if (v22 > 0x1000000)
  {
    v22 = v25;
  }

  *(a1 + 88) = v22;
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      v26 = 1025;
    }

    else
    {
      v26 = 66561;
    }

    v27 = v22 + v26;
    goto LABEL_28;
  }

LABEL_27:
  v27 = v22 + 1;
LABEL_28:
  v29 = *(a1 + 108);
  v28 = *(a1 + 112);
  v30 = v17 << !v21;
  *(a1 + 108) = v27;
  *(a1 + 112) = v30;
  if (v29 != v27 || v28 != v30)
  {
    lzma_free(*(a1 + 64), a2);
    *(a1 + 64) = 0;
    lzma_free(*(a1 + 72), a2);
    *(a1 + 72) = 0;
  }

  v31 = *(a3 + 11);
  *(a1 + 92) = v31;
  result = 0;
  if (!v31)
  {
    if (v21)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    if (v21)
    {
      v33 = 4;
    }

    else
    {
      v33 = 16;
    }

    *(a1 + 92) = (*(a1 + 96) >> v32) + v33;
  }

  return result;
}

uint64_t lzma_lz_encoder_init(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t, void, void, _OWORD *))
{
  v7 = *a1;
  if (!*a1)
  {
    v9 = lzma_alloc(0xF0uLL, a2);
    if (!v9)
    {
      return 5;
    }

    v7 = v9;
    *a1 = v9;
    a1[3] = lz_encode;
    a1[4] = lz_encoder_end;
    a1[8] = lz_encoder_update;
    a1[9] = lz_encoder_set_out_limit;
    v9[5] = 0;
    *(v9 + 12) = 0;
    *(v9 + 37) = 0;
    *(v9 + 38) = 0;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v9[13] = 0;
    v9[14] = 0;
    v9[20] = 0;
    v9[21] = -1;
    *(v9 + 11) = 0u;
    *(v9 + 12) = 0u;
    *(v9 + 13) = 0u;
    *(v9 + 14) = 0u;
  }

  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  result = a4(v7, a2, *a3, a3[2], v21);
  if (result)
  {
    return result;
  }

  if (lz_encoder_prepare((v7 + 5), a2, v21))
  {
    return 8;
  }

  if (!v7[5])
  {
    v11 = lzma_alloc((*(v7 + 12) + 4), a2);
    v7[5] = v11;
    if (!v11)
    {
      return 5;
    }

    *&v11[*(v7 + 12)] = 0;
  }

  *(v7 + 15) = *(v7 + 31);
  v7[8] = 0;
  v7[9] = 0;
  *(v7 + 20) = 0;
  v12 = v7[13];
  v13 = *(v7 + 37);
  if (!v12)
  {
    v7[13] = lzma_alloc_zero(4 * v13, a2);
    v15 = lzma_alloc(4 * *(v7 + 38), a2);
    v7[14] = v15;
    v16 = v7[13];
    if (v16 && v15)
    {
      goto LABEL_14;
    }

    lzma_free(v16, a2);
    v7[13] = 0;
    lzma_free(v7[14], a2);
    v7[14] = 0;
    return 5;
  }

  bzero(v12, 4 * v13);
LABEL_14:
  *(v7 + 30) = 0;
  v17 = v22;
  if (v22)
  {
    v18 = DWORD2(v22);
    if (DWORD2(v22))
    {
      v19 = *(v7 + 12);
      if (DWORD2(v22) >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = DWORD2(v22);
      }

      *(v7 + 19) = v20;
      memcpy(v7[5], (v17 + v18 - v20), v20);
      *(v7 + 36) = 1;
      v14.n128_f64[0] = (v7[12])(v7 + 5, *(v7 + 19));
    }
  }

  *(v7 + 36) = 0;
  return lzma_next_filter_init((v7 + 20), a2, a3 + 3, v14);
}

uint64_t lz_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, unint64_t *a7, unint64_t a8, int a9)
{
  while (*a7 < a8 && (a9 || *a4 < a5))
  {
    if (!*(a1 + 144))
    {
      v17 = *(a1 + 64);
      if (v17 >= *(a1 + 72))
      {
        if (v17 >= *(a1 + 48) - *(a1 + 56))
        {
          v19 = (v17 - *(a1 + 52)) & 0xFFFFFFF0;
          memmove(*(a1 + 40), (*(a1 + 40) + v19), (*(a1 + 76) - v19));
          v20 = *(a1 + 64) - v19;
          *(a1 + 60) += v19;
          *(a1 + 64) = v20;
          v18 = *(a1 + 76) - v19;
          *(a1 + 72) -= v19;
          *(a1 + 76) = v18;
        }

        else
        {
          v18 = *(a1 + 76);
        }

        v32 = v18;
        v21 = *(a1 + 184);
        if (v21)
        {
          v22 = v21(*(a1 + 160), a2, a3, a4, a5, *(a1 + 40), &v32, *(a1 + 48), a9);
        }

        else
        {
          lzma_bufcpy(a3, a4, a5, *(a1 + 40), &v32, *(a1 + 48));
          if (a9)
          {
            v22 = *a4 == a5;
          }

          else
          {
            v22 = 0;
          }
        }

        v23 = v32;
        *(a1 + 76) = v32;
        *(*(a1 + 40) + v23) = 0;
        if (v22 == 1)
        {
          v22 = 0;
          *(a1 + 144) = a9;
          v24 = *(a1 + 76);
          goto LABEL_18;
        }

        v25 = *(a1 + 76);
        v26 = *(a1 + 56);
        v27 = v25 >= v26;
        v24 = v25 - v26;
        if (v24 != 0 && v27)
        {
LABEL_18:
          *(a1 + 72) = v24;
        }

        v28 = *(a1 + 80);
        if (v28)
        {
          v29 = *(a1 + 64);
          if (v29 < *(a1 + 72))
          {
            *(a1 + 80) = 0;
            *(a1 + 64) = v29 - v28;
            (*(a1 + 96))(a1 + 40);
          }
        }

        if (v22)
        {
          return v22;
        }
      }
    }

    v30 = (*(a1 + 8))(*a1, a1 + 40, a6, a7, a8);
    if (v30)
    {
      v22 = v30;
      *(a1 + 144) = 0;
      return v22;
    }
  }

  return 0;
}

void lz_encoder_end(void **a1, uint64_t a2)
{
  lzma_next_end((a1 + 20), a2);
  lzma_free(a1[14], a2);
  lzma_free(a1[13], a2);
  lzma_free(a1[5], a2);
  v4 = a1[2];
  v5 = *a1;
  if (v4)
  {
    v4(v5, a2);
  }

  else
  {
    lzma_free(v5, a2);
  }

  lzma_free(a1, a2);
}

uint64_t lz_encoder_update(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  if (!v4)
  {
    return 11;
  }

  result = v4(*a1, a4);
  if (!result)
  {

    return lzma_next_filter_update((a1 + 20), a2, (a4 + 16));
  }

  return result;
}

uint64_t lz_encoder_set_out_limit(void *a1)
{
  if (a1[23])
  {
    return 8;
  }

  v2 = a1[4];
  if (!v2)
  {
    return 8;
  }

  else
  {
    return v2(*a1);
  }
}

uint64_t lzma_mf_is_supported(unsigned int a1)
{
  if (a1 > 0x14)
  {
    return 0;
  }

  v1 = a1;
  result = 1;
  if (((1 << v1) & 0x1C0018) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t lzma_mf_find(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = (*(a1 + 48))(a1, a3);
  if (v6)
  {
    v7 = (a3 + 8 * (v6 - 1));
    v8 = *v7;
    if (v8 == *(a1 + 96))
    {
      v9 = *(a1 + 24);
      v10 = *(a1 + 36) - v9;
      v11 = *(a1 + 100);
      if (v10 + 1 < v11)
      {
        v12 = (v10 + 1);
      }

      else
      {
        v12 = v11;
      }

      if (v8 >= v12)
      {
LABEL_10:
        v8 = v12;
      }

      else
      {
        v13 = *a1 + v9 - 1;
        v14 = ~v7[1] + v13;
        while (1)
        {
          v15 = *(v13 + v8) - *(v14 + v8);
          if (v15)
          {
            break;
          }

          LODWORD(v8) = v8 + 4;
          if (v8 >= v12)
          {
            goto LABEL_10;
          }
        }

        if (*(v13 + v8) == *(v14 + v8))
        {
          LODWORD(v8) = v8 + 2;
          v17 = BYTE2(v15);
        }

        else
        {
          v17 = *(v13 + v8) - *(v14 + v8);
        }

        if (!v17)
        {
          LODWORD(v8) = v8 + 1;
        }

        if (v8 >= v12)
        {
          v8 = v12;
        }

        else
        {
          v8 = v8;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  *a2 = v6;
  ++*(a1 + 28);
  return v8;
}

uint64_t lzma_mf_hc3_find(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 24);
  v5 = (*(a1 + 36) - v4);
  v6 = *(a1 + 96);
  if (v6 <= v5 || (v6 = v5, v5 > 2))
  {
    v8 = (*a1 + v4);
    v9 = *(a1 + 20) + v4;
    v10 = lzma_crc32_table[*v8] ^ v8[1];
    v11 = v10 & 0x3FF;
    v12 = (v10 ^ (v8[2] << 8)) & *(a1 + 88);
    v13 = *(a1 + 64);
    v14 = v9 - *(v13 + 4 * (v10 & 0x3FF));
    v12 += 1024;
    v15 = *(v13 + 4 * v12);
    *(v13 + 4 * v11) = v9;
    *(v13 + 4 * v12) = v9;
    v16 = *(a1 + 84);
    if (v14 < v16)
    {
      v17 = &v8[-v14];
      if (*v17 == *v8)
      {
        if (v6 < 3)
        {
LABEL_10:
          *a2 = v6;
          a2[1] = v14 - 1;
        }

        else
        {
          v18 = 2;
          while (1)
          {
            v19 = *&v17[v18] - *&v8[v18];
            if (v19)
            {
              break;
            }

            v18 += 4;
            if (v18 >= v6)
            {
              goto LABEL_10;
            }
          }

          v23 = v18 + 2;
          if (v19)
          {
            v23 = v18;
            v24 = v19;
          }

          else
          {
            v24 = BYTE2(v19);
          }

          if (v24)
          {
            v25 = v23;
          }

          else
          {
            v25 = v23 + 1;
          }

          if (v25 >= v6)
          {
            v21 = v6;
          }

          else
          {
            v21 = v25;
          }

          *a2 = v21;
          a2[1] = v14 - 1;
          if (v6 > v25)
          {
            v20 = 1;
            goto LABEL_13;
          }
        }

        *(*(a1 + 72) + 4 * *(a1 + 80)) = v15;
        move_pos(a1);
        return 1;
      }
    }

    v20 = 0;
    v21 = 2;
LABEL_13:
    v7 = (hc_find_func(v6, v9, v8, v15, *(a1 + 92), *(a1 + 72), *(a1 + 80), v16, &a2[2 * v20], v21) - a2) >> 3;
    move_pos(a1);
    return v7;
  }

  v7 = 0;
  *(a1 + 24) = v4 + 1;
  ++*(a1 + 40);
  return v7;
}

uint64_t move_pos(uint64_t result)
{
  v1 = *(result + 80);
  if (v1 + 1 == *(result + 84))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 + 1;
  }

  *(result + 80) = v2;
  v3 = *(result + 20);
  v4 = *(result + 24) + 1;
  *(result + 24) = v4;
  if (v3 + v4 == -1)
  {
    return normalize(result);
  }

  return result;
}

_DWORD *hc_find_func(uint64_t a1, int a2, unsigned __int8 *a3, int a4, int a5, uint64_t a6, unsigned int a7, unsigned int a8, _DWORD *a9, unsigned int a10)
{
  result = a9;
  *(a6 + 4 * a7) = a4;
  if (a5)
  {
    v12 = a2 - a4;
    if (a2 - a4 < a8)
    {
      v13 = a10;
      do
      {
        if (a7 >= v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = a8;
        }

        v15 = *(a6 + 4 * (a7 - v12 + v14));
        v16 = &a3[-v12];
        if (v16[v13] != a3[v13] || *v16 != *a3)
        {
          goto LABEL_25;
        }

        v17 = a1;
        if (a1 >= 2)
        {
          LODWORD(v17) = 1;
          while (1)
          {
            v18 = *&v16[v17] - *&a3[v17];
            if (v18)
            {
              break;
            }

            LODWORD(v17) = v17 + 4;
            if (v17 >= a1)
            {
              v17 = a1;
              goto LABEL_22;
            }
          }

          if (*&v16[v17] == *&a3[v17])
          {
            LODWORD(v17) = v17 + 2;
            v19 = BYTE2(v18);
          }

          else
          {
            v19 = v16[v17] - a3[v17];
          }

          if (!v19)
          {
            LODWORD(v17) = v17 + 1;
          }

          if (v17 >= a1)
          {
            v17 = a1;
          }

          else
          {
            v17 = v17;
          }
        }

LABEL_22:
        if (v13 < v17)
        {
          *result = v17;
          result[1] = v12 - 1;
          result += 2;
          if (v17 == a1)
          {
            return result;
          }
        }

        else
        {
LABEL_25:
          v17 = v13;
        }

        if (!--a5)
        {
          break;
        }

        v12 = a2 - v15;
        v13 = v17;
      }

      while (a2 - v15 < a8);
    }
  }

  return result;
}

uint64_t lzma_mf_hc3_skip(uint64_t result, int a2)
{
  v3 = result;
  do
  {
    v4 = *(v3 + 24);
    if ((*(v3 + 36) - v4) > 2)
    {
      v5 = (*v3 + v4);
      v6 = *(v3 + 20) + v4;
      v7 = lzma_crc32_table[*v5] ^ v5[1];
      v8 = v7 & 0x3FF;
      LODWORD(v5) = ((v7 ^ (v5[2] << 8)) & *(v3 + 88)) + 1024;
      v9 = *(v3 + 64);
      v10 = *(v3 + 72);
      v11 = *(v9 + 4 * v5);
      *(v9 + 4 * v8) = v6;
      *(v9 + 4 * v5) = v6;
      *(v10 + 4 * *(v3 + 80)) = v11;
      result = move_pos(v3);
    }

    else
    {
      *(v3 + 24) = v4 + 1;
      ++*(v3 + 40);
    }

    --a2;
  }

  while (a2);
  return result;
}

unint64_t lzma_mf_hc4_find(uint64_t a1, char *a2)
{
  v4 = *(a1 + 24);
  v5 = (*(a1 + 36) - v4);
  v6 = *(a1 + 96);
  if (v6 <= v5 || (v6 = v5, v5 > 3))
  {
    v8 = (*a1 + v4);
    v9 = *(a1 + 20) + v4;
    v10 = lzma_crc32_table[*v8] ^ v8[1];
    v11 = v10 & 0x3FF;
    v12 = v10 ^ (v8[2] << 8);
    v13 = *(a1 + 64);
    v14 = *(v13 + 4 * v11);
    v15 = v9 - v14;
    v16 = v13 + 4 * v12;
    v17 = *(v16 + 4096);
    v18 = ((v12 ^ (32 * lzma_crc32_table[v8[3]])) & *(a1 + 88)) + 66560;
    v19 = *(v13 + 4 * v18);
    *(v13 + 4 * v11) = v9;
    v20 = v9 - v17;
    *(v16 + 4096) = v9;
    *(v13 + 4 * v18) = v9;
    v21 = *(a1 + 84);
    if (v9 - v14 < v21 && v8[-v15] == *v8)
    {
      v22 = 0;
      v23 = 2;
      *a2 = 2;
      *(a2 + 1) = v15 - 1;
      v24 = 1;
    }

    else
    {
      v24 = 0;
      v22 = 1;
      v23 = 1;
    }

    v25 = v17 == v14 || v20 >= v21;
    if (v25 || v8[-v20] != *v8)
    {
      if (v22)
      {
        LODWORD(v7) = 0;
        goto LABEL_16;
      }

      v26 = -v15;
      v7 = 1;
    }

    else
    {
      v26 = -v20;
      v7 = v24 + 1;
      *&a2[8 * v24 + 4] = v20 - 1;
      v23 = 3;
    }

    if (v23 >= v6)
    {
LABEL_24:
      *&a2[8 * v7 - 8] = v6;
LABEL_25:
      *(*(a1 + 72) + 4 * *(a1 + 80)) = v19;
LABEL_26:
      move_pos(a1);
      return v7;
    }

    v27 = &v8[v26];
    while (1)
    {
      v28 = *&v27[v23] - *&v8[v23];
      if (v28)
      {
        break;
      }

      v23 += 4;
      if (v23 >= v6)
      {
        goto LABEL_24;
      }
    }

    if (*&v27[v23] == *&v8[v23])
    {
      v23 += 2;
      v30 = BYTE2(v28);
    }

    else
    {
      v30 = v27[v23] - v8[v23];
    }

    if (v30)
    {
      v31 = v23;
    }

    else
    {
      v31 = v23 + 1;
    }

    if (v31 >= v6)
    {
      v23 = v6;
    }

    else
    {
      v23 = v31;
    }

    *&a2[8 * v7 - 8] = v23;
    if (v6 <= v31)
    {
      goto LABEL_25;
    }

LABEL_16:
    if (v23 <= 3)
    {
      v23 = 3;
    }

    v7 = (hc_find_func(v6, v9, v8, v19, *(a1 + 92), *(a1 + 72), *(a1 + 80), v21, &a2[8 * v7], v23) - a2) >> 3;
    goto LABEL_26;
  }

  v7 = 0;
  *(a1 + 24) = v4 + 1;
  ++*(a1 + 40);
  return v7;
}

uint64_t lzma_mf_hc4_skip(uint64_t result, int a2)
{
  v3 = result;
  do
  {
    v4 = *(v3 + 24);
    if ((*(v3 + 36) - v4) > 3)
    {
      v5 = (*v3 + v4);
      v6 = *(v3 + 20) + v4;
      v7 = lzma_crc32_table[*v5] ^ v5[1];
      v8 = v7 & 0x3FF;
      v9 = v7 ^ (v5[2] << 8);
      LODWORD(v5) = ((v9 ^ (32 * lzma_crc32_table[v5[3]])) & *(v3 + 88)) + 66560;
      v10 = *(v3 + 64);
      v11 = *(v3 + 72);
      v12 = *(v10 + 4 * v5);
      *(v10 + 4 * v8) = v6;
      *(v10 + 4 * v9 + 4096) = v6;
      *(v10 + 4 * v5) = v6;
      *(v11 + 4 * *(v3 + 80)) = v12;
      result = move_pos(v3);
    }

    else
    {
      *(v3 + 24) = v4 + 1;
      ++*(v3 + 40);
    }

    --a2;
  }

  while (a2);
  return result;
}

unint64_t lzma_mf_bt2_find(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 36) - v4;
  v6 = *(a1 + 96);
  if (v6 > v5 && (v5 < 2 || (v6 = v5, *(a1 + 104) == 1)))
  {
    v7 = 0;
    *(a1 + 24) = v4 + 1;
    ++*(a1 + 40);
  }

  else
  {
    v8 = *a1;
    v9 = *(*a1 + v4);
    v11 = *(a1 + 64);
    v10 = *(a1 + 72);
    v12 = *(v11 + 4 * v9);
    v13 = *(a1 + 20) + v4;
    *(v11 + 4 * v9) = v13;
    v7 = (bt_find_func(v6, v13, v8 + v4, v12, *(a1 + 92), v10, *(a1 + 80), *(a1 + 84), a2, 1u) - a2) >> 3;
    move_pos(a1);
  }

  return v7;
}

unsigned int *bt_find_func(unsigned int a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int *a9, unsigned int a10)
{
  result = a9;
  v12 = (a6 + 8 * a7);
  v13 = v12 + 1;
  if (!a5 || (v14 = a2 - a4, a2 - a4 >= a8))
  {
LABEL_30:
    *v13 = 0;
    *v12 = 0;
    return result;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if (a7 >= v14)
    {
      v18 = 0;
    }

    else
    {
      v18 = a8;
    }

    v19 = (a6 + 8 * (a7 - v14 + v18));
    v20 = a3 - v14;
    if (v16 >= v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = v16;
    }

    if (*(v20 + v21) != *(a3 + v21))
    {
      goto LABEL_25;
    }

    v22 = v21 + 1;
    v21 = a1;
    if (v22 < a1)
    {
      while (1)
      {
        v23 = *(v20 + v22) - *(a3 + v22);
        if (v23)
        {
          break;
        }

        v22 += 4;
        if (v22 >= a1)
        {
          v21 = a1;
          goto LABEL_22;
        }
      }

      if (*(v20 + v22) == *(a3 + v22))
      {
        v22 += 2;
        LOBYTE(v23) = BYTE2(v23);
      }

      if (v23)
      {
        v21 = v22;
      }

      else
      {
        v21 = v22 + 1;
      }

      if (v21 >= a1)
      {
        v21 = a1;
      }
    }

LABEL_22:
    if (a10 >= v21)
    {
      goto LABEL_25;
    }

    *result = v21;
    result[1] = v14 - 1;
    result += 2;
    if (v21 == a1)
    {
      break;
    }

    a10 = v21;
LABEL_25:
    if (*(v20 + v21) >= *(a3 + v21))
    {
      *v13 = a4;
      v13 = v19;
      v16 = v21;
    }

    else
    {
      *v12 = a4;
      v12 = v19 + 1;
      v15 = v21;
      ++v19;
    }

    if (--a5)
    {
      a4 = *v19;
      v14 = a2 - *v19;
      if (v14 < a8)
      {
        continue;
      }
    }

    goto LABEL_30;
  }

  *v12 = *v19;
  *v13 = v19[1];
  return result;
}

uint64_t lzma_mf_bt2_skip(uint64_t a1, int a2)
{
  do
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 36) - v4;
    result = *(a1 + 96);
    if (result > v5 && (v5 < 2 || (result = (*(a1 + 36) - v4), *(a1 + 104) == 1)))
    {
      *(a1 + 24) = v4 + 1;
      ++*(a1 + 40);
    }

    else
    {
      v7 = *a1;
      v8 = *(*a1 + v4);
      v10 = *(a1 + 64);
      v9 = *(a1 + 72);
      v11 = *(v10 + 4 * v8);
      v12 = *(a1 + 20) + v4;
      *(v10 + 4 * v8) = v12;
      bt_skip_func(result, v12, v7 + v4, v11, *(a1 + 92), v9, *(a1 + 80), *(a1 + 84));
      result = move_pos(a1);
    }

    --a2;
  }

  while (a2);
  return result;
}

uint64_t bt_skip_func(uint64_t result, int a2, uint64_t a3, int a4, int a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v8 = (a6 + 8 * a7);
  v9 = v8 + 1;
  if (a5 && (v10 = a2 - a4, a2 - a4 < a8))
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = a7 >= v10 ? 0 : a8;
      v14 = (a6 + 8 * (a7 - v10 + v13));
      v15 = a3 - v10;
      v16 = v12 >= v11 ? v11 : v12;
      v17 = *(v15 + v16);
      v18 = *(a3 + v16);
      if (v17 == v18)
      {
        break;
      }

LABEL_21:
      if (v17 >= v18)
      {
        *v9 = a4;
        v12 = v16;
        v9 = v14;
      }

      else
      {
        *v8 = a4;
        v8 = v14 + 1;
        v11 = v16;
        ++v14;
      }

      if (--a5)
      {
        a4 = *v14;
        v10 = a2 - *v14;
        if (v10 < a8)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    ++v16;
    while (v16 < result)
    {
      v19 = *(v15 + v16) - *(a3 + v16);
      if (v19)
      {
        if (*(v15 + v16) == *(a3 + v16))
        {
          v16 += 2;
          LOBYTE(v19) = BYTE2(v19);
        }

        if (!v19)
        {
          ++v16;
        }

        if (v16 < result)
        {
          v17 = *(v15 + v16);
          v18 = *(a3 + v16);
          goto LABEL_21;
        }

        break;
      }

      v16 += 4;
    }

    *v8 = *v14;
    *v9 = v14[1];
  }

  else
  {
LABEL_26:
    *v9 = 0;
    *v8 = 0;
  }

  return result;
}

uint64_t lzma_mf_bt3_find(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 24);
  v5 = (*(a1 + 36) - v4);
  v6 = *(a1 + 96);
  if (v6 <= v5 || v5 >= 3 && (v6 = v5, *(a1 + 104) != 1))
  {
    v8 = (*a1 + v4);
    v9 = *(a1 + 20) + v4;
    v10 = lzma_crc32_table[*v8] ^ v8[1];
    v11 = v10 & 0x3FF;
    v12 = (v10 ^ (v8[2] << 8)) & *(a1 + 88);
    v13 = *(a1 + 64);
    v14 = v9 - *(v13 + 4 * (v10 & 0x3FF));
    v12 += 1024;
    v15 = *(v13 + 4 * v12);
    *(v13 + 4 * v11) = v9;
    *(v13 + 4 * v12) = v9;
    v16 = *(a1 + 84);
    if (v14 < v16)
    {
      v17 = &v8[-v14];
      if (*v17 == *v8)
      {
        if (v6 < 3)
        {
LABEL_11:
          *a2 = v6;
          a2[1] = v14 - 1;
        }

        else
        {
          v18 = 2;
          while (1)
          {
            v19 = *&v8[v18] - *&v17[v18];
            if (v19)
            {
              break;
            }

            v18 += 4;
            if (v18 >= v6)
            {
              goto LABEL_11;
            }
          }

          v23 = v18 + 2;
          if (v19)
          {
            v23 = v18;
            v24 = v19;
          }

          else
          {
            v24 = BYTE2(v19);
          }

          if (v24)
          {
            v25 = v23;
          }

          else
          {
            v25 = v23 + 1;
          }

          if (v25 >= v6)
          {
            v21 = v6;
          }

          else
          {
            v21 = v25;
          }

          *a2 = v21;
          a2[1] = v14 - 1;
          if (v6 > v25)
          {
            v20 = 1;
            goto LABEL_14;
          }
        }

        bt_skip_func(v6, v9, v8, v15, *(a1 + 92), *(a1 + 72), *(a1 + 80), v16);
        move_pos(a1);
        return 1;
      }
    }

    v20 = 0;
    v21 = 2;
LABEL_14:
    v7 = (bt_find_func(v6, v9, v8, v15, *(a1 + 92), *(a1 + 72), *(a1 + 80), v16, &a2[2 * v20], v21) - a2) >> 3;
    move_pos(a1);
    return v7;
  }

  v7 = 0;
  *(a1 + 24) = v4 + 1;
  ++*(a1 + 40);
  return v7;
}

uint64_t lzma_mf_bt3_skip(uint64_t a1, int a2)
{
  do
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 36) - v4;
    result = *(a1 + 96);
    if (result > v5 && (v5 < 3 || (result = (*(a1 + 36) - v4), *(a1 + 104) == 1)))
    {
      *(a1 + 24) = v4 + 1;
      ++*(a1 + 40);
    }

    else
    {
      v7 = (*a1 + v4);
      v8 = *(a1 + 20) + v4;
      v9 = lzma_crc32_table[*v7] ^ v7[1];
      v10 = v9 & 0x3FF;
      v11 = ((v9 ^ (v7[2] << 8)) & *(a1 + 88)) + 1024;
      v13 = *(a1 + 64);
      v12 = *(a1 + 72);
      v14 = *(v13 + 4 * v11);
      *(v13 + 4 * v10) = v8;
      *(v13 + 4 * v11) = v8;
      bt_skip_func(result, v8, v7, v14, *(a1 + 92), v12, *(a1 + 80), *(a1 + 84));
      result = move_pos(a1);
    }

    --a2;
  }

  while (a2);
  return result;
}

unint64_t lzma_mf_bt4_find(uint64_t a1, char *a2)
{
  v4 = *(a1 + 24);
  v5 = (*(a1 + 36) - v4);
  v6 = *(a1 + 96);
  if (v6 <= v5 || v5 >= 4 && (v6 = v5, *(a1 + 104) != 1))
  {
    v8 = (*a1 + v4);
    v9 = *(a1 + 20) + v4;
    v10 = lzma_crc32_table[*v8] ^ v8[1];
    v11 = v10 & 0x3FF;
    v12 = v10 ^ (v8[2] << 8);
    v13 = *(a1 + 64);
    v14 = *(v13 + 4 * v11);
    v15 = v9 - v14;
    v16 = v13 + 4 * v12;
    v17 = *(v16 + 4096);
    v18 = ((v12 ^ (32 * lzma_crc32_table[v8[3]])) & *(a1 + 88)) + 66560;
    v19 = *(v13 + 4 * v18);
    *(v13 + 4 * v11) = v9;
    v20 = v9 - v17;
    *(v16 + 4096) = v9;
    *(v13 + 4 * v18) = v9;
    v21 = *(a1 + 84);
    if (v9 - v14 < v21 && v8[-v15] == *v8)
    {
      v22 = 0;
      v23 = 2;
      *a2 = 2;
      *(a2 + 1) = v15 - 1;
      v24 = 1;
    }

    else
    {
      v24 = 0;
      v22 = 1;
      v23 = 1;
    }

    v25 = v17 == v14 || v20 >= v21;
    if (v25 || v8[-v20] != *v8)
    {
      if (v22)
      {
        LODWORD(v7) = 0;
        goto LABEL_17;
      }

      v26 = -v15;
      v7 = 1;
    }

    else
    {
      v26 = -v20;
      v7 = v24 + 1;
      *&a2[8 * v24 + 4] = v20 - 1;
      v23 = 3;
    }

    if (v23 >= v6)
    {
LABEL_25:
      *&a2[8 * v7 - 8] = v6;
LABEL_26:
      bt_skip_func(v6, v9, v8, v19, *(a1 + 92), *(a1 + 72), *(a1 + 80), v21);
LABEL_27:
      move_pos(a1);
      return v7;
    }

    v27 = &v8[v26];
    while (1)
    {
      v28 = *&v8[v23] - *&v27[v23];
      if (v28)
      {
        break;
      }

      v23 += 4;
      if (v23 >= v6)
      {
        goto LABEL_25;
      }
    }

    if (*&v8[v23] == *&v27[v23])
    {
      v23 += 2;
      v30 = BYTE2(v28);
    }

    else
    {
      v30 = v8[v23] - v27[v23];
    }

    if (v30)
    {
      v31 = v23;
    }

    else
    {
      v31 = v23 + 1;
    }

    if (v31 >= v6)
    {
      v23 = v6;
    }

    else
    {
      v23 = v31;
    }

    *&a2[8 * v7 - 8] = v23;
    if (v6 <= v31)
    {
      goto LABEL_26;
    }

LABEL_17:
    if (v23 <= 3)
    {
      v23 = 3;
    }

    v7 = (bt_find_func(v6, v9, v8, v19, *(a1 + 92), *(a1 + 72), *(a1 + 80), v21, &a2[8 * v7], v23) - a2) >> 3;
    goto LABEL_27;
  }

  v7 = 0;
  *(a1 + 24) = v4 + 1;
  ++*(a1 + 40);
  return v7;
}

uint64_t lzma_mf_bt4_skip(uint64_t a1, int a2)
{
  do
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 36) - v4;
    result = *(a1 + 96);
    if (result > v5 && (v5 < 4 || (result = (*(a1 + 36) - v4), *(a1 + 104) == 1)))
    {
      *(a1 + 24) = v4 + 1;
      ++*(a1 + 40);
    }

    else
    {
      v7 = (*a1 + v4);
      v8 = *(a1 + 20) + v4;
      v9 = lzma_crc32_table[*v7] ^ v7[1];
      v10 = v9 & 0x3FF;
      v11 = v9 ^ (v7[2] << 8);
      v12 = ((v11 ^ (32 * lzma_crc32_table[v7[3]])) & *(a1 + 88)) + 66560;
      v14 = *(a1 + 64);
      v13 = *(a1 + 72);
      v15 = *(v14 + 4 * v12);
      *(v14 + 4 * v10) = v8;
      *(v14 + 4 * v11 + 4096) = v8;
      *(v14 + 4 * v12) = v8;
      bt_skip_func(result, v8, v7, v15, *(a1 + 92), v13, *(a1 + 80), *(a1 + 84));
      result = move_pos(a1);
    }

    --a2;
  }

  while (a2);
  return result;
}

uint64_t normalize(uint64_t result)
{
  v1 = ~*(result + 84);
  if (*(result + 108))
  {
    v2 = 0;
    v3 = *(result + 64);
    do
    {
      v4 = *(v3 + 4 * v2);
      v5 = v4 >= v1;
      v6 = v4 - v1;
      if (!v5)
      {
        v6 = 0;
      }

      *(v3 + 4 * v2++) = v6;
    }

    while (v2 < *(result + 108));
  }

  if (*(result + 112))
  {
    v7 = 0;
    v8 = *(result + 72);
    do
    {
      v9 = *(v8 + 4 * v7);
      v5 = v9 >= v1;
      v10 = v9 - v1;
      if (!v5)
      {
        v10 = 0;
      }

      *(v8 + 4 * v7++) = v10;
    }

    while (v7 < *(result + 112));
  }

  *(result + 20) -= v1;
  return result;
}

const char *lzma_str_to_filters(uint64_t a1, int *a2, void *a3, unsigned int a4, uint64_t a5)
{
  v51 = *MEMORY[0x29EDCA608];
  v5 = "Unexpected NULL pointer argument(s) to lzma_str_to_filters()";
  if (!a1 || !a3)
  {
    goto LABEL_79;
  }

  if (a4 > 3)
  {
    v5 = "Unsupported flags to lzma_str_to_filters()";
    goto LABEL_79;
  }

  v9 = a2;
  for (i = (a1 + 1); ; ++i)
  {
    v12 = *(i - 1);
    if (v12 != 32)
    {
      break;
    }
  }

  if (!*(i - 1))
  {
    v48 = i - 1;
    v5 = "Empty string is not allowed, try 6 if a default value is needed";
    goto LABEL_75;
  }

  v13 = (i - 1);
  v48 = i - 1;
  if ((v12 - 48) < 0xA)
  {
    --i;
    goto LABEL_12;
  }

  if (v12 == 45)
  {
    v17 = *i;
    if ((v17 - 48) <= 9)
    {
      v48 = i;
      LOBYTE(v12) = v17;
LABEL_12:
      v14 = strlen(i);
      v15 = memchr(i, 32, v14);
      if (v15)
      {
          ;
        }

        if (v15[j])
        {
          goto LABEL_72;
        }
      }

      else
      {
        v15 = &i[v14];
      }

      v36 = v12 - 48;
      v37 = i + 1;
      v48 = i + 1;
      if (i + 1 < v15)
      {
        v36 |= 0x80000000;
        v5 = "Unsupported preset flag";
        while (*v37 == 101)
        {
          v48 = ++v37;
          if (v37 == v15)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_75;
      }

LABEL_69:
      v38 = lzma_alloc(0x70uLL, a5);
      if (!v38)
      {
        v5 = "Memory allocation failed";
        goto LABEL_75;
      }

      v39 = v38;
      if (!lzma_lzma_preset(v38, v36))
      {
        v5 = 0;
        *a3 = 33;
        a3[1] = v39;
        a3[2] = -1;
        a3[3] = 0;
        goto LABEL_75;
      }

      lzma_free(v39, a5);
LABEL_72:
      v5 = "Unsupported preset";
      goto LABEL_75;
    }
  }

  v18 = 0;
  v5 = "The maximum number of filters is four";
  do
  {
    if (v18 == 4)
    {
LABEL_61:
      v34 = &__src[2 * v18 - 1];
      do
      {
        --v18;
        v35 = *v34;
        v34 -= 2;
        lzma_free(v35, a5);
      }

      while (v18);
      goto LABEL_63;
    }

    if (v12 == 45 && v13[1] == 45)
    {
      v13 += 2;
      v48 = v13;
    }

    for (k = 0; ; ++k)
    {
      v20 = v13[k];
      if (v20 != 45)
      {
        break;
      }

      if (v13[k + 1] == 45)
      {
        goto LABEL_33;
      }

LABEL_32:
      ;
    }

    if (v13[k] && v20 != 32)
    {
      goto LABEL_32;
    }

LABEL_33:
    if (!k)
    {
      v5 = "Filter name is missing";
      goto LABEL_60;
    }

    v21 = &v13[k];
    v22 = &v13[k];
    v23 = &v13[k];
    if (v13 < &v13[k])
    {
      v22 = v13;
      while (1)
      {
        v24 = *v22;
        if (v24 == 61 || v24 == 58)
        {
          break;
        }

        ++v22;
        if (!--k)
        {
          v22 = v21;
          v23 = v21;
          goto LABEL_41;
        }
      }

      v23 = v22 + 1;
    }

LABEL_41:
    v25 = v22 - v13;
    if ((v22 - v13) > 0xB)
    {
LABEL_59:
      v5 = "Unknown filter name";
      goto LABEL_60;
    }

    v45 = v23;
    v46 = v21;
    v44 = &__src[2 * v18];
    v26 = filter_name_map;
    v27 = 10;
    while (memcmp(v13, v26, v25) || v26[v25])
    {
      v26 += 48;
      if (!--v27)
      {
        goto LABEL_59;
      }
    }

    if ((a4 & 1) == 0 && *(v26 + 2) >> 62)
    {
      v5 = "This filter cannot be used in the .xz format";
LABEL_60:
      if (v18)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }

    v28 = lzma_alloc_zero(*(v26 + 3), a5);
    if (!v28)
    {
      v5 = "Memory allocation failed";
      goto LABEL_60;
    }

    v29 = v28;
    v48 = v45;
    v30 = (*(v26 + 3))(&v48, v46, v28);
    if (v30)
    {
      v43 = v30;
      lzma_free(v29, a5);
      v5 = v43;
      goto LABEL_60;
    }

    *v44 = *(v26 + 2);
    v44[1] = v29;
    v13 = v48;
    v12 = *v48;
    if (v12 == 32)
    {
      v31 = v48 + 1;
      do
      {
        v48 = v31;
        v32 = *v31++;
        v12 = v32;
      }

      while (v32 == 32);
      v13 = (v31 - 1);
    }

    ++v18;
  }

  while (v12);
  v33 = &__src[2 * v18];
  *v33 = -1;
  v33[1] = 0;
  if (a4 <= 1)
  {
    v49 = 0;
    if (lzma_validate_chain(__src, &v49))
    {
      v5 = "Invalid filter chain ('lzma2' missing at the end?)";
      goto LABEL_61;
    }
  }

  memcpy(a3, __src, 16 * v18 + 16);
  v5 = 0;
LABEL_63:
  v9 = a2;
LABEL_75:
  if (v9)
  {
    v40 = v48 - a1;
    if (&v48[-a1] >= 0x7FFFFFFF)
    {
      v40 = 0x7FFFFFFF;
    }

    *v9 = v40;
  }

LABEL_79:
  v41 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t lzma_str_from_filters(void *a1, void *a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    return 11;
  }

  *a1 = 0;
  if (!a2)
  {
    return 11;
  }

  if ((a3 & 0xFFFFFF0F) != 0 || *a2 == -1)
  {
    return 8;
  }

  v9 = lzma_alloc(0x320uLL, a4);
  v55 = v9;
  if (!v9)
  {
    return 5;
  }

  v56 = 0;
  v10 = "=";
  if ((a3 & 0x40) == 0)
  {
    v10 = ":";
  }

  __src = v10;
  if (*a2 == -1)
  {
    v46 = v9;
LABEL_81:
    if (v56 == 799)
    {
      lzma_free(v46, a4);
      v46 = 0;
      result = 11;
    }

    else
    {
      result = 0;
      *(v46 + v56) = 0;
    }

    *a1 = v46;
    return result;
  }

  v11 = 0;
  v12 = a3 & 0x30;
  v13 = 40;
  if ((a3 & 0x10) == 0)
  {
    v13 = 41;
  }

  v48 = v13;
  while (1)
  {
    if (v11 == 4)
    {
LABEL_77:
      v47 = v55;
      goto LABEL_78;
    }

    if (a3 <= 0x7F && v11)
    {
      if (v56 == 799)
      {
        v14 = 799;
      }

      else
      {
        v14 = v56 + 1;
      }

      memcpy(v55 + v56, " ", v56 != 799);
      v56 = v14;
    }

    v16 = a3 < 0x80 || v11 == 0;
    if ((a3 & 0x40) != 0 || !v16)
    {
      v17 = v56;
      if ((799 - v56) >= 2)
      {
        v18 = 2;
      }

      else
      {
        v18 = 799 - v56;
      }

      memcpy(v55 + v56, "--", v18);
      v56 = v18 + v17;
    }

    v19 = &a2[2 * v11];
    v20 = filter_name_map;
    v21 = 10;
    while (*(v20 + 2) != *v19)
    {
      v20 += 48;
      if (!--v21)
      {
        goto LABEL_77;
      }
    }

    v51 = v11;
    v22 = strlen(v20);
    v24 = v55;
    v23 = v56;
    v25 = v22 >= 799 - v56 ? 799 - v56 : v22;
    memcpy(v55 + v56, v20, v25);
    v56 = v25 + v23;
    v50 = v12;
    if (v12)
    {
      v54 = v19[1];
      if (v54)
      {
        v26 = v20[v48];
        if (v20[v48])
        {
          v27 = 0;
          v28 = *(v20 + 4);
          v29 = __src;
          v52 = v28;
          v53 = v20[v48];
          do
          {
            v30 = v28 + 24 * v27;
            if (*(v30 + 12) != 3)
            {
              v31 = *(v54 + *(v30 + 14));
              if (v31 || (*(v30 + 13) & 4) == 0)
              {
                v32 = v55;
                if (v56 == 799)
                {
                  v33 = 799;
                }

                else
                {
                  v33 = v56 + 1;
                }

                memcpy(v55 + v56, v29, v56 != 799);
                v34 = strlen(v30);
                if (v34 >= 799 - v33)
                {
                  v35 = 799 - v33;
                }

                else
                {
                  v35 = v34;
                }

                memcpy(&v32[v33], v30, v35);
                v36 = v35 + v33;
                v37 = v35 + v33 != 799;
                if (v35 + v33 == 799)
                {
                  v38 = v35 + v33;
                }

                else
                {
                  v38 = v36 + 1;
                }

                memcpy(&v32[v36], "=", v37);
                v56 = v38;
                v39 = *(v30 + 13);
                if (v39)
                {
                  v40 = *(v30 + 16);
                  if (*v40)
                  {
                    while (*(v40 + 12) != v31)
                    {
                      v41 = *(v40 + 16);
                      v40 += 16;
                      if (!v41)
                      {
                        goto LABEL_62;
                      }
                    }

                    v45 = strlen(v40);
                    if (v45 >= 799 - v38)
                    {
                      v42 = 799 - v38;
                    }

                    else
                    {
                      v42 = v45;
                    }

                    v43 = &v32[v38];
                    v44 = v40;
                  }

                  else
                  {
LABEL_62:
                    if (799 - v38 >= 7)
                    {
                      v42 = 7;
                    }

                    else
                    {
                      v42 = 799 - v38;
                    }

                    v43 = &v32[v38];
                    v44 = "UNKNOWN";
                  }

                  memcpy(v43, v44, v42);
                  v56 = v42 + v38;
                }

                else
                {
                  str_append_u32(&v55, v31, (v39 >> 1) & 1);
                }

                v29 = ",";
                v28 = v52;
                v26 = v53;
              }
            }

            ++v27;
          }

          while (v27 != v26);
        }

        goto LABEL_75;
      }

      if ((v20[42] & 1) == 0)
      {
        break;
      }
    }

LABEL_75:
    v11 = v51 + 1;
    v12 = v50;
    if (a2[2 * v51 + 2] == -1)
    {
      v46 = v55;
      goto LABEL_81;
    }
  }

  v47 = v24;
LABEL_78:
  lzma_free(v47, a4);
  return 8;
}

void *str_append_str(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = a1[1];
  if (v4 >= 799 - v5)
  {
    v6 = 799 - v5;
  }

  else
  {
    v6 = v4;
  }

  result = memcpy((*a1 + v5), __s, v6);
  a1[1] += v6;
  return result;
}

uint64_t lzma_str_list_filters(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    return 11;
  }

  v4 = a3;
  *a1 = 0;
  if ((a3 & 0xFFFFFF8E) != 0)
  {
    return 8;
  }

  v9 = lzma_alloc(0x320uLL, a4);
  v51 = v9;
  if (!v9)
  {
    return 5;
  }

  v10 = v9;
  v43 = a1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v50 = v4 & 0x30;
  if ((v4 & 0x30) != 0)
  {
    v14 = "\n";
  }

  else
  {
    v14 = " ";
  }

  v15 = "=";
  if (v4 < 0x40)
  {
    v15 = ":";
  }

  v44 = v15;
  v45 = a2;
  v16 = 40;
  if ((v4 & 0x10) == 0)
  {
    v16 = 41;
  }

  __src = v14;
  v48 = v16;
  v46 = v4;
  do
  {
    if (a2 == -1)
    {
      if ((v4 & 1) == 0 && !v13)
      {
        goto LABEL_72;
      }
    }

    else if (*&filter_name_map[48 * v13 + 16] != a2)
    {
      goto LABEL_72;
    }

    if (v12)
    {
      if (v11 == 799)
      {
        v17 = 799;
      }

      else
      {
        v17 = v11 + 1;
      }

      memcpy(&v10[v11], __src, v11 != 799);
      v11 = v17;
    }

    if (v4 >= 0x40)
    {
      if ((799 - v11) >= 2)
      {
        v18 = 2;
      }

      else
      {
        v18 = 799 - v11;
      }

      memcpy(&v10[v11], "--", v18);
      v11 += v18;
    }

    v19 = &filter_name_map[48 * v13];
    v20 = strlen(v19);
    if (v20 >= 799 - v11)
    {
      v21 = 799 - v11;
    }

    else
    {
      v21 = v20;
    }

    memcpy(&v10[v11], &filter_name_map[48 * v13], v21);
    v11 += v21;
    v52 = v11;
    if (v50)
    {
      v22 = v19[v48];
      if (v19[v48])
      {
        v49 = v13;
        v23 = 0;
        v24 = *(v19 + 4);
        v25 = v44;
        do
        {
          if (v11 == 799)
          {
            v26 = 799;
          }

          else
          {
            v26 = v11 + 1;
          }

          memcpy(&v10[v11], v25, v11 != 799);
          v27 = v24 + 24 * v23;
          v28 = strlen(v27);
          if (v28 >= 799 - v26)
          {
            v29 = 799 - v26;
          }

          else
          {
            v29 = v28;
          }

          memcpy(&v10[v26], (v24 + 24 * v23), v29);
          v30 = v29 + v26;
          if (799 - (v29 + v26) >= 2)
          {
            v31 = 2;
          }

          else
          {
            v31 = 799 - (v29 + v26);
          }

          memcpy(&v10[v30], "=<", v31);
          v32 = v31 + v30;
          v52 = v31 + v30;
          if (*(v27 + 12) == 3)
          {
            if ((799 - v32) >= 6)
            {
              v33 = 6;
            }

            else
            {
              v33 = 799 - v32;
            }

            memcpy(&v10[v32], "0-9[e]", v33);
            v32 += v33;
          }

          else
          {
            v34 = *(v27 + 13);
            if (v34)
            {
              v37 = *(v27 + 16);
              if (*v37)
              {
                v38 = 0;
                do
                {
                  if (v38)
                  {
                    if (v32 == 799)
                    {
                      v39 = 799;
                    }

                    else
                    {
                      v39 = v32 + 1;
                    }

                    memcpy(&v10[v32], "|", v32 != 799);
                    v32 = v39;
                  }

                  v40 = strlen(v37);
                  if (v40 >= 799 - v32)
                  {
                    v41 = 799 - v32;
                  }

                  else
                  {
                    v41 = v40;
                  }

                  memcpy(&v10[v32], v37, v41);
                  v32 += v41;
                  v42 = *(v37 + 16);
                  v37 += 16;
                  --v38;
                }

                while (v42);
              }
            }

            else
            {
              v35 = (v34 >> 1) & 1;
              str_append_u32(&v51, *(v27 + 16), v35);
              if (v52 == 799)
              {
                v36 = 799;
              }

              else
              {
                v36 = v52 + 1;
              }

              memcpy(&v51[v52], "-", v52 != 799);
              v52 = v36;
              str_append_u32(&v51, *(v27 + 20), v35);
              v10 = v51;
              v32 = v52;
            }
          }

          if (v32 == 799)
          {
            v11 = 799;
          }

          else
          {
            v11 = v32 + 1;
          }

          memcpy(&v10[v32], ">", v32 != 799);
          v52 = v11;
          ++v23;
          v25 = ",";
        }

        while (v23 != v22);
        v12 = 1;
        v4 = v46;
        a2 = v45;
        v13 = v49;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_72:
    ++v13;
  }

  while (v13 != 10);
  if ((v12 & 1) == 0)
  {
    lzma_free(v10, a4);
    return 8;
  }

  if (v11 == 799)
  {
    lzma_free(v10, a4);
    v10 = 0;
    result = 11;
  }

  else
  {
    result = 0;
    v10[v11] = 0;
  }

  *v43 = v10;
  return result;
}