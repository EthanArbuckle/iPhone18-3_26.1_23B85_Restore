void *merge_controls(void *result, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return result;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  v4 = 0;
  v5 = *result + result[1];
  v6 = result + 3;
  v7 = 1;
  do
  {
    v8 = *v6;
    v9 = v6[1];
    if (v5 == *(a3 + 2072))
    {
LABEL_8:
      ++v4;
      v13 = *v6;
      v14 = &result[3 * v4];
      v14[2] = v6[2];
      *v14 = v13;
      goto LABEL_17;
    }

    v10 = &result[3 * v4];
    v11 = v10[1];
    if (v8)
    {
      if (v11)
      {
        goto LABEL_8;
      }

      v12 = v10[2];
      if (v12)
      {
        goto LABEL_8;
      }

      v11 = 0;
    }

    else
    {
      v12 = v10[2];
    }

    *v10 += v8;
    v10[1] = v11 + v9;
    if (v12 < 0)
    {
      v12 = 0x8000000000000000 - v12;
    }

    v15 = v6[2];
    if (v15 < 0)
    {
      v15 = 0x8000000000000000 - v15;
    }

    v16 = __OFADD__(v15, v12);
    v17 = v15 + v12;
    if (v17 < 0 != v16)
    {
      v17 = 0x8000000000000000 - v17;
    }

    v10[2] = v17;
LABEL_17:
    v5 += v9 + v8;
    ++v7;
    v6 += 3;
  }

  while (v7 < *a2);
  v3 = v4 + 1;
LABEL_20:
  *a2 = v3;
  return result;
}

uint64_t SimStreamClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (v9 < 1)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  do
  {
    v13 = *v11;
    v11 = (v11 + 5);
    v10 += v13;
    --v12;
  }

  while (v12);
  if (v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 148, 141, 0, "%i dangling reads", a7, a8, v10);
    v9 = *(a1 + 16);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = *(a1 + 24);
  if (*(a1 + 28) + v9 != *(a1 + 20) + v15)
  {
    pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 152, 141, "file + excess != written + free", a6, a7, a8, v17);
    v9 = *(a1 + 16);
    v15 = *(a1 + 24);
  }

  if (v9 < v15)
  {
    pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 154, 141, "file < written", a6, a7, a8, v17);
  }

  if (*(a1 + 36) >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "SimStream: pages: %i file, %i written, %i free, %i excess (%iK)\n", *(a1 + 16), *(a1 + 24), *(a1 + 20), *(a1 + 28), 16 * *(a1 + 28));
  }

  free(*(a1 + 8));
  free(a1);
  return v14;
}

uint64_t SimStreamSimulate(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 < 1)
  {
    return a4;
  }

  if (a2 > 2)
  {
    v17 = "not implemented";
    v18 = 87;
    goto LABEL_20;
  }

  v9 = a5 + a4;
  v10 = *(a1 + 8);
  while (1)
  {
    v11 = v10 + 5 * (a5 >> 14);
    if (a2)
    {
      break;
    }

    if (!(*v11)++)
    {
      v14 = *(a1 + 20);
      *(a1 + 20) = v14 - 1;
      if (!v14)
      {
        v17 = "no free pages";
        v18 = 94;
        goto LABEL_20;
      }
    }

LABEL_17:
    a5 = (a5 & 0xFFFFFFFFFFFFC000) + 0x4000;
    if (a5 >= v9)
    {
      return a4;
    }
  }

  if (a2 != 1)
  {
    if (!*(v11 + 4))
    {
      *(v11 + 4) = 1;
      v15 = *(a1 + 20);
      if (v15)
      {
        *(a1 + 20) = v15 - 1;
      }

      else
      {
        ++*(a1 + 28);
      }

      ++*(a1 + 24);
    }

    goto LABEL_17;
  }

  if (*v11 > 0)
  {
    v12 = *v11 - 1;
    *v11 = v12;
    if (!v12)
    {
      ++*(a1 + 20);
    }

    goto LABEL_17;
  }

  v17 = "data not locked";
  v18 = 99;
LABEL_20:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamSimulate", v18, 141, 0, v17, a7, a8, v8);
  return -1;
}

uint64_t compare_extents_by_position(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

void rawimg_destroy(uint64_t *a1)
{
  if (a1)
  {
    if (a1[270])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        free(*(a1[268] + v2 + 72));
        free(*(a1[268] + v2 + 64));
        free(*(a1[268] + v2 + 80));
        ++v3;
        v2 += 129;
      }

      while (v3 < a1[270]);
    }

    pc_array_free(a1[267]);
    pc_array_free(a1[268]);

    free(a1);
  }
}

uint64_t rawimg_show(uint64_t result, int a2, int a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v5 = result;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v6 = *(result + 2160);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = (*(result + 2144) + 96);
      do
      {
        v7 += *v9;
        v8 += *(v9 - 1);
        v9 = (v9 + 129);
        --v6;
      }

      while (v6);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    result = serializeHexString(v17, 0x20u, (result + 2088));
    if (a3 > 1)
    {
      v10 = MEMORY[0x29EDCA610];
      v11 = "Output";
      if (!a2)
      {
        v11 = "Input";
      }

      v12 = "";
      if (v5[256])
      {
        v12 = v5[256];
      }

      result = fprintf(*MEMORY[0x29EDCA610], "%s variant <%s> | %llu bytes | %zu extents | %zu forks (%llu/%llu) | digest=%s\n", v11, v12, v5[265], v5[269], v5[270], v7, v8, v17);
      if (a3 != 2)
      {
        result = fprintf(*v10, " fork | %64s | algo |       size | compressed | V | C\n", "digest");
        if (v5[270])
        {
          v13 = 0;
          v14 = 0;
          do
          {
            v15 = v5[268] + v13;
            serializeHexString(v17, 0x20u, v15);
            result = fprintf(*v10, "%5zu | %s | %4d | %10llu | %10llu | %d | %d\n", ++v14, v17, *(v15 + 128), *(v15 + 88), *(v15 + 96), *(v15 + 104) & 1, (*(v15 + 104) >> 1) & 1);
            v13 += 129;
          }

          while (v14 < v5[270]);
        }
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *rawimg_create_with_path(const char *a1)
{
  v2 = calloc(1uLL, 0x878uLL);
  memset(&v23, 0, sizeof(v23));
  if (!v2)
  {
    v20 = *__error();
    v18 = "aaCalloc";
    v19 = 489;
    goto LABEL_17;
  }

  if (lstat(a1, &v23) || (v23.st_mode & 0xF000) != 0x8000)
  {
    v18 = "lstat";
    v19 = 490;
LABEL_15:
    v20 = 0;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_create_with_path", v19, 138, v20, v18, v3, v4, v23.st_dev);
    rawimg_destroy(v2);
    return 0;
  }

  v2[256] = a1;
  v2[265] = v23.st_size;
  v2[267] = pc_array_init(16);
  v5 = pc_array_init(129);
  v2[268] = v5;
  if (!v2[267] || !v5)
  {
    v18 = "pc_array_init";
    v19 = 497;
    goto LABEL_15;
  }

  if ((apfs_scan_diskimage(a1, rawimg_add_fork, rawimg_add_volume, v2) & 0x80000000) != 0)
  {
    v18 = "rawimg_query_forks";
    v19 = 500;
    goto LABEL_15;
  }

  v6 = v2[268];
  v7 = *(v6 - 8);
  v2[270] = v7;
  v2[269] = *(v2[267] - 64);
  if (v7)
  {
    pc_array_sort(v6, compare_forks_by_extent);
    if ((pc_array_aggregate(v2[268], compare_forks_by_extent, aggregate_identical_forks) & 0x80000000) != 0)
    {
      v22 = "rawimg_remove_fork_duplicates";
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_remove_fork_duplicates", 475, 138, 0, "bad duplicate", v8, v9, v23.st_dev);
      v19 = 505;
      goto LABEL_23;
    }

    v6 = v2[268];
    v2[270] = *(v6 - 8);
  }

  v2[268] = pc_array_compact(v6);
  v10 = pc_array_compact(v2[267]);
  v2[267] = v10;
  if (!v10 || !v2[268])
  {
    v22 = "rawimg_compact";
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_compact", 93, 138, 0, "pc_array_compress", v16, v17, v23.st_dev);
    v19 = 506;
LABEL_23:
    v20 = 0;
    v18 = v22;
    goto LABEL_17;
  }

  if ((rawimg_verify(v2, v11, v12, v13, v14, v15, v16, v17) & 0x80000000) != 0)
  {
    v18 = "rawimg_verify";
    v19 = 507;
    goto LABEL_15;
  }

  qsort_r(v2[268], v2[270], 0x81uLL, v2, compare_forks_by_position);
  return v2;
}

uint64_t rawimg_add_fork(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x29EDCA608];
  v25 = 0u;
  v26 = 0u;
  memset(__src, 0, sizeof(__src));
  v8 = *(a1 + 20);
  if (!v8 || !*a1)
  {
    v20 = "bad fork";
    v21 = 437;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_add_fork", v21, 138, 0, v20, a7, a8, v23);
    result = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v11 = *(a1 + 8);
  *(&v25 + 1) = *a1;
  *&v26 = v11;
  v27 = *(*(a2 + 2136) - 64);
  v28 = v8;
  v29 = *(a1 + 16);
  v12 = pc_array_append(*(a2 + 2144), __src, a3, a4, a5, a6, a7, a8);
  *(a2 + 2144) = v12;
  if (!v12)
  {
    v20 = "pc_array_append";
    v21 = 448;
    goto LABEL_10;
  }

  if (*(a1 + 20) >= 1)
  {
    v17 = 0;
    v18 = *(a2 + 2136);
    while (1)
    {
      v23 = 0uLL;
      v23 = *(*(a1 + 24) + 16 * v17);
      v18 = pc_array_append(v18, &v23, v13, v14, v15, v16, a7, a8);
      *(a2 + 2136) = v18;
      if (!v18)
      {
        break;
      }

      if (++v17 >= *(a1 + 20))
      {
        goto LABEL_8;
      }
    }

    v20 = "pc_array_append";
    v21 = 461;
    goto LABEL_10;
  }

LABEL_8:
  result = 0;
LABEL_11:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rawimg_verify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[270];
  v9 = a1[269];
  if (!v8 || !v9)
  {
    if (!(v8 + v9))
    {
      return 0;
    }

    v27 = "bad variant";
    v28 = 202;
LABEL_22:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", v28, 138, 0, v27, a7, a8, v59);
    v29 = 0;
    v17 = 0;
    goto LABEL_23;
  }

  v11 = a1[267];
  v12 = (v11 + 8);
  do
  {
    v13 = *(v12 - 1);
    if ((*v12 + v13) > a1[265])
    {
      v27 = "bad extent";
      v28 = 213;
      goto LABEL_22;
    }

    if ((v13 & 0xFFF) != 0)
    {
      v27 = "bad extent pos";
      v28 = 214;
      goto LABEL_22;
    }

    if ((*v12 & 0xFFFLL) != 0)
    {
      v27 = "bad extent size";
      v28 = 215;
      goto LABEL_22;
    }

    v12 += 2;
    --v9;
  }

  while (v9);
  v14 = pc_array_indirect_sort(v11, compare_extents_by_position);
  v17 = v14;
  if (!v14)
  {
    v24 = "pc_array_indirect_sort";
    v25 = 220;
    goto LABEL_27;
  }

  v18 = a1[269];
  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a1[269];
  }

  v20 = v19 - 1;
  v21 = v14 + 1;
  while (v20)
  {
    v22 = (*(v21 - 1))[1] + **(v21 - 1);
    v23 = **v21;
    --v20;
    ++v21;
    if (v22 > v23)
    {
      v24 = "extents overlapping";
      v25 = 223;
      goto LABEL_27;
    }
  }

  v31 = a1[270];
  v32 = a1[268];
  if (!v31)
  {
LABEL_42:
    v29 = pc_array_indirect_sort(v32, compare_forks_by_extent);
    if (v29)
    {
      v46 = 0;
      v47 = a1[270];
      if (v47 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = a1[270];
      }

      while (--v48)
      {
        v49 = a1[268] + v46;
        v46 += 129;
        if (*(v49 + 112) == *(v49 + 241))
        {
          v50 = "duplicate fork";
          v51 = 257;
          goto LABEL_68;
        }
      }

      if (!v47)
      {
LABEL_58:
        v26 = 0;
        goto LABEL_24;
      }

      v52 = 0;
      while (1)
      {
        v53 = (a1[268] + 129 * v52);
        v54 = v53[7];
        if (v54)
        {
          break;
        }

LABEL_57:
        if (++v52 == v47)
        {
          goto LABEL_58;
        }
      }

      v55 = 0;
      v56 = (v53[10] + 8);
      while (1)
      {
        v57 = *(v56 - 1);
        if (v57 < v55)
        {
          v50 = "bad chunk order";
          v51 = 274;
          goto LABEL_68;
        }

        v55 = v57 + *v56;
        if (v55 > v53[12])
        {
          break;
        }

        v56 += 3;
        if (!--v54)
        {
          goto LABEL_57;
        }
      }

      v50 = "chunk out of bounds";
      v51 = 275;
    }

    else
    {
      v50 = "pc_array_indirect_sort";
      v51 = 254;
    }

LABEL_68:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", v51, 138, 0, v50, v44, v45, v59);
    goto LABEL_23;
  }

  v33 = 0;
  while (2)
  {
    v34 = v32 + 129 * v33;
    v36 = *(v34 + 112);
    v35 = *(v34 + 120);
    if (v35 + v36 > v18)
    {
      v24 = "bad fork";
      v25 = 234;
      goto LABEL_27;
    }

    if (!v35)
    {
      v24 = "no fork extents";
      v25 = 237;
      goto LABEL_27;
    }

    if (!*(v34 + 88))
    {
      v24 = "bad fork size";
      v25 = 240;
      goto LABEL_27;
    }

    v37 = *(v34 + 128);
    if (!*(v34 + 128))
    {
      v58 = 173;
      goto LABEL_65;
    }

    v38 = &a1[*(v34 + 128)];
    if (*v38)
    {
LABEL_38:
      v41 = 0;
      v42 = (a1[267] + 16 * v36 + 8);
      do
      {
        v43 = *v42;
        v42 += 2;
        v41 += v43;
        --v35;
      }

      while (v35);
      if (v41 < *(v34 + 96))
      {
        v24 = "bad fork size";
        v25 = 249;
        goto LABEL_27;
      }

      if (++v33 == v31)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  HIDWORD(v40) = v37 - 4;
  LODWORD(v40) = v37 - 4;
  v39 = v40 >> 1;
  if (v39 < 6 && ((0x35u >> v39) & 1) != 0)
  {
    *v38 = dword_298069820[v39];
    *(v38 + 4) = 0xFFFFFF06FFFFuLL >> (8 * v39);
    goto LABEL_38;
  }

  v58 = 185;
LABEL_65:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_init_algorithm", v58, 138, 0, "bad algo", v15, v16, v59);
  v25 = 243;
  v24 = "rawimg_init_algorithm";
LABEL_27:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", v25, 138, 0, v24, v15, v16, v59);
  v29 = 0;
LABEL_23:
  v26 = 0xFFFFFFFFLL;
LABEL_24:
  free(v17);
  free(v29);
  return v26;
}

uint64_t rawimg_get_digests(uint64_t a1, unsigned int a2, int a3, int a4)
{
  memset(&c, 0, sizeof(c));
  v8 = AAFileStreamOpenWithPath(*(a1 + 2048), 0, 0);
  v11 = v8;
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 591, 138, 0, "AAFileStreamOpenWithPath", v9, v10, v143);
LABEL_79:
    v73 = 0;
    v77 = 0;
    v75 = 0;
    v87 = 0;
    v70 = 0;
    v20 = 0;
    goto LABEL_101;
  }

  if (a4 && (io_set_nocache(v8) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 592, 138, "io_set_nocache %s", v12, v13, v14, *(a1 + 2048));
  }

  if (AAByteStreamSeek(v11, 0, 2) != *(a1 + 2120))
  {
    if (!a3)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 596, 138, "image size mismatch", v15, v16, v17, v143);
    }

    goto LABEL_79;
  }

  v20 = aaSegmentStreamOpen(v11, a1);
  if (!v20)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 602, 138, 0, "aaSegmentStreamOpen", v18, v19, v143);
    goto LABEL_100;
  }

  rawimg_free_chunks(a1);
  if (!*(a1 + 2160))
  {
LABEL_57:
    *(a1 + 2128) |= 8uLL;
    v70 = aaForkInputStreamOpen(v20, a1, 1, v21, v22, v23, v24, v25);
    if (v70)
    {
      v71 = *(a1 + 2160) + ((*(a1 + 2080) + 0x7FFFFFLL) >> 23);
      if (is_mul_ok(v71, 0x38uLL) && 56 * v71 <= 0x2000000000)
      {
        v72 = calloc(*(a1 + 2160) + ((*(a1 + 2080) + 0x7FFFFFLL) >> 23), 0x38uLL);
        if (v72)
        {
          v73 = v72;
          if ((a2 & 0x80000000) != 0)
          {
            *__error() = 12;
            v75 = 0;
            v77 = 0;
            *__error() = 12;
          }

          else
          {
            v74 = a2;
            v75 = calloc(a2, 0x10uLL);
            v76 = calloc(a2, 8uLL);
            v77 = v76;
            if (v75 && v76)
            {
              if (a2)
              {
                v78 = v75;
                v79 = v76;
                do
                {
                  *v79++ = v78;
                  *v78 = v70;
                  v78 += 2;
                  --v74;
                }

                while (v74);
              }

              v87 = ThreadPoolCreate(a2, v76, rawimg_digest_worker);
              if (v87)
              {
                v146 = v71;
                v88 = *(a1 + 2056);
                if (v88 >= *(a1 + 2072))
                {
                  v156 = 0;
LABEL_114:
                  v120 = *(a1 + 2160);
                  if (v120)
                  {
                    v121 = 0;
                    v122 = v146;
                    v123 = v156;
                    v144 = v11;
                    while (1)
                    {
                      v124 = *(a1 + 2144) + 129 * v121;
                      if (*(v124 + 88))
                      {
                        break;
                      }

LABEL_124:
                      if (++v121 >= v120)
                      {
                        goto LABEL_129;
                      }
                    }

                    v148 = *(a1 + 2144) + 129 * v121;
                    v151 = v121;
                    v125 = 0;
                    v126 = v123;
                    v127 = 0;
                    v157 = v126;
                    v128 = &v73[56 * v126];
                    while (1)
                    {
                      __sizeb = v127;
                      v129 = v124;
                      Worker = ThreadPoolGetWorker(v87, v80, v81, v82, v83, v84, v85, v86);
                      if (!Worker)
                      {
                        v136 = "ThreadPoolGetWorker";
                        v137 = 662;
                        goto LABEL_133;
                      }

                      *(Worker + 8) = v128;
                      *(v128 + 6) = v151;
                      v135 = v125 + *(v129 + 88);
                      if (v135 >= 0x800000)
                      {
                        v135 = 0x800000;
                      }

                      *(v128 + 4) = __sizeb + *(v129 + 48);
                      *(v128 + 5) = v135;
                      if ((ThreadPoolRunWorker(v87, Worker, v131, v132, v133, v134, v85, v86) & 0x80000000) != 0)
                      {
                        break;
                      }

                      ++v157;
                      v124 = v148;
                      v127 = __sizeb + 0x800000;
                      v125 -= 0x800000;
                      v128 += 56;
                      if (__sizeb + 0x800000 >= *(v148 + 88))
                      {
                        v120 = *(a1 + 2160);
                        v11 = v144;
                        v122 = v146;
                        v123 = v157;
                        v121 = v151;
                        goto LABEL_124;
                      }
                    }

                    v136 = "ThreadPoolRunWorker";
                    v137 = 667;
LABEL_133:
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", v137, 138, 0, v136, v85, v86, v143);
                    v114 = 0;
                    v11 = v144;
                    goto LABEL_102;
                  }

                  v122 = v146;
                  v123 = v156;
LABEL_129:
                  if (v123 <= v122)
                  {
                    if ((ThreadPoolSync(v87) & 0x80000000) == 0)
                    {
                      qsort(v73, v123, 0x38uLL, compare_digest_tasks);
                      CC_SHA256_Init(&c);
                      if (v123)
                      {
                        v138 = v73;
                        do
                        {
                          CC_SHA256_Update(&c, v138, 0x20u);
                          v138 += 56;
                          --v123;
                        }

                        while (v123);
                      }

                      CC_SHA256_Final((a1 + 2088), &c);
                      if (*(a1 + 2160))
                      {
                        v139 = 0;
                        v140 = 0;
                        do
                        {
                          v158 = v140;
                          CC_SHA256_Init(&c);
                          v141 = &v73[56 * v139];
                          v142 = *(v141 + 6);
                          while (v142 == v158)
                          {
                            CC_SHA256_Update(&c, v141, 0x20u);
                            ++v139;
                            v142 = *(v141 + 13);
                            v141 += 56;
                          }

                          CC_SHA256_Final((*(a1 + 2144) + 129 * v158), &c);
                          v140 = v158 + 1;
                        }

                        while ((v158 + 1) < *(a1 + 2160));
                      }

                      *(a1 + 2128) |= 0x10uLL;
                      v114 = 1;
                      goto LABEL_102;
                    }

                    v118 = "ThreadPoolSync";
                    v119 = 676;
                  }

                  else
                  {
                    v118 = "too many tasks";
                    v119 = 670;
                  }
                }

                else
                {
                  v156 = 0;
                  v89 = -v88;
                  v90 = v73;
                  while (1)
                  {
                    __sizea = v88;
                    v91 = v89;
                    v92 = ThreadPoolGetWorker(v87, v80, v81, v82, v83, v84, v85, v86);
                    if (!v92)
                    {
                      v118 = "ThreadPoolGetWorker";
                      v119 = 643;
                      goto LABEL_148;
                    }

                    *(v92 + 8) = v90;
                    v90[6] = -1;
                    v150 = v91;
                    v97 = v91 + *(a1 + 2072);
                    if (v97 >= 0x800000)
                    {
                      v97 = 0x800000;
                    }

                    v90[4] = __sizea;
                    v90[5] = v97;
                    if ((ThreadPoolRunWorker(v87, v92, v93, v94, v95, v96, v85, v86) & 0x80000000) != 0)
                    {
                      break;
                    }

                    ++v156;
                    v88 = __sizea + 0x800000;
                    v90 += 7;
                    v89 = v150 - 0x800000;
                    if (__sizea + 0x800000 >= *(a1 + 2072))
                    {
                      goto LABEL_114;
                    }
                  }

                  v118 = "ThreadPoolRunWorker";
                  v119 = 648;
                }
              }

              else
              {
                v118 = "ThreadPoolCreate";
                v119 = 634;
              }

LABEL_148:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", v119, 138, 0, v118, v85, v86, v143);
              goto LABEL_101;
            }
          }

          v105 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 627, 138, *v105, "aaCalloc", v106, v107, v143);
LABEL_89:
          v87 = 0;
          goto LABEL_101;
        }
      }

      else
      {
        *__error() = 12;
      }

      v104 = *__error();
      v102 = "aaCalloc";
      v103 = 622;
    }

    else
    {
      v102 = "aaForkInputStreamOpen";
      v103 = 614;
      v104 = 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", v103, 138, v104, v102, v68, v69, v143);
    v73 = 0;
    v77 = 0;
    v75 = 0;
    goto LABEL_89;
  }

  v26 = 0;
  while (1)
  {
    v27 = *(a1 + 2144) + 129 * v26;
    v28 = *(v27 + 88) + 0xFFFFLL;
    *(v27 + 56) = v28 >> 16;
    if (v28 >= 0x2AAAAAAAB0000)
    {
      *__error() = 12;
      *(v27 + 80) = 0;
LABEL_96:
      v108 = *__error();
      v109 = "aaCalloc";
      v110 = 325;
      goto LABEL_97;
    }

    v29 = calloc(v28 >> 16, 0xCuLL);
    *(v27 + 80) = v29;
    if (!v29)
    {
      goto LABEL_96;
    }

    v30 = *(v27 + 56);
    if (*(v27 + 128) == 4)
    {
      v31 = *(v27 + 40);
      v32 = *(v27 + 96);
      *(v27 + 104) |= 4uLL;
      if ((rawimg_allocate_header_and_footer(v27) & 0x80000000) == 0)
      {
        v147 = v26;
        v149 = a2;
        v155 = a3;
        if (v20[4])
        {
          v35 = 0;
          __size = 8 * v30;
          v145 = 8 * v30 + 264;
          v36 = v31 + 264;
          v37 = v31 + v32 - 50;
          v38 = *(v27 + 64);
          v39 = 264;
          while (1)
          {
            v40 = (v20[4])(*v20, v38, v39, v31);
            if (v40 < 0)
            {
              break;
            }

            if (v40)
            {
              v38 += v40;
              v35 += v40;
              v31 += v40;
              v39 -= v40;
              if (v39)
              {
                continue;
              }
            }

            if (v35 != 264)
            {
              break;
            }

            if (v20[4])
            {
              v41 = 0;
              v42 = *(v27 + 72);
              v43 = 50;
              while (1)
              {
                v44 = (v20[4])(*v20, v42, v43, v37);
                if (v44 < 0)
                {
                  break;
                }

                if (v44)
                {
                  v42 += v44;
                  v41 += v44;
                  v37 += v44;
                  v43 -= v44;
                  if (v43)
                  {
                    continue;
                  }
                }

                if (v41 != 50)
                {
                  break;
                }

                v45 = __size;
                if (__size >= 0x2000000001)
                {
                  v50 = 0;
                  *__error() = 12;
                  goto LABEL_92;
                }

                v46 = malloc(__size);
                v50 = v46;
                if (!v46)
                {
                  goto LABEL_92;
                }

                if (!v20[4])
                {
                  goto LABEL_126;
                }

                if (__size)
                {
                  v51 = 0;
                  v52 = v46;
                  while (1)
                  {
                    v53 = (v20[4])(*v20, v52, v45, v36);
                    if (v53 < 0)
                    {
                      break;
                    }

                    if (v53)
                    {
                      v52 += v53;
                      v51 += v53;
                      v36 += v53;
                      v45 -= v53;
                      if (v45)
                      {
                        continue;
                      }
                    }

                    goto LABEL_43;
                  }

                  v51 = v53;
LABEL_43:
                  if (__size != v51)
                  {
LABEL_126:
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 354, 138, 0, "fork chunks", v48, v49, v143);
                    goto LABEL_92;
                  }
                }

                v55 = *(v27 + 56);
                v56 = *(v27 + 80);
                if (!v55)
                {
                  v57 = 50;
                  v54 = v145;
                  v26 = v147;
                  v61 = v145;
                  a3 = v155;
                  a2 = v149;
                  goto LABEL_54;
                }

                v62 = v50 + 1;
                v63 = v56 + 1;
                v64 = *(v27 + 56);
                a2 = v149;
                v54 = v145;
                v26 = v147;
                do
                {
                  *(v63 - 1) = (*(v62 - 1) + 260);
                  v65 = *v62;
                  v62 += 2;
                  *v63 = v65;
                  v63 += 3;
                  --v64;
                }

                while (v64);
                v57 = 50;
                a3 = v155;
                goto LABEL_48;
              }
            }

            v100 = "fork footer";
            v101 = 349;
            goto LABEL_91;
          }
        }

        v100 = "fork header";
        v101 = 346;
LABEL_91:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", v101, 138, 0, v100, v33, v34, v143);
        v50 = 0;
LABEL_92:
        a3 = v155;
        goto LABEL_98;
      }

      v109 = "Can't allocate header/footer";
      v110 = 343;
      v108 = 0;
LABEL_97:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", v110, 138, v108, v109, v33, v34, v143);
      v50 = 0;
      goto LABEL_98;
    }

    v54 = 4 * v30 + 4;
    if (v54 >= 0x2000000001)
    {
      v50 = 0;
      *__error() = 12;
      goto LABEL_98;
    }

    v50 = malloc(v54);
    if (!v50)
    {
      goto LABEL_98;
    }

    if (v54 != AAByteStreamPRead(v20, v50, v54, *(v27 + 40)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 372, 138, 0, "fork chunks", v48, v49, v143);
      goto LABEL_98;
    }

    v55 = *(v27 + 56);
    v56 = *(v27 + 80);
    v57 = 0;
    if (v55)
    {
      v58 = v56 + 1;
      do
      {
        v59 = &v50[v57];
        v60 = *v59;
        LODWORD(v59) = v59[1];
        *(v58 - 1) = v60;
        ++v57;
        *v58 = v59 - v60;
        v58 += 3;
      }

      while (v55 != v57);
      v57 = 0;
LABEL_48:
      v66 = (v56 + 1);
      v61 = v54;
      while (1)
      {
        v67 = *(v66 - 1);
        if (v67 < v61)
        {
          break;
        }

        v61 = v67 + *v66;
        if (v61 > *(v27 + 96))
        {
          break;
        }

        v66 += 3;
        if (!--v55)
        {
          goto LABEL_54;
        }
      }

      if (!a3)
      {
        v98 = "bad chunk";
        v99 = 393;
LABEL_83:
        pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", v99, 138, v98, v47, v48, v49, v143);
        goto LABEL_98;
      }

      goto LABEL_98;
    }

    v61 = v54;
LABEL_54:
    if (*v56 != v54 || v61 + v57 != *(v27 + 96))
    {
      break;
    }

    free(v50);
    if (++v26 >= *(a1 + 2160))
    {
      goto LABEL_57;
    }
  }

  if (!a3)
  {
    v98 = "bad index";
    v99 = 402;
    goto LABEL_83;
  }

LABEL_98:
  free(v50);
  rawimg_free_chunks(a1);
  if (!a3)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 608, 138, "bad chunk info", v111, v112, v113, v143);
  }

LABEL_100:
  v73 = 0;
  v77 = 0;
  v75 = 0;
  v87 = 0;
  v70 = 0;
LABEL_101:
  v114 = 0;
LABEL_102:
  if ((ThreadPoolDestroy(v87) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 704, 138, 0, "ThreadPoolDestroy", v115, v116, v143);
    v114 = 0;
  }

  free(v75);
  free(v77);
  free(v73);
  AAByteStreamClose(v70);
  AAByteStreamClose(v20);
  AAByteStreamClose(v11);
  if (v114)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void rawimg_free_chunks(void *a1)
{
  if (a1[270])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = a1[268] + v2;
      free(*(v4 + 80));
      *(v4 + 80) = 0;
      *(v4 + 56) = 0;
      *(v4 + 104) &= ~4uLL;
      ++v3;
      v2 += 129;
    }

    while (v3 < a1[270]);
  }

  a1[266] &= ~8uLL;
}

uint64_t rawimg_digest_worker(void *a1)
{
  v2 = a1[1];
  memset(&v20, 0, sizeof(v20));
  v3 = malloc(0x10000uLL);
  if (!v3)
  {
    v16 = *__error();
    v17 = "aaMalloc";
    v18 = 551;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_digest_worker", v18, 138, v16, v17, v4, v5, v20.count[0]);
    v15 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  CC_SHA256_Init(&v20);
  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = v6 - v7 >= 0x10000 ? 0x10000 : v6 - v7;
      v9 = *a1;
      if (!*(*a1 + 32))
      {
        break;
      }

      if (v6 == v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = *(v2 + 32) + v7;
        v12 = v3;
        v13 = v8;
        while (1)
        {
          v14 = (*(v9 + 32))(*v9, v12, v13, v11);
          if (v14 < 0)
          {
            break;
          }

          if (v14)
          {
            v12 += v14;
            v10 += v14;
            v11 += v14;
            v13 -= v14;
            if (v13)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        v10 = v14;
      }

LABEL_16:
      if (v8 != v10)
      {
        break;
      }

      CC_SHA256_Update(&v20, v3, v8);
      v7 += 0x10000;
      v6 = *(v2 + 40);
      if (v7 >= v6)
      {
        goto LABEL_18;
      }
    }

    v17 = "aaByteStreamPReadExpected";
    v18 = 558;
    v16 = 0;
    goto LABEL_21;
  }

LABEL_18:
  CC_SHA256_Final(v2, &v20);
  v15 = 0;
LABEL_22:
  free(v3);
  return v15;
}

uint64_t compare_digest_tasks(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v4 = *(a1 + 32) >= *(a2 + 32);
  }

  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t rawimg_set_fork_types(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 0x21)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 772, 138, 0, "too many variants", a7, a8, v46);
    v8 = 0;
    goto LABEL_33;
  }

  if (a2 != 1)
  {
    v8 = pc_array_init(16);
    if (v8)
    {
      if (!a2)
      {
LABEL_18:
        pc_array_sort(v8, compare_copy_fork_5);
        pc_array_aggregate(v8, compare_copy_fork_4, aggregate_copy_fork);
        v25 = *(v8 - 8);
        if (v25)
        {
          v26 = v8 + 1;
          v27 = v8 + 1;
          do
          {
            v28 = *v27;
            v27 += 16;
            if ((v28 & 1) == 0)
            {
              *(*(v26 - 1) + 104) |= 1uLL;
            }

            v26 = v27;
            --v25;
          }

          while (v25);
        }

        pc_array_aggregate(v8, compare_copy_fork_3, aggregate_copy_fork);
        v29 = *(v8 - 8);
        if (v29)
        {
          v30 = 0;
          v31 = 0;
          v32 = v8 + 1;
          v33 = v8 + 1;
          do
          {
            v34 = *v33;
            v33 += 4;
            if ((v34 ^ (-1 << a2)) == 0xFFFFFFFF)
            {
              *&v8[2 * v31++] = *(v32 - 1);
              v29 = *(v8 - 8);
            }

            ++v30;
            v32 = v33;
          }

          while (v30 < v29);
        }

        else
        {
          v31 = 0;
        }

        *(v8 - 8) = v31;
        if (a2)
        {
          v38 = 0;
          do
          {
            v39 = *(a1 + 8 * v38);
            if (*(v39 + 2160))
            {
              v40 = 0;
              v41 = 104;
              do
              {
                v42 = *(v39 + 2144);
                v46 = v42 + v41 - 104;
                v47 = 0;
                v43 = bsearch(&v46, v8, *(v8 - 8), 0x10uLL, compare_copy_fork_3);
                if (v43)
                {
                  v44 = 1;
                }

                else
                {
                  v44 = v38 == 0;
                }

                if (v44)
                {
                  if (v43)
                  {
                    v45 = 2;
                  }

                  else
                  {
                    v45 = 1;
                  }

                  *(v42 + v41) |= v45;
                }

                ++v40;
                v41 += 129;
              }

              while (v40 < *(v39 + 2160));
            }

            ++v38;
          }

          while (v38 != a2);
        }

        v13 = 0;
        goto LABEL_34;
      }

      v20 = 0;
      while (1)
      {
        v21 = *(a1 + 8 * v20);
        if ((*(v21 + 2128) & 0x10) == 0)
        {
          v35 = "no digests found";
          v36 = 799;
          goto LABEL_32;
        }

        if (*(v21 + 2160))
        {
          break;
        }

LABEL_17:
        if (++v20 == a2)
        {
          goto LABEL_18;
        }
      }

      v22 = 0;
      v23 = 104;
      while (1)
      {
        v24 = (*(v21 + 2144) + v23);
        v46 = (v24 - 104);
        v47 = (1 << v20);
        if ((*v24 & 3) != 0)
        {
          v35 = "bad flags";
          v36 = 810;
          goto LABEL_32;
        }

        v8 = pc_array_append(v8, &v46, v14, v15, v16, v17, v18, v19);
        if (!v8)
        {
          break;
        }

        ++v22;
        v23 += 129;
        if (v22 >= *(v21 + 2160))
        {
          goto LABEL_17;
        }
      }

      v35 = "pc_array_append";
      v36 = 814;
    }

    else
    {
      v35 = "pc_array_init";
      v36 = 792;
    }

LABEL_32:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", v36, 138, 0, v35, v18, v19, v46);
LABEL_33:
    v13 = 0xFFFFFFFFLL;
LABEL_34:
    pc_array_free(v8);
    return v13;
  }

  v11 = *(*a1 + 2160);
  if (v11)
  {
    v12 = (*(*a1 + 2144) + 104);
    do
    {
      *v12 = *v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v12 = (v12 + 129);
      --v11;
    }

    while (v11);
  }

  return 0;
}

uint64_t compare_copy_fork_5(uint64_t a1, uint64_t a2)
{
  result = compare_copy_fork_3(a1, a2);
  if (!result)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    result = (v5 - v6);
    if (v5 == v6)
    {
      if (*(*a1 + 112) < *(*a2 + 112))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t compare_copy_fork_4(uint64_t a1, uint64_t a2)
{
  result = compare_copy_fork_3(a1, a2);
  if (!result)
  {
    return (*(a1 + 8) - *(a2 + 8));
  }

  return result;
}

uint64_t compare_copy_fork_3(unint64_t **a1, unint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = bswap64(**a1);
  v5 = bswap64(**a2);
  if (v4 == v5 && (v4 = bswap64(v2[1]), v5 = bswap64(v3[1]), v4 == v5) && (v4 = bswap64(v2[2]), v5 = bswap64(v3[2]), v4 == v5) && (v4 = bswap64(v2[3]), v5 = bswap64(v3[3]), v4 == v5))
  {
    v7 = v2[12] - v3[12];
    if (v7)
    {
      if (v7 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return *(v2 + 128) - *(v3 + 128);
    }
  }

  else if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t rawimg_save_to_stream(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x29EDCA608];
  v8 = *(a2 + 2128);
  if ((v8 & 0x10) != 0)
  {
    if ((v8 & 8) != 0)
    {
      v14 = *(a2 + 2104);
      v50[0] = *(a2 + 2088);
      v50[1] = v14;
      v15 = 24;
      if (!a3)
      {
        v15 = 16;
      }

      v51 = *(a2 + 2120);
      v52 = v15;
      v53 = *(a2 + 2152);
      if (a1[3])
      {
        v16 = 0;
        v17 = v50;
        v18 = 64;
        while (1)
        {
          v19 = (a1[3])(*a1, v17, v18);
          if (v19 < 1)
          {
            break;
          }

          v17 = (v17 + v19);
          v16 += v19;
          v18 -= v19;
          if (!v18)
          {
            if (v16 != 64)
            {
              break;
            }

            if (!a1[3])
            {
              goto LABEL_58;
            }

            v20 = 16 * v53;
            if (16 * v53)
            {
              v21 = 0;
              v22 = *(a2 + 2136);
              v23 = 16 * v53;
              while (1)
              {
                v24 = (a1[3])(*a1, v22, v23);
                if (v24 < 1)
                {
                  break;
                }

                v22 += v24;
                v21 += v24;
                v23 -= v24;
                if (!v23)
                {
                  goto LABEL_22;
                }
              }

              v21 = v24;
LABEL_22:
              if (v20 != v21)
              {
LABEL_58:
                v9 = "aaByteStreamWriteExpected";
                v10 = 914;
                goto LABEL_19;
              }
            }

            if (!*(&v53 + 1))
            {
              result = 0;
              goto LABEL_20;
            }

            v27 = 0;
            v28 = 0uLL;
LABEL_25:
            v29 = *(a2 + 2144) + 129 * v27;
            *(v49 + 9) = v28;
            v48 = v28;
            v49[0] = v28;
            v48 = *(v29 + 88);
            v30 = *(v29 + 104);
            v49[0] = v30;
            *&v49[1] = *(v29 + 120);
            BYTE8(v49[1]) = *(v29 + 128);
            if ((v30 & 1) == 0)
            {
              *&v49[0] = v30 & 0xFFFFFFFFFFFFFFFALL;
            }

            if (a1[3])
            {
              v31 = 0;
              v32 = &v48;
              v33 = 41;
              while (1)
              {
                v34 = (a1[3])(*a1, v32, v33);
                if (v34 < 1)
                {
                  break;
                }

                v32 = (v32 + v34);
                v31 += v34;
                v33 -= v34;
                if (!v33)
                {
                  if (v31 != 41)
                  {
                    break;
                  }

                  v28 = 0uLL;
                  if (a3 && (v49[0] & 1) != 0)
                  {
                    if (!a1[3])
                    {
                      goto LABEL_62;
                    }

                    v35 = 12 * *(v29 + 56);
                    if (v35)
                    {
                      v36 = 0;
                      v37 = *(v29 + 80);
                      v38 = 12 * *(v29 + 56);
                      while (1)
                      {
                        v39 = (a1[3])(*a1, v37, v38, v28);
                        if (v39 < 1)
                        {
                          break;
                        }

                        v37 += v39;
                        v36 += v39;
                        v38 -= v39;
                        if (!v38)
                        {
                          goto LABEL_41;
                        }
                      }

                      v36 = v39;
LABEL_41:
                      v28 = 0uLL;
                      if (v35 != v36)
                      {
LABEL_62:
                        v9 = "aaByteStreamWriteExpected";
                        v10 = 946;
                        goto LABEL_19;
                      }
                    }

                    if ((v49[0] & 4) != 0)
                    {
                      v40 = *(v29 + 64);
                      if (v40 && *(v29 + 72))
                      {
                        if (a1[3])
                        {
                          v41 = 0;
                          v42 = 264;
                          while (1)
                          {
                            v43 = (a1[3])(*a1, v40, v42, v28);
                            if (v43 < 1)
                            {
                              break;
                            }

                            v40 += v43;
                            v41 += v43;
                            v42 -= v43;
                            if (!v42)
                            {
                              if (v41 != 264)
                              {
                                break;
                              }

                              if (a1[3])
                              {
                                v44 = 0;
                                v45 = *(v29 + 72);
                                v46 = 50;
                                while (1)
                                {
                                  v47 = (a1[3])(*a1, v45, v46);
                                  v28 = 0uLL;
                                  if (v47 < 1)
                                  {
                                    break;
                                  }

                                  v45 += v47;
                                  v44 += v47;
                                  v46 -= v47;
                                  if (!v46)
                                  {
                                    if (v44 == 50)
                                    {
                                      goto LABEL_43;
                                    }

                                    break;
                                  }
                                }
                              }

                              v9 = "aaByteStreamWriteExpected";
                              v10 = 958;
                              goto LABEL_19;
                            }
                          }
                        }

                        v9 = "aaByteStreamWriteExpected";
                        v10 = 956;
                      }

                      else
                      {
                        v9 = "Fork missing header/footer";
                        v10 = 952;
                      }

                      goto LABEL_19;
                    }
                  }

LABEL_43:
                  result = 0;
                  if (++v27 < *(&v53 + 1))
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_20;
                }
              }
            }

            v9 = "aaByteStreamWriteExpected";
            v10 = 938;
            goto LABEL_19;
          }
        }
      }

      v9 = "aaByteStreamWriteExpected";
      v10 = 909;
    }

    else
    {
      v9 = "no chunk info";
      v10 = 898;
    }
  }

  else
  {
    v9 = "no digest info";
    v10 = 897;
  }

LABEL_19:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", v10, 138, 0, v9, a7, a8, v48.n128_i8[0]);
  result = 0xFFFFFFFFLL;
LABEL_20:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

char *rawimg_create_with_stream(void *a1, int a2)
{
  v63 = *MEMORY[0x29EDCA608];
  v4 = calloc(1uLL, 0x878uLL);
  v7 = v4;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  if (!v4)
  {
    v29 = *__error();
    v27 = "aaCalloc";
    v28 = 977;
    goto LABEL_20;
  }

  if (!a1[2])
  {
    goto LABEL_17;
  }

  v8 = 0;
  v9 = v4 + 2120;
  v10 = &v59;
  v11 = 64;
  do
  {
    v12 = (a1[2])(*a1, v10, v11);
    if (v12 < 0)
    {
      goto LABEL_17;
    }

    if (!v12)
    {
      break;
    }

    v10 = (v10 + v12);
    v8 += v12;
    v11 -= v12;
  }

  while (v11);
  if (v8 == 64)
  {
    v13 = v60;
    *(v7 + 2088) = v59;
    *(v7 + 2104) = v13;
    v14 = v62;
    *v9 = v61;
    *(v7 + 2152) = v14;
    *(v7 + 267) = pc_array_init(16, v14);
    v15 = pc_array_init(129, *(v7 + 270));
    *(v7 + 268) = v15;
    v21 = *(v7 + 267);
    if (v21 && v15)
    {
      v22 = *(v7 + 269);
      *(v21 - 64) = v22;
      *(v15 - 8) = *(v7 + 270);
      if (!a1[2])
      {
        goto LABEL_63;
      }

      v23 = 16 * v22;
      if (!(16 * v22))
      {
        goto LABEL_25;
      }

      v24 = 0;
      v25 = 16 * v22;
      while (1)
      {
        v26 = (a1[2])(*a1, v21, v25);
        if (v26 < 0)
        {
          break;
        }

        if (v26)
        {
          v21 += v26;
          v24 += v26;
          v25 -= v26;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      v24 = v26;
LABEL_24:
      if (v23 == v24)
      {
LABEL_25:
        if (!*(&v62 + 1))
        {
LABEL_61:
          if ((rawimg_verify(v7, v16, v17, v18, v19, v20, v5, v6) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          v27 = "rawimg_verify";
          v28 = 1050;
          goto LABEL_18;
        }

        v32 = 0;
        v33 = 0uLL;
        while (2)
        {
          v34 = *(v7 + 268);
          *&v58[9] = v33;
          v57 = v33;
          *v58 = v33;
          if (a1[2])
          {
            v35 = 0;
            v36 = v34 + 129 * v32;
            v37 = &v57;
            v38 = 41;
            do
            {
              v39 = (a1[2])(*a1, v37, v38);
              if (v39 < 0)
              {
                goto LABEL_64;
              }

              if (!v39)
              {
                break;
              }

              v37 = (v37 + v39);
              v35 += v39;
              v38 -= v39;
            }

            while (v38);
            if (v35 != 41)
            {
              break;
            }

            *v36 = 0u;
            *(v36 + 16) = 0u;
            *(v36 + 96) = 0u;
            *(v36 + 112) = 0u;
            *(v36 + 64) = 0u;
            *(v36 + 80) = 0u;
            *(v36 + 32) = 0u;
            *(v36 + 48) = 0u;
            v40 = v57;
            *(v36 + 88) = v57;
            v41 = v58[0];
            *(v36 + 104) = *v58;
            *(v36 + 120) = *&v58[16];
            *(v36 + 128) = v58[24];
            if (a2 && (v41 & 1) != 0)
            {
              v42 = (v40 + 0xFFFF) >> 16;
              *(v36 + 56) = v42;
              if ((v40 + 0xFFFF) >= 0x2AAAAAAAB0000)
              {
                *__error() = 12;
                *(v36 + 80) = 0;
              }

              else
              {
                v43 = calloc(v42, 0xCuLL);
                *(v36 + 80) = v43;
                if (v43)
                {
                  if (!a1[2])
                  {
                    goto LABEL_67;
                  }

                  v44 = 12 * *(v36 + 56);
                  if (v44)
                  {
                    v45 = v43;
                    v46 = 0;
                    v47 = 12 * *(v36 + 56);
                    while (1)
                    {
                      v48 = (a1[2])(*a1, v45, v47);
                      if (v48 < 0)
                      {
                        break;
                      }

                      if (v48)
                      {
                        v45 += v48;
                        v46 += v48;
                        v47 -= v48;
                        if (v47)
                        {
                          continue;
                        }
                      }

                      goto LABEL_45;
                    }

                    v46 = v48;
LABEL_45:
                    if (v44 != v46)
                    {
LABEL_67:
                      v27 = "aaByteStreamReadExpected";
                      v28 = 1032;
                      goto LABEL_18;
                    }
                  }

                  if ((*(v36 + 104) & 4) != 0)
                  {
                    if ((rawimg_allocate_header_and_footer(v36) & 0x80000000) != 0)
                    {
                      v27 = "Can't allocate header/footer";
                      v28 = 1038;
                    }

                    else
                    {
                      if (a1[2])
                      {
                        v49 = 0;
                        v50 = *(v36 + 64);
                        v51 = 264;
                        while (1)
                        {
                          v52 = (a1[2])(*a1, v50, v51);
                          if (v52 < 0)
                          {
                            break;
                          }

                          if (v52)
                          {
                            v50 += v52;
                            v49 += v52;
                            v51 -= v52;
                            if (v51)
                            {
                              continue;
                            }
                          }

                          if (v49 != 264)
                          {
                            break;
                          }

                          if (a1[2])
                          {
                            v53 = 0;
                            v54 = *(v36 + 72);
                            v55 = 50;
                            while (1)
                            {
                              v56 = (a1[2])(*a1, v54, v55);
                              if (v56 < 0)
                              {
                                break;
                              }

                              if (v56)
                              {
                                v54 += v56;
                                v53 += v56;
                                v55 -= v56;
                                if (v55)
                                {
                                  continue;
                                }
                              }

                              if (v53 != 50)
                              {
                                break;
                              }

                              goto LABEL_60;
                            }
                          }

                          v27 = "aaByteStreamReadExpected";
                          v28 = 1044;
                          goto LABEL_18;
                        }
                      }

                      v27 = "aaByteStreamReadExpected";
                      v28 = 1042;
                    }

                    goto LABEL_18;
                  }

                  goto LABEL_60;
                }
              }

              v29 = *__error();
              v27 = "aaCalloc";
              v28 = 1027;
              goto LABEL_20;
            }

LABEL_60:
            ++v32;
            v33 = 0uLL;
            if (v32 < *(&v62 + 1))
            {
              continue;
            }

            goto LABEL_61;
          }

          break;
        }

LABEL_64:
        v27 = "aaByteStreamReadExpected";
        v28 = 1010;
      }

      else
      {
LABEL_63:
        v27 = "aaByteStreamReadExpected";
        v28 = 1000;
      }
    }

    else
    {
      v27 = "pc_array_init";
      v28 = 993;
    }
  }

  else
  {
LABEL_17:
    v27 = "aaByteStreamReadExpected";
    v28 = 981;
  }

LABEL_18:
  v29 = 0;
LABEL_20:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_create_with_stream", v28, 138, v29, v27, v5, v6, v57);
  rawimg_destroy(v7);
  v7 = 0;
LABEL_21:
  v30 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t rawimg_allocate_header_and_footer(uint64_t a1)
{
  if ((*(a1 + 64) || (v2 = malloc(0x108uLL), (*(a1 + 64) = v2) != 0)) && (*(a1 + 72) || (v3 = malloc(0x32uLL), (*(a1 + 72) = v3) != 0)))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t compare_forks_by_extent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a2 + 112);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aggregate_identical_forks(const void *a1, const void *a2)
{
  if (!memcmp(a1, a2, 0x81uLL))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t compare_forks_by_position(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 2136) + 16 * *(a2 + 112)) < *(*(a1 + 2136) + 16 * *(a3 + 112)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t BXPatchFile(const char *a1, const char *a2, void *a3, unint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v70 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v60);
  v62 = 0;
  v63 = 0;
  if (a6)
  {
    v16 = *a6 != 0;
    v17 = a6[1] != 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  memset(&v65, 0, sizeof(v65));
  memset(&v64, 0, sizeof(v64));
  if (a4 <= 7)
  {
    v18 = "Invalid patch";
    v19 = 25;
LABEL_6:
    v20 = 0;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", v19, 48, v20, v18, v14, v15, v61);
    v31 = 0;
LABEL_18:
    v32 = 0;
    goto LABEL_19;
  }

  if (*a3 == 0x3034464649445342 || *a3 == 0x3034464649445842 || *a3 == 0x3134464649445842)
  {
    v21 = 0;
    v22 = a3[3];
    if (v22 >= 0)
    {
      v23 = a3[3];
    }

    else
    {
      v23 = 0x8000000000000000 - v22;
    }
  }

  else
  {
    if (*a3 != 0x3035464649445842)
    {
      v18 = "Unsupported patch format";
      v19 = 36;
      goto LABEL_6;
    }

    v23 = a3[2];
    v21 = 1;
  }

  if (lstat(a1, &v65))
  {
    v20 = *__error();
    v61 = a1;
    v18 = "%s";
    v19 = 39;
    goto LABEL_17;
  }

  v67.tv_sec = v65.st_atimespec.tv_sec;
  v67.tv_usec = 0;
  tv_sec = v65.st_mtimespec.tv_sec;
  v69 = 0;
  if (loadFileContents(a1, &v63, &v62, 0))
  {
    v61 = a1;
    v18 = "opening input file: %s";
    v19 = 53;
    goto LABEL_6;
  }

  if (!strcmp(a1, a2))
  {
    unlink(a1);
  }

  bzero(v66, 0x400uLL);
  v36 = strlen(a2);
  __memcpy_chk();
  makePath(v66, v36);
  if (v23)
  {
    if (statIsCompressed(v65.st_flags) != 0 || v17)
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  if (v16)
  {
    v38 = v37 | 0x2B;
  }

  else
  {
    v38 = v37;
  }

  v31 = OArchiveFileStreamCreate(a2, v23, v38, -1, 0);
  if (!v31)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 81, 48, 0, "OArchiveFileStreamCreate: %s", v39, v40, a2);
    goto LABEL_18;
  }

  if (v21)
  {
    if (BXPatch5(v63, v62, a3, a4, OArchiveFileStreamWrite, v31, v8))
    {
      v48 = 91;
LABEL_46:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", v48, 48, 0, "Patch application", v46, v47, v61);
      goto LABEL_18;
    }
  }

  else if (BXPatch4(v63, v62, a3, a4, OArchiveFileStreamWrite, v31, v39, v40))
  {
    v48 = 87;
    goto LABEL_46;
  }

  OArchiveFileStreamDestroy(v31, v41, v42, v43, v44, v45, v46, v47);
  if (lstat(a2, &v64))
  {
    v20 = *__error();
    v61 = a2;
    v18 = "%s";
    v19 = 101;
    goto LABEL_17;
  }

  if (v64.st_uid == v65.st_uid)
  {
    st_gid = v65.st_gid;
    if (v64.st_gid == v65.st_gid)
    {
      goto LABEL_55;
    }
  }

  else
  {
    st_gid = v65.st_gid;
  }

  if (!chown(a2, v65.st_uid, st_gid))
  {
LABEL_55:
    v32 = 1;
    goto LABEL_56;
  }

  v50 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 106, 48, *v50, "%s", v51, v52, a2);
  v32 = 0;
LABEL_56:
  if (v64.st_mode != v65.st_mode && chmod(a2, v65.st_mode & 0xFFF))
  {
    v53 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 110, 48, *v53, "%s", v54, v55, a2);
    v32 = 0;
  }

  v56 = v65.st_flags & 0xFFFFFFDF | (32 * ((v64.st_flags >> 5) & 1));
  if (v64.st_flags != v56 && chflags(a2, v56))
  {
    v57 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 117, 48, *v57, "%s", v58, v59, a2);
    v32 = 0;
  }

  if (utimes(a2, &v67))
  {
    v20 = *__error();
    v61 = a2;
    v18 = "%s";
    v19 = 120;
    goto LABEL_17;
  }

  v31 = 0;
LABEL_19:
  OArchiveFileStreamDestroy(v31, v24, v25, v26, v27, v28, v29, v30);
  free(v63);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v32)
  {
    v34 = 0;
  }

  else
  {
    v34 = -1;
  }

  if (result >= 0)
  {
    result = v34;
  }

  else
  {
    result = result;
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BXPatch4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = *MEMORY[0x29EDCA608];
  if (a4 <= 0x1F)
  {
    v8 = "Invalid patch length";
    v9 = 129;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", v9, 51, 0, v8, a7, a8, v61.i8[0]);
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  if (*a3 != 0x3034464649445342 && *a3 != 0x3034464649445842 && *a3 != 0x3134464649445842)
  {
    v8 = "Invalid patch header";
    v9 = 130;
    goto LABEL_12;
  }

  if (*a3 == 0x3134464649445842)
  {
    v15 = 20;
  }

  else
  {
    v15 = 0;
  }

  v16 = vbslq_s8(vcltzq_s64(*(a3 + 8)), vsubq_s64(vnegq_f64(0), *(a3 + 8)), *(a3 + 8));
  v17 = vaddvq_s64(v16);
  if (v17 + v15 + 32 > a4)
  {
    v8 = "Invalid patch header contents";
    v9 = 144;
    goto LABEL_12;
  }

  v61 = v16;
  v20 = (a3 + 32);
  if (*a3 == 0x3134464649445842)
  {
    v21 = -20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a3 + 24);
  if (v22 < 0)
  {
    v22 = 0x8000000000000000 - v22;
  }

  v62 = v22;
  data = a1;
  if (*a3 == 0x3134464649445842)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA1_Deprecated_Init(&c);
    CC_SHA1_Deprecated_Update(&c, data, a2);
    a1 = CC_SHA1_Deprecated_Final(md, &c);
    v24 = *md == *v20 && *&md[8] == *(a3 + 40);
    if (!v24 || v83 != *(a3 + 48))
    {
      v8 = "Input file digest and patch digest do not match";
      v9 = 164;
      goto LABEL_12;
    }
  }

  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v61.i8[0]);
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  memset(&c, 0, sizeof(c));
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  *md = 0u;
  v83 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v23 = *a3 == 0x3034464649445842 || *a3 == 0x3134464649445842;
  v26 = malloc(0x20000uLL);
  if (v26)
  {
    v27 = v20 + v15;
    v77 = 0u;
    v78 = 0u;
    v28 = a4 + v21 - v17;
    v29 = v20 + v15 + v61.i64[0];
    v30 = v28 - 32;
    v75 = 0u;
    v76 = 0u;
    memset(&c, 0, sizeof(c));
    *md = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v31 = BufferDecoderInit(&c, v23, v27, v61.i64[0]);
    v32 = BufferDecoderInit(md, v23, v29, v61.i64[1]);
    if (!BufferDecoderInit(&v64, v23, v29 + v61.i64[1], v30) && !v32 && !v31)
    {
      v37 = OBufferedStreamCreate(a5, 0, a6, 0x20000uLL);
      if (v37)
      {
        v38 = BufferDecoderRead(&c, &v79, 24);
        if ((v38 & 0x8000000000000000) != 0)
        {
LABEL_70:
          v48 = "BufferDecoderRead";
          v49 = 196;
        }

        else
        {
          v39 = 0;
          v40 = 0;
          while (v38 == 24)
          {
            if (v79 >= 0)
            {
              v41 = v79;
            }

            else
            {
              v41 = 0x8000000000000000 - v79;
            }

            if (v80 >= 0)
            {
              v42 = v80;
            }

            else
            {
              v42 = 0x8000000000000000 - v80;
            }

            v43 = v81;
            if (v81 < 0)
            {
              v43 = 0x8000000000000000 - v81;
            }

            v61.i64[0] = v43;
            if (v41)
            {
              while (1)
              {
                if (v41 >= 0x20000)
                {
                  v44 = 0x20000;
                }

                else
                {
                  v44 = v41;
                }

                if (BufferDecoderRead(md, v26, v44) != v44)
                {
                  v48 = "Truncated add stream";
                  v49 = 208;
                  goto LABEL_75;
                }

                if (v39 < 0)
                {
                  v48 = "invalid patch, input before buffer";
                  v49 = 209;
                  goto LABEL_75;
                }

                if ((v39 + v44) > a2)
                {
                  v48 = "invalid patch, input after buffer";
                  v49 = 210;
                  goto LABEL_75;
                }

                v40 += v44;
                if (v40 > v62)
                {
                  v48 = "invalid patch, output after buffer";
                  v49 = 211;
                  goto LABEL_75;
                }

                v45 = 0;
                v46 = v44 <= 1 ? 1 : v44;
                do
                {
                  v26[v45] += *(data + v39 + v45);
                  ++v45;
                }

                while (v46 != v45);
                if (OBufferedStreamWrite(v37, v26, v44) != v44)
                {
                  break;
                }

                v39 += v44;
                v41 -= v44;
                if (!v41)
                {
                  goto LABEL_61;
                }
              }

              v48 = "Write";
              v49 = 213;
              goto LABEL_75;
            }

LABEL_61:
            if (v42)
            {
              while (1)
              {
                if (v42 >= 0x20000)
                {
                  v47 = 0x20000;
                }

                else
                {
                  v47 = v42;
                }

                if (BufferDecoderRead(&v64, v26, v47) != v47)
                {
                  v48 = "Truncated lit stream";
                  v49 = 223;
                  goto LABEL_75;
                }

                v40 += v47;
                if (v40 > v62)
                {
                  v48 = "invalid patch, output after buffer";
                  v49 = 224;
                  goto LABEL_75;
                }

                if (OBufferedStreamWrite(v37, v26, v47) != v47)
                {
                  break;
                }

                v42 -= v47;
                if (!v42)
                {
                  goto LABEL_69;
                }
              }

              v48 = "Write";
              v49 = 225;
              goto LABEL_75;
            }

LABEL_69:
            v39 += v61.i64[0];
            v38 = BufferDecoderRead(&c, &v79, 24);
            if ((v38 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }
          }

          if (v38)
          {
            v48 = "Truncated control stream";
            v49 = 198;
          }

          else
          {
            if (v40 == v62)
            {
              v53 = 0;
              goto LABEL_77;
            }

            v48 = "Number of written bytes and expected output size do not match";
            v49 = 235;
          }
        }
      }

      else
      {
        v48 = "OBufferedStream creation";
        v49 = 189;
      }

LABEL_75:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", v49, 51, 0, v48, v35, v36, v61.i8[0]);
      goto LABEL_76;
    }

    v51 = "BufferDecoderInit";
    v52 = 186;
    v50 = 0;
  }

  else
  {
    v50 = *__error();
    v51 = "malloc";
    v52 = 177;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", v52, 51, v50, v51, v33, v34, v61.i8[0]);
  v37 = 0;
LABEL_76:
  v53 = -1;
LABEL_77:
  free(v26);
  BufferDecoderDestroy(&c);
  BufferDecoderDestroy(md);
  BufferDecoderDestroy(&v64);
  OBufferedStreamDestroy(v37, v54, v55, v56, v57, v58, v59, v60);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    result = v53;
  }

  else
  {
    result = result;
  }

LABEL_13:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BufferDecoderInit(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  if (a2)
  {
    if (lzma_auto_decoder())
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (BZ2_bzDecompressInit((a1 + 24), 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

size_t BufferDecoderRead(int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return 0;
  }

  v6 = *a1;
  *(a1 + 6) = a2;
  if (v6)
  {
    *(a1 + 7) = a3;
    *(a1 + 3) = *(a1 + 1);
    *(a1 + 4) = v3;
    v7 = lzma_code();
    v10 = v7;
    v11 = *(a1 + 4);
    *(a1 + 1) = *(a1 + 3);
    *(a1 + 2) = v11;
    if (v7 <= 0xA && ((1 << v7) & 0x403) != 0)
    {
      result = *(a1 + 6) - a2;
    }

    else
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BufferDecoderRead", 106, 51, 0, "lzma_code error %d\n", v8, v9, v7);
    }

    if (v10 > 0xA || ((1 << v10) & 0x403) == 0)
    {
      return -1;
    }
  }

  else
  {
    a1[14] = a3;
    *(a1 + 3) = *(a1 + 1);
    a1[8] = v3;
    v13 = BZ2_bzDecompress((a1 + 6));
    v16 = a1[8];
    *(a1 + 1) = *(a1 + 3);
    *(a1 + 2) = v16;
    if ((v13 & 0xFFFFFFFB) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BufferDecoderRead", 118, 51, 0, "BZ2_bzDecompress error %d\n", v14, v15, v13);
      return -1;
    }

    return *(a1 + 6) - a2;
  }

  return result;
}

uint64_t BufferDecoderDestroy(_DWORD *a1)
{
  v2 = *a1;
  v1 = (a1 + 6);
  if (v2)
  {
    return lzma_end();
  }

  else
  {
    return BZ2_bzDecompressEnd(v1);
  }
}

uint64_t transcodeIThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v60 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 16);
  v2 = *v0;
  v3 = ArchiveTreeSize(v1);
  v4 = *(v2 + 16);
  v10 = MemBufferCreate(0x10000uLL);
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 47, 65, 0, "creating mem buffer", v8, v9, v51);
    v11 = 0;
    goto LABEL_36;
  }

  if (!v3)
  {
    v53 = 0;
    v11 = 0;
LABEL_25:
    SharedBufferWrite(*(v0 + 24), 0, 0, v5, v6, v7, v8, v9);
    if (*v2 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "%12u archive stream switches\n", v53);
    }

    goto LABEL_37;
  }

  v11 = 0;
  v53 = 0;
  v12 = 0;
  v13 = -1;
  while (1)
  {
    v54 = 0;
    v55 = 0;
    v14 = ArchiveTreeNodeArchiveID(v1, v12);
    if (v14 >= v4)
    {
      v40 = "invalid archive ID";
      v41 = 54;
      goto LABEL_35;
    }

    v15 = v14;
    if ((ArchiveTreeNodeSegment(v1, v12, &v55, &v54) & 0x80000000) != 0)
    {
      v40 = "get entry segment";
      v41 = 55;
      goto LABEL_35;
    }

    v20 = v55;
    if (v55 != -1 && v54 != -1)
    {
      break;
    }

    if (ArchiveTreeNodeEntryType(v1, v12) != 68)
    {
      v40 = "non-directory entry not found in any archive";
      v41 = 60;
      goto LABEL_35;
    }

    bzero(v59, 0x800uLL);
    bzero(v57, 0x888uLL);
    v56 = 0x4400008011;
    v57[3] = 493;
    if (ArchiveTreeNodePath(v1, v12, &v58, 0x400uLL) < 0)
    {
      v40 = "getting entry path";
      v41 = 71;
      goto LABEL_35;
    }

    v23 = yaa_encodeHeader(v59, 0x800uLL, &v56, 0, 0, v22, v8, v9);
    if ((v23 & 0x8000000000000000) != 0)
    {
      v40 = "encoding directory entry";
      v41 = 73;
      goto LABEL_35;
    }

    if (SharedBufferWrite(*(v0 + 24), v59, v23, v24, v25, v26, v8, v9) < 0)
    {
      v40 = "writing dir entry";
      v41 = 77;
      goto LABEL_35;
    }

LABEL_21:
    if (v3 == ++v12)
    {
      goto LABEL_25;
    }
  }

  if (v15 == v13)
  {
LABEL_19:
    if (ParallelCompressionFileSeek(v11, v20, 0, v17, v18, v19, v8, v9) < 0)
    {
      v40 = "seeking compressed stream";
      v41 = 93;
      goto LABEL_35;
    }

    if (MemBufferTransmit(v10, v54, pcFileRead, v11, SharedBufferWrite, *(v0 + 24), v8, v9) < 0)
    {
      v40 = "transmitting entry payload";
      v41 = 94;
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  ParallelCompressionFileClose(v11, v55, v16, v17, v18, v19, v8, v9);
  v11 = ParallelCompressionFileOpen(*(*(v2 + 24) + 24 * v15), "r,c=2", v27, v28, v29, v30, v31, v32);
  if (v11)
  {
    ++v53;
    v20 = v55;
    v13 = v15;
    goto LABEL_19;
  }

  v40 = "creating compressed stream";
  v41 = 88;
LABEL_35:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", v41, 65, 0, v40, v8, v9, v51);
LABEL_36:
  *(v0 + 36) = 0;
  SharedBufferAbort(*(v0 + 24), v33, v34, v35, v36, v37, v38, v39, v52);
LABEL_37:
  MemBufferDestroy(v10);
  ParallelCompressionFileClose(v11, v42, v43, v44, v45, v46, v47, v48);
  v49 = *MEMORY[0x29EDCA608];
  return v0;
}

size_t transcodeOThreadBeginProc(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 32);
  if (v8 >= ArchiveTreeSize(*(a1 + 16)))
  {
    v14 = "invalid entry index";
    v15 = 119;
    goto LABEL_7;
  }

  memcpy(__dst, a2, sizeof(__dst));
  if ((__dst[1] & 0x80) != 0 && ArchiveTreeNodePath(*(a1 + 16), *(a1 + 32), &__dst[144], 0x400uLL) < 0)
  {
    v14 = "getting new entry path";
    v15 = 128;
    goto LABEL_7;
  }

  result = ParallelArchiveWriteEntryHeader(*(a1 + 8), __dst, a3, a4, v11, v12, v9, v10);
  if ((result & 0x80000000) != 0)
  {
    v14 = "writing entry header";
    v15 = 133;
LABEL_7:
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeOThreadBeginProc", v15, 65, 0, v14, v9, v10, v17);
    *(a1 + 36) = 0;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

size_t transcodeOThreadPayloadProc(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = ParallelArchiveWriteEntryData(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) != 0)
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeOThreadPayloadProc", 146, 65, 0, "writing entry data", v10, v11, v12);
    *(a1 + 36) = 0;
  }

  return result;
}

uint64_t transcodeOThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v26 = a1;
  *(a1 + 32) = 0;
  v22[0] = 0x100000000;
  v9 = *(a1 + 24);
  v22[1] = SharedBufferRead;
  v22[2] = SharedBufferAbort;
  v22[3] = v9;
  v22[4] = transcodeOThreadBeginProc;
  *(&v24 + 1) = transcodeOThreadEndProc;
  *(&v23 + 1) = transcodeOThreadPayloadProc;
  if ((ParallelArchiveRead(v22, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeOThreadProc", 169, 65, 0, "reading aggregated entries", v10, v11, v20);
    *(a1 + 36) = 0;
    SharedBufferAbort(*(a1 + 24), v12, v13, v14, v15, v16, v17, v18, v21);
  }

  return a1;
}

uint64_t ParallelArchiveCombine()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v138 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext(v0, v1, v4, v5, v6, v7, v8, v9, v84);
  v10 = *(v2 + 2);
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v11 = ArchiveTreeCreateWithRootEntry();
  v14 = v11;
  if (!v11)
  {
    v47 = "empty tree creation";
    v48 = 198;
    goto LABEL_35;
  }

  v88 = v3;
  v89 = v10;
  if (!v10)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_45;
  }

  v15 = 0;
  v16 = 0;
  v97 = 0;
  v17 = 0;
  v90 = v10;
  v18 = MEMORY[0x29EDCA600];
  v91 = v2;
  v92 = v11;
  do
  {
    v19 = *(v2 + 3) + 24 * v15;
    bzero(__s, 0x800uLL);
    v20 = IFileStreamCreateWithFilename(*v19, 0, -1);
    if (!v20)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 207, 65, 0, "opening archive file: %s", v21, v22, *v19);
      goto LABEL_36;
    }

    v23 = v20;
    v24 = *v2;
    v25 = ArchiveTreeCreateFromArchive(IFileStreamRead, v20, v2[1]);
    v26 = v23;
    v27 = v25;
    IFileStreamDestroy(v26);
    if (!v27)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 211, 65, 0, "reading archive tree: %s", v28, v29, *v19);
      goto LABEL_36;
    }

    if ((ArchiveTreePrune(v27, *(v19 + 8)) & 0x80000000) != 0)
    {
      v86 = *(v19 + 8);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 214, 65, 0, "pruning entries: %s (%d)", v30, v31, *v19);
      goto LABEL_36;
    }

    if ((ArchiveTreeInsert(v27, *(v19 + 16)) & 0x80000000) != 0)
    {
      v80 = *v19;
      v87 = *(v19 + 16);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 215, 65, 0, "inserting path to entries: %s (%s)", v32, v33, *v19);
      goto LABEL_36;
    }

    v34 = ArchiveTreeSize(v27);
    ArchiveTreeYAF(v27, __s, 0x800uLL);
    if (!v97)
    {
      v97 = (strlen(__s) >> 1) + 1;
      v35 = calloc(v97, 8uLL);
      if (!v35)
      {
        v81 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 226, 65, *v81, "malloc", v82, v83, v85);
        v14 = v92;
        goto LABEL_36;
      }

      v17 = v35;
      v16 = 0;
    }

    v93 = v34;
    v94 = v27;
    v95 = v19;
    v96 = v17;
    v36 = 0;
    v37 = v17 + 4;
    do
    {
      v38 = 3;
      for (i = v36; ; ++i)
      {
        v40 = __s[i];
        if ((v40 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v18 + 4 * v40 + 60) & 0x100) == 0)
        {
          goto LABEL_18;
        }

LABEL_17:
        --v38;
      }

      if (__maskrune(__s[i], 0x100uLL))
      {
        goto LABEL_17;
      }

LABEL_18:
      if (v15)
      {
        if (v16)
        {
          v41 = v16;
          v42 = v37;
          while (((*&__s[v36] ^ *(v42 - 1)) & 0xDFDFDF) != 0)
          {
            v42 += 2;
            if (!--v41)
            {
              goto LABEL_28;
            }
          }

          ++*v42;
        }
      }

      else if (v16 < v97 && !v38)
      {
        v43 = *&__s[v36];
        v44 = &v96[8 * v16];
        v44[2] = __s[v36 + 2];
        *v44 = v43;
        *(v44 + 1) = 1;
        ++v16;
      }

LABEL_28:
      v36 = i + 1;
    }

    while (v40);
    v2 = v91;
    if (*v91 >= 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "%12u entries merged from %s\n", v93, *v95);
    }

    v14 = v92;
    if ((ArchiveTreeMergeAndDestroy(v92, v94, v15) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 265, 65, 0, "merging archive tree: %s", v45, v46, *v95);
      goto LABEL_36;
    }

    ++v15;
    v17 = v96;
  }

  while (v15 != v90);
LABEL_45:
  v53 = ArchiveTreeSize(v14);
  if (*v2 >= 1)
  {
    v54 = v53;
    v55 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12u input archives\n", v89);
    fprintf(*v55, "%12u unique entries\n", v54);
  }

  bzero(v137, 0x800uLL);
  bzero(v136, 0x800uLL);
  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  *__s = 0u;
  memset(v103, 0, 512);
  for (j = 0; v16; --v16)
  {
    if ((*v17 & 0xDFDFDF) == 0x505954 || *(v17 + 1) == v89)
    {
      if (j - 2045 <= 0xFFFFFFFFFFFFF7FELL)
      {
        v47 = "too many YAF fields";
        v48 = 290;
        goto LABEL_35;
      }

      if (j)
      {
        v57 = j + 1;
        v137[j] = 44;
      }

      else
      {
        v57 = 0;
      }

      v58 = &v137[v57];
      v59 = *v17;
      v58[2] = v17[2];
      *v58 = v59;
      j = v57 + 3;
      v137[v57 + 3] = 0;
    }

    v17 += 8;
  }

  bzero(&__s[8], 0x888uLL);
  *__s = 0x4D00000001;
  bzero(v103 + 3, 0x405uLL);
  qmemcpy(v103, "YAF", 3);
  DWORD1(v103[0]) = 2;
  *(&v103[0] + 1) = j;
  v63 = yaa_encodeHeader(v136, 0x800uLL, __s, v103, 1uLL, v60, v61, v62);
  if (v63 < 0)
  {
    v47 = "encoding metadata entry";
    v48 = 306;
    goto LABEL_35;
  }

  v64 = v63;
  if (2048 - v63 < j)
  {
    v47 = "encoding metadata entry";
    v48 = 309;
    goto LABEL_35;
  }

  memcpy(&v136[v63], v137, j);
  if (*v2 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "Output fields: %s\n", v137);
  }

  if ((yaa_writeRawEntryHeader(v88, v136, v64 + j, 0, v65, v66, v67, v68) & 0x80000000) != 0)
  {
    v47 = "writing metadata entry";
    v48 = 317;
LABEL_35:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", v48, 65, 0, v47, v12, v13, v85);
LABEL_36:
    v49 = 0;
    goto LABEL_37;
  }

  *(&v99 + 1) = SharedBufferCreate(0x10000uLL, v69, v70, v71, v72, v73, v12, v13);
  if (!*(&v99 + 1))
  {
    v47 = "allocating shared buffer";
    v48 = 322;
    goto LABEL_35;
  }

  *&v98 = v2;
  *(&v98 + 1) = v88;
  *&v99 = v14;
  v49 = 1;
  HIDWORD(v100) = 1;
  if ((createThread(&v102, transcodeIThreadProc, &v98, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 329, 65, 0, "running transcoder I thread", v74, v75, v85);
    v49 = 0;
  }

  if ((createThread(&v101, transcodeOThreadProc, &v98, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 330, 65, 0, "running transcoder O thread", v76, v77, v85);
    v49 = 0;
  }

  if ((joinThread(v101) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 331, 65, 0, "waiting for O thread", v78, v79, v85);
    v49 = 0;
  }

  if ((joinThread(v102) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 332, 65, 0, "waiting for I thread", v12, v13, v85);
    v49 = 0;
  }

  if (!HIDWORD(v100))
  {
    v47 = "transcoding";
    v48 = 333;
    goto LABEL_35;
  }

LABEL_37:
  ArchiveTreeDestroy(v14);
  SharedBufferDestroy(*(&v99 + 1));
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v49)
  {
    v51 = 0;
  }

  else
  {
    v51 = -1;
  }

  if (result >= 0)
  {
    result = v51;
  }

  else
  {
    result = result;
  }

  v52 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MemGateReserve(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (pthread_mutex_lock(a1))
  {
    v6 = "MutexLock";
    v7 = 95;
    goto LABEL_24;
  }

  v9 = *(a1 + 212);
  if (v9)
  {
    goto LABEL_6;
  }

  v16 = *(a1 + 184);
  v17 = *(a1 + 192);
  v18 = v16 < a2;
  v19 = v16 - a2;
  if (!v18)
  {
    v20 = v17 + 1;
LABEL_17:
    v14 = 0;
    *(a1 + 184) = v19;
    *(a1 + 192) = v20;
    goto LABEL_18;
  }

  if (!v17)
  {
    v20 = 1;
    goto LABEL_17;
  }

LABEL_6:
  v10 = *(a1 + 208);
  if (v9 == v10 || ((*(a1 + 212) = v9 + 1, v11 = *(a1 + 200), v12 = *(a1 + 220), v12 + 1 != v10) ? (v13 = v12 + 1) : (v13 = 0), *(a1 + 220) = v13, !v11))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateReserve", 114, 18, 0, "MemGateAllocateRequest", v4, v5, v22);
    v14 = 0;
    v15 = 0;
    goto LABEL_19;
  }

  v14 = v11 + (v12 << 7);
  *(v14 + 120) = a2;
LABEL_18:
  v15 = 1;
LABEL_19:
  if (pthread_mutex_unlock(a1))
  {
    v6 = "MutexUnlock";
    v7 = 123;
  }

  else
  {
    if (!v14)
    {
      goto LABEL_25;
    }

    if (pthread_mutex_lock((v14 + 8)))
    {
      goto LABEL_23;
    }

    while (*v14 <= 0)
    {
      if (pthread_cond_wait((v14 + 72), (v14 + 8)))
      {
        goto LABEL_23;
      }
    }

    --*v14;
    if (pthread_mutex_unlock((v14 + 8)))
    {
LABEL_23:
      v6 = "SemAcquire";
      v7 = 129;
    }

    else
    {
      if (!pthread_mutex_lock((a1 + 72)))
      {
        v21 = *(a1 + 64);
        *(a1 + 64) = v21 + 1;
        if ((v21 || !pthread_cond_broadcast((a1 + 136))) && !pthread_mutex_unlock((a1 + 72)))
        {
          goto LABEL_25;
        }
      }

      v6 = "SemRelease";
      v7 = 136;
    }
  }

LABEL_24:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateReserve", v7, 18, 0, v6, v4, v5, v22);
  v15 = 0;
LABEL_25:
  if (v15)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t MemGateFree(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (pthread_mutex_lock(a1))
  {
    v6 = "MutexLock";
    v7 = 154;
  }

  else
  {
    *(a1 + 184) += a2;
    --*(a1 + 192);
    if (*(a1 + 212))
    {
      while (1)
      {
        v9 = *(a1 + 200);
        if (!v9)
        {
          goto LABEL_26;
        }

        v10 = v9 + (*(a1 + 216) << 7);
        v11 = *(a1 + 184);
        v12 = *(v10 + 120);
        v13 = *(a1 + 192);
        v14 = v11 < v12;
        v15 = v11 - v12;
        if (v14 && v13 != 0)
        {
          goto LABEL_26;
        }

        *(a1 + 184) = v15;
        *(a1 + 192) = v13 + 1;
        if (pthread_mutex_lock((v10 + 8)))
        {
          break;
        }

        if (!(*v10)++)
        {
          if (pthread_cond_broadcast((v10 + 72)))
          {
            break;
          }
        }

        if (pthread_mutex_unlock((v10 + 8)))
        {
          break;
        }

        if (pthread_mutex_lock((a1 + 72)))
        {
          goto LABEL_27;
        }

        while (1)
        {
          v20 = *(a1 + 64);
          if (v20 > 0)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 136), (a1 + 72)))
          {
            goto LABEL_27;
          }
        }

        *(a1 + 64) = v20 - 1;
        if (pthread_mutex_unlock((a1 + 72)))
        {
LABEL_27:
          v26 = "SemAcquire";
          v27 = 177;
LABEL_28:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateFree", v27, 18, 0, v26, v17, v18, v28);
          v25 = 0;
          goto LABEL_29;
        }

        v21 = *(a1 + 212);
        if (v21)
        {
          v22 = v21 - 1;
          v23 = *(a1 + 216);
          v24 = v23 + 1 == *(a1 + 208) ? 0 : v23 + 1;
          *(a1 + 212) = v22;
          *(a1 + 216) = v24;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      v26 = "SemRelease";
      v27 = 176;
      goto LABEL_28;
    }

LABEL_26:
    v25 = 1;
LABEL_29:
    if (!pthread_mutex_unlock(a1))
    {
      goto LABEL_32;
    }

    v6 = "MutexUnlock";
    v7 = 188;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateFree", v7, 18, 0, v6, v4, v5, v28);
  v25 = 0;
LABEL_32:
  if (v25)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t MemGateDestroy(pthread_mutex_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1[3].__opaque;
  if (v9)
  {
    if (*&a1[3].__opaque[8] < 1)
    {
      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      v12 = 72;
      do
      {
        v13 = (*a1[3].__opaque + v12);
        if (pthread_mutex_destroy(&v13[-2].__opaque[24]) || pthread_cond_destroy(v13))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 205, 18, 0, "SemDestroy", v14, v15, v21);
          v11 = 0;
        }

        ++v10;
        v12 += 128;
      }

      while (v10 < *&a1[3].__opaque[8]);
      v9 = *a1[3].__opaque;
    }

    free(v9);
    *a1[3].__opaque = 0;
  }

  else
  {
    v11 = 1;
  }

  if (*&a1[3].__opaque[8] >= 1)
  {
    if (LODWORD(a1[3].__sig))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 216, 18, 0, "memory leak", a7, a8, v21);
      v11 = 0;
    }

    if (*&a1[3].__opaque[12])
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 217, 18, 0, "pending requests", a7, a8, v21);
      v11 = 0;
    }

    if (pthread_mutex_destroy(a1))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 218, 18, 0, "MutexDestroy", v16, v17, v21);
      v11 = 0;
    }

    if (pthread_mutex_destroy((a1 + 72)) || pthread_cond_destroy(a1[2].__opaque))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 219, 18, 0, "SemDestroy", v18, v19, v21);
      v11 = 0;
    }
  }

  *&a1[3].__sig = 0u;
  *&a1[3].__opaque[8] = 0u;
  *&a1[2].__opaque[24] = 0u;
  *&a1[2].__opaque[40] = 0u;
  *&a1[2].__sig = 0u;
  *&a1[2].__opaque[8] = 0u;
  *&a1[1].__opaque[24] = 0u;
  *&a1[1].__opaque[40] = 0u;
  *&a1[1].__sig = 0u;
  *&a1[1].__opaque[8] = 0u;
  *&a1->__opaque[24] = 0u;
  *&a1->__opaque[40] = 0u;
  if (v11)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *&a1->__sig = 0uLL;
  *&a1->__opaque[8] = 0uLL;
  return result;
}

uint64_t MemGateInit(pthread_mutex_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&a1[3].__sig = 0u;
  *&a1[3].__opaque[8] = 0u;
  *&a1[2].__opaque[24] = 0u;
  *&a1[2].__opaque[40] = 0u;
  *&a1[2].__sig = 0u;
  *&a1[2].__opaque[8] = 0u;
  *&a1[1].__opaque[24] = 0u;
  *&a1[1].__opaque[40] = 0u;
  *&a1[1].__sig = 0u;
  *&a1[1].__opaque[8] = 0u;
  *&a1->__opaque[24] = 0u;
  *&a1->__opaque[40] = 0u;
  *&a1->__sig = 0u;
  *&a1->__opaque[8] = 0u;
  if (a3 <= 0)
  {
    v11 = "bad # of allocation requests";
    v12 = 236;
  }

  else if (pthread_mutex_init(a1, 0))
  {
    v11 = "MutexInit";
    v12 = 239;
  }

  else
  {
    LODWORD(a1[1].__sig) = 0;
    if (pthread_mutex_init((a1 + 72), 0) || pthread_cond_init(a1[2].__opaque, 0))
    {
      v11 = "SemInit";
      v12 = 240;
    }

    else
    {
      *&a1[2].__opaque[48] = a2;
      LODWORD(a1[3].__sig) = 0;
      *&a1[3].__opaque[8] = a3;
      *&a1[3].__opaque[12] = 0;
      *&a1[3].__opaque[16] = 0;
      v22 = calloc(a3, 0x80uLL);
      *a1[3].__opaque = v22;
      if (!v22)
      {
        v13 = *__error();
        v11 = "calloc";
        v12 = 250;
        goto LABEL_9;
      }

      v23 = 0;
      v24 = a3 << 7;
      while (1)
      {
        v25 = *a1[3].__opaque;
        *(v25 + v23) = 0;
        if (pthread_mutex_init((v25 + v23 + 8), 0))
        {
          break;
        }

        result = pthread_cond_init((v25 + v23 + 72), 0);
        if (result)
        {
          break;
        }

        *(v25 + v23 + 120) = 0;
        v23 += 128;
        if (v24 == v23)
        {
          return result;
        }
      }

      v11 = "SemInit";
      v12 = 257;
    }
  }

  v13 = 0;
LABEL_9:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateInit", v12, 18, v13, v11, a7, a8, v26);
  MemGateDestroy(a1, v14, v15, v16, v17, v18, v19, v20);
  return 0xFFFFFFFFLL;
}

uint64_t loadDirectoryThreadProc(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 >= v1[1])
  {
LABEL_13:
    result = 0;
    goto LABEL_16;
  }

  while (1)
  {
    v4 = (v1[5] + *(v1[2] + 184 * v2));
    if ((concatPath(v18, 0x400uLL, *a1, v4) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectoryThreadProc", 1064, 18, 0, "getting full path: %s", v5, v6, v4);
      goto LABEL_15;
    }

    v1 = *(a1 + 8);
    if ((*(v1[2] + 184 * v2 + 56) - 1) > 2)
    {
      goto LABEL_12;
    }

    v7 = *(a1 + 32);
    FileDiskUsage = getFileDiskUsage(v18);
    v11 = FileDiskUsage >= 0 ? (FileDiskUsage + (v7 - 1)) & -v7 : FileDiskUsage;
    v1 = *(a1 + 8);
    v12 = v1[2];
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*(v12 + 184 * v2 + 56) == 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectoryThreadProc", 1078, 18, 0, "getting disk usage: %s", v9, v10, v18);
      goto LABEL_15;
    }

LABEL_12:
    v2 += *(a1 + 24);
    if (v2 >= v1[1])
    {
      goto LABEL_13;
    }
  }

  v13 = v12 + 184 * v2;
  *(v13 + 152) = v11;
  if (*(v13 + 56) != 1)
  {
    goto LABEL_12;
  }

  if ((getFileSHA1Digest(v18, v12 + 184 * v2 + 128) & 0x80000000) == 0)
  {
    v1 = *(a1 + 8);
    goto LABEL_12;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectoryThreadProc", 1085, 18, 0, "getting SHA1 digest: %s", v14, v15, v18);
LABEL_15:
  result = 0xFFFFFFFFLL;
LABEL_16:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t InoTableEntryCmpProc(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 < *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4 < v3;
  }
}

uint64_t loadDirectory(char *a1, signed int DefaultNThreads, size_t a3)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  for (i = strlen(a1); i; --i)
  {
    if (a1[i - 1] != 47)
    {
      break;
    }
  }

  v78[0] = i;
  v78[1] = a3;
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if ((loadDirectoryProc(v78, a1) & 0x80000000) != 0)
  {
    v24 = "inserting root dir";
    v25 = 1132;
    goto LABEL_28;
  }

  v77[1] = 0;
  v77[2] = 0;
  v77[0] = v78;
  v77[3] = loadDirectoryProc;
  if ((enumerateTree(v77, a1) & 0x80000000) != 0)
  {
    v76 = a1;
    v24 = "enumerateTree %s";
    v25 = 1139;
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", v25, 18, 0, v24, v7, v8, v76);
    v9 = 0;
LABEL_29:
    LODWORD(v26) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_30;
  }

  qsort_r(*(a3 + 16), *(a3 + 8), 0xB8uLL, a3, DirectoryEntryPathCompareProc);
  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = *(a3 + 8);
    if (!v11)
    {
      goto LABEL_45;
    }

    v12 = 0;
    v13 = 0;
    v14 = -v11;
    v15 = *(a3 + 16) + 56;
    while (2)
    {
      v16 = v15 + 184 * v13++;
      while (*v16 == 1)
      {
        v17 = v13 - 1;
        if ((v10 & 1) == 0)
        {
          if (*(v16 - 32) >= 2)
          {
            v18 = &v9[16 * v12];
            *v18 = *(v16 - 40);
            *(v18 + 1) = v17;
LABEL_19:
            ++v12;
          }

          break;
        }

        *(v16 + 16) = v17;
        *(v16 + 24) = -1;
        *(v16 + 32) = -1;
        if (*(v16 - 32) >= 2)
        {
          goto LABEL_19;
        }

        ++v13;
        v16 += 184;
        if (v14 + v13 == 1)
        {
          goto LABEL_22;
        }
      }

      if (v14 + v13)
      {
        continue;
      }

      break;
    }

    if ((v10 & 1) == 0)
    {
      break;
    }

LABEL_22:
    if (!v12)
    {
      goto LABEL_45;
    }

    v9 = calloc(v12, 0x10uLL);
    v10 = 0;
    if (!v9)
    {
      v19 = *__error();
      v22 = "inoTable allocation";
      v23 = 1171;
LABEL_25:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", v23, 18, v19, v22, v20, v21, v76);
      goto LABEL_29;
    }
  }

  if (v12)
  {
    qsort(v9, v12, 0x10uLL, InoTableEntryCmpProc);
    v36 = 0;
    v37 = 0;
    v38 = *(a3 + 8);
    v39 = -1;
    v40 = v9;
    v41 = -1;
    while (1)
    {
      v42 = v40[1];
      if (!v36 || *(v40 - 2) != *v40)
      {
        v37 = 0;
        ++v39;
        v41 = v40[1];
      }

      if (v41 >= v38 || v42 >= v38)
      {
        break;
      }

      v40 += 2;
      v43 = (*(a3 + 16) + 184 * v42);
      v43[9] = v41;
      v43[10] = v39;
      v43[11] = v37++;
      if (v12 == ++v36)
      {
        goto LABEL_45;
      }
    }

    v22 = "Invalid index in ino table";
    v23 = 1187;
    v19 = 0;
    goto LABEL_25;
  }

LABEL_45:
  v44 = DefaultNThreads;
  v29 = calloc(DefaultNThreads, 0x28uLL);
  v45 = malloc(8 * DefaultNThreads);
  v28 = v45;
  if (v29 && v45)
  {
    if (DefaultNThreads < 1)
    {
      v75 = ThreadPoolCreate(DefaultNThreads, v45, loadDirectoryThreadProc);
      if (v75)
      {
        v27 = v75;
        v30 = 0;
        LODWORD(v26) = 1;
        goto LABEL_31;
      }
    }

    else
    {
      v46 = DefaultNThreads;
      v47 = (DefaultNThreads + 1) & 0xFFFFFFFE;
      v48 = vdupq_n_s64(DefaultNThreads - 1);
      v49 = xmmword_2980690E0;
      v50 = v45 + 1;
      v51 = vdupq_n_s64(2uLL);
      v52 = v29;
      do
      {
        v53 = vmovn_s64(vcgeq_u64(v48, v49));
        if (v53.i8[0])
        {
          *(v50 - 1) = v52;
        }

        if (v53.i8[4])
        {
          *v50 = v52 + 40;
        }

        v49 = vaddq_s64(v49, v51);
        v50 += 2;
        v52 += 80;
        v47 -= 2;
      }

      while (v47);
      v54 = ThreadPoolCreate(DefaultNThreads, v45, loadDirectoryThreadProc);
      if (v54)
      {
        v27 = v54;
        v62 = 0;
        while (1)
        {
          Worker = ThreadPoolGetWorker(v27, v55, v56, v57, v58, v59, v60, v61);
          v26 = Worker;
          if (!Worker)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1208, 18, 0, "ThreadPoolGetWorker", v64, v65, v76);
            goto LABEL_30;
          }

          *Worker = a1;
          *(Worker + 8) = a3;
          *(Worker + 16) = v62;
          *(Worker + 24) = v44;
          *(Worker + 32) = getFilesystemBlockSize(a1);
          if ((ThreadPoolRunWorker(v27, v26, v66, v67, v68, v69, v70, v71) & 0x80000000) != 0)
          {
            break;
          }

          ++v62;
          LODWORD(v26) = 1;
          if (v46 == v62)
          {
            v30 = 0;
            goto LABEL_31;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1214, 18, 0, "ThreadPoolRunWorker", v60, v61, v76);
        LODWORD(v26) = 0;
        goto LABEL_30;
      }
    }

    v73 = "ThreadPoolCreate";
    v74 = 1201;
    v72 = 0;
  }

  else
  {
    v72 = *__error();
    v73 = "malloc";
    v74 = 1198;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", v74, 18, v72, v73, v60, v61, v76);
  LODWORD(v26) = 0;
  v27 = 0;
LABEL_30:
  v30 = 1;
LABEL_31:
  v31 = ThreadPoolDestroy(v27);
  v34 = v26 & ~(v31 >> 31);
  if ((v30 & 1) == 0 && (v31 & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1219, 18, 0, "A LoadDirectory thread reported an error", v32, v33, v76);
    v34 = 0;
  }

  free(v29);
  free(v28);
  free(v9);
  if (v34)
  {
    return 0;
  }

  free(*(a3 + 16));
  BlobBufferFree(a3 + 24);
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return 0xFFFFFFFFLL;
}

uint64_t loadDirectoryProc(size_t *a1, char *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if (*(v4 + 8) >= *v4)
  {
    v5 = *v4 + 0x4000;
    *v4 = v5;
    v6 = reallocf(*(v4 + 16), 184 * v5);
    *(v4 + 16) = v6;
    if (!v6)
    {
      v9 = *__error();
      v10 = "reallocf";
      v11 = 992;
      goto LABEL_23;
    }
  }

  memset(&v26, 0, sizeof(v26));
  if (lstat(a2, &v26))
  {
    v9 = *__error();
    v25 = a2;
    v10 = "%s";
    v11 = 998;
LABEL_23:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectoryProc", v11, 18, v9, v10, v7, v8, v25);
    result = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v12 = v26.st_mode & 0xF000;
  switch(v12)
  {
    case 16384:
      v15 = 0;
      v13 = 0;
      v14 = 2;
      break;
    case 32768:
      v15 = 0;
      v13 = 1;
      v14 = 1;
      break;
    case 40960:
      v13 = 0;
      v14 = 3;
      v15 = 1;
      break;
    default:
      v25 = 0;
      v10 = "Unsupported file type: %07o (%s)";
      v11 = 1006;
      goto LABEL_22;
  }

  v16 = *(v4 + 8);
  v17 = *(v4 + 16) + 184 * v16;
  *(v4 + 8) = v16 + 1;
  *(v17 + 176) = 0;
  *(v17 + 144) = 0u;
  *(v17 + 160) = 0u;
  *(v17 + 112) = 0u;
  *(v17 + 128) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  if (strlen(a2) > *a1)
  {
    v18 = &a2[*a1 + 1];
  }

  else
  {
    v18 = "";
  }

  v19 = strlen(v18);
  if (BlobBufferStore(v4 + 24, v18, v19 + 1, v17))
  {
    v10 = "Storing entry path";
    v11 = 1018;
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  if (v15)
  {
    bzero(v27, 0x400uLL);
    v20 = readlink(a2, v27, 0x3FFuLL);
    if (v20 < 0)
    {
      v9 = *__error();
      v25 = a2;
      v10 = "%s";
      v11 = 1024;
      goto LABEL_23;
    }

    v27[v20] = 0;
    if (BlobBufferStore(v4 + 24, v27, v20 + 1, (v17 + 96)))
    {
      v10 = "Storing symlink path";
      v11 = 1026;
      goto LABEL_22;
    }
  }

  *(v17 + 56) = v14;
  *(v17 + 72) = -1;
  *(v17 + 112) = *&v26.st_uid;
  v23 = v26.st_mode & 0xFFF;
  *(v17 + 160) = 0x7FFFFFFFLL;
  st_flags = v26.st_flags;
  *(v17 + 120) = v23;
  *(v17 + 124) = st_flags;
  *(v17 + 48) = -1;
  *(v17 + 16) = v26.st_ino;
  *(v17 + 24) = v26.st_nlink;
  result = 0;
  if (v13)
  {
    *(v17 + 64) = v26.st_size;
  }

LABEL_24:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t loadManifest(const char *a1, uint64_t a2)
{
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v58[0] = 0;
  *__ptr = 0u;
  v60 = 0;
  v58[1] = a2;
  v3 = IFileStreamCreateWithFilename(a1, 0, -1);
  v11 = v3;
  if (!v3)
  {
    v12 = "IFileStreamCreateWithFilename";
    v13 = 1429;
    goto LABEL_7;
  }

  *&v62 = 0;
  *(&v63 + 1) = 0;
  v64 = 0u;
  v65 = 0u;
  *&v61 = 0;
  *(&v61 + 1) = IFileStreamRead;
  *(&v62 + 1) = v3;
  *&v63 = loadManifestProc;
  v66 = v58;
  if (ParallelArchiveRead(&v61, v4, v5, v6, v7, v8, v9, v10))
  {
    v12 = "ParallelArchiveRead";
    v13 = 1442;
LABEL_7:
    v14 = 0;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", v13, 18, v14, v12, v9, v10, v57);
    v15 = 1;
    goto LABEL_9;
  }

  if (v58[0])
  {
    v12 = "errors during manifest scan";
    v13 = 1445;
    goto LABEL_7;
  }

  v17 = *(a2 + 8);
  if (v17)
  {
    v18 = 0;
    v19 = *(a2 + 16);
    v20 = (v19 + 72);
    do
    {
      if (*(v20 - 4) == 1)
      {
        *v20 = v18;
        if (*(v20 - 4))
        {
          v21 = *(a2 + 40);
          v22 = lookupEntry(a2, (v21 + *(v20 - 5)));
          if ((v22 & 0x8000000000000000) != 0)
          {
            v57 = v21 + *(v20 - 9);
            v12 = "resolving hard link %s -> %s";
            v13 = 1464;
            goto LABEL_7;
          }

          if (v22 >= v18)
          {
            v55 = v21 + *(v20 - 9);
            if (v17 > v22)
            {
              v56 = v21 + *(v19 + 184 * v22);
            }

            v57 = v21 + *(v20 - 9);
            v12 = "hard link resolved to a larger index: %s -> %s";
            v13 = 1465;
            goto LABEL_7;
          }

          *v20 = v22;
        }
      }

      ++v18;
      v20 += 23;
    }

    while (v17 != v18);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = *(a2 + 16);
    v27 = (v26 + 80);
    do
    {
      if (*(v27 - 6) == 1)
      {
        v28 = *(v27 - 1);
        if (v25 != v28)
        {
          if (*v27 == -1)
          {
            ++v24;
          }

          else
          {
            ++v23;
          }

          if (*v27 != *(v26 + 184 * v28 + 80))
          {
            v12 = "Inconsistent HLC fields in manifest";
            v13 = 1482;
            goto LABEL_7;
          }
        }
      }

      ++v25;
      v27 += 23;
    }

    while (v17 != v25);
    if (v23 && v24)
    {
      v12 = "Missing some HLC fields in manifest";
      v13 = 1484;
      goto LABEL_7;
    }

    if (!v23)
    {
      v38 = 0;
      v39 = *(a2 + 16);
      v40 = (v39 + 80);
      do
      {
        if (*(v40 - 6) == 1)
        {
          v41 = *(v40 - 1);
          if (v38 != v41)
          {
            v42 = v39 + 184 * v41;
            v45 = *(v42 + 80);
            v44 = (v42 + 80);
            v43 = v45;
            if (v45 == -1)
            {
              *v44 = v23;
              v43 = v23++;
            }

            *v40 = v43;
          }
        }

        ++v38;
        v40 += 23;
      }

      while (v17 != v38);
    }

    v29 = 0;
    v46 = 0;
    v30 = 0;
    v47 = (*(a2 + 16) + 88);
    do
    {
      if (*(v47 - 8) == 1)
      {
        v48 = *(v47 - 1);
        if (v48 != -1)
        {
          if (v48 > v30)
          {
            v30 = *(v47 - 1);
          }

          if (*v47 == -1)
          {
            ++v46;
          }

          else
          {
            ++v29;
          }
        }
      }

      v47 += 23;
      --v17;
    }

    while (v17);
    if (v29 && v46)
    {
      v12 = "Missing some HLO fields in manifest";
      v13 = 1516;
      goto LABEL_7;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  if (__ptr[0] <= v30)
  {
    __ptr[0] = (v30 + 1);
    __ptr[1] = reallocf(__ptr[1], 8 * (v30 + 1));
    if (!__ptr[1])
    {
      v14 = *__error();
      v12 = "malloc";
      v13 = 1523;
      goto LABEL_8;
    }
  }

  if (v29)
  {
    if (__ptr[0])
    {
      memset(__ptr[1], 255, 8 * __ptr[0]);
    }

    v31 = *(a2 + 8);
    if (v31)
    {
      v32 = 0;
      v33 = __ptr[1];
      v34 = (*(a2 + 16) + 88);
      do
      {
        if (*(v34 - 8) == 1)
        {
          v35 = *(v34 - 1);
          if (v35 != -1)
          {
            if (*v34)
            {
              if (*v34 == -1)
              {
                v12 = "Missing HLO field";
                v13 = 1552;
                goto LABEL_7;
              }
            }

            else
            {
              if (v33[v35] != -1)
              {
                v12 = "Multiple HLO = 0 entries for same cluster";
                v13 = 1555;
                goto LABEL_7;
              }

              v33[v35] = v32;
            }
          }
        }

        ++v32;
        v34 += 23;
      }

      while (v31 != v32);
      v36 = __ptr[1];
      v37 = (*(a2 + 16) + 80);
      do
      {
        if (*(v37 - 6) == 1 && *v37 != -1)
        {
          *(v37 - 1) = v36[*v37];
        }

        v37 += 23;
        --v31;
      }

      while (v31);
    }
  }

  else
  {
    if (__ptr[0])
    {
      memset_pattern16(__ptr[1], &unk_298069840, 8 * __ptr[0]);
    }

    v49 = *(a2 + 8);
    if (v49)
    {
      v50 = 0;
      v51 = __ptr[1];
      v52 = (*(a2 + 16) + 88);
      do
      {
        if (*(v52 - 8) == 1)
        {
          v53 = *(v52 - 1);
          if (v53 != -1)
          {
            if (v50 == *(v52 - 2))
            {
              v54 = 0;
            }

            else
            {
              v54 = v51[v53];
              v51[v53] = v54 + 1;
            }

            *v52 = v54;
          }
        }

        ++v50;
        v52 += 23;
      }

      while (v49 != v50);
    }
  }

  v15 = 0;
  *(a2 + 48) = v60;
LABEL_9:
  IFileStreamDestroy(v11);
  free(__ptr[1]);
  if (v15)
  {
    free(*(a2 + 16));
    BlobBufferFree(a2 + 24);
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return (v15 << 31 >> 31);
}

size_t loadManifestProc(size_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v11 = result;
  v56 = *MEMORY[0x29EDCA608];
  v12 = *(result + 8);
  v13 = a2[1];
  if (v13 <= 71)
  {
    if (v13 == 68)
    {
      v15 = 2;
LABEL_21:
      v17 = *v12;
      v16 = v12[1];
      if (v16 >= *v12)
      {
        *v12 = v17 + 0x4000;
        v18 = reallocf(v12[2], 184 * (v17 + 0x4000));
        v12[2] = v18;
        if (!v18)
        {
          v24 = *__error();
          v21 = "reallocf";
          v22 = 1280;
LABEL_116:
          result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifestProc", v22, 18, v24, v21, a7, a8, v52);
          ++*v11;
          goto LABEL_117;
        }

        v16 = v12[1];
      }

      else
      {
        v18 = v12[2];
      }

      v12[1] = v16 + 1;
      v19 = &v18[184 * v16];
      *(v19 + 22) = 0;
      *(v19 + 9) = 0u;
      *(v19 + 10) = 0u;
      *(v19 + 7) = 0u;
      *(v19 + 8) = 0u;
      *(v19 + 5) = 0u;
      *(v19 + 6) = 0u;
      *(v19 + 3) = 0u;
      *(v19 + 4) = 0u;
      *(v19 + 1) = 0u;
      *(v19 + 2) = 0u;
      *v19 = 0u;
      v20 = strlen(a2 + 144);
      result = BlobBufferStore((v12 + 3), a2 + 36, v20 + 1, v19);
      if (result)
      {
        v21 = "Storing path";
        v22 = 1287;
LABEL_115:
        v24 = 0;
        goto LABEL_116;
      }

      v23 = *a2;
      if ((*a2 & 2) == 0)
      {
        LOBYTE(v52) = a2 - 112;
        v21 = "manifest doesn't provide UID for entry %s";
        v22 = 1288;
        goto LABEL_115;
      }

      if ((v23 & 4) == 0)
      {
        LOBYTE(v52) = a2 - 112;
        v21 = "manifest doesn't provide GID for entry %s";
        v22 = 1289;
        goto LABEL_115;
      }

      if ((v23 & 0x10) == 0)
      {
        LOBYTE(v52) = a2 - 112;
        v21 = "manifest doesn't provide MOD for entry %s";
        v22 = 1290;
        goto LABEL_115;
      }

      if ((v23 & 8) == 0)
      {
        LOBYTE(v52) = a2 - 112;
        v21 = "manifest doesn't provide FLG for entry %s";
        v22 = 1291;
        goto LABEL_115;
      }

      *(v19 + 14) = *(a2 + 1);
      v25 = a2[4];
      *(v19 + 30) = a2[5] & 0xFFF;
      *(v19 + 31) = v25;
      *(v19 + 14) = v15;
      *(v19 + 9) = -1;
      *(v19 + 20) = 0x7FFFFFFFLL;
      *(v19 + 6) = -1;
      v26 = a2[1];
      if (v26 == 72)
      {
        v27 = strlen(a2 + 1168);
        result = BlobBufferStore((v12 + 3), a2 + 292, v27 + 1, v19 + 4);
        if (result)
        {
          v21 = "Storing link path";
          v22 = 1304;
          goto LABEL_115;
        }

        v26 = a2[1];
      }

      if (v26 == 76)
      {
        v28 = strlen(a2 + 1168);
        result = BlobBufferStore((v12 + 3), a2 + 292, v28 + 1, v19 + 12);
        if (result)
        {
          v21 = "Storing link path";
          v22 = 1309;
          goto LABEL_115;
        }
      }

      if (v8)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = (a3 + 8);
        v34 = v8;
        do
        {
          v35 = *(v33 - 1) & 0xDFDFDF;
          if (v35 == 5196872)
          {
            if (*(v33 - 1) == 1)
            {
              v32 = *v33;
              v30 = 1;
            }
          }

          else if (v35 == 4410440 && *(v33 - 1) == 1)
          {
            v31 = *v33;
            v29 = 1;
          }

          v33 += 129;
          --v34;
        }

        while (v34);
        if (v30 && !v29)
        {
          v21 = "Invalid manifest, HLO without HLC";
          v22 = 1323;
          goto LABEL_115;
        }

        if (v29)
        {
          v37 = *(v11 + 16);
          if (v31 < v37)
          {
            goto LABEL_73;
          }

          v38 = *(v11 + 16);
          do
          {
            if (v38)
            {
              v38 += v38 >> 1;
            }

            else
            {
              v38 = 16;
            }
          }

          while (v31 >= v38);
          if (v38 <= v37)
          {
LABEL_73:
            result = *(v11 + 24);
          }

          else
          {
            v54 = v30;
            result = reallocf(*(v11 + 24), 8 * v38);
            *(v11 + 24) = result;
            if (!result)
            {
              v24 = *__error();
              v21 = "malloc";
              v22 = 1333;
              goto LABEL_116;
            }

            v39 = *(v11 + 16);
            if (v39 < v38)
            {
              v53 = result;
              memset((result + 8 * v39), 255, 8 * v38 - 8 * v39);
              result = v53;
            }

            *(v11 + 16) = v38;
            v30 = v54;
          }

          v40 = *(result + 8 * v31);
          if (v40 != -1)
          {
            if (v40 >= v12[1])
            {
              v21 = "invalid hard link index";
              v22 = 1352;
              goto LABEL_115;
            }

            v41 = v30;
            v42 = v12[5] + *(v12[2] + 184 * v40);
            if (__strlcpy_chk() >= 0x400)
            {
              v21 = "path too long";
              v22 = 1349;
              goto LABEL_115;
            }

            v50 = strlen(__s);
            result = BlobBufferStore((v12 + 3), __s, v50 + 1, v19 + 4);
            if (result)
            {
              v21 = "Storing link path";
              v22 = 1350;
              goto LABEL_115;
            }

            *(v19 + 10) = v31;
            if (!v41)
            {
              goto LABEL_57;
            }

LABEL_58:
            *(v19 + 11) = v32;
            v36 = a2[1];
            if (v36 == 70)
            {
              if ((*a2 & 0x80) == 0)
              {
                LOBYTE(v52) = a2 - 112;
                v21 = "manifest doesn't provide SIZ for entry %s";
                v22 = 1361;
                goto LABEL_115;
              }

              *(v19 + 8) = *(a2 + 5);
              if ((*(a2 + 1) & 0x20) == 0)
              {
                LOBYTE(v52) = a2 - 112;
                v21 = "manifest doesn't provide SH1 for entry %s";
                v22 = 1365;
                goto LABEL_115;
              }

              v43 = *(a2 + 23);
              *(v19 + 36) = a2[27];
              *(v19 + 8) = v43;
              v36 = a2[1];
              if (v36 == 70)
              {
                if ((v19[124] & 0x20) == 0)
                {
                  *(v19 + 20) = 0xFFFFFFFFLL;
                }

                v36 = 70;
              }
            }

            if ((*a2 & 0x400) != 0)
            {
              *(v19 + 44) = 1;
              if ((*a2 & 0x800) == 0)
              {
LABEL_88:
                if (v8)
                {
                  goto LABEL_89;
                }

                goto LABEL_102;
              }
            }

            else if ((*a2 & 0x800) == 0)
            {
              goto LABEL_88;
            }

            *(v19 + 45) = 1;
            if (v8)
            {
LABEL_89:
              v44 = 0;
              v45 = (a3 + 8);
              do
              {
                v46 = *(v45 - 2);
                if ((v46 & 0xDFDFDF) == 0x5A5544)
                {
                  *(v19 + 19) = *v45;
                  v46 = *(v45 - 2);
                  v44 = 1;
                }

                if ((v46 & 0xDFDFDF) == 0x544641)
                {
                  *(v19 + 40) = *v45;
                  v46 = *(v45 - 2);
                }

                if ((v46 & 0xDFDFDF) == 0x524641)
                {
                  *(v19 + 41) = *v45;
                  v46 = *(v45 - 2);
                }

                if ((v46 & 0xDFDFDF) == 0x494C46)
                {
                  *(v19 + 21) = *v45;
                }

                v45 += 129;
                --v8;
              }

              while (v8);
              v47 = v44 != 0;
LABEL_103:
              if (v36 != 70 || v47)
              {
                if (v36 != 72)
                {
                  goto LABEL_117;
                }

                result = lookupEntry(v12, a2 + 1168);
                if ((result & 0x8000000000000000) == 0)
                {
                  v48 = v12[2] + 184 * result;
                  *(v19 + 8) = *(v48 + 64);
                  *(v19 + 19) = *(v48 + 152);
                  v49 = *(v48 + 128);
                  *(v19 + 36) = *(v48 + 144);
                  *(v19 + 8) = v49;
                  goto LABEL_117;
                }

                LOBYTE(v52) = a2 - 112;
                v21 = "link path not found: %s -> %s";
                v22 = 1403;
              }

              else
              {
                LOBYTE(v52) = a2 - 112;
                v21 = "manifest doesn't provide DUZ for regular file %s";
                v22 = 1396;
              }

              goto LABEL_115;
            }

LABEL_102:
            v47 = 0;
            goto LABEL_103;
          }

          *(result + 8 * v31) = 0xD37A6F4DE9BD37A7 * (&v19[-v12[2]] >> 3);
          *(v19 + 10) = v31;
          if (v30)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *(v19 + 10) = -1;
          if (v30)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        *(v19 + 10) = -1;
      }

LABEL_57:
      v32 = -1;
      goto LABEL_58;
    }

    if (v13 != 70)
    {
      goto LABEL_29;
    }

LABEL_18:
    v15 = 1;
    goto LABEL_21;
  }

  if (v13 == 72)
  {
    goto LABEL_18;
  }

  if (v13 == 76)
  {
    v15 = 3;
    goto LABEL_21;
  }

  if (v13 != 77)
  {
LABEL_29:
    v52 = a2[1];
    v21 = "Unsupported file type: %d";
    v22 = 1273;
    goto LABEL_115;
  }

  if (a4)
  {
    v14 = (a3 + 8);
    do
    {
      if ((*(v14 - 2) & 0xDFDFDF) == 0x464159 && *(v14 - 1) == 7)
      {
        result = strstr(v14, "XAT");
        if (result)
        {
          result = strstr(v14, "ACL");
          if (result)
          {
            result = strstr(v14, "AFT");
            if (result)
            {
              result = strstr(v14, "AFR");
              if (result)
              {
                *(v11 + 32) = 1;
              }
            }
          }
        }
      }

      v14 += 1032;
      --v8;
    }

    while (v8);
  }

LABEL_117:
  v51 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t lookupEntry(void *a1, char *__s1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = a1[2];
    v5 = a1[5];
    v6 = strcmp(__s1, (v5 + *v4));
    if ((v6 & 0x80000000) == 0)
    {
      if (!v6)
      {
        return 0;
      }

      v7 = v2 - 1;
      v8 = strcmp(__s1, (v5 + v4[23 * v2 - 23]));
      if (v8 <= 0)
      {
        if (!v8)
        {
          return v2 - 1;
        }

        v11 = 0;
        while (v11 + 1 < v7)
        {
          v9 = (v7 + v11) >> 1;
          v12 = strcmp(__s1, (v5 + v4[23 * v9]));
          if (v12 < 0)
          {
            v7 = (v7 + v11) >> 1;
          }

          else
          {
            v11 = (v7 + v11) >> 1;
          }

          if (!v12)
          {
            return v9;
          }
        }
      }
    }
  }

  return -1;
}

size_t mergeContents(size_t result, uint64_t a2, void *a3)
{
  *a3 = result;
  if (result)
  {
    v4 = result;
    result = 0;
    v5 = (a2 + 8);
    v6 = v4;
    do
    {
      v7 = *v5;
      v5 += 7;
      result += v7;
      --v6;
    }

    while (v6);
    if (result)
    {
      v8 = calloc(result, 8uLL);
      v9 = v8;
      if (v8)
      {
        v10 = 0;
        for (i = 0; i != v4; ++i)
        {
          v12 = (a2 + 56 * i);
          v13 = v12[1];
          if (v13)
          {
            v14 = 0;
            v15 = v10;
            do
            {
              v10 = v15 + 1;
              v8[v15] = (v12[5] + *(v12[2] + v14));
              v14 += 184;
              ++v15;
              --v13;
            }

            while (v13);
          }
        }

        qsort(v8, v10, 8uLL, stringCompareProc);
        v16 = 0;
        if (v10)
        {
          v17 = v9;
          do
          {
            if (v16)
            {
              v18 = *v17;
              if (!strcmp(v9[v16 - 1], *v17))
              {
                goto LABEL_18;
              }
            }

            else
            {
              v18 = *v17;
            }

            v9[v16++] = v18;
LABEL_18:
            ++v17;
            --v10;
          }

          while (v10);
        }

        *(a3 + 1) = v16;
        v19 = calloc(v16, 0x4B8uLL);
        *(a3 + 4) = v19;
        if (v19)
        {
          if (v16)
          {
            v22 = 1200;
            v23 = v9;
            v24 = v16;
            while (1)
            {
              v25 = (*(a3 + 4) + v22);
              v26 = v25 - 300;
              *v25 = -1;
              v27 = strlen(*v23);
              if (BlobBufferStore(a3 + 40, *v23, v27 + 1, v26))
              {
                break;
              }

              ++v23;
              v22 += 1208;
              if (!--v24)
              {
                goto LABEL_24;
              }
            }

            v51 = "Storing entry path";
            v52 = 1640;
          }

          else
          {
LABEL_24:
            v28 = 0;
            while (1)
            {
              v29 = a2 + 56 * v28;
              if (*(v29 + 8))
              {
                break;
              }

LABEL_38:
              *(a3 + v28++ + 153232) = *(v29 + 48);
              if (v28 == v4)
              {
                free(v9);
                return 0;
              }
            }

            v30 = 0;
            v31 = 0;
            v54 = v28;
            v55 = a2 + 56 * v28;
            while (1)
            {
              v32 = *(v29 + 16) + 184 * v30;
              v56 = v30;
              if (v31 < v16)
              {
                v33 = *(v29 + 40);
                v34 = *v32;
                v35 = *(a3 + 7);
                v36 = (*(a3 + 4) + 1208 * v31);
                while (strcmp((v33 + v34), (v35 + *v36)))
                {
                  v36 += 151;
                  if (v16 == ++v31)
                  {
                    goto LABEL_42;
                  }
                }
              }

              if (v31 == v16)
              {
LABEL_42:
                v51 = "unable to locate path in merged array";
                v52 = 1654;
                goto LABEL_44;
              }

              *(v32 + 48) = v31;
              v28 = v54;
              v37 = *(a3 + 4) + 1208 * v31 + (v54 << 7);
              v38 = *(v32 + 72);
              v39 = *(v32 + 56);
              v40 = *(v32 + 104);
              *(v37 + 48) = *(v32 + 88);
              *(v37 + 64) = v40;
              v41 = *(v32 + 168);
              v42 = *(v32 + 152);
              v43 = *(v32 + 136);
              *(v37 + 80) = *(v32 + 120);
              *(v37 + 96) = v43;
              *(v37 + 112) = v42;
              *(v37 + 128) = v41;
              *(v37 + 16) = v39;
              *(v37 + 32) = v38;
              v44 = *(v32 + 72);
              v29 = v55;
              if (v44 != -1)
              {
                v44 = *(*(v55 + 16) + 184 * v44 + 48);
              }

              *(v37 + 56) = 0;
              v45 = (v37 + 56);
              *(v37 + 32) = v44;
              *(v37 + 64) = 0;
              if (*(v32 + 104))
              {
                v46 = *(v55 + 40);
                v47 = *(v32 + 96);
                v48 = strlen((v46 + v47));
                v49 = BlobBufferStore(a3 + 40, (v46 + v47), v48 + 1, v45);
                v29 = v55;
                if (v49)
                {
                  break;
                }
              }

              v30 = v56 + 1;
              if ((v56 + 1) >= *(v29 + 8))
              {
                goto LABEL_38;
              }
            }

            v51 = "Storing slink path";
            v52 = 1678;
          }

LABEL_44:
          v50 = 0;
        }

        else
        {
          v50 = *__error();
          v51 = "malloc";
          v52 = 1633;
        }
      }

      else
      {
        v50 = *__error();
        v51 = "malloc";
        v52 = 1610;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "mergeContents", v52, 18, v50, v51, v20, v21, v53);
      free(v9);
      free(*(a3 + 4));
      BlobBufferFree(a3 + 40);
      bzero(a3, 0x989F0uLL);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t applyRules(const __CFArray *a1, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4, const __CFArray *a5, const __CFArray *a6, const __CFArray *a7, const __CFArray *a8, uint64_t *a9, int a10)
{
  v17 = *a9;
  v56 = a9[1];
  if ((markFilesMatchingPrefixArray(a9, a1, 1, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a2, 2, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a3, 4, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a4, 16, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a5, 32, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a6, 64, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a7, 512, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a8, 1024, a10) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v56)
  {
    return 0;
  }

  v18 = 0;
  for (i = 0; i != v56; ++i)
  {
    v20 = a9[4];
    v21 = v20 + v18;
    v22 = *(v20 + v18 + 1172);
    if ((v22 & 2) != 0 && !*(v20 + (v17 << 7) - 112 + v18))
    {
      *(v21 + 1172) = v22 & 0xFFFFFFFD;
      if (a10 >= 2)
      {
        v23 = "???";
        if ((v22 & 4) != 0)
        {
          v23 = "Remove";
        }

        v24 = "Include";
        if (v22)
        {
          v24 = "Exclude";
          v23 = "Exclude";
        }

        if ((v22 & 5) != 0)
        {
          v25 = v23;
        }

        else
        {
          v25 = "None";
        }

        if (a9[1] <= i)
        {
          v26 = 0;
        }

        else
        {
          v26 = (a9[7] + *v21);
        }

        fprintf(*MEMORY[0x29EDCA610], "Rules from %s to %s (include not in output): %s\n", v24, v25, v26);
      }
    }

    v18 += 1208;
  }

  v27 = 0;
  for (j = 0; j != v56; ++j)
  {
    v29 = a9[4];
    v30 = v29 + v27;
    v31 = *(v29 + v27 + 1172);
    if (v31)
    {
      v32 = v31 & 0xFFFFFFEE;
      if ((v31 & 0x10) == 0)
      {
        v32 = *(v29 + v27 + 1172);
      }

      v33 = v32 & 0x20;
      if ((v32 & 0x20) != 0)
      {
        v32 &= 0xFFFFFFDD;
      }

      v34 = *(v29 + v27 + 1172) & 0x10 | v33;
      v35 = v32 & 0x40;
      if ((v32 & 0x40) != 0)
      {
        v32 &= 0xFFFFFFBB;
      }

      if (v34 | v35)
      {
        *(v30 + 1172) = v32;
      }

      if (a10 >= 2)
      {
        if (v32 != v31)
        {
          v36 = "Remove";
          if ((v31 & 4) == 0)
          {
            v36 = "???";
          }

          if ((v31 & 2) != 0)
          {
            v36 = "Include";
          }

          if (v31)
          {
            v36 = "Exclude";
          }

          if ((v31 & 7) != 0)
          {
            v37 = v36;
          }

          else
          {
            v37 = "None";
          }

          if ((v32 & 7) != 0)
          {
            v38 = "Exclude";
            if ((v32 & 1) == 0)
            {
              v38 = "Remove";
              if ((v32 & 4) == 0)
              {
                v38 = "???";
              }

              if ((v32 & 2) != 0)
              {
                v38 = "Include";
              }
            }
          }

          else
          {
            v38 = "None";
          }

          if (a9[1] <= j)
          {
            v39 = 0;
          }

          else
          {
            v39 = (a9[7] + *(v29 + v27));
          }

          fprintf(*MEMORY[0x29EDCA610], "Rules from %s to %s (no-xxx): %s\n", v37, v38, v39);
          v31 = *(v30 + 1172);
        }
      }

      else
      {
        v31 = v32;
      }

      v40 = v31 & 0xFFFFFFFA;
      if ((v31 & 2) == 0)
      {
        v40 = v31;
      }

      v41 = v40 & 1;
      if (v40)
      {
        v40 &= ~4u;
      }

      if (v31 & 2 | v41)
      {
        *(v30 + 1172) = v40;
      }

      if (a10 >= 2 && v40 != v31)
      {
        v42 = "Include";
        if (v31)
        {
          v42 = "Exclude";
        }

        v43 = "Remove";
        if ((v31 & 4) == 0)
        {
          v43 = "???";
        }

        if ((v31 & 3) != 0)
        {
          v44 = v42;
        }

        else
        {
          v44 = v43;
        }

        if ((v31 & 7) != 0)
        {
          v45 = v44;
        }

        else
        {
          v45 = "None";
        }

        if ((v40 & 7) != 0)
        {
          v46 = "Exclude";
          if ((v40 & 1) == 0)
          {
            v46 = "Include";
            if ((v40 & 2) == 0)
            {
              v46 = "???";
              if ((v40 & 4) != 0)
              {
                v46 = "Remove";
              }
            }
          }
        }

        else
        {
          v46 = "None";
        }

        if (a9[1] <= j)
        {
          v47 = 0;
        }

        else
        {
          v47 = (a9[7] + *(a9[4] + v27));
        }

        fprintf(*MEMORY[0x29EDCA610], "Rules from %s to %s (priority): %s\n", v45, v46, v47);
      }
    }

    v27 += 1208;
  }

  v48 = 0;
  v49 = 1172;
  do
  {
    v50 = a9[4];
    v51 = *(v50 + v49);
    if ((v51 & 0x200) != 0)
    {
      *(v50 + v49) = v51 & 0xFFFFFAFF;
      if (a10 >= 2)
      {
        if (a9[1] > v48)
        {
          v53 = a9[7] + *(v50 + v49 - 1172);
        }

        fprintf(*MEMORY[0x29EDCA610], "Label PREPARE: %s\n");
      }
    }

    else if ((v51 & 0x400) != 0)
    {
      *(v50 + v49) = v51 & 0xFFFFFCFF;
      if (a10 >= 2)
      {
        if (a9[1] > v48)
        {
          v54 = a9[7] + *(v50 + v49 - 1172);
        }

        fprintf(*MEMORY[0x29EDCA610], "Label DATA: %s\n");
      }
    }

    else
    {
      *(v50 + v49) = v51 | 0x100;
      if (a10 >= 2)
      {
        if (a9[1] > v48)
        {
          v52 = a9[7] + *(v50 + v49 - 1172);
        }

        fprintf(*MEMORY[0x29EDCA610], "Label MAIN: %s\n");
      }
    }

    result = 0;
    ++v48;
    v49 += 1208;
  }

  while (v56 != v48);
  return result;
}

CFIndex markFilesMatchingPrefixArray(void *a1, CFArrayRef theArray, int a3, int a4)
{
  v49 = *MEMORY[0x29EDCA608];
  if (!theArray)
  {
LABEL_95:
    result = 0;
    goto LABEL_96;
  }

  v6 = theArray;
  result = CFArrayGetCount(theArray);
  if (!result)
  {
    goto LABEL_96;
  }

  v9 = result;
  if (result < 1)
  {
LABEL_61:
    v36 = a1[1];
    if (v36)
    {
      v37 = 0;
      v38 = (a1[4] + 1172);
      do
      {
        if ((*v38 & a3) != 0)
        {
          ++v37;
        }

        v38 += 302;
        --v36;
      }

      while (v36);
    }

    else
    {
      v37 = 0;
    }

    if (a4 > 1)
    {
      if (a3)
      {
        if (a3)
        {
          v39 = "Exclude";
        }

        else if ((a3 & 2) != 0)
        {
          v39 = "Include";
        }

        else if ((a3 & 4) != 0)
        {
          v39 = "Remove";
        }

        else if ((a3 & 0x10) != 0)
        {
          v39 = "NoExclude";
        }

        else if ((a3 & 0x20) != 0)
        {
          v39 = "NoInclude";
        }

        else if ((a3 & 0x40) != 0)
        {
          v39 = "NoRemove";
        }

        else if ((a3 & 0x100) != 0)
        {
          v39 = "Main";
        }

        else if ((a3 & 0x200) != 0)
        {
          v39 = "Prepare";
        }

        else
        {
          v39 = "Data";
          if ((a3 & 0x400) == 0)
          {
            v39 = "???";
          }
        }
      }

      else
      {
        v39 = "None";
      }

      fprintf(*MEMORY[0x29EDCA610], "%s rules: %zu total entries match\n", v39, v37);
    }

    goto LABEL_95;
  }

  v10 = 0;
  v11 = "Data";
  if ((a3 & 0x400) == 0)
  {
    v11 = "???";
  }

  v12 = "Include";
  if (a3)
  {
    v12 = "Exclude";
  }

  if ((a3 & 3) == 0)
  {
    v12 = "Remove";
  }

  if ((a3 & 7) == 0)
  {
    v12 = "NoExclude";
  }

  if ((a3 & 0x17) == 0)
  {
    v12 = "NoInclude";
  }

  if ((a3 & 0x37) == 0)
  {
    v12 = "NoRemove";
  }

  if ((a3 & 0x77) == 0)
  {
    v12 = "Main";
  }

  if ((a3 & 0x200) != 0)
  {
    v11 = "Prepare";
  }

  if ((a3 & 0x177) != 0)
  {
    v11 = v12;
  }

  if (!a3)
  {
    v11 = "None";
  }

  v44 = result;
  v45 = v11;
  v43 = v6;
  while (2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
    if (!ValueAtIndex)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "markFilesMatchingPrefixArray", 2053, 18, 0, "CFArrayGetValueAtIndex(%ld) returned 0", v14, v15, v10);
      goto LABEL_86;
    }

    v16 = ValueAtIndex;
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v16, buffer, 1024, 0x8000100u);
    v17 = strlen(buffer);
    if (!v17)
    {
      goto LABEL_60;
    }

    if (buffer[v17 - 1] == 47)
    {
      buffer[v17 - 1] = 0;
      if (v17 == 1)
      {
        goto LABEL_60;
      }
    }

    v18 = a1[1];
    if (!v18)
    {
      goto LABEL_60;
    }

    bzero(__s2, 0x400uLL);
    v19 = strlen(buffer);
    if (v19 - 1024 <= 0xFFFFFFFFFFFFFC00)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "markFilesMatchingPrefix", 1986, 18, 0, "invalid prefix length", v20, v21, v41);
      break;
    }

    v22 = v19;
    __memcpy_chk();
    v46 = __s2[v22 - 1];
    if (v46 == 36)
    {
      __s2[--v22] = 0;
    }

    v23 = a1[4];
    v24 = a1[7];
    if (strcmp((v24 + *v23), __s2) < 0)
    {
      if (v18 == 1)
      {
        v25 = 1;
      }

      else
      {
        v42 = a4;
        v26 = 0;
        v27 = v18;
        v28 = v18;
        do
        {
          v29 = v26 + (v27 >> 1);
          if (strcmp((v24 + v23[151 * v29]), __s2) >= 0)
          {
            v28 = v29;
          }

          else
          {
            v26 = v29;
          }

          v27 = v28 - v26;
        }

        while (v28 - v26 > 1);
        v25 = v26 + 1;
        a4 = v42;
        v6 = v43;
      }
    }

    else
    {
      v25 = 0;
    }

    if (v25 >= v18)
    {
      v9 = v44;
      goto LABEL_60;
    }

    v30 = 0;
    v31 = 1208 * v25 + 1172;
    do
    {
      if (a1[1] <= v25)
      {
        v32 = 0;
        if (strncmp(0, __s2, v22))
        {
          break;
        }
      }

      else
      {
        v32 = (a1[7] + *(a1[4] + v31 - 1172));
        if (strncmp(v32, __s2, v22))
        {
          break;
        }
      }

      if (!v32[v22])
      {
        *(a1[4] + v31) |= a3;
        ++v30;
        v35 = "%s rule [%s] exact match: %s\n";
        if (a4 <= 1)
        {
          goto LABEL_56;
        }

LABEL_55:
        fprintf(*MEMORY[0x29EDCA610], v35, v45, __s2, v32);
        goto LABEL_56;
      }

      if (v46 != 36 && v32[v22] == 47)
      {
        *(a1[4] + v31) |= a3;
        ++v30;
        v35 = "%s rule [%s] prefix match: %s\n";
        if (a4 >= 2)
        {
          goto LABEL_55;
        }
      }

LABEL_56:
      ++v25;
      v31 += 1208;
    }

    while (v18 != v25);
    v6 = v43;
    v9 = v44;
    if ((v30 & 0x80000000) == 0)
    {
LABEL_60:
      if (++v10 == v9)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "markFilesMatchingPrefixArray", 2061, 18, 0, "markFilesMatchingPrefix failed", v33, v34, v41);
LABEL_86:
  result = 0xFFFFFFFFLL;
LABEL_96:
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t fixOpsForHardLinkClusters(uint64_t *a1, int a2)
{
  v65 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1 - 1;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  if (v4)
  {
    v6 = 0;
    v7 = a1[4];
    v8 = (v7 + 40);
    do
    {
      v9 = v7 + 1208 * v6;
      if (*(v9 + (v5 << 7) + 16) == 1)
      {
        v10 = (*(v9 + 1168) & 0x14) == 0 || v5 == 0;
        if (!v10)
        {
          v11 = v63;
          v12 = v8;
          v13 = v5;
          do
          {
            v14 = *v12;
            if (*(v12 - 6) == 1 && v14 != -1)
            {
              if (v14 <= *v11)
              {
                v14 = *v11;
              }

              *v11 = v14;
            }

            v12 += 16;
            ++v11;
            --v13;
          }

          while (v13);
        }
      }

      ++v6;
      v8 += 151;
    }

    while (v6 != v4);
  }

  if (!v5)
  {
LABEL_26:
    if (v4)
    {
      v21 = 0;
      v22 = a1[4];
      v23 = (v22 + 40);
      do
      {
        v24 = v22 + 1208 * v21;
        if (*(v24 + (v5 << 7) + 16) == 1 && (*(v24 + 1168) & 0x14) != 0 && v5 != 0)
        {
          v26 = v61;
          v27 = v23;
          v28 = v5;
          do
          {
            v29 = *v27;
            if (*(v27 - 6) == 1 && v29 != -1)
            {
              ++*(*v26 + 4 * v29);
            }

            v27 += 16;
            ++v26;
            --v28;
          }

          while (v28);
        }

        ++v21;
        v23 += 151;
      }

      while (v21 != v4);
    }

    v31 = 0;
    v59 = v3 - 2;
    v32 = 1;
    while (1)
    {
      v58 = v32;
      if (v4)
      {
        break;
      }

LABEL_71:
      v32 = 0;
      v31 = 1;
      if ((v58 & 1) == 0)
      {
        v20 = 0;
        if (!v5)
        {
          goto LABEL_78;
        }

        goto LABEL_76;
      }
    }

    v33 = 0;
    v34 = 16;
    v35 = 40;
    while (1)
    {
      v36 = a1[4];
      v37 = v36 + 1208 * v33;
      if (*(v37 + (v5 << 7) + 16) == 1)
      {
        v38 = *(v37 + 1168);
        if (v31)
        {
          if ((v38 & 0x10) != 0)
          {
            goto LABEL_49;
          }
        }

        else if ((v38 & 4) != 0)
        {
LABEL_49:
          if (v5)
          {
            v39 = 0;
            v40 = v36 + v35;
            v41 = v36 + v34;
            v42 = 1;
LABEL_51:
            v43 = (v40 + (v39 << 7));
            v44 = (v41 + (v39 << 7));
            do
            {
              v46 = *v43;
              v43 += 16;
              v45 = v46;
              LODWORD(v46) = *v44;
              v44 += 32;
              if (v46 == 1 && v45 != -1)
              {
                v48 = *(v61 + v39);
                v49 = *(v48 + 4 * v45);
                v50 = __OFSUB__(v49, 1);
                v51 = v49 - 1;
                if (!((v51 < 0) ^ v50 | (v51 == 0)))
                {
                  v42 = 0;
                  *(v48 + 4 * v45) = v51;
                  v10 = v59 == v39++;
                  if (!v10)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_64;
                }
              }

              ++v39;
            }

            while (v5 != v39);
            if (v42)
            {
              goto LABEL_70;
            }

LABEL_64:
            if (a2 >= 2)
            {
              if (a1[1] <= v33)
              {
                v52 = 0;
              }

              else
              {
                v52 = (a1[7] + *v37);
              }

              fprintf(*MEMORY[0x29EDCA610], "ARCHIVE entry with invalid cluster mapping: %s\n", v52);
            }

            *(v37 + 1168) = *(v37 + 1168) & 0xFFFFFFEA | 1;
          }
        }
      }

LABEL_70:
      ++v33;
      v35 += 1208;
      v34 += 1208;
      if (v33 == v4)
      {
        goto LABEL_71;
      }
    }
  }

  *&v61[0] = calloc(*&v63[0] + 1, 4uLL);
  if (*&v61[0])
  {
    v18 = 0;
    do
    {
      if (v3 - 2 == v18)
      {
        goto LABEL_26;
      }

      v19 = calloc(*(v63 + v18 + 1) + 1, 4uLL);
      *(v61 + ++v18) = v19;
    }

    while (v19);
    if (v18 >= v5)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v20 = 0xFFFFFFFFLL;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "fixOpsForHardLinkClusters", 2318, 18, 0, "calloc", v16, v17, v57);
LABEL_76:
  v53 = v61;
  do
  {
    v54 = *v53++;
    free(v54);
    --v5;
  }

  while (v5);
LABEL_78:
  v55 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t initOps(unint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t *a5, int a6)
{
  v6 = a5[1];
  v70 = *a5;
  if (v6)
  {
    v7 = 0;
    v8 = v70 - 1;
    v55 = a1 >> 2;
    v9 = 16;
    v10 = 88;
    v11 = 56;
    v12 = 140;
    v13 = 24;
    v69 = a6;
    v67 = a5[1];
    v68 = a5;
    do
    {
      v14 = a5[4];
      v15 = v14 + 1208 * v7;
      if (a5[1] <= v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = (a5[7] + *v15);
      }

      v17 = v15 + (v8 << 7);
      v20 = *(v17 + 16);
      v19 = v17 + 16;
      v18 = v20;
      if ((v20 | 2) != 3)
      {
        goto LABEL_22;
      }

      v21 = *(v15 + 1172);
      if (v21)
      {
        *(v15 + 1168) |= 0x20u;
        if (a6 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "IGNORE excluded entry present in output: %s\n");
          goto LABEL_21;
        }
      }

      else if (v18 == 1 && *(v19 + 16) != v7)
      {
        *(v15 + 1168) |= 8u;
        if (a6 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "LINK: %s\n");
          goto LABEL_21;
        }
      }

      else if (v70 == 1)
      {
        *(v15 + 1168) |= 1u;
        if (a6 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "ARCHIVE full replacement: %s\n");
          goto LABEL_21;
        }
      }

      else
      {
        if (!*(v19 + 124) && !*(v19 + 120))
        {
          if ((v21 & 2) != 0)
          {
            *(v15 + 1168) |= 1u;
            if (a6 < 2)
            {
              goto LABEL_22;
            }

            fprintf(*MEMORY[0x29EDCA610], "ARCHIVE include: %s\n");
          }

          else
          {
            v22 = (v14 + v9);
            v23 = v8;
            do
            {
              v24 = *v22;
              v22 += 32;
              if (v24 != v18)
              {
                *(v15 + 1168) |= 1u;
                if (a6 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "ARCHIVE differing types: %s\n");
                goto LABEL_21;
              }

              --v23;
            }

            while (v23);
            if (v18 == 3)
            {
              v54 = v16;
              v56 = *(v19 + 40);
              v57 = a5[7];
              v25 = (v14 + v11);
              while (1)
              {
                v61 = v8;
                v63 = v25 + 16;
                if (strcmp((v57 + v56), (v57 + *v25)))
                {
                  goto LABEL_42;
                }

                v25 = v63;
                v8 = v61 - 1;
                if (v61 == 1)
                {
                  goto LABEL_41;
                }
              }
            }

            if (v18 == 1)
            {
              v54 = v16;
              v26 = v14 + v10;
              while (1)
              {
                v62 = v8;
                v64 = v26;
                if (sha1cmp(v19 + 72, v26))
                {
                  break;
                }

                v26 = v64 + 128;
                v8 = v62 - 1;
                if (v62 == 1)
                {
LABEL_41:
                  v27 = 0;
                  v28 = 1;
                  a6 = v69;
                  v6 = v67;
                  a5 = v68;
                  v8 = v70 - 1;
                  v16 = v54;
                  goto LABEL_43;
                }
              }

LABEL_42:
              v28 = 0;
              v27 = 1;
              a6 = v69;
              v6 = v67;
              a5 = v68;
              v8 = v70 - 1;
              v16 = v54;
LABEL_43:
              v29 = 0;
              v30 = (v14 + v12);
              v31 = v8;
              while (1)
              {
                if (((*(v19 + 112) == *(v30 - 3)) & vminv_u16(vmovn_s32(vceqq_s32(*(v19 + 56), *(v30 - 17))))) == 0)
                {
                  v29 = 1;
                }

                if (*v30 || *(v30 - 1))
                {
                  break;
                }

                v30 += 32;
                if (!--v31)
                {
                  v32 = 0;
                  goto LABEL_51;
                }
              }

              v32 = 1;
LABEL_51:
              v33 = v29 != 0;
            }

            else
            {
              v27 = 0;
              v28 = 1;
              if (v8)
              {
                goto LABEL_43;
              }

              v32 = 0;
              v33 = 0;
            }

            if (a4)
            {
              v34 = v18 == 1;
            }

            else
            {
              v34 = 0;
            }

            v35 = !v34;
            if ((v33 & v35) != 0)
            {
              v36 = 1;
            }

            else
            {
              v36 = v32;
            }

            if (!(v36 | v27))
            {
              *(v15 + 1168) |= 0x10u;
              if (a6 >= 2)
              {
                v39 = *MEMORY[0x29EDCA610];
                if (v33)
                {
                  fprintf(v39, "KEEP WITH FIXUP: %s\n");
                }

                else
                {
                  fprintf(v39, "KEEP: %s\n");
                }

                a6 = v69;
                v6 = v67;
                a5 = v68;
                v8 = v70 - 1;
              }

              goto LABEL_22;
            }

            if (v18 == 3)
            {
              v37 = *(v15 + 1168);
              *(v15 + 1168) = v37 | 1;
              if (a6 < 2)
              {
                if (v28)
                {
                  *(v15 + 1168) = v37 | 0x101;
                }

                goto LABEL_22;
              }

              v38 = v28;
              fprintf(*MEMORY[0x29EDCA610], "ARCHIVE differing symlink: %s\n", v16);
              v8 = v70 - 1;
              v6 = v67;
              a5 = v68;
              a6 = v69;
              if ((v38 & 1) == 0)
              {
                goto LABEL_22;
              }

              *(v15 + 1168) |= 0x100u;
              fprintf(*MEMORY[0x29EDCA610], "ARCHIVE_NOREMOVE symlink attribute changes only: %s\n");
            }

            else
            {
              v40 = *a5;
              if (*a5)
              {
                v41 = 0;
                v42 = (v14 + v13);
                do
                {
                  v44 = *v42;
                  v42 += 16;
                  v43 = v44;
                  if (v41 <= v44)
                  {
                    v41 = v43;
                  }

                  --v40;
                }

                while (v40);
              }

              else
              {
                v41 = 0;
              }

              if (*(v19 + 8) < a1 || v41 >= a2)
              {
                *(v15 + 1168) |= 1u;
                if (a6 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "ARCHIVE different files, not in patch range: %s\n");
              }

              else if (v41 >= a3 && (v65 = v36, IsCompressed = statIsCompressed(*(v19 + 68)), v36 = v65, v8 = v70 - 1, v6 = v67, a5 = v68, a6 = v69, IsCompressed))
              {
                *(v15 + 1168) |= 1u;
                if (v69 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "ARCHIVE different files, not in patch range for AFSC-compressed files: %s\n");
              }

              else if (v36)
              {
                *(v15 + 1168) |= 1u;
                if (a6 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "ARCHIVE different files, attributes differ: %s\n");
              }

              else
              {
                v47 = *(v19 + 8);
                if (v55 <= v47 >> 3)
                {
                  v48 = v47 >> 3;
                }

                else
                {
                  v48 = v55;
                }

                v49 = v8;
                if (v8)
                {
                  while (*(v14 + v13) >= v48)
                  {
                    v14 += 128;
                    if (!--v49)
                    {
                      goto LABEL_102;
                    }
                  }

                  *(v15 + 1168) |= 1u;
                  if (a6 >= 2)
                  {
                    fprintf(*MEMORY[0x29EDCA610], "ARCHIVE one input is too small: %s\n");
                    goto LABEL_21;
                  }

                  goto LABEL_22;
                }

LABEL_102:
                *(v15 + 1168) |= 4u;
                if (a6 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "PATCH different files: %s\n");
              }
            }
          }

LABEL_21:
          v8 = v70 - 1;
          v6 = v67;
          a5 = v68;
          a6 = v69;
          goto LABEL_22;
        }

        *(v15 + 1168) |= 1u;
        if (a6 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "ARCHIVE entry with XAT/ACL: %s\n");
          goto LABEL_21;
        }
      }

LABEL_22:
      ++v7;
      v9 += 1208;
      v10 += 1208;
      v11 += 1208;
      v12 += 1208;
      v13 += 1208;
    }

    while (v7 != v6);
  }

  if (v70 == 1 || (fixOpsForHardLinkClusters(a5, a6) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "initOps", 2611, 18, 0, "fixOpsForInPlace", v50, v51, v53);
  return 0xFFFFFFFFLL;
}

uint64_t updateOps(void *a1, int a2, int a3)
{
  v3 = a1[1];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v70 = *a1 - 1;
    v7 = *a1 << 7;
    while (1)
    {
      v8 = a1[4];
      if (a1[1] <= v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = a1[7] + *(v8 + v5);
      }

      v10 = *(v8 + v7 - 112 + v5);
      if (v10 == 2)
      {
        goto LABEL_25;
      }

      v11 = *(v8 + v5 + 1172);
      if (v10 || (*(v8 + v5 + 1172) & 1) == 0)
      {
        break;
      }

      *(v8 + v5 + 1168) |= 0x20u;
      v18 = "IGNORE excluded entry not present in output: %s\n";
      if (a3 > 1)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++v6;
      v5 += 1208;
      if (v3 == v6)
      {
        v19 = 0;
        v20 = 0;
        v67 = v7 - 1320;
        v21 = -1;
        v22 = 16;
        v23 = 140;
        v83 = 1208;
        v78 = v3;
        v24 = v70;
        while (1)
        {
          v81 = v23;
          v77 = a1[4];
          v25 = v77 + 1208 * v20;
          v26 = a1[1];
          v80 = v21;
          if (v26 <= v20)
          {
            v27 = 0;
          }

          else
          {
            v27 = (a1[7] + *v25);
          }

          v28 = v25 + (v24 << 7);
          v82 = *(v28 + 16);
          v75 = v28 + 16;
          v29 = strlen(v27);
          v79 = v22;
          if (!v29)
          {
            *(v25 + 1168) |= 1u;
            if (a3 >= 2)
            {
              fwrite("ARCHIVE root directory: .\n", 0x1AuLL, 1uLL, *MEMORY[0x29EDCA610]);
            }

            goto LABEL_94;
          }

          v30 = v29;
          v74 = v77 + 1208 * v20;
          __s2 = v27;
          if (v24)
          {
            v31 = 0;
            v32 = 0;
            v33 = (v77 + v22);
            v34 = 1;
            v35 = v24;
            do
            {
              v37 = *v33;
              v33 += 32;
              v36 = v37;
              v38 = v37 == 2;
              if (v37 == 2)
              {
                v39 = v34;
              }

              else
              {
                v39 = 0;
              }

              if (v38)
              {
                v40 = 1;
              }

              else
              {
                v40 = v31;
              }

              if (v36)
              {
                v32 = 1;
                v34 = v39;
                v31 = v40;
              }

              --v35;
            }

            while (v35);
            v41 = v31 != 0;
            v42 = v34 == 0;
            v43 = v32 == 0;
          }

          else
          {
            v42 = 0;
            v41 = 0;
            v43 = 1;
          }

          if (v82 == 2 || v41)
          {
            v71 = v42;
            v69 = v43;
            v73 = v19;
            v44 = v20 + 1;
            v45 = 0;
            if (v20 + 1 < v3)
            {
              v46 = a1[4];
              v47 = v77 + v83;
              while (1)
              {
                v48 = v26 <= v44 ? 0 : (a1[7] + *v47);
                if (strlen(v48) <= v30 || v48[v30] != 47)
                {
                  break;
                }

                if (*(v47 + 1168))
                {
                  v45 = 1;
                }

                ++v44;
                v47 += 1208;
                v3 = v78;
                if (v78 == v44)
                {
                  v44 = v78;
                  goto LABEL_60;
                }
              }

              v3 = v78;
LABEL_60:
              v24 = v70;
            }

            if (v82 != 2 && v41 || v71)
            {
              v49 = v73;
              v50 = v20;
              if (v20 < v44)
              {
                do
                {
                  v51 = a1[4];
                  v52 = v51 + v49;
                  v53 = *(v51 + v49 + 1168);
                  if ((v53 & 2) == 0)
                  {
                    v54 = a1[1] <= v50 ? 0 : (a1[7] + *v52);
                    if ((*(v51 + v49 + 1172) & 3) == 0)
                    {
                      *(v52 + 1168) = v53 | 2;
                      if (a3 >= 2)
                      {
                        fprintf(*MEMORY[0x29EDCA610], "REMOVE contents of removed directory: %s\n", v54);
                      }
                    }
                  }

                  ++v50;
                  v49 += 1208;
                }

                while (v44 != v50);
              }

              v24 = v70;
              v19 = v73;
              if (v82 == 2)
              {
                if (*(v74 + 1172))
                {
                  *(v74 + 1168) |= 0x20u;
                  if (a3 >= 2)
                  {
                    fprintf(*MEMORY[0x29EDCA610], "IGNORE excluded directory with type change: %s\n");
                  }
                }

                else if (!v45 || *(v74 + 1172) & 2 | a2)
                {
                  *(v74 + 1168) |= 1u;
                  if (a3 >= 2)
                  {
                    fprintf(*MEMORY[0x29EDCA610], "ARCHIVE differing types directory: %s\n");
                  }
                }
              }
            }

            else
            {
              v55 = *(v74 + 1172);
              if (v55)
              {
                *(v74 + 1168) |= 0x20u;
                v19 = v73;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "IGNORE excluded directory: %s\n");
                }

                goto LABEL_94;
              }

              v56 = v75;
              v57 = *(v75 + 68);
              if ((v57 & 0x800000) != 0)
              {
                v3 = v78;
                if (v44 != v20 + 1)
                {
                  fprintf(*MEMORY[0x29EDCA610], "WARNING: firmlink directory is not empty: %s\n", __s2);
                }

                v19 = v73;
                *(v74 + 1168) |= 0x200u;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "FIRMLINK directory: %s\n");
                }

                goto LABEL_94;
              }

              if ((v55 & 2) != 0)
              {
                v19 = v73;
                *(v74 + 1168) |= 1u;
                v3 = v78;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "ARCHIVE included directory: %s\n");
                }

                goto LABEL_94;
              }

              v19 = v73;
              if (*(v75 + 124) || *(v75 + 120))
              {
                *(v74 + 1168) |= 1u;
                v3 = v78;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "ARCHIVE directory with XAT/ACL: %s\n");
                }
              }

              else
              {
                if (v69)
                {
                  while (__s2[v30] != 47)
                  {
                    if (!--v30)
                    {
                      goto LABEL_123;
                    }
                  }

                  if (!v20)
                  {
LABEL_123:
                    v64 = -1;
                    goto LABEL_128;
                  }

                  v60 = a1[4];
                  v61 = v77 + v73;
                  v62 = v80;
                  while (1)
                  {
                    if (*(v61 + v67) == 2)
                    {
                      v63 = v26 <= v62 ? 0 : (a1[7] + *(v61 - 1208));
                      if (strlen(v63) == v30 && !memcmp(v63, __s2, v30))
                      {
                        break;
                      }
                    }

                    v61 -= 1208;
                    if (--v62 == -1)
                    {
                      v64 = -1;
                      goto LABEL_127;
                    }
                  }

                  v64 = *(v61 + v67 + 60);
LABEL_127:
                  v24 = v70;
                  v19 = v73;
                  v56 = v75;
LABEL_128:
                  v65 = *(v74 + 1168);
                  if (a2 || !v45 || v57 || v56[14] || v56[15] != v64 || v56[16] != 493)
                  {
                    *(v74 + 1168) = v65 | 1;
                    v3 = v78;
                    if (a3 >= 2)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "ARCHIVE new directory uid=%u gid=%u mode=0%04o flags=0x%08x parent_gid=%u: %s\n");
                    }
                  }

                  else
                  {
                    *(v74 + 1168) = v65 | 0x40;
                    v3 = v78;
                    if (a3 >= 2)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "AUTO MKDIR new directory uid=%u gid=%u mode=0%04o parent_gid=%u: %s\n");
                    }
                  }

                  goto LABEL_94;
                }

                if (v24)
                {
                  v58 = (v77 + v81);
                  v59 = v24;
                  while (*(v58 - 17) == *(v75 + 56) && *(v58 - 16) == *(v75 + 60) && *(v58 - 15) == *(v75 + 64) && *(v58 - 14) == v57 && *(v58 - 3) == *(v75 + 112) && !*v58 && !*(v58 - 1))
                  {
                    v58 += 32;
                    if (!--v59)
                    {
                      goto LABEL_110;
                    }
                  }
                }

                else
                {
LABEL_110:
                  if (!a2)
                  {
                    *(v74 + 1168) |= 0x10u;
                    v3 = v78;
                    if (a3 >= 2)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "KEEP dir: %s\n");
                    }

                    goto LABEL_94;
                  }
                }

                *(v74 + 1168) |= 1u;
                v3 = v78;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "ARCHIVE directory with different attributes: %s\n");
                }
              }
            }
          }

LABEL_94:
          ++v20;
          v22 = v79 + 1208;
          v83 += 1208;
          v23 = v81 + 1208;
          v19 += 1208;
          v21 = v80 + 1;
          if (v20 == v3)
          {
            return 0;
          }
        }
      }
    }

    if ((v11 & 3) != 0)
    {
      goto LABEL_25;
    }

    v13 = v8 + v5;
    v14 = *(v13 + 1168);
    if ((v14 & 0x100) != 0)
    {
      goto LABEL_25;
    }

    v15 = v11 & 4;
    v16 = (v14 & 0x209) != 0 || v10 == 0;
    if (!v16 && v15 == 0)
    {
      goto LABEL_25;
    }

    *(v13 + 1168) = v14 | 2;
    v18 = "REMOVE archive, links, firmlinks, remove rule: %s\n";
    if (a3 < 2)
    {
      goto LABEL_25;
    }

LABEL_24:
    fprintf(*MEMORY[0x29EDCA610], v18, v9);
    goto LABEL_25;
  }

  return 0;
}

uint64_t checkOps(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = MEMORY[0x29EDCA610];
  do
  {
    v14 = a1[4];
    if (a1[1] <= v11)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      v15 = a1[7] + *(v14 + v10);
    }

    v16 = v14 + v10;
    v17 = *(v14 + v10 + 1168);
    if (!v17)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2876, 18, 0, "entry is not labelled: %s", a7, a8, v15);
      goto LABEL_23;
    }

    if ((~v17 & 5) == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2883, 18, 0, "entry is labelled PATCH + ARCHIVE: %s", a7, a8, v15);
LABEL_23:
      dumpContentsEntries(*v13, a1, v11);
      v12 = 0;
      goto LABEL_24;
    }

    if ((~v17 & 6) == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2890, 18, 0, "entry is labelled PATCH + REMOVE: %s", a7, a8, v15);
      goto LABEL_23;
    }

    if ((~v17 & 0x12) == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2897, 18, 0, "entry is labelled KEEP + REMOVE: %s", a7, a8, v15);
      goto LABEL_23;
    }

    v18 = *(v16 + 1172);
    if ((v17 & 2) != 0 && (v18 & 2) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2904, 18, 0, "entry is labelled REMOVE and matches INCLUDE rule: %s", a7, a8, v15);
      goto LABEL_23;
    }

    if (v17 & 2) != 0 && (v18)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2911, 18, 0, "entry is labelled REMOVE and matches EXCLUDE rule: %s", a7, a8, v15);
      goto LABEL_23;
    }

    if ((v17 & 2) == 0 && (v18 & 4) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2918, 18, 0, "entry is not labelled REMOVE and matches REMOVE rule: %s", a7, a8, v15);
      goto LABEL_23;
    }

LABEL_24:
    ++v11;
    v10 += 1208;
  }

  while (v8 != v11);
  if (v12)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

FILE *dumpContentsEntries(FILE *result, void *a2, unint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = *a2;
  if (a3 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (a3 == -1)
  {
    v33 = a2[1];
    if (!v33)
    {
      return result;
    }
  }

  else
  {
    v33 = a3 + 1;
  }

  v7 = 1208 * v6 + 72;
  do
  {
    v34 = v3[4];
    v8 = v34 + 1208 * v6;
    fprintf(v4, "index=%zu", v6);
    v9 = *(v8 + 1168);
    fwrite(" ops=", 5uLL, 1uLL, v4);
    if (v9)
    {
      v10 = 65;
    }

    else
    {
      v10 = 45;
    }

    fputc(v10, v4);
    if ((v9 & 2) != 0)
    {
      v11 = 82;
    }

    else
    {
      v11 = 45;
    }

    fputc(v11, v4);
    if ((v9 & 8) != 0)
    {
      v12 = 76;
    }

    else
    {
      v12 = 45;
    }

    fputc(v12, v4);
    if ((v9 & 4) != 0)
    {
      v13 = 80;
    }

    else
    {
      v13 = 45;
    }

    fputc(v13, v4);
    if ((v9 & 0x10) != 0)
    {
      v14 = 75;
    }

    else
    {
      v14 = 45;
    }

    fputc(v14, v4);
    if ((v9 & 0x40) != 0)
    {
      v15 = 77;
    }

    else
    {
      v15 = 45;
    }

    fputc(v15, v4);
    if ((v9 & 0x20) != 0)
    {
      v16 = 73;
    }

    else
    {
      v16 = 45;
    }

    fputc(v16, v4);
    v17 = *(v8 + 1172);
    fwrite(" rules=", 7uLL, 1uLL, v4);
    if (v17)
    {
      v18 = 69;
    }

    else
    {
      v18 = 45;
    }

    fputc(v18, v4);
    if ((v17 & 2) != 0)
    {
      v19 = 73;
    }

    else
    {
      v19 = 45;
    }

    fputc(v19, v4);
    if ((v17 & 4) != 0)
    {
      v20 = 82;
    }

    else
    {
      v20 = 45;
    }

    fputc(v20, v4);
    if ((v17 & 0x10) != 0)
    {
      v21 = 101;
    }

    else
    {
      v21 = 45;
    }

    fputc(v21, v4);
    if ((v17 & 0x20) != 0)
    {
      v22 = 105;
    }

    else
    {
      v22 = 45;
    }

    fputc(v22, v4);
    if ((v17 & 0x40) != 0)
    {
      v23 = 114;
    }

    else
    {
      v23 = 45;
    }

    fputc(v23, v4);
    fwrite(" labels=", 8uLL, 1uLL, v4);
    if ((v17 & 0x100) != 0)
    {
      v24 = 77;
    }

    else
    {
      v24 = 45;
    }

    fputc(v24, v4);
    if ((v17 & 0x400) != 0)
    {
      v25 = 68;
    }

    else
    {
      v25 = 45;
    }

    fputc(v25, v4);
    if ((v17 & 0x200) != 0)
    {
      v26 = 80;
    }

    else
    {
      v26 = 45;
    }

    fputc(v26, v4);
    if (v5)
    {
      v27 = 0;
      v28 = v34 + v7;
      do
      {
        fprintf(v4, " V%zu[", v27);
        v29 = *(v28 - 56);
        if (v29 > 3)
        {
          v30 = 63;
        }

        else
        {
          v30 = dword_298069850[v29];
        }

        fprintf(v4, "type=%c", v30);
        fprintf(v4, " uid=%u gid=%u mode=0%04o flags=0x%02x duz=%llu size=%llu link=%zu", *v28, *(v28 + 4), *(v28 + 8), *(v28 + 12), *(v28 + 40), *(v28 - 48), *(v28 - 40));
        fputc(93, v4);
        ++v27;
        v28 += 128;
      }

      while (v5 != v27);
    }

    v3 = a2;
    if (a2[1] <= v6)
    {
      v31 = 0;
    }

    else
    {
      v31 = (a2[7] + *(a2[4] + 1208 * v6));
    }

    result = fprintf(v4, " path=%s\n", v31);
    ++v6;
    v7 += 1208;
  }

  while (v6 != v33);
  return result;
}

uint64_t processPatchThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = *MEMORY[0x29EDCA608];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(a1 + 8);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v11 = patchCacheOpenFromURL(v10, 0, a3, a4, a5, a6, a7, a8);
  if (v11)
  {
LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "processPatchThreadProc", 3093, 18, 0, "patchCacheOpenFromURL: %s (continue without cache)", a7, a8, *(a1 + 8));
  v12 = 0;
LABEL_6:
  while (2)
  {
    v13 = v12;
    do
    {
      add = atomic_fetch_add(*a1, 1u);
      if ((add & 0x80000000) != 0 || v9 <= add)
      {
        goto LABEL_61;
      }

      v15 = *(a1 + 48);
      v16 = *(v15 + 32);
    }

    while ((*(v16 + 1208 * add + 1168) & 4) == 0);
    if (*(a1 + 56))
    {
      v17 = *v15 - 2;
      if (*v15 >= 2uLL)
      {
        v19 = v12;
        v20 = v11;
        v21 = 0;
        v22 = *v15 - 1;
        v23 = *(v16 + 1208 * add + (v22 << 7) + 24);
        v24 = (v16 + 1208 * add + 24);
        v25 = v23;
        do
        {
          v27 = *v24;
          v24 += 16;
          v26 = v27;
          v25 += v27;
          if (v21 <= v27)
          {
            v21 = v26;
          }

          --v22;
        }

        while (v22);
        v28 = *(a1 + 44);
        if (v21 >> 28)
        {
          v29 = v23 >> 28 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          BXDiffMaxMemoryUsage = GetBXDiffMaxMemoryUsage(v21, v23, v28, *(a1 + 36));
        }

        else
        {
          BXDiffMaxMemoryUsage = GetLargeFileMaxMemoryUsage(v21, v23, v28);
        }

        v18 = (((2 * ((3 * v17 * v23) & 0x1FFFFFFFFFFFFFFFLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2) + 50 * v17 * v23 / 0x64 + v25 + BXDiffMaxMemoryUsage;
        v11 = v20;
        v13 = v19;
      }

      else
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "getPatchMaxMemory", 3039, 18, "too little variants", a6, a7, a8, v59);
        v18 = 0;
      }

      v63 = v18;
      if ((MemGateReserve(*(a1 + 56), v18) & 0x80000000) != 0)
      {
        v57 = "MemGateReserve";
        v58 = 3111;
LABEL_67:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "processPatchThreadProc", v58, 18, 0, v57, a7, a8, v59);
        v54 = 0xFFFFFFFFLL;
        goto LABEL_64;
      }

      v15 = *(a1 + 48);
      v16 = *(v15 + 32);
    }

    else
    {
      v63 = 0;
    }

    v64 = v9;
    v65 = v11;
    v66 = v13;
    v62 = v16 + 1208 * add;
    if (*(v15 + 8) <= add)
    {
      v31 = 0;
    }

    else
    {
      v31 = (*(v15 + 56) + *(v16 + 1208 * add));
    }

    v32 = *v15;
    v60 = *(a1 + 40);
    v61 = *(a1 + 16);
    v71 = 0;
    memset(v70, 0, sizeof(v70));
    bzero(__s, 0x400uLL);
    v68 = 0;
    memset(v67, 0, sizeof(v67));
    if (v32)
    {
      v33 = (v15 + 64);
      v34 = v16 + 1208 * add + 88;
      v35 = v67;
      v36 = v70;
      v37 = v32;
      while (1)
      {
        v38 = malloc(0x400uLL);
        if (!v38)
        {
          v47 = *__error();
          v46 = 2962;
          v48 = "malloc";
          goto LABEL_47;
        }

        *v36 = v38;
        if ((concatPath(v38, 0x400uLL, v33, v31) & 0x80000000) != 0)
        {
          break;
        }

        v41 = *v34;
        v42 = *(v34 + 16);
        v34 += 128;
        *(v35 + 4) = v42;
        *v35 = v41;
        v35 = (v35 + 20);
        v33 += 1024;
        ++v36;
        if (!--v37)
        {
          goto LABEL_35;
        }
      }

      v59 = v31;
      v46 = 2964;
    }

    else
    {
LABEL_35:
      if ((concatPath(__s, 0x400uLL, (v15 + 611392), v31) & 0x80000000) == 0)
      {
        v43 = strlen(__s);
        makePath(__s, v43);
        v11 = v65;
        v44 = BXDiffWithCache(v32, v70, v67, __s, v65, v61, a1 + 36, (v62 + 1184), (v62 + 1192), (v15 + 625056));
        if (v44 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "createPatch", 2983, 18, 0, "computing patch: %s", a7, a8, __s);
          v45 = 1;
        }

        else
        {
          if (!v44 || *(v62 + 1184) >= *(v62 + 1192))
          {
            if (v60 >= 2)
            {
              fprintf(*MEMORY[0x29EDCA610], "ARCHIVE patch is larger: %s\n", v31);
            }

            *(v62 + 1168) = *(v62 + 1168) & 0xFFFFFFFA | 1;
            unlink(__s);
          }

          v45 = 0;
        }

        goto LABEL_48;
      }

      v59 = v31;
      v46 = 2968;
    }

    v47 = 0;
    v48 = "concatPath failed: %s";
LABEL_47:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "createPatch", v46, 18, v47, v48, v39, v40, v59);
    v45 = 1;
    v11 = v65;
LABEL_48:
    v9 = v64;
    if (v32)
    {
      v49 = v70;
      do
      {
        v50 = *v49++;
        free(v50);
        --v32;
      }

      while (v32);
    }

    if (v45)
    {
      v51 = *(a1 + 48);
      if (v51[1] <= add)
      {
        LOBYTE(v52) = 0;
      }

      else
      {
        v52 = v51[7] + *(v51[4] + 1208 * add);
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "processPatchThreadProc", 3116, 18, 0, "Patching failed %s", a7, a8, v52);
      v66 = 0;
    }

    v53 = *(a1 + 56);
    if (v53 && (MemGateFree(v53, v63) & 0x80000000) != 0)
    {
      v57 = "MemGateFree";
      v58 = 3119;
      goto LABEL_67;
    }

    v12 = v66;
    if (v66)
    {
      continue;
    }

    break;
  }

LABEL_61:
  if (v12)
  {
    v54 = 0;
  }

  else
  {
    v54 = 0xFFFFFFFFLL;
  }

LABEL_64:
  patchCacheClose(v11, a2, a3, a4, a5, a6, a7, a8);
  v55 = *MEMORY[0x29EDCA608];
  return v54;
}

uint64_t computePatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v64 = a2;
  v82 = *MEMORY[0x29EDCA608];
  v65 = 0;
  v13 = *(a4 + 4);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  memset(&v71, 0, sizeof(v71));
  if (a6)
  {
    if (a6 <= 0x64)
    {
      v8 = getInstalledMemorySize() / 0x64uLL * a6;
    }

    if (v8 <= 0x40000000)
    {
      v8 = 0x40000000;
    }

    if ((MemGateInit(&v71, v8, v9, a4, a5, a6, a7, a8) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3152, 18, 0, "MemGateInit", a7, a8, v63);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v8 = 1;
      goto LABEL_41;
    }
  }

  if (v13 >= 1)
  {
    v14 = *(a3 + 8);
    if (v14)
    {
      v15 = 0;
      v16 = (*(a3 + 32) + 1168);
      do
      {
        v15 += (*v16 >> 2) & 1;
        v16 += 302;
        --v14;
      }

      while (v14);
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    *__str = 0u;
    if (v8)
    {
      snprintf(__str, 0x50uLL, "(memoryLimit %llu MB)", v8 >> 20);
    }

    pc_info("Generating patches for %zu entries on %d threads %s\n", a2, a3, a4, a5, a6, a7, a8, v15);
  }

  v19 = calloc(v9, 0x40uLL);
  v21 = malloc(8 * v9);
  v18 = v21;
  if (!v19 || !v21)
  {
    v44 = *__error();
    v45 = "malloc";
    v46 = 3171;
LABEL_39:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", v46, 18, v44, v45, v35, v36, v63);
    v17 = 0;
LABEL_40:
    v20 = 0;
    goto LABEL_41;
  }

  if (v9 >= 1)
  {
    v22 = (v9 + 1) & 0xFFFFFFFE;
    v23 = vdupq_n_s64(v9 - 1);
    v24 = xmmword_2980690E0;
    v25 = v21 + 1;
    v26 = vdupq_n_s64(2uLL);
    v27 = v19;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v23, v24));
      if (v28.i8[0])
      {
        *(v25 - 1) = v27;
      }

      if (v28.i8[4])
      {
        *v25 = v27 + 64;
      }

      v24 = vaddq_s64(v24, v26);
      v25 += 2;
      v27 += 128;
      v22 -= 2;
    }

    while (v22);
    v29 = ThreadPoolCreate(v9, v21, processPatchThreadProc);
    if (v29)
    {
      v17 = v29;
      if (v8)
      {
        v37 = &v71;
      }

      else
      {
        v37 = 0;
      }

      while (1)
      {
        Worker = ThreadPoolGetWorker(v17, v30, v31, v32, v33, v34, v35, v36);
        if (!Worker)
        {
          v61 = "ThreadPoolGetWorker";
          v62 = 3180;
          goto LABEL_52;
        }

        *(Worker + 48) = a3;
        *Worker = &v65;
        *(Worker + 8) = a1;
        *(Worker + 16) = v64;
        v43 = *a4;
        *(Worker + 44) = *(a4 + 8);
        *(Worker + 36) = v43;
        *(Worker + 56) = v37;
        if ((ThreadPoolRunWorker(v17, Worker, v39, v40, v41, v42, v35, v36) & 0x80000000) != 0)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_37;
        }
      }

      v61 = "ThreadPoolRunWorker";
      v62 = 3187;
LABEL_52:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", v62, 18, 0, v61, v35, v36, v63);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v47 = ThreadPoolCreate(v9, v21, processPatchThreadProc);
  if (!v47)
  {
LABEL_38:
    v45 = "ThreadPoolCreate";
    v46 = 3174;
    v44 = 0;
    goto LABEL_39;
  }

  v17 = v47;
LABEL_37:
  v20 = 1;
LABEL_41:
  if ((ThreadPoolDestroy(v17) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3192, 18, 0, "ThreadPoolDestroy", v48, v49, v63);
    v20 = 0;
  }

  free(v19);
  free(v18);
  if (v8 && (MemGateDestroy(&v71, v50, v51, v52, v53, v54, v55, v56) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3195, 18, 0, "MemGateDestroy", v57, v58, v63);
    v20 = 0;
  }

  if (v20)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v60 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DirectoryDiff(uint64_t DefaultNThreads, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = DefaultNThreads;
  v223 = *MEMORY[0x29EDCA608];
  v10 = *(DefaultNThreads + 84);
  v9 = *(DefaultNThreads + 88);
  if (!v10)
  {
    DefaultNThreads = getDefaultNThreads();
    v10 = DefaultNThreads;
  }

  v218 = *v8;
  if (*v8 >= 9uLL)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", 5575, 18, 0, "n > %d not supported", a7, a8, 8);
    result = 0xFFFFFFFFLL;
    goto LABEL_74;
  }

  memset(&v220, 0, sizeof(v220));
  v12 = *(v8 + 92);
  enterThreadErrorContext(DefaultNThreads, a2, a3, a4, a5, a6, a7, a8, v202);
  v13 = malloc(0x989F0uLL);
  v14 = v13;
  if (!v13)
  {
    v47 = *__error();
    v50 = "malloc";
    v51 = 5590;
    goto LABEL_57;
  }

  v213 = v10;
  v222 = 0;
  v215 = v12;
  v211 = (v12 >> 1) & 1;
  v212 = v9;
  v210 = (v13 + 625024);
  v15 = v13 + 9280;
  memset(v221, 0, sizeof(v221));
  bzero(v13, 0x989F0uLL);
  v23 = 0;
  v24 = 0;
  *(v14 + 24) = 1;
  v25 = (v8 + 24);
  v214 = v14;
  v26 = (v14 + 64);
  v217 = v8;
  v27 = (v8 + 32);
  v28 = (v14 + 9280);
  v29 = v26;
  while (1)
  {
    v30 = v25;
    if (v24 < v218)
    {
      v30 = (*(v217 + 8) + v23);
    }

    v31 = *v30;
    if (*v30)
    {
      v32 = 1;
    }

    else
    {
      v32 = (v215 & 1) == 0;
    }

    if (v32)
    {
      if (!realpath_DARWIN_EXTSN(*v30, v29))
      {
        v55 = *__error();
        v205 = v31;
        v53 = "%s";
        v54 = 5603;
        goto LABEL_63;
      }

      if (stat(v29, &v220) || (v220.st_mode & 0xF000) != 0x4000)
      {
        v205 = v31;
        v53 = "Not a directory: %s";
        v54 = 5604;
        goto LABEL_60;
      }
    }

    v33 = v27;
    if (v24 >= v218)
    {
      break;
    }

    v34 = *(v217 + 16);
    if (v34)
    {
      v33 = (v34 + v23);
      break;
    }

LABEL_24:
    ++v24;
    v23 += 8;
    v29 += 1024;
    v28 += 1024;
    if (v218 + 1 == v24)
    {
      v8 = v217;
      if (!*(v217 + 40))
      {
        v59 = "Missing patchFilename";
        v60 = 5616;
        goto LABEL_97;
      }

      v36 = v9;
      if (v9 >= 1)
      {
        pc_info("DirectoryDiff:\n", v16, v17, v18, v19, v20, v21, v22, v203);
        if (v218)
        {
          v37 = 0;
          if (v218 <= 1)
          {
            v38 = 1;
          }

          else
          {
            v38 = v218;
          }

          v39 = MEMORY[0x29EDCA610];
          do
          {
            if (v26[1024 * v37])
            {
              fprintf(*v39, "  input directory %d: %s\n", v37 + 1, &v26[1024 * v37]);
            }

            v40 = &v15[1024 * v37++];
            if (*v40)
            {
              fprintf(*v39, "  input manifest %d: %s\n", v37, v40);
            }
          }

          while (v37 != v38);
        }

        if (v26[1024 * v218])
        {
          fprintf(*MEMORY[0x29EDCA610], "  output directory: %s\n", &v26[1024 * v218]);
        }

        if (v15[1024 * v218])
        {
          fprintf(*MEMORY[0x29EDCA610], "  output manifest: %s\n", &v15[1024 * v218]);
        }

        v41 = MEMORY[0x29EDCA610];
        v42 = "patch file";
        if (v215)
        {
          v42 = "diff list file";
        }

        fprintf(*MEMORY[0x29EDCA610], "  %s: %s\n", v42, *(v217 + 40));
        if (*(v217 + 48))
        {
          fprintf(*v41, "  cache URL: %s\n", *(v217 + 48));
          if (*(v217 + 56))
          {
            v43 = "yes";
          }

          else
          {
            v43 = "no";
          }

          fprintf(*v41, "  update cache: %s\n", v43);
        }

        v44 = *(v217 + 96);
        if (v44)
        {
          if (v44 <= 0x64)
          {
            v44 *= getInstalledMemorySize() / 0x64uLL;
          }

          v45 = 0x40000000;
          if (v44 > 0x40000000)
          {
            v45 = v44;
          }

          fprintf(*v41, "  soft memory limit: %llu MB\n", v45 >> 20);
        }

        v46 = *v41;
        if (*(v217 + 80))
        {
          v204 = *(v217 + 80);
          fprintf(v46, "  diff level: %d\n");
        }

        else
        {
          fprintf(v46, "  diff level: default (%d)\n");
        }

        fprintf(*v41, "  worker threads: %d\n", v213);
        fprintf(*v41, "  patch threads: %d\n", v213);
        fprintf(*v41, "  min patch size: %llu B\n", *(v217 + 64));
        fprintf(*v41, "  archive block size: %zu B\n", *(v217 + 72));
        dumpStringArray("excludeList", *(v217 + 104), v61, v62, v63, v64, v65, v66, v206);
        dumpStringArray("includeList", *(v217 + 112), v67, v68, v69, v70, v71, v72, v207);
        dumpStringArray("noExcludeList", *(v217 + 120), v73, v74, v75, v76, v77, v78, v208);
        dumpStringArray("noIncludeList", *(v217 + 128), v79, v80, v81, v82, v83, v84, v209);
      }

      if ((v215 & 1) == 0)
      {
        snprintf(v214 + 611392, 0x400uLL, "%s_tmp_XXXXXX", *(v217 + 40));
        v85 = strlen(v214 + 611392);
        makePath(v214 + 611392, v85);
        if (!mkdtemp(v214 + 611392))
        {
          v110 = __error();
          v14 = v214;
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", 5663, 18, *v110, v214 + 611392, v111, v112, v203);
          v52 = -1;
          goto LABEL_65;
        }
      }

      v86 = v218 + 1;
      v87 = v221;
      while (1)
      {
        getRealTime();
        if (*v15)
        {
          if ((loadManifest(v15, v87) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", 5672, 18, 0, "loading manifest %s", v88, v89, v15);
            goto LABEL_98;
          }

          getRealTime();
          if (v212 >= 1)
          {
            pc_info("Loaded manifest:  %s (%.1fs)\n", v90, v91, v92, v93, v94, v95, v96, v15);
LABEL_88:
            dumpContentsStats(v87);
          }
        }

        else
        {
          if ((loadDirectory(v26, v213, v87) & 0x80000000) != 0)
          {
            LOBYTE(v203) = v26;
            v59 = "loading directory %s";
            v60 = 5678;
LABEL_97:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", v60, 18, 0, v59, v21, v22, v203);
LABEL_98:
            v52 = -1;
            goto LABEL_64;
          }

          getRealTime();
          if (v212 >= 1)
          {
            pc_info("Loaded directory: %s (%.1fs)\n", v97, v98, v99, v100, v101, v102, v103, v26);
            goto LABEL_88;
          }
        }

        v87 = (v87 + 56);
        v26 += 1024;
        v15 += 1024;
        if (!--v86)
        {
          v14 = v214;
          if ((mergeContents(v218 + 1, v221, v214) & 0x80000000) != 0)
          {
            v50 = "merging contents";
            v51 = 5686;
            goto LABEL_162;
          }

          if (v212 < 1 || (pc_info("Merged %zu inputs and 1 output\n", v104, v105, v106, v107, v108, v48, v49, *v214 - 1), v212 == 1))
          {
            v109 = 0;
            goto LABEL_122;
          }

          v113 = *(v214 + 1);
          if (v113)
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = 0;
            v119 = *(v214 + 4);
            v120 = *v214 - 1;
            v121 = (v119 + 144);
            while (1)
            {
              if (*(v119 + 1208 * v117 + (v120 << 7) + 16))
              {
                if (*v214 == 1)
                {
                  goto LABEL_116;
                }

                if (*(v119 + 1208 * v117 + 16))
                {
                  v122 = -1;
                  v123 = *v214 - 2;
                  v124 = v121;
                  do
                  {
                    v125 = v122;
                    if (!v123)
                    {
                      break;
                    }

                    v126 = *v124;
                    v124 += 32;
                    --v122;
                    --v123;
                  }

                  while (v126);
                  if (-v125 >= v120)
                  {
LABEL_116:
                    ++v118;
                    goto LABEL_118;
                  }
                }

                else
                {
                  v127 = 0;
                  v128 = -1;
                  v129 = *v214 - 2;
                  do
                  {
                    v130 = v128;
                    if (!v129)
                    {
                      break;
                    }

                    v131 = v121[v127];
                    --v128;
                    v127 += 32;
                    --v129;
                  }

                  while (!v131);
                  if (-v130 >= v120)
                  {
                    ++v115;
                    goto LABEL_118;
                  }
                }

                ++v116;
              }

              else
              {
                ++v114;
              }

LABEL_118:
              ++v117;
              v121 += 302;
              if (v117 == v113)
              {
                goto LABEL_121;
              }
            }
          }

          v118 = 0;
          v116 = 0;
          v115 = 0;
          v114 = 0;
LABEL_121:
          v132 = MEMORY[0x29EDCA610];
          fprintf(*MEMORY[0x29EDCA610], "%12zu not in the output\n", v114);
          fprintf(*v132, "%12zu in the output, and in all inputs\n", v118);
          fprintf(*v132, "%12zu in the output, and in some but not all inputs\n", v116);
          fprintf(*v132, "%12zu in the output, and not in any inputs\n", v115);
          v109 = 1;
          v14 = v214;
LABEL_122:
          if ((applyRules(*(v217 + 104), *(v217 + 112), 0, *(v217 + 120), *(v217 + 128), 0, 0, 0, v14, v212) & 0x80000000) != 0)
          {
            v50 = "applyRules";
            v51 = 5720;
            goto LABEL_162;
          }

          if ((initOps(*(v217 + 64), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, v211, v14, v212) & 0x80000000) != 0)
          {
            v50 = "initOps";
            v51 = 5723;
            goto LABEL_162;
          }

          if (v109)
          {
            pc_info("Initial labels (regular files / symbolic links)\n", v133, v134, v135, v136, v137, v48, v49, v203);
            dumpContentsStats(v14);
          }

          v138 = *(v14 + 8);
          if (v138)
          {
            v139 = 0;
            v140 = (*(v14 + 32) + 1168);
            do
            {
              v139 += (*v140 >> 2) & 1;
              v140 += 302;
              --v138;
            }

            while (v138);
            if ((v215 & 1) == 0)
            {
              if (!v139)
              {
                goto LABEL_152;
              }

              v219.st_dev = *(v217 + 80);
              *&v219.st_mode = v212;
              LODWORD(v219.st_ino) = v213;
              RealTime = getRealTime();
              if ((computePatches(*(v217 + 48), *(v217 + 56), v14, &v219, v213, *(v217 + 96), v142, v143) & 0x80000000) != 0)
              {
                v50 = "computePatches";
                v51 = 5755;
              }

              else
              {
                if (v212 >= 1)
                {
                  v149 = v210;
                  v150 = &v210[2];
                  v151 = &v210[2].u64[1];
                  v152 = atomic_load(&v210[2].u64[1]);
                  v216 = v152;
                  v153 = atomic_load(v149 + 8);
                  v154 = atomic_load(v150);
                  v155 = atomic_load(v149 + 7);
                  v156 = v155 + v154;
                  v157 = getRealTime() - RealTime;
                  pc_info("Generated patches (%.1f s)\n", v158, v159, v160, v161, v162, v163, v164, SLOBYTE(v157));
                  v165 = MEMORY[0x29EDCA610];
                  v166 = *MEMORY[0x29EDCA610];
                  v167 = atomic_load(v150);
                  v14 = v214;
                  fprintf(v166, "%12lld 1:1 patches cache lookups\n", v167);
                  v168 = *v165;
                  v169 = atomic_load(v151);
                  fprintf(v168, "%12lld 1:1 patches cache hits\n", v169);
                  v170 = *v165;
                  v171 = atomic_load(v149 + 6);
                  fprintf(v170, "%12lld 1:1 patches cache updates\n", v171);
                  v172 = *v165;
                  v173 = atomic_load(v149 + 10);
                  fprintf(v172, "%12lld 1:1 patches created\n", v173);
                  v174 = *v165;
                  v175 = atomic_load(v149 + 7);
                  v8 = v217;
                  fprintf(v174, "%12lld combo patches cache lookups\n", v175);
                  v176 = *v165;
                  v177 = atomic_load(v149 + 8);
                  fprintf(v176, "%12lld combo patches cache hits\n", v177);
                  v178 = *v165;
                  v179 = atomic_load(v149 + 9);
                  fprintf(v178, "%12lld combo patches cache updates\n", v179);
                  v180 = *v165;
                  v181 = atomic_load(v149 + 11);
                  fprintf(v180, "%12lld combo patches created\n", v181);
                  v182 = *v165;
                  v183 = atomic_load(v149 + 12);
                  fprintf(v182, "%12lld cache lookups FAILED\n", v183);
                  v184 = *v165;
                  v185 = atomic_load(v149 + 13);
                  fprintf(v184, "%12lld cache updates FAILED\n", v185);
                  if (v156 >= 1)
                  {
                    fprintf(*v165, "%11.0f%% cache hits\n", (v153 + v216) * 100.0 / v156);
                  }
                }

                if (v109)
                {
                  pc_info("Updated labels after patch generation\n", v144, v145, v146, v147, v148, v48, v49, v203);
                  dumpContentsStats(v14);
                }

                v36 = v212;
LABEL_152:
                updateOps(v14, 0, v36);
                if (v36 >= 1)
                {
                  pc_info("Final labels (all entries)\n", v192, v193, v194, v195, v196, v197, v198, v203);
                  dumpContentsStats(v14);
                }

                if ((checkOps(v14, v192, v193, v194, v195, v196, v197, v198) & 0x80000000) != 0)
                {
                  v50 = "checkOps";
                  v51 = 5794;
                }

                else
                {
                  v199 = *(v8 + 40);
                  v200 = *(v8 + 72);
                  if ((generatePatch() & 0x80000000) == 0)
                  {
                    v201 = *(v8 + 136);
                    if (v201)
                    {
                      v52 = 0;
                      *v201 = *v210;
                      v201[1] = vextq_s8(v210[1], v210[1], 8uLL);
                      goto LABEL_65;
                    }

                    goto LABEL_151;
                  }

                  v50 = "generatePatch";
                  v51 = 5797;
                }
              }

LABEL_162:
              v47 = 0;
LABEL_57:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", v51, 18, v47, v50, v48, v49, v203);
              v52 = -1;
              goto LABEL_65;
            }
          }

          else
          {
            if ((v215 & 1) == 0)
            {
              goto LABEL_152;
            }

            LOBYTE(v139) = 0;
          }

          if (v212 >= 1)
          {
            pc_info("Generating diff list, %zu entries\n", v133, v134, v135, v136, v137, v48, v49, v139);
          }

          v186 = fopen(*(v217 + 40), "w");
          if (v186)
          {
            v187 = v186;
            v188 = *(v14 + 8);
            if (v188)
            {
              v189 = 0;
              v190 = 1168;
              do
              {
                v191 = *(v14 + 32);
                if ((*(v191 + v190) & 4) != 0)
                {
                  fprintf(v187, "%s\n", (*(v14 + 56) + *(v191 + v190 - 1168)));
                  v188 = *(v14 + 8);
                }

                ++v189;
                v190 += 1208;
              }

              while (v189 < v188);
            }

            fclose(v187);
LABEL_151:
            v52 = 0;
            goto LABEL_65;
          }

          v47 = *__error();
          v203 = *(v217 + 40);
          v50 = "%s";
          v51 = 5740;
          goto LABEL_57;
        }
      }
    }
  }

  v35 = *v33;
  if (!*v33)
  {
    goto LABEL_24;
  }

  if (!realpath_DARWIN_EXTSN(*v33, v28))
  {
    v55 = *__error();
    v205 = v35;
    v53 = "%s";
    v54 = 5612;
    goto LABEL_63;
  }

  if (!stat(v28, &v220) && (v220.st_mode & 0xF000) == 0x8000)
  {
    goto LABEL_24;
  }

  v205 = v35;
  v53 = "Not a regular file: %s";
  v54 = 5613;
LABEL_60:
  v55 = 0;
LABEL_63:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", v54, 18, v55, v53, v21, v22, v205);
  v52 = -1;
  v8 = v217;
LABEL_64:
  v14 = v214;
LABEL_65:
  memset(&v219, 0, sizeof(v219));
  if (*(v14 + 611392) && !stat((v14 + 611392), &v219) && (v219.st_mode & 0xF000) == 0x4000)
  {
    removeTree((v14 + 611392));
  }

  v56 = v218 + 1;
  v57 = &v221[1] + 1;
  do
  {
    free(*(v57 - 1));
    BlobBufferFree(v57);
    v57 += 7;
    --v56;
  }

  while (v56);
  free(*(v14 + 32));
  BlobBufferFree(v14 + 40);
  free(v14);
  LODWORD(result) = leaveThreadErrorContext(*(v8 + 144), 0, 0);
  if (result >= 0)
  {
    result = v52;
  }

  else
  {
    result = result;
  }

LABEL_74:
  v58 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t generatePatch()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v8 = v4;
  v122 = v3;
  v9 = v2;
  v121 = v1;
  v10 = v0;
  v141[3] = *MEMORY[0x29EDCA608];
  v11 = *v2;
  v12 = v2[1];
  v13 = v2 + 77824;
  v128 = 0;
  v129 = 0;
  if (v4 >= 1)
  {
    v14 = "combo delta";
    if (v11 == 2)
    {
      v14 = "delta";
    }

    if (v11 == 1)
    {
      v14 = "full replacement";
    }

    pc_info("Generating %s directory patch\n", v1, v2, v3, v4, v5, v6, v7, v14);
  }

  v126 = 0u;
  v127 = 0u;
  __buf = 0;
  memset(v141, 0, 20);
  *(v13 + 153) = 0u;
  v15 = 0;
  if (v12)
  {
    v16 = *(v9 + 4);
    v17 = v12;
    do
    {
      if (*(v16 + (v11 << 7) - 112) == 1)
      {
        v15 += *(v16 + 1168) & 1;
      }

      v16 += 1208;
      --v17;
    }

    while (v17);
  }

  v18 = OFileStreamCreateWithFilename(v10, -1);
  v125 = v18;
  if (!v18)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4502, 18, 0, "creating output file: %s", v19, v20, v10);
LABEL_46:
    v57 = 0;
    v58 = 0;
LABEL_47:
    v59 = 0;
    v60 = 0;
LABEL_48:
    v61 = 0xFFFFFFFFLL;
    goto LABEL_49;
  }

  v21 = v18;
  memset(v141, 0, 20);
  __buf = 0x3031464649444944;
  if (OFileStreamWrite(v18, &__buf, 0x1CuLL) != 28)
  {
    v55 = "write DIDIFF10 header";
    v56 = 4508;
LABEL_45:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", v56, 18, 0, v55, v22, v23, v114);
    goto LABEL_46;
  }

  Pos = OFileStreamGetPos(v21);
  *&v127 = 0;
  *(&v127 + 1) = v21;
  *(&v126 + 1) = OFileStreamWrite;
  *&v126 = v8;
  v124 = ParallelArchiveWriterCreateLegacy(&v126);
  if (!v124)
  {
    v55 = "creating YAA writer";
    v56 = 4519;
    goto LABEL_45;
  }

  v117 = v13;
  v118 = v11;
  v115 = Pos;
  v116 = v8;
  if (v12)
  {
    v25 = 0;
    v123 = 0;
    v26 = 0;
    v119 = v13 + 306;
    v27 = v118 << 7;
    while (1)
    {
      v28 = *(v9 + 1);
      v29 = *(v9 + 4);
      if (v28 <= v26)
      {
        v30 = 0;
      }

      else
      {
        v30 = (*(v9 + 7) + *(v29 + v25));
      }

      v31 = *(v29 + v27 + v25 - 112);
      if (!v31 || v31 == 1 && (*(v29 + v25 + 1168) & 9) == 1)
      {
        goto LABEL_40;
      }

      bzero(&v134, 0x890uLL);
      bzero(v131, 0x408uLL);
      LODWORD(v134) = 1;
      if (v31 != 1)
      {
        break;
      }

      if ((*(v29 + v25 + 1168) & 8) != 0)
      {
        v134 = 0x4800010001;
        v36 = *(v29 + v27 + v25 - 96);
        if (v28 > v36)
        {
          v37 = *(v9 + 7) + *(v29 + 1208 * v36);
        }

LABEL_32:
        __strlcpy_chk();
        goto LABEL_33;
      }

      v134 = 0x4600002001;
      v34 = v29 + v27 + v25;
      v35 = *(v34 - 40);
      v139 = *(v34 - 24);
      v138 = v35;
      LODWORD(v134) = 8321;
      v136 = *(v34 - 104);
LABEL_33:
      LODWORD(v134) = v134 | 0x8000;
      __strlcpy_chk();
      LODWORD(v134) = v134 | 0x1E;
      v43 = vrev64q_s32(*(v29 + v25 + v27 - 56));
      v43.i64[0] = *(v29 + v25 + v27 - 56);
      v135[0] = v43;
      if ((*(v29 + v25 + 1168) & 4) != 0)
      {
        bzero(v130, 0x400uLL);
        concatPath(v130, 0x400uLL, v9 + 611392, v30);
        *v119 += *(v29 + v27 + v25 - 16);
        if (loadFileContents(v130, &v129, &v128, 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4597, 18, 0, "load patch: %s", v48, v49, v130);
          goto LABEL_87;
        }

        qmemcpy(v131, "BXP", 3);
        v132 = 2;
        v133 = v128;
        if (ParallelArchiveWriteEntryHeader(v124, &v134, v131, 1, v46, v47, v48, v49))
        {
LABEL_76:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4605, 18, 0, "write entry header: %s", v44, v45, v30);
LABEL_87:
          v57 = 0;
          v58 = 0;
          v60 = 0;
          goto LABEL_88;
        }

        if (ParallelArchiveWriteEntryData(v124, v129, v128, v50, v51, v52, v44, v45))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4608, 18, 0, "write entry data: %s", v53, v54, v30);
          goto LABEL_87;
        }
      }

      else if (ParallelArchiveWriteEntryHeader(v124, &v134, v131, 0, v39, v40, v41, v42))
      {
        goto LABEL_76;
      }

      ++v123;
      free(v129);
      v129 = 0;
LABEL_40:
      ++v26;
      v25 += 1208;
      if (v12 == v26)
      {
        goto LABEL_51;
      }
    }

    if (v31 != 3)
    {
      if (v31 != 2)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4574, 18, 0, "invalid entry type: %s", v32, v33, v30);
        goto LABEL_87;
      }

      HIDWORD(v134) = 68;
      goto LABEL_33;
    }

    v134 = 0x4C00010001;
    v38 = *(v9 + 7) + *(v29 + v27 + v25 - 72);
    goto LABEL_32;
  }

  v123 = 0;
LABEL_51:
  ParallelArchiveWriterDestroy(v124);
  v71 = v125;
  v72 = OFileStreamGetPos(v125);
  if (!v15)
  {
    v58 = 0;
LABEL_70:
    v104 = OFileStreamGetPos(v71);
    if (OFileStreamSetPos(v71, 0) < 0)
    {
      v112 = "seek to patch beginning";
      v113 = 4700;
    }

    else
    {
      v107 = v72 - v115;
      *(v141 + 4) = v72 - v115;
      v108 = v104 - v72;
      *(&v141[1] + 4) = v108;
      if (OFileStreamWrite(v71, &__buf, 0x1CuLL) == 28)
      {
        v117[304] = v104;
        v117[305] = v108;
        if (v116 >= 1)
        {
          v109 = MEMORY[0x29EDCA610];
          fprintf(*MEMORY[0x29EDCA610], "%12lld header size\n", v115);
          fprintf(*v109, "%12zu entries in diff payload\n", v123);
          fprintf(*v109, "%12lld diff payload size\n", v107);
          fprintf(*v109, "%12zu entries in archive payload\n", v15);
          fprintf(*v109, "%12llu archive payload size\n", v117[305]);
          fprintf(*v109, "%12llu patch size\n", v117[304]);
          fprintf(*v109, "%12llu patched files disk usage\n", v117[306]);
          fprintf(*v109, "%12llu archived files disk usage\n", v117[307]);
        }

        v57 = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        goto LABEL_49;
      }

      v112 = "update DIDIFF10 header";
      v113 = 4703;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", v113, 18, 0, v112, v105, v106, v114);
    v57 = 0;
    goto LABEL_47;
  }

  v73 = OEncoderStreamCreate(OFileStreamWrite, OFileStreamAbort, v125, v121, 1, v121, v122);
  v60 = v73;
  if (!v73)
  {
    v110 = "create archive encoder";
    v111 = 4624;
LABEL_81:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", v111, 18, 0, v110, v74, v75, v114);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_48;
  }

  *&v127 = 0;
  *(&v127 + 1) = v73;
  *(&v126 + 1) = OEncoderStreamWrite;
  *&v126 = v116;
  v124 = ParallelArchiveWriterCreateLegacy(&v126);
  if (!v124)
  {
    v110 = "create YAA writer";
    v111 = 4632;
    goto LABEL_81;
  }

  v58 = MemBufferCreate(0x100000uLL);
  if (v58)
  {
    v120 = v72;
    if (v12)
    {
      v78 = 0;
      v79 = 0;
      v80 = v118 << 7;
      do
      {
        v81 = *(v9 + 4);
        if (*(v9 + 1) <= v79)
        {
          v82 = 0;
        }

        else
        {
          v82 = (*(v9 + 7) + *(v81 + v78));
        }

        bzero(v131, 0x400uLL);
        if (*(v81 + v80 + v78 - 112) == 1 && (*(v81 + v78 + 1168) & 9) == 1)
        {
          concatPath(v131, 0x400uLL, &v9[1024 * v118 - 960], v82);
          v83 = v81 + v80 + v78;
          v117[307] += *(v83 - 16);
          bzero(v135, 0x888uLL);
          v134 = 0x4600002001;
          v84 = *(v83 - 40);
          v139 = *(v83 - 24);
          v138 = v84;
          LODWORD(v134) = 8705;
          v137 = *(v83 - 104);
          LODWORD(v134) = 41473;
          __strlcpy_chk();
          LODWORD(v134) = v134 | 0x1E;
          v85 = vrev64q_s32(*(v83 - 56));
          v85.i64[0] = *(v83 - 56);
          v135[0] = v85;
          if (ParallelArchiveWriteEntryHeader(v124, &v134, 0, 0, v86, v87, v88, v89))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4679, 18, 0, "write entry header: %s", v90, v91, v82);
            goto LABEL_85;
          }

          v57 = IFileStreamCreateWithFilename(v131, 0, -1);
          if (!v57)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4683, 18, 0, "open archived file: %s", v92, v93, v131);
            goto LABEL_88;
          }

          v94 = MemBufferTransmit(v58, 0xFFFFFFFFFFFFFFFFLL, IFileStreamRead, v57, parallelArchiveWrite, v124, v92, v93);
          if (v94 < 0 || v94 != *(v83 - 104))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4686, 18, 0, "write DAT blob: %s", v95, v96, v131);
            goto LABEL_88;
          }

          IFileStreamDestroy(v57);
          v80 = v118 << 7;
        }

        ++v79;
        v78 += 1208;
      }

      while (v12 != v79);
    }

    ParallelArchiveWriterDestroy(v124);
    OEncoderStreamDestroy(v60, v97, v98, v99, v100, v101, v102, v103);
    v71 = v125;
    v72 = v120;
    goto LABEL_70;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4636, 18, 0, "create DAT buffer", v76, v77, v114);
LABEL_85:
  v57 = 0;
LABEL_88:
  v61 = 0xFFFFFFFFLL;
  v59 = v124;
LABEL_49:
  ParallelArchiveWriterDestroy(v59);
  OEncoderStreamDestroy(v60, v62, v63, v64, v65, v66, v67, v68);
  OFileStreamDestroy(v125);
  IFileStreamDestroy(v57);
  MemBufferDestroy(v58);
  free(v129);
  v69 = *MEMORY[0x29EDCA608];
  return v61;
}

uint64_t parallelArchiveWrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (ParallelArchiveWriteEntryData(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

uint64_t dumpStringArray(uint64_t result, CFArrayRef theArray, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (theArray)
  {
    v10 = result;
    result = CFArrayGetCount(theArray);
    if (result)
    {
      v11 = result;
      v12 = MEMORY[0x29EDCA610];
      result = fprintf(*MEMORY[0x29EDCA610], "  %s:\n", v10);
      if (v11 >= 1)
      {
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          if (!ValueAtIndex)
          {
            return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "dumpStringArray", 884, 18, 0, "CFArrayGetValueAtIndex(%ld) returned 0", v15, v16, v13);
          }

          CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          if (!CStringPtr)
          {
            break;
          }

          result = fprintf(*v12, "  - %s\n", CStringPtr);
          if (v11 == ++v13)
          {
            return result;
          }
        }

        return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "dumpStringArray", 886, 18, 0, "CFStringGetCStringPtr returned 0", v18, v19, a9);
      }
    }
  }

  return result;
}

uint64_t dumpContentsStats(uint64_t a1)
{
  v2 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%12zu entries\n", *(a1 + 8));
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = (*(a1 + 16) + 72);
    do
    {
      v11 = *(v10 - 4);
      switch(v11)
      {
        case 3:
          ++v8;
          break;
        case 2:
          ++v9;
          break;
        case 1:
          if (v5 == *v10)
          {
            ++v4;
          }

          else
          {
            ++v7;
          }

          break;
        default:
          ++v6;
          break;
      }

      ++v5;
      v10 += 23;
    }

    while (v3 != v5);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v4 = 0;
  }

  fprintf(*v2, "%12zu regular files\n", v4);
  fprintf(*v2, "%12zu directories\n", v9);
  fprintf(*v2, "%12zu symbolic links\n", v8);
  result = fprintf(*v2, "%12zu hard links\n", v7);
  if (v6)
  {
    return fprintf(*v2, "%12zu invalid entries\n", v6);
  }

  return result;
}

{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (*(a1 + 32) + 1168);
    v13 = *(a1 + 8);
    do
    {
      v14 = *v12;
      if (*v12)
      {
        ++v9;
      }

      else
      {
        ++v7;
      }

      v3 += v14 & 1;
      v2 += (v14 >> 2) & 1;
      v11 += (v14 >> 3) & 1;
      v4 += (v14 >> 9) & 1;
      v10 += (v14 >> 4) & 1;
      v8 += (v14 >> 1) & 1;
      v6 += (v14 >> 6) & 1;
      v5 += (v14 >> 5) & 1;
      v12 += 302;
      --v13;
    }

    while (v13);
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  fprintf(*MEMORY[0x29EDCA610], "%12zu entries\n", v1);
  fprintf(*MEMORY[0x29EDCA610], "%12zu resolved entries\n", v9);
  v15 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%12zu non resolved entries\n", v7);
  fprintf(*v15, "%12zu ARCHIVE\n", v3);
  fprintf(*v15, "%12zu PATCH\n", v2);
  fprintf(*v15, "%12zu LINK\n", v11);
  fprintf(*v15, "%12zu FIRMLINK\n", v4);
  fprintf(*v15, "%12zu KEEP\n", v10);
  fprintf(*v15, "%12zu REMOVE\n", v8);
  fprintf(*v15, "%12zu AUTO MKDIR\n", v6);
  return fprintf(*v15, "%12zu IGNORE\n", v5);
}

size_t PCompressLZFSEEncode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZFSEDecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

void pc_log_error_cold_1(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2082;
  v5 = a1;
  _os_log_error_impl(&dword_298004000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v3, 0x12u);
  v2 = *MEMORY[0x29EDCA608];
}

void joinThread_cold_1()
{
  v0 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 623, 5, *v0, "pthread_join", v1, v2, vars0);
  __break(1u);
}

void getBXDiffControls_cold_1()
{
  v0 = __error();
  v3 = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "bxdiffControlsWithMatches", 255, 24, *v0, "malloc", v1, v2, vars0);
  __break(1u);
  BZ2_bzDecompress(v3);
}