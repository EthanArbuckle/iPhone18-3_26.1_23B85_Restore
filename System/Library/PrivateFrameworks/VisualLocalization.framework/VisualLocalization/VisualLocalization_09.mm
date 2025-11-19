uint64_t split_track_path(const char *a1, char *a2, char *a3, char *a4, char *a5, char *a6)
{
  if (!strncmp(a1, "blob", 4uLL))
  {
    v12 = -5;
    v13 = 58;
    v14 = 5;
  }

  else if (!strncmp(a1, "bithub", 6uLL))
  {
    v12 = -7;
    v13 = 58;
    v14 = 7;
  }

  else
  {
    if (strncmp(a1, "https://3dv-data.geo.apple.com/blob", 0x23uLL))
    {
      return 0;
    }

    v12 = -36;
    v13 = 47;
    v14 = 36;
  }

  v15 = strchr(&a1[v14], v13);
  v16 = v15 - a1 + v12;
  strncpy(a2, &a1[v14], v16);
  a2[v16] = 0;
  v17 = strchr(v15 + 1, 47);
  strncpy(a4, a1, v17 - a1);
  a4[v17 - a1] = 0;
  strncpy(a3, v15 + 1, &v17[~v15]);
  v17[~v15 + a3] = 0;
  if (*v17 == 47 && v17[1] == 116 && v17[2] == 47)
  {
    return 0;
  }

  v19 = strchr(v17 + 1, 47);
  v20 = strchr(v19 + 1, 47);
  v21 = strchr(v20 + 1, 47);
  v22 = strchr(v21 + 1, 47);
  v23 = v22 - (v17 + 8);
  strncpy(a5, v17 + 8, v23);
  a5[v23] = 0;
  strncpy(a6, v22 + 1, 0x200uLL);
  return 1;
}

FILE *vl_open_track(const char *a1, const char *a2)
{
  v14[64] = *MEMORY[0x277D85DE8];
  if (!split_track_path(a1, v14, v13, v12, v11, v10) || (v14[0] == 0x5F6C736C5F766433 ? (v4 = v14[1] == 0x31306775626564) : (v4 = 0), v4))
  {
    v6 = "Open track file from: %s";
    goto LABEL_9;
  }

  __sprintf_chk(__filename, 0, 0x200uLL, "%s/t/%s", v12, v9);
  v5 = fopen(__filename, a2);
  printf("Verbose : ");
  printf("Open track file from: %s", __filename);
  putchar(10);
  if (!v5)
  {
    v6 = "Open track file failed, second try from: %s";
LABEL_9:
    v5 = fopen(a1, a2);
    printf("Verbose : ");
    printf(v6, a1);
    putchar(10);
  }

  return v5;
}

uint64_t vl_map_load_fn(const char *a1, void **a2, size_t *a3, int a4)
{
  v7 = vl_open_track(a1, "r");
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v17 = 0;
  __ptr = 0;
  if (fread(&__ptr, 1uLL, 4uLL, v7) != 4)
  {
    goto LABEL_10;
  }

  if (__ptr != 1414545741)
  {
    printf("%sError : ", &str_8_0);
    printf("error reading header: %s", &__ptr);
    putchar(10);
LABEL_10:
    fclose(v8);
    return 0xFFFFFFFFLL;
  }

  v15 = 0;
  if (fread(&v15, 4uLL, 1uLL, v8) != 1)
  {
    goto LABEL_10;
  }

  v14 = 0;
  if (fread(&v14, 8uLL, 1uLL, v8) != 1)
  {
    goto LABEL_10;
  }

  v13 = 0;
  if (fread(&v13, 8uLL, 1uLL, v8) != 1 || fseek(v8, -24, 1))
  {
    goto LABEL_10;
  }

  v10 = &v14;
  if (!a4)
  {
    v10 = &v13;
  }

  v11 = *v10;
  *a3 = *v10;
  v12 = malloc_type_malloc(v11, 0x6F6DB854uLL);
  *a2 = v12;
  if (fread(v12, *a3, 1uLL, v8) == 1)
  {
    fclose(v8);
    return 0;
  }

  else
  {
    free(*a2);
    fclose(v8);
    return 2;
  }
}

uint64_t vl_map_block_decode_tag(uint64_t a1, char *__s2, char *__s1, int a4)
{
  if (a4 < 1)
  {
    return 0x80000000;
  }

  v7 = a4;
  while (strcmp(__s1, __s2))
  {
    __s1 += 72;
    if (!--v7)
    {
      return 0x80000000;
    }
  }

  v10 = *(__s1 + 11);
  if (!v10)
  {
    v15 = *(__s1 + 10);
    if (v15 <= 0xF)
    {
      goto LABEL_14;
    }

    return 1;
  }

  if (v10 != 1)
  {
    return 1;
  }

  v12 = *(__s1 + 7);
  v11 = *(__s1 + 8);
  v13 = malloc_type_malloc(*(__s1 + 6), 0x10B823E7uLL);
  *(__s1 + 8) = v13;
  if (v12 < 8 || v12 - 8 < *v11 || (v14 = *(__s1 + 6)) != 0 && compression_decode_buffer(v13, *(__s1 + 6), v11 + 8, *v11, 0, COMPRESSION_LZFSE) != v14)
  {
    free(v11);
    return 1;
  }

  free(v11);
  v15 = *(__s1 + 10);
LABEL_14:
  v16 = decode_fncs[v15];
  v17 = *(__s1 + 8);
  v8.n128_u32[0] = *(__s1 + 9);
  v18 = *(__s1 + 8);
  v19 = *(__s1 + 6);

  return (v16)(a1, v17, v18, v19, v8);
}

uint64_t vl_map_desc_decode_mst(uint64_t *a1)
{
  *&v62.tv_usec = 0;
  v63 = 0;
  v62.tv_sec = 0;
  gettimeofday(&v62, 0);
  v2 = *a1;
  if (*a1 < 4 || (v3 = v2 & 0xFFFFFFFFFFFFFFFCLL, (v2 & 0xFFFFFFFFFFFFFFFCLL) == 4) || v3 == 8 || v3 == 12)
  {
    v4 = 0;
    v5 = 1;
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 1;
  if (v3 != 16)
  {
    v7 = a1[1];
    if (*v7 <= 0)
    {
      tv_usec = v62.tv_usec;
      tv_sec = v62.tv_sec;
      v9 = v7[1];
      v8 = v7[2];
      v11 = v7[3];
      v10 = v7[4];
      v61 = v2 - 20;
      v12 = (v7 + 5);
      v57 = v8 * v9;
      v13 = (v8 * v9 + v10 - 1) / v10;
      v14 = v11 + 1;
      v15 = v10 * (v11 + 1);
      v16 = (v8 + 2) * v9;
      v17 = malloc_type_malloc(v16, 0xD64DD34uLL);
      v58 = v12;
      v18 = huff_decompress(v12, v13, &v63, v15, v17, v16);
      if (v61 >= v63)
      {
        v19 = v63;
      }

      else
      {
        v19 = 0;
      }

      if (v16)
      {
        v20 = v17 == 0;
      }

      else
      {
        v20 = 0;
      }

      if (v20 || (v21 = v16 - v18, v16 < v18))
      {
        if (v61 >= v63)
        {
          __assert_rtn("vl_map_desc_decode_mst", "vl_map_rw.c", 1998, "!buf2.err");
        }
      }

      else if (v61 >= v63)
      {
        v62.tv_sec = 0;
        v56 = v18;
        v22 = &v17[v18];
        *&v62.tv_usec = 0;
        gettimeofday(&v62, 0);
        v23 = v62.tv_usec + 1000000 * v62.tv_sec;
        printf("Verbose (toc) : ");
        printf("vl_map_desc_decode_mst: desc decompress");
        printf(": %f ms", ((-1000000 * tv_sec - tv_usec + v23) / 1000.0));
        putchar(10);
        if (2 * v9 != huff_decompress(v58 + v19, 2 * v9, 0, 8, v22, v21))
        {
          __assert_rtn("vl_map_desc_decode_mst", "vl_map_rw.c", 2007, "bytes_written == n * sizeof(uint16_t)");
        }

        if (v21 < 2 * v9)
        {
          __assert_rtn("vl_map_desc_decode_mst", "vl_map_rw.c", 2012, "!buf2.err");
        }

        v62.tv_sec = 0;
        *&v62.tv_usec = 0;
        gettimeofday(&v62, 0);
        v24 = v62.tv_usec + 1000000 * v62.tv_sec;
        printf("Verbose (toc) : ");
        printf("vl_map_desc_decode_mst: parent array decompress");
        printf(": %f ms", ((v24 - v23) / 1000.0));
        putchar(10);
        v25 = *a1;
        v26 = a1[2];
        v27 = v17;
        if (v26 < v57)
        {
          v28 = 2 * v26;
          v20 = v26 == 0;
          v29 = 256;
          if (!v20)
          {
            v29 = v28;
          }

          if (v29 <= v57)
          {
            v30 = v57;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            v31 = malloc_type_realloc(a1[1], v30, 0x100004077774924uLL);
            v27 = v17;
            a1[1] = v31;
          }

          a1[2] = v30;
        }

        v32 = a1[1];
        if (v57 > v25)
        {
          bzero(&v32[*a1], v57 - v25);
          v27 = v17;
          v32 = a1[1];
        }

        *a1 = v57;
        v33 = 8 - v11;
        v34 = 1 << (7 - v11);
        if (v9 <= 1)
        {
          if (v8 >= 1)
          {
            v50 = 0;
            v51 = 0;
            v52 = v27;
            do
            {
              if (v51 <= v11)
              {
                v53 = *v52++;
                v50 |= bswap32(v53) << (32 - v51);
                v51 += 32;
              }

              *v32++ = (v50 >> (63 - v11) << v33) + v34;
              v50 <<= v14;
              v51 -= v14;
              --v8;
            }

            while (v8);
          }
        }

        else
        {
          v35 = *v22;
          v36 = v9 - 1;
          v37 = v56 + 2;
          do
          {
            v35 += *(v27 + v37);
            *(v27 + v37) = v35;
            v37 += 2;
            --v36;
          }

          while (v36);
          if (v8 > 0)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 63 - v11;
            v42 = &v32[v8];
            v43 = v27;
            do
            {
              if (v40 <= v11)
              {
                v44 = *v43++;
                v39 |= bswap32(v44) << (32 - v40);
                v40 += 32;
              }

              v32[v38] = (v39 >> v41 << v33) + v34;
              v39 <<= v14;
              v40 -= v14;
              v45 = v42;
              v46 = 1;
              do
              {
                if (v40 <= v11)
                {
                  v47 = *v43++;
                  v39 |= bswap32(v47) << (32 - v40);
                  v40 += 32;
                }

                v48 = v39 >> v41;
                if ((v39 >> v41) < 1 || 2 << v11 <= v48)
                {
                  __assert_rtn("_desc_unpack", "vl_map_rw.c", 1718, "diff > 0 && diff < 2 * zero");
                }

                if (v46 <= *&v22[2 * v46])
                {
                  __assert_rtn("_desc_unpack", "vl_map_rw.c", 1722, "parent[i] < i");
                }

                v49 = (-1 << v11) + v48 + (v32[v38 + v8 * *&v22[2 * v46]] >> v33);
                if (v49 < 0)
                {
                  __assert_rtn("_desc_unpack", "vl_map_rw.c", 1726, "val + diff >= 0");
                }

                *v45 = (v49 << v33) + v34;
                ++v46;
                v39 <<= v14;
                v40 -= v14;
                v45 += v8;
              }

              while (v9 != v46);
              ++v38;
              ++v42;
            }

            while (v38 != v8);
          }
        }

        v62.tv_sec = 0;
        *&v62.tv_usec = 0;
        gettimeofday(&v62, 0);
        v54 = v62.tv_sec;
        v55 = v62.tv_usec;
        printf("Verbose (toc) : ");
        printf("vl_map_desc_decode_mst: unpack");
        printf(": %f ms", ((1000000 * v54 - v24 + v55) / 1000.0));
        putchar(10);
        v4 = v17;
        v5 = 0;
        goto LABEL_6;
      }

      __assert_rtn("vl_map_desc_decode_mst", "vl_map_rw.c", 1997, "!buf.err");
    }
  }

LABEL_6:
  free(v4);
  return v5;
}

uint64_t decode_pos3f_list(uint64_t a1, int a2, char *__src, unint64_t a4)
{
  v4 = a4 - 4;
  if (a4 < 4)
  {
    v6 = 0;
    v5 = 2;
    v4 = a4;
    v8 = *(a1 + 16);
    if (v8 >= 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    v7 = *__src;
    __src += 4;
    v6 = v7;
    v8 = *(a1 + 16);
    if (v8 >= v7)
    {
      goto LABEL_13;
    }
  }

  v9 = 2 * v8;
  v10 = v8 == 0;
  v11 = 21;
  if (!v10)
  {
    v11 = v9;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v13 = a1;
    v14 = v5;
    v15 = __src;
    v16 = a4;
    v17 = malloc_type_realloc(*(a1 + 8), 12 * v12, 0x10000403E1C8BA9uLL);
    a4 = v16;
    __src = v15;
    v18 = v17;
    v5 = v14;
    a1 = v13;
    *(v13 + 8) = v18;
  }

  *(a1 + 16) = v12;
LABEL_13:
  *a1 = v6;
  if (a4 >= 4)
  {
    if (v4 >= 12 * v6)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        memcpy(v19, __src, 12 * v6);
      }

      return 0;
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

uint64_t decode_pos2f_list(uint64_t a1, int a2, char *__src, unint64_t a4)
{
  v4 = a4 - 4;
  if (a4 < 4)
  {
    v6 = 0;
    v5 = 2;
    v4 = a4;
    v8 = *(a1 + 16);
    if (v8 >= 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    v7 = *__src;
    __src += 4;
    v6 = v7;
    v8 = *(a1 + 16);
    if (v8 >= v7)
    {
      goto LABEL_13;
    }
  }

  v9 = 2 * v8;
  v10 = v8 == 0;
  v11 = 32;
  if (!v10)
  {
    v11 = v9;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v13 = a1;
    v14 = v5;
    v15 = __src;
    v16 = a4;
    v17 = malloc_type_realloc(*(a1 + 8), 8 * v12, 0x100004000313F17uLL);
    a4 = v16;
    __src = v15;
    v18 = v17;
    v5 = v14;
    a1 = v13;
    *(v13 + 8) = v18;
  }

  *(a1 + 16) = v12;
LABEL_13:
  *a1 = v6;
  if (a4 >= 4)
  {
    if (v4 >= 8 * v6)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        memcpy(v19, __src, 8 * v6);
      }

      return 0;
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

uint64_t decode_float_list(uint64_t a1, int a2, char *__src, unint64_t a4)
{
  v4 = a4 - 4;
  if (a4 < 4)
  {
    v6 = 0;
    v5 = 2;
    v4 = a4;
    v8 = *(a1 + 16);
    if (v8 >= 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    v7 = *__src;
    __src += 4;
    v6 = v7;
    v8 = *(a1 + 16);
    if (v8 >= v7)
    {
      goto LABEL_13;
    }
  }

  v9 = 2 * v8;
  v10 = v8 == 0;
  v11 = 64;
  if (!v10)
  {
    v11 = v9;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v13 = a1;
    v14 = v5;
    v15 = __src;
    v16 = a4;
    v17 = malloc_type_realloc(*(a1 + 8), 4 * v12, 0x100004052888210uLL);
    a4 = v16;
    __src = v15;
    v18 = v17;
    v5 = v14;
    a1 = v13;
    *(v13 + 8) = v18;
  }

  *(a1 + 16) = v12;
LABEL_13:
  *a1 = v6;
  if (a4 >= 4)
  {
    if (v4 >= 4 * v6)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        memcpy(v19, __src, 4 * v6);
      }

      return 0;
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

uint64_t decode_ushort_list(uint64_t a1, int a2, char *__src, unint64_t a4)
{
  v4 = a4 - 4;
  if (a4 < 4)
  {
    v6 = 0;
    v5 = 2;
    v4 = a4;
    v8 = *(a1 + 16);
    if (v8 >= 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    v7 = *__src;
    __src += 4;
    v6 = v7;
    v8 = *(a1 + 16);
    if (v8 >= v7)
    {
      goto LABEL_13;
    }
  }

  v9 = 2 * v8;
  v10 = v8 == 0;
  v11 = 128;
  if (!v10)
  {
    v11 = v9;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v13 = a1;
    v14 = v5;
    v15 = __src;
    v16 = a4;
    v17 = malloc_type_realloc(*(a1 + 8), 2 * v12, 0x1000040BDFB0063uLL);
    a4 = v16;
    __src = v15;
    v18 = v17;
    v5 = v14;
    a1 = v13;
    *(v13 + 8) = v18;
  }

  *(a1 + 16) = v12;
LABEL_13:
  *a1 = v6;
  if (a4 >= 4)
  {
    if (v4 >= 2 * v6)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        memcpy(v19, __src, 2 * v6);
      }

      return 0;
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

uint64_t decode_uchar_list(uint64_t a1, int a2, char *__src, unint64_t a4)
{
  v4 = a4 - 4;
  if (a4 < 4)
  {
    v6 = 0;
    v5 = 2;
    v4 = a4;
    v8 = *(a1 + 16);
    if (v8 >= 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    v7 = *__src;
    __src += 4;
    v6 = v7;
    v8 = *(a1 + 16);
    if (v8 >= v7)
    {
      goto LABEL_13;
    }
  }

  v9 = 2 * v8;
  v10 = v8 == 0;
  v11 = 256;
  if (!v10)
  {
    v11 = v9;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v13 = a1;
    v14 = v5;
    v15 = __src;
    v16 = a4;
    v17 = malloc_type_realloc(*(a1 + 8), v12, 0x100004077774924uLL);
    a4 = v16;
    __src = v15;
    v18 = v17;
    v5 = v14;
    a1 = v13;
    *(v13 + 8) = v18;
  }

  *(a1 + 16) = v12;
LABEL_13:
  *a1 = v6;
  if (a4 >= 4)
  {
    if (v4 >= v6)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        memcpy(v19, __src, v6);
      }

      return 0;
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

uint64_t decode_pos3f_list_ff(uint64_t a1, int a2, int *a3, unint64_t a4)
{
  v22[0] = a3;
  if (a4 < 4)
  {
    return 2;
  }

  v7 = *a3;
  v22[1] = a3 + 1;
  v22[2] = a4 - 4;
  v8 = v7;
  v9 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
  v10 = *(a1 + 16);
  if (v10 < v7)
  {
    v11 = 2 * v10;
    v12 = v10 == 0;
    v13 = 21;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13 <= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      *(a1 + 8) = malloc_type_realloc(*(a1 + 8), 12 * v14, 0x10000403E1C8BA9uLL);
    }

    *(a1 + 16) = v14;
  }

  v23 = 0;
  *a1 = v8;
  float_frac_decompress(v9, v8, a2, v22);
  if (v8 <= 0)
  {
    float_frac_decompress(v9, v8, a2, v22);
    float_frac_decompress(v9, v8, a2, v22);
  }

  else
  {
    v15 = 0;
    v16 = *(a1 + 8);
    do
    {
      *v16 = v9->i32[v15];
      v16 += 3;
      ++v15;
    }

    while (v8 != v15);
    float_frac_decompress(v9, v8, a2, v22);
    v17 = 0;
    v18 = (*(a1 + 8) + 4);
    do
    {
      *v18 = v9->i32[v17];
      v18 += 3;
      ++v17;
    }

    while (v8 != v17);
    float_frac_decompress(v9, v8, a2, v22);
    v19 = (*(a1 + 8) + 8);
    v20 = v9;
    do
    {
      v21 = v20->i32[0];
      v20 = (v20 + 4);
      *v19 = v21;
      v19 += 3;
      --v8;
    }

    while (v8);
  }

  free(v9);
  return v23;
}

uint64_t decode_hm_ff(uint64_t a1, int a2, int *a3, unint64_t a4)
{
  v24[0] = a3;
  if (a4 < 4)
  {
    return 2;
  }

  v7 = *a3;
  v24[1] = a3 + 1;
  v24[2] = a4 - 4;
  v8 = *(a1 + 16);
  if (v8 < v7)
  {
    v9 = 2 * v8;
    v10 = v8 == 0;
    v11 = 64;
    if (!v10)
    {
      v11 = v9;
    }

    if (v11 <= v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      *(a1 + 8) = malloc_type_realloc(*(a1 + 8), 4 * v12, 0x100004052888210uLL);
    }

    *(a1 + 16) = v12;
  }

  v25 = 0;
  *a1 = v7;
  float_frac_decompress(*(a1 + 8), v7, a2, v24);
  if (v7 >= 1)
  {
    v13 = *(a1 + 8);
    if (v7 < 8)
    {
      v14 = 0;
      goto LABEL_18;
    }

    v14 = v7 & 0x7FFFFFF8;
    v15 = v13 + 1;
    v16.i64[0] = 0x6000000060000000;
    v16.i64[1] = 0x6000000060000000;
    v17.i64[0] = 0x80000000800000;
    v17.i64[1] = 0x80000000800000;
    v18 = vnegq_f32(v17);
    v19 = v14;
    do
    {
      v20 = vbslq_s8(vceqq_f32(*v15, v16), v18, *v15);
      v15[-1] = vbslq_s8(vceqq_f32(v15[-1], v16), v18, v15[-1]);
      *v15 = v20;
      v15 += 2;
      v19 -= 8;
    }

    while (v19);
    if (v14 != v7)
    {
LABEL_18:
      v21 = v7 - v14;
      v22 = &v13->f32[v14];
      do
      {
        v23 = *v22;
        if (*v22 == 3.6893e19)
        {
          v23 = 3.4028e38;
        }

        *v22++ = v23;
        --v21;
      }

      while (v21);
    }
  }

  return v25;
}

uint64_t decode_ang_fix(uint64_t a1, char a2, int *a3, unint64_t a4, double a5)
{
  v5 = a4 - 4;
  if (a4 < 4)
  {
    return 2;
  }

  v7 = *a3;
  v8 = *(a1 + 16);
  if (v8 < v7)
  {
    v9 = 2 * v8;
    v10 = v8 == 0;
    v11 = 64;
    if (!v10)
    {
      v11 = v9;
    }

    if (v11 <= v7)
    {
      v12 = *a3;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      v13 = a1;
      v14 = a2;
      v15 = a3;
      v16 = malloc_type_realloc(*(a1 + 8), 4 * v12, 0x100004052888210uLL);
      a2 = v14;
      a3 = v15;
      v17 = v16;
      a1 = v13;
      *(v13 + 8) = v17;
    }

    *(a1 + 16) = v12;
  }

  *a1 = v7;
  if (v5 < 2 * v7)
  {
    return 2;
  }

  if (v7 >= 1)
  {
    v18 = *(a1 + 8);
    *&a5 = 6.2832 / (1 << a2);
    if (v7 < 4)
    {
      v19 = 0;
LABEL_25:
      v37 = v7 - v19;
      v38 = &v18->f32[v19];
      v39 = a3 + v19 + 2;
      do
      {
        v40 = *v39++;
        *v38++ = ((v40 + 0.5) * *&a5) + 0.0;
        --v37;
      }

      while (v37);
      return 0;
    }

    if (v7 >= 0x10)
    {
      v19 = v7 & 0x7FFFFFF0;
      v20 = vdupq_lane_s32(*&a5, 0);
      v21 = (a3 + 5);
      v22 = v18 + 2;
      v23.i64[0] = 0x3F0000003F000000;
      v23.i64[1] = 0x3F0000003F000000;
      v24 = v19;
      do
      {
        v25 = v21[-1];
        v26 = vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(*v21)), v23);
        v27 = vmlaq_f32(0, v20, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v25.i8)), v23));
        v28 = vmlaq_f32(0, v20, vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v25)), v23));
        v29 = vmlaq_f32(0, v20, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v21->i8)), v23));
        v22[-2] = v27;
        v22[-1] = v28;
        *v22 = v29;
        v22[1] = vmlaq_f32(0, v20, v26);
        v22 += 4;
        v21 += 2;
        v24 -= 16;
      }

      while (v24);
      if (v19 == v7)
      {
        return 0;
      }

      if ((v7 & 0xC) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v19 = 0;
    }

    v30 = v19;
    v31 = vdupq_lane_s32(*&a5, 0);
    v19 = v7 & 0x7FFFFFFC;
    v32 = (a3 + 2 * v30 + 4);
    v33 = (v18 + 4 * v30);
    v34 = v30 - v19;
    v35.i64[0] = 0x3F0000003F000000;
    v35.i64[1] = 0x3F0000003F000000;
    do
    {
      v36 = *v32++;
      *v33++ = vmlaq_f32(0, v31, vaddq_f32(vcvtq_f32_u32(vmovl_u16(v36)), v35));
      v34 += 4;
    }

    while (v34);
    if (v19 == v7)
    {
      return 0;
    }

    goto LABEL_25;
  }

  return 0;
}

uint64_t decode_ang2_fix(uint64_t a1, char a2, int *a3, unint64_t a4)
{
  v4 = a4 - 4;
  if (a4 >= 4)
  {
    v9 = (a3 + 1);
    v10 = *a3;
    v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
    v13 = *(a1 + 16);
    if (v13 < v10)
    {
      v14 = 2 * v13;
      v15 = v13 == 0;
      v16 = 32;
      if (!v15)
      {
        v16 = v14;
      }

      if (v16 <= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        v18 = v11;
        v19 = malloc_type_realloc(*(a1 + 8), 8 * v17, 0x100004000313F17uLL);
        v11 = v18;
        *(a1 + 8) = v19;
      }

      *(a1 + 16) = v17;
    }

    *a1 = v10;
    v20 = 2 * v10;
    if (v10 < 1)
    {
      if (v4 - v20 >= v20 && v4 >= v20)
      {
        v5 = 0;
      }

      else
      {
        v5 = 2;
      }

      goto LABEL_56;
    }

    *v12.i32 = 6.2832 / (1 << a2);
    v21 = v10;
    v22 = *(a1 + 8);
    v23 = v4 - v20;
    if (v4 < v20)
    {
      v5 = 2;
      v23 = v4;
LABEL_35:
      v48 = v11;
      v49 = v22;
      v50 = v10;
      do
      {
        v51 = v48->i32[0];
        v48 = (v48 + 4);
        *v49 = v51;
        v49 += 2;
        --v50;
      }

      while (v50);
      if (v4 < v20)
      {
        goto LABEL_54;
      }

      if (v23 < v20)
      {
        v5 = 2;
        goto LABEL_54;
      }

      if (v10 < 4)
      {
        v52 = 0;
LABEL_51:
        v70 = v10 - v52;
        v71 = &v11->f32[v52];
        v72 = v9 + v52;
        do
        {
          v73 = *v72++;
          *v71++ = ((v73 + 0.5) * *v12.i32) + 0.0;
          --v70;
        }

        while (v70);
LABEL_53:
        v5 = 0;
LABEL_54:
        v74 = v22 + 1;
        v75 = v11;
        do
        {
          v76 = v75->i32[0];
          v75 = (v75 + 4);
          *v74 = v76;
          v74 += 2;
          --v21;
        }

        while (v21);
LABEL_56:
        free(v11);
        return v5;
      }

      if (v10 >= 0x10)
      {
        v52 = v10 & 0x7FFFFFF0;
        v53 = vdupq_lane_s32(v12, 0);
        v54 = v9 + 1;
        v55 = v11 + 2;
        v56.i64[0] = 0x3F0000003F000000;
        v56.i64[1] = 0x3F0000003F000000;
        v57 = v52;
        do
        {
          v58 = v54[-1];
          v59 = vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(*v54)), v56);
          v60 = vmlaq_f32(0, v53, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v58.i8)), v56));
          v61 = vmlaq_f32(0, v53, vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v58)), v56));
          v62 = vmlaq_f32(0, v53, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v54->i8)), v56));
          v55[-2] = v60;
          v55[-1] = v61;
          *v55 = v62;
          v55[1] = vmlaq_f32(0, v53, v59);
          v55 += 4;
          v54 += 2;
          v57 -= 16;
        }

        while (v57);
        if (v52 == v10)
        {
          goto LABEL_53;
        }

        if ((v10 & 0xC) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v52 = 0;
      }

      v63 = v52;
      v52 = v10 & 0x7FFFFFFC;
      v64 = vdupq_lane_s32(v12, 0);
      v65 = (v9 + 2 * v63);
      v66 = (v11 + 4 * v63);
      v67 = v63 - v52;
      v68.i64[0] = 0x3F0000003F000000;
      v68.i64[1] = 0x3F0000003F000000;
      do
      {
        v69 = *v65++;
        *v66++ = vmlaq_f32(0, v64, vaddq_f32(vcvtq_f32_u32(vmovl_u16(v69)), v68));
        v67 += 4;
      }

      while (v67);
      if (v52 == v10)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    if (v10 < 4)
    {
      v25 = 0;
      v26 = a3;
LABEL_32:
      v44 = v10 - v25;
      v45 = &v11->f32[v25];
      v46 = v26 + v25 + 2;
      do
      {
        v47 = *v46++;
        *v45++ = ((v47 + 0.5) * *v12.i32) + 0.0;
        --v44;
      }

      while (v44);
LABEL_34:
      v5 = 0;
      v9 = (v9 + v20);
      goto LABEL_35;
    }

    v26 = a3;
    if (v10 >= 0x10)
    {
      v25 = v10 & 0x7FFFFFF0;
      v27 = vdupq_lane_s32(v12, 0);
      v28 = (a3 + 5);
      v29 = v11 + 2;
      v30.i64[0] = 0x3F0000003F000000;
      v30.i64[1] = 0x3F0000003F000000;
      v31 = v25;
      do
      {
        v32 = v28[-1];
        v33 = vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(*v28)), v30);
        v34 = vmlaq_f32(0, v27, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v32.i8)), v30));
        v35 = vmlaq_f32(0, v27, vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v32)), v30));
        v36 = vmlaq_f32(0, v27, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v28->i8)), v30));
        v29[-2] = v34;
        v29[-1] = v35;
        *v29 = v36;
        v29[1] = vmlaq_f32(0, v27, v33);
        v29 += 4;
        v28 += 2;
        v31 -= 16;
      }

      while (v31);
      if (v25 == v10)
      {
        goto LABEL_34;
      }

      if ((v10 & 0xC) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v25 = 0;
    }

    v37 = v25;
    v38 = vdupq_lane_s32(v12, 0);
    v25 = v10 & 0x7FFFFFFC;
    v39 = (a3 + 2 * v37 + 4);
    v40 = (v11 + 4 * v37);
    v41 = v37 - v25;
    v42.i64[0] = 0x3F0000003F000000;
    v42.i64[1] = 0x3F0000003F000000;
    do
    {
      v43 = *v39++;
      *v40++ = vmlaq_f32(0, v38, vaddq_f32(vcvtq_f32_u32(vmovl_u16(v43)), v42));
      v41 += 4;
    }

    while (v41);
    if (v25 == v10)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  return 2;
}

uint64_t decode_uchar_list_4bit(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if ((a4 & 0xFFFFFFFC) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a3;
  v4 = a3 + 1;
  v5 = v6;
  v7 = *(a1 + 16);
  if (v7 < v6)
  {
    v8 = 2 * v7;
    v9 = v7 == 0;
    v10 = 256;
    if (!v9)
    {
      v10 = v8;
    }

    if (v10 <= v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = a1;
      v13 = v4;
      v14 = malloc_type_realloc(*(a1 + 8), v11, 0x100004077774924uLL);
      v4 = v13;
      v15 = v14;
      a1 = v12;
      *(v12 + 8) = v15;
    }

    *(a1 + 16) = v11;
  }

  *a1 = v5;
  if (v5 >= 1)
  {
    v16 = 0;
    do
    {
      *(*(a1 + 8) + v16) = (16 * (*(v4 + (v16 >> 1)) >> (4 * (v16 & 1)))) | 8;
      ++v16;
    }

    while (v5 != v16);
  }

  return 0;
}

uint64_t decode_pos3f_list_rtp(uint64_t a1, int a2, int *a3, unint64_t a4, float a5)
{
  v5 = -0.5;
  if (a5 > 0.0)
  {
    v5 = 0.5;
  }

  v123 = a3;
  if (a4 >= 4)
  {
    v9 = v5 + a5;
    v10 = *a3;
    v124 = a3 + 1;
    v125 = a4 - 4;
    v11 = malloc_type_malloc(12 * v10, 0x100004052888210uLL);
    v12 = *(a1 + 16);
    if (v12 < v10)
    {
      v13 = 2 * v12;
      v14 = v12 == 0;
      v15 = 21;
      if (!v14)
      {
        v15 = v13;
      }

      if (v15 <= v10)
      {
        v16 = v10;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        *(a1 + 8) = malloc_type_realloc(*(a1 + 8), 12 * v16, 0x10000403E1C8BA9uLL);
      }

      *(a1 + 16) = v16;
    }

    v17 = v9;
    v126 = 0;
    *a1 = v10;
    float_frac_decompress(v11, v10, a2, &v123);
    v18 = 2 * v10;
    v19 = malloc_type_malloc(2 * v10, 0x1000040BDFB0063uLL);
    v6 = v126;
    if (v126)
    {
      v20 = 0;
LABEL_20:
      free(v19);
      v25 = 2 * v10;
      v26 = malloc_type_malloc(2 * v10, 0x1000040BDFB0063uLL);
      if (!v20)
      {
        goto LABEL_26;
      }

      if (v125 < 8)
      {
        v6 = 2;
        free(v26);
        if (v10 < 1)
        {
          goto LABEL_82;
        }

        goto LABEL_34;
      }

      if (v125 - 8 < *v124)
      {
        goto LABEL_32;
      }

      if (!v10)
      {
        if (v6)
        {
LABEL_71:
          free(v26);
          goto LABEL_82;
        }

LABEL_70:
        v6 = 0;
        goto LABEL_71;
      }

      v28 = v26;
      v29 = compression_decode_buffer(v26, 2 * v10, v124 + 8, *v124, 0, COMPRESSION_LZFSE);
      v26 = v28;
      if (v29 != v18)
      {
LABEL_32:
        v6 = 4;
      }

      else
      {
LABEL_26:
        if (!v6)
        {
          if (v10 >= 1)
          {
            *v27.i32 = 6.2832 / (1 << v17);
            if (v10 < 4)
            {
              v30 = 0;
LABEL_79:
              v88 = v10 - v30;
              v89 = &v11->i32[v30 + v25];
              v90 = v26 + v30;
              do
              {
                v91 = *v90++;
                *v89++ = ((v91 + 0.5) * *v27.i32) + -3.1416;
                --v88;
              }

              while (v88);
LABEL_81:
              v6 = 0;
              free(v26);
LABEL_34:
              v31 = *(a1 + 8);
              v32 = v25;
              if (v10 >= 4)
              {
                v33 = 0;
                v40 = &v11->i8[4 * v10];
                v41 = v31 + 12 * v10;
                v43 = v31 < v11 + 8 * v10 && v40 < v41;
                v45 = v31 < v40 && v11 < v41;
                if ((v11 + 4 * v25 >= v41 || v31 >= v11 + 4 * v10 + 4 * v25) && !v43 && !v45)
                {
                  v33 = v10 & 0x7FFFFFFC;
                  v47 = v33;
                  v114 = v11;
                  v48 = v31;
                  do
                  {
                    v116 = *v11;
                    v121 = *(v11 + 4 * v10);
                    v49 = __sincosf_stret(COERCE_FLOAT(HIDWORD(*(v11->i64 + 4 * v10))));
                    v51 = __sincosf_stret(*&v121);
                    v50.i64[0] = __PAIR64__(LODWORD(v49.__sinval), LODWORD(v51.__sinval));
                    v117 = v50;
                    v52 = __sincosf_stret(*(&v121 + 2));
                    v53 = v117;
                    v53.i32[2] = LODWORD(v52.__sinval);
                    v118 = v53;
                    v54 = __sincosf_stret(*(&v121 + 3));
                    v55 = v118;
                    v55.i32[3] = LODWORD(v54.__sinval);
                    v115 = vmulq_f32(v116, v55);
                    v122 = *(v11 + 4 * v25);
                    v56 = __sincosf_stret(COERCE_FLOAT(HIDWORD(*(v11->i64 + 4 * v25))));
                    v58 = __sincosf_stret(*&v122);
                    v57.i64[0] = __PAIR64__(LODWORD(v56.__cosval), LODWORD(v58.__cosval));
                    v119 = v57;
                    v59 = __sincosf_stret(*(&v122 + 2));
                    v60 = v119;
                    v60.i32[2] = LODWORD(v59.__cosval);
                    v120 = v60;
                    v61 = __sincosf_stret(*(&v122 + 3));
                    v62 = v120;
                    v62.i32[3] = LODWORD(v61.__cosval);
                    v63.i64[0] = __PAIR64__(LODWORD(v56.__sinval), LODWORD(v58.__sinval));
                    v63.i64[1] = __PAIR64__(LODWORD(v61.__sinval), LODWORD(v59.__sinval));
                    v64 = v63;
                    v63.i64[0] = __PAIR64__(LODWORD(v49.__cosval), LODWORD(v51.__cosval));
                    v63.i64[1] = __PAIR64__(LODWORD(v54.__cosval), LODWORD(v52.__cosval));
                    v127.val[2] = vmulq_f32(v116, v63);
                    v127.val[0] = vmulq_f32(v115, v62);
                    v127.val[1] = vmulq_f32(v115, v64);
                    vst3q_f32(v48, v127);
                    v48 += 12;
                    ++v11;
                    v47 -= 4;
                  }

                  while (v47);
                  v11 = v114;
                  if (v33 == v10)
                  {
                    goto LABEL_82;
                  }
                }
              }

              else
              {
                v33 = 0;
              }

              v34 = v10 - v33;
              v35 = &v11->i32[v33];
              v36 = (v31 + 12 * v33 + 4);
              do
              {
                v37 = *v35;
                v38 = v37 * sinf(v35[v10]);
                *(v36 - 1) = v38 * cosf(v35[v32]);
                *v36 = v38 * sinf(v35[v32]);
                v39 = *v35;
                v36[1] = v39 * cosf(v35[v10]);
                ++v35;
                v36 += 3;
                --v34;
              }

              while (v34);
LABEL_82:
              free(v11);
              return v6;
            }

            if (v10 >= 0x10)
            {
              v30 = v10 & 0x7FFFFFF0;
              v69 = vdupq_lane_s32(v27, 0);
              v70 = v26 + 1;
              v71 = &v11[2].i64[v25 / 2];
              v72.i64[0] = 0x3F0000003F000000;
              v72.i64[1] = 0x3F0000003F000000;
              v73 = vdupq_n_s32(0xC0490FDB);
              v74 = v30;
              do
              {
                v75 = v70[-1];
                v76 = vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(*v70)), v72);
                v77 = vmlaq_f32(v73, v69, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v75.i8)), v72));
                v78 = vmlaq_f32(v73, v69, vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v75)), v72));
                v79 = vmlaq_f32(v73, v69, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v70->i8)), v72));
                *(v71 - 32) = v77;
                *(v71 - 16) = v78;
                *v71 = v79;
                *(v71 + 16) = vmlaq_f32(v73, v69, v76);
                v71 += 64;
                v70 += 2;
                v74 -= 16;
              }

              while (v74);
              if (v30 == v10)
              {
                goto LABEL_81;
              }

              if ((v10 & 0xC) == 0)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v30 = 0;
            }

            v80 = v30;
            v30 = v10 & 0x7FFFFFFC;
            v81 = vdupq_lane_s32(v27, 0);
            v82 = (v26 + 2 * v80);
            v83 = (v11 + 4 * v80 + 4 * v25);
            v84 = v80 - v30;
            v85.i64[0] = 0x3F0000003F000000;
            v85.i64[1] = 0x3F0000003F000000;
            v86 = vdupq_n_s32(0xC0490FDB);
            do
            {
              v87 = *v82++;
              *v83++ = vmlaq_f32(v86, v81, vaddq_f32(vcvtq_f32_u32(vmovl_u16(v87)), v85));
              v84 += 4;
            }

            while (v84);
            if (v30 == v10)
            {
              goto LABEL_81;
            }

            goto LABEL_79;
          }

          goto LABEL_70;
        }
      }

      free(v26);
      if (v10 < 1)
      {
        goto LABEL_82;
      }

      goto LABEL_34;
    }

    v21 = v125 - 8;
    if (v125 < 8)
    {
      v20 = 0;
      v6 = 2;
      goto LABEL_20;
    }

    v22 = (v124 + 2);
    v23 = *v124;
    v124 += 2;
    v125 -= 8;
    v24 = v21 - v23;
    if (v21 < v23)
    {
      v20 = 0;
      v6 = 4;
      goto LABEL_20;
    }

    if (!v10)
    {
      goto LABEL_96;
    }

    v65 = v11;
    v66 = v19;
    if (compression_decode_buffer(v19, 2 * v10, v22, v23, 0, COMPRESSION_LZFSE) == v18)
    {
      v124 = &v22[v23];
      v125 = v24;
      v19 = v66;
      if (v10 >= 1)
      {
        *v67.i32 = 3.1416 / (1 << (v17 - 1));
        v11 = v65;
        if (v10 < 4)
        {
          v68 = 0;
          goto LABEL_97;
        }

        if (v10 >= 0x10)
        {
          v93 = vdupq_lane_s32(v67, 0);
          v68 = v10 & 0x7FFFFFF0;
          v94 = v19 + 1;
          v95 = v65[2].i64 + 4 * v10;
          v96.i64[0] = 0x3F0000003F000000;
          v96.i64[1] = 0x3F0000003F000000;
          v97 = v68;
          do
          {
            v98 = v94[-1];
            v99 = vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(*v94)), v96);
            v100 = vmlaq_f32(0, v93, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v98.i8)), v96));
            v101 = vmlaq_f32(0, v93, vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v98)), v96));
            v102 = vmlaq_f32(0, v93, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v94->i8)), v96));
            *(v95 - 32) = v100;
            *(v95 - 16) = v101;
            *v95 = v102;
            *(v95 + 16) = vmlaq_f32(0, v93, v99);
            v95 += 64;
            v94 += 2;
            v97 -= 16;
          }

          while (v97);
          if (v68 == v10)
          {
            goto LABEL_96;
          }

          if ((v10 & 0xC) == 0)
          {
LABEL_97:
            v110 = v10 - v68;
            v111 = &v65->i32[v68 + v10];
            v112 = v19 + v68;
            v6 = 0;
            v20 = 1;
            do
            {
              v113 = *v112++;
              *v111++ = ((v113 + 0.5) * *v67.i32) + 0.0;
              --v110;
            }

            while (v110);
            goto LABEL_20;
          }
        }

        else
        {
          v68 = 0;
        }

        v103 = v68;
        v68 = v10 & 0x7FFFFFFC;
        v104 = vdupq_lane_s32(v67, 0);
        v105 = (v19 + 2 * v103);
        v106 = (v65 + 4 * v103 + 4 * v10);
        v107 = v103 - v68;
        v108.i64[0] = 0x3F0000003F000000;
        v108.i64[1] = 0x3F0000003F000000;
        do
        {
          v109 = *v105++;
          *v106++ = vmlaq_f32(0, v104, vaddq_f32(vcvtq_f32_u32(vmovl_u16(v109)), v108));
          v107 += 4;
        }

        while (v107);
        if (v68 != v10)
        {
          goto LABEL_97;
        }

LABEL_96:
        v6 = 0;
        v20 = 1;
        goto LABEL_20;
      }

      v6 = 0;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v6 = 4;
      v19 = v66;
    }

    v11 = v65;
    goto LABEL_20;
  }

  return 2;
}

uint64_t decode_eigv_fix(uint64_t a1, char a2, int *a3, unint64_t a4, double a5)
{
  v5 = a4 - 4;
  if (a4 < 4)
  {
    return 2;
  }

  v7 = *a3;
  v8 = *(a1 + 16);
  if (v8 < v7)
  {
    v9 = 2 * v8;
    _ZF = v8 == 0;
    v11 = 64;
    if (!_ZF)
    {
      v11 = v9;
    }

    if (v11 <= v7)
    {
      v12 = *a3;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      v13 = a1;
      v14 = a2;
      v15 = a3;
      v16 = malloc_type_realloc(*(a1 + 8), 4 * v12, 0x100004052888210uLL);
      a2 = v14;
      a3 = v15;
      v17 = v16;
      a1 = v13;
      *(v13 + 8) = v17;
    }

    *(a1 + 16) = v12;
  }

  *a1 = v7;
  if (v5 < 2 * v7)
  {
    return 2;
  }

  if (v7 >= 1)
  {
    v18 = *(a1 + 8);
    *&a5 = 2.0 / (1 << a2);
    if (v7 < 4)
    {
      v19 = 0;
LABEL_25:
      v41 = v7 - v19;
      v42 = &v18->f32[v19];
      v43 = a3 + v19 + 2;
      do
      {
        v44 = *v43++;
        *v42++ = ((v44 + 0.5) * *&a5) + -1.0;
        --v41;
      }

      while (v41);
      return 0;
    }

    __asm { FMOV            V1.4S, #-1.0 }

    if (v7 >= 0x10)
    {
      v19 = v7 & 0x7FFFFFF0;
      v24 = vdupq_lane_s32(*&a5, 0);
      v25 = (a3 + 5);
      v26 = v18 + 2;
      v27.i64[0] = 0x3F0000003F000000;
      v27.i64[1] = 0x3F0000003F000000;
      v28 = v19;
      do
      {
        v29 = v25[-1];
        v30 = vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(*v25)), v27);
        v31 = vmlaq_f32(_Q1, v24, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v29.i8)), v27));
        v32 = vmlaq_f32(_Q1, v24, vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v29)), v27));
        v33 = vmlaq_f32(_Q1, v24, vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v25->i8)), v27));
        v26[-2] = v31;
        v26[-1] = v32;
        *v26 = v33;
        v26[1] = vmlaq_f32(_Q1, v24, v30);
        v26 += 4;
        v25 += 2;
        v28 -= 16;
      }

      while (v28);
      if (v19 == v7)
      {
        return 0;
      }

      if ((v7 & 0xC) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v19 = 0;
    }

    v34 = v19;
    v35 = vdupq_lane_s32(*&a5, 0);
    v19 = v7 & 0x7FFFFFFC;
    v36 = (a3 + 2 * v34 + 4);
    v37 = (v18 + 4 * v34);
    v38 = v34 - v19;
    v39.i64[0] = 0x3F0000003F000000;
    v39.i64[1] = 0x3F0000003F000000;
    do
    {
      v40 = *v36++;
      *v37++ = vmlaq_f32(_Q1, v35, vaddq_f32(vcvtq_f32_u32(vmovl_u16(v40)), v39));
      v38 += 4;
    }

    while (v38);
    if (v19 == v7)
    {
      return 0;
    }

    goto LABEL_25;
  }

  return 0;
}

uint64_t decode_uchar_list_2bit(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if ((a4 & 0xFFFFFFFC) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a3;
  v4 = a3 + 1;
  v5 = v6;
  v7 = *(a1 + 16);
  if (v7 < v6)
  {
    v8 = 2 * v7;
    v9 = v7 == 0;
    v10 = 256;
    if (!v9)
    {
      v10 = v8;
    }

    if (v10 <= v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = a1;
      v13 = v4;
      v14 = malloc_type_realloc(*(a1 + 8), v11, 0x100004077774924uLL);
      v4 = v13;
      v15 = v14;
      a1 = v12;
      *(v12 + 8) = v15;
    }

    *(a1 + 16) = v11;
  }

  *a1 = v5;
  if (v5 >= 1)
  {
    v16 = 0;
    do
    {
      *(*(a1 + 8) + v16) = (*(v4 + (v16 >> 2)) >> (2 * (v16 & 3)) << 6) | 0x20;
      ++v16;
    }

    while (v5 != v16);
  }

  return 0;
}

uint64_t decode_uchar_list_1bit(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if ((a4 & 0xFFFFFFFC) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a3;
  v4 = a3 + 1;
  v5 = v6;
  v7 = *(a1 + 16);
  if (v7 < v6)
  {
    v8 = 2 * v7;
    v9 = v7 == 0;
    v10 = 256;
    if (!v9)
    {
      v10 = v8;
    }

    if (v10 <= v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = a1;
      v13 = v4;
      v14 = malloc_type_realloc(*(a1 + 8), v11, 0x100004077774924uLL);
      v4 = v13;
      v15 = v14;
      a1 = v12;
      *(v12 + 8) = v15;
    }

    *(a1 + 16) = v11;
  }

  *a1 = v5;
  if (v5 >= 1)
  {
    v16 = 0;
    do
    {
      *(*(a1 + 8) + v16) = (*(v4 + (v16 >> 3)) >> (v16 & 7) << 7) | 0x40;
      ++v16;
    }

    while (v5 != v16);
  }

  return 0;
}

void float_frac_decompress(int8x16_t *a1, int a2, int a3, uint64_t a4)
{
  v8 = 2 * a2;
  v9 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
  v10 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
  if (!*(a4 + 24))
  {
    v11 = *(a4 + 16);
    if (v11 <= 7)
    {
      goto LABEL_12;
    }

    v12 = *(a4 + 8);
    v15 = *v12;
    v13 = (v12 + 1);
    v14 = v15;
    v16 = v11 - 8;
    *(a4 + 8) = v13;
    *(a4 + 16) = v16;
    if (v16 >= v15)
    {
      if (!a2)
      {
        goto LABEL_7;
      }

      if (compression_decode_buffer(v9, v8, v13, v14, 0, COMPRESSION_LZFSE) == v8)
      {
        v13 = (*(a4 + 8) + v14);
        v16 = *(a4 + 16) - v14;
        *(a4 + 8) = v13;
        *(a4 + 16) = v16;
        if (*(a4 + 24))
        {
          goto LABEL_15;
        }

LABEL_7:
        if (v16 > 7)
        {
          v19 = *v13;
          v17 = v13 + 8;
          v18 = v19;
          v20 = v16 - 8;
          *(a4 + 8) = v17;
          *(a4 + 16) = v20;
          if (v20 >= v19)
          {
            if (!a2)
            {
              goto LABEL_29;
            }

            if (compression_decode_buffer(v10, v8, v17, v18, 0, COMPRESSION_LZFSE) == v8)
            {
              v21 = *(a4 + 16) - v18;
              *(a4 + 8) += v18;
              *(a4 + 16) = v21;
              goto LABEL_15;
            }
          }

          goto LABEL_13;
        }

LABEL_12:
        v22 = 2;
LABEL_14:
        *(a4 + 24) = v22;
        goto LABEL_15;
      }
    }

LABEL_13:
    v22 = 4;
    goto LABEL_14;
  }

LABEL_15:
  if (a2 < 1)
  {
    goto LABEL_29;
  }

  v23 = 32 - a3;
  if (a2 < 4)
  {
    v24 = 0;
    goto LABEL_27;
  }

  v25 = vdupq_n_s32(v23);
  if (a2 >= 0x10)
  {
    v24 = a2 & 0x7FFFFFF0;
    v26 = (v9 + 16);
    v27 = (v10 + 16);
    v28 = a1 + 2;
    v29 = v24;
    do
    {
      v30 = *v26[-2].i8;
      v31 = *v27[-2].i8;
      v32 = vmovl_u16(*v31.i8);
      v33 = vmovl_u16(*v30.i8);
      v34 = vorrq_s8(vshlq_u32(vmovl_high_u16(v31), v25), vshlq_n_s32(vmovl_high_u16(v30), 0x17uLL));
      v35 = vorrq_s8(vshlq_u32(vmovl_u16(*v27), v25), vshlq_n_s32(vmovl_u16(*v26), 0x17uLL));
      v36 = vorrq_s8(vshlq_u32(vmovl_high_u16(*v27->i8), v25), vshlq_n_s32(vmovl_high_u16(*v26->i8), 0x17uLL));
      v28[-2] = vorrq_s8(vshlq_u32(v32, v25), vshlq_n_s32(v33, 0x17uLL));
      v28[-1] = v34;
      *v28 = v35;
      v28[1] = v36;
      v28 += 4;
      v26 += 4;
      v27 += 4;
      v29 -= 16;
    }

    while (v29);
    if (v24 == a2)
    {
      goto LABEL_29;
    }

    if ((a2 & 0xC) == 0)
    {
LABEL_27:
      v45 = a2 - v24;
      v46 = &a1->i32[v24];
      v47 = 2 * v24;
      v48 = &v10[2 * v24];
      v49 = &v9[v47];
      do
      {
        v50 = *v48;
        v48 += 2;
        v51 = v50 << v23;
        v52 = *v49;
        v49 += 2;
        *v46++ = v51 | (v52 << 23);
        --v45;
      }

      while (v45);
      goto LABEL_29;
    }
  }

  else
  {
    v24 = 0;
  }

  v37 = v24;
  v24 = a2 & 0x7FFFFFFC;
  v38 = &v9[2 * v37];
  v39 = &v10[2 * v37];
  v40 = (a1 + 4 * v37);
  v41 = v37 - v24;
  do
  {
    v42 = *v38++;
    v43 = v42;
    v44 = *v39++;
    *v40++ = vorrq_s8(vshlq_u32(vmovl_u16(v44), v25), vshlq_n_s32(vmovl_u16(v43), 0x17uLL));
    v41 += 4;
  }

  while (v41);
  if (v24 != a2)
  {
    goto LABEL_27;
  }

LABEL_29:
  free(v9);

  free(v10);
}

uint64_t vl_lbl_desc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v58 = 0;
  v59 = 0;
  v60 = 0;
  memset(v57, 0, sizeof(v57));
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v51, 0, sizeof(v51));
  v13 = atan2((*(a3 + 4) - *(a3 + 8)), ((*(a3 + 8) + *(a3 + 4)) + 0.0));
  v14 = v13;
  if (v13 < 0.0 || v14 >= 1.57079633)
  {
    if (v14 < 1.57079633 || v14 >= 3.14159265)
    {
      if (v13 < 0.0 && v14 >= -1.57079633)
      {
        v49 = 0;
        if (*(a6 + 212))
        {
          goto LABEL_16;
        }

LABEL_10:
        clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (a6 + 32));
        clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (a6 + 16));
        clock_gettime(_CLOCK_MONOTONIC, a6);
        if (*(a5 + 540) != a4)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      v15 = v14 < -1.57079633 && v14 >= -3.14159265;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = 3;
  }

  v49 = v15;
  if (!*(a6 + 212))
  {
    goto LABEL_10;
  }

LABEL_16:
  *(a6 + 120) -= mach_absolute_time();
  if (*(a5 + 540) != a4)
  {
LABEL_17:
    printf("Info : ");
    printf("Load lbl model: %d", a4);
    putchar(10);
    v16 = *(a5 + 536);
    if (v16 >= 1)
    {
      for (i = 0; i < v16; ++i)
      {
        v18 = *(a5 + 8 * i);
        if (v18)
        {
          lbl_feature2d_t::~lbl_feature2d_t(v18);
          MEMORY[0x2743BC950]();
          *(a5 + 8 * i) = 0;
          v16 = *(a5 + 536);
        }
      }
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 536) = 1;
    operator new();
  }

LABEL_23:
  vl_timer_stop(a6);
  if (*(a5 + 536) != 1)
  {
    printf("%sError : ", "");
    printf("Multi-scale not supported on device");
    putchar(10);
  }

  v19 = *a5;
  v61.tv_sec = 0;
  *&v61.tv_usec = 0;
  gettimeofday(&v61, 0);
  tv_sec = v61.tv_sec;
  tv_usec = v61.tv_usec;
  v48 = a7;
  if (*(a7 + 212))
  {
    *(a7 + 120) -= mach_absolute_time();
  }

  else
  {
    clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (a7 + 32));
    clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (a7 + 16));
    clock_gettime(_CLOCK_MONOTONIC, a7);
  }

  lbl_par_ver(v51, a4);
  v61.tv_sec = 0;
  *&v61.tv_usec = 0;
  gettimeofday(&v61, 0);
  v22 = v61.tv_usec + 1000000 * v61.tv_sec;
  printf("Info (toc) : ");
  printf("scale and rot");
  printf(": %f ms", ((-1000000 * tv_sec - tv_usec + v22) / 1000.0));
  putchar(10);
  v23 = DWORD2(v54);
  v24 = *a2;
  v26 = *(a2 + 8);
  v25 = *(a2 + 12);
  v27 = objc_autoreleasePoolPush();
  lbl_feature2d_t::forward(v19, v24, v26, v25, v57, &v58, v49, v23);
  objc_autoreleasePoolPop(v27);
  v61.tv_sec = 0;
  *&v61.tv_usec = 0;
  gettimeofday(&v61, 0);
  v28 = v61.tv_usec + 1000000 * v61.tv_sec;
  printf("Info (toc) : ");
  printf("run_desc");
  printf(": %f ms", ((v28 - v22) / 1000.0));
  putchar(10);
  v65 = 0u;
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  v61 = 0;
  v62 = 0u;
  v66 = (v60 / v59);
  lbl_feature_extract_kpts_score_map(&v61, v64, &v62 + 8, v57, 0, &v58, 0, DWORD2(v55), DWORD1(v55), SHIDWORD(v52), v55, SDWORD2(v54), 0);
  vl_kpts2_to_kpt_list(&v61.tv_sec, a8);
  free(*&v61.tv_usec);
  free(v63);
  free(*(&v64[0] + 1));
  free(v65);
  v61.tv_sec = 0;
  *&v61.tv_usec = 0;
  gettimeofday(&v61, 0);
  v29 = v61.tv_usec + 1000000 * v61.tv_sec;
  printf("Info (toc) : ");
  printf("get_points");
  printf(": %f ms", ((v29 - v28) / 1000.0));
  putchar(10);
  v30 = *(v19 + 1576);
  if (v30)
  {
    v31 = (v30 + 408);
    v32 = (v30 + 412);
    v33 = *a8;
    v34 = v48;
    if (*a8 < 1)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v35 = *(v19 + 1568);
    v31 = (v35 + 412);
    v32 = (v35 + 408);
    v33 = *a8;
    v34 = v48;
    if (*a8 < 1)
    {
      goto LABEL_43;
    }
  }

  v36 = *v32;
  v37 = *v31;
  if (v37 < v36)
  {
    __assert_rtn("_rotate_back_kpts90", "vl_kpts_lbl.c", 40, "width >= height");
  }

  v38 = __PAIR64__(v36, v37);
  v39.i64[0] = v37;
  v39.i64[1] = v36;
  v40 = vdiv_f32(vcvt_f32_s32(*(a2 + 8)), vcvt_f32_f64(vcvtq_f64_u64(v39)));
  v41 = a8[1];
  v42 = vcvt_f32_s32(vadd_s32(v38, -1));
  if (v49 > 1)
  {
    if (v49 == 3)
    {
      do
      {
        v44.i32[0] = v41->i32[1];
        v44.f32[1] = v42.f32[1] - v41->f32[0];
        *v41 = vmul_f32(v40, v44);
        v41 += 36;
        --v33;
      }

      while (v33);
    }

    else
    {
      do
      {
        *v41 = vmul_f32(v40, vsub_f32(v42, *v41));
        v41 += 36;
        --v33;
      }

      while (v33);
    }
  }

  else if (v49)
  {
    do
    {
      v43.f32[0] = v42.f32[0] - v41->f32[1];
      v43.i32[1] = v41->i32[0];
      *v41 = vmul_f32(v40, v43);
      v41 += 36;
      --v33;
    }

    while (v33);
  }

  else
  {
    do
    {
      *v41 = vmul_f32(v40, *v41);
      v41 += 36;
      --v33;
    }

    while (v33);
  }

LABEL_43:
  v61.tv_sec = 0;
  *&v61.tv_usec = 0;
  gettimeofday(&v61, 0);
  v45 = v61.tv_sec;
  v46 = v61.tv_usec;
  printf("Info (toc) : ");
  printf("scale_and_rotate_inv");
  printf(": %f ms", ((1000000 * v45 - v29 + v46) / 1000.0));
  putchar(10);
  return vl_timer_stop(v34);
}

__n64 p_klt(uint64_t *a1, uint64_t *a2, float *a3, float *a4, int a5, float a6, float a7)
{
  *a3 = a6;
  *a4 = a7;
  v10 = *(a2 + 2);
  if (v10 != *(a2 + 3))
  {
    __assert_rtn("p_klt", "p_corr.c", 60, "im_template->x_size == im_template->y_size");
  }

  v11 = (v10 * v10 * v10 * v10);
  v12 = (2 * v10);
  if (v10 < 1)
  {
    result.n64_u32[1] = 0;
    if ((0.0 / v11) >= v12)
    {
      v58 = (a5 & ~(a5 >> 31)) + 1;
      do
      {
        *a3 = NAN;
        *a4 = NAN;
        --v58;
      }

      while (v58);
      return 0;
    }

LABEL_40:
    result.n64_u32[0] = 2139095039;
    return result;
  }

  v13 = 0;
  v14 = vcvts_n_f32_s32(v10, 1uLL);
  v15 = *a2;
  v16 = a2[2];
  v17 = *a1;
  v18 = a1[2];
  do
  {
    v19 = 0;
    v20 = (a7 - v14) + 0.5;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = v15;
    v25 = 0.0;
    result.n64_u64[0] = 0;
    v27 = 0.0;
    do
    {
      v28 = 0;
      v29 = v20 + v19;
      v30 = v29;
      do
      {
        v46 = ((*a3 - v14) + 0.5) + v28;
        v47 = v46;
        if (v46 < 0)
        {
          if (v47 == -1)
          {
            v50 = 0;
            if (*(a1 + 2) - 1 <= -1)
            {
              LODWORD(v51) = *(a1 + 2) - 1;
            }

            else
            {
              LODWORD(v51) = 0;
            }

            v51 = v51;
            if ((v30 & 0x80000000) == 0)
            {
LABEL_27:
              v52 = *(a1 + 3);
              LODWORD(v32) = v52 - 1;
              if (v52 <= v30)
              {
                v31 = v52 - 1;
              }

              else
              {
                v31 = v29;
              }

              goto LABEL_30;
            }
          }

          else
          {
            v50 = 0;
            v51 = 0;
            if ((v30 & 0x80000000) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v48 = *(a1 + 2);
          v49 = v48 - 1;
          if (v48 <= v47)
          {
            v50 = v48 - 1;
          }

          else
          {
            v50 = v46;
          }

          if (v49 <= v47)
          {
            LODWORD(v51) = v49;
          }

          else
          {
            LODWORD(v51) = v47 + 1;
          }

          v51 = v51;
          if ((v30 & 0x80000000) == 0)
          {
            goto LABEL_27;
          }
        }

        if (v30 != -1)
        {
          v31 = 0;
          v32 = 0;
          goto LABEL_9;
        }

        v31 = 0;
        LODWORD(v32) = *(a1 + 3) - 1;
LABEL_30:
        if (v32 > v30)
        {
          LODWORD(v32) = v29 + 1;
        }

        v32 = v32;
LABEL_9:
        *&v33 = v31;
        v34 = v46 - v50;
        *&v35 = v29 - v31;
        v36 = v17 + v18 * v31;
        LOBYTE(v33) = *(v36 + v50);
        v37 = v33;
        v38 = v17 + v32 * v18;
        LOBYTE(v7) = *(v38 + v50);
        LOBYTE(v8) = *(v36 + v51);
        v39 = LODWORD(v7);
        v40 = LODWORD(v8);
        LOBYTE(v9) = *(v38 + v51);
        v9 = ((v37 + LODWORD(v9)) - v39) - v40;
        v8 = v40 - v37;
        v7 = v39 - v37;
        v41 = v8 + (*&v35 * v9);
        v42 = v7 + (v34 * v9);
        v43 = ((v34 * v8) + ((v34 * *&v35) * v9)) + (*&v35 * v7);
        LOBYTE(v35) = *(v24 + v28);
        v44 = v43 + v37;
        v45 = v35;
        result.n64_f32[0] = result.n64_f32[0] + vabds_f32(v44, v45);
        v21 = v21 + (v41 * v41);
        v23 = v23 + (v41 * v42);
        v22 = v22 + (v42 * v42);
        v25 = v25 - ((v44 - v45) * v41);
        v27 = v27 - ((v44 - v45) * v42);
        ++v28;
      }

      while (v10 != v28);
      v24 += v16;
      ++v19;
    }

    while (v19 != v10);
    v53 = (v21 * v22) - (v23 * v23);
    if ((v53 / v11) < v12)
    {
      goto LABEL_40;
    }

    v54 = ((v25 * v22) - (v27 * v23)) / v53;
    v55 = ((v27 * v21) - (v25 * v23)) / v53;
    *a3 = *a3 + v54;
    a7 = v55 + *a4;
    *a4 = a7;
    v56 = fabsf(v54);
    v57 = fabsf(v55);
    if (v56 <= v57)
    {
      v56 = v57;
    }

    if (v13 >= a5)
    {
      break;
    }

    ++v13;
  }

  while (v56 >= 0.0001);
  return result;
}

uint64_t log_col_app(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20](a1);
  v16 = *MEMORY[0x277D85DE8];
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  __vsprintf_chk(v15, 0, 0x4000uLL, v9, &a9);
  if (vl_log_callback)
  {
    return vl_log_callback(vl_log_callback_context, v15, v14);
  }

  printf("Verbose : ");
  printf("%s", v15);
  return putchar(10);
}

float vl_gt_get_pose_err(float32x2_t *a1, float32x2_t *a2, float *a3, float *a4)
{
  *a3 = 0.0;
  v5 = a1[4].f32[1] - a2[4].f32[1];
  v6 = (v5 * v5) + 0.0;
  *a3 = v6;
  v7 = a1[5].f32[0] - a2[5].f32[0];
  v8 = v6 + (v7 * v7);
  *a3 = v8;
  v9 = a1[5].f32[1] - a2[5].f32[1];
  *a3 = sqrtf(v8 + (v9 * v9));
  v10 = vcvtq_f64_f32(a2[1]);
  v18[0] = vcvtq_f64_f32(*a2);
  v18[1] = v10;
  *&v10.f64[0] = a2[4];
  v11 = vcvtq_f64_f32(a2[5]);
  v12 = vcvtq_f64_f32(a2[3]);
  v18[2] = vcvtq_f64_f32(a2[2]);
  v18[3] = v12;
  v18[4] = vcvtq_f64_f32(*&v10.f64[0]);
  v18[5] = v11;
  *&v10.f64[0] = a1[4];
  v13 = vcvtq_f64_f32(a1[5]);
  v14 = vcvtq_f64_f32(a1[1]);
  v17[0] = vcvtq_f64_f32(*a1);
  v17[1] = v14;
  v15 = vcvtq_f64_f32(a1[3]);
  v17[2] = vcvtq_f64_f32(a1[2]);
  v17[3] = v15;
  v17[4] = vcvtq_f64_f32(*&v10.f64[0]);
  v17[5] = v13;
  result = g_coords_angle_diff(v18, v17);
  *a4 = result;
  return result;
}

uint64_t vl_pose_score(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v10;
  v13 = v12;
  v351 = v14;
  v344 = v15;
  v345 = v16;
  v18 = v17;
  v19 = v9;
  v393 = *MEMORY[0x277D85DE8];
  v382 = 0;
  memset(&v381[64], 0, 32);
  memset(&v381[32], 0, 32);
  memset(v381, 0, 32);
  v379 = 0u;
  v380 = 0u;
  *v377 = 0u;
  v378 = 0u;
  *v375 = 0u;
  v376 = 0u;
  v373 = 0u;
  *v374 = 0u;
  *v372 = 0u;
  v371 = 0;
  *v369 = 0u;
  *v370 = 0u;
  *v367 = 0u;
  *v368 = 0u;
  *v366 = 0u;
  *&v383.tv_usec = 0;
  v383.tv_sec = 0;
  gettimeofday(&v383, 0);
  v363 = 0u;
  v361 = 0u;
  memset(v362, 0, sizeof(v362));
  v360 = 0;
  v353 = v11;
  v341 = *(v11 + 76);
  v357 = 0;
  ptr = 0;
  v359 = 0;
  *&v381[84] = -1;
  *&v381[64] = 0x400uLL;
  v20 = malloc_type_malloc(0xD000uLL, 0x1000040B62306B4uLL);
  *&v381[48] = xmmword_271105F70;
  *&v381[40] = malloc_type_realloc(0, 0x100uLL, 0x2004093837F09uLL);
  *&v381[32] = 1;
  **&v381[40] = v20;
  HIDWORD(v363.f64[1]) = -1;
  v362[3] = 1024;
  v363.f64[0] = 0.0;
  v21 = malloc_type_malloc(0xD000uLL, 0x1000040B62306B4uLL);
  *&v362[1] = xmmword_271105F70;
  *&v361.f64[1] = 1;
  v362[0] = malloc_type_realloc(0, 0x100uLL, 0x2004093837F09uLL);
  *v362[0] = v21;
  if (*(v19 + 1412))
  {
    *(v19 + 1320) -= mach_absolute_time();
    v364 = 0uLL;
    v365 = 0.0;
    if (!vl_ps_debug_printout)
    {
      goto LABEL_8;
    }
  }

  else
  {
    clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (v19 + 1232));
    clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (v19 + 1216));
    clock_gettime(_CLOCK_MONOTONIC, (v19 + 1200));
    v364 = 0uLL;
    v365 = 0.0;
    if (!vl_ps_debug_printout)
    {
      goto LABEL_8;
    }
  }

  v387 = 0;
  v388 = 0u;
  v385 = 0u;
  v386 = 0u;
  v383 = 0;
  v384 = 0u;
  g_camera_global_to_local((v345 + 240), (v19 + 1440), &v383.tv_sec);
  v22 = vcvt_f32_f64(v388);
  v23 = vcvt_hight_f32_f64(vcvt_f32_f64(v383), v384);
  v24 = vcvt_hight_f32_f64(vcvt_f32_f64(v385), v386);
  v25 = vcvt_f32_f64(v387);
  v26 = 0.0;
  if (fabsf(vcvt_f32_f64(v386).f32[0]) < 1.0)
  {
    v349 = v22;
    v346 = v23;
    v342 = v24;
    v27 = atan2(v23.f32[3], v23.f32[0]);
    v24 = v342;
    v23 = v346;
    v22 = v349;
    v26 = v27;
  }

  v382 = __PAIR64__(LODWORD(v26), v22.u32[1]);
  *&v381[88] = vext_s8(v25, v22, 4uLL);
  v378 = v23;
  v379 = v24;
  *(&v380 + 1) = v22;
  *&v380 = v25;
LABEL_8:
  vl_dump_ps_args_store(*(v19 + 1536), v18, v344, v345, v351, v13, (v19 + 1440));
  *(v11 + 48) = 1;
  *(v19 + 120) = 0u;
  v28 = (v19 + 120);
  *(v19 + 264) = 0u;
  *(v19 + 280) = 0u;
  *(v19 + 296) = 0u;
  *(v19 + 312) = 0u;
  *(v19 + 328) = 0;
  *(v19 + 232) = 0u;
  *(v19 + 248) = 0u;
  *(v19 + 200) = 0u;
  *(v19 + 216) = 0u;
  *(v19 + 168) = 0u;
  *(v19 + 184) = 0u;
  *(v19 + 136) = 0u;
  *(v19 + 152) = 0u;
  *(v19 + 268) = *"filter_corr";
  *(v19 + 284) = *&algn_271105F8C[4];
  *(v19 + 300) = xmmword_271105FA0;
  *(v19 + 316) = unk_271105FB0;
  *(v19 + 332) = 1;
  *(v19 + 528) = 0u;
  *(v19 + 512) = 0u;
  *(v19 + 496) = 0u;
  *(v19 + 480) = 0u;
  *(v19 + 544) = 0;
  *(v19 + 464) = 0u;
  *(v19 + 448) = 0u;
  *(v19 + 432) = 0u;
  *(v19 + 416) = 0u;
  *(v19 + 400) = 0u;
  *(v19 + 384) = 0u;
  *(v19 + 368) = 0u;
  *(v19 + 352) = 0u;
  *(v19 + 336) = 0u;
  *(v19 + 484) = *"vote";
  *(v19 + 500) = unk_271105FD1;
  *(v19 + 516) = xmmword_271105FE1;
  *(v19 + 532) = unk_271105FF1;
  *(v19 + 548) = 1;
  *(v19 + 760) = 0;
  *(v19 + 728) = 0u;
  *(v19 + 744) = 0u;
  *(v19 + 696) = 0u;
  *(v19 + 712) = 0u;
  *(v19 + 664) = 0u;
  *(v19 + 680) = 0u;
  *(v19 + 632) = 0u;
  *(v19 + 648) = 0u;
  *(v19 + 600) = 0u;
  *(v19 + 616) = 0u;
  *(v19 + 568) = 0u;
  *(v19 + 584) = 0u;
  *(v19 + 552) = 0u;
  *(v19 + 700) = *"find_peaks";
  *(v19 + 716) = unk_271106012;
  *(v19 + 732) = xmmword_271106022;
  *(v19 + 748) = unk_271106032;
  *(v19 + 764) = 1;
  *(v19 + 976) = 0;
  *(v19 + 960) = 0u;
  *(v19 + 944) = 0u;
  *(v19 + 928) = 0u;
  *(v19 + 912) = 0u;
  *(v19 + 896) = 0u;
  *(v19 + 880) = 0u;
  *(v19 + 864) = 0u;
  *(v19 + 848) = 0u;
  *(v19 + 832) = 0u;
  *(v19 + 816) = 0u;
  *(v19 + 800) = 0u;
  *(v19 + 784) = 0u;
  __tp = (v19 + 768);
  *(v19 + 768) = 0u;
  *(v19 + 948) = xmmword_271106063;
  *(v19 + 964) = unk_271106073;
  *(v19 + 916) = *"refine";
  *(v19 + 932) = unk_271106053;
  *(v19 + 980) = 1;
  *(v19 + 1192) = 0;
  *(v19 + 1176) = 0u;
  *(v19 + 1160) = 0u;
  *(v19 + 1128) = 0u;
  *(v19 + 1144) = 0u;
  *(v19 + 1096) = 0u;
  *(v19 + 1112) = 0u;
  *(v19 + 1064) = 0u;
  *(v19 + 1080) = 0u;
  *(v19 + 1032) = 0u;
  *(v19 + 1048) = 0u;
  *(v19 + 1000) = 0u;
  *(v19 + 1016) = 0u;
  *(v19 + 984) = 0u;
  *(v19 + 1164) = xmmword_2711060A4;
  *(v19 + 1180) = unk_2711060B4;
  *(v19 + 1132) = *"other";
  *(v19 + 1148) = unk_271106094;
  *(v19 + 1196) = 1;
  *(v19 + 1104) -= mach_absolute_time();
  if (!*v11 && *(v11 + 12) != 0.0)
  {
    __assert_rtn("vl_pose_score", "vl_pose_score.c", 399, "(par->use_vote_prio || par->max_time_ms == 0) && Max time can only be used with prio voting.");
  }

  v29 = *(v18 + 200) - *(v345 + 312);
  v30 = *(v18 + 208) - *(v345 + 320);
  v31 = *(v18 + 216) - *(v345 + 328);
  v32 = v30 * *(v345 + 280) + *(v345 + 256) * v29 + *(v345 + 304) * v31;
  v364 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(v345 + 264), v30), *(v345 + 240), v29), *(v345 + 288), v31);
  v365 = v32;
  if (*(v18 + 252) == 0.0 && *(v18 + 244) != 0.0)
  {
    __assert_rtn("vl_pose_score", "vl_pose_score.c", 405, "img->true_heading == 0 && If no heading prior is available, we require true_heading to be set to 0.");
  }

  v336 = (v19 + 484);
  v337 = (v19 + 700);
  v338 = (v19 + 916);
  v339 = (v19 + 1132);
  *&v383.tv_usec = 0;
  v383.tv_sec = 0;
  gettimeofday(&v383, 0);
  tv_sec = v383.tv_sec;
  tv_usec = v383.tv_usec;
  vl_ps_grid_setup(&v381[8], (v345 + 240), &v364, v13, v353, *(v18 + 228));
  *&v383.tv_usec = 0;
  v383.tv_sec = 0;
  gettimeofday(&v383, 0);
  v35 = v383.tv_usec + 1000000 * v383.tv_sec;
  printf("Verbose (toc) : ");
  printf("vl_pose_score:grid setup");
  printf(": %f ms", ((-1000000 * tv_sec - tv_usec + v35) / 1000.0));
  putchar(10);
  v343 = v18;
  v36 = v353;
  vl_ps_cam_init(v372);
  vl_ps_precomp_create(v345, v372, v366, v353);
  v37 = *&v381[56];
  if (*&v381[56] >= 1)
  {
    v38 = *&v381[40];
    v39 = *(v353 + 116);
    if (v39 < 1)
    {
      *(**&v381[40] + 28) = -1;
    }

    else
    {
      v40 = 0;
      v41 = *&v381[64];
      v42 = *&v381[80];
      v43 = *&v381[80];
      while (1)
      {
        v45 = *(v38 + 8 * (v40 / v41)) + 52 * (v40 % v41);
        *(v45 + 28) = -1;
        if (v39 == 1)
        {
          v46 = 3.4028e38;
        }

        else
        {
          v46 = *(v353 + 84);
        }

        v47 = *(v45 + 12);
        if (v46 * 1.5 > v43)
        {
          v48 = 3.4028e38;
        }

        else
        {
          v48 = v46;
        }

        if (v46 < v42)
        {
          v46 = v48;
        }

        if (v47 < 0.0 || v47 >= v46)
        {
          break;
        }

        LODWORD(i) = 0;
LABEL_16:
        *(v45 + 28) = i;
        if (++v40 == v37)
        {
          goto LABEL_48;
        }
      }

      if (v39 != 1)
      {
        v50 = (v353 + 88);
        for (i = 1; v39 != i; ++i)
        {
          if (i >= (v39 - 1))
          {
            v51 = 3.4028e38;
            if (v42 > 3.4028e38 && 3.4028e38 * 1.5 > v43)
            {
LABEL_36:
              v51 = 3.4028e38;
            }
          }

          else
          {
            v51 = *v50;
            v52 = *v50 >= v42 || *v50 * 1.5 <= v43;
            if (!v52)
            {
              goto LABEL_36;
            }
          }

          if (v47 >= *(v50 - 1) && v47 < v51)
          {
            goto LABEL_16;
          }

          ++v50;
        }
      }
    }

    __assert_rtn("vl_ps_grid_flag_concentric", "vl_pose_score.c", 205, "cell->sub_region_flag != -1 && Cell not part of any sub-region");
  }

LABEL_48:
  *&v383.tv_usec = 0;
  v383.tv_sec = 0;
  gettimeofday(&v383, 0);
  v55 = v383.tv_sec;
  v56 = v383.tv_usec;
  printf("Verbose (toc) : ");
  printf("vl_pose_score:other setup");
  printf(": %f ms", ((1000000 * v55 - v35 + v56) / 1000.0));
  putchar(10);
  v352 = v19 + 120;
  if (*v353)
  {
    v347 = vl_ps_vote_prio(v343);
    goto LABEL_50;
  }

  if (*(v353 + 116) >= 1)
  {
    v119 = 0;
    v347 = 1;
    v350 = v19;
    while (1)
    {
      v354 = 0;
      v355 = 0;
      v356 = 0;
      HIDWORD(v363.f64[1]) = -1;
      v363.f64[0] = 0.0;
      v360 = *&v381[8];
      v362[2] = 0;
      v361.f64[0] = *&v381[24];
      *&v381[80] = -1082130432;
      v120 = *&v381[56];
      v348 = v119;
      if (*&v381[56] >= 1)
      {
        v121 = 0;
        do
        {
          v122 = *(*&v381[40] + 8 * (v121 / *&v381[64])) + 52 * (v121 % *&v381[64]);
          if (*(v122 + 28) == v119)
          {
            v123 = vl_ps_grid_cell_add(&v360);
            v119 = v348;
            v124 = *v122;
            v125 = *(v122 + 16);
            v126 = *(v122 + 32);
            *(v123 + 48) = *(v122 + 48);
            *(v123 + 16) = v125;
            *(v123 + 32) = v126;
            *v123 = v124;
            v120 = *&v381[56];
          }

          ++v121;
        }

        while (v120 > v121);
      }

      vl_timer_stop(&v28[54]);
      v385 = *&v381[40];
      v386 = *&v381[56];
      v387 = *&v381[72];
      v383 = *&v381[8];
      v384 = *&v381[24];
      *&v381[24] = v361;
      *&v381[40] = *v362;
      *&v381[56] = *&v362[2];
      *&v381[72] = v363;
      *&v381[8] = v360;
      *&v362[2] = v386;
      v363 = v387;
      v361 = v384;
      *v362 = v385;
      v360 = v383;
      if ((*(v36 + 120) & 0x80000000) == 0)
      {
        v127 = 0;
        do
        {
          vl_ps_vote(&v381[8], v372, v366, v28, v36);
          if (*(v19 + 1196))
          {
            *(v19 + 1104) -= mach_absolute_time();
          }

          else
          {
            clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (v19 + 1016));
            clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (v19 + 1000));
            clock_gettime(_CLOCK_MONOTONIC, v28 + 54);
          }

          vl_ps_get_hyps(&v381[8], v372, &v354, v36);
          if (*(v36 + 48) >= 2)
          {
            if (v354 >= 1)
            {
              v132 = v355;
              if (v355)
              {
                v133 = 0;
                v134 = 1;
LABEL_105:
                v135 = &v132[v133];
                printf(" %4.1f, ", *&v132[v133]);
                printf(" angle : %4.1f  (offset : %3.2f, %3.2f, %3.2f) \n", v135[5] * 180.0 / 3.14159265, v135[2], v135[3], v135[4]);
                while (v354 > v134)
                {
                  v132 = v355;
                  ++v134;
                  v133 += 160;
                  if (v355)
                  {
                    goto LABEL_105;
                  }
                }
              }
            }

            puts("\n--------------------------");
          }

          if (vl_ps_debug_printout && *(v36 + 48) <= 1)
          {
            if (v354 >= 1)
            {
              v136 = v355;
              if (v355)
              {
                v137 = 0;
                v138 = 1;
LABEL_114:
                v139 = &v136[v137];
                printf(" %4.1f, ", *&v136[v137]);
                printf(" angle : %4.1f  (offset : %3.2f, %3.2f, %3.2f) \n", v139[5] * 180.0 / 3.14159265, v139[2], v139[3], v139[4]);
                while (v354 > v138)
                {
                  v136 = v355;
                  ++v138;
                  v137 += 160;
                  if (v355)
                  {
                    goto LABEL_114;
                  }
                }
              }
            }

            puts("\n--------------------------");
          }

          if (v127 < *(v36 + 120))
          {
            *&v381[84] = -1;
            *&v381[56] = 0;
            *&v381[72] = 0;
            v140 = v354;
            if (v354 >= 1)
            {
              v141 = *(v353 + 124);
              if (v141 >= 1)
              {
                v142 = 0;
                v143 = *(v353 + 128);
                v144 = v141;
                do
                {
                  v145 = (v355 + 160 * v142);
                  v146 = ceilf((v145[8] / v145[6]) * v144);
                  if (v143 < v146)
                  {
                    v146 = v143;
                  }

                  v147 = v146;
                  if (v146 >= 1)
                  {
                    v148 = 0;
                    v149 = v147;
                    do
                    {
                      for (j = 0; j != v141; ++j)
                      {
                        v151 = 0;
                        do
                        {
                          v152 = vl_ps_grid_cell_add(&v381[8]);
                          v153 = v145[6];
                          v152[4] = v153 / v144;
                          v154 = v145[7];
                          v152[5] = v154 / v144;
                          v155 = v145[8];
                          v152[6] = v155 / v149;
                          v156 = (v145[2] + (v153 * -0.5)) + ((v148 + 0.5) * (v153 / v144));
                          *v152 = v156;
                          v157 = (v145[3] + (v154 * -0.5)) + ((j + 0.5) * (v154 / v144));
                          v152[1] = v157;
                          v158 = (v145[4] + (v155 * -0.5)) + ((v151 + 0.5) * (v155 / v149));
                          v152[2] = v158;
                          v159 = sqrt((v157 - *&v381[16]) * (v157 - *&v381[16]) + (v156 - *&v381[8]) * (v156 - *&v381[8]) + (v158 - *&v381[24]) * (v158 - *&v381[24]));
                          v152[3] = v159;
                          ++v151;
                        }

                        while (v147 != v151);
                      }

                      ++v148;
                    }

                    while (v148 != v141);
                    v140 = v354;
                  }

                  ++v142;
                }

                while (v140 > v142);
              }
            }
          }

          v19 = v350;
          if (*(v350 + 1196))
          {
            v128 = *(v350 + 1104) + mach_absolute_time();
          }

          else
          {
            clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (v350 + 1048));
            clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (v350 + 1064));
            clock_gettime(_CLOCK_MONOTONIC, (v350 + 1032));
            v129 = *(v350 + 1040) - *(v350 + 992) + 1000000000 * (*(v350 + 1032) - *(v350 + 984));
            *(v350 + 1080) = v129;
            v128 = v129 + *(v350 + 1104);
            v130 = *(v350 + 1056) - *(v350 + 1008) + 1000000000 * (*(v350 + 1048) - *(v350 + 1000));
            *(v350 + 1088) = v130;
            *(v350 + 1112) += v130;
            v131 = *(v350 + 1072) - *(v350 + 1024) + 1000000000 * (*(v350 + 1064) - *(v350 + 1016));
            *(v350 + 1096) = v131;
            *(v350 + 1120) += v131;
            ++*(v350 + 1128);
          }

          v28 = v352;
          v36 = v353;
          *(v350 + 1104) = v128;
          v52 = v127++ < *(v353 + 120);
        }

        while (v52);
      }

      if (*(v19 + 980))
      {
        *(v19 + 888) -= mach_absolute_time();
        v160 = __tp;
      }

      else
      {
        clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (v19 + 800));
        clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (v19 + 784));
        v160 = __tp;
        clock_gettime(_CLOCK_MONOTONIC, __tp);
      }

      v161 = vl_ps_refine(v343);
      vl_timer_stop(v160);
      v385 = *&v381[40];
      v386 = *&v381[56];
      v387 = *&v381[72];
      v383 = *&v381[8];
      v384 = *&v381[24];
      *&v381[24] = v361;
      *&v381[40] = *v362;
      *&v381[56] = *&v362[2];
      *&v381[72] = v363;
      *&v381[8] = v360;
      *&v362[2] = v386;
      v363 = v387;
      v361 = v384;
      *v362 = v385;
      v360 = v383;
      if (*(v19 + 1196))
      {
        *(v19 + 1104) -= mach_absolute_time();
      }

      else
      {
        clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (v19 + 1016));
        clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (v19 + 1000));
        clock_gettime(_CLOCK_MONOTONIC, v28 + 54);
      }

      v162 = v161 ? v347 : 0;
      v163 = v354;
      v164 = v357;
      v347 = v162;
      if (v354 <= 0)
      {
        v170 = ptr;
      }

      else
      {
        v165 = v355;
        if (v357 + v354 > v359)
        {
          if (v359)
          {
            v166 = 2 * v359;
          }

          else
          {
            v166 = 1;
          }

          if (v166 <= v357 + v354)
          {
            v167 = v357 + v354;
          }

          else
          {
            v167 = v166;
          }

          if (v167)
          {
            v168 = v355;
            v169 = malloc_type_realloc(ptr, 160 * v167, 0x10A004031866557uLL);
            v165 = v168;
            ptr = v169;
            v163 = v354;
          }

          v359 = v167;
        }

        v170 = ptr;
        memcpy(ptr + 160 * v164, v165, 160 * v163);
        v164 += v354;
        v357 = v164;
      }

      v171 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
      if (v164)
      {
        break;
      }

LABEL_219:
      free(v171);
      v327 = v357;
      v36 = v353;
      if (v357 >= 1)
      {
        v328 = 0;
        v329 = 0;
        do
        {
          if (v329 >= *(v353 + 80) && ptr)
          {
            v330 = (ptr + v328);
            free(*(ptr + v328 + 144));
            free(v330[15]);
            free(v330[12]);
          }

          ++v329;
          v328 += 160;
        }

        while (v327 != v329);
      }

      v331 = *(v353 + 80);
      if (v331 >= v327)
      {
        v331 = v327;
      }

      v332 = v331;
      if (v359 < v331)
      {
        if (v359)
        {
          v333 = 2 * v359;
        }

        else
        {
          v333 = 1;
        }

        if (v333 <= v332)
        {
          v334 = v332;
        }

        else
        {
          v334 = v333;
        }

        if (v334)
        {
          ptr = malloc_type_realloc(ptr, 160 * v334, 0x10A004031866557uLL);
        }

        v359 = v334;
      }

      if (v332 > v327)
      {
        bzero(ptr + 160 * v327, 160 * (v332 - v327));
      }

      v335 = *(v353 + 80);
      if (v335 >= v327)
      {
        v335 = v327;
      }

      v357 = v335;
      if ((v341 & 0x80000000) == 0 && v335 >= 1 && *(ptr + 1) > (32 * v341))
      {
        free(v355);
        goto LABEL_50;
      }

      free(v355);
      v119 = v348 + 1;
      if (v348 + 1 >= *(v353 + 116))
      {
        goto LABEL_50;
      }
    }

    v172 = 0;
    v173 = 1;
    v174 = 32;
    v175 = 0;
    while (1)
    {
      v176 = ptr;
      v177 = v172;
      while (1)
      {
        if (!v173)
        {
          --v177;
          v178 = &v171[16 * v177];
          v164 = *(v178 + 1);
          v170 = &v176[160 * *v178];
        }

        if (v164 > 15)
        {
          break;
        }

        if (v164 > 1)
        {
          v179 = (v170 + 160);
          v180 = 2;
          for (k = 1; k != v164; ++k)
          {
            v182 = v179;
            v183 = v180;
            do
            {
              v184 = &v170[160 * (v183 - 2)];
              if (v184[1] >= v182[1])
              {
                break;
              }

              v391 = v175;
              v392 = v175;
              v389 = v175;
              v390 = v175;
              v387 = v175;
              v388 = v175;
              v385 = v175;
              v386 = v175;
              v383 = v175;
              v384 = v175;
              v185 = *(v182 + 4);
              v383 = *v182;
              v384 = v185;
              v186 = *(v182 + 8);
              v187 = *(v182 + 12);
              v188 = *(v182 + 20);
              v387 = *(v182 + 4);
              v388 = v188;
              v385 = v186;
              v386 = v187;
              v189 = *(v182 + 6);
              v190 = *(v182 + 7);
              v191 = *(v182 + 9);
              v391 = *(v182 + 8);
              v392 = v191;
              v389 = v189;
              v390 = v190;
              v192 = *(v184 + 1);
              *v182 = *v184;
              *(v182 + 1) = v192;
              v193 = *(v184 + 2);
              v194 = *(v184 + 3);
              v195 = *(v184 + 5);
              *(v182 + 4) = *(v184 + 4);
              *(v182 + 5) = v195;
              *(v182 + 2) = v193;
              *(v182 + 3) = v194;
              v196 = *(v184 + 6);
              v197 = *(v184 + 7);
              v198 = *(v184 + 9);
              *(v182 + 8) = *(v184 + 8);
              *(v182 + 9) = v198;
              *(v182 + 6) = v196;
              *(v182 + 7) = v197;
              v199 = v384;
              *v184 = v383;
              *(v184 + 1) = v199;
              v200 = v385;
              v201 = v386;
              v202 = v388;
              *(v184 + 4) = v387;
              *(v184 + 5) = v202;
              *(v184 + 2) = v200;
              *(v184 + 3) = v201;
              v203 = v389;
              v204 = v390;
              v205 = v392;
              *(v184 + 8) = v391;
              *(v184 + 9) = v205;
              *(v184 + 6) = v203;
              *(v184 + 7) = v204;
              --v183;
              v182 -= 40;
            }

            while (v183 > 1);
            ++v180;
            v179 += 40;
          }
        }

        v173 = 0;
        v164 = 0;
        if (v177 < 1)
        {
          goto LABEL_219;
        }
      }

      if (v164 > 0x27)
      {
        break;
      }

      v206 = v164 >> 1;
      v207 = *&v170[160 * (v164 >> 1) + 4];
      v208 = *(v170 + 1);
      v209 = *&v170[160 * v164 - 156];
      if (v207 >= v208)
      {
        if (v209 >= v208)
        {
          if (v209 < v207)
          {
            v206 = v164 - 1;
          }
        }

        else
        {
          v206 = 0;
        }
      }

      else if (v209 >= v207)
      {
        if (v209 >= v208)
        {
          v206 = 0;
        }

        else
        {
          v206 = v164 - 1;
        }
      }

LABEL_202:
      v228 = 0;
      v229 = 0;
      v391 = v175;
      v392 = v175;
      v389 = v175;
      v390 = v175;
      v387 = v175;
      v388 = v175;
      v385 = v175;
      v386 = v175;
      v383 = v175;
      v384 = v175;
      v230 = *(v170 + 1);
      v383 = *v170;
      v384 = v230;
      v231 = *(v170 + 2);
      v232 = *(v170 + 3);
      v233 = *(v170 + 5);
      v387 = *(v170 + 4);
      v388 = v233;
      v385 = v231;
      v386 = v232;
      v234 = *(v170 + 6);
      v235 = *(v170 + 7);
      v236 = *(v170 + 9);
      v391 = *(v170 + 8);
      v392 = v236;
      v389 = v234;
      v390 = v235;
      v237 = &v170[160 * v206];
      v238 = v237[1];
      *v170 = *v237;
      *(v170 + 1) = v238;
      v239 = v237[2];
      v240 = v237[3];
      v241 = v237[5];
      *(v170 + 4) = v237[4];
      *(v170 + 5) = v241;
      *(v170 + 2) = v239;
      *(v170 + 3) = v240;
      v242 = v237[6];
      v243 = v237[7];
      v244 = v237[9];
      *(v170 + 8) = v237[8];
      *(v170 + 9) = v244;
      *(v170 + 6) = v242;
      *(v170 + 7) = v243;
      v245 = v384;
      *v237 = v383;
      v237[1] = v245;
      v246 = v385;
      v247 = v386;
      v248 = v388;
      v237[4] = v387;
      v237[5] = v248;
      v237[2] = v246;
      v237[3] = v247;
      v249 = v389;
      v250 = v390;
      v251 = v392;
      v237[8] = v391;
      v237[9] = v251;
      v237[6] = v249;
      v237[7] = v250;
      v252 = v164 - 1;
      v253 = v170 + 164;
      do
      {
        v254 = (v253 - 4);
        if ((*(v170 + 1) - *v253) <= 0.0)
        {
          ++v228;
          v391 = v175;
          v392 = v175;
          v389 = v175;
          v390 = v175;
          v387 = v175;
          v388 = v175;
          v385 = v175;
          v386 = v175;
          v383 = v175;
          v384 = v175;
          v255 = *(v253 + 12);
          v383 = *v254;
          v384 = v255;
          v256 = *(v253 + 28);
          v257 = *(v253 + 44);
          v258 = *(v253 + 76);
          v387 = *(v253 + 60);
          v388 = v258;
          v385 = v256;
          v386 = v257;
          v259 = *(v253 + 92);
          v260 = *(v253 + 108);
          v261 = *(v253 + 140);
          v391 = *(v253 + 124);
          v392 = v261;
          v389 = v259;
          v390 = v260;
          v262 = &v170[160 * v228];
          v263 = *(v262 + 1);
          *v254 = *v262;
          *(v253 + 12) = v263;
          v264 = *(v262 + 2);
          v265 = *(v262 + 3);
          v266 = *(v262 + 5);
          *(v253 + 60) = *(v262 + 4);
          *(v253 + 76) = v266;
          *(v253 + 28) = v264;
          *(v253 + 44) = v265;
          v267 = *(v262 + 6);
          v268 = *(v262 + 7);
          v269 = *(v262 + 9);
          *(v253 + 124) = *(v262 + 8);
          *(v253 + 140) = v269;
          *(v253 + 92) = v267;
          *(v253 + 108) = v268;
          v270 = v384;
          *v262 = v383;
          *(v262 + 1) = v270;
          v271 = v385;
          v272 = v386;
          v273 = v388;
          *(v262 + 4) = v387;
          *(v262 + 5) = v273;
          *(v262 + 2) = v271;
          *(v262 + 3) = v272;
          v274 = v389;
          v275 = v390;
          v276 = v392;
          *(v262 + 8) = v391;
          *(v262 + 9) = v276;
          *(v262 + 6) = v274;
          *(v262 + 7) = v275;
          if ((*(v170 + 1) - *v253) == 0.0)
          {
            ++v229;
            v391 = v175;
            v392 = v175;
            v389 = v175;
            v390 = v175;
            v387 = v175;
            v388 = v175;
            v385 = v175;
            v386 = v175;
            v383 = v175;
            v384 = v175;
            v277 = *(v262 + 1);
            v383 = *v262;
            v384 = v277;
            v278 = *(v262 + 2);
            v279 = *(v262 + 3);
            v280 = *(v262 + 5);
            v387 = *(v262 + 4);
            v388 = v280;
            v385 = v278;
            v386 = v279;
            v281 = *(v262 + 6);
            v282 = *(v262 + 7);
            v283 = *(v262 + 9);
            v391 = *(v262 + 8);
            v392 = v283;
            v389 = v281;
            v390 = v282;
            v284 = &v170[160 * v229];
            v285 = v284[1];
            *v262 = *v284;
            *(v262 + 1) = v285;
            v286 = v284[2];
            v287 = v284[3];
            v288 = v284[5];
            *(v262 + 4) = v284[4];
            *(v262 + 5) = v288;
            *(v262 + 2) = v286;
            *(v262 + 3) = v287;
            v289 = v284[6];
            v290 = v284[7];
            v291 = v284[9];
            *(v262 + 8) = v284[8];
            *(v262 + 9) = v291;
            *(v262 + 6) = v289;
            *(v262 + 7) = v290;
            v292 = v384;
            *v284 = v383;
            v284[1] = v292;
            v293 = v385;
            v294 = v386;
            v295 = v388;
            v284[4] = v387;
            v284[5] = v295;
            v284[2] = v293;
            v284[3] = v294;
            v296 = v389;
            v297 = v390;
            v298 = v392;
            v284[8] = v391;
            v284[9] = v298;
            v284[6] = v296;
            v284[7] = v297;
          }
        }

        v253 += 160;
        --v252;
      }

      while (v252);
      v299 = v229 + 1;
      v300 = 160 * v229;
      v301 = -160 * v229 + 160 * v228;
      do
      {
        v391 = v175;
        v392 = v175;
        v389 = v175;
        v390 = v175;
        v387 = v175;
        v388 = v175;
        v385 = v175;
        v386 = v175;
        v383 = v175;
        v384 = v175;
        v302 = &v170[v301];
        v303 = *&v170[v301 + 16];
        v383 = *&v170[v301];
        v384 = v303;
        v304 = *&v170[v301 + 32];
        v305 = *&v170[v301 + 48];
        v306 = *&v170[v301 + 80];
        v387 = *&v170[v301 + 64];
        v388 = v306;
        v385 = v304;
        v386 = v305;
        v307 = *&v170[v301 + 96];
        v308 = *&v170[v301 + 112];
        v309 = *&v170[v301 + 144];
        v391 = *&v170[v301 + 128];
        v392 = v309;
        v389 = v307;
        v390 = v308;
        v310 = &v170[v300];
        v311 = *&v170[v300 + 16];
        *v302 = *&v170[v300];
        *(v302 + 1) = v311;
        v312 = *&v170[v300 + 32];
        v313 = *&v170[v300 + 48];
        v314 = *&v170[v300 + 80];
        *(v302 + 4) = *&v170[v300 + 64];
        *(v302 + 5) = v314;
        *(v302 + 2) = v312;
        *(v302 + 3) = v313;
        v315 = *&v170[v300 + 96];
        v316 = *&v170[v300 + 112];
        v317 = *&v170[v300 + 144];
        *(v302 + 8) = *&v170[v300 + 128];
        *(v302 + 9) = v317;
        *(v302 + 6) = v315;
        *(v302 + 7) = v316;
        v318 = v384;
        *v310 = v383;
        v310[1] = v318;
        v319 = v385;
        v320 = v386;
        v321 = v388;
        v310[4] = v387;
        v310[5] = v321;
        v310[2] = v319;
        v310[3] = v320;
        v322 = v389;
        v323 = v390;
        v324 = v392;
        v310[8] = v391;
        v310[9] = v324;
        v310[6] = v322;
        v310[7] = v323;
        --v299;
        v300 -= 160;
        v301 += 160;
      }

      while (v299 > 0);
      v172 = v177 + 1;
      if (v177 + 1 >= v174)
      {
        v325 = 2 * v174;
        v171 = malloc_type_realloc(v171, 32 * v174, 0x100004000313F17uLL);
        v175 = 0;
        v176 = ptr;
        v174 = v325;
      }

      v326 = &v171[16 * v177];
      *v326 = v228 - 0x3333333333333333 * ((v170 - v176) >> 5) + 1;
      *(v326 + 1) = v164 + ~v228;
      v164 = v228 - v229;
      v173 = v228 != v229;
      v19 = v350;
      v28 = v352;
      if (v177 < 0 && !v164)
      {
        goto LABEL_219;
      }
    }

    v210 = 0;
    v211 = 0;
    v212 = 26;
    if (v164 <= 0x7D0)
    {
      v212 = 8;
    }

    v213 = 3;
    if (v164 > 0x7D0)
    {
      v213 = 9;
    }

    while (1)
    {
      v214 = (v164 - 1 + v210) / v212;
      v215 = *&v170[160 * v214 + 4];
      v216 = *&v170[160 * (v210 / v212) + 4];
      v217 = (2 * v164 - 2 + v210) / v212;
      v218 = *&v170[160 * v217 + 4];
      if (v215 >= v216)
      {
        if (v218 < v216)
        {
          goto LABEL_186;
        }

        if (v218 < v215)
        {
LABEL_188:
          *(&v383.tv_sec + v211) = v217;
          goto LABEL_180;
        }
      }

      else if (v218 >= v215)
      {
        if (v218 < v216)
        {
          goto LABEL_188;
        }

LABEL_186:
        *(&v383.tv_sec + v211) = v210 / v212;
        goto LABEL_180;
      }

      *(&v383.tv_sec + v211) = v214;
LABEL_180:
      ++v211;
      v210 += 3 * v164 - 3;
      if (v213 == v211)
      {
        while (1)
        {
          v219 = v213;
          v213 /= 3uLL;
          v220 = &v383;
          v221 = &v384;
          v222 = v213;
          do
          {
            v223 = *&v221[-1].f64[0];
            v224 = *&v221[-1].f64[1];
            v225 = *&v170[160 * v224 + 4];
            v226 = *&v170[160 * v223 + 4];
            v227 = *&v170[160 * *&v221->f64[0] + 4];
            if (v225 >= v226)
            {
              if (v227 < v226)
              {
                goto LABEL_198;
              }

              if (v227 >= v225)
              {
LABEL_191:
                v220->tv_sec = v224;
                goto LABEL_192;
              }
            }

            else
            {
              if (v227 < v225)
              {
                goto LABEL_191;
              }

              if (v227 >= v226)
              {
LABEL_198:
                v220->tv_sec = v223;
                goto LABEL_192;
              }
            }

            v220->tv_sec = *&v221->f64[0];
LABEL_192:
            v221 = (v221 + 24);
            v220 = (v220 + 8);
            --v222;
          }

          while (v222);
          if (v219 < 9)
          {
            v206 = v383.tv_sec;
            goto LABEL_202;
          }
        }
      }
    }
  }

  v347 = 1;
LABEL_50:
  *(v19 + 112) = v347;
  v57 = v357;
  if (v357 >= 1)
  {
    v58 = 0;
    v59 = 40;
    do
    {
      v63 = ptr;
      v64 = *a9;
      v65 = *(a9 + 16);
      if (*a9 >= v65)
      {
        if (v65)
        {
          v66 = 2 * v65;
        }

        else
        {
          v66 = 5;
        }

        if (v66 <= v64)
        {
          v67 = v64 + 1;
        }

        else
        {
          v67 = v66;
        }

        if (v67)
        {
          *(a9 + 8) = malloc_type_realloc(*(a9 + 8), 48 * v67, 0x1000040EED21634uLL);
          v64 = *a9;
          v57 = v357;
        }

        *(a9 + 16) = v67;
      }

      *a9 = v64 + 1;
      v60 = (*(a9 + 8) + 48 * v64);
      v61 = *&v63[v59];
      v62 = *&v63[v59 + 32];
      v60[1] = *&v63[v59 + 16];
      v60[2] = v62;
      *v60 = v61;
      ++v58;
      v59 += 160;
    }

    while (v58 < v57);
  }

  if (*&v361.f64[1] >= 1)
  {
    v68 = 0;
    do
    {
      free(*(v362[0] + v68++));
    }

    while (v68 < *&v361.f64[1]);
  }

  free(v362[0]);
  v363 = 0u;
  v361 = 0u;
  memset(v362, 0, sizeof(v362));
  v360 = 0;
  free(v366[1]);
  free(v368[1]);
  free(v369[0]);
  free(v369[1]);
  free(v370[0]);
  free(v367[0]);
  free(v367[1]);
  free(v368[0]);
  free(v370[1]);
  free(v371);
  v371 = 0;
  *v369 = 0u;
  *v370 = 0u;
  *v367 = 0u;
  *v368 = 0u;
  *v366 = 0u;
  if (*&v381[32] >= 1)
  {
    v69 = 0;
    do
    {
      free(*(*&v381[40] + 8 * v69++));
    }

    while (v69 < *&v381[32]);
  }

  free(*&v381[40]);
  memset(&v381[8], 0, 80);
  free(v372[1]);
  free(v377[0]);
  free(v374[0]);
  free(v375[1]);
  *v381 = 0;
  v379 = 0u;
  v380 = 0u;
  *v377 = 0u;
  v378 = 0u;
  *v375 = 0u;
  v376 = 0u;
  v373 = 0u;
  *v374 = 0u;
  *v372 = 0u;
  if (v357 >= 1)
  {
    v70 = ptr;
    if (ptr)
    {
      v71 = 0;
      v72 = 1;
LABEL_73:
      v73 = &v70[v71];
      free(*&v70[v71 + 144]);
      free(v73[15]);
      free(v73[12]);
      while (v72 < v357)
      {
        v70 = ptr;
        ++v72;
        v71 += 160;
        if (ptr)
        {
          goto LABEL_73;
        }
      }
    }
  }

  free(ptr);
  vl_timer_stop(v352 + 864);
  if (*(v19 + 332))
  {
    printf("Verbose : ");
    printf("Total time for %40s : %7.3f ms", (v352 + 148), *(v19 + 240) * 0.000001);
    putchar(10);
    v88 = v339;
    v89 = v337;
    if (*(v19 + 548))
    {
      goto LABEL_77;
    }
  }

  else
  {
    log_col_app("%s%s%s:%s%7.1fms%s", v74, v75, v76, v77, v78, v79, v80, &str_4_1);
    v88 = v339;
    v89 = v337;
    if (*(v19 + 548))
    {
LABEL_77:
      printf("Verbose : ");
      printf("Total time for %40s : %7.3f ms", v336, *(v19 + 456) * 0.000001);
      putchar(10);
      if (*(v19 + 764))
      {
        goto LABEL_78;
      }

      goto LABEL_247;
    }
  }

  log_col_app("%s%s%s:%s%7.1fms%s", v81, v82, v83, v84, v85, v86, v87, &str_4_1);
  if (*(v19 + 764))
  {
LABEL_78:
    printf("Verbose : ");
    printf("Total time for %40s : %7.3f ms", v89, *(v19 + 672) * 0.000001);
    putchar(10);
    if (*(v19 + 980))
    {
      goto LABEL_79;
    }

    goto LABEL_248;
  }

LABEL_247:
  log_col_app("%s%s%s:%s%7.1fms%s", v90, v91, v92, v93, v94, v95, v96, &str_4_1);
  if (*(v19 + 980))
  {
LABEL_79:
    printf("Verbose : ");
    printf("Total time for %40s : %7.3f ms", v338, *(v19 + 888) * 0.000001);
    putchar(10);
    if (*(v19 + 1196))
    {
      goto LABEL_80;
    }

LABEL_249:
    log_col_app("%s%s%s:%s%7.1fms%s", v104, v105, v106, v107, v108, v109, v110, &str_4_1);
    vl_timer_stop(v19 + 1200);
    if (*(v19 + 1412))
    {
      goto LABEL_81;
    }

    return log_col_app("%s%s%s:%s%7.1fms%s", v111, v112, v113, v114, v115, v116, v117, &str_4_1);
  }

LABEL_248:
  log_col_app("%s%s%s:%s%7.1fms%s", v97, v98, v99, v100, v101, v102, v103, &str_4_1);
  if (!*(v19 + 1196))
  {
    goto LABEL_249;
  }

LABEL_80:
  printf("Verbose : ");
  printf("Total time for %40s : %7.3f ms", v88, *(v19 + 1104) * 0.000001);
  putchar(10);
  vl_timer_stop(v19 + 1200);
  if (*(v19 + 1412))
  {
LABEL_81:
    printf("Verbose : ");
    printf("Total time for %40s : %7.3f ms", (v19 + 1348), *(v19 + 1320) * 0.000001);
    return putchar(10);
  }

  return log_col_app("%s%s%s:%s%7.1fms%s", v111, v112, v113, v114, v115, v116, v117, &str_4_1);
}

float vl_match_exhaustive(float result, uint64_t a2, void *a3, void *a4, int a5, int a6, uint64_t a7)
{
  v181[1] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    printf("%sAborting : ", "");
    printf("%s: CUDA is not available on Apple devices", "vl_match_exhaustive_cuda");
    putchar(10);
    __assert_rtn("vl_match_exhaustive_cuda", "vl_match_exhaustive.c", 214, "0");
  }

  if ((*a3 / a5) >= 1)
  {
    v163 = a5;
    v164 = a3;
    v8 = a5;
    v9 = a5 >> 4;
    v165 = (*a3 / a5) & 0x7FFFFFFFLL;
    if (a4[61] >= 1)
    {
      v162 = a5 & 0xF;
      v176 = 0;
      v10 = 0;
      v11 = a5 & 0x7FFFFFFC;
      v173 = 16;
      v12 = a5;
      while (1)
      {
        v16 = a3[1];
        v167 = *(a7 + 8);
        v169 = *(a7 + 32);
        v171 = v10;
        v17 = a4[24];
        v18 = a4[25];
        v181[0] = -1;
        v19 = v17 / v12;
        memset_pattern16(&__b, &unk_2711060D0, 8uLL);
        if (v19 < 1)
        {
          goto LABEL_66;
        }

        v22 = a4[62];
        v23 = v19 & 0x7FFFFFFF;
        if (!v162)
        {
          break;
        }

        if (a5 > 0)
        {
          v24 = 0;
          v25 = v18 + 2;
          v26 = v16 + v176;
          while (!*(v22 + 4 * v24))
          {
LABEL_11:
            v18 = (v18 + v12);
            ++v24;
            v25 = (v25 + v12);
            if (v24 == v23)
            {
              goto LABEL_66;
            }
          }

          if (a5 < 4)
          {
            v27 = 0;
            v28 = 0;
            goto LABEL_24;
          }

          if (a5 >= 0x20)
          {
            v30 = 0uLL;
            v31 = v8 & 0x7FFFFFE0;
            v32 = 0uLL;
            v33 = v25;
            v34 = (v16 + v173);
            v35 = 0uLL;
            v36 = 0uLL;
            v37 = 0uLL;
            v38 = 0uLL;
            v39 = 0uLL;
            v40 = 0uLL;
            do
            {
              v41 = *v34[-2].i8;
              v42 = *v33[-2].i8;
              v43 = vsubl_u8(*v41.i8, *v42.i8);
              v44 = vsubl_high_u8(v41, v42);
              v45 = vsubl_u8(*v34, *v33);
              v46 = vsubl_high_u8(*v34->i8, *v33->i8);
              v36 = vmlal_high_s16(v36, v44, v44);
              v35 = vmlal_s16(v35, *v44.i8, *v44.i8);
              v32 = vmlal_high_s16(v32, v43, v43);
              v30 = vmlal_s16(v30, *v43.i8, *v43.i8);
              v40 = vmlal_high_s16(v40, v46, v46);
              v39 = vmlal_s16(v39, *v46.i8, *v46.i8);
              v38 = vmlal_high_s16(v38, v45, v45);
              v37 = vmlal_s16(v37, *v45.i8, *v45.i8);
              v34 += 4;
              v33 += 4;
              v31 -= 32;
            }

            while (v31);
            v21 = vaddq_s32(v39, v35);
            v20 = vaddq_s32(vaddq_s32(v38, v32), vaddq_s32(v40, v36));
            v28 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v37, v30), v21), v20));
            if ((v8 & 0x7FFFFFE0) != v8)
            {
              v29 = v8 & 0x7FFFFFE0;
              v27 = v29;
              if ((v8 & 0x1C) == 0)
              {
                goto LABEL_24;
              }

              goto LABEL_21;
            }
          }

          else
          {
            v28 = 0;
            v29 = 0;
LABEL_21:
            v47 = v28;
            do
            {
              v20.i32[0] = *(v26 + v29);
              v21.i32[0] = *(v18->i32 + v29);
              v21.i64[0] = vmovl_u8(*v21.i8).u64[0];
              v20 = vsubl_u16(*&vmovl_u8(*v20.i8), *v21.i8);
              v47 = vmlaq_s32(v47, v20, v20);
              v29 += 4;
            }

            while (v11 != v29);
            v28 = vaddvq_s32(v47);
            v27 = v8 & 0x7FFFFFFC;
            if (v11 != v8)
            {
              do
              {
LABEL_24:
                v48 = *(v26 + v27) - v18->u8[v27];
                v28 += v48 * v48;
                ++v27;
              }

              while (v8 != v27);
            }
          }

          if (v28 < __b || v28 < v180)
          {
            if (__b >= v180)
            {
              p_b = &__b;
            }

            else
            {
              p_b = &v180;
            }

            v51 = (p_b - &__b) << 30 >> 30;
            *(v181 + v51) = v24;
            *(&__b + v51) = v28;
          }

          goto LABEL_11;
        }

        v66 = 0;
        do
        {
          if (*(v22 + 4 * v66))
          {
            if (__b > 0 || v180 >= 1)
            {
              if (__b >= v180)
              {
                v68 = &__b;
              }

              else
              {
                v68 = &v180;
              }

              v69 = (v68 - &__b) << 30 >> 30;
              *(v181 + v69) = v66;
              *(&__b + v69) = 0;
            }
          }

          ++v66;
        }

        while (v23 != v66);
LABEL_66:
        v70 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
        v71 = __b;
        v72 = HIDWORD(v181[0]);
        if (v180 < __b)
        {
          __b = v180;
          v180 = v71;
          v13 = v181[0];
        }

        else
        {
          v13 = HIDWORD(v181[0]);
          v72 = v181[0];
        }

        v14 = (v167 + 8 * v10);
        v15 = (v169 + 8 * v10);
        free(v70);
        *v14 = v72;
        *v15 = __b;
        v14[1] = v13;
        result = v180;
        v15[1] = v180;
        ++v10;
        v12 = v163;
        a3 = v164;
        v173 += v163;
        v176 += v163;
        if (v171 + 1 == v165)
        {
          return result;
        }
      }

      v52 = 0;
      while (1)
      {
        if (*(v22 + 4 * v52))
        {
          if (v9 < 1)
          {
            v59 = vaddvq_s32(0);
            v60 = __b;
            v61 = v180;
            if (v59 >= __b && v59 >= v180)
            {
              goto LABEL_35;
            }

LABEL_51:
            if (v60 >= v61)
            {
              v64 = &__b;
            }

            else
            {
              v64 = &v180;
            }

            v65 = (v64 - &__b) << 30 >> 30;
            *(v181 + v65) = v52;
            *(&__b + v65) = v59;
            goto LABEL_35;
          }

          v53 = 0;
          v54 = 0uLL;
          do
          {
            v55 = *(v16 + v176 + 16 * v53);
            v56 = *v18[2 * v53].i8;
            v57 = vabdq_u16(vzip1q_s8(v55, 0), vzip1q_s8(v56, 0));
            v58 = vabdq_u16(vzip2q_s8(v55, 0), vzip2q_s8(v56, 0));
            v54 = vpadalq_u16(vpadalq_u16(v54, vmulq_s16(v57, v57)), vmulq_s16(v58, v58));
            ++v53;
          }

          while (v9 != v53);
          v59 = vaddvq_s32(v54);
          v60 = __b;
          v61 = v180;
          if (v59 < __b || v59 < v180)
          {
            goto LABEL_51;
          }
        }

LABEL_35:
        v18 = (v18 + v12);
        if (++v52 == v23)
        {
          goto LABEL_66;
        }
      }
    }

    if ((a5 & 0xF) != 0)
    {
      if (a5 > 0)
      {
        v177 = 0;
        v73 = 0;
        v74 = a5 & 0x7FFFFFFC;
        v174 = 16;
        v75 = a5;
        while (1)
        {
          v79 = a3[1];
          v168 = *(a7 + 8);
          v170 = *(a7 + 32);
          v172 = v73;
          v80 = a4[24];
          v81 = a4[25];
          v181[0] = 0;
          v82 = v80 / v75;
          memset_pattern16(&__b, &unk_2711060D0, 8uLL);
          if (v82 >= 1)
          {
            break;
          }

          v113 = 0;
          v114 = 0;
LABEL_99:
          v115 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
          v116 = __b;
          if (v180 < __b)
          {
            __b = v180;
            v180 = v116;
            v76 = v114;
          }

          else
          {
            v76 = v113;
            v113 = v114;
          }

          v77 = (v168 + 8 * v73);
          v78 = (v170 + 8 * v73);
          free(v115);
          *v77 = v113;
          *v78 = __b;
          v77[1] = v76;
          result = v180;
          v78[1] = v180;
          ++v73;
          v174 += a5;
          v177 += a5;
          v75 = v163;
          a3 = v164;
          if (v172 + 1 == v165)
          {
            return result;
          }
        }

        v85 = 0;
        v86 = v81 + 2;
        v87 = v79 + v177;
        while (1)
        {
          if (a5 < 4)
          {
            v88 = 0;
            v89 = 0;
            do
            {
LABEL_87:
              v109 = *(v87 + v88) - v81->u8[v88];
              v89 += v109 * v109;
              ++v88;
            }

            while (a5 != v88);
            goto LABEL_88;
          }

          if (a5 >= 0x20)
          {
            v91 = 0uLL;
            v92 = v8 & 0x7FFFFFE0;
            v93 = 0uLL;
            v94 = v86;
            v95 = (v79 + v174);
            v96 = 0uLL;
            v97 = 0uLL;
            v98 = 0uLL;
            v99 = 0uLL;
            v100 = 0uLL;
            v101 = 0uLL;
            do
            {
              v102 = *v95[-2].i8;
              v103 = *v94[-2].i8;
              v104 = vsubl_u8(*v102.i8, *v103.i8);
              v105 = vsubl_high_u8(v102, v103);
              v106 = vsubl_u8(*v95, *v94);
              v107 = vsubl_high_u8(*v95->i8, *v94->i8);
              v97 = vmlal_high_s16(v97, v105, v105);
              v96 = vmlal_s16(v96, *v105.i8, *v105.i8);
              v93 = vmlal_high_s16(v93, v104, v104);
              v91 = vmlal_s16(v91, *v104.i8, *v104.i8);
              v101 = vmlal_high_s16(v101, v107, v107);
              v100 = vmlal_s16(v100, *v107.i8, *v107.i8);
              v99 = vmlal_high_s16(v99, v106, v106);
              v98 = vmlal_s16(v98, *v106.i8, *v106.i8);
              v95 += 4;
              v94 += 4;
              v92 -= 32;
            }

            while (v92);
            v84 = vaddq_s32(v100, v96);
            v83 = vaddq_s32(vaddq_s32(v99, v93), vaddq_s32(v101, v97));
            v89 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v98, v91), v84), v83));
            if ((v8 & 0x7FFFFFE0) == a5)
            {
              goto LABEL_88;
            }

            v90 = v8 & 0x7FFFFFE0;
            v88 = v90;
            if ((v8 & 0x1C) == 0)
            {
              goto LABEL_87;
            }
          }

          else
          {
            v89 = 0;
            v90 = 0;
          }

          v108 = v89;
          do
          {
            v83.i32[0] = *(v87 + v90);
            v84.i32[0] = *(v81->i32 + v90);
            v84.i64[0] = vmovl_u8(*v84.i8).u64[0];
            v83 = vsubl_u16(*&vmovl_u8(*v83.i8), *v84.i8);
            v108 = vmlaq_s32(v108, v83, v83);
            v90 += 4;
          }

          while (v74 != v90);
          v89 = vaddvq_s32(v108);
          v88 = a5 & 0x7FFFFFFC;
          if (v74 != a5)
          {
            goto LABEL_87;
          }

LABEL_88:
          if (v89 < __b || v89 < v180)
          {
            if (__b >= v180)
            {
              v111 = &__b;
            }

            else
            {
              v111 = &v180;
            }

            v112 = (v111 - &__b) << 30 >> 30;
            *(v181 + v112) = v85;
            *(&__b + v112) = v89;
          }

          v81 = (v81 + v75);
          ++v85;
          v86 = (v86 + v75);
          if (v85 == v82)
          {
            v114 = v181[0];
            v113 = HIDWORD(v181[0]);
            goto LABEL_99;
          }
        }
      }

      v145 = 0;
      v146 = a5;
      do
      {
        v150 = *(a7 + 8);
        v151 = *(a7 + 32);
        v152 = a4[24];
        v181[0] = 0;
        v153 = v152 / v146;
        memset_pattern16(&__b, &unk_2711060D0, 8uLL);
        if (v153 < 1)
        {
          v158 = 0;
          v159 = 0;
        }

        else
        {
          v154 = 0;
          do
          {
            if (__b > 0 || v180 >= 1)
            {
              if (__b >= v180)
              {
                v156 = &__b;
              }

              else
              {
                v156 = &v180;
              }

              v157 = (v156 - &__b) << 30 >> 30;
              *(v181 + v157) = v154;
              *(&__b + v157) = 0;
            }

            ++v154;
          }

          while (v153 != v154);
          v159 = v181[0];
          v158 = HIDWORD(v181[0]);
        }

        v160 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
        v161 = __b;
        if (v180 < __b)
        {
          __b = v180;
          v180 = v161;
          v147 = v159;
        }

        else
        {
          v147 = v158;
          v158 = v159;
        }

        v148 = (v150 + 8 * v145);
        v149 = (v151 + 8 * v145);
        free(v160);
        *v148 = v158;
        *v149 = __b;
        v148[1] = v147;
        result = v180;
        v149[1] = v180;
        ++v145;
        v146 = v163;
      }

      while (v145 != v165);
    }

    else
    {
      v117 = 0;
      v118 = 0;
      do
      {
        v122 = a3[1];
        v123 = *(a7 + 8);
        v178 = *(a7 + 32);
        v124 = a4[24];
        v125 = a4[25];
        v181[0] = 0;
        v126 = v124 / v163;
        memset_pattern16(&__b, &unk_2711060D0, 8uLL);
        if (v126 >= 1)
        {
          if (v9 <= 0)
          {
            v138 = 0;
            do
            {
              if (__b > 0 || v180 >= 1)
              {
                if (__b >= v180)
                {
                  v140 = &__b;
                }

                else
                {
                  v140 = &v180;
                }

                v141 = (v140 - &__b) << 30 >> 30;
                *(v181 + v141) = v138;
                *(&__b + v141) = 0;
              }

              ++v138;
            }

            while (v126 != v138);
          }

          else
          {
            v127 = 0;
            do
            {
              v128 = 0;
              v129 = 0uLL;
              do
              {
                v130 = *(v122 + v117 + 16 * v128);
                v131 = *(v125 + 16 * v128);
                v132 = vabdq_u16(vzip1q_s8(v130, 0), vzip1q_s8(v131, 0));
                v133 = vabdq_u16(vzip2q_s8(v130, 0), vzip2q_s8(v131, 0));
                v129 = vpadalq_u16(vpadalq_u16(v129, vmulq_s16(v132, v132)), vmulq_s16(v133, v133));
                ++v128;
              }

              while (v9 != v128);
              v134 = vaddvq_s32(v129);
              if (v134 < __b || v134 < v180)
              {
                if (__b >= v180)
                {
                  v136 = &__b;
                }

                else
                {
                  v136 = &v180;
                }

                v137 = (v136 - &__b) << 30 >> 30;
                *(v181 + v137) = v127;
                *(&__b + v137) = v134;
              }

              v125 += v163;
              ++v127;
            }

            while (v127 != v126);
          }
        }

        v142 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
        v143 = __b;
        v144 = HIDWORD(v181[0]);
        if (v180 < __b)
        {
          __b = v180;
          v180 = v143;
          v119 = v181[0];
        }

        else
        {
          v119 = HIDWORD(v181[0]);
          v144 = v181[0];
        }

        v120 = (v123 + 8 * v118);
        v121 = (v178 + 8 * v118);
        free(v142);
        *v120 = v144;
        *v121 = __b;
        v120[1] = v119;
        result = v180;
        v121[1] = v180;
        ++v118;
        v117 += v163;
        a3 = v164;
      }

      while (v118 != v165);
    }
  }

  return result;
}

void vl_match_exhaustive_knn_rematch(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, unsigned int a8, float a9)
{
  v146 = a8;
  v137 = a7;
  v138 = a2;
  v139 = a4;
  v150 = *MEMORY[0x277D85DE8];
  v144 = a1;
  v12 = *a1;
  v13 = *a5;
  v14 = a5[1];
  v148 = 0x3D4CCCCD00000010;
  v149 = 0;
  v15 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  if (v13 >= 1)
  {
    v16 = v13 & 0x7FFFFFFF;
    if (v16 < 8)
    {
      v17 = 0;
      do
      {
LABEL_7:
        v15->i32[v17] = v17;
        ++v17;
      }

      while (v16 != v17);
      goto LABEL_8;
    }

    v17 = v16 - (v13 & 7);
    v18 = xmmword_271103920;
    v19 = v15 + 1;
    v20.i64[0] = 0x400000004;
    v20.i64[1] = 0x400000004;
    v21.i64[0] = 0x800000008;
    v21.i64[1] = 0x800000008;
    v22 = v17;
    do
    {
      v19[-1] = v18;
      *v19 = vaddq_s32(v18, v20);
      v18 = vaddq_s32(v18, v21);
      v19 += 2;
      v22 -= 8;
    }

    while (v22);
    if ((v13 & 7) != 0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v23 = rkd_create_ex(v14, v15, 2, v13, 1, &v148);
  v147 = v23;
  v24 = *a6;
  v25 = a6[2];
  if (v12 > v25)
  {
    v30 = 2 * v25;
    v31 = v25 == 0;
    v32 = 32;
    if (!v31)
    {
      v32 = v30;
    }

    if (v32 <= v12)
    {
      v33 = v12;
    }

    else
    {
      v33 = v32;
    }

    if (v33)
    {
      v23 = malloc_type_realloc(a6[1], 8 * v33, 0x100004000313F17uLL);
      a6[1] = v23;
    }

    a6[2] = v33;
    v26 = v12 - v24;
    if (v12 <= v24)
    {
LABEL_10:
      *a6 = v12;
      v27 = a6[3];
      v28 = a6[5];
      if (v12 <= v28)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v26 = v12 - v24;
    if (v12 <= v24)
    {
      goto LABEL_10;
    }
  }

  bzero((a6[1] + 8 * *a6), 8 * v26);
  *a6 = v12;
  v27 = a6[3];
  v28 = a6[5];
  if (v12 <= v28)
  {
LABEL_11:
    v29 = v12 - v27;
    if (v12 <= v27)
    {
      goto LABEL_12;
    }

LABEL_31:
    bzero((a6[4] + 8 * a6[3]), 8 * v29);
    v145 = a6;
    a6[3] = v12;
    if (v12 < 1)
    {
      goto LABEL_85;
    }

    goto LABEL_32;
  }

LABEL_23:
  v34 = 2 * v28;
  v31 = v28 == 0;
  v35 = 32;
  if (!v31)
  {
    v35 = v34;
  }

  if (v35 <= v12)
  {
    v36 = v12;
  }

  else
  {
    v36 = v35;
  }

  if (v36)
  {
    v23 = malloc_type_realloc(a6[4], 8 * v36, 0x100004000313F17uLL);
    a6[4] = v23;
  }

  a6[5] = v36;
  v29 = v12 - v27;
  if (v12 > v27)
  {
    goto LABEL_31;
  }

LABEL_12:
  v145 = a6;
  a6[3] = v12;
  if (v12 < 1)
  {
    goto LABEL_85;
  }

LABEL_32:
  v143 = v12 & 0x7FFFFFFF;
  if ((a3 & 0xF) != 0)
  {
    if (a3 > 0)
    {
      v37 = 0;
      v38 = a3 & 0x7FFFFFFC;
      v39 = 48;
      v40 = 32;
      v135 = a3 & 0x1C;
      v136 = 4 * v146;
      v134 = -v38;
      while (1)
      {
        v140 = &v134;
        v141 = v39;
        v42 = v144[1];
        v148 = *(v42 + 288 * v37);
        MEMORY[0x28223BE20](v23);
        v44 = &v134 - ((v43 + 15) & 0x7FFFFFFF0);
        v45 = v145[1];
        v142 = v46;
        v47 = 8 * v46;
        v48 = (v45 + 8 * v46);
        v49 = (v145[4] + 8 * v46);
        v23 = rkd_knn_app(v147, &v148, 0, v44, v146, 0x7FFFFFFF, a9);
        if (v23 > 0)
        {
          break;
        }

        v89 = v137;
        *v48 = *(*(v137 + 8) + v47);
        *v49 = *(*(v89 + 32) + v47);
        v48[1] = -1;
        v49[1] = -1.0;
        v57 = v141;
LABEL_36:
        v37 = v142 + 1;
        v39 = v57 + 288;
        v40 += 288;
        if (v142 + 1 == v143)
        {
          goto LABEL_85;
        }
      }

      v52 = 0;
      v53 = 0;
      *v48 = 0;
      *v49 = 2147500000.0;
      v54 = *(v139 + 8);
      v55 = *(v138 + 200);
      v56 = v23;
      v57 = v141;
      v58 = 2147500000.0;
      v60 = v134;
      v59 = v135;
      while (1)
      {
        v61 = *(v54 + 4 * *&v44[4 * v53]) * a3;
        if (a3 >= 4)
        {
          if (a3 < 0x20)
          {
            v63 = 0;
            v64 = 0;
LABEL_48:
            v81 = v63;
            v82 = (v42 + v40 + v64);
            v23 = (v55 + v64 + v61);
            v83 = v60 + v64;
            do
            {
              v84 = *v82++;
              v50.i32[0] = v84;
              v85 = v23->i32[0];
              v23 = (v23 + 4);
              v51.i32[0] = v85;
              v51.i64[0] = vmovl_u8(*v51.i8).u64[0];
              v50 = vsubl_u16(*&vmovl_u8(*v50.i8), *v51.i8);
              v81 = vmlaq_s32(v81, v50, v50);
              v83 += 4;
            }

            while (v83);
            v63 = vaddvq_s32(v81);
            v62 = a3 & 0x7FFFFFFC;
            if (v38 == a3)
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }

          v65 = 0uLL;
          v66 = (v55 + 16 + v61);
          v67 = 0uLL;
          v23 = (v42 + v57);
          v68 = a3 & 0x7FFFFFE0;
          v69 = 0uLL;
          v70 = 0uLL;
          v71 = 0uLL;
          v72 = 0uLL;
          v73 = 0uLL;
          v74 = 0uLL;
          do
          {
            v75 = *v23[-2].i8;
            v76 = *v66[-2].i8;
            v77 = vsubl_u8(*v75.i8, *v76.i8);
            v78 = vsubl_high_u8(v75, v76);
            v79 = vsubl_u8(*v23, *v66);
            v80 = vsubl_high_u8(*v23->i8, *v66->i8);
            v70 = vmlal_high_s16(v70, v78, v78);
            v69 = vmlal_s16(v69, *v78.i8, *v78.i8);
            v67 = vmlal_high_s16(v67, v77, v77);
            v65 = vmlal_s16(v65, *v77.i8, *v77.i8);
            v74 = vmlal_high_s16(v74, v80, v80);
            v73 = vmlal_s16(v73, *v80.i8, *v80.i8);
            v72 = vmlal_high_s16(v72, v79, v79);
            v71 = vmlal_s16(v71, *v79.i8, *v79.i8);
            v23 += 4;
            v66 += 4;
            v68 -= 32;
          }

          while (v68);
          v51 = vaddq_s32(v73, v69);
          v50 = vaddq_s32(vaddq_s32(v72, v67), vaddq_s32(v74, v70));
          v63 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v71, v65), v51), v50));
          if ((a3 & 0x7FFFFFE0) == a3)
          {
            goto LABEL_53;
          }

          v64 = a3 & 0x7FFFFFE0;
          v62 = v64;
          if (v59)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v62 = 0;
          v63 = 0;
        }

LABEL_51:
        v23 = (a3 - v62);
        v86 = (v55 + v62 + v61);
        v87 = v42 + v62;
        do
        {
          v88 = *v86++;
          v63 += (*(v87 + v40) - v88) * (*(v87 + v40) - v88);
          ++v87;
          v23 = (v23 - 1);
        }

        while (v23);
LABEL_53:
        if (v58 > v63)
        {
          *v48 = v53;
          *v49 = v63;
          v52 = v53;
          v58 = v63;
        }

        if (++v53 == v56)
        {
          v41 = *&v44[4 * v52];
          *v48 = *(v54 + 4 * v41);
          v48[1] = v41;
          goto LABEL_36;
        }
      }
    }

    v115 = 0;
    v116 = 4 * v146;
    do
    {
      while (1)
      {
        v148 = *(v144[1] + 288 * v115);
        MEMORY[0x28223BE20](v23);
        v118 = (v145[1] + 8 * v115);
        v119 = (v145[4] + 8 * v115);
        v23 = rkd_knn_app(v147, &v148, 0, &v134 - ((v116 + 15) & 0x7FFFFFFF0), v146, 0x7FFFFFFF, a9);
        if (v23 >= 1)
        {
          break;
        }

        v123 = v137;
        *v118 = *(*(v137 + 8) + 8 * v115);
        *v119 = *(*(v123 + 32) + 8 * v115);
        v118[1] = -1;
        v119[1] = -1082130432;
        if (++v115 == v143)
        {
          goto LABEL_85;
        }
      }

      v120 = 0;
      v121 = 0;
      *v118 = 0;
      *v119 = 1325400064;
      v122 = 2147500000.0;
      do
      {
        if (v122 > 0.0)
        {
          *v118 = v121;
          *v119 = 0;
          v122 = 0.0;
          v120 = v121;
        }

        ++v121;
      }

      while (v23 != v121);
      v117 = *(&v134 + 4 * v120 - ((v116 + 15) & 0x7FFFFFFF0));
      *v118 = *(*(v139 + 8) + 4 * v117);
      v118[1] = v117;
      ++v115;
    }

    while (v115 != v143);
  }

  else if (a3 >> 4 <= 0)
  {
    v124 = 0;
    v125 = 4 * v146;
    do
    {
      while (1)
      {
        v148 = *(v144[1] + 288 * v124);
        MEMORY[0x28223BE20](v23);
        v127 = (v145[1] + 8 * v124);
        v128 = (v145[4] + 8 * v124);
        v23 = rkd_knn_app(v147, &v148, 0, &v134 - ((v125 + 15) & 0x7FFFFFFF0), v146, 0x7FFFFFFF, a9);
        if (v23 > 0)
        {
          break;
        }

        v132 = v137;
        *v127 = *(*(v137 + 8) + 8 * v124);
        *v128 = *(*(v132 + 32) + 8 * v124);
        v127[1] = -1;
        v128[1] = -1082130432;
        if (++v124 == v143)
        {
          goto LABEL_85;
        }
      }

      v129 = 0;
      v130 = 0;
      *v127 = 0;
      *v128 = 1325400064;
      v131 = 2147500000.0;
      do
      {
        if (v131 > 0.0)
        {
          *v127 = v130;
          *v128 = 0;
          v131 = 0.0;
          v129 = v130;
        }

        ++v130;
      }

      while (v23 != v130);
      v126 = *(&v134 + 4 * v129 - ((v125 + 15) & 0x7FFFFFFF0));
      *v127 = *(*(v139 + 8) + 4 * v126);
      v127[1] = v126;
      ++v124;
    }

    while (v124 != v143);
  }

  else
  {
    v90 = 0;
    v91 = 4 * v146;
    do
    {
      while (1)
      {
        v93 = (v144[1] + 288 * v90);
        v95 = *v93;
        v94 = (v93 + 4);
        v148 = v95;
        MEMORY[0x28223BE20](v23);
        v96 = &v134 - ((v91 + 15) & 0x7FFFFFFF0);
        v97 = (v145[1] + 8 * v90);
        v98 = (v145[4] + 8 * v90);
        v23 = rkd_knn_app(v147, &v148, 0, v96, v146, 0x7FFFFFFF, a9);
        if (v23 > 0)
        {
          break;
        }

        v114 = v137;
        *v97 = *(*(v137 + 8) + 8 * v90);
        *v98 = *(*(v114 + 32) + 8 * v90);
        v97[1] = -1;
        v98[1] = -1.0;
        if (++v90 == v143)
        {
          goto LABEL_85;
        }
      }

      v99 = 0;
      v100 = 0;
      *v97 = 0;
      *v98 = 2147500000.0;
      v101 = *(v139 + 8);
      v102 = *(v138 + 200);
      v103 = 2147500000.0;
      do
      {
        v104 = (v102 + *(v101 + 4 * *&v96[4 * v100]) * a3);
        v105 = 0uLL;
        v106 = a3 >> 4;
        v107 = v94;
        do
        {
          v108 = *v107++;
          v109 = v108;
          v110 = *v104++;
          v111 = vabdq_u16(vzip1q_s8(v109, 0), vzip1q_s8(v110, 0));
          v112 = vabdq_u16(vzip2q_s8(v109, 0), vzip2q_s8(v110, 0));
          v105 = vpadalq_u16(vpadalq_u16(v105, vmulq_s16(v111, v111)), vmulq_s16(v112, v112));
          --v106;
        }

        while (v106);
        v113 = vaddvq_s32(v105);
        if (v103 > v113)
        {
          *v97 = v100;
          *v98 = v113;
          v99 = v100;
          v103 = v113;
        }

        ++v100;
      }

      while (v100 != v23);
      v92 = *&v96[4 * v99];
      *v97 = *(v101 + 4 * v92);
      v97[1] = v92;
      ++v90;
    }

    while (v90 != v143);
  }

LABEL_85:
  v133 = v147;
  if (v147)
  {
    free(*v147);
    free(v133[1]);
    free(v133[2]);
    free(v133);
  }
}

void *rkd_create_ex(const void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0x10B0040E7E5B2BFuLL);
  v13 = a4 * a3;
  if (v13 >= 0x7FFFFFFF)
  {
    __assert_rtn("rkd_create_ex", "rkd.c", 690, "(size_t)n * k < INT32_MAX && Cannot create a rkd tree with more then INT32_MAX elements");
  }

  v14 = v12;
  if (a5)
  {
    v15 = 4 * v13;
    v16 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
    *v14 = v16;
    if (a4)
    {
      memcpy(v16, a1, v15);
    }
  }

  else
  {
    *v12 = a1;
  }

  v14[1] = a2;
  if (a4 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a4;
  }

  v18 = malloc_type_calloc(v17, 0xCuLL, 0x10000403E1C8BA9uLL);
  v14[2] = v18;
  *(v14 + 6) = a3;
  *(v14 + 7) = a4;
  if (a4 >= 1 && (a4 <= 0xC350 || v18))
  {
    rkd_split_node(v18, *v14, v14[1], a3, a4, -1, a6);
  }

  return v14;
}

double rkd_split_node(uint64_t a1, float32x4_t *a2, _DWORD *a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v75[0] = a4;
  v14 = 4 * a4;
  MEMORY[0x28223BE20](a1);
  v16 = v75 - v15;
  bzero(v75 - v15, v14);
  if (*a7 > a5)
  {
    goto LABEL_2;
  }

  v20 = *(a7 + 8);
  if (v20 == 2)
  {
    v44 = rkd_split_dim_bbox(a2, a4, a5);
  }

  else
  {
    if (v20 != 1)
    {
      if (v20)
      {
        v21 = 0xFFFFFFFFLL;
      }

      else
      {
        v21 = ((a6 + 1) % a4);
      }

      goto LABEL_39;
    }

    v44 = rkd_split_dim_sdev(a2, a4, a5);
  }

  v21 = v44;
LABEL_39:
  *(a1 + 8) = v21;
  v45 = rkd_split_median(a2, a3, a4, a5, v21, v16, *(a7 + 4));
  if (v45 == -1)
  {
    if (a4 < 2)
    {
LABEL_2:
      if (a5 <= 2)
      {
        v22 = 0.0;
        if (a5 != 2)
        {
LABEL_85:
          *a1 = v22;
          result = NAN;
          *(a1 + 4) = -1;
          return result;
        }
      }

      else
      {
        v17 = rkd_closest_to_mean(a2, a4, a5);
        v18 = &a2->f32[v17 * a4];
        memcpy(v16, v18, v14);
        memmove(v18, a2, v14);
        memcpy(a2, v16, v14);
        if (a3)
        {
          v19 = a3[v17];
          a3[v17] = *a3;
          *a3 = v19;
        }
      }

      v23 = a5 - 1;
      if (a4 == 2)
      {
        v29 = a2->f32[0];
        v30 = &a2->f32[v75[0] + 1];
        v27 = 0.0;
        do
        {
          v31 = (a2->f32[1] - *v30) * (a2->f32[1] - *v30);
          if ((v31 + ((v29 - *(v30 - 1)) * (v29 - *(v30 - 1)))) > v27)
          {
            v27 = v31 + ((v29 - *(v30 - 1)) * (v29 - *(v30 - 1)));
          }

          v30 += v75[0];
          --v23;
        }

        while (v23);
        goto LABEL_84;
      }

      if (a4 == 3)
      {
        v24 = a2->f32[0];
        v25 = a2->f32[1];
        v26 = &a2->f32[v75[0] + 2];
        v27 = 0.0;
        do
        {
          v28 = a2->f32[2] - *v26;
          if (((((v25 - *(v26 - 1)) * (v25 - *(v26 - 1))) + ((v24 - *(v26 - 2)) * (v24 - *(v26 - 2)))) + (v28 * v28)) > v27)
          {
            v27 = (((v25 - *(v26 - 1)) * (v25 - *(v26 - 1))) + ((v24 - *(v26 - 2)) * (v24 - *(v26 - 2)))) + (v28 * v28);
          }

          v26 += v75[0];
          --v23;
        }

        while (v23);
        goto LABEL_84;
      }

      if (a4 < 1)
      {
        v27 = 0.0;
LABEL_84:
        v22 = sqrtf(v27);
        goto LABEL_85;
      }

      v32 = 0;
      v27 = 0.0;
      v33 = v75[0];
      while (1)
      {
        if (a4 >= 8)
        {
          v35 = 0.0;
          v36 = a4 & 0x7FFFFFF8;
          v37 = a2;
          do
          {
            v38 = vsubq_f32(*v37, *(v37 + v33 * 4));
            v39 = vsubq_f32(v37[1], *(v37 + v33 * 4 + 16));
            v40 = vmulq_f32(v38, v38);
            v41 = vmulq_f32(v39, v39);
            v35 = (((((((v35 + v40.f32[0]) + v40.f32[1]) + v40.f32[2]) + v40.f32[3]) + v41.f32[0]) + v41.f32[1]) + v41.f32[2]) + v41.f32[3];
            v37 += 2;
            v36 -= 8;
          }

          while (v36);
          v34 = a4 & 0x7FFFFFF8;
          if (v34 == a4)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v34 = 0;
          v35 = 0.0;
        }

        v42 = a4 - v34;
        v43 = &a2->f32[v34];
        do
        {
          v35 = v35 + ((*v43 - v43[v33]) * (*v43 - v43[v33]));
          ++v43;
          --v42;
        }

        while (v42);
LABEL_24:
        if (v35 > v27)
        {
          v27 = v35;
        }

        ++v32;
        v33 += v75[0];
        if (v32 == v23)
        {
          goto LABEL_84;
        }
      }
    }

    v55 = a4 - 1;
    while (1)
    {
      v56 = ((*(a1 + 8) + 1) % a4);
      *(a1 + 8) = v56;
      v45 = rkd_split_median(a2, a3, a4, a5, v56, v16, *(a7 + 4));
      if (v45 != -1)
      {
        break;
      }

      if (!--v55)
      {
        goto LABEL_2;
      }
    }
  }

  v46 = v45;
  v47 = &a2->f32[v45 * a4];
  memcpy(v16, v47, v14);
  memmove(v47, a2, v14);
  memcpy(a2, v16, v14);
  if (a3)
  {
    v48 = a3[v46];
    a3[v46] = *a3;
    *a3 = v48;
  }

  result = 0.0;
  v50 = a5 - 1;
  if (a5 > 1)
  {
    if (a4 == 2)
    {
      v57 = a2->f32[0];
      v58 = &a2->f32[v75[0] + 1];
      do
      {
        v59 = (a2->f32[1] - *v58) * (a2->f32[1] - *v58);
        if ((v59 + ((v57 - *(v58 - 1)) * (v57 - *(v58 - 1)))) > *&result)
        {
          *&result = v59 + ((v57 - *(v58 - 1)) * (v57 - *(v58 - 1)));
        }

        v58 += v75[0];
        --v50;
      }

      while (v50);
      goto LABEL_73;
    }

    if (a4 == 3)
    {
      v51 = a2->f32[0];
      v52 = a2->f32[1];
      v53 = &a2->f32[v75[0] + 2];
      do
      {
        v54 = a2->f32[2] - *v53;
        if (((((v52 - *(v53 - 1)) * (v52 - *(v53 - 1))) + ((v51 - *(v53 - 2)) * (v51 - *(v53 - 2)))) + (v54 * v54)) > *&result)
        {
          *&result = (((v52 - *(v53 - 1)) * (v52 - *(v53 - 1))) + ((v51 - *(v53 - 2)) * (v51 - *(v53 - 2)))) + (v54 * v54);
        }

        v53 += v75[0];
        --v50;
      }

      while (v50);
      goto LABEL_73;
    }

    if (a4 >= 1)
    {
      v60 = 0;
      v61 = v75[0];
      do
      {
        if (a4 >= 8)
        {
          v63 = 0.0;
          v64 = a4 & 0x7FFFFFF8;
          v65 = a2;
          do
          {
            v66 = vsubq_f32(*v65, *(v65 + v61 * 4));
            v67 = vsubq_f32(v65[1], *(v65 + v61 * 4 + 16));
            v68 = vmulq_f32(v66, v66);
            v69 = vmulq_f32(v67, v67);
            v63 = (((((((v63 + v68.f32[0]) + v68.f32[1]) + v68.f32[2]) + v68.f32[3]) + v69.f32[0]) + v69.f32[1]) + v69.f32[2]) + v69.f32[3];
            v65 += 2;
            v64 -= 8;
          }

          while (v64);
          v62 = a4 & 0x7FFFFFF8;
          if (v62 == a4)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v62 = 0;
          v63 = 0.0;
        }

        v70 = a4 - v62;
        v71 = &a2->f32[v62];
        do
        {
          v63 = v63 + ((*v71 - v71[v61]) * (*v71 - v71[v61]));
          ++v71;
          --v70;
        }

        while (v70);
LABEL_62:
        if (v63 > *&result)
        {
          *&result = v63;
        }

        ++v60;
        v61 += v75[0];
      }

      while (v60 != v50);
    }
  }

LABEL_73:
  *&result = sqrtf(*&result);
  *a1 = LODWORD(result);
  *(a1 + 4) = v46;
  if (v46 >= 1)
  {
    if (a3)
    {
      v72 = a3 + 1;
    }

    else
    {
      v72 = 0;
    }

    rkd_split_node(a1 + 12, &a2->f32[v75[0]], v72, a4, v46, *(a1 + 8), a7);
  }

  v73 = (a5 - (v46 + 1));
  if (v73 >= 1)
  {
    if (a3)
    {
      v74 = &a3[v46 + 1];
    }

    else
    {
      v74 = 0;
    }

    rkd_split_node(a1 + 12 * v46 + 12, &a2->f32[(v46 + 1) * a4], v74, a4, v73, *(a1 + 8), a7);
  }

  return result;
}

uint64_t rkd_knn_sort(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
    v4 = 0;
    if (a3)
    {
      if (a4)
      {
        v5 = a4 + 4;
        v6 = a3 + 8;
        v7 = result + 4;
        for (i = 1; i != a2; ++i)
        {
          v9 = v4;
          do
          {
            v10 = *(v7 + 4 * v9);
            v11 = *(result + 4 * v9);
            if (v10 >= v11)
            {
              break;
            }

            *(v7 + 4 * v9) = v11;
            *(result + 4 * v9) = v10;
            v12 = *(v6 + 8 * v9);
            *(v6 + 8 * v9) = *(a3 + 8 * v9);
            *(a3 + 8 * v9) = v12;
            LODWORD(v12) = *(v5 + 4 * v9);
            *(v5 + 4 * v9) = *(a4 + 4 * v9);
            *(a4 + 4 * v9) = v12;
            v13 = v9-- + 1;
          }

          while (v13 > 1);
          ++v4;
        }
      }

      else
      {
        v22 = a3 + 8;
        v23 = result + 4;
        for (j = 1; j != a2; ++j)
        {
          v25 = v4;
          do
          {
            v26 = *(v23 + 4 * v25);
            v27 = *(result + 4 * v25);
            if (v26 >= v27)
            {
              break;
            }

            *(v23 + 4 * v25) = v27;
            *(result + 4 * v25) = v26;
            v28 = *(v22 + 8 * v25);
            *(v22 + 8 * v25) = *(a3 + 8 * v25);
            *(a3 + 8 * v25) = v28;
            v29 = v25-- + 1;
          }

          while (v29 > 1);
          ++v4;
        }
      }
    }

    else if (a4)
    {
      v14 = a4 + 4;
      v15 = result + 4;
      for (k = 1; k != a2; ++k)
      {
        v17 = v4;
        do
        {
          v18 = *(v15 + 4 * v17);
          v19 = *(result + 4 * v17);
          if (v18 >= v19)
          {
            break;
          }

          *(v15 + 4 * v17) = v19;
          *(result + 4 * v17) = v18;
          v20 = *(v14 + 4 * v17);
          *(v14 + 4 * v17) = *(a4 + 4 * v17);
          *(a4 + 4 * v17) = v20;
          v21 = v17-- + 1;
        }

        while (v21 > 1);
        ++v4;
      }
    }

    else
    {
      v30 = result + 4;
      for (m = 1; m != a2; ++m)
      {
        v32 = v4;
        do
        {
          v33 = *(v30 + 4 * v32);
          v34 = *(result + 4 * v32);
          if (v33 >= v34)
          {
            break;
          }

          *(v30 + 4 * v32) = v34;
          *(result + 4 * v32) = v33;
          v35 = v32-- + 1;
        }

        while (v35 > 1);
        ++v4;
      }
    }
  }

  return result;
}

unint64_t rkd_nn_app(unint64_t result, float *a2, float **a3, _DWORD *a4, int a5, float a6)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = *(result + 28);
  if (v6 < 1)
  {
    return result;
  }

  v7 = 0;
  v8 = 0;
  v10 = *(result + 8);
  v9 = *(result + 16);
  v11 = *result;
  v12 = *(result + 24);
  v13 = v12 & 0x7FFFFFF8;
  v14 = 4 * v12;
LABEL_3:
  if (v12 == 2)
  {
    v16 = ((v11[1] - a2[1]) * (v11[1] - a2[1])) + ((*v11 - *a2) * (*v11 - *a2));
    goto LABEL_16;
  }

  if (v12 == 3)
  {
    v15 = v11[2] - a2[2];
    v16 = (((v11[1] - a2[1]) * (v11[1] - a2[1])) + ((*v11 - *a2) * (*v11 - *a2))) + (v15 * v15);
    goto LABEL_16;
  }

  if (v12 < 1)
  {
    v16 = 0.0;
    goto LABEL_16;
  }

  if (v12 < 8)
  {
    v17 = 0;
    v16 = 0.0;
LABEL_14:
    v25 = v12 - v17;
    v26 = v17;
    v27 = &a2[v17];
    v28 = &v11[v26];
    do
    {
      v29 = *v28++;
      v30 = v29;
      v31 = *v27++;
      v16 = v16 + ((v30 - v31) * (v30 - v31));
      --v25;
    }

    while (v25);
    goto LABEL_16;
  }

  v18 = (v11 + 4);
  v16 = 0.0;
  v19 = v12 & 0x7FFFFFF8;
  v20 = (a2 + 4);
  do
  {
    v21 = vsubq_f32(v18[-1], v20[-1]);
    v22 = vsubq_f32(*v18, *v20);
    v23 = vmulq_f32(v21, v21);
    v24 = vmulq_f32(v22, v22);
    v16 = (((((((v16 + v23.f32[0]) + v23.f32[1]) + v23.f32[2]) + v23.f32[3]) + v24.f32[0]) + v24.f32[1]) + v24.f32[2]) + v24.f32[3];
    v18 += 2;
    v20 += 2;
    v19 -= 8;
  }

  while (v19);
  v17 = v12 & 0x7FFFFFF8;
  if (v13 != v12)
  {
    goto LABEL_14;
  }

LABEL_16:
  v32 = sqrtf(v16);
  if (v32 < a6)
  {
    if (a3)
    {
      *a3 = v11;
    }

    a6 = v32;
    if (a4)
    {
      *a4 = *v10;
      a6 = v32;
    }
  }

  result = *(v9 + 1);
  v33 = *v9;
  if (result != -1)
  {
    goto LABEL_22;
  }

  if ((v32 - v33) >= a6)
  {
    goto LABEL_68;
  }

  v41 = a6 * a6;
  if (v6 > 1)
  {
    v42 = &v11[v12 + 4];
    v11 += v12;
    v43 = 1;
    while (1)
    {
      if (v12 == 2)
      {
        v32 = ((v11[1] - a2[1]) * (v11[1] - a2[1])) + ((*v11 - *a2) * (*v11 - *a2));
      }

      else if (v12 == 3)
      {
        v44 = v11[2] - a2[2];
        v32 = (((v11[1] - a2[1]) * (v11[1] - a2[1])) + ((*v11 - *a2) * (*v11 - *a2))) + (v44 * v44);
      }

      else if (v12 < 1)
      {
        v32 = 0.0;
      }

      else
      {
        if (v12 >= 8)
        {
          v32 = 0.0;
          v46 = v12 & 0x7FFFFFF8;
          v47 = (a2 + 4);
          v48 = v42;
          do
          {
            v49 = vsubq_f32(v48[-1], v47[-1]);
            v50 = vsubq_f32(*v48, *v47);
            v51 = vmulq_f32(v49, v49);
            v52 = vmulq_f32(v50, v50);
            v32 = (((((((v32 + v51.f32[0]) + v51.f32[1]) + v51.f32[2]) + v51.f32[3]) + v52.f32[0]) + v52.f32[1]) + v52.f32[2]) + v52.f32[3];
            v48 += 2;
            v47 += 2;
            v46 -= 8;
          }

          while (v46);
          v45 = v12 & 0x7FFFFFF8;
          if (v13 == v12)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v45 = 0;
          v32 = 0.0;
        }

        do
        {
          v53 = v11[v45] - a2[v45];
          v32 = v32 + (v53 * v53);
          ++v45;
        }

        while (v12 != v45);
      }

LABEL_50:
      if (v32 < v41)
      {
        if (a3)
        {
          *a3 = v11;
        }

        v41 = v32;
        if (a4)
        {
          *a4 = v10[v43];
          v41 = v32;
        }
      }

      ++v43;
      v11 = (v11 + v14);
      v42 = (v42 + v14);
      if (v43 == v6)
      {
        result = *(v9 + 1);
        a6 = sqrtf(v41);
        if (result == -1)
        {
          goto LABEL_68;
        }

LABEL_22:
        if ((v32 - v33) >= a6)
        {
          goto LABEL_68;
        }

        v34 = *(v9 + 2);
        v35 = a2[v34];
        v36 = v11[v34];
        if (v35 >= v36)
        {
          if (result >= 1)
          {
            v54 = v35 - v36;
            if (v54 < a6)
            {
              v55 = &v62[2 * v7];
              *v55 = v9 + 3;
              *(v55 + 1) = &v11[v12];
              v56 = v10 + 1;
              if (!v10)
              {
                v56 = 0;
              }

              *(v55 + 2) = v56;
              *(v55 + 6) = result;
              *(v55 + 7) = v54;
              ++v7;
            }
          }

          v57 = result;
          v58 = result + 1;
          if (v6 <= v58)
          {
            goto LABEL_68;
          }

          v11 += v58 * v12;
          v59 = &v10[v58];
          if (v10)
          {
            v10 = v59;
          }

          else
          {
            v10 = 0;
          }

          result = (v6 + ~result);
          v9 += 3 * v57 + 3;
          v6 = result;
          if (result <= 0)
          {
            return result;
          }
        }

        else
        {
          if (result - v6 <= -2)
          {
            v37 = v36 - v35;
            if (v37 < a6)
            {
              v38 = &v62[2 * v7];
              v39 = result + 1;
              *v38 = &v9[3 * result + 3];
              *(v38 + 1) = &v11[v39 * v12];
              v40 = &v10[v39];
              if (!v10)
              {
                v40 = 0;
              }

              *(v38 + 2) = v40;
              *(v38 + 6) = v6 + ~result;
              *(v38 + 7) = v37;
              ++v7;
            }
          }

          if (result < 1)
          {
            goto LABEL_68;
          }

          v11 += v12;
          if (v10)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          v9 += 3;
          v6 = result;
        }

        goto LABEL_3;
      }
    }
  }

  a6 = sqrtf(v41);
LABEL_68:
  if (v8 != a5)
  {
    result = &v62[2 * v7];
    while (1)
    {
      v60 = __OFSUB__(v7--, 1);
      if (v7 < 0 != v60)
      {
        break;
      }

      v61 = *(result - 4);
      result -= 32;
      if (v61 < a6)
      {
        v9 = *result;
        v11 = *(result + 8);
        v10 = *(result + 16);
        ++v8;
        result = *(result + 24);
        v6 = result;
        if (result > 0)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t rkd_knn_app(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float a7)
{
  v152 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 8);
  v13 = *a1;
  v14 = *(a1 + 28);
  v15 = *(a1 + 24);
  v148 = *(a1 + 16);
  v149 = v15;
  v150 = a5;
  MEMORY[0x28223BE20](a1);
  v17 = &v134 - v16;
  bzero(&v134 - v16, v18);
  if (v14 < 1)
  {
    v55 = 0;
    v28 = a4;
    v29 = v17;
    goto LABEL_141;
  }

  v19 = v14;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = v149;
  v24 = v150;
  v25 = v17 - 4;
  v26 = v149 & 0x7FFFFFF8;
  v146 = a4 - 4;
  v147 = (a2 + 4);
  v145 = a3 - 8;
  v27 = 4 * v149;
  v141 = 4 * v149 + 16;
  v28 = a4;
  v29 = v17;
  v30 = a6;
  do
  {
LABEL_3:
    if (v149 == 2)
    {
      v32 = ((v13[1] - a2[1]) * (v13[1] - a2[1])) + ((*v13 - *a2) * (*v13 - *a2));
      goto LABEL_16;
    }

    if (v149 == 3)
    {
      v31 = v13[2] - a2[2];
      v32 = (((v13[1] - a2[1]) * (v13[1] - a2[1])) + ((*v13 - *a2) * (*v13 - *a2))) + (v31 * v31);
      goto LABEL_16;
    }

    if (v149 < 1)
    {
      v32 = 0.0;
      goto LABEL_16;
    }

    if (v149 < 8)
    {
      v33 = 0;
      v32 = 0.0;
LABEL_14:
      v41 = v23 - v33;
      v42 = v33;
      v43 = &a2[v33];
      v44 = &v13[v42];
      do
      {
        v45 = *v44++;
        v46 = v45;
        v47 = *v43++;
        v32 = v32 + ((v46 - v47) * (v46 - v47));
        --v41;
      }

      while (v41);
      goto LABEL_16;
    }

    v34 = (v13 + 4);
    v32 = 0.0;
    v35 = v26;
    v36 = v147;
    do
    {
      v37 = vsubq_f32(v34[-1], v36[-1]);
      v38 = vsubq_f32(*v34, *v36);
      v39 = vmulq_f32(v37, v37);
      v40 = vmulq_f32(v38, v38);
      v32 = (((((((v32 + v39.f32[0]) + v39.f32[1]) + v39.f32[2]) + v39.f32[3]) + v40.f32[0]) + v40.f32[1]) + v40.f32[2]) + v40.f32[3];
      v34 += 2;
      v36 += 2;
      v35 -= 8;
    }

    while (v35);
    v33 = v26;
    if (v26 != v23)
    {
      goto LABEL_14;
    }

LABEL_16:
    v48 = sqrtf(v32);
    if (v48 >= a7)
    {
      v55 = v22;
      goto LABEL_52;
    }

    if (v12)
    {
      v49 = *v12;
      if (v22 < v150)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v49 = -1;
      if (v22 < v150)
      {
LABEL_19:
        *(v29 + 4 * v22) = v48;
        if (a3)
        {
          *(a3 + 8 * v22) = v13;
        }

        if (v28)
        {
          *(v28 + 4 * v22) = v49;
        }

        v22 = (v22 + 1);
        if (v22 == v150)
        {
          v50 = v29;
          v51 = v28;
          v135 = v19;
          v136 = v30;
          v52 = v21;
          v143 = v26;
          v144 = v23;
          v137 = v24;
          v53 = v25;
          v142 = v12;
          v54 = v27;
          rkd_knn_sort(v29, v150, a3, v28);
          v19 = v135;
          v30 = v136;
          v27 = v54;
          v12 = v142;
          v26 = v143;
          v25 = v53;
          v24 = v137;
          v23 = v144;
          v21 = v52;
          v29 = v50;
          v28 = v51;
LABEL_51:
          a7 = *&v25[4 * v24];
          v55 = v150;
          goto LABEL_52;
        }

        goto LABEL_50;
      }
    }

    v56 = v22 - 1;
    *(v29 + 4 * v56) = v48;
    if (a3)
    {
      *(a3 + 8 * v56) = v13;
    }

    if (v28)
    {
      *(v28 + 4 * v56) = v49;
    }

    if (v22 >= 2)
    {
      v57 = *(v29 + 4 * v56);
      v58 = v56;
      v59 = v56 + 1;
      if (a3)
      {
        if (v28)
        {
          v60 = &v25[4 * v56];
          v61 = (v146 + 4 * v58);
          v62 = (v145 + 8 * v58);
          do
          {
            v63 = *v60;
            if (v57 >= *v60)
            {
              break;
            }

            *v60 = v57;
            v60[1] = v63;
            --v60;
            *v62 = vextq_s8(*v62, *v62, 8uLL);
            v62 = (v62 - 8);
            *v61 = vrev64_s32(*v61);
            v61 = (v61 - 4);
            --v59;
          }

          while (v59 > 1);
        }

        else
        {
          v68 = &v25[4 * v56];
          v69 = (v145 + 8 * v58);
          do
          {
            v70 = *v68;
            if (v57 >= *v68)
            {
              break;
            }

            *v68 = v57;
            v68[1] = v70;
            --v68;
            *v69 = vextq_s8(*v69, *v69, 8uLL);
            v69 = (v69 - 8);
            --v59;
          }

          while (v59 > 1);
        }
      }

      else if (v28)
      {
        v64 = 4 * v56;
        v65 = &v25[v64];
        v66 = (v146 + v64);
        do
        {
          v67 = *v65;
          if (v57 >= *v65)
          {
            break;
          }

          *v65 = v57;
          v65[1] = v67;
          --v65;
          *v66 = vrev64_s32(*v66);
          v66 = (v66 - 4);
          --v59;
        }

        while (v59 > 1);
      }

      else
      {
        v71 = &v25[4 * v56];
        do
        {
          v72 = *v71;
          if (v57 >= *v71)
          {
            break;
          }

          *v71 = v57;
          v71[1] = v72;
          --v71;
          --v59;
        }

        while (v59 > 1);
      }
    }

LABEL_50:
    v55 = v22;
    if (v22 == v150)
    {
      goto LABEL_51;
    }

LABEL_52:
    v73 = *(v148 + 4);
    v74 = *v148;
    if (v73 != -1)
    {
      if ((v48 - v74) < a7)
      {
        goto LABEL_54;
      }

      goto LABEL_134;
    }

    if ((v48 - v74) >= a7)
    {
      goto LABEL_134;
    }

    v84 = a7 * a7;
    if (v19 <= 1)
    {
      a7 = sqrtf(v84);
LABEL_134:
      if (v21 != v30)
      {
        v129 = &v151[2 * v20];
        while (1)
        {
          v130 = __OFSUB__(v20--, 1);
          if (v20 < 0 != v130)
          {
            break;
          }

          v131 = *(v129 - 1);
          v129 -= 2;
          if (v131 < a7)
          {
            v13 = *(v129 + 1);
            v148 = *v129;
            v12 = *(v129 + 2);
            v21 = (v21 + 1);
            v132 = *(v129 + 6);
            v22 = v55;
            v19 = v132;
            if (v132 > 0)
            {
              goto LABEL_3;
            }

            goto LABEL_141;
          }
        }
      }

      break;
    }

    v135 = v19;
    v136 = v30;
    v85 = (v13 + v141);
    v13 += v149;
    v86 = v19;
    v87 = 1;
    v139 = v25;
    v140 = a2;
    v143 = v26;
    v144 = v23;
    v137 = v19;
    v138 = v27;
    v142 = v12;
    do
    {
      if (v23 == 2)
      {
        v93 = ((v13[1] - a2[1]) * (v13[1] - a2[1])) + ((*v13 - *a2) * (*v13 - *a2));
        goto LABEL_84;
      }

      if (v23 == 3)
      {
        v92 = v13[2] - a2[2];
        v93 = (((v13[1] - a2[1]) * (v13[1] - a2[1])) + ((*v13 - *a2) * (*v13 - *a2))) + (v92 * v92);
        goto LABEL_84;
      }

      if (v23 < 1)
      {
        v93 = 0.0;
        goto LABEL_84;
      }

      if (v23 < 8)
      {
        v94 = 0;
        v93 = 0.0;
        do
        {
LABEL_83:
          v102 = v13[v94] - a2[v94];
          v93 = v93 + (v102 * v102);
          ++v94;
        }

        while (v23 != v94);
        goto LABEL_84;
      }

      v93 = 0.0;
      v95 = v26;
      v96 = v147;
      v97 = v85;
      do
      {
        v98 = vsubq_f32(v97[-1], v96[-1]);
        v99 = vsubq_f32(*v97, *v96);
        v100 = vmulq_f32(v98, v98);
        v101 = vmulq_f32(v99, v99);
        v93 = (((((((v93 + v100.f32[0]) + v100.f32[1]) + v100.f32[2]) + v100.f32[3]) + v101.f32[0]) + v101.f32[1]) + v101.f32[2]) + v101.f32[3];
        v97 += 2;
        v96 += 2;
        v95 -= 8;
      }

      while (v95);
      v94 = v26;
      if (v26 != v23)
      {
        goto LABEL_83;
      }

LABEL_84:
      if (v93 < v84)
      {
        if (v12)
        {
          v103 = v12[v87];
          v104 = sqrtf(v93);
          if (v55 < v150)
          {
            goto LABEL_87;
          }

LABEL_94:
          v105 = v55 - 1;
          *(v29 + 4 * v105) = v104;
          if (a3)
          {
            *(a3 + 8 * v105) = v13;
          }

          if (v28)
          {
            *(v28 + 4 * v105) = v103;
          }

          if (v55 >= 2)
          {
            v106 = *(v29 + 4 * v105);
            v107 = v105;
            v108 = v105 + 1;
            if (a3)
            {
              if (v28)
              {
                v109 = &v25[4 * v105];
                v110 = (v146 + 4 * v107);
                v111 = (v145 + 8 * v107);
                do
                {
                  v112 = *v109;
                  if (v106 >= *v109)
                  {
                    break;
                  }

                  *v109 = v106;
                  v109[1] = v112;
                  --v109;
                  *v111 = vextq_s8(*v111, *v111, 8uLL);
                  v111 = (v111 - 8);
                  *v110 = vrev64_s32(*v110);
                  v110 = (v110 - 4);
                  --v108;
                }

                while (v108 > 1);
              }

              else
              {
                v117 = &v25[4 * v105];
                v118 = (v145 + 8 * v107);
                do
                {
                  v119 = *v117;
                  if (v106 >= *v117)
                  {
                    break;
                  }

                  *v117 = v106;
                  v117[1] = v119;
                  --v117;
                  *v118 = vextq_s8(*v118, *v118, 8uLL);
                  v118 = (v118 - 8);
                  --v108;
                }

                while (v108 > 1);
              }
            }

            else if (v28)
            {
              v113 = 4 * v105;
              v114 = &v25[v113];
              v115 = (v146 + v113);
              do
              {
                v116 = *v114;
                if (v106 >= *v114)
                {
                  break;
                }

                *v114 = v106;
                v114[1] = v116;
                --v114;
                *v115 = vrev64_s32(*v115);
                v115 = (v115 - 4);
                --v108;
              }

              while (v108 > 1);
            }

            else
            {
              v120 = &v25[4 * v105];
              do
              {
                v121 = *v120;
                if (v106 >= *v120)
                {
                  break;
                }

                *v120 = v106;
                v120[1] = v121;
                --v120;
                --v108;
              }

              while (v108 > 1);
            }
          }

          goto LABEL_117;
        }

        v103 = -1;
        v104 = sqrtf(v93);
        if (v55 >= v150)
        {
          goto LABEL_94;
        }

LABEL_87:
        *(v29 + 4 * v55) = v104;
        if (a3)
        {
          *(a3 + 8 * v55) = v13;
        }

        if (v28)
        {
          *(v28 + 4 * v55) = v103;
        }

        v55 = (v55 + 1);
        if (v55 == v150)
        {
          v88 = v29;
          v89 = v28;
          v90 = v21;
          v91 = v24;
          rkd_knn_sort(v29, v150, a3, v28);
          v86 = v137;
          v27 = v138;
          v26 = v143;
          v23 = v144;
          v24 = v91;
          v21 = v90;
          v12 = v142;
          v29 = v88;
          v25 = v139;
          a2 = v140;
          v28 = v89;
        }

        else
        {
LABEL_117:
          if (v55 != v150)
          {
            goto LABEL_70;
          }
        }

        a7 = *&v25[4 * v24];
        v55 = v150;
LABEL_70:
        v84 = a7 * a7;
      }

      ++v87;
      v13 = (v13 + v27);
      v85 = (v85 + v27);
    }

    while (v87 != v86);
    v73 = *(v148 + 4);
    a7 = sqrtf(v84);
    v30 = v136;
    if (v73 == -1)
    {
      goto LABEL_134;
    }

    v19 = v135;
    if ((v93 - *v148) >= a7)
    {
      goto LABEL_134;
    }

LABEL_54:
    v75 = *(v148 + 8);
    v76 = a2[v75];
    v77 = v13[v75];
    if (v76 >= v77)
    {
      if (v73 >= 1)
      {
        v122 = v76 - v77;
        if (v122 < a7)
        {
          v123 = &v151[2 * v20];
          v124 = &v13[v149];
          *v123 = v148 + 12;
          *(v123 + 1) = v124;
          v125 = v12 + 1;
          if (!v12)
          {
            v125 = 0;
          }

          *(v123 + 2) = v125;
          *(v123 + 6) = v73;
          *(v123 + 7) = v122;
          ++v20;
        }
      }

      v126 = v73;
      v127 = v73 + 1;
      if (v19 <= v127)
      {
        goto LABEL_134;
      }

      v13 += v127 * v23;
      v128 = &v12[v127];
      if (v12)
      {
        v12 = v128;
      }

      else
      {
        v12 = 0;
      }

      v73 = v19 + ~v73;
      v83 = v148 + 12 * v126;
    }

    else
    {
      if (v73 - v19 <= -2)
      {
        v78 = v77 - v76;
        if (v78 < a7)
        {
          v79 = &v151[2 * v20];
          v80 = v73 + 1;
          v81 = &v13[v80 * v149];
          *v79 = v148 + 12 * v73 + 12;
          *(v79 + 1) = v81;
          v82 = &v12[v80];
          if (!v12)
          {
            v82 = 0;
          }

          *(v79 + 2) = v82;
          *(v79 + 6) = v19 + ~v73;
          *(v79 + 7) = v78;
          ++v20;
        }
      }

      if (v73 < 1)
      {
        goto LABEL_134;
      }

      v13 += v149;
      if (v12)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }

      v83 = v148;
    }

    v148 = v83 + 12;
    v22 = v55;
    v19 = v73;
  }

  while (v73 > 0);
LABEL_141:
  if (v55 != v150)
  {
    rkd_knn_sort(v29, v55, a3, v28);
  }

  return v55;
}

uint64_t rkd_inside(uint64_t a1, float *a2, void **a3, void **a4, unsigned int *a5, float a6)
{
  v109 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 28);
  if (!a5)
  {
    v9 = 0;
    v97 = 0;
    if (v8 >= 1)
    {
      goto LABEL_3;
    }

LABEL_139:
    v40 = 0;
    goto LABEL_140;
  }

  v9 = *a5;
  v97 = a5;
  if (v8 < 1)
  {
    goto LABEL_139;
  }

LABEL_3:
  v10 = 0;
  v11 = 0;
  v12 = *(a1 + 24);
  v14 = *(a1 + 8);
  v13 = *(a1 + 16);
  v15 = *a1;
  v16 = v12;
  v103 = v12 & 0x7FFFFFF8;
  v104 = a3;
  v17 = 4 * v12;
  v98 = 4 * v12 + 16;
  v99 = v12;
  v18 = a6 * a6;
  v19 = v9;
  v105 = a4;
  v101 = (a2 + 4);
  v102 = 4 * v12;
  while (2)
  {
    if (v12 == 2)
    {
      v23 = ((v15[1] - a2[1]) * (v15[1] - a2[1])) + ((*v15 - *a2) * (*v15 - *a2));
      goto LABEL_22;
    }

    if (v12 == 3)
    {
      v22 = v15[2] - a2[2];
      v23 = (((v15[1] - a2[1]) * (v15[1] - a2[1])) + ((*v15 - *a2) * (*v15 - *a2))) + (v22 * v22);
      goto LABEL_22;
    }

    if (v12 < 1)
    {
      v23 = 0.0;
      goto LABEL_22;
    }

    if (v12 < 8)
    {
      v24 = 0;
      v23 = 0.0;
LABEL_20:
      v32 = v16 - v24;
      v33 = v24;
      v34 = &a2[v24];
      v35 = &v15[v33];
      do
      {
        v36 = *v35++;
        v37 = v36;
        v38 = *v34++;
        v23 = v23 + ((v37 - v38) * (v37 - v38));
        --v32;
      }

      while (v32);
      goto LABEL_22;
    }

    v25 = (v15 + 4);
    v23 = 0.0;
    v26 = v103;
    v27 = v101;
    do
    {
      v28 = vsubq_f32(v25[-1], v27[-1]);
      v29 = vsubq_f32(*v25, *v27);
      v30 = vmulq_f32(v28, v28);
      v31 = vmulq_f32(v29, v29);
      v23 = (((((((v23 + v30.f32[0]) + v30.f32[1]) + v30.f32[2]) + v30.f32[3]) + v31.f32[0]) + v31.f32[1]) + v31.f32[2]) + v31.f32[3];
      v25 += 2;
      v27 += 2;
      v26 -= 8;
    }

    while (v26);
    v24 = v103;
    if (v103 != v16)
    {
      goto LABEL_20;
    }

LABEL_22:
    v39 = sqrtf(v23);
    v106 = v8;
    v107 = v13;
    if (v39 < a6)
    {
      if ((v39 + *v13) < a6)
      {
        v40 = (v11 + v8);
        if (v40 <= v19)
        {
          if (!a4)
          {
            if (!a3)
            {
              goto LABEL_60;
            }

            v41 = *a3;
            goto LABEL_58;
          }

          v43 = *a4;
          if (a3)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (2 * v40 <= 10)
          {
            v19 = 10;
          }

          else
          {
            v19 = (2 * v40);
          }

          if (a3)
          {
            v41 = malloc_type_realloc(*a3, 8 * v19, 0x80040B8603338uLL);
            a3 = v104;
            a4 = v105;
            *v104 = v41;
            if (!v105)
            {
              v8 = v106;
LABEL_58:
              v54 = v8;
              v55 = &v41[8 * v11];
              do
              {
                *v55++ = v15;
                v15 = (v15 + v17);
                --v54;
              }

              while (v54);
              goto LABEL_60;
            }
          }

          else if (!a4)
          {
            goto LABEL_60;
          }

          v43 = malloc_type_realloc(*a4, 4 * v19, 0x100004052888210uLL);
          a3 = v104;
          a4 = v105;
          *v105 = v43;
          v8 = v106;
          if (v104)
          {
LABEL_51:
            v51 = *a3;
            v52 = v8;
            do
            {
              v51[v11] = v15;
              v53 = *v14++;
              v43[v11] = v53;
              LODWORD(v11) = v11 + 1;
              v15 = (v15 + v17);
              --v52;
            }

            while (v52);
            goto LABEL_60;
          }
        }

        v44 = v8;
        if (v8 < 0xC)
        {
          goto LABEL_39;
        }

        v45 = 0;
        if (v11 + v8 - 1 < v11 || (v8 - 1) >> 32)
        {
          goto LABEL_40;
        }

        if ((&v43[v11] - v14) < 0x20)
        {
LABEL_39:
          v45 = 0;
        }

        else
        {
          v45 = v8 & 0x7FFFFFF8;
          v91 = (v14 + 4);
          v92 = v11;
          v93 = v45;
          do
          {
            v94 = *v91;
            v95 = &v43[v92];
            *v95 = *(v91 - 1);
            v95[1] = v94;
            v91 += 2;
            v92 += 8;
            v93 -= 8;
          }

          while (v93);
          if (v45 == v44)
          {
LABEL_60:
            v9 = v19;
            v56 = (v10 - 1);
            if (v10 >= 1)
            {
              goto LABEL_128;
            }

            goto LABEL_140;
          }
        }

LABEL_40:
        v46 = v44 - v45;
        v47 = v11 + v45;
        v48 = &v14[v45];
        do
        {
          v49 = *v48++;
          v43[v47++] = v49;
          --v46;
        }

        while (v46);
        goto LABEL_60;
      }

      v40 = (v11 + 1);
      if (v11 < v19)
      {
        if (!a4)
        {
          if (a3)
          {
            *(*a3 + v11) = v15;
          }

          goto LABEL_66;
        }

        v42 = *a4;
        if (!a3)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      if (2 * v40 <= 10)
      {
        v19 = 10;
      }

      else
      {
        v19 = (2 * v40);
      }

      if (a3)
      {
        v50 = malloc_type_realloc(*a3, 8 * v19, 0x80040B8603338uLL);
        a3 = v104;
        a4 = v105;
        *v104 = v50;
        if (!v105)
        {
          v8 = v106;
          v13 = v107;
          v50[v11] = v15;
          goto LABEL_66;
        }
      }

      else if (!a4)
      {
        goto LABEL_66;
      }

      v42 = malloc_type_realloc(*a4, 4 * v19, 0x100004052888210uLL);
      a3 = v104;
      a4 = v105;
      *v105 = v42;
      v8 = v106;
      v13 = v107;
      if (!v104)
      {
LABEL_65:
        v42[v11] = *v14;
        goto LABEL_66;
      }

LABEL_64:
      *(*a3 + v11) = v15;
      goto LABEL_65;
    }

    v40 = v11;
LABEL_66:
    v9 = v19;
    v21 = *(v13 + 4);
    v57 = *v13;
    if (v21 != -1)
    {
      if ((v39 - v57) >= a6)
      {
        goto LABEL_127;
      }

      goto LABEL_68;
    }

    if ((v39 - v57) >= a6 || v8 <= 1)
    {
      goto LABEL_127;
    }

    v100 = v10;
    v66 = (v15 + v98);
    v15 += v12;
    v67 = v8;
    v68 = 1;
    do
    {
      if (v16 == 2)
      {
        v70 = ((v15[1] - a2[1]) * (v15[1] - a2[1])) + ((*v15 - *a2) * (*v15 - *a2));
        goto LABEL_100;
      }

      if (v16 == 3)
      {
        v69 = v15[2] - a2[2];
        v70 = (((v15[1] - a2[1]) * (v15[1] - a2[1])) + ((*v15 - *a2) * (*v15 - *a2))) + (v69 * v69);
        goto LABEL_100;
      }

      if (v16 < 1)
      {
        v70 = 0.0;
        goto LABEL_100;
      }

      if (v16 < 8)
      {
        v71 = 0;
        v70 = 0.0;
        do
        {
LABEL_99:
          v79 = v15[v71] - a2[v71];
          v70 = v70 + (v79 * v79);
          ++v71;
        }

        while (v16 != v71);
        goto LABEL_100;
      }

      v70 = 0.0;
      v72 = v103;
      v73 = v101;
      v74 = v66;
      do
      {
        v75 = vsubq_f32(v74[-1], v73[-1]);
        v76 = vsubq_f32(*v74, *v73);
        v77 = vmulq_f32(v75, v75);
        v78 = vmulq_f32(v76, v76);
        v70 = (((((((v70 + v77.f32[0]) + v77.f32[1]) + v77.f32[2]) + v77.f32[3]) + v78.f32[0]) + v78.f32[1]) + v78.f32[2]) + v78.f32[3];
        v74 += 2;
        v73 += 2;
        v72 -= 8;
      }

      while (v72);
      v71 = v103;
      if (v103 != v16)
      {
        goto LABEL_99;
      }

LABEL_100:
      if (v70 < v18)
      {
        v80 = v40 + 1;
        if (v40 < v9)
        {
          if (!a4)
          {
            if (a3)
            {
              *(*a3 + v40) = v15;
            }

            goto LABEL_86;
          }

          v81 = *a4;
          if (!a3)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        }

        if (2 * v80 <= 10)
        {
          v9 = 10;
        }

        else
        {
          v9 = (2 * v80);
        }

        if (a3)
        {
          v82 = v9;
          v83 = malloc_type_realloc(*a3, 8 * v9, 0x80040B8603338uLL);
          a3 = v104;
          a4 = v105;
          *v104 = v83;
          if (!v105)
          {
            v8 = v106;
            v13 = v107;
            v9 = v82;
            v17 = v102;
            v83[v40] = v15;
            goto LABEL_86;
          }

          v9 = v82;
LABEL_114:
          v84 = v9;
          v81 = malloc_type_realloc(*a4, 4 * v9, 0x100004052888210uLL);
          v9 = v84;
          a3 = v104;
          a4 = v105;
          *v105 = v81;
          v8 = v106;
          v13 = v107;
          v17 = v102;
          if (!v104)
          {
LABEL_85:
            v81[v40] = v14[v68];
LABEL_86:
            v40 = (v40 + 1);
            goto LABEL_87;
          }

LABEL_84:
          *(*a3 + v40) = v15;
          goto LABEL_85;
        }

        if (a4)
        {
          goto LABEL_114;
        }

        v40 = (v40 + 1);
        v13 = v107;
      }

LABEL_87:
      ++v68;
      v15 = (v15 + v17);
      v66 = (v66 + v17);
    }

    while (v68 != v67);
    v21 = *(v13 + 4);
    v10 = v100;
    if (v21 == -1)
    {
      v12 = v99;
      v56 = (v100 - 1);
      if (v100 >= 1)
      {
        goto LABEL_128;
      }

      goto LABEL_140;
    }

    v12 = v99;
    if ((v70 - *v13) >= a6)
    {
      goto LABEL_127;
    }

LABEL_68:
    v58 = *(v13 + 8);
    v59 = a2[v58];
    v60 = v15[v58];
    if (v59 >= v60)
    {
      if (v21 >= 1)
      {
        v85 = v59 - v60;
        if (v85 < a6)
        {
          v86 = &v108[2 * v10];
          *v86 = v13 + 12;
          *(v86 + 1) = &v15[v12];
          v87 = v14 + 1;
          if (!v14)
          {
            v87 = 0;
          }

          *(v86 + 2) = v87;
          *(v86 + 6) = v21;
          *(v86 + 7) = v85;
          v10 = (v10 + 1);
        }
      }

      v88 = v21;
      v89 = v21 + 1;
      if (v8 <= v89)
      {
        goto LABEL_127;
      }

      v15 += v89 * v16;
      v20 = &v14[v89];
      if (v14)
      {
        v14 = v20;
      }

      else
      {
        v14 = 0;
      }

      v21 = v8 + ~v21;
      v13 += 12 * v88 + 12;
LABEL_8:
      v8 = v21;
      v19 = v9;
      v11 = v40;
      if (v21 <= 0)
      {
        goto LABEL_140;
      }

      continue;
    }

    break;
  }

  if (v21 - v8 <= -2)
  {
    v61 = v60 - v59;
    if (v61 < a6)
    {
      v62 = &v108[2 * v10];
      v63 = v21 + 1;
      *v62 = v13 + 12 * v21 + 12;
      *(v62 + 1) = &v15[v63 * v12];
      v64 = &v14[v63];
      if (!v14)
      {
        v64 = 0;
      }

      *(v62 + 2) = v64;
      *(v62 + 6) = v8 + ~v21;
      *(v62 + 7) = v61;
      v10 = (v10 + 1);
    }
  }

  if (v21 >= 1)
  {
    v15 += v12;
    if (v14)
    {
      ++v14;
    }

    else
    {
      v14 = 0;
    }

    v13 += 12;
    goto LABEL_8;
  }

LABEL_127:
  v56 = (v10 - 1);
  if (v10 >= 1)
  {
LABEL_128:
    v90 = &v108[2 * v56];
    v13 = *v90;
    v15 = *(v90 + 1);
    v14 = *(v90 + 2);
    v21 = *(v90 + 6);
    v10 = v56;
    goto LABEL_8;
  }

LABEL_140:
  if (v97)
  {
    *v97 = v9;
  }

  return v40;
}

uint64_t rkd_split_median(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *__dst, float a7)
{
  v62 = xmmword_2711060E0;
  if (a4 < 2)
  {
    return 0;
  }

  v9 = a3;
  v10 = a1;
  v11 = 0;
  v12 = 0;
  v13 = a4 - 1;
  v50 = a4;
  v14 = 4 * a3;
  v15 = a5;
  v54 = (a4 * a7);
  v55 = a4 >> 1;
  v53 = a1 + v14;
  while (1)
  {
    v16 = v13 - v12;
    v17 = (v13 - v12 + 1);
    v60 = v11;
    v58 = v13;
    if (v13 - v12 > 8)
    {
      if (v17 > 0x63)
      {
        if (v17 >> 4 > 0x270)
        {
          v27 = v10;
          v28 = v9;
          v29 = a4;
          v30 = a5;
          v31 = v17 > 0xF423F ? 6 : 5;
        }

        else
        {
          v27 = v10;
          v28 = v9;
          v29 = a4;
          v30 = a5;
          v31 = 2;
        }

        v20 = rkd_sample_median(v27, v28, v29, v30, v31, &v62);
      }

      else
      {
        v19 = (*(&v62 + 1) >> 5) ^ ((v62 ^ (v62 << 23)) >> 18) ^ *(&v62 + 1) ^ v62 ^ (v62 << 23);
        v20 = (v19 + *(&v62 + 1)) % v50;
        v21 = ((*(&v62 + 1) ^ (*(&v62 + 1) << 23)) >> 18) ^ (v19 >> 5) ^ *(&v62 + 1) ^ (*(&v62 + 1) << 23) ^ v19;
        v22 = (v21 + v19) % v50;
        *&v62 = v21;
        *(&v62 + 1) = ((v19 ^ (v19 << 23)) >> 18) ^ (v21 >> 5) ^ v19 ^ (v19 << 23) ^ v21;
        v23 = (*(&v62 + 1) + v21) % v50;
        v24 = *(v10 + 4 * (a5 + v20 * v9));
        v25 = *(v10 + 4 * (a5 + v22 * v9));
        v26 = *(v10 + 4 * (a5 + v23 * v9));
        if (v24 >= v25)
        {
          if (v24 > v26)
          {
            if (v25 <= v26)
            {
              v20 = v23;
            }

            else
            {
              v20 = v22;
            }
          }
        }

        else if (v24 < v26)
        {
          if (v25 >= v26)
          {
            v20 = v23;
          }

          else
          {
            v20 = v22;
          }
        }
      }

      v32 = v20 - v12 >= 0 && v20 <= v13;
      v18 = v32 ? v20 - v12 : v17 >> 1;
    }

    else
    {
      v18 = v17 / 2;
    }

    v33 = v12 * a3;
    v34 = (v10 + 4 * v33);
    v59 = v12;
    v35 = a2 ? (a2 + 4 * v12) : 0;
    memcpy(__dst, &v34[4 * v18 * a3], v14);
    memmove(&v34[4 * v18 * a3], v34, v14);
    memcpy(v34, __dst, v14);
    if (v35)
    {
      v36 = v35[v18];
      v35[v18] = *v35;
      *v35 = v36;
      if (v16 < 1)
      {
        goto LABEL_44;
      }

      v37 = 0;
      v38 = v17 - 1;
      v39 = v35 + 1;
      v40 = (v53 + 4 * v33);
      do
      {
        if (*&v40[4 * v15] < *&v34[4 * v15])
        {
          v41 = &v34[4 * ++v37 * a3];
          memcpy(__dst, v40, v14);
          memmove(v40, v41, v14);
          memcpy(v41, __dst, v14);
          v42 = *v39;
          *v39 = v35[v37];
          v35[v37] = v42;
        }

        ++v39;
        v40 += v14;
        --v38;
      }

      while (v38);
    }

    else
    {
      if (v16 <= 0)
      {
LABEL_44:
        v37 = 0;
        goto LABEL_45;
      }

      v37 = 0;
      v43 = v17 - 1;
      v44 = (v53 + 4 * v33);
      do
      {
        if (*&v44[4 * v15] < *&v34[4 * v15])
        {
          v45 = &v34[4 * ++v37 * a3];
          memcpy(__dst, v44, v14);
          memmove(v44, v45, v14);
          memcpy(v45, __dst, v14);
        }

        v44 += v14;
        --v43;
      }

      while (v43);
    }

LABEL_45:
    v9 = a3;
    v46 = &v34[4 * v37 * a3];
    memcpy(__dst, v34, v14);
    memmove(v34, v46, v14);
    memcpy(v46, __dst, v14);
    if (v35)
    {
      v47 = *v35;
      *v35 = v35[v37];
      v35[v37] = v47;
    }

    v12 = v59;
    v11 = v60;
    v13 = v58;
    if (!v37)
    {
      break;
    }

    v10 = a1;
    result = v37 + v59;
    v48 = result - v55;
    if (result - v55 < 0)
    {
      v48 = v55 - result;
    }

    if (v48 <= v54)
    {
      return result;
    }

LABEL_56:
    if (result > v55)
    {
      v13 = result - 1;
    }

    else
    {
      v12 = result;
      if (result >= v58)
      {
        return result;
      }
    }

    if (v13 < v12)
    {
      return (v12 + v37);
    }
  }

  v10 = a1;
  if (v60 <= 1)
  {
    v11 = v60 + 1;
    result = v59;
    v49 = v59 - v55;
    if ((v59 - v55) < 0)
    {
      v49 = v55 - v59;
    }

    if (v49 <= v54)
    {
      return result;
    }

    goto LABEL_56;
  }

  return 0xFFFFFFFFLL;
}

uint64_t rkd_closest_to_mean(float32x2_t *a1, int a2, unsigned int a3)
{
  v5 = a1;
  v61[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = 4 * a2;
  MEMORY[0x28223BE20](a1);
  v9 = (v61 - v8);
  bzero(v61 - v8, v7);
  bzero(v9, v7);
  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v11 = *v9;
      v12 = v9[2];
      v13 = &v5[1];
      v14 = a3;
      do
      {
        v11 = vadd_f32(v11, *(v13 - 2));
        v12 = v12 + *v13;
        v13 += v6;
        --v14;
      }

      while (v14);
      *v9 = v11;
      v9[2] = v12;
      goto LABEL_9;
    }

    if (a2 < 1)
    {
      goto LABEL_26;
    }

    v18 = 0;
    v19 = &v5[2];
    v20 = 4 * v6;
    v21 = v5;
    while (1)
    {
      if (a2 >= 8)
      {
        v23 = a2 & 0x7FFFFFF8;
        v24 = v19;
        v25 = (v9 + 4);
        do
        {
          v10 = vaddq_f32(v25[-1], v24[-1]);
          v26 = vaddq_f32(*v25, *v24);
          v25[-1] = v10;
          *v25 = v26;
          v25 += 2;
          v24 += 2;
          v23 -= 8;
        }

        while (v23);
        v22 = a2 & 0x7FFFFFF8;
        if (v22 == a2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v22 = 0;
      }

      do
      {
        v9[v22] = v9[v22] + v21->f32[v22];
        ++v22;
      }

      while (a2 != v22);
LABEL_13:
      ++v18;
      v19 = (v19 + v20);
      v21 = (v21 + v20);
      if (v18 == a3)
      {
        goto LABEL_9;
      }
    }
  }

  v10.i64[0] = *v9;
  v15 = v5;
  v16 = a3;
  do
  {
    *v10.f32 = vadd_f32(*v10.f32, *v15);
    v15 = (v15 + 4 * v6);
    --v16;
  }

  while (v16);
  *v9 = v10.i64[0];
LABEL_9:
  v10.f32[0] = a3;
  if (a2 < 8)
  {
    v17 = 0;
LABEL_24:
    v31 = a2 - v17;
    v32 = &v9[v17];
    do
    {
      *v32 = *v32 / v10.f32[0];
      ++v32;
      --v31;
    }

    while (v31);
    goto LABEL_26;
  }

  v17 = a2 & 0x7FFFFFF8;
  v27 = vdupq_lane_s32(*v10.f32, 0);
  v28 = (v9 + 4);
  v29 = v17;
  do
  {
    v30 = vdivq_f32(*v28, v27);
    v28[-1] = vdivq_f32(v28[-1], v27);
    *v28 = v30;
    v28 += 2;
    v29 -= 8;
  }

  while (v29);
  if (v17 != a2)
  {
    goto LABEL_24;
  }

LABEL_26:
  if (a2 == 2)
  {
    LODWORD(result) = 0;
    v40 = 0;
    v41 = *v9;
    v43 = v5 + 1;
    v44 = 3.4028e38;
    do
    {
      v42 = v9[1];
      if ((((*v43 - v42) * (*v43 - v42)) + ((*(v43 - 1) - v41) * (*(v43 - 1) - v41))) >= v44)
      {
        result = result;
      }

      else
      {
        v44 = ((*v43 - v42) * (*v43 - v42)) + ((*(v43 - 1) - v41) * (*(v43 - 1) - v41));
        result = v40;
      }

      ++v40;
      v43 += v6;
    }

    while (a3 != v40);
  }

  else
  {
    if (a2 == 3)
    {
      LODWORD(result) = 0;
      v34 = 0;
      v35 = *v9;
      v38 = &v5[1];
      v39 = 3.4028e38;
      do
      {
        v36 = v9[1];
        v37 = v9[2];
        if (((((*(v38 - 1) - v36) * (*(v38 - 1) - v36)) + ((*(v38 - 2) - v35) * (*(v38 - 2) - v35))) + ((*v38 - v37) * (*v38 - v37))) >= v39)
        {
          result = result;
        }

        else
        {
          v39 = (((*(v38 - 1) - v36) * (*(v38 - 1) - v36)) + ((*(v38 - 2) - v35) * (*(v38 - 2) - v35))) + ((*v38 - v37) * (*v38 - v37));
          result = v34;
        }

        ++v34;
        v38 += v6;
      }

      while (a3 != v34);
      return result;
    }

    if (a2 > 0)
    {
      LODWORD(result) = 0;
      v45 = 0;
      v46 = &v5[2];
      v47 = 4 * v6;
      v48 = 3.4028e38;
      while (a2 >= 8)
      {
        v50 = 0.0;
        v51 = a2 & 0x7FFFFFF8;
        v52 = (v9 + 4);
        v53 = v46;
        do
        {
          v54 = vsubq_f32(v53[-1], v52[-1]);
          v55 = vsubq_f32(*v53, *v52);
          v56 = vmulq_f32(v54, v54);
          v57 = vmulq_f32(v55, v55);
          v50 = (((((((v50 + v56.f32[0]) + v56.f32[1]) + v56.f32[2]) + v56.f32[3]) + v57.f32[0]) + v57.f32[1]) + v57.f32[2]) + v57.f32[3];
          v53 += 2;
          v52 += 2;
          v51 -= 8;
        }

        while (v51);
        v49 = a2 & 0x7FFFFFF8;
        if (v49 != a2)
        {
          goto LABEL_51;
        }

LABEL_42:
        if (v50 >= v48)
        {
          result = result;
        }

        else
        {
          v48 = v50;
          result = v45;
        }

        ++v45;
        v46 = (v46 + v47);
        v5 = (v5 + v47);
        if (v45 == a3)
        {
          return result;
        }
      }

      v49 = 0;
      v50 = 0.0;
      do
      {
LABEL_51:
        v58 = v5->f32[v49] - v9[v49];
        v50 = v50 + (v58 * v58);
        ++v49;
      }

      while (a2 != v49);
      goto LABEL_42;
    }

    LODWORD(result) = 0;
    v59 = 0;
    v60 = 3.4028e38;
    do
    {
      if (v60 <= 0.0)
      {
        result = result;
      }

      else
      {
        v60 = 0.0;
        result = v59;
      }

      ++v59;
    }

    while (a3 != v59);
  }

  return result;
}

uint64_t rkd_split_dim_sdev(float32x4_t *a1, int a2, int a3)
{
  v5 = a1;
  v29[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v7 = (v29 - v6);
  if (a2 < 1)
  {
    return 0;
  }

  v8 = &v7->f64[a2];
  bzero(v29 - v6, v6);
  *v8 = 0;
  if (a3 >= 1)
  {
    v9 = 0;
    v11 = v7 < &v7->f64[a2 + a2] && v8 < &v7->f64[a2];
    v12 = 8 * a2;
    do
    {
      if (a2 < 4 || v11)
      {
        v13 = 0;
      }

      else
      {
        v14 = a2 & 0x7FFFFFFC;
        v15 = v7;
        v16 = v5;
        do
        {
          v17 = *v16++;
          v18 = vmulq_f32(v17, v17);
          v19 = vaddq_f64(v15[1], vcvt_hight_f64_f32(v18));
          *v15 = vaddq_f64(*v15, vcvtq_f64_f32(*v18.f32));
          v15[1] = v19;
          v20 = (v15 + v12);
          v21 = vaddq_f64(*(v15 + v12 + 16), vcvt_hight_f64_f32(v17));
          *v20 = vaddq_f64(*(v15 + 8 * a2), vcvtq_f64_f32(*v17.f32));
          v20[1] = v21;
          v15 += 2;
          v14 -= 4;
        }

        while (v14);
        v13 = a2 & 0x7FFFFFFC;
        if (v13 == a2)
        {
          goto LABEL_10;
        }
      }

      do
      {
        v22 = v5->f32[v13];
        v7->f64[v13] = v7->f64[v13] + (v22 * v22);
        *&v8[8 * v13] = *&v8[8 * v13] + v22;
        ++v13;
      }

      while (a2 != v13);
LABEL_10:
      ++v9;
      v5 = (v5 + 4 * a2);
    }

    while (v9 != a3);
  }

  v23 = 0;
  LODWORD(result) = 0;
  v25 = a3;
  v26 = -1.17549435e-38;
  do
  {
    v27 = *&v8[8 * v23] / v25;
    v28 = v7->f64[v23] / v25 - v27 * v27;
    if (v28 <= v26)
    {
      result = result;
    }

    else
    {
      result = v23;
    }

    if (v28 > v26)
    {
      v26 = v7->f64[v23] / v25 - v27 * v27;
    }

    ++v23;
  }

  while (a2 != v23);
  return result;
}

uint64_t rkd_split_dim_bbox(float32x4_t *a1, int a2, int a3)
{
  v5 = a1;
  v40[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v7 = (v40 - v6);
  if (a2 < 1)
  {
    return 0;
  }

  bzero(v40 - v6, v6);
  v8 = 8 * a2;
  v9 = a2;
  if (a2 > 3)
  {
    v12 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    v10 = a2 & 0x7FFFFFFC;
    v13 = vdupq_n_s64(0xC7EFFFFFE0000000);
    v14 = v10;
    v15 = v7;
    do
    {
      *v15 = v12;
      v15[1] = v12;
      v16 = (v15 + v8);
      *v16 = v13;
      v16[1] = v13;
      v15 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v10 == a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = a2 - v10;
  v18 = &v7[v10];
  do
  {
    *v18 = 3.40282347e38;
    v18[a2] = -3.40282347e38;
    ++v18;
    --v17;
  }

  while (v17);
LABEL_10:
  if (a3 > 0)
  {
    v19 = 0;
    v20 = &v7[a2];
    v22 = v7 < &v7[a2 + a2] && v20 < &v7[a2];
    while (a2 >= 4 && !v22)
    {
      v24 = a2 & 0x7FFFFFFC;
      v25 = v7;
      v26 = v5;
      do
      {
        v27 = *v26++;
        v28 = vcvtq_f64_f32(*v27.f32);
        v29 = vcvt_hight_f64_f32(v27);
        v30 = vbslq_s8(vcgtq_f64(v25[1], v29), v29, v25[1]);
        *v25 = vbslq_s8(vcgtq_f64(*v25, v28), v28, *v25);
        v25[1] = v30;
        v31 = (v25 + v8);
        v32 = vbslq_s8(vcgtq_f64(v29, *(v25 + v8 + 16)), v29, *(&v25[1] + v8));
        *v31 = vbslq_s8(vcgtq_f64(v28, *(v25 + 8 * a2)), v28, *(v25 + 8 * a2));
        v31[1] = v32;
        v25 += 2;
        v24 -= 4;
      }

      while (v24);
      v23 = a2 & 0x7FFFFFFC;
      if (v23 != a2)
      {
        goto LABEL_23;
      }

LABEL_17:
      ++v19;
      v5 = (v5 + 4 * a2);
      if (v19 == a3)
      {
        goto LABEL_29;
      }
    }

    v23 = 0;
    do
    {
LABEL_23:
      v33 = v5->f32[v23];
      v34 = v7[v23];
      if (v34 > v33)
      {
        v34 = v5->f32[v23];
      }

      v7[v23] = v34;
      if (v20[v23] >= v33)
      {
        v33 = v20[v23];
      }

      v20[v23++] = v33;
    }

    while (a2 != v23);
    goto LABEL_17;
  }

LABEL_29:
  v35 = 0;
  LODWORD(result) = 0;
  v36 = -1.17549435e-38;
  do
  {
    v37 = v7[a2];
    v38 = *v7++;
    v39 = v37 - v38;
    if (v39 <= v36)
    {
      result = result;
    }

    else
    {
      result = v35;
    }

    if (v39 > v36)
    {
      v36 = v39;
    }

    ++v35;
    --v9;
  }

  while (v9);
  return result;
}

unint64_t rkd_sample_median(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t *a6)
{
  if (a5)
  {
    v9 = (a5 - 1);
    v11 = rkd_sample_median(a1, a2, a3, a4, v9);
    v12 = rkd_sample_median(a1, a2, a3, a4, v9);
    v13 = rkd_sample_median(a1, a2, a3, a4, v9);
  }

  else
  {
    v14 = a6[1];
    v15 = (v14 >> 5) ^ ((*a6 ^ (*a6 << 23)) >> 18) ^ v14 ^ *a6 ^ (*a6 << 23);
    v11 = (v15 + v14) % a3;
    v16 = ((v14 ^ (v14 << 23)) >> 18) ^ (v15 >> 5) ^ v14 ^ (v14 << 23) ^ v15;
    v12 = (v16 + v15) % a3;
    v17 = ((v15 ^ (v15 << 23)) >> 18) ^ (v16 >> 5) ^ v15 ^ (v15 << 23) ^ v16;
    *a6 = v16;
    a6[1] = v17;
    v13 = (v17 + v16) % a3;
  }

  v18 = *(a1 + 4 * (a4 + v11 * a2));
  v19 = *(a1 + 4 * (a4 + v12 * a2));
  v20 = *(a1 + 4 * (a4 + v13 * a2));
  if (v18 >= v19)
  {
    if (v18 > v20)
    {
      if (v19 <= v20)
      {
        return v13;
      }

      else
      {
        return v12;
      }
    }
  }

  else if (v18 < v20)
  {
    if (v19 >= v20)
    {
      return v13;
    }

    else
    {
      return v12;
    }
  }

  return v11;
}

uint64_t log_console_fmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, FILE *a9)
{
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v10;
  v13 = v12;
  v52 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v9;
  v59 = *MEMORY[0x277D85DE8];
  memset(v58, 0, sizeof(v58));
  memset(v57, 0, sizeof(v57));
  bzero(&v55[0].tm_isdst, 0x400uLL);
  *&v55[0].tm_sec = 0;
  *&v55[0].tm_hour = 0;
  v53 = 0.0;
  v54 = 0;
  if ((v22 & 2) == 0)
  {
    v24 = 0;
    LOBYTE(v56.tv_sec) = 0;
    if (v23 > 2)
    {
      goto LABEL_3;
    }

LABEL_31:
    if (v23 == 1)
    {
      v26 = 31;
      v25 = 1;
      goto LABEL_37;
    }

    if (v23 == 2)
    {
      v25 = 0;
      v26 = 33;
      goto LABEL_37;
    }

LABEL_46:
    abort();
  }

  *&v56.tv_usec = 0;
  v56.tv_sec = 0;
  if (gettimeofday(&v56, 0) || (v56.tv_usec + 1000000 * v56.tv_sec) / 1000000.0 <= 1514764800.0)
  {
    __assert_rtn("u_timel", "arch_dtime.c", 118, "ret == 0 && result/1e6 > 1514764800L");
  }

  v27 = __sprintf_chk(&v56, 0, 0x2728uLL, "(");
  v28 = strrchr(v20, 47);
  if (v28)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = v20;
  }

  if (v27 <= 1)
  {
    v30 = "";
  }

  else
  {
    v30 = " ";
  }

  if (v27 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  v32 = v11;
  if (v27 <= 1)
  {
    v33 = v27;
  }

  else
  {
    v33 = v27 + 1;
  }

  memcpy(&v56 + v27, v30, v31);
  v34 = v33 + sprintf(&v56 + v33, "%s:%d", v29, v18);
  v11 = v32;
  if (v34 <= 1)
  {
    v35 = "";
  }

  else
  {
    v35 = " ";
  }

  if (v34 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2;
  }

  if (v34 <= 1)
  {
    v37 = v34;
  }

  else
  {
    v37 = v34 + 1;
  }

  memcpy(&v56 + v34, v35, v36);
  v38 = strlen(v16);
  v39 = v38;
  memcpy(&v56 + v37, v16, v38 + 1);
  *(&v56.tv_sec + v37 + v39) = 41;
  v24 = v37 + v39 + 1;
  if (v23 <= 2)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (v23 != 3)
  {
    if (v23 == 4)
    {
      v26 = 35;
      v25 = 1;
      goto LABEL_37;
    }

    if (v23 == 5)
    {
      v25 = 0;
      v26 = 35;
LABEL_37:
      __sprintf_chk(v58, 0, 0x20uLL, "%c[%d;%dm", 27, v25, v26);
      goto LABEL_38;
    }

    goto LABEL_46;
  }

  LOBYTE(v58[0]) = 0;
LABEL_38:
  __sprintf_chk(v57, 0, 0x20uLL, "%c[0m", 27);
  v51 = off_279E2DC58[v23];
  if (v11)
  {
    strcpy(&v55[0].tm_isdst, "  ");
    v40 = snprintf(&v55[0].tm_isdst + 2, 0x3FEuLL, "%s=", *v13);
    v41 = v40 + 2;
    v42 = snprintf_log_field_value(&v55[0].tm_isdst + v41, 1022 - v40, v13);
    v43 = v11 - 1;
    if (v11 != 1)
    {
      v44 = v41 + v42;
      v45 = (v13 + 3);
      v46 = v13 + 3;
      do
      {
        v47 = v44 + snprintf(&v55[0].tm_isdst + v44, 1024 - v44, ", ");
        v48 = *v46;
        v46 += 3;
        v49 = v47 + snprintf(&v55[0].tm_isdst + v47, 1024 - v47, "%s=", v48);
        v44 = v49 + snprintf_log_field_value(&v55[0].tm_isdst + v49, 1024 - v49, v45);
        v45 = v46;
        --v43;
      }

      while (v43);
    }
  }

  if (v24 >= 1024)
  {
    log_msg(2, 0, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/core/util/log.c", 697, "log_console_fmt", "Exceeded log field buffer %d >= %d. Next log line will be cut short.", v24, 1024);
  }

  *&v55[0].tm_mon = 0;
  *&v55[0].tm_wday = 0;
  gettimeofday(&v55[0].tm_mon, 0);
  v55[0].tm_sec = *&v55[0].tm_mon / 86400;
  *&v55[0].tm_hour = v55[0].tm_wday / 1000.0 / 1000.0 + (*&v55[0].tm_mon - 86400 * v55[0].tm_sec);
  dtime_get(v55, 0, 0, 0, &v54 + 1, &v54, &v53, 1000000);
  fprintf(a9, "%02d:%02d:%02d %s%-7s%s: %s%s%s\n", HIDWORD(v54), v54, v53, v58, v51, &v56, v52, &v55[0].tm_isdst, v57);
  return fflush(a9);
}

uint64_t log_to_other_targets_lf(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (targets[0])
  {
    v15 = result;
    if (pthread_rwlock_rdlock(&targets_lock))
    {
      __assert_rtn("log_to_other_targets_lf", "log.c", 874, "err == 0 && Could not acquire lock of targets variable. Has log been initialized?");
    }

    v16 = targets[0];
    if (targets[0])
    {
      v17 = 0;
      do
      {
        if (*(v16 + 32) >= v15)
        {
          v18 = *(v16 + 8);
          if (v18 == 1)
          {
            (*v16)(*(v16 + 24), *(v16 + 36), v15, a2, a3, a4, a5, a6, a7, a8);
          }

          else if (!v18)
          {
            (*v16)(*(v16 + 24), *(v16 + 36), v15, a2, a3, a4, a5, a6, v20, v21);
          }
        }

        if (v17 > 8)
        {
          break;
        }

        v19 = &targets[v17++];
        v16 = v19[1];
      }

      while (v16);
    }

    result = pthread_rwlock_unlock(&targets_lock);
    if (result)
    {
      __assert_rtn("log_to_other_targets_lf", "log.c", 888, "err == 0 && Could not release log lock");
    }
  }

  return result;
}

__darwin_time_t toc_explicit(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, char a9)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1 <= 3)
  {
    *v34 = 0;
    v35 = 0;
    v32 = 0u;
    v33 = 0u;
    *v30 = 0u;
    v31 = 0u;
    v36.tv_sec = 0;
    *&v36.tv_usec = 0;
    if (gettimeofday(&v36, 0) || (v17 = v36.tv_usec + 1000000 * v36.tv_sec, v17 / 1000000.0 <= 1514764800.0))
    {
LABEL_38:
      __assert_rtn("u_timel", "arch_dtime.c", 118, "ret == 0 && result/1e6 > 1514764800L");
    }

    v18 = v17 - a2;
    vsnprintf(__str, 0x400uLL, a8, &a9);
    if (a3)
    {
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      snprintf(v34, 0x10uLL, " = %8d Hz", llround(1000000.0 / v19));
    }

    if (a4)
    {
      v20 = fopen("/proc/self/status", "rt");
      if (v20)
      {
        v21 = v20;
        while (fgets(&v36, 512, v21))
        {
          if (LODWORD(v36.tv_sec) == *"VmRSS:" && WORD2(v36.tv_sec) == *"S:")
          {
            v23 = atol(&v36.tv_sec + 6);
            goto LABEL_21;
          }
        }

        v23 = -1.0;
LABEL_21:
        fclose(v21);
      }

      else
      {
        v23 = -1.0;
      }

      v24 = (v23 - *&toc_explicit_last_mem_usage) * 0.000000953674316;
      v25 = fopen("/proc/self/status", "rt");
      if (v25)
      {
        v26 = v25;
        while (fgets(&v36, 512, v26))
        {
          if (LODWORD(v36.tv_sec) == *"VmSize:" && *(&v36.tv_sec + 3) == *"ize:")
          {
            v28 = vcvtd_n_f64_s64(atol(&v36.tv_sec + 7), 0x14uLL);
            goto LABEL_33;
          }
        }

        v28 = -0.000000953674316;
LABEL_33:
        fclose(v26);
      }

      else
      {
        v28 = -0.000000953674316;
      }

      snprintf(v30, 0x40uLL, ", RSS = %6.2f GB (delta: %6.2f GB), VM = %6.2f GB", v23 * 0.000000953674316, v24, v28);
      toc_explicit_last_mem_usage = *&v23;
    }

    snprintf(&v36, 0x800uLL, "toc: %12.2f ms%s%s (%s)", v18 * 0.001, v34, v30, __str);
    log_msg(a1, 0, a5, a6, a7, "%s", &v36);
  }

  v36.tv_sec = 0;
  *&v36.tv_usec = 0;
  if (gettimeofday(&v36, 0))
  {
    goto LABEL_38;
  }

  result = v36.tv_usec + 1000000 * v36.tv_sec;
  if (result / 1000000.0 <= 1514764800.0)
  {
    goto LABEL_38;
  }

  return result;
}

_BYTE *log_args_buf(char *a1, int a2, void **a3, char *__format, va_list a5)
{
  v8 = a1;
  v9 = vsnprintf(a1, a2, __format, a5);
  if (v9 < 0)
  {
    return 0;
  }

  if (v8 && v9 < a2)
  {
    goto LABEL_6;
  }

  v10 = (v9 + 1);
  v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
  *a3 = v11;
  if (!v11)
  {
    return 0;
  }

  v9 = vsnprintf(v11, v10, __format, a5);
  v8 = *a3;
  if (v9 < 0)
  {
    free(*a3);
    return 0;
  }

LABEL_6:
  if (v9)
  {
    if (v8[v9 - 1] == 10)
    {
      v8[v9 - 1] = 0;
    }
  }

  return v8;
}

uint64_t snprintf_log_field_value(char *a1, int a2, uint64_t a3)
{
  result = 0;
  v6 = *(a3 + 16);
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          return snprintf(a1, a2, "%d");
        }
      }

      else
      {
        return snprintf(a1, a2, "%s");
      }
    }

    else if (v6 == 2)
    {
      return snprintf(a1, a2, "%u");
    }

    else if (v6 == 3)
    {
      return snprintf(a1, a2, "%lld");
    }

    else
    {
      return snprintf(a1, a2, "%llu");
    }

    return result;
  }

  if (v6 > 7)
  {
    if (v6 == 8)
    {
      v22 = snprintf(a1, a2 & ~(a2 >> 31), "[");
      v9 = v22;
      v23 = *(a3 + 8);
      if (*v23 >= 1)
      {
        v24 = v23[1];
        v29 = 0;
        v30 = 0;
        v28 = "";
        LODWORD(v29) = *v24;
        LODWORD(v30) = 1;
        v9 = snprintf_log_field_value(&a1[v22], (a2 - v22) & ~((a2 - v22) >> 31), &v28) + v22;
        if (*v23 >= 2)
        {
          v25 = 1;
          do
          {
            v26 = v23[1];
            v29 = 0;
            v30 = 0;
            LODWORD(v26) = *(v26 + 4 * v25);
            v28 = "";
            LODWORD(v29) = v26;
            LODWORD(v30) = 1;
            v27 = v9 + snprintf(&a1[v9], (a2 - v9) & ~((a2 - v9) >> 31), ",");
            v9 = snprintf_log_field_value(&a1[v27], (a2 - v27) & ~((a2 - v27) >> 31), &v28) + v27;
            ++v25;
          }

          while (v25 < *v23);
        }
      }
    }

    else
    {
      if (v6 != 9)
      {
        return result;
      }

      v8 = snprintf(a1, a2 & ~(a2 >> 31), "[");
      v9 = v8;
      v10 = *(a3 + 8);
      if (*v10 >= 1)
      {
        v11 = v10[1];
        v30 = 6;
        v28 = "";
        v29 = *v11;
        v9 = snprintf_log_field_value(&a1[v8], (a2 - v8) & ~((a2 - v8) >> 31), &v28) + v8;
        if (*v10 >= 2)
        {
          v12 = 1;
          do
          {
            v13 = v10[1];
            v30 = 6;
            v28 = "";
            v29 = *(v13 + 8 * v12);
            v14 = v9 + snprintf(&a1[v9], (a2 - v9) & ~((a2 - v9) >> 31), ",");
            v9 = snprintf_log_field_value(&a1[v14], (a2 - v14) & ~((a2 - v14) >> 31), &v28) + v14;
            ++v12;
          }

          while (v12 < *v10);
        }
      }
    }

    return (snprintf(&a1[v9], (a2 - v9) & ~((a2 - v9) >> 31), "]") + v9);
  }

  if ((v6 - 5) < 2)
  {
    return snprintf(a1, a2, "%f");
  }

  if (v6 == 7)
  {
    v16 = snprintf(a1, a2 & ~(a2 >> 31), "[");
    v9 = v16;
    v17 = *(a3 + 8);
    if (*v17 >= 1)
    {
      v18 = **(v17 + 8);
      v28 = "";
      v29 = v18;
      v30 = 0;
      v9 = snprintf_log_field_value(&a1[v16], (a2 - v16) & ~((a2 - v16) >> 31), &v28) + v16;
      if (*v17 >= 2)
      {
        v19 = 1;
        do
        {
          v29 = *(*(v17 + 8) + 8 * v19);
          v30 = 0;
          v28 = "";
          v20 = v9 + snprintf(&a1[v9], (a2 - v9) & ~((a2 - v9) >> 31), ",");
          v9 = snprintf_log_field_value(&a1[v20], (a2 - v20) & ~((a2 - v20) >> 31), &v28) + v20;
          ++v19;
        }

        while (v19 < *v17);
      }
    }

    return (snprintf(&a1[v9], (a2 - v9) & ~((a2 - v9) >> 31), "]") + v9);
  }

  return result;
}

void log_msg_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *__format, va_list a9)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  if (a1 <= 3)
  {
    v16 = log_args_buf(v24, 1024, &v23, __format, a9);
    if (!v16)
    {
LABEL_15:
      free(v23);
      return;
    }

    v17 = v16;
    if (running_in_bootstrapped_env_ret == -1)
    {
      v19 = getenv("SCHEDULER_BOOTSTRAP");
      if (v19)
      {
        running_in_bootstrapped_env_ret = *v19 != 0;
        v18 = *MEMORY[0x277D85E08];
        if (running_in_bootstrapped_env_ret)
        {
          goto LABEL_5;
        }
      }

      else
      {
        running_in_bootstrapped_env_ret = 0;
        v18 = *MEMORY[0x277D85E08];
      }
    }

    else
    {
      v18 = *MEMORY[0x277D85E08];
      if (running_in_bootstrapped_env_ret)
      {
LABEL_5:
        log_to_file_handle(v18, 2, a1, a2, a3, a4, a5, v17, a6, a7);
LABEL_14:
        log_to_other_targets_lf(a1, a2, a3, a4, a5, v17, a6, a7);
        goto LABEL_15;
      }
    }

    if ((a2 & 2) != 0)
    {
      v20 = v18;
      v21 = strlen(v17);
      v22 = malloc_type_calloc(v21 + 12, 1uLL, 0x100004077774924uLL);
      sprintf(v22, "CRITICAL - %s", v17);
      log_console_fmt(a1, a2, a3, a4, a5, v22, a6, a7, v20);
      if (v22)
      {
        free(v22);
      }
    }

    else
    {
      log_console_fmt(a1, a2, a3, a4, a5, v17, a6, a7, v18);
    }

    goto LABEL_14;
  }
}

void log_to_file_handle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = MEMORY[0x28223BE20](a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v23 = v10;
  v24 = a9;
  v60 = *MEMORY[0x277D85DE8];
  if ((v18 & 2) != 0)
  {
    v28 = v12;
    v29 = v13;
    v30 = strlen(v14);
    v26 = malloc_type_calloc(v30 + 12, 1uLL, 0x100004077774924uLL);
    sprintf(v26, "CRITICAL - %s", v15);
    v13 = v29;
    v12 = v28;
    v25 = v26;
    v27 = a10;
    if (v22 != 2)
    {
      goto LABEL_3;
    }

LABEL_8:
    bzero(v57, 0x400uLL);
    *&v59.tv_usec = 0;
    v59.tv_sec = 0;
    if (gettimeofday(&v59, 0) || (v31 = (v59.tv_usec + 1000000 * v59.tv_sec) / 1000000.0, v31 <= 1514764800.0))
    {
      __assert_rtn("u_timel", "arch_dtime.c", 118, "ret == 0 && result/1e6 > 1514764800L");
    }

    v32 = &v59;
    cstr_escape(&v59, 10240, v26, 0);
    v33 = strlen(&v59);
    v34 = (&v59 + v33 - 1);
    v35 = v33 + 1;
    v36 = MEMORY[0x277D85DE0];
    do
    {
      while (1)
      {
        tv_sec_low = SLOBYTE(v32->tv_sec);
        if ((tv_sec_low & 0x80000000) != 0)
        {
          break;
        }

        v38 = &v32->tv_sec + 1;
        --v35;
        v41 = (*(v36 + 4 * tv_sec_low + 60) & 0x4000) == 0 || v32 >= v34;
        v32 = (v32 + 1);
        if (v41)
        {
          goto LABEL_21;
        }
      }

      v37 = __maskrune(tv_sec_low, 0x4000uLL);
      v38 = &v32->tv_sec + 1;
      --v35;
      if (v37)
      {
        v39 = v32 >= v34;
      }

      else
      {
        v39 = 1;
      }

      v32 = (v32 + 1);
    }

    while (!v39);
LABEL_21:
    v42 = v38 - 1;
    do
    {
      v43 = SLOBYTE(v34->tv_sec);
      if ((v43 & 0x80000000) != 0)
      {
        v44 = __maskrune(v43, 0x4000uLL);
        v45 = &v34[-1].tv_usec + 7;
        --v35;
        if (v34 <= v42)
        {
          break;
        }
      }

      else
      {
        v44 = *(v36 + 4 * v43 + 60) & 0x4000;
        v45 = &v34[-1].tv_usec + 7;
        --v35;
        if (v34 <= v42)
        {
          break;
        }
      }

      v34 = v45;
    }

    while (v44);
    if (v42 <= v45 + 1)
    {
      v46 = *v42;
      if ((v46 & 0x80000000) != 0)
      {
        v47 = __maskrune(v46, 0x4000uLL);
      }

      else
      {
        v47 = *(v36 + 4 * v46 + 60) & 0x4000;
      }

      if (v47)
      {
        v48 = v35;
      }

      else
      {
        v48 = v35 + 1;
      }

      v49 = v48;
      __memmove_chk();
      *(&v59.tv_sec + v49) = 0;
    }

    if (v27)
    {
      v50 = 0;
      v51 = a9;
      do
      {
        v52 = *v51;
        v51 += 3;
        v53 = v50 + snprintf(&v57[v50], (1024 - v50) & ~((1024 - v50) >> 31), ",%s:", v52);
        v54 = snprintf_log_field_value(&v57[v53], (1024 - v53) & ~((1024 - v53) >> 31), v24);
        v50 = v53 + v54;
        v24 = v51;
        --v27;
      }

      while (v27);
      if (v50 >= 1024)
      {
        log_msg(2, 0, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/core/util/log.c", 798, "log_bootstrap_fmt", "Exceeded log field buffer %d >= %d. Next log line will be cut short.", v53 + v54, 1024);
      }
    }

    v56 = v31;
    memset(&v55, 0, sizeof(v55));
    gmtime_r(&v56, &v55);
    if (snprintf(__str, 0x80uLL, "%d-%02d-%02dT%02d:%02d:%02d.%06d", v55.tm_year + 1900, v55.tm_mon + 1, v55.tm_mday, v55.tm_hour, v55.tm_min, v55.tm_sec, ((v31 - floor(v31)) * 1000000.0)) >= 0x80)
    {
      __assert_rtn("timestamp_ISO_8601", "log.c", 735, "len > snprintf(buf, len, %d-%02d-%02dT%02d:%02d:%02d.%06d, tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min, tm.tm_sec, (int)((timestamp - floor(timestamp)) * 1000000)) && timestamp truncated");
    }

    fprintf(v23, "{time:%sZ,level:%s,msg:%s,file:%s,function:%s,line:%d%s}\n", __str);
    goto LABEL_43;
  }

  v25 = 0;
  v26 = v14;
  v27 = a10;
  if (v11 == 2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v22 == 1)
  {
    log_console_fmt(v21, v19, v12, v13, v17, v26, a9, v27, v23);
    goto LABEL_44;
  }

  if (v22 || !*v15)
  {
    goto LABEL_44;
  }

  fprintf(v23, "%s\n");
LABEL_43:
  fflush(v23);
LABEL_44:
  if (v25)
  {
    free(v25);
  }
}