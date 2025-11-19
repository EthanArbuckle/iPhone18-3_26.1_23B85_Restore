unsigned int *kvbuf_query(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = a1;
    v10 = malloc_default_zone();
    v11 = kvbuf_new_zone(v10);
    v12 = v11;
    if (v11)
    {
      kvbuf_add_dict(v11);
      v23 = &a9;
      while (1)
      {
        v13 = *v9;
        if (v13 > 0x72)
        {
          if (v13 != 115)
          {
            if (v13 != 117)
            {
              goto LABEL_15;
            }

            v15 = v23++;
            v21 = *v15;
            snprintf(__str, 0x20uLL, "%u");
            goto LABEL_12;
          }

          v18 = v23++;
          kvbuf_add_val(v12, *v18);
        }

        else
        {
          if (v13 == 105)
          {
            v16 = v23++;
            v22 = *v16;
            snprintf(__str, 0x20uLL, "%d");
LABEL_12:
            v17 = strlen(__str);
            kvbuf_add_val_len(v12, __str, v17 + 1);
            goto LABEL_15;
          }

          if (v13 == 107)
          {
            v14 = v23++;
            kvbuf_add_key(v12, *v14);
          }

          else if (!*v9)
          {
            break;
          }
        }

LABEL_15:
        ++v9;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

void *kvbuf_new()
{
  v0 = malloc_default_zone();

  return kvbuf_new_zone(v0);
}

void kvbuf_add_dict(uint64_t a1)
{
  if (a1)
  {
    kvbuf_grow(a1, 4);
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *a1;
      v4 = *a1 + 4;
      *a1 = v4;
      *(a1 + 20) = v3;
      *(a1 + 24) = v4;
      *(a1 + 32) = 0;
      *v2 = bswap32(bswap32(*v2) + 1);
    }
  }
}

void kvbuf_add_key(unsigned int *a1, char *__s)
{
  if (a1 && __s)
  {
    v4 = strlen(__s);
    v5 = (v4 + 1);
    v6 = v4 + 9;
    if ((v4 + 1) <= 0xFFFFFFF7)
    {
      kvbuf_grow(a1, v6);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        kvbuf_add_key_cold_1();
      }

      free(*(a1 + 1));
      *(a1 + 4) = 0;
      *a1 = 0u;
      *(a1 + 1) = 0u;
    }

    v7 = *(a1 + 1);
    if (v7)
    {
      v8 = a1[5];
      v9 = *(v7 + v8);
      v10 = bswap32(v9);
      if (v9)
      {
        v11 = *a1;
      }

      else
      {
        v11 = v8 + 4;
      }

      a1[6] = v11;
      *(v7 + v8) = bswap32(v10 + 1);
      v12 = (*(a1 + 1) + *a1);
      *v12++ = bswap32(v5);
      memcpy(v12, __s, v5);
      a1[7] = v4 + *a1 + 5;
      *(v12 + v5) = 0;
      v13 = *a1 + v6;
      *a1 = v13;
      a1[8] = v13;
    }
  }
}

void kvbuf_add_val(unsigned int *a1, char *__s)
{
  if (a1 && __s)
  {
    v4 = strlen(__s) + 1;

    kvbuf_add_val_len(a1, __s, v4);
  }
}

void *kvbuf_query_key_val(const char *a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = strlen(a1);
  if (a2)
  {
    v5 = strlen(a2) + 1;
    v6 = 0x1000000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x101004062FF10B7uLL);
  v8 = v7;
  if (v7)
  {
    v9 = v4 + v5 + 21;
    v7[4] = v9;
    *v7 = v9;
    v10 = malloc_type_calloc(1uLL, v9, 0x81AE859BuLL);
    v8[1] = v10;
    if (v10)
    {
      v11 = (v4 + 1);
      *v10 = 0x100000001000000;
      v10[2] = bswap32(v11);
      v12 = (v10 + 3);
      memcpy(v10 + 3, a1, v11);
      v13 = &v12[v11];
      *v13 = v6;
      if (a2)
      {
        v13[1] = bswap32(v5);
        memcpy(v13 + 2, a2, v5);
      }

      return v8;
    }

    free(v8);
    return 0;
  }

  return v8;
}

void *kvbuf_query_key_int(const char *a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x20uLL, "%d", a2);
  result = kvbuf_query_key_val(a1, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *kvbuf_query_key_uint(const char *a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x20uLL, "%u", a2);
  result = kvbuf_query_key_val(a1, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *kvbuf_new_zone(malloc_zone_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_zone_calloc(a1, 1uLL, 0x28uLL, 0x101004062FF10B7uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 128;
    v4 = malloc_type_zone_calloc(a1, 1uLL, 0x80uLL, 0x6E96C65CuLL);
    v3[1] = v4;
    if (v4)
    {
      *v3 = 4;
      *(v3 + 5) = 4;
      return v3;
    }

    free(v3);
    return 0;
  }

  return v3;
}

void *kvbuf_init_zone(malloc_zone_t *a1, const void *a2, unsigned int a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = malloc_type_zone_calloc(a1, 1uLL, 0x28uLL, 0x101004062FF10B7uLL);
  v7 = v6;
  if (v6)
  {
    v6[4] = a3;
    *v6 = a3;
    if (a3)
    {
      v8 = malloc_type_zone_calloc(a1, 1uLL, a3, 0xF086F3D7uLL);
      v7[1] = v8;
      if (v8)
      {
        memcpy(v8, a2, a3);
        return v7;
      }

      free(v7);
      return 0;
    }
  }

  return v7;
}

void *kvbuf_init(const void *a1, unsigned int a2)
{
  v4 = malloc_default_zone();

  return kvbuf_init_zone(v4, a1, a2);
}

void kvbuf_grow(unsigned int *ptr, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_18;
  }

  v4 = *(ptr + 1);
  v5 = v4 == 0;
  v6 = *ptr;
  v7 = *ptr + a2;
  v8 = __CFADD__(*ptr, a2);
  v9 = v7 + 4 * v5;
  v10 = __CFADD__(v7, 4 * v5);
  if (v8 || v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v26 = 67109632;
      v27 = v6;
      v28 = 1024;
      v29 = a2;
      v30 = 1024;
      v31 = 4 * v5;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "kvbuf_grow: overflow when adding kv->datalen (%u), delta (%u), and extra (%u)";
      v14 = 20;
      goto LABEL_27;
    }

LABEL_15:
    v15 = v4;
LABEL_16:
    free(v15);
LABEL_17:
    *(ptr + 4) = 0;
    *ptr = 0u;
    *(ptr + 1) = 0u;
    goto LABEL_18;
  }

  if (v9 <= ptr[4])
  {
LABEL_18:
    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = (v9 + 255) & 0xFFFFFF00;
  if (v11 < v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v26 = 67109376;
      v27 = v9;
      v28 = 1024;
      v29 = 256;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "kvbuf_grow: overflow when rounding %u to nearest chunk size (%u)";
      v14 = 14;
LABEL_27:
      _os_log_fault_impl(&dword_19A0B0000, v12, OS_LOG_TYPE_FAULT, v13, &v26, v14);
      v4 = *(ptr + 1);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  ptr[4] = v11;
  v17 = malloc_zone_from_ptr(ptr);
  v18 = *(ptr + 1);
  v19 = ptr[4];
  if (!v18)
  {
    v25 = malloc_type_zone_calloc(v17, 1uLL, v19, 0xF70429CEuLL);
    *(ptr + 1) = v25;
    if (v25)
    {
      *ptr = 4;
      ptr[5] = 4;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v20 = malloc_type_zone_realloc(v17, v18, v19, 0x2740ED78uLL);
  if (!v20)
  {
    v15 = *(ptr + 1);
    goto LABEL_16;
  }

  *(ptr + 1) = v20;
  v21 = *ptr;
  v22 = *MEMORY[0x1E69E9840];
  v23 = ptr[4] - v21;
  v24 = &v20[v21];

  bzero(v24, v23);
}

void kvbuf_add_val_len(unsigned int *ptr, const void *a2, unsigned int a3)
{
  if (ptr && a2 && a3)
  {
    v6 = a3 + 4;
    if (a3 <= 0xFFFFFFFB)
    {
      kvbuf_grow(ptr, a3 + 4);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        kvbuf_add_val_len_cold_1();
      }

      free(*(ptr + 1));
      *(ptr + 4) = 0;
      *ptr = 0u;
      *(ptr + 1) = 0u;
    }

    v7 = *(ptr + 1);
    if (v7)
    {
      *(v7 + ptr[7]) = bswap32(bswap32(*(v7 + ptr[7])) + 1);
      v8 = (*(ptr + 1) + ptr[8]);
      *v8 = bswap32(a3);
      memcpy(v8 + 1, a2, a3);
      v9 = *ptr + v6;
      *ptr = v9;
      ptr[8] = v9;
    }
  }
}

void kvbuf_make_purgeable(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      malloc_make_purgeable(v1);
    }
  }
}

void *kvbuf_make_nonpurgeable(void *result)
{
  if (result)
  {
    result = result[1];
    if (result)
    {
      return (malloc_make_nonpurgeable(result) != 0);
    }
  }

  return result;
}

void kvbuf_free(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;

    free(a1);
  }
}

void kvbuf_append_kvbuf(unsigned int *ptr, unsigned int *a2)
{
  if (ptr)
  {
    if (a2)
    {
      v3 = **(a2 + 1);
      if (v3)
      {
        **(ptr + 1) = bswap32(bswap32(v3) + bswap32(**(ptr + 1)));
        v5 = *a2;
        v6 = v5 - 4;
        if (v5 >= 4)
        {
          kvbuf_grow(ptr, v5 - 4);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            kvbuf_append_kvbuf_cold_1();
          }

          free(*(ptr + 1));
          *(ptr + 4) = 0;
          *ptr = 0u;
          *(ptr + 1) = 0u;
        }

        v7 = *(ptr + 1);
        if (v7)
        {
          memcpy(v7 + *ptr, (*(a2 + 1) + 4), v6);
          *ptr += v6;
        }
      }
    }
  }
}

uint64_t kvbuf_reset(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0 && (*(a1 + 28) = 0, *(a1 + 20) = 0, *a1 >= 4u))
  {
    return bswap32(*v1);
  }

  else
  {
    return 0;
  }
}

uint64_t kvbuf_next_dict(unsigned int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  *(a1 + 3) = 0;
  a1[8] = 0;
  v2 = a1[5];
  if (v2)
  {
    v3 = v1 + v2;
    v4 = *(v1 + v2);
    LODWORD(v2) = v2 + 4;
    a1[5] = v2;
    if (v4)
    {
      v5 = 0;
      v6 = bswap32(v4);
      v7 = (v3 + 4);
      do
      {
        v8 = bswap32(*v7);
        v9 = v7 + v8;
        v10 = v2 + v8;
        a1[5] = v10 + 4;
        v11 = *(v9 + 1);
        v7 = (v9 + 8);
        LODWORD(v2) = v10 + 8;
        a1[5] = v2;
        if (v11)
        {
          v12 = bswap32(v11);
          do
          {
            v13 = bswap32(*v7);
            v7 = (v7 + v13 + 4);
            LODWORD(v2) = v2 + v13 + 4;
            a1[5] = v2;
            --v12;
          }

          while (v12);
        }

        ++v5;
      }

      while (v5 != v6);
    }

    v2 = v2;
    if (v2 + 4 <= *a1)
    {
      return bswap32(*(v1 + v2));
    }

    return 0;
  }

  v14 = *a1;
  if (*a1 < 4)
  {
    return 0;
  }

  v2 = 4;
  a1[5] = 4;
  if (v14 < 8)
  {
    return 0;
  }

  return bswap32(*(v1 + v2));
}

unsigned int *kvbuf_next_key(unsigned int *a1, _DWORD *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    *a2 = 0;
    v3 = *(a1 + 1);
    if (!v3)
    {
      return 0;
    }

    v4 = a1[5];
    if (!v4)
    {
      return 0;
    }

    a1[7] = 0;
    a1[8] = 0;
    v5 = a1[6];
    if (v5)
    {
      v6 = v3 + v5;
      v7 = bswap32(*(v3 + v5));
      v8 = *a1;
      v9 = v7 + 4;
      if (v7 + 4 + v5 > v8)
      {
        return 0;
      }

      v10 = (v5 + v9);
      a1[6] = v10;
      if (v10 + 4 > v8)
      {
        return 0;
      }

      v11 = (v6 + v9);
      v12 = *v11;
      v13 = v10 + 4;
      a1[6] = v10 + 4;
      if (v12)
      {
        v14 = bswap32(v12);
        v15 = v11 + 1;
        while (v13 + 4 <= v8 && v8 >= v13 + v7)
        {
          v17 = bswap32(*v15) + 4;
          v15 = (v15 + v17);
          v13 += v17;
          a1[6] = v13;
          if (!--v14)
          {
            goto LABEL_19;
          }
        }

        return 0;
      }
    }

    else
    {
      v8 = *a1;
      v13 = v4 + 4;
      if (v4 + 4 > v8)
      {
        return 0;
      }

      a1[6] = v13;
    }

LABEL_19:
    if (v13 + 4 > v8)
    {
      return 0;
    }

    v19 = (v3 + v13);
    v20 = v13 + bswap32(*v19) + 4;
    a1[7] = v20;
    if (v20 + 4 <= v8)
    {
      v2 = v19 + 1;
      *a2 = bswap32(*(v3 + v20));
    }

    else
    {
      v2 = 0;
      a1[7] = 0;
    }
  }

  return v2;
}

unsigned int *kvbuf_next_val_len(unsigned int *result, _DWORD *a2)
{
  if (!result)
  {
    return result;
  }

  v2 = *(result + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = result[7];
  if (!v3)
  {
    return 0;
  }

  v4 = result[8];
  if (!v4)
  {
    v6 = *result;
    v4 = v3 + 4;
    if (v3 + 4 <= v6)
    {
      result[8] = v4;
      LODWORD(v5) = bswap32(*(v2 + v4));
      goto LABEL_9;
    }

    return 0;
  }

  v5 = bswap32(*(v2 + v4));
  v6 = *result;
  if (v4 + v5 + 4 > v6)
  {
    return 0;
  }

  LODWORD(v4) = v4 + v5 + 4;
  result[8] = v4;
LABEL_9:
  v4 = v4;
  if (v4 + 4 > v6)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v5;
    v4 = result[8];
  }

  return (v2 + v4 + 4);
}

void *kvbuf_decode(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1 - 4;
  if (*a1 < 4u)
  {
    return 0;
  }

  *(a1 + 16) = *a1;
  v6 = *v2;
  v5 = v2 + 1;
  v4 = v6;
  *(a1 + 16) = v3;
  if (!v6)
  {
    return 0;
  }

  v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004023CB03E4uLL);
  if (!v7)
  {
    return v7;
  }

  v8 = bswap32(v4);
  *v7 = v8;
  v9 = malloc_type_calloc(v8, 0x20uLL, 0x10900401CF81AC1uLL);
  v7[1] = v9;
  if (!v9)
  {
    free(v7);
    return 0;
  }

  if (*v7)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(a1 + 16);
      if (v11 <= 3)
      {
        break;
      }

      v12 = *v5++;
      *(a1 + 16) = v11 - 4;
      v13 = bswap32(v12);
      v9[8 * v10] = v13;
      if (v12)
      {
        v14 = malloc_type_calloc(v13, 8uLL, 0x50040EE9192B6uLL);
        v15 = v7[1];
        *(v15 + 32 * v10 + 8) = v14;
        if (!v14)
        {
          break;
        }

        v16 = malloc_type_calloc(*(v15 + 32 * v10), 4uLL, 0x100004052888210uLL);
        v17 = v7[1];
        *(v17 + 32 * v10 + 16) = v16;
        if (!v16)
        {
          break;
        }

        v18 = malloc_type_calloc(*(v17 + 32 * v10), 8uLL, 0x80040B8603338uLL);
        v9 = v7[1];
        *&v9[8 * v10 + 6] = v18;
        if (!v18)
        {
          break;
        }

        if (v9[8 * v10])
        {
          v19 = 0;
          do
          {
            v20 = *(a1 + 16);
            if (v20 <= 3)
            {
              goto LABEL_32;
            }

            v22 = *v5;
            v21 = v5 + 1;
            v23 = v20 - 4;
            *(a1 + 16) = v23;
            v24 = bswap32(v22);
            v25 = v23 >= v24;
            v26 = v23 - v24;
            if (!v25)
            {
              goto LABEL_32;
            }

            *(*&v9[8 * v10 + 2] + 8 * v19) = v21;
            *(a1 + 16) = v26;
            if (v26 <= 3)
            {
              goto LABEL_32;
            }

            v27 = (v21 + v24);
            v28 = *v27;
            v5 = v27 + 1;
            *(a1 + 16) = v26 - 4;
            v29 = bswap32(v28);
            v9 = v7[1];
            *(*&v9[8 * v10 + 4] + 4 * v19) = v29;
            if (v28)
            {
              *(*(v7[1] + 32 * v10 + 24) + 8 * v19) = malloc_type_calloc(v29 + 1, 8uLL, 0x50040EE9192B6uLL);
              v9 = v7[1];
              v30 = &v9[8 * v10];
              if (!*(*(v30 + 3) + 8 * v19))
              {
                goto LABEL_32;
              }

              if (*(*(v30 + 2) + 4 * v19))
              {
                v31 = 0;
                v32 = *(a1 + 16);
                while (v32 > 3)
                {
                  v33 = *v5;
                  v34 = v32 - 4;
                  *(a1 + 16) = v34;
                  v35 = bswap32(v33);
                  v25 = v34 >= v35;
                  v32 = v34 - v35;
                  if (!v25)
                  {
                    break;
                  }

                  *(*(*&v9[8 * v10 + 6] + 8 * v19) + 8 * v31) = v5 + 1;
                  v5 = (v5 + v35 + 4);
                  *(a1 + 16) = v32;
                  ++v31;
                  v9 = v7[1];
                  if (v31 >= *(*&v9[8 * v10 + 4] + 4 * v19))
                  {
                    goto LABEL_28;
                  }
                }

                goto LABEL_32;
              }
            }

LABEL_28:
            ;
          }

          while (++v19 < v9[8 * v10]);
        }
      }

      if (++v10 >= *v7)
      {
        goto LABEL_30;
      }
    }

LABEL_32:
    kvarray_free(v7);
    return 0;
  }

LABEL_30:
  v7[2] = a1;
  return v7;
}

void kvarray_free(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = 0;
      do
      {
        v3 = a1[1];
        if (*(v3 + 32 * v2))
        {
          v4 = 0;
          do
          {
            v5 = *(v3 + 32 * v2 + 24);
            if (v5)
            {
              v6 = *(v5 + 8 * v4);
              if (v6)
              {
                free(v6);
                v3 = a1[1];
              }
            }

            ++v4;
          }

          while (v4 < *(v3 + 32 * v2));
        }

        v7 = *(v3 + 32 * v2 + 8);
        if (v7)
        {
          free(v7);
          v3 = a1[1];
        }

        v8 = *(v3 + 32 * v2 + 16);
        if (v8)
        {
          free(v8);
          v3 = a1[1];
        }

        v9 = *(v3 + 32 * v2 + 24);
        if (v9)
        {
          free(v9);
        }

        ++v2;
      }

      while (v2 < *a1);
    }

    *a1 = 0;
    v10 = a1[1];
    if (v10)
    {
      free(v10);
    }

    a1[1] = 0;
    v11 = a1[2];
    if (v11)
    {
      kvbuf_free(v11);
    }

    free(a1);
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

void *si_search()
{
  result = si_search_search;
  if (!si_search_search)
  {
    result = si_module_with_name("search");
    si_search_search = result;
  }

  return result;
}

void si_libinfo_general_callback(atomic_uint *a1, int a2, unsigned int *a3)
{
  if (a3)
  {
    if (a2 == 15 || !*a3)
    {
      free(a3);

      si_item_release(a1);
    }

    else
    {
      v5 = a3[5];
      if ((v5 & 0x80000000) == 0)
      {
        LI_set_thread_item(a3[4] + v5, a1);
      }

      v6 = a3[4];
      if (v6 <= 0xC && ((1 << v6) & 0x1FCE) != 0)
      {
        if (a1)
        {
          v7 = a1 + 8;
        }

        else
        {
          v7 = 0;
        }

        (*a3)(v7, *(a3 + 1));
      }

      free(a3);
    }
  }
}

passwd *__cdecl getpwuuid(uuid_t a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_user_byuuid(v1);
  LI_set_thread_item(301, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

passwd *getpwent(void)
{
  thread_list = LI_get_thread_list(1);
  if (!thread_list)
  {
    v1 = si_search_search;
    if (!si_search_search)
    {
      v1 = si_module_with_name("search");
      si_search_search = v1;
    }

    thread_list = si_user_all(v1);
    LI_set_thread_list(1, thread_list);
  }

  v2 = si_list_next(thread_list);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

int setpassent(int a1)
{
  thread_list = LI_get_thread_list(1);
  si_list_reset(thread_list);
  return thread_list != 0;
}

group *__cdecl getgrnam(const char *a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_group_byname(v1);
  LI_set_thread_item(102, v2);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

group *__cdecl getgrgid(gid_t a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_group_bygid(v1);
  LI_set_thread_item(202, v2);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

group *__cdecl getgruuid(uuid_t a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_group_byuuid(v1);
  LI_set_thread_item(302, v2);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

group *getgrent(void)
{
  thread_list = LI_get_thread_list(2);
  if (!thread_list)
  {
    v1 = si_search_search;
    if (!si_search_search)
    {
      v1 = si_module_with_name("search");
      si_search_search = v1;
    }

    thread_list = si_group_all(v1);
    LI_set_thread_list(2, thread_list);
  }

  v2 = si_list_next(thread_list);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

int setgroupent(int a1)
{
  thread_list = LI_get_thread_list(2);
  si_list_reset(thread_list);
  return thread_list != 0;
}

int innetgr(const char *a1, const char *a2, const char *a3, const char *a4)
{
  v4 = si_search_search;
  if (!si_search_search)
  {
    v4 = si_module_with_name("search");
    si_search_search = v4;
  }

  return si_in_netgroup(v4);
}

void setnetgrent(const char *a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_netgroup_byname(v1);

  LI_set_thread_list(4, v2);
}

int getnetgrent(char **a1, char **a2, char **a3)
{
  thread_list = LI_get_thread_list(4);
  v7 = si_list_next(thread_list);
  if (v7)
  {
    *a1 = v7[4];
    *a2 = v7[5];
    *a3 = v7[6];
    LODWORD(v7) = 1;
  }

  return v7;
}

int getgrouplist_2(const char *a1, int a2, int *a3, int *a4)
{
  if (a1 && a3)
  {
    return _getgrouplist_2_internal(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t _getgrouplist_2_internal(uint64_t a1, int a2, int **a3)
{
  v5 = si_search_search;
  if (!si_search_search)
  {
    v5 = si_module_with_name("search");
    si_search_search = v5;
  }

  v6 = si_grouplist(v5);
  LI_set_thread_item(3, v6);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = malloc_type_calloc(*(v6 + 40) + 1, 4uLL, 0x100004052888210uLL);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  *v7 = a2;
  v8 = *(v6 + 48);
  if (v8 && (v9 = *(v6 + 40), v9 >= 1))
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = *(v8 + 4 * v10);
      if (v11 < 1)
      {
LABEL_12:
        v7[v11] = v12;
        v11 = (v11 + 1);
        v9 = *(v6 + 40);
      }

      else
      {
        v13 = v11;
        v14 = v7;
        while (1)
        {
          v15 = *v14++;
          if (v15 == v12)
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_12;
          }
        }
      }

      ++v10;
    }

    while (v10 < v9);
  }

  else
  {
    v11 = 1;
  }

  *a3 = v7;
  return v11;
}

uint64_t getgroupcount(uint64_t a1, int a2)
{
  v4 = 0;
  v2 = _getgrouplist_2_internal(a1, a2, &v4);
  if (v4)
  {
    free(v4);
  }

  return v2;
}

aliasent *__cdecl alias_getbyname(const char *a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_alias_byname(v1);
  LI_set_thread_item(105, v2);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

aliasent *alias_getent(void)
{
  thread_list = LI_get_thread_list(5);
  if (!thread_list)
  {
    v1 = si_search_search;
    if (!si_search_search)
    {
      v1 = si_module_with_name("search");
      si_search_search = v1;
    }

    thread_list = si_alias_all(v1);
    LI_set_thread_list(5, thread_list);
  }

  v2 = si_list_next(thread_list);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

void freehostent(hostent *a1)
{
  if (a1)
  {
    si_item_release(&a1[-1]);
  }
}

hostent *__cdecl gethostbyname(const char *a1)
{
  *&v8[0].s_addr = 0;
  v2 = inet_aton(a1, v8);
  v3 = si_search_search;
  if (v2 == 1)
  {
    if (!si_search_search)
    {
      v3 = si_module_with_name("search");
      si_search_search = v3;
    }

    v4 = si_ipnode_byname(v3, a1, 2, 0, 0, &v8[1]);
  }

  else
  {
    if (!si_search_search)
    {
      v3 = si_module_with_name("search");
      si_search_search = v3;
    }

    v4 = si_host_byname(v3);
  }

  v5 = v4;
  s_addr = v8[1].s_addr;
  if (v8[1].s_addr >= 0xA)
  {
    s_addr = 3;
    v8[1].s_addr = 3;
  }

  h_errno = s_addr;
  LI_set_thread_item(106, v4);
  if (v5)
  {
    return v5 + 1;
  }

  else
  {
    return 0;
  }
}

void *gethostbyname_async_call(char *a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040CC6EE3FDuLL);
  if (result)
  {
    v7 = result;
    *result = a2;
    result[1] = a3;
    result[2] = 0x6400000006;
    v8 = si_search_search;
    if (!si_search_search)
    {
      v8 = si_module_with_name("search");
      si_search_search = v8;
    }

    return si_async_call(v8, 0xBu, a1, 0, 0, 2, 0, 0, 0, si_libinfo_general_callback, v7);
  }

  return result;
}

hostent *__cdecl gethostbyname2(const char *a1, int a2)
{
  v4 = si_search_search;
  if (!si_search_search)
  {
    v4 = si_module_with_name("search");
    si_search_search = v4;
  }

  v10[1] = 0;
  *&v11[0].s_addr = 0;
  v10[0] = 0;
  if (a2 == 30)
  {
    v5 = inet_pton(30, a1, v10);
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_9;
    }

    v5 = inet_aton(a1, v11);
  }

  if (v5 == 1)
  {
    v6 = si_ipnode_byname(v4, a1, a2, 0, 0, &v11[1]);
    goto LABEL_10;
  }

LABEL_9:
  v6 = si_host_byname(v4);
LABEL_10:
  v7 = v6;
  s_addr = v11[1].s_addr;
  if (v11[1].s_addr >= 0xA)
  {
    s_addr = 3;
    v11[1].s_addr = 3;
  }

  h_errno = s_addr;
  LI_set_thread_item(106, v6);
  if (v7)
  {
    return v7 + 1;
  }

  else
  {
    return 0;
  }
}

hostent *__cdecl gethostbyaddr(const void *a1, socklen_t a2, int a3)
{
  v3 = si_search_search;
  if (!si_search_search)
  {
    v3 = si_module_with_name("search");
    si_search_search = v3;
  }

  v4 = si_host_byaddr(v3);
  h_errno = 0;
  LI_set_thread_item(206, v4);
  if (v4)
  {
    return v4 + 1;
  }

  else
  {
    return 0;
  }
}

void *gethostbyaddr_async_call(char *a1, size_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040CC6EE3FDuLL);
  if (result)
  {
    v11 = result;
    *result = a4;
    result[1] = a5;
    result[2] = 0xC800000006;
    v12 = si_search_search;
    if (!si_search_search)
    {
      v12 = si_module_with_name("search");
      si_search_search = v12;
    }

    return si_async_call(v12, 0xCu, a1, 0, 0, a3, 0, a2, 0, si_libinfo_general_callback, v11);
  }

  return result;
}

hostent *__cdecl getipnodebyname(const char *a1, int a2, int a3, int *a4)
{
  v5 = a3;
  v12 = 0;
  v8 = si_search_search;
  if (!si_search_search)
  {
    v8 = si_module_with_name("search");
    si_search_search = v8;
  }

  v9 = si_ipnode_byname(v8, a1, a2, v5, 0, &v12);
  if (a4)
  {
    v10 = v12;
    if (v12 > 9)
    {
      v10 = 3;
    }

    *a4 = v10;
  }

  if (v9)
  {
    return v9 + 1;
  }

  else
  {
    return 0;
  }
}

hostent *__cdecl getipnodebyaddr(const void *a1, size_t a2, int a3, int *a4)
{
  if (a2 == 16 && a3 == 30 && a1)
  {
    v4 = 0;
    while (!*(a1 + v4))
    {
      if (++v4 == 10)
      {
        if (*(a1 + 10) == 255 && *(a1 + 11) == 255)
        {
          goto LABEL_15;
        }

        break;
      }
    }

    v5 = 0;
    while (!*(a1 + v5))
    {
      if (++v5 == 12)
      {
        if (!*(a1 + 13) && !*(a1 + 14))
        {
          *(a1 + 15);
        }

        break;
      }
    }
  }

LABEL_15:
  v6 = si_search_search;
  if (!si_search_search)
  {
    v6 = si_module_with_name("search");
    si_search_search = v6;
  }

  v7 = si_host_byaddr(v6);
  if (v7)
  {
    return v7 + 1;
  }

  else
  {
    return 0;
  }
}

hostent *gethostent(void)
{
  thread_list = LI_get_thread_list(6);
  if (!thread_list)
  {
    v1 = si_search_search;
    if (!si_search_search)
    {
      v1 = si_module_with_name("search");
      si_search_search = v1;
    }

    thread_list = si_host_all(v1);
    LI_set_thread_list(6, thread_list);
  }

  v2 = si_list_next(thread_list);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

int ether_hostton(const char *a1, ether_addr *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  result = -1;
  if (a1 && a2)
  {
    v5 = si_search_search;
    if (!si_search_search)
    {
      v5 = si_module_with_name("search");
      si_search_search = v5;
    }

    v6 = si_mac_byname(v5);
    LI_set_thread_item(113, v6);
    if (v6 && sscanf(*(v6 + 40), " %x:%x:%x:%x:%x:%x", v9, &v9[1], &v9[2], &v9[3], &v9[4], &v9[5]) == 6)
    {
      for (i = 0; i != 6; ++i)
      {
        a2->octet[i] = v9[i];
      }

      result = 0;
    }

    else
    {
      result = -1;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

int ether_ntohost(char *a1, const ether_addr *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = -1;
  if (a1 && a2)
  {
    for (i = 0; i != 6; ++i)
    {
      v11[i] = a2->octet[i];
    }

    snprintf(__str, 0x100uLL, "%x:%x:%x:%x:%x:%x", v11[0], v11[1], v11[2], v11[3], v11[4], v11[5]);
    v5 = si_search_search;
    if (!si_search_search)
    {
      v5 = si_module_with_name("search");
      si_search_search = v5;
    }

    v6 = si_mac_bymac(v5);
    LI_set_thread_item(213, v6);
    if (v6)
    {
      v7 = *(v6 + 32);
      v8 = strlen(v7);
      memcpy(a1, v7, v8 + 1);
      result = 0;
    }

    else
    {
      result = -1;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

netent *__cdecl getnetbyname(const char *a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_network_byname(v1);
  LI_set_thread_item(108, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

netent *__cdecl getnetbyaddr(uint32_t a1, int a2)
{
  if (a2 != 2)
  {
    return 0;
  }

  v2 = si_search_search;
  if (!si_search_search)
  {
    v2 = si_module_with_name("search");
    si_search_search = v2;
  }

  v3 = si_network_byaddr(v2);
  LI_set_thread_item(208, v3);
  if (v3)
  {
    return (v3 + 32);
  }

  else
  {
    return 0;
  }
}

netent *getnetent(void)
{
  thread_list = LI_get_thread_list(8);
  if (!thread_list)
  {
    v1 = si_search_search;
    if (!si_search_search)
    {
      v1 = si_module_with_name("search");
      si_search_search = v1;
    }

    thread_list = si_network_all(v1);
    LI_set_thread_list(8, thread_list);
  }

  v2 = si_list_next(thread_list);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

servent *__cdecl getservbyname(const char *a1, const char *a2)
{
  v2 = si_search_search;
  if (!si_search_search)
  {
    v2 = si_module_with_name("search");
    si_search_search = v2;
  }

  v3 = si_service_byname(v2);
  LI_set_thread_item(109, v3);
  if (v3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

servent *getservent(void)
{
  thread_list = LI_get_thread_list(9);
  if (!thread_list)
  {
    v1 = si_search_search;
    if (!si_search_search)
    {
      v1 = si_module_with_name("search");
      si_search_search = v1;
    }

    thread_list = si_service_all(v1);
    LI_set_thread_list(9, thread_list);
  }

  v2 = si_list_next(thread_list);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

protoent *__cdecl getprotobyname(const char *a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_protocol_byname(v1);
  LI_set_thread_item(110, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

protoent *__cdecl getprotobynumber(int a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_protocol_bynumber(v1);
  LI_set_thread_item(210, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

protoent *getprotoent(void)
{
  thread_list = LI_get_thread_list(10);
  if (!thread_list)
  {
    v1 = si_search_search;
    if (!si_search_search)
    {
      v1 = si_module_with_name("search");
      si_search_search = v1;
    }

    thread_list = si_protocol_all(v1);
    LI_set_thread_list(10, thread_list);
  }

  v2 = si_list_next(thread_list);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

rpcent *__cdecl getrpcbyname(const char *name)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_rpc_byname(v1);
  LI_set_thread_item(111, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

rpcent *__cdecl getrpcbynumber(int number)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_rpc_bynumber(v1);
  LI_set_thread_item(211, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

rpcent *getrpcent(void)
{
  thread_list = LI_get_thread_list(11);
  if (!thread_list)
  {
    v1 = si_search_search;
    if (!si_search_search)
    {
      v1 = si_module_with_name("search");
      si_search_search = v1;
    }

    thread_list = si_rpc_all(v1);
    LI_set_thread_list(11, thread_list);
  }

  v2 = si_list_next(thread_list);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

fstab *__cdecl getfsspec(const char *a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_fs_byspec(v1);
  LI_set_thread_item(112, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

fstab *__cdecl getfsfile(const char *a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_fs_byfile(v1);
  LI_set_thread_item(212, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

fstab *getfsent(void)
{
  thread_list = LI_get_thread_list(12);
  if (!thread_list)
  {
    v1 = si_search_search;
    if (!si_search_search)
    {
      v1 = si_module_with_name("search");
      si_search_search = v1;
    }

    thread_list = si_fs_all(v1);
    LI_set_thread_list(12, thread_list);
  }

  v2 = si_list_next(thread_list);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

void *_getaddrinfo_interface_async_call(char *a1, char *a2, int *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v11 = a3[2];
    v12 = a3[3];
    v14 = *a3;
    v13 = a3[1];
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
  }

  result = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040CC6EE3FDuLL);
  if (result)
  {
    v16 = result;
    if (!v14)
    {
      v14 = 1536;
    }

    *result = a5;
    result[1] = a6;
    result[2] = 15;
    v17 = si_search_search;
    if (!si_search_search)
    {
      v17 = si_module_with_name("search");
      si_search_search = v17;
    }

    return si_async_call(v17, 0x1Du, a1, a2, a4, v13, v11, v12, v14, si_libinfo_addrinfo_callback, v16);
  }

  return result;
}

void si_libinfo_addrinfo_callback(addrinfo *a1, int a2, void *a3)
{
  if (a3)
  {
    if (a2 == 15 || (v5 = *a3) == 0)
    {
      si_list_release(a1);
LABEL_21:

      free(a3);
      return;
    }

    if ((a2 - 200) >= 0xFFFFFF9D)
    {
      v6 = a2 - 100;
    }

    else
    {
      v6 = 4;
    }

    if (a2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (a1)
    {
      v8 = si_list_to_addrinfo(a1);
      si_list_release(a1);
      v5 = *a3;
      v9 = a3[1];
      if (v8)
      {
        v10 = v7;
        v11 = v8;
LABEL_20:
        v5(v10, v11, v9);
        goto LABEL_21;
      }

      v10 = 6;
    }

    else
    {
      v9 = a3[1];
      v10 = 8;
    }

    v11 = 0;
    goto LABEL_20;
  }

  si_list_release(a1);
}

uint64_t getaddrinfo_async_start(unsigned int *a1, char *a2, char *a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = 11;
  if (a1)
  {
    v8 = _getaddrinfo_interface_async_call(a2, a3, a4, 0, a5, a6);
    *a1 = v8;
    if (v8)
    {
      return 0;
    }

    else
    {
      return 11;
    }
  }

  return v6;
}

uint64_t getaddrinfo_async_send(unsigned int *a1, char *a2, char *a3, int *a4)
{
  v4 = 11;
  if (a1)
  {
    v6 = _getaddrinfo_interface_async_call(a2, a3, a4, 0, 0, 0);
    *a1 = v6;
    if (v6)
    {
      return 0;
    }

    else
    {
      return 11;
    }
  }

  return v4;
}

void *_getnameinfo_interface_async_call(char *a1, size_t a2, int a3, const char *a4, uint64_t a5, uint64_t a6)
{
  result = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040CC6EE3FDuLL);
  if (result)
  {
    v13 = result;
    *result = a5;
    result[1] = a6;
    result[2] = 15;
    v14 = si_search_search;
    if (!si_search_search)
    {
      v14 = si_module_with_name("search");
      si_search_search = v14;
    }

    return si_async_call(v14, 0x1Eu, a1, 0, a4, a3, 0, a2, 0, si_libinfo_nameinfo_callback, v13);
  }

  return result;
}

void si_libinfo_nameinfo_callback(uint64_t a1, int a2, void (**a3)(uint64_t, char *, char *, uint64_t))
{
  if (a3)
  {
    if (a2 == 15 || (v5 = *a3) == 0)
    {
      si_item_release(a1);
    }

    else
    {
      if ((a2 - 200) >= 0xFFFFFF9D)
      {
        v6 = a2 - 100;
      }

      else
      {
        v6 = 4;
      }

      if (a2)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      if (a1)
      {
        LI_set_thread_item(14, a1);
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = strdup(v8);
        }

        else
        {
          v9 = 0;
        }

        v14 = *(a1 + 40);
        if (v14)
        {
          v13 = strdup(v14);
        }

        else
        {
          v13 = 0;
        }

        v5 = *a3;
        v10 = a3[1];
        v11 = v7;
        v12 = v9;
      }

      else
      {
        v10 = a3[1];
        v11 = v7;
        v12 = 0;
        v13 = 0;
      }

      v5(v11, v12, v13, v10);
    }

    free(a3);
  }
}

uint64_t getnameinfo_async_start(unsigned int *a1, char *a2, size_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = 11;
  if (a1)
  {
    v8 = _getnameinfo_interface_async_call(a2, a3, a4, 0, a5, a6);
    *a1 = v8;
    if (v8)
    {
      return 0;
    }

    else
    {
      return 11;
    }
  }

  return v6;
}

uint64_t getnameinfo_async_send(unsigned int *a1, char *a2, size_t a3, int a4)
{
  v4 = 11;
  if (a1)
  {
    v6 = _getnameinfo_interface_async_call(a2, a3, a4, 0, 0, 0);
    *a1 = v6;
    if (v6)
    {
      return 0;
    }

    else
    {
      return 11;
    }
  }

  return v4;
}

int getgrnam_r(const char *a1, group *a2, char *a3, size_t a4, group **a5)
{
  if (a5)
  {
    *a5 = 0;
    LODWORD(v7) = 34;
    if (a2)
    {
      if (a3)
      {
        v9 = a4;
        if (a4)
        {
          v10 = si_search_search;
          if (!si_search_search)
          {
            v10 = si_module_with_name("search");
            si_search_search = v10;
          }

          v7 = si_group_byname(v10);
          if (v7)
          {
            v11 = v7;
            v12 = copy_group_r(v7 + 32, a2, a3, v9);
            si_item_release(v11);
            if (v12)
            {
              LODWORD(v7) = 34;
            }

            else
            {
              LODWORD(v7) = 0;
              *a5 = a2;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 34;
  }

  return v7;
}

int getgruuid_r(uuid_t a1, group *a2, char *a3, size_t a4, group **a5)
{
  if (a5)
  {
    *a5 = 0;
    LODWORD(v7) = 34;
    if (a2)
    {
      if (a3)
      {
        v9 = a4;
        if (a4)
        {
          v10 = si_search_search;
          if (!si_search_search)
          {
            v10 = si_module_with_name("search");
            si_search_search = v10;
          }

          v7 = si_group_byuuid(v10);
          if (v7)
          {
            v11 = v7;
            v12 = copy_group_r(v7 + 32, a2, a3, v9);
            si_item_release(v11);
            if (v12)
            {
              LODWORD(v7) = 34;
            }

            else
            {
              LODWORD(v7) = 0;
              *a5 = a2;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 34;
  }

  return v7;
}

int getpwuuid_r(uuid_t a1, passwd *a2, char *a3, size_t a4, passwd **a5)
{
  if (a5)
  {
    *a5 = 0;
    LODWORD(v7) = 34;
    if (a2)
    {
      if (a3)
      {
        v9 = a4;
        if (a4)
        {
          v10 = si_search_search;
          if (!si_search_search)
          {
            v10 = si_module_with_name("search");
            si_search_search = v10;
          }

          v7 = si_user_byuuid(v10);
          if (v7)
          {
            v11 = v7;
            v12 = copy_user_r(v7 + 32, a2, a3, v9);
            si_item_release(v11);
            if (v12)
            {
              LODWORD(v7) = 34;
            }

            else
            {
              LODWORD(v7) = 0;
              *a5 = a2;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 34;
  }

  return v7;
}

char *__cdecl user_from_uid(uid_t a1, int a2)
{
  v4 = getpwuid(a1);
  if (v4)
  {
    return v4->pw_name;
  }

  if (a2)
  {
    return 0;
  }

  v5 = user_from_uid_buf;
  snprintf(user_from_uid_buf, 0x10uLL, "%u", a1);
  return v5;
}

char *__cdecl group_from_gid(gid_t a1, int a2)
{
  v4 = getgrgid(a1);
  if (v4)
  {
    return v4->gr_name;
  }

  if (a2)
  {
    return 0;
  }

  v5 = group_from_gid_buf;
  snprintf(group_from_gid_buf, 0x10uLL, "%u", a1);
  return v5;
}

_BYTE *mdns_hostbyname(uint64_t a1, const char *a2, int a3, char *a4, int *a5)
{
  if (a5)
  {
    *a5 = 0;
    v10 = 3;
    if (!a1 || !a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v11 = 0;
    if (!a1 || !a2)
    {
      return v11;
    }
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  if (a3 == 30)
  {
    DWORD1(v25) = 16;
    *(&v22[0] + 1) = &v24;
    v12 = 28;
  }

  else
  {
    if (a3 != 2)
    {
      if (a5)
      {
LABEL_22:
        v10 = 3;
        goto LABEL_23;
      }

      return 0;
    }

    DWORD1(v25) = 4;
    *&v22[0] = &v24;
    v12 = 1;
  }

  _mdns_debug_message(";; mdns_hostbyname %s type %u class %u\n", a2, v12, 1);
  LODWORD(v25) = a3;
  if (_mdns_search(a2, 1u, v12, a4, 0, 0, 0, v22) || !HIDWORD(v26))
  {
    _mdns_reply_clear(v22);
    if (a5)
    {
      v10 = 1;
LABEL_23:
      v11 = 0;
      *a5 = v10;
      return v11;
    }

    return 0;
  }

  time(0);
  if (a3 == 30)
  {
    v20 = "L4488s*44c";
  }

  else
  {
    v20 = "L4488s*44a";
  }

  v11 = LI_ils_create(v20, v13, v14, v15, v16, v17, v18, v19, a1);
  _mdns_reply_clear(v22);
  if (a5 && !v11)
  {
    goto LABEL_22;
  }

  return v11;
}

_BYTE *mdns_hostbyaddr(uint64_t a1, unsigned __int8 *a2, int a3, const char *a4, int *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
    v10 = 3;
    if (!a1 || !a2)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v11 = 0;
    if (!a1 || !a2)
    {
      goto LABEL_38;
    }
  }

  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  if (a3 == 30)
  {
    if (!a4 && *a2 == 254 && (a2[1] & 0xC0) == 0x80)
    {
      v12 = __rev16(*(a2 + 1));
      v36 = *a2;
      WORD1(v36) = 0;
      if (v12)
      {
        v14 = &v36;
        if (_is_v6addr_ifaddr(&v36, v12))
        {
          v12 = -1;
          goto LABEL_21;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = a2;
LABEL_21:
    v15 = 0;
    DWORD1(v33) = 16;
    *(&v30[0] + 1) = &v32;
    v38 = 0;
    do
    {
      v16 = *v14++;
      v17 = v37 + v15;
      v17[63] = 46;
      v17[62] = hexchar[v16 >> 4];
      v17[61] = 46;
      v17[60] = hexchar[v16 & 0xF];
      v15 -= 4;
    }

    while (v15 != -64);
    v35 = 0;
    asprintf(&v35, "%sip6.arpa.", v37);
    v18 = v35;
    goto LABEL_26;
  }

  if (a3 != 2)
  {
    goto LABEL_31;
  }

  v12 = 0;
  v13 = *a2;
  if (!a4 && v13 == 169)
  {
    if (a2[1] == 254)
    {
      v12 = (_is_v4addr_ifaddr(a2) << 31) >> 31;
      v13 = *a2;
    }

    else
    {
      v12 = 0;
      v13 = 169;
    }
  }

  DWORD1(v33) = 4;
  *&v30[0] = &v32;
  v37[0] = 0;
  asprintf(v37, "%u.%u.%u.%u.in-addr.arpa.", a2[3], a2[2], a2[1], v13);
  v18 = v37[0];
LABEL_26:
  LODWORD(v33) = a3;
  _mdns_debug_message(";; mdns_hostbyaddr %s type %u class %u\n", v18, 12, 1);
  if (a4)
  {
    v12 = if_nametoindex(a4);
    if (!v12)
    {
      free(v18);
LABEL_34:
      _mdns_reply_clear(v30);
      if (a5)
      {
        v10 = 1;
        goto LABEL_36;
      }

      goto LABEL_37;
    }
  }

  v19 = _mdns_search_ex(v18, 1u, 0xCu, v12, 0, 0, 0, v30);
  free(v18);
  if (v19)
  {
    goto LABEL_34;
  }

  if (_mdns_hostent_append_addr(&v32, a2, DWORD1(v33)))
  {
    _mdns_hostent_clear(&v32);
LABEL_31:
    if (a5)
    {
LABEL_32:
      v10 = 3;
LABEL_36:
      v11 = 0;
      *a5 = v10;
      goto LABEL_38;
    }

LABEL_37:
    v11 = 0;
    goto LABEL_38;
  }

  time(0);
  if (a3 == 30)
  {
    v29 = "L4488s*44c";
  }

  else
  {
    v29 = "L4488s*44a";
  }

  v11 = LI_ils_create(v29, v22, v23, v24, v25, v26, v27, v28, a1);
  _mdns_hostent_clear(&v32);
  if (a5 && !v11)
  {
    goto LABEL_32;
  }

LABEL_38:
  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

void **mdns_addrinfo(uint64_t a1, const char *a2, const char *a3, int a4, unsigned int a5, unsigned int a6, uint64_t a7, char *a8, int *a9)
{
  if (!a1)
  {
    goto LABEL_20;
  }

  if (a4 == 30)
  {
    v15 = (a7 >> 11) & 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  if (a4 != 2)
  {
    if (a4)
    {
      return 0;
    }

    v15 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v15 = 1;
LABEL_8:
  if (a9)
  {
    *a9 = 0;
  }

  _mdns_debug_message(";; mdns_addrinfo node %s serv %s\n", a2, a3);
  v35 = 0;
  v34[0] = 0u;
  v32[0] = 0u;
  v33 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v34[1] = 0x400000002uLL;
  v32[1] = 0x100000001EuLL;
  if ((v15 & v16) == 1)
  {
    v28 = a6;
    v17 = 0;
    *&v30[0] = v34;
    *(&v30[0] + 1) = v32;
    goto LABEL_16;
  }

  if (v15)
  {
    v28 = a6;
    *&v30[0] = v34;
    v17 = 1;
    goto LABEL_16;
  }

  if (!v16)
  {
LABEL_20:
    if (a9)
    {
      v18 = 0;
      v19 = 3;
      goto LABEL_22;
    }

    return 0;
  }

  v28 = a6;
  *(&v30[0] + 1) = v32;
  v17 = 28;
LABEL_16:
  v37 = 0;
  v36 = 0uLL;
  v29 = 0;
  if ((a7 & 0x1000) != 0)
  {
    if (!a3)
    {
      v29 = 0;
      if ((a7 & 4) == 0)
      {
        goto LABEL_26;
      }

LABEL_34:
      if (!a2)
      {
        return 0;
      }

      if (a4 == 2)
      {
        v20 = 0;
        v37 = *a2;
        v21 = &v37;
        v22 = v28;
      }

      else
      {
        v22 = v28;
        v21 = 0;
        if (a4 == 30)
        {
          v36 = *a2;
          v20 = &v36;
        }

        else
        {
          v20 = 0;
        }
      }

      return si_addrinfo_list(a1, a7, a5, v22, v21, v20, v29, 0, 0, 0);
    }

    v29 = *a3;
  }

  else if (_gai_serv_to_port(a3, v28, &v29))
  {
    if (a9)
    {
      v18 = 0;
      v19 = 108;
LABEL_22:
      *a9 = v19;
      return v18;
    }

    return 0;
  }

  if ((a7 & 4) != 0)
  {
    goto LABEL_34;
  }

LABEL_26:
  if (!a2)
  {
    return 0;
  }

  if (_mdns_search(a2, 1u, v17, a8, (32 * a7) & 0x8000, 0, 0, v30) || SHIDWORD(v35) <= 0 && SHIDWORD(v33) < 1)
  {
    v18 = 0;
    if (a9)
    {
      *a9 = 108;
    }
  }

  else
  {
    if (v15)
    {
      v24 = v34;
    }

    else
    {
      v24 = 0;
    }

    if (v16)
    {
      v25 = v32;
    }

    else
    {
      v25 = 0;
    }

    v18 = si_addrinfo_list_from_hostent(a1, a7, a5, v28, v29, 0, v24, v25);
  }

  _mdns_reply_clear(v30);
  return v18;
}

void **mdns_srv_byname(uint64_t a1, const char *a2, char *a3, _DWORD *a4)
{
  if (a1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    _mdns_debug_message(";; mdns_srv_byname %s type %u class %u\n", a2, 33, 1);
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    if (_mdns_search(a2, 1u, 0x21u, a3, 0, 0, 0, &v22) || (v15 = v23) == 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v20 = v15[2];
        v21 = *(v15 + 1);
        v18 = *v15;
        v19 = v15[1];
        v16 = LI_ils_create("L4488222s", v7, v8, v9, v10, v11, v12, v13, a1);
        v14 = si_list_add(v14, v16);
        si_item_release(v16);
        v15 = *(v15 + 2);
      }

      while (v15);
    }

    _mdns_reply_clear(&v22);
  }

  else
  {
    v14 = 0;
    if (a4)
    {
      *a4 = 3;
    }
  }

  return v14;
}

_BYTE *mdns_item_call()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v6 = v5;
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0x10000;
  if (!v0 || (v7 = v1) == 0)
  {
    if (v5)
    {
      v20 = 0;
      v21 = 3;
LABEL_15:
      *v6 = v21;
      goto LABEL_17;
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v0;
  if (v5)
  {
    *v5 = 0;
  }

  _mdns_debug_message(";; mdns_item_call %s type %u class %u\n", v1, v4, v3);
  v26[0] = 0u;
  v24[0] = 0u;
  v25 = 0;
  v26[1] = 0x400000002uLL;
  v24[1] = 0x100000001EuLL;
  v27 = 0;
  v28[0] = v26;
  v28[1] = v24;
  memset(&v28[2], 0, 24);
  if (_mdns_search(v7, v9, v8, v10, 0, v30, &v29, v28) || v29 - 65537 <= 0xFFFEFFFF)
  {
    _mdns_reply_clear(v28);
    if (v6)
    {
      v20 = 0;
      v21 = 1;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v19 = LI_ils_create("L4488@@", v12, v13, v14, v15, v16, v17, v18, v11);
  v20 = v19;
  if (v6 && !v19)
  {
    *v6 = 3;
  }

  _mdns_reply_clear(v28);
LABEL_17:
  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

void _mdns_debug_message(char *a1, ...)
{
  va_start(va, a1);
  v2[0] = 0;
  if (a1)
  {
    if (_mdns_debug == 1)
    {
      va_copy(&v2[1], va);
      vasprintf(v2, a1, va);
      v1 = v2[0];
      if (v2[0])
      {
        if (_mdns_debug == 1)
        {
          fputs(v2[0], *MEMORY[0x1E69E9858]);
          v1 = v2[0];
        }

        free(v1);
      }
    }
  }
}

uint64_t _mdns_search(const char *a1, unsigned int a2, unsigned int a3, char *a4, int a5, uint64_t a6, unsigned int *a7, uint64_t *a8)
{
  if (a4)
  {
    LODWORD(a4) = if_nametoindex(a4);
    if (!a4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return _mdns_search_ex(a1, a2, a3, a4, a5, a6, a7, a8);
}

void _mdns_reply_clear(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 32) = 0;
    _mdns_hostent_clear(*a1);
    _mdns_hostent_clear(*(a1 + 8));
    v2 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v2)
    {
      do
      {
        v3 = *(v2 + 16);
        free(*(v2 + 8));
        free(v2);
        v2 = v3;
      }

      while (v3);
    }
  }
}

uint64_t _mdns_search_ex(const char *a1, unsigned int a2, unsigned int a3, uint32_t a4, int a5, uint64_t a6, unsigned int *a7, uint64_t *a8)
{
  v108 = *MEMORY[0x1E69E9840];
  memset(&changelist, 0, sizeof(changelist));
  v94 = 0;
  si_inet_config(&v94, 0);
  if (v94)
  {
    --v94;
  }

  if (!a1)
  {
    v26 = 0xFFFFFFFFLL;
    goto LABEL_135;
  }

  v81 = a2;
  v88 = a4;
  if (pthread_is_threaded_np() && pthread_main_np() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19A0B0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Warning: Libinfo call to mDNSResponder on main thread", buf, 2u);
  }

  v97 = 0uLL;
  v96 = xmmword_19A0D6B80;
  _mdns_deadline(&v97, &v96);
  timeout = v96;
  memset(buf, 0, sizeof(buf));
  gettimeofday(buf, 0);
  v15 = *buf;
  v16 = *&buf[8];
  *buf = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v93 = 0;
  memset(v106, 0, sizeof(v106));
  v105 = 0;
  v107 = 0;
  v17 = kqueue();
  changelist.ident = 1;
  *&changelist.filter = 2228214;
  memset(&changelist.fflags, 0, 20);
  v18 = v17;
  if (kevent(v17, &changelist, 1, 0, 0, 0))
  {
    LODWORD(a6) = 0;
    v19 = 0;
    goto LABEL_10;
  }

  v85 = a6;
  v86 = a8;
  LODWORD(a6) = 0;
  v76 = 1000 * v16;
  if (a3 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = a3;
  }

  v84 = v27;
  v82 = 0;
  v83 = 3;
  v28 = 1;
  v89 = a7;
  kq = v18;
  __s = a1;
  while (1)
  {
    _mdns_debug_message(";; _mdns_search wait loop\n");
    if (v28)
    {
      break;
    }

LABEL_48:
    if (a6 <= 0)
    {
      v39 = 0;
    }

    else
    {
      v39 = buf;
    }

    v40 = v106;
    if (a6 <= 1)
    {
      v40 = 0;
    }

    v78 = v40;
    v79 = v39;
    _mdns_debug_message(";; set kevent timeout %ld.%ld [ctx %p %p]\n", timeout.tv_sec, timeout.tv_nsec, v39, v40);
    *__error() = 0;
    if (kevent(v18, 0, 0, &changelist, 1, &timeout) < 0 && *__error() != 4)
    {
      v19 = -1;
      goto LABEL_10;
    }

    pthread_mutex_lock(&_mdns_mutex);
    v92.tv_sec = 0;
    v92.tv_nsec = 0;
    v41 = kevent(v18, 0, 0, &changelist, 1, &v92);
    if (!_mdns_sdref)
    {
      _mdns_debug_message(";; _mdns_sdref is NULL, initialize = true\n");
      v43 = 0;
      goto LABEL_62;
    }

    if (v41 >= 1 && changelist.filter == 0xFFFF)
    {
      _mdns_debug_message(";; _mdns_search calling DNSServiceProcessResult\n");
      v42 = DNSServiceProcessResult(_mdns_sdref);
      _mdns_debug_message(";; DNSServiceProcessResult -> %d\n", v42);
      v43 = v42;
      v44 = 0;
      if ((v42 + 65569) <= 0x1C && ((1 << (v42 + 33)) & 0x10000041) != 0)
      {
        _mdns_debug_message(";; DNSServiceProcessResult status %d [ctx %p %p]\n", v42, v79, v78);
        ++_mdns_generation;
        DNSServiceRefDeallocate(_mdns_sdref);
        v43 = 0;
        _mdns_sdref = 0;
LABEL_62:
        v44 = 1;
      }
    }

    else
    {
      if (v41 || changelist.filter != -10)
      {
        _mdns_debug_message(";; kevent m=%d ev.filter=0x%08x\n");
      }

      else
      {
        _mdns_debug_message(";; kevent wakeup\n");
      }

      v44 = 0;
      v43 = 0;
    }

    if (a6 < 1)
    {
      v75 = v43;
      pthread_mutex_unlock(&_mdns_mutex);
      if (v75)
      {
LABEL_140:
        _mdns_debug_message(";; DNSServiceProcessResult error status %d [ctx %p %p]\n");
      }

      else
      {
LABEL_141:
        _mdns_debug_message(";; [%s type %d class %d] done [ctx %p %p]\n");
      }

      a7 = v89;
LABEL_144:
      v19 = 0;
      goto LABEL_10;
    }

    v80 = v43;
    v77 = v44;
    v45 = 0;
    v46 = 1;
    v47 = buf;
    do
    {
      is_complete = _mdns_query_is_complete(v47, &v93 + v45);
      v49 = is_complete;
      v50 = "false";
      if (is_complete)
      {
        v50 = "true";
      }

      _mdns_debug_message(";; ctx %d %p error=%d complete=%s\n", v45, v47, *(v47 + 17), v50);
      v51 = *(v47 + 17);
      if ((v49 & 1) != 0 || v51)
      {
        if (*(v47 + 10) == 1)
        {
          v52 = v51 == 0;
          if (v51)
          {
            v53 = 2;
          }

          else
          {
            v53 = 1;
          }

          v82 = v53;
          v54 = "GOT_DATA";
          if (!v52)
          {
            v54 = "GOT_ERROR";
          }

          _mdns_debug_message(";; type ns_t_a got_a_response=%s ctx %p\n", v54, v47);
        }

        _mdns_debug_message(";; [%s type %d class %d] finished processing ctx %p\n");
      }

      else
      {
        v46 = 0;
        _mdns_debug_message(";; [%s type %d class %d] continuing ctx %p\n");
      }

      ++v45;
      v47 += 88;
    }

    while (a6 != v45);
    pthread_mutex_unlock(&_mdns_mutex);
    if (v80)
    {
      goto LABEL_140;
    }

    if (v46)
    {
      goto LABEL_141;
    }

    if ((v93 & 1) != 0 || HIBYTE(v93) == 1)
    {
      v99.tv_sec = 0;
      *&v99.tv_usec = 0;
      gettimeofday(&v99, 0);
      v55 = 1000 * v99.tv_usec;
      v56 = v99.tv_sec - v15;
      v57 = v55 - v76;
      if (v55 - v76 < 0)
      {
        v57 += 1000000000;
        v58 = v56 + 4;
        v96.tv_sec = v58;
LABEL_92:
        a7 = v89;
        v96.tv_nsec = v57;
      }

      else
      {
        v58 = v56 + 5;
        v96.tv_sec = v58;
        v96.tv_nsec = v55 - v76;
        if (v57 > 0x3B9ACA00)
        {
          v58 += v57 / 0x3B9ACA00;
          v96.tv_sec = v58;
          v57 %= 0x3B9ACA00uLL;
          goto LABEL_92;
        }

        a7 = v89;
      }

      if (timeout.tv_sec - v58 - (timeout.tv_nsec < v57) < 0)
      {
        goto LABEL_112;
      }

      _mdns_debug_message(";; new timeout [%s type %d class %d] (waiting for more) %ld.%ld [ctx %p %p]\n", a1, a3, v81, v58, v57, v79, v78);
      goto LABEL_111;
    }

    a7 = v89;
    if (v82 != 1)
    {
      goto LABEL_112;
    }

    v99.tv_sec = 0;
    *&v99.tv_usec = 0;
    gettimeofday(&v99, 0);
    v59 = 1000 * v99.tv_usec;
    v35 = v59 < v76;
    v60 = v59 - v76;
    if (v35)
    {
      v61 = v60 + 1000000000;
    }

    else
    {
      v61 = v60;
    }

    v62 = v99.tv_sec - v15 + (v60 >> 63);
    v63 = 2;
    if (!v94)
    {
      v63 = 10;
    }

    if (v61 < 20000001 && v62 == 0)
    {
      v63 = 5;
    }

    v65 = 2 * v62;
    v66 = 2 * v61;
    if (v61 >= 500000001)
    {
      v65 += v66 / 0x3B9ACA00;
      v66 %= 0x3B9ACA00uLL;
    }

    v67 = v65 + v63;
    v96.tv_sec = v67;
    v96.tv_nsec = v66;
    if (timeout.tv_sec - v67 - (timeout.tv_nsec < v66) >= 0)
    {
      _mdns_debug_message(";; new timeout [%s type %d class %d] (waiting for AAAA) %ld.%ld [ctx %p %p]\n", a1, a3, v81, v67, v66, v79, v78);
      v82 = 1;
LABEL_111:
      _mdns_deadline(&v97, &v96);
      goto LABEL_112;
    }

    v82 = 1;
LABEL_112:
    v99.tv_sec = 0;
    *&v99.tv_usec = 0;
    gettimeofday(&v99, 0);
    v68 = v97.i64[0] - v99.tv_sec;
    v69 = v97.i64[1] - 1000 * v99.tv_usec;
    timeout.tv_sec = v97.i64[0] - v99.tv_sec;
    timeout.tv_nsec = v69;
    if (v69 < 0)
    {
      timeout.tv_sec = --v68;
      timeout.tv_nsec = v69 + 1000000000;
    }

    if (v68 < 0)
    {
      _mdns_debug_message(";; [%s type %d class %d] timeout [ctx %p %p]\n", a1, a3, v81, v79, v78);
      goto LABEL_144;
    }

    v18 = kq;
    v28 = v77;
  }

  while (1)
  {
    pthread_mutex_lock(&_mdns_mutex);
    if (a6 >= 1)
    {
      v29 = a6;
      v30 = buf;
      do
      {
        _mdns_query_clear(v30);
        v30 += 88;
        --v29;
      }

      while (v29);
    }

    if (_mdns_sdref)
    {
      v32 = v85;
      v31 = v86;
      v33 = a5;
    }

    else
    {
      v32 = v85;
      v31 = v86;
      v33 = a5;
      if (_mdns_old_sdref)
      {
        ++_mdns_generation;
        DNSServiceRefDeallocate(_mdns_old_sdref);
        _mdns_old_sdref = 0;
      }

      Connection = DNSServiceCreateConnection(&_mdns_sdref);
      v35 = v83-- < 1;
      if (v35 || Connection)
      {
        pthread_mutex_unlock(&_mdns_mutex);
        v20 = 0;
        LODWORD(a6) = 0;
        v19 = 0;
        v21 = 0;
        goto LABEL_15;
      }
    }

    start = _mdns_query_start(buf, v31, v32, a7, __s, v81, v84, v88, v33, kq);
    if (start | a3)
    {
      v37 = start;
      LODWORD(a6) = 1;
    }

    else
    {
      v37 = _mdns_query_start(v106, v31, v32, a7, __s, v81, 28, v88, v33, kq);
      LODWORD(a6) = 2;
    }

    if (!v37)
    {
      break;
    }

    _mdns_debug_message(";; initialization error %d\n", v37);
    a7 = v89;
    if ((v37 + 65569) > 0x20 || ((1 << (v37 + 33)) & 0x110000041) == 0)
    {
      pthread_mutex_unlock(&_mdns_mutex);
      goto LABEL_138;
    }

    if (_mdns_sdref)
    {
      ++_mdns_generation;
      DNSServiceRefDeallocate(_mdns_sdref);
      _mdns_sdref = 0;
    }

    pthread_mutex_unlock(&_mdns_mutex);
    _mdns_debug_message(";; _mdns_search wait loop\n");
  }

  changelist.ident = DNSServiceRefSockFD(_mdns_sdref);
  *&changelist.filter = 0x1FFFF;
  *(&changelist | 0xC) = 0;
  *((&changelist | 0xC) + 8) = 0;
  *((&changelist | 0xC) + 0x10) = 0;
  v38 = kevent(kq, &changelist, 1, 0, 0, 0);
  pthread_mutex_unlock(&_mdns_mutex);
  a7 = v89;
  if (!v38)
  {
    v18 = kq;
    a1 = __s;
    goto LABEL_48;
  }

LABEL_138:
  v19 = 0;
LABEL_10:
  if (a6 <= 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = buf;
  }

  v21 = v106;
  if (a6 <= 1)
  {
    v21 = 0;
  }

LABEL_15:
  _mdns_debug_message(";; finished _mdns_search loop [ctx %p %p]\n", v20, v21);
  pthread_mutex_lock(&_mdns_mutex);
  if (a6 < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    a6 = a6;
    v23 = buf;
    do
    {
      clear = _mdns_query_clear(v23);
      v22 |= clear;
      if (clear)
      {
        v25 = "";
      }

      else
      {
        v25 = "in";
      }

      _mdns_debug_message(";; _mdns_search ctx %p %scomplete\n", v23, v25);
      v23 += 88;
      --a6;
    }

    while (a6);
  }

  if (v93)
  {
    v70 = "in";
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v22)
    {
      v71 = "";
    }

    else
    {
      v71 = "in";
    }

    if (v22)
    {
      v72 = v19;
    }

    else
    {
      v72 = -1;
    }

    if ((v93 & 0x100) != 0)
    {
      v26 = 0xFFFFFFFFLL;
    }

    else
    {
      v26 = v72;
    }

    if ((v93 & 0x100) != 0)
    {
      v70 = "in";
    }

    else
    {
      v70 = v71;
    }
  }

  _mdns_debug_message(";; _mdns_search overall %scomplete\n", v70);
  pthread_mutex_unlock(&_mdns_mutex);
  close_NOCANCEL();
  if (a7)
  {
    *a7 = DWORD2(v101);
  }

  _mdns_debug_message(";; _mdns_search exit res %d\n", v26);
LABEL_135:
  v73 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t _mdns_deadline(int64x2_t *a1, int64x2_t *a2)
{
  v6 = 0uLL;
  result = _mdns_now(v6.i64);
  v5 = vaddq_s64(*a2, v6);
  *a1 = v5;
  if (v5.i64[1] > 1000000000)
  {
    a1->i64[0] = v5.i64[0] + v5.i64[1] / 0x3B9ACA00uLL;
    a1->i64[1] = v5.i64[1] % 0x3B9ACA00uLL;
  }

  return result;
}

uint64_t _mdns_now(__darwin_time_t *a1)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  result = gettimeofday(&v4, 0);
  v3 = 1000 * v4.tv_usec;
  *a1 = v4.tv_sec;
  a1[1] = v3;
  return result;
}

BOOL _mdns_query_clear(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v9 = 0;
  is_complete = _mdns_query_is_complete(a1, &v9);
  v3 = *(a1 + 56);
  if (v3 && *(a1 + 48) == _mdns_generation)
  {
    DNSServiceRefDeallocate(v3);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = -1;
  v4 = &in_flight;
  v5 = in_flight;
  if (in_flight == a1)
  {
LABEL_9:
    *v4 = *(a1 + 80);
  }

  else
  {
    while (v5)
    {
      v6 = v5;
      v5 = *(v5 + 80);
      if (v5 == a1)
      {
        v4 = (v6 + 80);
        goto LABEL_9;
      }
    }
  }

  *(a1 + 80) = 0;
  v7 = v9;
  if ((is_complete & 1) == 0 && (v9 & 1) == 0)
  {
    _mdns_hostent_clear(*(a1 + 8));
    *(a1 + 24) = -1;
    v7 = v9;
  }

  return (v7 | is_complete) != 0;
}

uint64_t _mdns_query_start(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4, char *__s, unsigned int a6, int a7, uint32_t a8, int a9, int a10)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a3 && a4)
  {
    *(a1 + 16) = a3;
    v17 = *a4;
    *(a1 + 32) = v17;
    if (v17 < 0x10 || (*(a3 + 8) = 0, *a3 = 0, *a3 = *a3 & 0xFFFF0000F0060000 | arc4random() | 0x10000810000, v18 = _mdns_pack_domain_name(__s, a3 + 12, (v17 - 12)), (v18 & 0x80000000) != 0) || (LODWORD(v19) = v18 + 16, v18 + 16 > v17))
    {
      v19 = -1;
    }

    else
    {
      v33 = a3 + v18;
      *(v33 + 12) = bswap32(a7) >> 16;
      *(v33 + 14) = bswap32(a6) >> 16;
      v19 = v19;
    }

    *(a1 + 24) = v19;
  }

  *(a1 + 56) = _mdns_sdref;
  *(a1 + 40) = a7;
  *(a1 + 48) = _mdns_generation;
  *(a1 + 72) = a10;
  if (a2)
  {
    *a1 = a2;
    RecordWithAttribute = 0xFFFFFFFFLL;
    if (a7 <= 11)
    {
      if (a7 == 1)
      {
LABEL_17:
        v21 = *a2;
LABEL_20:
        *(a1 + 8) = v21;
        goto LABEL_21;
      }

      if (a7 != 5)
      {
        return RecordWithAttribute;
      }
    }

    else
    {
      if (a7 == 12)
      {
        v21 = *a2;
        if (!*a2)
        {
          v21 = a2[1];
          if (!v21)
          {
            return RecordWithAttribute;
          }
        }

        goto LABEL_20;
      }

      if (a7 != 33)
      {
        if (a7 != 28)
        {
          return RecordWithAttribute;
        }

        ++a2;
        goto LABEL_17;
      }
    }
  }

LABEL_21:
  v22 = strlen(__s);
  if (!v22 || v22 - (__s[v22 - 1] == 46) != 72)
  {
LABEL_26:
    v24 = 0;
LABEL_27:
    v23 = 0;
    goto LABEL_28;
  }

  v23 = 0;
  v24 = 0;
  v25 = __s[58] - 56;
  if (v25 <= 0x2A && ((1 << v25) & 0x60000000603) != 0)
  {
    if (!strncasecmp(__s + 59, ".e.f.ip6.arpa", 0xDuLL))
    {
      v28 = 0;
      while (1)
      {
        v29 = __s[v28];
        if (__s[v28] < 48 || v29 - 58 < 7)
        {
          break;
        }

        v31 = v29 <= 0x66 && v29 - 71 >= 0x1A;
        if (!v31 || __s[v28 + 1] != 46)
        {
          break;
        }

        v32 = v28 > 0x37;
        v28 += 2;
        if (v32)
        {
          v24 = hexval[__s[48]] + 16 * hexval[__s[50]] + (hexval[__s[52]] << 8) + (hexval[__s[54]] << 12);
          if (!v24)
          {
            goto LABEL_27;
          }

          v23 = strdup(__s);
          if (v23)
          {
            v23[48] = 48;
            v23[50] = 48;
            v23[52] = 48;
            v23[54] = 48;
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_28;
        }
      }
    }

    goto LABEL_26;
  }

LABEL_28:
  if (v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = __s;
  }

  if (a8)
  {
    if (v24 && v24 != a8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    a8 = v24;
  }

  _mdns_debug_message(";; mdns query %s type %d class %d ifindex %d [ctx %p]\n", v26, a7, a6, a8, a1);
  RecordWithAttribute = DNSServiceQueryRecordWithAttribute((a1 + 56), a9 | 0x15000, a8, v26, a7, a6, MEMORY[0x1E69E99A8], _mdns_query_callback, a1);
  if (v26 != __s)
  {
    free(v26);
  }

  *(a1 + 80) = in_flight;
  in_flight = a1;
  return RecordWithAttribute;
}

uint64_t _mdns_query_is_complete(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 64))
  {
    if (a2)
    {
      *a2 = 1;
    }

    v6 = *(a1 + 40);
    _mdns_debug_message(";; mdns is_complete type %d ctx %p more coming - incomplete\n");
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    _mdns_debug_message(";; mdns is_complete type %d ctx %p clear more coming - complete\n", *(a1 + 40), a1);
    v3 = *(a1 + 44);
    if (*(a1 + 40) == v3)
    {
      if (*(a1 + 44) > 0x1Bu)
      {
        if (v3 == 33)
        {
          if (*a1 && *(*a1 + 16))
          {
            _mdns_debug_message(";; mdns is_complete type %d ctx %p srv %p complete -> true\n");
            goto LABEL_27;
          }

          goto LABEL_28;
        }

        if (v3 != 28)
        {
          goto LABEL_23;
        }
      }

      else if (v3 != 1)
      {
        if (v3 == 12)
        {
          v4 = *(a1 + 8);
          if (v4 && *v4)
          {
            _mdns_debug_message(";; mdns is_complete type %d ctx %p host name %s complete -> true\n");
LABEL_27:
            v8 = " - ";
            v5 = 1;
LABEL_29:
            _mdns_debug_message(";; mdns is_complete type %d ctx %p %scomplete\n", *(a1 + 40), a1, v8);
            return v5;
          }

          goto LABEL_28;
        }

LABEL_23:
        _mdns_debug_message(";; mdns is_complete unexpected type %d ctx %p\n", *(a1 + 44), a1);
        goto LABEL_28;
      }

      v7 = *(a1 + 8);
      if (v7 && *(v7 + 36) >= 1)
      {
        _mdns_debug_message(";; mdns is_complete type %d ctx %p host addr count %d complete -> true\n");
        goto LABEL_27;
      }

LABEL_28:
      v5 = 0;
      v8 = " - in";
      goto LABEL_29;
    }

    v10 = *(a1 + 44);
    _mdns_debug_message(";; mdns is_complete ctx %p type mismatch (%d != %d) - incomplete\n");
  }

  return 0;
}

void _mdns_hostent_clear(uint64_t a1)
{
  if (a1)
  {
    free(*a1);
    *a1 = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = v2 + 1;
        do
        {
          free(v3);
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }

      v6 = *(a1 + 8);
    }

    else
    {
      v6 = 0;
    }

    free(v6);
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = v7 + 1;
        do
        {
          free(v8);
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v11 = *(a1 + 24);
    }

    else
    {
      v11 = 0;
    }

    free(v11);
    *(a1 + 24) = 0;
    *(a1 + 36) = 0;
  }
}

void _mdns_query_callback(uint64_t a1, int a2, unsigned int a3, int a4, char *a5, signed int a6, unsigned int a7, unsigned int a8, unsigned __int8 *a9, unsigned int a10, void *a11)
{
  v18 = "";
  if (a2)
  {
    v18 = " (kDNSServiceFlagsMoreComing is set)";
  }

  _mdns_debug_message(";; _mdns_query_callback ctx %p flags=0x%08x%s\n", a11, a2, v18);
  *(a11 + 16) = a2;
  *(a11 + 17) = a4;
  *(a11 + 22) = a6;
  if ((a2 & 1) == 0)
  {
    for (i = in_flight; i; i = *(i + 80))
    {
      if (*(i + 64))
      {
        _mdns_debug_message(";; cleared kDNSServiceFlagsMoreComing flag for ctx %p\n", i);
        *(i + 64) &= ~1u;
      }
    }
  }

  v56 = 0uLL;
  if (a4)
  {
    _mdns_debug_message(";; [%s type %hu class %hu]: error %d [ctx %p]\n");
    goto LABEL_10;
  }

  v22 = a9;
  v23 = (a9 + 2);
  v24 = (a9 + 4);
  v25 = (a9 + 6);
  __n = a8;
  if (a6 == 28 && a8 == 16 && *a9 == 254 && (a9[1] & 0xC0) == 0x80)
  {
    v23 = &v56 + 2;
    v24 = &v56 + 2;
    v25 = &v56 + 6;
    v56 = *a9;
    WORD1(v56) = bswap32(a3) >> 16;
    v22 = &v56;
  }

  v26 = *a11;
  if (!*a11)
  {
    goto LABEL_65;
  }

  v27 = v23;
  if (!*(v26 + 32))
  {
    *(v26 + 32) = a3;
  }

  _mdns_hostent_append_alias(a11[1], a5);
  if (*(v26 + 24) - 1 >= a10)
  {
    *(v26 + 24) = a10;
  }

  if (a6 <= 11)
  {
    if (a6 == 1)
    {
      goto LABEL_32;
    }

    if (a6 != 5)
    {
      goto LABEL_48;
    }

    v28 = _mdns_parse_domain_name(v22, __n);
    _mdns_hostent_append_alias(a11[1], v28);
    _mdns_debug_message(";; [%s type %hu class %hu] cname %s [ctx %p]\n", a5, 5, a7, v28, a11);
LABEL_40:
    free(v28);
    if (v28)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  if (a6 == 12)
  {
    v28 = _mdns_parse_domain_name(v22, __n);
    v30 = a11[1];
    if (v30 && !*v30)
    {
      v31 = _mdns_canonicalize(v28);
      v30 = a11[1];
      *v30 = v31;
    }

    _mdns_hostent_append_alias(v30, v28);
    goto LABEL_40;
  }

  if (a6 == 33)
  {
    v32 = malloc_type_calloc(1uLL, 0x18uLL, 0x103004089A9B416uLL);
    if (!v32)
    {
      goto LABEL_65;
    }

    v33 = v32;
    if (__n <= 5 || (*v32 = bswap32(*v22) >> 16, v32[1] = bswap32(*v27) >> 16, v32[2] = bswap32(*v24) >> 16, v34 = _mdns_parse_domain_name(v25, __n - 6), (v33[1] = v34) == 0))
    {
      free(v33);
      goto LABEL_60;
    }

    v35 = *(v26 + 16);
    if (v35)
    {
      do
      {
        v36 = v35;
        v35 = *(v35 + 16);
      }

      while (v35);
      *(v36 + 16) = v33;
    }

    else
    {
      *(v26 + 16) = v33;
    }

    goto LABEL_65;
  }

  if (a6 != 28)
  {
LABEL_48:
    if ((_mdns_debug & 1) == 0)
    {
      goto LABEL_65;
    }

LABEL_60:
    _mdns_debug_message(";; [%s type %hu class %hu]: malformed reply [ctx %p]\n");
    goto LABEL_10;
  }

LABEL_32:
  v29 = a11[1];
  if (!v29)
  {
    goto LABEL_60;
  }

  if (a6 == 1)
  {
    if (*(v29 + 16) != 2)
    {
      goto LABEL_60;
    }
  }

  else if (*(v29 + 16) != 30)
  {
    goto LABEL_60;
  }

  if (*(v29 + 20) > __n)
  {
    goto LABEL_60;
  }

  if (!*v29)
  {
    v37 = _mdns_canonicalize(a5);
    v38 = a11[1];
    *v38 = v37;
    v53 = *(v29 + 32);
    if (v53 >= 1 && (v39 = v37) != 0)
    {
      v51 = v38;
      v40 = 0;
      v52 = *(v29 + 8);
      v41 = 8 * v53;
      while (1)
      {
        v42 = *(v52 + 8 * v40);
        v43 = v39;
        if (!strcmp(v42, v39))
        {
          break;
        }

        ++v40;
        v41 -= 8;
        v39 = v43;
        if (v40 >= v53)
        {
          v29 = v51;
          goto LABEL_64;
        }
      }

      free(v42);
      memmove((*(v29 + 8) + 8 * v40), (*(v29 + 8) + 8 * v40 + 8), v41);
      --*(v29 + 32);
      v29 = a11[1];
    }

    else
    {
      v29 = v38;
    }
  }

LABEL_64:
  _mdns_hostent_append_addr(v29, v22, *(v29 + 20));
LABEL_65:
  v44 = a11[2];
  if (v44)
  {
    v45 = a11[3];
    v46 = a11[4] - v45;
    if (v46 <= 0xB)
    {
      _mdns_debug_message(";; [%s type %hu class %hu]: malformed reply (too small) [ctx %p]\n");
      goto LABEL_10;
    }

    v47 = v44 + v45;
    v48 = _mdns_pack_domain_name(a5, v44 + v45, a11[4] - v45);
    if ((v48 & 0x80000000) != 0)
    {
      _mdns_debug_message(";; [%s type %hu class %hu]: name mismatch [ctx %p]\n");
      goto LABEL_10;
    }

    if (v46 < __n + v48 + 10)
    {
      _mdns_debug_message(";; [%s type %hu class %hu]: insufficient buffer space for reply [ctx %p]\n");
      goto LABEL_10;
    }

    v49 = v47 + v48;
    *v49 = __rev16(a6);
    *(v49 + 2) = __rev16(a7);
    *(v49 + 4) = bswap32(a10);
    *(v49 + 8) = __rev16(__n);
    v50 = v49 + 10;
    memcpy((v49 + 10), v22, __n);
    *(a11[2] + 6) = bswap32((bswap32(*(a11[2] + 6)) >> 16) + 1) >> 16;
    a11[3] = v50 + __n - a11[2];
  }

  _mdns_debug_message(";; [%s type %hu class %hu] reply [ctx %p]\n");
LABEL_10:
  if (*(a11 + 18) != -1)
  {
    _mdns_debug_message(";; _mdns_query_callback sending kevent wakeup\n");
    changelist.ident = 1;
    *&changelist.filter = 0x10000000000FFF6;
    changelist.data = 0;
    changelist.udata = 0;
    if (kevent(*(a11 + 18), &changelist, 1, 0, 0, 0))
    {
      v20 = __error();
      v21 = strerror(*v20);
      _mdns_debug_message(";; kevent EV_TRIGGER: %s [ctx %p]\n", v21, a11);
    }
  }
}

uint64_t _mdns_pack_domain_name(char *__s, uint64_t a2, unint64_t a3)
{
  v3 = 0xFFFFFFFFLL;
  if (__s && a2 && a3)
  {
    v6 = __s;
    v7 = 0;
    LODWORD(v3) = 0;
    while (1)
    {
      v8 = v6;
      v9 = strchr(v6, 46);
      if (!v9)
      {
        v9 = &v8[strlen(v8)];
      }

      if ((v9 - v8) > 0x3F)
      {
        break;
      }

      *(a2 + v7) = v9 - v8;
      v3 = (v3 + 1);
      if (v8 >= v9 || v3 >= a3)
      {
        v12 = v8;
      }

      else
      {
        v10 = (a2 + v3);
        v11 = v3 + 1;
        v12 = v8;
        do
        {
          v13 = *v12++;
          *v10++ = v13;
          v3 = (v3 + 1);
          if (v12 >= v9)
          {
            break;
          }

          v15 = v11++ >= a3;
        }

        while (!v15);
      }

      v14 = *v12;
      v6 = (v12 + 1);
      v7 = v3;
      if (v14)
      {
        v15 = v3 >= a3;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        if (v3 < a3)
        {
          if (v9 == v8 || (v3 = (v3 + 1), *(a2 + v7) = 0, v7 = v3, v3 < a3))
          {
            *(a2 + v7) = 0;
            return v3;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v3;
}

void _mdns_hostent_append_alias(void *a1, char *a2)
{
  _mdns_debug_message(";; _mdns_hostent_append_alias(%p, %s)\n", a1, a2);
  if (a1)
  {
    if (a2)
    {
      v4 = _mdns_canonicalize(a2);
      if (v4)
      {
        v5 = v4;
        if (!*a1 || strcmp(*a1, v4))
        {
          v6 = *(a1 + 8);
          v7 = a1[1];
          if (v6 < 1)
          {
LABEL_10:
            v10 = reallocf(v7, 8 * v6 + 16);
            a1[1] = v10;
            if (v10)
            {
              v11 = *(a1 + 8);
              v10[v11++] = v5;
              *(a1 + 8) = v11;
              v10[v11] = 0;
              return;
            }

            *(a1 + 8) = 0;
          }

          else
          {
            v8 = *(a1 + 8);
            v9 = a1[1];
            while (strcmp(*v9, v5))
            {
              ++v9;
              if (!--v8)
              {
                goto LABEL_10;
              }
            }
          }
        }

        free(v5);
      }
    }
  }
}

char *_mdns_canonicalize(char *result)
{
  if (result)
  {
    result = strdup(result);
    if (result)
    {
      v1 = *result;
      if (*result)
      {
        v2 = result;
        do
        {
          if ((v1 - 65) <= 0x19)
          {
            *v2 = v1 | 0x20;
          }

          v3 = *++v2;
          v1 = v3;
        }

        while (v3);
        if (*(v2 - 1) == 46)
        {
          *(v2 - 1) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t _mdns_hostent_append_addr(uint64_t a1, const void *a2, unsigned int a3)
{
  _mdns_debug_message(";; _mdns_hostent_append_addr(%p, %p, %u)\n", a1, a2, a3);
  result = 0;
  if (a1 && a2 && a3)
  {
    v7 = a3;
    v8 = malloc_type_malloc(a3, 0xE1C5BF7BuLL);
    if (v8)
    {
      v9 = v8;
      memcpy(v8, a2, v7);
      v10 = reallocf(*(a1 + 24), 8 * *(a1 + 36) + 16);
      *(a1 + 24) = v10;
      if (v10)
      {
        v11 = v10;
        result = 0;
        v12 = *(a1 + 36);
        v11[v12++] = v9;
        *(a1 + 36) = v12;
        v11[v12] = 0;
        return result;
      }

      *(a1 + 36) = 0;
      free(v9);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void *_mdns_parse_domain_name(uint64_t a1, int a2)
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      result = 0;
      LODWORD(v5) = 0;
      v6 = 0;
      v7 = 0;
      v17 = a1;
      while (1)
      {
        v8 = *(a1 + v7);
        v5 = (v5 + v8 + 1);
        result = reallocf(result, v5);
        if (!result)
        {
          break;
        }

        if (v8)
        {
          v9 = v4 - 1;
          if (v6 >= 1)
          {
            if (v4 == 1)
            {
              v10 = 0;
            }

            else
            {
              v10 = 46;
            }

            *(result + v6++) = v10;
          }

          if (v4 != 1)
          {
            v11 = 0;
            v12 = a1 + v7 + 1;
            v13 = v4 - 2;
            do
            {
              v14 = *(v12 + v11);
              if (v14 == 46)
              {
                v5 = (v5 + 1);
                result = reallocf(result, v5);
                if (!result)
                {
                  return result;
                }

                *(result + v6++) = 92;
                LOBYTE(v14) = *(v12 + v11);
              }

              *(result + v6++) = v14;
              v15 = v11 + 1;
              if (v8 - 1 == v11)
              {
                break;
              }
            }

            while (v13 != v11++);
            v7 += 1 + v15;
            v4 = v9 - v15;
            a1 = v17;
            if (v9 != v15)
            {
              continue;
            }
          }
        }

        *(result + v6) = 0;
        return result;
      }
    }
  }

  return result;
}

uint64_t _is_v4addr_ifaddr(_DWORD *a1)
{
  v6 = 0;
  if (getifaddrs(&v6))
  {
    return 0;
  }

  if (v6)
  {
    v3 = v6;
    while (1)
    {
      if (v3->ifa_flags)
      {
        ifa_addr = v3->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 2 && *&ifa_addr->sa_data[2] == *a1)
          {
            break;
          }
        }
      }

      v3 = v3->ifa_next;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    v2 = 1;
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

  freeifaddrs(v6);
  return v2;
}

uint64_t _is_v6addr_ifaddr(void *a1, int a2)
{
  v11 = 0;
  if (getifaddrs(&v11))
  {
    return 0;
  }

  if (v11)
  {
    v5 = v11;
    while (1)
    {
      if (v5->ifa_flags)
      {
        ifa_addr = v5->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 30 && *&ifa_addr[1].sa_data[6] == a2)
          {
            v8 = *&ifa_addr->sa_data[6];
            v7 = *&ifa_addr[1].sa_len;
            if (v8 == *a1 && v7 == a1[1])
            {
              break;
            }
          }
        }
      }

      v5 = v5->ifa_next;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    v4 = 1;
  }

  else
  {
LABEL_14:
    v4 = 0;
  }

  freeifaddrs(v11);
  return v4;
}

uint64_t _mdns_atfork_child()
{
  _mdns_old_sdref = _mdns_sdref;
  _mdns_sdref = 0;
  return pthread_mutex_unlock(&_mdns_mutex);
}

void search_close(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      for (i = 0; i != 432; i += 24)
      {
        v3 = *&v1[i];
        if (v3)
        {
          free(v3);
          v4 = &v1[i];
          *v4 = 0;
          *(v4 + 2) = 0;
        }
      }

      free(v1);
    }
  }
}

void **search_netgroup_byname(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = 96;
  if (!*(v2 + 112))
  {
    v3 = 0;
  }

  if (*(v2 + v3 + 20))
  {
    v4 = *(v2 + 432);
    if (v4)
    {
      v5 = si_netgroup_byname(*(v2 + 432));
      if (v5)
      {
        return v5;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v11 = 0;
  v6 = 1;
  while (1)
  {
    module = search_get_module(v2, 4u, &v11);
    if (!module)
    {
      break;
    }

    if (module != *(v2 + 432))
    {
      v8 = si_netgroup_byname(module);
      if (v8)
      {
        v9 = v8;
        v5 = si_list_concat(v5, v8);
        si_list_release(v9);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  if (v5 != 0 && (v6 & 1) != 0)
  {
    si_cache_add_list(v4, a1, v5);
  }

  return v5;
}

uint64_t search_in_netgroup(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 32);
    if (v1)
    {
      v2 = 0;
      while (1)
      {
        result = search_get_module(v1, 4u, &v2);
        if (!result)
        {
          break;
        }

        if (si_in_netgroup(result))
        {
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t search_host_byname(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    *a5 = 0;
    if (!a1 || !a2 || (v6 = *(a1 + 32)) == 0)
    {
      v7 = 0;
      v8 = 3;
LABEL_6:
      *a5 = v8;
      return v7;
    }

LABEL_10:
    if (a3 == 30)
    {
      v9 = 7;
    }

    else
    {
      v9 = 6;
    }

    v16 = 0;
    while (1)
    {
      module = search_get_module(v6, v9, &v16);
      if (!module)
      {
        break;
      }

      v11 = module;
      v12 = si_host_byname(module);
      if (v12)
      {
        v7 = v12;
        if (*(v6 + 24 * v9 + 16))
        {
          v13 = v9;
        }

        else
        {
          v13 = 0;
        }

        if (*(v6 + 24 * v13 + 20))
        {
          v14 = *(v6 + 432);
        }

        else
        {
          v14 = 0;
        }

        si_cache_add_item(v14, v11, v7);
        return v7;
      }
    }

    if (!a5)
    {
      return 0;
    }

    v7 = 0;
    v8 = 1;
    goto LABEL_6;
  }

  v7 = 0;
  if (a1 && a2)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      return 0;
    }

    goto LABEL_10;
  }

  return v7;
}

uint64_t search_host_byaddr(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    *a5 = 0;
    if (!a1 || !a2 || (v6 = *(a1 + 32)) == 0)
    {
      v7 = 0;
      v8 = 3;
LABEL_6:
      *a5 = v8;
      return v7;
    }

LABEL_10:
    if (a3 == 30)
    {
      v9 = 7;
    }

    else
    {
      v9 = 6;
    }

    v16 = 0;
    while (1)
    {
      module = search_get_module(v6, v9, &v16);
      if (!module)
      {
        break;
      }

      v11 = module;
      v12 = si_host_byaddr(module);
      if (v12)
      {
        v7 = v12;
        if (*(v6 + 24 * v9 + 16))
        {
          v13 = v9;
        }

        else
        {
          v13 = 0;
        }

        if (*(v6 + 24 * v13 + 20))
        {
          v14 = *(v6 + 432);
        }

        else
        {
          v14 = 0;
        }

        si_cache_add_item(v14, v11, v7);
        return v7;
      }
    }

    if (!a5)
    {
      return 0;
    }

    v7 = 0;
    v8 = 1;
    goto LABEL_6;
  }

  v7 = 0;
  if (a1 && a2)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      return 0;
    }

    goto LABEL_10;
  }

  return v7;
}

uint64_t search_service_byname(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v10 = 0;
      while (1)
      {
        module = search_get_module(v3, 9u, &v10);
        if (!module)
        {
          break;
        }

        v5 = module;
        v6 = si_service_byname(module);
        if (v6)
        {
          v2 = v6;
          v7 = 0;
          v8 = 216;
          if (!*(v3 + 232))
          {
            v8 = 0;
          }

          if (*(v3 + v8 + 20))
          {
            v7 = *(v3 + 432);
          }

          si_cache_add_item(v7, v5, v2);
          return v2;
        }
      }
    }

    return 0;
  }

  return v2;
}

uint64_t search_rpc_bynumber(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      v9 = 0;
      while (1)
      {
        module = search_get_module(v1, 0xBu, &v9);
        if (!module)
        {
          break;
        }

        v3 = module;
        v4 = si_rpc_bynumber(module);
        if (v4)
        {
          v5 = v4;
          v6 = 0;
          v7 = 264;
          if (!*(v1 + 280))
          {
            v7 = 0;
          }

          if (*(v1 + v7 + 20))
          {
            v6 = *(v1 + 432);
          }

          si_cache_add_item(v6, v3, v5);
          return v5;
        }
      }
    }
  }

  return 0;
}

uint64_t search_addrinfo(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  if (a9)
  {
    *a9 = 104;
  }

  if (result)
  {
    v9 = *(result + 32);
    if (v9)
    {
      v12 = 0;
      while (1)
      {
        module = search_get_module(v9, 0xFu, &v12);
        if (!module)
        {
          break;
        }

        if (module != *(v9 + 432))
        {
          v11 = *(*(module + 40) + 288);
          if (v11)
          {
            result = v11(module);
            if (result)
            {
              return result;
            }
          }
        }
      }

      result = 0;
      if (a9 && v12 >= 1)
      {
        result = 0;
        *a9 = 108;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t search_wants_addrinfo(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 32);
    if (v1)
    {
      v3 = 0;
      result = search_get_module(v1, 0xFu, &v3);
      if (result)
      {
        v2 = *(v1 + 432);
        while (result == v2 || !*(*(result + 40) + 288))
        {
          result = search_get_module(v1, 0xFu, &v3);
          if (!result)
          {
            return result;
          }
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t search_nameinfo(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    *a5 = 104;
  }

  if (!a1)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    return 0;
  }

  v21 = 0;
  while (1)
  {
    module = search_get_module(v9, 0xEu, &v21);
    if (!module)
    {
      break;
    }

    v14 = module;
    v15 = si_nameinfo(module, a2, a3, a4, a5, v11, v12, v13);
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 336;
      if (!*(v9 + 352))
      {
        v18 = 0;
      }

      if (*(v9 + v18 + 20))
      {
        v17 = *(v9 + 432);
      }

      si_cache_add_item(v17, v14, v16);
      if (a5)
      {
        v19 = 0;
LABEL_18:
        *a5 = v19;
        return v16;
      }

      return v16;
    }
  }

  v16 = 0;
  if (a5 && v21 >= 1)
  {
    v19 = 108;
    goto LABEL_18;
  }

  return v16;
}

uint64_t search_srv_byname(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (result)
  {
    v4 = *(result + 32);
    if (v4)
    {
      v8 = 0;
      while (1)
      {
        module = search_get_module(v4, 0x11u, &v8);
        if (!module)
        {
          break;
        }

        if (module != *(v4 + 432))
        {
          v7 = *(*(module + 40) + 312);
          if (v7)
          {
            result = v7();
            if (result)
            {
              return result;
            }
          }
        }
      }

      result = 0;
      if (a4 && v8 >= 1)
      {
        result = 0;
        *a4 = 108;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t search_item_byuuid(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = 0;
  if (a1 && a4)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v10 = 0;
      do
      {
        result = search_get_module(v7, a3, &v10);
        if (!result)
        {
          break;
        }

        result = a4(result, a2);
      }

      while (!result);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void **search_list(uint64_t a1, unsigned int a2, uint64_t (*a3)(void))
{
  v3 = 0;
  if (!a1 || !a3)
  {
    return v3;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v6 + 24 * a2 + 16) ? a2 : 0;
  if ((*(v6 + 24 * v8 + 20) & 1) != 0 && *(v6 + 432))
  {
    v16 = *(v6 + 432);
    v3 = a3();
    if (v3)
    {
      return v3;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
  module = search_get_module(v6, a2, &v17);
  if (!module)
  {
    return 0;
  }

  v10 = module;
  v3 = 0;
  v11 = 1;
  while (2)
  {
    v15 = v11;
    while (1)
    {
      if (v10 == *(v6 + 432) || a2 - 1 <= 1 && _os_feature_enabled_simple_impl() && !strcmp(*v10, "file"))
      {
        goto LABEL_19;
      }

      v12 = (a3)(v10);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v3 = si_list_concat(v3, v12);
      si_list_release(v13);
LABEL_19:
      v10 = search_get_module(v6, a2, &v17);
      if (!v10)
      {
        if (v3 != 0 && (v15 & 1) != 0)
        {
          si_cache_add_list(v16, a1, v3);
        }

        return v3;
      }
    }

    v10 = search_get_module(v6, a2, &v17);
    v11 = 0;
    if (v10)
    {
      continue;
    }

    return v3;
  }
}

uint64_t si_list_next(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 >= *(result + 4))
    {
      return 0;
    }

    else
    {
      v2 = *(result + 16);
      *(result + 8) = v1 + 1;
      return *(v2 + 8 * v1);
    }
  }

  return result;
}

uint64_t si_list_reset(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

atomic_uint *si_list_retain(atomic_uint *result)
{
  if (result)
  {
    if ((atomic_fetch_add(result, 1u) & 0x80000000) != 0)
    {
      si_list_retain_cold_1();
    }
  }

  return result;
}

uint64_t si_inet_config(_DWORD *a1, _DWORD *a2)
{
  v12 = 0;
  pthread_mutex_lock(&net_config_mutex);
  check = 1;
  v4 = net_config_token;
  if ((net_config_token & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  if (notify_register_check("com.apple.system.config.network_change", &net_config_token))
  {
    net_config_token = -1;
    goto LABEL_9;
  }

  v4 = net_config_token;
  if ((net_config_token & 0x80000000) == 0)
  {
LABEL_29:
    if (notify_check(v4, &check))
    {
      check = 1;
    }

    else if (!check)
    {
      goto LABEL_20;
    }
  }

LABEL_9:
  if ((getifaddrs(&v12) & 0x80000000) == 0)
  {
    net_v4_count = 0;
    net_v6_count = 0;
    if (v12)
    {
      v5 = 0;
      v6 = 0;
      v7 = v12;
      do
      {
        ifa_addr = v7->ifa_addr;
        if (ifa_addr && (v7->ifa_flags & 1) != 0)
        {
          sa_family = ifa_addr->sa_family;
          if (sa_family == 30)
          {
            net_v6_count = ++v5;
          }

          else if (sa_family == 2)
          {
            net_v4_count = ++v6;
          }
        }

        v7 = v7->ifa_next;
      }

      while (v7);
    }

    freeifaddrs(v12);
LABEL_20:
    v10 = 0;
    if (!a1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v10 = 0xFFFFFFFFLL;
  if (a1)
  {
LABEL_21:
    *a1 = net_v4_count;
  }

LABEL_22:
  if (a2)
  {
    *a2 = net_v6_count;
  }

  pthread_mutex_unlock(&net_config_mutex);
  return v10;
}

const char *__cdecl gai_strerror(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return "Unknown error";
  }

  else
  {
    return off_1E7505F68[a1 - 1];
  }
}

void si_set_nat64_v4_requires_synthesis(uint64_t (*a1)(void))
{
  if (a1)
  {
    nat64_v4_requires_synthesis = a1;
  }

  else
  {
    pthread_once(&gai_log_once, gai_log_init);
    if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_FAULT))
    {
      si_set_nat64_v4_requires_synthesis_cold_1();
    }
  }
}

void si_set_nat64_v4_synthesize(uint64_t (*a1)(void, void, void))
{
  if (a1)
  {
    nat64_v4_synthesize = a1;
  }

  else
  {
    pthread_once(&gai_log_once, gai_log_init);
    if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_FAULT))
    {
      si_set_nat64_v4_synthesize_cold_1();
    }
  }
}

void si_set_path_check(uint64_t (*a1)(void, void))
{
  if (a1)
  {
    path_check = a1;
  }

  else
  {
    pthread_once(&gai_log_once, gai_log_init);
    if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_FAULT))
    {
      si_set_path_check_cold_1();
    }
  }
}

uint64_t _gai_serv_to_port(const char *a1, uint64_t a2, _WORD *a3)
{
  if (_gai_numericserv(a1, a3))
  {
    return 0;
  }

  v4 = si_search();
  v5 = si_service_byname(v4);
  if (v5)
  {
    if (a3)
    {
      *a3 = bswap32(*(v5 + 48)) >> 16;
    }

    si_item_release(v5);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

_BYTE *si_addrinfo_v4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  result = LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *si_addrinfo_v4_mapped(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  result = LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void **si_addrinfo_list_from_hostent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8 && (v14 = *(a8 + 24)) != 0 && *v14)
  {
    v16 = 0;
    v17 = 8;
    do
    {
      v29[0] = 0;
      v29[1] = 0;
      v18 = *v14;
      v19 = *(a8 + 20);
      __memcpy_chk();
      v21 = si_addrinfo_list(a1, a2, v20, a4, 0, v29, a5, a6, 0, *a8);
      v16 = si_list_concat(v16, v21);
      si_list_release(v21);
      v14 = (*(a8 + 24) + v17);
      v17 += 8;
    }

    while (*v14);
    if (!a7)
    {
      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (!a7)
    {
      return v16;
    }
  }

  v22 = *(a7 + 24);
  if (v22 && *v22)
  {
    v23 = 8;
    do
    {
      LODWORD(v29[0]) = 0;
      v24 = *(a7 + 20);
      __memcpy_chk();
      v26 = si_addrinfo_list(a1, a2, v25, a4, v29, 0, a5, 0, *a7, 0);
      v16 = si_list_concat(v16, v26);
      si_list_release(v26);
      v27 = *(*(a7 + 24) + v23);
      v23 += 8;
    }

    while (v27);
  }

  return v16;
}

unsigned int *_gai_simple(uint64_t a1, uint64_t a2, const char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v20 = 0;
  if ((a7 & 0x1000) != 0)
  {
    if (!a3)
    {
      if (a9)
      {
        result = 0;
        v14 = 3;
        goto LABEL_15;
      }

      return 0;
    }

    v20 = *a3;
  }

  else if (_gai_serv_to_port(a3, a6, &v20))
  {
    if (a9)
    {
      result = 0;
      v14 = 108;
LABEL_15:
      *a9 = v14;
      return result;
    }

    return 0;
  }

  if ((a7 & 4) != 0)
  {
    if (a4 == 30)
    {
      v16 = si_host_byaddr(a1);
      v15 = 0;
      goto LABEL_24;
    }

    if (a4 == 2)
    {
      v15 = si_host_byaddr(a1);
    }

    else
    {
      v15 = 0;
    }

LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  if ((a4 | 2) == 2)
  {
    v15 = si_host_byname(a1);
  }

  else
  {
    v15 = 0;
  }

  if (a4 != 30 && a4)
  {
    goto LABEL_23;
  }

  v16 = si_host_byname(a1);
LABEL_24:
  if (v15)
  {
    v17 = (v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = (v16 + 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = si_addrinfo_list_from_hostent(a1, a7, a3, a6, v20, 0, v17, v18);
  si_item_release(v15);
  si_item_release(v16);
  return _gai_sort_list(v19, a7);
}

uint64_t si_srv_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 312)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_wants_addrinfo(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 40), *(v1 + 288)) && (v2 = *(v1 + 296)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

BOOL _gai_nat64_can_v4_address_be_synthesized(unsigned int *a1)
{
  if (a1)
  {
    v1 = bswap32(*a1);
    if ((v1 & 0xFF000000) == 0 || (v1 & 0xFF000000) == 2130706432)
    {
      return 0;
    }

    v4 = v1 >> 8 == 12605539 || (v1 & 0xFFFF0000) == -1442971648;
    if (v4 || (v1 & 0xFFFFFFF8) == -1073741824)
    {
      return 0;
    }

    else
    {
      v6 = v1 >> 28;
      return *a1 != -1 && v6 != 14;
    }
  }

  else
  {
    pthread_once(&gai_log_once, gai_log_init);
    result = os_log_type_enabled(_gai_log, OS_LOG_TYPE_FAULT);
    if (result)
    {
      _gai_nat64_can_v4_address_be_synthesized_cold_1();
      return 0;
    }
  }

  return result;
}

void **_gai_nat64_second_pass(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_31:
    v9 = 0;
    goto LABEL_32;
  }

  v9 = 0;
  if ((a7 & 4) == 0)
  {
    v11 = *(a1 + 4);
    if (v11)
    {
      if (a4 == 30 || !a4)
      {
        v14 = *(a1 + 16);
        do
        {
          v15 = *v14;
          if (*(*v14 + 36) == 30 && (v15[15] || v15[16] || v15[17] != -65536))
          {
            goto LABEL_31;
          }

          v14 += 8;
          --v11;
        }

        while (v11);
        v16 = 0;
        v9 = 0;
        while (1)
        {
          v17 = *(*(a1 + 16) + 8 * v16);
          v18 = *(v17 + 36);
          if (v18 == 2)
          {
            v19 = 24;
          }

          else
          {
            if (v18 != 30)
            {
              goto LABEL_26;
            }

            v19 = 40;
          }

          pthread_once(&_gai_load_libnetwork_load_once, _gai_load_libnetwork_once);
          if (nat64_v4_requires_synthesis)
          {
            v20 = v17 + 32;
            v21 = nat64_v4_requires_synthesis(v20 + v19);
            pthread_once(&gai_log_once, gai_log_init);
            v22 = _gai_log;
            if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_DEBUG))
            {
              v25 = *(v20 + v19);
              *buf = 67109376;
              *&buf[4] = v25;
              LOWORD(v33) = 1024;
              *(&v33 + 2) = v21;
              _os_log_debug_impl(&dword_19A0B0000, v22, OS_LOG_TYPE_DEBUG, "nat64_v4_requires_synthesis(%{network:in_addr}d) == %{BOOL}d", buf, 0xEu);
              if ((v21 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            else if (!v21)
            {
              goto LABEL_26;
            }

            *buf = 0;
            v33 = 0;
            if (!inet_ntop(2, (v20 + v19), buf, 0x10u))
            {
              goto LABEL_26;
            }

            v31 = 0;
            v23 = si_addrinfo(a2, buf, a3, 30, a5, a6, a7 & 0xFFFFF5FB, a8, &v31);
            if (!v23)
            {
              goto LABEL_26;
            }

            v24 = v23;
            if (!v31)
            {
              if (!v9)
              {
                v9 = v23;
                goto LABEL_26;
              }

              v9 = si_list_concat(v9, v23);
            }

            si_list_release(v24);
          }

LABEL_26:
          if (++v16 >= *(a1 + 4))
          {
            goto LABEL_32;
          }
        }
      }

      goto LABEL_31;
    }
  }

LABEL_32:
  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t si_ipnode_byname(uint64_t a1, char *a2, int a3, __int16 a4, uint64_t a5, int *a6)
{
  v9 = a2;
  v67 = *MEMORY[0x1E69E9840];
  v61.s_addr = 0;
  v60 = 0uLL;
  if (a6)
  {
    *a6 = 0;
  }

  v62 = 0;
  if (a3 != 2)
  {
    if (a3 != 30)
    {
      goto LABEL_74;
    }

    if (inet_pton(30, a2, &v60) == 1)
    {
      v24 = *(&v60 + 1);
      v23 = v60;
      v25 = a1;
      v26 = v9;
    }

    else
    {
      if (inet_aton(v9, &v61) != 1)
      {
        goto LABEL_18;
      }

      if ((a4 & 0xA00) == 0)
      {
        goto LABEL_49;
      }

      *&v60 = 0;
      DWORD2(v60) = -65536;
      HIDWORD(v60) = v61;
      v24 = *(&v60 + 1);
      v25 = a1;
      v26 = v9;
      v23 = 0;
    }

    hostent6 = make_hostent6(v25, v26, v23, v24, v19, v20, v21, v22);
    goto LABEL_14;
  }

  if (inet_aton(a2, &v61) == 1)
  {
    s_addr = v61.s_addr;
    if (!v9)
    {
LABEL_15:
      if (!a6 || v9)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    p_s_addr = &s_addr;
    v66 = 0;
    v64 = 0;
    hostent6 = LI_ils_create("L4488s*44a", v11, v12, v13, v14, v15, v16, v17, a1);
LABEL_14:
    v9 = hostent6;
    goto LABEL_15;
  }

LABEL_18:
  v27 = 0;
  v28 = 0;
  v62 = 0;
  if ((a4 & 0x400) != 0)
  {
    if ((si_inet_config(&v62 + 1, &v62) & 0x80000000) != 0)
    {
      goto LABEL_74;
    }

    v28 = v62;
    v27 = HIDWORD(v62);
    if (!v62)
    {
      goto LABEL_74;
    }
  }

  if (a3 == 2)
  {
    v29 = 0;
    LOBYTE(v30) = 0;
    if ((a4 & 0x400) != 0 && !v27)
    {
      goto LABEL_74;
    }
  }

  else
  {
    if ((a4 & 0xA00) == 0)
    {
      LOBYTE(v30) = 0;
      v31 = 1;
      v29 = 0;
      if ((a4 & 0x400) != 0 && !v28)
      {
        goto LABEL_74;
      }

      goto LABEL_32;
    }

    v29 = (a4 & 0x100) == 0;
    v30 = (a4 & 0x100) >> 8;
  }

  v31 = 0;
  if (!v29 && (v30 & 1) == 0)
  {
    v32 = 0;
    v29 = 0;
    v33 = 0;
    goto LABEL_33;
  }

LABEL_32:
  v33 = v31;
  v32 = si_host_byname(a1);
  LOBYTE(v31) = v30;
LABEL_33:
  if (v32)
  {
    v34 = 0;
  }

  else
  {
    v34 = v29;
  }

  if (a3 != 2 && (v31 & 1) == 0 && !v34)
  {
    v9 = 0;
LABEL_44:
    if (v33)
    {
      si_item_release(v9);
      if (!a6)
      {
        v9 = v32;
        goto LABEL_79;
      }

      v9 = v32;
      if (v32)
      {
        goto LABEL_79;
      }

      goto LABEL_51;
    }

    if (!(v32 | v9))
    {
LABEL_49:
      if (a6)
      {
        v9 = 0;
LABEL_51:
        v35 = 1;
LABEL_77:
        *a6 = v35;
        goto LABEL_79;
      }

LABEL_78:
      v9 = 0;
      goto LABEL_79;
    }

    v36 = malloc_type_calloc(1uLL, 0x30uLL, 0x10900400D5AB4AFuLL);
    if (v36)
    {
      v37 = v36;
      if (v9)
      {
        *v36 = lower_case(*(v9 + 32));
        v38 = *(v9 + 40);
        if (v38)
        {
          v39 = *v38;
          if (*v38)
          {
            v40 = 8;
            do
            {
              merge_alias(v39, v37);
              v39 = *(*(v9 + 40) + v40);
              v40 += 8;
            }

            while (v39);
          }
        }

        v41 = *(v9 + 56);
        if (*v41)
        {
          v42 = 8;
          do
          {
            *&v60 = 0;
            DWORD2(v60) = -65536;
            HIDWORD(v60) = **v41;
            append_addr(&v60, v37);
            v41 = (*(v9 + 56) + v42);
            v42 += 8;
          }

          while (*v41);
        }
      }

      if (v32)
      {
        if (!*v37)
        {
          *v37 = lower_case(*(v32 + 32));
        }

        v43 = *(v32 + 40);
        if (v43)
        {
          v44 = *v43;
          if (*v43)
          {
            v45 = 8;
            do
            {
              merge_alias(v44, v37);
              v44 = *(*(v32 + 40) + v45);
              v45 += 8;
            }

            while (v44);
          }
        }

        v46 = **(v32 + 56);
        if (v46)
        {
          v47 = 8;
          do
          {
            append_addr(v46, v37);
            v46 = *(*(v32 + 56) + v47);
            v47 += 8;
          }

          while (v46);
        }
      }

      si_item_release(v9);
      si_item_release(v32);
      v59 = *(v37 + 24);
      v58 = *(v37 + 8);
      v57 = *v37;
      v9 = LI_ils_create("L4488s*44c", v48, v49, v50, v51, v52, v53, v54, a1);
      free_build_hostent(v37);
      goto LABEL_79;
    }

    si_item_release(v9);
    si_item_release(v32);
LABEL_74:
    if (a6)
    {
      v9 = 0;
LABEL_76:
      v35 = 3;
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v9 = si_host_byname(a1);
  if (a3 != 2)
  {
    goto LABEL_44;
  }

  si_item_release(v32);
  if (a6 && !v9)
  {
    goto LABEL_51;
  }

LABEL_79:
  v55 = *MEMORY[0x1E69E9840];
  return v9;
}

_BYTE *make_hostent6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v10[3] = v10;
    v10[4] = 0;
    v10[2] = 0;
    result = LI_ils_create("L4488s*44c", a2, a3, a4, a5, a6, a7, a8, a1);
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

const char *lower_case(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    result = malloc_type_malloc(v2 + 1, 0x35DAE091uLL);
    if (result)
    {
      v3 = *v1;
      if (*v1)
      {
        v4 = 0;
        do
        {
          if ((v3 - 65) < 0x1A)
          {
            LOBYTE(v3) = v3 | 0x20;
          }

          result[v4] = v3;
          v5 = v4 + 1;
          v3 = v1[++v4];
        }

        while (v3);
      }

      else
      {
        v5 = 0;
      }

      result[v5] = 0;
    }
  }

  return result;
}

const char *merge_alias(const char *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    result = strcmp(result, v3);
    if (result)
    {
      v5 = *(a2 + 32);
      if (v5 < 1)
      {
LABEL_7:
        if (v5)
        {
          result = reallocf(*(a2 + 8), 8 * v5 + 16);
        }

        else
        {
          result = malloc_type_calloc(2uLL, 8uLL, 0x10040436913F5uLL);
        }

        *(a2 + 8) = result;
        if (result)
        {
          result = lower_case(v4);
          v8 = *(a2 + 32);
          *(*(a2 + 8) + 8 * v8) = result;
          *(a2 + 32) = v8 + 1;
          *(*(a2 + 8) + 8 * (v8 + 1)) = 0;
        }

        else
        {
          *(a2 + 32) = 0;
        }
      }

      else
      {
        v6 = *(a2 + 8);
        v7 = *(a2 + 32);
        while (1)
        {
          result = strcmp(v4, *v6);
          if (!result)
          {
            break;
          }

          ++v6;
          if (!--v7)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

_OWORD *append_addr(_OWORD *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(a2 + 36);
    if (v4)
    {
      result = reallocf(*(a2 + 24), 8 * v4 + 16);
    }

    else
    {
      result = malloc_type_calloc(2uLL, 8uLL, 0x10040436913F5uLL);
    }

    *(a2 + 24) = result;
    if (result)
    {
      result = malloc_type_malloc(0x10uLL, 0xFFABD123uLL);
      v5 = *(a2 + 36);
      *(*(a2 + 24) + 8 * v5) = result;
      v6 = *(*(a2 + 24) + 8 * v5);
      if (v6)
      {
        *v6 = *v3;
        v7 = *(a2 + 36) + 1;
        *(a2 + 36) = v7;
        *(*(a2 + 24) + 8 * v7) = 0;
      }
    }

    else
    {
      *(a2 + 36) = 0;
    }
  }

  return result;
}

void free_build_hostent(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  v3 = a1[1];
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = v3 + 1;
      do
      {
        free(v4);
        v6 = *v5++;
        v4 = v6;
      }

      while (v6);
      v3 = a1[1];
    }

    free(v3);
  }

  a1[1] = 0;
  v7 = a1[3];
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      v9 = 1;
      do
      {
        free(v8);
        v7 = a1[3];
        v8 = v7[v9++];
      }

      while (v8);
    }

    free(v7);
  }

  free(a1);
}

uint64_t gai_log_init()
{
  _gai_log = os_log_create("com.apple.network.libinfo", "getaddrinfo");

  return pthread_atfork(0, 0, gai_child_has_forked);
}

void _gai_load_libnetwork_once()
{
  if (nat64_v4_requires_synthesis)
  {
    v0 = 0;
  }

  else
  {
    v0 = nat64_v4_synthesize == 0;
  }

  if (v0 && path_check == 0)
  {
    pthread_once(&gai_log_once, gai_log_init);
    if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_DEBUG))
    {
      _gai_load_libnetwork_once_cold_1();
    }

    _gai_load_libnetwork_once_handle = dlopen("/usr/lib/libnetwork.dylib", 5);
    if (_gai_load_libnetwork_once_handle)
    {
      if (!nat64_v4_requires_synthesis)
      {
        pthread_once(&gai_log_once, gai_log_init);
        if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_ERROR))
        {
          _gai_load_libnetwork_once_cold_2();
        }
      }

      if (!nat64_v4_synthesize)
      {
        pthread_once(&gai_log_once, gai_log_init);
        if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_ERROR))
        {
          _gai_load_libnetwork_once_cold_3();
        }
      }

      if (!path_check)
      {
        pthread_once(&gai_log_once, gai_log_init);
        if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_ERROR))
        {
          _gai_load_libnetwork_once_cold_4();
        }
      }
    }

    else
    {
      v2 = dlerror();
      pthread_once(&gai_log_once, gai_log_init);
      v3 = _gai_log;
      if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_ERROR))
      {
        _gai_load_libnetwork_once_cold_5(v2, v3);
      }
    }
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void *si_module_with_path(const char *a1, const char *a2)
{
  v2 = 22;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v4 = dlopen(a1, 4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = si_mod_dlsym(v4, a2, "init");
  if (!v6 || (v7 = v6, !si_mod_dlsym(v5, a2, "close")))
  {
    dlclose(v5);
    goto LABEL_11;
  }

  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10F00401C06F9BCuLL);
  v9 = strdup(a2);
  v10 = v9;
  if (!v8 || !v9)
  {
    free(v8);
    free(v10);
    dlclose(v5);
    v2 = 12;
    goto LABEL_14;
  }

  *v8 = v9;
  *(v8 + 12) = 1;
  v8[3] = v5;
  if (v7(v8))
  {
    dlclose(v5);
    free(v8);
    free(v10);
LABEL_11:
    v2 = 61;
LABEL_14:
    v8 = 0;
    *__error() = v2;
  }

  return v8;
}

void *si_mod_dlsym(void *a1, const char *a2, const char *a3)
{
  if (!a3)
  {
    return 0;
  }

  __symbol = 0;
  asprintf(&__symbol, "%s_%s", a2, a3);
  if (!__symbol)
  {
    return 0;
  }

  v4 = dlsym(a1, __symbol);
  free(__symbol);
  return v4;
}

uint64_t si_module_retain(uint64_t result)
{
  if (result)
  {
    if ((*(result + 16) & 1) == 0)
    {
      atomic_fetch_add((result + 12), 1u);
    }
  }

  return result;
}

void si_module_release(uint64_t a1)
{
  if (!a1 || (*(a1 + 16) & 1) != 0 || atomic_fetch_add((a1 + 12), 0xFFFFFFFF) > 1)
  {
    return;
  }

  pthread_mutex_lock(&module_mutex);
  if (!module_count)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = module_list;
  v4 = (module_list + 8);
  while (*(v4 - 1) != a1)
  {
    ++v2;
    ++v4;
    if (module_count == v2)
    {
      goto LABEL_12;
    }
  }

  if (module_count == 1)
  {
    free(module_list);
    module_list = 0;
    module_count = 0;
LABEL_12:

    pthread_mutex_unlock(&module_mutex);
    return;
  }

  v5 = (module_count - 1);
  if (v2 + 1 < module_count)
  {
    v6 = (module_count - 1) - v2;
    do
    {
      *(v4 - 1) = *v4;
      ++v4;
      --v6;
    }

    while (v6);
  }

  module_count = v5;
  module_list = reallocf(v3, 8 * v5);
  if (!module_list)
  {
    module_count = 0;
  }

  pthread_mutex_unlock(&module_mutex);
  v7 = **(a1 + 40);
  if (v7)
  {
    v7(a1);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    dlclose(v8);
  }

  free(*a1);

  free(a1);
}

uint64_t si_module_name(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t si_module_vers(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t si_user_byuuid(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 32)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_user_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 40)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_group_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 48)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_group_byuuid(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 64)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_group_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 72)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_netgroup_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 88)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_in_netgroup(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 96)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_alias_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 104)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_alias_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 112)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_host_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 120)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_host_byaddr(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 128)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_host_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 136)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_mac_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 264)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_mac_bymac(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 272)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_mac_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 280)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_network_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 144)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_network_byaddr(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 152)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_network_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 160)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_service_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 168)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_service_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 184)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_protocol_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 192)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_protocol_bynumber(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 200)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_protocol_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 208)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_rpc_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 216)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_rpc_bynumber(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 224)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_rpc_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 232)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_fs_byspec(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 240)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_fs_byfile(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 248)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t si_fs_all(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 256)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

_BYTE *si_item_call(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  if (!a1)
  {
    return 0;
  }

  switch(a2)
  {
    case 0:
      v8 = *(*(a1 + 40) + 16);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    case 1:
      v11 = *(*(a1 + 40) + 24);
      if (!v11)
      {
        return 0;
      }

      return v11();
    case 3:
      v8 = *(*(a1 + 40) + 48);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    case 4:
      v11 = *(*(a1 + 40) + 56);
      if (!v11)
      {
        return 0;
      }

      return v11();
    case 8:
      v8 = *(*(a1 + 40) + 80);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    case 9:
      v8 = *(*(a1 + 40) + 104);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    case 11:
      v13 = *(*(a1 + 40) + 120);
      if (!v13)
      {
        return 0;
      }

      return v13();
    case 12:
      v13 = *(*(a1 + 40) + 128);
      if (!v13)
      {
        return 0;
      }

      return v13();
    case 14:
    case 23:
      v8 = *(*(a1 + 40) + 144);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    case 15:
      v11 = *(*(a1 + 40) + 152);
      if (!v11)
      {
        return 0;
      }

      return v11();
    case 17:
      v12 = *(*(a1 + 40) + 168);
      if (!v12)
      {
        return 0;
      }

      return v12();
    case 18:
      v12 = *(*(a1 + 40) + 176);
      if (!v12)
      {
        return 0;
      }

      return v12();
    case 20:
      v8 = *(*(a1 + 40) + 192);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    case 21:
      v11 = *(*(a1 + 40) + 200);
      if (!v11)
      {
        return 0;
      }

      return v11();
    case 24:
      v11 = *(*(a1 + 40) + 224);
      if (!v11)
      {
        return 0;
      }

      return v11();
    case 26:
      v8 = *(*(a1 + 40) + 240);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    case 27:
      v8 = *(*(a1 + 40) + 248);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    case 30:
      return si_nameinfo(a1, a3, a6, a5, a8, a6, a7, a8);
    case 31:
      return si_ipnode_byname(a1, a3, a6, a7, a5, a8);
    case 32:
      v8 = *(*(a1 + 40) + 264);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    case 33:
      v8 = *(*(a1 + 40) + 272);
      if (!v8)
      {
        return 0;
      }

LABEL_38:
      result = v8();
      break;
    case 35:
    case 36:
      v9 = *(*(a1 + 40) + 320);
      if (!v9)
      {
        return 0;
      }

      result = v9();
      break;
    default:
      return 0;
  }

  return result;
}

unsigned int *si_list_call(uint64_t a1, int a2, _BYTE *a3, _BYTE *a4, char *a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int *a10)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 <= 18)
  {
    if (a2 <= 9)
    {
      if (a2 != 2)
      {
        if (a2 == 5)
        {
          v10 = *(*(a1 + 40) + 72);
          if (v10)
          {
            return v10();
          }
        }

        return 0;
      }

      v10 = *(*(a1 + 40) + 40);
      if (!v10)
      {
        return 0;
      }
    }

    else if (a2 == 10)
    {
      v10 = *(*(a1 + 40) + 112);
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      if (a2 != 13)
      {
        if (a2 == 16)
        {
          v10 = *(*(a1 + 40) + 160);
          if (v10)
          {
            return v10();
          }
        }

        return 0;
      }

      v10 = *(*(a1 + 40) + 136);
      if (!v10)
      {
        return 0;
      }
    }

    return v10();
  }

  if (a2 > 27)
  {
    if (a2 != 28)
    {
      if (a2 == 29)
      {
        return si_addrinfo(a1, a3, a4, a6, a7, a8, a9, a5, a10);
      }

      if (a2 == 34)
      {
        v10 = *(*(a1 + 40) + 280);
        if (v10)
        {
          return v10();
        }
      }

      return 0;
    }

    v10 = *(*(a1 + 40) + 256);
    if (!v10)
    {
      return 0;
    }

    return v10();
  }

  switch(a2)
  {
    case 19:
      v10 = *(*(a1 + 40) + 184);
      if (!v10)
      {
        return 0;
      }

      return v10();
    case 22:
      v10 = *(*(a1 + 40) + 208);
      if (!v10)
      {
        return 0;
      }

      return v10();
    case 25:
      v10 = *(*(a1 + 40) + 232);
      if (v10)
      {
        return v10();
      }

      break;
  }

  return 0;
}

uint64_t si_async_call(uint64_t a1, unsigned int a2, char *__s1, char *a4, const char *a5, int a6, int a7, size_t size, int a9, uint64_t a10, uint64_t a11)
{
  result = 0;
  if (!a1 || !a10)
  {
    return result;
  }

  v13 = size;
  v20 = *(*(a1 + 40) + 336);
  if (v20)
  {

    return v20(a1);
  }

  if (a2 != 30 && a2 != 12)
  {
    if (__s1)
    {
      v22 = strdup(__s1);
      if (!v22)
      {
        return 0;
      }

      goto LABEL_16;
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  if (!size)
  {
    goto LABEL_15;
  }

  v21 = malloc_type_calloc(1uLL, size, 0x7EF89F48uLL);
  if (!v21)
  {
    return 0;
  }

  v22 = v21;
  memcpy(v21, __s1, v13);
LABEL_16:
  if (a4)
  {
    a4 = strdup(a4);
    if (!a4)
    {
      if (v22)
      {
        v24 = v22;
LABEL_45:
        free(v24);
      }

      return 0;
    }
  }

  if (a5)
  {
    v23 = strdup(a5);
    if (!v23)
    {
      if (v22)
      {
        free(v22);
      }

      if (!a4)
      {
        return 0;
      }

      v24 = a4;
      goto LABEL_45;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B004069716B4FuLL);
  if (!v25)
  {
    if (v22)
    {
      free(v22);
    }

    if (a4)
    {
      free(a4);
    }

    if (!v23)
    {
      return 0;
    }

    v24 = v23;
    goto LABEL_45;
  }

  v26 = v25;
  *name = 0;
  v32 = 0;
  if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name[1]) || MEMORY[0x19A8FC6A0](*MEMORY[0x1E69E9A60], name[1], 21, name, &v32))
  {
    if (name[1])
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], name[1], 1u, -1);
    }

    if (v22)
    {
      free(v22);
    }

    if (a4)
    {
      free(a4);
    }

    if (v23)
    {
      free(v23);
    }

    v24 = v26;
    goto LABEL_45;
  }

  v27 = 0;
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = v22;
  *(v26 + 24) = a4;
  *(v26 + 32) = v23;
  *(v26 + 40) = a6;
  *(v26 + 44) = a7;
  *(v26 + 48) = v13;
  *(v26 + 52) = a9;
  *(v26 + 64) = 2;
  if (a2 > 0x22)
  {
    v28 = a11;
  }

  else
  {
    v28 = a11;
    if (((1 << a2) & 0x432492464) != 0)
    {
      v27 = 2;
    }
  }

  *(v26 + 60) = v27;
  *(v26 + 72) = a10;
  *(v26 + 80) = v28;
  v29 = name[0];
  *(v26 + 88) = name[1];
  *(v26 + 92) = v29;
  pthread_mutex_lock(&module_mutex);
  *(v26 + 112) = si_async_worklist;
  si_async_worklist = v26;
  pthread_mutex_unlock(&module_mutex);
  global_queue = dispatch_get_global_queue(0, 2uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __si_async_call_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = v26;
  dispatch_async(global_queue, block);
  return *(v26 + 88);
}

void __si_async_call_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 60);
  if (v2)
  {
    goto LABEL_9;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 44);
  if ((v2 & 2) != 0)
  {
    v10 = si_list_call(v3, v4, v5, v6, v7, v8, v9, *(v1 + 48), *(v1 + 52), (v1 + 56));
    v11 = 104;
  }

  else
  {
    v10 = si_item_call(v3, v4, v5, v6, v7, v8, v9, (v1 + 56));
    v11 = 96;
  }

  *(v1 + v11) = v10;
  memset(&msg, 0, sizeof(msg));
  if (atomic_fetch_or((v1 + 60), 1u))
  {
LABEL_9:

    si_async_workunit_release(v1);
  }

  else
  {
    v12 = *(v1 + 92);
    *(v1 + 92) = 0;
    msg.msgh_local_port = 0;
    msg.msgh_voucher_port = 0;
    msg.msgh_remote_port = v12;
    *&msg.msgh_bits = 0x1800000012;
    msg.msgh_id = *(v1 + 8);
    if ((mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0) - 268435459) <= 1)
    {
      mach_msg_destroy(&msg);
    }

    si_async_workunit_release(v1);
  }
}

void si_async_cancel(int a1)
{
  unit = si_async_worklist_find_unit(a1);
  if (unit)
  {
    v2 = unit;
    atomic_fetch_or((unit + 60), 1u);
    v3 = *(unit + 72);
    if (v3)
    {
      v3(0, 15, *(unit + 80));
    }

    si_async_workunit_release(v2);
  }
}

uint64_t si_async_worklist_find_unit(int a1)
{
  pthread_mutex_lock(&module_mutex);
  for (i = si_async_worklist; i; i = *(i + 112))
  {
    if (*(i + 88) == a1)
    {
      break;
    }
  }

  pthread_mutex_unlock(&module_mutex);
  return i;
}

void si_async_workunit_release(uint64_t a1)
{
  if (a1 && atomic_fetch_add((a1 + 64), 0xFFFFFFFF) == 1)
  {
    pthread_mutex_lock(&module_mutex);
    v2 = &si_async_worklist;
    v3 = si_async_worklist;
    if (si_async_worklist == a1)
    {
LABEL_7:
      *v2 = *(a1 + 112);
    }

    else
    {
      while (v3)
      {
        v4 = v3;
        v3 = *(v3 + 112);
        if (v3 == a1)
        {
          v2 = (v4 + 112);
          goto LABEL_7;
        }
      }
    }

    pthread_mutex_unlock(&module_mutex);
    v5 = *(a1 + 96);
    if (v5)
    {
      si_item_release(v5);
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      si_list_release(v6);
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      free(v7);
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      free(v8);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 92);
    v11 = MEMORY[0x1E69E9A60];
    if (v10)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v10);
    }

    mach_port_mod_refs(*v11, *(a1 + 88), 1u, -1);

    free(a1);
  }
}

void si_async_handle_reply(uint64_t a1)
{
  unit = si_async_worklist_find_unit(*(a1 + 12));
  if (unit)
  {
    v2 = unit;
    if (*(unit + 60))
    {
      v3 = *(unit + 72);
      if (v3)
      {
        v4 = 104;
        if ((*(unit + 60) & 2) == 0)
        {
          v4 = 96;
        }

        v3(*(unit + v4), *(unit + 56), *(unit + 80));
        *(v2 + 96) = 0;
        *(v2 + 104) = 0;
      }

      si_async_workunit_release(v2);
    }
  }
}

char *si_standardize_mac_address(char *result)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    pthread_mutex_lock(&module_mutex);
    v2 = ether_aton(v1);
    if (v2)
    {
      v3 = v2;
      for (i = 0; i != 18; i += 3)
      {
        v5 = v3->octet[0];
        v3 = (v3 + 1);
        if (v5 >= 0x10uLL)
        {
          sprintf(&v8[i], "%x");
        }

        else
        {
          sprintf(&v8[i], "0%x");
        }
      }

      pthread_mutex_unlock(&module_mutex);
      v7 = 0;
      asprintf(&v7, "%s:%s:%s:%s:%s:%s", v8, v9, v10, v11, v12, v13);
      result = v7;
    }

    else
    {
      pthread_mutex_unlock(&module_mutex);
      result = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *LI_get_thread_item(int a1)
{
  result = LI_get_thread_info(a1);
  if (result)
  {
    return *result;
  }

  return result;
}

unsigned int *LI_get_thread_list(int a1)
{
  result = LI_get_thread_info(a1);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t LI_set_thread_list(int a1, uint64_t a2)
{
  result = LI_get_thread_info(a1);
  if (result)
  {
    v4 = result;
    si_list_release(*(result + 8));
    result = si_list_reset(a2);
    *(v4 + 8) = a2;
  }

  return result;
}

uint64_t parse_compatibility_uuid(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a1 != 0xCCCCDDDDEEEEFFFFLL || *(a1 + 8) != -1431651397)
  {
    if (*a1 != 0xCDABEFCDABEFCDABLL || *(a1 + 8) != -271733777)
    {
      return 0;
    }

    *a2 = bswap32(*(a1 + 12));
    if (!a3)
    {
      return 1;
    }

    LODWORD(result) = 2;
LABEL_14:
    *a3 = result;
    return 1;
  }

  *a2 = bswap32(*(a1 + 12));
  result = 1;
  if (a3)
  {
    goto LABEL_14;
  }

  return result;
}

BOOL compatibility_name_for_id(gid_t a1, int a2, char **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (sysconf(71) == 0xFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v10 = MEMORY[0x1EEE9AC00]();
    memset(&v17, 0, 32);
    v16 = 0;
    v8 = getgrgid_r(a1, &v17, &v15 - ((v11 + 15) & 0x1FFFFFFF0), v10, &v16);
    goto LABEL_7;
  }

  if (a2 != 1)
  {
LABEL_5:
    result = 0;
    goto LABEL_13;
  }

  v6 = MEMORY[0x1EEE9AC00]();
  memset(&v17, 0, sizeof(v17));
  v16 = 0;
  v8 = getpwuid_r(a1, &v17, &v15 - ((v7 + 15) & 0x1FFFFFFF0), v6, &v16);
LABEL_7:
  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = v16 == 0;
  }

  if (v12)
  {
    result = 0;
  }

  else
  {
    v13 = strdup(v17.pw_name);
    *a3 = v13;
    result = v13 != 0;
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

int mbr_uuid_to_id(const uuid_t uu, id_t *uid_or_gid, int *id_type)
{
  v11 = 0;
  v10 = 0;
  v5 = mbr_identifier_translate(6, uu, 16, 30, &v11, &v10);
  if (!v5)
  {
    if (v10 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    if (v10 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    *id_type = v7;
    v8 = v11;
    *uid_or_gid = *v11;
    free(v8);
  }

  return v5;
}

uint64_t mbr_check_membership_ext(int a1, unsigned __int8 *a2, uint64_t a3, int a4, const unsigned __int8 *a5, uint64_t a6, _DWORD *a7)
{
  if (!_os_feature_enabled_simple_impl())
  {
    return 5;
  }

  v13 = _dd_mbr_check_membership_ext(a1, a2, a3, a4, a5, a7);
  if (v13 <= 1)
  {
    v14 = 0;
    if (!v13)
    {
      return v14;
    }

    return v13;
  }

  if (v13 == 2)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _dd_mbr_check_membership_ext(int a1, unsigned __int8 *src, uint64_t a3, int a4, const unsigned __int8 *a5, _DWORD *a6)
{
  v80 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  v6 = 3;
  if (!src || !a5)
  {
    goto LABEL_43;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2000000000;
  v53 = -2;
  if (a1)
  {
    if (a1 == 6)
    {
      if (a3 == 16)
      {
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 0x40000000;
        v50[2] = ___dd_mbr_check_membership_ext_block_invoke_2;
        v50[3] = &unk_1E75061E0;
        v50[4] = &v54;
        v50[5] = v52;
        *multiuser_flags = 2;
        v76 = 0;
        v77 = 0;
        uuid_copy(&v76, src);
        v58 = MEMORY[0x1E69E9820];
        v59 = 0x40000000;
        v60 = ___dd_foreach_record_with_uuid_block_invoke;
        v61 = &unk_1E7506190;
        v62 = v50;
        DarwinDirectoryRecordStoreApplyWithFilter();
        goto LABEL_20;
      }
    }

    else if (a1 == 4)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 0x40000000;
      v51[2] = ___dd_mbr_check_membership_ext_block_invoke;
      v51[3] = &unk_1E75061B8;
      v51[4] = &v54;
      v51[5] = v52;
      v69 = src;
      v70 = 0;
      v68 = 1;
      v64 = 0;
      v65 = &v64;
      v66 = 0x2000000000;
      v67 = 0;
      v58 = MEMORY[0x1E69E9820];
      v59 = 0x40000000;
      v60 = ___dd_foreach_record_with_name_block_invoke;
      v61 = &unk_1E7506140;
      v62 = v51;
      v63 = &v64;
      v11 = DarwinDirectoryRecordStoreApplyWithFilter();
      if ((v65[3] & 1) == 0)
      {
        multiuser_flags[0] = 0;
        v12 = MEMORY[0x19A8FC650](v11);
        multiuser_config_flags = host_get_multiuser_config_flags(v12, multiuser_flags);
        if (!multiuser_config_flags)
        {
          if ((multiuser_flags[0] & 0x80000000) == 0 || strcmp(src, "mobile"))
          {
            goto LABEL_19;
          }

          LODWORD(v68) = 0;
          multiuser_flags[0] = 0;
          v15 = MEMORY[0x19A8FC650]();
          v16 = host_get_multiuser_config_flags(v15, multiuser_flags);
          if (!v16)
          {
            LODWORD(v69) = multiuser_flags[0] & 0x3FFFFFFF;
            *multiuser_flags = MEMORY[0x1E69E9820];
            v76 = 0x40000000;
            v77 = ___dd_foreach_record_with_name_block_invoke_2;
            v78 = &unk_1E7506168;
            v18 = v51;
LABEL_48:
            v79 = v18;
            DarwinDirectoryRecordStoreApplyWithFilter();
            goto LABEL_19;
          }

          goto LABEL_55;
        }

        v22 = mbr_identifier_translate_cold_2(multiuser_config_flags, v14);
        goto LABEL_45;
      }

      goto LABEL_19;
    }

LABEL_42:
    _Block_object_dispose(v52, 8);
    _Block_object_dispose(&v54, 8);
    free(v55[3]);
LABEL_43:
    v37 = *MEMORY[0x1E69E9840];
    return v6;
  }

  if (a3 != 4)
  {
    goto LABEL_42;
  }

  v19 = *src;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 0x40000000;
  v49[2] = ___dd_mbr_check_membership_ext_block_invoke_3;
  v49[3] = &unk_1E7506208;
  v49[4] = &v54;
  v49[5] = v52;
  v68 = 0;
  v70 = 0;
  v69 = v19;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  v58 = MEMORY[0x1E69E9820];
  v59 = 0x40000000;
  v60 = ___dd_foreach_record_with_id_block_invoke;
  v61 = &unk_1E75060F0;
  v62 = v49;
  v63 = &v64;
  v20 = DarwinDirectoryRecordStoreApplyWithFilter();
  if ((v65[3] & 1) == 0)
  {
    multiuser_flags[0] = 0;
    v21 = MEMORY[0x19A8FC650](v20);
    v22 = host_get_multiuser_config_flags(v21, multiuser_flags);
    if (!v22)
    {
      if ((multiuser_flags[0] & 0x80000000) == 0 || v19 != 501)
      {
        goto LABEL_19;
      }

      goto LABEL_46;
    }

LABEL_45:
    v22 = mbr_identifier_translate_cold_2(v22, v23);
LABEL_46:
    multiuser_flags[0] = 0;
    v39 = MEMORY[0x19A8FC650](v22);
    v40 = host_get_multiuser_config_flags(v39, multiuser_flags);
    if (!v40)
    {
      LODWORD(v69) = multiuser_flags[0] & 0x3FFFFFFF;
      *multiuser_flags = MEMORY[0x1E69E9820];
      v76 = 0x40000000;
      v77 = ___dd_foreach_record_with_id_block_invoke_2;
      v78 = &unk_1E7506118;
      v18 = v49;
      goto LABEL_48;
    }

    v16 = mbr_identifier_translate_cold_2(v40, v41);
LABEL_55:
    v43 = mbr_identifier_translate_cold_2(v16, v17);
LABEL_56:
    v29 = mbr_identifier_translate_cold_2(v43, v44);
    goto LABEL_57;
  }

LABEL_19:
  _Block_object_dispose(&v64, 8);
LABEL_20:
  if (!v55[3])
  {
    v6 = 1;
    goto LABEL_42;
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  v71 = 0;
  if (a4 == 1)
  {
    v32 = *a5;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 0x40000000;
    v46[2] = ___dd_mbr_check_membership_ext_block_invoke_6;
    v46[3] = &unk_1E7506280;
    v46[4] = &v54;
    v46[5] = v52;
    v46[6] = &v68;
    v46[7] = a6;
    v72 = 0;
    v74 = 0;
    v73 = v32;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2000000000;
    v67 = 0;
    v58 = MEMORY[0x1E69E9820];
    v59 = 0x40000000;
    v60 = ___dd_foreach_record_with_id_block_invoke;
    v61 = &unk_1E75060F0;
    v62 = v46;
    v63 = &v64;
    v33 = DarwinDirectoryRecordStoreApplyWithFilter();
    if ((v65[3] & 1) == 0)
    {
      multiuser_flags[0] = 0;
      v34 = MEMORY[0x19A8FC650](v33);
      v35 = host_get_multiuser_config_flags(v34, multiuser_flags);
      if (!v35)
      {
        if ((multiuser_flags[0] & 0x80000000) == 0 || v32 != 501)
        {
          goto LABEL_36;
        }

LABEL_51:
        multiuser_flags[0] = 0;
        v42 = MEMORY[0x19A8FC650](v35);
        v43 = host_get_multiuser_config_flags(v42, multiuser_flags);
        if (!v43)
        {
          LODWORD(v73) = multiuser_flags[0] & 0x3FFFFFFF;
          *multiuser_flags = MEMORY[0x1E69E9820];
          v76 = 0x40000000;
          v77 = ___dd_foreach_record_with_id_block_invoke_2;
          v78 = &unk_1E7506118;
          v31 = v46;
          goto LABEL_53;
        }

        goto LABEL_56;
      }

      v26 = mbr_identifier_translate_cold_2(v35, v36);
LABEL_50:
      v35 = mbr_identifier_translate_cold_2(v26, v27);
      goto LABEL_51;
    }

LABEL_36:
    _Block_object_dispose(&v64, 8);
LABEL_37:
    if (v69[24])
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_41;
  }

  if (a4 == 6)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = ___dd_mbr_check_membership_ext_block_invoke_5;
    v47[3] = &unk_1E7506258;
    v47[4] = &v54;
    v47[5] = v52;
    v47[6] = &v68;
    v47[7] = a6;
    *multiuser_flags = 2;
    v76 = 0;
    v77 = 0;
    uuid_copy(&v76, a5);
    v58 = MEMORY[0x1E69E9820];
    v59 = 0x40000000;
    v60 = ___dd_foreach_record_with_uuid_block_invoke;
    v61 = &unk_1E7506190;
    v62 = v47;
    DarwinDirectoryRecordStoreApplyWithFilter();
    goto LABEL_37;
  }

  if (a4 != 5)
  {
    v6 = 3;
LABEL_41:
    _Block_object_dispose(&v68, 8);
    goto LABEL_42;
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 0x40000000;
  v48[2] = ___dd_mbr_check_membership_ext_block_invoke_4;
  v48[3] = &unk_1E7506230;
  v48[4] = &v54;
  v48[5] = v52;
  v48[6] = &v68;
  v48[7] = a6;
  v73 = a5;
  v74 = 0;
  v72 = 1;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  v58 = MEMORY[0x1E69E9820];
  v59 = 0x40000000;
  v60 = ___dd_foreach_record_with_name_block_invoke;
  v61 = &unk_1E7506140;
  v62 = v48;
  v63 = &v64;
  v24 = DarwinDirectoryRecordStoreApplyWithFilter();
  if (v65[3])
  {
    goto LABEL_36;
  }

  multiuser_flags[0] = 0;
  v25 = MEMORY[0x19A8FC650](v24);
  v26 = host_get_multiuser_config_flags(v25, multiuser_flags);
  if (v26)
  {
    goto LABEL_50;
  }

  if ((multiuser_flags[0] & 0x80000000) == 0 || strcmp(a5, "mobile"))
  {
    goto LABEL_36;
  }

  LODWORD(v72) = 0;
  multiuser_flags[0] = 0;
  v28 = MEMORY[0x19A8FC650]();
  v29 = host_get_multiuser_config_flags(v28, multiuser_flags);
  if (!v29)
  {
    LODWORD(v73) = multiuser_flags[0] & 0x3FFFFFFF;
    *multiuser_flags = MEMORY[0x1E69E9820];
    v76 = 0x40000000;
    v77 = ___dd_foreach_record_with_name_block_invoke_2;
    v78 = &unk_1E7506168;
    v31 = v48;
LABEL_53:
    v79 = v31;
    DarwinDirectoryRecordStoreApplyWithFilter();
    goto LABEL_36;
  }

LABEL_57:
  v45 = mbr_identifier_translate_cold_2(v29, v30);
  return mbr_check_membership_by_id(v45);
}

int mbr_check_service_membership(const uuid_t user, const char *servicename, int *ismember)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_simple_impl())
  {
    snprintf(__str, 0x400uLL, "com.apple.access_%s", servicename);
    result = _dd_mbr_check_membership_ext(6, user, 16, 5, __str, ismember);
    if (result == 3)
    {
      result = 22;
    }
  }

  else
  {
    result = 5;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

char *___dd_mbr_identifier_translate_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = _dd_extract_result(*(a1 + 56), a2);
  **(a1 + 48) = result;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

char *_dd_extract_result(unsigned int a1, uint64_t a2)
{
  if ((a1 & 0xFFFFFFFB) == 1)
  {
    if (*a2 != 1)
    {
      return 0;
    }
  }

  else if ((a1 & 0xFFFFFFFB) == 0 && *a2)
  {
    return 0;
  }

  v3 = 0;
  if (a1 > 0x1F)
  {
    return v3;
  }

  if (((1 << a1) & 0x40000003) != 0)
  {
    v6 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    if (v6)
    {
      v3 = v6;
      *v6 = *(a2 + 4);
      return v3;
    }

    _dd_extract_result_cold_2(0, v7);
    goto LABEL_19;
  }

  if (((1 << a1) & 0x80000030) == 0)
  {
    if (a1 != 6)
    {
      return v3;
    }

    v8 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    if (v8)
    {
      v3 = v8;
      uuid_copy(v8, (a2 + 16));
      return v3;
    }

LABEL_19:
    result_cold_1 = _dd_extract_result_cold_1(v8, v9);
    return ___dd_mbr_identifier_translate_block_invoke_2(result_cold_1);
  }

  v4 = *(a2 + 8);

  return strdup(v4);
}

char *___dd_mbr_identifier_translate_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = _dd_extract_result(*(a1 + 56), a2);
  **(a1 + 48) = result;
  *(*(*(a1 + 32) + 8) + 24) = 2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

char *___dd_mbr_identifier_translate_block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = _dd_extract_result(*(a1 + 56), a2);
  **(a1 + 48) = result;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

char *___dd_mbr_identifier_translate_block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = _dd_extract_result(*(a1 + 56), a2);
  **(a1 + 48) = result;
  *(*(*(a1 + 32) + 8) + 24) = 2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

char *___dd_mbr_identifier_translate_block_invoke_5(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = _dd_extract_result(*(a1 + 56), a2);
  **(a1 + 48) = result;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

char *___dd_mbr_identifier_translate_block_invoke_6(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = _dd_extract_result(*(a1 + 56), a2);
  **(a1 + 48) = result;
  *(*(*(a1 + 32) + 8) + 24) = 2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

uint64_t ___dd_foreach_record_with_id_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t ___dd_foreach_record_with_name_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

char *___dd_mbr_check_membership_ext_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = strdup(*(a2 + 8));
  *(*(*(a1 + 32) + 8) + 24) = result;
  *(*(*(a1 + 40) + 8) + 24) = *(a2 + 40);
  *a3 = 1;
  return result;
}

char *___dd_mbr_check_membership_ext_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = strdup(*(a2 + 8));
  *(*(*(a1 + 32) + 8) + 24) = result;
  *(*(*(a1 + 40) + 8) + 24) = *(a2 + 40);
  *a3 = 1;
  return result;
}

char *___dd_mbr_check_membership_ext_block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = strdup(*(a2 + 8));
  *(*(*(a1 + 32) + 8) + 24) = result;
  *(*(*(a1 + 40) + 8) + 24) = *(a2 + 40);
  *a3 = 1;
  return result;
}

uint64_t ___dd_mbr_check_membership_ext_block_invoke_4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = result;
  v5 = 1;
  if (*(a2 + 4) != *(*(*(result + 40) + 8) + 24))
  {
    v6 = *(a2 + 40);
    result = *v6;
    if (*v6)
    {
      v7 = *(*(*(v4 + 32) + 8) + 24);
      v8 = v6 + 1;
      do
      {
        result = strcmp(result, v7);
        v9 = result;
        if (!result)
        {
          break;
        }

        v10 = *v8++;
        result = v10;
      }

      while (v10);
      v5 = v9 == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  **(v4 + 56) = v5;
  *(*(*(v4 + 48) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t ___dd_mbr_check_membership_ext_block_invoke_5(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = result;
  v5 = 1;
  if (*(a2 + 4) != *(*(*(result + 40) + 8) + 24))
  {
    v6 = *(a2 + 40);
    result = *v6;
    if (*v6)
    {
      v7 = *(*(*(v4 + 32) + 8) + 24);
      v8 = v6 + 1;
      do
      {
        result = strcmp(result, v7);
        v9 = result;
        if (!result)
        {
          break;
        }

        v10 = *v8++;
        result = v10;
      }

      while (v10);
      v5 = v9 == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  **(v4 + 56) = v5;
  *(*(*(v4 + 48) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t ___dd_mbr_check_membership_ext_block_invoke_6(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = result;
  v5 = 1;
  if (*(a2 + 4) != *(*(*(result + 40) + 8) + 24))
  {
    v6 = *(a2 + 40);
    result = *v6;
    if (*v6)
    {
      v7 = *(*(*(v4 + 32) + 8) + 24);
      v8 = v6 + 1;
      do
      {
        result = strcmp(result, v7);
        v9 = result;
        if (!result)
        {
          break;
        }

        v10 = *v8++;
        result = v10;
      }

      while (v10);
      v5 = v9 == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  **(v4 + 56) = v5;
  *(*(*(v4 + 48) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE72300](18, 2, a3, 0);
}

int getdomainname(char *a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a2;
  *v5 = 0x1600000001;
  result = sysctl(v5, 2u, a1, &v4, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

int setdomainname(const char *a1, int a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0x1600000001;
  result = sysctl(v4, 2u, 0, 0, a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

int xdr_ypbind_binding(XDR *a1, ypbind_binding *a2)
{
  result = xdr_opaque(a1, a2->ypbind_binding_addr, 4u);
  if (result)
  {

    return xdr_opaque(a1, a2->ypbind_binding_port, 2u);
  }

  return result;
}

int xdr_ypbind_resp(XDR *a1, ypbind_resp *a2)
{
  if (!xdr_ypbind_resptype(a1, &a2->ypbind_status))
  {
    return 0;
  }

  if (a2->ypbind_status != YPBIND_SUCC_VAL)
  {
    if (a2->ypbind_status == YPBIND_FAIL_VAL)
    {

      return xdr_u_int(a1, &a2->ypbind_resp_u);
    }

    return 0;
  }

  return xdr_ypbind_binding(a1, &a2->ypbind_resp_u);
}

int xdr_ypbind_setdom(XDR *a1, ypbind_setdom *a2)
{
  if (!xdr_domainname(a1, &a2->ypsetdom_domain) || !xdr_ypbind_binding(a1, &a2->ypsetdom_binding))
  {
    return 0;
  }

  return xdr_u_int(a1, &a2->ypsetdom_vers);
}

int xdr_ypmaplist(XDR *a1, ypmaplist *a2)
{
  result = xdr_mapname(a1, &a2->map);
  if (result)
  {

    return xdr_pointer(a1, &a2->next, 0x10u, xdr_ypmaplist);
  }

  return result;
}

int xdr_ypreq_key(XDR *a1, ypreq_key *a2)
{
  if (!xdr_domainname(a1, &a2->domain) || !xdr_mapname(a1, &a2->map))
  {
    return 0;
  }

  return xdr_keydat(a1, &a2->key);
}

int xdr_ypreq_nokey(XDR *a1, ypreq_nokey *a2)
{
  result = xdr_domainname(a1, &a2->domain);
  if (result)
  {

    return xdr_mapname(a1, &a2->map);
  }

  return result;
}

int xdr_ypresp_all(XDR *a1, ypresp_all *a2)
{
  result = xdr_BOOL(a1, &a2->more);
  if (result)
  {
    if (a2->more)
    {
      if (a2->more == 1)
      {

        return xdr_ypresp_key_val(a1, &a2->ypresp_all_u.val);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

int xdr_ypresp_key_val(XDR *a1, ypresp_key_val *a2)
{
  if (!xdr_ypstat(a1, &a2->stat) || !xdr_valdat(a1, &a2->val))
  {
    return 0;
  }

  return xdr_keydat(a1, &a2->key);
}

int xdr_ypresp_maplist(XDR *a1, ypresp_maplist *a2)
{
  result = xdr_ypstat(a1, &a2->stat);
  if (result)
  {

    return xdr_pointer(a1, &a2->maps, 0x10u, xdr_ypmaplist);
  }

  return result;
}

int xdr_ypresp_master(XDR *a1, ypresp_master *a2)
{
  result = xdr_ypstat(a1, &a2->stat);
  if (result)
  {

    return xdr_peername(a1, &a2->peer);
  }

  return result;
}

int xdr_ypresp_order(XDR *a1, ypresp_order *a2)
{
  result = xdr_ypstat(a1, a2);
  if (result)
  {

    return xdr_u_int(a1, &a2->ordernum);
  }

  return result;
}

int xdr_ypresp_val(XDR *a1, ypresp_val *a2)
{
  result = xdr_ypstat(a1, &a2->stat);
  if (result)
  {

    return xdr_valdat(a1, &a2->val);
  }

  return result;
}

uint64_t xdr_ypresp_all_seq(XDR *a1, void *a2)
{
  memset(&v14, 0, sizeof(v14));
  while (1)
  {
    if (!xdr_ypresp_all(a1, &v14))
    {
      xdr_free(xdr_ypresp_all, &v14);
      v10 = 0;
      *a2 = -6;
      return v10;
    }

    if (!v14.more)
    {
      xdr_free(xdr_ypresp_all, &v14);
      return 0;
    }

    if (v14.ypresp_all_u.val.stat != YP_TRUE)
    {
      break;
    }

    keydat_len = v14.ypresp_all_u.val.key.keydat_len;
    v5 = malloc_type_malloc(v14.ypresp_all_u.val.key.keydat_len + 1, 0xA3356CE4uLL);
    v6 = v5;
    if (v5)
    {
      memcpy(v5, v14.ypresp_all_u.val.key.keydat_val, keydat_len);
      v6[keydat_len] = 0;
    }

    valdat_len = v14.ypresp_all_u.val.val.valdat_len;
    v8 = malloc_type_malloc(v14.ypresp_all_u.val.val.valdat_len + 1, 0x55A092E8uLL);
    v9 = v8;
    if (!v8)
    {
      free(v6);
      xdr_free(xdr_ypresp_all, &v14);
LABEL_18:
      free(v9);
      return 0;
    }

    memcpy(v8, v14.ypresp_all_u.val.val.valdat_val, valdat_len);
    *(v9 + valdat_len) = 0;
    xdr_free(xdr_ypresp_all, &v14);
    if (!v6)
    {
      goto LABEL_18;
    }

    v10 = 1;
    v11 = ypresp_allfn(1, v6, v14.ypresp_all_u.val.key.keydat_len, v9, v14.ypresp_all_u.val.val.valdat_len, ypresp_data);
    *a2 = 1;
    free(v6);
    free(v9);
    if (v11)
    {
      return v10;
    }
  }

  if (v14.ypresp_all_u.val.stat == YP_NOMORE)
  {
    xdr_free(xdr_ypresp_all, &v14);
  }

  else
  {
    stat = v14.ypresp_all_u.val.stat;
    xdr_free(xdr_ypresp_all, &v14);
    *a2 = stat;
  }

  return 1;
}

int yp_all(const char *a1, const char *a2, ypall_callback *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1 && *a1)
  {
    v6 = strlen(a1);
    v7 = 1;
    if (a2)
    {
      if (v6 <= 0x40)
      {
        if (*a2)
        {
          v8 = strlen(a2);
          if (a3)
          {
            if (v8 <= 0x40)
            {
              v17 = 0;
              v18 = 0;
              *v15 = 0;
              v16 = 0;
              if (_yp_dobind(a1, &v16))
              {
                v7 = 3;
              }

              else
              {
                v14 = -1;
                v19 = *(v16 + 76);
                v19.sin_port = 0;
                v11 = clnttcp_create(&v19, 0x186A4u, 2u, &v14, 0, 0);
                if (v11)
                {
                  v12 = v11;
                  v17 = a1;
                  v18 = a2;
                  data = a3->data;
                  ypresp_allfn = a3->foreach;
                  ypresp_data = data;
                  (v11->cl_ops->cl_call)();
                  (v12->cl_ops->cl_destroy)(v12);
                  if (*v15)
                  {
                    v7 = ypprot_err(v15[0]);
                  }

                  else
                  {
                    v7 = 0;
                  }
                }

                else
                {
                  puts("clnttcp_create failed");
                  v7 = 9;
                }

                _yp_unbind(v16);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

int _yp_dobind(const char *a1, dom_binding **a2)
{
  v38 = *MEMORY[0x1E69E9840];
  __src = a1;
  v4 = open_NOCANCEL();
  if (v4 == -1)
  {
    goto LABEL_20;
  }

  if (flock(v4, 6) != -1 || (v35 = 0, v34 = 0, *&v37.sin_len = 0, *v37.sin_zero = 0, v33 = 0, state64 = 0, *__error() != 35))
  {
    close_NOCANCEL();
    goto LABEL_20;
  }

  close_NOCANCEL();
  v5 = getpid();
  v6 = v5;
  if (_yp_dobind_pid != -1 && _yp_dobind_pid != v5)
  {
    v7 = _ypbindlist;
    if (_ypbindlist)
    {
      do
      {
        v8 = v7[13];
        if (v8)
        {
          (*(*(v8 + 8) + 32))();
        }

        v9 = *v7;
        free(v7);
        v7 = v9;
      }

      while (v9);
    }

    _ypbindlist = 0;
  }

  _yp_dobind_pid = v6;
  if (a2)
  {
    *a2 = 0;
  }

  if (!a1 || !*a1)
  {
    result = 1;
    goto LABEL_21;
  }

  v10 = &_ypbindlist;
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (!strcmp(a1, v10 + 8))
    {
      v11 = v10;
      goto LABEL_25;
    }
  }

  v14 = malloc_type_calloc(1uLL, 0x80uLL, 0x1020040C3F770D4uLL);
  if (!v14)
  {
    result = 6;
    goto LABEL_21;
  }

  v11 = v14;
  *(v14 + 24) = -1;
  v14[15] = 0;
LABEL_25:
  v30 = 0;
  token = -1;
  v15 = pthread_self();
  asprintf(&v30, "self.thread.%lu", v15);
  if (v30)
  {
    notify_register_plain();
    free(v30);
  }

  v16 = 0;
  while (1)
  {
    if (token != -1)
    {
      state64 = 0;
      notify_get_state(token, &state64);
      if (state64 == 4)
      {
        if (!v10)
        {
          free(v11);
        }

        v28 = token;
        goto LABEL_67;
      }
    }

    v17 = v11[15];
    if ((v17 + 1) >= 2 && v17 != -2)
    {
      break;
    }

    *v37.sin_zero = 0;
    *&v37.sin_len = 528;
    v37.sin_addr.s_addr = 16777343;
    v33 = -1;
    v19 = clnttcp_create(&v37, 0x186A7u, 2u, &v33, 0, 0);
    if (!v19)
    {
      clnt_pcreateerror("clnttcp_create");
      goto LABEL_59;
    }

    v20 = v19;
    if ((v37.sin_port & 0xFC) != 0 || v37.sin_port == 5120)
    {
      (v19->cl_ops->cl_destroy)(v19);
LABEL_59:
      if (!v10)
      {
        free(v11);
      }

      v28 = token;
      if (token == -1)
      {
LABEL_20:
        result = 10;
        goto LABEL_21;
      }

LABEL_67:
      notify_cancel(v28);
      goto LABEL_20;
    }

    if (!(v19->cl_ops->cl_call)(v19, 1, xdr_domainname, &__src, xdr_ypbind_resp, &v34, _yplib_timeout, 0))
    {
      (v20->cl_ops->cl_destroy)(v20);
      if ((v35 & 0xFC) != 0 || v35 == 5120)
      {
        goto LABEL_59;
      }

      *(v11 + 84) = 0;
      *(v11 + 76) = 0;
      *(v11 + 38) = 528;
      v21 = v35;
      *(v11 + 39) = v35;
      *(v11 + 20) = HIDWORD(v34);
      *(v11 + 46) = v21;
      v11[15] = 2;
      strncpy(v11 + 8, __src, 0x40uLL);
      *(v11 + 72) = 0;
      break;
    }

    if (v10 || v16)
    {
      fprintf(*MEMORY[0x1E69E9848], "YP server for domain %s not responding, still trying\n", __src);
    }

    ++v16;
    (v20->cl_ops->cl_destroy)(v20);
LABEL_54:
    v27 = -2;
    if (v17 != -2)
    {
      v27 = -1;
    }

    v11[15] = v27;
  }

  v22 = _yplib_timeout;
  v23 = v11[13];
  if (v23)
  {
    (*(*(v23 + 8) + 32))();
  }

  *(v11 + 24) = -1;
  if (v17 == -2)
  {
    v24 = clnttcp_create((v11 + 76), 0x186A4u, 2u, v11 + 24, 0, 0);
    v11[13] = v24;
    if (v24)
    {
      goto LABEL_68;
    }

    v25 = "clnttcp_create";
    goto LABEL_53;
  }

  v39.tv_sec = (v22 + (v22 >> 31)) >> 1;
  *&v39.tv_usec = 0;
  v26 = clntudp_create((v11 + 76), 0x186A4u, 2u, v39, v11 + 24);
  v11[13] = v26;
  if (!v26)
  {
    v25 = "clntudp_create";
LABEL_53:
    clnt_pcreateerror(v25);
    goto LABEL_54;
  }

LABEL_68:
  if (token != -1)
  {
    notify_cancel(token);
  }

  v29 = *(v11 + 24);
  if (fcntl_NOCANCEL() == -1)
  {
    perror("fcntl: F_SETFD");
    if (!v10)
    {
LABEL_72:
      *v11 = _ypbindlist;
      _ypbindlist = v11;
    }
  }

  else if (!v10)
  {
    goto LABEL_72;
  }

  result = 0;
  if (a2)
  {
    *a2 = v11;
  }

LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _yp_unbind(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    result = (*(*(result + 8) + 32))();
  }

  *(a1 + 104) = 0;
  *(a1 + 96) = -1;
  return result;
}

void yp_unbind(const char *a1)
{
  v2 = 0;
  v3 = &_ypbindlist;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = v2;
    v5 = strcmp(a1, v3 + 8);
    v2 = v3;
    if (!v5)
    {
      v6 = v3[13];
      if (v6)
      {
        (*(*(v6 + 8) + 32))();
      }

      if (v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = &_ypbindlist;
      }

      *v7 = *v3;

      free(v3);
      return;
    }
  }
}

int yp_first(const char *a1, const char *a2, char **a3, int *a4, char **a5, int *a6)
{
  if (!a1 || !*a1)
  {
    return 1;
  }

  v12 = strlen(a1);
  v13 = 1;
  if (a2 && v12 <= 0x40 && *a2 && strlen(a2) <= 0x40)
  {
    v21[0] = 0;
    *a5 = 0;
    *a3 = 0;
    *a6 = 0;
    *a4 = 0;
    if (_yp_dobind(a1, v21))
    {
      return 3;
    }

    else
    {
      for (i = 0; ; --i)
      {
        v21[1] = a1;
        v21[2] = a2;
        *v22 = 0u;
        *__src = 0u;
        v24 = 0;
        if (!(**(*(v21[0] + 13) + 8))())
        {
          break;
        }

        if (i)
        {
          clnt_perror(*(v21[0] + 13), "yp_first: clnt_call");
        }

        if (yp_first_proto)
        {
          v16 = -1;
        }

        else
        {
          v16 = -2;
        }

        yp_first_proto ^= 1u;
        *(v21[0] + 15) = v16;
        v13 = 3;
        if (_yp_dobind(a1, v21))
        {
          return v13;
        }
      }

      v13 = ypprot_err(v22[0]);
      if (!v13)
      {
        v17 = v22[2];
        *a4 = v22[2];
        v18 = malloc_type_malloc(v17 + 1, 0x31985EB3uLL);
        *a3 = v18;
        if (v18)
        {
          memcpy(v18, __src[0], *a4);
          v13 = 0;
          (*a3)[*a4] = 0;
        }

        else
        {
          v13 = 7;
        }

        v19 = SLODWORD(__src[1]);
        *a6 = __src[1];
        v20 = malloc_type_malloc(v19 + 1, 0x19C4EA4uLL);
        *a5 = v20;
        if (v20)
        {
          memcpy(v20, v24, *a6);
          (*a5)[*a6] = 0;
        }

        else
        {
          v13 = 7;
        }
      }

      xdr_free(xdr_ypresp_key_val, v22);
      _yp_unbind(v21[0]);
    }
  }

  return v13;
}